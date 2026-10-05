# Repository text hygiene

Git attributes define LF checkout for normal text and PowerShell, and CRLF for
`.bat` and `.cmd`. Git stores text with LF regardless of contributors'
`core.autocrlf` settings. Editors use UTF-8 without BOM and a single final newline.
Intentionally empty files stay empty.

Run these read-only checks from the repository root with Python 3.10 or newer:

```sh
python .contrib/file-hygiene/check_file_hygiene.py --index
python -m unittest discover -s .contrib/file-hygiene -p 'test_*.py' -v
```

Without `--index`, the checker validates working-tree bytes and Git modes. With
`--index`, it also checks stored blobs, including LF storage for Windows command
scripts. Supplying tracked filenames limits content checks; index conflict stages
and filename/directory case conflicts are always checked across all tracked paths.
The checker reports errors without changing files, Git configuration, or the index.
It batches Git attributes and reads one index blob at a time.

Explicit binary attributes are respected. For other files the checker uses Git's
first-8,000-byte NUL heuristic, with encoding checks for known text extensions and
UTF BOMs so UTF-16 text cannot silently bypass validation.

The pre-commit configuration includes upstream fixers for trailing whitespace,
final newlines and UTF-8 BOM, plus checks for merge markers, case conflicts,
executable modes and canonical text. Install pre-commit 3.2 or newer to use these
hooks; the pinned upstream hooks require Python 3.10 or newer. Existing Python
formatting and lint hooks retain their settings. The strict local check examines
the worktree because fixer changes must be restaged before stored blobs are valid.
A missing newline in a `.bat` or `.cmd` file should be restored as CRLF.

Trailing whitespace remains permitted in these established paths:

- `.config/.exports/**`
- `.contrib/Harvesters/**`
- `.contrib/Debugging/**`
- root `AGENTS.md`
- root `README.md`

The two root Markdown files retain trailing spaces used for hard breaks. No other
Markdown path is exempt. Trailing spaces are also permitted in
`.contrib/.db/standard/.config/.wago/**/*.csv`: these raw imports contain
multiline quoted localization values whose trailing spaces are part of the source
value. Trimming them changes data. These exceptions skip only trailing-whitespace
findings; EOL, encoding, BOM, final-newline and conflict-marker checks still apply
to every exception path. Whitespace-only final blank lines are rejected.

The File Hygiene workflow tests fresh file materialization on Linux, Windows,
and macOS under `core.autocrlf=false`, `true`, and `input`. It runs the checker and
regression tests and confirms that tracked files remain unchanged. A separate job
runs offline Python and C# generator fixtures on all three platforms, with C#
build outputs directed into the runner temporary directory. The validator tests
use temporary Git repositories and cover invalid encoding, EOL, EOF, DOS EOF
markers, binary attributes, path case, unmerged stages and executable modes.

The Parser and Release workflows build Parser from the selected checkout's
source into `.contrib/.builds/parser/`, then keep the existing `.tools` working
directory for relative configuration paths. Historical rebuilds use the selected
commit's tracked Csv.dll for the older ignored package path. The committed
prebuilt Parser.exe remains unchanged; run a source build to obtain the new
formatting locally. MSBuild discovery follows the [official vswhere guide](https://github.com/microsoft/vswhere/wiki/Find-MSBuild).

Run the offline generator fixtures with:

```sh
python -m pip install -r .contrib/generator-tests/requirements.txt
python -m unittest discover -s .contrib/generator-tests -p 'test_python_generators.py' -v
dotnet run --project .contrib/generator-tests/TextFile.Tests.csproj \
  -p:BaseIntermediateOutputPath=/tmp/att-generator-tests/obj/ \
  -p:OutputPath=/tmp/att-generator-tests/bin/
```

Use a suitable temporary directory for the C# output on Windows. The C# fixtures
require .NET 8 and test the shared writer used by legacy and modern generators.
Full Parser generation needs Windows and its native Lua dependency. Compiling
Parser with .NET Framework reference assemblies on macOS verifies source
compatibility, but does not run that native pipeline. Report full regeneration
separately; it has not been executed as part of the local normalization checks.
