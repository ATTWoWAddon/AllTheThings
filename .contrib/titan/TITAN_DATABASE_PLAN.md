# Titan Reforged Dedicated Database Plan

[English](TITAN_DATABASE_PLAN.md) | [繁體中文](TITAN_DATABASE_PLAN.zh-TW.md) | [简体中文](TITAN_DATABASE_PLAN.zh-CN.md)

Status: Runtime foundation implementation draft; Parser work is paused during its upgrade. Updated: 2026-10-21.

Repository baseline: `master` at `0f963463d9f0fa1e116223809f496187df4b8687`.

This plan covers Parser configuration, data sources, in-game loading, Contributor Reports, and build and release delivery for China-region Titan Reforged (the Chrono realm). The goal is to give Titan its own database artifacts while retaining reusable `standard/shared` sources and separating release progression for Era, SoD, Wrath, and Titan.

The current delivery adds runtime support, diagnostics, standalone Lua 5.1 tests, and these documents. Parser/configuration changes, authored source adapters, generated databases, and build/release integration remain outside this delivery while the Parser is upgraded. No generated progression profile is activated yet, and no new Titan database include is installed.

All three issue forms already offer `Titan`, and the Lua regression workflow discovers standalone suites automatically. Those capabilities are reused. The selected design below separates content variants from progression; the client evidence checklist remains outstanding.

## Initial Implementation Status

| Area | Current delivery and remaining work |
| --- | --- |
| Identity and capabilities | The candidate `app.IsTitanReforged()` predicate, capability checks, and diagnostics are implemented. Installed-client values remain unverified. |
| Progression runtime | Namespaced profiles, display defaults, saved choices, source alternatives, and explicit availability updates are implemented. With no `app.ProgressionProfile`, existing phase handling stays active. |
| Content variants | The runtime preserves distinct source conditions. Documentation and synthetic fixtures distinguish SoD replacement bosses/rewards and repeated NPC IDs; the runtime does not create or substitute loot tables. |
| Loading and data | Separate `db/Titan/`, guarded database activation, generated profiles, actual content bindings, and authored callback adapters remain pending Parser integration. The current TOC addition loads only the runtime module. |
| Inputs and delivery | Snapshot isolation, raw-data regeneration, Parser changes, generated output, and Parser/Release workflow changes are paused and excluded from the current commits. |
| Verification | Standalone Lua 5.1 suites exercise actual runtime code with fixtures. Generated-data integration and live-client verification remain outstanding; fixture values are not game observations. |

See [RUNTIME_PROGRESSION.md](RUNTIME_PROGRESSION.md) for the implemented runtime contract, test commands, and integration boundary. The following sections retain the full target architecture and its remaining evidence requirements; descriptions of Parser behavior are integration requirements, not a claim that the paused changes have shipped.

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

#### Selected Design: Independent Content Variants and Release Profiles

The implementation uses separate progression metadata. It replaces the earlier proposal to omit future content through cumulative build tags. Three independent decisions must remain explicit:

| Decision | Representation | Responsibility |
| --- | --- | --- |
| Which content exists in this flavor? | Existing authored sources, flavor conditions, timeline compatibility, and distinct instance/difficulty/boss/reward branches | Select the appropriate content variant and its acquisition relationships. |
| When is an acquisition source released? | Shared neutral bindings plus a flavor-specific progression profile | Assign namespaced release requirements to qualified source occurrences. |
| Is that source available under the current display choices? | Runtime release filters together with `u` and event conditions | Evaluate the complete source without erasing removal or event restrictions. |

SoD is not merely Classic data with a different release calendar. Reworked raids may replace bosses, rewards, token costs, and difficulty variants. The catalog only annotates existing sources: it does not copy a Classic loot table into SoD or use a phase mapping to substitute a boss. Retain separate authored variants and reuse only the portions established to be identical. This delivery preserves the existing flavor/timeline selection; it does not introduce a general data-overlay or replacement engine.

Bindings identify the repository source file and an ordered ancestry of identity fields. An instance ID alone is insufficient: Classic and Wrath Naxxramas both use `754`. Likewise, MC's legacy 40-player difficulty `9` and SoD difficulty `201` are distinct occurrences. The same NPC may also have different reward releases: the maintained MC source contains NPC `227819` with Phase 4 Tier 1 rewards such as `226659`, and a second Phase 5 Tier 2 occurrence with `232099`. A whole-NPC Phase 5 binding would incorrectly hide the earlier rewards. Preserve their separate source requirements. These are repository regression cases, not newly verified game observations.

