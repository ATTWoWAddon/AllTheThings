---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(FLIGHT_PATHS, {
	expansion(EXPANSION.CLASSIC, {
		-- 1.x.x
		n(P1xx, {
			fp(1), -- Northshire Abbey
			fp(3), -- Programmer Isle
			fp(9), -- Booty Bay, Stranglethorn
			fp(15), -- Eastern Plaguelands
			fp(24), -- Generic, World Target 002
			fp(34), -- Transport, Booty Bay
			fp(35), -- Transport, Orgrimmar
			fp(36), -- Generic, World Target 001
			fp(57), -- Fishing Village, Teldrassil
			fp(46), -- Transport, Southshore
			fp(47), -- Transport, Grom'gol
			fp(50), -- Transport, Menethil Harbor
			fp(51), -- Transport, Auberdine
			fp(54), -- Transport, Feathermoon
			fp(59), -- Dun Baldar, Alterac Valley
			fp(60), -- Frostwolf Keep, Alterac Valley
			fp(78), -- Naxxramas
		}),
	}),
	expansion(EXPANSION.TBC, {
		-- 2.x.x
		n(P2xx, {
			fp(81), -- Filming
			fp(88), -- Transport, Exodar
			fp(89), -- Transport, Theramore
			fp(90), -- Transport, Undercity
			fp(91), -- Quest - Azuremyst Shaman Target
			fp(92), -- Quest - Azuremyst Shaman Start
			fp(95), -- Zangarmarsh - Quest - As the Crow Flies
			fp(96), -- Zangarmarsh - Quest - As the Crow Flies - End
			fp(97), -- Quest - Elekk Path to Kessel
			fp(98), -- Quest - Elekk to Kessel Target
			fp(103), -- Nagrand - PvP - Attack Run Start 1
			fp(104), -- Nagrand - PvP - Attack Run End 1
			fp(105), -- Nagrand - PvP - Attack Run Start 2
			fp(106), -- Nagrand - PvP - Attack Run End 2
			fp(107), -- Nagrand - PvP - Attack Run Start 3
			fp(108), -- Nagrand - PvP - Attack Run End 3
			fp(109), -- Nagrand - PvP - Attack Run Start 4
			fp(110), -- Nagrand - PvP - Attack Run End 4
			fp(111), -- Eversong - Duskwither Teleport
			fp(112), -- Eversong - Duskwither Teleport End
			fp(113), -- Quest - Nethrandamus Start
			fp(114), -- Quest - Nethrandamus End Target
			fp(115), -- Quest - Caverns of Time OH - Begin
			fp(116), -- Quest - Caverns of Time OH - End
			fp(131), -- Quest - Horde Hellfire Start
			fp(132), -- Quest - Horde Hellfire End
			fp(133), -- Quest - Hellfire Peninsula (Alliance Path) Start
			fp(134), -- Quest - Hellfire Peninsula (Alliance) End
			fp(135), -- Quest - Hellfire, Aerial Mission (Horde) Start
			fp(136), -- Quest - Hellfire, Aerial Mission (Horde) End
			fp(137), -- Quest - Hellfire, Aerial Mission (Alliance) Start
			fp(138), -- Quest - Hellfire, Aerial Mission (Alliance) End
			fp(142), -- Hellfire Peninsula - Reaver's Fall
			fp(143), -- Quest - Caverns of Time (Intro Flight Path) (End)
			fp(144), -- Quest - Caverns of Time (Intro Flight Path) (Start)
			fp(145), -- Quest - Netherstorm - Stealth Flight - Begin
			fp(146), -- Quest - Netherstorm - Stealth Flight - End
			fp(147), -- Hellfire Peninsula - Force Camp Beach Head
			fp(148), -- Shatter Point, Hellfire Peninsula (Beach Assault)
			fp(152), -- Quest - Netherstorm - Manaforge Ultris (Start)
			fp(153), -- Quest - Netherstorm - Manaforge Ultris (End)
			fp(154), -- Quest - Netherstorm - Manaforge Ultris (Second Pass) Start
			fp(155), -- Quest - Netherstorm - Manaforge Ultris (Second Pass) End
			fp(157), -- Quest - Blade's Edge - Vision Guide - Start
			fp(158), -- Quest - Blade's Edge - Vision Guide - End
			fp(161), -- Quest - Nether Dragon Ally - Start
			fp(162), -- Quest - Nether Dragon Ally - End
			fp(168), -- Filming
			fp(169), -- Quest - Netherwing Ledge - Mine Cart Ride - South - Start
			fp(170), -- Quest - Netherwing Ledge - Mine Cart Ride - South - End
			fp(171), -- Skettis
			fp(172), -- Ogri'La
			fp(173), -- Quest - Yarzill Flight Start
			fp(174), -- Quest - Yarzill Flight Start End
			fp(180), -- Quest - Dustwallow - Alcaz Survey Start
			fp(181), -- Quest - Dustwallow - Alcaz Survey End
			fp(197), -- Test SP2
			fp(198), -- Test SP1
			fp(201), -- Development Land - Kyle Radue Start
			fp(202), -- Development Land - Kyle Radue End
			fp(206), -- Transport, Feathermoon (NE Ship)
			fp(209), -- Quest - Sunwell Daily - Dead Scar Bombing - Start
			fp(210), -- Quest - Sunwell Daily - Dead Scar Bombing - End
			fp(211), -- Quest - Sunwell Daily - Ship Bombing - Start
			fp(212), -- Quest - Sunwell Daily - Ship Bombing - End
			fp(220, {["description"] = ""}),
		}),
	}),
	expansion(EXPANSION.WRATH, {
		-- 3.0.1
		expansion(EXPANSION.WRATH, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
			fp(165), -- Transport, Northrend 2
			fp(175), -- Transport, Howling Fjord
			fp(176), -- Quest - Howling Fjord Tauren Canoe (Start)
			fp(177), -- Quest - Howling Fjord Tauren Canoe (End)
			fp(178), -- Transport, Borean Tundra
			fp(182), -- Quest - Howling Fjord - Break the Blockade Zeppelin
			fp(186), -- Quest - Howling Fjord - Flight to the Windrunner - Start
			fp(187), -- Quest - Howling Fjord - Flight to the Windrunner - End
			fp(188), -- Quest - Howling Fjord - Test at Sea - Start
			fp(189), -- Quest - Howling Fjord - Test at Sea - End
			fp(193), -- Quest - Howling Fjord - Mission: Plague This! - End
			fp(194), -- Quest - Howling Fjord - Mission: Plague This! - Start
			fp(196), -- Test - SP
			fp(199), -- Quest - Howling Fjord - McGoyver Start
			fp(200), -- Quest - Howling Fjord - McGoyver End
			fp(203), -- Quest - Stars' Rest -> Wintergarde
			fp(204), -- Quest - New Agamand -> Venomspite
			fp(207), -- Quest - Howling Fjord - Sister Mercy (Start)
			fp(208), -- Quest - Howling Fjord - Sister Mercy (End)
			fp(214), -- Quest - Howling Fjord - Naglfar (Start)
			fp(215), -- Quest - Howling Fjord - Naglfar (Nodes)
			fp(216, {["description"] = ""}),
			fp(217, {["description"] = ""}),
			fp(218), -- Transport, Howling Fjord (Gondola, Top)
			fp(219), -- Transport, Howling Fjord (Gondola, Bottom)
			fp(221), -- Amber Ledge, Borean (To Beryl)
			fp(222), -- Beryl Point, Borean
			fp(223), -- Quest - Naglevar
			fp(224), -- Borean Tundra, Naglevar
			fp(225), -- Amber Ledge, Borean (to Coldarra)
			fp(227), -- Transport, PattyMacDevTest
			fp(228), -- Development Land - Pat Test Start
			fp(229), -- Development Land - Pat Test End
			fp(230), -- Transport, Tuskarr 01
			fp(231), -- Transport, Tuskarr 02
			fp(232), -- Borean Tundra - Warsong Hold Wolf Start
			fp(233), -- Borean Tundra - Warsong Hold Wolf End
			fp(234), -- Coldarra Ledge, Coldarra
			fp(235), -- Transitus Shield, Coldarra (NOT USED)
			fp(236), -- Coldarra, Keristrasza to Malygos
			fp(237), -- Coldarra, Keristrasza Landing
			fp(238, {["description"] = ""}),
			fp(239), -- Borean Tundra - Quest - Dusk Start
			fp(240), -- Borean Tundra - Quest - Dusk - End
			fp(241), -- Transport, Valiance Keep
			fp(242), -- Quest - Dragonblight - Spiritual Vision - Begin
			fp(243), -- Quest - Dragonblight - Spiritual Vision - End
			fp(261), -- Quest - Stars' Rest to Wintergarde End
			fp(262), -- Grizzly Hills, Alliance Log Ride Start 01
			fp(263), -- Grizzly Hills, Alliance Log Ride End 01
			fp(264), -- Transport, Auberdine (NEW)
			fp(265), -- Transport, Theramore (NEW)
			fp(266), -- Transport, Menethil (NEW)
			fp(267), -- Grizzly Hills, Alliance Log Ride Start
			fp(268), -- Grizzly Hills, Alliance Log Ride End
			fp(269), -- Quest - Westguard Keep to Wintergarde Keep Begin
			fp(270), -- Quest - Westguard Keep to Wintergarde Keep End
			fp(271), -- Grizzly Hills, Horde Log Ride Start
			fp(272), -- Grizzly Hills, Horde Log Ride End
			fp(273), -- Wyrmrest Temple - bottom to top, Dragonblight - Begin
			fp(274), -- Wyrmrest Temple - bottom to top, Dragonblight - End
			fp(275), -- Wyrmrest Temple - top to bottom, Dragonblight - Begin
			fp(276), -- Wyrmrest Temple - top to bottom, Dragonblight - End
			fp(277), -- Wyrmrest Temple - top to middle, Dragonblight - Begin
			fp(278), -- Wyrmrest Temple - top to middle, Dragonblight - End
			fp(279), -- Wyrmrest Temple - middle to top, Dragonblight - End
			fp(280), -- Wyrmrest Temple - middle to top, Dragonblight - Begin
			fp(281), -- Wyrmrest Temple - middle to bottom, Dragonblight - End
			fp(282), -- Wyrmrest Temple - middle to bottom, Dragonblight - Begin
			fp(283), -- Wyrmrest Temple - bottom to middle, Dragonblight - End
			fp(284), -- Wyrmrest Temple - bottom to middle, Dragonblight - Begin
			fp(285), -- Quest - Wintergarde -> Stars' Rest (Start)
			fp(286), -- Quest - Wintergarde -> Stars' Rest (End)
			fp(287), -- Quest - Valgarde -> Westguard Keep Start
			fp(288), -- Quest - Valgarde -> Westguard Keep End
			fp(290), -- Argent Stand, Zul'Drak
			fp(291), -- Ruined City Post 01, Zul'Drak
			fp(292), -- Flavor - Stormwind Harbor  - Start
			fp(293), -- Flavor - Stormwind Harbor - Stop
			fp(297), -- Sholazar Basin - Quest - Reconnaisance - Start
			fp(298), -- Sholazar Basin - Quest - Reconnaisance - End
			fp(299), -- Transport: Menethil <-> Valgarde
			fp(300), -- Transport, Stormwind
			fp(301), -- Quest - Borean Tundra - Check In With Bixie - Begin
			fp(302), -- Quest - Borean Tundra - Check In With Bixie - End
			fp(311), -- Camp Onequah, Grizzly Hills (Quest)
			fp(312), -- Light's Breach, Zul'Drak (Quest)
			fp(313), -- Westfall Brigade, Grizzly Hills (Quest)
			fp(314), -- Zim'Torga, Zul'Drak (Quest)
			fp(316), -- Ebon Hold - Acherus -> Death's Breach Start
			fp(317), -- Ebon Hold - Acherus -> Death's Breach End
			fp(318), -- Ebon Hold - Death's Breach -> Acherus Start
			fp(319), -- Ebon Hold - Death's Breach -> Acherus End
			fp(328), -- Transport, Icecrown Airship (A)
			fp(329), -- Transport, Icecrown Airship (H)
			fp(330), -- Transport, Icecrown (Target)
		})),

		-- 3.1.0
		expansion(EXPANSION.WRATH, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_3_1_0 } }, {
			fp(341), -- Ulduar Raid - Interior - Insertion Point
			fp(342), -- Ulduar Raid - Iron Concourse
		})),

		-- 3.2.0
		expansion(EXPANSION.WRATH, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_3_2_0 } }, {
			fp(348), -- Transport: Thunder Bluff <-> Org (Zep)
			fp(352), -- Isle of Conquest - Gunships
			fp(353, {["description"] = ""}),
		})),

		-- 3.3.0
		expansion(EXPANSION.WRATH, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_3_3_0 } }, {
			fp(357, {["description"] = ""}),
			fp(358), -- Quest - Icecrown - North Sea Kraken Bombing - Start
			fp(359), -- Quest - Icecrown - North Sea Kraken Bombing - End
			fp(375), -- Transport, Gadgetzan
			fp(376), -- Icecrown Raid - Airship Battle Taxi Paths
			fp(377), -- Icecrown Dungeon - Gunships
			fp(379), -- Icecrown Raid - Saurfang's Ship (End)
			fp(380), -- Icecrown Raid - Saurfang's Ship (Start)
			fp(381), -- Quest [Transport] Icecrown Raid - Saurfang Ship (START)
			fp(382), -- Quest [Transport] Icecrown Raid - Saurfang Ship (END)
			fp(392), -- CC Prologue - GT - Quest - Vent Horizon - Start
			fp(393), -- CC Prologue - GT - Quest - Vent Horizon - End
			fp(394), -- CC Prologue - GT - Battle Flight - Start
			fp(395), -- CC Prologue - GT - Battle Flight - End
			fp(404), -- Durotar - ET - CC Prologue Spy Frog Start
			fp(405), -- Durotar - ET - CC Prologue Spy Frog End
			fp(438), -- Durotar - ET - CC Prologue Troll Taxi Bat Start
			fp(439), -- Durotar - ET - CC Prologue Troll Recruit End
			fp(440), -- Durotar - ET - CC Prologue - Troll Battle End
		})),
	}),
	expansion(EXPANSION.CATA, {
		-- 4.0.1
		expansion(EXPANSION.CATA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_1 } }, {
			fp(343), -- Splintertree, Ashenvale
			fp(344), -- Quest - Splintertree  Post -> Zoramgar
			fp(345), -- Quest - Zoramgar, Ashenvale
			fp(346), -- Ashenvale 4.x, Azshara to Mor'shan Ramparts
			fp(347), -- Ashenvale 4.x, Mor'shan Landing
			fp(349), -- Andruk, Zoram'gar
			fp(371), -- Vashj'ir - Alliance Start
			fp(372), -- Vashj'ir - Alliance End
			fp(373), -- Mulgore - Red Cloud Mesa: To Bloodhoof
			fp(374), -- Mulgore - Red Cloud Mesa: To Bloodhoof (End)
			fp(378), -- Quest - Dun Morogh - Coldridge Valley - Pack Your Bags End
			fp(413), -- Quest - 'To The Summit' - Westreach Summit - End
			fp(414), -- Quest - 'To The Summit' - Camp Mojache -> Westreach Summit - Begin
			fp(429), -- Quest - 'To The Summit' - Mudsprocket -> Westreach Summit - Begin
			fp(433), -- Quest - 'To New Thalanaar' - Mudsprocket -> New Thalanaar - Begin
			fp(434), -- Quest - 'To New Thalanaar' - New Thalanaar - End
			fp(436), -- Quest - 'To New Thalanaar' - Shadebough -> New Thalanaar - Begin
			fp(509), -- Quest Path 2063: Brian's 4.0 Test Path
			fp(538), -- test - JZB - Orgrim's Hammer
			fp(560), -- Quest Path 2171: [3.x] Transport, Org -> Undercity (Thundercaller)
			fp(561), -- Quest Path 2172: [3.x] Transport, Thunder Bluff -> Org (Zephyr)
			fp(562), -- Quest Path 2173: [3.x] Transport, Borean Tundra -> Org (Mighty Wind)
			fp(563), -- Quest Path 2174: [3.x] Transport, Grom'gol -> Orgrimmar (The Iron Eagle)
			fp(564), -- Quest Path 2175: Stonetalon 4.x - Taxi to Thal'darah Overlook Start
			fp(574), -- Quest Path 2201: Dun Morogh - Quest - Flight to Ironforge Airfield
			fp(575), -- Quest Path 2203: Dun Morogh - Quest - Striking Back (Bombing Run)
			fp(577), -- Quest Path 2206: Ironforge, Dun Morogh - Quest - Breadcrumb to Loch Modan
			fp(578), -- Quest Path 2207: Dun Morogh - Quest - Flight to Gol'Bolar from Ironforge Airfield
			fp(585), -- Quest Path 293: Transport, Auberdine -> Rut'theran Village, Teldrassil (NO LONGER USED in 4.x)
			fp(586), -- Justin Test Node 1
			fp(587), -- Justin Test Node 2
			fp(621), -- Quest Path 2367: QA's Test Path 1
			fp(623), -- Quest Path 2374: Deeopholm Test Copy
			fp(626), -- Quest Path 508: zzzThe Exodar -> Blood Watch, Bloodmyst Isle
			fp(627), -- Quest Path 2376: zzzThe Exodar -> Azure Watch, Azuremyst Isle
			fp(628), -- Quest Path 507: zzzBlood Watch, Bloodmyst Isle -> The Exodar
			fp(629), -- Quest Path 2375: zzzAzure Watch, Azuremyst Isle -> The Exodar
		})),

		-- 4.1.0
		expansion(EXPANSION.CATA, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_4_1_0 } }, {
			fp(682), -- Quest Path 1843: Transport - Gadgetzan to ??? JZB RVM Test [DISABLED]
			fp(728), -- Quest Path 2653: 4.1 - ZG Event - Rebel Camp -> Explorers' League
			fp(757), -- Quest Path 2695: PattyMac Taxi Path Speed Test
		})),

		-- 4.3.0
		expansion(EXPANSION.CATA, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_4_3_0 } }, {
			fp(906), -- Dragon Soul Raid - Wyrmrest Temple Base
			fp(907), -- Dragon Soul Raid - East Sarlac
		})),
	}),
	expansion(EXPANSION.MOP, {
		-- 5.0.4
		expansion(EXPANSION.MOP, patch(0,4), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
			fp(888), -- Quest Path 2837: Quest - Jade Forest: (DLA) - Dawnblossom to Jade Mines
			fp(918), -- Quest Path 2954: Quest - Valley of the Four Winds (Flyback: Chen A) PRK
			fp(919), -- Quest Path 2955: Quest - Valley of the Four Winds (Flyback: Chen B) PRK
			fp(920), -- Quest Path 2956: Quest - Valley of the Four Winds (Flyback: Chen C) PRK
			fp(921), -- Quest Path 2957: Quest - Valley of the Four Winds (Flyback: Chen D) PRK
			fp(922), -- Quest Path 2958: Quest - Valley of the Four Winds (Flyback: Sad Panda A) PRK
			fp(923), -- Quest Path 2959: Quest - Valley of the Four Winds (Flyback: Sad Panda B) PRK
			fp(924), -- Quest Path 2960: Quest - Valley of the Four Winds (Flyback: Horde A) PRK
			fp(925), -- Quest Path 2961: Quest - Valley of the Four Winds (Flyback: Alliance A) PRK
			fp(926), -- Quest Path 2962: Quest - Valley of the Four Winds (Flyback: Horde B) PRK
			fp(927), -- Quest Path 2963: Quest - Valley of the Four Winds (Flyback: Alliance B) PRK
			fp(935), -- Quest Path 2986: Jade Forest: -hmc (Taxi: Glassfin Village to Dawnblossom)
			fp(949), -- Quest Path 3002: Jade Forest: -hmc (Taxi: Serpent's Spine to Statue Top)
			fp(950), -- Quest Path 3003: Jade Forest: -hmc (Taxi: Statue Top to Serpent's Spine)
			fp(951), -- Quest Path 3004: Quest - Jade Forest - Fort Grookin -> Ka Pao Rise
			fp(963), -- Quest Path 3018: Quest - Jade Forest - Glassfin Village -> Ka Pao Rise
			fp(998), -- Quest Path 3154: Quest - Kun-Lai Summit - Neverrest Peak -> Valley of Emperors
			fp(1009), -- Quest Path 3173: Quest - Kun-Lai Summit - Valley -> Whispercloud Rise
			fp(1016), -- Quest Path 3066: Quest - Jade Forest - Serpent's Spine -> VotFW - JLR
			fp(1030), -- Quest Path 3244: Jade Forest: -hmc (Taxi: Serpent's Spine to East Temple)
			fp(1032), -- Quest Path 3246: Quest - Kun-Lai Summit - GoWB - To the Wall! (NLC)
			fp(1038), -- Quest Path 3248: Quest - Kun-Lai Summit - GoWB - Back from the Wall (NLC)
			fp(1046), -- Jade Forest - Cliff path 04 Start
			fp(1047), -- Jade Forest - Cliff path 04 End
			fp(1048), -- Quest Path 3263: Jade forest - Cliff path 04
			fp(1049), -- Quest Path 3264: Jade Forest - Cliff Path 01
			fp(1050), -- Quest Path 3265: Jade Forest - Cliff Path 02
			fp(1051), -- Quest Path 3266: Jade Forest - Cliff Path 03
			fp(1076), -- Quest Path 3375: Jade Forest: JSB - East Temple -> Grookin' Hill
			fp(1079), -- Quest Path 3377: Jade Forest: JSB - East Temple -> Glassfin Village
			fp(1091), -- Quest Path 3448: Dread Wastes: Klaxxi'vess -> Briny Muck Quest Path
			fp(1092), -- Quest Path 3449: Dread Wastes: Klaxxi'vess -> Lake of Stars Quest Path
			fp(1104), -- Test - Spy Quest H01a - PRK
			fp(1105), -- Test - Spy Quest H01b - PRK
			fp(1114), -- Quest Path 3481: Quest - Kun-Lai Summit: JLR - Zouchin Village -> Isle of Reckoning
			fp(1116), -- Quest Path 3482: Quest - Kun-Lai Summit: JLR - Isle of Reckoning - Zouchin
			fp(1130), -- Quest Path 3506: Jade Forest: -hmc (Taxi: Serpent's Spine to Statue Top) NEW (Tab 870)
			fp(1131), -- Quest Path 3507: Jade Forest: -hmc (Taxi: Statue Top to Serpent's Spine) NEW (Tab 870)
		})),

		-- 5.4.0
		expansion(EXPANSION.MOP, patch(4,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_4_0 } }, {
			fp(1284), -- Quest Path 3877: Garrosh Raid - Siege Engineer - Pipe Transfer
			fp(1291), -- Quest Path 3885: Timeless Isle 5.4 - Vignette - Source of Water - Bubble Up (RKS) [REUSEME]
			fp(1292), -- Quest Path 3886: Timeless Isle 5.4 - Vignette - Source of Water - Bubble Down (RKS) [REUSEME]
		})),
	}),
	expansion(EXPANSION.WOD, {
		-- 6.0.2
		expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
			fp(1350), -- Shadowmoon Valley 6.0 - Observatory (JP3)
			fp(1351), -- Shadowmoon Valley 6.0 - Ironhorde POI (JP3)
			fp(1385), -- Arkaat Outpost, Shadowmoon Valley
			fp(1394), -- Thunder Pass. Frostfire Ridge
			fp(1421), -- Shadowmoon Valley 6.0:Jp3 - Darktide Roost - Bottom Of Hill
			fp(1422), -- Shadowmoon Valley 6.0:JP3 - Darktide Roost - Top of Hill
			fp(1430), -- Test Loc 1, Talador
			fp(1431), -- Test Loc 2, Talador
			fp(1463), -- Quest Path 4263: Draenor Zone Breadcrumb - Frostfire Garrison > Talador Start Loc (CSA)
			fp(1464), -- Quest Path 4266: Draenor Zone Breadcrumb - Shadowmoon Garrison > Talador Start Loc (CSA)
			fp(1465), -- Quest Path 4269: Draenor Zone Breadcrumb - Shadowmoon Garrison > Nagrand Start Loc (ELM)
			fp(1466), -- Quest Path 4270: Draenor Zone Breadcrumb - Frostfire Ridge Garrison > Nagrand Start Loc (ELM)
			fp(1477), -- Quest Path 4316: Frostfire Ridge - Garrison - Max-Level Chapter - Sargerei - Taxi Path to Shadowmoon (HMC)
			fp(1488), -- Quest Path 4333: Shadowmoon Valley 6.0:JP3 - Darktide Roost - Taxi Path to Darktide Roost
			fp(1489), -- Quest Path 4334: Frostfire Ridge:JP3 - Darktide Roost - Taxi to Darktide Roost
			fp(1490), -- Quest Path 4337: Spires of Arak 6.0 - Horde Garrison Outpost > Shadow's Defiance
			fp(1494), -- Quest Path 4341: Spires of Arak 6.0 - Alliance Garrison Outpost > Shadow's Defiance
			fp(1495), -- Quest Path 4342: Shadowmoon Valley 6.0:JP3 - A - Broken Precipice - Taxi Path to Broken Precipice
			fp(1496), -- Quest Path 4345: Spires of Arak 6.0 - Shattered Hand Poison Camp > Horde Garrison Outpost
			fp(1497), -- Quest Path 4346: Spires of Arak 6.0 - Shattered Hand Poison Camp > Alliance Garrison Outpost
			fp(1498), -- Quest Path 4353: Frostfire Ridge:JP3 - Broken Precipice - Taxi to Nagrand / Broken Precipice
			fp(1527), -- Quest Path 4442: Spires of Arak: (DLA) - Veil Terokk -> Talon Watch Breadcrumb
			fp(1535), -- Quest Path 4535: Quest Path - Spires of Arak 6.0 - Horde Garrison Outpost > Pinchwhistle Gearworks (LWB)
			fp(1536), -- Quest Path 4538: Quest Path - Spires of Arak 6.0 - Alliance Garrison Outpost > Pinchwhistle Gearworks (LWB)
			fp(1540), -- Quest Path 4579: Talador 6.0 - Zangarra > Khadgar's Tower
			fp(1541), -- Quest Path 4580: Talador 6.0 - Khadgar's Tower > Zangarra
			fp(1547), -- Quest Path 4590: Shadowmoon Valley 6.0:JP3 - A - Ashran - Taxi Path to Ashran Staging Area
			fp(1549), -- Quest Path 4600: Frostfire Ridge:JP3 - Ashran Staging Area - Taxi to Ashran
			fp(1550), -- Quest Path 4599: Shadowmoon 6.x - 'The Search for Owynn Graddock': Garrison, Shadowmoon Valley -> Bloodmaul Slag Mines, Frostfire Ridge (HMC)
			fp(1553), -- Quest Path 4634: Shadowmoon 6.x - 'Pinchwhistle Gearworks': Garrison, Shadowmoon Valley -> Pinchwhistle Gearworks, Spires of Arak (LWB)
			fp(1554), -- Quest Path 4635: Frostfire 6.x - 'Pinchwhistle Gearworks': Garrison, Frostfire ->Pinchwhistle Gearworks, Spires of Arak (LWB)
			fp(1555), -- Quest Path 4636: Shadowmoon Valley, Tier 3 Garrison -> Ashran, Stormshield (Shortcut Path) (CSA)
			fp(1562), -- Quest Path 4665: Ashran - Lane - Warspear to Stormshield
			fp(1563), -- Quest Path 4666: Ashran - Lane - Stormshield to Warspear
			fp(1581), -- Quest Path 4881: Lunarfall, Shadowmoon Valley -> Terokkar Pass, Spires of Arak
			fp(1582), -- Quest Path 4888: Frostwall Garrison, Frostfire Ridge -> Terokkar Pass, Spires of Arak
		})),

		-- 6.1.0
		expansion(EXPANSION.WOD, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_6_1_0 } }, {
			fp(1599), -- Quest Path 4958: Garrison - 6.1 Chapter - H - Taxi to Iron Docks - JMC
			fp(1601), -- Quest Path 4960: Garrison - 6.1 Chapter - H - Taxi from Iron Docks to Garrison - JMC
			fp(1605), -- Quest Path 4965: Garrison - 6.1 Chapter - A - Taxi from Garrison to Iron Docks - JMC
			fp(1606), -- Quest Path 4966: Garrison - 6.1 Chapter - A - Taxi from Iron Docks to Garrison - JMC
		})),

		-- 6.2.0
		expansion(EXPANSION.WOD, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_6_2_0 } }, {
			fp(1614), -- Quest Path 4974: 6.2 Tanaan - Quest - H - From Vol'mar to Iron Front - JMC
			fp(1625), -- Quest Path 4987: 6.2 Tanaan - Lion's Watch - Taxi Path to Aktar's Post (LWB)
			fp(1626), -- Quest Path 4988: 6.2 Tanaan - Volmar - Taxi Path to Aktar's Post (LWB)
			fp(1642), -- Quest Path 5026: 6.2 Tanaan - Quest - A - From Lion's Watch to Iron Front - JMC
			fp(1660), -- Bret Test 3-3s
			fp(1661), -- Bret Test 3-3e
			fp(1662), -- Carl Test a
			fp(1716), -- Quest Path 5222: Garrison, Alliance Shipyard -> Tanaan (IGC)
			fp(1722), -- Quest Path 5262: Stormheim: (DLA) - Valdisdall -> Dreadwake (Spell Taxi)
			fp(1723), -- Quest Path 5263: Stormheim: (DLA) - Valdisdall -> Greywatch (Spell Taxi)
			fp(1729), -- Quest Path 5283: Alliance Garrison (Tier 3) > Alliance Shipyard
			fp(1730), -- Quest Path 5284: Alliance Shipyard > Alliance Garrison (Tier 3)
			fp(1731), -- Alliance Shipyard Taxi
		})),
	}),
	expansion(EXPANSION.LEGION, {
		-- 7.0.3
		expansion(EXPANSION.LEGION, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
			fp(1634), -- Quest Path 5017: 7.0 Azsuna - Rift 01 - East Chasm -> West Chasm
			fp(1635), -- Quest Path 5018: 7.0 Azsuna - Rift 01 - West Chasm -> East Chasm
			fp(1636), -- Quest Path 5019: 7.0 Azsuna - Rift 02 - Tower -> Rock (ZTO)
			fp(1637), -- Quest Path 5020: 7.0 Azsuna - Rift 03, Tower - Base -> Top (ZTO/PRK)
			fp(1732), -- Quest Path 5286: 7.0 DH-Mardum - Illidari Foothold -> The Fel Hammer (ELM)
			fp(1748), -- Quest Path 5333: 7.0 Artifacts - Monk - Order Formation - Number Nine Flight - LWB
			fp(1783), -- Quest Path 5500: 7.0 Azsuna - Rift 02 - Rock -> Tower (ZTO)
			fp(1784), -- Quest Path 5509: 7.0 Highmountain - Stonehoof Watch -> Sylvan Falls (Quest, ZTO)
			fp(1787), -- Quest Path 5512: Quest Path 5020: 7.0 Azsuna - Rift 03, Base - Tower (ZTO)
			fp(1800), -- Quest Path 4621: [OLD]7.0 Quest - Azsuna (Down to Azsuna: Unlearned Taxi Dalaran --> Azsuna - Alliance) - ELM
			fp(1801), -- Quest Path 5597: [OLD]7.0 Quest - Azsuna (Down to Azsuna: Unlearned Taxi Dalaran --> Azsuna - Horde) - ELM
			fp(1803), -- Quest Path 5615: 7.0 Dalaran -> Trueshot Lodge, Highmountain
			fp(1813), -- Quest Path 5643: 7.0 Quest - Azsuna (Down to Azsuna: Unlearned Taxi Dalaran --> Azsuna - Alliance) - ELM
			fp(1814), -- Quest Path 5645: [OLD2]7.0 Quest - Azsuna (Down to Azsuna: Unlearned Taxi Dalaran --> Azsuna - Horde) - ELM
			fp(1818), -- Quest Path 5654: 7.0 Artifacts - Druid - Feral - Q:42428 - Dreamgrove -> Ashamane's Fall - LWB
			fp(1819), -- Quest Path 5655: 7.0 Quest - Azsuna (Down to Azsuna: Unlearned Taxi Dalaran --> Azsuna - Horde) - ELM
			fp(1825), -- Quest Path 5667: 7.0 DH-OHC - 'Malace in Vrykul Land' Alliance - Dalaran -> Valdishall (ELM)
			fp(1826), -- Quest Path 5668: 7.0 DH-OHC - 'Malace in Vrykul Land' Horde - Dalaran -> Valdishall (ELM)
			fp(1827), -- Quest Path 5669: 7.0 Order Hall - Mage - Ch 4 - The Oculus - Rings Portal 01 - SBV
			fp(1828), -- Quest Path 5670: 7.0 Order Hall - Mage - Ch 4 - The Oculus - Rings Portal Top -> Ring A - SBV
			fp(1829), -- Quest Path 5671: 7.0 Order Hall - Mage - Ch 4 - The Oculus - Rings Portal Middle 02 - SBV
			fp(1830), -- Quest Path 5672: 7.0 Order Hall - Mage - Ch 4 - The Oculus - Rings Portal Middle 03 - SBV
			fp(1831), -- Quest Path 5673: 7.0 Order Hall - Mage - Ch 4 - The Oculus - Side Platform Portal B -> Ring C - SBV
			fp(1832), -- Quest Path 5674: 7.0 Order Hall - Mage - Ch 4 - The Oculus - Portal - Ring A -> Center - SBV
			fp(1833), -- Quest Path 5675: 7.0 Order Hall - Mage - Ch 4 - The Oculus - Portal - Ring B -> Center - SBV
			fp(1834), -- Quest Path 5676: 7.0 Order Hall - Mage - Ch 4 - The Oculus - Side Platform Portal A -> Ring B - SBV
			fp(1835), -- Quest Path 5677: 7.0 Order Hall - Mage - Ch 4 - The Oculus - Side Platform Portal C -> Ring A - SBV
			fp(1836), -- Quest Path 5678: 7.0 Order Hall - Mage - Ch 4 - The Oculus - Rings Portal - Ring C -> Ring A - SBV
			fp(1842), -- Carl Test b
			fp(1843), -- Carl Test c
			fp(1844), -- Carl Test d
			fp(1864), -- Quest Path 5598: Nesingwary, Highmountain -> Shipwreck Cove, Highmountain [Unlearned]
			fp(1865), -- Boost 2.0 - Alliance - Leave Point
			fp(1867), -- Quest Path 5911: 7.0 Dalaran -> Acherus
			fp(1868), -- Quest Path 5912: 7.0 Acherus -> Dalaran
			fp(1869), -- Quest Path 5913: 7.0 Karazhan - Ballroom -> Opera Portal
			fp(1871), -- Quest Path 5925: Quest Path 5654: 7.0 Artifacts - Druid - Feral - Q:42428 - Ashamane's Fall -> Dreamgrove - LWB
			fp(1874), -- Quest Path 5962: 7.0 Artifacts - Death Knight - Blood - From Dalaran to Broken Shore Portal - Taxi Version - LWB
			fp(1875), -- Quest Path 5963: 7.0 Artifacts - Death Knight - Blood - From Broken Shore to Dalaran - Taxi - LWB
			fp(1877), -- Quest Path 5626: 7.0 Artifacts - Priest - Holy - Dalaran to Broken Shore Portal - LWB
			fp(1878), -- Quest Path 5627: 7.0 Artifacts - Priest - Holy - Quest NPC - Broken Shore - Fly Back - LWB
			fp(1907), -- Quest Path 6038: 7.0 - Death Knight - No Man's Land - Taxi Route - LWB
		})),

		-- 7.1.0
		expansion(EXPANSION.LEGION, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_1_0 } }, {
			fp(1894), -- Quest Path 6009: 7.1 Suramar -> Black Rook Hold ('We Need Weapons' ) - ZTO
		})),

		-- 7.2.0
		expansion(EXPANSION.LEGION, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_2_0 } }, {
			fp(1892), -- Quest Path 6004: 7.2 Assault - Val'sharah - Black Rook - Base Camp to Ramparts - LWB
			fp(1893), -- Quest Path 6005: 7.2 Legion Invasion - Val'sharah - 03 - Taxi to Top - LWB
			fp(1899), -- Quest Path 6026: 7.2 OHC - Paladin - Light's Hope Chapel (Alliance) -> Broken Shore (1666) - JAP
			fp(1900), -- Quest Path 6027: Quest Path 6026: 7.2 OHC - Paladin - Light's Hope Chapel (Horde) -> Broken Shore (1666) - JAP
			fp(1902), -- Quest Path 6030: 7.2 Fel Hammer -> 7.2 Mardum
			fp(1906), -- The Fel Hammer, Broken Shore
			fp(1908), -- Quest Path 6036: 7.2 Fel Hammer -> 7.2 Broken Shore
			fp(1909), -- Quest Path 6041: 7.2 Wandering Isle -> Stormstout Brewery, Pandaria
			fp(1910), -- Quest Path 6042: 7.2 OHC - Priest - Dalaran -> Broken Shore - Teleport (JAP)
			fp(1913), -- Quest Path 6048: Quest Path 6005: 7.2 Legion Invasion - Val'sharah - 03 - Taxi to Bottom - LWB
			fp(1916), -- Quest Path 6052: 7.2 OHC - Hunter - Trueshot Lodge -> Broken Shore - Teleport (JAP)
			fp(1917), -- Quest Path 6053: 7.2 Order Hall - Shaman - Ch 5 - Thunderaan Transport (JLW)
			fp(1922), -- Quest Path 6065: 7.2 Assault - Val'sharah - Black Rook - Top to Final Terrace
			fp(1923), -- Quest Path 6067: 7.2 Assault - Val'sharah - Black Rook - Base Camp to Final Terrace
			fp(1924), -- Quest Path 6068: 7.2 Acherus: The Ebon Hold -> Illidari Camp, Broken Shore
			fp(1927), -- Quest Path 6072: 7.2 Order Hall - Rogue - Ch 5 - Temp To BS (JLW)
			fp(1933), -- Quest Path 6084: Acherus: The Ebon Hold -> Thorim's Peak, Stormheim
		})),

		-- 7.3.0
		expansion(EXPANSION.LEGION, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_3_0 } }, {
			fp(1934), -- TEMPAREA1, Argus
			fp(1935), -- TEMPAREA2, Argus
			fp(1947), -- Quest Path 6175: 7.3 Argus - Isle 2 - Alleria Arc - Alleria Shadow Ball Taxi (JAK)
			fp(1985), -- [Hidden] Argus Ground Points Hub (Ground TP out to here, TP to Vindicaar from here)
			fp(1986), -- [Hidden] Argus Vindicaar Ground Hub (Vindicaar TP out to here, TP to ground from here)
			fp(1987), -- [Hidden] Argus Vindicaar No Load Hub (Vindicaar No Load transition goes through here)
			fp(2018), -- Quest Path 6440: 7.3 QA - TEST HOTFIX - Task 110012 - TaxiPathNode - RRB
			fp(2020), -- Quest Path 6443: 7.3 QA - TEST HOTFIX - Task 110012 - TaxiPathNode - 2 - RRB
		})),

		-- 7.3.5
		expansion(EXPANSION.LEGION, patch(3,5), bubbleDownSelf({ ["timeline"] = { CREATED_7_3_5 } }, {
			fp(2058), -- Staghelm Point, Silithus
		})),
	}),
	expansion(EXPANSION.BFA, {
		-- 8.0.1
		expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
			fp(1945), -- Quest Path 6154: 8.0 Zuldazar - Quest - 'King Rastakhan' - ZTO
			fp(1961), -- Quest Path 6233: 8.0 Nazmir - Q: 47250 - Taxi to Jeb'watha ruins - LWB
			fp(1962), -- Quest Path 6234: 8.0 Nazmir - Q: 42750 - Flight from Jeb'watha -> Zul'jan - LWB
			fp(1964), -- Quest Path 6237: 8.0 Warfronts - Barrens - Intro Quest - Taxi from Theramore to Fort Triumph
			fp(1983), -- Quest Path 6309: 8.0 Nazmir - Q: 47631 - Flight from Zul'jan -> Gloom Hollow - LWB
			fp(1984), -- Quest Path 6310: 8.0 Nazmir - Q: 47602 - Flight out of Sundered Span - LWB
			fp(2015), -- Quest Path 6437: 8.0 Nazmir - Q49082 - Flight out of Hir'eek's Lair - LWB
			fp(2041), -- Quest Path 6474: Freehold, Tiragarde Sound -> Southwind Ferry Dock, Tiragarde Sound
			fp(2043), -- xxOLD - Zuldazar, Nazmir Outskirts
			fp(2059), -- Southwind Village, Silithus
			fp(2065), -- Harbor, Zuldazar
			fp(2068), -- Scaletrader Post, Zuldazar
			fp(2069), -- Crater Bay, Zuldazar
			fp(2070), -- Zandalar Arena, Zuldazar
			fp(2073), -- Throne Room, Zuldazar
			fp(2081), -- Alliance Camp - East (TEMP NAME)
			fp(2103), -- Eastpoint Station, Tiragarde Sound
			fp(2113), -- Tortaka Refuge, Vol'dun
			fp(2116), -- Quest Path 6698: Horde Embassy, Zuldazar -> Throne Room, Zuldazar
			fp(2128), -- Quest Path 6783: 8.0 Stormsong - Monastery -> Water Bridge - GJC
			fp(2129), -- Quest Path 6799: 8.0 Nazmir - Player Flight Path to Altar of Rot - (STM)
			fp(2130), -- Quest Path 6801: 8.0 Nazmir - Altar of Rot to Zul'jan Ruins - (STM)
			fp(2156), -- Quest Path 6967: 8.0 War Campaign - Horde - Chapter 02 - Anyport to Barrowknoll (JLW)
			fp(2158), -- Quest Path 6995: 8.0 Quest - Warchief's Command: Thousand Needles! - Orgrimmar --> Mudsprocket (ELM)
			fp(2159), -- Quest Path 6996: 8.0 Quest - Warchief's Command: Un'Goro Crater! - Orgrimmar --> Marshal's Stand (ELM)
			fp(2160), -- Quest Path 6997: 8.0 Quest - Warchief's Command: Silithus! - Orgrimmar --> Cenarion Hold (ELM)
			fp(2163), -- Quest Path 7004: 8.0 Quest - Warchief's Command: Southern Barrens! - Orgrimmar --> Malaka'jin (ELM)
			fp(2166), -- Quest Path 7063: 8.0 War Campaign - Horde - Chapter 05 - Plunder Harbor to Flagship (JLW)
			fp(2167), -- Quest Path 7064: 8.0 War Campaign - Horde - Chapter 05 - Plunder Harbor to Ship (JLW)
			fp(2168), -- Quest Path 7065: 8.0 War Campaign - Horde - Chapter 05 - Ship to Plunder Harbor (JLW)
			fp(2169), -- Quest Path 7066: 8.0 War Campaign - Horde - Chapter 05 - Flagship to Plunder Harbor (JLW)
			fp(2170), -- Quest Path 7067: 8.0 War Campaign - Horde - Chapter 05 - Ship to Flagship (JLW)
			fp(2171), -- Quest Path 7068: 8.0 War Campaign - Horde - Chapter 05 - Flagship to Ship (JLW)
			fp(2172), -- Disable Taxi Paths - Source - RRB
			fp(2173), -- Disable Taxi Paths - Destination - RRB
			fp(2272), -- Quest Path 6801: 8.0 Nazmir - Altar of Rot to Zul'jan Ruins - (STM)
		})),

		-- 8.1.0
		expansion(EXPANSION.BFA, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_0 } }, {
			fp(2282), -- Quest Path 6478: 8.0 Nazmir - Zuldazar to Talanji's Camp - (STM)
			fp(2382), -- Quest Path 7405: 8.1 War Campaign - A - Ch1 - South Shore -> Ramparts - KRB
			fp(2383), -- Quest Path 7496: 8.1 War Campaign - A - Ch1 - Ramparts -> South Shore  - KRB
			fp(2384), -- Quest Path 7497: 8.1 War Campaign - A - Ch1 - North Shore -> Ramparts - KRB
		})),

		-- 8.2.0
		expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
			fp(2392), -- Quest Path 7569: 8.2 Nazjatar - Kal'methir - Boss Path
			fp(2467), -- test node
			fp(2471), -- test node
			fp(2472), -- test node
			fp(2473), -- test node
			fp(2474), -- adams test node
			fp(2475), -- adams second test node
		})),
	}),
	expansion(EXPANSION.SL, {
		-- 9.0.1
		expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
			fp(2393), -- TEMP, 9.0, Oribos, Bastion
			fp(2394), -- TEMP, 9.0, Oribos, Maldraxxus
			fp(2396), -- TEMP, 9.0, Oribos, Ardenweald
			fp(2397), -- 9.0, Zone, Bastion
			fp(2399), -- TEMP, 9.0, Zone, Revendreth
			fp(2400), -- TEMP, 9.0, Zone, Ardenweald
			fp(2401), -- Alliance Outpost, Exile's Reach Outpost
			fp(2402), -- Ogre Citadel, Exile's Reach Island
			fp(2490), -- Quest Path 7759: Oribos go south 2 (msc)
			fp(2506), -- Quest Path 7794: 9.0 Bastion - Temple of Humility - Quest - Transport To Humiity Top (JLW)
			fp(2516), -- Chalice District, Revendreth
			fp(2527), -- Quest Path 7856: 9.0 Ardenweald - COV - MC - Q57782 - Taxi to Boss - LWB
			fp(2530), -- Dreamsong Fenn, Ardenweald
			fp(2541), -- Quest Path 7899: 9.0 Bastion - Campaign - Ch 05 - Revendreth - Redelav District - Transport Down from Wall (JLW)
			fp(2549), -- Quest Path 7925: 9.0 Bastion - Temple of Wisdom - Teleport Pads - Grounds -> Temple Base - GJC
			fp(2550), -- Quest Path 7926: 9.0 Bastion - Temple of Wisdom - Teleport Pads - Temple Base -> Grounds - GJC
			fp(2552), -- Quest Path 7869: 9.0 Bastion - Hero's Rest - Zipline - North - Up - GJC
			fp(2553), -- Quest Path 7949: 9.0 Ardenweald - Bastion Campaign - Queen's Chamber - Up - RRB
			fp(2554), -- Quest Path 7950: 9.0 Ardenweald - Bastion Campaign - Queen's Chamber - Down - RRB/ELM
			fp(2555), -- The Maw
			fp(2556), -- Progenitor Console
			fp(2557), -- [Hidden] The Maw - Outdoor - Cocyrus Oribos Teleport Dest
			fp(2562), -- Quest Path 7870: 9.0 Bastion - Hero's Rest - Zipline - South - Up - GJC
			fp(2563), -- Quest Path 7876: 9.0 Bastion - Hero's Rest - Zipline - South - Down - GJC
			fp(2565), -- Starlit Overlook, Ardenweald
			fp(2566), -- Quest Path 7875: 9.0 Bastion - Hero's Rest - Zipline - West - Down - GJC
			fp(2567), -- Quest Path 7874: 9.0 Bastion - Hero's Rest - Zipline - West - Up - GJC
			fp(2568), -- Quest Path 7877: 9.0 Bastion - Hero's Rest - Zipline - North - Down - GJC
			fp(2572), -- Quest Path 8039: 9.0 Bastion - Campaign - Ch 05 - Revendreth - Tower to Ember Ward (JLW)
			fp(2573), -- Quest Path 8047: 9.0 Ardenweald - Covenant Hall - Queen's Audience Chamber Taxi Up - KRB
			fp(2574), -- Quest Path 8048: 9.0 Ardenweald - Covenant Hall - Queen's Audience Chamber Taxi Down - KRB
			fp(2575), -- Quest Path 8054: 9.0 Ardenweald - COV - Sisters - Q05 - Queen's Audience Chamber Taxi Up - KRB
			fp(2576), -- Quest Path 8055: 9.0 Ardenweald - COV - Sisters - Q05 - Queen's Audience Chamber Taxi Down - KRB
			fp(2580), -- Quest Path 8079: 9.0 Bastion Campaign - Ch 09 - Loyalty - Stage 6 - Ground -> Temple of Loyalty - GJC
			fp(2591), -- Crucible of Souls
			fp(2594), -- 9.0 Maw - Oribos - Teleport In
			fp(2595), -- Quest Path 8159: 9.0 Bastion - Level Up - Memory Extraction - Zipline - Up (JAK)
			fp(2596), -- Quest Path 8160: 9.0 Bastion - Level Up - Memory Extraction - Zipline - Down (JAK)
			fp(2602), -- Quest Path 8194: 9.0 Bastion - Level Up - Temple of Purity - Zipline - Up (JAK)
			fp(2603), -- Quest Path 8195: 9.0 Bastion - Level Up - Temple of Purity - Zipline - Down (JAK)
			fp(2604), -- Quest Path 8242: [UNUSED]9.x Quest - The Battle for Lordaeron (H) - Orgrimmar, Valley of Strength --> Orgrimmar, Gates of Orgrimmar (ELM)
			fp(2605), -- Quest Path 8278: Theater of Pain Taxi Path
			fp(2627), -- [Hidden] 9.0 Bastion Ground Points Hub (Ground TP out to here, TP to Sanctum from here)
			fp(2628), -- [Hidden] 9.0 Bastion Ground Hub (Sanctum TP out to here, TP to ground from here)
			fp(2637), -- Summoned Steward, Bastion
			fp(2639), -- Quest Path 8321: 9.0 Bastion - Treasure Max Level - Wisdom - Taxi - A to D - EJC
			fp(2640), -- Quest Path 8322: 9.0 Bastion - Treasure Max Level - Wisdom - Taxi - B to C - EJC
			fp(2641), -- Quest Path 8323: 9.0 Bastion - Treasure Max Level - Wisdom - Taxi - C to D - EJC
			fp(2642), -- Quest Path 8324: 9.0 Bastion - Treasure Max Level - Wisdom - Taxi - D to E - EJC
			fp(2643), -- Theater of Pain North, Maldraxxus
			fp(2644), -- Quest Path 8326: 9.0 Bastion - Treasure Max Level - Wisdom - Taxi - F to A - EJC
			fp(2645), -- Quest Path 8327: 9.0 Bastion - Treasure Max Level - Wisdom - Taxi - C to F - EJC
			fp(2646), -- Quest Path 8328: 9.0 Bastion - Max Level - Temple of Courage - Zipline -  Up (JAK)
			fp(2647), -- Quest Path 8329: 9.0 Bastion - Max Level - Temple of Courage - Zipline -  Down (JAK)
			fp(2648), -- Quest Path 8330: 9.0 Bastion - Max Level - Temple of Wisdom - Zipline -  Up (JAK)
			fp(2649), -- Quest Path 8331: 9.0 Bastion - Max Level - Temple of Wisdom - Zipline - Down (JAK)
			fp(2650), -- Quest Path 8332: 9.0 Bastion - Max Level - Temple of Humility - Zipline -  Up (JAK)
			fp(2651), -- Quest Path 8333: 9.0 Bastion - Max Level - Temple of Humility - Zipline -  Down (JAK)
			fp(2652), -- Quest Path 8334: 9.0 Bastion - Treasure Max Level - Wisdom - Taxi - E to B - EJC
			fp(2653), -- Quest Path 8336: 9.0 Bastion - Max Level - Temple of Loyalty - Zipline - Lower - Up (JAK)
			fp(2654), -- Quest Path 8337: 9.0 Bastion - Max Level - Temple of Loyalty - Zipline - Lower - Down (JAK)
			fp(2655), -- Quest Path 8338: 9.0 Bastion - Max Level - Temple of Loyalty - Zipline - Upper - Up (JAK)
			fp(2656), -- Quest Path 8339: 9.0 Bastion - Max Level - Temple of Loyalty - Zipline - Upper - Down (JAK)
			fp(2657), -- Quest Path 8335: 9.0 Maw - Torghast - Floor 90 - Up
			fp(2658), -- Quest Path 8340: 9.0 Maw - Torghast - Floor 90 - Down
			fp(2659), -- Quest Path 8347: 9.0 Bastion - Treasure Max Level - Courage - Taxi - Return - EJC
			fp(2660), -- Quest Path 8348: 9.0 Bastion - Treasure Max Level - Wisdom - Taxi - Return - EJC
			fp(2661), -- Quest Path 8359: 9.0 Ardenweald - COV - Drust - Ch2 - Flight out of Darkreach - LWB
			fp(2662), -- Quest Path 8363: 9.0 Maldraxxus - House of Plagues - Pipeline Up - EJC
			fp(2663), -- Quest Path 8372: 9.0 Bastion - Path of Ascension - Capture - Devourer - Anima Gateway Taxi - GJC
			fp(2664), -- Quest Path 8374: 9.0 Maw - Outdoor - Ve'nari -> Planes of Torment
			fp(2665), -- Quest Path 8387: 9.0 Bastion - Teleport Pads -  Eternal Forge Suburbs -> Miri's Chapel - SBV
			fp(2666), -- Quest Path 8388: 9.0 Bastion - Teleport Pads -  Miri's Chapel ->  Eternal Forge Suburbs - SBV
			fp(2670), -- Quest Path 8421: 9.0 Maw - Outdoor - Mawsworn Rifts - Zovaal's -> Calcis
			fp(2671), -- Quest Path 8422: 9.0 Maw - Outdoor - Mawsworn Rifts - Calcis -> Zovaal's
			fp(2672), -- Quest Path 8423: 9.0 Maw - Outdoor - Mawsworn Rifts - Crucible -> Tremaculum
			fp(2673), -- Quest Path 8424: 9.0 Maw - Outdoor - Mawsworn Rifts - Tremaculum -> Crucible
			fp(2674), -- Quest Path 8375: 9.0 Maw - Outdoor - Ve'nari -> Beastwarrens
			fp(2675), -- Quest Path 8425: 9.0 Bastion - Treasure - Out of Bounds Teleporter - 01 - SBV
			fp(2676), -- Quest Path 8426: 9.0 Bastion - Treasure - Out of Bounds Teleporter - 02 - SBV
			fp(2677), -- Quest Path 8427: 9.0 Bastion - Treasure - Out of Bounds Teleporter - 03 - SBV
			fp(2678), -- Quest Path 8428: 9.0 Bastion - Treasure - Out of Bounds Teleporter - 04 - SBV
		})),

		-- 9.0.2
		expansion(EXPANSION.SL, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_2 } }, {
			fp(2681), -- Quest Path 8460: 9.0 Bastion - Cloudwalker Coffer - Zipline - To Memorial Shrine (MAH)
			fp(2683), -- Quest Path 8472: 9.0 Bastion - Covenant Hall - Flight to Sanctum - Amphitheater -> Covenant Hall - GJC
			fp(2684), -- Quest Path 8473: 9.0 Bastion - Covenant Hall - Flight to Sanctum - Sanctum -> Amphitheater - GJC
			fp(2685), -- Quest Path 8474: 9.0 Bastion - Covenant Hall - Flight to Sanctum - Fate's Precipice -> Sanctum - GJC
			fp(2686), -- Quest Path 8475: 9.0 Bastion - Covenant Hall - Flight to Sanctum - Sanctum -> Fate's Precipice - GJC
			fp(2687), -- Quest Path 8476: 9.0 Bastion - Covenant Hall - Flight to Sanctum - Humility Terrace -> Sanctum - GJC
			fp(2688), -- Quest Path 8477: 9.0 Bastion - Covenant Hall - Flight to Sanctum - Sanctum -> Humility Terrace - GJC
		})),

		-- 9.0.5
		expansion(EXPANSION.SL, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_5 } }, {
			fp(2690), -- Quest Path 8500: 9.0.5 Maw - Hidden Object - Shadehound Mount - Perdition Upper to Zovaals - LJS
		})),

		-- 9.1.0
		expansion(EXPANSION.SL, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_0 } }, {
			fp(2691), -- Quest Path 8507: 9.1 Campaign- Ch 06 - House of Rituals - Surface -> Exoramas - KRB
			fp(2692), -- Quest Path 8508: 9.1 Campaign- Ch 06 - House of Rituals - Exoramas -> Surface - KRB
			fp(2695), -- Quest Path 8530: 9.1 - Dungeon - Broker City - RP Throughline - Elevator Taxi Path
			fp(2699), -- Tazavesh Outdoor
		})),

		-- 9.1.5
		expansion(EXPANSION.SL, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_5 } }, {
			fp(2708), -- Quest Path 8614: 9.0 Maw - Outdoor - Ve'nari -> Perdition Hold
			fp(2709), -- Quest Path 8615: 9.0 Maw - Outdoor - Ve'nari -> Desmotaeron
			fp(2710), -- Quest Path 8616: 9.0 Maw - Outdoor - Mawsworn Rifts - Desmotaeron -> Perdition Hold
			fp(2711), -- Quest Path 8617: 9.0 Maw - Outdoor - Mawsworn Rifts - Perdition Hold -> Desmotaeron
		})),

		-- 9.2.0
		expansion(EXPANSION.SL, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_2_0 } }, {
			fp(2732), -- [HIDDEN] - 9.2 Resonant Peaks - Teleport Network - Hidden Hub (Connects all Nodes to each other without unique paths) (MAH/JDA)
		})),
	}),
	expansion(EXPANSION.DF, {
		-- 10.0.0
		expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
			fp(2693), -- Seamless Proto, Revendreth
			fp(2694), -- Seamless Proto, Boralus
			fp(2717), -- Quest Path 8628: 10.0 - Pre-Prod - Krav'rel to Azure Archives - (STM)
			fp(2718), -- Quest Path 8629: 10.0 - Pre-Prod: Azure Archives to Kirin Tor Hub - (STM)
			fp(2719), -- Quest Path 8630: 10.0 - Pre-Prod - Bombing Run - (STM)
			fp(2720), -- Quest Path 8631: 10.0 - Pre-Prod - Kalthraz Fortress to Azure Archives - (STM)
			fp(2722), -- Quest Path 8635: 10.0 Pre-Prod - Grasslands - Dragonsmeet to Emerald Gardens (JLW)
			fp(2739), -- Rebuff Lookout, The Waking Shores
			fp(2740), -- 10.0 Construction - Teleport Network - Hidden Hub (Connects all Nodes to each other without unique paths) (JDA)
			fp(2741), -- Skytop Lookout (QD), The Waking Shores
			fp(2752), -- Ruby Lifeshrine, The Waking Shores
			fp(2770), -- Brackenhide Outskirts, The Azure Span
			fp(2771), -- Emerald Gardens, Ohn'ahran Plains
			fp(2776), -- Life Pools - top to bottom, Waking Shores - Begin
			fp(2777), -- Life Pools - top to bottom, Waking Shores - End
			fp(2778), -- Dragonscale Basecamp (QD), The Waking Shores
			fp(2779), -- Wingrest Embassy (QD), The Waking Shores
			fp(2780), -- 10.0 Explorers - Travel Network - Hub
			fp(2782), -- Quest Path 8851: 10.0 Plains - Emerald Hub - Taxi Down to Portal Grove (RMV)
			fp(2783), -- Quest Path 8852: 10.0 Plains - Emerald Hub - Taxi Up to Shady Snctuary (RMV)
			fp(2820), -- Quest Path 9123: 10.0 Plains - Merithra's Watch - Taxi Down to Shady Sanctuary (RMV)
			fp(2821), -- Quest Path 9124: 10.0 Plains - Emerald Hub - Taxi Up to Merithra's Watch (RMV)
			fp(2822), -- Quest Path 9125: 10.0 Plains - Emerald Hub - Taxi to Lunedane (RMV)
			fp(2823), -- Quest Path 9126: 10.0 Plains - Lunedane - Taxi to Shady Sanctuary (RMV)
			fp(2824), -- Quest Path 9147: 10.0 Plains - Emerald Hub - Taxi to Lunedane - PERSONAL (RMV)
			fp(2832), -- Cobalt Assembly, The Azure Span
			fp(2835), -- [Hidden] 10.0 Travel Network - Destination Input
			fp(2843), -- [Hidden] 10.0 Travel Network - Destination Output
		})),

		-- 10.0.7
		expansion(EXPANSION.DF, patch(0,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_7 } }, {
			fp(2856), -- Quest Path 9315: 10.0.7 Forbidden Reach - War Creche - Taxi - Go Up - EJC
			fp(2857), -- Quest Path 9316: 10.0.7 Forbidden Reach - War Creche - Taxi - Go Down - EJC
		})),

		-- 10.1.0
		expansion(EXPANSION.DF, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_0 } }, {
			fp(2860), -- 10.1 UG - Campaign - Ch6 - Aberrus Upper Platform (SMART)
		})),

		-- 10.1.7
		expansion(EXPANSION.DF, patch(1,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_7 } }, {
			fp(2887), -- Quest Path 9429: 10.1.7 Heritage - Night Elf - Player Up to the Start of Shadow Hold, Lower Floor (MPK)
			fp(2892), -- Quest Path 9443: 10.1.7 Heritage - Night Elf - Player Up to the Start of Shadow Hold, Hel'nurath's Room (MPK)
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.0.0
		expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
			fp(2894), -- 11.0  - TEST - Dorn Batol, Khaz Algar - (LWB)
			fp(2938), -- The Swaying Span
			fp(2955), -- Quest Path 9706: 11.0 Z2 - Max Level - CH3 - Q2 - Pipe Ingress 1 Taxi (SMART)
			fp(2964), -- Quest Path 9786: 11.0 Z2 - Campaign - Ch 3 - Dark Iron From Above - Boss Flyover - (LWB)
			fp(2967), -- Quest Path 9870: 11.0 Raid - Nerubian - Zone - Thread Elevator - 04 Taxi Path 01 - TJS
			-- #if BEFORE 11.2.7
			fp(2972), -- Jeff the Flightmaster
			-- #endif
		})),

		-- 11.0.2
		expansion(EXPANSION.TWW, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_2 } }, {
			fp(2987), -- The Congealing Pool (One-way)
		})),

		-- 11.1.7
		expansion(EXPANSION.TWW, patch(1,7), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_7 } }, {
			fp(3005), -- Quest Path 10165: 0.x Generic - Taxi - Cross Continent Load Spline Test (LAS)
			fp(3122), -- Quest Path 10677: 11.1.7 Lorewalking - Xal - Q2 - Vehicle - Summon - stormsong to drustvar - Quest Taxi Version (LAS)
		})),

		-- 11.2.0
		expansion(EXPANSION.TWW, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_2_0 } }, {
			fp(3026),	-- Quest Path 10254: 11.2 Raid - Manaforge - Zone - Traversal - Gateway Taxi 01 - Pipes to Hub - TJS
			fp(3111),	-- Quest Path 10562: 11.2 Raid - Manaforge - Zone - Traversal - Dimensius Forward Left (Quest/Event) - SRC
		})),

		-- 11.2.7
		expansion(EXPANSION.TWW, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_11_2_7 } }, {
			fp(3175),	-- Quest Path 11142: 11.2.7 Catch Up - TWW - Q2 - Dornegal to Freywold (KRB)
			fp(3176),	-- Quest Path 11144: 11.2.7 Catch Up - TWW - Q2 - Meadery to Coreway (KRB)
			fp(3177),	-- Quest Path 11146: 11.2.7 Catch Up - TWW - Q2 - Coreway to Ringing Deeps (KRB)
			fp(3178),	-- Quest Path 11147: 11.2.7 Catch Up - TWW - Q3 - Weaver to City (KRB)
			fp(3179),	-- Quest Path 11151: 11.2.7 Catch Up - TWW - Q3 - Priory to Foundation Hall (KRB)
			fp(3204),	-- Quest Path 11298: 11.2.7 Catch Up -  TWW -  Q2 -  Cavern to Awakening Machine (KRB)
		})),
	}),
}));
