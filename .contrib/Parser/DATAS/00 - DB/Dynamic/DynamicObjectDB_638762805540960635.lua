local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[509490] = {
		readable = "Sewer Cheese",
		model = 1924192,
		text = {
			en = "Sewer Cheese",
			de = "Kanalkäse",
			es = "Queso de cloaca",
			mx = "Queso de alcantarilla",
			fr = "Fromage d’égout",
			it = "Formaggio di Fogna",
			pt = "Queijo do Esgoto",
			ru = "Сточный сыр",
			ko = "하수도 치즈",
			cn = "下水道奶酪",
			tw = "下水道乳酪",
		},
	},
})
do ObjectDB[objectID] = objectData; end
