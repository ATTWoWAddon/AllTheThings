-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, {
	applyclassicphase(TBC_PHASE_ONE, m(EYE_OF_THE_STORM, {
		-- #if AFTER WRATH
		["icon"] = 236392,
		["maps"] = {
			EYE_OF_THE_STORM,
			397,	-- Eye of the Storm (BG)
		},
		-- #endif
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(1171, {	-- Master of Eye of the Storm
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {
						{"meta_achievement",
							209,	-- Eye of the Storm Veteran
							783,	-- The Perfect Storm
							784,	-- Eye of the Storm Domination
							214,	-- Flurry
							213,	-- Stormtrooper
							212,	-- Storm Capper
							216,	-- Bound for Glory
							233,	-- Bloodthirsty Berserker
						},
					},
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(208, {	-- Eye of the Storm Victory
					["timeline"] = { ADDED_3_0_2 },
					["rank"] = 1,
				}),
				ach(209, {	-- Eye of the Storm Veteran
					["timeline"] = { ADDED_3_0_2 },
					["rank"] = 100,
				}),
				ach(233, {	-- Bloodthirsty Berserker
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(216, {	-- Bound for Glory
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(784, {	-- Eye of the Storm Domination
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(214, {	-- Flurry
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(212, {	-- Storm Capper
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(211, {	-- Storm Glory
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(213, {	-- Stormtrooper
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(587, {	-- Stormy Assassin
					["timeline"] = { ADDED_3_0_2 },
					["groups"] ={
						crit(441),	-- Kill 5 people at the Blood Elf Tower
						crit(442),	-- Kill 5 people at the Draenei Ruins
						crit(443),	-- Kill 5 people at the Fel Reaver ruins
						crit(444),	-- Kill 5 people at the Mage Tower
					},
				}),
				ach(1258, {	-- Take a Chill Pill
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(783, {	-- The Perfect Storm
					["timeline"] = { ADDED_3_0_2 },
				}),
			}),
			n(REWARDS, {
				i(29024, {	-- Eye of the Storm Mark of Honor
					["timeline"] = { ADDED_2_0_3, REMOVED_3_3_3 },
				}),
			}),
		},
	})),
})));
