'use strict';

// Requires Node.js 18+ and actual Lua 5.1 (lua5.1, or ATT_LUA51).
const assert = require('node:assert/strict');
const fs = require('node:fs');
const os = require('node:os');
const path = require('node:path');
const crypto = require('node:crypto');
const { spawn, spawnSync } = require('node:child_process');
const { test } = require('node:test');
const script = path.resolve(__dirname, '..', 'split_objectdb.js');
const wrap = entries => 'local ObjectDB = ObjectDB; for objectID,objectData in pairs({\n' +
    entries + '\n})\ndo ObjectDB[objectID] = objectData; end\n';
const records = ids => ids.map(id => `[${id}] = { readable = "${id}" },`).join('\n');

function fixture(t, source = wrap('[1] = {}')) {
    const directory = fs.mkdtempSync(path.join(os.tmpdir(), 'att-objectdb-test-'));
    t.after(() => fs.rmSync(directory, { recursive: true, force: true }));
    const f = { directory, input: path.join(directory, 'input.lua'), store: path.join(directory, 'ObjectDB') };
    fs.writeFileSync(f.input, source);
    return f;
}

function run(f, args = [f.input, f.store], env = {}) {
    const source = fs.readFileSync(f.input);
    const result = spawnSync(process.execPath, [script, ...args], {
        cwd: f.directory, encoding: 'utf8',
        env: { ...process.env, ATT_OBJECTDB_TMP: f.directory, ...env },
    });
    assert.ifError(result.error);
    assert.deepEqual(fs.readFileSync(f.input), source, 'input must remain unchanged');
    return result;
}

const succeeds = result => assert.equal(result.status, 0, result.stdout + result.stderr);
const fails = result => assert.notEqual(result.status, 0, 'operation unexpectedly succeeded');
const contents = directory => Object.fromEntries(fs.readdirSync(directory).sort().map(name =>
    [name, fs.readFileSync(path.join(directory, name), 'utf8')]));
const layout = f => JSON.parse(fs.readFileSync(path.join(f.store, 'manifest.json'), 'utf8'));
function filename(partition) {
    const start = BigInt(partition.start);
    const end = start + BigInt(partition.width) - 1n;
    return `ObjectDB_${String(start).padStart(5, '0')}_${String(end).padStart(5, '0')}.lua`;
}

function assertPartition(f, expectedIds) {
    const manifest = layout(f);
    assert.equal(manifest.format, 'ATT ObjectDB');
    assert.equal(manifest.version, 1);
    assert.deepEqual(fs.readdirSync(f.store).sort(), ['manifest.json', ...manifest.partitions.map(filename)].sort());
    const all = [];
    let previousEnd = -1n;
    for (const partition of manifest.partitions) {
        const start = BigInt(partition.start), width = BigInt(partition.width);
        assert.ok([10000, 1000, 100].includes(partition.width));
        assert.equal(start % width, 0n);
        assert.ok(start > previousEnd, 'filename ranges must not overlap');
        previousEnd = start + width - 1n;
        const source = fs.readFileSync(path.join(f.store, filename(partition)), 'utf8');
        const ids = [...source.matchAll(/^\[(\d+)\] =/gm)].map(match => BigInt(match[1]));
        assert.ok(ids.length <= 700, 'object cap exceeded');
        const sort = values => [...values].sort((a, b) => a < b ? -1 : a > b ? 1 : 0);
        assert.deepEqual(ids, sort(ids));
        for (const id of ids) assert.ok(id >= start && id <= previousEnd);
        all.push(...ids);
    }
    const sort = ids => ids.map(BigInt).sort((a, b) => a < b ? -1 : a > b ? 1 : 0);
    assert.deepEqual(sort(all), sort(expectedIds), 'each source ID must occur exactly once');
}

