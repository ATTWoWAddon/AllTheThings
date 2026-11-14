#!/usr/bin/env python3
"""Check saved source-set comparisons against their native P1 alternatives."""
import argparse
import copy
import json
import re
from pathlib import Path
import subprocess
import sys
import tempfile

from source_support import PHASE_KEYS, read_p1, select_all
from lua_source import LONG_OPEN, argument_owner, delimiters, ordinary_tokens, phase_calls, tokens
from source_sets import EVOLUTION, HERE, entries

sys.path.insert(0, str(EVOLUTION.parent))
import prepare


EXPECTED_WRITERS = {
    ("blackwing-lair", "standard"): 2, ("blackwing-lair", "sod"): 4,
    ("blackrock-depths", "standard"): 50, ("blackrock-depths", "sod"): 136,
    ("demon-fall-canyon", "sod"): 3,
    ("dire-maul", "standard"): 11, ("dire-maul", "sod"): 55,
    ("temple-of-ahnqiraj", "standard"): 3, ("temple-of-ahnqiraj", "sod"): 4,
    ("gnomeregan", "standard"): 0, ("gnomeregan", "sod"): 5,
}


class PolicyCatalog:
    """Resolve complete-source policies without adding them to compact output."""
    ## @brief Validate compact and full-source rules and check reviewed timing assumptions.
    # @param schedule Reviewed compact and full-source rule document.
    def __init__(self, schedule):
        prepare.compile_inputs(schedule, prepare.read_json(EVOLUTION.parent / "comparison.json"))
        self.calendars = prepare.calendars_for(schedule["calendars"])
        self.rules = {}
        for section in ("rules", "fullSourceRules"):
            for group in schedule[section].values():
                for key, value in group.items():
                    assert key not in self.rules, f"Duplicate full-source policy: {key}"
                    self.rules[key] = value
        self.full_only = {key for group in schedule["fullSourceRules"].values() for key in group}
        explicit = {
            "brd.sod-phase-three-additions": {"sod": "vanilla.3"},
            "brd.sod-phase-four-additions": {"sod": "vanilla.4"},
            "dire-maul.sod-phase-four-additions": {"sod": "vanilla.4"},
            "dire-maul.ironwood-branch": {"sod": "vanilla.7"},
        }
        assert set(explicit) <= self.full_only, "Missing explicit full-source policies"
        for key in self.full_only:
            assert self.rules[key] == explicit.get(key, "unknown"), f"Unreviewed full-source timing: {key}"
        # Validate applicable aliases even if a particular version branch omits
        # their record; an alias must never activate another flavor's policy.
        for flavor in self.calendars:
            applicable = {key for key, value in self.rules.items()
                          if prepare.for_flavor(value, flavor) is not prepare.MISSING}
            self.resolve(applicable, flavor)

    ## @brief Resolve the requested policy keys for a flavor, preserving Retail’s empty schedule.
    # @param flavor Flavor whose applicability and calendar determine expanded policies.
    # @param keys Requested unqualified policy-key set; every key must exist in the catalog.
    # @return Expanded policies for exactly the requested keys; Retail returns an empty map.
    def resolve(self, keys, flavor):
        assert keys <= self.rules.keys(), f"Missing full-source policies: {keys - self.rules.keys()}"
        if flavor == "retail":
            return {}
        resolved, visiting = {}, set()
        ## @brief Resolve an applicable alias and reject missing or cyclic references.
        # @param key Applicable policy key to resolve through sameAs aliases.
        # @return Expanded status/windows policy after resolving applicable aliases.
        def visit(key):
            assert key in self.rules and key not in visiting, f"Missing or cyclic full-source alias: {flavor}:{key}"
            if key in resolved:
                return resolved[key]
            visiting.add(key)
            value = prepare.for_flavor(self.rules[key], flavor)
            assert value is not prepare.MISSING, f"Inapplicable full-source policy: {flavor}:{key}"
            if isinstance(value, dict) and "sameAs" in value:
                value = visit(value["sameAs"])
            else:
                value = prepare.policy(value, self.calendars[flavor], flavor + ":" + key)
            visiting.remove(key)
            resolved[key] = value
            return value
        return {key: visit(key) for key in sorted(keys)}


