---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.KALIMDOR, MAP.AZSHARA, {
	lore =
		"A shattered stretch of coastline on Kalimdor's northeast, Azshara was once the greatest night elf metropolis. The city fell millennia ago in the War of the Ancients, but a few ragged buildings perch on the cliffs overlooking similar ruins among the coral. The Horde has established a small outpost, Grim Ulang, in the area, but naga are a constant danger.",
	icon = 236714,
	groups = {
		n(ACHIEVEMENTS, {
			ach(852),	-- Explore Azshara
		}),
		explorationHeader({
			exploration(1227),	-- Bay of Storms
			exploration(2497),	-- Bitter Reaches
			exploration(1233),	-- Forlorn Ridge
			exploration(1236),	-- Haldarr Encampment
			exploration(1230),	-- Jagged Reef
			exploration(1234),	-- Lake Mennar
			exploration(1219),	-- Legash Encampment
			exploration(1232),	-- Ravencrest Monument
			exploration(1221),	-- Ruins of Eldarath
			exploration(1235),	-- Shadowsong Shrine
			exploration(1231),	-- Southridge Beach
			exploration(1226),	-- Temple of Arkkoran
			exploration(1220),	-- Thalassian Base Camp
			exploration(1256),	-- The Ruined Reaches
			exploration(1228),	-- The Shattered Strand
			exploration(1216),	-- Timbermaw Hold
			exploration(1229),	-- Tower of Eldara
			exploration(1225),	-- Ursolan
			exploration(1237),	-- Valormok
		}),
		n(FLIGHT_PATHS, {
			fp(64, {	-- Talrendis Point, Azshara
				cr = 12577,	-- Jarrodenus <Hippogryph Master>
				coord = { 11.8, 77.6, MAP.AZSHARA },
				races = ALLIANCE_ONLY,
			}),
			fp(44, {	-- Valormok, Azshara / Bilgewater Harbor, Azshara [CATA+]
				cr = 8610,	-- Kroum <Wind Rider Master>
				coord = { 22.0, 49.6, MAP.AZSHARA },
				races = HORDE_ONLY,
			}),
		}),
		lockpicking({
			o(179497, {	-- Mossy Footlocker
				coords = {
					{ 49.6, 37.2, MAP.AZSHARA },
					{ 59.8, 73.5, MAP.AZSHARA },
					{ 80.3, 36.3, MAP.AZSHARA },
				},
				requireSkill = LOCKPICKING,
				learnedAt = 225,
			}),
		}),
		n(PROFESSIONS, {
			prof(LEATHERWORKING, {
				n(7866, {	-- Peter Galen <Master Dragonscale Leatherworker>
					coord = { 37.6, 65.4, MAP.AZSHARA },
					races = ALLIANCE_ONLY,
					groups = LEATHERWORKING_RECIPES.DRAGONSCALE,
				}),
			}),
		}),
		n(QUESTS, {
			q(3382, {	-- A Crew Under Fire
				qg = 8380,	-- Captain Vanessa Beltis
				coord = { 53.0, 87.8, MAP.AZSHARA },
				repeatable = true,
				lvl = 48,
			}),
			q(5536, {	-- A Land Filled with Hatred
				qg = 11548,	-- Loth'atu
				coord = { 11.4, 78.2, MAP.AZSHARA },
				lvl = 45,
				groups = {
					objective(1, {	-- 0/6 Haldarr Satyr slain
						provider = { "n", 6125 },	-- Haldarr Satyr
					}),
					objective(2, {	-- 0/2 Haldarr Trickster slain
						provider = { "n", 6126 },	-- Haldarr Trickster
					}),
					objective(3, {	-- 0/2 Haldarr Felsworn slain
						provider = { "n", 6127 },	-- Haldarr Felsworn
					}),
				},
			}),
			q(3381, {	-- A Meeting with the Master
				qg = 8399,	-- Nyrill <Xylem's Apprentice>
				coord = { 26.4, 46.2, MAP.AZSHARA },
				timeline = { REMOVED_1_7_0 },
				lvl = 45,
			}),
			q(89038, {	-- A Monumental Task
				sourceQuest = 89037,	-- Murloc Thieves
				qg = 239831,	-- Saria Fairmoon
				coord = { 50.4, 42.6, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 47,
				groups = {
					objective(1, {	-- 0/1 Mark of the Queen
						provider = { "i", 238517 },	-- Mark of the Queen
						-- TODO: Wowhead doesn't list where the Mark of the Queen is yet (among the ruins of the Ravencrest Monument).
					}),
				},
			}),
			q(91500, {	-- An Explosive Gambit
				sourceQuest = 91497,	-- Seals of the Sin'dorei
				qg = 247449,	-- Sin'dorei Tome of Summoning
				qi = 249390,	-- Seals of the Sin'dorei (PQI!)
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 44,
				groups = {
					objective(1, {	-- 0/1 Head of Magus Rimtori
						provider = { "i", 10597 },	-- Head of Magus Rimtori
					}),
				},
			}),
			q(86804, {	-- An Unlikely Source
				sourceQuest = 86799,	-- Encroaching Corruption
				qg = 235906,	-- Elder Bramblesnap
				coord = { 41.6, 19.6, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
			}),
			q(3564, {	-- Andron's Payment to Jediga
				sourceQuest = 3542,	-- Delivery to Andron Gant
				qg = 6522,	-- Andron Gant
				qi = 10679,	-- Andron's Note
				coord = { 54.6, 75.6, MAP.UNDERCITY },
				races = HORDE_ONLY,
				lvl = 45,
			}),
			q(3602, {	-- Azsharite
				sourceQuest = 3511,	-- The Name of the Beast (3/3)
				qg = 7783,	-- Loramus Thalipedes
				coord = { 60.8, 66.4, MAP.AZSHARA },
				lvl = 45,
				groups = {
					objective(1, {	-- 0/20 Crystallized Azsharite
						provider = { "i",  10714 },	-- Crystallized Azsharite
					}),
					i(10834, {	-- Felhound Tracker Kit
						i(10832),	-- Fel Tracker Owner's Manual
						i(10831),	-- Fel Orb
					}),
				},
			}),
			q(92346, {	-- Beneath Nordrassil
				qg = 8587,	-- Jediga
				coord = { 22.4, 51.4, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 45,
			}),
			q(3504, {	-- Betrayed (1/4)
				qg = 4485,	-- Belgrom Rockmaul
				qi = 10643,	-- Sealed Letter to Ag'tor
				coord = { 75.0, 34.2, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 44,
			}),
			q(3505, {	-- Betrayed (2/4)
				sourceQuest = 3504,	-- Betrayed (1/4)
				qg = 8576,	-- Ag'tor Bloodfist
				coord = { 22.2, 51.4, MAP.AZSHARA },
				races = HORDE_ONLY,
				lvl = 44,
				groups = {
					objective(1, {	-- 0/10 Blood Elf Reclaimer slain
						provider = { "n", 6199 },	-- Blood Elf Reclaimer
					}),
					objective(2, {	-- 0/10 Blood Elf Surveyor slain
						provider = { "n", 6198 },	-- Blood Elf Surveyor
					}),
				},
			}),
			q(3506, {	-- Betrayed (3/4)
				sourceQuest = 3505,	-- Betrayed (2/4)
				provider = { "o", 151286 },	-- Kaldorei Tome of Summoning
				coord = { 59.5, 31.3, MAP.AZSHARA },
				races = HORDE_ONLY,
				lvl = 44,
				groups = {
					objective(1, {	-- 0/1 Head of Magus Rimtori
						providers = {
							{ "i",  10597 },	-- Head of Magus Rimtori
							{ "o", 150140 },	-- Arcane Focusing Crystal
						},
						coord = { 59.6, 31.4, MAP.AZSHARA },
						cr = 8578,	-- Magus Rimtori
					}),
				},
			}),
			q(3507, {	-- Betrayed (4/4)
				sourceQuest = 3506,	-- Betrayed (3/4)
				qg = 8576,	-- Ag'tor Bloodfist
				qi = 10597,	-- Head of Magus Rimtori
				coord = { 22.2, 51.4, MAP.AZSHARA },
				races = HORDE_ONLY,
				lvl = 44,
				groups = {
					i(10709),	-- Pyrestone Orb
					i(11120),	-- Belgrom's Hammer
				},
			}),
			q(91569, {	-- Blue Gold
				qg = 247473,	-- Izvi Gildfizz
				coord = { 22.4, 51.8, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 45,
				groups = {
					objective(1, {	-- 0/1 Mana-Siphoning Wand
						provider = { "i", 246680 },	-- Mana-Siphoning Wand
						cr = 246920,	-- Blood Elf Arcanist
						coord = { 66.2, 28.0, MAP.AZSHARA },
					}),
				},
			}),
			q(3508, {	-- Breaking the Ward
				sourceQuest = 3141,	-- Loramus
				qg = 7783,	-- Loramus Thalipedes
				coord = { 60.8, 66.4, MAP.AZSHARA },
				lvl = 45,
			}),
			q(8254, {	-- Cenarion Aid
				allianceQuestData = {
					qg = 5489,	-- Brother Joshua <Priest Trainer>
					coord = { 38.8, 26.4, MAP.STORMWIND_CITY },
				},
				hordeQuestData = {
					qg = 6018,	-- Ur'kyo <Priest Trainer>
					coord = { 35.6, 87.6, MAP.ORGRIMMAR },
				},
				classes = { PRIEST },
				lvl = 50,
			}),
			q(8153, {	-- Courser Antlers
				sourceQuest = 8151,	-- The Hunter's Charm
				qg = 8405,	-- Ogtinc
				coord = { 42.2, 42.6, MAP.AZSHARA },
				classes = { HUNTER },
				lvl = 50,
				groups = {
					objective(1, {	-- 0/2 Perfect Courser Antlers
						provider = { "i", 20017 },	-- Perfect Courser Antler
						cr = 8761,	-- Mosshoof Courser
					}),
				},
			}),
			q(89015, {	-- Deadliest Catch [A]
				qg = 240482,	-- Berdun Cliffbrew
				coord = { 12.6, 77.2, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Mammoth Shark Steak
						provider = { "i", 238507 },	-- Mammoth Shark Steak
					}),
					i(260210),	-- A Bigger Shield
					i(260211),	-- Panic Hands
					i(260212),	-- Bad Hat
				},
			}),
			q(91611, {	-- Deadliest Catch [H]
				qg = 3621,	-- Kurll
				coord = { 21.8, 52.0, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Mammoth Shark Steak
						provider = { "i", 238507 },	-- Mammoth Shark Steak
					}),
					i(260210),	-- A Bigger Shield
					i(260211),	-- Panic Hands
					i(260212),	-- Bad Hat
				},
			}),
			q(3542, {	-- Delivery to Andron Gant
				sourceQuest = 3517,	-- Stealing Knowledge
				qg = 8587,	-- Jediga
				qi = 10540,	-- Tablet of Markri
				coord = { 22.4, 51.4, MAP.AZSHARA },
				races = HORDE_ONLY,
				lvl = 45,
			}),
			q(3561, {	-- Delivery to Archmage Xylem
				sourceQuest = 3517,	-- Stealing Knowledge
				qg = 8587,	-- Jediga
				qi = 10541,	-- Tablet of Sael'hai
				coord = { 22.4, 51.4, MAP.AZSHARA },
				races = HORDE_ONLY,
				lvl = 45,
			}),
			q(3541, {	-- Delivery to Jes'rimon
				sourceQuest = 3517,	-- Stealing Knowledge
				qg = 8587,	-- Jediga
				qi = 10539,	-- Tablet of Jin'yael
				coord = { 22.4, 51.4, MAP.AZSHARA },
				races = HORDE_ONLY,
				lvl = 45,
			}),
			q(3518, {	-- Delivery to Magatha
				sourceQuest = 3517,	-- Stealing Knowledge
				qg = 8587,	-- Jediga
				qi = 10538,	-- Tablet of Beth'Amara
				coord = { 22.4, 51.4, MAP.AZSHARA },
				races = HORDE_ONLY,
				lvl = 45,
			}),
			q(91877, {	-- Demon Hunter's Hunter
				qg = 7783,	-- Loramus Thalipedes
				coord = { 60.8, 66.4, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 55,
			}),
			q(86799, {	-- Encroaching Corruption
				qg = 235909,	-- Furze
				coord = { 45.2, 22.2, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
			}),
			q(86926, {	-- Felfire Burn, Cauldron Bubble
				sourceQuest = 86925,	-- Toil and Trouble
				provider = { "o", 506307 },	-- Legashi Cauldron
				coord = { 57.7, 21.0, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
				groups = {
					objective(1, {	-- 0/5 Satyrweed
						provider = { "i", 235470 },	-- Satyrweed
					}),
					objective(2, {	-- 0/1 Fel Mote
						provider = { "i", 235471 },	-- Fel Mote
					}),
				},
			}),
			q(9364, {	-- Fragmented Magic
				sourceQuest = 9362,	-- Warlord Krellian
				qg = 8379,	-- Archmage Xylem
				qi = 23250,	-- Prismatic Shell
				coord = { 29.6, 40.6, MAP.AZSHARA },
				classes = { MAGE },
				lvl = 60,
				groups = {
					objective(1, {	-- 0/50 Polymorph Clone slain
						provider = { "n", 16479 },	-- Polymorph Clone
						crs = {
							6196,	-- Spitelash Myrmidon
							6193,	-- Spitelash Screamer
							6194,	-- Spitelash Serpent Guard
							6195,	-- Spitelash Siren
							6190,	-- Spitelash Warrior
						},
					}),
					{
						itemID = 4142,	-- Tome of Polymorph: Pig
						recipeID = 28272,	-- Polymorph (Pig)
						classes = { MAGE },
						f = RECIPES,
					},
				},
			}),
			q(89013, {	-- Gettin' Buzzed [A]
				qg = 240482,	-- Berdun Cliffbrew <Innkeeper>
				qi = 238501,	-- Pellet Gun (PQI!)
				coord = { 12.4, 77.2, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 45,
				groups = {
					objective(1, {	-- 0/5 Wild Honey
						provider = { "i", 238503 },	-- Wild Honey
						cr = 236028,	-- Honey Wasp
					}),
					i(290333),	-- Berdun's Trusty Rifle
					i(250955),	-- Potion of Beast Slaying
					i(250999),	-- Recipe: Potion of Beast Slaying (RECIPE!)
				},
			}),
			q(91608, {	-- Gettin' Buzzed [H]
				qg = 3621,	-- Kurll
				coord = { 21.8, 52.0, MAP.AZSHARA },
				qi = 238501,	-- Pellet Gun (PQI!)
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 45,
				groups = {
					objective(1, {	-- 0/5 Wild Honey
						provider = { "i", 238503 },	-- Wild Honey
						cr = 236028,	-- Honey Wasp
					}),
					i(290333),	-- Berdun's Trusty Rifle
					i(250955),	-- Potion of Beast Slaying
					i(250999),	-- Recipe: Potion of Beast Slaying (RECIPE!)
				},
			}),
			q(88884, {	-- Highborne Tablets
				sourceQuest = 88917,	-- Slithering Looters
				qg = 239831,	-- Saria Fairmoon
				coord = { 50.4, 42.6, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 47,
				groups = {
					objective(1, {	-- 0/1 Tablet of Creation
						providers = {
							{ "i", 238244 },	-- Tablet of Creation
							{ "o", 524260 },	-- Highborne Tablet
						},
						coord = { 49.2, 49.5, MAP.AZSHARA },
					}),
					objective(2, {	-- 0/1 Tablet of Manipulation
						providers = {
							{ "i", 238245 },	-- Tablet of Manipulation
							{ "o", 524284 },	-- Highborne Tablet
						},
						coord = { 48.9, 55.3, MAP.AZSHARA },
					}),
					objective(3, {	-- 0/1 Tablet of Power
						providers = {
							{ "i", 238246 },	-- Tablet of Power
							{ "o", 524298 },	-- Highborne Tablet
						},
						coord = { 49.9, 63.8, MAP.AZSHARA },
					}),
				},
			}),
			q(89001, {	-- Home on the Range [A]
				qg = 240482,	-- Berdun Cliffbrew
				coord = { 12.6, 77.2, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 45,
				groups = {
					objective(1, {	-- 0/5 Mosshoof Hide
						provider = { "i", 238463 },	-- Mosshoof Hide
					}),
				},
			}),
			q(91488, {	-- Home on the Range [H]
				qg = 3621,	-- Kurll
				coord = { 21.8, 52.0, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 45,
				groups = {
					objective(1, {	-- 0/5 Mosshoof Hide
						provider = { "i", 238463 },	-- Mosshoof Hide
					}),
				},
			}),
			q(89470, {	-- Ill Tidings
				-- TODO: Starts at object 527828, where Your Final Reward (89053) ends; confirm whether it requires 89053.
				provider = { "o", 527828 },
				qi = 239609,	-- Saria's Knapsack (PQI!)
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 47,
			}),
			q(3563, {	-- Jes'rimon's Payment to Jediga
				sourceQuest = 3541,	-- Delivery to Jes'rimon
				qg = 8659,	-- Jes'rimon
				qi = 10680,	-- Jes'rimon's Note
				coord = { 55.6, 34.0, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 45,
			}),
			q(3601, {	-- Kim'jael Indeed!
				qg = 8420,	-- Kim'jael
				coord = { 53.4, 21.8, MAP.AZSHARA },
				lvl = 47,
				groups = {
					objective(1, {	-- 0/1 Kim'Jael's Compass
						providers = {
							{ "i",  10717 },	-- Kim'Jael's Compass
							{ "o", 153123 },	-- Kim'jael's Equipment
						},
					}),
					objective(2, {	-- 0/1 Kim'Jael's Scope
						providers = {
							{ "i",  10715 },	-- Kim'Jael's Scope
							{ "o", 153123 },	-- Kim'jael's Equipment
						},
					}),
					objective(3, {	-- 0/1 Kim'Jael's Stuffed Chicken
						providers = {
							{ "i",  10722 },	-- Kim'Jael's Stuffed Chicken
							{ "o", 153123 },	-- Kim'jael's Equipment
						},
					}),
					objective(4, {	-- 0/1 Kim'Jael's Wizzlegoober
						providers = {
							{ "i",  10718 },	-- Kim'Jael's Wizzlegoober
							{ "o", 153123 },	-- Kim'jael's Equipment
						},
					}),
					i(10830),	-- M73 Frag Grenade
				},
			}),
			q(5534, {	-- Kim'jael's "Missing" Equipment
				sourceQuest = 3601,	-- Kim'jael Indeed!
				qg = 8420,	-- Kim'jael
				coord = { 53.4, 21.8, MAP.AZSHARA },
				lvl = 47,
				groups = {
					objective(1, {	-- 0/1 Some Rune
						provider = { "i", 13815 },	-- Some Rune
						crs = {
							7885,	-- Spitelash Battlemaster
							7886,	-- Spitelash Enchantress
							6196,	-- Spitelash Myrmidon
							6195,	-- Spitelash Siren
						},
					}),
				},
			}),
			q(86796, {	-- Later, Satyr
				qg = 237007,	-- Graal
				coord = { 65.8, 14.8, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
				groups = {
					objective(1),	-- 0/1 Help Graal break out of Legashi Stronghold
				},
			}),
			q(86747, {	-- Legashi Horns
				sourceQuest = 86746,	-- The Legashi Threat
				-- TODO: Giver unknown. Wowhead lists only the turn-in, Ekkal (235903) at 42.0, 38.8; a Contributor Report completed it there right after The Legashi Threat.
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
				groups = {
					objective(1, {	-- 0/5 Severed Legashi Horn
						provider = { "i", 235256 },	-- Severed Legashi Horn
						crs = {
							6200,	-- Legashi Satyr
							6201,	-- Legashi Rogue
							6202,	-- Legashi Hellcaller
							236867,	-- Legashi Soulstealer
							236874,	-- Legashi Hellraiser
							236876,	-- Legashi Blackguard
						},
					}),
				},
			}),
			q(91685, {	-- Ley of the Land
				qg = 247473,	-- Izvi Gildfizz
				qi = 247238,	-- Mana-Siphoning Wand (PQI!)
				coord = { 22.4, 51.8, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 45,
				groups = {
					objective(1, {	-- 0/1 Tear of Mennar
						provider = { "i", 246938 },	-- Tear of Mennar
					}),
					i(260172),	-- Assassin's Dagger
					i(260178),	-- Honor Guard's Plate
					i(260179),	-- Barkwoven Belt
				},
			}),
			q(91568, {	-- Long Walks on the Beach
				qg = 247473,	-- Izvi Gildfizz
				qi = 246683,	-- Treasure Trowel 3000 (PQI!)
				coord = { 22.4, 51.8, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 45,
				groups = {
					objective(1, {	-- 0/10 Highborne Treasure Fragment
						provider = { "i", 246684 },	-- Highborne Treasure Fragment
					}),
				},
			}),
			q(3141, {	-- Loramus
				sourceQuest = 2744,	-- The Demon Hunter
				qg = 7783,	-- Loramus Thalipedes
				coord = { 60.8, 66.4, MAP.AZSHARA },
				lvl = 45,
				groups = {
					objective(1, {	-- 0/1 Loramus' Story
						provider = { "n", 7783 },	-- Loramus Thalipedes
					}),
				},
			}),
			q(3562, {	-- Magatha's Payment to Jediga
				sourceQuest = 3518,	-- Delivery to Magatha
				qg = 4046,	-- Magatha Grimtotem
				qi = 10678,	-- Magatha's Note
				coord = { 70.2, 30.8, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				lvl = 45,
			}),
			q(8250, {	-- Magecraft
				allianceQuestData = {
					qgs = {
						7312,	-- Dink <Mage Trainer> [MAP.IRONFORGE]
						331,	-- Maginor Dumas <Master Mage> [MAP.STORMWIND_CITY]
					},
					coords = {
						{ 26.8, 8.6, MAP.IRONFORGE },
						{ 49.2, 87.7, MAP.STORMWIND_CITY },
					},
				},
				hordeQuestData = {
					qgs = {
						7311,	-- Uthel'nay <Mage Trainer> [MAP.ORGRIMMAR]
						3047,	-- Archmage Shymm <Mage Trainer> [MAP.THUNDER_BLUFF]
						4567,	-- Pierce Shackleton <Mage Trainer>	[MAP.UNDERCITY]
					},
					coords = {
						{ 39.0, 86.0, MAP.ORGRIMMAR },
						{ 22.6, 14.8, MAP.THUNDER_BLUFF },
						{ 85.6, 14.0, MAP.UNDERCITY },
					},
				},
				classes = { MAGE },
				isBreadcrumb = true,
				lvl = 50,
			}),
			q(8251, {	-- Magic Dust
				sourceQuest = 8250,	-- Magecraft
				qg = 8379,	-- Archmage Xylem
				coord = { 29.6, 40.6, MAP.AZSHARA },
				classes = { MAGE },
				lvl = 50,
				groups = {
					objective(1, {	-- 0/10 Glittering Dust
						provider = { "i", 20028 },	-- Glittering Dust
						crs = {
							6199,	-- Blood Elf Reclaimer
							6198,	-- Blood Elf Surveyor
						},
					}),
				},
			}),
			q(88821, {	-- Making Contact
				qg = 239822,	-- Commander Truesong
				coord = { 11.8, 78.2, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 47,
			}),
			q(86777, {	-- Master Feardred
				qg = 236770,	-- Korsa
				coord = { 62.8, 21.6, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
				groups = {
					objective(1, {	-- 0/1 Feardred's Amulet
						provider = { "i", 235334 },	-- Feardred's Amulet
					}),
					i(259892),	-- Feardred's Cleansed Amulet
					i(260166),	-- Rageroar's Best Club
					i(260167),	-- Adventurer's Lost Boots
				},
			}),
			q(3503, {	-- Meeting with the Master
				qg = 8395,	-- Sanath Lim-yo
				coord = { 28.0, 50.0, MAP.AZSHARA },
				repeatable = true,
				lvl = 45,
			}),
			q(86791, {	-- Missing Blackmaw Scouts
				sourceQuest = 86752,	-- Report to Rageroar
				qg = 236573,	-- Gatekeeper Rageroar
				coord = { 42.4, 20.2, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
			}),
			q(89037, {	-- Murloc Thieves
				sourceQuest = 88884,	-- Highborne Tablets
				qg = 239831,	-- Saria Fairmoon
				coord = { 50.4, 42.6, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 47,
				groups = {
					objective(1, {	-- 0/1 Memory Crystal
						provider = { "i", 238385 },	-- Memory Crystal
						coord = { 89.2, 31.8, MAP.AZSHARA },
						cr = 239971,	-- Razorgill
					}),
					i(260180),	-- Scout's Dagger
					i(260181),	-- Sentinel's Plate
					i(260182),	-- Elunar Belt
				},
			}),
			q(8255, {	-- Of Coursers We Know
				sourceQuest = 8254,	-- Cenarion Aid
				qg = 8405,	-- Ogtinc
				coord = { 42.2, 42.6, MAP.AZSHARA },
				classes = { PRIEST },
				lvl = 50,
				groups = {
					objective(2, {	-- 0/1 Secret Rocket Plans
						provider = { "i", 49204 },	-- Secret Rocket Plans
						cr = 36156,	-- Mutant Goblin
					}),
					objective(1, {	-- 0/4 Healthy Courser Gland
						provider = { "i", 20027 },	-- Healthy Courser Gland
						cr = 8761,	-- Mosshoof Courser
					}),
				},
			}),
			q(90813, {	-- Pay Dirt! [A]
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Humongous Crystal
						provider = { "i", 243203 },	-- Humongous Crystal
					}),
					i(243299),	-- Big Bag o' Gold
				},
			}),
			q(91607, {	-- Pay Dirt! [H]
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Humongous Crystal
						provider = { "i", 246888 },	-- Humongous Crystal
					}),
					i(243299),	-- Big Bag o' Gold
				},
			}),
			q(86813, {	-- Potential Panacea
				sourceQuest = 86812,	-- Transmuted Tincture
				qg = 235906,	-- Elder Bramblesnap
				qi = 235510,	-- Bramblesnap's Panacea (PQI!)
				coord = { 41.6, 19.6, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
				groups = {
					objective(1),	-- 0/1 Panacea administered
					i(260171),	-- Timbermaw Prayer Beads
					i(260168),	-- Mourner's Shroud
					i(260169),	-- Amice of Sorrow
				},
			}),
			q(88809, {	-- Preserving Eldarath
				qg = 239822,	-- Commander Truesong
				coord = { 11.8, 78.2, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 45,
				groups = {
					objective(1, {	-- 0/12 Eldarath Relic
						provider = { "i", 280608 },	-- Eldarath Relic
						crs = {
							6196,	-- Spitelash Myrmidon
							6194,	-- Spitelash Serpent Guard
							6195,	-- Spitelash Siren
						},
					}),
					objective(2, {	-- 0/1 Lord Sarthiss' Head
						provider = { "i", 280610 },	-- Lord Sarthiss' Head
						coord = { 35.6, 57.4, MAP.AZSHARA },
						cr = 239939,	-- Lord Sarthiss
					}),
				},
			}),
			q(88812, {	-- Reclaiming Ravencrest
				qg = 239822,	-- Commander Truesong
				coord = { 11.8, 78.2, MAP.AZSHARA },
				qi = 238449,	-- Nullifying Ward (PQI!)
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 47,
				groups = {
					objective(1, {	-- 0/5 Spitelash Battlemaster slain
						provider = { "n", 7885 },	-- Spitelash Battlemaster
					}),
					objective(2, {	-- 0/5 Spitelash Enchantress slain
						provider = { "n", 7886 },	-- Spitelash Enchantress
					}),
					-- TODO: Wowhead doesn't list the three Naga Power Stones near the Ravencrest Monument yet (objectives 3-5).
				},
			}),
			q(86752, {	-- Report to Rageroar
				qg = 235903,	-- Ekkal
				coord = { 42.0, 38.8, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
			}),
			q(86797, {	-- Return to Rageroar
				sourceQuest = 86777,	-- Master Feardred
				qg = 236770,	-- Korsa
				coord = { 62.8, 21.6, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
			}),
			q(3421, {	-- Return Trip
				qg = 8399,	-- Nyrill <Xylem's Apprentice>
				coord = { 26.4, 46.2, MAP.AZSHARA },
				repeatable = true,
				lvl = 45,
			}),
			q(91531, {	-- Revenge Exacted
				sourceQuest = 91500,	-- An Explosive Gambit
				qg = 8576,	-- Ag'tor Bloodfist
				qi = 10597,	-- Head of Magus Rimtori (PQI!)
				coord = { 22.2, 51.4, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 44,
				groups = {
					i(10709),	-- Pyrestone Orb
					i(11120),	-- Belgrom's Hammer
					i(287075),	-- Belgrom's Revenge
				},
			}),
			q(86927, {	-- Running Firewater
				sourceQuest = 86926,	-- Felfire Burn, Cauldron Bubble
				provider = { "o", 506307 },	-- Legashi Cauldron
				qi = 235472,	-- Legashi Firewater (PQI!)
				coord = { 57.7, 21.0, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
				groups = {
					i(236754),	-- Recipe: Distilled Firewater
				},
			}),
			q(88857, {	-- Saving a Sentinel
				qg = 222478,	-- Sentinel Keldara Sunblade
				coord = { 20.5, 60.0, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 45,
			}),
			q(90789, {	-- Scalebeard
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.ADDED_1_60_1 },
				classes = { MAGE },
				lvl = 60,
				groups = {
					objective(1, {	-- 0/1 Prismatic Shell
						provider = { "i", 23250 },	-- Prismatic Shell
					}),
				},
			}),
			q(91497, {	-- Seals of the Sin'dorei
				sourceQuest = 3505,	-- Betrayed
				qg = 247449,	-- Sin'dorei Tome of Summoning
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 44,
				groups = {
					objective(1, {	-- 0/1 Seal of the Warden
						provider = { "i", 246725 },	-- Seal of the Warden
					}),
					objective(2, {	-- 0/1 Seal of the Warrior
						provider = { "i", 246721 },	-- Seal of the Warrior
					}),
					objective(3, {	-- 0/1 Seal of the Ranger
						provider = { "i", 246722 },	-- Seal of the Ranger
					}),
				},
			}),
			q(91538, {	-- Sin'dorei Tome of Summoning
				qg = 247449,	-- Sin'dorei Tome of Summoning
				qi = 246770,	-- Sin'dorei Tome of Summoning (PQI!)
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 44,
			}),
			q(91547, {	-- Sin'dorei Tome of Summoning
				sourceQuest = 91538,	-- Sin'dorei Tome of Summoning
				qg = 8587,	-- Jediga
				qi = 246770,	-- Sin'dorei Tome of Summoning (PQI!)
				coord = { 22.4, 51.4, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 44,
			}),
			q(98096, {	-- Sisters In Duty
				qg = 8396,	-- Sentinel Dalia Sunblade
				coord = { 39.6, 88.9, MAP.DARNASSUS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 45,
			}),
			q(88807, {	-- Slay the Spitelash
				qg = 239822,	-- Commander Truesong
				coord = { 11.8, 78.2, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 45,
				groups = {
					objective(1, {	-- 0/8 Spitelash Warrior slain
						provider = { "n", 6190 },	-- Spitelash Warrior
					}),
					objective(2, {	-- 0/8 Spitelash Screamer slain
						provider = { "n", 6193 },	-- Spitelash Screamer
					}),
				},
			}),
			q(88917, {	-- Slithering Looters
				sourceQuest = 88821,	-- Making Contact
				qg = 239831,	-- Saria Fairmoon
				coord = { 50.4, 42.6, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 47,
				groups = {
					objective(1, {	-- 0/1 Staff of Archmage Selwyn
						providers = {
							{ "i", 238347 },	-- Staff of Archmage Selwyn
							{ "o", 524759 },	-- Sesspira's Hoard
						},
						coord = { 40.9, 50.5, MAP.AZSHARA },
					}),
					objective(2, {	-- 0/1 Lady Sesspira's Key
						provider = { "i", 238345 },	-- Lady Sesspira's Key
						coord = { 36.4, 52.8, MAP.AZSHARA },
						cr = 239942,	-- Lady Sesspira
					}),
				},
			}),
			q(5535, {	-- Spiritual Unrest
				qg = 11548,	-- Loth'atu
				coord = { 11.4, 78.2, MAP.AZSHARA },
				lvl = 45,
				groups = {
					objective(1, {	-- 0/6 Highborne Apparition slain
						provider = { "n", 6116 },	-- Highborne Apparition
					}),
					objective(2, {	-- 0/6 Highborne Lichling slain
						provider = { "n", 6117 },	-- Highborne Lichling
					}),
				},
			}),
			q(3517, {	-- Stealing Knowledge
				qg = 8587,	-- Jediga
				coord = { 22.4, 51.4, MAP.AZSHARA },
				races = HORDE_ONLY,
				lvl = 45,
				groups = {
					objective(1, {	-- 0/1 Tablet of Beth'Amara
						providers = {
							{ "i",  10538 },	-- Tablet of Beth'Amara
							{ "o", 148516 },	-- Tablet of Beth'Amara
						},
					}),
					objective(2, {	-- 0/1 Tablet of Jin'yael
						providers = {
							{ "i",  10539 },	-- Tablet of Jin'yael
							{ "o", 148513 },	-- Tablet of Jin'yael
						},
					}),
					objective(3, {	-- 0/1 Tablet of Markri
						providers = {
							{ "i",  10540 },	-- Tablet of Markri
							{ "o", 148514 },	-- Tablet of Markri
						},
					}),
					objective(4, {	-- 0/1 Tablet of Sael'hai
						providers = {
							{ "i",  10541 },	-- Tablet of Sael'hai
							{ "o", 148515 },	-- Tablet of Sael'hai
						},
					}),
				},
			}),
			q(3621, {	-- The Formation of Felbane
				sourceQuest = 3602,	-- Azsharite
				qg = 7783,	-- Loramus Thalipedes
				qi = 10738,	-- Shipment to Galvan
				coord = { 60.8, 66.4, MAP.AZSHARA },
				maps = { MAP.STRANGLETHORN_VALE },
				lvl = 45,
			}),
			q(88813, {	-- The Head of the Serpent
				sourceQuests = {
					88809,	-- Preserving Eldarath
					88812,	-- Reclaiming Ravencrest
				},
				qg = 239822,	-- Commander Truesong
				coord = { 11.8, 78.2, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 47,
				groups = {
					objective(1, {	-- 0/1 Krellian's Head
						provider = { "i", 238057 },	-- Krellian's Head
						cr = 8408,	-- Warlord Krellian
					}),
					i(260208),	-- Prelate's Orb
					i(260209),	-- Truesong's Hammer
				},
			}),
			q(8151, {	-- The Hunter's Charm
				allianceQuestData = {
					qgs = {
						4205,	-- Dorion <Hunter Trainer>
						5116,	-- Olmin Burningbeard <Hunter Trainer>
						5516,	-- Ulfir Ironbeard <Hunter Trainer>
					},
					coords = {
						{ 42.2, 7.6, MAP.DARNASSUS },
						{ 70.6, 83.8, MAP.IRONFORGE },
						{ 67.6, 35.8, MAP.STORMWIND_CITY },
					},
				},
				hordeQuestData = {
					qgs = {
						3352,	-- Ormak Grimshot <Hunter Trainer>
						3039,	-- Holt Thunderhorn <Hunter Trainer>
					},
					coords = {
						{ 66.2, 18.6, MAP.ORGRIMMAR },
						{ 57.6, 88.6, MAP.THUNDER_BLUFF },
					},
				},
				classes = { HUNTER },
				lvl = 50,
			}),
			q(8256, {	-- The Ichor of Undeath
				sourceQuest = 8255,	-- Of Coursers We Know
				qg = 8405,	-- Ogtinc
				coord = { 42.2, 42.6, MAP.AZSHARA },
				cost = { { "i", 7972, 1 } },	-- Ichor of Undeath
				classes = { PRIEST },
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Keystone Shard
						providers = {
							{ "i", 49094 },	-- Keystone Shard
							{ "o", 201579 },	-- Keystone Shard
						},
					}),
				},
			}),
			q(86746, {	-- The Legashi Threat
				qg = 235903,	-- Ekkal
				coord = { 42.0, 38.8, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 47,
				groups = {
					objective(1, {	-- 0/5 Legashi Satyr slain
						provider = { "n", 6200 },	-- Legashi Satyr
					}),
					objective(2, {	-- 0/5 Legashi Rogue slain
						provider = { "n", 6201 },	-- Legashi Rogue
					}),
					objective(3, {	-- 0/5 Legashi Hellcaller slain
						provider = { "n", 6202 },	-- Legashi Hellcaller
					}),
				},
			}),
			q(3509, {	-- The Name of the Beast (1/3)
				sourceQuest = 3508,	-- Breaking the Ward
				qg = 7783,	-- Loramus Thalipedes
				coord = { 60.8, 66.4, MAP.AZSHARA },
				lvl = 45,
			}),
			q(3510, {	-- The Name of the Beast (2/3)
				sourceQuest = 3509,	-- The Name of the Beast (1/3)
				qg = 6134,	-- Lord Arkkoroc
				coord = { 77.2, 42.8, MAP.AZSHARA },
				lvl = 45,
				groups = {
					objective(1, {	-- 0/1 Hetaera's Beaten Head
						provider = { "i", 10599 },	-- Hetaera's Beaten Head
						coords = {
							{ 56.6, 44.6, MAP.AZSHARA },
							{ 59.4, 40.6, MAP.AZSHARA },
						},
						cr = 6140,	-- Hetaera
					}),
					objective(2, {	-- 0/1 Hetaera's Bloodied Head
						provider = { "i", 10598 },	-- Hetaera's Bloodied Head
						cr = 6140,	-- Hetaera
					}),
					objective(3, {	-- 0/1 Hetaera's Bruised Head
						provider = { "i", 10600 },	-- Hetaera's Bruised Head
						cr = 6140,	-- Hetaera
					}),
				},
			}),
			q(3511, {	-- The Name of the Beast (3/3)
				sourceQuest = 3510,	-- The Name of the Beast (2/3)
				qg = 6134,	-- Lord Arkkoroc
				qi = 10610,	-- Hetaera's Blood
				coord = { 77.2, 42.8, MAP.AZSHARA },
				lvl = 45,
			}),
			q(8252, {	-- The Siren's Coral
				sourceQuest = 8251,	-- Magic Dust
				qg = 8379,	-- Archmage Xylem
				coord = { 29.6, 40.6, MAP.AZSHARA },
				classes = { MAGE },
				lvl = 50,
				groups = {
					objective(1, {	-- 0/6 Enchanted Coral
						provider = { "i", 20029 },	-- Enchanted Coral
						cr = 6195,	-- Spitelash Siren
					}),
				},
			}),
			q(86792, {	-- Thinning Their Forces
				qg = 236770,	-- Korsa
				coord = { 62.8, 21.6, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
				groups = {
					objective(1, {	-- 0/6 Legashi Hellraiser slain
						provider = { "n", 236874 },	-- Legashi Hellraiser
					}),
					objective(2, {	-- 0/4 Legashi Soulstealer slain
						provider = { "n", 236867 },	-- Legashi Soulstealer
					}),
					objective(3, {	-- 0/2 Legashi Blackguard slain
						provider = { "n", 236876 },	-- Legashi Blackguard
					}),
				},
			}),
			q(86798, {	-- Timbermaw Reinforcements
				sourceQuest = 86797,	-- Return to Rageroar
				qg = 236573,	-- Gatekeeper Rageroar
				coord = { 42.4, 20.2, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
			}),
			q(86925, {	-- Toil and Trouble
				sourceQuest = 86804,	-- An Unlikely Source
				provider = { "o", 506307 },	-- Legashi Cauldron
				coord = { 57.7, 21.0, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
				groups = {
					objective(1, {	-- 0/1 Legashi Firewater Recipe
						provider = { "i", 235645 },	-- Legashi Firewater Recipe
					}),
				},
			}),
			q(86812, {	-- Transmuted Tincture
				sourceQuest = 86927,	-- Running Firewater
				qg = 235906,	-- Elder Bramblesnap
				qi = 235509,	-- Satyrweed Tincture (PQI!)
				coord = { 41.6, 19.6, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 47,
				groups = {
					objective(1),	-- 0/3 Satyrweed Tincture tested
					i(255731),	-- Manual: Powerful Poultice
				},
			}),
			q(9362, {	-- Warlord Krellian
				qg = 8379,	-- Archmage Xylem
				coord = { 29.6, 40.6, MAP.AZSHARA },
				classes = { MAGE },
				lvl = 60,
				groups = {
					objective(1, {	-- 0/1 Prismatic Shell
						provider = { "i", 23250 },	-- Prismatic Shell
						coord = { 41.6, 52.8, MAP.AZSHARA },
						cr = 8408,	-- Warlord Krellian
					}),
				},
			}),
			q(8231, {	-- Wavethrashing
				sourceQuest = 8153,	-- Courser Antlers
				qg = 8405,	-- Ogtinc
				coord = { 42.2, 42.6, MAP.AZSHARA },
				classes = { HUNTER },
				lvl = 50,
				groups = {
					objective(1, {	-- 0/6 Wavethrasher Scales
						provider = { "i", 20087 },	-- Wavethrasher Scales
						crs = {
							6349,	-- Great Wavethrasher
							6348,	-- Wavethrasher
							6347,	-- Young Wavethrasher
						},
					}),
				},
			}),
			q(89228, {	-- Winter Frontier Fishery [A]
				qg = 240482,	-- Berdun Cliffbrew
				coord = { 12.6, 77.2, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 45,
				groups = {
					objective(1, {	-- 0/10 Raw Winter Squid
						provider = { "i", 13755 },	-- Raw Winter Squid
					}),
				},
			}),
			q(91610, {	-- Winter Frontier Fishery [H]
				qg = 3621,	-- Kurll
				coord = { 21.8, 52.0, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 45,
				groups = {
					objective(1, {	-- 0/10 Raw Winter Squid
						provider = { "i", 13755 },	-- Raw Winter Squid
					}),
					i(259890),	-- Deep-Sea Waders
				},
			}),
			q(3565, {	-- Xylem's Payment to Jediga
				sourceQuest = 3561,	-- Delivery to Archmage Xylem
				qg = 8379,	-- Archmage Xylem
				qi = 10681,	-- Xylem's Note
				coord = { 29.2, 40.2, MAP.AZSHARA },
				races = HORDE_ONLY,
				lvl = 45,
			}),
			q(89053, {	-- Your Final Reward
				sourceQuest = 89038,	-- A Monumental Task
				qg = 239831,	-- Saria Fairmoon
				coord = { 50.4, 42.6, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 47,
				groups = {
					i(260201),	-- Highborne Memory Crystal
					i(260205),	-- Highborne Research Tablet
					i(260207),	-- Staff of Archmage Selwyn
				},
			}),
		}),
		n(RARES, {
			n(6648, {	-- Antilos
				coords = {
					{ 16.8, 51.8, MAP.AZSHARA },
					{ 18.0, 56.6, MAP.AZSHARA },
					{ 17.0, 64.0, MAP.AZSHARA },
					{ 48.0, 19.2, MAP.AZSHARA },
					{ 49.0, 26.0, MAP.AZSHARA },
					{ 51.0, 29.6, MAP.AZSHARA },
					{ 52.2, 36.8, MAP.AZSHARA },
					{ 54.0, 25.8, MAP.AZSHARA },
					{ 56.6, 19.4, MAP.AZSHARA },
				},
			}),
			n(6651, {	-- Gatekeeper Rageroar
				description = "Killing him will reduce your Timbermaw reputation. (DON'T DO IT!)",
				coords = {
					{ 38.4, 32.6, MAP.AZSHARA },
				},
			}),
			n(6650, {	-- General Fangferror
				coords = {
					{ 41.6, 51.8, MAP.AZSHARA },
				},
				groups = {
					i(17054),	-- Joonho's Mercy
				},
			}),
			n(6649, {	-- Lady Sesspira
				coords = {
					{ 40.6, 45.6, MAP.AZSHARA },
					{ 37.2, 49.0, MAP.AZSHARA },
					{ 37.6, 51.8, MAP.AZSHARA },
					{ 34.0, 58.6, MAP.AZSHARA },
					{ 39.6, 55.6, MAP.AZSHARA },
				},
			}),
			n(6647, {	-- Magister Hawkhelm
				coords = {
					{ 56.8, 28.6, MAP.AZSHARA },
					{ 59.4, 31.4, MAP.AZSHARA },
				},
			}),
			n(6652, {	-- Master Feardred
				coords = {
					{ 61.8, 25.6, MAP.AZSHARA },
					{ 65.8, 17.6, MAP.AZSHARA },
				},
			}),
			n(6646, {	-- Monnos the Elder
				coords = {
					{ 82.0, 18.6, MAP.AZSHARA },
					{ 78.6, 17.4, MAP.AZSHARA },
					{ 76.2, 18.0, MAP.AZSHARA },
					{ 72.8, 19.2, MAP.AZSHARA },
					{ 76.8, 23.4, MAP.AZSHARA },
					{ 59.8, 78.4, MAP.AZSHARA },
					{ 55.6, 80.2, MAP.AZSHARA },
					{ 59.8, 80.6, MAP.AZSHARA },
					{ 56.4, 87.8, MAP.AZSHARA },
					{ 59.6, 89.0, MAP.AZSHARA },
				},
			}),
			n(13896, {	-- Scalebeard
				coords = {
					{ 55.0, 49.8, MAP.AZSHARA },
					{ 52.0, 45.6, MAP.AZSHARA },
					{ 52.2, 49.6, MAP.AZSHARA },
				},
			}),
			n(8660, {	-- The Evalcharr
				coords = {
					{ 17.6, 54.0, MAP.AZSHARA },
					{ 18.8, 66.0, MAP.AZSHARA },
					{ 23.4, 55.0, MAP.AZSHARA },
				},
			}),
			n(6118, {	-- Varo'then's Ghost
				coords = {
					{ 13.4, 74.8, MAP.AZSHARA },
					{ 16.6, 72.8, MAP.AZSHARA },
					{ 17.2, 66.2, MAP.AZSHARA },
					{ 19.0, 68.0, MAP.AZSHARA },
				},
			}),
		}),
		n(TREASURES, {
			o(152620, {	-- Azsharite Formation
				coord = { 50.0, 70.1, MAP.AZSHARA },
				groups = {
					i(10714),	-- Crystallized Azsharite
					i(10840),	-- Crystallized Note
				},
			}),
			o(152621, {	-- Azsharite Formation
				coord = { 52.6, 78.3, MAP.AZSHARA },
				groups = {
					i(10714),	-- Crystallized Azsharite
					i(10839),	-- Crystallized Note
				},
			}),
			o(152622, {	-- Azsharite Formation
				coord = { 60.7, 86.5, MAP.AZSHARA },
				groups = {
					i(10714),	-- Crystallized Azsharite
				},
			}),
			o(441250, {	-- Book
				coord = { 20.8, 62.0, MAP.AZSHARA },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					i(220348),	-- Everyday Etiquette
				},
			}),
		}),
		n(VENDORS, {
			n(12957, {	-- Blimo Gadgetspring <Trade Supplies>
				coord = { 45.2, 90.8, MAP.AZSHARA },
				groups = {
					i(15751),	-- Pattern: Blue Dragonscale Breastplate (RECIPE!)
					i(15729),	-- Pattern: Chimeric Gloves (RECIPE!)
				},
			}),
			n(14301, {	-- Brinna Valanaar <Bowyer>
				coord = { 12.0, 78.4, MAP.AZSHARA },
				races = ALLIANCE_ONLY,
				groups = {
					i(11305),	-- Dense Shortbow
				},
			}),
			n(10361, {	-- Gruul Darkblade <Weaponsmith>
				coord = { 22.2, 51.2, MAP.AZSHARA },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID",
					2528,	-- Falchion
					2530,	-- Francisca
					2531,	-- Great Axe
					2532,	-- Morning Star
					2534,	-- Rondel
					2533,	-- War Maul
					2535,	-- War Staff
					2529,	-- Zweihander
				}},
			}),
			n(8678, {	-- Jubie Gadgetspring <Engineering Supplier>
				coord = { 45.2, 90.8, MAP.AZSHARA },
				groups = {
					i(10607),	-- Schematic: Deepdive Helmet (RECIPE!)
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(16219, {	-- Formula: Enchant Gloves - Greater Agility
				cr = 6201,	-- Legashi Rogue
			}),
			i(15763, {	-- Pattern: Blue Dragonscale Shoulders (RECIPE!)
				cr = 6146,	-- Cliff Breaker
				coords = {
					{ 64.6, 87.2, MAP.AZSHARA },
					{ 50.4, 80.2, MAP.AZSHARA },
					{ 80.6, 18.6, MAP.AZSHARA },
					{ 70.4, 17.6, MAP.AZSHARA },
				},
			}),
			i(14473, {	-- Pattern: Ghostweave Belt (RECIPE!)
				cr = 7864,	-- Lingering Highborne
			}),
			i(14477, {	-- Pattern: Ghostweave Gloves (RECIPE!)
				cr = 7864,	-- Lingering Highborne
			}),
			i(15753, {	-- Pattern: Stormshroud Armor (RECIPE!)
				cr = 6138,	-- Arkkoran Oracle
			}),
			i(15764, {	-- Pattern: Stormshroud Shoulders (RECIPE!)
				cr = 6144,	-- Son of Arkkoroc
			}),
			i(15728, {	-- Pattern: Wicked Leather Bracers (RECIPE!)
				cr = 6201,	-- Legashi Rogue
			}),
			i(251441, {	-- Plans: Imperial Plate Gauntlets (RECIPE!)
				cr = 6199,	-- Blood Elf Reclaimer
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			i(13491, {	-- Recipe: Elixir of the Mongoose (RECIPE!)
				coords = {
					{ 56.6, 23.6, MAP.AZSHARA },
					{ 53.6, 23.8, MAP.AZSHARA },
				},
				cr = 6201,	-- Legashi Rogue
			}),
			i(16045, {	-- Schematic: Spellpower Goggles Xtreme Plus (RECIPE!)
				cr = 6195,	-- Spitelash Siren
			}),
			i(10450, {	-- Undamaged Hippogryph Feather
				crs = {
					6648,	-- Antilos
					6380,	-- Thunderhead Consort
					6375,	-- Thunderhead Hippogryph
					6379,	-- Thunderhead Patriarch
					6378,	-- Thunderhead Skystormer
					6377,	-- Thunderhead Stagwing
				},
			}),
		}),
	},
});
