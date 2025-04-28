local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[464213] = {
		readable = "Jumping Spider",
		model = 1513627,
		text = {
			en = "Jumping Spider",
			es = "[Jumping Spider]",
			de = "[Jumping Spider]",
			fr = "[Jumping Spider]",
			it = "[Jumping Spider]",
			pt = "[Jumping Spider]",
			ru = "[Jumping Spider]",
			ko = "[Jumping Spider]",
			cn = "跳蛛",
		},
	},
	[464218] = {
		readable = "Summit Kid",
		model = 576021,
		text = {
			en = "Summit Kid",
			es = "[Summit Kid]",
			de = "[Summit Kid]",
			fr = "[Summit Kid]",
			it = "[Summit Kid]",
			pt = "[Summit Kid]",
			ru = "[Summit Kid]",
			ko = "[Summit Kid]",
			cn = "高山小羊",
		},
	},
	[477139] = {
		readable = "Lost & Found",
		model = 196982,
		text = {
			en = "Lost & Found",
			es = "Objetos perdidos",
			de = "Fundbüro",
			fr = "Objets trouvés",
			it = "Oggetti Smarriti",
			pt = "Achados & Perdidos",
			ru = "Бюро находок",
			ko = "유실물",
			cn = "失物招领",
		},
	},
})
do ObjectDB[objectID] = objectData; end