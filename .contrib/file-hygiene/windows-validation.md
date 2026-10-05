# Windows normalization verification

Verified on Windows 11 through `ssh windows-11` on 2026-10-05.
Implementation tested: `cd7bf05bb9186912d5eb918b700e0a0a1316d22c`.
Original master: `9d46ba4c66d95b62e8bbd6c71bf4309ac1ca59c8`.

The isolated checkout used Git 2.55.0.windows.5, Python 3.12.15, PowerShell
7.6.6, Visual Studio 18 Community MSBuild, .NET Framework 4.8, .NET SDK
10.0.401 and the installed .NET 8.0.31 runtime. Python and test dependencies were placed in the test
folder; user Git settings, PATH and registry were not changed.

## File policy and fixtures

- Fresh Windows file materialization under `core.autocrlf=false`, `true`, and
  `input`: full working-tree/index checks passed and every checkout stayed clean.
- Seven file-hygiene regression tests passed.
- Fourteen offline Python generator fixtures passed.
- C# writer fixtures passed on Windows.
- Parser built from source with the workflow's Release/x64 settings: zero errors
  and three existing warnings. The build uses the checkout's tracked `Csv.dll`
  and runs from `.tools` with the tracked Lua dependencies copied into the
  Parser build output.
- Full index/working-tree hygiene passed after actual Parser generation.

## Actual Parser generation

Each setting below ran twice in sequence. Every output file and shared
`headerIDs.lua` passed canonical formatting checks and had identical SHA-256
hashes on both runs. The file counts include the shared header.

| Setting | Files per snapshot | Repeat identical | Matches original processing code |
| --- | ---: | --- | --- |
| Retail | 28 | Passed | Passed |
| Classic Era | 18 | Passed | Passed |
| Season of Discovery | 19 | Passed | Passed |
| TBC | 20 | Passed | Passed |
| Wrath | 21 | Passed | Passed |
| Cataclysm | 21 | Passed | Passed |
| Mists of Pandaria | 23 | Passed | Passed |
| Forever | 15 | Passed | Passed |
| Retail simplified | 28 | Passed | Passed |

Runs use `auto baseconfig=../.db/standard/.config/retail/retail.config` from
`.contrib/.tools`, plus the corresponding configuration from
`.db/standard/.config/classic`, `.db/forever/.config/forever.config`, or
`.db/standard/.config/options/simplify.config`. Retail simplified runs last
because it replaces the normal Retail output directory.

## Data regression comparison

A second disposable checkout uses the same committed inputs as the candidate.
Its four changed Parser implementation files are restored byte-for-byte from
original master: `Framework.cs`, `Framework.Items.cs`, `Framework.Objects.cs`,
and `ObjectHarvester.cs`. The candidate project file is retained so the baseline uses the same
dependency locations, executable settings and shared source compile link. This baseline runs all nine
settings once in the same order.

Before comparison, baseline outputs are canonicalized only for UTF-8 BOM,
CRLF/CR, and final whitespace-only blank lines. Interior data and content-line
spaces are preserved. The comparison checks the complete path sets and SHA-256
hashes against the saved candidate snapshot for each setting, including the
shared header. It does not compare the already overwritten Retail files.

All nine comparisons passed: 193 per-setting file/header snapshots have
identical path sets and canonical SHA-256 hashes. No data-content difference
was found between the candidate and original processing code.

Regeneration changes 141 tracked files under `db/` relative to committed
snapshots. The original processing code reproduces the same regenerated contents
after the allowed format normalization, so these differences from stored
snapshots are independent of the normalization change. These generated files
remain solely in the disposable Windows checkout; they are not part of the
normalization branch.

All 197 output and related text files passed the full content policy,
including encoding, BOM, EOL, EOF, NUL, DOS EOF, merge markers and trailing
whitespace. Established Debugging whitespace exceptions were preserved.
The 32 generated `Debugging/IncorporationRefs` files also matched the original
processing code after canonicalization. The seven existing tracked dynamic
object input files matched; these configurations did not emit a new
`DynamicObjectDB_<ticks>.lua` file.

Raw checkout, build, fixture, parser and baseline records are retained in the
isolated Windows test directory
`%TEMP%\att-normalization-cd7bf05-validation`. The local verification archive
is `/tmp/att-windows-validation`, including run scripts, baseline payload,
JSON hash maps and summarized logs.
