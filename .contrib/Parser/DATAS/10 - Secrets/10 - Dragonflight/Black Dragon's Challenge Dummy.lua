-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------

root(ROOTS.Secrets, expansion(EXPANSION.DF, {
	header(HEADERS.Item, 201933, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {	-- Black Dragon's Challenge Dummy
		["description"] = "***Debugg Mode enabled is required to see all the steps.***\n\nFollow the steps as ordered in the descriptions.",
		["modelScale"] = 1.6,
		["displayID"] = 110513,
		["groups"] = {
			o(377485, {	-- Sour Apple
				["description"] = "Step 1: Get a Sour Apple.",
				["modelScale"] = .1,
				["coord"] = { 43.7, 71.7, THE_WAKING_SHORES },
				["groups"] = { i(194122) },	-- Sour Apple
			}),
			n(191851, {	-- Blacktalon Shadowclaw
				["description"] = "Step 2: Use the Sour Apple on the Blacktalon Shadowclaw and then, mount up on it.",
				["modelScale"] = .8,
				["coord"] = { 43.2, 67.3, THE_WAKING_SHORES },
				["cost"] = { { "i", 194122, 1 } },	-- 1x Sour Apple
			}),
			o(379168, {	-- Lost Cache Key
				["description"] = "Step 3: Loot the 'Lost Cache Key'.",
				["modelScale"] = .2,
				["coord"] = { 43.7, 69.6, THE_WAKING_SHORES },
				["groups"] = { i(198085) },	-- Lost Obsidian Cache Key
			}),
			o(378857, {	-- Lost Obsidian Cache
				["description"] = "Step 4: Venture into the cave to locate the 'Lost Obsidian Cache'.",
				["modelScale"] = 1.6,
				["coord"] = { 44.6, 70.1, THE_WAKING_SHORES },
				["questID"] = 70018,
				["cost"] = { { "i", 198085, 1 } },	-- 1x Lost Obsidian Cache Key
				["groups"] = { i(201933) },	-- Black Dragon's Challenge Dummy (TOY!)
			}),
		},
	})),
}));
