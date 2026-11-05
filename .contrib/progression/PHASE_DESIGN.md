# Phase scheduling and legacy-authoring retirement

**Status: proposed; implementation requires maintainer approval. This PR contains only this document.** No runtime, Parser, configuration, test, database, or binary implementation is included.

The source inventory is based on `master` at `0668031cb5986d021dc12611b1ee040a975132e9`. The [unmerged prototype](https://github.com/NORPG/AllTheThings/tree/0317bae99cad879ebb045b48663ad7306da744ee) is reference material, not a dependency or implementation of this design. Its positive-only `releasePhases`/independent-checkbox proposal is superseded here.

## 1. Required destination and four stages

**The destination is to stop assigning release phases directly in authored Lua database records.** Authors provide one `progressionKey`; external ruleset/profile policies selected by an explicit output context determine opening, removal, and reopening. `applyclassicphase`, direct `phase` assignments, and indirect phase-writing helpers are transitional inputs, not permanent fallbacks.

| Stage | Authored source | Official output authority | Advancement gate |
| --- | --- | --- | --- |
| **1. Existing behavior** | Original `applyclassicphase`, direct/propagated phase values, templates, and callbacks. | Existing legacy Parser/runtime. | Inventory every producer and consumer; freeze inputs, tools, build contexts, outputs, and legacy settings vectors for comparison. |
| **2. Add progress annotations** | Add `progressionKey` and external policies while retaining the original legacy expressions. | **Legacy only.** The progress path collects coverage and validates policy but cannot affect shipped output or controls. | Official outputs remain byte-identical to the pinned legacy baseline, excluding explicitly identified diagnostic/artifact metadata. Complete coverage includes every distinct nested transition and all supported builds. |
| **3. Progress output; legacy golden** | Legacy expressions remain solely for the separate golden compilation. | **Progress only.** Production must not infer, repair, or default any policy from legacy phase values or phase-driven callbacks. | Independent legacy/progress comparison, all boundary fixtures, build eligibility, complete coverage, and authority-isolation tests pass. New capabilities unsupported by legacy have separate reviewed expected results. |
| **4. Remove legacy authoring** | Remove `applyclassicphase`, direct phase assignments, obsolete phase-writing helpers/parameters, and legacy-only callback branches. Keep `progressionKey` and unrelated source conditions. | Progress only; old golden survives as pinned test evidence, not a second authoring path. | Full inventory is resolved, no live legacy writer/read dependency remains, and strict validation prevents reintroduction. |

The stages apply to the complete migration, not merely the first raids. A pilot can exercise stages 2–3 in isolated validation, but cannot justify removing a globally used helper. Cut over a complete propagation chain, including shared helpers/caches and nested sources; do not publish a mixture that silently falls back to legacy for uncovered content.

### Source shape through the stages

This example uses the existing SoD difficulty wrapper to show the authoring transition; omitted bosses, rewards, and guards remain intact.

```lua
-- Stage 1
applyclassicphase(SOD_PHASE_FOUR, d(DIFFICULTY.SOD.PLAYER20, {
    -- Existing acquisition data.
}))

-- Stages 2 and 3: same authored form, different compiler authority.
applyclassicphase(SOD_PHASE_FOUR, d(DIFFICULTY.SOD.PLAYER20, {
    progressionKey = "raid.mc.sod20",
    -- The same acquisition data.
}))

-- Stage 4: no authored phase or legacy wrapper.
d(DIFFICULTY.SOD.PLAYER20, {
    progressionKey = "raid.mc.sod20",
    -- The same acquisition data.
})
```

In stage 3 the old wrapper cannot contribute to production output. A missing later-child key must fail comparison/coverage; the production compiler must not recover that missing transition by inspecting the old child's `phase`. The production authority must suppress every legacy timing producer before normalization or merging: helper writes, literal/propagated phase fields, RecipeDB phase caches and copies, and phase-driven serialized callback branches. Ignoring only `applyclassicphase` is insufficient. Keep unrelated unavailable/event/level code; do not indiscriminately strip `u` writes. The legacy compilation retains those original timing paths in its isolated process.

## 2. What humans maintain

Keep **what can be obtained and from which actual source** in Lua. Place the scheduling key on the narrowest scope with its own availability: a dungeon, a boss, a reward group, or a particular item/vendor occurrence. Keep **when that scope is available** in the explicitly selected ruleset and schedule profile.

- Rescheduling an annotated source changes one policy entry.
- Adding a later boss or drop adds its actual Lua data and its own key/policy. Existing children inherit their parent; they do not all need duplicate keys.
- A removed source remains in the database for inspection where the configured client supports it. Removing its availability does not delete the item or another acquisition route.
- Shared NPC/item IDs do not prove that two sources are the same. Existing SoD variants and different vendor/reward occurrences remain separate.
- Repeated keys are allowed when occurrences intentionally share policy. The key is not a merge identity.

The only new **authored acquisition field** is `progressionKey` (the “progress field” in this plan). There is no alias named `progress`, `fallbackPhase`, or a replacement numeric phase field.

| Data layer | Fields and responsibility |
| --- | --- |
| Authored acquisition Lua | `progressionKey`: one nonempty string on a source scope. Existing `u`, `e`, timeline, level, and other non-phase conditions keep their meaning. |
| Transitional legacy inputs | `phase`, `applyclassicphase`, numeric recipe-phase parameters, and phase-driven callback code exist only as specified by stages 1–3. They are retired in stage 4. |
| Generated acquisition routes | `progressionScopes`: an array of namespaced policy keys. Parser creates it; authors do not write it directly. |
| Generated `LocalizationDB.lua` | `app.ProgressionProfile`: compiled ordered milestones, scope windows, and view defaults. No positive-only `releasePhases` schema is introduced. |
| Saved settings | One saved `viewPhase` under the `(flavorId, profileId)` pair, plus inspection controls. Existing numeric SavedVariables are retained as legacy history/raw unavailable settings, not interpreted as a chronology. |

Input markers never leak into addon output. A neutral hint may pass through a source-generation sidecar before becoming an actual acquisition annotation; it must not become a global rule that rewrites every same-ID item/NPC source.

## 2a. Identity and policy selection: flavor is not expansion

Four concepts must remain separate:

| Concept | Meaning | Must not be inferred from it |
| --- | --- | --- |
| Content expansion | Where a dungeon, boss, or item originated. One ruleset can contain content from several expansions. | Gameplay flavor, opening schedule, or loot variant. |
| Build target/source configuration | Resolved client/build compatibility, data roots, preprocessing tags, selected source variants, and load requirements. | A unique gameplay ruleset merely from its filename, `DataPhase`, or build number. |
| `flavorId` | Explicit gameplay ruleset identity. Different flavors can use the same expansion and client build. | Its schedule solely from the expansion label or `IsClassic`/`IsRetail`. |
| `profileId` (`id`) | One stable availability timeline for that flavor, such as a separately selected season or realm policy. | A profile from whichever matching XML happens to load first. |

The existing Era and SoD configurations use the same `DataPatch` (`[1,15,9,70576]`) while selecting different requirements and source variants. The current `season != 2` versus `season == 2` predicates distinguish those existing branches; the negative predicate does not prove that every other or unknown season is the Era ruleset. Likewise, expansion-named configuration files and broad client classifications are not a flavor registry.

### Design flavor families and historical coverage

This plan uses the eight current design families specified for ATT: **Retail (`retail`), progression (`progression`), Anniversary (`anniversary`), SoD (`sod`), Era (`era`), Hardcore (`hardcore`), Forever (`forever`), and Titan (`titan`)**. These are the agreed design categories, not a claim that all eight have verified live support. **Season of Mastery (`som`) is a separate historical flavor.** The historical list is not exhaustive; eight listed families plus SoM is not a claim that only nine flavors have ever existed.

Retail PTR is `retail` on a test channel, not another flavor. A channel may still select different source data or a different reviewed profile; sharing the flavor ID does not force it to share a database or schedule. Expansions such as TBC and Wrath are separate from this list. In particular, an expansion-named target must not automatically select `progression`: the existing TBC configuration includes an Anniversary tag.

Different opening timelines within a family use distinct profile IDs when needed. For example, original and Anniversary Hardcore can remain within `hardcore` while selecting different reviewed profiles; they do not add another current flavor to this list. `main` below is only the proposed initial profile filename, not evidence that one profile covers every context.

Historical classification is documentation, not a new runtime lifecycle field. It does not rewrite SoM's source identity, windows, or `u` conditions. A historical `som` profile supports explicit replay, inspection, and independent golden tests; an unknown live context must never fall back to it. Shared preprocessing tags are not flavor identity: SoD's configuration also contains the `SOM` preprocessing tag, which does not make SoD and SoM the same flavor.

The concrete proposed profile paths appear in section 9. The flavor names are now fixed for this design; complete historical coverage and verified target/runtime/profile bindings remain evidence work.

### One selected context, one artifact, one profile

A compilation context is the fully resolved build/source configuration plus explicit `flavorId` and `profileId`. Keep one profile in each generated artifact. A build target may be invoked in several reviewed contexts, and one flavor/profile may span several targets. This is an explicit relationship in the existing configuration/workflow inputs, not a new discovery registry or automatic Cartesian product.

The proposed selection inputs are:

| Existing configuration/workflow input | Required contract |
| --- | --- |
| Existing base/configuration composition | Resolves data roots, `DataPatch`, preprocessing tags, source variants, and requirements. Record the resolved context, not just the last filename. |
| `ProgressionFlavor` | Explicit expected `flavorId`. Must exactly match the selected profile's `flavorId`. |
| `ProgressionProfile` | Explicit path to one profile file. Its `id` is the selected `profileId`; do not glob a directory or guess by expansion. |
| `ProgressionLegacyEligibility` | Explicit `none` or `preserve-reviewed`. The latter opts this exact context into its independently reviewed legacy eligibility rules; it is not a capability claim for other flavors/targets. |

For example, a synthetic configuration overlay may select `ProgressionFlavor = "example-a"` and `.contrib/.db/shared/.config/progression/example-a/main.json`. Another invocation of the same base client target may select `example-b/main.json`, with its own reviewed source tags and requirements. Existing configuration composition performs that source selection; the schedule file does not manufacture a loot variant.

| Synthetic context | Client target/content expansion | Flavor/profile | Selected source variant | Availability for the same neutral source key |
| --- | --- | --- | --- | --- |
| A | The same synthetic target and expansion | `example-a` / `main` | Variant A's actual boss/reward data | Opens at `4`, stays open. |
| B | The same synthetic target and expansion | `example-b` / `main` | Variant B's actual boss/reward data | Opens at `4.2`, closes at `4.10`. |

The `example-*` IDs are isolated test fixtures, not additional production flavors. No real flavor detector, game build, or server value is assigned by this example. Different source variants must be selected/preserved before evaluating their windows. A window cannot create a boss or loot list missing from the selected context, and a common NPC/item ID cannot combine variants. The existing `NAXX_10MAN_DROPS_25MAN_LOOT` source tag is an example of an explicit content-selection rule that must not be replaced by a schedule.

A flavor/profile can continue across expansion/configuration changes without resetting its saved view. Its local milestone keys keep their original meaning and order; a later chapter uses new stable keys rather than reassigning `"1"` or `"4"`. A genuinely different timeline uses a different explicit profile ID. Saved state belongs to `flavorId:profileId`, not the target or expansion.

### Compilation errors and runtime uncertainty are different

Compilation fails for missing selection inputs, identity mismatch, multiple selected profiles, an unreviewed source/profile binding, or ambiguous eligibility/coverage. Each context has isolated output/staging directories and a manifest naming its flavor/profile, resolved configuration, tags, build values, source variant, and hashes. Reusing a target's old output directory for two contexts must not overwrite one artifact with the other.

At runtime, load requirements must positively and uniquely identify the complete supported context, including profile applicability when one flavor has several realm/region/season policies. A verified flavor match alone cannot choose between two applicable profiles. Existing `DataRequirements` are retained but are not automatically sufficient evidence; where a trusted discriminator is missing, that context remains unsupported until evidence is supplied. Do not invent detection values or infer identity from an expansion, build number, config basename, or a not-other-flavor predicate.

The validated context gate must protect **both** its data and any write of `app.ProgressionProfile`, including `LocalizationDB.lua`. Complete unique-context validation before any profile assignment or variant-data merge; unknown/conflicting selection writes neither and leaves no partially selected progression state. Co-loaded XML files may not overwrite a different flavor/profile singleton. Exactly one complete context activates; no matching trusted context or conflicting matches produce a visible unsupported/ambiguity diagnostic and keep independent progression inactive. They do not choose the first/last profile, silently use a default, or return to legacy timing authority. Repeated fragments of the same context must agree on its profile identity and policy fingerprint.

These activation gates are required when progress becomes production authority in stage 3. In stage 2, collect and validate contexts without changing the official legacy loading predicates, outputs, or controls; the byte-equality gate remains in force. The profile example below is the shape assigned only after its matching context has been validated, not an unguarded global assignment.

## 2b. Concrete Era and SoD file examples

This is a review example, not an implementation or a complete production policy. The proposed files below have not been added to ATT. The Parser does not yet implement the proposed `Progression*` configuration fields.

`era` and `sod` are the flavor identifiers selected for this design, not Blizzard API enum values. `main` is a proposed schedule-profile ID, not an existing or automatically detected profile. Opening values illustrate the existing repository's phase assumptions; they are not new in-game verification.

### Files involved

```text
.contrib/.db/
├── standard/
│   ├── .config/classic/
│   │   ├── 01 - Classic Era.config       # Existing build settings: select Era policy.
│   │   └── 01 - Classic SOD.config       # Existing build settings: select SoD policy.
│   └── 01 - Dungeons Raids/01 - Classic/
│       └── 1.0 Molten Core.lua          # Existing source variants: add keys, retain loot.
└── shared/.config/progression/
    ├── era/main.json                    # Proposed Era schedule.
    └── sod/main.json                    # Proposed SoD schedule.
```

Both existing build configurations use `DataPatch: [1, 15, 9, 70576]`. That value does not choose the flavor. Existing preprocessing selects the appropriate source variants; the explicit profile selection below chooses their schedule.

### 1. Existing Lua source: annotate the actual variants

File: `.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/1.0 Molten Core.lua`

This is an abbreviated **stage-4 shape**, after retiring legacy phase assignments. It is not a replacement for the whole file. Keep the existing outer wrappers, guards, conditions, bosses, and rewards. During stages 2–3, retain the existing legacy expressions as required by the migration plan.

```lua
inst(741, { -- Molten Core
    -- #if NOT SEASON_OF_DISCOVERY
    progressionKey = "raid.mc.common",
    -- #endif
    groups = {
        -- Existing shared entries retain their own source conditions.
        -- Keep the existing legacy 40-player block here as well, including
        -- its SoD REMOVED_1_15_1 condition. Do not turn it into an else branch.

        -- #if SEASON_OF_DISCOVERY
        d(DIFFICULTY.SOD.PLAYER20, {
            progressionKey = "raid.mc.sod20",
            timeline = { ADDED_1_15_3 }, -- Existing client/source condition.
            groups = {
                -- Existing SoD bosses and rewards stay here, unchanged.
            },
        }),
        -- #endif
    },
})
```

The source says **which acquisition scope this is**. There is no opening phase number in this final authored form. Existing later-boss/drop transitions require their own keys; they must not disappear when their old wrappers are removed.

The current source also retains the old 40-player content under SoD with its removal timeline. Keep that historical data and condition; selecting SoD does not authorize deleting it. The SoD 20-player scope is a separate addition.

The `NOT SEASON_OF_DISCOVERY` branch is an existing source-selection convention, not proof that every non-SoD client is Era. This example is limited to two explicitly selected contexts. Every other context using that source requires its own reviewed policy coverage.

### 2. Proposed Era policy

File: `.contrib/.db/shared/.config/progression/era/main.json`

```json
{
    "schema": 2,
    "flavorId": "era",
    "id": "main",
    "mode": "phased",
    "defaultView": "1",
    "phases": {
        "1": { "order": 1 }
    },
    "content": {
        "raid.mc.common": {
            "windows": [{ "from": "1" }]
        }
    },
    "verificationStatus": "illustrative"
}
```

This means the original Molten Core scope opens at the selected Era profile's milestone `1`. `defaultView` is only an example display default; it is not a statement about the live server's current progress.

### 3. Proposed SoD policy

File: `.contrib/.db/shared/.config/progression/sod/main.json`

```json
{
    "schema": 2,
    "flavorId": "sod",
    "id": "main",
    "mode": "phased",
    "defaultView": "3",
    "phases": {
        "3": { "order": 1 },
        "4": { "order": 2 }
    },
    "content": {
        "raid.mc.sod20": {
            "windows": [{ "from": "4" }]
        }
    },
    "verificationStatus": "illustrative"
}
```

This means the SoD 20-player scope is future at this profile's `3` and opens at its `4`. Era's `1` and SoD's `4` are not compared. Their identical content-expansion classification does not make them share a schedule or a loot table.

These are complete JSON examples for the shown scopes, **not complete production policies** for the real Era/SoD datasets. All other emitted keys and independent transitions still require coverage.

### 4. Existing build configurations: select a profile explicitly

Add the following proposed fields to the existing configurations. These are merge excerpts, not replacement files. Paths here are shown repository-relative; the future implementation must resolve and validate the explicit path consistently.

`.contrib/.db/standard/.config/classic/01 - Classic Era.config`:

```json
{
    "ProgressionFlavor": "era",
    "ProgressionProfile": ".contrib/.db/shared/.config/progression/era/main.json",
    "ProgressionLegacyEligibility": "none"
}
```

`.contrib/.db/standard/.config/classic/01 - Classic SOD.config`:

```json
{
    "ProgressionFlavor": "sod",
    "ProgressionProfile": ".contrib/.db/shared/.config/progression/sod/main.json",
    "ProgressionLegacyEligibility": "none"
}
```

`none` is used because these small examples request no native-phase eligibility rule. It is not a decision to remove restrictions from the complete real datasets. Those restrictions need the separate context review described in the design.

Keep each configuration's existing source inputs and tags. Do not point both at a file named `vanilla.json` just because the client or content expansion matches. Keep separate output directories.

The Era configuration's current negative season predicate is not a complete ruleset detector. Before stage 3, verified unique applicability must guard both the matching profile and data; these excerpts do not supply missing client evidence or make the current predicate sufficient.

### 5. Generated Lua: exact linkage for the SoD example

Inside the validated matching context guard, the generated profile would have this shape:

```lua
app.ProgressionProfile = {
    schema = 2,
    flavorId = "sod",
    id = "main",
    mode = "phased",
    defaultView = "3",
    phases = {
        ["3"] = { order = 1, name = { en = "Phase 3" } },
        ["4"] = { order = 2, name = { en = "Phase 4" } },
    },
    content = {
        ["sod:main:raid.mc.sod20"] = {
            windows = { { from = "4" } },
        },
    },
}
```

The actual generated SoD acquisition node would retain its ordinary fields and children and contain:

```lua
progressionScopes = {
    "sod:main:raid.mc.sod20",
},
```

It would not contain the input-only `progressionKey`. The namespace selects this profile's policy; it does not identify or merge NPCs/items. The displayed state still respects all other source conditions.

| Selected profile | Selected view | Shown scope | Schedule result |
| --- | --- | --- | --- |
| `era:main` | `1` | Original Molten Core | Active |
| `sod:main` | `3` | SoD 20-player Molten Core | Future |
| `sod:main` | `4` | SoD 20-player Molten Core | Active |

Changing the SoD window edits the SoD JSON. Changing the SoD reward list edits its actual Lua source branch. Neither operation edits the Era schedule automatically.

### Still required before production

The eight current design families are `retail`, `progression`, `anniversary`, `sod`, `era`, `hardcore`, `forever`, and `titan`. Historical `som` is a separate stable identity. This is the agreed design scope, not an exhaustive count of every historical flavor or a claim that all listed families are verified live today. Retail PTR is the `retail` flavor on a test channel, not another flavor; the channel may still need different source data or a separately selected schedule.

The complete historical inventory and actual runtime/profile bindings remain unfinished. A shared family such as `hardcore` does not choose one timeline by itself: original and Anniversary Hardcore can require different schedule profiles within that family. Historical SoM must retain its own source identity, windows, unavailable conditions, and golden evidence; it is not an automatic fallback for an unknown live context.

These examples connect concrete files. They do not supply missing live-client evidence or implement the Parser/runtime. Era's and SoD's shown opening values reflect repository assumptions, not new in-game verification.

## 3. Opening, later additions, removal, and reopening

Availability is a list of **half-open windows**: `from` is inclusive; `until` is exclusive. Missing `until` means no recorded closing boundary. Several windows on one scope combine with OR. Ancestor and child scopes combine with AND. Different acquisition routes combine with OR while retaining each complete condition set.

The following complete example is **synthetic**, not new game data. Symbolic IDs are placeholders. It demonstrates a dungeon opened at `4`, a new boss at `4.1`, a new drop from the original boss at `4.2`, removal, and reopening at `4.10`.

### Final authored Lua, after stage 4

```lua
inst(EXAMPLE_DUNGEON_ID, {
    progressionKey = "example.dungeon",
    groups = {
        n(EXAMPLE_ORIGINAL_BOSS_ID, {
            groups = {
                i(EXAMPLE_RETIRED_DROP_ID, {
                    progressionKey = "example.original-drop",
                }),
                i(EXAMPLE_LATER_DROP_ID, {
                    progressionKey = "example.later-drop",
                }),
                -- Other original drops inherit the dungeon window.
            },
        }),
        n(EXAMPLE_NEW_BOSS_ID, {
            progressionKey = "example.new-boss",
            groups = {
                -- This boss's drops inherit its windows and the dungeon's.
            },
        }),
    },
})
```

### External policy

```json
{
    "schema": 2,
    "id": "main",
    "flavorId": "example-ruleset",
    "mode": "phased",
    "defaultView": "4",
    "phases": {
        "4": { "order": 1 },
        "4.1": { "order": 2 },
        "4.2": { "order": 3 },
        "4.10": { "order": 4 }
    },
    "content": {
        "example.dungeon": {
            "windows": [{ "from": "4" }]
        },
        "example.original-drop": {
            "windows": [{ "from": "4", "until": "4.2" }]
        },
        "example.later-drop": {
            "windows": [{ "from": "4.2" }]
        },
        "example.new-boss": {
            "windows": [
                { "from": "4.1", "until": "4.2" },
                { "from": "4.10" }
            ]
        }
    },
    "verificationStatus": "illustrative"
}
```

| Viewed milestone | Dungeon/base content | Original drop | Later drop from original boss | New boss and its drops |
| --- | --- | --- | --- | --- |
| `4` | Active | Active | Future | Future |
| `4.1` | Active | Active | Future | Active |
| `4.2` | Active | Removed | Active | Removed |
| `4.10` | Active | Removed | Active | Active again |

This table describes schedule state, not a guarantee that other `u`, event, level, or client conditions pass. A child cannot reopen a closed parent. The later drop is deliberately under the original boss, not the removed new boss. A replacement/remade boss must retain its separately authored variant and any removal conditions; the design does not infer replacement or deletion from a shared ID.

Parser would place `progressionScopes = { "example-ruleset:main:example.new-boss" }` on the new-boss route and retain the dungeon requirement through ancestry. It would not copy the boss window to unrelated sources for the same rewards.

### Generated contract (excerpt)

```lua
app.ProgressionProfile = {
    schema = 2,
    id = "main",
    flavorId = "example-ruleset",
    mode = "phased",
    defaultView = "4",
    phases = {
        ["4"] = { order = 1, name = { en = "Phase 4" } },
        -- Other declared phases and materialized locale maps.
    },
    content = {
        ["example-ruleset:main:example.dungeon"] = {
            windows = { { from = "4" } },
        },
        -- Every other compiled source policy.
    },
}
-- On an individual generated acquisition occurrence:
-- progressionScopes = { "example-ruleset:main:example.dungeon" }
```

`phases` keys, window endpoints, `defaultView`, and the saved `viewPhase` are local milestone strings. Saved views are stored under `flavorId:profileId`. Generated `content` keys and each route's `progressionScopes` values are namespaced as `flavorId:profileId:progressionKey`; lookup is exact. Neither namespace includes expansion, DataPatch, or a build-target filename. `content` is the sole generated policy dictionary, not an additional `scopes` registry. Names are materialized locale maps; activation records may remain display metadata. Build eligibility is checked by Parser before export and is not re-evaluated from a legacy phase field at runtime. An explicitly validated unphased context may omit the runtime profile/scopes entirely; that omission never selects a compilation policy implicitly.


## 4. Subphases, time, and the display viewpoint

Migration stages 1–4 describe how the implementation is replaced; they are unrelated to content milestones. An official content Phase 4 may open in several timed batches. Local scheduling milestones such as `4.1` and `4.2` can describe those batches without claiming that corresponding official numeric phase IDs exist. Record each known batch time on its own milestone's activation metadata.

`4`, `4.1`, `4.2`, and `4.10` are distinct **string identifiers**. Their unique integer `order` determines chronology; never parse the key as a decimal or infer order from spelling. A new subphase has no native numeric `phaseID` unless an actual independent legacy definition exists. It must not reuse its parent's ID merely because its name begins with `4`.

The player explicitly selects one **viewed milestone**. This is a display scenario, not detection or a claim about the live server. `defaultView` applies only when there is no valid saved view. Preserve old checkbox values but do not derive a viewpoint from their highest enabled order or an arbitrary non-contiguous selection. Independent phase checkboxes cannot define a removal/reopening timeline and are not the new chronology control.

Optional activation metadata may record a milestone's known release instant, with an unambiguous ISO-8601 offset/UTC timestamp, region/realm scope, and evidence. Unknown times remain absent; date-only values or `os.time` calls with unspecified timezone must not be promoted into verified UTC instants. Known milestone order does not require a known date. Initial behavior is manual selection: timestamps do not silently advance the view, and no automatic calendar/live-server mode is included.

Evaluation separates **availability** from **inspection visibility**:

- Before a first window, the scope is future; between/after completed windows it is removed/inactive; inside any window it is active. Explicitly unconfirmed policies remain unknown.
- Showing future/unknown sources is an inspection choice. Scheduled removals can be shown through the removed-content display control. These controls do not label the route obtainable at the viewed milestone.
- No schedule result writes or clears `u`. An independently removed/unavailable source remains subject to its raw unavailable filter even if a schedule reopens. Event/level restrictions also remain independent.
- Multiple inactive ancestor/child reasons remain relevant. Showing a removed parent cannot bypass a future child or unrelated unavailable condition.

## 5. Policy schema and complete build coverage

There is one canonical availability representation: a policy object with a `windows` list. Do not add string/opening-only shorthand. Keys match `[a-z0-9][a-z0-9._-]*`; a colon is reserved for generated namespacing. The special boundary `start` means no local opening restriction before the first selectable milestone; it is not a selectable phase key.

| Field | Type and rule |
| --- | --- |
| `schema` | Required integer `2`. |
| `id` | Required stable schedule-profile ID within its declared flavor; this is `profileId`. Never derive it from expansion or configuration filename. |
| `flavorId` | Required stable gameplay ruleset identity, separate from content expansion and client/build target. |
| `mode` | Required `phased` or explicitly verified `unphased`; never inferred from missing configuration. |
| `defaultView` | Required normal phase key in phased mode. It is not a generation/build cutoff. |
| `phases` | Required phase definitions in phased mode. Each normal phase has a unique positive integer `order`. |
| `phases[key].phaseID` | Optional one-to-one native metadata reference for labels and explicit legacy compatibility evidence. It is not a production fallback input or a way to derive a viewpoint. |
| `phases[key].name` | Optional locale map. Prefer canonical native text when available; otherwise use the shared localized phase-label format with the literal key. Custom English text may override it. |
| `phases[key].activation` | Optional array of record objects containing a known timestamp, region/realm applicability, and evidence. Metadata only; no implicit clock behavior. |
| `content[key].windows` | Required nonempty, ordered, non-overlapping list for a confirmed phased policy. Each `from` is `start` or a declared phase; optional `until` must name a strictly later phase. |
| `content[key].status` | Optional `unknown`; requires an empty window list and explicit inspection handling. Missing dates alone do not make a policy unknown. |
| `content[key].eligibility` | Optional context-local legacy restriction independent of view. A `nativePhaseID` reference is valid only under the selected context's explicit reviewed eligibility mode; it is not a universal capability bound and cannot read legacy source assignments. |
| `verificationStatus`, `coverage` | Optional evidence/scope notes; never inputs to availability. |

The only allowed eligibility object in this version remains `{ "nativePhaseID": <positive integer> }`, with no extra properties. The ID must resolve to a known canonical release-phase definition, not an unavailable status; unknown IDs and `u` status IDs are rejected. This is a request to preserve a **context-specific legacy compilation rule**, not evidence of universal client capability or flavor availability. The selected context must set `ProgressionLegacyEligibility = "preserve-reviewed"` and have independently reviewed legacy baseline cases for that rule. The evaluator receives the full target/flavor/profile context and uses only that context's reviewed legacy restriction; it must not apply a global `DataPhase`/`MAX_PHASE_ID` ceiling merely because another context used the same number. With `none`, a requested native-phase eligibility rule is a compile error rather than an ignored restriction. Labels/compatibility `phaseID` never activate this eligibility path automatically. Even in stage 4, `preserve-reviewed` reads only the external policy, read-only canonical metadata, and the reviewed context rule; it must not read retired source assignments, helper arguments, caches, or legacy callback values.

Reusing the same profile on another target requires eligibility review for that new binding; changing flavors in the same expansion cannot inherit another flavor's cutoff. Genuine client/data compatibility, source preprocessing, intrinsic timelines, and old target policy are documented separately. Changing a legacy exclusion requires an explicit reviewed behavior difference, not an automatic expansion-based decision. No new condition DSL or runtime detector values are introduced.

`activation`, when present, is an array of objects. Each record has exactly four required nonempty string fields: `at` (an ISO-8601 timestamp with explicit UTC/offset), `region`, `realm`, and `evidence`. Extra properties are rejected. Region/realm values identify the actual applicable scope; an explicit `"all"` requires evidence of global applicability. `evidence` identifies an accessible supporting screenshot/report or source link. Absence of a record means timing is not established. These metadata fields do not determine window endpoints or select the view.

The initial validation inventory in this plan covers target entries labeled Retail, Era, SoD, TBC, Wrath, Cataclysm, Mists, and Forever. This is not an exhaustive repository configuration inventory and is not a claim of eight gameplay flavors or eight sufficient test contexts. Other configurations exist; every declared supported context still needs coverage. Each explicitly supported target/flavor/profile binding must be covered independently. A missing UI does **not** imply missing policy authority.

In phased mode every emitted acquisition key needs a policy; missing entries remain errors. A profile reused across targets may also describe keys outside one target's selected source set. Zero-hit exceptions require explicit context applicability/exclusion evidence from the reviewed source selection or context-specific eligibility; they cannot be inferred from expansion names or silently skipped. A key expected in that context but absent is an error, including misspellings and missing child transitions. Export only the context-applicable policy subset, preserving the profile's milestone identities; this is selection, not policy inheritance.

A minimal complete unphased declaration is:

```json
{
    "schema": 2,
    "id": "main",
    "flavorId": "example-unphased-ruleset",
    "mode": "unphased",
    "verificationStatus": "illustrative"
}
```

This example names no actual build. In unphased mode only required `schema`, `id`, `flavorId`, `mode`, and optional `verificationStatus`/`coverage` are allowed. `phases`, `defaultView`, and `content` are not silently ignored; they are rejected. This mode has no implicit per-source window table. If a selected context needs any external phase-based or per-scope native-phase eligibility restriction, use a complete phased policy instead, even if its old UI had no phase selector.

A selected unphased context/profile explicitly declares that it imposes no phase-based restriction. It still preserves intrinsic build, timeline, event, and unavailable conditions and reports every input key. It may omit runtime phase UI after that policy is validated. This is permitted only when the full legacy baseline proves the intended behavior; do not infer it from a flavor name. In particular, Forever defines `ANYCLASSIC` and cannot automatically be treated as a no-op build.

### Build eligibility remains separate

Preprocessing, `DataPatch`, intrinsic timeline rules, and verified client/source compatibility remain in force; an old target policy cutoff is not automatically a technical capability limit. Any exclusion previously carried only by an authored phase must be classified before cutover: preserve a reviewed context-local policy through explicit external eligibility, or document and validate its deliberate replacement. A native-phase reference can reproduce only that selected context's approved legacy rule without consulting the old source assignment. A window cannot bypass a genuine client/source constraint, while an old expansion cutoff is not automatically such a constraint for another ruleset.

Neither stage 3 nor stage 4 may use legacy phase assignments, propagated child values, or old callback outputs to fill missing eligibility or schedule information. Changing `viewPhase` or `defaultView` changes display evaluation, not the set of client-compatible records generated. Removal windows retain compatible records; they do not override existing rules that omit unsupported/deleted client data.

## 6. Coexistence during migration and after cutover

| Situation | Stage 2 | Stage 3 / final behavior |
| --- | --- | --- |
| Existing `applyclassicphase` or direct phase input | Produces official output; new marker has no effect. | Golden-only in stage 3; absent/rejected in stage 4. Never a production fallback. |
| New annotated source missing an external policy | Coverage error blocks promotion; official legacy output remains unchanged. | Error. Do not infer policy from the old phase or silently open it. |
| Later child has an independent legacy transition | Annotate it or prove it redundant under all relevant builds. | Its own progress key/window must express the transition. Missing keys fail golden/expected-result checks. |
| Same inherited restriction repeated by old helpers | Keep it for the unchanged legacy path. | Remove a redundant writer only after proof; no need to invent a key for every repeated call. |
| Parent and child have different windows | Collect both alongside the legacy form. | Intersect them. A child cannot escape a closed parent. |
| Repeated A → B → A conditions | Preserve and inventory the actual legacy scopes. | Explicit source scopes/ancestry determine conditions. No legacy-value-based nearest-phase adapter exists. |
| Build has no phase UI | Still inventory all legacy restrictions. | Requires an explicit policy or verified unphased declaration; absence of UI is not an opt-out. |
| Same NPC/item appears in multiple routes | Record every occurrence. | Keep separate windows, `u`, events, and ancestry; sharing an ID does not combine source identity. |
| A phase-driven callback assigns `u`, `rwp`, or `phase` | Keep original callback as legacy evidence. | Replace only its phase-driven behavior with scope evaluation. Preserve separate level/event/season/unavailable logic. |

The new runtime does not read old numeric checkbox combinations as its source of availability. Native phase metadata and numeric saved data may remain for legacy/API compatibility and unrelated settings; that does not preserve direct DB phase authoring.

## 7. Golden comparison without circular proof

Freeze the legacy source/runtime/toolchain and build context before new policy becomes authoritative. Run legacy and progress compilation in separate fresh processes with isolated mutable state. Record exact source/version, input hashes, full resolved target/flavor/profile context, preprocessing/source selection, runtime applicability, and tool versions. Golden production must not call the new converter or derive its expected settings from candidate windows or candidate `phaseID` mappings.

- **Stage 2:** compare official output bytes to the pinned old output. New markers and policy files may be collected but cannot change it. Explicit diagnostic/artifact metadata is separately identified.
- **Stage 3:** compare complete acquisition structures and route conditions using independently reviewed legacy settings vectors and matching candidate viewpoints. Test all meaningful opening/closing/reopening boundaries, plus unavailable/event combinations. Do not compare only loot IDs, hit counts, or aggregate totals.
- A testing-only projection may explain representation changes, but its expected behavior comes from the pinned old runtime/data and reviewed vectors, not a round-trip through the candidate.
- Legacy checkbox combinations are not all representable as one chronological view. Do not claim equivalence for arbitrary old UI states. New subphases, windows, or behavior corrections that legacy cannot express require separate approved fixtures and data evidence, not invented golden agreement.
- **Authority-isolation checks:** changing a legacy-only timing assignment must not change candidate production output; changing a new policy window must not change the legacy golden. A missing child key must cause failure, never be repaired from legacy phase.
- After stage 4, preserve pinned snapshots/small expected fixtures as evidence. New content is authored once through progress policy; do not require it to be dual-written into retired legacy syntax.

The synthetic example above supplies independent expected results for the new `4.1`/`4.2`/`4.10` and removal/reopening capabilities. Separately, existing MC source conditions provide legacy cases: SoD20 opens at phase four; distinct NPC `227819` occurrences carry rewards `226659` and later `232099`; items `233213` and `233201` have later phase-six conditions. These are authored repository assumptions, not new in-game verification. Equal NPC IDs must not collapse those transitions.

## 8. Full authoring inventory and retirement gates

The previous nine-raid/17-key pilot is not the full migration. The read-only lexical inventory at the pinned master found:

| Producer or dependency | Observed scope | Required treatment |
| --- | --- | --- |
| Explicit `applyclassicphase(...)` calls | **5,554 sites in 344 files**: standard 5,162; shared 388; forever 4. | Resolve every call and propagation scope before helper removal. These are source sites, not emitted-node counts or a requirement for 5,554 keys. |
| Currency helpers `champ`, `emoc`, `emof`, `emoh`, `emot`, `emov`, `writ` | **898 indirect calls** through seven helpers. | Migrate their source-generation policy, not just the helper name. |
| Direct data-field phase writes | **12 sites in 10 files**, including two shared writers, two cache-copy helpers, and eight serialized callback writes. | Retire all production phase writes and inspect their consumers. |
| Recipe-phase parameters | Five identified phase-valued calls in `standard/00 - Profession DB/Enchanting.lua`; 33 profession-helper aliases require coverage. | Move neutral source policy hints through generation to the actual acquisition occurrences; preserve unavailable/timeline arguments. |
| `GenerateOnUpdateRemovedWithPhase` | **31 calls in 20 files**, plus a phase-dependent tooltip template. | Migrate phase-driven removal queries/writes while preserving independent conditions. Ulduar's six sites are only a subset. |

The direct/cached writers include `shared/functions/Shortcuts.lua`, `standard/10 - Professions/Jewelcrafting.lua`, `Inscription.lua`, and `Cooking.lua`, and zone callbacks in Ashenvale, Desolace, Dustwallow Marsh, Arathi Highlands, Stranglethorn Vale, and The Cape of Stranglethorn. The callback template is `shared/lib/Functions/Function Templates.lua`. Paths in this paragraph are relative to `.contrib/.db/`.

Recipe migration is a deliberate source-generation case: a neutral hint can be retained in a generator sidecar, then attached to each actual acquisition occurrence with provenance. Do not mechanically rename `RecipeDB.phase` to a global `progressionKey`, or target every same-ID item. Once consumers are migrated, remove the numeric recipe-phase producer and cached phase copies. Other third-argument unavailable/timeline meanings remain intact.

Serialized callbacks need explicit template/occurrence review. Do not globally delete `t.u = ...`: only the phase-dependent branch moves to the schedule evaluator. Independent level, event, seasonal, and unavailable predicates remain.

### Enforcement by stage

1. Stage 1 records exact existing writer/caller locations and emitted provenance. Lexical scans include code and separately inspected generated callback strings; dynamic construction also requires compiled-output coverage.
2. Stage 2 rejects newly introduced direct phase authoring outside the frozen legacy baseline. Changed legacy expressions require explicit baseline review. A temporary migration ledger records status, not an ongoing second policy registry.
3. Stage 3 rejects any production dependence on unresolved legacy inputs. Every affected propagation chain and build must be covered before official cutover.
4. Stage 4 rejects `applyclassicphase`, direct or propagated authored phase values, retired numeric phase helper parameters, and new aliases such as `fallbackPhase`. Reject release IDs misfiled in `u` as an authoring bypass; real unavailable `u` is unchanged. The old upstream normalizer may remain for internal/legacy fixtures but cannot supply production scheduling.
5. Remove the legacy reader/shadow writer only when no live source, template, callback, or consumer requires it. Keep canonical phase definitions/labels and unrelated numeric UI metadata; deleting the writer does not mean deleting all phase knowledge.

## 9. Exact implementation foundation and broader source scope

**This PR adds only `.contrib/progression/PHASE_DESIGN.md`.** The following files are a planned foundation after approval, classified against the pinned master. They are not the complete data-migration count: the 344-file legacy cohort and indirect writers/consumers are additional work. The old fixed 48-file/pilot plan is not a claim of global completion.

### Exact proposed profile files and remaining binding evidence

The following **NEW files are proposed after approval**. No profile file is added by this design-only PR. The directory names are the agreed flavor IDs; `main` is a proposed initial profile ID, not an existing file, a detected live policy, or a promise that every context can share one timeline.

| Design coverage | Flavor ID | Proposed new path |
| --- | --- | --- |
| Current family: Retail | `retail` | `.contrib/.db/shared/.config/progression/retail/main.json` |
| Current family: progression | `progression` | `.contrib/.db/shared/.config/progression/progression/main.json` |
| Current family: Anniversary | `anniversary` | `.contrib/.db/shared/.config/progression/anniversary/main.json` |
| Current family: SoD | `sod` | `.contrib/.db/shared/.config/progression/sod/main.json` |
| Current family: Era | `era` | `.contrib/.db/shared/.config/progression/era/main.json` |
| Current family: Hardcore | `hardcore` | `.contrib/.db/shared/.config/progression/hardcore/main.json` |
| Current family: Forever | `forever` | `.contrib/.db/shared/.config/progression/forever/main.json` |
| Current family: Titan | `titan` | `.contrib/.db/shared/.config/progression/titan/main.json` |
| Historical flavor: Season of Mastery | `som` | `.contrib/.db/shared/.config/progression/som/main.json` |

These are eight listed current design families plus one identified historical flavor, not an exhaustive historical catalog. Additional independently reviewed timelines within a family use their own `<profileId>.json`; this plan does not predeclare their real schedule values or client selectors. It adds no universal registry or lifecycle field.

Before implementing stage-2 policies, the context matrix must identify, for each supported invocation: resolved existing configuration, flavor ID, profile ID/path, source variant selection, positive runtime applicability, context-local legacy eligibility decision, and expected/explicitly excluded source keys. The concrete filenames are settled as proposals; their complete contents and actual target/runtime bindings are **not yet verified**. Missing identity/selector evidence blocks promotion of that context. Historical SoM replay uses independently pinned historical inputs, not an assumption that today's SoD configuration reproduces SoM. Unknown live contexts do not select historical policies.

Expansion-named targets such as TBC, Wrath, Cataclysm, and Mists are not mechanically assigned to `progression`. The existing source tags and requirements must be reviewed for each invocation. `example-a/main.json` and `example-b/main.json` may remain isolated contract-test fixtures; they are not extra production flavors. The concrete non-profile foundation paths below remain planned.

### NEW foundation files after approval

| Path | Responsibility |
| --- | --- |
| `.contrib/.db/shared/lib/Strings/Settings/Phases/PROGRESSION_PHASE_LABEL.lua` | Provide one localized format for ordinary phase/subphase labels. |
| `.contrib/.db/shared/lib/Strings/Settings/Phases/PROGRESSION_UNKNOWN.lua` | Define one shared localized unknown-phase label. |
| `.contrib/.tools/Parser.build-manifest.json` | Record the exact CI source, run, and matching payload hashes. |
| `.contrib/build-parser.ps1` | Build a clean Windows x64 payload and record provenance. |
| `.contrib/progression/PIPELINE.md` | Document the implemented build/configuration and validation steps. |
| `.contrib/progression/ParserIntegrationFixture.cs` | Provide shared compiled-test setup and reflection support. |
| `.contrib/progression/ProgressionParserIntegrationTests.cs` | Exercise isolated compilation authority, eligibility, policy schema, and complete routes. |
| `.contrib/progression/RUNTIME_PROGRESSION.md` | Document the implemented generated schema and runtime behavior. |
| `.contrib/progression/Test-Parser.ps1` | Run compiled fixtures against the CI payload and selected policy configuration. |
| `.contrib/progression/benchmark-progression.lua` | Measure synthetic route-handling overhead with Lua 5.1. |
| `.contrib/progression/compare-legacy.py` | Compare separate legacy/progress artifacts and boundary behavior; never generate the golden through the new converter. |
| `.contrib/progression/validate-authoring.py` | Enforce frozen legacy-only allowances, strict cutover coverage, and final writer/helper removal. |
| `.contrib/progression/validate-generated.lua` | Check active/future/removed/unknown/reopened routes at every ordered boundary. |
| `.contrib/progression/validate-generated.py` | Validate scope windows, per-context policy coverage, generated artifacts, and no input-marker leaks. |
| `.contrib/src/Parser/ProgressionCatalog.cs` | Read external policies; compile scope windows/eligibility; validate coverage and transition authority. |
| `.contrib/tests/test_validate_db.py` | Test required-output validation, policy coverage failures, and comparison manifests. |
| `.contrib/validate-db.py` | Validate generated database manifests, required files, and flavor outputs. |
| `src/Modules/Progression.lua` | Evaluate window unions, ancestor intersections, alternatives, and availability reasons at one selected view phase. |
| `tests/flavor-progression.lua` | Test runtime merges, clones, window evaluation, settings isolation, and progress authority isolation. |

### MODIFY foundation files after approval

| Path | Responsibility |
| --- | --- |
| `.contrib/.db/forever/.config/forever.config` | Declare the reviewed output context/profile selection and staged compilation authority; filename is not flavor identity. |
| `.contrib/.db/shared/.config/root.config` | Pass through generated `progressionScopes`; no path-selector catalog. |
| `.contrib/.db/shared/functions/Shortcuts.lua` | Stage 2–3 instrumentation and neutral recipe/source hints; Stage 4 remove phase-writing helpers and numeric recipe-phase input. |
| `.contrib/.db/shared/lib/Constants/Phases.lua` | Retain canonical phase metadata and fill missing labels; remove no metadata merely because writers retire. |
| `.contrib/.db/shared/lib/Functions/Function Templates.lua` | Replace phase-driven callback/tooltip paths with scope-aware progress queries while retaining independent conditions. |
| `.contrib/.db/standard/.config/classic/01 - Classic Era.config` | Declare the reviewed output context/profile selection and staged compilation authority; filename is not flavor identity. |
| `.contrib/.db/standard/.config/classic/01 - Classic SOD.config` | Declare the reviewed output context/profile selection and staged compilation authority; filename is not flavor identity. |
| `.contrib/.db/standard/.config/classic/02 - TBC.config` | Declare the reviewed output context/profile selection and staged compilation authority; filename is not flavor identity. |
| `.contrib/.db/standard/.config/classic/03 - Wrath.config` | Declare the reviewed output context/profile selection and staged compilation authority; filename is not flavor identity. |
| `.contrib/.db/standard/.config/classic/04 - Cataclysm.config` | Declare the reviewed output context/profile selection and staged compilation authority; filename is not flavor identity. |
| `.contrib/.db/standard/.config/classic/05 - Mists of Pandaria.config` | Declare the reviewed output context/profile selection and staged compilation authority; filename is not flavor identity. |
| `.contrib/.db/standard/.config/retail/retail.config` | Declare the reviewed output context/profile selection and staged compilation authority; filename is not flavor identity. |
| `.contrib/.tools/Parser.exe` | Replace with the CI-built executable matching the committed C# source. |
| `.contrib/src/Parser/Framework/Framework.Merge.cs` | Apply annotation processing before merging source nodes. |
| `.contrib/src/Parser/Framework/Framework.Objects.cs` | Preserve complete source conditions through matching, merging, and copies. |
| `.contrib/src/Parser/Framework/Framework.Processing.cs` | Preserve build/timeline eligibility without authored phase; enforce retired-authoring gates. |
| `.contrib/src/Parser/Framework/Framework.cs` | Initialize profile processing and export the generated profile. |
| `.contrib/src/Parser/MiniJSON.cs` | Add profile-only duplicate-property rejection; leave other readers unchanged. |
| `.contrib/src/Parser/Program.cs` | Select legacy/progress compilation authority and isolate phase metadata/input state. |
| `.github/workflows/Parser.yml` | Run staged legacy/progress authorities in fresh processes, coverage of the reviewed output contexts for the initially listed build-target entries and any additional supported contexts, boundary checks, and provenance artifacts. |
| `AllTheThings.toc` | Load the new progression module before source-handling modules. |
| `src/Classes/base.lua` | Preserve acquisition conditions when cloning base objects. |
| `src/DataHandling.lua` | Retain complete alternative acquisition routes during merges. |
| `src/Modules/Filter.lua` | Combine route conditions; keep raw u filtering separate from phase compatibility. |
| `src/Settings/Pages/Phases.lua` | Select a viewed milestone and inspection controls; do not infer chronology from checkboxes. |
| `src/Settings/Settings.lua` | Store the viewed milestone per flavor/profile identity; keep historical numeric settings and raw u controls independent. |

### Existing data cohorts to modify and legacy pieces to retire

All legacy writer files in Appendix A must be resolved, including unchanged-looking helper callers. Appendix B lists the removal-callback cohort. Add source annotations, move release policy outside Lua, and ultimately remove the legacy calls/assignments from those existing files; do not delete unrelated source files or their loot.

No existing master file is slated for wholesale deletion. Retire the legacy helper definitions, numeric phase-writing parameters/cache fields, and phase-only template branches after their callers migrate. Do not introduce prototype `bindings.json`, `ProgressionBindings`, `phaseMappings`, or a permanent path-selector inventory. Generated database files remain CI artifacts. Parser companion libraries are not changed merely to update the executable.

Future C# source-change commits must include their matching CI-built Parser binary/provenance. Stage activation must be coherent and reviewable; do not pretend every intermediate code/configuration commit can generate all builds before its dependencies exist. No local production Parser build is part of this design work.

## 10. Ordered rollout and acceptance

1. Complete the pinned inventory and independent legacy baseline for each reviewed target/flavor/profile binding and propagation chain. Resolve its source selection, runtime applicability, and phased/unphased policy from evidence, not an expansion or target name.
2. Implement stage-2 collection, strict schema validation, source hints, and policy coverage without altering official legacy bytes. Start with representative raids, then professions/currencies/templates/callbacks and all remaining source files.
3. Fill external windows and independent eligibility for every real transition; add all distinct child/boss/drop scopes. Complete canonical localization and shared subphase/unknown labels. Do not invent timestamps, native IDs, or removal dates.
4. Exercise stage 3 in isolated candidates, then switch official authority only after full coverage, golden comparison, independent new-capability fixtures, and invariance gates pass. The new path must work when legacy timing expressions are poisoned or disabled.
5. Remove legacy code/data expressions in stage 4; rerun all build/content, runtime, callback, source identity, window-boundary, and strict-authoring checks. Preserve frozen legacy evidence without requiring future dual authoring.

Acceptance must demonstrate:

- The same exact client build or expansion supports two synthetic flavors with distinct source variants, windows, and saved views; neither profile overwrites the other.
- One flavor/profile spanning targets keeps its namespace and milestone meaning; target changes cannot reset its view or implicitly inherit a foreign legacy cutoff.
- Missing/mismatched compile selection fails. Runtime unknown, a merely negative discriminator, conflicting guards, or two applicable profiles produces a visible diagnostic without selecting by load order or falling back to legacy authority.
- Cross-target zero-hit exceptions require explicit applicability evidence; emitted keys without policy and expected-but-missing child scopes still fail.
- Stage 2 official byte equality and stage 3 independent authority, with no legacy-child or missing-policy fallback.
- Active/future/removed/unknown/reopened results at every milestone boundary; `4.10` distinct from `4.1`; timestamps absent or region-scoped without implicit advancement.
- Dungeon/child intersection and alternative-route union; a removed boss cannot expose its child's later drop; another valid source for that item remains usable.
- Independent `u`/event/level conditions and availability-vs-inspection distinction; reopening a schedule does not clear native unavailable state.
- Full per-context policy coverage, including targets without new phase UI and Forever's Classic preprocessing behavior; eight target labels do not prove all supported rulesets/profiles were tested.
- No client/expansion eligibility bypass and no generated record-set change from merely selecting another view.
- No remaining production legacy writer/helper/cache/normalization bypass after retirement, including serialized callbacks and indirect recipe/currency paths.
- Every source occurrence preserved, including SoD variants and repeated NPC/item identities. Only proven redundant inherited writers may disappear without a new key.
- Matching CI binaries and complete generated-data/runtime checks; localization-only differences separately reviewed. Test success is not evidence of actual game availability.

## Appendix A: existing explicit-call source cohort

This is a **one-time migration inventory**, not a policy registry. It records the 344 files with explicit legacy calls at the pinned baseline. Indirect dependencies and serialized writers described above are additional obligations; a clean search alone does not prove cutover correctness.

<details>
<summary>344 repository-relative source paths</summary>

```text
.contrib/.db/forever/holidays/darkmoon faire.lua
.contrib/.db/shared/functions/Shortcuts.lua
.contrib/.db/shared/lib/Structures/Common Vendor Recipes/Battle For Azeroth.lua
.contrib/.db/shared/lib/Structures/Professions/Alchemy.lua
.contrib/.db/shared/lib/Structures/Professions/Blacksmithing.lua
.contrib/.db/shared/lib/Structures/Professions/Cooking.lua
.contrib/.db/shared/lib/Structures/Professions/Enchanting.lua
.contrib/.db/shared/lib/Structures/Professions/Engineering.lua
.contrib/.db/shared/lib/Structures/Professions/First Aid.lua
.contrib/.db/shared/lib/Structures/Professions/Fishing.lua
.contrib/.db/shared/lib/Structures/Professions/Herbalism.lua
.contrib/.db/shared/lib/Structures/Professions/Inscription.lua
.contrib/.db/shared/lib/Structures/Professions/Jewelcrafting.lua
.contrib/.db/shared/lib/Structures/Professions/Leatherworking.lua
.contrib/.db/shared/lib/Structures/Professions/Mining.lua
.contrib/.db/shared/lib/Structures/Professions/Poisons.lua
.contrib/.db/shared/lib/Structures/Professions/Skinning.lua
.contrib/.db/shared/lib/Structures/Professions/Tailoring.lua
.contrib/.db/shared/lib/Structures/Tier Sets/Tier 10.lua
.contrib/.db/shared/lib/Structures/Tier Sets/Tier 11.lua
.contrib/.db/shared/lib/Structures/Tier Sets/Tier 12.lua
.contrib/.db/shared/lib/Structures/Tier Sets/Tier 13.lua
.contrib/.db/shared/lib/Structures/Tier Sets/Tier 7.lua
.contrib/.db/shared/lib/Structures/Tier Sets/Tier 8.lua
.contrib/.db/shared/lib/Structures/Tier Sets/Tier 9.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/0.5 Tier 0.5 Sets.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/0.9 World Bosses.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/1.0 Molten Core.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/1.5 Onyxia's Lair.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/1.5 Storm Cliffs.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/1.5 The Tainted Scar.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/1.6 Blackwing Lair.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/1.6 The Crystal Vale.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/1.7 Zul'Gurub.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/2.4 Nightmare Grove.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/2.5 Ruins of Ahn'Qiraj.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/2.6 Temple of Ahn'Qiraj.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/3.0 Naxxramas.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/3.5 Scarlet Enclave.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Blackfathom Deeps.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Blackrock Depths.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Blackrock Spire.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Deadmines.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Demon Fall Canyon.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Dire Maul.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Gnomeregan.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Karazhan Crypts.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Maraudon.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Razorfen Downs.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Scarlet Halls.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Scarlet Monastery.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Scholomance.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Shadowfang Keep.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Stratholme.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/The Temple of Atal'hakkar.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Uldaman.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Wailing Caverns.lua
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Zul'Farrak.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/0 - Achievements.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/0.1 World Bosses.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/1 Karazhan (Raid).lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/2 Gruul's Lair.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/3 Magtheridon's Lair.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/4 Serpentshrine Cavern.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/5 The Eye.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/6 The Battle for Mount Hyjal.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/7 The Black Temple.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/7.5 Zul'Aman.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/8 Sunwell Plateau.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/Auchenai Crypts.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/Hellfire Ramparts.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/Magisters' Terrace.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/Mana Tombs.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/Old Hillsbrad Foothills.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/Sethekk Halls.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/Shadow Labyrinth.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/The Arcatraz.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/The Black Morass.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/The Blood Furnace.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/The Botanica.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/The Mechanar.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/The Shattered Halls.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/The Slave Pens.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/The Steamvault.lua
.contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/The Underbog.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/0 - Metadata.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/0.5 - Achievements.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/1 Vault of Archavon.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/2 Naxxramas.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/3 The Obsidian Sanctum.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/4 The Eye of Eternity.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/5 Ulduar.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/6 Trial of the Crusader.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/8 Icecrown Citadel.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/9 The Ruby Sanctum.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/Ahn'kahet The Old Kingdom.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/Azjol-Nerub.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/Drak'Tharon Keep.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/Gundrak.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/Halls of Lightning.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/Halls of Reflection.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/Halls of Stone.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/Pit of Saron.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/The Culling of Stratholme.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/The Forge of Souls.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/The Nexus.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/The Oculus.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/The Violet Hold (Wrath).lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/Trial of the Champion.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/Utgarde Keep.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/Utgarde Pinnacle.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/0 - Metadata.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/0.5 - Achievements.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/1 - Raids/0.1 World Bosses.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/1 - Raids/1 Baradin Hold.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/1 - Raids/2 Blackwing Descent.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/1 - Raids/3 The Bastion of Twilight.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/1 - Raids/4 Throne of the Four Winds.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/1 - Raids/5 Firelands.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/1 - Raids/6 Dragon Soul.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/2 - Dungeons/Blackrock Caverns.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/2 - Dungeons/End Time.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/2 - Dungeons/Grim Batol.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/2 - Dungeons/Halls of Origination.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/2 - Dungeons/Hour of Twilight.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/2 - Dungeons/Lost City of the Tol'vir.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/2 - Dungeons/The Stonecore.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/2 - Dungeons/The Vortex Pinnacle.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/2 - Dungeons/Throne of the Tides.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/2 - Dungeons/Well of Eternity.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/2 - Dungeons/Zul'Aman.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/2 - Dungeons/Zul'Gurub.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/0 - Metadata.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/1 - Achievements.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/1 - World Bosses.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/2 - Mogu'shan Vaults.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/3 - Heart of Fear.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/4 - Terrace of Endless Spring.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/5 - Throne of Thunder.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/6 - Siege of Orgrimmar.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/Gate of the Setting Sun.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/Mogu'shan Palace.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/Shado-Pan Monastery.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/Siege of Niuzao Temple.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/Stormstout Brewery.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/Temple of the Jade Serpent.lua
.contrib/.db/standard/01 - Dungeons Raids/07 - Legion/0 - Metadata.lua
.contrib/.db/standard/02 - Outdoor Zones/0 - Achievements.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/1 - Darnassus.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/2 - Orgrimmar.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/3 - The Exodar.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/4 - Thunder Bluff.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Ashenvale.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Azshara.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Azuremyst Isle.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Bloodmyst Isle.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Caverns of Time.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Darkshore.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Desolace.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Durotar.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Dustwallow Marsh.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Felwood.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Feralas.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Moonglade.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Mount Hyjal.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Mulgore.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Northern Barrens.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Silithus.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Stonetalon Mountains.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Tanaris.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Teldrassil.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/The Barrens.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Thousand Needles.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Timbermaw Hold.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Un'goro Crater.lua
.contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Winterspring.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/1 - Ironforge.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/1 - Silvermoon City.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/1 - Stormwind City.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/1 - Undercity.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Alterac Mountains.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Arathi Highlands.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Badlands.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Blackrock Mountain.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Blasted Lands.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Burning Steppes.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Deadwind Pass.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Dun Morogh.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Duskwood.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Eastern Plaguelands.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Elwynn Forest.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Eversong Woods.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Ghostlands.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Hillsbrad Foothills.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Isle of Quel'Danas.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Loch Modan.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Northern Stranglethorn.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Redridge Mountains.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Searing Gorge.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Silverpine Forest.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Stranglethorn Vale.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Swamp of Sorrows.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/The Cape of Stranglethorn.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/The Hinterlands.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Tirisfal Glades.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Western Plaguelands.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Westfall.lua
.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Wetlands.lua
.contrib/.db/standard/02 - Outdoor Zones/03 Outland/0 - Metadata.lua
.contrib/.db/standard/02 - Outdoor Zones/03 Outland/1 - Shattrath City.lua
.contrib/.db/standard/02 - Outdoor Zones/03 Outland/Blade's Edge Mountains.lua
.contrib/.db/standard/02 - Outdoor Zones/03 Outland/Hellfire Peninsula.lua
.contrib/.db/standard/02 - Outdoor Zones/03 Outland/Nagrand.lua
.contrib/.db/standard/02 - Outdoor Zones/03 Outland/Netherstorm.lua
.contrib/.db/standard/02 - Outdoor Zones/03 Outland/Shadowmoon Valley.lua
.contrib/.db/standard/02 - Outdoor Zones/03 Outland/Terokkar Forest.lua
.contrib/.db/standard/02 - Outdoor Zones/03 Outland/Zangarmarsh.lua
.contrib/.db/standard/02 - Outdoor Zones/04 Northrend/0 - Metadata.lua
.contrib/.db/standard/02 - Outdoor Zones/04 Northrend/1 - Dalaran.lua
.contrib/.db/standard/02 - Outdoor Zones/04 Northrend/Borean Tundra.lua
.contrib/.db/standard/02 - Outdoor Zones/04 Northrend/Crystalsong Forest.lua
.contrib/.db/standard/02 - Outdoor Zones/04 Northrend/Dragonblight.lua
.contrib/.db/standard/02 - Outdoor Zones/04 Northrend/Grizzly Hills.lua
.contrib/.db/standard/02 - Outdoor Zones/04 Northrend/Howling Fjord.lua
.contrib/.db/standard/02 - Outdoor Zones/04 Northrend/Icecrown.lua
.contrib/.db/standard/02 - Outdoor Zones/04 Northrend/Sholazar Basin.lua
.contrib/.db/standard/02 - Outdoor Zones/04 Northrend/The Storm Peaks.lua
.contrib/.db/standard/02 - Outdoor Zones/04 Northrend/Wintergrasp.lua
.contrib/.db/standard/02 - Outdoor Zones/04 Northrend/Zul'Drak.lua
.contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/0 - Achievements.lua
.contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/0 - Metadata.lua
.contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/1 - Shrine Of Seven Stars.lua
.contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/2 - Shrine Of Two Moons.lua
.contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/Isle Of Giants.lua
.contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/Isle of Thunder.lua
.contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/Krasarang Wilds.lua
.contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/Kun-Lai Summit.lua
.contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/The Jade Forest.lua
.contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/The Veiled Stair.lua
.contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/Timeless Isle.lua
.contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/Townlong Steppes.lua
.contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/Vale of Eternal Blossoms.lua
.contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/Valley Of The Four Winds.lua
.contrib/.db/standard/02 - Outdoor Zones/07 Draenor/Achievements.lua
.contrib/.db/standard/02 - Outdoor Zones/08 Broken Isles/0 - Achievements.lua
.contrib/.db/standard/02 - Outdoor Zones/08 Broken Isles/1 - Dalaran/Professions.lua
.contrib/.db/standard/03 - World Drops/01 Rooted/1 - Classic.lua
.contrib/.db/standard/03 - World Drops/01 Rooted/2 - Burning Crusade.lua
.contrib/.db/standard/03 - World Drops/01 Rooted/3 - Wrath of the Lich King.lua
.contrib/.db/standard/03 - World Drops/01 Rooted/4 - Cataclysm.lua
.contrib/.db/standard/03 - World Drops/05 - Mists of Pandaria.lua
.contrib/.db/standard/04 - Group Finder/Group Finder.lua
.contrib/.db/standard/06 - Expansion Features/01 - Classic/Season of Discovery.lua
.contrib/.db/standard/06 - Expansion Features/02 - Burning Crusade/Netherwing.lua
.contrib/.db/standard/06 - Expansion Features/03 - Wrath of the Lich King/Argent Tournament.lua
.contrib/.db/standard/06 - Expansion Features/03 - Wrath of the Lich King/Defense Protocol Alpha.lua
.contrib/.db/standard/06 - Expansion Features/03 - Wrath of the Lich King/Defense Protocol Beta.lua
.contrib/.db/standard/06 - Expansion Features/03 - Wrath of the Lich King/Defense Protocol Gamma.lua
.contrib/.db/standard/06 - Expansion Features/04 - Cataclysm/Elemental Bonds.lua
.contrib/.db/standard/06 - Expansion Features/04 - Cataclysm/Molten Front.lua
.contrib/.db/standard/06 - Expansion Features/04 - Cataclysm/Protocol Inferno.lua
.contrib/.db/standard/06 - Expansion Features/04 - Cataclysm/Protocol Twilight.lua
.contrib/.db/standard/06 - Expansion Features/04 - Cataclysm/The Troll Incursion.lua
.contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/Battlefield.lua
.contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/Celestial Dungeons.lua
.contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/Krasarang Wilds Campaign.lua
.contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/Legendary.lua
.contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/Order of the Cloud Serpent.lua
.contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/Proving Grounds.lua
.contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/Scenario.lua
.contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/The Anglers.lua
.contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/The August Celestials.lua
.contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/The Golden Lotus.lua
.contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/The Lorewalkers.lua
.contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/The Tillers.lua
.contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/Warlock.lua
.contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/Zandalari Incursions.lua
.contrib/.db/standard/07 - Events/Brawler's Guild/Brawler's Guild.lua
.contrib/.db/standard/07 - Events/Elemental Invasions/Elemental Invasions.lua
.contrib/.db/standard/07 - Events/Elemental Unrest/Elemental Unrest.lua
.contrib/.db/standard/07 - Events/Operation Gnomeregan/Operation Gnomeregan.lua
.contrib/.db/standard/07 - Events/Plunderstorm/Plunderstorm.lua
.contrib/.db/standard/07 - Events/The Ahn'Qiraj War Effort/The Ahn'Qiraj War Effort.lua
.contrib/.db/standard/07 - Events/The Opening of the Dark Portal/The Opening of the Dark Portal.lua
.contrib/.db/standard/07 - Events/The Scepter of the Shifting Sands/The Scepter of the Shifting Sands.lua
.contrib/.db/standard/07 - Events/The Scourge Invasion/The Scourge Invasion.lua
.contrib/.db/standard/07 - Events/Theramore's Fall/Theramore's Fall.lua
.contrib/.db/standard/07 - Events/Zalazane's Fall/Zalazane's Fall.lua
.contrib/.db/standard/08 - PvP/00 Achievements.lua
.contrib/.db/standard/08 - PvP/02 The Burning Crusade PvP Seasons.lua
.contrib/.db/standard/08 - PvP/03 Wrath of the Lich King PvP Seasons.lua
.contrib/.db/standard/08 - PvP/04 Cataclysm PvP Seasons.lua
.contrib/.db/standard/08 - PvP/05 Mists of Pandaria PvP Seasons.lua
.contrib/.db/standard/08 - PvP/Battlegrounds/Alterac Valley.lua
.contrib/.db/standard/08 - PvP/Battlegrounds/Arathi Basin.lua
.contrib/.db/standard/08 - PvP/Battlegrounds/Eye of the Storm.lua
.contrib/.db/standard/08 - PvP/Battlegrounds/Isle of Conquest.lua
.contrib/.db/standard/08 - PvP/Battlegrounds/Strand of the Ancients.lua
.contrib/.db/standard/08 - PvP/Battlegrounds/Training Grounds.lua
.contrib/.db/standard/08 - PvP/Battlegrounds/Warsong Gulch.lua
.contrib/.db/standard/08 - PvP/Battlegrounds/Wintergrasp.lua
.contrib/.db/standard/09 - Crafted Items/01 - Classic.lua
.contrib/.db/standard/09 - Crafted Items/02 - Burning Crusade.lua
.contrib/.db/standard/09 - Crafted Items/03 - Wrath of the Lich King.lua
.contrib/.db/standard/09 - Crafted Items/04 - Cataclysm.lua
.contrib/.db/standard/09 - Crafted Items/05 - Mists of Pandaria.lua
.contrib/.db/standard/09 - Crafted Items/06 - Warlords of Draenor.lua
.contrib/.db/standard/09 - Crafted Items/07 - Legion.lua
.contrib/.db/standard/09 - Crafted Items/08 - Battle for Azeroth.lua
.contrib/.db/standard/09 - Crafted Items/99 - Quests.lua
.contrib/.db/standard/10 - Professions/1 - Achievements.lua
.contrib/.db/standard/10 - Professions/Alchemy.lua
.contrib/.db/standard/10 - Professions/Archaeology.lua
.contrib/.db/standard/10 - Professions/Beast Training.lua
.contrib/.db/standard/10 - Professions/Blacksmithing - Armorsmith.lua
.contrib/.db/standard/10 - Professions/Blacksmithing - Weaponsmith.lua
.contrib/.db/standard/10 - Professions/Blacksmithing.lua
.contrib/.db/standard/10 - Professions/Cooking.lua
.contrib/.db/standard/10 - Professions/Enchanting.lua
.contrib/.db/standard/10 - Professions/Engineering.lua
.contrib/.db/standard/10 - Professions/First Aid.lua
.contrib/.db/standard/10 - Professions/Fishing.lua
.contrib/.db/standard/10 - Professions/Inscription.lua
.contrib/.db/standard/10 - Professions/Jewelcrafting.lua
.contrib/.db/standard/10 - Professions/Leatherworking - Dragonscale.lua
.contrib/.db/standard/10 - Professions/Leatherworking - Elemental.lua
.contrib/.db/standard/10 - Professions/Leatherworking - Tribal.lua
.contrib/.db/standard/10 - Professions/Leatherworking.lua
.contrib/.db/standard/10 - Professions/Poisons.lua
.contrib/.db/standard/10 - Professions/Runeforging.lua
.contrib/.db/standard/10 - Professions/Tailoring.lua
.contrib/.db/standard/11 - Character/Achievements.lua
.contrib/.db/standard/11 - Character/Guild.lua
.contrib/.db/standard/11 - Character/Pet Battles.lua
.contrib/.db/standard/13 - Black Market Auction House/Black Market Auction House.lua
.contrib/.db/standard/17 - NYI/Hidden Triggers/Hidden Achievement Triggers.lua
.contrib/.db/standard/17 - NYI/NYI Professions/NYI Leatherworking.lua
.contrib/.db/standard/21 - Holidays/Achievements.lua
.contrib/.db/standard/21 - Holidays/Brewfest.lua
.contrib/.db/standard/21 - Holidays/Darkmoon Faire.lua
.contrib/.db/standard/21 - Holidays/Kalu'ak Fishing Derby.lua
.contrib/.db/standard/21 - Holidays/Love is in the Air.lua
.contrib/.db/standard/21 - Holidays/Midsummer Fire Festival.lua
.contrib/.db/standard/23 - NPC Types/Demon Trainers.lua
```

</details>

## Appendix B: existing removal-callback cohort

<details>
<summary>20 repository-relative source paths</summary>

```text
.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/1.5 Onyxia's Lair.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/0.5 - Achievements.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/2 Naxxramas.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/4 The Eye of Eternity.lua
.contrib/.db/standard/01 - Dungeons Raids/03 - Wrath of the Lich King/5 Ulduar.lua
.contrib/.db/standard/01 - Dungeons Raids/04 - Cataclysm/1 - Raids/0.1 World Bosses.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/2 - Mogu'shan Vaults.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/3 - Heart of Fear.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/4 - Terrace of Endless Spring.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/5 - Throne of Thunder.lua
.contrib/.db/standard/01 - Dungeons Raids/05 - Mists of Pandaria/6 - Siege of Orgrimmar.lua
.contrib/.db/standard/02 - Outdoor Zones/04 Northrend/1 - Dalaran.lua
.contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/Scenario.lua
.contrib/.db/standard/07 - Events/Elemental Unrest/Elemental Unrest.lua
.contrib/.db/standard/07 - Events/Operation Gnomeregan/Operation Gnomeregan.lua
.contrib/.db/standard/07 - Events/The Scourge Invasion/The Scourge Invasion.lua
.contrib/.db/standard/07 - Events/Zalazane's Fall/Zalazane's Fall.lua
.contrib/.db/standard/08 - PvP/04 Cataclysm PvP Seasons.lua
.contrib/.db/standard/10 - Professions/Jewelcrafting.lua
.contrib/.db/standard/21 - Holidays/Brewfest.lua
```

</details>

## Appendix C: initial pilot scope reference

This prototype-derived checklist identifies the first 17 scheduling scopes, not all source transitions or the final window policy. Numbers below are the prototype's repository-assumed opening assignments, not independent golden evidence or verified availability. A dash is an old prototype omission, **not permission for a missing stage-3 policy**. These Era/SoD/Wrath column names describe the prototype's historical build-target mapping, not the new flavor taxonomy or approved policies. Final profiles must cover every explicitly supported output context and any closing/reopening windows supported by evidence.

Paths are relative to `.contrib/.db/standard/01 - Dungeons Raids/`. Annotation locations remain occurrence-specific; item scopes may have several real occurrences.

| Scheduling key | Source file | Acquisition scope | Era | SoD | Wrath |
| --- | --- | --- | --- | --- | --- |
| `raid.mc.common` | `01 - Classic/1.0 Molten Core.lua` | `instanceID=741` | `1` | — | — |
| `raid.mc.sod20` | `01 - Classic/1.0 Molten Core.lua` | `instanceID=741 → difficultyID=201` | — | `4` | — |
| `raid.bwl.sod20` | `01 - Classic/1.6 Blackwing Lair.lua` | `instanceID=742 → difficultyID=201` | — | `5` | — |
| `raid.aq20.sod20` | `01 - Classic/2.5 Ruins of Ahn'Qiraj.lua` | `instanceID=743 → difficultyID=201` | — | `6` | — |
| `raid.aq40.sod20` | `01 - Classic/2.6 Temple of Ahn'Qiraj.lua` | `instanceID=744 → difficultyID=201` | — | `6` | — |
| `raid.naxx.sod20` | `01 - Classic/3.0 Naxxramas.lua` | `instanceID=754 → difficultyID=201` | — | `7` | — |
| `raid.naxx.classic-common` | `01 - Classic/3.0 Naxxramas.lua` | `instanceID=754` | `6` | `7` | — |
| `raid.bwl.common` | `01 - Classic/1.6 Blackwing Lair.lua` | `instanceID=742` | `3` | `5` | — |
| `raid.aq20.common` | `01 - Classic/2.5 Ruins of Ahn'Qiraj.lua` | `instanceID=743` | `5` | `6` | — |
| `raid.aq40.common` | `01 - Classic/2.6 Temple of Ahn'Qiraj.lua` | `instanceID=744` | `5` | `6` | — |
| `raid.mc.sod.sulfuras` | `01 - Classic/1.0 Molten Core.lua` | `instanceID=741 → itemID=227683` | — | `5` | — |
| `raid.mc.sod.lodestone` | `01 - Classic/1.0 Molten Core.lua` | `instanceID=741 → itemID=233213` | — | `6` | — |
| `raid.mc.sod.globe` | `01 - Classic/1.0 Molten Core.lua` | `instanceID=741 → itemID=233201` | — | `6` | — |
| `raid.naxx.wrath` | `03 - Wrath of the Lich King/2 Naxxramas.lua` | `instanceID=754` | — | — | `1` |
| `raid.ulduar` | `03 - Wrath of the Lich King/5 Ulduar.lua` | `instanceID=759` | — | — | `2` |
| `raid.onyxia` | `01 - Classic/1.5 Onyxia's Lair.lua` | `instanceID=760` | `1` | — | — |
| `raid.icc` | `03 - Wrath of the Lich King/8 Icecrown Citadel.lua` | `instanceID=758` | — | — | `4` |

No new screenshot, Contributor Report, or game-record observation is supplied by this design. Example schedules, removals, subphases, and timing remain illustrative or explicitly unverified until supported by the evidence required by `AGENTS.md`. Implementation starts only after this design is reviewed and approved.
