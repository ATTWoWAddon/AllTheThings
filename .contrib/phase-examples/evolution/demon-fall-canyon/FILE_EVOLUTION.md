# Demon Fall Canyon: Lua and JSON, P1 → P4

[All six instances](../README.md) · [The shared schedule](../../schedule.json)

Open the dungeon, add Azgaloth later, and add a new item to Grimroot later still. Those are three distinct changes, so they use three keys.

**Read down:** P1 → P2.1 → P2.2 → P3 → P4. These are migration steps, not game release phases. Each step below shows the file you would change and a complete saved version of the result.

## P1 — start with the existing Lua file

**Lua source:** `.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Demon Fall Canyon.lua`

**Saved P1 copy:** [Demon Fall Canyon.lua](../p1/Demon%20Fall%20Canyon.lua). Its first line identifies the copy; everything after that line is byte-for-byte the current production source. **No new JSON yet.**

<details>
<summary>Read the whole P1 file</summary>

```lua
-- P1 | Full authoring source at the start of migration. Original: .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Demon Fall Canyon.lua
-- #if SEASON_OF_DISCOVERY
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	applyclassicphase(SOD_PHASE_FOUR, inst(2784, {	-- Demon Fall Canyon
		lore = "Demon Fall Canyon is historically the location of the final battle between Grom Hellscream and Mannoroth as featured in Warcraft III.",
		zoneTextAreaID = 435,	-- Demon Fall Canyon
		sourceQuest = 84384,	-- Demonic Deceptions
		provider = { "i", 228172 },	-- Shadowtooth Illusion Ward
		coord = { 84.5, 75.0, ASHENVALE },
		timeline = { ADDED_1_15_3 },
		lvl = 55,
		groups = {
			n(226923, {	-- Grimroot <The Mourning Guardian>
				i(228082),	-- Warsong Axe
				i(228079),	-- Cloak of Leaves
				i(228080),	-- Resin Loop
				i(228081),	-- Germinating Poisonseed
				i(228083),	-- Gloaming Treeheart
				applyclassicphase(SOD_PHASE_SEVEN, i(235787, {	-- Ancient Ironwood Branch (QI!)
					timeline = { ADDED_1_15_6 },
				})),
			}),
			n(228022, {	-- The Destructor's Wraith
				i(228075),	-- Spear of Destiny
				i(228077),	-- Dreambough
				i(228074),	-- Hands of Temptation
				i(228076),	-- Burning Ring of Fire
				i(228078),	-- Accursed Chalice
				i(18665),	-- The Eye of Shadow
			}),
			n(226922, {	-- Zilbagob
				i(228086),	-- Repurposed Shredderblade
				i(228088),	-- Shredder Operator's Dogtags
				i(228085),	-- Phaseshifted Legion Band
				i(228087),	-- Supercharged Silver Moebius
				i(228084),	-- Miniaturized Fire Extinguisher
			}),
			applyclassicphase(SOD_PHASE_FIVE, n(232632, {	-- Azgaloth <Lord of the Pit>
				timeline = { ADDED_1_15_4 },
				groups = {
					i(231913),	-- Eye of the Observer
					i(231911),	-- Signet of the Legion General
					i(231910),	-- Heart of Azgaloth
					i(231912),	-- Blade of the Pit
					i(231460),	-- Planebreaker of Azgaloth
					i(4213, {	-- Grimoire of Doom
						classes = { WARLOCK },
						groups = {
							recipe(18540),	-- Ritual of Doom
						},
					}),	
				},
			})), 
			n(227140, {	-- Pyranis
				i(228090),	-- Cenarion Ritual Dagger
				i(228092),	-- Druidic Mantle
				i(228091),	-- Thorned Boots
				i(228093),	-- Dark Heart of Darkness
				i(228089),	-- Woodcarved Moonstalker
			}),
			n(227019, {	-- Diathorus the Seeker
				i(228094),	-- Dreadlord's Blade
				i(228107),	-- Fallen Huntress' Longbow
				i(228106),	-- Shield of Life and Death
				i(228104),	-- Robes of Elune
				i(228103),	-- Nathrezim's Greaves
				i(18665),	-- The Eye of Shadow
			}),
			n(227028, {	-- Hellscream's Phantom
				i(228410),	-- Dreadblade of the Destructor
				i(228108),	-- Shadow of Gorehowl
				i(228111),	-- Mask of the Godslayer
				i(228112),	-- Nightmare Gown
				i(228109),	-- Legguards of Sacrifice
				i(228113),	-- Cold Embrace
				i(228126, {	-- Aperitive Epiphany
					classes = { PRIEST },
					groups = {
						recipe(402857),	-- Engrave Cloak - Vampiric Touch
					},
				}),
			}),
		},
	})),
}));
-- #endif
```

