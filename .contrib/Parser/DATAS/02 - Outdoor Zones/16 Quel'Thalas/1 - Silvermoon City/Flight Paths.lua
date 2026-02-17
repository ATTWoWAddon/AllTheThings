---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.SILVERMOON_CITY, {
		n(FLIGHT_PATHS, {
			fp(3131, {	-- Sanctum of Light, Silvermoon City
				["coord"] = { 51.0, 71.2, MAP.MIDNIGHT.SILVERMOON_CITY },
				["cr"] = 239639,	-- Skymaster Skyles
				-- TODO: for whatever reason trigger 13807 questID in 63534 build
			}),
			fp(3132, {	-- The Royal Exchange, Silvermoon City
				["coord"] = { 69.4, 63.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				["cr"] = 246564,	-- Anathos
				["races"] = HORDE_ONLY,
			}),
		}),
	}),
}));
