---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.DUSKWOOD, {
	groups = {
		n(QUESTS, {
			q(98372, {	-- An Unfortunate End
				qg = 271866,	-- Night Watch Guard <The Night Watch>
				coords = {
					{ 23.6, 33.2, MAP.DUSKWOOD },
					{ 17.2, 54.4, MAP.DUSKWOOD },
					{ 47.6, 59.6, MAP.DUSKWOOD },
					{ 45.6, 79.0, MAP.DUSKWOOD },
					{ 66.0, 33.8, MAP.DUSKWOOD },
					{ 68.8, 69.6, MAP.DUSKWOOD },
				},
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					i(280612),	-- Night Watchman's Torch
				},
			}),
			q(99267, {	-- An Unfortunate End (2/2)
				qg = 271866,	-- Night Watch Guard <The Night Watch>
				coords = {
					{ 23.6, 33.2, MAP.DUSKWOOD },
					{ 17.2, 54.4, MAP.DUSKWOOD },
					{ 47.6, 59.6, MAP.DUSKWOOD },
					{ 45.6, 79.0, MAP.DUSKWOOD },
					{ 66.0, 33.8, MAP.DUSKWOOD },
					{ 68.8, 69.6, MAP.DUSKWOOD },
				},
				timeline = { TIMELINE.ADDED_1_60_1 },
				repeatable = true,
				groups = {
					i(280612),	-- Night Watchman's Torch
				},
			}),
			q(79362, {	-- Grant's Shield
				aqd = {
					qg = 268,	-- Sirra Von'Indi <Historian of Darkshire>
					coord = { 72.6, 47.6, MAP.DUSKWOOD },
				},
				hqd = {
					qg = 6176,	-- Bath'rah the Windwatcher
					coord = { 80.4, 66.8, MAP.ALTERAC_MOUNTAINS },
				},
				qs = 281147,	-- Grant's Shield (QS!)
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 18,
				groups = {
					objective(1, {	-- 0/1 Grant's Mace
						provider = { "i", 281146 },	-- Grant's Mace
						crs = {
							787,	-- Skeletal Healer
							202,	-- Skeletal Horror
							531,	-- Skeletal Fiend
						},
					}),
				},
			}),
			q(96137, {	-- Ira's Dagger
				aqd = {
					qg = 268,	-- Sirra Von'Indi <Historian of Darkshire>
					coord = { 72.6, 47.6, MAP.DUSKWOOD },
				},
				hqd = {
					qg = 6176,	-- Bath'rah the Windwatcher
					coord = { 80.4, 66.8, MAP.ALTERAC_MOUNTAINS },
				},
				qs = 281143,	-- Ira's Dagger (QS!)
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 18,
				groups = {
					objective(1, {	-- 0/10 Young Black Ravager slain
						provider = { "n", 923 },	-- Young Black Ravager
					}),
					objective(2, {	-- 0/7 Black Ravager slain
						provider = { "n", 628 },	-- Black Ravager
					}),
				},
			}),
			q(96138, {	-- Merrick's Bow
				aqd = {
					qg = 268,	-- Sirra Von'Indi <Historian of Darkshire>
					coord = { 72.6, 47.6, MAP.DUSKWOOD },
				},
				hqd = {
					qg = 6176,	-- Bath'rah the Windwatcher
					coord = { 80.4, 66.8, MAP.ALTERAC_MOUNTAINS },
				},
				qs = 281142,	-- Merrick's Bow (QS!)
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 18,
				groups = {
					objective(1, {	-- 0/8 Splinter Fist Warrior slain
						provider = { "n", 212 },	-- Splinter Fist Warrior
					}),
					objective(2, {	-- 0/4 Splinter Fist Taskmaster slain
						provider = { "n", 892 },	-- Splinter Fist Taskmaster
					}),
				},
			}),
			q(79363, {	-- Silvia's Sword
				aqd = {
					qg = 268,	-- Sirra Von'Indi <Historian of Darkshire>
					coord = { 72.6, 47.6, MAP.DUSKWOOD },
				},
				hqd = {
					qg = 6176,	-- Bath'rah the Windwatcher
					coord = { 80.4, 66.8, MAP.ALTERAC_MOUNTAINS },
				},
				qs = 281145,	-- Silvia's Sword (QS!)
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 18,
				groups = {
					objective(1, {	-- 0/7 Defias Night Blade slain
						provider = { "n", 909 },	-- Defias Night Blade
					}),
					objective(2, {	-- 0/2 Defias Enchanter slain
						provider = { "n", 910 },	-- Defias Enchanter
					}),
				},
			}),
			q(96139, {	-- The Valor Family (1/2)
				qg = 268,	-- Sirra Von'Indi <Historian of Darkshire>
				coord = { 72.6, 47.6, MAP.DUSKWOOD },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 18,
				groups = {
					objective(1, {	-- 0/1 Raven Hill Tome
						providers = {
							{ "i", 281046 },	-- Raven Hill Tome
							{ "o", 673515 },	-- Memory of Valor
						},
						coord = { 72.6, 47.6, MAP.DUSKWOOD },
					}),
					i(281149),	-- Memories of Valor
				},
			}),
			q(98447, {	-- The Valor Family (2/2)
				description = "NOTE: No one currently knows how to get this quest. It may not be in the game yet. If you manage to finish it, please @crieve on Discord!",
				sourceQuests = {
					79362,	-- Grant's Shield
					96137,	-- Ira's Dagger
					96138,	-- Merrick's Bow
					79363,	-- Silvia's Sword
				},
				qg = 268,	-- Sirra Von'Indi <Historian of Darkshire>
				coord = { 72.6, 47.6, MAP.DUSKWOOD },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 18,
				groups = {
					objective(1, {	-- Raven Hill investigated
						provider = { "n", 272450 },	-- Ol' Sandy
						coord = { 17.4, 54.0, MAP.DUSKWOOD },
					}),
				},
			}),
		}),
	},
});
