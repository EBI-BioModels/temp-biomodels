from biosimulators_utils.combine.io import CombineArchiveWriter  # type: ignore
from biomodels_qc.utils import build_combine_archive

import os
import glob

combine_writer = CombineArchiveWriter()


def process(project_id, project_path, omex_dir):
    manifest_filename = os.path.join(project_path, 'manifest.xml')
    sedml_filenames = glob.glob(os.path.join(project_path, '**', '*.sedml'), recursive=True)
    sedml_locations = [os.path.relpath(path, project_path) for path in sedml_filenames]
    archive = build_combine_archive(project_path, sedml_locations)
    combine_writer.write_manifest(archive.contents, manifest_filename)
    combine_writer.run(archive, project_path, omex_dir + "/" + project_id + ".omex")