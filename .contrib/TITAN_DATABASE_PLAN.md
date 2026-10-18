# Titan Reforged Dedicated Database Plan

Status: Draft; not implemented. Updated: 2026-10-19.

This plan covers Parser configuration, data sources, in-game loading, Contributor Reports, and build and release delivery for China-region Titan Reforged (the Chrono realm). The goal is to give Titan its own database artifacts while retaining confirmed reusable `standard/shared` sources and avoiding impact on regular Wrath and other flavors.

The exploration baseline is `master` at `a4f9c0c1cd27e8dbad8eb952f3da5d72e56b2e2a`; the planning branch is `codex/titan-database-plan`. This commit adds only this document. The file list, tests, and implementation steps below are future work.

## Understand the Problem Through Existing Data

[CN promotion data](<.db/standard/20 - China Only/CN Promotions Classic&Titanforged.lua>) already contains `mount(1280400)`, with `added 3.80.0` and `removed 3.80.10` expressing its version range. By contrast, the [ICC speedrun titles](<.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/8 Icecrown Citadel.lua>) `title(673)`, `title(674)`, and `title(675)` are inside conditions for `AFTER 3.4.5` and `BEFORE 3.80.0`.

If Titan directly reuses the current Wrath profile's `DataPatch = 3.4.5.63697`, both groups of data will take the wrong version branch. A separate Titan profile can preserve the existing version conditions, but it also needs the correct raw data, content unlock phases, and an output location the client can load.

These records are suitable regression cases for the existing conditions. Their in-game content, acquisition methods, and dates still need separate verification against the data-source requirements; code comments cannot serve as in-game evidence.

## Recommended Architecture and Decision Boundaries

### Shared Sources and an Independent Build

The first phase keeps the current `shared` plus `standard` data-loading approach, adds a Titan profile, and uses the explicit `TITAN_REFORGED` tag. Titan-specific authored data can be grouped under `standard/titan/` and guarded by that tag. Differences for existing locations stay near their related sources, with explicit conditions excluding old nodes that do not apply.

Compose the configuration from the existing Retail base config and a Classic profile. Specify Titan's `wago-directories`, `json-directories`, `DataPatch`, and complete `PreProcessorTags` individually. Configuration arrays are replaced as a whole, so adding only the new Titan tag is insufficient. Do not load Titan JSON initially unless its source and isolation path are established; Retail recursively imports JSON under `standard`.

The provisional artifact directory is `db/Titan/`. Fix the final name and loading method after confirming how the client resolves `[Game]`. Regardless of the entry-point name, keep the build configuration and data sources independently identified.

### Versions and Content Phases

Use a confirmed Titan version and build that match the selected data snapshot for `DataPatch`, while preserving the existing `3.80.x` condition semantics. Temporarily use `WRATH` as the historical-data compatibility base for `DataPhase`; handle Titan content progression separately.

Preserve these constraints:

- `DataPhase="WRATH"` makes `#if WRATH` true even when the tags do not list `WRATH`. Explicitly exclude `TITAN_REFORGED` from ordinary Wrath ItemDB data and flavor-specific rules.
- Do not copy Wrath exceptions such as `NAXX_10MAN_DROPS_25MAN_LOOT` directly; every exception needs Titan evidence.
- The current Parser sets `MAX_PHASE_ID=39` for Wrath. Do not only add larger Titan `u` values, and do not raise the global limit for every flavor.
- `#if AFTER TRANSMOG` compares existing phase numbers; adding an ability tag with the same name does not change that comparison.

