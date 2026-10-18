---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.KALIMDOR, MAP.ORGRIMMAR, {
	groups = {
		n(QUESTS, {
			q(96875, {	-- Beasts of Thunder Ridge
				qg = 5811,	-- Kamari <Journeyman Leatherworker>
				coord = { 63.2, 44.4, MAP.ORGRIMMAR },
				cost = { { "i", 4231, 2 } },	-- 2x Cured Light Hide
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				requireSkill = LEATHERWORKING,
				groups = {
					objective(1, {	-- 0/5 Rough Lizard Hide
						provider = { "i", 275720 },	-- Rough Lizard Hide
						crs = {
							3131,	-- Lightning Hide
							3130,	-- Thunder Lizard
						},
						coord = { 40.0, 24.1, MAP.DUROTAR },
					}),
					i(277716),	-- Pattern: Light Leather Reagent Bag (RECIPE!)
				},
			}),
		}),
	},
});
