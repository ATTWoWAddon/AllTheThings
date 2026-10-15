# ATT English audit: standard and Forever data

Date: 2026-10-15 (Asia/Taipei). Changed 154 files, 243 lines. Changes remain local; no push, merge, or pull request was performed.

## Scope and coverage

Reviewed paths: `.contrib/.db/standard/` and `.contrib/.db/forever/`. Initial visible inventory: 2,161 files (2,019 Lua, 133 text, 4 CSV, 2 JSON, 3 Python). The complete tracked inventory including hidden configuration contains 2,210 maintained text sources (2,119,381 lines) plus 477 imported client extracts. The repository scan covered the complete maintained source set; this data-specific codespell 2.4.3 pass produced 3,409 candidates after excluding imported CSV/JSON, generated item exports and missing-data inventories. Repeated typo-pattern searches and contextual review narrowed these to definite corrections. This is an automated candidate scan with contextual review of selected prose, not a claim that every sentence or every WoW fact has been verified.

Imported .wago CSVs, generated ItemDB data, missing-data exports, IDs, logic, keys, directives and non-English translations were not edited. Archived zzOLD copies received matching prose corrections and are explicitly labeled inactive. All original line-ending counts were preserved.

## Flavor basis

The compilation-scope field describes inclusion by the existing local preprocessor guards under the seven explicit standard configs: Retail, Classic Era, Season of Discovery, TBC, Wrath, Cataclysm, and Mists. Standard source is shared: expansion folder names alone do not determine a client flavor, and runtime timeline metadata remains authoritative for availability. Forever has its separate root and Camelot output. Future Classic expansion configuration files also exist; this report does not claim those are currently shipped clients.

- Retail: `DataPhase=MID`, configured build `12.1.5.70391`.
- Classic Era: `DataPhase=CLASSIC`, configured build `1.15.9.70003`.
- Season of Discovery: `DataPhase=SEASON_OF_DISCOVERY`, configured build `1.15.9.70003`.
- TBC Classic: `DataPhase=TBC`, configured build `2.5.6.70006`.
- Wrath Classic: `DataPhase=WRATH`, configured build `3.4.5.63697`.
- Cataclysm Classic: `DataPhase=CATA`, configured build `4.4.5.55261`.
- Mists Classic: `DataPhase=MOP`, configured build `5.5.4.69934`.

## Evidence policy

Each named WoW correction below has **2 independent sources**: Wowhead and Warcraft Wiki. Wowhead web pages and the `nether.wowhead.com/tooltip` transport are one provider, not two sources. Warcraft Wiki full indexed pages were readable via web search; direct opens sometimes returned 403. The 25 exact Wowhead tooltip responses are retained in `wowhead-evidence.json`. No screenshot, in-game observation, human verification, client test or live build observation is claimed.

Pure spelling/grammar changes have **0 independent WoW sources** and are explicitly editorial. Their rationale is the listed English correction; existing gameplay claims inside the surrounding text have not been revalidated. The spell candidate dictionary is codespell 2.4.3; false positives were reviewed rather than auto-applied.

Wago live DB2 page fetching failed through the browsing tool. Version-pinned repository extracts were read only as supplemental context, not counted as a second spelling source. In particular, `.contrib/.db/standard/.config/.wago/12 - Midnight/Criteria.12.1.5.70391.csv` maps criteria 36609 to quest 46769 (`Type=27, Asset=46769`), corroborating the record linkage for Relieved of Their Valuables.

## Preserved official spellings and unverified candidates

- Retail quests 51548 / 50587: **Nagative Feedback** is the exact name returned by Wowhead (1 source). Preserved; no inferred correction to Negative.
- Classic Era item 7339: **Miniscule Diamond Ring** is the exact Wowhead name (1 source). Preserved.
- Retail items 61051 / 57287: **Guerilla Breastplate** / **Gauntlets of Guerilla Fury** are exact Wowhead names (1 source). Preserved.
- Retail NPC 48366: **Russell Brower** is exact Wowhead name (1 source). Preserved; Brower is not a typo for Browser.
- NPC 17072: Warcraft Wiki explicitly documents **Emmisary Gormok** as the original/Classic Era spelling, while Retail Wowhead says **Emissary Gormok**. Mixed-flavor comments were preserved to avoid applying Retail spelling to Classic. Sources: https://warcraft.wiki.gg/wiki/Emissary_Gormok and https://www.wowhead.com/npc=17072.
- Forever quest 92516: Wowhead dataEnv=16 says **Hippogryph Harassment**; quest 96408 says **A Visitor to Dun Morogh**; item 274749 says **Souvenir Sea Shell**; item 280797 says **Rabbit Crate (Arctic)**. These remain candidates: only 1 independent source obtained, and the pet label can intentionally differ from the container item name.
- Literal puzzle quotations containing `achievments`, `woudl`, or `successul` were preserved until the original in-game text is independently corroborated.
- `.contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/1 - Ironforge.lua:1217`: `-- #if BEOFRE MOP` appears to be a preprocessor typo. Preserved because changing it affects data inclusion/logic and requires a separately reviewed fix.
- Boulderfist Orges in Forever Arathi lore was corrected to Boulderfist ogres after independent Wowhead Classic NPC 2562 and Warcraft Wiki clan evidence; this verifies the old-world group spelling only, not Forever-specific mechanics.
- Other dictionary candidates such as Revered, Ore, Sting, Rime, Mane, Covert, Fallow, Singed, Discreet, curios, Creche and proper NPC/item names are not accepted as spelling errors on dictionary output alone.

## Flavor clarification

`verified_flavor=Retail` identifies names checked against Retail Wowhead and corroborated by Warcraft Wiki. The Boulderfist lore correction is separately marked Classic Era counterpart evidence, which supports the old-world group spelling only and makes no Forever mechanics claim. `content_context` identifies the expansion/world context; `compilation_scope` separately lists eligible standard preprocessor targets. A broad compile-target list does not assert that BfA/Shadowlands/TWW content is available on Classic Era, TBC, Wrath, Cataclysm or Mists. Inherited timelines and parent conditions were not fully evaluated. Forever/zzOLD is archived copied material and not a claim of playable Forever availability.




## Exact changes

### .contrib/.db/forever/world drops/world drops.lua:4366

- Flavor: Forever source root; editorial correction only
- Verified flavor: not claimed for editorial correction
- Content context: Forever source tree; Classic-world content
- Compilation scope: Forever (Camelot; 1.60.1.69893 config; 1.60.1.70338 Wago extract)
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Northen -> Northern
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				{ 47.1, 42.0, MAP.TANARIS },	-- Northen Abyssal Sands
+ 				{ 47.1, 42.0, MAP.TANARIS },	-- Northern Abyssal Sands
```

### .contrib/.db/forever/world drops/world drops.lua:4473

- Flavor: Forever source root; editorial correction only
- Verified flavor: not claimed for editorial correction
- Content context: Forever source tree; Classic-world content
- Compilation scope: Forever (Camelot; 1.60.1.69893 config; 1.60.1.70338 Wago extract)
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Northen -> Northern
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				{ 47.1, 42.0, MAP.TANARIS },	-- Northen Abyssal Sands
+ 				{ 47.1, 42.0, MAP.TANARIS },	-- Northern Abyssal Sands
```

### .contrib/.db/forever/zones/eastern kingdoms/.metadata.lua:6

- Flavor: Forever source root; editorial correction only
- Verified flavor: not claimed for editorial correction
- Content context: Forever source tree; Classic-world content
- Compilation scope: Forever (Camelot; 1.60.1.69893 config; 1.60.1.70338 Wago extract)
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: The Eastern Kingdoms is made up from -> The Eastern Kingdoms are made up of
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 	lore = "The Eastern Kingdoms are the eastern continents on the world of Azeroth. The Eastern Kingdoms is made up from a group of smaller continents (Azeroth, Khaz Modan and Lordaeron) formed from the original continent of Kalimdor following the Great Sundering. The Eastern Kingdoms lie to the east of the Great Sea and to the west of the Forbidding Sea. The central part of the Eastern Kingdoms is dominated by the Khaz Mountains and the Redridge Mountains. Both cover several zones.",
+ 	lore = "The Eastern Kingdoms are the eastern continents on the world of Azeroth. The Eastern Kingdoms are made up of a group of smaller continents (Azeroth, Khaz Modan and Lordaeron) formed from the original continent of Kalimdor following the Great Sundering. The Eastern Kingdoms lie to the east of the Great Sea and to the west of the Forbidding Sea. The central part of the Eastern Kingdoms is dominated by the Khaz Mountains and the Redridge Mountains. Both cover several zones.",
```

### .contrib/.db/forever/zones/eastern kingdoms/arathi highlands.lua:6

- Flavor: Forever source lore; Classic Era counterpart corroborates only the Boulderfist group spelling
- Verified flavor: Classic Era counterpart (name/group spelling only; not Forever mechanics)
- Content context: Old-world Arathi Highlands lore in Forever source
- Compilation scope: Forever (Camelot; 1.60.1.69893 config; 1.60.1.70338 Wago extract)
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Hammerfall, which houses bases -> Hammerfall, which house bases; Boulderfist Orges -> Boulderfist ogres; old-world clan spelling corroborated by Classic counterpart and Warcraft Wiki, without a Forever mechanics inference
- Source: https://www.wowhead.com/classic/npc=2562/boulderfist-ogre; https://warcraft.wiki.gg/wiki/Boulderfist_clan

```lua
- 	lore = "The Arathi Highlands are located in southeastern Lordaeron, east of Hillsbrad Foothills and south of the Hinterlands. It is a flat but craggy region that has traditionally been the home of the humans of Arathor, who gave the region its name. The main hubs of activity are now Refuge Pointe and Hammerfall, which houses bases for Alliance and Horde, respectively. The large city of Stromgarde lies in ruins to the southwest, and pockets of Syndicate resistance dot the land. The Boulderfist Orges also infest Arathor, and prove to be a constant threat to the Alliance, Horde, and Syndicate factions vying for supremacy.",
+ 	lore = "The Arathi Highlands are located in southeastern Lordaeron, east of Hillsbrad Foothills and south of the Hinterlands. It is a flat but craggy region that has traditionally been the home of the humans of Arathor, who gave the region its name. The main hubs of activity are now Refuge Pointe and Hammerfall, which house bases for Alliance and Horde, respectively. The large city of Stromgarde lies in ruins to the southwest, and pockets of Syndicate resistance dot the land. The Boulderfist ogres also infest Arathor, and prove to be a constant threat to the Alliance, Horde, and Syndicate factions vying for supremacy.",
```

### .contrib/.db/forever/zones/eastern kingdoms/dun morogh.lua:1294

- Flavor: Forever source root; editorial correction only
- Verified flavor: not claimed for editorial correction
- Content context: Forever source tree; Classic-world content
- Compilation scope: Forever (Camelot; 1.60.1.69893 config; 1.60.1.70338 Wago extract)
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: propably -> probably; All yearly quests resets -> All yearly quests reset
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				-- Danny Donkey: Molkree says this quest propably got added by mistake to a list of quests to be marked as incomplete on a yearly basis. All yearly quests resets 15/01.
+ 				-- Danny Donkey: Molkree says this quest probably got added by mistake to a list of quests to be marked as incomplete on a yearly basis. All yearly quests reset 15/01.
```

### .contrib/.db/forever/zones/eastern kingdoms/westfall.lua:146

- Flavor: Forever source root; editorial correction only
- Verified flavor: not claimed for editorial correction
- Content context: Forever source tree; Classic-world content
- Compilation scope: Forever (Camelot; 1.60.1.69893 config; 1.60.1.70338 Wago extract)
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: targetted -> targeted
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				description = "Simply target any Chicken and spam |cFFFFD700/chicken|r at it until it emotes at you. This will take about 100 emotes. (make a macro!)\n\nOnce it does, type /cheer with it targetted.\n\nThe Chicken will never turn friendly for a Horde player, even if they get the emote.",
+ 				description = "Simply target any Chicken and spam |cFFFFD700/chicken|r at it until it emotes at you. This will take about 100 emotes. (make a macro!)\n\nOnce it does, type /cheer with it targeted.\n\nThe Chicken will never turn friendly for a Horde player, even if they get the emote.",
```

### .contrib/.db/forever/zzOLD/01 - Dungeons Raids/01 - Classic/2.6 Temple of Ahn'Qiraj.lua:2374

- Flavor: Archived copied material under Forever/zzOLD; no playable Forever availability claim
- Verified flavor: not claimed for editorial correction
- Content context: Archived copied material; original expansion/client applicability is not asserted as playable Forever
- Compilation scope: Forever archive zzOLD (Lua long comment; no active gameplay output); local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: varient -> variant; bonus loot chests & and -> bonus loot chests, and
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "Descent into Madness!\n\nWhen players enter Ahn'Qiraj (both Ruins and Temple), and arrive at the first boss, they will see an obelisk. By interacting with the obelisk (deactivating it), they add additional mechanics to the raid, and the raid will have a finite number of attempts to defeat the next 3 bosses. Each boss has an individual obelisk that must be deactivated to continue. Doing so will give you bonus loot chests & and you also receive a Void-Touched Emblem which turns Temple of Ahn'Qiraj Weapons into a 'Voidtouched' varient of the weapon. They have a neat void appearance despite providing no difference in quality. (Cosmetic only!)",
+ 					["description"] = "Descent into Madness!\n\nWhen players enter Ahn'Qiraj (both Ruins and Temple), and arrive at the first boss, they will see an obelisk. By interacting with the obelisk (deactivating it), they add additional mechanics to the raid, and the raid will have a finite number of attempts to defeat the next 3 bosses. Each boss has an individual obelisk that must be deactivated to continue. Doing so will give you bonus loot chests, and you also receive a Void-Touched Emblem which turns Temple of Ahn'Qiraj Weapons into a 'Voidtouched' variant of the weapon. They have a neat void appearance despite providing no difference in quality. (Cosmetic only!)",
```

### .contrib/.db/forever/zzOLD/01 - Dungeons Raids/01 - Classic/Scholomance.lua:1211

- Flavor: Archived copied material under Forever/zzOLD; no playable Forever availability claim
- Verified flavor: not claimed for editorial correction
- Content context: Archived copied material; original expansion/client applicability is not asserted as playable Forever
- Compilation scope: Forever archive zzOLD (Lua long comment; no active gameplay output)
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: cant -> can't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 	-- To get the summon item again, you would have to abandon the quest and pick it up again, which you cant.	-- Gold 02/08/2023 (EU)
+ 	-- To get the summon item again, you would have to abandon the quest and pick it up again, which you can't.	-- Gold 02/08/2023 (EU)
```

### .contrib/.db/forever/zzOLD/01 - Dungeons Raids/01 - Classic/The Temple of Atal'hakkar.lua:1439

- Flavor: Archived copied material under Forever/zzOLD; no playable Forever availability claim
- Verified flavor: not claimed for editorial correction
- Content context: Archived copied material; original expansion/client applicability is not asserted as playable Forever
- Compilation scope: Forever archive zzOLD (Lua long comment; no active gameplay output); local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Interruptable -> Interruptible
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 								["description"] = "Demoralizing Shout - Interruptable AoE debuff which reduces player's attack power by 40.",
+ 								["description"] = "Demoralizing Shout - Interruptible AoE debuff which reduces player's attack power by 40.",
```

### .contrib/.db/forever/zzOLD/01 - Dungeons Raids/01 - Classic/The Temple of Atal'hakkar.lua:1442

- Flavor: Archived copied material under Forever/zzOLD; no playable Forever availability claim
- Verified flavor: not claimed for editorial correction
- Content context: Archived copied material; original expansion/client applicability is not asserted as playable Forever
- Compilation scope: Forever archive zzOLD (Lua long comment; no active gameplay output); local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Interruptable -> Interruptible
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 								["description"] = "|cffff0000Mijan's Atal'ai Serpent Totems|r should be interrupted and killed asap in order to minimize damage taken. These can deal a fair bit of damage if they happen to focus the same player.\n\nRenew - Interruptable self heal ability, make sure to have someone focused on kicking this to increase kill time.\n\nThorns - Dispellable self thorns buff, should be removed to minimize melee players' damage taken.",
+ 								["description"] = "|cffff0000Mijan's Atal'ai Serpent Totems|r should be interrupted and killed asap in order to minimize damage taken. These can deal a fair bit of damage if they happen to focus the same player.\n\nRenew - Interruptible self heal ability, make sure to have someone focused on kicking this to increase kill time.\n\nThorns - Dispellable self thorns buff, should be removed to minimize melee players' damage taken.",
```

### .contrib/.db/forever/zzOLD/01 - Dungeons Raids/01 - Classic/The Temple of Atal'hakkar.lua:1513

- Flavor: Archived copied material under Forever/zzOLD; no playable Forever availability claim
- Verified flavor: not claimed for editorial correction
- Content context: Archived copied material; original expansion/client applicability is not asserted as playable Forever
- Compilation scope: Forever archive zzOLD (Lua long comment; no active gameplay output); local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Interupt -> Interrupt; interupt -> interrupt; interupted -> interrupted; Dispell Lethargic Poison -> Dispel Lethargic Poison; jump into the pool and to get afflicted -> jump into the pool to get afflicted
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "The boss casts Corrosive Breath and has a tail sweep. Tanks should swap after each breath.\n\nDispell Lethargic Poison. Interupt Bellowing Roar!\n\nWhen the boss casts Deep Slumber, you'll want everyone to stack close to the boss so that when the boss casts Waking Nightmare, everyone can jump into the pool and to get afflicted and then move out asap to avoid getting CC'd again.\n\nAt 70%, the boss will summon two Lumbering Dreamwalkers. Kill them and interupt their Deep Slumber casts. Kill any whelplings that spawn.\n\nAt 40%, he'll repeat this and then summon two Nightmare Scalebanes. These cast Acid Rain that can be interupted, so the raid should spread out to avoid this.",
+ 						["description"] = "The boss casts Corrosive Breath and has a tail sweep. Tanks should swap after each breath.\n\nDispel Lethargic Poison. Interrupt Bellowing Roar!\n\nWhen the boss casts Deep Slumber, you'll want everyone to stack close to the boss so that when the boss casts Waking Nightmare, everyone can jump into the pool to get afflicted and then move out asap to avoid getting CC'd again.\n\nAt 70%, the boss will summon two Lumbering Dreamwalkers. Kill them and interrupt their Deep Slumber casts. Kill any whelplings that spawn.\n\nAt 40%, he'll repeat this and then summon two Nightmare Scalebanes. These cast Acid Rain that can be interrupted, so the raid should spread out to avoid this.",
```

