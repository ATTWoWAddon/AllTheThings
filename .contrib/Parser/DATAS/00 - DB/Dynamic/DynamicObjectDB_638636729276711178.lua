﻿local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[439291] = {
		readable = "Repossessed Goods",
		model = 5007036,
		text = {
			en = "Repossessed Goods",
			es = "Bienes embargados",
			de = "Wiedererlangte Waren",
			fr = "Marchandises saisies",
			it = "Beni di Seconda Mano",
			pt = "Mercadorias Recuperadas",
			ru = "Изъятый товар",
			ko = "회수한 상품",
			cn = "被收回的货物",
			tw = "Repossessed Goods",
		},
	},
	[439562] = {
		readable = "Fallen Aeroknight",
		model = 1011653,
		text = {
			en = "Fallen Aeroknight",
			es = "Aerocaballero caído",
			de = "Gefallener Luftritter",
			fr = "Aérochevalier défunt",
			it = "Aerocavaliere Caduto",
			pt = "Cavaleiro Aéreo Tombado",
			ru = "Павший воздушный рыцарь",
			ko = "쓰러진 하늘기사",
			cn = "陨落的流空骑士",
			tw = "Fallen Aeroknight",
		},
	},
	[453716] = {
		readable = "Cache of Expensive Libations",
		model = 5007036,
		text = {
			en = "Cache of Expensive Libations",
			es = "Alijo de libaciones caras",
			de = "Kiste mit teuren Trünken",
			fr = "Cache de boissons onéreuses",
			it = "Cassa di Libagioni Costose",
			pt = "Caixa de Bebidas Caras",
			ru = "Ящик с дорогими напитками",
			ko = "값비싼 신주 보관함",
			cn = "贵重酒箱",
			tw = "Cache of Expensive Libations",
		},
	},
})
do ObjectDB[objectID] = objectData; end