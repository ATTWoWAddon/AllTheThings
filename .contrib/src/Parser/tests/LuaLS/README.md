# Conditional LuaLS fixtures

These small, independent workspaces illustrate how treating Parser directives as
Lua comments affects diagnostics. `raw/phase-text.lua` wraps the exact text from
[`Phases.lua` lines 304–318](../../../../.db/shared/lib/Constants/Phases.lua#L304-L318)
at baseline `42ec7530b662b22707a3c5ca9e183886c8d2afac` in a local table. `after-df` and `before-df` are manually selected views of that
same slice, with removed lines left blank so the examples retain matching line
numbers. They are not output from the Parser or a test of its preprocessor.

Each example also contains an intentionally invalid string assignment to an
`integer` variable. This negative control is unrelated to conditional selection
and must remain visible in all three cases. The fixture files are not part of
LuaRegression's automatically executed tests.

`expected.json` records the complete expected diagnostics for LuaLS 3.19.2
with each workspace's `.luarc.json`. Lines and columns use 1-based display
coordinates derived from LSP UTF-16 start positions; a tab counts as one character. The raw case has two
`duplicate-index` diagnostics and the type mismatch. Each manually selected case
has only the type mismatch. These expectations describe this isolated setup;
they do not describe the diagnostics enabled in the repository's normal LuaLS
configuration.

## Run the fixture checks

From the repository root, provide paths to a Lua 5.1 interpreter and LuaLS
3.19.2. No local executable paths are assumed:

```sh
python3 .contrib/src/Parser/tests/LuaLS/verify.py --lua /path/to/lua5.1 --lua-ls /path/to/lua-language-server
python3 .contrib/src/Parser/tests/LuaLS/verify.py --lua /path/to/lua5.1 --lua-ls /path/to/lua-language-server --reverse
```

The script checks the tool versions, compiles each example using Lua 5.1, and
runs LuaLS in separate temporary workspaces. It checks each reported file URI,
diagnostic code and start position against `expected.json`, including the type
error control. LuaLS may exit nonzero when expected diagnostics are present;
the script reads the report instead of treating that exit status as success or
failure on its own. Temporary workspaces, metadata and logs are removed after
the run.

These checks cover only the isolated fixture behavior. They do not invoke the
Parser, validate its preprocessing, or test Windows import paths.
