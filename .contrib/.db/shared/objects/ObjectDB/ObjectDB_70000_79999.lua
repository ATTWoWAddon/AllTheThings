local ObjectDB = ObjectDB; for objectID,objectData in pairs({
[73940] = {
		readable = "Ooze Covered Silver Vein",
		model = 219553,
		text = {
			en = "Ooze Covered Silver Vein",
			es = "Filón de plata cubierto de moco",
			de = "Brühschlammbedecktes Silbervorkommen",
			fr = "Filon d'argent couvert de limon",
			it = "Ooze Covered Silver Vein",
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
			it = "Ooze Covered Gold Vein",
			pt = "Veio de Ouro Coberto de Gosma",
			ru = "Покрытая слизью золотая жила",
			ko = "진흙으로 덮인 금 광맥",
			cn = "软泥覆盖的金矿脉",
		},
	},
[75293] = {
		readable = "Large Battered Chest",
		model = 219372,
		ignorewowhead = true,
		text = {
			en = "Large Battered Chest",
			de = "Große ramponierte Truhe",
		},
	},
})
do ObjectDB[objectID] = objectData; end
