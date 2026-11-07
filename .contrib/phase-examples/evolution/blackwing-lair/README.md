# Blackwing Lair · how the full raid file changes

**Comparison guide for maintainers, P1 → P4.** Open [the complete P1 Lua file](p1/1.6%20Blackwing%20Lair.lua) first. The first line identifies the stage and original path. Everything after it is the current [1,144-line ATT file](../../../.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/1.6%20Blackwing%20Lair.lua), byte for byte. The token definitions, instance metadata, quests, other bosses and every loot entry are included.

Each directory represents the same raid at a successive migration stage. The copies exist so you can compare versions side by side. In production, a maintainer advances one source group and reuses its policy files.

| Stage | Complete source at this step | Other files added or changed | Which result would ship |
|---|---|---|---|
| **P1** | [1.6 Blackwing Lair.lua](p1/1.6%20Blackwing%20Lair.lua) | The starting raid uses the existing phase writers. [Actual SoD database records](nefarian/p1/legacy-sod.md) | Legacy. |
| **P2.1** | [1.6 Blackwing Lair.lua](p2.1/1.6%20Blackwing%20Lair.lua) | Add source keys, identify the SoD rework, and select [P2.1](p2.1/migration.json). Keep every old phase writer and guard. | Legacy. No policy file yet. |
| **P2.2** | [1.6 Blackwing Lair.lua](p2.2/1.6%20Blackwing%20Lair.lua) | Add [SoD](p2.2/profiles/sod/main.json), [progression](p2.2/profiles/progression/main.json), [Anniversary](p2.2/profiles/anniversary/main.json) and [Era](p2.2/profiles/era/main.json) rules. Advance the [control file](p2.2/migration.json). | Legacy. Validate the proposed progress result separately. |
| **P3** | [1.6 Blackwing Lair.lua](p3/1.6%20Blackwing%20Lair.lua) | The only change from P2.2 is one value in [migration.json](p3/migration.json). The Lua and all four profiles stay byte-identical. | Progress after the group's promotion gates pass. Independently compile the old path for the legacy golden. |
| **P4** | [Ordinary Classic source](p4/classic.lua) · [SoD source](p4/sod.lua) · [Ordinary Retail source](p4/retail.lua) | [Select a complete source before running Lua](p4/selection.json). Retire the old phase writers and flavor guards. Keep the [same policy files](p4/profiles/). | Progress for phased contexts. Retail retains its ordinary, unphased output. |

## P1 → P2.1 · what changes in the Lua

These three locations show how to read the [annotated full file](p2.1/1.6%20Blackwing%20Lair.lua). The annotations name an acquisition route. They leave the phase numbers and item IDs where they were.

```diff
@@ Whole instance
 root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, applyclassicphase(PHASE_THREE, {
     inst(742, {
+        progressionKey = "raid.bwl.common",

@@ Draconic for Dummies retains its later opening
 applyclassicphase(PHASE_FIVE, o(180667, {
+    progressionKey = "raid.bwl.draconic-for-dummies",

@@ SoD's reworked 20-player difficulty
 applyclassicphase(SOD_PHASE_FIVE, d(DIFFICULTY.SOD.PLAYER20, {
+    flavors = { "sod" },
+    progressionKey = "raid.bwl.sod20",
```

The original bosses and quest routes gain `raid.bwl.original`. For the achievements, treasures and zone-drop headers, put their child arrays in explicit `groups` tables so the new key belongs to the header record. The old Lua shorthand accepts only numeric child entries inside a bare child list.

## P2.1 → P2.2 → P3 · what changes outside the Lua

In P2.2 the [SoD JSON](p2.2/profiles/sod/main.json) gives the ordinary route `"status": "disabled"` and opens the rework at `vanilla.5`. The book has its own `"status": "unknown"`. Each JSON file is written once. The P2.2 result is checked in shadow while the old phase writers still determine official output.

Here is the entire P2.2 → P3 file diff, from the proposed one-group migration control:

```diff
-      "stage": "P2.2",
+      "stage": "P3",
```

At P3 the progress projection suppresses the old phase writes and applies the reviewed rules. The separate legacy projection keeps those calls. The old SoD database stores `phase=1609` on instance 742. In the progress projection the reworked Nefarian drop carries both `sod:main:raid.bwl.common` and `sod:main:raid.bwl.sod20`. The source group in each control file is relative to that snapshot's root.

## P3 → P4 · where the old conditionals go

The full-file example shows option B: select complete ATT-native source files before executing their helpers. The three files let you inspect everything the selected flavor would read. Retail and ordinary Classic differ on the original source's `ANYCLASSIC` content. The SoD file contains its token table, deprecated 40-player history and reworked 20-player raid. Conditions tied to a client version still guard the records that used them.

| Find this in the P3 Lua | Follow it into the complete P4 files |
|---|---|
| Outer `applyclassicphase(PHASE_THREE, ...)` | The instance keeps its provider, maps, quest prerequisite and `raid.bwl.common`. Its profile supplies the window. |
| Original Nefarian and the conditional 40-player wrapper | The [Classic file](p4/classic.lua) keeps the original encounter flat. The [SoD file](p4/sod.lua) keeps its removed difficulty 9, timeline, race restriction and original Ashkandi `19364`. |
| `applyclassicphase(SOD_PHASE_FIVE, d(...PLAYER20, ...))` | Only the [SoD file](p4/sod.lua) has difficulty 201, the reworked loot including `230818`, the token costs and the separate quest sources. |
| Later book `applyclassicphase(PHASE_FIVE, o(180667, ...))` | The book and its own timeline remain. Its stable key binds it to the independent book rule in each profile. |

These are full native source **candidates**. Production promotion of the entire raid still requires an independent legacy golden, complete build/eligibility checks and evidence for the unresolved book opening. The ordinary Retail file illustrates its default output outside the Classic migration.

## Run the focused comparison

The [Nefarian walkthrough](nefarian/README.md) uses a **separate teaching excerpt** to execute the P2.2 shadow, P3 progress and direct P4 paths. Its two occurrences of Head of Nefarian, plus the two swords, make a small enough sample to inspect in the [actual generated Lua](nefarian/p4/expected-sod.lua). The comparison adapter only accepts this fixture's constructors. The full native files above include the rest of the raid and use ATT's normal source language.

```powershell
$kit = '.contrib/phase-examples/evolution/blackwing-lair'
$parser = Resolve-Path '.contrib/.tools/Parser.exe'
python "$kit/verify.py" --parser $parser --lua lua5.1
```

To inspect every changed line locally, run `git diff --no-index -- p1 p2.1` or `git diff --no-index -- p2.2 p3` from this directory. [Full P1 files and worked records for the other five instances](../OTHER_INSTANCES.md)
