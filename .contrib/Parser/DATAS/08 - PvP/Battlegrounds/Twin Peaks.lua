-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, {
	m(206, {	-- Twin Peaks
		["icon"] = 136026,
		["timeline"] = { ADDED_4_0_3 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(5223, {	-- Master of Twin Peaks
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {{"meta_achievement",
						5209,	-- Twin Peaks Veteran
						5210,	-- Two-Timer
						5211,	-- Top Defender
						5213,	-- Soaring Spirits (A)
						5214,	-- Soaring Spirits (H)
						5215,	-- Twin Peaks Perfection
						5216,	-- Peak Speed
						5226,	-- Cloud Nine (A)
						5227,	-- Cloud Nine (H)
						5229,	-- Drag a Maw
						5228,	-- Wild Hammering
						5220,	-- I'm in the Black Lodge
						5219,	-- I'm in the White Lodge
						5221,	-- Fire, Walk With Me (A)
						5222,	-- Fire, Walk With Me (H)
						5230,	-- Twin Peaks Mountaineer
						5231,	-- Double Jeopardy (A)
						5552,	-- Double Jeopardy (H)
					}},
					["groups"] = {
						i(247727, {	-- Iron Dragonmaw Gate (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					},
				}),
				ach(5208, {	-- Twin Peaking
					["rank"] = 1,
				}),
				ach(5209, {	-- Twin Peaks Veteran
					["rank"] = 100,
				}),
				ach(5210),	-- Two-Timer
				ach(5211),	-- Top Defender
				ach(5213, {	-- Soaring Spirits (A)
					["races"] = ALLIANCE_ONLY,
				}),
				ach(5214, {	-- Soaring Spirits (H)
					["races"] = HORDE_ONLY,
				}),
				ach(5215),	-- Twin Peaks Perfection
				ach(5216),	-- Peak Speed
				ach(5226, {	-- Cloud Nine (A)
					["races"] = ALLIANCE_ONLY,
				}),
				ach(5227, {	-- Cloud Nine (H)
					["races"] = HORDE_ONLY,
				}),
				ach(5229, {	-- Drag a Maw
					["races"] = ALLIANCE_ONLY,
				}),
				ach(5228, {	-- Wild Hammering
					["races"] = HORDE_ONLY,
				}),
				ach(5220, {	-- I'm in the Black Lodge
					["races"] = HORDE_ONLY,
				}),
				ach(5219, {	-- I'm in the White Lodge
					["races"] = ALLIANCE_ONLY,
				}),
				ach(5221, {	-- Fire, Walk With Me (A)
					["races"] = ALLIANCE_ONLY,
				}),
				ach(5222, {	-- Fire, Walk With Me (H)
					["races"] = HORDE_ONLY,
				}),
				ach(5230),	-- Twin Peaks Mountaineer
				ach(5231, {	-- Double Jeopardy (A)
					["races"] = ALLIANCE_ONLY,
				}),
				ach(5552, {	-- Double Jeopardy (H)
					["races"] = HORDE_ONLY,
				}),
			}),
		},
	}),
})));

-- #if ANYCLASSIC
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3 } }, {
	m(206, {
		q(82808),	-- Obtained by an ATT user upon completing the Fire, Walk with Me achievement
	}),
})));
-- #endif
