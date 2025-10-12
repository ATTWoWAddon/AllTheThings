---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MIDNIGHT, {
	m(EVERSONG_WOODS_MID, {
		n(QUESTS, {
			header(HEADERS.AchCriteria, 41802.01, {	-- Whispers in the Twillight
				q(86735, {	-- Paved in Ash
					["sourceQuests"] = { 86734 },	-- Diplomacy
					["provider"] = { "n", 235787 },	-- Lor'themar Theron
					["coord"] = { 45.4, 70.3, SILVERMOON_CITY_MID },
					["groups"] = {
						i(248044),	-- Reluctant Diplomat's Bracers
						i(248042),	-- Reluctant Diplomat's Cuffs
						i(248043),	-- Reluctant Diplomat's Vambraces
						i(248045),	-- Reluctant Diplomat's Wraps
					},
				}),
			}),
		}),
	}),
}));
