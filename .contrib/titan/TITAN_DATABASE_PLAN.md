# Titan Reforged Dedicated Database Plan

[English](TITAN_DATABASE_PLAN.md) | [繁體中文](TITAN_DATABASE_PLAN.zh-TW.md) | [简体中文](TITAN_DATABASE_PLAN.zh-CN.md)

Status: Draft; not implemented. Updated: 2026-10-19.

This plan covers Parser configuration, data sources, in-game loading, Contributor Reports, and build and release delivery for China-region Titan Reforged (the Chrono realm). The goal is to give Titan its own database artifacts while retaining confirmed reusable `standard/shared` sources and avoiding impact on regular Wrath and other flavors.

The exploration baseline is `master` at `a4f9c0c1cd27e8dbad8eb952f3da5d72e56b2e2a`; the planning branch is `codex/titan-database-plan`. These documents cover planning only. The file list, tests, and implementation steps below remain future work; no Parser execution or implementation is included.

## Understand the Problem Through Existing Data

[CN promotion data](<../.db/standard/20 - China Only/CN Promotions Classic&Titanforged.lua>) already contains `mount(1280400)`, with `added 3.80.0` and `removed 3.80.10` expressing its version range. By contrast, the [ICC speedrun titles](<../.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/8 Icecrown Citadel.lua>) `title(673)`, `title(674)`, and `title(675)` are inside conditions for `AFTER 3.4.5` and `BEFORE 3.80.0`.

If Titan directly reuses the current Wrath profile's `DataPatch = 3.4.5.63697`, both groups of data will take the wrong version branch. A separate Titan profile can preserve the existing version conditions, but it also needs the correct raw data, content unlock phases, and an output location the client can load.

These records are suitable regression cases for the existing conditions. Their in-game content, acquisition methods, and dates still need separate verification against the data-source requirements; code comments cannot serve as in-game evidence.

## Recommended Architecture and Decision Boundaries

### Shared Sources and an Independent Build

The first phase keeps the current `shared` plus `standard` data-loading approach, adds a Titan profile, and uses the explicit `TITAN_REFORGED` tag. Titan-specific authored data can be grouped under `standard/titan/` and guarded by that tag. Differences for existing locations stay near their related sources, with explicit conditions excluding old nodes that do not apply.

Compose the configuration from the existing Retail base config and a Classic profile. Specify Titan's `wago-directories`, `json-directories`, `DataPatch`, and complete `PreProcessorTags` individually. Configuration arrays are replaced as a whole, so adding only the new Titan tag is insufficient. Do not load Titan JSON initially unless its source and isolation path are established; Retail recursively imports JSON under `standard`.

Keep Titan's complete independent dataset under `db/Titan/` and include its XML through the ordinary Wrath profile's `extra-database-files` entry. Profile `DataRequirements` and runtime guards control which data activates; the XML include itself is unconditional on the Wrath route. Confirm how the installed client resolves `[Game]` before fixing output paths. Titan is not a new TOC game type; keep its build configuration and data sources independently identified.

### Versions and Content Phases

Use a confirmed Titan version and build that match the selected data snapshot for `DataPatch`, while preserving the existing `3.80.x` condition semantics. Temporarily use `WRATH` as the historical-data compatibility base for `DataPhase`; handle Titan content progression separately.

Preserve these constraints:

- `DataPhase="WRATH"` makes `#if WRATH` true even when the tags do not list `WRATH`. Explicitly exclude `TITAN_REFORGED` from ordinary Wrath ItemDB data and flavor-specific rules.
- Do not copy Wrath exceptions such as `NAXX_10MAN_DROPS_25MAN_LOOT` directly; every exception needs Titan evidence.
- `#if AFTER TRANSMOG` compares existing phase numbers; adding an ability tag with the same name does not change that comparison.

Evaluate separating `ClientBuild` from `TimelinePatch` only if a conflict cannot be handled reliably with local conditions. The initial implementation does not rewrite the timeline wholesale or add `DataPhase="TITAN"`; phase names are currently managed in a fixed table. “Initial implementation” below means the first ATT delivery, not Titan Phase 1.

#### Discussion: What Does a Titan Phase Mean?

Ulduar illustrates the problem: ATT's historical Wrath phase is `WRATH_PHASE_TWO`, while Titan places Ulduar in Phase 6 and the older Karazhan in Phase 7. Keep the client/data snapshot, historical Parser compatibility, and Titan unlock progression distinct. [Official roadmap](https://wow.blizzard.cn/news/20260913/43790_1313712.html)

