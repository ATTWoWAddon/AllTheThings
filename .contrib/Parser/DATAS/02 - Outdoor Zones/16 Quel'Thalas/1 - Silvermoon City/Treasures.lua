---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.SILVERMOON_CITY, {
		n(TREASURES, {
			o(620688, {	-- Incomplete Book of Sonnets
				["coord"] = { 37.8, 52.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				["questID"] = 94781,
				["cost"] = { { "i", 265832, 1 } },	-- Incomplete Booklet of Sonnets
				["groups"] = { i(245282) },	-- Silvermoon Library Bookcase (DECOR!)
			}),
			i(265832, {	-- Incomplete Booklet of Sonnets
				["cost"] = {
					{ "i", 265833, 1 },	-- Page 1 of a Book of Sonnets
					{ "i", 265834, 1 },	-- Page 2 of a Book of Sonnets
					{ "i", 265835, 1 },	-- Page 3 of a Book of Sonnets
				},
			}),
			o(620533, {	-- Lost Page
				["coord"] = { 40.9, 88.5, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = { i(265833) },	-- Page 1 of a Book of Sonnets
			}),
			o(620537, {	-- Lost Page
				["coord"] = { 33.3, 90.2, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = { i(265834) },	-- Page 2 of a Book of Sonnets
			}),
			o(620538, {	-- Lost Page
				["coord"] = { 39.8, 80.5, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = { i(265835) },	-- Page 3 of a Book of Sonnets
			}),
		}),
	}),
}));
