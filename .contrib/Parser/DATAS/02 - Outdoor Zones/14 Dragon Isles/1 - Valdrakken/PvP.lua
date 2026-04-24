---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(VALDRAKKEN, {
		pvp(n(PVP, {
			n(QUESTS, {
				q(72723, {	-- A Call to Battle
					["provider"] = { "n", 196191 },	-- Malicia
					["coord"] = { 43.4, 42.5, VALDRAKKEN },
					["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_TWW_LAUNCH },
					["isWeekly"] = true,
				}),
				q(71026, {	-- Against Overwhelming Odds
					["provider"] = { "n", 196191 },	-- Malicia
					["coord"] = { 43.4, 42.5, VALDRAKKEN },
					["races"] = ALLIANCE_ONLY,
					["isWeekly"] = true,
				}),
				q(71025, {	-- Against Overwhelming Odds
					["provider"] = { "n", 196191 },	-- Malicia
					["coord"] = { 43.4, 42.5, VALDRAKKEN },
					["races"] = HORDE_ONLY,
					["isWeekly"] = true,
				}),
				q(75622, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 } }, {	-- Calling All Competitors!
					["provider"] = { "i", 205187 },	-- Artisan's Consortium Flier (QI!)
					["groups"] = {
						i(204186),	-- Greater Obsidian Trophy of Conquest
						i(204187),	-- Obsidian Trophy of Conquest
					},
				})),
				q(77681, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR } }, {	-- Alerting All Adversaries!
					["provider"] = { "i", 208571 },	-- Artisan's Consortium Leaflet (QI!)
					["groups"] = {
						i(212537),	-- Verdant Trophy of Conquest
						i(212538),	-- Greater Verdant Trophy of Conquest
					},
				})),
				q(79074, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Summoning All Soldiers!
					["provider"] = { "i", 211690 },	-- Artisan's Consortium Brochure (QI!)
					["groups"] = {
						i(211685),	-- Draconic Trophy of Conquest
						i(211686),	-- Greater Draconic Trophy of Conquest
					},
				})),
			}),
			n(QUESTS, sharedData({
				["provider"] = { "n", 196191 },	-- Malicia
				["coord"] = { 43.4, 42.5, VALDRAKKEN },
				["isWeekly"] = true,
				["timeline"] = { REMOVED_TWW_LAUNCH },
				["groups"] = {
					i(206271, {	-- Malicia's Hoard
						["timeline"] = { ADDED_10_1_0, REMOVED_TWW_LAUNCH },
						["groups"] = {
							i(204717),	-- Splintered Spark of Shadowflame
						},
					}),
					i(200452),	-- Dragonscale Expedition Insignia [Rare]
					i(200453),	-- Iskaara Tuskarr Insignia [Rare]
					i(200454),	-- Maruuk Centaur Insignia [Rare]
					i(200455),	-- Valdrakken Accord Insignia [Rare]
				},
			}, {
				q(72169),	-- Proving in Arenas
				q(72166),	-- Proving in Battle
				q(72167),	-- Proving in War
				q(72168),	-- Proving in Skirmishes
				q(72171),	-- Proving Solo
				q(72170),	-- Proving Teamwork
			})),
			n(QUESTS, sharedData({
				["coord"] = { 42.2, 40.7, VALDRAKKEN },
				["isWeekly"] = true,
				["timeline"] = { REMOVED_TWW_LAUNCH },
				["groups"] = {
					currency(2797, {	-- Trophy of Strife
						["timeline"] = { ADDED_10_2_0 },
					}),
					i(202184, {	-- Trophy of Strife
						["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 },
					}),
					i(206366, {	-- Cracked Trophy of Strife
						["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
					}),
					i(206367, {	-- Cracked Trophy of Strife
						["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
					}),
					i(202023),	-- Spark of Life (QI!)
				},
			}, {
				q(72647, {	-- Sparks of Life: Ohn'ahran Plains
					["provider"] = { "n", 199393 },	-- Keenu
				}),
				q(72649, {	-- Sparks of Life: Thaldraszus
					["provider"] = { "n", 199393 },	-- Keenu
				}),
				q(72648, {	-- Sparks of Life: The Azure Span
					["provider"] = { "n", 199393 },	-- Keenu
				}),
				q(74871, {	-- Sparks of Life: The Forbidden Reach
					["provider"] = { "n", 202662 },	-- Kazure
					["timeline"] = { ADDED_10_0_7 },
				}),
				q(72646, {	-- Sparks of Life: The Waking Shores
					["provider"] = { "n", 199376 },	-- Ailith Stonebreeze
				}),
				q(75305, {	-- Sparks of Life: Zaralek Cavern
					["provider"] = { "n", 203680 },	-- Bram
					["timeline"] = { ADDED_10_1_0 },
				}),
				q(78097, {	-- Sparks of Life: Emerald Dream
					["provider"] = { "n", 210781 },	-- Jephryn
					["timeline"] = { ADDED_10_2_0 },
				}),
			})),
			n(VENDORS, {
				n(199599, {	-- Calderax
					["coord"] = { 44.3, 36.6, VALDRAKKEN },
					["groups"] = {
						------ Season 1 ------
						conquest(375, i(205289, {	-- Crimson Equipment Chest
							["timeline"] = { ADDED_10_0_7, REMOVED_10_1_0 },
						})),

						------ Season 2 ------
						conquest(375, i(206200, {	-- Obsidian Equipment Chest
							["timeline"] = { ADDED_10_1_5, REMOVED_10_2_0 },
						})),
						conquest(875, i(204186, {	-- Greater Obsidian Trophy of Conquest
							["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
						})),
						conquest(700, i(204187, {	-- Obsidian Trophy of Conquest
							["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
						})),
						conquest(525, i(204188, {	-- Lesser Obsidian Trophy of Conquest
							["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
						})),

						------ Season 3 ------
						conquest(375, i(210572, {	-- Verdant Equipment Chest
							["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
						})),
						conquest(875, i(212538, {	-- Greater Verdant Trophy of Conquest
							["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
						})),
						conquest(700, i(212537, {	-- Verdant Trophy of Conquest
							["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
						})),
						conquest(525, i(212536, {	-- Lesser Verdant Trophy of Conquest
							["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
						})),

						------ Season 4 ------
						conquest(375, i(217018, {	-- Draconic Equipment Chest
							["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
						})),
						conquest(875, i(211686, {	-- Greater Draconic Trophy of Conquest
							["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
						})),
						conquest(700, i(211685, {	-- Draconic Trophy of Conquest
							["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
						})),
						conquest(525, i(211684, {	-- Lesser Draconic Trophy of Conquest
							["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
						})),
					},
				}),
				n(196191, {	-- Malicia
					["coord"] = { 43.4, 42.5, VALDRAKKEN },
					["groups"] = sharedData({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 } }, {
						bloody(100, i(206144)),	-- Curious Primordial Fungus
						bloody(100, i(206143)),	-- Energized Temporal Spores
						bloody(100, i(206142)),	-- Gritty Stone Potion
						bloody(100, i(206141)),	-- Prismatic Snail Mucus
						bloody(100, i(206140)),	-- Soothing Emerald Tea
						bloody(100, i(206139)),	-- Volatile Crimson Embers
					}),
				}),
				n(197553, {	-- Fieldmaster Emberath
					["coord"] = { 43.1, 42.4, VALDRAKKEN },
					["groups"] = sharedData({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_2_0 } }, {
						bloody(1500, i(202021)),	-- Breaker's Flag of Victory (TOY!)
						bloody(750, i(201464)),	-- Flesh Parachute
						i(198076, {	-- Pest Fogger
							["cost"] = { { "i", ROUSING_IRE, 10 } },
						}),
						bloody(1000, i(201414)),	-- Qalashi Wingshredder
						i(202064, {	-- Warbanner of Ire
							["cost"] = { { "i", ROUSING_IRE, 10 } },
						}),
						i(200953, {	-- Wild Dragon Fruit
							["cost"] = { { "i", ROUSING_IRE, 10 } },
						}),
						i(200966, {	-- Wild Truffle
							["cost"] = { { "i", ROUSING_IRE, 10 } },
						}),
					}),
				}),
				n(199601, {	-- Seltherex
					["coord"] = { 44.7, 37.0, VALDRAKKEN },
					["groups"] = {
						i(185834, {	-- Orboreal Distinguishment
							["cost"] = { { "c", HONOR, 2000 } },
							-- #if BEFORE 11.0.2
							["groups"] = {
							-- Lets display it only in the latest Expansion
								i(137642),	-- Mark of Honor
							},
							-- #endif
						}),
						i(201250, {	-- Victorious Contender's Strongbox
							["cost"] = { { "c", HONOR, 5000 } },
							["groups"] = {
								------ Season 1 ------
								i(201254, {	-- Cracked Medal of Honor [A]
									["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
								}),
								i(201255, {	-- Cracked Medal of Honor [H]
									["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
								}),

								------ Season 2 ------
								i(205187, {	-- Artisan's Consortium Flier (QS!)
									["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
								}),
								i(204179, {	-- Cracked Medal of Honor [A]
									["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
								}),
								i(204180, {	-- Cracked Medal of Honor [H]
									["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
								}),

								------ Season 3 ------
								i(208571, {	-- Artisan's Consortium Leaflet (QS!)
									["timeline"] = { ADDED_10_2_0 },
								}),
								i(210324, {	-- Cracked Medal of Honor [A]
									["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
								}),
								i(210325, {	-- Cracked Medal of Honor [H]
									["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
								}),

								------ Season 4 ------
								i(211690, {	-- Artisan's Consortium Brochure (QS!)
									["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
								}),
								i(211770, {	-- Cracked Medal of Honor [A]
									["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
								}),
								i(211771, {	-- Cracked Medal of Honor [H]
									["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
								}),
							},
						}),
						honor(3000, i(210758, {	-- Honorable Satchel of Fabrics
							["timeline"] = { ADDED_10_2_0, },
						})),
						honor(3000, i(210760, {	-- Honorable Satchel of Herbs
							["timeline"] = { ADDED_10_2_0, },
						})),
						honor(3000, i(210759, {	-- Honorable Satchel of Ore
							["timeline"] = { ADDED_10_2_0, },
						})),
						honor(500, i(206144, {	-- Curious Primordial Fungus
							["timeline"] = { ADDED_11_0_0 },
						})),
						honor(500, i(206143, {	-- Energized Temporal Spores
							["timeline"] = { ADDED_11_0_0 },
						})),
						honor(500, i(206142, {	-- Gritty Stone Potion
							["timeline"] = { ADDED_11_0_0 },
						})),
						honor(500, i(206141, {	-- Prismatic Snail Mucus
							["timeline"] = { ADDED_11_0_0 },
						})),
						honor(500, i(206140, {	-- Soothing Emerald Tea
							["timeline"] = { ADDED_11_0_0 },
						})),
						honor(500, i(206139, {	-- Volatile Crimson Embers
							["timeline"] = { ADDED_11_0_0 },
						})),
						honor(500, i(198076, {	-- Pest Fogger
							["timeline"] = { ADDED_11_0_0 },
						})),
						honor(500, i(202064, {	-- Warbanner of Ire
							["timeline"] = { ADDED_11_0_0 },
						})),
						honor(500, i(200953, {	-- Wild Dragon Fruit
							["timeline"] = { ADDED_11_0_0 },
						})),
						honor(500, i(200966, {	-- Wild Truffle
							["timeline"] = { ADDED_11_0_0 },
						})),

						------ Season 2 ------
						honor(875, i(204190, {	-- Obsidian Crest of Honor
							["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
						})),
						honor(700, i(204189, {	-- Greater Obsidian Crest of Honor
							["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
						})),
						honor(525, i(204191, {	-- Lesser Obsidian Crest of Honor
							["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
						})),

						------ Season 3 ------
						honor(875, i(212541, {	-- Greater Verdant Crest of Honor
							["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
						})),
						honor(700, i(212540, {	-- Verdant Crest of Honor
							["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
						})),
						honor(525, i(212539, {	-- Lesser Verdant Crest of Honor
							["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
						})),
						honor(2500, i(211126, {	-- Cracked Medal of Honor
							["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
						})),

						------ Season 4 ------
						honor(875, i(211689, {	-- Greater Draconic Crest of Honor
							["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
						})),
						honor(700, i(211688, {	-- Draconic Crest of Honor
							["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
						})),
						honor(525, i(211687, {	-- Lesser Draconic Crest of Honor
							["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
						})),
						honor(2500, i(211772, {	-- Cracked Medal of Honor
							["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
						})),
					},
				}),
				n(213989, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Warkeeper Gresh
					["coord"] = { 43.1, 42.4, VALDRAKKEN },
					["groups"] = {
						bloody(1500, i(202021)),	-- Breaker's Flag of Victory (TOY!)
						bloody(100, i(206144, {		-- Curious Primordial Fungus
							["timeline"] = { ADDED_10_2_0, REMOVED_11_0_0 },
						})),
						bloody(100, i(206143, {		-- Energized Temporal Spores
							["timeline"] = { ADDED_10_2_0, REMOVED_11_0_0 },
						})),
						bloody(750, i(201464)),		-- Flesh Parachute
						bloody(100, i(206142, {		-- Gritty Stone Potion
							["timeline"] = { ADDED_10_2_0, REMOVED_11_0_0 },
						})),
						bloody(100, i(198076, {		-- Pest Fogger
							["timeline"] = { ADDED_10_2_0, REMOVED_11_0_0 },
						})),
						bloody(100, i(206141, {		-- Prismatic Snail Mucus
							["timeline"] = { ADDED_10_2_0, REMOVED_11_0_0 },
						})),
						bloody(1000, i(201414)),	-- Qalashi Wingshredder
						bloody(100, i(206140, {		-- Soothing Emerald Tea
							["timeline"] = { ADDED_10_2_0, REMOVED_11_0_0 },
						})),
						bloody(100, i(206139, {		-- Volatile Crimson Embers
							["timeline"] = { ADDED_10_2_0, REMOVED_11_0_0 },
						})),
						bloody(100, i(202064, {		-- Warbanner of Ire
							["timeline"] = { ADDED_10_2_0, REMOVED_11_0_0 },
						})),
						bloody(100, i(200953, {		-- Wild Dragon Fruit
							["timeline"] = { ADDED_10_2_0, REMOVED_11_0_0 },
						})),
						bloody(100, i(200966, {		-- Wild Truffle
							["timeline"] = { ADDED_10_2_0, REMOVED_11_0_0 },
						})),
					},
				})),
			}),
		})),
	}),
})));
