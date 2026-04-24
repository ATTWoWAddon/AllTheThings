---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZULDAZAR, {
		n(TREASURES, {
			o(288596, {	-- Cache of Secrets
				["description"] = "Located in a cave behind a waterfall.",
				["questID"] = 51338,
				["coord"] = { 46.3, 26.6, DAZARALOR },
			}),
			o(284454, {	-- Da White Shark's Bounty
				["questID"] = 50947,
				["sourceQuest"] = 50948,	-- Da White Shark
				["coord"] = { 59.5, 88.8, DAZARALOR },
			}),
			o(281898, {	-- Dazar's Forgotten Chest
				["questID"] = 50707,
				["coord"] = { 38.8, 34.4, ZULDAZAR },
			}),
			o(281655, {	-- Gift of the Brokenhearted
				["questID"] = 50582,
				["coord"] = { 51.5, 26.7, ZULDAZAR },
			}),
			o(316863, {	-- Lost Zandalari Relic
				["coord"] = { 46.6, 29.9, DAZARALOR },
				["groups"] = {
					i(166506, {	-- Clump of Broken Loa Idols
						i(166507),	-- Jani's First Offering (QS!)
					}),
				},
			}),
			o(276735, {	-- Offerings of the Chosen
				["questID"] = 48938,
				["coord"] = { 38.3, 7.2, DAZARALOR },
			}),
			o(290725, {	-- Riches of Tor'nowa
				["questID"] = 51624,
				["coord"] = { 52.9, 47.2, ZULDAZAR },
			}),
			o(279609, {	-- Spoils of Pandaria
				["questID"] = 49936,
				["coord"] = { 24.5, 27.0, 1177 },	-- lower level of Breath of Pa'ku
			}),
			o(284455, {	-- The Exile's Lament
				["questID"] = 50949,
				["coord"] = { 71.8, 16.7, ZULDAZAR },
			}),
			o(296454, {	-- Wan'be's Buried Goods
				["sourceQuest"] = 53656,	-- Speak to Wan'be in Blackrock Mountain
				["questID"] = 53657,
				["races"] = HORDE_ONLY,
				["modelScale"] = 0.5,
				["coord"] = { 63.6, 9.8, ZULDAZAR },
			}),
			o(277561, {	-- Warlord's Cache
				["questID"] = 49257,
				["coord"] = { 49.5, 65.3, ZULDAZAR },
			}),
			o(281092, {	-- Witch Doctor's Hoard
				["questID"] = 50259,
				["coord"] = { 64.7, 21.7, ZULDAZAR },
			}),
			o_repeated(sharedData({	-- Treasure Chest
				["isDaily"] = true,
			},{
				-- Objects
				o(277336, {	-- Treasure Chest
					["questID"] = 49142,
					["coord"] = { 58.6, 85.6, ZANCHUL_HALL_OF_THE_HIGH_PRIESTS },
				}),
				o(278460, {	-- Treasure Chest
					["questID"] = 50722,
					["coords"] = {
						{ 48.9, 39.0, ZULDAZAR },
						{ 48.9, 39.8, ZULDAZAR },
						{ 48.9, 40.7, ZULDAZAR },
						{ 48.9, 42.4, ZULDAZAR },
						{ 50.0, 39.7, ZULDAZAR },
						{ 50.1, 40.9, ZULDAZAR },
						{ 50.0, 42.2, ZULDAZAR },
						{ 51.1, 41.7, ZULDAZAR },
						{ 52.6, 47.1, ZULDAZAR },
					},
				}),
				o(278461, {	-- Treasure Chest
					["questID"] = 50711,
					["coords"] = {
						{ 48.8, 32.1, ZULDAZAR },
						{ 52.4, 24.2, ZULDAZAR },
					},
				}),
				o(278462, {	-- Treasure Chest
					["questID"] = 50716,
					["coord"] = { 70.5, 33.3, ZULDAZAR },
				}),
				o(278694, {	-- Treasure Chest
					["questID"] = 50724,
					["coord"] = { 79.5, 15.7, ZULDAZAR },
				}),
				o(278793, {	-- Treasure Chest
					["questID"] = 50715,
					["coords"] = {
						{ 63.3, 15.3, ZULDAZAR },
						{ 68.8, 22.1, ZULDAZAR },
					},
				}),
				o(278456, {	-- Treasure Chest
					["questID"] = 50710,
					["coords"] = {
						{ 56.8, 19.4, VOLDUN },
					},
				}),
				o(281904, {	-- Treasure Chest
					["questID"] = 50727,
					["coords"] = {
						{ 40.2, 37.2, ZULDAZAR },
						{ 42.1, 37.2, ZULDAZAR },
					},
				}),
			}))
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZANDALAR, {
		m(ZULDAZAR, {
			n(TREASURES, {
				q(50950),	-- for using the Incense prior to opening Gift of the Brokenhearted for achievement Treasures of Zuldazar
				q(50712),	-- Zuldazar repeatable random chest
				q(50719),	-- Zuldazar repeatable random chest
				q(50720),	-- Zuldazar repeatable random chest
				q(50721),	-- Zuldazar repeatable random chest
				q(50723),	-- Zuldazar repeatable random chest
				q(50726),	-- Zuldazar repeatable random chest
				q(50728),	-- Zuldazar repeatable random chest
				q(51346),	-- Zuldazar repeatable random chest
				q(50729),	-- looted a chest in Zuldazar at 58.6, 81.1
			}),
		}),
	}),
})));
