#!/usr/bin/env python3
"""Validate complete-source specimens, legacy owner coverage and Lua syntax."""
import json
from pathlib import Path
import re
import subprocess
import sys
import tempfile
import generate
from lua_source import argument_owner, ordinary_tokens, phase_calls

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE.parent.parent))
import prepare


def select_all(text, version, flavor):
    versions = {'TBC':(2,0,1), 'WRATH':(3,0,2), 'CATA':(4,0,3), 'MOP':(5,0,0),
                'WOD':(6,0,2), 'LEGION':(7,0,3), 'BFA':(8,0,0), 'SL':(9,0,0), 'MID':(12,0,0)}
    def test(expr):
        if expr == 'SEASON_OF_DISCOVERY': return flavor == 'sod'
        if expr == 'NOT SEASON_OF_DISCOVERY': return flavor != 'sod'
        if expr == 'ANYCLASSIC': return flavor != 'retail'
        match = re.fullmatch(r'(BEFORE|AFTER) ([A-Z0-9.]+)', expr)
        assert match, f'unsupported full source condition: {expr}'
        name = match.group(2)
        boundary = versions.get(name)
        if boundary is None:
            assert re.fullmatch(r'\d+\.\d+\.\d+', name), f'unknown version: {name}'
            boundary = tuple(map(int, name.split('.')))
        return version < boundary if match.group(1) == 'BEFORE' else version >= boundary
    active, stack, out = True, [], []
    for line in text.splitlines(keepends=True):
        m = re.fullmatch(r'\s*--\s*#(if|elseif|else|endif)\s*(.*?)\s*', line, re.I)
        if not m:
            if active: out.append(line)
            continue
        cmd, expr = m.group(1).lower(), m.group(2).upper()
        if cmd == 'if':
            matched = test(expr)
            stack.append([active, matched])
            active = active and matched
        elif cmd == 'elseif':
            assert stack
            parent, used = stack[-1]
            matched = test(expr)
            active = parent and not used and matched
            stack[-1][1] = used or matched
        elif cmd == 'else':
            assert stack and not expr
            parent, used = stack[-1]
            active = parent and not used
            stack[-1][1] = True
        else:
            assert stack and not expr
            active = stack.pop()[0]
    assert not stack
    return ''.join(out)


