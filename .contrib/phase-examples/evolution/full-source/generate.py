#!/usr/bin/env python3
"""Generate bounded full-source phase migration specimens from frozen P1 Lua.

This is a comparison adapter, not the production Parser. The phase keys identify
source owners; unknown full-source rules still require independent review.
"""
import json
from pathlib import Path
import re
import sys
from lua_source import argument_owner, phase_calls, tokens

HERE = Path(__file__).resolve().parent
EVOLUTION = HERE.parent
CASES = {
    'blackrock-depths': 'Blackrock Depths.lua',
    'demon-fall-canyon': 'Demon Fall Canyon.lua',
    'dire-maul': 'Dire Maul.lua',
    'temple-of-ahnqiraj': "2.6 Temple of Ahn'Qiraj.lua",
    'gnomeregan': 'Gnomeregan.lua',
}
PHASE_KEYS = {
 'blackrock-depths': {
  'SOD_PHASE_THREE': 'brd.sod-phase-three-additions', 'SOD_PHASE_FOUR': 'brd.sod-phase-four-additions',
  'PHASE_THREE_ENCHANTS': 'brd.enchants', 'PHASE_THREE_RECIPES': 'brd.recipes',
  'PHASE_FOUR_DARKIRON_RECIPES': 'brd.dark-iron-recipes', 'PHASE_THREE_DMF_CARDS': 'brd.darkmoon-cards',
  'PHASE_FIVE': 'brd.later-loot', 'PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS': 'brd.dungeon-set-2',
  'TBC_PHASE_ONE': 'brd.tbc-jewelcrafting', 'TBC_PHASE_FOUR': 'brd.dark-iron-brewer',
 },
 'demon-fall-canyon': {'SOD_PHASE_FOUR':'dfc.dungeon', 'SOD_PHASE_FIVE':'dfc.azgaloth', 'SOD_PHASE_SEVEN':'dfc.ironwood-branch'},
 'dire-maul': {'PHASE_ONE_DIREMAUL':'dire-maul.common', 'PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS':'dire-maul.dungeon-set-2',
  'PHASE_THREE_RECIPES':'dire-maul.recipe-quests', 'PHASE_THREE_DMF_CARDS':'dire-maul.darkmoon-cards',
  'PHASE_FIVE_RECIPES':'dire-maul.later-recipes', 'SOD_PHASE_FOUR':'dire-maul.sod-phase-four-additions',
  'SOD_PHASE_SEVEN':'dire-maul.ironwood-branch', 'TBC_PHASE_ONE':'dire-maul.tbc-pet-training'},
 'temple-of-ahnqiraj': {'PHASE_FIVE':'aq40.common', 'SOD_PHASE_SIX':'aq40.reworked',
  'PHASE_SIX':'aq40.atiesh-base', 'CATA_PHASE_ONE':'aq40.greater-scarab-coffer-key'},
 'gnomeregan': {'SOD_PHASE_TWO':'gnomeregan.raid10'},
}
SPECIAL = {
 ('blackrock-depths', 2613): ('SOD_PHASE_THREE', 'i', '223539', 'brd.enthralled-sphere'),
 ('blackrock-depths', 3036): ('SOD_PHASE_FOUR', 'i', '227948', 'brd.angerforge-axe'),
 ('dire-maul', 1443): ('PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS', 'n_conditional', '16097', 'dire-maul.isalien'),
}
COUNTS = {'blackrock-depths':141, 'demon-fall-canyon':3, 'dire-maul':59, 'temple-of-ahnqiraj':5, 'gnomeregan':5}


def read_p1(path):
    raw = path.read_bytes()
    ending = b'\r\n' if b'\r\n' in raw else b'\n'
    normalized = raw.replace(b'\r\n', b'\n')
    assert normalized.replace(b'\n', ending) == raw, f'mixed source line endings: {path}'
    return normalized.decode('utf-8')


def find_once(text, marker):
    assert text.count(marker) == 1, (marker, text.count(marker))
    return text.index(marker)


