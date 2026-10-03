---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(THE_GREAT_SEAL, {
		n(FACTIONS, {
			faction(FACTION_THE_HONORBOUND, {	-- The Honorbound
				["races"] = HORDE_ONLY,
			}),
			faction(FACTION_ZANDALARI_EMPIRE, {	-- Zandalari Empire
				["races"] = HORDE_ONLY,
			}),
		}),
	}),
})));
