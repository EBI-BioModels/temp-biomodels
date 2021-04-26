""" Methods for converting the primary files for an entry of the BioModels database to alternative formats
such as BioPAX, MATLAB/Octave, and XPP.

:Author: Jonathan Karr <karr@mssm.edu>
:Date: 2021-04-24
:Copyright: 2021, Center for Reproducible Biomedical Modeling
:License: MIT
"""

from .utils import get_smbl_files_for_entry
from .validation import validate_xpp_file
import enum
import glob
import libsbml
import os
import shutil
import subprocess
import termcolor
import warnings


__all__ = [
    'convert_entry',
    'AltSbmlFormat',
    'convert_sbml',
]


def convert_entry(dirname):
    """ Convert the primary files for an entry of the BioModels database to alternative formats
    such as BioPAX, MATLAB/Octave, and XPP.

    Args:
        dir (:obj:`str): path to directory for a entry of the BioModels database
    """
    for filename in get_smbl_files_for_entry(dirname, include_urn_files=False):
        alt_formats = list(AltSbmlFormat.__members__.values())

        doc = libsbml.readSBMLFromFile(filename)
        for i_plugin in range(doc.getNumPlugins()):
            plugin = doc.getPlugin(i_plugin)
            package_name = plugin.getPackageName()
            if package_name in ['arrays', 'comp', 'distrib', 'dyn', 'fbc', 'groups', 'math', 'multi', 'qual', 'spatial']:
                for format in [AltSbmlFormat.Matlab, AltSbmlFormat.Octave, AltSbmlFormat.XPP]:
                    alt_formats.remove(format)

                    if filename.endswith('_url.xml'):
                        final_converted_filename = filename[0:-8] + ALT_SBML_FORMAT_DATA[format]['final_extension']
                    else:
                        final_converted_filename = os.path.splitext(filename)[0] + ALT_SBML_FORMAT_DATA[format]['final_extension']

                    if os.path.isfile(final_converted_filename):
                        os.remove(final_converted_filename)
                break

        for alt_format in alt_formats:
            alt_filename = convert_sbml(filename, alt_format)

            if alt_format == AltSbmlFormat.XPP and validate_xpp_file(alt_filename)[0]:
                warnings.warn(termcolor.colored('`{}` could not be converted to valid XPP file.'.format(filename)))
                os.remove(alt_filename)


class AltSbmlFormat(str, enum.Enum):
    """ A format that an SBML file can be converted to """
    SBML_URN = 'SBML_URN'
    BioPAX_l2 = 'BioPAX_l2'
    BioPAX_l3 = 'BioPAX_l3'
    Matlab = 'Matlab'
    Octave = 'Octave'
    XPP = 'XPP'


ALT_SBML_FORMAT_DATA = {
    AltSbmlFormat.SBML_URN: {
        'id': 'URL2URN',
        'init_extension': '-url2urn.xml',
        'final_extension': '_urn.xml',
    },
    AltSbmlFormat.BioPAX_l2: {
        'id': 'SBML2BioPAX_l2',
        'init_extension': '-biopax2.owl',
        'final_extension': '-biopax2.owl',
    },
    AltSbmlFormat.BioPAX_l3: {
        'id': 'SBML2BioPAX_l3',
        'init_extension': '-biopax3.owl',
        'final_extension': '-biopax3.owl',
    },
    AltSbmlFormat.Matlab: {
        'id': 'SBML2Matlab',
        'init_extension': '.m',
        'final_extension': '-matlab.m',
    },
    AltSbmlFormat.Octave: {
        'id': 'SBML2Octave',
        'init_extension': '.m',
        'final_extension': '-octave.m',
    },
    AltSbmlFormat.XPP: {
        'id': 'SBML2XPP',
        'init_extension': '.xpp',
        'final_extension': '.xpp',
    },
}


def convert_sbml(filename, format):
    """ Convert a SBML file to another format

    * SBML (with URNs)
    * MATLAB
    * Octave
    * XPP

    Args:
        filename (:obj:`str`): path to SBML file
        format (:obj:`AltSbmlFormat`): another format

    Returns:
        :obj:`str`: path to converted file
    """
    format_data = ALT_SBML_FORMAT_DATA[format]

    if os.name == 'nt':
        sbf_converter_home = os.path.dirname(shutil.which('sbfConverter.bat'))
    else:
        sbf_converter_home = os.path.dirname(shutil.which('sbfConverter.sh'))
    class_path = os.path.join(sbf_converter_home, 'lib')
    env = {
        'CLASSPATH': ':'.join(glob.glob(os.path.join(class_path, '*.jar'))
                              + [os.path.join(class_path, 'paxtools-4.2/paxtools-4.2.0-no-jena.jar')])
    }
    result = subprocess.run([
        'java',
        '-Dmiriam.xml.export={}/miriam.xml'.format(sbf_converter_home),
        'org.sbfc.converter.Converter',
        'SBMLModel',
        format_data['id'],
        filename,
    ], env=env, stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=False)
    if result.returncode != 0:
        raise ValueError(result.stderr.decode())

    init_converted_filename = os.path.splitext(filename)[0] + format_data['init_extension']

    if filename.endswith('_url.xml'):
        final_converted_filename = filename[0:-8] + format_data['final_extension']
    else:
        final_converted_filename = os.path.splitext(filename)[0] + format_data['final_extension']

    if init_converted_filename != final_converted_filename:
        shutil.move(init_converted_filename, final_converted_filename)

    error = None
    with open(final_converted_filename, 'rb') as file:
        line = file.readline().decode()
        if line.startswith('####'):
            line = file.readline().decode()
            if line.startswith('#Something went wrong'):
                error = 'Something went wrong'

    error_log_filename = filename[0:-4] + '.errorLog'
    if os.path.isfile(error_log_filename):
        with open(error_log_filename, 'r') as file:
            error = file.read()
        os.remove(error_log_filename)

    if error:
        os.remove(final_converted_filename)
        raise ValueError(error)

    return final_converted_filename