### .contrib/.db/forever/zzOLD/01 - Dungeons Raids/01 - Classic/The Temple of Atal'hakkar.lua:1532

- Flavor: Archived copied material under Forever/zzOLD; no playable Forever availability claim
- Verified flavor: not claimed for editorial correction
- Content context: Archived copied material; original expansion/client applicability is not asserted as playable Forever
- Compilation scope: Forever archive zzOLD (Lua long comment; no active gameplay output); local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: ocasionally -> occasionally
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "Have all the ranged stacked and then kill the four Atal'ai Ritualists.\n\nOnce Hakkari Bloodkeeper casts Bubbling Blood, move out of it. He'll ocasionally cast Spirit Chains, move out of the group before getting dispelled. (it will spread otherwise) Frightsome Howl should be dispelled immediately.\n\nAfter 33 seconds the Bloodkeeper will resurrect Hakkar and pass on some of the damage dealt to him during that time.\n\nDecurse Curse of Tongues, and dispel the Insanity mind control that'll happen once in a while.\n\nThe boss will occasionally cast Corrupted Blood, afflicted players should move out of the raid as fast as they can, and move to the front of the boss (away from the tank) to then get hit by Drain Blood. This will dispel the debuff. Move back afterwards and then kill the boss.",
+ 						["description"] = "Have all the ranged stacked and then kill the four Atal'ai Ritualists.\n\nOnce Hakkari Bloodkeeper casts Bubbling Blood, move out of it. He'll occasionally cast Spirit Chains, move out of the group before getting dispelled. (it will spread otherwise) Frightsome Howl should be dispelled immediately.\n\nAfter 33 seconds the Bloodkeeper will resurrect Hakkar and pass on some of the damage dealt to him during that time.\n\nDecurse Curse of Tongues, and dispel the Insanity mind control that'll happen once in a while.\n\nThe boss will occasionally cast Corrupted Blood, afflicted players should move out of the raid as fast as they can, and move to the front of the boss (away from the tank) to then get hit by Drain Blood. This will dispel the debuff. Move back afterwards and then kill the boss.",
```

### .contrib/.db/forever/zzOLD/02 - Outdoor Zones/01 Kalimdor/Felwood.lua:1255

- Flavor: Archived copied material under Forever/zzOLD; no playable Forever availability claim
- Verified flavor: not claimed for editorial correction
- Content context: Archived copied material; original expansion/client applicability is not asserted as playable Forever
- Compilation scope: Forever archive zzOLD (Lua long comment; no active gameplay output)
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: commmonly -> commonly
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "Drops commmonly from all Deadwood furbolgs, and can be turned in to the NPCs named Grazle and Nafien for Timbermaw Hold reputation. Each turn in requires 5 Deadwood Headdress Feathers. Grazle can be found in the southmost part of the zone, in the Emerald Sanctuary. Nafien can be found in the northernmost part of the zone, by the entrance to Timbermaw Hold.",
+ 				["description"] = "Drops commonly from all Deadwood furbolgs, and can be turned in to the NPCs named Grazle and Nafien for Timbermaw Hold reputation. Each turn in requires 5 Deadwood Headdress Feathers. Grazle can be found in the southmost part of the zone, in the Emerald Sanctuary. Nafien can be found in the northernmost part of the zone, by the entrance to Timbermaw Hold.",
```

### .contrib/.db/forever/zzOLD/02 - Outdoor Zones/01 Kalimdor/Winterspring.lua:1093

- Flavor: Archived copied material under Forever/zzOLD; no playable Forever availability claim
- Verified flavor: not claimed for editorial correction
- Content context: Archived copied material; original expansion/client applicability is not asserted as playable Forever
- Compilation scope: Forever archive zzOLD (Lua long comment; no active gameplay output)
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: commmonly -> commonly
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					"Drops commmonly from all Winterfall furbolgs, and can be turned in to the NPC named Salfa for Timbermaw Hold reputation. Each turn in requires 5 Winterfall Spirit Beads. Salfa can be found in the westernmost part of the zone, by the entrance to Timbermaw Hold.",
+ 					"Drops commonly from all Winterfall furbolgs, and can be turned in to the NPC named Salfa for Timbermaw Hold reputation. Each turn in requires 5 Winterfall Spirit Beads. Salfa can be found in the westernmost part of the zone, by the entrance to Timbermaw Hold.",
```

### .contrib/.db/standard/00 - Profession DB/Mining.lua:89

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Unkown -> Unknown
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- i(0, 49253);		-- Unkown
+ i(0, 49253);		-- Unknown
```

### .contrib/.db/standard/00 - Profession DB/Mining.lua:90

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Unkown -> Unknown
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- i(0, 49254);		-- Unkown
+ i(0, 49254);		-- Unknown
```

### .contrib/.db/standard/00 - Profession DB/Mining.lua:91

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Unkown -> Unknown
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- i(0, 49255);		-- Unkown
+ i(0, 49255);		-- Unknown
```

### .contrib/.db/standard/00 - Profession DB/Mining.lua:92

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Unkown -> Unknown
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- i(0, 49260);		-- Unkown
+ i(0, 49260);		-- Unknown
```

### .contrib/.db/standard/00 - Profession DB/Mining.lua:93

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Unkown -> Unknown
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- i(0, 53417);		-- Unkown
+ i(0, 53417);		-- Unknown
```

### .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/1.0 Molten Core.lua:1677

- Flavor: Shared standard source; editorial correction only; content context: Classic world / flavor-specific extensions
- Verified flavor: not claimed for editorial correction
- Content context: Classic world / flavor-specific extensions
- Compilation scope: standard compile targets: Season of Discovery; runtime timelines unchanged; local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: varients -> variants
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "You can opt into Heat Level 3 by speaking to Duke Hydraxis. Doing so will drop 'Molten' varients of the weapons that have a neat molten appearance despite providing no difference in quality. (Cosmetic only!)",
+ 					["description"] = "You can opt into Heat Level 3 by speaking to Duke Hydraxis. Doing so will drop 'Molten' variants of the weapons that have a neat molten appearance despite providing no difference in quality. (Cosmetic only!)",
```

### .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/2.6 Temple of Ahn'Qiraj.lua:2380

- Flavor: Shared standard source; editorial correction only; content context: Classic world / flavor-specific extensions
- Verified flavor: not claimed for editorial correction
- Content context: Classic world / flavor-specific extensions
- Compilation scope: standard compile targets: Season of Discovery; runtime timelines unchanged; local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: varient -> variant; bonus loot chests & and -> bonus loot chests, and
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "Descent into Madness!\n\nWhen players enter Ahn'Qiraj (both Ruins and Temple), and arrive at the first boss, they will see an obelisk. By interacting with the obelisk (deactivating it), they add additional mechanics to the raid, and the raid will have a finite number of attempts to defeat the next 3 bosses. Each boss has an individual obelisk that must be deactivated to continue. Doing so will give you bonus loot chests & and you also receive a Void-Touched Emblem which turns Temple of Ahn'Qiraj Weapons into a 'Voidtouched' varient of the weapon. They have a neat void appearance despite providing no difference in quality. (Cosmetic only!)",
+ 					["description"] = "Descent into Madness!\n\nWhen players enter Ahn'Qiraj (both Ruins and Temple), and arrive at the first boss, they will see an obelisk. By interacting with the obelisk (deactivating it), they add additional mechanics to the raid, and the raid will have a finite number of attempts to defeat the next 3 bosses. Each boss has an individual obelisk that must be deactivated to continue. Doing so will give you bonus loot chests, and you also receive a Void-Touched Emblem which turns Temple of Ahn'Qiraj Weapons into a 'Voidtouched' variant of the weapon. They have a neat void appearance despite providing no difference in quality. (Cosmetic only!)",
```

### .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Blackfathom Deeps.lua:1012

- Flavor: Shared standard source; editorial correction only; content context: Classic world / flavor-specific extensions
- Verified flavor: not claimed for editorial correction
- Content context: Classic world / flavor-specific extensions
- Compilation scope: standard compile targets: Season of Discovery; runtime timelines unchanged; local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: targetted -> targeted
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "Lady Sarevess is accompanied by a tanky Blackfathom Elite that needs to be off-tanked. The main mechanic players must deal with is Freezing Arrow, in which a player is randomly targetted by an arrow that leaves a frost patch that the off-tank can move the Blackfathom Elite to stun it for a short duration. In addition to this, spread out to not chain Forked Lightning damage!",
+ 						["description"] = "Lady Sarevess is accompanied by a tanky Blackfathom Elite that needs to be off-tanked. The main mechanic players must deal with is Freezing Arrow, in which a player is randomly targeted by an arrow that leaves a frost patch that the off-tank can move the Blackfathom Elite to stun it for a short duration. In addition to this, spread out to not chain Forked Lightning damage!",
```

### .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Gnomeregan.lua:1693

- Flavor: Shared standard source; editorial correction only; content context: Classic world / flavor-specific extensions
- Verified flavor: not claimed for editorial correction
- Content context: Classic world / flavor-specific extensions
- Compilation scope: standard compile targets: Season of Discovery; runtime timelines unchanged; local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: ocasionally -> occasionally; spawn in bombs if different types -> spawn bombs of different types; the red button to on their right side -> the red button on their right side; it'll causes -> it'll cause; gets casted -> is cast; since the none -> since none; will be major concern -> will be a major concern
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "This fight requires two tanks, as each phase has a different forced tank swap mechanic.\n\nThroughout the fight, the six pillars around the boss arena will ocasionally activate and spawn in bombs if different types depending on the current phase. These pillars must be turned off by clicking the red button to on their right side.\n\nDuring the first phase, the fire boss will be stacking Sprocketfire on the tank, via either Sprocketfire Punch, Furnace Surge, and Incendiary Bombs; and on the raid through the latter two. Furnace Surge can be avoided entirely even by the tank by running directly away from the boss while it does its frontal. Between 5 and 7 stacks, the off-tank should taunt and pick up the boss until the main tank's Sprocketfire runs out.\n\nDuring the second phase, the frost boss will be stacking Freezing on the raid, via Coolant Discharge, and Frost Bomb; and on the tank, via Supercooled Smash. This debuff can be dispelled, meaning one tank can handle the boss the entire phase - without worrying about getting Frozen Solid. Make sure to keep the tank and the raid below 9 stacks, because during the 10th, it will freeze the target, and when Coolant Discharge is cast, it'll causes a raid-wipe.\n\nDuring the third phase, the nature boss will be stacking Radiation Sickness on the raid via Radioactive Bomb; and on the tank through Hazardous Hammer. These stacks should be either dispelled, or at least kept low. Otherwise, when the Toxic Ventilation gets casted, it'll have massive AoE damage. Toxic Ventilation can be interrupted, but the lack of a cast bar can make it more challenging than normal - so those with kicks should pay close attention.\n\nDuring the fourth phase, STX-99/XD will spawn and have all of the abilities mentioned above, although it sounds chaotic, it makes each individual mechanic somewhat easier to deal with, since the none of the three stacks will be major concern as long as you continue dealing with the bombs, and remember the previous basic mechanics.",
+ 						["description"] = "This fight requires two tanks, as each phase has a different forced tank swap mechanic.\n\nThroughout the fight, the six pillars around the boss arena will occasionally activate and spawn bombs of different types depending on the current phase. These pillars must be turned off by clicking the red button on their right side.\n\nDuring the first phase, the fire boss will be stacking Sprocketfire on the tank, via either Sprocketfire Punch, Furnace Surge, and Incendiary Bombs; and on the raid through the latter two. Furnace Surge can be avoided entirely even by the tank by running directly away from the boss while it does its frontal. Between 5 and 7 stacks, the off-tank should taunt and pick up the boss until the main tank's Sprocketfire runs out.\n\nDuring the second phase, the frost boss will be stacking Freezing on the raid, via Coolant Discharge, and Frost Bomb; and on the tank, via Supercooled Smash. This debuff can be dispelled, meaning one tank can handle the boss the entire phase - without worrying about getting Frozen Solid. Make sure to keep the tank and the raid below 9 stacks, because during the 10th, it will freeze the target, and when Coolant Discharge is cast, it'll cause a raid-wipe.\n\nDuring the third phase, the nature boss will be stacking Radiation Sickness on the raid via Radioactive Bomb; and on the tank through Hazardous Hammer. These stacks should be either dispelled, or at least kept low. Otherwise, when the Toxic Ventilation is cast, it'll have massive AoE damage. Toxic Ventilation can be interrupted, but the lack of a cast bar can make it more challenging than normal - so those with kicks should pay close attention.\n\nDuring the fourth phase, STX-99/XD will spawn and have all of the abilities mentioned above, although it sounds chaotic, it makes each individual mechanic somewhat easier to deal with, since none of the three stacks will be a major concern as long as you continue dealing with the bombs, and remember the previous basic mechanics.",
```

### .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Karazhan Crypts.lua:171

- Flavor: Shared standard source; editorial correction only; content context: Classic world / flavor-specific extensions
- Verified flavor: not claimed for editorial correction
- Content context: Classic world / flavor-specific extensions
- Compilation scope: standard compile targets: Season of Discovery; runtime timelines unchanged; local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: decyphered -> deciphered; decyphered -> deciphered; decypher -> decipher
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 								["description"] = "These enchants are learned from an Enchanted Text inside Karazhan Crypts. Encrypted Texts are found throughout the dungeon and can be decyphered by enchanters and mages using enchanting materials or Comprehension Charms respectively. Once the text is decyphered, it becomes a scroll; click on it to learn the recipe. Although the enchanting recipes are in randomized locations, the materials needed to decypher them are fixed by enchant according to the list below. This is helpful to know so you don't waste materials trying to learn enchants you already have.\n\n1x Nexus Crystal\nEnchant 2H Weapon - Spellblasting\nEnchant Off-Hand - Excellent Spirit\nEnchant Off-Hand - Superior Intellect\n\n1x Large Brilliant Shard\nEnchant Off-Hand - Wisdom\nEnchant Shield - Critical Strike\nEnchant Shield - Excellent Stamina\n\n1x Greater Eternal Essence\nEnchant Cloak - Agility\nEnchant Bracer - Greater Spellpower\nEnchant Gloves - Superior Strength",
+ 								["description"] = "These enchants are learned from an Enchanted Text inside Karazhan Crypts. Encrypted Texts are found throughout the dungeon and can be deciphered by enchanters and mages using enchanting materials or Comprehension Charms respectively. Once the text is deciphered, it becomes a scroll; click on it to learn the recipe. Although the enchanting recipes are in randomized locations, the materials needed to decipher them are fixed by enchant according to the list below. This is helpful to know so you don't waste materials trying to learn enchants you already have.\n\n1x Nexus Crystal\nEnchant 2H Weapon - Spellblasting\nEnchant Off-Hand - Excellent Spirit\nEnchant Off-Hand - Superior Intellect\n\n1x Large Brilliant Shard\nEnchant Off-Hand - Wisdom\nEnchant Shield - Critical Strike\nEnchant Shield - Excellent Stamina\n\n1x Greater Eternal Essence\nEnchant Cloak - Agility\nEnchant Bracer - Greater Spellpower\nEnchant Gloves - Superior Strength",
```

### .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Scholomance.lua:1219

- Flavor: Shared standard source; editorial correction only; content context: Classic world / flavor-specific extensions
- Verified flavor: not claimed for editorial correction
- Content context: Classic world / flavor-specific extensions
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: cant -> can't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 	-- To get the summon item again, you would have to abandon the quest and pick it up again, which you cant.	-- Gold 02/08/2023 (EU)
+ 	-- To get the summon item again, you would have to abandon the quest and pick it up again, which you can't.	-- Gold 02/08/2023 (EU)
```

### .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/The Temple of Atal'hakkar.lua:1449

- Flavor: Shared standard source; editorial correction only; content context: Classic world / flavor-specific extensions
- Verified flavor: not claimed for editorial correction
- Content context: Classic world / flavor-specific extensions
- Compilation scope: standard compile targets: Season of Discovery; runtime timelines unchanged; local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Interruptable -> Interruptible
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 								["description"] = "Demoralizing Shout - Interruptable AoE debuff which reduces player's attack power by 40.",
+ 								["description"] = "Demoralizing Shout - Interruptible AoE debuff which reduces player's attack power by 40.",
```

### .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/The Temple of Atal'hakkar.lua:1452

- Flavor: Shared standard source; editorial correction only; content context: Classic world / flavor-specific extensions
- Verified flavor: not claimed for editorial correction
- Content context: Classic world / flavor-specific extensions
- Compilation scope: standard compile targets: Season of Discovery; runtime timelines unchanged; local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Interruptable -> Interruptible
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 								["description"] = "|cffff0000Mijan's Atal'ai Serpent Totems|r should be interrupted and killed asap in order to minimize damage taken. These can deal a fair bit of damage if they happen to focus the same player.\n\nRenew - Interruptable self heal ability, make sure to have someone focused on kicking this to increase kill time.\n\nThorns - Dispellable self thorns buff, should be removed to minimize melee players' damage taken.",
+ 								["description"] = "|cffff0000Mijan's Atal'ai Serpent Totems|r should be interrupted and killed asap in order to minimize damage taken. These can deal a fair bit of damage if they happen to focus the same player.\n\nRenew - Interruptible self heal ability, make sure to have someone focused on kicking this to increase kill time.\n\nThorns - Dispellable self thorns buff, should be removed to minimize melee players' damage taken.",
```

### .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/The Temple of Atal'hakkar.lua:1523

