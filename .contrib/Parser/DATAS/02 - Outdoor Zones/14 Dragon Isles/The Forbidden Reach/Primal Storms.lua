---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_7 } }, {
	m(THE_FORBIDDEN_REACH, {
		n(PRIMAL_STORMS, {
			n(ACHIEVEMENTS, {
				ach(17540, {	-- Under the Weather
					crit(58567, {	-- Air
						["_npcs"] = { 198914 },	-- Han'thul
					}),
					crit(58568, {	-- Earth
						["_npcs"] = { 198915 },	-- Khirna Cragheart
					}),
					crit(58569, {	-- Fire
						["_npcs"] = { 198916 },	-- Fael'lin
					}),
					crit(58570, {	-- Water
						["_npcs"] = { 198917 },	-- Shukoro Rapidstamer
					}),
				}),
			}),
			n(COMMON_BOSS_DROPS, {
				i(204352, {	-- Leftover Elemental Slime
					["crs"] = {
						198914,	-- Han'thul
						198915,	-- Khirna Cragheart
						198916,	-- Fael'lin
						198917,	-- Shukoro Rapidstamer
					},
				}),
			}),
			n(RARES, {
				n(198916, {	-- Fael'lin
					["questID"] = 75403,
					["isDaily"] = true,
				}),
				n(198914, {	-- Han'thul
					["questID"] = 75404,
					["isDaily"] = true,
				}),
				n(198915, {	-- Khirna Cragheart
					["questID"] = 75406,
					["isDaily"] = true,
				}),
				n(198917, {	-- Shukoro Rapidstamer
					["questID"] = 75405,
					["isDaily"] = true,
				}),
			}),
			n(SPECIAL, {
				i(192785, {	-- Gooey Snailemental (MOUNT!)
					["cost"] = { { "i", 204352, 50 } },	-- 50x Leftover Elemental Slime
				}),
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {
	m(DRAGON_ISLES, {
		m(THE_FORBIDDEN_REACH, {
			n(PRIMAL_STORMS, {
				q(75399),	-- Water Storm Mini-Boss
				q(75400),	-- Fire Storm Mini-Boss
				q(75401),	-- Earth Storm Mini-Boss
				q(75402),	-- Air Storm Mini-Boss
			}),
		}),
	}),
})));
