---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.LOCH_MODAN, {
	["lore"] = "Loch Modan is a large area east of Dun Morogh, situated in eastern Khaz Modan. It is known for its temperate climate, abandoned archaeological dig site and, until the cataclysm, the huge lake from which the region takes its name. The gray and rugged Khaz Modan mountains rise up on all sides around the loch, and the hills are lightly wooded with pine and birch.\n\nLoch Modan is heavily populated by hostile troggs, unearthed from caves below ground by the dwarven digs. They have since settled in the surrounding mountainous area and built crude camps and caves from which to strike at passing travelers. Other dangers include dangerous wildlife, aggressive kobolds, and the powerful ogres of the Mo'grosh Stronghold.",
	["icon"] = 236808,
	["groups"] = {
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
				["cr"] = 1572,	-- Thorgrum Borrelson <Gryphon Master>
				["coord"] = { 33.8, 50.8, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
			}),
		}),
		n(QUESTS, {
			q(250, {	-- A Dark Threat Looms (1/7)
				["qg"] = 1093,	-- Chief Engineer Hinderweir VII
				["coord"] = { 46.0, 13.6, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
			}),
			q(199, {	-- A Dark Threat Looms (2/7)
				["sourceQuest"] = 250,	-- A Dark Threat Looms (1/7)
				["providers"] = {
					{ "o", 257 },	-- Suspicious Barrel
					{ "i", 2563 },	-- Strange Smelling Powder
				},
				["coord"] = { 56.1, 13.3, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
			}),
			q(161, {	-- A Dark Threat Looms (3/7)
				["sourceQuest"] = 199,	-- A Dark Threat Looms (2/7)
				["providers"] = {
					{ "n", 1093 },	-- Chief Engineer Hinderweir VII
					{ "i", 2563 },	-- Strange Smelling Powder
				},
				["coord"] = { 46.0, 13.6, MAP.LOCH_MODAN },
				["maps"] = { MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
			}),
			q(274, {	-- A Dark Threat Looms (4/7)
				["sourceQuest"] = 161,	-- A Dark Threat Looms (3/7)
				["providers"] = {
					{ "n", 1073 },	-- Ashlan Stonesmirk
					{ "i", 2609 },	-- Disarming Colloid
				},
				["coord"] = { 50.0, 18.2, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
			}),
			q(278, {	-- A Dark Threat Looms (5/7)
				["sourceQuest"] = 274,	-- A Dark Threat Looms (4/7)
				["qg"] = 1093,	-- Chief Engineer Hinderweir VII
				["coord"] = { 46.0, 13.6, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
				["groups"] = {
					objective(1, {	-- 0/1 Lurker Venom
						["provider"] = { "i", 2606 },	-- Lurker Venom
						["crs"] = {
							1184,	-- Cliff Lurker
							1195,	-- Forest Lurker
							14266,	-- Shanda the Spinner
							1185,	-- Wood Lurker
						},
					}),
					objective(2, {	-- 0/1 Mo'grosh Crystal
						["provider"] = { "i", 2607 },	-- Mo'grosh Crystal
						["crs"] = {
							14267,	-- Emogg the Crusher
							1180,	-- Mo'grosh Brute
							1179,	-- Mo'grosh Enforcer
							1183,	-- Mo'grosh Mystic
							1178,	-- Mo'grosh Ogre
							1181,	-- Mo'grosh Shaman
						},
					}),
					objective(3, {	-- 0/1 Crocolisk Tear
						["provider"] = { "i", 2939 },	-- Crocolisk Tear
						["crs"] = {
							2476,	-- Large Loch Crocolisk
							1693,	-- Loch Crocolisk
						},
					}),
				},
			}),
			q(280, {	-- A Dark Threat Looms (6/7)
				["sourceQuest"] = 278,	-- A Dark Threat Looms (5/7)
				["providers"] = {
					{ "n", 1093 },	-- Chief Engineer Hinderweir VII
					{ "i", 2610 },	-- Disarming Mixture
				},
				["coord"] = { 46.0, 13.6, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
			}),
			q(283, {	-- A Dark Threat Looms (7/7)
				["sourceQuest"] = 280,	-- A Dark Threat Looms (6/7)
				["provider"] = { "o", 1585 },	-- Explosive Charge
				["coord"] = { 50.6, 14.4, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
				["groups"] = {
					i(2907),	-- Dwarven Tree Chopper
					i(2908),	-- Thornblade
				},
			}),
			q(257, {	-- A Hunter's Boast
				["qg"] = 1187,	-- Daryl the Youngling
				["coord"] = { 83.4, 65.2, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 11,
				["groups"] = {
					objective(1, {	-- 0/6 Mountain Buzzard slain
						["provider"] = { "n", 1194 },	-- Mountain Buzzard
					}),
					i(2903),	-- Daryl's Hunting Bow
					i(2904),	-- Daryl's Hunting Rifle
				},
			}),
			q(258, {	-- A Hunter's Challenge
				["sourceQuest"] = 257,	-- A Hunter's Boast
				["qg"] = 1187,	-- Daryl the Youngling
				["coord"] = { 83.4, 65.2, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 11,
				["groups"] = {
					objective(1, {	-- 0/5 Elder Mountain Boar slain
						["provider"] = { "n", 1192 },	-- Elder Mountain Boar
					}),
					i(3572),	-- Daryl's Shortsword
					i(859),	-- Fine Cloth Shirt
				},
			}),
			q(454, {	-- After the Ambush
				["sourceQuest"] = 273,	-- Resupplying the Excavation
				["qg"] = 2057,	-- Huldar
				["coord"] = { 52.2, 69.2, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
			}),
			q(704, {	-- Agmond's Fate
				["sourceQuest"] = 739,	-- Murdaloc
				["qg"] = 1344,	-- Prospector Ironband
				["coord"] = { 65.9, 65.6, MAP.LOCH_MODAN },
				["maps"] = { MAP.BADLANDS, MAP.ULDAMAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/4 Carved Stone Urn
						["providers"] = {
							{ "i", 4610 },	-- Carved Stone Urn
							{ "o", 2743 },	-- Carved Stone Urn
						},
						["description"] = "Can be found in the outdoor section of Uldaman.",
					}),
					i(4980),	-- Prospector Gloves
				},
			}),
			q(2500, {	-- Badlands Reagent Run
				["qg"] = 1470,	-- Ghak Healtouch
				["coord"] = { 37.07, 49.38, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 36,
				["groups"] = {
					objective(1, {	-- 0/5 Buzzard Gizzard
						["provider"] = { "i", 7847 },	-- Buzzard Gizzard
						["crs"] = {
							2830,	-- Buzzard
							2831,	-- Giant Buzzard
							2829,	-- Starving Buzzard
						},
					}),
					objective(2, {	-- 0/10 Crag Coyote Fang
						["provider"] = { "i", 7846 },	-- Crag Coyote Fang
						["crs"] = {
							2727,	-- Crag Coyote
							2729,	-- Elder Crag Coyote
							2728,	-- Feral Crag Coyote
							2730,	-- Rabid Crag Coyote
						},
					}),
					objective(3, {	-- 0/5 Rock Elemental Shard
						["provider"] = { "i", 7848 },	-- Rock Elemental Shard
						["crs"] = {
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
				["sourceQuest"] = 17,	-- Uldaman Reagent Run
				["qg"] = 1470,	-- Ghak Healtouch
				["coord"] = { 37.07, 49.38, MAP.LOCH_MODAN },
				["maps"] = { MAP.BADLANDS },
				["requireSkill"] = ALCHEMY,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 40,
				["groups"] = {
					objective(1, {	-- 0/3 Vessel of Dragon's Blood
						["provider"] = { "i", 7867 },	-- Vessel of Dragon's Blood
						["cost"] = {{ "i", 7866, 1 }},	-- Empty Thaumaturgy Vessel
						["cr"] = 2726,	-- Scorched Guardian
					}),
					i(7870, {	-- Thaumaturgy Vessel Lockbox
						i(7866),	-- Empty Thaumaturgy Vessel
					}),
					r(11452),	-- Restorative Potion
				},
			}),
			q(2038, {	-- Bingles' Missing Supplies
				["sourceQuest"] = 2039,	-- Find Bingles
				["qg"] = 6577,	-- Bingles Blastenheimer
				["coord"] = { 63.6, 47.8, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 12,
				["groups"] = {
					objective(1, {	-- 0/1 Bingles' Wrench
						["providers"] = {
							{ "i", 7343 },		-- Bingles' Wrench
							{ "o", 104564 },	-- Bingles's Toolbucket
						},
						["coord"] = { 48.8, 30.0, MAP.LOCH_MODAN },
					}),
					objective(2, {	-- 0/1 Bingles' Screwdriver
						["providers"] = {
							{ "i", 7345 },		-- Bingles' Screwdriver
							{ "o", 104569 },	-- Bingles's Toolbucket
						},
						["coord"] = { 48.5, 20.6, MAP.LOCH_MODAN },
					}),
					objective(3, {	-- 0/1 Bingles' Hammer
						["providers"] = {
							{ "i", 7346 },		-- Bingles' Hammer
							{ "o", 104574 },	-- Bingles's Toolbucket
						},
						["coord"] = { 51.8, 24.3, MAP.LOCH_MODAN },
					}),
					objective(4, {	-- 0/1 Bingles' Blastencapper
						["providers"] = {
							{ "i", 7376 },		-- Bingles' Blastencapper
							{ "o", 104575 },	-- Bingles's Blastencapper
						},
						["coord"] = { 54.3, 26.5, MAP.LOCH_MODAN },
					}),
					i(12522),	-- Bingles' Flying Gloves
				},
			}),
			q(385, {	-- Crocolisk Hunting
				["qg"] = 1154,	-- Marek Ironheart
				["coord"] = { 81.8, 61.8, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/5 Crocolisk Meat
						["cost"] = {{ "i", 2924, 5 }},	-- Crocolisk Meat
						["crs"] = {
							5053,	-- Deviate Crocolisk
							2476,	-- Large Loch Crocolisk
							1693,	-- Loch Crocolisk
						},
					}),
					objective(2, {	-- 0/6 Crocolisk Skin
						["provider"] = { "i", 2925 },	-- Crocolisk Skin
						["crs"] = {
							2476,	-- Large Loch Crocolisk
							1693,	-- Loch Crocolisk
						},
					}),
					i(3678),	-- Recipe: Crocolisk Steak (RECIPE!)
					i(2240),	-- Rugged Cape
				},
			}),
			q(298, {	-- Excavation Progress Report
				["providers"] = {
					{ "n", 1344 },	-- Prospector Ironband
					{ "i", 2637 },	-- Ironbrand's Progress Report
				},
				["coord"] = { 65.9, 65.6, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
			}),
			q(307, {	-- Filthy Paws
				["qg"] = 1343,	-- Mountaineer Stormpike
				["coord"] = { 24.7, 18.3, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 9,
				["groups"] = {
					objective(1, {	-- 0/4 Miners' Gear
						["providers"] = {
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
				["sourceQuest"] = 707,	-- Ironband Wants You!
				["qg"] = 1344,	-- Prospector Ironband
				["coord"] = { 65.93, 65.62, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					i(4982),	-- Ripped Prospector Belt
					i(2776),	-- Gold Ore
					i(1529),	-- Jade
				},
			}),
			q(297, {	-- Gathering Idols
				["sourceQuest"] = 436,	-- Ironband's Excavation
				["qg"] = 1345,	-- Magmar Fellhew
				["coord"] = { 64.9, 66.7, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 13,
				["groups"] = {
					objective(1, {	-- 0/8 Carved Stone Idol
						["provider"] = { "i", 2636 },	-- Carved Stone Idol
						["crs"] = {
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
				["providers"] = {
					{ "n", 1681 },	-- Brock Stoneseeker
					{ "i", 16310 },	-- Brock's List (PQI!)
				},
				["coord"] = { 37.0, 47.8, MAP.LOCH_MODAN },
				["races"] = { DWARF, GNOME },
				["lvl"] = 10,
			}),
			q(224, {	-- In Defense of the King's Lands (1/4)
				["qg"] = 1089,	-- Mountaineer Cobbleflint
				["coord"] = { 22.1, 73.2, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/10 Stonesplinter Trogg slain
						["provider"] = { "n", 1161 },	-- Stonesplinter Trogg
					}),
					objective(2, {	-- 0/10 Stonesplinter Scout slain
						["provider"] = { "n", 1162 },	-- Stonesplinter Scout
					}),
				},
			}),
			q(237, {	-- In Defense of the King's Lands (2/4)
				["sourceQuest"] = 224,	-- In Defense of the King's Lands (1/4)
				["qg"] = 1091,	-- Mountaineer Gravelgaw
				["coord"] = { 23.4, 76.2, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/10 Stonesplinter Skullthumper slain
						["provider"] = { "n", 1163 },	-- Stonesplinter Skullthumper
					}),
					objective(2, {	-- 0/10 Stonesplinter Seer slain
						["provider"] = { "n", 1166 },	-- Stonesplinter Seer
					}),
				},
			}),
			q(263, {	-- In Defense of the King's Lands (3/4)
				["sourceQuest"] = 237,	-- In Defense of the King's Lands (2/4)
				["qg"] = 1090,	-- Mountaineer Wallbang
				["coord"] = { 23.4, 74.6, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/10 Stonesplinter Shaman slain
						["provider"] = { "n", 1197 },	-- Stonesplinter Shaman
					}),
					objective(2, {	-- 0/10 Stonesplinter Bonesnapper slain
						["provider"] = { "n", 1164 },	-- Stonesplinter Bonesnapper
					}),
					i(2863),	-- Coarse Sharpening Stone
				},
			}),
			q(217, {	-- In Defense of the King's Lands (4/4)
				["sourceQuests"] = {
					263,	-- In Defense of the King's Lands (3/4)
					267,	-- The Trogg Threat
				},
				["qg"] = 1092,	-- Captain Rugelfuss
				["coord"] = { 23.2, 73.8, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Grawmug slain
						["provider"] = { "n", 1205 },	-- Grawmug
						["coord"] = { 33.2, 91.0, MAP.LOCH_MODAN },
					}),
					objective(2, {	-- 0/1 Gnasher slain
						["provider"] = { "n", 1206 },	-- Gnasher
						["coord"] = { 34.4, 91.4, MAP.LOCH_MODAN },
					}),
					objective(3, {	-- 0/1 Brawler slain
						["provider"] = { "n", 1207 },	-- Brawler
						["coord"] = { 34.2, 91.6, MAP.LOCH_MODAN },
					}),
					i(1436),	-- Frontier Britches
					i(6187),	-- Dwarven Defender
					i(1832),	-- Lucky Trousers
				},
			}),
			q(436, {	-- Ironband's Excavation
				["qg"] = 1105,	-- Jern Hornhelm
				["coord"] = { 37.2, 47.4, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 13,
			}),
			q(255, {	-- Mercenaries
				["qg"] = 1139,	-- Magistrate Bluntnose
				["coord"] = { 34.6, 44.5, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 15,
				["groups"] = {
					objective(1, {	-- 0/4 Mo'grosh Ogre slain
						["provider"] = { "n", 1178 },	-- Mo'grosh Ogre
					}),
					objective(2, {	-- 0/4 Mo'grosh Brute slain
						["provider"] = { "n", 1180 },	-- Mo'grosh Brute
					}),
					objective(3, {	-- 0/4 Mo'grosh Enforcer slain
						["provider"] = { "n", 1179 },	-- Mo'grosh Enforcer
					}),
				},
			}),
			q(1339, {	-- Mountaineer Stormpike's Task
				["qg"] = 1340,	-- Mountaineer Kadrell
				["coord"] = { 34.8, 47.0, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 9,
			}),
			q(302, {	-- Powder to Ironband
				["sourceQuest"] = 301,	-- Report to Ironforge
				["qg"] = 1356,	-- Prospector Stormpike
				["coord"] = { 74.4, 12.0, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
			}),
			q(309, {	-- Protecting the Shipment
				["sourceQuest"] = 454,	-- After the Ambush
				["qg"] = 1379,	-- Miran
				["coord"] = { 52.2, 69.4, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					i(3217),	-- Foreman Belt
					i(6188),	-- Mud Stompers
				},
			}),
			q(416, {	-- Rat Catching
				["qg"] = 1340,	-- Mountaineer Kadrell
				["coord"] = { 34.8, 47.0, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/12 Tunnel Rat Ear
						["provider"] = { "i", 3110 },	-- Tunnel Rat Ear
						["crs"] = {
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
				["sourceQuest"] = 298,	-- Excavation Progress Report
				["providers"] = {
					{ "n", 1105 },	-- Jern Hornhelm
					{ "i", 2637 },	-- Ironbrand's Progress Report
				},
				["coord"] = { 37.2, 47.4, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
			}),
			q(468, {	-- Report to Mountaineer Rockgar
				["qg"] = 1340,	-- Mountaineer Kadrell
				["coord"] = { 34.8, 47.0, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 19,
			}),
			q(273, {	-- Resupplying the Excavation
				["sourceQuest"] = 302,	-- Powder to Ironband
				["qg"] = 1105,	-- Jern Hornhelm
				["coord"] = { 37.2, 47.4, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
			}),
			q(6391, {	-- Ride to Ironforge
				["sourceQuest"] = 6387,	-- Honor Students
				["providers"] = {
					{ "n", 1572 },	-- Thorgrum Borrelson
					{ "i", 16310 },	-- Brock's List
				},
				["coord"] = { 33.9, 50.9, MAP.LOCH_MODAN },
				["races"] = { DWARF, GNOME },
				["lvl"] = 10,
			}),
			q(1338, {	-- Stormpike's Order
				["sourceQuest"] = 1339,	-- Mountaineer Stormpike's Task
				["providers"] = {
					{ "n", 1343 },	-- Mountaineer Stormpike
					{ "i", 5998 },	-- Stormpike's Request
				},
				["coord"] = { 24.7, 18.3, MAP.LOCH_MODAN },
				["maps"] = { MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 9,
			}),
			q(455, {	-- The Algaz Gauntlet
				["sourceQuest"] = 468,	-- Report to Mountaineer Rockgar
				["qg"] = 1342,	-- Mountaineer Rockgar
				["coord"] = { 25.5, 10.5, MAP.LOCH_MODAN },
				["maps"] = { MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 19,
				["groups"] = {
					objective(1, {	-- 0/8 Dragonmaw Scout slain
						["provider"] = { "n", 2103 },	-- Dragonmaw Scout
					}),
					objective(2, {	-- 0/8 Dragonmaw Grunt slain
						["provider"] = { "n", 2102 },	-- Dragonmaw Grunt
					}),
				},
			}),
			q(267, {	-- The Trogg Threat
				["qg"] = 1092,	-- Captain Rugelfuss
				["coord"] = { 23.3, 73.8, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/8 Trogg Stone Tooth
						["provider"] = { "i", 2536 },	-- Trogg Stone Tooth
						["crs"] = {
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
				["qg"] = 1963,	-- Vidra Hearthstove
				["coord"] = { 34.8, 49.3, MAP.LOCH_MODAN },
				["cost"] = {
					{ "i", 3172, 3 },	-- Boar Intestines
					{ "i", 3173, 3 },	-- Bear Meat
					{ "i", 3174, 3 },	-- Spider Ichor
				},
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 7,
				["groups"] = {
					i(3220),	-- Blood Sausage
					i(3679),	-- Recipe: Blood Sausage (RECIPE!)
				},
			}),
			q(17, {	-- Uldaman Reagent Run
				["sourceQuest"] = 2500,	-- Badlands Reagent Run
				["qg"] = 1470,	-- Ghak Healtouch
				["coord"] = { 37.07, 49.38, MAP.LOCH_MODAN },
				["maps"] = { MAP.BADLANDS, MAP.ULDAMAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 38,
				["groups"] = {
					objective(1, {	-- 0/12 Magenta Fungus Cap
						["providers"] = {
							{ "i", 8047 },		-- Magenta Fungus Cap
							{ "o", 126049 },	-- Magenta Cap Clusters
						},
					}),
				},
			}),
			q(271, {	-- Vyrin's Revenge (1/2)
				["sourceQuest"] = 258,	-- A Hunter's Challenge
				["qg"] = 1156,	-- Vyrin Swiftwind
				["coord"] = { 81.8, 64.2, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 15,
				["groups"] = {
					objective(1, {	-- 0/1 Ol' Sooty's Head
						["provider"] = { "i", 2713 },	-- Ol' Sooty's Head
						["coord"] = { 37.6, 62.6, MAP.LOCH_MODAN },
						["cr"] = 1225,	-- Ol' Sooty
					}),
				},
			}),
			q(531, {	-- Vyrin's Revenge (2/2)
				["sourceQuest"] = 271,	-- Vyrin's Revenge (1/2)
				["providers"] = {
					{ "n", 1187 },	-- Daryl the Youngling
					{ "i", 2713 },	-- Ol' Sooty's Head
				},
				["coord"] = { 83.4, 65.2, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 15,
				["groups"] = {
					i(3574),	-- Hunting Ammo Sack
					i(3573),	-- Hunting Quiver
				},
			}),
			q(256, {	-- WANTED: Chok'sul
				["provider"] = { "o", 256 },	-- WANTED
				["coord"] = { 37.2, 46.4, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 17,
				["groups"] = {
					objective(1, {	-- 0/1 Chok'sul's Head
						["provider"] = { "i", 2561 },	-- Chok'sul's Head
						["coord"] = { 79.6, 14.2, MAP.LOCH_MODAN },
						["cr"] = 1210,	-- Chok'sul
					}),
					i(6189),	-- Durable Chain Shoulders
					i(6191),	-- Kimbra Boots
					i(1449),	-- Minor Channeling Ring
				},
			}),
		}),
		n(RARES, {
			n(1398, {	-- Boss Galgosh <Stonesplinter Chieftain>
				["coords"] = {
					{ 68.4, 66.0, MAP.LOCH_MODAN },
					{ 65.8, 68.0, MAP.LOCH_MODAN },
					{ 68.8, 68.6, MAP.LOCH_MODAN },
					{ 72.4, 67.6, MAP.LOCH_MODAN },
					{ 70.4, 63.8, MAP.LOCH_MODAN },
				},
				["groups"] = {
					i(1938),	-- Block Mallet
					i(1215),	-- Support Girdle
				},
			}),
			n(14267, {	-- Emogg the Crusher
				["coords"] = {
					{ 65.0, 21.0, MAP.LOCH_MODAN },
					{ 68.4, 28.8, MAP.LOCH_MODAN },
					{ 64.2, 28.4, MAP.LOCH_MODAN },
					{ 71.6, 21.0, MAP.LOCH_MODAN },
				},
				["groups"] = {
					i(2821),	-- Mo'grosh Masher
				},
			}),
			n(1425, {	-- Grizlak
				["coord"] = { 35.4, 27.8, MAP.LOCH_MODAN },
				["groups"] = {
					i(2284),	-- Rat Cloth Cloak
					i(6195),	-- Wax-polished Armor
				},
			}),
			n(2476, {	-- Large Loch Crocolisk
				["coords"] = {
					{ 58.8, 28.2, MAP.LOCH_MODAN },
					{ 59.8, 31.8, MAP.LOCH_MODAN },
					{ 61.2, 40.6, MAP.LOCH_MODAN },
					{ 62.4, 45.6, MAP.LOCH_MODAN },
				},
				["groups"] = {
					i(6197),	-- Loch Croc Hide Vest
					i(3563),	-- Seafarer's Pantaloons
				},
			}),
			n(14268, {	-- Lord Condar
				["coords"] = {
					{ 62.8, 78.2, MAP.LOCH_MODAN },
					{ 74.8, 67.8, MAP.LOCH_MODAN },
					{ 78.0, 74.2, MAP.LOCH_MODAN },
				},
			}),
			n(1399, {	-- Magosh <Stonesplinter Tribal Shaman>
				["coord"] = { 70.0, 66.2, MAP.LOCH_MODAN },
				["groups"] = {
					i(2241),	-- Desperado Cape
					i(3571),	-- Trogg Beater
				},
			}),
			n(14266, {	-- Shanda the Spinner
				["coord"] = { 77.8, 53.6, MAP.LOCH_MODAN },
			}),
		}),
		n(VENDORS, {
			n(1214, {	-- Aldren Cordon <Clothier>
				["coord"] = { 64.8, 66.0, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
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
				["groups"] = {
					i(4782, {	-- Solstice Robe
						["isLimited"] = true,
					}),
					i(4781, {	-- Whispering Vest
						["isLimited"] = true,
					}),
					i(4786, {	-- Wise Man's Belt
						["isLimited"] = true,
					}),
				},
			}),
			n(1687, {	-- Cliff Hadin <Bowyer>
				["coord"] = { 83.0, 63.0, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2507,	-- Laminated Recurve Bow
					3026,	-- Reinforced Bow
				}},
				["groups"] = {
					i(11304, {	-- Fine Longbow
						["isLimited"] = true,
					}),
				},
			}),
			n(1465, {	-- Drac Roughcut <Tradesman>
				["coord"] = { 35.6, 49.1, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(6892),	-- Recipe: Smoked Bear Meat (RECIPE!)
				},
			}),
			n(1686, {	-- Irene Sureshot <Gunsmith>
				["coord"] = { 83.2, 63.5, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2511,	-- Hunter's Boomstick
					3023,	-- Large Bore Blunderbuss
				}},
			}),
			n(954, {	-- Kat Sampson <Leather Armor Merchant>
				["coord"] = { 82.6, 64.0, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					1843,	-- Tanned Leather Belt
					843,	-- Tanned Leather Boots
					1844,	-- Tanned Leather Bracers
					844,	-- Tanned Leather Gloves
					846,	-- Tanned Leather Jerkin
					845,	-- Tanned Leather Pants
				}},
				["groups"] = {
					i(4788, {	-- Agile Boots
						["isLimited"] = true,
					}),
					i(4789, {	-- Stable Boots
						["isLimited"] = true,
					}),
				},
			}),
			n(1684, {	-- Khara Deepwater <Fishing Supplies>
				["coord"] = { 40.4, 39.4, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
					i(6329),	-- Recipe: Loch Frenzy Delight (RECIPE!)
					i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
				},
			}),
			n(1362, {	-- Gothor Brumn <Armorer>
				["coord"] = { 24.1, 18.2, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					847,	-- Chainmail Armor
					1845,	-- Chainmail Belt
					849,	-- Chainmail Boots
					1846,	-- Chainmail Bracers
					850,	-- Chainmail Gloves
					848,	-- Chainmail Pants
				}},
			}),
			n(167, {	-- Morhan Coppertongue <Metalsmith>
				["coord"] = { 34.0, 46.6, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					847,	-- Chainmail Armor
					1845,	-- Chainmail Belt
					849,	-- Chainmail Boots
					1846,	-- Chainmail Bracers
					850,	-- Chainmail Gloves
					848,	-- Chainmail Pants
				}},
				["groups"] = {
					i(4765, {	-- Enamelled Broadsword
						["isLimited"] = true,
					}),
					i(4766, {	-- Feral Blade
						["isLimited"] = true,
					}),
				},
			}),
			n(222, {	-- Nillen Andemar <Macecrafter>
				["coord"] = { 43.0, 10.0, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2492,	-- Cudgel
					1197,	-- Giant Mace
					852,	-- Mace
					2493,	-- Wooden Mallet
				}},
				["groups"] = {
					i(4778, {	-- Heavy Spiked Mace
						["isLimited"] = true,
					}),
					i(4777, {	-- Ironwood Maul
						["isLimited"] = true,
					}),
				},
			}),
			n(1474, {	-- Rann Flamespinner <Tailoring Supplies>
				["coord"] = { 36.0, 46.0, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(6275, {	-- Pattern: Greater Adept's Robe (RECIPE!)
						["isLimited"] = true,
					}),
					i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(1469, {	-- Vrok Blunderblast <Gunsmith>
				["coord"] = { 25.3, 42.5, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2511,	-- Hunter's Boomstick
					2509,	-- Ornate Blunderbuss
				}},
			}),
			n(1685, {	-- Xandar Goodbeard <General Supplies>
				["coord"] = { 82.6, 63.2, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(6053, {	-- Recipe: Holy Protection Potion (RECIPE!)
						["isLimited"] = true,
					}),
					i(5640, {	-- Recipe: Rage Potion (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(5319, {	-- Bashing Pauldrons
				["cr"] = 2478,	-- Haren Swifthoof <Horde Runner>
				["coords"] = {
					{ 55.2, 68.2, MAP.LOCH_MODAN },
					{ 66.0, 37.8, MAP.LOCH_MODAN },
				},
			}),
			i(3173),	-- Bear Meat
			i(3172, {	-- Boar Intestines
				["crs"] = {
					1190,	-- Mountain Boar
					1191,	-- Mangy Mountain Boar
					1192,	-- Elder Mountain Boar
				},
				["coord"] = { 37.0, 34.4, MAP.LOCH_MODAN },
				
			}),
			i(769),	-- Chunk of Boar Meat
			i(2823, {	-- Mo'grosh Can Opener
				["cr"] = 1180,	-- Mo'grosh Brute
				["coords"] = {
					{ 79.6, 16.0, MAP.LOCH_MODAN },
					{ 76.6, 16.0, MAP.LOCH_MODAN },
				},
			}),
			i(2821, {	-- Mo'grosh Masher
				["crs"] = {
					14267,	-- Emogg the Crusher
					1179,	-- Mo'grosh Enforcer
				},
				["coords"] = {
					{ 74.2, 28.4, MAP.LOCH_MODAN },
					{ 69.4, 22.2, MAP.LOCH_MODAN },
					{ 64.4, 20.6, MAP.LOCH_MODAN },
				},
			}),
			i(2822, {	-- Mo'grosh Toothpick
				["cr"] = 1178,	-- Mo'grosh Ogre
				["coords"] = {
					{ 79.6, 16.0, MAP.LOCH_MODAN },
					{ 76.6, 16.0, MAP.LOCH_MODAN },
				},
			}),
			i(4949, {	-- Orcish Cleaver
				["cr"] = 7170,	-- Thragomm <Horde Runner>
				["coords"] = {
					{ 55.2, 68.2, MAP.LOCH_MODAN },
					{ 66.0, 37.8, MAP.LOCH_MODAN },
				},
			}),
			i(2283, {	-- Rat Cloth Belt
				["cr"] = 1177,	-- Tunnel Rat Surveyor
				["coords"] = {
					{ 35.2, 27.6, MAP.LOCH_MODAN },
					{ 35.2, 27.6, MAP.LOCH_MODAN },
				},
			}),
			i(2700, {	-- Recipe: Succulent Pork Ribs (RECIPE!)
				["description"] = "Has a chance to drop from any creature in the zone.",
			}),
			i(2281, {	-- Rodentia Flint Axe
				["coords"] = {
					{ 38.4, 16.0, MAP.LOCH_MODAN },
					{ 32.6, 26.4, MAP.LOCH_MODAN },
					{ 32.2, 14.6, MAP.LOCH_MODAN },
					{ 27.6, 44.8, MAP.LOCH_MODAN },
				},
				["crs"] = {
					1176,	-- Tunnel Rat Forager
					1202,	-- Tunnel Rat Kobold
				},
			}),
			i(2282, {	-- Rodentia Shortsword
				["coords"] = {
					{ 28.2, 36.0, MAP.LOCH_MODAN },
					{ 25.2, 26.2, MAP.LOCH_MODAN },
					{ 19.8, 46.8, MAP.LOCH_MODAN },
					{ 28.6, 45.0, MAP.LOCH_MODAN },
					{ 25.0, 32.6, MAP.LOCH_MODAN },
					{ 37.4, 16.6, MAP.LOCH_MODAN },
				},
				["crs"] = {
					1173,	-- Tunnel Rat Scout
					1172,	-- Tunnel Rat Vermin
				},
			}),
			i(2274, {	-- Sapper's Gloves
				["cr"] = 1222,	-- Dark Iron Sapper
			}),
			i(2265, {	-- Stonesplinter Axe
				["cr"] = 1163,	-- Stonesplinter Skullthumper
				["coords"] = {
					{ 51.6, 24.6, MAP.LOCH_MODAN },
					{ 48.8, 29.6, MAP.LOCH_MODAN },
					{ 36.8, 84.8, MAP.LOCH_MODAN },
					{ 29.8, 84.0, MAP.LOCH_MODAN },
				},
			}),
			i(2268, {	-- Stonesplinter Blade
				["crs"] = {
					1162,	-- Stonesplinter Scout
					1161,	-- Stonesplinter Trogg
				},
			}),
			i(2266, {	-- Stonesplinter Dagger
				["cr"] = 1166,	-- Stonesplinter Seer
				["coords"] = {
					{ 36.2, 86.0, MAP.LOCH_MODAN },
					{ 30.0, 83.8, MAP.LOCH_MODAN },
					{ 51.2, 23.6, MAP.LOCH_MODAN },
				},
			}),
			i(2267, {	-- Stonesplinter Mace
				["cr"] = 1197,	-- Stonesplinter Shaman
				["coords"] = {
					{ 54.6, 26.8, MAP.LOCH_MODAN },
					{ 37.4, 92.2, MAP.LOCH_MODAN },
				},
			}),
			i(5109, {	-- Stonesplinter Rags
				["crs"] = {
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
