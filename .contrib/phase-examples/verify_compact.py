#!/usr/bin/env python3
"""Comparison tooling (P4 interfaces): test compact authoring with the real Parser.

All generation and mutations use temporary copies. These checks do not migrate
production data or turn historical evolution snapshots into live authorities.
"""
import argparse
import copy
import json
from pathlib import Path
import shutil
import sys
import tempfile

from verify import CONTEXTS, OPTIONS, run

HERE = Path(__file__).resolve().parent


def contents(directory):
    return {str(path.relative_to(directory)): path.read_bytes()
            for path in directory.rglob("*") if path.is_file()}


def fingerprint(directory):
    return {str(path.relative_to(directory)): (path.stat().st_mtime_ns, path.read_bytes() if path.is_file() else None)
            for path in [directory, *directory.rglob("*")]}


def write_json(path, value):
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def rule(schedule, key):
    return next(entries for entries in schedule["rules"].values() if key in entries)


CHECK_LUA = '''local evaluate = dofile(arg[1])
local data = dofile(arg[2])
local mode = arg[3]
local function item(id, view)
    return evaluate.find(data, {itemID=id}, view, function() return true end)
end
local prefix = data.context .. ":"
local common = data.policies[prefix .. "raid.bwl.common"]
local rework = data.policies[prefix .. "raid.bwl.sod20"]
assert(data.policies[prefix .. "raid.bwl.original"].status == "disabled")
assert(data.policies[prefix .. "raid.bwl.draconic-for-dummies"].status == "unknown")
if mode == "delayed" then
    assert(common.windows[1].from == "vanilla.6.scepter")
    assert(rework.windows[1].from == "vanilla.6.scepter", "sameAs must follow the single edited opening")
    assert(not item(230818,"vanilla.5").obtainable)
    assert(item(230818,"vanilla.6.scepter").obtainable)
    assert(not item(19003,"vanilla.5").obtainable)
    local head = item(19003,"vanilla.6.scepter")
    assert(head.obtainable and #head.routes == 2)
elseif mode == "windows" then
    assert(#common.windows == 2 and #rework.windows == 2)
    assert(common.windows[1]["until"] == "vanilla.6.scepter")
    assert(rework.windows[2].from == "vanilla.7")
    assert(item(230818,"vanilla.5").obtainable)
    assert(not item(230818,"vanilla.6.scepter").obtainable)
    assert(item(230818,"vanilla.7").obtainable)
else
    error("unknown test mode")
end
for _, view in ipairs(data.milestones) do
    local original = item(19364,view)
    assert(not original.obtainable and #original.routes == 1)
    assert(original.routes[1].schedule == "disabled")
end
local book = item(21109,"vanilla.5")
assert(not book.obtainable and #book.routes == 1)
local sawUnknown = false
for _, state in ipairs(book.routes[1].scopeStates) do
    if state.key == prefix .. "raid.bwl.draconic-for-dummies" then
        assert(state.state == "unknown")
        sawUnknown = true
    end
end
assert(sawUnknown, "independent book evidence cannot disappear under a disabled parent")
'''


