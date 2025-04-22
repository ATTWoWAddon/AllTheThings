---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- CRIEVE NOTE: Don't touch this file without asking.
-- Burden of Truth: Classic & TBC.
local SENSE_UNDEAD = recipe(5502);	-- Sense Undead
local ENCHANTING_VENDOR_GROUPS = {};
root(ROOTS.Zones, m(EASTERN_KINGDOMS, applyclassicphase(TBC_PHASE_ONE, {
	m(EVERSONG_WOODS, {
		["lore"] = "Eversong Woods is the starter zone for the Blood Elf race. It is a golden forest with typical high elf buildings. In the center of the map is a blighted strip known as the Dead Scar, a remnant from Arthas' battle against the High Elves. Quests involve learning about the blood elves' rich history, decadent lifestyle, and their struggles to keep the Dead Scar from growing.",
		["icon"] = 236762,
		["timeline"] = { ADDED_2_0_1 },
		["groups"] = {
			m(SUNSTRIDER_ISLE, {
				["lore"] = "Sunstrider Isle is an island located in northwestern Eversong Woods. After the Third War, no elf was alive on the isle. It was through here that the red dragon Korialstrasz flew over when Prince Kael'thas destroyed the corrupted Sunwell. By the year 25, the isle was reclaimed and thriving.",
				["icon"] = 135761,
				-- #if BEFORE MOP
				["zone-text-areas"] = {
					3431,	-- Sunstrider Isle
				},
				-- #endif
				["groups"] = {
					n(QUESTS, {
						q(8336, {	-- A Fistful of Slivers
							["qg"] = 15296,	-- Arcanist Ithanas
							["sourceQuest"] = 8326,	-- Unfortunate Measures
							["coords"] = {
								-- #if AFTER MOP
								{ 61.8, 39.4, SUNSTRIDER_ISLE },
								-- #else
								{ 38.3, 19.1, EVERSONG_WOODS },
								-- #endif
							},
							["races"] = { BLOODELF },
							["timeline"] = { ADDED_1_12_1, REMOVED_6_0_2 },
							["lvl"] = lvlsquish(2, 2, 1),
							["groups"] = {
								objective(1, {	-- 0/6 Arcane Sliver
									["provider"] = { "i", 20482 },	-- Arcane Sliver
									["crs"] = {
										15294,	-- Feral Tender
										15274,	-- Mana Wyrm
									},
								}),
								i(20991),	-- Daylight Cloak
							},
						}),
						q(37440, {	-- A Fistful of Slivers
							["qg"] = 15296,	-- Arcanist Ithanas
							["sourceQuest"] = 8326,	-- Unfortunate Measures
							["altQuests"] = { 8336 },	-- A Fistful of Slivers (original)
							["coords"] = {
								-- #if AFTER MOP
								{ 61.8, 39.4, SUNSTRIDER_ISLE },
								-- #else
								{ 38.3, 19.1, EVERSONG_WOODS },
								-- #endif
							},
							["races"] = { BLOODELF },
							["timeline"] = { ADDED_6_0_2 },
							["lvl"] = lvlsquish(2, 2, 1),
							["groups"] = {
								objective(1, {	-- 0/6 Arcane Sliver
									["provider"] = { "i", 20482 },	-- Arcane Sliver
									["crs"] = {
										15294,	-- Feral Tender
										15274,	-- Mana Wyrm
									},
								}),
								i(20991),	-- Daylight Cloak
							},
						}),
						q(8334, {	-- Aggression
							["qg"] = 15281,	-- Lanthan Perilon
							["sourceQuest"] = 8327,	-- Report to Lanthan Perilon
							["coords"] = {
								-- #if AFTER LEGION
								{ 52.8, 49.8, SUNSTRIDER_ISLE },
								-- #else
								{ 35.4, 22.4, EVERSONG_WOODS },
								-- #endif
							},
							["races"] = { BLOODELF },
							["lvl"] = lvlsquish(1, 1, 1),
							["groups"] = {
								objective(1, {	-- 0/7 Tender slain
									["provider"] = { "n", 15271 },	-- Tender
								}),
								objective(2, {	-- 0/7 Feral Tender slain
									["provider"] = { "n", 15294 },	-- Feral Tender
								}),
								i(20837),	-- Sunstrider Axe
								i(20836),	-- Sunstrider Dagger
								i(20840),	-- Sunstrider Mace
								i(20839),	-- Sunstrider Staff
								i(20835),	-- Sunstrider Sword
							},
						}),
						q(8347, {	-- Aiding the Outrunners
							["qg"] = 15281,	-- Lanthan Perilon
							["sourceQuest"] = 8335,	-- Felendren the Banished
							["coords"] = {
								-- #if AFTER LEGION
								{ 52.8, 49.8, SUNSTRIDER_ISLE },
								-- #else
								{ 35.4, 22.4, EVERSONG_WOODS },
								-- #endif
							},
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						-- #if AFTER CATA
						-- #if BEFORE MOP
						q(10068, {	-- Arcane Missiles (TBC) / Frost Nova (MOP) / Well Watcher Solanian (TBC)
							["qg"] = 15279,	-- Julia Sunstriker <Mage Trainer>
							["sourceQuest"] = 8328,	-- Mage Training
							["coords"] = {
								-- #if AFTER LEGION
								{ 64.6, 46.4, SUNSTRIDER_ISLE },
								-- #else
								{ 39.2, 21.5, EVERSONG_WOODS },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { MAGE },
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						-- #endif
						q(27091, {	-- Charge! (Cata+) / Well Watcher Solanian (TBC)
							["qg"] = 43010,	-- Delios Silverblade
							["sourceQuest"] = 8329,	-- Warrior Training
							["coords"] = {
								-- #if AFTER LEGION
								{ 64.8, 42.6, SUNSTRIDER_ISLE },
								-- #else
								{ 39.3, 20.1, EVERSONG_WOODS },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["classes"] = { WARRIOR },
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						-- #if AFTER MOP
						q(10073, {	-- Corruption (MOP) / Immolation (TBC) / Well Watcher Solanian (TBC)
							["qg"] = 15283,	-- Summoner Teli'Larien <Warlock Trainer>
							["sourceQuest"] = 8563,	-- Warlock Training
							["coords"] = {
								-- #if AFTER LEGION
								{ 63.8, 46.2, SUNSTRIDER_ISLE },
								-- #else
								{ 38.9, 21.4, EVERSONG_WOODS },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { WARLOCK },
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						-- #endif
						q(10071, {	-- Evisceration (Cata+) / Well Watcher Solanian (TBC)
							["qg"] = 15285,	-- Pathstalker Avokor <Rogue Trainer>
							["sourceQuest"] = 9392,	-- Rogue Training
							["coords"] = {
								-- #if AFTER LEGION
								{ 63.8, 42.2, SUNSTRIDER_ISLE },
								-- #else
								{ 38.9, 20.0, EVERSONG_WOODS },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { ROGUE },
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						-- #endif
						q(8335, {	-- Felendren the Banished
							["qg"] = 15281,	-- Lanthan Perilon
							["sourceQuest"] = 8334,	-- Aggression
							["coords"] = {
								-- #if AFTER LEGION
								{ 52.8, 49.8, SUNSTRIDER_ISLE },
								-- #else
								{ 35.4, 22.4, EVERSONG_WOODS },
								-- #endif
							},
							["races"] = { BLOODELF },
							["lvl"] = lvlsquish(3, 3, 1),
							["groups"] = {
								objective(1, {	-- 0/1 Felendren's Head
									["provider"] = { "i", 20799 },	-- Felendren's Head
									-- #if AFTER LEGION
									["coord"] = { 38.6, 64.6, SUNSTRIDER_ISLE },
									-- #else
									["coord"] = { 30.8, 27.1, EVERSONG_WOODS },
									-- #endif
									["cr"] = 15367,	-- Felendren the Banished
								}),
								i(20838),	-- Sunstrider Bow
								i(20841),	-- Sunstrider Shield
							},
						}),
						-- #if AFTER MOP
						q(10068, {	-- Frost Nova (MOP) / Arcane Missiles (Cata+) / Well Watcher Solanian (TBC)
							["qg"] = 15279,	-- Julia Sunstriker <Mage Trainer>
							["sourceQuest"] = 8328,	-- Mage Training
							["coords"] = {
								-- #if AFTER LEGION
								{ 64.6, 46.4, SUNSTRIDER_ISLE },
								-- #else
								{ 39.2, 21.5, EVERSONG_WOODS },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { MAGE },
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						-- #endif
						-- #if AFTER CATA
						-- #if BEFORE MOP
						q(10072, {	-- Healing the Wounded (Cata+) / Learning the Word (MOP) / Well Watcher Solanian (TBC)
							["qg"] = 15284,	-- Matron Arena <Priest Trainer>
							["sourceQuest"] = 8564,	-- Priest Training
							-- #if AFTER LEGION
							["coord"] = { 65.6, 43.8, SUNSTRIDER_ISLE },	-- Matron Arena <Priest Trainer>
							-- #else
							["coord"] = { 39.4, 20.4, EVERSONG_WOODS },	-- Matron Arena <Priest Trainer>
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { PRIEST },
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						-- #endif
						-- #endif
						q(9393, {	-- Hunter Training
							["qg"] = 15278,	-- Magistrix Erona
							-- #if AFTER MOP
							["coord"] = { 61.0, 45.1, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 38, 21, EVERSONG_WOODS },
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { HUNTER },
							["races"] = { BLOODELF },
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						-- #if BEFORE MOP
						-- #if AFTER CATA
						q(10073, {	-- Immolation (Cata+) / Corruption (MOP) / Well Watcher Solanian (TBC)
							["qg"] = 15283,	-- Summoner Teli'Larien <Warlock Trainer>
							["sourceQuest"] = 8563,	-- Warlock Training
							["coords"] = {
								-- #if AFTER LEGION
								{ 63.8, 46.2, SUNSTRIDER_ISLE },
								-- #else
								{ 38.9, 21.4, EVERSONG_WOODS },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { WARLOCK },
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						-- #endif
						-- #endif
						-- #if AFTER MOP
						q(10072, {	-- Learning the Word (MOP) / Healing the Wounded (Cata+) / Well Watcher Solanian (TBC)
							["qg"] = 15284,	-- Matron Arena <Priest Trainer>
							["sourceQuest"] = 8564,	-- Priest Training
							-- #if AFTER LEGION
							["coord"] = { 65.6, 43.8, SUNSTRIDER_ISLE },	-- Matron Arena <Priest Trainer>
							-- #else
							["coord"] = { 39.4, 20.4, EVERSONG_WOODS },	-- Matron Arena <Priest Trainer>
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { PRIEST },
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						-- #endif
						q(8328, {	-- Mage Training
							["qg"] = 15278,	-- Magistrix Erona
							-- #if AFTER MOP
							["coord"] = { 61.0, 45.1, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 38, 21, EVERSONG_WOODS },
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { MAGE },
							["races"] = { BLOODELF },
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						q(31170, {	-- Monk Training
							["qg"] = 15278,	-- Magistrix Erona
							["coord"] = { 61.0, 45.1, SUNSTRIDER_ISLE },
							["races"] = { BLOODELF },
							["classes"] = { MONK },
							["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						}),
						q(9676, {	-- Paladin Training
							["qg"] = 15278,	-- Magistrix Erona
							-- #if AFTER MOP
							["coord"] = { 61.0, 45.1, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 38, 21, EVERSONG_WOODS },
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { PALADIN },
							["races"] = { BLOODELF },
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						q(8564, {	-- Priest Training
							["qg"] = 15278,	-- Magistrix Erona
							-- #if AFTER MOP
							["coord"] = { 61.0, 45.1, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 38, 21, EVERSONG_WOODS },
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { PRIEST },
							["races"] = { BLOODELF },
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						q(8325, {	-- Reclaiming Sunstrider Isle
							["qg"] = 15278,	-- Magistrix Erona
							-- #if AFTER MOP
							["coord"] = { 61.0, 45.1, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 38, 21, EVERSONG_WOODS },
							-- #endif
							["races"] = { BLOODELF },
							["lvl"] = 1,
							["groups"] = {
								objective(1, {	-- 0/8 Mana Wyrm slain
									["provider"] = { "n", 15274 },	-- Mana Wyrm
								}),
								i(20997),	-- Green Chain Boots
								i(20998),	-- Wyrm Sash
							},
						}),
						q(8327, {	-- Report to Lanthan Perilon
							["qg"] = 15278,	-- Magistrix Erona
							["sourceQuest"] = 8326,	-- Unfortunate Measures
							-- #if AFTER MOP
							["coord"] = { 61.0, 45.1, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 38, 21, EVERSONG_WOODS },
							-- #endif
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							["lvl"] = lvlsquish(1, 1, 1),
						}),
						q(9392, {	-- Rogue Training
							["qg"] = 15278,	-- Magistrix Erona
							-- #if AFTER MOP
							["coord"] = { 61.0, 45.1, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 38, 21, EVERSONG_WOODS },
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { ROGUE },
							["races"] = { BLOODELF },
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						q(8330, {	-- Solanian's Belongings
							["qg"] = 15295,	-- Well Watcher Solanian
							["sourceQuests"] = {
								10070,	-- Well Watcher Solanian (TBC) / Steady Shot (Cata+)
								10068,	-- Well Watcher Solanian (TBC) / Frost Nova (MOP) / Arcane Missiles (Cata+)
								10069,	-- Well Watcher Solanian (TBC) / Ways of the Light (Cata+)
								10072,	-- Well Watcher Solanian (TBC) / Learning the Word (MOP) / Healing the Wounded (Cata+)
								10071,	-- Well Watcher Solanian (TBC) / Evisceration (Cata+)
								10073,	-- Well Watcher Solanian (TBC) / Immolation (Cata+) / Corruption (MOP)
								-- #if AFTER CATA
								27091,	-- Well Watcher Solanian (TBC) / Charge! (Cata+)
								-- #endif
							},
							-- #if AFTER LEGION
							["coord"] = { 64.0, 42.6, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 38.8, 19.4, EVERSONG_WOODS },
							-- #endif
							["races"] = { BLOODELF },
							["timeline"] = { ADDED_1_12_1, REMOVED_6_0_2 },
							["lvl"] = lvlsquish(2, 2, 1),
							["groups"] = {
								objective(1, {	-- Solanian's Scrying Orb
									["providers"] = {
										{ "i",  20470 },	-- Solanian's Scrying Orb
										{ "o", 180510 },	-- Solanian's Scrying Orb
									},
									-- #if AFTER LEGION
									["coord"] = { 52.1, 69.4, SUNSTRIDER_ISLE },
									-- #else
									["coord"] = { 35.1, 28.9, EVERSONG_WOODS },
									-- #endif
								}),
								objective(2, {	-- Scroll of Scourge Magic
									["providers"] = {
										{ "i",  20471 },	-- Scroll of Scourge Magic
										{ "o", 180511 },	-- Scroll of Scourge Magic
									},
									-- #if AFTER LEGION
									["coord"] = { 40.4, 50.2, SUNSTRIDER_ISLE },
									-- #else
									["coord"] = { 31.4, 22.8, EVERSONG_WOODS },
									-- #endif
								}),
								objective(3, {	-- Solanian's Journal
									["providers"] = {
										{ "i",  20472 },	-- Solanian's Journal
										{ "o", 180512 },	-- Solanian's Journal
									},
									-- #if AFTER LEGION
									["coord"] = { 59.9, 57.1, SUNSTRIDER_ISLE },
									-- #else
									["coord"] = { 37.7, 24.8, EVERSONG_WOODS },
									-- #endif
								}),
								i(20474),	-- Sunstrider Book Satchel
								-- added after removal of the quest
								-- i(131235, {	-- Sunspire Cinch
								-- 	["timeline"] = { ADDED_7_0_3 },
								-- }),
								i(20996),	-- Sunspire Cord
								i(20995),	-- Well Watcher Gloves
							},
						}),
						q(37443, {	-- Solanian's Belongings
							["qg"] = 15295,	-- Well Watcher Solanian
							["sourceQuest"] = 8326,	-- Unfortunate Measures
							["altQuests"] = { 8330 },	-- Solanian's Belongings (original)
							-- #if AFTER LEGION
							["coord"] = { 64.0, 42.6, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 38.8, 19.4, EVERSONG_WOODS },
							-- #endif
							["races"] = { BLOODELF },
							["timeline"] = { ADDED_6_0_2 },
							["lvl"] = lvlsquish(2, 2, 1),
							["groups"] = {
								objective(1, {	-- Solanian's Scrying Orb
									["providers"] = {
										{ "i",  20470 },	-- Solanian's Scrying Orb
										{ "o", 180510 },	-- Solanian's Scrying Orb
									},
									-- #if AFTER LEGION
									["coord"] = { 52.1, 69.4, SUNSTRIDER_ISLE },
									-- #else
									["coord"] = { 35.1, 28.9, EVERSONG_WOODS },
									-- #endif
								}),
								objective(2, {	-- Scroll of Scourge Magic
									["providers"] = {
										{ "i",  20471 },	-- Scroll of Scourge Magic
										{ "o", 180511 },	-- Scroll of Scourge Magic
									},
									-- #if AFTER LEGION
									["coord"] = { 40.4, 50.2, SUNSTRIDER_ISLE },
									-- #else
									["coord"] = { 31.4, 22.8, EVERSONG_WOODS },
									-- #endif
								}),
								objective(3, {	-- Solanian's Journal
									["providers"] = {
										{ "i",  20472 },	-- Solanian's Journal
										{ "o", 180512 },	-- Solanian's Journal
									},
									-- #if AFTER LEGION
									["coord"] = { 59.9, 57.1, SUNSTRIDER_ISLE },
									-- #else
									["coord"] = { 37.7, 24.8, EVERSONG_WOODS },
									-- #endif
								}),
								i(20474),	-- Sunstrider Book Satchel
								i(131235, {	-- Sunspire Cinch
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(20996),	-- Sunspire Cord
								i(20995),	-- Well Watcher Gloves
							},
						}),
						-- #if AFTER CATA
						q(10070, {	-- Steady Shot (Cata+) / Well Watcher Solanian (TBC)
							["qg"] = 15513,	-- Ranger Sallina <Hunter Trainer>
							["sourceQuest"] = 9393,	-- Hunter Training
							-- #if AFTER LEGION
							["coord"] = { 64.2, 42.2, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 39.0, 20.0, EVERSONG_WOODS },
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { HUNTER },
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							["lvl"] = lvlsquish(3, 3, 1),
						}),
						-- #endif
						q(8338, {	-- Tainted Arcane Sliver
							["provider"] = { "i", 20483 },	-- Tainted Arcane Sliver
							["races"] = { BLOODELF },
							["lvl"] = lvlsquish(1, 1, 1),
						}),
						q(8345, {	-- The Shrine of Dath'Remar
							["qg"] = 15295,	-- Well Watcher Solanian
							-- #if AFTER LEGION
							["coord"] = { 64.0, 42.6, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 38.8, 19.4, EVERSONG_WOODS },
							-- #endif
							["races"] = { BLOODELF },
							["timeline"] = { ADDED_1_12_1, REMOVED_6_0_2 },
							["lvl"] = lvlsquish(2, 2, 1),
							["groups"] = {
								objective(1, {	-- Shrine of Dath'Remar Read
									["provider"] = { "o", 180516 },	-- Shrine of Dath'Remar
									-- #if AFTER LEGION
									["coord"] = { 35.3, 40.2, SUNSTRIDER_ISLE },
									-- #else
									["coord"] = { 29.7, 19.4, EVERSONG_WOODS },
									-- #endif
								}),
							},
						}),
						q(37442, {	-- The Shrine of Dath'Remar
							["qg"] = 15295,	-- Well Watcher Solanian
							["sourceQuest"] = 8326,	-- Unfortunate Measures
							["altQuests"] = { 8345 },	-- The Shrine of Dath'Remar (original)
							-- #if AFTER LEGION
							["coord"] = { 64.0, 42.6, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 38.8, 19.4, EVERSONG_WOODS },
							-- #endif
							["races"] = { BLOODELF },
							["timeline"] = { ADDED_6_0_2 },
							["lvl"] = lvlsquish(2, 2, 1),
							["groups"] = {
								objective(1, {	-- Shrine of Dath'Remar Read
									["provider"] = { "o", 180516 },	-- Shrine of Dath'Remar
									-- #if AFTER LEGION
									["coord"] = { 35.3, 40.2, SUNSTRIDER_ISLE },
									-- #else
									["coord"] = { 29.7, 19.4, EVERSONG_WOODS },
									-- #endif
								}),
							},
						}),
						q(8346, {	-- Thirst Unending
							["qg"] = 15297,	-- Arcanist Helion
							["sourceQuest"] = 8326,	-- Unfortunate Measures
							-- #if AFTER LEGION
							["coord"] = { 58.6, 38.8, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 37.2, 19, EVERSONG_WOODS },
							-- #endif
							["races"] = { BLOODELF },
							["timeline"] = { ADDED_1_12_1, REMOVED_6_0_2 },
							["lvl"] = lvlsquish(2, 2, 1),
							["groups"] = {
								-- #if BEFORE CATA
								objective(1, {	-- 0/6 Mana Tap creature
									["spellID"] = 28734,	-- Mana Tap
									["crs"] = {
										15294,	-- Feral Tender
										15274,	-- Mana Wyrm
									},
								}),
								-- #endif
								i(20999),	-- Green Chain Gauntlets
								i(21001),	-- Striding Pants
								i(21000),	-- Vigorous Bracers
							},
						}),
						q(37439, {	-- Thirst Unending
							["qg"] = 15297,	-- Arcanist Helion
							["sourceQuest"] = 8326,	-- Unfortunate Measures
							["altQuests"] = { 8346 },	-- Thirst Unending (original)
							-- #if AFTER LEGION
							["coord"] = { 58.6, 38.8, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 37.2, 19, EVERSONG_WOODS },
							-- #endif
							["races"] = { BLOODELF },
							["timeline"] = { ADDED_6_0_2 },
							["lvl"] = lvlsquish(2, 2, 1),
							["groups"] = {
								i(20999),	-- Green Chain Gauntlets
								i(131236, {	-- Gleaming Chain Bindings
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(21001),	-- Striding Pants
								i(21000),	-- Vigorous Bracers
							},
						}),
						q(31171, {	-- Tiger Palm
							["qg"] = 63332,	-- Pao
							["coord"] = { 63.6, 42.6, SUNSTRIDER_ISLE },
							["races"] = { BLOODELF },
							["classes"] = { MONK },
							["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						}),
						q(8326, {	-- Unfortunate Measures
							["qg"] = 15278,	-- Magistrix Erona
							["sourceQuest"] = 8325,	-- Reclaiming Sunstrider Isle
							-- #if AFTER MOP
							["coord"] = { 61.0, 45.1, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 38, 21, EVERSONG_WOODS },
							-- #endif
							["races"] = { BLOODELF },
							["lvl"] = lvlsquish(1, 1, 1),
							["groups"] = {
								objective(1, {	-- 0/8 Lynx Collar
									["provider"] = { "i", 20797 },	-- Lynx Collar
									["crs"] = {
										15366,	-- Springpaw Cub
										15372,	-- Springpaw Lynx
									},
								}),
								i(20994),	-- Green Chain Vest
								i(20993),	-- Lynxskin Gloves
								i(20992),	-- Sunrise Bracers
								i(131818, {	-- Verdant Chain Gloves
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
						q(8563, {	-- Warlock Training
							["qg"] = 15278,	-- Magistrix Erona
							-- #if AFTER MOP
							["coord"] = { 61.0, 45.1, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 38, 21, EVERSONG_WOODS },
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { WARLOCK },
							["races"] = { BLOODELF },
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						-- #if AFTER CATA
						q(8329, {	-- Warrior Training
							["qg"] = 15278,	-- Magistrix Erona
							-- #if AFTER MOP
							["coord"] = { 61.0, 45.1, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 38, 21, EVERSONG_WOODS },
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { WARRIOR },
							["races"] = { BLOODELF },
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						-- #endif
						q(10069, {	-- Well Watcher Solanian (TBC) / Ways of the Light (Cata+)
							["qg"] = 15280,	-- Jesthenis Sunstriker <Paladin Trainer>
							["sourceQuest"] = 9676,	-- Paladin Training
							-- #if AFTER LEGION
							["coord"] = { 65.4, 43.8, SUNSTRIDER_ISLE },
							-- #else
							["coord"] = { 39.5, 20.6, EVERSONG_WOODS },
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { PALADIN },
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						-- #if BEFORE CATA
						q(10071, {	-- Well Watcher Solanian (TBC) / Evisceration (Cata+)
							["qg"] = 15285,	-- Pathstalker Avokor <Rogue Trainer>
							["sourceQuest"] = 9392,	-- Rogue Training
							["coords"] = {
								-- #if AFTER LEGION
								{ 63.8, 42.2, SUNSTRIDER_ISLE },
								-- #else
								{ 38.9, 20.0, EVERSONG_WOODS },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { ROGUE },
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						q(10068, {	-- Well Watcher Solanian (TBC) / Frost Nova (MOP) / Arcane Missiles (Cata+)
							["qg"] = 15279,	-- Julia Sunstriker <Mage Trainer>
							["sourceQuest"] = 8328,	-- Mage Training
							["coords"] = {
								-- #if AFTER LEGION
								{ 64.6, 46.4, SUNSTRIDER_ISLE },
								-- #else
								{ 39.2, 21.5, EVERSONG_WOODS },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { MAGE },
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						q(10073, {	-- Well Watcher Solanian (TBC) / Immolation (Cata+) / Corruption (MOP)
							["qg"] = 15283,	-- Summoner Teli'Larien <Warlock Trainer>
							["sourceQuest"] = 8563,	-- Warlock Training
							["coords"] = {
								-- #if AFTER LEGION
								{ 63.8, 46.2, SUNSTRIDER_ISLE },
								-- #else
								{ 38.9, 21.4, EVERSONG_WOODS },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { WARLOCK },
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						q(10072, {	-- Well Watcher Solanian (TBC) / Learning the Word (MOP) / Healing the Wounded (Cata+)
							["qg"] = 15284,	-- Matron Arena <Priest Trainer>
							["sourceQuest"] = 8564,	-- Priest Training
							-- #if AFTER LEGION
							["coord"] = { 65.6, 43.8, SUNSTRIDER_ISLE },	-- Matron Arena <Priest Trainer>
							-- #else
							["coord"] = { 39.4, 20.4, EVERSONG_WOODS },	-- Matron Arena <Priest Trainer>
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { PRIEST },
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						q(10070, {	-- Well Watcher Solanian (TBC) / Steady Shot (Cata+)
							["qg"] = 15513,	-- Ranger Sallina <Hunter Trainer>
							["sourceQuest"] = 9393,	-- Hunter Training
							-- #if AFTER LEGION
							["coord"] = { 64.2, 42.2, SUNSTRIDER_ISLE },	-- Ranger Sallina <Hunter Trainer>
							-- #else
							["coord"] = { 39.0, 20.0, EVERSONG_WOODS },	-- Ranger Sallina <Hunter Trainer>
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { HUNTER },
							["races"] = { BLOODELF },
							["isBreadcrumb"] = true,
							-- #if AFTER CATA
							["lvl"] = lvlsquish(3, 3, 1),
							-- #else
							["lvl"] = lvlsquish(2, 2, 1),
							-- #endif
						}),
						-- #endif
					}),
					n(VENDORS, {
						n(15292, {	-- Faraden Thelryn <Armorsmith>
							["coord"] = { 60.0, 38.6, SUNSTRIDER_ISLE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(20912),	-- Large Shield
								i(20911),	-- Light Guard
								i(20914),	-- Unadorned Chain Belt
								i(20915),	-- Unadorned Chain Boots
								i(20916),	-- Unadorned Chain Bracers
								i(20917),	-- Unadorned Chain Gloves
								i(20918),	-- Unadorned Chain Leggings
								i(20919),	-- Unadorned Chain Vest
							},
						}),
						n(15291, {	-- Jainthess Thelryn <Cloth & Leather Merchant>
							["coord"] = { 58.6, 38.8, SUNSTRIDER_ISLE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(20990),	-- Light Cloth Armor
								i(20989),	-- Light Cloth Belt
								i(20988),	-- Light Cloth Bracers
								i(20987),	-- Light Cloth Gloves
								i(20986),	-- Light Cloth Pants
								i(20985),	-- Light Cloth Shoes
								i(20920),	-- Sun Cured Belt
								i(20921),	-- Sun Cured Boots
								i(20922),	-- Sun Cured Bracers
								i(20923),	-- Sun Cured Gloves
								i(20924),	-- Sun Cured Pants
								i(20925),	-- Sun Cured Vest
							},
						}),
						n(15289, {	-- Raelis Dawnstar <Weaponsmith>
							["coord"] = { 60.6, 39.6, SUNSTRIDER_ISLE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(20850),	-- Arcane Forged Axe
								i(20852),	-- Arcane Forged Dirk
								i(20851),	-- Arcane Forged Mace
								i(20849),	-- Arcane Forged Shortsword
								i(20853),	-- Mana Gathering Staff
								i(20910),	-- Stiff Shortbow
							},
						}),
					}),
					n(ZONE_DROPS, {
						i(20483, {	-- Tainted Arcane Sliver
							["cr"] = 15298,	-- Tainted Arcane Wraith
						}),
					}),
					n(ZONE_DROPS, sharedData({
						-- #if AFTER 9.0.3
						["sharedDescription"] = "This item seem to only drop easily for characters below level 14 within Sunstrider Isle.",
						-- #endif
					}, {
						i(21002),	-- Unkempt Belt
						i(21003),	-- Unkempt Bracers
						i(21004),	-- Unkempt Cloak
						i(21005),	-- Unkempt Gloves
						i(21006),	-- Unkempt Pants
						i(21007),	-- Unkempt Robe
						i(21008),	-- Unkempt Shoes
						i(21009),	-- Scraggy Leather Belt
						i(21010),	-- Scraggy Leather Boots
						i(21011),	-- Scraggy Leather Bracers
						i(21012),	-- Scraggy Leather Gloves
						i(21013),	-- Scraggy Leather Pants
						i(21014),	-- Scraggy Leather Vest
						i(21015),	-- Shoddy Chain Belt
						i(21020),	-- Shoddy Chain Boots
						i(21019),	-- Shoddy Chain Bracers
						i(21018),	-- Shoddy Chain Gloves
						i(21017),	-- Shoddy Chain Pants
						i(21016),	-- Shoddy Chain Vest
						i(21021),	-- Battered Shield
						i(21022),	-- Weather Beaten Buckler
					})),
				},
			}),
			n(ACHIEVEMENTS, {
				explorationAch(859),	-- Explore Eversong Woods
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					459,	-- Cat (PET!)
					419,	-- Small Frog (PET!)
					387,	-- Snake (PET!)
					420,	-- Toad (PET!)
				}},
				["groups"] = {
					pet(460),	-- Ruby Sapling (PET!)
				},
			}),
			explorationHeader({
				exploration(3472),	-- Azurebreeze Coast
				exploration(3532),	-- Dawning Lane
				-- #if AFTER CATA
				exploration(3480),	-- Duskwither Grounds (Wrath Classic: Can't be collected)
				-- #endif
				exploration(3481, {	-- Duskwither Spire
					-- CRIEVE NOTE: Apparently you can't collect this at all. My warrior in wrath classic is the only character in the known universe with this area collected!
					["collectible"] = false,
				}),
				exploration(3467),	-- East Sanctum
				exploration(3558),	-- Elrendar Falls
				exploration(3462),	-- Fairbreeze Village
				exploration(3485),	-- Falthrien Academy
				exploration(3464),	-- Farstrider Retreat
				exploration(3534),	-- Feth's Way
				exploration(3460),	-- Golden Strand
				exploration(3912),	-- Goldenbough Pass
				exploration(3513),	-- Lake Elrendar (Ghostlands)
				exploration(3473),	-- Lake Elrendar
				exploration(3465),	-- North Sanctum
				exploration(3533),	-- Ruins of Silvermoon
				exploration(3913),	-- Runestone Falithas
				exploration(3914),	-- Runestone Shan'dor
				exploration(3468),	-- Saltheril's Haven
				exploration(3432),	-- Shrine of Dath'Remar
				exploration(3487),	-- Silvermoon City
				exploration(3531),	-- Skulking Row
				exploration(3470),	-- Stillwhisper Pond
				exploration(3461),	-- Sunsail Anchorage
				exploration(3431),	-- Sunstrider Isle
				exploration(3482),	-- The Dead Scar
				exploration(3471),	-- The Living Wood
				exploration(3474),	-- The Scorched Grove
				exploration(3469),	-- Thuron's Livery
				exploration(3476),	-- Tor'Watha
				exploration(3911),	-- Tranquil Shore
				exploration(3466),	-- West Sanctum
				exploration(3475),	-- Zeb'Watha
			}),
			n(FLIGHT_PATHS, {
				fp(625, {	-- Fairbreeze Village, Eversong Woods [Horde]
					["cr"] = 44036,	-- Skymaster Brightdawn <Dragonhawk Master>
					["coord"] = { 44.0, 70.0, EVERSONG_WOODS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(631, {	-- Falconwing Square, Eversong Woods [Horde]
					["cr"] = 44244,	-- Skymaster Skyles <Dragonhawk Master>
					["coord"] = { 46.2, 46.8, EVERSONG_WOODS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(82, {	-- Silvermoon City [Horde]
					["cr"] = 16192,	-- Skymistress Gloaming <Dragonhawk Master>
					["coord"] = { 54.4, 50.8, EVERSONG_WOODS },
					["timeline"] = { ADDED_2_0_1 },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(8473, {	-- A Somber Task
					["qg"] = 15398,	-- Larianna Riverwind
					["sourceQuest"] = 9258,	-- The Scorched Grove
					["coord"] = { 34.0, 80.0, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(6, 6, 1),
					["groups"] = {
						objective(1, {	-- 0/10 Withered Green Keeper slain
							["provider"] = { "n", 15637 },	-- Withered Green Keeper
						}),
					},
				}),
				q(8891, {	-- Abandoned Investigations
					["providers"] = {
						{ "o", 181011 },	-- Magister Duskwither's Journal
						{ "i",  21783 },	-- Magister Duskwither's Journal
					},
					["coord"] = { 69.2, 52.1, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
				}),
				q(8476, {	-- Amani Encroachment
					["qg"] = 15399,	-- Lieutenant Dawnrunner
					["sourceQuest"] = 9359,	-- Farstrider Retreat
					["coord"] = { 60.3, 62.7, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						objective(1, {	-- 0/5 Amani Berserker slain
							["provider"] = { "n", 15643 },	-- Amani Berserker
						}),
						objective(2, {	-- 0/5 Amani Axe Thrower slain
							["provider"] = { "n", 15641 },	-- Amani Axe Thrower
						}),
					},
				}),
				q(9360, {	-- Amani Invasion
					["provider"] = { "i", 23249 },	-- Amani Invasion Plans
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
				}),
				q(8486, {	-- Arcane Instability
					["qg"] = 15401,	-- Ley-Keeper Velania
					["sourceQuest"] = 9119,	-- Malfunction at the West Sanctum
					["coord"] = { 36.6, 57.4, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/5 Manawraith slain
							["provider"] = { "n", 15648 },	-- Manawraith
						}),
						objective(2, {	-- 0/5 Mana Stalker slain
							["provider"] = { "n", 15647 },	-- Mana Stalker
						}),
						i(23370),	-- Ley-Keeper's Blade
						i(23371),	-- Velania's Walking Stick
					},
				}),
				q(9673, {	-- Beast Training
					["qg"] = 15399,	-- Lieutenant Dawnrunner <Farstriders>
					["sourceQuest"] = 9485,	-- Taming the Beast (3/3)
					["coord"] = { 60.3, 62.8, EVERSONG_WOODS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SILVERMOON_CITY },
					["classes"] = { HUNTER },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						i(24136, {	-- Farstrider's Bow
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #if BEFORE CATA
						recipe(6991),		-- Feed Pet
						recipe(982),		-- Revive Pet
						-- #endif
					},
				}),
				q(8887, {	-- Captain Kelisendra's Lost Rutters
					["provider"] = { "i", 21776 },	-- Captain Kelisendra's Lost Rutters
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				q(8894, {	-- Cleaning up the Grounds
					["qg"] = 15969,	-- Groundskeeper Wyllithen
					["sourceQuest"] = 9394,	-- Where's Wyllithen?
					["coord"] = { 68.7, 46.9, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
					["groups"] = {
						objective(1, {	-- 0/6 Mana Serpent slain
							["provider"] = { "n", 15966 },	-- Mana Serpent
						}),
						objective(2, {	-- 0/6 Ether Fiend slain
							["provider"] = { "n", 15967 },	-- Ether Fiend
						}),
					},
				}),
				q(9489, {	-- Cleansing the Scar
					["qg"] = 16276,	-- Ponaris <Priest Trainer>
					["coord"] = { 47.8, 47.8, EVERSONG_WOODS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/6 Eversong Ranger Blessed
							["provider"] = { "n", 15938 },	-- Eversong Ranger
						}),
						i(23924, {	-- Robes of Silvermoon
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(8350, {	-- Completing the Delivery
					["providers"] = {
						{ "n", 15301 },	-- Outrunner Alarion
						{ "i", 20804 },	-- Erona's Package
					},
					["sourceQuest"] = 9705,	-- Package Recovery
					["coord"] = { 40.4, 32.2, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				q(8487, {	-- Corrupted Soil
					["qg"] = 15402,	-- Apprentice Mirveda
					["sourceQuest"] = 9254,	-- The Wayward Apprentice
					["coord"] = { 54.2, 70.9, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Tainted Soil Sample
							["providers"] = {
								{ "i",  20771 },	-- Tainted Soil Sample
								{ "o", 180921 },	-- Tainted Soil Sample
							},
						}),
					},
				}),
				q(9352, {	-- Darnassian Intrusions
					["qg"] = 15403,	-- Aeldon Sunbrand
					["sourceQuest"] = 8463,	-- Unstable Mana Crystals
					["coord"] = { 48.1, 46.0, EVERSONG_WOODS },
					["cr"] = 15968,	-- Darnassian Scout
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- Intruder Defeated
							["provider"] = { "n", 15968 },	-- Darnassian Scout
						}),
					},
				}),
				q(8889, {	-- Deactivating the Spire
					["qg"] = 15924,	-- Apprentice Loralthalis
					["sourceQuest"] = 8888,	-- The Magister's Apprentice
					["coord"] = { 67.8, 56.5, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
					["groups"] = {
						objective(1, {	-- First Power Source Deactivated
							["providers"] = {
								{ "i",  24337 },	-- Deactivating Jewel
								{ "o", 180916 },	-- Duskwither Spire Power Source
							},
							["coord"] = { 69.0, 52.0, EVERSONG_WOODS },
						}),
						objective(2, {	-- Second Power Source Deactivated
							["providers"] = {
								{ "i",  24337 },	-- Deactivating Jewel
								{ "o", 180919 },	-- Duskwither Spire Power Source
							},
							["coord"] = { 69.0, 52.0, EVERSONG_WOODS },
						}),
						objective(3, {	-- Third Power Source Deactivated
							["providers"] = {
								{ "i",  24337 },	-- Deactivating Jewel
								{ "o", 180920 },	-- Duskwither Spire Power Source
							},
							["coord"] = { 69.6, 53.4, EVERSONG_WOODS },
						}),
					},
				}),
				q(9252, {	-- Defending Fairbreeze Village
					["qg"] = 15942,	-- Ranger Sareyn
					["sourceQuest"] = 9358,	-- Ranger Sareyn
					["coord"] = { 46.9, 71.7, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						objective(1, {	-- 0/4 Rotlimb Marauder slain
							["provider"] = { "n", 15658 },	-- Rotlimb Marauder
						}),
						objective(2, {	-- 0/4 Darkwraith slain
							["provider"] = { "n", 15657 },	-- Darkwraith
						}),
					},
				}),
				q(8895, {	-- Delivery to the North Sanctum
					["providers"] = {
						{ "n", 15418 },	-- Magister Jaronis
						{ "i", 21807 },	-- Unmarked Letter
					},
					["sourceQuest"] = 8472,	-- Major Malfunction
					["coord"] = { 47.2, 46.3, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				q(9148, {	-- Delivery to Tranquillien
					["providers"] = {
						{ "n", 16183 },	-- Courier Dawnstrider
						{ "i", 22717 },	-- Letter from Silvermoon
					},
					["sourceQuest"] = 9147,	-- The Fallen Courier
					["coord"] = { 48.9, 88.9, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(9, 9, 1),
					["groups"] = {
						i(28148),	-- Bronze Plate Bracers
						i(28146),	-- Courier's Wraps
						i(131243, {	-- Tranquillien Ranger's Cuffs
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(28147),	-- Tranquillien Scout's Bracers
						i(22571),	-- Courier's Bag
					},
				}),
				q(9256, {	-- Fairbreeze Village
					["qg"] = 15403,	-- Aeldon Sunbrand
					["sourceQuest"] = 8483,	-- The Dwarven Spy
					["coord"] = { 48.1, 45.9, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(6, 6, 1),
				}),
				q(9359, {	-- Farstrider Retreat
					["qg"] = 15939,	-- Ranger Degolien
					["sourceQuest"] = 8892,	-- Situation at Sunsail Anchorage
					["coord"] = { 43.3, 70.8, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(8, 8, 1),
				}),
				q(9402, {	-- Fetch!
					["qg"] = 15970,	-- Instructor Antheol
					["coord"] = { 55.7, 54.5, EVERSONG_WOODS },
					["classes"] = { MAGE },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- Azure Phial
							["provider"] = { "i", 23551 },	-- Azure Phial
							["coord"] = { 54.9, 56.4, EVERSONG_WOODS },
						}),
					},
				}),
				q(8884, {	-- Fish Heads, Fish Heads...
					["qg"] = 15920,	-- Hathvelion Sungaze
					["coord"] = { 30.2, 58.3, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Grimscale Murloc Head
							["provider"] = { "i", 21757 },	-- Grimscale Murloc Head
							["crs"] = {
								15670,	-- Grimscale Forager
								15668,	-- Grimscale Murloc
								15669,	-- Grimscale Oracle
								15950,	-- Grimscale Seer
								15937,	-- Mmmrrrggglll
							},
						}),
					},
				}),
				-- #if AFTER WRATH
				-- Before Wrath, this quest was in the Ghostlands and has a higher level requirement.
				q(9133, {	-- Fly to Silvermoon City
					["providers"] = {
						{ "n", 44036 },	-- Skymaster Brightdawn
						{ "i", 22549 },	-- Sathiel's Request
					},
					["sourceQuest"] = 9130,	-- Goods from Silvermoon City
					["coord"] = { 43.9, 69.9, EVERSONG_WOODS },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				q(9130, {	-- Goods from Silvermoon City
					["providers"] = {
						{ "n", 16261 },	-- Sathiel
						{ "i", 22549 },	-- Sathiel's Request
					},
					["coord"] = { 43.6, 71.5, EVERSONG_WOODS },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				-- #endif
				q(8886, {	-- Grimscale Pirates!
					["qg"] = 15921,	-- Captain Kelisendra
					["coord"] = { 36.3, 66.6, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/6 Captain Kelisendra's Cargo
							["providers"] = {
								{ "i",  21771 },	-- Captain Kelisendra's Cargo
								{ "o", 180917 },	-- Captain Kelisendra's Cargo
							},
							["crs"] = {
								15670,	-- Grimscale Forager
								15668,	-- Grimscale Murloc
								15669,	-- Grimscale Oracle
								15950,	-- Grimscale Seer
								15937,	-- Mmmrrrggglll
							},
						}),
					},
				}),
				q(8482, {	-- Incriminating Documents
					["provider"] = { "i", 20765 },	-- Incriminating Documents
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				q(32668, {	-- Learn To Ride
					["qg"] = 16280,	-- Perascamin <Riding Trainer>
					["coord"] = { 61.2, 54, EVERSONG_WOODS },
					["description"] = "This quest is automatically offered to Blood Elves upon reaching the specified level.",
					["timeline"] = { ADDED_5_2_0, REMOVED_10_1_5 },
					["races"] = { BLOODELF },
					["DisablePartySync"] = true,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 10),
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
				}),
				q(14081, {	-- Learn to Ride in the Eversong Woods
					["provider"] = { "i", 46882 },	-- Riding Training Pamphlet
					["description"] = "The pamphlet that starts this quest is sent to Blood Elves in their Mailbox upon reaching the specified level.",
					["timeline"] = { ADDED_3_3_0, REMOVED_5_2_0 },
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(20, 20, 10),
				}),
				q(8480, {	-- Lost Armaments
					["qg"] = 15404,	-- Velendris Whitemorn
					["coord"] = { 36.3, 66.7, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/6 Sin'dorei Armaments
							["providers"] = {
								{ "i",  22413 },	-- Sin'dorei Armaments
								{ "o", 181107 },	-- Weapon Container
							},
							["coord"] = { 33.2, 70.3, EVERSONG_WOODS },
						}),
						i(22956),	-- Rusty Mace
						i(133696, {	-- Rusty Sin'dorei Stiletto
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(22957),	-- Rusty Sin'dorei Sword
					},
				}),
				q(8472, {	-- Major Malfunction
					["qg"] = 15418,	-- Magister Jaronis
					["coord"] = { 47.2, 46.3, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/6 Arcane Core
							["provider"] = { "i", 21808 },	-- Arcane Core
							["cr"] = 15638,	-- Arcane Patroller
						}),
						i(24241),	-- Green Chain Belt
						i(23367),	-- Light Silk Robe
						i(27552),	-- Soft Leather Vest
						i(131237, {	-- Padded Chainmail
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(9119, {	-- Malfunction at the West Sanctum
					["qg"] = 15405,	-- Ley-Keeper Caidanis
					["sourceQuest"] = 8895,	-- Delivery to the North Sanctum
					["coord"] = { 44.6, 53.1, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				q(9144, {	-- Missing in the Ghostlands
					["qg"] = 16210,	-- Magistrix Landra Dawnstrider
					["coord"] = { 44.0, 70.7, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(9, 9, 1),
				}),
				q(8474, {	-- Old Whitebark's Pendant
					["provider"] = { "i", 23228 },	-- Old Whitebark's Pendant
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
				}),
				q(9705, {	-- Package Recovery
					["providers"] = {
						{ "n", 17849 },	-- Slain Outrunner
						{ "i", 20804 },	-- Erona's Package
					},
					["sourceQuest"] = 9704,	-- Slain by the Wretched
					["coord"] = { 42.0, 35.6, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				q(8491, {	-- Pelt Collection
					["qg"] = 15417,	-- Velan Brightoak
					["coord"] = { 44.7, 69.6, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/6 Springpaw Pelt
							["provider"] = { "i", 20772 },	-- Springpaw Pelt
							["crs"] = {
								15652,	-- Elder Springpaw
								15651,	-- Springpaw Stalker
							},
						}),
						i(22953),	-- Fur Lined Chain Shirt
						i(22952),	-- Springpaw Hide Cloak
						i(22951),	-- Springpaw Hide Leggings
						i(131239, {	-- Springpaw Padded Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(8490, {	-- Powering our Defenses
					["qg"] = 16362,	-- Runewarden Deryan
					["sourceQuest"] = 9253,	-- Runewarden Deryan
					["coord"] = { 44.1, 85.4, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
					["groups"] = {
						objective(1, {	-- Runestone Energized
							["provider"] = { "i", 22693 },	-- Infused Crystal
							["coord"] = { 55.2, 84.2, EVERSONG_WOODS },
							["cr"] = 16364,	-- Infused Crystal
						}),
					},
				}),
				q(9358, {	-- Ranger Sareyn
					["qg"] = 15397,	-- Marniel Amberlight
					["coord"] = { 43.6, 71.3, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(8, 8, 1),
				}),
				q(9404, {	-- Recently Living
					["qg"] = 15970,	-- Instructor Antheol
					["sourceQuest"] = 9403,	-- The Purest Water
					["coord"] = { 55.7, 54.5, EVERSONG_WOODS },
					["classes"] = { MAGE },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- Living Branch
							["provider"] = { "i", 23553 },	-- Living Branch
							["coord"] = { 48.1, 71.3, EVERSONG_WOODS },
							["cr"] = 15636,	-- Eversong Green Keeper
						}),
						i(9513),	-- Ley Staff
						i(7508),	-- Ley Orb
					},
				}),
				q(9255, {	-- Research Notes
					["providers"] = {
						{ "n", 15402 },	-- Apprentice Mirveda
						{ "i", 22735 },	-- Research Notes
					},
					["sourceQuest"] = 8488,	-- Unexpected Results
					["coord"] = { 54.2, 70.9, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
				}),
				-- #if BEFORE WRATH
				-- Before Wrath, this quest chain was in the Ghostlands and has a higher level requirement.
				q(9135, {	-- Return to Quartermaster Lymel
					["providers"] = {
						{ "n", 16192 },	-- Skymistress Gloaming
						{ "i", 22550 },	-- Quartermaster Lymel's Goods
					},
					["sourceQuest"] = 9134,	-- Skymistress Gloaming
					["coord"] = { 54.3, 50.7, EVERSONG_WOODS },
					["maps"] = { GHOSTLANDS },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				-- #else
				q(9135, {	-- Return to Sathiel
					["providers"] = {
						{ "n", 16192 },	-- Skymistress Gloaming
						{ "i", 22550 },	-- Sathiel's Goods
					},
					["sourceQuest"] = 9134,	-- Skymistress Gloaming
					["coord"] = { 54.3, 50.7, EVERSONG_WOODS },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				-- #endif
				q(9691, {	-- Return to Silvermoon
					["qg"] = 17807,	-- Master Kelrun Bloodmourn
					["sourceQuest"] = 9686,	-- The Second Trial (2/2)
					["coord"] = { 42, 28, EVERSONG_WOODS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(20, 20, 1),
					-- #if BEFORE CATA
					["groups"] = { SENSE_UNDEAD },
					-- #endif
				}),
				q(9035, {	-- Roadside Ambush
					["qg"] = 15941,	-- Apprentice Ralen
					["coord"] = { 45.1, 56.4, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				q(9253, {	-- Runewarden Deryan
					["qg"] = 15942,	-- Ranger Sareyn
					["sourceQuest"] = 9252,	-- Defending Fairbreeze Village
					["coord"] = { 46.9, 71.8, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(8, 8, 1),
				}),
				q(9395, {	-- Saltheril's Haven
					["qg"] = 16210,	-- Magistrix Landra Dawnstrider
					["coord"] = { 44.0, 70.7, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(8, 8, 1),
				}),
				q(9617, {	-- Seek the Farstriders
					["qgs"] = {
						16271,	-- Telenus <Pet Trainer>
						16673,	-- Oninath <Hunter Trainer>
					},
					["coords"] = {
						{ 48.0, 46.0, EVERSONG_WOODS },
						{ 84.6, 26.6, SILVERMOON_CITY },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { BLOODELF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
				}),
				q(8892, {	-- Situation at Sunsail Anchorage
					["qg"] = 15939,	-- Ranger Degolien
					["sourceQuest"] = 9256,	-- Fairbreeze Village
					["coord"] = { 43.3, 70.8, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/5 Wretched Thug slain
							["provider"] = { "n", 15645 },	-- Wretched Thug
						}),
						objective(2, {	-- 0/5 Wretched Hooligan slain
							["provider"] = { "n", 16162 },	-- Wretched Hooligan
						}),
					},
				}),
				q(9704, {	-- Slain by the Wretched
					["qg"] = 15301,	-- Outrunner Alarion
					["sourceQuest"] = 8347,	-- Aiding the Outrunners
					["coord"] = { 40.4, 32.2, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(3, 3, 1),
				}),
				q(9062, {	-- Soaked Pages
					["qg"] = 15945,	-- Apprentice Meledor
					["sourceQuest"] = 9035,	-- Roadside Ambush
					["coord"] = { 44.8, 61.0, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- Antheol's Elemental Grimoire
							["providers"] = {
								{ "i",  22414 },	-- Antheol's Elemental Grimoire
								{ "o", 181110 },	-- Soaked Tome
							},
							["coord"] = { 44.3, 62.0, EVERSONG_WOODS },
						}),
					},
				}),
				q(9677, {	-- Summons from Knight-Lord Bloodvalor
					["qg"] = 16275,	-- Noellene
					["coord"] = { 48.4, 46.46, EVERSONG_WOODS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(12, 12, 1),
				}),
				q(9066, {	-- Swift Discipline
					["qg"] = 15970,	-- Instructor Antheol
					["sourceQuest"] = 9064,	-- Taking the Fall
					["coord"] = { 55.6, 54.5, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- Apprentice Meledor Disciplined
							["provider"] = { "i", 22473 },	-- Antheol's Disciplinary Rod
							["coord"] = { 44.8, 61.0, EVERSONG_WOODS },
							["cr"] = 15945,	-- Apprentice Meledor
						}),
						objective(2, {	-- Apprentice Ralen Disciplined
							["provider"] = { "i", 22473 },	-- Antheol's Disciplinary Rod
							["coord"] = { 45.2, 56.4, EVERSONG_WOODS },
							["cr"] = 15941,	-- Apprentice Ralen
						}),
						i(22976),	-- Magister's Pouch
					},
				}),
				q(9064, {	-- Taking the Fall
					["providers"] = {
						{ "n", 15945 },	-- Apprentice Meledor
						{ "i", 22414 },	-- Antheol's Elemental Grimoire
					},
					["sourceQuest"] = 9062,	-- Soaked Pages
					["coord"] = { 44.8, 61.0, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				q(9484, {	-- Taming the Beast (1/3)
					["qg"] = 15399,	-- Lieutenant Dawnrunner <Farstriders>
					["sourceQuest"] = 9617,	-- Seek the Farstriders
					["coord"] = { 60.2, 62.8, EVERSONG_WOODS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { BLOODELF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Tame a Crazed Dragonhawk
							["providers"] = {
								{ "n", 15650 },	-- Crazed Dragonhawk
								{ "i", 23697 },	-- Taming Rod
							},
						}),
					},
				}),
				q(9486, {	-- Taming the Beast (2/3)
					["qg"] = 15399,	-- Lieutenant Dawnrunner <Farstriders>
					["sourceQuest"] = 9484,	-- Taming the Beast (1/3)
					["coord"] = { 60.2, 62.8, EVERSONG_WOODS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { BLOODELF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Tame an Elder Springpaw
							["providers"] = {
								{ "n", 15652 },	-- Elder Springpaw
								{ "i", 23702 },	-- Taming Rod
							},
						}),
					},
				}),
				q(9485, {	-- Taming the Beast (3/3)
					["qg"] = 15399,	-- Lieutenant Dawnrunner <Farstriders>
					["sourceQuest"] = 9486,	-- Taming the Beast (2/3)
					["coord"] = { 60.2, 62.8, EVERSONG_WOODS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { BLOODELF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Tame a Mistbat
							["providers"] = {
								{ "n", 16353 },	-- Mistbat
								{ "i", 23703 },	-- Taming Rod
							},
						}),
						-- #if BEFORE CATA
						recipe(883),	-- Call Pet
						recipe(2641),	-- Dismiss Pet
						recipe(1515),	-- Tame Beast
						-- #endif
					},
				}),
				q(8475, {	-- The Dead Scar
					["qg"] = 15416,	-- Ranger Jaela
					["coord"] = { 50.3, 50.7, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Plaguebone Pillager slain
							["provider"] = { "n", 15654 },	-- Plaguebone Pillager
						}),
						i(23375),	-- Black Leather Vest
						i(23376),	-- Gatewatcher's Chain Gloves
						i(23377),	-- Guard's Leggings
						i(131238, {	-- Sentry's Chain Shirt
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(8483, {	-- The Dwarven Spy
					["qg"] = 15403,	-- Aeldon Sunbrand
					["sourceQuest"] = 8482,	-- Incriminating Documents
					["coord"] = { 48.1, 46.0, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- Prospector Anvilward's Head
							["provider"] = { "i", 20764 },	-- Prospector Anvilward's Head
							["coord"] = { 44.6, 53.3, EVERSONG_WOODS },
							["cr"] = 15420,	-- Prospector Anvilward
						}),
						i(23372),	-- Bloodhawk Claymore
						i(23373),	-- Long Knife
						i(133695, {	-- Short Knife
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(9147, {	-- The Fallen Courier
					["qg"] = 16196,	-- Apothecary Thedra
					["sourceQuest"] = 9144,	-- Missing in the Ghostlands
					["coord"] = { 49.0, 89.0, EVERSONG_WOODS },
					["maps"] = { GHOSTLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(9, 9, 1),
					["groups"] = {
						objective(1, {	-- 0/4 Plagued Blood Sample
							["provider"] = { "i", 22570 },	-- Plagued Blood Sample
							["crs"] = {
								16347,	-- Starving Ghostclaw
								16353,	-- Mistbat
							},
						}),
					},
				}),
				q(8888, {	-- The Magister's Apprentice
					["qg"] = 15951,	-- Magister Duskwither
					["coord"] = { 60.3, 61.3, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(8, 8, 1),
				}),
				q(9067, {	-- The Party Never Ends
					["qg"] = 16144,	-- Lord Saltheril
					["sourceQuest"] = 9395,	-- Saltheril's Haven
					["coord"] = { 38.1, 73.5, EVERSONG_WOODS },
					["maps"] = { SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Suntouched Special Reserve
							["provider"] = { "i", 22775 },	-- Suntouched Special Reserve
							["coord"] = { 79.6, 59.6, SILVERMOON_CITY },
							["cr"] = 16442,	-- Vinemaster Suntouched <Wine & Spirits Merchant>
						}),
						objective(2, {	-- 0/1 Springpaw Appetizers
							["provider"] = { "i", 22776 },	-- Springpaw Appetizers
							["coord"] = { 60.4, 62.5, EVERSONG_WOODS },
							["cr"] = 16443,	-- Zalene Firstlight <Food & Drink>
						}),
						objective(3, {	-- 0/1 Bundle of Fireworks
							["provider"] = { "i", 22777 },	-- Bundle of Fireworks
							["coord"] = { 44.0, 70.3, EVERSONG_WOODS },
							["cr"] = 16444,	-- Halis Dawnstrider <General Goods>
						}),
						i(23500),	-- Saltheril's Haven Party Invitation
					},
				}),
				q(9403, {	-- The Purest Water
					["qg"] = 15970,	-- Instructor Antheol
					["sourceQuest"] = 9402,	-- Fetch!
					["coord"] = { 55.7, 54.5, EVERSONG_WOODS },
					["classes"] = { MAGE },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Filled Azure Phial
							["providers"] = {
								{ "i", 23552 },	-- Filled Azure Phial
								{ "i", 23566 },	-- Azure Phial
							},
							["coord"] = { 64, 72, EVERSONG_WOODS },
						}),
					},
				}),
				q(8885, {	-- The Ring of Mmmrrrggglll
					["qg"] = 15920,	-- Hathvelion Sungaze
					["sourceQuest"] = 8884,	-- Fish Heads, Fish Heads...
					["coord"] = { 30.2, 58.3, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Ring of Mmmrrrggglll
							["provider"] = { "i", 21770 },	-- Ring of Mmmrrrggglll
							["coord"] = { 25.2, 70.8, EVERSONG_WOODS },
							["cr"] = 15937,	-- Mmmrrrggglll <Grimscale Chieftain>
						}),
						i(23398),	-- Worn Ranger's Bow
						i(23395),	-- Farstrider's Buckler
						i(133694, {	-- Ranger's Notched Dirk
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(23397),	-- Satin Lined Gloves
						i(23396),	-- Slightly Used Ranger's Blade
					},
				}),
				q(9258, {	-- The Scorched Grove
					["qg"] = 16397,	-- Ardeyn Riverwind
					["coord"] = { 43.6, 71.2, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(6, 6, 1),
				}),
				q(9686, {	-- The Second Trial (2/2)
					["qg"] = 17807,	-- Master Kelrun Bloodmourn
					["sourceQuest"] = 9690,	-- The Second Trial (1/2)
					["coord"] = { 42, 28, EVERSONG_WOODS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(20, 20, 1),
				}),
				q(8477, {	-- The Spearcrafter's Hammer
					["qg"] = 15400,	-- Arathel Sunforge
					["coord"] = { 59.5, 62.6, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Otembe's Hammer
							["provider"] = { "i", 20759 },	-- Otembe's Hammer
							["coord"] = { 70.1, 72.3, EVERSONG_WOODS },
							["cr"] = 15408,	-- Spearcrafter Otembe
						}),
						i(22958),	-- Farstrider Sword
						i(22959),	-- Smooth Metal Staff
						i(22963),	-- Ranger's Pocketknife
					},
				}),
				q(9254, {	-- The Wayward Apprentice
					["qg"] = 16210,	-- Magistrix Landra Dawnstrider
					["coord"] = { 44.0, 70.7, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(7, 7, 1),
				}),
				q(8488, {	-- Unexpected Results
					["qg"] = 15402,	-- Apprentice Mirveda
					["sourceQuest"] = 8487,	-- Corrupted Soil
					["coord"] = { 54.2, 70.9, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						objective(1, {	-- Gharsul the Remorseless slain
							["provider"] = { "n", 15958 },	-- Gharsul the Remorseless
						}),
					},
				}),
				q(8463, {	-- Unstable Mana Crystals
					["qg"] = 15403,	-- Aeldon Sunbrand
					["coord"] = { 48.1, 45.9, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/6 Unstable Mana Crystal
							["providers"] = {
								{ "i",  20743 },	-- Unstable Mana Crystal
								{ "o", 180600 },	-- Unstable Mana Crystal Crate
							},
						}),
					},
				}),
				q(8468, {	-- Wanted: Thaelis the Hungerer
					["provider"] = { "o", 180918 },	-- Wanted: Thaelis the Hungerer
					["coord"] = { 48.1, 46.3, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Thaelis's Head
							["provider"] = { "i", 21781 },	-- Thaelis's Head
							["coord"] = { 44.4, 37.8, EVERSONG_WOODS },
							["cr"] = 15949,	-- Thaelis the Hungerer
						}),
					},
				}),
				q(9363, {	-- Warning Fairbreeze Village
					["qg"] = 15399,	-- Lieutenant Dawnrunner
					["sourceQuest"] = 9360,	-- Amani Invasion
					["coord"] = { 60.3, 62.7, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
					["groups"] = {
						i(23265),	-- Blackened Chain Girdle
						i(23266),	-- Ranger's Vest
						i(23267),	-- Satin Lined Boots
						i(131252, {	-- Ranger's Chainmail
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(9394, {	-- Where's Wyllithen?
					["qg"] = 15924,	-- Apprentice Loralthalis
					["coord"] = { 67.8, 56.5, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(8, 8, 1),
				}),
				q(10166, {	-- Whitebark's Memory
					["providers"] = {
						{ "n", 15398 },	-- Larianna Riverwind
						{ "i", 28209 },	-- Old Whitebark's Pendant
					},
					["sourceQuest"] = 8474,	-- Old Whitebark's Pendant
					["coord"] = { 34.0, 80.0, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
				}),
				q(8890, {	-- Word from the Spire
					["qg"] = 15924,	-- Apprentice Loralthalis
					["sourceQuest"] = 8889,	-- Deactivating the Spire
					["coord"] = { 67.8, 56.5, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
					["groups"] = {
						i(23399),	-- Fallen Apprentice's Robe
					},
				}),
				q(9076, {	-- Wretched Ringleader
					["qg"] = 15404,	-- Velendris Whitemorn
					["sourceQuest"] = 8480,	-- Lost Armaments
					["coord"] = { 36.3, 66.7, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Aldaron's Head
							["provider"] = { "i", 22487 },	-- Aldaron's Head
							["coord"] = { 32.8, 69.4, EVERSONG_WOODS },
							["cr"] = 16294,	-- Aldaron the Reckless
						}),
						i(22965),	-- Longshoreman's Bindings
						i(131240, {	-- Longshoreman's Bracers
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(22966),	-- Silk Wristbands
						i(22964),	-- Sunsail Bracers
					},
				}),
				q(8479, {	-- Zul'Marosh
					["qg"] = 15406,	-- Ven'jashi
					["coord"] = { 70.4, 72.3, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Chieftain Zul'Marosh's Head
							["provider"] = { "i", 20760 },	-- Chieftain Zul'Marosh's Head
							["coord"] = { 62.5, 79.7, EVERSONG_WOODS },
							["cr"] = 15407,	-- Chieftain Zul'Marosh
						}),
						i(22969),	-- Ven'jashi's Bow
						i(22971),	-- Hoodoo Wand
					},
				}),
			}),
			n(RARES, {
				n(16854, {	-- Eldinarcus
					["coords"] = {
						{ 68.4, 46.0, EVERSONG_WOODS },
						{ 70.0, 46.0, EVERSONG_WOODS },
						{ 69.8, 49.6, EVERSONG_WOODS },
					},
				}),
				n(16855, {	-- Tregla
					["coords"] = {
						{ 65.0, 67.6, EVERSONG_WOODS },
						{ 66.0, 69.0, EVERSONG_WOODS },
						{ 70.2, 72.4, EVERSONG_WOODS },
						{ 69.4, 74.6, EVERSONG_WOODS },
						{ 68.6, 71.8, EVERSONG_WOODS },
						{ 70.8, 75.4, EVERSONG_WOODS },
						{ 69.6, 78.6, EVERSONG_WOODS },
						{ 69.0, 81.2, EVERSONG_WOODS },
						{ 68.0, 79.4, EVERSONG_WOODS },
						{ 66.2, 79.0, EVERSONG_WOODS },
						{ 64.6, 78.0, EVERSONG_WOODS },
						{ 63.2, 78.2, EVERSONG_WOODS },
						{ 62.8, 79.6, EVERSONG_WOODS },
					},
				}),
			}),
			n(VENDORS, {
				n(18951, {	-- Erilia <Enchanting Vendor>
					["coord"] = { 56.2, 54.6, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["groups"] = ENCHANTING_VENDOR_GROUPS,
				}),
				n(16860, {	-- Jilanne
					["coord"] = { 44.8, 71.6, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(29953),	-- Golden Dragonhawk Hatchling (PET!)
						i(29956),	-- Red Dragonhawk Hatchling (PET!)
						i(29957),	-- Silver Dragonhawk Hatchling (PET!)
					},
				}),
				n(16262, {	-- Landraelanis <Tradesman>
					["coord"] = { 49.0, 47.0, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(27685),	-- Recipe: Lynx Steak (RECIPE!)
					},
				}),
				n(50484, {	-- Magistrix Nizara <Silvermoon City Quartermaster>
					["coord"] = { 54.2, 50.8, EVERSONG_WOODS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(45585, {	-- Silvermoon City Tabard
							["timeline"] = { ADDED_3_1_0 },
						}),
						i(64915, {	-- Cape of Silvermoon
							["minReputation"] = { FACTION_SILVERMOON_CITY, EXALTED },	-- Silvermoon City, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64916, {	-- Mantle of Silvermoon
							["minReputation"] = { FACTION_SILVERMOON_CITY, EXALTED },	-- Silvermoon City, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64914, {	-- Shroud of Silvermoon
							["minReputation"] = { FACTION_SILVERMOON_CITY, EXALTED },	-- Silvermoon City, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67535, {	-- Silvermoon Satchel
							["minReputation"] = { FACTION_SILVERMOON_CITY, REVERED },	-- Silvermoon City, Revered.
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				n(16264, {	-- Winaestra <Hawkstrider Breeder>
					["coord"] = { 61.0, 54.6, EVERSONG_WOODS },
					-- Available to Blood Elves without faction requirements.
					["minReputation"] = { FACTION_SILVERMOON_CITY, EXALTED },	-- Silvermoon City, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. BLOODELF .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(29221),	-- Black Hawkstrider (MOUNT!)
						i(29220),	-- Blue Hawkstrider (MOUNT!)
						i(29222),	-- Purple Hawkstrider (MOUNT!)
						i(28927),	-- Red Hawkstrider (MOUNT!)
						i(28936),	-- Swift Pink Hawkstrider (MOUNT!)
						i(29223),	-- Swift Green Hawkstrider (MOUNT!)
						i(29224),	-- Swift Purple Hawkstrider (MOUNT!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(23249, {	-- Amani Invasion Plans
					["cr"] = 15407,	-- Chieftain Zul'Marosh
					["coord"] = { 62.5, 79.7, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
				}),
				i(21776, {	-- Captain Kelisendra's Lost Rutters
					["races"] = HORDE_ONLY,
					["crs"] = {
						15670,	-- Grimscale Forager
						15668,	-- Grimscale Murloc
						15669,	-- Grimscale Oracle
						15950,	-- Grimscale Seer
						15937,	-- Mmmrrrggglll
					},
				}),
				i(23334, {	-- Cracked Power Core
					["cr"] = 15638,	-- Arcane Patroller
				}),
				i(23354, {	-- Crystalized Mana Residue
					["crs"] = {
						15967,	-- Ether Fiend
						15647,	-- Mana Stalker
						15648,	-- Manawraith
					},
				}),
				i(20765, {	-- Incriminating Documents
					["cr"] = 15968,	-- Darnassian Scout
					["coord"] = { 33.2, 59.6, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
				}),
				i(23553, {	-- Living Branch
					-- #if NOT COMMON_QUALITY_TRANSMOGS
					-- CRIEVE NOTE: This is a quest item that disappears once you finish the quest.
					-- To collect it, it needs to be in your inventory after common quality transmog is added officially.
					["ignoreSource"] = true,
					-- #endif
					["cr"] = 15636,	-- Eversong Green Keeper
					["coords"] = {
						{ 54.8, 79.6, EVERSONG_WOODS },
						{ 57.2, 74.0, EVERSONG_WOODS },
						{ 60.8, 68.8, EVERSONG_WOODS },
						{ 63.0, 64.6, EVERSONG_WOODS },
					},
				}),
				i(23228, {	-- Old Whitebark's Pendant
					["cr"] = 15409,	-- Old Whitebark
					["coords"] = {
						{ 34.8, 84.0, EVERSONG_WOODS },
						{ 35.0, 84.6, EVERSONG_WOODS },
					},
					["races"] = HORDE_ONLY,
				}),
			}),
			n(ZONE_DROPS, sharedData({
				-- #if AFTER 9.0.3
				["sharedDescription"] = "This item seem to only drop easily for characters below level 14 within Sunstrider Isle.",
				-- #endif
			}, {
				i(21002),	-- Unkempt Belt
				i(21003),	-- Unkempt Bracers
				i(21004),	-- Unkempt Cloak
				i(21005),	-- Unkempt Gloves
				i(21006),	-- Unkempt Pants
				i(21007),	-- Unkempt Robe
				i(21008),	-- Unkempt Shoes
				i(21009),	-- Scraggy Leather Belt
				i(21010),	-- Scraggy Leather Boots
				i(21011),	-- Scraggy Leather Bracers
				i(21012),	-- Scraggy Leather Gloves
				i(21013),	-- Scraggy Leather Pants
				i(21014),	-- Scraggy Leather Vest
				i(21015),	-- Shoddy Chain Belt
				i(21020),	-- Shoddy Chain Boots
				i(21019),	-- Shoddy Chain Bracers
				i(21018),	-- Shoddy Chain Gloves
				i(21017),	-- Shoddy Chain Pants
				i(21016),	-- Shoddy Chain Vest
				i(21021),	-- Battered Shield
				i(21022),	-- Weather Beaten Buckler
			})),
		},
	}),
})));

-- Remove the phase requirement from Sense Undead.
SENSE_UNDEAD.u = nil;

-- Push the Enchanting Supplies goods on to his loot table. (this bypasses the phase)
for i,o in ipairs({
	i(20753),	-- Formula: Lesser Wizard Oil (RECIPE!)
	i(20752),	-- Formula: Minor Mana Oil (RECIPE!)
	i(20758),	-- Formula: Minor Wizard Oil (RECIPE!)
	i(22307),	-- Pattern: Enchanted Mageweave Pouch
}) do table.insert(ENCHANTING_VENDOR_GROUPS, o); end
