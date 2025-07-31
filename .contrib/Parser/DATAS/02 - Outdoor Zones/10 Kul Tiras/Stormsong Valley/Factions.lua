---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(STORMSONG_VALLEY, {
		n(FACTIONS, {
			faction(FACTION_TORTOLLAN_SEEKERS),	-- Tortollan Seekers
			faction(FACTION_STORMS_WAKE, {	-- Storm's Wake
				["races"] = ALLIANCE_ONLY,
			}),
		}),
	}),
})));
