local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[455665] = {
		readable = "Convoy Treasure",
		model = 5545988,
		text = {
			en = "Convoy Treasure",
			de = "Konvoischatz",
			es = "Tesoro del convoy",
			mx = "Tesoro de convoy",
			fr = "Trésor du convoi",
			it = "Tesoro del Convoglio",
			pt = "Caixa de Tesouros",
			ru = "Ящик с сокровищами конвоя",
			ko = "호송대 보물",
			cn = "护送队财宝",
			tw = "車隊藏寶",
		},
	},
})
do ObjectDB[objectID] = objectData; end
