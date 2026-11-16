"""Exercise report URI conversion with Windows and POSIX path rules."""

import ntpath
import nturl2path
from types import SimpleNamespace
import unittest
from unittest.mock import patch
from urllib.parse import unquote

import verify


class FilePathTests(unittest.TestCase):
    def assert_windows_drive_path(self, actual, expected):
        # Older Windows converters normalize drive-letter case; keep the tail exact.
        actual_drive, actual_tail = ntpath.splitdrive(actual)
        expected_drive, expected_tail = ntpath.splitdrive(expected)
        self.assertEqual(actual_drive.casefold(), expected_drive.casefold())
        self.assertEqual(actual_tail, expected_tail)

    def convert(self, uri, converter):
        # Inspect the converted path before the host OS resolves it.
        fake_path = lambda path: SimpleNamespace(resolve=lambda: path)
        with patch.object(verify, "Path", side_effect=fake_path), \
                patch.object(verify, "url2pathname", side_effect=converter):
            return verify.file_path(uri)

    def test_windows_drive_uris(self):
        for uri, expected in (
            ("file:///c%3A/dir/file.lua", "c:\\dir\\file.lua"),
            ("file:///C%3a/dir/file.lua", "C:\\dir\\file.lua"),
            ("file:///c:/dir/file.lua", "c:\\dir\\file.lua"),
            ("file:///C:/dir/file.lua", "C:\\dir\\file.lua"),
        ):
            with self.subTest(uri=uri):
                self.assert_windows_drive_path(self.convert(uri, nturl2path.url2pathname), expected)

    def test_windows_escapes_are_decoded_once(self):
        uri = "file:///c%3A/a%2520b%2523%2525%253A%20%E4%B8%AD/file.lua"
        self.assert_windows_drive_path(self.convert(uri, nturl2path.url2pathname),
                                       "c:\\a%20b%23%25%3A 中\\file.lua")

    def test_windows_unc(self):
        uri = "file://server/share/a%2520%20%E4%B8%AD/file.lua"
        self.assertEqual(self.convert(uri, nturl2path.url2pathname),
                         "\\\\server\\share\\a%20 中\\file.lua")

    def test_posix_path_and_escapes(self):
        uri = "file:///tmp/a%2520%2523%2525%20%E4%B8%AD/file.lua"
        self.assertEqual(self.convert(uri, unquote), "/tmp/a%20%23%25 中/file.lua")

    def test_reject_non_file_or_uri_suffixes(self):
        for uri in ("https://example.test/a", "file:///tmp/a?query", "file:///tmp/a#fragment"):
            with self.subTest(uri=uri), self.assertRaises(RuntimeError):
                verify.file_path(uri)


if __name__ == "__main__":
    unittest.main()
