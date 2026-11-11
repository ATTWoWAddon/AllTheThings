--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

-- https://www.wowhead.com/event=327/lunar-festival
LUNAR_FESTIVAL_HEADER = createHeader({
	readable = "Lunar Festival",
	constant = "LUNAR_FESTIVAL_HEADER",
	icon = [[~_.asset("Holiday_Lunar")]],
	eventID = EVENTS.LUNAR_FESTIVAL,
	eventSchedule = {
		1,	-- Recurring
		1, 28, 10, 0,	-- 01/28 at 10:00 AM
		2, 18, 10, 0	-- 02/18 at 10:00 AM
	},
	text = {
		en = "Lunar Festival",
		de = "Mondfest",
		es = "Festival Lunar",
		mx = "Festival Lunar",
		fr = "Fête lunaire",
		it = "Celebrazione della Luna",
		ko = "달의 축제",
		pt = "Festival da Lua",
		ru = "Лунный фестиваль",
		cn = "春节",
		tw = "新年慶典",
	},
});
-- Since we can't use achievement headers for pre-3.0.2 period, we use these
local ELDERS_OF_EASTERN_KINGDOMS = createHeader({
	readable = "Elders of Eastern Kingdoms",
	icon = 135982,	-- Elders of... Achievement icon
	text = {
		en = "Elders of Eastern Kingdoms",
		de = "Die Urahnen der Östlichen Königreiche",
		es = "Ancestros de los Reinos del Este",
		mx = "Ancestros de los Reinos del Este",
		fr = "Les Anciens des royaumes de l'Est",
		it = "Anziani dei Regni Orientali",
		ko = "동부 왕국의 장로",
		pt = "Anciãos dos Reinos do Leste",
		ru = "Предки Восточных королевств",
		cn = "东部王国的长者",
		tw = "東部王國的長者",
	},
});
local ELDERS_OF_KALIMDOR = createHeader({
	readable = "Elders of Kalimdor",
	icon = 135982,	-- Elders of... Achievement icon
	text = {
		en = "Elders of Kalimdor",
		de = "Die Urahnen von Kalimdor",
		es = "Ancestros de Kalimdor",
		mx = "Ancestros de Kalimdor",
		fr = "Les Anciens de Kalimdor",
		it = "Anziani di Kalimdor",
		ko = "칼림도어의 장로",
		pt = "Anciãos de Kalimdor",
		ru = "Предки Калимдора",
		cn = "卡利姆多的长者",
		tw = "卡林多的長者",
	},
});
local ELDERS_OF_THE_ALLIANCE = createHeader({
	readable = "Elders of the Alliance",
	icon = 135982,	-- Elders of... Achievement icon
	text = {
		en = "Elders of the Alliance",
		de = "Die Urahnen der Allianz",
		es = "Ancestros de la Alianza",
		mx = "Ancestros de la Alianza",
		fr = "Les Anciens de l'Alliance",
		it = "Anziani dell'Alleanza",
		ko = "얼라이언스의 장로",
		pt = "Anciãos da Aliança",
		ru = "Предки Альянса",
		cn = "联盟的长者",
		tw = "聯盟的長者",
	},
});
local ELDERS_OF_THE_DUNGEONS = createHeader({
	readable = "Elders of the Dungeons",
	icon = 135982,	-- Elders of... Achievement icon
	text = {
		en = "Elders of the Dungeons",
		de = "Die Urahnen der Dungeons",
		es = "Ancestros de las mazmorras",
		mx = "Ancestros de los calabozos",
		fr = "Les Anciens des donjons",
		it = "Anziani delle Spedizioni",
		ko = "던전의 장로",
		pt = "Anciãos das Masmorras",
		ru = "Предки в подземельях",
		cn = "地下城中的长者",
		tw = "地城中的長者",
	},
});
local ELDERS_OF_THE_HORDE = createHeader({
	readable = "Elders of the Horde",
	icon = 135982,	-- Elders of... Achievement icon
	text = {
		en = "Elders of the Horde",
		de = "Die Urahnen der Horde",
		es = "Ancestros de la Horda",
		mx = "Ancestros de la Horda",
		fr = "Les Anciens de la Horde",
		it = "Anziani dell'Orda",
		ko = "호드의 장로",
		pt = "Anciãos da Horda",
		ru = "Предки Орды",
		cn = "部落的长者",
		tw = "部落的長者",
	},
});