def edits_for(case, source, p4):
    calls = phase_calls(source)
    assert len(calls) == COUNTS[case], (case, len(calls))
    edits = []
    coverage = []
    used_special = set()
    child_scopes = []
    for phase, start, begin, end, finish in calls:
        line = source.count('\n', 0, start) + 1  # includes the P1 identification header
        arg = source[begin:end]
        kind, constructor, identity = argument_owner(arg)
        special = SPECIAL.get((case, line))
        if special:
            assert special[:3] == (phase, constructor, identity), f'Override owner changed: {case}:{line}'
            used_special.add((case, line))
        key = special[3] if special else PHASE_KEYS[case][phase]
        if kind == 'list':
            # Keep the array passed to expansion(). Wrapping that argument in
            # a scope would let expansion() turn it into an identified record,
            # moving the instance's opening rule onto the expansion header.
            assert (case, phase, identity) in (
                ('dire-maul', 'PHASE_ONE_DIREMAUL', '230'),
                ('temple-of-ahnqiraj', 'PHASE_FIVE', '744'))
            stream = tokens(arg)
            opening = next(token for token in stream[1:] if token.text == '{')
            where = begin + opening.end
            edits.append((where, where, ' progressionKey = "' + key + '",'))
        else:
            # These envelopes are entries in native child lists. Their child
            # retains its own constructor, ID and ordinary source conditions.
            child_scopes.append((key, start, begin, end, finish))
        if p4:
            edits.append((start, begin, ''))
            edits.append((end, finish, ''))
        coverage.append({'line':line, 'phase':phase, 'key':key,
                         'kind':kind, 'constructor':constructor, 'identity':identity})
    assert used_special == {owner for owner in SPECIAL if owner[0] == case}, f'Unused owner override: {case}'
    # Adjacent siblings with one rule can inherit a single declaration. Never
    # cross a directive, another record, a field or a constructor boundary.
    runs = []
    for child in child_scopes:
        between = source[runs[-1][-1][4]:child[1]] if runs else ''
        adjacent = (runs and runs[-1][-1][4] <= child[1] and
                    runs[-1][-1][0] == child[0] and
                    not re.search(r'--\s*#', between) and
                    [token.text for token in tokens(between)] == [','])
        if adjacent:
            runs[-1].append(child)
        else:
            runs.append([child])
    for run in runs:
        key = run[0][0]
        if len(run) > 1:
            start, finish = run[0][1], run[-1][4]
        else:
            start, finish = run[0][2], run[0][3]
        edits.extend(((start, start, '{ progressionKey = "' + key + '", groups = { '),
                      (finish, finish, ' } }')))
    # Add structural owners without moving individual loot records.
    extra = {
        'blackrock-depths': [('inst(228, {\t-- Blackrock Depths', 'brd.dungeon'),
                             ('e(387, {\t-- Emperor Dagran Thaurissan', 'brd.second-half')],
    }.get(case, [])
    for marker, key in extra:
        where = find_once(source, marker) + len(marker)
        edits.append((where, where, '\n' + re.match(r'\s*', source[source.rfind('\n', 0, where)+1:]).group(0) + '\tprogressionKey = "' + key + '",'))
    # The old acquisition region excludes independent SoD additions and the
    # reworked raid. It is a logical, transparent owner of flat children.
    if case == 'temple-of-ahnqiraj':
        start = find_once(source, '\t\t\tn(QUESTS,\n\t\t\t-- #if SEASON_OF_DISCOVERY')
        marker = '\t\t\t})),\n\t\t\tapplyclassicphase(SOD_PHASE_SIX,'
        end = find_once(source, marker) + len('\t\t\t})),\n')
        edits.extend([(start, start, '\t\t\t{ progressionKey = "aq40.original", groups = {\n'),
                      (end, end, '\t\t\t-- #endif\n\t\t\t} },\n\t\t\t-- #if SEASON_OF_DISCOVERY\n')])
    if case == 'gnomeregan':
        marker = '\t\t\td(DIFFICULTY.DUNGEON.NORMAL, bubbleDownTimelineEventSelf(REMOVED_1_15_1, {'
        start = find_once(source, marker)
        end_marker = '\t\t\t})),\n\t\t\tapplyclassicphase(SOD_PHASE_TWO, d(DIFFICULTY.SOD.PLAYER10,'
        end = find_once(source, end_marker) + len('\t\t\t})),\n')
        # The matrix records preceding this block belong outside the old dungeon.
        edits.extend([(start, start, '\t\t\t-- #endif\n\t\t\t{ progressionKey = "gnomeregan.dungeon", groups = {\n\t\t\t-- #if SEASON_OF_DISCOVERY\n'),
                      (end, end, '\t\t\t-- #endif\n\t\t\t} },\n\t\t\t-- #if SEASON_OF_DISCOVERY\n')])
    # Reverse-position edits preserve offsets even for nested writer calls.
    # Source preservation is checked separately against the actual snapshots.
    for a, b, value in sorted(edits, key=lambda e: (e[0], e[1]), reverse=True):
        source = source[:a] + value + source[b:]
    return source, coverage


