"""Shared source-preservation helpers for the generated comparisons."""
import re

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

def read_p1(path):
    raw = path.read_bytes()
    ending = b'\r\n' if b'\r\n' in raw else b'\n'
    normalized = raw.replace(b'\r\n', b'\n')
    assert normalized.replace(b'\n', ending) == raw, f'mixed source line endings: {path}'
    return normalized.decode('utf-8')



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


