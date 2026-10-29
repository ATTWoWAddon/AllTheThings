-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local MAIN_GATE = createHeader({
	readable = "Main Gate",
	icon = 134503,
	text = {
		en = "Main Gate",
		de = "Haupttor",
		es = "Puerta principal",
		mx = "Puerta principal",
		fr = "Grande porte",
		-- it = "Main Gate",
		ko = "정문",
		pt = "Portão Principal",
		ru = "Главные врата",
		cn = "正门",
		tw = "主門",
	},
	description = {
		en = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Live\" or \"Scarlet\" side, which the Scarlet Crusade has taken over.",
		es = "Stratholme está dividida en dos lados.\n\nEste lado se conoce comúnmente como el lado \"Vivo\" o \"Escarlata\", que ha sido tomado por la Cruzada Escarlata.",
		mx = "Stratholme está dividida en dos partes.\n\nEsta parte se conoce comúnmente como la parte \"Viva\" o \"Escarlata\", que ha sido tomado por la Cruzada Escarlata.",
		cn = "斯坦索姆分为两侧。\n\n这一侧通常被称为“活人”侧或“血色”侧，现已被血色十字军占据。",
		tw = "斯坦索姆分為兩側。\n\n這一側通常被稱為「活人」側或「血色」側，現已被血色十字軍佔據。",
	},
});
local SERVICE_ENTRANCE = createHeader({
	readable = "Service Entrance",
	icon = 134247,
	text = {
		en = "Service Entrance",
		de = "Dienstboteneingang",
		es = "Entrada del servicio",
		mx = "Entrada del servicio",
		fr = "Entrée de service",
		-- it = "Service Entrance",
		ko = "공무용 입구",
		pt = "Entrada de Serviço",
		ru = "Черный ход",
		cn = "后门",
		tw = "僕從入口",
	},
	description = {
		en = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Dead\" or \"Scourge\" side, which the Scourge has taken over.",
		es = "Stratholme está dividida en dos lados.\n\nEste lado se conoce comúnmente como el lado de los 'Muertos' o del 'Azote', que el Azote ha tomado.",
		mx = "Stratholme está dividida en dos partes.\n\nEste lado se conoce comúnmente como la parte de los 'No Muertos' o de la 'Plaga', que la Plaga ha tomado.",
		cn = "斯坦索姆分为两侧。\n\n这一侧通常被称为“亡灵”侧或“天灾”侧，现已被天灾军团占据。",
		tw = "斯坦索姆分為兩側。\n\n這一側通常被稱為「不死」側或「天譴」側，現已被天譴軍團佔據。",
	},
});

