---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(MAPS, {
	--[[
	Maps are devided into 4 categories which are used ingame (https://wago.tools/db2/UiMap)
	0 = World - Might be available and missing from ATT currently
	1 = [DEPRECATED] Legacy Taxi - Hiding this here in NYI, it's not possible to collect anything there or enter this Map
	2 = Taxi and Adventure - Hiding this here in NYI, it's not possible to collect anything there or enter this Map
	3 = Minimap - Hiding this here in NYI, it's not possible to collect anything there or enter this Map
	]]--
	expansion(EXPANSION.CATA, {
		-- 4.x.x
		n(P4xx, {
			-- 0 (World)
			m(218),	-- Ruins of Gilneas City
			m(233),	-- Zul'Gurub
		}),
	}),
	expansion(EXPANSION.MOP, {
		-- 5.x.x
		n(P5xx, {
			-- 0 (World)
			m(426),	-- Echo Ridge Mine
			m(449),	-- Temple of Kotmogu
		}),
	}),
	expansion(EXPANSION.BFA, {
		-- 8.0.1
		expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
			-- 0 (World)
			m(1180),	-- Abyssal Melody
			m(1158),	-- Arathi Highlands
			m(947),	-- Azeroth
			m(838),	-- Battle for Blackrock Mountain
			m(834),	-- Coldridge Valley
			m(946),	-- Cosmic
			m(938),	-- Gilneas Island
			m(824),	-- Islands
			m(828),	-- The Eye of Eternity
			m(997),	-- Tirisfal Glades
			m(939),	-- Tropical Isle 8.0
			-- 1 ([DEPRECATED] Legacy Taxi)
			m(990),	-- Draenor
			m(985),	-- Eastern Kingdoms
			m(986),	-- Kalimdor
			m(992),	-- Kul Tiras
			m(988),	-- Northrend
			m(987),	-- Outland
			m(989),	-- Pandaria
			m(991),	-- Zandalar
			-- 2 (Taxi and Adventure)
			m(994),	-- Argus
			m(1187),	-- Azsuna
			m(993),	-- Broken Isles
			m(1192),	-- Broken Shore
			m(1197),	-- Drustvar
			m(1189),	-- Highmountain
			m(1014),	-- Kul Tiras
			m(1194),	-- Nazmir
			m(1190),	-- Stormheim
			m(1198),	-- Stormsong Valley
			m(1191),	-- Suramar
			m(1196),	-- Tiragarde Sound
			m(1188),	-- Val'sharah
			m(1195),	-- Vol'dun
			m(1011),	-- Zandalar
			m(1193),	-- Zuldazar
		})),

		-- 8.1.0
		expansion(EXPANSION.BFA, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_0 } }, {
			-- 0 (World)
			m(1343),	-- 8.1 Darkshore Outdoor Final Phase
			m(1362),	-- Shrine of the Storm
			m(1347),	-- Zandalari Treasury
			-- 2 (Taxi and Adventure)
			m(1244),	-- Arathi Highlands
			m(1310),	-- Ashenvale
			m(1317),	-- Azshara
			m(1325),	-- Azuremyst Isle
			m(1245),	-- Badlands
			m(1246),	-- Blasted Lands
			m(1327),	-- Bloodmyst Isle
			m(1255),	-- Burning Steppes
			m(1309),	-- Darkshore
			m(1324),	-- Darnassus
			m(1257),	-- Deadwind Pass
			m(1313),	-- Desolace
			m(1253),	-- Dun Morogh
			m(1305),	-- Durotar
			m(1258),	-- Duskwood
			m(1315),	-- Dustwallow Marsh
			m(1208),	-- Eastern Kingdoms
			m(1250),	-- Eastern Plaguelands
			m(1256),	-- Elwynn Forest
			m(1267),	-- Eversong Woods
			m(1318),	-- Felwood
			m(1314),	-- Feralas
			m(1268),	-- Ghostlands
			m(1271),	-- Gilneas
			m(1251),	-- Hillsbrad Foothills
			m(1265),	-- Ironforge
			m(1270),	-- Isle of Quel'Danas
			m(1209),	-- Kalimdor
			m(1259),	-- Loch Modan
			m(1320),	-- Moonglade
			m(1328),	-- Mount Hyjal
			m(1306),	-- Mulgore
			m(1307),	-- Northern Barrens
			m(1260),	-- Redridge Mountains
			m(1273),	-- Ruins of Gilneas
			m(1254),	-- Searing Gorge
			m(1321),	-- Silithus
			m(1269),	-- Silvermoon City
			m(1248),	-- Silverpine Forest
			m(1329),	-- Southern Barrens
			m(1312),	-- Stonetalon Mountains
			m(1264),	-- Stormwind City
			m(1274),	-- Stranglethorn Vale
			m(1261),	-- Swamp of Sorrows
			m(1316),	-- Tanaris
			m(1308),	-- Teldrassil
			m(1252),	-- The Hinterlands
			m(1326),	-- The Exodar
			m(1331),	-- The Exodar
			m(1311),	-- Thousand Needles
			m(1323),	-- Thunder Bluff
			m(1247),	-- Tirisfal Glades
			m(1276),	-- Tol Barad
			m(1277),	-- Tol Barad Peninsula
			m(1275),	-- Twilight Highlands
			m(1330),	-- Uldum
			m(1266),	-- Undercity
			m(1319),	-- Un'Goro Crater
			m(1272),	-- Vashj'ir
			m(1249),	-- Western Plaguelands
			m(1262),	-- Westfall
			m(1263),	-- Wetlands
			m(1322),	-- Winterspring
		})),

		-- 8.1.5
		expansion(EXPANSION.BFA, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_5 } }, {
			-- 0 (World)
			m(1408),	-- Ashran
			m(1465),	-- Scarlet Halls
			-- 2 (Taxi and Adventure)
			m(1396),	-- Borean Tundra
			m(1405),	-- Crystalsong Forest
			m(1397),	-- Dragonblight
			m(1398),	-- Grizzly Hills
			m(1399),	-- Howling Fjord
			m(1406),	-- Hrothgar's Landing
			m(1400),	-- Icecrown
			m(1384),	-- Northrend
			m(1467),	-- Outland
			m(1401),	-- Sholazar Basin
			m(1402),	-- The Storm Peaks
			m(1404),	-- Wintergrasp
			m(1403),	-- Zul'Drak
		})),

		-- 8.2.0
		expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
			-- 0 (World)
			m(1371),	-- GnomereganA
			m(1372),	-- GnomereganB
			m(1374),	-- GnomereganD
			m(1523),	-- Solesa Naksu [DNT]
			-- 2 (Taxi and Adventure)
			m(1504),	-- Nazjatar
		})),

		-- 8.2.5
		expansion(EXPANSION.BFA, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_5 } }, {
			-- 0 (World)
			m(1379),	-- 8.3 Visions of N'Zoth - Prototype
			m(1560),	-- Blackwing Lair
			m(1552),	-- Caverns of Time
			m(1521),	-- Karazhan Catacombs
		})),

		-- 8.3.0
		expansion(EXPANSION.BFA, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_3_0 } }, {
			-- 0 (World)
			m(1547),	-- Mogu'shan Vaults
			m(1600),	-- Vault of Y'Shaarj
		})),
	}),
	expansion(EXPANSION.SL, {
		-- 9.0.1
		expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
			-- 0 (World)
			m(1658),	-- Alpha_TG_R02
			m(1659),	-- Alpha_TG_R03
			m(1661),	-- Alpha_TG_R05
			m(1603),	-- Ardenweald
			m(1614),	-- JT_New_A
			m(1616),	-- TG11_Floor [Deprecated]
			m(1617),	-- TG12_Floor [Deprecated]
			m(1636),	-- Torghast
			m(1788),	-- Torghast
			m(1715),	-- Vestibule Of Eternity
			m(1724),	-- Vortrexxis
			-- 2 (Taxi and Adventure)
			m(1643),	-- Ardenweald
			m(1739),	-- Ardenweald
			m(1740),	-- Ardenweald
			m(1569),	-- Bastion
			m(1813),	-- Bastion
			m(1741),	-- Maldraxxus
			m(1814),	-- Maldraxxus
			m(1738),	-- Revendreth
			m(1742),	-- Revendreth
			m(1647),	-- The Shadowlands
			m(1645),	-- Torghast
			-- 3 (Minimap)
			m(1656),	-- Floor 10
			m(1833),	-- Torghast
			m(1848),	-- Torghast - Map Floor 14
			m(1849),	-- Torghast - Map Floor 16
			m(1850),	-- Torghast - Map Floor 18
			m(1909),	-- Torghast - Map Floor 21
			m(1716),	-- Torghast - Map Floor 22
			m(1894),	-- Torghast - Map Floor 23
			m(1834),	-- Torghast - Map Floor 24
			m(1835),	-- Torghast - Map Floor 25
			m(1836),	-- Torghast - Map Floor 26
			m(1837),	-- Torghast - Map Floor 27
			m(1839),	-- Torghast - Map Floor 28
			m(1842),	-- Torghast - Map Floor 29
			m(1845),	-- Torghast - Map Floor 31
			m(1844),	-- Torghast - Map Floor 32
			m(1846),	-- Torghast - Map Floor 33
			m(1847),	-- Torghast - Map Floor 34
			m(1895),	-- Torghast - Map Floor 35
			m(1843),	-- Torghast - Map Floor 38
			m(1841),	-- Torghast - Map Floor 39
			m(1840),	-- Torghast - Map Floor 40
			m(1838),	-- Torghast - Map Floor 41
			m(1851),	-- Torghast - Map Floor 42
			m(1852),	-- Torghast - Map Floor 44
			m(1853),	-- Torghast - Map Floor 46
			m(1854),	-- Torghast - Map Floor 48
			m(1855),	-- Torghast - Map Floor 49
			m(1856),	-- Torghast - Map Floor 50
			m(1857),	-- Torghast - Map Floor 51
			m(1858),	-- Torghast - Map Floor 52
			m(1859),	-- Torghast - Map Floor 53
			m(1860),	-- Torghast - Map Floor 54
			m(1896),	-- Torghast - Map Floor 56
			m(1861),	-- Torghast - Map Floor 57
			m(1900),	-- Torghast - Map Floor 58
			m(1862),	-- Torghast - Map Floor 59
			m(1908),	-- Torghast - Map Floor 60
			m(1863),	-- Torghast - Map Floor 61
			m(1897),	-- Torghast - Map Floor 62
			m(1864),	-- Torghast - Map Floor 63
			m(1865),	-- Torghast - Map Floor 64
			m(1867),	-- Torghast - Map Floor 66
			m(1868),	-- Torghast - Map Floor 67
			m(1869),	-- Torghast - Map Floor 68
			m(1870),	-- Torghast - Map Floor 69
			m(1871),	-- Torghast - Map Floor 70
			m(1872),	-- Torghast - Map Floor 71
			m(1901),	-- Torghast - Map Floor 73
			m(1873),	-- Torghast - Map Floor 74
			m(1874),	-- Torghast - Map Floor 75
			m(1875),	-- Torghast - Map Floor 76
			m(1876),	-- Torghast - Map Floor 77
			m(1877),	-- Torghast - Map Floor 78
			m(1902),	-- Torghast - Map Floor 79
			m(1878),	-- Torghast - Map Floor 80
			m(1879),	-- Torghast - Map Floor 81
			m(1898),	-- Torghast - Map Floor 82
			m(1880),	-- Torghast - Map Floor 83
			m(1881),	-- Torghast - Map Floor 84
			m(1903),	-- Torghast - Map Floor 85
			m(1882),	-- Torghast - Map Floor 86
			m(1883),	-- Torghast - Map Floor 87
			m(1884),	-- Torghast - Map Floor 88
			m(1885),	-- Torghast - Map Floor 89
			m(1904),	-- Torghast - Map Floor 90
			m(1910),	-- Torghast - Map Floor 91
			m(1886),	-- Torghast - Map Floor 92
			m(1887),	-- Torghast - Map Floor 93
			m(1888),	-- Torghast - Map Floor 94
			m(1889),	-- Torghast - Map Floor 95
			m(1905),	-- Torghast - Map Floor 96
			m(1890),	-- Torghast - Map Floor 97
			m(1891),	-- Torghast - Map Floor 98
			m(1892),	-- Torghast - Map Floor 99
			m(1893),	-- Torghast - Map Floor 100
			m(1899),	-- Torghast - Map Floor 101
			m(1907),	-- Torghast - Map Floor 102
		})),

		-- 9.0.2
		expansion(EXPANSION.SL, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_2 } }, {
			-- 3 (Minimap)
			m(1914),	-- Torghast
			m(1921),	-- Torghast
		})),

		-- 9.1.0
		expansion(EXPANSION.SL, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_0 } }, {
			-- 2 (Taxi and Adventure)
			m(1922),	-- Draenor
			m(1923),	-- Pandaria
			-- 3 (Minimap)
			m(2009),	-- TG106_Floor_MM
			m(2010),	-- Torghast
			m(2011),	-- Torghast
			m(2012),	-- Torghast
			m(2019),	-- Torghast
		})),

		-- 9.2.0
		expansion(EXPANSION.SL, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_2_0 } }, {
			-- 2 (Taxi and Adventure)
			m(2059),	-- Resonant Peaks
			m(2055),	-- Sepulcher of the First Ones
			m(2046),	-- Zereth Mortis
		})),
	}),
	expansion(EXPANSION.DF, {
		-- 10.0.0
		expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
			-- 0 (World)
			m(2063),	-- Dragon Isles
			m(2107),	-- The Forbidden Reach
			m(2026),	-- The Forbidden Reach Deprecated
			-- 2 (Taxi and Adventure)
			m(2057),	-- Dragon Isles
			m(2129),	-- Ohn'ahran Plains
			m(2130),	-- Thaldraszus
			m(2128),	-- The Azure Span
			m(2127),	-- The Waking Shores
			m(2131),	-- The Forbidden Reach
			m(2134),	-- Valdrakken
		})),

		-- 10.0.2
		expansion(EXPANSION.DF, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_2 } }, {
			-- 2 (Taxi and Adventure)
			m(2149),	-- Ohn'ahran Plains
		})),

		-- 10.1.0
		expansion(EXPANSION.DF, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_0 } }, {
			-- 0 (World)
			m(2176),	-- The Maelstrom
			-- 2 (Taxi and Adventure)
			m(2147),	-- Azeroth
			m(2175),	-- Zaralek Cavern
		})),

		-- 10.2.0
		expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_0 } }, {
			-- 2 (Taxi and Adventure)
			m(2252),	-- Dragon Isles
			m(2241),	-- Emerald Dream
		})),

		-- 10.2.5
		expansion(EXPANSION.DF, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_5 } }, {
			-- 2 (Taxi and Adventure)
			m(2268),	-- Amirdrassil
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.0.0
		expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
			-- 0 (World)
			m(2311),	-- 11.0 - Hallowfall - [Spreading the Light]- Disabled
			m(2275),	-- 11.0 - Underground [Deprecated]
			-- 2 (Taxi and Adventure)
			m(2270),	-- Azj' Kahet
			m(2273),	-- Hallowfall
			m(2271),	-- Isle of Dorn
			m(2276),	-- Khaz Algar
			m(2298),	-- Nerub-ar Palace
			m(2272),	-- The Ringing Deeps
		})),

		-- 11.1.0
		expansion(EXPANSION.TWW, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_0 } }, {
			-- 3 (Minimap)
			m(2431),	-- Minimap_RingingDeeps_Coreway
		})),

		-- 11.2.0
		expansion(EXPANSION.TWW, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_2_0 } }, {
			-- 0 (World)
			m(2453),	-- Archival Assault
			-- 2 (Taxi and Adventure)
			m(2398),	-- K'aresh
			m(2374),	-- Undermine
		})),

		-- 11.2.7
		expansion(EXPANSION.TWW, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_11_2_7 } }, {
			-- 2 (Taxi and Adventure)
			m(2401),	-- Alliance Housing District
			m(2402),	-- Horde Housing District
		})),
	}),
}));
