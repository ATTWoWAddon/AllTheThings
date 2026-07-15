---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		n(RARES, sharedData({ ["isDaily"] = true }, {
			n(256631, {	-- Big Mon <Ancient Amani Warband>
				["coord"] = { 69.8, 63.5, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 93829,
				["groups"] = { i(280689) },	-- Big Mon's Big Spear
			}),
			n(257906, {	-- Coin-Eye Skully
			--	["coord"] = { X, Y, MAP.MIDNIGHT.THE_COILED_ISLE },
			--	["questID"] = 94619,
			--	["groups"] = {  },
			}),
			n(261142, {	-- Destra
				["coord"] = { 52.1, 32.3, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 95452,
				--["groups"] = {  },
			}),
			n(264854, {	-- Farthik the Plunderer
				["coord"] = { 53.8, 72.0, MAP.MIDNIGHT.THE_COILED_ISLE },
				["provider"] = { "o", 653176 },	-- Unguarded Chest
				["questID"] = 96491,
				["groups"] = { i(280717) },	-- Farthik's Precious Pendant
			}),
			n(258916, {	-- Garsecg <The Hull Render>
				["coord"] = { 69.7, 44.9, MAP.MIDNIGHT.THE_COILED_ISLE },
				--["questID"] = 94856,	-- Shared with Lady Liminus from Eversong Woods?
				["groups"] = { i(280714) },	-- Hull Render Hauberk
			}),
			n(265262, {	-- Hisstara <The Raiser>
				["coord"] = { 43.9, 50.8, MAP.MIDNIGHT.THE_COILED_ISLE },
				--["questID"] = 96464,
				--["groups"] = {  },
			}),
			n(268090, {	-- Kari'zah the Forgotten
				["coord"] = { 24.9, 73.5, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 97122,
				["groups"] = { i(280694) },	-- Blade of the Forgotten
			}),
			n(265237, {	-- Lockjaw <The Snapper>
				["coord"] = { 31.7, 56.7, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 96456,
				["groups"] = { i(280708) },	-- Venom-Shelled Sash
			}),
			n(258920, {	-- Nar'zira <The Omnilegent>
				["coord"] = { 63.2, 62.4, 2642 },	-- Tomb of the Lost Priest
				["questID"] = 94860,
				["groups"] = { i(280716) },	-- Locket of the Omnilegent
			}),
			n(268049, {	-- Siltmouth <The Unflappable>
				["coord"] = { 50.2, 69.0, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 97112,
				["groups"] = {
					i(274498),	-- Spirit Ward	// Possible Zone Drop
				},
			}),
			n(261109, {	-- Sss'alik <The Rotten Claw>
				["coord"] = { 58.1, 40.1, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 95447,
				["groups"] = {
					i(276057),	-- Cryptbound Scepter	// Possible Zone Drop
				},
			}),
			n(263456, {	-- Szarith The Fanged
			--	["coord"] = { X, Y, MAP.MIDNIGHT.THE_COILED_ISLE },
			--	["questID"] = 96030,
			--	["groups"] = {  },
			}),
		})),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.THE_COILED_ISLE, {
			n(RARES, {
				q(98353, {	-- Weekly reputation: Big Mon
					["name"] = "Big Mon weekly reputation obtained.",
				}),
				q(98344, {	-- Weekly reputation: Farthik the Plunderer
					["name"] = "Farthik the Plunderer weekly reputation obtained.",
				}),
				q(98350, {	-- Weekly reputation: Garsecg
					["name"] = "Garsecg weekly reputation obtained.",
				}),
				q(98346, {	-- Weekly reputation: Kari'zah the Forgotten
					["name"] = "Kari'zah the Forgotten weekly reputation obtained.",
				}),
				q(98347, {	-- Weekly reputation: Lockjaw
					["name"] = "Lockjaw weekly reputation obtained.",
				}),
				q(98351, {	-- Weekly reputation: Nar'zira
					["name"] = "Nar'zira weekly reputation obtained.",
				}),
				q(98345, {	-- Weekly reputation: Siltmouth
					["name"] = "Siltmouth weekly reputation obtained.",
				}),
				q(98354, {	-- Weekly reputation: Sss'alik
					["name"] = "Sss'alik weekly reputation obtained.",
				}),
			}),
		}),
	}),
}));
