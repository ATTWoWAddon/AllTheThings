local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[409302] = {
		readable = "Dispersal Crystal",
		model = 4563732,
		text = {
			en = "Dispersal Crystal",
			de = "Zerstreuungskristall",
			es = "Cristal de diseminación",
			mx = "Cristal de dispersión",
			fr = "Cristal de dispersement",
			it = "Cristallo della Dispersione",
			pt = "Cristal de Dispersão",
			ru = "Кристалл рассеивания",
			ko = "분산 수정",
			cn = "消散水晶",
			tw = "散射水晶",
		},
	},
	[444066] = {
		readable = "Keeper's Stash",
		model = 4323481,
		text = {
			en = "Keeper's Stash",
			de = "Schatz des Hüters",
			es = "Alijo de guardián",
			mx = "Alijo de vigilante",
			fr = "Magot du gardien",
			it = "Scorta del Custode",
			pt = "Baú do Guardião",
			ru = "Тайник хранителя",
			ko = "수호자의 보관함",
			cn = "守护者的贮藏",
			tw = "守衛者的儲物箱",
		},
	},
	[499551] = {
		readable = "Blacksteel Cannonballs",
		model = 1662886,
		text = {
			en = "Blacksteel Cannonballs",
			de = "Schwarzstahlkanonenkugeln",
			es = "Balas de cañón de acero negro",
			mx = "Balas de cañón de acero negro",
			fr = "Boulets en noiracier",
			it = "Palle di Cannone d'Acciaio Nero",
			pt = "Balas de Canhão de Aço Negro",
			ru = "Ядра из черной стали",
			ko = "Blacksteel Cannonballs",
			cn = "黑钢炮弹",
			tw = "黑鋼砲彈",
		},
	},
})
do ObjectDB[objectID] = objectData; end
