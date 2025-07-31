local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[455204] = {
		readable = "Salvage Crate",
		model = 1979995,
		text = {
			en = "Salvage Crate",
			de = "Bergungskiste",
			es = "Cajón rescatado",
			mx = "Cajón rescatado",
			fr = "Caisse de récupération",
			it = "Cassa Recuperata",
			pt = "Caixote de Resgate",
			ru = "Ящик со спасенным добром",
			ko = "인양된 상자",
			cn = "打捞上来的箱子",
			tw = "回收箱",
		},
	},
})
do ObjectDB[objectID] = objectData; end
