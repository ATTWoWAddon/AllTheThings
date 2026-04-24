---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(EREDATH, {
				n(FLIGHT_PATHS, {
					fp(2003, {	-- City Center, Eredath
						["cr"] = 126951,	-- Lightforged Beacon
						["coord"] = { 47.0, 55.4, EREDATH },
					}),
					fp(1978, {	-- Conservatory of the Arcane, Eredath
						["cr"] = 124313,	-- Lightforged Beacon
						["coord"] = { 63.0, 39.6, EREDATH },
					}),
					fp(1991, {	-- Prophet's Reflection, Eredath
						["cr"] = 125350,	-- Lightforged Beacon
						["coord"] = { 43.8, 14.4, EREDATH },
					}),
					fp(1981, {	-- Shadowguard Incursion, Eredath
						["cr"] = 123258,	-- Lightforged Beacon
						["coord"] = { 30.2, 49.6, EREDATH },
					}),
					fp(1982, {	-- Triumvirate's End, Eredath
						["cr"] = 122509,	-- Lightforged Beacon
						["coord"] = { 52.8, 75.4, EREDATH },
					}),
				}),
			}),
		})),
	}),
});