## @brief Find actual direct phase assignments while ignoring strings and comments.
# @param source Selected Lua source whose real code tokens and owners are inspected.
# @return Character offsets of actual direct phase field assignments.
def direct_phase_fields(source):
    """Find authored phase fields without reading comments/strings as code."""
    stream = tokens(source)
    fields = []
    for i, token in enumerate(stream):
        equals = None
        if token.text == "phase" and i + 1 < len(stream) and stream[i + 1].text == "=":
            equals = i + 1
        elif (token.text in ('"phase"', "'phase'") and i > 0 and stream[i - 1].text == "["
              and i + 2 < len(stream) and stream[i + 1].text == "]" and stream[i + 2].text == "="):
            equals = i + 2
        if equals is not None and equals + 1 < len(stream) and stream[equals + 1].text != "=":
            fields.append(token.start)
    return fields


## @brief Find retired flavor directives only in Lua line comments.
# @param source Selected Lua source whose real code tokens and owners are inspected.
# @return Character offsets of real line-comment SoD/ANYCLASSIC directives.
def flavor_directives(source):
    """Only actual line comments can carry retired flavor directives."""
    found, i = [], 0
    while i < len(source):
        if source.startswith("--", i):
            opening = LONG_OPEN.match(source, i + 2)
            if opening:
                close = "]" + opening.group(1) + "]"
                end = source.find(close, opening.end())
                assert end >= 0, "Unterminated long comment"
                i = end + len(close)
                continue
            end = source.find("\n", i)
            if end < 0: end = len(source)
            start = source.rfind("\n", 0, i) + 1
            directive = re.match(r"--\s*#(?:if|elseif)\b(.*)", source[i:end], re.I)
            if (not source[start:i].strip() and directive and
                    re.search(r"\b(?:SEASON_OF_DISCOVERY|ANYCLASSIC)\b", directive.group(1), re.I)):
                found.append(i)
            i = end
            continue
        opening = LONG_OPEN.match(source, i)
        if opening:
            close = "]" + opening.group(1) + "]"
            end = source.find(close, opening.end())
            assert end >= 0, "Unterminated long string"
            i = end + len(close)
        elif source[i] in "\"'":
            quote = source[i]
            i += 1
            while i < len(source) and source[i] != quote:
                i += 2 if source[i] == "\\" else 1
            assert i < len(source), "Unterminated string"
            i += 1
        else:
            i += 1
    return found


## @brief Map token delimiters, parent expressions and enclosing tables.
# @param source Selected Lua source whose real code tokens and owners are inspected.
# @return Tokens, delimiter pairs, parent indices and nearest enclosing tables.
def lexical_layout(source):
    stream = tokens(source)
    ends = delimiters(stream)
    stack, parents, table = [], {}, {}
    for i, token in enumerate(stream):
        if stack:
            parents[i] = stack[-1]
        table[i] = next((j for j in reversed(stack) if stream[j].text == "{"), None)
        if i in ends:
            stack.append(i)
        elif token.text in (")", "}", "]"):
            stack.pop()
    return stream, ends, parents, table


## @brief Classify a legacy writer’s source owner, including instance and inherited-list wrappers.
# @param call Phase-call tuple: phase, prefix start, argument start/end and call end.
# @param layout Token stream, delimiter pairs, parent indices and containing-table mapping.
# @param source Selected Lua source whose real code tokens and owners are inspected.
# @return Owner kind, constructor and ID spelling for this actual writer.
def call_owner(source, call, layout):
    _, start, begin, end, _ = call
    stream, ends, parents, _ = layout
    index = next(i for i, token in enumerate(stream) if token.start == start)
    parent = parents.get(index)
    if (source[begin] == "{" and parent is not None and stream[parent].text == "("
            and parent > 0 and stream[parent - 1].text in ("instanceroot", "n")):
        constructor = stream[parent - 1].text
        first = parent + 1
        comma = next(i for i in range(first, len(stream)) if stream[i].text == ",")
        identity = "".join(token.text for token in stream[first:comma])
        if constructor == "instanceroot":
            assert identity.isdigit(), "Instance wrapper identity changed"
            return "instance-record", constructor, identity
        if identity == "QUESTS":
            return "inherited-list", constructor, identity
    return argument_owner(" ".join(ordinary_tokens(source[begin:end])))


