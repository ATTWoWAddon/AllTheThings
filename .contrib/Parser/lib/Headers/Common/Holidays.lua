HOLIDAYS = createHeader({
	readable = "Holiday",
	constant = "HOLIDAYS",
	export = true,
	icon = [[~_.asset("Category_Holidays")]],
	text = {
		-- #if ANYCLASSIC
		en = "Holidays",
		es = "Festividades",
		de = "Feiertage",
		fr = "Évènements saisonniers",
		it = "Festività",
		mx = "Fiestas",
		pt = "Feriados",
		ru = "Праздники",
		ko = "축제",
		cn = "节日",
		tw = "節慶",
		-- #else
		en = [[~CALENDAR_FILTER_HOLIDAYS]],
		-- #endif
	},
	description = {
		en = "A specific holiday may need to be active for you to complete the referenced Things within this section.",
		de = "Es muss möglicherweise ein bestimmter Feiertag aktiv sein, um hier genannte Dinge abschließen zu können.",
		es = "Es posible que deba estar activo un día festivo específico para que pueda completar las cosas referenciadas en esta sección.",
		mx = "Es posible que deba estar activo un día festivo específico para que pueda completar las cosas referenciadas en esta sección.",
		ru = "Чтобы выполнить упомянутые в данной секции Штучки, может быть нужен какой-то праздник.",
		cn = "你可能需要在特定的节日活动中才能完成本节中的事物。",
		tw = "你可能需要在特定節日的活動中才能完成本節中的事物。",
	},
});

-- Some specific Holidays are referenced prior to them being created within the holiday file itself...
DARKMOON_FAIRE_HEADER = createHeader({
	readable = "Darkmoon Faire",
	constant = "DARKMOON_FAIRE_HEADER",
	icon = [[~_.asset("Event_dmf")]],
	eventID = EVENTS.DARKMOON_FAIRE,
	-- #if BEFORE 4.3.0
	eventIDs = {
		-- #if AFTER TBC
		376,	-- Terrokar Forest
		-- #endif
		374,	-- Elwynn Forest
		375,	-- Thunder Bluff
	},
	-- #if BEFORE WRATH
	-- We have a calendar to pull from in Wrath Classic. :)
	-- #if SEASON_OF_DISCOVERY
	eventSchedule = {
		3, -- Every two weeks, lasting one week. (6 days?)
		2023, 12, 18	-- Dec 2023 in Elwynn Forest (active 12/18 at 00:00, end 12/24 at 00:00)
	},
	-- #else
	eventSchedule = {		
		2, -- Active First Sunday of Every Month until following Saturday at Midnight(DMF)
		2023, 5	-- May 2022 in Terrokar Forest (TBC) / Elwynn Forest (ERA) (active 05/07 at 00:00, end 05/14 at 00:00)
	},
	-- #endif
	-- #endif
	text = {
		en = "Darkmoon Faire",
		es = "Feria de la Luna Negra",
		de = "Dunkelmond-Jahrmarkt",
		fr = "Foire de Sombrelune",
		it = "Fiera di Lunacupa",
		mx = "Feria de la Luna Negra",
		pt = "Feira de Negraluna",
		ru = "Ярмарка Новолуния",
		ko = "다크문 유랑단",
		cn = "暗月马戏团",
		tw = "暗月馬戲團",
	},
});
TRIAL_OF_STYLE_HEADER = createHeader({
	readable = "Trial of Style",
	constant = "TRIAL_OF_STYLE_HEADER",
	icon = [[~_.asset("Holiday_Trialofstyle")]],
	eventID = EVENTS.TRIAL_OF_STYLE,
	text = {
		en = "Trial of Style",
		es = "Prueba de estilo",
		mx = "Desafio de estilos",
		ru = "Наденьте это немедлено",
		cn = "时尚试炼",
		tw = "時尚大考驗",
	},
});
