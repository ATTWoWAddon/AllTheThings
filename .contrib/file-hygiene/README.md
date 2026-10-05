# Repository text hygiene

The checker validates tracked worktree files and, with `--index`, their staged
Git blobs. It is read-only: it does not rewrite files, Git settings, or the index.

It resolves `charset`, `end_of_line`, `trim_trailing_whitespace`, and
`insert_final_newline` with the official EditorConfig Python resolver. Only
effective values are checked; an unset or unspecified property does not acquire
an implicit UTF-8, LF, or no-BOM rule. `utf-8-bom` requires the BOM and `utf-8`
forbids it, based on the resolved property rather than a path list. The checker
honors configured trailing-whitespace and final-newline rules. A configured
final newline means at least one terminator for non-empty files; the
final-newline check allows extra final blank lines and empty files.

Worktree EOL follows effective EditorConfig `end_of_line` and Git `eol`
attributes. If both specify an EOL they must agree; if only one specifies it,
that value is checked. When neither specifies an EOL, the checker imposes no
global newline style. The index check uses cached attributes and staged
EditorConfig policies, but text blobs must always use canonical LF regardless
of the worktree EOL. Explicit Git binary attributes (including `-text`) always
skip text checks. For `text=auto` or unspecified Git text attributes, an
effective EditorConfig charset classifies the file as text before the NUL-byte
heuristic, so declared UTF-16 files are decoded according to that charset. The
worktree and index checks reject different effective EditorConfig normalization
policies for the same text path.

Use Python 3.9 or newer to install the pinned resolver and run the checks from
the repository root:

```sh
python -m pip install -r .contrib/file-hygiene/requirements.txt
python .contrib/file-hygiene/check_file_hygiene.py --index
python -m unittest discover -s .contrib/file-hygiene -p 'test_*.py' -v
```

The local pre-commit hook is check-only and checks the selected worktree files
and staged blobs. It does not run general-purpose formatters or whitespace
fixers.

Existing whitespace exceptions remain defined by `.editorconfig`:

- `.config/.exports/**`, `.contrib/Harvesters/**`, and `.contrib/Debugging/**`
- `AGENTS.md`, `CLAUDE.md`, `README.md`, and `docs/deprecated-wow-api-audit.md`
- `.contrib/db-sync/*.md`
- `.contrib/.tools/README.md` and `.contrib/.tools/TOOLS_ROADMAP.md`
- `.contrib/.db/standard/.config/.wago/**.csv`

These preserve Markdown hard breaks, harvested values, and generated or raw
source content. Wago multiline localized values can contain meaningful trailing
spaces. The checker does not edit these files.

The File Hygiene workflow keeps the existing Linux, Windows, and macOS matrix
with `core.autocrlf=false`, `true`, and `input`. A separate three-platform job
runs generator fixtures. It installs the .NET 10 SDK and constrains SDK
selection in a temporary runner directory with a `10.0.100` minimum and
`latestMinor` roll-forward, then checks that the selected SDK is 10.x. This
allows newer .NET 10 minor releases without pinning one. The C# fixture project
targets `net10.0`.

The Parser and Release workflows build Parser from the selected checkout's
source into `.contrib/.builds/parser/`, then keep `.tools` as the working
directory for relative configuration paths. Full Parser generation still
requires Windows and its native Lua dependency.

The `audit-before.txt` file is a historical baseline snapshot. It describes the
original checkout and does not report the current policy.
