-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(261, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {	-- The Steamvault
		["lore"] = "The Steamvault serves as the mechanical heart of the Naga's draining operations in Zangarmarsh. The mechanisms on display within the massive cavern supply the power for the actual act of removing the marsh's water.",
		-- #if BEFORE MOP
		["zone-text-areaID"] = 3715,	-- The Steamvault
		-- #endif
		["coord"] = { 50.35, 33.39, ZANGARMARSH },	-- The Steamvault, Zangarmarsh
		["maps"] = {
			COILFANG_RESERVOIR_STEAMVAULT,
			264,	-- The Cooling Pools
		},
		["lvl"] = lvlsquish(65, 65, 20),
		["groups"] = {
			n(QUESTS, {
				q(29613, {	-- A Proper Fate
					["qg"] = 54848,	-- Watcher Jhang
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(67, 67, 20),
					["groups"] = {
						objective(1, {	-- Warlord Kalithresh slain
							["provider"] = { "n", 17798 },	-- Warlord Kalithresh
						}),
					},
				}),
				q(29614, {	-- Containment is Key
					["qg"] = 54849,	-- Naturalist Bite
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(67, 67, 20),
					["groups"] = {
						objective(1, {	-- 0/3 Bog Overlord slain
							["provider"] = { "n", 21694 },	-- Bog Overlord
						}),
						objective(2, {	-- 0/6 Coilfang Leper slain
							["provider"] = { "n", 21338 },	-- Coilfang Leper
						}),
						objective(3, {	-- 0/1 Irradiated Gear
							["provider"] = { "i", 72574 },	-- Irradiated Gear
						}),
					},
				}),
				q(9764, {	-- Orders from Lady Vashj
					["provider"] = { "i", 24367 },	-- Orders from Lady Vashj
					["timeline"] = { REMOVED_4_3_0 },
					["maps"] = { ZANGARMARSH },
					["lvl"] = lvlsquish(67, 67, 20),
				}),
				q(29616, {	-- Storming the Steamvault
					["qg"] = 17841,	-- Ysiel Windsinger
					["coord"] = { 78.4, 62, ZANGARMARSH },
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(67, 67, 20),
				}),
				q(9763, bubbleDown({ ["timeline"] = { REMOVED_4_3_0 } }, {	-- The Warlord's Hideout
					["qg"] = 17884,	-- Watcher Jhang
					["coord"] = { 52.3, 36.0, ZANGARMARSH },
					["lvl"] = lvlsquish(67, 67, 20),
					["groups"] = {
						objective(1, {	-- Warlord Kalithresh slain
							["provider"] = { "n", 17798 },	-- Warlord Kalithresh
						}),
						i(28181),	-- Earthwarden's Coif
						i(28182),	-- Helm of the Claw
						i(28183),	-- Hydromancer's Headwrap
						i(28180),	-- Myrmidon's Headdress
					},
				})),
				q(10667, {	-- Underworld Loam
					["qg"] = 21465,	-- David Wayne
					["sourceQuests"] = {
						10665,	-- Fresh From the Mechanar
						10666,	-- The Lexicon Demonica
					},
					["coord"] = { 77.4, 38.6, TEROKKAR_FOREST },
					["lvl"] = lvlsquish(67, 67, 20),
					["groups"] = {
						objective(1, {	-- 0/1 Vial of Underworld Loam
							["provider"] = { "i", 30828 },	-- Vial of Underworld Loam
						}),
					},
				}),
				q(29615, {	-- Windcaller Claw and the Water Thief
					["qg"] = 54851,	-- Windcaller Claw
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(67, 67, 20),
					["groups"] = {
						objective(1, {	-- Hydromancer Thespia slain
							["provider"] = { "n", 17797 },	-- Hydromancer Thespia
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(24368),	-- Coilfang Armaments
				i(24159, {	-- Design: Khorium Band of Frost
					["cr"] = 17722,	-- Coilfang Sorceress
				}),
				i(22533, {	-- Formula: Enchant Bracer - Fortitude (RECIPE!)
					["cr"] = 17803,	-- Coilfang Oracle
				}),
				i(24367, {	-- Orders from Lady Vashj
					["timeline"] = { REMOVED_4_3_0 },
					-- #if BEFORE 4.3.0.14732
					["crs"] = {
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
					["providers"] = {
						{ "o", 182197 },	-- Arcane Container
						{ "n",  22891 },	-- Second Fragment Guardian
					},
					["coord"] = { 59.0, 24.8, COILFANG_RESERVOIR_STEAMVAULT },
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(573, {	-- Hydromancer Thespia
					["creatureID"] = 17797,
					["groups"] = {
						i(27789, {	-- Cloak of Whispering Shells
							["timeline"] = { REMOVED_11_1_5 },
						}),
						i(238929, {	-- Cloak of Whispering Shells
							["timeline"] = { ADDED_11_1_5 },
						}),
						-- #if AFTER 7.3.5
						i(27806),	-- Fathomheart Gauntlets (7.3.5 - Moved from Warlord Kalithresh)
						i(27475, {	-- Gauntlets of the Bold (7.3.5 - Moved from Warlord Kalithresh)
							["timeline"] = { REMOVED_11_1_5 },
						}),
						-- #endif
						i(238932, {	-- Gauntlets of the Bold
							["timeline"] = { ADDED_11_1_5 },
						}),
						i(27508),	-- Incanter's Gloves
						-- #if BEFORE 7.3.5
						i(27787),	-- Chestguard of No Remorse (7.3.5 - Moved to Mekgineer Steamrigger)
						-- #endif
						i(27783),	-- Moonrage Girdle
						i(27784),	-- Scintillating Coral Band
						i(29673, {	-- Pattern: Frost Armor Kit (RECIPE!)
							["timeline"] = { REMOVED_5_0_4 },
						}),
						i(30828),	-- Vial of Underworld Loam
					},
				}),
				e(574, {	-- Mekgineer Steamrigger
					["creatureID"] = 17796,
					["groups"] = {
						i(27791),	-- Serpentcrest Life-Staff
						i(27794),	-- Recoiless Rocket Ripper X-54
						i(27790),	-- Mask of Penance
						i(27792),	-- Steam-Hinge Chain of Valor
						-- #if AFTER 7.3.5
						i(27787),	-- Chestguard of No Remorse (7.3.5 - Moved from Hydromancer Thespia)
						-- #endif
						i(27793, {	-- Earth Mantle Handwraps
							["timeline"] = { REMOVED_11_1_5 },
						}),
						i(238988, {	-- Earth Mantle Handwraps
							["timeline"] = { ADDED_11_1_5 },
						}),
						-- #if AFTER 7.3.5
						i(27795),	-- Sash of Serpentra (7.3.5 - Moved from Warlord Kalithresh)
						-- #endif
						i(23887),	-- Schematic: Rocket Boots Xtreme (RECIPE!)
						i(72574, {	-- Irradiated Gear
							["timeline"] = { ADDED_4_3_0 },
						}),
					},
				}),
				e(575, {	-- Warlord Kalithresh
					["creatureID"] = 17798,
					["groups"] = {
						ach(656, {	-- The Steamvault
							-- #if BEFORE WRATH
							["sourceQuests"] = {
								9763,	-- The Warlord's Hideout
								10885,	-- Trial of the Naaru: Strength
							},
							-- #endif
						}),
						-- #if AFTER 7.3.5
						i(29351),	-- Wrathtide Longbow
						-- #endif
						i(27801),	-- Beast Lord Mantle
						i(27738),	-- Incanter's Pauldrons
						i(27737),	-- Moonglade Shoulders
						i(27804),	-- Devilshark Cape
						i(28203),	-- Breastplate of the Righteous
						i(27799),	-- Vermillion Robes of the Dominant
						-- #if AFTER 7.3.5
						i(29463),	-- Amber Bands of the Aggressor
						i(29243),	-- Wave-Fury Vambraces
						-- #endif
						-- #if BEFORE 7.3.5
						i(27475),	-- Gauntlets of the Bold (7.3.5 - Moved to Hydromancer Thespia)
						i(27806),	-- Fathomheart Gauntlets (7.3.5 - Moved to Hydromancer Thespia)
						-- #endif
						i(27510),	-- Tidefury Gauntlets
						-- #if BEFORE 7.3.5
						i(27795),	-- Sash of Serpentra (7.3.5 - Moved to Mekgineer Steamrigger)
						-- #endif
						i(27874),	-- Beast Lord Leggings
						-- #if AFTER 7.3.5
						i(30543),	-- Pontifex Kilt
						-- #endif
						i(27805),	-- Ring of the Silver Hand
						i(24313),	-- Pattern: Battlecast Hood (RECIPE!)
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				["description"] = "You need to have a key to the instance in order to access this mode.",
				["cost"] = {
					{ "i", 30623, 1 },	-- Reservoir Key
				},
				-- #endif
				["lvl"] = lvlsquish(70, 70, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							17797,	-- Hydromancer Thespia
							17796,	-- Mekgineer Steamrigger
							17798,	-- Warlord Kalithresh
						},
						["groups"] = {
							-- #if BEFORE CATA
							BADGE_OF_JUSTICE,
							-- #endif
							i(30551),	-- Infused Fire Opal
							i(30549),	-- Shifting Tanzanite
							i(30550),	-- Sundered Chrysoprase
						},
					}),
					e(573, {	-- Hydromancer Thespia
						["creatureID"] = 17797,
						["groups"] = {
							i(27789, {	-- Cloak of Whispering Shells
								["timeline"] = { REMOVED_11_1_5 },
							}),
							i(238929, {	-- Cloak of Whispering Shells
								["timeline"] = { ADDED_11_1_5 },
							}),
							-- #if AFTER 7.3.5
							i(27806),	-- Fathomheart Gauntlets (7.3.5 - Moved from Warlord Kalithresh)
							i(27475, {	-- Gauntlets of the Bold (7.3.5 - Moved from Warlord Kalithresh)
								["timeline"] = { REMOVED_11_1_5 },
							}),
							-- #endif
							i(238932, {	-- Gauntlets of the Bold
								["timeline"] = { ADDED_11_1_5 },
							}),
							i(27508),	-- Incanter's Gloves
							-- #if BEFORE 7.3.5
							i(27787),	-- Chestguard of No Remorse (7.3.5 - Moved to Mekgineer Steamrigger)
							-- #endif
							i(27783),	-- Moonrage Girdle
							i(27784, {	-- Scintillating Coral Band
								["timeline"] = { REMOVED_11_1_5 },
							}),
							i(238930, {	-- Scintillating Coral Band
								["timeline"] = { ADDED_11_1_5 },
							}),
							i(29673, {	-- Pattern: Frost Armor Kit (RECIPE!)
								["timeline"] = { REMOVED_5_0_4 },
							}),
							i(30828),	-- Vial of Underworld Loam
						},
					}),
					e(574, {	-- Mekgineer Steamrigger
						["creatureID"] = 17796,
						["groups"] = {
							i(27791),	-- Serpentcrest Life-Staff
							i(27794),	-- Recoiless Rocket Ripper X-54
							i(27790),	-- Mask of Penance
							i(27792),	-- Steam-Hinge Chain of Valor
							-- #if AFTER 7.3.5
							i(27787),	-- Chestguard of No Remorse (7.3.5 - Moved from Hydromancer Thespia)
							-- #endif
							i(27793, {	-- Earth Mantle Handwraps
								["timeline"] = { REMOVED_11_1_5 },
							}),
							i(238988, {	-- Earth Mantle Handwraps
								["timeline"] = { ADDED_11_1_5 },
							}),
							-- #if AFTER 7.3.5
							i(27795),	-- Sash of Serpentra (7.3.5 - Moved from Warlord Kalithresh)
							-- #endif
							i(23887),	-- Schematic: Rocket Boots Xtreme (RECIPE!)
							i(72574, {	-- Irradiated Gear
								["timeline"] = { ADDED_4_3_0 },
							}),
						},
					}),
					e(575, {	-- Warlord Kalithresh
						["creatureID"] = 17798,
						["groups"] = {
							ach(677, {	-- Heroic: The Steamvault
								-- #if BEFORE WRATH
								["sourceQuest"] = 10885,	-- Trial of the Naaru: Strength
								-- #endif
							}),
							ach(5077, {	-- Heroic: The Steamvault Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(29351),	-- Wrathtide Longbow
							i(27801),	-- Beast Lord Mantle
							i(27738),	-- Incanter's Pauldrons
							i(27737),	-- Moonglade Shoulders
							i(27804),	-- Devilshark Cape
							i(28203),	-- Breastplate of the Righteous
							i(27799),	-- Vermillion Robes of the Dominant
							i(29463),	-- Amber Bands of the Aggressor
							i(29243),	-- Wave-Fury Vambraces
							-- #if BEFORE 7.3.5
							i(27475),	-- Gauntlets of the Bold (7.3.5 - Moved to Hydromancer Thespia)
							i(27806),	-- Fathomheart Gauntlets (7.3.5 - Moved to Hydromancer Thespia)
							-- #endif
							i(27510),	-- Tidefury Gauntlets
							-- #if BEFORE 7.3.5
							i(27795),	-- Sash of Serpentra (7.3.5 - Moved to Mekgineer Steamrigger)
							-- #endif
							i(27874),	-- Beast Lord Leggings
							i(30543),	-- Pontifex Kilt
							i(27805),	-- Ring of the Silver Hand
							i(24313),	-- Pattern: Battlecast Hood (RECIPE!)
							applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
							i(31721),	-- Kalithresh's Trident
							i(33827),	-- The Warlord's Treatise
						},
					}),
				},
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(261, {
		q(35533),	-- The Steamvault Reward Quest - Normal completion
		q(35534),	-- The Steamvault Reward Quest - Heroic completion
	}),
})));