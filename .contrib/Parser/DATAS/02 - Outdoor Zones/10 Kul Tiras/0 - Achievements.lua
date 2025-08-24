---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	n(ACHIEVEMENTS, {
		ach(12891, {	-- A Nation United
			["sym"] = {{"meta_achievement",
				12593,	-- Loremaster of Kul Tiras [A]
				12997,	-- The Pride of Kul Tiras
			}},
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				crit(41138, {	-- A Nation United
					["_quests"] = { 52151 },	-- A Nation United
				}),
			},
		}),
		ach(12947, {	-- Azerothian Diplomat
			crit(42229, {["races"] = ALLIANCE_ONLY }),		-- Proudmoore (A) / Zandalari Empire (H)
			crit(42231, {["races"] = ALLIANCE_ONLY }),		-- Order of Embers (A)
			crit(42230, {["races"] = ALLIANCE_ONLY }),		-- Storm's Wake (A)
			crit(41654, {["races"] = ALLIANCE_ONLY }),		-- 7th Legion (A)
			crit(43121),		-- Champions of Azeroth
			crit(43122),		-- Tortollan Seekers
		}),
		ach(12936, {	-- Battle on Zandalar and Kul Tiras
			i(163697),	-- Laser Pointer (TOY!)
			crit(44208, {	-- Crab People
				["_quests"] = { 52009 },
			}),
			crit(44209, {	-- This Little Piggy Has Sharp Tusks
				["_quests"] = { 52126 },
			}),
			crit(44211, {	-- Automated Chaos
				["_quests"] = { 52165 },
			}),
			crit(44212, {	-- Night Horrors
				["_quests"] = { 52218 },
			}),
			crit(44213, {	-- Rogue Azerite
				["_quests"] = { 52278 },
			}),
			crit(44214, {	-- What's the Buzz?
				["_quests"] = { 52297 },
			}),
			crit(44215, {	-- Sea Creatures Are Weird
				["_quests"] = { 52316 },
			}),
			crit(44216, {	-- Captured Evil
				["_quests"] = { 52325 },
			}),
			crit(44217, {	-- Not So Bad Down Here
				["_quests"] = { 52430 },
			}),
			crit(44218, {	-- Unbreakable
				["_quests"] = { 52455 },
			}),
			crit(44219, {	-- That's a Big Carcass
				["_quests"] = { 52471 },
			}),
			crit(44220, {	-- Strange Looking Dogs
				["_quests"] = { 52751 },
			}),
			crit(44221, {	-- Marshdwellers
				["_quests"] = { 52754 },
			}),
			crit(44222, {	-- Crawg in the Bog
				["_quests"] = { 52779 },
			}),
			crit(44223, {	-- Pack Leader
				["_quests"] = { 52799 },
			}),
			crit(44224, {	-- Accidental Dread
				["_quests"] = { 52803 },
			}),
			crit(44225, {	-- Keeyo's Champions of Vol'dun
				["_quests"] = { 52850 },
			}),
			crit(44228, {	-- Snakes on a Terrace
				["_quests"] = { 52856 },
			}),
			crit(44226, {	-- What Do You Mean, Mind Controlling Plants?
				["_quests"] = { 52864 },
			}),
			crit(44227, {	-- Desert Survivors
				["_quests"] = { 52878 },
			}),
			crit(44229, {	-- Critters are Friends, Not Food
				["_quests"] = { 52892 },
			}),
			crit(44230, {	-- Add More to the Collection
				["_quests"] = { 52923 },
			}),
			crit(44231, {	-- You've Never Seen Jammer Upset
				["_quests"] = { 52937 },
			}),
			crit(44232, {	-- Small Beginnings
				["_quests"] = { 52938 },
			}),
		}),
		ach(12593, {	-- Loremaster of Kul Tiras [A]
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				12473,	-- A Sound Plan
				12497,	-- Drust Do It
				12496,	-- Stormsong and Danc
			}},
			["races"] = ALLIANCE_ONLY,
		}),
		ach(13517, {	-- Two Sides To Every Tale
			["sym"] = {{"meta_achievement",
				12891,	-- A Nation United
				13467,	-- Tides of Vengeance (A)
				12479,	-- Zandalar Forever!
				13466,	-- Tides of Vengeance (H)
			}},
			["groups"] = {
				a(i(168056)),	-- Ironclad Frostclaw (MOUNT!)
			},
		}),
	}),
})));
