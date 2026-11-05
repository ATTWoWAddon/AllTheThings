'use strict';

// Run from the repository root with Node.js 18 or later:
// node --test .contrib/.tools/Lua/tests/split-objectdb.test.cjs
const assert = require('node:assert/strict');
const fs = require('node:fs');
const os = require('node:os');
const path = require('node:path');
const { spawnSync } = require('node:child_process');
const { test } = require('node:test');
const script = path.resolve(__dirname, '..', 'split_objectdb.js');

function fixture(t, source) {
    const directory = fs.mkdtempSync(path.join(os.tmpdir(), 'att-objectdb-test-'));
    t.after(() => fs.rmSync(directory, { recursive: true, force: true }));
    const input = path.join(directory, 'input.lua');
    const output = path.join(directory, 'result');
    fs.writeFileSync(input, source);
    return { directory, input, output, source };
}

function wrap(entries) {
    return 'local ObjectDB = ObjectDB; for objectID,objectData in pairs({\n' +
        entries + '\n})\ndo ObjectDB[objectID] = objectData; end\n';
}

function run(f, args = [f.input, f.output]) {
    const result = spawnSync(process.execPath, [script, ...args], {
        cwd: f.directory,
        encoding: 'utf8',
    });
    assert.ifError(result.error);
    assert.equal(fs.readFileSync(f.input, 'utf8'), f.source, 'input must remain unchanged');
    return result;
}

function outputFiles(f) {
    return fs.readdirSync(f.output).sort().map(name => ({
        name,
        content: fs.readFileSync(path.join(f.output, name), 'utf8'),
    }));
}

test('preserves entry text through strings, comments, BOM, and CRLF', t => {
    const entry = String.raw`[31] = {
    readable = "Quoted } { -- [999] = { and \"escaped\" quote",
    single = 'It\'s {still} text',
    text = { en = "Unicode 歐巴悠", [4] = { value = "nested" } },
    long = [==[first } -- [888] = {
second ]=] line
third]==],
    -- [777] = { readable = "Commented" },
    --[=[ ignored } { [666] = { } ]=]
}`.replace(/\n/g, '\r\n');
    const source = '\ufeff-- for k,v in pairs({ [555] = {} }) do end\r\n' +
        wrap('-- [444] = { readable = "Outside comment" },\n' + entry + ',')
            .replace(/\r?\n/g, '\r\n') + '-- ordinary trailing comment\r\n';
    const f = fixture(t, source);
    const result = run(f);
    assert.equal(result.status, 0, result.stderr);
    const files = outputFiles(f);
    assert.equal(files.length, 1);
    assert.ok(files[0].content.includes(entry), 'all accepted entry bytes must be retained');
    assert.ok(!files[0].content.includes('[444]'), 'outside scaffolding comments may be discarded');
    assert.match(result.stdout, /fewer than 20 objects/i);
});

test('supports escaped line breaks in quoted Lua strings', t => {
    const entry = '[1] = { readable = "first\\\r\nsecond", text = "}" }';
    const f = fixture(t, wrap(entry));
    const result = run(f);
    assert.equal(result.status, 0, result.stderr);
    assert.ok(outputFiles(f)[0].content.includes(entry));
});

test('accepts generated assignment wrappers with an optional final semicolon', t => {
    const f = fixture(t, wrap('[1] = { readable = "one" }').replace('objectData; end', 'objectData end'));
    const result = run(f);
    assert.equal(result.status, 0, result.stderr);
    assert.ok(outputFiles(f)[0].content.includes('[1] = { readable = "one" }'));
});

test('rejects malformed or unsupported input before creating output', async t => {
    const cases = {
        'empty table': wrap(''),
        'unrelated loop': 'for k,v in pairs({ [1] = {} }) do ObjectDB[k] = v end',
        'executable prefix': 'local name = "context"\n' + wrap('[1] = { readable = name }'),
        'executable suffix': wrap('[1] = {}') + 'ObjectDB[2] = {}',
        'second table': wrap('[1] = {}') + wrap('[2] = {}'),
        'nested metadata entry': wrap('metadata = { [99] = {} }, [1] = {}'),
        'duplicate ID': wrap('[1] = {}, [01] = {}'),
        'unsafe ID': wrap('[9007199254740992] = {}'),
        'negative ID': wrap('[-1] = {}'),
        'fractional ID': wrap('[1.5] = {}'),
        'non-table entry': wrap('[1] = "unsupported"'),
        'missing separator': wrap('[1] = {} [2] = {}'),
        'unterminated quote': wrap('[1] = { readable = "broken }'),
        'unterminated long string': wrap('[1] = { readable = [=[broken }'),
        'unterminated long comment': wrap('[1] = { --[=[broken }'),
        'unbalanced entry': wrap('[1] = { text = (1] }'),
        'incomplete wrapper': wrap('[1] = {}').replace(/end\n$/, ''),
        'preprocessor outside entry': wrap('-- #if RETAIL\n[1] = {}\n-- #endif'),
        'preprocessor inside entry': wrap('[1] = {\n-- #if RETAIL\ntext = "one"\n-- #endif\n}'),
        'preprocessor inside long comment': wrap('--[[\n-- #if RETAIL\n]]\n[1] = {}'),
        'preprocessor inside long string': wrap('[1] = { text = [[\n-- #if RETAIL\n]] }'),
    };
    for (const [name, source] of Object.entries(cases)) {
        await t.test(name, t => {
            const f = fixture(t, source);
            const result = run(f);
            assert.notEqual(result.status, 0, 'invalid input must fail');
            assert.match(result.stderr, /Error:/);
            assert.ok(!fs.existsSync(f.output), 'invalid input must not create output');
        });
    }
});

