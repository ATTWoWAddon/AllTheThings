# Phase scheduling and legacy-authoring retirement

**Status: proposed; implementation requires maintainer approval. This PR contains only this document.** No runtime, Parser, configuration, test, database, or binary implementation is included.

The source inventory is based on `master` at `0668031cb5986d021dc12611b1ee040a975132e9`. The [unmerged prototype](https://github.com/NORPG/AllTheThings/tree/0317bae99cad879ebb045b48663ad7306da744ee) is reference material, not a dependency or implementation of this design. Its positive-only `releasePhases`/independent-checkbox proposal is superseded here. Research cutoff: 2026-11-05. The complete declaration/configuration inventory was also compared with master `9dba6e6d3faa901ae63fe6f0c744cc76415e2b2c`; the 14 relevant source blobs are unchanged.

**Reading guide:** sections 1–7 specify the authoring and runtime contract; section 2c explains how this replaces schedule-only `SEASON_OF_DISCOVERY` pragmas; section 11 catalogs every in-scope flavor and announced phase/batch; Appendix D reconciles every repository phase declaration and alias. Retail phase planning is excluded: no Retail policy file, phase configuration, or phase UI change is proposed. Existing Retail behavior must remain unchanged.

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

**Two distinct input fields have different jobs:** `progressionKey` is the scheduling key (the “progress field”); optional `flavors` restricts which gameplay flavors an actual acquisition subtree belongs to. Shared sources omit `flavors`. Neither field is a global item/NPC identity. There is no alias named `progress`, `fallbackPhase`, or replacement numeric phase field.

| Data layer | Fields and responsibility |
| --- | --- |
| Authored acquisition Lua | `progressionKey`: one nonempty scheduling key; optional `flavors`: a nonempty, duplicate-free array of explicit flavor IDs on a complete acquisition scope. Existing `u`, `e`, timeline, level, and other non-phase conditions keep their meaning. |
| Transitional legacy inputs | `phase`, `applyclassicphase`, numeric recipe-phase parameters, and phase-driven callback code exist only as specified by stages 1–3. They are retired in stage 4. |
| Generated acquisition routes | `progressionScopes`: an array of namespaced policy keys. Parser creates it; authors do not write it directly. |
| Generated `LocalizationDB.lua` | `app.ProgressionProfile`: compiled ordered milestones, scope windows, and view defaults. No positive-only `releasePhases` schema is introduced. |
| Saved settings | One saved `viewPhase` under the `(flavorId, profileId)` pair, plus inspection controls. Existing numeric SavedVariables are retained as legacy history/raw unavailable settings, not interpreted as a chronology. |

Both input fields are removed before addon export; neither may leak into output. A neutral hint may pass through a source-generation sidecar before becoming an actual acquisition annotation; it must not become a global rule that rewrites every same-ID item/NPC source.

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

**Retail is outside this phase project.** Its existing behavior is preserved without a `retail/main.json` stub or new phase-policy gate. Retail PTR remains the Retail flavor on a test channel, not another flavor. For the in-scope families, a channel may select different source data or a separately reviewed profile. Expansions such as TBC and Wrath are separate from this list. In particular, an expansion-named target must not automatically select `progression`: the existing TBC configuration includes an Anniversary tag.

Different opening timelines within a family use distinct profile IDs when needed. For example, original and Anniversary Hardcore can remain within `hardcore` while selecting different reviewed profiles; they do not add another current flavor to this list. `main` below is only the proposed initial profile filename, not evidence that one profile covers every context.

Historical classification is documentation, not a new runtime lifecycle field. It does not rewrite SoM's source identity, windows, or `u` conditions. A historical `som` profile supports explicit replay, inspection, and independent golden tests; an unknown live context must never fall back to it. Shared preprocessing tags are not flavor identity: SoD's configuration also contains the `SOM` preprocessing tag, which does not make SoD and SoM the same flavor.

The concrete profile paths appear in section 9. Section 11 now plans the complete published phase groups for the seven in-scope current families and historical SoM; Appendix D accounts for every repository declaration and alias. Unknown individual dates, realm-state evidence, and runtime selectors are labeled explicitly rather than deleting their scope from the plan.

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
    progressionKey = "raid.mc.common", -- Shared container; each profile supplies its policy.
    groups = {
        -- Existing shared entries retain their own source conditions.
        -- Keep the existing legacy 40-player block here as well, including
        -- its SoD REMOVED_1_15_1 condition. Do not turn it into an else branch.

        -- #if SEASON_OF_DISCOVERY
        d(DIFFICULTY.SOD.PLAYER20, {
            progressionKey = "raid.mc.sod20",
            flavors = { "sod" },
            timeline = { ADDED_1_15_3 }, -- Existing client/source condition.
            groups = {
                -- Existing SoD bosses and rewards stay here, unchanged.
            },
        }),
        -- #endif
    },
})
```

The source says **which acquisition scope this is**. There is no opening phase number in this final authored form. The complete SoD subtree declares its applicability; its existing pragma is retained here until safe construction of its difficulty constants/wrappers is proven, as section 2c requires. Existing later-boss/drop transitions require their own keys; they must not disappear when their old wrappers are removed.

The current source also retains the old 40-player content under SoD with its removal timeline. Keep that historical data and condition; selecting SoD does not authorize deleting it. The SoD 20-player scope is a separate addition.

The original negative pragma around the common scheduling key is removed. Both selected contexts recognize the neutral parent key: Era opens the original scope at its launch milestone; SoD keeps the parent neutral from `start`, while the SoD20 child opens later. Existing legacy40 removal and other intrinsic conditions remain intact. Every other context requires its own reviewed policy coverage.

### 2. Proposed Era policy

File: `.contrib/.db/shared/.config/progression/era/main.json`

```json
{
    "schema": 2,
    "flavorId": "era",
    "id": "main",
    "mode": "phased",
    "defaultView": "vanilla.1",
    "phases": {
        "vanilla.1": { "order": 1, "name": { "en": "Phase 1" } }
    },
    "content": {
        "raid.mc.common": {
            "windows": [{ "from": "vanilla.1" }]
        }
    },
    "verificationStatus": "illustrative"
}
```

This means the original Molten Core scope opens at the selected Era profile's milestone `vanilla.1`. `defaultView` is only an example display default; it is not a statement about the live server's current progress.

### 3. Proposed SoD policy

File: `.contrib/.db/shared/.config/progression/sod/main.json`

```json
{
    "schema": 2,
    "flavorId": "sod",
    "id": "main",
    "mode": "phased",
    "defaultView": "vanilla.4",
    "phases": {
        "vanilla.4": { "order": 1, "name": { "en": "Phase 4 update" } },
        "vanilla.4.raids": { "order": 2, "name": { "en": "Phase 4 raids" } }
    },
    "content": {
        "raid.mc.common": { "windows": [{ "from": "start" }] },
        "raid.mc.sod20": {
            "windows": [{ "from": "vanilla.4.raids" }]
        }
    },
    "verificationStatus": "illustrative"
}
```

This means the SoD 20-player scope is future at the July 11 phase-4 update (`vanilla.4`) and opens in the July 25 raid batch (`vanilla.4.raids`). The neutral parent does not override its historical legacy40 removal timeline. This finer opening is sourced in section 11, not inferred from the old numeric phase-4 assignment. Era's `vanilla.1` and SoD's `vanilla.4.raids` are not compared. Their identical content-expansion classification does not make them share a schedule or a loot table.

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
    defaultView = "vanilla.4",
    phases = {
        ["vanilla.4"] = { order = 1, name = { en = "Phase 4 update" } },
        ["vanilla.4.raids"] = { order = 2, name = { en = "Phase 4 raids" } },
    },
    content = {
        ["sod:main:raid.mc.common"] = { windows = { { from = "start" } } },
        ["sod:main:raid.mc.sod20"] = {
            windows = { { from = "vanilla.4.raids" } },
        },
    },
}
```

The actual generated SoD acquisition node would retain its ordinary fields and children and contain:

```lua
progressionScopes = {
    "sod:main:raid.mc.common",
    "sod:main:raid.mc.sod20",
},
```

It would contain neither input-only `progressionKey` nor `flavors`. The parent and child windows both apply. The namespace selects this profile's policy; it does not identify or merge NPCs/items. The displayed state still respects all other source conditions.

| Selected profile | Selected view | Shown scope | Schedule result |
| --- | --- | --- | --- |
| `era:main` | `vanilla.1` | Original Molten Core | Active |
| `sod:main` | `vanilla.4` | SoD 20-player Molten Core | Future |
| `sod:main` | `vanilla.4.raids` | SoD 20-player Molten Core | Active |

Changing the SoD window edits the SoD JSON. Changing the SoD reward list edits its actual Lua source branch. Neither operation edits the Era schedule automatically.

### Still required before production

The eight current design families are `retail`, `progression`, `anniversary`, `sod`, `era`, `hardcore`, `forever`, and `titan`. Historical `som` is a separate stable identity. This is the agreed design scope, not an exhaustive count of every historical flavor or a claim that all listed families are verified live today. Retail PTR remains a channel, not another flavor; Retail phase planning is excluded. In-scope flavors may select different reviewed profiles for distinct channel/realm schedules.

Section 11 and Appendix D supply the full planned phase/declaration inventory; unresolved historical endpoints and actual runtime/profile bindings remain explicitly marked evidence work. A shared family such as `hardcore` does not choose one timeline by itself: original and Anniversary Hardcore can require different schedule profiles within that family. Historical SoM must retain its own source identity, windows, unavailable conditions, and golden evidence; it is not an automatic fallback for an unknown live context.

These examples connect concrete files. They do not supply missing live-client evidence or implement the Parser/runtime. The occurrence data comes from the repository; section 11 supplies the SoD raid-opening announcement. Neither substitutes for record-level in-game evidence.

## 2c. Fewer Parser-facing `SEASON_OF_DISCOVERY` pragmas

The goal is **zero schedule-only `SEASON_OF_DISCOVERY` pragmas in migrated production data**, not a promise that Lua code can always execute without technical guards. Do not replace `#if SEASON_OF_DISCOVERY` with an equally opaque generic pragma.

`flavors = { "sod" }` belongs on a complete acquisition subtree. Omission means shared applicability within already validated selected contexts. An explicit array must contain known flavor IDs, cannot be empty, and rejects duplicates. Ancestor and child allowlists intersect: a child cannot reopen an excluded parent. The scheduling key remains independent; two flavors may use the same neutral key with different policies, and two same-ID sources may have different keys/data. This field does not choose a profile, a realm, a date, or a loot replacement.

**Required ordering:** validate the output context → safely construct the selected source trees → apply inherited flavor applicability → bind only retained occurrences to policy/coverage → merge/coalesce/index occurrences → export without either input field. An unknown context is an error, not permission to include every shared/variant node. **Construction must also isolate side effects:** Lua evaluation precedes the merge hook, and helpers can already write global ItemDB/RecipeDB records, headers, events, or caches. An excluded variant may not mutate any of those shared stores. Such entrypoints require context/import/preprocessor selection *before execution*, or isolated staging that commits only retained writes. Post-evaluation `flavors` pruning cannot undo contamination; retain the technical guard until that safety is proven. Mixed containers retain shared children and the matching variant children. Excluding a source cannot erase a separately retained acquisition route for the same item.

