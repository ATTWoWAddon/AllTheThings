-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = ADDED_5_0_4 }, {
	applyclassicphase(MOP_PHASE_LANDFALL, inst(302, {	-- Stormstout Brewery
		["coord"] = { 36, 69, VALLEY_OF_THE_FOUR_WINDS },
		["maps"] = {
			439,	-- Grain Cellar
			440,	-- Stormstout Brewhall
			441,	-- The Great Wheel
			442,	-- The Tasting Room
		},
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(6400, {	-- How Did He Get Up There?
					["provider"] = { "n", 60276 },	-- Hozen Clinger
				}),
				ach(6402, {	-- Ling-Ting's Herbal Journey
					["providers"] = {
						{ "n", 59824 },	-- Golden Hopling
						{ "i", 80313 },	-- Ling-Ting's Favorite Tea
					},
					["groups"] = {
						i(86562),	-- Hopling (PET!)
					},
				}),
			}),
			n(QUESTS, {
				q(31324, {	-- Family Secrets
					["qg"] = 59822,	-- Auntie Stormstout
					["sourceQuest"] = 30085,	-- Into the Brewery
					["coord"] = { 76.2, 36.4, 439 },
					["g"] = {
						objective(1, {	-- 0/1 Stormstout Secrets
							["providers"] = {
								{ "o", 213795 },	-- Stormstout Secrets
								{ "i",  86431 },	-- Stormstout Secrets
							},
						}),
						i(87312),	-- Auntie's Cooking Apron
						i(87314),	-- Blackened Chain Cloak
						i(87310),	-- Stormstout Drink Napkin
						i(87313),	-- Tasting Room Tablecloth
						i(87311),	-- Used Bar Rag
					},
				}),
				q(30085, {	-- Into the Brewery
					["qg"] = 56133,	-- Chen Stormstout
					["sourceQuest"] = 30078,	-- Cleaning House
					["coord"] = { 36.0, 69.1, VALLEY_OF_THE_FOUR_WINDS },
					["isBreadcrumb"] = true,
				}),
				q(31327, {	-- Trouble Brewing
					["qg"] = 59704,	-- Chen Stormstout
					["sourceQuest"] = 30085,	-- Into the Brewery
					["coord"] = { 76.6, 36.8, 439 },
					["g"] = {
						objective(1, {	-- 0/1 Yan-Zhu the Uncasked slain
							["provider"] = { "n", 59479 },	-- Yan-Zhu the Uncasked
						}),
						i(87305),	-- Barrel-Aged Gloves
						i(87302),	-- Barrel Stacker's Mitts
						i(87301),	-- Master Brewer's Gloves
						i(87309),	-- Handguards of Sturdy Constitution
						i(87308),	-- Partycrasher's Gauntlets
						i(87304),	-- Uncorking Gloves
						i(87307),	-- Vegetable Chopping Handguards
						i(87306),	-- Virmen Exterminator Gloves
						i(87303),	-- Wine Tasting Gloves
					},
				}),
			}),
			n(VENDORS, {
				n(59822, {	-- Auntie Stormstout
					i(88530),	-- Bubbling Beverage
					i(80313),	-- Ling-Ting's Favorite Tea
					i(88529),	-- Sparkling Water
					i(88490),	-- Triple-Distilled Brew
					i(88492),	-- Wicked Wikket
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC, {
				e(670, {	-- Yan-Zhu the Uncasked
					["crs"] = { 59479 },	-- Yan-Zhu the Uncasked
					["g"] = {
						ach(6457),	-- Stormstout Brewery
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(668, {	-- Ook-Ook
					["crs"] = { 56637 },	-- Ook-Ook
					["g"] = {
						-- Available
						i(144084, {	-- Ook's Hozen Slicer
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143957, {	-- Nimbletoe Chestguard
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144087, {	-- Bracers of Displaced Air
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143989, {	-- Barreldodger Boots
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144119, {	-- Empty Fruit Barrel
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(80892, {	-- Ook's Hozen Slicer
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80896, {	-- Nimbletoe Chestguard
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80897, {	-- Bracers of Displaced Air
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(669, {	-- Hoptallus
					["crs"] = { 56717 },	-- Hoptallus
					["g"] = {
						-- Available
						i(144092, {	-- Bottle of Potent Potables
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144121, {	-- Cloak of Hidden Flasks
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144088, {	-- Bubble-Breaker Bracers
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144120, {	-- Belt of Brazen Inebriation
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143975, {	-- Hopping Mad Leggings
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(80893, {	-- Bottle of Potent Potables
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80899, {	-- Bubble-Breaker Bracers
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80898, {	-- Hopping Mad Leggings
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(670, {	-- Yan-Zhu the Uncasked
					["crs"] = { 59479 },	-- Yan-Zhu the Uncasked
					["g"] = {
						-- Available
						i(87545, {	-- Inelava, Spirit of Inebriation [Confirmed by Carbion to drop in Normal]
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144085, {	-- Gao's Keg Tapper
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144124, {	-- Wort Stirring Rod
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144089, {	-- Yan-Zhu's Pressure Valve
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143969, {	-- Fizzy Spaulders
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143958, {	-- Uncasked Chestguard
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144082, {	-- Fermenting Belt
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143976, {	-- Sudsy Legplates
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144125, {	-- Alemental Seal
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144123, {	-- Lime-Rimmed Signet
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144122, {	-- Carbonic Carbuncle
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(80894, {	-- Gao's Keg Tapper
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80895, {	-- Yan-Zhu's Pressure Valve
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80900, {	-- Fizzy Spaulders
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80902, {	-- Uncasked Chestguard
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80903, {	-- Fermenting Belt
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80901, {	-- Sudsy Legplates
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				n(ACHIEVEMENTS, {
					ach(6420),	-- Hopocalypse Now!
				}),
				e(668, {	-- Ook-Ook
					["crs"] = { 56637 },	-- Ook-Ook
					["g"] = {
						-- Available
						ach(6089),	-- Keep Rollin' Rollin' Rollin'
						i(144084, {	-- Ook's Hozen Slicer
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143957, {	-- Nimbletoe Chestguard
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144087, {	-- Bracers of Displaced Air
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143989, {	-- Barreldodger Boots
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144119, {	-- Empty Fruit Barrel
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(81061, {	-- Ook's Hozen Slicer
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81080, {	-- Nimbletoe Chestguard
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81064, {	-- Bracers of Displaced Air
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81134, {	-- Barreldodger Boots
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81133, {	-- Empty Fruit Barrel
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(669, {	-- Hoptallus
					["crs"] = { 56717 },	-- Hoptallus
					["g"] = {
						-- Available
						i(144092, {	-- Bottle of Potent Potables
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144121, {	-- Cloak of Hidden Flasks
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144088, {	-- Bubble-Breaker Bracers
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144120, {	-- Belt of Brazen Inebriation
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143975, {	-- Hopping Mad Leggings
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(81076, {	-- Bottle of Potent Potables
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81136, {	-- Cloak of Hidden Flasks
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81065, {	-- Bubble-Breaker Bracers
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81135, {	-- Belt of Brazen Inebriation
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81077, {	-- Hopping Mad Leggings
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(670, {	-- Yan-Zhu the Uncasked
					["crs"] = { 59479 },	-- Hoptallus
					["g"] = {
						-- Available
						ach(6456),	-- Heroic: Stormstout Brewery
						ach(6666),	-- Heroic: Stormstout Brewery Guild Run
						i(87545, {	-- Inelava, Spirit of Inebriation [Confirmed by Discord Member on May 4th, 2020 (a screenshot was provided)]
							["timeline"] = { ADDED_5_0_4 },
						}),
						i(144085, {	-- Gao's Keg Tapper
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144124, {	-- Wort Stirring Rod
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144089, {	-- Yan-Zhu's Pressure Valve
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143969, {	-- Fizzy Spaulders
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143958, {	-- Uncasked Chestguard
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144082, {	-- Fermenting Belt
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143976, {	-- Sudsy Legplates
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144125, {	-- Alemental Seal
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144123, {	-- Lime-Rimmed Signet
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144122, {	-- Carbonic Carbuncle
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(81062, {	-- Gao's Keg Tapper
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81140, {	-- Wort Stirring Rod
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81066, {	-- Yan-Zhu's Pressure Valve
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81068, {	-- Fizzy Spaulders
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81081, {	-- Uncasked Chestguard
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81059, {	-- Fermenting Belt
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81078, {	-- Sudsy Legplates
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81141, {	-- Alemental Seal
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81139, {	-- Lime-Rimmed Signet
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81138, {	-- Carbonic Carbuncle
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.CHALLENGE_MODE, bubbleDownSelf({ ["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 } }, {
				ach(8431, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 } }, {	-- Challenge Master: Stormstout Brewery
					title(248),	-- Stormbrewer <Name>
				})),
				ach(6888),	-- Stormstout Brewery Challenger
				ach(6889),	-- Stormstout Brewery: Bronze
				ach(6890),	-- Stormstout Brewery: Silver
				ach(6891, {	-- Stormstout Brewery: Gold
					spell(131205),	-- Path of the Stout Brew
				}),
			})),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
		inst(302, {
			q(31621),	-- Stormstout Brewery Challenge Mode - Bronze Addition (Nth)
			q(31620),	-- Stormstout Brewery Challenge Mode - Consolation (Nth)
			q(31623),	-- Stormstout Brewery Challenge Mode - Gold Addition (Nth)
			q(31622),	-- Stormstout Brewery Challenge Mode - Silver Addition (Nth)
		}),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
		inst(302, {
			q(35323),	-- Stormstout Brewery Reward Quest
			q(35324),	-- Stormstout Brewery Reward Quest
		}),
	})),
});