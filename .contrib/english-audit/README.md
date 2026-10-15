# ATT English audit

The local branch `codex/english-flavor-audit` starts at master revision `1235e7bc841adb11530dd291b7b8083080c7de98`. This audit, dated 2026-10-15 in Asia/Taipei, proposes 431 changed source lines across 244 files. Of those lines, 34 have two independent WoW source providers and 397 are editorial spelling or grammar proposals.

[Every changed line](changes.json) records the original text, replacement, file and line, flavor context, rationale, source URLs, and independent source count. [WoW source comparisons](wow-sources.md) provides a shorter table of the changes supported by two providers.

## Review scope

The automated spelling scan covered 5,080 UTF-8 tracked text files, including generated databases and imported client extracts used as references. The baseline contains 5,436 tracked files; 317 binary files and 39 vendor files were excluded. The [file inventory](inventory.json) records coverage and categories. Its 32,742 residual dictionary flags include game vocabulary, names, translations and reference snapshots; they are candidates, not a count of confirmed errors.

Contextual review covered English UI localization sources, shared headers and modules, selected Standard and Forever descriptions and comments, runtime source, and contributor tooling. Detailed coverage and retained candidates are in the [UI review](ui-review.md), [shared text review](shared-review.md), and [data review](data-review.md). This is a repository-wide automated spelling pass with contextual editorial review. It does not establish that every sentence or every WoW record is correct.

Edits target maintained sources. The generated `db/` databases, imported Wago CSVs, harvested reference snapshots, non-English translations, numeric identifiers, executable logic, and preprocessor directives are unchanged. Localization and data source edits require the normal Parser build before they appear in generated addon databases.

## Evidence rules

A WoW name or factual text correction is classified as cross verified only when at least two providers support the corrected wording in the relevant context. The applied WoW changes have Warcraft Wiki and Wowhead support. Multiple Wowhead pages or a Wowhead page plus its tooltip transport count as one provider. The count measures corroborating providers, not independently observed in-game tests.

Editorial corrections have a WoW source count of **0**. They change English wording while retaining the surrounding gameplay claim. Their language rationale is recorded; they do not claim that the surrounding game mechanics were revalidated or that two WoW sources support the sentence.

Warcraft Wiki evidence includes readable indexed article text; direct requests sometimes returned HTTP 403. Wowhead English tooltip queries retain the requested data environment, record ID, response name and retrieval URL in [the name evidence](wowhead-evidence.json). These responses do not provide an exact client build. Single-provider names, conflicting flavor spellings, and suspected quotations are retained as candidates instead of being standardized.

Live Wago requests were inaccessible. Version-pinned repository CSVs provided supplemental context and were not counted as a spelling source without matching text. For example, `Criteria.12.1.5.70391.csv` links criteria 36609 to quest 46769; that supports the record relationship for Relieved of Their Valuables, rather than supplying a second copy of the English title.

## Flavor context

These are configured source-build contexts, not clients tested in this audit. ATT is identified by its source revision above; no installed release version or in-game observation is claimed.

| Flavor | Configured build | Generated output |
| --- | --- | --- |
| Retail | 12.1.5.70391 | Standard |
| Classic Era | 1.15.9.70003 | Vanilla |
| Season of Discovery | 1.15.9.70003 | VanillaSOD |
| TBC Classic | 2.5.6.70006 | TBC |
| Wrath Classic | 3.4.5.63697 | Wrath |
| Cataclysm Classic | 4.4.5.55261 | Cata |
| Mists Classic | 5.5.4.69934 | Mists |
| Forever | 1.60.1.69893 | Camelot |

The table follows `.github/workflows/Parser.yml` and the referenced `.contrib/.db/standard/.config/` and Forever configurations. Later Classic expansion templates also exist, but are not listed as active build targets. The Forever Wago snapshot used for reference is separately labeled 1.60.1.70338; its version was not substituted for the configured build.

Standard files serve multiple compilation targets. A file's expansion folder and its compilation scope do not establish availability in every client: inherited timelines, guards, and runtime filtering still apply. Records verified in Wowhead Retail are explicitly labeled Retail. Forever `zzOLD` files are archived copied material, not evidence that the described content is active in Forever.

## Validation

[The validation snapshot](validation.json) records Lua 5.1.5 syntax checks and source comparisons against the baseline. Temporary compiler inputs remove an existing UTF-8 BOM when present; the repository BOMs are preserved.

- All 222 changed Lua files pass Lua 5.1 syntax checks.
- All Lua code tokens outside display strings and comments, bracket lookup keys, numeric values, preprocessor directives, and checked formatting/control sequences match the baseline.
- All 130 Lua files with comment-only changes produce identical stripped bytecode.
- C# changes are comments except for two corrected diagnostic strings. The Python change is a docstring; the batch change is a status message.
- Original line counts, CRLF/LF counts, and BOM presence are preserved in all 244 changed source files. The exact changed-line ledger covers the complete source diff.
- `git diff --check` passes. No full Parser build or in-game test was run.

The source corrections and audit evidence are grouped into separate local commits. No push, merge, or pull request was performed.

## Retained candidates

The review files and [held data candidates](held-data-candidates.json) include source counts and reasons for leaving uncertain text unchanged. Examples include the official spellings `Nagative Feedback`, `Customer Retrival Harpoons`, `Miniscule Diamond Ring`, and the Classic versus Retail difference `Emmisary Gormok` / `Emissary Gormok`.

Some single-source object corrections and Forever quest or item names still need corroboration. Several contributor-table comments labeled Alleria disagree with current Wowhead records for those IDs and need a separate contextual data review. The directive `-- #if BEOFRE MOP` in the Ironforge source is also retained: correcting it can change data inclusion and belongs in a separately validated behavior fix.
