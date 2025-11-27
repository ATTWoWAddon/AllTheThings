UNIQUE_APPEARANCE = createHeader({
	readable = "Unique Appearance",
	constant = "UNIQUE_APPEARANCE",
	export = true,
	-- #if ANYCLASSIC
	icon = 132873,
	-- #else
	-- This icon became available in 5.4.2, technically
	icon = 413576,
	-- #endif
	text = {
		en = "Unique Appearance",
		de = "Einzigartige Vorlagen",
		es = "Apariencia única",
		-- TODO: mx = "",
		fr = "Apparence unique",
		it = "Aspetto unico",
		ko = "독특한 외관",
		pt = "Aparência Única",
		ru = "Уникальный Облик",
		cn = "独特外观",
		tw = "獨特外觀",
	},
	description = {
		en = "This item has a Unique Appearance. You must collect this item specifically to earn the appearance.",
		de = "Dieser Gegenstand hat eine einzigartige Vorlage. Ihr müsst diesen Gegenstand erhalten, um die Vorlage eurer Sammlung hinzuzufügen.",
		es = "Este objeto tiene una apariencia única. Debes obtener este objeto específicamente para ganar la apariencia.",
		mx = "Este objeto tiene una apariencia única. Debes obtener este objeto específicamente para ganar la apariencia.",
		fr = "Cet article a une apparence unique. Vous devez collecter cet objet spécifiquement pour gagner l’apparence.",
		it = "Questo oggetto ha un aspetto unico. Devi raccogliere questo oggetto appositamente per guadagnare l'aspetto.",
		ko = "이 아이템은 독특한 외형을 가지고 있습니다. 외형을 획득하려면 이 아이템을 특별히 수집해야 합니다.",
		pt = "Este item tem uma aparência única. Você deve coletar este item especificamente para ganhar a aparência.",
		ru = "Этот предмет имеет Уникальный Облик. Вы должны получить именно этот предмет для открытия Облика.",
		cn = "此列表中的物品是独特外观。你必须专门收藏这个物品以获得外观。",
		-- TODO: tw = "",
	},
});
