# Demon Fall Canyon: Lua and JSON, P1 → P4

[All six instances](../README.md) · [The shared schedule](../../schedule.json)

**Maintainer comparison guide.** P1 copies unmodified production source. Later Lua and control files are generated comparisons of proposed edits; the P2/P3 controls do not install a production migration loader.

Open the dungeon, add Azgaloth later, and add a new drop on Grimroot later still. These are three distinct requirements.

**Read down:** P1 → P2.1 → P2.2 → P3 → P4. These are migration steps, not game release phases. Open the complete source and diff blocks at each step.

## P1 — read the current source alternatives

Baseline: master `195b274be460432481e33bb63bfaf9e68bfeec06`. Each saved P1 adds an identifying first line, followed by the exact bytes of the corresponding production file. No phase configuration is introduced at P1.

| Alternative | Current human-authored production source | Complete P1 copy |
|---|---|---|

| Standalone SoD | `.contrib/.db/season of discovery/dungeons & raids/Demon Fall Canyon.lua` | [sod.lua](p1/sod.lua) |



There is no standard source for this dungeon. Non-SoD selections remain `null`.

[sources.json](../full-source/sources.json) records generated verification provenance: the source commit, paths, alternatives and hashes. It is not another handwritten phase configuration.

<details>
<summary>Read the complete P1 sod.lua</summary>

```lua
-- P1 comparison: unmodified human-authored source from .contrib/.db/season of discovery/dungeons & raids/Demon Fall Canyon.lua.
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

instanceroot(2784, applyclassicphase(SOD_PHASE_FOUR, {	-- Demon Fall Canyon
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
}));
```

</details>

## P1 → P2.1 — add keys to each Lua alternative

**Author edits:** the production source above. Keep every existing legacy phase writer, ordinary requirement and acquisition route. Add a key where a rule belongs; a child inherits all ancestor rules and adds its own through **AND**. A pure `progressionKey` + `groups` envelope shares a rule without adding a visible output header.

### Standalone SoD

**Saved result:** [p2.1/sod.lua](p2.1/sod.lua), a generated comparison. The first changed lines below are exact hunks from the full diff.

```diff
--- p1/sod.lua
+++ p2.1/sod.lua
@@ -1,9 +1,11 @@
--- P1 comparison: unmodified human-authored source from .contrib/.db/season of discovery/dungeons & raids/Demon Fall Canyon.lua.
+-- P2.1 generated comparison: complete standalone SoD source.
+-- Generated by evolution/full-source/generate_sets.py.
 -----------------------------------------------------
 --   D U N G E O N S  &  R A I D S  M O D U L E    --
 -----------------------------------------------------
 
 instanceroot(2784, applyclassicphase(SOD_PHASE_FOUR, {	-- Demon Fall Canyon
+	progressionKey = "dfc.dungeon",
 	lore = "Demon Fall Canyon is historically the location of the final battle between Grom Hellscream and Mannoroth as featured in Warcraft III.",
 	zoneTextAreaID = 435,	-- Demon Fall Canyon
 	sourceQuest = 84384,	-- Demonic Deceptions
@@ -18,9 +20,9 @@
 			i(228080),	-- Resin Loop
 			i(228081),	-- Germinating Poisonseed
 			i(228083),	-- Gloaming Treeheart
-			applyclassicphase(SOD_PHASE_SEVEN, i(235787, {	-- Ancient Ironwood Branch (QI!)
+			applyclassicphase(SOD_PHASE_SEVEN, { progressionKey = "dfc.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
 				timeline = { ADDED_1_15_6 },
-			})),
+			}) } }),
 		}),
 		n(228022, {	-- The Destructor's Wraith
 			i(228075),	-- Spear of Destiny
@@ -37,7 +39,7 @@
 			i(228087),	-- Supercharged Silver Moebius
 			i(228084),	-- Miniaturized Fire Extinguisher
 		}),
-		applyclassicphase(SOD_PHASE_FIVE, n(232632, {	-- Azgaloth <Lord of the Pit>
+		applyclassicphase(SOD_PHASE_FIVE, { progressionKey = "dfc.azgaloth", groups = { n(232632, {	-- Azgaloth <Lord of the Pit>
 			timeline = { ADDED_1_15_4 },
 			groups = {
 				i(231913),	-- Eye of the Observer
```

<details>
<summary>Show every P1 → P2.1 change in sod.lua</summary>

