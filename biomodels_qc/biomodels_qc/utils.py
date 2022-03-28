""" Utilities for quality controlling BioModels

:Author: Jonathan Karr <karr@mssm.edu>
:Date: 2021-04-24
:Copyright: 2021, Center for Reproducible Biomedical Modeling
:License: MIT
"""

from biosimulators_utils.combine.data_model import CombineArchive, CombineArchiveContent, CombineArchiveContentFormat
from biosimulators_utils.data_model import Person  # noqa: F401
import datetime
import dateutil.tz
import glob
import libsbml
import lxml.etree
import re
import os
import xmldiff.actions
import xmldiff.main

__all__ = [
    'get_smbl_files_for_entry',
    'EXTENSION_COMBINE_FORMAT_MAP',
    'build_combine_archive',
    'are_biopax_files_the_same',
    'is_sbml_file',
    'does_sbml_file_represent_core_kinetic_model',
]


def get_smbl_files_for_entry(dir, include_urn_files=False):
    """ Get the paths to the SBML files for an entry of the BioModels database

    Args:
        dir (:obj:`str): path to directory for a entry of the BioModels database
        include_urn_files (:obj:`bool`, optional): whether to include the autogenerated URN files

    Returns:
        :obj:`list` of :obj:`str`: SBML files for an entry of the BioModels database
    """
    filenames = glob.glob(os.path.join(dir, '**', '*.xml'), recursive=True)
    filenames.sort()

    if not include_urn_files:
        filenames = list(filter(lambda filename: not filename.endswith('_urn.xml'), filenames))

    return filenames


EXTENSION_COMBINE_FORMAT_MAP = {
    '.cps': CombineArchiveContentFormat.CopasiML.value,
    '.gif': CombineArchiveContentFormat.GIF.value,
    '.ipynb': CombineArchiveContentFormat.IPython_Notebook.value,
    '.jpg': CombineArchiveContentFormat.JPEG.value,
    '.jpeg': CombineArchiveContentFormat.JPEG.value,
    '.m': CombineArchiveContentFormat.MATLAB.value,
    '.mat': CombineArchiveContentFormat.MATLAB_DATA.value,
    '.ode': CombineArchiveContentFormat.ODE.value,
    '.owl': CombineArchiveContentFormat.OWL.value,
    '.pdf': CombineArchiveContentFormat.PDF.value,
    '.png': CombineArchiveContentFormat.PNG.value,
    '.py': CombineArchiveContentFormat.Python.value,
    '.r': CombineArchiveContentFormat.R.value,
    '.rproj': CombineArchiveContentFormat.R_Project.value,
    '.sbml': CombineArchiveContentFormat.SBML.value,
    '.sbproj': CombineArchiveContentFormat.SimBiology_Project.value,
    '.sci': CombineArchiveContentFormat.Scilab.value,
    '.sedml': CombineArchiveContentFormat.SED_ML.value,
    '.svg': CombineArchiveContentFormat.SVG.value,
    '.txt': CombineArchiveContentFormat.TEXT.value,
    '.vcml': CombineArchiveContentFormat.VCML.value,
    '.xml': CombineArchiveContentFormat.SBML.value,
    '.zip': CombineArchiveContentFormat.ZIP.value,
}
# map from file extensions to COMBINE format specification URLs


def build_combine_archive(archive_dirname, master_rel_filenames,
                          description=None, authors=None):
    """ Build a COMBINE/OMEX archive from a directory of files

    Args:
        archive_dirname (:obj:`str`): path to directory with the contents of the archive
        master_rel_filenames (:obj:`list` of :obj:`str`): filename of master file, relative to
            :obj:`archive_dirname`
        description (:obj:`str`, optional): description of the archive
        authors (:obj:`list` of :obj:`Person`, optional): authors of the archive

    Returns:
        :obj:`CombineArchive`: archive
    """
    if description or authors:
        now = datetime.datetime.now(tz=dateutil.tz.tzutc()).replace(microsecond=0)
    else:
        now = None

    archive = CombineArchive(
        #        description=description,
        #        authors=authors,
        #        created=now,
        #        updated=now,
    )

    filenames = glob.glob(os.path.join(archive_dirname, '**', '*'), recursive=True)
    filenames.sort()
    for filename in filenames:
        location = os.path.relpath(filename, archive_dirname)
        ext = os.path.splitext(filename)[1]
        format = EXTENSION_COMBINE_FORMAT_MAP.get(ext, 'http://purl.org/NET/mediatypes/application/octet-stream')
        archive.contents.append(
            CombineArchiveContent(
                location=location,
                format=format,
                master=location in master_rel_filenames,
                #                authors=[],
                #                created=None,  # not set to None, but libCOMBINE ignores this unless authors is also set
                #                updated=None,  # not set to None, but libCOMBINE ignores this unless authors is also set
            )
        )

    return archive


def are_biopax_files_the_same(filename_a, filename_b):
    """ Determine if two BioPAX files are the same, ignoring the time stamps when they were generated

    Args:
        filename_a (:obj:`str`): path to first BioPAX file
        filename_b (:obj:`str`): path to second BioPAX file

    Returns:
        :obj:`bool`: whether the files are the same, ignoring the time stamps when they were generated
    """
    diffs = xmldiff.main.diff_files(filename_a, filename_b)
    diffs = list(filter(lambda diff: not isinstance(diff, xmldiff.actions.MoveNode), diffs))

    if not diffs:
        return True

    if len(diffs) > 1:
        return False

    diff = diffs[0]
    return (
        isinstance(diff, xmldiff.actions.UpdateTextIn)
        and re.match(r'^/rdf:RDF/bp:pathway/bp:COMMENT\[', diff.node, re.IGNORECASE) is not None
        and re.match(r'^This BioPAX .* file was automatically generated on .* by .*, BioModels\.net, EMBL-EBI\.$',
                     diff.text) is not None
    )


def is_sbml_file(filename):
    """ Determine whether a file is an SBML file

    Args:
        filename (:obj:`str`): path to file

    Returns:
        :obj:`bool`: whether the file is an SBML file
    """
    try:
        root = lxml.etree.parse(filename).getroot()
    except Exception:
        return False

    return root.nsmap.get(None, '').startswith('http://www.sbml.org/')


def does_sbml_file_represent_core_kinetic_model(filename):
    """ Determine whether an SBML file represents a core kinetic model

    Args:
        filename (:obj:`str`): path to SBML file

    Returns:
        :obj:`bool`: whether the file represents a core kinetic model (i.e., doesn't use other mathematical package)
    """
    doc = libsbml.readSBMLFromFile(filename)
    for i_plugin in range(doc.getNumPlugins()):
        plugin = doc.getPlugin(i_plugin)
        package_name = plugin.getPackageName()
        if (
            package_name in ['arrays', 'comp', 'distrib', 'dyn', 'fbc', 'groups', 'math', 'multi', 'qual', 'spatial']
        ):
            return False
    return True
