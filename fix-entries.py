#!/usr/bin/env python3
# master program to fix the entries of BioModels

import fix_manual_corrections
import fix_models_non_copasi
import fix_namespaces_in_sedml_doc
import fix_sedml_extensions
import fix_filenames
import recreate_sedml_from_copasi
import remove_empty_containers_from_sedml_doc
import remove_omex

import argparse
import glob
import os
import shutil
import sys

MANUALLY_FIXED_ENTRIES_DIR = os.path.join(os.path.dirname(__file__), 'manual-fixes')
FINAL_ENTRIES_DIR = os.path.join(os.path.dirname(__file__), 'final')


def get_entry_ids():
    """ Get the ids of the entries of BioModels

    Returns:
        :obj:`list` of :obj:`str`: ids of the entries of BioModels (e.g., ``["BIOMD0000000230"]``)
    """
    ids = [os.path.relpath(dirname, MANUALLY_FIXED_ENTRIES_DIR)
           for dirname in glob.glob(os.path.join(MANUALLY_FIXED_ENTRIES_DIR, 'BIOMD*'))]
    ids.sort()
    return ids


def fix_entries(ids, convert_files=False, guess_file=None):
    """ Fix the entries of BioModels

    Args:
        max_entries (:obj:`int`, optional): maximum number of entries to fix
        convert_files (:obj:`bool`, optional): convert primary files to other formats
    """
    print('Fixing {} entries ...'.format(len(ids)))
    for i_entry, id in enumerate(ids):
        print('  Fixing entry {}: {} ... '.format(i_entry + 1, id), end='')
        sys.stdout.flush()

        fix_entry(id, convert_files=convert_files, guess_file=guess_file)

        print('done')
    print('done')


def fix_entry(id, convert_files=False, guess_file=None):
    """ Fix an entry of BioModels

    Args:
        id (:obj:`str`): id (e.g., ``BIOMD0000000230``)
        convert_files (:obj:`bool`, optional): convert primary files to other formats
    """
    if not os.path.isdir(FINAL_ENTRIES_DIR):
        os.makedirs(FINAL_ENTRIES_DIR)

    # start from manually fixed version of entry
    from_dir = os.path.join(MANUALLY_FIXED_ENTRIES_DIR, id)
    to_dir = os.path.join(FINAL_ENTRIES_DIR, id)
    if os.path.isdir(to_dir):
        shutil.rmtree(to_dir)
    shutil.copytree(from_dir, to_dir)

    # Fix files/filenames
    fix_filenames.run(id, FINAL_ENTRIES_DIR)
    fix_sedml_extensions.run(id, FINAL_ENTRIES_DIR)

    sedml_filenames = glob.glob(os.path.join(FINAL_ENTRIES_DIR, id, '**', '*.sedml'), recursive=True)
    copasi_filenames = glob.glob(os.path.join(FINAL_ENTRIES_DIR, id, '**', '*.cps'), recursive=True)
    sbml_filenames = glob.glob(os.path.join(FINAL_ENTRIES_DIR, id, '**', '*.xml'), recursive=True)
    omex_filenames = glob.glob(os.path.join(FINAL_ENTRIES_DIR, id, '**', '*.omex'), recursive=True)

    sedml_filenames.sort()
    copasi_filenames.sort()
    sbml_filenames.sort()
    omex_filenames.sort()

    # OMEX files
    remove_omex.run(id, omex_filenames, FINAL_ENTRIES_DIR)

    # SED-ML files
    (sbml_msgs, sed_msgs, c_guesses) = recreate_sedml_from_copasi.run(sedml_filenames, copasi_filenames, sbml_filenames, id)
    nc_guesses = fix_models_non_copasi.run(sedml_filenames, sbml_filenames, id)

    # Write to file for later checking:
    if guess_file:
        for guess in c_guesses:
            for entry in guess:
                guess_file.write(entry)
                guess_file.write(",")
            guess_file.write("\n")
        for guess in nc_guesses:
            for entry in guess:
                guess_file.write(entry)
                guess_file.write(",")
            guess_file.write("\n")

    fix_manual_corrections.run(id, FINAL_ENTRIES_DIR)
    fix_namespaces_in_sedml_doc.run(sedml_filenames, FINAL_ENTRIES_DIR)
    for sedml_filename in sedml_filenames:
        remove_empty_containers_from_sedml_doc.run(sedml_filename)

    if convert_files:
        from biomodels_qc.convert import convert_entry
        convert_entry(os.path.join(FINAL_ENTRIES_DIR, id))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description='Fix 1 or more entries in BioModels.'
    )
    parser.add_argument(
        '--max-entries', type=int, default=None,
        help='Maximum number of entries to fix. Default: fix all entries.')

    parser.add_argument(
        '--entry', type=str, nargs='*',
        help='Ids of entries to fix (e.g., `BIOMD0000000001`). Default: fix all entries.',
        default=[], dest='entry_ids',
    )

    parser.add_argument(
        '--convert-files',
        help='Skip converting SBML files to alternative formats.',
        action='store_true',
    )

    args = parser.parse_args()
    if args.entry_ids:
        ids = args.entry_ids
    else:
        ids = get_entry_ids()[0:args.max_entries]
    guess_file = open("guesses.csv", "w")
    fix_entries(ids, convert_files=args.convert_files, guess_file=guess_file)
    guess_file.close()
