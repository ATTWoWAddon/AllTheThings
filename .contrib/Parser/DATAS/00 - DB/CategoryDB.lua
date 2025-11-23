---------------------------------------------------------
--   C A T E G O R Y   D A T A B A S E   M O D U L E   --
---------------------------------------------------------
local CategoryDB = CategoryDB; for categoryID,categoryData in pairs({
	[1] = {
		readable = "Bullets",
		icon = 132383,
		text = {
			en = "Bullets",
			es = "Municiones",
			mx = "Municiones",
			ko = "투사체",
		},
	},
	[2] = {
		readable = "Consumable",
		icon = 132108,
		text = {
			en = "Consumable",
			de = "Verbrauchsgegenstand",
			es = "Consumible",
			mx = "Objeto Consumible",
			fr = "consommable",
			it = "Consumabile",
			pt = "Consumível",
			ko = "소모품",
		},
	},
	[3] = {
		readable = "Tarot Decks",
		icon = 134492,
		text = {
			en = "Tarot Decks",
			de = "Tarotkarten",
			es = "Baraja de Tarot",
			mx = "Naipe de Tarot",
			fr = "Jeu de tarot",
			it = "Mazzo di Tarocchi",
			pt = "Baralho de Tarô",
			ru = "карт Таро",
			ko = "카드 묶음",
			cn = "塔罗牌",
		},
	},
	[58] = {
		readable = "Holiday Cooking",
		icon = 134018,
		text = {
			en = "Holiday Cooking",
			es = "Cocina festiva",
			mx = "Cocina festiva",
			ko = "축제 요리",
		},
	},
	[63] = {
		readable = "Everyday Cooking",
		icon = 133968,
		text = {
			en = "Everyday Cooking",
			es = "Cocina diaria",
			mx = "Cocina diaria",
			ko = "일반 요리",
		},
	},
	[64] = {
		readable = "Way of the Grill",
		icon = 629054,
		text = {
			en = WOWAPI_GetSpellName(124694),
		},
	},
	[65] = {
		readable = "Way of the Wok",
		icon = 629059,
		text = {
			en = WOWAPI_GetSpellName(125584),
		},
	},
	[66] = {
		readable = "Way of the Pot",
		icon = 629056,
		text = {
			en = WOWAPI_GetSpellName(125586),
		},
	},
	[67] = {
		readable = "Way of the Steamer",
		icon = 629057,
		text = {
			en = WOWAPI_GetSpellName(125587),
		},
	},
	[68] = {
		readable = "Way of the Oven",
		icon = 629055,
		text = {
			en = WOWAPI_GetSpellName(125588),
		},
	},
	[69] = {
		readable = "Way of the Brew",
		icon = 629058,
		text = {
			en = WOWAPI_GetSpellName(125589),
		},
	},
	[70] = {
		readable = "Unusual Delights",
		icon = 133168,
		text = {
			en = "Unusual Delights",
			es = "Delicias inusuales",
			mx = "Delicias inusuales",
			ko = "특별한 별미",
		},
	},
	[71] = {
		readable = "Weapon Skills",
		icon = 135580,
		text = {
			en = "Weapon Skills",
			es = "Habilidad en armas",
			mx = "Habilidad en armas",
		},
	},
	[72] = {
		readable = "Old World Recipes",
		text = {
			en = "Old World Recipes",
			es = "Recetas del viejo mundo",
			mx = "Recetas del viejo mundo",
		},
	},
	[73] = {
		readable = "Outlandish Dishes",
		icon = 134493,
		text = {
			en = "Outlandish Dishes",
			es = "Recetas de Terrallende",
			mx = "Recetas de Terrallende",
		},
	},
	[74] = {
		readable = "Recipes of the Cold North",
		text = {
			en = "Recipes of the Cold North",
			es = "Recetas del frio norte",
			mx = "Recetas del frio norte",
		},
	},
	[75] = {
		readable = "Cataclysm Recipes",
		text = {
			en = "Cataclysm Recipes",
			es = "Recetas cataclísmicas",
			mx = "Recetas cataclísmicas",
		},
	},
	[90] = {
		readable = "Pandaren Cuisine",
		text = {
			en = "Pandaren Cuisine",
			es = "Cocina pandaren",
			mx = "Cocina pandaren",
		},
	},
	[91] = {
		readable = "Glyphs",
		icon = 254299,
		text = {
			en = "Glyphs",
			de = "Glyphe",
			es = "Glifos",
			mx = "Glifos",
			fr = "Glyphe",
			it = "Glifo",
			pt = "Glifo",
			ru = "Символ",
			ko = "문양",
		},
	},
	[103] = {
		readable = "Off-hand",
		text = {
			en = "Off-hand",
			es = "Mano izquierda",
			mx = "Mano izquierda",
		},
	},
	[104] = {
		readable = "Ink",
		icon = 237070,
		text = {
			en = "Ink",
			de = "Tinte",
			es = "Tinta",
			mx = "Tinta",
			fr = "Encre",
			it = "Tinta",
			pt = "Tinta",
			ru = "Чернила",
			ko = "잉크",
		},
	},
	[105] = {
		readable = "Clear Mind",
		text = {
			en = "Clear Mind",
			de = "Klaren Geistes",
			es = "Mente clara",
			mx = "Mente clara",
			fr = "L’esprit ouvert",
			it = "Vuoto Mentale",
			pt = "Mente Limpa",
			ru = "ясного разума",
			ko = "맑은 정신의",
		},
	},
	[106] = {
		readable = "Card",
		icon = 134492,
		text = {
			en = "Card",
			es = "Carta",
			mx = "Carta",
			fr = "Carte",
			it = "Carta",
			pt = "Carta",
			ru = "Карты",
			tw = "卡片",
		},
	},
	[107] = {
		readable = "Scrolls",
		icon = 134939,
		text = {
			en = "Scrolls",
			es = "Pergaminos",
			mx = "Pergaminos",
		},
	},
	[108] = {
		readable = "Research",
		icon = 134331,
		text = {
			en = "Research",
			de = "Forschung",
			es = "Investigación",
			mx = "Investigación",
			fr = "Recherches",
			it = "Ricerca",
			pt = "Pesquisa",
			ru = "Исследование",
			ko = "연구",
		},
	},
	[114] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[119] = {
		readable = "Shoulder Inscription",
		text = {
			en = "Shoulder Inscription",
			es = "Inscripción de hombros",
			mx = "Inscripción de hombros",
			ko = "어깨 마법부여",
		},
	},
	[165] = {
		readable = "Fist Weapons",
		icon = 135599,
		text = {
			en = "Fist Weapons",
			es = "Armas de puño",
			mx = "Armas de puño",
		},
	},
	[167] = {
		readable = "Crowns",
		icon = 132769,
		text = {
			en = "Crowns",
			es = "Coronas",
			mx = "Coronas",
			ko = "머리",
		},
	},
	[168] = {
		readable = "Materials",
		icon = 133237,
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[171] = {
		readable = "Necklaces",
		icon = 133294,
		text = {
			en = "Necklaces",
			es = "Collares",
			mx = "Collares",
			ko = "목",
		},
	},
	[176] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			es = "Anillos",
			mx = "Anillos",
			ko = "손가락",
		},
	},
	[178] = {
		readable = "Statues",
		icon = 134451,
		text = {
			en = "Statues",
			es = "Estatuas",
			mx = "Estatuas",
		},
	},
	[180] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			es = "Abalorios",
			mx = "Abalorios",
			ko = "장비",
		},
	},
	[183] = {
		readable = "Parts",
		icon = 133006,
		text = {
			en = "Parts",
			es = "Partes",
			mx = "Partes",
			ko = "부품",
		},
	},
	[184] = {
		readable = "Explosives",
		icon = 133711,
		text = {
			en = "Explosives",
			es = "Explosivos",
			mx = "Explosivos",
			ko = "폭발물",
		},
	},
	[185] = {
		readable = "Goggles",
		icon = 133149,
		text = {
			en = "Goggles",
			de = "Schutzbrille",
			es = "Gafas",
			mx = "Lentes",
			fr = "Lunettes",
			it = "Visori",
			pt = "Tecnóculos",
			ru = "очки",
			ko = "고글",
		},
	},
	[188] = {
		readable = "Devices",
		icon = 132766,
		text = {
			en = "Devices",
			es = "Dispositivos",
			mx = "Dispositivos",
			ko = "장치",
		},
	},
	[189] = {
		readable = "Guns & Bows",
		icon = 135612,
		text = {
			en = "Guns & Bows",
			es = "Pistolas y arcos",
			mx = "Pistolas y arcos",
			ko = "총과 활",
		},
	},
	[190] = {
		readable = "Scopes",
		icon = 134442,
		text = {
			en = "Scopes",
			es = "Miras",
			mx = "Miras",
			fr = "Lunette",
			it = "Mirino",
			ru = "Прицел",
			ko = "조준경",
		},
	},
	[191] = {
		readable = "Tools",
		icon = 134520,
		text = {
			en = "Tools",
			es = "Herramientas",
			mx = "Herramientas",
			ko = "장비",
		},
	},
	[194] = {
		readable = "Fireworks",
		icon = 135815,
		text = {
			en = "Fireworks",
			de = "Feuerwerk",
			es = "Fuegos artificiales",
			mx = "Fuegos artificiales",
			fr = "Feux d’artifice",
			it = "Fuochi d'Artificio",
			pt = "Fogos de Artifício",
			ru = "Фейерверк",
			ko = "폭죽",
			cn = "烟花",
			tw = "煙火",
		},
	},
	[215] = {
		readable = "Materials",
		icon = 135247,
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[216] = {
		readable = "Weapon Mods",
		icon = 135250,
		text = {
			en = "Weapon Mods",
			es = "Modificaciones de arma",
			mx = "Modificaciones de arma",
		},
	},
	[217] = {
		readable = "Armor Mods",
		icon = 133597,
		text = {
			en = "Armor Mods",
			es = "Modificaciones de armadura",
			mx = "Modificaciones de armadura",
		},
	},
	[218] = {
		readable = "Helms",
		icon = 133127,
		text = {
			en = [[~HEADSLOT]],
		},
	},
	[219] = {
		readable = "Shoulders",
		icon = 135053,
		text = {
			en = [[~SHOULDERSLOT]],
		},
	},
	[220] = {
		readable = "Chest",
		icon = 132624,
		text = {
			en = [[~INVTYPE_CHEST]],
		},
	},
	[221] = {
		readable = "Gauntlets",
		icon = 132938,
		text = {
			en = "Gauntlets",
			es = "Guanteletes",
			mx = "Guanteletes",
			ko = "손",
		},
	},
	[222] = {
		readable = "Bracers",
		icon = 132616,
		text = {
			en = [[~WRISTSLOT]],
		},
	},
	[223] = {
		readable = "Belts",
		icon = 132516,
		text = {
			en = [[~WAISTSLOT]],
		},
	},
	[224] = {
		readable = "Legs",
		icon = 134584,
		text = {
			en = "Legs",
			es = "Piernas",
			mx = "Piernas",
			ko = "다리",
		},
	},
	[225] = {
		readable = "Boots",
		icon = 132535,
		text = {
			en = [[~FEETSLOT]],
		},
	},
	[226] = {
		readable = "Shields",
		icon = 134952,
		text = {
			en = "Shields",
			es = "Escudos",
			mx = "Escudos",
			ko = "방패",
		},
	},
	[227] = {
		readable = "Weapons",
		icon = 135580,
		text = {
			en = [[~AUCTION_CATEGORY_WEAPONS]],
		},
	},
	[228] = {
		readable = "Skeleton Keys",
		icon = 134245,
		text = {
			en = "Skeleton Keys",
			es = "Llaves esqueleto",
			mx = "Llaves esqueleto",
			fr = "Passe-partout",
			it = "Chiave Universale",
			pt = "Chave-mestra",
			ko = "해골 열쇠",
		},
	},
	[230] = {
		readable = "Materials",
		icon = 132907,
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[233] = {
		readable = "Bags",
		icon = 133652,
		text = {
			en = "Bags",
			es = "Bolsas",
			mx = "Bolsas",
			ko = "가방",
			tw = "背包",
		},
	},
	[234] = {
		readable = "Hats & Hoods",
		icon = 133133,
		text = {
			en = "Hats & Hoods",
			es = "Sombreros y caperuzas",
			mx = "Sombreros y capuchas",
			ko = "머리",
		},
	},
	[235] = {
		readable = "Shoulders",
		icon = 135033,
		text = {
			en = [[~SHOULDERSLOT]],
		},
	},
	[236] = {
		readable = "Robes & Tunics",
		icon = 132659,
		text = {
			en = "Robes & Tunics",
			es = "Togas y túnicas",
			mx = "Togas y túnicas",
			ko = "가슴",
		},
	},
	[237] = {
		readable = "Bracers",
		icon = 132606,
		text = {
			en = [[~WRISTSLOT]],
		},
	},
	[238] = {
		readable = "Belts",
		icon = 132503,
		text = {
			en = [[~WAISTSLOT]],
		},
	},
	[239] = {
		readable = "Gloves",
		icon = 132940,
		text = {
			en = [[~HANDSSLOT]],
		},
	},
	[240] = {
		readable = "Pants",
		icon = 134586,
		text = {
			en = [[~LEGSSLOT]],
		},
	},
	[241] = {
		readable = "Boots",
		icon = 132539,
		text = {
			en = [[~FEETSLOT]],
		},
	},
	[242] = {
		readable = "Cloaks",
		icon = 133768,
		text = {
			en = "Cloaks",
			es = "Capas",
			mx = "Capas",
			ko = "등",
		},
	},
	[243] = {
		readable = "Shirts",
		icon = 135029,
		text = {
			en = "Shirts",
			es = "Camisas",
			mx = "Camisas",
			ko = "속옷",
		},
	},
	[246] = {
		readable = "Special",
		text = {
			en = "Special",
			es = "Especial",
			mx = "Especial",
		},
	},
	[247] = {
		readable = "Materials",
		icon = 134252,
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[249] = {
		readable = "Armor Kits",
		icon = 133611,
		text = {
			en = "Armor Kits",
			es = "Refuerzo para armadura",
			mx = "Refuerzo para armadura",
			ko = "방어구 키트",
		},
	},
	[250] = {
		readable = "Bags",
		icon = 133628,
		text = {
			en = "Bags",
			es = "Bolsas",
			mx = "Bolsas",
			ko = "가방",
			tw = "背包",
		},
	},
	[251] = {
		readable = "Helms",
		icon = 133076,
		text = {
			en = [[~HEADSLOT]],
		},
	},
	[252] = {
		readable = "Shoulders",
		icon = 135032,
		text = {
			en = [[~SHOULDERSLOT]],
		},
	},
	[253] = {
		readable = "Chest",
		icon = 132635,
		text = {
			en = [[~INVTYPE_CHEST]],
		},
	},
	[254] = {
		readable = "Bracers",
		icon = 132607,
		text = {
			en = [[~WRISTSLOT]],
		},
	},
	[255] = {
		readable = "Gloves",
		icon = 132939,
		text = {
			en = [[~HANDSSLOT]],
		},
	},
	[256] = {
		readable = "Belts",
		icon = 132513,
		text = {
			en = [[~WAISTSLOT]],
		},
	},
	[257] = {
		readable = "Pants",
		icon = 134592,
		text = {
			en = [[~LEGSSLOT]],
		},
	},
	[258] = {
		readable = "Boots",
		icon = 132544,
		text = {
			en = [[~FEETSLOT]],
		},
	},
	[259] = {
		readable = "Cloaks",
		icon = 133755,
		text = {
			en = "Cloaks",
			es = "Capas",
			mx = "Capas",
			ko = "등",
		},
	},
	[260] = {
		readable = "Special",
		text = {
			en = "Special",
			es = "Especial",
			mx = "Especial",
		},
	},
	[264] = {
		readable = "Smelting",
		text = {
			en = "Smelting",
			de = "Verhüttung",
			es = "Fundiendo",
			mx = "Fundición",
			fr = "Fondre",
			pt = "Fundição",
			ru = "Выплавка металлов",
			ko = "제련술",
			cn = "熔炼",
			tw = "熔煉",
		},
	},
	[265] = {
		readable = "Elemental",
		text = {
			en = "Elemental",
		},
	},
	[332] = {
		readable = "Alchemy of Draenor",
		text = {
			en = "Alchemy of Draenor",
			de = "Alchemie von Draenor",
			es = "Alquimia de Draenor",
			mx = "Alquimia de Draenor",
			fr = "Alchimie de Draenor",
			it = "Alchimia di Draenor",
			pt = "Alquimia de Draenor",
			ru = "Алхимия Дренора",
			ko = "드레노어 연금술",
			cn = "德拉诺炼金术",
			tw = "德拉諾鍊金術",
		},
	},
	[333] = {
		readable = "Reagents and Research",
		icon = 134331,
		text = {
			en = "Reagents and Research",
			es = "Componentes e investigación",
			mx = "Componentes e investigación",
			ko = "재료 & 연구",
		},
	},
	[334] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			es = "Frascos",
			mx = "Frascos",
			ko = "영약",
		},
	},
	[335] = {
		readable = "Potions and Elixirs",
		icon = 134831,
		text = {
			en = "Potions and Elixirs",
			es = "Pociones y elixires",
			mx = "Pociones y elixires",
			ko = "물약과 엘릭서",
		},
	},
	[336] = {
		readable = "Trinkets and Trinket Upgrades",
		icon = 135443,
		text = {
			en = "Trinkets and Trinket Upgrades",
			es = "Abalorios y mejoras de abalorio",
			mx = "Abalorios y mejoras de abalorio",
			ko = "장비",
		},
	},
	[342] = {
		readable = "Food of Draenor",
		text = {
			en = "Food of Draenor",
			es = "Comida de Draenor",
			mx = "Comida de Draenor",
		},
	},
	[343] = {
		readable = "Meat Dishes",
		text = {
			en = "Meat Dishes",
			es = "Platos de carne",
			mx = "Platos de carne",
		},
	},
	[344] = {
		readable = "Fish Dishes",
		text = {
			en = "Fish Dishes",
			es = "Platos de pescado",
			mx = "Platos de pescado",
		},
	},
	[345] = {
		readable = "Feasts",
		text = {
			en = "Feasts",
			es = "Festín",
			mx = "Festín",
		},
	},
	[346] = {
		readable = "Delicacies",
		text = {
			en = "Delicacies",
			es = "Delicias",
			mx = "Delicias",
		},
	},
	[347] = {
		readable = "Draenor Engineering",
		text = {
			en = "Draenor Engineering",
			de = "Ingenieurskunst von Draenor",
			es = "Ingeniería de Draenor",
			mx = "Ingeniería de Draenor",
			fr = "Ingénierie de Draenor",
			it = "Ingegneria di Draenor",
			pt = "Engenharia Draenoriana",
			ru = "Дренорское инженерное дело",
			ko = "드레노어 기계공학",
			cn = "德拉诺工程学",
			tw = "德拉諾工程學",
		},
	},
	[348] = {
		readable = "Draenor Enchanting",
		text = {
			en = "Draenor Enchanting",
			de = "Verzauberkunst von Draenor",
			es = "Encantamiento de Draenor",
			mx = "Encantamiento de Draenor",
			fr = "Enchantement de Draenor",
			it = "Incantamento di Draenor",
			pt = "Encantamento Draenoriano",
			ru = "Дренорское наложение чар",
			ko = "드레노어 마법부여",
			cn = "德拉诺附魔",
			tw = "德拉諾附魔",
		},
	},
	[349] = {
		readable = "Cloak",
		icon = 133770,
		text = {
			en = "Cloak",
			es = "Capas",
			mx = "Capas",
			ko = "등",
		},
	},
	[350] = {
		readable = "Neck",
		icon = 133294,
		text = {
			en = "Neck",
			es = "Cuello",
			mx = "Cuello",
			ko = "목",
		},
	},
	[351] = {
		readable = "Ring",
		icon = 133397,
		text = {
			en = "Ring",
			es = "Anillo",
			mx = "Anillo",
			ko = "손가락",
		},
	},
	[352] = {
		readable = "Weapon",
		icon = 135792,
		text = {
			en = "Weapon",
			es = "Arma",
			mx = "Arma",
		},
	},
	[354] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[361] = {
		readable = "Item Enhancers",
		text = {
			en = "Item Enhancers",
			es = "Mejoras de objeto",
			mx = "Mejoras de objeto",
		},
	},
	[362] = {
		readable = "Tailoring Patterns",
		text = {
			en = "Tailoring Patterns",
			es = "Patrones de sastreria",
			mx = "Patrones de sastreria",
		},
	},
	[363] = {
		readable = "Armor",
		text = {
			en = "Armor",
			es = "Armadura",
			mx = "Armadura",
		},
	},
	[364] = {
		readable = "Dyes and Thread",
		text = {
			en = "Dyes and Thread",
			es = "Tintes e hilos",
			mx = "Tintes e hilos",
		},
	},
	[366] = {
		readable = "Reagents and Research",
		icon = 134331,
		text = {
			en = "Reagents and Research",
			es = "Componentes e investigación",
			mx = "Componentes e investigación",
			ko = "재료 & 연구",
		},
	},
	[367] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[369] = {
		readable = "Draenor Patterns",
		text = {
			en = "Draenor Patterns",
			es = "Patrones de Draenor",
			mx = "Patrones de Draenor",
		},
	},
	[372] = {
		readable = "Jewelcrafting Designs",
		text = {
			en = "Jewelcrafting Designs",
			es = "Diseños de Joyería",
			mx = "Diseños de Joyería",
		},
	},
	[373] = {
		readable = "Draenor Designs",
		text = {
			en = "Draenor Designs",
			es = "Diseños de Draenor",
			mx = "Diseños de Draenor",
		},
	},
	[374] = {
		readable = "Reagents and Research",
		icon = 134331,
		text = {
			en = "Reagents and Research",
			es = "Componentes e investigación",
			mx = "Componentes e investigación",
			ko = "재료 & 연구",
		},
	},
	[375] = {
		readable = "Jewelry Enhancers",
		text = {
			en = "Jewelry Enhancers",
			es = "Mejoras de Joyería",
			mx = "Mejoras de Joyería",
		},
	},
	[376] = {
		readable = "Jewelry",
		text = {
			en = "Jewelry",
			es = "Joyas",
			mx = "Joyas",
		},
	},
	[377] = {
		readable = "Gems",
		text = {
			en = "Gems",
			es = "Gemas",
			mx = "Gemas",
		},
	},
	[378] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[379] = {
		readable = "Leatherworking Patterns",
		text = {
			en = "Leatherworking Patterns",
			es = "Patrones de peletería",
			mx = "Patrones de peletería",
		},
	},
	[380] = {
		readable = "Draenor Patterns",
		text = {
			en = "Draenor Patterns",
			es = "Patrones de Draenor",
			mx = "Patrones de Draenor",
		},
	},
	[381] = {
		readable = "Reagents and Research",
		icon = 134331,
		text = {
			en = "Reagents and Research",
			es = "Componentes e investigación",
			mx = "Componentes e investigación",
		},
	},
	[382] = {
		readable = "Leather Armor",
		text = {
			en = "Leather Armor",
			es = "Armadura de cuero",
			mx = "Armadura de cuero",
		},
	},
	[383] = {
		readable = "Mail Armor",
		text = {
			en = "Mail Armor",
			es = "Armadura de malla",
			mx = "Armadura de malla",
		},
	},
	[384] = {
		readable = "Armor Enhancers",
		text = {
			en = "Armor Enhancers",
			es = "Mejoras de armadura",
			mx = "Mejoras de armadura",
		},
	},
	[385] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			es = "Capas",
			mx = "Capas",
			ko = "등",
		},
	},
	[386] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			es = "Bolsas",
			mx = "Bolsas",
			ko = "가방",
			tw = "背包",
		},
	},
	[388] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[389] = {
		readable = "Draenor Plans",
		text = {
			en = "Draenor Plans",
			es = "Planos de Draenor",
			mx = "Planos de Draenor",
		},
	},
	[390] = {
		readable = "Reagents and Research",
		icon = 134331,
		text = {
			en = "Reagents and Research",
			es = "Componentes e investigación",
			mx = "Componentes e investigación",
			ko = "재료 & 연구",
		},
	},
	[391] = {
		readable = "Item Enhancers",
		text = {
			en = "Item Enhancers",
			es = "Mejora de objetos",
			mx = "Mejora de objetos",
		},
	},
	[392] = {
		readable = "Armor",
		text = {
			en = "Armor",
			es = "Armadura",
			mx = "Armadura",
		},
	},
	[393] = {
		readable = "Weapons and Shields",
		icon = 135792,
		text = {
			en = "Weapons and Shields",
			es = "Armas y escudos",
			mx = "Armas y escudos",
			ko = "무기 & 방패",
		},
	},
	[394] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[399] = {
		readable = "Illusions",
		icon = 237174,
		text = {
			en = "Illusions",
			es = "Ilusiones",
			mx = "Ilusiones",
		},
	},
	[400] = {
		readable = "Battle Standards",
		text = {
			en = "Battle Standards",
			es = "Confalones de batalla",
			mx = "Estandartes de batalla",
		},
	},
	[402] = {
		readable = "Tents",
		text = {
			en = "Tents",
			es = "Tiendas",
			mx = "Tiendas",
		},
	},
	[403] = {
		readable = "Merchant Orders",
		text = {
			en = "Merchant Orders",
			es = "Pedidos de mercader",
			mx = "Ordenes de mercader",
		},
	},
	[404] = {
		readable = "Removal",
		text = {
			en = "Removal",
			es = "Kit de extracción",
			mx = "Equipo de desacople",
		},
	},
	[407] = {
		readable = "Reagents and Research",
		icon = 134331,
		text = {
			en = "Reagents and Research",
			es = "Componentes e investigación",
			mx = "Componentes e investigación",
			ko = "재료 & 연구",
		},
	},
	[409] = {
		readable = "Reagents and Research",
		icon = 1003586,
		text = {
			en = "Reagents and Research",
			es = "Componentes e investigación",
			mx = "Componentes e investigación",
			ko = "재료 & 연구",
		},
	},
	[410] = {
		readable = "Draenor Inscription",
		text = {
			en = "Draenor Inscription",
			de = "Inschriftenkunde von Draenor",
			es = "Inscripción de Draenor",
			mx = "Inscripción de Draenor",
			fr = "Calligraphie de Draenor",
			it = "Runografia di Draenor",
			pt = "Escrivania de Draenor",
			ru = "Начертание Дренора",
			ko = "드레노어 주문각인",
			cn = "德拉诺铭文",
			tw = "德拉諾銘文學",
		},
	},
	[411] = {
		readable = "Staves & Wands",
		text = {
			en = "Staves & Wands",
			es = "Bastones y varitas",
			mx = "Bastones y varitas",
			ko = "지팡이 & 마법봉",
		},
	},
	[412] = {
		readable = "Card",
		text = {
			en = "Card",
			es = "Carta",
			mx = "Carta",
			fr = "Carte",
			it = "Carta",
			pt = "Carta",
			ru = "Карты",
			tw = "卡片",
		},
	},
	[413] = {
		readable = "Off-hand",
		text = {
			en = "Off-hand",
			es = "Mano izquierda",
			mx = "Mano izquierda",
		},
	},
	[414] = {
		readable = "Reagents and Research",
		icon = 134331,
		text = {
			en = "Reagents and Research",
			es = "Componentes e investigación",
			mx = "Componentes e investigación",
			ko = "재료 & 연구",
		},
	},
	[415] = {
		readable = "Inscription",
		text = {
			en = "Inscription",
			de = "Inschriftenkunde",
			es = "Inscripción",
			mx = "Inscripción",
			fr = "Calligraphie",
			it = "Runografia",
			pt = "Escrivania",
			ru = "Начертание",
			ko = "주문각인",
			cn = "铭文",
			tw = "銘文學",
		},
	},
	[416] = {
		readable = "Goggles",
		icon = 133023,
		text = {
			en = "Goggles",
			de = "Schutzbrille",
			es = "Gafas",
			mx = "Lentes",
			fr = "Lunettes",
			it = "Visori",
			pt = "Tecnóculos",
			ru = "очки",
			ko = "고글",
		},
	},
	[417] = {
		readable = "Robotics",
		text = {
			en = "Robotics",
			es = "Robóticos",
			mx = "Robots",
		},
	},
	[418] = {
		readable = "Devices",
		text = {
			en = "Devices",
			es = "Dispositivos",
			mx = "Dispositivos",
			ko = "장치",
		},
	},
	[419] = {
		readable = "Engineering",
		text = {
			en = "Engineering",
			de = "Ingenieurskunst",
			es = "Ingeniería",
			mx = "Ingeniería",
			fr = "Ingénierie",
			it = "Ingegneria",
			pt = "Engenharia",
			ru = "Инженерное дело",
			ko = "기계공학",
			cn = "工程学",
			tw = "工程學",
		},
	},
	[420] = {
		readable = "Tools",
		text = {
			en = "Tools",
			es = "Herramientas",
			mx = "Herramientas",
			ko = "장비",
		},
	},
	[423] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			de = "Transmutation",
			es = "Transmutación",
			mx = "Transmutación",
			fr = "Transmutation",
			it = "Trasmutazione",
			pt = "Transmutação",
			ru = "Трансмутация",
			ko = "변환식",
			cn = "转化",
			tw = "轉化",
		},
	},
	[424] = {
		readable = "Training",
		icon = 134331,
		text = {
			en = "Training",
			es = "Entrenamiento",
			mx = "Entrenamiento",
		},
	},
	[425] = {
		readable = "Legion Mining",
		text = {
			en = "Legion Mining",
			de = "Bergbau der Verheerten Inseln",
			es = "Minería de Legion",
			fr = "Minage de Legion",
			it = "Estrazione di Legion",
			pt = "Mineração de Legion",
			ru = "Горное дело Legion",
			ko = "군단 채광",
			cn = "军团采矿",
			tw = "軍團採礦",
		},
	},
	[426] = {
		readable = "Legion Plans",
		text = {
			en = "Legion Plans",
			es = "Planos de Legion",
			mx = "Planos de Legion",
		},
	},
	[427] = {
		readable = "Armor",
		text = {
			en = "Armor",
			es = "Armadura",
			mx = "Armadura",
		},
	},
	[428] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[429] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			es = "Componentes",
			mx = "Componentes",
			ko = "재료",
		},
	},
	[430] = {
		readable = "Legion Patterns",
		text = {
			en = "Legion Patterns",
			es = "Patrones de Legion",
			mx = "Patrones de Legion",
		},
	},
	[431] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			es = "Capas",
			mx = "Capas",
			ko = "등",
		},
	},
	[432] = {
		readable = "Training",
		icon = 134331,
		text = {
			en = "Training",
			es = "Entrenamiento",
			mx = "Entrenamiento",
		},
	},
	[433] = {
		readable = "Alchemy of the Broken Isles",
		text = {
			en = "Alchemy of the Broken Isles",
			de = "Alchemie der Verheerten Inseln",
			es = "Alquimia de Legion",
			mx = "Alquimia de Legion",
			fr = "Alchimie de Legion",
			it = "Alchimia di Legion",
			pt = "Alquimia de Legion",
			ru = "Алхимия Legion",
			ko = "군단 연금술",
			cn = "军团炼金",
			tw = "軍團鍊金術",
		},
	},
	[434] = {
		readable = "Combat Potions",
		text = {
			en = "Combat Potions",
			es = "Pociones de combate",
			mx = "Pociones de combate",
			ko = "전투 물약",
		},
	},
	[435] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			es = "Frascos",
			mx = "Frascos",
			ko = "영약",
		},
	},
	[436] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			de = "Transmutation",
			es = "Transmutación",
			mx = "Transmutación",
			fr = "Transmutation",
			it = "Trasmutazione",
			pt = "Transmutação",
			ru = "Трансмутация",
			ko = "변환식",
			cn = "转化",
			tw = "轉化",
		},
	},
	[437] = {
		readable = "Utility Potions",
		text = {
			en = "Utility Potions",
			es = "Pociones de utilidad",
			mx = "Pociones de utilidad",
			ko = "유틸리티 물약",
		},
	},
	[438] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			es = "Abalorios",
			mx = "Abalorios",
			ko = "장비",
		},
	},
	[439] = {
		readable = "Cauldrons",
		text = {
			en = "Cauldrons",
			es = "Calderos",
			mx = "Calderos",
		},
	},
	[440] = {
		readable = "Mass Milling",
		text = {
			en = "Mass Milling",
			es = "Moler a granel",
			mx = "Molido en masa",
		},
	},
	[443] = {
		readable = "Legion Enchanting",
		text = {
			en = "Legion Enchanting",
			de = "Verzauberkunst der Verheerten Inseln",
			es = "Encantamiento de Legion",
			mx = "Encantamiento de Legion",
			fr = "Enchantement de Legion",
			it = "Incantamento di Legion",
			pt = "Encantamento de Legion",
			ru = "Наложение чар Legion",
			ko = "군단 마법부여",
			cn = "军团附魔",
			tw = "軍團附魔",
		},
	},
	[444] = {
		readable = "Neck Enchantments",
		icon = 133294,
		text = {
			en = "Neck Enchantments",
			es = "Encantamientos de cuello",
			mx = "Encantamientos de cuello",
		},
	},
	[445] = {
		readable = "Ring Enchantments",
		icon = 133397,
		text = {
			en = "Ring Enchantments",
			es = "Encantamientos de anillo",
			mx = "Encantamientos de anillo",
			ko = "손가락 마법부여",
		},
	},
	[446] = {
		readable = "Cloak Enchantments",
		icon = 133770,
		text = {
			en = "Cloak Enchantments",
			es = "Encantamientos de capa",
			mx = "Encantamientos de capa",
			ko = "망토 마법부여",
		},
	},
	[447] = {
		readable = "Shoulder Enchantments",
		text = {
			en = "Shoulder Enchantments",
			es = "Encantamientos de hombros",
			mx = "Encantamientos de hombros",
			ko = "어깨 마법부여",
		},
	},
	[448] = {
		readable = "Glove Enchantments",
		icon = 132938,
		text = {
			en = "Glove Enchantments",
			es = "Encantamientos de guantes",
			mx = "Encantamientos de guantes",
			ko = "장갑 마법부여",
		},
	},
	[449] = {
		readable = "Toys, Pets, and Mounts",
		text = {
			en = "Toys, Pets, and Mounts",
			es = "Juguetes, Mascotas y Monturas",
			mx = "Juguetes, Mascotas y Monturas",
		},
	},
	[450] = {
		readable = "Legion Inscription",
		text = {
			en = "Legion Inscription",
			de = "Inschriftenkunde der Verheerten Inseln",
			es = "Inscripción de Legion",
			mx = "Inscripción de Legion",
			fr = "Calligraphie de Legion",
			it = "Runografia di Legion",
			pt = "Escrivania de Legion",
			ru = "Начертание Legion",
			ko = "군단 주문각인",
			cn = "军团铭文",
			tw = "軍團銘文學",
		},
	},
	[451] = {
		readable = "Cards",
		text = {
			en = "Cards",
			es = "Cartas",
			mx = "Cartas",
		},
	},
	[453] = {
		readable = "Vantus Runes",
		icon = 1392953,
		text = {
			en = "Vantus Runes",
			de = "Vantusrunen",
			es = "Runas vantus",
			mx = "Runas vantus",
			fr = "Runes de Vantus",
			it = "Rune Vantus",
			pt = "Runas Vantus",
			ru = "Вантийские руны",
			ko = "반투스 룬",
			cn = "凡图斯符文",
			tw = "梵陀符文",
		},
	},
	[454] = {
		readable = "Books & Scrolls",
		icon = 134939,
		text = {
			en = "Books & Scrolls",
			es = "Libros y pergaminos",
			mx = "Libros y pergaminos",
		},
	},
	[456] = {
		readable = "Legion Herbalism",
		text = {
			en = "Legion Herbalism",
			de = "Kräuterkunde der Verheerten Inseln",
			es = "Herboristería de Legion",
			mx = "Herboristería de Legion",
			fr = "Herboristerie de Legion",
			it = "Erbalismo di Legion",
			pt = "Herborismo de Legion",
			ru = "Травничество Legion",
			ko = "군단 약초채집",
			cn = "军团草药学",
			tw = "軍團草藥學",
		},
	},
	[459] = {
		readable = "Legion Skinning",
		text = {
			en = "Legion Skinning",
			de = "Kürschnerei der Verheerten Inseln",
			es = "Desuello de Legion",
			mx = "Desuello de Legion",
			fr = "Dépeçage de Legion",
			it = "Scuoiatura di Legion",
			pt = "Esfolamento de Legion",
			ru = "Снятие шкур Legion",
			ko = "군단 무두질",
			cn = "军团剥皮",
			tw = "軍團剝皮",
		},
	},
	[460] = {
		readable = "Legion Patterns",
		text = {
			en = "Legion Patterns",
			es = "Patrones de Legion",
			mx = "Patrones de Legion",
		},
	},
	[461] = {
		readable = "Leather Armor",
		text = {
			en = "Leather Armor",
			es = "Armaduras de cuero",
			mx = "Armaduras de cuero",
		},
	},
	[462] = {
		readable = "Mail Armor",
		text = {
			en = "Mail Armor",
			es = "Armadura de malla",
			mx = "Armadura de malla",
		},
	},
	[463] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[464] = {
		readable = "Legion Designs",
		text = {
			en = "Legion Designs",
			es = "Diseños de Legion",
			mx = "Diseños de Legion",
		},
	},
	[465] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			es = "Anillos",
			mx = "Anillos",
			ko = "손가락",
		},
	},
	[466] = {
		readable = "Gems",
		text = {
			en = "Gems",
			es = "Gemas",
			mx = "Gemas",
		},
	},
	[467] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[468] = {
		readable = "Training",
		icon = 134331,
		text = {
			en = "Training",
			es = "Entrenamiento",
			mx = "Entrenamiento",
		},
	},
	[469] = {
		readable = "Legion Engineering",
		text = {
			en = "Legion Engineering",
			de = "Ingenieurskunst der Verheerten Inseln",
			es = "Ingeniería de Legion",
			mx = "Ingeniería de Legion",
			fr = "Ingénierie de Legion",
			it = "Ingegneria di Legion",
			pt = "Engenharia de Legion",
			ru = "Инженерное дело Legion",
			ko = "군단 기계공학",
			cn = "军团工程学",
			tw = "軍團工程學",
		},
	},
	[470] = {
		readable = "Goggles",
		icon = 133023,
		text = {
			en = "Goggles",
			de = "Schutzbrille",
			es = "Gafas",
			mx = "Lentes",
			fr = "Lunettes",
			it = "Visori",
			pt = "Tecnóculos",
			ru = "очки",
			ko = "고글",
		},
	},
	[471] = {
		readable = "Combat Tools",
		text = {
			en = "Combat Tools",
			es = "Herramientas de combate",
			mx = "Herramientas de combate",
			ko = "장비",
		},
	},
	[472] = {
		readable = "Devices",
		text = {
			en = "Devices",
			es = "Dispositivos",
			mx = "Dispositivos",
			ko = "장치",
		},
	},
	[474] = {
		readable = "Robotics",
		text = {
			en = "Robotics",
			es = "Robóticos",
			mx = "Robots",
		},
	},
	[475] = {
		readable = "Food of the Broken Isles",
		text = {
			en = "Food of the Broken Isles",
			es = "Comida de las Islas Abruptas",
			mx = "Comida de las Islas Quebradas",
		},
	},
	[476] = {
		readable = "Snacks",
		text = {
			en = "Snacks",
			es = "Aperitivos",
			mx = "Tentempiés",
		},
	},
	[477] = {
		readable = "Light Meals",
		text = {
			en = "Light Meals",
			mx = "Comidas livianas",
		},
	},
	[478] = {
		readable = "Large Meals",
		text = {
			en = "Large Meals",
			mx = "Comidas grandes",
		},
	},
	[479] = {
		readable = "Delicacies",
		text = {
			en = "Delicacies",
			es = "Delicias",
			mx = "Delicias",
		},
	},
	[480] = {
		readable = "Feasts",
		text = {
			en = "Feasts",
			es = "Festines",
			mx = "Festines",
		},
	},
	[484] = {
		readable = "Material Preparation",
		text = {
			en = "Material Preparation",
			es = "Preparación del material",
			mx = "Preparación del material",
		},
	},
	[485] = {
		readable = "Tanning",
		text = {
			en = "Tanning",
			de = "Gerben",
			es = "Curtido",
			mx = "Curtido",
			fr = "Tannage",
			it = "Tannatura",
			pt = "Curtimento",
			ru = "Дубление",
			ko = "무두질",
			cn = "鞣制",
			tw = "鞣製",
		},
	},
	[486] = {
		readable = "Shaping",
		text = {
			en = "Shaping",
			de = "Modellieren",
			es = "Moldeado",
			mx = "Moldeado",
			fr = "Façonnage",
			it = "Modellamento",
			pt = "Moldagem",
			ru = "Придание формы",
			ko = "세공",
			cn = "塑形",
			tw = "轉化",
		},
	},
	[487] = {
		readable = "Stitching",
		text = {
			en = "Stitching",
			es = "Costura",
			mx = "Costura",
		},
	},
	[488] = {
		readable = "Relics",
		icon = 1003601,
		text = {
			en = "Relics",
			es = "Reliquias",
			mx = "Reliquias",
		},
	},
	[489] = {
		readable = "Relics",
		icon = 1003601,
		text = {
			en = "Relics",
			es = "Reliquias",
			mx = "Reliquias",
		},
	},
	[490] = {
		readable = "Relics",
		icon = 1003601,
		text = {
			en = "Relics",
			es = "Reliquias",
			mx = "Reliquias",
		},
	},
	[491] = {
		readable = "Relics",
		icon = 1003601,
		text = {
			en = "Relics",
			es = "Reliquias",
			mx = "Reliquias",
		},
	},
	[492] = {
		readable = "Mass Milling",
		text = {
			en = "Mass Milling",
			es = "Moler a granel",
			mx = "Molido en masa",
		},
	},
	[495] = {
		readable = "Cloth Armor",
		text = {
			en = "Cloth Armor",
			es = "Armadura de tela",
			mx = "Armadura de tela",
		},
	},
	[496] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			es = "Componentes",
			mx = "Componentes",
			ko = "재료",
		},
	},
	[497] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[505] = {
		readable = "Mass Prospecting",
		text = {
			en = "Mass Prospecting",
			mx = "Exploracion en masa",
		},
	},
	[506] = {
		readable = "Disenchant",
		text = {
			en = "Disenchant",
			de = "Entzaubern",
			es = "Desencantar",
			mx = "Desencantar",
			fr = "Désenchanter",
			it = "Disincantamento",
			pt = "Desencantar",
			ru = "Распыление",
			ko = "마력 추출",
			cn = "分解",
			tw = "分解",
		},
	},
	[507] = {
		readable = "Necklaces",
		icon = 133294,
		text = {
			en = "Necklaces",
			es = "Collares",
			mx = "Collares",
			ko = "목",
		},
	},
	[535] = {
		readable = "Crowns",
		icon = 132767,
		text = {
			en = "Crowns",
			es = "Coronas",
			mx = "Coronas",
			ko = "머리",
		},
	},
	[536] = {
		readable = "Training",
		icon = 134331,
		text = {
			en = "Training",
			es = "Entrenamiento",
			mx = "Entrenamiento",
		},
	},
	[542] = {
		readable = "Zandalari Plans",
		text = {
			en = "Zandalari Plans",
			es = "Planos Zandalari",
			mx = "Planos Zandalari",
		},
	},
	[547] = {
		readable = "Armor",
		text = {
			en = "Armor",
			es = "Armadura",
			mx = "Armadura",
		},
	},
	[548] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = [[~AUCTION_CATEGORY_WEAPONS]],
		},
	},
	[549] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[550] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
			de = "Werkzeuge des Handwerks",
			es = "Herramientas de trabajo",
			mx = "Herramientas del oficio",
			fr = "Outils de travail",
			it = "Ferri del Mestiere",
			pt = "Truques do ofício",
			ru = "Профессиональные инструменты",
			ko = "전문 기술 도구",
			cn = "商业工具",
			tw = "工具",
		},
	},
	[553] = {
		readable = "Pandaren Plans",
		text = {
			en = "Pandaren Plans",
			es = "Planos pandaren",
			mx = "Planos pandaren",
		},
	},
	[554] = {
		readable = "Helms",
		icon = 133076,
		text = {
			en = [[~HEADSLOT]],
		},
	},
	[555] = {
		readable = "Shoulders",
		icon = 135032,
		text = {
			en = [[~SHOULDERSLOT]],
		},
	},
	[556] = {
		readable = "Materials",
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[557] = {
		readable = "Equipment Mods",
		text = {
			en = "Equipment Mods",
			es = "Modificadores de equipo",
			mx = "Modificadores de equipo",
		},
	},
	[559] = {
		readable = "Chest",
		icon = 132635,
		text = {
			en = [[~INVTYPE_CHEST]],
		},
	},
	[560] = {
		readable = "Gauntlets",
		icon = 132938,
		text = {
			en = "Gauntlets",
			es = "Guanteletes",
			mx = "Guanteletes",
			ko = "손",
		},
	},
	[561] = {
		readable = "Bracers",
		icon = 132607,
		text = {
			en = [[~WRISTSLOT]],
		},
	},
	[562] = {
		readable = "Belts",
		icon = 132513,
		text = {
			en = [[~WAISTSLOT]],
		},
	},
	[563] = {
		readable = "Legs",
		icon = 134584,
		text = {
			en = "Legs",
			es = "Piernas",
			mx = "Piernas",
			ko = "다리",
		},
	},
	[564] = {
		readable = "Boots",
		icon = 132539,
		text = {
			en = [[~FEETSLOT]],
		},
	},
	[565] = {
		readable = "Shields",
		icon = 134952,
		text = {
			en = "Shields",
			es = "Escudos",
			mx = "Escudos",
			ko = "방패",
		},
	},
	[566] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = [[~AUCTION_CATEGORY_WEAPONS]],
		},
	},
	[567] = {
		readable = "Skeleton Keys",
		icon = 134245,
		text = {
			en = "Skeleton Keys",
			es = "Llaves esqueleto",
			mx = "Llaves esqueleto",
			fr = "Passe-partout",
			it = "Chiave Universale",
			pt = "Chave-mestra",
			ko = "해골 열쇠",
		},
	},
	[569] = {
		readable = "Cataclysm Plans",
		text = {
			en = "Cataclysm Plans",
			es = "Planos de cataclismo",
			mx = "Planos de cataclismo",
		},
	},
	[570] = {
		readable = "Armor",
		text = {
			en = "Armor",
			es = "Armadura",
			mx = "Armadura",
		},
	},
	[571] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = [[~AUCTION_CATEGORY_WEAPONS]],
		},
	},
	[572] = {
		readable = "Materials",
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[573] = {
		readable = "Shields",
		icon = 134952,
		text = {
			en = "Shields",
			es = "Escudos",
			mx = "Escudos",
			ko = "방패",
		},
	},
	[574] = {
		readable = "Equipment Mods",
		text = {
			en = "Equipment Mods",
			es = "Modificadores de equipo",
			mx = "Modificadores de equipo",
		},
	},
	[575] = {
		readable = "Skeleton Keys",
		icon = 134245,
		text = {
			en = "Skeleton Keys",
			es = "Llaves esqueleto",
			mx = "Llaves esqueleto",
			fr = "Passe-partout",
			it = "Chiave Universale",
			pt = "Chave-mestra",
			ko = "해골 열쇠",
		},
	},
	[577] = {
		readable = "Northrend Plans",
		text = {
			en = "Northrend Plans",
			es = "Planos de Rasganorte",
			mx = "Planos de Rasganorte",
		},
	},
	[578] = {
		readable = "Equipment Mods",
		text = {
			en = "Equipment Mods",
			es = "Modificadores de equipo",
			mx = "Modificadores de equipo",
		},
	},
	[579] = {
		readable = "Armor",
		text = {
			en = "Armor",
			es = "Armadura",
			mx = "Armadura",
		},
	},
	[580] = {
		readable = "Shields",
		icon = 134952,
		text = {
			en = "Shields",
			es = "Escudos",
			mx = "Escudos",
			ko = "방패",
		},
	},
	[581] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = [[~AUCTION_CATEGORY_WEAPONS]],
		},
	},
	[582] = {
		readable = "Skeleton Keys",
		icon = 134245,
		text = {
			en = "Skeleton Keys",
			es = "Llaves esqueleto",
			mx = "Llaves esqueleto",
			fr = "Passe-partout",
			it = "Chiave Universale",
			pt = "Chave-mestra",
			ko = "해골 열쇠",
		},
	},
	[584] = {
		readable = "Outland Plans",
		text = {
			en = "Outland Plans",
			es = "Planos de Terrallende",
			mx = "Planos de Terrallende",
		},
	},
	[585] = {
		readable = "Equipment Mods",
		text = {
			en = "Equipment Mods",
			es = "Modificadores de equipo",
			mx = "Modificadores de equipo",
		},
	},
	[586] = {
		readable = "Armor",
		text = {
			en = "Armor",
			es = "Armadura",
			mx = "Armadura",
		},
	},
	[588] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = [[~AUCTION_CATEGORY_WEAPONS]],
		},
	},
	[590] = {
		readable = "Blackmithing Plans",
		text = {
			en = "Blackmithing Plans",
			es = "Planos de herrería",
			mx = "Planos de herrería",
		},
	},
	[592] = {
		readable = "Zandalari Alchemy",
		text = {
			en = "Zandalari Alchemy",
			de = "Alchemie von Zandalar",
			es = "Alquimia zandalari",
			mx = "Alquimia zandalari",
			fr = "Alchimie de Zandalar",
			it = "Alchimia di Zandalar",
			pt = "Alquimia de Zandalar",
			ru = "Зандаларская алхимия",
			ko = "잔달라 연금술",
			cn = "赞达拉炼金术",
			tw = "贊達拉鍊金術",
		},
	},
	[596] = {
		readable = "Alchemy of Pandaria",
		text = {
			en = "Alchemy of Pandaria",
			de = "Alchemie von Pandaria",
			es = "Alquimia de Pandaria",
			mx = "Alquimia de Pandaria",
			fr = "Alchimie de Pandarie",
			it = "Alchimia di Pandaria",
			pt = "Alquimia de Pandária",
			ru = "Алхимия Пандарии",
			ko = "판다리아 연금술",
			cn = "潘达利亚炼金",
			tw = "潘達利亞鍊金術",
		},
	},
	[598] = {
		readable = "Alchemy of the Cataclysm",
		text = {
			en = "Alchemy of the Cataclysm",
			de = "Alchemie des Kataklysmus",
			es = "Alquimia de Cataclysm",
			mx = "Alquimia de Cataclysm",
			fr = "Alchimie de Cataclysm",
			it = "Alchimia di Cataclysm",
			pt = "Alquimia de Cataclysm",
			ru = "Алхимия времен Катаклизма",
			ko = "대격변 연금술",
			cn = "大地的裂变炼金",
			tw = "大災變鍊金術",
		},
	},
	[600] = {
		readable = "Alchemy of Northrend",
		text = {
			en = "Alchemy of Northrend",
			de = "Alchemie von Nordend",
			es = "Alquimia de Rasganorte",
			mx = "Alquimia de Rasganorte",
			fr = "Alchimie du Norfendre",
			it = "Alchimia di Nordania",
			pt = "Alquimia de Nortúndria",
			ru = "Алхимия Нордскола",
			ko = "노스렌드 연금술",
			cn = "诺森德炼金",
			tw = "北裂境鍊金術",
		},
	},
	[602] = {
		readable = "Alchemy of Outland",
		text = {
			en = "Alchemy of Outland",
			de = "Alchemie der Scherbenwelt",
			es = "Alquimia de Terrallende",
			mx = "Alquimia de Terrallende",
			fr = "Alchimie de l’Outreterre",
			it = "Alchimia delle Terre Esterne",
			pt = "Alquimia de Terralém",
			ru = "Алхимия Запределья",
			ko = "아웃랜드 연금술",
			cn = "外域炼金",
			tw = "外域鍊金術",
		},
	},
	[604] = {
		readable = "Alchemy",
		text = {
			en = "Alchemy",
			de = "Alchemie",
			es = "Alquimia",
			mx = "Alquimia",
			fr = "Alchimie",
			it = "Alchimia",
			pt = "Alquimia",
			ru = "Алхимия",
			ko = "연금술",
			cn = "炼金术",
			tw = "鍊金術",
		},
	},
	[605] = {
		readable = "Combat Potions",
		text = {
			en = "Combat Potions",
			es = "Pociones de combate",
			mx = "Pociones de combate",
			ko = "전투 물약",
		},
	},
	[606] = {
		readable = "Utility Potions",
		text = {
			en = "Utility Potions",
			es = "Pociones de utilidad",
			mx = "Pociones de utilidad",
			ko = "유틸리티 물약",
		},
	},
	[607] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			es = "Frascos",
			mx = "Frascos",
			ko = "영약",
		},
	},
	[608] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			de = "Transmutation",
			es = "Transmutación",
			mx = "Transmutación",
			fr = "Transmutation",
			it = "Trasmutazione",
			pt = "Transmutação",
			ru = "Трансмутация",
			ko = "변환식",
			cn = "转化",
			tw = "轉化",
		},
	},
	[609] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			es = "Abalorios",
			mx = "Abalorios",
			ko = "장비",
		},
	},
	[610] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
			de = "Werkzeuge des Handwerks",
			es = "Herramientas de trabajo",
			mx = "Herramientas del oficio",
			fr = "Outils de travail",
			it = "Ferri del Mestiere",
			pt = "Truques do ofício",
			ru = "Профессиональные инструменты",
			ko = "전문 기술 도구",
			cn = "商业工具",
			tw = "工具",
		},
	},
	[611] = {
		readable = "Potions",
		icon = 134831,
		text = {
			en = "Potions",
			es = "Pociones",
			mx = "Pociones",
			ko = "물약",
		},
	},
	[612] = {
		readable = "Elixirs",
		icon = 134836,
		text = {
			en = "Elixirs",
			es = "Elixires",
			mx = "Elixires",
			ko = "비약",
		},
	},
	[613] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			es = "Frascos",
			mx = "Frascos",
			ko = "영약",
		},
	},
	[614] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			de = "Transmutation",
			es = "Transmutación",
			mx = "Transmutación",
			fr = "Transmutation",
			it = "Trasmutazione",
			pt = "Transmutação",
			ru = "Трансмутация",
			ko = "변환식",
			cn = "转化",
			tw = "轉化",
		},
	},
	[615] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			es = "Abalorios",
			mx = "Abalorios",
			ko = "장비",
		},
	},
	[616] = {
		readable = "Oils",
		icon = 134723,
		text = {
			en = "Oils",
			es = "Aceites",
			mx = "Aceites",
			ko = "오일",
		},
	},
	[617] = {
		readable = "Cauldrons",
		text = {
			en = "Cauldrons",
			es = "Calderos",
			mx = "Calderos",
		},
	},
	[618] = {
		readable = "Potions",
		icon = 134831,
		text = {
			en = "Potions",
			es = "Pociones",
			mx = "Pociones",
			ko = "물약",
		},
	},
	[619] = {
		readable = "Elixirs",
		icon = 134836,
		text = {
			en = "Elixirs",
			es = "Elixires",
			mx = "Elixires",
			ko = "비약",
		},
	},
	[620] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			es = "Frascos",
			mx = "Frascos",
			ko = "영약",
		},
	},
	[621] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			de = "Transmutation",
			es = "Transmutación",
			mx = "Transmutación",
			fr = "Transmutation",
			it = "Trasmutazione",
			pt = "Transmutação",
			ru = "Трансмутация",
			ko = "변환식",
			cn = "转化",
			tw = "轉化",
		},
	},
	[622] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			es = "Abalorios",
			mx = "Abalorios",
			ko = "장비",
		},
	},
	[623] = {
		readable = "Oils",
		icon = 134723,
		text = {
			en = "Oils",
			es = "Aceites",
			mx = "Aceites",
			ko = "오일",
		},
	},
	[624] = {
		readable = "Mounts",
		icon = 133236,
		text = {
			en = "Mounts",
			es = "Monturas",
			mx = "Monturas",
		},
	},
	[625] = {
		readable = "Research",
		icon = 134331,
		text = {
			en = "Research",
			es = "Investigación",
			mx = "Investigación",
		},
	},
	[626] = {
		readable = "Potions",
		icon = 134831,
		text = {
			en = "Potions",
			es = "Pociones",
			mx = "Pociones",
			ko = "물약",
		},
	},
	[627] = {
		readable = "Elixirs",
		icon = 134836,
		text = {
			en = "Elixirs",
			es = "Elixires",
			mx = "Elixires",
			ko = "비약",
		},
	},
	[628] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			es = "Frascos",
			mx = "Frascos",
			ko = "영약",
		},
	},
	[629] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			de = "Transmutation",
			es = "Transmutación",
			mx = "Transmutación",
			fr = "Transmutation",
			it = "Trasmutazione",
			pt = "Transmutação",
			ru = "Трансмутация",
			ko = "변환식",
			cn = "转化",
			tw = "轉化",
		},
	},
	[630] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			es = "Abalorios",
			mx = "Abalorios",
			ko = "장비",
		},
	},
	[631] = {
		readable = "Oils",
		icon = 134723,
		text = {
			en = "Oils",
			es = "Aceites",
			mx = "Aceites",
			ko = "오일",
		},
	},
	[632] = {
		readable = "Cauldrons",
		text = {
			en = "Cauldrons",
			es = "Calderos",
			mx = "Calderos",
		},
	},
	[633] = {
		readable = "Potions",
		icon = 134831,
		text = {
			en = "Potions",
			es = "Pociones",
			mx = "Pociones",
			ko = "물약",
		},
	},
	[634] = {
		readable = "Elixirs",
		icon = 134836,
		text = {
			en = "Elixirs",
			es = "Elixires",
			mx = "Elixires",
			ko = "비약",
		},
	},
	[635] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			es = "Frascos",
			mx = "Frascos",
			ko = "영약",
		},
	},
	[636] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			de = "Transmutation",
			es = "Transmutación",
			mx = "Transmutación",
			fr = "Transmutation",
			it = "Trasmutazione",
			pt = "Transmutação",
			ru = "Трансмутация",
			ko = "변환식",
			cn = "转化",
			tw = "轉化",
		},
	},
	[637] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			es = "Abalorios",
			mx = "Abalorios",
			ko = "장비",
		},
	},
	[638] = {
		readable = "Potions",
		icon = 134831,
		text = {
			en = "Potions",
			es = "Pociones",
			mx = "Pociones",
			ko = "물약",
		},
	},
	[639] = {
		readable = "Elixirs",
		icon = 134836,
		text = {
			en = "Elixirs",
			es = "Elixires",
			mx = "Elixires",
			ko = "비약",
		},
	},
	[640] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			es = "Frascos",
			mx = "Frascos",
			ko = "영약",
		},
	},
	[641] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			de = "Transmutation",
			es = "Transmutación",
			mx = "Transmutación",
			fr = "Transmutation",
			it = "Trasmutazione",
			pt = "Transmutação",
			ru = "Трансмутация",
			ko = "변환식",
			cn = "转化",
			tw = "轉化",
		},
	},
	[642] = {
		readable = "Trinkets",
		icon = 134333,
		text = {
			en = "Trinkets",
			es = "Abalorios",
			mx = "Abalorios",
			ko = "장비",
		},
	},
	[643] = {
		readable = "Oils",
		icon = 132799,
		text = {
			en = "Oils",
			es = "Aceites",
			mx = "Aceites",
			ko = "오일",
		},
	},
	[644] = {
		readable = "Materials",
		icon = 132621,
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[645] = {
		readable = "Special",
		text = {
			en = "Special",
			es = "Especial",
			mx = "Especial",
		},
	},
	[647] = {
		readable = "Zandalari Enchanting",
		text = {
			en = "Zandalari Enchanting",
			de = "Verzauberkunst von Zandalar",
			es = "Encantamiento Zandalari",
			mx = "Encantamiento Zandalari",
			fr = "Enchantement de Zandalar",
			it = "Incantamento di Zandalar",
			pt = "Encantamento de Zandalar",
			ru = "Зандаларское наложение чар",
			ko = "잔달라 마법부여",
			cn = "赞达拉附魔",
			tw = "贊達拉附魔",
		},
	},
	[650] = {
		readable = "Glove Enchantments",
		icon = 132938,
		text = {
			en = "Glove Enchantments",
			es = "Encantamientos de guantes",
			mx = "Encantamientos de guantes",
			ko = "장갑 마법부여",
		},
	},
	[651] = {
		readable = "Ring Enchantments",
		icon = 133397,
		text = {
			en = "Ring Enchantments",
			es = "Encantamientos de anillo",
			mx = "Encantamientos de anillo",
			ko = "손가락 마법부여",
		},
	},
	[652] = {
		readable = "Weapon Enchantments",
		icon = 135792,
		text = {
			en = "Weapon Enchantments",
			es = "Encantamientos de arma",
			mx = "Encantamientos de arma",
			ko = "무기 마법부여",
			ru = "Наложение чар на оружие",
		},
	},
	[653] = {
		readable = "Illusions",
		icon = 237174,
		text = {
			en = "Illusions",
			es = "Ilusiones",
			mx = "Ilusiones",
		},
	},
	[654] = {
		readable = "Reagents",
		icon = 463518,
		text = {
			en = "Reagents",
			es = "Componentes",
			mx = "Componentes",
			ko = "재료",
		},
	},
	[656] = {
		readable = "Pandaria Enchanting",
		text = {
			en = "Pandaria Enchanting",
			de = "Verzauberkunst von Pandaria",
			es = "Encantamiento de Pandaria",
			mx = "Encantamiento de Pandaria",
			fr = "Enchantement de Pandarie",
			it = "Incantamento di Pandaria",
			pt = "Encantamento de Pandária",
			ru = "Наложение чар Пандарии",
			ko = "판다리아 마법부여",
			cn = "潘达利亚附魔",
			tw = "潘達利亞附魔",
		},
	},
	[657] = {
		readable = "Armor Enchantments",
		text = {
			en = "Armor Enchantments",
			es = "Encantamientos de armadura",
			mx = "Encantamientos de armadura",
			ru = "Наложение чар на броню",
		},
	},
	[658] = {
		readable = "Weapon Enchantments",
		icon = 135792,
		text = {
			en = "Weapon Enchantments",
			es = "Encantamientos de arma",
			mx = "Encantamientos de arma",
			ko = "무기 마법부여",
			ru = "Наложение чар на оружие",
		},
	},
	[659] = {
		readable = "Shield and Off-Hand Enchantments",
		icon = 134952,
		text = {
			en = "Shield and Off-Hand Enchantments",
			es = "Encantamientos de escudo y mano izquierda",
			mx = "Encantamientos de escudo y mano izquierda",
		},
	},
	[661] = {
		readable = "Cataclysm Enchanting",
		text = {
			en = "Cataclysm Enchanting",
			de = "Verzauberkunst des Kataklysmus",
			es = "Encantamiento de Cataclysm",
			mx = "Encantamiento de Cataclysm",
			fr = "Enchantement de Cataclysm",
			it = "Incantamento di Cataclysm",
			pt = "Encantamento de Cataclysm",
			ru = "Наложение чар времен Катаклизма",
			ko = "대격변 마법부여",
			cn = "大地的裂变附魔",
			tw = "大災變附魔",
		},
	},
	[663] = {
		readable = "Northrend Enchanting",
		text = {
			en = "Northrend Enchanting",
			de = "Verzauberkunst von Nordend",
			es = "Encantamiento de Rasganorte",
			mx = "Encantamiento de Rasganorte",
			fr = "Enchantement du Norfendre",
			it = "Incantamento di Nordania",
			pt = "Encantamento de Nortúndria",
			ru = "Наложение чар Нордскола",
			ko = "노스렌드 마법부여",
			cn = "诺森德附魔",
			tw = "北裂境附魔",
		},
	},
	[665] = {
		readable = "Outland Enchanting",
		text = {
			en = "Outland Enchanting",
			de = "Verzauberkunst der Scherbenwelt",
			es = "Encantamiento de Terrallende",
			mx = "Encantamiento de Terrallende",
			fr = "Enchantement de l’Outreterre",
			it = "Incantamento delle Terre Esterne",
			pt = "Encantamento de Terralém",
			ru = "Наложение чар Запределья",
			ko = "아웃랜드 마법부여",
			cn = "外域附魔",
			tw = "外域附魔",
		},
	},
	[667] = {
		readable = "Enchanting",
		text = {
			en = "Enchanting",
			de = "Verzauberkunst",
			es = "Encantamiento",
			mx = "Encantamiento",
			fr = "Enchantement",
			it = "Incantamento",
			pt = "Encantamento",
			ru = "Наложение чар",
			ko = "마법부여",
			cn = "附魔",
			tw = "附魔",
		},
	},
	[668] = {
		readable = "Armor Enchantments",
		text = {
			en = "Armor Enchantments",
			es = "Encantamientos de armadura",
			mx = "Encantamientos de armadura",
			ru = "Наложение чар на броню",
		},
	},
	[669] = {
		readable = "Weapon Enchantments",
		icon = 135792,
		text = {
			en = "Weapon Enchantments",
			es = "Encantamientos de arma",
			mx = "Encantamientos de arma",
			ko = "무기 마법부여",
			ru = "Наложение чар на оружие",
		},
	},
	[670] = {
		readable = "Shield and Off-Hand Enchantments",
		icon = 134952,
		text = {
			en = "Shield and Off-Hand Enchantments",
			es = "Encantamientos de escudo y mano izquierda",
			mx = "Encantamientos de escudo y mano izquierda",
		},
	},
	[671] = {
		readable = "Pets",
		text = {
			en = "Pets",
			es = "Mascotas",
			mx = "Mascotas",
		},
	},
	[672] = {
		readable = "Reagents",
		icon = 237013,
		text = {
			en = "Reagents",
			es = "Componentes",
			mx = "Componentes",
			ko = "재료",
		},
	},
	[673] = {
		readable = "Boot Enchantments",
		icon = 132535,
		text = {
			en = "Boot Enchantments",
			es = "Encantamientos de botas",
			mx = "Encantamientos de botas",
			ko = "장화 마법부여",
		},
	},
	[674] = {
		readable = "Glove Enchantments",
		icon = 132938,
		text = {
			en = "Glove Enchantments",
			es = "Encantamientos de guantes",
			mx = "Encantamientos de guantes",
			ko = "장갑 마법부여",
		},
	},
	[675] = {
		readable = "Chest Enchantments",
		icon = 132624,
		text = {
			en = "Chest Enchantments",
			es = "Encantamientos de pecho",
			mx = "Encantamientos de pecho",
			ko = "가슴 마법부여",
		},
	},
	[676] = {
		readable = "Cloak Enchantments",
		icon = 133770,
		text = {
			en = "Cloak Enchantments",
			es = "Encantamientos de capa",
			mx = "Encantamientos de capa",
			ko = "망토 마법부여",
		},
	},
	[677] = {
		readable = "Bracer Enchantments",
		icon = 132616,
		text = {
			en = "Bracer Enchantments",
			es = "Encantamientos de brazales",
			mx = "Encantamientos de brazales",
			ko = "손목 마법부여",
		},
	},
	[678] = {
		readable = "Weapon Enchantments",
		icon = 135792,
		text = {
			en = "Weapon Enchantments",
			es = "Encantamientos de arma",
			mx = "Encantamientos de arma",
			ko = "무기 마법부여",
			ru = "Наложение чар на оружие",
		},
	},
	[679] = {
		readable = "Shield Enchantments",
		icon = 134951,
		text = {
			en = "Shield Enchantments",
			es = "Encantamientos de escudo",
			mx = "Encantamientos de escudo",
			ko = "방패 마법부여",
		},
	},
	[680] = {
		readable = "Reagents",
		icon = 132881,
		text = {
			en = "Reagents",
			es = "Componentes",
			mx = "Componentes",
			ko = "재료",
		},
	},
	[681] = {
		readable = "Boot Enchantments",
		icon = 132535,
		text = {
			en = "Boot Enchantments",
			es = "Encantamientos de botas",
			mx = "Encantamientos de botas",
			ko = "장화 마법부여",
		},
	},
	[682] = {
		readable = "Bracer Enchantments",
		icon = 132616,
		text = {
			en = "Bracer Enchantments",
			es = "Encantamientos de brazales",
			mx = "Encantamientos de brazales",
			ko = "손목 마법부여",
		},
	},
	[683] = {
		readable = "Chest Enchantments",
		icon = 132624,
		text = {
			en = "Chest Enchantments",
			es = "Encantamientos de pecho",
			mx = "Encantamientos de pecho",
			ko = "가슴 마법부여",
		},
	},
	[684] = {
		readable = "Cloak Enchantments",
		icon = 133770,
		text = {
			en = "Cloak Enchantments",
			es = "Encantamientos de capa",
			mx = "Encantamientos de capa",
			ko = "망토 마법부여",
		},
	},
	[685] = {
		readable = "Glove Enchantments",
		icon = 132938,
		text = {
			en = "Glove Enchantments",
			es = "Encantamientos de guantes",
			mx = "Encantamientos de guantes",
			ko = "장갑 마법부여",
		},
	},
	[686] = {
		readable = "Weapon Enchantments",
		icon = 135792,
		text = {
			en = "Weapon Enchantments",
			es = "Encantamientos de arma",
			mx = "Encantamientos de arma",
			ko = "무기 마법부여",
			ru = "Наложение чар на оружие",
		},
	},
	[687] = {
		readable = "Shield Enchantments",
		icon = 134951,
		text = {
			en = "Shield Enchantments",
			es = "Encantamientos de escudo",
			mx = "Encantamientos de escudo",
			ko = "방패 마법부여",
		},
	},
	[688] = {
		readable = "Oils",
		icon = 134723,
		text = {
			en = "Oils",
			es = "Aceites",
			mx = "Aceites",
			ko = "오일",
		},
	},
	[689] = {
		readable = "Other",
		icon = 132886,
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[690] = {
		readable = "Boot Enchantments",
		icon = 132535,
		text = {
			en = "Boot Enchantments",
			es = "Encantamientos de botas",
			mx = "Encantamientos de botas",
			ko = "장화 마법부여",
		},
	},
	[691] = {
		readable = "Bracer Enchantments",
		icon = 132616,
		text = {
			en = "Bracer Enchantments",
			es = "Encantamientos de brazales",
			mx = "Encantamientos de brazales",
			ko = "손목 마법부여",
		},
	},
	[692] = {
		readable = "Chest Enchantments",
		icon = 132624,
		text = {
			en = "Chest Enchantments",
			es = "Encantamientos de pecho",
			mx = "Encantamientos de pecho",
			ko = "가슴 마법부여",
		},
	},
	[693] = {
		readable = "Cloak Enchantments",
		icon = 133770,
		text = {
			en = "Cloak Enchantments",
			es = "Encantamientos de capa",
			mx = "Encantamientos de capa",
			ko = "망토 마법부여",
		},
	},
	[694] = {
		readable = "Glove Enchantments",
		icon = 132938,
		text = {
			en = "Glove Enchantments",
			es = "Encantamientos de guantes",
			mx = "Encantamientos de guantes",
			ko = "장갑 마법부여",
		},
	},
	[695] = {
		readable = "Weapon Enchantments",
		icon = 135792,
		text = {
			en = "Weapon Enchantments",
			es = "Encantamientos de arma",
			mx = "Encantamientos de arma",
			ko = "무기 마법부여",
			ru = "Наложение чар на оружие",
		},
	},
	[696] = {
		readable = "Shield Enchantments",
		icon = 134951,
		text = {
			en = "Shield Enchantments",
			es = "Encantamientos de escudo",
			mx = "Encantamientos de escudo",
			ko = "방패 마법부여",
		},
	},
	[697] = {
		readable = "Rods",
		icon = 135138,
		text = {
			en = "Rods",
			es = "Varas",
			mx = "Varas",
			ko = "장비",
		},
	},
	[698] = {
		readable = "Wands",
		icon = 135468,
		text = {
			en = "Wands",
			es = "Varitas",
			mx = "Varitas",
			ko = "마법봉",
		},
	},
	[699] = {
		readable = "Oils",
		icon = 134711,
		text = {
			en = "Oils",
			es = "Aceites",
			mx = "Aceites",
			ko = "오일",
		},
	},
	[700] = {
		readable = "Trinkets",
		icon = 134084,
		text = {
			en = "Trinkets",
			es = "Abalorios",
			mx = "Abalorios",
			ko = "장신구",
		},
	},
	[701] = {
		readable = "Reagents",
		icon = 133229,
		text = {
			en = "Reagents",
			es = "Componentes",
			mx = "Componentes",
			ko = "재료",
		},
	},
	[702] = {
		readable = "Illusions",
		icon = 237174,
		text = {
			en = "Illusions",
			es = "Ilusiones",
			mx = "Ilusiones",
		},
	},
	[703] = {
		readable = "Illusions",
		icon = 237174,
		text = {
			en = "Illusions",
			es = "Ilusiones",
			mx = "Ilusiones",
		},
	},
	[704] = {
		readable = "Illusions",
		icon = 237174,
		text = {
			en = "Illusions",
			es = "Ilusiones",
			mx = "Ilusiones",
		},
	},
	[705] = {
		readable = "Illusions",
		icon = 237174,
		text = {
			en = "Illusions",
			es = "Ilusiones",
			mx = "Ilusiones",
		},
	},
	[706] = {
		readable = "Illusions",
		icon = 237174,
		text = {
			en = "Illusions",
			es = "Ilusiones",
			mx = "Ilusiones",
		},
	},
	[707] = {
		readable = "Reagents",
		icon = 463517,
		text = {
			en = "Reagents",
			es = "Componentes",
			mx = "Componentes",
			ko = "재료",
		},
	},
	[709] = {
		readable = "Zandalari Engineering",
		text = {
			en = "Zandalari Engineering",
			de = "Ingenieurskunst von Zandalar",
			es = "Ingeniería zandalari",
			mx = "Ingeniería zandalari",
			fr = "Ingénierie de Zandalar",
			it = "Ingegneria di Zandalar",
			pt = "Engenharia de Zandalar",
			ru = "Зандаларское инженерное дело",
			ko = "잔달라 기계공학",
			cn = "赞达拉工程学",
			tw = "贊達拉工程學",
		},
	},
	[713] = {
		readable = "Pandaria Engineering",
		text = {
			en = "Pandaria Engineering",
			de = "Ingenieurskunst von Pandaria",
			es = "Ingeniería de Pandaria",
			mx = "Ingeniería de Pandaria",
			fr = "Ingénierie de Pandarie",
			it = "Ingegneria di Pandaria",
			pt = "Engenharia de Pandária",
			ru = "Инженерное дело Пандарии",
			ko = "판다리아 기계공학",
			cn = "潘达利亚工程学",
			tw = "潘達利亞工程學",
		},
	},
	[715] = {
		readable = "Cataclysm Engineering",
		text = {
			en = "Cataclysm Engineering",
			de = "Ingenieurskunst des Kataklysmus",
			es = "Ingeniería de Cataclysm",
			mx = "Ingeniería de Cataclysm",
			fr = "Ingénierie de Cataclysm",
			it = "Ingegneria di Cataclysm",
			pt = "Engenharia de Cataclysm",
			ru = "Инженерное дело времен Катаклизма",
			ko = "대격변 기계공학",
			cn = "大地的裂变工程学",
			tw = "大災變工程學",
		},
	},
	[717] = {
		readable = "Northrend Engineering",
		text = {
			en = "Northrend Engineering",
			de = "Ingenieurskunst von Nordend",
			es = "Ingeniería de Rasganorte",
			mx = "Ingeniería de Rasganorte",
			fr = "Ingénierie du Norfendre",
			it = "Ingegneria di Nordania",
			pt = "Engenharia de Nortúndria",
			ru = "Инженерное дело Нордскола",
			ko = "노스렌드 기계공학",
			cn = "诺森德工程学",
			tw = "北裂境工程學",
		},
	},
	[719] = {
		readable = "Outland Engineering",
		text = {
			en = "Outland Engineering",
			de = "Ingenieurskunst der Scherbenwelt",
			es = "Ingeniería de Terrallende",
			mx = "Ingeniería de Terrallende",
			fr = "Ingénierie de l’Outreterre",
			it = "Ingegneria delle Terre Esterne",
			pt = "Engenharia de Terralém",
			ru = "Инженерное дело Запределья",
			ko = "아웃랜드 기계공학",
			cn = "外域工程学",
			tw = "外域工程學",
		},
	},
	[721] = {
		readable = "Bombs",
		text = {
			en = "Bombs",
			es = "Bombas",
			mx = "Bombas",
		},
	},
	[722] = {
		readable = "Devices",
		text = {
			en = "Devices",
			es = "Dispositivos",
			mx = "Dispositivos",
			ko = "장치",
		},
	},
	[723] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = [[~AUCTION_CATEGORY_WEAPONS]],
		},
	},
	[724] = {
		readable = "Mounts & Pets",
		icon = 133236,
		text = {
			en = "Mounts & Pets",
			es = "Monturas y mascotas",
			mx = "Monturas y mascotas",
		},
	},
	[725] = {
		readable = "Fireworks",
		icon = 135815,
		text = {
			en = "Fireworks",
			es = "Fuegos artificiales",
			mx = "Fuegos artificiales",
			ko = "폭죽",
		},
	},
	[726] = {
		readable = "Explosives",
		icon = 133711,
		text = {
			en = "Explosives",
			es = "Explosivos",
			mx = "Explosivos",
			ko = "폭발물",
		},
	},
	[727] = {
		readable = "Fireworks",
		icon = 135815,
		text = {
			en = "Fireworks",
			es = "Fuegos artificiales",
			mx = "Fuegos artificiales",
			ko = "폭죽",
		},
	},
	[728] = {
		readable = "Devices",
		text = {
			en = "Devices",
			es = "Dispositivos",
			mx = "Dispositivos",
			ko = "장치",
		},
	},
	[729] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			es = "Componentes",
			mx = "Componentes",
			ko = "재료",
		},
	},
	[730] = {
		readable = "Goggles",
		icon = 133023,
		text = {
			en = "Goggles",
			de = "Schutzbrille",
			es = "Gafas",
			mx = "Lentes",
			fr = "Lunettes",
			it = "Visori",
			pt = "Tecnóculos",
			ru = "очки",
			ko = "고글",
		},
	},
	[731] = {
		readable = "Guns",
		icon = 135612,
		text = {
			en = "Guns",
			es = "Pistolas",
			mx = "Pistolas",
			ko = "총",
		},
	},
	[732] = {
		readable = "Scopes",
		icon = 134442,
		text = {
			en = "Scopes",
			es = "Miras",
			mx = "Miras",
			fr = "Lunette",
			it = "Mirino",
			ru = "Прицел",
			ko = "조준경",
		},
	},
	[733] = {
		readable = "Mounts",
		icon = 133236,
		text = {
			en = "Mounts",
			es = "Monturas",
			mx = "Monturas",
		},
	},
	[734] = {
		readable = "Cogwheels",
		text = {
			en = "Cogwheels",
			es = "Engranajes",
			mx = "Engranajes",
		},
	},
	[735] = {
		readable = "Tinkers",
		text = {
			en = "Tinkers",
			es = "Modificaciones",
			mx = "Artilugios",
		},
	},
	[736] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			es = "Componentes",
			mx = "Componentes",
			ko = "재료",
		},
	},
	[737] = {
		readable = "Explosives",
		icon = 133711,
		text = {
			en = "Explosives",
			es = "Explosivos",
			mx = "Explosivos",
			ko = "폭발물",
		},
	},
	[738] = {
		readable = "Goggles",
		icon = 133023,
		text = {
			en = "Goggles",
			de = "Schutzbrille",
			es = "Gafas",
			mx = "Lentes",
			fr = "Lunettes",
			it = "Visori",
			pt = "Tecnóculos",
			ru = "очки",
			ko = "고글",
		},
	},
	[739] = {
		readable = "Devices",
		text = {
			en = "Devices",
			es = "Dispositivos",
			mx = "Dispositivos",
			ko = "장치",
		},
	},
	[740] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = [[~AUCTION_CATEGORY_WEAPONS]],
		},
	},
	[741] = {
		readable = "Scopes",
		icon = 134442,
		text = {
			en = "Scopes",
			es = "Miras",
			mx = "Miras",
			fr = "Lunette",
			it = "Mirino",
			ru = "Прицел",
			ko = "조준경",
		},
	},
	[742] = {
		readable = "Tinkers",
		text = {
			en = "Tinkers",
			es = "Modificaciones",
			mx = "Artilugios",
		},
	},
	[743] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			es = "Componentes",
			mx = "Componentes",
			ko = "재료",
		},
	},
	[744] = {
		readable = "Explosives",
		icon = 133711,
		text = {
			en = "Explosives",
			es = "Explosivos",
			mx = "Explosivos",
			ko = "폭발물",
		},
	},
	[745] = {
		readable = "Goggles",
		icon = 133023,
		text = {
			en = "Goggles",
			de = "Schutzbrille",
			es = "Gafas",
			mx = "Lentes",
			fr = "Lunettes",
			it = "Visori",
			pt = "Tecnóculos",
			ru = "очки",
			ko = "고글",
		},
	},
	[746] = {
		readable = "Devices",
		text = {
			en = "Devices",
			es = "Dispositivos",
			mx = "Dispositivos",
			ko = "장치",
		},
	},
	[747] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = [[~AUCTION_CATEGORY_WEAPONS]],
		},
	},
	[748] = {
		readable = "Scopes",
		icon = 134442,
		text = {
			en = "Scopes",
			es = "Miras",
			mx = "Miras",
			fr = "Lunette",
			it = "Mirino",
			ru = "Прицел",
			ko = "조준경",
		},
	},
	[749] = {
		readable = "Mounts",
		icon = 133236,
		text = {
			en = "Mounts",
			es = "Monturas",
			mx = "Monturas",
		},
	},
	[750] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			es = "Componentes",
			mx = "Componentes",
			ko = "재료",
		},
	},
	[751] = {
		readable = "Explosives",
		icon = 133711,
		text = {
			en = "Explosives",
			es = "Explosivos",
			mx = "Explosivos",
			ko = "폭발물",
		},
	},
	[752] = {
		readable = "Goggles",
		icon = 133023,
		text = {
			en = "Goggles",
			de = "Schutzbrille",
			es = "Gafas",
			mx = "Lentes",
			fr = "Lunettes",
			it = "Visori",
			pt = "Tecnóculos",
			ru = "очки",
			ko = "고글",
		},
	},
	[753] = {
		readable = "Devices",
		text = {
			en = "Devices",
			es = "Dispositivos",
			mx = "Dispositivos",
			ko = "장치",
		},
	},
	[754] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = [[~AUCTION_CATEGORY_WEAPONS]],
		},
	},
	[755] = {
		readable = "Scopes",
		icon = 134442,
		text = {
			en = "Scopes",
			es = "Miras",
			mx = "Miras",
			fr = "Lunette",
			it = "Mirino",
			ru = "Прицел",
			ko = "조준경",
		},
	},
	[756] = {
		readable = "Mounts",
		icon = 133236,
		text = {
			en = "Mounts",
			es = "Monturas",
			mx = "Monturas",
		},
	},
	[757] = {
		readable = "Fireworks",
		icon = 135815,
		text = {
			en = "Fireworks",
			es = "Fuegos artificiales",
			mx = "Fuegos artificiales",
			ko = "폭죽",
		},
	},
	[759] = {
		readable = "Zandalari Inscription",
		text = {
			en = "Zandalari Inscription",
			de = "Inschriftenkunde von Zandalar",
			es = "Inscripción Zandalari",
			mx = "Inscripción Zandalari",
			fr = "Calligraphie de Zandalar",
			it = "Runografia di Zandalar",
			pt = "Escrivania de Zandalar",
			ru = "Зандаларское начертание",
			ko = "잔달라 주문각인",
			cn = "赞达拉铭文",
			tw = "贊達拉銘文學",
		},
	},
	[763] = {
		readable = "Pandaria Inscription",
		text = {
			en = "Pandaria Inscription",
			de = "Inschriftenkunde von Pandaria",
			es = "Inscripción de Pandaria",
			mx = "Inscripción de Pandaria",
			fr = "Calligraphie de Pandarie",
			it = "Runografia di Pandaria",
			pt = "Escrivania de Pandária",
			ru = "Начертание Пандарии",
			ko = "판다리아 주문각인",
			cn = "潘达利亚铭文",
			tw = "潘達利亞銘文學",
		},
	},
	[765] = {
		readable = "Cataclysm Inscription",
		text = {
			en = "Cataclysm Inscription",
			de = "Inschriftenkunde des Kataklysmus",
			es = "Inscripción de Cataclysm",
			mx = "Inscripción de Cataclysm",
			fr = "Calligraphie de Cataclysm",
			it = "Runografia di Cataclysm",
			pt = "Escrivania de Cataclysm",
			ru = "Начертание времен Катаклизма",
			ko = "대격변 주문각인",
			cn = "大地的裂变铭文",
			tw = "大災變銘文學",
		},
	},
	[767] = {
		readable = "Northrend Inscription",
		text = {
			en = "Northrend Inscription",
			de = "Inschriftenkunde von Nordend",
			es = "Inscripción de Rasganorte",
			mx = "Inscripción de Rasganorte",
			fr = "Calligraphie du Norfendre",
			it = "Runografia di Nordania",
			pt = "Escrivania de Nortúndria",
			ru = "Начертание Нордскола",
			ko = "노스렌드 주문각인",
			cn = "诺森德铭文",
			tw = "北裂境銘文學",
		},
	},
	[769] = {
		readable = "Outland Inscription",
		text = {
			en = "Outland Inscription",
			de = "Inschriftenkunde der Scherbenwelt",
			es = "Inscripción de Terrallende",
			mx = "Inscripción de Terrallende",
			fr = "Calligraphie de l’Outreterre",
			it = "Runografia delle Terre Esterne",
			pt = "Escrivania de Terralém",
			ru = "Начертание Запределья",
			ko = "아웃랜드 주문각인",
			cn = "外域铭文",
			tw = "外域銘文學",
		},
	},
	[771] = {
		readable = "Books & Scrolls",
		icon = 134939,
		text = {
			en = "Books & Scrolls",
			es = "Libros y pergaminos",
			mx = "Libros y pergaminos",
		},
	},
	[772] = {
		readable = "Contracts",
		text = {
			en = "Contracts",
			es = "Contratos",
			mx = "Contratos",
		},
	},
	[773] = {
		readable = "Trinkets",
		icon = 134495,
		text = {
			en = "Trinkets",
			es = "Abalorios",
			mx = "Abalorios",
			ko = "장비",
		},
	},
	[774] = {
		readable = "Off-Hands",
		text = {
			en = "Off-Hands",
			es = "Mano izquierda",
			mx = "Mano izquierda",
		},
	},
	[775] = {
		readable = "Mass Milling",
		text = {
			en = "Mass Milling",
			es = "Moler a granel",
			mx = "Molido en masa",
		},
	},
	[776] = {
		readable = "Vantus Runes",
		icon = 1392953,
		text = {
			en = "Vantus Runes",
			de = "Vantusrunen",
			es = "Runas vantus",
			mx = "Runas vantus",
			fr = "Runes de Vantus",
			it = "Rune Vantus",
			pt = "Runas Vantus",
			ru = "Вантийские руны",
			ko = "반투스 룬",
			cn = "凡图斯符文",
			tw = "梵陀符文",
		},
	},
	[777] = {
		readable = "Glyphs",
		text = {
			en = "Glyphs",
			de = "Glyphe",
			es = "Glifos",
			mx = "Glifos",
			fr = "Glyphe",
			it = "Glifo",
			pt = "Glifo",
			ru = "Символ",
			ko = "문양",
		},
	},
	[778] = {
		readable = "Staves & Off-Hands",
		text = {
			en = "Staves & Off-Hands",
			es = "Bastones y mano izquierda",
			mx = "Bastones y mano izquierda",
		},
	},
	[779] = {
		readable = "Inks",
		icon = 237070,
		text = {
			en = "Inks",
			de = "Tinte",
			es = "Tintas",
			mx = "Tintas",
			fr = "Encre",
			it = "Tinta",
			pt = "Tinta",
			ru = "Чернила",
			ko = "잉크",
		},
	},
	[780] = {
		readable = "Cards",
		text = {
			en = "Cards",
			es = "Cartas",
			mx = "Cartas",
		},
	},
	[781] = {
		readable = "Scrolls & Research",
		icon = 134331,
		text = {
			en = "Scrolls & Research",
			es = "Pergaminos e investigación",
			mx = "Pergaminos e investigación",
		},
	},
	[782] = {
		readable = "Quest",
		text = {
			en = "Quest",
			es = "Misión",
			mx = "Misión",
		},
	},
	[783] = {
		readable = "Toys & Pets",
		text = {
			en = "Toys & Pets",
			es = "Juguetes y mascotas",
			mx = "Juguetes y mascotas",
		},
	},
	[784] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			es = "Abalorios",
			mx = "Abalorios",
			ko = "장비",
		},
	},
	[785] = {
		readable = "Inks",
		icon = 237070,
		text = {
			en = "Inks",
			de = "Tinte",
			es = "Tintas",
			mx = "Tintas",
			fr = "Encre",
			it = "Tinta",
			pt = "Tinta",
			ru = "Чернила",
			ko = "잉크",
		},
	},
	[786] = {
		readable = "Glyphs",
		text = {
			en = "Glyphs",
			de = "Glyphe",
			es = "Glifos",
			mx = "Glifos",
			fr = "Glyphe",
			it = "Glifo",
			pt = "Glifo",
			ru = "Символ",
			ko = "문양",
		},
	},
	[787] = {
		readable = "Scrolls & Research",
		icon = 134331,
		text = {
			en = "Scrolls & Research",
			es = "Pergaminos e investigación",
			mx = "Pergaminos e investigación",
		},
	},
	[788] = {
		readable = "Cards",
		text = {
			en = "Cards",
			es = "Cartas",
			mx = "Cartas",
		},
	},
	[789] = {
		readable = "Shoulder Inscription",
		text = {
			en = "Shoulder Inscription",
			es = "Inscripción de hombros",
			mx = "Inscripción de hombros",
			ko = "어깨 마법부여",
		},
	},
	[790] = {
		readable = "Weapons & Off-Hands",
		icon = 135792,
		text = {
			en = "Weapons & Off-Hands",
			es = "Armas y mano izquierda",
			mx = "Armas y mano izquierda",
			ko = "무기",
		},
	},
	[791] = {
		readable = "Quest",
		text = {
			en = "Quest",
			es = "Misión",
			mx = "Misión",
		},
	},
	[792] = {
		readable = "Toys",
		text = {
			en = "Toys",
			es = "Juguetes",
			mx = "Juguetes",
		},
	},
	[793] = {
		readable = "Inks",
		icon = 237070,
		text = {
			en = "Inks",
			de = "Tinte",
			es = "Tintas",
			mx = "Tintas",
			fr = "Encre",
			it = "Tinta",
			pt = "Tinta",
			ru = "Чернила",
			ko = "잉크",
		},
	},
	[794] = {
		readable = "Glyphs",
		text = {
			en = "Glyphs",
			de = "Glyphe",
			es = "Glifos",
			mx = "Glifos",
			fr = "Glyphe",
			it = "Glifo",
			pt = "Glifo",
			ru = "Символ",
			ko = "문양",
		},
	},
	[795] = {
		readable = "Scrolls & Research",
		icon = 134331,
		text = {
			en = "Scrolls & Research",
			es = "Pergaminos e investigación",
			mx = "Pergaminos e investigación",
		},
	},
	[796] = {
		readable = "Cards",
		text = {
			en = "Cards",
			es = "Cartas",
			mx = "Cartas",
		},
	},
	[797] = {
		readable = "Off-Hands",
		text = {
			en = "Off-Hands",
			es = "Mano izquierda",
			mx = "Mano izquierda",
		},
	},
	[798] = {
		readable = "Shoulder Inscription",
		text = {
			en = "Shoulder Inscription",
			es = "Inscripción de hombros",
			mx = "Inscripción de hombros",
			ko = "어깨 마법부여",
		},
	},
	[799] = {
		readable = "Inks",
		icon = 237070,
		text = {
			en = "Inks",
			de = "Tinte",
			es = "Tintas",
			mx = "Tintas",
			fr = "Encre",
			it = "Tinta",
			pt = "Tinta",
			ru = "Чернила",
			ko = "잉크",
		},
	},
	[800] = {
		readable = "Glyphs",
		text = {
			en = "Glyphs",
			de = "Glyphe",
			es = "Glifos",
			mx = "Glifos",
			fr = "Glyphe",
			it = "Glifo",
			pt = "Glifo",
			ru = "Символ",
			ko = "문양",
		},
	},
	[801] = {
		readable = "Cards",
		text = {
			en = "Cards",
			es = "Cartas",
			mx = "Cartas",
		},
	},
	[802] = {
		readable = "Scrolls & Research",
		icon = 134331,
		text = {
			en = "Scrolls & Research",
			es = "Pergaminos e investigación",
			mx = "Pergaminos e investigación",
		},
	},
	[803] = {
		readable = "Off-Hands",
		text = {
			en = "Off-Hands",
			es = "Mano izquierda",
			mx = "Mano izquierda",
		},
	},
	[805] = {
		readable = "Zandalari Designs",
		text = {
			en = "Zandalari Designs",
			es = "Diseños Zandalari",
			mx = "Diseños Zandalari",
		},
	},
	[809] = {
		readable = "Pandaria Designs",
		text = {
			en = "Pandaria Designs",
			es = "Diseños de Pandaria",
			mx = "Diseños de Pandaria",
		},
	},
	[811] = {
		readable = "Cataclysm Designs",
		text = {
			en = "Cataclysm Designs",
			es = "Diseños de Cataclysm",
			mx = "Diseños de Cataclysm",
		},
	},
	[813] = {
		readable = "Northrend Designs",
		text = {
			en = "Northrend Designs",
			es = "Diseños de Rasganorte",
			mx = "Diseños de Rasganorte",
		},
	},
	[815] = {
		readable = "Outland Designs",
		text = {
			en = "Outland Designs",
			es = "Diseños de Terrallende",
			mx = "Diseños de Terrallende",
		},
	},
	[817] = {
		readable = "Gems",
		text = {
			en = "Gems",
			es = "Gemas",
			mx = "Gemas",
		},
	},
	[818] = {
		readable = "Mass Prospecting",
		text = {
			en = "Mass Prospecting",
			mx = "Exploracion en masa",
		},
	},
	[819] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			es = "Anillos",
			mx = "Anillos",
			ko = "손가락",
		},
	},
	[820] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = [[~AUCTION_CATEGORY_WEAPONS]],
		},
	},
	[821] = {
		readable = "Blue Gems",
		icon = 133244,
		text = {
			en = "Blue Gems",
			es = "Gemas azules",
			mx = "Gemas azules",
		},
	},
	[822] = {
		readable = "Green Gems",
		icon = 133263,
		text = {
			en = "Green Gems",
			es = "Gemas verdes",
			mx = "Gemas verdes",
		},
	},
	[823] = {
		readable = "Orange Gems",
		icon = 133260,
		text = {
			en = "Orange Gems",
			es = "Gemas naranjas",
			mx = "Gemas naranjas",
		},
	},
	[824] = {
		readable = "Purple Gems",
		icon = 133265,
		text = {
			en = "Purple Gems",
			es = "Gemas moradas",
			mx = "Gemas moradas",
		},
	},
	[825] = {
		readable = "Red Gems",
		icon = 133238,
		text = {
			en = "Red Gems",
			es = "Gemas rojas",
			mx = "Gemas rojas",
		},
	},
	[827] = {
		readable = "Meta Gems",
		icon = 134098,
		text = {
			en = "Meta Gems",
			es = "Gemas meta",
			mx = "Gemas meta",
		},
	},
	[828] = {
		readable = "Necklaces",
		icon = 133294,
		text = {
			en = "Necklaces",
			es = "Collares",
			mx = "Collares",
			ko = "목",
		},
	},
	[829] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			es = "Anillos",
			mx = "Anillos",
			ko = "손가락",
		},
	},
	[830] = {
		readable = "Mounts",
		icon = 133236,
		text = {
			en = "Mounts",
			es = "Monturas",
			mx = "Monturas",
		},
	},
	[831] = {
		readable = "Research",
		icon = 134331,
		text = {
			en = "Research",
			es = "Investigación",
			mx = "Investigación",
		},
	},
	[832] = {
		readable = "Toys & Pets",
		icon = 133247,
		text = {
			en = "Toys & Pets",
			es = "Juguetes y mascotas",
			mx = "Juguetes y mascotas",
		},
	},
	[833] = {
		readable = "Yellow Gems",
		icon = 133248,
		text = {
			en = "Yellow Gems",
			es = "Gemas amarillas",
			mx = "Gemas amarillas",
		},
	},
	[834] = {
		readable = "Blue Gems",
		icon = 133244,
		text = {
			en = "Blue Gems",
			es = "Gemas azules",
			mx = "Gemas azules",
		},
	},
	[835] = {
		readable = "Green Gems",
		icon = 133263,
		text = {
			en = "Green Gems",
			es = "Gemas verdes",
			mx = "Gemas verdes",
		},
	},
	[836] = {
		readable = "Orange Gems",
		icon = 133260,
		text = {
			en = "Orange Gems",
			es = "Gemas naranjas",
			mx = "Gemas naranjas",
		},
	},
	[837] = {
		readable = "Purple Gems",
		icon = 133265,
		text = {
			en = "Purple Gems",
			es = "Gemas moradas",
			mx = "Gemas moradas",
		},
	},
	[838] = {
		readable = "Red Gems",
		icon = 133238,
		text = {
			en = "Red Gems",
			es = "Gemas rojas",
			mx = "Gemas rojas",
		},
	},
	[839] = {
		readable = "Yellow Gems",
		icon = 133248,
		text = {
			en = "Yellow Gems",
			es = "Gemas amarillas",
			mx = "Gemas amarillas",
		},
	},
	[840] = {
		readable = "Meta Gems",
		icon = 134098,
		text = {
			en = "Meta Gems",
			es = "Gemas meta",
			mx = "Gemas meta",
		},
	},
	[841] = {
		readable = "Necklaces",
		icon = 133294,
		text = {
			en = "Necklaces",
			es = "Collares",
			mx = "Collares",
			ko = "목",
		},
	},
	[842] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			es = "Anillos",
			mx = "Anillos",
			ko = "손가락",
		},
	},
	[843] = {
		readable = "Crowns",
		icon = 132767,
		text = {
			en = "Crowns",
			es = "Coronas",
			mx = "Coronas",
			ko = "머리",
		},
	},
	[844] = {
		readable = "Fist Weapons",
		icon = 135599,
		text = {
			en = "Fist Weapons",
			es = "Armas de puño",
			mx = "Armas de puño",
		},
	},
	[845] = {
		readable = "Toys & Prisms",
		icon = 134128,
		text = {
			en = "Toys & Prisms",
			es = "Juguetes y primas",
			mx = "Juguetes y primas",
		},
	},
	[846] = {
		readable = "Blue Gems",
		icon = 133244,
		text = {
			en = "Blue Gems",
			es = "Gemas azules",
			mx = "Gemas azules",
		},
	},
	[847] = {
		readable = "Green Gems",
		icon = 133263,
		text = {
			en = "Green Gems",
			es = "Gemas verdes",
			mx = "Gemas verdes",
		},
	},
	[848] = {
		readable = "Orange Gems",
		icon = 133260,
		text = {
			en = "Orange Gems",
			es = "Gemas naranjas",
			mx = "Gemas naranjas",
		},
	},
	[849] = {
		readable = "Purple Gems",
		icon = 133265,
		text = {
			en = "Purple Gems",
			es = "Gemas moradas",
			mx = "Gemas moradas",
		},
	},
	[850] = {
		readable = "Red Gems",
		icon = 133238,
		text = {
			en = "Red Gems",
			es = "Gemas rojas",
			mx = "Gemas rojas",
		},
	},
	[851] = {
		readable = "Yellow Gems",
		icon = 133248,
		text = {
			en = "Yellow Gems",
			es = "Gemas amarillas",
			mx = "Gemas amarillas",
		},
	},
	[852] = {
		readable = "Meta Gems",
		icon = 134098,
		text = {
			en = "Meta Gems",
			es = "Gemas meta",
			mx = "Gemas meta",
		},
	},
	[853] = {
		readable = "Necklaces",
		icon = 133294,
		text = {
			en = "Necklaces",
			es = "Collares",
			mx = "Collares",
			ko = "목",
		},
	},
	[854] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			es = "Anillos",
			mx = "Anillos",
			ko = "손가락",
		},
	},
	[855] = {
		readable = "Prismatic Gems",
		icon = 237370,
		text = {
			en = "Prismatic Gems",
			es = "Gemas prismáticas",
			mx = "Gemas prismáticas",
		},
	},
	[856] = {
		readable = "Pets and Projects",
		icon = 134095,
		text = {
			en = "Pets and Projects",
			es = "Mascotas y proyectos",
			mx = "Mascotas y proyectos",
		},
	},
	[857] = {
		readable = "Blue Gems",
		icon = 133244,
		text = {
			en = "Blue Gems",
			es = "Gemas azules",
			mx = "Gemas azules",
		},
	},
	[858] = {
		readable = "Green Gems",
		icon = 133263,
		text = {
			en = "Green Gems",
			es = "Gemas verdes",
			mx = "Gemas verdes",
		},
	},
	[859] = {
		readable = "Orange Gems",
		icon = 133260,
		text = {
			en = "Orange Gems",
			es = "Gemas naranjas",
			mx = "Gemas naranjas",
		},
	},
	[860] = {
		readable = "Purple Gems",
		icon = 133265,
		text = {
			en = "Purple Gems",
			es = "Gemas moradas",
			mx = "Gemas moradas",
		},
	},
	[861] = {
		readable = "Red Gems",
		icon = 133238,
		text = {
			en = "Red Gems",
			es = "Gemas rojas",
			mx = "Gemas rojas",
		},
	},
	[862] = {
		readable = "Yellow Gems",
		icon = 133248,
		text = {
			en = "Yellow Gems",
			es = "Gemas meta",
			mx = "Gemas meta",
		},
	},
	[863] = {
		readable = "Meta Gems",
		icon = 134098,
		text = {
			en = "Meta Gems",
			es = "Gemas meta",
			mx = "Gemas meta",
		},
	},
	[864] = {
		readable = "Necklaces",
		icon = 133294,
		text = {
			en = "Necklaces",
			es = "Collares",
			mx = "Collares",
			ko = "목",
		},
	},
	[865] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			es = "Anillos",
			mx = "Anillos",
			ko = "손가락",
		},
	},
	[866] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			es = "Abalorios",
			mx = "Abalorios",
			ko = "장비",
		},
	},
	[867] = {
		readable = "Prisms & Statues",
		icon = 134096,
		text = {
			en = "Prisms & Statues",
			es = "Prismas y estatuas",
			mx = "Prismas y estatuas",
		},
	},
	[868] = {
		readable = "Reagents",
		icon = 135732,
		text = {
			en = "Reagents",
			es = "Componentes",
			mx = "Componentes",
			ko = "재료",
		},
	},
	[869] = {
		readable = "Crowns",
		icon = 132767,
		text = {
			en = "Crowns",
			es = "Coronas",
			mx = "Coronas",
			ko = "머리",
		},
	},
	[871] = {
		readable = "Zandalari Patterns",
		text = {
			en = "Zandalari Patterns",
			es = "Patrones Zandalari",
			mx = "Patrones Zandalari",
		},
	},
	[876] = {
		readable = "Pandaria Patterns",
		text = {
			en = "Pandaria Patterns",
			es = "Patrones de Pandaria",
			mx = "Patrones de Pandaria",
		},
	},
	[878] = {
		readable = "Cataclysm Patterns",
		text = {
			en = "Cataclysm Patterns",
			es = "Patrones de Cataclysm",
			mx = "Patrones de Cataclysm",
		},
	},
	[880] = {
		readable = "Northrend Patterns",
		text = {
			en = "Northrend Patterns",
			es = "Patrones de Rasganorte",
			mx = "Patrones de Rasganorte",
		},
	},
	[882] = {
		readable = "Outland Patterns",
		text = {
			en = "Outland Patterns",
			es = "Patrones de Terrallende",
			mx = "Patrones de Terrallende",
		},
	},
	[883] = {
		readable = "Leather Armor",
		text = {
			en = "Leather Armor",
			es = "Armadura de cuero",
			mx = "Armadura de cuero",
		},
	},
	[884] = {
		readable = "Mail Armor",
		text = {
			en = "Mail Armor",
			es = "Armadura de malla",
			mx = "Armadura de malla",
		},
	},
	[885] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = [[~AUCTION_CATEGORY_WEAPONS]],
		},
	},
	[886] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[887] = {
		readable = "Materials",
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[888] = {
		readable = "Embossments",
		text = {
			en = "Embossments",
			es = "Estampados",
			mx = "Estampados",
		},
	},
	[889] = {
		readable = "Armor Kits",
		icon = 133611,
		text = {
			en = "Armor Kits",
			es = "Refuerzo para armadura",
			mx = "Refuerzo para armadura",
			ko = "방어구 키트",
		},
	},
	[890] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			es = "Bolsas",
			mx = "Bolsas",
			ko = "가방",
			tw = "背包",
		},
	},
	[891] = {
		readable = "Helms",
		icon = 133076,
		text = {
			en = [[~HEADSLOT]],
		},
	},
	[892] = {
		readable = "Shoulders",
		icon = 135032,
		text = {
			en = [[~SHOULDERSLOT]],
		},
	},
	[893] = {
		readable = "Chest",
		icon = 132635,
		text = {
			en = [[~INVTYPE_CHEST]],
		},
	},
	[894] = {
		readable = "Bracers",
		icon = 132607,
		text = {
			en = [[~WRISTSLOT]],
		},
	},
	[895] = {
		readable = "Gloves",
		icon = 132939,
		text = {
			en = [[~HANDSSLOT]],
		},
	},
	[896] = {
		readable = "Belts",
		icon = 132513,
		text = {
			en = [[~WAISTSLOT]],
		},
	},
	[897] = {
		readable = "Pants",
		icon = 134592,
		text = {
			en = [[~LEGSSLOT]],
		},
	},
	[898] = {
		readable = "Boots",
		icon = 132539,
		text = {
			en = [[~FEETSLOT]],
		},
	},
	[899] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			es = "Capas",
			mx = "Capas",
			ko = "등",
		},
	},
	[900] = {
		readable = "Drums",
		icon = 133841,
		text = {
			en = "Drums",
			es = "Tambores",
			mx = "Tambores",
		},
	},
	[901] = {
		readable = "Research",
		icon = 134331,
		text = {
			en = "Research",
			es = "Investigación",
			mx = "Investigación",
		},
	},
	[902] = {
		readable = "Materials",
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[903] = {
		readable = "Armor Kits",
		icon = 133611,
		text = {
			en = "Armor Kits",
			es = "Refuerzo para armadura",
			mx = "Refuerzo para armadura",
			ko = "방어구 키트",
		},
	},
	[904] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			es = "Bolsas",
			mx = "Bolsas",
			ko = "가방",
			tw = "背包",
		},
	},
	[905] = {
		readable = "Helms",
		icon = 133076,
		text = {
			en = [[~HEADSLOT]],
		},
	},
	[906] = {
		readable = "Shoulders",
		icon = 135032,
		text = {
			en = [[~SHOULDERSLOT]],
		},
	},
	[907] = {
		readable = "Chest",
		icon = 132635,
		text = {
			en = [[~INVTYPE_CHEST]],
		},
	},
	[908] = {
		readable = "Bracers",
		icon = 132607,
		text = {
			en = [[~WRISTSLOT]],
		},
	},
	[909] = {
		readable = "Gloves",
		icon = 132939,
		text = {
			en = [[~HANDSSLOT]],
		},
	},
	[910] = {
		readable = "Belts",
		icon = 132513,
		text = {
			en = [[~WAISTSLOT]],
		},
	},
	[911] = {
		readable = "Pants",
		icon = 134592,
		text = {
			en = [[~LEGSSLOT]],
		},
	},
	[912] = {
		readable = "Boots",
		icon = 132539,
		text = {
			en = [[~FEETSLOT]],
		},
	},
	[913] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			es = "Capas",
			mx = "Capas",
			ko = "등",
		},
	},
	[914] = {
		readable = "Materials",
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[915] = {
		readable = "Armor Kits",
		icon = 133611,
		text = {
			en = "Armor Kits",
			es = "Refuerzo para armadura",
			mx = "Refuerzo para armadura",
			ko = "방어구 키트",
		},
	},
	[916] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			es = "Bolsas",
			mx = "Bolsas",
			ko = "가방",
			tw = "背包",
		},
	},
	[917] = {
		readable = "Helms",
		icon = 133076,
		text = {
			en = [[~HEADSLOT]],
		},
	},
	[918] = {
		readable = "Shoulders",
		icon = 135032,
		text = {
			en = [[~SHOULDERSLOT]],
		},
	},
	[919] = {
		readable = "Chests",
		text = {
			en = "Chests",
			es = "Pechos",
			mx = "Pechos",
			ko = "가슴",
		},
	},
	[920] = {
		readable = "Bracers",
		icon = 132607,
		text = {
			en = [[~WRISTSLOT]],
		},
	},
	[921] = {
		readable = "Gloves",
		icon = 132939,
		text = {
			en = [[~HANDSSLOT]],
		},
	},
	[922] = {
		readable = "Belts",
		icon = 132513,
		text = {
			en = [[~WAISTSLOT]],
		},
	},
	[923] = {
		readable = "Pants",
		icon = 134592,
		text = {
			en = [[~LEGSSLOT]],
		},
	},
	[924] = {
		readable = "Boots",
		icon = 132539,
		text = {
			en = [[~FEETSLOT]],
		},
	},
	[925] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			es = "Capas",
			mx = "Capas",
			ko = "등",
		},
	},
	[926] = {
		readable = "Drums",
		icon = 133841,
		text = {
			en = "Drums",
			es = "Tambores",
			mx = "Tambores",
		},
	},
	[927] = {
		readable = "Materials",
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[928] = {
		readable = "Armor Kits",
		icon = 133611,
		text = {
			en = "Armor Kits",
			es = "Refuerzo para armadura",
			mx = "Refuerzo para armadura",
			ko = "방어구 키트",
		},
	},
	[929] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			es = "Bolsas",
			mx = "Bolsas",
			ko = "가방",
			tw = "背包",
		},
	},
	[930] = {
		readable = "Helms",
		icon = 133076,
		text = {
			en = [[~HEADSLOT]],
		},
	},
	[931] = {
		readable = "Shoulders",
		icon = 135032,
		text = {
			en = [[~SHOULDERSLOT]],
		},
	},
	[932] = {
		readable = "Chest",
		icon = 132635,
		text = {
			en = [[~INVTYPE_CHEST]],
		},
	},
	[933] = {
		readable = "Bracers",
		icon = 132607,
		text = {
			en = [[~WRISTSLOT]],
		},
	},
	[934] = {
		readable = "Gloves",
		icon = 132939,
		text = {
			en = [[~HANDSSLOT]],
		},
	},
	[935] = {
		readable = "Belts",
		icon = 132513,
		text = {
			en = [[~WAISTSLOT]],
		},
	},
	[936] = {
		readable = "Pants",
		icon = 134592,
		text = {
			en = [[~LEGSSLOT]],
		},
	},
	[937] = {
		readable = "Boots",
		icon = 132539,
		text = {
			en = [[~FEETSLOT]],
		},
	},
	[938] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			es = "Capas",
			mx = "Capas",
			ko = "등",
		},
	},
	[939] = {
		readable = "Special",
		text = {
			en = "Special",
			es = "Especial",
			mx = "Especial",
		},
	},
	[940] = {
		readable = "Drums",
		icon = 133841,
		text = {
			en = "Drums",
			es = "Tambores",
			mx = "Tambores",
		},
	},
	[942] = {
		readable = "Zandalari Patterns",
		text = {
			en = "Zandalari Patterns",
			es = "Patrones Zandalari",
			mx = "Patrones Zandalari",
		},
	},
	[943] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			es = "Bolsas",
			mx = "Bolsas",
			ko = "가방",
			tw = "背包",
		},
	},
	[944] = {
		readable = "Armor",
		text = {
			en = "Armor",
			es = "Armadura",
			mx = "Armadura",
		},
	},
	[945] = {
		readable = "Battle Flags",
		text = {
			en = "Battle Flags",
			es = "Banderas de batalla",
			mx = "Banderas de batalla",
		},
	},
	[946] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[950] = {
		readable = "Pandaria Patterns",
		text = {
			en = "Pandaria Patterns",
			es = "Patrones de Pandaria",
			mx = "Patrones de Pandaria",
		},
	},
	[952] = {
		readable = "Cataclysm Patterns",
		text = {
			en = "Cataclysm Patterns",
			es = "Patrones de Cataclysm",
			mx = "Patrones de Cataclysm",
		},
	},
	[954] = {
		readable = "Northrend Patterns",
		text = {
			en = "Northrend Patterns",
			es = "Patrones de Rasganorte",
			mx = "Patrones de Rasganorte",
		},
	},
	[956] = {
		readable = "Outland Patterns",
		text = {
			en = "Outland Patterns",
			es = "Patrones de Terrallende",
			mx = "Patrones de Terrallende",
		},
	},
	[958] = {
		readable = "Materials",
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[959] = {
		readable = "Embroidery",
		text = {
			en = "Embroidery",
			de = "Stickerei",
			es = "Bordados",
			mx = "Bordado",
			fr = "Broderie",
			it = "Ricami",
			pt = "Bordados",
			ru = "Вышивка",
			ko = "자수",
			cn = "刺绣",
			tw = "刺繡",
		},
	},
	[960] = {
		readable = "Spellthreads",
		text = {
			en = "Spellthreads",
			de = "Zauberfaden",
			es = "Hilos de hechizo",
			mx = "Hilos de hechizo",
			fr = "Fils ensorcelés",
			it = "Ornamenti Magici",
			pt = "Magilinha",
			ru = "Чародейская нить",
			ko = "마법실타래",
			cn = "魔线",
			tw = "法術絲線",
		},
	},
	[961] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			es = "Bolsas",
			mx = "Bolsas",
			ko = "가방",
			tw = "背包",
		},
	},
	[962] = {
		readable = "Hats & Hoods",
		icon = 133133,
		text = {
			en = "Hats & Hoods",
			es = "Sombreros y capuchas",
			mx = "Sombreros y capuchas",
			ko = "머리",
		},
	},
	[963] = {
		readable = "Shoulders",
		icon = 135033,
		text = {
			en = [[~SHOULDERSLOT]],
		},
	},
	[964] = {
		readable = "Robes & Tunics",
		icon = 132659,
		text = {
			en = "Robes & Tunics",
			es = "Togas y túnicas",
			mx = "Togas y túnicas",
			ko = "가슴",
		},
	},
	[965] = {
		readable = "Bracers",
		icon = 132616,
		text = {
			en = [[~WRISTSLOT]],
		},
	},
	[966] = {
		readable = "Belts",
		icon = 132516,
		text = {
			en = [[~WAISTSLOT]],
		},
	},
	[967] = {
		readable = "Gloves",
		icon = 132940,
		text = {
			en = [[~HANDSSLOT]],
		},
	},
	[968] = {
		readable = "Pants",
		icon = 134586,
		text = {
			en = [[~LEGSSLOT]],
		},
	},
	[969] = {
		readable = "Boots",
		icon = 132535,
		text = {
			en = [[~FEETSLOT]],
		},
	},
	[970] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			es = "Capas",
			mx = "Capas",
			ko = "등",
		},
	},
	[972] = {
		readable = "Materials",
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[973] = {
		readable = "Spellthreads",
		text = {
			en = "Spellthreads",
			de = "Zauberfaden",
			es = "Hilos de hechizo",
			mx = "Hilos de hechizo",
			fr = "Fils ensorcelés",
			it = "Ornamenti Magici",
			pt = "Magilinha",
			ru = "Чародейская нить",
			ko = "마법실타래",
			cn = "魔线",
			tw = "法術絲線",
		},
	},
	[974] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			es = "Bolsas",
			mx = "Bolsas",
			ko = "가방",
			tw = "背包",
		},
	},
	[975] = {
		readable = "Hats & Hoods",
		icon = 133133,
		text = {
			en = "Hats & Hoods",
			es = "Sombreros y capuchas",
			mx = "Sombreros y capuchas",
			ko = "머리",
		},
	},
	[976] = {
		readable = "Shoulders",
		icon = 135033,
		text = {
			en = [[~SHOULDERSLOT]],
		},
	},
	[977] = {
		readable = "Robes & Tunics",
		icon = 132659,
		text = {
			en = "Robes & Tunics",
			es = "Togas y túnicas",
			mx = "Togas y túnicas",
			ko = "가슴",
		},
	},
	[978] = {
		readable = "Bracers",
		icon = 132616,
		text = {
			en = [[~WRISTSLOT]],
		},
	},
	[979] = {
		readable = "Belts",
		icon = 132516,
		text = {
			en = [[~WAISTSLOT]],
		},
	},
	[980] = {
		readable = "Gloves",
		icon = 132940,
		text = {
			en = [[~HANDSSLOT]],
		},
	},
	[981] = {
		readable = "Pants",
		icon = 134586,
		text = {
			en = [[~LEGSSLOT]],
		},
	},
	[982] = {
		readable = "Boots",
		icon = 132535,
		text = {
			en = [[~FEETSLOT]],
		},
	},
	[983] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			es = "Capas",
			mx = "Capas",
			ko = "등",
		},
	},
	[984] = {
		readable = "Nets",
		text = {
			en = "Nets",
			es = "Redes",
			mx = "Redes",
		},
	},
	[985] = {
		readable = "Materials",
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[986] = {
		readable = "Spellthread",
		text = {
			en = "Spellthread",
			de = "Zauberfaden",
			es = "Hilo de hechizo",
			mx = "Hilo de hechizo",
			fr = "Fils ensorcelés",
			it = "Ornamenti Magici",
			pt = "Magilinha",
			ru = "Чародейская нить",
			ko = "마법실타래",
			cn = "魔线",
			tw = "法術絲線",
		},
	},
	[987] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			es = "Bolsas",
			mx = "Bolsas",
			ko = "가방",
			tw = "背包",
		},
	},
	[988] = {
		readable = "Hats & Hoods",
		icon = 133133,
		text = {
			en = "Hats & Hoods",
			es = "Sombreros y capuchas",
			mx = "Sombreros y capuchas",
			ko = "머리",
		},
	},
	[989] = {
		readable = "Shoulders",
		icon = 135033,
		text = {
			en = [[~SHOULDERSLOT]],
		},
	},
	[990] = {
		readable = "Robes & Tunics",
		icon = 132659,
		text = {
			en = "Robes & Tunics",
			es = "Togas y túnicas",
			mx = "Togas y túnicas",
			ko = "가슴",
		},
	},
	[991] = {
		readable = "Bracers",
		icon = 132616,
		text = {
			en = [[~WRISTSLOT]],
		},
	},
	[992] = {
		readable = "Belts",
		icon = 132516,
		text = {
			en = [[~WAISTSLOT]],
		},
	},
	[993] = {
		readable = "Gloves",
		icon = 132940,
		text = {
			en = [[~HANDSSLOT]],
		},
	},
	[994] = {
		readable = "Pants",
		icon = 134586,
		text = {
			en = [[~LEGSSLOT]],
		},
	},
	[995] = {
		readable = "Boots",
		icon = 132535,
		text = {
			en = [[~FEETSLOT]],
		},
	},
	[996] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			es = "Capas",
			mx = "Capas",
			ko = "등",
		},
	},
	[997] = {
		readable = "Shirts",
		text = {
			en = "Shirts",
			es = "Camisas",
			mx = "Camisas",
			ko = "속옷",
		},
	},
	[998] = {
		readable = "Mounts",
		icon = 133236,
		text = {
			en = "Mounts",
			es = "Monturas",
			mx = "Monturas",
		},
	},
	[999] = {
		readable = "Nets",
		text = {
			en = "Nets",
			es = "Redes",
			mx = "Redes",
		},
	},
	[1000] = {
		readable = "Materials",
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[1001] = {
		readable = "Spellthreads",
		text = {
			en = "Spellthreads",
			de = "Zauberfaden",
			es = "Hilos de hechizo",
			mx = "Hilos de hechizo",
			fr = "Fils ensorcelés",
			it = "Ornamenti Magici",
			pt = "Magilinha",
			ru = "Чародейская нить",
			ko = "마법실타래",
			cn = "魔线",
			tw = "法術絲線",
		},
	},
	[1002] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			es = "Bolsas",
			mx = "Bolsas",
			ko = "가방",
			tw = "背包",
		},
	},
	[1003] = {
		readable = "Hats & Hoods",
		icon = 133133,
		text = {
			en = "Hats & Hoods",
			es = "Sombreros y capuchas",
			mx = "Sombreros y capuchas",
			ko = "머리",
		},
	},
	[1004] = {
		readable = "Shoulders",
		icon = 135033,
		text = {
			en = [[~SHOULDERSLOT]],
		},
	},
	[1005] = {
		readable = "Robes & Tunics",
		icon = 132659,
		text = {
			en = "Robes & Tunics",
			es = "Togas y túnicas",
			mx = "Togas y túnicas",
			ko = "가슴",
		},
	},
	[1006] = {
		readable = "Bracers",
		icon = 132616,
		text = {
			en = [[~WRISTSLOT]],
		},
	},
	[1007] = {
		readable = "Belts",
		icon = 132516,
		text = {
			en = [[~WAISTSLOT]],
		},
	},
	[1008] = {
		readable = "Gloves",
		icon = 132940,
		text = {
			en = [[~HANDSSLOT]],
		},
	},
	[1009] = {
		readable = "Pants",
		icon = 134586,
		text = {
			en = [[~LEGSSLOT]],
		},
	},
	[1010] = {
		readable = "Boots",
		icon = 132535,
		text = {
			en = [[~FEETSLOT]],
		},
	},
	[1011] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			es = "Capas",
			mx = "Capas",
			ko = "등",
		},
	},
	[1012] = {
		readable = "Nets",
		text = {
			en = "Nets",
			es = "Redes",
			mx = "Redes",
		},
	},
	[1013] = {
		readable = "Food of Draenor",	-- Header
		text = {
			en = "Food of Draenor",
			es = "Comida de Draenor",
			mx = "Comida de Draenor",
		},
	},
	[1020] = {
		readable = "Everyday Cooking",
		icon = 133968,
		text = {
			en = "Everyday Cooking",
			es = "Cocina diaria",
			mx = "Cocina diaria",
			ko = "일반 요리",
		},
	},
	[1021] = {
		readable = "Delightful Drinks",
		text = {
			en = "Delightful Drinks",
			es = "Bebidas deliciosas",
			mx = "Bebidas deliciosas",
		},
	},
	[1022] = {
		readable = "Lures",
		icon = 970852,
		text = {
			en = "Lures",
			es = "Señuelos",
			mx = "Señuelos",
			de = "Köder",
			fr = "Appâts",
			it = "Esche",
			pt = "Iscas",
			ru = "Наживки",
			ko = "미끼",
			cn = "鱼竿",
		},
	},
	[1023] = {
		readable = "Everyday Cooking",
		icon = 133968,
		text = {
			en = "Everyday Cooking",
			es = "Cocina diaria",
			mx = "Cocina diaria",
			ko = "일반 요리",
		},
	},
	[1024] = {
		readable = "Everyday Cooking",
		icon = 133968,
		text = {
			en = "Everyday Cooking",
			es = "Cocina diaria",
			mx = "Cocina diaria",
			ko = "일반 요리",
		},
	},
	[1025] = {
		readable = "Everyday Cooking",
		icon = 133968,
		text = {
			en = "Everyday Cooking",
			es = "Cocina diaria",
			mx = "Cocina diaria",
			ko = "일반 요리",
		},
	},
	[1026] = {
		readable = "Inks",
		icon = 237070,
		text = {
			en = "Inks",
			de = "Tinte",
			es = "Tintas",
			mx = "Tintas",
			fr = "Encre",
			it = "Tinta",
			pt = "Tinta",
			ru = "Чернила",
			ko = "잉크",
		},
	},
	[1027] = {
		readable = "Scopes & Ammo",
		icon = 134442,
		text = {
			en = "Scopes & Ammo",
			es = "Miras y munición",
			mx = "Miras y munición",
			ko = "범위 및 탄약",
		},
	},
	[1029] = {
		readable = "Zandalari Herbalism",
		text = {
			en = "Zandalari Herbalism",
			de = "Kräuterkunde von Zandalar",
			es = "Herboristería Zandalari",
			mx = "Herboristería Zandalari",
			fr = "Herboristerie de Zandalar",
			it = "Erbalismo di Zandalar",
			pt = "Herborismo de Zandalar",
			ru = "Зандаларское травничество",
			ko = "잔달라 약초채집",
			cn = "赞达拉草药学",
			tw = "贊達拉草藥學",
		},
	},
	[1030] = {
		readable = "Gathering Techniques",
		text = {
			en = "Gathering Techniques",
			es = "Técnicas de recolección",
			mx = "Técnicas de recolección",
		},
	},
	[1032] = {
		readable = "Gathering Techniques",
		text = {
			en = "Gathering Techniques",
			es = "Técnicas de recolección",
			mx = "Técnicas de recolección",
		},
	},
	[1034] = {
		readable = "Draenor Herbalism",
		text = {
			en = "Draenor Herbalism",
			de = "Kräuterkunde von Draenor",
			es = "Herboristería de Draenor",
			mx = "Herboristería de Draenor",
			fr = "Herboristerie de Draenor",
			it = "Erbalismo di Draenor",
			pt = "Herborismo de Draenor",
			ru = "Травничество Дренора",
			ko = "드레노어 약초채집",
			cn = "德拉诺草药学",
			tw = "德拉諾草藥學",
		},
	},
	[1036] = {
		readable = "Pandaria Herbalism",
		text = {
			en = "Pandaria Herbalism",
			de = "Kräuterkunde von Pandaria",
			es = "Herboristería de Pandaria",
			mx = "Herboristería de Pandaria",
			fr = "Herboristerie de Pandarie",
			it = "Erbalismo di Pandaria",
			pt = "Herborismo de Pandária",
			ru = "Травничество Пандарии",
			ko = "판다리아 약초채집",
			cn = "潘达利亚草药学",
			tw = "潘達利亞草藥學",
		},
	},
	[1038] = {
		readable = "Cataclysm Herbalism",
		text = {
			en = "Cataclysm Herbalism",
			de = "Kräuterkunde des Kataklysmus",
			es = "Herboristería de Cataclysm",
			mx = "Herboristería de Cataclysm",
			fr = "Herboristerie de Cataclysm",
			it = "Erbalismo di Cataclysm",
			pt = "Herborismo de Cataclysm",
			ru = "Травничество времен Катаклизма",
			ko = "대격변 약초채집",
			cn = "大地的裂变草药学",
			tw = "大災變草藥學",
		},
	},
	[1040] = {
		readable = "Northrend Herbalism",
		text = {
			en = "Northrend Herbalism",
			de = "Kräuterkunde von Nordend",
			es = "Herboristería de Rasganorte",
			mx = "Herboristería de Rasganorte",
			fr = "Herboristerie du Norfendre",
			it = "Erbalismo di Nordania",
			pt = "Herborismo de Nortúndria",
			ru = "Травничество Нордскола",
			ko = "노스렌드 약초채집",
			cn = "诺森德草药学",
			tw = "北裂境草藥學",
		},
	},
	[1042] = {
		readable = "Outland Herbalism",
		text = {
			en = "Outland Herbalism",
			de = "Kräuterkunde der Scherbenwelt",
			es = "Herboristería de Terrallende",
			mx = "Herboristería de Terrallende",
			fr = "Herboristerie de l’Outreterre",
			it = "Erbalismo delle Terre Esterne",
			pt = "Herborismo de Terralém",
			ru = "Травничество Запределья",
			ko = "아웃랜드 약초채집",
			cn = "外域草药学",
			tw = "外域草藥學",
		},
	},
	[1044] = {
		readable = "Herbalism",
		text = {
			en = "Herbalism",
			de = "Kräuterkunde",
			es = "Herboristería",
			mx = "Herboristería",
			fr = "Herboristerie",
			it = "Erbalismo",
			pt = "Herborismo",
			ru = "Травничество",
			ko = "약초채집",
			cn = "草药学",
			tw = "草藥學",
		},
	},
	[1046] = {
		readable = "Zandalari Skinning",
		text = {
			en = "Zandalari Skinning",
			de = "Kürschnerei von Zandalar",
			es = "Desuello Zandalari",
			mx = "Desuello Zandalari",
			fr = "Dépeçage de Zandalar",
			it = "Scuoiatura di Zandalar",
			pt = "Esfolamento de Zandalar",
			ru = "Зандаларское снятие шкур",
			ko = "잔달라 무두질",
			cn = "赞达拉剥皮",
			tw = "贊達拉剝皮",
		},
	},
	[1050] = {
		readable = "Draenor Skinning",
		text = {
			en = "Draenor Skinning",
			de = "Kürschnerei von Draenor",
			es = "Desuello de Draenor",
			mx = "Desuello de Draenor",
			fr = "Dépeçage de Draenor",
			it = "Scuoiatura di Draenor",
			pt = "Esfolamento de Draenor",
			ru = "Снятие шкур на Дреноре",
			ko = "드레노어 무두질",
			cn = "德拉诺剥皮",
			tw = "德拉諾剝皮",
		},
	},
	[1052] = {
		readable = "Pandaria Skinning",
		text = {
			en = "Pandaria Skinning",
			de = "Kürschnerei von Pandaria",
			es = "Desuello de Pandaria",
			mx = "Desuello de Pandaria",
			fr = "Dépeçage de Pandarie",
			it = "Scuoiatura di Pandaria",
			pt = "Esfolamento de Pandária",
			ru = "Снятие шкур в Пандарии",
			ko = "판다리아 무두질",
			cn = "潘达利亚剥皮",
			tw = "潘達利亞剝皮",
		},
	},
	[1054] = {
		readable = "Cataclysm Skinning",
		text = {
			en = "Cataclysm Skinning",
			de = "Kürschnerei des Kataklysmus",
			es = "Desuello de Cataclysm",
			mx = "Desuello de Cataclysm",
			fr = "Dépeçage de Cataclysm",
			it = "Scuoiatura di Cataclysm",
			pt = "Esfolamento de Cataclysm",
			ru = "Снятие шкур времен Катаклизма",
			ko = "대격변 무두질",
			cn = "大地的裂变剥皮",
			tw = "大災變剝皮",
		},
	},
	[1056] = {
		readable = "Northrend Skinning",
		text = {
			en = "Northrend Skinning",
			de = "Kürschnerei von Nordend",
			es = "Desuello de Rasganorte",
			mx = "Desuello de Rasganorte",
			fr = "Dépeçage du Norfendre",
			it = "Scuoiatura di Nordania",
			pt = "Esfolamento de Nortúndria",
			ru = "Снятие шкур в Нордсколе",
			ko = "노스렌드 무두질",
			cn = "诺森德剥皮",
			tw = "北裂境剝皮",
		},
	},
	[1058] = {
		readable = "Outland Skinning",
		text = {
			en = "Outland Skinning",
			de = "Kürschnerei der Scherbenwelt",
			es = "Desuello de Terrallende",
			mx = "Desuello de Terrallende",
			fr = "Dépeçage d’Outreterre",
			it = "Scuoiatura delle Terre Esterne",
			pt = "Esfolamento de Terralém",
			ru = "Снятие шкур в Запределье",
			ko = "아웃랜드 무두질",
			cn = "外域剥皮",
			tw = "外域剝皮",
		},
	},
	[1060] = {
		readable = "Skinning",
		text = {
			en = "Skinning",
			de = "Kürschnerei",
			es = "Desuello",
			mx = "Desuello",
			fr = "Dépeçage",
			it = "Scuoiatura",
			pt = "Esfolamento",
			ru = "Снятие шкур",
			ko = "무두질",
			cn = "剥皮",
			tw = "剝皮",
		},
	},
	[1061] = {
		readable = "Skinning Techniques",
		text = {
			en = "Skinning Techniques",
			es = "Técnicas de desuello",
			mx = "Técnicas de desuello",
		},
	},
	[1062] = {
		readable = "Skinning Techniques",
		text = {
			en = "Skinning Techniques",
			es = "Técnicas de desuello",
			mx = "Técnicas de desuello",
		},
	},
	[1065] = {
		readable = "Zandalari Mining",
		text = {
			en = "Zandalari Mining",
			de = "Bergbau von Zandalar",
			es = "Minería Zandalari",
			mx = "Minería Zandalari",
			fr = "Minage de Zandalar",
			it = "Estrazione di Zandalar",
			pt = "Mineração de Zandalar",
			ru = "Зандаларское горное дело",
			ko = "잔달라 채광",
			cn = "赞达拉采矿",
			tw = "贊達拉採礦",
		},
	},
	[1068] = {
		readable = "Draenor Mining",
		text = {
			en = "Draenor Mining",
			de = "Bergbau von Draenor",
			es = "Minería de Draenor",
			mx = "Minería de Draenor",
			fr = "Minage de Draenor",
			it = "Estrazione di Draenor",
			pt = "Mineração de Draenor",
			ru = "Горное дело Дренора",
			ko = "드레노어 채광",
			cn = "德拉诺采矿",
			tw = "德拉諾採礦",
		},
	},
	[1070] = {
		readable = "Pandaria Mining",
		text = {
			en = "Pandaria Mining",
			de = "Bergbau von Pandaria",
			es = "Minería de Pandaria",
			mx = "Minería de Pandaria",
			fr = "Minage de Pandarie",
			it = "Estrazione di Pandaria",
			pt = "Mineração de Pandária",
			ru = "Горное дело Пандарии",
			ko = "판다리아 채광",
			cn = "潘达利亚采矿",
			tw = "潘達利亞採礦",
		},
	},
	[1072] = {
		readable = "Cataclysm Mining",
		text = {
			en = "Cataclysm Mining",
			de = "Bergbau des Kataklysmus",
			es = "Minería de Cataclysm",
			mx = "Minería de Cataclysm",
			fr = "Minage de Cataclysm",
			it = "Estrazione di Cataclysm",
			pt = "Mineração de Cataclysm",
			ru = "Горное дело времен Катаклизма",
			ko = "대격변 채광",
			cn = "大地的裂变采矿",
			tw = "大災變採礦",
		},
	},
	[1074] = {
		readable = "Northrend Mining",
		text = {
			en = "Northrend Mining",
			de = "Bergbau von Nordend",
			es = "Minería de Rasganorte",
			mx = "Minería de Rasganorte",
			fr = "Minage du Norfendre",
			it = "Estrazione di Nordania",
			pt = "Mineração de Nortúndria",
			ru = "Горное дело Нордскола",
			ko = "노스렌드 채광",
			cn = "诺森德采矿",
			tw = "北裂境採礦",
		},
	},
	[1076] = {
		readable = "Outland Mining",
		text = {
			en = "Outland Mining",
			de = "Bergbau der Scherbenwelt",
			es = "Minería de Terrallende",
			mx = "Minería de Terrallende",
			fr = "Minage d’Outreterre",
			it = "Estrazione delle Terre Esterne",
			pt = "Mineração de Terralém",
			ru = "Горное дело Запределья",
			ko = "아웃랜드 채광",
			cn = "外域采矿",
			tw = "外域採礦",
		},
	},
	[1078] = {
		readable = "Mining",
		text = {
			en = "Mining",
			de = "Bergbau",
			es = "Minería",
			mx = "Minería",
			fr = "Minage",
			it = "Estrazione",
			pt = "Mineração",
			ru = "Горное дело",
			ko = "채광",
			cn = "采矿",
			tw = "採礦",
		},
	},
	[1079] = {
		readable = "Mining Techniques",
		text = {
			en = "Mining Techniques",
			es = "Técnicas de minería",
			mx = "Técnicas de minería",
		},
	},
	[1080] = {
		readable = "Mining Techniques",
		text = {
			en = "Mining Techniques",
			es = "Técnicas de minería",
			mx = "Técnicas de minería",
		},
	},
	[1081] = {
		readable = "Smelting",
		text = {
			en = "Smelting",
			de = "Verhüttung",
			es = "Fundiendo",
			mx = "Fundición",
			fr = "Fondre",
			pt = "Fundição",
			ru = "Выплавка металлов",
			ko = "제련술",
			cn = "熔炼",
			tw = "熔煉",
		},
	},
	[1082] = {
		readable = "Smelting",
		text = {
			en = "Smelting",
			de = "Verhüttung",
			es = "Fundiendo",
			mx = "Fundición",
			fr = "Fondre",
			pt = "Fundição",
			ru = "Выплавка металлов",
			ko = "제련술",
			cn = "熔炼",
			tw = "熔煉",
		},
	},
	[1083] = {
		readable = "Smelting",
		text = {
			en = "Smelting",
			de = "Verhüttung",
			es = "Fundiendo",
			mx = "Fundición",
			fr = "Fondre",
			pt = "Fundição",
			ru = "Выплавка металлов",
			ko = "제련술",
			cn = "熔炼",
			tw = "熔煉",
		},
	},
	[1084] = {
		readable = "Smelting",
		text = {
			en = "Smelting",
			de = "Verhüttung",
			es = "Fundiendo",
			mx = "Fundición",
			fr = "Fondre",
			pt = "Fundição",
			ru = "Выплавка металлов",
			ko = "제련술",
			cn = "熔炼",
			tw = "熔煉",
		},
	},
	[1085] = {
		readable = "Mount Equipment",
		text = {
			en = "Mount Equipment",
			es = "Equipamiento de montura",
			mx = "Equipamiento de montura",
		},
	},
	[1086] = {
		readable = "Bandages",
		icon = 133690,
		text = {
			en = "Bandages",
			es = "Vendas",
			mx = "Vendas",
		},
	},
	[1087] = {
		readable = "Cures of Draenor",
		text = {
			en = "Cures of Draenor",
			es = "Curas de Draenor",
			mx = "Curas de Draenor",
		},
	},
	[1088] = {
		readable = "Cures of the Broken Isles",
		text = {
			en = "Cures of the Broken Isles",
			es = "Curas de las Islas abruptas",
			mx = "Curas de las Islas quebradas",
		},
	},
	[1089] = {
		readable = "Bandages",
		icon = 133690,
		text = {
			en = "Bandages",
			es = "Vendas",
			mx = "Vendas",
		},
	},
	[1090] = {
		readable = "Bandages",
		icon = 133690,
		text = {
			en = "Bandages",
			es = "Vendas",
			mx = "Vendas",
		},
	},
	[1091] = {
		readable = "Bandages",
		icon = 133690,
		text = {
			en = "Bandages",
			es = "Vendas",
			mx = "Vendas",
		},
	},
	[1092] = {
		readable = "Bandages",
		icon = 133690,
		text = {
			en = "Bandages",
			es = "Vendas",
			mx = "Vendas",
		},
	},
	[1093] = {
		readable = "Bandages",
		icon = 133690,
		text = {
			en = "Bandages",
			es = "Vendas",
			mx = "Vendas",
		},
	},
	[1096] = {
		readable = "Belt Attachments",
		text = {
			en = "Belt Attachments",
			es = "Hebilla",
			mx = "Hebilla",
			ko = "허리 마법부여",
		},
	},
	[1097] = {
		readable = "Wands",
		icon = 135468,
		text = {
			en = "Wands",
			es = "Varitas",
			mx = "Varitas",
			ko = "마법봉",
		},
	},
	[1098] = {
		readable = "Wrist Enchantments",
		icon = 132616,
		text = {
			en = "Wrist Enchantments",
			es = "Encantamientos de muñecas",
			mx = "Encantamientos de muñecas",
			ko = "손목 마법부여",
		},
	},
	[1100] = {
		readable = "Fishing",
		text = {
			en = "Fishing",
			de = "Angeln",
			es = "Pesca",
			mx = "Pesca",
			fr = "Pêche",
			it = "Pesca",
			pt = "Pesca",
			ru = "Рыбная ловля",
			ko = "낚시",
			cn = "钓鱼",
			tw = "釣魚",
		},
	},
	[1102] = {
		readable = "Outland Fishing",
		text = {
			en = "Outland Fishing",
			de = "Angeln der Scherbenwelt",
			es = "Pesca de Terrallende",
			mx = "Pesca de Terrallende",
			fr = "Pêche de l’Outreterre",
			it = "Pesca delle Terre Esterne",
			pt = "Pesca de Terralém",
			ru = "Рыбная ловля в Запределье",
			ko = "아웃랜드 낚시",
			cn = "外域钓鱼",
			tw = "外域釣魚",
		},
	},
	[1104] = {
		readable = "Northrend Fishing",
		text = {
			en = "Northrend Fishing",
			de = "Angeln von Nordend",
			es = "Pesca de Rasganorte",
			mx = "Pesca de Rasganorte",
			fr = "Pêche du Norfendre",
			it = "Pesca di Nordania",
			pt = "Pesca de Nortúndria",
			ru = "Рыбная ловля Нордскола",
			ko = "노스렌드 낚시",
			cn = "诺森德钓鱼",
			tw = "北裂境釣魚",
		},
	},
	[1106] = {
		readable = "Cataclysm Fishing",
		text = {
			en = "Cataclysm Fishing",
			de = "Angeln des Kataklysmus",
			es = "Pesca de Cataclysm",
			mx = "Pesca de Cataclysm",
			fr = "Pêche de Cataclysm",
			it = "Pesca di Cataclysm",
			pt = "Pesca de Cataclysm",
			ru = "Рыбная ловля времен Катаклизма",
			ko = "대격변 낚시",
			cn = "大地的裂变钓鱼",
			tw = "大災變釣魚"
		},
	},
	[1108] = {
		readable = "Pandaria Fishing",
		text = {
			en = "Pandaria Fishing",
			de = "Angeln von Pandaria",
			es = "Pesca de Pandaria",
			mx = "Pesca de Pandaria",
			fr = "Pêche de Pandarie",
			it = "Pesca di Pandaria",
			pt = "Pesca de Pandária",
			ru = "Пандарийская рыбная ловля",
			ko = "판다리아 낚시",
			cn = "潘达利亚钓鱼",
			tw = "潘達利亞釣魚",
		},
	},
	[1110] = {
		readable = "Draenor Fishing",
		text = {
			en = "Draenor Fishing",
			de = "Angeln von Draenor",
			es = "Pesca de Draenor",
			mx = "Pesca de Draenor",
			fr = "Pêche de Draenor",
			it = "Pesca di Draenor",
			pt = "Pesca de Draenor",
			ru = "Рыбная ловля Дренора",
			ko = "드레노어 낚시",
			cn = "德拉诺钓鱼",
			tw = "德拉諾釣魚",
		},
	},
	[1112] = {
		readable = "Legion Fishing",
		text = {
			en = "Legion Fishing",
			de = "Angeln der Verheerten Inseln",
			es = "Pesca de Legion",
			mx = "Pesca de Legion",
			fr = "Pêche de la Légion",
			it = "Pesca di Legion",
			pt = "Pesca da Legião",
			ru = "Рыбная ловля Legion",
			ko = "군단 낚시",
			cn = "军团钓鱼",
			tw = "軍團釣魚",
		},
	},
	[1114] = {
		readable = "Kul Tiran Fishing",
		text = {
			en = "Kul Tiran Fishing",
			de = "Angeln von Kul Tiras",
			es = "Pesca de Kul Tiras",
			mx = "Pesca kultirana",
			fr = "Pêche de Kul Tiras",
			it = "Pesca di Kul Tiras",
			pt = "Pesca de Kul Tiraz",
			ru = "Кул-тирасская рыбная ловля",
			ko = "쿨 티란 낚시",
			cn = "库尔提拉斯钓鱼",
			tw = "庫爾提拉斯釣魚",
		},
	},
	[1115] = {
		readable = "Cloth Goggles",
		icon = 133023,
		text = {
			en = "Cloth Goggles",
			es = "Gafas de tela",
			mx = "Gafas de tela",
			ko = "천 고글",
		},
	},
	[1116] = {
		readable = "Embroidery",
		text = {
			en = "Embroidery",
			de = "Stickerei",
			es = "Bordados",
			mx = "Bordado",
			fr = "Broderie",
			it = "Ricami",
			pt = "Bordados",
			ru = "Вышивка",
			ko = "자수",
			cn = "刺绣",
			tw = "刺繡",
		},
	},
	[1118] = {
		readable = "Zandalari Cuisine",
		text = {
			en = "Zandalari Cuisine",
			es = "Cocina de Zandalar",
			mx = "Cocina Zandalari",
		},
	},
	[1119] = {
		readable = "Desserts",
		text = {
			en = "Desserts",
			es = "Postres",
			mx = "Postres",
		},
	},
	[1120] = {
		readable = "Light Meals",
		text = {
			en = "Light Meals",
			mx = "Comidas livianas",
		},
	},
	[1121] = {
		readable = "Large Meals",
		text = {
			en = "Large Meals",
			mx = "Comidas grandes",
		},
	},
	[1122] = {
		readable = "Feasts",
		text = {
			en = "Feasts",
			es = "Festines",
			mx = "Festines",
		},
	},
	[1123] = {
		readable = "Cures & Tonics",
		text = {
			en = "Cures & Tonics",
			es = "Curas y tónicos",
			mx = "Curas y tónicos",
		},
	},
	[1124] = {
		readable = "Anti-Venoms",
		text = {
			en = "Anti-Venoms",
			es = "Contravenenos",
			mx = "Contravenenos",
		},
	},
	[1126] = {
		readable = "Glyphs",
		text = {
			en = "Glyphs",
			de = "Glyphe",
			es = "Glifos",
			mx = "Glifos",
			fr = "Glyphe",
			it = "Glifo",
			pt = "Glifo",
			ru = "Символ",
			ko = "문양",
		},
	},
	[1127] = {
		readable = "Glyphs",
		text = {
			en = "Glyphs",
			de = "Glyphe",
			es = "Glifos",
			mx = "Glifos",
			fr = "Glyphe",
			it = "Glifo",
			pt = "Glifo",
			ru = "Символ",
			ko = "문양",
		},
	},
	[1130] = {
		readable = "Glyphs",
		text = {
			en = "Glyphs",
			de = "Glyphe",
			es = "Glifos",
			mx = "Glifos",
			fr = "Glyphe",
			it = "Glifo",
			pt = "Glifo",
			ru = "Символ",
			ko = "문양",
		},
	},
	[1228] = {
		readable = "Cauldrons",
		text = {
			en = "Cauldrons",
			es = "Calderos",
			mx = "Calderos",
		},
	},
	[1229] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
			es = "Equipo de seguidor",
			mx = "Equipo de seguidor",
		},
	},
	[1230] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
			es = "Equipo de seguidor",
			mx = "Equipo de seguidor",
		},
	},
	[1231] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
			es = "Equipo de seguidor",
			mx = "Equipo de seguidor",
		},
	},
	[1232] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
			es = "Equipo de seguidor",
			mx = "Equipo de seguidor",
		},
	},
	[1233] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
			es = "Equipo de seguidor",
			mx = "Equipo de seguidor",
		},
	},
	[1234] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
			es = "Equipo de seguidor",
			mx = "Equipo de seguidor",
		},
	},
	[1235] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
			es = "Equipo de seguidor",
			mx = "Equipo de seguidor",
		},
	},
	[1236] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
			es = "Equipo de seguidor",
			mx = "Equipo de seguidor",
		},
	},
	[1237] = {
		readable = "Pets",
		text = {
			en = "Pets",
			es = "Mascotas",
			mx = "Mascotas",
		},
	},
	[1238] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
			es = "Conversiones",
			mx = "Conversiones",
		},
	},
	[1239] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
			es = "Conversiones",
			mx = "Conversiones",
		},
	},
	[1240] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
			es = "Conversiones",
			mx = "Conversiones",
		},
	},
	[1241] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
			es = "Conversiones",
			mx = "Conversiones",
		},
	},
	[1242] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
			es = "Conversiones",
			mx = "Conversiones",
		},
	},
	[1243] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
			es = "Conversiones",
			mx = "Conversiones",
		},
	},
	[1244] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
			es = "Conversiones",
			mx = "Conversiones",
		},
	},
	[1245] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
			es = "Conversiones",
			mx = "Conversiones",
		},
	},
	[1246] = {
		readable = "Leather Goggles",
		icon = 133023,
		text = {
			en = "Leather Goggles",
			es = "Gafas de cuero",
			mx = "Gafas de cuero",
			ko = "가죽 고글",
		},
	},
	[1247] = {
		readable = "Mail Goggles",
		icon = 133023,
		text = {
			en = "Mail Goggles",
			es = "Gafas de malla",
			mx = "Gafas de malla",
			ko = "메일 고글",
		},
	},
	[1248] = {
		readable = "Plate Goggles",
		icon = 133023,
		text = {
			en = "Plate Goggles",
			es = "Gafas de placa",
			mx = "Gafas de placa",
			ko = "플레이트 고글",
		},
	},
	[1249] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
			de = "Werkzeuge des Handwerks",
			es = "Herramientas de trabajo",
			mx = "Herramientas del oficio",
			fr = "Outils de travail",
			it = "Ferri del Mestiere",
			pt = "Truques do ofício",
			ru = "Профессиональные инструменты",
			ko = "전문 기술 도구",
			cn = "商业工具",
			tw = "工具",
		},
	},
	[1250] = {
		readable = "Training",
		icon = 134331,
		text = {
			en = "Training",
			es = "Entrenamiento",
			mx = "Entrenamiento",
		},
	},
	[1251] = {
		readable = "Disenchants",
		text = {
			en = "Disenchants",
			es = "Desencantares",
			mx = "Desencantares",
		},
	},
	[1254] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
			de = "Werkzeuge des Handwerks",
			es = "Herramientas de trabajo",
			mx = "Herramientas del oficio",
			fr = "Outils de travail",
			it = "Ferri del Mestiere",
			pt = "Truques do ofício",
			ru = "Профессиональные инструменты",
			ko = "전문 기술 도구",
			cn = "商业工具",
			tw = "工具",
		},
	},
	[1255] = {
		readable = "Training",
		icon = 134331,
		text = {
			en = "Training",
			es = "Entrenamiento",
			mx = "Entrenamiento",
		},
	},
	[1256] = {
		readable = "Explosives",
		icon = 133711,
		text = {
			en = "Explosives",
			es = "Explosivos",
			mx = "Explosivos",
			ko = "폭발물",
		},
	},
	[1257] = {
		readable = "Junkyard Tinkering",
		text = {
			en = "Junkyard Tinkering",
			de = "Schrottplatztüfteleien",
			es = "Manitas de desguace",
			mx = "Arte de la chatarrería",
			fr = "Bricolage de la casse",
			it = "Meccanistica di Discarica",
			pt = "Sucatrônica",
			ru = "Кустарная механика",
			ko = "고철장 땜질",
			cn = "垃圾场匠技",
			tw = "廢料場工程",
		},
	},
	[1259] = {
		readable = "Components & Tools",
		text = {
			en = "Components & Tools",
			es = "Componentes y herramientas",
			mx = "Componentes y herramientas",
			ko = "장비",
		},
	},
	[1261] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[1262] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
			de = "Werkzeuge des Handwerks",
			es = "Herramientas de trabajo",
			mx = "Herramientas del oficio",
			fr = "Outils de travail",
			it = "Ferri del Mestiere",
			pt = "Truques do ofício",
			ru = "Профессиональные инструменты",
			ko = "전문 기술 도구",
			cn = "商业工具",
			tw = "工具",
		},
	},
	[1266] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
			de = "Werkzeuge des Handwerks",
			es = "Herramientas de trabajo",
			mx = "Herramientas del oficio",
			fr = "Outils de travail",
			it = "Ferri del Mestiere",
			pt = "Truques do ofício",
			ru = "Профессиональные инструменты",
			ko = "전문 기술 도구",
			cn = "商业工具",
			tw = "工具",
		},
	},
	[1267] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
			de = "Werkzeuge des Handwerks",
			es = "Herramientas de trabajo",
			mx = "Herramientas del oficio",
			fr = "Outils de travail",
			it = "Ferri del Mestiere",
			pt = "Truques do ofício",
			ru = "Профессиональные инструменты",
			ko = "전문 기술 도구",
			cn = "商业工具",
			tw = "工具",
		},
	},
	[1276] = {
		readable = "Blood Contracts",
		text = {
			en = "Blood Contracts",
			es = "Contratos de sangre",
			mx = "Contratos de sangre",
		},
	},
	[1278] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
			de = "Werkzeuge des Handwerks",
			es = "Herramientas de trabajo",
			mx = "Herramientas del oficio",
			fr = "Outils de travail",
			it = "Ferri del Mestiere",
			pt = "Truques do ofício",
			ru = "Профессиональные инструменты",
			ko = "전문 기술 도구",
			cn = "商业工具",
			tw = "工具",
		},
	},
	[1280] = {
		readable = "Gadgets",
		text = {
			en = "Gadgets",
			es = "Artilugios",
			mx = "Artilugios",
		},
	},
	[1281] = {
		readable = "Resources",
		text = {
			en = "Resources",
			es = "Recursos",
			mx = "Recursos",
		},
	},
	[1282] = {
		readable = "***[UNAUTHORIZED ACCESS]***",
		text = {
			en = "***[UNAUTHORIZED ACCESS]***",
			es = "***[ACCESO NO AUTORIZADO]***",
			mx = "***[ACCESO NO AUTORIZADO]***",
		},
	},
	[1283] = {
		readable = "Equipment",
		text = {
			en = "Equipment",
			es = "Equipo",
			mx = "Equipo",
		},
	},
	[1285] = {
		readable = "Transportation",
		text = {
			en = "Transportation",
			es = "Transporte",
			mx = "Transporte",
		},
	},
	[1288] = {
		readable = "Mount Equipment",
		text = {
			en = "Mount Equipment",
			es = "Equipamiento de montura",
			mx = "Equipamiento de montura",
		},
	},
	[1289] = {
		readable = "Mounts Equipment",
		text = {
			en = "Mounts Equipment",
			es = "Equipamiento de montura",
			mx = "Equipamiento de montura",
		},
	},
	[1290] = {
		readable = "Mount Equipment",
		text = {
			en = "Mount Equipment",
			es = "Equipamiento de montura",
			mx = "Equipamiento de montura",
		},
	},
	[1291] = {
		readable = "Robots",
		text = {
			en = "Robots",
		},
	},
	[1294] = {
		readable = "Shadowlands Alchemy",
		text = {
			en = "Shadowlands Alchemy",
			de = "Alchemie der Schattenlande",
			es = "Alquimia de Shadowlands",
			mx = "Alquimia de Shadowlands",
			fr = "Alchimie d’Ombreterre",
			it = "Alchimia di Shadowlands",
			pt = "Alquimia de Shadowlands",
			ru = "Алхимия Темных Земель",
			ko = "어둠땅 연금술",
			cn = "暗影界炼金术",
			tw = "暗影之境鍊金術",
		},
	},
	[1295] = {
		readable = "Cauldrons",
		text = {
			en = "Cauldrons",
			es = "Calderos",
			mx = "Calderos",
		},
	},
	[1296] = {
		readable = "Combat Potions",
		text = {
			en = "Combat Potions",
			es = "Pociones de combate",
			mx = "Pociones de combate",
			ko = "전투 물약",
		},
	},
	[1297] = {
		readable = "Oils and Extracts",
		text = {
			en = "Oils and Extracts",
			es = "Aceites y extractos",
			mx = "Aceites y extractos",
		},
	},
	[1298] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			es = "Frascos",
			mx = "Frascos",
			ko = "영약",
		},
	},
	[1299] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1300] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			de = "Transmutation",
			es = "Transmutación",
			mx = "Transmutación",
			fr = "Transmutation",
			it = "Trasmutazione",
			pt = "Transmutação",
			ru = "Трансмутация",
			ko = "변환식",
			cn = "转化",
			tw = "轉化",
		},
	},
	[1301] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			es = "Abalorios",
			mx = "Abalorios",
			ko = "장비",
		},
	},
	[1302] = {
		readable = "Utility Potions",
		text = {
			en = "Utility Potions",
			es = "Pociones de utilidad",
			mx = "Pociones de utilidad",
			ko = "유틸리티 물약",
		},
	},
	[1303] = {
		readable = "Anti-Venoms",
		text = {
			en = "Anti-Venoms",
			es = "Contravenenos",
			mx = "Contravenenos",
		},
	},
	[1304] = {
		readable = "Focus",
		text = {
			en = "Focus",
			es = "Enfoque",
			mx = "Enfoque",
		},
	},
	[1305] = {
		readable = "Focus",
		text = {
			en = "Focus",
			es = "Enfoque",
			mx = "Enfoque",
		},
	},
	[1306] = {
		readable = "Focus",
		text = {
			en = "Focus",
			es = "Enfoque",
			mx = "Enfoque",
		},
	},
	[1307] = {
		readable = "Focus",
		text = {
			en = "Focus",
			es = "Enfoque",
			mx = "Enfoque",
		},
	},
	[1308] = {
		readable = "Focus",
		text = {
			en = "Focus",
			es = "Enfoque",
			mx = "Enfoque",
		},
	},
	[1309] = {
		readable = "Focus",
		text = {
			en = "Focus",
			es = "Enfoque",
			mx = "Enfoque",
		},
	},
	[1311] = {
		readable = "Shadowlands Plans",
		text = {
			en = "Shadowlands Plans",
			es = "Planos de Shadowlands",
			mx = "Planos de Shadowlands",
		},
	},
	[1312] = {
		readable = "Armor",
		text = {
			en = "Armor",
			es = "Armadura",
			mx = "Armadura",
		},
	},
	[1313] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[1314] = {
		readable = "Specialized Armor",
		text = {
			en = "Specialized Armor",
			es = "Armadura especializada",
			mx = "Armadura especializada",
		},
	},
	[1315] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = [[~AUCTION_CATEGORY_WEAPONS]],
		},
	},
	[1316] = {
		readable = "Weapons Mods",
		text = {
			en = "Weapons Mods",
			es = "Modificadores de armas",
			mx = "Modificadores de armas",
		},
	},
	[1317] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			es = "Componentes",
			mx = "Componentes",
			ko = "재료",
		},
	},
	[1318] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1323] = {
		readable = "Shadowlands Cuisine",
		text = {
			en = "Shadowlands Cuisine",
			es = "Cocina de Shadowlands",
			mx = "Cocina de Shadowlands",
		},
	},
	[1324] = {
		readable = "Light Meals",
		text = {
			en = "Light Meals",
			mx = "Comidas livianas",
		},
	},
	[1325] = {
		readable = "Large Meals",
		text = {
			en = "Large Meals",
			mx = "Comidas completas",
		},
	},
	[1326] = {
		readable = "Feasts",
		text = {
			en = "Feasts",
			es = "Festines",
			mx = "Festines",
		},
	},
	[1327] = {
		readable = "Soul Food",
		text = {
			en = "Soul Food",
			mx = "Cocina para el alma",
		},
	},
	[1334] = {
		readable = "Shadowlands Patterns",
		text = {
			en = "Shadowlands Patterns",
			es = "Patrones de Shadowlands",
			mx = "Patrones de Shadowlands",
		},
	},
	[1335] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[1336] = {
		readable = "Leather Armor",
		text = {
			en = "Leather Armor",
			es = "Armadura de cuero",
			mx = "Armadura de cuero",
		},
	},
	[1337] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = [[~AUCTION_CATEGORY_WEAPONS]],
		},
	},
	[1338] = {
		readable = "Materials",
		text = {
			en = "Materials",
			es = "Materiales",
			mx = "Materiales",
			ko = "재료",
		},
	},
	[1339] = {
		readable = "Mail Armor",
		text = {
			en = "Mail Armor",
			es = "Armadura de malla",
			mx = "Armadura de malla",
		},
	},
	[1364] = {
		readable = "Shadowlands Enchanting",
		text = {
			en = "Shadowlands Enchanting",
			de = "Verzauberkunst der Schattenlande",
			es = "Encantamiento de Shadowlands",
			mx = "Encantamiento de Shadowlands",
			fr = "Enchantement d’Ombreterre",
			it = "Incantamento di Shadowlands",
			pt = "Encantamento de Shadowlands",
			ru = "Наложение чар Темных Земель",
			ko = "어둠땅 마법부여",
			cn = "暗影界附魔",
			tw = "暗影之境附魔",
		},
	},
	[1365] = {
		readable = "Boot Enchantments",
		icon = 132535,
		text = {
			en = "Boot Enchantments",
			es = "Encantamientos de botas",
			mx = "Encantamientos de botas",
			ko = "장화 마법부여",
		},
	},
	[1366] = {
		readable = "Chest Enchantments",
		icon = 132624,
		text = {
			en = "Chest Enchantments",
			es = "Encantamientos de pecho",
			mx = "Encantamientos de pecho",
			ko = "가슴 마법부여",
		},
	},
	[1367] = {
		readable = "Cloak Enchantments",
		icon = 133770,
		text = {
			en = "Cloak Enchantments",
			es = "Encantamientos de capa",
			mx = "Encantamientos de capa",
			ko = "망토 마법부여",
		},
	},
	[1368] = {
		readable = "Glove Enchantments",
		icon = 132938,
		text = {
			en = "Glove Enchantments",
			es = "Encantamientos de guantes",
			mx = "Encantamientos de guantes",
			ko = "장갑 마법부여",
		},
	},
	[1369] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1370] = {
		readable = "Bracer Enchantments",
		icon = 132616,
		text = {
			en = "Bracer Enchantments",
			es = "Encantamientos de brazales",
			mx = "Encantamientos de brazales",
			ko = "손목 마법부여",
		},
	},
	[1371] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			es = "Componentes",
			mx = "Componentes",
			ko = "재료",
		},
	},
	[1372] = {
		readable = "Ring Enchantments",
		icon = 133397,
		text = {
			en = "Ring Enchantments",
			es = "Encantamientos de anillo",
			mx = "Encantamientos de anillo",
			ko = "손가락 마법부여",
		},
	},
	[1373] = {
		readable = "Shatters",
		text = {
			en = "Shatters",
			es = "Romper",
			mx = "Romper",
		},
	},
	[1374] = {
		readable = "Wands",
		icon = 135468,
		text = {
			en = "Wands",
			es = "Varitas",
			mx = "Varitas",
			ko = "마법봉",
		},
	},
	[1375] = {
		readable = "Weapon Enchantments",
		icon = 135792,
		text = {
			en = "Weapon Enchantments",
			es = "Encantamientos de arma",
			mx = "Encantamientos de arma",
			ko = "무기 마법부여",
			ru = "Наложение чар на оружие",
		},
	},
	[1381] = {
		readable = "Shadowlands Engineering",
		text = {
			en = "Shadowlands Engineering",
			de = "Ingenieurskunst der Schattenlande",
			es = "Ingeniería de Shadowlands",
			mx = "Ingeniería de Shadowlands",
			fr = "Ingénierie d’Ombreterre",
			it = "Ingegneria di Shadowlands",
			pt = "Engenharia de Shadowlands",
			ru = "Инженерное дело Темных Земель",
			ko = "어둠땅 기계공학",
			cn = "暗影界工程学",
			tw = "暗影之境工程學",
		},
	},
	[1382] = {
		readable = "Belt Attachments",
		text = {
			en = "Belt Attachments",
			es = "Hebilla",
			mx = "Hebilla",
			ko = "허리 마법부여",
		},
	},
	[1383] = {
		readable = "Bombs",
		text = {
			en = "Bombs",
			es = "Bombas",
			mx = "Bombas",
		},
	},
	[1384] = {
		readable = "Devices",
		text = {
			en = "Devices",
			es = "Dispositivos",
			mx = "Dispositivos",
			ko = "장치",
		},
	},
	[1385] = {
		readable = "Goggles",
		icon = 133023,
		text = {
			en = "Goggles",
			de = "Schutzbrille",
			es = "Gafas",
			mx = "Lentes",
			fr = "Lunettes",
			it = "Visori",
			pt = "Tecnóculos",
			ru = "очки",
			ko = "고글",
		},
	},
	[1386] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1387] = {
		readable = "Parts",
		text = {
			en = "Parts",
			es = "Partes",
			mx = "Partes",
			ko = "부품",
		},
	},
	[1388] = {
		readable = "Scopes",
		icon = 134442,
		text = {
			en = "Scopes",
			es = "Miras",
			mx = "Miras",
			fr = "Lunette",
			it = "Mirino",
			ru = "Прицел",
			ko = "조준경",
		},
	},
	[1389] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = [[~AUCTION_CATEGORY_WEAPONS]],
		},
	},
	[1395] = {
		readable = "Shadowlands Patterns",
		text = {
			en = "Shadowlands Patterns",
			es = "Patrones de Shadowlands",
			mx = "Patrones de Shadowlands",
		},
	},
	[1396] = {
		readable = "Armor",
		text = {
			en = "Armor",
			es = "Armadura",
			mx = "Armadura",
		},
	},
	[1401] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1403] = {
		readable = "Bandages",
		icon = 133690,
		text = {
			en = "Bandages",
			es = "Vendas",
			mx = "Vendas",
		},
	},
	[1406] = {
		readable = "Shadowlands Inscription",
		text = {
			en = "Shadowlands Inscription",
			de = "Inschriftenkunde der Schattenlande",
			es = "Inscripción de Shadowlands",
			mx = "Inscripción de Shadowlands",
			fr = "Calligraphie d’Ombreterre",
			it = "Runografia di Shadowlands",
			pt = "Escrivania de Shadowlands",
			ru = "Начертание Темных Земель",
			ko = "어둠땅 주문각인",
			cn = "暗影界铭文",
			tw = "暗影之境銘文學",
		},
	},
	[1407] = {
		readable = "Off-Hands",
		text = {
			en = "Off-Hands",
			es = "Mano izquierda",
			mx = "Mano izquierda",
		},
	},
	[1408] = {
		readable = "Ink",
		icon = 237070,
		text = {
			en = "Ink",
			de = "Tinte",
			es = "Tinta",
			mx = "Tinta",
			fr = "Encre",
			it = "Tinta",
			pt = "Tinta",
			ru = "Чернила",
			ko = "잉크",
		},
	},
	[1409] = {
		readable = "Books & Scrolls",
		icon = 134939,
		text = {
			en = "Books & Scrolls",
			es = "Libros y pergaminos",
			mx = "Libros y pergaminos",
		},
	},
	[1410] = {
		readable = "Contracts",
		text = {
			en = "Contracts",
			es = "Contratos",
			mx = "Contratos",
		},
	},
	[1411] = {
		readable = "Cards",
		text = {
			en = "Cards",
			es = "Cartas",
			mx = "Cartas",
		},
	},
	[1412] = {
		readable = "Mass Milling",
		text = {
			en = "Mass Milling",
			es = "Moler a granel",
			mx = "Molido en masa",
		},
	},
	[1415] = {
		readable = "Staves",
		text = {
			en = "Staves",
			es = "Bastones",
			mx = "Bastones",
		},
	},
	[1416] = {
		readable = "Vantus Runes",
		icon = 1392953,
		text = {
			en = "Vantus Runes",
			de = "Vantusrunen",
			es = "Runas vantus",
			mx = "Runas vantus",
			fr = "Runes de Vantus",
			it = "Rune Vantus",
			pt = "Runas Vantus",
			ru = "Вантийские руны",
			ko = "반투스 룬",
			cn = "凡图斯符文",
			tw = "梵陀符文",
		},
	},
	[1418] = {
		readable = "Shadowlands Designs",
		text = {
			en = "Shadowlands Designs",
			es = "Diseños de Shadowlands",
			mx = "Diseños de Shadowlands",
		},
	},
	[1419] = {
		readable = "Gems",
		text = {
			en = "Gems",
			es = "Gemas",
			mx = "Gemas",
		},
	},
	[1420] = {
		readable = "Mass Prospecting",
		text = {
			en = "Mass Prospecting",
			mx = "Exploracion en masa",
		},
	},
	[1421] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1422] = {
		readable = "Necklaces",
		icon = 133294,
		text = {
			en = "Necklaces",
			es = "Collares",
			mx = "Collares",
			ko = "목",
		},
	},
	[1424] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			es = "Anillos",
			mx = "Anillos",
			ko = "손가락",
		},
	},
	[1449] = {
		readable = "Delicacies",
		text = {
			en = "Delicacies",
			es = "Delicias",
			mx = "Delicias",
		},
	},
	[1471] = {
		readable = "Armor Kits",
		icon = 133611,
		text = {
			en = "Armor Kits",
			es = "Refuerzo para armadura",
			mx = "Refuerzo para armadura",
			ko = "방어구 키트",
		},
	},
	[1472] = {
		readable = "Specialized Armor",
		text = {
			en = "Specialized Armor",
			es = "Armadura especializada",
			mx = "Armadura especializada",
		},
	},
	[1474] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1476] = {
		readable = "Mount Equipment",
		text = {
			en = "Mount Equipment",
			es = "Equipamiento de montura",
			mx = "Equipamiento de montura",
		},
	},
	[1484] = {
		readable = "Specialized Jewelry",
		text = {
			en = "Specialized Jewelry",
			es = "Joyería especializada",
			mx = "Joyería especializada",
		},
	},
	[1487] = {
		readable = "Shields",
		icon = 134952,
		text = {
			en = "Shields",
			es = "Escudos",
			mx = "Escudos",
			ko = "방패",
		},
	},
	[1488] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1489] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1490] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1491] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1492] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1493] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1494] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1495] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1496] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1497] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1498] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1499] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1500] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1501] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1502] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1503] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1504] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1505] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1506] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1507] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1508] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1509] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1510] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1511] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1512] = {
		readable = "Robotics",
		text = {
			en = "Robotics",
			es = "Robóticos",
			mx = "Robots",
		},
	},
	[1513] = {
		readable = "Specialized Armor",
		text = {
			en = "Specialized Armor",
			es = "Armadura especializada",
			mx = "Armadura especializada",
		},
	},
	[1517] = {
		readable = "Other",
		text = {
			en = "Other",
			es = "Otro",
			mx = "Otro",
			ko = "다른",
		},
	},
	[1519] = {
		readable = "Hats",
		text = {
			en = "Hats",
			es = "Sombreros",
			mx = "Sombreros",
			ko = "머리",
		},
	},
	[1520] = {
		readable = "Hats",
		text = {
			en = "Hats",
			es = "Sombreros",
			mx = "Sombreros",
			ko = "머리",
		},
	},
	[1521] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			es = "Componentes opcionales",
			mx = "Componentes opcionales",
			ko = "선택적 시약",
		},
	},
	[1522] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			es = "Recetas de misión",
			mx = "Recetas de misión",
			ko = "퀘스트 레시피",
		},
	},
	[1525] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			es = "Recetas de misión",
			mx = "Recetas de misión",
			ko = "퀘스트 레시피",
		},
	},
	[1526] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			es = "Recetas de misión",
			mx = "Recetas de misión",
			ko = "퀘스트 레시피",
		},
	},
	[1527] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			es = "Recetas de misión",
			mx = "Recetas de misión",
			ko = "퀘스트 레시피",
		},
	},
	[1528] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			es = "Recetas de misión",
			mx = "Recetas de misión",
			ko = "퀘스트 레시피",
		},
	},
	[1529] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			es = "Recetas de misión",
			mx = "Recetas de misión",
			ko = "퀘스트 레시피",
		},
	},
	[1530] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			es = "Recetas de misión",
			mx = "Recetas de misión",
			ko = "퀘스트 레시피",
		},
	},
	[1531] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			es = "Recetas de misión",
			mx = "Recetas de misión",
			ko = "퀘스트 레시피",
		},
	},
	[1532] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			es = "Recetas de misión",
			mx = "Recetas de misión",
			ko = "퀘스트 레시피",
		},
	},
	[1538] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			es = "Bolsas",
			mx = "Bolsas",
			ko = "가방",
			tw = "背包",
		},
	},
})
do CategoryDB[categoryID] = categoryData; end