instanceroot(236, {	-- Stratholme
	lore = "Once the jewel of northern Lordaeron, the city of Stratholme is where Prince Arthas turned against his mentor, Uther Lightbringer, and slaughtered hundreds of his own subjects who were believed to have contracted the dreaded plague of undeath. Arthas' downward spiral and ultimate surrender to the Lich King soon followed. The broken city is now inhabited by the undead Scourge	-- led by the powerful lich, Kel'Thuzad. A contingent of Scarlet Crusaders, led by Grand Crusader Dathrohan, also holds a portion of the ravaged city. The two sides are locked in constant, violent combat. Those adventurers brave (or foolish) enough to enter Stratholme will be forced to contend with both factions before long. It is said that the city is guarded by three massive watchtowers, as well as powerful necromancers, banshees and abominations. There have also been reports of a malefic Death Knight riding atop an unholy steed, dispensing indiscriminate wrath on all those who venture within the realm of the Scourge.",
	icon = 136359,
	zoneTextAreaID = 2017,	-- Stratholme
	mapID = MAP.STRATHOLME,
	maps = { 318 },	-- Stratholme (OLD)
	lvl = 48,
	groups = {
		n(QUESTS, {
			q(5263, {	-- Above and Beyond
				sourceQuest = 5262,	-- The Truth Comes Crashing Down
				qg = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
				coord = { 81.4, 59.8, MAP.EASTERN_PLAGUELANDS },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Head of Baron Rivendare
						provider = { "i", 13251 },	-- Head of Baron Rivendare
					}),
				},
			}),
			q(5125, {	-- Aurius' Reckoning
				sourceQuest = 5122,	-- The Medallion of Faith
				qg = 10917,	-- Aurius
				cost = { { "i", 12845, 1 } },	-- Medallion of Faith
				groups = {
					i(17044),	-- Will of the Martyr
					i(17045),	-- Blood of the Martyr
				},
			}),
			q(5861, {	-- Find Myranda
				sourceQuest = 5848,	-- Of Love and Family (2/2)
				providers = {
					{ "n", 1855 },	-- Tirion Fordring
					{ "i", 14872 },	-- Tirion's Gift
				},
				coord = { 7.6, 43.6, MAP.EASTERN_PLAGUELANDS },
				lvl = 52,
			}),
			q(5243, {	-- Houses of the Holy
				description = "When mousing over the crates, look for 'Requires: Disarm Trap'. If you see this, it's a trap and shouldn't be touched.\n\nIf you are a dwarf, use find treasure and on the mini map it will show a dot for the holy water in the crate. It will only show crates with items in it on the mini map and not bad crates.",
				qg = 11036,	-- Leonid Barthalomew the Revered <The Argent Dawn>
				coord = { 81.6, 57.8, MAP.EASTERN_PLAGUELANDS },
				cost = { { "i", 13180, 5 } },	-- Stratholme Holy Water
				lvl = 55,
				groups = {
					i(13216),	-- Crown of the Penitent
					i(13217),	-- Band of the Penitent
					i(6149),	-- Greater Mana Potion
					i(3928),	-- Superior Healing Potion
				},
			}),
			q(5944, {	-- In Dreams
				sourceQuest = 5862,	-- Scarlet Subterfuge
				qg = 1842,	-- Highlord Taelan Fordring <Highlord of the Scarlet Crusade>
				coord = { 42.0, 14.8, MAP.WESTERN_PLAGUELANDS },
				lvl = 52,
				groups = {
					i(15418),	-- Shimmering Platinum Warhammer
					i(15411),	-- Mark of Fordring
					i(15421),	-- Shroud of the Exile
					i(15413),	-- Ornate Adamantium Breastplate
					i(16058),	-- Fordring's Seal
				},
			}),
			q(5264, {	-- Lord Maxwell Tyrosus
				sourceQuest = 5263,	-- Above and Beyond
				qg = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
				coord = { 81.4, 59.8, MAP.EASTERN_PLAGUELANDS },
				lvl = 55,
			}),
			q(5781, {	-- Of Forgotten Memories
				sourceQuest = 5742,	-- Redemption
				qg = 1855,	-- Tirion Fordring
				coord = { 7.4, 43.6, MAP.EASTERN_PLAGUELANDS },
				lvl = 52,
				groups = {
					objective(1, {	-- 0/1 Taelan's Hammer
						providers = {
							{ "i",  14613 },	-- Taelan's Hammer
							{ "o", 177240 },	-- Loose Dirt Mound
						},
						coord = { 29.8, 85.6, MAP.EASTERN_PLAGUELANDS },
						cr = 11886,	-- Mercutio Filthgorger
					}),
				},
			}),
			q(5845, {	-- Of Lost Honor
				sourceQuest = 5781,	-- Of Forgotten Memories
				qg = 1855,	-- Tirion Fordring
				coord = { 7.4, 43.6, MAP.EASTERN_PLAGUELANDS },
				lvl = 52,
				groups = {
					objective(1, {	-- 0/1 Symbol of Lost Honor
						providers = {
							{ "i",  14625 },	-- Symbol of Lost Honor
							{ "o", 177264 },	-- Symbol of Lost Honor
						},
						coord = { 71.3, 33.9, MAP.EASTERN_PLAGUELANDS },
					}),
				},
			}),
			q(5846, {	-- Of Love and Family (1/2)
				sourceQuest = 5845,	-- Of Lost Honor
				qg = 1855,	-- Tirion Fordring
				coord = { 7.4, 43.6, MAP.EASTERN_PLAGUELANDS },
				lvl = 52,
			}),
			q(5848, {	-- Of Love and Family (2/2)
				sourceQuest = 5846,	-- Of Love and Family (1/2)
				qg = 11936,	-- Artist Renfray
				coord = { 65.6, 75.4, MAP.WESTERN_PLAGUELANDS },
				lvl = 52,
				groups = {
					objective(1, {	-- 0/1 Of Love and Family
						providers = {
							{ "i",  14679 },	-- Of Love and Family
							{ "o", 177287 },	-- Unfinished Painting
						},
					}),
				},
			}),
			q(6163, {	-- Ramstein
				sourceQuest = 6135,	-- Duskwing, Oh How I Hate Thee...
				qg = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
				coord = { 26.6, 74.8, MAP.EASTERN_PLAGUELANDS },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Head of Ramstein the Gorger
						provider = { "i", 15880 },	-- Head of Ramstein the Gorger
						cr = 10439,	-- Ramstein the Gorger
					}),
					i(18022),	-- Royal Seal of Alexis
					i(17001),	-- Elemental Circle
				},
			}),
			q(5742, {	-- Redemption
				sourceQuests = {
					5543,	-- Blood Tinged Skies
					5544,	-- Carrion Grubbage
					5542,	-- Demon Dogs
				},
				qg = 1855,	-- Tirion Fordring
				coord = { 7.4, 43.6, MAP.EASTERN_PLAGUELANDS },
				lvl = 52,
			}),
			q(5862, {	-- Scarlet Subterfuge
				sourceQuest = 5861,	-- Find Myranda
				providers = {
					{ "n", 11872 },	-- Myranda the Hag
					{ "i", 14872 },	-- Tirion's Gift
				},
				coord = { 50.8, 77.8, MAP.WESTERN_PLAGUELANDS },
				lvl = 52,
			}),
			q(5213, {	-- The Active Agent
				sourceQuest = 5212,	-- The Flesh Does Not Lie
				qg = 11035,	-- Betina Bigglezink <The Argent Dawn>
				coord = { 81.4, 59.6, MAP.EASTERN_PLAGUELANDS },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Scourge Data
						providers = {
							{ "i",  13176 },	-- Scourge Data
							{ "o", 176249 },	-- Scourge Data
						},
					}),
					i(19812),	-- Rune of the Dawn
					i(13209),	-- Seal of the Dawn
				},
			}),
			q(5251, {	-- The Archivist
				qg = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
				coord = { 81.4, 59.8, MAP.EASTERN_PLAGUELANDS },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Archivist Galford slain
						provider = { "n", 10811 },	-- Archivist Galford
					}),
					objective(2, {	-- 0/1 Archive Burning
						provider = { "o", 176245 },	-- Scarlet Archive
					}),
				},
			}),
			q(5265, {	-- The Argent Hold
				sourceQuest = 5264,	-- Lord Maxwell Tyrosus
				providers = {
					{ "n",  11034 },	-- Lord Maxwell Tyrosus <The Argent Dawn>
					{ "o", 176317 },	-- The Argent Hold
				},
				coord = { 81.6, 58.0, MAP.EASTERN_PLAGUELANDS },
				lvl = 55,
				groups = {
					i(13246),	-- Argent Avenger
					i(13249),	-- Argent Crusader
					i(13243),	-- Argent Defender
				},
			}),
			q(5212, {	-- The Flesh Does Not Lie
				qg = 11035,	-- Betina Bigglezink <The Argent Dawn>
				coord = { 81.4, 59.6, MAP.EASTERN_PLAGUELANDS },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/10 Plagued Flesh Sample (20 in Classic)
						provider = { "i", 13174 },	-- Plagued Flesh Sample
					}),
				},
			}),
			q(5214, {	-- The Great Ezra Grimm
				qg = 11033,	-- Smokey LaRue
				coord = { 81.6, 58.0, MAP.EASTERN_PLAGUELANDS },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Grimm's Premium Tobacco
						provider = { "i", 13172 },	-- Grimm's Premium Tobacco
						cr = 11058,	-- Ezra Grimm
					}),
					i(13171),	-- Smokey's Lighter
				},
			}),
			q(5122, {	-- The Medallion of Faith
				qg = 10917,	-- Aurius
				cost = { { "i", 12845, 1 } },	-- Medallion of Faith
				repeatable = true,
			}),
			q(5281, {	-- The Restless Souls (1/2)
				qg = 11038,	-- Caretaker Alen <The Argent Dawn>
				coord = { 79.6, 63.8, MAP.EASTERN_PLAGUELANDS },
				lvl = 55,
			}),
			q(5282, {	-- The Restless Souls (2/2)
				sourceQuest = 5281,	-- The Restless Souls (1/2)
				qg = 11140,	-- Egan
				coord = { 14.4, 33.6, MAP.EASTERN_PLAGUELANDS },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/15 Souls Freed
						provider = { "i", 13289 },	-- Egan's Blaster
						crs = {
							10385,	-- Ghostly Citizen
							10384,	-- Spectral Citizen
							11122,	-- Restless Soul
						},
					}),
					i(13315),	-- Testament of Hope
				},
			}),
			q(5262, {	-- The Truth Comes Crashing Down
				sourceQuest = 5251,	-- The Archivist
				provider = { "i", 13250 },	-- Head of Balnazzar
				lvl = 55,
			}),
		}),
		n(TREASURES, {
			o(181085, {	-- Stratholme Supply Crate
				i(13180),	-- Stratholme Holy Water
			}),
		}),
		n(ZONE_DROPS, {
			i(22526),	-- Bone Fragments
			i(12843, {	-- Corruptor's Scourgestone
				description = "Can drop from any Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
			}),
			i(12841, {	-- Invader's Scourgestone
				description = "Can drop from any Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
			}),
			i(12840, {	-- Minion's Scourgestone
				description = "Can drop from weak Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
			}),
			i(13174),	-- Plagued Flesh Sample
			i(12735, {	-- Frayed Abomination Stitching
				crs = {
					10439,	-- Ramstein the Gorger
					10414,	-- Patchwork Horror
					10416,	-- Bile Spewer
					10417,	-- Venom Belcher
				},
			}),
			i(18743),	-- Gracious Cape
			i(17061),	-- Juno's Shadow
			i(18741),	-- Morlune's Bracer
			i(18744),	-- Plaguebat Fur Gloves
			i(18736),	-- Plaguehound Leggings
			i(18745),	-- Sacred Cloth Leggings
			i(18742),	-- Stratholme Militia Shoulderguard
			i(16681, {	-- Beaststalker's Bindings
				crs = {
					10421,	-- Crimson Defender
					10407,	-- Fleshflayer Ghoul
					10406,	-- Ghoul Ravener
				},
			}),
			i(16736, {	-- Belt of Valor
				crs = {
					10416,	-- Bile Spewer
					10414,	-- Patchwork Horror
					10417,	-- Venom Belcher
				},
			}),
			i(16671, {	-- Bindings of Elements
				crs = {
					11043,	-- Crimson Monk
					10413,	-- Crypt Beast
					10412,	-- Crypt Crawler
				},
			}),
			i(16697, {	-- Devout Bracers
				crs = {
					10419,	-- Crimson Conjuror
					10420,	-- Crimson Initiate
					10423,	-- Crimson Priest
					10400,	-- Thuzadin Necromancer
					10398,	-- Thuzadin Shadowcaster
				},
			}),
			i(16702, {	-- Dreadmist Belt
				crs = {
					10419,	-- Crimson Conjuror
					10422,	-- Crimson Sorcerer
					10400,	-- Thuzadin Necromancer
					10398,	-- Thuzadin Shadowcaster
				},
			}),
			i(16723, {	-- Lightforge Belt
				crs = {
					10424,	-- Crimson Gallant
					10418,	-- Crimson Guardsman
					10408,	-- Rockwing Gargoyle
					10409,	-- Rockwing Screecher
				},
			}),
			i(16685, {	-- Magister's Belt
				crs = {
					10425,	-- Crimson Battle Mage
					10419,	-- Crimson Conjuror
					10422,	-- Crimson Sorcerer
					10400,	-- Thuzadin Necromancer
					10398,	-- Thuzadin Shadowcaster
				},
			}),
			i(16714, {	-- Wildheart Bracers
				crs = {
					10426,	-- Crimson Inquisitor
					10463,	-- Shrieking Banshee
					10464,	-- Wailing Banshee
				},
			}),
		}),
		n(MAIN_GATE, {
			coord = { 30.9, 16.6, MAP.EASTERN_PLAGUELANDS },	-- Stratholme [Main Gate]
			groups = {
				n(ZONE_DROPS, {
					i(12811, {	-- Righteous Orb
						description = "Can drop from any Scarlet Crusade member in Stratholme in addition to the Scarlet Oracle and the Crimson Elite in the Plaguelands.",
					}),
					i(12734, {	-- Enchanted Scarlet Thread
						description = "These can be found in 4 places in the Scarlet Enclave.\n\n1&2: Malor's Room on the Table\n3: In the next room before you split to Cannon Master or Archivist.\n4: In Archivist's room on a box in the back.",
						provider = { "o", 175966 },	-- Enchanted Scarlet Thread
					}),
					i(16249, {	-- Formula: Enchant 2H Weapon - Major Intellect (RECIPE!)
						cr = 10422,	-- Crimson Sorcerer / Risen Sorcerer [CATA+]
					}),
					i(14495, {	-- Pattern: Ghostweave Pants (RECIPE!)
						cr = 10384,	-- Spectral Citizen
					}),
					i(15777, {	-- Pattern: Runic Leather Shoulders (RECIPE!)
						cr = 10425,	-- Crimson Battle Mage
					}),
					i(18658, {	-- Schematic: Ultra-Flash Shadow Reflector (RECIPE!)
						cr = 10426,	-- Crimson Inquisitor
					}),
					i(16052, {	-- Schematic: Voice Amplification Modulator (RECIPE!)
						cr = 10426,	-- Crimson Inquisitor
					}),
				}),
				n(10393, {	-- Skul
					description = "This is a Rare Creature and, as such, is not always present.",
					groups = {
						i(13396),	-- Skul's Ghastly Touch
						i(13394),	-- Skul's Cold Embrace
						i(13395),	-- Skul's Fingerbone Claws
					},
				}),
				n(11058, {	-- Fras Siabi / Ezra Grimm
					description = "In order to summon this boss, one of your party members must be on the quest.",
					groups = {
						i(13172),	-- Siabi's Premium Tobacco / Grimm's Premium Tobacco
					},
				}),
				n(11082, {	-- Stratholme Courier
					description = "Drops 3 random keys used to open postboxes found throughout Stratholme. All 3 of the postboxes must be opened to spawn the Postmaster.",
					groups = {
						i(13303),	-- Crusaders' Square Postbox Key
						i(13305),	-- Elders' Square Postbox Key
						i(13304),	-- Festival Lane Postbox Key
						i(13307),	-- Fras Siabi's Postbox Key
						i(13306),	-- King's Square Postbox Key
						i(13302),	-- Market Row Postbox Key
					},
				}),
				n(11143, {	-- Postmaster Malown
					description = "Use the keys dropped by the Courier to open 3 mailboxes in the instance to get Postmaster Malown to spawn.",
					cost = {
						{ "i", 13303, 1 },	-- Crusaders' Square Postbox Key
						{ "i", 13305, 1 },	-- Elders' Square Postbox Key
						{ "i", 13304, 1 },	-- Festival Lane Postbox Key
						{ "i", 13307, 1 },	-- Fras Siabi's Postbox Key
						{ "i", 13306, 1 },	-- King's Square Postbox Key
						{ "i", 13302, 1 },	-- Market Row Postbox Key
					},
					groups = {
						i(13393),	-- Malown's Slam
						i(13390),	-- The Postmaster's Band
						i(13388),	-- The Postmaster's Tunic
						i(13389),	-- The Postmaster's Trousers
						i(13391),	-- The Postmaster's Treads
						i(13392),	-- The Postmaster's Seal
					},
				}),
				e(443, {	-- Hearthsinger Forresten
					creatureID = 10558,	-- Hearthsinger Forresten
					groups = {
						i(13379),	-- Piccolo of the Flaming Fire
						i(13378),	-- Songbird Blouse
						i(13384),	-- Rainbow Girdle
						i(13383),	-- Woollies of the Prancing Minstrel
						i(16682),	-- Magister's Boots
					},
				}),
				e(450, {	-- The Unforgiven
					creatureID = 10516,	-- The Unforgiven
					groups = {
						i(13408),	-- Soul Breaker
						i(13404),	-- Mask of the Unforgiven
						i(13405),	-- Wailing Nightbane Pauldrons
						i(13409),	-- Tearfall Bracers
						i(16717),	-- Wildheart Gloves
					},
				}),
				e(445, {	-- Timmy the Cruel
					creatureID = 10808,	-- Timmy the Cruel
					groups = {
						i(13401),	-- The Cruel Hand of Timmy
						i(13400),	-- Vambraces of the Sadist
						i(16724),	-- Lightforge Gauntlets
						i(13403),	-- Grimgore Noose
						i(13402),	-- Timmy's Galoshes
					},
				}),
				n(11032, {	-- Malor the Zealous
					i(12845, {	-- Medallion of Faith
						description = "Located in Malor's Strongbox. Can be turned in to Aurius on the Dead side of Stratholme to have him aide you during the Baron Rivendare encounter.",
						provider = { "o", 176112 },	-- Malor's Strongbox
					}),
				}),
				n(11120, {	-- Crimson Hammersmith
					description = "Found in the Hoard on the way to Cannon Master Willey.",
					provider = { "o", 176325 },	-- Blacksmithing Plans
					groups = {
						i(18781),	-- Bottom Half of Advanced Armorsmithing: Volume II
						i(13351),	-- Crimson Hammersmith's Apron
						i(12827, {	-- Plans: Serenity (RECIPE!)
							description = "You must be a Blacksmith in order to loot this from the Plans on the floor.",
						}),
					},
				}),
				e(446, {	-- Cannon Master Willey
					creatureID = 10997,	-- Cannon Master Willey
					groups = {
						i(12839),	-- Plans: Heartseeker (RECIPE!)
						i(22406),	-- Redemption
						i(22404),	-- Willey's Back Scratcher
						i(13380),	-- Willey's Portable Howitzer
						i(22407),	-- Helm of the New Moon
						i(22403),	-- Nacreous Shell Necklace
						i(22405),	-- Mantle of the Scarlet Crusade
						i(16708),	-- Shadowcraft Spaulders
						i(18721),	-- Barrage Girdle
						i(13381),	-- Master Cannoneer Boots
						i(13382),	-- Cannonball Runner
						i(13377),	-- Miniature Cannon Balls
					},
				}),
				e(448, {	-- Archivist Galford
					creatureID = 10811,	-- Archivist Galford
					groups = {
						i(14679, {	-- Of Love and Family
							description = "Found on the wall near Archivist Galford.",
						}),
						i(22897, {	-- Tome of Conjure Food VII
							classes = { MAGE },
							spellID = 28612,	-- Conjure Food VII
							rank = 7,
						}),
						i(13385),	-- Tome of Knowledge
						i(13386),	-- Archivist Cape
						i(16692),	-- Devout Gloves
						i(13387),	-- Foresight Girdle
						i(18716),	-- Ash Covered Boots
					},
				}),
				e(449, {	-- Balnazzar
					creatureID = 10813,	-- Balnazzar
					crs = { 10812 },	-- Grand Crusader Dathrohan
					groups = {
						i(13250),	-- Head of Balnazzar
						i(14512),	-- Pattern: Truefaith Vestments (RECIPE!)
						i(13520),	-- Recipe: Flask of Distilled Wisdom (RECIPE!)
						i(13348),	-- Demonshear
						i(18717),	-- Hammer of the Grand Crusader
						i(13360),	-- Gift of the Elven Magi
						i(13353),	-- Book of the Dead
						i(13359),	-- Crown of Tyranny
						i(18718),	-- Grand Crusader's Helm
						i(12103),	-- Star of Mystaria
						i(18720),	-- Shroud of the Nathrezim
						i(13358),	-- Wyrmtongue Shoulders
						i(13369),	-- Fire Striders
						i(16725),	-- Lightforge Boots
					},
				}),
				n(16102, {	-- Sothos
					creatureID = 16101,	-- Jarien
					description = "This boss can be summoned using the Brazier of Beckoning or the Brazier of Invocation, which can summon any of the spirits. Unfortunately, after the modifications made to the instance with 4.0.3, these drops become truly unobtainable even with the brazier.",
					providers = {
						{ "i", 22057 },	-- Brazier of Invocation
						{ "o", 181083 },	-- Sothos and Jarien's Heirlooms
					},
					cost = {{ "i", 22051, 1 }},	-- Brazier of Beckoning [Jarien & Sothos]
					groups = {
						objective(1, {	-- 0/1 Left Piece of Lord Valthalak's Amulet
							questID = 8968,	-- The Left Piece of Lord Valthalak's Amulet [HUNTER, ROGUE]
							provider = { "i", 21984 },	-- Left Piece of Lord Valthalak's Amulet
						}),
						objective(2, {	-- 0/1 Right Piece of Lord Valthalak's Amulet
							questID = 8991,	-- The Right Piece of Lord Valthalak's Amulet [PRIEST, MAGE]
							provider = { "i", 22046 },	-- Right Piece of Lord Valthalak's Amulet
						}),
						i(22329),	-- Scepter of Interminable Focus
						i(22327),	-- Amulet of the Redeemed
						i(22301),	-- Ironweave Robe
						i(22328),	-- Legplates of Vigilance
						i(22334),	-- Band of Mending
					},
				}),
				n(16387, {	-- Atiesh <Hand of Sargeras>
					description = "Summoned and defeated as part of the Atiesh quest chain to get the Greatstaff of the Guardian.",
					groups = {
						i(22736, {	-- Andonisus, Reaper of Souls
							description = "He drops this midway through the encounter and one lucky DPS can wield this. However, it is a conjured item and will disappear after a few minutes.",
							collectible = false,
						}),
					},
				}),
			},
		}),
		n(SERVICE_ENTRANCE, {
			provider = { "o", 175369 },	-- Elders' Square Service Entrance
			coords = {
				{ 48.18, 21.90, MAP.EASTERN_PLAGUELANDS },	-- Stratholme [Undead Side]
			},
			cost = { { "i", 12382, 1 } },	-- Key to the City
			groups = {
				n(ZONE_DROPS, {
					i(16248, {	-- Formula: Enchant Weapon - Unholy (RECIPE!)
						cr = 10398,	-- Thuzadin Shadowcaster
					}),
					i(15768, {	-- Pattern: Wicked Leather Belt (RECIPE!)
						cr = 10406,	-- Ghoul Ravener
					}),
					i(16710, {	-- Shadowcraft Bracers
						cr = 10405,	-- Plague Ghoul
					}),
				}),
				n(10809, {	-- Stonespine
					description = "This is a Rare Creature and, as such, is not always present.",
					groups = {
						i(13399),	-- Gargoyle Shredder Talons
						i(13397),	-- Stoneskin Gargoyle Cape
						i(13954),	-- Verdant Footpads
					},
				}),
				e(452, {	-- Nerub'enkan
					creatureID = 10437,	-- Nerub'enkan
					groups = {
						i(13176, {	-- Scourge Data
							description = "Located in the Ziggurat behind the boss.",
							provider = { "o", 176249 },	-- Scourge Data
						}),
						i(18738),	-- Carapace Spine Crossbow
						i(13529),	-- Husk of Nerub'enkan
						i(13533),	-- Acid-Etched Pauldrons
						i(13532),	-- Darkspinner Claws
						i(18740),	-- Thuzadin Sash
						i(18739),	-- Chitinous Plate Legguards
						i(13531),	-- Crypt Stalker Leggings
						i(16675),	-- Beaststalker's Boots
						i(13530),	-- Fangdrip Runners
						i(13508),	-- Eye of Arachnida
					},
				}),
				n(11121, {	-- Black Guard Swordsmith
					description = "Found outside of Baroness Anastari's ziggurat.",
					provider = { "o", 176325 },	-- Blacksmithing Plans
					groups = {
						i(18783),	-- Bottom Half of Advanced Armorsmithing: Volume III
						i(13350),	-- Insignia of the Black Guard
						i(12830, {	-- Plans: Corruption (RECIPE!)
							description = "You must be a Blacksmith in order to loot this from the Plans on the floor. This will despawn once a player interacts with it.",
						}),
					},
				}),
				e(451, {	-- Baroness Anastari
					creatureID = 10436,	-- Baroness Anastari
					groups = {
						i(13534),	-- Banshee Finger
						i(18729),	-- Screeching Bow
						i(18728),	-- Anastari Heirloom
						i(13538),	-- Windshrieker Pauldrons
						i(13535),	-- Coldtouch Phantom Wraps
						i(13537),	-- Chillhide Bracers
						i(13539),	-- Banshee's Touch
						i(18730),	-- Shadowy Laced Handwraps
						i(16704),	-- Dreadmist Sandals
						i(13514, {	-- Wail of the Banshee
							description = "This can be used on raid bosses and in PVP... Probably not a bad idea to keep on you.",
						}),
					},
				}),
				e(453, {	-- Maleki the Pallid
					creatureID = 10438,	-- Maleki the Pallid
					groups = {
						i(12833),	-- Plans: Hammer of the Titans (RECIPE!)
						i(18737),	-- Bone Slicing Hatchet
						i(13524),	-- Skull of Burning Shadows
						i(18734),	-- Pale Moon Cloak
						i(13528),	-- Twilight Void Bracers
						i(13525),	-- Darkbind Fingers
						i(13526),	-- Flamescarred Girdle
						i(16691),	-- Devout Sandals
						i(13527),	-- Lavawalker Greaves
						i(18735),	-- Maleki's Footwraps
						i(13509),	-- Clutch of Foresight
					},
				}),
				e(454, {	-- Magistrate Barthilas
					description = "If you enter from the Main Gate side, you can fight this boss first, otherwise he runs to the Slaughter House.",
					creatureID = 10435,	-- Magistrate Barthilas
					groups = {
						i(12382),	-- Key to the City
						i(18725),	-- Peacemaker
						i(18727),	-- Crimson Felt Hat
						i(13376),	-- Royal Tribunal Cloak
						i(18726),	-- Magistrate's Cuffs
						i(18722),	-- Death Grips
						i(23198),	-- Idol of Brutality
					},
				}),
				e(455, {	-- Ramstein the Gorger
					creatureID = 10439,	-- Ramstein the Gorger
					groups = {
						i(15880),	-- Head of Ramstein the Gorger
						i(13372),	-- Slavedriver's Cane
						i(13375),	-- Crest of Retribution
						i(18723),	-- Animated Chain Necklace
						i(13374),	-- Soulstealer Mantle
						i(16737),	-- Gauntlets of Valor
						i(13373),	-- Band of Flesh
						i(13515),	-- Ramstein's Lightning Bolts
					},
				}),
				e(456, {	-- Baron Rivendare
					creatureID = 10440,	-- Baron Rivendare
					groups = {
						i(13251),	-- Head of Baron Rivendare
						i(13335),	-- Rivendare's Deathcharger (MOUNT!)
						i(16678),	-- Beaststalker's Pants
						i(16694),	-- Devout Skirt
						i(16699),	-- Dreadmist Leggings
						i(16668),	-- Kilt of Elements
						i(16732),	-- Legplates of Valor
						i(16728),	-- Lightforge Legplates
						i(16687),	-- Magister's Leggings
						i(16709),	-- Shadowcraft Pants
						i(16719),	-- Wildheart Kilt
						i(13505),	-- Runeblade of Baron Rivendare
						i(13368),	-- Bonescraper
						i(22408),	-- Ritssyn's Wand of Bad Mojo
						i(13349),	-- Scepter of the Unholy
						i(13361),	-- Skullforge Reaver
						i(22411),	-- Helm of the Executioner
						i(22412),	-- Thuzadin Mantle
						i(13340),	-- Cape of the Black Baron
						i(13346),	-- Robes of the Exalted
						i(22409),	-- Tunic of the Crescent Moon
						i(13344),	-- Dracorian Gauntlets
						i(22410),	-- Gauntlets of Deftness
						i(13345),	-- Seal of Rivendare
					},
				}),
			},
		}),
	},
});