The [Chrono wiki](https://warcraft.wiki.gg/wiki/Titan_Reforged_-_Chrono) is a useful discussion index, not a confirmed phase manifest. On 2026-10-19, direct access returned 403; the search-indexed release list placed Ruins of Ahn'Qiraj in Phase 9, whereas the official roadmap places it in Phase 8. Resolve such differences with dated evidence before importing a mapping; future roadmap entries remain planned.

Dates also describe different events: the [Phase 6 announcement](https://wow.blizzard.cn/news/20260924/43790_1315082.html) displays publication on 2026-09-25 but schedules the phase for 2026-10-08 and the challenge leaderboard for 2026-10-12. [Implemented Ulduar adjustments](https://wow.blizzard.cn/news/trr/20261009/43039_1316105.html) establish operation by 2026-10-09, not a second confirmation of the exact opening time. Record publication, effective date, and observation separately.

The [official progression rules](https://wow.blizzard.cn/news/20251031/40565_1268140.html), checked through indexed official text, say earlier raids remain accessible when later phases open. Thus a Phase 6 baseline should retain applicable earlier sources. This does not establish that every earlier drop remains unchanged; raid access, individual rewards, upgrade costs, and limited events need separate evidence.

#### Discussion: Implementation Options

The existing machinery imposes specific constraints:

- With Wrath's `MAX_PHASE_ID=39`, the Parser's phase-limit check admits `u <= 39` or `1000 <= u < 4000`; accepted phase definitions still need validation. Out-of-range nodes and their children can be removed before export. Runtime settings cannot restore omitted data. Do not raise the global limit for every flavor.
- `u=1` and `u=2` already mean never implemented and removed; other small IDs are occupied too. Titan phase numbers cannot be used directly as IDs. Timeline processing precedes the phase check and can overwrite `u`, so one field does not automatically preserve both unlock phase and removal status.
- Current settings are per-ID `Unobtainable[u]` visibility switches, with historical build/date defaults and hardcoded expansion pages. They are not a single current-phase selector. New definitions alone do not create a Titan page; stable IDs must preserve existing saved choices.
- Applying an outer phase does not settle nested rules: `applyclassicphase` normally fills missing values, while recursive runtime filtering checks ancestors. Forcing an override could erase a child's unavailable status. The Ulduar `ach(17341)` rule also directly reads `WRATH_PHASE_THREE` and changes its own `u`; audit such rules individually. This is a code regression case, not proof that the achievement exists on Titan.

| Option | Suitable scope | Tradeoffs and required checks |
| --- | --- | --- |
| A. Cumulative build tags | An initial release containing only verified unlocked content. | Use supported boolean tags; numeric `#if PHASE > 5` is still a TODO. Rebuild for each progression change. Omitted future content cannot be previewed through runtime settings. |
| B. Dedicated Titan `u` IDs | Retain future content and reuse existing phase visibility controls. | Choose unique, stable IDs; verify Parser retention, source mappings, parent restrictions, Titan UI/defaults, and saved settings. C# changes are conditional: IDs fitting the existing policy may need none. Prove that phase and unavailable states remain correct. |
| C. Separate progression metadata | A concrete case requires independent phase and availability states that option B cannot faithfully represent. | Design validation, export, inheritance, filtering, source merging, counts, display, and settings. Field names and schema remain undecided; this is a larger change, not a reason for a global timeline rewrite. |

Discussion starting point: use A if the first delivery only needs released content; evaluate B if future-content visibility is required. Consider C when evidenced requirements cannot be represented safely with B. No option, phase ID, or schema is selected by this document. Do not globally remap historical phases.

#### Decisions Needed Before Implementation

1. **Visible scope:** released content only, or future-content preview? Define whether controls select a cumulative baseline or a historical snapshot; merely selecting Phase 6 must not silently mean “only Phase 6.” Previewed sources must remain distinguishable from currently obtainable sources in counts and completion.
2. **Authority and unknown state:** maintain a reviewed phase manifest separate from `DataPatch`. Record a stable phase key/label, source scope, planned/released/unverified status, publication and effective dates, region/time zone, observed build, and evidence. Keep actual server progression separate from the user's display choices. Do not infer progression from interface, locale, calendar, or `C_Seasons.GetActiveSeason()` without a verified mapping. Unknown progression must remain explicit rather than defaulting to the highest phase.
3. **Mapping granularity:** decide per acquisition source, including boss/difficulty, vendor, quest reward, currency/cost, and event window. One item can have several sources with different availability. A raid opening does not establish every reward or upgrade date, and a later phase does not automatically remove earlier sources.
4. **Historical rules and preferences:** audit embedded Wrath conditions, parent/child filtering, and multiple-source merging. Decide defaults and any necessary migration from observed SavedVariables behavior; preserve ordinary Wrath settings. Do not assume numeric phase ID order implements Titan progression.

Before adding data, request one client observation of the active phase and an accessible earlier raid/source, with date/time zone, realm, build, ATT version, and screenshot or Contributor Report. Also request a locked source or a separate event window if available. Do not ask users to infer a phase API value. Official summaries inform architecture but do not replace record-level evidence required below.

The future validation matrix must cover cumulative Phase 5 to Phase 6 behavior, separate raid/event dates, unknown progression, ID collisions and retention boundaries, simultaneous phase/removal states, nested and merged sources, and preserved non-Titan settings. Use same-build/different-phase fixtures to test independence; these are synthetic cases, not a claim that the cited live transitions shared a build.

### Raw Data and Differences for the Same ID

Each Titan build should select only Titan's authoritative ItemDB/Wago snapshot, and state its version, region, locale, hotfix status, and acquisition date. Mark missing Titan data as a gap; do not treat a Wrath snapshot as verified Titan data by default.

The current pipelines have different merge rules: Wago keeps the first-loaded record for a matching type and ID; Lua global containers fill missing values and merge recursively; C# handles overwrites or merges by field. Therefore, adding a directory or changing load order does not by itself create a reliable Titan override.

Distinguish three data operations: adding a source, replacing fields on a particular source, and removing a particular source node. The same itemID may have other valid acquisition methods, so globally deleting that ID cannot replace removing a specific drop or quest reward. Handle reworked instance difficulty, nested drops, costs, quest relationships, and sourceID according to evidence.

### Client Identity and Detection

Use the shared Wrath route as the planning basis. The following evidence supports that choice, with the installed client's exact values and loading path still to be confirmed:

- The community-hosted mirror of Blizzard-authored UI exports at SHA `65729e5e6fee59b5ced83eb7f9120e1e412ea2a7` records `3.80.2.70372` in [version.txt](https://github.com/Gethe/wow-ui-source/blob/65729e5e6fee59b5ced83eb7f9120e1e412ea2a7/version.txt). Its [export workflow](https://github.com/Gethe/wow-ui-source/blob/65729e5e6fee59b5ced83eb7f9120e1e412ea2a7/.github/workflows/export.yml) identifies product `wow_classic_titan`, region `cn`. The public [Blizzard version endpoint](https://us.version.battle.net/wow_classic_titan/versions) also returned CN version `3.80.2.70372`, build `70372`, when checked on 2026-10-19. These observations do not establish the user's installed build or interface number.
- In that Titan snapshot, [Wrath constants](https://github.com/Gethe/wow-ui-source/blob/65729e5e6fee59b5ced83eb7f9120e1e412ea2a7/Interface/AddOns/Blizzard_FrameXMLBase/Wrath/Constants.lua#L118-L124) define `WOW_PROJECT_WRATH_CLASSIC = 11` and assign that project to `WOW_PROJECT_ID`. The [FrameXMLBase Wrath TOC](https://github.com/Gethe/wow-ui-source/blob/65729e5e6fee59b5ced83eb7f9120e1e412ea2a7/Interface/AddOns/Blizzard_FrameXMLBase/Blizzard_FrameXMLBase_Wrath.toc#L1-L17) declares `AllowLoadGameType: wrath` and loads those constants. This supports the Wrath-family route; it does not directly prove runtime `[Game]` or `[Family]` substitution.
- ATT's [API wrappers](<../../src/WoW API Wrappers.lua>) already store the fourth `GetBuildInfo()` return as `GameBuildVersion`. ATT's [TOC](../../AllTheThings.toc) declares interface `38002` and uses generic `db\[Game]\ReferenceDB.lua` and `db\[Game]\Database.xml` paths. These are repository observations. Capture the complete Titan return tuple and the actual resolved paths before treating them as client observations.

For the current 3.80.x branch, the candidate detector requires a numeric project ID matching a numeric `WOW_PROJECT_WRATH_CLASSIC` constant and a numeric interface value in `[38000, 39000)`. This is a version-range heuristic, not an official permanent Titan identifier. Reassess it when the client family changes; if another client shares both inputs, obtain an observed discriminator before extending the rule. Do not infer identity from locale, region, or realm name alone.

Check types before comparing IDs so missing globals cannot pass through `nil == nil`. An unavailable/non-callable `GetBuildInfo`, a missing or nonnumeric project/constant, or an invalid interface result must leave Titan inactive. This is the detector's failure behavior, not a promise that the entire existing AddOn can initialize with missing core APIs. Preserve `IsClassic`/`IsRetail` semantics and share one early Titan predicate across generated guards.

Preserve the existing SoD rule separately. Classic Era export `8165d4cd6e48d606369336cc3a7977902310e81e` ([version `1.15.9.70003`](https://github.com/Gethe/wow-ui-source/blob/8165d4cd6e48d606369336cc3a7977902310e81e/version.txt)) declares [GetActiveSeason](https://github.com/Gethe/wow-ui-source/blob/8165d4cd6e48d606369336cc3a7977902310e81e/Interface/AddOns/Blizzard_APIDocumentationGenerated/SeasonsDocumentation.lua#L5-L16) with a numeric season ID that may be nil, and [SeasonOfDiscovery](https://github.com/Gethe/wow-ui-source/blob/8165d4cd6e48d606369336cc3a7977902310e81e/Interface/AddOns/Blizzard_APIDocumentationGenerated/SeasonsConstantsDocumentation.lua#L15) as `2`. These declarations do not establish Titan's actual season return.

Keep the full version/build used for `DataPatch` separate from the interface number. `3.80.2.70372` is a candidate version for a matching data snapshot; the repository's interface declaration `38002` cannot replace it.

### In Game Loading and Capabilities

ATT already includes SoD's localization and category database from the Era XML through `extra-database-files`. Its `DataRequirements` generate early return guards for LocalizationDB and every category. Reuse that mechanism for Wrath/Titan:

1. Add `../Titan/Database.xml` to the ordinary Wrath profile's `extra-database-files`. Give Wrath and Titan mutually exclusive `DataRequirements`. Both XML paths are enumerated on the shared Wrath route; the guards determine which dataset writes localization and registers categories. Titan remains a complete independent dataset built from confirmed shared sources.
2. Evaluate the shared predicate in the existing early API wrappers. Generated guards precede `local appName, _ = ...`, so access the AddOn table through chunk varargs, such as `select(2, ...)`, or make a minimal header-order adjustment. Merely defining the predicate earlier does not put an `app` or `_` local in scope.
3. Add narrowly opted-in runtime return guards to generated Wrath and Titan ReferenceDB files. The current generator does not guard ReferenceDB with `DataRequirements`, and the SoD XML does not include a separate SoD ReferenceDB. Applying those requirements globally would change the existing Era/SoD reference behavior.
4. Retain the generic `db\[Game]\ReferenceDB.lua` TOC entry and add guarded `db\Titan\ReferenceDB.lua` immediately after it, before `base.lua`. Exactly one complete reference set must be active before core initialization: `base.lua` reads `RaceDB` and initializes `Presets.ALL`, while `FactionData.lua` derives `FACTION_RACES` from references. Selecting references later in Database.xml would leave earlier derived state at risk.

These guards prevent inactive data assignments, construction, and registration; they do not prevent file reads, Lua parsing, or XML enumeration. Check every emitted category and localization artifact, including any separately delivered auto-locale output. `db/Titan/` is an internal ATT artifact directory, not a new Blizzard game type. Verify the client's shared Wrath path before implementing this route, and preserve existing Era/SoD references.

Blizzard has confirmed that Titan has transmog and collection systems, and ATT already has some logic that enables features based on API availability. Verify Titan's capabilities and data semantics individually; do not set Titan to `IsRetail=true` to enable every Retail path. [Official feature overview](https://wow.blizzard.cn/news/20251022/40565_1266152.html)

First inspect actual SavedVariables sharing and source-collection semantics, then decide on account synchronization. Expand the changes only if isolation or migration is proven necessary; the plan does not assume existing cross-product data contamination.

## Implementation Order and Completion Criteria

Each step should be an independently reviewable change. Separate behavior, data imports, generated artifacts, and delivery changes according to their dependencies.

| Order | Work | Completion criteria |
| --- | --- | --- |
| 1 | Collect the client information below. Confirm the installed `[Game]` path, full client version/build, exact `GetBuildInfo()` tuple, project identifiers, and first-release content scope. Decide released-only versus future-content visibility and record the phase evidence baseline and non-Titan baselines. | Evidence identifies runtime values and loading paths; phase assumptions and the selected option are explicit, with unknown client-specific items retained. |
| 2 | Add the fail-closed Titan detector and shared Wrath loading route before adding a Titan data case. Add the Titan profile and build/debug entry points; put `../Titan/Database.xml` in the ordinary Wrath profile's `extra-database-files`, with Wrath `DataRequirements` excluding Titan and Titan `DataRequirements` including it. Add narrow runtime ReferenceDB guards and the early Titan reference file, and isolate build-time ItemDB inputs. Prioritize DBContext and profile tags. | Fixtures cover detector boundaries and all negative cases; unknown or invalid identity must leave Titan inactive. Wrath and Titan use the shared Wrath route, while Era and SoD retain the Vanilla route. Both XML paths may be enumerated, but only matching requirements and runtime guards allow assignments and registrations. Configuration is valid and build-time ItemDB data is mutually exclusive. |
| 3 | Use one Titan-specific record with complete supporting evidence to connect the Parser, complete independent output, early reference data, and client loading end to end. | Titan activates that record and its references; ordinary Wrath does not activate Titan data; each login uses exactly one complete database. |
| 4 | Implement the selected phase policy and evidenced content differences; address required transmog, achievement, difficulty, and settings compatibility. | Cumulative unlocks, unknown progression, source additions/replacements/removals, event windows, and saved choices behave as reviewed; existing valid sources remain available. |
| 5 | Add version and profile information to Contributor Reports, and add a Titan issue flavor option. | Reports can identify Titan, the full client version/build/interface, ATT version, and observation context. |
| 6 | Connect CI, Release, and artifact checks; complete cross-flavor regression and in-game validation. | A Titan failure fails the overall check; clean installs, release archives, and applicable db-sync pipelines contain the correct artifacts. |

For each game-data addition or correction, list affected IDs, flavor, client build, ATT version, region, observation date, and sources. Under `AGENTS.md`, attach an in-game screenshot, Contributor Report, or direct Wowhead link. Also record the number of independent sources for gameplay claims; mark a claim cross-verified only when at least two independent sources support it. Official overviews can support architectural context, but do not replace evidence for individual drops, rewards, or IDs.

## Validation Approach

| Layer | Cases and method | Pass criteria |
| --- | --- | --- |
| Configuration and preprocessing | Compare tags, phase, patch, inputs, and outputs for Titan, ordinary Wrath, and other Classic profiles; inspect array replacement and the `#if WRATH` fallback. | Titan's required tags are complete, Wrath-specific raw metadata does not also enter Titan, and other profile settings are unchanged. |
| Version boundaries | Use the existing Titan promotions and ICC speedrun titles as condition cases; test before and after `3.80.0` and at the removal boundary. | Program behavior matches the reviewed conditions; verify the game evidence for the data separately. |
| Titan identification | Test fixtures `(11, 38002)` for Titan, `(11, 30405)` for ordinary Wrath, `(2, 11509, SeasonOfDiscovery=2)` for SoD, `(2, 11509)` for Era, and `(5, 20506)` for TBC Anniversary. Also test project `11` at interface `37999`, `38000`, `38999`, and `39000`, other projects, missing globals, nil returns, and wrong types. | Only a numeric Wrath project ID plus a numeric interface in `[38000, 39000)` is Titan; boundaries are false/true/true/false. Missing or invalid identifiers fail closed. These interface values are fixtures from the attachment, not current-client build claims. |
| Loading and isolation | Exercise Titan and ordinary Wrath through the shared Wrath route; exercise Era and SoD through their existing Vanilla route. Inspect XML enumeration, DataRequirements, early reference ordering, localization assignment, category registration, and reference side effects. | XML may enumerate both database paths, but inactive-flavor data makes no assignments or registrations. Titan-specific and Wrath-specific references/localization/categories are mutually exclusive; existing Era/SoD references and SoD behavior remain intact. Runtime guards are not treated as preventing file/chunk loading. |
| Phases | Use synthetic same-build/different-phase fixtures, including cumulative Phase 5 to Phase 6, future preview, unknown progression, ID collisions/retention boundaries, phase plus removal, nested/merged sources, and separate raid/event dates. Audit the embedded `ach(17341)` Wrath rule. | Valid earlier sources survive; preview does not imply current obtainability; no unintended pruning or overwritten removal state; parent restrictions and multiple-source behavior are explicit; ordinary Wrath settings remain unchanged. |
| Merge and sources | Use fixed samples with different values for the same ID, missing records, array fields, and multiple sources for one item. | Conflicts are handled explicitly; replacing or removing one source does not affect others; results do not depend on accidental file ordering. |
| Raw data | Check snapshot version, locale, hotfix records, and selection settings; test input with the wrong flavor/build. | Mismatched input is explicitly rejected or reported and cannot silently be marked as a successful Titan build. |
| Artifacts | In a clean output location, inspect ReferenceDB, LocalizationDB, Database.xml, Categories, and files referenced by XML. | Required files are present, profiles are consistent, and the build does not rely on leftover files from a previous run. |
| Lua behavior | Follow existing standalone `tests/` conventions with a Lua 5.1 fixture that exercises the actual detector, generated guards, locale/category registration, and reference side effects; do not add a test framework or duplicate only the pure predicate. | All added or affected Lua tests use Lua 5.1 only; fixtures do not replace in-game compatibility validation. |
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
| Phase observations | Active phase and one accessible earlier raid/source; a locked source or separate event window if available. Include date/time zone, realm, build, ATT version, and screenshot or Contributor Report. | Distinguish cumulative availability and event dates from client version; do not infer every reward from raid access. |
| One representative difference | One Titan-specific item/quest/NPC/object ID or one that differs from Wrath, with a Contributor Report, screenshot, or direct Wowhead link. Describe the expected and current display. | Choose the smallest end-to-end case and avoid validating the architecture with guessed data. |
| Collection and instance samples | If available, provide one collected and one uncollected appearance with related item/sourceID, plus a reworked instance difficulty, boss, and drop sample. Do not guess unknown IDs. | Verify collection, difficulty, and source differences without equating item possession with appearance collection. |
| Raw-data export | If a Titan ItemDB or other collection export exists, provide the original file and collection tool, version, date, and locale. State if none is available. | Assess usable inputs, data gaps, and collection options. |

Reports should retain the necessary version, location, difficulty, date, and source. The existing Contributor Report's `GameBuild` currently records only an interface-type number, which cannot replace the full version and build by itself.

### Information to Confirm Through Follow Up Diagnostics

These are technical diagnostic results; users are not expected to infer them from the game UI. After receiving the basic information, provide a narrowly scoped, read-only collection method. This document change does not add or run diagnostic code.

- The exact `GetBuildInfo()` return tuple and value types on the installed Titan client; `WOW_PROJECT_ID` and `WOW_PROJECT_WRATH_CLASSIC` values/types; and `C_Seasons.GetActiveSeason()` behavior plus `Enum.SeasonID.SeasonOfDiscovery` availability. Until captured, the detector's interface-return assumption remains unverified on the user's client.
- The directory actually resolved by `[Game]`, TOC load order, and the sources of ReferenceDB, LocalizationDB, Categories, and supplemental XML on the installed client.
- The actual available transmog/collection API functions, their return semantics, and sourceID data consistency; sample achievement and difficulty capabilities as well.
- SavedVariables locations, whether products share them, and actual account-synchronization source-data behavior.
- Whether Titan Wago or other authoritative snapshots are available and their build/locale/hotfix coverage.

Also decide the first release's content scope: start with loading and a small amount of data, or cover specified instances/events immediately; and whether unreleased content must appear with an in-game phase selector. These scope decisions do not prevent completing the profile and data isolation first.

## Planned File Changes

All paths below are relative to the repository root. “Add” means a proposed path that does not exist yet; “Conditional” means a change requires supporting investigation or testing; “Generated” means produced by tools and not patched by hand. Directory entries represent file sets; finalize their exact contents after selecting the scope and snapshot.

### Configuration and Raw Data

| File or directory | Type | Planned content |
| --- | --- | --- |
| `.contrib/.db/standard/.config/classic/03 - Titan Reforged.config` | Add | Independent profile, complete tags, confirmed full version/build, inputs/outputs, and Titan-inclusive `DataRequirements`. Do not place the shared route's `extra-database-files` entry here. |
| `.contrib/.db/build - classic - 03 - titan.bat`, `.contrib/.db/debug - classic - 03 - titan.bat` | Add | Reuse the existing Parser invocation form and select the Titan profile. |
| `.contrib/.db/build - all.bat`, `.contrib/.db/build - classic - all.bat` | Modify | Include Titan in the corresponding all-version build sets. |
| `.contrib/.db/standard/.config/.wago/Titan Reforged/.update.bat` and CSV files in that directory | Add/import | Confirmed Titan build, locale, and hotfix collection settings and snapshots, with source records. |
| `.contrib/.raw/ItemDB/<confirmed version> Titan Reforged - ItemDB.lua` | Add/import | Titan raw ItemDB with an independent `DBContext`/`DBFileName`; fix the filename after confirming the version. |
| `.contrib/.raw/ItemDB/3.4.0 Wrath of the Lich King - ItemDB.lua`, `.contrib/.db/standard/.config/classic/03 - Wrath.config` | Modify | Give ordinary Wrath raw files a dedicated DBContext, such as `WRATH_CLASSIC_ITEMDB`, enabled only in the Wrath profile; Titan uses `TITAN_REFORGED`. Add `../Titan/Database.xml` to the ordinary Wrath profile's `extra-database-files` and set Wrath `DataRequirements` to exclude Titan; the Titan profile includes Titan requirements. Preserve raw contents and source records, and use the existing generator to make build-time ItemDB inputs mutually exclusive. |
| `.contrib/.source/Item Database Consolidator/Program.cs` and its tool artifacts | Conditional | The existing generator already converts DBContext into `#if`; prioritize reusing it. Extend C# only if tags cannot express the selection rule, then rebuild and validate the matching Consolidator tool to ensure regeneration remains mutually exclusive. |
| `.contrib/.db/standard/00 - Item DB/.dynamic/03 - Wrath.lua`, new `03 - Titan Reforged.lua` | Generated | Generate mutually exclusive data with the Consolidator so `DataPhase=WRATH` does not enable both ItemDBs. |
| `.contrib/.db/standard/.config/retail/retail.config` | Conditional | If Titan JSON is introduced, adjust source selection or the isolation path so Retail's recursive import does not read Titan JSON. |

### Parser and Authored Data

| File or directory | Type | Planned content |
| --- | --- | --- |
| `.contrib/src/Parser/Framework/Framework.cs` | Modify | Add narrow runtime return guards to generated Wrath and Titan ReferenceDB outputs so inactive-flavor reference assignments do not activate. Preserve the existing Era/SoD references; phase setup changes remain conditional on the chosen phase model. |
| `.contrib/src/Parser/Framework/Framework.Processing.cs` | Conditional | Verify retention limits and timeline interaction for the selected phase model. Change only when existing rules cannot retain and validate the required representation; an in-game phase UI alone does not require a C# change. |
| `.contrib/src/Parser/DB/WagoData.cs`, `.contrib/src/Parser/DataValidator.cs` | Conditional | Check source version, flavor, and same-ID conflicts at the appropriate layer; first settle snapshot metadata format and error behavior. |
| `.contrib/src/Parser/Program.cs`, `CustomConfiguration.cs` (same directory) | Conditional | Check profile load order and array replacement; change only if a new validation entry point or generated routing is needed. Existing `db-relative` can already select an independent output. |
| `.contrib/src/Parser/Framework/Framework.Objects.cs` | Conditional | Reuse existing XML-include and category guards. Adjust generated header order only if accessing the AddOn table through varargs cannot support the existing early guards. |
| `.contrib/.db/standard/titan/Titan Reforged.lua` | Add | Entry point for the first verified Titan-specific content, guarded by `TITAN_REFORGED`. Split by location as the content grows. |
| `.contrib/.db/shared/lib/Constants/Phases.lua`, `.contrib/.db/shared/functions/Shortcuts.lua` | Modify/conditional | Titan phase definitions and required helpers; preserve ordinary Wrath phase semantics. |
| `.contrib/.db/standard/20 - China Only/CN Promotions Classic&Titanforged.lua`, `CN InGameShop.lua` (same directory) | Conditional | Verify scope and sources item by item before adjusting conditions; do not move whole files or batch-edit the timeline. |
| `.contrib/.db/shared/modules/MountDB.lua` and affected standard instance/quest sources | Conditional | Correct evidenced mapping, drops, costs, and reward differences; list exact paths and IDs after selecting cases. |
| `.contrib/src/Parser/FieldTypes/Timeline.cs`, `TimelineEntry.cs` (same directory) | Evaluate later | Modify only if a verified conflict requires separating timeline semantics. |
| `.contrib/src/Parser/Parser.csproj`, `.contrib/.tools/Parser.exe` and related tool artifacts | Conditional/generated | If C# changes require a new compile item or an update to the CI tool, rebuild under the repository delivery process; do not include unverified binaries. |

### In Game and Diagnostics

| File or directory | Type | Planned content |
| --- | --- | --- |
| `AllTheThings.toc`, `src/WoW API Wrappers.lua` | Modify | Add the fail-closed shared Titan predicate and early Titan reference include after generic `db/[Game]/ReferenceDB.lua` but before `base.lua`; preserve the shared Wrath TOC game type. Confirm actual `[Game]` resolution before fixing generated paths. |
| `db/Wrath/ReferenceDB.lua`, `db/Titan/ReferenceDB.lua`, `db/Wrath/Database.xml`, `db/Titan/Database.xml`, `LocalizationDB.lua` and `Categories/` under both directories | Generated | Keep Titan as a complete independent dataset referenced through XML. The ordinary Wrath profile adds `../Titan/Database.xml` through `extra-database-files`; profile-specific `DataRequirements` and runtime guards control assignments/registration, not XML enumeration. Generate mutually exclusive Wrath/Titan ReferenceDB assignments and include the Titan reference file early in the TOC. Confirm exact output paths against the installed `[Game]` directory. |
| `src/Settings/Pages/Phases.lua` | Conditional | Titan phase controls and defaults if option B or C is chosen; distinguish actual progression from display choices. Defer when the first release has no phase UI. |
| `src/Modules/Filter.lua`, `src/DataHandling.lua`, `src/Settings/Settings.lua` | Conditional | Review parent/child filtering, phase-state source merging, saved numeric IDs, and defaults. Change only for the selected model or proven migration need; preserve non-Titan choices. |
| `src/Classes/Transmog.lua`, `src/Settings/Settings.lua`, `src/Settings/Pages/General.lua` | Conditional | Check appearance collection and version gates in settings; update according to verified capabilities. |
| `src/Classes/Achievement.lua`, `Achievement.Classic.lua`, `Difficulty.lua` (same directory), `src/UI/Windows/Illusions.lua` | Conditional | Adjust only achievement, difficulty, or feature paths that testing shows are incompatible. |
| `src/Modules/Contributor.lua`, `src/UI/Windows/Debugger.lua` | Modify | Add profile, full version/build/interface, locale, and required environment details to reports; record unknown values explicitly. |
| `AllTheThings.lua`, `src/UI/Windows/Account Management.lua` | Conditional | Verify character data and source-collection synchronization; add isolation/migration only if proven necessary. |

### Tests

| File | Type | Planned content |
| --- | --- | --- |
| `tests/titan-flavor-loading.lua` | Add | Follow existing standalone `tests/` conventions; use Lua 5.1 to exercise the actual detector and generated loading guards, including locale/category/reference side effects and negative client fixtures. Do not create a new framework. |
| `tests/titan-phases.lua` | Add/conditional | Proposed Lua 5.1 fixture for the chosen runtime phase model, including source filtering/merging, unavailable states, unknown progression, and saved settings. Keep Parser pruning checks in the supported Parser pipeline; do not simulate them as proof of full Parser behavior. |

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
| [Program.cs](../src/Parser/Program.cs), 247–283, 292–349, 434–528, 914–964 | Configuration composition, independent output, raw-data and Lua loading, and tag/phase checks. |
| [CustomConfiguration.cs](../src/Parser/CustomConfiguration.cs), 212–239 | Configuration-object merge and whole-array replacement. |
| [Framework.cs](../src/Parser/Framework/Framework.cs), 59–99, 804–829; [Framework.Processing.cs](../src/Parser/Framework/Framework.Processing.cs), around 927 | Fixed phase table, DataPatch/DataPhase, and phase limit. |
| [WagoData.cs](../src/Parser/DB/WagoData.cs), 160–176, 1225–1233; [shared initialization](../.db/shared/.main.lua), 49–89 | CSV source parsing and same-ID cache; Lua container merge behavior. |
| [Wrath profile](<../.db/standard/.config/classic/03 - Wrath.config>); [Era profile](<../.db/standard/.config/classic/01 - Classic Era.config>); [SoD profile](<../.db/standard/.config/classic/01 - Classic SOD.config>) | Existing version settings and a precedent for producing different flavors from the same source tree. |
| [Item Database Consolidator](<../.source/Item Database Consolidator/Program.cs>), 15–47 | Raw ItemDB conversion, output paths, and preprocessing-condition generation. |
| [Framework.cs](../src/Parser/Framework/Framework.cs), 2105–2114, 3601–3606, 3654–3673; [Framework.Objects.cs](../src/Parser/Framework/Framework.Objects.cs), 1312–1317, 1381–1387, 1391–1420; [Vanilla Database.xml](../../db/Vanilla/Database.xml), 17 | Existing multi-file XML include, localization/category guards, and the absence of generated ReferenceDB guards. |
| [base.lua](../../src/base.lua), 493–496, 551–555; [FactionData.lua](../../src/Modules/FactionData.lua), 24–32 | Early ReferenceDB consumers that require Titan reference data before base initialization. |
| [TOC](../../AllTheThings.toc), 6, 37–40, 96; [Contributor](../../src/Modules/Contributor.lua), 76–84, 262 | Interface declaration, data-loading entry point, and report version information. |
| [Phase constants](../.db/shared/lib/Constants/Phases.lua), 41–53, 84–122, 2366–2402; [Shortcuts](../.db/shared/functions/Shortcuts.lua), 681–695, 1264–1265 | Occupied IDs, Wrath phase definitions, and missing-value versus forced phase application. |
| [Framework.Processing.cs](../src/Parser/Framework/Framework.Processing.cs), 919–942, 5002–5062; [Program.cs](../src/Parser/Program.cs), 965–970 | Timeline pruning/overwrites precede phase retention; numeric phase preprocessing remains a TODO. |
| [Phase settings](../../src/Settings/Pages/Phases.lua), 21–68, 95–191; [Settings](../../src/Settings/Settings.lua), 589–620, 1171–1176 | Per-ID visibility, historical defaults, hardcoded pages, and saved choices. |
| [Filter](../../src/Modules/Filter.lua), 575–580, 617–624; [DataHandling](../../src/DataHandling.lua), 803–831, 932–955; [Ulduar](<../.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/5 Ulduar.lua>), 643–655 | Parent-chain filtering, source merging, and an embedded Wrath achievement phase rule requiring review. |
