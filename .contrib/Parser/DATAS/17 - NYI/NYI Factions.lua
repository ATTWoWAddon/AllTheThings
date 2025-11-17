---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- Everything in this file hasn't been implemented yet.
-- We don't need all of this as part of the addon since there's no trigger to alert that a Faction has
-- been encountered, and it really causes the Dynamic population to take forever since every one of these Factions is added into the Main list

--[[
root(ROOTS.NeverImplemented, n(FACTIONS, {
	expansion(EXPANSION.CLASSIC, {
		-- 0.5.3.3368
		faction(1),	-- PLAYER, Human \\ Human (Player)
		faction(2),	-- PLAYER, Orc \\ Orc (Player)
		faction(3),	-- PLAYER, Dwarf \\ Dwarf (Player)
		faction(4),	-- PLAYER, Night Elf \\ Nightelf (Player)
		faction(5),	-- PLAYER, Undead \\ Undead (Player)
		faction(6),	-- PLAYER, Tauren \\ PLAYER, Tauren \\ Tauren (Player)
		faction(7),	-- Creature
		faction(8),	-- PLAYER, Gnome \\ Gnome (Player)
		faction(9),	-- PLAYER, Troll \\ Troll (Player)
		faction(14),	-- Monster
		faction(15),	-- Defias Brotherhood \\ Defias (Azeroth)
		faction(16),	-- Gnoll - Riverpaw \\ Gnoll, Riverpaw \\ Gnoll (Riverpaw)
		faction(17),	-- Gnoll - Redridge \\ Gnoll, Redridge \\ Gnoll (Redridge)
		faction(18),	-- Gnoll - Shadowhide \\ Gnoll, Shadowhide \\ Gnoll (Shadowhide)
		faction(19),	-- Murloc
		faction(20),	-- Undead, Scourge
		faction(22),	-- Beast - Spider \\ Beast, Spider \\ Spider
		faction(23),	-- Beast - Boar \\ Beast, Boar \\ Boar
		faction(24),	-- Worgen
		faction(25),	-- Kobold
		faction(26),	-- Troll, Bloodscalp \\ Bloodscalp Troll
		faction(27),	-- Troll, Skullsplitter \\ Skullsplitter Troll
		faction(28),	-- Prey
		faction(29),	-- Beast - Wolf \\ Beast, Wolf \\ Wolf
		faction(30),	-- Defias Brotherhood Traitor \\ Defias Traitor (Azeroth)
		faction(31),	-- Friendly
		faction(32),	-- Trogg
		faction(33),	-- Troll, Frostmane \\ Troll, Ice
		faction(34),	-- Orc, Blackrock
		faction(35),	-- Villian
		faction(36),	-- Victim
		faction(37),	-- Beast - Bear \\ Beast, Bear \\ Bear
		faction(38),	-- Ogre
		faction(39),	-- Kurzen's Mercenaries
		faction(40),	-- Escortee
		faction(41),	-- Venture Company \\ Stranglethorn Goblins
		faction(42),	-- Beast - Raptor \\ Beast, Raptor \\ Raptor
		faction(43),	-- Beast, Basilisk \\ Basilisk
		faction(44),	-- Dragonflight, Green \\ Dragonflight - Green
		faction(45),	-- Lost Ones
		faction(46),	-- Blacksmithing - Armorsmithing \\ Blacksmithing - Armorsmithing \\ Orc, Stonard
		faction(48),	-- Dark Iron Dwarves \\ Dwarf, Dark Iron \\ Dwarf, DarkIron
		faction(49),	-- Human, Night Watch
		faction(50),	-- Dragonflight, Red \\ Dragonflight - Red
		faction(51),	-- Gnoll - Mosshide \\ Gnoll, Mosshide \\ Gnoll (Mosshide)
		faction(52),	-- Orc, Fel Dragonmaw \\ Orc, Dragonmaw
		faction(53),	-- Gnome - Leper \\ Gnome, Leper
		faction(55),	-- Leopard
		faction(56),	-- Scarlet Crusade
		faction(57),	-- Gnoll - Rothide \\ Gnoll, Rothide \\ Gnoll (Rothide)
		faction(58),	-- Beast - Gorilla \\ Beast, Gorilla \\ Gorilla
		faction(60),	-- Naga \\ Naga, Monster
		faction(61),	-- Dalaran \\ Dalaran (Alliance Ally)
		faction(62),	-- Forlorn Spirit
		faction(63),	-- Darkhowl
		faction(64),	-- Grell
		faction(65),	-- Furbolg
		faction(66),	-- Horde Generic \\ Horde Friendly
		faction(71),	-- Hillsbrad Militia
		faction(73),	-- Demon
		faction(74),	-- Elemental
		faction(75),	-- Spirit
		faction(77),	-- Treasure
		faction(78),	-- Gnoll - Mudsnout \\ Gnoll, Mudsnout \\ Gnoll (Mudsnout)
		faction(79),	-- HIllsbrad, Southshore Mayor
		faction(80),	-- Dragonflight, Black \\ Dragonflight - Black
		faction(82),	-- Troll, Witherbark
		faction(83),	-- Leatherworking - Elemental \\ Leatherworking - Elemental \\ Monster - Non Social
		faction(84),	-- Quilboar, Razormane \\ Razormane
		faction(85),	-- Quilboar, Bristleback
		faction(86),	-- Leatherworking - Dragonscale \\ Leatherworking - Dragonscale \\ Monster - Social
		faction(88),	-- Blackfathom
		faction(89),	-- Makrura
		faction(90),	-- Centaur, Kolkar \\ Kolkar
		faction(91),	-- Centaur, Galak \\ Galak
		faction(94),	-- Maraudine
		faction(108),	-- Theramore \\ Human, Theramore
		faction(109),	-- Quilboar, Razorfen
		faction(110),	-- Quilboar, Razormane 2 \\ Quilboar, Razormane
		faction(111),	-- Quilboar, Deathshead
		faction(128),	-- Enemy
		faction(148),	-- Ambient
		faction(168),	-- Nethergarde Caravan
		faction(189),	-- Alliance Generic
		faction(209),	-- Nethergarde
		-- 0.5.5.3494
		faction(229),	-- Wailing Caverns
		faction(249),	-- Silithid
		-- 0.6.0.3592
		faction(269),	-- Silvermoon Remnant \\ Alliance Red Team
		faction(289),	-- Blacksmithing - Weaponsmithing \\ Blacksmithing - Weaponsmithing \\ Blackwater Pirates
		-- 0.7.0.3694
		faction(309),	-- Scorpid
		faction(310),	-- Beast - Bat \\ Beast, Bat \\ Bat
		faction(311),	-- Titan
		faction(329),	-- Taskmaster Fizzule
		faction(389),	-- Gnomeregan Bug
		faction(409),	-- Harpy
		-- 0.8.0.3734
		faction(429),	-- Burning Blade
		faction(449),	-- Shadowsilk Poacher
		faction(450),	-- Searing Spider \\ Beast, Spider, Searing \\ Searing Spiders
		-- 0.9.0.3807
		faction(471),	-- DEPRECATED Wildhammer Clan, DEPRECATED \\ Dwarf, Wildhammer \\ Wildhammer Clan
		faction(489),	-- Goblin, Dark Iron Bar Patron \\ Goblin, Darkiron Bar Patron
		-- 1.0.0.3980
		faction(511),	-- Giant
		faction(531),	-- Dragonflight, Bronze
		faction(532),	-- Dragonflight, Blue
		faction(549),	-- Leatherworking - Tribal \\ Leatherworking - Tribal
		faction(550),	-- Engineering - Goblin \\ Engineering - Goblin
		faction(551),	-- Engineering - Gnome \\ Engineering - Gnome
		faction(569),	-- Blacksmithing - Hammersmithing \\ Blacksmithing - Hammersmithing
		faction(570),	-- Blacksmithing - Axesmithing \\ Blacksmithing - Axesmithing
		faction(571),	-- Blacksmithing - Swordsmithing \\ Blacksmithing - Swordsmithing
		faction(572),	-- Troll, Vilebranch
		faction(573),	-- Southsea Freebooters
		faction(574),	-- Caer Darrow
		faction(575),	-- Furbolg, Uncorrupted
		faction(629),	-- Shatterspear Trolls
		faction(630),	-- Ravasaur Trainers
		-- 1.1.2.4125
		faction(649),	-- Majordomo Executus
		faction(669),	-- Beast - Carrion Bird
		faction(670),	-- Beast - Cat
		faction(671),	-- Beast - Crab
		faction(672),	-- Beast - Crocilisk
		faction(673),	-- Beast - Hyena
		faction(674),	-- Beast - Owl
		faction(675),	-- Beast - Scorpid
		faction(676),	-- Beast - Tallstrider
		faction(677),	-- Beast - Turtle
		faction(678),	-- Beast - Wind Serpent
		faction(679),	-- Training Dummy
		faction(689),	-- Dragonflight, Black - Bait
		-- 1.13.0.28211
		faction(709),	-- Battleground Neutral
		faction(750),	-- Sulfuron Firelords
		faction(769),	-- Gizlock's Dummy
		faction(770),	-- Gizlock's Charm
		faction(771),	-- Gizlock
		faction(789),	-- Moro'gai
		faction(790),	-- Spirit Guide - Alliance
		faction(829),	-- Ogre (Captain Kromcrush)
		faction(849),	-- Spirit Guide - Horde
		faction(869),	-- Jaedenar
		faction(893),	-- Revantusk Trolls
		faction(912),	-- Might of Kalimdor
		faction(915),	-- Armies of C'Thun
		faction(916),	-- Silithid Attackers
		faction(917),	-- The Ironforge Brigade
		faction(918),	-- RC Enemies
		faction(919),	-- RC Objects
		faction(920),	-- Red
		faction(921),	-- Blue
		faction(928),	-- Scourge Invaders
		faction(931),	-- Test Faction (not a real faction)
		faction(950),	-- ToWoW - Flag
		faction(951),	-- ToWoW - Flag Trigger Alliance (DND)
		faction(954),	-- ToWoW - Flag Trigger Horde (DND)
		-- 1.13.2.30172
		faction(2402),	-- CTF - Flag - Horde
		faction(2403),	-- CTF - Flag - Alliance
		-- 1.14.1.41077
		faction(1041),	-- Frenzy
		-- 1.14.2.41959
		faction(2505),	-- Dragonflight, Chromatic
		--1.15.0.52124
		--Uncomment if these ever make it into retail
		--faction(2586),	-- Azeroth Commerce Authority
		--faction(2587),	-- Durotar Supply and Logistics
		--faction(2588),	-- S03 - Scarlet Crusade Disguise
	}),
	expansion(EXPANSION.TBC, {
		--2.0.0.6080
		faction(914),	-- PLAYER, Blood Elf
		faction(923),	-- Farstriders
		faction(924),	-- DEPRECATED
		faction(925),	-- Sunstriders
		faction(926),	-- Magister's Guild
		faction(927),	-- PLAYER, Draenei
		faction(929),	-- Bloodmaul Clan
		faction(937),	-- Troll, Forest
		faction(938),	-- The Omenai
		faction(939),	-- DEPRECATED
		faction(940),	-- The Sons of Lothar
		faction(943),	-- Fel Orc
		faction(944),	-- Fel Orc Ghost
		faction(945),	-- Sons of Lothar Ghosts
		faction(948),	-- Test Faction 2
		faction(949),	-- Test Faction 1
		faction(952),	-- Test Faction 3
		faction(953),	-- Test Faction 4
		faction(955),	-- Broken
		faction(956),	-- Ethereum
		faction(957),	-- Elemental, Earth \\ Earth Elemental
		faction(958),	-- Fighting Robots
		faction(959),	-- Actor Good
		faction(960),	-- Actor Evil
		faction(961),	-- Stillpine Furbolg
		faction(962),	-- Crazed Owlkin
		faction(963),	-- Chess Alliance
		faction(964),	-- Chess Horde
		faction(965),	-- Monster Spar
		faction(966),	-- Monster Spar Buddy
		faction(968),	-- Sunhawks
		faction(969),	-- Hand of Argus
		faction(971),	-- Fungal Giant
		faction(972),	-- Spore Bat
		faction(973),	-- Monster, Predator
		faction(974),	-- Monster, Prey
		faction(975),	-- Void Anomaly
		faction(976),	-- Hyjal Defenders
		faction(977),	-- Hyjal Invaders
		faction(979),	-- Earthen Ring, Old World \\ Earthen Ring
		faction(981),	-- Arakkoa
		faction(982),	-- Zangarmarsh Banner (Alliance)
		faction(983),	-- Zangarmarsh Banner (Horde)
		faction(984),	-- Zangarmarsh Banner (Neutral)
		faction(985),	-- Caverns of Time - Thrall
		faction(986),	-- Caverns of Time - Durnholde
		faction(987),	-- Caverns of Time - Southshore Guards
		faction(988),	-- Shadow Council Covert
		faction(991),	-- Dark Portal Defender, Alliance
		faction(992),	-- Dark Portal Defender, Horde
		faction(993),	-- Dark Portal Attacker, Legion
		faction(994),	-- Inciter Trigger \\ Inciter Trigger 1
		faction(995),	-- Inciter Trigger 2
		faction(996),	-- Inciter Trigger 3
		faction(997),	-- Inciter Trigger 4
		faction(998),	-- Inciter Trigger 5
		faction(999),	-- Mana Creature
		faction(1000),	-- Khadgar's Servant
		faction(1001),	-- Bladespire Clan
		faction(1002),	-- Ethereum Sparbuddy
		faction(1003),	-- Protectorate
		faction(1004),	-- Arcane Annihilator (DNR)
		faction(1005),	-- Friendly, Hidden \\ REUSE
		--2.4.3.8606
		faction(1006),	-- Kirin'Var - Dathric
		faction(1007),	-- Kirin'Var - Belmara
		faction(1008),	-- Kirin'Var - Luminrath
		faction(1009),	-- Kirin'Var - Cohlien
		faction(1010),	-- Servant of Illidan
		faction(1013),	-- Spirits of Shadowmoon 1
		faction(1014),	-- Spirits of Shadowmoon 2
		faction(1016),	-- Wyrmcult
		faction(1017),	-- Treant
		faction(1018),	-- Leotheras Demon I
		faction(1019),	-- Leotheras Demon II
		faction(1020),	-- Leotheras Demon III
		faction(1021),	-- Leotheras Demon IV
		faction(1022),	-- Leotheras Demon V
		faction(1023),	-- Azaloth
		faction(1024),	-- Rock Flayer
		faction(1025),	-- Flayer Hunter
		faction(1026),	-- Shadowmoon Shade
		faction(1027),	-- Legion Communicator
		faction(1028),	-- Ravenswood Ancients
		faction(1029),	-- Chess, Friendly to All Chess
		faction(1030),	-- Black Temple Gates - Illidari
		faction(1032),	-- Area 52
		faction(1033),	-- Maiev
		faction(1034),	-- Skettis Shadowy Arakkoa
		faction(1035),	-- Skettis Arakkoa
		faction(1036),	-- Dragonmaw Enemy
		faction(1039),	-- Ravager
		faction(1040),	-- REUSE
		faction(1042),	-- Skyguard Enemy
		faction(1043),	-- Skunk, Petunia
		faction(1044),	-- Theramore Deserter
		faction(1049),	-- Troll, Amani
		faction(1059),	-- CTF - Flag - Alliance \\ CTF - Flags
		faction(1069),	-- Ram Racing Powerup DND
		faction(1070),	-- Ram Racing Trap DND
		faction(1071),	-- Craig's Squirrels
		faction(1074),	-- Holiday - Water Barrel
		faction(1075),	-- Holiday - Generic
		faction(1078),	-- Fighting Vanity Pet
		faction(1080),	-- Friendly, Force Reaction 1 \\ Friendly, Force Reaction \\ Monster, Force Reaction
		faction(1081),	-- Object, Force Reaction
		faction(1087),	-- Holiday Monster
	}),
	expansion(EXPANSION.WRATH, {
		-- 3.0.1
		expansion(EXPANSION.WRATH, patch(0,1), bubbleDownSelf({ ["timeline"] = {CREATED_3_0_2} }, {
			faction(1045),	-- Vrykul
			faction(1046),	-- Northsea Pirates
			faction(1047),	-- Tuskarr
			faction(1048),	-- UNUSED
			faction(1051),	-- UNUSED
			faction(1053),	-- Westguard
			faction(1054),	-- Spotted Gryphon
			faction(1055),	-- Tamed Plaguehound
			faction(1056),	-- Vrykul (Ancient Spirit 1)
			faction(1057),	-- Vrykul (Ancient Siprit 2)
			faction(1058),	-- Vrykul (Ancient Siprit 3)
			faction(1060),	-- Test
			faction(1061),	-- vrykul
			faction(1062),	-- Vrykul Gladiator
			faction(1063),	-- Valgarde Combatant
			faction(1065),	-- Monster, Zone Force Reaction 1
			faction(1066),	-- Monster, Zone Force Reaction 2
			faction(1072),	-- [DNT] AC Major Faction Child Renown Test \\ REUSE
			faction(1076),	-- Iron Dwarves
			faction(1079),	-- Murloc, Winterfin
			faction(1082),	-- REUSE
			faction(1083),	-- REUSE
			faction(1084),	-- Vrykul, Sea
			faction(1086),	-- Poacher
			faction(1088),	-- Furbolg, Redfang
			faction(1089),	-- Furbolg, Frostpaw
			faction(1092),	-- Azjol-Nerub
			faction(1093),	-- REUSE
			faction(1095),	-- Grizzly Hills Trapper
			faction(1096),	-- REUSE
			faction(1099),	-- Wrathgate Scourge
			faction(1100),	-- Wrathgate Alliance
			faction(1101),	-- Wrathgate Horde
			faction(1102),	-- CTF - Flag - Horde
			faction(1103),	-- CTF - Flag - Neutral
			faction(1107),	-- Troll, Drakkari
			faction(1108),	-- CoT Arthas
			faction(1109),	-- CoT Stratholme Citizen
			faction(1110),	-- CoT Scourge
			faction(1111),	-- Freya
			faction(1112),	-- Mount - Taxi - Alliance
			faction(1113),	-- Mount - Taxi - Horde
			faction(1114),	-- Mount - Taxi - Neutral
			faction(1115),	-- Elemental, Water
			faction(1116),	-- Elemental, Air
			faction(1120),	-- Iron Giants
			faction(1121),	-- Frost Vrykul
			faction(1122),	-- Earthen
			faction(1123),	-- Monster Referee
			faction(1125),	-- Hyldsmeet
		})),

		-- 3.1.0
		expansion(EXPANSION.WRATH, patch(1,0), bubbleDownSelf({ ["timeline"] = {CREATED_3_1_0} }, {
			faction(1127),	-- Orgrimmar (Alex Test)
		})),

		-- 3.3.5
		expansion(EXPANSION.WRATH, patch(3,5), bubbleDownSelf({ ["timeline"] = {CREATED_3_3_5} }, {
			faction(1136),	-- Tranquillien Conversion
			faction(1137),	-- Wintersaber Conversion
			faction(1145),	-- Hates Everything
			faction(1154),	-- Silver Covenant Conversion
			faction(1155),	-- Sunreavers Conversion
			faction(1159),	-- CTF - Flag - Alliance 2
			faction(1160),	-- CTF - Flag - Horde 2
		})),
	}),
	expansion(EXPANSION.CATA, {
		-- 4.0.3
		expansion(EXPANSION.CATA, patch(0,3), bubbleDownSelf({ ["timeline"] = {CREATED_4_0_3} }, {
			faction(1128),	-- Twilight's Hammer
			faction(1129),	-- Furbolg, Blackwood
			faction(1130),	-- Stag, Darkshore
			faction(1131),	-- Bear, Darkshore
			faction(1132),	-- Moonstalker, Darkshore
			faction(1138),	-- Cataclysm - New Neutral Reputation
			faction(1142),	-- Magram Remnant
			faction(1143),	-- Sons of Gelkis
			faction(1144),	-- REUSE
			faction(1152),	-- PLAYER, Goblin
			faction(1153),	-- PLAYER, Worgen
			faction(1157),	-- Pygmy
			faction(1161),	-- Grimtotem
			faction(1163),	-- New test rep for Alex
			faction(1166),	-- Test Faction 5
			faction(1167),	-- Test Faction 5
		})),

		-- 4.3.0
		expansion(EXPANSION.CATA, patch(3,0), bubbleDownSelf({ ["timeline"] = {CREATED_4_3_0} }, {
			faction(1179),	-- Slime
			faction(1181),	-- Friendly, New
			faction(1189),	-- K3
			faction(1233),	-- CoT Well of Eternity - Illidan
			faction(1234),	-- CoT Well of Eternity - High Elves
			faction(1235),	-- CoT Well of Eternity - Illidan (Stealth)
			faction(1237),	-- CoT Well of Eternity - Demons
			faction(1240),	-- CoT Well of Eternity - Demon Balls
			faction(1241),	-- CoT Well of Eternity - Hunter Stalkers
			faction(1265),	-- Shen'dralar
		})),
	}),
	expansion(EXPANSION.MOP, {
		-- 5.0.4
		expansion(EXPANSION.MOP, patch(0,4), bubbleDownSelf({ ["timeline"] = {CREATED_5_0_4} }, {
			faction(1243),	-- Hozen
			faction(1249),	-- PLAYER, Expansion 4 Neutral
			faction(1252),	-- Sha
			faction(1253),	-- Guardians of the East Temple
			faction(1268),	-- Mogu
			faction(1286),	-- Guardians of the Red Crane
			faction(1336),	-- The Mantid Swarm
			faction(1338),	-- Gurthan Mogu
			faction(1339),	-- Harthak Mogu
			faction(1340),	-- Korgesh Mogu
			faction(1351),	-- The Brewmasters
			faction(1364),	-- Friendly, Force Reaction 2
			faction(1366),	-- Friendly, Force Reaction 3
			faction(1367),	-- Friendly, Force Reaction 4
			faction(1368),	-- Friendly, Force Reaction 5
			faction(1369),	-- Friendly, Force Reaction 6
			faction(1370),	-- Friendly, Force Reaction 7
			faction(1371),	-- Paw'don Village
			faction(1372),	-- Honeydew Village
		})),

		-- 5.1.0
		expansion(EXPANSION.MOP, patch(1,0), bubbleDownSelf({ ["timeline"] = {CREATED_5_1_0} }, {
			faction(1416),	-- Akama's Trust
		})),

		-- 5.2.0
		expansion(EXPANSION.MOP, patch(2,0), bubbleDownSelf({ ["timeline"] = {CREATED_5_2_0} }, {
			faction(1433),	-- Monster, Enforced Neutral For Force Reaction
		})),

		-- 5.3.0
		expansion(EXPANSION.MOP, patch(3,0), bubbleDownSelf({ ["timeline"] = {CREATED_5_3_0} }, {
			faction(1440),	-- Darkspear Rebellion
			faction(1443),	-- Kor'kron
			faction(1447),	-- Darkspear Trolls
		})),

		-- 5.4.0
		expansion(EXPANSION.MOP, patch(4,0), bubbleDownSelf({ ["timeline"] = {CREATED_5_4_0} }, {
			faction(1457),	-- Forelings
			faction(1491),	-- The Timewalkers
			faction(1500),	-- Red Phantom
		})),
	}),
	expansion(EXPANSION.WOD, {
		-- 6.0.1
		expansion(EXPANSION.WOD, patch(0,1), bubbleDownSelf({ ["timeline"] = {CREATED_6_0_2} }, {
			faction(1483),	-- Foreling-Eaters
			faction(1496),	-- Frostfire Ogres
			faction(1508),	-- Shadowmoon Orcs \\ Shadowmoon Orc
			faction(1509),	-- The Pale
			faction(1514),	-- Adherents of Rukhmar \\ Adherents of Arakk
			faction(1520),	-- Shadowmoon Exiles \\ Palemoon Orc
			faction(1521),	-- Shadow Council
			faction(1591),	-- Draenei, Draenor
			faction(1617),	-- Primal
			faction(1618),	-- Breaker
			faction(1623),	-- The Iron Horde
			faction(1665),	-- The Sargerei
			faction(1674),	-- Draenor Spores
			faction(1679),	-- Operation: Aardvark
			faction(1680),	-- Highmaul
			faction(1687),	-- Gorgrond Goren
			faction(1712),	-- GarInvasion_IronHorde
			faction(1713),	-- GarInvasion_ShadowCouncil
			faction(1714),	-- GarInvasion_Ogres
			faction(1715),	-- GarInvasion_Primals
			faction(1716),	-- GarInvasion_Breakers
			faction(1717),	-- GarInvasion_ThunderLord
			faction(1718),	-- GarInvasion_Shadowmoon
			faction(1732),	-- Steamwheedle Draenor Expedition
			faction(1746),	-- Nagrand Gronn
			faction(1747),	-- Coliseum Treasure
		})),

		-- 6.0.2
		expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = {CREATED_6_0_2} }, {
			faction(1756),	-- LVA_Looters
			faction(1757),	-- LVA_Preservers
			faction(1758),	-- LVA_Naturalists
			faction(1759),	-- LVA_Machines
			faction(1760),	-- Highmaul Gladiators
		})),
	}),
	expansion(EXPANSION.LEGION, {
		-- 7.0.1
		expansion(EXPANSION.LEGION, patch(0,1), bubbleDownSelf({ ["timeline"] = {CREATED_7_0_3} }, {
			faction(1786),	-- Burning Legion Invaders
			faction(1815),	-- Gilnean Survivors
			faction(1833),	-- Uncrowned
			faction(1834),	-- Legion
			faction(1861),	-- Arcane Thirst (Silgryn) DEPRECATED
			faction(1888),	-- Jandvik Vrykul
			faction(1899),	-- Moonguard
			faction(1905),	-- Dreamgrove Druid
			faction(1910),	-- Drogbar
			faction(1911),	-- Kvaldir Ghosts
			faction(1912),	-- Kvaldir
			faction(1913),	-- Nightborne
			faction(1914),	-- Withered
			faction(1920),	-- Moon Guard
			faction(1947),	-- Illidari
			faction(1953),	-- Nightmare
		})),

		-- 7.0.3
		expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = {CREATED_7_0_3} }, {
			faction(1962),	-- Nightborne Civilian
			faction(1984),	-- The First Responders
			faction(1989),	-- Moon Guard
		})),

		-- 7.2.0
		expansion(EXPANSION.LEGION, patch(2,0), bubbleDownSelf({ ["timeline"] = {CREATED_7_2_0} }, {
			faction(2012),	-- Nightborne Rebels
			faction(2040),	-- Talon's Vengeance
			faction(2063),	-- Arne Test - Paragon Reputation Stormwind
			faction(2085),	-- Highmountain Tribe (Paragon)
			faction(2086),	-- Valarjar (Paragon)
			faction(2087),	-- Court of Farondis (Paragon)
			faction(2088),	-- Dreamweavers (Paragon)
			faction(2089),	-- The Nightfallen (Paragon)
			faction(2090),	-- The Wardens (Paragon)
			faction(2091),	-- Armies of Legionfall (Paragon)
		})),

		-- 7.3.0
		expansion(EXPANSION.LEGION, patch(3,0), bubbleDownSelf({ ["timeline"] = {CREATED_7_3_0} }, {
			faction(2166),	-- Army of the Light (Paragon)
			faction(2167),	-- Argussian Reach (Paragon)
			faction(2180),	-- _JKL - test rep
		})),

		-- 7.3.5
		expansion(EXPANSION.LEGION, patch(3,5), bubbleDownSelf({ ["timeline"] = {CREATED_7_3_5} }, {
			faction(2229),	-- PLAYER, Void Elf
			faction(2230),	-- PLAYER, Highmountain Tauren
			faction(2231),	-- PLAYER, Nightborne
			faction(2232),	-- PLAYER, Lightforged Draenei
		})),
	}),
	expansion(EXPANSION.BFA, {
		-- 8.0.1
		expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = {CREATED_8_0_1} }, {
			faction(2105),	-- Nazmani
			faction(2111),	-- Zandalari Dinosaurs
			faction(2120),	-- Kul Tiras - Tiragarde \\ Kul Tiras
			faction(2121),	-- Great Sea Privateers
			faction(2122),	-- Irontide Raiders
			faction(2155),	-- Blood Trolls
			faction(2176),	-- Neutral, Force Reaction 1
			faction(2177),	-- Neutral, Force Reaction 2
			faction(2178),	-- Neutral, Force Reaction 3
			faction(2179),	-- Neutral, Force Reaction 4
			faction(2185),	-- The Bilge Rats
			faction(2186),	-- Blacktooth Brawlers
			faction(2187),	-- Cutwater Corsairs
			faction(2192),	-- Ashvane Trading Co.
			faction(2218),	-- 8.0 Hidden Object - Red
			faction(2219),	-- 8.0 Hidden Object - Withered - Red
			faction(2220),	-- 8.0 Hidden Object - Withered - Blue
			faction(2221),	-- 8.0 Hidden Object - Withered - Green
			faction(2222),	-- 8.0 Hidden Object - Withered - Yellow
			faction(2227),	-- Beast - Bee
			faction(2228),	-- Beast - Wendigo
			faction(2242),	-- 8.0 - Stormsong - Crazed Diggers Anti-Social (MDE)
			faction(2243),	-- 8.0 - Stormsong - Crazed Diggers Social (MDE)
			faction(2245),	-- Horde Commanders (MDE)
			faction(2258),	-- Wendigo
			faction(2259),	-- Bees
			faction(2264),	-- Kul Tiras - Drustvar
			faction(2265),	-- Kul Tiras - Stormsong
		})),

		-- 8.1.0
		expansion(EXPANSION.BFA, patch(1,0), bubbleDownSelf({ ["timeline"] = {CREATED_8_1_0} }, {
			faction(2378),	-- Zandalari Empire (Paragon)
			faction(2379),	-- Proudmoore Admiralty (Paragon)
			faction(2380),	-- Talanji's Expedition (Paragon)
			faction(2381),	-- Storm's Wake (Paragon)
			faction(2382),	-- Voldunai (Paragon)
			faction(2383),	-- Order of Embers (Paragon)
			faction(2384),	-- 7th Legion (Paragon)
			faction(2385),	-- The Honorbound (Paragon)
			faction(2386),	-- Champions of Azeroth (Paragon)
			faction(2387),	-- Tortollan Seekers (Paragon)
		})),

		-- 8.2.0
		expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = {CREATED_8_2_0} }, {
			faction(2374),	-- The Unshackled (Paragon) \\ Unshackled (Paragon)
			faction(2392),	-- Rustbolt Resistance (Paragon)
			faction(2394),	-- Hermit Crabs
			faction(2396),	-- Honeyback Drone \\ Tidebreak Guardian \\ Drone
			faction(2397),	-- Honeyback Hivemother \\ Tidebreak Hivemother \\ Queen
			faction(2401),	-- Waveblade Ankoan (Paragon) \\ Ankoan (Paragon)
		})),

		-- 8.3.0
		expansion(EXPANSION.BFA, patch(3,0), bubbleDownSelf({ ["timeline"] = {CREATED_8_3_0} }, {
			faction(2416),	-- Rajani (Paragon)
			faction(2418),	-- Uldum Accord (Paragon)
			faction(2419),	-- Nzoth
			faction(2431),	-- Owen Test
		})),
	}),
	expansion(EXPANSION.SL, {
		-- 9.0.1
		expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = {CREATED_9_0_1} }, {
			faction(2404),	-- House of Constructs \\ 9.0 Maldraxxus - Abominations
			faction(2405),	-- House of Rituals \\ 9.0 Maldraxxus - Lich
			faction(2406),	-- House of the Chosen \\ 9.0 Maldraxxus - Warriors
			faction(2408),	-- Dark Kyrian
			faction(2411),	-- Stone Legion
			faction(2412),	-- Sinfall
			faction(2422),	-- The Wild Hunt \\ Night Fae
			faction(2437),	-- Torghast - Guard
			faction(2438),	-- Torghast - Prisoner
			faction(2440),	-- The Undying Army (Paragon)
			faction(2441),	-- The Ascended (Paragon)
			faction(2442),	-- Court of Harvesters (Paragon)
			faction(2443),	-- The Wild Hunt
			faction(2444),	-- The Wild Hunt (Paragon)
		})),

		-- 9.1.0
		expansion(EXPANSION.SL, patch(1,0), bubbleDownSelf({ ["timeline"] = {CREATED_9_1_0} }, {
			faction(2468),	-- Korthia
			faction(2471),	-- Death's Advance (Paragon)
			faction(2473),	-- The Archivists' Codex (Paragon) \\ The Archivist's Codex (Paragon)
			faction(2474),	-- Ve'nari (Paragon)
		})),

		-- 9.2.0
		expansion(EXPANSION.SL, patch(2,0), bubbleDownSelf({ ["timeline"] = {CREATED_9_2_0} }, {
			faction(2469),	-- Fractal Lore
			faction(2479),	-- The Enlightened (Paragon)
			faction(2480),	-- Automa
			faction(2481),	-- Automa (Paragon)
			faction(2502),	-- Zereth Mortis Lured Monsters
		})),
	}),
	expansion(EXPANSION.DF, {
		-- 10.0.0
		expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
			faction(2504),	-- Maruuk Centaur (Paragon)
			faction(2508),	-- Dragonscale Expedition (Paragon)
			faction(2521),	-- Clan Nokhud (Paragon)
			faction(2545),	-- Maruuk Centaur (Renown)
			faction(2546),	-- Iskaara Tuskarr (Renown)
			faction(2547),	-- Dragonscale Expedition (Renown)
			faction(2548),	-- Valdrakken Accord (Renown)
			faction(2509),	-- Clan Shikaar
			faction(2512),	-- Clan Aylaag
			faction(2513),	-- Clan Ohn'ir
			faction(2514),	-- Primalists
			faction(2516),	-- Djaradin
			faction(2519),	-- Reclaimers
			faction(2520),	-- Clan Nokhud
			faction(2522),	-- Clan Teerai
			faction(2525),	-- Elemental, Fire
			faction(2542),	-- Clan Ukhel
			faction(2551),	-- Iskaara Tuskarr (Paragon)
			faction(2552),	-- Valdrakken Accord (Paragon)
			faction(2554),	-- Clan Toghus
			faction(2555),	-- Clan Kaighan
		})),

		-- 10.0.7
		expansion(EXPANSION.DF, patch(0,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_7 } }, {
			faction(2557),	-- Hearthfire Fellowship
		})),

		-- 10.1.0
		expansion(EXPANSION.DF, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_0 } }, {
			faction(2565),	-- Loamm Niffen (Paragon)
		})),

		-- 10.1.7
		expansion(EXPANSION.DF, patch(1,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_7 } }, {
			faction(2576),	-- Druids of the Flame
		})),

		-- 10.2.0
		expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_0 } }, {
			faction(2575),	-- Dream Wardens (Paragon)
		})),

		-- 10.2.6
		expansion(EXPANSION.DF, patch(2,6), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_6 } }, {
			faction(2604),	-- Keg Leg's Crew (Paragon)
			faction(2616),	-- Keg Leg Thrasher
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.0.0
		expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
			faction(2569),	-- The War Within
			faction(2579),	-- zzOldDelves: Season 1
			faction(2580),	-- Test Faction Alpha
			faction(2595),	-- Order of Night
			faction(2596),	-- The Severed Threads (Paragon)
			faction(2602),	-- Umbral Bazaar
			faction(2606),	-- The High Hollows
			faction(2609),	-- The Burrows
			faction(2610),	-- Azj-Kaheti Nerubian (Always Hostile) (Hidden)
			faction(2611),	-- Hallowfall Arathi (Paragon)
			faction(2612),	-- Council of Dornogal (Paragon)
			faction(2613),	-- The Assembly of the Deeps (Paragon)
			faction(2614),	-- The Siegehold
			faction(2635),	-- The Skeins
			faction(2637),	-- PLAYER, Earthen Alliance
			faction(2638),	-- PLAYER, Earthen Horde
			faction(2640),	-- Brann Bronzebeard
			faction(2644),	-- Delves: Season 1
			faction(2645),	-- Earthen
			faction(2647),	-- The Vizier (Paragon)
			faction(2648),	-- The Weaver (Paragon)
			faction(2649),	-- The General (Paragon)
		})),

		-- 11.0.5
		expansion(EXPANSION.TWW, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_5 } }, {
			faction(2682),	--
		})),

		-- 11.1.0
		expansion(EXPANSION.TWW, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_0 } }, {
			faction(2652),	-- Darkfuse Enforcement
			faction(2667),	-- The Cartels of Undermine (Paragon)
			faction(2668),	-- Darkfuse Solutions (Paragon)
			faction(2670),	-- Venture Company (Paragon)
			faction(2672),	-- Bilgewater Cartel (Paragon)
			faction(2674),	-- Blackwater Cartel (Paragon)
			faction(2676),	-- Steamwheedle Cartel (Paragon)
			faction(2683),	-- Delves: Season 2
			faction(2684),	-- Gallagio Loyalty Rewards Club (Paragon)
			faction(2692),	-- Venture Company
			faction(2693),	-- Delver's Journey (Season 1)
			faction(2694),	-- UNUSED - Brann Bronzebeard (Season 2)
			faction(2695),	-- Test Account Wide Stormwind (DNT)
			faction(2697),	-- Chase's test faction (DNT)
		})),
	}),
}));
--]]