</details>

## P1 → P2.1 — add the keys to that Lua

**Author’s change:** edit the Lua source above. Keep its old phase calls. Add a key to the parent whose records share one opening; a child only needs another key when it has another rule.

**Saved result:** [p2.1/Demon Fall Canyon.lua](p2.1/Demon%20Fall%20Canyon.lua) — a generated comparison copy showing those proposed edits.

**Read these changed lines first.** They are exact hunks from the complete diff below. `-` is the old line; `+` is its replacement.

```diff
@@ -39,7 +40,7 @@
 				i(228087),	-- Supercharged Silver Moebius
 				i(228084),	-- Miniaturized Fire Extinguisher
 			}),
-			applyclassicphase(SOD_PHASE_FIVE, n(232632, {	-- Azgaloth <Lord of the Pit>
+			applyclassicphase(SOD_PHASE_FIVE, { progressionKey = "dfc.azgaloth", groups = { n(232632, {	-- Azgaloth <Lord of the Pit>
 				timeline = { ADDED_1_15_4 },
 				groups = {
 					i(231913),	-- Eye of the Observer
```

Descendants inherit the parent’s key. An additional child key combines with the parent rule using **AND**; it cannot bypass a closed parent. A pure `progressionKey` + `groups` table shares a rule across siblings and adds no visible output header.

<details>
<summary>Show every changed Lua line: P1 → P2.1</summary>

```diff
--- .contrib/phase-examples/evolution/p1/Demon Fall Canyon.lua
+++ .contrib/phase-examples/evolution/demon-fall-canyon/p2.1/Demon Fall Canyon.lua
@@ -1,11 +1,12 @@
--- P1 | Full authoring source at the start of migration. Original: .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Demon Fall Canyon.lua
+-- Generated comparison snapshot (P2.1 / P2.2 / P3): complete annotated source.
+-- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
 -- #if SEASON_OF_DISCOVERY
 -----------------------------------------------------
 --   D U N G E O N S  &  R A I D S  M O D U L E    --
 -----------------------------------------------------
 
 root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
-	applyclassicphase(SOD_PHASE_FOUR, inst(2784, {	-- Demon Fall Canyon
+	applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dfc.dungeon", groups = { inst(2784, {	-- Demon Fall Canyon
 		lore = "Demon Fall Canyon is historically the location of the final battle between Grom Hellscream and Mannoroth as featured in Warcraft III.",
 		zoneTextAreaID = 435,	-- Demon Fall Canyon
 		sourceQuest = 84384,	-- Demonic Deceptions
@@ -20,9 +21,9 @@
 				i(228080),	-- Resin Loop
 				i(228081),	-- Germinating Poisonseed
 				i(228083),	-- Gloaming Treeheart
-				applyclassicphase(SOD_PHASE_SEVEN, i(235787, {	-- Ancient Ironwood Branch (QI!)
+				applyclassicphase(SOD_PHASE_SEVEN, { progressionKey = "dfc.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
 					timeline = { ADDED_1_15_6 },
-				})),
+				}) } }),
 			}),
 			n(228022, {	-- The Destructor's Wraith
 				i(228075),	-- Spear of Destiny
@@ -39,7 +40,7 @@
 				i(228087),	-- Supercharged Silver Moebius
 				i(228084),	-- Miniaturized Fire Extinguisher
 			}),
-			applyclassicphase(SOD_PHASE_FIVE, n(232632, {	-- Azgaloth <Lord of the Pit>
+			applyclassicphase(SOD_PHASE_FIVE, { progressionKey = "dfc.azgaloth", groups = { n(232632, {	-- Azgaloth <Lord of the Pit>
 				timeline = { ADDED_1_15_4 },
 				groups = {
 					i(231913),	-- Eye of the Observer
@@ -54,7 +55,7 @@
 						},
 					}),	
 				},
-			})), 
+			}) } }), 
 			n(227140, {	-- Pyranis
 				i(228090),	-- Cenarion Ritual Dagger
 				i(228092),	-- Druidic Mantle
@@ -85,6 +86,6 @@
 				}),
 			}),
 		},
-	})),
+	}) } }),
 }));
 -- #endif
```