test('preserves quoted, nested and multiline entry contents with BOM/CRLF', t => {
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
    const f = fixture(t, '\ufeff-- ordinary header\r\n' + wrap(entry).replace(/\r?\n/g, '\r\n'));
    succeeds(run(f));
    assert.ok(fs.readFileSync(path.join(f.store, filename(layout(f).partitions[0])), 'utf8').includes(entry));
    const before = contents(f.store);
    succeeds(run(f, ['--check', f.store]));
    assert.deepEqual(contents(f.store), before);
});

test('compiles incoming Lua without executing it', t => {
    const marker = 'publisher-must-not-execute.txt';
    const f = fixture(t, wrap(`[1] = { text = (function() local f = assert(io.open("${marker}", "w")); f:write("executed"); f:close(); return "one"; end)() }`));
    succeeds(run(f)); succeeds(run(f, ['--check', f.store]));
    assert.ok(!fs.existsSync(path.join(f.directory, marker)));
});

test('subdivides whole overloaded parents and retains empty children', async t => {
    for (const count of [700, 701]) await t.test(`${count} objects`, t => {
        const ids = Array.from({ length: count }, (_, i) => i);
        const f = fixture(t, wrap(records([...ids].reverse())));
        succeeds(run(f)); assertPartition(f, ids);
        assert.equal(layout(f).partitions.length, count === 700 ? 1 : 19);
        succeeds(run(f, ['--check', f.store]));
        const before = contents(f.store);
        succeeds(run(f, ['--repartition', f.store]));
        assert.deepEqual(contents(f.store), before, 'unchanged repartition must be deterministic');
    });
});

test('retains subdivision and empty files through explicit deletions and refill', t => {
    const f = fixture(t, wrap(records(Array.from({ length: 701 }, (_, i) => i))));
    succeeds(run(f));
    const originalLayout = layout(f), before = contents(f.store);
    fs.writeFileSync(f.input, wrap('[699] = { readable = "kept" }'));
    fails(run(f, ['--update', f.input, f.store])); assert.deepEqual(contents(f.store), before);
    succeeds(run(f, ['--update', f.input, f.store, '--allow-removals']));
    assert.deepEqual(layout(f), originalLayout); assertPartition(f, [699]);
    fs.writeFileSync(f.input, wrap(records([699, 25, 9500])));
    succeeds(run(f, ['--update', f.input, f.store]));
    assert.deepEqual(layout(f), originalLayout); assertPartition(f, [699, 25, 9500]);
});

test('consolidation publication refuses a stale store fingerprint', t => {
    const f = fixture(t); succeeds(run(f));
    const hash = crypto.createHash('sha256');
    for (const name of fs.readdirSync(f.store).sort()) { hash.update(name + '\0'); hash.update(fs.readFileSync(path.join(f.store, name))); }
    const fingerprint = hash.digest('hex');
    const shard = path.join(f.store, filename(layout(f).partitions[0]));
    fs.appendFileSync(shard, '-- manual edit after snapshot\n');
    const before = contents(f.store);
    fails(run(f, ['--update', f.input, f.store, '--expect-sha256', fingerprint]));
    assert.deepEqual(contents(f.store), before);
});

test('supports manual edits and repartitions overflowing or misplaced IDs', t => {
    const f = fixture(t, wrap(records(Array.from({ length: 700 }, (_, i) => i))));
    succeeds(run(f));
    const shardPath = path.join(f.store, filename(layout(f).partitions[0]));
    let source = fs.readFileSync(shardPath, 'utf8').replace('readable = "0"', 'readable = "手動 edit"');
    fs.writeFileSync(shardPath, source); succeeds(run(f, ['--check', f.store]));
    source = source.replace('})\ndo', '[700] = { readable = "new" },\n[20001] = { readable = "misplaced" },\n})\ndo');
    fs.writeFileSync(shardPath, source); fails(run(f, ['--check', f.store]));
    succeeds(run(f, ['--repartition', f.store]));
    assertPartition(f, [...Array.from({ length: 701 }, (_, i) => i), 20001]);
    assert.ok(Object.values(contents(f.store)).some(text => text.includes('手動 edit')));
    succeeds(run(f, ['--check', f.store]));
});

