#!/usr/bin/env python3
"""Comparison tooling: full BWL snapshots plus a secondary focused Nefarian sample.

The canonical P1 payload is the entire current production file. A BWL-specific
legacy projection removes the anonymous authoring scope and annotations.
Separately, the focused P2.2 shadow /
P3 progress comparison suppresses old phase writers and executes its actual SoD
records with external policy. Neither is an independent legacy golden rerun.
"""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import tempfile

HERE = Path(__file__).resolve().parent
KIT = HERE / "nefarian"
FROZEN_PROFILES = KIT / "p4/profiles"
REPO = HERE.parents[3]
SOURCE = REPO / ".contrib/.db/standard/01 - Dungeons Raids/01 - Classic/1.6 Blackwing Lair.lua"
LEGACY_REFERENCE = REPO / "db/VanillaSOD/Categories/Instances.lua"
EVALUATOR = HERE.parents[1] / "evaluate.lua"
PIN = "6f7b562aad5d78ffbc0d608e9627932d90272827"
STAGES = ("p1", "p2.1", "p2.2", "p3", "p4")
FLAVORS = ("progression", "anniversary", "era", "sod")
SOURCE_RANGES = ((45, 46), (54, 54), (57, 57), (62, 62), (148, 151), (416, 421),
                 (431, 433), (441, 441), (479, 485), (1055, 1060), (1062, 1062),
                 (1087, 1087), (1099, 1100), (1139, 1144))
ANNOTATION = re.compile(r'^\s*(progressionKey\s*=\s*"(raid\.bwl\.(?:common|original|sod20|draconic-for-dummies))"|flavors\s*=\s*\{\s*"sod"\s*\})\s*,\s*(?:--.*)?$')


def run(command):
    subprocess.run([str(part) for part in command], check=True)


def source_body(raw):
    lines = raw.splitlines()
    start = next(index for index, line in enumerate(lines) if line.startswith(b"root("))
    return lines[start:]


def json_object(pairs):
    result = {}
    for key, value in pairs:
        assert key not in result, f"duplicate JSON field: {key}"
        result[key] = value
    if "$comment" in result:
        assert isinstance(result.pop("$comment"), str), "$comment must be a string"
    return result


def read_json(path):
    return json.loads(path.read_text(encoding="utf-8"), object_pairs_hook=json_object)


def selected(text, sod):
    active, stack, result = True, [], []
    for line in text.splitlines():
        directive = re.fullmatch(r'\s*--\s*#(if|endif)\s*(.*?)\s*', line, re.IGNORECASE)
        if directive:
            command, expression = directive.group(1).lower(), directive.group(2)
            if command == "if":
                assert expression == "SEASON_OF_DISCOVERY", f"unsupported condition: {expression}"
                stack.append(active)
                active = active and sod
            else:
                assert not expression and stack, "unbalanced #endif"
                active = stack.pop()
        elif active:
            result.append(line)
    assert not stack, "unclosed #if"
    return "\n".join(result) + "\n"


def select_full_source(text, version, classic, sod):
    """Select only directives used by the full BWL snapshots; reject others."""
    versions = {"WRATH": (3, 0, 0), "CATA": (4, 0, 3), "WOD": (6, 0, 0),
                "LEGION": (7, 0, 0), "BFA": (8, 0, 0),
                "4.0.3": (4, 0, 3), "7.2.0": (7, 2, 0)}
    def condition(expr):
        if expr == "SEASON_OF_DISCOVERY": return sod
        if expr == "ANYCLASSIC": return classic
        match = re.fullmatch(r'(BEFORE|AFTER) ([A-Z0-9.]+)', expr)
        assert match and match.group(2) in versions, f"unknown directive: {expr}"
        boundary = versions[match.group(2)]
        return version < boundary if match.group(1) == "BEFORE" else version >= boundary
    active, stack, result = True, [], []
    for line in text.splitlines():
        directive = re.fullmatch(r'\s*--\s*#(if|elseif|else|endif)\s*(.*?)\s*', line, re.IGNORECASE)
        if not directive:
            if active: result.append(line)
            continue
        command, expr = directive.group(1).lower(), directive.group(2).upper()
        if command == "if":
            matched = condition(expr)
            stack.append([active, matched])
            active = active and matched
        elif command == "elseif":
            assert stack
            matched = condition(expr)
            parent, used = stack[-1]
            active = parent and not used and matched
            stack[-1][1] = used or matched
        elif command == "else":
            assert stack and not expr
            parent, used = stack[-1]
            active = parent and not used
            stack[-1][1] = True
        else:
            assert stack and not expr
            active = stack.pop()[0]
    assert not stack, "unclosed directive"
    return "\n".join(result) + "\n"