```lua
-- Illustrative complete-group variant, with synthetic IDs.
-- Before: a source-data block hidden behind a `SEASON_OF_DISCOVERY` pragma.
-- #if SEASON_OF_DISCOVERY
n(900001, { groups = { i(900002) } }),
-- #endif

-- After: applicability is data; opening/removal is external policy.
n(900001, {
    flavors = { "sod" },
    progressionKey = "example.raid.extra-boss",
    groups = { i(900002) },
}),
-- An adjacent shared boss omits flavors and keeps its own source data.
```

The example does not invent real bosses or rewards. In the actual Molten Core file, the complete SoD20 subtree is a candidate for this treatment. Its legacy40 wrapping/removed timeline is structurally different; do not invent a 40-player wrapper for Era merely to remove a conditional. Do not replace field-level loot patches or asymmetric constructor fragments with an invented complete node.

| Existing directive purpose | End-state treatment | Required proof |
| --- | --- | --- |
| Opening/later drop/removal/reopening only | External windows on the appropriate occurrence; remove timing pragma and legacy phase writer. | Independent boundary golden and child coverage; no old-value fallback. |
| Complete SoD-only boss/reward/acquisition subtree | `flavors` on that subtree, with unchanged data and explicit policy. | Prune before coalescing/ID lookup; same-ID alternatives and mixed shared/variant trees remain correct. |
| Field replacement, incompatible constructor/wrapper, or source-generation branch | First reconstruct equivalent complete source occurrences where safe; otherwise retain a documented exception. | No accidental union of mutually exclusive loot/fields and no altered non-SoD structure. |
| Missing Lua API/constant, executable helper, import, or incompatible syntax | Retain the necessary technical pragma or select safe files through configuration. | Lua executes before the data filter: a rejected subtree cannot prevent an undefined function/constant from being evaluated. |

The pinned lexical inventory finds **1,664 `SEASON_OF_DISCOVERY`-related `#if` sites in 131 DB source files** (1,640 positive, 24 negative), not 1,664 removable guards. Classify each block as timing, source applicability, mixed, or technical before promising a removal count. The temporary migration report lists each retained exception with source location, reason, and regression coverage; it is not a permanent path-based policy registry. No automatic classifier may call a mixed block schedule-only.

The conservative syntax triage covers all 1,664 groups: 2 phase-metadata/alias blocks, 327 field patches, 1,263 data/structure blocks, 35 program/callback blocks, 21 constructor/wrapper fragments, 4 closing fragments, and 12 string/comment/empty blocks. These are syntax categories, **not a semantic count of removable timing guards**. Of the total, 38 occur in shared preload, 10 in global ItemDB/RecipeDB sources, and 1,616 in authored acquisition trees. Input acquisition fields cannot be applied blindly to preload/global-record code. Eleven groups are implied true and four false by enclosing conditions; even those require branch-preserving review. The implementation's temporary report retains all 131 file locations and exact block spans for audit.

During stage 2 the applicability pass is shadow validation only; official legacy bytes remain identical. Stage 3 activates reviewed source selection and timing together, with independently pinned legacy output and source-identity checks. Stage 4 removes timing pragmas/writers after their full propagation chains are covered. Retail gets no phase policy: shared-source cleanup must preserve its existing outputs and retain guards wherever equivalent safe source selection has not been established.

Acceptance includes zero remaining **schedule-only** `SEASON_OF_DISCOVERY` directives in the completed cohort; every remaining `SEASON_OF_DISCOVERY` directive has a justified structural/technical exception; no `flavors`/`progressionKey` leaks; no excluded-source merge or pre-merge cache influence (poison an excluded same-ID variant and prove retained ItemDB/RecipeDB/header/event/output values are unchanged); no invented source data; and byte/semantic regression checks for all affected contexts, including unchanged Retail.

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

The initial phase validation inventory covers target entries labeled Era, SoD, TBC, Wrath, Cataclysm, Mists, and Forever; Retail is excluded from phase changes and retains an unchanged-output regression check. This is not an exhaustive repository configuration inventory and is not a claim of eight gameplay flavors or eight sufficient test contexts. Other configurations exist; every declared supported context still needs coverage. Each explicitly supported target/flavor/profile binding must be covered independently. A missing UI does **not** imply missing policy authority.

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
| In-scope context has no phase UI | Still inventory all legacy restrictions. | Requires an explicit policy or verified unphased declaration; absence of UI is not an opt-out. Retail is excluded and unchanged. |
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
| Current family: progression | `progression` | `.contrib/.db/shared/.config/progression/progression/main.json` |
| Current family: Anniversary | `anniversary` | `.contrib/.db/shared/.config/progression/anniversary/main.json` |
| Current family: SoD | `sod` | `.contrib/.db/shared/.config/progression/sod/main.json` |
| Current family: Era | `era` | `.contrib/.db/shared/.config/progression/era/main.json` |
| Hardcore: original launch | `hardcore` | `.contrib/.db/shared/.config/progression/hardcore/original-2023.json` |
| Hardcore: Anniversary timeline | `hardcore` | `.contrib/.db/shared/.config/progression/hardcore/anniversary-2024.json` |
| Current family: Forever live | `forever` | `.contrib/.db/shared/.config/progression/forever/main.json` |
| Forever historical beta channel | `forever` | `.contrib/.db/shared/.config/progression/forever/beta-2026.json` |
| Current family: Titan | `titan` | `.contrib/.db/shared/.config/progression/titan/main.json` |
| Historical flavor: Season of Mastery | `som` | `.contrib/.db/shared/.config/progression/som/main.json` |

These cover seven current families plus historical SoM; Retail has no proposed policy file. Original and Anniversary Hardcore require separate profiles, and Forever beta is separate from its live timeline. Section 11 supplies the full phase/batch planning catalog. Additional independently reviewed timelines use their own `<profileId>.json`; none is automatically selected from an expansion or guessed client value. It adds no universal registry or lifecycle field.

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
| `.contrib/progression/validate-authoring.py` | Enforce writer retirement, input-field placement/allowlists, and the reviewed `SEASON_OF_DISCOVERY` directive disposition/exception list. |
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
| `.contrib/.db/shared/functions/Shortcuts.lua` | Document `progressionKey`/`flavors` on ATTObject; prevent excluded helper calls from mutating shared caches; stage 2–3 instrumentation and neutral recipe/source hints; Stage 4 remove phase-writing helpers and numeric recipe-phase input. |
| `.contrib/.db/shared/lib/Constants/Phases.lua` | Retain canonical phase metadata and fill missing labels; remove no metadata merely because writers retire. |
| `.contrib/.db/shared/lib/Functions/Function Templates.lua` | Replace phase-driven callback/tooltip paths with scope-aware progress queries while retaining independent conditions. |
| `.contrib/.db/standard/.config/classic/01 - Classic Era.config` | Declare the reviewed output context/profile selection and staged compilation authority; filename is not flavor identity. |
| `.contrib/.db/standard/.config/classic/01 - Classic SOD.config` | Declare the reviewed output context/profile selection and staged compilation authority; filename is not flavor identity. |
| `.contrib/.db/standard/.config/classic/02 - TBC.config` | Declare the reviewed output context/profile selection and staged compilation authority; filename is not flavor identity. |
| `.contrib/.db/standard/.config/classic/03 - Wrath.config` | Declare the reviewed output context/profile selection and staged compilation authority; filename is not flavor identity. |
| `.contrib/.db/standard/.config/classic/04 - Cataclysm.config` | Declare the reviewed output context/profile selection and staged compilation authority; filename is not flavor identity. |
| `.contrib/.db/standard/.config/classic/05 - Mists of Pandaria.config` | Declare the reviewed output context/profile selection and staged compilation authority; filename is not flavor identity. |
| `.contrib/.tools/Parser.exe` | Replace with the CI-built executable matching the committed C# source. |
| `.contrib/src/Parser/Framework/Framework.Merge.cs` | Prune source applicability before any coalescing/identity lookup; bind selected occurrence policies before merging. |
| `.contrib/src/Parser/Framework/Framework.Objects.cs` | Preserve complete source conditions through matching, merging, and copies. |
| `.contrib/src/Parser/Framework/Framework.Processing.cs` | Preserve build/timeline eligibility without authored phase; enforce retired-authoring gates. |
| `.contrib/src/Parser/Framework/Framework.cs` | Initialize profile processing and export the generated profile. |
| `.contrib/src/Parser/MiniJSON.cs` | Add profile-only duplicate-property rejection; leave other readers unchanged. |
| `.contrib/src/Parser/Program.cs` | Select compilation authority/context before executing side-effectful inputs; isolate source evaluation/staging and phase metadata so excluded variants cannot contaminate shared state. |
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
- Full per-context policy coverage, including targets without new phase UI and Forever's Classic preprocessing behavior; target labels do not prove all supported rulesets/profiles were tested; Retail remains unchanged.
- No client/expansion eligibility bypass and no generated record-set change from merely selecting another view.
- No remaining production legacy writer/helper/cache/normalization bypass after retirement, including serialized callbacks and indirect recipe/currency paths.
- Complete flavor applicability precedes policy coverage and every merge/index operation; shared nodes and same-ID variants remain distinct. Schedule-only `SEASON_OF_DISCOVERY` pragmas are eliminated, with an explicit justified list of retained technical/structural guards.
- Every source occurrence preserved, including SoD variants and repeated NPC/item identities. Only proven redundant inherited writers may disappear without a new key.
- Matching CI binaries and complete generated-data/runtime checks; localization-only differences separately reviewed. Test success is not evidence of actual game availability.

## 11. Complete phase planning catalog

This catalog covers **Era, progression, Anniversary, SoD, Hardcore, Forever, Titan, and historical SoM**. Retail has no phase plan here. Expansion headings below are chapters of a flavor's timeline, not additional flavors. The catalog includes every published primary phase and named opening batch found in the cited primary sources, every finer repository declaration, and every alias/placeholder in Appendix D. It does not invent a future Classic expansion cycle from a leftover constant.

**How to read the tables:** keys are proposed stable profile-local identifiers. Review-order integers propose the relative chronology for a selected profile, not official phase numbers or Unix timestamps; they increase across the progression/Anniversary chapters. A pending or conditional row has no numeric order until its relative timing is established; it cannot be emitted as a ready policy milestone. Separate profiles never compare these integers. Rows marked realm/source condition are not assigned a fabricated total chronological order: use their containing phase window plus the independent realm/personal unlock predicate. Native IDs are reconciled individually in Appendix D; they do not automatically select a flavor or overwrite its schedule. Dates record the source's actual region/global wording; a date-only announcement is not a UTC timestamp.

An opening usually begins a window. An ending, replacement, reward transfer, or reopening needs its own explicit source evidence; the next raid's opening is not an automatic closing date. The table's full content groups must be resolved into actual acquisition occurrences, including dungeons, quests, professions, reputation vendors, PvP rewards, later boss/drop additions and temporary events. This is complete planning coverage, **not a claim that every individual item window has been verified in-game**. Repository-only or unresolved boundaries remain visible and block promotion of those affected policies, not their inclusion in this design.

