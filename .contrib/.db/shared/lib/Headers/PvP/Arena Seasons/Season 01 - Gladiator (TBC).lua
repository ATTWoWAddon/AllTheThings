SEASON_GLADIATOR = createHeader({
	readable = "Gladiator",
	icon = 236534,
	text = {
		-- #if BEFORE WRATH
		en = "Gladiator: Season 1",
		es = "Gladiador: Temporada 1",
		fr = "Gladiateur: Saison 1",
		it = "Gladiatore: Season 1",
		ko = "검투사: Season 1",
		mx = "Gladiador: Temporada 1",
		pt = "Gladiador: Season 1",
		ru = "Гладиатор: Сезон 1",
		cn = "角斗士：第1赛季",
		tw = "鬥士：第1賽季",
		-- #else
		en = WOWAPI_GetAchievementName(2091).. [[..": Season 1"]],
		es = WOWAPI_GetAchievementName(2091).. [[..": Temporada 1"]],
		fr = WOWAPI_GetAchievementName(2091).. [[..": Saison 1"]],
		mx = WOWAPI_GetAchievementName(2091).. [[..": Temporada 1"]],
		ru = WOWAPI_GetAchievementName(2091).. [[..": Сезон 1"]],
		cn = WOWAPI_GetAchievementName(2091).. [[.."：第1赛季"]],
		tw = WOWAPI_GetAchievementName(2091).. [[.."：第1賽季"]],
		-- #endif
	},
});