def canonical_payload(stage):
    path = HERE / stage / "1.6 Blackwing Lair.lua"
    raw = path.read_bytes()
    header, newline, payload = raw.partition(b"\n")
    assert newline and header.startswith(b"--"), f"{stage}: one first-line role/stage header required"
    if stage == "p1":
        assert b"1.6 Blackwing Lair.lua" in header, "P1: source path missing from header"
    return payload


def expected_manifest(stage, names):
    return {"schema": 1, "defaultStage": "P1", "cohorts": [{
        "id": "comparison-fixture-blackwing-lair", "sources": names, "stage": stage,
    }]}


def project_legacy_source(annotated):
    """Undo this BWL fixture's annotations; this is not a general Parser projection."""
    # Undo only the one inserted anonymous scope and the exact conditional
    # split around the original/reworked boundary before comparing to P1.
    ending = b"\r\n" if b"\r\n" in annotated else b"\n"
    opening = ending.join((b'\t\t\t-- Anonymous authoring scope; projection keeps its children flat.', b'\t\t\t{', b'\t\t\t\tprogressionKey = "raid.bwl.original",', b'\t\t\t\tgroups = {', b''))
    closing = ending.join((b'\t\t\t\t},', b'\t\t\t},', b''))
    assert annotated.count(opening) == annotated.count(closing) == 1, "scope delimiters changed"
    before, remainder = annotated.split(opening, 1)
    body, after = remainder.split(closing, 1)
    lines = body.splitlines(keepends=True)
    assert all(not line.strip() or line.startswith(b'\t\t') for line in lines), "scope indentation changed"
    body = b''.join(line[2:] if line.strip() else line for line in lines)
    boundary_end = b'\t\t\t-- #endif' + ending
    boundary_start = b'\t\t\t-- #if SEASON_OF_DISCOVERY' + ending
    assert body.endswith(boundary_end) and after.startswith(boundary_start), "scope boundary changed"
    without_scope = before + body[:-len(boundary_end)] + after[len(boundary_start):]
    original_lines = []
    annotations = []
    for line in without_scope.splitlines(keepends=True):
        match = ANNOTATION.fullmatch(line.decode().rstrip("\r\n"))
        if match:
            annotations.append(match.group(1))
        else:
            original_lines.append(line)
    assert sorted(annotations) == sorted([
        'progressionKey = "raid.bwl.common"',
        'progressionKey = "raid.bwl.draconic-for-dummies"',
        'progressionKey = "raid.bwl.sod20"', 'flavors = { "sod" }',
    ]), "unexpected annotations in legacy projection"
    return b"".join(original_lines)


def check_canonical_authoring():
    production = SOURCE.read_bytes()
    assert canonical_payload("p1") == production, "full P1 payload must equal the entire current production file"
    for name in ("Blackrock Depths.lua", "Demon Fall Canyon.lua", "Dire Maul.lua",
                 "2.6 Temple of Ahn'Qiraj.lua", "Gnomeregan.lua"):
        snapshot = (HERE.parent / "p1" / name).read_bytes()
        header, newline, body = snapshot.partition(b"\n")
        assert newline and header.startswith(b"--") and name.encode() in header
        assert body == (SOURCE.parent / name).read_bytes(), f"full P1 differs from production: {name}"
    annotated = canonical_payload("p2.1")
    assert project_legacy_source(annotated) == production, "BWL legacy projection differs from P1"
    keys = set(re.findall(rb'progressionKey\s*=\s*"(raid\.bwl\.[a-z0-9.-]+)"', annotated))
    keys = {key.decode() for key in keys}
    applicability = annotated.count(b'flavors = { "sod" }')
    assert keys == {"raid.bwl.common", "raid.bwl.original", "raid.bwl.sod20", "raid.bwl.draconic-for-dummies"}
    assert applicability >= 1, "full annotated snapshot needs explicit SoD source applicability"
    for stage in ("p2.2", "p3"):
        assert canonical_payload(stage) == annotated, f"full {stage} annotated payload changed"
    assert not (HERE / "p1/migration.json").exists(), "canonical P1 has no migration selection"
    for stage, selection in (("p2.1", "P2.1"), ("p2.2", "P2.2"), ("p3", "P3"), ("p4", "P4")):
        names = ["retail.lua", "classic.lua", "sod.lua"] if stage == "p4" else ["1.6 Blackwing Lair.lua"]
        assert read_json(HERE / stage / "migration.json") == expected_manifest(selection, names), f"canonical manifest: {stage}"
    schedule = read_json(HERE.parents[1] / "schedule.json")
    assert keys <= schedule["rules"]["blackwing-lair"].keys(), "shared schedule must cover the annotated raid"
    assert read_json(HERE / "p4/selection.json") == {
        "retail": {"blackwing-lair": "retail.lua"},
        "progression:main": {"blackwing-lair": "classic.lua"},
        "anniversary:main": {"blackwing-lair": "classic.lua"},
        "era:main": {"blackwing-lair": "classic.lua"},
        "sod:main": {"blackwing-lair": "sod.lua"},
    }, "canonical P4 must explicitly select the complete source before Lua executes"


