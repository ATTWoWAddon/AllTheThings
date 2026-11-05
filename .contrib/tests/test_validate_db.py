"""Safety and completeness checks for the actual CI artifact validator."""
import importlib.util
from pathlib import Path
import tempfile
import os
import subprocess
import sys
import unittest

sys.dont_write_bytecode = True

SCRIPT = Path(__file__).resolve().parent.parent / "validate-db.py"
spec = importlib.util.spec_from_file_location("validate_db", SCRIPT)
validator = importlib.util.module_from_spec(spec)
spec.loader.exec_module(validator)


class ArtifactTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory(prefix="att-db-validator-")
        self.addCleanup(self.temporary.cleanup)
        self.repo = Path(self.temporary.name)
        self.root = self.repo / "db"
        (self.repo / "AllTheThings.toc").write_text("fixture", encoding="utf-8")

    def flavor(self, name):
        directory = self.root / name
        (directory / "Categories").mkdir(parents=True)
        for relative in ("ReferenceDB.lua", "LocalizationDB.lua", "Categories/Fixture.lua"):
            (directory / relative).write_text("-- fixture\n", encoding="utf-8")
        (directory / "Database.xml").write_text(
            '<Ui><Script file="LocalizationDB.lua"/><Script file="Categories/Fixture.lua"/></Ui>', encoding="utf-8")
        return directory

    def test_complete_flavor(self):
        self.flavor("Standard")
        self.assertEqual(len(validator.validate(self.root, ["Standard"])), 4)

    def test_missing_nested_xml_target(self):
        directory = self.flavor("Standard")
        (directory / "Database.xml").write_text('<Ui><Include file="Nested.xml"/></Ui>', encoding="utf-8")
        (directory / "Nested.xml").write_text('<Ui><Script file="missing.lua"/></Ui>', encoding="utf-8")
        with self.assertRaisesRegex(ValueError, "Missing or empty"):
            validator.validate(self.root, ["Standard"])

    def test_xml_cannot_escape_database(self):
        directory = self.flavor("Standard")
        (self.repo / "outside.lua").write_text("unrelated", encoding="utf-8")
        (directory / "Database.xml").write_text('<Ui><Script file="../../outside.lua"/></Ui>', encoding="utf-8")
        with self.assertRaisesRegex(ValueError, "escapes database root"):
            validator.validate(self.root, ["Standard"])

    def test_xml_cycle_is_rejected(self):
        directory = self.flavor("Standard")
        (directory / "Database.xml").write_text('<Ui><Include file="Database.xml"/></Ui>', encoding="utf-8")
        with self.assertRaisesRegex(ValueError, "include cycle"):
            validator.validate(self.root, ["Standard"])

    def test_unlisted_category_is_rejected(self):
        directory = self.flavor("Standard")
        (directory / "Categories/Orphan.lua").write_text("-- stale", encoding="utf-8")
        with self.assertRaisesRegex(ValueError, "not included"):
            validator.validate(self.root, ["Standard"])

    def test_preparation_removes_only_selected_outputs(self):
        selected = self.flavor("Standard")
        unrelated = self.flavor("Cata")
        validator.prepare(self.root, ["Standard"])
        self.assertFalse(selected.exists())
        self.assertTrue((unrelated / "ReferenceDB.lua").is_file())
        # A previously tracked artifact cannot satisfy a fresh generation check.
        with self.assertRaisesRegex(ValueError, "Missing or empty"):
            validator.validate(self.root, ["Standard"])

    def test_other_flavor_cannot_mask_missing_localization(self):
        standard = self.flavor("Standard")
        cata = self.flavor("Cata")
        xml = standard / "Database.xml"
        xml.write_text(xml.read_text().replace("</Ui>", '<Script file="../Cata/LocalizationDB.lua"/></Ui>'), encoding="utf-8")
        xml = cata / "Database.xml"
        xml.write_text('<Ui><Script file="Categories/Fixture.lua"/></Ui>', encoding="utf-8")
        with self.assertRaisesRegex(ValueError, "Localization is not included"):
            validator.validate(self.root, ["Standard", "Cata"])

    def test_preparation_rejects_unknown_flavor(self):
        directory = self.flavor("Standard")
        with self.assertRaisesRegex(ValueError, "Unknown database flavor"):
            validator.prepare(self.root, ["Standard", "../outside"])
        self.assertTrue(directory.is_dir(), "All selections must pass before deletion")

    def test_preparation_requires_checkout_marker(self):
        self.flavor("Standard")
        (self.repo / "AllTheThings.toc").unlink()
        with self.assertRaisesRegex(ValueError, "checkout root"):
            validator.prepare(self.root, ["Standard"])

    @unittest.skipUnless(os.name == "nt", "Windows junction fixture")
    def test_windows_junction_is_not_followed(self):
        directory = self.flavor("Standard")
        outside = self.repo / "outside"
        outside.mkdir()
        (outside / "keep.txt").write_text("unrelated", encoding="utf-8")
        junction = directory / "linked-directory"
        result = subprocess.run(["cmd", "/c", "mklink", "/J", str(junction), str(outside)],
                                stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
        if result.returncode:
            self.skipTest("Host cannot create a junction fixture: " + result.stdout)
        # Remove the junction itself before TemporaryDirectory recursively cleans the fixture.
        self.addCleanup(lambda: os.rmdir(junction) if junction.exists() else None)
        with self.assertRaisesRegex(ValueError, "Symlinked"):
            validator.prepare(self.root, ["Standard"])
        self.assertTrue((outside / "keep.txt").is_file())

    def test_symlink_root_and_nested_target_are_rejected(self):
        directory = self.flavor("Standard")
        outside = self.repo / "external"
        outside.mkdir()
        (outside / "external.lua").write_text("unrelated", encoding="utf-8")
        try:
            (directory / "Categories/linked.lua").symlink_to(outside / "external.lua")
            linked_root = self.repo / "linked-db"
            linked_root.symlink_to(self.root, target_is_directory=True)
        except (OSError, NotImplementedError) as error:
            self.skipTest(f"Host does not support symlink fixtures: {error}")
        with self.assertRaisesRegex(ValueError, "Symlinked"):
            validator.validate(self.root, ["Standard"])
        with self.assertRaisesRegex(ValueError, "Symlinked"):
            validator.prepare(self.root, ["Standard"])
        with self.assertRaisesRegex(ValueError, "Symlinked"):
            validator.prepare(linked_root, ["Standard"])
        self.assertTrue((outside / "external.lua").is_file())


if __name__ == "__main__":
    unittest.main()
