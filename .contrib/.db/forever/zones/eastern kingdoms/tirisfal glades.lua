---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.TIRISFAL_GLADES, {
	groups = {
		n(QUESTS, {
			q(91282, {	-- A Second Home
				qg = 246152,	-- Shari Stilwell
				coord = { 60.25, 52.63, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 8,
			}),
			q(91285, {	-- Murlocs at the Gates
				qg = 246349,	-- Breton Samuels
				coord = { 21.85, 45.31, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 7,
				groups = {
					objective(1, {	-- Vile Fin Attacker
						provider = { "n", 250283 },
					}),
					objective(2, {	-- Vile Fin Seer
						provider = { "n", 250282 },
					}),
					i(246164),	-- Skullthumper
					i(246165),	-- Driftwood Smasher
				},
			}),
			q(91294, {	-- Touring the Grounds
				qg = 246349,	-- Breton Samuels
				coord = { 21.85, 45.31, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 8,
			}),
			q(91316, {	-- Making Repairs
				qg = 246393,	-- Jorin Croge
				coord = { 22.65, 44.77, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 8,
				groups = {
					objective(1, {	-- Sturdy Lumber
						provider = { "i", 246213 },
					}),
					i(246265),	-- Salvaged Wooden Tower Shield
				},
			}),
			q(91317, {	-- The Tarnished
				qg = 246378,	-- Danitha Morr
				coord = { 22.05, 44.7, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 9,
				groups = {
					objective(1, {	-- Tarnished Drudge
						provider = { "n", 259434 },
					}),
					objective(2, {	-- Tarnished Zealot
						provider = { "n", 259433 },
					}),
					objective(3, {	-- Rudolph Gelhardt's Head
						provider = { "i", 270435 },
					}),
				},
			}),
			q(91858, {	-- Diplomatic Incident
				qg = 246378,	-- Danitha Morr
				coord = { 22.05, 44.7, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 18,
			}),
			q(94427, {	-- A Lesson in Divinity
				qg = 246378,	-- Danitha Morr
				coord = { 22.05, 44.7, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 12,
			}),
			q(94436, {	-- A Lesson in Divinity
				qg = 246378,	-- Danitha Morr
				coord = { 22.05, 44.7, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 12,
			}),
			q(94440, {	-- A Lesson in Divinity
				qg = 257663,	-- Deathguard Falgan
				coord = { 86.64, 47.63, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 12,
				groups = {
					objective(1, {	-- Scarlet Crusade Attack Plans
						provider = { "i", 264693 },
					}),
				},
			}),
			q(94441, {	-- A Lesson in Divinity
				qg = 257655,	-- Deathguard Billmuth
				coord = { 21.95, 44.5, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 12,
			}),
			q(95803, {	-- A Token of Good Faith
				qg = 246378,	-- Danitha Morr
				coord = { 22.05, 44.7, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				qi = 270436,	-- Rudolph Gelhardt's Head
				lvl = 9,
			}),
		}),
	},
});
