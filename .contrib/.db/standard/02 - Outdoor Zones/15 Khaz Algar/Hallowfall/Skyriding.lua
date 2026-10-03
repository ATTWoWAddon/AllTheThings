---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(HALLOWFALL, {
		skyriding(n(SKYRIDING, {
			n(ACHIEVEMENTS, {
				ach(40334, {	-- Hallowfall: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20363,	-- Dunelle's Detour: Bronze
						20381,	-- Light's Redoubt Descent: Bronze
						20399,	-- Mereldar Meander: Bronze
						20390,	-- Stillstone Slalom: Bronze
						20372,	-- Tenir's Traversal: Bronze
						20408,	-- Velhan's Venture: Bronze
					}},
				}),
				ach(40335, {	-- Hallowfall: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20364,	-- Dunelle's Detour: Silver
						20382,	-- Light's Redoubt Descent: Silver
						20400,	-- Mereldar Meander: Silver
						20391,	-- Stillstone Slalom: Silver
						20373,	-- Tenir's Traversal: Silver
						20409,	-- Velhan's Venture: Silver
					}},
				}),
				ach(40336, {	-- Hallowfall: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20365,	-- Dunelle's Detour: Gold
						20383,	-- Light's Redoubt Descent: Gold
						20401,	-- Mereldar Meander: Gold
						20392,	-- Stillstone Slalom: Gold
						20374,	-- Tenir's Traversal: Gold
						20410,	-- Velhan's Venture: Gold
					}},
				}),
				ach(40337, {	-- Hallowfall Advanced: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20366,	-- Dunelle's Detour Advanced: Bronze
						20384,	-- Light's Redoubt Descent Advanced: Bronze
						20402,	-- Mereldar Meander Advanced: Bronze
						20393,	-- Stillstone Slalom Advanced: Bronze
						20375,	-- Tenir's Traversal Advanced: Bronze
						20411,	-- Velhan's Venture Advanced: Bronze
					}},
				}),
				ach(40338, {	-- Hallowfall Advanced: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20367,	-- Dunelle's Detour Advanced: Silver
						20385,	-- Light's Redoubt Descent Advanced: Silver
						20403,	-- Mereldar Meander Advanced: Silver
						20394,	-- Stillstone Slalom Advanced: Silver
						20376,	-- Tenir's Traversal Advanced: Silver
						20412,	-- Velhan's Venture Advanced: Silver
					}},
				}),
				ach(40339, {	-- Hallowfall Advanced: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20368,	-- Dunelle's Detour Advanced: Gold
						20386,	-- Light's Redoubt Descent Advanced: Gold
						20404,	-- Mereldar Meander Advanced: Gold
						20395,	-- Stillstone Slalom Advanced: Gold
						20377,	-- Tenir's Traversal Advanced: Gold
						20413,	-- Velhan's Venture Advanced: Gold
					}},
				}),
				ach(40340, {	-- Hallowfall Reverse: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20369,	-- Dunelle's Detour Reverse: Bronze
						20387,	-- Light's Redoubt Descent Reverse: Bronze
						20405,	-- Mereldar Meander Reverse: Bronze
						20396,	-- Stillstone Slalom Reverse: Bronze
						20378,	-- Tenir's Traversal Reverse: Bronze
						20414,	-- Velhan's Venture Reverse: Bronze
					}},
				}),
				ach(40341, {	-- Hallowfall Reverse: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20370,	-- Dunelle's Detour Reverse: Silver
						20388,	-- Light's Redoubt Descent Reverse: Silver
						20406,	-- Mereldar Meander Reverse: Silver
						20397,	-- Stillstone Slalom Reverse: Silver
						20379,	-- Tenir's Traversal Reverse: Silver
						20415,	-- Velhan's Venture Reverse: Silver
					}},
				}),
				ach(40342, {	-- Hallowfall Reverse: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20371,	-- Dunelle's Detour Reverse: Gold
						20389,	-- Light's Redoubt Descent Reverse: Gold
						20407,	-- Mereldar Meander Reverse: Gold
						20398,	-- Stillstone Slalom Reverse: Gold
						20380,	-- Tenir's Traversal Reverse: Gold
						20416,	-- Velhan's Venture Reverse: Gold
					}},
				}),
			}),
			n(QUESTS, {
				skyridingrace(80256, {	-- Dunelle's Detour
					["provider"] = { "n", 219557 },	-- Bronze Timekeeper
					["coord"] = { 72.8, 38.4, HALLOWFALL },
					["groups"] = {
						ach(20363),	-- Dunelle's Detour: Bronze
						ach(20364),	-- Dunelle's Detour: Silver
						ach(20365),	-- Dunelle's Detour: Gold
					},
				}),
				skyridingrace(80265, {	-- Dunelle's Detour - Advanced
					["provider"] = { "n", 219557 },	-- Bronze Timekeeper
					["coord"] = { 72.8, 38.4, HALLOWFALL },
					["groups"] = {
						ach(20366),	-- Dunelle's Detour Advanced: Bronze
						ach(20367),	-- Dunelle's Detour Advanced: Silver
						ach(20368),	-- Dunelle's Detour Advanced: Gold
					},
				}),
				skyridingrace(80271, {	-- Dunelle's Detour - Reverse
					["provider"] = { "n", 219557 },	-- Bronze Timekeeper
					["coord"] = { 72.8, 38.4, HALLOWFALL },
					["groups"] = {
						ach(20369),	-- Dunelle's Detour Reverse: Bronze
						ach(20370),	-- Dunelle's Detour Reverse: Silver
						ach(20371),	-- Dunelle's Detour Reverse: Gold
					},
				}),
				skyridingrace(80258, {	-- Light's Redoubt Descent
					["provider"] = { "n", 219559 },	-- Bronze Timekeeper
					["coord"] = { 41.4, 67.2, HALLOWFALL },
					["groups"] = {
						ach(20381),	-- Light's Redoubt Descent: Bronze
						ach(20382),	-- Light's Redoubt Descent: Silver
						ach(20383),	-- Light's Redoubt Descent: Gold
					},
				}),
				skyridingrace(80267, {	-- Light's Redoubt Descent - Advanced
					["provider"] = { "n", 219559 },	-- Bronze Timekeeper
					["coord"] = { 41.4, 67.2, HALLOWFALL },
					["groups"] = {
						ach(20384),	-- Light's Redoubt Descent Advanced: Bronze
						ach(20385),	-- Light's Redoubt Descent Advanced: Silver
						ach(20386),	-- Light's Redoubt Descent Advanced: Gold
					},
				}),
				skyridingrace(80273, {	-- Light's Redoubt Descent - Reverse
					["provider"] = { "n", 219559 },	-- Bronze Timekeeper
					["coord"] = { 41.4, 67.2, HALLOWFALL },
					["groups"] = {
						ach(20387),	-- Light's Redoubt Descent Reverse: Bronze
						ach(20388),	-- Light's Redoubt Descent Reverse: Silver
						ach(20389),	-- Light's Redoubt Descent Reverse: Gold
					},
				}),
				skyridingrace(80260, {	-- Mereldar Meander
					["provider"] = { "n", 219561 },	-- Bronze Timekeeper
					["coord"] = { 39.0, 61.4, HALLOWFALL },
					["groups"] = {
						ach(20399),	-- Mereldar Meander: Bronze
						ach(20400),	-- Mereldar Meander: Silver
						ach(20401),	-- Mereldar Meander: Gold
					},
				}),
				skyridingrace(80269, {	-- Mereldar Meander - Advanced
					["provider"] = { "n", 219561 },	-- Bronze Timekeeper
					["coord"] = { 39.0, 61.4, HALLOWFALL },
					["groups"] = {
						ach(20402),	-- Mereldar Meander Advanced: Bronze
						ach(20403),	-- Mereldar Meander Advanced: Silver
						ach(20404),	-- Mereldar Meander Advanced: Gold
					},
				}),
				skyridingrace(80275, {	-- Mereldar Meander - Reverse
					["provider"] = { "n", 219561 },	-- Bronze Timekeeper
					["coord"] = { 39.0, 61.4, HALLOWFALL },
					["groups"] = {
						ach(20405),	-- Mereldar Meander Reverse: Bronze
						ach(20406),	-- Mereldar Meander Reverse: Silver
						ach(20407),	-- Mereldar Meander Reverse: Gold
					},
				}),
				skyridingrace(80259, {	-- Stillstone Slalom
					["provider"] = { "n", 219560 },	-- Bronze Timekeeper
					["coord"] = { 60.4, 26.0, HALLOWFALL },
					["groups"] = {
						ach(20390),	-- Stillstone Slalom: Bronze
						ach(20391),	-- Stillstone Slalom: Silver
						ach(20392),	-- Stillstone Slalom: Gold
					},
				}),
				skyridingrace(80268, {	-- Stillstone Slalom - Advanced
					["provider"] = { "n", 219560 },	-- Bronze Timekeeper
					["coord"] = { 60.4, 26.0, HALLOWFALL },
					["groups"] = {
						ach(20393),	-- Stillstone Slalom Advanced: Bronze
						ach(20394),	-- Stillstone Slalom Advanced: Silver
						ach(20395),	-- Stillstone Slalom Advanced: Gold
					},
				}),
				skyridingrace(80274, {	-- Stillstone Slalom - Reverse
					["provider"] = { "n", 219560 },	-- Bronze Timekeeper
					["coord"] = { 60.4, 26.0, HALLOWFALL },
					["groups"] = {
						ach(20396),	-- Stillstone Slalom Reverse: Bronze
						ach(20397),	-- Stillstone Slalom Reverse: Silver
						ach(20398),	-- Stillstone Slalom Reverse: Gold
					},
				}),
				skyridingrace(80257, {	-- Tenir's Traversal
					["provider"] = { "n", 219558 },	-- Bronze Timekeeper
					["coord"] = { 59.2, 68.9, HALLOWFALL },
					["groups"] = {
						ach(20372),	-- Tenir's Traversal: Bronze
						ach(20373),	-- Tenir's Traversal: Silver
						ach(20374),	-- Tenir's Traversal: Gold
					},
				}),
				skyridingrace(80266, {	-- Tenir's Traversal - Advanced
					["provider"] = { "n", 219558 },	-- Bronze Timekeeper
					["coord"] = { 59.2, 68.9, HALLOWFALL },
					["groups"] = {
						ach(20375),	-- Tenir's Traversal Advanced: Bronze
						ach(20376),	-- Tenir's Traversal Advanced: Silver
						ach(20377),	-- Tenir's Traversal Advanced: Gold
					},
				}),
				skyridingrace(80272, {	-- Tenir's Traversal - Reverse
					["provider"] = { "n", 219558 },	-- Bronze Timekeeper
					["coord"] = { 59.2, 68.9, HALLOWFALL },
					["groups"] = {
						ach(20378),	-- Tenir's Traversal Reverse: Bronze
						ach(20379),	-- Tenir's Traversal Reverse: Silver
						ach(20380),	-- Tenir's Traversal Reverse: Gold
					},
				}),
				skyridingrace(80261, {	-- Velhan's Venture
					["provider"] = { "n", 219562 },	-- Bronze Timekeeper
					["coord"] = { 54.1, 17.4, HALLOWFALL },
					["groups"] = {
						ach(20408),	-- Velhan's Venture: Bronze
						ach(20409),	-- Velhan's Venture: Silver
						ach(20410),	-- Velhan's Venture: Gold
					},
				}),
				skyridingrace(80270, {	-- Velhan's Venture - Advanced
					["provider"] = { "n", 219562 },	-- Bronze Timekeeper
					["coord"] = { 54.1, 17.4, HALLOWFALL },
					["groups"] = {
						ach(20411),	-- Velhan's Venture Advanced: Bronze
						ach(20412),	-- Velhan's Venture Advanced: Silver
						ach(20413),	-- Velhan's Venture Advanced: Gold
					},
				}),
				skyridingrace(80276, {	-- Velhan's Venture - Reverse
					["provider"] = { "n", 219562 },	-- Bronze Timekeeper
					["coord"] = { 54.1, 17.4, HALLOWFALL },
					["groups"] = {
						ach(20414),	-- Velhan's Venture Reverse: Bronze
						ach(20415),	-- Velhan's Venture Reverse: Silver
						ach(20416),	-- Velhan's Venture Reverse: Gold
					},
				}),
			}),
		})),
	}),
}));
