---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(ANTORAN_WASTES, {
				n(FLIGHT_PATHS, {
					fp(1988, {	-- Hope's Landing, Antoran Wastes
						["cr"] = 125407,	-- Lightforged Beacon
						["coord"] = { 73.0, 50.4, ANTORAN_WASTES },
					}),
					fp(1992, {	-- Light's Purchase
						["cr"] = 125410,	-- Lightforged Beacon
						["coord"] = { 72.6, 76.0, ANTORAN_WASTES },
					}),
					fp(1993, {	-- The Veiled Den, Antoran Wastes
						["cr"] = 125409,	-- Lightforged Beacon
						["coord"] = { 70.6, 25.4, ANTORAN_WASTES },
					}),
				}),
			}),
		})),
	}),
});