- Flavor: Shared standard source; editorial correction only; content context: Classic world / flavor-specific extensions
- Verified flavor: not claimed for editorial correction
- Content context: Classic world / flavor-specific extensions
- Compilation scope: standard compile targets: Season of Discovery; runtime timelines unchanged; local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Interupt -> Interrupt; interupt -> interrupt; interupted -> interrupted; Dispell Lethargic Poison -> Dispel Lethargic Poison; jump into the pool and to get afflicted -> jump into the pool to get afflicted
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "The boss casts Corrosive Breath and has a tail sweep. Tanks should swap after each breath.\n\nDispell Lethargic Poison. Interupt Bellowing Roar!\n\nWhen the boss casts Deep Slumber, you'll want everyone to stack close to the boss so that when the boss casts Waking Nightmare, everyone can jump into the pool and to get afflicted and then move out asap to avoid getting CC'd again.\n\nAt 70%, the boss will summon two Lumbering Dreamwalkers. Kill them and interupt their Deep Slumber casts. Kill any whelplings that spawn.\n\nAt 40%, he'll repeat this and then summon two Nightmare Scalebanes. These cast Acid Rain that can be interupted, so the raid should spread out to avoid this.",
+ 						["description"] = "The boss casts Corrosive Breath and has a tail sweep. Tanks should swap after each breath.\n\nDispel Lethargic Poison. Interrupt Bellowing Roar!\n\nWhen the boss casts Deep Slumber, you'll want everyone to stack close to the boss so that when the boss casts Waking Nightmare, everyone can jump into the pool to get afflicted and then move out asap to avoid getting CC'd again.\n\nAt 70%, the boss will summon two Lumbering Dreamwalkers. Kill them and interrupt their Deep Slumber casts. Kill any whelplings that spawn.\n\nAt 40%, he'll repeat this and then summon two Nightmare Scalebanes. These cast Acid Rain that can be interrupted, so the raid should spread out to avoid this.",
```

### .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/The Temple of Atal'hakkar.lua:1542

- Flavor: Shared standard source; editorial correction only; content context: Classic world / flavor-specific extensions
- Verified flavor: not claimed for editorial correction
- Content context: Classic world / flavor-specific extensions
- Compilation scope: standard compile targets: Season of Discovery; runtime timelines unchanged; local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: ocasionally -> occasionally
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "Have all the ranged stacked and then kill the four Atal'ai Ritualists.\n\nOnce Hakkari Bloodkeeper casts Bubbling Blood, move out of it. He'll ocasionally cast Spirit Chains, move out of the group before getting dispelled. (it will spread otherwise) Frightsome Howl should be dispelled immediately.\n\nAfter 33 seconds the Bloodkeeper will resurrect Hakkar and pass on some of the damage dealt to him during that time.\n\nDecurse Curse of Tongues, and dispel the Insanity mind control that'll happen once in a while.\n\nThe boss will occasionally cast Corrupted Blood, afflicted players should move out of the raid as fast as they can, and move to the front of the boss (away from the tank) to then get hit by Drain Blood. This will dispel the debuff. Move back afterwards and then kill the boss.",
+ 						["description"] = "Have all the ranged stacked and then kill the four Atal'ai Ritualists.\n\nOnce Hakkari Bloodkeeper casts Bubbling Blood, move out of it. He'll occasionally cast Spirit Chains, move out of the group before getting dispelled. (it will spread otherwise) Frightsome Howl should be dispelled immediately.\n\nAfter 33 seconds the Bloodkeeper will resurrect Hakkar and pass on some of the damage dealt to him during that time.\n\nDecurse Curse of Tongues, and dispel the Insanity mind control that'll happen once in a while.\n\nThe boss will occasionally cast Corrupted Blood, afflicted players should move out of the raid as fast as they can, and move to the front of the boss (away from the tank) to then get hit by Drain Blood. This will dispel the debuff. Move back afterwards and then kill the boss.",
```

### .contrib/.db/standard/01 - Dungeons Raids/02 - Burning Crusade/6 The Battle for Mount Hyjal.lua:32

- Flavor: Shared standard source; editorial correction only; content context: The Burning Crusade
- Verified flavor: not claimed for editorial correction
- Content context: The Burning Crusade
- Compilation scope: standard compile targets: Retail, Cataclysm Classic, Mists Classic; runtime timelines unchanged; local guard: AFTER CATA
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: addtional -> additional; Addtional -> Additional; boundry -> boundary; in Mount Hyjal raid -> in the Mount Hyjal raid; applies for the Horde base -> applies to the Horde base
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "Reputation is obtained from killing mobs in Mount Hyjal raid.\n\nProtip: Remain in the Alliance base when it becomes abandoned as an addtional wave of mobs will spawn. Addtional waves of mobs can be triggered by moving past the boundry of the base. This also applies for the Horde base.",
+ 					["description"] = "Reputation is obtained from killing mobs in the Mount Hyjal raid.\n\nProtip: Remain in the Alliance base when it becomes abandoned as an additional wave of mobs will spawn. Additional waves of mobs can be triggered by moving past the boundary of the base. This also applies to the Horde base.",
```

### .contrib/.db/standard/01 - Dungeons Raids/10 - Dragonflight/4 - Amirdrassil, the Dream's Hope.lua:1335

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: returing -> returning
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "First get the Attuned Angler Buff by returing 10 Awakening Sunfish and 10 Slumbering Moonfish. Go back into the raid and fish in the biggest pool of water within the Wellspring Atrium.",
+ 					["description"] = "First get the Attuned Angler Buff by returning 10 Awakening Sunfish and 10 Slumbering Moonfish. Go back into the raid and fish in the biggest pool of water within the Wellspring Atrium.",
```

### .contrib/.db/standard/02 - Delves/11 - The War Within/Delves.lua:1933

- Flavor: Shared standard source; editorial correction only; content context: The War Within
- Verified flavor: not claimed for editorial correction
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: cointains -> contains
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				i(233281),	-- Delver's Cosmetic Surprise Bag (CI!) [cointains any unlearned cosmetic from delves]
+ 				i(233281),	-- Delver's Cosmetic Surprise Bag (CI!) [contains any unlearned cosmetic from delves]
```

### .contrib/.db/standard/02 - Delves/11 - The War Within/Delves.lua:2109

- Flavor: Shared standard source; editorial correction only; content context: The War Within
- Verified flavor: not claimed for editorial correction
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: cointains -> contains
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				i(248127),	-- Delver's Cosmetic Surprise Bag (CI!) [cointains any unlearned cosmetic from delves]
+ 				i(248127),	-- Delver's Cosmetic Surprise Bag (CI!) [contains any unlearned cosmetic from delves]
```

### .contrib/.db/standard/02 - Delves/11 - The War Within/Delves.lua:4245

- Flavor: Shared standard source; editorial correction only; content context: The War Within
- Verified flavor: not claimed for editorial correction
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: ontop -> on top
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "Located ontop of pillar, accessible after killing last boss.",
+ 					["description"] = "Located on top of pillar, accessible after killing last boss.",
```

### .contrib/.db/standard/02 - Delves/12 - Midnight/0 - Season 1.lua:409

- Flavor: Shared standard source; editorial correction only; content context: Midnight
- Verified flavor: not claimed for editorial correction
- Content context: Midnight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: tiggered -> triggered
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				--q(93686),	-- tiggered after a delve
+ 				--q(93686),	-- triggered after a delve
```

### .contrib/.db/standard/02 - Delves/12 - Midnight/Delves.lua:1842