The shared catalog lives at `.contrib/.db/shared/.config/progression/bindings.json`. Each flavor's `era.json`, `sod.json`, `wrath.json`, or `titan.json` supplies phase definitions, a baseline, neutral-content mappings, and explicitly declared legacy adapters. For example, the same Ulduar acquisition scope maps to `wrath:2` and `titan:6`; SoD MC maps to `sod:4` while the legacy variant maps to `era:1`. Keys are stable and namespaced; order is compared only within one profile. A new profile can be configured without adding an engine whitelist entry.

Parser bindings run before source merging, while the original source filename and raw `groups` hierarchy are available. Exported nodes carry `releasePhases = { "titan:6" }`; active profile metadata is assigned in guarded LocalizationDB, preserving the existing shared Era/SoD ReferenceDB route. Binding diagnostics record actual match counts separately from addon data.

Release requirements on one source and its ancestors combine with AND. Alternative acquisition sources combine with OR, but each alternative must satisfy its own release, unavailable, and event conditions together. An open but removed source cannot borrow obtainability from a future source. Source merging and cloning retain this pairing; callback-driven availability changes must also affect displayed copies.

Only explicitly declared release IDs are adapted out of `u` in a mapped scope. `u=1`, `u=2`, non-release statuses, and undeclared subphase conditions remain intact. A different child release is mapped explicitly or retains legacy compatibility. The existing SoD phase alias block remains for unmigrated data; reverse-mapping ambiguous numeric aliases would lose meaning.

The pending authored-source integration adapts six existing Ulduar callbacks to use `Progression.SetSourceAvailability(group, "u", value)` to change only their own availability field, including on merged display copies. Generic callback dispatch remains unchanged. A legacy callback that changes `u` or `e` on a merged source must use this explicit adapter when its scope is migrated; unrelated source conditions must remain paired.

#### Display Policy, Migration Coverage, and Evidence

- `app.ProgressionProfile` describes the active flavor and selected visibility baseline. Flat `ReleasePhases` saved choices retain explicit `false` values and do not alias copied settings profiles. Where a phase declares `legacyU`, existing explicit numeric preferences remain honored. Titan declares no Wrath preference aliases.
- The Phase settings page exposes that flavor's release choices. Defaults come from its profile, not the client interface or calendar. Unknown mappings are hidden by default; users may explicitly inspect them. An invalid or unknown baseline is rejected. No display choice claims to detect the actual server phase.
- A baseline-only change leaves compatible category/source bodies unchanged. Future releases remain available for runtime visibility; changing phase does not synthesize content excluded by flavor or timeline compatibility.
- Initial migration covers selected MC/BWL/AQ/Naxx variants, Ulduar, and the reviewed Titan roadmap scopes. Unmapped sources retain documented legacy behavior. This is not a claim that all ATT phase authoring has been migrated.
- Titan roadmap mappings cover Ulduar 6; Karazhan/Gruul/Magtheridon 7; BWL/Onyxia/AQ20 8; AQ40/Nightmare Dragons 9; ICC/Ruby Sanctum 10. Black Temple and Hyjal remain exported with an unknown requirement. Earlier Titan MC/Naxx chronology is not inferred. Individual Titan bosses, loot, costs, and difficulty behavior remain unverified.
- Keep publication, effective, and observation dates separate. The official roadmap is context for provisional source scopes, not evidence that all rewards match historical data. Obtain screenshots, Contributor Reports, or direct Wowhead evidence for record-level changes, with independent-provider counts and verification status.

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

1. Add `../Titan/Database.xml` to the ordinary Wrath profile's `extra-database-files`. Give Wrath and Titan mutually exclusive `DataRequirements`. Both XML paths are enumerated on the shared Wrath route; the guards determine which dataset writes localization and registers categories. Titan remains a complete independent dataset built from provisionally selected shared authored sources.
2. Evaluate the shared predicate in the existing early API wrappers. Generated guards precede `local appName, _ = ...`, so access the AddOn table through chunk varargs, such as `select(2, ...)`, or make a minimal header-order adjustment. Merely defining the predicate earlier does not put an `app` or `_` local in scope.
3. Add narrowly opted-in runtime return guards to generated Wrath and Titan ReferenceDB files. The previous generator did not guard ReferenceDB with `DataRequirements`, and the SoD XML does not include a separate SoD ReferenceDB. Applying those requirements globally would change the existing Era/SoD reference behavior.
4. Retain the generic `db\[Game]\ReferenceDB.lua` TOC entry and add guarded `db\Titan\ReferenceDB.lua` immediately after it, before `base.lua`. Exactly one complete reference set must be active before core initialization: `base.lua` reads `RaceDB` and initializes `Presets.ALL`, while `FactionData.lua` derives `FACTION_RACES` from references. Selecting references later in Database.xml would leave earlier derived state at risk.

