---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(NAZMIR, {
		n(FACTIONS, {
			faction(FACTION_TALANJIS_EXPEDITION, {	-- Talanji's  Expedition
				["races"] = HORDE_ONLY,
			}),
		}),
	}),
})));
