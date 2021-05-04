""" Utilities for quality controlling BioModels

:Author: Jonathan Karr <karr@mssm.edu>
:Date: 2021-04-24
:Copyright: 2021, Center for Reproducible Biomedical Modeling
:License: MIT
"""

from biosimulators_utils.combine.data_model import CombineArchive, CombineArchiveContent, CombineArchiveContentFormat
from biosimulators_utils.combine.io import CombineArchiveWriter
from biosimulators_utils.data_model import Person  # noqa: F401
import datetime
import dateutil.tz
import glob
import re
import os
import xmldiff.main

__all__ = [
    'get_smbl_files_for_entry',
    'EXTENSION_COMBINE_FORMAT_MAP',
    'build_combine_archive',
    'are_biopax_files_the_same',
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
    '.cps': 'http://purl.org/NET/mediatypes/application/cps+xml',
    '.gif': 'http://purl.org/NET/mediatypes/application/gif',
    '.ipynb': 'http://purl.org/NET/mediatypes/application/x-ipynb+json',
    '.jpg': 'http://purl.org/NET/mediatypes/application/jpeg',
    '.jpeg': 'http://purl.org/NET/mediatypes/application/jpeg',
    '.m': 'http://purl.org/NET/mediatypes/text/x-matlab',
    '.mat': 'http://purl.org/NET/mediatypes/application/x-matlab-data',
    '.owl': 'http://purl.org/NET/mediatypes/application/rdf+xml',
    '.pdf': 'http://purl.org/NET/mediatypes/application/pdf',
    '.png': 'http://purl.org/NET/mediatypes/image/png',
    '.py': 'http://purl.org/NET/mediatypes/application/x-python-code',
    '.sbml': CombineArchiveContentFormat.SBML.value,
    '.sedml': CombineArchiveContentFormat.SED_ML.value,
    '.vcml': 'http://purl.org/NET/mediatypes/application/vcml+xml',
    '.xml': CombineArchiveContentFormat.SBML.value,
    '.xpp': 'http://purl.org/NET/mediatypes/text/plain',
    '.zip': 'http://purl.org/NET/mediatypes/application/zip',
}
# map from file extensions to COMBINE format specification URLs


def build_combine_archive(archive_dirname, master_rel_filenames, archive_filename,
                          description=None, authors=None):
    """ Build a COMBINE/OMEX archive from a directory of files

    Args:
        archive_dirname (:obj:`str`): path to directory with the contents of the archive
        master_rel_filenames (:obj:`list` of :obj:`str`): filename of master file, relative to
            :obj:`archive_dirname`
        archive_filename (:obj:`str`): path to save the COMBINE/OMEX archive
        description (:obj:`str`, optional): description of the archive
        authors (:obj:`list` of :obj:`Person`, optional): authors of the archive

    """
    now = datetime.datetime.now(tz=dateutil.tz.tzutc()).replace(microsecond=0)

    archive = CombineArchive(
        description=description,
        authors=authors,
        created=now,
        updated=now,
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
                authors=[],
                created=now,
                updated=now,
            )
        )

    CombineArchiveWriter().run(archive, archive_dirname, archive_filename)


def are_biopax_files_the_same(filename_a, filename_b):
    """ Determine if two BioPAX files are the same, ignoring the time stamps when they were generated

    Args:
        filename_a (:obj:`str`): path to first BioPAX file
        filename_b (:obj:`str`): path to second BioPAX file

    Returns:
        :obj:`bool`: whether the files are the same, ignoring the time stamps when they were generated
    """
    diffs = xmldiff.main.diff_files(filename_a, filename_b)
    if not diffs:
        return True

    if len(diffs) > 1:
        return False

    diff = diffs[0]
    return (
        isinstance(diff, xmldiff.actions.UpdateTextIn)
        and re.match(r'^/rdf:RDF/bp:pathway/bp:COMMENT\[', diff.node) is not None
        and re.match(r'^This BioPAX .* file was automatically generated on .* by .*, BioModels.net, EMBL-EBI.$',
                     diff.text) is not None
    )
