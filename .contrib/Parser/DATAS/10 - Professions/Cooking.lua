-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
local function AwardsCost(amount)
	return {
		-- #if BEFORE 5.0.4
		{"i",43016,amount},	-- Dalaran Cooking Award
		-- #else
		{"c",402,amount},	-- Ironpaw Token
		-- #endif
		-- #if AFTER 4.0.3
		{"c",81,amount},	-- Epicurean's Award
		-- #endif
	};
end
root(ROOTS.Professions, prof(COOKING, bubbleDownSelf({ ["requireSkill"] = COOKING }, {
	n(ACHIEVEMENTS, {
		applyclassicphase(WRATH_PHASE_ONE, ach(1563, {	-- Hail to the Chef [Alliance]
			["sym"] = {{"meta_achievement",
				1801,	-- Captain Rumsey's Lager
				1781,	-- Critter Gitter
				1785,	-- Dinner Impossible
				906,	-- Kickin' It Up a Notch
				125,	-- Northrend Cook
				1782,	-- Our Daily Bread [A]
				-- #if AFTER 5.0.4
				1783,	-- Our Daily Bread [H]
				-- #endif
				1780,	-- Second That Emotion
				1798,	-- Sous Chef
				877,	-- The Cake Is Not A Lie
				1779,	-- The Northrend Gourmet (45)
				1800,	-- The Outland Gourmet
			}},
			["timeline"] = { ADDED_3_0_2 },
			-- #if BEFORE 5.0.4
			["races"] = ALLIANCE_ONLY,
			-- #endif
			["groups"] = {
				title(52),	-- Chef <Name>
			},
		})),
		-- #if BEFORE 5.0.4
		applyclassicphase(WRATH_PHASE_ONE, ach(1784, {	-- Hail to the Chef [Horde]
			["sym"] = {{"meta_achievement",
				1801,	-- Captain Rumsey's Lager
				1781,	-- Critter Gitter
				1785,	-- Dinner Impossible
				906,	-- Kickin' It Up a Notch
				125,	-- Northrend Cook
				1783,	-- Our Daily Bread [H]
				1780,	-- Second That Emotion
				1798,	-- Sous Chef
				877,	-- The Cake Is Not A Lie
				1779,	-- The Northrend Gourmet (45)
				1800,	-- The Outland Gourmet
			}},
			["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
			["races"] = HORDE_ONLY,
			["groups"] = {
				title(52),	-- Chef <Name>
			},
		})),
		-- #endif
		ach(18817, {	-- Showoff Chef
			["timeline"] = { ADDED_10_1_7 },
			["rank"] = 450,
		}),
		ach(18816, {	-- Serious Chef
			["timeline"] = { ADDED_10_1_7 },
			["rank"] = 300,
		}),
		applyclassicphase(MOP_PHASE_ONE, ach(7328, {	-- Ironpaw Chef
			["timeline"] = { ADDED_5_0_4 },
			["rank"] = 240,
		})),
		applyclassicphase(CATA_PHASE_ONE, ach(5471, {	-- Iron Chef
			["timeline"] = { ADDED_4_0_3_LAUNCH },
			["rank"] = 200,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1799, {	-- Chef de Cuisine
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 160,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1798, {	-- Sous Chef
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 100,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1797, {	-- Chef de Partie
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 75,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1796, {	-- Short Order Cook
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 50,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1795, {	-- Lunch Lady
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 25,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1998, {	-- Cooking Award
			["timeline"] = { ADDED_3_0_2 },
			["cost"] = AwardsCost(1),
			["rank"] = 1,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1999, {	-- 10 Cooking Awards
			["timeline"] = { ADDED_3_0_2 },
			["cost"] = AwardsCost(10),
			["rank"] = 10,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2000, {	-- 25 Cooking Awards
			["timeline"] = { ADDED_3_0_2 },
			["cost"] = AwardsCost(25),
			["rank"] = 25,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2001, {	-- 50 Cooking Awards
			["timeline"] = { ADDED_3_0_2 },
			["cost"] = AwardsCost(50),
			["rank"] = 50,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2002, {	-- 100 Cooking Awards
			["timeline"] = { ADDED_3_0_2 },
			["cost"] = AwardsCost(100),
			["rank"] = 100,
		})),
	}),
	expansion(EXPANSION.CLASSIC, {
		ach(123, {	-- Artisan Cook / Classic Cook [8.0.1]
			-- #if SEASON_OF_DISCOVERY
			["OnUpdate"] = [[function(t)
				if C_Seasons and C_Seasons.GetActiveSeason() == 2 then
					t.u = ]] .. SOD_PHASE_THREE .. [[;
				end
			end]],
			-- #endif
		}),
		ach(122, {	-- Expert Cook
			-- #if SEASON_OF_DISCOVERY
			["OnUpdate"] = [[function(t)
				if C_Seasons and C_Seasons.GetActiveSeason() == 2 then
					t.u = ]] .. SOD_PHASE_TWO .. [[;
				end
			end]],
			-- #endif
		}),
		ach(121),	-- Journeyman Cook
	}),
	expansion(EXPANSION.TBC, {
		applyclassicphase(TBC_PHASE_ONE, ach(124, {	-- Master Cook / Outland Cook [8.0.1+]
			["timeline"] = { ADDED_2_0_1 },
		})),
		-- CRIEVE NOTE: Despite being classified as TBC, these achievements weren't available (or possible to do) prior to Wrath prepatch.
		applyclassicphase(WRATH_PHASE_ONE, ach(1801, {	-- Captain Rumsey's Lager
			["provider"] = { "i", 34832 },	-- Captain Rumsey's Lager
			["timeline"] = { ADDED_3_0_2 },
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(877, {	-- The Cake Is Not A Lie
			["provider"] = { "i", 33924 },	-- Delicious Chocolate Cake
			["timeline"] = { ADDED_3_0_2 },
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1800, {	-- The Outland Gourmet
			["timeline"] = { ADDED_3_0_2 },
		})),
	}),
	applyclassicphase(WRATH_PHASE_ONE, expansion(EXPANSION.WRATH, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
		ach(125),	-- Grand Master Cook / Northrend Cook [8.0.1+]
		ach(1781, {	-- Critter Gitter
			["cost"] = {{"i", 43004, 10}},	-- 10x Critter Bites
		}),
		ach(1785, {	-- Dinner Impossible
			crit(6626, { ["provider"] = { "i", 34753 }, ["maps"] = { ALTERAC_VALLEY, 1537 } }),	-- Alterac Valley
			crit(6627, { ["provider"] = { "i", 34753 }, ["maps"] = ARATHI_BASIN }),	-- Arathi Basin
			crit(6628, { ["provider"] = { "i", 34753 }, ["maps"] = { WARSONG_GULCH, 1339 } }),	-- Warsong Gulch
			crit(6630, { ["provider"] = { "i", 34753 }, ["maps"] = { EYE_OF_THE_STORM, 397 } }),	-- Eye of the Storm
		}),
		ach(1780, {	-- Second That Emotion
			crit(6450, { ["provider"] = { "i", 43491 } }),	-- Bad Clams
			crit(6715, { ["provider"] = { "i", 43492 } }),	-- Haunted Herring
			crit(6738, { ["provider"] = { "i", 43488 } }),	-- Last Week's Mammoth
			crit(7093, { ["provider"] = { "i", 43490 } }),	-- Tasty Cupcake
		}),
		achpart(1777, 1779),	-- The Northrend Gourmet (15)
		achpart(1778, 1779),	-- The Northrend Gourmet (30)
		ach(1779),	-- The Northrend Gourmet (45)
	}))),
	applyclassicphase(CATA_PHASE_ONE, expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
		ach(4916),	-- Illustrious Grand Master Cook / Cataclysmic Cook [8.0.1+]
		ach(5845, {	-- A Bunch of Lunch (A)
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				5842,	-- Let's Do Lunch: Darnassus
				5841,	-- Let's Do Lunch: Ironforge
				5474,	-- Let's Do Lunch: Stormwind
				-- #if AFTER 5.0.4
				5475,	-- Let's Do Lunch: Orgrimmar
				5843,	-- Let's Do Lunch: Thunder Bluff
				5844,	-- Let's Do Lunch: Undercity
				-- #endif
			}},
			["timeline"] = { ADDED_4_2_0 },
			-- #if BEFORE 5.0.4
			["races"] = ALLIANCE_ONLY,
			-- #endif
		}),
		-- #if BEFORE 5.0.4
		ach(5846, {	-- A Bunch of Lunch (H)
			-- Meta Achievement
			-- #if BEFORE 5.0.4
			["sym"] = {{"meta_achievement",
				5475,	-- Let's Do Lunch: Orgrimmar
				5843,	-- Let's Do Lunch: Thunder Bluff
				5844,	-- Let's Do Lunch: Undercity
			}},
			-- #endif
			["timeline"] = { ADDED_4_2_0, REMOVED_5_0_4 },
			["races"] = HORDE_ONLY,
		}),
		-- #endif
		ach(5779, {	-- You'll Feel Right as Rain
			["cost"] = {{"i", 62680, 91}},	-- 91x Chocolate Cookie
			["timeline"] = { ADDED_4_1_0 },
		}),
		achpart(5472, 5473),	-- The Cataclysmic Gourmet (15)
		ach(5473),	-- The Cataclysmic Gourmet (30)
	}))),
	applyclassicphase(MOP_PHASE_ONE, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
		ach(6365),	-- Zen Master Cook / Pandaria Cook [8.0.1+]
		ach(7306, {	-- Master of Pandaren Cooking (automated)
			title(202),	-- <Name>, Master of the Ways
		}),
		ach(7305),	-- Master of the Brew
		ach(7300),	-- Master of the Grill
		ach(7304),	-- Master of the Oven
		ach(7302),	-- Master of the Pot
		ach(7303),	-- Master of the Steamer
		ach(7301),	-- Master of the Wok
		ach(7329),	-- Pandaren Cuisine
		ach(7330),	-- Pandaren Delicacies
		achpart(7326, 7327),	-- The Pandaren Gourmet (15)
		ach(7327),	-- The Pandaren Gourmet (30)
		header(HEADERS.Faction, 1357, {	-- Nomi
			["description"] = "Summon Nomi once per day using your Cooking School Bell, complete the daily he gives and you'll soon (42+ days later), earn your Apron.\n\nThen this little bastard will learn nothing and burn all of your food in Dalaran.",
			["provider"] = { "i", 86425 },	-- Cooking School Bell
			["sourceQuest"] = 31521,	-- To Be a Master
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(7325),	-- Now I Am the Master (automated)
				}),
				n(FACTIONS, {
					faction(1357, {	-- Nomi (Faction)
						["provider"] = { "n", 64337 },	-- Nomi (Child)
					}),
				}),
				n(QUESTS, {
					q(31820, {	-- A Present for Teacher
						["qg"] = 64337,	-- Nomi (Child)
						["minReputation"] = { 1357, 6 },	-- Nomi, Expert (Best Friend).
						["groups"] = {
							i(86468),	-- Apron
						},
					}),
					q(31337, {	-- A Token of Appreciation
						["qg"] = 64337,	-- Nomi (Child)
						["minReputation"] = { 1357, 6 },	-- Nomi, Expert (Best Friend).
						["isDaily"] = true,
						["groups"] = {
							currency(402),	-- Ironpaw Token
							i(90735),	-- Goodies from Nomi
						},
					}),
					q(31332, {	-- Lesson 1: Sliced Peaches
						["qg"] = 64337,	-- Nomi (Child)
						["minReputation"] = { 1357, 1 },	-- Nomi, Apprentice (Stranger).
						["maxReputation"] = { 1357, 2 },	-- Nomi, Apprentice (Pal).
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/5 Pandaren Peach
								["provider"] = { "i", 74660 },	-- Pandaren Peach
							}),
						},
					}),
					q(31333, {	-- Lesson 2: Instant Noodles
						["qg"] = 64337,	-- Nomi (Child)
						["minReputation"] = { 1357, 2 },	-- Nomi, Apprentice (Pal).
						["maxReputation"] = { 1357, 3 },	-- Nomi, Journeyman (Buddy).
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/5 Instant Noodles
								["provider"] = { "i", 74854 },	-- Instant Noodles
							}),
						},
					}),
					q(31334, {	-- Lesson 3: Toasted Fish Jerky
						["qg"] = 64337,	-- Nomi (Child)
						["minReputation"] = { 1357, 3 },	-- Nomi, Journeyman (Buddy).
						["maxReputation"] = { 1357, 4 },	-- Nomi, Journeyman (Friend).
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/5 Golden Carp
								["provider"] = { "i", 74866 },	-- Golden Carp
							}),
						},
					}),
					q(31335, {	-- Lesson 4: Dried Needle Mushrooms
						["qg"] = 64337,	-- Nomi (Child)
						["minReputation"] = { 1357, 4 },	-- Nomi, Journeyman (Friend).
						["maxReputation"] = { 1357, 5 },	-- Nomi, Journeyman (Good Friend).
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/5 Needle Mushrooms
								["provider"] = { "i", 85583 },	-- Needle Mushrooms
							}),
						},
					}),
					q(31336, {	-- Lesson 5: Pounded Rice Cake
						["qg"] = 64337,	-- Nomi (Child)
						["minReputation"] = { 1357, 5 },	-- Nomi, Journeyman (Good Friend).
						["maxReputation"] = { 1357, 6 },	-- Nomi, Expert (Best Friend).
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/5 Rice
								["provider"] = { "i", 74851 },	-- Rice
							}),
						},
					}),
				}),
			},
		}),
		n(QUESTS, {
			q(31281, {	-- So You Want to Be a Chef...
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 86057, 5 }},	-- 5x Sliced Peaches
			}),
			q(31302, {	-- Ready for Greatness
				["sourceQuests"] = { 31281 },	-- So You Want to be a Chef...
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 86069, 5 }},	-- 5x Rice Pudding
			}),
			q(31479, {	-- Way of the Brew
				["sourceQuests"] = { 31302 },	-- Ready for Greatness
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74845, 1 }},	-- 1x Ginseng
				["groups"] = {
					r(125589),	-- Way of the Brew
				},
			}),
			q(31480, {	-- Have a Drink
				["sourceQuests"] = { 31479 },	-- Way of the Brew
				["provider"] = { "n", 58717 },	-- Bobo Ironpaw
				["coord"] = { 53.2, 52.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 75026, 1 }},	-- 1x Ginseng Tea
			}),
			q(31311, {	-- Way of the Grill
				["sourceQuests"] = { 31302 },	-- Ready for Greatness
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74833, 5 }},	-- 5x Raw Tiger Steak
				["groups"] = {
					r(124694),	-- Way of the Grill
				},
			}),
			q(31467, {	-- Strong as a Tiger
				["sourceQuests"] = { 31311 },	-- Way of the Grill
				["provider"] = { "n", 58712 },	-- Kol Ironpaw
				["coord"] = { 53.0, 51.3, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74642, 5 }},	-- 5x Charbroiled Tiger Steak
			}),
			q(31478, {	-- Way of the Oven
				["sourceQuests"] = { 31302 },	-- Ready for Greatness
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74839, 5 }},	-- 5x Wildfowl Breast
				["groups"] = {
					r(125588),	-- Way of the Oven
				},
			}),
			q(31477, {	-- Endurance
				["sourceQuests"] = { 31478 },	-- Way of the Oven
				["provider"] = { "n", 58716 },	-- Jian Ironpaw
				["coord"] = { 53.4, 51.6, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74654, 5 }},	-- 5x Wildfowl Roast
			}),
			q(31472, {	-- Way of the Pot
				["sourceQuests"] = { 31302 },	-- Ready for Greatness
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74856, 5 }},	-- 5x Jade Lungfish
				["groups"] = {
					r(125586),	-- Way of the Pot
				},
			}),
			q(31474, {	-- The Soup of Contemplation
				["sourceQuests"] = { 31472 },	-- Way of the Pot
				["provider"] = { "n", 58714 },	-- Mei Mei Ironpaw
				["coord"] = { 52.5, 51.6, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74644, 5 }},	-- 5x Swirling Mist Soup
			}),
			q(31475, {	-- Way of the Steamer
				["sourceQuests"] = { 31302 },	-- Ready for Greatness
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74857, 5 }},	-- 5x Giant Mantis Shrimp
				["groups"] = {
					r(125587),	-- Way of the Steamer
				},
			}),
			q(31476, {	-- The Spirit of Cooking
				["sourceQuests"] = { 31475 },	-- Way of the Steamer
				["provider"] = { "n", 58715 },	-- Yan Ironpaw
				["coord"] = { 52.5, 51.7, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74651, 5 }},	-- 5x Shrimp Dumplings
			}),
			q(31470, {	-- Way of the Wok
				["sourceQuests"] = { 31302 },	-- Ready for Greatness
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74841, 5 }},	-- 5x Juicycrunch Carrot
				["groups"] = {
					r(125584),	-- Way of the Wok
				},
			}),
			q(31471, {	-- Agile as a Tiger
				["sourceQuests"] = { 31470 },	-- Way of the Wok
				["provider"] = { "n", 58713 },	-- Anthea Ironpaw
				["coord"] = { 52.7, 52.0, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74643, 5 }},	-- 5x Sauteed Carrots
			}),
			q(31536, {	-- Preserving Freshness
				["sourceQuests"] = {
					31471,	-- Agile as a Tiger
					31477,	-- Endurance
					31480,	-- Have a Drink
					31467,	-- Strong as a Tiger
					31474,	-- The Soup of Contemplation
					31476,	-- The Spirit of Cooking
				},
				["provider"] = { "n", 64395 },	-- Nam Ironpaw
				["coord"] = { 53.5, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 87658, 1 }},	-- 1x Empty Raw Tiger Steak Container
			}),
			header(HEADERS.Spell, 145062, applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0 } }, {
				q(33018, {	-- Noodle Secrets Long Forgotten
					["sourceQuests"] = {
						31471,	-- Agile as a Tiger
						31477,	-- Endurance
						31480,	-- Have a Drink
						31467,	-- Strong as a Tiger
						31474,	-- The Soup of Contemplation
						31476,	-- The Spirit of Cooking
					},
					["provider"] = { "o", 221376 },	-- Old Sign Fragment
					["coord"] = { 52.1, 46.5, TIMELESS_ISLE },
				}),
				q(33020, {	-- The Lost Secret of the Secret Ingredient
					["sourceQuests"] = { 33018 },	-- Noodle Secrets Long Forgotten
					["provider"] = { "n", 72426 },	-- Lin Chao-Wei
					["coord"] = { 41.2, 73.4, TIMELESS_ISLE },
					["maps"] = { 429, 430 },	-- Temple of the Jade Serpent
				}),
				q(33107, {	-- Bad Feeling, Worse Result
					["sourceQuests"] = { 33020 },	-- The Lost Secret of the Secret Ingredient
					["provider"] = { "o", 221413 },	-- Lin Family Scroll
					["coord"] = { 68.8, 58.4, 429 },	-- Temple of the Jade Serpent
					["maps"] = { 430 },	-- Temple of the Jade Serpent
					["modelScale"] = 2,
				}),
				q(33021, {	-- Secrets Lost, Forever?
					["sourceQuests"] = { 33107 },	-- Bad Feeling, Worse Result
					["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
					["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				}),
				q(33022, {	-- Catch and Carry
					["sourceQuests"] = { 33021 },	-- Secrets Lost, Forever?
					["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
					["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						r(145038),	-- Noodle Cart Kit
					},
				}),
				q(33024, {	-- Is That A Real Measurement?
					["sourceQuests"] = { 33022 },	-- Catch and Carry
					["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
					["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
					["maps"] = { 439, 440, 441, 442 },	-- Stormstout Brewery
					["cost"] = {{ "i", 101661, 1 }},	-- 1x Noodle Cart Kit
					["groups"] = {
						r(145061),	-- Deluxe Noodle Cart Kit
					},
				}),
				q(33026, {	-- These Aren't Your Fatty Goatsteaks
					["sourceQuests"] = { 33024 },	-- Is That a Real Measurement?
					["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
					["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
					["cost"] = {{ "i", 101661, 1 }},	-- 1x Deluxe Noodle Cart Kit
				}),
				q(33027, {	-- The Secret Ingredient Is...
					["sourceQuests"] = { 33026 },	-- These Aren't Your Fatty Goatsteaks
					["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
					["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						r(145062),	-- Pandaren Treasure Noodle Cart Kit
					},
				}),
			}))),
		}),
	}))),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
		ach(9500),	-- Draenor Cook
		ach(9502),	-- Draenor Cuisine
		ach(9501),	-- The Draenor Gourmet
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(10589),	-- Legion Cook
			ach(10593, {	-- Everything Tastes Better
				["cost"] = {{"i", 133681, 6}},	-- 6x Crispy Bacon
			}),
			ach(10592, {	-- Never A Day's Rest
				["provider"] = { "n", 101846 },	-- Nomi
				["coords"] = {
					{ 69.8, 38.6, LEGION_DALARAN },
					{ 40.2, 65.8, LEGION_DALARAN },
				},
			}),
			ach(10762),	-- The Legion Menu
		}),
		n(QUESTS, {
			q(40990, {	-- A Good Recipe List
				["sourceQuests"] = {
					40988,	-- Too Many Cooks
					40989,	-- The Prodigal Sous Chef
				},
				["provider"] = { "n", 101846 },	-- Nomi
				["coord"] = { 69.8, 38.8, LEGION_DALARAN },
			}),
			q(40991, {	-- Opening the Test Kitchen
				["sourceQuests"] = { 40990 },	-- A Good Recipe List
				["provider"] = { "n", 101846 },	-- Nomi
				["groups"] = {
					ach(10591),	-- All Grown Up
				},
			}),
			q(44581, {	-- Spicing Things Up
				["provider"] = { "n", 101846 },	-- Nomi
				["groups"] = {
					i(133826),	-- Recipe: Dried Mackerel Strips [Rank 1] (RECIPE!)
				},
			}),
			q(40989, {	-- The Prodigal Sous Chef
				["description"] = "If you cooked with Nomi while questing in Pandaria, you will receive this quest instead of 'Too Many Chefs'.",
				["provider"] = { "n", 102546 },	-- Nomi
				["groups"] = {
					i(133826),	-- Recipe: Dried Mackerel Strips [Rank 1] (RECIPE!)
				},
			}),
			q(40988, {	-- Too Many Chefs
				["description"] = "If you did not cook with Nomi while questing in Pandaria, you will receive this quest instead of 'The Prodigal Sous Chef'.",
				["provider"] = { "n", 102546 },	-- Nomi
				["groups"] = {
					i(133826),	-- Recipe: Dried Mackerel Strips [Rank 1] (RECIPE!)
				},
			}),
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(12742, {	-- Kul Tiran Cook [A]
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12743, {	-- Zandalari Cook [H]
				["races"] = HORDE_ONLY,
			}),
			ach(12747, {	-- Catering for Combat
				["cost"] = {
					{ "i", 156525, 50 },	-- 50x Galley Banquet
					{ "i", 156526, 50 },	-- 50x Bountiful Captain's Feast
					-- #if AFTER 8.1.0
					{ "i", 166240, 50 },	-- 50x Sanguinated Feast
					-- #endif
					-- #if AFTER 8.2.0
					{ "i", 168315, 50 },	-- 50x Famine Evaluator And Snack Table
					-- #endif
				},
			}),
			ach(12744, {	-- The Kul Tiran Menu
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12746, {	-- The Zandalari Menu
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(244325, {	-- Zuldazar Cook's Griddle (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
					}),
				},
			}),
		}),
		n(QUESTS, {
			q(54469, {	-- Fresh Dishes (A)
				["provider"] = { "n", 136052 },	-- "Cap'n" Byron Mehlsack <Cooking Trainer>
				["coord"] = { 71.2, 10.8, BORALUS },
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
				["races"] = ALLIANCE_ONLY,
			}),
			q(54470, {	-- Fresh Dishes [H]
				["provider"] = { "n", 141549 },	-- T'sarah the Royal Chef <Cooking Trainer>
				["coord"] = { 28.5, 50.0, HALL_OF_CHRONICLERS },
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
				["races"] = HORDE_ONLY,
			}),
		}),
	})),
	expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
		ach(14332),	-- Shadowlands Cook
	})),
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(16631),	-- Dragon Isles Cook
			ach(17736, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- The Gift of Cheese
				["cost"] = {{ "i", 204848, 50 }},	-- 50x Charitable Cheddar
				["groups"] = {
					i(204894, {	-- Roland (PET!)
						["description"] = "Roland will also teach your alts the recipes for Deviously Deviled Eggs and Charitable Cheddar, if you learned the recipes via the original source.",
						["groups"] = {
							r(407100),	-- Charitable Cheddar
							r(403018),	-- Deviously Deviled Eggs
						},
					}),
				},
			})),
		}),
		n(QUESTS, {
			q(72251, {	-- Dragon Isles Cooking
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Cooking.",
				["provider"] = { "n", 193121 },	-- Head Chef Stacks
				["coord"] = { 47.1, 82.7, THE_WAKING_SHORES },
				["lockCriteria"] = { 1, "spellID", 366256 },	-- Dragon Isles Cooking
			}),
			q(72250, {	-- Dragon Isles Cooking
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Cooking.",
				["provider"] = { "n", 198094 },	-- Head Chef Stacks
				["coord"] = { 76.4, 35.7, THE_WAKING_SHORES },
				["lockCriteria"] = { 1, "spellID", 366256 },	-- Dragon Isles Cooking
			}),
		}),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(ACHIEVEMENTS, {
			ach(19414),	-- Algari Cook
		}),
	})),
	expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(42795, {	-- Cooking at Midnight
				["timeline"] = { ADDED_12_0_X_LAUNCH },
				["groups"] = {
				},
			}),
		}),
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	n(PROFESSIONS, {
		prof(COOKING, {
			q(45341),	-- Tracking Quest - after obtaining the Chef's Hat toy (itemID 134020)
		}),
	}),
})));
