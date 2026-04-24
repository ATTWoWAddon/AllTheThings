-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------
FAITHFUL_DOG = createHeader({
	readable = "Faithful Dog",
	icon = 538568,
	text = {
		en = "Faithful Dog",
		de = "Treuer Hund",
		es = "Perro fiel",
		mx = "Perro fiel",
		fr = "Chien fidèle",
		it = "Cane Fedele",
		ko = "충직한 개",
		pt = "Cão Fiel",
		ru = "Верный пес",
		cn = "忠诚的狗",
		tw = "忠實的狗",
	},
});

root(ROOTS.Secrets, n(FAITHFUL_DOG, {
	["description"] = "Multi-expansion secret to obtaining Dog as a companion pet.",
	["timeline"] = { ADDED_5_0_4 },
	["groups"] = {
		q(30526, {	-- Step 1: Lost and Lonely
			["provider"] = { "n", 59533 },	-- Lost Dog
			["coord"] = { 42.4, 50.2, VALLEY_OF_THE_FOUR_WINDS },
			["minReputation"] = { FACTION_THE_TILLERS, REVERED+600 },	-- The Tillers, 12600 Rep
			["timeline"] = { ADDED_5_0_4 },
			["groups"] = {
				i(80144),	-- Tasty T-Bone (QI!)
				i(248663, {	-- Wooden Doghouse (DECOR!)
					["timeline"] = { ADDED_11_2_7 },
				}),
			},
		}),
		q(46952, {	-- Step 2: Show the Pebble to Dog
			["name"] = "|cFFFFFFFFStep 2|r: Show the Pebble to Dog",
			["description"] = "Find a Loose Pebble on the streets of (Legion) Dalaran. Build an Herb Garden in your garrison.\nSpeak with Dog and show him the Pebble. Do not throw the Pebble at Dog.",
			["sourceQuests"] = {
				30526,	-- Lost and Lonely
				36404,	-- Clearing the Garden [A]
				34193,	-- Clearing the Garden [H]
			},
			["providers"] = {
				{ "n", 87553 },		-- Dog
				{ "i", 147420 },	-- Pebble
			},
			["coords"] = {
				{ 44.6, 84.8, FROSTWALL },
				{ 58.8, 53.8, LUNARFALL },
			},
			["timeline"] = { ADDED_7_2_0 },
		}),
		q(83093, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {	-- Step 3: Half-Buried Dog Bowl
			["name"] = "|cFFFFFFFFStep 3|r: Interact with the Half-Buried Dog Bowl",
			["description"] = "Interact with the bowl near Dalaran's crash site to bring Dog out of hiding.",
			["sourceQuests"] = { 46952 },
			["provider"] = { "o", 452438 },	-- Half-Buried Dog Bowl
			["coord"] = { 31.4, 51.3, ISLE_OF_DORN },
		})),
		q(83094, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {	-- Step 4: Interact with Dog
			["name"] = "|cFFFFFFFFStep 4|r: Interact with Dog",
			["description"] = "Interact with Dog and <Pet his head> to get him as a pet.",
			["sourceQuests"] = { 83093 },
			["provider"] = { "n", 225486 },	-- Dog
			["coord"] = { 31.4, 51.3, ISLE_OF_DORN },
			["timeline"] = { ADDED_11_0_2 },
			["groups"] = { i(224766) },	-- Faithful Dog (PET!)
		})),
	},
}));