</details>

**Control setting:** `stage: "P2.1"` in [migration.json](p2.1/migration.json). This generated comparison control shows the proposed setting; the production Parser does not yet consume it. `sources` is relative to its folder.

```diff
--- /dev/null
+++ .contrib/phase-examples/evolution/demon-fall-canyon/p2.1/migration.json
@@ -0,0 +1,13 @@
+{
+  "schema": 1,
+  "defaultStage": "P1",
+  "cohorts": [
+    {
+      "id": "comparison-fixture-demon-fall-canyon",
+      "stage": "P2.1",
+      "sources": [
+        "Demon Fall Canyon.lua"
+      ]
+    }
+  ]
+}
```

## P2.1 → P2.2 — write the timing in JSON

**Lua: unchanged** — [the P2.2 copy](p2.2/Demon%20Fall%20Canyon.lua) is identical to P2.1.

**Author edits:** [.contrib/phase-examples/schedule.json](../../schedule.json). The entries below are handwritten timing rules. Put them at `rules.demon-fall-canyon` in that file:

```json
{
  "rules": {
    "demon-fall-canyon": {
      "dfc.dungeon": {
        "sod": "unknown"
      },
      "dfc.azgaloth": {
        "sod": "vanilla.5"
      },
      "dfc.ironwood-branch": {
        "sod": "vanilla.7"
      }
    }
  }
}
```

The existing `rules` entries cover this complete source. It needs no entries in `fullSourceRules`.

`unknown` means the opening is unresolved. It never means open. An unresolved child rule affects that child’s source, while all parent requirements still apply. Retail does not read a phase schedule.

<details>
<summary>Read the complete schedule.json, including the other instances</summary>

