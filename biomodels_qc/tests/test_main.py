from unittest import mock
import biomodels_qc
import biomodels_qc.__main__
import capturer
import os
import shutil
import tempfile
import unittest


class CliTestCase(unittest.TestCase):
    VALID_FIXTURE_DIRNAME = os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000600')
    INVALID_FIXTURE_DIRNAME = os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000693')

    def setUp(self):
        self.temp_dirname = tempfile.mkdtemp()

    def tearDown(self):
        shutil.rmtree(self.temp_dirname)

    def test_help(self):
        with biomodels_qc.__main__.App(argv=[]) as app:
            with capturer.CaptureOutput(merged=False, relay=False) as captured:
                app.run()
                stdout = captured.stdout.get_text()
                self.assertTrue(stdout.startswith('usage: biomodels-qc'))
                self.assertEqual(captured.stderr.get_text(), '')

    def test_version(self):
        with biomodels_qc.__main__.App(argv=['-v']) as app:
            with capturer.CaptureOutput(merged=False, relay=False) as captured:
                with self.assertRaises(SystemExit) as cm:
                    app.run()
                    self.assertEqual(cm.exception.code, 0)
                stdout = captured.stdout.get_text()
                self.assertEqual(stdout, biomodels_qc.__version__)
                self.assertEqual(captured.stderr.get_text(), '')

        with biomodels_qc.__main__.App(argv=['--version']) as app:
            with capturer.CaptureOutput(merged=False, relay=False) as captured:
                with self.assertRaises(SystemExit) as cm:
                    app.run()
                    self.assertEqual(cm.exception.code, 0)
                stdout = captured.stdout.get_text()
                self.assertEqual(stdout, biomodels_qc.__version__)
                self.assertEqual(captured.stderr.get_text(), '')

    def test_raw_cli(self):
        with mock.patch('sys.argv', ['', '--help']):
            with self.assertRaises(SystemExit) as context:
                biomodels_qc.__main__.main()
                self.assertRegex(context.Exception, 'usage: biomodels-qc')

    def test_validate(self):
        with biomodels_qc.__main__.App(argv=['validate', self.VALID_FIXTURE_DIRNAME]) as app:
            app.run()

        with self.assertRaises(SystemExit):
            with biomodels_qc.__main__.App(argv=['validate', self.INVALID_FIXTURE_DIRNAME]) as app:
                app.run()

        dirname = os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000806')
        with biomodels_qc.__main__.App(argv=['validate', dirname, '--simulator', 'tellurium']) as app:
            app.run()

        dirname = os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000806')
        with biomodels_qc.__main__.App(argv=['validate', dirname, '--simulator', 'tellurium:latest']) as app:
            app.run()

        dirname = os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000005')
        with biomodels_qc.__main__.App(argv=[
            'validate', dirname,
            '--simulator', 'tellurium:latest',
            '--simulator', 'copasi:latest'
        ]) as app:
            app.run()

    def test_build_combine_archive_with_master(self):
        temp_entry_dirname = os.path.join(self.temp_dirname, 'entry')
        shutil.copytree(self.INVALID_FIXTURE_DIRNAME, temp_entry_dirname)
        temp_archive_filename = os.path.join(self.temp_dirname, 'archive.omex')

        with biomodels_qc.__main__.App(argv=[
            'build-archive', temp_entry_dirname,
            temp_archive_filename,
            '--master', os.path.join(temp_entry_dirname, 'MODEL7817907010.sedml'),
            '--description', 'BIOMD0000000693',
            '--author', 'BioModels Team',
        ]) as app:
            app.run()

        self.assertTrue(os.path.isfile(temp_archive_filename))

    def test_build_combine_archive_without_master(self):
        temp_entry_dirname = os.path.join(self.temp_dirname, 'entry')
        shutil.copytree(self.INVALID_FIXTURE_DIRNAME, temp_entry_dirname)
        temp_archive_filename = os.path.join(self.temp_dirname, 'archive.omex')

        with biomodels_qc.__main__.App(argv=[
            'build-archive', temp_entry_dirname,
            temp_archive_filename,
        ]) as app:
            app.run()

        self.assertTrue(os.path.isfile(temp_archive_filename))

    def test_convert(self):
        temp_entry_dirname = os.path.join(self.temp_dirname, 'entry')
        shutil.copytree(self.VALID_FIXTURE_DIRNAME, temp_entry_dirname)

        with biomodels_qc.__main__.App(argv=['convert', temp_entry_dirname]) as app:
            app.run()

    def test_convert_select_formats(self):
        temp_entry_dirname = os.path.join(self.temp_dirname, 'entry')
        shutil.copytree(self.VALID_FIXTURE_DIRNAME, temp_entry_dirname)

        with biomodels_qc.__main__.App(argv=['convert', temp_entry_dirname, '--format', 'Matlab']) as app:
            app.run()
