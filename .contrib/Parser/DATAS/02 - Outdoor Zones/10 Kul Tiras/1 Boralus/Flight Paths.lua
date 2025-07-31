---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(BORALUS, {
		n(FLIGHT_PATHS, {
			fp(2278, {	-- Mariner's Row, Tiragarde Sound [Alliance]
				["description"] = "Mariner's Row, Tiragarde Sound",
				["coord"] = { 76.6, 72.6, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2277, {	-- Proudmoore Keep, Tiragarde Sound [Alliance]
				["description"] = "Proudmoore Keep, Tiragarde Sound",
				["coord"] = { 47.7, 65.4, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2105, {	-- Tradewinds Market, Tiragarde Sound (Ferry) [Alliance]
				["description"] = "Tradewinds Market, Tiragarde Sound (Ferry)",
				["coord"] = { 74.2, 24.6, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2083, {	-- Tradewinds Market, Tiragarde Sound [Alliance]
				["description"] = "Tradewinds Market, Tiragarde Sound",
				["coord"] = { 66.9, 15.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
		}),
	}),
})));
