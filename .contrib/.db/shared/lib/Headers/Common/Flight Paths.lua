FLIGHT_PATHS = createHeader({
	readable = "Flight Paths",
	constant = "FLIGHT_PATHS",
	export = true,
	icon = [[~_.asset("Category_FlightPaths")]],
	text = {
		-- #if ANYCLASSIC
		en = "Flight Paths",
		-- TODO: de = "",
		es = "Rutas de vuelo",
		mx = "Rutas de vuelo",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Точка полета",
		cn = "飞行路线",
		tw = "飛行路線",
		-- #else
		en = WOWAPI_GetSpellName(218950),
		-- #endif
	},
});
