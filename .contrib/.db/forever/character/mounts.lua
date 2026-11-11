-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, {
	cl(PALADIN, {
		filter(MOUNTS, {
			mount(13819, {	-- Warhorse (MOUNT!)
				races = { HUMAN, DWARF },
				classes = { PALADIN },
				lvl = 40,
			}),
		}),
	}),
	cl(WARLOCK, {
		filter(MOUNTS, {
			mount(5784, {	-- Felsteed (MOUNT!)
				classes = { WARLOCK },
				lvl = 40,
			}),
		}),
	}),
	n(QUESTS, {
		q(96997, {	-- A Steed in Death as They Were in Life
			qg = 4731,	-- Zachariah Post <Undead Horse Merchant>
			coord = { 59.8, 52.6, MAP.TIRISFAL_GLADES },
			timeline = { TIMELINE.ADDED_1_60_1 },
			races = { UNDEAD },
			lvl = 40,
			sym = {{"select","itemID",
				276063,	-- Black Skeletal Horse (MOUNT!)
				13332,	-- Blue Skeletal Horse (MOUNT!)
				13333,	-- Brown Skeletal Horse (MOUNT!)
				13331,	-- Red Skeletal Horse (MOUNT!)
			}},
			groups = {
				objective(1, {	-- 0/1 Red Skeletal Horse
					provider = { "n", 267357 },	-- Red Skeletal Horse
					coord = { 59.8, 52.6, MAP.TIRISFAL_GLADES },
				}),
				objective(2, {	-- 0/1 Brown Skeletal Horse
					provider = { "n", 267364 },	-- Brown Skeletal Horse
					coord = { 59.8, 52.6, MAP.TIRISFAL_GLADES },
				}),
				objective(3, {	-- 0/1 Blue Skeletal Horse
					provider = { "n", 267358 },	-- Blue Skeletal Horse
					coord = { 59.8, 52.6, MAP.TIRISFAL_GLADES },
				}),
				objective(4, {	-- 0/1 Black Skeletal Horse
					provider = { "n", 267354 },	-- Black Skeletal Horse
					coord = { 60.0, 52.4, MAP.TIRISFAL_GLADES },
				}),
			},
		}),
		q(95511, {	-- Your First Feline Friend
			qg = 4730,	-- Lelanai <Saber Handler>
			coord = { 38.4, 15.6, MAP.DARNASSUS },
			timeline = { TIMELINE.ADDED_1_60_1 },
			races = { NIGHTELF },
			lvl = 40,
			sym = {{"select","itemID",
				8632,	-- Reins of the Spotted Frostsaber (MOUNT!)
				274706,	-- Reins of the Striped Dawnsaber (MOUNT!)
				8631,	-- Reins of the Striped Frostsaber (MOUNT!)
				8629,	-- Reins of the Striped Nightsaber (MOUNT!)
			}},
			groups = {
				objective(1, {	-- 0/1 Inspect the Striped Frostsaber
					provider = { "n", 261529 },	-- Riding Striped Frostsaber
					coord = { 38.6, 15.6, MAP.DARNASSUS },
				}),
				objective(2, {	-- 0/1 Inspect the Striped Nightsaber
					provider = { "n", 261578 },	-- Riding Striped Nightsaber
					coord = { 38.6, 15.6, MAP.DARNASSUS },
				}),
				objective(3, {	-- 0/1 Inspect the Spotted Frostsaber
					provider = { "n", 261579 },	-- Riding Spotted Frostsaber
					coord = { 38.8, 15.8, MAP.DARNASSUS },
				}),
				objective(4, {	-- 0/1 Inspect the Striped Dawnsaber
					provider = { "n", 265472 },	-- Riding Striped Dawnsaber
					coord = { 38.8, 15.6, MAP.DARNASSUS },
				}),
			},
		}),
		q(97045, {	-- Your First Horse (Elwynn Forest)
			qg = 384,	-- Katie Hunter <Horse Breeder>
			coord = { 84.0, 65.4, MAP.ELWYNN_FOREST },
			timeline = { TIMELINE.ADDED_1_60_1 },
			races = { HUMAN },
			lvl = 40,
			sym = {{"select","itemID",
				5656,	-- Brown Horse Bridle (MOUNT!)
				5655,	-- Chestnut Mare Bridle (MOUNT!)
				2414,	-- Pinto Bridle (MOUNT!)
			}},
			groups = {
				objective(1, {	-- 0/1 Pinto Horse
					provider = { "n", 267678 },	-- Pinto
					coord = { 84.0, 64.8, MAP.ELWYNN_FOREST },
				}),
				objective(2, {	-- 0/1 Brown Horse
					provider = { "n", 267674 },	-- Brown Horse
					coord = { 84.2, 64.6, MAP.ELWYNN_FOREST },
				}),
				objective(3, {	-- 0/1 Chestnut Mare
					provider = { "n", 267677 },	-- Chestnut Mare
					coord = { 84.8, 64.8, MAP.ELWYNN_FOREST },
				}),
			},
		}),
		q(97171, {	-- Your First Horse (Wetlands)
			qg = 1460,	-- Unger Statforth <Horse Breeder>
			coord = { 8.6, 54.4, MAP.WETLANDS },
			timeline = { TIMELINE.ADDED_1_60_1 },
			races = { HUMAN },
			lvl = 40,
			sym = {{"select","itemID",
				2411,	-- Black Stallion Bridle (MOUNT!)
				5656,	-- Brown Horse Bridle (MOUNT!)
				5655,	-- Chestnut Mare Bridle (MOUNT!)
				2414,	-- Pinto Bridle (MOUNT!)
			}},
			groups = {
				objective(1, {	-- 0/1 Pinto Horse
					provider = { "n", 268318 },	-- Pinto
					coord = { 8.2, 54.4, MAP.WETLANDS },
				}),
				objective(2, {	-- 0/1 Brown Horse
					provider = { "n", 268314 },	-- Brown Horse
					coord = { 8.0, 54.0, MAP.WETLANDS },
				}),
				objective(3, {	-- 0/1 Chestnut Mare
					provider = { "n", 268316 },	-- Chestnut Mare
					coord = { 8.0, 54.2, MAP.WETLANDS },
				}),
				objective(4, {	-- 0/1 Black Stallion
					provider = { "n", 268313 },	-- Black Stallion
					coord = { 8.0, 54.0, MAP.WETLANDS },
				}),
			},
		}),
		q(98166, {	-- Your First Horse (Dustwallow Marsh)
			-- TODO: giver not on Wowhead yet; the horses stand around 65.2, 51.6 in Dustwallow Marsh.
			timeline = { TIMELINE.ADDED_1_60_1 },
			races = { HUMAN },
			lvl = 40,
			sym = {{"select","itemID",
				5656,	-- Brown Horse Bridle (MOUNT!)
				5655,	-- Chestnut Mare Bridle (MOUNT!)
				2414,	-- Pinto Bridle (MOUNT!)
			}},
			groups = {
				objective(1, {	-- 0/1 Pinto Horse
					provider = { "n", 270544 },	-- Pinto
					coord = { 65.2, 51.8, MAP.DUSTWALLOW_MARSH },
				}),
				objective(2, {	-- 0/1 Brown Horse
					provider = { "n", 270542 },	-- Brown Horse
					coord = { 65.2, 51.4, MAP.DUSTWALLOW_MARSH },
				}),
				objective(3, {	-- 0/1 Chestnut Mare
					provider = { "n", 270543 },	-- Chestnut Mare
					coord = { 65.2, 51.8, MAP.DUSTWALLOW_MARSH },
				}),
			},
		}),
		q(99326, {	-- Your First Horse (Hillsbrad Foothills)
			-- TODO: giver not on Wowhead yet; the horses stand around 52.2, 55.4 in Hillsbrad Foothills.
			timeline = { TIMELINE.ADDED_1_60_1 },
			races = { HUMAN },
			lvl = 40,
			sym = {{"select","itemID",
				5656,	-- Brown Horse Bridle (MOUNT!)
				5655,	-- Chestnut Mare Bridle (MOUNT!)
				2414,	-- Pinto Bridle (MOUNT!)
			}},
			groups = {
				objective(1, {	-- 0/1 Pinto Horse
					provider = { "n", 276789 },	-- Pinto
					coord = { 52.2, 55.2, MAP.HILLSBRAD_FOOTHILLS },
				}),
				objective(2, {	-- 0/1 Brown Horse
					provider = { "n", 276788 },	-- Brown Horse
					coord = { 52.2, 55.8, MAP.HILLSBRAD_FOOTHILLS },
				}),
				objective(3, {	-- 0/1 Chestnut Mare
					provider = { "n", 276790 },	-- Chestnut Mare
					coord = { 52.2, 55.4, MAP.HILLSBRAD_FOOTHILLS },
				}),
			},
		}),
		q(97046, {	-- Your First Mechanostrider
			qg = 7955,	-- Milli Featherwhistle <Mechanostrider Merchant>
			coord = { 49.2, 48.0, MAP.DUN_MOROGH },
			timeline = { TIMELINE.ADDED_1_60_1 },
			races = { GNOME },
			lvl = 40,
			sym = {{"select","itemID",
				8595,	-- Blue Mechanostrider (MOUNT!)
				13321,	-- Green Mechanostrider (MOUNT!)
				8563,	-- Red Mechanostrider (MOUNT!)
				13322,	-- Unpainted Mechanostrider (MOUNT!)
			}},
			groups = {
				objective(1, {	-- 0/1 Unpainted Mechanostrider
					provider = { "n", 267688 },	-- Unpainted Mechanostrider
					coord = { 49.0, 48.0, MAP.DUN_MOROGH },
				}),
				objective(2, {	-- 0/1 Green Mechanostrider
					provider = { "n", 267684 },	-- Green Mechanostrider
					coord = { 49.0, 48.2, MAP.DUN_MOROGH },
				}),
				objective(3, {	-- 0/1 Blue Mechanostrider
					provider = { "n", 267687 },	-- Blue Mechanostrider
					coord = { 49.0, 48.0, MAP.DUN_MOROGH },
				}),
				objective(4, {	-- 0/1 Red Mechanostrider
					provider = { "n", 267683 },	-- Red Mechanostrider
					coord = { 49.2, 48.2, MAP.DUN_MOROGH },
				}),
			},
		}),
		q(96996, {	-- Your First Riding Galestrider
			qg = 265756,	-- Genn Fairweather
			coord = { 53.8, 81.2, MAP.ZEPHRAS_ISLE },
			timeline = { TIMELINE.ADDED_1_60_1 },
			races = { SKYBORNE_HORDE },
			lvl = 40,
			sym = {{"select","itemID",
				269681,	-- Empyrean Galestrider (MOUNT!)
				269683,	-- Stormy Galestrider (MOUNT!)
				274930,	-- Umber Galestrider (MOUNT!)
			}},
			groups = {
				objective(1, {	-- 0/1 Empyrean Galestrider
					provider = { "n", 267304 },	-- Empyrean Galestrider
					coord = { 53.6, 81.2, MAP.ZEPHRAS_ISLE },
				}),
				objective(2, {	-- 0/1 Stormy Galestrider
					provider = { "n", 267305 },	-- Stormy Galestrider
					coord = { 53.6, 81.2, MAP.ZEPHRAS_ISLE },
				}),
				objective(3, {	-- 0/1 Umber Galestrider
					provider = { "n", 267306 },	-- Umber Galestrider
					coord = { 53.8, 81.2, MAP.ZEPHRAS_ISLE },
				}),
			},
		}),
		q(96982, {	-- Your First Riding Kodo (Mulgore)
			qg = 3685,	-- Harb Clawhoof <Kodo Mounts>
			coord = { 47.4, 58.4, MAP.MULGORE },
			timeline = { TIMELINE.ADDED_1_60_1 },
			races = { TAUREN },
			lvl = 40,
			sym = {{"select","itemID",
				15290,	-- Brown Kodo (MOUNT!)
				15277,	-- Gray Kodo (MOUNT!)
				275993,	-- White Kodo (MOUNT!)
			}},
			groups = {
				objective(1, {	-- 0/1 Grey Riding Kodo
					provider = { "n", 267226 },	-- Grey Riding Kodo
					coord = { 46.8, 62.0, MAP.MULGORE },
				}),
				objective(2, {	-- 0/1 Brown Riding Kodo
					provider = { "n", 267227 },	-- Brown Riding Kodo
					coord = { 46.8, 62.0, MAP.MULGORE },
				}),
				objective(3, {	-- 0/1 White Riding Kodo
					provider = { "n", 267216 },	-- White Riding Kodo
					coord = { 46.8, 62.0, MAP.MULGORE },
				}),
			},
		}),
		q(97446, {	-- Your First Riding Kodo (Stonetalon Mountains)
			qg = 269152,	-- Tylana Clawhoof <Kodo Mounts>
			-- TODO: coord; her kodos stand around 46.2, 59.8 in Stonetalon Mountains.
			timeline = { TIMELINE.ADDED_1_60_1 },
			races = { TAUREN },
			lvl = 40,
			sym = {{"select","itemID",
				15290,	-- Brown Kodo (MOUNT!)
				15277,	-- Gray Kodo (MOUNT!)
				277960,	-- Lavender Kodo (MOUNT!)
				275993,	-- White Kodo (MOUNT!)
			}},
			groups = {
				objective(1, {	-- 0/1 Grey Riding Kodo
					provider = { "n", 269139 },	-- Grey Riding Kodo
					coord = { 46.2, 59.8, MAP.STONETALON_MOUNTAINS },
				}),
				objective(2, {	-- 0/1 Brown Riding Kodo
					provider = { "n", 269140 },	-- Brown Riding Kodo
					coord = { 46.2, 59.8, MAP.STONETALON_MOUNTAINS },
				}),
				objective(3, {	-- 0/1 White Riding Kodo
					provider = { "n", 269138 },	-- White Riding Kodo
					coord = { 46.0, 59.8, MAP.STONETALON_MOUNTAINS },
				}),
				objective(4, {	-- 0/1 Lavender Riding Kodo
					provider = { "n", 269141 },	-- Lavender Riding Kodo
					coord = { 46.2, 59.8, MAP.STONETALON_MOUNTAINS },
				}),
			},
		}),
		q(97017, {	-- Your First Riding Ram
			qg = 1261,	-- Veron Amberstill <Ram Breeder>
			coord = { 63.4, 50.6, MAP.DUN_MOROGH },
			timeline = { TIMELINE.ADDED_1_60_1 },
			races = { DWARF },
			lvl = 40,
			sym = {{"select","itemID",
				5872,	-- Brown Ram (MOUNT!)
				5864,	-- Gray Ram (MOUNT!)
				5873,	-- White Ram (MOUNT!)
			}},
			groups = {
				objective(1, {	-- 0/1 White Ram
					provider = { "n", 267474 },	-- White Ram
					coord = { 64.2, 50.2, MAP.DUN_MOROGH },
				}),
				objective(2, {	-- 0/1 Brown Ram
					provider = { "n", 267473 },	-- Brown Ram
					coord = { 64.0, 50.2, MAP.DUN_MOROGH },
				}),
				objective(3, {	-- 0/1 Gray Ram
					provider = { "n", 267475 },	-- Gray Ram
					coord = { 64.0, 50.4, MAP.DUN_MOROGH },
				}),
			},
		}),
		q(96989, {	-- Your First Riding Raptor
			qg = 7952,	-- Zjolnir <Raptor Handler>
			coord = { 55.2, 75.6, MAP.DUROTAR },
			timeline = { TIMELINE.ADDED_1_60_1 },
			races = { TROLL },
			lvl = 40,
			sym = {{"select","itemID",
				8588,	-- Whistle of the Emerald Raptor (MOUNT!)
				8591,	-- Whistle of the Turquoise Raptor (MOUNT!)
				8592,	-- Whistle of the Violet Raptor (MOUNT!)
			}},
			groups = {
				objective(1, {	-- 0/1 Emerald Riding Raptor
					provider = { "n", 267291 },	-- Emerald Riding Raptor
					coord = { 55.2, 75.6, MAP.DUROTAR },
				}),
				objective(2, {	-- 0/1 Turquoise Riding Raptor
					provider = { "n", 267297 },	-- Turquoise Riding Raptor
					coord = { 55.2, 75.4, MAP.DUROTAR },
				}),
				objective(3, {	-- 0/1 Violet Riding Raptor
					provider = { "n", 267298 },	-- Violet Riding Raptor
					coord = { 55.2, 75.6, MAP.DUROTAR },
				}),
			},
		}),
		q(96994, {	-- Your First Riding Wolf
			qg = 3362,	-- Ogunaro Wolfrunner <Kennel Master>
			coord = { 69.2, 12.6, MAP.ORGRIMMAR },
			timeline = { TIMELINE.ADDED_1_60_1 },
			races = { ORC },
			lvl = 40,
			sym = {{"select","itemID",
				1041,	-- Horn of the Black Wolf (MOUNT!)
				5668,	-- Horn of the Brown Wolf (MOUNT!)
				5665,	-- Horn of the Dire Wolf (MOUNT!)
				1132,	-- Horn of the Timber Wolf (MOUNT!)
			}},
			groups = {
				objective(1, {	-- 0/1 Brown Riding Wolf
					provider = { "n", 267299 },	-- Brown Riding Wolf
					coord = { 69.6, 12.4, MAP.ORGRIMMAR },
				}),
				objective(2, {	-- 0/1 Dire Riding Wolf
					provider = { "n", 267300 },	-- Dire Riding Wolf
					coord = { 69.6, 12.2, MAP.ORGRIMMAR },
				}),
				objective(3, {	-- 0/1 Timber Riding Wolf
					provider = { "n", 267301 },	-- Timber Riding Wolf
					coord = { 69.4, 12.6, MAP.ORGRIMMAR },
				}),
				objective(4, {	-- 0/1 Black Riding Wolf
					provider = { "n", 267302 },	-- Black Riding Wolf
					coord = { 69.4, 12.0, MAP.ORGRIMMAR },
				}),
			},
		}),
	}),
});
