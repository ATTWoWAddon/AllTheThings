---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(LEGION_DALARAN, {
			n(FLIGHT_PATHS, {
				fp(1774, {	-- Dalaran
					["cr"] = 96813,	-- Aludane Whitecloud
					["coord"] = { 69.8, 50.8, LEGION_DALARAN },
				}),
				-- This FlightPath is not collectible, but is faked on the map by Blizzard
				fp(1849, {	-- Dalaran (Eagle)
					["coord"] = { 72.6, 41.6, LEGION_DALARAN },
					["classes"] = { HUNTER },
					["collectible"] = false
				}),
			}),
		}),
	}),
});