## @brief Locate literal progression keys and their enclosing table spans.
# @param layout Token stream, delimiter pairs, parent indices and containing-table mapping.
# @param source Selected Lua source whose real code tokens and owners are inspected.
# @return Enclosing table start/end, literal key and owner-token tuples.
def authored_scopes(source, layout):
    stream, ends, _, tables = layout
    scopes = []
    for i, token in enumerate(stream):
        if token.text != "progressionKey":
            continue
        assert [t.text for t in stream[i + 1:i + 2]] == ["="], "Invalid progression key field"
        value = stream[i + 2].text
        assert re.fullmatch(r'"[a-z0-9._-]+"', value), "Progression keys must remain literal policy names"
        owner = tables[i]
        assert owner is not None, "Progression key has no record/list owner"
        scopes.append((stream[owner].start, stream[ends[owner]].end, value[1:-1], owner))
    return scopes


## @brief Find keys enclosing a writer or attached directly to its argument owner.
# @param call Phase-call tuple: phase, prefix start, argument start/end and call end.
# @param layout Token stream, delimiter pairs, parent indices and containing-table mapping.
# @param scopes Authored scope spans and keys returned by authored_scopes().
# @param source Selected Lua source whose real code tokens and owners are inspected.
# @return Scope keys enclosing the writer or attached directly to its argument owner.
def writer_keys(source, call, layout, scopes):
    """Keys enclosing the writer, or directly authored on its argument owner."""
    _, start, begin, end, _ = call
    stream, ends, parents, _ = layout
    relevant = {key for first, last, key, _ in scopes if first < start < last}
    argument = [i for i, token in enumerate(stream) if begin <= token.start < end]
    first = argument[0]
    table = None
    if stream[first].text == "{":
        table = first
        # A phase-wrapped one-instance list owns its key on the inst record.
        if first + 2 < len(stream) and stream[first + 1].text == "inst" and stream[first + 2].text == "(":
            opening = first + 2
            table = next(i for i in range(opening + 1, ends[opening])
                         if stream[i].text == "{" and parents[i] == opening)
    elif first + 1 < len(stream) and stream[first + 1].text == "(":
        opening = first + 1
        table = next((i for i in range(opening + 1, ends[opening])
                      if stream[i].text == "{" and parents[i] == opening), None)
    relevant.update(key for _, _, key, owner in scopes if owner == table)
    return relevant



## @brief Map each native writer to its reviewed key, including owner-specific exceptions.
# @param alternative Native standard or sod source alternative.
# @param case_name Reviewed instance case owning this legacy writer.
# @param constructor Actual owner shortcut used to distinguish child-specific exceptions.
# @param identity Owner ID spelling; phase constants alone do not identify an owner.
# @param phase Actual legacy phase constant from the writer.
# @return Reviewed key for the complete owner tuple, including child exceptions.
# @details Two owners sharing a legacy phase constant may require different keys. Match the full case/alternative/phase/constructor/identity tuple before using a phase-wide mapping.
def expected_writer_key(case_name, alternative, phase, constructor, identity):
    # These three child exceptions have independent keys even when another
    # owner shares the same phase constant. Never classify by phase alone.
    exceptions = {
        ("blackrock-depths", "sod", "SOD_PHASE_THREE", "i", "223539"): "brd.enthralled-sphere",
        ("blackrock-depths", "sod", "SOD_PHASE_FOUR", "i", "227948"): "brd.angerforge-axe",
        ("dire-maul", "standard", "PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS", "n_conditional", "16097"): "dire-maul.isalien",
        ("dire-maul", "sod", "PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS", "n_conditional", "16097"): "dire-maul.isalien",
    }
    owner = case_name, alternative, phase, constructor, identity
    if owner in exceptions:
        return exceptions[owner]
    if case_name == "blackwing-lair":
        return {"PHASE_THREE": "raid.bwl.common", "PHASE_FIVE": "raid.bwl.draconic-for-dummies",
                "SOD_PHASE_FIVE": "raid.bwl.sod20"}[phase]
    return PHASE_KEYS[case_name][phase]


