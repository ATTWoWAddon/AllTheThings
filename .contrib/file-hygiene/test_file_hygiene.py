"""Regression tests against repository policy in isolated Git repositories."""

from __future__ import annotations

import shutil
import subprocess
import tempfile
import unittest
from pathlib import Path

import check_file_hygiene as hygiene

REPOSITORY_ROOT = Path(__file__).resolve().parents[2]
UTF8_BOM = b"\xef\xbb\xbf"


class FileHygieneTests(unittest.TestCase):
    temporary: tempfile.TemporaryDirectory[str]
    root: Path

    def setUp(self) -> None:
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        self.git("init", "--quiet")
        self.git("config", "core.autocrlf", "false")
        self.git("config", "core.safecrlf", "false")
        shutil.copyfile(REPOSITORY_ROOT / ".editorconfig", self.root / ".editorconfig")
        shutil.copyfile(
            REPOSITORY_ROOT / ".gitattributes", self.root / ".gitattributes"
        )
        self.git("add", "--", ".editorconfig", ".gitattributes")

    def git(self, *args: str, data: bytes | None = None) -> bytes:
        return subprocess.check_output(
            ["git", "-C", str(self.root), *args],
            input=data,
            stderr=subprocess.PIPE,
        )

    def add(self, name: str, data: bytes, executable: bool = False) -> None:
        path = self.root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(data)
        self.git("add", "--", name)
        self.git(
            "update-index",
            f"--chmod={'+' if executable else '-'}x",
            "--",
            name,
        )

    def assert_clean(self, filenames: list[str], *, check_index: bool = False) -> None:
        before = {name: (self.root / name).read_bytes() for name in filenames}
        before_index = self.git("ls-files", "--stage", "-z")
        findings = hygiene.validate(self.root, filenames, check_index=check_index)
        self.assertEqual([], findings)
        self.assertEqual(
            before, {name: (self.root / name).read_bytes() for name in filenames}
        )
        self.assertEqual(before_index, self.git("ls-files", "--stage", "-z"))

    def assert_issue(self, name: str, data: bytes, issue: str) -> None:
        self.add(name, data)
        before = (self.root / name).read_bytes()
        before_index = self.git("ls-files", "--stage", "-z")
        findings = hygiene.validate(self.root, [name])
        self.assertTrue(any(issue in finding for finding in findings), findings)
        self.assertEqual(before, (self.root / name).read_bytes())
        self.assertEqual(before_index, self.git("ls-files", "--stage", "-z"))

    def test_current_editorconfig_and_git_attribute_examples(self) -> None:
        power_shell = [
            ".contrib/.tools/GameObjectCache-to-ObjectDB.ps1",
            ".contrib/src/Parser/tests/CostMerge.Tests.ps1",
            ".contrib/src/Parser/tests/LocalizationFallback.Tests.ps1",
            ".github/scripts/Check-CSharpFormatting.ps1",
            ".github/scripts/Check-EditorConfig.ps1",
        ]
        paths = list(power_shell)
        for name in power_shell:
            self.add(name, UTF8_BOM + b"Write-Output 'valid'\n")

        self.add("solution.sln", UTF8_BOM + b"Project\r\n")
        paths.append("solution.sln")

        mini_json = ".contrib/src/Parser/MiniJSON.cs"
        designer = ".contrib/src/Parser/Generated.Designer.cs"
        native_bytes = UTF8_BOM + b"class Native {  \r\n}"
        self.add(mini_json, native_bytes)
        self.add(designer, native_bytes)
        paths.extend([mini_json, designer])

        shared_header = ".contrib/.db/shared/constants/headerIDs.lua"
        shared_objects = ".contrib/.db/shared/objects/ObjectDB.lua"
        self.add(shared_header, UTF8_BOM + b"return {}\r\n")
        self.add(shared_objects, UTF8_BOM + b"return {}\r\n")
        paths.extend([shared_header, shared_objects])

        forever_skill = (
            ".contrib/.db/forever/.config/exports/Skill Level Requirements.lua"
        )
        self.add(forever_skill, b"return { ['Skill'] = 1 }\r\n-- generated")
        paths.append(forever_skill)

        markdown = "README.md"
        self.add(markdown, b"A Markdown hard break uses two spaces.  \n")
        paths.append(markdown)

        wago_csv = ".contrib/.db/standard/.config/.wago/ItemDescriptions.csv"
        self.add(
            wago_csv,
            b'item,description\n1,"first source line  \nsecond source line  "\n',
        )
        paths.append(wago_csv)

        ordinary_csharp = ".contrib/src/Parser/Ordinary.cs"
        self.add(ordinary_csharp, "// café\n".encode("utf-8"))
        paths.append(ordinary_csharp)

        multiple_newlines = ".contrib/src/Parser/MultipleFinalNewlines.cs"
        self.add(multiple_newlines, b"class More {}\n\n")
        paths.append(multiple_newlines)

        empty_csharp = ".contrib/src/Parser/Empty.cs"
        self.add(empty_csharp, b"")
        paths.append(empty_csharp)

        empty_native_csharp = ".contrib/src/Parser/Empty.Designer.cs"
        self.add(empty_native_csharp, b"")
        paths.append(empty_native_csharp)

        self.assert_clean(paths, check_index=True)

    def test_policy_near_misses_are_not_covered_by_bom_paths(self) -> None:
        unconfigured_power_shell = ".contrib/src/Parser/Other.Tests.ps1"
        self.add(unconfigured_power_shell, UTF8_BOM + b"Write-Output 'native'\r\n")
        findings = hygiene.validate(self.root, [unconfigured_power_shell])
        self.assertEqual([], findings)
        self.assert_issue(
            ".contrib/src/Parser/Ordinary.DesignerX.cs",
            UTF8_BOM + b"class Ordinary {}\n",
            "UTF-8 BOM is not allowed",
        )
        self.assert_issue("solution.sln", b"Project\n", "missing UTF-8 BOM")
        self.assert_issue(
            ".contrib/.db/shared/constants/headerIDs.lua",
            b"return {}\r\n",
            "missing UTF-8 BOM",
        )

    def test_insert_final_newline_false_rejects_a_terminator(self) -> None:
        name = ".contrib/.db/forever/.config/exports/Skill Level Requirements.lua"
        self.assert_issue(name, b"return {}\r\n", "unexpected final newline")

    def test_gitattributes_select_worktree_eol_and_index_uses_lf(self) -> None:
        self.add("solution.sln", UTF8_BOM + b"Project\r\n")
        self.add("native.txt", b"Native line\r\n")
        self.assert_clean(
            [".editorconfig", "solution.sln", "native.txt"], check_index=True
        )
        self.assert_issue("wrong.sln", UTF8_BOM + b"Project\n", "expected CRLF")

    def test_editorconfig_eol_is_enforced_when_git_has_no_eol(self) -> None:
        policy = (
            "root = true\n"
            "[configured.txt]\n"
            "charset = utf-8\n"
            "end_of_line = lf\n"
            "trim_trailing_whitespace = true\n"
            "insert_final_newline = true\n"
        )
        self.add(".editorconfig", policy.encode("utf-8"))
        self.assert_issue(
            "configured.txt", b"Configured line\r\n", "expected LF line endings"
        )

    def test_conflicting_editorconfig_and_git_eol_are_rejected(self) -> None:
        original_config = (self.root / ".editorconfig").read_text(encoding="utf-8")
        self.add(
            ".editorconfig",
            (original_config + "\n[*.sln]\nend_of_line = lf\n").encode("utf-8"),
        )
        name = "conflict.sln"
        self.add(name, UTF8_BOM + b"Project\r\n")
        findings = hygiene.validate(self.root, [name], check_index=True)
        self.assertTrue(
            any(
                "EditorConfig end_of_line conflicts with Git eol attribute" in finding
                for finding in findings
            ),
            findings,
        )

    def test_unset_editorconfig_eol_uses_git_attribute(self) -> None:
        original_config = (self.root / ".editorconfig").read_text(encoding="utf-8")
        self.add(
            ".editorconfig",
            (original_config + "\n[*.sln]\nend_of_line = unset\n").encode("utf-8"),
        )
        name = "unset-eol.sln"
        self.add(name, UTF8_BOM + b"Project\r\n")
        self.assert_clean([name], check_index=True)
        self.assert_issue(name, UTF8_BOM + b"Project\n", "expected CRLF")

    def test_editorconfig_cr_eol_is_supported(self) -> None:
        properties = {
            "charset": "utf-8",
            "end_of_line": "cr",
            "insert_final_newline": "true",
            "trim_trailing_whitespace": "true",
        }
        attrs = {"text": "set", "eol": "unspecified"}
        self.assertEqual(
            [],
            hygiene.content_errors(
                "sample.txt", b"first\rsecond\r", attrs, properties, "worktree"
            ),
        )
        findings = hygiene.content_errors(
            "sample.txt", b"first\r\nsecond\r\n", attrs, properties, "worktree"
        )
        self.assertTrue(any("expected CR line endings" in item for item in findings))

    def test_editorconfig_utf8_classifies_auto_and_unspecified_as_text(self) -> None:
        name = ".github/scripts/issue_flavor_triage.py"
        utf16_data = "λ\n".encode("utf-16-le")
        self.add(name, utf16_data)

        findings = hygiene.validate(self.root, [name], check_index=True)
        for source in ("worktree", "index"):
            self.assertTrue(
                any(
                    f"{name} ({source}): invalid utf-8 encoding" in finding
                    for finding in findings
                ),
                findings,
            )
            self.assertTrue(
                any(f"{name} ({source}): NUL character in text" in f for f in findings),
                findings,
            )

        for text_policy in ("auto", "unspecified"):
            self.assertTrue(
                hygiene.is_text(
                    utf16_data,
                    {"text": text_policy, "eol": "unspecified"},
                    {"charset": "utf-8"},
                )
            )

    def test_explicit_binary_wins_over_inherited_editorconfig_charset(self) -> None:
        original_config = (self.root / ".editorconfig").read_text(encoding="utf-8")
        self.add(
            ".editorconfig",
            (
                original_config
                + "\n[assets/sample.bin]\n"
                + "charset = utf-8\n"
                + "end_of_line = lf\n"
                + "trim_trailing_whitespace = true\n"
                + "insert_final_newline = true\n"
            ).encode("utf-8"),
        )
        original_attributes = (self.root / ".gitattributes").read_text(
            encoding="utf-8"
        )
        self.add(
            ".gitattributes",
            (original_attributes + "\n*.bin binary\n").encode("utf-8"),
        )
        name = "assets/sample.bin"
        data = b"\x00\xff\x1a\r\n"
        self.add(name, data)
        properties = hygiene.editorconfig_properties(self.root / name)
        self.assertEqual("utf-8", hygiene.property_value(properties, "charset"))
        self.assertEqual(
            [],
            hygiene.content_errors(
                name, data, {"text": "unset"}, properties, "worktree"
            ),
        )
        self.assert_clean([name], check_index=True)

    def test_declared_utf16le_is_validated_as_text_with_auto_attrs(self) -> None:
        policy = (
            (self.root / ".editorconfig").read_text(encoding="utf-8")
            + "\n[utf16.sample]\n"
            + "charset = utf-16le\n"
            + "end_of_line = lf\n"
            + "trim_trailing_whitespace = true\n"
            + "insert_final_newline = true\n"
        )
        self.add(".editorconfig", policy.encode("utf-8"))
        original_attributes = (self.root / ".gitattributes").read_text(
            encoding="utf-8"
        )
        self.add(
            ".gitattributes",
            (original_attributes + "\n*.sample text=auto\n").encode("utf-8"),
        )

        name = "utf16.sample"
        valid_data = "valid UTF-16\n".encode("utf-16-le")
        self.add(name, valid_data)
        self.assert_clean([name], check_index=True)

        invalid_formatting = "trailing spaces  \n".encode("utf-16-le")
        (self.root / name).write_bytes(invalid_formatting)
        findings = hygiene.validate(self.root, [name])
        self.assertTrue(
            any(f"{name} (worktree): trailing whitespace" in item for item in findings),
            findings,
        )

    def test_unset_and_later_overrides_do_not_inherit_checks(self) -> None:
        nested = self.root / ".contrib/file-hygiene"
        nested.mkdir(parents=True)
        nested_config = (
            "root = false\n"
            "[*.txt]\n"
            "charset = utf-8\n"
            "trim_trailing_whitespace = true\n"
            "insert_final_newline = true\n"
            "[allowed.txt]\n"
            "charset = unset\n"
            "trim_trailing_whitespace = unset\n"
            "insert_final_newline = unset\n"
            "[overridden.txt]\n"
            "charset = utf-8\n"
            "trim_trailing_whitespace = false\n"
            "insert_final_newline = false\n"
        )
        self.add(".contrib/file-hygiene/.editorconfig", nested_config.encode("utf-8"))
        allowed = ".contrib/file-hygiene/allowed.txt"
        overridden = ".contrib/file-hygiene/overridden.txt"
        rejected = ".contrib/file-hygiene/rejected.txt"
        self.add(allowed, UTF8_BOM + b"first  \r\nlast  ")
        self.add(overridden, b"final spaces are not trimmed  ")
        self.add(rejected, b"trailing spaces  ")

        findings = hygiene.validate(self.root, [allowed, overridden, rejected])
        self.assertFalse(
            any(f"{allowed} (worktree)" in item for item in findings), findings
        )
        self.assertFalse(
            any(f"{overridden} (worktree)" in item for item in findings), findings
        )
        self.assertTrue(
            any(
                f"{rejected} (worktree): missing final newline" in item
                for item in findings
            ),
            findings,
        )
        self.assertTrue(
            any(
                f"{rejected} (worktree): trailing whitespace" in item
                for item in findings
            ),
            findings,
        )
        self.assertEqual(
            UTF8_BOM + b"first  \r\nlast  ", (self.root / allowed).read_bytes()
        )
        self.assertEqual(
            b"final spaces are not trimmed  ",
            (self.root / overridden).read_bytes(),
        )

    def test_editorconfig_worktree_and_index_policy_must_match(self) -> None:
        policy = (
            "root = true\n"
            "[policy.txt]\n"
            "charset = utf-8\n"
            "trim_trailing_whitespace = true\n"
            "insert_final_newline = true\n"
        )
        self.add(".editorconfig", policy.encode("utf-8"))
        self.add("policy.txt", b"policy\n")
        changed_policy = policy.replace("charset = utf-8\n", "charset = utf-8-bom\n")
        (self.root / ".editorconfig").write_bytes(changed_policy.encode("utf-8"))
        (self.root / "policy.txt").write_bytes(UTF8_BOM + b"policy\n")

        before_index = self.git("ls-files", "--stage", "-z")
        before_editorconfig = (self.root / ".editorconfig").read_bytes()
        before_file = (self.root / "policy.txt").read_bytes()
        findings = hygiene.validate(self.root, ["policy.txt"], check_index=True)
        self.assertTrue(
            any(
                "EditorConfig normalization policy differs between worktree and index"
                in finding
                for finding in findings
            ),
            findings,
        )
        self.assertEqual(before_index, self.git("ls-files", "--stage", "-z"))
        self.assertEqual(
            before_editorconfig, (self.root / ".editorconfig").read_bytes()
        )
        self.assertEqual(before_file, (self.root / "policy.txt").read_bytes())

    def test_end_of_line_policy_must_match_between_worktree_and_index(self) -> None:
        policy = (
            "root = true\n"
            "[policy.txt]\n"
            "charset = utf-8\n"
            "end_of_line = lf\n"
            "trim_trailing_whitespace = true\n"
            "insert_final_newline = true\n"
        )
        self.add(".editorconfig", policy.encode("utf-8"))
        self.add("policy.txt", b"policy\n")
        changed_policy = policy.replace(
            "end_of_line = lf\n", "end_of_line = crlf\n"
        )
        (self.root / ".editorconfig").write_bytes(changed_policy.encode("utf-8"))
        (self.root / "policy.txt").write_bytes(b"policy\r\n")

        findings = hygiene.validate(self.root, ["policy.txt"], check_index=True)
        self.assertTrue(
            any(
                "EditorConfig normalization policy differs between worktree and index"
                in finding
                for finding in findings
            ),
            findings,
        )

    def test_canonical_index_blob_is_checked_without_mutation(self) -> None:
        name = ".contrib/src/Parser/Ordinary.cs"
        self.add(name, b"class Sample {}\n")
        oid = self.git(
            "hash-object", "-w", "--stdin", data=b"class Sample {}\r\n"
        ).decode().strip()
        self.git("update-index", "--cacheinfo", f"100644,{oid},{name}")
        before_index = self.git("ls-files", "--stage", "-z")
        before_file = (self.root / name).read_bytes()
        findings = hygiene.validate(self.root, [name], check_index=True)
        self.assertTrue(
            any(f"{name} (index): expected LF line endings" in f for f in findings),
            findings,
        )
        self.assertEqual(before_index, self.git("ls-files", "--stage", "-z"))
        self.assertEqual(before_file, (self.root / name).read_bytes())

    def test_index_uses_cached_git_attributes(self) -> None:
        attributes = b"* text=auto\n*.txt text eol=lf\n"
        self.add(".gitattributes", attributes)
        self.add("sample.txt", b"sample\n")
        (self.root / ".gitattributes").write_bytes(
            b"* text=auto\n*.txt binary\n"
        )
        oid = self.git(
            "hash-object", "-w", "--stdin", data=b"sample\r\n"
        ).decode().strip()
        self.git("update-index", "--cacheinfo", f"100644,{oid},sample.txt")

        before_index = self.git("ls-files", "--stage", "-z")
        before_file = (self.root / "sample.txt").read_bytes()
        findings = hygiene.validate(self.root, ["sample.txt"], check_index=True)
        self.assertTrue(
            any(
                "sample.txt (index): expected LF line endings" in item
                for item in findings
            ),
            findings,
        )
        self.assertEqual(before_index, self.git("ls-files", "--stage", "-z"))
        self.assertEqual(before_file, (self.root / "sample.txt").read_bytes())

    def test_binary_attributes_skip_text_checks(self) -> None:
        name = "assets/sample.bin"
        self.add(name, b"\x00\xff\x1a\r\n")
        self.assert_clean([name], check_index=True)

    def test_detects_dos_eof_and_conflict_markers(self) -> None:
        self.assert_issue("sample.txt", b"content\x1a\n", "DOS EOF marker")
        self.assert_issue(
            "conflict.txt",
            b"<<<<<<< local\ncontent\n=======\nother\n>>>>>>> remote\n",
            "merge conflict marker",
        )

    def test_executable_modes_match_shebangs(self) -> None:
        self.add("script.py", b"#!/usr/bin/env python3\nprint('ok')\n")
        findings = hygiene.validate(self.root, ["script.py"])
        self.assertTrue(
            any("shebang script is not executable" in item for item in findings),
            findings,
        )
        self.add("tool.txt", b"not executable\n", executable=True)
        findings = hygiene.validate(self.root, ["tool.txt"])
        self.assertTrue(
            any("executable text file has no shebang" in item for item in findings),
            findings,
        )

    def test_detects_filename_and_directory_case_conflicts(self) -> None:
        oid = self.git("hash-object", "-w", "--stdin", data=b"hello\n").decode().strip()
        for name in ["Maps.lua", "maps.lua", "Directory/one.txt", "directory/two.txt"]:
            self.git("update-index", "--add", "--cacheinfo", f"100644,{oid},{name}")
        findings = hygiene.validate(self.root, [".gitattributes"])
        self.assertTrue(any("'Maps.lua' and 'maps.lua'" in item for item in findings))
        self.assertTrue(any("'Directory' and 'directory'" in item for item in findings))

    def test_detects_unmerged_index_stages(self) -> None:
        oid = self.git("hash-object", "-w", "--stdin", data=b"hello\n").decode().strip()
        records = f"100644 {oid} 1\tconflicted.txt\n100644 {oid} 2\tconflicted.txt\n"
        self.git("update-index", "--index-info", data=records.encode())
        findings = hygiene.validate(self.root)
        self.assertTrue(
            any("unresolved Git index stage 1" in item for item in findings)
        )
        self.assertTrue(
            any("unresolved Git index stage 2" in item for item in findings)
        )


if __name__ == "__main__":
    unittest.main()
