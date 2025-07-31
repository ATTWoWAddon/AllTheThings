---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(VOLDUN, {
		n(FLIGHT_PATHS, {
			fp(2144, {	-- Goldtusk Inn, Vol'dun
				["description"] = "Becomes available after completing |cFFFFD700The Best Kill is Overkill|r during the Goldtusk Inn quest chain.",
				["races"] = HORDE_ONLY,
				["coord"] = { 42.7, 61.1, VOLDUN },
			}),
			fp(2114, {	-- Deadwood Cove, Vol'dun [Alliance] [This is quest locked behind the War Campaign]
				["coord"] = { 39.8, 83.8, VOLDUN },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2119, {	-- Sanctuary of the Devoted, Vol'dun [N]
				["coord"] = { 27.6, 50.4, VOLDUN },
			}),
			fp(2143, {	-- Scorched Sands Outpost, Vol'dun [Horde]
				["coord"] = { 43.9, 75.9, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			fp(2110, {	-- Shatterstone Harbor, Vol'dun [Alliance] [This is quest locked behind the War Campaign]
				["coord"] = { 36.6, 34.2, VOLDUN },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2118, {	-- Temple of Akunda, Vol'dun [Horde]
				["coord"] = { 53.7, 89.1, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			fp(2120, {	-- Tortaka Refuge, Vol'dun [N]
				["coord"] = { 61.9, 21.6, VOLDUN },
			}),
			fp(2111, {	-- Vorrik's Sanctum [Conqueror's Path], Vol'dun [Horde]
				["coord"] = { 47.3, 35.2, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			fp(2117, {	-- Vulpera Hideaway, Vol'dun [Horde]
				["coord"] = { 56.9, 49.2, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			fp(2112, {	-- Vulture's Nest, Vol'dun [Alliance]
				["description"] = "Requires completion of Mission Report: Vulture's Nest and related quest line to unlock.",
				["coord"] = { 53.6, 37.6, VOLDUN },
				["races"] = ALLIANCE_ONLY,
			}),
			-- This FlightPath is not collectible, but is faked on the map by Blizzard
			fp(2162, {["collectible"] = false}),	-- Devoted Sanctuary, Vol'dun
		}),
	}),
})));
