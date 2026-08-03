---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		n(RARES, {
			header(HEADERS.Achievement, 63358, sharedData({	-- Coiled to Strike
				["isDaily"] = true,
			}, {
				n(256631, {	-- Big Mon <Ancient Amani Warband>
					["coord"] = { 69.8, 63.5, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 93829,
					["groups"] = { i(280689) },	-- Big Mon's Big Spear
				}),
				n(257906, {	-- Coin-Eye Skully
					["coord"] = { 58.0, 66.5, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 94619,
				--	["groups"] = {  },
				}),
				n(261142, {	-- Destra
					["coord"] = { 52.1, 32.3, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95452,
					["groups"] = { i(280712) },	-- Bracers of the Sleeping Hydra
				}),
				n(264854, {	-- Farthik the Plunderer
					["coord"] = { 53.8, 72.0, MAP.MIDNIGHT.THE_COILED_ISLE },
					["provider"] = { "o", 653176 },	-- Unguarded Chest
					["questID"] = 96491,
					["groups"] = { i(280717) },	-- Farthik's Precious Pendant
				}),
				n(258916, {	-- Garsecg <The Hull Render>
					["coord"] = { 69.7, 44.9, MAP.MIDNIGHT.THE_COILED_ISLE },
					--["questID"] = 94856,	-- Shared with Lady Liminus from Eversong Woods? 01.08.2026.
					["groups"] = {
						i(280710),	-- Garsecg's Barnacled Girdle
						i(280714),	-- Hull Render Hauberk
					},
				}),
				n(265262, {	-- Hisstara <The Raiser>
					["coord"] = { 43.9, 50.8, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 96464,
					["groups"] = { i(280702) },	-- Mantle of the Riser
				}),
				n(268090, {	-- Kari'zah the Forgotten
					["coord"] = { 24.9, 73.5, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 97122,
					["groups"] = {
						i(280694),	-- Blade of the Forgotten
						i(280711),	-- Pitted Specter Shackles
					},
				}),
				n(265237, {	-- Lockjaw <The Snapper>
					["coord"] = { 31.7, 56.7, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 96456,
					["groups"] = { i(280708) },	-- Venom-Shelled Sash
				}),
				n(258920, {	-- Nar'zira <The Omnilegent>
					["coord"] = { 63.2, 62.4, 2642 },	-- Tomb of the Lost Priest
					["questID"] = 94860,
					["groups"] = {
						i(280716),	-- Locket of the Omnilegent
						i(280693),	-- Staff of All-Knowing
					},
				}),
				n(268049, {	-- Siltmouth <The Unflappable>
					["coord"] = { 50.2, 69.0, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 97112,
					["groups"] = { i(280704) },	-- Siltmouth's Venom Waders
				}),
				n(261109, {	-- Sss'alik <The Rotten Claw>
					["coord"] = { 58.1, 40.1, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95447,
					["groups"] = {
						i(280706),	-- Sss'alik's Rotting Claws
						i(276052),	-- Venomshot Greatbow
					},
				}),
				n(263456, {	-- Szarith The Fanged
					["coord"] = { 38.0, 17.5, 2613 },	-- The Underbelly, Vaults of Atal'Utek
					["questID"] = 96030,
				}),
			})),
			header(HEADERS.Achievement, 63390, sharedData({	-- Turn the Surge
				["isWeekly"] = true,	-- Assumption, Could be daily. Curse Surge events between 30 minutes and 1 hour
			}, {
				n(255088, {	-- Looming Mutagenitor
					["coord"] = { 26.6, 64.9, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 93718,
					["groups"] = { i(276046) },	-- Superclutch Smasher
				}),
				n(255087, {	-- Malformed Leviathan
					["coord"] = { 47.0, 62.2, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 93673,
					["groups"] = { i(280091) },	-- Latent Purifier
				}),
				n(258254, {	-- Ss'akrithos <The Boundless Ophidian>
					["coord"] = { 71.3, 31.4, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 93715,
					["groups"] = {
						i(271424),	-- Diver's Key Fragment
						i(276060),	-- Hexxer's Blastin' Rod
						i(276171),	-- Ophidian Circle
					},
				}),
				n(257863, {	-- Vassti, the Exalted Broodmother
					--["coord"] = { X, Y, MAP.MIDNIGHT.THE_COILED_ISLE },
					--["questID"] = XXXXX,
				}),
				n(255927, {	-- Venom Lancer Ori'kassi
					--["coord"] = { X, Y, MAP.MIDNIGHT.THE_COILED_ISLE },
					--["questID"] = XXXXX,
				}),
			})),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.THE_COILED_ISLE, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
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
				q(98348, {	-- Weekly reputation: Hisstara
					["name"] = "Hisstara weekly reputation obtained.",
				}),
				q(98346, {	-- Weekly reputation: Kari'zah the Forgotten
					["name"] = "Kari'zah the Forgotten weekly reputation obtained.",
				}),
				q(98347, {	-- Weekly reputation: Lockjaw
					["name"] = "Lockjaw weekly reputation obtained.",
				}),
				q(96966, {	-- Weekly reputation: Looming Mutagenitor
					["name"] = "Looming Mutagenitor weekly reputation obtained.",
				}),
				q(96970, {	-- Weekly reputation: Malformed Leviathan
					["name"] = "Malformed Leviathan weekly reputation obtained.",
				}),
				q(98351, {	-- Weekly reputation: Nar'zira
					["name"] = "Nar'zira weekly reputation obtained.",
				}),
				q(98345, {	-- Weekly reputation: Siltmouth
					["name"] = "Siltmouth weekly reputation obtained.",
				}),
				q(96968, {	-- Weekly reputation: Ss'akrithos
					["name"] = "Ss'akrithos weekly reputation obtained.",
				}),
				q(98354, {	-- Weekly reputation: Sss'alik
					["name"] = "Sss'alik weekly reputation obtained.",
				}),
				q(98349, {	-- Weekly reputation: Szarith The Fanged
					["name"] = "Szarith The Fanged weekly reputation obtained.",
				}),
			}),
		})),
	}),
}));