```json
{
  "$comment": "Authoring input · P2.2, P3 and P4. Edit the release rules here, then run prepare.py. Retail uses its ordinary Lua tree.",
  "rules": {
    "blackwing-lair": {
      "$comment": "Change the raid opening on common. sameAs reuses its timing for this source. The two Nefarian loot lists stay separate.",
      "raid.bwl.common": { "default": "vanilla.3", "sod": "vanilla.5" },
      "raid.bwl.original": { "default": {"sameAs": "raid.bwl.common"}, "sod": "disabled" },
      "raid.bwl.sod20": { "sod": {"sameAs": "raid.bwl.common"} },
      "raid.bwl.draconic-for-dummies": "unknown"
    },
    "blackrock-depths": {
      "brd.dungeon": { "default": "start", "sod": "vanilla.3" },
      "brd.second-half": { "default": "start", "sod": "vanilla.4" },
      "brd.enthralled-sphere": { "sod": "vanilla.3" },
      "brd.angerforge-axe": { "sod": "vanilla.4" }
    },
    "demon-fall-canyon": {
      "dfc.dungeon": { "sod": "unknown" },
      "dfc.azgaloth": { "sod": "vanilla.5" },
      "dfc.ironwood-branch": { "sod": "vanilla.7" }
    },
    "dire-maul": {
      "dire-maul.common": { "default": "vanilla.1.dire-maul", "anniversary": "vanilla.2", "sod": "vanilla.4" },
      "dire-maul.isalien": { "default": "unknown", "anniversary": "vanilla.4" }
    },
    "temple-of-ahnqiraj": {
      "aq40.common": { "default": "unknown", "sod": "vanilla.6.raids" },
      "aq40.original": { "default": "start", "sod": "disabled" },
      "aq40.reworked": { "sod": {"sameAs": "aq40.common"} }
    },
    "gnomeregan": {
      "gnomeregan.dungeon": { "default": "start", "sod": "disabled" },
      "gnomeregan.raid10": { "sod": "vanilla.2" }
    }
  },
  "fullSourceRules": {
    "$comment": "Additional complete-source owners; unknown boundaries require independent review. These rules do not alter the compact examples.",
    "blackrock-depths": {
      "brd.sod-phase-three-additions": {"sod": "vanilla.3"},
      "brd.sod-phase-four-additions": {"sod": "vanilla.4"},
      "brd.enchants": "unknown",
      "brd.recipes": "unknown",
      "brd.dark-iron-recipes": "unknown",
      "brd.darkmoon-cards": "unknown",
      "brd.later-loot": "unknown",
      "brd.dungeon-set-2": "unknown",
      "brd.tbc-jewelcrafting": "unknown",
      "brd.dark-iron-brewer": "unknown"
    },
    "dire-maul": {
      "dire-maul.dungeon-set-2": "unknown",
      "dire-maul.recipe-quests": "unknown",
      "dire-maul.darkmoon-cards": "unknown",
      "dire-maul.later-recipes": "unknown",
      "dire-maul.sod-phase-four-additions": {"sod": "vanilla.4"},
      "dire-maul.ironwood-branch": {"sod": "vanilla.7"},
      "dire-maul.tbc-pet-training": "unknown"
    },
    "temple-of-ahnqiraj": {
      "aq40.atiesh-base": "unknown",
      "aq40.greater-scarab-coffer-key": "unknown"
    }
  },
  "calendars": {
    "progression": [
      "vanilla.1",
      "vanilla.1.dire-maul",
      "vanilla.2",
      "vanilla.3",
      "vanilla.4",
      "vanilla.5.war-effort",
      "vanilla.6"
    ],
    "era": {
      "sameAs": "progression"
    },
    "anniversary": [
      "vanilla.launch",
      "vanilla.1.raids",
      "vanilla.2",
      "vanilla.3",
      "vanilla.4",
      "vanilla.5.war-effort",
      "vanilla.6"
    ],
    "sod": [
      "vanilla.1",
      "vanilla.2",
      "vanilla.3",
      "vanilla.4",
      "vanilla.4.raids",
      "vanilla.5",
      "vanilla.6.scepter",
      "vanilla.6.war-effort",
      "vanilla.6.war-effort-end",
      "vanilla.6.war",
      "vanilla.6.raids",
      "vanilla.7"
    ]
  }
}
```

</details>

**Control change:** [P2.1](p2.1/migration.json) → [P2.2](p2.2/migration.json). The proposed migration still ships the legacy result and compares the new result separately.

```diff
--- .contrib/phase-examples/evolution/demon-fall-canyon/p2.1/migration.json
+++ .contrib/phase-examples/evolution/demon-fall-canyon/p2.2/migration.json
@@ -4,7 +4,7 @@
   "cohorts": [
     {
       "id": "comparison-fixture-demon-fall-canyon",
-      "stage": "P2.1",
+      "stage": "P2.2",
       "sources": [
         "Demon Fall Canyon.lua"
       ]
```

