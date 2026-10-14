---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.KALIMDOR, MAP.ASHENVALE, {
	groups = {
		n(QUESTS, {
			q(95042, {	-- Seeking the Kor Gem
				qg = 259649,	-- Ulric Frostveil
				coord = { 11.8, 34.4, MAP.ASHENVALE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { ORC, UNDEAD, TAUREN, TROLL, SKYBORNE_HORDE },
				classes = { PALADIN },
				lvl = 20,
				groups = {
					objective(1, {	-- Corrupted Kor Gem
						provider = { "i", 6995 },
					}),
					i(272448),	-- Purified Kor Gem
				},
			}),
		}),
	},
});