test('supports sparse high IDs with exact filenames', t => {
    const ids = [1278968768n, 31n, 100000000n, 9007199254740991n];
    const f = fixture(t, wrap(records(ids))); succeeds(run(f)); assertPartition(f, ids);
    assert.ok(fs.existsSync(path.join(f.store, 'ObjectDB_9007199254740000_9007199254749999.lua')));
});

test('retains empty upper leaves when the highest safe-ID root subdivides', t => {
    const ids = Array.from({ length: 701 }, (_, i) => 9007199254740991n - BigInt(i));
    const f = fixture(t, wrap(records(ids))); succeeds(run(f)); assertPartition(f, ids);
    succeeds(run(f, ['--check', f.store])); succeeds(run(f, ['--repartition', f.store]));
    assertPartition(f, ids);
});

test('rejects malformed and unsupported source before publishing', async t => {
    const cases = {
        'unrelated loop': 'for k,v in pairs({ [1] = {} }) do ObjectDB[k] = v end',
        'prefix': 'local name = "context"\n' + wrap('[1] = { readable = name }'),
        'suffix': wrap('[1] = {}') + 'ObjectDB[2] = {}',
        'second table': wrap('[1] = {}') + wrap('[2] = {}'),
        'metadata': wrap('metadata = { [99] = {} }, [1] = {}'),
        'duplicate': wrap('[1] = {}, [01] = {}'),
        'unsafe ID': wrap('[9007199254740992] = {}'),
        'negative ID': wrap('[-1] = {}'),
        'fractional ID': wrap('[1.5] = {}'),
        'non-table entry': wrap('[1] = "unsupported"'),
        'missing separator': wrap('[1] = {} [2] = {}'),
        'unterminated quote': wrap('[1] = { readable = "broken }'),
        'unterminated long string': wrap('[1] = { readable = [=[broken }'),
        'unterminated comment': wrap('[1] = { --[=[broken }'),
        'unbalanced entry': wrap('[1] = { text = (1] }'),
        'Lua syntax beyond structural scanner': wrap('[1] = { readable = ??? }'),
        'preprocessor': wrap('-- #if RETAIL\n[1] = {}\n-- #endif'),
        'preprocessor in string': wrap('[1] = { text = [[\n-- #if RETAIL\n]] }'),
    };
    for (const [name, source] of Object.entries(cases)) await t.test(name, t => {
        const f = fixture(t, source); fails(run(f));
        assert.ok(!fs.existsSync(f.store), 'invalid source must not publish output');
    });
});