## P2.2 → P3 — change the stage value

**Lua: unchanged** — [the P3 copy](p3/Demon%20Fall%20Canyon.lua) still matches P2.1 and P2.2. **Timing JSON: unchanged.** Only the setting shown in the generated [migration.json](p3/migration.json) changes:

```diff
--- .contrib/phase-examples/evolution/demon-fall-canyon/p2.2/migration.json
+++ .contrib/phase-examples/evolution/demon-fall-canyon/p3/migration.json
@@ -4,7 +4,7 @@
   "cohorts": [
     {
       "id": "comparison-fixture-demon-fall-canyon",
-      "stage": "P2.2",
+      "stage": "P3",
       "sources": [
         "Demon Fall Canyon.lua"
       ]
```

This proposed stage makes the new result authoritative after the source passes its migration checks. Unknown timing still prevents promotion of the affected source. The old Lua calls remain available for the independent legacy comparison.

## P3 → P4 — select a complete source for each flavor

Only SoD selects a Lua file. The other flavors select null. The SoD file keeps the entrance quest, provider item, level requirement and every boss.

**Remove:** the old `applyclassicphase` calls and flavor/season `#if` branches. **Keep:** version branches, timelines, quests, costs, loot and other ordinary requirements. **Timing JSON: unchanged.**

**Author’s Lua change:** split the source into the selected files below. Each linked file is a complete generated comparison of the proposed final source.

### SoD

**Before:** [complete P3 Lua](p3/Demon%20Fall%20Canyon.lua). **After:** [p4/sod.lua](p4/sod.lua).

<details>
<summary>Read the complete final sod.lua</summary>

```lua
-- Generated comparison snapshot (P4): complete sod source.
-- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	{ progressionKey = "dfc.dungeon", groups = { inst(2784, {	-- Demon Fall Canyon
		lore = "Demon Fall Canyon is historically the location of the final battle between Grom Hellscream and Mannoroth as featured in Warcraft III.",
		zoneTextAreaID = 435,	-- Demon Fall Canyon
		sourceQuest = 84384,	-- Demonic Deceptions
		provider = { "i", 228172 },	-- Shadowtooth Illusion Ward
		coord = { 84.5, 75.0, ASHENVALE },
		timeline = { ADDED_1_15_3 },
		lvl = 55,
		groups = {
			n(226923, {	-- Grimroot <The Mourning Guardian>
				i(228082),	-- Warsong Axe
				i(228079),	-- Cloak of Leaves
				i(228080),	-- Resin Loop
				i(228081),	-- Germinating Poisonseed
				i(228083),	-- Gloaming Treeheart
				{ progressionKey = "dfc.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
					timeline = { ADDED_1_15_6 },
				}) } },
			}),
			n(228022, {	-- The Destructor's Wraith
				i(228075),	-- Spear of Destiny
				i(228077),	-- Dreambough
				i(228074),	-- Hands of Temptation
				i(228076),	-- Burning Ring of Fire
				i(228078),	-- Accursed Chalice
				i(18665),	-- The Eye of Shadow
			}),
			n(226922, {	-- Zilbagob
				i(228086),	-- Repurposed Shredderblade
				i(228088),	-- Shredder Operator's Dogtags
				i(228085),	-- Phaseshifted Legion Band
				i(228087),	-- Supercharged Silver Moebius
				i(228084),	-- Miniaturized Fire Extinguisher
			}),
			{ progressionKey = "dfc.azgaloth", groups = { n(232632, {	-- Azgaloth <Lord of the Pit>
				timeline = { ADDED_1_15_4 },
				groups = {
					i(231913),	-- Eye of the Observer
					i(231911),	-- Signet of the Legion General
					i(231910),	-- Heart of Azgaloth
					i(231912),	-- Blade of the Pit
					i(231460),	-- Planebreaker of Azgaloth
					i(4213, {	-- Grimoire of Doom
						classes = { WARLOCK },
						groups = {
							recipe(18540),	-- Ritual of Doom
						},
					}),	
				},
			}) } }, 
			n(227140, {	-- Pyranis
				i(228090),	-- Cenarion Ritual Dagger
				i(228092),	-- Druidic Mantle
				i(228091),	-- Thorned Boots
				i(228093),	-- Dark Heart of Darkness
				i(228089),	-- Woodcarved Moonstalker
			}),
			n(227019, {	-- Diathorus the Seeker
				i(228094),	-- Dreadlord's Blade
				i(228107),	-- Fallen Huntress' Longbow
				i(228106),	-- Shield of Life and Death
				i(228104),	-- Robes of Elune
				i(228103),	-- Nathrezim's Greaves
				i(18665),	-- The Eye of Shadow
			}),
			n(227028, {	-- Hellscream's Phantom
				i(228410),	-- Dreadblade of the Destructor
				i(228108),	-- Shadow of Gorehowl
				i(228111),	-- Mask of the Godslayer
				i(228112),	-- Nightmare Gown
				i(228109),	-- Legguards of Sacrifice
				i(228113),	-- Cold Embrace
				i(228126, {	-- Aperitive Epiphany
					classes = { PRIEST },
					groups = {
						recipe(402857),	-- Engrave Cloak - Vampiric Touch
					},
				}),
			}),
		},
	}) } },
}));
```