def select_flavor(text, flavor):
    """Resolve season/classic guards only; preserve all client-version guards."""
    lines = text.splitlines(keepends=True)
    out, stack = [], []
    active = True
    for line in lines:
        m = re.fullmatch(r'\s*--\s*#(if|elseif|else|endif)\s*(.*?)\s*', line, re.I)
        if not m:
            if active: out.append(line)
            continue
        cmd, expr = m.group(1).lower(), m.group(2).upper()
        known = {'SEASON_OF_DISCOVERY': flavor == 'sod', 'NOT SEASON_OF_DISCOVERY': flavor != 'sod',
                 'ANYCLASSIC': flavor != 'retail'}
        if cmd == 'if':
            if expr in known:
                stack.append(('known', active, known[expr]))
                active = active and known[expr]
            else:
                stack.append(('preserve', active, None))
                if active: out.append(line)
        elif cmd in ('else', 'elseif'):
            assert stack
            mode, parent, matched = stack[-1]
            if mode == 'preserve':
                assert expr not in known, 'mixed flavor/client conditional not supported'
                active = parent
                if active: out.append(line)
            else:
                assert cmd == 'else' and not expr, 'unsupported flavor elseif'
                active = parent and not matched
                stack[-1] = (mode, parent, True)
        else:
            assert stack and not expr
            mode, parent, _ = stack.pop()
            if mode == 'preserve' and parent: out.append(line)
            active = parent
    assert not stack, 'unbalanced flavor guard'
    return ''.join(out)


def main():
    generated = {}
    for case, filename in CASES.items():
        raw = read_p1(EVOLUTION / 'p1' / filename)
        annotated, coverage = edits_for(case, raw, False)
        projected, _ = edits_for(case, raw, True)
        # Strip the identifying P1 line, keeping all underlying native source.
        annotated = annotated.partition('\n')[2]
        projected = projected.partition('\n')[2]
        for stage in ('p2.1','p2.2','p3'):
            generated[case, stage, filename] = ('-- Generated comparison snapshot (P2.1 / P2.2 / P3): complete annotated source.\n'
                '-- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.\n' + annotated)
            manifest = {'schema': 1, 'defaultStage': 'P1', 'cohorts': [{
                'id': 'comparison-fixture-' + case, 'stage': stage.upper(), 'sources': [filename]}]}
            generated[case, stage, 'migration.json'] = json.dumps(manifest, indent=2) + '\n'
        selected_names = ['sod.lua'] if case == 'demon-fall-canyon' else ['retail.lua', 'classic.lua', 'sod.lua']
        manifest = {'schema': 1, 'defaultStage': 'P1', 'cohorts': [{
            'id': 'comparison-fixture-' + case, 'stage': 'P4', 'sources': selected_names}]}
        generated[case, 'p4', 'migration.json'] = json.dumps(manifest, indent=2) + '\n'
        selection = {'$comment': 'Generated comparison selection; choose the complete source before Lua execution.'}
        for context, flavor in [('retail','retail'), ('progression:main','classic'),
                                ('anniversary:main','classic'), ('era:main','classic'), ('sod:main','sod')]:
            selection[context] = {case: None if case == 'demon-fall-canyon' and flavor != 'sod' else flavor + '.lua'}
        generated[case, 'p4', 'selection.json'] = json.dumps(selection, indent=2) + '\n'
        for flavor in ('classic','sod','retail'):
            if case == 'demon-fall-canyon' and flavor != 'sod': continue
            generated[case, 'p4', flavor + '.lua'] = ('-- Generated comparison snapshot (P4): complete ' + flavor + ' source.\n'
                '-- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.\n' + select_flavor(projected, flavor))
        generated[case, 'coverage.json'] = json.dumps({
            '$comment': 'Generated comparison coverage: original P1 line, legacy writer and authoring scope key.',
            'owners': coverage}, indent=2) + '\n'
    if '--check' in sys.argv:
        for parts, content in generated.items():
            path = EVOLUTION.joinpath(*parts)
            assert path.read_text(encoding='utf-8') == content, f'Generated snapshot drift: {path}'
    else:
        for parts, content in generated.items():
            path = EVOLUTION.joinpath(*parts)
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(content, encoding='utf-8', newline='\n')


if __name__ == '__main__': main()
