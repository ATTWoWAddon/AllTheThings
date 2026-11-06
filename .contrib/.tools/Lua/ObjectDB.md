# Canonical ObjectDB shards

The editable base ObjectDB lives in `.contrib/.db/shared/objects/ObjectDB/`. Its `manifest.json` owns a set of Lua files with stable ID ranges. Dynamic additions and `ObjectDBConditionals.lua` retain their separate roles; the effective Parser database includes those layers as well as the base.

Use [`split_objectdb.js`](split_objectdb.js) to validate, repartition, or publish the base. Temporary complete snapshots are import/export artifacts, not a second editable database.

## Layout and preservation

Manifest version 1 has this shape:

```json
{
    "format": "ATT ObjectDB",
    "version": 1,
    "partitions": [
        { "start": "0", "width": 10000 }
    ]
}
```

`start` is a decimal string. `width` is 10,000, 1,000, or 100; the filename is derived from the inclusive bounds, for example `ObjectDB_00000_09999.lua`. Partitions are sorted, aligned, and nonoverlapping. Each owned 10,000-ID root is completely covered by its leaf partitions.

- A file contains at most 700 objects. An overflowing 10,000-ID leaf becomes all ten 1,000-ID children; an overflowing child becomes all ten 100-ID leaves.
- Existing subdivisions never automatically merge. Empty leaves retain their manifest entries and empty Lua files, so deletion and later refill do not change the established layout.
- IDs are unique across the base and sorted within files. Fewer than 20 objects is a warning, not a requirement to merge files. These thresholds count objects, not bytes or lines.
- Import and repartition preserve the text from each `[ID]` through its matching closing brace, including nested tables, comments, Unicode, and multiline strings. They rebuild the surrounding wrapper and discard comments/whitespace outside entries.

Inputs must use the generated ObjectDB assignment wrapper with nonnegative integer IDs and table values. Unsupported surrounding code, duplicate IDs, unsafe numeric IDs, and ATT preprocessor markers are rejected. The bounded scanner locates entries; a separate Lua 5.1 compilation check validates syntax without executing the input.

## Edit the canonical files

Edit fields directly in the owned Lua file. A name, locale, or model change keeps the same ID and file. An ID correction is an explicit removal and addition. Keep the manifest and empty files; deleting a manifest-owned file is an error.

From the repository root, validate the complete store:

```sh
node .contrib/.tools/Lua/split_objectdb.js --check .contrib/.db/shared/objects/ObjectDB
```

After adding records, changing IDs, or exceeding a file's capacity, repartition:

```sh
node .contrib/.tools/Lua/split_objectdb.js --repartition .contrib/.db/shared/objects/ObjectDB
```

For this operation, a new entry may temporarily be placed in an existing owned file outside its range. Repartition reads all owned entries and routes them to the correct ranges, adding roots or subdividing leaves as needed. Malformed entries, duplicates, missing owned files, and unknown files still fail. Review the complete resulting diff before keeping it.

Removing an entry directly from a canonical file is an explicit source deletion; repartition preserves that edit and retains the empty leaf if necessary. Apply the repository's evidence requirements to actual data additions, corrections, and removals.

## Import a complete snapshot

Create a new store from a complete generated ObjectDB file:

```sh
node .contrib/.tools/Lua/split_objectdb.js /path/to/complete-ObjectDB.lua ./output
```

The destination must be new or empty. It defaults to `./output` when omitted. The input is unchanged.

Replace an existing store from a complete snapshot while retaining its established subdivisions:

```sh
node .contrib/.tools/Lua/split_objectdb.js --update /path/to/complete-ObjectDB.lua .contrib/.db/shared/objects/ObjectDB
```

An update that omits an existing ID fails unless `--allow-removals` is appended for intentional deletions. This guard checks missing IDs; it does not detect omitted fields within a retained record. Every supplied entry is a complete replacement for that ID.

