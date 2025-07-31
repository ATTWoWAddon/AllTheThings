local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[466110] = {
		readable = "Getry's Pack",
		model = 936417,
		text = {
			en = "Getry's Pack",
			de = "Getrys Bündel",
			es = "Mochila de Getry",
			mx = "Mochila de Getry",
			fr = "Paquetage de Getry",
			it = "Zaino di Getry",
			pt = "Bolsa do Getry",
			ru = "Сумка Гетри",
			ko = "게트리의 짐",
			cn = "盖特莱的包",
			tw = "蓋特利的盒子",
		},
	},
	[503440] = {
		readable = "Discarded Goods",
		model = 5771150,
		text = {
			en = "Discarded Goods",
			de = "Weggeworfene Waren",
			es = "Objetos desechados",
			mx = "Artículos desechados",
			fr = "Marchandises abandonnées",
			it = "Beni Scartati",
			pt = "Mercadorias Descartadas",
			ru = "Выброшенные товары",
			ko = "버려진 상품",
			cn = "被丢弃的商品",
			tw = "棄置的貨物",
		},
	},
})
do ObjectDB[objectID] = objectData; end
