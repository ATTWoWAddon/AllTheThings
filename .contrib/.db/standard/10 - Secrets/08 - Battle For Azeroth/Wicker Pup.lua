-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------

root(ROOTS.Secrets, expansion(EXPANSION.BFA, {
	header(HEADERS.Spell, 279213, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {	-- Wicker Pup
		["description"] = "You must find each of the four parts from various treasures in the Zone and combine them to form this battle pet.",
		["modelScale"] = .8,
		["displayID"] = 86805,
		["groups"] = {
			n(REWARDS, {
				["maps"] = { 
					DRUSTVAR,
				},
				["groups"] = {
					i(163497, {	-- Wicker Pup (PET!)
						["cost"] = {
							{ "i", 163789, 1 },	-- Bundle of Wicker Stick
							{ "i", 163791, 1 },	-- Miniature Stag Skull
							{ "i", 163790, 1 },	-- Spooky Incantation
							{ "i", 163796, 1 },	-- Wolf Pup Spine
						},
					}),
				},
			}),
			o(297879, {	-- Bespelled Chest
				["description"] = "Click the inactive torches.",
				["modelScale"] = 1.5,
				["questID"] = 53472,
				["coord"] = { 55.60, 51.80, DRUSTVAR },
				["groups"] = { i(163790) },	-- Spooky Incantation
			}),
			o(297881, {	-- Enchanted Chest
				["description"] = "Click the inactive torches.",
				["modelScale"] = 1.5,
				["questID"] = 53474,
				["coord"] = { 25.50, 24.20, DRUSTVAR },
				["groups"] = { i(163796) },	-- Wolf Pup Spine
			}),
			o(297880, {	-- Ensorcelled Chest
				["modelScale"] = 1.5,
				["questID"] = 53473,
				["coord"] = { 67.70, 73.70, DRUSTVAR },
				["groups"] = { i(163791) },	-- Miniature Stag Skull
			}),
			o(297878, {	-- Hexed Chest
				["description"] = "Click the inactive torches.",
				["modelScale"] = 1.5,
				["questID"] = 53471,
				["coord"] = { 18.50, 51.30, DRUSTVAR },
				["groups"] = { i(163789) },	-- Bundle of Wicker Stick
			}),
		},
	})),
}));
