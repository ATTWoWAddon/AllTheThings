-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(n(ARENA, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- Arena
	n(ACHIEVEMENTS, {
		ach(397),	-- Step Into the Arena [1]
		ach(398),	-- Mercilessly Dedicated [100]
		ach(875),	-- Vengefully Dedicated
		ach(876, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_3 } }, {	-- Brutally Dedicated
			i(43349),	-- Tabard of Brute Force
		})),
		ach(2090, {	-- Challenger
			title(32, {	-- Challenger
				["collectible"] = false,
			}),
		}),
		ach(2092, {	-- Duelist
			title(30, {	-- Duelist
				["collectible"] = false,
			}),
		}),
		ach(2091, {	-- Gladiator
			title(29, {	-- Gladiator
				["collectible"] = false,
			}),
		}),
		ach(406, {	-- High Five: 1550
			["timeline"] = { ADDED_3_0_2, REMOVED_6_2_0 },
		}),
		ach(407, {	-- High Five: 1750
			["timeline"] = { ADDED_3_0_2, REMOVED_6_2_0 },
		}),
		ach(404, {	-- High Five: 2000
			["timeline"] = { ADDED_3_0_2, REMOVED_6_2_0 },
		}),
		ach(1161, {	-- High Five: 2200
			["timeline"] = { ADDED_3_0_2, REMOVED_6_2_0 },
		}),
		ach(408),	-- Hot Streak
		ach(1162),	-- Hotter Streak
		ach(399),	-- Just the Two of Us: 1550
		ach(400),	-- Just the Two of Us: 1750
		ach(401),	-- Just the Two of Us: 2000
		ach(1159),	-- Just the Two of Us: 2200
		ach(409, {	-- Last Man Standing
			["timeline"] = { ADDED_3_0_2, REMOVED_6_2_0 },
		}),
		ach(2093, {	-- Rival
			title(31, {	-- Rival
				["collectible"] = false,
			}),
		}),
		ach(15539, {	-- Solo Aspirations
			["timeline"] = { ADDED_9_2_0 },
		}),
		ach(15511, {	-- Solely Motivated
			["timeline"] = { ADDED_9_2_0 },
		}),
		ach(15540, {	-- Steadfast Soloist
			["timeline"] = { ADDED_9_2_0 },
		}),
		ach(15541, {	-- Sole Survivor
			["timeline"] = { ADDED_9_2_0 },
		}),
		ach(15543, {	-- Successful Solos
			["timeline"] = { ADDED_9_2_0 },
		}),
		ach(15544, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_0 } }, {	-- Supreme Soloist
			title(456),	-- Soloist <Name>
		})),
		ach(1174, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2, REMOVED_7_0_3 } }, {	-- The Arena Master
			title(50),	-- Arena Master <Name>
		})),
		ach(402),	-- Three's Company: 1550
		ach(403),	-- Three's Company: 1750
		ach(405),	-- Three's Company: 2000
		ach(1160),	-- Three's Company: 2200
		ach(5266),	-- Three's Company: 2400
		ach(5267),	-- Three's Company: 2700
		ach(699, {	-- World Wide Winner
			["sym"] = {{ "achievement_criteria" }},
		}),
	}),
}))));
