#!/usr/bin/env python3
"""Black-box checks for the real Parser --phase-example CLI (Python stdlib)."""
import argparse
import json
from pathlib import Path
import re
import shutil
import subprocess
import tempfile

OPTIONS = ("A", "B", "C")
CONTEXTS = ("retail", "progression:main", "anniversary:main", "era:main", "sod:main",
            "sod:replay", "progression:replay")
HERE = Path(__file__).resolve().parent


def run(command, *, succeeds=True):
    result = subprocess.run([str(value) for value in command], capture_output=True, text=True)
    if (result.returncode == 0) != succeeds:
        raise AssertionError(f"Unexpected exit {result.returncode}: {command}\n{result.stdout}\n{result.stderr}")
    return result


def policy_file(root, option, context, key):
    if option != "C":
        path = root / "profiles" / (context.replace(":", "/") + ".json")
        data = json.loads(path.read_text(encoding="utf-8"))
        return path, data, data["content"]
    for path in sorted((root / "policies").glob("*.json")):
        data = json.loads(path.read_text(encoding="utf-8"))
        if key in data.get(context, {}):
            return path, data, data[context]
    raise AssertionError(f"No policy {context}:{key}")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--parser", type=Path, required=True, help="actual Parser.exe, or the shared-source local harness DLL")
    parser.add_argument("--launcher", action="append", default=[], help="prefix token; repeat for e.g. --launcher dotnet --launcher exec")
    parser.add_argument("--lua", default="lua5.1", help="Lua 5.1 executable")
    parser.add_argument("--input-dir", type=Path, default=HERE / "input")
    parser.add_argument("--output", "--output-dir", dest="output_dir", type=Path, help="keep the 21 compiled native Lua modules here")
    args = parser.parse_args()
    command = args.launcher + [str(args.parser.resolve())]
    run([args.lua, "-e", "assert(_VERSION == 'Lua 5.1', 'Lua 5.1 is required')"])
    with tempfile.TemporaryDirectory(prefix="att-phase-examples-") as temporary:
        scratch = Path(temporary)
        output = args.output_dir.resolve() if args.output_dir else scratch / "output"
        output.mkdir(parents=True, exist_ok=True)
        source = args.input_dir.resolve()
        for lua_source in sorted(source.rglob("*.lua")):
            # Parse with the actual WoW-language version without executing it.
            quoted = json.dumps(str(lua_source), ensure_ascii=False)
            run([args.lua, "-e", f"assert(loadfile({quoted}))"])
        for context in CONTEXTS:
            for option in OPTIONS:
                target = output / option / f"{context.replace(':', '-')}.lua"
                target.parent.mkdir(parents=True, exist_ok=True)
                run(command + ["--phase-example", option, source, context, target])
            slug = context.replace(":", "-") + ".lua"
            baseline = (output / "A" / slug).read_bytes()
            for option in ("B", "C"):
                if (output / option / slug).read_bytes() != baseline:
                    raise AssertionError(f"{context}: native {option} output differs from A")
        behavior = run([args.lua, HERE / "verify.lua", HERE / "evaluate.lua", output])
        print(behavior.stdout.strip())
        print("21 native Lua outputs: full A/B/C equivalence and six-case Lua 5.1 behavior passed")

        # Exercise removal/reopening through the actual compiler, not only the
        # evaluator unit fixture. These are deliberately synthetic milestones.
        windows_input = scratch / "window-roundtrip"
        shutil.copytree(source, windows_input)
        profile = windows_input / "profiles/sod/main.json"
        document = json.loads(profile.read_text(encoding="utf-8"))
        insertion = document["milestones"].index("vanilla.5") + 1
        document["milestones"][insertion:insertion] = ["fixture.5.1", "fixture.5.2", "fixture.5.10"]
        changed_policy = {"windows": [{"from": "fixture.5.1", "until": "fixture.5.2"}, {"from": "fixture.5.10"}]}
        document["content"]["raid.bwl.sod20"] = changed_policy
        document["content"]["brd.dungeon"] = {"windows": [{"from": "start"}]}
        profile.write_text(json.dumps(document), encoding="utf-8")
        (windows_input / "catalogs/sod/main.json").write_text(json.dumps({"milestones": document["milestones"]}), encoding="utf-8")
        policy_path, policy_document, content = policy_file(windows_input, "C", "sod:main", "raid.bwl.sod20")
        content["raid.bwl.sod20"] = changed_policy
        policy_path.write_text(json.dumps(policy_document), encoding="utf-8")
        start_path, start_document, start_content = policy_file(windows_input, "C", "sod:main", "brd.dungeon")
        start_content["brd.dungeon"] = {"windows": [{"from": "start"}]}
        start_path.write_text(json.dumps(start_document), encoding="utf-8")
        windows_outputs = []
        for option in OPTIONS:
            target = scratch / f"windows-{option}.lua"
            run(command + ["--phase-example", option, windows_input, "sod:main", target])
            windows_outputs.append(target)
        if len({path.read_bytes() for path in windows_outputs}) != 1:
            raise AssertionError("A/B/C removal/reopening compilation differs")
        run([args.lua, HERE / "verify.lua", HERE / "evaluate.lua", "--windows", windows_outputs[0]])
        print("Native subphase/removal/reopening roundtrip passed for A/B/C")

        count = 0
        def rejected(name, option, mutate, context="sod:main", diagnostic=None):
            nonlocal count
            case = scratch / name
            shutil.copytree(source, case)
            mutate(case)
            target = case / "sentinel.lua"
            sentinel = b"previous output must survive\n"
            target.write_bytes(sentinel)
            result = run(command + ["--phase-example", option, case, context, target], succeeds=False)
            if target.read_bytes() != sentinel:
                raise AssertionError(f"{name}: failed compile changed its previous output")
            if diagnostic and diagnostic.lower() not in result.stderr.lower():
                raise AssertionError(f"{name}: wrong diagnostic: {result.stderr}")
            if list(case.glob("sentinel.lua.*.tmp")):
                raise AssertionError(f"{name}: temporary output leaked")
            count += 1

        def edit_policy(option, key, change):
            def mutate(case):
                path, document, policies = policy_file(case, option, "sod:main", key)
                change(policies, key)
                path.write_text(json.dumps(document, ensure_ascii=False), encoding="utf-8")
            return mutate

        for option in ("A", "C"):
            cases = {
                "missing": ("raid.bwl.sod20", lambda p, k: p.pop(k)),
                "missing-child-under-disabled": ("raid.bwl.draconic-for-dummies", lambda p, k: p.pop(k)),
                "disabled-with-window": ("raid.bwl.original", lambda p, k: p.__setitem__(k, {"status": "disabled", "windows": [{"from": "vanilla.5"}]})),
                "unknown-with-window": ("dfc.dungeon", lambda p, k: p.__setitem__(k, {"status": "unknown", "windows": [{"from": "vanilla.4"}]})),
                "reversed": ("raid.bwl.sod20", lambda p, k: p.__setitem__(k, {"windows": [{"from": "vanilla.5", "until": "vanilla.4"}]})),
                "unknown-subphase": ("raid.bwl.sod20", lambda p, k: p.__setitem__(k, {"windows": [{"from": "vanilla.4.10"}]})),
                "empty-scheduled": ("raid.bwl.sod20", lambda p, k: p.__setitem__(k, {"windows": []})),
                "explicit-scheduled": ("raid.bwl.sod20", lambda p, k: p.__setitem__(k, {"status": "scheduled", "windows": [{"from": "vanilla.5"}]})),
                "unknown-policy-field": ("raid.bwl.sod20", lambda p, k: p[k].__setitem__("window", [])),
                "unknown-window-field": ("raid.bwl.sod20", lambda p, k: p[k]["windows"][0].__setitem__("unti1", "vanilla.7")),
                "orphan": ("raid.bwl.sod20", lambda p, k: p.__setitem__("typo.unused", {"windows": [{"from": "vanilla.5"}]})),
                "array-policy": ("raid.bwl.sod20", lambda p, k: p.__setitem__(k, [])),
                "overlapping-windows": ("raid.bwl.sod20", lambda p, k: p.__setitem__(k, {"windows": [{"from": "vanilla.4", "until": "vanilla.7"}, {"from": "vanilla.5"}]})),
                "object-windows": ("raid.bwl.sod20", lambda p, k: p.__setitem__(k, {"windows": {}})),
            }
            for name, (key, change) in cases.items():
                rejected(f"{option}-{name}", option, edit_policy(option, key, change))
            def duplicate(case, option=option):
                path, _, _ = policy_file(case, option, "sod:main", "raid.bwl.sod20")
                text = path.read_text(encoding="utf-8")
                quoted = json.dumps("raid.bwl.sod20")
                text, changed = re.subn(re.escape(quoted) + r"\s*:", quoted + ':{"windows":[]},' + quoted + ':', text, count=1)
                assert changed == 1
                path.write_text(text, encoding="utf-8")
            rejected(f"{option}-duplicate-json", option, duplicate, diagnostic="duplicate")

        def replace_profile(text):
            return lambda case: (case / "profiles/sod/main.json").write_text(text, encoding="utf-8")
        rejected("malformed-json", "A", replace_profile("{"))
        rejected("array-json-root", "A", replace_profile("[]"), diagnostic="object")
        for index, invalid in enumerate(("01", "+1", "1.", ".1", "1e", "NaN", "Infinity")):
            rejected(f"json-number-{index}", "A", replace_profile('{"milestones":[' + invalid + '],"content":{}}'))

        def selected_fragment_missing(case):
            path = case / "selection.json"
            document = json.loads(path.read_text(encoding="utf-8"))
            selected = document["sod:main"]
            slot = next(key for key, value in selected.items() if value is not None)
            selected[slot] = "fragments/not-present.lua"
            path.write_text(json.dumps(document), encoding="utf-8")
        rejected("B-missing-selected-fragment", "B", selected_fragment_missing)
        def unused_selection(case):
            path = case / "selection.json"
            document = json.loads(path.read_text(encoding="utf-8"))
            document["sod:main"]["typo-unused"] = None
            path.write_text(json.dumps(document), encoding="utf-8")
        rejected("B-unused-selection", "B", unused_selection, diagnostic="unused")
        def missing_selection(case):
            path = case / "selection.json"
            document = json.loads(path.read_text(encoding="utf-8"))
            document["sod:main"].pop(next(iter(document["sod:main"])))
            path.write_text(json.dumps(document), encoding="utf-8")
        rejected("B-missing-selection", "B", missing_selection, diagnostic="missing group")
        rejected("unknown-context", "A", lambda case: None, context="unknown:main")
        rejected("reserved-start-milestone", "A", replace_profile('{"milestones":["start"],"content":{}}'), diagnostic="boundary")
        rejected("duplicate-milestone", "A", replace_profile('{"milestones":["vanilla.1","vanilla.1"],"content":{}}'), diagnostic="duplicate")
        def duplicate_lua(case):
            (case / "sources.lua").write_text('return { inst(1, { itemID=2, itemID=3 }) }', encoding="utf-8")
        rejected("duplicate-lua-field", "A", duplicate_lua, context="retail", diagnostic="duplicate")
        def attempted_effect(case):
            # Even an excluded expression is never executed: arbitrary calls are
            # outside the literal grammar and fail before output publication.
            (case / "sources.lua").write_text('return { inst(1, { flavors={"sod"}, groups={i(2, {poison=evil()})} }) }', encoding="utf-8")
        rejected("excluded-arbitrary-helper", "A", attempted_effect, context="retail", diagnostic="unsupported")
        print(f"{count} rejected-input cases: previous output preserved; no temporary outputs leaked")


if __name__ == "__main__":
    main()
