---------------------------------------------------------
--   C A T E G O R Y   D A T A B A S E   M O D U L E   --
---------------------------------------------------------
local CategoryDB = CategoryDB; for categoryID,categoryData in pairs({
	[1] = {
		readable = "Bullets",
		icon = 132383,
		text = {
			en = "Bullets",
			ko = "투사체",
		},
	},
	[2] = {
		readable = "Consumable",
		icon = 132108,
		text = {
			en = "Consumable",
			ko = "소모품",
		},
	},
	[3] = {
		readable = "Tarot Decks",
		icon = 134492,
		text = {
			en = "Tarot Decks",
			cn = "塔罗牌",
		},
	},
	[58] = {
		readable = "Holiday Cooking",
		icon = 134018,
		text = {
			en = "Holiday Cooking",
			ko = "축제 요리",
		},
	},
	[63] = {
		readable = "Everyday Cooking",
		icon = 133968,
		text = {
			en = "Everyday Cooking",
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
			ko = "특별한 별미",
		},
	},
	[71] = {
		readable = "Weapon Skills",
		icon = 135580,
		text = {
			en = "Weapon Skills",
		},
	},
	[72] = {
		readable = "Old World Recipes",
		text = {
			en = "Old World Recipes",
		},
	},
	[73] = {
		readable = "Outlandish Dishes",
		icon = 134493,
		text = {
			en = "Outlandish Dishes",
		},
	},
	[74] = {
		readable = "Recipes of the Cold North",
		text = {
			en = "Recipes of the Cold North",
		},
	},
	[75] = {
		readable = "Cataclysm Recipes",
		text = {
			en = "Cataclysm Recipes",
		},
	},
	[90] = {
		readable = "Pandaren Cuisine",
		text = {
			en = "Pandaren Cuisine",
		},
	},
	[91] = {
		readable = "Glyphs",
		icon = 254299,
		text = {
			en = "Glyphs",
		},
	},
	[103] = {
		readable = "Off-hand",
		text = {
			en = "Off-hand",
		},
	},
	[104] = {
		readable = "Ink",
		icon = 237070,
		text = {
			en = "Ink",
		},
	},
	[105] = {
		readable = "Clear Mind",
		text = {
			en = "Clear Mind",
		},
	},
	[106] = {
		readable = "Card",
		icon = 134492,
		text = {
			en = "Card",
		},
	},
	[107] = {
		readable = "Scrolls",
		icon = 134939,
		text = {
			en = "Scrolls",
		},
	},
	[108] = {
		readable = "Research",
		icon = 134331,
		text = {
			en = "Research",
		},
	},
	[114] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[119] = {
		readable = "Shoulder Inscription",
		text = {
			en = "Shoulder Inscription",
			ko = "어깨 마법부여",
		},
	},
	[165] = {
		readable = "Fist Weapons",
		icon = 135599,
		text = {
			en = "Fist Weapons",
		},
	},
	[167] = {
		readable = "Crowns",
		icon = 132769,
		text = {
			en = "Crowns",
			ko = "머리",
		},
	},
	[168] = {
		readable = "Materials",
		icon = 133237,
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[171] = {
		readable = "Necklaces",
		icon = 133294,
		text = {
			en = "Necklaces",
			ko = "목",
		},
	},
	[176] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			ko = "손가락",
		},
	},
	[178] = {
		readable = "Statues",
		icon = 134451,
		text = {
			en = "Statues",
		},
	},
	[180] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			ko = "장비",
		},
	},
	[183] = {
		readable = "Parts",
		icon = 133006,
		text = {
			en = "Parts",
			ko = "부품",
		},
	},
	[184] = {
		readable = "Explosives",
		icon = 133711,
		text = {
			en = "Explosives",
			ko = "폭발물",
		},
	},
	[185] = {
		readable = "Goggles",
		icon = 133149,
		text = {
			en = "Goggles",
			ko = "고글",
		},
	},
	[188] = {
		readable = "Devices",
		icon = 132766,
		text = {
			en = "Devices",
			ko = "장치",
		},
	},
	[189] = {
		readable = "Guns & Bows",
		icon = 135612,
		text = {
			en = "Guns & Bows",
			ko = "총과 활",
		},
	},
	[190] = {
		readable = "Scopes",
		icon = 134442,
		text = {
			en = "Scopes",
			ko = "조준경",
		},
	},
	[191] = {
		readable = "Tools",
		icon = 134520,
		text = {
			en = "Tools",
			ko = "장비",
		},
	},
	[194] = {
		readable = "Fireworks",
		icon = 135815,
		text = {
			en = "Fireworks",
			ko = "폭죽",
		},
	},
	[215] = {
		readable = "Materials",
		icon = 135247,
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[216] = {
		readable = "Weapon Mods",
		icon = 135250,
		text = {
			en = "Weapon Mods",
		},
	},
	[217] = {
		readable = "Armor Mods",
		icon = 133597,
		text = {
			en = "Armor Mods",
		},
	},
	[218] = {
		readable = "Helms",
		icon = 133127,
		text = {
			en = "Helms",
			ko = "머리",
		},
	},
	[219] = {
		readable = "Shoulders",
		icon = 135053,
		text = {
			en = "Shoulders",
			ko = "어깨",
		},
	},
	[220] = {
		readable = "Chest",
		icon = 132624,
		text = {
			en = "Chest",
			ko = "가슴",
		},
	},
	[221] = {
		readable = "Gauntlets",
		icon = 132938,
		text = {
			en = "Gauntlets",
			ko = "손",
		},
	},
	[222] = {
		readable = "Bracers",
		icon = 132616,
		text = {
			en = "Bracers",
			ko = "손목",
		},
	},
	[223] = {
		readable = "Belts",
		icon = 132516,
		text = {
			en = "Belts",
			ko = "허리",
		},
	},
	[224] = {
		readable = "Legs",
		icon = 134584,
		text = {
			en = "Legs",
			ko = "다리",
		},
	},
	[225] = {
		readable = "Boots",
		icon = 132535,
		text = {
			en = "Boots",
			ko = "발",
		},
	},
	[226] = {
		readable = "Shields",
		icon = 134952,
		text = {
			en = "Shields",
			ko = "방패",
		},
	},
	[227] = {
		readable = "Weapons",
		icon = 135580,
		text = {
			en = "Weapons",
			ko = "무기",
		},
	},
	[228] = {
		readable = "Skeleton Keys",
		icon = 134245,
		text = {
			en = "Skeleton Keys",
			ko = "해골 열쇠",
		},
	},
	[230] = {
		readable = "Materials",
		icon = 132907,
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[233] = {
		readable = "Bags",
		icon = 133652,
		text = {
			en = "Bags",
			ko = "가방",
		},
	},
	[234] = {
		readable = "Hats & Hoods",
		icon = 133133,
		text = {
			en = "Hats & Hoods",
			ko = "머리",
		},
	},
	[235] = {
		readable = "Shoulders",
		icon = 135033,
		text = {
			en = "Shoulders",
			ko = "어깨",
		},
	},
	[236] = {
		readable = "Robes & Tunics",
		icon = 132659,
		text = {
			en = "Robes & Tunics",
			ko = "가슴",
		},
	},
	[237] = {
		readable = "Bracers",
		icon = 132606,
		text = {
			en = "Bracers",
			ko = "손목",
		},
	},
	[238] = {
		readable = "Belts",
		icon = 132503,
		text = {
			en = "Belts",
			ko = "허리",
		},
	},
	[239] = {
		readable = "Gloves",
		icon = 132940,
		text = {
			en = "Gloves",
			ko = "손",
		},
	},
	[240] = {
		readable = "Pants",
		icon = 134586,
		text = {
			en = "Pants",
			ko = "다리",
		},
	},
	[241] = {
		readable = "Boots",
		icon = 132539,
		text = {
			en = "Boots",
			ko = "발",
		},
	},
	[242] = {
		readable = "Cloaks",
		icon = 133768,
		text = {
			en = "Cloaks",
			ko = "등",
		},
	},
	[243] = {
		readable = "Shirts",
		icon = 135029,
		text = {
			en = "Shirts",
			ko = "속옷",
		},
	},
	[246] = {
		readable = "Special",
		text = {
			en = "Special",
		},
	},
	[247] = {
		readable = "Materials",
		icon = 134252,
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[249] = {
		readable = "Armor Kits",
		icon = 133611,
		text = {
			en = "Armor Kits",
			ko = "방어구 키트",
		},
	},
	[250] = {
		readable = "Bags",
		icon = 133628,
		text = {
			en = "Bags",
			ko = "가방",
		},
	},
	[251] = {
		readable = "Helms",
		icon = 133076,
		text = {
			en = "Helms",
			ko = "머리",
		},
	},
	[252] = {
		readable = "Shoulders",
		icon = 135032,
		text = {
			en = "Shoulders",
			ko = "어깨",
		},
	},
	[253] = {
		readable = "Chest",
		icon = 132635,
		text = {
			en = "Chest",
			ko = "가슴",
		},
	},
	[254] = {
		readable = "Bracers",
		icon = 132607,
		text = {
			en = "Bracers",
			ko = "손목",
		},
	},
	[255] = {
		readable = "Gloves",
		icon = 132939,
		text = {
			en = "Gloves",
			ko = "손",
		},
	},
	[256] = {
		readable = "Belts",
		icon = 132513,
		text = {
			en = "Belts",
			ko = "허리",
		},
	},
	[257] = {
		readable = "Pants",
		icon = 134592,
		text = {
			en = "Pants",
			ko = "다리",
		},
	},
	[258] = {
		readable = "Boots",
		icon = 132544,
		text = {
			en = "Boots",
			ko = "발",
		},
	},
	[259] = {
		readable = "Cloaks",
		icon = 133755,
		text = {
			en = "Cloaks",
			ko = "등",
		},
	},
	[260] = {
		readable = "Special",
		text = {
			en = "Special",
		},
	},
	[264] = {
		readable = "Smelting",
		text = {
			en = "Smelting",
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
		},
	},
	[333] = {
		readable = "Reagents and Research",
		icon = 134331,
		text = {
			en = "Reagents and Research",
			ko = "재료 & 연구",
		},
	},
	[334] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			ko = "영약",
		},
	},
	[335] = {
		readable = "Potions and Elixirs",
		icon = 134831,
		text = {
			en = "Potions and Elixirs",
			ko = "물약과 엘릭서",
		},
	},
	[336] = {
		readable = "Trinkets and Trinket Upgrades",
		icon = 135443,
		text = {
			en = "Trinkets and Trinket Upgrades",
			ko = "장비",
		},
	},
	[342] = {
		readable = "Food of Draenor",
		text = {
			en = "Food of Draenor",
		},
	},
	[343] = {
		readable = "Meat Dishes",
		text = {
			en = "Meat Dishes",
		},
	},
	[344] = {
		readable = "Fish Dishes",
		text = {
			en = "Fish Dishes",
		},
	},
	[345] = {
		readable = "Feasts",
		text = {
			en = "Feasts",
		},
	},
	[346] = {
		readable = "Delicacies",
		text = {
			en = "Delicacies",
		},
	},
	[347] = {
		readable = "Draenor Engineering",
		text = {
			en = "Draenor Engineering",
		},
	},
	[348] = {
		readable = "Draenor Enchanting",
		text = {
			en = "Draenor Enchanting",
		},
	},
	[349] = {
		readable = "Cloak",
		icon = 133770,
		text = {
			en = "Cloak",
			ko = "등",
		},
	},
	[350] = {
		readable = "Neck",
		icon = 133294,
		text = {
			en = "Neck",
			ko = "목",
		},
	},
	[351] = {
		readable = "Ring",
		icon = 133397,
		text = {
			en = "Ring",
			ko = "손가락",
		},
	},
	[352] = {
		readable = "Weapon",
		icon = 135792,
		text = {
			en = "Weapon",
		},
	},
	[354] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[361] = {
		readable = "Item Enhancers",
		text = {
			en = "Item Enhancers",
		},
	},
	[362] = {
		readable = "Tailoring Patterns",
		text = {
			en = "Tailoring Patterns",
		},
	},
	[363] = {
		readable = "Armor",
		text = {
			en = "Armor",
		},
	},
	[364] = {
		readable = "Dyes and Thread",
		text = {
			en = "Dyes and Thread",
		},
	},
	[366] = {
		readable = "Reagents and Research",
		icon = 134331,
		text = {
			en = "Reagents and Research",
			ko = "재료 & 연구",
		},
	},
	[367] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[369] = {
		readable = "Draenor Patterns",
		text = {
			en = "Draenor Patterns",
		},
	},
	[372] = {
		readable = "Jewelcrafting Designs",
		text = {
			en = "Jewelcrafting Designs",
		},
	},
	[373] = {
		readable = "Draenor Designs",
		text = {
			en = "Draenor Designs",
		},
	},
	[374] = {
		readable = "Reagents and Research",
		icon = 134331,
		text = {
			en = "Reagents and Research",
			ko = "재료 & 연구",
		},
	},
	[375] = {
		readable = "Jewelry Enhancers",
		text = {
			en = "Jewelry Enhancers",
		},
	},
	[376] = {
		readable = "Jewelry",
		text = {
			en = "Jewelry",
		},
	},
	[377] = {
		readable = "Gems",
		text = {
			en = "Gems",
		},
	},
	[378] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[379] = {
		readable = "Leatherworking Patterns",
		text = {
			en = "Leatherworking Patterns",
		},
	},
	[380] = {
		readable = "Draenor Patterns",
		text = {
			en = "Draenor Patterns",
		},
	},
	[381] = {
		readable = "Reagents and Research",
		icon = 134331,
		text = {
			en = "Reagents and Research",
		},
	},
	[382] = {
		readable = "Leather Armor",
		text = {
			en = "Leather Armor",
		},
	},
	[383] = {
		readable = "Mail Armor",
		text = {
			en = "Mail Armor",
		},
	},
	[384] = {
		readable = "Armor Enhancers",
		text = {
			en = "Armor Enhancers",
		},
	},
	[385] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			ko = "등",
		},
	},
	[386] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			ko = "가방",
		},
	},
	[388] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[389] = {
		readable = "Draenor Plans",
		text = {
			en = "Draenor Plans",
		},
	},
	[390] = {
		readable = "Reagents and Research",
		icon = 134331,
		text = {
			en = "Reagents and Research",
			ko = "재료 & 연구",
		},
	},
	[391] = {
		readable = "Item Enhancers",
		text = {
			en = "Item Enhancers",
		},
	},
	[392] = {
		readable = "Armor",
		text = {
			en = "Armor",
		},
	},
	[393] = {
		readable = "Weapons and Shields",
		icon = 135792,
		text = {
			en = "Weapons and Shields",
			ko = "무기 & 방패",
		},
	},
	[394] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[399] = {
		readable = "Illusions",
		icon = 237174,
		text = {
			en = "Illusions",
		},
	},
	[400] = {
		readable = "Battle Standards",
		text = {
			en = "Battle Standards",
		},
	},
	[402] = {
		readable = "Tents",
		text = {
			en = "Tents",
		},
	},
	[403] = {
		readable = "Merchant Orders",
		text = {
			en = "Merchant Orders",
		},
	},
	[404] = {
		readable = "Removal",
		text = {
			en = "Removal",
		},
	},
	[407] = {
		readable = "Reagents and Research",
		icon = 134331,
		text = {
			en = "Reagents and Research",
			ko = "재료 & 연구",
		},
	},
	[409] = {
		readable = "Reagents and Research",
		icon = 1003586,
		text = {
			en = "Reagents and Research",
			ko = "재료 & 연구",
		},
	},
	[410] = {
		readable = "Draenor Inscription",
		text = {
			en = "Draenor Inscription",
		},
	},
	[411] = {
		readable = "Staves & Wands",
		text = {
			en = "Staves & Wands",
			ko = "지팡이 & 마법봉",
		},
	},
	[412] = {
		readable = "Card",
		text = {
			en = "Card",
		},
	},
	[413] = {
		readable = "Off-hand",
		text = {
			en = "Off-hand",
		},
	},
	[414] = {
		readable = "Reagents and Research",
		icon = 134331,
		text = {
			en = "Reagents and Research",
			ko = "재료 & 연구",
		},
	},
	[415] = {
		readable = "Inscription",
		text = {
			en = "Inscription",
		},
	},
	[416] = {
		readable = "Goggles",
		icon = 133023,
		text = {
			en = "Goggles",
			ko = "고글",
		},
	},
	[417] = {
		readable = "Robotics",
		text = {
			en = "Robotics",
		},
	},
	[418] = {
		readable = "Devices",
		text = {
			en = "Devices",
			ko = "장치",
		},
	},
	[419] = {
		readable = "Engineering",
		text = {
			en = "Engineering",
		},
	},
	[420] = {
		readable = "Tools",
		text = {
			en = "Tools",
			ko = "장비",
		},
	},
	[423] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			ko = "변환식",
		},
	},
	[424] = {
		readable = "Training",
		icon = 134331,
		text = {
			en = "Training",
		},
	},
	[425] = {
		readable = "Legion Mining",
		text = {
			en = "Legion Mining",
		},
	},
	[426] = {
		readable = "Legion Plans",
		text = {
			en = "Legion Plans",
		},
	},
	[427] = {
		readable = "Armor",
		text = {
			en = "Armor",
		},
	},
	[428] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[429] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			ko = "재료",
		},
	},
	[430] = {
		readable = "Legion Patterns",
		text = {
			en = "Legion Patterns",
		},
	},
	[431] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			ko = "등",
		},
	},
	[432] = {
		readable = "Training",
		icon = 134331,
		text = {
			en = "Training",
		},
	},
	[433] = {
		readable = "Alchemy of the Broken Isles",
		text = {
			en = "Alchemy of the Broken Isles",
		},
	},
	[434] = {
		readable = "Combat Potions",
		text = {
			en = "Combat Potions",
			ko = "전투 물약",
		},
	},
	[435] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			ko = "영약",
		},
	},
	[436] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			ko = "변환식",
		},
	},
	[437] = {
		readable = "Utility Potions",
		text = {
			en = "Utility Potions",
			ko = "유틸리티 물약",
		},
	},
	[438] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			ko = "장비",
		},
	},
	[439] = {
		readable = "Cauldrons",
		text = {
			en = "Cauldrons",
		},
	},
	[440] = {
		readable = "Mass Milling",
		text = {
			en = "Mass Milling",
		},
	},
	[443] = {
		readable = "Legion Enchanting",
		text = {
			en = "Legion Enchanting",
		},
	},
	[444] = {
		readable = "Neck Enchantments",
		icon = 133294,
		text = {
			en = "Neck Enchantments",
		},
	},
	[445] = {
		readable = "Ring Enchantments",
		icon = 133397,
		text = {
			en = "Ring Enchantments",
			ko = "손가락 마법부여",
		},
	},
	[446] = {
		readable = "Cloak Enchantments",
		icon = 133770,
		text = {
			en = "Cloak Enchantments",
			ko = "망토 마법부여",
		},
	},
	[447] = {
		readable = "Shoulder Enchantments",
		text = {
			en = "Shoulder Enchantments",
			ko = "어깨 마법부여",
		},
	},
	[448] = {
		readable = "Glove Enchantments",
		icon = 132938,
		text = {
			en = "Glove Enchantments",
			ko = "장갑 마법부여",
		},
	},
	[449] = {
		readable = "Toys, Pets, and Mounts",
		text = {
			en = "Toys, Pets, and Mounts",
		},
	},
	[450] = {
		readable = "Legion Inscription",
		text = {
			en = "Legion Inscription",
		},
	},
	[451] = {
		readable = "Cards",
		text = {
			en = "Cards",
		},
	},
	[453] = {
		readable = "Vantus Runes",
		icon = 1392953,
		text = {
			en = "Vantus Runes",
		},
	},
	[454] = {
		readable = "Books & Scrolls",
		icon = 134939,
		text = {
			en = "Books & Scrolls",
		},
	},
	[456] = {
		readable = "Legion Herbalism",
		text = {
			en = "Legion Herbalism",
		},
	},
	[459] = {
		readable = "Legion Skinning",
		text = {
			en = "Legion Skinning",
		},
	},
	[460] = {
		readable = "Legion Patterns",
		text = {
			en = "Legion Patterns",
		},
	},
	[461] = {
		readable = "Leather Armor",
		text = {
			en = "Leather Armor",
		},
	},
	[462] = {
		readable = "Mail Armor",
		text = {
			en = "Mail Armor",
		},
	},
	[463] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[464] = {
		readable = "Legion Designs",
		text = {
			en = "Legion Designs",
		},
	},
	[465] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			ko = "손가락",
		},
	},
	[466] = {
		readable = "Gems",
		text = {
			en = "Gems",
		},
	},
	[467] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[468] = {
		readable = "Training",
		icon = 134331,
		text = {
			en = "Training",
		},
	},
	[469] = {
		readable = "Legion Engineering",
		text = {
			en = "Legion Engineering",
		},
	},
	[470] = {
		readable = "Goggles",
		icon = 133023,
		text = {
			en = "Goggles",
			ko = "고글",
		},
	},
	[471] = {
		readable = "Combat Tools",
		text = {
			en = "Combat Tools",
			ko = "장비",
		},
	},
	[472] = {
		readable = "Devices",
		text = {
			en = "Devices",
			ko = "장치",
		},
	},
	[474] = {
		readable = "Robotics",
		text = {
			en = "Robotics",
		},
	},
	[475] = {
		readable = "Food of the Broken Isles",
		text = {
			en = "Food of the Broken Isles",
		},
	},
	[476] = {
		readable = "Snacks",
		text = {
			en = "Snacks",
		},
	},
	[477] = {
		readable = "Light Meals",
		text = {
			en = "Light Meals",
		},
	},
	[478] = {
		readable = "Large Meals",
		text = {
			en = "Large Meals",
		},
	},
	[479] = {
		readable = "Delicacies",
		text = {
			en = "Delicacies",
		},
	},
	[480] = {
		readable = "Feasts",
		text = {
			en = "Feasts",
		},
	},
	[484] = {
		readable = "Material Preparation",
		text = {
			en = "Material Preparation",
		},
	},
	[485] = {
		readable = "Tanning",
		text = {
			en = "Tanning",
		},
	},
	[486] = {
		readable = "Shaping",
		text = {
			en = "Shaping",
		},
	},
	[487] = {
		readable = "Stitching",
		text = {
			en = "Stitching",
		},
	},
	[488] = {
		readable = "Relics",
		icon = 1003601,
		text = {
			en = "Relics",
		},
	},
	[489] = {
		readable = "Relics",
		icon = 1003601,
		text = {
			en = "Relics",
		},
	},
	[490] = {
		readable = "Relics",
		icon = 1003601,
		text = {
			en = "Relics",
		},
	},
	[491] = {
		readable = "Relics",
		icon = 1003601,
		text = {
			en = "Relics",
		},
	},
	[492] = {
		readable = "Mass Milling",
		text = {
			en = "Mass Milling",
		},
	},
	[495] = {
		readable = "Cloth Armor",
		text = {
			en = "Cloth Armor",
		},
	},
	[496] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			ko = "재료",
		},
	},
	[497] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[505] = {
		readable = "Mass Prospecting",
		text = {
			en = "Mass Prospecting",
		},
	},
	[506] = {
		readable = "Disenchant",
		text = {
			en = "Disenchant",
		},
	},
	[507] = {
		readable = "Necklaces",
		icon = 133294,
		text = {
			en = "Necklaces",
			ko = "목",
		},
	},
	[535] = {
		readable = "Crowns",
		icon = 132767,
		text = {
			en = "Crowns",
			ko = "머리",
		},
	},
	[536] = {
		readable = "Training",
		icon = 134331,
		text = {
			en = "Training",
		},
	},
	[542] = {
		readable = "Zandalari Plans",
		text = {
			en = "Zandalari Plans",
		},
	},
	[547] = {
		readable = "Armor",
		text = {
			en = "Armor",
		},
	},
	[548] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = "Weapons",
			ko = "무기",
		},
	},
	[549] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[550] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
		},
	},
	[553] = {
		readable = "Pandaren Plans",
		text = {
			en = "Pandaren Plans",
		},
	},
	[554] = {
		readable = "Helms",
		icon = 133076,
		text = {
			en = "Helms",
			ko = "머리",
		},
	},
	[555] = {
		readable = "Shoulders",
		icon = 135032,
		text = {
			en = "Shoulders",
			ko = "어깨",
		},
	},
	[556] = {
		readable = "Materials",
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[557] = {
		readable = "Equipment Mods",
		text = {
			en = "Equipment Mods",
		},
	},
	[559] = {
		readable = "Chest",
		icon = 132635,
		text = {
			en = "Chest",
			ko = "가슴",
		},
	},
	[560] = {
		readable = "Gauntlets",
		icon = 132938,
		text = {
			en = "Gauntlets",
			ko = "손",
		},
	},
	[561] = {
		readable = "Bracers",
		icon = 132607,
		text = {
			en = "Bracers",
			ko = "손목",
		},
	},
	[562] = {
		readable = "Belts",
		icon = 132513,
		text = {
			en = "Belts",
			ko = "허리",
		},
	},
	[563] = {
		readable = "Legs",
		icon = 134584,
		text = {
			en = "Legs",
			ko = "다리",
		},
	},
	[564] = {
		readable = "Boots",
		icon = 132539,
		text = {
			en = "Boots",
			ko = "발",
		},
	},
	[565] = {
		readable = "Shields",
		icon = 134952,
		text = {
			en = "Shields",
			ko = "방패",
		},
	},
	[566] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = "Weapons",
			ko = "무기",
		},
	},
	[567] = {
		readable = "Skeleton Keys",
		icon = 134245,
		text = {
			en = "Skeleton Keys",
			ko = "해골 열쇠",
		},
	},
	[569] = {
		readable = "Cataclysm Plans",
		text = {
			en = "Cataclysm Plans",
		},
	},
	[570] = {
		readable = "Armor",
		text = {
			en = "Armor",
		},
	},
	[571] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = "Weapons",
			ko = "무기",
		},
	},
	[572] = {
		readable = "Materials",
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[573] = {
		readable = "Shields",
		icon = 134952,
		text = {
			en = "Shields",
			ko = "방패",
		},
	},
	[574] = {
		readable = "Equipment Mods",
		text = {
			en = "Equipment Mods",
		},
	},
	[575] = {
		readable = "Skeleton Keys",
		icon = 134245,
		text = {
			en = "Skeleton Keys",
			ko = "해골 열쇠",
		},
	},
	[577] = {
		readable = "Northrend Plans",
		text = {
			en = "Northrend Plans",
		},
	},
	[578] = {
		readable = "Equipment Mods",
		text = {
			en = "Equipment Mods",
		},
	},
	[579] = {
		readable = "Armor",
		text = {
			en = "Armor",
		},
	},
	[580] = {
		readable = "Shields",
		icon = 134952,
		text = {
			en = "Shields",
			ko = "방패",
		},
	},
	[581] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = "Weapons",
			ko = "무기",
		},
	},
	[582] = {
		readable = "Skeleton Keys",
		icon = 134245,
		text = {
			en = "Skeleton Keys",
			ko = "해골 열쇠",
		},
	},
	[584] = {
		readable = "Outland Plans",
		text = {
			en = "Outland Plans",
		},
	},
	[585] = {
		readable = "Equipment Mods",
		text = {
			en = "Equipment Mods",
		},
	},
	[586] = {
		readable = "Armor",
		text = {
			en = "Armor",
		},
	},
	[588] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = "Weapons",
			ko = "무기",
		},
	},
	[590] = {
		readable = "Blackmithing Plans",
		text = {
			en = "Blackmithing Plans",
		},
	},
	[592] = {
		readable = "Zandalari Alchemy",
		text = {
			en = "Zandalari Alchemy",
		},
	},
	[596] = {
		readable = "Alchemy of Pandaria",
		text = {
			en = "Alchemy of Pandaria",
		},
	},
	[598] = {
		readable = "Alchemy of the Cataclysm",
		text = {
			en = "Alchemy of the Cataclysm",
		},
	},
	[600] = {
		readable = "Alchemy of Northrend",
		text = {
			en = "Alchemy of Northrend",
		},
	},
	[602] = {
		readable = "Alchemy of Outland",
		text = {
			en = "Alchemy of Outland",
		},
	},
	[604] = {
		readable = "Alchemy",
		text = {
			en = "Alchemy",
		},
	},
	[605] = {
		readable = "Combat Potions",
		text = {
			en = "Combat Potions",
			ko = "전투 물약",
		},
	},
	[606] = {
		readable = "Utility Potions",
		text = {
			en = "Utility Potions",
			ko = "유틸리티 물약",
		},
	},
	[607] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			ko = "영약",
		},
	},
	[608] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			ko = "변환식",
		},
	},
	[609] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			ko = "장비",
		},
	},
	[610] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
		},
	},
	[611] = {
		readable = "Potions",
		icon = 134831,
		text = {
			en = "Potions",
			ko = "물약",
		},
	},
	[612] = {
		readable = "Elixirs",
		icon = 134836,
		text = {
			en = "Elixirs",
			ko = "비약",
		},
	},
	[613] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			ko = "영약",
		},
	},
	[614] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			ko = "변환식",
		},
	},
	[615] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			ko = "장비",
		},
	},
	[616] = {
		readable = "Oils",
		icon = 134723,
		text = {
			en = "Oils",
			ko = "오일",
		},
	},
	[617] = {
		readable = "Cauldrons",
		text = {
			en = "Cauldrons",
		},
	},
	[618] = {
		readable = "Potions",
		icon = 134831,
		text = {
			en = "Potions",
			ko = "물약",
		},
	},
	[619] = {
		readable = "Elixirs",
		icon = 134836,
		text = {
			en = "Elixirs",
			ko = "비약",
		},
	},
	[620] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			ko = "영약",
		},
	},
	[621] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			ko = "변환식",
		},
	},
	[622] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			ko = "장비",
		},
	},
	[623] = {
		readable = "Oils",
		icon = 134723,
		text = {
			en = "Oils",
			ko = "오일",
		},
	},
	[624] = {
		readable = "Mounts",
		icon = 133236,
		text = {
			en = "Mounts",
		},
	},
	[625] = {
		readable = "Research",
		icon = 134331,
		text = {
			en = "Research",
		},
	},
	[626] = {
		readable = "Potions",
		icon = 134831,
		text = {
			en = "Potions",
			ko = "물약",
		},
	},
	[627] = {
		readable = "Elixirs",
		icon = 134836,
		text = {
			en = "Elixirs",
			ko = "비약",
		},
	},
	[628] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			ko = "영약",
		},
	},
	[629] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			ko = "변환식",
		},
	},
	[630] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			ko = "장비",
		},
	},
	[631] = {
		readable = "Oils",
		icon = 134723,
		text = {
			en = "Oils",
			ko = "오일",
		},
	},
	[632] = {
		readable = "Cauldrons",
		text = {
			en = "Cauldrons",
		},
	},
	[633] = {
		readable = "Potions",
		icon = 134831,
		text = {
			en = "Potions",
			ko = "물약",
		},
	},
	[634] = {
		readable = "Elixirs",
		icon = 134836,
		text = {
			en = "Elixirs",
			ko = "비약",
		},
	},
	[635] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			ko = "영약",
		},
	},
	[636] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			ko = "변환식",
		},
	},
	[637] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			ko = "장비",
		},
	},
	[638] = {
		readable = "Potions",
		icon = 134831,
		text = {
			en = "Potions",
			ko = "물약",
		},
	},
	[639] = {
		readable = "Elixirs",
		icon = 134836,
		text = {
			en = "Elixirs",
			ko = "비약",
		},
	},
	[640] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			ko = "영약",
		},
	},
	[641] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			ko = "변환식",
		},
	},
	[642] = {
		readable = "Trinkets",
		icon = 134333,
		text = {
			en = "Trinkets",
			ko = "장비",
		},
	},
	[643] = {
		readable = "Oils",
		icon = 132799,
		text = {
			en = "Oils",
			ko = "오일",
		},
	},
	[644] = {
		readable = "Materials",
		icon = 132621,
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[645] = {
		readable = "Special",
		text = {
			en = "Special",
		},
	},
	[647] = {
		readable = "Zandalari Enchanting",
		text = {
			en = "Zandalari Enchanting",
		},
	},
	[650] = {
		readable = "Glove Enchantments",
		icon = 132938,
		text = {
			en = "Glove Enchantments",
			ko = "장갑 마법부여",
		},
	},
	[651] = {
		readable = "Ring Enchantments",
		icon = 133397,
		text = {
			en = "Ring Enchantments",
			ko = "손가락 마법부여",
		},
	},
	[652] = {
		readable = "Weapon Enchantments",
		icon = 135792,
		text = {
			en = "Weapon Enchantments",
			ko = "무기 마법부여",
		},
	},
	[653] = {
		readable = "Illusions",
		icon = 237174,
		text = {
			en = "Illusions",
		},
	},
	[654] = {
		readable = "Reagents",
		icon = 463518,
		text = {
			en = "Reagents",
			ko = "재료",
		},
	},
	[656] = {
		readable = "Pandaria Enchanting",
		text = {
			en = "Pandaria Enchanting",
		},
	},
	[657] = {
		readable = "Armor Enchantments",
		text = {
			en = "Armor Enchantments",
		},
	},
	[658] = {
		readable = "Weapon Enchantments",
		icon = 135792,
		text = {
			en = "Weapon Enchantments",
			ko = "무기 마법부여",
		},
	},
	[659] = {
		readable = "Shield and Off-Hand Enchantments",
		icon = 134952,
		text = {
			en = "Shield and Off-Hand Enchantments",
		},
	},
	[661] = {
		readable = "Cataclysm Enchanting",
		text = {
			en = "Cataclysm Enchanting",
		},
	},
	[663] = {
		readable = "Northrend Enchanting",
		text = {
			en = "Northrend Enchanting",
		},
	},
	[665] = {
		readable = "Outland Enchanting",
		text = {
			en = "Outland Enchanting",
		},
	},
	[667] = {
		readable = "Enchanting",
		text = {
			en = "Enchanting",
		},
	},
	[668] = {
		readable = "Armor Enchantments",
		text = {
			en = "Armor Enchantments",
		},
	},
	[669] = {
		readable = "Weapon Enchantments",
		icon = 135792,
		text = {
			en = "Weapon Enchantments",
			ko = "무기 마법부여",
		},
	},
	[670] = {
		readable = "Shield and Off-Hand Enchantments",
		icon = 134952,
		text = {
			en = "Shield and Off-Hand Enchantments",
		},
	},
	[671] = {
		readable = "Pets",
		text = {
			en = "Pets",
		},
	},
	[672] = {
		readable = "Reagents",
		icon = 237013,
		text = {
			en = "Reagents",
			ko = "재료",
		},
	},
	[673] = {
		readable = "Boot Enchantments",
		icon = 132535,
		text = {
			en = "Boot Enchantments",
			ko = "장화 마법부여",
		},
	},
	[674] = {
		readable = "Glove Enchantments",
		icon = 132938,
		text = {
			en = "Glove Enchantments",
			ko = "장갑 마법부여",
		},
	},
	[675] = {
		readable = "Chest Enchantments",
		icon = 132624,
		text = {
			en = "Chest Enchantments",
			ko = "가슴 마법부여",
		},
	},
	[676] = {
		readable = "Cloak Enchantments",
		icon = 133770,
		text = {
			en = "Cloak Enchantments",
			ko = "망토 마법부여",
		},
	},
	[677] = {
		readable = "Bracer Enchantments",
		icon = 132616,
		text = {
			en = "Bracer Enchantments",
			ko = "손목 마법부여",
		},
	},
	[678] = {
		readable = "Weapon Enchantments",
		icon = 135792,
		text = {
			en = "Weapon Enchantments",
			ko = "무기 마법부여",
		},
	},
	[679] = {
		readable = "Shield Enchantments",
		icon = 134951,
		text = {
			en = "Shield Enchantments",
			ko = "방패 마법부여",
		},
	},
	[680] = {
		readable = "Reagents",
		icon = 132881,
		text = {
			en = "Reagents",
			ko = "재료",
		},
	},
	[681] = {
		readable = "Boot Enchantments",
		icon = 132535,
		text = {
			en = "Boot Enchantments",
			ko = "장화 마법부여",
		},
	},
	[682] = {
		readable = "Bracer Enchantments",
		icon = 132616,
		text = {
			en = "Bracer Enchantments",
			ko = "손목 마법부여",
		},
	},
	[683] = {
		readable = "Chest Enchantments",
		icon = 132624,
		text = {
			en = "Chest Enchantments",
			ko = "가슴 마법부여",
		},
	},
	[684] = {
		readable = "Cloak Enchantments",
		icon = 133770,
		text = {
			en = "Cloak Enchantments",
			ko = "망토 마법부여",
		},
	},
	[685] = {
		readable = "Glove Enchantments",
		icon = 132938,
		text = {
			en = "Glove Enchantments",
			ko = "장갑 마법부여",
		},
	},
	[686] = {
		readable = "Weapon Enchantments",
		icon = 135792,
		text = {
			en = "Weapon Enchantments",
			ko = "무기 마법부여",
		},
	},
	[687] = {
		readable = "Shield Enchantments",
		icon = 134951,
		text = {
			en = "Shield Enchantments",
			ko = "방패 마법부여",
		},
	},
	[688] = {
		readable = "Oils",
		icon = 134723,
		text = {
			en = "Oils",
			ko = "오일",
		},
	},
	[689] = {
		readable = "Other",
		icon = 132886,
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[690] = {
		readable = "Boot Enchantments",
		icon = 132535,
		text = {
			en = "Boot Enchantments",
			ko = "장화 마법부여",
		},
	},
	[691] = {
		readable = "Bracer Enchantments",
		icon = 132616,
		text = {
			en = "Bracer Enchantments",
			ko = "손목 마법부여",
		},
	},
	[692] = {
		readable = "Chest Enchantments",
		icon = 132624,
		text = {
			en = "Chest Enchantments",
			ko = "가슴 마법부여",
		},
	},
	[693] = {
		readable = "Cloak Enchantments",
		icon = 133770,
		text = {
			en = "Cloak Enchantments",
			ko = "망토 마법부여",
		},
	},
	[694] = {
		readable = "Glove Enchantments",
		icon = 132938,
		text = {
			en = "Glove Enchantments",
			ko = "장갑 마법부여",
		},
	},
	[695] = {
		readable = "Weapon Enchantments",
		icon = 135792,
		text = {
			en = "Weapon Enchantments",
			ko = "무기 마법부여",
		},
	},
	[696] = {
		readable = "Shield Enchantments",
		icon = 134951,
		text = {
			en = "Shield Enchantments",
			ko = "방패 마법부여",
		},
	},
	[697] = {
		readable = "Rods",
		icon = 135138,
		text = {
			en = "Rods",
			ko = "장비",
		},
	},
	[698] = {
		readable = "Wands",
		icon = 135468,
		text = {
			en = "Wands",
			ko = "마법봉",
		},
	},
	[699] = {
		readable = "Oils",
		icon = 134711,
		text = {
			en = "Oils",
			ko = "오일",
		},
	},
	[700] = {
		readable = "Trinkets",
		icon = 134084,
		text = {
			en = "Trinkets",
			ko = "장신구",
		},
	},
	[701] = {
		readable = "Reagents",
		icon = 133229,
		text = {
			en = "Reagents",
			ko = "재료",
		},
	},
	[702] = {
		readable = "Illusions",
		icon = 237174,
		text = {
			en = "Illusions",
		},
	},
	[703] = {
		readable = "Illusions",
		icon = 237174,
		text = {
			en = "Illusions",
		},
	},
	[704] = {
		readable = "Illusions",
		icon = 237174,
		text = {
			en = "Illusions",
		},
	},
	[705] = {
		readable = "Illusions",
		icon = 237174,
		text = {
			en = "Illusions",
		},
	},
	[706] = {
		readable = "Illusions",
		icon = 237174,
		text = {
			en = "Illusions",
		},
	},
	[707] = {
		readable = "Reagents",
		icon = 463517,
		text = {
			en = "Reagents",
			ko = "재료",
		},
	},
	[709] = {
		readable = "Zandalari Engineering",
		text = {
			en = "Zandalari Engineering",
		},
	},
	[713] = {
		readable = "Pandaria Engineering",
		text = {
			en = "Pandaria Engineering",
		},
	},
	[715] = {
		readable = "Cataclysm Engineering",
		text = {
			en = "Cataclysm Engineering",
		},
	},
	[717] = {
		readable = "Northrend Engineering",
		text = {
			en = "Northrend Engineering",
		},
	},
	[719] = {
		readable = "Outland Engineering",
		text = {
			en = "Outland Engineering",
		},
	},
	[721] = {
		readable = "Bombs",
		text = {
			en = "Bombs",
		},
	},
	[722] = {
		readable = "Devices",
		text = {
			en = "Devices",
			ko = "장치",
		},
	},
	[723] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = "Weapons",
			ko = "무기",
		},
	},
	[724] = {
		readable = "Mounts & Pets",
		icon = 133236,
		text = {
			en = "Mounts & Pets",
		},
	},
	[725] = {
		readable = "Fireworks",
		icon = 135815,
		text = {
			en = "Fireworks",
			ko = "폭죽",
		},
	},
	[726] = {
		readable = "Explosives",
		icon = 133711,
		text = {
			en = "Explosives",
			ko = "폭발물",
		},
	},
	[727] = {
		readable = "Fireworks",
		icon = 135815,
		text = {
			en = "Fireworks",
			ko = "폭죽",
		},
	},
	[728] = {
		readable = "Devices",
		text = {
			en = "Devices",
			ko = "장치",
		},
	},
	[729] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			ko = "재료",
		},
	},
	[730] = {
		readable = "Goggles",
		icon = 133023,
		text = {
			en = "Goggles",
			ko = "고글",
		},
	},
	[731] = {
		readable = "Guns",
		icon = 135612,
		text = {
			en = "Guns",
			ko = "총",
		},
	},
	[732] = {
		readable = "Scopes",
		icon = 134442,
		text = {
			en = "Scopes",
			ko = "조준경",
		},
	},
	[733] = {
		readable = "Mounts",
		icon = 133236,
		text = {
			en = "Mounts",
		},
	},
	[734] = {
		readable = "Cogwheels",
		text = {
			en = "Cogwheels",
		},
	},
	[735] = {
		readable = "Tinkers",
		text = {
			en = "Tinkers",
		},
	},
	[736] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			ko = "재료",
		},
	},
	[737] = {
		readable = "Explosives",
		icon = 133711,
		text = {
			en = "Explosives",
			ko = "폭발물",
		},
	},
	[738] = {
		readable = "Goggles",
		icon = 133023,
		text = {
			en = "Goggles",
			ko = "고글",
		},
	},
	[739] = {
		readable = "Devices",
		text = {
			en = "Devices",
			ko = "장치",
		},
	},
	[740] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = "Weapons",
			ko = "무기",
		},
	},
	[741] = {
		readable = "Scopes",
		icon = 134442,
		text = {
			en = "Scopes",
			ko = "조준경",
		},
	},
	[742] = {
		readable = "Tinkers",
		text = {
			en = "Tinkers",
		},
	},
	[743] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			ko = "재료",
		},
	},
	[744] = {
		readable = "Explosives",
		icon = 133711,
		text = {
			en = "Explosives",
			ko = "폭발물",
		},
	},
	[745] = {
		readable = "Goggles",
		icon = 133023,
		text = {
			en = "Goggles",
			ko = "고글",
		},
	},
	[746] = {
		readable = "Devices",
		text = {
			en = "Devices",
			ko = "장치",
		},
	},
	[747] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = "Weapons",
			ko = "무기",
		},
	},
	[748] = {
		readable = "Scopes",
		icon = 134442,
		text = {
			en = "Scopes",
			ko = "조준경",
		},
	},
	[749] = {
		readable = "Mounts",
		icon = 133236,
		text = {
			en = "Mounts",
		},
	},
	[750] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			ko = "재료",
		},
	},
	[751] = {
		readable = "Explosives",
		icon = 133711,
		text = {
			en = "Explosives",
			ko = "폭발물",
		},
	},
	[752] = {
		readable = "Goggles",
		icon = 133023,
		text = {
			en = "Goggles",
			ko = "고글",
		},
	},
	[753] = {
		readable = "Devices",
		text = {
			en = "Devices",
			ko = "장치",
		},
	},
	[754] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = "Weapons",
			ko = "무기",
		},
	},
	[755] = {
		readable = "Scopes",
		icon = 134442,
		text = {
			en = "Scopes",
			ko = "조준경",
		},
	},
	[756] = {
		readable = "Mounts",
		icon = 133236,
		text = {
			en = "Mounts",
		},
	},
	[757] = {
		readable = "Fireworks",
		icon = 135815,
		text = {
			en = "Fireworks",
			ko = "폭죽",
		},
	},
	[759] = {
		readable = "Zandalari Inscription",
		text = {
			en = "Zandalari Inscription",
		},
	},
	[763] = {
		readable = "Pandaria Inscription",
		text = {
			en = "Pandaria Inscription",
		},
	},
	[765] = {
		readable = "Cataclysm Inscription",
		text = {
			en = "Cataclysm Inscription",
		},
	},
	[767] = {
		readable = "Northrend Inscription",
		text = {
			en = "Northrend Inscription",
		},
	},
	[769] = {
		readable = "Outland Inscription",
		text = {
			en = "Outland Inscription",
		},
	},
	[771] = {
		readable = "Books & Scrolls",
		icon = 134939,
		text = {
			en = "Books & Scrolls",
		},
	},
	[772] = {
		readable = "Contracts",
		text = {
			en = "Contracts",
		},
	},
	[773] = {
		readable = "Trinkets",
		icon = 134495,
		text = {
			en = "Trinkets",
			ko = "장비",
		},
	},
	[774] = {
		readable = "Off-Hands",
		text = {
			en = "Off-Hands",
		},
	},
	[775] = {
		readable = "Mass Milling",
		text = {
			en = "Mass Milling",
		},
	},
	[776] = {
		readable = "Vantus Runes",
		icon = 1392953,
		text = {
			en = "Vantus Runes",
		},
	},
	[777] = {
		readable = "Glyphs",
		text = {
			en = "Glyphs",
		},
	},
	[778] = {
		readable = "Staves & Off-Hands",
		text = {
			en = "Staves & Off-Hands",
		},
	},
	[779] = {
		readable = "Inks",
		icon = 237070,
		text = {
			en = "Inks",
		},
	},
	[780] = {
		readable = "Cards",
		text = {
			en = "Cards",
		},
	},
	[781] = {
		readable = "Scrolls & Research",
		icon = 134331,
		text = {
			en = "Scrolls & Research",
		},
	},
	[782] = {
		readable = "Quest",
		text = {
			en = "Quest",
		},
	},
	[783] = {
		readable = "Toys & Pets",
		text = {
			en = "Toys & Pets",
		},
	},
	[784] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			ko = "장비",
		},
	},
	[785] = {
		readable = "Inks",
		icon = 237070,
		text = {
			en = "Inks",
		},
	},
	[786] = {
		readable = "Glyphs",
		text = {
			en = "Glyphs",
		},
	},
	[787] = {
		readable = "Scrolls & Research",
		icon = 134331,
		text = {
			en = "Scrolls & Research",
		},
	},
	[788] = {
		readable = "Cards",
		text = {
			en = "Cards",
		},
	},
	[789] = {
		readable = "Shoulder Inscription",
		text = {
			en = "Shoulder Inscription",
			ko = "어깨 마법부여",
		},
	},
	[790] = {
		readable = "Weapons & Off-Hands",
		icon = 135792,
		text = {
			en = "Weapons & Off-Hands",
			ko = "무기",
		},
	},
	[791] = {
		readable = "Quest",
		text = {
			en = "Quest",
		},
	},
	[792] = {
		readable = "Toys",
		text = {
			en = "Toys",
		},
	},
	[793] = {
		readable = "Inks",
		icon = 237070,
		text = {
			en = "Inks",
		},
	},
	[794] = {
		readable = "Glyphs",
		text = {
			en = "Glyphs",
		},
	},
	[795] = {
		readable = "Scrolls & Research",
		icon = 134331,
		text = {
			en = "Scrolls & Research",
		},
	},
	[796] = {
		readable = "Cards",
		text = {
			en = "Cards",
		},
	},
	[797] = {
		readable = "Off-Hands",
		text = {
			en = "Off-Hands",
		},
	},
	[798] = {
		readable = "Shoulder Inscription",
		text = {
			en = "Shoulder Inscription",
			ko = "어깨 마법부여",
		},
	},
	[799] = {
		readable = "Inks",
		icon = 237070,
		text = {
			en = "Inks",
		},
	},
	[800] = {
		readable = "Glyphs",
		text = {
			en = "Glyphs",
		},
	},
	[801] = {
		readable = "Cards",
		text = {
			en = "Cards",
		},
	},
	[802] = {
		readable = "Scrolls & Research",
		icon = 134331,
		text = {
			en = "Scrolls & Research",
		},
	},
	[803] = {
		readable = "Off-Hands",
		text = {
			en = "Off-Hands",
		},
	},
	[805] = {
		readable = "Zandalari Designs",
		text = {
			en = "Zandalari Designs",
		},
	},
	[809] = {
		readable = "Pandaria Designs",
		text = {
			en = "Pandaria Designs",
		},
	},
	[811] = {
		readable = "Cataclysm Designs",
		text = {
			en = "Cataclysm Designs",
		},
	},
	[813] = {
		readable = "Northrend Designs",
		text = {
			en = "Northrend Designs",
		},
	},
	[815] = {
		readable = "Outland Designs",
		text = {
			en = "Outland Designs",
		},
	},
	[817] = {
		readable = "Gems",
		text = {
			en = "Gems",
		},
	},
	[818] = {
		readable = "Mass Prospecting",
		text = {
			en = "Mass Prospecting",
		},
	},
	[819] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			ko = "손가락",
		},
	},
	[820] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = "Weapons",
			ko = "무기",
		},
	},
	[821] = {
		readable = "Blue Gems",
		icon = 133244,
		text = {
			en = "Blue Gems",
		},
	},
	[822] = {
		readable = "Green Gems",
		icon = 133263,
		text = {
			en = "Green Gems",
		},
	},
	[823] = {
		readable = "Orange Gems",
		icon = 133260,
		text = {
			en = "Orange Gems",
		},
	},
	[824] = {
		readable = "Purple Gems",
		icon = 133265,
		text = {
			en = "Purple Gems",
		},
	},
	[825] = {
		readable = "Red Gems",
		icon = 133238,
		text = {
			en = "Red Gems",
		},
	},
	[827] = {
		readable = "Meta Gems",
		icon = 134098,
		text = {
			en = "Meta Gems",
		},
	},
	[828] = {
		readable = "Necklaces",
		icon = 133294,
		text = {
			en = "Necklaces",
			ko = "목",
		},
	},
	[829] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			ko = "손가락",
		},
	},
	[830] = {
		readable = "Mounts",
		icon = 133236,
		text = {
			en = "Mounts",
		},
	},
	[831] = {
		readable = "Research",
		icon = 134331,
		text = {
			en = "Research",
		},
	},
	[832] = {
		readable = "Toys & Pets",
		icon = 133247,
		text = {
			en = "Toys & Pets",
		},
	},
	[833] = {
		readable = "Yellow Gems",
		icon = 133248,
		text = {
			en = "Yellow Gems",
		},
	},
	[834] = {
		readable = "Blue Gems",
		icon = 133244,
		text = {
			en = "Blue Gems",
		},
	},
	[835] = {
		readable = "Green Gems",
		icon = 133263,
		text = {
			en = "Green Gems",
		},
	},
	[836] = {
		readable = "Orange Gems",
		icon = 133260,
		text = {
			en = "Orange Gems",
		},
	},
	[837] = {
		readable = "Purple Gems",
		icon = 133265,
		text = {
			en = "Purple Gems",
		},
	},
	[838] = {
		readable = "Red Gems",
		icon = 133238,
		text = {
			en = "Red Gems",
		},
	},
	[839] = {
		readable = "Yellow Gems",
		icon = 133248,
		text = {
			en = "Yellow Gems",
		},
	},
	[840] = {
		readable = "Meta Gems",
		icon = 134098,
		text = {
			en = "Meta Gems",
		},
	},
	[841] = {
		readable = "Necklaces",
		icon = 133294,
		text = {
			en = "Necklaces",
			ko = "목",
		},
	},
	[842] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			ko = "손가락",
		},
	},
	[843] = {
		readable = "Crowns",
		icon = 132767,
		text = {
			en = "Crowns",
			ko = "머리",
		},
	},
	[844] = {
		readable = "Fist Weapons",
		icon = 135599,
		text = {
			en = "Fist Weapons",
		},
	},
	[845] = {
		readable = "Toys & Prisms",
		icon = 134128,
		text = {
			en = "Toys & Prisms",
		},
	},
	[846] = {
		readable = "Blue Gems",
		icon = 133244,
		text = {
			en = "Blue Gems",
		},
	},
	[847] = {
		readable = "Green Gems",
		icon = 133263,
		text = {
			en = "Green Gems",
		},
	},
	[848] = {
		readable = "Orange Gems",
		icon = 133260,
		text = {
			en = "Orange Gems",
		},
	},
	[849] = {
		readable = "Purple Gems",
		icon = 133265,
		text = {
			en = "Purple Gems",
		},
	},
	[850] = {
		readable = "Red Gems",
		icon = 133238,
		text = {
			en = "Red Gems",
		},
	},
	[851] = {
		readable = "Yellow Gems",
		icon = 133248,
		text = {
			en = "Yellow Gems",
		},
	},
	[852] = {
		readable = "Meta Gems",
		icon = 134098,
		text = {
			en = "Meta Gems",
		},
	},
	[853] = {
		readable = "Necklaces",
		icon = 133294,
		text = {
			en = "Necklaces",
			ko = "목",
		},
	},
	[854] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			ko = "손가락",
		},
	},
	[855] = {
		readable = "Prismatic Gems",
		icon = 237370,
		text = {
			en = "Prismatic Gems",
		},
	},
	[856] = {
		readable = "Pets and Projects",
		icon = 134095,
		text = {
			en = "Pets and Projects",
		},
	},
	[857] = {
		readable = "Blue Gems",
		icon = 133244,
		text = {
			en = "Blue Gems",
		},
	},
	[858] = {
		readable = "Green Gems",
		icon = 133263,
		text = {
			en = "Green Gems",
		},
	},
	[859] = {
		readable = "Orange Gems",
		icon = 133260,
		text = {
			en = "Orange Gems",
		},
	},
	[860] = {
		readable = "Purple Gems",
		icon = 133265,
		text = {
			en = "Purple Gems",
		},
	},
	[861] = {
		readable = "Red Gems",
		icon = 133238,
		text = {
			en = "Red Gems",
		},
	},
	[862] = {
		readable = "Yellow Gems",
		icon = 133248,
		text = {
			en = "Yellow Gems",
		},
	},
	[863] = {
		readable = "Meta Gems",
		icon = 134098,
		text = {
			en = "Meta Gems",
		},
	},
	[864] = {
		readable = "Necklaces",
		icon = 133294,
		text = {
			en = "Necklaces",
			ko = "목",
		},
	},
	[865] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			ko = "손가락",
		},
	},
	[866] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			ko = "장비",
		},
	},
	[867] = {
		readable = "Prisms & Statues",
		icon = 134096,
		text = {
			en = "Prisms & Statues",
		},
	},
	[868] = {
		readable = "Reagents",
		icon = 135732,
		text = {
			en = "Reagents",
			ko = "재료",
		},
	},
	[869] = {
		readable = "Crowns",
		icon = 132767,
		text = {
			en = "Crowns",
			ko = "머리",
		},
	},
	[871] = {
		readable = "Zandalari Patterns",
		text = {
			en = "Zandalari Patterns",
		},
	},
	[876] = {
		readable = "Pandaria Patterns",
		text = {
			en = "Pandaria Patterns",
		},
	},
	[878] = {
		readable = "Cataclysm Patterns",
		text = {
			en = "Cataclysm Patterns",
		},
	},
	[880] = {
		readable = "Northrend Patterns",
		text = {
			en = "Northrend Patterns",
		},
	},
	[882] = {
		readable = "Outland Patterns",
		text = {
			en = "Outland Patterns",
		},
	},
	[883] = {
		readable = "Leather Armor",
		text = {
			en = "Leather Armor",
		},
	},
	[884] = {
		readable = "Mail Armor",
		text = {
			en = "Mail Armor",
		},
	},
	[885] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = "Weapons",
			ko = "무기",
		},
	},
	[886] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[887] = {
		readable = "Materials",
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[888] = {
		readable = "Embossments",
		text = {
			en = "Embossments",
		},
	},
	[889] = {
		readable = "Armor Kits",
		icon = 133611,
		text = {
			en = "Armor Kits",
			ko = "방어구 키트",
		},
	},
	[890] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			ko = "가방",
		},
	},
	[891] = {
		readable = "Helms",
		icon = 133076,
		text = {
			en = "Helms",
			ko = "머리",
		},
	},
	[892] = {
		readable = "Shoulders",
		icon = 135032,
		text = {
			en = "Shoulders",
			ko = "어깨",
		},
	},
	[893] = {
		readable = "Chest",
		icon = 132635,
		text = {
			en = "Chest",
			ko = "가슴",
		},
	},
	[894] = {
		readable = "Bracers",
		icon = 132607,
		text = {
			en = "Bracers",
			ko = "손목",
		},
	},
	[895] = {
		readable = "Gloves",
		icon = 132939,
		text = {
			en = "Gloves",
			ko = "손",
		},
	},
	[896] = {
		readable = "Belts",
		icon = 132513,
		text = {
			en = "Belts",
			ko = "허리",
		},
	},
	[897] = {
		readable = "Pants",
		icon = 134592,
		text = {
			en = "Pants",
			ko = "다리",
		},
	},
	[898] = {
		readable = "Boots",
		icon = 132539,
		text = {
			en = "Boots",
			ko = "발",
		},
	},
	[899] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			ko = "등",
		},
	},
	[900] = {
		readable = "Drums",
		icon = 133841,
		text = {
			en = "Drums",
		},
	},
	[901] = {
		readable = "Research",
		icon = 134331,
		text = {
			en = "Research",
		},
	},
	[902] = {
		readable = "Materials",
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[903] = {
		readable = "Armor Kits",
		icon = 133611,
		text = {
			en = "Armor Kits",
			ko = "방어구 키트",
		},
	},
	[904] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			ko = "가방",
		},
	},
	[905] = {
		readable = "Helms",
		icon = 133076,
		text = {
			en = "Helms",
			ko = "머리",
		},
	},
	[906] = {
		readable = "Shoulders",
		icon = 135032,
		text = {
			en = "Shoulders",
			ko = "어깨",
		},
	},
	[907] = {
		readable = "Chest",
		icon = 132635,
		text = {
			en = "Chest",
			ko = "가슴",
		},
	},
	[908] = {
		readable = "Bracers",
		icon = 132607,
		text = {
			en = "Bracers",
			ko = "손목",
		},
	},
	[909] = {
		readable = "Gloves",
		icon = 132939,
		text = {
			en = "Gloves",
			ko = "손",
		},
	},
	[910] = {
		readable = "Belts",
		icon = 132513,
		text = {
			en = "Belts",
			ko = "허리",
		},
	},
	[911] = {
		readable = "Pants",
		icon = 134592,
		text = {
			en = "Pants",
			ko = "다리",
		},
	},
	[912] = {
		readable = "Boots",
		icon = 132539,
		text = {
			en = "Boots",
			ko = "발",
		},
	},
	[913] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			ko = "등",
		},
	},
	[914] = {
		readable = "Materials",
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[915] = {
		readable = "Armor Kits",
		icon = 133611,
		text = {
			en = "Armor Kits",
			ko = "방어구 키트",
		},
	},
	[916] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			ko = "가방",
		},
	},
	[917] = {
		readable = "Helms",
		icon = 133076,
		text = {
			en = "Helms",
			ko = "머리",
		},
	},
	[918] = {
		readable = "Shoulders",
		icon = 135032,
		text = {
			en = "Shoulders",
			ko = "어깨",
		},
	},
	[919] = {
		readable = "Chests",
		text = {
			en = "Chests",
			ko = "가슴",
		},
	},
	[920] = {
		readable = "Bracers",
		icon = 132607,
		text = {
			en = "Bracers",
			ko = "손목",
		},
	},
	[921] = {
		readable = "Gloves",
		icon = 132939,
		text = {
			en = "Gloves",
			ko = "손",
		},
	},
	[922] = {
		readable = "Belts",
		icon = 132513,
		text = {
			en = "Belts",
			ko = "허리",
		},
	},
	[923] = {
		readable = "Pants",
		icon = 134592,
		text = {
			en = "Pants",
			ko = "다리",
		},
	},
	[924] = {
		readable = "Boots",
		icon = 132539,
		text = {
			en = "Boots",
			ko = "발",
		},
	},
	[925] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			ko = "등",
		},
	},
	[926] = {
		readable = "Drums",
		icon = 133841,
		text = {
			en = "Drums",
		},
	},
	[927] = {
		readable = "Materials",
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[928] = {
		readable = "Armor Kits",
		icon = 133611,
		text = {
			en = "Armor Kits",
			ko = "방어구 키트",
		},
	},
	[929] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			ko = "가방",
		},
	},
	[930] = {
		readable = "Helms",
		icon = 133076,
		text = {
			en = "Helms",
			ko = "머리",
		},
	},
	[931] = {
		readable = "Shoulders",
		icon = 135032,
		text = {
			en = "Shoulders",
			ko = "어깨",
		},
	},
	[932] = {
		readable = "Chest",
		icon = 132635,
		text = {
			en = "Chest",
			ko = "가슴",
		},
	},
	[933] = {
		readable = "Bracers",
		icon = 132607,
		text = {
			en = "Bracers",
			ko = "손목",
		},
	},
	[934] = {
		readable = "Gloves",
		icon = 132939,
		text = {
			en = "Gloves",
			ko = "손",
		},
	},
	[935] = {
		readable = "Belts",
		icon = 132513,
		text = {
			en = "Belts",
			ko = "허리",
		},
	},
	[936] = {
		readable = "Pants",
		icon = 134592,
		text = {
			en = "Pants",
			ko = "다리",
		},
	},
	[937] = {
		readable = "Boots",
		icon = 132539,
		text = {
			en = "Boots",
			ko = "발",
		},
	},
	[938] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			ko = "등",
		},
	},
	[939] = {
		readable = "Special",
		text = {
			en = "Special",
		},
	},
	[940] = {
		readable = "Drums",
		icon = 133841,
		text = {
			en = "Drums",
		},
	},
	[942] = {
		readable = "Zandalari Patterns",
		text = {
			en = "Zandalari Patterns",
		},
	},
	[943] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			ko = "가방",
		},
	},
	[944] = {
		readable = "Armor",
		text = {
			en = "Armor",
		},
	},
	[945] = {
		readable = "Battle Flags",
		text = {
			en = "Battle Flags",
		},
	},
	[946] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[950] = {
		readable = "Pandaria Patterns",
		text = {
			en = "Pandaria Patterns",
		},
	},
	[952] = {
		readable = "Cataclysm Patterns",
		text = {
			en = "Cataclysm Patterns",
		},
	},
	[954] = {
		readable = "Northrend Patterns",
		text = {
			en = "Northrend Patterns",
		},
	},
	[956] = {
		readable = "Outland Patterns",
		text = {
			en = "Outland Patterns",
		},
	},
	[958] = {
		readable = "Materials",
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[959] = {
		readable = "Embroidery",
		text = {
			en = "Embroidery",
		},
	},
	[960] = {
		readable = "Spellthreads",
		text = {
			en = "Spellthreads",
		},
	},
	[961] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			ko = "가방",
		},
	},
	[962] = {
		readable = "Hats & Hoods",
		icon = 133133,
		text = {
			en = "Hats & Hoods",
			ko = "머리",
		},
	},
	[963] = {
		readable = "Shoulders",
		icon = 135033,
		text = {
			en = "Shoulders",
			ko = "어깨",
		},
	},
	[964] = {
		readable = "Robes & Tunics",
		icon = 132659,
		text = {
			en = "Robes & Tunics",
			ko = "가슴",
		},
	},
	[965] = {
		readable = "Bracers",
		icon = 132616,
		text = {
			en = "Bracers",
			ko = "손목",
		},
	},
	[966] = {
		readable = "Belts",
		icon = 132516,
		text = {
			en = "Belts",
			ko = "허리",
		},
	},
	[967] = {
		readable = "Gloves",
		icon = 132940,
		text = {
			en = "Gloves",
			ko = "손",
		},
	},
	[968] = {
		readable = "Pants",
		icon = 134586,
		text = {
			en = "Pants",
			ko = "다리",
		},
	},
	[969] = {
		readable = "Boots",
		icon = 132535,
		text = {
			en = "Boots",
			ko = "발",
		},
	},
	[970] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			ko = "등",
		},
	},
	[972] = {
		readable = "Materials",
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[973] = {
		readable = "Spellthreads",
		text = {
			en = "Spellthreads",
		},
	},
	[974] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			ko = "가방",
		},
	},
	[975] = {
		readable = "Hats & Hoods",
		icon = 133133,
		text = {
			en = "Hats & Hoods",
			ko = "머리",
		},
	},
	[976] = {
		readable = "Shoulders",
		icon = 135033,
		text = {
			en = "Shoulders",
			ko = "어깨",
		},
	},
	[977] = {
		readable = "Robes & Tunics",
		icon = 132659,
		text = {
			en = "Robes & Tunics",
			ko = "가슴",
		},
	},
	[978] = {
		readable = "Bracers",
		icon = 132616,
		text = {
			en = "Bracers",
			ko = "손목",
		},
	},
	[979] = {
		readable = "Belts",
		icon = 132516,
		text = {
			en = "Belts",
			ko = "허리",
		},
	},
	[980] = {
		readable = "Gloves",
		icon = 132940,
		text = {
			en = "Gloves",
			ko = "손",
		},
	},
	[981] = {
		readable = "Pants",
		icon = 134586,
		text = {
			en = "Pants",
			ko = "다리",
		},
	},
	[982] = {
		readable = "Boots",
		icon = 132535,
		text = {
			en = "Boots",
			ko = "발",
		},
	},
	[983] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			ko = "등",
		},
	},
	[984] = {
		readable = "Nets",
		text = {
			en = "Nets",
		},
	},
	[985] = {
		readable = "Materials",
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[986] = {
		readable = "Spellthread",
		text = {
			en = "Spellthread",
		},
	},
	[987] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			ko = "가방",
		},
	},
	[988] = {
		readable = "Hats & Hoods",
		icon = 133133,
		text = {
			en = "Hats & Hoods",
			ko = "머리",
		},
	},
	[989] = {
		readable = "Shoulders",
		icon = 135033,
		text = {
			en = "Shoulders",
			ko = "어깨",
		},
	},
	[990] = {
		readable = "Robes & Tunics",
		icon = 132659,
		text = {
			en = "Robes & Tunics",
			ko = "가슴",
		},
	},
	[991] = {
		readable = "Bracers",
		icon = 132616,
		text = {
			en = "Bracers",
			ko = "손목",
		},
	},
	[992] = {
		readable = "Belts",
		icon = 132516,
		text = {
			en = "Belts",
			ko = "허리",
		},
	},
	[993] = {
		readable = "Gloves",
		icon = 132940,
		text = {
			en = "Gloves",
			ko = "손",
		},
	},
	[994] = {
		readable = "Pants",
		icon = 134586,
		text = {
			en = "Pants",
			ko = "다리",
		},
	},
	[995] = {
		readable = "Boots",
		icon = 132535,
		text = {
			en = "Boots",
			ko = "발",
		},
	},
	[996] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			ko = "등",
		},
	},
	[997] = {
		readable = "Shirts",
		text = {
			en = "Shirts",
			ko = "속옷",
		},
	},
	[998] = {
		readable = "Mounts",
		icon = 133236,
		text = {
			en = "Mounts",
		},
	},
	[999] = {
		readable = "Nets",
		text = {
			en = "Nets",
		},
	},
	[1000] = {
		readable = "Materials",
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[1001] = {
		readable = "Spellthreads",
		text = {
			en = "Spellthreads",
		},
	},
	[1002] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			ko = "가방",
		},
	},
	[1003] = {
		readable = "Hats & Hoods",
		icon = 133133,
		text = {
			en = "Hats & Hoods",
			ko = "머리",
		},
	},
	[1004] = {
		readable = "Shoulders",
		icon = 135033,
		text = {
			en = "Shoulders",
			ko = "어깨",
		},
	},
	[1005] = {
		readable = "Robes & Tunics",
		icon = 132659,
		text = {
			en = "Robes & Tunics",
			ko = "가슴",
		},
	},
	[1006] = {
		readable = "Bracers",
		icon = 132616,
		text = {
			en = "Bracers",
			ko = "손목",
		},
	},
	[1007] = {
		readable = "Belts",
		icon = 132516,
		text = {
			en = "Belts",
			ko = "허리",
		},
	},
	[1008] = {
		readable = "Gloves",
		icon = 132940,
		text = {
			en = "Gloves",
			ko = "손",
		},
	},
	[1009] = {
		readable = "Pants",
		icon = 134586,
		text = {
			en = "Pants",
			ko = "다리",
		},
	},
	[1010] = {
		readable = "Boots",
		icon = 132535,
		text = {
			en = "Boots",
			ko = "발",
		},
	},
	[1011] = {
		readable = "Cloaks",
		icon = 133770,
		text = {
			en = "Cloaks",
			ko = "등",
		},
	},
	[1012] = {
		readable = "Nets",
		text = {
			en = "Nets",
		},
	},
	[1013] = {
		readable = "Food of Draenor - Header",
		text = {
			en = "Food of Draenor - Header",
		},
	},
	[1020] = {
		readable = "Everyday Cooking",
		icon = 133968,
		text = {
			en = "Everyday Cooking",
			ko = "일반 요리",
		},
	},
	[1021] = {
		readable = "Delightful Drinks",
		text = {
			en = "Delightful Drinks",
		},
	},
	[1022] = {
		readable = "Lures",
		icon = 970852,
		text = {
			en = "Lures",
			es = "Señuelos",
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
			ko = "일반 요리",
		},
	},
	[1024] = {
		readable = "Everyday Cooking",
		icon = 133968,
		text = {
			en = "Everyday Cooking",
			ko = "일반 요리",
		},
	},
	[1025] = {
		readable = "Everyday Cooking",
		icon = 133968,
		text = {
			en = "Everyday Cooking",
			ko = "일반 요리",
		},
	},
	[1026] = {
		readable = "Inks",
		icon = 237070,
		text = {
			en = "Inks",
		},
	},
	[1027] = {
		readable = "Scopes & Ammo",
		icon = 134442,
		text = {
			en = "Scopes & Ammo",
			ko = "범위 및 탄약",
		},
	},
	[1029] = {
		readable = "Zandalari Herbalism",
		text = {
			en = "Zandalari Herbalism",
		},
	},
	[1030] = {
		readable = "Gathering Techniques",
		text = {
			en = "Gathering Techniques",
		},
	},
	[1032] = {
		readable = "Gathering Techniques",
		text = {
			en = "Gathering Techniques",
		},
	},
	[1034] = {
		readable = "Draenor Herbalism",
		text = {
			en = "Draenor Herbalism",
		},
	},
	[1036] = {
		readable = "Pandaria Herbalism",
		text = {
			en = "Pandaria Herbalism",
		},
	},
	[1038] = {
		readable = "Cataclysm Herbalism",
		text = {
			en = "Cataclysm Herbalism",
		},
	},
	[1040] = {
		readable = "Northrend Herbalism",
		text = {
			en = "Northrend Herbalism",
		},
	},
	[1042] = {
		readable = "Outland Herbalism",
		text = {
			en = "Outland Herbalism",
		},
	},
	[1044] = {
		readable = "Herbalism",
		text = {
			en = "Herbalism",
		},
	},
	[1046] = {
		readable = "Zandalari Skinning",
		text = {
			en = "Zandalari Skinning",
		},
	},
	[1050] = {
		readable = "Draenor Skinning",
		text = {
			en = "Draenor Skinning",
		},
	},
	[1052] = {
		readable = "Pandaria Skinning",
		text = {
			en = "Pandaria Skinning",
		},
	},
	[1054] = {
		readable = "Cataclysm Skinning",
		text = {
			en = "Cataclysm Skinning",
		},
	},
	[1056] = {
		readable = "Northrend Skinning",
		text = {
			en = "Northrend Skinning",
		},
	},
	[1058] = {
		readable = "Outland Skinning",
		text = {
			en = "Outland Skinning",
		},
	},
	[1060] = {
		readable = "Skinning",
		text = {
			en = "Skinning",
		},
	},
	[1061] = {
		readable = "Skinning Techniques",
		text = {
			en = "Skinning Techniques",
		},
	},
	[1062] = {
		readable = "Skinning Techniques",
		text = {
			en = "Skinning Techniques",
		},
	},
	[1065] = {
		readable = "Zandalari Mining",
		text = {
			en = "Zandalari Mining",
		},
	},
	[1068] = {
		readable = "Draenor Mining",
		text = {
			en = "Draenor Mining",
		},
	},
	[1070] = {
		readable = "Pandaria Mining",
		text = {
			en = "Pandaria Mining",
		},
	},
	[1072] = {
		readable = "Cataclysm Mining",
		text = {
			en = "Cataclysm Mining",
		},
	},
	[1074] = {
		readable = "Northrend Mining",
		text = {
			en = "Northrend Mining",
		},
	},
	[1076] = {
		readable = "Outland Mining",
		text = {
			en = "Outland Mining",
		},
	},
	[1078] = {
		readable = "Mining",
		text = {
			en = "Mining",
		},
	},
	[1079] = {
		readable = "Mining Techniques",
		text = {
			en = "Mining Techniques",
		},
	},
	[1080] = {
		readable = "Mining Techniques",
		text = {
			en = "Mining Techniques",
		},
	},
	[1081] = {
		readable = "Smelting",
		text = {
			en = "Smelting",
		},
	},
	[1082] = {
		readable = "Smelting",
		text = {
			en = "Smelting",
		},
	},
	[1083] = {
		readable = "Smelting",
		text = {
			en = "Smelting",
		},
	},
	[1084] = {
		readable = "Smelting",
		text = {
			en = "Smelting",
		},
	},
	[1085] = {
		readable = "Mount Equipment",
		text = {
			en = "Mount Equipment",
		},
	},
	[1086] = {
		readable = "Bandages",
		icon = 133690,
		text = {
			en = "Bandages",
		},
	},
	[1087] = {
		readable = "Cures of Draenor",
		text = {
			en = "Cures of Draenor",
		},
	},
	[1088] = {
		readable = "Cures of the Broken Isles",
		text = {
			en = "Cures of the Broken Isles",
		},
	},
	[1089] = {
		readable = "Bandages",
		icon = 133690,
		text = {
			en = "Bandages",
		},
	},
	[1090] = {
		readable = "Bandages",
		icon = 133690,
		text = {
			en = "Bandages",
		},
	},
	[1091] = {
		readable = "Bandages",
		icon = 133690,
		text = {
			en = "Bandages",
		},
	},
	[1092] = {
		readable = "Bandages",
		icon = 133690,
		text = {
			en = "Bandages",
		},
	},
	[1093] = {
		readable = "Bandages",
		icon = 133690,
		text = {
			en = "Bandages",
		},
	},
	[1096] = {
		readable = "Belt Attachments",
		text = {
			en = "Belt Attachments",
			ko = "허리 마법부여",
		},
	},
	[1097] = {
		readable = "Wands",
		icon = 135468,
		text = {
			en = "Wands",
			ko = "마법봉",
		},
	},
	[1098] = {
		readable = "Wrist Enchantments",
		icon = 132616,
		text = {
			en = "Wrist Enchantments",
			ko = "손목 마법부여",
		},
	},
	[1100] = {
		readable = "Fishing",
		text = {
			en = "Fishing",
		},
	},
	[1102] = {
		readable = "Outland Fishing",
		text = {
			en = "Outland Fishing",
		},
	},
	[1104] = {
		readable = "Northrend Fishing",
		text = {
			en = "Northrend Fishing",
		},
	},
	[1106] = {
		readable = "Cataclysm Fishing",
		text = {
			en = "Cataclysm Fishing",
		},
	},
	[1108] = {
		readable = "Pandaria Fishing",
		text = {
			en = "Pandaria Fishing",
		},
	},
	[1110] = {
		readable = "Draenor Fishing",
		text = {
			en = "Draenor Fishing",
		},
	},
	[1112] = {
		readable = "Legion Fishing",
		text = {
			en = "Legion Fishing",
		},
	},
	[1114] = {
		readable = "Kul Tiran Fishing",
		text = {
			en = "Kul Tiran Fishing",
		},
	},
	[1115] = {
		readable = "Cloth Goggles",
		icon = 133023,
		text = {
			en = "Cloth Goggles",
			ko = "천 고글",
		},
	},
	[1116] = {
		readable = "Embroidery",
		text = {
			en = "Embroidery",
		},
	},
	[1118] = {
		readable = "Zandalari Cuisine",
		text = {
			en = "Zandalari Cuisine",
		},
	},
	[1119] = {
		readable = "Desserts",
		text = {
			en = "Desserts",
		},
	},
	[1120] = {
		readable = "Light Meals",
		text = {
			en = "Light Meals",
		},
	},
	[1121] = {
		readable = "Large Meals",
		text = {
			en = "Large Meals",
		},
	},
	[1122] = {
		readable = "Feasts",
		text = {
			en = "Feasts",
		},
	},
	[1123] = {
		readable = "Cures & Tonics",
		text = {
			en = "Cures & Tonics",
		},
	},
	[1124] = {
		readable = "Anti-Venoms",
		text = {
			en = "Anti-Venoms",
		},
	},
	[1126] = {
		readable = "Glyphs",
		text = {
			en = "Glyphs",
		},
	},
	[1127] = {
		readable = "Glyphs",
		text = {
			en = "Glyphs",
		},
	},
	[1130] = {
		readable = "Glyphs",
		text = {
			en = "Glyphs",
		},
	},
	[1228] = {
		readable = "Cauldrons",
		text = {
			en = "Cauldrons",
		},
	},
	[1229] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
		},
	},
	[1230] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
		},
	},
	[1231] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
		},
	},
	[1232] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
		},
	},
	[1233] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
		},
	},
	[1234] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
		},
	},
	[1235] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
		},
	},
	[1236] = {
		readable = "Follower Equipment",
		text = {
			en = "Follower Equipment",
		},
	},
	[1237] = {
		readable = "Pets",
		text = {
			en = "Pets",
		},
	},
	[1238] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
		},
	},
	[1239] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
		},
	},
	[1240] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
		},
	},
	[1241] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
		},
	},
	[1242] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
		},
	},
	[1243] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
		},
	},
	[1244] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
		},
	},
	[1245] = {
		readable = "Conversions",
		text = {
			en = "Conversions",
		},
	},
	[1246] = {
		readable = "Leather Goggles",
		icon = 133023,
		text = {
			en = "Leather Goggles",
			ko = "가죽 고글",
		},
	},
	[1247] = {
		readable = "Mail Goggles",
		icon = 133023,
		text = {
			en = "Mail Goggles",
			ko = "메일 고글",
		},
	},
	[1248] = {
		readable = "Plate Goggles",
		icon = 133023,
		text = {
			en = "Plate Goggles",
			ko = "플레이트 고글",
		},
	},
	[1249] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
		},
	},
	[1250] = {
		readable = "Training",
		icon = 134331,
		text = {
			en = "Training",
		},
	},
	[1251] = {
		readable = "Disenchants",
		text = {
			en = "Disenchants",
		},
	},
	[1254] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
		},
	},
	[1255] = {
		readable = "Training",
		icon = 134331,
		text = {
			en = "Training",
		},
	},
	[1256] = {
		readable = "Explosives",
		icon = 133711,
		text = {
			en = "Explosives",
			ko = "폭발물",
		},
	},
	[1257] = {
		readable = "Junkyard Tinkering",
		text = {
			en = "Junkyard Tinkering",
		},
	},
	[1259] = {
		readable = "Components & Tools",
		text = {
			en = "Components & Tools",
			ko = "장비",
		},
	},
	[1261] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[1262] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
		},
	},
	[1266] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
		},
	},
	[1267] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
		},
	},
	[1276] = {
		readable = "Blood Contracts",
		text = {
			en = "Blood Contracts",
		},
	},
	[1278] = {
		readable = "Tool of the Trade",
		text = {
			en = "Tool of the Trade",
		},
	},
	[1280] = {
		readable = "Gadgets",
		text = {
			en = "Gadgets",
		},
	},
	[1281] = {
		readable = "Resources",
		text = {
			en = "Resources",
		},
	},
	[1282] = {
		readable = "***[UNAUTHORIZED ACCESS]***",
		text = {
			en = "***[UNAUTHORIZED ACCESS]***",
		},
	},
	[1283] = {
		readable = "Equipment",
		text = {
			en = "Equipment",
		},
	},
	[1285] = {
		readable = "Transportation",
		text = {
			en = "Transportation",
		},
	},
	[1288] = {
		readable = "Mount Equipment",
		text = {
			en = "Mount Equipment",
		},
	},
	[1289] = {
		readable = "Mounts Equipment",
		text = {
			en = "Mounts Equipment",
		},
	},
	[1290] = {
		readable = "Mount Equipment",
		text = {
			en = "Mount Equipment",
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
		},
	},
	[1295] = {
		readable = "Cauldrons",
		text = {
			en = "Cauldrons",
		},
	},
	[1296] = {
		readable = "Combat Potions",
		text = {
			en = "Combat Potions",
			ko = "전투 물약",
		},
	},
	[1297] = {
		readable = "Oils and Extracts",
		text = {
			en = "Oils and Extracts",
		},
	},
	[1298] = {
		readable = "Flasks",
		icon = 134821,
		text = {
			en = "Flasks",
			ko = "영약",
		},
	},
	[1299] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1300] = {
		readable = "Transmutation",
		icon = 135830,
		text = {
			en = "Transmutation",
			ko = "변환식",
		},
	},
	[1301] = {
		readable = "Trinkets",
		icon = 135443,
		text = {
			en = "Trinkets",
			ko = "장비",
		},
	},
	[1302] = {
		readable = "Utility Potions",
		text = {
			en = "Utility Potions",
			ko = "유틸리티 물약",
		},
	},
	[1303] = {
		readable = "Anti-Venoms",
		text = {
			en = "Anti-Venoms",
		},
	},
	[1304] = {
		readable = "Focus",
		text = {
			en = "Focus",
		},
	},
	[1305] = {
		readable = "Focus",
		text = {
			en = "Focus",
		},
	},
	[1306] = {
		readable = "Focus",
		text = {
			en = "Focus",
		},
	},
	[1307] = {
		readable = "Focus",
		text = {
			en = "Focus",
		},
	},
	[1308] = {
		readable = "Focus",
		text = {
			en = "Focus",
		},
	},
	[1309] = {
		readable = "Focus",
		text = {
			en = "Focus",
		},
	},
	[1311] = {
		readable = "Shadowlands Plans",
		text = {
			en = "Shadowlands Plans",
		},
	},
	[1312] = {
		readable = "Armor",
		text = {
			en = "Armor",
		},
	},
	[1313] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[1314] = {
		readable = "Specialized Armor",
		text = {
			en = "Specialized Armor",
		},
	},
	[1315] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = "Weapons",
			ko = "무기",
		},
	},
	[1316] = {
		readable = "Weapons Mods",
		text = {
			en = "Weapons Mods",
		},
	},
	[1317] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			ko = "재료",
		},
	},
	[1318] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1323] = {
		readable = "Shadowlands Cuisine",
		text = {
			en = "Shadowlands Cuisine",
		},
	},
	[1324] = {
		readable = "Light Meals",
		text = {
			en = "Light Meals",
		},
	},
	[1325] = {
		readable = "Large Meals",
		text = {
			en = "Large Meals",
		},
	},
	[1326] = {
		readable = "Feasts",
		text = {
			en = "Feasts",
		},
	},
	[1327] = {
		readable = "Soul Food",
		text = {
			en = "Soul Food",
		},
	},
	[1334] = {
		readable = "Shadowlands Patterns",
		text = {
			en = "Shadowlands Patterns",
		},
	},
	[1335] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[1336] = {
		readable = "Leather Armor",
		text = {
			en = "Leather Armor",
		},
	},
	[1337] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = "Weapons",
			ko = "무기",
		},
	},
	[1338] = {
		readable = "Materials",
		text = {
			en = "Materials",
			ko = "재료",
		},
	},
	[1339] = {
		readable = "Mail Armor",
		text = {
			en = "Mail Armor",
		},
	},
	[1364] = {
		readable = "Shadowlands Enchanting",
		text = {
			en = "Shadowlands Enchanting",
		},
	},
	[1365] = {
		readable = "Boot Enchantments",
		icon = 132535,
		text = {
			en = "Boot Enchantments",
			ko = "장화 마법부여",
		},
	},
	[1366] = {
		readable = "Chest Enchantments",
		icon = 132624,
		text = {
			en = "Chest Enchantments",
			ko = "가슴 마법부여",
		},
	},
	[1367] = {
		readable = "Cloak Enchantments",
		icon = 133770,
		text = {
			en = "Cloak Enchantments",
			ko = "망토 마법부여",
		},
	},
	[1368] = {
		readable = "Glove Enchantments",
		icon = 132938,
		text = {
			en = "Glove Enchantments",
			ko = "장갑 마법부여",
		},
	},
	[1369] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1370] = {
		readable = "Bracer Enchantments",
		icon = 132616,
		text = {
			en = "Bracer Enchantments",
			ko = "손목 마법부여",
		},
	},
	[1371] = {
		readable = "Reagents",
		text = {
			en = "Reagents",
			ko = "재료",
		},
	},
	[1372] = {
		readable = "Ring Enchantments",
		icon = 133397,
		text = {
			en = "Ring Enchantments",
			ko = "손가락 마법부여",
		},
	},
	[1373] = {
		readable = "Shatters",
		text = {
			en = "Shatters",
		},
	},
	[1374] = {
		readable = "Wands",
		icon = 135468,
		text = {
			en = "Wands",
			ko = "마법봉",
		},
	},
	[1375] = {
		readable = "Weapon Enchantments",
		icon = 135792,
		text = {
			en = "Weapon Enchantments",
			ko = "무기 마법부여",
		},
	},
	[1381] = {
		readable = "Shadowlands Engineering",
		text = {
			en = "Shadowlands Engineering",
		},
	},
	[1382] = {
		readable = "Belt Attachments",
		text = {
			en = "Belt Attachments",
			ko = "허리 마법부여",
		},
	},
	[1383] = {
		readable = "Bombs",
		text = {
			en = "Bombs",
		},
	},
	[1384] = {
		readable = "Devices",
		text = {
			en = "Devices",
			ko = "장치",
		},
	},
	[1385] = {
		readable = "Goggles",
		icon = 133023,
		text = {
			en = "Goggles",
			ko = "고글",
		},
	},
	[1386] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1387] = {
		readable = "Parts",
		text = {
			en = "Parts",
			ko = "부품",
		},
	},
	[1388] = {
		readable = "Scopes",
		icon = 134442,
		text = {
			en = "Scopes",
			ko = "조준경",
		},
	},
	[1389] = {
		readable = "Weapons",
		icon = 135792,
		text = {
			en = "Weapons",
			ko = "무기",
		},
	},
	[1395] = {
		readable = "Shadowlands Patterns",
		text = {
			en = "Shadowlands Patterns",
		},
	},
	[1396] = {
		readable = "Armor",
		text = {
			en = "Armor",
		},
	},
	[1401] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1403] = {
		readable = "Bandages",
		icon = 133690,
		text = {
			en = "Bandages",
		},
	},
	[1406] = {
		readable = "Shadowlands Inscription",
		text = {
			en = "Shadowlands Inscription",
		},
	},
	[1407] = {
		readable = "Off-Hands",
		text = {
			en = "Off-Hands",
		},
	},
	[1408] = {
		readable = "Ink",
		icon = 237070,
		text = {
			en = "Ink",
		},
	},
	[1409] = {
		readable = "Books & Scrolls",
		icon = 134939,
		text = {
			en = "Books & Scrolls",
		},
	},
	[1410] = {
		readable = "Contracts",
		text = {
			en = "Contracts",
		},
	},
	[1411] = {
		readable = "Cards",
		text = {
			en = "Cards",
		},
	},
	[1412] = {
		readable = "Mass Milling",
		text = {
			en = "Mass Milling",
		},
	},
	[1415] = {
		readable = "Staves",
		text = {
			en = "Staves",
		},
	},
	[1416] = {
		readable = "Vantus Runes",
		icon = 1392953,
		text = {
			en = "Vantus Runes",
		},
	},
	[1418] = {
		readable = "Shadowlands Designs",
		text = {
			en = "Shadowlands Designs",
		},
	},
	[1419] = {
		readable = "Gems",
		text = {
			en = "Gems",
		},
	},
	[1420] = {
		readable = "Mass Prospecting",
		text = {
			en = "Mass Prospecting",
		},
	},
	[1421] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1422] = {
		readable = "Necklaces",
		icon = 133294,
		text = {
			en = "Necklaces",
			ko = "목",
		},
	},
	[1424] = {
		readable = "Rings",
		icon = 133397,
		text = {
			en = "Rings",
			ko = "손가락",
		},
	},
	[1449] = {
		readable = "Delicacies",
		text = {
			en = "Delicacies",
		},
	},
	[1471] = {
		readable = "Armor Kits",
		icon = 133611,
		text = {
			en = "Armor Kits",
			ko = "방어구 키트",
		},
	},
	[1472] = {
		readable = "Specialized Armor",
		text = {
			en = "Specialized Armor",
		},
	},
	[1474] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1476] = {
		readable = "Mount Equipment",
		text = {
			en = "Mount Equipment",
		},
	},
	[1484] = {
		readable = "Specialized Jewelry",
		text = {
			en = "Specialized Jewelry",
		},
	},
	[1487] = {
		readable = "Shields",
		icon = 134952,
		text = {
			en = "Shields",
			ko = "방패",
		},
	},
	[1488] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1489] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1490] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1491] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1492] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1493] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1494] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1495] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1496] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1497] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1498] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1499] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1500] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1501] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1502] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1503] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1504] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1505] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1506] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1507] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1508] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1509] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1510] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1511] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1512] = {
		readable = "Robotics",
		text = {
			en = "Robotics",
		},
	},
	[1513] = {
		readable = "Specialized Armor",
		text = {
			en = "Specialized Armor",
		},
	},
	[1517] = {
		readable = "Other",
		text = {
			en = "Other",
			ko = "다른",
		},
	},
	[1519] = {
		readable = "Hats",
		text = {
			en = "Hats",
			ko = "머리",
		},
	},
	[1520] = {
		readable = "Hats",
		text = {
			en = "Hats",
			ko = "머리",
		},
	},
	[1521] = {
		readable = "Optional Reagents",
		text = {
			en = "Optional Reagents",
			ko = "선택적 시약",
		},
	},
	[1522] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			ko = "퀘스트 레시피",
		},
	},
	[1525] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			ko = "퀘스트 레시피",
		},
	},
	[1526] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			ko = "퀘스트 레시피",
		},
	},
	[1527] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			ko = "퀘스트 레시피",
		},
	},
	[1528] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			ko = "퀘스트 레시피",
		},
	},
	[1529] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			ko = "퀘스트 레시피",
		},
	},
	[1530] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			ko = "퀘스트 레시피",
		},
	},
	[1531] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			ko = "퀘스트 레시피",
		},
	},
	[1532] = {
		readable = "Quest Recipes",
		text = {
			en = "Quest Recipes",
			ko = "퀘스트 레시피",
		},
	},
	[1538] = {
		readable = "Bags",
		icon = 133646,
		text = {
			en = "Bags",
			ko = "가방",
		},
	},
})
do CategoryDB[categoryID] = categoryData; end
