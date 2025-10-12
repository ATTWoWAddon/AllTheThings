-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(WORLD_BOSSES, {
		n(ACHIEVEMENTS, {
			ach(61076, {	-- Broken Isles World Bosses
				crit(108442, {	-- Ana-Mouz
					["_npcs"] = { 109943 },
				}),
				crit(108436, {	-- Calamir
					["_npcs"] = { 109331 },
				}),
				crit(108438, {	-- Drugon the Frostblood
					["_npcs"] = { 110378 },
				}),
				crit(108441, {	-- Humongris
					["_npcs"] = { 108879 },
				}),
				crit(108437, {	-- Levantus
					["_npcs"] = { 108829 },
				}),
				crit(108443, {	-- Na'zak the Fiend
					["_npcs"] = { 110321 },
				}),
				crit(108439, {	-- Nithogg
					["_npcs"] = { 107544 },
				}),
				crit(108444, {	-- Shar'thos
					["_npcs"] = { 108678 },
				}),
				crit(108440, {	-- The Soultakers
					["_quests"] = { 42269 },
				}),
				crit(108435, {	-- Withered J'im
					["_npcs"] = { 112350 },
				}),
			}),
			ach(61080, {	-- Broken Shore World Bosses
				crit(108447, {	-- Apocron
					["_npcs"] = { 121124 },
				}),
				crit(108446, {	-- Brutallus
					["_npcs"] = { 117239 },
				}),
				crit(108445, {	-- Malificus
					["_npcs"] = { 117303 },
				}),
				crit(108448, {	-- Si'vash
					["_npcs"] = { 117470 },
				}),
			}),
		}),
		e(1790, {	-- Ana-Mouz
			["coord"] = { 31.0, 65.5, SURAMAR },
			["creatureID"] = 109943,	-- Ana-Mouz
			["questID"] = 43512,	-- Ana-Mouz (WQ)
			["isWeekly"] = true,
			["isRaid"] = true,
			["groups"] = {
				ach(42559),	-- Ana-Mouz
			},
		}),
		e(1956, {	-- Apocron
			["coord"] = { 59.2, 62.6, BROKEN_SHORE },
			["creatureID"] = 121124,	-- Apocron
			["questID"] = 47061,	-- Apocron (WQ)
			["isWeekly"] = true,
			["isRaid"] = true,
			["groups"] = {
				ach(42662),	-- Apocron
			},
		}),
		e(1883, {	-- Brutallus
			["coord"] = { 59.2, 28.4, BROKEN_SHORE },
			["creatureID"] = 117239,	-- Brutallus
			["questID"] = 46947,	-- Brutallus (WQ)
			["isWeekly"] = true,
			["isRaid"] = true,
			["groups"] = {
				ach(42643),	-- Brutallus
			},
		}),
		e(1774, {	-- Calamir
			["coord"] = { 37.7, 83.6, AZSUNA },
			["creatureID"] = 109331,	-- Calamir
			["questID"] = 43193,	-- Calamitous Intent (WQ)
			["isWeekly"] = true,
			["isRaid"] = true,
			["groups"] = {
				ach(42526),	-- Calamir
			},
		}),
		e(1789, {	-- Drugon the Frostblood
			["coord"] = { 58.4, 72.6, HIGHMOUNTAIN },
			["creatureID"] = 110378,	-- Drugon the Frostblood
			["questID"] = 43448,	-- The Frozen King (WQ)
			["isWeekly"] = true,
			["isRaid"] = true,
			["groups"] = {
				ach(42542),	-- Drugon the Frostblood
			},
		}),
		e(1795, {	-- Flotsam
			["coord"] = { 49.2, 7.60, HIGHMOUNTAIN },
			["creatureID"] = 99929,	-- Flotsam
			["questID"] = 43985,	-- A Dark Tide (WQ)
			["isWeekly"] = true,
			["isRaid"] = true,
			["groups"] = {
				ach(42614),	-- Flotsam
			},
		}),
		e(1770, {	-- Humongris <The Wizard>
			["coord"] = { 24.6, 69.6, VALSHARAH },
			["creatureID"] = 108879,	-- Humongris
			["questID"] = 42819,	-- Pocket Wizard (WQ)
			["isWeekly"] = true,
			["isRaid"] = true,
			["groups"] = {
				ach(42529),	-- Humongris
			},
		}),
		e(1769, {	-- Levantus
			["coord"] = { 43.0, 67.6, AZSUNA },
			["creatureID"] = 108829,	-- Levantus
			["questID"] = 43192,	-- Terror of the Deep (WQ)
			["isWeekly"] = true,
			["isRaid"] = true,
			["groups"] = {
				ach(42527),	-- Levantus
			},
		}),
		e(1884, {	-- Malificus
			["coord"] = { 59.8, 27.8, BROKEN_SHORE },
			["creatureID"] = 117303,	-- Malificus
			["questID"] = 46948,	-- Malificus (WQ)
			["isWeekly"] = true,
			["isRaid"] = true,
			["groups"] = {
				ach(42629),	-- Malificus
			},
		}),
		e(1783, {	-- Na'zak the Fiend
			["coord"] = { 36.0, 66.4, 685 },	-- Shattered Locus (Floor #2)
			["creatureID"] = 110321,	-- Na'zak the Fiend
			["questID"] = 43513,	-- Na'zak the Fiend (WQ)
			["maps"] = { SURAMAR },
			["isWeekly"] = true,
			["isRaid"] = true,
			["groups"] = {
				ach(42637),	-- Na'zak the Fiend
			},
		}),
		e(1749, {	-- Nithogg
			["coord"] = { 46.6, 30.0, STORMHEIM },
			["creatureID"] = 107544,	-- Nithogg
			["questID"] = 42270,	-- Scourge of the Skies (WQ)
			["isWeekly"] = true,
			["isRaid"] = true,
			["groups"] = {
				ach(42536),	-- Nithogg
			},
		}),
		e(1763, {	-- Shar'thos
			["coord"] = { 55.6, 43.2, VALSHARAH },
			["creatureID"] = 108678,	-- Shar'thos
			["questID"] = 42779,	-- The Sleeping Corruption (WQ)
			["isWeekly"] = true,
			["isRaid"] = true,
			["groups"] = {
				ach(42659),	-- Shar'thos
			},
		}),
		e(1885, {	-- Si'vash
			["coord"] = { 89.6, 33.0, BROKEN_SHORE },
			["creatureID"] = 117470,	-- Si'vash
			["questID"] = 46945,	-- Si'vash (WQ)
			["isWeekly"] = true,
			["isRaid"] = true,
			["groups"] = {
				ach(42530),	-- Si'vash
			},
		}),
		e(1756, {	-- The Soultakers
			["crs"] = {
				106981,	-- Captain Hring
				106982,	-- Reaver Jdorn
				106984,	-- Soultrapper Mevra
			},
			["coord"] = { 78.2, 8.60, STORMHEIM },
			["questID"] = 42269,	-- The Soultakers (WQ)
			["isWeekly"] = true,
			["isRaid"] = true,
			["groups"] = {
				ach(42610),	-- The Soultakers
			},
		}),
		e(1796, {	-- Withered J'im
			["coord"] = { 52.6, 80.8, AZSUNA },
			["creatureID"] = 112350,	-- Withered J'im
			["questID"] = 44287,	-- DEADLY: Withered J'im (WQ)
			["isWeekly"] = true,
			["isRaid"] = true,
			["groups"] = {
				ach(42669),	-- Withered J'im
			},
		}),
	}),
})));