def verify_compact(command, lua, input_dir, schedule_path, comparison_path, baseline_output=None):
    schedule = json.loads(schedule_path.read_text(encoding="utf-8"))
    comparison = json.loads(comparison_path.read_text(encoding="utf-8"))
    prepare = [sys.executable, HERE / "prepare.py"]
    assertions = 0
    with tempfile.TemporaryDirectory(prefix="att-compact-authoring-") as temporary:
        scratch = Path(temporary)

        def case(name, source=input_dir):
            directory = scratch / name
            directory.mkdir()
            shutil.copytree(source, directory / "input")
            write_json(directory / "schedule.json", copy.deepcopy(schedule))
            write_json(directory / "comparison.json", copy.deepcopy(comparison))
            return directory

        def generate(directory, succeeds=True, check=False):
            return run(prepare + ["--schedule", directory / "schedule.json", "--comparison", directory / "comparison.json",
                                  "--output", directory / "input"] + (["--check"] if check else []), succeeds=succeeds)

        def compile_all(directory, output):
            for context in CONTEXTS:
                for option in OPTIONS:
                    target = output / option / (context.replace(":", "-") + ".lua")
                    target.parent.mkdir(parents=True, exist_ok=True)
                    run(command + ["--phase-example", option, directory / "input", context, target])
                values = [(output / option / (context.replace(":", "-") + ".lua")).read_bytes() for option in OPTIONS]
                assert values[0] == values[1] == values[2], f"compact A/B/C differ: {context}"

        base = case("base")
        lua_before = {path: value for path, value in contents(base / "input").items() if path.endswith(".lua")}
        generate(base)
        first = contents(base / "input")
        generate(base)
        assert contents(base / "input") == first, "repeated generation must be deterministic"
        assert lua_before == {path: value for path, value in first.items() if path.endswith(".lua")}, "generation changed authored Lua"
        before = fingerprint(base / "input")
        generate(base, check=True)
        assert fingerprint(base / "input") == before, "successful --check must not write"
        for path in (base / "input").rglob("*.json"):
            path.write_bytes(path.read_bytes().replace(b"\r\n", b"\n").replace(b"\n", b"\r\n"))
        before = fingerprint(base / "input")
        generate(base, check=True)
        assert fingerprint(base / "input") == before, "CRLF --check must not rewrite a checkout"
        stale = base / "input/profiles/sod/main.json"
        original = stale.read_bytes()
        stale.write_bytes(original.replace(b"vanilla.5", b"stale.phase", 1))
        before = fingerprint(base / "input")
        generate(base, succeeds=False, check=True)
        assert fingerprint(base / "input") == before, "stale --check must not repair or touch files"
        stale.write_bytes(original)
        assertions += 6

        generated_outputs = scratch / "generated"
        compile_all(base, generated_outputs)
        if baseline_output is None:
            baseline_output = scratch / "baseline"
            baseline = case("baseline")
            compile_all(baseline, baseline_output)
        for context in CONTEXTS:
            for option in OPTIONS:
                relative = Path(option) / (context.replace(":", "-") + ".lua")
                assert (generated_outputs / relative).read_bytes() == (baseline_output / relative).read_bytes(), f"expansion changed {relative}"
                assertions += 1

        check_lua = scratch / "check.lua"
        check_lua.write_text(CHECK_LUA, encoding="utf-8")
        for name, replacement in (
            ("delayed", "vanilla.6.scepter"),
            ("windows", {"windows": [{"from": "vanilla.5", "until": "vanilla.6.scepter"}, {"from": "vanilla.7"}]}),
        ):
            changed = case(name, base / "input")
            data = copy.deepcopy(schedule)
            rule(data, "raid.bwl.common")["raid.bwl.common"]["sod"] = replacement
            write_json(changed / "schedule.json", data)
            generate(changed)
            output = scratch / (name + "-output")
            compile_all(changed, output)
            for context in CONTEXTS:
                for option in OPTIONS:
                    relative = Path(option) / (context.replace(":", "-") + ".lua")
                    if context.startswith("sod:"):
                        run([lua, check_lua, HERE / "evaluate.lua", output / relative, name])
                    else:
                        assert (output / relative).read_bytes() == (generated_outputs / relative).read_bytes(), "SoD edit changed another flavor/Retail"
                    assertions += 1

        def rejected(name, change_schedule=None, change_comparison=None, raw_schedule=None):
            nonlocal assertions
            bad = case(name, base / "input")
            data, fixture = copy.deepcopy(schedule), copy.deepcopy(comparison)
            if change_schedule: change_schedule(data)
            if change_comparison: change_comparison(fixture)
            write_json(bad / "schedule.json", data)
            write_json(bad / "comparison.json", fixture)
            if raw_schedule is not None:
                (bad / "schedule.json").write_text(raw_schedule, encoding="utf-8")
            before = fingerprint(bad / "input")
            generate(bad, succeeds=False)
            assert fingerprint(bad / "input") == before, name + " published output on rejection"
            assertions += 1

        rejected("alias-cycle", lambda data: rule(data, "raid.bwl.common")["raid.bwl.common"].__setitem__("sod", {"sameAs": "raid.bwl.sod20"}))
        rejected("alias-missing", lambda data: rule(data, "raid.bwl.sod20")["raid.bwl.sod20"].__setitem__("sod", {"sameAs": "typo.missing"}))
        rejected("alias-inapplicable", lambda data: rule(data, "raid.bwl.original")["raid.bwl.original"].__setitem__("anniversary", {"sameAs": "raid.bwl.sod20"}))
        rejected("typo-flavor", lambda data: rule(data, "raid.bwl.common")["raid.bwl.common"].__setitem__("sdo", "vanilla.5"))
        rejected("typo-slot-flavor", change_comparison=lambda data: data["slots"]["bwl.rework"].append("sdo"))
        rejected("main-inapplicable-replay", change_comparison=lambda data: data["replays"]["progression:replay"]["rules"].__setitem__("raid.bwl.sod20", "vanilla.3"))
        rejected("flavored-replay", change_comparison=lambda data: data["replays"]["sod:replay"]["rules"].__setitem__("dfc.dungeon", {"era": "vanilla.3"}))
        rejected("calendar-cycle", lambda data: data["calendars"].__setitem__("progression", {"sameAs": "era"}))
        rejected("calendar-alias-missing", lambda data: data["calendars"].__setitem__("era", {"sameAs": "missing"}))
        rejected("overlapping-windows", lambda data: rule(data, "raid.bwl.common")["raid.bwl.common"].__setitem__("sod", {"windows": [{"from": "vanilla.5", "until": "vanilla.7"}, {"from": "vanilla.6.scepter"}]}))
        rejected("unknown-milestone", lambda data: rule(data, "raid.bwl.common")["raid.bwl.common"].__setitem__("sod", "typo.phase"))
        duplicate = json.dumps(schedule).replace('"raid.bwl.common":', '"raid.bwl.common":"unknown","raid.bwl.common":', 1)
        rejected("duplicate-rule", raw_schedule=duplicate)
        rejected("duplicate-comment", raw_schedule='{"$comment":null,"$comment":"again","rules":{},"calendars":{}}')
        for reserved in ("start", "disabled", "unknown"):
            rejected("reserved-milestone-" + reserved, lambda data, reserved=reserved: data["calendars"]["sod"].append(reserved))
            rejected("reserved-replay-" + reserved, change_comparison=lambda data, reserved=reserved: data["replays"]["sod:replay"].__setitem__("insert", reserved))
        for reserved in ("retail", "default"):
            rejected("reserved-calendar-" + reserved, lambda data, reserved=reserved: data["calendars"].__setitem__(reserved, {"sameAs": "era"}))

        future = case("future-registration", base / "input")
        data = copy.deepcopy(schedule)
        data["calendars"]["future"] = {"sameAs": "era"}
        write_json(future / "schedule.json", data)
        fixture = copy.deepcopy(comparison)
        fixture["slots"]["bwl.classic-original"].append("future")
        write_json(future / "comparison.json", fixture)
        generate(future)
        future_profile = json.loads((future / "input/profiles/future/main.json").read_text())
        assert future_profile["content"]["raid.bwl.original"]["windows"] == [{"from": "vanilla.3"}]
        assert json.loads((future / "input/selection.json").read_text())["future:main"]["bwl.classic-original"]
        assertions += 1

        missing = case("missing-child", base / "input")
        data = copy.deepcopy(schedule)
        rule(data, "raid.bwl.draconic-for-dummies").pop("raid.bwl.draconic-for-dummies")
        write_json(missing / "schedule.json", data)
        generate(missing)
        for option in OPTIONS:
            target = missing / (option + ".lua")
            target.write_bytes(b"previous output\n")
            result = run(command + ["--phase-example", option, missing / "input", "sod:main", target], succeeds=False)
            assert "missing policy" in result.stderr.lower() and target.read_bytes() == b"previous output\n"
            assertions += 1

        renamed = case("renamed-instance", base / "input")
        data = copy.deepcopy(schedule)
        data["rules"]["blackwing-lair-renamed"] = data["rules"].pop("blackwing-lair")
        write_json(renamed / "schedule.json", data)
        before = fingerprint(renamed / "input")
        generate(renamed, succeeds=False, check=True)
        assert fingerprint(renamed / "input") == before
        generate(renamed)
        assert not (renamed / "input/policies/blackwing-lair.json").exists()
        assert (renamed / "input/policies/blackwing-lair-renamed.json").exists()
        output = renamed / "sod.lua"
        run(command + ["--phase-example", "C", renamed / "input", "sod:main", output])
        assert output.read_bytes() == (generated_outputs / "C/sod-main.lua").read_bytes()
        assertions += 3

        removed = case("removed-replay-slot", base / "input")
        fixture = copy.deepcopy(comparison)
        fixture["replays"].pop("sod:replay")
        fixture["slots"].pop("bwl.rework")
        write_json(removed / "comparison.json", fixture)
        generate(removed)
        assert not (removed / "input/profiles/sod/replay.json").exists()
        assert not (removed / "input/catalogs/sod/replay.json").exists()
        selection = json.loads((removed / "input/selection.json").read_text())
        assert "sod:replay" not in selection and "bwl.rework" not in selection["sod:main"]
        assertions += 3

        foreign = case("foreign-extra", base / "input")
        write_json(foreign / "input/policies/foreign.json", {"$comment": "Human-owned input", "sod:main": {}})
        data = copy.deepcopy(schedule)
        rule(data, "raid.bwl.common")["raid.bwl.common"]["sod"] = "vanilla.6.scepter"
        write_json(foreign / "schedule.json", data)
        before = fingerprint(foreign / "input")
        generate(foreign, succeeds=False)
        assert fingerprint(foreign / "input") == before, "foreign file rejection changed managed output"
        assertions += 1
    print(f"Compact authoring: {assertions} checks passed, including native alias/window/coverage behavior")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--parser", type=Path, required=True)
    parser.add_argument("--launcher", action="append", default=[])
    parser.add_argument("--lua", default="lua5.1")
    parser.add_argument("--input-dir", type=Path, default=HERE / "input")
    parser.add_argument("--schedule", type=Path, default=HERE / "schedule.json")
    parser.add_argument("--comparison", type=Path, default=HERE / "comparison.json")
    parser.add_argument("--baseline-output", type=Path)
    args = parser.parse_args()
    verify_compact(args.launcher + [str(args.parser.resolve())], args.lua, args.input_dir.resolve(),
                   args.schedule.resolve(), args.comparison.resolve(),
                   args.baseline_output.resolve() if args.baseline_output else None)


if __name__ == "__main__":
    main()
