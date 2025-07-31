FLIGHT_PATHS = createHeader({
	readable = "Flight Paths",
	constant = "FLIGHT_PATHS",
	export = true,
	icon = [[~_.asset("Category_FlightPaths")]],
	text = {
		-- #if ANYCLASSIC
		en = "Flight Paths",
		es = "Rutas de vuelo",
		mx = "Rutas de vuelo",
		-- #else
		en = WOWAPI_GetSpellName(218950),
		-- #endif
		ru = "Точка полета",
		cn = "飞行路线",
		tw = "飛行路線",
	},
});
