""" Methods for converting the primary files for an entry of the BioModels database to alternative formats
such as BioPAX, MATLAB/Octave, and XPP.

:Author: Jonathan Karr <karr@mssm.edu>
:Date: 2021-04-24
:Copyright: 2021, Center for Reproducible Biomedical Modeling
:License: MIT
"""

from .utils import get_smbl_files_for_entry
import enum
import os
import shutil
import subprocess


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
        for alt_format in AltSbmlFormat.__members__.values():
            convert_sbml(filename, alt_format)


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
        'id': 'SBML2Matab',
        'init_extension': '.m',
        'final_extension': '.m',
    },
    AltSbmlFormat.Octave: {
        'id': 'SBML2Octave',
        'init_extension': '.m',
        'final_extension': '.m',
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
    """
    format_data = ALT_SBML_FORMAT_DATA[format]

    subprocess.check_call(['sbfConverter.sh', 'SBMLModel', format_data['id'], filename], stdout=subprocess.DEVNULL)

    if format in [AltSbmlFormat.Matlab] and filename.endswith('_url.xml'):
        init_converted_filename = filename[0:-8] + format_data['init_extension']
    else:
        init_converted_filename = os.path.splitext(filename)[0] + format_data['init_extension']

    if filename.endswith('_url.xml'):
        final_converted_filename = filename[0:-8] + format_data['final_extension']
    else:
        final_converted_filename = os.path.splitext(filename)[0] + format_data['final_extension']

    if init_converted_filename != final_converted_filename:
        shutil.move(init_converted_filename, final_converted_filename)

    os.remove(filename + '.done')
    if os.path.isfile(filename[0:-4] + '.errorLog'):
        os.remove(filename[0:-4] + '.errorLog')
