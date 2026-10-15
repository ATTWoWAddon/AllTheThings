---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.SILVERPINE_FOREST, {
	groups = {
		n(QUESTS, {
			q(91859, {	-- A Curious Pair
				qg = 248840,	-- Trevan Rol
				coord = { 43.4, 41.0, MAP.SILVERPINE_FOREST },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 18,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(95111, {	-- An Underrated Talent
				qg = 248840,	-- Trevan Rol
				coord = { 43.4, 41.0, MAP.SILVERPINE_FOREST },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 20,
				timeline = { TIMELINE.ADDED_1_60_1 },
				qi = 268192,	-- Bundle of Blacksmithing Materials (QI!)
			}),
			q(98298, {	-- Arugal's Folly
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.81, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Worgen Bits
						provider = { "i", 280375 },	-- Worgen Bits (QI!)
					}),
					i(281315),	-- Foulfur Gloves
				},
			}),
			q(94505, {	-- Call of Water
				qg = 5895,	-- Minor Manifestation of Water
				coord = { 38.65, 44.58, MAP.SILVERPINE_FOREST },
				races = ALLIANCE_ONLY,
				classes = { SHAMAN },
				lvl = 20,
				timeline = { TIMELINE.ADDED_1_60_1 },
				qi = 7813,	-- Shard of Water (QI!)
				groups = { i(5177) },	-- Water Totem
			}),
			q(91862, {	-- Lumina Windsinger
				qg = 248755,	-- Lumina Windsinger
				coord = { 64.0, 34.0, MAP.SILVERPINE_FOREST },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 18,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Fenris Isle Key
						provider = { "i", 267412 },	-- Fenris Isle Key (QI!)
					}),
				},
			}),
			q(91921, {	-- Return to Quinn (Again)
				qg = 1937,	-- Apothecary Renferrel <Royal Apothecary Society>
				coord = { 42.8, 40.86, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				timeline = { TIMELINE.ADDED_1_60_1 },
				qi = 248930,	-- Quinn's Potion (QI!)
			}),
			q(98299, {	-- Stop the Spread
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.81, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Haggard Refugee
						provider = { "n", 2053 },	-- Haggard Refugee
					}),
					objective(2, {	-- Sickly Refugee
						provider = { "n", 2054 },	-- Sickly Refugee
					}),
				},
			}),
			q(95884, {	-- The Offering Stone
				provider = { "i", 271343 },	-- Note Scrap (QS!)
				coord = { 57.12, 71.02, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 20,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Note Scrap
						provider = { "i", 271343 },	-- Note Scrap (QS!)
					}),
				},
			}),
			q(95981, {	-- Watching the Roads
				qg = 2121,	-- Shadow Priest Allister
				coord = { 43.98, 40.93, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Dalaran Watcher
						provider = { "n", 1888 },	-- Dalaran Watcher
					}),
					objective(2, {	-- Dalaran Wizard
						provider = { "n", 1889 },	-- Dalaran Wizard
					}),
					i(281265),	-- Roadwatcher's Confidence
				},
			}),
			q(91920, {	-- Wild Eyes
				qg = 1951,	-- Quinn Yorick <Deathstalker>
				coord = { 53.43, 12.59, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Murloc Eye
						provider = { "i", 730 },	-- Murloc Eye
					}),
					i(4597),	-- Recipe: Discolored Healing Potion (RECIPE!)
				},
			}),
		}),
	},
});
