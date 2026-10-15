---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.KALIMDOR, MAP.ASHENVALE, {
	groups = {
		n(QUESTS, {
			q(95042, {	-- Seeking the Kor Gem
				qg = 259649,	-- Ulric Frostveil
				coord = { 11.8, 34.4, MAP.ASHENVALE },
				races = HORDE_ONLY,
				classes = { PALADIN },
				lvl = 20,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Corrupted Kor Gem
						provider = { "i", 6995 },	-- Corrupted Kor Gem (QI!)
					}),
					i(272448),	-- Purified Kor Gem (QI!)
				},
			}),
		}),
	},
});