def main():
    import argparse
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--lua', default='lua5.1')
    args = parser.parse_args()
    subprocess.run([sys.executable, HERE/'generate.py', '--check'], check=True)
    schedule = prepare.read_json(HERE.parent.parent/'schedule.json')
    # Validate duplicates, rule shape and compact-profile compatibility using
    # the same reader as prepare.py. Extras still do not enter compact output.
    prepare.compile_inputs(schedule, prepare.read_json(HERE.parent.parent/'comparison.json'))
    known = {}
    for section in ('rules', 'fullSourceRules'):
        for instance, entries in schedule[section].items():
            if instance == '$comment': continue
            for key, policy in entries.items():
                if key == '$comment': continue
                assert key not in known
                known[key] = policy
    full_only = {key for instance, entries in schedule['fullSourceRules'].items()
                 if instance != '$comment' for key in entries if key != '$comment'}
    source_keys = set()
    explicit = {
        'brd.sod-phase-three-additions': {'sod': 'vanilla.3'},
        'brd.sod-phase-four-additions': {'sod': 'vanilla.4'},
        'dire-maul.sod-phase-four-additions': {'sod': 'vanilla.4'},
        'dire-maul.ironwood-branch': {'sod': 'vanilla.7'},
    }
    assert set(explicit) <= full_only, 'Missing explicit full-source policies'
    for key in full_only:
        assert known[key] == explicit.get(key, 'unknown'), f'unreviewed timing: {key}'
    calendars = prepare.calendars_for(schedule['calendars'])
    def compiled_policies(keys, flavor):
        """Resolve only keys actually present in this complete selected input."""
        if flavor == 'retail': return {}
        cache, visiting = {}, set()
        def resolve(key):
            assert key in known and key not in visiting, f'Missing or cyclic full-source policy: {flavor}:{key}'
            if key in cache: return cache[key]
            visiting.add(key)
            value = prepare.for_flavor(known[key], flavor)
            assert value is not prepare.MISSING, f'Missing applicable policy: {flavor}:{key}'
            if isinstance(value, dict) and 'sameAs' in value:
                value = resolve(value['sameAs'])
            else:
                value = prepare.policy(value, calendars[flavor], flavor + ':' + key)
            visiting.remove(key)
            cache[key] = value
            return value
        return {key: resolve(key) for key in sorted(keys)}
    # Guard the indexed-record/list distinction and lexical preservation check.
    assert argument_owner('{ ["itemID"] = 22734, classes = { PRIEST } }') == ('record', 'itemID', '22734')
    assert ordinary_tokens('return { { progressionKey = "x", groups = { i(1) } }, i(2) }') == ordinary_tokens('return { i(1), i(2) }')
    assert ordinary_tokens('return { { progressionKey = "x", groups = { i(1), } }, i(2) }') == ordinary_tokens('return { i(1), i(2) }')
    assert ordinary_tokens('return { { progressionKey = "x", groups = { { itemID = 1 } } } }') == ordinary_tokens('return { { itemID = 1 } }')
    assert ordinary_tokens('return { { progressionKey = "x", groups = { { i(1) } } } }') != ordinary_tokens('return { i(1) }'), 'A nested list must not disappear during preservation checks'
    assert ordinary_tokens('i(1, { timeline = { "added 1.0" } })') != ordinary_tokens('i(1, { timeline = { "added 2.0" } })'), 'Ordinary conditions must remain part of preservation checks'
    contexts = ('retail', 'classic', 'sod')
    versions = ((1,13,4),(1,13,5),(1,15,3),(2,0,1),(3,0,2),(4,0,3),(4,3,0),
                (5,2,0),(6,0,2),(7,0,3),(7,3,2),(7,3,5),(8,0,0),(9,0,0),(10,1,7),(12,0,0))
    with tempfile.TemporaryDirectory(prefix='att-full-sources-') as tmp:
        subprocess.run([args.lua, '-e', "assert(_VERSION == 'Lua 5.1')"], check=True)
        for case, filename in generate.CASES.items():
            p1 = HERE.parent/'p1'/filename
            original = generate.read_p1(p1)
            production = HERE.parents[2]/'.db/standard/01 - Dungeons Raids/01 - Classic'/filename
            assert p1.read_bytes().partition(b'\n')[2] == production.read_bytes(), f'Raw P1 payload changed: {case}'
            coverage = prepare.read_json(HERE.parent/case/'coverage.json')['owners']
            assert len(coverage) == len(phase_calls(original)) == generate.COUNTS[case]
            for row, (phase, start, begin, end, _) in zip(coverage, phase_calls(original)):
                kind, constructor, identity = argument_owner(original[begin:end])
                assert (row['line'], row['phase'], row['kind'], row['constructor'], row['identity']) == (
                    original.count('\n', 0, start) + 1, phase, kind, constructor, identity), f'Coverage owner changed: {case}:{row}'
                assert row['key'] in known, row
                source_keys.add(row['key'])
            snapshots = [(HERE.parent/case/stage/filename).read_bytes() for stage in ('p2.1','p2.2','p3')]
            assert snapshots[0] == snapshots[1] == snapshots[2], f'P2/P3 source changed: {case}'
            # Read the file being delivered; do not prove preservation by
            # replaying the generator's own stored inverse edit operations.
            actual_p2 = snapshots[0].decode('utf-8')
            for flavor in contexts:
                if case == 'demon-fall-canyon' and flavor != 'sod': continue
                snapshot = (HERE.parent/case/'p4'/(flavor+'.lua')).read_text(encoding='utf-8')
                assert not phase_calls(snapshot), case
                assert not re.search(r'--\s*#(?:if|elseif)\s+(?:NOT\s+)?(?:SEASON_OF_DISCOVERY|ANYCLASSIC)\b', snapshot, re.I), case
                keys = set(re.findall(r'\bprogressionKey\s*=\s*"([a-z0-9._-]+)"', snapshot))
                source_keys.update(keys)
                for profile in (('progression', 'anniversary', 'era') if flavor == 'classic' else (flavor,)):
                    policies = compiled_policies(keys, profile)
                    assert set(policies) == (set() if profile == 'retail' else keys), f'Full policy coverage: {case}:{profile}'
                for version in versions:
                    expected = ordinary_tokens(select_all(original, version, flavor))
                    for name, source in (('P1',original),('P2',actual_p2),('P4',snapshot)):
                        selected = select_all(source, version, flavor)
                        assert ordinary_tokens(selected) == expected, f'Ordinary source tokens changed: {case} {flavor} {version} {name}'
                        path = Path(tmp)/'source.lua'
                        path.write_text(selected, encoding='utf-8')
                        process = subprocess.run([args.lua, '-e', f'assert(loadfile({json.dumps(str(path))}))'], capture_output=True, text=True)
                        assert process.returncode == 0, f'{case} {flavor} {version} {name}: {process.stderr}'
            print(case, len(coverage), 'owners covered; actual snapshot preservation and branch syntax passed')
    assert source_keys >= full_only, f'unused full-source policies: {full_only - source_keys}'
    print('Full source checks passed; unknown policies remain unresolved')

if __name__ == '__main__': main()
