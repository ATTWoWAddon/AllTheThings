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
