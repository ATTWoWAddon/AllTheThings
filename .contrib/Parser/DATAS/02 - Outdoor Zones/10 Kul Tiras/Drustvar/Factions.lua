---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(DRUSTVAR, {
		n(FACTIONS, {
			faction(FACTION_ORDER_OF_EMBERS, {	-- Order of Embers
				["races"] = ALLIANCE_ONLY,
			}),
		}),
	}),
})));
