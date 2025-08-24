SEASON_MERCILESS = createHeader({
	readable = "Merciless Gladiator",
	icon = 236535,
	text = {
		-- #if BEFORE WRATH
		en = "Merciless Gladiator: Season 2",
		es = "Gladiador despiadado: Temporada 2",
		de = "Erbarmungsloser Gladiator: Season 2",
		fr = "Gladiateur impitoyable: Saison 2",
		it = "Gladiatore Spietato: Season 2",
		mx = "Gladiador despiadado: Temporada 2",
		pt = "Gladiador Impiedoso: Season 2",
		ru = "Безжалостный гладиатор: Сезон 2",
		ko = "무자비한 검투사: Season 2",
		cn = "残酷角斗士：第2赛季",
		tw = "殘忍鬥士：第2賽季",
		-- #else
		en = WOWAPI_GetAchievementName(418).. [[..": Season 2"]],
		es = WOWAPI_GetAchievementName(418).. [[..": Temporada 2"]],
		fr = WOWAPI_GetAchievementName(418).. [[..": Saison 2"]],
		mx = WOWAPI_GetAchievementName(418).. [[..": Temporada 2"]],
		ru = WOWAPI_GetAchievementName(418).. [[..": Сезон 2"]],
		cn = WOWAPI_GetAchievementName(418).. [[.."：第2赛季"]],
		tw = WOWAPI_GetAchievementName(418).. [[.."：第2賽季"]],
		-- #endif
	},
});
