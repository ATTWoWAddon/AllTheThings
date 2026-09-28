---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZULDAZAR, {
		n(FACTIONS, {
			faction(2370, {	-- Dino Training - Direhorn
				["races"] = HORDE_ONLY,
			}),
			faction(2233, {	-- Dino Training - Pterrodax
				["races"] = HORDE_ONLY,
			}),
			faction(FACTION_TORTOLLAN_SEEKERS),	-- Tortollan Seekers
		}),
	}),
})));
