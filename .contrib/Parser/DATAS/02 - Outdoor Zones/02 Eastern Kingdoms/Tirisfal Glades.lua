---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
ExportDB.OnTooltipDB.ZidormiTravelArtID1136 = [[~function(t, tooltipInfo)
					if t.parent.artID == 1136 then
						tinsert(tooltipInfo, { left = "You need to speak to Zidormi to travel back to the past in order to collect these." });
					end
				end]]
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(TIRISFAL_GLADES, {
		["lore"] = "On the northern coast of Lordaeron lies the eerie Tirisfal Glades. The unofficial kingdom to the Forsaken, servants of the Banshee Queen Sylvanas Windrunner, the wooded hills are seeped through with the curse of the Lich King's plague. The sky over Tirisfal is eternally gloomy and tinted a blighted green, and the trees and other flora desperately cling to their last shreds of life.\n\nAlthough tainted and melancholy, Tirisfal still very much has its own unique, haunting beauty, particularly in such areas as the stony North Coast, the village of Brill, and the deep atmosphere of the ruined Agamand Mills.\n\nTirisfal Glades is home not only to the Forsaken, but to their enemies as well. The Scarlet Crusade has several outposts here, including the seat of their religious faith, the Scarlet Monastery. The minions of the Scourge are also ever present, tainting the derelict farmsteads and dilapidated mills with their foul presence.",
		["icon"] = 236849,
		-- #if NOT ANYCLASSIC
		["maps"] = {
			20,		-- Keeper's Rest (part of Priest artifact questline) [CRIEVE NOTE: This shouldn't be here.]
			908,	-- Ruins of Lordaeron (Battle for Lordaeron scenario) [CRIEVE NOTE: This shouldn't be here.]
			-- #if AFTER 9.2.5
			2070	-- Tirisfal Glades (Present)
			-- #endif
		},
		-- #endif
		["groups"] = {
			m(DEATHKNELL, {
				["lore"] = "Deathknell is a small Forsaken village nestled in a well guarded valley just north of Silverpine Forest in Tirisfal Glades which serves as the starting area for the Forsaken.",
				["icon"] = 236457,
				-- #if BEFORE MOP
				["zone-text-areas"] = {
					154,	-- Deathknell
				},
				-- #endif
				-- #if AFTER CATA
				["maps"] = { 466 },	-- Night Web's Hollow
				-- #endif
				["groups"] = {
					battlepets({
						pet(417, {	-- Rat (PET!)
							["description"] = "Found in MANY zones on Azeroth and Draenor, this place just seems to have the highest concentration of them."
						}),
						pet(458, {	-- Lost of Lordaeron (PET!)
							["description"] = "Found mostly around the Ruins of Lordaeron.",
						}),
					}),
					n(QUESTS, {
						q(8, {	-- A Rogue's Deal (1/2)
							["providers"] = {
								{ "n", 6784 },	-- Calvin Montague
								{ "i", 7628 },	-- Nondescript Letter
							},
							["coord"] = { 38.2, 56.6, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
						}),
						q(590, {	-- A Rogue's Deal (2/2)
							["qg"] = 6784,	-- Calvin Montague
							["sourceQuest"] = 8,	-- A Rogue's Deal (1/2)
							["coord"] = { 38.2, 56.6, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
						}),
						q(24971, {	-- Assault on the Rotbrain Encampment
							["qg"] = 49425,	-- Darnell
							["sourceQuest"] = 24970,	-- No Better Than the Zombies
							["coord"] = { 67.0, 42.3, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(3277),	-- Executor Staff
								i(3276),	-- Deathguard Buckler
							},
						}),
						q(25089, {	-- Beyond the Graves
							["qg"] = 2307,	-- Caretaker Caice
							["sourceQuest"] = 24960,	-- The Wakening
							["coord"] = { 45.9, 80.4, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { UNDEAD },
						}),
						q(28652, {	-- Caretaker Caice
							["qg"] = 1568,	-- Undertaker Mordo
							["sourceQuest"] = 26799,	-- Those That Couldn't Be Saved
							["coord"] = { 43.4, 79.9, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { UNDEAD },
							["isBreadcrumb"] = true,
						}),
						q(3096, {	-- Encrypted Scroll
							["providers"] = {
								{ "n", 1569 },	-- Shadow Priest Sarvis
								{ "i", 9559 },	-- Encrypted Scroll
							},
							-- #if AFTER CATA
							["sourceQuest"] = 26801,	-- Scourge on our Perimeter
							["coord"] = { 46.8, 58.8, DEATHKNELL },
							-- #else
							["sourceQuest"] = 364,	-- The Mindless Ones
							["coord"] = { 30.8, 66.2, TIRISFAL_GLADES },
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { UNDEAD },
							["classes"] = { ROGUE },
						}),
						q(24959, {	-- Fresh out of the Grave
							["qg"] = 49044,	-- Agatha
							["coord"] = { 40.7, 78.4, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { UNDEAD },
						}),
						q(3098, {	-- Glyphic Scroll
							["providers"] = {
								{ "n", 1569 },	-- Shadow Priest Sarvis
								{ "i", 9574 },	-- Glyphic Scroll
							},
							-- #if AFTER CATA
							["sourceQuest"] = 26801,	-- Scourge on our Perimeter
							["coord"] = { 46.8, 58.8, DEATHKNELL },
							-- #else
							["sourceQuest"] = 364,	-- The Mindless Ones
							["coord"] = { 30.8, 66.2, TIRISFAL_GLADES },
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { UNDEAD },
							["classes"] = { MAGE },
						}),
						q(3097, {	-- Hallowed Scroll
							["providers"] = {
								{ "n", 1569 },	-- Shadow Priest Sarvis
								{ "i", 9569 },	-- Hallowed Scroll
							},
							-- #if AFTER CATA
							["sourceQuest"] = 26801,	-- Scourge on our Perimeter
							["coord"] = { 46.8, 58.8, DEATHKNELL },
							-- #else
							["sourceQuest"] = 364,	-- The Mindless Ones
							["coord"] = { 30.8, 66.2, TIRISFAL_GLADES },
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["classes"] = { PRIEST },
							["races"] = { UNDEAD, BLOODELF },
						}),
						q(5651, {	-- In Favor of Darkness
							["qg"] = 2123,	-- Dark Cleric Duesten <Priest Trainer>
							["coord"] = { 31.1, 66.0, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = { UNDEAD },
							["classes"] = { PRIEST },
							["lvl"] = 5,
						}),
						q(24965, {	-- Magic Training
							["qg"] = 2124,	-- Isabella
							["sourceQuest"] = 3098,	-- Glyphic Scroll
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["classes"] = { MAGE },
							["races"] = { UNDEAD },
						}),
						q(6395, {	-- Marla's Last Wish
							["qg"] = 1661,	-- Novice Elreth
							["sourceQuest"] = 376,	-- The Damned
							["coord"] = { 30.9, 66.1, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["lvl"] = 3,
							["groups"] = {
								objective(1, {	-- Samuel's Remains Buried
									["providers"] = {
										{ "i",  16333 },	-- Samuel's Remains
										{ "o", 178090 },	-- Marla's Grave
									},
									["coords"] = {
										{ 36.6, 61.6, TIRISFAL_GLADES },
										{ 31, 65, TIRISFAL_GLADES },
									},
									["cr"] = 1919,	-- Samuel Fipps
								}),
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77670, {	-- Meditation on Undeath
							["qg"] = 2123,	-- Dark Cleric Duesten <Priest Trainer>
							["coord"] = { 31, 66, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { PRIEST },
							["races"] = { UNDEAD },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Penance
									["provider"] = { "i", 205951 },	-- Memory of a Troubled Acolyte
									["description"] = "Kneel (/kneel) at a Graveyard to gain a Meditation buff, then use the Rune to complete the quest.",
								}),
								recipe(402862),	-- Engrave Gloves - Penance
								i(711),	-- Tattered Cloth Gloves
							},
						})),
						-- #endif
						q(380, {	-- Night Web's Hollow
							["qg"] = 1570,	-- Executor Arren
							["sourceQuest"] = 376,	-- The Damned
							["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["lvl"] = 2,
							-- #if BEFORE 4.0.3
							["groups"] = {
								objective(1, {	-- 0/10 Young Night Web Spider slain
									["provider"] = { "n", 1504 },	-- Young Night Web Spider
								}),
								objective(2, {	-- 0/8 Night Web Spider slain
									["provider"] = { "n", 1505 },	-- Night Web Spider
								}),
								i(3270),	-- Flax Vest
								i(3273),	-- Rugged Mail Vest / Rugged Plate Vest [7.0.3+]
								i(3272),	-- Zombie Skin Leggings
							},
							-- #endif
						}),
						q(24973, {	-- Night Web's Hollow
							["qg"] = 1570,	-- Executor Arren
							["sourceQuest"] = 26802,	-- The Damned
							["coord"] = { 55.4, 37.7, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(3270),	-- Flax Vest
								i(3273),	-- Rugged Mail Vest / Rugged Plate Vest [7.0.3+]
								i(3272),	-- Zombie Skin Leggings
								i(57139, {	-- Night Web Crossbow
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(131387, {	-- Abandoned Miner's Pants
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
						q(24970, {	-- No Better Than the Zombies
							["qg"] = 1570,	-- Executor Arren
							["sourceQuest"] = 24973,	-- Night Web's Hollow
							["coord"] = { 55.4, 37.7, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(3268),	-- Forsaken Dagger
								i(3269),	-- Forsaken Maul
								i(3267),	-- Forsaken Shortsword
								i(5779),	-- Forsaken Bastard Sword
							},
						}),
						q(28651, {	-- Novice Elreth
							["qg"] = 1569,	-- Shadow Priest Elreth
							["sourceQuest"] = 26801,	-- Scourge on our Perimeter
							["coord"] = { 46.6, 58.8, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(24966, {	-- Of Light and Shadows
							["qg"] = 2123,	-- Dark Cleric Duesten
							["sourceQuest"] = 3097,	-- Hallowed Scroll
							["coord"] = { 47.6, 58.4, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { UNDEAD },
							["classes"] = { PRIEST },
						}),
						q(1470, {	-- Piercing the Veil
							["qg"] = 5667,	-- Venya Marthand
							["coord"] = { 31.0, 66.4, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_3_3_0 },
							["races"] = { UNDEAD },
							["classes"] = { WARLOCK },
							-- #if BEFORE 3.3.0
							["groups"] = {
								objective(1, {	-- 0/3 Rattlecage Skull
									["provider"] = { "i", 6281 },	-- Rattlecage Skull
									["cr"] = 1890,	-- Rattlecage Skeleton
								}),
								recipe(688),	-- Summon Imp
							},
							-- #endif
						}),
						q(3901, {	-- Rattling the Rattlecages
							["qg"] = 1569,	-- Shadow Priest Sarvis
							["sourceQuest"] = 364,	-- The Mindless Ones
							["coord"] = { 30.8, 66.2, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							-- #if BEFORE 4.0.3
							["groups"] = {
								objective(1, {	-- 0/12 Rattlecage Skeleton slain
									["provider"] = { "n", 1890 },	-- Rattlecage Skeleton
								}),
								i(3274),	-- Flax Boots
								i(11851),	-- Scavenger Tunic
								i(11852),	-- Roamer's Leggings
							},
							-- #endif
						}),
						q(26800, {	-- Recruitment
							["qg"] = 26800,	-- Deathguard Saltain
							["sourceQuest"] = 25089,	-- Beyond the Graves
							["coord"] = { 49.9, 56.3, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { UNDEAD },
							["groups"] = {
								i(11848),	-- Flax Belt
								i(11849),	-- Rustmetal Bracers
								i(11850),	-- Short Duskbat Cape
							},
						}),
						q(363, {	-- Rude Awakening
							["qg"] = 1568,	-- Undertaker Mordo
							["coord"] = { 30.2, 71.6, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = { UNDEAD },
							["isBreadcrumb"] = true
						}),
						q(3902, {	-- Scavenging Deathknell
							["qg"] = 1740,	-- Deathguard Saltain
							["sourceQuest"] = 376,	-- The Damned
							["coord"] = { 31.6, 65.6, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["lvl"] = 2,
							-- #if BEFORE 4.0.3
							["groups"] = {
								objective(1, {	-- 0/6 Scavenged Goods
									["providers"] = {
										{ "i",  11127 },	-- Scavenged Goods
										{ "o", 164662 },	-- Equipment Boxes
									},
								}),
								i(11848),	-- Flax Belt
								i(11849),	-- Rustmetal Bracers
								i(11850),	-- Short Duskbat Cape
							},
							-- #endif
						}),
						q(26801, {	-- Scourge on our Perimeter
							["qg"] = 1569,	-- Shadow Priest Sarvis
							["sourceQuest"] = 28653,	-- Shadow Priest Sarvis
							["coord"] = { 46.6, 58.8, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(3274),	-- Flax Boots
								i(11851),	-- Scavenger Tunic
								i(11852),	-- Roamer's Leggings
								i(131923, {	-- Scavenger Vest
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
						q(31146, {	-- Scribbled Scroll
							["providers"] = {
								{ "n", 1569 },	-- Shadow Priest Sarvis
								{ "i", 85164 },	-- Elegant Scroll
							},
							["coord"] = { 46.6, 58.8, DEATHKNELL },
							["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
							["races"] = { UNDEAD },
							["classes"] = { MONK },
						}),
						q(28653, {	-- Shadow Priest Sarvis
							["qg"] = 1740,	-- Deathguard Saltain
							["sourceQuest"] = 26800,	-- Recruitment
							["coord"] = { 49.9, 56.3, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { UNDEAD },
							["isBreadcrumb"] = true,
						}),
						q(3095, {	-- Simple Scroll
							["providers"] = {
								{ "n", 1569 },	-- Shadow Priest Sarvis
								{ "i", 9546 },	-- Simple Scroll
							},
							-- #if AFTER CATA
							["sourceQuest"] = 26801,	-- Scourge on our Perimeter
							["coord"] = { 46.8, 58.8, DEATHKNELL },
							-- #else
							["sourceQuest"] = 364,	-- The Mindless Ones
							["coord"] = { 30.8, 66.2, TIRISFAL_GLADES },
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { UNDEAD },
							["classes"] = { WARRIOR },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77671, {	-- Spell Research
							["providers"] = {
								{ "n", 2124 },	-- Isabella <Mage Trainer>
								{ "i", 211809 },	-- Comprehension Primer
							},
							["coord"] = { 30.8, 66, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { MAGE },
							["races"] = { UNDEAD },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Ice Lance
									["provider"] = { "i", 203745 },	-- Spell Notes: Ice Lance
								}),
								recipe(401760),	-- Engrave Gloves - Ice Lance
								i(211779),	-- Comprehension Charm
								i(711),	-- Tattered Cloth Gloves
							},
						})),
						-- #endif
						q(3099, {	-- Tainted Scroll
							["providers"] = {
								{ "n", 1569 },	-- Shadow Priest Sarvis
								{ "i", 9578 },	-- Tainted Scroll
							},
							-- #if AFTER CATA
							["sourceQuest"] = 26801,	-- Scourge on our Perimeter
							["coord"] = { 46.8, 58.8, DEATHKNELL },
							-- #else
							["sourceQuest"] = 364,	-- The Mindless Ones
							["coord"] = { 30.8, 66.2, TIRISFAL_GLADES },
							-- #endif
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { UNDEAD },
							["classes"] = { WARLOCK },
						}),
						q(376, {	-- The Damned
							["qg"] = 1661,	-- Novice Elreth
							["coord"] = { 30.9, 66.1, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["lvl"] = 2,
							-- #if BEFORE 4.0.3
							["groups"] = {
								objective(1, {	-- 0/6 Scavenger Paw
									["provider"] = { "i", 3265 },	-- Scavenger Paw
									["crs"] = {
										1509,	-- Ragged Scavenger
										1508,	-- Young Scavenger
									},
								}),
								objective(2, {	-- 0/6 Duskbat Wing
									["provider"] = { "i", 3264 },	-- Duskbat Wing
									["crs"] = {
										1512,	-- Duskbat
										1553,	-- Greater Duskbat
										1513,	-- Mangy Duskbat
									},
								}),
								i(6060),	-- Flax Bracers
								i(2173),	-- Old Leather Belt
							},
							-- #endif
						}),
						q(26802, {	-- The Damned
							["qg"] = 1570,	-- Executor Arren
							["sourceQuest"] = 28672,	-- The Executor in the Field
							["coord"] = { 55.4, 37.7, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(6060),	-- Flax Bracers
								i(2173),	-- Old Leather Belt
								i(131605, {	-- Rusty Chain Belt
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
						q(28672, {	-- The Executor In the Field
							["qg"] = 1661,	-- Novice Elreth
							["sourceQuest"] = 24961,	-- The Truth of the Grave
							["coord"] = { 46.7, 58.2, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77672, {	-- The Lost Rune [Warlock]
							["qg"] = 2126,	-- Maximillion <Warlock Trainer>
							["coord"] = { 30.8, 66.2, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { WARLOCK },
							["races"] = { UNDEAD },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Haunt
									["provider"] = { "i", 205230 },	-- Rune of Haunting
								}),
								recipe(403919),	-- Engrave Gloves - Haunt
								i(711),	-- Tattered Cloth Gloves
							},
						})),
						applyclassicphase(SOD_PHASE_ONE, q(77668, {	-- The Lost Rune [Warrior]
							["qg"] = 2119,	-- Dannal Stern <Warrior Trainer>
							["coord"] = { 32.6, 65.6, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { WARRIOR },
							["races"] = { UNDEAD },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Victory Rush
									["provider"] = { "i", 204806 },	-- Rune of Victory Rush
								}),
								recipe(403470),	-- Engrave Gloves - Victory Rush
								i(2385),	-- Tarnished Chain Gloves
							},
						})),
						-- #endif
						q(364, {	-- The Mindless Ones
							["qg"] = 1569,	-- Shadow Priest Sarvis
							["sourceQuest"] = 363,	-- Rude Awakening
							["coord"] = { 30.8, 66.2, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Mindless Zombie slain
									["provider"] = { "n", 1501 },	-- Mindless Zombie
								}),
								objective(2, {	-- 0/8 Wretched Zombie slain
									["provider"] = { "n", 1502 },	-- Wretched Zombie
								}),
								-- #if BEFORE 4.0.3
								i(3275),	-- Flax Gloves
								i(11847),	-- Battered Cloak
								-- #endif
							},
						}),
						q(382, {	-- The Red Messenger
							["qg"] = 1570,	-- Executor Arren
							["sourceQuest"] = 381,	-- The Scarlet Crusade
							["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Scarlet Crusade Documents
									["provider"] = { "i", 2885 },	-- Scarlet Crusade Documents
									["coord"] = { 36.6, 68.6, TIRISFAL_GLADES },
									["cr"] = 1667,	-- Meven Korgal
								}),
								-- #if BEFORE 4.0.3
								i(3277),	-- Executor Staff
								i(3276),	-- Deathguard Buckler
								-- #endif
							},
						}),
						q(381, {	-- The Scarlet Crusade
							["qg"] = 1570,	-- Executor Arren
							["sourceQuest"] = 380,	-- Night Web's Hollow
							["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/12 Scarlet Armband
									["provider"] = { "i", 3266 },	-- Scarlet Armband
									["crs"] = {
										1507,	-- Scarlet Initiate
										1506,	-- Scarlet Convert
										1667,	-- Meven Korgal
									},
								}),
								-- #if BEFORE 4.0.3
								i(3268),	-- Forsaken Dagger
								i(3269),	-- Forsaken Maul
								i(3267),	-- Forsaken Shortsword
								i(5779),	-- Forsaken Bastard Sword
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77669, {	-- The Scarlet Rune
							["qg"] = 2122,	-- David Trias <Rogue Trainer>
							["coord"] = { 32.6, 65.6, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { ROGUE },
							["races"] = { UNDEAD },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Shadowstrike
									["provider"] = { "i", 204795 },	-- Rune of Shadowstrike
									["coord"] = { 38.2, 68.4, TIRISFAL_GLADES },
									["cr"] = 1506,	-- Scarlet Convert
								}),
								recipe(400105),	-- Engrave Gloves - Shadowstrike
								i(2125),	-- Cracked Leather Gloves
							},
						})),
						-- #endif
						q(28608, {	-- The Shadow Grave
							["qg"] = 1568,	-- Undertaker Mordo
							["sourceQuest"] = 24959,	-- Fresh out of the Grave
							["coord"] = { 43.4, 79.9, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { UNDEAD },
						}),
						q(24961, {	-- The Truth of the Grave
							["qg"] = 1661,	-- Novice Elreth
							["sourceQuest"] = 28651,	-- Novice Elreth
							["coord"] = { 46.7, 58.1, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
						}),
						q(24960, {	-- The Wakening
							["qg"] = 2307,	-- Caretaker Caice
							["sourceQuest"] = 28652,	-- Caretaker Caice
							["coord"] = { 45.9, 80.4, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { UNDEAD },
						}),
						q(26799, {	-- Those That Couldn't Be Saved
							["qg"] = 1568,	-- Undertaker Mordo
							["sourceQuest"] = 28608,	-- The Shadow Grave
							["coord"] = { 43.4, 79.9, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = { UNDEAD },
							["groups"] = {
								i(3275),	-- Flax Gloves
								i(11847),	-- Battered Cloak
							},
						}),
						q(31147, {	-- Tiger Palm
							["qg"] = 63272,	-- Ting, Strong of Stomach
							["sourceQuest"] = 31146,	-- Scribbled Scroll
							["coord"] = { 53.0, 56.4, DEATHKNELL },
							["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
							["races"] = { UNDEAD },
							["classes"] = { MONK },
						}),
						q(383, {	-- Vital Intelligence
							["providers"] = {
								{ "n", 1570 },	-- Executor Arren
								{ "i", 2885 },	-- Scarlet Crusade Documents
							},
							["sourceQuest"] = 382,	-- The Red Messenger
							["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["lvl"] = 2,
						}),
						q(24972, {	-- Vital Intelligence
							["qg"] = 1569,	-- Shadow Priest Sarvis
							["sourceQuest"] = 24971,	-- Assault on the Rotbrain Encampment
							["coord"] = { 46.6, 58.8, DEATHKNELL },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
						}),
					}),
					-- #if AFTER 5.1.0.16309
					n(RARES, {
						n(50328, {	-- Fangor
							["coords"] = {
								{ 61.6, 79.6, DEATHKNELL },
								{ 65.2, 79.8, DEATHKNELL },
							},
							["timeline"] = { ADDED_5_1_0 },
						}),
					}),
					-- #endif
					-- #if SEASON_OF_DISCOVERY
					n(TREASURES, {
						applyclassicphase(SOD_PHASE_ONE, o(406736, {	-- Lost Stash
							["coord"] = { 24.7, 59.4, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_2_0_1 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(205230, {	-- Rune of Haunting
									["classes"] = { WARLOCK },
								}),
								i(204806, {	-- Rune of Victory Rush
									["classes"] = { WARRIOR },
								}),
							},
						})),
					}),
					-- #endif
					n(ZONE_DROPS, {
						i(3295, {	-- Deadman Blade
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
							["cr"] = 1919,	-- Samuel Fipps
							["coords"] = {
								-- #if AFTER CATA
								{ 70.8, 38.4, DEATHKNELL },
								-- #else
								{ 36.6, 61.6, TIRISFAL_GLADES },
								-- #endif
							},
						}),
						i(3293, {	-- Deadman Cleaver
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
							["cr"] = 1917,	-- Daniel Ulfman
							["coords"] = {
								-- #if AFTER CATA
								{ 70.8, 41.0, DEATHKNELL },
								-- #else
								{ 36.6, 61.8, TIRISFAL_GLADES },
								-- #endif
							},
						}),
						i(3294, {	-- Deadman Club
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
							["cr"] = 1918,	-- Karrel Grayves
							["coords"] = {
								-- #if AFTER CATA
								{ 71.2, 40.6, DEATHKNELL },
								-- #else
								{ 36.6, 61.6, TIRISFAL_GLADES },
								-- #endif
							},

						}),
						i(3296, {	-- Deadman Dagger
							["coords"] = {
								-- #if AFTER CATA
								{ 70.0, 40.6, DEATHKNELL },
								-- #else
								{ 36.6, 61.6, TIRISFAL_GLADES },
								-- #endif
							},
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
							["cr"] = 1916,	-- Stephen Bhartec
						}),
						i(3262, {	-- Putrid Wooden Hammer
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
							["cr"] = 1890,	-- Rattlecage Skeleton
							["coords"] = {
								-- #if AFTER CATA
								{ 52.8, 42.8, DEATHKNELL },
								-- #else
								{ 33.0, 63.6, TIRISFAL_GLADES },
								-- #endif
							},
						}),
						-- #if BEFORE 10.1.7
						i(3260, {	-- Scarlet Initiate Robes
							["cr"] = 1507,	-- Scarlet Initiate
							["coord"] = { 37.4, 68.0, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
						}),
						-- #endif
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(203751, {	-- Spell Notes: CALE ENCI
							["coord"] = { 38.2, 68.4, TIRISFAL_GLADES },
							["classes"] = { MAGE },
							["cr"] = 1507,	-- Scarlet Initiate
						})),
						-- #endif
						i(2754, {	-- Tarnished Bastard Sword
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
							-- #if AFTER CATA
							["coord"] = { 72.2, 66.4, DEATHKNELL },
							["cr"] = 49422,	-- Rotbrain Berserker
							-- #else
							["cr"] = 1506,	-- Scarlet Convert
							["coord"] = { 36.8, 68.0, TIRISFAL_GLADES },
							-- #endif
						}),
						i(3263, {	-- Webbed Pants
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
							["cr"] = 1505,	-- Night Web Spider
							["coords"] = {
								-- #if BEFORE CATA
								{ 27.6, 59.2, TIRISFAL_GLADES },
								-- #else
								{ 26.8, 31.8, DEATHKNELL },
								-- #endif
							},
						}),
					}),
				},
			}),
			-- #if NOT ANYCLASSIC
			m(SCARLET_MONASTERY_ENTRANCE, {
				n(QUESTS, {
					q(77644,{	-- The Scarlet Key
						["timeline"] = { ADDED_10_1_7 },
						["cost"] = { {"i", 208485, 1} },	-- The Scarlet Key
						["coord"] = { 48, 56.3, SCARLET_MONASTERY_ENTRANCE },
					}),
				}),
				n(TREASURES, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {
					o(421151, {	-- Carved Eye
						["coord"] = { 40.5, 53.6, SCARLET_MONASTERY_ENTRANCE },
						["timeline"] = { ADDED_10_2_5 },
						["g"] = {
							i(212984),	-- Grimoire of the Zealous Observer (CI!)
						},
					}),
				})),
				n(ZONE_DROPS, {
					["icon"] = 133154,
					["crs"] = {
						4284,	-- Scarlet Augur
						4285,	-- Scarlet Disciple
						4282,	-- Scarlet Magician
						4280,	-- Scarlet Preserver
						4281,	-- Scarlet Scout
						4283,	-- Scarlet Sentry
					},
					["groups"] = {
						i(7753),	-- Bloodspiller
						i(7729),	-- Chesterfall Musket
						i(13049),	-- Deanship Claymore
						i(3203),	-- Dense Triangle Mace
						i(7786),	-- Headsplitter
						i(7787),	-- Resplendent Guardian
						i(8226),	-- The Butcher
						i(15928),	-- Silver-Thread Rod
						i(6395),	-- Silver-Thread Amice
						i(4713),	-- Silver-Thread Cloak
						i(4035),	-- Silver-Thread Robe
						i(7110),	-- Silver-Thread Armor
						i(4036),	-- Silver-Thread Cuffs
						i(6393),	-- Silver-Thread Gloves
						i(4714),	-- Silver-Thread Sash
						i(4037),	-- Silver-Thread Pants
						i(6394),	-- Silver-Thread Boots
						i(7727),	-- Watchman Pauldrons
						i(7754),	-- Harbinger Boots
						i(13114),	-- Troll's Bane Leggings
						i(6592),	-- Battleforge Armor
						i(7728),	-- Beguiler Robes
					},
				}),
			}),
			-- #endif
			n(ACHIEVEMENTS, {
				explorationAch(768),	-- Explore Tirisfal Glades
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					417,	-- Bat (PET!)
					646,	-- Chicken (PET!)
					417,	-- Rat (PET!)
					458,	-- Lost of Lordaeron (PET!)
				}},
			}),
			explorationHeader({
				-- #if AFTER BFA
				["OnTooltip"] = [[_.OnTooltipDB.ZidormiTravelArtID1136]],
				-- #endif
				["groups"] = {
					exploration(157),	-- Agamand Mills
					exploration(165),	-- Balnir Farmstead
					exploration(162),	-- Brightwater Lake
					exploration(159),	-- Brill
					-- #if AFTER CATA
					exploration(4916),	-- Calston Estate
					-- #endif
					exploration(166),	-- Cold Hearth Manor
					exploration(167),	-- Crusader Outpost
					exploration(154),	-- Deathknell
					exploration(164),	-- Garren's Haunt
					-- #if AFTER CATA
					exploration(163),	-- Gunther's Retreat
					-- #endif
					exploration(811),	-- Nightmare Vale
					-- #if AFTER CATA
					exploration(153),	-- Ruins of Lordaeron
					exploration(796),	-- Scarlet Monastery
					exploration(5511),	-- Scarlet Monastery Entrance
					-- #endif
					exploration(459),	-- Scarlet Watch Post
					-- #if AFTER CATA
					exploration(4921),	-- Scarlet Watchtower
					-- #endif
					exploration(156),	-- Solliden Farmstead
					-- #if BEFORE CATA
					exploration(810),	-- Stillwater Pond
					-- #endif
					exploration(161),	-- Terrace of Repose
					exploration(152),	-- The Bulwark
					exploration(812),	-- Venomweb Vale
					exploration(160),	-- Whispering Gardens
					-- #if BEFORE CATA
					exploration(1497),	-- Undercity
					-- #endif
					--[[
					exploration(158),	-- Agamand Family Crypt
					exploration(2118),	-- Brill Town Hall
					exploration(173),	-- Faol's Rest
					exploration(2119),	-- Gallows' End Tavern
					exploration(155),	-- Night Web's Hollow
					exploration(2117),	-- Shadow Grave
					exploration(2399),	-- The Great Sea
					exploration(168),	-- The North Coast
					exploration(169),	-- Whispering Shore
					]]--
				},
			}),
			-- #if AFTER 3.3.0.10554
			n(FLIGHT_PATHS, {
				fp(460, {	-- Brill, Tirisfal Glades
					["cr"] = 43124,	-- Anette Williams <Bat Handler>
					["coord"] = { 58.8, 51.8, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(384, {	-- The Bulwark, Tirisfal
					["cr"] = 37915,	-- Timothy Cunningham <Bat Handler>
					["coord"] = { 83.4, 70.0, TIRISFAL_GLADES },
					["timeline"] = { ADDED_3_3_0 },
					["races"] = HORDE_ONLY,
				}),
			}),
			-- #endif
			-- #if AFTER 10.1.7
			spell(921, {	-- Pickpocketing
				i(3330, {	-- Dargol's Hauberk
					["timeline"] = { ADDED_10_1_7 },	-- ATT Discord 20.09.2023
					["description"] = "Can be pickpocketed from Captain Dargol.",
					--	["cr"] = 1658,	-- Captain Dargol
					["coords"] = {
						{ 52.6, 26.2, TIRISFAL_GLADES },
						{ 52.4, 26.6, TIRISFAL_GLADES },
					},
				}),
			}),
			-- #endif
			-- #if SEASON_OF_DISCOVERY
			spell(921, {	-- Pickpocketing
				["classes"] = { ROGUE },
				["groups"] = {
					applyclassicphase(SOD_PHASE_ONE, i(208005, {	-- Agamand Relic Coffer Key
						["coords"] = {
							{ 58.8, 38.2, TIRISFAL_GLADES },
							{ 53.0, 28.8, TIRISFAL_GLADES },
							{ 46.0, 30.6, TIRISFAL_GLADES },
							{ 52.8, 56.8, TIRISFAL_GLADES },
						},
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							1674,	-- Rot Hide Gnoll
							1534,	-- Wailing Ancestor
							1523,	-- Cracked Skull Soldier
							1522,	-- Darkeye Bonecaster
							1526,	-- Ravaged Corpse
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(208085, {	-- Scarlet Lieutenant Signet Ring
						["coords"] = {
							{ 51.8, 67.4, TIRISFAL_GLADES },
							{ 79, 26, TIRISFAL_GLADES },
						},
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							1662,	-- Captain Perrine
							1665,	-- Captain Melrache
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(208007, {	-- Shipwreck Cache Key
						["coord"] = { 35.8, 43.4, TIRISFAL_GLADES },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							1545,	-- Vile Fin Muckdweller
							1543,	-- Vile Fin Puddlejumper
							1544,	-- Vile Fin Minor Oracle
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(208034, {	-- Tirisfal Treasure Map
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["cost"] = {
							{ "i", 208038, 1 },	-- Bottom-Left Map Piece
							{ "i", 208037, 1 },	-- Bottom-Right Map Piece
							{ "i", 208036, 1 },	-- Top-Left Map Piece
							{ "i", 208035, 1 },	-- Top-Right Map Piece
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(208038, {	-- Bottom-Left Map Piece
						["coord"] = { 56.6, 44.4, TIRISFAL_GLADES },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							1941,	-- Rot Hide Graverobber
							1675,	-- Rot Hide Mongrel
							1674,	-- Rot Hide Gnoll
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(208037, {	-- Bottom-Right Map Piece
						["coord"] = { 35.8, 43.4, TIRISFAL_GLADES },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							1545,	-- Vile Fin Muckdweller
							1543,	-- Vile Fin Puddlejumper
							1544,	-- Vile Fin Minor Oracle
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(208036, {	-- Top-Left Map Piece
						["coord"] = { 37.4, 49.2, TIRISFAL_GLADES },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							1935,	-- Tirisfal Farmhand
							1934,	-- Tirisfal Farmer
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(208035, {	-- Top-Right Map Piece
						["coord"] = { 32.8, 50.4, TIRISFAL_GLADES },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							1535,	-- Scarlet Warrior
							1536,	-- Scarlet Missionary
							1538,	-- Scarlet Friar
							1540,	-- Scarlet Vanguard
							1537,	-- Scarlet Zealot
							1539,	-- Scarlet Neophyte
						},
					})),
				},
			}),
			-- #endif
			n(QUESTS, {
				q(25046, {	-- A Daughter's Embrace
					["qg"] = 13158,	-- Lieutenant Sanders
					["sourceQuest"] = 25010,	-- A Deadly New Ally
					["coord"] = { 87.5, 43.2, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(57169, {	-- Darrington's Dirk
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57170, {	-- Lilian's Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57171, {	-- Executor's Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57791, {	-- Headsman's Bag
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25010, {	-- A Deadly New Ally
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuest"] = 25009,	-- At War With The Scarlet Crusade
					["coord"] = { 83.2, 68.9, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(361, {	-- A Letter Undelivered
					["providers"] = {
						{ "i", 2839 },	-- A Letter to Yvette
						{ "i", 2837 },	-- Thurman's Letter
					},
					["coord"] = { 61.6, 52.6, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
				}),
				q(25013, {	-- A Little Oomph
					["qg"] = 11057,	-- Apothecary Dithers
					["sourceQuest"] = 25056,	-- Grisly Grizzlies
					["coord"] = { 83.2, 69.2, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Vicious Night Web Spider Venom
							["provider"] = { "i", 2872 },	-- Vicious Night Web Spider Venom
							["cr"] = 1555,	-- Vicious Night Web Spider
						}),
						i(57167, {	-- Night Web Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57166, {	-- Advanced Night Web Crossbow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57168, {	-- Reaper's Buckler
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(367, {	-- A New Plague (1/4)
					["qg"] = 1518,	-- Apothecary Johaan
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
					["groups"] = {
						objective(1, {	-- 0/5 Darkhound Blood
							["provider"] = { "i", 2858 },	-- Darkhound Blood
							["crs"] = {
								1548,	-- Cursed Darkhound
								1547,	-- Decrepit Darkhound
							},
						}),
						-- #if BEFORE 4.0.3
						i(3382),	-- Weak Troll's Blood Potion
						-- #endif
					},
				}),
				q(368, {	-- A New Plague (2/4)
					["qg"] = 1518,	-- Apothecary Johaan
					["sourceQuest"] = 367,	-- A New Plague (1/4)
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
					["groups"] = {
						objective(1, {	-- 0/5 Vile Fin Scale
							["provider"] = { "i", 2859 },	-- Vile Fin Scale
							["crs"] = {
								1544,	-- Vile Fin Minor Oracle
								1545,	-- Vile Fin Muckdweller
								1543,	-- Vile Fin Puddlejumper
							},
						}),
						-- #if BEFORE 4.0.3
						i(3434),	-- Slumber Sand
						-- #endif
					},
				}),
				q(369, {	-- A New Plague (3/4)
					["qg"] = 1518,	-- Apothecary Johaan
					["sourceQuest"] = 368,	-- A New Plague (2/4)
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
					["groups"] = {
						objective(1, {	-- 0/4 Vicious Night Web Spider Venom
							["provider"] = { "i", 2872 },	-- Vicious Night Web Spider Venom
							["cr"] = 1555,	-- Vicious Night Web Spider
						}),
						i(3442, {	-- Apprentice Sash
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(492, {	-- A New Plague (4/4)
					["providers"] = {
						{ "n", 1518 },	-- Apothecary Johaan
						{ "i", 3460 },	-- Johaan's Special Drink
					},
					["sourceQuest"] = 369,	-- A New Plague (3/4)
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
				}),
				q(404, {	-- A Putrid Task
					["qg"] = 1496,	-- Deathguard Dillinger
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- 0/7 Putrid Claw
							["provider"] = { "i", 2855 },	-- Putrid Claw
							["crs"] = {
								1526,	-- Ravaged Corpse
								1525,	-- Rotting Dead
							},
						}),
					},
				}),
				q(25090, {	-- A Putrid Task
					["qg"] = 1496,	-- Deathguard Dillinger
					["coord"] = { 52.5, 54.8, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Putrid Claw
							["provider"] = { "i", 2855 },	-- Putrid Claw
							["crs"] = {
								1525,	-- Rotting Dead
								1526,	-- Ravaged Corpse
							},
						}),
					},
				}),
				q(24979, {	-- A Scarlet Letter
					["provider"] = { "i", 52079 },	-- A Scarlet Letter
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Find the Scarlet Prisoner
							["provider"] = { "n", 38999 },	-- Lilian Voss
						}),
					},
				}),
				q(24981, {	-- A Thorn in our Side
					["qg"] = 1515,	-- Executor Zygand
					["coord"] = { 60.5, 51.8, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 Scarlet Zealot slain
							["provider"] = { "n", 1537 },	-- Scarlet Zealot
						}),
						objective(2, {	-- 0/3 Scarlet Missionary slain
							["provider"] = { "n", 1536 },	-- Scarlet Missionary
						}),
						objective(3, {	-- 0/1 Urgent Scarlet Memorandum
							["provider"] = { "i", 52077 },	-- Urgent Scarlet Memorandum
							["crs"] = {
								1536,	-- Scarlet Missionary
								1537,	-- Scarlet Zealot
								1662,	-- Captain Perrine
								39086,	-- Slain Scarlet Zealot
							},
						}),
					},
				}),
				q(26930, {	-- After the Crusade
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuest"] = 26926,	-- Victory, For Now
					["coord"] = { 83.2, 68.9, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(1821, {	-- Agamand Heirlooms
					["qg"] = 1500,	-- Coleman Farthing
					["sourceQuest"] = 1820,	-- Speak with Coleman
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Agamand Family Axe
							["providers"] = {
								{ "i",   7567 },	-- Agamand Family Axe
								{ "o", 105170 },	-- Agamand Weapon Rack
							},
							["coord"] = { 51.7, 25.7, TIRISFAL_GLADES },
						}),
						objective(2, {	-- 0/1 Agamand Family Dagger
							["providers"] = {
								{ "i",   7568 },	-- Agamand Family Dagger
								{ "o", 105172 },	-- Agamand Weapon Rack
							},
							["coord"] = { 52.6, 26.9, TIRISFAL_GLADES },
						}),
						objective(3, {	-- 0/1 Agamand Family Mace
							["providers"] = {
								{ "i",   7569 },	-- Agamand Family Mace
								{ "o", 105171 },	-- Agamand Weapon Rack
							},
							["coord"] = { 51.9, 27.1, TIRISFAL_GLADES },
						}),
						objective(4, {	-- 0/1 Agamand Family Sword
							["providers"] = {
								{ "i",   7566 },	-- Agamand Family Sword
								{ "o", 105169 },	-- Agamand Weapon Rack
							},
							["coord"] = { 52.6, 25.9, TIRISFAL_GLADES },
						}),
					},
				}),
				q(24993, {	-- Annihilate the Worgen
					["qg"] = 1515,	-- Executor Zygand
					["sourceQuest"] = 24992,	-- Escaped From Gilneas
					["coord"] = { 60.5, 51.8, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Worgen Infiltrator slain
							["provider"] = { "n", 38967 },	-- Worgen Infiltrator
						}),
						i(57155, {	-- Worgen Slaying Sword
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57154, {	-- Executor's Cape
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156944, {	-- Worgen Training Stick
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(427, {	-- At War With The Scarlet Crusade (1/4)
					["qg"] = 1515,	-- Executor Zygand
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- 0/10 Scarlet Warrior slain
							["provider"] = { "n", 1535 },	-- Scarlet Warrior
						}),
					},
				}),
				q(370, {	-- At War With The Scarlet Crusade (2/4)
					["qg"] = 1515,	-- Executor Zygand
					["sourceQuest"] = 427,	-- At War With The Scarlet Crusade (1/4)
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- 0/1 Captain Perrine slain
							["provider"] = { "n", 1662 },	-- Captain Perrine
							["coord"] = { 51.8, 67.4, TIRISFAL_GLADES },
						}),
						objective(2, {	-- 0/3 Scarlet Zealot slain
							["provider"] = { "n", 1537 },	-- Scarlet Zealot
						}),
						objective(3, {	-- 0/3 Scarlet Missionary slain
							["provider"] = { "n", 1536 },	-- Scarlet Missionary
						}),
					},
				}),
				q(371, {	-- At War With The Scarlet Crusade (3/4)
					["qg"] = 1515,	-- Executor Zygand
					["sourceQuest"] = 370,	-- At War With The Scarlet Crusade (2/4)
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- 0/1 Captain Vachon slain
							["provider"] = { "n", 1664 },	-- Captain Vachon
							["coord"] = { 79.6, 55.8, TIRISFAL_GLADES },
						}),
						objective(2, {	-- 0/5 Scarlet Friar slain
							["provider"] = { "n", 1538 },	-- Scarlet Friar
						}),
					},
				}),
				q(372, {	-- At War With The Scarlet Crusade (4/4)
					["qg"] = 1515,	-- Executor Zygand
					["sourceQuest"] = 371,	-- At War With The Scarlet Crusade (3/4)
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- 0/1 Captain Melrache slain
							["provider"] = { "n", 1665 },	-- Captain Melrache
							["coord"] = { 79.6, 26.8, TIRISFAL_GLADES },
						}),
						objective(2, {	-- 0/2 Scarlet Bodyguard slain
							["provider"] = { "n", 1660 },	-- Scarlet Bodyguard
						}),
						i(3445, {	-- Ceremonial Knife
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3071, {	-- Striking Hatchet
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25009, {	-- At War With The Scarlet Crusade
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuest"] = 25007,	-- East... Always to the East
					["coord"] = { 83.2, 68.9, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(BURLY_BRAWL, {
					["questID"] = 75300,	-- Burly Brawl HQT	-- TODO: Confirm if this is the same HQT.
					["qgs"] = {
						208920,	-- Penny Hawkins <Bartender>
						208919,	-- Blueheart
					},
					["coord"] = { 61.8, 52.0, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(204716, {	-- Rune of Frenzied Assault
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(425447),	-- Engrave Pants - Frenzied Assault
							},
						}),
					},
				})),
				-- #endif
				q(24990, {	-- Darkhound Pounding
					["qg"] = 10665,	-- Junior Apothecary Holland
					["sourceQuests"] = {
						24974,	-- Ever So Lonely
						25038,	-- Gordo's Task
						24977,	-- Johaan's Experiment
						24980,	-- The Scarlet Palisade
						24976,	-- Variety is the Spice of Death
					},
					["coord"] = { 60.1, 52.6, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Darkhound Blood
							["provider"] = { "i", 2858 },	-- Darkhound Blood
							["crs"] = {
								1547,	-- Decrepit Darkhound
								1548,	-- Cursed Darkhound
								1549,	-- Ravenous Darkhound
							},
						}),
					},
				}),
				q(354, {	-- Deaths in the Family
					["qg"] = 1500,	-- Coleman Farthing
					-- #if BEFORE WRATH
					["sourceQuest"] = 362,	-- The Haunted Mills
					-- #endif
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						objective(1, {	-- 0/1 Gregor's Remains
							["provider"] = { "i", 2829 },	-- Gregor's Remains
							["coord"] = { 46.8, 29.6, TIRISFAL_GLADES },
							["cr"] = 1654,	-- Gregor Agamand
						}),
						objective(2, {	-- 0/1 Nissa's Remains
							["provider"] = { "i", 2828 },	-- Nissa's Remains
							["coord"] = { 49.6, 36.2, TIRISFAL_GLADES },
							["cr"] = 1655,	-- Nissa Agamand
						}),
						objective(3, {	-- 0/1 Thurman's Remains
							["provider"] = { "i", 2830 },	-- Thurman's Remains
							["coord"] = { 44.0, 33.4, TIRISFAL_GLADES },
							["cr"] = 1656,	-- Thurman Agamand
						}),
					},
				}),
				q(25029, {	-- Deaths in the Family
					["qg"] = 1500,	-- Coleman Farthing
					["sourceQuest"] = 25003,	-- The Family Crypt
					["coord"] = { 54.5, 29.8, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Nissa's Remains
							["provider"] = { "i", 2828 },	-- Nissa's Remains
							["cr"] = 1655,	-- Nissa Agamand
						}),
						objective(2, {	-- 0/1 Gregor's Remains
							["provider"] = { "i", 2829 },	-- Gregor's Remains
							["cr"] = 1654,	-- Gregor Agamand
						}),
						objective(3, {	-- 0/1 Thurman's Remains
							["provider"] = { "i", 2830 },	-- Thurman's Remains
							["cr"] = 1656,	-- Thurman Agamand
						}),
						objective(4, {	-- 0/1 Devlin's Remains
							["provider"] = { "i", 2831 },	-- Devlin's Remains
							["cr"] = 1657,	-- Devlin Agamand
						}),
						i(3446),	-- Darkwood Staff
						i(3440),	-- Bonecracker
					},
				}),
				q(445, {	-- Delivery to Silverpine Forest
					["providers"] = {
						{ "n", 1518 },	-- Apothecary Johaan
						{ "i", 3238 },	-- Johaan's Findings
					},
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5482, {	-- Doom Weed
					["qg"] = 10665,	-- Junior Apothecary Holland
					["sourceQuest"] = 5481,	-- Gordo's Task
					["coord"] = { 57.5, 49, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- 0/10 Doom Weed
							["provider"] = { "i", 13702 },	-- Doom Weed
						}),
					},
				}),
				q(24994, {	-- Doom Weed
					["qg"] = 38977,	-- Apothecary Jerrod
					["sourceQuest"] = 24991,	-- Garren's Haunt
					["coord"] = { 61.6, 34.5, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Doom Weed
							["providers"] = {
								{ "i", 13702 },	-- Doom Weed
								{ "o", 176753 },	-- Doom Weed
							},
						}),
					},
				}),
				q(25007, {	-- East... Always to the East
					["qg"] = 1499,	-- Magistrate Sevren
					["sourceQuest"] = 25006,	-- The Grasp Weakens
					["coord"] = { 60.9, 50.4, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(24992, {	-- Escaped From Gilneas
					["sourceQuest"] = 24990,	-- Darkhound Pounding
					["cr"] = 1548,	-- Cursed Darkhound
					["description"] = "Quest is granted by getting in combat with (not by killing) a Cursed Darkhound while on or after completing |cFFFFD700Darkhound Pounding|r.",
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(24974, {	-- Ever So Lonely
					["qg"] = 38925,	-- Sidrick Calston
					["coord"] = { 44.7, 53.6, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(365, {	-- Fields of Grief (1/2)
					["qg"] = 1519,	-- Deathguard Simmer
					["coord"] = { 40.9, 54.2, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- 0/10 Tirisfal Pumpkin
							["providers"] = {
								{ "i", 2846 },	-- Tirisfal Pumpkin
								{ "o", 375 },	-- Tirisfal Pumpkin
							},
							["coord"] = { 35.5, 52.5, TIRISFAL_GLADES },
						}),
					},
				}),
				q(407, {	-- Fields of Grief (2/2)
					["providers"] = {
						{ "n", 1518 },	-- Apothecary Johaan
						{ "i", 3035 },	-- Laced Pumpkin
					},
					["sourceQuest"] = 365,	-- Fields of Grief (1/2)
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
				}),
				q(24975, {	-- Fields of Grief
					["qg"] = 1518,	-- Apothecary Johaan
					["coord"] = { 44.6, 53.7, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Tirisfal Pumpkin
							["providers"] = {
								{ "i", 2846 },	-- Tirisfal Pumpkin
								{ "o", 375 },	-- Tirisfal Pumpkin
							},
						}),
					},
				}),
				q(359, {	-- Forsaken Duties
					["qg"] = 1499,	-- Magistrate Sevren
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
				}),
				q(24983, {	-- Forsaken Duties
					["qg"] = 1499,	-- Magistrate Sevren
					["sourceQuest"] = 24982,	-- The New Forsaken
					["coord"] = { 60.9, 50.5, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(5650, {	-- Garments of Darkness
					["qg"] = 2129,	-- Dark Cleric Beryl <Priest Trainer>
					["sourceQuest"] = 5651,	-- In Favor of Darkness
					["coord"] = { 61.6, 52.2, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { UNDEAD },
					["classes"] = { PRIEST },
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- Heal and fortify Deathguard Kel
							["provider"] = { "n", 12428 },	-- Deathguard Kel
							["coord"] = { 59.2, 46.4, TIRISFAL_GLADES },
						}),
						i(16607, {	-- Acolyte's Sacrificial Robes
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24991, {	-- Garren's Haunt
					["qg"] = 10665,	-- Apothecary Holland
					["sourceQuest"] = 24996,	-- Holland's Experiment
					["coord"] = { 60.1, 52.6, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
				}),
				q(5481, {	-- Gordo's Task
					["qg"] = 10666,	-- Gordo
					["coord"] = { 55.8, 52.4, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- 0/3 Gloom Weed
							["providers"] = {
								{ "i",  12737 },	-- Gloom Weed
								{ "o", 175566 },	-- Gloom Weed
							},
							["coord"] = { 49.7, 54.9, TIRISFAL_GLADES },
						}),
					},
				}),
				q(25038, {	-- Gordo's Task
					["qg"] = 10666,	-- Gordo
					["sourceQuest"] = 24977,	-- Johaan's Experiment
					["coord"] = { 44.2, 53.7, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 Gloom Weed
							["providers"] = {
								{ "i", 12737 },	-- Gloom Weed
								{ "o", 175566 },	-- Gloom Weed
							},
						}),
					},
				}),
				q(358, {	-- Graverobbers
					["qg"] = 1499,	-- Magistrate Sevren
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- 0/8 Rot Hide Graverobber
							["provider"] = { "n", 1941 },	-- Rot Hide Graverobber
						}),
						objective(2, {	-- 0/5 Rot Hide Mongrel
							["provider"] = { "n", 1675 },	-- Rot Hide Mongrel
						}),
						objective(3, {	-- 0/8 Embalming Ichor
							["provider"] = { "i", 2834 },	-- Embalming Ichor
							["crs"] = {
								1674,	-- Rot Hide Gnoll
								1941,	-- Rot Hide Graverobber
								1675,	-- Rot Hide Mongrel
							},
						}),
						-- #if BEFORE 4.0.3
						i(6063),	-- Cold Steel Gauntlets
						i(3439),	-- Zombie Skin Boots
						-- #endif
					},
				}),
				q(24997, {	-- Graverobbers
					["qg"] = 38978,	-- Apprentice Crispin
					["coord"] = { 61.6, 34.3, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Rot Hide Graverobber slain
							["provider"] = { "n", 1941 },	-- Rot Hide Graverobber
						}),
						objective(2, {	-- 0/5 Rot Hide Mongrel slain
							["provider"] = { "n", 1675 },	-- Rot Hide Mongrel
						}),
						objective(3, {	-- 0/6 Embalming Ichor
							["provider"] = { "i", 2834 },	-- Embalming Ichor
							["crs"] = {
								1674,	-- Rot Hide Gnoll
								1675,	-- Rot Hide Mongrel
								1941,	-- Rot Hide Graverobber
							},
						}),
						i(6063),	-- Cold Steel Gauntlets
						i(3439),	-- Zombie Skin Boots
					},
				}),
				q(25056, {	-- Grisly Grizzlies
					["qg"] = 11057,	-- Apothecary Dithers
					["coord"] = { 83.2, 69.2, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Plagued Bruin Hide
							["provider"] = { "i", 52270 },	-- Plagued Bruin Hide
							["cr"] = 39049,	-- Plagued Bruin
						}),
					},
				}),
				q(25039, {	-- Have You Seen Anything Weird Out There?
					["qg"] = 6785,	-- Ratslin Maime
					["sourceQuest"] = 24980,	-- The Scarlet Palisade
					["description"] = "Available if you abandon |cFFFFD700Escaped From Gilneas|r.",
					["coord"] = { 61.9, 52.0, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25031, {	-- Head for the Mills
					["qg"] = 38977,	-- Apothecary Jerrod
					["sourceQuests"] = {
						24999,	-- Planting the Seed of Fear
						24995,	-- Off the Scales
					},
					["coord"] = { 61.6, 34.6, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(1822, {	-- Heirloom Weapon
					["qg"] = 1500,	-- Coleman Farthing
					["sourceQuest"] = 1821,	-- Agamand Heirlooms
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
					["groups"] = {
						i(7115, {	-- Heirloom Axe
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(7117, {	-- Heirloom Hammer
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(7116, {	-- Heirloom Dagger
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(7118, {	-- Heirloom Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24996, {	-- Holland's Experiment
					["qg"] = 10665,	-- Junior Apothecary Holland
					["sourceQuest"] = 24990,	-- Darkhound Pounding
					["coord"] = { 60.1, 52.6, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(57143, {	-- Mountaineer's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131390, {	-- Mountaineer's Waistguard
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57144, {	-- Gallow's End Gauntlets
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(24977, {	-- Johaan's Experiment
					["qg"] = 1518,	-- Apothecary Johaan
					["sourceQuest"] = 24976,	-- Variety is the Spice of Death
					["coord"] = { 44.6, 53.7, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(32672, {	-- Learn to Ride
					["description"] = "This quest is available to Undead characters upon reaching level 10.",
					["timeline"] = { ADDED_4_0_3, REMOVED_10_1_5 },
					["races"] = { UNDEAD },
					["lvl"] = 10,
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
				}),
				q(14089, {	-- Learn to Ride in Tirisfal Glades
					["provider"] = { "i", 46881 },	-- Riding Training Pamphlet
					["description"] = "The pamphlet that starts this quest is sent to Undead in their Mailbox upon reaching the specified level.",
					["timeline"] = { ADDED_3_3_0, REMOVED_4_0_1 },
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["races"] = { UNDEAD },
					["lvl"] = lvlsquish(20, 20, 10),
				}),
				q(24998, {	-- Maggot Eye
					["qg"] = 38978,	-- Apprentice Crispin
					["sourceQuest"] = 24997,	-- Graverobbers
					["coord"] = { 61.6, 34.3, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Maggot Eye's Paw
							["provider"] = { "i", 3635 },	-- Maggot Eye's Paw
							["cr"] = 1753,	-- Maggot Eye
						}),
						i(57158, {	-- Foul Gnoll Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57159, {	-- Belt of Brill
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57160, {	-- Garren's Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131392, {	-- Waistguard of Brill
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(24995, {	-- Off the Scales
					["qg"] = 38977,	-- Apothecary Jerrod
					["sourceQuest"] = 24994,	-- Doom Weed
					["coord"] = { 61.6, 34.5, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Vile Fin Scale
							["provider"] = { "i", 2859 },	-- Vile Fin Scale
							["crs"] = {
								1541,	-- Vile Fin Murloc
								1543,	-- Vile Fin Puddlejumper
								1544,	-- Vile Fin Minor Oracle
								1545,	-- Vile Fin Muckdweller
							},
						}),
						i(57149, {	-- Cauldron Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57150, {	-- Vile Fin Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(3434),	-- Slumber Sand
					},
				}),
				q(24999, {	-- Planting the Seed of Fear
					["qg"] = 38978,	-- Apprentice Crispin
					["sourceQuest"] = 24994,	-- Doom Weed
					["coord"] = { 61.6, 34.3, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Vile Fin Tadpoles frightened
							["provider"] = { "n", 38937 },	-- Vile Fin Tadpole
						}),
					},
				}),
				q(374, {	-- Proof of Demise
					["qg"] = 1652,	-- Deathguard Burgess
					["sourceQuest"] = 427,	-- At War With The Scarlet Crusade (1/4)
					["coord"] = { 60.8, 52, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- 0/10 Scarlet Insignia Ring
							["provider"] = { "i", 2875 },	-- Scarlet Insignia Ring
							["crs"] = {
								1665,	-- Captain Melrache
								1662,	-- Captain Perrine
								1664,	-- Captain Vachon
								1660,	-- Scarlet Bodyguard
								1538,	-- Scarlet Friar
								1536,	-- Scarlet Missionary
								1539,	-- Scarlet Neophyte
								1540,	-- Scarlet Vanguard
								1535,	-- Scarlet Warrior
								1537,	-- Scarlet Zealot
							},
						}),
						i(3435, {	-- Zombie Skin Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3437, {	-- Clasped Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12299, {	-- Netted Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(409, {	-- Proving Allegiance
					["qg"] = 1497,	-- Gunther Arcanus
					["sourceQuest"] = 366,	-- Return the Book
					["coord"] = { 68.2, 42, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						q(431, {	-- Candles of Beckoning
							["provider"] = { "o", 1586 },	-- Crate of Candles
							["coord"] = { 68.1, 42, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["repeatable"] = true,
							["lvl"] = 5,
							["groups"] = {
								i(3080),	-- Candle of Beckoning
							},
						}),
						q(410, {	-- The Dormant Shade
							["providers"] = {
								{ "i", 3080 },	-- Candle of Beckoning
								{ "o", 1557 },	-- Lillith's Dinner Table
							},
							["coord"] = { 66.6, 44.8, TIRISFAL_GLADES },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["repeatable"] = true,
							["lvl"] = 5,
							["groups"] = {
								objective(1, {	-- 0/1 Lillith Nefara slain
									["questID"] = 409,	-- Proving Allegiance
									["provider"] = { "n", 1946 },	-- Lillith Nefara
									["coord"] = { 66.6, 44.8, TIRISFAL_GLADES },
								}),
							},
						}),
					},
				}),
				q(24978, {	-- Reaping the Reapers
					["qg"] = 1519,	-- Deathguard Simmer
					["coord"] = { 44.7, 53.6, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Tirisfal Farmer slain
							["providers"] = {
								{ "n", 1934},	-- Tirisfal Farmer
								{ "n", 1935},	-- Tirisfal Farmhand
								{ "n", 1936},	-- Farmer Solliden
							},
						}),
						i(57146, {	-- Scythe Blade
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156938, {	-- Simmer's Cudgel
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(133700, {	-- Simmer's Dirk
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57145, {	-- Simmer's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(356, {	-- Rear Guard Patrol
					["qg"] = 1495,	-- Deathguard Linnea
					["coord"] = { 65.4, 60.2, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
					["groups"] = {
						objective(1, {	-- 0/8 Bleeding Horror slain
							["provider"] = { "n", 1529 },	-- Bleeding Horror
						}),
						objective(2, {	-- 0/8 Wandering Spirit slain
							["provider"] = { "n", 1532 },	-- Wandering Spirit
						}),
					},
				}),
				q(366, {	-- Return the Book
					["providers"] = {
						{ "n", 1498 },	-- Bethor Iceshard
						{ "i", 3016 },	-- Gunther's Spellbook
					},
					["sourceQuest"] = 357,	-- The Lich's Identity
					["coord"] = { 84.2, 17.4, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
				}),
				q(360, {	-- Return to the Magistrate
					["qg"] = 1495,	-- Deathguard Linnea
					["sourceQuest"] = 359,	-- Forsaken Duties
					["coord"] = { 65.4, 60.2, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
				}),
				q(24989, {	-- Return to the Magistrate
					["qg"] = 1495,	-- Deathguard Linnea
					["sourceQuest"] = 24988,	-- The Chill of Death
					["coord"] = { 65.4, 60.2, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				-- #if AFTER CATA
				q(6323, {	-- Ride to the Undercity
					["qg"] = 43124,	-- Anette Williams
					["sourceQuest"] = 6321,	-- Supplying Brill [CATA+] / Supplying the Sepulcher
					["coord"] = { 58.8, 51.8, TIRISFAL_GLADES },
					["races"] = { UNDEAD },
				}),
				-- #endif
				q(1820, {	-- Speak with Coleman
					["qg"] = 1496,	-- Deathguard Dillinger
					["sourceQuest"] = 1819,	-- Ulag the Cleaver
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(1818, {	-- Speak with Dillinger
					["qg"] = 2131,	-- Austil de Mon
					["altQuests"] = { 1502 },	-- Thun'grim Firegaze
					["coord"] = { 61.84, 52.53, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(355, {	-- Speak with Sevren
					["qg"] = 1500,	-- Coleman Farthing
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 7,
				}),
				q(25005, {	-- Speak with Sevren
					["qg"] = 1500,	-- Coleman Farthing
					["sourceQuests"] = {
						25029,	-- Deaths in the Family
						25004,	-- The Mills Overrun
					},
					["coord"] = { 54.5, 29.8, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				-- #if AFTER CATA
				q(6321, {	-- Supplying Brill [CATA+] / Supplying the Sepulcher
					["providers"] = {
						{ "n", 1745 },	-- Deathguard Morris
						{ "i", 16209 },	-- Morris's Order
					},
					["coord"] = { 60.2, 52.4, TIRISFAL_GLADES },
					["races"] = { UNDEAD },
				}),
				-- #endif
				q(25012, {	-- Take to the Skies
					["qg"] = 37915,	-- Timothy Cunningham
					["sourceQuest"] = 25011,	-- To Bigger and Better Things
					["coord"] = { 83.5, 69.9, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(375, {	-- The Chill of Death
					["qg"] = 1521,	-- Gretchen Dedmar
					["coord"] = { 61.9, 52.7, TIRISFAL_GLADES },
					["cost"] = { { "i", 2320, 1 } },	-- Coarse Thread
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						objective(1, {	-- 0/5 Duskbat Pelt
							["provider"] = { "i", 2876 },	-- Duskbat Pelt
							["crs"] = {
								1553,	-- Greater Duskbat
								1554,	-- Vampiric Duskbat
							},
						}),
						i(3833, {	-- Adept's Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5939, {	-- Sewing Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24988, {	-- The Chill of Death
					["qg"] = 1521,	-- Gretchen Dedmar
					["sourceQuest"] = 24983,	-- Forsaken Duties
					["coord"] = { 65.2, 60.4, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Duskbat Pelt
							["provider"] = { "i", 2876 },	-- Duskbat Pelt
							["crs"] = {
								1553,	-- Greater Duskbat
								1554,	-- Vampiric Duskbat
							},
						}),
						i(57151, {	-- Gretchen's Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57152, {	-- Duskbat Pants
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57153, {	-- Death's Watch Bracer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131389, {	-- Duskbat Mail Leggings
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(408, {	-- The Family Crypt
					["qg"] = 1499,	-- Magistrate Sevren
					["sourceQuest"] = 355,	-- Speak with Sevren
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						objective(1, {	-- 0/8 Wailing Ancestor slain
							["provider"] = { "n", 1534 },	-- Wailing Ancestor
						}),
						objective(2, {	-- 0/8 Rotting Ancestor slain
							["provider"] = { "n", 1530 },	-- Rotting Ancestor
						}),
						objective(3, {	-- 0/1 Dargol's Skull
							["provider"] = { "i", 3082 },	-- Dargol's Skull
							["coord"] = { 52.6, 26.4, TIRISFAL_GLADES },
							["cr"] = 1658,	-- Captain Dargol
						}),
						-- #if BEFORE 4.0.3.13277
						i(3446),	-- Darkwood Staff
						i(3440),	-- Bonecracker
						-- #endif
					},
				}),
				q(25003, {	-- The Family Crypt
					["qg"] = 1500,	-- Coleman Farthing
					["sourceQuest"] = 25031,	-- Head for the Mills (breadcrumb)
					["coord"] = { 54.5, 29.8, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Wailing Ancestor slain
							["provider"] = { "n", 1534 },	-- Wailing Ancestor
						}),
						objective(2, {	-- 0/5 Rotting Ancestor slain
							["provider"] = { "n", 1530 },	-- Rotting Ancestor
						}),
						i(57161, {	-- Agamand Family Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57162, {	-- Agamand Family Bracelet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57163, {	-- Agamand Family Riding Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131393, {	-- Agamand Family Bracer
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25006, {	-- The Grasp Weakens
					["qg"] = 1499,	-- Magistrate Sevren
					["sourceQuest"] = 25005,	-- Speak with Sevren
					["coord"] = { 60.9, 50.4, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(57164, {	-- Devlin's Shirt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57165, {	-- Boots of Brill
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131394, {	-- Treads of Brill
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(362, {	-- The Haunted Mills
					["qg"] = 1500,	-- Coleman Farthing
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						objective(1, {	-- 0/1 Devlin's Remains
							["provider"] = { "i", 2831 },	-- Devlin's Remains
							["coord"] = { 47.6, 40.2, TIRISFAL_GLADES },
							["cr"] = 1657,	-- Devlin Agamand
						}),
					},
				}),
				q(25030, {	-- The Haunted Mills
					["provider"] = { "i", 3082 },	-- Dargol's Skull
					["crs"] = { 1658 },	-- Captain Dargol
					["description"] = "At the bottom of the |cFFFFD700Agamand Family Crypt|r.",
					["coord"] = { 52.8, 26.3, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(357, {	-- The Lich's Identity
					["qg"] = 1498,	-- Bethor Iceshard
					["sourceQuest"] = 405,	-- The Prodigal Lich
					["coord"] = { 84.2, 17.4, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- 0/1 The Lich's Spellbook
							["provider"] = { "i", 2833 },	-- The Lich's Spellbook
							["coord"] = { 68, 42.1, TIRISFAL_GLADES },
						}),
					},
				}),
				q(426, {	-- The Mills Overrun
					["qg"] = 1496,	-- Deathguard Dillinger
					["sourceQuest"] = 404,	-- A Putrid Task
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
					["groups"] = {
						objective(1, {	-- 0/5 Notched Rib
							["provider"] = { "i", 3162 },	-- Notched Rib
							["crs"] = {
								1523,	-- Cracked Skull Soldier
								1520,	-- Rattlecage Soldier
							},
						}),
						objective(2, {	-- 0/3 Blackened Skull
							["provider"] = { "i", 3163 },	-- Blackened Skull
							["cr"] = 1522,	-- Darkeye Bonecaster
						}),
						i(3447, {	-- Cryptwalker Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3834, {	-- Sturdy Cloth Trousers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25004, {	-- The Mills Overrun
					["qg"] = 1500,	-- Coleman Farthing
					["sourceQuest"] = 25003,	-- The Family Crypt
					["coord"] = { 54.5, 29.8, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Notched Rib
							["provider"] = { "i", 3162 },	-- Notched Rib
							["crs"] = {
								1520,	-- Rattlecage Soldier
								1523,	-- Cracked Skull Soldier
							},
						}),
						objective(2, {	-- 0/3 Blackened Skull
							["provider"] = { "i", 3163 },	-- Blackened Skull
							["cr"] = 1522,	-- Darkeye Bonecaster
						}),
					},
				}),
				q(24982, {	-- The New Forsaken
					["qg"] = 1496,	-- Deathguard Dillinger
					["coord"] = { 52.5, 54.8, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(405, {	-- The Prodigal Lich
					["providers"] = {
						{ "n", 1499 },	-- Magistrate Sevren
						{ "i", 3017 },	-- Sevren's Orders
					},
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
				}),
				q(411, {	-- The Prodigal Lich Returns
					["providers"] = {
						{ "n", 1497 },	-- Gunther Arcanus
						{ "i", 3081 },	-- Nether Gem
					},
					["sourceQuest"] = 409,	-- Proving Allegiance
					["coord"] = { 68.2, 42, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						i(5940, {	-- Bone Buckler
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24980, {	-- The Scarlet Palisade
					["qg"] = 1519,	-- Deathguard Simmer
					["sourceQuest"] = 24978,	-- Reaping the Reapers
					["coord"] = { 44.7, 53.6, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Scarlet Warrior slain
							["provider"] = { "n", 1535 },	-- Scarlet Warrior
						}),
					},
				}),
				q(25011, {	-- To Bigger and Better Things
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuest"] = 25046,	-- A Daughter's Embrace
					["coord"] = { 83.2, 68.9, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(1819, {	-- Ulag the Cleaver
					["qg"] = 1496,	-- Deathguard Dillinger
					["sourceQuest"] = 1818,	-- Speak with Dillinger
					["altQuests"] = { 1502 },	-- Thun'grim Firegaze
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Ulag the Cleaver slain
							["provider"] = { "n", 6390 },	-- Ulag the Cleaver
							["coord"] = { 59.2, 48.6, TIRISFAL_GLADES },
						}),
					},
				}),
				q(24976, {	-- Variety is the Spice of Death
					["qg"] = 1518,	-- Apothecary Johaan
					["sourceQuest"] = 24975,	-- Fields of Grief
					["coord"] = { 44.6, 53.7, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Marrowpetal
							["provider"] = { "i", 52067 },	-- Marrowpetal
						}),
						objective(2, {	-- 0/4 Xavren's Thorn
							["provider"] = { "i", 52066 },	-- Xavren's Thorn
						}),
						objective(3, {	-- 0/8 Briny Sea Cucumber
							["provider"] = { "i", 52068 },	-- Briny Sea Cucumber
							["cr"] = 38933,	-- Briny Sea Cucumber
						}),
						i(57147, {	-- Xavren's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57148, {	-- Marrowpetal Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131388, {	-- Xavren's Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(398, {	-- Wanted: Maggot Eye
					["provider"] = { "o", 711 },	-- Wanted!
					["coord"] = { 60.7, 51.5, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
					["groups"] = {
						objective(1, {	-- 0/1 Maggot Eye's Paw
							["provider"] = { "i", 3635 },	-- Maggot Eye's Paw
							["coord"] = { 58.6, 31.6, TIRISFAL_GLADES },
							["cr"] = 1753,	-- Maggot Eye
						}),
						i(5941, {	-- Brass Scale Pants
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3444, {	-- Tiller's Vest
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
			}),
			n(RARES, {
				n(10356, {	-- Bayne
					-- #if AFTER CATA
					["coord"] = { 46.0, 49.6, TIRISFAL_GLADES },
					-- #else
					["coords"] = {
						{ 40.8, 43.2, TIRISFAL_GLADES },
						{ 57.6, 41.6, TIRISFAL_GLADES },
						{ 42.0, 52.6, TIRISFAL_GLADES },
						{ 45.0, 54.0, TIRISFAL_GLADES },
						{ 50.0, 50.8, TIRISFAL_GLADES },
						{ 51.4, 52.2, TIRISFAL_GLADES },
					},
					-- #endif
				}),
				n(50803, {	-- Bonechewer
					["coords"] = {
						{ 31.2, 46.4, TIRISFAL_GLADES },
						{ 32.6, 46.4, TIRISFAL_GLADES },
					},
					["timeline"] = { ADDED_5_2_0 },
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(208927, {	-- Dead Acolyte
					["coord"] = { 76.6, 44.8, TIRISFAL_GLADES },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(208223, {	-- Acolyte's Knapsack
							["classes"] = { WARLOCK },
							["groups"] = {
								i(208224),	-- Acolyte's Note
								i(205181),	-- Unidentified Artifact
							},
						}),
						i(205183, {	-- Fel-Powered Artifact
							["description"] = "Bring the Unidentified Artifact back to the warlock trainer in the zone to receive the Powerless Artifact and then come back to acquire this item.\n\nBring it to Carendin Halgar in Undercity to receive the rune.",
							["cost"] = {{ "i", 205182, 1 }},	-- Powerless Artifact
							["classes"] = { WARLOCK },
						}),
					},
				})),
				-- #endif
				n(1911, {	-- Deeb
					-- #if AFTER CATA
					["coord"] = { 72.6, 25.8, TIRISFAL_GLADES },
					-- #else
					["coords"] = {
						{ 58.8, 27.2, TIRISFAL_GLADES },
						{ 62.6, 28.6, TIRISFAL_GLADES },
					},
					-- #endif
					["groups"] = {
						i(4303, {	-- Cranial Thumper
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
						}),
					},
				}),
				o(240624, {	-- Faerie Dragon Nest
					["coord"] = { 17.6, 67.6, TIRISFAL_GLADES },
					["description"] = "The nest materialises directly in the centre of the white mushroom circle at 17.57, 67.53 once the 7 dragons channel the beams and begin their song. It is not visible before this.",
					["timeline"] = { ADDED_6_1_0 },
					["groups"] = {
						i(122234, {	-- Music Roll: Faerie Dragon
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
				n(1936, {	-- Farmer Solliden
					["coords"] = {
						{ 34.2, 52.6, TIRISFAL_GLADES },
						{ 38.0, 49.8, TIRISFAL_GLADES },
					},
					["groups"] = {
						i(3334, {	-- Farmer's Shovel
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
						}),
						i(4261, {	-- Solliden's Trousers
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
						}),
						i(2091, {	-- Magic Dust
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				n(10358, {	-- Fellicent's Shade
					-- #if AFTER CATA
					["coord"] = { 77.0, 59.8, TIRISFAL_GLADES },
					-- #else
					["coords"] = {
						{ 74.6, 63.8, TIRISFAL_GLADES },
						{ 77.8, 63.2, TIRISFAL_GLADES },
						{ 76.4, 57.4, TIRISFAL_GLADES },
						{ 74.6, 59.6, TIRISFAL_GLADES },
						{ 74.8, 60.6, TIRISFAL_GLADES },
					},
					-- #endif
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(202060, {	-- Frozen Murloc
					["coord"] = { 66.2, 40.0, TIRISFAL_GLADES },
					["classes"] = { MAGE, WARLOCK },
					["groups"] = {
						i(205228, {	-- Rune of Chaos Bolt
							["classes"] = { WARLOCK },
							["groups"] = {
								recipe(403925),	-- Engrave Gloves - Chaos Bolt
							},
						}),
						i(203748, {	-- Spell Notes: Burnout
							["classes"] = { MAGE },
							["groups"] = {
								recipe(401759),	-- Engrave Chest - Burnout
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, n(208196, {	-- Gillgar
					["coord"] = { 27.2, 46.4, TIRISFAL_GLADES },
					["classes"] = { PRIEST, MAGE, WARRIOR },
					["groups"] = {
						i(205940, {	-- Memory of a Dark Purpose
							["classes"] = { PRIEST },
							["groups"] = {
								recipe(425216),	-- Engrave Chest - Void Plague
							},
						}),
						i(204809, {	-- Rune of Furious Thunder
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(403476),	-- Engrave Pants - Furious Thunder
							},
						}),
						i(203753, {	-- Spell Notes: RING SEFF OSTROF
							["classes"] = { MAGE },
						}),
					},
				})),
				-- #endif
				n(50930, {	-- Hibernus the Sleeper
					["coord"] = { 47.6, 70.2, TIRISFAL_GLADES },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(1531, {	-- Lost Soul
					["coords"] = {
						-- #if AFTER CATA
						{ 53.6, 45.4, TIRISFAL_GLADES },
						{ 53.6, 48.8, TIRISFAL_GLADES },
						{ 49.2, 32.6, TIRISFAL_GLADES },
						{ 45.0, 37.6, TIRISFAL_GLADES },
						-- #else
						{ 48.6, 36.2, TIRISFAL_GLADES },
						{ 53.6, 48.6, TIRISFAL_GLADES },
						-- #endif
					},
					["groups"] = {
						i(3322, {	-- Wispy Cloak
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
						}),
					},
				}),
				n(1910, {	-- Muad
					["coord"] = { 35.8, 43.0, TIRISFAL_GLADES },
					["groups"] = {
						i(4302, {	-- Small Green Dagger
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
						}),
					},
				}),
				n(50908, {	-- Nighthowl
					["coord"] = { 42.6, 28.6, TIRISFAL_GLADES },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(51044, {	-- Plague
					["coord"] = { 57.8, 33.0, TIRISFAL_GLADES },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(10357, {	-- Ressan the Needler
					-- #if AFTER CATA
					["coord"] = { 54.2, 56.2, TIRISFAL_GLADES },
					-- #else
					["coords"] = {
						{ 43.6, 67.0, TIRISFAL_GLADES },
						{ 47.0, 65.0, TIRISFAL_GLADES },
						{ 50.2, 64.4, TIRISFAL_GLADES },
						{ 52.4, 63.8, TIRISFAL_GLADES },
						{ 55.6, 60.0, TIRISFAL_GLADES },
						{ 56.2, 63.6, TIRISFAL_GLADES },
					},
					-- #endif
				}),
				n(1944, {	-- Rot Hide Bruiser
					["coord"] = { 56.1, 42.4, TIRISFAL_GLADES },
					["timeline"] = { ADDED_10_1_7 },
					["groups"] = {
						i(4439, {	-- Bruiser Club
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(5975, {	-- Ruffian Belt
							["timeline"] = { ADDED_10_1_7 },
						}),
					},
				}),
				n(50763, {	-- Shadowstalker
					["coord"] = { 38.0, 52.0, TIRISFAL_GLADES },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(10359, {	-- Sri'skulk
					-- #if AFTER CATA
					["coord"] = { 84.6, 49.4, TIRISFAL_GLADES },
					-- #else
					["coords"] = {
						{ 83.0, 55.8, TIRISFAL_GLADES },
						{ 85.2, 49.4, TIRISFAL_GLADES },
						{ 89.4, 40.2, TIRISFAL_GLADES },
						{ 90.2, 47.6, TIRISFAL_GLADES },
						{ 88.8, 53.6, TIRISFAL_GLADES },
					},
					-- #endif
				}),
				n(1533, {	-- Tormented Spirit
					-- #if AFTER CATA
					["coords"] = {
						{ 46.8, 30.6, TIRISFAL_GLADES },
						{ 47.6, 35.6, TIRISFAL_GLADES },
						{ 43.8, 33.8, TIRISFAL_GLADES },
						{ 45.0, 31.6, TIRISFAL_GLADES },
					},
					-- #else
					["coord"] = { 46.0, 35.4, TIRISFAL_GLADES },
					-- #endif
					["groups"] = {
						i(3323, {	-- Ghostly Bracers
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
						}),
					},
				}),
			}),
			-- #if BEFORE TBC
			n(RIDING_TRAINER, {
				n(4773, {	-- Velma Warnam <Undead Horse Riding Instructor>
					["coord"] = { 60.0, 52.6, TIRISFAL_GLADES },
					["races"] = { ORC, TROLL, UNDEAD },

					-- Available to Undead without faction requirements.
					["minReputation"] = { FACTION_UNDERCITY, EXALTED },	-- Undercity, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. UNDEAD .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["groups"] = {
						recipe(10906, {	-- Undead Horsemanship
							["cost"] = 200000,
							["lvl"] = 40,
						}),
					},
				}),
			}),
			-- #endif
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, i(204174, {	-- Rune of Precision
					["provider"] = { "o", 405201 },	-- Shipwreck Cache
					["cost"] = {{ "i", 208007, 1 }},	-- Shipwreck Cache Key
					["coord"] = { 66.7, 24.6, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(400081),	-- Engrave Pants - Between the Eyes
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(203991, {	-- Rune of Quick Draw
					["provider"] = { "o", 386675 },	-- Buried Treasure
					["coord"] = { 52.9, 54.0, TIRISFAL_GLADES },
					["cost"] = {{ "i", 208034, 1 }},	-- Tirisfal Treasure Map
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(400095),	-- Engrave Chest - Quick Draw
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(203993, {	-- Rune of Slaughter
					["provider"] = { "o", 404941 },	-- Relic Coffer
					["cost"] = {{ "i", 208005, 1 }},	-- Agamand Relic Coffer Key
					["coord"] = { 52.5, 25.8, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(424992),	-- Engrave Chest - Slaughter from the Shadows
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208185, {	-- The Apothecary's Metaphysical Primer
					["provider"] = { "o", 405879 },	-- Apothecary Society Primer
					["coord"] = { 59.5, 52.3, TIRISFAL_GLADES },
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(2118, {	-- Abigail Shiel <Trade Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 61.0, 51.0, TIRISFAL_GLADES },
						-- #else
						{ 61.0, 52.4, TIRISFAL_GLADES },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12226),	-- Recipe: Crispy Bat Wing (RECIPE!)
					},
				}),
				n(11057, {	-- Apothecary Dithers
					["coord"] = { 83.2, 69.2, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					-- #if BEFORE CATA
					["groups"] = {
						i(13320),	-- Arcane Quickener
						i(13370),	-- Vitreous Focuser
					},
					-- #endif
				}),
				n(10856, {	-- Argent Quartermaster Hasana <The Argent Dawn>
					["coords"] = {
						-- #if AFTER CATA
						{ 83.2, 68.0, TIRISFAL_GLADES },
						-- #else
						{ 83.2, 68.2, TIRISFAL_GLADES },
						-- #endif
					},
					["sym"] = {{ "select", "creatureID", 11536 }, { "isnt", "questID" }, { "pop" }, { "exclude", "itemID", 136801, 136928 } },	-- Quartermaster Miranda Breechlock <The Argent Crusade>
				}),
				n(3522, {	-- Constance Brisboise <Apprentice Clothier>
					["coord"] = { 52.6, 55.6, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6270, {	-- Pattern: Blue Linen Vest
							["isLimited"] = true,
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				n(2310, {	-- Jamie Nore
					["coord"] = { 60.8, 50.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						applyclassicphase(SOD_PHASE_ONE, i(203990, {	-- Rune of Mutilation
							["cost"] = {{ "i", 208086, 1 }},	-- Forged Scarlet Memorandum
							["classes"] = { ROGUE },
							["groups"] = {
								recipe(400094),	-- Engrave Gloves - Mutilate
							},
						})),
					},
				}),
				-- #endif
				n(3550, {	-- Martine Tramblay <Fishing Supplies>
					["coord"] = { 65.8, 59.6, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
						i(6326),	-- Recipe: Slitherskin Mackerel (RECIPE!)
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				n(2127, {	-- Rupert Boch <Warlock Trainer>
					["coord"] = { 61.6, 52.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						applyclassicphase(SOD_PHASE_ONE, i(205182, {	-- Powerless Artifact
							["cost"] = {{ "i", 205181, 1 }},	-- Unidentified Artifact
							["classes"] = { WARLOCK },
						})),
					},
				}),
				-- #endif
				n(12943, {	-- Werg Thickblade <Leatherworking Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 83.2, 69.4, TIRISFAL_GLADES },
						-- #else
						{ 83.2, 69.6, TIRISFAL_GLADES },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(15741, {	-- Pattern: Stormshroud Pants (RECIPE!)
							["isLimited"] = true,
						}),
						i(15725, {	-- Pattern: Wicked Leather Gauntlets (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(4731, {	-- Zachariah Post <Undead Horse Merchant>
					["coords"] = {
						-- #if AFTER CATA
						{ 61.8, 51.8, TIRISFAL_GLADES },
						-- #else
						{ 59.8, 52.6, TIRISFAL_GLADES },
						-- #endif
					},
					-- Available to Undead without faction requirements.
					["minReputation"] = { FACTION_UNDERCITY, EXALTED },	-- Undercity, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. UNDEAD .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(46308, {	-- Black Skeletal Warhorse (MOUNT!)
							["timeline"] = { ADDED_3_1_0 },
						}),
						i(13332),	-- Blue Skeletal Horse (MOUNT!)
						i(13333),	-- Brown Skeletal Horse (MOUNT!)
						i(13334),	-- Green Skeletal Warhorse (MOUNT!)
						i(47101, {	-- Ochre Skeletal Warhorse (MOUNT!)
							["timeline"] = { ADDED_3_2_0 },
						}),
						i(18791),	-- Purple Skeletal Warhorse (MOUNT!)
						i(13331),	-- Red Skeletal Horse (MOUNT!)
					},
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_ONE, n(WILD_POLYMORPH, {
				["classes"] = { MAGE },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(203749, {	-- Spell Notes: Enlightenment
						["cost"] = {{ "i", 208183, 6 }},	-- Apothecary Notes
						["classes"] = { MAGE },
						["groups"] = {
							recipe(415942),	-- Engrave Chest - Enlightenment
						},
					}),
					i(208183, {	-- Apothecary Notes
						["cr"] = 208712,	-- Odd Melon
					}),
				},
			})),
			-- #endif
			n(ZONE_DROPS, {
				i(2839, {	-- A Letter to Yvette
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						1523,	-- Cracked Skull Soldier
						1522,	-- Darkeye Bonecaster
						1520,	-- Rattlecage Soldier
					},
					--[[["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					-- #if BEFORE 4.0.3
					["cr"] = 570,	-- Brain Eater
					["coords"] = {
						{ 23.4, 35.4, TIRISFAL_GLADES },
						{ 25.4, 35.4, TIRISFAL_GLADES },
					},
					-- #elseif AFTER 10.1.7
					["crs"] = {
						604,	-- Plague Spreader
						3,		-- Flesh Eater
					},
					["coords"] = {
						{ 23.4, 35.4, TIRISFAL_GLADES },
						{ 17.8, 33.4, TIRISFAL_GLADES },
						{ 19.8, 46.8, TIRISFAL_GLADES },
					},
					-- #endif
					--]]
				}),
				i(52079, {	-- A Scarlet Letter
					["timeline"] = { ADDED_4_0_3 },
					["cr"] = 1535,	-- Scarlet Warrior
				}),
				-- #if BEFORE 10.1.7
				-- Added to Dargol in Tirisfall via Pickpocket (not trolling)
				i(3330, {	-- Dargol's Hauberk
					["coord"] = { 52.6, 26.2, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 1658,	-- Captain Dargol
				}),
				-- #endif
				i(3335, {	-- Farmer's Broom
					["cr"] = 1935,	-- Tirisfal Farmhand
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["coords"] = {
						{ 40.6, 51.8, TIRISFAL_GLADES },
						{ 36.8, 51.6, TIRISFAL_GLADES },
					},
				}),
				i(3334, {	-- Farmer's Shovel
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["crs"] = {
						1936,	-- Farmer Solliden
						1934,	-- Tirisfal Farmer
					},
					["coords"] = {
						{ 38.2, 50.0, TIRISFAL_GLADES },
						{ 34.6, 51.6, TIRISFAL_GLADES },
						{ 44.6, 33.2, TIRISFAL_GLADES },
						{ 36.2, 50.4, TIRISFAL_GLADES },
						{ 40.6, 51.8, TIRISFAL_GLADES },
						{ 34.4, 49.0, TIRISFAL_GLADES },
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(204906, {	-- Gnoll Blood
					["coords"] = {
						{ 59.4, 33.6, TIRISFAL_GLADES },
						{ 56.2, 44.8, TIRISFAL_GLADES },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARLOCK },
					["crs"] = {
						1675,	-- Rot Hide Mongrel
						1941,	-- Rot Hide Graverobber
						1674,	-- Rot Hide Gnoll
					},
				})),
				-- #endif
				i(3321, {	-- Gray Fur Booties
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["cr"] = 1549,	-- Ravenous Darkhound
					["coords"] = {
						{ 86.0, 38.2, TIRISFAL_GLADES },
						{ 80.4, 42.2, TIRISFAL_GLADES },
						{ 79.8, 49.0, TIRISFAL_GLADES },
						{ 82.8, 51.0, TIRISFAL_GLADES },
						{ 88.2, 49.6, TIRISFAL_GLADES },
						{ 89.6, 43.6, TIRISFAL_GLADES },
						{ 86.0, 46.2, TIRISFAL_GLADES },
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(207973, {	-- Hound Jawbone
					["coords"] = {
						{ 44.8, 48.4, TIRISFAL_GLADES },
						{ 55.4, 65.4, TIRISFAL_GLADES },
						{ 85.0, 46.4, TIRISFAL_GLADES },
					},
					["classes"] = { WARLOCK },
					["crs"] = {
						1548,	-- Cursed Darkhound
						1547,	-- Decrepit Darkhound
						1549,	-- Ravenous Darkhound
					},
				})),
				-- #endif
				i(3331, {	-- Melrache's Cape
					-- This item was given an description about how the NPC it drops from is friendly to the Alliance in pre-cata iterations of the game.
					-- That information is incorrect unless someone can point to a specific patch where it would have merit. //Danny Donkey
					["coord"] = { 79.4, 26.0, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 1665,	-- Captain Melrache
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(205945, {	-- Memory of an Imprisoned Savior
					["coords"] = {
						{ 40.6, 51.8, TIRISFAL_GLADES },
						{ 36.8, 51.6, TIRISFAL_GLADES },
					},
					["classes"] = { PRIEST },
					["crs"] = {
						1934,	-- Tirisfal Farmer
						1935,	-- Tirisfal Farmhand
					},
					["groups"] = {
						recipe(402854),	-- Engrave Pants - Shared Pain
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(207974, {	-- Ominous Tome
					["coord"] = { 46.8, 35.0, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARLOCK },
					["cr"] = 1522,	-- Darkeye Bonecaster
				})),
				-- #endif
				i(3332, {	-- Perrine's Boots
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["cr"] = 1662,	-- Captain Perrine
					["coord"] = { 51.6, 67.6, TIRISFAL_GLADES },
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(205947, {	-- Prophecy of a Desecrated Citadel
					["coords"] = {
						{ 34.0, 47.8, TIRISFAL_GLADES },
						{ 51.6, 68.8, TIRISFAL_GLADES },
						{ 80.0, 54.4, TIRISFAL_GLADES },
					},
					["classes"] = { PRIEST },
					["crs"] = {
						1535,	-- Scarlet Warrior
						1536,	-- Scarlet Missionary
						1537,	-- Scarlet Zealot
					},
					["groups"] = {
						recipe(402852),	-- Engrave Pants - Homunculi
					},
				})),
				-- #endif
				-- #if AFTER 10.1.7
				i(3260, {	-- Scarlet Initiate Robes
					["cr"] = 1539,	-- Scarlet Neophyte
					["coord"] = { 79.0, 32.2, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(207975, {	-- Severed Bat Head
					["coord"] = { 43.2, 53.0, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["crs"] = {
						1553,	-- Greater Duskbat
						1554,	-- Vampiric Duskbat
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(204478, {	-- Severed Gnoll Head
					["coord"] = { 59.2, 36.2, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["crs"] = {
						1674,	-- Rot Hide Gnoll
						1941,	-- Rot Hide Graverobber
						1675,	-- Rot Hide Mongrel
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(204477, {	-- Severed Murloc Head
					["coord"] = { 35.2, 42.0, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["crs"] = {
						1545,	-- Vile Fin Muckdweller
						1544,	-- Vile Fin Minor Oracle
					},
				})),
				-- #endif
				i(3319, {	-- Short Sabre
					["cr"] = 1529,	-- Bleeding Horror
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["coords"] = {
						{ 78.6, 60.6, TIRISFAL_GLADES },
						{ 75.0, 61.6, TIRISFAL_GLADES },
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(203752, {	-- Spell Notes: MILEGIN VALF
					["coords"] = {
						{ 34.0, 47.8, TIRISFAL_GLADES },
						{ 51.6, 68.8, TIRISFAL_GLADES },
						{ 80.0, 54.4, TIRISFAL_GLADES },
					},
					["classes"] = { MAGE },
					["crs"] = {
						1535,	-- Scarlet Warrior
						1536,	-- Scarlet Missionary
						1537,	-- Scarlet Zealot
					},
				})),
				-- #endif
				i(3328, {	-- Spider Web Robe
					["coord"] = { 86.6, 53.8, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- 02.09.2023 Data Discord
					["cr"] = 1555,	-- Vicious Night Web Spider
				}),
				i(3329, {	-- Spiked Wooden Plank
					["cr"] = 1753,	-- Maggot Eye
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["coords"] = {
						{ 58.6, 31.0, TIRISFAL_GLADES },
						{ 58.6, 31.2, TIRISFAL_GLADES },
					},
				}),
				i(4263, {	-- Standard Issue Shield
					["coords"] = {
						{ 79.6, 26.8, TIRISFAL_GLADES },
						{ 78.8, 33.0, TIRISFAL_GLADES },
						{ 78.4, 36.8, TIRISFAL_GLADES },
					},
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- 02.09.2023 Data Discord
					-- #if BEFORE 4.0.3
					["cr"] = 1660,	-- Scarlet Bodyguard
					-- #elseif AFTER CATA
					["crs"] = {
						1660,	-- Scarlet Bodyguard
						1540,	-- Scarlet Vanguard
					},
					-- #endif
				}),
				i(3325, {	-- Vile Fin Battle Axe
					["cr"] = 1545,	-- Vile Fin Muckdweller
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["coords"] = {
						-- #if BEFORE 4.0.3
						{ 36.6, 38.6, TIRISFAL_GLADES },
						{ 34.8, 44.8, TIRISFAL_GLADES },
						{ 62.8, 29.6, TIRISFAL_GLADES },
						{ 27.8, 38.0, TIRISFAL_GLADES },
						{ 27.6, 46.6, TIRISFAL_GLADES },
						-- #elseif AFTER CATA
						{ 60.2, 27.8, TIRISFAL_GLADES },
						{ 72.0, 26.6, TIRISFAL_GLADES },
						-- #endif
					},
				}),
				i(3327, {	-- Vile Fin Oracle Staff
					["cr"] = 1544,	-- Vile Fin Minor Oracle
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["coords"] = {
						-- #if BEFORE 4.0.3
						{ 36.6, 38.6, TIRISFAL_GLADES },
						{ 34.8, 44.8, TIRISFAL_GLADES },
						{ 62.8, 29.6, TIRISFAL_GLADES },
						-- #elseif AFTER CATA
						{ 36.6, 38.6, TIRISFAL_GLADES },
						{ 34.8, 44.8, TIRISFAL_GLADES },
						-- #endif
					},
				}),
				i(3261, {	-- Webbed Cloak
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["coords"] = {
						{ 23.8, 58.4, TIRISFAL_GLADES },
						{ 86.2, 53.4, TIRISFAL_GLADES },
					},
					["crs"] = {
						1688,	-- Night Web Matriarch
						1555,	-- Vicious Night Web Spiders
					},
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	m(EASTERN_KINGDOMS, {
		m(TIRISFAL_GLADES, {
			n(QUESTS, {
				q(25040),	-- FLAG - Worgen Attacked — Tirisfal Glades — attacked by a worgen during "Darkhound Pounding" to trigger the "Escaped From Gilneas" quest
				q(26136),	-- FLAG - Rigor Mortis Removed. Triggered on a fresh lvl 1 warlock undead on login
			}),
		}),
	}),
})));