#!/usr/bin/env python3
"""Run a bounded current-source BWL projection through the existing example API.

This executes current owner spines and retained ordinary metadata, not the full
production source loader. Complete-source preservation is verified separately.
"""
import argparse
import hashlib
import json
import re
from pathlib import Path
import subprocess
import tempfile

from lua_source import delimiters, tokens
from source_support import select_all

HERE = Path(__file__).resolve().parent
EXAMPLES = HERE.parents[1]
BWL = HERE.parent / 'blackwing-lair'
REPO = EXAMPLES.parents[1]
ITEMS = {19002, 19003, 19364, 230818}
FIELDS = {'progressionKey', 'groups', 'g', 'crs', 'races', 'timeline', 'provider',
          'sourceQuest', 'sharedLockout', 'isRaid', 'lvl'}
CALLS = {'instanceroot', 'applyclassicphase', 'd', 'e',
         'bubbleDownTimelineEventSelf', 'i'}


class Projection:
    """Prune unrelated records while retaining selected current owner expressions."""
    ## @brief Tokenize selected source and identify the BWL items retained in the projection.
    # @param source Flavor/client-selected current BWL source, kept for verbatim item extraction.
    def __init__(self, source):
        self.source = source
        self.stream = tokens(source)
        self.ends = delimiters(self.stream)
        self.selected = {i for i in range(len(self.stream) - 3)
                         if self.stream[i].text == 'i' and self.stream[i + 1].text == '('
                         and self.stream[i + 2].text.isdigit()
                         and int(self.stream[i + 2].text) in ITEMS
                         and self.stream[i + 3].text in (',', ')')}
        self.retained = []

    ## @brief Return the original source span covered by the token range.
    # @param end Exclusive token index within the projection source.
    # @param start Inclusive token index within the projection source.
    # @return Exact original characters covering the half-open token range.
    def raw(self, start, end):
        return self.source[self.stream[start].start:self.stream[end - 1].end]

    ## @brief Check whether a token range contains a selected item occurrence.
    # @param end Exclusive token index within the projection source.
    # @param start Inclusive token index within the projection source.
    # @return Whether any selected item constructor begins inside the token range.
    def contains(self, start, end):
        return any(start <= index < end for index in self.selected)

    ## @brief Yield top-level comma- or semicolon-separated entries in a token range.
    # @param end Exclusive token index within the projection source.
    # @param start Inclusive token index within the projection source.
    # @return Iterator of half-open token ranges separated only at the current nesting level.
    def entries(self, start, end):
        index = start
        while index < end:
            first = index
            while index < end and self.stream[index].text not in (',', ';'):
                index = self.ends[index] + 1 if index in self.ends else index + 1
            if first < index:
                yield first, index
            index += 1

    ## @brief Retain relevant metadata fields and descendants leading to selected items.
    # @param end Exclusive token index within the projection source.
    # @param start Inclusive token index within the projection source.
    # @return Rebuilt table retaining supported metadata and selected descendant owner spines.
    def table(self, start, end):
        rows = []
        for first, last in self.entries(start + 1, end - 1):
            field = self.stream[first].text if first + 1 < last and self.stream[first + 1].text == '=' else None
            if field is not None:
                if field not in FIELDS:
                    continue
                if field in ('groups', 'g'):
                    if self.contains(first + 2, last):
                        rows.append(field + ' = ' + self.expression(first + 2, last))
                else:
                    rows.append(self.raw(first, last))
            elif self.contains(first, last):
                rows.append(self.expression(first, last))
        return '{\n' + ',\n'.join(rows) + '\n}'

    ## @brief Retain selected owner calls and preserve complete item calls verbatim.
    # @param end Exclusive token index within the projection source.
    # @param start Inclusive token index within the projection source.
    # @return Projected owner expression, with complete selected item calls copied verbatim.
    def expression(self, start, end):
        if self.stream[start].text == '{':
            assert self.ends[start] + 1 == end, 'Unexpected table suffix'
            return self.table(start, end)
        name = self.stream[start].text
        assert name in CALLS and self.stream[start + 1].text == '(', f'Unsupported selected owner: {name}'
        assert self.ends[start + 1] + 1 == end, f'Unexpected owner suffix: {name}'
        self.retained.append({'constructor': name, 'offset': self.stream[start].start,
                              'endOffset': self.stream[end - 1].end})
        if start in self.selected:
            # The complete item call, including ordinary race/metadata fields,
            # remains verbatim from the selected current snapshot.
            return self.raw(start, end)
        arguments = []
        for first, last in self.entries(start + 2, end - 1):
            arguments.append(self.expression(first, last) if self.contains(first, last) else self.raw(first, last))
        return name + '(' + ',\n'.join(arguments) + ')'

    ## @brief Project the unique current BWL root and validate selected item occurrences.
    # @return Bounded Lua owner-projection source with a provenance banner.
    def run(self):
        roots = [i for i in range(len(self.stream) - 3)
                 if [token.text for token in self.stream[i:i + 4]] == ['instanceroot', '(', '742', ',']]
        assert len(roots) == 1, 'Current standalone BWL must have one instanceroot(742)'
        root = roots[0]
        result = self.expression(root, self.ends[root + 1] + 1)
        assert len(self.selected) == 6, 'Expected two current head pairs and two distinct swords'
        assert all(self.stream[index].start >= self.stream[root].start for index in self.selected)
        return '-- Bounded current standalone BWL owner projection; not a complete P1.\n' + result + '\n'


