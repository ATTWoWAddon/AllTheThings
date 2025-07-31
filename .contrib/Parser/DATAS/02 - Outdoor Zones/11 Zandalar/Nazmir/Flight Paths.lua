---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(NAZMIR, {
		n(FLIGHT_PATHS, {
			fp(1956, {	-- Forlorn Ruins, Nazmir
				["coord"] = { 82.1, 26.6, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			fp(2078, {	-- Fort Victory, Nazmir [Alliance]
				["coord"] = { 62.2, 41.2, NAZMIR },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(1955, {	-- Gloom Hollow, Nazmir [Horde]
				["coord"] = { 66.9, 43.8, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			fp(2080, {	-- Grimwatt's Crash, Nazmir [Alliance] (Confirmed by Vandiel)
				["description"] = "Requires completion of Mission Report: Grimwatt's Crash and related quest line to unlock.",
				["coord"] = { 34.2, 63.2, NAZMIR },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2161, {	-- Redfield's Watch, Nazmir [Alliance]
				["coord"] = { 50.8, 20.8, NAZMIR },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(1954, {	-- Zo'bal Ruins, Nazmir [Horde]
				["coord"] = { 40.18, 42.82, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			fp(1953, {	-- Zul'jan Ruins, Nazmir [Horde]
				["coord"] = { 38.85, 78.15, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
		}),
	}),
})));
