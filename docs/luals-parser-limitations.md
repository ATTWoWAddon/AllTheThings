# Parser directives and Lua language analysis

ATT's data files use Parser directives written as Lua comments. Lua language
servers see the comments but do not automatically apply the Parser's conditional
selection. Consequently, the source visible to an analyzer can contain code from
multiple mutually exclusive configurations. The behavior described below comes
from the Parser source; it does not by itself establish which diagnostics a
particular language server will report.

## Directive processing

Before executing a data file, the Parser scans its text for the literal substring
`-- #`. This is a text scan, not a Lua lexer: the substring is significant even
when it appears somewhere other than an ordinary directive comment. Command text
is trimmed, converted to uppercase and split on literal space characters.
Repeated spaces retain empty tokens; interior tabs are not space separators.
The implementation is
in [`ProcessContent` and `ProcessInitialCommandBlock`](../.contrib/src/Parser/Program.cs#L821-L888).

A conditional block starts with `-- #IF ...`, and may contain nested `IF`
blocks and `ELIF`, `ELSEIF`, or `ELSE` branches before its closing directive.
For example:

```lua
-- #IF ANYCLASSIC
local category = classicCategory
-- #ELSE
local category = retailCategory
-- #ENDIF
```

The Parser writes only the selected branch to the content it executes. Plain Lua
analysis instead sees both declarations because each directive is a comment.
Condition evaluation is implemented in [`ProcessCommand`](../.contrib/src/Parser/Program.cs#L890-L970):

- A tag present in `PreProcessorTags` is true. `NOT` negates the following condition.
- `BEFORE` compares the current phase or patch strictly below the given value;
  `AFTER` compares greater than or equal to it. The operand is treated as a
  phase when it appears in the Parser's phase map, otherwise as a patch version.
- A recognized phase name used alone matches the current phase name.
  Unrecognized tag/phase conditions evaluate to false; malformed
  `IF`/`NOT`/`BEFORE`/`AFTER` forms can throw. This is not a general
  macro-expression language.

The implementation has distinct behavior for unknown directives depending on
where they appear. At the top level, a command other than `IF` or `IMPORT:`
raises a malformed-command exception. Inside a conditional, a command other
than nested `IF`, `ELIF`, `ELSEIF`, or `ELSE` ends the current block, including
normal `ENDIF` and nonstandard closing text. See
[`ProcessInternalCommandBlock`](../.contrib/src/Parser/Program.cs#L1013-L1057).
Do not assume that every accepted closing token is a supported spelling, or
silently replace this behavior with stricter parsing when comparing results.

`-- #IMPORT: ...` is also supported at the top level. It reads a file or sorted
Lua files from a directory relative to the configured data root, recursively
processes the imported contents, and wraps each imported file in a function.
The implementation also sets and clears `CurrentSubFileName`; see
[`ProcessImportCommand`](../.contrib/src/Parser/Program.cs#L972-L1011). A source
inventory of the current checkout found no Lua `#IMPORT` directives; this does
not remove the Parser's support for them. Import operands have already been
uppercased with the command, and the implementation converts the data-root path
to backslashes; identical path behavior on other platforms is not established.

## Configuration and file loading

A selected flavor alone does not fully determine the branches. Parser loads the
[shared root config](../.contrib/.db/shared/.config/root.config), an optional
`baseconfig`, then the selected `config`, which defaults to
[Retail](../.contrib/.db/standard/.config/retail/retail.config). Debug builds
also load the shared debug config. See [Parser initialization](../.contrib/src/Parser/Program.cs#L247-L315).
Configuration objects are merged, but arrays are replaced by the later config,
not combined; see [`CustomConfigurationNode.ApplyData`](../.contrib/src/Parser/CustomConfiguration.cs#L213-L243).

`PreProcessorTags`, `DataPhase`, and `DataPatch` control conditional selection.
The Parser caches tags on first access, while `DataPhase` and `DataPatch` set
the current phase and version using the Parser's phase map. See
[`PreProcessorTags`](../.contrib/src/Parser/Framework/Framework.cs#L312-L328),
[`ApplyConfigSettings`](../.contrib/src/Parser/Framework/Framework.cs#L811-L833),
and the [phase map](../.contrib/src/Parser/Framework/Framework.cs#L56-L81).
When comparing configurations, use the complete effective settings and isolate
Parser processes so cached state from one configuration does not affect another.
For example, [Classic Era](../.contrib/.db/standard/.config/classic/01%20-%20Classic%20Era.config)
and [Forever](../.contrib/.db/forever/.config/forever.config) specify different
phases, patches and tags; Forever also selects a different data root.

The Parser sorts and loads shared Lua files first, then data-root `.config` Lua
files, then the remaining data files. The `.config` path test uses Windows-style
separators, so this is not proof of the same loading order on other platforms.
It preprocesses each file, executes it in
Lua and merges the result. See [file loading](../.contrib/src/Parser/Program.cs#L459-L500),
[contributor data loading](../.contrib/src/Parser/Program.cs#L554-L560), and
[`ParseLUAFile`](../.contrib/src/Parser/Program.cs#L1097-L1109). An individual
file's analysis therefore does not automatically reproduce the Parser's loaded
global context.

## Source positions

Preprocessing removes inactive text and trims text around directives. Imported
files are inserted into the processed content with additional wrappers and
assignments. The resulting line numbers can differ from those in the original
files, and the current processing path does not emit a source map. Diagnostics
on processed text must not be assumed to point to the corresponding original
file and line.

## Conditional code in static analysis

The Parser selects only one branch of a conditional, while LuaLS sees the
unprocessed source as ordinary Lua. For example,
[`Phases.lua`](../.contrib/.db/shared/lib/Constants/Phases.lua#L304-L318)
assigns the `en` key in both sides of an `AFTER DF` conditional. In a small
[isolated fixture](../.contrib/src/Parser/tests/LuaLS/README.md), LuaLS 3.19.2
reports two `duplicate-index` diagnostics on the raw slice. Each manually
selected branch removes those two diagnostics while retaining an intentional
`assign-type-mismatch` control. The selected views are hand-edited examples,
not output from the Parser; the experiment does not validate preprocessing.
The fixture enables diagnostics independently of the repository's normal
configuration, which disables `duplicate-index`.

Conditional definitions can also affect inferred behavior: for example,
[`Shortcuts.lua`](../.contrib/.db/shared/functions/Shortcuts.lua#L1348-L1395)
defines Classic and non-Classic implementations of helpers in mutually exclusive
branches. Treating both branches as ordinary Lua may infer the wrong behavior
for a particular configuration. This is a source-based risk; the fixture does
not demonstrate a LuaLS diagnostic for those helpers.

## Approaches to flavor-aware analysis

| Approach | Benefit | Main limitation |
| --- | --- | --- |
| Analyze raw sources | No transformation or source mapping is required. | LuaLS sees every conditional branch; selecting files alone cannot select branches within a file. |
| Generate an isolated analysis workspace | An explicit configuration can supply a selected view without an editor plugin. | A generator needs Parser-equivalent selection, import handling and mappings back to original sources. Its output can become stale. |
| Use an opt-in [`OnSetText` plugin](https://luals.github.io/wiki/plugins/#onsettext) | LuaLS can analyze transformed text while retaining the original document URI. | The plugin needs compatible transformations and position mapping, and an import can introduce text originating from another URI. |

These are alternatives to evaluate, not interchangeable analysis contexts. LuaLS
[`workspace.library`](https://luals.github.io/wiki/settings/#workspacelibrary)
adds files to the semantic environment even when diagnostics for library files
are disabled; it is not a separate namespace. An analysis workspace should
include only one appropriate copy of each definition, rather than loading both
raw and generated files or mixing incompatible flavor-specific definitions.

For generated files, navigation and diagnostics need a mapping from generated
URIs and positions to the original files, including imported files. For the
plugin approach, the documented diff-table form uses byte offsets. In LuaLS
3.19.2, the [file processing implementation](https://github.com/LuaLS/lua-language-server/blob/3.19.2/script/files.lua)
records diff information for a successfully merged diff table; returning a
whole replacement string does not provide that same diff mapping. Even a mapped
original URI does not identify the source of text imported from another file.
Any mapping needs verification for multibyte text, CRLF, removed or inserted
text, and diagnostic related locations.

A plugin failure or unsuccessful diff merge can leave LuaLS analyzing the
original text. A diagnostic report alone therefore does not prove that a flavor
transformation was applied. A future integration should make the applied
profile observable and track source, imports, Parser version and effective
config so changed inputs cannot silently reuse stale output.

No generator or plugin is adopted here. Before adopting either, compare its
selection and error behavior with the actual Parser for the same isolated
configuration, including imports; the manually selected fixture above is not
such an equivalence test.

## Compatibility with the Parser

The [fixture checks](../.contrib/src/Parser/tests/LuaLS/README.md) exercise Lua
5.1 syntax and LuaLS diagnostics on small isolated examples. They do not run the
Parser or establish that a transformation matches it. This guide and those
fixtures leave Parser code and settings unchanged.

A future transformer must be compared with the actual, version-pinned Parser
preprocessing implementation for the same effective settings, including nested
and alternate branches, tags, phase and patch boundaries, unknown commands, and
imports. Compare both output and error behavior in separately initialized
processes for each configuration. Import files and directories also require
Windows path checks. Validate diagnostic and navigation positions against
original files, including imported content; matching selected text alone is not
enough. These Parser and Windows checks have not been run by the fixture script.