test('requires actual Lua 5.1 and never skips an unavailable validator', t => {
    const f = fixture(t);
    fails(run(f, undefined, { ATT_LUA51: path.join(f.directory, 'missing-lua') }));
    assert.ok(!fs.existsSync(f.store));
    const wrongLua = path.join(f.directory, 'wrong-lua');
    // Execute only Lua 5.1, but spoof its version before evaluating the real
    // validator harness. This exercises rejection without running another Lua.
    const lua51 = process.env.ATT_LUA51 || 'lua5.1';
    fs.writeFileSync(wrongLua, '#!/bin/sh\nexec ' + "'" + lua51.replace(/'/g, "'\\''") + "'" +
        ' -e \'_VERSION="Lua 5.4"; \'"$2"\n', { mode: 0o755 });
    fails(run(f, undefined, { ATT_LUA51: wrongLua })); assert.ok(!fs.existsSync(f.store));
});

test('refuses unowned/missing files and invalid manifests without deleting them', async t => {
    const cases = {
        'unowned Lua': f => fs.writeFileSync(path.join(f.store, 'foreign.lua'), 'return {}'),
        'unowned text': f => fs.writeFileSync(path.join(f.store, 'keep.txt'), 'keep'),
        'missing owned file': f => fs.unlinkSync(path.join(f.store, filename(layout(f).partitions[0]))),
        'unknown schema': f => { const m = layout(f); m.version = 999; fs.writeFileSync(path.join(f.store, 'manifest.json'), JSON.stringify(m)); },
        'overlap': f => { const m = layout(f); m.partitions.push({ start: '0', width: 1000 }); fs.writeFileSync(path.join(f.store, 'manifest.json'), JSON.stringify(m)); },
        'unaligned': f => { const m = layout(f); m.partitions[0].start = '1'; fs.writeFileSync(path.join(f.store, 'manifest.json'), JSON.stringify(m)); },
        'path traversal': f => { const m = layout(f); m.partitions[0].start = '../other'; fs.writeFileSync(path.join(f.store, 'manifest.json'), JSON.stringify(m)); },
        'duplicate source ID': f => fs.writeFileSync(path.join(f.store, filename(layout(f).partitions[0])), wrap('[1] = {}, [1] = {}')),
    };
    for (const [name, damage] of Object.entries(cases)) await t.test(name, t => {
        const f = fixture(t); succeeds(run(f)); damage(f);
        const before = contents(f.store);
        fails(run(f, ['--check', f.store])); fails(run(f, ['--repartition', f.store]));
        assert.deepEqual(contents(f.store), before);
    });
});

function fault(f, operation, interrupt = false) {
    const preload = path.join(f.directory, `fault-${operation}-${interrupt}.cjs`);
    fs.writeFileSync(preload, `const fs = require('node:fs');
const rename = fs.renameSync; let count = 0;
fs.renameSync = function(...args) {
    if (++count === ${operation}) { ${interrupt ? "rename.apply(this, args); process.exit(86);" : "throw new Error('Injected rename failure');"} }
    return rename.apply(this, args);
};\n`);
    return { NODE_OPTIONS: `--require=${preload}` };
}

test('handled replacement failures restore the complete previous store', async t => {
    for (const operation of [1, 2]) await t.test(`rename ${operation}`, t => {
        const f = fixture(t); succeeds(run(f)); const before = contents(f.store);
        fs.writeFileSync(f.input, wrap('[1] = { readable = "changed" }, [2] = {}'));
        fails(run(f, ['--update', f.input, f.store], fault(f, operation)));
        assert.deepEqual(contents(f.store), before); succeeds(run(f, ['--check', f.store]));
    });
});

test('interrupted publication fails closed and explicit recovery restores previous state', t => {
    const f = fixture(t); succeeds(run(f)); const before = contents(f.store);
    fs.writeFileSync(f.input, wrap('[1] = { readable = "changed" }, [2] = {}'));
    assert.equal(run(f, ['--update', f.input, f.store], fault(f, 1, true)).status, 86);
    fails(run(f, ['--check', f.store])); succeeds(run(f, ['--recover', f.store]));
    assert.deepEqual(contents(f.store), before); succeeds(run(f, ['--check', f.store]));
    assert.ok(!fs.existsSync(path.join(f.directory, '.ObjectDB.lock')));
    assert.ok(!fs.existsSync(path.join(f.directory, '.ObjectDB.lock.journal')));
});

test('rejects a live shared lock without modifying source or stealing it', t => {
    const f = fixture(t); succeeds(run(f)); const before = contents(f.store);
    fs.writeFileSync(path.join(f.directory, '.ObjectDB.lock'), JSON.stringify({ pid: process.pid, hostname: os.hostname() }));
    fails(run(f, ['--check', f.store])); fails(run(f, ['--update', f.input, f.store]));
    fails(run(f, ['--recover', f.store])); assert.deepEqual(contents(f.store), before);
});

test('rejects staging inside parsed data before publishing', t => {
    const f = fixture(t);
    const staging = path.join(f.directory, '.db', 'shared', 'staging');
    fs.mkdirSync(staging, { recursive: true });
    fails(run(f, undefined, { ATT_OBJECTDB_TMP: staging }));
    assert.ok(!fs.existsSync(f.store)); assert.deepEqual(fs.readdirSync(staging), []);
});

test('rejects tampered recovery paths without deleting unrelated files', t => {
    const f = fixture(t); succeeds(run(f));
    fs.writeFileSync(f.input, wrap('[1] = { readable = "changed" }'));
    assert.equal(run(f, ['--update', f.input, f.store], fault(f, 1, true)).status, 86);
    const journal = path.join(f.directory, '.ObjectDB.lock.journal');
    const original = JSON.parse(fs.readFileSync(journal, 'utf8'));
    const unrelated = path.join(f.directory, 'att-objectdb-unrelated');
    fs.mkdirSync(unrelated); fs.writeFileSync(path.join(unrelated, 'keep.txt'), 'keep');
    fs.writeFileSync(journal, JSON.stringify({ ...original, work: unrelated, stage: path.join(unrelated, 'stage'), backup: path.join(unrelated, 'backup') }));
    fails(run(f, ['--recover', f.store]));
    assert.equal(fs.readFileSync(path.join(unrelated, 'keep.txt'), 'utf8'), 'keep');
    fs.writeFileSync(journal, JSON.stringify(original)); succeeds(run(f, ['--recover', f.store]));
});

test('recovers cleanup failure after the committed store is installed', t => {
    const f = fixture(t); succeeds(run(f));
    fs.writeFileSync(f.input, wrap('[1] = { readable = "committed" }, [2] = {}'));
    const preload = path.join(f.directory, 'cleanup-fault.cjs');
    fs.writeFileSync(preload, `const fs=require('node:fs');const remove=fs.rmSync;fs.rmSync=function(file,...args){if(String(file).endsWith('.journal'))throw Error('Injected journal cleanup failure');return remove.call(this,file,...args)};`);
    fails(run(f, ['--update', f.input, f.store], { NODE_OPTIONS: `--require=${preload}` }));
    const committed = contents(f.store);
    assert.ok(Object.values(committed).some(source => source.includes('committed')));
    succeeds(run(f, ['--recover', f.store])); assert.deepEqual(contents(f.store), committed);
    succeeds(run(f, ['--check', f.store]));
});

test('recovery refuses an active publisher and leaves its transaction intact', async t => {
    const f = fixture(t); succeeds(run(f));
    const ready = path.join(f.directory, 'ready'), release = path.join(f.directory, 'release');
    const preload = path.join(f.directory, 'pause.cjs');
    fs.writeFileSync(preload, `const fs=require('node:fs');const rename=fs.renameSync;let first=true;fs.renameSync=function(...args){if(first){first=false;fs.writeFileSync(${JSON.stringify(ready)},'');while(!fs.existsSync(${JSON.stringify(release)}))Atomics.wait(new Int32Array(new SharedArrayBuffer(4)),0,0,20)}return rename.apply(this,args)};`);
    const child = spawn(process.execPath, [script, '--update', f.input, f.store], {
        env: { ...process.env, ATT_OBJECTDB_TMP: f.directory, NODE_OPTIONS: `--require=${preload}` },
        stdio: 'ignore',
    });
    t.after(() => { if (child.exitCode === null) child.kill(); });
    const ended = new Promise(resolve => child.once('exit', resolve));
    const deadline = Date.now() + 10000;
    while (!fs.existsSync(ready) && Date.now() < deadline && child.exitCode === null) await new Promise(resolve => setTimeout(resolve, 20));
    assert.ok(fs.existsSync(ready), 'publisher never reached transaction boundary');
    const journal = JSON.parse(fs.readFileSync(path.join(f.directory, '.ObjectDB.lock.journal'), 'utf8'));
    fails(run(f, ['--recover', f.store])); assert.ok(fs.existsSync(journal.work));
    fs.writeFileSync(release, ''); assert.equal(await ended, 0);
    succeeds(run(f, ['--check', f.store]));
});
