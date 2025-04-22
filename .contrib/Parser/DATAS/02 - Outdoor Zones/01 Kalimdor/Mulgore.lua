---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KALIMDOR, {
	m(MULGORE, {
		["lore"] = "A land of windswept mesas and grassy plains, Mulgore is the tauren's ancestral homeland. Centaur often send raiding parties into Mulgore, and the tauren, now with the help of their Horde allies, beat them back. Tauren are naturally a nomadic people, and their tent cities are scattered across the landscape and change with the seasons and the weather.\n\nNow that they are members of the Horde, the tauren have constructed several permanent settlements, including fortified Dalsh-Beran and their capital of Thunder Bluff.",
		["maps"] = {
			8,	-- Palemane Rock
			9,	-- The Venture Co. Mine
		},
		["icon"] = 236809,
		["groups"] = {
			m(CAMP_NARACHE, {
				["lore"] = "Camp Narache is the starting area and town for the Tauren, which is located in southern Mulgore at the northern edge of the Red Cloud Mesa. Tauren Shamans will find their first totem quest here for the Earth Totem. Camp Narache is the main village of the Hawkwind Tribe, and its Chief is a member of that Tribe.",
				["icon"] = 236454,
				-- #if BEFORE MOP
				["zone-text-areas"] = {
					221,	-- Camp Narache
				},
				-- #endif
				["groups"] = {
					battlepets({
						["sym"] = {{"select","speciesID",
							385,	-- Mouse (PET!)
							386,	-- Prairie Dog (PET!)
							378,	-- Rabbit (PET!)
						}},
					}),
					n(QUESTS, {
						q(752, {	-- A Humble Task (1/2)
							["qg"] = 2981,	-- Chief Hawkwind
							["coord"] = { 44.2, 76, MULGORE },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(753, {	-- A Humble Task (2/2)
							["qg"] = 2991,	-- Greatmother Hawkwind
							["sourceQuest"] = 752,	-- A Humble Task (1/2)
							["coord"] = { 50.0, 81.0, MULGORE },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/1 Water Pitcher
									["providers"] = {
										{ "i", 4755 },	-- Water Pitcher
										{ "o", 2907 },	-- Water Pitcher
									},
									["coord"] = { 50.2, 81.3, MULGORE },
								}),
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77649, {	-- A Hunter's Strength
							["qg"] = 3061,	-- Lanka Farshot <Hunter Trainer>
							["coord"] = { 44.2, 75.8, MULGORE },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { HUNTER },
							["races"] = { TAUREN },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Chimera Shot
									["provider"] = { "i", 206168 },	-- Rune of the Chimera
									["coord"] = { 62.6, 79.8, MULGORE },
									["cr"] = 2954,	-- Bristleback Battleboar
								}),
								recipe(410121),	-- Engrave Gloves - Chimera Shot
								i(2125),	-- Cracked Leather Gloves
							},
						})),
						-- #endif
						q(24857, {	-- Attack on Camp Narache
							["providers"] = {
								{ "o", 3076 },	-- Dirt-stained Map
								{ "i", 4850 },	-- Bristleback Attack Plans
							},
							["coord"] = { 63.3, 82.6, MULGORE },
							["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(4911, {	-- Thick Bark Buckler
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(781, {	-- Attack on Camp Narache
							["providers"] = {
								{ "i", 4851 },	-- Dirt-stained Map
								{ "o", 3076 },	-- Dirt-stained Map
								{ "i", 4850 },	-- Bristleback Attack Plans
							},
							["coord"] = { 63.3, 82.6, MULGORE },
							["timeline"] = { REMOVED_3_3_0 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(4911, {	-- Thick Bark Buckler
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(3376, {	-- Break Sharptusk!
							["qg"] = 3209,	-- Brave Windfeather
							["coord"] = { 44.8, 76.6, MULGORE },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["lvl"] = 3,
							["groups"] = {
								objective(1, {	-- 0/1 Chief Sharptusk Thornmantle's Head
									["provider"] = { "i", 10459 },	-- Chief Sharptusk Thornmantle's Head
									["coord"] = { 64.6, 77.8, MULGORE },
									["cr"] = 8554,	-- Chief Sharptusk Thornmantle
								}),
								i(10635, {	-- Painted Chain Leggings
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(10636, {	-- Nomadic Gloves
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(1519, {	-- Call of Earth (1/3)
							["qg"] = 5888,	-- Seer Ravenfeather
							["altQuests"] = { 1516 },	-- Call of Earth (1/3 Durotar)
							["coord"] = { 44.8, 76.2, MULGORE },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["classes"] = { SHAMAN },
							["lvl"] = 4,
							["groups"] = {
								objective(1, {	-- 0/2 Ritual Salve
									["provider"] = { "i", 6634 },	-- Ritual Salve
									["cr"] = 2953,	-- Bristleback Shaman
								}),
							},
						}),
						q(1520, {	-- Call of Earth (2/3)
							["providers"] = {
								{ "n", 5888 },	-- Seer Ravenfeather
								{ "i", 6635 },	-- Earth Sapta
							},
							["sourceQuest"] = 1519,	-- Call of Earth (1/3)
							["altQuests"] = { 1517 },	-- Call of Earth (2/3 Durotar)
							["coord"] = { 44.8, 76.2, MULGORE },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["classes"] = { SHAMAN },
							["lvl"] = 4,
						}),
						q(1521, {	-- Call of Earth (3/3)
							["providers"] = {
								{ "n", 5891 },	-- Minor Manifestation of Earth
								{ "i", 6656 },	-- Rough Quartz
							},
							["sourceQuest"] = 1520,	-- Call of Earth (2/3)
							["altQuests"] = { 1518 },	-- Call of Earth (3/3 Durotar)
							["coord"] = { 53.8, 80.4, MULGORE },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["classes"] = { SHAMAN },
							["lvl"] = 4,
							-- #if BEFORE 4.0.3
							["groups"] = {
								recipe(8071),	-- Stoneskin Totem
								i(5175, {	-- Earth Totem
									["description"] = "You must keep this in your bags forever.",
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
							-- #endif
						}),
						q(31165, {	-- Calligraphed Note
							["qg"] = 44927,	-- Rohaku Stonehoof
							["coord"] = { 34.0, 54.0, CAMP_NARACHE },
							["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
							["races"] = { TAUREN },
							["classes"] = { MONK },
						}),
						q(27015, {	-- Consecrated Note
							["qg"] = 44927,	-- Rohaku Stonehoof
							["coord"] = { 34.0, 54.0, CAMP_NARACHE },
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { TAUREN },
							["classes"] = { PALADIN },
						}),
						q(1462, {	-- Earth Sapta
							["qg"] = 5888,	-- Seer Ravenfeather
							["sourceQuest"] = 1519,	-- Call of Earth (1/3)
							["altQuests"] = { 1463 },	-- Earth Sapta (Durotar)
							["coord"] = { 44.8, 76.2, MULGORE },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["classes"] = { SHAMAN },
							["repeatable"] = true,
							["lvl"] = 4,
							-- #if BEFORE 4.0.3
							["groups"] = {
								i(6635),	-- Earth Sapta
							},
							-- #endif
						}),
						q(3092, {	-- Etched Note
							["providers"] = {
								{ "n", 2980 },	-- Grull Hawkwind
								{ "i", 9565 },	-- Etched Note
							},
							["sourceQuest"] = 747,	-- The Hunt Begins
							["coord"] = { 44.9, 77.1, MULGORE },
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { TAUREN },
							["classes"] = { HUNTER },
						}),
						q(14461, {	-- Feed of Evil
							["qg"] = 36694,	-- Adana Thunderhorn
							["sourceQuests"] = {
								14456,	-- Rite of Courage
								14455,	-- Stop the Thorncallers
							},
							["coord"] = { 31.0, 50.6, CAMP_NARACHE },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = { i(49539) },	-- Adana's Torch (QI!)
						}),
						q(14458, {	-- Go to Adana
							["qg"] = 2980,	-- Grull Hawkwind
							["sourceQuest"] = 24852,	-- Our Tribe, Imprisoned
							["coord"] = { 39.4, 37.0, CAMP_NARACHE },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
						}),
						q(27014, {	-- Hallowed Note
							["qg"] = 44927,	-- Rohaku Stonehoof
							["coord"] = { 34.0, 54.0, CAMP_NARACHE },
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { TAUREN },
							["classes"] = { PRIEST },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77652, {	-- Icons of Power
							["qg"] = 3062,	-- Meela Dawnstrider <Shaman Trainer>
							["coord"] = { 45, 76, MULGORE },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { SHAMAN },
							["races"] = { TAUREN },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Chest - Overload
									["provider"] = { "i", 206381 },	-- Dyadic Icon
								}),
								recipe(410094),	-- Engrave Chest - Overload
								i(2127),	-- Cracked Leather Vest
							},
						})),
						applyclassicphase(SOD_PHASE_ONE, q(77651, {	-- Into the Brambles
							["qg"] = 3059,	-- Harutt Thunderhorn <Warrior Trainer>
							["coord"] = { 44, 76, MULGORE },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { WARRIOR },
							["races"] = { TAUREN },
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
						q(24861, {	-- Last Rites, First Rites
							["qg"] = 2981,	-- Chief Hawkwind
							["sourceQuest"] = 14460,	-- Rite of Honor
							["coord"] = { 27.6, 28.4, CAMP_NARACHE },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = { i(50465) },	-- Water Pitcher (QI!)
						}),
						q(24852, {	-- Our Tribe, Imprisoned
							["qg"] = 2980,	-- Grull Hawkwind
							["sourceQuest"] = 14452,	-- Rite of Strength
							["coord"] = { 39.4, 37.0, CAMP_NARACHE },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(57198, {	-- Red Cloud Gloves
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(131867, {	-- Red Cloud Handwraps
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(57215, {	-- Quill Impaled Boots
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77648, {	-- Relics of the Tauren
							["qg"] = 3060,	-- Gart Mistrunner <Druid Trainer>
							["coord"] = { 45.0, 76.0, MULGORE },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { DRUID },
							["races"] = { TAUREN },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Chest - Fury of Stormrage
									["provider"] = { "i", 208414 },	-- Lunar Idol
								}),
								recipe(410061),	-- Engrave Chest - Fury of Stormrage
								i(2127),	-- Cracked Leather Vest
							},
						})),
						-- #endif
						q(14456, {	-- Rite of Courage
							["qg"] = 36694,	-- Adana Thunderhorn
							["sourceQuest"] = 14458,	-- Go To Adana
							["coord"] = { 31.0, 50.6, CAMP_NARACHE },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(49535),	-- Stolen Rifle (QI!)
								--
								i(57201, {	-- Robes of the Sun
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(57218, {	-- Rabbit Chaser's Leggings
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(131871, {	-- Rabbit Chaser's Greaves
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(57224, {	-- Longstalker's Rifle
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(14460, {	-- Rite of Honor
							["qg"] = 36694,	-- Adana Thunderhorn
							["sourceQuests"] = {
								14461,	-- Feed of Evil
								14459,	-- The Battleboars
							},
							["coord"] = { 31.0, 50.6, CAMP_NARACHE },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(50473),	-- Mane of Thornmantle (QI!)
								--
								i(57203, {	-- Slippers of High Honor
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(57220, {	-- Sunwalker's Belt
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(131872, {	-- Sunwalker's Waistcord
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(57792, {	-- Bag of Thorns
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(14452, {	-- Rite of Strength
							["qg"] = 2980,	-- Grull Hawkwind
							["sourceQuest"] = 14449,	-- The First Step
							["coord"] = { 39.4, 37.0, CAMP_NARACHE },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(57199, {	-- Sun Bleached Bracer
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(131868, {	-- Sun Bleached Armbands
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(57216, {	-- Mud Splattering Hammer
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(57231, {	-- Red Ceremonial Dagger
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(757, {	-- Rite of Strength
							["qg"] = 2982,	-- Seer Graytongue
							["sourceQuest"] = 755,	-- Rites of the Earthmother (1/3)
							["coord"] = { 42.6, 92, MULGORE },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/12 Bristleback Belt
									["provider"] = { "i", 4770 },	-- Bristleback Belt
									["crs"] = {
										2952,	-- Bristleback Quilboar
										2953,	-- Bristleback Shaman
									},
								}),
								i(12448, {	-- Light Hunting Rifle
									["timeline"] = { REMOVED_1_7_0 },
								}),
								i(1382, {	-- Rock Mace
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(1383, {	-- Stone Tomahawk
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(2137, {	-- Whittling Knife
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(5776, {	-- Elder's Cane
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(5777, {	-- Brave's Axe
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(24215, {	-- Rite of the Winds
							["qg"] = 36803,	-- Rite of the Winds
							["sourceQuest"] = 23733,	-- Rites of the Earthmother
							["coord"] = { 15.4, 30.4, CAMP_NARACHE },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = { i(49652) },	-- Water of Vision (QI!)
						}),
						q(23733, {	-- Rites of the Earthmother
							["qg"] = 2981,	-- Chief Hawkwind
							["sourceQuest"] = 24861,	-- Last Rites, First Rites
							["coord"] = { 27.6, 28.4, CAMP_NARACHE },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
						}),
						q(755, {	-- Rites of the Earthmother (1/3)
							["qg"] = 2981,	-- Chief Hawkwind
							["sourceQuest"] = 753,	-- A Humble Task (2/2)
							["coord"] = { 44.2, 76.1, MULGORE },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
						}),
						q(763, {	-- Rites of the Earthmother (2/3)
							["providers"] = {
								{ "n", 2981 },	-- Chief Hawkwind
								{ "i", 4783 },	-- Totem of Hawkwind
							},
							["sourceQuest"] = 757,	-- Rite of Strength
							["coord"] = { 44.2, 76.1, MULGORE },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
						}),
						q(3093, {	-- Rune-Inscribed Note
							["providers"] = {
								{ "n", 2980 },	-- Grull Hawkwind
								{ "i", 9552 },	-- Rune-Inscribed Note
							},
							["sourceQuest"] = 747,	-- The Hunt Begins
							["coord"] = { 44.9, 77.1, MULGORE },
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { TAUREN },
							["classes"] = { SHAMAN },
						}),
						q(3091, {	-- Simple Note
							["providers"] = {
								{ "n", 2980 },	-- Grull Hawkwind
								{ "i", 9547 },	-- Simple Note
							},
							["sourceQuest"] = 747,	-- The Hunt Begins
							["coord"] = { 44.9, 77.1, MULGORE },
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { TAUREN },
							["classes"] = { WARRIOR },
						}),
						q(14455, {	-- Stop the Thorncallers
							["qg"] = 36694,	-- Adana Thunderhorn
							["sourceQuest"] = 14458,	-- Go To Adana
							["coord"] = { 31.0, 50.6, CAMP_NARACHE },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(57232, {	-- Thorn-Proof Wristguard
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(57200, {	-- Thorncaller Trousers
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(57217, {	-- Thorned Cinch
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(131870, {	-- Thorned Links
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
						q(14459, {	-- The Battleboars
							["qg"] = 36694,	-- Adana Thunderhorn
							["sourceQuests"] = {
								14456,	-- Rite of Courage
								14455,	-- Stop the Thorncallers
							},
							["coord"] = { 31.0, 50.6, CAMP_NARACHE },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(57202, {	-- Scarred Battleboar Chest
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(131869, {	-- Scarred Battleboar Breastplate
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(57219, {	-- Braided Boarskin Belt
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(780, {	-- The Battleboars
							["qg"] = 2980,	-- Grull Hawkwind
							["sourceQuest"] = 750,	-- The Hunt Continues
							["coord"] = { 44.9, 77.1, MULGORE },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Battleboar Snout
									["provider"] = { "i", 4848 },	-- Battleboar Snout
									["crs"] = {
										2966,	-- Battleboar
										2954,	-- Bristleback Battleboar
									},
								}),
								objective(2, {	-- 0/8 Battleboar Flank
									["provider"] = { "i", 4849 },	-- Battleboar Flank
									["crs"] = {
										2966,	-- Battleboar
										2954,	-- Bristleback Battleboar
									},
								}),
								i(6059, {	-- Nomadic Vest
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(14449, {	-- The First Step
							["qg"] = 2981,	-- Chief Hawkwind
							["coord"] = { 27.7, 28.5, CAMP_NARACHE },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
						}),
						q(747, {	-- The Hunt Begins
							["qg"] = 2980,	-- Grull Hawkwind
							["coord"] = { 44.9, 77.1, MULGORE },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/7 Plainstrider Meat
									["provider"] = { "i", 4739 },	-- Plainstrider Meat
									["cr"] = 2955,	-- Plainstrider
								}),
								objective(2, {	-- 0/7 Plainstrider Feather
									["provider"] = { "i", 4740 },	-- Plainstrider Feather
									["cr"] = 2955,	-- Plainstrider
								}),
								i(4954, {	-- Nomadic Belt
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(4910, {	-- Painted Chain Gloves
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(750, {	-- The Hunt Continues
							["qg"] = 2980,	-- Grull Hawkwind
							["sourceQuest"] = 747,	-- The Hunt Begins
							["coord"] = { 44.9, 77.1, MULGORE },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Mountain Cougar Pelt
									["provider"] = { "i", 4742 },	-- Mountain Cougar Pelt
									["cr"] = 2961,	-- Mountain Cougar
								}),
								i(4908, {	-- Nomadic Bracers
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(4913, {	-- Painted Chain Belt
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(31166, {	-- Tiger Palm
							["qg"] = 63327,	-- Shoyu
							["coord"] = { 27.8, 28.6, CAMP_NARACHE },
							["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
							["races"] = { TAUREN },
							["classes"] = { MONK },
						}),
						q(3094, {	-- Verdant Note
							["providers"] = {
								{ "n", 2980 },	-- Grull Hawkwind
								{ "i", 9581 },	-- Verdant Note
							},
							["sourceQuest"] = 747,	-- The Hunt Begins
							["coord"] = { 44.9, 77.1, MULGORE },
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { TAUREN },
							["classes"] = { DRUID },
						}),
					}),
					-- #if SEASON_OF_DISCOVERY
					n(TREASURES, {
						applyclassicphase(SOD_PHASE_ONE, o(403102, {	-- Bristleback Loot Cache
							["coord"] = { 61.6, 76.0, MULGORE },
							["timeline"] = { REMOVED_2_0_1 },
							["groups"] = {
								i(208414, {	-- Lunar Idol
									["classes"] = { DRUID },
								}),
								i(204806, {	-- Rune of Victory Rush
									["classes"] = { WARRIOR },
								}),
							},
						})),
					}),
					-- #endif
					n(ZONE_DROPS, {
						i(1388, {	-- Crooked Staff
							["timeline"] = { REMOVED_4_0_3 },
							["cr"] = 2953,	-- Bristleback Shaman
						}),
						i(1384, {	-- Dull Blade
							-- #if AFTER CATA
							["cr"] = 36708,	-- Bristleback Gun Thief
							-- #else
							["cr"] = 2952,	-- Bristleback Quilboar
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(206381, {	-- Dyadic Icon
							["coord"] = { 63.8, 81.0, MULGORE },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { SHAMAN },
							["cr"] = 2953,	-- Bristleback Shaman
						})),
						-- #endif
						i(4951, {	-- Squealer's Belt
							["timeline"] = { REMOVED_4_0_3 },
							-- #if AFTER 10.1.7
							["isBounty"] = true,
							-- #endif
							["cr"] = 3229,	-- "Squealer" Thornmantle
						}),
					}),
				},
			}),
			n(ACHIEVEMENTS, {
				explorationAch(736),	-- Explore Mulgore
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					385,	-- Mouse (PET!)
					386,	-- Prarie Dog (PET!)
					378,	-- Rabbit (PET!)
				}},
				["groups"] = {
					pet(477),	-- Gazelle Fawn (PET!)
				},
			}),
			explorationHeader({
				exploration(404),	-- Bael'dun Digsite
				exploration(222),	-- Bloodhoof Village
				exploration(221),	-- Camp Narache
				-- #if AFTER CATA
				exploration(4835),	-- Camp Sungraze
				-- #endif
				exploration(818),	-- Palemane Rock
				exploration(224),	-- Ravaged Caravan
				exploration(220),	-- Red Cloud Mesa
				exploration(225),	-- Red Rocks
				-- #if AFTER CATA
				exploration(4836),	-- Stonetalon Pass
				-- #endif
				exploration(820),	-- The Golden Plains
				visit_exploration(821,{coord={61.9,64.1,MULGORE}}),	-- The Rolling Plains
				exploration(360),	-- The Venture Co. Mine
				exploration(1638),	-- Thunder Bluff
				exploration(397),	-- Thunderhorn Water Well
				exploration(398),	-- Wildmane Water Well
				exploration(819),	-- Windfury Ridge
				exploration(396),	-- Winterhoof Water Well
			}),
			-- #if AFTER CATA
			n(FLIGHT_PATHS, {
				fp(402, {	-- Bloodhoof Village, Mulgore
					["cr"] = 40809,	-- Tak <Wind Rider Master>
					["coord"] = { 47.4, 58.6, MULGORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
			}),
			-- #endif
			n(QUESTS, {
				q(833, {	-- A Sacred Burial
					["qg"] = 3233,	-- Lorekeeper Raintotem
					-- #if AFTER CATA
					["coord"] = { 49.4, 17.2, MULGORE },
					-- #else
					["coord"] = { 59.8, 25.6, MULGORE },
					-- #endif
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Bristleback Interloper slain
							["provider"] = { "n", 3232 },	-- Bristleback Interloper
						}),
						i(57237, {	-- Cairne's First Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57228, {	-- Cord of Tragic Memory
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131217, {	-- Waistband of Tragic Memory
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57212, {	-- Slippers of Mourning
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1656, {	-- A Task Unfinished
					["providers"] = {
						{ "n", 6775 },	-- Antur Fallow
						{ "i", 7626 },	-- Bundle of Furs
					},
					["coord"] = { 38.6, 81.6, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(743, {	-- Dangers of the Windfury
					["qg"] = 2985,	-- Ruul Eagletalon
					-- #if AFTER CATA
					["coord"] = { 47.4, 61.2, MULGORE },
					-- #else
					["coord"] = { 47.4, 62.0, MULGORE },
					-- #endif
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Windfury Talon
							["provider"] = { "i", 4751 },	-- Windfury Talon
							["crs"] = {
								2962,	-- Windfury Harpy
								2963,	-- Windfury Wind Witch
							},
						}),
					},
				}),
				q(746, {	-- Dwarven Digging
					["qg"] = 2993,	-- Baine Bloodhoof
					["coord"] = { 47.5, 60.2, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
					["groups"] = {
						objective(1, {	-- 0/6 Broken Tools
							["provider"] = { "i", 4703 },	-- Broken Tools
							["cost"] = {{ "i", 4702, 1 }},	-- Prospector's Pick
							["coord"] = { 34, 46, MULGORE },
							["crs"] = {
								2990,	-- Bael'dun Appraiser
								2989,	-- Bael'dun Digger
							},
						}),
						i(131213, {	-- Chain Kodo-Rider's Pants
							["timeline"] = { ADDED_7_0_3, REMOVED_7_0_3 },
						}),
						i(4969, {	-- Fortified Bindings
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4970, {	-- Rough-hewn Kodo Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
				q(5655, {	-- Hex of Weakness [Mulgore]
					["qg"] = 11407,	-- Var'jun
					["coord"] = { 47.0, 58.8, MULGORE },
					["altQuests"] = {
						5652,	-- Hex of Weakness [Orgrimmar]
						5654,	-- Hex of Weakness [Durotar]
						5656,	-- Hex of Weakness [Thunder Bluff]
						5657,	-- Hex of Weakness [Undercity]
					},
					["timeline"] = { REMOVED_2_4_1 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 9035,	-- Hex of Weakness (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(24550, {	-- Journey into Thunder Bluff
					["qg"] = 37024,	-- Una Wildmane
					["sourceQuest"] = 24524,	-- Wildmane Cleansing
					["coord"] = { 49.4, 17.4, MULGORE },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { THUNDER_BLUFF },
					["races"] = { TAUREN },
				}),
				q(14439, {	-- Journey into Thunder Bluff
					["qg"] = 2994,	-- Ancestral Spirit
					["sourceQuest"] = 773,	-- Rite of Wisdom
					["coord"] = { 61.4, 21, MULGORE },
					["timeline"] = { ADDED_4_0_1, REMOVED_4_0_3 },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
				}),
				q(775, {	-- Journey into Thunder Bluff
					["qg"] = 2994,	-- Ancestral Spirit
					["sourceQuest"] = 773,	-- Rite of Wisdom
					["coord"] = { 61.4, 21, MULGORE },
					["timeline"] = { REMOVED_4_0_1 },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
				}),
				q(11129, {	-- Kyle's Gone Missing!
					["qg"] = 23618,	-- Ahab Wheathoof <The Old Rancher>
					-- #if AFTER CATA
					["coord"] = { 48.3, 53.1, MULGORE },
					-- #else
					["coord"] = { 48.2, 53.4, MULGORE },
					-- #endif
					["timeline"] = { ADDED_2_1_2 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Kyle Fed
							["providers"] = {
								{ "i", 33009 },	-- Tender Strider Meat
								{ "n", 23616 },	-- Kyle the Frenzied
							},
							["coord"] = { 48.6, 62.2, MULGORE },
							["crs"] = {
								2956,	-- Adult Plainstrider
								2957,	-- Elder Plainstrider
								3068,	-- Mazzranache
							},
						}),
					},
				}),
				q(32670, {	-- Learn to Ride
					["description"] = "This quest is available to Tauren upon reaching level 10.",
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["timeline"] = { ADDED_5_2_0, REMOVED_10_1_5 },
					["races"] = { TAUREN },
					["DisablePartySync"] = true,
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(14087, {	-- Learn to Ride in Mulgore
					["provider"] = { "i", 46884 },	-- Riding Training Pamphlet
					["description"] = "The pamphlet that starts this quest is sent to Tauren in their Mailbox upon reaching the specified level.",
					["timeline"] = { ADDED_3_3_0, REMOVED_4_0_1 },
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["races"] = { TAUREN },
					["lvl"] = lvlsquish(20, 20, 10),
				}),
				q(26188, {	-- Mazzranache
					["qg"] = 3055,	-- Maur Raincaller
					["coord"] = { 47.1, 56.6, MULGORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Flatland Cougar Femur
							["provider"] = { "i", 4805 },	-- Flatland Cougar Femur
							["cr"] = 3035,	-- Flatland Cougar
						}),
						i(57209, {	-- Belt of the Prairie Wolf
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(66616, {	-- Cougar Pelt Wristwraps
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131494, {	-- Prairie Wolf Bracers
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57234, {	-- Swoopskin Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(766, {	-- Mazzranache
					["qg"] = 3055,	-- Maur Raincaller
					["coord"] = { 47, 57, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- 0/1 Prairie Wolf Heart
							["provider"] = { "i", 4804 },	-- Prairie Wolf Heart
							["crs"] = {
								2959,	-- Prairie Stalker
								2958,	-- Prairie Wolf
								2960,	-- Prairie Wolf Alpha
							},
						}),
						objective(2, {	-- 0/1 Flatland Cougar Femur
							["provider"] = { "i", 4805 },	-- Flatland Cougar Femur
							["cr"] = 3035,	-- Flatland Cougar
						}),
						objective(3, {	-- 0/1 Plainstrider Scale
							["provider"] = { "i", 4806 },	-- Plainstrider Scale
							["crs"] = {
								2956,	-- Adult Plainstrider
								2957,	-- Elder Plainstrider
								3068,	-- Mazzranache
							},
						}),
						objective(4, {	-- 0/1 Swoop Gizzard
							["provider"] = { "i", 4807 },	-- Swoop Gizzard
							["crs"] = {
								2970,	-- Swoop
								2971,	-- Taloned Swoop
								2969,	-- Wiry Swoop
							},
						}),
						i(4972, {	-- Cliff Runner Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4973, {	-- Plains Hunter Wristguards
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24459, {	-- Morin Cloudstalker
					["qg"] = 36644,	-- Ahmo Thunderhorn
					["coord"] = { 47.6, 59.5, MULGORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(7663, {	-- New Kodo - Green
					["qg"] = 3685,	-- Harb Clawhoof
					-- #if AFTER CATA
					["coord"] = { 47.6, 58.0, MULGORE },
					-- #else
					["coord"] = { 47.6, 58.4, MULGORE },
					-- #endif
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["timeline"] = { REMOVED_1_4_0 },
					["cost"] = { { "i", 15292, 1 } },	-- Green Kodo (MOUNT!)
					["sym"] = { { "select", "itemID", 18794, 18795, 18793 } },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
				}),
				q(7662, {	-- New Kodo - Teal
					["qg"] = 3685,	-- Harb Clawhoof
					-- #if AFTER CATA
					["coord"] = { 47.6, 58.0, MULGORE },
					-- #else
					["coord"] = { 47.6, 58.4, MULGORE },
					-- #endif
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["timeline"] = { REMOVED_1_4_0 },
					["cost"] = { { "i", 15293, 1 } },	-- Teal Kodo (MOUNT!)
					["sym"] = { { "select", "itemID", 18794, 18795, 18793 } },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
				}),
				q(20440, {	-- Poison Water
					["qg"] = 2948,	-- Mull Thunderhorn
					["coord"] = { 48.6, 59.5, MULGORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { TAUREN },
					["groups"] = {
						objective(1, {	-- 0/6 Prairie Wolf Paw
							["provider"] = { "i", 4758 },	-- Prairie Wolf Paw
							["crs"] = {
								2958,	-- Prairie Wolf
								2959,	-- Prairie Stalker
								2960,	-- Prairie Wolf Alpha
							},
						}),
						objective(2, {	-- 0/4 Plainstrider Talon
							["provider"] = { "i", 4759 },	-- Plainstrider Talon
							["crs"] = {
								2956,	-- Adult Plainstrider
								2957,	-- Elder Plainstrider
								3068,	-- Mazzranache
							},
						}),
					},
				}),
				q(748, {	-- Poison Water
					["qg"] = 2948,	-- Mull Thunderhorn
					["coord"] = { 48.5, 60.4, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { TAUREN },
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- 0/6 Prairie Wolf Paw
							["provider"] = { "i", 4758 },	-- Prairie Wolf Paw
							["crs"] = {
								2959,	-- Prairie Stalker
								2958,	-- Prairie Wolf
								2960,	-- Prairie Wolf Alpha
							},
						}),
						objective(2, {	-- 0/4 Plainstrider Talon
							["provider"] = { "i", 4759 },	-- Plainstrider Talon
							["crs"] = {
								2956,	-- Adult Plainstrider
								2957,	-- Elder Plainstrider
								3068,	-- Mazzranache
							},
						}),
					},
				}),
				q(744, {	-- Preparation for Ceremony
					["qg"] = 2987,	-- Eyahn Eagletalon
					-- #if AFTER CATA
					["coord"] = { 49.6, 17.4, MULGORE },
					-- #else
					["coord"] = { 37.6, 59.8, THUNDER_BLUFF },
					-- #endif
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						objective(1, {	-- 0/6 Azure Feather
							["provider"] = { "i", 4752 },	-- Azure Feather
							["cr"] = 2964,	-- Windfury Sorceress
						}),
						objective(2, {	-- 0/6 Bronze Feather
							["provider"] = { "i", 4753 },	-- Bronze Feather
							["cr"] = 2965,	-- Windfury Matriarch
						}),
						i(57211, {	-- Leggings of Brown Grass
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57227, {	-- Hewn Kodo Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131212, {	-- Plainstrider Handguards
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57236, {	-- Plainstrider Leg Armor
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(4968, {	-- Bound Harness
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4967, {	-- Tribal Warrior's Shield
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24457, {	-- Rite of Vision (1/2)
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 24456,	-- Thunderhorn Cleansing
					["coord"] = { 48.6, 59.8, MULGORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { TAUREN },
					["isBreadcrumb"] = true,
				}),
				q(20441, {	-- Rite of Vision (2/2)
					["qg"] = 3054,	-- Zarlman Two-Moons
					["sourceQuest"] = 24457,	-- Rite of Vision (1/2)
					["coord"] = { 47.8, 57.2, MULGORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { TAUREN },
					["groups"] = {
						objective(1, {	-- 0/1 Water of Vision consumed
							["provider"] = { "i", 49651 },	-- Water of Vision
						}),
						i(57206, {	-- Earthmother's Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131363, {	-- Earthmother's Garb
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57222, {	-- Rainwalker's Bracer
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(767, {	-- Rite of Vision (1/3)
					["qg"] = 2993,	-- Baine Bloodhoof
					["sourceQuest"] = 763,	-- Rites of the Earthmother (2/3)
					["coord"] = { 47.5, 60.2, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
				}),
				q(771, {	-- Rite of Vision (2/3)
					["qg"] = 3054,	-- Zarlman Two-Moons
					["sourceQuest"] = 767,	-- Rite of Vision (1/3)
					["coord"] = { 47.8, 57.5, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
					["groups"] = {
						objective(1, {	-- 0/2 Well Stone
							["providers"] = {
								{ "i", 4808 },	-- Well Stone
								{ "o", 2910 },	-- Well Stone
							},
						}),
						objective(2, {	-- 0/2 Ambercorn
							["providers"] = {
								{ "i", 4809 },	-- Ambercorn
								{ "o", 2912 },	-- Ambercorn
							},
						}),
					},
				}),
				q(772, {	-- Rite of Vision (3/3)
					["providers"] = {
						{ "n", 3054 },	-- Zarlman Two-Moons
						{ "i", 4823 },	-- Water of the Seers
					},
					["sourceQuest"] = 771,	-- Rite of Vision (2/3)
					["coord"] = { 47.8, 57.5, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
					["groups"] = {
						i(4906, {	-- Rainwalker Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4958, {	-- Sun-beaten Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(773, {	-- Rite of Wisdom
					-- #if AFTER CATA
					["qg"] = 3233,	-- Lorekeeper Raintotem
					["sourceQuest"] = 20441,	-- Rite of Vision (2/2)
					["coord"] = { 49.4, 17.2, MULGORE },
					["races"] = { TAUREN },
					-- #else
					["qg"] = 2984,	-- Seer Wiserunner
					["sourceQuest"] = 772,	-- Rite of Vision (3/3)
					["coord"] = { 32.8, 36.0, MULGORE },
					["races"] = HORDE_ONLY,
					-- #endif
					["lvl"] = lvlsquish(3, 3, 1),
				}),
				q(14440, {	-- Rites of the Earthmother (3/3)
					["qg"] = 36648,	-- Baine Bloodhoof <High Chieftain>
					["sourceQuest"] = 14439,	-- Journey into Thunder Bluff
					["coord"] = { 59.8, 51.6, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_0_1, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
					["groups"] = {
						objective(1, {	-- 0/1 Horn of Arra'chea
							["provider"] = { "i", 4841 },	-- Horn of Arra'chea
							["coords"] = {
								{ 48.4, 15.6, MULGORE },
								{ 53.0, 13.2, MULGORE },
								{ 55.0, 22.0, MULGORE },
								{ 56.4, 29.0, MULGORE },
								{ 52.2, 31.2, MULGORE },
								{ 51.0, 25.8, MULGORE },
								{ 49.6, 20.8, MULGORE },
							},
							["cr"] = 3058,	-- Arra'chea
						}),
						i(4909, {	-- Kodo Hunter's Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(776, {	-- Rites of the Earthmother (3/3)
					["qg"] = 3057,	-- Cairne Bloodhoof <High Chieftain>
					["sourceQuest"] = 775,	-- Journey into Thunder Bluff
					["coord"] = { 59.8, 51.6, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_1 },
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
					["groups"] = {
						objective(1, {	-- 0/1 Horn of Arra'chea
							["provider"] = { "i", 4841 },	-- Horn of Arra'chea
							["coords"] = {
								{ 48.4, 15.6, MULGORE },
								{ 53.0, 13.2, MULGORE },
								{ 55.0, 22.0, MULGORE },
								{ 56.4, 29.0, MULGORE },
								{ 52.2, 31.2, MULGORE },
								{ 51.0, 25.8, MULGORE },
								{ 49.6, 20.8, MULGORE },
							},
							["cr"] = 3058,	-- Arra'chea
						}),
						i(4909, {	-- Kodo Hunter's Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(14438, {	-- Sharing the Land
							-- For some reason, on Retail this quest got marked as completed when [The Angerfang Menace (26189)] in Wetlands got turned in. Check if it happens vice-versa. -Exo 10-01-25
					["qg"] = 36644,	-- Ahmo Thunderhorn
					["coord"] = { 47.6, 59.5, MULGORE },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Palemane Gnolls
							["providers"] = {
								{ "n", 42354},	-- Palemane Gnoll Kill Credit
								{ "n", 2949},	-- Palemane Tanner
								{ "n", 2950},	-- Palemane Skinner
								{ "n", 2951},	-- Palemane Poacher
								{ "n", 5786},	-- Snagglespear
							},
						}),
						i(57204, {	-- Thunderhorn Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(745, {	-- Sharing the Land
					["qg"] = 2993,	-- Baine Bloodhoof
					["coord"] = { 47.5, 60.2, MULGORE },
					["timeline"] = { REMOVED_4_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Palemane Tanner slain
							["provider"] = { "n", 2949 },	-- Palemane Tanner
						}),
						objective(2, {	-- 0/8 Palemane Skinner slain
							["provider"] = { "n", 2950 },	-- Palemane Skinner
						}),
						objective(3, {	-- 0/5 Palemane Poacher slain
							["provider"] = { "n", 2951 },	-- Palemane Poacher
						}),
						i(4960),	-- Flash Pellet
					},
				}),
				q(26180, {	-- Supervisor Fizsprocket
					["qg"] = 2988,	-- Morin Cloudstalker
					["sourceQuest"] = 751,	-- The Ravaged Caravan (2/2)
					["coord"] = { 57.0, 60.4, MULGORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Fizsprocket's Clipboard
							["provider"] = { "i", 4819 },	-- Fizsprocket's Clipboard
							["coord"] = { 64.8, 43.4, MULGORE },
							["cr"] = 3051,	-- Supervisor Fizsprocket
						}),
						i(57242, {	-- Goblin Masher
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57208, {	-- Trackless Sandals
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131493, {	-- Trackless Boots
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(765, {	-- Supervisor Fizsprocket
					["qg"] = 2988,	-- Morin Cloudstalker
					["sourceQuest"] = 751,	-- The Ravaged Caravan (2/2)
					["coord"] = { 54.4, 60.4, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- 0/1 Fizsprocket's Clipboard
							["provider"] = { "i", 4819 },	-- Fizsprocket's Clipboard
							["coord"] = { 64.8, 43.4, MULGORE },
							["cr"] = 3051,	-- Supervisor Fizsprocket
						}),
						i(4974, {	-- Compact Fighting Knife
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4964, {	-- Goblin Smasher
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(761, {	-- Swoop Hunting
					["qg"] = 2947,	-- Harken Windtotem
					-- #if AFTER CATA
					["coord"] = { 48.7, 58.7, MULGORE },
					-- #else
					["coord"] = { 48.7, 59.3, MULGORE },
					-- #endif
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Trophy Swoop Quill
							["provider"] = { "i", 4769 },	-- Swoop Hunting
							["crs"] = {
								2970,	-- Swoop
								2969,	-- Wiry Swoop
							},
						}),
					},
				}),
				q(6061, {	-- Taming the Beast (1/3)
					["qg"] = 3065,	-- Yaw Sharpmane <Hunter Trainer>
					["sourceQuests"] = {
						6065,	-- The Hunter's Path [Thunder Bluff]
						6066,	-- The Hunter's Path [Mulgore]
						6067,	-- The Hunter's Path [Durotar]
					},
					["coord"] = { 47.8, 55.6, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Tame an Adult Plainstrider
							["providers"] = {
								{ "n", 2956 },	-- Adult Plainstrider
								{ "i", 15914 },	-- Taming Rod
							},
						}),
					},
				}),
				q(6087, {	-- Taming the Beast (2/3)
					["qg"] = 3065,	-- Yaw Sharpmane <Hunter Trainer>
					["sourceQuest"] = 6061,	-- Taming the Beast (1/3)
					["coord"] = { 47.8, 55.6, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Tame a Prairie Stalker
							["providers"] = {
								{ "n", 2959 },	-- Prairie Stalker
								{ "i", 15915 },	-- Taming Rod
							},
						}),
					},
				}),
				q(6088, {	-- Taming the Beast (3/3)
					["qg"] = 3065,	-- Yaw Sharpmane <Hunter Trainer>
					["sourceQuest"] = 6087,	-- Taming the Beast (2/3)
					["coord"] = { 47.8, 55.6, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Tame a Swoop
							["providers"] = {
								{ "n", 2970 },	-- Swoop
								{ "i", 15916 },	-- Taming Rod
							},
						}),
						-- #if BEFORE CATA
						recipe(883),	-- Call Pet
						recipe(2641),	-- Dismiss Pet
						recipe(1515),	-- Tame Beast
						-- #endif
					},
				}),
				q(770, {	-- The Demon Scarred Cloak
					["provider"] = { "i", 4854 },	-- Demon Scarred Cloak
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(6, 6, 1),
					["groups"] = {
						i(4971),	-- Skorn's Hammer
						i(3079),	-- Skorn's Rifle
					},
				}),
				q(6065, {	-- The Hunter's Path [Thunder Bluff]
					["qg"] = 3038,	-- Kary Thunderhorn <Hunter Trainer>
					["coord"] = { 58.4, 88.0, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6066, {	-- The Hunter's Path [Mulgore]
					["qg"] = 3061,	-- Lanka Farshot <Hunter Trainer>
					["coord"] = { 44.3, 75.7, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6067, {	-- The Hunter's Path [Durotar]
					["qg"] = 3171,	-- Thotar <Hunter Trainer>
					["coord"] = { 51.9, 43.5, DUROTAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(861, {	-- The Hunter's Way
					["qg"] = 3052,	-- Skorn Whitecloud
					["altQuests"] = {
						860,	-- Sergra Darkthorn
						844,	-- Plainstrider Menace
					},
					["coord"] = { 46.76, 60.22, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/4 Flatland Prowler Claw
							["provider"] = { "i", 5203 },	-- Flatland Prowler Claw
							["cr"] = 3566,	-- Flatland Prowler
						}),
					},
				}),
				q(749, {	-- The Ravaged Caravan (1/2)
					["qg"] = 2988,	-- Morin Cloudstalker
					-- #if AFTER CATA
					["sourceQuest"] = 24459,	-- Morin Cloudstalker
					["coord"] = { 57.0, 60.4, MULGORE },
					-- #else
					["coord"] = { 54.4, 60.4, MULGORE },
					-- #endif
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				q(751, {	-- The Ravaged Caravan (2/2)
					["provider"] = { "o", 2908 },	-- Sealed Supply Crate
					["sourceQuest"] = 749,	-- The Ravaged Caravan (1/2)
					-- #if AFTER CATA
					["coord"] = { 53.6, 48.4, MULGORE },
					-- #else
					["coord"] = { 53.8, 48.3, MULGORE },
					-- #endif
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = { i(4834) },	-- Venture Co. Documents (QI!)
				}),
				q(14491, {	-- The Restless Earth
					["qg"] = 36644,	-- Ahmo Thunderhorn
					["sourceQuest"] = 14438,	-- Sharing the Land
					["coord"] = { 47.6, 59.6, MULGORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Spirits Calmed
							["provider"] = { "i", 49647 },	-- Drum of the Soothed Earth
							["cr"] = 36845,	-- Agitated Earth Spirit
						}),
						i(57223, {	-- Chestguard of the Beating Drum
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57207, {	-- Restless Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57233, {	-- Worn Ceremonial Tomahawk
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26179, {	-- The Venture Co.
					["qg"] = 2988,	-- Morin Cloudstalker
					["sourceQuest"] = 751,	-- The Ravaged Caravan (2/2)
					["coord"] = { 57.0, 60.4, MULGORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Venture Co. Worker slain
							["provider"] = { "n", 2978 },	-- Venture Co. Worker
						}),
					},
				}),
				q(764, {	-- The Venture Co.
					["qg"] = 2988,	-- Morin Cloudstalker
					["sourceQuest"] = 751,	-- The Ravaged Caravan (2/2)
					["coord"] = { 54.4, 60.4, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- 0/14 Venture Co. Worker slain
							["provider"] = { "n", 2978 },	-- Venture Co. Worker
						}),
						objective(2, {	-- 0/6 Venture Co. Supervisor slain
							["provider"] = { "n", 2979 },	-- Venture Co. Supervisor
						}),
					},
				}),
				q(24456, {	-- Thunderhorn Cleansing
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 24441,	-- Thunderhorn Totem
					["coord"] = { 48.6, 59.8, MULGORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { TAUREN },
					["groups"] = {
						i(5415),	-- Thunderhorn Cleansing Totem (QI!)
						i(57235, {	-- Bloodhoof War Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57226, {	-- Touch of Dawn
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57210, {	-- Thunderhorn Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131366, {	-- Thunderhorn Handguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(758, {	-- Thunderhorn Cleansing
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 756,	-- Thunderhorn Totem
					["coord"] = { 48.5, 60.4, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { TAUREN },
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- Cleanse the Thunderhorn Water Well
							["provider"] = { "i", 5415 },	-- Thunderhorn Cleansing Totem
							["coord"] = { 44, 45, MULGORE },
						}),
						i(4963, {	-- Thunderhorn Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24441, {	-- Thunderhorn Totem
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 24440,	-- Winterhoof Cleansing
					["coord"] = { 48.6, 59.8, MULGORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { TAUREN },
					["groups"] = {
						objective(1, {	-- 0/6 Stalker Claws
							["provider"] = { "i", 4801 },	-- Stalker Claws
							["cr"] = 2959,	-- Prairie Stalker
						}),
						objective(2, {	-- 0/6 Cougar Claws
							["provider"] = { "i", 4802 },	-- Cougar Claws
							["cr"] = 3035,	-- Flatland Cougar
						}),
					},
				}),
				q(756, {	-- Thunderhorn Totem
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 754,	-- Winterhoof Cleansing
					["coord"] = { 48.5, 60.4, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { TAUREN },
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- 0/6 Stalker Claws
							["provider"] = { "i", 4801 },	-- Thunderhorn Totem
							["cr"] = 2959,	-- Prairie Stalker
						}),
						objective(2, {	-- 0/6 Cougar Claws
							["provider"] = { "i", 4802 },	-- Cougar Claws
							["cr"] = 3035,	-- Flatland Cougar
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
				q(5661, {	-- Touch of Weakness [Mulgore]
					["qg"] = 11407,	-- Var'jun
					["coord"] = { 47.0, 58.8, MULGORE },
					["altQuests"] = {
						5658,	-- Touch of Weakness [Undercity]
						5660,	-- Touch of Weakness [Durotar]
						5662,	-- Touch of Weakness [Orgrimmar]
						5663,	-- Touch of Weakness [Thunder Bluff]
					},
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 2652,	-- Touch of Weakness (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(6089, {	-- Training the Beast
					["qg"] = 3065,	-- Yaw Sharpmane <Hunter Trainer>
					["sourceQuest"] = 6088,	-- Taming the Beast (3/3)
					["coord"] = { 47.8, 55.6, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					-- #if BEFORE CATA
					["groups"] = {
						recipe(6991),		-- Feed Pet
						recipe(982),		-- Revive Pet
					},
					-- #endif
				}),
				q(24524, {	-- Wildmane Cleansing
					["qg"] = 37024,	-- Una Wildmane
					["sourceQuest"] = 24523,	-- Wildmane Totem
					["coord"] = { 49.4, 17.4, MULGORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { TAUREN },
					["groups"] = {
						i(5416),	-- Wildmane Cleansing Totem (QI!)
						i(57238, {	-- Cliff Running Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57229, {	-- Duskwatcher's Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131373, {	-- Duskwatcher's Legguards
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57240, {	-- Hawkeye Rifle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57213, {	-- Waterbearer's Robes
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(760, {	-- Wildmane Cleansing
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 759,	-- Wildmane Totem
					["coord"] = { 48.5, 60.4, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { TAUREN },
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- Cleanse the Wildmane Well
							["provider"] = { "i", 5416 },	-- Wildmane Cleansing Totem
							["coord"] = { 43, 14, MULGORE },
						}),
						i(3443, {	-- Ceremonial Tomahawk
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4961, {	-- Dreamwatcher Staff
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24523, {	-- Wildmane Totem
					["qg"] = 37024,	-- Una Wildmane
					["sourceQuest"] = 20441,	-- Rite of Vision
					["coord"] = { 49.4, 17.4, MULGORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { TAUREN },
					["groups"] = {
						objective(1, {	-- 0/4 Prairie Alpha Tooth
							["provider"] = { "i", 4803 },	-- Prairie Alpha Tooth
							["cr"] = 2960,	-- Prairie Wolf Alpha
						}),
					},
				}),
				q(759, {	-- Wildmane Totem
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 758,	-- Thunderhorn Cleansing
					["coord"] = { 48.5, 60.4, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { TAUREN },
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- 0/8 Prairie Alpha Tooth
							["provider"] = { "i", 4803 },	-- Prairie Alpha Tooth
							["cr"] = 2960,	-- Prairie Wolf Alpha
						}),
					},
				}),
				q(24440, {	-- Winterhoof Cleansing
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 20440,	-- Poison Water
					["coord"] = { 48.6, 59.8, MULGORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { TAUREN },
					["groups"] = {
						i(5411),	-- Winterhoof Cleansing Totem (QI!)
						i(57221, {	-- Legs of the Long Day
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57205, {	-- Plains Hunter Guards
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(754, {	-- Winterhoof Cleansing
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 748,	-- Poison Water
					["coord"] = { 48.5, 60.4, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { TAUREN },
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- Cleanse the Winterhoof Water Well
							["provider"] = { "i", 5411 },	-- Winterhoof Cleansing Totem
							["coord"] = { 53, 66, MULGORE },
						}),
					},
				}),
			}),
			n(RARES, {
				n(5787, {	-- Enforcer Emilgund
					-- #if AFTER CATA
					["coord"] = { 60.6, 47.6, MULGORE },
					-- #else
					["coord"] = { 40.6, 15.8, MULGORE },
					-- #endif
				}),
				n(3056, {	-- Ghost Howl
					-- #if AFTER CATA
					["coords"] = {
                        { 42.21, 15.41, MULGORE },
                        { 44.41, 15.01, MULGORE },
                        { 44.81, 16.41, MULGORE },
                        { 44.01, 17.61, MULGORE },
                    },
					-- #else
					["coords"] = {
						{ 50.6, 15.0, MULGORE },
						{ 39.6, 13.8, MULGORE },
						{ 37.4, 17.8, MULGORE },
						{ 32.8, 19.2, MULGORE },
						{ 32.0, 26.0, MULGORE },
						{ 34.0, 29.2, MULGORE },
						{ 37.0, 42.6, MULGORE },
						{ 44.2, 41.2, MULGORE },
					},
					-- #endif
					["groups"] = {
						i(4854, {	-- Demon Scarred Cloak
							["races"] = HORDE_ONLY,
						}),
					},
				}),
				n(3068, {	-- Mazzranache
					-- #if AFTER CATA
					["coord"] = { 50.4, 42.6, MULGORE },
					-- #else
					["coords"] = {
						{ 34.8, 42.2, MULGORE },
						{ 39.4, 44.2, MULGORE },
						{ 44.4, 42.9, MULGORE },
						{ 51.2, 43.6, MULGORE },
						{ 56.6, 44.0, MULGORE },
					},
					-- #endif
					["groups"] = {
						i(4861, {	-- Sleek Feathered Tunic
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(205382, {	-- Mokwa
					["description"] = "You can tame him and you still get the rune!",
					["coord"] = { 36, 57, MULGORE },
					["cost"] = {{ "i", 205961, 1 }},	-- Mulgore Bird Meat
					["groups"] = {
						i(205979, {	-- Rune of Flanking
							["classes"] = { HUNTER },
							["groups"] = {
								recipe(425762),	-- Engrave Pants - Flanking Strike
							},
						}),
					},
				})),
				-- #endif
				n(5785, {	-- Sister Hatelash
					-- #if AFTER CATA
					["coords"] = {
						{ 53.4, 12.6, MULGORE },
						{ 32.6, 24.0, MULGORE },
					},
					-- #else
					["coords"] = {
						{ 30.6, 21.6, MULGORE },
						{ 36.6, 11.6, MULGORE },
						{ 55.6, 12.0, MULGORE },
					},
					-- #endif
					["groups"] = {
						i(4772, {	-- Warm Cloak
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
						}),
					},
				}),
				n(5786, {	-- Snagglespear
					-- #if AFTER CATA
					["coords"] = {
						{ 53.4, 71.6, MULGORE },
						{ 48.8, 70.0, MULGORE },
					},
					-- #else
					["coords"] = {
						{ 48.2, 68.0, MULGORE },
						{ 50.6, 71.4, MULGORE },
						{ 55.2, 72.2, MULGORE },
					},
					-- #endif
				}),
				n(5807, {	-- The Rake
					["coords"] = {
						{ 50.6, 26.6, MULGORE },
						{ 55.6, 24.4, MULGORE },
						{ 54.4, 20.2, MULGORE },
						{ 49.6, 22.8, MULGORE },
					},
					["groups"] = {
						i(17922, {	-- Lionfur Armor
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(205700, {	-- Venture Co. Poacher
					["provider"] = { "n", 205692 },	-- Rustling Bush
					["description"] = "Cast Hunter's Mark on the bush to spawn the rare.",
					["coord"] = { 59.0, 54.6, MULGORE },
					["classes"] = { HUNTER },
					["groups"] = {
						i(206155, {	-- Rune of Marksmanship
							["classes"] = { HUNTER },
							["groups"] = {
								recipe(410113),	-- Engrave Chest - Master Marksman
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, n(206245, {	-- Unleashed Nature Spirit
					["providers"] = {
						{ "n", 206248 },	-- Wooden Effigy
						{ "i", 206466 },	-- Prairie Crown
					},
					["coord"] = { 37.8, 49.6, MULGORE },
					["cost"] = { { "i", 206469, 3 }},	-- Prairie Flower
					["groups"] = {
						i(206963, {	-- Rune of Natural Potential
							["classes"] = { DRUID },
							["groups"] = {
								recipe(416050),	-- Engrave Chest - Living Seed
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, n(203079, {	-- Wandering Swordsman
					["provider"] = { "o", 392029 },	-- Swordsman's Reward
					["coords"] = {
						{ 45.6, 36.4, MULGORE },
						{ 51.8, 39.2, MULGORE },
						{ 37.8, 55.0, MULGORE },
						{ 40.6, 53.8, MULGORE },
						{ 60.2, 67.6, MULGORE },
					},
					["groups"] = {
						i(204441, {	-- Rune of Blood Frenzy
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(403474),	-- Engrave Chest - Blood Frenzy
							},
						}),
					},
				})),
				-- #endif
			}),
			-- #if BEFORE TBC
			n(RIDING_TRAINER, {
				n(3690, {	-- Kar Stormsinger <Kodo Riding Instructor>
					["coord"] = { 47.6, 58.4, MULGORE },
					["races"] = HORDE_ONLY,

					-- Available to Tauren without faction requirements.
					["minReputation"] = { FACTION_THUNDER_BLUFF, EXALTED },	-- Thunder Bluff, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. TAUREN .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["groups"] = {
						recipe(18995, {	-- Kodo Riding
							["cost"] = 200000,
							["lvl"] = 40,
						}),
					},
				}),
			}),
			-- #endif
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, n(204937, {	-- Adventurer's Spirit
					["provider"] = { "n", 204827 },	-- Adventurer's Remains
					["coord"] = { 60.4, 33.6, MULGORE },
					["timeline"] = { REMOVED_2_0_1 },
					["groups"] = {
						i(210589, {	-- Echo of the Ancestors
							["classes"] = { SHAMAN },
							["groups"] = {
								recipe(410099),	-- Engrave Pants - Ancestral Guidance
							},
						}),
						i(205944, {	-- Reciprocal Epiphany
							["classes"] = { PRIEST },
							["groups"] = {
								recipe(402848),	-- Engrave Pants - Prayer of Mending
							},
						}),
						i(206264, {	-- Rune of Inspiration
							["classes"] = { PALADIN },
							["groups"] = {
								recipe(410011),	-- Engrave Pants - Inspiration Exemplar
							},
						}),
						i(206970, {	-- Rune of Life
							["classes"] = { DRUID },
							["groups"] = {
								recipe(410033),	-- Engrave Pants - Lifebloom
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, o(404352, {	-- Artifact Storage
					["provider"] = { "i", 206975 },	-- Artifact Storage Key
					["coord"] = { 31.6, 49.5, MULGORE },
					["timeline"] = { REMOVED_2_0_1 },
					["groups"] = {
						i(206388, {	-- Sulfurous Icon
							["classes"] = { SHAMAN },
							["groups"] = {
								recipe(425344),	-- Engrave Gloves - Molten Blast
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(206386, {	-- Galvanic Icon
					--["provider"] = { "o",  },	-- TODO: I don't have the objectID for this. It's called "Galvanic Icon" just like the item.
					["description"] = "These are random spawn totems on the ground; listen for the lightning cast sound to help you pinpoint the location.",
					["coords"] = {
						{ 54.07, 55.82, MULGORE },
						{ 36.3, 9.8, MULGORE },
						{ 37.5, 52.5, MULGORE },
						{ 41.65, 55.98, MULGORE },
						{ 38.0, 60.0, MULGORE },
					},
					["classes"] = { SHAMAN },
					["groups"] = {
						recipe(410098),	-- Engrave Chest - Shield Mastery
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(206989, {	-- Rune of the Sun
					["providers"] = {
						{ "n", 207577 },	-- Lunar Stone
						{ "o", 404433 },	-- Lunar Chest
					},
					["description"] = "Cast Moonfire on each of the Lunar Stones to spawn the Lunar Chest nearby.",
					["coord"] = { 35.7, 69.6, MULGORE },
					["classes"] = { DRUID },
					["groups"] = {
						recipe(416044),	-- Engrave Gloves - Sunfire
					},
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(3685, {	-- Harb Clawhoof <Kodo Mounts>
					-- #if AFTER CATA
					["coord"] = { 47.6, 58.0, MULGORE },
					-- #else
					["coord"] = { 47.6, 58.4, MULGORE },
					-- #endif
					-- Available to Tauren without faction requirements.
					["minReputation"] = { FACTION_THUNDER_BLUFF, EXALTED },	-- Thunder Bluff, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. TAUREN .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(15277),	-- Gray Kodo (MOUNT!)
						i(15290),	-- Brown Kodo (MOUNT!)
						i(18793),	-- Great White Kodo (MOUNT!)
						i(18794),	-- Great Brown Kodo (MOUNT!)
						i(18795),	-- Great Gray Kodo (MOUNT!)
						i(46100, {	-- White Kodo (MOUNT!)
							["timeline"] = { ADDED_3_1_0 },
						}),
						i(15292, {	-- Green Kodo (MOUNT!)
							["timeline"] = { REMOVED_1_4_0 },
						}),
						i(15293, {	-- Teal Kodo (MOUNT!)
							["timeline"] = { REMOVED_1_4_0 },
						}),
					},
				}),
				n(5940, {	-- Harn Longcast <Fishing Supplies>
					-- #if AFTER CATA
					["coord"] = { 47.6, 54.8, MULGORE },
					-- #else
					["coord"] = { 47.6, 55.0, MULGORE },
					-- #endif
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
						i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(205635, {	-- Takoda Sunmane <Naturalist>
					["description"] = "Use the musk and tame a prairie dog and then bring it to Takoda.",
					["coord"] = { 46.2, 60.6, MULGORE },
					["cost"] = {{ "i", 205995, 1 }},	-- Prairie Dog Musk
					["crs"] = { 2620 },	-- Prairie Dog
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(206032, {	-- Rune of Carve
							["classes"] = { HUNTER },
							["groups"] = {
								recipe(425758),	-- Engrave Gloves - Carve
							},
						}),
					},
				})),
				-- #endif
				n(3081, {	-- Wunna Darkmane <Trade Goods>
					-- #if AFTER CATA
					["coord"] = { 46.4, 57.8, MULGORE },
					-- #else
					["coord"] = { 46.2, 58.2, MULGORE },
					-- #endif
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5484),	-- Recipe: Roasted Kodo Meat (RECIPE!)
					},
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			n(ZONE_DROPS, {
				applyclassicphase(SOD_PHASE_ONE, i(206975, {	-- Artifact Storage Key
					["coord"] = { 33.8, 49.8, MULGORE },
					["timeline"] = { REMOVED_2_0_1 },
					["crs"] = {
						2990,	-- Bael'dun Appraiser
						2989,	-- Bael'dun Digger
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(206954, {	-- Idol of Ursine Rage
					["coord"] = { 53.2, 29.6, MULGORE },
					["classes"] = { DRUID },
					["crs"] = {
						2979,	-- Venture Co. Supervisor
						3232,	-- Bristleback Interloper
						2964,	-- Windfury Sorceress
						2971,	-- Taloned Swoop
						2960,	-- Prairie Wolf Alpha
						3566,	-- Flatland Prowler
						2965,	-- Windfury Matriarch
					},
					["groups"] = {
						recipe(410025),	-- Engrave Gloves - Mangle
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(205961, {	-- Mulgore Bird Meat
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { HUNTER },
					["crs"] = {
						2956,	-- Adult Plainstrider
						2969,	-- Wiry Swoop
						2970,	-- Swoop
						2957,	-- Elder Plainstrider
						2971,	-- Taloned Swoop
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(205995, {	-- Prairie Dog Musk
					["coords"] = {
						{ 53.6, 72.6, MULGORE },
						{ 31.2, 62.2, MULGORE },
						{ 48.2, 74.0, MULGORE },
						{ 30.8, 61.6, MULGORE },
					},
					["classes"] = { HUNTER },
					["crs"] = {
						2951,	-- Palemane Poacher
						2950,	-- Palemane Skinner
						2949,	-- Palemane Tanner
						207515,	-- Lurkmane
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(206469, {	-- Prairie Flower
					["provider"] = { "o", 403718 },	-- Prairie Flower
					["description"] = "These are scattered throughout the zone.",
				})),
				applyclassicphase(SOD_PHASE_ONE, i(206169, {	-- Rune of Explosive Shot
					["description"] = "This can also drop from any of the rare mobs in the zone.",
					["coord"] = { 51.8, 20.0, MULGORE },
					["classes"] = { HUNTER },
					["cr"] = 3058,	-- Arra'chea
					["groups"] = {
						recipe(410123),	-- Engrave Gloves - Explosive Shot
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(204809, {	-- Rune of Furious Thunder
					["description"] = "This can also drop from any of the rare mobs in the zone.",
					["coord"] = { 30.8, 61.6, MULGORE },
					["classes"] = { WARRIOR },
					["cr"] = 207515,	-- Lurkmane
					["groups"] = {
						recipe(403476),	-- Engrave Pants - Furious Thunder
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(204478, {	-- Severed Gnoll Head
					["coord"] = { 53.6, 73.6, MULGORE },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["crs"] = {
						2949,	-- Palemane Tanner
						2950,	-- Palemane Skinner
						2951,	-- Palemane Poacher
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(206995, {	-- Severed Harpy Head
					["coord"] = { 33.6, 42.0, MULGORE },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["crs"] = {
						2962,	-- Windfury Harpy
						2963,	-- Windfury Wind Witch
						2965,	-- Windfury Matriarch
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(206994, {	-- Severed Quilboar Head
					["coord"] = { 61.6, 22.4, MULGORE },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["cr"] = 3232,	-- Bristleback Interloper
				})),
			}),
			-- #endif
		},
	}),
}));
