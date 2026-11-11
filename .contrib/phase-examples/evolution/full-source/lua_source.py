"""Bounded lexical operations on the five complete ATT Lua source snapshots.

These operations do not execute Lua or interpret phase policy.  Tokens inside
strings and comments are never treated as code.  Unbalanced syntax fails closed.
"""
from dataclasses import dataclass
import re

LONG_OPEN = re.compile(r'\[(=*)\[')
CODE_TOKEN = re.compile(r'[A-Za-z_][A-Za-z_0-9]*|\d+(?:\.\d+)?')


@dataclass(frozen=True)
class Token:
    text: str
    start: int
    end: int


def tokens(text):
    result = []
    pos = 0
    size = len(text)
    while pos < size:
        c = text[pos]
        if c.isspace():
            pos += 1
            continue
        if text.startswith('--', pos):
            pos += 2
            long = LONG_OPEN.match(text, pos)
            if long:
                close = ']' + long.group(1) + ']'
                end = text.find(close, pos + len(long.group(0)))
                if end < 0: raise ValueError('Unterminated Lua long comment')
                pos = end + len(close)
            else:
                end = text.find('\n', pos)
                pos = size if end < 0 else end
            continue
        long = LONG_OPEN.match(text, pos)
        if long:
            start = pos
            close = ']' + long.group(1) + ']'
            end = text.find(close, pos + len(long.group(0)))
            if end < 0: raise ValueError('Unterminated Lua long string')
            pos = end + len(close)
            result.append(Token(text[start:pos], start, pos))
            continue
        if c in "\"'":
            start = pos
            pos += 1
            while pos < size and text[pos] != c:
                if text[pos] == '\\': pos += 1
                pos += 1
            if pos >= size: raise ValueError('Unterminated Lua string')
            pos += 1
            result.append(Token(text[start:pos], start, pos))
            continue
        match = CODE_TOKEN.match(text, pos)
        end = match.end() if match else pos + 1
        result.append(Token(text[pos:end], pos, end))
        pos = end
    return result


def phase_calls(text):
    """Return (phase, prefix start, argument start, argument end, call end)."""
    stream = tokens(text)
    calls = []
    pairs = {'(': ')', '{': '}', '[': ']'}
    for index, tok in enumerate(stream):
        if tok.text != 'applyclassicphase': continue
        head = stream[index:index + 4]
        if len(head) < 4 or head[1].text != '(' or head[3].text != ',':
            raise ValueError(f'Unsupported phase call at {tok.start}')
        phase = head[2].text
        if not re.fullmatch(r'[A-Z][A-Z0-9_]*', phase):
            raise ValueError(f'Invalid phase name: {phase}')
        begin = index + 4
        if begin >= len(stream): raise ValueError('Missing phase argument')
        stack = []
        end = None
        for candidate in stream[begin:]:
            if candidate.text in pairs:
                stack.append(pairs[candidate.text])
            elif candidate.text in (')', '}', ']'):
                if not stack:
                    if candidate.text != ')': raise ValueError('Unmatched delimiter')
                    end = candidate
                    break
                if stack.pop() != candidate.text: raise ValueError('Mismatched delimiter')
        if end is None: raise ValueError('Unclosed phase call')
        arg_start = stream[begin].start
        arg_end = end.start
        while arg_end > arg_start and text[arg_end - 1].isspace(): arg_end -= 1
        calls.append((phase, tok.start, arg_start, arg_end, end.end))
    return calls


def delimiters(stream):
    """Match lexical delimiters without treating strings or comments as code."""
    stack, result = [], {}
    pairs = {'(': ')', '{': '}', '[': ']'}
    for index, token in enumerate(stream):
        if token.text in pairs:
            stack.append((index, pairs[token.text]))
        elif token.text in (')', '}', ']'):
            if not stack or stack[-1][1] != token.text:
                raise ValueError('Unbalanced Lua delimiters')
            opening, _ = stack.pop()
            result[opening] = index
    if stack: raise ValueError('Unclosed Lua delimiter')
    return result


