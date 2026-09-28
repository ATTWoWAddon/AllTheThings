---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(ARDENWEALD, {
		n(FLIGHT_PATHS, {
			fp(2589, {	-- Ardenweald, Claw's Edge
				["coord"] = { 51.3, 71.3, ARDENWEALD },
			}),
			fp(2584, {	-- Ardenweald, Glitterfall Basin
				["coord"] = { 36.7, 36.7, ARDENWEALD },
			}),
			fp(2586, {	-- Ardenweald, Hibernal Hollow
				["coord"] = { 60.3, 53.4, ARDENWEALD },
			}),
			fp(2590, {	-- Ardenweald, Refugee Camp
				["coord"] = { 92.9, 51.5, ARDENWEALD },
				["customCollect"] = {
					"SL_COV_NEC",	-- Necrolord
					"SL_COV_KYR",	-- Kyrian
					"SL_COV_VEN",	-- Venthyr
				},
			}),
			fp(2588, {	-- Ardenweald, Root-Home
				["coord"] = { 35.1, 51.7, ARDENWEALD },
			}),
			fp(2585, {	-- Ardenweald, Tirna Vaal
				["coord"] = { 63.4, 37.5, ARDENWEALD },
			}),
		}),
	}),
})));