| Profile | Planned timeline and default treatment |
| --- | --- |
| `era/main` | Historical Vanilla openings retained for inspection; current Era is not a new restart. A reviewed current/default view is selected explicitly, never assumed to be launch. |
| `progression/main` | Vanilla → TBC → Wrath → Cataclysm → Mists, with chapter-qualified stable keys and one increasing order. No later cycle is inferred. |
| `anniversary/main` | Anniversary Vanilla followed by its own TBC schedule, including officially named 3.5; never copy original TBC numbering/timing mechanically. |
| `sod/main` | All eight phases, staggered openings, later source additions, and explicit closing boundaries. |
| `hardcore/original-2023` | One all-original-PvE-phases launch, with Hardcore source restrictions; no fabricated six-step unlocking. |
| `hardcore/anniversary-2024` | Full Anniversary Vanilla PvE sequence only; no battlegrounds or TBC continuation. |
| `forever/main` | Live launch and announced first raids; further announced scope remains pending ordered evidence. |
| `forever/beta-2026` | Historical beta level-20/30 stages; not the live launch/raid keys. |
| `titan/main` | Chrono launch and all ten announced numbered phases, with separately evidenced later-source batches. Future phases remain labeled announced. |
| `som/main` | Historical SoM's six-phase cycle and its distinct first-phase availability. Not a live fallback or SoD alias. |

`progression` uses chapter-qualified keys (`vanilla.*`, `tbc.*`, `wrath.*`, `cata.*`, `mists.*`) with one increasing profile order, not a reset at expansion boundaries. Era's historical 2019 opening sequence is separate evidence for `era`; present Era is not represented as restarting that cycle. SoD and historical SoM remain independent profiles/source variants. An opening normally begins a window; a dated patch does not prove every earlier source closed. Closures, replacements, and reward-transfer routes need their own recorded endpoints.

### Classic / Era historical opening groups

