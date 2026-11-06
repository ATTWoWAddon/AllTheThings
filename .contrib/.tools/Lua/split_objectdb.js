#!/usr/bin/env node
'use strict';

const fs = require('fs');
const path = require('path');
const os = require('os');
const crypto = require('crypto');
const { spawnSync } = require('child_process');
const MAX_OBJECTS = 700;
const MIN_OBJECTS = 20;
const RANGE_SIZES = [10000n, 1000n, 100n];
const MAX_ID = BigInt(Number.MAX_SAFE_INTEGER);
const usage = 'Usage: node .contrib/.tools/Lua/split_objectdb.js <input_file> [output_dir]';

// This scanner recognizes Lua's strings and comments so their punctuation never
// affects table boundaries. It deliberately does not evaluate or validate Lua.
class Scanner {
	constructor(text) { this.text = text; this.pos = text.charCodeAt(0) === 0xfeff ? 1 : 0; }
	error(message) { throw new Error(`${message} (at character ${this.pos + 1})`); }
	longOpen(pos) {
		const match = /^\[(=*)\[/.exec(this.text.slice(pos));
		return match && { open: match[0], close: `]${match[1]}]` };
	}
	longEnd(pos, delimiter) {
		const end = this.text.indexOf(delimiter.close, pos + delimiter.open.length);
		if (end < 0) this.error('Unterminated long string or comment');
		return end + delimiter.close.length;
	}
	next() {
		const s = this.text;
		while (this.pos < s.length) {
			if (/\s/.test(s[this.pos])) { this.pos++; continue; }
			if (s.startsWith('--', this.pos)) {
				const start = this.pos;
				this.pos += 2;
				const delimiter = this.longOpen(this.pos);
				if (delimiter) this.pos = this.longEnd(this.pos, delimiter);
				else {
					while (this.pos < s.length && s[this.pos] !== '\n' && s[this.pos] !== '\r') this.pos++;
				}
				if (/^--\s*#/.test(s.slice(start, this.pos))) this.error('ATT preprocessor directives are unsupported');
				continue;
			}
			break;
		}
		const start = this.pos;
		if (start >= s.length) return { value: '', start, end: start };
		const ch = s[this.pos];
		if (ch === '"' || ch === "'") {
			this.pos++;
			let closed = false;
			while (this.pos < s.length) {
				const c = s[this.pos++];
				if (c === ch) { closed = true; break; }
				if (c === '\\') {
					if (this.pos >= s.length) break;
					if (s[this.pos] === '\r' && s[this.pos + 1] === '\n') this.pos += 2;
					else this.pos++;
				} else if (c === '\n' || c === '\r') this.error('Unterminated quoted string');
			}
			if (!closed) this.error('Unterminated quoted string');
		} else {
			const delimiter = this.longOpen(this.pos);
			if (delimiter) this.pos = this.longEnd(this.pos, delimiter);
			else {
				const word = /^[A-Za-z_][A-Za-z_0-9]*|^\d+/.exec(s.slice(this.pos));
				this.pos += word ? word[0].length : 1;
			}
		}
		return { value: s.slice(start, this.pos), start, end: this.pos };
	}
	expect(value) {
		const token = this.next();
		if (token.value !== value) this.error(`Expected ${JSON.stringify(value)}, found ${JSON.stringify(token.value)}`);
		return token;
	}
}

function parse(text, allowEmpty = false) {
	// ATT's preprocessor scans this literal marker even inside strings/comments.
	// Splitting or discarding surrounding text could change its flavor behavior.
	if (text.includes('-- #')) throw new Error('ATT preprocessor directives are unsupported');
	const scan = new Scanner(text);
	for (const token of ['local', 'ObjectDB', '=', 'ObjectDB', ';', 'for', 'objectID', ',', 'objectData', 'in', 'pairs', '(', '{']) scan.expect(token);
	const objects = new Map();
	let token = scan.next();
	while (token.value !== '}') {
		if (token.value !== '[') scan.error('Expected a top-level [ID] entry');
		const start = token.start;
		token = scan.next();
		if (!/^\d+$/.test(token.value)) scan.error('Object ID must be a nonnegative integer');
		const id = BigInt(token.value);
		if (id > MAX_ID) scan.error('Object ID exceeds the safe integer limit');
		if (objects.has(id)) scan.error(`Duplicate object ID ${id}`);
		scan.expect(']'); scan.expect('='); scan.expect('{');
		const stack = ['}'];
		let end;
		while (stack.length) {
			token = scan.next();
			if (!token.value) scan.error('Incomplete object entry');
			if (token.value === '{') stack.push('}');
			else if (token.value === '(') stack.push(')');
			else if (token.value === '[') stack.push(']');
			else if (token.value === '}' || token.value === ')' || token.value === ']') {
				if (token.value !== stack.pop()) scan.error('Unbalanced object entry');
			}
			end = token.end;
		}
		objects.set(id, text.slice(start, end));
		token = scan.next();
		if (token.value === ',') token = scan.next();
		else if (token.value !== '}') scan.error('Expected a comma or the end of the table');
	}
	if (!objects.size && !allowEmpty) scan.error('Object table is empty');
	for (const expected of [')', 'do', 'ObjectDB', '[', 'objectID', ']', '=', 'objectData']) scan.expect(expected);
	token = scan.next();
	if (token.value === ';') token = scan.next();
	if (token.value !== 'end') scan.error('Expected the end of the ObjectDB wrapper');
	if (scan.next().value) scan.error('Unexpected content after ObjectDB wrapper');
	return objects;
}

const FORMAT = 'ATT ObjectDB';
const ENV_LUA = 'ATT_LUA51';
const filename = (start, width) => `ObjectDB_${String(start).padStart(5, '0')}_${String(start + BigInt(width) - 1n).padStart(5, '0')}.lua`;
const sortIds = ids => [...ids].sort((a, b) => a < b ? -1 : a > b ? 1 : 0);
function compile(text, label) {
	const result = spawnSync(process.env[ENV_LUA] || 'lua5.1', ['-e', 'if _VERSION ~= "Lua 5.1" then io.stderr:write("Lua 5.1 required\\n"); os.exit(1) end; local s=io.read("*a"); local f,e=loadstring(s); if not f then io.stderr:write(e); os.exit(1) end'], { input: text.replace(/^\ufeff/, ''), encoding: 'utf8', maxBuffer: 1024 * 1024 });
	if (result.error || result.status !== 0) throw new Error(`Lua 5.1 compilation failed for ${label}: ${result.error ? result.error.message : result.stderr}`);
}
function manifestText(leaves) {
	return JSON.stringify({ format: FORMAT, version: 1, partitions: leaves.map(p => ({ start: String(p.start), width: p.width })) }, null, 2) + '\n';
}
function fingerprint(dir) {
	const hash = crypto.createHash('sha256');
	for (const name of fs.readdirSync(dir).sort()) { hash.update(name + '\0', 'utf8'); hash.update(fs.readFileSync(path.join(dir, name))); }
	return hash.digest('hex');
}
function loadStore(dir, relaxed = false) {
	const manifest = JSON.parse(fs.readFileSync(path.join(dir, 'manifest.json'), 'utf8'));
	if (!manifest || manifest.format !== FORMAT || manifest.version !== 1 || !Array.isArray(manifest.partitions)) throw new Error('Unsupported ObjectDB manifest');
	const leaves = manifest.partitions.map(p => {
		if (!p || typeof p.start !== 'string' || !/^(0|[1-9]\d*)$/.test(p.start) || ![100, 1000, 10000].includes(p.width)) throw new Error('Invalid partition');
		const start = BigInt(p.start);
		if (start / 10000n * 10000n > MAX_ID || start % BigInt(p.width)) throw new Error('Invalid partition alignment or ID');
		return { start, width: p.width };
	});
	let lastEnd = -1n;
	const roots = new Map();
	for (const leaf of leaves) {
		if (leaf.start <= lastEnd) throw new Error('Unsorted or overlapping partitions');
		lastEnd = leaf.start + BigInt(leaf.width) - 1n;
		const root = leaf.start / 10000n * 10000n;
		roots.set(root, (roots.get(root) || 0) + leaf.width);
	}
	for (const width of roots.values()) if (width !== 10000) throw new Error('Incomplete root partition');
	const expected = new Set(['manifest.json', ...leaves.map(p => filename(p.start, p.width))]);
	const names = fs.readdirSync(dir);
	if (names.some(name => !expected.has(name)) || expected.size !== names.length) throw new Error('Unknown or missing managed files');
	const objects = new Map();
	for (const leaf of leaves) {
		const name = filename(leaf.start, leaf.width);
		const text = fs.readFileSync(path.join(dir, name), 'utf8');
		compile(text, name);
		const entries = parse(text, true);
		if (!relaxed && entries.size > MAX_OBJECTS) throw new Error(`Capacity exceeded: ${name}`);
		for (const [id, entry] of entries) {
			if (objects.has(id)) throw new Error(`Duplicate object ID ${id}`);
			if (!relaxed && (id < leaf.start || id >= leaf.start + BigInt(leaf.width))) throw new Error(`Object ID ${id} outside ${name}`);
			objects.set(id, entry);
		}
	}
	return { leaves, objects };
}
function plan(objects, existing) {
	let leaves = existing.map(p => ({ ...p }));
	const roots = new Set(leaves.map(p => String(p.start / 10000n * 10000n)));
	for (const id of objects.keys()) {
		const root = id / 10000n * 10000n;
		if (!roots.has(String(root))) { roots.add(String(root)); leaves.push({ start: root, width: 10000 }); }
	}
	const ids = sortIds(objects.keys());
	for (let i = 0; i < leaves.length; i++) {
		const leaf = leaves[i];
		const count = ids.filter(id => id >= leaf.start && id < leaf.start + BigInt(leaf.width)).length;
		if (count > MAX_OBJECTS) {
			if (leaf.width === 100) throw new Error('Cannot subdivide overloaded partition');
			const width = leaf.width / 10;
			const children = Array.from({ length: 10 }, (_, n) => ({ start: leaf.start + BigInt(n * width), width }));
			leaves.splice(i, 1, ...children); i--;
		}
	}
	leaves.sort((a, b) => a.start < b.start ? -1 : a.start > b.start ? 1 : 0);
	return leaves.map(leaf => {
		const members = ids.filter(id => id >= leaf.start && id < leaf.start + BigInt(leaf.width));
		return { ...leaf, members, content: 'local ObjectDB = ObjectDB; for objectID,objectData in pairs({\n' + members.map(id => objects.get(id) + ',\n').join('') + '})\ndo ObjectDB[objectID] = objectData; end\n' };
	});
}
function lockPath(store) { return path.join(path.dirname(path.resolve(store)), '.ObjectDB.lock'); }
function withLock(store, operation) {
	const lock = lockPath(store);
	if (fs.existsSync(lock + '.journal')) throw new Error('An ObjectDB transaction journal requires explicit recovery');
	const owner = { pid: process.pid, host: os.hostname(), token: crypto.randomBytes(16).toString('hex') };
	let descriptor;
	try { descriptor = fs.openSync(lock, 'wx'); }
	catch (e) { if (e.code === 'EEXIST') throw new Error(`ObjectDB is locked: ${lock}; recover only after confirming no operation is running`); throw e; }
	try { fs.writeFileSync(descriptor, JSON.stringify(owner)); }
	finally { fs.closeSync(descriptor); }
	let release = true;
	try {
		if (fs.existsSync(lock + '.journal')) throw new Error('An ObjectDB transaction journal requires explicit recovery');
		return operation(lock, owner);
	}
	catch (e) { if (fs.existsSync(lock + '.journal')) release = false; throw e; }
	finally { if (release) fs.rmSync(lock); }
}
function inside(child, parent) {
	const relative = path.relative(parent, child);
	return relative === '' || (!relative.startsWith('..' + path.sep) && relative !== '..' && !path.isAbsolute(relative));
}
function stagingParent(store) {
	const parent = fs.realpathSync(process.env.ATT_OBJECTDB_TMP || os.tmpdir());
	const target = path.join(fs.realpathSync(path.dirname(path.resolve(store))), path.basename(store));
	const shared = path.basename(path.dirname(target)).toLowerCase() === 'objects' ? path.dirname(path.dirname(target)) : null;
	if (parent.split(path.sep).includes('.db') || inside(parent, target) || (shared && inside(parent, shared)))
		throw new Error('ObjectDB staging must be outside the parsed data tree and canonical store');
	return parent;
}
function sameOwner(a, b) {
	return a && b && Number.isSafeInteger(a.pid) && a.pid > 0 && a.pid === b.pid &&
		a.host === b.host && typeof a.token === 'string' && /^[0-9a-f]{32}$/.test(a.token) && a.token === b.token;
}
function recoveryJournal(store) {
	const lock = lockPath(store), file = lock + '.journal';
	if (!fs.existsSync(lock) || !fs.existsSync(file)) throw new Error('No recoverable transaction journal; inspect the lock before removing it manually');
	const owner = JSON.parse(fs.readFileSync(lock, 'utf8'));
	const j = JSON.parse(fs.readFileSync(file, 'utf8'));
	if (j.version !== 1 || !sameOwner(owner, j.owner) || owner.host !== os.hostname()) throw new Error('Invalid or remote ObjectDB transaction owner');
	try { process.kill(owner.pid, 0); throw new Error('ObjectDB transaction owner is still running'); }
	catch (e) { if (e.code !== 'ESRCH') throw e; }
	if (j.store !== path.resolve(store) || typeof j.work !== 'string' || !path.isAbsolute(j.work) ||
		!path.basename(j.work).startsWith('att-objectdb-') || j.stage !== path.join(j.work, 'stage') ||
		j.backup !== path.join(j.work, 'backup') || inside(j.work, j.store) || inside(j.store, j.work)) throw new Error('Invalid recovery journal paths');
	if (!fs.existsSync(j.work)) {
		if (!fs.existsSync(j.store) || typeof j.plannedHash !== 'string' || !/^[0-9a-f]{64}$/.test(j.plannedHash) || fingerprint(j.store) !== j.plannedHash) throw new Error('Missing recovery work directory without a proven installed store');
		return { lock, file, j };
	}
	if (!fs.lstatSync(j.work).isDirectory() || fs.lstatSync(j.work).isSymbolicLink()) throw new Error('Invalid recovery work directory');
	const marker = JSON.parse(fs.readFileSync(path.join(j.work, 'transaction.json'), 'utf8'));
	if (marker.store !== j.store || !sameOwner(marker.owner, owner)) throw new Error('Recovery directory ownership does not match journal');
	const allowed = new Set(['transaction.json', 'stage', 'backup']);
	if (fs.readdirSync(j.work).some(name => !allowed.has(name))) throw new Error('Unexpected files in recovery directory; manual inspection required');
	for (const directory of [j.stage, j.backup]) if (fs.existsSync(directory) && (!fs.lstatSync(directory).isDirectory() || fs.lstatSync(directory).isSymbolicLink())) throw new Error('Invalid recovery directory');
	return { lock, file, j };
}
function recover(store) {
	const { lock, file, j } = recoveryJournal(store);
	const live = fs.existsSync(j.store), staged = fs.existsSync(j.stage), backed = fs.existsSync(j.backup);
	if (live && staged && backed) throw new Error('Ambiguous recovery state; manual inspection required');
	if (!live && backed) fs.renameSync(j.backup, j.store);
	else if (!live && !staged) throw new Error('No store, stage or backup available; manual recovery required');
	// A live store with no stage has crossed the publication boundary: retain it.
	fs.rmSync(j.work, { recursive: true, force: true }); fs.rmSync(file); fs.rmSync(lock);
	console.log('Recovery complete');
}
function publish(store, objects, existing, lock, owner) {
	const chunks = plan(objects, existing);
	for (const chunk of chunks) compile(chunk.content, filename(chunk.start, chunk.width));
	const work = fs.mkdtempSync(path.join(stagingParent(store), 'att-objectdb-'));
	const target = path.resolve(store), stage = path.join(work, 'stage'), backup = path.join(work, 'backup');
	let committed = false, moved = false;
	const journal = lock + '.journal';
	try {
		if (fs.statSync(work).dev !== fs.statSync(path.dirname(target)).dev) throw new Error('Staging must be on the same filesystem; set ATT_OBJECTDB_TMP to a suitable directory');
		fs.writeFileSync(path.join(work, 'transaction.json'), JSON.stringify({ store: target, owner }), { flag: 'wx' });
		fs.mkdirSync(stage);
		for (const chunk of chunks) fs.writeFileSync(path.join(stage, filename(chunk.start, chunk.width)), chunk.content, 'utf8');
		fs.writeFileSync(path.join(stage, 'manifest.json'), manifestText(chunks), 'utf8');
		fs.writeFileSync(journal, JSON.stringify({ version: 1, store: target, work, stage, backup, owner, plannedHash: fingerprint(stage) }), { flag: 'wx' });
		if (fs.existsSync(target)) { fs.renameSync(target, backup); moved = true; }
		fs.renameSync(stage, target); committed = true;
	} catch (e) {
		if (!committed && moved && !fs.existsSync(target)) fs.renameSync(backup, target);
		if (!committed) { fs.rmSync(work, { recursive: true, force: true }); fs.rmSync(journal, { force: true }); }
		throw e;
	}
	// Publication is committed. Cleanup errors retain the journal and lock for
	// explicit recovery; they do not reverse a successfully installed store.
	fs.rmSync(work, { recursive: true }); fs.rmSync(journal);
	console.log(`Published ${objects.size} objects in ${chunks.length} partitions`);
	for (const chunk of chunks) if (chunk.members.length < MIN_OBJECTS) console.warn(`Warning: ${filename(chunk.start, chunk.width)} has ${chunk.members.length} objects`);
}
function main(args) {
	if (args[0] === '--recover' && args.length === 2) return recover(args[1]);
	if (args[0] === '--check' && args.length === 2) return withLock(args[1], () => { const s = loadStore(args[1]); console.log(`Validated ${s.objects.size} objects in ${s.leaves.length} partitions`); });
	if (args[0] === '--repartition' && args.length === 2) return withLock(args[1], (lock, owner) => { const s = loadStore(args[1], true); publish(args[1], s.objects, s.leaves, lock, owner); });
	if (args[0] === '--update' && (args.length === 3 || (args.length === 4 && args[3] === '--allow-removals') || (args.length === 5 && args[3] === '--expect-sha256' && /^[0-9a-f]{64}$/.test(args[4])))) return withLock(args[2], (lock, owner) => {
		const s = loadStore(args[2]); if (args[3] === '--expect-sha256' && fingerprint(args[2]) !== args[4]) throw new Error('ObjectDB changed since the consolidation snapshot'); const input = fs.readFileSync(args[1], 'utf8'); compile(input, args[1]); const objects = parse(input, true);
		if (args[3] !== '--allow-removals') for (const id of s.objects.keys()) if (!objects.has(id)) throw new Error(`Update omits existing ID ${id}; use --allow-removals for intentional deletions`);
		publish(args[2], objects, s.leaves, lock, owner);
	});
	if (args.length < 1 || args.length > 2 || args[0].startsWith('-')) throw new Error(usage + '\nCommands: --check STORE | --repartition STORE | --update INPUT STORE [--allow-removals] | --recover STORE');
	const input = fs.readFileSync(args[0], 'utf8'); compile(input, args[0]); const objects = parse(input);
	const store = args[1] || './output';
	fs.mkdirSync(path.dirname(path.resolve(store)), { recursive: true });
	return withLock(store, (lock, owner) => {
		if (fs.existsSync(store) && (!fs.statSync(store).isDirectory() || fs.readdirSync(store).length)) throw new Error('Output directory must be new or empty');
		publish(store, objects, [], lock, owner);
	});
}
try { main(process.argv.slice(2)); }
catch (error) { console.error(`Error: ${error.message}`); process.exitCode = 1; }
