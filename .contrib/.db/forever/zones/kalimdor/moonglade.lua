---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.KALIMDOR, MAP.MOONGLADE, {
	groups = {
		n(QUESTS, {
			q(98342, {	-- The Great Cat Spirit
				qg = 11957,	-- Great Cat Spirit
				coord = { 58.39, 73.52, MAP.MOONGLADE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { TAUREN },
				classes = { DRUID },
				lvl = 20,
				groups = {
					objective(1, {	-- Relic of the Fang
						provider = { "i", 280502 },
					}),
					objective(2, {	-- Relic of the Claw
						provider = { "i", 280679 },
					}),
					objective(3, {	-- Relic of the Silent Shadow
						provider = { "i", 280680 },
					}),
				},
			}),
			q(98362, {	-- To Thunder Bluff
				qg = 11802,	-- Dendrite Starblaze
				coord = { 56.21, 30.64, MAP.MOONGLADE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { TAUREN, SKYBORNE_HORDE },
				classes = { DRUID },
				lvl = 20,
			}),
			q(98394, {	-- The Great Cat Spirit
				qg = 11802,	-- Dendrite Starblaze
				coord = { 56.21, 30.64, MAP.MOONGLADE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { NIGHTELF },
				classes = { DRUID },
				lvl = 20,
			}),
			q(98396, {	-- The Great Cat Spirit
				qg = 11957,	-- Great Cat Spirit
				coord = { 58.39, 73.52, MAP.MOONGLADE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { NIGHTELF },
				classes = { DRUID },
				lvl = 20,
				groups = {
					objective(1, {	-- Relic of the Fang
						provider = { "i", 280502 },
					}),
					objective(2, {	-- Relic of the Claw
						provider = { "i", 280679 },
					}),
					objective(3, {	-- Relic of the Silent Shadow
						provider = { "i", 280680 },
					}),
				},
			}),
			q(98397, {	-- To Darnassus
				qg = 11802,	-- Dendrite Starblaze
				coord = { 56.21, 30.64, MAP.MOONGLADE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { NIGHTELF, SKYBORNE_ALLIANCE },
				classes = { DRUID },
				lvl = 20,
			}),
			q(98404, {	-- The Great Windborne Cat Spirit
				qg = 272054,	-- Avatar of Saeyleenan
				coord = { 44.0, 73.4, MAP.MOONGLADE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { SKYBORNE_ALLIANCE, SKYBORNE_HORDE },
				lvl = 20,
				groups = {
					objective(1, {	-- Relic of the Fang
						provider = { "i", 280502 },
					}),
					objective(2, {	-- Relic of the Claw
						provider = { "i", 280679 },
					}),
					objective(3, {	-- Relic of the Silent Shadow
						provider = { "i", 280680 },
					}),
				},
			}),
			q(98405, {	-- The Great Cat Spirit
				qg = 11802,	-- Dendrite Starblaze
				coord = { 56.21, 30.64, MAP.MOONGLADE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { TAUREN },
				classes = { DRUID },
				lvl = 20,
			}),
			q(98739, {	-- Blessings of the Great Cat Spirit
				qg = 11957,	-- Great Cat Spirit
				coord = { 58.39, 73.52, MAP.MOONGLADE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { TAUREN },
				classes = { DRUID },
				lvl = 20,
			}),
		}),
	},
});
