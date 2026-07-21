# Contributor Tools

## Normalize Lua localization tables

`normalize-lua-table.js` normalizes localization tables in a Lua data file. It is intended for contributors who edit `text`, `description`, or `lore` tables in the parser data.

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
node .contrib/.tools/normalize-lua-table.js "path/to/data-file.lua"
```

For example:

```sh
node .contrib/.tools/normalize-lua-table.js ".contrib/Parser/DATAS/00 - DB/ObjectDB.lua"
```

### Example

Input:

```lua
text = {
	en = "Example",
	fr = "Exemple",
}
```

Output:

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

An English-only table remains compact:

```lua
text = {
	en = "English only",
}
```

### Safety and limitations

The tool edits the selected file in place and does not create a backup. Commit or stash unrelated work first, then review the complete diff after it runs.

Use it only on localization tables containing one locale assignment per line, for example `de = "..."`, `-- de = "..."`, or `-- TODO: de = "..."`. Blank lines and content that is not recognized as a locale assignment are not retained inside a matched table.

To inspect the result:

```sh
git diff -- "path/to/data-file.lua"
git diff --check
```

If the result is not expected, restore it with your normal Git workflow before making additional edits.
