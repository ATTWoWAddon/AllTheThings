# Nefarian · executable comparison of two loot routes

**Comparison fixture · excerpts from P1–P4.** The [whole-file walkthrough](../README.md) contains the complete raid. This smaller run follows Nefarian's Head (`19003`) and two versions of Ashkandi through five snapshots. Each directory represents the **same working directory at a different point in the migration**. The copies let you diff each step. For current release timing, edit `rules.blackwing-lair` in the [shared schedule](../../../schedule.json). The executable excerpt uses the four frozen historical profiles under [p4/profiles](p4/profiles/) so the historical comparison stays reproducible. This walkthrough uses option A.

| Snapshot | Open the Lua | What changed on disk since the previous step | Output authority for this source |
|---|---|---|---|
| **P1 excerpt** | [Selected lines](p1/sources.lua) | Extracted from the full P1 file, which uses `applyclassicphase` and SoD guards. | Legacy. [What the shipped SoD DB contains](p1/legacy-sod.md) |
| **P2.1** | [Annotated source](p2.1/sources.lua) | Add four Lua fields and select P2.1 in the [migration control](p2.1/migration.json). | Legacy. A policy can still be missing. |
| **P2.2** | [Same source](p2.2/sources.lua) | Introduce the release rules. The verifier reads a temporary copy of the [frozen profiles](p4/profiles/). Set the [stage](p2.2/migration.json) to P2.2. | Legacy. Validate the proposed progress output separately. |
| **P3** | [Same source](p3/sources.lua) | The [control](p3/migration.json) changes one value. The verifier gives the P3 projection the same frozen inputs and annotated Lua as P2.2. | Progress. Compare with an independent legacy golden. |
| **P4** | [Rewritten source](p4/sources.lua) | Remove the old writers and guards. Use the [historical SoD input](p4/profiles/sod/main.json) directly and advance the [control](p4/migration.json). | Progress. [Actual generated SoD Lua](p4/expected-sod.lua) |

## P1 · what the maintainer starts with