def check_focused_authoring(sources):
    p1_body = source_body(sources["p1"])
    original = SOURCE.read_bytes().splitlines()
    expected = [original[index - 1] for first, last in SOURCE_RANGES for index in range(first, last + 1)]
    assert p1_body == expected, "focused legacy-form sample must retain the selected source lines, including indentation"
    assert PIN.encode() in sources["p1"], "focused sample must identify its pinned source"
    p21_body = source_body(sources["p2.1"])
    annotations = [ANNOTATION.fullmatch(line.decode()) for line in p21_body]
    matches = [match for match in annotations if match]
    assert len(matches) == 4, "expected only common/original/SoD keys and one SoD flavors annotation"
    assert sorted(match.group(2) for match in matches if match.group(2)) == [
        "raid.bwl.common", "raid.bwl.original", "raid.bwl.sod20"]
    assert sum(match.group(1).startswith("flavors") for match in matches) == 1
    assert [line for line, match in zip(p21_body, annotations) if not match] == p1_body, "P2.1 changes legacy source"
    assert sources["p2.1"] == sources["p2.2"] == sources["p3"], "annotated Lua snapshots must be byte-identical"
    assert not (KIT / "p1/migration.json").exists(), "P1 has no migration selection"
    for stage, selection in (("p2.1", "P2.1"), ("p2.2", "P2.2"), ("p3", "P3"), ("p4", "P4")):
        assert read_json(KIT / stage / "migration.json") == {
            "schema": 1, "defaultStage": "P1", "cohorts": [{
                "id": "comparison-fixture-blackwing-lair", "sources": ["sources.lua"], "stage": selection,
            }],
        }, f"wrong fixture ownership/stage: {stage}"
    expected_profiles = {FROZEN_PROFILES / flavor / "main.json" for flavor in FLAVORS}
    assert set(HERE.rglob("profiles/*/*.json")) == expected_profiles, "keep one frozen set of Nefarian inputs"