These guards prevent inactive data assignments, construction, and registration; they do not prevent file reads, Lua parsing, or XML enumeration. Check every emitted category and localization artifact, including any separately delivered auto-locale output. `db/Titan/` is an internal ATT artifact directory, not a new Blizzard game type. Verify the provisional shared Wrath path on the installed client, and preserve existing Era/SoD references.

Blizzard has confirmed that Titan has transmog and collection systems, and ATT already has some logic that enables features based on API availability. Verify Titan's capabilities and data semantics individually; do not set Titan to `IsRetail=true` to enable every Retail path. [Official feature overview](https://wow.blizzard.cn/news/20251022/40565_1266152.html)

First inspect actual SavedVariables sharing and source-collection semantics, then decide on account synchronization. Expand the changes only if isolation or migration is proven necessary; the plan does not assume existing cross-product data contamination.

## Implementation Order and Completion Criteria

| Order | Work | Completion criteria |
| --- | --- | --- |
| 1 | Record provisional client identity, source evidence, and the unchanged-master baseline. | Unknown client values remain explicit; obtaining them is follow-up work rather than a prerequisite for this authorized bootstrap. |
| 2 | Add Titan input/output isolation and guarded shared-Wrath loading. | Invalid identities leave Titan inactive; ordinary Wrath snapshots cannot enter Titan; only the active database registers. |
| 3 | Bind qualified content variants to independent flavor profiles. | Real source bindings match; duplicate instance/NPC IDs do not flatten distinct bosses, rewards, or releases; baseline changes do not prune category bodies. |
| 4 | Connect runtime filters, settings, source alternatives, and callback updates. | Release AND/OR semantics preserve unavailable/event restrictions and existing saved preferences, including displayed clones. |
| 5 | Add capability checks and diagnostic reports; connect build routes and artifact validation. | Reports distinguish assumptions from observations; a missing or failed Titan output fails delivery checks. |
| 6 | Build the current Parser on Windows, generate the production matrix, review output, then publish the draft. | Record exact inputs, executable/output hashes, completion logs, and regression results; keep live-client verification outstanding. |

Keep code, generated outputs, and documentation reviewable. Every game-data claim must identify affected IDs, flavor/build, ATT version, observation context, and supporting evidence. Under `AGENTS.md`, screenshots, Contributor Reports, or direct Wowhead links support record changes; official overviews and AI explanations do not replace them. Claims with fewer than two independent supporting providers remain explicitly unverified.

## Validation Approach