## @brief Verify writer coverage, stage ownership and policy applicability across source alternatives.
def check_complete_contract():
    catalog = PolicyCatalog(prepare.read_json(EVOLUTION.parent / "schedule.json"))
    all_keys, writer_total, p4_total = set(), 0, 0
    for case_name, alternative, _ in entries():
        case = EVOLUTION / case_name
        original = read_p1(case / "p1" / (alternative + ".lua"))
        calls = phase_calls(original)
        assert not direct_phase_fields(original), f"Uncovered native direct phase writer: {case_name}:{alternative}"
        expected = EXPECTED_WRITERS[case_name, alternative]
        coverage_document = prepare.read_json(case / "coverage.json")
        coverage = (coverage_document["owners"] if case_name == "demon-fall-canyon"
                    else coverage_document["alternatives"][alternative])
        assert len(calls) == len(coverage) == expected, f"Native writer coverage count: {case_name}:{alternative}"
        layout = lexical_layout(original)
        for row, call in zip(coverage, calls):
            phase, start, _, _, _ = call
            kind, constructor, identity = call_owner(original, call, layout)
            actual = (original.count("\n", 0, start) + 1, phase, kind, constructor, identity)
            recorded = tuple(row[name] for name in ("line", "phase", "kind", "constructor", "identity"))
            assert recorded == actual, f"Coverage owner changed: {case_name}:{alternative}:{row} != {actual}"
            assert row["key"] in catalog.rules, f"Missing writer policy: {row}"
            assert row["key"] == expected_writer_key(case_name, alternative, phase, constructor, identity), f"Wrong writer-to-policy mapping: {case_name}:{alternative}:{row}"
        writer_total += len(calls)
        annotated = []
        for stage in ("p2.1", "p2.2", "p3"):
            source = read_p1(case / stage / (alternative + ".lua"))
            annotated.append(source.partition("\n")[2])
            stage_calls = phase_calls(source)
            stage_layout = lexical_layout(source)
            scopes = authored_scopes(source, stage_layout)
            assert len(stage_calls) == len(calls), f"Legacy writer lost before P4: {case_name}:{alternative}:{stage}"
            for row, call, expected_call in zip(coverage, stage_calls, calls):
                assert call[0] == expected_call[0], f"Legacy phase changed: {case_name}:{alternative}:{stage}"
                assert call_owner(source, call, stage_layout) == call_owner(original, expected_call, layout), f"Phase owner changed in {case_name}:{alternative}:{stage}"
                assert row["key"] in writer_keys(source, call, stage_layout, scopes), f"Policy key detached from writer: {case_name}:{alternative}:{stage}:{row}"
        assert annotated[0] == annotated[1] == annotated[2], f"P2/P3 ordinary source differs: {case_name}:{alternative}"
        for flavor in (("classic", "retail") if alternative == "standard" else ("sod",)):
            source = read_p1(case / "p4" / (flavor + ".lua"))
            p4_total += 1
            assert not phase_calls(source) and not direct_phase_fields(source), f"Retired phase writer remains: {case_name}:{flavor}"
            assert not flavor_directives(source), f"Retired flavor pragma remains: {case_name}:{flavor}"
            keys = {key for _, _, key, _ in authored_scopes(source, lexical_layout(source))}
            all_keys.update(keys)
            profiles = ("progression", "anniversary", "era") if flavor == "classic" else (flavor,)
            for profile in profiles:
                resolved = catalog.resolve(keys, profile)
                assert set(resolved) == (set() if profile == "retail" else keys), f"Full policy coverage: {case_name}:{profile}"
        print(f"{case_name} {alternative}: {len(calls)} native writers and all staged key owners covered")
    assert all_keys >= catalog.full_only, f"Unused complete-source policies: {catalog.full_only - all_keys}"
    assert p4_total == 16, "All selected P4 source alternatives must be checked"
    print(f"Complete policy catalog and {writer_total} native writer mappings passed; unknown policies remain unresolved")
    print(f"All {p4_total} P4 source inputs have no legacy phase writers, direct phase fields or flavor pragmas")



