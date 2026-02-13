--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

root(ROOTS.Holidays, {
	applyevent(EVENTS.SEASONAL_FISH_SUMMER_BASS, n(createHeader({
		readable = "Seasonal Fish: Summer Bass",
		icon = EVENTS.SEASONAL_FISH_SUMMER_BASS,
		eventID = EVENTS.SEASONAL_FISH_SUMMER_BASS,
		eventSchedule = {
			1,	-- Recurring
			3, 20, 0, 0,	-- 3/20 at 00:00 AM
			9, 22, 23, 59	-- 9/22 at 23:59 AM
		},
		text = {
			en = "Seasonal Fish: Summer Bass",
			de = "Saisonfisch: Sommerbarsch",
			es = "Pescado de temporada: lubina de verano",
			mx = "Pescado de temporada: lubina de verano",
			fr = "Poisson de saison : bar d'été",
			it = "Pesce di stagione: spigola estiva",
			ko = "제철 생선: 여름 농어",
			pt = "Peixe sazonal: robalo de verão",
			ru = "Сезонная рыба: летний окунь",
			cn = "时令鱼类：夏季鲈鱼",
			tw = "季節性魚類：夏日鱸魚",
		},
	}), {
		["maps"] = {
			-- #if AFTER 4.0.3
			BLASTED_LANDS,
			SWAMP_OF_SORROWS,
			-- #else
			AZSHARA,
			TANARIS,
			THE_HINTERLANDS,
			FERALAS,
			STRANGLETHORN_VALE,
			-- #endif
		},
		["groups"] = {
			i(13756, {	-- Raw Summer Bass
				-- #if AFTER 4.0.3
				["description"] = "Can be caught in open sea water in Blasted Lands and Swamp of Sorrows from 20th March to 22nd September.",
				-- #else
				["description"] = "Can be caught in open sea water in Azshara, Tanaris, The Hinterlands, Feralas, and STV from 20th March to 22nd September.",
				-- #endif
			}),
		},
	})),
	applyevent(EVENTS.SEASONAL_FISH_WINTER_SQUID, n(createHeader({
		readable = "Seasonal Fish: Winter Squid",
		icon = EVENTS.SEASONAL_FISH_WINTER_SQUID,
		eventID = EVENTS.SEASONAL_FISH_WINTER_SQUID,
		eventSchedule = {
			1,	-- Recurring
			9, 23, 0, 0,	-- 9/23 at 00:00 AM
			3, 19, 23, 59	-- 3/19 at 23:59 AM
		},
		text = {
			en = "Seasonal Fish: Winter Squid",
			de = "Saisonfisch: Winterkalmar",
			es = "Pescado de temporada: calamares de invierno",
			mx = "Pescado de temporada: calamares de invierno",
			fr = "Poisson de saison : calmar d'hiver",
			it = "Pesce di stagione: calamari invernali",
			ko = "제철 생선: 겨울 오징어",
			pt = "Peixe sazonal: Lula de Inverno",
			ru = "Сезонная рыба: зимний кальмар",
			cn = "时令鱼类：冬鱿鱼",
			tw = "季節性魚類：冬魷魚",
		},
	}), {
		["maps"] = {
			-- #if AFTER 4.0.3
			BLASTED_LANDS,
			SWAMP_OF_SORROWS,
			-- #else
			AZSHARA,
			TANARIS,
			THE_HINTERLANDS,
			FERALAS,
			STRANGLETHORN_VALE,
			-- #endif
		},
		["groups"] = {
			i(13755, {	-- Winter Squid
				-- #if AFTER 4.0.3
				["description"] = "Can be caught in open sea water in Blasted Lands and Swamp of Sorrows from 23nd September to 20th March.",
				-- #else
				["description"] = "Can be caught in open sea water in Azshara, Tanaris, The Hinterlands, Feralas, and STV from 23nd September to 20th March.",
				-- #endif
			}),
		},
	})),
});
