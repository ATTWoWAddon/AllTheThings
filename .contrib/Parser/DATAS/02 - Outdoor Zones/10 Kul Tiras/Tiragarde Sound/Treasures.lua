---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(TIRAGARDE_SOUND, {
		n(TREASURES, {
			o(293880, {	-- Buried Treasure Chest
				["questID"] = 52833,	-- Fading Treasure Map
				["sourceQuest"] = 52854,	-- Fading Treasure Map
				["coord"] = { 29.26, 25.35, TIRAGARDE_SOUND },
			}),
			o(293884, {	-- Buried Treasure Chest
				["questID"] = 52845,	-- Singed Treasure Map
				["sourceQuest"] = 52860,	-- Singed Treasure Map
				["coord"] = { 48.96, 37.75, TIRAGARDE_SOUND },
			}),
			o(293852, {	-- Buried Treasure Chest
				["questID"] = 52807,	-- Buried Treasure Chest
				["sourceQuest"] = 52853,	-- Soggy Treasure Map
				["coord"] = { 55.01, 46.01, TIRAGARDE_SOUND },
				["description"] = "At the bottom of the ocean.",
			}),
			o(293881, {	-- Buried Treasure Chest
				["questID"] = 52836,	-- Yellowed Treasure Map
				["sourceQuest"] = 52859,	-- Yellowed Treasure Map
				["coord"] = { 90.49, 75.53, TIRAGARDE_SOUND },
			}),
			o(281397, {	-- Cutwater Treasure Chest
				["questID"] = 50442,	-- Cutwater Treasure Chest
				["coord"] = { 72.5, 58.1, TIRAGARDE_SOUND },
				["groups"] = {
					i(155381),	-- Cutwater-Captain's Sapphire Ring
				},
			}),
			o(297933, {	-- Dusty Songbook
				["questID"] = 53410,	-- Shanty of Fruit Counting
				["coord"] = { 43.50, 25.59, TIRAGARDE_SOUND },
				["groups"] = {
					i(163715),	-- Forbidden Sea Shanty of Fruit Counting
				},
			}),
			o(279750, {	-- Hay Covered Chest
				["sourceQuest"] = 49983,	-- Ride Horse Back
				["coord"] = { 67.4, 51.7, TIRAGARDE_SOUND },
				["crs"] = { 131453 },	-- Roan Berthold
				["questID"] = 49963,
				["groups"] = {
					i(155571),	-- Garyl's Riding Blanket
				},
			}),
			o(293964, {	-- Forgotten Smuggler's Stash
				["questID"] = 52867,	-- Forgotten Smuggler's Stash
				["coord"] = { 61.7, 62.7, TIRAGARDE_SOUND },
			}),
			o(293962, {	-- Precarious Noble Cache
				["questID"] = 52866,	-- Precarious Noble Cache
				["coord"] = { 56.0, 33.1, TIRAGARDE_SOUND },
			}),
			o(297934, {	-- Scoundrel's Songbook
				["questID"] = 53411,	-- Shanty of the Horse [Criteria]
				["coord"] = { 73.20, 84.13, TIRAGARDE_SOUND },
				["groups"] = {
					i(163719),	-- Forbidden Sea Shanty of the Horse
				},
			}),
			o(293965, {	-- Scrimshaw Cache
				["questID"] = 52870,	-- Scrimshaw Cache
				["coord"] = { 72.6, 21.5, TIRAGARDE_SOUND },
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(KUL_TIRAS, {
		m(TIRAGARDE_SOUND, {
			n(TREASURES, {
				q(48595),	-- Tiragarde Sound repeatable random chest
				q(48596),	-- Tiragarde Sound repeatable random chest
				q(48598),	-- Tiragarde Sound repeatable random chest
				q(48607),	-- Tiragarde Sound repeatable random chest
				q(48608),	-- Tiragarde Sound repeatable random chest
				q(48609),	-- Tiragarde Sound repeatable random chest
				q(48611),	-- Tiragarde Sound repeatable random chest
				q(48619),	-- Tiragarde Sound repeatable random chest
				q(50166),	-- Tiragarde Sound repeatable random chest
				q(50952),	-- Tiragarde Sound repeatable random chest
				q(53630),	-- Tiragarde Sound repeatable random chest (possibly different from others, it was Forgotten Treasure Chest at 79.57 20.22 in a small cave)
				q(53631),	-- reported as "opening a chest in Tiragarde Sound"
				q(48594),	-- Tiragarde Sound Tol Dagor chest
			}),
		}),
	}),
})));