The March 2019 six-phase plan is a planning baseline, **not the final date schedule**. Dire Maul and battlegrounds were subsequently moved earlier. The complete six primary groups and the known distinct release batches must be retained separately. [Original official plan](https://us.forums.blizzard.com/en/wow/t/classic-content-plan/120346), [official BWL release](https://worldofwarcraft.blizzard.com/en-us/news/23302787), [official ZG release](https://worldofwarcraft.blizzard.com/en-us/news/23391283).

| Review order | Proposed key | Required content scope | Official evidence / date qualification |
| --- | --- | --- | --- |
| 100 | `vanilla.1` | Molten Core, Onyxia, Maraudon; initial world/quest/profession source set. | Six-phase plan, launch group. World content is not assumed to share a raid's marker. |
| 110 | `vanilla.1.dire-maul` | Dire Maul and its dependent class/profession/quest chains. | [2019-10-15 10:00 PDT](https://us.forums.blizzard.com/en/wow/t/dire-maul-releases-at-10-00am-pdt/333837), ahead of the original plan's phase-2 placement. |
| 120 | `vanilla.2` | Azuregos, Kazzak; Honor/rank rewards are a separate policy scope. | Six-phase plan for bosses; PvP needs its separately announced schedule, not inferred from PvE. |
| 130 | `vanilla.2.battlegrounds` | Warsong Gulch, Alterac Valley, associated vendors; elemental invasions are a separately named concurrent scope. | [2019-12-10 US / Dec 11 EU](https://worldofwarcraft.blizzard.com/en-gb/news/23237900); separate from BWL. |
| 140 | `vanilla.3` | Blackwing Lair, level-50 class quests, reputation-reward additions. | [2020-02-12 release](https://worldofwarcraft.blizzard.com/en-us/news/23302787). |
| Pending order | `vanilla.3.darkmoon` | Darkmoon Faire and deck sources. | Same release article confirms availability; recurring event availability remains an event predicate, not a permanent phase toggle. |
| 160 | `vanilla.4.arathi` | Arathi Basin and battleground holiday/vendor changes. | [2020-03-11 15:00 PDT](https://us.forums.blizzard.com/en/wow/t/wow-classic-arathi-basin-unlocks-march-11/461697), before ZG. The earlier week-of-March-10 announcement is not the actual opening time. |
| 170 | `vanilla.4` | Zul'Gurub, Dragons of Nightmare, Silithus additions, Stranglethorn Fishing Extravaganza. | [2020-04-15 official release](https://worldofwarcraft.blizzard.com/en-us/news/23391283). Fishing recurrence remains independent. |
| 180 | `vanilla.5.war-effort` | AQ War Effort and scepter/gong chain. | [Six-phase plan](https://us.forums.blizzard.com/en/wow/t/classic-content-plan/120346); do not collapse collection, gate opening, and the limited battle into one instant. |
| — (realm condition) | `vanilla.5.raids` | Ruins and Temple of Ahn'Qiraj after that realm's gate conditions. | Official plan makes raid opening depend on War Effort; a universal guessed date is wrong. |
| Pending source order | `vanilla.5.loot` | Dungeon set 0.5, relics, loot-table relocation/reconfiguration and later vendor/recipe groups. | Official plan explicitly separates the loot changes; every repository subphase must be reconciled. |
| 210 | `vanilla.6` | Naxxramas and Scourge Invasion; associated world-PvP/source groups remain explicit. | [2020-12-03 Naxxramas announcement](https://worldofwarcraft.blizzard.com/en-us/news/23584140), six-phase plan. Invasion ending is not inferred from raid opening. |

The two source-backed plans do not prove every fine-grained recipe/vendor date. Those entries stay in the complete repository catalog with a repository-evidence label rather than disappearing from the plan.

### Historical Season of Mastery: all six primary phases

The official SoM outline defines a different sequence from 2019: Honor, battlegrounds, and Dire Maul are available in its first phase. Do not reuse Era's windows. [Official six-phase outline](https://news.blizzard.com/en-us/article/23738002/wow-classic-season-of-mastery-is-now-live).

| Review order | Proposed key | Complete announced primary group | Additional evidence / treatment |
| --- | --- | --- | --- |
| 100 | `vanilla.1` | Molten Core, Onyxia, Maraudon, Dire Maul, Honor and battlegrounds. | SoM-specific first phase; historical profile only. |
| 110 | `vanilla.2` | Azuregos and Kazzak. | Separate world-boss opening. |
| 120 | `vanilla.3` | Blackwing Lair, Darkmoon Faire/decks. | [BWL opened 2022-02-10 15:00 PST](https://worldofwarcraft.blizzard.com/en-us/news/23764288). |
| 130 | `vanilla.4` | Zul'Gurub and Dragons of Nightmare. | Official outline; date not invented. |
| 140 | `vanilla.5.war-effort` | AQ War Effort. | Realm progression separate from raid access. |
| 150 | `vanilla.5.raids` | AQ raids once the War Effort permits them. | SoM boss/reward variants remain distinct. |
| 160 | `vanilla.6` | Naxxramas and Scourge Invasion. | [2022-07-28 release](https://worldofwarcraft.blizzard.com/en-us/news/23826539); SoM-specific encounters/rewards. |

A single repository SoM-specific constant is not evidence that SoM had only one phase. Historical source captures, availability windows, and comparison outputs must be preserved independently of current SoD's reuse of a `SOM` preprocessing tag.

### Season of Discovery: all eight phases and staggered batches

| Review order | Proposed key | Required content group / transition | Official evidence / date qualification |
| --- | --- | --- | --- |
| 100 | `vanilla.1` | Level 25, Blackfathom Deeps raid, initial runes/profession sources, Battle for Ashenvale. | [Launch 2023-11-30 / BFD](https://worldofwarcraft.blizzard.com/en-us/news/24025494); [phase-2 article identifies prior Ashenvale event](https://worldofwarcraft.blizzard.com/en-us/news/24056979). |
| 110 | `vanilla.2` | Level 40, Gnomeregan, new runes and dungeon skill books, profession recipes/cap 225, Blood Moon and rewards. | [2024-02-08 release](https://worldofwarcraft.blizzard.com/en-us/news/24056984). Ashenvale timing/level-limited buff changes are distinct conditions, not deletion of the event. |
| 120 | `vanilla.3` | Level 50, Sunken Temple, new runes, Nightmare Incursions / Emerald Wardens; profession specializations. | [2024-04-04 schedule](https://worldofwarcraft.blizzard.com/en-us/news/24078320), [content overview](https://news.blizzard.com/en-us/article/24078318/season-of-discovery-phase-3-now-live). Incursions occupy four zone scopes; preserve each source. |
| 130 | `vanilla.4` | Level 60, new runes, late dungeons, profession/reputation and PvP updates, Blackrock Eruption. | [2024-07-11 release](https://worldofwarcraft.blizzard.com/en-us/news/24111477), [official development inventory](https://worldofwarcraft.blizzard.com/en-us/news/24107635). Development-only details are not silently promoted to final facts. |
| 140 | `vanilla.4.world-bosses` | Instanced Kazzak and Azuregos. | [2024-07-18 13:00 PDT globally](https://news.blizzard.com/en-us/article/24115314/twiw-the-war-within-pre-expansion-season-of-discovery-phase-4-and-more). |
| 150 | `vanilla.4.raids` | Reworked Molten Core and Onyxia; MC difficulty-dependent reward routes. | [2024-07-25 13:00 PDT globally](https://news.blizzard.com/en-us/article/24115314/twiw-the-war-within-pre-expansion-season-of-discovery-phase-4-and-more). Not all phase-4 content opens July 11. |
| Pending order | `vanilla.4.demon-fall` | Demon Fall Canyon dungeon and original encounter set. | Phase-4 source cohort; exact release scope must be joined to the current repository/official patch record. Do not conflate with phase-5 added boss. |
| 170 | `vanilla.5` | Blackwing Lair / Tier 2, Zul'Gurub, Honor cap increases to 13, new Crystal Vale/Thunderaan encounter, additional Demon Fall Canyon boss. | [2024-09-26 release](https://worldofwarcraft.blizzard.com/en-us/news/24139952). Later boss/drop occurrences need their own keys. |
| 180 | `vanilla.6.scepter` | Scepter of the Shifting Sands questline. | [2024-11-12 regional resets](https://worldofwarcraft.blizzard.com/en-us/news/24154449). |
| 190 | `vanilla.6.war-effort` | AQ supply collection begins. | [2024-11-21 13:00 PST globally](https://worldofwarcraft.blizzard.com/en-us/news/24154449). |
| 200 | `vanilla.6.war-effort-end` | Supply-collection phase ends. | [2024-11-29](https://worldofwarcraft.blizzard.com/en-us/news/24154449); an explicit closing boundary, not just another opening. |
| 210 | `vanilla.6.war` | Anubisath/qiraji battle period begins. | [2024-12-04](https://worldofwarcraft.blizzard.com/en-us/news/24154449). |
| 220 | `vanilla.6.raids` | Temple/Ruins of AQ and Nightmare Grove. | [2024-12-06](https://worldofwarcraft.blizzard.com/en-us/news/24154449). Raid-specific difficulty/loot options remain separate sources. |
| 230 | `vanilla.7` | Karazhan Crypts, Scourge Invasions, rune-broker acquisitions. | [NA 2025-01-28 maintenance](https://worldofwarcraft.blizzard.com/en-us/news/24171906), [EU Jan 29](https://worldofwarcraft.blizzard.com/en-gb/news/24171906/season-of-discovery-phase-7-naxxramas-now-live). |
| 240 | `vanilla.7.naxxramas` | Reworked Naxxramas, empowered rewards, Sanctified gear/Seal of the Dawn. | [2025-02-06 13:00 PST globally](https://worldofwarcraft.blizzard.com/en-us/news/24171906). |
| 250 | `vanilla.8` | New Avalon outdoor/quest/profession content. | [2025-04-08](https://worldofwarcraft.blizzard.com/en-us/news/24188044). |
| 260 | `vanilla.8.scarlet-enclave` | Scarlet Enclave raid and legendary weapon questline. | [2025-04-10 13:00 PDT globally](https://worldofwarcraft.blizzard.com/en-us/news/24188044). |

The published opening batches do not erase repository-defined nested later loot, removed legacy raid variants, runes, currencies, or recipe changes. Each of those definitions and aliases is covered by the full repository appendix. No phase 9 is invented. A synthetic `4.1`/`4.2` example demonstrates the interface; the named keys above describe actual distinct batches without pretending Blizzard named them decimal phases.

### Progression chapter: Burning Crusade (original Classic cycle)

The February 2021 overview was explicitly provisional and put Arena seasons in different phase slots. Actual release announcements below supersede those pairings. This is the historical progression cycle, not the Anniversary cycle. [Provisional plan](https://news.blizzard.com/en-us/article/23625673/world-of-warcraft-burning-crusade-classic-deep-dive).

| Review order | Proposed key | Required content group | Official evidence / date qualification |
| --- | --- | --- | --- |
| 1000 | `tbc.prepatch` | Blood Elf/Draenei access and pre-expansion systems; time-limited old-source closure decisions remain separate. | Provisional overview confirms early race access; exact source windows require prepatch evidence. |
| 1010 | `tbc.1` | Outland, Karazhan, Gruul, Magtheridon; initial dungeons, professions, and reputations. | [Classic launch 2021-06-01](https://investor.activisionblizzard.com/node/34151/pdf). |
| 1020 | `tbc.1.arena` | Arena Season 1 and its vendor/reward sources. | [2021-06-15 release](https://worldofwarcraft.blizzard.com/en-us/news/23685040). |
| 1030 | `tbc.2.preparation` | Guild banks, group browser, arena standings; season-1 ending/offseason pricing. | [2.5.2 timeline](https://us.forums.blizzard.com/en/wow/t/burning-crusade-classic-patch-252-content-timeline/1077822): Aug 31 patch; Sept 6 season end, region-qualified. |
| 1040 | `tbc.2.arena` | Arena Season 2. | Same timeline: Sept 14 regional reset. |
| 1050 | `tbc.2` | SSC, The Eye; Sha'tari Skyguard and Ogri'la. | Same timeline: 2021-09-15 15:00 PDT globally. |
| 1060 | `tbc.3.preparation` | Arena Season 3, Netherwing and related updates. | [Phase 3 release article](https://news.blizzard.com/en-us/article/23764312/burning-crusade-classic-phase-3-is-now-live); preserve its preparation/raid separation. |
| 1070 | `tbc.3` | Hyjal and Black Temple, related reputations and attunement rewards. | Same source: 2022-01-27 raids. |
| 1080 | `tbc.4.preparation` | Dungeon/key changes, badge vendor/drop additions, greater drums, epic-gem and world-boss loot changes. | [2022-03-22 update](https://worldofwarcraft.blizzard.com/en-us/news/23783585). |
| 1090 | `tbc.4` | Zul'Aman and timed Amani War Bear route. | [2022-03-24 raid](https://worldofwarcraft.blizzard.com/en-us/news/23783585). Closing of the original bear route needs its own later evidence. |
| 1100 | `tbc.5` | Shattered Sun Offensive / Isle of Quel'Danas campaign and Arena Season 4. | [2022-05-10 update / regional maintenance](https://news.blizzard.com/en-us/article/23789253/burning-crusade-classic-the-sunwell-plateau-is-now-open). |
| — (realm/source condition) | `tbc.5.isle-*` | Every named island stage, subobjective, service and vendor unlock. | Same source: realm participation controls advancement. Preserve all 2101–2107 repository groups; a fixed global date is not established. |
| 1110 | `tbc.5.sunwell` | Sunwell Plateau. | [2022-05-12 raid](https://news.blizzard.com/en-us/article/23789253/burning-crusade-classic-the-sunwell-plateau-is-now-open). |

### Progression chapter: Wrath

| Review order | Proposed key | Required content group | Official evidence / date qualification |
| --- | --- | --- | --- |
| 2000 | `wrath.prepatch` | Death Knight, Inscription, new systems and fresh-start realms. | [2022-08-30 regional maintenance](https://worldofwarcraft.blizzard.com/en-us/news/23833257). |
| 2010 | `wrath.prepatch.zombie` | Zombie outbreak window. | Same source: Sept 6–13. |
| 2020 | `wrath.prepatch.invasion` | Scourge Invasion window. | Same source: Sept 13 to launch; retain event/source conditions. |
| 2030 | `wrath.1` | Northrend and level-80 dungeons/professions/reputations. | Same source: 2022-09-26 15:00 PDT global launch. |
| 2040 | `wrath.1.arena` | Arena Season 5. | Same source: Oct 4/5 regional resets. |
| 2050 | `wrath.1.raids` | Naxxramas, Eye of Eternity, Obsidian Sanctum. | Same source: Oct 6 15:00 PDT. |
| 2060 | `wrath.2.preparation` | Emblem/vendor redistribution, Titan Rune Alpha, Arena Season 6, Argent Tournament initial content. | [January 2023 update](https://worldofwarcraft.blizzard.com/en-us/news/23897173/), week of Jan 16 / Jan 17 regional reset. |
| 2070 | `wrath.2` | Ulduar and hard-mode source routes. | Same source: 2023-01-19 15:00 PST. |
| 2080 | `wrath.3.preparation` | Titan Rune Beta, Sidereal Essence vendor, Trial of the Champion, expanded tournament quests, Arena Season 7. | [2023-06-20 update](https://worldofwarcraft.blizzard.com/en-us/news/23951684). |
| 2090 | `wrath.3` | Trial of the Crusader/Grand Crusader; level-80 Onyxia. | Same source: June 22 15:00 PDT. |
| 2100 | `wrath.4.preparation` | Forge of Souls, Pit of Saron, Halls of Reflection; random dungeon finder; Titan Rune Gamma. | [Week of 2023-10-10](https://worldofwarcraft.blizzard.com/en-us/news/24013831). |
| 2110 | `wrath.4` | Icecrown Citadel and Shadowmourne chain. | Same source: Oct 12 15:00 PDT globally. |
| 2120 | `wrath.5` | Ruby Sanctum. | [2024-01-11 15:00 PST](https://worldofwarcraft.blizzard.com/en-us/news/24042881). |
| 2130 | `wrath.transition-uprising` | Operation Gnomeregan / Zalazane's Fall and associated temporary acquisitions. | [2024-03-26](https://worldofwarcraft.blizzard.com/en-us/news/24078320). No inferred permanent reopening of prior sources. |

### Progression chapter: Cataclysm

| Review order | Proposed key | Required content group | Official evidence / date qualification |
| --- | --- | --- | --- |
| 3000 | `cata.prepatch` | Shattering/source replacements and systems. | Full repository prepatch definitions are required; no raid date substitutes for old-source removal. |
| 3010 | `cata.1` | Level 85 zones, initial dungeons, Tol Barad, professions/reputations. | [2024-05-20 global launch](https://worldofwarcraft.blizzard.com/en-us/news/24095669). |
| 3020 | `cata.1.arena` | PvP Season 9, Battle for Gilneas/Twin Peaks. | [2024-05-28 regional resets](https://worldofwarcraft.blizzard.com/en-us/news/24097846). |
| 3030 | `cata.1.raids` | Bastion of Twilight, Blackwing Descent, Throne of Four Winds. | Same source: May 30 15:00 PDT globally. Baradin Hold bosses retain their independent rows. |
| 3040 | `cata.2` | Rise of the Zandalari: heroic Zul'Gurub/Zul'Aman, Stranglethorn chain/pet, replacement raid/dungeon and mount routes. | [2024-07-30](https://worldofwarcraft.blizzard.com/en-us/news/24117140). New versions do not merge with old raid sources. |
| 3050 | `cata.3.molten-front` | Regrowth / Molten Front daily progression and four vendors. | [2024-09-17 early opening](https://news.blizzard.com/en-us/article/24135893/get-ready-for-the-molten-front-and-season-of-discovery-phase-5); personal quest unlocks remain requirements. |
| 3060 | `cata.3.preparation` | Elemental Bonds, Elemental Rune Protocol Inferno and reward sources. | [Rage of the Firelands update](https://news.blizzard.com/en-gb/article/24148553/wow-20th-anniversary-celebration-rage-of-the-firelands-and-firelands-raid-for-cataclysm-classic-and-more): EU Oct 30; region-qualified. |
| 3070 | `cata.3` | Firelands and Dragonwrath chain. | [2024-11-07 15:00 PST globally](https://worldofwarcraft.blizzard.com/en-us/news/24154449). |
| 3080 | `cata.4.preparation` | End Time, Well of Eternity, Hour of Twilight dungeons and associated source additions. | [2025-02-18 maintenance](https://worldofwarcraft.blizzard.com/en-us/news/24173042); EU Feb 19. |
| 3090 | `cata.4` | Dragon Soul, Fangs of the Father. | Same source: Feb 20 15:00 PST globally. |
| 3100 | `cata.4.alizabal` | Baradin Hold Alizabal. | Same source: Feb 25 NA / Feb 26 EU maintenance. |

### Progression chapter: Mists of Pandaria

| Review order | Proposed key | Required content group | Official evidence / date qualification |
| --- | --- | --- | --- |
| 4000 | `mists.prepatch` | Pandaren, Monk, talent systems, pet battles, Theramore scenario. | [2025-07-01](https://worldofwarcraft.blizzard.com/en-us/news/24213954). Retail promotional rewards are outside this Phase plan. |
| 4010 | `mists.1` | Level 90 zones, dungeons, scenarios, challenge modes, professions/reputations, Sunsong Ranch. | [2025-07-21 launch](https://worldofwarcraft.blizzard.com/en-us/news/24224134). |
| 4020 | `mists.1.arena` | PvP Season 12, new arena/battleground sources. | Same source: week after launch. |
| 4030 | `mists.1.msv` | Mogu'shan Vaults. | Same source: July 31 15:00 PDT globally. |
| 4040 | `mists.1.celestial-msv` | Celestial Dungeons and MSV reward pool. | [2025-08-12 regional maintenance](https://worldofwarcraft.blizzard.com/en-gb/news/24223022). |
| 4050 | `mists.1.hof` | Heart of Fear. | Same source: Aug 21 23:00 BST. |
| 4060 | `mists.1.sha-tier14` | Sha of Anger gains Tier 14 drops. | Same source: Aug 26 regional maintenance; exact later-drop scope, not whole-boss reopening. |
| 4070 | `mists.1.celestial-hof` | HoF Celestial reward pool. | Same source: Sept 2 regional maintenance. |
| 4080 | `mists.1.toes` | Terrace of Endless Spring. | Same source: Sept 4 23:00 BST; no Classic HoF-clear prerequisite. |
| 4090 | `mists.1.celestial-toes` | ToES Celestial reward pool. | Same source: Sept 16 regional maintenance. |
| 4100 | `mists.2` | Landfall factions/campaign, five scenarios, Brawler's Guild ranks 1–7, Wrathion socket chapter, gear-upgrade/vendor changes. | [2025-09-23](https://worldofwarcraft.blizzard.com/en-us/news/24229242). |
| 4110 | `mists.3` | Isle of Thunder/Isle of Giants, factions, legendary meta-gem chapter, Thunderforging, new scenarios. | [2025-12-09 NA / Dec 10 EU update](https://worldofwarcraft.blizzard.com/en-gb/news/24242434/mists-of-pandaria-classic-the-thunder-king-content-update-is-now-live). |
| 4120 | `mists.3.throne` | Throne of Thunder normal/heroic and Ra-den prerequisite. | Same source: Dec 11 23:00 GMT. |
| 4130 | `mists.3.celestial` | Updated Celestial rewards and challenge-mode season. | Same source: week of Dec 16/17 regional maintenance. |
| 4140 | `mists.3.oondasta` | Oondasta. | Same source's Dec 12 correction: Dec 18 23:00 GMT globally. Do not use the earlier initial article's assumed date. |
| — (realm/source condition) | `mists.3.isle-stages` | Every island war-effort stage, associated services/quests, final Nalak access. | Same source: final-stage dependent; no invented universal Nalak date. |
| 4150 | `mists.4` | Escalation campaign, Northern Barrens, four new scenarios/six heroic versions, legendary chapter, Brawler's Guild higher ranks/challenge cards. | [2026-03-31 regional update](https://worldofwarcraft.blizzard.com/en-us/news/24267939). |
| 4160 | `mists.5` | Timeless Isle, Emperor Shaohao, final legendary-cloak chapter, four Celestials/Ordos, Proving Grounds, season-14 and challenge/Celestial season-3 sources. | [2026-06-02 update](https://worldofwarcraft.blizzard.com/en-us/news/24264421). |
| 4170 | `mists.5.siege` | Siege of Orgrimmar. | [2026-06-04 raid](https://worldofwarcraft.blizzard.com/en-us/news/24252017). |

No WoD, Legion, BfA, Shadowlands, Dragonflight, or War Within Classic cycle is inferred from leftover numeric constants. They remain classified repository metadata outside the evidenced progression timeline until actual support is specified. Appendix D retains every definition and its disposition.

### Evidence limits that must survive integration

- Official announcement/source groups are verified as published plans/releases, not new in-game observation of every item. Record-level availability still needs the repository's required source evidence.
- Every finer repository phase/subphase/alias must appear in a reconciliation table; unknown date is acceptable, silently omitted definition is not.
- Region reset dates, realm-wide war efforts, and player-specific unlocks are different axes. A single chronological view does not erase the latter two predicates.
- Raid opening does not prove that a whole expansion's unrelated quests, vendors, or profession recipes share its phase.
- Cross-expansion removals, changed loot pools, PvP reward season closure, limited invasions, and later boss/drop additions are full-route window work. Where the sources above do not establish an endpoint, mark that specific endpoint unresolved; never fill it with the next raid's date.

### Anniversary: Vanilla cycle

| Review order | Proposed key | Opening / scope | Primary evidence |
| --- | --- | --- | --- |
| 100 | `vanilla.launch` | November 2024 fresh level-60 world; raid opening is separate. | [Launch overview](https://news.blizzard.com/en-us/article/24156594/relive-your-adventure-with-the-wow-classic-20th-anniversary-edition) |
| 110 | `vanilla.1.raids` | Dec 12, 2024 PST: Molten Core and Onyxia. | Same launch overview. |
| 120 | `vanilla.2` | Jan 9, 2025 14:00 PST: Dire Maul, Azuregos, Kazzak; Honor rank cap 11. | [Official timetable](https://news.blizzard.com/en-us/article/24165126/wow-weekly-the-siren-isle-content-update-is-now-live-and-more) |
| 130 | `vanilla.2.battlegrounds` | Jan 16: Warsong Gulch and Alterac Valley. | Same timetable; keep separate from Jan 9. |
| 140 | `vanilla.3` | Mar 20: Blackwing Lair, level-50 class quests, reputation reward additions, Eternal Quintessence, Darkmoon Faire. | [Phase 3 timetable](https://news.blizzard.com/en-us/article/24182548/wow-20th-anniversary-edition-phase-3-honor-cap-arathi-basin-and-more-now-live) |
| 150 | `vanilla.3.pvp` | Apr 3: rank-11 cap lifted to 14, Arathi Basin and BG holidays. | Same phase-3 timetable. |
| 160 | `vanilla.4` | May 1: Zul'Gurub, Dragons of Nightmare, Silithus additions, fishing tournament and dungeon set 0.5. Set 0.5 is earlier than the original Classic phase-5 grouping. | [Phase 4](https://news.blizzard.com/en-us/article/24194658/wow-classic-20th-anniversary-edition-phase-4-now-live) |
| 170 | `vanilla.5.war-effort` | Jul 10 at 15:00 PDT: resource turn-ins begin. | [Phase 5](https://news.blizzard.com/en-gb/article/24213950/wow-classic-20th-anniversary-edition-phase-5-now-live) |
| — (realm/source condition) | `vanilla.5.transport`, `.gong`, `.war`, `.raids` | Completion-dependent five-day transport, realm gong, limited battle, AQ20/AQ40 access. Do not invent one universal raid date. Preserve separately timed acquisition routes. | Same phase-5 article. |
| 180 | `vanilla.6` | Oct 2 at 23:00 BST: Naxxramas and Scourge Invasion, with associated world-PvP content. An invasion's closing endpoint needs independent evidence. | [Official announcement recap](https://worldofwarcraft.blizzard.com/en-gb/news/24229248) |

### Anniversary: Burning Crusade cycle

The official 2026 roadmap explicitly numbers this cycle **1, 2, 3, 3.5, 4**, not the original Classic TBC 1–5. The [official roadmap](https://bnetcmsus-a.akamaihd.net/cms/content_entry_media/tq/TQEKUSQ6MZFT1769706584394.png) linked from [State of Azeroth](https://news.blizzard.com/en-us/article/24250385/catch-up-on-the-state-of-azeroth-in-our-recap). It places Zul'Aman at 3.5 and Sunwell at 4, both within the autumn planning band. Later exact announcements supersede broad roadmap windows.

| Review order | Proposed key | Opening / scope | Primary evidence |
| --- | --- | --- | --- |
| 1000 | `tbc.prepatch` | Jan 13, 2026: prepatch/new races and systems; source-removal windows require their own evidence. | [Launch/prepatch article](https://news.blizzard.com/en-us/article/24242436/wow-burning-crusade-classic-anniversary-edition-now-live) |
| 1010 | `tbc.1` | Feb 5: Outland, level 70, Jewelcrafting, flying and guild banks at launch. Guild-bank timing differs from original Classic. | Same launch article. |
| 1020 | `tbc.1.arena` | Feb 17 regional reset: Arena S1. | Same launch article. |
| 1030 | `tbc.1.raids` | Feb 19 at 15:00 PST: Karazhan, Gruul, Magtheridon. | Same launch article. |
| 1040 | `tbc.2` | May 14 at 15:00 PDT: SSC, The Eye, Ogri'la, Skyguard, Swift Flight Form and profession additions. Arena S2 is listed but reward season closure/offseason remains a separate scope. | [Dated announcement](https://worldofwarcraft.blizzard.com/en-us/news/24272608), [content and off-season details](https://news.blizzard.com/en-us/article/24276751/bcc-anniversary-edition-overlords-of-outland-now-live) |
| 1050 | `tbc.3` | Aug 27 at 15:00 PDT: Black Temple, Hyjal, Netherwing, epic gems and Arena S3. | [Official dated announcement recap](https://worldofwarcraft.blizzard.com/en-us/news/24293051) |
| 1060 | `tbc.3.5` | Oct 22 at 15:00 PDT: Zul'Aman/timed bear; additional badge drops/vendor pools, epic gems in newly acquired containers, reputation/attunement changes, profession recipes and tradeability changes. Keep new container acquisitions distinct from old unopened containers. | [Zul'Aman update](https://worldofwarcraft.blizzard.com/en-us/news/24310652) |
| 1070 | `tbc.4` | Announced Sunwell Plateau, Isle of Quel'Danas and Arena S4. Exact dates and island subobjective timing not verified at cutoff; retain full prospective scope without assigning original-Classic 2101–2107 dates or phase-5 numbers. | Official 2026 roadmap above. |

All named island subobjectives from the repository remain in the reconciliation inventory; whether each exists and its eligibility in Anniversary requires evidence. No Wrath Anniversary cycle is inferred from discussion/speculation.

### Hardcore: two distinct actual timelines

- `hardcore/original-2023.json`: opened Aug 24, 2023 at 15:00 PDT with all original content phases available. A single `launch` milestone can include all eligible PvE scopes; do not make players unlock six historical phases again. Battlegrounds/battlemasters are disabled and Wargames grant no Honor/PvP reputation. These are source-applicability restrictions, not future unlocks. [Official patch notes](https://news.blizzard.com/en-us/article/23987544/world-of-warcraft-classic-era-1-14-4-update-notes), [rules](https://news.blizzard.com/en-us/article/23973734/rules-of-engagement-classic-hardcore-is-coming-to-world-of-warcraft).
- `hardcore/anniversary-2024.json`: independently record the complete Anniversary Vanilla launch, raid, Dire Maul/world-boss, BWL, ZG, AQ flow and Naxx sequence above. Officially follows the normal Anniversary PvE openings; excludes BG/battlemaster unlocks and **does not progress to TBC**. Do not import the entire Anniversary policy without its restrictions. [Official Anniversary rules](https://news.blizzard.com/en-us/article/24156594/relive-your-adventure-with-the-wow-classic-20th-anniversary-edition).
- Self-Found is a gameplay constraint, not another global phase schedule. Review its trade/acquisition restrictions separately. An all-content-at-launch announcement does not prove all historical one-time events or temporary rewards repeat; endpoints such as AQ battle/scepter and invasions remain explicit evidence questions.
- Future Forever Hardcore belongs to a Forever ruleset/context, not these Classic Hardcore histories.

### Titan: every currently announced numbered phase

Profile: `titan/main.json` (Chrono); no native release-phase IDs exist in the audited master catalog. Keep Titan source variants independent from Wrath/TBC/Vanilla originals.

| Review order | Proposed key | State at cutoff | Opening/content | Evidence |
| --- | --- | --- | --- | --- |
| 100 | `chrono.launch` | Historical opening boundary; exact general-access versus early-access boundary needs reconciliation | Leveling/client baseline before first raid opening. Official launch article is dated Nov 13, 2025; earlier previews mention Nov 18. Do not silently select one as a universal activation time. | [Launch announcement](https://wow.blizzard.cn/news/20251113/40565_1270773.html) |
| 110 | `chrono.1` | Opened | Dec 4, 2025: reworked Molten Core; first ranked world-PvP cycle. | [Launch/first-raid announcement](https://wow.blizzard.cn/news/20251113/40565_1270773.html) |
| 120 | `chrono.2` | Opened | Jan 29, 2026: Tempest Keep, Serpentshrine Cavern, Doom Lord Kazzak/Doomwalker, Titan Thunderfury and upgrades of earlier legendary equipment; S2. | [Phase 2](https://wow.blizzard.cn/news/20260114/40565_1281658.html) |
| 130 | `chrono.3` | Opened | Apr 2, 2026: Naxxramas, Obsidian Sanctum, Eye of Eternity; Titan Atiesh; S3. | [Phase 3](https://wow.blizzard.cn/news/trr/20260402/43039_1294320.html) |
| 140 | `chrono.3.1` | Opened; local subphase, not an official numbered phase | Apr 9: a separate merchant/acquisition route for old T3 appearances and mounts becomes available. Keep it distinct from the raid-opening boundary and historical original routes. | [Phase 3 merchant date](https://wow.blizzard.cn/news/trr/20260402/43039_1294320.html) |
| 150 | `chrono.4` | Opened | May 28, 2026: Trial of the Crusader and Zul'Gurub (level-80/25-player variants), new legendary dagger and S4. | [Phase 4](https://wow.blizzard.cn/news/trr/20260528/43039_1302020.html) |
| 160 | `chrono.4.1` | Opened; local subphase | Jun 11 after maintenance: new weekly quest on Yojamba Isle awarding a reputation gem. This is a later source within phase 4. | [New weekly](https://wow.blizzard.cn/news/trr/20260610/43039_1303733.html) |
| 170 | `chrono.5` | Opened | Aug 6, 2026: Sunwell Plateau and 25-player Zul'Aman, revised Thori'dal and S5. | [Phase 5 announcement](https://wow.blizzard.cn/news/trr/20260724/43039_1308957.html), [Aug 6 confirmation](https://wow.blizzard.cn/news/trr/20260806/43039_1309932.html) |
| 180 | `chrono.6` | Opened | Oct 8, 2026: Ulduar, its explicitly retained encounter-triggered hard modes, revised healing/damage Val'anyr options and S6. | [Phase 6](https://wow.blizzard.cn/news/trr/20261010/43039_1315082.html), [Oct 9 live raid adjustments](https://wow.blizzard.cn/news/trr/20261009/43039_1316105.html) |
| 190 | `chrono.6.1` | Announced for Oct 12; separate feature boundary | Raid challenge rankings begin after the raid. Apply this boundary only to actual ATT acquisition scopes tied to that feature, not every Ulduar drop. | [Phase 6 leaderboard date](https://wow.blizzard.cn/news/trr/20261010/43039_1315082.html) |
| 200 | `chrono.7` | Announced, not established as released at cutoff | Winter 2026: 25-player Karazhan, Gruul and Magtheridon. | [Official future roadmap](https://wow.blizzard.cn/news/20260913/43790_1313712.html) |
| 210 | `chrono.8` | Announced future | Spring 2027: Blackwing Lair, Onyxia and Ruins of Ahn'Qiraj. | [Roadmap](https://wow.blizzard.cn/news/20260913/43790_1313712.html) |
| 220 | `chrono.9` | Announced future | Summer 2027: Temple of Ahn'Qiraj and Dragons of Nightmare. | [Roadmap](https://wow.blizzard.cn/news/20260913/43790_1313712.html) |
| 230 | `chrono.10` | Announced future | Summer 2027: Icecrown Citadel and Ruby Sanctum. Preserve the stated phase-9/10 order; do not invent separate dates from a shared season window. | [Roadmap](https://wow.blizzard.cn/news/20260913/43790_1313712.html) |

The phase-6 page header is dated September 25 and its URL may contain September 24 or October 10, while the body explicitly gives October 8 for the opening. The body schedule and October 9 live adjustment evidence support the opening boundary; neither publication date nor URL date is the opening date.

The Jun 25 gem adjustment changes the holding limit and removes surplus copies from inventory; it does **not** announce that the weekly acquisition route was removed. Do not invent `until = chrono.4.2` from that announcement. [Adjustment](https://wow.blizzard.cn/news/trr/20260622/43039_1304959.html)

World-PvP ranking seasons have close/settlement periods independent of raid availability. For example, S4 scoring ends Jul 26 at 23:59:59 and S5 starts Aug 6. End a ranking/reward route only where its actual reward eligibility is evidenced; closing the ranking does not close the raid. Temporary commercial/holiday reward routes retain their own event/availability evidence rather than making all event changes global raid phases.

### Forever: live milestones and beta phases are different

Sol's source audit identifies `FOREVER_PHASE_ONE = 600` and `FOREVER_PHASE_TWO = 601` as **beta level-20/level-30** declarations. These are not evidence that live launch and first raids are native phases 600/601.

| Review order | Proposed profile/key | State | Scope/evidence |
| --- | --- | --- | --- |
| 100 (beta profile) | `forever/beta-2026.json`: `beta.20` | Historical beta level-20 stage; native ID 600 | Preserve the repository stage; verify its date separately. Not the live launch. |
| 110 (beta profile) | `forever/beta-2026.json`: `beta.30` | Historical beta level-30 stage; native ID 601 | Follows the beta level-20 stage; verify its date separately. Not the first live raids. |
| 100 (live profile) | `forever/main.json`: `launch` | Launched by the research cutoff | Nov 4, 2026 15:00 PST = Nov 5, 2026 07:00 Asia/Taipei. Baseline level-1–60 world, not an invented numbered phase. [Official panel recap](https://worldofwarcraft.blizzard.com/en-us/news/24303862/world-of-warcraft-forever-whats-next) |
| 110 (live profile) | `forever/main.json`: `first-raids` | Announced upcoming | Dec 9: Barrow Deeps (10), Hyjal Summit (20), Onyxia (40). Use new local keys; no verified native numeric mapping. [Official raid overview](https://news.blizzard.com/en-gb/article/24303009/world-of-warcraft-forever-raid-overviewlocations-raid-sizes-and-attunement) |
| Pending announcement/order | Future roadmap entries, not assigned chronological keys yet | Announced scope, dates/order not fully established in the accessible primary text | Further raids/dungeons, PvP updates, world content and quests, Hardcore, and a reworked iconic raid. Preserve them in a pending roadmap ledger instead of manufacturing phases 3–6. [Panel recap](https://worldofwarcraft.blizzard.com/en-us/news/24303862/world-of-warcraft-forever-whats-next) |

The official ruleset overview explicitly puts Forever Hardcore after launch. It remains a Forever ruleset/context, not evidence that classic Hardcore or Anniversary Hardcore's schedule applies to Forever. [Rulesets](https://worldofwarcraft.blizzard.com/en-us/news/24302070)

The complete [official panel recap](https://news.blizzard.com/en-us/article/24303862/world-of-warcraft-forever-whats-next-panel-recap) confirms the launch, September 17 beta, and December 9 raid sequence. Later scope is announced without a complete ordered/date roadmap in that text; no additional phase number or date is inferred.

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

## Appendix D: every repository phase definition and its disposition

This is an exhaustive reconciliation of the pinned `shared/lib/Constants/Phases.lua`, not a second policy registry. **72 release-metadata declarations (64 `createClassicPhase` and 8 `createClassicPhaseForSOD`) do not mean 72 chronological releases:** realm/personal predicates, collector-priority filters and beta stages must not be flattened into one timeline. Source references and every alias retain their context. The 18 numeric-only future constants do not announce future Classic cycles.

<details>
<summary>All 72 registered release-metadata declarations</summary>

| Native ID | Source symbol | Planned key or non-timeline disposition | Migration/evidence boundary |
| --- | --- | --- | --- |
| 11 | [`PHASE_ONE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L561) | `vanilla.1` | Historical Vanilla opening; choose flavor-specific policy. |
| 1101 | [`PHASE_ONE_DIREMAUL`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L593) | `vanilla.1.dire-maul` | Original Classic early batch; SoM launch / Anniversary phase 2 / SoD phase 4 are separate policies. |
| 12 | [`PHASE_TWO`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L638) | `vanilla.2` | World bosses/Honor scopes must be separated from later BG opening. |
| 13 | [`PHASE_THREE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L670) | `vanilla.3` | BWL plus individually reviewed alias groups. |
| 14 | [`PHASE_FOUR`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L706) | `vanilla.4` | ZG/Dragons; AB can open separately. |
| 15 | [`PHASE_FIVE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L740) | `vanilla.5.loot` | Broad phase-5 content is split by actual loot, war-effort and raid occurrence. |
| 1501 | [`PHASE_FIVE_WAR_EFFORT`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L775) | `vanilla.5.war-effort` | Collection window; realm completion remains independent. |
| 1502 | [`PHASE_FIVE_GONG`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L819) | `AQ gates-unopened condition` | Realm-state condition under the AQ window, not a global timestamp. |
| 1503 | [`PHASE_FIVE_WAR`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L863) | `AQ battle window` | Realm gong plus limited battle; do not invent one global 10-hour date. |
| 1504 | [`PHASE_FIVE_CATCH_UP`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L907) | `vanilla.5.catch-up` | Repository-described nature-resistance catch-up; exact flavor/date boundary unresolved. |
| 16 | [`PHASE_SIX`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L952) | `vanilla.6` | Naxx opening; invasion is a separate source window. |
| 1601 | [`PHASE_SIX_SCOURGE_INVASION`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L985) | `vanilla.6.invasion` | Temporary invasion; ending requires independent evidence. |
| 1602 | [`PHASE_SIX_SILITHYST`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1029) | `vanilla.6.silithyst` | Repository world-PvP source group; verify each flavor rather than copy alias. |
| 1603 | [`PHASE_SIX_CLASSICERA`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1074) | `vanilla.era-transition` | Era/Chronoboon source context; not another universal raid phase. |
| 1604 | [`SOM_PHASE_ONE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1135) | `som: vanilla.1…6` | One SoM metadata declaration does not collapse the officially announced six-phase cycle. |
| 1605 | [`SOD_PHASE_ONE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1195) | `sod: vanilla.1` | Primary SoD phase metadata; all finer batches in section 11 remain distinct and do not inherit a fabricated native ID. |
| 1606 | [`SOD_PHASE_TWO`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1240) | `sod: vanilla.2` | Primary SoD phase metadata; all finer batches in section 11 remain distinct and do not inherit a fabricated native ID. |
| 1607 | [`SOD_PHASE_THREE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1272) | `sod: vanilla.3` | Primary SoD phase metadata; all finer batches in section 11 remain distinct and do not inherit a fabricated native ID. |
| 1608 | [`SOD_PHASE_FOUR`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1304) | `sod: vanilla.4` | Primary SoD phase metadata; all finer batches in section 11 remain distinct and do not inherit a fabricated native ID. |
| 1609 | [`SOD_PHASE_FIVE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1336) | `sod: vanilla.5` | Primary SoD phase metadata; all finer batches in section 11 remain distinct and do not inherit a fabricated native ID. |
| 1610 | [`SOD_PHASE_SIX`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1368) | `sod: vanilla.6` | Primary SoD phase metadata; all finer batches in section 11 remain distinct and do not inherit a fabricated native ID. |
| 1611 | [`SOD_PHASE_SEVEN`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1400) | `sod: vanilla.7` | Primary SoD phase metadata; all finer batches in section 11 remain distinct and do not inherit a fabricated native ID. |
| 1612 | [`SOD_PHASE_EIGHT`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1432) | `sod: vanilla.8` | Primary SoD phase metadata; all finer batches in section 11 remain distinct and do not inherit a fabricated native ID. |
| 17 | [`TBC_PHASE_ONE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1521) | `tbc.1` | Original launch; Anniversary separates raid opening. |
| 1701 | [`TBC_PHASE_ONE_DARKPORTAL`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1554) | `tbc.1 / portal source condition` | Dark Portal opening and prepatch source transitions require precise occurrence windows. |
| 18 | [`TBC_PHASE_TWO`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1602) | `tbc.2` | Original SSC/TK batch; Anniversary has its own phase 2. |
| 1801 | [`TBC_PHASE_TWO_OGRILA`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1635) | `tbc.2.ogrila` | Faction/source group, opening plus independent quest prerequisites. |
| 1802 | [`TBC_PHASE_TWO_SKYGUARD`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1681) | `tbc.2.skyguard` | Faction/source group, not automatic all-reputation completion. |
| 19 | [`TBC_PHASE_THREE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1728) | `tbc.3` | Hyjal/BT; source variants remain context-specific. |
| 1901 | [`TBC_PHASE_THREE_NETHERWING`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1761) | `tbc.3.netherwing` | Faction unlock/preparation separate where announcement distinguishes it. |
| 1902 | [`TBC_PHASE_THREE_GLAIVEPRIO`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1807) | `Not chronological: Glaive priority` | Collector/guild-priority display condition; preserve separately, never turn into a release window. |
| 20 | [`TBC_PHASE_FOUR`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1852) | `progression tbc.4 / Anniversary tbc.3.5` | Same legacy label cannot dictate both cycles' official numbering. |
| 21 | [`TBC_PHASE_FIVE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1885) | `progression tbc.5 / Anniversary tbc.4` | Sunwell/Isle opening; native ID does not establish Anniversary date. |
| 2101 | [`TBC_PHASE_FIVE_OFFENSIVE_PHASE_TWO`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1919) | `Isle Sanctum unlock` | Realm progress predicate under the Isle opening; no invented global order. |
| 2102 | [`TBC_PHASE_FIVE_OFFENSIVE_PHASE_TWO_B`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L1964) | `Isle Portal unlock` | Parallel/subobjective realm predicate; no inferred date. |
| 2103 | [`TBC_PHASE_FIVE_OFFENSIVE_PHASE_THREE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2009) | `Isle Armory unlock` | Realm progress predicate, retain source requirements. |
| 2104 | [`TBC_PHASE_FIVE_OFFENSIVE_PHASE_THREE_B`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2054) | `Isle Anvil unlock` | Subobjective/service availability, not next raid date. |
| 2105 | [`TBC_PHASE_FIVE_OFFENSIVE_PHASE_FOUR`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2099) | `Isle Harbor unlock` | Realm progress predicate, not all players' quest completion. |
| 2106 | [`TBC_PHASE_FIVE_OFFENSIVE_PHASE_FOUR_B`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2144) | `Isle Monument unlock` | Subobjective predicate; do not serialize independent objectives artificially. |
| 2107 | [`TBC_PHASE_FIVE_OFFENSIVE_PHASE_FOUR_C`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2189) | `Isle Alchemy Lab unlock` | Subobjective/service predicate; verify availability per flavor. |
| 2108 | [`TBC_PHASE_FIVE_SCOURGE_INVASION`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2234) | `wrath.prepatch.invasion` | Temporary transition event, not permanent Sunwell loot. |
| 30 | [`WRATH_PHASE_ONE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2290) | `wrath.1` | Launch baseline; raid and Arena batches are separate. |
| 3001 | [`WRATH_PHASE_ONE_REALM_FIRST`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2322) | `Not chronological: realm-first eligibility` | Achievement/source eligibility, not a repeatable global phase. |
| 31 | [`WRATH_PHASE_TWO`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2366) | `wrath.2` | Ulduar opening, preserve independently later/lost routes. |
| 3101 | [`WRATH_PHASE_TWO_HAMMERPRIO`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2398) | `Not chronological: Hammer priority` | Collector/guild priority condition; preserve outside timeline. |
| 32 | [`WRATH_PHASE_THREE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2443) | `wrath.3` | ToC/Onyxia; preparation/dungeon/vendor sources separated. |
| 33 | [`WRATH_PHASE_FOUR`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2475) | `wrath.4` | ICC; preparation dungeons are a different batch. |
| 3301 | [`WRATH_PHASE_FOUR_SHADOWMOURNE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2507) | `Not chronological: Shadowmourne priority` | Collector priority is not the legendary quest opening itself. |
| 3302 | [`WRATH_PHASE_FOUR_RUBYSANCTUM`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2552) | `wrath.5` | Ruby Sanctum; stable new key need not copy legacy phase-four name. |
| 3303 | [`WRATH_PHASE_FOUR_OPERATION_ZALAZANE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2597) | `wrath.transition-uprising` | Gnomeregan/Zalazane temporary routes. |
| 3304 | [`WRATH_PHASE_FOUR_ELEMENTAL_INVASION`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2642) | `cata.prepatch.elemental-unrest` | Repository-defined transition event; exact occurrence endpoints unresolved. |
| 40 | [`CATA_PHASE_ONE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2699) | `cata.1` | Launch; raids/PvP separate. |
| 4001 | [`CATA_PHASE_RISE_OF_THE_ZANDALARI`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2731) | `cata.2` | Rise of Zandalari; old/new raid/dungeon routes stay distinct. |
| 4002 | [`CATA_PHASE_MOLTEN_FRONT`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2777) | `cata.3.molten-front` | Early opening plus personal unlock progression, not Firelands raid date. |
| 41 | [`CATA_PHASE_RAGE_OF_THE_FIRELANDS`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2822) | `cata.3` | Firelands raid and distinct preparation batch. |
| 42 | [`CATA_PHASE_HOUR_OF_TWILIGHT`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2867) | `cata.4` | Hour of Twilight update, Dragon Soul and Alizabal have distinct openings. |
| 50 | [`MOP_PHASE_ONE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2924) | `mists.1` | Launch; later raid/season batches explicit. |
| 5001 | [`MOP_PHASE_ONE_MOGUSHAN_VAULTS`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2957) | `mists.1.msv` | MSV raid opening. |
| 5002 | [`MOP_PHASE_ONE_CELESTIAL_DUNGEONS_MSV`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L2995) | `mists.1.celestial-msv` | Separate Celestial reward route/pool. |
| 5003 | [`MOP_PHASE_ONE_HEART_OF_FEAR`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L3033) | `mists.1.hof` | HoF opening. |
| 5004 | [`MOP_PHASE_ONE_SHA_OF_ANGER_TIER_14`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L3071) | `mists.1.sha-tier14` | Later drops on an existing boss, not whole-boss opening. |
| 5005 | [`MOP_PHASE_ONE_CELESTIAL_DUNGEONS_HOF`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L3109) | `mists.1.celestial-hof` | HoF Celestial reward pool. |
| 5006 | [`MOP_PHASE_ONE_TERRACE_OF_ENDLESS_SPRINGS`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L3147) | `mists.1.toes` | ToES opening. |
| 5007 | [`MOP_PHASE_ONE_CELESTIAL_DUNGEONS_TOES`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L3185) | `mists.1.celestial-toes` | ToES Celestial reward pool. |
| 51 | [`MOP_PHASE_LANDFALL`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L3223) | `mists.2` | Landfall systems/scenarios/factions. |
| 52 | [`MOP_PHASE_RISE_OF_THE_THUNDER_KING`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L3256) | `mists.3` | Thunder King; raid, world boss and realm unlock batches split. |
| 5201 | [`MOP_PHASE_RISE_OF_THE_THUNDER_KING_CELESTIAL_DUNGEONS`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L3289) | `mists.3.celestial` | ToT Celestial rewards. |
| 53 | [`MOP_PHASE_ESCALATION`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L3327) | `mists.4` | Escalation. |
| 54 | [`MOP_PHASE_SIEGE_OF_ORGRIMMAR`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L3360) | `mists.5` | SoO update; raid separate. |
| 5401 | [`MOP_PHASE_SIEGE_OF_ORGRIMMAR_CELESTIAL_DUNGEONS`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L3393) | `mists.5.celestial` | Celestial SoO pool; verify exact opening against update announcement. |
| 600 | [`FOREVER_PHASE_ONE`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L3565) | `forever/beta-2026: beta.20` | Historical beta level 20; NEVER map to live launch. |
| 601 | [`FOREVER_PHASE_TWO`](https://github.com/ATTWoWAddon/AllTheThings/blob/0668031cb5986d021dc12611b1ee040a975132e9/.contrib/.db/shared/lib/Constants/Phases.lua#L3598) | `forever/beta-2026: beta.30` | Historical beta level 30; NEVER map to first live raids. |

Keys in this table are planning destinations, not a global numeric-to-release conversion. A content source is resolved in its selected flavor/profile. A missing official date or existing TODO stays unverified; a nonchronological predicate remains independent of the manual timeline. In particular, the three legendary-priority settings and realm-first eligibility need dedicated compatibility/retirement tests before their old `phase` transport can be removed; moving them into a window would change their meaning.

</details>

<details>
<summary>All 47 ordered alias assignments, including overrides</summary>

Later assignments can overwrite earlier ones. The SoD block explicitly contains uncertain/TODO assignments; its final numeric value proves current source behavior, not actual game availability. Stage-2 golden preserves that behavior; any correction needs separate evidence and an approved difference. In particular, earlier phase-4 recipe/T0.5 assignments are later overwritten by phase-5/6 aliases: do not automatically publish either as verified policy.

| Source line | Alias | Assigned target | Condition | Existing comment / migration treatment |
| --- | --- | --- | --- | --- |
| 198 | `BLACK_MARKET` | `REAL_MONEY` | `ANYCLASSIC` | Preserve the context-specific unavailable/special alias independently; no progression window is implied. |
| 199 | `TCG` | `REAL_MONEY` | `ANYCLASSIC` | Preserve the context-specific unavailable/special alias independently; no progression window is implied. |
| 371 | `TRAINING` | `UNLEARNABLE` | `Unconditional` | Preserve the context-specific unavailable/special alias independently; no progression window is implied. |
| 702 | `PHASE_THREE_DMF_CARDS` | `PHASE_THREE` | `Unconditional` | Preserve evaluated context in golden; bind actual source occurrences to explicit policy. |
| 703 | `PHASE_THREE_ENCHANTS` | `PHASE_THREE` | `Unconditional` | Preserve evaluated context in golden; bind actual source occurrences to explicit policy. |
| 704 | `PHASE_THREE_RECIPES` | `PHASE_THREE` | `Unconditional` | Preserve evaluated context in golden; bind actual source occurrences to explicit policy. |
| 705 | `PHASE_THREE_SILITHUS_EXPEDITION_QUESTS` | `PHASE_THREE` | `Unconditional` | Preserve evaluated context in golden; bind actual source occurrences to explicit policy. |
| 738 | `PHASE_FOUR_DARKIRON_RECIPES` | `PHASE_FOUR` | `Unconditional` | Preserve evaluated context in golden; bind actual source occurrences to explicit policy. |
| 739 | `PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS` | `PHASE_FOUR` | `Unconditional` | Preserve evaluated context in golden; bind actual source occurrences to explicit policy. |
| 772 | `PHASE_FIVE_RECIPES` | `PHASE_FIVE` | `Unconditional` | Preserve evaluated context in golden; bind actual source occurrences to explicit policy. |
| 773 | `PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS` | `PHASE_FIVE` | `Unconditional` | Preserve evaluated context in golden; bind actual source occurrences to explicit policy. |
| 774 | `PHASE_FIVE_SILITHUS_FIELD_DUTY_QUESTS` | `PHASE_FIVE` | `Unconditional` | Preserve evaluated context in golden; bind actual source occurrences to explicit policy. |
| 984 | `PHASE_SIX_CLASS_BOOKS` | `PHASE_SIX` | `Unconditional` | Preserve evaluated context in golden; bind actual source occurrences to explicit policy. |
| 1465 | `PHASE_SIX_CLASSICERA` | `SOD_PHASE_ONE` | `SEASON_OF_DISCOVERY` | Chronoboons were available right away. |
| 1468 | `PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS` | `SOD_PHASE_THREE` | `SEASON_OF_DISCOVERY` | Sunken Temple Class Quests came out with Phase 3 of SOD. |
| 1471 | `PHASE_ONE_DIREMAUL` | `SOD_PHASE_FOUR` | `SEASON_OF_DISCOVERY` | Dire Maul actually came out with Phase 4 of SOD. |
| 1472 | `PHASE_TWO` | `SOD_PHASE_FOUR` | `SEASON_OF_DISCOVERY` | Azuregos, Lord Kazzak, and PVP Battlegrounds were immediately available with Phase 4 of SOD. |
| 1473 | `PHASE_THREE_ENCHANTS` | `SOD_PHASE_FOUR` | `SEASON_OF_DISCOVERY` | A number of these actually came out with Phase 4 of SOD. (CRIEVE NOTE: Not actually sure since I can't check the AH for these...) |
| 1474 | `PHASE_THREE_RECIPES` | `SOD_PHASE_FOUR` | `SEASON_OF_DISCOVERY` | A number of these actually came out with Phase 4 of SOD. |
| 1475 | `PHASE_FOUR_DARKIRON_RECIPES` | `SOD_PHASE_FOUR` | `SEASON_OF_DISCOVERY` | A number of these actually came out with Phase 4 of SOD. |
| 1476 | `PHASE_FIVE_RECIPES` | `SOD_PHASE_FOUR` | `SEASON_OF_DISCOVERY` | A number of these actually came out with Phase 4 of SOD. |
| 1477 | `PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS` | `SOD_PHASE_FOUR` | `SEASON_OF_DISCOVERY` | T0.5 Sets actually came out with Phase 4 of SOD. |
| 1478 | `PHASE_SIX_CLASS_BOOKS` | `SOD_PHASE_FOUR` | `SEASON_OF_DISCOVERY` | A number of these actually came out with Phase 4 of SOD. |
| 1479 | `PHASE_SIX_SILITHYST` | `SOD_PHASE_FOUR` | `SEASON_OF_DISCOVERY` | The Silithyst Quests actually came out with Phase 4 of SOD. |
| 1480 | `PHASE_FIVE_SILITHUS_FIELD_DUTY_QUESTS` | `SOD_PHASE_FOUR` | `SEASON_OF_DISCOVERY` | Preserve evaluated context in golden; bind actual source occurrences to explicit policy. |
| 1483 | `PHASE_THREE` | `SOD_PHASE_FIVE` | `SEASON_OF_DISCOVERY` | Blackwing Lair came out with Phase 5 of SOD. |
| 1484 | `PHASE_THREE_DMF_CARDS` | `SOD_PHASE_FIVE` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. |
| 1485 | `PHASE_THREE_ENCHANTS` | `SOD_PHASE_FIVE` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. |
| 1486 | `PHASE_THREE_RECIPES` | `SOD_PHASE_FIVE` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. |
| 1487 | `PHASE_THREE_SILITHUS_EXPEDITION_QUESTS` | `SOD_PHASE_FIVE` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. CRIEVE NOTE: On SOD Phase 4, none of these quests were available. |
| 1488 | `PHASE_FOUR` | `SOD_PHASE_FIVE` | `SEASON_OF_DISCOVERY` | Zul'Gurub came out with Phase 5 of SOD. |
| 1489 | `PHASE_FOUR_DARKIRON_RECIPES` | `SOD_PHASE_FIVE` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. |
| 1492 | `PHASE_FIVE` | `SOD_PHASE_SIX` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. |
| 1493 | `PHASE_FIVE_RECIPES` | `SOD_PHASE_SIX` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. |
| 1494 | `PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS` | `SOD_PHASE_SIX` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. |
| 1495 | `PHASE_FIVE_SILITHUS_FIELD_DUTY_QUESTS` | `SOD_PHASE_SIX` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. |
| 1496 | `PHASE_FIVE_WAR_EFFORT` | `SOD_PHASE_SIX` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. |
| 1497 | `PHASE_FIVE_GONG` | `SOD_PHASE_SIX` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. |
| 1498 | `PHASE_FIVE_WAR` | `SOD_PHASE_SIX` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. |
| 1499 | `PHASE_FIVE_CATCH_UP` | `SOD_PHASE_SIX` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. |
| 1502 | `PHASE_SIX` | `SOD_PHASE_SEVEN` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. |
| 1503 | `PHASE_SIX_CLASS_BOOKS` | `SOD_PHASE_SEVEN` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. |
| 1504 | `PHASE_SIX_SCOURGE_INVASION` | `SOD_PHASE_SEVEN` | `SEASON_OF_DISCOVERY` | Preserve evaluated context in golden; bind actual source occurrences to explicit policy. |
| 1505 | `PHASE_SIX_SILITHYST` | `SOD_PHASE_SEVEN` | `SEASON_OF_DISCOVERY` | TODO: Confirm this. |
| 1727 | `TBC_PHASE_TWO_SWIFTFLIGHTFORM` | `TBC_PHASE_TWO` | `Unconditional` | Preserve evaluated context in golden; bind actual source occurrences to explicit policy. |
| 1918 | `TBC_PHASE_FIVE_OFFENSIVE_PHASE_ONE` | `TBC_PHASE_FIVE` | `Unconditional` | Preserve evaluated context in golden; bind actual source occurrences to explicit policy. |
| 2776 | `CATA_PHASE_ADJUSTED_WORLD_BOSS_LOOT` | `CATA_PHASE_RISE_OF_THE_ZANDALARI` | `Unconditional` | World Boss Loot was originally blue, they got upgraded to Epic later. |

</details>

<details>
<summary>All 18 numeric-only future constants and 10 non-release declarations</summary>

These remain visible in the inventory but do not create production flavor schedules. Retail is excluded; future-expansion constants with references require disposition in any affected non-Retail context, not guessed Classic dates.

| Symbol | Native ID | Disposition |
| --- | --- | --- |
| `WOD_PHASE_ONE` | 60 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `WOD_PHASE_TWO` | 61 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `WOD_PHASE_THREE` | 62 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `LEGION_PHASE_ONE` | 70 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `LEGION_PHASE_TWO` | 71 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `LEGION_PHASE_THREE` | 72 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `BFA_PHASE_ONE` | 80 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `BFA_PHASE_TWO` | 81 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `BFA_PHASE_THREE` | 82 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `SL_PHASE_ONE` | 90 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `SL_PHASE_TWO` | 91 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `SL_PHASE_THREE` | 92 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `DF_PHASE_ONE` | 100 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `DF_PHASE_TWO` | 101 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `DF_PHASE_THREE` | 102 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `TWW_PHASE_ONE` | 110 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `TWW_PHASE_TWO` | 111 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `TWW_PHASE_THREE` | 112 | Numeric-only repository constant; no registered phase metadata or announced cycle established here. |
| `NEVER_IMPLEMENTED` | 1 | Existing unavailable/special filter; not a progression milestone. Preserve its independent semantics. |
| `REMOVED_FROM_GAME` | 2 | Existing unavailable/special filter; not a progression milestone. Preserve its independent semantics. |
| `REAL_MONEY` | 3 | Existing unavailable/special filter; not a progression milestone. Preserve its independent semantics. |
| `BLACK_MARKET` | 9 | Existing unavailable/special filter; not a progression milestone. Preserve its independent semantics. |
| `TCG` | 10 | Existing unavailable/special filter; not a progression milestone. Preserve its independent semantics. |
| `TRADING_POST` | 7 | Existing unavailable/special filter; not a progression milestone. Preserve its independent semantics. |
| `ELITE_PVP_REQUIREMENT` | 4 | Existing unavailable/special filter; not a progression milestone. Preserve its independent semantics. |
| `UNLEARNABLE` | 5 | Existing unavailable/special filter; not a progression milestone. Preserve its independent semantics. |
| `CONDITIONALLY_AVAILABLE` | 6 | Existing unavailable/special filter; not a progression milestone. Preserve its independent semantics. |
| `TEMP_MOP_LEGENDARY_CLOAK_PHASE` | 38 | Existing unavailable/special filter; not a progression milestone. Preserve its independent semantics. |

</details>

<details>
<summary>All 13 audited non-Retail configuration entries</summary>

Configuration names are build targets, not the flavor catalog. These entries include future templates: their existence does not announce support or a game cycle. Only reviewed actual contexts are activated; a future template is recorded as deferred, not silently treated as a currently supported profile.

| Existing configuration | DataPhase / DataPatch | Relevant identity evidence / disposition |
| --- | --- | --- |
| `.contrib/.db/standard/.config/classic/01 - Classic Era.config` | `CLASSIC` / `[1, 15, 9, 70576]` | Candidate Era binding; negative not-SoD requirement is not exhaustive positive identity proof. |
| `.contrib/.db/standard/.config/classic/01 - Classic SOD.config` | `SEASON_OF_DISCOVERY` / `[1, 15, 9, 70576]` | SoD candidate; same DataPatch as Era. Shared SOM tag is not historical SoM identity. |
| `.contrib/.db/standard/.config/classic/02 - TBC.config` | `TBC` / `[2, 5, 6, 70577]` | Contains CLASSIC_ANNIVERSARY: must not be mechanically assigned to original progression TBC. |
| `.contrib/.db/standard/.config/classic/03 - Wrath.config` | `WRATH` / `[3, 4, 5, 63697]` | Explicit NAXX_10MAN_DROPS_25MAN_LOOT source variant; profile cannot manufacture that loot. |
| `.contrib/.db/standard/.config/classic/04 - Cataclysm.config` | `CATA` / `[4, 4, 5, 55261]` | Expansion target; actual progression binding and runtime applicability require review. |
| `.contrib/.db/standard/.config/classic/05 - Mists of Pandaria.config` | `MOP` / `[5, 5, 4, 70631]` | MOP_BEFORE_SOO source selector; do not assume this target emits the full published later schedule. |
| `.contrib/.db/standard/.config/classic/06 - Warlords of Draenor.config` | `WOD` / `[6, 3, 0, 55261]` | Future-expansion/template entry only; no announced Classic cycle or active policy inferred. |
| `.contrib/.db/standard/.config/classic/07 - Legion.config` | `LEGION` / `[7, 4, 0, 55261]` | Future-expansion/template entry only; no announced Classic cycle or active policy inferred. |
| `.contrib/.db/standard/.config/classic/08 - Battle for Azeroth.config` | `BFA` / `[8, 4, 0, 55261]` | Future-expansion/template entry only; no announced Classic cycle or active policy inferred. |
| `.contrib/.db/standard/.config/classic/09 - Shadowlands.config` | `SL` / `[9, 3, 0, 55261]` | Future-expansion/template entry only; no announced Classic cycle or active policy inferred. |
| `.contrib/.db/standard/.config/classic/10 - Dragonflight.config` | `DRAGONFLIGHT` / `[10, 3, 0, 55261]` | Future-expansion/template entry only; no announced Classic cycle or active policy inferred. |
| `.contrib/.db/standard/.config/classic/11 - The War Within.config` | `TWW` / `[11, 3, 0, 55261]` | Future-expansion/template entry only; no announced Classic cycle or active policy inferred. |
| `.contrib/.db/forever/.config/forever.config` | `FOREVER` / `[1, 60, 1, 69893]` | ANYCLASSIC/FOREVER/CAMELOT; source beta IDs do not establish live phase IDs or runtime detector. |

</details>

Coverage totals: 82 table declarations = 72 release-metadata declarations + 10 unavailable/special declarations; 47 alias assignment events; 18 numeric-only constants; 13 non-Retail configuration entries; 9,442 lexical phase-symbol references. References are not emitted acquisition counts. The separate 5,554-call authoring inventory and 1,664-directive `SEASON_OF_DISCOVERY` inventory measure different things and must not be summed as phases.
