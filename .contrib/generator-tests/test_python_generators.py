# mypy: ignore-errors
"""Offline tests for the real Python generator output boundaries.

Run from the repository root with Python 3.11 or newer:
    python -m pip install -r .contrib/generator-tests/requirements.txt
    python -m unittest discover -s .contrib/generator-tests -p test_python_generators.py -v

Network entry points are blocked. Each generator writes only temporary fixtures.
The harvester's existing run-at-import driver is omitted when loading its functions.
"""

import ast
import asyncio
import importlib.util
import os
import runpy
import sys
import tempfile
import types
import unittest
from contextlib import contextmanager, redirect_stdout
from io import StringIO
from pathlib import Path
from unittest.mock import AsyncMock, patch

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parents[2]
HARVESTERS = ROOT / ".contrib/Harvesters/Database Harvester"
LOCALIZATION = ROOT / ".contrib/.tools/Localization/object_localization.py"
EXPLORATION = ROOT / ".contrib/Harvesters/Exploration Mapping/ExplorationMapping.py"
CONDUITS = ROOT / ".contrib/.db/standard/00 - Item DB/Conduits"
sys.path.insert(0, str(HARVESTERS))


def load_generator(name, path, skip_driver=None):
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    if skip_driver is None:
        spec.loader.exec_module(module)
    else:
        tree = ast.parse(path.read_text(encoding="utf-8-sig"), filename=str(path))
        drivers = [
            node
            for node in tree.body
            if isinstance(node, ast.Expr)
            and isinstance(node.value, ast.Call)
            and isinstance(node.value.func, ast.Name)
            and node.value.func.id == skip_driver
        ]
        if len(drivers) != 1:
            raise AssertionError("Expected exactly one harvester driver invocation")
        tree.body = [node for node in tree.body if node not in drivers]
        exec(compile(tree, str(path), "exec"), module.__dict__)
    return module


output = load_generator("TextOutput", HARVESTERS / "TextOutput.py")
localization = load_generator("fixture_localization", LOCALIZATION)
harvester = load_generator(
    "fixture_harvester", HARVESTERS / "Harvester.py", "create_missing_files"
)
quests = sys.modules["QuestNames"]
exploration = load_generator("fixture_exploration", EXPLORATION)


@contextmanager
def working_directory(path):
    previous = Path.cwd()
    os.chdir(path)
    try:
        yield
    finally:
        os.chdir(previous)