| Layer | Cases and method | Pass criteria |
| --- | --- | --- |
| Configuration and preprocessing | Compare tags, phase, patch, inputs, and outputs for Titan, ordinary Wrath, and other Classic profiles; inspect array replacement and the `#if WRATH` fallback. | Titan's required tags are complete, Wrath-specific raw metadata does not also enter Titan, and other profile settings are unchanged. |
| Version boundaries | Use the existing Titan promotions and ICC speedrun titles as condition cases; test before and after `3.80.0` and at the removal boundary. | Program behavior matches the reviewed conditions; verify the game evidence for the data separately. |
| Titan identification | Test fixtures `(11, 38002)` for Titan, `(11, 30405)` for ordinary Wrath, `(2, 11509, SeasonOfDiscovery=2)` for SoD, `(2, 11509)` for Era, and `(5, 20506)` for TBC Anniversary. Also test project `11` at interface `37999`, `38000`, `38999`, and `39000`, other projects, missing globals, nil returns, and wrong types. | Only a numeric Wrath project ID plus a numeric interface in `[38000, 39000)` is Titan; boundaries are false/true/true/false. Missing or invalid identifiers fail closed. These interface values are fixtures from the attachment, not current-client build claims. |
| Loading and isolation | Exercise Titan and ordinary Wrath through the shared Wrath route; exercise Era and SoD through their existing Vanilla route. Inspect XML enumeration, DataRequirements, early reference ordering, localization assignment, category registration, and reference side effects. | XML may enumerate both database paths, but inactive-flavor data makes no assignments or registrations. Titan-specific and Wrath-specific references/localization/categories are mutually exclusive; existing Era/SoD references and SoD behavior remain intact. Runtime guards are not treated as preventing file/chunk loading. |
| Phases and content variants | Test same-build/different-baseline bodies, profile isolation, future/unknown visibility, `u`/event pairing, duplicate instance/NPC IDs, changed bosses/rewards, late child releases, saved preferences, and all six Ulduar callbacks on original/displayed sources. Inspect actual generated bindings and content. | No phase-only pruning, cross-variant loot substitution, overwritten removal, or synthetic availability assembled from different sources; legacy explicit preferences survive. |
| Merge and sources | Use fixed samples with different values for the same ID, missing records, array fields, and multiple sources for one item. | Conflicts are handled explicitly; replacing or removing one source does not affect others; results do not depend on accidental file ordering. |
| Raw data | Check snapshot version, locale, hotfix records, and selection settings; test input with the wrong flavor/build. | Mismatched input is explicitly rejected or reported and cannot silently be marked as a successful Titan build. |
| Artifacts | In a clean output location, inspect ReferenceDB, LocalizationDB, Database.xml, Categories, and files referenced by XML. | Required files are present, profiles are consistent, and the build does not rely on leftover files from a previous run. |
| Lua behavior | Follow existing standalone `tests/` conventions with a Lua 5.1 fixture that exercises the actual detector, generated guards, locale/category registration, and reference side effects. The existing workflow discovers nested suites automatically; do not add a registry, a framework, or a copy of only the pure predicate. | All added or affected Lua tests use Lua 5.1 only; each suite runs in a fresh process and failures reach the aggregate gate. Fixtures do not replace in-game compatibility validation. |
| Full Parser | Run the data pipeline in the supported Parser build environment, retaining configuration, input snapshot, and error records. | The full build succeeds. Record this as tool-integration validation, separately from Lua 5.1 AddOn tests. |
| Cross-flavor regression | Compare fresh Retail, Era, SoD, TBC, Wrath, Cata, Mists, and Forever master outputs against the candidate; generate Titan separately. This run excludes Beta. | Era/SoD/Wrath differences must match the declared progression/guard changes. Non-opt-in outputs must remain equivalent; account for differences without ignoring entire files. |
| In game | Log in/reload on Titan and ordinary Wrath; test data search, phase settings, actual instance difficulty, collected and uncollected appearances, and Contributor Reports. Check account synchronization when needed. | The correct database loads without Lua errors, and collection status matches actual state. CN or zhCN clients that are not Titan are not misidentified. |
| CI and delivery | Intentionally fail the Titan step to test the overall gate; inspect release zip, clean checkout, missing and stale files, and applicable db-sync hash/dirty-db protection. | `continue-on-error` cannot swallow a failure; delivered artifacts contain the complete Titan output. |

Full Parser tests must use its supported execution environment. This plan does not replace the Parser's NLua/native Lua dependency. Record test tools, data snapshots, expected results, and actual results separately; a successful Lua fixture does not establish that the full Parser or client has been validated.

The existing [Lua regression workflow](../../.github/workflows/LuaRegression.yml) automatically discovers standalone suites and runs each in a fresh Lua 5.1 process. This runtime delivery relies on its existing source/test triggers and changes no workflow. Tests depending on generated Titan output remain outside the committed test set until Parser integration resumes.

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

Contributor Reports retain the existing `GameBuild` interface field and now append the full captured client version/build/interface, value types, project IDs, region/locale/realm, and generated database profile/phase assumptions. Unknown values and actual server progression remain explicit.

### Information to Confirm Through Follow Up Diagnostics

These are technical diagnostic results; users are not expected to infer them from the game UI. Read-only diagnostic fields are now included in Contributor Reports and Raw/Readable Debugger exports. They report capability presence and observed values; they do not establish collection API semantics, server progression, or the installed `[Game]` substitution.

