#!/usr/bin/env node
'use strict';

const fs = require('fs');
const path = require('path');
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

function parse(text) {
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
	if (!objects.size) scan.error('Object table is empty');
	for (const expected of [')', 'do', 'ObjectDB', '[', 'objectID', ']', '=', 'objectData']) scan.expect(expected);
	token = scan.next();
	if (token.value === ';') token = scan.next();
	if (token.value !== 'end') scan.error('Expected the end of the ObjectDB wrapper');
	if (scan.next().value) scan.error('Unexpected content after ObjectDB wrapper');
	return objects;
}

function plan(objects) {
	const ids = [...objects.keys()].sort((a, b) => a < b ? -1 : a > b ? 1 : 0);
	const chunks = [];
	let offset = 0;
	while (offset < ids.length) {
		for (const size of RANGE_SIZES) {
			const start = ids[offset] / size * size;
			const end = start + size - 1n;
			let next = offset;
			while (next < ids.length && ids[next] <= end) next++;
			if (next - offset <= MAX_OBJECTS) {
				const pad = n => String(n).padStart(5, '0');
				chunks.push({ ids: ids.slice(offset, next), size, filename: `ObjectDB_${pad(start)}_${pad(end)}.lua` });
				offset = next;
				break;
			}
		}
	}
	return chunks;
}

function run(input, output) {
	console.log(`Reading file: ${input}`);
	const objects = parse(fs.readFileSync(input, 'utf8'));
	const chunks = plan(objects);
	// Resolve and format everything before creating a directory or writing files.
	const files = chunks.map(chunk => ({ ...chunk, content:
		'local ObjectDB = ObjectDB; for objectID,objectData in pairs({\n' +
		chunk.ids.map(id => objects.get(id) + ',\n').join('') +
		'})\ndo ObjectDB[objectID] = objectData; end\n' }));
	if (new Set(files.map(file => file.filename)).size !== files.length) throw new Error('Split plan contains duplicate filenames');
	if (fs.existsSync(output)) {
		if (!fs.statSync(output).isDirectory() || fs.readdirSync(output).length) throw new Error('Output directory must be new or empty');
	} else fs.mkdirSync(output, { recursive: true });
	console.log(`Found ${objects.size} objects; splitting into ${files.length} files`);
	for (const [index, file] of files.entries()) {
		fs.writeFileSync(path.join(output, file.filename), file.content, { encoding: 'utf8', flag: 'wx' });
		const warning = file.ids.length < MIN_OBJECTS ? `; warning: fewer than ${MIN_OBJECTS} objects` : '';
		console.log(`[${index + 1}/${files.length}] ${file.filename} (${file.ids.length} objects, range ${file.size}${warning})`);
	}
	console.log(`Done: ${output}`);
}

const args = process.argv.slice(2);
if (args.length < 1 || args.length > 2 || args.includes('--help') || args.includes('-h')) {
	console.error(usage);
	process.exit(args.length === 1 && (args[0] === '--help' || args[0] === '-h') ? 0 : 1);
}
try { run(args[0], args[1] || './output'); }
catch (error) { console.error(`Error: ${error.message}`); process.exitCode = 1; }