def argument_owner(text):
    """Classify only the argument forms present in the frozen five sources."""
    stream = tokens(text)
    ends = delimiters(stream)
    if not stream: raise ValueError('Empty phase argument')
    if stream[0].text == '{':
        if ends[0] != len(stream) - 1: raise ValueError('Trailing table expression')
        if len(stream) == 2: raise ValueError('Empty phase table')
        # Both named and indexed fields make a record, never a child list.
        indexed = stream[1].text == '[' and stream[ends[1] + 1].text == '='
        named = len(stream) > 3 and stream[2].text == '='
        if indexed or named:
            field = stream[1].text if named else stream[2].text.strip('\"\'')
            value = stream[3].text if named else stream[ends[1] + 2].text
            if field != 'itemID' or not value.isdigit():
                raise ValueError('Unsupported phase record owner')
            return 'record', field, value
        # The only phase-wrapped lists in these sources contain one instance.
        inner = stream[1:-1]
        if inner and inner[-1].text == ',': inner = inner[:-1]
        if not inner: raise ValueError('Empty phase list')
        child = text[inner[0].start:inner[-1].end]
        kind, constructor, identity = argument_owner(child)
        if kind != 'constructor' or constructor != 'inst':
            raise ValueError('Unsupported phase list owner')
        return 'list', constructor, identity
    if len(stream) < 4 or stream[0].text not in ('i', 'q', 'n', 'n_conditional', 'd', 'inst'):
        raise ValueError('Unsupported phase constructor')
    if stream[1].text != '(' or ends[1] != len(stream) - 1:
        raise ValueError('Unsupported phase expression')
    comma = next((i for i in range(2, len(stream) - 1) if stream[i].text == ','), len(stream) - 1)
    identity = ''.join(token.text for token in stream[2:comma])
    if not re.fullmatch(r'\d+|DIFFICULTY\.[A-Z_]+\.[A-Z_0-9]+', identity):
        raise ValueError('Unsupported phase owner identity: ' + identity)
    return 'constructor', stream[0].text, identity


def ordinary_tokens(text):
    """Canonicalize actual source, independent of the generator's edit history.

    Remove legacy phase calls, transparent child-list scopes and key fields.
    Every remaining token, including constructor nesting and ordinary fields,
    must survive. Call this after choosing the client's conditional branches.
    """
    edits = []
    for _, start, begin, end, finish in phase_calls(text):
        edits.extend(((start, begin), (end, finish)))
    for start, finish in sorted(edits, reverse=True):
        text = text[:start] + text[finish:]
    stream = tokens(text)
    ends = delimiters(stream)
    omitted = set()
    for index, token in enumerate(stream):
        if token.text != '{': continue
        # A pure envelope has precisely the two supported fields. Its groups
        # are spliced into the surrounding child list, not retained as a node.
        head = [part.text for part in stream[index:index + 8]]
        if len(head) == 8 and head[:3] == ['{', 'progressionKey', '='] and head[4:] == [',', 'groups', '=', '{']:
            child_end = ends[index + 7]
            outer_end = ends[index]
            tail = [part.text for part in stream[child_end + 1:outer_end]]
            if tail not in ([], [',']): continue
            omitted.update(range(index, index + 8))
            omitted.update(range(child_end, outer_end + 1))
            # Use either the children's trailing separator or the envelope's
            # separator, so a one-child scope does not lose its list boundary.
            if stream[child_end - 1].text in (',', '{') and outer_end + 1 < len(stream) and stream[outer_end + 1].text == ',':
                omitted.add(outer_end + 1)
    for index, token in enumerate(stream):
        if token.text != 'progressionKey' or index in omitted: continue
        field = stream[index:index + 4]
        if len(field) != 4 or field[1].text != '=' or field[3].text != ',':
            raise ValueError('Unsupported progressionKey field')
        omitted.update(range(index, index + 4))
    return [token.text for index, token in enumerate(stream) if index not in omitted]
