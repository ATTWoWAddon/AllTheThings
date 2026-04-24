-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(n(RATED, {
	["timeline"] = { ADDED_4_0_3 },
	["groups"] = {
		n(ACHIEVEMENTS, {
			n(FACTION_HEADER_ALLIANCE, {
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					ach(5330, {	-- Private
						title(154),	-- Private
					}),
					ach(5331, {	-- Corporal
						title(155),	-- Corporal
					}),
					ach(5332, {	-- Sergeant
						title(156),	-- Sergeant
					}),
					ach(5333, {	-- Master Sergeant
						title(157),	-- Master Sergeant
					}),
					ach(5334, {	-- Sergeant Major
						title(158),	-- Sergeant Major
					}),
					ach(5335, {	-- Knight
						title(159),	-- Knight
					}),
					ach(5336, {	-- Knight-Lieutenant
						title(160),	-- Knight-Lieutenant
					}),
					ach(5337, {	-- Knight-Captain
						title(161),	-- Knight-Captain
					}),
					ach(5359, {	-- Knight-Champion
						title(162),	-- Knight-Champion
					}),
					ach(5339, {	-- Lieutenant Commander
						title(163),	-- Lieutenant Commander
					}),
					ach(5340, {	-- Commander
						title(164),	-- Commander
					}),
					ach(5341, {	-- Marshal
						title(165),	-- Marshal
					}),
					ach(5357, {	-- Field Marshal
						title(166),	-- Field Marshal
					}),
					ach(5343, {	-- Grand Marshal
						title(167),	-- Grand Marshal
					}),
					ach(6942, {	-- Hero of the Alliance
						["timeline"] = { ADDED_5_0_4 },
						["groups"] = {
							title(182),	-- Hero of the Alliance
						},
					}),
					ach(5268),	-- In Service of the Alliance (1)
					ach(5322),	-- In Service of the Alliance (10)
					ach(5327),	-- In Service of the Alliance (25)
					ach(5328, {	-- Veteran of the Alliance
						i(70909),	-- Vicious War Steed (MOUNT!)
						title(152),	-- Veteran of the Alliance
					}),
					ach(5823, {	-- Veteran of the Alliance II
						["timeline"] = { ADDED_4_2_0 },
						["groups"] = {
							i(70909),	-- Vicious War Steed (MOUNT!)
						},
					}),
					ach(5329, {	-- Warbound Veteran of the Alliance
						title(145),	-- Warbound
					}),
				},
			}),
			n(FACTION_HEADER_HORDE, {
				["races"] = HORDE_ONLY,
				["groups"] = {
					ach(5345, {	-- Scout
						title(168),	-- Scout
					}),
					ach(5346, {	-- Grunt
						title(169),	-- Grunt
					}),
					ach(5347, {	-- Sergeant
						title(170),	-- Sergeant
					}),
					ach(5348, {	-- Senior Sergeant
						title(171),	-- Senior Sergeant
					}),
					ach(5349, {	-- First Sergeant
						title(172),	-- First Sergeant
					}),
					ach(5350, {	-- Stone Guard
						title(173),	-- Stone Guard
					}),
					ach(5351, {	-- Blood Guard
						title(174),	-- Blood Guard
					}),
					ach(5352, {	-- Legionnaire
						title(175),	-- Legionnaire
					}),
					ach(5338, {	-- Centurion
						title(176),	-- Centurion
					}),
					ach(5353, {	-- Champion
						title(177),	-- Champion
					}),
					ach(5354, {	-- Lieutenant General
						title(178),	-- Lieutenant General
					}),
					ach(5355, {	-- General
						title(179),	-- General
					}),
					ach(5342, {	-- Warlord
						title(180),	-- Warlord
					}),
					ach(5356, {	-- High Warlord
						title(181),	-- High Warlord
					}),
					ach(6941, {	-- Hero of the Horde
						["timeline"] = { ADDED_5_0_4 },
						["groups"] = {
							title(183),	-- Hero of the Horde
						},
					}),
					ach(5269),	-- In Service of the Horde (1)
					ach(5323),	-- In Service of the Horde (10)
					ach(5324),	-- In Service of the Horde (25)
					ach(5325, {	-- Veteran of the Horde
						i(70910),	-- Vicious War Wolf (MOUNT!)
						title(153),	-- Veteran of the Horde
					}),
					ach(5824, {	-- Veteran of the Horde II
						["timeline"] = { ADDED_4_2_0 },
						["groups"] = {
							i(70910),	-- Vicious War Wolf (MOUNT!)
						},
					}),
					ach(5326, {	-- Warbringer of the Horde
						-- #if NOT ANYCLASSIC
						title(144),	-- Warbringer <Name>
						-- #else
						title(217),	-- Warbringer <Name>
						-- #endif
					}),
				},
			}),
		}),
		n(REWARDS, {
			filter(RECIPES, bubbleDown({ ["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 }, }, {
				-- #if BEFORE 8.0.1
				["description"] = "This has a chance to drop from any rated battleground win during Legion.",
				-- #endif
				["groups"] = {
					-- Added to Vendor in 10.0.7
					i(137894),	-- Pattern: Dreadleather Shoulderguard [Rank 3] (RECIPE!)
					i(137926),	-- Pattern: Gravenscale Spaulders [Rank 3] (RECIPE!)
					i(137975, {	-- Pattern: Imbued Silkweave Epaulets [Rank 3] (RECIPE!)
						["requireSkill"] = TAILORING,
					}),
					i(123950),	-- Plans: Demonsteel Pauldrons [Rank 3] (RECIPE!)
				},
			})),
			i(182167, {	-- Cobra Soul (SS!)
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}),
			i(182170, {	-- Gryphon Soul (SS!)
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}),
			i(103533, {	-- Vicious Saddle
				-- #if BEFORE 10.0.2
				["description"] = "Offered as Season Reward Cap after you received your Seasonal Mount, up to 10 times per Season.\nAny win above 1000 rating will reward:\n10 points in 2v2 (0.42%)\n30 points in 3v3 (1.25%)\n60 points in RBG (2.5%)",
				-- #elseif AFTER 11.0.0
				["description"] = "Offered as Season Reward Cap after you received your Seasonal Mount, up to 10 times per Season.\nAny win (3 round wins or more for Solo Shuffle) above 1000 rating will reward:\n10 points in 2v2 (0.42%)\n30 points in 3v3 (1.25%)\n50 points in Solo Shuffle (2.08%)\n50 points in BGBlitz (2.08%)\n60 points in RBG (2.5%)",
				-- #else
				["description"] = "Offered as Season Reward Cap after you received your Seasonal Mount, up to 10 times per Season.\nAny win (3 round wins or more for Solo Shuffle) above 1000 rating will reward:\n10 points in 2v2 (0.42%)\n30 points in 3v3 (1.25%)\n50 points in Solo Shuffle (2.08%)\n60 points in RBG (2.5%)",
				-- #endif
				["timeline"] = { ADDED_5_4_0 },
			}),
			i(165717, {	-- Steel Strong Box, 2v2/3v3/RBG sometimes on Lose, contains only BFA Mats - Ally
				["timeline"] = { ADDED_8_1_0 },
			}),
			i(165718, {	-- Steel Strong Box, 2v2/3v3/RBG sometimes on Lose, contains only BFA Mats - Horde
				["timeline"] = { ADDED_8_1_0 },
			}),
			title(96, {	-- <Name> the Flawless Victor
				["timeline"] = { ADDED_3_0_2, REMOVED_3_1_0 },
				["collectible"] = false,
			}),
			i(182184, {	-- Wyvern Soul (SS!)
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}),
		}),
	},
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	pvp(n(RATED, {
		q(70714),	-- completion of a Rated 'Solo Shuffle'
	})),
})));
