-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local THESPIA = 573;
local STEAMRIGGER = 574;
local KALITHRESH = 575;

------ EncounterToCRS ------
local EncounterToCRS = {
	[THESPIA] = { 17797 },	-- Hydromancer Thespia
	[STEAMRIGGER] = { 17796 },	-- Mekgineer Steamrigger
	[KALITHRESH] = { 17798 },	-- Warlord Kalithresh
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(261, {	-- The Steamvault
		lore = "The Steamvault serves as the mechanical heart of the Naga's draining operations in Zangarmarsh. The mechanisms on display within the massive cavern supply the power for the actual act of removing the marsh's water.",
		-- #if BEFORE MOP
		zoneTextAreaID = 3715,	-- The Steamvault
		-- #endif
		coord = { 50.35, 33.39, ZANGARMARSH },	-- The Steamvault, Zangarmarsh
		timeline = { ADDED_2_0_3 },
		maps = {
			COILFANG_RESERVOIR_STEAMVAULT,
			264,	-- The Cooling Pools
		},
		lvl = lvlsquish(65, 65, 20),
		groups = {
			n(QUESTS, {
				q(29613, {	-- A Proper Fate
					qg = 54848,	-- Watcher Jhang
					timeline = { ADDED_4_3_0 },
					lvl = lvlsquish(67, 67, 20),
					groups = {
						objective(1, {	-- Warlord Kalithresh slain
							provider = { "n", 17798 },	-- Warlord Kalithresh
						}),
					},
				}),
				q(29614, {	-- Containment is Key
					qg = 54849,	-- Naturalist Bite
					timeline = { ADDED_4_3_0 },
					lvl = lvlsquish(67, 67, 20),
					groups = {
						objective(1, {	-- 0/3 Bog Overlord slain
							provider = { "n", 21694 },	-- Bog Overlord
						}),
						objective(2, {	-- 0/6 Coilfang Leper slain
							provider = { "n", 21338 },	-- Coilfang Leper
						}),
						objective(3, {	-- 0/1 Irradiated Gear
							provider = { "i", 72574 },	-- Irradiated Gear
						}),
					},
				}),
				q(9764, {	-- Orders from Lady Vashj
					provider = { "i", 24367 },	-- Orders from Lady Vashj
					timeline = { REMOVED_4_3_0 },
					maps = { ZANGARMARSH },
					lvl = lvlsquish(67, 67, 20),
				}),
				q(29616, {	-- Storming the Steamvault
					qg = 17841,	-- Ysiel Windsinger
					coord = { 78.4, 62.0, ZANGARMARSH },
					timeline = { ADDED_4_3_0 },
					lvl = lvlsquish(67, 67, 20),
				}),
				q(9763, {	-- The Warlord's Hideout
					qg = 17884,	-- Watcher Jhang
					coord = { 52.3, 36.0, ZANGARMARSH },
					timeline = { REMOVED_4_3_0 },
					lvl = lvlsquish(67, 67, 20),
					groups = {
						objective(1, {	-- Warlord Kalithresh slain
							provider = { "n", 17798 },	-- Warlord Kalithresh
						}),
						i(28181),	-- Earthwarden's Coif
						i(28182),	-- Helm of the Claw
						i(28183),	-- Hydromancer's Headwrap
						i(28180),	-- Myrmidon's Headdress
					},
				}),
				q(10667, {	-- Underworld Loam
					sourceQuests = {
						10665,	-- Fresh From the Mechanar
						10666,	-- The Lexicon Demonica
					},
					qg = 21465,	-- David Wayne
					coord = { 77.4, 38.6, TEROKKAR_FOREST },
					lvl = lvlsquish(67, 67, 20),
					groups = {
						objective(1, {	-- 0/1 Vial of Underworld Loam
							provider = { "i", 30828 },	-- Vial of Underworld Loam
						}),
					},
				}),
				q(29615, {	-- Windcaller Claw and the Water Thief
					qg = 54851,	-- Windcaller Claw
					timeline = { ADDED_4_3_0 },
					lvl = lvlsquish(67, 67, 20),
					groups = {
						objective(1, {	-- Hydromancer Thespia slain
							provider = { "n", 17797 },	-- Hydromancer Thespia
						}),
					},
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(24368),	-- Coilfang Armaments
					i(24159, {	-- Design: Khorium Band of Frost (RECIPE!)
						cr = 17722,	-- Coilfang Sorceress
					}),
					i(22533, {	-- Formula: Enchant Bracer - Fortitude (RECIPE!)
						cr = 17803,	-- Coilfang Oracle
					}),
					i(24367, { timeline = { REMOVED_4_3_0 } }),	-- Orders from Lady Vashj
					i(24487, {	-- Second Key Fragment
						providers = {
							{ "o", 182197 },	-- Arcane Container
							{ "n",  22891 },	-- Second Fragment Guardian
						},
						coord = { 59.0, 24.8, COILFANG_RESERVOIR_STEAMVAULT },
					}),
				}),
				BossOnly(THESPIA, {
					i(30828),	-- Vial of Underworld Loam (QI!)
					--
					i(27789, { timeline = { REMOVED_11_1_5 } }),	-- Cloak of Whispering Shells
					i(238929, { timeline = { ADDED_11_1_5 } }),	-- Cloak of Whispering Shells
					i(27806),	-- Fathomheart Gauntlets
					i(238932, { timeline = { ADDED_11_1_5 } }),	-- Gauntlets of the Bold
					i(27475, { timeline = { REMOVED_11_1_5 } }),	-- Gauntlets of the Bold
					i(27508),	-- Incanter's Gloves
					i(27783),	-- Moonrage Girdle
					i(29673, { timeline = { REMOVED_5_0_4 } }),	-- Pattern: Frost Armor Kit (RECIPE!)
					i(27784, { timeline = { REMOVED_11_1_5 } }),	-- Scintillating Coral Band
					i(238930, { timeline = { ADDED_11_1_5 } }),	-- Scintillating Coral Band
				}),
				BossOnly(STEAMRIGGER, {
					i(72574, { timeline = { ADDED_4_3_0 } }),	-- Irradiated Gear (QI!)
					--
					i(27787),	-- Chestguard of No Remorse (7.3.5 - Moved from Hydromancer Thespia)
					i(27793, { timeline = { REMOVED_11_1_5 } }),	-- Earth Mantle Handwraps
					i(238988, { timeline = { ADDED_11_1_5 } }),	-- Earth Mantle Handwraps
					i(27790),	-- Mask of Penance
					i(27794),	-- Recoilless Rocket Ripper X-54
					i(27795),	-- Sash of Serpentra
					i(23887),	-- Schematic: Rocket Boots Xtreme (RECIPE!)
					i(27791),	-- Serpentcrest Life-Staff
					i(27792, { timeline = { REMOVED_11_1_5 } }),	-- Steam-Hinge Chain of Valor
					i(238989, { timeline = { ADDED_11_1_5 } }),	-- Steam-Hinge Chain of Valor
				}),
				BossOnly(KALITHRESH, {
					ach(656),	-- The Steamvault
					i(29463),	-- Amber Bands of the Aggressor
					i(27874),	-- Beast Lord Leggings
					i(27801),	-- Beast Lord Mantle
					i(28203),	-- Breastplate of the Righteous
					i(27804),	-- Devilshark Cape
					i(27738),	-- Incanter's Pauldrons
					i(27737),	-- Moonglade Shoulders
					i(24313),	-- Pattern: Battlecast Hood (RECIPE!)
					i(30543),	-- Pontifex Kilt
					i(27805),	-- Ring of the Silver Hand
					i(27510),	-- Tidefury Gauntlets
					i(27799),	-- Vermillion Robes of the Dominant
					i(29243),	-- Wave-Fury Vambraces
					i(29351),	-- Wrathtide Longbow
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { lvl = lvlsquish(70, 70, 30) }).AddGroups({
				CommonBossDrops({
					i(30551),	-- Infused Fire Opal
					i(30549),	-- Shifting Tanzanite
					i(30550),	-- Sundered Chrysoprase
				}),
				BossOnly(THESPIA),
				BossOnly(STEAMRIGGER),
				BossOnly(KALITHRESH, {
					ach(677),	-- Heroic: The Steamvault
					ach(5077, { timeline = { ADDED_4_0_3 } }),	-- Heroic: The Steamvault Guild Run
					i(31721),	-- Kalithresh's Trident
					applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
					i(33827),	-- The Warlord's Treatise
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(24368),	-- Coilfang Armaments
					i(24159, {	-- Design: Khorium Band of Frost (RECIPE!)
						cr = 17722,	-- Coilfang Sorceress
					}),
					i(22533, {	-- Formula: Enchant Bracer - Fortitude (RECIPE!)
						cr = 17803,	-- Coilfang Oracle
					}),
					i(24367, {	-- Orders from Lady Vashj
						timeline = { REMOVED_4_3_0 },
						-- #if BEFORE 4.3.0.14732
						crs = {
							17721,	-- Coilfang Engineer
							17800,	-- Coilfang Myrmidon
							17801,	-- Coilfang Siren
							17802,	-- Coilfang Warrior
							17803,	-- Coilfang Oracle
							17805,	-- Coilfang Slavemaster
						},
						-- #endif
					}),
					i(24487, {	-- Second Key Fragment
						providers = {
							{ "o", 182197 },	-- Arcane Container
							{ "n",  22891 },	-- Second Fragment Guardian
						},
						coord = { 59.0, 24.8, COILFANG_RESERVOIR_STEAMVAULT },
					}),
				}),
				BossOnly(THESPIA, {
					i(30828),	-- Vial of Underworld Loam (QI!)
					--
					i(27787),	-- Chestguard of No Remorse (7.3.5 - Moved to Mekgineer Steamrigger)
					i(27789, { timeline = { REMOVED_11_1_5 } }),	-- Cloak of Whispering Shells
					i(27508),	-- Incanter's Gloves
					i(27783),	-- Moonrage Girdle
					i(29673, { timeline = { REMOVED_5_0_4 } }),	-- Pattern: Frost Armor Kit (RECIPE!)
					i(27784, { timeline = { REMOVED_11_1_5 } }),	-- Scintillating Coral Band
				}),
				BossOnly(STEAMRIGGER, {
					i(72574, { timeline = { ADDED_4_3_0 } }),	-- Irradiated Gear (QI!)
					--
					i(27793, { timeline = { REMOVED_11_1_5 } }),	-- Earth Mantle Handwraps
					i(27790),	-- Mask of Penance
					i(27794),	-- Recoilless Rocket Ripper X-54
					i(23887),	-- Schematic: Rocket Boots Xtreme (RECIPE!)
					i(27791),	-- Serpentcrest Life-Staff
					i(27792, { timeline = { REMOVED_11_1_5 } }),	-- Steam-Hinge Chain of Valor
				}),
				BossOnly(KALITHRESH, {
					i(27874),	-- Beast Lord Leggings
					i(27801),	-- Beast Lord Mantle
					i(28203),	-- Breastplate of the Righteous
					i(27804),	-- Devilshark Cape
					i(27806),	-- Fathomheart Gauntlets
					i(27475),	-- Gauntlets of the Bold
					i(27738),	-- Incanter's Pauldrons
					i(27737),	-- Moonglade Shoulders
					i(24313),	-- Pattern: Battlecast Hood (RECIPE!)
					i(27805),	-- Ring of the Silver Hand
					i(27795),	-- Sash of Serpentra (7.3.5 - Moved to Mekgineer Steamrigger)
					i(27510),	-- Tidefury Gauntlets
					i(27799),	-- Vermillion Robes of the Dominant
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(KALITHRESH, {
					ach(656),	-- The Steamvault
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				description = "You need to have a key to the instance in order to access this mode.",
				attunement = {
					{ "i", 30623 },	-- Reservoir Key
					-- #if CLASSIC_ANNIVERSARY
					{ "i", 265843 },	-- Communal Reservoir Key
					-- #endif
				},
				-- #endif
				lvl = lvlsquish(70, 70, 30),
			}).AddGroups({
				CommonBossDrops({
					-- #if BEFORE CATA
					applyclassicphase(TBC_PHASE_FOUR, BADGE_OF_JUSTICE(1)),
					-- #endif
					i(30551),	-- Infused Fire Opal
					i(30549),	-- Shifting Tanzanite
					i(30550),	-- Sundered Chrysoprase
				}),
				BossOnly(THESPIA),
				BossOnly(STEAMRIGGER),
				BossOnly(KALITHRESH, {
					ach(677),	-- Heroic: The Steamvault
					ach(5077, { timeline = { ADDED_4_0_3 } }),	-- Heroic: The Steamvault Guild Run
					i(29463),	-- Amber Bands of the Aggressor
					i(31721),	-- Kalithresh's Trident
					i(30543),	-- Pontifex Kilt
					applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
					i(33827),	-- The Warlord's Treatise
					i(29243),	-- Wave-Fury Vambraces
					i(29351),	-- Wrathtide Longbow
				}),
			}),
			-- #endif
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(261, {
		q(35533),	-- The Steamvault Reward Quest - Normal completion
		q(35534),	-- The Steamvault Reward Quest - Heroic completion
	}),
}));