## @brief Check rejection of unreviewed timing, invalid aliases and descendant-only keys.
def check_rejected_contracts():
    schedule = prepare.read_json(EVOLUTION.parent / "schedule.json")
    changed_unknown = copy.deepcopy(schedule)
    changed_unknown["fullSourceRules"]["blackrock-depths"]["brd.enchants"] = "vanilla.3"
    missing_alias = copy.deepcopy(schedule)
    missing_alias["rules"]["blackwing-lair"]["raid.bwl.sod20"] = {"sod": {"sameAs": "missing.policy"}}
    cyclic_alias = copy.deepcopy(schedule)
    cyclic_alias["rules"]["blackwing-lair"]["raid.bwl.sod20"] = {"sod": {"sameAs": "raid.bwl.sod20"}}
    for label, invalid in (("unreviewed known timing", changed_unknown),
                           ("missing alias", missing_alias), ("cyclic alias", cyclic_alias)):
        try:
            PolicyCatalog(invalid)
        except (AssertionError, ValueError):
            pass
        else:
            raise AssertionError("Accepted " + label)
    descendant = 'applyclassicphase(PHASE_THREE, i(9, { groups = { { progressionKey = "child", groups = { i(10) } } } }))'
    layout = lexical_layout(descendant)
    assert "child" not in writer_keys(descendant, phase_calls(descendant)[0], layout, authored_scopes(descendant, layout)), "A child's key cannot cover its parent's writer"


## @brief Exercise lexical safeguards against misleading comments, strings and nested lists.
def check_lexical_guards():
    assert len(direct_phase_fields('return { phase = 1, ["phase"] = 2 }')) == 2
    assert not direct_phase_fields('-- phase = 1\nlocal text = [=[phase = 2]=]\nif obj.phase == 1 then end')
    assert len(flavor_directives('-- #if SEASON_OF_DISCOVERY\nreturn {}\n-- #endif')) == 1
    assert len(flavor_directives('-- #if BEFORE WRATH AND SEASON_OF_DISCOVERY\nreturn {}\n-- #endif')) == 1
    assert not flavor_directives('local text = [=[\n-- #if SEASON_OF_DISCOVERY\n]=]\n--[=[\n-- #if ANYCLASSIC\n]=]')
    assert argument_owner('{ ["itemID"] = 22734, classes = { PRIEST } }') == ('record', 'itemID', '22734')
    assert ordinary_tokens('return { { progressionKey = "x", groups = { { itemID = 1 } } } }') == ordinary_tokens('return { { itemID = 1 } }')
    assert ordinary_tokens('return { { progressionKey = "x", groups = { { i(1) } } } }') != ordinary_tokens('return { i(1) }'), "A nested list cannot disappear"
    assert ordinary_tokens('i(1, { timeline = { "added 1.0" } })') != ordinary_tokens('i(1, { timeline = { "added 2.0" } })'), "Ordinary conditions cannot disappear"
    lf_source = 'return { OnTooltip = [[first line\nsecond line]] }\n'
    assert ordinary_tokens(lf_source) != ordinary_tokens(lf_source.replace('second line', 'changed line')), "Long-string contents cannot disappear"



LUA_CHECK = r'''
assert(_VERSION == "Lua 5.1")
local seen = {}
local env = setmetatable({}, { __index =
    ---Resolve unrelated fixture constants to a harmless placeholder.
    ---@return integer
    function() return 0 end })
---Pass through the payload while ignoring legacy phase timing.
---@param _ any
---@param value any
---@return any
env.applyclassicphase = function(_, value) return value end
for _, name in ipairs({"n", "i", "q", "recipe"}) do
    ---Record constructor identity and normalize array children into groups.
    ---@param id integer
    ---@param value table|nil
    ---@return table
    env[name] = function(id, value)
        value = value or {}
        if #value > 0 then
            value.groups = value.groups or {}
            for _, child in ipairs(value) do table.insert(value.groups, child) end
        end
        value.__kind, value.__id = name, id
        return value
    end
end
---Capture the expected instance root for scope traversal.
---@param id integer
---@param value table
env.instanceroot = function(id, value)
    assert(id == 2784)
    env.result = value
end
local chunk = assert(loadfile(arg[1]))
setfenv(chunk, env)
chunk()
---Accumulate inherited progression keys for selected source records.
---@param node any
---@param scopes table<string, boolean>
local function visit(node, scopes)
    if type(node) ~= "table" then return end
    local current = {}
    for key, value in pairs(scopes) do current[key] = value end
    if node.progressionKey then current[node.progressionKey] = true end
    if node.__id == 235787 or node.__id == 232632 or node.__id == 226923 then
        seen[node.__id] = current
    end
    if node.groups then
        for _, child in ipairs(node.groups) do visit(child, current) end
    end
end
visit(env.result, {})
assert(seen[235787]["dfc.dungeon"] and seen[235787]["dfc.ironwood-branch"])
assert(seen[232632]["dfc.dungeon"] and seen[232632]["dfc.azgaloth"])
assert(seen[226923]["dfc.dungeon"] and not seen[226923]["dfc.ironwood-branch"])
'''


