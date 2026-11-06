'use strict';

const assert = require('node:assert/strict');
const fs = require('node:fs');
const os = require('node:os');
const path = require('node:path');
const crypto = require('node:crypto');
const { spawn, spawnSync } = require('node:child_process');
const { test, after } = require('node:test');
const repository = path.resolve(__dirname, '../../../..');
const temporary = fs.mkdtempSync(path.join(os.tmpdir(), 'att-objectdb-native-'));
after(() => fs.rmSync(temporary, { recursive: true, force: true }));
const xml = value => value.replace(/&/g, '&amp;').replace(/"/g, '&quot;');
fs.copyFileSync(path.join(__dirname, 'native-objectdb.cs.txt'), path.join(temporary, 'Main.cs'));
const sources = ['ObjectDBStore.cs', 'ObjectDBConsolidation.cs', 'MiniJSON.cs'].map(file =>
    `<Compile Include="${xml(path.join(repository, '.contrib/src/Parser', file))}" />`).join('');
const references = ['NLua', 'KeraLua'].map(name => `<Reference Include="${name}"><HintPath>${xml(path.join(repository, '.contrib/.tools', name + '.dll'))}</HintPath></Reference>`).join('');
fs.writeFileSync(path.join(temporary, 'Tests.csproj'), `<Project Sdk="Microsoft.NET.Sdk"><PropertyGroup><TargetFramework>net8.0</TargetFramework><OutputType>Exe</OutputType></PropertyGroup><ItemGroup>${sources}${references}</ItemGroup></Project>`);
fs.writeFileSync(path.join(temporary, 'NuGet.Config'), '<configuration><packageSources><clear /></packageSources></configuration>');
const built = spawnSync('dotnet', ['build', path.join(temporary, 'Tests.csproj'), '--nologo', '--verbosity:quiet', '-p:NuGetAudit=false', '-p:RestoreConfigFile=' + path.join(temporary, 'NuGet.Config')], { encoding: 'utf8' });
assert.ifError(built.error);
assert.equal(built.status, 0, built.stdout + built.stderr);
const assembly = path.join(temporary, 'bin/Debug/net8.0/Tests.dll');
const invoke = args => spawnSync('dotnet', [assembly, ...args], { encoding: 'utf8' });
const wrapper = body => 'local ObjectDB = ObjectDB; for objectID,objectData in pairs({' + body + '}) do ObjectDB[objectID] = objectData; end';

test('native reader validates the actual canonical store without executing Lua', () => {
    const result = invoke(['store', path.join(repository, '.contrib/.db/shared/objects/ObjectDB')]);
    assert.equal(result.status, 0, result.stderr);
    const manifest = JSON.parse(fs.readFileSync(path.join(repository, '.contrib/.db/shared/objects/ObjectDB/manifest.json'), 'utf8'));
    assert.equal(JSON.parse(result.stdout).length, manifest.partitions.length);
});

test('repeated native reader disposal never deletes a later reader lock', () => {
    const result = invoke(['dispose', path.join(repository, '.contrib/.db/shared/objects/ObjectDB')]);
    assert.equal(result.status, 0, result.stderr);
});

test('parallel native readers wait safely and a publisher refuses their active lock', async t => {
    const store = path.join(repository, '.contrib/.db/shared/objects/ObjectDB');
    const marker = path.join(temporary, 'reader-locked');
    const child = spawn('dotnet', [assembly, 'hold', store, marker], { stdio: 'ignore' });
    t.after(() => { if (child.exitCode === null) child.kill(); });
    const ended = new Promise(resolve => child.once('exit', resolve));
    const deadline = Date.now() + 10000;
    while (!fs.existsSync(marker) && Date.now() < deadline && child.exitCode === null) await new Promise(resolve => setTimeout(resolve, 20));
    assert.ok(fs.existsSync(marker), 'native reader never acquired lock');
    const publisher = spawnSync(process.execPath, [path.join(__dirname, '../split_objectdb.js'), '--check', store], { encoding: 'utf8' });
    assert.notEqual(publisher.status, 0);
    const started = Date.now(), second = invoke(['store', store]);
    assert.equal(second.status, 0, second.stderr); assert.ok(Date.now() - started >= 100);
    assert.equal(await ended, 0);
});

test('native scanner handles comments and long strings and rejects duplicate literal IDs', () => {
    const file = path.join(temporary, 'source.lua');
    fs.writeFileSync(file, wrapper('[1]={text=[=[ } { ]=]}, -- [9]={},\n[2]={text="quoted }"}'));
    assert.deepEqual(JSON.parse(invoke(['scan', file]).stdout), [1, 2]);
    for (const source of [wrapper('[1]={},[01]={}'), wrapper('metadata={[1]={}}'), wrapper('[1]={}') + 'ObjectDB[2]={}', wrapper('[1]={text=[[-- #if RETAIL]]}')]) {
        fs.writeFileSync(file, source);
        assert.notEqual(invoke(['scan', file]).status, 0);
    }
});

test('native manifest validation rejects fractional/coerced schema values', () => {
    const store = path.join(temporary, 'ObjectDB'); fs.mkdirSync(store);
    fs.writeFileSync(path.join(store, 'ObjectDB_00000_09999.lua'), wrapper('[1]={}'));
    for (const [version, width] of [[1.2, 10000], [true, 10000], [1, 9999.8], [1, '10000']]) {
        fs.writeFileSync(path.join(store, 'manifest.json'), JSON.stringify({ format: 'ATT ObjectDB', version, partitions: [{ start: '0', width }] }));
        assert.notEqual(invoke(['store', store]).status, 0);
    }
});

test('native reader permits empty upper partitions in the final safe-ID root', () => {
    const store = path.join(temporary, 'HighStore'); fs.mkdirSync(store);
    const partitions = Array.from({ length: 10 }, (_, i) => ({ start: String(9007199254740000n + BigInt(i * 1000)), width: 1000 }));
    fs.writeFileSync(path.join(store, 'manifest.json'), JSON.stringify({ format: 'ATT ObjectDB', version: 1, partitions }));
    for (const [i, partition] of partitions.entries()) {
        const start = BigInt(partition.start);
        fs.writeFileSync(path.join(store, `ObjectDB_${start}_${start + 999n}.lua`), wrapper(i === 0 ? '[9007199254740991]={}' : ''));
    }
    const result = invoke(['store', store]); assert.equal(result.status, 0, result.stderr);
});

test('native consolidation preserves missing/null fields, numeric keys and literal values', () => {
    const file = path.join(temporary, 'literal.lua');
    const result = invoke(['literal', file]); assert.equal(result.status, 0, result.stderr);
    if (process.platform !== 'win32') {
        const program = `assert(_VERSION == 'Lua 5.1'); ObjectDB={}; dofile(arg[1]); local o=ObjectDB[1];
assert(o.readable=='base' and o.text.en=='new' and o.text.cn=='保留');
assert(o.unknown=='retained' and o.precision==1.2345678901234567);
assert(o.literal=='~print("keep as text")' and o.path==[[C:\\name\\file]]);
assert(o.control==('quote"'..string.char(10,13,9,0,31)..'9'));
assert(o.numeric[1]=='changed' and o.numeric[2]=='retained' and o.numeric[true]=='boolean key');`;
        const harness = path.join(temporary, 'verify.lua'); fs.writeFileSync(harness, program);
        const lua = spawnSync(process.env.ATT_LUA51 || 'lua5.1', [harness, file], { encoding: 'utf8' });
        assert.ifError(lua.error); assert.equal(lua.status, 0, lua.stderr);
    }
});

test('native process argument quoting round trips spaces, quotes, slashes and Unicode', () => {
    const result = invoke(['arguments']); assert.equal(result.status, 0, result.stderr);
});

test('native and Node fingerprints use the same filename/NUL/raw-byte snapshot', () => {
    const store = path.join(repository, '.contrib/.db/shared/objects/ObjectDB');
    const hash = crypto.createHash('sha256');
    for (const name of fs.readdirSync(store).sort()) { hash.update(name + '\0'); hash.update(fs.readFileSync(path.join(store, name))); }
    const result = invoke(['fingerprint', store]); assert.equal(result.status, 0, result.stderr);
    assert.equal(result.stdout.trim(), hash.digest('hex'));
});

test('cache collector reads canonical writer fields and preserves upsert/conflict behavior', t => {
    const available = spawnSync('pwsh', ['-NoProfile', '-Command', '$PSVersionTable.PSVersion.ToString()'], { encoding: 'utf8' });
    if (available.error && available.error.code === 'ENOENT') { t.skip('PowerShell unavailable; the Windows native job runs this check'); return; }
    assert.ifError(available.error); assert.equal(available.status, 0, available.stderr);
    const root = path.join(temporary, 'cache-repository');
    const sources = path.join(root, '.contrib/src/Parser');
    const objects = path.join(root, '.contrib/.db/shared/objects');
    fs.mkdirSync(sources, { recursive: true }); fs.mkdirSync(path.join(objects, 'Dynamic'), { recursive: true });
    for (const file of ['ObjectDBStore.cs', 'MiniJSON.cs']) fs.copyFileSync(path.join(repository, '.contrib/src/Parser', file), path.join(sources, file));
    fs.writeFileSync(path.join(objects, 'ObjectDBConditionals.lua'), '');
    // Native reader/cache coverage must also run on Windows without the optional
    // Node publisher's external Lua 5.1 dependency.
    const store = path.join(objects, 'ObjectDB'); fs.mkdirSync(store);
    fs.writeFileSync(path.join(store, 'manifest.json'), JSON.stringify({ format: 'ATT ObjectDB', version: 1, partitions: [{ start: '0', width: 10000 }] }));
    fs.writeFileSync(path.join(store, 'ObjectDB_00000_09999.lua'), wrapper('[100]={model=123},[102]={unknown={model=999}},[103]={model=555},[999]={unknown={[101]={model=777}}}'));
    const header = Buffer.alloc(24); header.write('WGOB');
    const binary = [header];
    for (const [id, display] of [[100, 10], [101, 11], [102, 11], [103, 11]]) {
        const name = Buffer.from(`Object ${id}\0`), record = Buffer.alloc(16);
        record.writeUInt32LE(id, 0); record.writeUInt32LE(8 + name.length, 4);
        record.writeUInt32LE(5, 8); record.writeUInt32LE(display, 12);
        binary.push(record, name);
    }
    fs.writeFileSync(path.join(root, 'cache.wdb'), Buffer.concat(binary));
    const ps = path.join(temporary, 'cache-test.ps1');
    const quote = value => "'" + value.replace(/'/g, "''") + "'";
    fs.writeFileSync(ps, `$ErrorActionPreference='Stop'\nfunction Invoke-WebRequest { param($Uri,[switch]$UseBasicParsing) [pscustomobject]@{Content="ID,FileDataID\n10,123\n11,321\n"} }\nSet-Location ${quote(root)}\n& ${quote(path.join(repository, '.contrib/.tools/GameObjectCache-to-ObjectDB.ps1'))} -CachePath 'cache.wdb' -OutputPath '.contrib/.db/shared/objects/Dynamic/output.lua' -Build 'fixture'\n`);
    const collected = spawnSync('pwsh', ['-NoProfile', '-File', ps], { encoding: 'utf8' });
    assert.equal(collected.status, 0, collected.stdout + collected.stderr);
    assert.match(collected.stdout, /Entries added: 2/);
    assert.match(collected.stdout, /Existing model conflicts: 1/);
    const output = fs.readFileSync(path.join(objects, 'Dynamic/output.lua'), 'utf8');
    assert.match(output, /\[101\]/); assert.match(output, /\[102\]/);
    assert.ok(!output.includes('[100]')); assert.ok(!output.includes('[103]'));
    assert.ok(!fs.existsSync(path.join(objects, '.ObjectDB.lock')));
});
