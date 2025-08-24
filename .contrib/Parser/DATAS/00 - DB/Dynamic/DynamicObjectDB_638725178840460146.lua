local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[500203] = {
		readable = "Resold Goods",
		text = {
			en = "Resold Goods",
			de = "Wiederverkaufte Waren",
			es = "Bienes revendidos",
			mx = "Productos revendidos",
			fr = "Marchandises revendues",
			it = "Beni Rivenduti",
			pt = "Mercadorias Revendidas",
			ru = "Перепроданный товар",
			ko = "재판매된 상품",
			cn = "倒卖的商品",
			tw = "轉售的商品",
		},
	},
})
do ObjectDB[objectID] = objectData; end