Open the [selected P1 lines](p1/sources.lua). Its body is copied from the [original raid file](https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/1.6%20Blackwing%20Lair.lua#L45). The outer `applyclassicphase(PHASE_THREE, ...)` covers the instance. In a SoD build, the original encounter acquires this additional parent:

```lua
-- #if SEASON_OF_DISCOVERY
d(DIFFICULTY.LEGACY_RAID.PLAYER40, bubbleDownTimelineEventSelf(REMOVED_1_15_4, {
-- #endif
e(1536, {   -- Nefarian
```

Further down the same source, a second `e(1536)` lives under `applyclassicphase(SOD_PHASE_FIVE, d(DIFFICULTY.SOD.PLAYER20, ...))`. The 40-player route drops `19003` with its Alliance restriction and the original sword `19364`. The rework contains its own `19003` and the new sword `230818`. The shipped SoD DB records the phase on the parent instance as `phase=1609`. [Old difficulty and loot records](p1/legacy-sod.md)

## P1 → P2.1 · four added lines

Each hunk below shows a different location in [the annotated Lua](p2.1/sources.lua). The enclosing legacy calls, preprocessor directives and loot remain in place.

```diff
 inst(742, {    -- Blackwing Lair
+    progressionKey = "raid.bwl.common",

 e(1536, {      -- Original Nefarian
+    progressionKey = "raid.bwl.original",

 applyclassicphase(SOD_PHASE_FIVE, d(DIFFICULTY.SOD.PLAYER20, {
+    flavors = { "sod" },
+    progressionKey = "raid.bwl.sod20",
```

## P2.1 → P2.2 · add the release policy

P2.2 is the first stage that needs a release policy. A maintainer writes the four BWL keys in the [shared schedule](../../../schedule.json). This historical excerpt includes three of those keys. For the shadow run, the verifier copies the [frozen SoD profile](p4/profiles/sod/main.json) to its temporary input directory. Its expanded `content` looks like this:

```json
{
  "raid.bwl.common":   { "windows": [{ "from": "vanilla.5" }] },
  "raid.bwl.original": { "status": "disabled", "windows": [] },
  "raid.bwl.sod20":    { "windows": [{ "from": "vanilla.5" }] }
}
```

## P2.2 → P3 · switch which result ships

This is the entire operational edit between the two directory snapshots:

```diff
-      "stage": "P2.2",
+      "stage": "P3",
```

The temporary `migration.json` controls this one source group. Its `sources.lua` path is relative to the snapshot root. The verifier copies the same frozen SoD profile into a separate temporary directory for this projection. At P2.2 the progress result is for comparison. At P3 it becomes the official result for the group. The old Lua expressions still exist so the legacy path can be compiled independently.

| Nefarian source | Legacy evidence | Progress result in SoD |
|---|---|---|
| Difficulty 9, original head `19003` and sword `19364` | Instance has `phase=1609`. Removed difficulty and loot retain `u=2`. | Both drops inherit `raid.bwl.common` **and** `raid.bwl.original`. The original route stays disabled. |
| Difficulty 201, reworked head `19003` and sword `230818` | Same parent phase. This difficulty carries `awp=11504` and has a separate loot list. | The two drops inherit `raid.bwl.common` **and** `raid.bwl.sod20`. They are future at `vanilla.4` and active at `vanilla.5` when ordinary requirements pass. |

The [SoD fixture adapter](../project-sod.lua) evaluates the still-wrapped, annotated source with legacy phase writes suppressed. The actual example Parser then applies the selected profile. The legacy reference is the independently [shipped SoD database](p1/legacy-sod.md). A production P3 promotion additionally requires a fresh, pinned legacy run and evidence for the whole source group, including the book whose timing is still unresolved. The standalone Parser's example command accepts the direct P4 input. The verifier drives the earlier shadow and progress comparisons.

## P3 → P4 · retire the wrappers

The [P4 Lua](p4/sources.lua) declares ordinary Nefarian directly under the instance. In SoD it declares two difficulty records. The following diff excerpts show what changes at each difficulty boundary. The [P4 Nefarian excerpt](p4/sources.lua) contains the two separate boss and loot lists.

```diff
@@ Original 40-player history in SoD
- -- #if SEASON_OF_DISCOVERY
- d(DIFFICULTY.LEGACY_RAID.PLAYER40, bubbleDownTimelineEventSelf(REMOVED_1_15_4, {
- -- #endif
+ d(9, {
+     flavors = { "sod" },
+     progressionKey = "raid.bwl.original",
+     timeline = { "removed 1.15.4.56738" },

@@ Reworked 20-player raid in SoD
- applyclassicphase(SOD_PHASE_FIVE, d(DIFFICULTY.SOD.PLAYER20, {
+ d(201, {
      flavors = { "sod" },
      progressionKey = "raid.bwl.sod20",
-     timeline = { ADDED_1_15_4 },
+     timeline = { "added 1.15.4.56738" },
```

The original key now covers the entire history difficulty. A child still needs the same two scopes on its acquisition route. The [generated module](p4/expected-sod.lua) shows both occurrences of `19003` in full, including the race restriction on the original. All three comparisons use the same four frozen profiles, stored only with this runnable P4 excerpt. Retail selects the ordinary source and reads no phase profile.

## Reproduce the comparison

From the repository root on Windows with Python and Lua 5.1 on PATH:

```powershell
$kit = '.contrib/phase-examples/evolution/blackwing-lair'
$parser = Resolve-Path '.contrib/.tools/Parser.exe'
python "$kit/verify.py" --parser $parser --lua lua5.1
& $parser --phase-example A "$kit/nefarian/p4" sod:main "$env:TEMP/bwl-after.lua"
lua5.1 .contrib/phase-examples/show.lua "$env:TEMP/bwl-after.lua" vanilla.5 19003
```

Use a directory comparison to inspect every actual edit. For example, `git diff --no-index -- p2.2 p3` from this folder displays the stage switch. The verifier checks the stored copies, the legacy source excerpt and the resulting Nefarian routes. [Independent examples for the other five instances](../../OTHER_INSTANCES.md)
