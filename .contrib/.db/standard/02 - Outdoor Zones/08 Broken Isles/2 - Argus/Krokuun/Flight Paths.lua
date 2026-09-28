---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(KROKUUN, {
				n(FLIGHT_PATHS, {
					fp(1976, {	-- Destiny Point, Krokruun
						["cr"] = 124569,	-- Lightforged Beacon
						["coord"] = { 62.7, 49.1, KROKUUN },
					}),
					fp(1928, {	-- Krokul Hovel, Krokruun
						["cr"] = 118830,	-- Lightforged Beacon
						["coord"] = { 55.4, 67.3, KROKUUN },
					}),
					fp(1967, {	-- Shattered Fields, Krokruun
						["cr"] = 123260,	-- Lightforged Beacon
						["coord"] = { 40.3, 63.5, KROKUUN },
					}),
				}),
			}),
		})),
	}),
});
