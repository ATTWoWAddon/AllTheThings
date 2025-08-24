local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[466808] = {
		readable = "Chest of Acquisitions",
		model = 1702787,
		text = {
			en = "Chest of Acquisitions",
			de = "Truhe der Aneignungen",
			es = "Cofre de adquisiciones",
			fr = "Coffre des acquisitions",
			it = "Cassa delle Acquisizioni",
			mx = "Cofre de obtención",
			pt = "Baú de Aquisições",
			ru = "Сундук приобретения",
			ko = "수집의 보관함",
			cn = "收藏品宝箱",
			tw = "幽靈寶箱",
		},
	},
	[466960] = {
		readable = "Treasure of the Wardens",
		model = 1349622,
		text = {
			en = "Treasure of the Wardens",
			de = "Schatz der Wächter",
			es = "Tesoro de las Celadoras",
			fr = "Trésor des gardiens",
			it = "Tesoro delle Custodi",
			mx = "Tesoro de las Celadoras",
			pt = "Tesouro das Guardiãs",
			ru = "Сокровище Стражей",
			ko = "감시관의 보물",
			cn = "守望者的珍宝",
			tw = "寶箱"
		},
	},
})
do ObjectDB[objectID] = objectData; end
