---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MIDNIGHT, {
	m(ISLE_OF_QUELDANAS_MID, {
		n(FLIGHT_PATHS, {
			fp(3131, {	-- Sanctum of Light, Silvermoon City
				["coord"] = { 51.0, 71.2, SILVERMOON_CITY_MID },
				["cr"] = 239639,	-- Skymaster Skyles
				-- TODO: for whatever reason trigger 13807 questID in 63534 build
			}),
		}),
	}),
}));
