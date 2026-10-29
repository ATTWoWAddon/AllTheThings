# Independent progression runtime

This document covers the runtime foundation that can be reviewed independently of the paused Parser upgrade. It does not activate a generated flavor profile, add a Titan database include, or change authored game records. The full integration design is available in [English](TITAN_DATABASE_PLAN.md), [繁體中文](TITAN_DATABASE_PLAN.zh-TW.md), and [简体中文](TITAN_DATABASE_PLAN.zh-CN.md).

## Activation and compatibility

The TOC loads `src/Modules/Progression.lua` before source-handling modules. The module reads `app.ProgressionProfile` lazily, so future guarded database loading can choose the correct flavor after the runtime modules have loaded. With no profile, existing numeric phase preferences and source merge behavior remain active.

A profile contains a stable namespace, a valid baseline, and named phases with explicit order:

```lua
app.ProgressionProfile = {
    id = "example",
    baseline = "example:one",
    phases = {
        ["example:one"] = {
            order = 1,
            name = { en = "Release One", tw = "開放階段一", cn = "开放阶段一" },
        },
        ["example:two"] = {
            order = 2,
            name = { en = "Release Two", tw = "開放階段二", cn = "开放阶段二" },
        },
        ["example:unknown"] = {
            order = 0,
            status = "unknown",
            name = { en = "Unconfirmed", tw = "尚未確認", cn = "尚未确认" },
        },
    },
}
```

This is an illustrative runtime contract, not a command for users to select or spoof a live server phase. Production profile generation and source bindings remain pending. Invalid/missing/mismatched baseline keys fail closed; an unknown-status phase cannot be a baseline. Requirements for registered unknown-status phases are hidden by default, with explicit visibility controls available for inspection. Unregistered phase keys remain invalid and cannot be enabled through saved choices.

## Acquisition semantics

A source can carry `releasePhases = { "example:one" }`. Requirements on the same source and its ancestors combine with AND. Alternative acquisition sources combine with OR. Each alternative retains its own release, numeric phase (`phase`), unavailable (`u`), and event (`e`) restrictions.

For example, an open but removed boss drop and a future vendor reward do not produce a currently obtainable item by borrowing favorable fields from each other. The merger retains both complete alternatives. A source's live status and later acquisition ancestry remain relevant after cloning and merging. Weak sidecars avoid holding closed display copies alive; source IDs deduplicate repeated alternatives. While a source or view remains alive, visibility evaluation reads its current conditions. After it is collected, retained routes use the last observed conditions and local overrides. Changes to an original source followed by collection before any evaluation are not guaranteed to propagate to every existing copy, including writes made through the explicit availability helper. Keep a changed original alive through visibility evaluation when later copies must retain that state.

Content identity remains separate from progression. A new SoD boss or replacement loot table requires its own authored source. A shared item ID, instance ID, or NPC ID does not prove the source is the same. The runtime tests exercise separate boss/reward lists and later vendor rewards within a shared instance, without claiming those fixtures establish game data.

## Saved choices and display controls

`ReleasePhases` stores flat, namespaced boolean overrides. An unset key uses the active profile's baseline; explicit `false` survives baseline changes and profile copies. Copying an ATT settings profile creates independent storage.

A phase may declare `legacyU` to preserve an existing explicit numeric preference for both numeric `u` and numeric `phase` fields. Controlled acquisition routes retain numeric phase together with release, u, and event conditions, so alternatives cannot borrow each other’s visibility. This is an intentional adapter, not a global conversion of every numeric `u`. Different flavors do not share preferences unless their profile explicitly declares that relationship. The Phase settings page displays active-profile controls while retaining legacy controls for unmapped content. Debug visibility is a display mode, not evidence of server progression.

## Explicit availability updates

Callbacks that change a merged acquisition view must identify the field they are changing:

```lua
app.Modules.Progression.SetSourceAvailability(group, "u", nil)
app.Modules.Progression.SetSourceAvailability(group, "e", eventID)
```

Only `"u"` and `"e"` are accepted. The helper changes the displayed field and the retained callback origin's corresponding condition. Explicit `nil` is distinct from no override; untouched fields keep reading the live source. It does not borrow fields from another alternative or change generic callback dispatch. Existing callback wrappers can delegate without changing the source identity.

The standalone regression uses synthetic adapter callbacks through actual runtime merge/clone/filter code, including an unconditional delegating-wrapper fixture and an additional integration check when the optional quest-reward visibility module is present. The six authored Ulduar adapters and their source-to-generated-output verification remain part of the paused integration; they are not included in these runtime commits.

## Candidate Titan checks and reports

`app.IsTitanReforged()` requires numeric project identifiers equal to the candidate Wrath value `11` and a numeric interface in `[38000, 39000)`. Locale and region do not establish identity. This remains a candidate heuristic pending installed-client confirmation.

Appearance defaults require the collection functions used by the runtime module. Missing required functions retain item fallback. The implementation preserves `IsClassic`, `IsRetail`, and `IsForever` classification.

Contributor Reports and Raw/Readable Debugger exports include captured client identity and types, region/locale/realm, reference metadata, active progression profile, and visibility baseline. The existing interface-only `GameBuild` field remains. Reports identify actual server progression as unknown; visibility settings do not observe the server.

## Standalone verification

Use Lua 5.1 exclusively from the repository root:

```text
lua5.1 tests/titan-client.lua .
lua5.1 tests/flavor-progression.lua .
lua5.1 .contrib/titan/benchmark-progression.lua . 5000
```

The existing Lua regression workflow discovers the two new suites alongside the existing suites. The standalone tests do not read generated databases or authored Parser inputs. Published-tree verification must run every discovered suite against only the selected commit contents, so held Parser files cannot satisfy an accidental dependency. Verify the pull-request merge tree separately when its base has changed; the available suite count may differ from the branch.

The benchmark compares opted-in and legacy runtime paths using synthetic inputs and actual runtime functions. It reports process CPU time and Lua heap measurements, including clone cleanup; ending heap size is not peak memory. It does not establish live WoW performance.

Remaining validation includes generated profile/source bindings, complete database loading, full Parser integration after its upgrade, and live Titan client behavior. No runtime fixture or benchmark is evidence of actual game loot, release dates, or server phase.
