local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[549986] = {
		readable = "Energy Barrel",
		model = 5916227,
		text = {
			en = "Energy Barrel",
			es = "Barril de energía",
			mx = "Barril de energía",
			de = "Energiefass",
			fr = "Tonneau d’énergie",
			it = "Barile di Energia",
			pt = "Barril de Energia",
			ru = "Энергетический контейнер",
			ko = "마력 통",
			cn = "能量桶",
			tw = "能量桶",
		},
	},
	[550001] = {
		readable = "Energy Pyramid",
		model = 5916229,
		text = {
			en = "Energy Pyramid",
			es = "Pirámide de energía",
			mx = "Pirámide de energía",
			de = "Energiepyramide",
			fr = "Pyramide d’énergie",
			it = "Piramide d'Energia",
			pt = "Pirâmide de Energia",
			ru = "Энергетическая пирамида",
			ko = "마력 피라미드",
			cn = "能量金字塔",
			tw = "能量金字塔",
		},
	},
})
do ObjectDB[objectID] = objectData; end
