# Contributor Tools

## Normalize Lua localization tables

[`Lua/normalize.js`](Lua/normalize.js) normalizes localization tables in a Lua data file. It is intended for contributors who edit `text`, `description`, or `lore` tables in the parser data.

The tool:

- processes every `text`, `description`, and `lore` table in the selected file;
- orders locale keys as `en`, `de`, `es`, `mx`, `fr`, `it`, `ko`, `pt`, `ru`, `cn`, and `tw`;
- adds a commented `TODO` entry for each missing locale;
- preserves existing locale values and existing commented locale entries; and
- leaves an English-only table English-only instead of adding `TODO` entries.

### Requirements

- [Node.js](https://nodejs.org/) must be installed and available as `node`.
- To use the included task, open the repository in Visual Studio Code.

### Run from Visual Studio Code

1. Open the Lua file that you want to normalize and make sure it is the active editor.
2. Open the Command Palette.
3. Select **Tasks: Run Task**.
4. Select **Normalize Lua Table**.
5. Wait for the terminal to report that the operation is complete.
6. Review the file's Git diff before keeping the result.

The task uses the active editor's file. Save or switch to the intended file before running it.

### Run from a terminal

From the repository root, run:

```sh
node .contrib/.tools/Lua/normalize.js "path/to/data-file.lua"
```

For example:

```sh
node .contrib/.tools/Lua/normalize.js ".contrib/Parser/DATAS/00 - DB/ObjectDB.lua"
```

### Example

Input:

<!-- editorconfig-checker-disable -->
```lua
text = {
	en = "Example",
	fr = "Exemple",
}
```
<!-- editorconfig-checker-enable -->

Output:

<!-- editorconfig-checker-disable -->
```lua
text = {
	en = "Example",
	-- TODO: de = "",
	-- TODO: es = "",
	-- TODO: mx = "",
	fr = "Exemple",
	-- TODO: it = "",
	-- TODO: ko = "",
	-- TODO: pt = "",
	-- TODO: ru = "",
	-- TODO: cn = "",
	-- TODO: tw = "",
}
```
<!-- editorconfig-checker-enable -->

An English-only table remains compact:

<!-- editorconfig-checker-disable -->
```lua
text = {
	en = "English only",
}
```
<!-- editorconfig-checker-enable -->

### Safety and limitations

The tool edits the selected file in place and does not create a backup. Commit or stash unrelated work first, then review the complete diff after it runs.

Use it only on localization tables containing one locale assignment per line, for example `de = "..."`, `-- de = "..."`, or `-- TODO: de = "..."`. Blank lines and content that is not recognized as a locale assignment are not retained inside a matched table.

To inspect the result:

```sh
git diff -- "path/to/data-file.lua"
git diff --check
```

If the result is not expected, restore it with your normal Git workflow before making additional edits.

## Split a generated ObjectDB

[`Lua/split_objectdb.js`](Lua/split_objectdb.js) splits a generated ObjectDB into sorted Lua modules. It requires [Node.js](https://nodejs.org/) and has been validated with Node.js 24. Run from the repository root:

```sh
node .contrib/.tools/Lua/split_objectdb.js ".contrib/.db/shared/objects/ObjectDB.lua" "./output"
```

The output directory must be new or empty; if omitted, it defaults to `./output`. Keep the output outside the parser data tree: this tool does not integrate the generated modules into ATT. The input is preserved.

The tool accepts the generated `local ObjectDB = ObjectDB; for objectID,objectData in pairs({ ... }) do ObjectDB[objectID] = objectData; end` wrapper, with numeric `[ID] = { ... }` entries; the semicolon before `end` is optional. It preserves entry text, but discards comments and whitespace outside entries. Duplicate IDs, empty tables, ATT preprocessor directives, and other surrounding code are rejected before writing output. The literal `-- #` marker is rejected even inside strings and comments, matching ATT's preprocessor. The scanner checks structure but is not a full Lua syntax validator.

Files contain at most 700 objects in aligned 10,000-, 1,000-, or 100-ID ranges. The greedy ranges can overlap in their filenames, but each ID appears in only one file. Files with fewer than 20 objects produce a warning.

Run the standalone regression checks with Node.js 18 or later:

```sh
node --test .contrib/.tools/Lua/tests/split-objectdb.test.cjs
```