## @brief Extract effective scope paths for a selected item from the source fixture.
# @param identity Owner ID spelling; phase constants alone do not identify an owner.
# @param source Selected Lua source whose real code tokens and owners are inspected.
# @return One inherited key path per matching item occurrence; repeated IDs remain separate.
# @details This lexical check follows actual owner ancestry and keeps each acquisition occurrence independent; it does not merge sources by item ID.
def item_scopes(source, identity):
    """Inspect lexical owner ancestry in the actual selected source snapshot."""
    stream = tokens(source)
    ends = delimiters(stream)
    stack, keys, found = [], {}, []
    for index, token in enumerate(stream):
        while stack and ends[stack[-1]] < index:
            stack.pop()
        if token.text == "progressionKey" and stream[index + 1].text == "=":
            owner = next((item for item in reversed(stack) if stream[item].text == "{"), None)
            assert owner is not None
            keys[owner] = stream[index + 2].text.strip("\"'")
        if (token.text == "i" and index + 3 < len(stream) and stream[index + 1].text == "("
                and stream[index + 2].text == str(identity) and stream[index + 3].text in (",", ")")):
            found.append([keys[item] for item in stack if item in keys])
        if index in ends:
            stack.append(index)
    return found


## @brief Verify generated full-source sets, preservation and policy coverage.
def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--lua", default="lua5.1")
    args = parser.parse_args()
    for script in ("source_sets.py", "generate_sets.py"):
        subprocess.run([sys.executable, HERE / script, "--check"], check=True)
    check_lexical_guards()
    check_rejected_contracts()
    check_complete_contract()
    for case_name, alternatives in (("demon-fall-canyon", ("sod",)),
                                    ("blackrock-depths", ("standard", "sod")),
                                    ("dire-maul", ("standard", "sod")),
                                    ("gnomeregan", ("standard", "sod")),
                                    ("temple-of-ahnqiraj", ("standard", "sod")),
                                    ("blackwing-lair", ("standard", "sod"))):
        case_path = EVOLUTION / case_name
        for alternative in alternatives:
            for stage in ("p2.1", "p2.2", "p3"):
                directory = case_path / stage
                control = json.loads((directory / (alternative + ".migration.json")).read_text())
                assert control["cohorts"] == [{"id": "comparison-fixture-" + case_name,
                                               "stage": stage.upper(), "sources": [alternative + ".lua"]}]
                assert (directory / control["cohorts"][0]["sources"][0]).is_file()
        selection = json.loads((case_path / "p4/selection.json").read_text())
        for context, selected in (("retail", "retail.lua"), ("progression:main", "classic.lua"),
                                  ("anniversary:main", "classic.lua"), ("era:main", "classic.lua"),
                                  ("sod:main", "sod.lua")):
            expected = None if case_name == "demon-fall-canyon" and context != "sod:main" else selected
            assert selection[context] == {case_name: expected}
            if expected is not None:
                assert (case_path / "p4" / expected).is_file()
    owners = (
        ("blackrock-depths", "sod", 11934, [["brd.dungeon", "brd.second-half"]]),
        ("demon-fall-canyon", "sod", 231913, [["dfc.dungeon", "dfc.azgaloth"]]),
        ("dire-maul", "sod", 22315, [["dire-maul.common", "dire-maul.isalien"]]),
        ("temple-of-ahnqiraj", "sod", 21221, [["aq40.common", "aq40.original"], ["aq40.common", "aq40.reworked"]]),
        ("temple-of-ahnqiraj", "sod", 21126, [["aq40.common", "aq40.original"]]),
        ("temple-of-ahnqiraj", "sod", 233634, [["aq40.common", "aq40.reworked"]]),
        ("gnomeregan", "sod", 9449, [["gnomeregan.dungeon"]]),
        ("gnomeregan", "sod", 213410, [["gnomeregan.raid10"]]),
        ("blackwing-lair", "sod", 19002, [["raid.bwl.common", "raid.bwl.original"], ["raid.bwl.common", "raid.bwl.sod20"]]),
        ("blackwing-lair", "sod", 19364, [["raid.bwl.common", "raid.bwl.original"]]),
        ("blackwing-lair", "sod", 230818, [["raid.bwl.common", "raid.bwl.sod20"]]),
        ("blackwing-lair", "classic", 19002, [["raid.bwl.common", "raid.bwl.original"]]),
    )
    for case_name, flavor, identity, expected in owners:
        alternative = "sod" if flavor == "sod" else "standard"
        for stage in ("p2.1", "p2.2", "p3", "p4"):
            filename = flavor + ".lua" if stage == "p4" else alternative + ".lua"
            source = (EVOLUTION / case_name / stage / filename).read_text(encoding="utf-8")
            actual = item_scopes(select_all(source, (1, 15, 3), flavor), identity)
            assert actual == expected, f"Owner routes changed: {case_name} {stage} {identity}: {actual}"
    case = EVOLUTION / "demon-fall-canyon"
    original = read_p1(case / "p1/sod.lua")
    with tempfile.TemporaryDirectory(prefix="att-phase-source-sets-") as directory:
        check = Path(directory) / "check.lua"
        check.write_text(LUA_CHECK, encoding="utf-8")
        for stage in ("p2.1", "p2.2", "p3", "p4"):
            path = case / stage / "sod.lua"
            source = path.read_text(encoding="utf-8")
            assert ordinary_tokens(source) == ordinary_tokens(original), f"Changed ordinary source: {path}"
            if stage == "p4":
                assert not phase_calls(source), f"Legacy phase writer remains: {path}"
            subprocess.run([args.lua, check, path], check=True)
        versions = ((1, 13, 4), (1, 13, 5), (1, 15, 3), (2, 0, 1), (3, 0, 2),
                    (4, 0, 3), (4, 3, 0), (5, 2, 0), (6, 0, 2), (7, 0, 3),
                    (7, 3, 2), (7, 3, 5), (8, 0, 0), (9, 0, 0), (10, 1, 7), (12, 0, 0))
        for case_name in ("blackrock-depths", "dire-maul", "gnomeregan", "temple-of-ahnqiraj", "blackwing-lair"):
            dual = EVOLUTION / case_name
            for alternative in ("standard", "sod"):
                original = read_p1(dual / "p1" / (alternative + ".lua"))
                stages = [(stage, (dual / stage / (alternative + ".lua")).read_text(encoding="utf-8"))
                          for stage in ("p2.1", "p2.2", "p3")]
                assert stages[0][1].split("\n", 1)[1] == stages[1][1].split("\n", 1)[1] == stages[2][1].split("\n", 1)[1]
                for flavor in (("classic", "retail") if alternative == "standard" else ("sod",)):
                    p4 = (dual / "p4" / (flavor + ".lua")).read_text(encoding="utf-8")
                    assert not phase_calls(p4), f"Legacy writer remains: {case_name} {flavor}"
                    for version in versions:
                        expected = ordinary_tokens(select_all(original, version, flavor))
                        for name, source in stages + [("p4", p4)]:
                            selected = select_all(source, version, flavor)
                            assert ordinary_tokens(selected) == expected, f"Changed source: {case_name} {alternative} {name} {flavor} {version}"
                            selected_path = Path(directory) / "selected.lua"
                            selected_path.write_text(selected, encoding="utf-8")
                            subprocess.run([args.lua, "-e", "assert(_VERSION == 'Lua 5.1'); assert(loadfile(" + json.dumps(str(selected_path)) + "))"], check=True)
    print("Demon Fall Canyon: actual source tokens and inherited owners passed")
    print("Five dual-source cases: native alternatives preserved across branches")


if __name__ == "__main__":
    main()
