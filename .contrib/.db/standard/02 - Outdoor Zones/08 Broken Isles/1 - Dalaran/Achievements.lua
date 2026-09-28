---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(LEGION_DALARAN, {
			n(ACHIEVEMENTS, {
				ach(10585, {	-- Fel-Smelter
					["timeline"] = { ADDED_7_0_3, REMOVED_9_1_0 },
					["groups"] = {
						crit(29873, {	-- Firing Up the Forge
							["timeline"] = { ADDED_7_0_3, REMOVED_9_1_0 },
						}),
					},
				}),
				ach(10586, {	-- Mass Obliteration
					["timeline"] = { ADDED_7_0_3, REMOVED_9_1_0 },
				}),
			}),
		}),
	}),
});
