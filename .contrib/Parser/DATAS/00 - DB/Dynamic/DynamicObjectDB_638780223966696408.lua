local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[499960] = {
		readable = "Corrupted Chest",
		model = 3048901,
		text = {
			en = "Corrupted Chest",
			de = "Verderbte Truhe",
			es = "Cofre corrupto",
			mx = "Cofre corrupto",
			fr = "Coffre corrompu",
			it = "Cassa Corrotta",
			pt = "Baú Corrompido",
			ru = "Зараженный сундук",
			ko = "타락의 상자",
			cn = "腐化的宝箱",
			tw = "腐化寶箱",
		},
	},
	[505680] = {
		readable = "Animatronic Gear",
		model = 2067157,
		text = {
			en = "Animatronic Gear",
			de = "Animatronisches Zahnrad",
			es = "Engranaje de animatrónico",
			mx = "Engranaje de animatrónico",
			fr = "Engrenage d’animatronique",
			it = "Equipaggiamento Animatronico",
			pt = "Engrenagem Animatrônica",
			ru = "Шестеренка аниматроника",
			ko = "자동인형 톱니바퀴",
			cn = "仿生齿轮",
			tw = "機械玩偶齒輪",
		},
	},
})
do ObjectDB[objectID] = objectData; end