## @brief Read expected metadata and item tokens from the hash-verified canonical source.
# @return Independent canonical metadata/provenance plus selected item token lists.
# @details Expected race/timeline constants are read independently from the canonical repository inputs at the selected Vanilla SoD view, rather than copied from the projection environment.
def canonical_metadata():
    """Read independent expected fields directly from the selected canonical input."""
    catalog = json.loads((HERE / 'sources.json').read_text(encoding='utf-8'))
    entry = next(row for row in catalog['sources'] if row['case'] == 'blackwing-lair' and row['alternative'] == 'sod')
    canonical = REPO / entry['source']
    assert hashlib.sha256(canonical.read_bytes()).hexdigest() == entry['sha256'], 'Canonical source no longer matches its pinned provenance'
    source = select_all(canonical.read_text(encoding='utf-8'), (1, 15, 3), 'sod')
    stream = tokens(source)
    ends = delimiters(stream)
    shared = REPO / '.contrib/.db/shared'
    race_file = shared / 'constants/raceIDs.lua'
    race_source = race_file.read_text(encoding='utf-8')
    constants = {name: int(value) for name, value in re.findall(r'^(\w+)\s*=\s*(-?\d+)\s*;', race_source, re.M)}
    # At this explicitly selected Vanilla SoD version, TBC-and-later and
    # FOREVER race additions are inactive. Do not reuse the projection's values.
    for name in ('ALLIANCE_ONLY', 'HORDE_ONLY'):
        body = re.search(r'^' + name + r'\s*=\s*\{(.*?)^\};', race_source, re.M | re.S).group(1)
        depth, values = 0, []
        for line in body.splitlines():
            directive = re.match(r'\s*--\s*#(if|elseif|else|endif)\s*(.*)', line, re.I)
            if directive:
                kind, expression = directive.group(1).lower(), directive.group(2).strip()
                if kind == 'if':
                    if depth == 0: assert expression in ('AFTER TBC', 'FOREVER'), 'Unknown Vanilla race boundary'
                    depth += 1
                elif kind == 'endif': depth -= 1
                else: raise AssertionError('Unsupported Vanilla race alternative: ' + line)
            elif depth == 0 and (match := re.match(r'\s*(\w+)\s*,', line)):
                values.append(constants[match.group(1)])
        assert depth == 0
        constants[name] = values
    timeline_file = shared / 'lib/Constants/Timelines.lua'
    constants.update({name: json.loads(value) for name, value in re.findall(r'^(\w+)\s*=\s*("[^"\n]*")\s*;', timeline_file.read_text(encoding='utf-8'), re.M)})

    ## @brief Locate selected constructor calls in the canonical token stream.
    # @param identity Numeric ID expected in the canonical constructor call.
    # @param name Supported constructor or field name to locate.
    # @return Token indices of constructor calls with the exact expected ID.
    def calls(name, identity):
        return [i for i in range(len(stream) - 3) if [token.text for token in stream[i:i + 4]] == [name, '(', str(identity), ','] or
                (name == 'i' and [token.text for token in stream[i:i + 4]] == [name, '(', str(identity), ')'])]

    ## @brief Locate a named field value within a canonical table.
    # @param name Supported constructor or field name to locate.
    # @param table Opening table-token index in the canonical stream.
    # @return Value-token index of the named direct field; missing fields raise AssertionError.
    def field(table, name):
        index = table + 1
        while index < ends[table]:
            if stream[index].text == name and stream[index + 1].text == '=':
                return index + 2
            index = ends[index] + 1 if index in ends else index + 1
        raise AssertionError('Missing canonical field: ' + name)

    ## @brief Decode supported canonical metadata literals using independently read constants.
    # @param index First token of a supported canonical metadata literal.
    # @return Supported integer, string, list or independently resolved constant value.
    def literal(index):
        value = stream[index].text
        if value == '{':
            result, cursor = [], index + 1
            while cursor < ends[index]:
                result.append(literal(cursor))
                cursor = ends[cursor] + 1 if cursor in ends else cursor + 1
                if stream[cursor].text == ',': cursor += 1
            return result
        if value.startswith('"'): return json.loads(value)
        if value.isdigit(): return int(value)
        assert value in constants, 'Unsupported canonical metadata literal: ' + value
        return constants[value]

    root = calls('instanceroot', 742)[0]
    root_table = next(i for i in range(root, ends[root + 1]) if stream[i].text == '{')
    heads = calls('i', 19002)
    assert len(heads) == 2
    original_table = next(i for i in range(heads[0], ends[heads[0] + 1]) if stream[i].text == '{')
    encounter = next(i for i in calls('e', 1536) if i < heads[0] < ends[i + 1])
    encounter_table = next(i for i in range(encounter, ends[encounter + 1]) if stream[i].text == '{')
    bubble = next(i for i in range(heads[0]) if stream[i].text == 'bubbleDownTimelineEventSelf' and i + 1 in ends and heads[0] < ends[i + 1])
    expected = {
        'rootProvider': literal(field(root_table, 'provider')),
        'rootTimeline': literal(field(root_table, 'timeline')),
        'rootSourceQuest': literal(field(root_table, 'sourceQuest')),
        'originalRaces': literal(field(original_table, 'races')),
        'originalTimeline': literal(bubble + 2),
        'encounterCrs': literal(field(encounter_table, 'crs')),
    }
    leaves = [tuple(token.text for token in stream[i:ends[i + 1] + 1]) for identity in sorted(ITEMS) for i in calls('i', identity)]
    metadata = {'source': entry['source'], 'sha256': hashlib.sha256(canonical.read_bytes()).hexdigest(),
                'sourceCommit': catalog['sourceCommit'], 'fields': expected,
                'raceConstantsSHA256': hashlib.sha256(race_file.read_bytes()).hexdigest(),
                'timelineConstantsSHA256': hashlib.sha256(timeline_file.read_bytes()).hexdigest()}
    return metadata, leaves


