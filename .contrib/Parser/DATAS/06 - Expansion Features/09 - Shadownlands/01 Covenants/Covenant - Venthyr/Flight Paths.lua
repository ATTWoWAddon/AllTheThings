-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_VEN" }, {
	n(VENTHYR, {
		n(FLIGHT_PATHS, {
			fp(2548, {	-- Sinfall, Revendreth
				["coord"] = { 67.1, 21.9, SINFALL_REACHES },
			}),
		}),
	}),
})));