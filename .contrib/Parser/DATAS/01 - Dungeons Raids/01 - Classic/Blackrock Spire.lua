-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
LOWER_BLACKROCK_SPIRE = createHeader({
	readable = "Hordemar City (Lower)",
	icon = 236429,
	text = {
		en = [[~DUNGEON_FLOOR_BLACKROCKSPIRE3]],
	},
	description = {
		en = "Also known as 'Lower' Blackrock Spire.",
	},
});
UPPER_BLACKROCK_SPIRE = createHeader({
	readable = "Dragonspire Hall (Upper)",
	icon = 134153,
	text = {
		en = [[~DUNGEON_FLOOR_UPPERBLACKROCKSPIRE1]],
	},
	description = {
		-- #if AFTER 3.0.8
		en = "Also known as 'Upper' Blackrock Spire.",
		-- #else
		en = "One member of your group must have completed the Seal of Ascension quest chain in order for the fires to light and the door to open to this portion of the instance. Also known as 'Upper' Blackrock Spire.",
		-- #endif
	},
});
BLACKROCK_SPIRE_INSTANCE = inst(229, {	-- Blackrock Spire
	-- #if BEFORE MOP
	["lore"] = "The mighty fortress carved within the fiery bowels of Blackrock Mountain was designed by the master dwarf-mason, Franclorn Forgewright. Intended to be the symbol of Dark Iron power, the fortress was held by the sinister dwarves for centuries. However, Nefarian - the cunning son of the dragon, Deathwing - had other plans for the great keep. He and his draconic minions took control of the upper Spire and made war on the dwarves' holdings in the mountain's volcanic depths. Realizing that the dwarves were led by the mighty fire elemental, Ragnaros - Nefarian vowed to crush his enemies and claim the whole of Blackrock mountain for himself.",
	-- #endif
	-- #if BEFORE WOD
	["zone-text-areaID"] = 1583,	-- Blackrock Spire
	-- #endif
	-- #if AFTER 6.0.1
	["coord"] = { 80.46, 40.65, BLACKROCK_MOUNTAIN },
	-- #endif
	["maps"] = {
		BLACKROCK_SPIRE,
		LBRS_TAZZALOR,
		LBRS_SKITTERWEB_TUNNELS,
		LBRS_HORDEMAR_CITY,
		LBRS_HALL_OF_BLACKHAND,
		LBRS_HALYCONS_LAIR,
		LBRS_CHAMBER_OF_BATTLE,
	},
	["lvl"] = 50,
	["groups"] = {
		n(QUESTS, {
			q(27470, {	-- A Potential Ally
				["qg"] = 14625,	-- Overseer Oilfist
				["coord"] = { 38.1, 26.9, SEARING_GORGE },
				["timeline"] = { ADDED_4_0_3 },
				["isBreadcrumb"] = true,
				["lvl"] = lvlsquish(57, 57, 20),
			}),
			q(6601, {	-- Ascension...
				["sourceQuest"] = 6585,	-- The Test of Skulls, Axtroz
				["providers"] = {
					{ "n", 10321 },	-- Emberstrife
					{ "i", 16888 },	-- Dull Drakefire Amulet
				},
				["coord"] = { 56.8, 87.4, DUSTWALLOW_MARSH },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { DESOLACE },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
			}),
			{	-- Bijou's Belongings
				["allianceQuestData"] = q(5001),	-- Bijou's Belongings (A)
				["hordeQuestData"] = q(4982, {	-- Bijou's Belongings (H)
					["sourceQuest"] = 4981,	-- Operative Bijou
				}),
				["qg"] = 10257,	-- Bijou
				["timeline"] = { REMOVED_4_0_3 },
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 Bijou's Belongings
						["providers"] = {
							{ "i",  12345 },	-- Bijou's Belongings
							{ "o", 175334 },	-- Bijou's Belongings
						},
					}),
				},
			},
			q(4983, {	-- Bijou's Reconnaissance Report
				["sourceQuest"] = 4982,	-- Bijou's Belongings (H)
				["providers"] = {
					{ "n", 10257 },	-- Bijou
					{ "i", 12652 },	-- Bijou's Reconnaissance Report
				},
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { BADLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
				["groups"] = {
					i(15858, {	-- Freewind Gloves
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(15859, {	-- Seapost Girdle
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(7761, {	-- Blackhand's Command
				["providers"] = {
					{ "n",   9046 },	-- Scarshield Quartermaster <Scarshield Legion>
					{ "i",  18987 },	-- Blackhand's Command
					{ "o", 179880 },	-- Drakkisath's Brand
				},
				["coord"] = { 34.9, 27.9, BURNING_STEPPES },
				["timeline"] = { REMOVED_6_0_3 },
				["maps"] = { BLACKROCK_MOUNTAIN },
				["lvl"] = 55,
			}),
			q(27471, {	-- Blackrock Anomaly
				["qg"] = 9562,	-- Hellendis Riverhorn
				["coord"] = { 73.4, 66.2, BURNING_STEPPES },
				["timeline"] = { ADDED_4_0_3 },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = lvlsquish(57, 57, 20),
			}),
			q(6602, {	-- Blood of the Black Dragon Champion
				["sourceQuest"] = 6601,	-- Ascension...
				["qg"] = 10182,	-- Rexxar [Classic] / Rokaro [TBC+] <Champion of the Horde>
				-- #if AFTER TBC
				["coord"] = { 25.6, 70.0, DESOLACE },
				-- #else
				["coords"] = {
					{ 54.0, 3.2, DESOLACE },
					{ 62.8, 22.6, DESOLACE },
					{ 59.8, 37.6, DESOLACE },
					{ 52.0, 39.4, DESOLACE },
					{ 49.6, 56.4, DESOLACE },
					{ 55.6, 66.6, DESOLACE },
					{ 50.6, 75.2, DESOLACE },
					{ 40.8, 78.6, DESOLACE },
					{ 42.4, 96.8, DESOLACE },
				},
				-- #endif
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 Blood of the Black Dragon Champion
						["provider"] = { "i", 16663 },	-- Blood of the Black Dragon Champion
					}),
					i(16309, {	-- Drakefire Amulet
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(5068, {	-- Breastplate of Bloodthirst
				["sourceQuest"] = 5047,	-- Pip Quickwit, At Your Service!
				["qg"] = 10637,	-- Malyfous Darkhammer
				["coord"] = { 61.0, 38.8, WINTERSPRING },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { SCHOLOMANCE, STRATHOLME },
				["cost"] = {
					{ "i", 12731, 1 },	-- Pristine Hide of the Beast
					{ "i", 12735, 10 },	-- Frayed Abomination Stitching
					{ "i", 12360, 5 },	-- Arcanite Bar
					{ "i", 12753, 5 },	-- Skin of Shadow
					{ "g", 500000 },	-- 50 Gold
				},
				["repeatable"] = true,
				["lvl"] = 57,
				["groups"] = {
					i(12757, {	-- Breastplate of Bloodthirst
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(5166, {	-- Breastplate of the Chromatic Flight
				["sourceQuest"] = 5164,	-- Catalogue of the Wayward
				["provider"] = { "o", 176192 },	-- Catalogue of the Wayward
				["coord"] = { 39.4, 66.7, WESTERN_PLAGUELANDS },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { STRATHOLME, EASTERN_PLAGUELANDS },
				["cost"] = {
					{ "i", 12871, 1 },	-- Chromatic Carapace
					{ "i", 12607, 10 },	-- Brilliant Chromatic Scale
					{ "i", 12735, 10 },	-- Frayed Abomination Stitching
					{ "i", 12938, 10 },	-- Blood of Heroes
				},
				["lvl"] = 57,
				["groups"] = {
					i(12895, {	-- Breastplate of the Chromatic Flight
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(5063, {	-- Cap of the Scarlet Savant
				["sourceQuest"] = 5047,	-- Pip Quickwit, At Your Service!
				["qg"] = 10637,	-- Malyfous Darkhammer
				["coord"] = { 61.0, 38.8, WINTERSPRING },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { STRATHOLME },
				["cost"] = {
					{ "i", 12731, 1 },	-- Pristine Hide of the Beast
					{ "i", 12735, 5 },	-- Frayed Abomination Stitching
					{ "i", 12363, 8 },	-- Arcanite Crystal
					{ "i", 12734, 5 },	-- Enchanted Scarlet Thread
					{ "g", 500000 },	-- 50 Gold
				},
				["repeatable"] = true,
				["lvl"] = 57,
				["groups"] = {
					i(12752, {	-- Cap of the Scarlet Savant
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(5164, {	-- Catalogue of the Wayward
				["sourceQuest"] = 5162,	-- Wrath of the Blue Flight (2/2)
				["qg"] = 10976,	-- Jeziba
				["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
				["timeline"] = { REMOVED_4_0_3 },
				["lvl"] = 57,
			}),
			q(8181, {	-- Confront Yeh'kinya
				["sourceQuest"] = 4788,	-- The Final Tablets
				["qg"] = 10460,	-- Prospector Ironboot
				["coord"] = { 66.8, 24.0, TANARIS },
				["timeline"] = { REMOVED_4_0_3 },
				["lvl"] = 40,
				["groups"] = {
					i(20218, {	-- Faded Hakkari Cloak
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(20219, {	-- Tattered Hakkari Cape
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(4765, {	-- Delivery to Ridgewell
				["sourceQuest"] = 4764,	-- Doomrigger's Clasp
				["providers"] = {
					{ "n", 9565 },	-- Mayara Brightwing
					{ "i", 12437 },	-- Ridgewell's Crate
				},
				["coord"] = { 84.8, 69.0, BURNING_STEPPES },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 57,
				["groups"] = {
					i(15860, {	-- Blinkstrike Armguards
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(15861, {	-- Swiftfoot Treads
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(4764, {	-- Doomrigger's Clasp
				["sourceQuest"] = 4766,	-- Mayara Brightwing
				["qg"] = 9565,	-- Mayara Brightwing
				["coord"] = { 84.8, 69.0, BURNING_STEPPES },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 57,
				["groups"] = {
					objective(1, {	-- 0/1 Doomrigger's Clasp
						["providers"] = {
							{ "i",  12352 },	-- Doomrigger's Clasp
							{ "o", 175382 },	-- Doomrigger's Coffer
						},
					}),
				},
			}),
			q(6502, {	-- Drakefire Amulet
				["sourceQuest"] = 6501,	-- The Dragon's Eye
				["qg"] = 10929,	-- Haleh
				["coord"] = { 54.55, 51.2, WINTERSPRING },
				["timeline"] = { REMOVED_3_0_2 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 50,
				["groups"] = {
					objective(1, {	-- 0/1 Blood of the Black Dragon Champion
						["provider"] = { "i", 16663 },	-- Blood of the Black Dragon Champion
					}),
					i(16309, {	-- Drakefire Amulet
						["timeline"] = { REMOVED_3_0_2 },
					}),
				},
			}),
			q(4735, {	-- Egg Collection
				["sourceQuest"] = 4734,	-- Egg Freezing
				["qg"] = 10267,	-- Tinkee Steamboil
				["coord"] = { 65.2, 23.8, BURNING_STEPPES },
				["timeline"] = { REMOVED_4_0_3 },
				["lvl"] = 57,
				["groups"] = {
					objective(1, {	-- 0/8 Collected Dragon Egg
						["providers"] = {
							{ "i",  12241 },	-- Collected Dragon Egg
							{ "o", 175124 },	-- Rookery Egg
						},
						["cost"] = {
							{ "i", 12144, 1 },	-- Eggscilloscope
							{ "i", 12287, 1 },	-- Collectronic Module
						},
					}),
				},
			}),
			q(4734, {	-- Egg Freezing
				["sourceQuest"] = 4907,	-- Tinkee Steamboil
				["qg"] = 10267,	-- Tinkee Steamboil
				["coord"] = { 65.2, 23.8, BURNING_STEPPES },
				["timeline"] = { REMOVED_4_0_3 },
				["lvl"] = 57,
				["groups"] = {
					objective(1, {	-- Test the Eggscilliscope Prototype
						["providers"] = {
							{ "i",  12286 },	-- Eggscilloscope Prototype
							{ "o", 175124 },	-- Rookery Egg
						},
					}),
					i(12144, {	-- Eggscilloscope
						-- #if BEFORE 4.0.3
						["description"] = "You don't need to keep this, but it might be nice to have just in case someone doesn't quite grasp the 'don't touch the eggs' rule.",
						-- #endif
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(4941, {	-- Eitrigg's Wisdom
				["sourceQuest"] = 4903,	-- Warlord's Command
				["qg"] = 9077,	-- Warlord Goretooth <Kargath Expeditionary Force>
				["coord"] = { 5.8, 47.6, BADLANDS },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- Council with Eitrigg.
						["provider"] = { "n", 3144 },	-- Eitrigg
						["coord"] = { 34.4, 38.4, ORGRIMMAR },
					}),
				},
			}),
			q(6570, {	-- Emberstrife
				["sourceQuest"] = 6569,	-- Oculus Illusions
				["providers"] = {
					{ "n", 11872 },	-- Myranda the Hag
					{ "i", 16787 },	-- Amulet of Draconic Subversion
				},
				["coord"] = { 50.8, 77.8, WESTERN_PLAGUELANDS },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { DUSTWALLOW_MARSH },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
				["groups"] = {
					i(16787, {	-- Amulet of Draconic Subversion
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(4862, {	-- En-Ay-Es-Tee-Why
				["qg"] = 10260,	-- Kibler
				["coord"] = { 65.8, 22.0, BURNING_STEPPES },
				["timeline"] = { REMOVED_4_0_3 },
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/15 Spire Spider Egg
						["providers"] = {
							{ "i",  12530 },	-- Spire Spider Egg
							{ "o", 175606 },	-- Spire Spider Egg
						},
						["description"] = "Interacting with a spider egg may spawn baby spiders, beware!",
					}),
					i(12529, {	-- Smolderweb Hatchling (PET!)
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, q(84377, {	-- End of the Dark Horde
				["providers"] = {
					{ "i", 227911 },	-- Head of Rend Blackhand
					{ "n",    332 },	-- Master Mathias Shaw <Leader of SI:7>
				},
				["coord"] = { 75.8, 59.8, STORMWIND_CITY },
				["timeline"] = { ADDED_1_15_3 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 60,
			})),
			-- #endif
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, q(84495, {	-- Fiery Plate Gauntlets
				["sourceQuest"] = 5103,	-- Hot Fiery Death
				["qg"] = 10637,	-- Malyfous Darkhammer <The Thorium Brotherhood>
				["coord"] = { 61.0, 38.8, WINTERSPRING },
				["timeline"] = { ADDED_1_15_3 },
				["cost"] = {
					{ "i", 12812, 1 },	-- Unfired Plate Gauntlets
					{ "i", 12655, 6 },	-- Enchanted Thorium Bar
					{ "i", 7078, 2 },	-- Essence of Fire
					{ "i", 7910, 4 },	-- Star Ruby
				},
				["requireSkill"] =
					-- #if AFTER TBC
					BLACKSMITHING,
					-- #else
					9788,	-- Armorsmith
					-- #endif
				["lvl"] = 55,
				["groups"] = {
					i(227909, {	-- Plans: Fiery Plate Gauntlets of the Hidden Technique (RECIPE!)
						["timeline"] = { ADDED_1_15_3 },
					}),
					i(227865, {	-- Fiery Plate Gauntlets of the Hidden Technique
						["timeline"] = { ADDED_1_15_3 },
					}),
				},
			})),
			-- #endif
			q(5124, {	-- Fiery Plate Gauntlets
				["sourceQuest"] = 5103,	-- Hot Fiery Death
				["qg"] = 10637,	-- Malyfous Darkhammer <The Thorium Brotherhood>
				["coord"] = { 61.0, 38.8, WINTERSPRING },
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
				["cost"] = {
					{ "i", 12812, 1 },	-- Unfired Plate Gauntlets
					{ "i", 12655, 6 },	-- Enchanted Thorium Bar
					{ "i", 7078, 2 },	-- Essence of Fire
					{ "i", 7910, 4 },	-- Star Ruby
				},
				["requireSkill"] =
					-- #if AFTER TBC
					BLACKSMITHING,
					-- #else
					9788,	-- Armorsmith
					-- #endif
				["lvl"] = 55,
				["groups"] = {
					i(12699, {	-- Plans: Fiery Plate Gauntlets (RECIPE!)
						["timeline"] = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
					i(12631, {	-- Fiery Plate Gauntlets
						["timeline"] = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
				},
			}),
			q(4974, {	-- For The Horde!
				["sourceQuest"] = 4941,	-- Eitrigg's Wisdom
				["qg"] = 4949,	-- Thrall <Warchief>
				["coord"] = { 32.0, 37.8, ORGRIMMAR },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 Head of Rend Blackhand
						["provider"] = { "i", 12630 },	-- Head of Rend Blackhand
					}),
					i(13965, {	-- Blackhand's Breadth
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(13968, {	-- Eye of the Beast
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(13966, {	-- Mark of Tyranny
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(27469, {	-- Friends on The Other Side [NOTE: Also available to Alliance, despite being in the Horde camp!]
				["qg"] = 56899,	-- Ragged Jong
				["coord"] = { 54.1, 23.8, BURNING_STEPPES },
				["timeline"] = { ADDED_4_0_3 },
				["isBreadcrumb"] = true,
				["lvl"] = lvlsquish(57, 57, 20),
			}),
			q(5089, {	-- General Drakkisath's Command
				["provider"] = { "i", 12780 },	-- General Drakkisath's Command
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 55,
			}),
			q(5102, {	-- General Drakkisath's Demise
				["sourceQuest"] = 5089,	-- General Drakkisath's Command
				["qg"] = 9560,	-- Marshal Maxwell
				["coord"] = { 84.6, 68.8, BURNING_STEPPES },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 General Drakkisath slain
						["provider"] = { "n", 10363 },	-- General Drakkisath
					}),
					i(13965, {	-- Blackhand's Breadth
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(13968, {	-- Eye of the Beast
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(13966, {	-- Mark of Tyranny
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(27445, {	-- General Drakkisath, Hand of Nefarian
				["sourceQuests"] = {
					27470,	-- A Potential Ally
					27471,	-- Blackrock Anomaly
					27469,	-- Friends on The Other Side
				},
				["qg"] = 10299,	-- Acride <Scarshield Legion>
				["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 General Drakkisath slain
						["provider"] = { "n", 10363 },	-- General Drakkisath
					}),
					i(66001, {	-- Aeyla's Staff
						["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
					}),
					i(65934, {	-- Staff of the Second Orb
						["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
					}),
					i(65982, {	-- Sword of Nefarian's Hand
						["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
					}),
					i(65958, {	-- Vaelan's Claw
						["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
					}),
				},
			}),
			q(5103, {	-- Hot Fiery Death
				["description"] = "At the bottom floor of Lower Blackrock Spire near the lava.",
				["provider"] = { "o", 176090 },	-- Human Remains
				["timeline"] = { REMOVED_4_0_3 },
				["requireSkill"] =
					-- #if AFTER TBC
					BLACKSMITHING,
					-- #else
					9788,	-- Armorsmith
					-- #endif
				["lvl"] = 55,
				["groups"] = {
					i(12812, {	-- Unfired Plate Gauntlets
						["provider"] = { "o", 176089 },	-- Unfired Plate Gauntlets
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(4729, {	-- Kibler's Exotic Pets
				["qg"] = 10260,	-- Kibler
				["coord"] = { 65.8, 22.0, BURNING_STEPPES },
				["timeline"] = { REMOVED_4_0_3 },
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 Caged Worg Pup
						["provider"] = { "i", 12263 },	-- Caged Worg Pup
						["description"] = "Can be pulled outside of the room without engaging the boss.",
						["cost"] = { { "i", 12262, 1 } },	-- Empty Worg Pup Cage
						["cr"] = 10221,	-- Bloodaxe Worg Pup
					}),
					i(12264),	-- Worg Pup (PET!)
				},
			}),
			q(5067, {	-- Leggings of Arcana
				["sourceQuest"] = 5047,	-- Pip Quickwit, At Your Service!
				["qg"] = 10637,	-- Malyfous Darkhammer
				["coord"] = { 61.0, 38.8, WINTERSPRING },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { SCHOLOMANCE, STRATHOLME },
				["cost"] = {
					{ "i", 12731, 1 },	-- Pristine Hide of the Beast
					{ "i", 12735, 5 },	-- Frayed Abomination Stitching
					{ "i", 12360, 5 },	-- Arcanite Bar
					{ "i", 12736, 5 },	-- Frostwhisper's Embalming Fluid
					{ "g", 500000 },	-- 50 Gold
				},
				["repeatable"] = true,
				["lvl"] = 57,
				["groups"] = {
					i(12756, {	-- Leggings of Arcana
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(5167, {	-- Legplates of the Chromatic Defier
				["sourceQuest"] = 5164,	-- Catalogue of the Wayward
				["provider"] = { "o", 176192 },	-- Catalogue of the Wayward
				["coord"] = { 39.4, 66.7, WESTERN_PLAGUELANDS },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { SCHOLOMANCE, STRATHOLME, EASTERN_PLAGUELANDS },
				["cost"] = {
					{ "i", 12871, 1 },	-- Chromatic Carapace
					{ "i", 12607, 10 },	-- Brilliant Chromatic Scale
					{ "i", 12938, 10 },	-- Blood of Heroes
					{ "i", 12753, 5 },	-- Skin of Shadow
				},
				["lvl"] = 57,
				["groups"] = {
					i(12903, {	-- Legguards of the Chromatic Defier
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(12945, {	-- Legplates of the Chromatic Defier
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(5126, {	-- Lorax's Tale
				["description"] = "Have an Unforged Rune Covered Breastplate in your bags to make his dialog available.",
				["providers"] = {
					{ "n", 10918 },	-- Lorax
					{ "i", 12806 },	-- Unforged Rune Covered Breastplate
				},
				["coord"] = { 63.8, 73.8, WINTERSPRING },
				["timeline"] = { REMOVED_4_0_3 },
				["requireSkill"] = BLACKSMITHING,
				["learnedAt"] = 275,
				["lvl"] = 55,
			}),
			q(5081, {	-- Maxwell's Mission
				["sourceQuest"] = 5002,	-- Message to Maxwell
				["qg"] = 9560,	-- Marshal Maxwell
				["coord"] = { 84.6, 68.8, BURNING_STEPPES },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 War Master Voone slain
						["provider"] = { "n", 9237 },	-- War Master Voone
					}),
					objective(2, {	-- 0/1 Highlord Omokk slain
						["provider"] = { "n", 9196 },	-- Highlord Omokk
					}),
					objective(3, {	-- 0/1 Overlord Wyrmthalak slain
						["provider"] = { "n", 9568 },	-- Overlord Wyrmthalak
					}),
					i(13961, {	-- Halycon's Muzzle
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(13958, {	-- Wyrmthalak's Shackles
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(13963, {	-- Voone's Vice Grips
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(13959, {	-- Omokk's Girth Restrainer
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(13962, {	-- Vosh'gajin's Strand
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(4766, {	-- Mayara Brightwing
				["altQuests"] = {
					4764,	-- Doomrigger's Clasp [NOT SURE, but this quest constantly resets to Not Complete on Blizzard's Side.]
				},
				["qg"] = 2285,	-- Count Remington Ridgewell <House of Nobles>
				["coord"] = { 74.0, 30.0, STORMWIND_CITY },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 57,
			}),
			q(5002, {	-- Message to Maxwell
				["sourceQuest"] = 5001,	-- Bijou's Belongings (A)
				["providers"] = {
					{ "n", 10257 },	-- Bijou
					{ "i", 12770 },	-- Bijou's Information
				},
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { BURNING_STEPPES },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 55,
			}),
			-- #if AFTER TBC
			q(6568, {	-- Mistress of Deception
				["sourceQuest"] = 6567,	-- The Champion of the Horde
				["providers"] = {
					{ "n", 10182 },	-- Rokaro <Champion of the Horde>
					{ "i", 16785 },	-- Rokaro's Letter
				},
				["coord"] = { 25.6, 70.0, DESOLACE },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { WESTERN_PLAGUELANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
			}),
			-- #endif
			q(4866, {	-- Mother's Milk
				-- #if BEFORE 4.0.3
				["description"] = "You need to setup a coordinated group ONLY for this. If the healer or ANYONE removes the poison, you have to reset and try again.\n\nBefore the group starts, set your hearth to Stormwind or have a mage for a quick port to Stormwind after the group has gotten their bites.",
				-- #endif
				["qg"] = 9563,	-- Ragged John
				["coord"] = { 65.0, 23.6, BURNING_STEPPES },
				["timeline"] = { REMOVED_4_0_3 },
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- Milked
						["provider"] = { "n", 10596 },	-- Mother Smolderweb
					}),
					i(15873, {	-- Ragged John's Neverending Cup
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(6569, {	-- Oculus Illusions
				["sourceQuest"] = 6568,	-- The Testament of Rexxar
				["qg"] = 11872,	-- Myranda the Hag
				["coord"] = { 50.8, 77.8, WESTERN_PLAGUELANDS },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/20 Black Dragonspawn Eye
						["provider"] = { "i", 16786 },	-- Black Dragonspawn Eye
					}),
				},
			}),
			q(4981, {	-- Operative Bijou
				["qg"] = 9080,	-- Lexlort <Kargath Expeditionary Force>
				["coord"] = { 5.8, 47.6, BADLANDS },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
			}),
			q(5047, {	-- Pip Quickwit, At Your Service!
				-- #if BEFORE 4.0.3
				["description"] = "Kill The Beast in UBRS. Using Pip's Skinner and a 300 Skill Skinner, skin the boss and Pip Quickwit will appear. Everyone in the raid can pick up this quest at that time.",
				-- #endif
				["providers"] = {
					{ "n", 10776 },	-- Pip Quickwit
					{ "i", 12710 },	-- Glowing Hunk of the Beast's Flesh
				},
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { WINTERSPRING },
				["cr"] = 10430,	-- The Beast
				["lvl"] = 57
			}),
			q(4701, {	-- Put Her Down
				["qg"] = 9562,	-- Helendis Riverhorn
				["coord"] = { 85.6, 69.0, BURNING_STEPPES },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 Halycon slain
						["provider"] = { "n", 10220 },	-- Halycon
					}),
					i(15824, {	-- Astoria Robes
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(15827, {	-- Jadescale Breastplate
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(15825, {	-- Traphook Jerkin
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(4742, {	-- Seal of Ascension (1/2)
				-- #if BEFORE 4.0.3
				["description"] = "Pickup this quest by going up to the hidden ledge in LBRS and speaking to the Infiltrator.",
				-- #endif
				["qg"] = 10299,	-- Scarshield Infiltrator <Scarshield Legion>
				["timeline"] = { REMOVED_4_0_3 },
				["cost"] = {
					{ "i", 12336, 1 },	-- Gemstone of Spirestone
					{ "i", 12335, 1 },	-- Gemstone of Smolderthorn
					{ "i", 12337, 1 },	-- Gemstone of Bloodaxe
					{ "i", 12219, 1 },	-- Unadorned Seal of Ascension
				},
				["lvl"] = 57,
			}),
			q(4743, {	-- Seal of Ascension (2/2)
				-- #if BEFORE 4.0.3
				["description"] = "Ask your party to come with you to Dustwallow Marsh. You will not be able to solo this quest.\n\nOnly one person can complete this quest per Emberstrife cooldown. Your party will need to kill Emberstrife to reset the cooldown. (Respawn is about 5 minutes.)",
				-- #endif
				["sourceQuest"] = 4742,	-- Seal of Ascension (1/2)
				["qg"] = 10299,	-- Scarshield Infiltrator <Scarshield Legion>
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { DUSTWALLOW_MARSH },
				["lvl"] = 57,
				["groups"] = {
					objective(1, {	-- 0/1 Forged Seal of Ascension
						["provider"] = { "i", 12324 },	-- Forged Seal of Ascension
						["cost"] = {
							{ "i", 12323, 1 },	-- Unforged Seal of Ascension
							{ "i", 12300, 1 },	-- Orb of Draconic Energy
						},
						["cr"] = 10321,	-- Emberstrife
					}),
					i(12339, {	-- Vaelan's Gift
						i(12323, {	-- Unforged Seal of Ascension
							["description"] = "Use this once the dragon reaches 10-20% health.",
						}),
						i(12300, {	-- Orb of Draconic Energy
							["description"] = "Use this once the dragon reaches 10% health. Instruct your party NOT to kill Emberstrife.",
						}),
					}),
					i(12344, {	-- Seal of Ascension
						-- #if BEFORE 3.0.8
						["description"] = "This item must be in your bags to open the door to UBRS.",
						-- #endif
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(6567, {	-- The Champion of the Horde
				["sourceQuest"] = 6566,	-- What the Wind Carries
				["qg"] = 4949,	-- Thrall <Warchief>
				["coord"] = { 32.0, 37.8, ORGRIMMAR },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { DESOLACE },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
			}),
			q(4768, {	-- The Darkstone Tablet
				["sourceQuest"] = 4769,	-- Vivian Lagrave and the Darkstone Tablet
				["qg"] = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
				["coord"] = { 3.0, 47.6, BADLANDS },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = HORDE_ONLY,
				["lvl"] = 57,
				["groups"] = {
					objective(1, {	-- 0/1 Darkstone Tablet
						["providers"] = {
							{ "i",  12358 },	-- Darkstone Tablet
							{ "o", 175385 },	-- Darkstone Tablet
						},
					}),
					i(15860, {	-- Blinkstrike Armguards
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(15861, {	-- Swiftfoot Treads
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(5127, {	-- The Demon Forge
				["sourceQuest"] = 5126,	-- Lorax's Tale
				["qg"] = 10918,	-- Lorax
				["coord"] = { 63.8, 73.8, WINTERSPRING },
				["timeline"] = { REMOVED_4_0_3 },
				["requireSkill"] =
					-- #if AFTER TBC
					BLACKSMITHING,
					-- #else
					9788,	-- Armorsmith
					-- #endif
				["learnedAt"] = 275,
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 Soul Stained Pike
						["provider"] = { "i", 12847 },	-- Soul Stained Pike
						["cost"] = { { "i", 12848, 1 } },	-- Blood Stained Pike
						["cr"] = 10899,	-- Goraluk Anvilcrack
					}),
					objective(2, {	-- 0/1 Unforged Rune Covered Breastplate
						["provider"] = { "i", 12806 },	-- Unforged Rune Covered Breastplate
					}),
					i(12696, {	-- Plans: Demon Forged Breastplate (RECIPE!)
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(9224),	-- Elixir of Demonslaying
					i(12849, {	-- Demon Kissed Sack
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(27444, {	-- The False Warchief
				["sourceQuests"] = {
					27470,	-- A Potential Ally
					27471,	-- Blackrock Anomaly
					27469,	-- Friends on The Other Side
				},
				["qg"] = 10299,	-- Acride <Scarshield Legion>
				["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 Warchief Rend Blackhand slain
						["provider"] = { "n", 10429 },	-- Warchief Rend Blackhand
					}),
				},
			}),
			q(4788, {	-- The Final Tablets
				["sourceQuest"] = 5065,	-- The Lost Tablets of Mosh'aru
				["qg"] = 10460,	-- Prospector Ironboot
				["coord"] = { 66.8, 24.0, TANARIS },
				["timeline"] = { REMOVED_4_0_3 },
				["lvl"] = 40,
				["groups"] = {
					objective(1, {	-- 0/1 Fifth Mosh'aru Tablet
						["providers"] = {
							{ "i",  12740 },	-- Fifth Mosh'aru Tablet
							{ "o", 175949 },	-- Fifth Mosh'aru Tablet
						},
					}),
					objective(2, {	-- 0/1 Sixth Mosh'aru Tablet
						["providers"] = {
							{ "i",  12741 },	-- Sixth Mosh'aru Tablet
							{ "o", 175950 },	-- Sixth Mosh'aru Tablet
						},
					}),
				},
			}),
			q(8182, {	-- The Hand of Rastakhan
				["sourceQuest"] = 8181,	-- Confront Yeh'kinya
				["qg"] = 10460,	-- Prospector Ironboot
				["coord"] = { 66.8, 24.0, TANARIS },
				["timeline"] = { REMOVED_4_0_3 },
				["lvl"] = 40,
			}),
			q(5065, {	-- The Lost Tablets of Mosh'aru
				["sourceQuests"] = {
					-- #if SEASON_OF_DISCOVERY
					82095,	-- The God Hakkar
					-- #else
					3528,	-- The God Hakkar
					-- #endif
				},
				["qg"] = 10460,	-- Prospector Ironboot
				["coord"] = { 66.8, 24.0, TANARIS },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { EASTERN_PLAGUELANDS },
				["lvl"] = 40,
				["groups"] = {
					objective(1, {	-- 0/1 Third Mosh'aru Tablet
						["providers"] = {
							{ "i",  12411 },	-- Third Mosh'aru Tablet
							{ "o", 175487 },	-- Third Mosh'aru Tablet
						},
						["coords"] = {
							-- #if AFTER WRATH
							{ 66.9, 9.0, EASTERN_PLAGUELANDS },
							-- #else
							{ 72.4, 13.0, EASTERN_PLAGUELANDS },
							-- #endif
						},
					}),
					objective(2, {	-- 0/1 Fourth Mosh'aru Tablet
						["providers"] = {
							{ "i",  12412 },	-- Fourth Mosh'aru Tablet
							{ "o", 175488 },	-- Fourth Mosh'aru Tablet
						},
						["coords"] = {
							-- #if AFTER WRATH
							{ 67.2, 11.4, EASTERN_PLAGUELANDS },
							-- #else
							{ 72.7, 15.7, EASTERN_PLAGUELANDS },
							-- #endif
						},
					}),
				},
			}),
			q(5160, {	-- The Matron Protectorate
				-- #if BEFORE 4.0.3
				["description"] = "Speak with Awbee in UBRS to accept this quest. Most tanks skip the two mobs near Awbee, so you should mention it to them.",
				-- #endif
				["providers"] = {
					{ "n", 10740 },	-- Awbee
					{ "i", 12923 },	-- Awbee's Scale
				},
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { WINTERSPRING },
				["lvl"] = 57,
			}),
			q(4724, {	-- The Pack Mistress
				["qg"] = 9081,	-- Galamav the Marksman <Kargath Expeditionary Force>
				["coord"] = { 5.8, 47.6, BADLANDS },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 Halycon slain
						["provider"] = { "n", 10220 },	-- Halycon
					}),
					i(15824, {	-- Astoria Robes
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(15827, {	-- Jadescale Breastplate
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(15825, {	-- Traphook Jerkin
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(6585, {	-- The Test of Skulls, Axtroz
				["sourceQuests"] = {
					6584,	-- The Test of Skulls, Chronalis
					6582,	-- The Test of Skulls, Scryer
					6583,	-- The Test of Skulls, Somnus
				},
				["qg"] = 10321,	-- Emberstrife
				["coord"] = { 56.8, 87.4, DUSTWALLOW_MARSH },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { WETLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 The Skull of Axtroz
						["provider"] = { "i", 16872 },	-- The Skull of Axtroz
						["coord"] = { 83.4, 49.6, WETLANDS },
						["cr"] = 12899,	-- Axtroz
					}),
				},
			}),
			q(6584, {	-- The Test of Skulls, Chronalis
				["sourceQuest"] = 6570,	-- Emberstrife
				["qg"] = 10321,	-- Emberstrife
				["coord"] = { 56.8, 87.4, DUSTWALLOW_MARSH },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { TANARIS },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 The Skull of Chronalis
						["provider"] = { "i", 16871 },	-- The Skull of Chronalis
						["coord"] = { 64.4, 50.6, TANARIS },
						["qg"] = 8197,	-- Chronalis
					}),
				},
			}),
			q(6582, {	-- The Test of Skulls, Scryer
				["sourceQuest"] = 6570,	-- Emberstrife
				["qg"] = 10321,	-- Emberstrife
				["coord"] = { 56.8, 87.4, DUSTWALLOW_MARSH },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { WINTERSPRING },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 The Skull of Scryer
						["provider"] = { "i", 16869 },	-- The Skull of Scryer
						["coord"] = { 53.6, 55.8, WINTERSPRING },
						["qg"] = 10664,	-- Scryer
					}),
				},
			}),
			q(6583, {	-- The Test of Skulls, Somnus
				["sourceQuest"] = 6570,	-- Emberstrife
				["qg"] = 10321,	-- Emberstrife
				["coord"] = { 56.8, 87.4, DUSTWALLOW_MARSH },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { SWAMP_OF_SORROWS },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 The Skull of Somnus
						["provider"] = { "i", 16870 },	-- The Skull of Somnus
						["coord"] = { 80.2, 57.2, SWAMP_OF_SORROWS },
						["qg"] = 12900,	-- Somnus
					}),
				},
			}),
			-- #if BEFORE TBC
			q(6568, {	-- The Testament of Rexxar
				["sourceQuest"] = 6567,	-- The Champion of the Horde
				["providers"] = {
					{ "n", 10182 },	-- Rexxar <Champion of the Horde>
					{ "i", 16785 },	-- Rexxar's Testament
				},
				["coords"] = {
					{ 54.0, 3.2, DESOLACE },
					{ 62.8, 22.6, DESOLACE },
					{ 59.8, 37.6, DESOLACE },
					{ 52.0, 39.4, DESOLACE },
					{ 49.6, 56.4, DESOLACE },
					{ 55.6, 66.6, DESOLACE },
					{ 50.6, 75.2, DESOLACE },
					{ 40.8, 78.6, DESOLACE },
					{ 42.4, 96.8, DESOLACE },
				},
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { WESTERN_PLAGUELANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
			}),
			-- #endif
			q(4907, {	-- Tinkee Steamboil
				["sourceQuest"] = 4810,	-- Return to Tinkee
				["qg"] = 10468,	-- Felnok Steelspring
				["coord"] = { 61.6, 38.6, WINTERSPRING },
				["timeline"] = { REMOVED_4_0_3 },
				["isBreadcrumb"] = true,
				["lvl"] = 57,
			}),
			q(27440, {	-- Trolls, Ogres, and Orcs, Oh My!
				["sourceQuests"] = {
					27470,	-- A Potential Ally
					27471,	-- Blackrock Anomaly
					27469,	-- Friends on The Other Side
				},
				["qg"] = 10299,	-- Acride <Scarshield Legion>
				["timeline"] = { ADDED_4_0_3 },
				["lvl"] = lvlsquish(55, 55, 20),
				["groups"] = {
					objective(1, {	-- 0/1 War Master Voone slain
						["provider"] = { "n", 9237 },	-- War Master Voone
					}),
					objective(2, {	-- 0/1 Highlord Omokk slain
						["provider"] = { "n", 9196 },	-- Highlord Omokk
					}),
					objective(3, {	-- 0/1 Overlord Wyrmthalak slain
						["provider"] = { "n", 9568 },	-- Overlord Wyrmthalak
					}),
					i(66000, { 	-- Band of the Spire
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(65933, {	-- Highlord's Chestpiece
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(65957, {	-- Overlord's Legplates
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(65981, {	-- War Master's Pauldrons
						["timeline"] = { ADDED_4_0_3 },
					}),
				},
			}),
			q(4867, {	-- Urok Doomhowl
				["providers"] = {
					{ "n", 10799 },	-- Warosh <The Cursed>
					{ "i", 12730 },	-- Warosh's Scroll
				},
				["timeline"] = { REMOVED_4_0_3 },
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 Warosh's Mojo
						["provider"] = { "i", 12712 },	-- Warosh's Mojo
					}),
					i(15867, {	-- Prismcharm
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(4769, {	-- Vivian Lagrave and the Darkstone Tablet
				["qg"] = 5204,	-- Apothecary Zinge <Royal Apothecary Society>
				["coord"] = { 49.8, 68.2, UNDERCITY },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 57,
			}),
			q(4903, {	-- Warlord's Command
				-- #if BEFORE 4.0.3
				["description"] = "Talk to Warlord Goretooth and read through his full dialog for the item that starts the quest to be given to you.",
				-- #endif
				["providers"] = {
					{ "n", 9077 },	-- Warlord Goretooth <Kargath Expeditionary Force>
					{ "i", 12563 },	-- Warlord Goretooth's Command
				},
				["coord"] = { 5.8, 47.6, BADLANDS },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
				["groups"] = {
					objective(1, {	-- 0/1 Overlord Wyrmthalak slain
						["provider"] = { "n", 9568 },	-- Overlord Wyrmthalak
					}),
					objective(2, {	-- 0/1 Highlord Omokk slain
						["provider"] = { "n", 9196 },	-- Highlord Omokk
					}),
					objective(3, {	-- 0/1 War Master Voone slain
						["provider"] = { "n", 9237 },	-- War Master Voone
					}),
					objective(4, {	-- 0/1 Important Blackrock Documents
						["providers"] = {
							{ "i",  12562 },	-- Important Blackrock Documents
							{ "o", 175785 },	-- Inconspicuous Documents
						},
						["description"] = "On the ground next to Overlord Wyrmthalak.",
					}),
					i(13961, {	-- Halycon's Muzzle
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(13958, {	-- Wyrmthalak's Shackles
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(13963, {	-- Voone's Vice Grips
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(13959, {	-- Omokk's Girth Restrainer
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(13962, {	-- Vosh'gajin's Strand
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(6566, {	-- What the Wind Carries
				["sourceQuest"] = 4974,	-- For The Horde!
				["qg"] = 4949,	-- Thrall <Warchief>
				["coord"] = { 32.0, 37.8, ORGRIMMAR },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = HORDE_ONLY,
				["lvl"] = 55,
			}),
			q(5161, {	-- Wrath of the Blue Flight (1/2)
				["sourceQuest"] = 5160,	-- The Matron Protectorate
				["qg"] = 10929,	-- Haleh
				["coord"] = { 54.4, 51.2, WINTERSPRING },
				["timeline"] = { REMOVED_4_0_3 },
				["lvl"] = 57,
			}),
			q(5162, {	-- Wrath of the Blue Flight (2/2)
				["sourceQuest"] = 5161,	-- Wrath of the Blue Flight (1/2)
				["qg"] = 10929,	-- Haleh
				["coord"] = { 54.4, 51.2, WINTERSPRING },
				["timeline"] = { REMOVED_4_0_3 },
				["maps"] = { WESTERN_PLAGUELANDS },
				["lvl"] = 57,
			}),
		}),
		n(ZONE_DROPS, {
			applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(22138, {	-- Blackrock Bracer
				["timeline"] = { REMOVED_4_0_3 },
			})),
			i(16786, {	-- Black Dragonspawn Eye
				["timeline"] = { REMOVED_4_0_3 },
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226717, {	-- Beaststalker's Bindings
				["timeline"] = { ADDED_1_15_3 },
				["cr"] = 9096,	-- Rage Talon Dragonspawn
			})),
			-- #endif
			i(16681, {	-- Beaststalker's Bindings
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
				["cr"] = 9096,	-- Rage Talon Dragonspawn
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226718, {	-- Beaststalker's Belt
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16680, {	-- Beaststalker's Belt
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226765, {	-- Belt of Valor
				["timeline"] = { ADDED_1_15_3 },
				["cr"] = 9268,	-- Smolderthorn Berserker
			})),
			-- #endif
			i(16736, {	-- Belt of Valor
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
				["cr"] = 9268,	-- Smolderthorn Berserker
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226766, {	-- Bracers of Valor
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16735, {	-- Bracers of Valor
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226754, {	-- Cord of Elements
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16673, {	-- Cord of Elements
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226744, {	-- Devout Belt
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16696, {	-- Devout Belt
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226759, {	-- Dreadmist Bracers
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16703, {	-- Dreadmist Bracers
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226724, {	-- Magister's Belt
				["timeline"] = { ADDED_1_15_3 },
				["cr"] = 9239,	-- Smolderthorn Mystic
			})),
			-- #endif
			i(16685, {	-- Magister's Belt
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
				["cr"] = 9239,	-- Smolderthorn Mystic
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226725, {	-- Magister's Bindings
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16683, {	-- Magister's Bindings
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226701, {	-- Shadowcraft Belt
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16713, {	-- Shadowcraft Belt
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226712, {	-- Wildheart Belt
				["timeline"] = { ADDED_1_15_3 },
				["crs"] = {
					9692,	-- Bloodaxe Raider
					9258,	-- Scarshield Raider
				},
			})),
			-- #endif
			i(16716, {	-- Wildheart Belt
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
				["crs"] = {
					9692,	-- Bloodaxe Raider
					9258,	-- Scarshield Raider
				},
			}),
			i(16717, {	-- Wildheart Gloves
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
				["crs"] = {
					9692,	-- Bloodaxe Raider
					9262,	-- Firebrand Invoker
				},
			}),
		}),
		-- #if BEFORE 6.0.1
		n(LOWER_BLACKROCK_SPIRE, {
		-- #endif
			n(ZONE_DROPS, {
				i(16244, {	-- Formula: Enchant Gloves - Greater Strength
					["timeline"] = { REMOVED_2_3_0 },	-- Learned from Trainer
					["cr"] = 9198,	-- Spirestone Mystic
				}),
				i(16250, {	-- Formula: Enchant Weapon - Superior Striking (RECIPE!)
					["cr"] = 9216,	-- Spirestone Warlord
				}),
				i(14513, {	-- Pattern: Robe of the Archmage (RECIPE!)
					-- #if TBC
					-- During TBC this was made exclusively usable by Mages, then that change was reverted with Wrath.
					["classes"] = { MAGE },
					-- #endif
					["cr"] = 9264,	-- Firebrand Pyromancer
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, i(227906, {	-- Pattern: Masterwork Volcanic Breastplate (RECIPE!)
					["timeline"] = { ADDED_1_15_3 },
					["cr"] = 9259,	-- Firebrand Grunt
				})),
				applyclassicphase(SOD_PHASE_FOUR, i(227907, {	-- Pattern: Masterwork Volcanic Shoulders (RECIPE!)
					["timeline"] = { ADDED_1_15_3 },
					["cr"] = 9260,	-- Firebrand Legionnaire
				})),
				-- #endif
				i(15749, {	-- Pattern: Volcanic Breastplate (RECIPE!)
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
					["cr"] = 9259,	-- Firebrand Grunt
				}),
				i(15775, {	-- Pattern: Volcanic Shoulders (RECIPE!)
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
					["cr"] = 9260,	-- Firebrand Legionnaire
				}),
				i(13494, {	-- Recipe: Greater Fire Protection Potion (RECIPE!)
					["crs"] = {
						9262,	-- Firebrand Invoker
						9264,	-- Firebrand Pyromancer
					},
				}),
				-- #if AFTER 6.0.2
				i(13260, {	-- Wind Dancer Boots
					["cr"] = 9216,	-- Spirestone Warlord
				}),
				-- #endif
				applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(21982, {	-- Ogre Warbeads
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					["crs"] = {
						9196,	-- Highlord Omokk
						10584,	-- Urok Doomhowl
						9218,	-- Spirestone Battle Lord
						9197,	-- Spirestone Battle Mage
						9199,	-- Spirestone Enforcer
						9217,	-- Spirestone Lord Magus
						9198,	-- Spirestone Mystic
						9201,	-- Spirestone Ogre Magus
						9200,	-- Spirestone Reaver
						9216,	-- Spirestone Warlord
					},
					-- #endif
				})),
				i(12219, {	-- Unadorned Seal of Ascension
					["timeline"] = { REMOVED_4_0_3 },
				}),
			}),
			n(9257, {	-- Scarshield Warlock
				["description"] = "DO NOT KILL this mob if you are trying to get the Burning Felguard to spawn.",
				["groups"] = {
					i(9214, {	-- Grimoire of Inferno
						["timeline"] = { REMOVED_4_0_1, ADDED_10_1_7 },	-- 07.09.2023 ATT DISCORD
						["classes"] = { WARLOCK },
						-- #if BEFORE 4.0.1
						["spellID"] = 1122,	-- Inferno
						-- #endif
					}),
					n(10263, {	-- Burning Felguard
						["description"] = "This mob is infinitely farmable if you don't kill all of the Scarshield Warlocks.",
						["groups"] = {
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228554, {	-- Demonskin Gloves
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13181, {	-- Demonskin Gloves
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228555, {	-- Phase Blade
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13182, {	-- Phase Blade
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
						},
					}),
				},
			}),
			i(12533, {	-- Roughshod Pike
				["description"] = "This item can be found along the back wall as you cross the 2nd bridge to the sleeping orc encampment just after Warosh.",
				["provider"] = { "o", 175886 },	-- Roughshod Pike
			}),
			n(9218, {	-- Spirestone Battle Lord (Rare)
				["coord"] = { 39.0, 64.0, LBRS_HORDEMAR_CITY },	-- Mok'Doom
				["description"] =
					-- #if AFTER 6.0.1
					"This is a Rare Creature and, as such, is not always present.\nThe Rare can be seen at the entrance of the Dungeon via the /tar command.",
					-- #else
					"This is a Rare Creature and, as such, is not always present.",
					-- #endif
				["groups"] = {
					i(13285),	-- The Blackrock Slicers
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228557, {	-- Swiftdart Battleboots
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13284, {	-- Swiftdart Battleboots
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
				},
			}),
			n(9219, {	-- Spirestone Butcher (Rare)
				["coord"] = { 54.0, 58.0, LBRS_HORDEMAR_CITY },
				["description"] =
					-- #if AFTER 6.0.1
					"This is a Rare Creature and, as such, is not always present.\nThe Rare can be seen at the entrance of the Dungeon via the /tar command.",
					-- #else
					"This is a Rare Creature and, as such, is not always present.",
					-- #endif
				["groups"] = {
					i(13286),	-- Rivenspike
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228556, {	-- Butcher's Apron
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(12608, {	-- Butcher's Apron
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
				},
			}),
			n(9217, {	-- Spirestone Lord Magus (Rare)
				["coord"] = { 39.0, 64.0, LBRS_HORDEMAR_CITY },	-- Mok'Doom
				["description"] = "This is a Rare Creature and, as such, is not always present.",
				["groups"] = {
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228563, {	-- Globe of D'sak
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13261, {	-- Globe of D'sak
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228564, {	-- Ogreseer Tower Boots
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13282, {	-- Ogreseer Tower Boots
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228565, {	-- Magus Ring
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13283, {	-- Magus Ring
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
				},
			}),
			e(388, {	-- Highlord Omokk
				["creatureID"] = 9196,	-- Highlord Omokk
				["groups"] = {
					i(12534),	-- Omokk's Head
					i(12336),	-- Gemstone of Spirestone
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228570, {	-- Fist of Omokk
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13167, {	-- Fist of Omokk
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					i(151412, {	-- Ogre Highlord's Casque
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(13166),	-- Slamshot Shoulders
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228571, {	-- Plate of the Shaman King
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13168, {	-- Plate of the Shaman King
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					i(13170),	-- Skyshroud Leggings
					i(13169),	-- Tressermane Leggings
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(226752, {	-- Boots of Elements
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(16670, {	-- Boots of Elements
						["timeline"] = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
				},
			}),
			e(389, {	-- Shadow Hunter Vosh'gajin
				["creatureID"] = 9236,	-- Shadow Hunter Vosh'gajin
				["groups"] = {
					i(12740, {	-- Fifth Mosh'aru Tablet
						-- #if BEFORE 4.0.3
						["description"] = "Located directly behind the boss.",
						-- #endif
						["provider"] = { "o", 175949 },	-- Fifth Mosh'aru Tablet
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(13352, {	-- Vosh'gajin's Snakestone
						["timeline"] = { REMOVED_4_0_3 },
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228559, {	-- Blackcrow
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(12651, {	-- Blackcrow
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					i(12653),	-- Riphook
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228562, {	-- Demonic Runed Spaulders
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13257, {	-- Demonic Runed Spaulders
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228558, {	-- Funeral Cuffs
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(12626, {	-- Funeral Cuffs
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228561, {	-- Trueaim Gauntlets
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13255, {	-- Trueaim Gauntlets
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(226702, {	-- Shadowcraft Gloves
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(16712, {	-- Shadowcraft Gloves
						["timeline"] = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
					i(151413, {	-- Smolderthorn Greatbelt
						["timeline"] = { ADDED_7_3_0 },
					}),
					-- #if BEFORE 4.0.1
					i(12654, {	-- Doomshot
						["timeline"] = { REMOVED_4_0_1 },
					}),
					-- #endif
				},
			}),
			e(390, {	-- War Master Voone
				["creatureID"] = 9237,	-- War Master Voone
				["groups"] = {
					i(12741, {	-- Sixth Mosh'aru Tablet
						-- #if BEFORE 4.0.3
						["description"] = "Located directly behind the boss.",
						-- #endif
						["provider"] = { "o", 175950 },	-- Sixth Mosh'aru Tablet
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(12335),	-- Gemstone of Smolderthorn
					i(12582),	-- Keris of Zul'Serak
					i(13175, {	-- Voone's Twitchbow [CRIEVE NOTE: This item seems to have disappeared with TBC Classic.]
						-- #if BEFORE 10.1.7
						-- #if AFTER 2.0.1
						["description"] = "This item appears to have been removed with TBC Prepatch. Please @Crieve if you get it to drop.",
						["isBounty"] = true,
						-- #endif
						-- #endif
						["timeline"] = { REMOVED_2_0_1, ADDED_10_1_7 },
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228574, {	-- Talisman of Evasion
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13177, {	-- Talisman of Evasion
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228572, {	-- Brazecore Armguards
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13179, {	-- Brazecore Armguards
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(226721, {	-- Beaststalker's Gloves
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(16676, {	-- Beaststalker's Gloves
						["timeline"] = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228594, {	-- Kayser's Boots of Precision
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(22231, {	-- Kayser's Boots of Precision
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if BEFORE MOP
					i(28972, {	-- Flightblade Throwing Axe [TBC]
						["timeline"] = {
							ADDED_2_0_1,
							REMOVED_5_0_4
						},
					}),
					i(13173, {	-- Flightblade Throwing Axe [Classic] / Broken Flightblade Throwing Axe [TBC]
						["timeline"] = {
							ADDED_1_11_1,
							REMOVED_2_0_1
						},
					}),
					-- #endif
				},
			}),
			applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n_conditional(16080, {	-- Mor Grayhoof
				["description"] = "This boss can be summoned using the Brazier of Beckoning or the Brazier of Invocation, which can summon any of the spirits.",
				["cost"] = {
					{ "i", 22049, 1 },	-- Brazier of Beckoning [Mor Grayhoof]
					{ "i", 22057, 1 },	-- Brazier of Invocation
				},
				-- #if AFTER 4.0.3
				-- This init function unmarks the removed from game flag for folks with the brazier.
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.BrazierAccess,
				-- #endif
				["timeline"] = { REMOVED_4_0_3 },
				["groups"] = {
					objective(2, {	-- 0/1 Left Piece of Lord Valthalak's Amulet
						["questID"] = 8966,	-- The Left Piece of Lord Valthalak's Amulet [WARRIOR, MAGE]
						["provider"] = { "i", 21984 },	-- Left Piece of Lord Valthalak's Amulet
					}),
					objective(2, {	-- 0/1 Right Piece of Lord Valthalak's Amulet
						["questID"] = 8989,	-- The Right Piece of Lord Valthalak's Amulet [DRUID, PALADIN, SHAMAN]
						["provider"] = { "i", 22046 },	-- Right Piece of Lord Valthalak's Amulet
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228600, {	-- The Jaw Breaker
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(22322, {	-- The Jaw Breaker
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					i(22319),	-- Tome of Divine Right
					i(22325),	-- Belt of the Trickster
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228596, {	-- Ironweave Belt
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(22306, {	-- Ironweave Belt
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					i(22398, {	-- Idol of Rejuvenation
						["timeline"] = { REMOVED_5_0_4 },
					}),
				},
			})),
			n(9596, {	-- Bannok Grimaxe (Rare)
				["coords"] = {
					{ 53.0, 67.0, LBRS_TAZZALOR },
					{ 49.0, 55.0, LBRS_TAZZALOR },
				},
				["description"] = "This is a Rare Creature and, as such, is not always present.",
				["groups"] = {
					i(12838),	-- Plans: Arcanite Reaper (RECIPE!)
					i(12621),	-- Demonfork
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228568, {	-- Backusarian Gauntlets
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(12637, {	-- Backusarian Gauntlets
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228567, {	-- Chiselbrand Girdle
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(12634, {	-- Chiselbrand Girdle
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
				},
			}),
			n(10376, {	-- Crystal Fang (Rare)
				["coord"] = { 55.0, 75.0, LBRS_SKITTERWEB_TUNNELS },
				["description"] =
					-- #if AFTER 6.0.1
					"This is a Rare Creature and, as such, is not always present.\nThe Rare can be seen at the entrance of the Dungeon via the /tar command.",
					-- #else
					"This is a Rare Creature and, as such, is not always present.",
					-- #endif
				["groups"] = {
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228592, {	-- Fang of the Crystal Spider
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13218, {	-- Fang of the Crystal Spider
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228590, {	-- Sunderseer Mantle
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13185, {	-- Sunderseer Mantle
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					i(13184),	-- Fallbrush Handgrips
				},
			}),
			e(391, {	-- Mother Smolderweb
				["creatureID"] = 10596,	-- Mother Smolderweb
				["groups"] = {
					i(68673, {	-- Smolderthorn Hatchling (PET!)
						["timeline"] = { ADDED_4_0_6 },
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228573, {	-- Venomspitter
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13183, {	-- Venomspitter
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					i(151414, {	-- Arcanophile's Greatcloak
						["timeline"] = { ADDED_7_3_0 },
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228577, {	-- Gilded Gauntlets
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13244, {	-- Gilded Gauntlets
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(226713, {	-- Wildheart Boots
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(16715, {	-- Wildheart Boots
						["timeline"] = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228576, {	-- Smolderweb's Eye
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13213, {	-- Smolderweb's Eye
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
				},
			}),
			e(392, {	-- Urok Doomhowl
				["creatureID"] = 10584,	-- Urok Doomhowl
				["provider"] = { "o", 175621 },	-- Urok's Tribute Pile
				["description"] = "Summonable Boss. Loot a Roughshod Pike, found on the left wall after crossing the second bridge before heading to Highlord Omokk. Kill Highlord Omokk and loot his head. After killing Mother Smolderweb, head up and use the pike at the pile of skulls located at the corner of the square platform. This will summon waves of enemies and finally the boss.",
				["cost"] = {
					{ "i", 12533, 1 },	-- Roughshod Pike
					{ "i", 12534, 1 },	-- Omokk's Head
				},
				["groups"] = {
					i(12712, {	-- Warosh's Mojo
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(18784, {	-- Top Half of Advanced Armorsmithing: Volume III
						["timeline"] = { REMOVED_4_0_1 },
					}),
					i(13258),	-- Slaghide Gauntlets
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228595, {	-- Marksman's Girdle
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					applyclassicphase(PHASE_FIVE, i(22232, {	-- Marksman's Girdle
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					})),
					i(13259),	-- Ribsteel Footguards
					i(13178),	-- Rosewine Circle
				},
			}),
			e(393, {	-- Quartermaster Zigris
				["creatureID"] = 9736,	-- Quartermaster Zigris
				["groups"] = {
					applyclassicphase(TBC_PHASE_ONE, i(21955, {	-- Design: Black Diamond Crab (RECIPE!)
						["timeline"] = { ADDED_2_0_5 },
					})),
					i(12835, {	-- Plans: Annihilator (RECIPE!)
						-- #if SEASON_OF_DISCOVERY
						["description"] = "Blizzard stated that Annihilator was an item that forced 1 member of the raid into a role that did not fit their design, so they've decided to not include Annihilator.",
						["timeline"] = { REMOVED_1_15_0 },
						-- #endif
					}),
					-- #if AFTER 4.0.3
					i(12264),	-- Worg Pup (PET!)
					-- #endif
					i(13253),	-- Hands of Power
					i(13252),	-- Cloudrunner Girdle
					i(151416, {	-- Dark Horde Grunt's Legplates
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(151415, {	-- Veteran Spearman's Chain Boots
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(13247, {	-- Quartermaster Zigris' Footlocker
						["description"] = "Contains a random green item.",
						["timeline"] = { REMOVED_6_0_2 },	-- NOTE: Exact patch not known
					}),
				},
			}),
			e(394, {	-- Halycon
				["creatureID"] = 10220,	-- Halycon
				["groups"] = {
					i(13212),	-- Halcyon's Spiked Collar
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228598, {	-- Ironweave Bracers
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					applyclassicphase(PHASE_FIVE, i(22313, {	-- Ironweave Bracers
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					})),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228575, {	-- Slashclaw Bracers
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13211, {	-- Slashclaw Bracers
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					i(13210),	-- Pads of the Dread Wolf
				},
			}),
			e(395, {	-- Gizrul the Slavener
				["creatureID"] = 10268,	-- Gizrul the Slavener
				["description"] = "Summoned immediately after Halycon is defeated.",
				["groups"] = {
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228591, {	-- Rhombeard Protector
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13205, {	-- Rhombeard Protector
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					i(151418, {	-- Raider Aspirant's Helm
						["timeline"] = { ADDED_7_3_0 },
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(226710, {	-- Wildheart Spaulders
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(16718, {	-- Wildheart Spaulders
						["timeline"] = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
					i(151417, {	-- Worg-Keeper's Spaulders
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(13208),	-- Bleak Howler Armguards
					i(13206),	-- Wolfshear Leggings
				},
			}),
			n(9718, {	-- Ghok Bashguud <Bloodaxe Champion> (Rare)
				["coords"] = {
					{ 36.0, 72.0, LBRS_HALYCONS_LAIR },
					{ 36.0, 60.0, LBRS_HALYCONS_LAIR },
				},
				["description"] =
					-- #if AFTER 6.0.1
					"This is a Rare Creature and, as such, is not always present.\nThe Rare can be seen at the entrance of the Dungeon via the /tar command.",
					-- #else
					"This is a Rare Creature and, as such, is not always present.",
					-- #endif
				["groups"] = {
					i(13204),	-- Bashguuder
					i(13198),	-- Hurd Smasher
					i(13203),	-- Armswake Cloak
				},
			}),
			e(396, {	-- Overlord Wyrmthalak
				["creatureID"] = 9568,	-- Overlord Wyrmthalak
				["groups"] = {
					ach(643),	-- Lower Blackrock Spire
					ach(5052, {	-- Lower Blackrock Spire Guild Run
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(142370, {	-- Plans: Arcanite Champion
						["timeline"] = { ADDED_7_1_5 },
					}),
					i(12780, {	-- General Drakkisath's Command
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(12337),	-- Gemstone of Bloodaxe
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228586, {	-- Chillpike
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13148, {	-- Chillpike
						-- #if BEFORE 10.1.7
						["description"] = "This item seems to have disappeared in Classic. If you get this item in Classic Era or Wrath Classic, please screenshot this and send it directly to @crieve on Discord!",
						-- #if AFTER 2.0.1
						["isBounty"] = true,
						-- #endif
						-- #endif
						["timeline"] = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_2_0_1, ADDED_10_1_7,
							-- #endif
						},
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228601, {	-- Relentless Scythe
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13163, {	-- Relentless Scythe
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228587, {	-- Trindlehaven Staff
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13161, {	-- Trindlehaven Staff
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228588, {	-- Reiver Claws
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13162, {	-- Reiver Claws
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(226716, {	-- Beaststalker's Mantle
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(16679, {	-- Beaststalker's Mantle
						["timeline"] = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228585, {	-- Mark of the Dragon Lord
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13143, {	-- Mark of the Dragon Lord
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228589, {	-- Heart of the Scale
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13164, {	-- Heart of the Scale
						["timeline"] = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228599, {	-- Heart of Wyrmthalak
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					applyclassicphase(PHASE_FIVE, i(22321, {	-- Heart of Wyrmthalak
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					})),
				},
			}),
		-- #if BEFORE 6.0.1
		}),
		-- #endif
		n(UPPER_BLACKROCK_SPIRE, {
			-- #if BEFORE 3.0.8
			["cost"] = { { "i", 12344, 1 } },	-- Seal of Ascension
			-- #endif
			["timeline"] = { REMOVED_6_0_2 },
			["groups"] = {
				-- #if AFTER WRATH
				n(ACHIEVEMENTS, {
					ach(2188, {	-- Leeeeeeeeeeeeeroy!
						["providers"] = {
							{ "n",  10161 },	-- Rookery Whelp
							{ "o", 175124 },	-- Rookery Egg
						},
						["timeline"] = { ADDED_3_0_2, REMOVED_6_0_2 },
						["groups"] = {
							title(110, {	-- Jenkins
								["timeline"] = { ADDED_3_0_2 },
								["style"] = 2,
							}),
						},
					}),
				}),
				-- #endif
				n(ZONE_DROPS, {
					i(12607, {	-- Brilliant Chromatic Scale
						["crs"] = {
							10447,	-- Chromatic Dragonspawn
							10814,	-- Chromatic Elite Guard
							10442,	-- Chromatic Whelp
						},
						-- Danny Donkey: This is an ordinary drop from these mobs, not from Skinning.
					}),
					i(16247, {	-- Formula: Enchant 2H Weapon - Superior Impact (RECIPE!)
						["timeline"] = { REMOVED_6_0_2 },
						["cr"] = 10317,	-- Blackhand Elite <Blackhand Legion>
					}),
					applyclassicphase(PHASE_SIX_CLASS_BOOKS, i(24102, {	-- Manual of Eviscerate IX
						["timeline"] = { REMOVED_4_0_1 },
						-- #if BEFORE 4.0.1
						["spellID"] = 31016,	-- Eviscerate IX
						["classes"] = { ROGUE },
						["rank"] = 9,
						-- #endif
						["cr"] = 10318,	-- Blackhand Assassin <Blackhand Legion>
					})),
					-- #if AFTER 5.0.4
					i(15774, {	-- Pattern: Heavy Scorpid Shoulders (RECIPE!)
						["timeline"] = { REMOVED_4_0_3, ADDED_5_0_4, REMOVED_6_0_2 },
						["cr"] = 10318,	-- Blackhand Assassin <Blackhand Legion>
					}),
					-- #endif
					-- #if BEFORE 6.0.2
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228593, {	-- Wind Dancer Boots
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(13260, {	-- Wind Dancer Boots
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #endif
				}),
				n(9816, {	-- Pyroguard Emberseer
					["timeline"] = { REMOVED_6_0_2 },
					["groups"] = {
						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(21988, {	-- Ember of Emberseer
							["timeline"] = { REMOVED_4_0_3 },
						})),
						i(17322, {	-- Eye of the Emberseer
							["timeline"] = { REMOVED_3_0_8 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228584, {	-- Emberfury Talisman
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12929, {	-- Emberfury Talisman
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						i(12905, {	-- Wildfire Cape
							["timeline"] = { REMOVED_6_0_2 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228583, {	-- Truestrike Shoulders
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12927, {	-- Truestrike Shoulders
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(226748, {	-- Gauntlets of Elements
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(16672, {	-- Gauntlets of Elements
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						}),
						i(12926, {	-- Flaming Band
							["timeline"] = { REMOVED_6_0_2 },
						}),
						applyclassicphase(PHASE_SIX_CLASS_BOOKS, i(23320, {	-- Tablet of Flame Shock VI
							["timeline"] = { REMOVED_4_0_1 },
							-- #if BEFORE 4.0.1
							["spellID"] = 29228,	-- Flame Shock VI
							["classes"] = { SHAMAN },
							["rank"] = 6,
							-- #endif
						})),
					},
				}),
				i(12358, {	-- Darkstone Tablet
					-- #if BEFORE 4.0.3
					["description"] = "This is the white tablet leaning up against the wall in the Whelp Room.",
					-- #endif
					["provider"] = { "o", 175385 },	-- Darkstone Tablet
				}),
				i(12352, {	-- Doomrigger's Clasp
					-- #if BEFORE 4.0.3
					["description"] = "Can be found in a coffer in the Whelp Room behind a fallen column to the left of the ramp leading to the next room.\nNOTE: Most groups skip this room, so ask your group to clear to the column.",
					-- #endif
					["provider"] = { "o", 175382 },	-- Doomrigger's Coffer
				}),
				i(13371, {	-- Father Flame
					-- #if BEFORE 6.0.2
					["description"] = "Opening this will spawn 8 waves of drake adds in the Leeroy Jenkins room along with Solakar Flamewreath.",
					-- #endif
					["provider"] = { "o", 175245 },	-- Father Flame
					["timeline"] = { REMOVED_6_0_2 },
				}),
				n(10264, {	-- Solakar Flamewreath
					-- #if BEFORE 6.0.2
					["description"] = "This is spawned by clicking on the Father Flame and killing 8 waves of drake adds in the Leeroy Jenkins room.",
					-- #endif
					["timeline"] = { REMOVED_6_0_2 },
					["groups"] = {
						i(18657, {	-- Schematic: Hyper-Radiant Flame Reflector (RECIPE!)
							["timeline"] = { REMOVED_6_0_2 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(226741, {	-- Devout Mantle
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(16695, {	-- Devout Mantle
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						}),
						i(12603, {	-- Nightbrace Tunic
							["timeline"] = { REMOVED_6_0_2 },
						}),
						i(12609, {	-- Polychromatic Visionwrap
							["timeline"] = { REMOVED_6_0_2 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228579, {	-- Crystallized Girdle
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12606, {	-- Crystallized Girdle
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228578, {	-- Dustfeather Sash
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12589, {	-- Dustfeather Sash
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
					},
				}),
				n(10509, {	-- Jed Runewatcher
					-- #if SEASON_OF_DISCOVERY
					-- Its always up in SoD
					-- #else
					["description"] = "This is a Rare Creature and, as such, is not always present.",
					-- #endif
					["timeline"] = { REMOVED_6_0_2 },
					["groups"] = {
						i(12605, {	-- Serpentine Skuller
							["timeline"] = { REMOVED_6_0_2 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228566, {	-- Starfire Tiara
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12604, {	-- Starfire Tiara
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						i(12930, {	-- Briarwood Reed
							["timeline"] = { REMOVED_6_0_2 },
						}),
					},
				}),
				n(10899, {	-- Goraluk Anvilcrack
					["timeline"] = { REMOVED_6_0_2 },
					["groups"] = {
						i(18779, {	-- Bottom Half of Advanced Armorsmithing: Volume I
							["timeline"] = { REMOVED_4_0_1 },
						}),
						i(12848, {	-- Unforged Rune Covered Breastplate
							-- #if BEFORE 4.0.3
							["description"] = "Found on the rack behind Anvilcrack in Upper Blackrock Spire.",
							-- #endif
							["provider"] = { "o", 175970 },	-- Unforged Runic Breastplate
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12834, {	-- Plans: Arcanite Champion (RECIPE!)
							["timeline"] = { REMOVED_6_0_2 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228312, {	-- Plans: Invincible Mail (RECIPE!)
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12728, {	-- Plans: Invulnerable Mail (RECIPE!)
							["timeline"] = { REMOVED_6_0_2 },
						}),
						i(12837, {	-- Plans: Masterwork Stormhammer (RECIPE!)
							["timeline"] = { REMOVED_6_0_2 },
						}),
						i(18048, {	-- Mastersmith's Hammer
							["timeline"] = { REMOVED_6_0_2 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228672, {	-- Handcrafted Mastersmith Girdle
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(13502, {	-- Handcrafted Mastersmith Girdle
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						i(13498, {	-- Handcrafted Mastersmith Leggings
							["timeline"] = { REMOVED_6_0_2 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228602, {	-- Flame Walkers
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(18047, {	-- Flame Walkers
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
					},
				}),
				n(10339, {	-- Gyth <Rend Blackhand's Mount>
					["timeline"] = { REMOVED_6_0_2 },
					["groups"] = {
						i(13522, {	-- Recipe: Flask of Chromatic Resistance (RECIPE!)
							["timeline"] = { REMOVED_5_0_4 },
						}),
						i(12871, {	-- Chromatic Carapace
							["timeline"] = { REMOVED_6_0_2 },
						}),
						i(12953, {	-- Dragoneye Coif
							["timeline"] = { REMOVED_6_0_2 },
						}),
						applyclassicphase(PHASE_FIVE, i(22225, {	-- Dragonskin Cowl
							["timeline"] = { REMOVED_6_0_2 },
						})),
						i(12952, {	-- Gyth's Skull
							["timeline"] = { REMOVED_6_0_2 },
						}),
						i(12960, {	-- Tribal War Feathers
							["timeline"] = { REMOVED_6_0_2 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(226753, {	-- Pauldrons of Elements
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(16669, {	-- Pauldrons of Elements
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						}),
					},
				}),
				n(10429, {	-- Warchief Rend Blackhand
					["timeline"] = { REMOVED_6_0_2 },
					["groups"] = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227911, {	-- Head of Rend Blackhand
							["timeline"] = { ADDED_1_15_3 },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 60,
						})),
						-- #endif
						i(12630, {	-- Head of Rend Blackhand
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228603, {	-- Blackhand Doomsaw
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12583, {	-- Blackhand Doomsaw
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228653, {	-- Dal'Rend's Sacred Charge
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12940, {	-- Dal'Rend's Sacred Charge
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228652, {	-- Dal'Rend's Tribal Guardian
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12939, {	-- Dal'Rend's Tribal Guardian
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228757, {	-- Felstriker
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12590, {	-- Felstriker
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228604, {	-- Eye of Rend
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12587, {	-- Eye of Rend
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228605, {	-- Bonespike Shoulder
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12588, {	-- Bonespike Shoulder
							-- #if AFTER 2.0.1
							["description"] = "This item appears to have been removed with TBC Prepatch. Please @Crieve if you get it to drop.",
							["isBounty"] = true,
							-- #endif
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_2_0_1,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(226768, {	-- Spaulders of Valor
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(16733, {	-- Spaulders of Valor
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228651, {	-- Battleborn Armbraces
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12936, {	-- Battleborn Armbraces
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228676, {	-- Feralsurge Girdle
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(18104, {	-- Feralsurge Girdle
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228650, {	-- Warmaster Legguards
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12935, {	-- Warmaster Legguards
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						i(18102, {	-- Dragonrider Boots
							["timeline"] = { REMOVED_6_0_2 },
						}),
						applyclassicphase(PHASE_FIVE, i(22247, {	-- Faith Healer's Boots
							["timeline"] = { REMOVED_6_0_2 },
						})),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228675, {	-- Band of Rumination
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(18103, {	-- Band of Rumination
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
					},
				}),
				n(10430, {	-- The Beast
					["timeline"] = { REMOVED_6_0_2 },
					["groups"] = {
						applyclassicphase(PHASE_SIX_CLASS_BOOKS, i(24101, {	-- Book of Ferocious Bite V
							["timeline"] = { REMOVED_4_0_1 },
							-- #if BEFORE 4.0.1
							["spellID"] = 31018,	-- Ferocious Bite V
							["classes"] = { DRUID },
							["rank"] = 5,
							-- #endif
						})),
						i(12709, {	-- Pip's Skinner
							["timeline"] = { REMOVED_6_0_2 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228666, {	-- Seeping Willow
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12969, {	-- Seeping Willow
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228663, {	-- Bloodmoon Cloak
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12967, {	-- Bloodmoon Cloak
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228664, {	-- Frostweaver Cape
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12968, {	-- Frostweaver Cape
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(226735, {	-- Lightforge Spaulders
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(16729, {	-- Lightforge Spaulders
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228662, {	-- Blackmist Armguards
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12966, {	-- Blackmist Armguards
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228660, {	-- Blademaster Leggings
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12963, {	-- Blademaster Leggings
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						i(12965, {	-- Spiritshroud Leggings
							["timeline"] = { REMOVED_6_0_2 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228661, {	-- Tristam Legguards
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12964, {	-- Tristam Legguards
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228597, {	-- Ironweave Boots
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						applyclassicphase(PHASE_FIVE, i(22311, {	-- Ironweave Boots
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						})),
						-- #if BEFORE 6.0.2
						applyclassicphase(PHASE_THREE_DMF_CARDS, i(19227)),	-- Ace of Beasts
						-- #endif
						prof(SKINNING, {
							-- #if BEFORE TBC
							["description"] = "You must have 315 Skinning skill. This can only be accomplished with the Zulian Slicer or Pip's Skinner.",
							["cost"] = {
								{ "i", 12709, 1 },	-- Pip's Skinner
								{ "i", 19901, 1 },	-- Zulian Slicer
							},
							-- #endif
							["groups"] = {
								i(12731, {	-- Pristine Hide of the Beast
									["timeline"] = { REMOVED_6_0_2 },
								}),
							},
						}),
					},
				}),
				applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n_conditional(16042, {	-- Lord Valthalak
					-- #if BEFORE 6.0.2
					["description"] = "This boss can be summoned using the Brazier of Beckoning or the Brazier of Invocation, which can summon any of the spirits.",
					["cost"] = {
						{ "i", 22056, 1 },	-- Brazier of Beckoning [Lord Valthalak]
						{ "i", 22057, 1 },	-- Brazier of Invocation
					},
					-- #endif
					-- #if AFTER 4.0.3
					-- This init function unmarks the removed from game flag for folks with the brazier.
					["OnInit"] = FUNCTION_TEMPLATES.OnInit.BrazierAccess,
					-- #endif
					["timeline"] = { REMOVED_6_0_2 },
					["groups"] = {
						i(22336),	-- Draconian Aegis of the Legion
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228682, {	-- Lord Valthalak's Staff of Command
							["description"] = "This version of the staff was created and added to the DB, but doesn't seem to drop. @Crieve if you get it to drop.",
							["timeline"] = { CREATED_1_15_3 },
						})),
						-- #endif
						i(22335, {	-- Lord Valthalak's Staff of Command
							-- ["timeline"] = { REMOVED_6_0_2 }, -- so is this available with summoning item?? keep time line if NOT available.
							-- CRIEVE NOTE: They reitemized the staff, but didn't put it into the game.
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228681, {	-- Ironweave Cowl
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(22302, {	-- Ironweave Cowl
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3, },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228684, {	-- Pendant of Celerity
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(22340, {	-- Pendant of Celerity
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3, },
							-- #endif
						}),
						i(22337),	-- Shroud of Domination
						i(22343),	-- Handguards of Savagery
						i(22342),	-- Leggings of Torment
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228683, {	-- Rune Band of Wizardry
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(22339, {	-- Rune Band of Wizardry
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3, },
							-- #endif
						}),
					},
				})),
				n(10363, {	-- General Drakkisath
					["timeline"] = { REMOVED_6_0_2 },
					["groups"] = {
						ach(1307, {	-- Upper Blackrock Spire
							["timeline"] = { REMOVED_6_0_2 },
						}),
						i(16663, {	-- Blood of the Black Dragon Champion
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15730, {	-- Pattern: Red Dragonscale Breastplate (RECIPE!)
							["timeline"] = { REMOVED_6_0_2 },
						}),
						i(13519, {	-- Recipe: Flask of the Titans (RECIPE!)
							["timeline"] = { REMOVED_6_0_2 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228606, {	-- Blackblade of Shahram
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(12592, {	-- Blackblade of Shahram
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						i(12602, {	-- Draconian Deflector
							["timeline"] = { REMOVED_6_0_2 },
						}),
						applyclassicphase(PHASE_FIVE, i(22253, {	-- Tome of the Lost
							["timeline"] = { REMOVED_6_0_2 },
						})),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228677, {	-- Spellweaver's Turban
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						applyclassicphase(PHASE_FIVE, i(22267, {	-- Spellweaver's Turban
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						})),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228669, {	-- Tooth of Gnarr
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(13141, {	-- Tooth of Gnarr
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(226723, {	-- Beaststalker's Tunic
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(16674, {	-- Beaststalker's Tunic
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(226770, {	-- Breastplate of Valor
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(16730, {	-- Breastplate of Valor
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(226745, {	-- Devout Robe
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(16690, {	-- Devout Robe
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(226757, {	-- Dreadmist Robe
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(16700, {	-- Dreadmist Robe
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(226734, {	-- Lightforge Breastplate
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(16726, {	-- Lightforge Breastplate
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(226729, {	-- Magister's Robes
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(16688, {	-- Magister's Robes
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(226700, {	-- Shadowcraft Tunic
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(16721, {	-- Shadowcraft Tunic
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(226749, {	-- Vest of Elements
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(16666, {	-- Vest of Elements
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(226715, {	-- Wildheart Vest
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(16706, {	-- Wildheart Vest
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						}),
						applyclassicphase(PHASE_FIVE, i(22269, {	-- Shadow Prowler's Cloak
							["timeline"] = { REMOVED_6_0_2 },
						})),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228670, {	-- Brigam Girdle
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(13142, {	-- Brigam Girdle
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228667, {	-- Painweaver Band
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(13098, {	-- Painweaver Band
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228678, {	-- Draconic Infused Emblem
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						applyclassicphase(PHASE_FIVE, i(22268, {	-- Draconic Infused Emblem
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_6_0_2,
								-- #endif
							},
						})),
					},
				}),
			},
		}),
	},
});

-- #if BEFORE 6.0.1
-- With how we sort instances, this is actually "Blackrock Spire" before 6.0.1 and for Classic this puts it in the right spot.
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	BLACKROCK_SPIRE_INSTANCE,
}));
-- #endif

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(229, {
		q(36866),	-- Lower Blackrock Spires Reward Quest - Normal completion
		q(36867),	-- Lower Blackrock Spires Bonus Reward Quest — kill Urok Doomhowl
	}),
})));