- Flavor: Shared standard source; editorial correction only; content context: Midnight
- Verified flavor: not claimed for editorial correction
- Content context: Midnight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: spwaned -> spawned
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			q(97064, name(HEADERS.Object, 658087, {isWeekly=true})),	-- Abundantly Bountiful Heavy Trunk spwaned
+ 			q(97064, name(HEADERS.Object, 658087, {isWeekly=true})),	-- Abundantly Bountiful Heavy Trunk spawned
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/2 - Orgrimmar.lua:108

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged; local guard: BEFORE 9.0.3
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: inital -> initial
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						"Provides the Horde Battle Pet questline, the quests are given in the following order:\n\n1. The inital quests touring middle Kalimdor\n2. 'Battle Pet Tamers: Eastern Kingdoms' + 'Battle Pet Tamers: Kalimdor'\n3. 'Grand Master Lydia Accoste' + 'Grand Master Trixxy'\n4. 'Battle Pet Tamers: Outland'\n5. 'Grand Master Antari'\n6. 'Battle Pet Tamers: Northrend'\n7. 'Grand Master Payne'\n8. 'Battle Pet Tamers: Cataclysm'\n9. 'Grand Master Obalis'\n10. 'Battle Pet Tamers: Pandaria'\n11. 'Grand Master Aki'\n\nNew quest might not be given until daily reset.",
+ 						"Provides the Horde Battle Pet questline, the quests are given in the following order:\n\n1. The initial quests touring middle Kalimdor\n2. 'Battle Pet Tamers: Eastern Kingdoms' + 'Battle Pet Tamers: Kalimdor'\n3. 'Grand Master Lydia Accoste' + 'Grand Master Trixxy'\n4. 'Battle Pet Tamers: Outland'\n5. 'Grand Master Antari'\n6. 'Battle Pet Tamers: Northrend'\n7. 'Grand Master Payne'\n8. 'Battle Pet Tamers: Cataclysm'\n9. 'Grand Master Obalis'\n10. 'Battle Pet Tamers: Pandaria'\n11. 'Grand Master Aki'\n\nNew quest might not be given until daily reset.",
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/2 - Orgrimmar.lua:110

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail; runtime timelines unchanged; local guard: NOT (BEFORE 9.0.3) AND ELSE
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: inital -> initial
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						"Provides the Horde Battle Pet questline, the quests are given in the following order:\n\n1. The inital quests touring middle Kalimdor\n2. 'Battle Pet Tamers: Eastern Kingdoms' + 'Battle Pet Tamers: Kalimdor'\n3. 'Grand Master Lydia Accoste' + 'Grand Master Trixxy'\n4. 'Battle Pet Tamers: Outland'\n5. 'Grand Master Antari'\n6. 'Battle Pet Tamers: Northrend'\n7. 'Grand Master Payne'\n8. 'Battle Pet Tamers: Cataclysm'\n9. 'Grand Master Obalis'\n10. 'Battle Pet Tamers: Pandaria'\n11. 'Grand Master Aki'\n\nYou might have to tinker with Chromie time on low-level character to obtain these account-wide quests, and new quest might not be given until daily reset.",
+ 						"Provides the Horde Battle Pet questline, the quests are given in the following order:\n\n1. The initial quests touring middle Kalimdor\n2. 'Battle Pet Tamers: Eastern Kingdoms' + 'Battle Pet Tamers: Kalimdor'\n3. 'Grand Master Lydia Accoste' + 'Grand Master Trixxy'\n4. 'Battle Pet Tamers: Outland'\n5. 'Grand Master Antari'\n6. 'Battle Pet Tamers: Northrend'\n7. 'Grand Master Payne'\n8. 'Battle Pet Tamers: Cataclysm'\n9. 'Grand Master Obalis'\n10. 'Battle Pet Tamers: Pandaria'\n11. 'Grand Master Aki'\n\nYou might have to tinker with Chromie time on low-level character to obtain these account-wide quests, and new quest might not be given until daily reset.",
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Bloodmyst Isle.lua:499

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: diappear -> disappear
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["isBreadcrumb"] = true,	-- TODO: Double check this is actually a breadcrumb. If you finish Alien Predators, does this diappear? [Not required for Alien Predators, Discord 2023-07-29]
+ 					["isBreadcrumb"] = true,	-- TODO: Double check this is actually a breadcrumb. If you finish Alien Predators, does this disappear? [Not required for Alien Predators, Discord 2023-07-29]
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Caverns of Time.lua:107

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: infront -> in front
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				hqt(53654, {	-- Speak to Wan'be infront of Zaladormu in the Caverns of Time
+ 				hqt(53654, {	-- Speak to Wan'be in front of Zaladormu in the Caverns of Time
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Darkshore.lua:1680

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: carefuly -> carefully
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "Great Moonstalker Spirit grants a buff increasing your haste by 10%.\nChoose carefuly, you can get only 1 buff.",
+ 					["description"] = "Great Moonstalker Spirit grants a buff increasing your haste by 10%.\nChoose carefully, you can get only 1 buff.",
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Darkshore.lua:1697

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: carefuly -> carefully
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "Great Stag Spirit grants a buff increasing your movement speed by 10%.\nChoose carefuly, you can get only 1 buff.",
+ 					["description"] = "Great Stag Spirit grants a buff increasing your movement speed by 10%.\nChoose carefully, you can get only 1 buff.",
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Darkshore.lua:1714

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: carefuly -> carefully
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "Great Thistle Bear Spirit grants a buff reducing the damage you take by 10%.\nChoose carefuly, you can get only 1 buff.",
+ 					["description"] = "Great Thistle Bear Spirit grants a buff reducing the damage you take by 10%.\nChoose carefully, you can get only 1 buff.",
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Darkshore.lua:3152

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Season of Discovery; runtime timelines unchanged; local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: uninterupted -> uninterrupted
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "Climb the tower in Darkshore, you'll likely need a group or a friend capable of surviving long enough to give you about 3 seconds of uninterupted looting time.",
+ 					["description"] = "Climb the tower in Darkshore, you'll likely need a group or a friend capable of surviving long enough to give you about 3 seconds of uninterrupted looting time.",
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Darkshore.lua:3224

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Season of Discovery; runtime timelines unchanged; local guard: SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: mispelled -> misspelled
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						{ "o", 414532 },	-- Clliffspring Chest (mispelled?!)
+ 						{ "o", 414532 },	-- Clliffspring Chest (misspelled?!)
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Felwood.lua:2807

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: nightime -> nighttime
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "This is the nightime black diseased bear model.",
+ 					["description"] = "This is the nighttime black diseased bear model.",
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Felwood.lua:3076

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: commmonly -> commonly
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "Drops commmonly from all Deadwood furbolgs, and can be turned in to the NPCs named Grazle and Nafien for Timbermaw Hold reputation. Each turn in requires 5 Deadwood Headdress Feathers. Grazle can be found in the southmost part of the zone, in the Emerald Sanctuary. Nafien can be found in the northernmost part of the zone, by the entrance to Timbermaw Hold.",
+ 					["description"] = "Drops commonly from all Deadwood furbolgs, and can be turned in to the NPCs named Grazle and Nafien for Timbermaw Hold reputation. Each turn in requires 5 Deadwood Headdress Feathers. Grazle can be found in the southmost part of the zone, in the Emerald Sanctuary. Nafien can be found in the northernmost part of the zone, by the entrance to Timbermaw Hold.",
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Mount Hyjal.lua:37

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: intial -> initial
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "The daily quest 'Vigilance on Wings' is offered in Firelands Hatchery after completing the intial quests as part of the questline in Shrine of Aviana.",
+ 					["description"] = "The daily quest 'Vigilance on Wings' is offered in Firelands Hatchery after completing the initial quests as part of the questline in Shrine of Aviana.",
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Mount Hyjal.lua:39

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: wasnt -> wasn't; which ever -> whichever
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						i(69838, {		-- Chirping Box (Blue / Gold Mini Jouster - which ever wasnt picked during !Vigilance on Wings)
+ 						i(69838, {		-- Chirping Box (Blue / Gold Mini Jouster - whichever wasn't picked during !Vigilance on Wings)
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Silithus (The Wound).lua:410

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Szenario -> Scenario
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 								1476,	-- Twilight Highlands (Szenario)
+ 								1476,	-- Twilight Highlands (Scenario)
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Silithus (The Wound).lua:956

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: technicaly -> technically
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },	-- technicaly 1604?
+ 							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },	-- technically 1604?
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/The Barrens.lua:2409

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Season of Discovery; runtime timelines unchanged; local guard: BEFORE 4.0.3 / SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: uninterupted -> uninterrupted
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "Climb each of the towers, you'll likely need a group or a friend capable of surviving long enough to give you about 3 seconds of uninterupted looting time.",
+ 					["description"] = "Climb each of the towers, you'll likely need a group or a friend capable of surviving long enough to give you about 3 seconds of uninterrupted looting time.",
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/The Barrens.lua:5080

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Season of Discovery; runtime timelines unchanged; local guard: BEFORE 4.0.3 / SEASON_OF_DISCOVERY
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: ressurect -> resurrect
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "The hand will open when you ressurect another player.",
+ 					["description"] = "The hand will open when you resurrect another player.",
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Thousand Needles.lua:3037

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: infront -> in front
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["sourceQuest"] = 53654,	-- Speak to Wan'be infront of Zaladormu in the Caverns of Time
+ 					["sourceQuest"] = 53654,	-- Speak to Wan'be in front of Zaladormu in the Caverns of Time
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Uldum.lua:63

- Flavor: Retail; content context: Cataclysm Uldum dungeon name
- Verified flavor: Retail
- Content context: Cataclysm Uldum dungeon name
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: ofthe -> of the; game-name spacing corroborated by Wowhead and Warcraft Wiki in independent review
- Source: https://www.wowhead.com/zone=5396/lost-city-of-the-tolvir; https://warcraft.wiki.gg/wiki/Lost_City_of_the_Tol%27vir

```lua
- 							{ 60.8, 72.7, ULDUM },	-- Lost City ofthe Tol'vir
+ 							{ 60.8, 72.7, ULDUM },	-- Lost City of the Tol'vir
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Winterspring.lua:2884

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Cataclysm Classic, Mists Classic; runtime timelines unchanged; local guard: AFTER CATA
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: inital -> initial; commmonly -> commonly; all following requires 5 -> all subsequent turn-ins require 5
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						"Drops commmonly from all Winterfall furbolgs, and can be turned in to the NPC named Salfa for Timbermaw Hold reputation. The inital turn in requires 10 Winterfall Spirit Beads, and all following requires 5. Salfa can be found in the westernmost part of the zone, by the entrance to Timbermaw Hold.",
+ 						"Drops commonly from all Winterfall furbolgs, and can be turned in to the NPC named Salfa for Timbermaw Hold reputation. The initial turn in requires 10 Winterfall Spirit Beads, and all subsequent turn-ins require 5. Salfa can be found in the westernmost part of the zone, by the entrance to Timbermaw Hold.",
```

### .contrib/.db/standard/02 - Outdoor Zones/01 Kalimdor/Winterspring.lua:2886

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Classic Era, Season of Discovery, TBC Classic, Wrath Classic; runtime timelines unchanged; local guard: NOT (AFTER CATA) AND ELSE
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: commmonly -> commonly
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						"Drops commmonly from all Winterfall furbolgs, and can be turned in to the NPC named Salfa for Timbermaw Hold reputation. Each turn in requires 5 Winterfall Spirit Beads. Salfa can be found in the westernmost part of the zone, by the entrance to Timbermaw Hold.",
+ 						"Drops commonly from all Winterfall furbolgs, and can be turned in to the NPC named Salfa for Timbermaw Hold reputation. Each turn in requires 5 Winterfall Spirit Beads. Salfa can be found in the westernmost part of the zone, by the entrance to Timbermaw Hold.",
```

### .contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/1 - Stormwind City.lua:5788

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: aquire -> acquire
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						{"pop"},										-- Discard Header and aquire their children
+ 						{"pop"},										-- Discard Header and acquire their children
```

### .contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Dun Morogh.lua:3970

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: propably -> probably; All yearly quests resets -> All yearly quests reset
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					-- Danny Donkey: Molkree says this quest propably got added by mistake to a list of quests to be marked as incomplete on a yearly basis. All yearly quests resets 15/01.
+ 					-- Danny Donkey: Molkree says this quest probably got added by mistake to a list of quests to be marked as incomplete on a yearly basis. All yearly quests reset 15/01.
```

### .contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Eastern Plaguelands.lua:4858

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: Eastern Plaguelands; quest 27387 is the Cataclysm-and-later version
- Verified flavor: Retail
- Content context: Eastern Plaguelands; quest 27387 is the Cataclysm-and-later version
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Villians of Darrowshire -> Villains of Darrowshire
- Source: https://www.wowhead.com/quest=27387; https://warcraft.wiki.gg/wiki/Villains_of_Darrowshire

```lua
- 				q(27387, {	-- Villians of Darrowshire
+ 				q(27387, {	-- Villains of Darrowshire
```

### .contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Gilneas & Gilneas City.lua:382

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: Worgen starting experience (Cataclysm-and-later)
- Verified flavor: Retail
- Content context: Worgen starting experience (Cataclysm-and-later)
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Messsage to Greymane -> Message to Greymane
- Source: https://www.wowhead.com/quest=14214; https://warcraft.wiki.gg/wiki/Message_to_Greymane

```lua
- 							["sourceQuest"] = 14214,	-- Messsage to Greymane
+ 							["sourceQuest"] = 14214,	-- Message to Greymane
```

### .contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/The Cape of Stranglethorn.lua:933

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Cataclysm Classic, Mists Classic; runtime timelines unchanged; local guard: AFTER CATA
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: interupt -> interrupt
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 							["description"] = "Attack Zanzil first to interupt the cast.",
+ 							["description"] = "Attack Zanzil first to interrupt the cast.",
```

### .contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/The Hinterlands.lua:432

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Cant -> Can't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 							["collectible"] = false,	-- Cant be collected, not even with the source tracking we use for fishing poles and stuff
+ 							["collectible"] = false,	-- Can't be collected, not even with the source tracking we use for fishing poles and stuff
```

### .contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/The Hinterlands.lua:443

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Cant -> Can't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 							["collectible"] = false,	-- Cant be collected, not even with the source tracking we use for fishing poles and stuff
+ 							["collectible"] = false,	-- Can't be collected, not even with the source tracking we use for fishing poles and stuff
```

### .contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/The Hinterlands.lua:469

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Cant -> Can't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 							["collectible"] = false,	-- Cant be collected, not even with the source tracking we use for fishing poles and stuff
+ 							["collectible"] = false,	-- Can't be collected, not even with the source tracking we use for fishing poles and stuff
```

### .contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/The Hinterlands.lua:480

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Cant -> Can't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 							["collectible"] = false,	-- Cant be collected, not even with the source tracking we use for fishing poles and stuff
+ 							["collectible"] = false,	-- Can't be collected, not even with the source tracking we use for fishing poles and stuff
```

### .contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Tirisfal Glades.lua:2654

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Rougly -> Roughly
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "Rougly every 15 minutes, 7 Fey-Drunk Darters will group around the Giant Mushroom circle, one by one. They will channel the golden beams of light and begin singing their song.\nOnce event starts, loot the nest quickly, as the event does not run for long.",
+ 					["description"] = "Roughly every 15 minutes, 7 Fey-Drunk Darters will group around the Giant Mushroom circle, one by one. They will channel the golden beams of light and begin singing their song.\nOnce event starts, loot the nest quickly, as the event does not run for long.",
```

### .contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Twilight Highlands.lua:205

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: intitiate -> initiate
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "Found in the Alliance villages Kirthaven and Thundermar. Horde players CANNOT interact with the hatchlings to intitiate pet battle due to faction alignment, any attempts will only attack them. If you absolutely want to get this pet with a Horde character, they can appear as secondary pets near the villages.",
+ 						["description"] = "Found in the Alliance villages Kirthaven and Thundermar. Horde players CANNOT interact with the hatchlings to initiate pet battle due to faction alignment, any attempts will only attack them. If you absolutely want to get this pet with a Horde character, they can appear as secondary pets near the villages.",
```

### .contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Twilight Highlands.lua:2067

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: receieve -> receive
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "Must be on |cFFFFD700If the Key Fits|r to receieve this quest.",
+ 					["description"] = "Must be on |cFFFFD700If the Key Fits|r to receive this quest.",
```

### .contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Vashj'ir.lua:2802

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: defintely -> definitely
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 								25953,	-- Swift Approach (defintely required)
+ 								25953,	-- Swift Approach (definitely required)
```

### .contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Westfall.lua:364

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Classic Era, Season of Discovery, TBC Classic; runtime timelines unchanged; local guard: NOT (AFTER 3.1.0) AND ELSE
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: targetted -> targeted
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						"Simply target any Chicken and spam |cFFFFD700/chicken|r at it until it emotes at you. This will take about 100 emotes. (make a macro!)\n\nOnce it does, type /cheer with it targetted.\n\nThe Chicken will never turn friendly for a Horde player, even if they get the emote.",
+ 						"Simply target any Chicken and spam |cFFFFD700/chicken|r at it until it emotes at you. This will take about 100 emotes. (make a macro!)\n\nOnce it does, type /cheer with it targeted.\n\nThe Chicken will never turn friendly for a Horde player, even if they get the emote.",
```

### .contrib/.db/standard/02 - Outdoor Zones/03 Outland/Zangarmarsh.lua:132

- Flavor: Shared standard source; editorial correction only; content context: The Burning Crusade
- Verified flavor: not claimed for editorial correction
- Content context: The Burning Crusade
- Compilation scope: standard compile targets: Retail, Mists Classic; runtime timelines unchanged; local guard: AFTER 5.3.0
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: brough -> brought
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 								"Found only in Sporeggar.",	-- The reputation requirement got removed in a late MoP patch, but can't find any confirmation on which one. Working assumption is 5.3.0 which brough battle pets to TBC raids.
+ 								"Found only in Sporeggar.",	-- The reputation requirement got removed in a late MoP patch, but can't find any confirmation on which one. Working assumption is 5.3.0 which brought battle pets to TBC raids.
```

### .contrib/.db/standard/02 - Outdoor Zones/04 Northrend/0 - Metadata.lua:174

- Flavor: Shared standard source; editorial correction only; content context: Wrath of the Lich King
- Verified flavor: not claimed for editorial correction
- Content context: Wrath of the Lich King
- Compilation scope: standard compile targets: Retail, Mists Classic; runtime timelines unchanged; local guard: AFTER 5.3.0
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Northen -> Northern
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						{ 44.2, 33.6, ICECROWN },	-- Northen end of Ironwall Rampart
+ 						{ 44.2, 33.6, ICECROWN },	-- Northern end of Ironwall Rampart
```

### .contrib/.db/standard/02 - Outdoor Zones/04 Northrend/1 - Dalaran.lua:1231

- Flavor: Shared standard source; editorial correction only; content context: Wrath of the Lich King
- Verified flavor: not claimed for editorial correction
- Content context: Wrath of the Lich King
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: aqcuired -> acquired
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 								["description"] = "This pet is obtained by doing the following:\n1. Complete the achievement 'Higher Learning'\n2. Use the newly aqcuired toy 'The Schools of Arcane Magic - Mastery' and teleport yourself to the spires atop Violet Citadel.\n3. Interact with Archmage Vargoth.",
+ 								["description"] = "This pet is obtained by doing the following:\n1. Complete the achievement 'Higher Learning'\n2. Use the newly acquired toy 'The Schools of Arcane Magic - Mastery' and teleport yourself to the spires atop Violet Citadel.\n3. Interact with Archmage Vargoth.",
```

### .contrib/.db/standard/02 - Outdoor Zones/04 Northrend/Borean Tundra.lua:1139

- Flavor: Shared standard source; editorial correction only; content context: Wrath of the Lich King
- Verified flavor: not claimed for editorial correction
- Content context: Wrath of the Lich King
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: curently -> currently
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "This version of the quest is only available if you have NOT completed the quest 'There Is No Hope' from Greatmother Geyah in Nagrand (Outland). However, it seems that everyone is receiving this version curently.",
+ 						["description"] = "This version of the quest is only available if you have NOT completed the quest 'There Is No Hope' from Greatmother Geyah in Nagrand (Outland). However, it seems that everyone is receiving this version currently.",
```

### .contrib/.db/standard/02 - Outdoor Zones/04 Northrend/Crystalsong Forest.lua:70

- Flavor: Shared standard source; editorial correction only; content context: Wrath of the Lich King
- Verified flavor: not claimed for editorial correction
- Content context: Wrath of the Lich King
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: seperating -> separating
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "Can be found beneath the Ironwall Dam seperating Icecrown from Crystalsong Forest.",
+ 						["description"] = "Can be found beneath the Ironwall Dam separating Icecrown from Crystalsong Forest.",
```

### .contrib/.db/standard/02 - Outdoor Zones/04 Northrend/The Storm Peaks.lua:1670

- Flavor: Shared standard source; editorial correction only; content context: Wrath of the Lich King
- Verified flavor: not claimed for editorial correction
- Content context: Wrath of the Lich King
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Propably -> Probably
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["minReputation"] = { FACTION_THE_SONS_OF_HODIR, FRIENDLY },	-- The Sons of Hodir, Friendly. Propably? Does only provide grey powder when hated.
+ 						["minReputation"] = { FACTION_THE_SONS_OF_HODIR, FRIENDLY },	-- The Sons of Hodir, Friendly. Probably? Does only provide grey powder when hated.
```

### .contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/Krasarang Wilds.lua:162

- Flavor: Shared standard source; editorial correction only; content context: Mists of Pandaria
- Verified flavor: not claimed for editorial correction
- Content context: Mists of Pandaria
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: completeing -> completing
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					-- try to figure out where the alternate versions of "Into the Wilds" come from for each faction. i picked up 30178 on Alliance and 30133 on Horde after completeing all the Zhu's Watch quests. the quest text is slightly different (one version for each says "I suspect they'll know something about what happened here" and the other says "They should be told of what happened here," and one version for each provides Zhu's Watch Supplies, while the other doesn't. possibly there are different versions if you abandon/re-pick up, or if you start questing elsewhere in the zone?  completing one completed all four of these, so unless there's an issue with one version not doing the same then it should be good for all users.
+ 					-- try to figure out where the alternate versions of "Into the Wilds" come from for each faction. i picked up 30178 on Alliance and 30133 on Horde after completing all the Zhu's Watch quests. the quest text is slightly different (one version for each says "I suspect they'll know something about what happened here" and the other says "They should be told of what happened here," and one version for each provides Zhu's Watch Supplies, while the other doesn't. possibly there are different versions if you abandon/re-pick up, or if you start questing elsewhere in the zone?  completing one completed all four of these, so unless there's an issue with one version not doing the same then it should be good for all users.
```

### .contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/Kun-Lai Summit.lua:3688

- Flavor: Shared standard source; editorial correction only; content context: Mists of Pandaria
- Verified flavor: not claimed for editorial correction
- Content context: Mists of Pandaria
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(30453),	-- Binan Village Intro Event Tracking Event - triggeres when flying into Binan village through the Ancient Passage on mount
+ 				q(30453),	-- Binan Village Intro Event Tracking Event - triggers when flying into Binan village through the Ancient Passage on mount
```

### .contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/Kun-Lai Summit.lua:3692

- Flavor: Shared standard source; editorial correction only; content context: Mists of Pandaria
- Verified flavor: not claimed for editorial correction
- Content context: Mists of Pandaria
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(31300),	-- Shomi Beach Tracking - triggeres shortly after killing Captain Ripflesh during "Justice" (questID 30805)
+ 				q(31300),	-- Shomi Beach Tracking - triggers shortly after killing Captain Ripflesh during "Justice" (questID 30805)
```

### .contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/The Jade Forest.lua:4117

- Flavor: Shared standard source; editorial correction only; content context: Mists of Pandaria
- Verified flavor: not claimed for editorial correction
- Content context: Mists of Pandaria
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(29368),	-- Tracking - triggeres after completing the criteria for "Acid Rain" (questID 29827)
+ 				q(29368),	-- Tracking - triggers after completing the criteria for "Acid Rain" (questID 29827)
```

### .contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/Timeless Isle.lua:3194

- Flavor: Shared standard source; editorial correction only; content context: Mists of Pandaria
- Verified flavor: not claimed for editorial correction
- Content context: Mists of Pandaria
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Compeltion -> Completion
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(33164),	-- Weekly Vignette Event Compeltion - Tracking Quest — popped when killing chelon, along with daily questID. didn't pop from just interacting with shell.
+ 				q(33164),	-- Weekly Vignette Event Completion - Tracking Quest — popped when killing chelon, along with daily questID. didn't pop from just interacting with shell.
```

### .contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/Vale of Eternal Blossoms.lua:87

- Flavor: Shared standard source; editorial correction only; content context: Mists of Pandaria
- Verified flavor: not claimed for editorial correction
- Content context: Mists of Pandaria
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: occational -> occasional
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "Commonly found as a secondary pet in Vale of Eternal Blossoms. Can also be found as primary pets outside the Gate of the August Celestials as well as occational spawns through the Vale of Eternal Blossoms.",
+ 						["description"] = "Commonly found as a secondary pet in Vale of Eternal Blossoms. Can also be found as primary pets outside the Gate of the August Celestials as well as occasional spawns through the Vale of Eternal Blossoms.",
```

### .contrib/.db/standard/02 - Outdoor Zones/07 Draenor/Assault On The Dark Portal.lua:22

- Flavor: Shared standard source; editorial correction only; content context: Warlords of Draenor
- Verified flavor: not claimed for editorial correction
- Content context: Warlords of Draenor
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: similiar -> similar
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 		en = "The Assault on the Dark Portal is the instanced version of Tanaan Valley, which is the subzone of Tanaan Jungle and a location of Warlords of Draenor introductory experience. Once the intro is completed, players have no means of returning to the area, similiar to Plaguelands: The Scarlet Enclave for death knights.",
+ 		en = "The Assault on the Dark Portal is the instanced version of Tanaan Valley, which is the subzone of Tanaan Jungle and a location of Warlords of Draenor introductory experience. Once the intro is completed, players have no means of returning to the area, similar to Plaguelands: The Scarlet Enclave for death knights.",
```

### .contrib/.db/standard/02 - Outdoor Zones/07 Draenor/Frostfire Ridge.lua:1192

- Flavor: Shared standard source; editorial correction only; content context: Warlords of Draenor
- Verified flavor: not claimed for editorial correction
- Content context: Warlords of Draenor
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: verifed -> verified
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						-- If anyone actually has a verifed way of obtaining this quest on a character which has already established their Garrison, please update this
+ 						-- If anyone actually has a verified way of obtaining this quest on a character which has already established their Garrison, please update this
```

### .contrib/.db/standard/02 - Outdoor Zones/07 Draenor/Frostfire Ridge.lua:1948

- Flavor: Shared standard source; editorial correction only; content context: Warlords of Draenor
- Verified flavor: not claimed for editorial correction
- Content context: Warlords of Draenor
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: appoach -> approach
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(34715),	-- Tracking Flag: Shamanstone Summons - appoach the frostwolf shaman stone in Wor'gol while on "Honor Has Its Rewards" to start the dialog (questID 33816)
+ 				q(34715),	-- Tracking Flag: Shamanstone Summons - approach the frostwolf shaman stone in Wor'gol while on "Honor Has Its Rewards" to start the dialog (questID 33816)
```

### .contrib/.db/standard/02 - Outdoor Zones/07 Draenor/Gorgrond.lua:3190

- Flavor: Shared standard source; editorial correction only; content context: Warlords of Draenor
- Verified flavor: not claimed for editorial correction
- Content context: Warlords of Draenor
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(33820),	-- Tracking Quest: Seen Escape Cinematic — triggeres with cinematic during "The Descent" (questID 34338)
+ 				q(33820),	-- Tracking Quest: Seen Escape Cinematic — triggers with cinematic during "The Descent" (questID 34338)
```

### .contrib/.db/standard/02 - Outdoor Zones/07 Draenor/Gorgrond.lua:3191

- Flavor: Shared standard source; editorial correction only; content context: Warlords of Draenor
- Verified flavor: not claimed for editorial correction
- Content context: Warlords of Draenor
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(36588),	-- Tracking - See Closed Chest — triggeres immediately after accepting "The Beating Heart" (questID 34410)
+ 				q(36588),	-- Tracking - See Closed Chest — triggers immediately after accepting "The Beating Heart" (questID 34410)
```

### .contrib/.db/standard/02 - Outdoor Zones/07 Draenor/Talador.lua:2835

- Flavor: Shared standard source; editorial correction only; content context: Warlords of Draenor
- Verified flavor: not claimed for editorial correction
- Content context: Warlords of Draenor
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(34574),	-- Unused - triggeres when choosing the Arcane Sanctum building
+ 				q(34574),	-- Unused - triggers when choosing the Arcane Sanctum building
```

### .contrib/.db/standard/02 - Outdoor Zones/08 Broken Isles/2 - Argus/Antoran Wastes/Rares.lua:142

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: cant -> can't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 								["description"] = "The grimoire only drops when Radix is in stasis and you have to rightclick to activate him.\nIf Radix is already active and has no loot, not even greys, then you cant loot the grimoire for this day.",
+ 								["description"] = "The grimoire only drops when Radix is in stasis and you have to rightclick to activate him.\nIf Radix is already active and has no loot, not even greys, then you can't loot the grimoire for this day.",
```

### .contrib/.db/standard/02 - Outdoor Zones/08 Broken Isles/Azsuna/Professions.lua:13

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: recive -> receive; Fisherfriend NPC's will -> Fisherfriend NPCs will
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF43.2, 40.6|r north of Illidari Stand.\n\nThe Fisherfriend NPC's will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you recive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
+ 						["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF43.2, 40.6|r north of Illidari Stand.\n\nThe Fisherfriend NPCs will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you receive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
```

### .contrib/.db/standard/02 - Outdoor Zones/08 Broken Isles/Broken Shore.lua:52

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: Legion
- Verified flavor: Retail
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Relieved of Thier Valuables -> Relieved of Their Valuables
- Source: https://www.wowhead.com/achievement=11546/breaching-the-tomb; https://warcraft.wiki.gg/wiki/Relieved_of_Their_Valuables

```lua
- 						crit(36609, {	-- Relieved of Thier Valuables
+ 						crit(36609, {	-- Relieved of Their Valuables
```

### .contrib/.db/standard/02 - Outdoor Zones/08 Broken Isles/Highmountain/Professions.lua:11

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: recive -> receive; Fisherfriend NPC's will -> Fisherfriend NPCs will
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF32.4, 40.9|r at the bottom of Thunder Totem in the boat on the water.\n\nThe Fisherfriend NPC's will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you recive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
+ 						["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF32.4, 40.9|r at the bottom of Thunder Totem in the boat on the water.\n\nThe Fisherfriend NPCs will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you receive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
```

### .contrib/.db/standard/02 - Outdoor Zones/08 Broken Isles/Stormheim/Professions.lua:13

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: recive -> receive; Fisherfriend NPC's will -> Fisherfriend NPCs will
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF90.6, 10.6|r on Shield's Rest.\n\nThe Fisherfriend NPC's will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you recive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
+ 						["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF90.6, 10.6|r on Shield's Rest.\n\nThe Fisherfriend NPCs will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you receive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
```

### .contrib/.db/standard/02 - Outdoor Zones/08 Broken Isles/Suramar/Professions.lua:13

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: recive -> receive; Fisherfriend NPC's will -> Fisherfriend NPCs will
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF50.6, 49.3|r in The Grand Promenade near the edge of Suramar City.\n\nThe Fisherfriend NPC's will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you recive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
+ 						["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF50.6, 49.3|r in The Grand Promenade near the edge of Suramar City.\n\nThe Fisherfriend NPCs will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you receive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
```

### .contrib/.db/standard/02 - Outdoor Zones/08 Broken Isles/Suramar/Quests.lua:2379

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(41137),	-- Fall of the King - triggeres when killing Cora'kar
+ 				q(41137),	-- Fall of the King - triggers when killing Cora'kar
```

### .contrib/.db/standard/02 - Outdoor Zones/08 Broken Isles/Val'Sharah/Professions.lua:12

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: recive -> receive; Fisherfriend NPC's will -> Fisherfriend NPCs will
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF53.4, 72.8|r in Lorlathil.\n\nThe Fisherfriend NPC's will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you recive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
+ 					["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF53.4, 72.8|r in Lorlathil.\n\nThe Fisherfriend NPCs will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you receive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
```

### .contrib/.db/standard/02 - Outdoor Zones/10 Kul Tiras/1 Boralus/Vendors.lua:510

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: Battle for Azeroth
- Verified flavor: Retail
- Content context: Battle for Azeroth
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Gnoll Targetting Barrel -> Gnoll Targeting Barrel
- Source: https://www.wowhead.com/item=163201/gnoll-targeting-barrel; https://warcraft.wiki.gg/wiki/Gnoll_Targeting_Barrel

```lua
- 						i(163201, {	-- Gnoll Targetting Barrel (TOY!)
+ 						i(163201, {	-- Gnoll Targeting Barrel (TOY!)
```

### .contrib/.db/standard/02 - Outdoor Zones/10 Kul Tiras/1 Boralus/World Quests.lua:138

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: Battle for Azeroth
- Verified flavor: Retail
- Content context: Battle for Azeroth
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Supplies Neeeded: Great Sea Catfish -> Supplies Needed: Great Sea Catfish
- Source: https://www.wowhead.com/quest=52375; https://warcraft.wiki.gg/wiki/Supplies_Needed:_Great_Sea_Catfish_(Alliance)

```lua
- 			q(52375, {	-- Supplies Neeeded: Great Sea Catfish
+ 			q(52375, {	-- Supplies Needed: Great Sea Catfish
```

### .contrib/.db/standard/02 - Outdoor Zones/10 Kul Tiras/1 Boralus/World Quests.lua:144

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: Battle for Azeroth
- Verified flavor: Retail
- Content context: Battle for Azeroth
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Supplies Neeeded: Mistscale -> Supplies Needed: Mistscale
- Source: https://www.wowhead.com/quest=51033; https://warcraft.wiki.gg/wiki/Supplies_Needed:_Mistscale_(Alliance)

```lua
- 			q(51033, {	-- Supplies Neeeded: Mistscale
+ 			q(51033, {	-- Supplies Needed: Mistscale
```

### .contrib/.db/standard/02 - Outdoor Zones/10 Kul Tiras/Stormsong Valley/Rares.lua:239

- Flavor: Shared standard source; editorial correction only; content context: Battle for Azeroth
- Verified flavor: not claimed for editorial correction
- Content context: Battle for Azeroth
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: cant -> can't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			-- Under Honeyback Hive as their drop requires the faction unlocked, which horde cant.
+ 			-- Under Honeyback Hive as their drop requires the faction unlocked, which horde can't.
```

### .contrib/.db/standard/02 - Outdoor Zones/10 Kul Tiras/Tiragarde Sound/Vendors.lua:26

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: Battle for Azeroth
- Verified flavor: Retail
- Content context: Battle for Azeroth
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Gnoll Targetting Barrel -> Gnoll Targeting Barrel
- Source: https://www.wowhead.com/item=163201/gnoll-targeting-barrel; https://warcraft.wiki.gg/wiki/Gnoll_Targeting_Barrel

```lua
- 							163201,	-- Gnoll Targetting Barrel (TOY!)
+ 							163201,	-- Gnoll Targeting Barrel (TOY!)
```

### .contrib/.db/standard/02 - Outdoor Zones/11 Zandalar/1 Dazar'alor/World Quests.lua:80

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: Battle for Azeroth
- Verified flavor: Retail
- Content context: Battle for Azeroth
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Supplies Neeeded: Great Sea Catfish -> Supplies Needed: Great Sea Catfish
- Source: https://www.wowhead.com/quest=52382; https://warcraft.wiki.gg/wiki/Supplies_Needed:_Great_Sea_Catfish_(Horde)

```lua
- 			q(52382, {	-- Supplies Neeeded: Great Sea Catfish
+ 			q(52382, {	-- Supplies Needed: Great Sea Catfish
```

### .contrib/.db/standard/02 - Outdoor Zones/11 Zandalar/1 Dazar'alor/World Quests.lua:92

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: Battle for Azeroth
- Verified flavor: Retail
- Content context: Battle for Azeroth
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Supplies Neeeded: Mistscale -> Supplies Needed: Mistscale
- Source: https://www.wowhead.com/quest=51049; https://warcraft.wiki.gg/wiki/Supplies_Needed:_Mistscale_(Horde)

```lua
- 			q(51049, {	-- Supplies Neeeded: Mistscale
+ 			q(51049, {	-- Supplies Needed: Mistscale
```

### .contrib/.db/standard/02 - Outdoor Zones/11 Zandalar/Nazmir/Quests.lua:9

- Flavor: Shared standard source; editorial correction only; content context: Battle for Azeroth
- Verified flavor: not claimed for editorial correction
- Content context: Battle for Azeroth
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: someting -> something
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			-- *someting* unlocks "into the darkness" other than the pre-nazmir questline that starts from the dazar'alor scouting map. it was already available with no prereqs when i was in the middle of questing through zuldazar. figure out what quest triggers its availability, and figure out if it makes the scouting map questline invalid/if those should all be marked as breadcrumbs or with altQuests.
+ 			-- *something* unlocks "into the darkness" other than the pre-nazmir questline that starts from the dazar'alor scouting map. it was already available with no prereqs when i was in the middle of questing through zuldazar. figure out what quest triggers its availability, and figure out if it makes the scouting map questline invalid/if those should all be marked as breadcrumbs or with altQuests.
```

### .contrib/.db/standard/02 - Outdoor Zones/11 Zandalar/Vol'dun/Rares.lua:8

- Flavor: Shared standard source; editorial correction only; content context: Battle for Azeroth
- Verified flavor: not claimed for editorial correction
- Content context: Battle for Azeroth
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: infomration -> information; These is due to once you killing it on one character it would auto-complete your alts. -> This is because killing it on one character would auto-complete it for your alts.
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			-- Note: While these are all technically Achievement Criteria we don't want to use that in the infomration on whether you have killed it or not. These is due to once you killing it on one character it would auto-complete your alts. What we want to do is instead place it as a reward. This way it tracks if you did it for your account while also still telling you if you killed it on that toon.
+ 			-- Note: While these are all technically Achievement Criteria we don't want to use that in the information on whether you have killed it or not. This is because killing it on one character would auto-complete it for your alts. What we want to do is instead place it as a reward. This way it tracks if you did it for your account while also still telling you if you killed it on that toon.
```

### .contrib/.db/standard/02 - Outdoor Zones/11 Zandalar/Vol'dun/Vendors.lua:183

- Flavor: Shared standard source; editorial correction only; content context: Battle for Azeroth
- Verified flavor: not claimed for editorial correction
- Content context: Battle for Azeroth
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: theres -> there's
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					-- Common Vendor Item added here so theres at least one source for cost item same zone as the rare
+ 					-- Common Vendor Item added here so there's at least one source for cost item same zone as the rare
```

### .contrib/.db/standard/02 - Outdoor Zones/11 Zandalar/Zuldazar/Quests.lua:1560

- Flavor: Shared standard source; editorial correction only; content context: Battle for Azeroth
- Verified flavor: not claimed for editorial correction
- Content context: Battle for Azeroth
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: apperance -> appearance
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					-- i(175317),	-- Sea Raider's Helmet // Alliance apperance // Sourced under Proudmoore's Parley/Alliance Quest
+ 					-- i(175317),	-- Sea Raider's Helmet // Alliance appearance // Sourced under Proudmoore's Parley/Alliance Quest
```

### .contrib/.db/standard/02 - Outdoor Zones/11 Zandalar/Zuldazar/Quests.lua:1561

- Flavor: Shared standard source; editorial correction only; content context: Battle for Azeroth
- Verified flavor: not claimed for editorial correction
- Content context: Battle for Azeroth
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: apperance -> appearance
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					-- i(175319),	-- Sea Raider's Spaulders  // Alliance apperance // Sourced under Proudmoore's Parley/Alliance Quest
+ 					-- i(175319),	-- Sea Raider's Spaulders  // Alliance appearance // Sourced under Proudmoore's Parley/Alliance Quest
```

### .contrib/.db/standard/02 - Outdoor Zones/11 Zandalar/Zuldazar/Quests.lua:2030

- Flavor: Shared standard source; editorial correction only; content context: Battle for Azeroth
- Verified flavor: not claimed for editorial correction
- Content context: Battle for Azeroth
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: apperance -> appearance
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					-- i(175354),	-- Sea Raider's Breastplate // Alliance apperance // Listed under Tirisgarde Fairwind's "Friends" (Alliance Quest Reward)
+ 					-- i(175354),	-- Sea Raider's Breastplate // Alliance appearance // Listed under Tirisgarde Fairwind's "Friends" (Alliance Quest Reward)
```

### .contrib/.db/standard/02 - Outdoor Zones/12 Nazjatar/Treasure Chests.lua:99

- Flavor: Shared standard source; editorial correction only; content context: Battle for Azeroth
- Verified flavor: not claimed for editorial correction
- Content context: Battle for Azeroth
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: ontop -> on top
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "Use a |cFFFFD700Goblin Glider|r, |cFFFFD700Deepcoral Pod|r, or fly ontop of the rocks.",
+ 					["description"] = "Use a |cFFFFD700Goblin Glider|r, |cFFFFD700Deepcoral Pod|r, or fly on top of the rocks.",
```

### .contrib/.db/standard/02 - Outdoor Zones/13 Shadowlands/Achievements.lua:683

- Flavor: Shared standard source; editorial correction only; content context: Shadowlands
- Verified flavor: not claimed for editorial correction
- Content context: Shadowlands
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: TOOD -> TODO
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				-- TOOD: use new sources tech eventually
+ 				-- TODO: use new sources tech eventually
```

### .contrib/.db/standard/02 - Outdoor Zones/13 Shadowlands/Bastion/Treasure Chests.lua:327

- Flavor: Shared standard source; editorial correction only; content context: Shadowlands
- Verified flavor: not claimed for editorial correction
- Content context: Shadowlands
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Triggerd -> Triggered
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(60625),	-- Triggerd when looting chest at 41,67
+ 				q(60625),	-- Triggered when looting chest at 41,67
```

### .contrib/.db/standard/02 - Outdoor Zones/13 Shadowlands/Revendreth/World Quests.lua:198

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: Shadowlands
- Verified flavor: Retail
- Content context: Shadowlands
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Mining: Menacing Sinvyr Cluser -> Mining: Menacing Sinvyr Cluster
- Source: https://www.wowhead.com/quest=61538; https://warcraft.wiki.gg/wiki/Category:Mining_quests

```lua
- 			q(61538, {	-- Mining: Menacing Sinvyr Cluser
+ 			q(61538, {	-- Mining: Menacing Sinvyr Cluster
```

### .contrib/.db/standard/02 - Outdoor Zones/13 Shadowlands/Zereth Mortis/Treasure Chests.lua:46

- Flavor: Shared standard source; editorial correction only; content context: Shadowlands
- Verified flavor: not claimed for editorial correction
- Content context: Shadowlands
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Ontop -> On top
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "To open it you need to pick up a Jiro Hammer(189768). Ontop of the rock there is a repair tool that you can use to trade with the nearby Jiros(Hiu Fi 185151) for a Jiro Hammer.",
+ 				["description"] = "To open it you need to pick up a Jiro Hammer(189768). On top of the rock there is a repair tool that you can use to trade with the nearby Jiros(Hiu Fi 185151) for a Jiro Hammer.",
```

### .contrib/.db/standard/02 - Outdoor Zones/13 Shadowlands/Zereth Mortis/Treasure Chests.lua:134

- Flavor: Shared standard source; editorial correction only; content context: Shadowlands
- Verified flavor: not claimed for editorial correction
- Content context: Shadowlands
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: ontop -> on top
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "Jumping Puzzle, ontop of the tree ring.",
+ 				["description"] = "Jumping Puzzle, on top of the tree ring.",
```

### .contrib/.db/standard/02 - Outdoor Zones/13 Shadowlands/Zereth Mortis/Treasure Chests.lua:219

- Flavor: Shared standard source; editorial correction only; content context: Shadowlands
- Verified flavor: not claimed for editorial correction
- Content context: Shadowlands
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: ontop -> on top
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "You need flying/teleport to get here, ontop of the pillar.",
+ 				["description"] = "You need flying/teleport to get here, on top of the pillar.",
```

### .contrib/.db/standard/02 - Outdoor Zones/13 Shadowlands/Zereth Mortis/Treasure Chests.lua:229

- Flavor: Shared standard source; editorial correction only; content context: Shadowlands
- Verified flavor: not claimed for editorial correction
- Content context: Shadowlands
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: ontop -> on top
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "Jumping Puzzle. Go around to get ontop of the rock behind the treasure and jump down.",
+ 				["description"] = "Jumping Puzzle. Go around to get on top of the rock behind the treasure and jump down.",
```

### .contrib/.db/standard/02 - Outdoor Zones/13 Shadowlands/Zereth Mortis/Treasure Chests.lua:298

- Flavor: Shared standard source; editorial correction only; content context: Shadowlands
- Verified flavor: not claimed for editorial correction
- Content context: Shadowlands
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: ontop -> on top
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "Jumping Puzzle, climb ontop of the slumbering vault in Haven.",
+ 				["description"] = "Jumping Puzzle, climb on top of the slumbering vault in Haven.",
```

### .contrib/.db/standard/02 - Outdoor Zones/13 Shadowlands/Zereth Mortis/Treasure Chests.lua:318

- Flavor: Shared standard source; editorial correction only; content context: Shadowlands
- Verified flavor: not claimed for editorial correction
- Content context: Shadowlands
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: remaning -> remaining; sound queues -> sound cues; Broken Consonoles -> Broken Consoles
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "The Broken Automa next to chest will give you sound queues, press the remaning 4 Broken Consonoles in the correct order. With your back against the entrance:\nTOP RIGHT\nDOWN LEFT\nDOWN RIGHT\nTOP LEFT.",
+ 				["description"] = "The Broken Automa next to chest will give you sound cues, press the remaining 4 Broken Consoles in the correct order. With your back against the entrance:\nTOP RIGHT\nDOWN LEFT\nDOWN RIGHT\nTOP LEFT.",
```

### .contrib/.db/standard/02 - Outdoor Zones/13 Shadowlands/Zereth Mortis/Treasure Chests.lua:408

- Flavor: Shared standard source; editorial correction only; content context: Shadowlands
- Verified flavor: not claimed for editorial correction
- Content context: Shadowlands
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: multple -> multiple
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "Spawns in multple places.",
+ 				["description"] = "Spawns in multiple places.",
```

### .contrib/.db/standard/02 - Outdoor Zones/13 Shadowlands/Zereth Mortis/Treasure Chests.lua:621

- Flavor: Shared standard source; editorial correction only; content context: Shadowlands
- Verified flavor: not claimed for editorial correction
- Content context: Shadowlands
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: fragements -> fragments; Key fragements drops -> Key fragments drop
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "Key fragements drops in the area from mobs Sandworn Chest Key Fragment(190198)",
+ 				["description"] = "Key fragments drop in the area from mobs Sandworn Chest Key Fragment(190198)",
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/1 - Amirdrassil/Vendors.lua:12

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: aquire -> acquire
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					{"pop"},						-- Discard Header and aquire their children
+ 					{"pop"},						-- Discard Header and acquire their children
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/1 - Valdrakken/Quests.lua:573

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(72011),	-- triggeres when accepting 'The Ruby Feast!' (questID 71238) (spellID 391778 & 377492)
+ 				q(72011),	-- triggers when accepting 'The Ruby Feast!' (questID 71238) (spellID 391778 & 377492)
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/1 - Valdrakken/Vendors.lua:70

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: avaiable -> available
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["timeline"] = { REMOVED_PLUNDERSTORM_END },	-- Was added at the end of Plunderstorm. Previously was only avaiable if you had Renown 5 or higher of the Keg Leg Faction.
+ 				["timeline"] = { REMOVED_PLUNDERSTORM_END },	-- Was added at the end of Plunderstorm. Previously was only available if you had Renown 5 or higher of the Keg Leg Faction.
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/1 - Valdrakken/Whelp Daycare.lua:216

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Didnt -> Didn't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						i(205232),	-- Iggy (PET) [Didnt get item. Insta Learned him...]
+ 						i(205232),	-- Iggy (PET) [Didn't get item. Insta Learned him...]
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/Emerald Dream/Quests.lua:685

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: previouse -> previous
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			--[[ Rewards moved into two previouse quests and this one removed?
+ 			--[[ Rewards moved into two previous quests and this one removed?
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/Ohn'ahran Plains/Rares.lua:150

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: posibility -> possibility
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					{ 50.5, 70.2, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
+ 					{ 50.5, 70.2, OHNAHRAN_PLAINS },	-- Soil Spawn possibility
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/Ohn'ahran Plains/Rares.lua:151

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: posibility -> possibility
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					{ 52.7, 65.8, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
+ 					{ 52.7, 65.8, OHNAHRAN_PLAINS },	-- Soil Spawn possibility
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/Ohn'ahran Plains/Rares.lua:152

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: posibility -> possibility
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					{ 54.6, 69.4, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
+ 					{ 54.6, 69.4, OHNAHRAN_PLAINS },	-- Soil Spawn possibility
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/Ohn'ahran Plains/Rares.lua:153

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: posibility -> possibility
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					{ 52.1, 70.5, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
+ 					{ 52.1, 70.5, OHNAHRAN_PLAINS },	-- Soil Spawn possibility
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/Ohn'ahran Plains/Rares.lua:154

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: posibility -> possibility
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					{ 53.1, 72.0, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
+ 					{ 53.1, 72.0, OHNAHRAN_PLAINS },	-- Soil Spawn possibility
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/Ohn'ahran Plains/Rares.lua:155

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: posibility -> possibility
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					{ 49.7, 68.7, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
+ 					{ 49.7, 68.7, OHNAHRAN_PLAINS },	-- Soil Spawn possibility
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/Ohn'ahran Plains/Rares.lua:156

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: posibility -> possibility
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					{ 54.1, 66.9, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
+ 					{ 54.1, 66.9, OHNAHRAN_PLAINS },	-- Soil Spawn possibility
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/Ohn'ahran Plains/Rares.lua:157

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: posibility -> possibility
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					{ 53.77, 67.45, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
+ 					{ 53.77, 67.45, OHNAHRAN_PLAINS },	-- Soil Spawn possibility
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/The Azure Span/Quests.lua:492

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: CANT -> CAN'T
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(71015, {	-- All Brawn, No Brains [BUG QUEST CANT COMPLETE]
+ 				q(71015, {	-- All Brawn, No Brains [BUG QUEST CAN'T COMPLETE]
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/The Azure Span/Quests.lua:1501

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: disapear -> disappear
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					-- Quests to select next zone (Blizzard made them incompletable. They disapear once you choose any of the zones)
+ 					-- Quests to select next zone (Blizzard made them incompletable. They disappear once you choose any of the zones)
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/The Forbidden Reach/Zskera Vaults.lua:298

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: negotatiating -> negotiating
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "Interact with Recipe Rat. It will only continue negotiations with enough Fine Aged Cheddar. Beware the rat will keep eating even when not negotatiating.\nIt is also possible to continue picking up and using the rat every 5 minutes while within the Vault to obtain scraps without using cheese.",
+ 					["description"] = "Interact with Recipe Rat. It will only continue negotiations with enough Fine Aged Cheddar. Beware the rat will keep eating even when not negotiating.\nIt is also possible to continue picking up and using the rat every 5 minutes while within the Vault to obtain scraps without using cheese.",
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/The Waking Shores/Quests.lua:1155

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Wasnt -> Wasn't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["sourceQuests"] = { 66001 },	-- A Last Hope,	-- TODO: Wasnt available when picking up 65997, but available before 66001....
+ 				["sourceQuests"] = { 66001 },	-- A Last Hope,	-- TODO: Wasn't available when picking up 65997, but available before 66001....
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/The Waking Shores/Quests.lua:1539

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(72353),	-- triggeres during 'Adventuring in the Dragon Isles' (72293) when any zone is chosen by player (spellID 394163)
+ 				q(72353),	-- triggers during 'Adventuring in the Dragon Isles' (72293) when any zone is chosen by player (spellID 394163)
```

### .contrib/.db/standard/02 - Outdoor Zones/14 Dragon Isles/The Waking Shores/Rares.lua:140

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: dieing -> dying; doesnt -> doesn't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["groups"] = {	-- He "drops" 4 rare npcs upon dieing, but they have no drops. CRS doesnt seem useful
+ 				["groups"] = {	-- He "drops" 4 rare npcs upon dying, but they have no drops. CRS doesn't seem useful
```

### .contrib/.db/standard/02 - Outdoor Zones/15 Khaz Algar/Hallowfall/Treasures.lua:56

- Flavor: Shared standard source; editorial correction only; content context: The War Within
- Verified flavor: not claimed for editorial correction
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Interract -> Interact
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "Inside the cave. Interract with the book and start the ritual. Survive the attack and kill the shadows.",
+ 				["description"] = "Inside the cave. Interact with the book and start the ritual. Survive the attack and kill the shadows.",
```

### .contrib/.db/standard/02 - Outdoor Zones/15 Khaz Algar/Isle of Dorn/Quests.lua:1107

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: The War Within
- Verified flavor: Retail
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Not Enought Minerals -> Not Enough Minerals
- Source: https://www.wowhead.com/quest=83081; https://warcraft.wiki.gg/wiki/Not_Enough_Minerals

```lua
- 			q(83081, {	-- Not Enought Minerals
+ 			q(83081, {	-- Not Enough Minerals
```

### .contrib/.db/standard/02 - Outdoor Zones/15 Khaz Algar/Isle of Dorn/Quests.lua:1119

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: The War Within
- Verified flavor: Retail
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Not Enought Minerals -> Not Enough Minerals
- Source: https://www.wowhead.com/quest=83081; https://warcraft.wiki.gg/wiki/Not_Enough_Minerals

```lua
- 					83081,	-- Not Enought Minerals
+ 					83081,	-- Not Enough Minerals
```

### .contrib/.db/standard/02 - Outdoor Zones/15 Khaz Algar/Isle of Dorn/Quests.lua:1126

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: The War Within
- Verified flavor: Retail
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Not Enought Minerals -> Golgrin's Reach
- Source: https://www.wowhead.com/quest=78465; https://warcraft.wiki.gg/wiki/Golgrin%27s_Reach_%28quest%29

```lua
- 				["sourceQuests"] = { 78465 },	-- Not Enought Minerals
+ 				["sourceQuests"] = { 78465 },	-- Golgrin's Reach
```

### .contrib/.db/standard/02 - Outdoor Zones/15 Khaz Algar/Isle of Dorn/Quests.lua:1142

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: The War Within
- Verified flavor: Retail
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Not Enought Minerals -> Golgrin's Reach
- Source: https://www.wowhead.com/quest=78465; https://warcraft.wiki.gg/wiki/Golgrin%27s_Reach_%28quest%29

```lua
- 				["sourceQuests"] = { 78465 },	-- Not Enought Minerals
+ 				["sourceQuests"] = { 78465 },	-- Golgrin's Reach
```

### .contrib/.db/standard/02 - Outdoor Zones/15 Khaz Algar/K'aresh/Rares.lua:54

- Flavor: Shared standard source; editorial correction only; content context: The War Within
- Verified flavor: not claimed for editorial correction
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: interract -> interact
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "You need to interract with Spectral Lantern, Dewminder, Earthy Succulent, and Windcatcher inside The Oasis. Their positions are marked on the minimap.\nOnce you have obtained the buffs, you can summon Heka'tamos at the Brazier of Elemental Union near his spawn point.",
+ 				["description"] = "You need to interact with Spectral Lantern, Dewminder, Earthy Succulent, and Windcatcher inside The Oasis. Their positions are marked on the minimap.\nOnce you have obtained the buffs, you can summon Heka'tamos at the Brazier of Elemental Union near his spawn point.",
```

### .contrib/.db/standard/02 - Outdoor Zones/15 Khaz Algar/K'aresh/Treasures.lua:19

- Flavor: Shared standard source; editorial correction only; content context: The War Within
- Verified flavor: not claimed for editorial correction
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Groupping -> Grouping
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				-- Groupping these together since they are all part of the same treasure
+ 				-- Grouping these together since they are all part of the same treasure
```

### .contrib/.db/standard/02 - Outdoor Zones/15 Khaz Algar/Siren Isle/Quests.lua:209

- Flavor: Shared standard source; editorial correction only; content context: The War Within
- Verified flavor: not claimed for editorial correction
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: assigment -> assignment
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				-- TODO: I'm still not sure what exactly trigger it. It could be first filled bar for special assigment?
+ 				-- TODO: I'm still not sure what exactly trigger it. It could be first filled bar for special assignment?
```

### .contrib/.db/standard/02 - Outdoor Zones/15 Khaz Algar/Siren Isle/Quests.lua:457

- Flavor: Shared standard source; editorial correction only; content context: The War Within
- Verified flavor: not claimed for editorial correction
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Assigment -> Assignment
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(85070),	-- when Special Assigment npc unlocked for storm phase (pop talking head)
+ 				q(85070),	-- when Special Assignment npc unlocked for storm phase (pop talking head)
```

### .contrib/.db/standard/02 - Outdoor Zones/15 Khaz Algar/The Ringing Deeps/Quests.lua:1428

- Flavor: Shared standard source; editorial correction only; content context: The War Within
- Verified flavor: not claimed for editorial correction
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: speach -> speech
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(82652),	-- 'Stay a while and listen' - Brennok, in the end of whole speach during questID 80682 (One Last Story)
+ 				q(82652),	-- 'Stay a while and listen' - Brennok, in the end of whole speech during questID 80682 (One Last Story)
```

### .contrib/.db/standard/02 - Outdoor Zones/15 Khaz Algar/The Ringing Deeps/World Quests.lua:162

- Flavor: Shared standard source; editorial correction only; content context: The War Within
- Verified flavor: not claimed for editorial correction
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Triggeres -> Triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(83501),	-- Triggeres with 'Hanging Tight' (achievementID 40507)
+ 				q(83501),	-- Triggers with 'Hanging Tight' (achievementID 40507)
```

### .contrib/.db/standard/02 - Outdoor Zones/15 Khaz Algar/Undermine/Quests.lua:1656

- Flavor: Shared standard source; editorial correction only; content context: The War Within
- Verified flavor: not claimed for editorial correction
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Assigment -> Assignment
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				-- Special Assigment Unlock trackers
+ 				-- Special Assignment Unlock trackers
```

### .contrib/.db/standard/02 - Outdoor Zones/15 Khaz Algar/Undermine/SCRAP.lua:30

- Flavor: Shared standard source; editorial correction only; content context: The War Within
- Verified flavor: not claimed for editorial correction
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: obstables -> obstacles
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			["description"] = "Frequently around the zone a pile of scrap will be marked on the map, ready for excavation. Once started, there is a two minute timer to dig up as much as possible, clearing obstables and dodging projectiles. Renown unlocks new drops and efficiency upgrades, and a rare mob can sometimes spawn at max excavation progress.",
+ 			["description"] = "Frequently around the zone a pile of scrap will be marked on the map, ready for excavation. Once started, there is a two minute timer to dig up as much as possible, clearing obstacles and dodging projectiles. Renown unlocks new drops and efficiency upgrades, and a rare mob can sometimes spawn at max excavation progress.",
```

### .contrib/.db/standard/02 - Outdoor Zones/15 Khaz Algar/Undermine/World Quests.lua:227

- Flavor: Shared standard source; editorial correction only; content context: The War Within
- Verified flavor: not claimed for editorial correction
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Assigments -> Assignments
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				-- Special Assigments
+ 				-- Special Assignments
```

### .contrib/.db/standard/02 - Outdoor Zones/16 Quel'Thalas/Harandar/Legends of the Haranir.lua:420

- Flavor: Shared standard source; editorial correction only; content context: Midnight
- Verified flavor: not claimed for editorial correction
- Content context: Midnight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: chosing -> choosing
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(89266, name(HEADERS.NPC,241213,{isWeekly=true})),	-- Triggered after chosing 'Wey'nan's Ward' during 'Lost Legends' (89268)
+ 				q(89266, name(HEADERS.NPC,241213,{isWeekly=true})),	-- Triggered after choosing 'Wey'nan's Ward' during 'Lost Legends' (89268)
```

### .contrib/.db/standard/02 - Outdoor Zones/16 Quel'Thalas/Harandar/Legends of the Haranir.lua:421

- Flavor: Shared standard source; editorial correction only; content context: Midnight
- Verified flavor: not claimed for editorial correction
- Content context: Midnight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: chosing -> choosing
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(91049, name(HEADERS.NPC,243491,{isWeekly=true})),	-- Triggered after chosing 'Cauldron of Echoes' during 'Lost Legends' (89268)
+ 				q(91049, name(HEADERS.NPC,243491,{isWeekly=true})),	-- Triggered after choosing 'Cauldron of Echoes' during 'Lost Legends' (89268)
```

### .contrib/.db/standard/02 - Outdoor Zones/16 Quel'Thalas/Harandar/Legends of the Haranir.lua:422

- Flavor: Shared standard source; editorial correction only; content context: Midnight
- Verified flavor: not claimed for editorial correction
- Content context: Midnight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: chosing -> choosing
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(91516, name(HEADERS.NPC,243540,{isWeekly=true})),	-- Triggered after chosing 'The Echoless Flame' during 'Lost Legends' (89268)
+ 				q(91516, name(HEADERS.NPC,243540,{isWeekly=true})),	-- Triggered after choosing 'The Echoless Flame' during 'Lost Legends' (89268)
```

### .contrib/.db/standard/02 - Outdoor Zones/16 Quel'Thalas/Harandar/Legends of the Haranir.lua:423

- Flavor: Shared standard source; editorial correction only; content context: Midnight
- Verified flavor: not claimed for editorial correction
- Content context: Midnight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: chosing -> choosing
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(91517, name(HEADERS.NPC,243542,{isWeekly=true})),	-- Triggered after chosing 'Russula's Outreach' during 'Lost Legends' (89268)
+ 				q(91517, name(HEADERS.NPC,243542,{isWeekly=true})),	-- Triggered after choosing 'Russula's Outreach' during 'Lost Legends' (89268)
```

### .contrib/.db/standard/02 - Outdoor Zones/16 Quel'Thalas/Harandar/Legends of the Haranir.lua:424

- Flavor: Shared standard source; editorial correction only; content context: Midnight
- Verified flavor: not claimed for editorial correction
- Content context: Midnight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: chosing -> choosing
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(91455, name(HEADERS.NPC,243514,{isWeekly=true})),	-- Triggered after chosing 'Aln'hara's Bloom' during 'Lost Legends' (89268)
+ 				q(91455, name(HEADERS.NPC,243514,{isWeekly=true})),	-- Triggered after choosing 'Aln'hara's Bloom' during 'Lost Legends' (89268)
```

### .contrib/.db/standard/02 - Outdoor Zones/16 Quel'Thalas/Harandar/Legends of the Haranir.lua:425

- Flavor: Shared standard source; editorial correction only; content context: Midnight
- Verified flavor: not claimed for editorial correction
- Content context: Midnight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: chosing -> choosing
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(91518, name(HEADERS.NPC,243544,{isWeekly=true})),	-- Triggered after chosing 'Root of the World' during 'Lost Legends' (89268)
+ 				q(91518, name(HEADERS.NPC,243544,{isWeekly=true})),	-- Triggered after choosing 'Root of the World' during 'Lost Legends' (89268)
```

### .contrib/.db/standard/02 - Outdoor Zones/16 Quel'Thalas/Harandar/Legends of the Haranir.lua:426

- Flavor: Shared standard source; editorial correction only; content context: Midnight
- Verified flavor: not claimed for editorial correction
- Content context: Midnight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: chosing -> choosing
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(91519, name(HEADERS.NPC,244728,{isWeekly=true})),	-- Triggered after chosing 'Sky's Hope' during 'Lost Legends' (89268)
+ 				q(91519, name(HEADERS.NPC,244728,{isWeekly=true})),	-- Triggered after choosing 'Sky's Hope' during 'Lost Legends' (89268)
```

### .contrib/.db/standard/02 - Outdoor Zones/16 Quel'Thalas/Harandar/Legends of the Haranir.lua:428

- Flavor: Shared standard source; editorial correction only; content context: Midnight
- Verified flavor: not claimed for editorial correction
- Content context: Midnight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: chosing -> choosing
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(91053, name(HEADERS.Quest,88993)),	-- Triggered after turning in 'Lost Legends' (89268), after chosing 'Wey'nan's Ward'
+ 				q(91053, name(HEADERS.Quest,88993)),	-- Triggered after turning in 'Lost Legends' (89268), after choosing 'Wey'nan's Ward'
```

### .contrib/.db/standard/02 - Outdoor Zones/16 Quel'Thalas/Harandar/Legends of the Haranir.lua:429

- Flavor: Shared standard source; editorial correction only; content context: Midnight
- Verified flavor: not claimed for editorial correction
- Content context: Midnight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: chosing -> choosing
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(91054, name(HEADERS.Quest,88994)),	-- Triggered after turning in 'Lost Legends' (89268), after chosing 'Bubbling Haranir Cauldron'
+ 				q(91054, name(HEADERS.Quest,88994)),	-- Triggered after turning in 'Lost Legends' (89268), after choosing 'Bubbling Haranir Cauldron'
```

### .contrib/.db/standard/02 - Outdoor Zones/16 Quel'Thalas/Harandar/Quests.lua:1444

- Flavor: Shared standard source; editorial correction only; content context: Midnight
- Verified flavor: not claimed for editorial correction
- Content context: Midnight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: swtiches -> switches
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(92712),	-- after turn in questID 86929 (The Council Assembles), could be some phase swtiches or faction renown?
+ 				q(92712),	-- after turn in questID 86929 (The Council Assembles), could be some phase switches or faction renown?
```

### .contrib/.db/standard/02 - Outdoor Zones/16 Quel'Thalas/Zul'Aman/Treasures.lua:269

- Flavor: Shared standard source; editorial correction only; content context: Midnight
- Verified flavor: not claimed for editorial correction
- Content context: Midnight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Acces -> Access
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			o(539042, {	-- Ruz'avalt's Prized Tackle	-- TODO: Present but un-interactable on Early Acces, Removed at Full Launch.
+ 			o(539042, {	-- Ruz'avalt's Prized Tackle	-- TODO: Present but un-interactable on Early Access, Removed at Full Launch.
```

### .contrib/.db/standard/03 - World Drops/01 Rooted/1 - Classic.lua:4529

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Cataclysm Classic, Mists Classic; runtime timelines unchanged; local guard: NOT (BEFORE 4.0.3) AND ELSE
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Northen -> Northern
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				{ 37.5, 56.2, BLASTED_LANDS },	-- Northen Tainted Forest
+ 				{ 37.5, 56.2, BLASTED_LANDS },	-- Northern Tainted Forest
```

### .contrib/.db/standard/03 - World Drops/01 Rooted/1 - Classic.lua:4578

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Cataclysm Classic, Mists Classic; runtime timelines unchanged; local guard: NOT (BEFORE 4.0.3) AND ELSE
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Northen -> Northern
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				{ 37.5, 56.2, BLASTED_LANDS },	-- Northen Tainted Forest
+ 				{ 37.5, 56.2, BLASTED_LANDS },	-- Northern Tainted Forest
```

### .contrib/.db/standard/03 - World Drops/01 Rooted/1 - Classic.lua:5006

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Northen -> Northern
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				{ 47.1, 42.0, TANARIS },	-- Northen Abyssal Sands
+ 				{ 47.1, 42.0, TANARIS },	-- Northern Abyssal Sands
```

### .contrib/.db/standard/03 - World Drops/01 Rooted/1 - Classic.lua:5188

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Northen -> Northern
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				{ 47.1, 42.0, TANARIS },	-- Northen Abyssal Sands
+ 				{ 47.1, 42.0, TANARIS },	-- Northern Abyssal Sands
```

### .contrib/.db/standard/03 - World Drops/07 - Legion.lua:212

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Recommened -> Recommended; Drops Naga's in -> Drops from naga in; the Naga's before -> the naga before
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "Drops Naga's in any Broken Isles zone. Recommened to farm the Naga's before the first Boss in the Eye of Azshara Dungeon.",
+ 				["description"] = "Drops from naga in any Broken Isles zone. Recommended to farm the naga before the first Boss in the Eye of Azshara Dungeon.",
```

### .contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/Battlefield.lua:32

- Flavor: Shared standard source; editorial correction only; content context: Mists of Pandaria
- Verified flavor: not claimed for editorial correction
- Content context: Mists of Pandaria
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: occured -> occurred; a big battle occured in Barrens -> a big battle occurred in the Barrens
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 		["description"] = "During 5.3 a big battle occured in Barrens.",
+ 		["description"] = "During 5.3 a big battle occurred in the Barrens.",
```

### .contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/Krasarang Wilds Campaign.lua:1391

- Flavor: Shared standard source; editorial correction only; content context: Mists of Pandaria
- Verified flavor: not claimed for editorial correction
- Content context: Mists of Pandaria
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(32357),	-- Tracking Event: Event Complete - triggeres after watching the RP after turning in "Heart of the Alliance" (questID 32316)
+ 				q(32357),	-- Tracking Event: Event Complete - triggers after watching the RP after turning in "Heart of the Alliance" (questID 32316)
```

### .contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/Krasarang Wilds Campaign.lua:1392

- Flavor: Shared standard source; editorial correction only; content context: Mists of Pandaria
- Verified flavor: not claimed for editorial correction
- Content context: Mists of Pandaria
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(32356),	-- Tracking Event: Ambassadors Summoned - triggeres  "Heart of the Alliance" completion
+ 				q(32356),	-- Tracking Event: Ambassadors Summoned - triggers  "Heart of the Alliance" completion
```

### .contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/Scenario.lua:1343

- Flavor: Shared standard source; editorial correction only; content context: Mists of Pandaria
- Verified flavor: not claimed for editorial correction
- Content context: Mists of Pandaria
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 		q(32817),	-- Complete "Loyalty" Scenario - triggeres when turning in "The King and the Council"
+ 		q(32817),	-- Complete "Loyalty" Scenario - triggers when turning in "The King and the Council"
```

### .contrib/.db/standard/06 - Expansion Features/05 - Mists of Pandaria/Scenario.lua:1344

- Flavor: Shared standard source; editorial correction only; content context: Mists of Pandaria
- Verified flavor: not claimed for editorial correction
- Content context: Mists of Pandaria
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 		q(32818),	-- Complete "The Dark Heart of Pandaria" Scenario - triggeres when turning in "The Warchief and the Darkness"
+ 		q(32818),	-- Complete "The Dark Heart of Pandaria" Scenario - triggers when turning in "The Warchief and the Darkness"
```

### .contrib/.db/standard/06 - Expansion Features/06 - Warlords of Draenor/Draenor Garrison/Common/Quests.lua:1996

- Flavor: Shared standard source; editorial correction only; content context: Warlords of Draenor
- Verified flavor: not claimed for editorial correction
- Content context: Warlords of Draenor
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: seconday -> secondary
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "Becomes available after completing any seconday profession intro quest.",
+ 				["description"] = "Becomes available after completing any secondary profession intro quest.",
```

### .contrib/.db/standard/06 - Expansion Features/06 - Warlords of Draenor/Draenor Garrison/Common/Quests.lua:2007

- Flavor: Shared standard source; editorial correction only; content context: Warlords of Draenor
- Verified flavor: not claimed for editorial correction
- Content context: Warlords of Draenor
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: seconday -> secondary
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "Becomes available after completing any seconday profession intro quest.",
+ 				["description"] = "Becomes available after completing any secondary profession intro quest.",
```

### .contrib/.db/standard/06 - Expansion Features/07 - Legion/Legion Class Halls/Druid/The Dreamgrove (Druid).lua:806

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: infront -> in front
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "Feral stone: Shapeshift into cat form and use Prowl.\nRestoration stone: Heal the sampling infront of the stone.\nBalance stone: Target the candles and use Moonfire.\nGuardian stone: Just be a Bear.",
+ 						["description"] = "Feral stone: Shapeshift into cat form and use Prowl.\nRestoration stone: Heal the sampling in front of the stone.\nBalance stone: Target the candles and use Moonfire.\nGuardian stone: Just be a Bear.",
```

### .contrib/.db/standard/06 - Expansion Features/07 - Legion/Legion Class Halls/Mardum The Shattered Abyss (Demon Hunter).lua:982

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: occassionaly -> occasionally
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 									["description"] = "While near Downfall his winds will keep you aloft while you fight him.\nHe will occassionaly knock you back. Make use of your glide ability and make sure you float back to (through) him, you will begin to float once you come near.\n\nWhen he dies his corpse will fall to the ground.",
+ 									["description"] = "While near Downfall his winds will keep you aloft while you fight him.\nHe will occasionally knock you back. Make use of your glide ability and make sure you float back to (through) him, you will begin to float once you come near.\n\nWhen he dies his corpse will fall to the ground.",
```

### .contrib/.db/standard/06 - Expansion Features/07 - Legion/Legion Class Halls/Shaman/The Heart Of Azeroth (Shaman).lua:972

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: commpleted -> completed
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			q(44396),	-- Tracking Quest: Thunderaan's Enemies 1 - commpleted the "Thunderaan's Enemies: Mistius" mission
+ 			q(44396),	-- Tracking Quest: Thunderaan's Enemies 1 - completed the "Thunderaan's Enemies: Mistius" mission
```

### .contrib/.db/standard/06 - Expansion Features/07 - Legion/Legion Class Halls/Shaman/The Heart Of Azeroth (Shaman).lua:973

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: commpleted -> completed
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			q(44397),	-- Tracking Quest: Thunderaan's Enemies 2 - commpleted the "Thunderaan's Enemies: Zeph" mission
+ 			q(44397),	-- Tracking Quest: Thunderaan's Enemies 2 - completed the "Thunderaan's Enemies: Zeph" mission
```

### .contrib/.db/standard/06 - Expansion Features/07 - Legion/Legion Class Halls/Shaman/The Heart Of Azeroth (Shaman).lua:974

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: commpleted -> completed
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			q(44398),	-- Tracking Quest: Thunderaan's Enemies 3 - commpleted the "Thunderaan's Enemies: Alacris" mission
+ 			q(44398),	-- Tracking Quest: Thunderaan's Enemies 3 - completed the "Thunderaan's Enemies: Alacris" mission
```

### .contrib/.db/standard/06 - Expansion Features/07 - Legion/Legion Class Halls/Shaman/The Heart Of Azeroth (Shaman).lua:975

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: commpleted -> completed
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			q(44399),	-- Tracking Quest: Thunderaan's Enemies 4 - commpleted the "Thunderaan's Enemies: Tulmos" mission
+ 			q(44399),	-- Tracking Quest: Thunderaan's Enemies 4 - completed the "Thunderaan's Enemies: Tulmos" mission
```

### .contrib/.db/standard/06 - Expansion Features/07 - Legion/Legion Class Halls/Shaman/The Heart Of Azeroth (Shaman).lua:976

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			q(44499),	-- Snowfang Tracking Quest - triggeres after defeating Snowfang battle pet
+ 			q(44499),	-- Snowfang Tracking Quest - triggers after defeating Snowfang battle pet
```

### .contrib/.db/standard/06 - Expansion Features/07 - Legion/Legion Class Halls/Skyhold (Warrior).lua:337

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Choosen -> Chosen
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					-- Artifact Choosen
+ 					-- Artifact Chosen
```

### .contrib/.db/standard/06 - Expansion Features/07 - Legion/Legion Class Halls/The Hall Of Shadows (Rogue).lua:117

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Choosen -> Chosen
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					-- Artifact Choosen
+ 					-- Artifact Chosen
```

### .contrib/.db/standard/06 - Expansion Features/08 - Battle for Azeroth/06 N'Zoth Assaults/Vale of Eternal Blossoms.lua:944

- Flavor: Shared standard source; editorial correction only; content context: Battle for Azeroth
- Verified flavor: not claimed for editorial correction
- Content context: Battle for Azeroth
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: incase -> in case
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				--[[	-- NOTE: looks like blizzard messed this one up. Commenting it out incase they fix their bug, but this is currently obtainable
+ 				--[[	-- NOTE: looks like blizzard messed this one up. Commenting it out in case they fix their bug, but this is currently obtainable
```

### .contrib/.db/standard/06 - Expansion Features/09 - Shadowlands/01 Covenants/Covenant - Venthyr/Sanctum Upgrades/The Ember Court.lua:2555

- Flavor: Shared standard source; editorial correction only; content context: Shadowlands
- Verified flavor: not claimed for editorial correction
- Content context: Shadowlands
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: finishin -> finishing
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					-- q(61825),	-- During Ember Court after finishin Glimpse of the Wilds Niya's minigame
+ 					-- q(61825),	-- During Ember Court after finishing Glimpse of the Wilds Niya's minigame
```

### .contrib/.db/standard/06 - Expansion Features/10 - Dragonflight/03 Iskaara Tuskarr/Iskaara Fishing.lua:304

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: dissapear -> disappear
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					-- These "Recipes" show as learned, but when you have learned them, they dissapear causing ATT to think you no longer have them learned.
+ 					-- These "Recipes" show as learned, but when you have learned them, they disappear causing ATT to think you no longer have them learned.
```

### .contrib/.db/standard/06 - Expansion Features/10 - Dragonflight/03 Iskaara Tuskarr/Iskaara Fishing.lua:503

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: doesnt -> doesn't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 							--[[ Never got one from it and wowhead doesnt have data either. If confirmed, re-add them ~Gold Jan 2023
+ 							--[[ Never got one from it and wowhead doesn't have data either. If confirmed, re-add them ~Gold Jan 2023
```

### .contrib/.db/standard/06 - Expansion Features/11 - The War Within/Achievements.lua:373

- Flavor: Shared standard source; editorial correction only; content context: The War Within
- Verified flavor: not claimed for editorial correction
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: prefered -> preferred
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			-- INFO: The 4 harbinger achievements (which are feats of strength) were added at the start of 11.0.2 but didn't fire and showed a TODO in the name. They were corrected before 11.0.5. They could be timelined to the exact build if prefered but this is good enough.
+ 			-- INFO: The 4 harbinger achievements (which are feats of strength) were added at the start of 11.0.2 but didn't fire and showed a TODO in the name. They were corrected before 11.0.5. They could be timelined to the exact build if preferred but this is good enough.
```

### .contrib/.db/standard/07 - Events/Decor Duel/Decor Duel.lua:252

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: interracting -> interacting
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			q(93914),	-- Triggered after interracting with Gamesmaster Fleurian during 'Edification of the Worthy' (93907)
+ 			q(93914),	-- Triggered after interacting with Gamesmaster Fleurian during 'Edification of the Worthy' (93907)
```

### .contrib/.db/standard/07 - Events/Remix Legion/0 - Metadata.lua:10

- Flavor: Shared standard source; editorial correction only; content context: Legion Remix
- Verified flavor: not claimed for editorial correction
- Content context: Legion Remix
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: megaduneon -> megadungeon; ordinary compound spelling in editorial overview
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 	Phase 2 (21 Oct): Rise of the Nightfallen (7.1) — Insurrection campaign, Return to Karazhan megaduneon, Nighthold raid
+ 	Phase 2 (21 Oct): Rise of the Nightfallen (7.1) — Insurrection campaign, Return to Karazhan megadungeon, Nighthold raid
```

### .contrib/.db/standard/07 - Events/Remix Legion/0 - Metadata.lua:13

- Flavor: Shared standard source; editorial correction only; content context: Legion Remix
- Verified flavor: not claimed for editorial correction
- Content context: Legion Remix
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: colapses -> collapses
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 	Phase 5 ( 9 Dec): Infinite Echoes — Say your goodbyes and embrace the chaos for the final month of the remix as the timeline colapses
+ 	Phase 5 ( 9 Dec): Infinite Echoes — Say your goodbyes and embrace the chaos for the final month of the remix as the timeline collapses
```

### .contrib/.db/standard/07 - Events/Remix Legion/Dungeons Raids/8 - Invasion Points.lua:143

- Flavor: Shared standard source; editorial correction only; content context: Legion Remix
- Verified flavor: not claimed for editorial correction
- Content context: Legion Remix
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Triggeres -> Triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					q(92541, {["isDaily"] = true }),	-- Triggeres after killing any Greater Invasion Point boss
+ 					q(92541, {["isDaily"] = true }),	-- Triggers after killing any Greater Invasion Point boss
```

### .contrib/.db/standard/09 - Crafted Items/01 - Classic.lua:8611

- Flavor: Shared standard source; editorial correction only; content context: Classic world / flavor-specific extensions
- Verified flavor: not claimed for editorial correction
- Content context: Classic world / flavor-specific extensions
- Compilation scope: standard compile targets: Classic Era, Season of Discovery, TBC Classic, Wrath Classic; runtime timelines unchanged; local guard: BEFORE 4.0.3
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: reduntant -> redundant
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					{ 60.0, 72.0, ASHENVALE },	-- Moonwell of Cleansing (exists after 4.0.3, but reduntant on practicality.)
+ 					{ 60.0, 72.0, ASHENVALE },	-- Moonwell of Cleansing (exists after 4.0.3, but redundant on practicality.)
```

### .contrib/.db/standard/09 - Crafted Items/02 - Burning Crusade.lua:2572

- Flavor: Shared standard source; editorial correction only; content context: The Burning Crusade
- Verified flavor: not claimed for editorial correction
- Content context: The Burning Crusade
- Compilation scope: standard compile targets: Classic Era, Season of Discovery, TBC Classic, Wrath Classic; runtime timelines unchanged; local guard: BEFORE 4.0.3
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: reduntant -> redundant
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					{ 60.0, 72.0, ASHENVALE },	-- Moonwell of Cleansing (exists after 4.0.3, but reduntant on practicality.)
+ 					{ 60.0, 72.0, ASHENVALE },	-- Moonwell of Cleansing (exists after 4.0.3, but redundant on practicality.)
```

### .contrib/.db/standard/09 - Crafted Items/11 - The War Within.lua:2883

- Flavor: Shared standard source; editorial correction only; content context: The War Within
- Verified flavor: not claimed for editorial correction
- Content context: The War Within
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: wtih -> with
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			q(90664, {["timeline"]={ADDED_11_1_0_SEASONSTART}}),	-- Triggers wtih 90660 A Golden Circumstance
+ 			q(90664, {["timeline"]={ADDED_11_1_0_SEASONSTART}}),	-- Triggers with 90660 A Golden Circumstance
```

### .contrib/.db/standard/09 - Crafted Items/12 - Midnight.lua:2465

- Flavor: Shared standard source; editorial correction only; content context: Midnight
- Verified flavor: not claimed for editorial correction
- Content context: Midnight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: discernable -> discernible
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			-- Many 12.1 HQTs which flag and unflag for no discernable reason
+ 			-- Many 12.1 HQTs which flag and unflag for no discernible reason
```

### .contrib/.db/standard/10 - Professions/Alchemy.lua:410

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: infront -> in front
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			["description"] = "Need to bring a Skaggldrynk and drink infront of the boss door, located west section after Inquisitor Tormentorum.",
+ 			["description"] = "Need to bring a Skaggldrynk and drink in front of the boss door, located west section after Inquisitor Tormentorum.",
```

### .contrib/.db/standard/10 - Professions/Inscription.lua:1012

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged; local guard: AFTER WRATH
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: usuable -> usable; by Shaman's. -> by shamans.
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 	["description"] = "Currently this Technique can only be learned by Shaman's. We suggest submitting a bug report to Blizzard to have it usuable by all scribes like the other techniques.",
+ 	["description"] = "Currently this Technique can only be learned by shamans. We suggest submitting a bug report to Blizzard to have it usable by all scribes like the other techniques.",
```

### .contrib/.db/standard/10 - Professions/Inscription.lua:4759

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged; local guard: AFTER WRATH
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Beleive -> Believe
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["u"] = TRAINING,	-- Beleive this is tied to the Draenic Mortar
+ 					["u"] = TRAINING,	-- Believe this is tied to the Draenic Mortar
```

### .contrib/.db/standard/10 - Professions/Jewelcrafting.lua:435

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: Legion Argus (quest 48076); other sections span expansions
- Verified flavor: Retail
- Content context: Legion Argus (quest 48076); other sections span expansions
- Compilation scope: standard compile targets: Retail, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged; local guard: AFTER TBC
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: A Crowning Achievment -> A Crowning Achievement
- Source: https://www.wowhead.com/quest=48076; https://warcraft.wiki.gg/wiki/A_Crowning_Achievement

```lua
- 		q(48076, {	-- A Crowning Achievment
+ 		q(48076, {	-- A Crowning Achievement
```

### .contrib/.db/standard/10 - Professions/Jewelcrafting.lua:1429

- Flavor: Shared standard source; editorial correction only; content context: Legion Argus (quest 48076); other sections span expansions
- Verified flavor: not claimed for editorial correction
- Content context: Legion Argus (quest 48076); other sections span expansions
- Compilation scope: standard compile targets: Retail, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged; local guard: AFTER TBC
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: openning -> opening
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(40303),	-- FLAG - Prospecting 02 - triggered when completing a jewelcrafting world quest in Dalaran, triggered when openning 'Wyrmtongue Cache of Shiny Things' (itemID 153118)
+ 				q(40303),	-- FLAG - Prospecting 02 - triggered when completing a jewelcrafting world quest in Dalaran, triggered when opening 'Wyrmtongue Cache of Shiny Things' (itemID 153118)
```

### .contrib/.db/standard/10 - Professions/Leatherworking.lua:1700

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: recieving -> receiving; 15 minutes timer -> 15-minute timer; 15,30,45 minut of hour -> 15,30,45 minutes of the hour
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(55628),	-- Tracking Quest - 15 minutes timer for recieving 'Spirit of the Bested' from other rare kill again (itemID 168138) (resets every 00,15,30,45 minut of hour)
+ 				q(55628),	-- Tracking Quest - 15-minute timer for receiving 'Spirit of the Bested' from other rare kill again (itemID 168138) (resets every 00,15,30,45 minutes of the hour)
```

### .contrib/.db/standard/10 - Professions/Tailoring.lua:1070

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: awared -> awarded
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "Interact with the loom and complete the minigame to be awared this treasure.",
+ 				["description"] = "Interact with the loom and complete the minigame to be awarded this treasure.",
```

### .contrib/.db/standard/10 - Secrets/07 - Legion/Kosumoth the Hungering.lua:97

- Flavor: Shared standard source; editorial correction only; content context: Legion
- Verified flavor: not claimed for editorial correction
- Content context: Legion
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: throught -> through
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "|cFFFFFFFFStep 11:|r This step will send you to |cFFFFD700Eye of Azshara|r, the zone. Head to |cFFFFFFFF79.52, 89.31|r. Swim down to find a wrecked ship, you can swim into the ship between the anchor and the rock throught the seaweed. Swim up and to the platform above and through the hole on right side. Now swim through the seaweed hole on left and down. Turn around and swim under the beam then through the seaweed to the left. Click the  |cFFFFD700Hungering Orb|r that is on the right side in the water.",
+ 					["description"] = "|cFFFFFFFFStep 11:|r This step will send you to |cFFFFD700Eye of Azshara|r, the zone. Head to |cFFFFFFFF79.52, 89.31|r. Swim down to find a wrecked ship, you can swim into the ship between the anchor and the rock through the seaweed. Swim up and to the platform above and through the hole on right side. Now swim through the seaweed hole on left and down. Turn around and swim under the beam then through the seaweed to the left. Click the  |cFFFFD700Hungering Orb|r that is on the right side in the water.",
```

### .contrib/.db/standard/10 - Secrets/10 - Dragonflight/Secrets of Azeroth.lua:1065

- Flavor: Shared standard source; editorial correction only; content context: Dragonflight
- Verified flavor: not claimed for editorial correction
- Content context: Dragonflight
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Requries -> Requires
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["description"] = "Requries 3 people with Torch of Pyrreth to summon.",
+ 						["description"] = "Requires 3 people with Torch of Pyrreth to summon.",
```

### .contrib/.db/standard/10 - Secrets/Ratt's Revenge.lua:525

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: posession -> possession
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					["description"] = "In the center of the Karazhan Catacombs clock room, can only be seen with buffs from the Oddsight Focus, Starry-Eyed Goggles, and having posession of the Spare Key.",
+ 					["description"] = "In the center of the Karazhan Catacombs clock room, can only be seen with buffs from the Oddsight Focus, Starry-Eyed Goggles, and having possession of the Spare Key.",
```

### .contrib/.db/standard/11 - Character/Class Trials/09 - Shadowlands/Level 60 Boost.lua:347

- Flavor: Shared standard source; editorial correction only; content context: Shadowlands
- Verified flavor: not claimed for editorial correction
- Content context: Shadowlands
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: missplaced -> misplaced
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				--[[	Warlock items need further confirmation, since blizz missplaced all IDs for Level 50 Boost before. 154k IDs would make sense in comparison to other sets, but 170k would be all in NYI then.
+ 				--[[	Warlock items need further confirmation, since blizz misplaced all IDs for Level 50 Boost before. 154k IDs would make sense in comparison to other sets, but 170k would be all in NYI then.
```

### .contrib/.db/standard/11 - Character/New Character.lua:2186

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Triggeres -> Triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				q(74891),	-- Triggeres on the first use of 'Soar' spell after 10.0.7 to get the 'Aerial Halt' (spellID 403092)
+ 				q(74891),	-- Triggers on the first use of 'Soar' spell after 10.0.7 to get the 'Aerial Halt' (spellID 403092)
```

### .contrib/.db/standard/12 - Promotions/Collector's Editions.lua:1025

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: availble -> available
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						["timeline"] = { ADDED_8_3_7 },	-- Still availble to players that have the mount, able to share quest with others etc.
+ 						["timeline"] = { ADDED_8_3_7 },	-- Still available to players that have the mount, able to share quest with others etc.
```

### .contrib/.db/standard/12 - Promotions/Discord.lua:34

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged; local guard: BEFORE 12.1.0
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: useable -> usable
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			["description"] = "Quest is only available with an US IP. Codes are useable worldwide.\n\nIn the bottom left of your Discord Server list, click Discover & there click on the Quests tab to start the Quest for the Reward.\n\nStream World of Warcraft in Discord to a friend for 15 minutes.\n\nOnce you're in a Direct Message, Groupchat, or Server, simply choose 'Go Live' to stream World of Warcraft for 15 minutes - you'll have a progress bar that indicates how close you are to earning your transmog.\nUpon completion of the quest, you'll be given a code to redeem - head to the Battle.net launcher, click your profile in the top right, and choose 'Redeem Code.' From there, it's a quick copy and paste until the Crown of the Violet Rose is yours!\n\nPromotion is available from December 2nd, 2024 until December 9th, 2024 (11:59PM UTC).",
+ 			["description"] = "Quest is only available with an US IP. Codes are usable worldwide.\n\nIn the bottom left of your Discord Server list, click Discover & there click on the Quests tab to start the Quest for the Reward.\n\nStream World of Warcraft in Discord to a friend for 15 minutes.\n\nOnce you're in a Direct Message, Groupchat, or Server, simply choose 'Go Live' to stream World of Warcraft for 15 minutes - you'll have a progress bar that indicates how close you are to earning your transmog.\nUpon completion of the quest, you'll be given a code to redeem - head to the Battle.net launcher, click your profile in the top right, and choose 'Redeem Code.' From there, it's a quick copy and paste until the Crown of the Violet Rose is yours!\n\nPromotion is available from December 2nd, 2024 until December 9th, 2024 (11:59PM UTC).",
```

### .contrib/.db/standard/17 - NYI/Hidden Triggers/Hidden Achievement Triggers.lua:3212

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: 3nd -> 3rd
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			ach(19472),	-- 3nd level 80 on account (DNT)
+ 			ach(19472),	-- 3rd level 80 on account (DNT)
```

### .contrib/.db/standard/17 - NYI/Hidden Triggers/Hidden Achievement Triggers.lua:3966

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: 3nd -> 3rd
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			ach(42324),	-- 3nd level 90 on account (DNT)
+ 			ach(42324),	-- 3rd level 90 on account (DNT)
```

### .contrib/.db/standard/17 - NYI/Hidden Triggers/Hidden Quest Triggers.lua:42

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Classic Era, Season of Discovery, TBC Classic, Wrath Classic; runtime timelines unchanged; local guard: BEFORE CATA
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 		q(14438),	-- Sharing the Land (triggeres with 'Sharing the Land' questID 745)
+ 		q(14438),	-- Sharing the Land (triggers with 'Sharing the Land' questID 745)
```

### .contrib/.db/standard/17 - NYI/Hidden Triggers/Hidden Quest Triggers.lua:43

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Classic Era, Season of Discovery, TBC Classic, Wrath Classic; runtime timelines unchanged; local guard: BEFORE CATA
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: triggeres -> triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 		q(14439),	-- Journey into Thunder Bluff (triggeres with 'Journey into Thunder Bluff' questID 775)
+ 		q(14439),	-- Journey into Thunder Bluff (triggers with 'Journey into Thunder Bluff' questID 775)
```

### .contrib/.db/standard/17 - NYI/Hidden Triggers/Hidden Quest Triggers.lua:760

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: theres -> there's; an elistment -> an enlistment
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			q(79332, {["timeline"] = {ADDED_10_2_0}, ["repeatable"] = true}),	-- Triggers after winning a Brawl: Battleground Blitz (possibly only when theres an elistment bonus?)
+ 			q(79332, {["timeline"] = {ADDED_10_2_0}, ["repeatable"] = true}),	-- Triggers after winning a Brawl: Battleground Blitz (possibly only when there's an enlistment bonus?)
```

### .contrib/.db/standard/17 - NYI/Hidden Triggers/Hidden Quest Triggers.lua:769

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Triggeres -> Triggers
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 		q(95270, { ["isDaily"] = true, ["timeline"] = { ADDED_11_2_7 } }),	-- Triggeres literally anywhere for anything? (bountiful chest, killing boss, using items, finishing quests etc.)
+ 		q(95270, { ["isDaily"] = true, ["timeline"] = { ADDED_11_2_7 } }),	-- Triggers literally anywhere for anything? (bountiful chest, killing boss, using items, finishing quests etc.)
```

### .contrib/.db/standard/17 - NYI/Hidden Triggers/Hidden Quest Triggers.lua:991

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: doesnt -> doesn't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 		-- q(63389),	-- Person in Errors doesnt really remember
+ 		-- q(63389),	-- Person in Errors doesn't really remember
```

### .contrib/.db/standard/17 - NYI/Hidden Triggers/Hidden Quest Triggers.lua:992

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: doesnt -> doesn't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 		-- q(63390),	-- Person in Errors doesnt really remember
+ 		-- q(63390),	-- Person in Errors doesn't really remember
```

### .contrib/.db/standard/17 - NYI/Hidden Triggers/Hidden Quest Triggers.lua:993

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: doesnt -> doesn't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 		-- q(63391),	-- Person in Errors doesnt really remember
+ 		-- q(63391),	-- Person in Errors doesn't really remember
```

### .contrib/.db/standard/17 - NYI/NYI Explorations.lua:9

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Criterias -> Criteria
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 		--- These are used by Achievement Criterias ---
+ 		--- These are used by Achievement Criteria ---
```

### .contrib/.db/standard/17 - NYI/NYI Maps.lua:6

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: devided -> divided
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 	Maps are devided into 4 categories which are used ingame (https://wago.tools/db2/UiMap)
+ 	Maps are divided into 4 categories which are used ingame (https://wago.tools/db2/UiMap)
```

### .contrib/.db/standard/17 - NYI/NYI Misc.lua:434

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: verison -> version
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			i(175246),	-- N'lyeth, Sliver of N'Zoth (Unused verison)
+ 			i(175246),	-- N'lyeth, Sliver of N'Zoth (Unused version)
```

### .contrib/.db/standard/17 - NYI/NYI Professions/NYI Mining.lua:68

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Unkown -> Unknown
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					r(49253),	-- Unkown
+ 					r(49253),	-- Unknown
```

### .contrib/.db/standard/17 - NYI/NYI Professions/NYI Mining.lua:69

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Unkown -> Unknown
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					r(49254),	-- Unkown
+ 					r(49254),	-- Unknown
```

### .contrib/.db/standard/17 - NYI/NYI Professions/NYI Mining.lua:70

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Unkown -> Unknown
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					r(49255),	-- Unkown
+ 					r(49255),	-- Unknown
```

### .contrib/.db/standard/17 - NYI/NYI Professions/NYI Mining.lua:71

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Unkown -> Unknown
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					r(49260),	-- Unkown
+ 					r(49260),	-- Unknown
```

### .contrib/.db/standard/17 - NYI/NYI Professions/NYI Mining.lua:72

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Unkown -> Unknown
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					r(53417),	-- Unkown
+ 					r(53417),	-- Unknown
```

### .contrib/.db/standard/21 - Holidays/Brewfest.lua:3926

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged; local guard: AFTER 2.2.2
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: 1nd -> 1st
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			q(91959),	-- (Sometimes) Triggers along with 90118 when you kill Keggor the Fermented during Brewfest Banquet, 1nd kill of the day
+ 			q(91959),	-- (Sometimes) Triggers along with 90118 when you kill Keggor the Fermented during Brewfest Banquet, 1st kill of the day
```

### .contrib/.db/standard/21 - Holidays/Darkmoon Faire.lua:3034

- Flavor: Retail (Wowhead dataEnv=1 and Warcraft Wiki); content context: Darkmoon Faire; Finlay Coolshot introduced in Cataclysm 4.3
- Verified flavor: Retail
- Content context: Darkmoon Faire; Finlay Coolshot introduced in Cataclysm 4.3
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **2**
- Rationale: Finaly Coolshot -> Finlay Coolshot
- Source: https://www.wowhead.com/npc=54605; https://warcraft.wiki.gg/wiki/Finlay_Coolshot

```lua
- 				["qg"] = 54605,	-- Finaly Coolshot
+ 				["qg"] = 54605,	-- Finlay Coolshot
```

### .contrib/.db/standard/21 - Holidays/Dastardly Duos.lua:290

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: enought -> enough
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 			q(87527),	-- there also was crit for other achievements but I wasn't smart enought to log it
+ 			q(87527),	-- there also was crit for other achievements but I wasn't smart enough to log it
```

### .contrib/.db/standard/21 - Holidays/Feast of Winter Veil.lua:41

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Cataclysm Classic, Mists Classic; runtime timelines unchanged; local guard: ANYCLASSIC / AFTER 4.0.3 / BEFORE 6.0.2
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: criterias -> criteria
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- -- Crieve NOTE: The dumb shits at Blizzard shifted these achievement criterias for Cataclysm Classic
+ -- Crieve NOTE: The dumb shits at Blizzard shifted these achievement criteria for Cataclysm Classic
```

### .contrib/.db/standard/21 - Holidays/Feast of Winter Veil.lua:791

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: none among the seven current flavor configs; runtime timelines unchanged; local guard: AFTER 6.0.0 / NOT (AFTER 11.0.7) AND ELSE
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: cant -> can't
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				"If you have obtained both items but you didn't earn the achievement, try throwing both balls to a friend.\n\nIf you learned the toys on 2 different characters, the achievement cant be completed",
+ 				"If you have obtained both items but you didn't earn the achievement, try throwing both balls to a friend.\n\nIf you learned the toys on 2 different characters, the achievement can't be completed",
```

### .contrib/.db/standard/21 - Holidays/Hallow's End.lua:1553

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: programatic -> programmatic
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					-- Perhaps investigate a programatic solution? The garrison has different map IDs at different stages of creation.
+ 					-- Perhaps investigate a programmatic solution? The garrison has different map IDs at different stages of creation.
```

### .contrib/.db/standard/21 - Holidays/Kalu'ak Fishing Derby.lua:25

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: reenabled -> re-enabled
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 	["description"] = "The Kalu'ak Fishing Derby was a fishing event held every Saturday between 14:00 and 15:00 server time by the Kalu'ak. The objective was to be the first player to catch a Blacktip Shark and bring it to Elder Clearwater in Dalaran. It was introduced with Patch 3.3.0.\n\nDue to problems that occurred with the introduction of cross-realm zones, all fishing tournaments were disabled. When they were reenabled in Patch 5.1.0 however, the Stranglethorn Fishing Extravaganza had been redesigned to allow three winners, and included the rewards from winning the fishing derby. Thus, the Kalu'ak Fishing Derby became redundant, and was removed altogether.",
+ 	["description"] = "The Kalu'ak Fishing Derby was a fishing event held every Saturday between 14:00 and 15:00 server time by the Kalu'ak. The objective was to be the first player to catch a Blacktip Shark and bring it to Elder Clearwater in Dalaran. It was introduced with Patch 3.3.0.\n\nDue to problems that occurred with the introduction of cross-realm zones, all fishing tournaments were disabled. When they were re-enabled in Patch 5.1.0 however, the Stranglethorn Fishing Extravaganza had been redesigned to allow three winners, and included the rewards from winning the fishing derby. Thus, the Kalu'ak Fishing Derby became redundant, and was removed altogether.",
```

### .contrib/.db/standard/21 - Holidays/Love is in the Air.lua:1471

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: awared -> awarded
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					i(213091),	-- Memo from Apothecary Hummel [book] (awared to player after turn in this quest)
+ 					i(213091),	-- Memo from Apothecary Hummel [book] (awarded to player after turn in this quest)
```

### .contrib/.db/standard/21 - Holidays/Love is in the Air.lua:1553

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: awared -> awarded
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 					i(213091),	-- Memo from Apothecary Hummel [book] (awared to player after turn in this quest)
+ 					i(213091),	-- Memo from Apothecary Hummel [book] (awarded to player after turn in this quest)
```

### .contrib/.db/standard/21 - Holidays/Lunar Festival.lua:1019

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Cataclysm Classic, Mists Classic; runtime timelines unchanged; local guard: AFTER CATA
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: seperating -> separating
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 				["description"] = "The Elder is on the southern end of the central upper platform in Orgrimmar near the flight master. A visual clue for flying Alliance players is to look for the towering gate seperating Valley of Strength and the Drag.",
+ 				["description"] = "The Elder is on the southern end of the central upper platform in Orgrimmar near the flight master. A visual clue for flying Alliance players is to look for the towering gate separating Valley of Strength and the Drag.",
```

### .contrib/.db/standard/21 - Holidays/Timewalking.lua:4409

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Classic Era, Season of Discovery, TBC Classic, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: wierd -> weird
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 						-- This version requires confirmation, only the wierd one tagged as heroic timewalking might have made it in.
+ 						-- This version requires confirmation, only the weird one tagged as heroic timewalking might have made it in.
```

### .contrib/.db/standard/21 - Holidays/WoW Anniversary.lua:3948

- Flavor: Shared standard source; editorial correction only; content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Verified flavor: not claimed for editorial correction
- Content context: Shared world, profession, holiday or internal tracking source; expansion availability depends on inherited metadata
- Compilation scope: standard compile targets: Retail, Wrath Classic, Cataclysm Classic, Mists Classic; runtime timelines unchanged; local guard: AFTER 3.0.2
- Availability limit: Local preprocessor guards were evaluated separately from content context. Inherited timelines and parent conditions are not a complete proof of client availability; none were changed.
- Independent WoW source count: **0**
- Rationale: Interract -> Interact
- Source: Editorial English correction only (0 independent WoW sources; no gameplay fact claimed)

```lua
- 								["description"] = "Go to Zuldazar in Zandalar. At 54.3, 54.5 you will find Nikto. Buy Clam Digger and head upwards to 54.2, 54.2. Interract with Gerald and give him the drink.",
+ 								["description"] = "Go to Zuldazar in Zandalar. At 54.3, 54.5 you will find Nikto. Buy Clam Digger and head upwards to 54.2, 54.2. Interact with Gerald and give him the drink.",
```
