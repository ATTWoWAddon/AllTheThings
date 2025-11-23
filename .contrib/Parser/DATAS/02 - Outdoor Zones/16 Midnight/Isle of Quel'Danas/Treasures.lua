---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MIDNIGHT, {
	m(ISLE_OF_QUELDANAS_MID, {
		n(TREASURES, bubbleDownSelf({
			["sourceQuest"] = 86806,	-- Luminous Wings
			-- Exo Note: Treasures become visible after accepting 'The Gate' (86807).
			}, {
				o(555178, {	-- Artisan's Cache
					["coord"] = { 38.4, 33.0, ISLE_OF_QUELDANAS_MID_i },
					["questID"] = 92620,
					["groups"] = {
						--ph
					},
				}),
				o(577796, {	-- Artisan's Cache
					["coord"] = { 54.1, 23.7, ISLE_OF_QUELDANAS_MID_i },
					["questID"] = 92621,
					["groups"] = {
						--ph
					},
				}),
				o(577797, {	-- Artisan's Cache
					["coord"] = { 35.5, 29.4, ISLE_OF_QUELDANAS_MID_i },
					["questID"] = 92622,
					["groups"] = {
						--ph
					},
				}),
				o(577798, {	-- Artisan's Cache
					["coord"] = { 58.8, 35.2, ISLE_OF_QUELDANAS_MID_i },
					["questID"] = 92623,
					["groups"] = {
						--ph
					},
				}),
				o(577800, {	-- Artisan's Cache
					["coord"] = { 38.5, 22.8, ISLE_OF_QUELDANAS_MID_i },
					["questID"] = 92625,
					["groups"] = {
						--ph
					},
				}),
				--o(XXXXXX, {	-- Artisan's Cache	// Exo Note: Attempt 2 - Debugger failed to grab ObjectID
				--	["coord"] = { 48.9, 21.8, ISLE_OF_QUELDANAS_MID_i },
				--	["questID"] = 94830,
				--	["groups"] = {
				--		--ph
				--	},
				--}),
				-- possible, they become locked after map switch (intro quest)
		})),
	}),
}));