- The exact `GetBuildInfo()` return tuple and value types on the installed Titan client; `WOW_PROJECT_ID` and `WOW_PROJECT_WRATH_CLASSIC` values/types; and `C_Seasons.GetActiveSeason()` behavior plus `Enum.SeasonID.SeasonOfDiscovery` availability. Until captured, the detector's interface-return assumption remains unverified on the user's client.
- The directory actually resolved by `[Game]`, TOC load order, and the sources of ReferenceDB, LocalizationDB, Categories, and supplemental XML on the installed client.
- The actual available transmog/collection API functions, their return semantics, and sourceID data consistency; sample achievement and difficulty capabilities as well.
- SavedVariables locations, whether products share them, and actual account-synchronization source-data behavior.
- Whether Titan Wago or other authoritative snapshots are available and their build/locale/hotfix coverage.

This delivery establishes the runtime foundation, capability checks, and diagnostics. Database routing, source bindings, and generated-data validation await Parser integration. New or replacement Titan content requires record-level evidence.

## Implementation File Inventory

This inventory covers the complete target architecture. Only runtime Lua, standalone runtime tests, the optional runtime benchmark, and these documents are included in the current delivery. Parser/configuration/authored-source/generated/workflow paths below remain pending and uncommitted. Paths are relative to the repository root; generated bodies must come from the matching tools.

| Files | Purpose |
| --- | --- |
| `.contrib/.db/standard/.config/classic/03 - Titan Reforged.config`; existing Era/SoD/Wrath configs; `shared/.config/root.config` | Isolated Titan profile and independent progression configuration. |
| `.contrib/.db/shared/.config/progression/{bindings,era,sod,wrath,titan}.json` | Qualified source bindings and flavor-specific release definitions/defaults. |
| `.contrib/src/Parser/{ProgressionCatalog,TitanProfile,CustomConfiguration}.cs`, `Parser.csproj` | Catalog/snapshot validation and export support. |
| `.contrib/src/Parser/Framework/{Framework,Framework.Merge,Framework.Objects}.cs` | Bind before merging, retain distinct requirements, export active metadata and guarded references. |
| `.contrib/.raw/ItemDB/3.4.0 Wrath of the Lich King - ItemDB.lua`; generated `.dynamic/03 - Wrath.lua` | Dedicated ordinary-Wrath raw-data context, regenerated through the Consolidator. |
| `.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/5 Ulduar.lua` | Preserve existing Wrath callback behavior through independent phase preferences; exclude Titan-specific inference. |
| `AllTheThings.toc`; `src/WoW API Wrappers.lua`; `src/Modules/Progression.lua` | Early identity/loading and the runtime progression engine. |
| `src/DataHandling.lua`; `src/Classes/base.lua`; `src/Modules/Filter.lua`; `src/Settings/Settings.lua`; `src/Settings/Pages/Phases.lua` | Source merge/clone availability, recursive filters, profile storage, and release controls. |
| `src/Classes/Transmog.lua`; `src/Settings/Pages/General.lua`; Contributor and Debugger modules | Narrow capability fallback and diagnostic exports. |
| `db/{Titan,Wrath,Vanilla,VanillaSOD}/`; `.contrib/.tools/Parser.exe` | Tool-generated database outputs and the matching compiled Parser. Other generated flavors are refreshed only from validated runs. |
| `.contrib/.db/build*`; Titan debug entry; `.contrib/build-parser.ps1`; `.contrib/validate-db.py`; four Parser/Release workflows | Current-source builds, Titan production generation, fresh output checks, and failure aggregation. |
| `tests/{flavor-progression,titan-flavor-loading}.lua`; `.contrib/titan/ParserIntegrationTests.cs`, `Test-Parser.ps1`, `test_pipeline.py`; artifact validator tests | Lua 5.1 regression, compiled Parser integration, snapshot and delivery checks. |
| `.contrib/titan/`; `.contrib/.db/standard/.config/.wago/Titan Reforged/`; `.contrib/db-sync/README.md` | Three-language architecture, operational instructions, isolated snapshot tooling, and delivery documentation. |

There is no fabricated Titan raw ItemDB or Wago snapshot, separate `.db/titan` root, broad timeline rewrite, or migration of every legacy phase. New verified Titan records, replacement loot tables, and product-install shortcuts remain follow-up work requiring evidence.

## Primary Code References

Use current symbols rather than historical line numbers: `ProgressionCatalog.cs`, `TitanProfile.cs`, [runtime progression](../../src/Modules/Progression.lua), [phase settings](../../src/Settings/Pages/Phases.lua), [filters](../../src/Modules/Filter.lua), [source merging](../../src/DataHandling.lua), [legacy phase declarations](../.db/shared/lib/Constants/Phases.lua), and [shared shortcuts](../.db/shared/functions/Shortcuts.lua).
