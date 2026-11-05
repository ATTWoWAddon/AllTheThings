#!/usr/bin/env python3
"""Network-free tests of the real Titan snapshot updater and its failure paths."""
import copy
import hashlib
import importlib.util
import json
from pathlib import Path
import tempfile
import unittest
from unittest import mock

SPEC = importlib.util.spec_from_file_location("titan_update", Path(__file__).with_name("update-snapshot.py"))
UPDATE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(UPDATE)
ITEM = b"ID,ClassID,SubclassID\n25,2,7\n35,2,7\n"
MAP = b"ID,ParentUiMapID,System\n1,0,1\n"


class SnapshotTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name).resolve()
        self.destination = self.root / UPDATE.SNAPSHOT
        self.destination.mkdir(parents=True)
        (self.destination / "README.md").write_text("retain docs", encoding="utf-8")
        self.old = self.destination / "Item.3.80.1.1.csv"
        self.old.write_bytes(b"old snapshot")
        self.manifest_path = self.root / UPDATE.MANIFEST
        self.manifest_path.parent.mkdir(parents=True)
        self.manifest = {"schema": 1, "profile": "Titan", "product": "wow_classic_titan", "region": "cn", "build": "3.80.2.70372", "inputStatus": "bootstrap", "inputs": []}
        self.manifest_path.write_text(json.dumps(self.manifest), encoding="utf-8")
        self.old_manifest = self.manifest_path.read_bytes()

    def assert_unchanged(self):
        self.assertEqual(self.manifest_path.read_bytes(), self.old_manifest)
        self.assertEqual(self.old.read_bytes(), b"old snapshot")
        self.assertEqual(sorted(p.name for p in self.destination.iterdir()), [self.old.name, "README.md"])
        self.assertFalse((self.destination.parent / ".titan-update.lock").exists())
        self.assertFalse(list(self.destination.parent.glob(".titan-stage-*")))

    def test_staged_success_records_exact_bytes_and_provenance(self):
        fetched = []
        def fetch(url):
            fetched.append(url)
            return ITEM if "/Item/" in url else MAP
        entries = UPDATE.update_snapshot(self.root, ["Item", "UiMap"], "zhCN", fetch)
        self.assertEqual(len(entries), 2)
        manifest = json.loads(self.manifest_path.read_text())
        self.assertEqual(manifest["inputStatus"], "candidate")
        self.assertEqual(manifest["verificationStatus"], "provisional")
        self.assertFalse(self.old.exists())
        self.assertTrue((self.destination / "README.md").exists())
        for entry in entries:
            data = (self.root / entry["path"]).read_bytes()
            self.assertEqual(entry["sha256"], hashlib.sha256(data).hexdigest())
            self.assertEqual(entry["build"], "3.80.2.70372")
            self.assertEqual(entry["region"], "cn")
            self.assertEqual(entry["locale"], "zhCN")
            self.assertEqual(entry["verificationStatus"], "unverified")
            self.assertIn("locale=zhCN", entry["url"])
            self.assertIn("build=3.80.2.70372", entry["url"])
        self.assertEqual(len(fetched), 2)

    def test_later_download_failure_preserves_previous_snapshot(self):
        def fetch(url):
            if "/UiMap/" in url:
                raise OSError("HTTP 403 fixture")
            return ITEM
        with self.assertRaises(OSError):
            UPDATE.update_snapshot(self.root, ["Item", "UiMap"], "enUS", fetch)
        self.assert_unchanged()

    def test_wrong_table_schema_never_replaces_inputs(self):
        with self.assertRaisesRegex(ValueError, "expected DB2 CSV header"):
            UPDATE.update_snapshot(self.root, ["Item"], "enUS", lambda _: MAP)
        self.assert_unchanged()

    def test_manifest_commit_failure_rolls_back_directory(self):
        replace = UPDATE.os.replace
        def fail_manifest(source, destination):
            if Path(destination) == self.manifest_path:
                raise OSError("manifest replacement fixture")
            return replace(source, destination)
        with mock.patch.object(UPDATE.os, "replace", side_effect=fail_manifest):
            with self.assertRaises(OSError):
                UPDATE.update_snapshot(self.root, ["Item"], "enUS", lambda _: ITEM)
        self.assert_unchanged()

    def test_concurrent_manifest_edit_is_preserved(self):
        edited = copy.deepcopy(self.manifest)
        edited["userEdit"] = "preserve this change"
        def fetch(_):
            self.manifest_path.write_text(json.dumps(edited), encoding="utf-8")
            return ITEM
        with self.assertRaisesRegex(ValueError, "manifest changed"):
            UPDATE.update_snapshot(self.root, ["Item"], "enUS", fetch)
        self.assertEqual(json.loads(self.manifest_path.read_text()), edited)
        self.assertEqual(self.old.read_bytes(), b"old snapshot")
        self.assertFalse(list(self.destination.parent.glob(".titan-stage-*")))

    def test_invalid_csv_errors_are_rejected(self):
        cases = [b"<html>Forbidden</html>", b"ID,ClassID,SubclassID\n", b"ID,ClassID,SubclassID\n1,2\n", b"ID,ClassID,SubclassID\n1,2,7\n1,2,7\n", b"ID,ClassID,SubclassID\nnot-an-id,2,7\n", b'ID,ClassID,SubclassID\n1,"unterminated,7\n']
        for data in cases:
            with self.subTest(data=data):
                with self.assertRaises((ValueError, UPDATE.csv.Error)):
                    UPDATE.validate_csv(data, "Item")

    def test_quoted_fields_and_bom_are_valid(self):
        data = '\ufeffID,Display_lang,OverallQualityID\n25,"Name, with comma",1\n'.encode()
        self.assertEqual(UPDATE.validate_csv(data, "ItemSearchName"), 1)

    def test_wrong_product_rejected_before_fetch(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["product"] = "wow_classic"
        self.manifest_path.write_text(json.dumps(manifest))
        fetch = mock.Mock()
        with self.assertRaisesRegex(ValueError, "Titan/CN"):
            UPDATE.update_snapshot(self.root, ["Item"], "enUS", fetch)
        fetch.assert_not_called()

    def test_concurrent_updater_cannot_change_existing_snapshot(self):
        lock = self.destination.parent / ".titan-update.lock"
        lock.write_text("another updater")
        with self.assertRaises(FileExistsError):
            UPDATE.update_snapshot(self.root, ["Item"], "enUS", lambda _: ITEM)
        self.assertEqual(lock.read_text(), "another updater")
        self.assertEqual(self.manifest_path.read_bytes(), self.old_manifest)
        self.assertEqual(self.old.read_bytes(), b"old snapshot")


if __name__ == "__main__":
    unittest.main()
