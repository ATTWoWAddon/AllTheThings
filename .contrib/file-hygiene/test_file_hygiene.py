"""Regression tests using isolated Git repositories; no project files are changed."""

from __future__ import annotations

import subprocess
import tempfile
import unittest
from pathlib import Path

import check_file_hygiene as hygiene


class FileHygieneTests(unittest.TestCase):
    def setUp(self) -> None:
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        self.git("init", "--quiet")
        self.git("config", "core.autocrlf", "false")
        self.git("config", "core.hooksPath", str(self.root / "disabled-hooks"))
        self.add(
            ".gitattributes",
            b"* text=auto eol=lf\n*.bat text eol=crlf\n*.cmd text eol=crlf\n*.bin binary\n",
        )

    def git(self, *args: str, data: bytes | None = None) -> bytes:
        return subprocess.check_output(
            ["git", "-C", str(self.root), *args], input=data, stderr=subprocess.PIPE
        )

    def add(self, name: str, data: bytes, executable: bool = False) -> None:
        path = self.root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(data)
        self.git("add", "--", name)
        self.git("update-index", f"--chmod={'+' if executable else '-'}x", "--", name)

    def assert_issue(self, name: str, data: bytes, issue: str) -> None:
        self.add(name, data)
        findings = hygiene.validate(self.root, [name])
        self.assertTrue(any(issue in finding for finding in findings), findings)

    def test_rejects_encoding_eol_eof_and_markers(self) -> None:
        cases = [
            ("sample.txt", b"hello\r\n", "expected LF"),
            ("sample.txt", b"first\r\nsecond\n", "expected LF"),
            ("sample.txt", b"hello\r", "expected LF"),
            ("sample.cmd", b"hello\n", "expected CRLF"),
            ("sample.ps1", b"hello\r\n", "expected LF"),
            ("sample.psm1", b"hello\r\n", "expected LF"),
            ("sample.psd1", b"hello\r\n", "expected LF"),
            ("sample.txt", b"hello", "missing final newline"),
            ("sample.txt", b"hello\n\n", "multiple final newlines"),
            ("sample.txt", b"hello\n \t\n", "whitespace-only final blank line"),
            ("sample.cmd", b"hello\r\n\r\n", "multiple final newlines"),
            ("sample.txt", b"\xef\xbb\xbfhello\n", "UTF-8 BOM"),
            ("sample.txt", b"\xff\xfeh\x00i\x00\n\x00", "UTF-16/UTF-32"),
            ("sample.unknown", b"\xfe\xff\x00h\x00i\x00\n", "UTF-16/UTF-32"),
            ("sample.txt", b"h\x00i\x00\n\x00", "NUL byte"),
            ("sample.txt", b"\xfflegacy\n", "invalid UTF-8"),
            ("sample.txt", b"hello\x1a\n", "DOS EOF"),
            ("sample.txt", b"hello \n", "trailing whitespace"),
            (
                "sample.txt",
                b"<<<<<<< HEAD\nhello\n=======\nother\n>>>>>>> branch\n",
                "merge conflict",
            ),
            ("sample.txt", b"||||||| base\nhello\n", "merge conflict"),
        ]
        for name, data, issue in cases:
            with self.subTest(name=name, issue=issue):
                self.assert_issue(name, data, issue)

    def test_accepts_empty_unicode_crlf_and_binary(self) -> None:
        cases = {
            "empty.txt": b"",
            "locale.lua": 'local text = "繁體中文、Français、한국어"\n'.encode(),
            "build.bat": b"@echo off\r\necho hello\r\n",
            "build.cmd": b"@echo off\r\n",
            "script.ps1": b"Write-Output 'hello'\n",
            "asset.bin": b"\xff\xfe\x00\n\x1a ",
            "asset.unknown": b"MZ\x00\xff\x1a",
        }
        for name, data in cases.items():
            self.add(name, data)
        self.assertEqual(hygiene.validate(self.root, check_index=True), [])

    def test_preserves_only_scoped_whitespace_exceptions(self) -> None:
        exempt = [
            ".config/.exports/export.txt",
            ".contrib/Harvesters/Raw.txt",
            ".contrib/Debugging/log.txt",
            ".contrib/.db/standard/.config/.wago/enUS/Achievement.csv",
            "AGENTS.md",
            "README.md",
        ]
        for name in exempt:
            self.add(name, b'"Localized text \ncontinued"\n')
        self.assertEqual(hygiene.validate(self.root, check_index=True), [])
        nonexempt = [
            ".contrib/HarvestersExtra/Raw.txt",
            ".contrib/.db/standard/.config/.wago/enUS/README.txt",
            ".contrib/.db/standard/.config/.wagoExtra/enUS/Achievement.csv",
            "docs/AGENTS.md",
            "docs/README.md",
        ]
        for name in nonexempt:
            self.assert_issue(name, b"name \n", "trailing whitespace")
        self.assert_issue(exempt[0], b"hello\r\n", "expected LF")
        self.assert_issue(exempt[1], b"\xef\xbb\xbfhello\n", "UTF-8 BOM")
        self.assert_issue(exempt[2], b"hello", "missing final newline")
        self.assert_issue(exempt[3], b"hello\n\n", "multiple final newlines")
        self.assert_issue(exempt[3], b"hello\n \n", "whitespace-only final blank line")
        self.assert_issue("README.md", b"hello\r\n", "expected LF")
        self.assert_issue("AGENTS.md", b"\xef\xbb\xbfhello \n", "UTF-8 BOM")
        self.assert_issue("README.md", b"hello\n \n", "whitespace-only final blank line")

    def test_checks_git_modes_without_using_filesystem_modes(self) -> None:
        self.add("tool.sh", b"#!/bin/sh\necho hello\n")
        findings = hygiene.validate(self.root)
        self.assertTrue(any("not executable in the Git index" in f for f in findings))
        self.git("update-index", "--chmod=+x", "tool.sh")
        self.assertEqual(hygiene.validate(self.root, check_index=True), [])
        self.add("tool.py", b"print('hello')\n", executable=True)
        findings = hygiene.validate(self.root)
        self.assertTrue(
            any("executable text file has no shebang" in f for f in findings)
        )

    def test_detects_noncanonical_stored_blob_and_does_not_mutate(self) -> None:
        self.add("sample.txt", b"hello\n")
        oid = (
            self.git("hash-object", "-w", "--stdin", data=b"hello\r\n").decode().strip()
        )
        self.git("update-index", "--cacheinfo", f"100644,{oid},sample.txt")
        before_index = self.git("ls-files", "--stage", "-z")
        before_contents = (self.root / "sample.txt").read_bytes()
        self.assertEqual(hygiene.validate(self.root), [])
        findings = hygiene.validate(self.root, check_index=True)
        self.assertTrue(any("sample.txt (index): expected LF" in f for f in findings))
        self.assertEqual(before_index, self.git("ls-files", "--stage", "-z"))
        self.assertEqual(before_contents, (self.root / "sample.txt").read_bytes())

    def test_detects_filename_and_directory_case_conflicts(self) -> None:
        oid = self.git("hash-object", "-w", "--stdin", data=b"hello\n").decode().strip()
        for name in ["Maps.lua", "maps.lua", "Directory/one.txt", "directory/two.txt"]:
            self.git("update-index", "--add", "--cacheinfo", f"100644,{oid},{name}")
        findings = hygiene.validate(self.root, [".gitattributes"])
        self.assertTrue(any("'Maps.lua' and 'maps.lua'" in f for f in findings))
        self.assertTrue(any("'Directory' and 'directory'" in f for f in findings))

    def test_detects_unmerged_index_stages(self) -> None:
        oid = self.git("hash-object", "-w", "--stdin", data=b"hello\n").decode().strip()
        records = f"100644 {oid} 1\tconflicted.txt\n100644 {oid} 2\tconflicted.txt\n"
        self.git("update-index", "--index-info", data=records.encode())
        findings = hygiene.validate(self.root)
        self.assertTrue(any("unresolved Git index stage 1" in f for f in findings))
        self.assertTrue(any("unresolved Git index stage 2" in f for f in findings))


if __name__ == "__main__":
    unittest.main()
