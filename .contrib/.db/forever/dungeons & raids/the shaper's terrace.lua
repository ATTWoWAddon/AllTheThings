-----------------------------------------------------
--  D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(3001, {	-- The Shaper's Terrace
	-- Blizzard lists it for levels 58-60.
	--lore = "",
	icon = 409547,
	zoneTextAreaID = 16667,	-- The Shaper's Terrace
	coord = { 48.2, 6.0, MAP.UNGORO_CRATER },
	timeline = { TIMELINE.ADDED_1_60_1 },
	lvl = 58,
	groups = {
		n(QUESTS, {

			q(95928, {	-- Crystalline Elements
				qg = 263445,	-- Mayena Earthseeker
				coord = { 34.8, 22.0, MAP.MULGORE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Fiery Crystal
						provider = { "i", 271894 },	-- Fiery Crystal
					}),
					objective(2, {	-- 0/1 Charged Crystal
						provider = { "i", 271898 },	-- Charged Crystal
					}),
					objective(3, {	-- 0/1 Noxious Crystal
						provider = { "i", 271902 },	-- Noxious Crystal
					}),
					objective(4, {	-- 0/1 Moist Crystal
						provider = { "i", 271912 },	-- Moist Crystal
					}),
					i(279904),	-- Crystalline Pauldrons
					i(279906),	-- Potent Treads
				},
			}),
			q(95790, {	-- Digestible Research
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/15 Partially Digested Journal Page
						provider = { "i", 271972 },	-- Partially Digested Journal Page
					}),
					i(279931),	-- Lost Researcher's Hood
					i(279901),	-- Expeditionary Legplates
				},
			}),
			q(97049, {	-- Essence of Seeping Slimes
				qg = 10136,	-- Chemist Fuely
				coord = { 47.6, 73.0, MAP.UNDERCITY },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/8 Seeping Slime Essence
						provider = { "i", 276235 },	-- Seeping Slime Essence
					}),
					i(279932),	-- Slime-Resistant Shroud
					i(279902),	-- Reinforced Muck Protectors
				},
			}),
			q(95925, {	-- Mapping the Way Forward
				qg = 8256,	-- Curator Thorius
				qi = 271770,	-- Explorers' League Cartographer's Kit (PQI!)
				coord = { 71.4, 16.2, MAP.IRONFORGE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 55,
				groups = {
					objective(1),	-- 0/1 Pillar of Assimilation
					objective(2),	-- 0/1 The Achromatic Crystal
					objective(3),	-- 0/1 The Western Gates
					objective(4),	-- 0/1 The Regrowth Vestibule
					objective(5),	-- 0/1 The Unearthed Stone Watcher
					i(279908),	-- Crystal-Infused Cleaver
					i(279910),	-- Beastslayer's Trident
					i(279912),	-- Faintly Glowing Orb
				},
			}),
			q(95924, {	-- Panic at the Digsite
				qg = 8256,	-- Curator Thorius
				coord = { 71.4, 16.2, MAP.IRONFORGE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Venomridge slain
						provider = { "n", 261813 },	-- Venomridge
					}),
					objective(2, {	-- 0/6 Ravasaur Matriarch slain
						provider = { "n", 253215 },	-- Ravasaur Matriarch
					}),
					objective(3, {	-- 0/8 Ironhide Ravasaur slain
						provider = { "n", 261786 },	-- Ironhide Ravasaur
					}),
					i(279903),	-- Diemetradon Scale Spaulders
					i(279905),	-- Ravasaur Hide Footpads
				},
			}),
			q(95926, {	-- The Dark Crystal
				qg = 2055,	-- Master Apothecary Faranell
				coord = { 48.4, 69.4, MAP.UNDERCITY },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Drained Crystal Fragment
						provider = { "i", 271771 },	-- Drained Crystal Fragment
					}),
					i(279908),	-- Crystal-Infused Cleaver
					i(279910),	-- Beastslayer's Trident
					i(279912),	-- Faintly Glowing Orb
				},
			}),
		}),
		e(3498, {	-- Titanosaur
			creatureID = 253201,	-- Titanosaur
		}),
		e(3499, {	-- Ravasaur Hunters
			crs = {
				253214,	-- Ravasaur Hunter
				262688,	-- Ravasaur Hunter
			},
		}),
		e(3500, {	-- Thunderhoof
			creatureID = 261812,	-- Thunderhoof
		}),
		e(3501, {	-- Venomridge
			creatureID = 261813,	-- Venomridge
		}),
		e(3507, {	-- Direhorn Matriarch
			creatureID = 262127,	-- Direhorn Matriarch
			groups = {
				i(285951),	-- Direhorn Matriarch's Heart
			},
		}),
		e(3503, {	-- Cinder
			creatureID = 261974,	-- Cinder
		}),
		-- TODO: King Op's creatureID isn't on Wowhead yet; encounters without one crash the addon, so it stays commented out.
		--e(3504),	-- King Op
		e(3597, {	-- Snowtalon
			creatureID = 262297,	-- Snowtalon
		}),
		e(3505, {	-- Bolt
			creatureID = 262081,	-- Bolt
		}),
		e(3600, {	-- Vitrix
			creatureID = 272561,	-- Vitrix
		}),
		e(3502, {	-- Nanaya
			creatureID = 261809,	-- Nanaya
			groups = {
				i(273116),	-- Blueprint: Arcane Forge (RECIPE!)
				i(273128),	-- Maker's Spark
				i(285952),	-- Stone Heart of the Watcher
			},
		}),
	},
});