</details>

<details>
<summary>Show every changed Lua line: P3 → sod.lua</summary>

```diff
--- .contrib/phase-examples/evolution/demon-fall-canyon/p3/Demon Fall Canyon.lua
+++ .contrib/phase-examples/evolution/demon-fall-canyon/p4/sod.lua
@@ -1,12 +1,11 @@
--- Generated comparison snapshot (P2.1 / P2.2 / P3): complete annotated source.
+-- Generated comparison snapshot (P4): complete sod source.
 -- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
--- #if SEASON_OF_DISCOVERY
 -----------------------------------------------------
 --   D U N G E O N S  &  R A I D S  M O D U L E    --
 -----------------------------------------------------
 
 root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
-	applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dfc.dungeon", groups = { inst(2784, {	-- Demon Fall Canyon
+	{ progressionKey = "dfc.dungeon", groups = { inst(2784, {	-- Demon Fall Canyon
 		lore = "Demon Fall Canyon is historically the location of the final battle between Grom Hellscream and Mannoroth as featured in Warcraft III.",
 		zoneTextAreaID = 435,	-- Demon Fall Canyon
 		sourceQuest = 84384,	-- Demonic Deceptions
@@ -21,9 +20,9 @@
 				i(228080),	-- Resin Loop
 				i(228081),	-- Germinating Poisonseed
 				i(228083),	-- Gloaming Treeheart
-				applyclassicphase(SOD_PHASE_SEVEN, { progressionKey = "dfc.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
+				{ progressionKey = "dfc.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
 					timeline = { ADDED_1_15_6 },
-				}) } }),
+				}) } },
 			}),
 			n(228022, {	-- The Destructor's Wraith
 				i(228075),	-- Spear of Destiny
@@ -40,7 +39,7 @@
 				i(228087),	-- Supercharged Silver Moebius
 				i(228084),	-- Miniaturized Fire Extinguisher
 			}),
-			applyclassicphase(SOD_PHASE_FIVE, { progressionKey = "dfc.azgaloth", groups = { n(232632, {	-- Azgaloth <Lord of the Pit>
+			{ progressionKey = "dfc.azgaloth", groups = { n(232632, {	-- Azgaloth <Lord of the Pit>
 				timeline = { ADDED_1_15_4 },
 				groups = {
 					i(231913),	-- Eye of the Observer
@@ -55,7 +54,7 @@
 						},
 					}),	
 				},
-			}) } }), 
+			}) } }, 
 			n(227140, {	-- Pyranis
 				i(228090),	-- Cenarion Ritual Dagger
 				i(228092),	-- Druidic Mantle
@@ -86,6 +85,5 @@
 				}),
 			}),
 		},
-	}) } }),
+	}) } },
 }));
--- #endif
```