Do not pass an incremental export or a single-flavor view as a complete snapshot. Absence from those inputs does not mean a record or field should be deleted. Syntax validation cannot establish whether an external snapshot is complete.

## Parser and dependencies

Normal Parser loading reads the manifest natively and needs neither Node.js nor an external Lua 5.1 executable. It loads the owned shards at the former `ObjectDB.lua` position relative to Dynamic data and Conditionals. Whole-object assignments recursively retain existing conflicting scalar values, while direct field assignments can replace values; changing file order can therefore change results.

The optional `DoConsolidateObjectDB` path publishes only explicit fields newly recorded by the object harvester, excluding runtime objects marked `dynamic`. It retains other base IDs and fields; it does not fold the effective Parser view, Dynamic files, or Conditionals into the base. With no eligible harvested changes, it does nothing. Publication uses a complete temporary snapshot through the Node tool and rejects a store changed since that snapshot was read.

Checking, repartitioning, importing, and consolidation publishing require:

- Node.js available as `node`.
- Lua 5.1 available as `lua5.1`, or an executable path set in `ATT_LUA51`. The tool checks `_VERSION`; another Lua version is rejected.
- A writable temporary directory on the same filesystem as the store. `ATT_OBJECTDB_TMP` selects a different temporary parent when necessary. Keep it outside the parsed data trees.

Consolidation retains untouched entry text and serializes entries receiving harvested changes as Lua literals; comments and formatting inside those changed entries may change. Use the matching rebuilt Parser executable with this storage format. The cache contributor tool reads the same manifest-owned base files and continues to handle Dynamic and conditional data separately. Windows PowerShell 5.1 uses the shipped x64 Parser reader and must run as a 64-bit process; PowerShell Core compiles the bundled managed reader source.

## Publication and recovery

Readers and writers coordinate through the sibling `objects/.ObjectDB.lock`. Native readers wait up to 120 seconds for another operation to release the lock, allowing parallel Parser runs to load the shared data in turn. The publisher fails immediately when busy; an interrupted transaction journal requires recovery. Publishing prepares and validates a complete replacement in temporary storage, records a transaction journal, and retains a backup while replacing the directory. The stable source paths remain unchanged for unaffected partitions.

Installing the staged directory is the publication boundary. Handled failures before that point restore the previous store when necessary. A later cleanup failure retains the installed store and leaves recovery information. This is coordinated publication with recovery; it does not promise atomicity across a process crash, power loss, or arbitrary filesystem failure.

After confirming that no Parser, collector, or publisher is still using the store, recover an interrupted transaction with:

```sh
node .contrib/.tools/Lua/split_objectdb.js --recover .contrib/.db/shared/objects/ObjectDB
```

Recovery checks transaction ownership and keeps an installed store or restores its recorded backup when the live directory is missing. An interrupted first import may be abandoned and rerun. Active owners, foreign ownership, or inconsistent recovery state require inspection rather than automatic cleanup. If a lock has no transaction journal, inspect the interrupted operation before removing that stale lock manually. Do not delete a lock belonging to an active operation or remove unrelated files to make a store pass validation.

## Verification and migration evidence

Run the storage regression suite with Node.js 18 or later and Lua 5.1:

```sh
node --test .contrib/.tools/Lua/tests/split-objectdb.test.cjs
```

The native-reader, consolidation, and cache checks additionally require the .NET 8 SDK/runtime and PowerShell Core (`pwsh`):

```sh
node --test .contrib/.tools/Lua/tests/native-objectdb.test.cjs
```

A physical migration must preserve the complete ID set and all values. Record the original source revision/hash, compare the original and combined shards under Lua 5.1, and verify unique IDs, range membership, capacity, and empty-leaf behavior. Also compare actual Parser/container behavior with Dynamic and Conditionals and run the affected flavor workflows using the rebuilt executable. Standalone table equivalence alone does not prove correct integrated loading precedence.

For a relocation without record changes, describe that scope and its repository-source evidence accurately in the PR. Actual data changes require the evidence specified by `AGENTS.md`.
