---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(VOLDUN, {
		n(FACTIONS, {
			faction(FACTION_VOLDUNAI, {	-- Voldunai
				["races"] = HORDE_ONLY,
			}),
		}),
	}),
})));