local COIN_OF_ANCESTRY = 21100;
local YEARLY_REPUTATION = {
	aqd = {
		maxReputation = { 469, EXALTED },	-- Alliance, Exalted.
	},
	hqd = {
		maxReputation = { 67, EXALTED },	-- Horde, Exalted.
	},
	isYearly = true,
};
local preWrathEldersHeader
preWrathEldersHeader = function(headerID, achievementID, timeline, t)
	return n(headerID, {
		timeline = type(timeline) == "table" and timeline or { timeline },
		groups = bubbleDown(YEARLY_REPUTATION, t),
	});
end

root(ROOTS.Holidays, applyevent(EVENTS.LUNAR_FESTIVAL, n(LUNAR_FESTIVAL_HEADER, {
	n(MAILBOX, {
		i(21746, {	-- Lucky Red Envelope
			i(21744),	-- Lucky Rocket Cluster
			i(21745),	-- Elder's Moonstone
		}),
	}),
	n(QUESTS, {
		q(8882, {	-- Cluster Launcher
			qg = 15909,	-- Fariel Starsong <Coin of Ancestry Collector>
			coord = { 53.8, 35.3, MOONGLADE },
			cost = { { "i", COIN_OF_ANCESTRY, 5 } },
			repeatable = true,
			lvl = 55,
			groups = {
				i(21640),	-- Lunar Festival Fireworks Pack
				i(21737),	-- Schematic: Cluster Launcher (RECIPE!)
			},
		}),
		q(8880, {	-- Cluster Rockets
			qg = 15909,	-- Fariel Starsong <Coin of Ancestry Collector>
			coord = { 53.8, 35.3, MOONGLADE },
			cost = { { "i", COIN_OF_ANCESTRY, 5 } },
			repeatable = true,
			lvl = 45,
			groups = {
				i(21640),	-- Lunar Festival Fireworks Pack
				i(21741, {	-- Cluster Rocket Recipes
					i(21730),	-- Schematic: Blue Rocket Cluster (RECIPE!)
					i(21731),	-- Schematic: Green Rocket Cluster (RECIPE!)
					i(21732),	-- Schematic: Red Rocket Cluster (RECIPE!)
				}),
			},
		}),
		q(8868, {	-- Elune's Blessing
			description = "In order to summon Omen you need to fire 30 cluster rockets from the launcer at 63.73, 62.41. Any will do. The spawns Minion of Omen can be ignored.\n\nElune's Blessing is obtained from a ring of light appearing on Omen's corpse. The light does not disappear when the corpse despawns, so you might not need to fight Omen at all.",
			sourceQuest = 8883,	-- Valadar Starsong
			qg = 15864,	-- Valadar Starsong <Coin of Ancestry Collector>
			coord = { 53.6, 35.3, MOONGLADE },
			isYearly = true,
			lvl = 40,
			_drop = { "g" },
			groups = {
				objective(1, {	-- 0/1 Receive Elune's Blessing
					provider = { "n", 15467 },	-- Omen
				}),
				i(21540),	-- Elune's Lantern (TOY!)
				i(21640),	-- Lunar Festival Fireworks Pack
			},
		}),
		q(8862, {	-- Elune's Candle
			qg = 15864,	-- Valadar Starsong
			coord = { 53.6, 35.3, MOONGLADE },
			cost = { { "i", COIN_OF_ANCESTRY, 5 } },
			isYearly = true,
			lvl = 10,
			groups = {
				i(21640),	-- Lunar Festival Fireworks Pack
				i(21713),	-- Elune's Candle
			},
		}),
		q(8863, {	-- Festival Dumplings
			qg = 15864,	-- Valadar Starsong
			coord = { 53.6, 35.3, MOONGLADE },
			cost = { { "i", COIN_OF_ANCESTRY, 1 } },
			repeatable = true,
			groups = {
				i(21537),	-- Festival Dumplings
			},
		}),
		q(8864, {	-- Festive Lunar Dresses
			qg = 15864,	-- Valadar Starsong
			coord = { 53.6, 35.3, MOONGLADE },
			cost = { { "i", COIN_OF_ANCESTRY, 5 } },
			repeatable = true,
			groups = {
				i(21157),	-- Festive Green Dress
				i(21538),	-- Festive Pink Dress
				i(21539),	-- Festive Purple Dress
				i(21640),	-- Lunar Festival Fireworks Pack
			},
		}),
		q(8865, {	-- Festive Lunar Pant Suits
			qg = 15864,	-- Valadar Starsong
			coord = { 53.6, 35.3, MOONGLADE },
			cost = { { "i", COIN_OF_ANCESTRY, 5 } },
			isYearly = true,
			groups = {
				i(21541),	-- Festive Black Pant Suit
				i(21544),	-- Festive Blue Pant Suit
				i(21543),	-- Festive Teal Pant Suit
				i(21640),	-- Lunar Festival Fireworks Pack
			},
		}),
		q(8878, {	-- Festive Recipes
			qg = 15909,	-- Fariel Starsong <Coin of Ancestry Collector>
			coord = { 53.8, 35.3, MOONGLADE },
			cost = { { "i", COIN_OF_ANCESTRY, 5 } },
			repeatable = true,
			lvl = 50,
			groups = {
				i(21640),	-- Lunar Festival Fireworks Pack
				i(21722),	-- Pattern: Festival Dress (RECIPE!)
				i(21723),	-- Pattern: Festival Suit (RECIPE!)
			},
		}),
		q(8877, {	-- Firework Launcher
			qg = 15909,	-- Fariel Starsong <Coin of Ancestry Collector>
			coord = { 53.8, 35.3, MOONGLADE },
			cost = { { "i", COIN_OF_ANCESTRY, 5 } },
			repeatable = true,
			lvl = 45,
			groups = {
				i(21640),	-- Lunar Festival Fireworks Pack
				i(21738),	-- Schematic: Firework Launcher (RECIPE!)
			},
		}),
		q(8881, {	-- Large Cluster Rockets
			qg = 15909,	-- Fariel Starsong <Coin of Ancestry Collector>
			coord = { 53.8, 35.3, MOONGLADE },
			cost = { { "i", COIN_OF_ANCESTRY, 5 } },
			repeatable = true,
			lvl = 55,
			groups = {
				i(21640),	-- Lunar Festival Fireworks Pack
				i(21743, {	-- Large Cluster Rocket Recipes
					i(21733),	-- Schematic: Large Blue Rocket Cluster (RECIPE!)
					i(21734),	-- Schematic: Large Green Rocket Cluster (RECIPE!)
					i(21735),	-- Schematic: Large Red Rocket Cluster (RECIPE!)
				}),
			},
		}),
		q(8879, {	-- Large Rockets
			qg = 15909,	-- Fariel Starsong <Coin of Ancestry Collector>
			coord = { 53.8, 35.3, MOONGLADE },
			cost = { { "i", COIN_OF_ANCESTRY, 5 } },
			repeatable = true,
			lvl = 35,
			groups = {
				i(21640),	-- Lunar Festival Fireworks Pack
				i(21742, {	-- Large Rocket Recipes
					i(21727),	-- Schematic: Large Blue Rocket (RECIPE!)
					i(21728),	-- Schematic: Large Green Rocket (RECIPE!)
					i(21729),	-- Schematic: Large Red Rocket (RECIPE!)
				}),
			},
		}),
		q(8867, {	-- Lunar Fireworks
			sourceQuests = {
				8870,	-- The Lunar Festival (A)
				8871,	-- The Lunar Festival (A)
				8872,	-- The Lunar Festival (A)
				8873,	-- The Lunar Festival (H)
				8874,	-- The Lunar Festival (H)
				8875,	-- The Lunar Festival (H)
			},
			qg = 15895,	-- Lunar Festival Harbinger
			coords = {
				{ 32.5, 53.0, ELWYNN_FOREST },
				{ 28.8, 16.2, IRONFORGE },
				{ 65.6, 36.0, UNDERCITY },
				{ 71.1, 28.2, THUNDER_BLUFF },
				{ 49.1, 55.8, ORGRIMMAR },
				{ 38.6, 30.3, DARNASSUS },
			},
			isYearly = true,
			groups = {
				i(21711),	-- Lunar Festival Invitation
			},
		}),
		q(8876, {	-- Small Rockets
			qg = 15909,	-- Fariel Starsong <Coin of Ancestry Collector>
			coord = { 53.8, 35.3, MOONGLADE },
			cost = { { "i", COIN_OF_ANCESTRY, 5 } },
			repeatable = true,
			lvl = 25,
			groups = {
				i(21640),	-- Lunar Festival Fireworks Pack
				i(21740, {	-- Small Rocket Recipes
					i(21724),	-- Schematic: Small Blue Rocket (RECIPE!)
					i(21725),	-- Schematic: Small Green Rocket (RECIPE!)
					i(21726),	-- Schematic: Small Red Rocket (RECIPE!)
				}),
			},
		}),
		q(8870, {	-- The Lunar Festival (A)
			qg = 15892,	-- Lunar Festival Emissary
			maps = { IRONFORGE },
			races = ALLIANCE_ONLY,
			isBreadcrumb = true,
			isYearly = true,
		}),
		q(8871, {	-- The Lunar Festival (A)
			qg = 15892,	-- Lunar Festival Emissary
			maps = { STORMWIND_CITY, ELWYNN_FOREST },
			races = ALLIANCE_ONLY,
			isBreadcrumb = true,
			isYearly = true,
		}),
		q(8872, {	-- The Lunar Festival (A)
			qg = 15892,	-- Lunar Festival Emissary
			maps = { DARNASSUS },
			races = ALLIANCE_ONLY,
			isBreadcrumb = true,
			isYearly = true,
		}),
		q(8873, {	-- The Lunar Festival (H)
			qg = 15891,	-- Lunar Festival Herald
			maps = { ORGRIMMAR },
			races = HORDE_ONLY,
			isBreadcrumb = true,
			isYearly = true,
		}),
		q(8874, {	-- The Lunar Festival (H)
			qg = 15891,	-- Lunar Festival Herald
			maps = { UNDERCITY },
			races = HORDE_ONLY,
			isBreadcrumb = true,
			isYearly = true,
		}),
		q(8875, {	-- The Lunar Festival (H)
			qg = 15891,	-- Lunar Festival Herald
			maps = { THUNDER_BLUFF },
			races = HORDE_ONLY,
			isBreadcrumb = true,
			isYearly = true,
		}),
		q(8883, {	-- Valadar Starsong
			description = "Picking up this Quest from a Quest Giver makes it unavailable at another one.\nIt does not matter which one.\nThere is no need (or point) to visit all of them. You need only one.",
			sourceQuest = 8867,	-- Lunar Fireworks
			qg = 15895,	-- Lunar Festival Harbinger
			coords = {
				{ 32.5, 53.0, ELWYNN_FOREST },
				{ 28.8, 16.2, IRONFORGE },
				{ 65.6, 36.0, UNDERCITY },
				{ 71.1, 28.2, THUNDER_BLUFF },
				{ 49.1, 55.8, ORGRIMMAR },
				{ 38.6, 30.3, DARNASSUS },
			},
			isBreadcrumb = true,
			isYearly = true,
		}),
		preWrathEldersHeader(ELDERS_OF_THE_ALLIANCE, 915, ADDED_1_9_0, {	-- Elders of the Alliance
			q(8718, {	-- Bladeswift the Elder
				qg = 15598,	-- Elder Bladeswift
				coords = {
					{ 33.5, 14.3, DARNASSUS },
				},
			}),
			q(8866, {	-- Bronzebeard the Elder
				coords = {
					{ 29.1, 17.0, IRONFORGE },	-- The Mystic Ward
				},
				qg = 15871,	-- Elder Bronzebeard
			}),
			q(8646, {	-- Hammershout the Elder
				qg = 15562,	-- Elder Hammershout
				coords = {
					{ 21.6, 54.0, STORMWIND_CITY },
				},
			}),
		}),
		preWrathEldersHeader(ELDERS_OF_THE_HORDE, 914, ADDED_1_9_0, {	-- Elders of the Horde
			q(8648, {	-- Darkcore the Elder
				qg = 15564,	-- Elder Darkcore
				coords = {
					{ 66.6, 38.2, UNDERCITY },
				},
			}),
			q(8677, {	-- Darkhorn the Elder
				coords = {
					{ 40.9, 33.9, ORGRIMMAR },
				},
				qg = 15579,	-- Elder Darkhorn
			}),
			q(8678, {	-- Wheathoof the Elder [Wrath+] / Proudhorn the Elder [Classic]
				coords = {
					{ 73.0, 23.4, THUNDER_BLUFF },	-- The Elder Rise
				},
				qg = 15580,	-- Elder Ezra Wheathoof [Wrath+] / Elder Proudhorn [Classic]
			}),
		}),
		preWrathEldersHeader(ELDERS_OF_EASTERN_KINGDOMS, 912, ADDED_1_9_0, {	-- Elders of Eastern Kingdoms
			q(8647, {	-- Bellowrage the Elder
				qg = 15563,	-- Elder Bellowrage
				coords = {
					{ 58.8, 51.6, BLASTED_LANDS },
				},
			}),
			q(8683, {	-- Dawnstrider the Elder
				qg = 15585,	-- Elder Dawnstrider
				coords = {
					{ 64.5, 24.1, BURNING_STEPPES },
				},
			}),
			q(8653, {	-- Goldwell the Elder
				qg = 15569,	-- Elder Goldwell
				coords = {
					{ 46.8, 51.6, DUN_MOROGH },
				},
			}),
			q(8652, {	-- Graveborn the Elder
				qg = 15568,	-- Elder Graveborn
				coords = {
					{ 61.9, 53.8, TIRISFAL_GLADES },
				},
			}),
			q(8643, {	-- Highpeak the Elder
				qg = 15559,	-- Elder Highpeak
				coords = {
					{ 50.0, 48.0, THE_HINTERLANDS },
				},
			}),
			q(8651, {	-- Ironband the Elder
				qg = 15567,	-- Elder Ironband
				coord = { 21.3, 79.0, SEARING_GORGE },
			}),
			q(8722, {	-- Meadowrun the Elder
				coords = {
					{ 66.0, 47.8, WESTERN_PLAGUELANDS },
				},
				qg = 15602,	-- Elder Meadowrun
			}),
			q(8714, {	-- Moonstrike the Elder
				qg = 15594,	-- Elder Moonstrike
				coords = {
					{ 69.0, 73.0, WESTERN_PLAGUELANDS },
				},
			}),
			q(8645, {	-- Obsidian the Elder
				qg = 15561,	-- Elder Obsidian
				coords = {
					{ 44.9, 41.1, SILVERPINE_FOREST },
				},
			}),
			q(8636, {	-- Rumblerock the Elder
				qg = 15557,	-- Elder Rumblerock
				coords = {
					{ 82.2, 46.5, BURNING_STEPPES },
				},
			}),
			q(8642, {	-- Silvervein the Elder
				qg = 15558,	-- Elder Silvervein
				coord = { 33.3, 46.5, LOCH_MODAN },
			}),
			q(8675, {	-- Skychaser the Elder
				qg = 15577,	-- Elder Skychaser
				coord = { 56.7, 47.1, WESTFALL },
			}),
			q(8650, {	-- Snowcrown the Elder
				qg = 15566,	-- Elder Snowcrown
				coords = {
					{ 81.5, 60.5, EASTERN_PLAGUELANDS },
				},
			}),
			q(8716, {	-- Starglade the Elder
				qg = 15596,	-- Elder Starglade
				coords = {
					{ 53.11, 18.46, STRANGLETHORN_VALE },
				},
			}),
			q(8649, {	-- Stormbrow the Elder
				qg = 15565,	-- Elder Stormbrow
				coord = { 39.8, 63.8, ELWYNN_FOREST },
			}),
			q(8688, {	-- Windrun the Elder
				qg = 15592,	-- Elder Windrun
				coords = {
					{ 39.7, 75.4, EASTERN_PLAGUELANDS },
				},
			}),
			q(8674, {	-- Winterhoof the Elder
				qg = 15576,	-- Elder Winterhoof
				coords = {
					{ 27.6, 74.2, STRANGLETHORN_VALE },
				},
			}),
		}),
		preWrathEldersHeader(ELDERS_OF_KALIMDOR, 911, ADDED_1_9_0, {	-- Elders of Kalimdor
			q(8715, {	-- Bladeleaf the Elder
				qg = 15595,	-- Elder Bladeleaf
				coords = {
					{ 56.9, 60.5, TELDRASSIL },
				},
			}),
			q(8719, {	-- Bladesing the Elder
				description = "In order to view this Elder, visit Zidormi at 78.9, 21.9 to see Silithus before the Wound in the World.",
				qg = 15599,	-- Elder Bladesing
				coords = {
					{ 49.0, 37.7, SILITHUS },
				},
			}),
			q(8673, {	-- Bloodhoof the Elder
				qg = 15575,	-- Elder Bloodhoof
				coord = { 48.4, 53.2, MULGORE },
			}),
			q(8726, {	-- Brightspear the Elder
				qg = 15606,	-- Elder Brightspear
				coords = {
					{ 55.6, 43.7, WINTERSPRING },
				},
			}),
			q(8684, {	-- Dreamseer the Elder
				qg = 15586,	-- Elder Dreamseer
				coords = {
					{ 51.5, 27.8, TANARIS },
				},
			}),
			q(8679, {	-- Grimtotem the Elder
				qg = 15581,	-- Elder Grimtotem
				coords = {
					{ 76.7, 37.9, FERALAS },
				},
			}),
			q(8686, {	-- High Mountain the Elder
				qg = 15588,	-- Elder High Mountain
				coords = {
					{ 45.0, 58.0, THE_BARRENS },
				},
			}),
			q(8685, {	-- Mistwalker the Elder
				qg = 15587,	-- Elder Mistwalker
				coords = {
					{ 62.5, 31.0, FERALAS },
				},
			}),
			q(8717, {	-- Moonwarden the Elder
				qg = 15597,	-- Elder Moonwarden
				coords = {
					{ 51.4, 30.7, THE_BARRENS },
				},
			}),
			q(8724, {	-- Morningdew the Elder
				qg = 15604,	-- Elder Morningdew
				coords = {
					{ 79.2, 77.1, THOUSAND_NEEDLES },
				},
			}),
			q(8723, {	-- Nightwind the Elder
				qg = 15603,	-- Elder Nightwind
				coords = {
					{ 37.7, 53.0, FELWOOD },
				},
			}),
			q(8654, {	-- Primestone the Elder
				qg = 15570,	-- Elder Primestone
				coords = {
					{ 23.1, 11.8, SILITHUS },
				},
			}),
			q(8671, {	-- Ragetotem the Elder
				qg = 15573,	-- Elder Ragetotem
				coords = {
					{ 36.3, 80.5, TANARIS },
				},
			}),
			q(8725, {	-- Riversong the Elder
				qg = 15605,	-- Elder Riversong
				coord = { 35.5, 48.9, ASHENVALE },
			}),
			q(8670, {	-- Runetotem the Elder
				qg = 15572,	-- Elder Runetotem
				coords = {
					{ 53.1, 44.2, DUROTAR },
				},
			}),
			q(8720, {	-- Skygleam the Elder
				qg = 15600,	-- Elder Skygleam
				coords = {
					{ 72.4, 85.4, AZSHARA },
				},
			}),
			q(8682, {	-- Skyseer the Elder
				qg = 15584,	-- Elder Skyseer
				coords = {
					{ 45.4, 50.1, THOUSAND_NEEDLES },
				},
			}),
			q(8721, {	-- Starweave the Elder
				qg = 15601,	-- Elder Starweave
				coords = {
					{ 36.8, 46.7, DARKSHORE },
				},
			}),
			q(8672, {	-- Stonespire the Elder
				qg = 15574,	-- Elder Stonespire
				coords = {
					{ 61.4, 37.8, WINTERSPRING },
				},
			}),
			q(8681, {	-- Thunderhorn the Elder
				qg = 15583,	-- Elder Thunderhorn
				coord = { 50.3, 76.2, UNGORO_CRATER },
			}),
			q(8680, {	-- Windtotem the Elder
				qg = 15582,	-- Elder Windtotem
				coords = {
					{ 62.7, 36.7, THE_BARRENS },
				},
			}),
		}),
		preWrathEldersHeader(ELDERS_OF_THE_DUNGEONS, 910, ADDED_1_9_0, {	-- Elders of the Dungeons
			q(8727, {	-- Farwhisper the Elder
				description =
					"Located inside of Stratholme in Festival Lane. Fastest route to him is from the Service Entrance and then head towards The Unforgiven on Live side.",
				coords = {
					{ 48.1, 21.9, EASTERN_PLAGUELANDS },	-- Stratholme [Service Gate]
				},
				qg = 15607,	-- Elder Farwhisper
				maps = { STRATHOLME },
			}),
			q(8619, {	-- Morndeep the Elder
				description = "Located inside Blackrock Depths at the Ring of Law, accessed through the Detention Block. From the entrance walk straight forward across the big central floor into the facing cave, and the Ring of Law can be accessed on the immediate left. \n\nWARNING: Approaching the Elder will also start the encounter, but you can escape the way you came before the gate closes.",
				qg = 15549,	-- Elder Morndeep
				coord = { 39.06, 18.12, BLACKROCK_MOUNTAIN_LEVEL3 },
				maps = { BLACKROCK_DEPTHS },
			}),
			q(8635, {	-- Splitrock the Elder
				description =
					"Inside of Maraudon. Located in the passage way across the water where Rotgrip can be found as if you were headed to Tinkerer from the water near Princess.",
				qg = 15556,	-- Elder Splitrock
				coord = { 44.5, 77.1, MARAUDON_OUTDOOR_LEVEL2 },	-- Maraudon [Falls], Foulspore Cavern [Desolace]
				maps = { MARAUDON },
			}),
			q(8713, {	-- Starsong the Elder
				description =
					"Inside of Sunken Temple. From the entrance, take a left up the spiral staircase. You will need to fight and kill the first dragon pack. Continue down the hallway and hang left into the room with all the dragonkin and then again into the alcove.",
				coords = {
					{ 69.2, 54.8, SWAMP_OF_SORROWS },
				},
				qg = 15593,	-- Elder Starsong
				maps = { SUNKEN_TEMPLE },
			}),
			q(8644, {	-- Stonefort the Elder
				description =
					"Located in Lower Blackrock Spire in Hordemar City. He can be found on the left as you cross the first wooden bridge.",
				qg = 15560,	-- Elder Stonefort
				maps = {
					BLACKROCK_SPIRE,
					LBRS_SKITTERWEB_TUNNELS,
					LBRS_HORDEMAR_CITY,
					LBRS_HALL_OF_BLACKHAND,
					LBRS_HALYCONS_LAIR,
					LBRS_CHAMBER_OF_BATTLE,
				},
			}),
			q(8676, {	-- Wildmane the Elder
				description = "Inside of Zul'Farrak. Located by the pool where Gahz'rilla is summoned.",
				qg = 15578,	-- Elder Wildmane
				coords = {
					{ 39.0, 19.0, TANARIS },
				},
				maps = { ZULFARRAK },
			}),
		}),
	}),
	n(REWARDS, {
		i(COIN_OF_ANCESTRY),
	}),
})));
