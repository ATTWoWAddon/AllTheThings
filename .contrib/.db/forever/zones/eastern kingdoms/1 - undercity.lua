---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.UNDERCITY, {
	groups = {
		n(QUESTS, {
			q(97583, {	-- WRIGGLE.
				description = "Spam /dance at the excitable slimes that patrol around the Undercity.",
				qg = 269452,	-- Excitable Slime
				coords = {
					{ 57.6, 63.4, MAP.UNDERCITY },
					{ 64.6, 65.0, MAP.UNDERCITY },
					{ 83.4, 45.4, MAP.UNDERCITY },
					{ 74.6, 23.2, MAP.UNDERCITY },
					{ 53.2, 29.4, MAP.UNDERCITY },
				},
				timeline = { TIMELINE.ADDED_1_60_1 },
				cost = { { "i", 278265, 1 } },	-- Nutritious Slime Sludge
				races = HORDE_ONLY,
				groups = {
					i(275682),	-- Excitable Slime
				},
			}),
		}),
	},
});
