---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------

root(ROOTS.HiddenAchievementTriggers, {
	-- Note!! Here is where we can put all the hidden Achievement triggers in the game that don't exactly fit anywhere.
	-- When adding a Achievement trigger be sure to put a description of how it triggered
	-- #if ANYCLASSIC
	expansion(EXPANSION.CLASSIC, {
		--1.14.1.40666
		-- #if ANYCLASSIC
		-- #if AFTER 3.0.1
		ach(15329),	-- Has Died
		-- #endif
		-- #endif
		--1.14.1.40688
		-- #if ANYCLASSIC
		-- #if AFTER 3.0.1
		applyclassicphase(SOM_PHASE_ONE, ach(15330)),	-- Survivor of the Firelord (Season of Mastery) \\ Survivor of the Firelord \\ Survivor of the Flames
		-- #endif
		-- #endif
		-- #if ANYCLASSIC
		-- #if AFTER 3.0.1
		applyclassicphase(SOM_PHASE_ONE, ach(15332)),	-- [DNT] Survivor (Season of Mastery) (hidden) \\ Survivor
		-- #endif
		-- #endif
		--1.14.1.40800
		-- #if ANYCLASSIC
		-- #if AFTER 3.0.1
		applyclassicphase(SOM_PHASE_ONE, ach(15333)),	-- Survivor of the Shadow Flame (Season of Mastery) \\ Survivor of the Shadow Flame
		applyclassicphase(SOM_PHASE_ONE, ach(15334)),	-- Survivor of the Old God (Season of Mastery) \\ Survivor of the Old God
		applyclassicphase(SOM_PHASE_ONE, ach(15335)),	-- Survivor of the Damned (Season of Mastery) \\ Survivor of the Damned
		-- #endif
		-- #endif
		--1.14.2.42597
		-- #if ANYCLASSIC
		-- #if AFTER 3.0.1
		ach(15578),	-- <Hidden> Adventure Awaits - Hit 60 with Buff Adventure Awaits
		-- #endif
		-- #endif
		--1.14.3.42770
		-- #if ANYCLASSIC
		-- #if AFTER 3.0.1
		applyclassicphase(SOM_PHASE_ONE, ach(15637)),	-- The Immortal (Season of Mastery) \\ The Immortal
		-- #endif
		-- #endif
		--1.15.1.53009
		-- #if ANYCLASSIC
		ach(19563),	-- Unbroken Self-Found Soul
		ach(20129),	-- [DNT] Discoverer's Delight - Reach Level 25 in Phase 2 (hidden)
		ach(20130),	-- [DNT] Discoverer's Delight - Reach Level 40 in Phase 3 (hidden)
		ach(20131),	-- [DNT] Discoverer's Delight - Reach Level 50 in Phase 4 (hidden)
		ach(20132),	-- [DNT] Discoverer's Delight - Reach Level 60 in Phase 5 (hidden)
		ach(20133),	-- [DNT] Self-Found Soul (Level 1)
		ach(20134),	-- [DNT] Self-Found Soul (Level 10)
		ach(20135),	-- [DNT] Self-Found Soul (Level 20)
		ach(20136),	-- [DNT] Self-Found Soul (Level 30)
		ach(20137),	-- [DNT] Self-Found Soul (Level 40)
		ach(20138),	-- [DNT] Self-Found Soul (Level 50)
		ach(20139),	-- [DNT] Self-Found Soul (Level 60)
		ach(20193),	-- [DNT] Self-Found Soul (Removed Self-Found)
		-- #endif
		--1.15.2.53941
		-- #if ANYCLASSIC
		ach(40131),	-- [DNT] Discoverer's Delight - Reach Level 40 in Phase 3 - Update (hidden)
		ach(40132),	-- [DNT] Discoverer's Delight - Reach Level 50 in Phase 3 (hidden)
		ach(40133),	-- [DNT] Discoverer's Delight - Reach Level 40 in Phase 3.5 - Update (hidden)
		ach(40135),	-- [DNT] Discoverer's Delight - Reach Level 50 in Phase 3.5 (hidden)
		ach(40137),	-- [DNT] Discoverer's Delight - Reach Level 50 in Phase 4 - Update (hidden)
		-- #endif
		--1.15.4.56573
		-- #if ANYCLASSIC
		ach(41008),	-- Rune Learned - Shared Acquisition - Illari Duskfeather (40)
		ach(41009),	-- Rune Learned - Shared Acquisition - Dark Riders (40)
		ach(41010),	-- Rune Learned - Shared Acquisition - Ley Lines (50)
		ach(41011),	-- Rune Learned - Shared Acquisition - Wild Gods (50)
		-- #endif
	}),
	-- #endif
	-- #if ANYCLASSIC
	expansion(EXPANSION.TBC, {
		--2.5.1.39399
		-- #if ANYCLASSIC
		-- #if AFTER 3.0.1
		ach(15019),	-- Gladiator: Season 1
		ach(15020),	-- Duelist: Season 1
		ach(15021),	-- Rival: Season 1
		ach(15022),	-- Challenger: Season 1
		ach(15018),	-- Infernal Gladiator
		ach(15198),	-- [DNT] BCC Arena Tournament - Vanquisher Title
		-- #endif
		-- #endif
		--2.5.2.39570
		-- #if ANYCLASSIC
		-- #if AFTER 3.0.1
		ach(15199),	-- Gladiator: Season 2
		ach(15200),	-- Gladiator: Season 4
		ach(15201),	-- Duelist: Season 4
		ach(15202),	-- Rival: Season 4
		ach(15203),	-- Challenger: Season 4
		ach(15204),	-- Gladiator: Season 3
		ach(15205),	-- Duelist: Season 3
		ach(15206),	-- Rival: Season 3
		ach(15207),	-- Challenger: Season 3
		ach(15208),	-- Duelist: Season 2
		ach(15209),	-- Rival: Season 2
		ach(15210),	-- Challenger: Season 2
		-- #endif
		-- #endif
		--2.5.4.44833
		-- #if ANYCLASSIC
		-- #if AFTER 3.0.1
		ach(15853),	-- <Hidden> Joyous Journeys - Hit 70 with Buff Joyous Journeys
		-- #endif
		-- #endif
	}),
	-- #endif
	expansion(EXPANSION.WRATH, {
		-- 3.0.1.8622
		ach(49),	-- Alterac Valley victories
		ach(50),	-- Eye of the Storm victories
		ach(51),	-- Arathi Basin victories
		ach(52),	-- Warsong Gulch battles
		ach(53),	-- Alterac Valley battles
		ach(54),	-- Eye of the Storm battles \\ Eye of the Storm games
		ach(55),	-- Arathi Basin battles \\ Arathi Basin games \\ Arathi Basin games [PH]
		ach(60),	-- Total deaths \\ Total Deaths: [PH]
		ach(94),	-- Quests abandoned NYI \\ Quests abandoned
		ach(95),	-- Average quests completed per day
		ach(97),	-- Daily quests completed
		ach(98),	-- Quests completed
		ach(99),	-- Ruins of Lordaeron matches
		ach(100),	-- Nagrand Arena victories \\ Ring of Trials victories
		ach(101),	-- Nagrand Arena matches \\ Ring of Trials matches
		ach(102),	-- Ruins of Lordaeron victories
		ach(103),	-- Blade's Edge Arena matches \\ Circle of Blood matches
		ach(104),	-- Blade's Edge Arena victories \\ Circle of Blood victories
		ach(105),	-- Warsong Gulch victories
		ach(107),	-- Creatures killed \\ Creature types killed \\ Enemy creatures killed
		ach(108),	-- Critters killed
		ach(110),	-- Lich King 5-player boss defeated the most \\ Lich King 5-player boss killed the most \\ Boss killed the most TBD
		ach(112),	-- Deaths from drowning
		ach(113),	-- Deaths from fatigue
		ach(114),	-- Deaths from falling
		ach(115),	-- Deaths from fire and lava
		ach(178),	-- Enchanting formulae learned \\ Enchanting formulae known
		ach(181),	-- Items disenchanted \\ Total number of items disenchanted
		ach(183),	-- Materials produced from disenchanting
		ach(281),	-- First Aid skill \\ Current alchemy skill
		ach(318),	-- Total deaths from opposite faction \\ Total times killed by opposite faction NYI \\ Total times killed by opposite faction
		ach(319),	-- Duels won
		ach(320),	-- Duels lost
		ach(326),	-- Gold from quest rewards \\ Total gold from quest rewards
		ach(328),	-- Total gold acquired
		ach(329),	-- Auctions posted \\ Total auctions posted
		ach(330),	-- Auction purchases \\ Number of auction purchases
		ach(331),	-- Most expensive bid on auction \\ Most expensive purchase from auction
		ach(332),	-- Most expensive auction sold
		ach(333),	-- Gold looted \\ Total gold looted
		ach(334),	-- Most gold ever owned
		ach(338),	-- Vanity pets owned \\ Most vanity pets owned at one time
		ach(344),	-- Bandages used
		ach(345),	-- Health potions consumed
		ach(346),	-- Beverages consumed
		ach(347),	-- Food eaten NYI \\ Food eaten
		ach(349),	-- Flight paths taken NYI \\ Flight paths taken
		ach(350),	-- Mage Portals taken
		ach(353),	-- Number of times hearthed
		ach(362),	-- 5v5 victories
		ach(363),	-- 5v5 matches
		ach(364),	-- 3v3 victories
		ach(365),	-- 3v3 matches
		ach(366),	-- 2v2 victories
		ach(367),	-- 2v2 matches
		ach(370),	-- Highest 2v2 personal rating \\ Highest 2 man personal rating
		ach(374),	-- Highest 2v2 team rating \\ Highest 2 man team rating
		ach(381),	-- World Honorable Kills \\ World NYI \\ World
		ach(382),	-- Battleground Honorable Kills \\ Battlegrounds NYI \\ Battlegrounds
		ach(383),	-- Arena Honorable Kills \\ Arena NYI \\ Arena
		ach(393),	-- Alterac Valley towers defended
		ach(394),	-- Alterac Valley towers captured
		ach(395),	-- Warsong Gulch flags captured
		ach(585),	-- Eye of the Storm flags captured \\ Eye of the Storm towers captured
		ach(586),	-- Warsong Gulch flags returned
		ach(588),	-- Total Honorable Kills
		ach(589),	-- Highest 5v5 team rating \\ Highest 5 man team rating
		ach(590),	-- Highest 3v3 team rating \\ Highest 3 man team rating
		ach(595),	-- Highest 3v3 personal rating \\ Highest 3 man personal rating
		ach(596),	-- Highest 5v5 personal rating \\ Highest 5 man personal rating
		ach(753),	-- Average gold earned per day
		ach(759),	-- Average daily quests completed per day
		ach(796),	-- Resurrected by priests
		ach(798),	-- Rebirthed by druids
		ach(799),	-- Spirit returned to body by shamans
		ach(800),	-- Redeemed by paladins
		ach(801),	-- Resurrected by soulstones \\ Resurrected by Soulstones
		ach(811),	-- Flasks consumed
		ach(812),	-- Healthstones used
		ach(837),	-- Arenas won NYI \\ Arenas won
		ach(838),	-- Arenas played NYI \\ Arenas played
		ach(839),	-- Battlegrounds played NYI \\ Battlegrounds played
		ach(840),	-- Battlegrounds won NYI \\ Battlegrounds won
		ach(919),	-- Gold earned from auctions \\ Total gold earned from auctions
		ach(921),	-- Gold from vendors \\ Total gold from vendors
		ach(922),	-- Mana potions consumed
		ach(923),	-- Elixirs consumed
		ach(932),	-- Total 5-player dungeons entered
		ach(933),	-- Total 10-player raids entered
		ach(934),	-- Total 25-player raids entered
		ach(1042),	-- Number of hugs \\ Number of characters hugged
		ach(1045),	-- Total cheers
		ach(1047),	-- Total facepalms
		ach(1065),	-- Total waves
		ach(1066),	-- Total times LOL'd
		ach(1067),	-- Total times playing world's smallest violin
		ach(1068),	-- Keli'dan the Breaker kills (The Blood Furnace)
		ach(1069),	-- Nexus-Prince Shaffar kills (Mana Tombs)
		ach(1070),	-- Epoch Hunter kills (The Escape From Durnholde)
		ach(1071),	-- Quagmirran kills (Slave Pens)
		ach(1072),	-- Black Stalker kills (Underbog)
		ach(1073),	-- Exarch Maladaar kills (Auchenai Crypts)
		ach(1074),	-- Talon King Ikiss kills (Sethekk Halls)
		ach(1075),	-- Murmur kills (Shadow Labyrinth)
		ach(1076),	-- Aeonus kills (Opening of the Dark Portal)
		ach(1077),	-- Warlord Kalithresh kills (The Steamvault)
		ach(1078),	-- Warchief Kargath Bladefist kills (The Shattered Halls)
		ach(1079),	-- Pathaleon the Calculator kills (The Mechanar)
		ach(1080),	-- Warp Splinter kills (The Botanica)
		ach(1081),	-- Harbinger Skyriss kills (The Arcatraz)
		ach(1082),	-- Kael'thas Sunstrider kills (Magister's Terrace)
		ach(1083),	-- Prince Malchezaar kills (Karazhan)
		ach(1084),	-- Zul'jin kills (Zul'Aman)
		ach(1085),	-- Gruul kills (Gruul's Lair)
		ach(1086),	-- Magtheridon kills (Magtheridon's Lair)
		ach(1087),	-- Lady Vashj kills (Serpentshrine Cavern)
		ach(1088),	-- Kael'thas Sunstrider kills (Tempest Keep)
		ach(1089),	-- Illidan Stormrage kills (The Black Temple)
		ach(1090),	-- Kil'jaeden kills (Sunwell Plateau)
		ach(1091),	-- Captain Cookie kills (Deadmines) \\ Edwin VanCleef kills (Deadmines)
		ach(1092),	-- Lord Godfrey kills (Shadowfang Keep) \\ Archmage Arugal kills (Shadowfang Keep)
		ach(1093),	-- High Inquisitor Whitemane kills (Scarlet Monastery) \\ Scarlet Commander Mograine kills (Scarlet Monastery)
		ach(1094),	-- Chief Ukorz Sandscalp kills (Zul'Farrak)
		ach(1095),	-- Emperor Dagran Thaurissan kills (Blackrock Depths)
		ach(1096),	-- General Drakkisath kills (Upper Blackrock Spire) \\ General Drakkisath kills (Blackrock Spire)
		ach(1097),	-- Rivendare kills (Stratholme) \\ Baron Rivendare kills (Stratholme)
		ach(1098),	-- Onyxia kills (Onyxia's Lair)
		ach(1099),	-- Ragnaros kills (Molten Core)
		ach(1100),	-- Nefarian kills (Blackwing Lair)
		ach(1101),	-- C'Thun kills (Temple of Ahn'Qiraj)
		ach(1102),	-- Hakkar kills (Zul'Gurub)
		ach(1103),	-- Lich King 5-player dungeons completed (final boss defeated) \\ Lich King 5-player dungeons completed (final boss killed) \\ Total 5-player dungeons completed (final boss killed) NYI \\ Total 5-player dungeons completed (final boss killed)
		ach(1104),	-- Lich King 10-player raids completed (final boss defeated) \\ Lich King 10-player raids completed (final boss killed) \\ Total 10-player raids completed (final boss killed) NYI \\ Total 10-player raids completed (final boss killed)
		ach(1109),	-- 5v5 Arena Honorable Kills \\ 5v5 Arena
		ach(1110),	-- 3v3 Arena Honorable Kills \\ 3v3 Arena
		ach(1111),	-- 2v2 Arena Honorable Kills \\ 2v2 Arena
		ach(1112),	-- Eye of the Storm Honorable Kills \\ Eye of the Storm NYI \\ Eye of the Storm
		ach(1113),	-- Alterac Valley Honorable Kills \\ Alterac Valley NYI \\ Alterac Valley
		ach(1114),	-- Arathi Basin Honorable Kills \\ Arathi Basin NYI \\ Arathi Basin
		ach(1115),	-- Warsong Gulch Honorable Kills \\ Warsong Gulch NYI \\ Warsong Gulch
		ach(1125),	-- Bandage used most
		ach(1146),	-- Gold spent on travel \\ Total gold spent on travel
		ach(1147),	-- Gold spent at barber shops \\ Total gold spent at barber shops
		ach(1148),	-- Gold spent on postage \\ Total gold spent on postage
		-- 3.0.1.8874
		ach(1197),	-- Total kills
		ach(1198),	-- Total kills that grant experience or honor
		ach(1199),	-- Professions learned \\ Number of professions learned NYI
		ach(1200),	-- Secondary skills at maximum skill \\ Number of secondary skills at maximum skill NYI
		ach(1201),	-- Professions at maximum skill \\ Number of professions at maximum skill NYI
		ach(1229),	-- Revived by druids \\ Revived by druids NYI
		ach(1231),	-- Keristrasza kills (The Nexus)
		ach(1232),	-- Anub'arak kills (Azjol-Nerub)
		ach(1233),	-- Herald Volazj kills (Ahn'kahet: The Old Kingdom)
		ach(1234),	-- The Prophet Tharon'ja kills (Drak'Tharon Keep)
		ach(1235),	-- Cyanigosa kills (The Violet Hold)
		ach(1236),	-- Gal'darah kills (Gundrak)
		ach(1237),	-- Sjonnir the Ironshaper kills (Halls of Stone)
		ach(1238),	-- Loken kills (Halls of Lightning)
		ach(1239),	-- Ley-Guardian Eregos kills (The Oculus)
		ach(1240),	-- King Ymiron kills (Utgarde Pinnacle)
		ach(1241),	-- Mal'Ganis defeated (Caverns of Time: Stratholme) \\ Mal'Ganis kills (Caverns of Time: Stratholme)
		ach(1242),	-- Ingvar the Plunderer kills (Utgarde Keep)
		ach(1298),	-- Different bandage types used
		ach(1299),	-- Health potion used most
		ach(1300),	-- Different health potions used
		ach(1301),	-- Mana potion used most
		ach(1302),	-- Different mana potions used
		ach(1303),	-- Elixir consumed most \\ Elixir consumed the most
		ach(1304),	-- Different elixirs used
		ach(1305),	-- Flask consumed most \\ Flask consumed the most
		ach(1306),	-- Different flasks consumed
		ach(1336),	-- Creature type killed the most
		ach(1337),	-- Different creature types killed
		ach(1339),	-- Mage portal taken most
		ach(1361),	-- Anub'Rekhan kills (Naxxramas 10 player)
		ach(1362),	-- Grand Widow Faerlina kills (Naxxramas 10 player)
		ach(1363),	-- Maexxna kills (Naxxramas 10 player)
		ach(1364),	-- Patchwerk kills (Naxxramas 10 player)
		ach(1365),	-- Noth the Plaguebringer kills (Naxxramas 10 player)
		ach(1366),	-- Gothik the Harvester kills (Naxxramas 10 player)
		ach(1367),	-- Patchwerk kills (Naxxramas 25 player)
		ach(1368),	-- Anub'Rekhan kills (Naxxramas 25 player)
		ach(1369),	-- Heigan the Unclean kills (Naxxramas 10 player)
		ach(1370),	-- Loatheb kills (Naxxramas 10 player)
		ach(1371),	-- Grobbulus kills (Naxxramas 10 player)
		ach(1372),	-- Gluth kills (Naxxramas 10 player)
		ach(1373),	-- Thaddius kills (Naxxramas 10 player)
		ach(1374),	-- Instructor Razuvious kills (Naxxramas 10 player) \\ Instructor Raxuvious kills (Naxxramas 10 player)
		ach(1375),	-- Four Horsemen kills (Naxxramas 10 player) \\ Highlord Mograine kills (Naxxramas 10 player)
		ach(1376),	-- Sapphiron kills (Naxxramas 10 player)
		ach(1377),	-- Kel'Thuzad kills (Naxxramas 10 player)
		ach(1378),	-- Gluth kills (Naxxramas 25 player)
		ach(1379),	-- Gothik the Harvester kills (Naxxramas 25 player)
		ach(1380),	-- Grand Widow Faerlina kills (Naxxramas 25 player)
		ach(1381),	-- Grobbulus kills (Naxxramas 25 player)
		ach(1382),	-- Heigan the Unclean kills (Naxxramas 25 player)
		ach(1383),	-- Four Horsemen kills (Naxxramas 25 player) \\ Highlord Mograine kills (Naxxramas 25 player)
		ach(1384),	-- Instructor Razuvious kills (Naxxramas 25 player) \\ Instructor Raxuvious kills (Naxxramas 25 player)
		ach(1385),	-- Loatheb kills (Naxxramas 25 player)
		ach(1386),	-- Maexxna kills (Naxxramas 25 player)
		ach(1387),	-- Noth the Plaguebringer kills (Naxxramas 25 player)
		ach(1388),	-- Thaddius kills (Naxxramas 25 player)
		ach(1389),	-- Sapphiron kills (Naxxramas 25 player)
		ach(1390),	-- Kel'Thuzad kills (Naxxramas 25 player)
		ach(1391),	-- Malygos kills (10 player)
		ach(1392),	-- Sartharion kills (Chamber of the Aspects 10 player) \\ Sartharion the Onyx Guardian kills (Chamber of the Aspects 10 player)
		ach(1393),	-- Sartharion kills (Chamber of the Aspects 25 player) \\ Sartharion the Onyx Guardian kills (Chamber of the Aspects 25 player)
		ach(1394),	-- Malygos kills (25 player)
		-- 3.1.0.9767
		ach(1456),	-- Fish and other things caught
		ach(1462),	-- Badges of Justice acquired
		ach(1464),	-- Emblems of Heroism acquired
		ach(1465),	-- Emblems of Valor acquired
		ach(1467),	-- Lich King 5-player bosses defeated \\ Lich King 5-player bosses killed
		ach(1486),	-- Strand of the Ancients Honorable Kills
		ach(1487),	-- Total Killing Blows
		ach(1488),	-- World Killing Blows
		ach(1490),	-- Arena Killing Blows
		ach(1491),	-- Battleground Killing Blows
		ach(1492),	-- 2v2 Arena Killing Blows
		ach(1493),	-- 3v3 Arena Killing Blows
		ach(1494),	-- 5v5 Arena Killing Blows
		ach(1495),	-- Alterac Valley Killing Blows
		ach(1496),	-- Arathi Basin Killing Blows
		ach(1497),	-- Warsong Gulch Killing Blows
		ach(1498),	-- Eye of the Storm Killing Blows
		ach(1499),	-- Strand of the Ancients Killing Blows
		ach(1501),	-- Total deaths from other players
		ach(1504),	-- Ingvar the Plunderer kills (Heroic Utgarde Keep)
		ach(1505),	-- Keristrasza kills (Heroic Nexus)
		ach(1506),	-- Anub'arak kills (Heroic Azjol-Nerub)
		ach(1507),	-- Herald Volazj kills (Heroic Ahn'kahet)
		ach(1508),	-- The Prophet Tharon'ja kills (Heroic Drak'Tharon Keep)
		ach(1509),	-- Cyanigosa kills (Heroic Violet Hold)
		ach(1510),	-- Gal'darah kills (Heroic Gundrak)
		ach(1511),	-- Sjonnir the Ironshaper kills (Heroic Halls of Stone)
		ach(1512),	-- Loken kills (Heroic Halls of Lightning)
		ach(1513),	-- Ley-Guardian Eregos kills (Heroic Oculus)
		ach(1514),	-- King Ymiron kills (Heroic Utgarde Pinnacle)
		ach(1515),	-- Mal'Ganis defeated (Heroic CoT: Stratholme)
		ach(1518),	-- Fish caught
		ach(1519),	-- Fishing skill
		ach(1524),	-- Cooking skill
		ach(1525),	-- Cooking daily quests completed
		ach(1526),	-- Fishing daily quests completed
		ach(1527),	-- Highest Alchemy skill
		ach(1532),	-- Highest Blacksmithing skill
		ach(1535),	-- Highest Enchanting skill
		ach(1536),	-- Highest Leatherworking skill
		ach(1537),	-- Highest Mining skill
		ach(1538),	-- Highest Herbalism skill
		ach(1539),	-- Highest Inscription skill
		ach(1540),	-- Highest Jewelcrafting skill
		ach(1541),	-- Highest Skinning skill
		ach(1542),	-- Highest Tailoring skill
		ach(1544),	-- Highest Engineering skill
		ach(1545),	-- Ring of Valor matches
		ach(1546),	-- Ring of Valor victories
		ach(1547),	-- Dalaran Sewers matches
		ach(1548),	-- Dalaran Sewers victories
		ach(1549),	-- Strand of the Ancients battles
		ach(1550),	-- Strand of the Ancients victories
		ach(1729),	-- Alchemy Recipes learned
		ach(1730),	-- Blacksmithing Plans learned
		ach(1734),	-- Engineering Schematics learned
		ach(1735),	-- Inscriptions learned
		ach(1738),	-- Jewelcrafting Designs learned
		ach(1740),	-- Leatherworking Patterns learned
		ach(1741),	-- Tailoring Patterns learned
		ach(1745),	-- Cooking Recipes known
		ach(1748),	-- First Aid Manuals learned
		ach(1753),	-- Archavon the Stone Watcher kills (Wintergrasp 10 player)
		ach(1754),	-- Archavon the Stone Watcher kills (Wintergrasp 25 player)
		ach(1756),	-- Lich King 25-player bosses defeated \\ Lich King 25-player bosses killed
		ach(1760),	-- Lich King 25-player boss defeated the most \\ Lich King 25-player boss killed the most
		ach(1768),	-- Lich King 25-player raids completed (final boss defeated) \\ Lich King 25-player raids completed (final boss killed)
		ach(1770),	-- Lich King 10-player bosses defeated \\ Lich King 10-player bosses killed
		ach(1772),	-- Lich King 10-player boss defeated the most \\ Lich King 10-player boss killed the most
		ach(1773),	-- Beverage consumed most
		ach(1774),	-- Different beverages consumed
		ach(1775),	-- Different foods eaten
		ach(1776),	-- Food eaten most
		ach(1976),	-- Dalaran Cooking Awards gained
		ach(1977),	-- Dalaran Jewelcrafter's Tokens gained
		ach(2277),	-- Summons accepted
		ach(2596),	-- Mr. Bigglesworth kills
		ach(2856),	-- Flame Leviathan kills (Ulduar 10 player)
		ach(2857),	-- Razorscale kills (Ulduar 10 player)
		ach(2858),	-- Ignis the Furnace Master kills (Ulduar 10 player)
		ach(2859),	-- XT-002 Deconstructor kills (Ulduar 10 player)
		ach(2860),	-- Assembly of Iron kills (Ulduar 10 player)
		ach(2861),	-- Kologarn kills (Ulduar 10 player)
		ach(2862),	-- Hodir victories (Ulduar 10 player)
		ach(2863),	-- Thorim victories (Ulduar 10 player)
		ach(2864),	-- Freya victories (Ulduar 10 player)
		ach(2865),	-- Mimiron victories (Ulduar 10 player)
		ach(2866),	-- General Vezax kills (Ulduar 10 player)
		ach(2867),	-- Algalon the Observer kills (Ulduar 10 player)
		ach(2868),	-- Auriaya kills (Ulduar 10 player)
		ach(2869),	-- Yogg-Saron kills (Ulduar 10 player)
		ach(2870),	-- Emalon the Storm Watcher kills (Wintergrasp 10 player)
		ach(2872),	-- Flame Leviathan kills (Ulduar 25 player)
		ach(2873),	-- Razorscale kills (Ulduar 25 player)
		ach(2874),	-- Ignis the Furnace Master kills (Ulduar 25 player)
		ach(2875),	-- Kologarn kills (Ulduar 25 player)
		ach(2879),	-- Mimiron victories (Ulduar 25 player)
		ach(2880),	-- General Vezax kills (Ulduar 25 player)
		ach(2881),	-- Algalon the Observer kills (Ulduar 25 player)
		ach(2882),	-- Auriaya kills (Ulduar 25 player)
		ach(2883),	-- Yogg-Saron kills (Ulduar 25 player)
		ach(2884),	-- XT-002 Deconstructor kills (Ulduar 25 player)
		ach(2885),	-- Assembly of Iron kills (Ulduar 25 player)
		ach(3018),	-- Emblems of Conquest acquired
		ach(3216),	-- Smelting Recipes learned
		ach(3236),	-- Emalon the Storm Watcher kills (Wintergrasp 25 player)
		ach(3256),	-- Hodir victories (Ulduar 25 player)
		ach(3257),	-- Thorim victories (Ulduar 25 player)
		ach(3258),	-- Freya victories (Ulduar 25 player)
		-- 3.3.5.12340
		ach(4018),	-- Victories over Hunter Champion (Trial of the Champion)
		ach(4019),	-- Victories over Hunter Champion (Heroic Trial of the Champion)
		ach(4022),	-- Victories over Argent Confessor Paletress (Trial of the Champion)
		ach(4023),	-- Victories over Argent Confessor Paletress (Heroic Trial of the Champion)
		ach(4024),	-- Victories over Eadric the Pure (Trial of the Champion)
		ach(4025),	-- Victories over Eadric the Pure (Heroic Trial of the Champion)
		ach(4026),	-- The Black Knight kills (Trial of the Champion)
		ach(4027),	-- The Black Knight kills (Heroic Trial of the Champion)
		ach(4028),	-- Victories over the Beasts of Northrend (Trial of the Crusader 10 player)
		ach(4029),	-- Victories over the Beasts of Northrend (Trial of the Grand Crusader 25 player)
		ach(4030),	-- Victories over the Beasts of Northrend (Trial of the Grand Crusader 10 player)
		ach(4031),	-- Victories over the Beasts of Northrend (Trial of the Crusader 25 player)
		ach(4032),	-- Lord Jaraxxus kills (Trial of the Crusader 10 player)
		ach(4033),	-- Lord Jaraxxus kills (Trial of the Grand Crusader 10 player)
		ach(4034),	-- Lord Jaraxxus kills (Trial of the Crusader 25 player)
		ach(4035),	-- Lord Jaraxxus kills (Trial of the Grand Crusader 25 player)
		ach(4036),	-- Victories over the Faction Champions (Trial of the Crusader 10 player)
		ach(4037),	-- Victories over the Faction Champions (Trial of the Grand Crusader 10 player)
		ach(4038),	-- Victories over the Faction Champions (Trial of the Crusader 25 player)
		ach(4039),	-- Victories over the Faction Champions (Trial of the Grand Crusader 25 player)
		ach(4040),	-- Val'kyr Twins kills (Trial of the Crusader 10 player)
		ach(4041),	-- Val'kyr Twins kills (Trial of the Grand Crusader 10 player)
		ach(4042),	-- Val'kyr Twins kills (Trial of the Crusader 25 player)
		ach(4043),	-- Val'kyr Twins kills (Trial of the Grand Crusader 25 player)
		ach(4044),	-- Times completed the Trial of the Crusader (10 player)
		ach(4045),	-- Times completed the Trial of the Grand Crusader (10 player)
		ach(4046),	-- Times completed the Trial of the Crusader (25 player)
		ach(4047),	-- Times completed the Trial of the Grand Crusader (25 player)
		ach(4048),	-- Victories over Mage Champion (Trial of the Champion)
		ach(4049),	-- Victories over Mage Champion (Heroic Trial of the Champion)
		ach(4050),	-- Victories over Rogue Champion (Trial of the Champion)
		ach(4051),	-- Victories over Rogue Champion (Heroic Trial of the Champion)
		ach(4052),	-- Victories over Shaman Champion (Trial of the Champion)
		ach(4053),	-- Victories over Shaman Champion (Heroic Trial of the Champion)
		ach(4054),	-- Victories over Warrior Champion (Trial of the Champion)
		ach(4055),	-- Victories over Warrior Champion (Heroic Trial of the Champion)
		ach(4074),	-- Koralon the Flame Watcher kills (Wintergrasp 10 player)
		ach(4075),	-- Koralon the Flame Watcher kills (Wintergrasp 25 player)
		ach(4096),	-- Isle of Conquest battles
		ach(4097),	-- Isle of Conquest victories
		ach(4456),	-- Lich King random Normal dungeons completed \\ Random Lich King (normal) dungeons completed
		ach(4556),	-- Lich King random Heroic dungeons completed \\ Random Lich King (heroic) dungeons completed
		ach(4639),	-- Lord Marrowgar kills (Icecrown 10 player)
		ach(4640),	-- Lord Marrowgar kills (Heroic Icecrown 10 player)
		ach(4641),	-- Lord Marrowgar kills (Icecrown 25 player)
		ach(4642),	-- Lord Marrowgar kills (Heroic Icecrown 25 player)
		ach(4643),	-- Lady Deathwhisper kills (Icecrown 10 player)
		ach(4644),	-- Gunship Battle victories (Icecrown 10 player)
		ach(4645),	-- Deathbringer kills (Icecrown 10 player)
		ach(4646),	-- Festergut kills (Icecrown 10 player)
		ach(4647),	-- Rotface kills (Icecrown 10 player)
		ach(4648),	-- Blood Prince Council kills (Icecrown 10 player)
		ach(4649),	-- Valithria Dreamwalker rescues (Icecrown 10 player)
		ach(4650),	-- Professor Putricide kills (Icecrown 10 player)
		ach(4651),	-- Blood Queen Lana'thel kills (Icecrown 10 player)
		ach(4652),	-- Sindragosa kills (Icecrown 10 player)
		ach(4653),	-- Victories over the Lich King (Icecrown 10 player)
		ach(4654),	-- Lady Deathwhisper kills (Heroic Icecrown 10 player)
		ach(4655),	-- Lady Deathwhisper kills (Icecrown 25 player)
		ach(4656),	-- Lady Deathwhisper kills (Heroic Icecrown 25 player)
		ach(4657),	-- Toravon the Ice Watcher kills (Wintergrasp 10 player)
		ach(4658),	-- Toravon the Ice Watcher kills (Wintergrasp 25 player)
		ach(4659),	-- Gunship Battle victories (Heroic Icecrown 10 player)
		ach(4660),	-- Gunship Battle victories (Icecrown 25 player)
		ach(4661),	-- Gunship Battle victories (Heroic Icecrown 25 player)
		ach(4662),	-- Deathbringer kills (Heroic Icecrown 10 player)
		ach(4663),	-- Deathbringer kills (Icecrown 25 player)
		ach(4664),	-- Deathbringer kills (Heroic Icecrown 25 player)
		ach(4665),	-- Festergut kills (Heroic Icecrown 10 player)
		ach(4666),	-- Festergut kills (Icecrown 25 player)
		ach(4667),	-- Festergut kills (Heroic Icecrown 25 player)
		ach(4668),	-- Rotface kills (Heroic Icecrown 10 player)
		ach(4669),	-- Rotface kills (Icecrown 25 player)
		ach(4670),	-- Rotface kills (Heroic Icecrown 25 player)
		ach(4671),	-- Blood Prince Council kills (Heroic Icecrown 10 player)
		ach(4672),	-- Blood Prince Council kills (Icecrown 25 player)
		ach(4673),	-- Blood Prince Council kills (Heroic Icecrown 25 player)
		ach(4674),	-- Valithria Dreamwalker rescues (Heroic Icecrown 10 player)
		ach(4675),	-- Valithria Dreamwalker rescues (Icecrown 25 player)
		ach(4676),	-- Valithria Dreamwalker rescues (Heroic Icecrown 25 player)
		ach(4677),	-- Professor Putricide kills (Heroic Icecrown 10 player)
		ach(4678),	-- Professor Putricide kills (Icecrown 25 player)
		ach(4679),	-- Professor Putricide kills (Heroic Icecrown 25 player)
		ach(4680),	-- Blood Queen Lana'thel kills (Heroic Icecrown 10 player)
		ach(4681),	-- Blood Queen Lana'thel kills (Icecrown 25 player)
		ach(4682),	-- Blood Queen Lana'thel kills (Heroic Icecrown 25 player)
		ach(4683),	-- Sindragosa kills (Icecrown 25 player)
		ach(4684),	-- Sindragosa kills (Heroic Icecrown 10 player)
		ach(4685),	-- Sindragosa kills (Heroic Icecrown 25 player)
		ach(4686),	-- Victories over the Lich King (Heroic Icecrown 10 player)
		ach(4687),	-- Victories over the Lich King (Icecrown 25 player)
		ach(4688),	-- Victories over the Lich King (Heroic Icecrown 25 player)
		ach(4713),	-- Bronjahm kills (Forge of Souls)
		ach(4714),	-- Bronjahm kills (Heroic Forge of Souls)
		ach(4715),	-- Devourer of Souls kills (Forge of Souls)
		ach(4716),	-- Devourer of Souls kills (Heroic Forge of Souls)
		ach(4717),	-- Forgemaster Garfrost kills (Pit of Saron)
		ach(4718),	-- Ick and Krick kills (Pit of Saron)
		ach(4719),	-- Ick and Krick kills (Heroic Pit of Saron)
		ach(4720),	-- Scourgelord Tyrannus kills (Pit of Saron)
		ach(4721),	-- Scourgelord Tyrannus kills (Heroic Pit of Saron)
		ach(4722),	-- Falric kills (Halls of Reflection)
		ach(4723),	-- Falric kills (Heroic Halls of Reflection)
		ach(4724),	-- Marwyn kills (Halls of Reflection)
		ach(4725),	-- Marwyn kills (Heroic Halls of Reflection)
		ach(4726),	-- Lich King escapes (Halls of Reflection)
		ach(4727),	-- Lich King escapes (Heroic Halls of Reflection)
		ach(4728),	-- Forgemaster Garfrost kills (Heroic Pit of Saron)
		ach(4729),	-- Emblems of Triumph acquired
		ach(4730),	-- Emblems of Frost acquired
		ach(4777),	-- Isle of Conquest Killing Blows
		ach(4779),	-- Isle of Conquest Honorable Kills
		ach(4820),	-- Halion kills (Ruby Sanctum 25 player)
		ach(4821),	-- Halion kills (Ruby Sanctum 10 player)
		ach(4822),	-- Halion kills (Heroic Ruby Sanctum 10 player)
		ach(4823),	-- Halion kills (Heroic Ruby Sanctum 25 player)
		--3.4.0.46158
		-- #if ANYCLASSIC
		-- #if AFTER 3.0.1
		ach(16313),	-- Rival: Season 5
		ach(16314),	-- Gladiator: Season 5
		ach(16315),	-- Duelist: Season 5
		ach(16316),	-- Challenger: Season 5
		ach(16397),	-- [DNT] Heirloom Tracking - Bloodied Arcanite Reaper (Hidden)
		ach(16437),	-- [DNT] Soul of Iron Tracker (Season of Mastery) (hidden)
		-- #endif
		-- #endif
		--3.4.1.47966
		-- #if ANYCLASSIC
		-- #if AFTER 3.0.1
		ach(17328),	-- [DNT] Joyous Journeys - Hit 80 with Buff Joyous Journeys (hidden)
		-- #endif
		-- #endif
		--3.4.2.49311
		-- #if ANYCLASSIC
		-- #if AFTER 3.0.1
		ach(17415),	-- Rival: Season 6
		ach(17416),	-- Gladiator: Season 6
		ach(17417),	-- Duelist: Season 6
		ach(17418),	-- Challenger: Season 6
		ach(18375),	-- [DNT] Joyous Journeys - Hit 80 with Buff Joyous Journeys (hidden)
		ach(18376),	-- [DNT] Joyous Journeys - Hit 80 with Buff Joyous Journeys (hidden)
		-- #endif
		-- #endif
		--3.4.2.49658
		-- #if ANYCLASSIC
		-- #if AFTER 3.0.1
		ach(18544),	-- Rival: Season 7
		ach(18545),	-- Gladiator: Season 7
		ach(18546),	-- Duelist: Season 7
		ach(18547),	-- Challenger: Season 7
		ach(18548),	-- Rival: Season 8
		ach(18549),	-- Duelist: Season 8
		ach(18550),	-- Challenger: Season 8
		ach(18551),	-- Gladiator: Season 8
		-- #endif
		-- #endif
		--3.4.3.55417
		-- #if ANYCLASSIC
		-- #if AFTER 3.0.1
		ach(40821),	-- Successfully Stress Test CN Realms
		ach(40841),	-- [DNT] Joyous Journeys - Hit 80 with Buff Joyous Journeys (hidden) (copy)
		-- #endif
		-- #endif
	}),
	expansion(EXPANSION.CATA, {
		ach(5232),	-- Twin Peaks battles
		ach(5233),	-- Twin Peaks victories
		ach(5234),	-- Twin Peaks flags captured
		ach(5235),	-- Twin Peaks flags returned
		ach(5236),	-- Battle for Gilneas battles
		ach(5237),	-- Battle for Gilneas victories
		ach(5553),	-- Halfus Wyrmbreaker Heroic kills (Bastion of Twilight)
		ach(5554),	-- Halfus Wyrmbreaker kills (Bastion of Twilight)
		ach(5555),	-- Magmaw kills (Blackwing Descent)
		ach(5556),	-- Magmaw Heroic kills (Blackwing Descent)
		ach(5557),	-- Omnotron kills (Blackwing Descent)
		ach(5558),	-- Omnotron Heroic kills (Blackwing Descent)
		ach(5559),	-- Maloriak kills (Blackwing Descent)
		ach(5560),	-- Maloriak Heroic kills (Blackwing Descent)
		ach(5561),	-- Atramedes kills (Blackwing Descent)
		ach(5562),	-- Atramedes Heroic kills (Blackwing Descent)
		ach(5563),	-- Chimaeron Heroic kills (Blackwing Descent)
		ach(5564),	-- Chimaeron kills (Blackwing Descent)
		ach(5565),	-- Nefarian kills (Blackwing Descent)
		ach(5566),	-- Nefarian Heroic kills (Blackwing Descent)
		ach(5567),	-- Valiona and Theralion kills (Bastion of Twilight)
		ach(5568),	-- Valiona and Theralion Heroic kills (Bastion of Twilight)
		ach(5569),	-- Ascendant Council kills (Bastion of Twilight)
		ach(5570),	-- Ascendant Council Heroic kills (Bastion of Twilight)
		ach(5571),	-- Cho'gall Heroic kills (Bastion of Twilight)
		ach(5572),	-- Cho'gall kills (Bastion of Twilight)
		ach(5573),	-- Sinestra Heroic kills (Bastion of Twilight)
		ach(5574),	-- Conclave of Wind Heroic kills (Throne of the Four Winds)
		ach(5575),	-- Conclave of Wind kills (Throne of the Four Winds)
		ach(5576),	-- Al'Akir kills (Throne of the Four Winds)
		ach(5577),	-- Al'Akir Heroic kills (Throne of the Four Winds)
		ach(5578),	-- Argaloth kills (Baradin Hold)
		ach(5692),	-- Rated battlegrounds played
		ach(5693),	-- Rated battleground played the most
		ach(5694),	-- Rated battlegrounds won
		ach(5695),	-- Rated battleground won the most
		ach(5696),	-- Rated Arathi Basin battles
		ach(5697),	-- Rated Arathi Basin victories
		ach(5698),	-- Rated Battle for Gilneas battles
		ach(5699),	-- Rated Battle for Gilneas victories
		ach(5700),	-- Rated Eye of the Storm battles
		ach(5701),	-- Rated Eye of the Storm victories
		ach(5702),	-- Rated Strand of the Ancients battles
		ach(5703),	-- Rated Strand of the Ancients victories
		ach(5704),	-- Rated Twin Peaks battles
		ach(5705),	-- Rated Twin Peaks victories
		ach(5706),	-- Rated Warsong Gulch battles
		ach(5707),	-- Rated Warsong Gulch victories
		ach(5724),	-- Ascendant Lord Obsidius kills (Blackrock Caverns)
		ach(5725),	-- Ascendant Lord Obsidius kills (Heroic Blackrock Caverns)
		ach(5726),	-- Ozumat kills (Throne of the Tides)
		ach(5727),	-- Ozumat kills (Heroic Throne of the Tides)
		ach(5728),	-- High Priestess Azil kills (Stonecore)
		ach(5729),	-- High Priestess Azil kills (Heroic Stonecore)
		ach(5730),	-- Asaad kills (Vortex Pinnacle)
		ach(5731),	-- Asaad kills (Heroic Vortex Pinnacle)
		ach(5732),	-- Erudax kills (Grim Batol)
		ach(5733),	-- Erudax kills (Heroic Grim Batol)
		ach(5734),	-- Rajh kills (Halls of Origination)
		ach(5735),	-- Rajh kills (Heroic Halls of Origination)
		ach(5736),	-- Siamat kills (Lost City of the Tol'vir)
		ach(5737),	-- Siamat kills (Heroic Lost City of the Tol'vir)
		ach(5738),	-- Vanessa VanCleef kills (Heroic Deadmines)
		ach(5739),	-- Lord Godfrey kills (Heroic Shadowfang Keep)
		ach(5756),	-- Deaths to elevator boss (Blackwing Descent)
		ach(5773),	-- Daakara kills (Heroic Zul'Aman)
		ach(5774),	-- Jin'do kills (Heroic Zul'Gurub)
		ach(5795),	-- Twin Peaks Honorable Kills
		ach(5796),	-- The Battle for Gilneas Honorable Kills
		ach(5797),	-- Twin Peaks Killing Blows
		ach(5798),	-- The Battle for Gilneas Killing Blows
		ach(5964),	-- Beth'tilac kills (Firelands)
		ach(5965),	-- Beth'tilac Heroic kills (Firelands)
		ach(5966),	-- Lord Rhyolith kills (Firelands)
		ach(5967),	-- Lord Rhyolith Heroic kills (Firelands)
		ach(5968),	-- Shannox kills (Firelands)
		ach(5969),	-- Shannox Heroic kills (Firelands)
		ach(5970),	-- Alysrazor kills (Firelands)
		ach(5971),	-- Alysrazor Heroic kills (Firelands)
		ach(5972),	-- Baleroc kills (Firelands)
		ach(5973),	-- Baleroc Heroic kills (Firelands)
		ach(5974),	-- Majordomo Fandral Staghelm kills (Firelands)
		ach(5975),	-- Majordomo Fandral Staghelm Heroic kills (Firelands)
		ach(5976),	-- Ragnaros kills (Firelands)
		ach(5977),	-- Ragnaros Heroic kills (Firelands)
		ach(5981),	-- Occu'thar kills (Baradin Hold)
		ach(6135),	-- Lava Guard Gordoth kills (Ragefire Chasm) \\ Taragaman the Hungerer kills (Ragefire Chasm)
		ach(6136),	-- Mutanus the Devourer kills (Wailing Caverns)
		ach(6137),	-- Aku'mai kills (Blackfathom Deeps)
		ach(6138),	-- Hogger kills (Stormwind Stockade)
		ach(6139),	-- Charlga Razorflank kills (Razorfen Kraul)
		ach(6140),	-- Mekgineer Thermaplugg kills (Gnomeregan)
		ach(6141),	-- Amnennar the Coldbringer kills (Razorfen Downs)
		ach(6142),	-- Archaedas kills (Uldaman)
		ach(6143),	-- Princess Theradras kills (Maraudon)
		ach(6144),	-- Shade of Eranikus kills (Sunken Temple)
		ach(6145),	-- Overlord Wyrmthalak kills (Lower Blackrock Spire)
		ach(6146),	-- King Gordok kills (Dire Maul)
		ach(6147),	-- Omor the Unscarred kills (Hellfire Ramparts)
		ach(6148),	-- Archimonde kills (Battle for Mount Hyjal)
		ach(6150),	-- Murozond kills (End Time)
		ach(6151),	-- Mannoroth defeats (Well of Eternity)
		ach(6152),	-- Archbishop Benedictus kills (Hour of Twilight)
		ach(6153),	-- Morchok kills (Dragon Soul)
		ach(6154),	-- Morchok Heroic kills (Dragon Soul)
		ach(6155),	-- Warlord Zon'ozz kills (Dragon Soul)
		ach(6156),	-- Warlord Zon'ozz Heroic kills (Dragon Soul)
		ach(6157),	-- Yor'sahj the Unsleeping kills (Dragon Soul)
		ach(6158),	-- Yor'sahj the Unsleeping Heroic kills (Dragon Soul)
		ach(6159),	-- Hagara the Stormbinder kills (Dragon Soul)
		ach(6160),	-- Hagara the Stormbinder Heroic kills (Dragon Soul)
		ach(6161),	-- Ultraxion kills (Dragon Soul)
		ach(6162),	-- Ultraxion Heroic kills (Dragon Soul)
		ach(6163),	-- Warmaster Blackhorn kills (Dragon Soul)
		ach(6164),	-- Warmaster Blackhorn Heroic kills (Dragon Soul)
		ach(6165),	-- Spine of Deathwing victories (Dragon Soul)
		ach(6166),	-- Spine of Deathwing Heroic victories (Dragon Soul)
		ach(6167),	-- Deathwing kills (Dragon Soul)
		ach(6168),	-- Deathwing Heroic kills (Dragon Soul)
		ach(6170),	-- Alizabal kills (Baradin Hold)

		-- 4.4.1.56464
		-- #if ANYCLASSIC
		-- #if AFTER 4.4.1
		ach(40968),	-- Rival: Season 9
		ach(40969),	-- Gladiator: Season 9
		ach(40970),	-- Duelist: Season 9
		ach(40971),	-- Challenger: Season 9
		-- #endif
		-- #endif
		-- 4.4.1.56859
		-- #if ANYCLASSIC
		-- #if AFTER 4.4.1
		ach(41134),	-- [DNT] Joyous Journeys - Hit 85 with Buff Joyous Journeys (hidden)
		-- #endif
		-- #endif
		-- 4.4.2.58486
		-- #if ANYCLASSIC
		-- #if AFTER 4.4.2
		ach(41332),	-- Rival: Season 10
		ach(41333),	-- Duelist: Season 10
		ach(41334),	-- Challenger: Season 10
		ach(41336),	-- Gladiator: Season 10
		-- #endif
		-- #endif
	}),
	expansion(EXPANSION.MOP, {
		ach(6337),	-- Ossirian kills (Ruins of Ahn'Qiraj)
		ach(6737),	-- Silvershard Mines Honorable Kills
		ach(6738),	-- Temple of Kotmogu Honorable Kills
		ach(6775),	-- Sha of Doubt kills (Temple of the Jade Serpent)
		ach(6776),	-- Sha of Doubt kills (Heroic Temple of the Jade Serpent)
		ach(6777),	-- Yan-Zhu the Uncasked kills (Stormstout Brewery)
		ach(6778),	-- Xin the Weaponmaster kills (Mogu'shan Palace)
		ach(6779),	-- Yan-Zhu the Uncasked kills (Heroic Stormstout Brewery)
		ach(6780),	-- Xin the Weaponmaster kills (Heroic Mogu'shan Palace)
		ach(6781),	-- Taran Zhu redemptions (Shado-Pan Monastery) \\ Taran Zhu kills (Shado-Pan Monastery)
		ach(6782),	-- Taran Zhu redemptions (Heroic Shado-Pan Monastery) \\ Taran Zhu kills (Heroic Shado-Pan Monastery)
		ach(6783),	-- Raigonn kills (Heroic Gate of the Setting Sun)
		ach(6784),	-- Flameweaver Koegler kills (Heroic Scarlet Halls)
		ach(6785),	-- High Inquisitor Whitemane kills (Heroic Scarlet Monastery)
		ach(6786),	-- Flameweaver Koegler kills (Scarlet Halls)
		ach(6787),	-- Darkmaster Gandling kills (Heroic Scholomance)
		ach(6788),	-- Wing Leader Ner'onok kills (Heroic Siege of Niuzao Temple)
		ach(6789),	-- Stone Guard kills (10-player Normal Mogu'shan Vaults) \\ Stone Guard kills (Normal Mogu'shan Vaults)
		ach(6790),	-- Stone Guard kills (10-player Heroic Mogu'shan Vaults) \\ Stone Guard kills (Heroic Mogu'shan Vaults)
		ach(6791),	-- Feng the Accursed kills (10-player Normal Mogu'shan Vaults) \\ Feng the Accursed kills (Normal Mogu'shan Vaults)
		ach(6792),	-- Feng the Accursed kills (10-player Heroic Mogu'shan Vaults) \\ Feng the Accursed kills (Heroic Mogu'shan Vaults)
		ach(6793),	-- Gara'jal the Spiritbinder kills (10-player Normal Mogu'shan Vaults) \\ Gara'jal the Spiritbinder kills (Normal Mogu'shan Vaults)
		ach(6794),	-- Gara'jal the Spiritbinder kills (10-player Heroic Mogu'shan Vaults) \\ Gara'jal the Spiritbinder kills (Heroic Mogu'shan Vaults)
		ach(6795),	-- Four Kings kills (10-player Normal Mogu'shan Vaults) \\ Four Kings kills (Normal Mogu'shan Vaults)
		ach(6796),	-- Four Kings kills (10-player Heroic Mogu'shan Vaults) \\ Four Kings kills (Heroic Mogu'shan Vaults)
		ach(6797),	-- Elegon kills (10-player Normal Mogu'shan Vaults) \\ Elegon kills (Normal Mogu'shan Vaults)
		ach(6798),	-- Elegon kills (10-player Heroic Mogu'shan Vaults) \\ Elegon kills (Heroic Mogu'shan Vaults)
		ach(6799),	-- Will of the Emperor kills (10-player Normal Mogu'shan Vaults) \\ Will of the Emperor kills (Normal Mogu'shan Vaults)
		ach(6800),	-- Will of the Emperor kills (10-player Heroic Mogu'shan Vaults) \\ Will of the Emperor kills (Heroic Mogu'shan Vaults)
		ach(6801),	-- Imperial Vizier Zor'lok kills (10-player Normal Heart of Fear) \\ Imperial Vizier Zor'lok kills (Normal Heart of Fear)
		ach(6802),	-- Imperial Vizier Zor'lok kills (10-player Heroic Heart of Fear) \\ Imperial Vizier Zor'lok kills (Heroic Heart of Fear)
		ach(6803),	-- Blade Lord Ta'yak kills (10-player Normal Heart of Fear) \\ Blade Lord Ta'yak kills (Normal Heart of Fear)
		ach(6804),	-- Blade Lord Ta'yak kills (10-player Heroic Heart of Fear) \\ Blade Lord Ta'yak kills (Heroic Heart of Fear)
		ach(6805),	-- Garalon kills (10-player Normal Heart of Fear) \\ Garalon kills (Normal Heart of Fear)
		ach(6806),	-- Garalon kills (10-player Heroic Heart of Fear) \\ Garalon kills (Heroic Heart of Fear)
		ach(6807),	-- Wind Lord Mel'jarak kills (10-player Normal Heart of Fear) \\ Wind Lord Mel'jarak kills (Normal Heart of Fear)
		ach(6808),	-- Wind Lord Mel'jarak kills (10-player Heroic Heart of Fear) \\ Wind Lord Mel'jarak kills (Heroic Heart of Fear)
		ach(6809),	-- Amber-Shaper Un'sok kills (10-player Normal Heart of Fear) \\ Amber-Shaper Un'sok kills (Normal Heart of Fear)
		ach(6810),	-- Amber-Shaper Un'sok kills (10-player Heroic Heart of Fear) \\ Amber-Shaper Un'sok kills (Heroic Heart of Fear)
		ach(6811),	-- Grand Empress Shek'zeer kills (10-player Normal Heart of Fear) \\ Grand Empress Shek'zeer kills (Normal Heart of Fear)
		ach(6812),	-- Grand Empress Shek'zeer kills (10-player Heroic Heart of Fear) \\ Grand Empress Shek'zeer kills (Heroic Heart of Fear)
		ach(6813),	-- Protectors of the Endless kills (10-player Normal Terrace of Endless Spring) \\ Protectors of the Endless kills (Normal Terrace of Endless Spring)
		ach(6814),	-- Protectors of the Endless kills (10-player Heroic Terrace of Endless Spring) \\ Protectors of the Endless kills (Heroic Terrace of Endless Spring)
		ach(6815),	-- Tsulong redemptions (10-player Normal Terrace of Endless Spring) \\ Nalomoni redemptions (Normal Terrace of Endless Spring)
		ach(6816),	-- Tsulong redemptions (10-player Heroic Terrace of Endless Spring) \\ Nalomoni redemptions (Heroic Terrace of Endless Spring)
		ach(6817),	-- Lei Shi redemptions (10-player Normal Terrace of Endless Spring) \\ Lei Shi redemptions (Normal Terrace of Endless Spring)
		ach(6818),	-- Lei Shi redemptions (10-player Heroic Terrace of Endless Spring) \\ Lei Shi redemptions (Heroic Terrace of Endless Spring)
		ach(6819),	-- Sha of Fear kills (10-player Normal Terrace of Endless Spring) \\ Sha of Fear kills (Normal Terrace of Endless Spring)
		ach(6820),	-- Sha of Fear kills (10-player Heroic Terrace of Endless Spring) \\ Sha of Fear kills (Heroic Terrace of Endless Spring)
		ach(6983),	-- Stone Guard kills (LFR Mogu'shan Vaults)
		ach(6984),	-- Feng the Accursed kills (LFR Mogu'shan Vaults)
		ach(6985),	-- Gara'jal the Spiritbinder kills (LFR Mogu'shan Vaults)
		ach(6986),	-- Four Kings kills (LFR Mogu'shan Vaults)
		ach(6987),	-- Elegon kills (LFR Mogu'shan Vaults)
		ach(6988),	-- Will of the Emperor kills (LFR Normal Mogu'shan Vaults)
		ach(6989),	-- Sha of Anger kills (Kun-Lai Summit)
		ach(6990),	-- Salyis's Warband kills (Valley of the Four Winds)
		ach(6991),	-- Imperial Vizier Zor'lok kills (LFR Heart of Fear)
		ach(6992),	-- Blade Lord Ta'yak kills (LFR Heart of Fear)
		ach(6993),	-- Garalon kills (LFR Heart of Fear)
		ach(6994),	-- Wind Lord Mel'jarak kills (LFR Heart of Fear)
		ach(6995),	-- Amber-Shaper Un'sok kills (LFR Heart of Fear)
		ach(6996),	-- Grand Empress Shek'zeer kills (LFR Heart of Fear)
		ach(6997),	-- Protectors of the Endless kills (LFR Terrace of Endless Spring)
		ach(6998),	-- Tsulong redemptions (LFR Terrace of Endless Spring) \\ Nalomoni redemptions (LFR Terrace of Endless Spring)
		ach(6999),	-- Lei Shi redemptions (LFR Terrace of Endless Spring)
		ach(7000),	-- Sha of Fear kills (LFR Terrace of Endless Spring)
		ach(7223),	-- Cataclysm dungeons completed (final boss defeated)
		ach(7224),	-- Cataclysm raids completed (final boss defeated)
		ach(7240),	-- Pandaria dungeons completed (final boss defeated)
		ach(7241),	-- Pandaria raids completed (final boss defeated)
		ach(7242),	-- Pandaria dungeon bosses defeated
		ach(7244),	-- Pandaria dungeon boss defeated the most
		ach(7245),	-- Pandaria raid bosses defeated
		ach(7247),	-- Pandaria raid boss defeated the most
		ach(7250),	-- Resuscitated by monks
		ach(7251),	-- Raised by death knights
		ach(7263),	-- Silvershard Mines Killing Blows
		ach(7264),	-- Temple of Kotmogu Killing Blows
		ach(7268),	-- The Temple of Kotmogu
		ach(7269),	-- Stay Off the Grass
		ach(7270),	-- For Display Only
		ach(7399),	-- Challenge mode dungeons completed
		ach(7400),	-- Bronze Challenge ratings earned \\ Bronze ratings earned
		ach(7401),	-- Silver Challenge ratings earned \\ Silver ratings earned
		ach(7402),	-- Gold Challenge ratings earned \\ Gold ratings earned
		ach(7823),	-- Tol'viron Arena matches
		ach(7824),	-- Tol'viron Arena victories
		ach(7825),	-- Temple of Kotmogu battles
		ach(7826),	-- Temple of Kotmogu victories
		ach(7827),	-- Rated Temple of Kotmogu battles
		ach(7828),	-- Rated Temple of Kotmogu victories
		ach(7829),	-- Silvershard Mines battles
		ach(7830),	-- Silvershard Mines victories
		ach(7831),	-- Rated Silvershard Mines battles
		ach(7832),	-- Rated Silvershard Mines victories
		ach(7914),	-- Stone Guard kills (25-player Normal Mogu'shan Vaults)
		ach(7915),	-- Stone Guard kills (25-player Heroic Mogu'shan Vaults)
		ach(7917),	-- Feng the Accursed kills (25-player Normal Mogu'shan Vaults)
		ach(7918),	-- Feng the Accursed kills (25-player Heroic Mogu'shan Vaults)
		ach(7919),	-- Gara'jal the Spiritbinder kills (25-player Normal Mogu'shan Vaults)
		ach(7920),	-- Gara'jal the Spiritbinder kills (25-player Heroic Mogu'shan Vaults)
		ach(7921),	-- Four Kings kills (25-player Normal Mogu'shan Vaults)
		ach(7922),	-- Four Kings kills (25-player Heroic Mogu'shan Vaults)
		ach(7923),	-- Elegon kills (25-player Normal Mogu'shan Vaults)
		ach(7924),	-- Elegon kills (25-player Heroic Mogu'shan Vaults)
		ach(7926),	-- Will of the Emperor kills (25-player Normal Mogu'shan Vaults)
		ach(7927),	-- Will of the Emperor kills (25-player Heroic Mogu'shan Vaults)
		ach(7951),	-- Imperial Vizier Zor'lok kills (25-player Normal Heart of Fear)
		ach(7953),	-- Imperial Vizier Zor'lok kills (25-player Heroic Heart of Fear)
		ach(7954),	-- Blade Lord Ta'yak kills (25-player Normal Heart of Fear)
		ach(7955),	-- Blade Lord Ta'yak kills (25-player Heroic Heart of Fear)
		ach(7956),	-- Garalon kills (25-player Normal Heart of Fear)
		ach(7957),	-- Garalon kills (25-player Heroic Heart of Fear)
		ach(7958),	-- Wind Lord Mel'jarak kills (25-player Normal Heart of Fear)
		ach(7960),	-- Wind Lord Mel'jarak kills (25-player Heroic Heart of Fear)
		ach(7961),	-- Amber-Shaper Un'sok kills (25-player Normal Heart of Fear)
		ach(7962),	-- Amber-Shaper Un'sok kills (25-player Heroic Heart of Fear)
		ach(7963),	-- Grand Empress Shek'zeer kills (25-player Normal Heart of Fear)
		ach(7964),	-- Grand Empress Shek'zeer kills (25-player Heroic Heart of Fear)
		ach(7965),	-- Protectors of the Endless kills (25-player Normal Terrace of Endless Spring)
		ach(7966),	-- Protectors of the Endless kills (25-player Heroic Terrace of Endless Spring)
		ach(7967),	-- Tsulong redemptions (25-player Normal Terrace of Endless Spring)
		ach(7968),	-- Tsulong redemptions (25-player Heroic Terrace of Endless Spring)
		ach(7969),	-- Lei Shi redemptions (25-player Normal Terrace of Endless Spring)
		ach(7970),	-- Lei Shi redemptions (25-player Heroic Terrace of Endless Spring)
		ach(7971),	-- Sha of Fear kills (25-player Normal Terrace of Endless Spring)
		ach(7972),	-- Sha of Fear kills (25-player Heroic Terrace of Endless Spring)
		ach(8141),	-- Jin'rokh the Breaker kills (LFR Throne of Thunder)
		ach(8142),	-- Jin'rokh the Breaker kills (10-player Normal Throne of Thunder)
		ach(8143),	-- Jin'rokh the Breaker kills (25-player Normal Throne of Thunder)
		ach(8144),	-- Jin'rokh the Breaker kills (10-player Heroic Throne of Thunder)
		ach(8145),	-- Jin'rokh the Breaker kills (25-player Heroic Throne of Thunder)
		ach(8146),	-- Nalak kills
		ach(8147),	-- Oondasta kills
		ach(8148),	-- Horridon kills (LFR Throne of Thunder)
		ach(8149),	-- Horridon kills (10-player Normal Throne of Thunder)
		ach(8150),	-- Horridon kills (25-player Normal Throne of Thunder)
		ach(8151),	-- Horridon kills (10-player Heroic Throne of Thunder)
		ach(8152),	-- Horridon kills (25-player Heroic Throne of Thunder)
		ach(8153),	-- Council of Elders kills (LFR Throne of Thunder)
		ach(8154),	-- Council of Elders kills (10-player Normal Throne of Thunder)
		ach(8155),	-- Council of Elders kills (25-player Normal Throne of Thunder)
		ach(8156),	-- Council of Elders kills (10-player Heroic Throne of Thunder)
		ach(8157),	-- Council of Elders kills (25-player Heroic Throne of Thunder)
		ach(8158),	-- Tortos kills (LFR Throne of Thunder)
		ach(8159),	-- Tortos kills (10-player Normal Throne of Thunder)
		ach(8160),	-- Tortos kills (25-player Normal Throne of Thunder)
		ach(8161),	-- Tortos kills (25-player Heroic Throne of Thunder)
		ach(8162),	-- Tortos kills (10-player Heroic Throne of Thunder)
		ach(8163),	-- Megaera kills (LFR Throne of Thunder)
		ach(8164),	-- Megaera kills (10-player Normal Throne of Thunder)
		ach(8165),	-- Megaera kills (25-player Normal Throne of Thunder)
		ach(8166),	-- Megaera kills (10-player Heroic Throne of Thunder)
		ach(8167),	-- Megaera kills (25-player Heroic Throne of Thunder)
		ach(8168),	-- Ji-Kun kills (LFR Throne of Thunder)
		ach(8169),	-- Ji-Kun kills (10-player Normal Throne of Thunder)
		ach(8170),	-- Ji-Kun kills (25-player Normal Throne of Thunder)
		ach(8171),	-- Ji-Kun kills (10-player Heroic Throne of Thunder)
		ach(8172),	-- Ji-Kun kills (25-player Heroic Throne of Thunder)
		ach(8173),	-- Durumu the Forgotten kills (LFR Throne of Thunder)
		ach(8174),	-- Durumu the Forgotten kills (10-player Normal Throne of Thunder)
		ach(8175),	-- Durumu the Forgotten kills (25-player Normal Throne of Thunder)
		ach(8176),	-- Durumu the Forgotten kills (10-player Heroic Throne of Thunder)
		ach(8177),	-- Durumu the Forgotten kills (25-player Heroic Throne of Thunder)
		ach(8178),	-- Primordius kills (LFR Throne of Thunder)
		ach(8179),	-- Primordius kills (10-player Normal Throne of Thunder)
		ach(8180),	-- Primordius kills (25-player Heroic Throne of Thunder)
		ach(8181),	-- Primordius kills (10-player Heroic Throne of Thunder)
		ach(8182),	-- Primordius kills (25-player Normal Throne of Thunder)
		ach(8183),	-- Dark Animus kills (LFR Throne of Thunder)
		ach(8184),	-- Dark Animus kills (10-player Normal Throne of Thunder)
		ach(8185),	-- Dark Animus kills (25-player Normal Throne of Thunder)
		ach(8186),	-- Dark Animus kills (10-player Heroic Throne of Thunder)
		ach(8187),	-- Dark Animus kills (25-player Heroic Throne of Thunder)
		ach(8188),	-- Iron Qon kills (LFR Throne of Thunder)
		ach(8189),	-- Iron Qon kills (10-player Normal Throne of Thunder)
		ach(8190),	-- Iron Qon kills (25-player Normal Throne of Thunder)
		ach(8191),	-- Iron Qon kills (10-player Heroic Throne of Thunder)
		ach(8192),	-- Iron Qon kills (25-player Heroic Throne of Thunder)
		ach(8193),	-- Twin Consorts kills (LFR Throne of Thunder)
		ach(8194),	-- Twin Consorts kills (10-player Normal Throne of Thunder)
		ach(8195),	-- Twin Consorts kills (25-player Normal Throne of Thunder)
		ach(8196),	-- Twin Consorts kills (10-player Heroic Throne of Thunder)
		ach(8197),	-- Twin Consorts kills (25-player Heroic Throne of Thunder)
		ach(8198),	-- Lei Shen kills (LFR Throne of Thunder)
		ach(8199),	-- Lei Shen kills (10-player Normal Throne of Thunder)
		ach(8200),	-- Lei Shen kills (25-player Normal Throne of Thunder)
		ach(8201),	-- Lei Shen kills (25-player Heroic Throne of Thunder)
		ach(8202),	-- Lei Shen kills (10-player Heroic Throne of Thunder)
		ach(8203),	-- Ra-den defeated (10-player Heroic Throne of Thunder)
		ach(8256),	-- Ra-den defeated (25-player Heroic Throne of Thunder)
		ach(8278),	-- Pet Battles won at max level
		ach(8286),	-- PvP Pet Battles won at max level
		ach(8291),	-- Gastropod meals provided
		ach(8367),	-- PvP pet battles won through Find Battle with a full team of level 25 pets.
		ach(8369),	-- Tiger's Peak victories
		ach(8370),	-- Tiger's Peak matches
		ach(8371),	-- Rated Deepwind Gorge battles
		ach(8372),	-- Rated Deepwind Gorge victories
		ach(8373),	-- Deepwind Gorge victories
		ach(8374),	-- Deepwind Gorge battles
		ach(8375),	-- Deepwind Gorge Killing Blows
		ach(8376),	-- Deepwind Gorge Honorable Kills
		ach(8408),	-- Celestial Tournament wins
		ach(8514),	-- Highest score on Basic Damage (Endless) at the Proving Grounds (Level 90) \\ Highest score on Basic Damage (Endless) at the Proving Grounds
		ach(8515),	-- Highest score on Basic Tank (Endless) at the Proving Grounds (Level 90) \\ Highest score on Basic Tank (Endless) at the Proving Grounds
		ach(8516),	-- Highest score on Basic Healer (Endless) at the Proving Grounds (Level 90) \\ Highest score on Basic Healer (Endless) at the Proving Grounds
		ach(8544),	-- Trials of Chi-Ji completed
		ach(8545),	-- Trials of Niuzao completed
		ach(8546),	-- Trials of Xuen completed
		ach(8547),	-- Trials of Yu'lon completed
		ach(8548),	-- Ordos kills
		ach(8549),	-- Immerseus defeated (LFR Siege of Orgrimmar)
		ach(8550),	-- Immerseus defeated (Flexible Siege of Orgrimmar)
		ach(8551),	-- Immerseus defeated (10-player Normal Siege of Orgrimmar)
		ach(8552),	-- Immerseus defeated (25-player Normal Siege of Orgrimmar)
		ach(8553),	-- Immerseus defeated (10-player Heroic Siege of Orgrimmar)
		ach(8554),	-- Immerseus defeated (25-player Heroic Siege of Orgrimmar)
		ach(8555),	-- Fallen Protectors kills (LFR Siege of Orgrimmar)
		ach(8556),	-- Fallen Protectors kills (Flexible Siege of Orgrimmar)
		ach(8557),	-- Fallen Protectors kills (10-player Normal Siege of Orgrimmar)
		ach(8558),	-- Fallen Protectors kills (25-player Normal Siege of Orgrimmar)
		ach(8559),	-- Fallen Protectors kills (10-player Heroic Siege of Orgrimmar)
		ach(8560),	-- Fallen Protectors kills (25-player Heroic Siege of Orgrimmar)
		ach(8561),	-- Norushen's test passed (LFR Siege of Orgrimmar)
		ach(8562),	-- Norushen's test passed (Flexible Siege of Orgrimmar)
		ach(8563),	-- Norushen's test passed (10-player Normal Siege of Orgrimmar)
		ach(8564),	-- Norushen's test passed (25-player Normal Siege of Orgrimmar)
		ach(8565),	-- Norushen's test passed (10-player Heroic Siege of Orgrimmar)
		ach(8566),	-- Norushen's test passed (25-player Heroic Siege of Orgrimmar)
		ach(8567),	-- Sha of Pride kills (LFR Siege of Orgrimmar)
		ach(8568),	-- Sha of Pride kills (Flexible Siege of Orgrimmar)
		ach(8569),	-- Sha of Pride kills (10-player Normal Siege of Orgrimmar)
		ach(8570),	-- Sha of Pride kills (25-player Normal Siege of Orgrimmar)
		ach(8571),	-- Sha of Pride kills (10-player Heroic Siege of Orgrimmar)
		ach(8573),	-- Sha of Pride kills (25-player Heroic Siege of Orgrimmar)
		ach(8574),	-- Galakras kills (LFR Siege of Orgrimmar)
		ach(8575),	-- Galakras kills (Flexible Siege of Orgrimmar)
		ach(8576),	-- Galakras kills (10-player Normal Siege of Orgrimmar)
		ach(8577),	-- Galakras kills (25-player Normal Siege of Orgrimmar)
		ach(8578),	-- Galakras kills (10-player Heroic Siege of Orgrimmar)
		ach(8579),	-- Galakras kills (25-player Heroic Siege of Orgrimmar)
		ach(8580),	-- Iron Juggernaut kills (LFR Siege of Orgrimmar)
		ach(8581),	-- Iron Juggernaut kills (Flexible Siege of Orgrimmar)
		ach(8582),	-- Iron Juggernaut kills (10-player Normal Siege of Orgrimmar)
		ach(8583),	-- Iron Juggernaut kills (25-player Normal Siege of Orgrimmar)
		ach(8584),	-- Iron Juggernaut kills (10-player Heroic Siege of Orgrimmar)
		ach(8585),	-- Iron Juggernaut kills (25-player Heroic Siege of Orgrimmar)
		ach(8586),	-- Dark Shaman kills (LFR Siege of Orgrimmar)
		ach(8587),	-- Dark Shaman kills (Flexible Siege of Orgrimmar)
		ach(8588),	-- Dark Shaman kills (10-player Normal Siege of Orgrimmar)
		ach(8589),	-- Dark Shaman kills (25-player Normal Siege of Orgrimmar)
		ach(8590),	-- Dark Shaman kills (10-player Heroic Siege of Orgrimmar)
		ach(8591),	-- Dark Shaman kills (25-player Heroic Siege of Orgrimmar)
		ach(8593),	-- General Nazgrim kills (LFR Siege of Orgrimmar)
		ach(8594),	-- General Nazgrim kills (Flexible Siege of Orgrimmar)
		ach(8595),	-- General Nazgrim kills (10-player Normal Siege of Orgrimmar)
		ach(8596),	-- General Nazgrim kills (25-player Normal Siege of Orgrimmar)
		ach(8597),	-- General Nazgrim kills (10-player Heroic Siege of Orgrimmar)
		ach(8598),	-- General Nazgrim kills (25-player Heroic Siege of Orgrimmar)
		ach(8599),	-- Malkorok kills (LFR Siege of Orgrimmar)
		ach(8600),	-- Malkorok kills (Flexible Siege of Orgrimmar)
		ach(8601),	-- Malkorok kills (10-player Normal Siege of Orgrimmar)
		ach(8602),	-- Malkorok kills (25-player Normal Siege of Orgrimmar)
		ach(8603),	-- Malkorok kills (10-player Heroic Siege of Orgrimmar)
		ach(8604),	-- Malkorok kills (25-player Heroic Siege of Orgrimmar)
		ach(8605),	-- Spoils of Pandaria plundered (LFR Siege of Orgrimmar)
		ach(8606),	-- Spoils of Pandaria plundered (Flexible Siege of Orgrimmar)
		ach(8608),	-- Spoils of Pandaria plundered (10-player Normal Siege of Orgrimmar)
		ach(8609),	-- Spoils of Pandaria plundered (25-player Normal Siege of Orgrimmar)
		ach(8610),	-- Spoils of Pandaria plundered (10-player Heroic Siege of Orgrimmar)
		ach(8612),	-- Spoils of Pandaria plundered (25-player Heroic Siege of Orgrimmar)
		ach(8614),	-- Thok the Bloodthirsty kills (LFR Siege of Orgrimmar)
		ach(8615),	-- Thok the Bloodthirsty kills (Flexible Siege of Orgrimmar)
		ach(8616),	-- Thok the Bloodthirsty kills (10-player Normal Siege of Orgrimmar)
		ach(8617),	-- Thok the Bloodthirsty kills (25-player Normal Siege of Orgrimmar)
		ach(8618),	-- Thok the Bloodthirsty kills (10-player Heroic Siege of Orgrimmar)
		ach(8619),	-- Thok the Bloodthirsty kills (25-player Heroic Siege of Orgrimmar)
		ach(8620),	-- Siegecrafter Blackfuse kills (LFR Siege of Orgrimmar)
		ach(8621),	-- Siegecrafter Blackfuse kills (Flexible Siege of Orgrimmar)
		ach(8622),	-- Siegecrafter Blackfuse kills (10-player Normal Siege of Orgrimmar)
		ach(8623),	-- Siegecrafter Blackfuse kills (25-player Normal Siege of Orgrimmar)
		ach(8624),	-- Siegecrafter Blackfuse kills (10-player Heroic Siege of Orgrimmar)
		ach(8625),	-- Siegecrafter Blackfuse kills (25-player Heroic Siege of Orgrimmar)
		ach(8626),	-- Paragons of the Klaxxi kills (LFR Siege of Orgrimmar)
		ach(8627),	-- Paragons of the Klaxxi kills (Flexible Siege of Orgrimmar)
		ach(8628),	-- Paragons of the Klaxxi kills (10-player Normal Siege of Orgrimmar)
		ach(8629),	-- Paragons of the Klaxxi kills (25-player Normal Siege of Orgrimmar)
		ach(8630),	-- Paragons of the Klaxxi kills (10-player Heroic Siege of Orgrimmar)
		ach(8631),	-- Paragons of the Klaxxi kills (25-player Heroic Siege of Orgrimmar)
		ach(8632),	-- Garrosh Hellscream (LFR Siege of Orgrimmar)
		ach(8634),	-- Garrosh Hellscream (Flexible Siege of Orgrimmar)
		ach(8635),	-- Garrosh Hellscream (10-player Normal Siege of Orgrimmar)
		ach(8636),	-- Garrosh Hellscream (25-player Normal Siege of Orgrimmar)
		ach(8637),	-- Garrosh Hellscream (10-player Heroic Siege of Orgrimmar)
		ach(8638),	-- Garrosh Hellscream (25-player Heroic Siege of Orgrimmar)
	}),
	expansion(EXPANSION.WOD, {
		ach(9258),	-- Gug'rokk kills (Bloodmaul Slag Mines)
		ach(9259),	-- Gug'rokk kills (Heroic Bloodmaul Slag Mines)
		ach(9260),	-- Skulloc kills (Iron Docks)
		ach(9261),	-- Skulloc kills (Heroic Iron Docks)
		ach(9262),	-- Teron'gor kills (Auchindoun)
		ach(9263),	-- Teron'gor kills (Heroic Auchindoun)
		ach(9266),	-- High Sage Viryx kills (Skyreach)
		ach(9267),	-- High Sage Viryx kills (Heroic Skyreach)
		ach(9268),	-- Skylord Tovra kills (Grimrail Depot)
		ach(9269),	-- Skylord Tovra kills (Heroic Grimrail Depot)
		ach(9271),	-- Yalnu kills (The Everbloom)
		ach(9272),	-- Yalnu kills (Heroic The Everbloom)
		ach(9273),	-- Ner'zhul kills (Shadowmoon Burial Grounds)
		ach(9274),	-- Ner'zhul kills (Heroic Shadowmoon Burial Grounds)
		ach(9275),	-- Warlord Zaela kills (Upper Blackrock Spire)
		ach(9276),	-- Warlord Zaela kills (Heroic Upper Blackrock Spire)
		ach(9277),	-- Drov the Ruiner kills (Gorgrond)
		ach(9278),	-- Tarlna the Ageless kills (Gorgrond)
		ach(9279),	-- Rukhmar kills (Spires of Arak)
		ach(9280),	-- Kargath Bladefist defeats (Raid Finder Highmaul)
		ach(9282),	-- Kargath Bladefist defeats (Normal Highmaul)
		ach(9284),	-- Kargath Bladefist defeats (Heroic Highmaul)
		ach(9285),	-- Kargath Bladefist defeats (Mythic Highmaul)
		ach(9286),	-- The Butcher kills (Raid Finder Highmaul)
		ach(9287),	-- The Butcher kills (Normal Highmaul)
		ach(9288),	-- The Butcher kills (Heroic Highmaul)
		ach(9289),	-- The Butcher kills (Mythic Highmaul)
		ach(9290),	-- Tectus kills (Raid Finder Highmaul)
		ach(9292),	-- Tectus kills (Normal Highmaul)
		ach(9293),	-- Tectus kills (Heroic Highmaul)
		ach(9294),	-- Tectus kills (Mythic Highmaul)
		ach(9295),	-- Brackenspore kills (Raid Finder Highmaul)
		ach(9297),	-- Brackenspore kills (Normal Highmaul)
		ach(9298),	-- Brackenspore kills (Heroic Highmaul)
		ach(9300),	-- Brackenspore kills (Mythic Highmaul)
		ach(9301),	-- Twin Ogron kills (Raid Finder Highmaul)
		ach(9302),	-- Twin Ogron kills (Normal Highmaul)
		ach(9303),	-- Twin Ogron kills (Heroic Highmaul)
		ach(9304),	-- Twin Ogron kills (Mythic Highmaul)
		ach(9306),	-- Ko'ragh kills (Raid Finder Highmaul)
		ach(9308),	-- Ko'ragh kills (Normal Highmaul)
		ach(9310),	-- Ko'ragh kills (Heroic Highmaul)
		ach(9311),	-- Ko'ragh kills (Mythic Highmaul)
		ach(9312),	-- Imperator Mar'gok kills (Raid Finder Highmaul)
		ach(9313),	-- Imperator Mar'gok kills (Normal Highmaul)
		ach(9314),	-- Imperator Mar'gok kills (Heroic Highmaul)
		ach(9315),	-- Imperator Mar'gok kills (Mythic Highmaul)
		ach(9316),	-- Gruul kills (Raid Finder Blackrock Foundry)
		ach(9317),	-- Gruul kills (Normal Blackrock Foundry)
		ach(9318),	-- Gruul kills (Heroic Blackrock Foundry)
		ach(9319),	-- Gruul kills (Mythic Blackrock Foundry)
		ach(9320),	-- Oregorger kills (Raid Finder Blackrock Foundry)
		ach(9321),	-- Oregorger kills (Normal Blackrock Foundry)
		ach(9322),	-- Oregorger kills (Heroic Blackrock Foundry)
		ach(9323),	-- Oregorger kills (Mythic Blackrock Foundry)
		ach(9324),	-- Hans'gar and Franzok kills (Raid Finder Blackrock Foundry)
		ach(9327),	-- Hans'gar and Franzok kills (Normal Blackrock Foundry)
		ach(9328),	-- Hans'gar and Franzok kills (Heroic Blackrock Foundry)
		ach(9329),	-- Hans'gar and Franzok kills (Mythic Blackrock Foundry)
		ach(9330),	-- Flamebender Ka'graz kills (Raid Finder Blackrock Foundry)
		ach(9331),	-- Flamebender Ka'graz kills (Normal Blackrock Foundry)
		ach(9332),	-- Flamebender Ka'graz kills (Heroic Blackrock Foundry)
		ach(9333),	-- Flamebender Ka'graz kills (Mythic Blackrock Foundry)
		ach(9334),	-- Beastlord Darmac kills (Raid Finder Blackrock Foundry)
		ach(9336),	-- Beastlord Darmac kills (Normal Blackrock Foundry)
		ach(9337),	-- Beastlord Darmac kills (Heroic Blackrock Foundry)
		ach(9338),	-- Beastlord Darmac kills (Mythic Blackrock Foundry)
		ach(9339),	-- Operator Thogar kills (Raid Finder Blackrock Foundry)
		ach(9340),	-- Operator Thogar kills (Normal Blackrock Foundry)
		ach(9341),	-- Operator Thogar kills (Heroic Blackrock Foundry)
		ach(9342),	-- Operator Thogar kills (Mythic Blackrock Foundry)
		ach(9343),	-- Blast Furnace destructions (Raid Finder Blackrock Foundry)
		ach(9349),	-- Blast Furnace destructions (Normal Blackrock Foundry)
		ach(9351),	-- Blast Furnace destructions (Heroic Blackrock Foundry)
		ach(9353),	-- Blast Furnace destructions (Mythic Blackrock Foundry)
		ach(9354),	-- Kromog kills (Raid Finder Blackrock Foundry)
		ach(9355),	-- Kromog kills (Normal Blackrock Foundry)
		ach(9356),	-- Kromog kills (Heroic Blackrock Foundry)
		ach(9357),	-- Kromog kills (Mythic Blackrock Foundry)
		ach(9358),	-- Iron Maidens kills (Raid Finder Blackrock Foundry)
		ach(9359),	-- Iron Maidens kills (Normal Blackrock Foundry)
		ach(9360),	-- Iron Maidens kills (Heroic Blackrock Foundry)
		ach(9361),	-- Iron Maidens kills (Mythic Blackrock Foundry)
		ach(9362),	-- Warlord Blackhand kills (Raid Finder Blackrock Foundry)
		ach(9363),	-- Warlord Blackhand kills (Normal Blackrock Foundry)
		ach(9364),	-- Warlord Blackhand kills (Heroic Blackrock Foundry)
		ach(9365),	-- Warlord Blackhand kills (Mythic Blackrock Foundry)
		ach(9430),	-- Draenor dungeons completed (final boss defeated)
		ach(9553),	-- Draenor dungeon bosses defeated
		ach(9557),	-- Draenor dungeon boss defeated the most
		ach(9558),	-- Draenor raids completed (final boss defeated)
		ach(9559),	-- Draenor raid bosses defeated
		ach(9561),	-- Draenor raid boss defeated the most
		ach(9594),	-- Highest score on Basic Damage (Endless) at the Proving Grounds
		ach(9595),	-- Highest score on Basic Tank (Endless) at the Proving Grounds
		ach(9596),	-- Highest score on Basic Healer (Endless) at the Proving Grounds
		ach(10050),	-- Learn A Primary Profession
		ach(10051),	-- Learn Two Primary Professions
		ach(10055),	-- <DND> Follower Raid iLevel - Foundry
		ach(10056),	-- <DND> Follower Raid iLevel - Highmaul
		ach(10077),	-- Mythic Dungeoneer
		ach(10192),	-- Gug'rokk kills (Mythic Bloodmaul Slag Mines)
		ach(10193),	-- Skulloc kills (Mythic Iron Docks)
		ach(10194),	-- Teron'gor kills (Mythic Auchindoun)
		ach(10195),	-- High Sage Viryx kills (Mythic Skyreach)
		ach(10196),	-- Skylord Tovra kills (Mythic Grimrail Depot)
		ach(10197),	-- Yalnu kills (Mythic The Everbloom)
		ach(10198),	-- Ner'zhul kills (Mythic Shadowmoon Burial Grounds)
		ach(10199),	-- Warlord Zaela kills (Mythic Upper Blackrock Spire)
		ach(10200),	-- Supreme Lord Kazzak kills (Tanaan Jungle)
		ach(10201),	-- Hellfire Assault victories (Raid Finder Hellfire Citadel)
		ach(10202),	-- Hellfire Assault victories (Normal Hellfire Citadel)
		ach(10203),	-- Hellfire Assault victories (Heroic Hellfire Citadel)
		ach(10204),	-- Hellfire Assault victories (Mythic Hellfire Citadel)
		ach(10205),	-- Iron Reaver kills (Raid Finder Hellfire Citadel)
		ach(10206),	-- Iron Reaver kills (Normal Hellfire Citadel)
		ach(10207),	-- Iron Reaver kills (Heroic Hellfire Citadel)
		ach(10208),	-- Iron Reaver kills (Mythic Hellfire Citadel)
		ach(10209),	-- Kormrok kills (Raid Finder Hellfire Citadel)
		ach(10210),	-- Kormrok kills (Normal Hellfire Citadel)
		ach(10211),	-- Kormrok kills (Heroic Hellfire Citadel)
		ach(10212),	-- Kormrok kills (Mythic Hellfire Citadel)
		ach(10213),	-- Hellfire High Council kills (Raid Finder Hellfire Citadel)
		ach(10214),	-- Hellfire High Council kills (Normal Hellfire Citadel)
		ach(10215),	-- Hellfire High Council kills (Heroic Hellfire Citadel)
		ach(10216),	-- Hellfire High Council kills (Mythic Hellfire Citadel)
		ach(10217),	-- Kilrogg Deadeye kills (Raid Finder Hellfire Citadel)
		ach(10218),	-- Kilrogg Deadeye kills (Normal Hellfire Citadel)
		ach(10219),	-- Kilrogg Deadeye kills (Heroic Hellfire Citadel)
		ach(10220),	-- Kilrogg Deadeye kills (Mythic Hellfire Citadel)
		ach(10221),	-- Gorefiend kills (Raid Finder Hellfire Citadel)
		ach(10222),	-- Gorefiend kills (Normal Hellfire Citadel)
		ach(10223),	-- Gorefiend kills (Heroic Hellfire Citadel)
		ach(10224),	-- Gorefiend kills (Mythic Hellfire Citadel)
		ach(10225),	-- Shadow-Lord Iskar kills (Raid Finder Hellfire Citadel)
		ach(10226),	-- Shadow-Lord Iskar kills (Normal Hellfire Citadel)
		ach(10227),	-- Shadow-Lord Iskar kills (Heroic Hellfire Citadel)
		ach(10228),	-- Shadow-Lord Iskar kills (Mythic Hellfire Citadel)
		ach(10229),	-- Socrethar the Eternal kills (Raid Finder Hellfire Citadel)
		ach(10230),	-- Socrethar the Eternal kills (Normal Hellfire Citadel)
		ach(10231),	-- Socrethar the Eternal kills (Heroic Hellfire Citadel)
		ach(10232),	-- Socrethar the Eternal kills (Mythic Hellfire Citadel)
		ach(10233),	-- Fel Lord Zakuun kills (Raid Finder Hellfire Citadel)
		ach(10234),	-- Fel Lord Zakuun kills (Normal Hellfire Citadel)
		ach(10235),	-- Fel Lord Zakuun kills (Heroic Hellfire Citadel)
		ach(10236),	-- Fel Lord Zakuun kills (Mythic Hellfire Citadel)
		ach(10237),	-- Xhul'horac kills (Raid Finder Hellfire Citadel)
		ach(10238),	-- Xhul'horac kills (Normal Hellfire Citadel)
		ach(10239),	-- Xhul'horac kills (Heroic Hellfire Citadel)
		ach(10240),	-- Xhul'horac kills (Mythic Hellfire Citadel)
		ach(10241),	-- Tyrant Velhari kills (Raid Finder Hellfire Citadel)
		ach(10242),	-- Tyrant Velhari kills (Normal Hellfire Citadel)
		ach(10243),	-- Tyrant Velhari kills (Heroic Hellfire Citadel)
		ach(10244),	-- Tyrant Velhari kills (Mythic Hellfire Citadel)
		ach(10245),	-- Mannoroth kills (Raid Finder Hellfire Citadel)
		ach(10246),	-- Mannoroth kills (Normal Hellfire Citadel)
		ach(10247),	-- Mannoroth kills (Heroic Hellfire Citadel)
		ach(10248),	-- Mannoroth kills (Mythic Hellfire Citadel)
		ach(10249),	-- Archimonde kills (Raid Finder Hellfire Citadel)
		ach(10250),	-- Archimonde kills (Normal Hellfire Citadel)
		ach(10251),	-- Archimonde kills (Heroic Hellfire Citadel)
		ach(10252),	-- Archimonde kills (Mythic Hellfire Citadel)
		ach(10278),	-- <DND> Item Level Army - Account Wide
		ach(10366),	-- <DND> Account Has Curious Wolvar Pup
		ach(10367),	-- <DND> Account Has Oracle Hatchling
		ach(10372),	-- <DND> Player has learned Blige Pump
		ach(10373),	-- <DND> Player has learned Felsmoke
		ach(10374),	-- <DND> Player has learned Fog Lights
		ach(10375),	-- <DND> Player has learned Ghostly Spyglass
		ach(10376),	-- <DND> Player has learned Gyroscopic Internal Stabilizer
		ach(10377),	-- <DND> Player has learned Ice Cutter
		ach(10378),	-- <DND> Player has learned Trained Shark Tank
		ach(10379),	-- <DND> Player has learned True Iron Rudder
	}),
	expansion(EXPANSION.LEGION, {
		ach(10614),	-- Hidden Tracking - 325 Artifact XP Earned
		ach(10683),	-- Artifacts - Beast Master Hunter Hati Display Info
		ach(10712),	-- Artifact Power - Earned - Vignette
		ach(10713),	-- Artifact Power - Earned - Treasure
		ach(10714),	-- Artifact Power - Earned - World Drop
		ach(10715),	-- Artifact Power - Earned - Quest
		ach(10716),	-- Artifact Power - Earned - Dungeon
		ach(10717),	-- Artifact Power - Earned - Skirmish
		ach(10718),	-- Artifact Power - Earned - Arena
		ach(10719),	-- Artifact Power - Earned - Unrated BG
		ach(10720),	-- Artifact Power - Earned - Rated BG
		ach(10721),	-- Artifact Power - Earned - Honor System
		ach(10768),	-- Hidden Tracking - Apocalypse Ghouls Summoned
		ach(10878),	-- Wrath of Azshara kills (Normal Eye of Azshara)
		ach(10879),	-- Wrath of Azshara kills (Heroic Eye of Azshara)
		ach(10880),	-- Wrath of Azshara kills (Mythic Eye of Azshara)
		ach(10881),	-- Shade of Xavius kills (Normal Darkheart Thicket)
		ach(10882),	-- Shade of Xavius kills (Heroic Darkheart Thicket)
		ach(10883),	-- Shade of Xavius kills (Mythic Darkheart Thicket)
		ach(10884),	-- Dargrul kills (Normal Neltharion's Lair)
		ach(10885),	-- Dargrul kills (Heroic Neltharion's Lair)
		ach(10886),	-- Dargrul kills (Mythic Neltharion's Lair)
		ach(10887),	-- Odyn defeats (Normal Halls of Valor)
		ach(10888),	-- Odyn defeats (Heroic Halls of Valor)
		ach(10889),	-- Odyn defeats (Mythic Halls of Valor)
		ach(10890),	-- Fel Lord Betrug kills (Normal Assault on Violet Hold)
		ach(10891),	-- Fel Lord Betrug kills (Heroic Assault on Violet Hold)
		ach(10892),	-- Fel Lord Betrug kills (Mythic Assault on Violet Hold)
		ach(10893),	-- Sael'orn kills (Normal Assault on Violet Hold)
		ach(10894),	-- Sael'orn kills (Heroic Assault on Violet Hold)
		ach(10895),	-- Sael'orn kills (Mythic Assault on Violet Hold)
		ach(10896),	-- Cordana Felsong kills (Normal Vault of the Wardens)
		ach(10897),	-- Cordana Felsong kills (Heroic Vault of the Wardens)
		ach(10898),	-- Cordana Felsong kills (Mythic Vault of the Wardens)
		ach(10899),	-- Kur'talos Ravencrest defeats (Normal Black Rook Hold)
		ach(10900),	-- Kur'talos Ravencrest defeats (Heroic Black Rook Hold)
		ach(10901),	-- Kur'talos Ravencrest defeats (Mythic Black Rook Hold)
		ach(10902),	-- Helya defeats (Normal Maw of Souls)
		ach(10903),	-- Helya defeats (Heroic Maw of Souls)
		ach(10904),	-- Helya defeats (Mythic Maw of Souls)
		ach(10907),	-- Advisor Vandros kills (Mythic Arcway)
		ach(10910),	-- Advisor Melandrus kills (Mythic Court of Stars)
		ach(10911),	-- Nythendra kills (Raid Finder Emerald Nightmare)
		ach(10912),	-- Nythendra kills (Normal Emerald Nightmare)
		ach(10913),	-- Nythendra kills (Heroic Emerald Nightmare)
		ach(10914),	-- Nythendra kills (Mythic Emerald Nightmare)
		ach(10915),	-- Ursoc kills (Raid Finder Emerald Nightmare)
		ach(10916),	-- Ursoc kills (Normal Emerald Nightmare)
		ach(10917),	-- Ursoc kills (Heroic Emerald Nightmare)
		ach(10919),	-- Ursoc kills (Mythic Emerald Nightmare)
		ach(10920),	-- Elerethe Renferal kills (Raid Finder Emerald Nightmare)
		ach(10921),	-- Elerethe Renferal kills (Normal Emerald Nightmare)
		ach(10922),	-- Elerethe Renferal kills (Heroic Emerald Nightmare)
		ach(10923),	-- Elerethe Renferal kills (Mythic Emerald Nightmare)
		ach(10924),	-- Il'gynoth kills (Raid Finder Emerald Nightmare)
		ach(10925),	-- Il'gynoth kills (Normal Emerald Nightmare)
		ach(10926),	-- Il'gynoth kills (Heroic Emerald Nightmare)
		ach(10927),	-- Il'gynoth kills (Mythic Emerald Nightmare)
		ach(10928),	-- Dragons of Nightmare kills (Raid Finder Emerald Nightmare)
		ach(10929),	-- Dragons of Nightmare kills (Normal Emerald Nightmare)
		ach(10930),	-- Dragons of Nightmare kills (Heroic Emerald Nightmare)
		ach(10931),	-- Dragons of Nightmare kills (Mythic Emerald Nightmare)
		ach(10932),	-- Cenarius redemptions (Raid Finder Emerald Nightmare)
		ach(10933),	-- Cenarius redemptions (Normal Emerald Nightmare)
		ach(10934),	-- Cenarius redemptions (Heroic Emerald Nightmare)
		ach(10935),	-- Cenarius redemptions (Mythic Emerald Nightmare)
		ach(10936),	-- Xavius kills (Raid Finder Emerald Nightmare)
		ach(10937),	-- Xavius kills (Normal Emerald Nightmare)
		ach(10938),	-- Xavius kills (Heroic Emerald Nightmare)
		ach(10939),	-- Xavius kills (Mythic Emerald Nightmare)
		ach(10940),	-- Skorpyron kills (Raid Finder Nighthold)
		ach(10941),	-- Skorpyron kills (Normal Nighthold)
		ach(10942),	-- Skorpyron kills (Heroic Nighthold)
		ach(10943),	-- Skorpyron kills (Mythic Nighthold)
		ach(10944),	-- Chronomatic Anomaly kills (Raid Finder Nighthold)
		ach(10945),	-- Chronomatic Anomaly kills (Normal Nighthold)
		ach(10946),	-- Chronomatic Anomaly kills (Heroic Nighthold)
		ach(10947),	-- Chronomatic Anomaly kills (Mythic Nighthold)
		ach(10948),	-- Trilliax kills (Raid Finder Nighthold)
		ach(10949),	-- Trilliax kills (Normal Nighthold)
		ach(10950),	-- Trilliax kills (Heroic Nighthold)
		ach(10951),	-- Trilliax kills (Mythic Nighthold)
		ach(10952),	-- Spellblade Aluriel kills (Raid Finder Nighthold)
		ach(10953),	-- Spellblade Aluriel kills (Normal Nighthold)
		ach(10954),	-- Spellblade Aluriel kills (Heroic Nighthold)
		ach(10955),	-- Spellblade Aluriel kills (Mythic Nighthold)
		ach(10956),	-- Star Augur Etraeus kills (Raid Finder Nighthold)
		ach(10957),	-- Star Augur Etraeus kills (Normal Nighthold)
		ach(10959),	-- Star Augur Etraeus kills (Heroic Nighthold)
		ach(10960),	-- Star Augur Etraeus kills (Mythic Nighthold)
		ach(10961),	-- High Botanist Tel'arn kills (Raid Finder Nighthold)
		ach(10962),	-- High Botanist Tel'arn kills (Normal Nighthold)
		ach(10963),	-- High Botanist Tel'arn kills (Heroic Nighthold)
		ach(10964),	-- High Botanist Tel'arn kills (Mythic Nighthold)
		ach(10965),	-- Tichondrius kills (Raid Finder Nighthold)
		ach(10966),	-- Tichondrius kills (Normal Nighthold)
		ach(10967),	-- Tichondrius kills (Heroic Nighthold)
		ach(10968),	-- Tichondrius kills (Mythic Nighthold)
		ach(10969),	-- Krosus kills (Raid Finder Nighthold)
		ach(10970),	-- Krosus kills (Normal Nighthold)
		ach(10971),	-- Krosus kills (Heroic Nighthold)
		ach(10972),	-- Krosus kills (Mythic Nighthold)
		ach(10973),	-- Grand Magistrix Elisande kills (Raid Finder Nighthold)
		ach(10974),	-- Grand Magistrix Elisande kills (Normal Nighthold)
		ach(10975),	-- Grand Magistrix Elisande kills (Heroic Nighthold)
		ach(10976),	-- Grand Magistrix Elisande kills (Mythic Nighthold)
		ach(10977),	-- Gul'dan kills (Raid Finder Nighthold)
		ach(10978),	-- Gul'dan kills (Normal Nighthold)
		ach(10979),	-- Gul'dan kills (Heroic Nighthold)
		ach(10980),	-- Gul'dan kills (Mythic Nighthold)
		ach(10981),	-- Legion dungeons completed (final boss defeated)
		ach(10982),	-- Legion dungeon bosses defeated
		ach(10983),	-- Legion dungeon boss defeated the most
		ach(10984),	-- Legion raids completed (final boss defeated)
		ach(10985),	-- Legion raid bosses defeated
		ach(10986),	-- Legion raid boss defeated the most
		ach(11063),	-- Hidden Tracking - 1+ Acquision Line Completed
		ach(11156),	-- Artifacts - Beast Master Hunter Hati Scale Info
		ach(11158),	-- Hidden Tracking - Order Hall Class Set - Artifact XP Earned
		ach(11174),	-- Hidden Tracking - 2+ Acquision Line Completed
		ach(11229),	-- Hidden Tracking - Appearance Unlock - Base - Color 4 - Death Knight, Blood
		ach(11230),	-- Hidden Tracking - Appearance Unlock - Base - Color 4 - Death Knight, Frost
		ach(11231),	-- Hidden Tracking - Appearance Unlock - Base - Color 4 - Death Knight, Unholy
		ach(11318),	-- Hidden Tracking - Artifact Knowledge Shipments Picked Up
		ach(11406),	-- Viz'aduum the Watcher kills (Return to Karazhan)
		ach(11407),	-- Odyn defeats (Raid Finder Trial of Valor)
		ach(11408),	-- Odyn defeats (Normal Trial of Valor)
		ach(11409),	-- Odyn defeats (Heroic Trial of Valor)
		ach(11410),	-- Odyn defeats (Mythic Trial of Valor)
		ach(11411),	-- Guarm kills (Raid Finder Trial of Valor)
		ach(11412),	-- Guarm kills (Normal Trial of Valor)
		ach(11413),	-- Guarm kills (Heroic Trial of Valor)
		ach(11414),	-- Guarm kills (Mythic Trial of Valor)
		ach(11415),	-- Helya kills (Raid Finder Trial of Valor)
		ach(11416),	-- Helya kills (Normal Trial of Valor)
		ach(11417),	-- Helya kills (Heroic Trial of Valor)
		ach(11418),	-- Helya kills (Mythic Trial of Valor)
		ach(11419),	-- <Hidden> Insurrection - Capper
		ach(11473),	-- 7.0 WQ Unlock <DND> \\ WQ Unlock <DND>
		ach(11547),	-- Karazhan Attunement <DND>
		ach(11552),	-- Follower Ability Tracking <DND>
		ach(11601),	-- 7.1 - Max Work Orders for Artifact Knowledge (Do Not Localize)
		ach(11606),	-- 7.1.5 - Max Catch Up Work Orders for Artifact Knowledge (Do Not Localize)
		ach(11632),	-- 7.1.5 25 Work Orders Sent
		ach(11633),	-- 7.2.0 40 Work Orders Sent
		ach(11657),	-- Hidden Tracking - Appearance Unlock - Challenge - Color 2 - Spec 1
		ach(11658),	-- Hidden Tracking - Appearance Unlock - Challenge - Color 2 - Spec 2
		ach(11659),	-- Hidden Tracking - Appearance Unlock - Challenge - Color 2 - Spec 3
		ach(11660),	-- Hidden Tracking - Appearance Unlock - Challenge - Color 2 - Spec 4
		ach(11661),	-- Hidden Tracking - Appearance Unlock - Challenge - Color 3 - Spec 1
		ach(11662),	-- Hidden Tracking - Appearance Unlock - Challenge - Color 3 - Spec 2
		ach(11663),	-- Hidden Tracking - Appearance Unlock - Challenge - Color 3 - Spec 3
		ach(11664),	-- Hidden Tracking - Appearance Unlock - Challenge - Color 3 - Spec 4
		ach(11665),	-- Hidden Tracking - Appearance Unlock - Challenge - Color 4 - Spec 1
		ach(11666),	-- Hidden Tracking - Appearance Unlock - Challenge - Color 4 - Spec 2
		ach(11667),	-- Hidden Tracking - Appearance Unlock - Challenge - Color 4 - Spec 3
		ach(11668),	-- Hidden Tracking - Appearance Unlock - Challenge - Color 4 - Spec 4
		ach(11847),	-- 7.2.0 50 Work Orders Sent
		ach(11851),	-- Unlocked Lunarwing Form (DNT)
		ach(11876),	-- Legion - PATCH 7.3 Quest Launch
		ach(11877),	-- Goroth kills (Raid Finder Tomb of Sargeras)
		ach(11878),	-- Goroth kills (Normal Tomb of Sargeras)
		ach(11879),	-- Goroth kills (Heroic Tomb of Sargeras)
		ach(11880),	-- Goroth kills (Mythic Tomb of Sargeras)
		ach(11881),	-- Demonic Inquisition kills (Raid Finder Tomb of Sargeras)
		ach(11882),	-- Demonic Inquisition kills (Normal Tomb of Sargeras)
		ach(11883),	-- Demonic Inquisition kills (Heroic Tomb of Sargeras)
		ach(11884),	-- Demonic Inquisition kills (Mythic Tomb of Sargeras)
		ach(11885),	-- Harjatan kills (Raid Finder Tomb of Sargeras)
		ach(11886),	-- Harjatan kills (Normal Tomb of Sargeras)
		ach(11887),	-- Harjatan kills (Heroic Tomb of Sargeras)
		ach(11888),	-- Harjatan kills (Mythic Tomb of Sargeras)
		ach(11889),	-- Sisters of the Moon kills (Raid Finder Tomb of Sargeras)
		ach(11890),	-- Sisters of the Moon kills (Normal Tomb of Sargeras)
		ach(11891),	-- Sisters of the Moon kills (Heroic Tomb of Sargeras)
		ach(11892),	-- Sisters of the Moon kills (Mythic Tomb of Sargeras)
		ach(11893),	-- Mistress Sassz'ine kills (Raid Finder Tomb of Sargeras)
		ach(11894),	-- Mistress Sassz'ine kills (Normal Tomb of Sargeras)
		ach(11895),	-- Mistress Sassz'ine kills (Heroic Tomb of Sargeras)
		ach(11896),	-- Mistress Sassz'ine kills (Mythic Tomb of Sargeras)
		ach(11897),	-- The Desolate Host kills (Raid Finder Tomb of Sargeras)
		ach(11898),	-- The Desolate Host kills (Normal Tomb of Sargeras)
		ach(11899),	-- The Desolate Host kills (Heroic Tomb of Sargeras)
		ach(11900),	-- The Desolate Host kills (Mythic Tomb of Sargeras)
		ach(11901),	-- Maiden of Vigilance kills (Raid Finder Tomb of Sargeras)
		ach(11902),	-- Maiden of Vigilance kills (Normal Tomb of Sargeras)
		ach(11903),	-- Maiden of Vigilance kills (Heroic Tomb of Sargeras)
		ach(11904),	-- Maiden of Vigilance kills (Mythic Tomb of Sargeras)
		ach(11905),	-- Fallen Avatar kills (Raid Finder Tomb of Sargeras)
		ach(11906),	-- Fallen Avatar kills (Normal Tomb of Sargeras)
		ach(11907),	-- Fallen Avatar kills (Heroic Tomb of Sargeras)
		ach(11908),	-- Fallen Avatar kills (Mythic Tomb of Sargeras)
		ach(11909),	-- Kil'jaeden kills (Raid Finder Tomb of Sargeras)
		ach(11910),	-- Kil'jaeden kills (Normal Tomb of Sargeras)
		ach(11911),	-- Kil'jaeden kills (Heroic Tomb of Sargeras)
		ach(11912),	-- Kil'jaeden kills (Mythic Tomb of Sargeras)
		ach(11954),	-- Garothi Worldbreaker kills (Normal Antorus, the Burning Throne)
		ach(11955),	-- Garothi Worldbreaker kills (Heroic Antorus, the Burning Throne)
		ach(11956),	-- Garothi Worldbreaker kills (Mythic Antorus, the Burning Throne)
		ach(11957),	-- Hounds of Sargeras kills (Normal Antorus, the Burning Throne)
		ach(11958),	-- Hounds of Sargeras kills (Heroic Antorus, the Burning Throne)
		ach(11959),	-- Hounds of Sargeras kills (Mythic Antorus, the Burning Throne)
		ach(11960),	-- Antoran High Command kills (Normal Antorus, the Burning Throne) \\ War Council kills (Normal Antorus, the Burning Throne)
		ach(11961),	-- Antoran High Command kills (Heroic Antorus, the Burning Throne) \\ War Council kills (Heroic Antorus, the Burning Throne)
		ach(11962),	-- Antoran High Command kills (Mythic Antorus, the Burning Throne) \\ War Council kills (Mythic Antorus, the Burning Throne)
		ach(11963),	-- Portal Keeper Hasabel kills (Normal Antorus, the Burning Throne)
		ach(11964),	-- Portal Keeper Hasabel kills (Heroic Antorus, the Burning Throne)
		ach(11965),	-- Portal Keeper Hasabel kills (Mythic Antorus, the Burning Throne)
		ach(11966),	-- Eonar defenses (Normal Antorus, the Burning Throne) \\ Eonar, the Lifebinder kills (Normal Antorus, the Burning Throne)
		ach(11967),	-- Eonar defenses (Heroic Antorus, the Burning Throne) \\ Eonar, the Lifebinder kills (Heroic Antorus, the Burning Throne)
		ach(11968),	-- Eonar defenses (Mythic Antorus, the Burning Throne) \\ Eonar, the Lifebinder kills (Mythic Antorus, the Burning Throne)
		ach(11969),	-- Imonar the Soulhunter kills (Normal Antorus, the Burning Throne)
		ach(11970),	-- Imonar the Soulhunter kills (Heroic Antorus, the Burning Throne)
		ach(11971),	-- Imonar the Soulhunter kills (Mythic Antorus, the Burning Throne)
		ach(11972),	-- Kin'garoth kills (Normal Antorus, the Burning Throne)
		ach(11973),	-- Kin'garoth kills (Heroic Antorus, the Burning Throne)
		ach(11974),	-- Kin'garoth kills (Mythic Antorus, the Burning Throne)
		ach(11975),	-- Varimathras kills (Normal Antorus, the Burning Throne)
		ach(11976),	-- Varimathras kills (Heroic Antorus, the Burning Throne)
		ach(11977),	-- Varimathras kills (Mythic Antorus, the Burning Throne)
		ach(11978),	-- The Coven of Shivarra kills (Normal Antorus, the Burning Throne)
		ach(11979),	-- The Coven of Shivarra kills (Heroic Antorus, the Burning Throne)
		ach(11980),	-- The Coven of Shivarra kills (Mythic Antorus, the Burning Throne)
		ach(11981),	-- Aggramar kills (Normal Antorus, the Burning Throne)
		ach(11982),	-- Aggramar kills (Heroic Antorus, the Burning Throne)
		ach(11983),	-- Aggramar kills (Mythic Antorus, the Burning Throne)
		ach(11984),	-- Argus the Unmaker kills (Normal Antorus, the Burning Throne)
		ach(11985),	-- Argus the Unmaker kills (Heroic Antorus, the Burning Throne)
		ach(11986),	-- Argus the Unmaker kills (Mythic Antorus, the Burning Throne)
		-- 7.3.0.24500
		ach(12015),	-- BS Unlock <DND>
		-- 7.3.0.24651
		ach(12082),	-- Argus - Block 1 Unlock <DND>
		ach(12085),	-- Argus - Block 2 Unlock <DND>
		ach(12086),	-- Argus - Block 3 Unlock <DND>
		-- 7.3.0.24727
		ach(12117),	-- Garothi Worldbreaker kills (Raid Finder Antorus, the Burning Throne)
		ach(12118),	-- Hounds of Sargeras kills (Raid Finder Antorus, the Burning Throne)
		ach(12119),	-- Antoran High Command kills (Raid Finder Antorus, the Burning Throne)
		ach(12120),	-- Portal Keeper Hasabel kills (Raid Finder Antorus, the Burning Throne)
		ach(12121),	-- Eonar defenses (Raid Finder Antorus, the Burning Throne)
		ach(12122),	-- Imonar the Soulhunter kills (Raid Finder Antorus, the Burning Throne)
		ach(12123),	-- Kin'garoth kills (Raid Finder Antorus, the Burning Throne)
		ach(12124),	-- Varimathras kills (Raid Finder Antorus, the Burning Throne)
		ach(12125),	-- The Coven of Shivarra kills (Raid Finder Antorus, the Burning Throne)
		ach(12126),	-- Aggramar kills (Raid Finder Antorus, the Burning Throne)
		ach(12127),	-- Argus the Unmaker kills (Raid Finder Antorus, the Burning Throne)
		-- 7.3.0.24829
		ach(12184),	-- Netherlight Crucible - At Least 1 Relic Power Unlocked
		-- 7.3.2.25326
		ach(12266),	-- Argus Raid - Argus the Unmaker Defeated
		-- 7.3.5.25928
		ach(12445),	-- Allied Races: Highmountain Tauren Unlock Requirements
		ach(12446),	-- Allied Races: Nightborne Unlock Requirements
		ach(12447),	-- Allied Races: Void Elf Unlock Requirements
		ach(12448),	-- Allied Races: Lightforged Draenei Unlock Requirements
		ach(12450),	-- Allied Races: Void Elf (Hidden Character Achievement)
		ach(12451),	-- Allied Races: Lightforged Draenei (Hidden Character Achievement)
		ach(12452),	-- Allied Races: Highmountain Tauren (Hidden Character Achievement)
		ach(12453),	-- Allied Races: Nightborne (Hidden Character Achievement)
	}),
	expansion(EXPANSION.BFA, {
		-- 8.0.1
		expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
			-- 8.0.1.25976
			ach(12472),	-- <Hidden> Zandalar Intro Breadcrumb Launch
			-- 8.0.1.26287
			ach(12516),	-- Allied Races: Dark Iron Dwarf (Hidden Character Achievement)
			ach(12517),	-- Allied Races: Mag'har Orc (Hidden Character Achievement)
			ach(12608),	-- 8.0 WQ Unlock - Alliance <DND>
			ach(12609),	-- 8.0 WQ Unlock - Horde <DND>
			ach(12610),	-- Mephistroth kills (Heroic Cathedral of Eternal Night)
			ach(12611),	-- Mephistroth kills (Mythic Cathedral of Eternal Night)
			ach(12612),	-- L'ura kills (Heroic Seat of the Triumvirate)
			ach(12613),	-- L'ura kills (Mythic Seat of the Triumvirate)
			-- 8.0.1.26567
			ach(12710),	-- Seething Shore battles
			ach(12712),	-- Seething Shore victories
			ach(12713),	-- Rated Seething Shore battles
			ach(12714),	-- Rated Seething Shore victories
			ach(12720),	-- Yazma kills (Normal Atal'Dazar)
			ach(12728),	-- Unbound Abomination kills (Normal The Underrot) \\ Unbound Abomination (Normal The Underrot)
			ach(12729),	-- Unbound Abomination kills (Heroic The Underrot) \\ Unbound Abomination (Heroic The Underrot)
			ach(12745),	-- Unbound Abomination kills (Mythic The Underrot) \\ Unbound Abomination (Mythic The Underrot)
			ach(12748),	-- Yazma kills (Heroic Atal'Dazar)
			ach(12749),	-- Yazma kills (Mythic Atal'Dazar)
			ach(12750),	-- Harlan Sweete kills (Normal Freehold) \\ Harlan Sweete (Normal Freehold)
			ach(12751),	-- Harlan Sweete kills (Heroic Freehold) \\ Harlan Sweete (Heroic Freehold)
			ach(12752),	-- Harlan Sweete kills (Mythic Freehold) \\ Harlan Sweete (Mythic Freehold)
			ach(12763),	-- Dazar, The First King kills (Mythic King's Rest) \\ Dazar, The First King  (Mythic King's Rest)
			ach(12766),	-- Vol'zith the Whisperer kills (Normal Shrine of the Storm) \\ Vol'zith the Whisperer (Normal Shrine of the Storm)
			ach(12767),	-- Vol'zith the Whisperer kills (Heroic Shrine of the Storm) \\ Vol'zith the Whisperer (Heroic Shrine of the Storm)
			ach(12768),	-- Vol'zith the Whisperer kills (Mythic Shrine of the Storm) \\ Vol'zith the Whisperer (Mythic Shrine of the Storm)
			-- 8.0.1.26624
			ach(12773),	-- Viq'Goth kills (Mythic Siege of Boralus)
			ach(12774),	-- Avatar of Sethraliss kills (Normal Temple of Sethraliss)
			ach(12775),	-- Avatar of Sethraliss kills (Heroic Temple of Sethraliss)
			ach(12776),	-- Avatar of Sethraliss kills (Mythic Temple of Sethraliss)
			ach(12777),	-- Mogul Razdunk kills (Normal The MOTHERLODE!!)
			ach(12778),	-- Mogul Razdunk kills (Heroic The MOTHERLODE!!)
			ach(12779),	-- Mogul Razdunk kills (Mythic The MOTHERLODE!!)
			ach(12780),	-- Overseer Korgus kills (Normal Tol Dagor)
			ach(12781),	-- Overseer Korgus kills (Heroic Tol Dagor)
			ach(12782),	-- Overseer Korgus kills (Mythic Tol Dagor)
			ach(12783),	-- Gorak Tul kills (Normal Waycrest Manor)
			ach(12784),	-- Gorak Tul kills (Heroic Waycrest Manor)
			ach(12785),	-- Gorak Tul kills (Mythic Waycrest Manor)
			ach(12786),	-- Taloc kills (Raid Finder Uldir)
			ach(12787),	-- Taloc kills (Normal Uldir)
			ach(12788),	-- Taloc kills (Heroic Uldir)
			ach(12789),	-- Taloc kills (Mythic Uldir)
			ach(12790),	-- MOTHER kills (Raid Finder Uldir)
			ach(12791),	-- MOTHER kills (Normal Uldir)
			ach(12792),	-- MOTHER kills (Heroic Uldir)
			ach(12793),	-- MOTHER kills (Mythic Uldir)
			ach(12794),	-- Fetid Devourer kills (Raid Finder Uldir)
			ach(12795),	-- Fetid Devourer kills (Normal Uldir)
			ach(12796),	-- Fetid Devourer kills (Heroic Uldir)
			ach(12797),	-- Fetid Devourer kills (Mythic Uldir)
			ach(12798),	-- Zek'voz, Herald of N'Zoth kills (Raid Finder Uldir) \\ Zek'voz, Herald of N'zoth kills (Raid Finder Uldir)
			ach(12799),	-- Zek'voz, Herald of N'Zoth kills (Normal Uldir) \\ Zek'voz, Herald of N'zoth kills (Normal Uldir)
			ach(12800),	-- Zek'voz, Herald of N'Zoth kills (Heroic Uldir) \\ Zek'voz, Herald of N'zoth kills (Heroic Uldir)
			ach(12801),	-- Zek'voz, Herald of N'Zoth kills (Mythic Uldir) \\ Zek'voz, Herald of N'zoth kills (Mythic Uldir)
			ach(12802),	-- Vectis kills (Raid Finder Uldir)
			ach(12803),	-- Vectis kills (Normal Uldir)
			ach(12804),	-- Vectis kills (Heroic Uldir)
			ach(12805),	-- Vectis kills (Mythic Uldir)
			ach(12808),	-- Zul, Reborn kills (Raid Finder Uldir)
			ach(12809),	-- Zul, Reborn kills (Normal Uldir)
			ach(12810),	-- Zul, Reborn kills (Heroic Uldir)
			ach(12811),	-- Zul, Reborn kills (Mythic Uldir)
			ach(12813),	-- Mythrax the Unraveler kills (Raid Finder Uldir)
			ach(12814),	-- Mythrax the Unraveler kills (Normal Uldir)
			ach(12815),	-- Mythrax the Unraveler kills (Heroic Uldir)
			ach(12816),	-- Mythrax the Unraveler kills (Mythic Uldir)
			ach(12817),	-- G'huun kills (Raid Finder Uldir)
			ach(12818),	-- G'huun kills (Normal Uldir)
			ach(12819),	-- G'huun kills (Heroic Uldir)
			ach(12820),	-- G'huun kills (Mythic Uldir)
			ach(12821),	-- Dueler's Guild victories
			ach(12926),	-- Artifact Power Earned By The Heart of Azeroth
			-- 8.0.1.26707
			ach(13063),	-- Hidden Tracking - 110 Class Trial Quest End
			ach(13065),	-- <Hidden> War Campaign Auto-Launch - Foothold 2
			ach(13066),	-- <Hidden> War Campaign Auto-Launch - Islands
			ach(13067),	-- <Hidden> War Campaign Auto-Launch - Foothold 3
			ach(13068),	-- <Hidden> War Campaign Auto-Launch - World Quests
			ach(13069),	-- <Hidden> War Campaign Auto-Launch - Chapter 02
			ach(13070),	-- <Hidden> War Campaign Auto-Launch - Chapter 03
			ach(13071),	-- <Hidden> War Campaign Auto-Launch - Chapter 04
			ach(13072),	-- <Hidden> War Campaign Auto-Launch - Chapter 05
			ach(13073),	-- <Hidden> War Campaign Auto-Launch - Warfronts
			ach(13089),	-- Allied Races: Dark Iron Dwarf Unlock Requirements
			ach(13092),	-- Allied Races: Mag'har Orc Unlock Requirements
			-- 8.0.1.26788
			ach(13136),	-- Dread Combatant
			ach(13139),	-- 8.0 Lordaeron Skip Unlock - Alliance \\ 8.0 Lordaeron Unlock - Alliance
			ach(13140),	-- 8.0 Lordaeron Skip Unlock - Horde \\ 8.0 Lordaeron Unlock - Horde
			-- 8.0.1.26903
			ach(13147),	-- 8.0 Darkshore Skip Unlock - Alliance
			ach(13148),	-- 8.0 Darkshore Skip Unlock - Horde
			ach(13149),	-- [DNT] Player Expansion Level is "Battle for Azeroth"
			-- 8.0.1.26926
			ach(13137),	-- Dread Combatant
			-- 8.0.1.26970
			ach(13152),	-- <Hidden> Magni Heart of Azeroth Intro Auto-Launch (DNT)
			-- 8.0.1.27026
			ach(13153),	-- 8.0 Lordaeron Push - Alliance and Horde [CRITERIA 66724 and SPELL 273245 REMOVED] \\ 8.0 Lordaeron Push - Alliance and Horde \\ 8.0 Lordaeron Push - Alliance
			ach(13154),	-- 8.0 Lordaeron Push - Horde (UNUSED DELETE ME) \\ 8.0 Lordaeron Push - Horde
			ach(13155),	-- 8.0 Teldrassil Push - Horde and Alliance
			-- 8.0.1.27219
			ach(13166),	-- Remove Alchemy Anti-Venoms
			ach(13167),	-- Remove Tailoring Bandages
			ach(13169),	-- Remove Tailoring Legion Luffa
			ach(13170),	-- Remove Inscription Recipes
		})),

		-- 8.1.0
		expansion(EXPANSION.BFA, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {
			-- 8.1.0.27934
			ach(13172),	-- 8.0.1 Micro Hubs - A - Mistvine Ledge - Unlocked (KMS)
			ach(13173),	-- 8.0.1 Micro Hubs - A - Mugamba Overlook - Unlocked (KMS)
			ach(13174),	-- 8.0.1 Micro Hubs - A - Veiled Grotto - Unlocked (KMS)
			ach(13175),	-- 8.0.1 Micro Hubs - A - Verdant Hollow - Unlocked (KMS)
			ach(13177),	-- 8.0.1 Micro Hubs - A - Grimwatt's Crash - Unlocked (KMS)
			ach(13178),	-- 8.0.1 Micro Hubs - A - Vulture's Nest - Unlocked (KMS)
			ach(13179),	-- 8.0.1 Micro Hubs - H - Mudfisher Cove - Unlocked (KMS)
			ach(13180),	-- 8.0.1 Micro Hubs - H - Swiftwind Post - Unlocked (KMS)
			ach(13181),	-- 8.0.1 Micro Hubs - H - Hillcrest Pasture - Unlocked (KMS)
			ach(13182),	-- 8.0.1 Micro Hubs - H - Stonetusk Watch - Unlocked (KMS)
			ach(13183),	-- 8.0.1 Micro Hubs - H - Windfall Cavern - Unlocked (KMS)
			ach(13184),	-- 8.0.1 Micro Hubs - H - Stonefist Watch - Unlocked (KMS)
			ach(13185),	-- 8.0.1 Micro Hubs - H - Wolf's Den - Unlocked (KMS)
			ach(13197),	-- <Hidden> War Campaign - Chapter 04 Complete (H)
			ach(13198),	-- <Hidden> War Campaign - Chapter 04 Complete (A)
			ach(13227),	-- Sinister Combatant
			ach(13228),	-- Sinister Combatant
			ach(13254),	-- Defeat 2 Commanders (Horde) (Hidden)
			ach(13255),	-- Defeat 2 Commanders (Alliance) (Hidden)
			ach(13258),	-- <Hidden> Kings' Rest unlocked
			ach(13259),	-- <Hidden> Siege of Boralus unlocked
			-- 8.1.0.28202
			ach(13328),	-- Champion of the Light kills (Raid Finder Battle of Dazar'alor)
			ach(13329),	-- Champion of the Light kills (Normal Battle of Dazar'alor)
			ach(13330),	-- Champion of the Light kills (Heroic Battle of Dazar'alor)
			ach(13331),	-- Champion of the Light kills (Mythic Battle of Dazar'alor)
			ach(13332),	-- Grong kills (Raid Finder Battle of Dazar'alor) \\ King Grong kills (Raid Finder Battle of Dazar'alor)
			ach(13333),	-- Grong kills (Normal Battle of Dazar'alor) \\ King Grong kills (Normal Battle of Dazar'alor)
			ach(13334),	-- Grong kills (Heroic Battle of Dazar'alor) \\ King Grong kills (Heroic Battle of Dazar'alor)
			ach(13336),	-- Grong kills (Mythic Battle of Dazar'alor) \\ King Grong kills (Mythic Battle of Dazar'alor)
			ach(13344),	-- Grong the Revenant kills (Raid Finder Battle of Dazar'alor) \\ Grong the Revanent kills (Raid Finder Battle of Dazar'alor)
			ach(13346),	-- Grong the Revenant kills (Normal Battle of Dazar'alor) \\ Grong the Revanent kills (Normal Battle of Dazar'alor)
			ach(13347),	-- Grong the Revenant kills (Heroic Battle of Dazar'alor) \\ Grong the Revanent kills (Heroic Battle of Dazar'alor)
			ach(13348),	-- Grong the Revenant kills (Mythic Battle of Dazar'alor) \\ Grong the Revanent kills (Mythic Battle of Dazar'alor)
			ach(13349),	-- Grimfang and Firecaller kills (Raid Finder Battle of Dazar'alor)
			ach(13350),	-- Grimfang and Firecaller kills (Normal Battle of Dazar'alor)
			ach(13351),	-- Grimfang and Firecaller kills (Heroic Battle of Dazar'alor)
			ach(13353),	-- Grimfang and Firecaller kills (Mythic Battle of Dazar'alor)
			ach(13354),	-- Flamefist and the Illuminated kills (Raid Finder Battle of Dazar'alor)
			ach(13355),	-- Flamefist and the Illuminated kills (Normal Battle of Dazar'alor)
			ach(13356),	-- Flamefist and the Illuminated kills (Heroic Battle of Dazar'alor)
			ach(13357),	-- Flamefist and the Illuminated kills (Mythic Battle of Dazar'alor)
			ach(13358),	-- Opulence kills (Raid Finder Battle of Dazar'alor) \\ Treasure Guardian kills (Raid Finder Battle of Dazar'alor)
			ach(13359),	-- Opulence kills (Normal Battle of Dazar'alor) \\ Treasure Guardian kills (Normal Battle of Dazar'alor)
			ach(13361),	-- Opulence kills (Heroic Battle of Dazar'alor) \\ Treasure Guardian kills (Heroic Battle of Dazar'alor)
			ach(13362),	-- Opulence kills (Mythic Battle of Dazar'alor) \\ Treasure Guardian kills (Mythic Battle of Dazar'alor)
			ach(13363),	-- Conclave of the Chosen kills (Raid Finder Battle of Dazar'alor)
			ach(13364),	-- Conclave of the Chosen kills (Normal Battle of Dazar'alor)
			ach(13365),	-- Conclave of the Chosen kills (Heroic Battle of Dazar'alor)
			ach(13366),	-- Conclave of the Chosen kills (Mythic Battle of Dazar'alor)
			ach(13367),	-- King Rastakhan kills (Raid Finder Battle of Dazar'alor)
			ach(13368),	-- King Rastakhan kills (Normal Battle of Dazar'alor)
			ach(13369),	-- King Rastakhan kills (Heroic Battle of Dazar'alor)
			ach(13370),	-- King Rastakhan kills (Mythic Battle of Dazar'alor)
			ach(13371),	-- Mekkatorque kills (Raid Finder Battle of Dazar'alor)
			ach(13372),	-- Mekkatorque kills (Normal Battle of Dazar'alor)
			ach(13373),	-- Mekkatorque kills (Heroic Battle of Dazar'alor)
			ach(13374),	-- Mekkatorque kills (Mythic Battle of Dazar'alor)
			ach(13375),	-- Stormwall Blockade kills (Raid Finder Battle of Dazar'alor)
			ach(13376),	-- Stormwall Blockade kills (Normal Battle of Dazar'alor)
			ach(13377),	-- Stormwall Blockade kills (Heroic Battle of Dazar'alor)
			ach(13378),	-- Stormwall Blockade kills (Mythic Battle of Dazar'alor)
			ach(13379),	-- Lady Jaina Proudmoore kills (Raid Finder Battle of Dazar'alor)
			ach(13380),	-- Lady Jaina Proudmoore kills (Normal Battle of Dazar'alor)
			ach(13381),	-- Lady Jaina Proudmoore kills (Heroic Battle of Dazar'alor)
			ach(13382),	-- Lady Jaina Proudmoore kills (Mythic Battle of Dazar'alor)
			ach(13404),	-- The Restless Cabal kills (Raid Finder Crucible of Storms)
			ach(13405),	-- The Restless Cabal kills (Normal Crucible of Storms)
			ach(13406),	-- The Restless Cabal kills (Heroic Crucible of Storms)
			ach(13407),	-- The Restless Cabal kills (Mythic Crucible of Storms)
			ach(13408),	-- Uu'nat, Harbinger of the Void kills (Raid Finder Crucible of Storms)
			ach(13411),	-- Uu'nat, Harbinger of the Void kills (Normal Crucible of Storms)
			ach(13412),	-- Uu'nat, Harbinger of the Void kills (Heroic Crucible of Storms)
			ach(13413),	-- Uu'nat, Harbinger of the Void kills (Mythic Crucible of Storms)
			-- 8.1.0.28616
			ach(13452),	-- Vicious Saddle (1) \\ Sinister Saddle
			ach(13453),	-- Vicious Saddle (1) \\ Sinister Saddle
		})),

		-- 8.1.5
		expansion(EXPANSION.BFA, patch(1,5), bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {
			-- 8.1.5.28938
			ach(13156),	-- Allied Races: Zandalari Troll (Hidden Character Achievement)
			ach(13157),	-- Allied Races: Kul Tiran (Hidden Character Achievement)
			ach(13159),	-- Allied Races: Zandalari Troll Unlock Requirements
			ach(13160),	-- Allied Races: Kul Tiran Unlock Requirements
			-- 8.1.5.29141
			ach(13488),	-- In Teldrassil's Shadow (Hidden Character Achievement)
			-- 8.1.5.29220
			ach(13509),	-- The Speaker's Resolve
			-- 8.1.5.29558
			ach(13521),	-- Vicious Saddle (2)
			ach(13522),	-- Vicious Saddle (3)
			ach(13523),	-- Vicious Saddle (4)
			ach(13524),	-- Vicious Saddle (5)
			ach(13525),	-- Vicious Saddle (6)
			ach(13526),	-- Vicious Saddle (7)
			ach(13527),	-- Vicious Saddle (8)
			ach(13528),	-- Vicious Saddle (9)
			ach(13529),	-- Vicious Saddle (10)
			ach(13530),	-- Vicious Saddle (2)
			ach(13531),	-- Vicious Saddle (3)
			ach(13532),	-- Vicious Saddle (4)
			ach(13533),	-- Vicious Saddle (5)
			ach(13534),	-- Vicious Saddle (6)
			ach(13535),	-- Vicious Saddle (7)
			ach(13536),	-- Vicious Saddle (8)
			ach(13537),	-- Vicious Saddle (9)
			ach(13538),	-- Vicious Saddle (10)
			ach(13539),	-- 8.1.5 - Zandalari Troll - Loa Selected
		})),

		-- 8.2.0
		expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
			-- 8.2.0.30080
			ach(13544),	-- Essential Empowerment
			ach(13552),	-- 8.2 BfA - PATCH Quest Launch
			ach(13587),	-- Abyssal Commander Sivara kills (Raid Finder Eternal Palace)
			ach(13588),	-- Abyssal Commander Sivara kills (Normal Eternal Palace)
			ach(13589),	-- Abyssal Commander Sivara kills (Heroic Eternal Palace)
			ach(13590),	-- Abyssal Commander Sivara kills (Mythic Eternal Palace)
			ach(13591),	-- Blackwater Behemoth kills (Raid Finder Eternal Palace) \\ Underwater Monstrosity kills (Raid Finder Eternal Palace)
			ach(13592),	-- Blackwater Behemoth kills (Normal Eternal Palace) \\ Underwater Monstrosity kills (Normal Eternal Palace)
			ach(13593),	-- Blackwater Behemoth kills (Heroic Eternal Palace) \\ Underwater Monstrosity kills (Heroic Eternal Palace)
			ach(13594),	-- Blackwater Behemoth kills (Mythic Eternal Palace) \\ Underwater Monstrosity kills (Mythic Eternal Palace)
			ach(13595),	-- Radiance of Azshara kills (Raid Finder Eternal Palace) \\ Rage of Azshara kills (Raid Finder Eternal Palace)
			ach(13596),	-- Radiance of Azshara kills (Normal Eternal Palace) \\ Rage of Azshara kills (Normal Eternal Palace)
			ach(13597),	-- Radiance of Azshara kills (Heroic Eternal Palace) \\ Rage of Azshara kills (Heroic Eternal Palace)
			ach(13598),	-- Radiance of Azshara kills (Mythic Eternal Palace) \\ Rage of Azshara kills (Mythic Eternal Palace)
			ach(13600),	-- Lady Ashvane kills (Raid Finder Eternal Palace) \\ Priscilla Ashvane kills (Raid Finder Eternal Palace)
			ach(13601),	-- Lady Ashvane kills (Normal Eternal Palace) \\ Priscilla Ashvane kills (Normal Eternal Palace)
			ach(13602),	-- Lady Ashvane kills (Heroic Eternal Palace) \\ Priscilla Ashvane kills (Heroic Eternal Palace)
			ach(13603),	-- Lady Ashvane kills (Mythic Eternal Palace) \\ Priscilla Ashvane kills (Mythic Eternal Palace)
			ach(13604),	-- Orgozoa kills (Raid Finder Eternal Palace)
			ach(13605),	-- Orgozoa kills (Normal Eternal Palace)
			ach(13606),	-- Orgozoa kills (Heroic Eternal Palace)
			ach(13607),	-- Orgozoa kills (Mythic Eternal Palace)
			ach(13608),	-- The Queen's Court kills (Raid Finder Eternal Palace)
			ach(13609),	-- The Queen's Court kills (Normal Eternal Palace)
			ach(13610),	-- The Queen's Court kills (Heroic Eternal Palace)
			ach(13611),	-- The Queen's Court kills (Mythic Eternal Palace)
			ach(13612),	-- Za'qul kills (Raid Finder Eternal Palace)
			ach(13613),	-- Za'qul kills (Normal Eternal Palace)
			ach(13614),	-- Za'qul kills (Heroic Eternal Palace)
			ach(13615),	-- Za'qul kills (Mythic Eternal Palace)
			-- 8.2.0.30168
			ach(13616),	-- Queen Azshara kills (Raid Finder Eternal Palace)
			ach(13617),	-- Queen Azshara kills (Normal Eternal Palace)
			ach(13618),	-- Queen Azshara kills (Heroic Eternal Palace)
			ach(13619),	-- Queen Azshara kills (Mythic Eternal Palace) \\ Queen Azshara kills Mythic Eternal Palace)
			ach(13620),	-- King Mechagon kills (Mythic Operation: Mechagon)
			-- 8.2.0.30262
			ach(13636),	-- Notorious Combatant
			ach(13637),	-- Notorious Combatant
			ach(13688),	-- Battle for Wintergrasp victories
			ach(13689),	-- Solesa Naksu [DNT]
			-- 8.2.0.30430
			ach(13741),	-- <Hidden> Nazjatar - Flight Master Whistle Upgrade - Alliance (DNT) \\ <Hidden> Nazjatar - Completed Quest 1 of Week 3 - Alliance (DNT)
			ach(13742),	-- <Hidden> Nazjatar - Flight Master Whistle Upgrade - Horde (DNT) \\ <Hidden> Nazjatar - Completed Quest 1 of Week 3 - Horde (DNT)
			-- 8.2.0.30495
			ach(13812),	-- Vicious Saddle (11)
			ach(13813),	-- Vicious Saddle (12)
			ach(13814),	-- Vicious Saddle (13)
			ach(13815),	-- Vicious Saddle (14)
			ach(13816),	-- Vicious Saddle (15)
			ach(13817),	-- Vicious Saddle (16)
			ach(13818),	-- Vicious Saddle (17)
			ach(13819),	-- Vicious Saddle (18)
			ach(13820),	-- Vicious Saddle (19)
			ach(13821),	-- Vicious Saddle (20)
			ach(13822),	-- Vicious Saddle (11)
			ach(13823),	-- Vicious Saddle (12)
			ach(13824),	-- Vicious Saddle (13)
			ach(13825),	-- Vicious Saddle (14)
			ach(13826),	-- Vicious Saddle (15)
			ach(13827),	-- Vicious Saddle (16)
			ach(13828),	-- Vicious Saddle (17)
			ach(13829),	-- Vicious Saddle (18)
			ach(13830),	-- Vicious Saddle (19)
			ach(13831),	-- Vicious Saddle (20)
			-- 8.2.0.31229
			ach(13907),	-- Mugambala matches
			ach(13908),	-- Mugambala victories
			ach(13909),	-- The Robodrome matches
			ach(13910),	-- The Robodrome victories
			ach(13911),	-- Black Rook Hold Arena matches
			ach(13912),	-- Black Rook Hold Arena victories
			ach(13913),	-- Ashamane's Fall matches
			ach(13914),	-- Ashamane's Fall victories
			ach(13915),	-- Hook Point victories
			ach(13916),	-- Hook Point matches
		})),

		-- 8.3.0
		expansion(EXPANSION.BFA, patch(3,0), bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0 } }, {
			-- 8.3.0.32044
			ach(13207),	-- Allied Races: Vulpera (Hidden Character Achievement)
			ach(13933),	-- Vicious Saddle (21)
			ach(13934),	-- Vicious Saddle (22)
			ach(13935),	-- Vicious Saddle (23)
			ach(13936),	-- Vicious Saddle (24)
			ach(13937),	-- Vicious Saddle (25)
			ach(13938),	-- Vicious Saddle (26)
			ach(13939),	-- Vicious Saddle (27)
			ach(13940),	-- Vicious Saddle (28)
			ach(13941),	-- Vicious Saddle (29)
			ach(13942),	-- Vicious Saddle (30)
			ach(13943),	-- Corrupted Combatant
			ach(13944),	-- Corrupted Combatant
			ach(13945),	-- Vicious Saddle (21)
			ach(13946),	-- Vicious Saddle (22)
			ach(13947),	-- Vicious Saddle (23)
			ach(13948),	-- Vicious Saddle (24)
			ach(13949),	-- Vicious Saddle (25)
			ach(13950),	-- Vicious Saddle (26)
			ach(13951),	-- Vicious Saddle (27)
			ach(13952),	-- Vicious Saddle (28)
			ach(13953),	-- Vicious Saddle (29)
			ach(13954),	-- Vicious Saddle (30)
			ach(13991),	-- Allied Races: Mechagnome Unlock Requirements
			ach(13993),	-- Allied Races: Vulpera Unlock Requirements
			ach(14012),	-- Allied Races: Mechagnome (Hidden Character Achievement)
			-- 8.3.0.32272
			ach(14056),	-- King Mechagon kills (Heroic Mechagon - Workshop)
			ach(14057),	-- HK-8 Aerial Opression Unit kills (Heroic Mechagon - Junkyard)
			-- 8.3.0.32414
			ach(14073),	-- Faceless Mask of the Pained
			ach(14074),	-- Faceless Mask of the Dark Imagination
			ach(14075),	-- Faceless Mask of the Burned Bridge
			ach(14076),	-- Faceless Mask of the Daredevil
			ach(14077),	-- Faceless Mask of the Long Night
			ach(14078),	-- Wrathion, the Black Emperor kills (Raid Finder Ny'alotha, the Waking City)
			ach(14079),	-- Wrathion, the Black Emperor kills (Normal Ny'alotha, the Waking City)
			ach(14080),	-- Wrathion, the Black Emperor kills (Heroic Ny'alotha, the Waking City)
			ach(14082),	-- Wrathion, the Black Emperor kills (Mythic Ny'alotha, the Waking City)
			ach(14089),	-- Maut kills (Raid Finder Ny'alotha, the Waking City)
			ach(14091),	-- Maut kills (Normal Ny'alotha, the Waking City)
			ach(14093),	-- Maut kills (Heroic Ny'alotha, the Waking City)
			ach(14094),	-- Maut kills (Mythic Ny'alotha, the Waking City)
			ach(14095),	-- The Prophet Skitra kills (Raid Finder Ny'alotha, the Waking City)
			ach(14096),	-- The Prophet Skitra kills (Normal Ny'alotha, the Waking City)
			ach(14097),	-- The Prophet Skitra kills (Heroic Ny'alotha, the Waking City)
			ach(14098),	-- The Prophet Skitra kills (Mythic Ny'alotha, the Waking City)
			ach(14101),	-- Dark Inquisitor Xanesh kills (Raid Finder Ny'alotha, the Waking City)
			ach(14102),	-- Dark Inquisitor Xanesh kills (Normal Ny'alotha, the Waking City)
			ach(14104),	-- Dark Inquisitor Xanesh kills (Heroic Ny'alotha, the Waking City)
			ach(14105),	-- Dark Inquisitor Xanesh kills (Mythic Ny'alotha, the Waking City)
			ach(14107),	-- The Hivemind kills (Raid Finder Ny'alotha, the Waking City)
			ach(14108),	-- The Hivemind kills (Nomral Ny'alotha, the Waking City)
			ach(14109),	-- The Hivemind kills (Heroic Ny'alotha, the Waking City)
			ach(14110),	-- The Hivemind kills (Mythic Ny'alotha, the Waking City)
			ach(14111),	-- Shad'har the Insatiable kills (Raid Finder Ny'alotha, the Waking City)
			ach(14112),	-- Shad'har the Insatiable kills (Normal Ny'alotha, the Waking City)
			ach(14114),	-- Shad'har the Insatiable kills (Heroic Ny'alotha, the Waking City)
			ach(14115),	-- Shad'har the Insatiable kills (Mythic Ny'alotha, the Waking City)
			ach(14117),	-- Drest'agath kills (Raid Finder Ny'alotha, the Waking City)
			ach(14118),	-- Drest'agath kills (Normal Ny'alotha, the Waking City)
			ach(14119),	-- Drest'agath kills (Heroic Ny'alotha, the Waking City)
			ach(14120),	-- Drest'agath kills (Mythic Ny'alotha, the Waking City)
			ach(14123),	-- Vexiona kills (Raid Finder Ny'alotha, the Waking City)
			ach(14124),	-- Vexiona kills (Normal Ny'alotha, the Waking City)
			ach(14125),	-- Vexiona kills (Heroic Ny'alotha, the Waking City)
			ach(14126),	-- Vexiona kills (Mythic Ny'alotha, the Waking City)
			ach(14127),	-- Ra-den the Despoiled kills (Raid Finder Ny'alotha, the Waking City)
			ach(14128),	-- Ra-den the Despoiled kills (Normal Ny'alotha, the Waking City)
			ach(14129),	-- Ra-den the Despoiled kills (Heroic Ny'alotha, the Waking City)
			ach(14130),	-- Ra-den the Despoiled kills (Mythic Ny'alotha, the Waking City)
			ach(14131),	-- Carapace of N'Zoth kills (Raid Finder Ny'alotha, the Waking City)
			ach(14132),	-- Carapace of N'Zoth kills (Normal Ny'alotha, the Waking City)
			ach(14133),	-- Carapace of N'Zoth kills (Heroic Ny'alotha, the Waking City)
			ach(14134),	-- Carapace of N'Zoth kills (Mythic Ny'alotha, the Waking City)
			ach(14135),	-- N'Zoth the Corruptor kills (Raid Finder Ny'alotha, the Waking City) \\ N'Zoth, the Corruptor kills (Raid Finder Ny'alotha, the Waking City)
			ach(14136),	-- N'Zoth the Corruptor kills (Normal Ny'alotha, the Waking City) \\ N'Zoth, the Corruptor kills (Normal Ny'alotha, the Waking City)
			ach(14137),	-- N'Zoth the Corruptor kills (Heroic Ny'alotha, the Waking City) \\ N'Zoth, the Corruptor kills (Heroic Ny'alotha, the Waking City)
			ach(14138),	-- N'Zoth the Corruptor kills (Mythic Ny'alotha, the Waking City) \\ N'Zoth, the Corruptor kills (Mythic Ny'alotha, the Waking City)
			-- 8.3.0.32712
			ach(14185),	-- 8.3 Patch Quest Launch
			ach(14189),	-- Joined Shadowy Figures <DND>
		})),

		-- 8.3.7
		expansion(EXPANSION.BFA, patch(3,7), bubbleDownSelf({ ["timeline"] = { ADDED_8_3_7 } }, {
			-- 8.3.7.34872
			ach(14207),	-- Il'gynoth, Corruption Reborn (Raid Finder Ny'alotha, the Waking City)
			ach(14208),	-- Il'gynoth, Corruption Reborn (Normal Ny'alotha, the Waking City)
			ach(14210),	-- Il'gynoth, Corruption Reborn (Heroic Ny'alotha, the Waking City)
			ach(14211),	-- Il'gynoth, Corruption Reborn (Mythic Ny'alotha, the Waking City)
			ach(14212),	-- <Hidden> 8.3 Main Line - Account Has Obtained Legendary Cloak (DNT)
			ach(14238),	-- Azerite Essence - Rank 3 on any character - Azeroth's Undying Gift <DND>
			ach(14239),	-- Azerite Essence - Rank 3 on any character - Sphere of Suppression <DND>
			ach(14240),	-- Azerite Essence - Rank 3 on any character - Worldvein Resonance <DND>
			ach(14241),	-- Azerite Essence - Rank 3 on any character - Focusing Iris <DND>
			ach(14242),	-- Azerite Essence - Rank 3 on any character - Purification Protocol <DND>
			ach(14243),	-- Azerite Essence - Rank 3 on any character - Anima of Life and Death <DND>
			ach(14244),	-- Azerite Essence - Rank 3 on any character - Crucible of Flame <DND>
			ach(14245),	-- Azerite Essence - Rank 3 on any character - Nullification Dynamo <DND>
			ach(14246),	-- Azerite Essence - Rank 3 on any character - Condensed Life Force <DND>
			ach(14247),	-- Azerite Essence - Rank 3 on any character - Ripple in Space <DND>
			ach(14248),	-- Azerite Essence - Rank 3 on any character - Unwavering Ward <DND>
			ach(14249),	-- Azerite Essence - Rank 3 on any character - Ever-Rising Tide <DND>
			ach(14250),	-- Azerite Essence - Rank 3 on any character - Artifice of Time <DND>
			ach(14251),	-- Azerite Essence - Rank 3 on any character - Well of Existence <DND>
			ach(14252),	-- Azerite Essence - Rank 3 on any character - Lifebinder's Invocation <DND>
			ach(14253),	-- Azerite Essence - Rank 3 on any character - Vitality Conduit <DND>
			ach(14254),	-- Azerite Essence - Rank 3 on any character - Vision of Perfection <DND>
			ach(14255),	-- Azerite Essence - Rank 3 on any character - Blood of the Enemy <DND>
			ach(14256),	-- Azerite Essence - Rank 3 on any character - Spirit of Preservation <DND>
			ach(14257),	-- Azerite Essence - Rank 3 on any character - Aegis of the Deep <DND>
			ach(14258),	-- Azerite Essence - Rank 3 on any character - Memory of Lucid Dreams <DND>
			ach(14259),	-- Azerite Essence - Rank 3 on any character - Unbound Force <DND>
			ach(14260),	-- Azerite Essence - Rank 3 on any character - Conflict and Strife <DND>
			ach(14261),	-- Azerite Essence - Rank 3 on any character - Touch of the Everlasting <DND>
			ach(14262),	-- Azerite Essence - Rank 3 on any character - Strength of the Warden <DND>
			ach(14263),	-- Azerite Essence - Rank 3 on any character - Breath of the Dying <DND>
			ach(14264),	-- Azerite Essence - Rank 3 on any character - Spark of Inspiration <DND>
			ach(14265),	-- Azerite Essence - Rank 3 on any character - Formless Void <DND>
		})),
	}),
	expansion(EXPANSION.SL, {
		-- 9.0.1
		expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { ADDED_9_0_1 } }, {
			ach(14340),	-- The Path Towards Ascension 1
			ach(14342),	-- The Path Towards Ascension 3
			ach(14343),	-- The Path Towards Ascension 5
			ach(14344),	-- The Path Towards Ascension 7
			ach(14345),	-- The Path Towards Ascension 12
			ach(14346),	-- The Path Towards Ascension 16
			ach(14348),	-- The Path Towards Ascension 20
			ach(14349),	-- The Path Towards Ascension 24
			ach(14351),	-- The Path Towards Ascension 39
			-- 9.0.1.33978
			ach(14201),	-- General Kaal kills (Normal Sanguine Depths)
			ach(14202),	-- General Kaal kills (Heroic Sanguine Depths)
			ach(14205),	-- General Kaal kills (Mythic Sanguine Depths)
			ach(14213),	-- 9.0 - Covenant - Night Fae - Soulshape Selected
			ach(14221),	-- <Hidden> - NPE - Sold Item
			ach(14223),	-- <Hidden> - NPE - Bought Item
			ach(14235),	-- 9.0 Shadowlands - Expansion Quest Launch - Prologue
			-- 9.0.1.34199
			ach(14288),	-- <Hidden> - The Master of Lies - Scenario Complete
			-- 9.0.1.35078
			ach(14377),	-- <Hidden> 9.0 Prologue - Dailies Unlocked [DNT]
			-- 9.0.1.35167
			ach(14387),	-- Muah'zala kills (Normal De Other Side)
			ach(14388),	-- Muah'zala kills (Heroic De Other Side)
			ach(14389),	-- Muah'zala kills (Mythic De Other Side)
			ach(14390),	-- Lord Chamberlain kills (Normal Halls of Atonement)
			ach(14391),	-- Lord Chamberlain kills (Heroic Halls of Atonement)
			ach(14392),	-- Lord Chamberlain kills (Mythic Halls of Atonement)
			ach(14393),	-- Tred'ova kills (Normal Mists of Tirna Scithe)
			ach(14394),	-- Tred'ova kills (Heroic Mists of Tirna Scithe)
			ach(14395),	-- Tred'ova kills (Mythic Mists of Tirna Scithe)
			ach(14396),	-- Margrave Stradama kills (Normal Plaguefall)
			ach(14397),	-- Margrave Stradama kills (Heroic Plaguefall)
			ach(14398),	-- Margrave Stradama kills (Mythic Plaguefall)
			ach(14399),	-- Devos kills (Normal Spires of Ascension)
			ach(14400),	-- Devos kills (Heroic Spires of Ascension)
			ach(14401),	-- Devos kills (Mythic Spires of Ascension)
			ach(14402),	-- Nalthor the Rimebinder kills (Normal The Necrotic Wake)
			ach(14403),	-- Nalthor the Rimebinder kills (Heroic The Necrotic Wake)
			ach(14404),	-- Nalthor the Rimebinder kills (Mythic The Necrotic Wake)
			ach(14405),	-- Mordretha kills (Normal Theater of Pain)
			ach(14406),	-- Mordretha kills (Heroic Theater of Pain)
			ach(14407),	-- Mordretha kills (Mythic Theater of Pain)
			ach(14419),	-- Shriekwing Kills (Normal Castle Nathria)
			ach(14420),	-- Shriekwing Kills (Heroic Castle Nathria)
			ach(14421),	-- Shriekwing Kills (Mythic Castle Nathria)
			ach(14422),	-- Shriekwing Kills (Raid Finder Castle Nathria)
			ach(14423),	-- Huntsman Altimor Kills (Normal Castle Nathria)
			ach(14424),	-- Huntsman Altimor Kills (Heroic Castle Nathria)
			ach(14425),	-- Huntsman Altimor Kills (Mythic Castle Nathria)
			ach(14426),	-- Huntsman Altimor Kills (Raid Finder Castle Nathria)
			ach(14427),	-- Hungering Destroyer Kills (Normal Castle Nathria)
			ach(14428),	-- Hungering Destroyer Kills (Heroic Castle Nathria)
			ach(14429),	-- Hungering Destroyer Kills (Mythic Castle Nathria)
			ach(14430),	-- Hungering Destroyer Kills (Raid Finder Castle Nathria)
			ach(14431),	-- Artificer Xy'mox Kills (Normal Castle Nathria)
			ach(14432),	-- Artificer Xy'mox Kills (Heroic Castle Nathria)
			ach(14433),	-- Artificer Xy'mox Kills (Mythic Castle Nathria)
			ach(14434),	-- Artificer Xy'mox Kills (Raid Finder Castle Nathria)
			ach(14435),	-- Sun King's Salvation Kills (Normal Castle Nathria)
			ach(14436),	-- Sun King's Salvation Kills (Heroic Castle Nathria)
			ach(14437),	-- Sun King's Salvation Kills (Mythic Castle Nathria)
			ach(14438),	-- Sun King's Salvation Kills (Raid Finder Castle Nathria)
			ach(14439),	-- Lady Inerva Darkvein Kills (Normal Castle Nathria)
			ach(14440),	-- Lady Inerva Darkvein Kills (Heroic Castle Nathria)
			ach(14441),	-- Lady Inerva Darkvein Kills (Mythic Castle Nathria)
			ach(14442),	-- Lady Inerva Darkvein Kills (Raid Finder Castle Nathria)
			ach(14443),	-- The Council of Blood Kills (Normal Castle Nathria)
			ach(14444),	-- The Council of Blood Kills (Heroic Castle Nathria)
			ach(14445),	-- The Council of Blood Kills (Mythic Castle Nathria)
			ach(14446),	-- The Council of Blood Kills (Raid Finder Castle Nathria)
			ach(14447),	-- Sludgefist Kills (Normal Castle Nathria)
			ach(14448),	-- Sludgefist Kills (Heroic Castle Nathria)
			ach(14449),	-- Sludgefist Kills (Mythic Castle Nathria)
			ach(14450),	-- Sludgefist Kills (Raid Finder Castle Nathria)
			ach(14451),	-- Stone Legion Generals Kills (Normal Castle Nathria) \\ Stoneborn Generals Kills (Normal Castle Nathria)
			ach(14452),	-- Stone Legion Generals Kills (Heroic Castle Nathria) \\ Stoneborn Generals Kills (Heroic Castle Nathria)
			ach(14453),	-- Stone Legion Generals Kills (Mythic Castle Nathria) \\ Stoneborn Generals Kills (Mythic Castle Nathria)
			ach(14454),	-- Stone Legion Generals Kills (Raid Finder Castle Nathria) \\ Stoneborn Generals Kills (Raid Finder Castle Nathria)
			ach(14455),	-- Sire Denathrius Kills (Normal Castle Nathria)
			ach(14456),	-- Sire Denathrius Kills (Heroic Castle Nathria)
			ach(14457),	-- Sire Denathrius Kills (Mythic Castle Nathria)
			ach(14458),	-- Sire Denathrius Kills (Raid Finder Castle Nathria)
			-- 9.0.1.35256
			ach(14504),	-- Niya, As Xavius
			ach(14505),	-- Senthii, As Gul'dan \\ Senthil, As Gul'dan
			ach(14506),	-- Glimmerdust, As Kil'jaeden
			ach(14507),	-- Mi'kai, As Argus
			ach(14508),	-- Glimmerdust, As Jaina
			ach(14509),	-- Astra, As Azshara
			ach(14510),	-- Dreamweaver, As N'Zoth
			ach(14521),	-- Torghast: Into Torghast
			ach(14522),	-- 9.0 Shadowlands - Expansion Quest Launch - Intro - TSH - DEPRECATED 10.0.2 [DNT] \\ 9.0 Shadowlands - Expansion Quest Launch - Intro - TSH
			-- 9.0.1.35360
			ach(14527),	-- Empyrean Domain matches \\ Bastion Arena matches
			ach(14528),	-- Empyrean Domain victories \\ Bastion Arena victories
			ach(14555),	-- Vicious Saddle (31)
			ach(14557),	-- Vicious Saddle (32)
			ach(14558),	-- Vicious Saddle (33)
			ach(14559),	-- Vicious Saddle (34)
			ach(14560),	-- Vicious Saddle (35)
			ach(14561),	-- Vicious Saddle (31)
			ach(14563),	-- Vicious Saddle (32)
			ach(14564),	-- Vicious Saddle (33)
			ach(14565),	-- Vicious Saddle (34)
			ach(14566),	-- Vicious Saddle (35)
			ach(14596),	-- Torghast: Tracking - Completed Layer 1
			ach(14597),	-- Torghast: Tracking - Completed Layer 2
			ach(14598),	-- Torghast: Tracking - Completed Layer 3
			ach(14599),	-- Torghast: Tracking - Completed Layer 4
			ach(14600),	-- Torghast: Tracking - Completed Layer 5
			ach(14601),	-- Torghast: Tracking - Completed Layer 6
			ach(14602),	-- Torghast: Tracking - Completed Layer 7
			ach(14603),	-- Torghast: Tracking - Completed Layer 8
			-- 9.0.1.35432
			ach(14609),	-- <Hidden> Shadowlands Alt - Hit Max Level, Covenant Breadcrumb
			ach(14611),	-- Sinful Combatant \\ Shadowlands Season 1 Combatant
			ach(14612),	-- Sinful Combatant \\ Shadowlands Season 1 Combatant
			ach(14613),	-- <Hidden> Chromie Time - Hit 59 While In Chromie Time \\ <Hidden> Chromie Time - Hit 49 While In Chromie Time \\ <Hidden> Chromie Time - Hit 48 While In Chromie Time
			ach(14615),	-- <Hidden> Chromie Time - Hit 60 While In Chromie Time \\ <Hidden> Chromie Time - Hit 50 While In Chromie Time
			ach(14618),	-- Forged through Conquest: Shadowlands Season 1
			-- 9.0.1.35522
			ach(14653),	-- <Hidden> (Druid) Unlocked Dolphin Form [DNT]
			ach(14654),	-- <Hidden> (Druid) Unlocked Orca Form [DNT]
			ach(14655),	-- <Hidden> (Druid) Unlocked Tideskipper Form [DNT]
			ach(14664),	-- <Hidden> (Druid) Unlocked Cheetah Form [DNT]
			ach(14665),	-- <Hidden> (Druid) Unlocked Doe Form [DNT]
			ach(14666),	-- <Hidden> (Druid) Unlocked Sentinel Form [DNT]
			ach(14667),	-- <Hidden> (Druid) Unlocked Humble Flyer Form [DNT] \\ <Hidden> (Druid) Unlocked Humble Flyer Form [DNT] (copy)
			-- 9.0.1.35598
			ach(14784),	-- Total deaths in raids
			ach(14785),	-- Total deaths in PvP arenas
			ach(14786),	-- Total deaths in PvP battlegrounds
			ach(14787),	-- Total deaths in dungeons
			-- 9.0.1.35755
			ach(14804),	-- <Hidden> Exile's Reach RAF Bag
			-- 9.0.1.35828
			ach(14813),	-- <Hidden> HoA Catch All <DNT>
		})),

		-- 9.0.2
		expansion(EXPANSION.SL, patch(0,2), bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2 } }, {
			-- 9.0.2.35854
			ach(14807),	-- <Hidden> Completed Shadowlands Story (DNT) <Account>
			ach(14811),	-- <Hidden> Shadowlands Alt - Launch Chromie if Shadowlands in Progress (DNT)
			ach(14819),	-- Seething Shore Killing Blows
			ach(14820),	-- Battle of Wintergrasp Killing Blows
			ach(14821),	-- Ashran Killing Blows
			ach(14822),	-- Seething Shore Honorable Kills
			ach(14823),	-- Battle for Wintergrasp Honorable Kills
			ach(14824),	-- Ashran Honorable Kills
			-- 9.0.2.36086
			ach(14848),	-- Torghast: Tracking - Twisting Corridors Unlocked
			-- 9.0.2.36165
			ach(14287),	-- <Hidden> Completed New Player Experience (Account)
			ach(14855),	-- <Hidden> - NPE Restrictions Removed
			-- 9.0.2.36294
			ach(14886),	-- <Hidden> HoA Catch All <DNT> (copy)
			-- 9.0.2.36401
			ach(14888),	-- Torghast: Tracking - Vendor - Uncommons Unlocked [DNT]
			ach(14889),	-- Torghast: Tracking - Vendor - Rares Unlocked [DNT]
			ach(14890),	-- Torghast: Tracking - Vendor - Free Cache Unlocked [DNT]
			ach(14891),	-- Torghast: Tracking - Vendor - Extra Life Unlocked [DNT]
			ach(14892),	-- Torghast: Tracking - Vendor - Higher Epic Chance Unlocked [DNT]
			ach(14893),	-- Torghast: Tracking - Vendor - Obleron Armaments Unlocked [DNT]
			-- 9.0.2.36512
			ach(14897),	-- Item slots equipped with Uncommon items
			ach(14898),	-- Item slots equipped with Rare items
			ach(14899),	-- Item slots equipped with Epic items
			ach(14900),	-- Item slots equipped with Legendary items
			ach(14901),	-- Item slots equipped with Heirloom items
			-- 9.0.2.36532
			ach(14902),	-- Torghast: Tracking - Vendor - No Single Choices [DNT]
			-- 9.0.2.37130
			ach(14917),	-- Torghast: Tracking - Completed Layer 1 - Account [DNT] \\ Torghast: Tracking - Completed Layer 1 - Account
			ach(14918),	-- Torghast: Tracking - Completed Layer 2 - Account [DNT] \\ Torghast: Tracking - Completed Layer 2 - Account
			ach(14919),	-- Torghast: Tracking - Completed Layer 3 - Account [DNT] \\ Torghast: Tracking - Completed Layer 3 - Account
			ach(14920),	-- Torghast: Tracking - Completed Layer 4 - Account [DNT] \\ Torghast: Tracking - Completed Layer 4 - Account
			ach(14921),	-- Torghast: Tracking - Completed Layer 5 - Account [DNT] \\ Torghast: Tracking - Completed Layer 5 - Account
			ach(14922),	-- Torghast: Tracking - Completed Layer 6 - Account [DNT] \\ Torghast: Tracking - Completed Layer 6 - Account
			ach(14923),	-- Torghast: Tracking - Completed Layer 7 - Account [DNT] \\ Torghast: Tracking - Completed Layer 7 - Account
			ach(14924),	-- Torghast: Tracking - Completed Layer 8 - Account [DNT] \\ Torghast: Tracking - Completed Layer 8 - Account
			-- 9.0.2.37415
			ach(14936),	-- Torghast - Into Torghast Character [DNT]
			ach(14937),	-- Torghast - Twisting Corridor Unlock - Character [DNT]
		})),

		-- 9.0.5
		expansion(EXPANSION.SL, patch(0,5), bubbleDownSelf({ ["timeline"] = { ADDED_9_0_5 } }, {
			ach(14933),	-- 9.0 - Covenant - Night Fae - Small Shape Selected
			--
			ach(15010),	-- Maw Tracking - Vendor - Items Unlocked - Apprehensive [DNT]
			ach(15011),	-- Maw Tracking - Vendor - Items Unlocked - Tentative [DNT]
			ach(15012),	-- Maw Tracking - Vendor - Items Unlocked - Ambivalent [DNT]
			ach(15013),	-- Maw Tracking - Vendor - Items Unlocked - Cordial [DNT]
			--
			ach(14905),	-- Torghast Tracking - Complete Layer 4 - Skoldus Hall  [DNT]
			ach(14906),	-- Torghast Tracking - Complete Layer 4 - Fracture Chambers [DNT]
			ach(14907),	-- Torghast Tracking - Complete Layer 4 - Soulforges [DNT]
			ach(14908),	-- Torghast Tracking - Complete Layer 4 - Coldheart Interstitia  [DNT]
			ach(14909),	-- Torghast Tracking - Complete Layer 4 - Mort'regar  [DNT]
			ach(14910),	-- Torghast Tracking - Complete Layer 4 - Upper Reaches [DNT]
			ach(14911),	-- Torghast Tracking - Complete Layer 8 - Skoldus Hall  [DNT]
			ach(14912),	-- Torghast Tracking - Complete Layer 8 - Fracture Chambers [DNT]
			ach(14913),	-- Torghast Tracking - Complete Layer 8 - Soulforges [DNT]
			ach(14914),	-- Torghast Tracking - Complete Layer 8 - Coldheart Interstitia  [DNT]
			ach(14915),	-- Torghast Tracking - Complete Layer 8 - Mort'regar  [DNT]
			ach(14916),	-- Torghast Tracking - Complete Layer 8 - Upper Reaches [DNT]
			ach(14930),	-- Torghast: Tracking - Vendor - Show Teleport Points [DNT]
		})),

		-- 9.1.0
		expansion(EXPANSION.SL, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {
			ach(14934),	-- 9.1 Campaign - Quest Launch \\ 9.1 Campaign - Patch Quest Launch - Intro (RMV)
			--
			ach(14944),	-- Torghast Tracking 9.1 - Layer 9 Unlocked - Account [DNT]
			ach(14945),	-- Torghast Tracking 9.1 - Layer 10 Unlocked - Account [DNT]
			ach(14946),	-- Torghast Tracking 9.1 - Layer 11 Unlocked - Account [DNT]
			ach(14947),	-- Torghast Tracking 9.1 - Layer 12 Unlocked - Account [DNT]
			ach(14954),	-- Torghast Tracking 9.1 - Layer 9 Unlocked - Character [DNT]
			ach(14955),	-- Torghast Tracking 9.1 - Layer 10 Unlocked - Character [DNT]
			ach(14956),	-- Torghast Tracking 9.1 - Layer 11 Unlocked - Character [DNT]
			ach(14957),	-- Torghast Tracking 9.1 - Layer 12 Unlocked - Character [DNT]
			--
			ach(14966),	-- Unchained Combatant
			ach(14967),	-- Unchained Combatant
			--
			ach(15068),	-- <Hidden> Covenant Campaign Chapter 2 - Torghast
			ach(15071),	-- <Hidden> Covenant Campaign Chapter 3 - Peering Into Darkness
			--
			ach(15111),	-- <Hidden> Tazavesh Intro Complete
			--
			ach(15136),	-- The Tarragrue Kills (Raid Finder Sanctum of Domination)
			ach(15137),	-- The Tarragrue Kills (Normal Sanctum of Domination)
			ach(15138),	-- The Tarragrue Kills (Heroic Sanctum of Domination)
			ach(15139),	-- The Tarragrue Kills (Mythic Sanctum of Domination)
			ach(15140),	-- The Eye of the Jailer Kills (Raid Finder Sanctum of Domination)
			ach(15141),	-- The Eye of the Jailer Kills (Normal Sanctum of Domination)
			ach(15142),	-- The Eye of the Jailer Kills (Heroic Sanctum of Domination)
			ach(15143),	-- The Eye of the Jailer Kills (Mythic Sanctum of Domination)
			ach(15144),	-- The Nine Kills (Raid Finder Sanctum of Domination)
			ach(15145),	-- The Nine Kills (Normal Finder Sanctum of Domination)
			ach(15146),	-- The Nine Kills (Heroic Finder Sanctum of Domination)
			ach(15147),	-- The Nine Kills (Mythic Finder Sanctum of Domination)
			ach(15148),	-- Remnant of Ner'zhul Kills (Raid Finder Sanctum of Domination)
			ach(15149),	-- Remnant of Ner'zhul Kills (Normal Sanctum of Domination)
			ach(15150),	-- Remnant of Ner'zhul Kills (Heroic Sanctum of Domination)
			ach(15151),	-- Remnant of Ner'zhul Kills (Mythic Sanctum of Domination)
			ach(15152),	-- Soulrender Dormazain Kills (Raid Finder Sanctum of Domination)
			ach(15153),	-- Soulrender Dormazain Kills (Normal Sanctum of Domination)
			ach(15154),	-- Soulrender Dormazain Kills (Heroic Sanctum of Domination)
			ach(15155),	-- Soulrender Dormazain Kills (Mythic Sanctum of Domination)
			ach(15156),	-- Painsmith Raznal Kills (Raid Finder Sanctum of Domination)
			ach(15157),	-- Painsmith Raznal Kills (Normal Sanctum of Domination)
			ach(15158),	-- Painsmith Raznal Kills (Heroic Sanctum of Domination)
			ach(15159),	-- Painsmith Raznal Kills (Mythic Sanctum of Domination)
			ach(15160),	-- Guardian of the First Ones Kills (Raid Finder Sanctum of Domination)
			ach(15161),	-- Guardian of the First Ones Kills (Normal Sanctum of Domination)
			ach(15162),	-- Guardian of the First Ones Kills (Heroic Sanctum of Domination)
			ach(15163),	-- Guardian of the First Ones Kills (Mythic Sanctum of Domination)
			ach(15164),	-- Fatescribe Roh-Kalo Kills (Raid Finder Sanctum of Domination)
			ach(15165),	-- Fatescribe Roh-Kalo Kills (Normal Sanctum of Domination)
			ach(15166),	-- Fatescribe Roh-Kalo Kills (Heroic Sanctum of Domination)
			ach(15167),	-- Fatescribe Roh-Kalo Kills (Mythic Sanctum of Domination)
			ach(15168),	-- So'leah kills (Tazavesh, the Veiled Market)
			ach(15169),	-- Kel'Thuzad Kills (Raid Finder Sanctum of Domination)
			ach(15170),	-- Kel'Thuzad Kills (Normal Sanctum of Domination)
			ach(15171),	-- Kel'Thuzad Kills (Heroic Sanctum of Domination)
			ach(15172),	-- Kel'Thuzad Kills (Mythic Sanctum of Domination)
			ach(15173),	-- Sylvanas Windrunner Kills (Raid Finder Sanctum of Domination)
			ach(15174),	-- Sylvanas Windrunner Kills (Normal Sanctum of Domination)
			ach(15175),	-- Sylvanas Windrunner Kills (Heroic Sanctum of Domination)
			ach(15176),	-- Sylvanas Windrunner Kills (Mythic Sanctum of Domination)
			--
			ach(15186),	-- The Archivists' Codex Tier 2 [DNT]
			ach(15187),	-- The Archivists' Codex Tier 3 [DNT]
			ach(15188),	-- The Archivists' Codex Tier 4 [DNT]
			ach(15189),	-- The Archivists' Codex Tier 5 [DNT]
			--
			ach(15247),	-- Third Soulbind Unlocked - Kyrian
			ach(15248),	-- Third Soulbind Unlocked - Necrolord
			ach(15249),	-- Third Soulbind Unlocked - Night Fae
			ach(15250),	-- Third Soulbind Unlocked - Venthyr
			--
			ach(15192),	-- <Hidden> 9.1 Flying Unlock [DNT]
			ach(15193),	-- <Hidden> 9.1 Content Skip Unlock [DNT]
		})),

		-- 9.1.5
		expansion(EXPANSION.SL, patch(1,5), bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 } }, {
			ach(15395),	-- Fae's Giving [DNT]
			ach(15242),	-- Renowned - Kyrian
			ach(15243),	-- Renowned - Necrolords
			ach(15244),	-- Renowned - Night Fae
			ach(15245),	-- Renowned - Venthyr
			ach(15403),	-- [DNT] <Hidden> Mythic+ Rating > 0 (Shadowlands, S2 or later)
			ach(15226),	-- <Hidden> 9.1.5 Maw Intro Skip [DNT]
			ach(15227),	-- <Hidden> (Druid) Unlocked Twilight Runestag Form [DNT]
			ach(15228),	-- <Hidden> (Druid) Unlocked Shimmering Ardenmoth Form [DNT]
			ach(15230),	-- <Hidden> (Druid) Unlocked Nightwing Raven Form [DNT]
			ach(15231),	-- <Hidden> (Druid) Unlocked Gloomstalker Dredbat Form [DNT]
			ach(15235),	-- <Hidden> (Druid) Unlocked Duskwing Raven Form [DNT]
			ach(15236),	-- <Hidden> (Druid) Unlocked Regal Dredbat Form [DNT]
			ach(15237),	-- <Hidden> (Druid) Unlocked Midnight Runestag Form [DNT]
			ach(15238),	-- <Hidden> (Druid) Unlocked Sable Ardenmoth Form [DNT]
			ach(15312),	-- <Hidden> (Druid) Unlocked Blight of the Grizlemaw Form [DNT]
		})),

		-- 9.2.0
		expansion(EXPANSION.SL, patch(2,0), bubbleDownSelf({ ["timeline"] = { ADDED_9_2_0 } }, {
			ach(15559),	-- 9.2 ZM - Cypher System - Talent Unlocked - Aealic
			ach(15560),	-- 9.2 ZM - Cypher System - Talent Unlocked - Dealic
			ach(15561),	-- 9.2 ZM - Cypher System - Talent Unlocked - Trebalim
			ach(15562),	-- 9.2 ZM - Cypher System - Talent Unlocked - Cachial
			ach(15563),	-- 9.2 ZM - Cypher System - Talent Unlocked - Altonian
			ach(15564),	-- 9.2 ZM - Cypher System - Talent Unlocked - Sopranian
			ach(15565),	-- 9.2 ZM - Cypher System - Talent Unlocked - Bassalim
			ach(15566),	-- 9.2 ZM - Cypher System - Talent Unlocked - Metrial
			ach(15568),	-- 9.2 ZM - Cypher System - Talent Research Started - Metrial
			ach(15569),	-- 9.2 ZM - Cypher System - Talent Research Started - Aealic
			ach(15570),	-- 9.2 ZM - Cypher System - Talent Research Started - Dealic
			ach(15571),	-- 9.2 ZM - Cypher System - Talent Research Started - Trebalim
			ach(15572),	-- 9.2 ZM - Cypher System - Talent Research Started - Cachial
			ach(15573),	-- 9.2 ZM - Cypher System - Talent Research Started - Altonian
			ach(15574),	-- 9.2 ZM - Cypher System - Talent Research Started - Sopranian
			ach(15575),	-- 9.2 ZM - Cypher System - Talent Research Started - Bassalim
			ach(15592),	-- <Hidden> 9.2 ZM - Cypher System - Talent Research Started - Trebalim (fixed) \\ <Hidden> 9.2 ZM - Cypher System - Talent Research Started - Trebalim (copy)
			ach(15593),	-- <Hidden> 9.2 ZM - Cypher System - Talent Research Started - Sopranian (copy)
			--
			ach(15282),	-- Torghast Tracking 9.2 - Layer 13 Unlocked - Account [DNT]
			ach(15283),	-- Torghast Tracking 9.2 - Layer 14 Unlocked - Account [DNT]
			ach(15284),	-- Torghast Tracking 9.2 - Layer 15 Unlocked - Account [DNT]
			ach(15285),	-- Torghast Tracking 9.2 - Layer 16 Unlocked - Account [DNT]
			ach(15286),	-- Torghast Tracking 9.2 - Layer 13 Unlocked - Character [DNT]
			ach(15287),	-- Torghast Tracking 9.2 - Layer 14 Unlocked - Character [DNT]
			ach(15288),	-- Torghast Tracking 9.2 - Layer 15 Unlocked - Character [DNT]
			ach(15289),	-- Torghast Tracking 9.2 - Layer 16 Unlocked - Character [DNT]
			ach(15414),	-- Torghast Tracking 9.2 - Boss Rush Unlocked - Character [DNT]
			ach(15412),	-- Torghast Tracking 9.2 - Boss Rush Unlocked - Account [DNT]
			ach(15415),	-- Torghast Tracking 9.2 - Boss Rush Plus Unlocked - Character [DNT]
			ach(15413),	-- Torghast Tracking 9.2 - Boss Rush Plus Unlocked - Account [DNT]
			ach(15503),	-- 9.2 Tracking - Legendary Crafting - Unity Learned
			--
			ach(15424),	-- Vigilant Guardian (Raid Finder Sepulcher of the First Ones)
			ach(15425),	-- Vigilant Guardian (Normal Sepulcher of the First Ones)
			ach(15426),	-- Vigilant Guardian (Heroic Sepulcher of the First Ones)
			ach(15427),	-- Vigilant Guardian (Mythic Sepulcher of the First Ones)
			ach(15428),	-- Skolex (Raid Finder Sepulcher of the First Ones)
			ach(15429),	-- Skolex (Normal Sepulcher of the First Ones)
			ach(15430),	-- Skolex (Heroic Sepulcher of the First Ones)
			ach(15431),	-- Skolex (Mythic Sepulcher of the First Ones)
			ach(15432),	-- Artificer Xy'mox (Raid Finder Sepulcher of the First Ones)
			ach(15433),	-- Artificer Xy'mox (Normal Sepulcher of the First Ones)
			ach(15434),	-- Artificer Xy'mox (Heroic Sepulcher of the First Ones)
			ach(15435),	-- Artificer Xy'mox (Mythic Sepulcher of the First Ones)
			ach(15436),	-- Dausegne (Raid Finder Sepulcher of the First Ones)
			ach(15437),	-- Dausegne (Normal Sepulcher of the First Ones)
			ach(15438),	-- Dausegne (Heroic Sepulcher of the First Ones)
			ach(15439),	-- Dausegne (Mythic Sepulcher of the First Ones)
			ach(15440),	-- Prototype Pantheon (Raid Finder Sepulcher of the First Ones)
			ach(15441),	-- Prototype Pantheon (Normal Sepulcher of the First Ones)
			ach(15442),	-- Prototype Pantheon (Heroic Sepulcher of the First Ones)
			ach(15443),	-- Prototype Pantheon (Mythic Sepulcher of the First Ones)
			ach(15444),	-- Lihuvim (Raid Finder Sepulcher of the First Ones)
			ach(15445),	-- Lihuvim (Normal Sepulcher of the First Ones)
			ach(15446),	-- Lihuvim (Heroic Sepulcher of the First Ones)
			ach(15447),	-- Lihuvim (Mythic Sepulcher of the First Ones)
			ach(15448),	-- Halondrus (Raid Finder Sepulcher of the First Ones)
			ach(15449),	-- Halondrus (Normal Sepulcher of the First Ones)
			ach(15450),	-- Halondrus (Heroic Sepulcher of the First Ones)
			ach(15451),	-- Halondrus (Mythic Sepulcher of the First Ones)
			ach(15452),	-- Anduin (Raid Finder Sepulcher of the First Ones)
			ach(15453),	-- Anduin (Normal Sepulcher of the First Ones)
			ach(15454),	-- Anduin (Heroic Sepulcher of the First Ones)
			ach(15455),	-- Anduin (Mythic Sepulcher of the First Ones)
			ach(15456),	-- Lords of Dread (Raid Finder Sepulcher of the First Ones)
			ach(15457),	-- Lords of Dread (Normal Sepulcher of the First Ones)
			ach(15458),	-- Lords of Dread (Heroic Sepulcher of the First Ones)
			ach(15459),	-- Lords of Dread (Mythic Sepulcher of the First Ones)
			ach(15460),	-- Rygelon (Raid Finder Sepulcher of the First Ones)
			ach(15461),	-- Rygelon (Normal Sepulcher of the First Ones)
			ach(15462),	-- Rygelon (Heroic Sepulcher of the First Ones)
			ach(15463),	-- Rygelon (Mythic Sepulcher of the First Ones)
			ach(15464),	-- The Jailer (Raid Finder Sepulcher of the First Ones)
			ach(15465),	-- The Jailer (Normal Sepulcher of the First Ones)
			ach(15466),	-- The Jailer (Heroic Sepulcher of the First Ones)
			ach(15467),	-- The Jailer (Mythic Sepulcher of the First Ones)
			ach(15423),	-- <Hidden> Jailer Defeated
			--
			ach(15504),	-- Maldraxxus Coliseum matches
			ach(15505),	-- Maldraxxus Coliseum victories
			ach(15576),	-- Enigma Arena matches
			ach(15577),	-- Enigma Arena victories
			--
			ach(15307),	-- 9.2 Campaign - Quest Launch [DNT]
			ach(15510),	-- 9.2 Tracking - Protoform Synthesis - Mount Crafting Unlocked [DNT]
			ach(15345),	-- <Hidden> 9.2 Content Skip Unlock [DNT]
			ach(15519),	-- <Hidden> 9.2 Flying Unlock [DNT]
		})),

		-- 9.2.5
		expansion(EXPANSION.SL, patch(2,5), bubbleDownSelf({ ["timeline"] = { ADDED_9_2_5 } }, {
			ach(15596),	-- Return to Lordaeron (Hidden Character Achievement)
		})),
	}),
	expansion(EXPANSION.DF, {
		-- 10.0.0
		expansion(EXPANSION.DF, patch(0,01), bubbleDownSelf({ ["timeline"] = { ADDED_10_0_0 } }, {
			ach(15992),	-- <DNT> Dragonscale Expedition Rank 01
			ach(16022),	-- <DNT> Dragonscale Expedition Rank 02
			ach(16023),	-- <DNT> Dragonscale Expedition Rank 03
			ach(16024),	-- <DNT> Dragonscale Expedition Rank 04
			ach(16025),	-- <DNT> Dragonscale Expedition Rank 05
			ach(16026),	-- <DNT> Dragonscale Expedition Rank 06
			ach(16027),	-- <DNT> Dragonscale Expedition Rank 07
			ach(16028),	-- <DNT> Dragonscale Expedition Rank 08
			ach(16029),	-- <DNT> Dragonscale Expedition Rank 09
			ach(16030),	-- <DNT> Dragonscale Expedition Rank 10
			ach(16031),	-- <DNT> Dragonscale Expedition Rank 11
			ach(16032),	-- <DNT> Dragonscale Expedition Rank 12
			ach(16033),	-- <DNT> Dragonscale Expedition Rank 13
			ach(16034),	-- <DNT> Dragonscale Expedition Rank 14
			ach(16035),	-- <DNT> Dragonscale Expedition Rank 15
			ach(16036),	-- <DNT> Dragonscale Expedition Rank 16
			ach(16037),	-- <DNT> Dragonscale Expedition Rank 17
			ach(16038),	-- <DNT> Dragonscale Expedition Rank 18
			ach(16039),	-- <DNT> Dragonscale Expedition Rank 19
			ach(16040),	-- <DNT> Dragonscale Expedition Rank 20
			ach(16041),	-- <DNT> Dragonscale Expedition Rank 21
			ach(16042),	-- <DNT> Dragonscale Expedition Rank 22
			ach(16043),	-- <DNT> Dragonscale Expedition Rank 23
			ach(16044),	-- <DNT> Dragonscale Expedition Rank 24
			ach(16045),	-- <DNT> Dragonscale Expedition Rank 25
			ach(16046),	-- <DNT> Dragonscale Expedition Rank 26
			ach(16047),	-- <DNT> Dragonscale Expedition Rank 27
			ach(16048),	-- <DNT> Dragonscale Expedition Rank 28
			ach(16049),	-- <DNT> Dragonscale Expedition Rank 29
			ach(16050),	-- <DNT> Dragonscale Expedition Rank 30
			ach(15708),	-- <Hidden> 10.0 Dragon Riding - Drake Customization - Protodrake - Green Scales [DNT]
			ach(15658),	-- Dragon Isles Alchemy 25 (DNT)
			ach(15659),	-- Dragon Isles Alchemy 50 (DNT)
			ach(15660),	-- Dragon Isles Alchemy 100 (DNT)
			ach(15655),	-- Dragon Isles Blacksmithing 25 (DNT)
			ach(15656),	-- Dragon Isles Blacksmithing 50 (DNT)
			ach(15657),	-- Dragon Isles Blacksmithing 100 (DNT)
			ach(15861),	-- Dragon Isles Enchanting 25 (DNT)
			ach(15862),	-- Dragon Isles Enchanting 50 (DNT)
			ach(15863),	-- Dragon Isles Enchanting 100 (DNT)
			ach(15864),	-- Dragon Isles Engineering 25 (DNT)
			ach(15865),	-- Dragon Isles Engineering 50 (DNT)
			ach(15866),	-- Dragon Isles Engineering 100 (DNT)
			ach(15867),	-- Dragon Isles Herbalism 25 (DNT)
			ach(15868),	-- Dragon Isles Herbalism 50 (DNT)
			ach(15869),	-- Dragon Isles Herbalism 100 (DNT)
			ach(15870),	-- Dragon Isles Inscription 25 (DNT)
			ach(15871),	-- Dragon Isles Inscription 50 (DNT)
			ach(15872),	-- Dragon Isles Inscription 100 (DNT)
			ach(15873),	-- Dragon Isles Jewelcrafting 25 (DNT)
			ach(15874),	-- Dragon Isles Jewelcrafting 50 (DNT)
			ach(15875),	-- Dragon Isles Jewelcrafting 100 (DNT)
			ach(15876),	-- Dragon Isles Leatherworking 25 (DNT)
			ach(15877),	-- Dragon Isles Leatherworking 50 (DNT)
			ach(15878),	-- Dragon Isles Leatherworking 100 (DNT)
			ach(15879),	-- Dragon Isles Mining 25 (DNT)
			ach(15880),	-- Dragon Isles Mining 50 (DNT)
			ach(15881),	-- Dragon Isles Mining 100 (DNT)
			ach(15882),	-- Dragon Isles Skinning 25 (DNT)
			ach(15883),	-- Dragon Isles Skinning 50 (DNT)
			ach(15884),	-- Dragon Isles Skinning 100 (DNT)
			ach(15885),	-- Dragon Isles Tailoring 25 (DNT)
			ach(15886),	-- Dragon Isles Tailoring 50 (DNT)
			ach(15887),	-- Dragon Isles Tailoring 100 (DNT)
			ach(16074),	-- Decatriarch Wratheye kills (Normal Brackenhide Hollow)
			ach(16075),	-- Decatriarch Wratheye kills (Heroic Brackenhide Hollow)
			ach(16076),	-- Decatriarch Wratheye kills (Mythic Brackenhide Hollow)
			ach(16077),	-- Primal Tsunami kills (Normal Halls of Infusion)
			ach(16078),	-- Primal Tsunami kills (Heroic Halls of Infusion)
			ach(16079),	-- Primal Tsunami kills (Mythic Halls of Infusion)
			ach(16080),	-- Warlord Sargha kills (Normal Neltharus)
			ach(16081),	-- Warlord Sargha kills (Heroic Neltharus)
			ach(16082),	-- Warlord Sargha kills (Mythic Neltharus)
			ach(16083),	-- Kyrakka and Erkhart Stormvein kills (Normal Ruby Life Pools)
			ach(16084),	-- Kyrakka and Erkhart Stormvein kills (Heroic Ruby Life Pools)
			ach(16085),	-- Kyrakka and Erkhart Stormvein kills (Mythic Ruby Life Pools)
			ach(16086),	-- Echo of Doragosa kills (Normal Algeth'ar Academy)
			ach(16087),	-- Echo of Doragosa kills (Heroic Algeth'ar Academy)
			ach(16088),	-- Echo of Doragosa kills (Mythic Algeth'ar Academy)
			ach(16089),	-- Umbrelskel kills (Normal The Azure Vault)
			ach(16090),	-- Umbrelskel kills (Heroic The Azure Vault)
			ach(16091),	-- Umbrelskel kills (Mythic The Azure Vault)
			ach(16092),	-- Balakar Khan kills (Normal The Nokhud Offensive)
			ach(16093),	-- Balakar Khan kills (Heroic The Nokhud Offensive)
			ach(16094),	-- Balakar Khan kills (Mythic The Nokhud Offensive)
			ach(16095),	-- Chrono-Lord Deios kills (Normal Uldaman: Legacy of Tyr)
			ach(16096),	-- Chrono-Lord Deios kills (Heroic Uldaman: Legacy of Tyr)
			ach(16097),	-- Chrono-Lord Deios kills (Mythic Uldaman: Legacy of Tyr)
			ach(16109),	-- Dragon Isles Leatherworking 100 (DNT)
			ach(16111),	-- <Hidden> 10.0 Professions Onboarding Skip Unlock [DNT]
			ach(16137),	-- <DNT> Iskaara Tuskarr Rank 01
			ach(16138),	-- <DNT> Iskaara Tuskarr Rank 02
			ach(16139),	-- <DNT> Iskaara Tuskarr Rank 03
			ach(16140),	-- <DNT> Iskaara Tuskarr Rank 04
			ach(16141),	-- <DNT> Iskaara Tuskarr Rank 05
			ach(16142),	-- <DNT> Iskaara Tuskarr Rank 06
			ach(16143),	-- <DNT> Iskaara Tuskarr Rank 07
			ach(16144),	-- <DNT> Iskaara Tuskarr Rank 08
			ach(16145),	-- <DNT> Iskaara Tuskarr Rank 09
			ach(16146),	-- <DNT> Iskaara Tuskarr Rank 10
			ach(16147),	-- <DNT> Iskaara Tuskarr Rank 11
			ach(16148),	-- <DNT> Iskaara Tuskarr Rank 12
			ach(16149),	-- <DNT> Iskaara Tuskarr Rank 13
			ach(16150),	-- <DNT> Iskaara Tuskarr Rank 14
			ach(16151),	-- <DNT> Iskaara Tuskarr Rank 15
			ach(16152),	-- <DNT> Iskaara Tuskarr Rank 16
			ach(16153),	-- <DNT> Iskaara Tuskarr Rank 17
			ach(16154),	-- <DNT> Iskaara Tuskarr Rank 18
			ach(16155),	-- <DNT> Iskaara Tuskarr Rank 19
			ach(16156),	-- <DNT> Iskaara Tuskarr Rank 20
			ach(16157),	-- <DNT> Iskaara Tuskarr Rank 21
			ach(16158),	-- <DNT> Iskaara Tuskarr Rank 22
			ach(16159),	-- <DNT> Iskaara Tuskarr Rank 23
			ach(16160),	-- <DNT> Iskaara Tuskarr Rank 24
			ach(16161),	-- <DNT> Iskaara Tuskarr Rank 25
			ach(16162),	-- <DNT> Valdrakken Accord Rank 01
			ach(16163),	-- <DNT> Valdrakken Accord Rank 02
			ach(16164),	-- <DNT> Valdrakken Accord Rank 03
			ach(16165),	-- <DNT> Valdrakken Accord Rank 04
			ach(16166),	-- <DNT> Valdrakken Accord Rank 05
			ach(16167),	-- <DNT> Valdrakken Accord Rank 06
			ach(16168),	-- <DNT> Valdrakken Accord Rank 07
			ach(16169),	-- <DNT> Valdrakken Accord Rank 08
			ach(16170),	-- <DNT> Valdrakken Accord Rank 09
			ach(16171),	-- <DNT> Valdrakken Accord Rank 10
			ach(16172),	-- <DNT> Valdrakken Accord Rank 11
			ach(16173),	-- <DNT> Valdrakken Accord Rank 12
			ach(16174),	-- <DNT> Valdrakken Accord Rank 13
			ach(16175),	-- <DNT> Valdrakken Accord Rank 14
			ach(16176),	-- <DNT> Valdrakken Accord Rank 15
			ach(16177),	-- <DNT> Valdrakken Accord Rank 16
			ach(16178),	-- <DNT> Valdrakken Accord Rank 17
			ach(16179),	-- <DNT> Valdrakken Accord Rank 18
			ach(16180),	-- <DNT> Valdrakken Accord Rank 19
			ach(16181),	-- <DNT> Valdrakken Accord Rank 20
			ach(16182),	-- <DNT> Valdrakken Accord Rank 21
			ach(16183),	-- <DNT> Valdrakken Accord Rank 22
			ach(16184),	-- <DNT> Valdrakken Accord Rank 23
			ach(16185),	-- <DNT> Valdrakken Accord Rank 24
			ach(16186),	-- <DNT> Valdrakken Accord Rank 25
			ach(16187),	-- <DNT> Valdrakken Accord Rank 26
			ach(16188),	-- <DNT> Valdrakken Accord Rank 27
			ach(16189),	-- <DNT> Valdrakken Accord Rank 28
			ach(16190),	-- <DNT> Valdrakken Accord Rank 29
			ach(16191),	-- <DNT> Valdrakken Accord Rank 30
			ach(16192),	-- <DNT> Valdrakken Accord Rank 31
			ach(16193),	-- <DNT> Valdrakken Accord Rank 32
			ach(16194),	-- <DNT> Valdrakken Accord Rank 33
			ach(16195),	-- <DNT> Valdrakken Accord Rank 34
			ach(16196),	-- <DNT> Valdrakken Accord Rank 35
			ach(16222),	-- <DNT> Maruuk Centaur Rank 01
			ach(16223),	-- <DNT> Maruuk Centaur Rank 02
			ach(16224),	-- <DNT> Maruuk Centaur Rank 03
			ach(16225),	-- <DNT> Maruuk Centaur Rank 04
			ach(16226),	-- <DNT> Maruuk Centaur Rank 05
			ach(16227),	-- <DNT> Maruuk Centaur Rank 06
			ach(16228),	-- <DNT> Maruuk Centaur Rank 07
			ach(16229),	-- <DNT> Maruuk Centaur Rank 08
			ach(16230),	-- <DNT> Maruuk Centaur Rank 09
			ach(16231),	-- <DNT> Maruuk Centaur Rank 10
			ach(16232),	-- <DNT> Maruuk Centaur Rank 11
			ach(16233),	-- <DNT> Maruuk Centaur Rank 12
			ach(16234),	-- <DNT> Maruuk Centaur Rank 13
			ach(16235),	-- <DNT> Maruuk Centaur Rank 14
			ach(16236),	-- <DNT> Maruuk Centaur Rank 15
			ach(16237),	-- <DNT> Maruuk Centaur Rank 16
			ach(16238),	-- <DNT> Maruuk Centaur Rank 17
			ach(16239),	-- <DNT> Maruuk Centaur Rank 18
			ach(16240),	-- <DNT> Maruuk Centaur Rank 19
			ach(16241),	-- <DNT> Maruuk Centaur Rank 20
			ach(16242),	-- <DNT> Maruuk Centaur Rank 21
			ach(16243),	-- <DNT> Maruuk Centaur Rank 22
			ach(16244),	-- <DNT> Maruuk Centaur Rank 23
			ach(16245),	-- <DNT> Maruuk Centaur Rank 24
			ach(16246),	-- <DNT> Maruuk Centaur Rank 25
			ach(16283),	-- <Hidden> Travel Network - Node Unlock: Azure Span - Cobalt Assembly
			ach(16284),	-- <Hidden> Travel Network - Node Unlock: Azure Span - Vakthros
			ach(16285),	-- <Hidden> Travel Network - Node Unlock: Ohn'ahran Plains - Shady Sanctuary
			ach(16286),	-- <Hidden> Travel Network - Node Unlock: Ohn'ahran Plains - Rusza'thar Reach
			ach(16287),	-- <Hidden> Travel Network - Node Unlock: Thaldraszus - Algeth'era
			ach(16288),	-- <Hidden> Travel Network - Node Unlock: Thaldraszus - Eon's Fringe
			ach(16289),	-- <Hidden> Travel Network - Node Unlock: Waking Shores - Rubyscale Outpost
			ach(16290),	-- <Hidden> Travel Network - Node Unlock: Waking Shores - Skytop Observatory
			ach(16293),	-- <Hidden> Travel Network - Account Wide Unlock
			ach(16308),	-- <DNT> Iskaara Tuskarr Rank 26
			ach(16309),	-- <DNT> Iskaara Tuskarr Rank 27
			ach(16310),	-- <DNT> Iskaara Tuskarr Rank 28
			ach(16311),	-- <DNT> Iskaara Tuskarr Rank 29
			ach(16312),	-- <DNT> Iskaara Tuskarr Rank 30
			ach(16319),	-- A New Friend - Per Character Unlocks
			ach(16324),	-- Nokhudon Proving Grounds matches
			ach(16325),	-- Nokhudon Proving Grounds victories
			ach(16326),	-- <Hidden> ACCOUNT: Campaign Complete
			ach(16327),	-- <DNT> Dragonscale Expedition - Climbing Unlocked
			ach(16328),	-- <DNT> Dragonscale Expedition - Cataloging Unlocked
			ach(16359),	-- Eranog kills (Raid Finder Vault of the Incarnates)
			ach(16361),	-- Terros kills (Raid Finder Vault of the Incarnates)
			ach(16362),	-- The Primal Council kills (Raid Finder Vault of the Incarnates)
			ach(16366),	-- Sennarth, The Cold Breath kills (Raid Finder Vault of the Incarnates)
			ach(16367),	-- Dathea, Ascended kills (Raid Finder Vault of the Incarnates)
			ach(16368),	-- Kurog Grimtotem kills (Raid Finder Vault of the Incarnates)
			ach(16369),	-- Broodkeeper Diurna kills (Raid Finder Vault of the Incarnates)
			ach(16370),	-- Raszageth kills (Raid Finder Vault of the Incarnates)
			ach(16371),	-- Eranog kills (Normal Vault of the Incarnates)
			ach(16372),	-- Terros kills (Normal Vault of the Incarnates)
			ach(16373),	-- The Primal Council kills (Normal Vault of the Incarnates)
			ach(16374),	-- Sennarth, The Cold Breath kills (Normal Vault of the Incarnates)
			ach(16375),	-- Dathea, Ascended kills (Normal Vault of the Incarnates)
			ach(16376),	-- Kurog Grimtotem kills (Normal Vault of the Incarnates)
			ach(16377),	-- Broodkeeper Diurna kills (Normal Vault of the Incarnates)
			ach(16378),	-- Raszageth kills (Normal Vault of the Incarnates)
			ach(16379),	-- Eranog kills (Heroic Vault of the Incarnates)
			ach(16380),	-- Terros kills (Heroic Vault of the Incarnates)
			ach(16381),	-- The Primal Council kills (Heroic Vault of the Incarnates)
			ach(16382),	-- Sennarth, The Cold Breath kills (Heroic Vault of the Incarnates)
			ach(16383),	-- Dathea, Ascended kills (Heroic Vault of the Incarnates)
			ach(16384),	-- Kurog Grimtotem kills (Heroic Vault of the Incarnates)
			ach(16385),	-- Broodkeeper Diurna kills (Heroic Vault of the Incarnates)
			ach(16386),	-- Raszageth kills (Heroic Vault of the Incarnates)
			ach(16387),	-- Eranog kills (Mythic Vault of the Incarnates)
			ach(16388),	-- Terros kills (Mythic Vault of the Incarnates)
			ach(16389),	-- The Primal Council kills (Mythic Vault of the Incarnates)
			ach(16390),	-- Sennarth, The Cold Breath kills (Mythic Vault of the Incarnates)
			ach(16391),	-- Dathea, Ascended kills (Mythic Vault of the Incarnates)
			ach(16392),	-- Kurog Grimtotem kills (Mythic Vault of the Incarnates)
			ach(16393),	-- Broodkeeper Diurna kills (Mythic Vault of the Incarnates)
			ach(16394),	-- Raszageth kills (Mythic Vault of the Incarnates)
			ach(16414),	-- [HIDDEN] Fates of the Shadowlands Raid Portals
			ach(16415),	-- <DNT> Cobalt Assembly - Rank 1 - Low
			ach(16416),	-- <DNT> Cobalt Assembly - Rank 2 - Medium
			ach(16417),	-- <DNT> Cobalt Assembly - Rank 3 - High
			ach(16418),	-- <DNT> Cobalt Assembly - Rank 4 - Maximum
			ach(16425),	-- I'm a Template Character [DNT]
			ach(16449),	-- [DNT] <Hidden> Mythic+ Rating > 0 (Dragonflight, any season)
			ach(16520),	-- 10.0 Dragonflight - Expansion Quest Launch (Meet Wrathion/Ebyssian)
			ach(16662),	-- Dragon Isles Blacksmithing 75 (DNT)
			ach(16663),	-- Dragon Isles Tailoring 75 (DNT)
			ach(16664),	-- Dragon Isles Jewelcrafting 75 (DNT)
			ach(16665),	-- Dragon Isles Engineering 75 (DNT)
			ach(16745),	-- Total Crafting Orders Fulfilled
			ach(16746),	-- Public Crafting Orders Fulfilled
			ach(16747),	-- Guild Crafting Orders Fulfilled
			ach(16748),	-- Private Crafting Orders Fulfilled
			ach(16749),	-- Alchemy Crafting Orders Fulfilled
			ach(16750),	-- Blacksmithing Crafting Orders Fulfilled
			ach(16751),	-- Enchanting Crafting Orders Fulfilled
			ach(16752),	-- Engineering Crafting Orders Fulfilled
			ach(16753),	-- Inscription Crafting Orders Fulfilled
			ach(16754),	-- Jewelcrafting Crafting Orders Fulfilled
			ach(16755),	-- Leatherworking Crafting Orders Fulfilled
			ach(16756),	-- Tailoring Crafting Orders Fulfilled
			ach(16633),	-- <DNT> Maruuk Centaur Rank 25 + Title Quest
			ach(16681),	-- 10.0 Dragonflight - Expansion Quest Launch (Return to Docks)
		})),

		-- 10.0.2
		expansion(EXPANSION.DF, patch(0,2), bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2 } }, {
			-- 10.0.2.45779
			ach(16703),	-- 10.0 Thal - Raid Intro Quest Launch [DNT]
			ach(16713),	-- <DNT> Wrathion - 1 - Trusted Champion
			ach(16714),	-- <DNT> Wrathion - 2 - Ally
			ach(16715),	-- <DNT> Wrathion - 3 - Close Ally
			ach(16716),	-- <DNT> Wrathion - 4 - Friend
			ach(16717),	-- <DNT> Wrathion - 5 - True Friend
			ach(16718),	-- <DNT> Sabellian - 1 - Devotee
			ach(16719),	-- <DNT> Sabellian - 2 - Cohort
			ach(16720),	-- <DNT> Sabellian - 3 - Ally
			ach(16721),	-- <DNT> Sabellian - 4 - Fang
			ach(16722),	-- <DNT> Sabellian - 5 - Friend
			-- 10.0.2.46091
			ach(16759),	-- <Hidden> Adventure Mode - Reached Dragon Isles
			-- 10.0.2.46259
			ach(16765),	-- <DNT> Expedition Supplies: Climbing Gear
			ach(16766),	-- <DNT> Expedition Supplies: Cataloging Gear
			ach(16767),	-- <DNT> Expedition Supplies: Tireless Grip Chalk
			ach(16768),	-- <DNT> Expedition Supplies: Anomaly Detection Spell Framework
			ach(16769),	-- <DNT> Expedition Supplies: Cartographer's Flag
			ach(16770),	-- <DNT> Expedition Supplies: Pictronic Gadget Upgrade
			ach(16771),	-- <DNT> Expedition Supplies: Mechanism Bypass
			ach(16772),	-- <DNT> Expedition Supplies: Quick Draw Film Holster
			ach(16773),	-- <DNT> Expedition Supplies: Spiked Cleats
			ach(16774),	-- <DNT> Expedition Supplies: Rupert's Helping Hand
			ach(16775),	-- <DNT> Expedition Supplies: Jeb's Monocle
			ach(16776),	-- <DNT> Expedition Supplies: Auto-Grappler
			ach(16777),	-- <DNT> Expedition Supplies: Lucky Rock
			ach(16778),	-- <DNT> Cobalt Assembly Talent: Arcane Instability
			ach(16779),	-- <DNT> Cobalt Assembly Talent: Arcane Shield
			ach(16780),	-- <DNT> Cobalt Assembly Talent: Azure Arise
			ach(16781),	-- <DNT> Cobalt Assembly Talent: Cobalt Cutthroat
			ach(16782),	-- <DNT> Cobalt Assembly Talent: Cobalt Reputation
			ach(16783),	-- <DNT> Cobalt Assembly Talent: Extra Wild Arcana
			ach(16784),	-- <DNT> Cobalt Assembly Talent: Unhelpful Fireworks
			ach(16786),	-- <DNT> Dragonscale Expedition Rank 02 (Account)
			ach(16787),	-- <DNT> Maruuk Centaur Rank 03 (Account)
			ach(16788),	-- <DNT> Maruuk Centaur Rank 03 (Character)
			ach(16802),	-- <Hidden> ACCOUNT: Renown Campaign Complete - Dragonscale 1
			ach(16803),	-- <Hidden> ACCOUNT: Renown Campaign Complete - Dragonscale 2
			ach(16804),	-- <Hidden> ACCOUNT: Renown Campaign Complete - Tuskarr 1
			ach(16805),	-- <Hidden> ACCOUNT: Renown Campaign Complete - Green 1+2 \\ <Hidden> ACCOUNT: Renown Campaign Complete - Centaur 1
			ach(16807),	-- <Hidden> ACCOUNT: Renown Campaign Complete - Tyr 1
			ach(16856),	-- <DNT> Dragonscale Expedition Rank 01 (Account)
			ach(16857),	-- <DNT> Dragonscale Expedition Rank 01 (Character)
			ach(16858),	-- <DNT> Dragonscale Expedition Rank 02 (Account)
			ach(16859),	-- <DNT> Dragonscale Expedition Rank 02 (Character)
			ach(16860),	-- <DNT> Dragonscale Expedition Rank 03 (Account)
			ach(16861),	-- <DNT> Dragonscale Expedition Rank 03 (Character)
			ach(16862),	-- <DNT> Dragonscale Expedition Rank 04 (Account)
			ach(16863),	-- <DNT> Dragonscale Expedition Rank 04 (Character)
			ach(16864),	-- <DNT> Dragonscale Expedition Rank 05 (Account)
			ach(16865),	-- <DNT> Dragonscale Expedition Rank 05 (Character)
			ach(16866),	-- <DNT> Dragonscale Expedition Rank 06 (Account)
			ach(16867),	-- <DNT> Dragonscale Expedition Rank 06 (Character)
			ach(16868),	-- <DNT> Dragonscale Expedition Rank 07 (Account)
			ach(16869),	-- <DNT> Dragonscale Expedition Rank 07 (Character)
			ach(16870),	-- <DNT> Dragonscale Expedition Rank 08 (Account)
			ach(16871),	-- <DNT> Dragonscale Expedition Rank 08 (Character)
			ach(16872),	-- <DNT> Dragonscale Expedition Rank 09 (Account)
			ach(16873),	-- <DNT> Dragonscale Expedition Rank 09 (Character)
			ach(16874),	-- <DNT> Dragonscale Expedition Rank 10 (Account)
			ach(16875),	-- <DNT> Dragonscale Expedition Rank 10 (Character)
			ach(16876),	-- <DNT> Dragonscale Expedition Rank 11 (Account)
			ach(16877),	-- <DNT> Dragonscale Expedition Rank 11 (Character)
			ach(16878),	-- <DNT> Dragonscale Expedition Rank 12 (Account)
			ach(16879),	-- <DNT> Dragonscale Expedition Rank 12 (Character)
			ach(16880),	-- <DNT> Dragonscale Expedition Rank 13 (Account)
			ach(16881),	-- <DNT> Dragonscale Expedition Rank 13 (Character)
			ach(16882),	-- <DNT> Dragonscale Expedition Rank 14 (Account)
			ach(16883),	-- <DNT> Dragonscale Expedition Rank 14 (Character)
			ach(16885),	-- <DNT> Dragonscale Expedition Rank 15 (Character)
			ach(16886),	-- <DNT> Dragonscale Expedition Rank 16 (Account)
			ach(16887),	-- <DNT> Dragonscale Expedition Rank 16 (Character)
			ach(16888),	-- <DNT> Dragonscale Expedition Rank 17 (Account)
			ach(16889),	-- <DNT> Dragonscale Expedition Rank 17 (Character)
			ach(16890),	-- <DNT> Dragonscale Expedition Rank 18 (Account)
			ach(16891),	-- <DNT> Dragonscale Expedition Rank 18 (Character)
			ach(16892),	-- <DNT> Dragonscale Expedition Rank 19 (Account)
			ach(16893),	-- <DNT> Dragonscale Expedition Rank 19 (Character)
			ach(16894),	-- <DNT> Dragonscale Expedition Rank 20 (Account)
			ach(16895),	-- <DNT> Dragonscale Expedition Rank 20 (Character)
			ach(16896),	-- <DNT> Dragonscale Expedition Rank 21 (Account)
			ach(16897),	-- <DNT> Dragonscale Expedition Rank 21 (Character)
			ach(16898),	-- <DNT> Dragonscale Expedition Rank 22 (Account)
			ach(16899),	-- <DNT> Dragonscale Expedition Rank 22 (Character)
			ach(16900),	-- <DNT> Dragonscale Expedition Rank 23 (Account)
			ach(16901),	-- <DNT> Dragonscale Expedition Rank 23 (Character)
			ach(16902),	-- <DNT> Dragonscale Expedition Rank 24 (Account)
			ach(16903),	-- <DNT> Dragonscale Expedition Rank 24 (Character)
			ach(16904),	-- <DNT> Dragonscale Expedition Rank 25 (Account)
			ach(16905),	-- <DNT> Dragonscale Expedition Rank 25 (Character)
			ach(16906),	-- <DNT> Dragonscale Expedition Rank 26 (Account)
			ach(16907),	-- <DNT> Dragonscale Expedition Rank 26 (Character)
			ach(16908),	-- <DNT> Dragonscale Expedition Rank 27 (Account)
			ach(16909),	-- <DNT> Dragonscale Expedition Rank 27 (Character)
			ach(16910),	-- <DNT> Dragonscale Expedition Rank 28 (Account)
			ach(16911),	-- <DNT> Dragonscale Expedition Rank 28 (Character)
			ach(16912),	-- <DNT> Dragonscale Expedition Rank 29 (Account)
			ach(16913),	-- <DNT> Dragonscale Expedition Rank 29 (Character)
			ach(16914),	-- <DNT> Dragonscale Expedition Rank 30 (Account)
			ach(16915),	-- <DNT> Dragonscale Expedition Rank 30 (Character)
			ach(16916),	-- <DNT> Iskaara Tuskarr Rank 01 (Account)
			ach(16917),	-- <DNT> Iskaara Tuskarr Rank 01 (Character)
			ach(16918),	-- <DNT> Iskaara Tuskarr Rank 02 (Account)
			ach(16919),	-- <DNT> Iskaara Tuskarr Rank 02 (Character)
			ach(16920),	-- <DNT> Iskaara Tuskarr Rank 03 (Account)
			ach(16921),	-- <DNT> Iskaara Tuskarr Rank 03 (Character)
			ach(16922),	-- <DNT> Iskaara Tuskarr Rank 04 (Account)
			ach(16923),	-- <DNT> Iskaara Tuskarr Rank 04 (Character)
			ach(16924),	-- <DNT> Iskaara Tuskarr Rank 05 (Account)
			ach(16925),	-- <DNT> Iskaara Tuskarr Rank 05 (Character)
			ach(16926),	-- <DNT> Iskaara Tuskarr Rank 06 (Account)
			ach(16927),	-- <DNT> Iskaara Tuskarr Rank 06 (Character)
			ach(16928),	-- <DNT> Iskaara Tuskarr Rank 07 (Account)
			ach(16929),	-- <DNT> Iskaara Tuskarr Rank 07 (Character)
			ach(16930),	-- <DNT> Iskaara Tuskarr Rank 08 (Account)
			ach(16931),	-- <DNT> Iskaara Tuskarr Rank 08 (Character)
			ach(16932),	-- <DNT> Iskaara Tuskarr Rank 09 (Account)
			ach(16933),	-- <DNT> Iskaara Tuskarr Rank 09 (Character)
			ach(16934),	-- <DNT> Iskaara Tuskarr Rank 10 (Account)
			ach(16935),	-- <DNT> Iskaara Tuskarr Rank 10 (Character)
			ach(16936),	-- <DNT> Iskaara Tuskarr Rank 11 (Account)
			ach(16937),	-- <DNT> Iskaara Tuskarr Rank 11 (Character)
			ach(16938),	-- <DNT> Iskaara Tuskarr Rank 12 (Account)
			ach(16939),	-- <DNT> Iskaara Tuskarr Rank 12 (Character)
			ach(16940),	-- <DNT> Iskaara Tuskarr Rank 13 (Account)
			ach(16941),	-- <DNT> Iskaara Tuskarr Rank 13 (Character)
			ach(16942),	-- <DNT> Iskaara Tuskarr Rank 14 (Account)
			ach(16943),	-- <DNT> Iskaara Tuskarr Rank 14 (Character)
			ach(16945),	-- <DNT> Iskaara Tuskarr Rank 15 (Character)
			ach(16946),	-- <DNT> Iskaara Tuskarr Rank 16 (Account)
			ach(16947),	-- <DNT> Iskaara Tuskarr Rank 16 (Character)
			ach(16948),	-- <DNT> Iskaara Tuskarr Rank 17 (Account)
			ach(16949),	-- <DNT> Iskaara Tuskarr Rank 17 (Character)
			ach(16950),	-- <DNT> Iskaara Tuskarr Rank 18 (Account)
			ach(16951),	-- <DNT> Iskaara Tuskarr Rank 18 (Character)
			ach(16952),	-- <DNT> Iskaara Tuskarr Rank 19 (Account)
			ach(16953),	-- <DNT> Iskaara Tuskarr Rank 19 (Character)
			ach(16954),	-- <DNT> Iskaara Tuskarr Rank 20 (Account)
			ach(16955),	-- <DNT> Iskaara Tuskarr Rank 20 (Character)
			ach(16956),	-- <DNT> Iskaara Tuskarr Rank 21 (Account)
			ach(16957),	-- <DNT> Iskaara Tuskarr Rank 21 (Character)
			ach(16958),	-- <DNT> Iskaara Tuskarr Rank 22 (Account)
			ach(16959),	-- <DNT> Iskaara Tuskarr Rank 22 (Character)
			ach(16960),	-- <DNT> Iskaara Tuskarr Rank 23 (Account)
			ach(16961),	-- <DNT> Iskaara Tuskarr Rank 23 (Character)
			ach(16962),	-- <DNT> Iskaara Tuskarr Rank 24 (Account)
			ach(16963),	-- <DNT> Iskaara Tuskarr Rank 24 (Character)
			ach(16964),	-- <DNT> Iskaara Tuskarr Rank 25 (Account)
			ach(16965),	-- <DNT> Iskaara Tuskarr Rank 25 (Character)
			ach(16966),	-- <DNT> Valdrakken Accord Rank 01 (Account)
			ach(16967),	-- <DNT> Valdrakken Accord Rank 01 (Character)
			ach(16968),	-- <DNT> Valdrakken Accord Rank 02 (Account)
			ach(16969),	-- <DNT> Valdrakken Accord Rank 02 (Character)
			ach(16970),	-- <DNT> Valdrakken Accord Rank 03 (Account)
			ach(16971),	-- <DNT> Valdrakken Accord Rank 03 (Character)
			ach(16972),	-- <DNT> Valdrakken Accord Rank 04 (Account)
			ach(16973),	-- <DNT> Valdrakken Accord Rank 04 (Character)
			ach(16974),	-- <DNT> Valdrakken Accord Rank 05 (Account)
			ach(16975),	-- <DNT> Valdrakken Accord Rank 05 (Character)
			ach(16976),	-- <DNT> Valdrakken Accord Rank 06 (Account)
			ach(16977),	-- <DNT> Valdrakken Accord Rank 06 (Character)
			ach(16978),	-- <DNT> Valdrakken Accord Rank 07 (Account)
			ach(16979),	-- <DNT> Valdrakken Accord Rank 07 (Character)
			ach(16980),	-- <DNT> Valdrakken Accord Rank 08 (Account)
			ach(16981),	-- <DNT> Valdrakken Accord Rank 08 (Character)
			ach(16982),	-- <DNT> Valdrakken Accord Rank 09 (Account)
			ach(16983),	-- <DNT> Valdrakken Accord Rank 09 (Character)
			ach(16984),	-- <DNT> Valdrakken Accord Rank 10 (Account)
			ach(16985),	-- <DNT> Valdrakken Accord Rank 10 (Character)
			ach(16986),	-- <DNT> Valdrakken Accord Rank 11 (Account)
			ach(16987),	-- <DNT> Valdrakken Accord Rank 11 (Character)
			ach(16988),	-- <DNT> Valdrakken Accord Rank 12 (Account)
			ach(16989),	-- <DNT> Valdrakken Accord Rank 12 (Character)
			ach(16990),	-- <DNT> Valdrakken Accord Rank 13 (Account)
			ach(16991),	-- <DNT> Valdrakken Accord Rank 13 (Character)
			ach(16992),	-- <DNT> Valdrakken Accord Rank 14 (Account)
			ach(16993),	-- <DNT> Valdrakken Accord Rank 14 (Character)
			ach(16995),	-- <DNT> Valdrakken Accord Rank 15 (Character)
			ach(16996),	-- <DNT> Valdrakken Accord Rank 16 (Account)
			ach(16997),	-- <DNT> Valdrakken Accord Rank 16 (Character)
			ach(16998),	-- <DNT> Valdrakken Accord Rank 17 (Account)
			ach(16999),	-- <DNT> Valdrakken Accord Rank 17 (Character)
			ach(17000),	-- <DNT> Valdrakken Accord Rank 18 (Account)
			ach(17001),	-- <DNT> Valdrakken Accord Rank 18 (Character)
			ach(17002),	-- <DNT> Valdrakken Accord Rank 19 (Account)
			ach(17003),	-- <DNT> Valdrakken Accord Rank 19 (Character)
			ach(17004),	-- <DNT> Valdrakken Accord Rank 20 (Account)
			ach(17005),	-- <DNT> Valdrakken Accord Rank 20 (Character)
			ach(17006),	-- <DNT> Valdrakken Accord Rank 21 (Account)
			ach(17007),	-- <DNT> Valdrakken Accord Rank 21 (Character)
			ach(17008),	-- <DNT> Valdrakken Accord Rank 22 (Account)
			ach(17009),	-- <DNT> Valdrakken Accord Rank 22 (Character)
			ach(17010),	-- <DNT> Valdrakken Accord Rank 23 (Account)
			ach(17011),	-- <DNT> Valdrakken Accord Rank 23 (Character)
			ach(17012),	-- <DNT> Valdrakken Accord Rank 24 (Account)
			ach(17013),	-- <DNT> Valdrakken Accord Rank 24 (Character)
			ach(17014),	-- <DNT> Valdrakken Accord Rank 25 (Account)
			ach(17015),	-- <DNT> Valdrakken Accord Rank 25 (Character)
			ach(17016),	-- <DNT> Valdrakken Accord Rank 26 (Account)
			ach(17017),	-- <DNT> Valdrakken Accord Rank 26 (Character)
			ach(17018),	-- <DNT> Valdrakken Accord Rank 27 (Account)
			ach(17019),	-- <DNT> Valdrakken Accord Rank 27 (Character)
			ach(17020),	-- <DNT> Valdrakken Accord Rank 28 (Account)
			ach(17021),	-- <DNT> Valdrakken Accord Rank 28 (Character)
			ach(17022),	-- <DNT> Valdrakken Accord Rank 29 (Account)
			ach(17023),	-- <DNT> Valdrakken Accord Rank 29 (Character)
			ach(17024),	-- <DNT> Valdrakken Accord Rank 30 (Account)
			ach(17025),	-- <DNT> Valdrakken Accord Rank 30 (Character)
			ach(17026),	-- <DNT> Valdrakken Accord Rank 31 (Account)
			ach(17027),	-- <DNT> Valdrakken Accord Rank 31 (Character)
			ach(17028),	-- <DNT> Valdrakken Accord Rank 32 (Account)
			ach(17029),	-- <DNT> Valdrakken Accord Rank 32 (Character)
			ach(17030),	-- <DNT> Valdrakken Accord Rank 33 (Account)
			ach(17031),	-- <DNT> Valdrakken Accord Rank 33 (Character)
			ach(17032),	-- <DNT> Valdrakken Accord Rank 34 (Account)
			ach(17033),	-- <DNT> Valdrakken Accord Rank 34 (Character)
			ach(17034),	-- <DNT> Valdrakken Accord Rank 35 (Account)
			ach(17035),	-- <DNT> Valdrakken Accord Rank 35 (Character)
			ach(17036),	-- <DNT> Maruuk Centaur Rank 01 (Account)
			ach(17037),	-- <DNT> Maruuk Centaur Rank 01 (Character)
			ach(17038),	-- <DNT> Maruuk Centaur Rank 02 (Account)
			ach(17039),	-- <DNT> Maruuk Centaur Rank 02 (Character)
			ach(17040),	-- <DNT> Maruuk Centaur Rank 03 (Account)
			ach(17041),	-- <DNT> Maruuk Centaur Rank 03 (Character)
			ach(17042),	-- <DNT> Maruuk Centaur Rank 04 (Account)
			ach(17043),	-- <DNT> Maruuk Centaur Rank 04 (Character)
			ach(17044),	-- <DNT> Maruuk Centaur Rank 05 (Account)
			ach(17045),	-- <DNT> Maruuk Centaur Rank 05 (Character)
			ach(17046),	-- <DNT> Maruuk Centaur Rank 06 (Account)
			ach(17047),	-- <DNT> Maruuk Centaur Rank 06 (Character)
			ach(17048),	-- <DNT> Maruuk Centaur Rank 07 (Account)
			ach(17049),	-- <DNT> Maruuk Centaur Rank 07 (Character)
			ach(17050),	-- <DNT> Maruuk Centaur Rank 08 (Account)
			ach(17051),	-- <DNT> Maruuk Centaur Rank 08 (Character)
			ach(17052),	-- <DNT> Maruuk Centaur Rank 09 (Account)
			ach(17053),	-- <DNT> Maruuk Centaur Rank 09 (Character)
			ach(17054),	-- <DNT> Maruuk Centaur Rank 10 (Account)
			ach(17055),	-- <DNT> Maruuk Centaur Rank 10 (Character)
			ach(17056),	-- <DNT> Maruuk Centaur Rank 11 (Account)
			ach(17057),	-- <DNT> Maruuk Centaur Rank 11 (Character)
			ach(17058),	-- <DNT> Maruuk Centaur Rank 12 (Account)
			ach(17059),	-- <DNT> Maruuk Centaur Rank 12 (Character)
			ach(17060),	-- <DNT> Maruuk Centaur Rank 13 (Account)
			ach(17061),	-- <DNT> Maruuk Centaur Rank 13 (Character)
			ach(17062),	-- <DNT> Maruuk Centaur Rank 14 (Account)
			ach(17063),	-- <DNT> Maruuk Centaur Rank 14 (Character)
			ach(17065),	-- <DNT> Maruuk Centaur Rank 15 (Character)
			ach(17066),	-- <DNT> Maruuk Centaur Rank 16 (Account)
			ach(17067),	-- <DNT> Maruuk Centaur Rank 16 (Character)
			ach(17068),	-- <DNT> Maruuk Centaur Rank 17 (Account)
			ach(17069),	-- <DNT> Maruuk Centaur Rank 17 (Character)
			ach(17070),	-- <DNT> Maruuk Centaur Rank 18 (Account)
			ach(17071),	-- <DNT> Maruuk Centaur Rank 18 (Character)
			ach(17072),	-- <DNT> Maruuk Centaur Rank 19 (Account)
			ach(17073),	-- <DNT> Maruuk Centaur Rank 19 (Character)
			ach(17074),	-- <DNT> Maruuk Centaur Rank 20 (Account)
			ach(17075),	-- <DNT> Maruuk Centaur Rank 20 (Character)
			ach(17076),	-- <DNT> Maruuk Centaur Rank 21 (Account)
			ach(17077),	-- <DNT> Maruuk Centaur Rank 21 (Character)
			ach(17078),	-- <DNT> Maruuk Centaur Rank 22 (Account)
			ach(17079),	-- <DNT> Maruuk Centaur Rank 22 (Character)
			ach(17080),	-- <DNT> Maruuk Centaur Rank 23 (Account)
			ach(17081),	-- <DNT> Maruuk Centaur Rank 23 (Character)
			ach(17082),	-- <DNT> Maruuk Centaur Rank 24 (Account)
			ach(17083),	-- <DNT> Maruuk Centaur Rank 24 (Character)
			ach(17084),	-- <DNT> Maruuk Centaur Rank 25 (Account)
			ach(17085),	-- <DNT> Maruuk Centaur Rank 25 (Character)
			ach(17086),	-- <DNT> Iskaara Tuskarr Rank 26 (Account)
			ach(17087),	-- <DNT> Iskaara Tuskarr Rank 26 (Character)
			ach(17088),	-- <DNT> Iskaara Tuskarr Rank 27 (Account)
			ach(17089),	-- <DNT> Iskaara Tuskarr Rank 27 (Character)
			ach(17090),	-- <DNT> Iskaara Tuskarr Rank 28 (Account)
			ach(17091),	-- <DNT> Iskaara Tuskarr Rank 28 (Character)
			ach(17092),	-- <DNT> Iskaara Tuskarr Rank 29 (Account)
			ach(17093),	-- <DNT> Iskaara Tuskarr Rank 29 (Character)
			ach(17094),	-- <DNT> Iskaara Tuskarr Rank 30 (Account)
			ach(17095),	-- <DNT> Iskaara Tuskarr Rank 30 (Character)
			-- 10.0.2.46420
			ach(17104),	-- Vicious Saddle (36)
			ach(17105),	-- Vicious Saddle (36)
			-- 10.0.2.46479
			ach(17209),	-- <Hidden> Chromie Time - Hit 59 While In Chromie Time (copy)
			ach(17210),	-- <Hidden> Chromie Time - Hit 60 While In Chromie Time (copy)
			--10.0.2.47631
			ach(17365),	-- <Hidden> 10.0 Professions Onboarding Skip Completed [DNT]
		})),

		-- 10.0.5
		expansion(EXPANSION.DF, patch(0,5), bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
			--10.0.5.47871
			ach(16735),	-- 10.0.5 Trading Post - Tutorial Quest - Objective: Tenders Claimed - JZB <DND>
			ach(16737),	-- 10.0.5 Trading Post - Tutorial Quest - Completed (Reward for Player) - JZB <DND>
			ach(17310),	-- 10.0 Prologue - Storms - Dimmed Primeval Water
			ach(17311),	-- 10.0 Prologue - Storms - Dimmed Primeval Fire
			ach(17312),	-- 10.0 Prologue - Storms - Dimmed Primeval Earth
			ach(17313),	-- 10.0 Prologue - Storms - Dimmed Primeval Storm
			ach(17338),	-- <Hidden> ACCOUNT: Veritistrasz Q2 Completed
			ach(17420),	-- Trial of Tyr Ineligible For Spark Skip [DNT]
			--10.0.5.48001
			ach(17495),	-- <Hidden> 10.0 Professions Onboarding Skip Unlock [DNT] (copy)
		})),

		-- 10.0.7
		expansion(EXPANSION.DF, patch(0,7), bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {
			--10.0.7.47910
			ach(17306),	-- <DNT> Winterpelt Furbolg - 1 - Friendly
			ach(17307),	-- <DNT> Winterpelt Furbolg - 1 - Honored
			ach(17308),	-- <DNT> Winterpelt Furbolg - 1 - Revered
			ach(17309),	-- <DNT> Winterpelt Furbolg - 1 - Exalted
			ach(17409),	-- <Hidden> ACCOUNT: Treasure Room Local Quest Completed
			ach(17422),	-- <DNT> Artisan's Consortium Reputation is Preferred (Rank 1)
			ach(17423),	-- <DNT> Artisan's Consortium Reputation is Respected (Rank 2)
			ach(17424),	-- <DNT> Artisan's Consortium Reputation is Valued (Rank 3)
			--10.0.7.47983
			ach(17428),	-- <Hidden> Winterpelt Language - Send Mailer from Sonova
			--10.0.7.48076
			ach(17533),	-- <Hidden> Travel Network - Node Unlock: Forbidden Reach - Morqut Islet
			ach(17535),	-- <DNT> Complete the "Return to the Reach" questline.
			--10.0.7.48749
			ach(17536),	-- <DNT> Complete the "A Creche Divided" questline.
		})),

		-- 10.1.0
		expansion(EXPANSION.DF, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
			--10.1.0.48480
			ach(17537),	-- Dragon Chase - WS01
			ach(17538),	-- Dragon Chase - WS02
			ach(17725),	-- Vicious Saddle (37)
			ach(17726),	-- Vicious Saddle (37)
			--10.1.0.48537
			ach(17742),	-- <DNT> Loamm Niffen Rank 01 (Account) \\ <DNT> Loamm Niffen Rank 01
			ach(17743),	-- <DNT> Loamm Niffen Rank 02 (Account) \\ <DNT> Loamm Niffen Rank 02
			ach(17744),	-- <DNT> Loamm Niffen Rank 03 (Account) \\ <DNT> Loamm Niffen Rank 03
			ach(17745),	-- <DNT> Loamm Niffen Rank 04 (Account) \\ <DNT> Loamm Niffen Rank 04
			ach(17746),	-- <DNT> Loamm Niffen Rank 05 (Account) \\ <DNT> Loamm Niffen Rank 05
			ach(17747),	-- <DNT> Loamm Niffen Rank 06 (Account) \\ <DNT> Loamm Niffen Rank 06
			ach(17748),	-- <DNT> Loamm Niffen Rank 07 (Account) \\ <DNT> Loamm Niffen Rank 07
			ach(17749),	-- <DNT> Loamm Niffen Rank 08 (Account) \\ <DNT> Loamm Niffen Rank 08
			ach(17750),	-- <DNT> Loamm Niffen Rank 09 (Account) \\ <DNT> Loamm Niffen Rank 09
			ach(17751),	-- <DNT> Loamm Niffen Rank 10 (Account) \\ <DNT> Loamm Niffen Rank 10
			ach(17752),	-- <DNT> Loamm Niffen Rank 11 (Account) \\ <DNT> Loamm Niffen Rank 11
			ach(17753),	-- <DNT> Loamm Niffen Rank 12 (Account) \\ <DNT> Loamm Niffen Rank 12
			ach(17754),	-- <DNT> Loamm Niffen Rank 13 (Account) \\ <DNT> Loamm Niffen Rank 13
			ach(17755),	-- <DNT> Loamm Niffen Rank 14 (Account) \\ <DNT> Loamm Niffen Rank 14
			ach(17757),	-- <DNT> Loamm Niffen Rank 16 (Account) \\ <DNT> Loamm Niffen Rank 16
			ach(17758),	-- <DNT> Loamm Niffen Rank 17 (Account) \\ <DNT> Loamm Niffen Rank 17
			ach(17759),	-- <DNT> Loamm Niffen Rank 18 (Account) \\ <DNT> Loamm Niffen Rank 18
			ach(17760),	-- <DNT> Loamm Niffen Rank 19 (Account) \\ <DNT> Loamm Niffen Rank 19
			ach(17761),	-- <DNT> Loamm Niffen Rank 20 (Account) \\ <DNT> Loamm Niffen Rank 20
			--10.1.0.48661
			ach(17788),	-- Current Patch - Login Video [DNT] (DO NOT EDIT) \\ Current Patch - Login Video [DNT] (Updated Every Patch)
			ach(17836),	-- Flightstones earned
			ach(17837),	-- Whelpling's Shadowflame Crest Fragments earned
			ach(17838),	-- Drake's Shadowflame Crest Fragments earned
			ach(17839),	-- Wyrm's Shadowflame Crest Fragments earned
			ach(17840),	-- Aspect's Shadowflame Crest Fragments earned
			--10.1.0.48776
			ach(18129),	-- <DNT> Loamm Niffen Rank 01 (Character)
			ach(18130),	-- <DNT> Loamm Niffen Rank 02 (Character)
			ach(18131),	-- <DNT> Loamm Niffen Rank 03 (Character)
			ach(18132),	-- <DNT> Loamm Niffen Rank 04 (Character)
			ach(18133),	-- <DNT> Loamm Niffen Rank 05 (Character)
			ach(18134),	-- <DNT> Loamm Niffen Rank 06 (Character)
			ach(18135),	-- <DNT> Loamm Niffen Rank 07 (Character)
			ach(18136),	-- <DNT> Loamm Niffen Rank 08 (Character)
			ach(18137),	-- <DNT> Loamm Niffen Rank 09 (Character)
			ach(18138),	-- <DNT> Loamm Niffen Rank 10 (Character)
			ach(18139),	-- <DNT> Loamm Niffen Rank 11 (Character)
			ach(18140),	-- <DNT> Loamm Niffen Rank 12 (Character)
			ach(18141),	-- <DNT> Loamm Niffen Rank 13 (Character)
			ach(18142),	-- <DNT> Loamm Niffen Rank 14 (Character)
			ach(18143),	-- <DNT> Loamm Niffen Rank 15 (Character)
			ach(18144),	-- <DNT> Loamm Niffen Rank 16 (Character)
			ach(18145),	-- <DNT> Loamm Niffen Rank 17 (Character)
			ach(18146),	-- <DNT> Loamm Niffen Rank 18 (Character)
			ach(18147),	-- <DNT> Loamm Niffen Rank 19 (Character)
			ach(18148),	-- <DNT> Loamm Niffen Rank 20 (Character)
			--10.1.0.48898
			ach(18169),	-- [DNT] Shimmershell Snail
			ach(18180),	-- Kazzara, the Hellforged kills (Raid Finder Aberrus, the Shadowed Crucible)
			ach(18181),	-- The Amalgamation Chamber kills (Raid Finder Aberrus, the Shadowed Crucible)
			ach(18182),	-- The Forgotten Experiments kills (Raid Finder Aberrus, the Shadowed Crucible)
			ach(18183),	-- Assault of the Zaqali kills (Raid Finder Aberrus, the Shadowed Crucible)
			ach(18184),	-- Rashok, the Elder kills (Raid Finder Aberrus, the Shadowed Crucible)
			ach(18185),	-- The Vigilant Steward, Zskarn kills (Raid Finder Aberrus, the Shadowed Crucible)
			ach(18186),	-- Magmorax kills (Raid Finder Aberrus, the Shadowed Crucible)
			ach(18187),	-- Scalecommander Sarkareth kills (Raid Finder Aberrus, the Shadowed Crucible)
			ach(18188),	-- Echo of Neltharion kills (Raid Finder Aberrus, the Shadowed Crucible)
			ach(18189),	-- Kazzara, the Hellforged kills (Normal Aberrus, the Shadowed Crucible)
			ach(18190),	-- The Amalgamation Chamber kills (Normal Aberrus, the Shadowed Crucible)
			ach(18191),	-- The Forgotten Experiments kills (Normal Aberrus, the Shadowed Crucible)
			ach(18192),	-- Assault of the Zaqali kills (Normal Aberrus, the Shadowed Crucible)
			ach(18194),	-- Rashok, the Elder kills (Normal Aberrus, the Shadowed Crucible)
			ach(18195),	-- The Vigilant Steward, Zskarn kills (Normal Aberrus, the Shadowed Crucible)
			ach(18196),	-- Magmorax kills (Normal Aberrus, the Shadowed Crucible)
			ach(18197),	-- Echo of Neltharion kills (Normal Aberrus, the Shadowed Crucible)
			ach(18198),	-- Scalecommander Sarkareth kills (Normal Aberrus, the Shadowed Crucible)
			ach(18210),	-- Kazzara, the Hellforged kills (Heroic Aberrus, the Shadowed Crucible)
			ach(18211),	-- The Amalgamation Chamber kills (Heroic Aberrus, the Shadowed Crucible)
			ach(18212),	-- The Forgotten Experiments kills (Heroic Aberrus, the Shadowed Crucible)
			ach(18213),	-- Assault of the Zaqali kills (Heroic Aberrus, the Shadowed Crucible)
			ach(18214),	-- Rashok, the Elder kills (Heroic Aberrus, the Shadowed Crucible) \\ Rashok the Elder kills (Heroic Aberrus, the Shadowed Crucible)
			ach(18215),	-- The Vigilant Steward, Zskarn kills (Heroic Aberrus, the Shadowed Crucible)
			ach(18216),	-- Magmorax kills (Heroic Aberrus, the Shadowed Crucible)
			ach(18217),	-- Echo of Neltharion kills (Heroic Aberrus, the Shadowed Crucible)
			ach(18218),	-- Scalecommander Sarkareth kills (Heroic Aberrus, the Shadowed Crucible)
			ach(18219),	-- Kazzara, the Hellforged kills (Mythic Aberrus, the Shadowed Crucible) \\ Kazzara, the Hellforge kills (Mythic Aberrus, the Shadowed Crucible)
			ach(18220),	-- The Amalgamation Chamber kills (Mythic Aberrus, the Shadowed Crucible)
			ach(18221),	-- The Forgotten Experiments kills (Mythic Aberrus, the Shadowed Crucible)
			ach(18222),	-- Assault of the Zaqali kills (Mythic Aberrus, the Shadowed Crucible)
			ach(18223),	-- Rashok, the Elder kills (Mythic Aberrus, the Shadowed Crucible)
			ach(18224),	-- The Vigilant Steward, Zskarn kills (Mythic Aberrus, the Shadowed Crucible)
			ach(18225),	-- Magmorax kills (Mythic Aberrus, the Shadowed Crucible)
			ach(18226),	-- Echo of Neltharion kills (Mythic Aberrus, the Shadowed Crucible)
			ach(18227),	-- Scalecommander Sarkareth kills (Mythic Aberrus, the Shadowed Crucible)
			ach(18231),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 1 (Character)
			ach(18232),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 2 (Character)
			ach(18233),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 4 (Character)
			ach(18234),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 8 (Character)
			ach(18235),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 11 (Character)
			ach(18236),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 12 (Character)
			ach(18237),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 14 (Character)
			ach(18238),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 16 (Character)
			ach(18239),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 17 (Character)
			ach(18240),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 18 (Character)
			ach(18241),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 20 (Character)
			ach(18242),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 23 (Character)
			ach(18243),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 24 (Character)
			ach(18244),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 25 (Character)
			ach(18245),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 26 (Character)
			ach(18246),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 27 (Character)
			ach(18247),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Puzzle 28 (Character)
			ach(18248),	-- <DNT> Niffen Cave Dive - Completed At Least Once - Tutorial Objectives (Character)
			--10.1.0.49092
			ach(18359),	-- <Hidden> Account has completed 10.1 Upgrade System tutorial quests
			--10.1.0.49426
			ach(18394),	-- <Hidden> Account has completed 10.1 Upgrade System tutorial quests (copy)
			--10.1.0.49890
			ach(17542),	-- <Hidden> ACCOUNT: Renown Campaign Complete - Tyr 2
		})),

		-- 10.1.5
		expansion(EXPANSION.DF, patch(1,5), bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
			--10.1.5.49516
			ach(17732),	-- <Hidden>10.1.5 Chromie Time - Hit 60 While In Chromie Time (copy) (copy)
			ach(17733),	-- <Hidden> 10.1.5 Chromie Time - Hit 61 While In Chromie Time (copy) (copy)
			ach(18381),	-- <Hidden> Account has completed Alliance NPE Quest
			ach(18382),	-- <Hidden> Account has completed Horde NPE Quest
			ach(18390),	-- <Hidden> 10.1.5 Warlock Expansion - Mail Quest Push - Alliance (NJS)
			ach(18392),	-- <Hidden> 10.1.5 Warlock Expansion - Mail Quest Push - Horde (NJS)
			ach(18396),	-- <Hidden> 10.1.5 Warlock Expansion - Mail Quest Push - Oman's Letter (NJS)
			ach(18507),	-- <Hidden> Completed Legion based Tasks \\ <Hidden> Completed 5 Legion based Tasks
			--10.1.5.49595
			ach(18509),	-- <Hidden> Completed Robot based Tasks
			ach(18543),	-- <Hidden> Completed HvA based Tasks
			--10.1.5.49719
			ach(18555),	-- <Hidden> Completed Murloc based Tasks
			--10.1.5.50006
			ach(18648),	-- <DNT> Eons Fringe - Multitude of Tasks - Completed Twice (Character)
		})),

		--10.1.7
		expansion(EXPANSION.DF, patch(1,7), bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			--10.1.7.50442
			ach(18860),	-- <Hidden> ACCOUNT: Renown Campaign Complete - Tyr 3
			ach(18938),	-- Seeing Red (account)
			--10.1.7.51059
			ach(19137),	-- <Hidden> Base 11.0 Tender [DNT]
			ach(19138),	-- <Hidden> Heroic 11.0 Tender [DNT]
			ach(19139),	-- <Hidden> Epic 11.0 Tender [DNT]
			--10.1.7.51237
			ach(18691),	-- <DNT> Complete the "The Coalition of Flames" questline.
		})),

		-- 10.2.0
		expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
			ach(19216),	-- <DNT> Dream Wardens Rank 1 (Account)
			ach(19217),	-- <DNT> Dream Wardens Rank 2 (Account)
			ach(19218),	-- <DNT> Dream Wardens Rank 3 (Account)
			ach(19219),	-- <DNT> Dream Wardens Rank 4 (Account)
			ach(19220),	-- <DNT> Dream Wardens Rank 5 (Account)
			ach(19221),	-- <DNT> Dream Wardens Rank 6 (Account)
			ach(19222),	-- <DNT> Dream Wardens Rank 7 (Account)
			ach(19223),	-- <DNT> Dream Wardens Rank 8 (Account)
			ach(19224),	-- <DNT> Dream Wardens Rank 9 (Account)
			ach(19225),	-- <DNT> Dream Wardens Rank 10 (Account)
			ach(19226),	-- <DNT> Dream Wardens Rank 11 (Account)
			ach(19227),	-- <DNT> Dream Wardens Rank 12 (Account)
			ach(19228),	-- <DNT> Dream Wardens Rank 13 (Account)
			ach(19229),	-- <DNT> Dream Wardens Rank 14 (Account)
			ach(19231),	-- <DNT> Dream Wardens Rank 16 (Account)
			ach(19232),	-- <DNT> Dream Wardens Rank 17 (Account)
			ach(19233),	-- <DNT> Dream Wardens Rank 18 (Account)
			ach(19234),	-- <DNT> Dream Wardens Rank 19 (Account)
			ach(19256),	-- <DNT> Dream Wardens Rank 1 (Character)
			ach(19257),	-- <DNT> Dream Wardens Rank 2 (Character)
			ach(19258),	-- <DNT> Dream Wardens Rank 3 (Character)
			ach(19259),	-- <DNT> Dream Wardens Rank 4 (Character)
			ach(19260),	-- <DNT> Dream Wardens Rank 5 (Character)
			ach(19261),	-- <DNT> Dream Wardens Rank 6 (Character)
			ach(19262),	-- <DNT> Dream Wardens Rank 7 (Character)
			ach(19263),	-- <DNT> Dream Wardens Rank 8 (Character)
			ach(19264),	-- <DNT> Dream Wardens Rank 9 (Character)
			ach(19265),	-- <DNT> Dream Wardens Rank 10 (Character)
			ach(19266),	-- <DNT> Dream Wardens Rank 11 (Character)
			ach(19267),	-- <DNT> Dream Wardens Rank 12 (Character)
			ach(19268),	-- <DNT> Dream Wardens Rank 13 (Character)
			ach(19269),	-- <DNT> Dream Wardens Rank 14 (Character)
			ach(19270),	-- <DNT> Dream Wardens Rank 15 (Character)
			ach(19271),	-- <DNT> Dream Wardens Rank 16 (Character)
			ach(19272),	-- <DNT> Dream Wardens Rank 17 (Character)
			ach(19273),	-- <DNT> Dream Wardens Rank 18 (Character)
			ach(19274),	-- <DNT> Dream Wardens Rank 19 (Character)
			ach(19275),	-- <DNT> Dream Wardens Rank 20 (Character)
			ach(19348),	-- Gnarlroot kills (Raid Finder Amirdrassil, the Dream's Hope)
			ach(19352),	-- Igira the Cruel kills (Raid Finder Amirdrassil, the Dream's Hope)
			ach(19353),	-- Volcoross kills (Raid Finder Amirdrassil, the Dream's Hope)
			ach(19354),	-- Council of Dreams kills (Raid Finder Amirdrassil, the Dream's Hope)
			ach(19355),	-- Larodar, Keeper of the Flame kills (Raid Finder Amirdrassil, the Dream's Hope)
			ach(19356),	-- Nymue, Warden of the Cycle kills (Raid Finder Amirdrassil, the Dream's Hope)
			ach(19357),	-- Smolderon kills (Raid Finder Amirdrassil, the Dream's Hope)
			ach(19358),	-- Tindral Sageswift, Seer of the Flame kills (Raid Finder Amirdrassil, the Dream's Hope)
			ach(19359),	-- Fyrakk the Blazing kills (Raid Finder Amirdrassil, the Dream's Hope)
			ach(19360),	-- Gnarlroot kills (Normal Amirdrassil, the Dream's Hope)
			ach(19361),	-- Igira the Cruel kills (Normal Amirdrassil, the Dream's Hope)
			ach(19362),	-- Volcoross kills (Normal Amirdrassil, the Dream's Hope)
			ach(19363),	-- Council of Dreams kills (Normal Amirdrassil, the Dream's Hope)
			ach(19364),	-- Larodar, Keeper of the Flame kills (Normal Amirdrassil, the Dream's Hope)
			ach(19365),	-- Nymue, Weaver of the Cycle kills (Normal Amirdrassil, the Dream's Hope)
			ach(19366),	-- Smolderon kills (Normal Amirdrassil, the Dream's Hope)
			ach(19367),	-- Tindral Sageswift, Seer of the Flame kills (Normal Amirdrassil, the Dream's Hope)
			ach(19368),	-- Fyrakk the Blazing kills (Normal Amirdrassil, the Dream's Hope)
			ach(19369),	-- Gnarlroot kills (Heroic Amirdrassil, the Dream's Hope)
			ach(19370),	-- Igira the Cruel kills (Heroic Amirdrassil, the Dream's Hope)
			ach(19371),	-- Volcoross kills (Heroic Amirdrassil, the Dream's Hope)
			ach(19372),	-- Council of Dreams kills (Heroic Amirdrassil, the Dream's Hope)
			ach(19373),	-- Larodar, Keeper of the Flame kills (Heroic Amirdrassil, the Dream's Hope)
			ach(19374),	-- Nymue, Weaver of the Cycle kills (Heroic Amirdrassil, the Dream's Hope)
			ach(19375),	-- Smolderon kills (Heroic Amirdrassil, the Dream's Hope)
			ach(19376),	-- Tindral Sageswift, Seer of the Flame kills (Heroic Amirdrassil, the Dream's Hope)
			ach(19377),	-- Fyrakk the Blazing kills (Heroic Amirdrassil, the Dream's Hope)
			ach(19378),	-- Gnarlroot kills (Mythic Amirdrassil, the Dream's Hope)
			ach(19379),	-- Igira the Cruel kills (Mythic Amirdrassil, the Dream's Hope)
			ach(19380),	-- Volcoross kills (Mythic Amirdrassil, the Dream's Hope)
			ach(19381),	-- Council of Dreams kills (Mythic Amirdrassil, the Dream's Hope)
			ach(19382),	-- Larodar, Keeper of the Flame kills (Mythic Amirdrassil, the Dream's Hope)
			ach(19383),	-- Nymue, Weaver of the Cycle kills (Mythic Amirdrassil, the Dream's Hope)
			ach(19384),	-- Smolderon kills (Mythic Amirdrassil, the Dream's Hope)
			ach(19385),	-- Tindral Sageswift, Seer of the Flame kills (Mythic Amirdrassil, the Dream's Hope)
			ach(19386),	-- Fyrakk the Blazing kills (Mythic Amirdrassil, the Dream's Hope)
			ach(19395),	-- <Hidden> Account has completed 10.2 Upgrade System tutorial quests
			ach(19421),	-- Whelpling's Dreaming Crests earned
			ach(19422),	-- Drake's Dreaming Crests earned
			ach(19423),	-- Wyrm's Dreaming Crests earned
			ach(19424),	-- Aspect's Dreaming Crests earned
			ach(19447),	-- <DNT> Eggs in Abundance Completed
			ach(19451),	-- <DNT> Fandral's Flamescythe Acquisition
			ach(18861),	-- <Hidden> ACCOUNT: Renown Campaign Complete - Tyr 4
			ach(18933),	-- <Hidden> 10.2 Tyr Campaign - Ch 04 - Mail Quest Push - Valunei's Letter (AAO)
			ach(19391),	-- [DNT] Hidden - Fyr'alath - Heroic/Mythic Marker
			--10.2.0.51239
			ach(17730),	-- Random Login Variable B
			ach(18647),	-- <Hidden> 10.1.7 Prologue / 10.2 Intro Quest Launch [NOT USED YET]
			ach(19287),	-- Vicious Saddle (38)
			ach(19289),	-- Vicious Saddle (38)
		})),

		-- 10.2.5
		expansion(EXPANSION.DF, patch(2,5), bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {
			ach(19784),	-- Hearthstone Game Wins
			--10.2.5.52968
			ach(19720),	-- Reclamation of Gilneas (Hidden Character Achievement)
		})),

		-- 10.2.6
		expansion(EXPANSION.DF, patch(2,6), bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6 } }, {
			ach(19579),	-- The Awakened Aspects
			ach(19577),	-- The Awakened Drake
			ach(19578),	-- The Awakened Wyrm
			ach(19538),	-- Whelpling's Awakened Crests earned
			ach(19539),	-- Drake's Awakened Crests earned
			ach(19540),	-- Wyrm's Awakened Crests earned
			ach(19541),	-- Aspect's's Awakened Crests earned
			ach(19551),	-- Vicious Saddle (39)
			ach(20087),	-- <DNT> Plunderstorm Tutorial Tracker - Objective 001 - Complete
			ach(20088),	-- <DNT> Plunderstorm Tutorial Tracker - Objective 002 - Complete
			ach(20089),	-- <DNT> Plunderstorm Tutorial Tracker - Objective 003 - Complete
			ach(20090),	-- <DNT> Plunderstorm Tutorial Tracker - Objective 004 - Complete
			ach(20091),	-- <DNT> Plunderstorm Tutorial Tracker - Objective 005 - Complete
			ach(20092),	-- <DNT> Plunderstorm Tutorial Tracker - Objective 006 - Complete
			ach(20093),	-- <DNT> Plunderstorm Tutorial Tracker - Objective 007 - Complete
			ach(20094),	-- <DNT> Plunderstorm Tutorial Tracker - Objective 008 - Complete
			ach(20095),	-- <DNT> Plunderstorm Tutorial Tracker - Objective 009 - Complete
			ach(20096),	-- <DNT> Plunderstorm Tutorial Tracker - Objective 010 - Complete
			ach(20097),	-- <DNT> Plunderstorm Tutorial Tracker - Objective 011 - Complete
			ach(20201),	-- <Hidden> 10.2.6 Void Zone - Tender - Level 1
			ach(20202),	-- <Hidden> 10.2.6 Void Zone - Tender - Level 2
			ach(20475),	-- <Hidden> 10.2.6 Void Zone - WOTLK Pet
			ach(20476),	-- <Hidden> 10.2.6 Void Zone - WOTLK Mount
			ach(20480),	-- [HIDDEN] Awakening the Dragonflight Raid Portals
			ach(20507),	-- <Hidden> Achievement Title - Plunderlord - 10.2.6 Void Zone
			ach(20513),	-- <Hidden> 10.2.6 Void Zone - Glamrok <DNT>
			ach(20514),	-- <Hidden> 10.2.6 Void Zone - Pepe <DNT>
			ach(20515),	-- <Hidden> 10.2.6 Void Zone - Toy <DNT>
			ach(20516),	-- <Hidden> 10.2.6 Void Zone - Quest <DNT>
			-- 10.2.6.53877
			ach(40065),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 6 [DNT]
			ach(40066),	-- <Hidden> 10.2.6 Void Zone - Keg Leg  Renown 2 [DNT]
			ach(40067),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 5 [DNT]
			ach(40068),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 8 [DNT]
			ach(40069),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 10 [DNT]
			ach(40070),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 11 [DNT]
			ach(40071),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 13 [DNT]
			ach(40072),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 16 [DNT]
			ach(40073),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 18 [DNT]
			ach(40074),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 20 [DNT]
			ach(40075),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 22 [DNT]
			ach(40076),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 27 [DNT]
			ach(40077),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 30 [DNT]
			ach(40078),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 31 [DNT]
			ach(40079),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 32 [DNT]
			ach(40080),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 36 [DNT]
			ach(40081),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 40 [DNT]
			-- 10.2.6.54070
			ach(40171),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 24 [DNT]
			ach(40192),	-- <Hidden> 10.2.6 Void Zone - Keg Leg Renown 39 [DNT]
			ach(40193),	-- Into the Storm (copy)
			-- 10.2.6.54358
			ach(40315),	-- [HIDDEN] Now THIS is Dragon Racing!
		})),

		-- 10.2.7
		expansion(EXPANSION.DF, patch(2,7), bubbleDownSelf({ ["timeline"] = { ADDED_10_2_7 } }, {
			-- 10.2.7.54171
			ach(20039),	-- [DNT] Damage - Humanoid
			ach(20046),	-- [DNT] Damage - Beast
			ach(20047),	-- [DNT] Damage - Aberration
			ach(20048),	-- [DNT] Damage - Demon
			ach(20049),	-- [DNT] Damage - Dragonkin
			ach(20050),	-- [DNT] Damage - Elemental
			ach(20051),	-- [DNT] Damage - Giant
			ach(20052),	-- [DNT] Damage - Mechanical
			ach(20053),	-- [DNT] Damage - Undead
			ach(20054),	-- [DNT] Resistance - Arcane
			ach(20055),	-- [DNT] Resistance - Fire
			ach(20056),	-- [DNT] Resistance - Frost
			ach(20057),	-- [DNT] Resistance - Holy
			ach(20058),	-- [DNT] Resistance - Nature
			ach(20059),	-- [DNT] Resistance - Physical
			ach(20060),	-- [DNT] Resistance - Shadow
			ach(20061),	-- [DNT] Stat - Critical Strike
			ach(20062),	-- [DNT] Stat - Haste
			ach(20063),	-- [DNT] Stat - Leech
			ach(20064),	-- [DNT] Stat - Mastery
			ach(20065),	-- [DNT] Stat - Primary
			ach(20066),	-- [DNT] Stat - Speed
			ach(20067),	-- [DNT] Stat - Stamina
			ach(20068),	-- [DNT] Stat - Versatility
			ach(20477),	-- [DNT] Stat - Experience
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.0.0
		expansion(EXPANSION.TWW, patch(0,01), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_0 } }, {
			-- 11.0.0.54311
			ach(19467),	-- 1st level 80 on account (DNT)
			ach(19469),	-- 2nd level 80 on account (DNT)
			ach(19472),	-- 3nd level 80 on account (DNT)
			ach(19473),	-- 4th level 80 on account (DNT)
			ach(19474),	-- 5th level 80 on account (DNT)
			ach(19510),	-- Test - For PH - Multiple Characters Hitting Max Level (DNT)
			ach(19552),	-- Vicious Saddle (39)
			ach(19705),	-- Test - For EHW - Account Wide Criteria Test (DNT)
			ach(19735),	-- Algari Alchemy 25 (DNT) \\ Algarian Alchemy 25 (DNT)
			ach(19736),	-- Algari Alchemy 50 (DNT) \\ Algarian Alchemy 50 (DNT)
			ach(19737),	-- Algari Alchemy 75 (DNT) \\ Algarian Alchemy 75 (DNT)
			ach(19738),	-- Algari Alchemy 100 (DNT) \\ Algarian Alchemy 100 (DNT)
			ach(19739),	-- Algari Blacksmithing 25 (DNT) \\ Algarian Blacksmithing 25 (DNT)
			ach(19740),	-- Algari Blacksmithing 50 (DNT) \\ Algarian Blacksmithing 50 (DNT)
			ach(19741),	-- Algari Blacksmithing 75 (DNT) \\ Algarian Blacksmithing 75 (DNT)
			ach(19742),	-- Algari Blacksmithing 100 (DNT) \\ Algarian Blacksmithing 100 (DNT)
			ach(19743),	-- Algari Enchanting 25 (DNT) \\ Algarian Enchanting 25 (DNT)
			ach(19744),	-- Algari Enchanting 50 (DNT) \\ Algarian Enchanting 50 (DNT)
			ach(19745),	-- Algari Enchanting 75 (DNT) \\ Algarian Enchanting 75 (DNT)
			ach(19746),	-- Algari Enchanting 100 (DNT) \\ Algarian Enchanting 100 (DNT)
			ach(19747),	-- Algari Engineering 25 (DNT) \\ Algarian Engineering 25 (DNT)
			ach(19748),	-- Algari Engineering 50 (DNT) \\ Algarian Engineering 50 (DNT)
			ach(19749),	-- Algari Engineering 75 (DNT) \\ Algarian Engineering 75 (DNT)
			ach(19750),	-- Algari Engineering 100 (DNT) \\ Algarian Engineering 100 (DNT)
			ach(19751),	-- Algari Inscription 25 (DNT) \\ Algarian Inscription 25 (DNT)
			ach(19752),	-- Algari Inscription 50 (DNT) \\ Algarian Inscription 50 (DNT)
			ach(19753),	-- Algari Inscription 75 (DNT) \\ Algarian Inscription 75 (DNT)
			ach(19754),	-- Algari Inscription 100 (DNT) \\ Algarian Inscription 100 (DNT)
			ach(19755),	-- Algari Jewelcrafting 25 (DNT) \\ Algarian Jewelcrafting 25 (DNT)
			ach(19756),	-- Algari Jewelcrafting 50 (DNT) \\ Algarian Jewelcrafting 50 (DNT)
			ach(19757),	-- Algari Jewelcrafting 75 (DNT) \\ Algarian Jewelcrafting 75 (DNT)
			ach(19758),	-- Algari Jewelcrafting 100 (DNT) \\ Algarian Jewelcrafting 100 (DNT)
			ach(19759),	-- Algari Leatherworking 25 (DNT) \\ Algarian Leatherworking 25 (DNT)
			ach(19760),	-- Algari Leatherworking 50 (DNT) \\ Algarian Leatherworking 50 (DNT)
			ach(19761),	-- Algari Leatherworking 75 (DNT) \\ Algarian Leatherworking 75 (DNT)
			ach(19762),	-- Algari Leatherworking 100 (DNT) \\ Algarian Leatherworking 100 (DNT)
			ach(19763),	-- Algari Tailoring 25 (DNT) \\ Algarian Tailoring 25 (DNT)
			ach(19764),	-- Algari Tailoring 50 (DNT) \\ Algarian Tailoring 50 (DNT)
			ach(19765),	-- Algari Tailoring 75 (DNT) \\ Algarian Tailoring 75 (DNT)
			ach(19766),	-- Algari Tailoring 100 (DNT) \\ Algarian Tailoring 100 (DNT)
			ach(19767),	-- Algari Herbalism 25 (DNT) \\ Algarian Herbalism 25 (DNT)
			ach(19768),	-- Algari Herbalism 50 (DNT) \\ Algarian Herbalism 50 (DNT)
			ach(19769),	-- Algari Herbalism 75 (DNT) \\ Algarian Herbalism 75 (DNT)
			ach(19770),	-- Algari Herbalism 100 (DNT) \\ Algarian Herbalism 100 (DNT)
			ach(19771),	-- Algari Mining 25 (DNT) \\ Algarian Mining 25 (DNT)
			ach(19772),	-- Algari Mining 50 (DNT) \\ Algarian Mining 50 (DNT)
			ach(19773),	-- Algari Mining 75 (DNT) \\ Algarian Mining 75 (DNT)
			ach(19774),	-- Algari Mining 100 (DNT) \\ Algarian Mining 100 (DNT)
			ach(19775),	-- Algari Skinning 25 (DNT) \\ Algarian Skinning 25 (DNT)
			ach(19776),	-- Algari Skinning 50 (DNT) \\ Algarian Skinning 50 (DNT)
			ach(19777),	-- Algari Skinning 75 (DNT) \\ Algarian Skinning 75 (DNT)
			ach(19778),	-- Algari Skinning 100 (DNT) \\ Algarian Skinning 100 (DNT)
			ach(20074),	-- Dynamic Duo Complete (DNT)
			ach(20077),	-- Terrific Trio Complete (DNT)
			ach(20078),	-- Quintessential Quintet Complete (DNT)
			ach(39919),	-- Might of Dragonblight (char specific hidden copy)
			ach(39920),	-- The Empire of Zul'Drak (char specific hidden copy)
			ach(39921),	-- Fo' Grizzle My Shizzle (char specific hidden copy)
			ach(39922),	-- The Summit of Storm Peaks (char specific hidden copy)
			ach(39923),	-- Into the Basin (char specific hidden copy)
			ach(39924),	-- Utgarde Keep (char specific hidden copy)
			ach(39925),	-- The Nexus (char specific hidden copy)
			ach(39926),	-- The Culling of Stratholme (char specific hidden copy)
			ach(39927),	-- Azjol-Nerub (char specific hidden copy)
			ach(39928),	-- Ahn'kahet: The Old Kingdom (char specific hidden copy)
			ach(39929),	-- Drak'Tharon Keep (char specific hidden copy)
			ach(39930),	-- Gundrak (char specific hidden copy)
			ach(39931),	-- Halls of Stone (char specific hidden copy)
			ach(39932),	-- Halls of Lightning (char specific hidden copy)
			ach(39933),	-- The Oculus (char specific hidden copy)
			ach(39934),	-- Utgarde Pinnacle (char specific hidden copy)
			ach(39935),	-- 100 Honorable Kills (char specific hidden copy)
			ach(39936),	-- Stratholme (char specific hidden copy)
			ach(39937),	-- Hero of the Frostwolf Clan (char specific hidden copy)
			ach(39938),	-- Mysteries of the Marsh (char specific hidden copy)
			ach(39939),	-- Terror of Terokkar (char specific hidden copy)
			ach(39940),	-- Nagrand Slam (char specific hidden copy)
			ach(39941),	-- On the Blade's Edge (char specific hidden copy)
			ach(39942),	-- Into the Nether (char specific hidden copy)
			ach(39943),	-- Terror of Terokkar (char specific hidden copy)
			ach(39944),	-- Nagrand Slam (char specific hidden copy)
			ach(39945),	-- Fo' Grizzle My Shizzle (char specific hidden copy)
			ach(39946),	-- Might of Dragonblight (char specific hidden copy)
			ach(39947),	-- Sinking into Vashj'ir (char specific hidden copy)
			ach(39948),	-- Coming Down the Mountain (char specific hidden copy)
			ach(39949),	-- Deep into Deepholm (char specific hidden copy)
			ach(39950),	-- Unearthing Uldum (char specific hidden copy)
			ach(39951),	-- Fading into Twilight (char specific hidden copy)
			ach(39952),	-- Eastern Plaguelands Quests (char specific hidden copy)
			ach(39953),	-- Western Plaguelands Quests (char specific hidden copy)
			ach(39954),	-- Silverpine Forest Quests (char specific hidden copy)
			ach(39955),	-- Hillsbrad Foothills Quests (char specific hidden copy)
			ach(39956),	-- Arathi Highlands Quests (char specific hidden copy)
			ach(39957),	-- Hinterlands Quests (char specific hidden copy)
			ach(39958),	-- Loch Modan Quests (char specific hidden copy)
			ach(39959),	-- Badlands Quests (char specific hidden copy)
			ach(39960),	-- Burning Steppes Quests (char specific hidden copy)
			ach(39961),	-- Redridge Mountains Quests (char specific hidden copy)
			ach(39962),	-- Westfall Quests (char specific hidden copy)
			ach(39963),	-- Swamp of Sorrows Quests (char specific hidden copy)
			ach(39964),	-- Cape of Stranglethorn Quests (char specific hidden copy)
			ach(39965),	-- Northern Stranglethorn Quests (char specific hidden copy)
			ach(39966),	-- Ghostlands Quests (char specific hidden copy)
			ach(39967),	-- Blasted Lands Quests (char specific hidden copy)
			ach(39968),	-- Searing Gorge Quests (char specific hidden copy)
			ach(39969),	-- Ashenvale Quests (char specific hidden copy)
			ach(39970),	-- Bloodmyst Isle Quests (char specific hidden copy)
			ach(39971),	-- Azshara Quests (char specific hidden copy)
			ach(39972),	-- Darkshore Quests (char specific hidden copy)
			ach(39973),	-- Dustwallow Marsh Quests (char specific hidden copy)
			ach(39974),	-- Desolace Quests (char specific hidden copy)
			ach(39975),	-- Felwood Quests (char specific hidden copy)
			ach(39976),	-- Feralas Quests (char specific hidden copy)
			ach(39977),	-- Northern Barrens Quests (char specific hidden copy)
			ach(39978),	-- Silithus Quests (char specific hidden copy)
			ach(39979),	-- Tanaris Quests (char specific hidden copy)
			ach(39980),	-- Stonetalon Mountains Quests (char specific hidden copy)
			ach(39981),	-- Southern Barrens Quests (char specific hidden copy)
			ach(39982),	-- Thousand Needles Quests (char specific hidden copy)
			ach(39983),	-- Un'Goro Crater Quests (char specific hidden copy)
			ach(39984),	-- Winterspring Quests (char specific hidden copy)
			ach(39985),	-- Ashenvale Quests (char specific hidden copy)
			ach(39986),	-- Dustwallow Marsh Quests (char specific hidden copy)
			ach(39987),	-- Feralas Quests (char specific hidden copy)
			ach(39988),	-- Stonetalon Mountains Quests (char specific hidden copy)
			ach(39989),	-- Southern Barrens Quests (char specific hidden copy)
			ach(39990),	-- Sinking into Vashj'ir (char specific hidden copy)
			ach(39991),	-- Full Caravan (char specific hidden copy)
			ach(39992),	-- Fading into Twilight (char specific hidden copy)
			ach(39993),	-- Darkmoon Dominator (char specific hidden copy)
			ach(39994),	-- Upjade Complete (char specific hidden copy)
			ach(39995),	-- Rally the Valley (char specific hidden copy)
			ach(39996),	-- Upjade Complete (char specific hidden copy)
			ach(39997),	-- Slum It in the Summit (char specific hidden copy)
			ach(39998),	-- Slum It in the Summit (char specific hidden copy)
			ach(39999),	-- One Steppe Forward, Two Steppes Back (char specific hidden copy)
			ach(40000),	-- Dread Haste Makes Dread Waste (char specific hidden copy)
			ach(40001),	-- Amber is the Color of My Energy (char specific hidden copy)
			ach(40002),	-- Theramore's Fall (char specific hidden copy)
			ach(40003),	-- Theramore's Fall (char specific hidden copy)
			ach(40004),	-- You'll Get Caught Up In The... Frostfire! (char specific hidden copy)
			ach(40005),	-- As I Walk Through the Valley of the Shadow of Moon (char specific hidden copy)
			ach(40006),	-- Don't Let the Tala-door Hit You on the Way Out (char specific hidden copy)
			ach(40007),	-- Don't Let the Tala-door Hit You on the Way Out (char specific hidden copy)
			ach(40008),	-- Putting the Gore in Gorgrond (char specific hidden copy)
			ach(40009),	-- Putting the Gore in Gorgrond (char specific hidden copy)
			ach(40010),	-- Between Arak and a Hard Place (char specific hidden copy)
			ach(40011),	-- Between Arak and a Hard Place (char specific hidden copy)
			ach(40012),	-- Nagrandeur (char specific hidden copy)
			ach(40013),	-- Nagrandeur (char specific hidden copy)
			ach(40014),	-- Arakkoa Outcasts (char specific hidden copy)
			ach(40015),	-- Ain't No Mountain High Enough (char specific hidden copy)
			ach(40016),	-- Improving on History (char specific hidden copy)
			ach(40017),	-- Good Suramaritan (char specific hidden copy)
			ach(40018),	-- Unleashed Monstrosities (char specific hidden copy)
			ach(40019),	-- Insurrection (char specific hidden copy)
			ach(40020),	-- Legionfall Commander (char specific hidden copy)
			ach(40021),	-- The Throne of Zuldazar (char specific hidden copy)
			ach(40022),	-- The Dark Heart of Nazmir (char specific hidden copy)
			ach(40023),	-- Seat of the Pantheon (char specific hidden copy)
			ach(40024),	-- The Descent into Madness (char specific hidden copy)
			ach(40025),	-- Wetlands Quests (char specific hidden copy)
			ach(40026),	-- Duskwood Quests (char specific hidden copy)
			ach(40027),	-- Secrets in the Sands (char specific hidden copy)
			ach(40028),	-- Zandalar Forever! (char specific hidden copy)
			ach(40029),	-- Stormsong and Dance (char specific hidden copy)
			ach(40030),	-- Drust Do It. (char specific hidden copy)
			ach(40031),	-- Halls of Containment (char specific hidden copy)
			ach(40032),	-- Crimson Descent (char specific hidden copy)
			ach(40033),	-- Heart of Corruption (char specific hidden copy)
			ach(40034),	-- Welcome to Zandalar (char specific hidden copy)
			ach(40035),	-- Come Sail Away (char specific hidden copy)
			ach(40036),	-- Archipelago Explorer (char specific hidden copy)
			ach(40037),	-- Victory or Death (char specific hidden copy)
			ach(40038),	-- Junkyard Collector (char specific hidden copy)
			ach(40039),	-- The Circle of Stars (char specific hidden copy)
			ach(40040),	-- The Waking Dream (char specific hidden copy)
			ach(40041),	-- Adventurer of Bastion (char specific hidden copy)
			ach(40042),	-- Adventurer of Maldraxxus (char specific hidden copy)
			ach(40043),	-- Adventurer of Ardenweald (char specific hidden copy)
			ach(40044),	-- Adventurer of Revendreth (char specific hidden copy)
			ach(40045),	-- Into the Maw (char specific hidden copy)
			ach(40046),	-- Pursuing Loyalty (char specific hidden copy)
			ach(40047),	-- Castle Nathria (char specific hidden copy)
			ach(40048),	-- It's In The Mix (char specific hidden copy)
			ach(40049),	-- Ramparts Racer (char specific hidden copy)
			ach(40050),	-- Fractured Faerie Tales (char specific hidden copy)
			ach(40051),	-- Toss a Seed to Your Hunter... (char specific hidden copy)
			ach(40052),	-- Bloodsport (char specific hidden copy)
			ach(40053),	-- Sand, Sand Everywhere! (char specific hidden copy)
			ach(40054),	-- Fragments of History (char specific hidden copy)
			ach(40055),	-- The Gentleman Elemental (char specific hidden copy)
			ach(40056),	-- Fury of the Storm (char specific hidden copy)
			ach(40057),	-- Hero of the Stormpike Guard (char specific hidden copy)
			ach(40060),	-- Might of the Alliance (char specific hidden copy)
			ach(40121),	-- <Hidden> Account has completed 11.0 Upgrade System tutorial quests
			ach(40172),	-- Dynamic Flight Power 1
			ach(40173),	-- Dynamic Flight Power 2
			ach(40174),	-- Dynamic Flight Power 3
			ach(40175),	-- Dynamic Flight Power 4
			ach(40176),	-- Dynamic Flight Power 5
			ach(40177),	-- Dynamic Flight Power 6
			ach(40178),	-- Dynamic Flight Power 7
			ach(40179),	-- Dynamic Flight Power 8
			ach(40180),	-- Dynamic Flight Power 9
			ach(40181),	-- Dynamic Flight Power 10
			ach(40182),	-- Dynamic Flight Power 11
			ach(40183),	-- Dynamic Flight Power 12
			ach(40184),	-- Dynamic Flight Power 13
			ach(40185),	-- Dynamic Flight Power 14
			ach(40186),	-- Dynamic Flight Power 15
			ach(40187),	-- Dynamic Flight Power 16
			ach(40188),	-- Dynamic Flight Power 17
			ach(40189),	-- Dynamic Flight Power 18
			ach(40190),	-- Dynamic Flight Power 19
			ach(40191),	-- Dynamic Flight Power 20
			ach(40195),	-- Deephaul Ravine victories
			ach(40196),	-- Deephaul Ravine battles
			ach(40197),	-- Rated Deephaul Ravine battles
			ach(40198),	-- Rated Deephaul Ravine victories
			ach(40199),	-- Rated Battleground Blitz played
			ach(40200),	-- Rated Battleground Blitz played the most
			ach(40201),	-- Rated Battleground Blitz won
			ach(40202),	-- Rated Battleground Blitz won the most
			ach(40267),	-- Ulgrax the Devourer kills (Raid Finder Nerub-ar Palace)
			ach(40268),	-- Ulgrax the Devourer kills (Normal Nerub-ar Palace)
			ach(40269),	-- Ulgrax the Devourer kills (Heroic Nerub-ar Palace)
			ach(40270),	-- Ulgrax the Devourer kills (Mythic Nerub-ar Palace)
			ach(40271),	-- The Bloodbound Horror kills (Raid Finder Nerub-ar Palace)
			ach(40272),	-- The Bloodbound Horror kills (Normal Nerub-ar Palace)
			ach(40273),	-- The Bloodbound Horror kills (Heroic Nerub-ar Palace)
			ach(40274),	-- The Bloodbound Horror kills (Mythic Nerub-ar Palace)
			ach(40275),	-- Sikran, Captain of the Sureki kills (Raid Finder Nerub-ar Palace)
			ach(40276),	-- Sikran, Captain of the Sureki kills (Normal Nerub-ar Palace)
			ach(40277),	-- Sikran, Captain of the Sureki kills (Heroic Nerub-ar Palace)
			ach(40278),	-- Sikran, Captain of the Sureki kills (Mythic Nerub-ar Palace)
			ach(40279),	-- Rasha'nan kills (Raid Finder Nerub-ar Palace)
			ach(40280),	-- Rasha'nan kills (Normal Nerub-ar Palace)
			ach(40281),	-- Rasha'nan kills (Heroic Nerub-ar Palace)
			ach(40282),	-- Rasha'nan kills (Mythic Nerub-ar Palace)
			ach(40283),	-- Broodtwister Ovi'nax kills (Raid Finder Nerub-ar Palace) \\ Eggtender Ovi'nax kills (Raid Finder Nerub-ar Palace)
			ach(40284),	-- Broodtwister Ovi'nax kills (Normal Nerub-ar Palace) \\ Eggtender Ovi'nax kills (Normal Nerub-ar Palace)
			ach(40285),	-- Broodtwister Ovi'nax kills (Heroic Nerub-ar Palace) \\ Eggtender Ovi'nax kills (Heroic Nerub-ar Palace)
			ach(40286),	-- Broodtwister Ovi'nax kills (Mythic Nerub-ar Palace) \\ Eggtender Ovi'nax kills (Mythic Nerub-ar Palace)
			ach(40287),	-- Nexus-Princess Ky'veza kills (Raid Finder Nerub-ar Palace)
			ach(40288),	-- Nexus-Princess Ky'veza kills (Normal Nerub-ar Palace)
			ach(40289),	-- Nexus-Princess Ky'veza kills (Heroic Nerub-ar Palace)
			ach(40290),	-- Nexus-Princess Ky'veza kills (Mythic Nerub-ar Palace)
			ach(40291),	-- The Silken Court kills (Raid Finder Nerub-ar Palace)
			ach(40292),	-- The Silken Court kills (Normal Nerub-ar Palace)
			ach(40293),	-- The Silken Court kills (Heroic Nerub-ar Palace)
			ach(40294),	-- The Silken Court kills (Mythic Nerub-ar Palace)
			ach(40295),	-- Queen Ansurek kills (Raid Finder Nerub-ar Palace)
			ach(40296),	-- Queen Ansurek kills (Normal Nerub-ar Palace)
			ach(40297),	-- Queen Ansurek kills (Heroic Nerub-ar Palace)
			ach(40298),	-- Queen Ansurek kills (Mythic Nerub-ar Palace)
			ach(20482),	-- The Darkness kills (Normal Darkflame Cleft)
			ach(20483),	-- The Darkness kills (Heroic Darkflame Cleft)
			ach(20484),	-- The Darkness kills (Mythic Darkflame Cleft)
			ach(20485),	-- Ki'katal the Harvester kills (Normal Ara-Kara, City of Echoes)
			ach(20486),	-- Ki'katal the Harvester kills (Heroic Ara-Kara, City of Echoes)
			ach(20487),	-- Ki'katal the Harvester kills (Mythic Ara-Kara, City of Echoes) (copy)
			ach(20488),	-- Valorstones earned
			ach(20489),	-- Weathered Harbinger Crests earned
			ach(20490),	-- Carved Harbinger Crests earned
			ach(20491),	-- Runed Harbinger Crests earned
			ach(20492),	-- Gilded Harbinger Crests earned
			ach(40145),	-- So Much Sharing

			-- 11.0.0.54774
			ach(40543),	-- <DNT> Patient 1 - Mereldar Infirmary
			ach(40544),	-- <DNT> Patient 2 - Mereldar Infirmary
			ach(40545),	-- <DNT> Patient 3 - Mereldar Infirmary
			ach(40547),	-- <DNT> Patient 4 - Mereldar Infirmary
			ach(40548),	-- <DNT> Patient 5 - Mereldar Infirmary
			ach(40549),	-- <DNT> Patient 6 - Mereldar Infirmary
			ach(40550),	-- <DNT> Patient 7 - Mereldar Infirmary
			ach(40569),	-- Nothing Boring About Borean (char specific hidden copy)
			ach(40570),	-- I've Toured the Fjord (char specific hidden copy)
			ach(40571),	-- Icecrown: The Final Goal (char specific hidden copy)
			ach(40572),	-- To Hellfire and Back (char specific hidden copy)
			ach(40573),	-- Shadow of the Betrayer (char specific hidden copy)
			ach(40574),	-- To Hellfire and Back (char specific hidden copy)
			ach(40575),	-- I've Toured the Fjord (char specific hidden copy)
			ach(40576),	-- Nothing Boring About Borean (char specific hidden copy)
			ach(40577),	-- Mighty Roamin' Krasaranger (char specific hidden copy)
			ach(40578),	-- Mighty Roamin' Krasaranger (char specific hidden copy)
			ach(40579),	-- That's Val'sharah Folks! (char specific hidden copy)
			ach(40580),	-- Azsuna Matata (char specific hidden copy)
			ach(40581),	-- Vrykul Story, Bro (char specific hidden copy)
			ach(40582),	-- Breaching the Tomb (char specific hidden copy)
			ach(40583),	-- You Are Now Prepared! (char specific hidden copy)
			ach(40584),	-- A Sound Plan (char specific hidden copy)

			-- 11.0.0.54935
			ach(40652),	-- Goldie Baronbottom kills (Normal Cinderbrew Meadery)
			ach(40653),	-- Goldie Baronbottom kills (Heroic Cinderbrew Meadery)
			ach(40654),	-- Goldie Baronbottom kills (Mythic Cinderbrew Meadery)
			ach(40657),	-- Prioress Murrapray kills (Normal Priory of the Sacred Flame)
			ach(40658),	-- Prioress Murrapray kills (Heroic Priory of the Sacred Flame)
			ach(40659),	-- Prioress Murrapray kills (Mythic Priory of the Sacred Flame)
			ach(40706),	-- Izo, the Grand Splicer kills (Normal City of Threads)
			ach(40709),	-- Izo, the Grand Splicer kills (Heroic City of Threads)
			ach(40710),	-- Izo, the Grand Splicer kills (Mythic City of Threads)
			ach(40711),	-- Rasha'nan kills (Normal The Dawnbreaker)
			ach(40714),	-- Rasha'nan kills (Heroic The Dawnbreaker)
			ach(40715),	-- Rasha'nan kills (Mythic The Dawnbreaker)
			ach(40716),	-- Voidstone Monstrosity kills (Normal The Rookery)
			ach(40717),	-- Voidstone Monstrosity kills (Heroic The Rookery)
			ach(40718),	-- Voidstone Monstrosity kills (Mythic The Rookery)
			ach(40719),	-- Void Speaker Eirich (Normal The Stonevault)
			ach(40721),	-- Void Speaker Eirich (Heroic The Stonevault)
			ach(40722),	-- Void Speaker Eirich (Mythic The Stonevault)

			-- 11.0.0.55000
			ach(40734),	-- Total delves completed
			ach(40735),	-- Fungal Folly clears
			ach(40736),	-- Kriegval's Rest clears
			ach(40737),	-- Earthcrawl Mines clears
			ach(40738),	-- The Waterworks clears
			ach(40739),	-- The Dread Pit clears
			ach(40740),	-- Nightfall Sanctum clears
			ach(40741),	-- Mycomancer Cavern clears
			ach(40742),	-- The Sinkhole clears
			ach(40743),	-- Skittering Breach clears
			ach(40744),	-- The Underkeep clears
			ach(40745),	-- Tak-Rethan Abyss clears
			ach(40746),	-- The Spiral Weave clears
			ach(40747),	-- Zekvir's Lair clears
			ach(40748),	-- Total deaths in delves
			ach(40749),	-- Restored Coffer Keys obtained
			ach(40751),	-- The War Within delve completed the most
			ach(40757),	-- The War Within total delves completed
			ach(40758),	-- The War Within companion levels obtained
			ach(40759),	-- Companion levels obtained
			ach(40760),	-- Returned by evokers
			ach(40761),	-- Restored by paladins
			ach(40764),	-- Treasures found
			ach(40765),	-- The War Within treasures found
			ach(40766),	-- Tier 1 delves completed
			ach(40767),	-- Tier 2 delves completed
			ach(40768),	-- Tier 3 delves completed
			ach(40769),	-- Tier 4 delves completed
			ach(40770),	-- Tier 5 delves completed
			ach(40771),	-- Tier 6 delves completed
			ach(40772),	-- Tier 7 delves completed
			ach(40773),	-- Tier 8 delves completed
			ach(40774),	-- Tier 9 delves completed
			ach(40775),	-- Tier 10 delves completed
			ach(40776),	-- Tier 11 delves completed
			ach(40777),	-- The War Within Tier 1 delves completed
			ach(40778),	-- The War Within Tier 2 delves completed
			ach(40779),	-- The War Within Tier 3 delves completed
			ach(40780),	-- The War Within Tier 4 delves completed
			ach(40781),	-- The War Within Tier 5 delves completed
			ach(40782),	-- The War Within Tier 6 delves completed
			ach(40783),	-- The War Within Tier 7 delves completed
			ach(40784),	-- The War Within Tier 8 delves completed
			ach(40785),	-- The War Within Tier 9 delves completed
			ach(40786),	-- The War Within Tier 10 delves completed
			ach(40787),	-- The War Within Tier 11 delves completed

			-- 11.0.0.55185
			ach(40800),	-- Warband Tutorial Complete - Teach Warband Bank Summon (DNT)

			-- 11.0.0.55288
			ach(40839),	-- Delve PTR Cheat

			-- 11.0.0.55818
			ach(40888),	-- Heroic: Awakened Storms (DNT) (Character specific hidden copy)
			ach(40892),	-- Heroic: Awakened Shadows (DNT) (Character specific copy)
			ach(40893),	-- Heroic: Awakened Flames (DNT) (Character specific hidden copy)
		})),

		-- 11.0.2
		expansion(EXPANSION.TWW, patch(0,2), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
			-- 11.0.2.55399
			ach(40857),	-- Warbands: Bank Quest Unlock
			ach(40861),	-- Mislaid Curiosities looted

			-- 11.0.2.55522
			ach(40865),	-- Puzzles completed

			-- 11.0.2.55959
			ach(40895),	-- Don't Call Me Junior (DNT) (Character Specific Hidden Copy)
			ach(40896),	-- Don't Call Me Junior (DNT) (Character specific hidden copy)
			ach(40899),	-- Allied Races: Earthen (copy)

			-- 11.0.2.56313
			ach(40974),	-- [DNT] <Hidden> Mythic+ Rating > 0 (The War Within, any season)

			-- 11.0.2.56819
			ach(41085),	-- Worm Theory (copy)
		})),

		-- 11.0.5
		expansion(EXPANSION.TWW, patch(0,5), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
			-- 11.0.5.56487
			ach(40886),	-- <Hidden> Is Dracthyr For Soar Wingman
		})),

		-- 11.0.7
		expansion(EXPANSION.TWW, patch(0,7), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_7 } }, {
			ach(41213),	-- Family Battler of Khaz Algar (copy)
			ach(41218),	-- <DNT> Plunderstorm Plunder Tracker - V1.5 11.0.7 - Mainline Power
			ach(40877),	-- <Hidden> RR - 4b
		})),

		-- 11.1.0
		expansion(EXPANSION.TWW, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
			ach(40908),	-- Cage of Carnage matches
			ach(40909),	-- Cage of Carnage victories
			ach(41102),	-- Excavation Site 9 clears
			ach(41103),	-- Sidestreet Sluice clears
			ach(41104),	-- Demolition Dome clears
			ach(41299),	-- Vexie and the Geargrinders (Raid Finder Liberation of Undermine)
			ach(41300),	-- Vexie and the Geargrinders (Normal Liberation of Undermine)
			ach(41301),	-- Vexie and the Geargrinders (Heroic Liberation of Undermine)
			ach(41302),	-- Vexie and the Geargrinders Mythic Liberation of Undermine)
			ach(41303),	-- Cauldron of Carnage (Raid Finder Liberation of Undermine)
			ach(41304),	-- Cauldron of Carnage (Normal Liberation of Undermine)
			ach(41305),	-- Cauldron of Carnage (Heroic Liberation of Undermine)
			ach(41306),	-- Cauldron of Carnage (Mythic Liberation of Undermine)
			ach(41307),	-- Rik Reverb (Raid Finder Liberation of Undermine)
			ach(41308),	-- Rik Reverb (Normal Liberation of Undermine)
			ach(41309),	-- Rik Reverb (Heroic Liberation of Undermine)
			ach(41310),	-- Rik Reverb (Mythic Liberation of Undermine)
			ach(41311),	-- Stix Bunkumker (Raid Finder Liberation of Undermine)
			ach(41312),	-- Stix Bunkumker (Normal Liberation of Undermine)
			ach(41313),	-- Stix Bunkumker (Heroic Liberation of Undermine)
			ach(41314),	-- Stix Bunkumker (Mythic Liberation of Undermine)
			ach(41315),	-- Sprocketmonger Locknstock (Raid Finder Liberation of Undermine)
			ach(41316),	-- Sprocketmonger Locknstock (Normal Liberation of Undermine)
			ach(41317),	-- Sprocketmonger Locknstock (Heroic Liberation of Undermine)
			ach(41318),	-- Sprocketmonger Locknstock (Mythic Liberation of Undermine)
			ach(41319),	-- The One-Armed Bandit (Raid Finder Liberation of Undermine)
			ach(41320),	-- The One-Armed Bandit (Normal Liberation of Undermine)
			ach(41321),	-- The One-Armed Bandit (Heroic Liberation of Undermine)
			ach(41322),	-- The One-Armed Bandit (Mythic Liberation of Undermine)
			ach(41323),	-- Mug'Zee, Heads of Security (Raid Finder Liberation of Undermine)
			ach(41324),	-- Mug'Zee, Heads of Security (Normal Liberation of Undermine)
			ach(41325),	-- Mug'Zee, Heads of Security (Heroic Liberation of Undermine)
			ach(41326),	-- Mug'Zee, Heads of Security (Mythic Liberation of Undermine)
			ach(41327),	-- Chrome King Gallywix (Raid Finder Liberation of Undermine)
			ach(41328),	-- Chrome King Gallywix (Normal Liberation of Undermine)
			ach(41329),	-- Chrome King Gallywix (Heroic Liberation of Undermine)
			ach(41330),	-- Chrome King Gallywix (Mythic Liberation of Undermine)
			ach(41331),	-- G-99 Breakneck <Tracking Achievement>
			ach(41342),	-- Geezle Gigazap (Normal Operation: Floodgate)
			ach(41343),	-- Geezle Gigazap (Heroic Operation: Floodgate)
			ach(41344),	-- Geezle Gigazap (Mythic Operation: Floodgate)
			ach(41364),	-- Earn and Tutorialize First Warband Camp (Not Used!) (DNT)
			ach(41365),	-- Season 2 - Defeated Underpin
			ach(41683),	-- Khaz Algar Safari (copy)
			-- 11.1.0.58626
			ach(41696),	-- Vicious Saddle (40)
			ach(41697),	-- Vicious Saddle (40)
			ach(41698),	-- Vicious Saddle (41)
			ach(41699),	-- Vicious Saddle (41)
		})),
	}),
});