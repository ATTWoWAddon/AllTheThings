---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(EASTERN_KINGDOMS, LOCH_MODAN, {
	lore = "Loch Modan is a large area east of Dun Morogh, situated in eastern Khaz Modan. It is known for its temperate climate, abandoned archaeological dig site and, until the cataclysm, the huge lake from which the region takes its name. The gray and rugged Khaz Modan mountains rise up on all sides around the loch, and the hills are lightly wooded with pine and birch.\n\nLoch Modan is heavily populated by hostile troggs, unearthed from caves below ground by the dwarven digs. They have since settled in the surrounding mountainous area and built crude camps and caves from which to strike at passing travelers. Other dangers include dangerous wildlife, aggressive kobolds, and the powerful ogres of the Mo'grosh Stronghold.",
	icon = 236808,
	groups = {
		n(ACHIEVEMENTS, {
			ach(779),	-- Explore Loch Modan
		}),
		explorationHeader({
			exploration(925),	-- Algaz Station
			exploration(936),	-- Grizzlepaw Ridge
			exploration(142),	-- Ironband's Excavation Site
			exploration(143),	-- Mo'grosh Stronghold
			exploration(838),	-- North Gate Pass
			exploration(149),	-- Silver Stream Mine
			exploration(923),	-- Stonesplinter Valley
			exploration(146),	-- Stonewrought Dam
			exploration(147),	-- The Farstrider Lodge
			exploration(556),	-- The Loch
			exploration(144),	-- Thelsamar
			exploration(924),	-- Valley of Kings
		}),
		n(FLIGHT_PATHS, {
			fp(8, {	-- Thelsamar, Loch Modan
				cr = 1572,	-- Thorgrum Borrelson <Gryphon Master>
				coord = { 33.8, 50.8, LOCH_MODAN },
				races = ALLIANCE_ONLY,
			}),
		}),
		pickpocketing({
			applyclassicphase(SOD_PHASE_ONE, i(208838, {	-- Dark Iron Lockbox
				coord = { 56.6, 14.0, LOCH_MODAN },
				classes = { ROGUE },
				crs = {
					1222,	-- Dark Iron Sapper
					1169,	-- Dark Iron Insurgent
				},
				groups = {
					i(208771, {	-- Rune of Blade Dance
						classes = { ROGUE },
						groups = {
							recipe(400099),	-- Engrave Pants - Blade Dance
						},
					}),
				},
			})),
		}),
		n(QUESTS, {
			q(250, {	-- A Dark Threat Looms (1/7)
				qg = 1093,	-- Chief Engineer Hinderweir VII
				coord = { 46.0, 13.6, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 16,
			}),
			q(199, {	-- A Dark Threat Looms (2/7)
				sourceQuest = 250,	-- A Dark Threat Looms (1/7)
				providers = {
					{ "o", 257 },	-- Suspicious Barrel
					{ "i", 2563 },	-- Strange Smelling Powder
				},
				coord = { 56.1, 13.3, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 16,
			}),
			q(161, {	-- A Dark Threat Looms (3/7)
				sourceQuest = 199,	-- A Dark Threat Looms (2/7)
				qg = 1093,	-- Chief Engineer Hinderweir VII
				qi = 2563,	-- Strange Smelling Powder
				coord = { 46.0, 13.6, LOCH_MODAN },
				maps = { WETLANDS },
				races = ALLIANCE_ONLY,
				lvl = 16,
			}),
			q(274, {	-- A Dark Threat Looms (4/7)
				sourceQuest = 161,	-- A Dark Threat Looms (3/7)
				qg = 1073,	-- Ashlan Stonesmirk
				qi = 2609,	-- Disarming Colloid
				coord = { 50.0, 18.2, WETLANDS },
				races = ALLIANCE_ONLY,
				lvl = 16,
			}),
			q(278, {	-- A Dark Threat Looms (5/7)
				sourceQuest = 274,	-- A Dark Threat Looms (4/7)
				qg = 1093,	-- Chief Engineer Hinderweir VII
				coord = { 46.0, 13.6, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 16,
				groups = {
					objective(1, {	-- 0/1 Lurker Venom
						provider = { "i", 2606 },	-- Lurker Venom
						crs = {
							1184,	-- Cliff Lurker
							1195,	-- Forest Lurker
							14266,	-- Shanda the Spinner
							1185,	-- Wood Lurker
						},
					}),
					objective(2, {	-- 0/1 Mo'grosh Crystal
						provider = { "i", 2607 },	-- Mo'grosh Crystal
						crs = {
							14267,	-- Emogg the Crusher
							1180,	-- Mo'grosh Brute
							1179,	-- Mo'grosh Enforcer
							1183,	-- Mo'grosh Mystic
							1178,	-- Mo'grosh Ogre
							1181,	-- Mo'grosh Shaman
						},
					}),
					objective(3, {	-- 0/1 Crocolisk Tear
						provider = { "i", 2939 },	-- Crocolisk Tear
						crs = {
							2476,	-- Large Loch Crocolisk
							1693,	-- Loch Crocolisk
						},
					}),
				},
			}),
			q(280, {	-- A Dark Threat Looms (6/7)
				sourceQuest = 278,	-- A Dark Threat Looms (5/7)
				qg = 1093,	-- Chief Engineer Hinderweir VII
				qi = 2610,	-- Disarming Mixture
				coord = { 46.0, 13.6, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 16,
			}),
			q(283, {	-- A Dark Threat Looms (7/7)
				sourceQuest = 280,	-- A Dark Threat Looms (6/7)
				provider = { "o", 1585 },	-- Explosive Charge
				coord = { 50.6, 14.4, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 16,
				groups = {
					i(2907),	-- Dwarven Tree Chopper
					i(2908),	-- Thornblade
				},
			}),
			q(257, {	-- A Hunter's Boast
				qg = 1187,	-- Daryl the Youngling
				coord = { 83.4, 65.2, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 11,
				groups = {
					objective(1, {	-- 0/6 Mountain Buzzard slain
						provider = { "n", 1194 },	-- Mountain Buzzard
					}),
					i(2903),	-- Daryl's Hunting Bow
					i(2904),	-- Daryl's Hunting Rifle
				},
			}),
			q(258, {	-- A Hunter's Challenge
				sourceQuest = 257,	-- A Hunter's Boast
				qg = 1187,	-- Daryl the Youngling
				coord = { 83.4, 65.2, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 11,
				groups = {
					objective(1, {	-- 0/5 Elder Mountain Boar slain
						provider = { "n", 1192 },	-- Elder Mountain Boar
					}),
					i(3572),	-- Daryl's Shortsword
					i(859),	-- Fine Cloth Shirt
				},
			}),
			q(454, {	-- After the Ambush
				sourceQuest = 273,	-- Resupplying the Excavation
				qg = 2057,	-- Huldar
				coord = { 52.2, 69.2, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 10,
			}),
			q(704, {	-- Agmond's Fate
				sourceQuest = 739,	-- Murdaloc
				qg = 1344,	-- Prospector Ironband
				coord = { 65.9, 65.6, LOCH_MODAN },
				maps = { BADLANDS, ULDAMAN },
				races = ALLIANCE_ONLY,
				lvl = 30,
				groups = {
					objective(1, {	-- 0/4 Carved Stone Urn
						providers = {
							{ "i", 4610 },	-- Carved Stone Urn
							{ "o", 2743 },	-- Carved Stone Urn
						},
						description = "Can be found in the outdoor section of Uldaman.",
					}),
					i(4980),	-- Prospector Gloves
				},
			}),
			q(2500, {	-- Badlands Reagent Run
				qg = 1470,	-- Ghak Healtouch
				coord = { 37.07, 49.38, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/5 Buzzard Gizzard
						provider = { "i", 7847 },	-- Buzzard Gizzard
						crs = {
							2830,	-- Buzzard
							2831,	-- Giant Buzzard
							2829,	-- Starving Buzzard
						},
					}),
					objective(2, {	-- 0/10 Crag Coyote Fang
						provider = { "i", 7846 },	-- Crag Coyote Fang
						crs = {
							2727,	-- Crag Coyote
							2729,	-- Elder Crag Coyote
							2728,	-- Feral Crag Coyote
							2730,	-- Rabid Crag Coyote
						},
					}),
					objective(3, {	-- 0/5 Rock Elemental Shard
						provider = { "i", 7848 },	-- Rock Elemental Shard
						crs = {
							2745,	-- Ambassador Infernus
							2791,	-- Enraged Rock Elemental
							2919,	-- Fam'retor Guardian
							2736,	-- Greater Rock Elemental
							2735,	-- Lesser Rock Elemental
							92,		-- Rock Elemental
							2752,	-- Rumbler
							8278,	-- Smoldar
						},
					}),
				},
			}),
			q(2501, {	-- Badlands Reagent Run II
				sourceQuest = 17,	-- Uldaman Reagent Run
				qg = 1470,	-- Ghak Healtouch
				coord = { 37.07, 49.38, LOCH_MODAN },
				maps = { BADLANDS },
				requireSkill = ALCHEMY,
				races = ALLIANCE_ONLY,
				lvl = 40,
				groups = {
					objective(1, {	-- 0/3 Vessel of Dragon's Blood
						provider = { "i", 7867 },	-- Vessel of Dragon's Blood
						cost = { { "i", 7866, 1 } },	-- Empty Thaumaturgy Vessel
						cr = 2726,	-- Scorched Guardian
					}),
					i(7870, {	-- Thaumaturgy Vessel Lockbox
						i(7866),	-- Empty Thaumaturgy Vessel
					}),
					r(11452),	-- Restorative Potion
				},
			}),
			q(2038, {	-- Bingles' Missing Supplies
				sourceQuest = 2039,	-- Find Bingles
				qg = 6577,	-- Bingles Blastenheimer
				coord = { 63.6, 47.8, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 12,
				groups = {
					objective(1, {	-- 0/1 Bingles' Wrench
						providers = {
							{ "i",   7343 },	-- Bingles' Wrench
							{ "o", 104564 },	-- Bingles's Toolbucket
						},
						coord = { 48.8, 30.0, LOCH_MODAN },
					}),
					objective(2, {	-- 0/1 Bingles' Screwdriver
						providers = {
							{ "i",   7345 },	-- Bingles' Screwdriver
							{ "o", 104569 },	-- Bingles's Toolbucket
						},
						coord = { 48.5, 20.6, LOCH_MODAN },
					}),
					objective(3, {	-- 0/1 Bingles' Hammer
						providers = {
							{ "i",   7346 },	-- Bingles' Hammer
							{ "o", 104574 },	-- Bingles's Toolbucket
						},
						coord = { 51.8, 24.3, LOCH_MODAN },
					}),
					objective(4, {	-- 0/1 Bingles' Blastencapper
						providers = {
							{ "i",   7376 },	-- Bingles' Blastencapper
							{ "o", 104575 },	-- Bingles's Blastencapper
						},
						coord = { 54.3, 26.5, LOCH_MODAN },
					}),
					i(12522),	-- Bingles' Flying Gloves
				},
			}),
			q(385, {	-- Crocolisk Hunting
				qg = 1154,	-- Marek Ironheart
				coord = { 81.8, 61.8, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/5 Crocolisk Meat
						cost = { { "i", 2924, 5 } },	-- Crocolisk Meat
						crs = {
							5053,	-- Deviate Crocolisk
							2476,	-- Large Loch Crocolisk
							1693,	-- Loch Crocolisk
						},
					}),
					objective(2, {	-- 0/6 Crocolisk Skin
						provider = { "i", 2925 },	-- Crocolisk Skin
						crs = {
							2476,	-- Large Loch Crocolisk
							1693,	-- Loch Crocolisk
						},
					}),
					i(3678),	-- Recipe: Crocolisk Steak (RECIPE!)
					i(2240),	-- Rugged Cape
				},
			}),
			applyclassicphase(SOD_PHASE_TWO, q(79975, {	-- Eagle's Fist
				sourceQuest = 79974,	-- Wet Job
				provider = { "o", 424007 },	-- Carved Figurine
				coord = { 49.5, 12.8, LOCH_MODAN },
				timeline = { ADDED_1_15_1 },
				maps = { ARATHI_HIGHLANDS },
				lvl = 14,
			})),
			q(298, {	-- Excavation Progress Report
				qg = 1344,	-- Prospector Ironband
				qi = 2637,	-- Ironbrand's Progress Report
				coord = { 65.9, 65.6, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 10,
			}),
			q(307, {	-- Filthy Paws
				qg = 1343,	-- Mountaineer Stormpike
				coord = { 24.7, 18.3, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/4 Miners' Gear
						providers = {
							{ "i", 2640 },	-- Miners' Gear
							{ "o", 271 },	-- Miners' League Crates
						},
					}),
					i(3160),	-- Ironplate Buckler
					i(3166),	-- Ironheart Chain
					i(3161),	-- Robe of the Keeper
				},
			}),
			q(738, {	-- Find Agmond
				sourceQuest = 707,	-- Ironband Wants You!
				qg = 1344,	-- Prospector Ironband
				coord = { 65.93, 65.62, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 30,
				groups = {
					i(4982),	-- Ripped Prospector Belt
					i(2776),	-- Gold Ore
					i(1529),	-- Jade
				},
			}),
			q(297, {	-- Gathering Idols
				sourceQuest = 436,	-- Ironband's Excavation
				qg = 1345,	-- Magmar Fellhew
				coord = { 64.9, 66.7, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 13,
				groups = {
					objective(1, {	-- 0/8 Carved Stone Idol
						provider = { "i", 2636 },	-- Carved Stone Idol
						crs = {
							1393,	-- Berserk Trogg
							1167,	-- Stonesplinter Digger
							1165,	-- Stonesplinter Geomancer
						},
					}),
					i(5241),	-- Dwarven Flamestick
					i(6186),	-- Trogg Slicer
					i(3154),	-- Thelsamar Axe
				},
			}),
			q(6387, {	-- Honor Students
				qg = 1681,	-- Brock Stoneseeker
				qi = 16310,	-- Brock's List (PQI!)
				coord = { 37.0, 47.8, LOCH_MODAN },
				races = { DWARF, GNOME },
				lvl = 10,
			}),
			q(224, {	-- In Defense of the King's Lands (1/4)
				qg = 1089,	-- Mountaineer Cobbleflint
				coord = { 22.1, 73.2, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/10 Stonesplinter Trogg slain
						provider = { "n", 1161 },	-- Stonesplinter Trogg
					}),
					objective(2, {	-- 0/10 Stonesplinter Scout slain
						provider = { "n", 1162 },	-- Stonesplinter Scout
					}),
				},
			}),
			q(237, {	-- In Defense of the King's Lands (2/4)
				sourceQuest = 224,	-- In Defense of the King's Lands (1/4)
				qg = 1091,	-- Mountaineer Gravelgaw
				coord = { 23.4, 76.2, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/10 Stonesplinter Skullthumper slain
						provider = { "n", 1163 },	-- Stonesplinter Skullthumper
					}),
					objective(2, {	-- 0/10 Stonesplinter Seer slain
						provider = { "n", 1166 },	-- Stonesplinter Seer
					}),
				},
			}),
			q(263, {	-- In Defense of the King's Lands (3/4)
				sourceQuest = 237,	-- In Defense of the King's Lands (2/4)
				qg = 1090,	-- Mountaineer Wallbang
				coord = { 23.4, 74.6, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/10 Stonesplinter Shaman slain
						provider = { "n", 1197 },	-- Stonesplinter Shaman
					}),
					objective(2, {	-- 0/10 Stonesplinter Bonesnapper slain
						provider = { "n", 1164 },	-- Stonesplinter Bonesnapper
					}),
					i(2863),	-- Coarse Sharpening Stone
				},
			}),
			q(217, {	-- In Defense of the King's Lands (4/4)
				sourceQuests = {
					263,	-- In Defense of the King's Lands (3/4)
					267,	-- The Trogg Threat
				},
				qg = 1092,	-- Captain Rugelfuss
				coord = { 23.2, 73.8, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Grawmug slain
						provider = { "n", 1205 },	-- Grawmug
						coord = { 33.2, 91.0, LOCH_MODAN },
					}),
					objective(2, {	-- 0/1 Gnasher slain
						provider = { "n", 1206 },	-- Gnasher
						coord = { 34.4, 91.4, LOCH_MODAN },
					}),
					objective(3, {	-- 0/1 Brawler slain
						provider = { "n", 1207 },	-- Brawler
						coord = { 34.2, 91.6, LOCH_MODAN },
					}),
					i(1436),	-- Frontier Britches
					i(6187),	-- Dwarven Defender
					i(1832),	-- Lucky Trousers
				},
			}),
			q(436, {	-- Ironband's Excavation
				qg = 1105,	-- Jern Hornhelm
				coord = { 37.2, 47.4, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,
				lvl = 13,
			}),
			q(255, {	-- Mercenaries
				qg = 1139,	-- Magistrate Bluntnose
				coord = { 34.6, 44.5, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 15,
				groups = {
					objective(1, {	-- 0/4 Mo'grosh Ogre slain
						provider = { "n", 1178 },	-- Mo'grosh Ogre
					}),
					objective(2, {	-- 0/4 Mo'grosh Brute slain
						provider = { "n", 1180 },	-- Mo'grosh Brute
					}),
					objective(3, {	-- 0/4 Mo'grosh Enforcer slain
						provider = { "n", 1179 },	-- Mo'grosh Enforcer
					}),
				},
			}),
			q(1339, {	-- Mountaineer Stormpike's Task
				qg = 1340,	-- Mountaineer Kadrell
				coord = { 34.8, 47.0, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,
				lvl = 9,
			}),
			q(302, {	-- Powder to Ironband
				sourceQuest = 301,	-- Report to Ironforge
				qg = 1356,	-- Prospector Stormpike
				coord = { 74.4, 12.0, IRONFORGE },
				races = ALLIANCE_ONLY,
				lvl = 10,
			}),
			q(309, {	-- Protecting the Shipment
				sourceQuests = {
					454,	-- After the Ambush
				},
				qgs = {
					1379,	-- Miran
				},
				coords = {
					{ 52.2, 69.4, LOCH_MODAN },
				},
				races = ALLIANCE_ONLY,
				lvl = 10,
				groups = {
					i(3217),	-- Foreman Belt
					i(6188),	-- Mud Stompers
				},
			}),
			q(416, {	-- Rat Catching
				qg = 1340,	-- Mountaineer Kadrell
				coord = { 34.8, 47.0, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/12 Tunnel Rat Ear
						provider = { "i", 3110 },	-- Tunnel Rat Ear
						crs = {
							1175,	-- Tunnel Rat Digger
							1176,	-- Tunnel Rat Forager
							1174,	-- Tunnel Rat Geomancer
							1173,	-- Tunnel Rat Scout
							1177,	-- Tunnel Rat Surveyor
							1172,	-- Tunnel Rat Vermin
						},
					}),
					i(3158),	-- Burnt Hide Bracers
					i(860),	-- Cavalier's Boots
				},
			}),
			q(301, {	-- Report to Ironforge
				sourceQuest = 298,	-- Excavation Progress Report
				qg = 1105,	-- Jern Hornhelm
				qi = 2637,	-- Ironbrand's Progress Report
				coord = { 37.2, 47.4, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 10,
			}),
			q(468, {	-- Report to Mountaineer Rockgar
				qg = 1340,	-- Mountaineer Kadrell
				coord = { 34.8, 47.0, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,
				lvl = 19,
			}),
			q(273, {	-- Resupplying the Excavation
				sourceQuest = 302,	-- Powder to Ironband
				qg = 1105,	-- Jern Hornhelm
				coord = { 37.2, 47.4, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 10,
			}),
			q(6391, {	-- Ride to Ironforge
				sourceQuest = 6387,	-- Honor Students
				qg = 1572,	-- Thorgrum Borrelson
				qi = 16310,	-- Brock's List
				coord = { 33.9, 50.9, LOCH_MODAN },
				races = { DWARF, GNOME },
				lvl = 10,
			}),
			q(1338, {	-- Stormpike's Order
				sourceQuest = 1339,	-- Mountaineer Stormpike's Task
				qg = 1343,	-- Mountaineer Stormpike
				qi = 5998,	-- Stormpike's Request
				coord = { 24.7, 18.3, LOCH_MODAN },
				maps = { STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 9,
			}),
			q(455, {	-- The Algaz Gauntlet
				sourceQuest = 468,	-- Report to Mountaineer Rockgar
				qg = 1342,	-- Mountaineer Rockgar
				coord = { 25.5, 10.5, LOCH_MODAN },
				maps = { WETLANDS },
				races = ALLIANCE_ONLY,
				lvl = 19,
				groups = {
					objective(1, {	-- 0/8 Dragonmaw Scout slain
						provider = { "n", 2103 },	-- Dragonmaw Scout
					}),
					objective(2, {	-- 0/8 Dragonmaw Grunt slain
						provider = { "n", 2102 },	-- Dragonmaw Grunt
					}),
				},
			}),
			q(267, {	-- The Trogg Threat
				qg = 1092,	-- Captain Rugelfuss
				coord = { 23.3, 73.8, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/8 Trogg Stone Tooth
						provider = { "i", 2536 },	-- Trogg Stone Tooth
						crs = {
							1164,	-- Stonesplinter Bonesnapper
							1167,	-- Stonesplinter Digger
							1165,	-- Stonesplinter Geomancer
							1162,	-- Stonesplinter Scout
							1166,	-- Stonesplinter Seer
							1197,	-- Stonesplinter Shaman
							1163,	-- Stonesplinter Skullthumper
							1161,	-- Stonesplinter Trogg
						},
					}),
				},
			}),
			q(418, {	-- Thelsamar Blood Sausages
				qg = 1963,	-- Vidra Hearthstove
				coord = { 34.8, 49.3, LOCH_MODAN },
				cost = {
					{ "i", 3172, 3 },	-- Boar Intestines
					{ "i", 3173, 3 },	-- Bear Meat
					{ "i", 3174, 3 },	-- Spider Ichor
				},
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					i(3220),	-- Blood Sausage
					i(3679),	-- Recipe: Blood Sausage (RECIPE!)
				},
			}),
			q(17, {	-- Uldaman Reagent Run
				sourceQuest = 2500,	-- Badlands Reagent Run
				qg = 1470,	-- Ghak Healtouch
				coord = { 37.07, 49.38, LOCH_MODAN },
				maps = { BADLANDS, ULDAMAN },
				races = ALLIANCE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/12 Magenta Fungus Cap
						providers = {
							{ "i",   8047 },	-- Magenta Fungus Cap
							{ "o", 126049 },	-- Magenta Cap Clusters
						},
					}),
				},
			}),
			q(271, {	-- Vyrin's Revenge (1/2)
				sourceQuest = 258,	-- A Hunter's Challenge
				qg = 1156,	-- Vyrin Swiftwind
				coord = { 81.8, 64.2, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 15,
				groups = {
					objective(1, {	-- 0/1 Ol' Sooty's Head
						provider = { "i", 2713 },	-- Ol' Sooty's Head
						coord = { 37.6, 62.6, LOCH_MODAN },
						cr = 1225,	-- Ol' Sooty
					}),
				},
			}),
			q(531, {	-- Vyrin's Revenge (2/2)
				sourceQuest = 271,	-- Vyrin's Revenge (1/2)
				qg = 1187,	-- Daryl the Youngling
				qi = 2713,	-- Ol' Sooty's Head
				coord = { 83.4, 65.2, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 15,
				groups = {
					i(3574),	-- Hunting Ammo Sack
					i(3573),	-- Hunting Quiver
				},
			}),
			q(256, {	-- WANTED: Chok'sul
				provider = { "o", 256 },	-- WANTED
				coord = { 37.2, 46.4, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				lvl = 17,
				groups = {
					objective(1, {	-- 0/1 Chok'sul's Head
						provider = { "i", 2561 },	-- Chok'sul's Head
						coord = { 79.6, 14.2, LOCH_MODAN },
						cr = 1210,	-- Chok'sul
					}),
					i(6189),	-- Durable Chain Shoulders
					i(6191),	-- Kimbra Boots
					i(1449),	-- Minor Channeling Ring
				},
			}),
		}),
		n(RARES, {
			n(1398, {	-- Boss Galgosh <Stonesplinter Chieftain>
				coords = {
					{ 68.4, 66.0, LOCH_MODAN },
					{ 65.8, 68.0, LOCH_MODAN },
					{ 68.8, 68.6, LOCH_MODAN },
					{ 72.4, 67.6, LOCH_MODAN },
					{ 70.4, 63.8, LOCH_MODAN },
				},
				groups = {
					i(1938),	-- Block Mallet
					i(1215),	-- Support Girdle
				},
			}),
			n(14267, {	-- Emogg the Crusher
				coords = {
					{ 65.0, 21.0, LOCH_MODAN },
					{ 68.4, 28.8, LOCH_MODAN },
					{ 64.2, 28.4, LOCH_MODAN },
					{ 71.6, 21.0, LOCH_MODAN },
				},
				groups = {
					i(2821),	-- Mo'grosh Masher
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(209958, {	-- Graix
				provider = { "n", 209954 },	-- Demonic Remains
				coord = { 72.6, 68.8, LOCH_MODAN },
				classes = { WARLOCK },
				groups = {
					i(208744, {	-- Rune of Shadowbolts
						classes = { WARLOCK },
						groups = {
							recipe(403936),	-- Engrave Gloves - Shadow Bolt Volley
						},
					}),
				},
			})),
			n(1425, {	-- Grizlak / Kubb [CATA+]
				coords = {
					{ 35.4, 27.8, LOCH_MODAN },
				},
				groups = {
					i(2284),	-- Rat Cloth Cloak
					i(6195),	-- Wax-polished Armor
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(210107, {	-- Kackle
				coord = { 55.0, 55.4, LOCH_MODAN },
				classes = { HUNTER },
				groups = {
					i(208777, {	-- Rune of the Sniper
						classes = { HUNTER },
						groups = {
							recipe(416091),	-- Engrave Pants - Sniper Training
						},
					}),
				},
			})),
			n(2476, {	-- Large Loch Crocolisk / Gosh-Haldir [CATA+]
				coords = {
					{ 58.8, 28.2, LOCH_MODAN },
					{ 59.8, 31.8, LOCH_MODAN },
					{ 61.2, 40.6, LOCH_MODAN },
					{ 62.4, 45.6, LOCH_MODAN },
				},
				groups = {
					i(6197),	-- Loch Croc Hide Vest
					i(3563),	-- Seafarer's Pantaloons
				},
			}),
			n(14268, {	-- Lord Condar
				coords = {
					{ 62.8, 78.2, LOCH_MODAN },
					{ 74.8, 67.8, LOCH_MODAN },
					{ 78.0, 74.2, LOCH_MODAN },
				},
			}),
			n(1399, {	-- Magosh <Stonesplinter Tribal Shaman>
				coords = {
					{ 70.0, 66.2, LOCH_MODAN },
				},
				groups = {
					i(2241),	-- Desperado Cape
					i(3571),	-- Trogg Beater
				},
			}),
			n(14266, {	-- Shanda the Spinner
				coords = {
					{ 77.8, 53.6, LOCH_MODAN },
				},
			}),
		}),
		n(TREASURES, {
			applyclassicphase(SOD_PHASE_ONE, i(208689, {	-- Ferocious Idol
				provider = { "o", 408004 },	-- Tangled Blight Pile
				coord = { 71.8, 21.6, LOCH_MODAN },
				classes = { DRUID },
				groups = {
					recipe(410023),	-- Engrave Pants - Savage Roar
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(205905, {	-- Memory of a Devout Champion
				coord = { 36.6, 20.8, LOCH_MODAN },
				cost = { { "i", 208823, 1 } },	-- Offering Coin
				classes = { PRIEST },
				groups = {
					recipe(425215),	-- Engrave Chest - Twisted Faith
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, o(407983, {	-- Pile of Stolen Books
				coord = { 54.2, 27.0, LOCH_MODAN },
				groups = {
					i(208754, {	-- Spell Notes: TENGI RONEERA
						classes = { MAGE },
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(205932, {	-- Prophecy of a King's Demise
				description = "/kneel at the statue for the rune.",
				provider = { "n", 209908 },	-- Heretic Idol
				coord = { 71.8, 27.6, LOCH_MODAN },
				classes = { PRIEST },
				groups = {
					recipe(402849),	-- Engrave Gloves - Shadow Word - Death
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208860, {	-- Rumi of Gnomeregan: The Collected Works
				provider = { "o", 408014 },	-- Gnomish Tome
				coord = { 35.6, 48.9, LOCH_MODAN },
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208701, {	-- Rune of Beast Mastery
				provider = { "o", 407918 },	-- Empty Trophy Display
				coord = { 83.6, 65.5, LOCH_MODAN },
				classes = { HUNTER },
				groups = {
					recipe(410110),	-- Engrave Gloves - Beast Mastery
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208687, {	-- Rune of Lacerate
				description = "Use Rainbow Fin Albacore Chum on a young threshadon to receive this rune.",
				qg = 1224,	-- Young Threshadon
				qi = 208855,	-- Rainbow Fin Albacore Chum
				coord = { 44.8, 39.2, LOCH_MODAN },
				classes = { DRUID },
				groups = {
					recipe(416049),	-- Engrave Gloves - Lacerate
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208772, {	-- Rune of Saber Slash
				provider = { "o", 407731 },	-- Stonemason's Toolbox
				coord = { 46.5, 12.7, LOCH_MODAN },
				classes = { ROGUE },
				groups = {
					recipe(424984),	-- Engrave Gloves - Saber Slash
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(209850, {	-- Runes of the Sorcerer-Kings
				provider = { "o", 409731 },	-- Scrolls
				coord = { 77.5, 14.1, LOCH_MODAN },
			})),
			applyclassicphase(SOD_PHASE_ONE, o(407850, {	-- Sunken Reliquary
				coord = { 36.8, 91.4, LOCH_MODAN },
				groups = {
					i(208851, {	-- Libram of Justice
						classes = { PALADIN },
						groups = {
							recipe(410001),	-- Engrave Gloves - Hand of Reckoning
						},
					}),
				},
			})),
		}),
		n(VENDORS, {
			n(1214, {	-- Aldren Cordon <Clothier>
				coord = { 64.8, 66.0, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				sym = {{"select","itemID",
					16059,	-- Common Brown Shirt
					3428,	-- Common Grey Shirt
					16060,	-- Common White Shirt
					837,	-- Heavy Weave Armor
					3589,	-- Heavy Weave Belt
					3590,	-- Heavy Weave Bracers
					839,	-- Heavy Weave Gloves
					838,	-- Heavy Weave Pants
					840,	-- Heavy Weave Shoes
				}},
				groups = {
					i(4782, {	-- Solstice Robe
						isLimited = true,
					}),
					i(4781, {	-- Whispering Vest
						isLimited = true,
					}),
					i(4786, {	-- Wise Man's Belt
						isLimited = true,
					}),
				},
			}),
			n(1687, {	-- Cliff Hadin <Bowyer>
				coord = { 83.0, 63.0, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				sym = {{"select","itemID",
					2507,	-- Laminated Recurve Bow
					3026,	-- Reinforced Bow
				}},
				groups = {
					i(11304, {	-- Fine Longbow
						isLimited = true,
					}),
				},
			}),
			n(1465, {	-- Drac Roughcut <Tradesman>
				coord = { 35.6, 49.1, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				groups = {
					i(6892),	-- Recipe: Smoked Bear Meat (RECIPE!)
				},
			}),
			n(1686, {	-- Irene Sureshot <Gunsmith>
				coord = { 83.2, 63.5, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				sym = {{"select","itemID",
					2511,	-- Hunter's Boomstick
					3023,	-- Large Bore Blunderbuss
				}},
			}),
			n(954, {	-- Kat Sampson <Leather Armor Merchant>
				coord = { 82.6, 64.0, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				sym = {{"select","itemID",
					1843,	-- Tanned Leather Belt
					843,	-- Tanned Leather Boots
					1844,	-- Tanned Leather Bracers
					844,	-- Tanned Leather Gloves
					846,	-- Tanned Leather Jerkin
					845,	-- Tanned Leather Pants
				}},
				groups = {
					i(4788, {	-- Agile Boots
						isLimited = true,
					}),
					i(4789, {	-- Stable Boots
						isLimited = true,
					}),
				},
			}),
			n(1684, {	-- Khara Deepwater <Fishing Supplies>
				coords = {
					{ 40.4, 39.4, LOCH_MODAN },
				},
				races = ALLIANCE_ONLY,
				groups = {
					applyclassicphase(SOD_PHASE_ONE, i(208855, {	-- Rainbow Fin Albacore Chum
						cost = 526,	-- 5s 26c
						classes = { DRUID },
					})),
					i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
					i(6329),	-- Recipe: Loch Frenzy Delight (RECIPE!)
					i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
				},
			}),
			n(1362, {	-- Gothor Brumn <Armorer>
				coord = { 24.1, 18.2, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				sym = {{"select","itemID",
					847,	-- Chainmail Armor
					1845,	-- Chainmail Belt
					849,	-- Chainmail Boots
					1846,	-- Chainmail Bracers
					850,	-- Chainmail Gloves
					848,	-- Chainmail Pants
				}},
			}),
			n(3291, {	-- Greishan Ironstove <Traveling Merchant>
				coords = {
					{ 23.0, 70.4, LOCH_MODAN },
					{ 27.6, 65.8, LOCH_MODAN },
					{ 30.6, 58.0, LOCH_MODAN },
					{ 34.6, 47.2, LOCH_MODAN },
					{ 26.6, 22.6, LOCH_MODAN },
				},
				groups = {
					applyclassicphase(SOD_PHASE_ONE, i(208833, {	-- Malevolent Pie
						cost = 526,	-- 5s 26c
						classes = { WARLOCK },
						groups = {
							i(208750, {	-- Rune of Channeling
								classes = { WARLOCK },
								groups = {
									recipe(403932),	-- Engrave Chest - Master Channeler
								},
							}),
						},
					})),
				},
			}),
			n(167, {	-- Morhan Coppertongue <Metalsmith>
				coord = { 34.0, 46.6, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				sym = {{"select","itemID",
					847,	-- Chainmail Armor
					1845,	-- Chainmail Belt
					849,	-- Chainmail Boots
					1846,	-- Chainmail Bracers
					850,	-- Chainmail Gloves
					848,	-- Chainmail Pants
				}},
				groups = {
					i(4765, {	-- Enamelled Broadsword
						isLimited = true,
					}),
					i(4766, {	-- Feral Blade
						isLimited = true,
					}),
				},
			}),
			n(222, {	-- Nillen Andemar <Macecrafter>
				coord = { 43.0, 10.0, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				sym = {{"select","itemID",
					2492,	-- Cudgel
					1197,	-- Giant Mace
					852,	-- Mace
					2493,	-- Wooden Mallet
				}},
				groups = {
					i(4778, {	-- Heavy Spiked Mace
						isLimited = true,
					}),
					i(4777, {	-- Ironwood Maul
						isLimited = true,
					}),
				},
			}),
			n(1474, {	-- Rann Flamespinner <Tailoring Supplies>
				coord = { 36.0, 46.0, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				groups = {
					i(6275, {	-- Pattern: Greater Adept's Robe (RECIPE!)
						isLimited = true,
					}),
					i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(1469, {	-- Vrok Blunderblast <Gunsmith>
				coord = { 25.3, 42.5, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				sym = {{"select","itemID",
					2511,	-- Hunter's Boomstick
					2509,	-- Ornate Blunderbuss
				}},
			}),
			n(1685, {	-- Xandar Goodbeard <General Supplies>
				coord = { 82.6, 63.2, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				groups = {
					i(6053, {	-- Recipe: Holy Protection Potion (RECIPE!)
						isLimited = true,
					}),
					i(5640, {	-- Recipe: Rage Potion (RECIPE!)
						isLimited = true,
					}),
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(5319, {	-- Bashing Pauldrons
				coords = {
					{ 55.2, 68.2, LOCH_MODAN },
					{ 66.0, 37.8, LOCH_MODAN },
				},
				crs = {
					2478,	-- Haren Swifthoof <Horde Runner>
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(208843, {	-- Battle Totem
				coords = {
					{ 79.6, 16.0, LOCH_MODAN },
					{ 76.6, 16.0, LOCH_MODAN },
				},
				classes = { WARRIOR },
				crs = {
					1180,	-- Mo'grosh Brute
					1179,	-- Mo'grosh Enforcer
					1183,	-- Mo'grosh Mystic
					1178,	-- Mo'grosh Ogre
					1181,	-- Mo'grosh Shaman
				},
			})),
			i(3173),	-- Bear Meat
			i(3172, {	-- Boar Intestines
				coord = { 37.0, 34.4, LOCH_MODAN },
				crs = {
					1190,	-- Mountain Boar
					1191,	-- Mangy Mountain Boar
					1192,	-- Elder Mountain Boar
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(208854, {	-- Chewed Spell Notes
				coords = {
					{ 29.8, 84.6, LOCH_MODAN },
					{ 36.6, 84.4, LOCH_MODAN },
					{ 49.0, 21.6, LOCH_MODAN },
				},
				classes = { MAGE },
				cr = 1166,	-- Stonesplinter Seer
			})),
			i(2823, {	-- Mo'grosh Can Opener
				coords = {
					{ 79.6, 16.0, LOCH_MODAN },
					{ 76.6, 16.0, LOCH_MODAN },
				},
				crs = {
					1180,	-- Mo'grosh Brute
				},
			}),
			i(2821, {	-- Mo'grosh Masher
				coords = {
					{ 74.2, 28.4, LOCH_MODAN },
					{ 69.4, 22.2, LOCH_MODAN },
					{ 64.4, 20.6, LOCH_MODAN },
				},
				crs = {
					14267,	-- Emogg the Crusher
					1179,	-- Mo'grosh Enforcer
				},
			}),
			i(2822, {	-- Mo'grosh Toothpick
				coords = {
					{ 79.6, 16.0, LOCH_MODAN },
					{ 76.6, 16.0, LOCH_MODAN },
				},
				crs = {
					1178,	-- Mo'grosh Ogre
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(208823, {	-- Offering Coin
				coords = {
					{ 35.6, 20.0, LOCH_MODAN },
					{ 35.8, 27.4, LOCH_MODAN },
				},
				classes = { PRIEST },
				crs = {
					1175,	-- Tunnel Rat Digger
					1174,	-- Tunnel Rat Geomancer
					1177,	-- Tunnel Rat Surveyor
				},
			})),
			i(4949, {	-- Orcish Cleaver
				coords = {
					{ 55.2, 68.2, LOCH_MODAN },
					{ 66.0, 37.8, LOCH_MODAN },
				},
				crs = {
					7170,	-- Thragomm <Horde Runner>
				},
			}),
			i(2283, {	-- Rat Cloth Belt
				coords = {
					{ 35.2, 27.6, LOCH_MODAN },
					{ 35.2, 27.6, LOCH_MODAN },
				},
				cr = 1177,	-- Tunnel Rat Surveyor
			}),
			i(2700, {	-- Recipe: Succulent Pork Ribs (RECIPE!)
				description = "Has a chance to drop from any creature in the zone.",
			}),
			i(2281, {	-- Rodentia Flint Axe
				coords = {
					{ 38.4, 16.0, LOCH_MODAN },
					{ 32.6, 26.4, LOCH_MODAN },
					{ 32.2, 14.6, LOCH_MODAN },
					{ 27.6, 44.8, LOCH_MODAN },
				},
				crs = {
					1176,	-- Tunnel Rat Forager
					1202,	-- Tunnel Rat Kobold
				},
			}),
			i(2282, {	-- Rodentia Shortsword
				coords = {
					{ 28.2, 36.0, LOCH_MODAN },
					{ 25.2, 26.2, LOCH_MODAN },
					{ 19.8, 46.8, LOCH_MODAN },
					{ 28.6, 45.0, LOCH_MODAN },
					{ 25.0, 32.6, LOCH_MODAN },
					{ 37.4, 16.6, LOCH_MODAN },
				},
				crs = {
					1173,	-- Tunnel Rat Scout
					1172,	-- Tunnel Rat Vermin
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(208741, {	-- Rune of Endless Rage
				description = "You can challenge him to a duel (as to not fight his adds) with a Battle Totem.",
				provider = { "i", 208843 },	-- Battle Totem
				coords = {
					{ 55.2, 68.2, LOCH_MODAN },
					{ 66.0, 37.8, LOCH_MODAN },
				},
				classes = { WARRIOR },
				races = ALLIANCE_ONLY,
				cr = 2478,	-- Haren Swifthoof <Horde Runner>
				groups = {
					recipe(403489),	-- Engrave Gloves - Endless Rage
				},
			})),
			-- Moved to Searing Gorge in 10.1.7
			i(2274, {	-- Sapper's Gloves
				cr = 1222,	-- Dark Iron Sapper
			}),
			applyclassicphase(SOD_PHASE_ONE, i(208847, {	-- Skull-Shaped Geode
				coord = { 33.2, 73.8, LOCH_MODAN },
				classes = { WARRIOR },
				races = ALLIANCE_ONLY,
				crs = {
					1164,	-- Stonesplinter Bonesnapper
					1162,	-- Stonesplinter Scout
					1161,	-- Stonesplinter Trogg
				},
				groups = {
					i(208778, {	-- Rune of Quick Strike
						description = "Use the Skull-Shaped Geode on a Skullthumper to crack it and find this rune within.",
						provider = { "i", 208848 },	-- Cracked Skull-Shaped Geode
						classes = { WARRIOR },
						cr = 1163,	-- Stonesplinter Skullthumper
						groups = {
							recipe(425443),	-- Engrave Gloves - Quick Strike
						},
					}),
				},
			})),
			i(2265, {	-- Stonesplinter Axe
				coords = {
					{ 51.6, 24.6, LOCH_MODAN },
					{ 48.8, 29.6, LOCH_MODAN },
					{ 36.8, 84.8, LOCH_MODAN },
					{ 29.8, 84.0, LOCH_MODAN },
				},
				crs = {
					1163,	-- Stonesplinter Skullthumper
				},
			}),
			i(2268, {	-- Stonesplinter Blade
				crs = {
					1162,	-- Stonesplinter Scout
					1161,	-- Stonesplinter Trogg
				},
			}),
			i(2266, {	-- Stonesplinter Dagger
				coords = {
					{ 36.2, 86.0, LOCH_MODAN },
					{ 30.0, 83.8, LOCH_MODAN },
					{ 51.2, 23.6, LOCH_MODAN },
				},
				crs = {
					1166,	-- Stonesplinter Seer
				},
			}),
			i(2267, {	-- Stonesplinter Mace
				coords = {
					{ 54.6, 26.8, LOCH_MODAN },
					{ 37.4, 92.2, LOCH_MODAN },
				},
				cr = 1197,	-- Stonesplinter Shaman
			}),
			i(5109, {	-- Stonesplinter Rags
				crs = {
					1393,	-- Berserk Trogg
					1398,	-- Boss Galgosh <Stonesplinter Chieftain>
					1207,	-- Brawler
					1206,	-- Gnasher
					1205,	-- Grawmug
					1399,	-- Magosh <Stonesplinter Tribal Shaman>
					1166,	-- Stonesplinter Seer
					1197,	-- Stonesplinter Shaman
					1163,	-- Stonesplinter Skullthumper
					1164,	-- Stonesplinter Bonesnapper
					1167,	-- Stonesplinter Digger
					1165,	-- Stonesplinter Geomancer
					1162,	-- Stonesplinter Scout
					1161,	-- Stonesplinter Trogg
				},
			}),
		}),
	},
});
