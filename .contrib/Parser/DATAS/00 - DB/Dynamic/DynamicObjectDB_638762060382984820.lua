local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[479594] = {
		readable = "Depleted Hotrod Battery",
		model = 5900868,
		text = {
			en = "Depleted Hotrod Battery",
			de = "Erschöpfte Hot-Rod-Batterie",
			es = "Batería de bólido agotada",
			mx = "Batería de bólido agotada",
			fr = "Batterie de voiture de sport épuisée",
			it = "Batteria della Razzomobile Esaurita",
			pt = "Bateria de Carango Esgotada",
			ru = "Разряженная батарея хотрода",
			ko = "소진된 개조차 전지",
			cn = "枯竭的改装车电池",
			tw = "耗盡的改裝車電池",
		},
	},
})
do ObjectDB[objectID] = objectData; end