ROUTE_CHECKS = '''local evaluate = dofile(arg[1])
local p3, p4 = dofile(arg[2]), dofile(arg[3])
local changed, ordinary = dofile(arg[4]), dofile(arg[5])
local function equal(a, b)
    assert(type(a) == type(b), "route data type changed")
    if type(a) ~= "table" then assert(a == b, "route data changed"); return end
    for k, v in pairs(a) do equal(v, b[k]) end
    for k in pairs(b) do assert(a[k] ~= nil, "route data added") end
end
local function query(data, id, view)
    return evaluate.find(data, {itemID=id}, view, function() return true end)
end
-- Timelines are recursively materialized by the old source helper. Compare
-- their effective route conditions, while preserving exact source data fields.
local function signature(route)
    local result = {path={}, timelines={}, scopes={}}
    local timelines, scopes = {}, {}
    for index, node in ipairs(route.nodes) do
        assert(not node.progressionKey and not node.flavors and not node.phase, "input/timing fields leaked")
        result.path[index] = {}
        for _, field in ipairs({"instanceID", "difficultyID", "encounterID", "itemID", "provider", "crs", "races"}) do
            result.path[index][field] = node[field]
        end
        for _, event in ipairs(node.timeline or {}) do timelines[event] = true end
        for _, scope in ipairs(node.progressionScopes or {}) do scopes[scope] = true end
    end
    for event in pairs(timelines) do result.timelines[#result.timelines+1] = event end
    for scope in pairs(scopes) do result.scopes[#result.scopes+1] = scope end
    table.sort(result.timelines)
    table.sort(result.scopes)
    return result
end
for _, view in ipairs({"vanilla.4", "vanilla.5"}) do
    for _, id in ipairs({19003, 19364, 230818}) do
        local a, b = query(p3, id, view), query(p4, id, view)
        assert(a.obtainable == b.obtainable and #a.routes == #b.routes, "P3/P4 routes differ")
        local count = id == 19003 and 2 or 1
        assert(#a.routes == count, "missing or merged source occurrence")
        local owners = {}
        for index, route in ipairs(a.routes) do
            equal(signature(route), signature(b.routes[index]))
            local original, rework = false, false
            for _, scope in ipairs(signature(route).scopes) do
                if scope == "sod:main:raid.bwl.original" then original = true end
                if scope == "sod:main:raid.bwl.sod20" then rework = true end
            end
            assert(original ~= rework, "exactly one Nefarian owner required")
            local owner = original and "original" or "rework"
            assert(not owners[owner], "duplicate owner route")
            owners[owner] = true
            assert(route.obtainable == (rework and view == "vanilla.5"), "owner timing changed")
            local nodes = route.nodes
            assert(nodes[1].instanceID == 742 and nodes[2].difficultyID == (original and 9 or 201), "history/raid parent lost")
            assert(nodes[3].encounterID == 1536, "encounter identity lost")
            equal(nodes[1].provider, {"o",179879})
            equal(nodes[3].crs, {11583,10162})
            if id == 19003 then
                if original then equal(nodes[4].races, {1,3,4,7}) else assert(nodes[4].races == nil, "invented race gate") end
            end
        end
        if id == 19003 then assert(owners.original and owners.rework, "shared head must keep both sources") end
    end
end
assert(not query(changed, 230818, "vanilla.5").obtainable, "temporary external policy must control the rework")
assert(not query(changed, 19003, "vanilla.5").obtainable, "both complete head routes are now closed")
assert(ordinary.context == "retail" and next(ordinary.policies) == nil and #ordinary.milestones == 0)
for _, id in ipairs({19003,19364}) do
    local result = query(ordinary, id, nil)
    assert(result.obtainable and #result.routes == 1)
    assert(#result.routes[1].nodes == 3, "ordinary Nefarian must stay flat")
    equal(result.routes[1].nodes[3].races, id == 19003 and {1,3,4,7,11,22,25,29,30,32,34,37,52,85,86} or nil)
end
assert(#query(ordinary,230818,nil).routes == 0, "Retail leaked the rework")
for index=6,8 do
    local data = dofile(arg[index])
    for _, view in ipairs({"vanilla.2","vanilla.3"}) do
        for _, id in ipairs({19003,19364}) do
            local result = query(data,id,view)
            assert(result.obtainable == (view == "vanilla.3") and #result.routes == 1)
            assert(#result.routes[1].nodes == 3, "ordinary phased Nefarian must stay flat")
        end
        assert(#query(data,230818,view).routes == 0)
    end
end
print("Actual annotated SoD projection matches P4 loot routes; four profiles and Retail default passed")
'''


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--parser", type=Path, required=True)
    parser.add_argument("--launcher", action="append", default=[])
    parser.add_argument("--lua", default="lua5.1")
    args = parser.parse_args()
    sources = {stage: (KIT / stage / "sources.lua").read_bytes() for stage in STAGES}
    check_canonical_authoring()
    check_focused_authoring(sources)
    reference_hash = hashlib.sha256(LEGACY_REFERENCE.read_bytes()).digest()
    frozen_profiles = {path: path.read_bytes() for path in FROZEN_PROFILES.glob("*/main.json")}
    with tempfile.TemporaryDirectory(prefix="bwl-evolution-") as temporary:
        temp = Path(temporary)
        run([args.lua, "-e", "assert(_VERSION == 'Lua 5.1')"])
        # Check full source syntax after selecting each known branch. These are
        # syntax checks, not execution by the production source loader.
        full = [("p2.1", canonical_payload("p2.1"))] + [
            (flavor, (HERE / "p4" / (flavor + ".lua")).read_bytes())
            for flavor in ("classic", "sod", "retail")]
        for name, raw in full:
            for version in ((1, 15, 0), (3, 0, 0), (4, 0, 3), (6, 0, 0),
                            (7, 0, 0), (7, 2, 0), (8, 0, 0), (12, 0, 0)):
                for classic, sod in ((False, False), (True, False), (True, True)):
                    selected_path = temp / "full-selected.lua"
                    selected_path.write_text(select_full_source(raw.decode("utf-8"), version, classic, sod), encoding="utf-8")
                    run([args.lua, "-e", "assert(loadfile(" + json.dumps(str(selected_path)) + "))"])
        print("Full BWL selected source syntax passed with Lua 5.1")
        selected_sources = {}
        for stage in ("p1", "p2.1", "p2.2", "p3"):
            for sod in (False, True):
                path = temp / f"{stage}-{sod}.lua"
                path.write_text(selected(sources[stage].decode("utf-8"), sod), encoding="utf-8")
                run([args.lua, "-e", "assert(loadfile(" + json.dumps(str(path), ensure_ascii=False) + "))"])
                if sod: selected_sources[stage] = path

        def compile_input(directory, context, output):
            run(args.launcher + [args.parser.resolve(), "--phase-example", "A", directory, context, output])

        projections, progress_outputs = {}, {}
        for stage in ("p2.2", "p3"):
            directory = temp / stage
            directory.mkdir()
            shutil.copytree(FROZEN_PROFILES, directory / "profiles")
            projected = directory / "sources.lua"
            run([args.lua, HERE / "project-sod.lua", selected_sources[stage], projected])
            projections[stage] = projected
            progress_outputs[stage] = temp / f"{stage}-comparison.lua"
            compile_input(directory, "sod:main", progress_outputs[stage])
        assert projections["p2.2"].read_bytes() == projections["p3"].read_bytes(), "same annotated inputs projected differently"
        assert progress_outputs["p2.2"].read_bytes() == progress_outputs["p3"].read_bytes(), "shadow/progress comparisons differ"
        poisoned = temp / "poisoned.lua"
        poisoned.write_text(selected_sources["p3"].read_text().replace("PHASE_THREE", "987654321")
                            .replace("SOD_PHASE_FIVE", "-12345"), encoding="utf-8")
        poisoned_projection = temp / "poisoned-projection.lua"
        run([args.lua, HERE / "project-sod.lua", poisoned, poisoned_projection])
        assert poisoned_projection.read_bytes() == projections["p3"].read_bytes(), "legacy phase values affected the progress projection"

        outputs = {}
        for context in ("sod:main", "retail", "progression:main", "anniversary:main", "era:main"):
            outputs[context] = temp / (context.replace(":", "-") + ".lua")
            compile_input(KIT / "p4", context, outputs[context])
        expected = KIT / "p4/expected-sod.lua"
        assert expected.exists(), "missing generated P4 snapshot"
        generated_bytes = outputs["sod:main"].read_bytes().replace(b"\r\n", b"\n")
        snapshot_bytes = expected.read_bytes().replace(b"\r\n", b"\n")
        assert generated_bytes == snapshot_bytes, "P4 output differs from the generated snapshot"
        changed_input = temp / "changed-policy"
        shutil.copytree(temp / "p3", changed_input)
        changed_policy = changed_input / "profiles/sod/main.json"
        document = read_json(changed_policy)
        document["content"]["raid.bwl.sod20"] = {"status": "disabled", "windows": []}
        changed_policy.write_text(json.dumps(document), encoding="utf-8")
        changed_output = temp / "changed-policy.lua"
        compile_input(changed_input, "sod:main", changed_output)
        check = temp / "check.lua"
        check.write_text(ROUTE_CHECKS, encoding="utf-8")
        run([args.lua, check, EVALUATOR, progress_outputs["p3"], outputs["sod:main"], changed_output,
             outputs["retail"], outputs["progression:main"], outputs["anniversary:main"], outputs["era:main"]])
    assert all(path.read_bytes() == data for path, data in frozen_profiles.items()), "frozen Nefarian profiles changed"
    assert reference_hash == hashlib.sha256(LEGACY_REFERENCE.read_bytes()).digest(), "reviewed legacy reference changed"
    assert sources == {stage: (KIT / stage / "sources.lua").read_bytes() for stage in STAGES}, "source snapshots changed"
    print("BWL evolution: full source snapshot and focused comparison checks passed; legacy reference left unchanged")


if __name__ == "__main__":
    main()
