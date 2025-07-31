---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZULDAZAR, {
		n(FLIGHT_PATHS, {
			fp(2046, {	-- Atal'dazar, Zuldazar [Horde]
				["coord"] = { 46.0, 35.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			fp(2076, {	-- Atal'Gral, Zuldazar [N]
				["coord"] = { 80.0, 41.4, ZULDAZAR },
			}),
			fp(2147, {	-- Castaway Encampment, Zuldazar [Alliance]
				["coord"] = { 77.6, 54.4, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2045, {	-- Garden of the Loa, Zuldazar [Horde]
				["coord"] = { 49.6, 26.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			fp(2164, {	-- Isle of Fangs, Zuldazar [Horde]
				["coord"] = { 54.4, 87.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			fp(2153, {	-- Mistvine Ledge, Zuldazar [Alliance]
				["description"] = "Requires completion of Mission Report: Mistvine Ledge and related quest line to unlock.",
				["coord"] = { 64.4, 47.2, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2148, {	-- Mugamba Overlook, Zuldazar (A)
				["description"] = "Requires completion of Mission Report: Mugamba Overlook and related quest line to unlock.",
				["coord"] = { 44.8, 27.0, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(1965, {	-- Nesingwary's Gameland, Zuldazar [N]
				["coord"] = { 66.2, 17.6, ZULDAZAR },
			}),
			fp(2126, {	-- Scaletrader Post, Zuldazar [N]
				["coord"] = { 70.8, 29.6, ZULDAZAR },
			}),
			fp(2075, {	-- Seeker's Outpost, Zuldazar [N]
				["coord"] = { 70.4, 65.2, ZULDAZAR },
			}),
			fp(2027, {	-- Temple of the Prophet, Zuldazar [Horde]
				["coord"] = { 49.8, 44.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			fp(2381, {	-- The Mugambala, Zuldazar [Horde]
				["creatureID"] = 148157,	-- Paku'ai Chal
				["coord"] = { 53.3, 57.3, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			fp(2165, {	-- Tusk Isle, Zuldazar [Horde]
				["coord"] = { 59.4, 78.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			fp(2157, {	-- Veiled Grotto, Zuldazar [Alliance] (Confrimed by Vandiel)
				["description"] = "Requires completion of Mission Report: Veiled Grotto and related quest line to unlock.",
				["coord"] = { 44.4, 36.8, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2145, {	-- Verdant Hollow, Zuldazar [Alliance]
				["description"] = "Requires completion of Mission Report: Verdant Hollow and related quest line to unlock.",
				["coord"] = { 55.6, 24.8, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(1966, {	-- Warbeast Kraal, Zuldazar [Horde]
				["coord"] = { 67.2, 43.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			fp(2009, {	-- Warport Rastari, Zuldazar [Horde]
				["coord"] = { 48.2, 60.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			fp(1974, {	-- Xibala, Zuldazar [Horde]
				["coord"] = { 44.8, 72.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			fp(2012, {	-- Xibala, Zuldazar [Alliance]
				["coord"] = { 40.6, 71.4, ZULDAZAR },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(1975, {	-- Zeb'ahari, Zuldazar [Horde]
				["coord"] = { 77.2, 15.4, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			-- These FlightPaths are not collectible, but are faked on the map by Blizzard
			fp(2066, {["collectible"] = false}),	-- Atal'Gral, Zuldazar
			fp(2071, {["collectible"] = false}),	-- Dreadpearl, Zuldazar
		}),
	}),
})));