test('accepts an existing empty destination and refuses populated destinations', t => {
    const f = fixture(t, wrap('[1] = { readable = "one" }'));
    fs.mkdirSync(f.output);
    const first = run(f);
    assert.equal(first.status, 0, first.stderr);
    const initial = outputFiles(f);
    const repeated = run(f);
    assert.notEqual(repeated.status, 0);
    assert.match(repeated.stderr, /new or empty/);
    assert.deepEqual(outputFiles(f), initial);

    const unrelated = path.join(f.directory, 'unrelated');
    fs.mkdirSync(unrelated);
    fs.writeFileSync(path.join(unrelated, 'keep.txt'), 'keep');
    const refused = run(f, [f.input, unrelated]);
    assert.notEqual(refused.status, 0);
    assert.deepEqual(fs.readdirSync(unrelated), ['keep.txt']);
    assert.equal(fs.readFileSync(path.join(unrelated, 'keep.txt'), 'utf8'), 'keep');
});

test('refuses a file destination without changing the source', t => {
    const f = fixture(t, wrap('[1] = {}'));
    const result = run(f, [f.input, f.input]);
    assert.notEqual(result.status, 0);
    assert.match(result.stderr, /new or empty/);
});

function assertPartition(files, expectedIds) {
    const all = [];
    for (const file of files) {
        const bounds = /^ObjectDB_(\d+)_(\d+)\.lua$/.exec(file.name);
        assert.ok(bounds, file.name);
        const start = BigInt(bounds[1]);
        const end = BigInt(bounds[2]);
        const ids = [...file.content.matchAll(/^\[(\d+)\] =/gm)].map(match => Number(match[1]));
        assert.ok(ids.length > 0 && ids.length <= 700);
        assert.deepEqual(ids, [...ids].sort((a, b) => a - b), 'entries must be sorted');
        for (const id of ids) assert.ok(BigInt(id) >= start && BigInt(id) <= end);
        all.push(...ids);
    }
    assert.deepEqual(all.sort((a, b) => a - b), [...expectedIds].sort((a, b) => a - b),
        'each input ID must appear exactly once');
}

test('keeps the 700-object threshold and deterministic overlapping range plan', async t => {
    for (const count of [700, 701]) {
        await t.test(`${count} objects`, t => {
            const ids = Array.from({ length: count }, (_, i) => i);
            const entries = [...ids].reverse().map(id => `[${id}] = { readable = "${id}" },`).join('\n');
            const f = fixture(t, wrap(entries));
            const result = run(f);
            assert.equal(result.status, 0, result.stderr);
            const files = outputFiles(f);
            assertPartition(files, ids);
            assert.deepEqual(files.map(file => file.name), count === 700
                ? ['ObjectDB_00000_09999.lua']
                : ['ObjectDB_00000_00099.lua', 'ObjectDB_00000_09999.lua']);
            const second = path.join(f.directory, 'second');
            assert.equal(run(f, [f.input, second]).status, 0);
            assert.deepEqual(outputFiles({ output: second }), files);
        });
    }
});

test('handles sparse high IDs with precise filenames', t => {
    const ids = [1278968768, 31, 100000000, Number.MAX_SAFE_INTEGER];
    const f = fixture(t, wrap(ids.map(id => `[${id}] = { readable = "${id}" },`).join('\n')));
    const result = run(f);
    assert.equal(result.status, 0, result.stderr);
    const files = outputFiles(f);
    assertPartition(files, ids);
    assert.ok(files.some(file => file.name === 'ObjectDB_1278960000_1278969999.lua'));
    assert.ok(files.some(file => file.name === 'ObjectDB_9007199254740000_9007199254749999.lua'));
});

test('uses the documented default and rejects extra arguments', t => {
    const f = fixture(t, wrap('[1] = {}'));
    const extra = run(f, [f.input, f.output, 'unexpected']);
    assert.notEqual(extra.status, 0);
    assert.match(extra.stderr, /Usage:.*\.contrib\/\.tools\/Lua\/split_objectdb\.js/);
    assert.ok(!fs.existsSync(f.output));
    const result = run(f, [f.input]);
    assert.equal(result.status, 0, result.stderr);
    assert.equal(fs.readdirSync(path.join(f.directory, 'output')).length, 1);
});