## @brief Serialize supported expected metadata values as Lua literals.
# @param value String, integer, list or string-keyed map of expected metadata.
# @return Lua literal text for the expected metadata subset.
def lua_literal(value):
    if isinstance(value, str): return json.dumps(value, ensure_ascii=False)
    if isinstance(value, list): return '{' + ','.join(lua_literal(item) for item in value) + '}'
    if isinstance(value, dict): return '{' + ','.join('[' + lua_literal(key) + ']=' + lua_literal(item) for key, item in value.items()) + '}'
    return str(value)


## @brief Run a subprocess and assert success or the requested rejection diagnostic.
# @param command Executable and argument tokens for the verification subprocess.
# @param rejected Required stderr fragment for a rejected command; None requires success.
# @return Captured subprocess stdout after the required success or rejection check.
def run(command, *, rejected=None):
    result = subprocess.run([str(value) for value in command], capture_output=True, text=True)
    if rejected is not None:
        assert result.returncode != 0 and rejected in result.stderr, f'Expected metadata rejection: {command}\n{result.stderr}'
    else:
        assert result.returncode == 0, f'{command}\n{result.stdout}\n{result.stderr}'
    return result.stdout


CHECK = r'''
assert(_VERSION == 'Lua 5.1')
local evaluate = dofile(arg[1])
local data = dofile(arg[2])
local expected = dofile(arg[3])
---Compare canonical metadata recursively without depending on table identity.
---@param a any
---@param b any
---@return boolean
local function equal(a, b)
    if type(a) ~= type(b) then return false end
    if type(a) ~= 'table' then return a == b end
    for key, value in pairs(a) do if not equal(value, b[key]) then return false end end
    for key in pairs(b) do if a[key] == nil then return false end end
    return true
end
assert(data.groups[1].instanceID == 742)
assert(equal(data.groups[1].provider, expected.rootProvider), 'canonical root provider changed')
assert(equal(data.groups[1].timeline, expected.rootTimeline), 'canonical root timeline changed')
assert(data.groups[1].sourceQuest == expected.rootSourceQuest, 'canonical ordinary prerequisite changed')
---Find the projected routes for an item at a milestone.
---@param id integer
---@param milestone string
---@return table
local function route(id, milestone)
    return evaluate.find(data, {itemID=id}, milestone,
        ---Ignore ordinary conditions when checking progression schedules.
        ---@return boolean
        function() return true end)
end
local heads = route(19002, 'vanilla.5')
assert(#heads.routes == 2, 'current Horde head must have two distinct routes')
local original, rework
for _, item in ipairs(heads.routes) do
    if item.schedule == 'disabled' then original = item else rework = item end
end
assert(original and rework and rework.schedule == 'active')
assert(#original.scopeStates == 2 and #rework.scopeStates == 2, 'current parent and route scopes must both apply')
assert(route(19364, 'vanilla.5').routes[1].schedule == 'disabled')
assert(route(230818, 'vanilla.4').routes[1].schedule == 'future')
assert(route(230818, 'vanilla.5').obtainable)
local found = {}
---Collect target items by inherited difficulty and check encounter sources.
---@param node table
---@param difficulty integer|nil
local function visit(node, difficulty)
    difficulty = node.difficultyID or difficulty
    if node.encounterID == 1536 then assert(equal(node.crs, expected.encounterCrs), 'canonical encounter sources changed') end
    if node.itemID == 19002 then
        -- Each selected head is below a retained original or reworked difficulty owner.
        ---@cast difficulty integer
        found[difficulty] = node
    end
    for _, child in ipairs(node.groups or {}) do visit(child, difficulty) end
end
visit(data.groups[1])
assert(found[9] and found[201], 'actual current difficulty owner spines must survive')
assert(equal(found[9].races, expected.originalRaces) and not found[201].races, 'canonical Horde restriction must stay on the original route only')
assert(found[9].timeline and found[9].timeline[1] == expected.originalTimeline, 'ordinary removal metadata must survive the projection')
print('Current standalone BWL: two head routes, distinct swords, additive keys and ordinary metadata passed')
'''


