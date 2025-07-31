local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[439314] = {
		readable = "Camp Supplies",
		model = 5048188,
		text = {
			en = "Camp Supplies",
			de = "Lagervorräte",
			es = "Suministros de campamento",
			mx = "Suministros de campamento",
			fr = "Fournitures de campement",
			it = "Mercante di Forniture da Campo",
			pt = "Suprimentos do Acampamento",
			ru = "Лагерные припасы",
			ko = "야영지 보급품",
			cn = "营地补给",
			tw = "營地補給品",
		},
	},
	[439463] = {
		readable = "Spilled Fire honey",
		model = 5465249,
		text = {
			en = "Spilled Fire honey",
			de = "Verschütteter Feuerhonig",
			es = "Miel ígnea derramada",
			mx = "Miel ardiente derramada",
			fr = "Miel-feu renversé",
			it = "Mieldifuoco Versato",
			pt = "Mel de Fogo Derramado",
			ru = "Разлитый огненный мед",
			ko = "흘린 화염뿔",
			cn = "溅洒的火焰蜂蜜",
			tw = "倒出來的火焰蜂蜜",
		},
	},
})
do ObjectDB[objectID] = objectData; end
