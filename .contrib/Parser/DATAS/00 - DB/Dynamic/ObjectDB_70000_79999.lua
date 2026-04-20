local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	
		[73940] = {
			readable = "Ooze Covered Silver Vein",
			model = 219553,
			text = {
				en = "Ooze Covered Silver Vein",
				de = "Brühschlammbedecktes Silbervorkommen",
				fr = "Filon d'argent couvert de limon",
				pt = "Veio de Prata Coberto de Gosma",
				ru = "Покрытая слизью серебряная жила",
				ko = "진흙으로 덮인 은 광맥",
			},
		},
	
		[73941] = {
			readable = "Ooze Covered Gold Vein",
			model = 219553,
			text = {
				en = "Ooze Covered Gold Vein",
				es = "Filón de oro cubierto de moco",
				de = "Schlammbedecktes Goldvorkommen",
				fr = "Filon d'or couvert de limon",
				pt = "Veio de Ouro Coberto de Gosma",
				ru = "Покрытая слизью золотая жила",
				ko = "진흙으로 덮인 금 광맥",
				cn = "软泥覆盖的金矿脉",
			},
		},
})
do ObjectDB[objectID] = objectData; end