## @brief Compare bounded stage projections and Parser output with canonical metadata.
def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--parser', type=Path, required=True)
    parser.add_argument('--launcher', action='append', default=[])
    parser.add_argument('--lua', default='lua5.1')
    parser.add_argument('--output', type=Path)
    args = parser.parse_args()
    run([args.lua, '-e', "assert(_VERSION == 'Lua 5.1')"])
    with tempfile.TemporaryDirectory(prefix='att-current-bwl-') as temporary:
        output = args.output.resolve() if args.output else Path(temporary)
        output.mkdir(parents=True, exist_ok=True)
        projections, results, sources = {}, {}, []
        expected, canonical_leaves = canonical_metadata()
        expected_file = output / 'canonical-metadata.lua'
        expected_file.write_text('return ' + lua_literal(expected['fields']) + '\n', encoding='utf-8')
        for stage in ('p2.2', 'p3', 'p4'):
            source_file = BWL / stage / 'sod.lua'
            raw = source_file.read_bytes()
            source = select_all(raw.decode('utf-8').replace('\r\n', '\n'), (1, 15, 3), 'sod')
            projection = Projection(source)
            stage_leaves = [tuple(token.text for token in projection.stream[i:projection.ends[i + 1] + 1])
                            for identity in sorted(ITEMS) for i in sorted(projection.selected)
                            if projection.stream[i + 2].text == str(identity)]
            assert stage_leaves == canonical_leaves, 'Selected complete item calls differ from canonical current source'
            directory = output / stage
            directory.mkdir(parents=True, exist_ok=True)
            bounded = directory / 'current-owner-spines.lua'
            bounded.write_text(projection.run(), encoding='utf-8')
            projected = directory / 'sources.lua'
            run([args.lua, HERE / 'project-current-bwl.lua', bounded, projected])
            profiles = directory / 'profiles/sod'
            profiles.mkdir(parents=True, exist_ok=True)
            policy = json.loads((EXAMPLES / 'input/profiles/sod/main.json').read_text(encoding='utf-8'))
            policy['content'] = {key: policy['content'][key] for key in
                                 ('raid.bwl.common', 'raid.bwl.original', 'raid.bwl.sod20')}
            (profiles / 'main.json').write_text(json.dumps(policy, indent=2) + '\n', encoding='utf-8')
            compiled = directory / 'compiled.lua'
            run(args.launcher + [args.parser.resolve(), '--phase-example', 'A', directory, 'sod:main', compiled])
            projections[stage], results[stage] = projected.read_bytes(), compiled.read_bytes()
            sources.append({'stage': stage, 'source': source_file.relative_to(EXAMPLES).as_posix(),
                            'sourceSHA256': hashlib.sha256(raw).hexdigest(), 'selectedVersion': [1, 15, 3],
                            'retainedOwners': projection.retained})
        assert projections['p2.2'] == projections['p3'] == projections['p4'], 'Current stage projections differ'
        assert results['p2.2'] == results['p3'] == results['p4'], 'Current Parser stage outputs differ'
        check = output / 'check-current.lua'
        check.write_text(CHECK, encoding='utf-8')
        print(run([args.lua, check, EXAMPLES / 'evaluate.lua', output / 'p4/compiled.lua', expected_file]).strip())
        damaged = output / 'missing-ordinary-race.lua'
        damaged.write_text('local data = dofile(' + json.dumps(str(output / 'p4/compiled.lua'), ensure_ascii=False) + ')\n' +
                           '---Remove the target item race restriction recursively.\n---@param node table\nlocal function visit(node) if node.itemID == 19002 then node.races = nil end; for _, child in ipairs(node.groups or {}) do visit(child) end end\n' +
                           'visit(data.groups[1]); return data\n', encoding='utf-8')
        run([args.lua, check, EXAMPLES / 'evaluate.lua', damaged, expected_file], rejected='canonical Horde restriction')
        print('Canonical metadata loss rejection passed; this is a bounded example-API result, not a full production parse')
        (output / 'current-source.json').write_text(json.dumps({
            'kind': 'bounded current-source Parser example regression; not full production execution',
            'sourceManifest': 'evolution/full-source/sources.json', 'sources': sources,
            'canonicalMetadata': expected, 'offsetBasis': 'Unicode characters in LF-normalized selected-version source',
            'parserSHA256': hashlib.sha256(args.parser.read_bytes()).hexdigest(),
            'launcher': args.launcher,
        }, indent=2) + '\n', encoding='utf-8')


if __name__ == '__main__':
    main()
