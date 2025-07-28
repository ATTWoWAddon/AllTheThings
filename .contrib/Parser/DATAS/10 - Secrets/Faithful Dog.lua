-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------
FAITHFUL_DOG = createHeader({
	readable = "Faithful Dog Secret",
	icon = 133210,
	text = {
		en = "Faithful Dog Secret",
		es = "Secreto del Perro fiel",
		mx = "Secreto del Perro fiel",
		cn = "忠诚的狗",
		tw = "忠實的狗",
	},
});

root(ROOTS.Secrets, n(FAITHFUL_DOG, {
	["description"] = "Multi-expansion secret to obtaining Dog as a companion pet",
	["timeline"] = { ADDED_5_0_4 },
	["groups"] = {
		q(30526, {	-- Step 1: Lost and Lonely
			["provider"] = { "n", 59533 },	-- Lost Dog
			["coord"] = { 42.4, 50.2, VALLEY_OF_THE_FOUR_WINDS },
			["minReputation"] = { FACTION_THE_TILLERS, REVERED+600 },	-- The Tillers, 12600 Rep
			["timeline"] = { ADDED_5_0_4 },
			["groups"] = {
				i(80144),	-- Tasty T-Bone (QI!)
			},
		}),
		q(46952, {	-- Step 2: Show the Pebble to Dog
			["name"] = "|cFFFFFFFFStep 2|r: Show the Pebble to Dog",
			["providers"] = {
				{ "n", 87553 },		-- Dog
				{ "i", 147420 },	-- Pebble
			},
			["sourceQuests"] = {
				30526,	-- Lost and Lonely
				36404,	-- Clearing the Garden [A]
				34193,	-- Clearing the Garden [H]
			},
			["coords"] = {
				{ 44.6, 84.8, FROSTWALL },
				{ 58.8, 53.8, LUNARFALL },
			},
			["description"] = "You need to have an Herb Garden in your garrison. Show the Pebble to Dog by speaking with them. Do not throw the pebble at Dog.",
			["timeline"] = { ADDED_7_2_0 },
		}),
		q(83093, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {	-- Step 3: Half-Buried Dog Bowl
			["name"] = "|cFFFFFFFFStep 3|r: Interact with the Half-Buried Dog Bowl",
			["provider"] = { "o", 452438 },	-- Half-Buried Dog Bowl
			["sourceQuests"] = { 46952 },
			["coord"] = { 31.4, 51.3, ISLE_OF_DORN },
			["description"] = "Interacting with the bowl near Dalaran's crash will send Dog running to you.",
		})),
		q(83094, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {	-- Step 4: Interact with Dog
			["name"] = "|cFFFFFFFFStep 4|r: Interact with Dog",
			["provider"] = { "n", 225486 },	-- Dog
			["sourceQuests"] = { 83093 },
			["coord"] = { 31.4, 51.3, ISLE_OF_DORN },
			["description"] = "Interact with Dog to get them as a pet.",
			["timeline"] = { ADDED_11_0_2 },
			["groups"] = {
				i(224766),	-- Faithful Dog (PET!)
			},
		})),
	},
}));