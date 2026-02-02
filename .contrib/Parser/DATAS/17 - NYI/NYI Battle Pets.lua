---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, filter(BATTLE_PETS, {
	expansion(EXPANSION.CLASSIC, {
		-- 1.x.x
		n(P1xx, {
			-- Without SpeciesID Attached
			i(21168, {	-- Baby Shark (PET!)
				["displayID"] = 21168,
			}),
			i(11903, {	-- Cat Carrier (Corrupted Kitten) (PET!)
				["displayID"] = 9209,
			}),
			i(18963, {	-- Turtle Egg (Albino)
				-- ["displayID"] = ,
			}),
			i(18964, {	-- Loggerhead Snapjaw / Turtle Egg (Loggerhead) (PET!)
				["displayID"] = 14657,
			}),
			i(18965, {	-- Turtle Egg (Hawksbill)
				-- ["displayID"] = ,
			}),
			i(18966, {	-- Turtle Egg (Leatherback)
				-- ["displayID"] = ,
			}),
			i(18967, {	-- Turtle Egg (Olive)
				-- ["displayID"] = ,
			}),

			i(13342, {	-- Pet Fish (PET!)
				-- ["displayID"] = ,
			}),
			i(13343, {	-- Pet Stone (PET!)
				-- ["displayID"] = ,
			}),

			-- #if BEFORE 7.0.3
			i(23712),	-- White Tiger Cub (PET!) - Crieve NOTE: This became Ash'ana in Val'sharah with Legion.
			-- #endif
		}),
	}),
	expansion(EXPANSION.TBC, {
		-- 2.1.1
		expansion(EXPANSION.TBC, patch(1,1), bubbleDownSelf({ ["timeline"] = { CREATED_2_1_1 } }, {
			-- Without SpeciesID Attached
			i(31665, {	-- Toy RC Mortar Tank (PET!)
				["displayID"] = 15382,
			}),
		})),

		-- 2.2.2
		expansion(EXPANSION.TBC, patch(2,2), bubbleDownSelf({ ["timeline"] = { CREATED_2_2_2 } }, {
			-- With SpeciesID Attached
			i(32465, {	-- Lucky (PET!)
				["displayID"] = 21328
			}),
		})),

	}),
	expansion(EXPANSION.WRATH, {
		-- 3.0.2
		expansion(EXPANSION.WRATH, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
			-- Without SpeciesID Attached
			i(39148, {	-- Baby Coralshell Turtle (PET!)
				-- ["displayID"] = ,
			}),
		})),

		-- 3.1.0
		expansion(EXPANSION.WRATH, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_3_1_0 } }, {
			-- Without SpeciesID Attached
			i(45942, {	-- XS-001 Constructor Bot (PET!)
				["displayID"] = 29060,
			}),
		})),

		-- 3.2.2
		expansion(EXPANSION.WRATH, patch(2,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_2_2 } }, {
			-- Only SpeciesID
			pet(230, {	-- Macabre Marionette (PET!)
				["displayID"] = 29404,
			}),
		})),
	}),
	expansion(EXPANSION.CATA, {
		-- 4.0.1
		expansion(EXPANSION.CATA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_1 } }, {
			-- Without SpeciesID Attached
			i(67417, {	-- [DND] Lil' Deathwing Placeholder (PET!)
				["displayID"] = 28456,
			}),
			i(44972, {	-- Alarming Clockbot (NOT IN USE) (PET!)
				["displayID"] = 14473,
			}),
			-- Special: Only SpellIDs (Not in PetDB!)
			spell(89929, {	-- Rumbling Rockling (PET!)
				["displayID"] = 36129,
				["crs"] = { 48376 },	-- Rumbling Rockling
			}),
			spell(89930, {	-- Swirling Stormling (PET!)
				["displayID"] = 36130,
				["crs"] = { 48377 },	-- Swirling Stormling
			}),
			spell(89931, {	-- Whirling Waveling (PET!)
				["displayID"] = 36131,
				["crs"] = { 48378 },	-- Whirling Waveling
			}),
		})),

		-- 4.0.3
		expansion(EXPANSION.CATA, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_3 } }, {
			-- Without SpeciesID Attached
			i(66075, {	-- Bubbles (PET!)
				["displayID"] = 38311
			}),
			i(62769, {	-- Hardboiled Egg (PET!)
				["displayID"] = 15393
			}),
			i(67600, {	-- Lil' Alexstrasza (PET!)
				["displayID"] = 6290
			}),
			i(66070, {	-- Lizzy (PET!)
				["displayID"] = 36583
			}),
		})),

		-- 4.2.0
		expansion(EXPANSION.CATA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_4_2_0 } }, {
			-- Only SpeciesID
			pet(257, {	-- Murkimus the Gladiator (PET!)
				["displayID"] = 28734,
			}),
		})),

		-- 4.3.0
		expansion(EXPANSION.CATA, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_4_3_0 } }, {
			-- With SpeciesID Attached
			-- #if BEFORE 5.0.4
			i(76062),	-- Fetish Shaman (PET!)
			-- #endif
			-- Only SpeciesID
			pet(344, {	-- Green Balloon (PET!)
				["displayID"] = 38340,
			}),
			pet(345, {	-- Yellow Balloon (PET!)
				["displayID"] = 38341,
			}),
		})),
	}),
	expansion(EXPANSION.MOP, {
		-- 5.0.4
		expansion(EXPANSION.MOP, patch(0,4), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
			-- Trainer Pets --
			pet(897),	-- Acidous (PET!)
			pet(901),	-- Ambershell (PET!)
			pet(987),	-- Amythel (PET!)
			pet(941),	-- Anklor (PET!)
			pet(964),	-- Arcanus (PET!)
			pet(981),	-- Ashtail (PET!)
			pet(925),	-- Beacon (PET!)
			pet(978),	-- Beakmaster X-225 (PET!)
			pet(922),	-- Beamer (PET!)
			pet(948),	-- Bishibosh (PET!)
			pet(881),	-- Blackfang (PET!)
			pet(913),	-- Blaze (PET!)
			pet(935),	-- Bleakspinner (PET!)
			pet(1001),	-- Bleat (PET!)
			pet(974),	-- Blight (PET!)
			pet(927),	-- Blizzy (PET!)
			pet(977),	-- Bloom (PET!)
			pet(902),	-- Bounder (PET!)
			pet(995),	-- Brood of Mothallus (PET!)
			pet(888),	-- Burgle (PET!)
			pet(976),	-- Cadavus (PET!)
			pet(936),	-- Carrion (PET!)
			pet(1012),	-- Chirrup (PET!)
			pet(915),	-- Cho'guana (PET!)
			pet(961),	-- Chomps (PET!)
			pet(989),	-- Clatter (PET!)
			pet(908),	-- Cluckatron (PET!)
			pet(875),	-- Clucks (PET!)
			pet(946),	-- Comet (PET!)
			pet(899),	-- Constrictor (PET!)
			pet(932),	-- Corpsefeeder (PET!)
			pet(959),	-- Cragmaw (PET!)
			pet(942),	-- Croaker (PET!)
			pet(1009),	-- Crusher (PET!)
			pet(984),	-- Crystallus (PET!)
			pet(943),	-- Dampwing (PET!)
			pet(880),	-- Darkwidow (PET!)
			pet(1006),	-- Diamond (PET!)
			pet(967),	-- Dinner (PET!)
			pet(878),	-- Dipsy (PET!)
			pet(992),	-- Dor the Wall (PET!)
			pet(957),	-- Dramaticus (PET!)
			pet(973),	-- Drogar (PET!)
			pet(952),	-- ED-005 (PET!)
			pet(883),	-- Emeralda (PET!)
			pet(887),	-- Eyegouger (PET!)
			pet(993),	-- Fangor (PET!)
			pet(873),	-- Fangs (PET!)
			pet(911),	-- Firetooth (PET!)
			pet(912),	-- Flameclaw (PET!)
			pet(975),	-- Fleshrender (PET!)
			pet(877),	-- Flipsy (PET!)
			pet(879),	-- Flufftail (PET!)
			pet(894),	-- Flutterby (PET!)
			pet(876),	-- Foe Reaper 800 (PET!)
			pet(983),	-- Fracture (PET!)
			pet(928),	-- Frostmaw (PET!)
			pet(953),	-- Fungor (PET!)
			pet(939),	-- Garnestrasz (PET!)
			pet(909),	-- Gizmo (PET!)
			pet(906),	-- Glimmer (PET!)
			pet(955),	-- Glitterfly (PET!)
			pet(960),	-- Gnasher (PET!)
			pet(966),	-- Gobbles (PET!)
			pet(951),	-- Goliath (PET!)
			pet(979),	-- Grizzle (PET!)
			pet(923),	-- Hatewalker (PET!)
			pet(986),	-- Helios (PET!)
			pet(945),	-- Ignious (PET!)
			pet(980),	-- Incinderous (PET!)
			pet(917),	-- Indigon (PET!)
			pet(949),	-- Jack (PET!)
			pet(963),	-- Jadefire (PET!)
			pet(982),	-- Kali (PET!)
			pet(924),	-- Lacewing (PET!)
			pet(1002),	-- Lapin (PET!)
			pet(1000),	-- Lightstalker (PET!)
			pet(893),	-- Longneck (PET!)
			pet(896),	-- Mister Pinch (PET!)
			pet(1005),	-- Mollus (PET!)
			pet(944),	-- Moltar (PET!)
			pet(884),	-- Moonstalker (PET!)
			pet(968),	-- Mort (PET!)
			pet(889),	-- Mumtar (PET!)
			pet(1007),	-- Mutilator (PET!)
			pet(885),	-- Nanners (PET!)
			pet(999),	-- Needleback (PET!)
			pet(962),	-- Netherbite (PET!)
			pet(947),	-- Nightstalker (PET!)
			pet(937),	-- Obsidion (PET!)
			pet(898),	-- Odoron (PET!)
			pet(895),	-- Oozer (PET!)
			pet(1003),	-- Piqua (PET!)
			pet(916),	-- Plague (PET!)
			pet(934),	-- Plaguebringer (PET!)
			pet(931),	-- Plop (PET!)
			pet(1008),	-- Pounder (PET!)
			pet(904),	-- Prancer (PET!)
			pet(958),	-- Prince Wart (PET!)
			pet(991),	-- Pyth (PET!)
			pet(905),	-- Rasp (PET!)
			pet(891),	-- Ripper (PET!)
			pet(900),	-- Rockhide (PET!)
			pet(971),	-- Rot (PET!)
			pet(985),	-- Ruby (PET!)
			pet(997),	-- Siren (PET!)
			pet(1004),	-- Skimmer (PET!)
			pet(994),	-- Skyshaper (PET!)
			pet(972),	-- Sleet (PET!)
			pet(872),	-- Slither (PET!)
			pet(890),	-- Spike (PET!)
			pet(950),	-- Sploder (PET!)
			pet(892),	-- Springtail (PET!)
			pet(970),	-- Spooky Strangler (PET!)
			pet(990),	-- Spring (PET!)
			pet(969),	-- Stitch (PET!)
			pet(956),	-- Stompy (PET!)
			pet(1011),	-- Stormlash (PET!)
			pet(933),	-- Subject 142 (PET!)
			pet(874),	-- Teensy (PET!)
			pet(929),	-- Tinygos (PET!)
			pet(996),	-- Toothbreaker (PET!)
			pet(954),	-- Tripod (PET!)
			pet(988),	-- Twilight (PET!)
			pet(921),	-- Ultramus (PET!)
			pet(938),	-- Veridia (PET!)
			pet(965),	-- Warble (PET!)
			pet(882),	-- Webwinder (PET!)
			pet(907),	-- Whirls (PET!)
			pet(1010),	-- Whiskers (PET!)
			pet(926),	-- Willow (PET!)
			pet(998),	-- Woodcarver (PET!)
			pet(886),	-- Young Beaky (PET!)
			-- Only SpeciesID
			pet(705, {	-- Amorous Rooster (PET!)
				["displayID"] = 304,
			}),
			pet(832, {	-- Boomy Jr. (PET!)
				["displayID"] = 8909,
			}),
			pet(1354, {	-- C92 Annihilator (PET!)
				["displayID"] = 51661,
			}),
			pet(1257, {	-- Crafty (PET!)
				["displayID"] = 49086,
			}),
			pet(390, {	-- Deer (PET!)
				["displayID"] = 347,
			}),
			pet(833, {	-- Dr. Stinky (PET!)
				["displayID"] = 31275,
			}),
			pet(2, {	-- Dumptruck (PET!)
				["displayID"] = 42299,
			}),
			pet(476, {	-- Gazelle (PET!)
				["displayID"] = 1547,
			}),
			pet(462, {	-- Jacob the Test Seagull (PET!)
				["displayID"] = 36499,
			}),
			pet(827, {	-- Lady Burninator (PET!)
				["displayID"] = 42745,
			}),
			pet(828, {	-- Lord Landslide (PET!)
				["displayID"] = 35015,
			}),
			pet(829, {	-- Madam Flapsalot (PET!)
				["displayID"] = 16731,
			}),
			pet(831, {	-- Miss Mystical (PET!)
				["displayID"] = 65833,
			}),
			pet(825, {	-- Mr. Growls (PET!)
				["displayID"] = 36549,
			}),
			pet(826, {	-- Mrs. Skitters (PET!)
				["displayID"] = 43199,
			}),
			pet(824, {	-- Ms. Croaker (PET!)
				["displayID"] = 6297,
			}),
			pet(800, {	-- Muffin (PET!)
				["displayID"] = 44604,
			}),
			pet(486, {	-- Mule Deer (PET!)
				["displayID"] = 45890,
			}),
			pet(384, {	-- Otter Pup (PET!)
				["displayID"] = 42983,
			}),
			pet(354, {	-- PattyMack - WildBattlePet Test (PET!)
				["displayID"] = 10090,
			}),
			pet(444, {	-- PattyMack 2.0 - WildBattlePet Test (PET!)
				["displayID"] = 10090,
			}),
			pet(510, {	-- Rabbot (PET!)
				["displayID"] = 33559,
			}),
			pet(434, {	-- Ram (PET!)
				["displayID"] = 10000,
			}),
			pet(394, {	-- Sheep (PET!)
				["displayID"] = 856,
			}),
			pet(830, {	-- Sir Buckethead (PET!)
				["displayID"] = 28734,
			}),
			pet(864, {	-- Spider (PET!)
				["displayID"] = 44816,
			}),
			pet(375, {	-- The Gurkster (PET!)
				["displayID"] = 32313,
			}),
			pet(863, {	-- Widow Spiderling (PET!)
				["displayID"] = 35424,
			}),
			pet(715, {	-- Wild Silkworm (PET!)
				["displayID"] = 40630,
			}),
			pet(71, {	-- Unknown (PET!)
				-- ["displayID"] = ,
			}),
			pet(73, {	-- Unknown (PET!)
				-- ["displayID"] = ,
			}),
			-- Without SpeciesID Attached
			-- #if NOT ANYCLASSIC
			i(88148),	-- Jade Crane Chick (PET!) [Jade Crane Chick, item was never used]
			-- #endif
			-- i(82800),	-- Pet Cage (PET!)
		})),

		-- 5.1.0
		expansion(EXPANSION.MOP, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_1_0 } }, {
			-- Trainer Pets --
			pet(1130),	-- Crimson (PET!)
			pet(1137),	-- Darnak the Tunneler (PET!)
			pet(1135),	-- Dusty (PET!)
			pet(1066),	-- Fezwick (PET!)
			pet(1131),	-- Glowy (PET!)
			pet(1067),	-- Honky-Tonk (PET!)
			pet(1065),	-- Judgment (PET!)
			pet(1132),	-- Marley (PET!)
			pet(1140),	-- Pandaren Air Spirit (PET!)
			pet(1141),	-- Pandaren Earth Spirit (PET!)
			pet(1139),	-- Pandaren Fire Spirit (PET!)
			pet(1138),	-- Pandaren Water Spirit (PET!)
			pet(1134),	-- Sludgy (PET!)
			pet(1133),	-- Tiptoe (PET!)
			pet(1136),	-- Whispertail (PET!)
			-- Without SpeciesID Attached
			i(91031),	-- Darkmoon Glowfly (PET!) [Darkmoon Glowfly, item was never used]
		})),

		-- 5.2.0
		expansion(EXPANSION.MOP, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_2_0 } }, {
			-- Trainer Pets --
			pet(1193),	-- Dos-Ryga (PET!)
			pet(1187),	-- Gorespine (PET!)
			pet(1189),	-- Greyhoof (PET!)
			pet(1129),	-- Ka'wi the Gorger (PET!)
			pet(1192),	-- Kafi (PET!)
			pet(1190),	-- Lucky Yi (PET!)
			pet(1194),	-- Nitun (PET!)
			pet(1188),	-- No-No (PET!)
			pet(1195),	-- Skitterer Xi'a (PET!)
			pet(1191),	-- Ti'un the Wanderer (PET!)
		})),

		-- 5.3.0
		expansion(EXPANSION.MOP, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_3_0 } }, {
			-- Trainer Pets --
			pet(1247),	-- Doopy (PET!)
		})),

		-- 5.4.0
		expansion(EXPANSION.MOP, patch(4,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_4_0 } }, {
			-- Trainer Pets --
			pet(1301),	-- Alex (PET!)
			pet(1278),	-- Au (PET!)
			pet(1279),	-- Banks (PET!)
			pet(1292),	-- Bolo (PET!)
			pet(1280),	-- Brewly (PET!)
			pet(1296),	-- Carpe Diem (PET!)
			pet(1271),	-- Chaos (PET!)
			pet(1311),	-- Chi-Chi, Hatchling of Chi-Ji (PET!)
			pet(1281),	-- Chirps (PET!)
			pet(1299),	-- Cindy (PET!)
			pet(1300),	-- Dah'da (PET!)
			pet(1283),	-- Knowledge (PET!)
			pet(1293),	-- Li (PET!)
			pet(1277),	-- Lil' B (PET!)
			pet(1339),	-- Lil' Oondasta (PET!)
			pet(1289),	-- Monte (PET!)
			pet(1288),	-- Nairn (PET!)
			pet(1284),	-- Patience (PET!)
			pet(1290),	-- Rikki (PET!)
			pet(1297),	-- River (PET!)
			pet(1269),	-- Screamer (PET!)
			pet(1291),	-- Socks (PET!)
			pet(1298),	-- Spirus (PET!)
			pet(1287),	-- Stormoen (PET!)
			pet(1286),	-- Summer (PET!)
			pet(1282),	-- Tonsa (PET!)
			pet(1268),	-- Trike (PET!)
			pet(1285),	-- Wisdom (PET!)
			pet(1267),	-- Xu-Fu, Cub of Xuen (PET!)
			pet(1295),	-- Yen (PET!)
			pet(1317),	-- Yu'la, Broodling of Yu'lon (PET!)
			pet(1319),	-- Zao, Calfling of Niuzao (PET!)
			-- Only SpeciesID
			pet(1258, {	-- Angara (PET!)
				["displayID"] = 42229,
			}),
			pet(1354, {	-- C92 Annihilator (PET!)
				["displayID"] = 51661,
			}),
			pet(1257, {	-- Crafty (PET!)
				["displayID"] = 49086,
			}),
		})),
	}),
	expansion(EXPANSION.WOD, {
		-- 6.0.2
		expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
			-- Trainer Pets --
			pet(1503),	-- Acidtooth (PET!)
			pet(1559),	-- Apexis Guardian (PET!)
			pet(1498),	-- Archimedes (PET!)
			pet(1562),	-- Atonement (PET!)
			pet(1504),	-- Blingtron 4999b (PET!)
			pet(1479),	-- Brutus (PET!)
			pet(1484),	-- Carroteye (PET!)
			pet(1473),	-- Carrotus Maximus (PET!)
			pet(1608),	-- Carrotus Maximus (PET!)
			pet(1557),	-- Darkwing (PET!)
			pet(1400),	-- Deebs (PET!)
			pet(1548),	-- Doodle (PET!)
			pet(1409),	-- Eleanor (PET!)
			pet(1552),	-- Fangra (PET!)
			pet(1510),	-- Fatos (PET!)
			pet(1499),	-- Fiero (PET!)
			pet(1554),	-- Gladiator Deathy (PET!)
			pet(1555),	-- Gladiator Murkalot (PET!)
			pet(1556),	-- Gladiator Murkimus (PET!)
			pet(1472),	-- Gnawface (PET!)
			pet(1609),	-- Gnawface (PET!)
			pet(1474),	-- Gorefu (PET!)
			pet(1607),	-- Gorefu (PET!)
			pet(1561),	-- Grace (PET!)
			pet(1490),	-- Gromli (PET!)
			pet(1492),	-- Grubbles (PET!)
			pet(1424),	-- Gyrexle, the Eternal Mechanic (PET!)
			pet(1509),	-- Hanos (PET!)
			pet(1443),	-- Idol of Decay (PET!)
			pet(1496),	-- Jahan (PET!)
			pet(1487),	-- King Floret (PET!)
			pet(1489),	-- Kromli (PET!)
			pet(1508),	-- Manos (PET!)
			pet(1476),	-- Mr. Pointy (PET!)
			pet(1483),	-- Mr. Terrible (PET!)
			pet(1475),	-- Otto (PET!)
			pet(1547),	-- Pixiebell (PET!)
			pet(1506),	-- Protectron 011803 (PET!)
			pet(1505),	-- Protectron 022481 (PET!)
			pet(1402),	-- Puzzle (PET!)
			pet(1488),	-- Queen Floret (PET!)
			pet(1480),	-- Quintessence of Light (PET!)
			pet(1501),	-- Rockbiter (PET!)
			pet(1482),	-- Rukus (PET!)
			pet(1497),	-- Samm (PET!)
			pet(1494),	-- Scrags (PET!)
			pet(1560),	-- Serendipity (PET!)
			pet(1485),	-- Sloppus (PET!)
			pet(1493),	-- Stings (PET!)
			pet(1507),	-- Stitches Jr. (PET!)
			pet(1502),	-- Stonechewer (PET!)
			pet(1477),	-- Syd (PET!)
			pet(1549),	-- Tally (PET!)
			pet(1486),	-- The Beakinator (PET!)
			pet(1558),	-- The Great Kaliri (PET!)
			pet(1500),	-- Tirs (PET!)
			pet(1401),	-- Tyri (PET!)
			pet(1444),	-- Wishbright Lantern (PET!)
			pet(1553),	-- Wolfgar (PET!)
			pet(1550),	-- Wolfus (PET!)
			-- Only SpeciesID
			pet(1423, {	-- Bitey (PET!)
				["displayID"] = 47731,
			}),
			pet(1420, {	-- Evil Widowling (PET!)
				-- ["displayID"] = ,
			}),
			pet(1352, {	-- Lord Piglet (PET!)
				["displayID"] = 22938,
			}),
			pet(1404, {	-- Mechanical Scorpid (PET!)
				["displayID"] = 5905,
			}),
			pet(1410, {	-- Mechanical Training Dummy (PET!)
				["displayID"] = 33559,
			}),
			pet(1610, {	-- Unborn Val'kyr (PET!)
				["displayID"] = 48650,
			}),
			pet(1259, {	-- Widowling (PET!)
				["displayID"] = 40337,
			}),
			-- With SpeciesID Attached
			i(118597, {	-- Kelp Sproutling (PET!)
				["displayID"] = 57822,
			}),
			i(118596, {	-- Sassy Sproutling (PET!)
				["displayID"] = 57820,
			}),
			-- Without SpeciesID Attached
			i(113569),	-- Autumnal Sproutling (PET!) [Autumnal Sproutling, item was never used]
			i(115282),	-- Draenei Micro Defender (PET!) [Draenei Micro Defender, item was never used]
			i(109602),	-- Echo of Murmur [TEMP ITEM & SPELL] (PET!) [Summons Terrible Turnip]
			i(118600),	-- Forest Sproutling (PET!) [Forest Sproutling, item was never used]
			i(119466),	-- Ikky (PET!) [Ikky, item was never used]
			i(119147),	-- Nether Ray Fry (PET!) [Nether Ray Fry, item was never used]
			i(115469),	-- Pet Template (PET!) [Summons Meadowstomper Calf]
			i(119112),	-- Son of Sethe (PET!) [Son of Sethe, item was never used]
		})),

		-- 6.1.0
		expansion(EXPANSION.WOD, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_6_1_0 } }, {
			-- Trainer Pets --
			pet(1647),	-- Bones (PET!)
			pet(1653),	-- Brisby (PET!)
			pet(1644),	-- Carl (PET!)
			pet(1641),	-- Dusty (PET!)
			pet(1646),	-- Enbi'see (PET!)
			pet(1652),	-- Jenner (PET!)
			pet(1645),	-- Mal (PET!)
			pet(1637),	-- Moon (PET!)
			pet(1643),	-- Mouthy (PET!)
			pet(1654),	-- Nicodemus (PET!)
			pet(1651),	-- Prince Charming (PET!)
			pet(1649),	-- Runts (PET!)
			pet(1642),	-- Salad (PET!)
			pet(1640),	-- Spores (PET!)
			pet(1648),	-- Sprouts (PET!)
		})),

		-- 6.2.0
		expansion(EXPANSION.WOD, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_6_2_0 } }, {
			-- Trainer Pets --
			pet(1681),	-- Bleakclaw (PET!)
			pet(1674),	-- Chaos Pup (PET!)
			pet(1673),	-- Corrupted Thundertail (PET!)
			pet(1675),	-- Cursed Spirit (PET!)
			pet(1680),	-- Dark Gazer (PET!)
			pet(1686),	-- Defiled Earth (PET!)
			pet(1678),	-- Direflame (PET!)
			pet(1683),	-- Dreadwalker (PET!)
			pet(1676),	-- Felfly (PET!)
			pet(1671),	-- Felsworn Sentry (PET!)
			pet(1679),	-- Mirecroak (PET!)
			pet(1684),	-- Netherfist (PET!)
			pet(1685),	-- Skrillix (PET!)
			pet(1677),	-- Tainted Maulclaw (PET!)
			pet(1682),	-- Vile Blood of Draenor (PET!)
		})),
	}),
	expansion(EXPANSION.LEGION, {
		-- 7.0.3
		expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
			-- Trainer Pets --
			pet(1893),	-- Allured Tadpole (PET!)
			pet(1860),	-- Ancient Catacomb Spider (PET!)
			pet(1866),	-- Baby Bjorn (PET!)
			pet(1771),	-- Baeloth (PET!)
			pet(1788),	-- Beaky (PET!)
			pet(1857),	-- Beauty (PET!)
			pet(1883),	-- Blottis (PET!)
			pet(1897),	-- Breezy Book (PET!)
			pet(1851),	-- Cackling Flame (PET!)
			pet(1861),	-- Catacomb Bat (PET!)
			pet(1862),	-- Catacomb Snake (PET!)
			pet(1882),	-- Chromadon (PET!)
			pet(1782),	-- Clamps (PET!)
			pet(1796),	-- Coach (PET!)
			pet(1894),	-- Confused Tadpole (PET!)
			pet(1858),	-- Conviction (PET!)
			pet(1869),	-- Crawdead (PET!)
			pet(1899),	-- Delicate Moth (PET!)
			pet(1852),	-- Devouring Blaze (PET!)
			pet(1859),	-- Dignity (PET!)
			pet(1875),	-- Dinner (PET!)
			pet(1793),	-- Egcellent (PET!)
			pet(1865),	-- Essence of Mana (PET!)
			pet(1877),	-- Eye of Inquisition (PET!)
			pet(1878),	-- Eye of Interrogation (PET!)
			pet(1879),	-- Eye of Impetration (PET!)
			pet(1792),	-- Fethyr (PET!)
			pet(1863),	-- Font of Mana (PET!)
			pet(1905),	-- Foof (PET!)
			pet(1846),	-- Globs (PET!)
			pet(1870),	-- Gnaw (PET!)
			pet(1797),	-- Greatest Foe (PET!)
			pet(1799),	-- Grommet (PET!)
			pet(1798),	-- Gulp (PET!)
			pet(1873),	-- Gusteau (PET!)
			pet(1871),	-- Harbinger of Dark (PET!)
			pet(1815),	-- Heliosus (PET!)
			pet(1898),	-- Helpful Spirit (PET!)
			pet(1872),	-- Herald of Light (PET!)
			pet(1843),	-- Hungry Icefang (PET!)
			pet(1895),	-- Hungry Owl (PET!)
			pet(1896),	-- Hungry Rat (PET!)
			pet(1800),	-- Itchy (PET!)
			pet(1748),	-- Jinx (PET!)
			pet(1780),	-- Kiazor the Destroyer (PET!)
			pet(1790),	-- Lil' Spirit Guide (PET!)
			pet(1906),	-- Lil' Sizzle (PET!)
			pet(1881),	-- Lil'idan (PET!)
			pet(1853),	-- Living Coals (PET!)
			pet(1745),	-- Marshmallow (PET!)
			pet(1742),	-- Master Tamer Flummox (PET!)
			pet(1816),	-- Mini Magmatron (PET!)
			pet(1817),	-- Mini Arcanotron (PET!)
			pet(1818),	-- Mini Electron (PET!)
			pet(1867),	-- Mini Musken (PET!)
			pet(1868),	-- Mist Wraith (PET!)
			pet(1848),	-- Nightmare Sprout (PET!)
			pet(1791),	-- Quillino (PET!)
			pet(1794),	-- Red Wire (PET!)
			pet(1874),	-- Remy (PET!)
			pet(1746),	-- Rocket (PET!)
			pet(1842),	-- Rocklick (PET!)
			pet(1811),	-- Rocko (PET!)
			pet(1787),	-- Roots (PET!)
			pet(1801),	-- Salty Bird (PET!)
			pet(1781),	-- Scuttles (PET!)
			pet(1864),	-- Seed of Mana (PET!)
			pet(1795),	-- Sir Murkeston (PET!)
			pet(1841),	-- Slow Moe (PET!)
			pet(1840),	-- Snot (PET!)
			pet(1519),	-- Snowfang (PET!)
			pet(1855),	-- Splint Jr. (PET!)
			pet(1880),	-- Stitches Jr. Jr. (PET!)
			pet(1904),	-- Stumpers (PET!)
			pet(1892),	-- Subjugated Tadpole (PET!)
			pet(1789),	-- Sunny (PET!)
			pet(1849),	-- The Maw (PET!)
			pet(1850),	-- Thistleleaf Bully (PET!)
			pet(1770),	-- Thrugtusk (PET!)
			pet(1847),	-- Trixy (PET!)
			pet(1891),	-- Vinu (PET!)
			pet(1772),	-- Wumpas (PET!)
			-- With SpeciesID Attached
			i(136907, {	-- Black Piglet (PET!)
				["displayID"] = 65670,
			}),
			i(136906, {	-- Brown Piglet (PET!)
				["displayID"] = 65669,
			}),
			-- Without SpeciesID Attached
			i(136897),	-- Northern Hawk Owl (PET!) [Northern Hawk Owl, item was never used]
			i(136913),	-- Red Broodling (PET!) [Squirky, item was never used]
			i(136902),	-- Toxic Whelpling (PET!) [Vicious Broodling, item was never used]
			i(136921),	-- Trigger (PET!) [Trigger, item was never used]
			i(131737),	-- Wyrmy Tunkins (PET!) [Wyrmy Tunkins, item was never used]
			i(130145),	-- Unknown (PET!)
		})),

		-- 7.1.0
		expansion(EXPANSION.LEGION, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_1_0 } }, {
			-- Trainer Pets --
			pet(1982),	-- Buzz (PET!)
			pet(1983),	-- Cherry (PET!)
			pet(1971),	-- Comet (PET!)
			pet(1973),	-- Constellatius (PET!)
			pet(1972),	-- Cosmos (PET!)
			pet(1981),	-- Swoop (PET!)
			-- Without SpeciesID Attached
			i(141316),	-- Odd Murloc Egg (PET!) [Squirky, item was never used]
		})),

		-- 7.2.0
		expansion(EXPANSION.LEGION, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_2_0 } }, {
			-- Trainer Pets --
			pet(1996),	-- Budding Everliving Spore (PET!)
			pet(1988),	-- Deviate Chomper (PET!)
			pet(1987),	-- Deviate Flapper (PET!)
			pet(1989),	-- Deviate Smallclaw (PET!)
			pet(1992),	-- Dreadcoil (PET!)
			pet(2008),	-- Fido (PET!)
			pet(2010),	-- Flickering Fel (PET!)
			pet(1995),	-- Growing Ectoplasm (PET!)
			pet(1994),	-- Hiss (PET!)
			pet(2011),	-- Imply (PET!)
			pet(2014),	-- Living Pool (PET!)
			pet(1993),	-- Phyxia (PET!)
			pet(2016),	-- Rock Lobster (PET!)
			pet(2012),	-- Rover (PET!)
			pet(2013),	-- Seduction (PET!)
			pet(2009),	-- Seer's Eye (PET!)
			pet(1990),	-- Son of Skum (PET!)
			pet(2015),	-- Tia Mia and Larry (PET!)
			pet(1991),	-- Vilefang (PET!)
			-- Only SpeciesID
			pet(2046, {	-- Arne's Test Pet (PET!)
				["displayID"] = 70068,
			}),
		})),

		-- 7.2.5
		expansion(EXPANSION.LEGION, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_7_2_5 } }, {
			-- Trainer Pets --
			pet(2033),	-- "Captain" Klutz (PET!)
			pet(2027),	-- Angry Geode (PET!)
			pet(2032),	-- Cookie's Leftovers (PET!)
			pet(2039),	-- Deadmines Parrot (PET!)
			pet(2038),	-- Deadmines Rat (PET!)
			pet(2031),	-- Foe Reaper 50 (PET!)
			pet(2040),	-- Ironclad Crab (PET!)
			pet(2025),	-- Klutz's Battle Bird (PET!)
			pet(2024),	-- Klutz's Battle Monkey (PET!)
			pet(2026),	-- Klutz's Battle Rat (PET!)
			pet(2028),	-- Mining Monkey (PET!)
			pet(2023),	-- Unfortunate Defias (PET!)
			-- Only SpeciesID
			pet(2061, {	-- Test Dragon Pet (PET!)
				["displayID"] = 90413,
			}),
		})),

		-- 7.3.0
		expansion(EXPANSION.LEGION, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_3_0 } }, {
			-- Trainer Pets --
			pet(2097),	-- Baneglow (PET!)
			pet(2108),	-- Bloat (PET!)
			pet(2101),	-- Bucky (PET!)
			pet(2066),	-- Clamp (PET!)
			pet(2068),	-- Corporal Hammer (PET!)
			pet(2105),	-- Corrupted Blood of Argus (PET!)
			pet(2099),	-- Deathscreech (PET!)
			pet(2109),	-- Earseeker (PET!)
			pet(2096),	-- Foulclaw (PET!)
			pet(2103),	-- Gloamwing (PET!)
			pet(2100),	-- Gnasher (PET!)
			pet(2067),	-- M-37 (PET!)
			pet(2106),	-- Mar'cuus (PET!)
			pet(2111),	-- Minixis (PET!)
			pet(2110),	-- One-of-Many (PET!)
			pet(2112),	-- Pilfer (PET!)
			pet(2098),	-- Retch (PET!)
			pet(2095),	-- Ruinhoof (PET!)
			pet(2104),	-- Shadeflicker (PET!)
			pet(2102),	-- Snozz (PET!)
			pet(2107),	-- Watcher (PET!)
			-- Only SpeciesID
			pet(2048, {	-- Golden Retriever (PET!)
				["displayID"] = 76046,
			}),
		})),
	}),
	expansion(EXPANSION.BFA, {
		-- 8.0.1
		expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
			-- Trainer Pets --
			pet(2204),	-- "Fixed" Remote Control Rocket Chicken (PET!)
			pet(2203),	-- "Repaired" Portable Fire Starter (PET!)
			pet(2205),	-- "Upgraded" Nightmare Weaver (PET!)
			pet(2209),	-- Atherton (PET!)
			pet(2212),	-- Azerite Elemental (PET!)
			pet(2211),	-- Azerite Geode (PET!)
			pet(2210),	-- Azerite Slime (PET!)
			pet(2349),	-- Baa'l (PET!)
			pet(2350),	-- Baa'l (PET!)
			pet(2359),	-- Beets (PET!)
			pet(2145),	-- Bloodfeaster Larva (PET!)
			pet(2337),	-- Bloodtusk (PET!)
			pet(2370),	-- Breaker (PET!)
			pet(2200),	-- Bristlespine (PET!)
			pet(2344),	-- Brite (PET!)
			pet(2228),	-- Bruce (PET!)
			pet(2213),	-- Bumble B. (PET!)
			pet(2333),	-- Burly Jr. (PET!)
			pet(2215),	-- Busy B. (PET!)
			pet(2345),	-- Buzzbeak (PET!)
			pet(2206),	-- Bybee (PET!)
			pet(2230),	-- Chitara (PET!)
			pet(2229),	-- Chum (PET!)
			pet(2355),	-- Clubber (PET!)
			pet(2164),	-- Colonel Shucks (PET!)
			pet(2221),	-- Corrupted Slime (PET!)
			pet(2220),	-- Dead Deckhand Leonard (PET!)
			pet(2338),	-- Delta (PET!)
			pet(2364),	-- Eighty Eight (PET!)
			pet(2341),	-- Feathers (PET!)
			pet(2214),	-- Fris B. (PET!)
			pet(2233),	-- Fungus (PET!)
			pet(2367),	-- Jammer (PET!)
			pet(2208),	-- Jennings (PET!)
			pet(2360),	-- Lazy (PET!)
			pet(2223),	-- Lesser Charged Gale (PET!)
			pet(2225),	-- Lesser Twisted Current (PET!)
			pet(2334),	-- Lilly (PET!)
			pet(2340),	-- Little Blue (PET!)
			pet(2227),	-- Maws Jr. (PET!)
			pet(2347),	-- Milo (PET!)
			pet(2226),	-- Mind Warper (PET!)
			pet(2335),	-- Molaze (PET!)
			pet(2232),	-- Murray (PET!)
			pet(2231),	-- Old Blue (PET!)
			pet(2332),	-- Pokey (PET!)
			pet(2357),	-- Rawly (PET!)
			pet(2222),	-- Reanimated Kraken Tentacle (PET!)
			pet(2368),	-- Scales (PET!)
			pet(2339),	-- Scars (PET!)
			pet(2195),	-- Shelby (PET!)
			pet(2194),	-- Sheldon (PET!)
			pet(2193),	-- Shelly (PET!)
			pet(2363),	-- Skeeto (PET!)
			pet(2356),	-- Spineleaf (PET!)
			pet(2343),	-- Splat (PET!)
			pet(2361),	-- Spokes (PET!)
			pet(2353),	-- Squeezer (PET!)
			pet(2354),	-- Squirt (PET!)
			pet(2371),	-- Stickers (PET!)
			pet(2358),	-- Stinger (PET!)
			pet(2336),	-- Ticker (PET!)
			pet(2346),	-- Tikka (PET!)
			pet(2330),	-- Timbo (PET!)
			pet(2365),	-- Turbo (PET!)
			pet(2366),	-- Whiplash (PET!)
			-- Only SpeciesID
			pet(2076, {	-- SpeedyNumberIII (PET!)
				["displayID"] = 304,
			}),
			-- With SpeciesID Attached
			i(162686, {	-- REUSE \\ Demon Goat (PET!)
				["displayID"] = 80456,
			}),
			-- Without SpeciesID Attached
			i(163553, {	-- Digitized Assistant (PET!)
				-- ["displayID"] = ,
			}),
			i(163554, {	-- Finicky Gauntlet (PET!)
				-- ["displayID"] = ,
			}),
			i(163557, {	-- Gigan Tarantula (PET!)
				-- ["displayID"] = ,
			}),
			i(154703, {	-- Hot Air Baloon (PET!)
				-- ["displayID"] = ,
			}),
			i(163556, {	-- Mechanized Gulper (PET!)
				-- ["displayID"] = ,
			}),
			i(163559, {	-- Queen Cobra (PET!)
				-- ["displayID"] = ,
			}),
			i(152879, {	-- REUSE ME (PET!)
				-- ["displayID"] = ,
			}),
			i(152880, {	-- REUSE ME (PET!)
				-- ["displayID"] = ,
			}),
		})),

		-- 8.1.0
		expansion(EXPANSION.BFA, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_0 } }, {
			-- Trainer Pets --
			pet(2500),	-- Accelerated Defrosting Unit (PET!)
			pet(2490),	-- Automated Drilling Machine (PET!)
			pet(2487),	-- Automated Spider Tank (PET!)
			pet(2489),	-- Autonomous Omni Chopper (PET!)
			pet(2495),	-- Bloated Leper Rat (PET!)
			pet(2486),	-- Cockroach (PET!)
			pet(2498),	-- Freeze Ray Robot Prototype (PET!)
			pet(2494),	-- Gnomeregan Guard Mechanostrider (PET!)
			pet(2493),	-- Gnomeregan Guard Tiger (PET!)
			pet(2492),	-- Gnomeregan Guard Wolf (PET!)
			pet(2496),	-- Gnomish Rocket Chicken (PET!)
			pet(2485),	-- Leper Rat (PET!)
			pet(2502),	-- Living Napalm (PET!)
			pet(2504),	-- Living Permafrost (PET!)
			pet(2503),	-- Living Sludge (PET!)
			pet(2501),	-- Prototype Annoy-O-Tron (PET!)
			pet(2488),	-- Pulverizer Bot Mk 6001 (PET!)
			pet(2499),	-- Sludge Disposal Unit (PET!)
			pet(2497),	-- Ultra Safe Napalm Carrier (PET!)
			-- Only SpeciesID
			pet(2481, {	-- Unknown (PET!)
				-- ["displayID"] = ,
			}),
			-- With SpeciesID Attached
			i(164629, {	-- Test Pet (PET!)
				["displayID"] = 38484,
			}),
			-- Without SpeciesID Attached
			i(166791),	-- Corlain Falcon (PET!) [Item was never used]
		})),

		-- 8.1.5
		expansion(EXPANSION.BFA, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_5 } }, {
			-- With SpeciesID Attached
			i(154902, {	-- Perculia's Peculiar Parrot (PET!)
				["displayID"] = 58823,
			}),
		})),

		-- 8.2.0
		expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
			-- Trainer Pets --
			pet(2609),	-- Belchling (PET!)
			pet(2592),	-- Blackmane (PET!)
			pet(2724),	-- Chomp (PET!)
			pet(2739),	-- CK-9 Micro-Oppression Unit (PET!)
			pet(2738),	-- Creakclank (PET!)
			pet(2597),	-- Crypt Fiend (PET!)
			pet(2595),	-- Diseased Rat (PET!)
			pet(2728),	-- Elderspawn of Nalaada (PET!)
			pet(2733),	-- Frenzied Knifefang (PET!)
			pet(2601),	-- Gargy (PET!)
			pet(2734),	-- Giant Opaline Conch (PET!)
			pet(2735),	-- Gnomefeaster (PET!)
			pet(2737),	-- Goldenbot XD (PET!)
			pet(2602),	-- Huncher (PET!)
			pet(2770),	-- Infectus (PET!)
			pet(2731),	-- Kelpstone (PET!)
			pet(2774),	-- Lefty (PET!)
			pet(2612),	-- Liz the Tormentor (PET!)
			pet(2596),	-- Lost Soul (PET!)
			pet(2730),	-- Mindshackle (PET!)
			pet(2613),	-- Nefarious Terry (PET!)
			pet(2727),	-- Pearlhusk Crawler (PET!)
			pet(2594),	-- Plague Rat (PET!)
			pet(2593),	-- Plague Roach (PET!)
			pet(2606),	-- Plague Whelp (PET!)
			pet(2771),	-- Plagued Mailemental (PET!)
			pet(2723),	-- Prince Wiggletail (PET!)
			pet(2769),	-- Pyro (PET!)
			pet(2729),	-- Ravenous Scalespawn (PET!)
			pet(2751),	-- Risen Guard (PET!)
			pet(2752),	-- Risen Noble (PET!)
			pet(2605),	-- Risen Villager (PET!)
			pet(2598),	-- Rotting Scavenger (PET!)
			pet(2726),	-- Shadowspike Lurker (PET!)
			pet(2725),	-- Silence (PET!)
			pet(2608),	-- Sludge Belcher (PET!)
			pet(2768),	-- Smokey (PET!)
			pet(2772),	-- Soul Collector (PET!)
			pet(2736),	-- Sputtertube (PET!)
			pet(2603),	-- Tommy the Cruel (PET!)
			pet(2611),	-- Tormented Spirit (PET!)
			pet(2741),	-- Unit 6 (PET!)
			pet(2742),	-- Unit 17 (PET!)
			pet(2740),	-- Unit 35 (PET!)
			pet(2732),	-- Voltgorger (PET!)
			pet(2599),	-- Wailing Haunt (PET!)
			pet(2600),	-- Wandering Phantasm (PET!)
			pet(2607),	-- Zasz the Tiny (PET!)
			-- Without SpeciesID Attached
			i(169195, {	-- Golden Cricket (PET!)
				["displayID"] = 88784,
			}),
		})),

		-- 8.3.0
		expansion(EXPANSION.BFA, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_3_0 } }, {
			-- Trainer Pets --
			pet(2799),	-- Alpha (PET!)
			pet(2856),	-- Aqir Sandcrawler (PET!)
			pet(2860),	-- Baruk Stone Defender (PET!)
			pet(2800),	-- Beta (PET!)
			pet(2857),	-- Blotto (PET!)
			pet(2801),	-- Bomber (PET!)
			pet(2822),	-- Char (PET!)
			pet(2807),	-- Crushface (PET!)
			pet(2808),	-- Fozling (PET!)
			pet(2804),	-- Frill (PET!)
			pet(2811),	-- Fury (PET!)
			pet(2814),	-- Gigacharged Mayhem Maker (PET!)
			pet(2812),	-- Glitzy (PET!)
			pet(2858),	-- K'tiny the Mad (PET!)
			pet(2816),	-- Liz (PET!)
			pet(2802),	-- Logic (PET!)
			pet(2803),	-- Math (PET!)
			pet(2819),	-- Ninn Jah (PET!)
			pet(2810),	-- Presto (PET!)
			pet(2817),	-- Ralf (PET!)
			pet(2815),	-- Rampage (PET!)
			pet(2854),	-- Retinus the Seeker (PET!)
			pet(2805),	-- Ruddy (PET!)
			pet(2820),	-- Shred (PET!)
			pet(2818),	-- Splint (PET!)
			pet(2823),	-- Tempton (PET!)
			pet(2859),	-- Tormentius (PET!)
			pet(2809),	-- Tremors (PET!)
			pet(2861),	-- Vil'thik Hatchling (PET!)
			pet(2806),	-- Wanderer (PET!)
			pet(2855),	-- Whispers (PET!)
			pet(2821),	-- Wilbur (PET!)
			-- Only SpeciesID
			pet(2871, {	-- Pet Training Dummy (PET!)
				["displayID"] = 3019,
			}),
		})),
	}),
	expansion(EXPANSION.SL, {
		-- 9.0.1
		expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
			-- Trainer Pets --
			pet(2989),	-- Ash (PET!)
			pet(2975),	-- Battery (PET!)
			pet(2980),	-- Bloog (PET!)
			pet(2981),	-- Bone Crusher (PET!)
			pet(2992),	-- Boneclaw (PET!)
			pet(3005),	-- Brite (PET!)
			pet(2982),	-- Chipper (PET!)
			pet(3002),	-- Duster (PET!)
			pet(2990),	-- Fang (PET!)
			pet(2887),	-- Flipper (PET!)
			pet(2974),	-- Glitterwing (PET!)
			pet(2971),	-- Golden Grazer (PET!)
			pet(2978),	-- Gorgemouth (PET!)
			pet(2968),	-- Jawbone (PET!)
			pet(2983),	-- Leftovers (PET!)
			pet(2984),	-- Leftovers (PET!)
			pet(2985),	-- Leftovers (PET!)
			pet(3004),	-- Needlenose (PET!)
			pet(2998),	-- Nightfang (PET!)
			pet(2970),	-- Plains Peachick (PET!)
			pet(2977),	-- Pounder (PET!)
			pet(2999),	-- Rascal (PET!)
			pet(2994),	-- Rocko (PET!)
			pet(3001),	-- Runehoof (PET!)
			pet(2979),	-- Scorch (PET!)
			pet(2972),	-- Shelby (PET!)
			pet(2976),	-- Slasher (PET!)
			pet(3000),	-- Slugger (PET!)
			pet(2886),	-- Snipper (PET!)
			pet(2993),	-- Spindler (PET!)
			pet(3003),	-- Star Tail (PET!)
			pet(2987),	-- Stinkdust (PET!)
			pet(2969),	-- Sunset Glimmerfly (PET!)
			pet(2991),	-- Swarm (PET!)
			pet(2973),	-- Tinyhoof (PET!)
			pet(2988),	-- Trailblazer (PET!)
			pet(2885),	-- Whipper (PET!)
			pet(2986),	-- Whirly (PET!)
			pet(2996),	-- Wretch (PET!)
			-- Only SpeciesID
			pet(2951, {	-- PH Slime (PET!)
				-- ["displayID"] = ,
			}),
			-- Without SpeciesID Attached
			i(180838),	-- Blue Etherwyrm (PET!) [Wild Etherwyrm, item was never used]
			i(180837),	-- Blue Glimmerfly (PET!) [Fluttering Glimmerfly, item was never used]
			i(181259),	-- Clutch (PET!) [Wild Pet, item was never used]
			i(180632),	-- Gorm Rootstinger (PET!) [Gorm Rootstinger, item was never used]
			i(180590),	-- Lost Soul (PET!) [Wild Pet, item was never used]
			i(180860),	-- Orange Vulpin (PET!) [Copperfur Kit, item was never used]
			i(180841),	-- Olive Dragon Turtle (PET!) [Glimmerpool Hatchling, item never used]
			i(182672),	-- Misty Leaper (PET!)
			i(180840),	-- Pink Glimmerfly (PET!) [Vibrant Glimmerfly, item was never used]
			i(180861),	-- Red Vulpin (PET!) [Rustfur Kit, item was never used]
			i(180867),	-- Silver Crane (PET!) [Wader Chick, item was never used]
			i(180813),	-- Silver Teroclaw (PET!) [Fledgling Teroclaw, item was never used]
			i(183853),	-- Sinfall Screecher (PET!) [Sinfall Screecher, item was never used]
			i(184034),	-- Stony's Infused Ruby (PET!) [Stony, item was never used]
			i(183714),	-- Swamp Reed (PET!) [Withering Creeper, item was never used]
			i(180627),	-- Tranquil Wader (PET!) [Tranquil Wader, item was never used]
		})),

		-- 9.0.2
		expansion(EXPANSION.SL, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_2 } }, {
			-- Trainer Pets --
			pet(3070),	-- Briarpaw (PET!)
			pet(3071),	-- Chittermaw (PET!)
			pet(3068),	-- Crystalsnap (PET!)
			pet(3075),	-- Digallo (PET!)
			pet(3076),	-- Gelatinous (PET!)
			pet(3078),	-- Glurp (PET!)
			pet(3077),	-- Kostos (PET!)
			pet(3072),	-- Mistwing (PET!)
			pet(3073),	-- Sewer Creeper (PET!)
			pet(3074),	-- The Countess (PET!)
			-- Without SpeciesID Attached
			i(184461),	-- Clutch (PET!) [Wild Pet, item was never used]
		})),

		-- 9.1.0
		expansion(EXPANSION.SL, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_0 } }, {
			-- Trainer Pets --
			pet(3091),	-- Churro (PET!)
			pet(3155),	-- Gurgl (PET!)
			pet(3156),	-- Hornswoggl (PET!)
			pet(3158),	-- Missing1 (PET!)
			pet(3089),	-- RT-3 M15 (PET!)
			pet(3090),	-- Squibbles (PET!)
			-- Without SpeciesID Attached
			i(186545, {	-- REUSE (PET!)
				-- ["displayID"] = ,
			}),
		})),

		-- 9.1.5
		expansion(EXPANSION.SL, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_5 } }, {
			-- Only SpeciesID
			pet(3188, {	-- Trub'ul (PET!)
				["displayID"] = 103091,
			}),
			-- #if AFTER 11.2.5
			-- Without SpeciesID Attached
			i(188837, {	-- Blinky Egg (PET!)
				["displayID"] = 101380,
			}),
			-- #endif
		})),

		-- 9.2.0
		expansion(EXPANSION.SL, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_2_5 } }, {
			-- Only SpeciesID
			pet(3246, {	-- Tezpet (PET!)
				["displayID"] = 92261,
			}),
		})),
	}),
	expansion(EXPANSION.DF, {
		-- 10.0.0
		expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
			-- Trainer Pets --
			pet(3393),	-- Anubisath Idol (PET!)
			pet(3401),	-- Arcantus (PET!)
			pet(3387),	-- Bloodbiter (PET!)
			pet(3398),	-- Cat (PET!)
			pet(3400),	-- Chicken (PET!)
			pet(3397),	-- Cockroach (PET!)
			pet(3396),	-- Enyobon (PET!)
			pet(3386),	-- Faceripper (PET!)
			pet(3377),	-- Gwosh (PET!)
			pet(3394),	-- Mechanical Pandaren Dragonling (PET!)
			pet(3391),	-- Phantus (PET!)
			pet(3392),	-- Skritches (PET!)
			pet(3395),	-- Spectral Tiger Cub (PET!)
			pet(3402),	-- Stormamu (PET!)
			pet(3268),	-- Swog (PET!)
			pet(3388),	-- Tina (PET!)
			-- Only SpeciesID
			pet(3339, {	-- Black Dragon Whelp (PET!)
				["name"] = "Black Dragon Whelp",
				["displayID"] = 107459,
			}),
			pet(3340, {	-- Blue Dragon Whelp (PET!)
				["name"] = "Blue Dragon Whelp",
				["displayID"] = 107460,
			}),
			pet(3343, {	-- Bronze Dragon Whelp (PET!)
				["name"] = "Bronze Dragon Whelp",
				["displayID"] = 107461,
			}),
			pet(3341, {	-- Red Dragon Whelp (PET!)
				["name"] = "Red Dragon Whelp",
				["displayID"] = 107464,
			}),
			pet(3364, {	-- Striped Snakebiter (PET!)
				["displayID"] = 107830,
			}),
			pet(3257, {	-- Test Beetle (PET!)
				["displayID"] = 100375,
			}),
			pet(3308, {	-- Time-Lost Duckling (PET!)
				["displayID"] = 106641,
			}),
			pet(3363, {	-- Truesilver Crab (PET!)
				["displayID"] = 107827,
			}),
			-- With SpeciesID Attached
			i(193614, {	-- Groundshaker (PET!)
				["displayID"] = 106649,
			}),
			i(193380, {	-- Pink Salamanther (PET!)
				["displayID"] = 106629,
			}),
			i(193587, {	-- Time-Lost Duck (PET!)
				["displayID"] = 106635,
			}),
			i(193620, {	-- Time-Lost Slyvern (PET!)
				["displayID"] = 106661,
			}),
			i(193068, {	-- Time-Lost Treeflitter (PET!)
				["displayID"] = 106606,
			}),
			-- Without SpeciesID Attached
			i(191126, {	-- Obsidian Whelpling (PET!)
				["displayID"] = 107454,
			}),
			i(192050, {	-- zzOld - [PH] Black Baby Fox Wyvern [REUSE] (PET!)
				-- ["displayID"] = ,
			}),
			i(193863, {	-- zzOld - [PH] Dark Baby Vorquin (REUSE) (PET!)
				-- ["displayID"] = ,
			}),
			i(193063, {	-- zzOld - [PH] Dark Shaggy Rabbit (REUSE) (PET!)
				-- ["displayID"] = ,
			}),
			i(193862, {	-- zzOld - [PH] Pale Baby Vorquin (REUSE) (PET!)
				-- ["displayID"] = ,
			}),
			i(191929, {	-- zzOld - [PH] White Flying Squirrel (REUSE) (PET!)
				-- ["displayID"] = ,
			}),
		})),

		-- 10.0.5
		expansion(EXPANSION.DF, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_5 } }, {
			-- With SpeciesID Attached
			i(190173, {	-- Lil' Maka'jin (PET!)
				["displayID"] = 83638,
			}),
		})),

		-- 10.0.7
		expansion(EXPANSION.DF, patch(0,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_7 } }, {
			-- Trainer Pets --
			pet(3453),	-- Adinakon (PET!)
			pet(3457),	-- Arctichnid (PET!)
			pet(3460),	-- Blu'jaeden (PET!)
			pet(3474),	-- Celastro (PET!)
			pet(3473),	-- Cozmos (PET!)
			pet(3456),	-- Drakeula (PET!)
			pet(3452),	-- Enchanted Tuskling (PET!)
			pet(3465),	-- Enok the Stinky (PET!)
			pet(3450),	-- Feral Frogduck (PET!)
			pet(3432),	-- Flow (PET!)
			pet(3436),	-- Flow (PET!)
			pet(3440),	-- Flow (PET!)
			pet(3458),	-- Kazzquack (PET!)
			pet(3472),	-- Lil' Algalon (PET!)
			pet(3451),	-- Lord Flappinsby (PET!)
			pet(3454),	-- Lyver (PET!)
			pet(3466),	-- Malfunctioning Matrix (PET!)
			pet(3459),	-- Mothoroth (PET!)
			pet(3441),	-- Storm-Touched Ohuna (PET!)
			pet(3442),	-- Storm-Touched Skitterer (PET!)
			pet(3443),	-- Storm-Touched Slyvern (PET!)
			pet(3444),	-- Storm-Touched Swoglet (PET!)
			pet(3430),	-- Tremblor (PET!)
			pet(3434),	-- Tremblor (PET!)
			pet(3438),	-- Tremblor (PET!)
			pet(3429),	-- Vortex (PET!)
			pet(3433),	-- Vortex (PET!)
			pet(3437),	-- Vortex (PET!)
			pet(3431),	-- Wildfire (PET!)
			pet(3435),	-- Wildfire (PET!)
			pet(3439),	-- Wildfire (PET!)
			pet(3455),	-- Yu'shor (PET!)
			-- Only SpeciesID
			pet(3424, {	-- [DNT] Storm Pet Boss - Epic (PET!)
				["displayID"] = 106894,
			}),
			pet(3422, {	-- [DNT] Storm Pet Boss - Legendary (PET!)
				["displayID"] = 106894,
			}),
			pet(3425, {	-- [DNT] Storm Pet Boss - Rare (PET!)
				["displayID"] = 106894,
			}),
			pet(3423, {	-- [DNT] Storm Pet Fodder (PET!)
				["displayID"] = 106894,
			}),
			pet(3471, {	-- Gilded Mechafrog (PET!)
				["name"] = "Gilded Mechafrog",
				["displayID"] = 111667,
			}),
		})),

		-- 10.1.0
		expansion(EXPANSION.DF, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_0 } }, {
			-- Trainer Pets --
			pet(3560),	-- Bassalt (PET!)
			pet(3566),	-- Beeks (PET!)
			pet(3571),	-- Brul'dan (PET!)
			pet(3559),	-- Clawz (PET!)
			pet(3568),	-- Dustie (PET!)
			pet(3565),	-- Fethres (PET!)
			pet(3572),	-- Lifft (PET!)
			pet(3558),	-- Murrey (PET!)
			pet(3570),	-- Swoggy (PET!)
			pet(3573),	-- Swole (PET!)
			pet(3567),	-- Talons (PET!)
			pet(3569),	-- Tempe (PET!)
			-- With SpeciesID Attached
			i(205004, {	-- Azure Swoglet (PET!)
				["displayID"] = 112144,
			}),
			i(205054, {	-- Amador (PET!)
				["displayID"] = 112171,
			}),
			i(205011, {	-- Bronze Swoglet (PET!)
				["displayID"] = 112148,
			}),
			i(205008, {	-- Emerald Swoglet (PET!)
				["displayID"] = 112145,
			}),
			i(205018, {	-- Jade Skitterbug (PET!)
				["displayID"] = 112155,
			}),
			i(205116, {	-- Jerrie (PET!)
				["displayID"] = 112173,
			}),
			i(205166, {	-- Kromos (PET!)
				["displayID"] = 112205,
			}),
			i(205149, {	-- Ravenous Shalewing (PET!)
				["displayID"] = 112187,
			}),
			i(205122, {	-- Roseshell (PET!)
				["displayID"] = 112179,
			}),
			i(205053, {	-- Rusty (PET!)
				["displayID"] = 112170,
			}),
			i(205023, {	-- Savage Lobstrok (PET!)
				["displayID"] = 112158,
			}),
			i(205164, {	-- Senega (PET!)
				["displayID"] = 112203,
			}),
			i(205150, {	-- Shalewing Devourer (PET!)
				["displayID"] = 112188,
			}),
			i(205035, {	-- Snapjaw Lurker (PET!)
				["displayID"] = 112163,
			}),
			i(205037, {	-- Void Lurker (PET!)
				["displayID"] = 112164,
			}),
			-- Without SpeciesID Attached
			i(205032, {	-- Bestial Lurker (PET!)
				["displayID"] = 112162,
			}),
			i(205153, {	-- Mikah (PET!)
				["displayID"] = 112190,
			}),
			i(205157, {	-- Undermoth (PET!)
				["displayID"] = 112196,
			}),
		})),

		-- 10.1.5
		expansion(EXPANSION.DF, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_5 } }, {
			-- Trainer Pets --
			pet(3587),	-- Lifelike Mechanical Duckling (PET!)
			pet(3608),	-- Lifelike Mechanical Turtle (PET!)
			pet(3609),	-- Sporeflower (PET!)
			pet(3975),	-- Midnight Terrorwing (PET!)
			pet(4237),	-- Treanthony (PET!)
		})),

		-- 10.2.7
		expansion(EXPANSION.DF, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_7 } }, {
			-- With SpeciesID Attached
			i(223499, {	-- Lil' Manny (PET!)
				["displayID"] = 119700,
			}),
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.0.0
		expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
			-- Only itemID
			i(220163),	-- [PH] Cinder Bee
			-- Only SpeciesID
			pet(4478, {	-- Caustic Oozeling (PET!)
				["displayID"] = 116616,
			}),
			pet(4528, {	-- Cobalt Mosswool (PET!)
				["displayID"] = 119068,
			}),
			pet(4583, {	-- Green Stagshell (PET!)
				["displayID"] = 119768,
			}),
			pet(4502, {	-- Kaheti Bull Worm (PET!)
				["displayID"] = 119693,
			}),
			pet(4493, {	-- Redthroat Skipling (PET!)
				["displayID"] = 114830,
			}),
			pet(4509, {	-- Sporbit [Blue] (PET!)
				["displayID"] = 115403,
			}),
			pet(4505, {	-- Sporbit [Orange] (PET!)
				["displayID"] = 115406,
			}),
			pet(4504, {	-- Sporbit [Red] (PET!)
				["displayID"] = 115408,
			}),
			pet(4503, {	-- Sporbit [Teal] (PET!)
				["displayID"] = 115409,
			}),
			-- #if BEFORE 12.0.0
			pet(4508, {	-- Sporbit [Yellow] (PET!)
				["displayID"] = 115404,
			}),
			-- #endif
			pet(4584, {	-- Tan Stagshell (PET!)
				["displayID"] = 119769,
			}),
			-- With SpeciesID Attached
			i(222969, {	-- Anub'Rekyute (PET!)
				["displayID"] = 114049,
			}),
			i(221764, {	-- Burntram (PET!)
				["displayID"] = 103840,
			}),
			i(222979, {	-- Clay Stonecharger (PET!)
				["displayID"] = 120663,
			}),
			i(221762, {	-- Frenzied Bloodtick (PET!)
				["displayID"] = 82290,
			}),
			i(221195, {	-- Illskitter (PET!)
				["displayID"] = 116507,
			}),
			i(221759, {	-- Sceaduthax (PET!)
				["displayID"] = 114510,
			}),
			i(221495, {	-- Waddles (PET!)
				["displayID"] = 114829,
			}),
			-- Without SpeciesID Attached
			i(221493, {	-- Admiral (PET!)
				["displayID"] = 114830,
			}),
			i(223803, {	-- Blue Stagshell (PET!)
				["displayID"] = 119767,
			}),
			i(221022, {	-- Cowboy Bee[DNT] (PET!)
				["displayID"] = 119745,
			}),
			i(223626, {	-- Embersting (PET!)
				["displayID"] = 119715,
			}),
			i(228097, {	-- Pinkskin Burrower (PET!)
				["displayID"] = 119707,
			}),
			i(228098, {	-- Troglofrog (PET!)
				["displayID"] = 103831,
			}),
			i(222975, {	-- Umbral Amalgam [DNT] (PET!)
				["displayID"] = 118749,
			}),
			i(228096, {	-- Vibrant Firefly (PET!)
				["displayID"] = 119705,
			}),
		})),

		-- 11.0.2
		expansion(EXPANSION.TWW, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_2 } }, {
			-- Trainer Pets --
			pet(4561),	-- Awakened Custodian (PET!)
			pet(4554),	-- Bubs (PET!)
			pet(4559),	-- Flicker (PET!)
			pet(4558),	-- Four-Legs (PET!)
			pet(4562),	-- Guttergunk (PET!)
			pet(4488),	-- Haywire Servobot (PET!)
			pet(4552),	-- Mini Airship (PET!)
			pet(4551),	-- Ridge (PET!)
			pet(4564),	-- Rufus (PET!)
			pet(4555),	-- Sir Pounce (PET!)
			pet(4550),	-- Stratus (PET!)
			pet(4557),	-- Swoopgrasp (PET!)
			pet(4553),	-- Takey-Take (PET!)
			pet(4556),	-- Tickler (PET!)
			pet(4549),	-- Tiny Cragling (PET!)
			pet(4560),	-- Zaedu (PET!)
		})),

		-- 11.0.7
		expansion(EXPANSION.TWW, patch(0,7), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_7 } }, {
			-- Only SpeciesID
			pet(4725, {	-- Titan Orb (PET!)
				["displayID"] = 124606,
			}),
			-- With SpeciesID Attached
			i(234905, {	-- Mech-Friend Maya (PET!)
				["displayID"] = 125160,
			}),
			i(233057, {	-- Rock Hound Mica (PET!)
				["displayID"] = 124374,
			}),
			-- Without SpeciesID Attached
			i(235988, {	-- Parley (PET!)
				["displayID"] = 124174,
			}),
		})),

		-- 11.1.0
		expansion(EXPANSION.TWW, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_0 } }, {
			-- Trainer Pets --
			pet(4741),	-- Cannoneer (PET!)
			pet(4739),	-- Fancier Rat (PET!)
			pet(4740),	-- Handbag Hyena (PET!)
			pet(4742),	-- Lookout (PET!)
			pet(4744),	-- Muddy Croach (PET!)
			pet(4737),	-- Precision Powerdrill (PET!)
			pet(4745),	-- Rusty Croach (PET!)
			pet(4746),	-- Sooty Croach (PET!)
			pet(4738),	-- Status Symbol (PET!)
			pet(4743),	-- Swabbie (PET!)
			-- Only SpeciesID
			pet(4676, {	-- Bawkinator 2000 (PET!)
				["displayID"] = 75333,
			}),
			pet(4677, {	-- Black Cave Crab (PET!)
				["displayID"] = 120695,
			}),
			pet(4671, {	-- Cauldrone (PET!)
				["displayID"] = 47711,
			}),
			pet(4673, {	-- Crunchy (PET!)
				["displayID"] = 54848,
			}),
			pet(4674, {	-- Dosh (PET!)
				["displayID"] = 123032,
			}),
			pet(4672, {	-- Finnity (PET!)
				["displayID"] = 74800,
			}),
			pet(4675, {	-- FO-MO Mark II (PET!)
				["displayID"] = 111667,
			}),
			pet(4670, {	-- Hermes
				["displayID"] = 120709,
			}),
			pet(4665, {	-- Yellow Tropical Frog (PET!)
				["displayID"] = 122963,
			}),
			-- With SpeciesID Attached
			i(235909, {	-- Gleam (PET!)
				["displayID"] = 89251,
			}),
			i(232854, {	-- Grinner (PET!)
				["displayID"] = 121850,
			}),
		})),

		-- 11.1.5
		expansion(EXPANSION.TWW, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_5 } }, {
			-- Only SpeciesID
			pet(4761, {	-- Pascal the Wonder Pup (PET!)
				["displayID"] = 126779,
			}),
			pet(4792, {	-- Ada the Sweetest (PET!)
				["displayID"] = 70068,
			}),
		})),

		-- 11.2.0
		expansion(EXPANSION.TWW, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_2_0 } }, {
			-- With SpeciesID Attached
			i(246723, {	-- Unfazed Diver (PET!)
				["displayID"] = 98508,
			}),
			-- Only SpeciesID
			pet(4824, {	-- Baby Karesh Fox - Orange (PET!)
				["displayID"] = 124240,
			}),
			pet(4837, {	-- Worm, Cosmic - Critter (Red) (PET!)
				["displayID"] = 128503,
			}),
		})),

		-- 11.2.5
		expansion(EXPANSION.TWW, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_11_2_5 } }, {
			-- With SpeciesID Attached
			i(252199, {	-- Festive Eve
				["displayID"] = 137218,
			}),
			i(252194, {	-- Fishmonger May
				["displayID"] = 137213,
			}),
			i(252195, {	-- Fishstick Keith
				["displayID"] = 137215,
			}),
			i(252137, {	-- Lil' Chompers
				["displayID"] = 137193,
			}),
			i(252193, {	-- Slippery Saul
				["displayID"] = 137201,
			}),
		})),
	}),
}));
