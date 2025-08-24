SEASON_CATACLYSMIC = createHeader({
	readable = "Cataclysmic Gladiator",
	icon = 236235,
	text = {
		-- #if AFTER 5.0.1
		en = WOWAPI_GetAchievementName(6938).. [[..": Season 11"]],
		es = WOWAPI_GetAchievementName(6938).. [[..": Temporada 11"]],
		fr = WOWAPI_GetAchievementName(6938).. [[..": Saison 11"]],
		mx = WOWAPI_GetAchievementName(6938).. [[..": Temporada 11"]],
		ru = WOWAPI_GetAchievementName(6938).. [[..": Сезон 11"]],
		cn = WOWAPI_GetAchievementName(6938).. [[.."：第11赛季"]],
		tw = WOWAPI_GetAchievementName(6938).. [[.."：第11賽季"]],
		-- #else
		en = "Cataclysmic Gladiator: Season 11",
		es = "Gladiador cataclísmico: Temporada 11",
		de = "Kataklysmischer Gladiator: Season 11",
		fr = "Gladiateur cataclysmique: Saison 11",
		it = "Gladiatore Cataclismico: Season 11",
		mx = "Gladiador cataclísmico: Temporada 11",
		pt = "Gladiador Cataclísmico: Season 11",
		ru = "Гладиатор Катаклизма: Сезон 11",
		ko = "격변한 검투사: Season 11",
		cn = "灾变角斗士：第11赛季",
		tw = "絕命鬥士：第11賽季",
		-- #endif
	},
});
