local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[433369] = {
		readable = "War Supply Chest",
		model = 341746,
		icon = 132485,
		text = {
			en = "War Supply Chest",
			es = "Cofre de suministros de guerra",
			mx = "Cofre de suministros de guerra",
			de = "Kiste mit Kriegsvorräten",
			fr = "Coffre de fournitures de guerre",
			it = "Cassa di Rifornimenti da Guerra",
			pt = "Baú de Suprimentos de Guerra",
			ru = "Сундук с военными припасами",
			ko = "전쟁 보급품 상자",
			cn = "战争补给箱",
			tw = "戰爭補給箱",
		},
	},
	[441108] = {
		readable = "Unbound Spoils",
		model = 5128194,
		text = {
			en = "Unbound Spoils",
			es = "Botín desvinculado",
			mx = "Despojo de los emancipados",
			de = "Ungebundene Beute",
			fr = "Butin délié",
			it = "Spoglie Svincolate",
			pt = "Espólios Desvinculados",
			ru = "Трофеи необузданной битвы",
			ko = "해방자 전리품",
			cn = "无缚战利品",
			tw = "無縛者戰利品",
		},
	},
})
do ObjectDB[objectID] = objectData; end
