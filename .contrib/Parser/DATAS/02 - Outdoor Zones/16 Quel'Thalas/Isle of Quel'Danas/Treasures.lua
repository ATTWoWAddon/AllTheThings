---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ISLE_OF_QUELDANAS, {
		n(TREASURES, bubbleDownSelf({
			["sourceQuest"] = 86806,	-- Luminous Wings
			-- Exo Note: Treasures become visible after accepting 'The Gate' (86807).
		}, {
			o(555178, {	-- Artisan's Cache
				["coord"] = { 38.4, 33.0, MAP.MIDNIGHT.ISLE_OF_QUELDANAS_SCENARIO },
				["questID"] = 92620,
			}),
			o(577796, {	-- Artisan's Cache
				["coord"] = { 54.2, 23.6, MAP.MIDNIGHT.ISLE_OF_QUELDANAS_SCENARIO },
				["questID"] = 92621,
			}),
			o(577797, {	-- Artisan's Cache
				["coord"] = { 35.5, 29.3, MAP.MIDNIGHT.ISLE_OF_QUELDANAS_SCENARIO },
				["questID"] = 92622,
			}),
			o(577798, {	-- Artisan's Cache
				["coord"] = { 58.8, 35.2, MAP.MIDNIGHT.ISLE_OF_QUELDANAS_SCENARIO },
				["questID"] = 92623,
			}),
			o(577800, {	-- Artisan's Cache
				["coord"] = { 38.5, 22.9, MAP.MIDNIGHT.ISLE_OF_QUELDANAS_SCENARIO },
				["questID"] = 92625,
			}),
			o(621669, {	-- Artisan's Cache
				["coord"] = { 48.9, 21.8, MAP.MIDNIGHT.ISLE_OF_QUELDANAS_SCENARIO },
				["questID"] = 94830,
			}),
		})),
	}),
}));
