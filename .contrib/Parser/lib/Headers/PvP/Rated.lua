RATED = createHeader({
	readable = "Rated",
	-- #if AFTER 8.0.1
	icon = 2022761,
	-- #else
	icon = 132487,
	-- #endif
	text = {
		en = [[~PVP_TAB_CONQUEST]],
	},
});

UNRATED = createHeader({
	readable = "Unrated",
	icon = 236368,
	text = {
		en = "Unrated",
		de = "Ungewertet",
		es = "Sin calificación",
		mx = "Sin calificación",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Нерейтинговые",
		cn = "无评级",
		tw = "無評級",
	},
});
