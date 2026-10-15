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
			q(79980, {	-- Scramble
				sourceQuest = 79192,	-- Stepping Stones
				provider = { "o", 424005 },	-- Pocket Litter
				coord = { 40.8, 52.5, STONETALON_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 14,
				groups = {
					i(216619, {	-- Student Fodder
						["description"] = "This item gives you 4 bars of Rested Experience when consumed.",
					}),
					i(217314),	-- Moonsight Rifle
					i(217315),	-- Precision Bow
					i(3463),	-- Silver Star
					i(3464),	-- Feathered Arrow
					i(3465),	-- Exploding Shot
				},
			}),
			q(79974, {	-- Wet Job
				sourceQuest = 79980,	-- Scramble
				provider = { "o", 424012 },	-- Mound of Dirt
				coord = { 39.6, 49.9, STONETALON_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { LOCH_MODAN },
				lvl = 14,
				groups = {
					i(20709),	-- Rumsey Rum Light
					i(5432),	-- Hickory Pipe
				},
			}),
		}),
	},
});