class GeneratorTestCase(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        self.directory = Path(temporary.name)
        for target in ("requests.get", "aiohttp.ClientSession.get"):
            blocker = patch(
                target,
                side_effect=AssertionError("Network is disabled in generator fixtures"),
            )
            blocker.start()
            self.addCleanup(blocker.stop)
        silence = redirect_stdout(StringIO())
        silence.__enter__()
        self.addCleanup(silence.__exit__, None, None, None)

    def assert_canonical(self, path, expected=None):
        contents = path.read_bytes()
        self.assertFalse(contents.startswith(b"\xef\xbb\xbf"))
        self.assertNotIn(b"\r", contents)
        text = contents.decode("utf-8")
        if contents:
            self.assertTrue(contents.endswith(b"\n"))
            self.assertTrue(text.split("\n")[-2].strip(" \t"))
        if expected is not None:
            self.assertEqual(contents, expected.encode("utf-8"))
        return contents


class TextOutputTests(GeneratorTestCase):
    def test_boundary_cases_preserve_content_and_empty_files(self):
        cases = (
            ("", ""),
            ("\ufeff", ""),
            (" \t\r\n\r\n", ""),
            ("name  ", "name  \n"),
            ("\ufeff繁體\r\n\r\nvalue \t\r\n   \r\n\r\n", "繁體\n\nvalue \t\n"),
            ("first\rsecond\nthird\r\n", "first\nsecond\nthird\n"),
        )
        path = self.directory / "output.txt"
        for incoming, expected in cases:
            with self.subTest(incoming=incoming):
                with output.text_output(path) as file:
                    file.write(incoming)
                self.assert_canonical(path, expected)
                before = path.read_bytes()
                with output.text_output(path, "r+") as file:
                    file.read()
                self.assertEqual(path.read_bytes(), before)

    def test_update_preserves_seek_truncate_and_existing_text(self):
        path = self.directory / "raw.txt"
        path.write_bytes(b"\xef\xbb\xbffirst\r\nold tail\r\n\r\n")
        with output.text_output(path, "r+") as file:
            self.assertEqual(file.readline(), "first\n")
            file.write("new  \n")
            file.truncate()
        self.assert_canonical(path, "first\nnew  \n")
        with output.text_output(path, "r+") as file:
            self.assertEqual(file.readlines(), ["first\n", "new  \n"])
            file.write("Étoile\r\n")
        self.assert_canonical(path, "first\nnew  \nÉtoile\n")

    def test_append_normalizes_existing_eof_and_keeps_separator(self):
        path = self.directory / "names.txt"
        path.write_bytes("\ufeff9@@@Ancien\r\n\r\nvalue  ".encode("utf-8"))
        with output.text_output(path, "a") as file:
            file.write("10@@@中文  \r\n\r\n")
        self.assert_canonical(path, "9@@@Ancien\n\nvalue  \n10@@@中文  \n")
        new_path = self.directory / "new.txt"
        with output.text_output(new_path, "a") as file:
            file.write("created")
        self.assert_canonical(new_path, "created\n")


class LocalizationTests(GeneratorTestCase):
    def fixture(self, entries):
        path = self.directory / "ObjectDB.lua"
        path.write_bytes(
            (
                "\ufeff-- Header with intentional spaces  \r\n\r\n"
                "local ObjectNames = {\r\n" + entries + "}\t \r\n\r\n \t\r\n"
            ).encode("utf-8")
        )
        return path

    def test_sort_and_get_objects_info_preserve_localized_values(self):
        path = self.fixture('\t[20] = "Étoile  ",\t-- keep  \r\n\t[10] = "繁體中文",\r\n')
        info = asyncio.run(localization.get_objects_info(None, path))
        self.assertEqual(
            [(item.id, item.name) for item in info.objects],
            [(10, "繁體中文"), (20, "Étoile  ")],
        )
        before = self.assert_canonical(
            path,
            (
                "-- Header with intentional spaces  \n\nlocal ObjectNames = {\n"
                '\t[10] = "繁體中文",\n\t[20] = "Étoile  ",\t-- keep  \n}\t \n'
            ),
        )
        asyncio.run(localization.get_objects_info(None, path))
        self.assertEqual(path.read_bytes(), before)

    def test_localize_objects_updates_todo_and_is_stable(self):
        path = self.fixture('\t--TODO: [10] = "Original",\t-- Original\r\n')
        names = AsyncMock(return_value={3: ("本地化  ", localization.GameFlavor.CLASSIC)})
        with patch.object(localization, "get_localized_names", names):
            original = asyncio.run(
                localization.localize_objects(
                    None, path, localization.LangCode.CHINESE, {10: "Original"}
                )
            )
        self.assertEqual(original, {10: "Original"})
        before = self.assert_canonical(path)
        self.assertIn('"本地化  "', before.decode("utf-8"))
        self.assertIn(
            "--TODO: This was taken from classic Wowhead", before.decode("utf-8")
        )
        with patch.object(
            localization, "get_localized_names", AsyncMock(return_value={})
        ):
            asyncio.run(
                localization.localize_objects(
                    None, path, localization.LangCode.CHINESE, original
                )
            )
        self.assertEqual(path.read_bytes(), before)

    def test_get_objects_info_fills_empty_name_at_canonical_boundary(self):
        path = self.fixture('\t[10] = "",\r\n')
        with patch.object(
            localization,
            "get_localized_obj_name_flavor",
            AsyncMock(return_value="Étoile  "),
        ):
            info = asyncio.run(localization.get_objects_info(None, path))
        self.assertEqual(info.objects[0].name, "Étoile  ")
        self.assert_canonical(path)
        self.assertIn('"Étoile  "', path.read_text(encoding="utf-8"))

    def test_sync_objects_inserts_and_deletes_without_changing_existing_name(self):
        path = self.fixture('\t[10] = "現有  ",\r\n\t[20] = "Old",\r\n')
        desired = [
            localization.Object(10, "Existing", ""),
            localization.Object(15, "New", ""),
        ]
        with patch.object(
            localization,
            "get_localized_obj_name",
            AsyncMock(return_value=("新增  ", localization.GameFlavor.RETAIL)),
        ):
            asyncio.run(
                localization.sync_objects(
                    None, desired, path, localization.LangCode.CHINESE
                )
            )
        before = self.assert_canonical(path)
        self.assertIn('"現有  "', before.decode("utf-8"))
        self.assertIn('[15] = "新增  "', before.decode("utf-8"))
        self.assertNotIn("[20]", before.decode("utf-8"))
        asyncio.run(
            localization.sync_objects(
                None, desired, path, localization.LangCode.CHINESE
            )
        )
        self.assertEqual(path.read_bytes(), before)

    def test_empty_localization_boundary_stays_empty(self):
        path = self.directory / "empty.lua"
        localization._write_lines(path, [])
        self.assertEqual(path.read_bytes(), b"")


class HarvesterTests(GeneratorTestCase):
    def test_report_has_final_newline_and_repeat_is_byte_identical(self):
        path = self.directory / "MissingAchievements.txt"
        data = {"12.0.1.12345": [{"id": "123", "name": "中文"}]}
        for _ in range(2):
            harvester.write_missing_file(
                "Achievements",
                data,
                harvester.Achievements,
                {"123"},
                [],
                [],
                ["123"],
                path,
                "Achievements.lua",
            )
            actual = self.assert_canonical(
                path,
                "12.0.1.12345\n123@@@中文\n\n\nNothing is Missing in Achievements.lua! Good Work!\n",
            )
            if _ == 0:
                before = actual
            else:
                self.assertEqual(actual, before)

    def test_builds_and_recipe_outputs_use_lf(self):
        with working_directory(self.directory):
            Path("Builds.txt").write_bytes(b"\xef\xbb\xbf1.0.0.1\r\n1.0.0.3")
            harvester.add_latest_build("1.0.0.2")
            self.assert_canonical(Path("Builds.txt"), "1.0.0.1\n1.0.0.2\n1.0.0.3\n")
            recipes = Path("Raw/Recipes.txt")
            recipes.parent.mkdir()
            recipes.write_bytes(b"1.0.0.1\r\n123@@@99\r\n")
            profession = Path("Raw/Professions/Fixture.txt")
            profession.parent.mkdir()
            profession.write_bytes(b"")
            with patch.object(
                harvester, "build_profession_dict", return_value={"Fixture": ["99"]}
            ):
                harvester.sort_raw_file_recipes("Retail")
            self.assert_canonical(profession, "1.0.0.1\n123\n")
            before = profession.read_bytes()
            with patch.object(
                harvester, "build_profession_dict", return_value={"Fixture": ["99"]}
            ):
                harvester.sort_raw_file_recipes("Retail")
            self.assertEqual(profession.read_bytes(), before)

    def test_quest_name_append_and_report_are_offline_and_stable(self):
        with working_directory(self.directory):
            raw_directory = Path("Raw/QuestNames")
            raw_directory.mkdir(parents=True)
            for expansion in (
                "Retail",
                "CLASSIC",
                "TBC",
                "WOTLK",
                "CATA",
                "MOP",
                "PTR",
                "PTR2",
                "BETA",
            ):
                (raw_directory / f"{expansion}.txt").write_bytes(b"")
            retail = raw_directory / "Retail.txt"
            retail.write_bytes(b"\xef\xbb\xbf9@@@Existing")
            report = self.directory / "00 - Missing DB/99 - Midnight/MissingQuests.txt"
            report.parent.mkdir(parents=True)
            with patch.object(quests, "STANDARD_FOLDER", self.directory), patch.object(
                quests, "get_available_expansions", return_value={"Retail": ""}
            ), patch.object(quests, "get_name", return_value="新任務  ") as download:
                report.write_bytes(b"12.0.1.12345\r\n123")
                quests.get_quest_names("Retail")
                self.assertEqual(download.call_count, 1)
                before = self.assert_canonical(retail, "9@@@Existing\n123@@@新任務  \n")
                report_before = self.assert_canonical(
                    report, "12.0.1.12345\nq(123),\t-- 新任務\n"
                )
                report.write_bytes(b"12.0.1.12345\r\n123")
                quests.get_quest_names("Retail")
                self.assertEqual(download.call_count, 1)
                self.assertEqual(retail.read_bytes(), before)
                self.assertEqual(report.read_bytes(), report_before)

    def test_deprecated_report_also_gets_final_newline(self):
        namespace = harvester.__dict__.copy()
        source = HARVESTERS / "Deprecated Functions.py"
        exec(
            compile(source.read_text(encoding="utf-8-sig"), str(source), "exec"),
            namespace,
        )
        fixture_thing = types.SimpleNamespace(
            __name__="Fixture",
            real_collectible=True,
            db_path=Path("Existing.lua"),
            extract_existing_info=lambda line: "123",
        )
        with working_directory(self.directory):
            Path("Existing.lua").write_bytes(b"123\r\n")
            Path("00 - Missing DB").mkdir()
            namespace.update(
                {
                    "DATAS_FOLDER": self.directory,
                    "extract_nth_column": lambda path, n: ["123\n"]
                    if path.parts[0] == "Raw"
                    else [],
                    "get_existing_ids": lambda thing: [],
                    # Legacy reports predate the current nonempty-only build filter.
                    "remove_empty_builds": lambda lines: lines,
                }
            )
            namespace["create_missing_file"](fixture_thing)
            self.assert_canonical(
                Path("00 - Missing DB/MissingFixture.txt"),
                "123\n\n\nNothing is Missing in Existing.lua! Good Work!\n",
            )


class ExplorationAndConduitTests(GeneratorTestCase):
    def test_exploration_outputs_empty_table_and_unicode_fixtures(self):
        tables = {
            "AreaTable": ["ID,ParentAreaID,ContinentID,AreaName_lang", "10,0,1,區域  "],
            "Map": ["ID,MapName_lang,ExpansionID,InstanceType", "1,Étoile,10,0"],
        }
        with working_directory(self.directory):
            with patch.object(
                exploration,
                "download_csv",
                side_effect=lambda table, build: tables[table],
            ):
                exploration.exploration_mapping("12.0.1.12345")
                path = Path("ExplorationMapping.txt")
                before = self.assert_canonical(path)
                self.assertIn("-- 區域  \n", before.decode("utf-8"))
                exploration.exploration_mapping("12.0.1.12345")
                self.assertEqual(path.read_bytes(), before)
            with patch.object(
                exploration,
                "download_csv",
                side_effect=lambda table, build: tables[table][:1],
            ):
                exploration.exploration_mapping("12.0.1.12345")
                contents = self.assert_canonical(path)
                self.assertTrue(contents.endswith(b"Total explorations: 0\n"))

    def test_conduit_outputs_are_repeatable_and_empty_input_stays_empty(self):
        with working_directory(self.directory):
            directory = Path(".contrib/Parser/DATAS/00 - Item DB/Conduits")
            directory.mkdir(parents=True)
            fixtures = {
                "soulbindconduititem.csv": "ID,ItemID,ConduitID\r\n1,100,10\r\n",
                "soulbindconduit.csv": "ID,Unused,CovenantID,SpecSetID,Unused2\r\n10,0,1,99,0\r\n",
                "chrspecialization.csv": "A,B,C,SpecID,ClassID\r\n0,0,0,1000,3\r\n0,0,0,2000,1\r\n",
                "specsetmember.csv": "ID,SpecID,SetID\r\n1,1000,99\r\n2,2000,99\r\n",
            }
            for name, contents in fixtures.items():
                (directory / name).write_bytes(contents.encode("utf-8"))
            sys.path.insert(0, str(CONDUITS))
            try:
                runpy.run_path(str(CONDUITS / "conduits.py"))
                path = directory / "conduits_info.txt"
                before = self.assert_canonical(path, '{10,100,{1,3},"SL_COV_KYR"},\n')
                runpy.run_path(str(CONDUITS / "conduits.py"))
                self.assertEqual(path.read_bytes(), before)
                for name in ("soulbindconduititem.csv", "soulbindconduit.csv"):
                    (directory / name).write_bytes(
                        fixtures[name].split("\r\n")[0].encode("utf-8") + b"\r\n"
                    )
                runpy.run_path(str(CONDUITS / "conduits.py"))
                self.assertEqual(path.read_bytes(), b"")
            finally:
                sys.path.remove(str(CONDUITS))
                sys.modules.pop("class_info", None)


if __name__ == "__main__":
    unittest.main()