```diff
--- p1/sod.lua
+++ p2.1/sod.lua
@@ -1,9 +1,11 @@
--- P1 comparison: unmodified human-authored source from .contrib/.db/season of discovery/dungeons & raids/Demon Fall Canyon.lua.
+-- P2.1 generated comparison: complete standalone SoD source.
+-- Generated by evolution/full-source/generate_sets.py.
 -----------------------------------------------------
 --   D U N G E O N S  &  R A I D S  M O D U L E    --
 -----------------------------------------------------
 
 instanceroot(2784, applyclassicphase(SOD_PHASE_FOUR, {	-- Demon Fall Canyon
+	progressionKey = "dfc.dungeon",
 	lore = "Demon Fall Canyon is historically the location of the final battle between Grom Hellscream and Mannoroth as featured in Warcraft III.",
 	zoneTextAreaID = 435,	-- Demon Fall Canyon
 	sourceQuest = 84384,	-- Demonic Deceptions
@@ -18,9 +20,9 @@
 			i(228080),	-- Resin Loop
 			i(228081),	-- Germinating Poisonseed
 			i(228083),	-- Gloaming Treeheart
-			applyclassicphase(SOD_PHASE_SEVEN, i(235787, {	-- Ancient Ironwood Branch (QI!)
+			applyclassicphase(SOD_PHASE_SEVEN, { progressionKey = "dfc.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
 				timeline = { ADDED_1_15_6 },
-			})),
+			}) } }),
 		}),
 		n(228022, {	-- The Destructor's Wraith
 			i(228075),	-- Spear of Destiny
@@ -37,7 +39,7 @@
 			i(228087),	-- Supercharged Silver Moebius
 			i(228084),	-- Miniaturized Fire Extinguisher
 		}),
-		applyclassicphase(SOD_PHASE_FIVE, n(232632, {	-- Azgaloth <Lord of the Pit>
+		applyclassicphase(SOD_PHASE_FIVE, { progressionKey = "dfc.azgaloth", groups = { n(232632, {	-- Azgaloth <Lord of the Pit>
 			timeline = { ADDED_1_15_4 },
 			groups = {
 				i(231913),	-- Eye of the Observer
@@ -52,7 +54,7 @@
 					},
 				}),	
 			},
-		})), 
+		}) } }), 
 		n(227140, {	-- Pyranis
 			i(228090),	-- Cenarion Ritual Dagger
 			i(228092),	-- Druidic Mantle
```

</details>

**Proposed control:** [p2.1/sod.migration.json](p2.1/sod.migration.json). It names only this alternative; `sources` is relative to the control file. Do not combine the alternative controls into one input build.

```json
{
  "$comment": "Generated proposed comparison control; select only this source alternative.",
  "schema": 1,
  "defaultStage": "P1",
  "cohorts": [
    {
      "id": "comparison-fixture-demon-fall-canyon",
      "stage": "P2.1",
      "sources": [
        "sod.lua"
      ]
    }
  ]
}
```

## P2.1 → P2.2 — write timing in JSON

**Lua body: unchanged** — [sod.lua](p2.2/sod.lua). The identification comment names the new stage. **Author edits:** [schedule.json](../../schedule.json). Put these entries at the named locations in that one handwritten file:

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

`rules` is shared with the smaller runnable examples; `fullSourceRules` covers additional complete-source owners where present. `unknown` remains unresolved and blocks promotion of the affected source. Retail reads no phase schedule.

<details>
<summary>Read the complete handwritten schedule.json</summary>

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

**Proposed control change:** P2.1 → P2.2. Legacy output remains authoritative while the new rule result is compared separately.

```diff
--- p2.1/sod.migration.json
+++ p2.2/sod.migration.json
@@ -5,7 +5,7 @@
   "cohorts": [
     {
       "id": "comparison-fixture-demon-fall-canyon",
-      "stage": "P2.1",
+      "stage": "P2.2",
       "sources": [
         "sod.lua"
       ]
```

## P2.2 → P3 — change the proposed stage

**Lua body and timing JSON: unchanged.** The [P3 directory](p3/) contains the same annotated source alternatives. Change only each alternative’s stage in its generated comparison control:

```diff
--- p2.2/sod.migration.json
+++ p3/sod.migration.json
@@ -5,7 +5,7 @@
   "cohorts": [
     {
       "id": "comparison-fixture-demon-fall-canyon",
-      "stage": "P2.2",
+      "stage": "P3",
       "sources": [
         "sod.lua"
       ]
```

This proposed switch makes the policy result authoritative after the source passes its migration checks. The unchanged old phase calls remain for an independent legacy comparison. These control files demonstrate the intended switch; they do not establish production promotion.

## P3 → P4 — select one complete source per flavor

**Timing JSON: unchanged.** Remove the old phase writers and any remaining flavor guards from the selected alternative. Keep ordinary version guards, timelines, quests, costs, providers and all acquisition routes. The standard and standalone SoD sources remain separate.

### SoD

**Before:** [p3/sod.lua](p3/sod.lua). **After:** [p4/sod.lua](p4/sod.lua), the complete generated comparison for this flavor.

<details>
<summary>Read the complete final sod.lua</summary>

```lua
-- P4 generated comparison: complete standalone SoD source.
-- Generated by evolution/full-source/generate_sets.py.
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

instanceroot(2784, {	-- Demon Fall Canyon
	progressionKey = "dfc.dungeon",
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
});
```

</details>

<details>
<summary>Show every P3 sod → P4 sod change</summary>

