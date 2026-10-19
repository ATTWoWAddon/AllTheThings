---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.KALIMDOR, MAP.THOUSAND_NEEDLES, {
	groups = {
		n(QUESTS, {
			q(98070, {	-- Stop the Screeching
				qg = 4877,	-- Jandia
				coord = { 46.0, 51.4, MAP.THOUSAND_NEEDLES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 31,
				groups = {
					objective(1, {	-- 0/5 Screeching Harpy slain
						provider = { "n", 4100 },	-- Screeching Harpy
						coord = { 26.2, 52.6, MAP.THOUSAND_NEEDLES },
					}),
					objective(2, {	-- 0/5 Screeching Roguefeather slain
						provider = { "n", 4101 },	-- Screeching Roguefeather
						coord = { 26.0, 55.6, MAP.THOUSAND_NEEDLES },
					}),
					objective(3, {	-- 0/5 Screeching Windcaller slain
						provider = { "n", 4104 },	-- Screeching Windcaller
						coord = { 26.2, 52.6, MAP.THOUSAND_NEEDLES },
					}),
				},
			}),
		}),
	},
});
