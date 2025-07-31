---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(BROKEN_SHORE, {
			n(FLIGHT_PATHS, {
				fp(1942, {	-- Aalgen Point, Broken Shore
					["coord"] = { 70.6, 47.6, BROKEN_SHORE },
				}),
				fp(1862, {	-- Acherus: The Ebon Hold
					["classes"] = { DEATHKNIGHT },
					["coord"] = { 97.4, 56.0, BROKEN_SHORE },
				}),
				fp(1941, {	-- Deliverance Point, Broken Shore
					["coord"] = { 45.2, 64.0, BROKEN_SHORE },
				}),
				fp(1856, {	-- Vengeance Point, Broken Shore
					["coord"] = { 49.6, 21.0, BROKEN_SHORE },
				}),
			}),
		}),
	}),
});