</details>

### Add the file selection

**New setting shown in:** [p4/selection.json](p4/selection.json), a generated comparison file. The proposed loader selects the source before executing Lua. `null` selects no source for that instance.

```diff
--- /dev/null
+++ .contrib/phase-examples/evolution/demon-fall-canyon/p4/selection.json
@@ -0,0 +1,18 @@
+{
+  "$comment": "Generated comparison selection; choose the complete source before Lua execution.",
+  "retail": {
+    "demon-fall-canyon": null
+  },
+  "progression:main": {
+    "demon-fall-canyon": null
+  },
+  "anniversary:main": {
+    "demon-fall-canyon": null
+  },
+  "era:main": {
+    "demon-fall-canyon": null
+  },
+  "sod:main": {
+    "demon-fall-canyon": "sod.lua"
+  }
+}
```

### Update the control’s source list

```diff
--- .contrib/phase-examples/evolution/demon-fall-canyon/p3/migration.json
+++ .contrib/phase-examples/evolution/demon-fall-canyon/p4/migration.json
@@ -4,9 +4,9 @@
   "cohorts": [
     {
       "id": "comparison-fixture-demon-fall-canyon",
-      "stage": "P3",
+      "stage": "P4",
       "sources": [
-        "Demon Fall Canyon.lua"
+        "sod.lua"
       ]
     }
   ]
```

## Key locations in the complete source

| Record or group | Key | What inherits it |
|---|---|---|
| Instance `2784` | `dfc.dungeon` | Every boss and drop in this dungeon. The precise opening remains `unknown`. |
| Azgaloth `232632` | `dfc.azgaloth` | Azgaloth and all his drops, including Eye of the Observer `231913`. |
| Grimroot’s item `235787` | `dfc.ironwood-branch` | Only this later addition; Grimroot’s existing loot keeps the dungeon rule. |

```text
inst(2784) — dfc.dungeon
├─ Grimroot
│  ├─ existing loot — inherits dfc.dungeon
│  └─ item(235787) — adds dfc.ironwood-branch
└─ Azgaloth — adds dfc.azgaloth
   └─ all his loot — inherits both parent rules
```

## Reproduce and check these files

The generator reproduces the comparison copies for this PR. Ordinary database maintenance still edits the Lua source itself; it does not require editing this Python tool. The production migration and stage switch remain proposed.

| File | Maintained by |
|---|---|
| [schedule.json](../../schedule.json) | Author: edit the timing rules here. |
| [full-source/generate.py](../full-source/generate.py) | Comparison setup: the proposed Lua edits and original-writer mappings. |
| Stage Lua, `migration.json`, `selection.json` | Generator: saved complete versions for this comparison. |
| [coverage.json](coverage.json) | Generator: all 3 original writer calls, with their source lines and replacement keys. |

From the repository root, using Lua 5.1:

```console
python .contrib/phase-examples/evolution/full-source/generate.py
python .contrib/phase-examples/evolution/full-source/verify.py --lua lua5.1
python .contrib/phase-examples/prepare.py --check
```

The checks compare P1’s raw payload with production, require identical P2.1/P2.2/P3 Lua, and read the saved P2/P4 files to compare all ordinary source tokens against P1 after selecting each branch. They also check key coverage and Lua 5.1 syntax across client versions and flavors. They do **not** execute these complete native files through the production Parser or establish an independent legacy golden.

The expanded full-file diffs contain every changed hunk; the short P2.1 view selects exact hunks from that full diff. Line endings are normalized for Markdown. `/dev/null` means the file is absent at the preceding migration step.

[Choose another instance](../README.md)
