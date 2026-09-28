---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		n(ZONE_DROPS, {
			i(255826, {	-- Mysterious Skyshards
				["sourceQuest"] = 90474,	-- The Legend of Aln'sharan
			}),
			filter(REAGENTS, {
				i(265800),	-- Earthy Garnish
			}),
		}),
	}),
}));