Represent Titan raid phases independently. For example, the official roadmap places Ulduar, Karazhan, BWL, and ICC in different Titan phases rather than releasing them in the old expansion order. [Official update preview](https://wow.blizzard.cn/news/20260913/43790_1313712.html)

The first usable version can use cumulative build tags to gate unlocked content. If unreleased content must appear in game with a phase selector, add Titan-specific phase definitions, Parser retention/validation policy, and a settings page; decide before implementation whether these belong in the first phase. Do not map all historical phases; doing so could misplace vendors, currencies, and instances that share a phase.

Evaluate separating `ClientBuild` from `TimelinePatch` only if a conflict cannot be handled reliably with local conditions. The first phase does not rewrite the timeline wholesale or add `DataPhase="TITAN"`; phase names are currently managed in a fixed table.

### Raw Data and Differences for the Same ID

Each Titan build should select only Titan's authoritative ItemDB/Wago snapshot, and state its version, region, locale, hotfix status, and acquisition date. Mark missing Titan data as a gap; do not treat a Wrath snapshot as verified Titan data by default.

The current pipelines have different merge rules: Wago keeps the first-loaded record for a matching type and ID; Lua global containers fill missing values and merge recursively; C# handles overwrites or merges by field. Therefore, adding a directory or changing load order does not by itself create a reliable Titan override.

Distinguish three data operations: adding a source, replacing fields on a particular source, and removing a particular source node. The same itemID may have other valid acquisition methods, so globally deleting that ID cannot replace removing a specific drop or quest reward. Handle reworked instance difficulty, nested drops, costs, quest relationships, and sourceID according to evidence.

### In Game Loading and Capabilities

The current [TOC](../AllTheThings.toc) lists `38002` and loads data through `db\[Game]\ReferenceDB.lua` and `db\[Game]\Database.xml`. This confirms only the repository declaration; it does not establish the current Titan client version or the directory corresponding to `[Game]`.

- If Titan has a dedicated `[Game]` directory, write its independent artifacts there and reuse the existing entry point.
- If Titan shares the Wrath entry point, choose between a shared-entry runtime switch and a dedicated package based on in-game validation. Isolate ReferenceDB, LocalizationDB, and category registration together; a guard in one file is not enough.
- Do not identify Titan only by `zhCN`, CN region, or server name. Define the rule from obtained client-identification evidence and specify behavior when identification fails.

Blizzard has confirmed that Titan has transmog and collection systems, and ATT already has some logic that enables features based on API availability. Verify Titan's capabilities and data semantics individually; do not set Titan to `IsRetail=true` to enable every Retail path. [Official feature overview](https://wow.blizzard.cn/news/20251022/40565_1266152.html)

First inspect actual SavedVariables sharing and source-collection semantics, then decide on account synchronization. Expand the changes only if isolation or migration is proven necessary; the plan does not assume existing cross-product data contamination.

## Implementation Order and Completion Criteria

Each step should be an independently reviewable change. Separate behavior, data imports, generated artifacts, and delivery changes according to their dependencies.

| Order | Work | Completion criteria |
| --- | --- | --- |
| 1 | Collect the client information in the next section and confirm the loading entry point, first-release content scope, and phase model. Record a baseline build for non-Titan flavors. | Evidence identifies the client version, source snapshot, loading path, and identification rule; unresolved items remain explicitly marked. |
| 2 | Add the Titan profile, build/debug entry points, and raw-data isolation. Prioritize DBContext in the raw files and profile tags so Wrath and Titan ItemDB data are mutually exclusive. | Configuration is valid; Titan reads only the selected snapshot and has the correct output identity; same-ID conflicts and missing data produce observable results. |
| 3 | Use one Titan-specific record with complete supporting evidence to connect the Parser, output, and client loading end to end. | Titan loads that record, ordinary Wrath does not, and each login enables exactly one complete database. |
| 4 | Add an independent phase policy and evidenced content differences; address required transmog, achievement, difficulty, and settings compatibility. | Each Titan phase takes the correct branch; source additions, replacements, and removals behave as intended, and existing shared sources remain available. |
| 5 | Add version and profile information to Contributor Reports, and add a Titan issue flavor option. | Reports can identify Titan, the full client version/build/interface, ATT version, and observation context. |
| 6 | Connect CI, Release, and artifact checks; complete cross-flavor regression and in-game validation. | A Titan failure fails the overall check; clean installs, release archives, and applicable db-sync pipelines contain the correct artifacts. |

For each game-data addition or correction, list affected IDs, flavor, client build, ATT version, region, observation date, and sources. Under `AGENTS.md`, attach an in-game screenshot, Contributor Report, or direct Wowhead link. Also record the number of independent sources for gameplay claims; mark a claim cross-verified only when at least two independent sources support it. Official overviews can support architectural context, but do not replace evidence for individual drops, rewards, or IDs.

## Validation Approach

| Layer | Cases and method | Pass criteria |
| --- | --- | --- |
| Configuration and preprocessing | Compare tags, phase, patch, inputs, and outputs for Titan, ordinary Wrath, and other Classic profiles; inspect array replacement and the `#if WRATH` fallback. | Titan's required tags are complete, Wrath-specific raw metadata does not also enter Titan, and other profile settings are unchanged. |
| Version boundaries | Use the existing Titan promotions and ICC speedrun titles as condition cases; test before and after `3.80.0` and at the removal boundary. | Program behavior matches the reviewed conditions; verify the game evidence for the data separately. |
| Phases | Switch between content phases under the same Titan patch, covering Ulduar, Karazhan, BWL, and ICC. | Unlock progression is not misled by historical expansion order, and the Wrath limit does not remove new phases. |
| Merge and sources | Use fixed samples with different values for the same ID, missing records, array fields, and multiple sources for one item. | Conflicts are handled explicitly; replacing or removing one source does not affect others; results do not depend on accidental file ordering. |
| Raw data | Check snapshot version, locale, hotfix records, and selection settings; test input with the wrong flavor/build. | Mismatched input is explicitly rejected or reported and cannot silently be marked as a successful Titan build. |
| Artifacts | In a clean output location, inspect ReferenceDB, LocalizationDB, Database.xml, Categories, and files referenced by XML. | Required files are present, profiles are consistent, and the build does not rely on leftover files from a previous run. |
| Lua behavior | Use Lua 5.1 fixtures to verify identification, loading guards, capability branches, and single-database registration. | All added or affected Lua tests use Lua 5.1 only; fixtures do not replace in-game compatibility validation. |
| Full Parser | Run the data pipeline in the supported Parser build environment, retaining configuration, input snapshot, and error records. | The full build succeeds. Record this as tool-integration validation, separately from Lua 5.1 AddOn tests. |
| Cross-flavor regression | With the same tools, snapshots, and settings, compare Retail, Era, SoD, TBC, Wrath, Cata, MoP, and Forever. Include PTR/Beta when shared changes affect them. | Non-Titan artifacts remain unchanged except for reasonable differences listed in advance. Differences are traceable; do not hide them by ignoring an entire file. |
| In game | Log in/reload on Titan and ordinary Wrath; test data search, phase settings, actual instance difficulty, collected and uncollected appearances, and Contributor Reports. Check account synchronization when needed. | The correct database loads without Lua errors, and collection status matches actual state. CN or zhCN clients that are not Titan are not misidentified. |
| CI and delivery | Intentionally fail the Titan step to test the overall gate; inspect release zip, clean checkout, missing and stale files, and applicable db-sync hash/dirty-db protection. | `continue-on-error` cannot swallow a failure; delivered artifacts contain the complete Titan output. |

Full Parser tests must use its supported execution environment. This plan does not replace the Parser's NLua/native Lua dependency. Record test tools, data snapshots, expected results, and actual results separately; a successful Lua fixture does not establish that the full Parser or client has been validated.

## Titan Client Information to Provide

### Information to Provide First

You do not need to provide everything at once. The first four items are enough to decide the next step in the build and loading investigation.

| Information | Suggested details | Purpose |
| --- | --- | --- |
| Full client version | Version text or screenshot from the login screen, retaining the complete version and build; include the interface number if known. | Select the Titan profile and data snapshot; do not treat `38002` in the repository as the actual client version. |
| Product and install location | Product/version selected in Battle.net, plus the actual game folder and `Interface/AddOns/AllTheThings` path. Personal directory names may be obscured. | Confirm the actual product and AddOn locations; do not guess folder names such as `_titan_`. |
| Game environment | Region, interface language, server name, and whether this is live or a test environment. | Build positive and negative identification cases to distinguish Titan, ordinary China-region Wrath, and language settings. |
| ATT status | ATT version/source or commit, whether it currently loads, and the full text of the first Lua error, if any. | Identify the current artifacts and compatibility; state directly if there is no error. |
| One representative difference | One Titan-specific item/quest/NPC/object ID or one that differs from Wrath, with a Contributor Report, screenshot, or direct Wowhead link. Describe the expected and current display. | Choose the smallest end-to-end case and avoid validating the architecture with guessed data. |
| Collection and instance samples | If available, provide one collected and one uncollected appearance with related item/sourceID, plus a reworked instance difficulty, boss, and drop sample. Do not guess unknown IDs. | Verify collection, difficulty, and source differences without equating item possession with appearance collection. |
| Raw-data export | If a Titan ItemDB or other collection export exists, provide the original file and collection tool, version, date, and locale. State if none is available. | Assess usable inputs, data gaps, and collection options. |

Reports should retain the necessary version, location, difficulty, date, and source. The existing Contributor Report's `GameBuild` currently records only an interface-type number, which cannot replace the full version and build by itself.

### Information to Confirm Through Follow Up Diagnostics

These are technical diagnostic results; users are not expected to infer them from the game UI. After receiving the basic information, provide a narrowly scoped, read-only collection method. This document change does not add or run diagnostic code.

- Full client-version information, project identification, and available product/flavor identification signals.
- The directory actually loaded by `[Game]` and the current sources of ReferenceDB, LocalizationDB, and Categories.
- The actual available transmog/collection API functions, their return semantics, and sourceID data consistency; sample achievement and difficulty capabilities as well.
- SavedVariables locations, whether products share them, and actual account-synchronization source-data behavior.
- Whether Titan Wago or other authoritative snapshots are available and their build/locale/hotfix coverage.

Also decide the first release's content scope: start with loading and a small amount of data, or cover specified instances/events immediately; and whether unreleased content must appear with an in-game phase selector. These scope decisions do not prevent completing the profile and data isolation first.

## Planned File Changes

All paths below are relative to the repository root. “Add” means a proposed path that does not exist yet; “Conditional” means a change requires supporting investigation or testing; “Generated” means produced by tools and not patched by hand. Directory entries represent file sets; finalize their exact contents after selecting the scope and snapshot.

### Configuration and Raw Data

| File or directory | Type | Planned content |
| --- | --- | --- |
| `.contrib/.db/standard/.config/classic/03 - Titan Reforged.config` | Add | Independent profile, complete tags, confirmed version, inputs, and outputs. |
| `.contrib/.db/build - classic - 03 - titan.bat`, `.contrib/.db/debug - classic - 03 - titan.bat` | Add | Reuse the existing Parser invocation form and select the Titan profile. |
| `.contrib/.db/build - all.bat`, `.contrib/.db/build - classic - all.bat` | Modify | Include Titan in the corresponding all-version build sets. |
| `.contrib/.db/standard/.config/.wago/Titan Reforged/.update.bat` and CSV files in that directory | Add/import | Confirmed Titan build, locale, and hotfix collection settings and snapshots, with source records. |
| `.contrib/.raw/ItemDB/<confirmed version> Titan Reforged - ItemDB.lua` | Add/import | Titan raw ItemDB with an independent `DBContext`/`DBFileName`; fix the filename after confirming the version. |
| `.contrib/.raw/ItemDB/3.4.0 Wrath of the Lich King - ItemDB.lua`, `.contrib/.db/standard/.config/classic/03 - Wrath.config` | Modify | Give ordinary Wrath raw files a dedicated DBContext, such as `WRATH_CLASSIC_ITEMDB`, enabled only in the Wrath profile; Titan uses `TITAN_REFORGED`. Preserve raw contents and source records, and first use the existing generator to make the profiles mutually exclusive. |
| `.contrib/.source/Item Database Consolidator/Program.cs` and its tool artifacts | Conditional | The existing generator already converts DBContext into `#if`; prioritize reusing it. Extend C# only if tags cannot express the selection rule, then rebuild and validate the matching Consolidator tool to ensure regeneration remains mutually exclusive. |
| `.contrib/.db/standard/00 - Item DB/.dynamic/03 - Wrath.lua`, new `03 - Titan Reforged.lua` | Generated | Generate mutually exclusive data with the Consolidator so `DataPhase=WRATH` does not enable both ItemDBs. |
| `.contrib/.db/standard/.config/retail/retail.config` | Conditional | If Titan JSON is introduced, adjust source selection or the isolation path so Retail's recursive import does not read Titan JSON. |

### Parser and Authored Data

| File or directory | Type | Planned content |
| --- | --- | --- |
| `.contrib/src/Parser/Framework/Framework.cs`, `Framework.Processing.cs` (same directory) | Modify | Titan phase retention/validation policy and required profile checks, with limited scope. Phase work can be deferred if the first release uses build tags only. |
| `.contrib/src/Parser/DB/WagoData.cs`, `.contrib/src/Parser/DataValidator.cs` | Conditional | Check source version, flavor, and same-ID conflicts at the appropriate layer; first settle snapshot metadata format and error behavior. |
| `.contrib/src/Parser/Program.cs`, `CustomConfiguration.cs` (same directory) | Conditional | Check profile load order and array replacement; change only if a new validation entry point or generated routing is needed. Existing `db-relative` can already select an independent output. |
| `.contrib/src/Parser/Framework/Framework.Objects.cs`, `.contrib/src/Parser/Export/Exporter.cs` | Conditional | If using a shared-entry switch, generate complete guards/manifest in the actual exporter path; first verify coverage of every data file. |
| `.contrib/.db/standard/titan/Titan Reforged.lua` | Add | Entry point for the first verified Titan-specific content, guarded by `TITAN_REFORGED`. Split by location as the content grows. |
| `.contrib/.db/shared/lib/Constants/Phases.lua`, `.contrib/.db/shared/functions/Shortcuts.lua` | Modify/conditional | Titan phase definitions and required helpers; preserve ordinary Wrath phase semantics. |
| `.contrib/.db/standard/20 - China Only/CN Promotions Classic&Titanforged.lua`, `CN InGameShop.lua` (same directory) | Conditional | Verify scope and sources item by item before adjusting conditions; do not move whole files or batch-edit the timeline. |
| `.contrib/.db/shared/modules/MountDB.lua` and affected standard instance/quest sources | Conditional | Correct evidenced mapping, drops, costs, and reward differences; list exact paths and IDs after selecting cases. |
| `.contrib/src/Parser/FieldTypes/Timeline.cs`, `TimelineEntry.cs` (same directory) | Evaluate later | Modify only if a verified conflict requires separating timeline semantics. |
| `.contrib/src/Parser/Parser.csproj`, `.contrib/.tools/Parser.exe` and related tool artifacts | Conditional/generated | If C# changes require a new compile item or an update to the CI tool, rebuild under the repository delivery process; do not include unverified binaries. |

### In Game and Diagnostics

| File or directory | Type | Planned content |
| --- | --- | --- |
| `AllTheThings.toc`, `src/WoW API Wrappers.lua` | Conditional | Determine the loading entry point, Titan identification, and capability checks from testing. The current interface declaration is not sufficient evidence. |
| `db/Titan/ReferenceDB.lua`, `LocalizationDB.lua`, `Database.xml`, `Categories/` | Generated | Complete independent artifacts; adjust paths based on the client entry-point decision. |
| Generated entry points under `db/Wrath/` | Conditional/generated | Adjust only if Titan shares the Wrath entry point and a shared package is selected, ensuring each load enables exactly the right set. |
| `src/Settings/Pages/Phases.lua` | Modify/conditional | Titan phase display and selection; defer if the first release has no phase UI. |
| `src/Classes/Transmog.lua`, `src/Settings/Settings.lua`, `src/Settings/Pages/General.lua` | Conditional | Check appearance collection and version gates in settings; update according to verified capabilities. |
| `src/Classes/Achievement.lua`, `Achievement.Classic.lua`, `Difficulty.lua` (same directory), `src/UI/Windows/Illusions.lua` | Conditional | Adjust only achievement, difficulty, or feature paths that testing shows are incompatible. |
| `src/Modules/Contributor.lua`, `src/UI/Windows/Debugger.lua` | Modify | Add profile, full version/build/interface, locale, and required environment details to reports; record unknown values explicitly. |
| `AllTheThings.lua`, `src/UI/Windows/Account Management.lua` | Conditional | Verify character data and source-collection synchronization; add isolation/migration only if proven necessary. |

### Build Delivery and Documentation

| File or directory | Type | Planned content |
| --- | --- | --- |
| `.github/workflows/Parser.yml` | Modify | Titan invocation, trigger/validation strategy, overall success check, and required artifact checks; C# source changes also need corresponding validation. |
| `.github/workflows/Release.yml`, `Parser_Objective.yml` (same directory) | Modify | Include Titan in Release and manual all-version builds. |
| `.github/workflows/Parser_with_new_CD.yml` | Conditional | If this delivery route is retained, update its flavor set and overall check. At the baseline, it targets `forever-beta` and is not treated as an active production CD workflow on master. |
| `.github/ISSUE_TEMPLATE/data_discrepancy.yml`, `bug_report.yml`, `feature_request.yml` (same directory) | Modify | Add a Titan flavor option and reuse the existing version and context fields. |
| `.pkgmeta`, `.contrib/db-sync/sync_db.py`, `.contrib/db-sync/README.md` | Conditional | Verify that existing generic packaging and sync can carry Titan; fix only required gaps and align documentation with the selected pipeline. |
| `Link ATT to WoW.bat` | Conditional | After confirming the actual product folder, assess whether a new installation path is needed. |

The existing `db-sync/README.md` describes commits mapping to public release assets, but at the baseline `Parser.yml` uploads only a generic Actions artifact; the public bundle workflow is `Parser_with_new_CD.yml`. Select the pipeline explicitly before delivery; do not claim that master provides this based only on the README.

The first phase does not add a separate `.contrib/.db/titan/` root. If that physical data tree is later shown to be necessary, design multi-source loading and explicit replace/remove semantics then; the current Parser supports shared plus a single `root-data` and has no general overlay that automatically inherits standard.

## Primary Code References

Recheck these locations before implementation; line numbers refer to the exploration baseline.

| Reference | Related mechanism |
| --- | --- |
| [Program.cs](src/Parser/Program.cs), 247–283, 292–349, 434–528, 914–964 | Configuration composition, independent output, raw-data and Lua loading, and tag/phase checks. |
| [CustomConfiguration.cs](src/Parser/CustomConfiguration.cs), 212–239 | Configuration-object merge and whole-array replacement. |
| [Framework.cs](src/Parser/Framework/Framework.cs), 59–99, 804–829; [Framework.Processing.cs](src/Parser/Framework/Framework.Processing.cs), around 927 | Fixed phase table, DataPatch/DataPhase, and phase limit. |
| [WagoData.cs](src/Parser/DB/WagoData.cs), 160–176, 1225–1233; [shared initialization](.db/shared/.main.lua), 49–89 | CSV source parsing and same-ID cache; Lua container merge behavior. |
| [Wrath profile](<.db/standard/.config/classic/03 - Wrath.config>); [SoD profile](<.db/standard/.config/classic/01 - Classic SOD.config>) | Existing version settings and a precedent for producing different flavors from the same source tree. |
| [Item Database Consolidator](<.source/Item Database Consolidator/Program.cs>), 15–47 | Raw ItemDB conversion, output paths, and preprocessing-condition generation. |
| [TOC](../AllTheThings.toc), 6, 37–40, 96; [Contributor](../src/Modules/Contributor.lua), 76–84, 262 | Interface declaration, data-loading entry point, and report version information. |
