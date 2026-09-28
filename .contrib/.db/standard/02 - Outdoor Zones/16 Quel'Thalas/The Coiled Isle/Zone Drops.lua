---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		n(ZONE_DROPS, {
			filter(REAGENTS, {
				i(274781),	-- Cursebound Globe
				i(274777),	-- Neutralized Venom Clot
			}),
			-- QSs
			i(268953, {	-- Familiar Amani Headdress (QS!)
				["cr"] = 260724,	-- Serpentine Lurker
				["coords"] = {
					{ 53.0, 44.2, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 53.8, 42.3, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 53.8, 42.7, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 53.9, 43.9, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 54.0, 40.7, MAP.MIDNIGHT.THE_COILED_ISLE },
				},
			}),
			i(268951, {	-- Familiar Threshadon Tooth Necklace (QS!)
				["cr"] = 260724,	-- Serpentine Lurker
				["coords"] = {
					{ 53.0, 44.2, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 53.8, 42.3, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 53.8, 42.7, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 53.9, 43.9, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 54.0, 40.7, MAP.MIDNIGHT.THE_COILED_ISLE },
				},
			}),
			i(278070),	-- Handful of Esoteric Ingredients (QS!)
		}),
	}),
}));