```diff
--- p3/sod.lua
+++ p4/sod.lua
@@ -1,10 +1,10 @@
--- P3 generated comparison: complete standalone SoD source.
+-- P4 generated comparison: complete standalone SoD source.
 -- Generated by evolution/full-source/generate_sets.py.
 -----------------------------------------------------
 --   D U N G E O N S  &  R A I D S  M O D U L E    --
 -----------------------------------------------------
 
-instanceroot(2784, applyclassicphase(SOD_PHASE_FOUR, {	-- Demon Fall Canyon
+instanceroot(2784, {	-- Demon Fall Canyon
 	progressionKey = "dfc.dungeon",
 	lore = "Demon Fall Canyon is historically the location of the final battle between Grom Hellscream and Mannoroth as featured in Warcraft III.",
 	zoneTextAreaID = 435,	-- Demon Fall Canyon
@@ -20,9 +20,9 @@
 			i(228080),	-- Resin Loop
 			i(228081),	-- Germinating Poisonseed
 			i(228083),	-- Gloaming Treeheart
-			applyclassicphase(SOD_PHASE_SEVEN, { progressionKey = "dfc.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
+			{ progressionKey = "dfc.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
 				timeline = { ADDED_1_15_6 },
-			}) } }),
+			}) } },
 		}),
 		n(228022, {	-- The Destructor's Wraith
 			i(228075),	-- Spear of Destiny
@@ -39,7 +39,7 @@
 			i(228087),	-- Supercharged Silver Moebius
 			i(228084),	-- Miniaturized Fire Extinguisher
 		}),
-		applyclassicphase(SOD_PHASE_FIVE, { progressionKey = "dfc.azgaloth", groups = { n(232632, {	-- Azgaloth <Lord of the Pit>
+		{ progressionKey = "dfc.azgaloth", groups = { n(232632, {	-- Azgaloth <Lord of the Pit>
 			timeline = { ADDED_1_15_4 },
 			groups = {
 				i(231913),	-- Eye of the Observer
@@ -54,7 +54,7 @@
 					},
 				}),	
 			},
-		}) } }), 
+		}) } }, 
 		n(227140, {	-- Pyranis
 			i(228090),	-- Cenarion Ritual Dagger
 			i(228092),	-- Druidic Mantle
@@ -85,4 +85,4 @@
 			}),
 		}),
 	},
-}));
+});
```

</details>

### Select the source before Lua execution

**Generated comparison:** [p4/selection.json](p4/selection.json). Each value is one file path, or `null` when the source is absent. This does not load the standard source underneath the SoD source.

```json
{
  "$comment": "Generated comparison selection; choose the complete source before Lua execution.",
  "retail": {
    "demon-fall-canyon": null
  },
  "progression:main": {
    "demon-fall-canyon": null
  },
  "anniversary:main": {
    "demon-fall-canyon": null
  },
  "era:main": {
    "demon-fall-canyon": null
  },
  "sod:main": {
    "demon-fall-canyon": "sod.lua"
  }
}
```

The P4 migration control lists the available candidates; the selection above chooses which one enters a build. Here is the complete proposed [p4/migration.json](p4/migration.json):

```json
{
  "$comment": "Generated proposed comparison control; select one P4 source with selection.json.",
  "schema": 1,
  "defaultStage": "P1",
  "cohorts": [
    {
      "id": "comparison-fixture-demon-fall-canyon",
      "stage": "P4",
      "sources": [
        "sod.lua"
      ]
    }
  ]
}
```

## Key locations in the complete sources

| Record or group | Key | What inherits it |
|---|---|---|
| Instance `2784` | `dfc.dungeon` | Every boss and drop in this dungeon. The precise opening remains `unknown`. |
| Azgaloth `232632` | `dfc.azgaloth` | Azgaloth and all his drops, including Eye of the Observer `231913`. |
| Grimroot’s item `235787` | `dfc.ironwood-branch` | Only this later addition; Grimroot’s existing loot keeps the dungeon rule. |

```text
SoD instanceroot(2784) — dfc.dungeon
├─ Grimroot
│  ├─ existing loot — inherits dfc.dungeon
│  └─ item(235787) — adds dfc.ironwood-branch
└─ Azgaloth — adds dfc.azgaloth
   └─ all his loot — inherits both parent rules
```

## Reproduce and check the comparison

Authors change production Lua and the shared schedule. The comparison tools generate these saved alternatives, controls, provenance and coverage files. Their role is identified at the top of each file.

```console
python .contrib/phase-examples/evolution/full-source/source_sets.py --check
python .contrib/phase-examples/evolution/full-source/generate.py --check
python .contrib/phase-examples/evolution/full-source/verify.py --lua lua5.1
python .contrib/phase-examples/prepare.py --check
```

[coverage.json](coverage.json) maps every legacy writer to its original source alternative, owner and proposed key. The checks compare P1 bytes with production and compare actual saved P2/P4 ordinary source tokens after flavor/version selection. They also check source selection, route multiplicity and Lua 5.1 syntax. These static checks do not execute every complete native file through the production Parser or supply an independent production legacy golden.

The full diff blocks include every changed hunk. Markdown normalizes line endings for display; the source checks retain exact P1 byte provenance.

[Choose another instance](../README.md)
