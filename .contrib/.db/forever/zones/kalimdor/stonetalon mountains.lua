---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.KALIMDOR, MAP.STONETALON_MOUNTAINS, {
	groups = {
		n(QUESTS, {
			q(86574, {	-- Stonetalon Supply Run
				qg = 268925,	-- Night Elf Courier
				coord = { 48.6, 39.8, MAP.STONETALON_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				qi = 277915,	-- Stonetalon Supply Satchel
				lvl = 20,
				groups = {
					objective(1, {	-- Stonetalon Supply Bundle
						provider = { "i", 277917 },
					}),
					i(281251),	-- Courier's Wristguards
				},
			}),
			q(97538, {	-- Pigments for Paints
				qg = 3024,	-- Tah Winterhoof
				coord = { 54.14, 47.05, MAP.THUNDER_BLUFF },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { ORC, UNDEAD, TAUREN, TROLL, SKYBORNE_HORDE },
				lvl = 20,
				groups = {
					objective(1, {	-- Mirkweed Pods
						provider = { "i", 278201 },
					}),
				},
			}),
		}),
	},
});
