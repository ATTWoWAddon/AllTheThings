---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			n(FACTIONS, {
				faction(FACTION_ARGUSSIAN_REACH, {
					ach(12076),	-- Protector of the Argussian Reach
				}),
				faction(FACTION_ARMY_OF_THE_LIGHT, {
					ach(12081),	-- Officer of the Light
				}),
			}),
		})),
	}),
});
