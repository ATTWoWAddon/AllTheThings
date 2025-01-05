-- the journalInstanceID map file.
-- the InstanceID used in Database file is the journalInstanceID, as know as ID in the JournalInstance table(https://wago.tools/db2/JournalInstance?build=11.0.7.58238).
-- this DB file map the journalInstanceID to the real InstanceID, as know as ID in the Map table(https://wago.tools/db2/Map?build=11.0.7.58238).

do
local oldInst = inst;
local InstanceDB = {};
inst = function(journalInstanceID, instanceID)
	InstanceDB[journalInstanceID] = instanceID;
end

-- #if SEASON_OF_DISCOVERY
-- Manually added.
inst(2789, 2789);	-- The Tainted Scar
inst(2791, 2791);	-- Storm Cliffs
inst(2784, 2784);	-- Demon Fall Canyon
-- #endif

-- This list was exported using excel manually using data from this url:
-- https://wago.tools/db2/JournalInstance?build=11.0.7.58238
inst(63, 36);	-- Deadmines
inst(64, 33);	-- Shadowfang Keep
inst(65, 643);	-- Throne of the Tides
inst(66, 645);	-- Blackrock Caverns
inst(67, 725);	-- The Stonecore
inst(68, 657);	-- The Vortex Pinnacle
inst(69, 755);	-- Lost City of the Tol'vir
inst(70, 644);	-- Halls of Origination
inst(71, 670);	-- Grim Batol
inst(72, 671);	-- The Bastion of Twilight
inst(73, 669);	-- Blackwing Descent
inst(74, 754);	-- Throne of the Four Winds
inst(75, 757);	-- Baradin Hold
inst(76, 859);	-- Zul'Gurub
inst(77, 568);	-- Zul'Aman
inst(78, 720);	-- Firelands
inst(184, 938);	-- End Time
inst(185, 939);	-- Well of Eternity
inst(186, 940);	-- Hour of Twilight
inst(187, 967);	-- Dragon Soul
inst(226, 389);	-- Ragefire Chasm
inst(227, 48);	-- Blackfathom Deeps
inst(228, 230);	-- Blackrock Depths
inst(229, 229);	-- Lower Blackrock Spire
inst(230, 429);	-- Dire Maul - Capital Gardens
inst(231, 90);	-- Gnomeregan
inst(232, 349);	-- Maraudon
inst(233, 129);	-- Razorfen Downs
inst(234, 47);	-- Razorfen Kraul
inst(236, 329);	-- Stratholme - Main Gate
inst(237, 109);	-- The Temple of Atal'hakkar
inst(238, 34);	-- The Stockade
inst(239, 70);	-- Uldaman
inst(240, 43);	-- Wailing Caverns
inst(241, 209);	-- Zul'Farrak
inst(246, 1007);	-- Scholomance
inst(247, 558);	-- Auchenai Crypts
inst(248, 543);	-- Hellfire Ramparts
inst(249, 585);	-- Magisters' Terrace
inst(250, 557);	-- Mana-Tombs
inst(251, 560);	-- Old Hillsbrad Foothills
inst(252, 556);	-- Sethekk Halls
inst(253, 555);	-- Shadow Labyrinth
inst(254, 552);	-- The Arcatraz
inst(255, 269);	-- The Black Morass
inst(256, 542);	-- The Blood Furnace
inst(257, 553);	-- The Botanica
inst(258, 554);	-- The Mechanar
inst(259, 540);	-- The Shattered Halls
inst(260, 547);	-- The Slave Pens
inst(261, 545);	-- The Steamvault
inst(262, 546);	-- The Underbog
inst(271, 619);	-- Ahn'kahet: The Old Kingdom
inst(272, 601);	-- Azjol-Nerub
inst(273, 600);	-- Drak'Tharon Keep
inst(274, 604);	-- Gundrak
inst(275, 602);	-- Halls of Lightning
inst(276, 668);	-- Halls of Reflection
inst(277, 599);	-- Halls of Stone
inst(278, 658);	-- Pit of Saron
inst(279, 595);	-- The Culling of Stratholme
inst(280, 632);	-- The Forge of Souls
inst(281, 576);	-- The Nexus
inst(282, 578);	-- The Oculus
inst(283, 608);	-- The Violet Hold
inst(284, 650);	-- Trial of the Champion
inst(285, 574);	-- Utgarde Keep
inst(286, 575);	-- Utgarde Pinnacle
inst(302, 961);	-- Stormstout Brewery
inst(303, 962);	-- Gate of the Setting Sun
inst(311, 1001);	-- Scarlet Halls
inst(312, 959);	-- Shado-Pan Monastery
inst(313, 960);	-- Temple of the Jade Serpent
inst(316, 1004);	-- Scarlet Monastery
inst(317, 1008);	-- Mogu'shan Vaults
inst(320, 996);	-- Terrace of Endless Spring
inst(321, 994);	-- Mogu'shan Palace
inst(322, 996);	-- Pandaria
inst(324, 1011);	-- Siege of Niuzao Temple
inst(330, 1009);	-- Heart of Fear
inst(362, 1098);	-- Throne of Thunder
inst(369, 1136);	-- Siege of Orgrimmar
inst(385, 1175);	-- Bloodmaul Slag Mines
inst(457, 1205);	-- Blackrock Foundry
inst(476, 1209);	-- Skyreach
inst(477, 1228);	-- Highmaul
inst(536, 1208);	-- Grimrail Depot
inst(537, 1176);	-- Shadowmoon Burial Grounds
inst(547, 1182);	-- Auchindoun
inst(556, 1279);	-- The Everbloom
inst(557, 1228);	-- Draenor
inst(558, 1195);	-- Iron Docks
inst(559, 1358);	-- Upper Blackrock Spire
inst(669, 1448);	-- Hellfire Citadel
inst(707, 1493);	-- Vault of the Wardens
inst(716, 1456);	-- Eye of Azshara
inst(721, 1477);	-- Halls of Valor
inst(726, 1516);	-- The Arcway
inst(727, 1492);	-- Maw of Souls
inst(740, 1501);	-- Black Rook Hold
inst(741, 409);	-- Molten Core
inst(742, 469);	-- Blackwing Lair
inst(743, 509);	-- Ruins of Ahn'Qiraj
inst(744, 531);	-- Temple of Ahn'Qiraj
inst(745, 532);	-- Karazhan
inst(746, 565);	-- Gruul's Lair
inst(747, 544);	-- Magtheridon's Lair
inst(748, 548);	-- Serpentshrine Cavern
inst(749, 550);	-- The Eye
inst(750, 534);	-- The Battle for Mount Hyjal
inst(751, 564);	-- Black Temple
inst(752, 580);	-- Sunwell Plateau
inst(753, 624);	-- Vault of Archavon
inst(754, 533);	-- Naxxramas
inst(755, 615);	-- The Obsidian Sanctum
inst(756, 616);	-- The Eye of Eternity
inst(757, 649);	-- Trial of the Crusader
inst(758, 631);	-- Icecrown Citadel
inst(759, 603);	-- Ulduar
inst(760, 249);	-- Onyxia's Lair
inst(761, 724);	-- The Ruby Sanctum
inst(762, 1466);	-- Darkheart Thicket
inst(767, 1458);	-- Neltharion's Lair
inst(768, 1520);	-- The Emerald Nightmare
inst(777, 1544);	-- Assault on Violet Hold
inst(786, 1530);	-- The Nighthold
inst(800, 1571);	-- Court of Stars
inst(822, 1520);	-- Broken Isles
inst(860, 1651);	-- Return to Karazhan
inst(861, 1648);	-- Trial of Valor
inst(875, 1676);	-- Tomb of Sargeras
inst(900, 1677);	-- Cathedral of Eternal Night
inst(945, 1753);	-- Seat of the Triumvirate
inst(946, 1712);	-- Antorus, the Burning Throne
inst(959, 1520);	-- Invasion Points
inst(968, 1763);	-- Atal'Dazar
inst(1001, 1754);	-- Freehold
inst(1002, 1771);	-- Tol Dagor
inst(1012, 1594);	-- The MOTHERLODE!!
inst(1021, 1862);	-- Waycrest Manor
inst(1022, 1841);	-- The Underrot
inst(1023, 1822);	-- Siege of Boralus
inst(1028, 1861);	-- Azeroth
inst(1030, 1877);	-- Temple of Sethraliss
inst(1031, 1861);	-- Uldir
inst(1036, 1864);	-- Shrine of the Storm
inst(1041, 1762);	-- Kings' Rest
inst(1176, 2070);	-- Battle of Dazar'alor
inst(1177, 2096);	-- Crucible of Storms
inst(1178, 2097);	-- Operation: Mechagon
inst(1179, 2164);	-- The Eternal Palace
inst(1180, 2217);	-- Ny'alotha, the Waking City
inst(1182, 2286);	-- The Necrotic Wake
inst(1183, 2289);	-- Plaguefall
inst(1184, 2290);	-- Mists of Tirna Scithe
inst(1185, 2287);	-- Halls of Atonement
inst(1186, 2285);	-- Spires of Ascension
inst(1187, 2293);	-- Theater of Pain
inst(1188, 2291);	-- De Other Side
inst(1189, 2284);	-- Sanguine Depths
inst(1190, 2296);	-- Castle Nathria
inst(1192, 2559);	-- Shadowlands
inst(1193, 2450);	-- Sanctum of Domination
inst(1194, 2441);	-- Tazavesh, the Veiled Market
inst(1195, 2481);	-- Sepulcher of the First Ones
inst(1196, 2520);	-- Brackenhide Hollow
inst(1197, 2451);	-- Uldaman: Legacy of Tyr
inst(1198, 2516);	-- The Nokhud Offensive
inst(1199, 2519);	-- Neltharus
inst(1200, 2522);	-- Vault of the Incarnates
inst(1201, 2526);	-- Algeth'ar Academy
inst(1202, 2521);	-- Ruby Life Pools
inst(1203, 2515);	-- The Azure Vault
inst(1204, 2527);	-- Halls of Infusion
inst(1205, 2574);	-- Dragon Isles
inst(1206, 0);	-- The Nokud Offensive
inst(1207, 2549);	-- Amirdrassil, the Dream's Hope
inst(1208, 2569);	-- Aberrus, the Shadowed Crucible
inst(1209, 2579);	-- Dawn of the Infinite
inst(1210, 2651);	-- Darkflame Cleft
inst(1267, 2649);	-- Priory of the Sacred Flame
inst(1268, 2648);	-- The Rookery
inst(1269, 2652);	-- The Stonevault
inst(1270, 2662);	-- The Dawnbreaker
inst(1271, 2660);	-- Ara-Kara, City of Echoes
inst(1272, 2661);	-- Cinderbrew Meadery
inst(1273, 2657);	-- Nerub-ar Palace
inst(1274, 2669);	-- City of Threads
inst(1276, 429);	-- Dire Maul - Warpwood Quarter
inst(1277, 429);	-- Dire Maul - Gordok Commons
inst(1278, 2774);	-- Khaz Algar
inst(1292, 329);	-- Stratholme - Service Entrance
inst(1301, 2792);	-- Blackrock Depths

-- Reassign the instance function
inst = function(id, t)
	t = oldInst(id, t);
	t.savedInstanceID = InstanceDB[id];
	return t;
end
end
