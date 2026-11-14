#!/usr/bin/env python3
"""Comparison tooling: full BWL snapshots plus a secondary focused Nefarian sample.

The focused Nefarian excerpt is a historical fixture pinned to an earlier
source revision. Its P2.2 shadow / P3 progress comparison suppresses old
phase writers and executes fixture records with external policy. Current full
source sets are checked separately by full-source/verify.py. Neither is an
independent legacy golden rerun.
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
LEGACY_REFERENCE = REPO / "db/VanillaSOD/Categories/Instances.lua"
EVALUATOR = HERE.parents[1] / "evaluate.lua"
PIN = "6f7b562aad5d78ffbc0d608e9627932d90272827"
STAGES = ("p1", "p2.1", "p2.2", "p3", "p4")
FLAVORS = ("progression", "anniversary", "era", "sod")
HISTORICAL_P1_SHA256 = "5a77f5e2c5f6996cc51ecdf666e92d547e5abd2c8533ae82c49e27e4b7f89ba8"
ANNOTATION = re.compile(r'^\s*(progressionKey\s*=\s*"(raid\.bwl\.(?:common|original|sod20|draconic-for-dummies))"|flavors\s*=\s*\{\s*"sod"\s*\})\s*,\s*(?:--.*)?$')


## @brief Run a verification command and fail on a nonzero exit.
# @param command Executable and argument tokens; path-like values are converted to strings.
def run(command):
    subprocess.run([str(part) for part in command], check=True)


## @brief Extract the source body beginning at the root call.
# @param raw Pinned source bytes, including its identifying header.
# @return List of source byte lines beginning at the actual root call.
def source_body(raw):
    lines = raw.splitlines()
    start = next(index for index, line in enumerate(lines) if line.startswith(b"root("))
    return lines[start:]


## @brief Reject duplicate JSON fields and consume a validated documentation comment.
# @param pairs Ordered JSON property pairs supplied by object_pairs_hook.
# @return Unique object fields with a validated reserved $comment consumed.
def json_object(pairs):
    result = {}
    for key, value in pairs:
        assert key not in result, f"duplicate JSON field: {key}"
        result[key] = value
    if "$comment" in result:
        assert isinstance(result.pop("$comment"), str), "$comment must be a string"
    return result


## @brief Read strict JSON using duplicate-key validation.
# @param path UTF-8 JSON fixture path.
# @return Decoded fixture value with duplicate fields rejected.
def read_json(path):
    return json.loads(path.read_text(encoding="utf-8"), object_pairs_hook=json_object)


## @brief Select the supported SoD conditional branch in a focused source fixture.
# @param sod Whether the SoD-only branch is selected.
# @param text Focused source text with only the supported SoD guards.
# @return Selected source with normalized LF line endings and a final newline.
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


## @brief Check pinned P1 bytes, staged annotations and migration ownership.
# @param sources Stage name to raw focused source bytes, including the immutable P1 sample.
def check_focused_authoring(sources):
    p1_body = source_body(sources["p1"])
    normalized = sources["p1"].replace(b"\r\n", b"\n")
    assert hashlib.sha256(normalized).hexdigest() == HISTORICAL_P1_SHA256, "historical focused P1 changed"
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
---Assert recursive equality of the effective route data.
---@param a any
---@param b any
local function equal(a, b)
    assert(type(a) == type(b), "route data type changed")
    if type(a) ~= "table" then assert(a == b, "route data changed"); return end
    for k, v in pairs(a) do equal(v, b[k]) end
    for k in pairs(b) do assert(a[k] ~= nil, "route data added") end
end
---Find all routes for an item at the requested milestone.
---@param data table
---@param id integer
---@param view string|nil Milestone, or nil for the ordinary Retail comparison.
---@return PhaseExampleFindResult
local function query(data, id, view)
    return evaluate.find(data, {itemID=id}, view,
        ---Accept every ordinary condition while comparing progression routes.
        ---@return boolean
        function() return true end)
end
-- Timelines are recursively materialized by the old source helper. Compare
-- their effective route conditions, while preserving exact source data fields.
---Collect stable path fields and deduplicated effective conditions.
---@param route table
---@return table
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


## @brief Compare focused projected and P4 routes without altering frozen fixtures.
def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--parser", type=Path, required=True)
    parser.add_argument("--launcher", action="append", default=[])
    parser.add_argument("--lua", default="lua5.1")
    args = parser.parse_args()
    sources = {stage: (KIT / stage / "sources.lua").read_bytes() for stage in STAGES}
    check_focused_authoring(sources)
    reference_hash = hashlib.sha256(LEGACY_REFERENCE.read_bytes()).digest()
    frozen_profiles = {path: path.read_bytes() for path in FROZEN_PROFILES.glob("*/main.json")}
    with tempfile.TemporaryDirectory(prefix="bwl-evolution-") as temporary:
        temp = Path(temporary)
        run([args.lua, "-e", "assert(_VERSION == 'Lua 5.1')"])
        selected_sources = {}
        for stage in ("p1", "p2.1", "p2.2", "p3"):
            for sod in (False, True):
                path = temp / f"{stage}-{sod}.lua"
                path.write_text(selected(sources[stage].decode("utf-8"), sod), encoding="utf-8")
                run([args.lua, "-e", "assert(loadfile(" + json.dumps(str(path), ensure_ascii=False) + "))"])
                if sod: selected_sources[stage] = path

        ## @brief Compile a temporary example input for one context.
        # @param context Flavor:profile context compiled by the shared Parser command.
        # @param directory Temporary example input directory.
        # @param output Destination for this isolated compiled Lua module.
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
    print("Historical BWL focused comparison checks passed; legacy reference left unchanged")


if __name__ == "__main__":
    main()
