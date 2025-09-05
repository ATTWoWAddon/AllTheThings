---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(EXPLORATION, {
	-- Unfortunately, due to API limitations, many collectible explorations can't be listed.
	-- There is no reliable way to mark them as collected within the addon.
	-- This file may include many collectible explorations that cannot be detected.
	n(SPECIAL, {
		--- These are used by Achievement Criterias ---
		--- Remove them from here when added correctly ---
		exploration(13708),	-- Plain of Actualization
		exploration(11526),	-- Zovaal's Cauldron
		exploration(10987),	-- The Shrouded Asylum
		exploration(10984),	-- Court of The Harvesters
		exploration(11000),	-- Redelav District
		exploration(11007),	-- Stalker's Lodge
		exploration(11017),	-- Witherfall Ruin
		exploration(13624),	-- Sanctuary of Guidance
		exploration(12844),	-- Shimmerbough
		exploration(8729),	-- The Sliver
		exploration(7089),	-- Tomb of Lights
		exploration(5103),	-- The Scalding Chasm
		exploration(5134),	-- Seabrush
		exploration(3856),	-- Elrendar Crossing
		exploration(2420),	-- Terror Wing Path
		exploration(4882),	-- Marshal's Stand
		exploration(4883),	-- Mossy Pile
		exploration(5642),	-- Tahret Grounds
		exploration(4933),	-- Krom'gar Fortress
		exploration(4929),	-- Windshear Hold
		exploration(1231),	-- Southridge Beach
		exploration(4690),	-- Thunder Peak
		exploration(4644),	-- Orendil's Retreat
	}),
	expansion(EXPANSION.DF, {
		-- 10.0.0
		expansion(EXPANSION.DF, patch(0,0,1), bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
			-- Zone: The Waking Shores
			exploration(14086),	-- Ashscale Halls
			exploration(14087),	-- Ashscale HallsS
			exploration(14006),	-- Burning Ascent [DNT]
			exploration(14042),	-- Hornspike Nest
			exploration(14456),	-- Kilpi Isle
			exploration(14007),	-- Obsidian Citadel
			exploration(14047),	-- Shattered Vaults
			exploration(13644),	-- The Waking Shores
			exploration(13713),	-- The Lost Path

			-- Zone: Ohn'ahran Plains
			exploration(14080),	-- Blueshore Prairie
			exploration(13773),	-- Cliffside Burrows
			exploration(13752),	-- Storm Drake Roost

			-- Zone: The Azure Span
			exploration(14620),	-- Blue Dragon Choice
			exploration(13851),	-- Cobalt Library
			exploration(13997),	-- Creektooth Den - Decayve
			exploration(13845),	-- Djardin Cliff Camp
			exploration(14486),	-- Forgotten Cavern
			exploration(13856),	-- Frost Giant Cliffs
			exploration(13849),	-- Kalthraz Fortress
			exploration(14515),	-- Ley Pools
			exploration(13854),	-- Primalist POI
			exploration(13855),	-- Primalist POI 2
			exploration(13830),	-- Rockhide Village
			exploration(13646),	-- The Azure Span
			exploration(13885),	-- Tuskarr Ice Elemental Cave
			exploration(14091),	-- Vakthros Cavern

			-- Zone: Thaldraszus
			exploration(13819),	-- DefunctThaldraszusarea
			exploration(14344),	-- Hall of Samples
			exploration(14345),	-- Hall of the Aspects
			exploration(13647),	-- Thaldraszus
			exploration(14093),	-- [PH] Epoch's Rest

			-- Zone: Dragon Isles
			exploration(13642),	-- Dragon Isles

			-- Zone: The Great Sea
			exploration(13643),	-- The Great Sea

			-- Zone: Forbidden Reach [Dracthyr-Evoker]
			exploration(14001),	-- Burrow of the Faithful
			exploration(14003),	-- Darksand Hollow
			exploration(14004),	-- Hoard of Shimmermaw
			exploration(13978),	-- Lair of the Scythid
			exploration(13977),	-- Lost Grotto
			exploration(14154),	-- Sharpscale Coast
			exploration(14002),	-- Stormsunder Overlook
			exploration(14153),	-- Stormsunder Mountain
			exploration(13769),	-- The Forbidden Reach
			exploration(14510),	-- The Great Sea
			exploration(14495),	-- The High Creche
			exploration(13999),	-- The Siege Creche
			exploration(14000),	-- The Support Creche
			exploration(13806),	-- The War Creche

			-- Zone: Grand Time Adventure [Big Time Adventurer storyline]
			exploration(14092),	-- Azmerloth
			exploration(14098),	-- Azmerloth - Timeless Area
			exploration(13995),	-- Pandaren Revolution
			exploration(14149),	-- Pandaren Revolution - No Man's Land
			exploration(13992),	-- The Primalist Future
			exploration(13996),	-- The Black Empire
			exploration(13993),	-- The Gnoll War
			exploration(14151),	-- The Gnoll War- No Man's Land
			exploration(13994),	-- War of the Shifting Sands
			exploration(14152),	-- War of the Shifting Sands - No Man's Land

			-- Scenario: Emerald Dreamway
			instance_exploration(14084),	-- Emerald Dreamway

			-- Raid: Vault of the Incarnates
			instance_exploration(14030),	-- Vault of the Incarnates
			instance_exploration(14617),	-- The Seat of the Aspects

			-- Arena: Nokhudon Proving Grounds
			exploration(14436),	-- Nokhudon Proving Grounds

			-- Transportation: Ship from SW to The Waking Shores
			exploration(14513),	-- The Rugged Dragonscale

			-- NYI?
			exploration(13554),	-- 10 Canyon
			exploration(13636),	-- 10 Highlands
			exploration(13613),	-- 10.0 Hackathon: Living World
			exploration(14618),	-- Azure Vault (delete me)
			exploration(14041),	-- Big Lava Cave 1
			exploration(14014),	-- Content Playground
			exploration(13416),	-- DEV Lowlands (DO NOT USE)
			exploration(13519),	-- Interactive World - Sparkles
			exploration(13520),	-- Interactive World - Containers
			exploration(13579),	-- Interactive World - Rain Test
			exploration(13585),	-- Interactive World - Night Test
			exploration(14023),	-- JrzTest
			exploration(13955),	-- LDNewHire
			exploration(13936),	-- Marie Lazar Land
			exploration(13946),	-- Marie Lazar Land Panda Farm
			exploration(13495),	-- MattTestTerrain3
			exploration(13870),	-- mesten_dev1
			exploration(14457),	-- Sully Test Start
			exploration(14459),	-- Sully Test Plains
			exploration(14460),	-- Sully Test Desert
			exploration(14461),	-- Sully Test Forest
			exploration(14009),	-- The Waking Shores [DNT]
			exploration(13532),	-- Zone2lDoodadtest
			exploration(13576),	-- Zone2lDoodadtest2
			exploration(13635),	-- Zone4TyrholdTest
			exploration(13790),	-- zsewell
		})),

		-- 10.0.7
		expansion(EXPANSION.DF, patch(0,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_7 } }, {
			-- The Forbidden Reach
			exploration(14545),	-- Stormsunder Overlook
			exploration(14433),	-- The Forbidden Reach
			exploration(14619),	-- Zskera Vaults

			-- Scenario: Alterac Valley
			instance_exploration(14525),	-- Alterac Valley
			instance_exploration(14526),	-- Frostwolf Keep
			instance_exploration(14527),	-- Frostwolf Village
			instance_exploration(14528),	-- Hall of the Frostwolf

			-- NYI?
			exploration(14707),	-- Amy Test Forest
			exploration(14708),	-- Amy Test Town
			exploration(14687),	-- Lake Subzone
			exploration(14688),	-- Lava Lake Subzone
			exploration(14686),	-- Professions Land
			exploration(14689),	-- Tyler's Corner
			exploration(14598),	-- zzOLDDarksand Hollow
			exploration(14603),	-- zzOLDFroststone Vault
			exploration(14537),	-- zzOLDHornswog Grounds
			exploration(14611),	-- zzOLDHornswog Grounds
			exploration(14541),	-- zzOLDScaleborn Pass
			exploration(14544),	-- zzOLDStormsunder Mountain
			exploration(14546),	-- zzOLDTalonlords' Perch
			exploration(14605),	-- zzOLDTalonlords' Perch
			exploration(14599),	-- zzOLDTempest Coast
			exploration(14532),	-- zzOLDThe Lost Atheneum
			exploration(14533),	-- zzOLDThe Old Weyrn Grounds
		})),

		-- 10.1.0
		expansion(EXPANSION.DF, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_0 } }, {
			-- Zone: Zaralek Cavern
			exploration(14725),	-- The Bone Gallery
			exploration(14022),	-- Zaralek Cavern

			-- Scenario: Deathwing's Final Moment
			instance_exploration(14706),	-- The Maelstrom

			-- Scenario: The Azure Vault
			instance_exploration(14727),	-- The Azure Vault

			-- Scenario: Tyr's Fall
			instance_exploration(14518),	-- The Eastern Glades

			-- Scenario: Zaralek Caverns - Chapter 1
			instance_exploration(14667),	-- The Throughway

			-- Scenario: Zaralek Caverns - Chapter 6
			instance_exploration(14705),	-- Aberrus, the Shadowed Crucible

			-- Raid: Aberrus, the Shadowed Crucible
			instance_exploration(14663),	-- Aberrus, the Shadowed Crucible

			-- NYI?
			exploration(14721),	-- Mysterious Cave A
			exploration(14731),	-- Mysterious Cave B
			exploration(14732),	-- Mysterious Cave C
			exploration(14733),	-- Mysterious Cave D
			exploration(14734),	-- Mysterious Cave E
			exploration(14735),	-- Mysterious Cave F
			exploration(14736),	-- Mysterious Cave G
			exploration(14737),	-- Mysterious Cave H
			exploration(14738),	-- Mysterious Cave I
			exploration(14739),	-- Mysterious Cave J
			exploration(14709),	-- Shane Test Area
			exploration(14657),	-- WB New Hires
			exploration(14668),	-- ZZ_AlexandraDD
		})),

		-- 10.1.5
		expansion(EXPANSION.DF, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_5 } }, {
			-- Zone: Dragon Isles
			exploration(14750),	-- Dragon Isles

			-- Zone: The Waking Shores
			exploration(14751),	-- The Waking Shores

			-- Event: Hallow's End [Headless Horseman Revamp]
			instance_exploration(14873),	-- Chapel Gardens
			instance_exploration(14874),	-- Forlorn Cloister
			instance_exploration(14872),	-- Scarlet Monastery

			-- Event: Time Rifts
			instance_exploration(14843),	-- Azewrath
			instance_exploration(14770),	-- Azmerloth
			instance_exploration(14844),	-- Azmourne
			instance_exploration(14841),	-- Azq'roth
			instance_exploration(14840),	-- A.Z.E.R.O.T.H.
			instance_exploration(14845),	-- The Warlands
			instance_exploration(14842),	-- Ulderoth
			instance_exploration(14846),	-- Ulderoth
		})),

		-- 10.1.7
		expansion(EXPANSION.DF, patch(1,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_7 } }, {
			-- Scenario: Reforging the Tyr's Guard
			instance_exploration(14970),	-- The Black

			-- NYI?
			exploration(14966),	-- Dev Map - Exile's Reach
			exploration(14968),	-- Dev Map - Mechagon
			exploration(14963),	-- Dev Map - Quest Training
			exploration(14967),	-- Dev Map - Zereth Mortis
		})),

		-- 10.2.0
		expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_0 } }, {
			-- Emerald Dream
			exploration(15053),	-- Aviana's Perch
			exploration(14529),	-- Emerald Dream
			exploration(14955),	-- The Char
			exploration(15096),	-- Winter's Landing

			-- Zone: Darkshore [8.1  Outdoor Final Phase]
			exploration(15041),	-- Felwood

			-- Zone: Dawn of the Infinite [Outdoor]
			exploration(15010),	-- The Timeways

			-- Scenario: Aberrus, the Shadowed Crucible
			instance_exploration(15028),	-- Aberrus, the Shadowed Crucible

			-- Scenario: Storm the Halls of Valor
			instance_exploration(14849),	-- Halls of Valor
			instance_exploration(15098),	-- The High Gate

			-- Scenario: The Nighthold
			instance_exploration(14936),	-- The Nighthold

			-- Raid: Amirdrassil, the Dream's Hope
			instance_exploration(14643),	-- Amirdrassil, the Dream's Hope
			instance_exploration(15026),	-- Heart of Amirdrassil
			instance_exploration(15049),	-- Pit of Volcoross
			instance_exploration(14880),	-- The Blessed Boughs
			instance_exploration(15050),	-- Wellspring Atrium

			-- NYI?
			exploration(14519),	-- 10Zone6-Devland
			exploration(14038),	-- Env Art Land - Detail Doodad Test
		})),

		-- 10.2.5
		expansion(EXPANSION.DF, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_5 } }, {
			-- Unknown [Map 2666] Amirdrassil
			exploration(14969),	-- Amirdrassil
			exploration(14981),	-- Ancient Bough
			exploration(14978),	-- Craggy Reef
			exploration(14982),	-- Emerald Gardens
			exploration(14983),	-- Lunedane
			exploration(14986),	-- Ohn'ahran Plains
			exploration(14985),	-- The Azure Span
			exploration(14984),	-- The Storm Scar

			-- Zone: Amirdrassil
			exploration(15105),	-- Amirdrassil
			exploration(15115),	-- Bel'ameth
			exploration(15137),	-- Crafter's Gallery
			exploration(15138),	-- Turn of the Tide

			-- Zone: Ardenweald
			exploration(14962),	-- De Other Side

			-- Zone: Ruins of Gilneas
			exploration(14995),	-- Aderic's Repose
			exploration(14997),	-- Greymane Manor
			exploration(14993),	-- Keel Harbor
			exploration(14996),	-- The Headlands

			-- NYI?
			exploration(15011),	-- FX - Test Dungeon \\ FX Test Dungeon
			exploration(14987),	-- James's Dynamic Mount Testground
			exploration(15109),	-- Sound Room - Audio Smoketest
		})),

		-- 10.2.6
		expansion(EXPANSION.DF, patch(2,6), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_6 } }, {
			-- Game Mode: Plunderstorm
			exploration(14357),	-- Arathi Highlands
			exploration(15058),	-- Arathi Highlands
			exploration(15068),	-- Ar'gorok
			exploration(15077),	-- Boulderfist Hall
			exploration(15083),	-- Brew Bay
			exploration(15079),	-- Circle of East Binding
			exploration(15070),	-- Circle of Elements
			exploration(15063),	-- Circle of Inner Binding
			exploration(15074),	-- Circle of Outer Binding
			exploration(15086),	-- Clearfell's Patch
			exploration(15088),	-- Contested Pass
			exploration(15075),	-- Dabyrie's Farmstead
			exploration(15069),	-- Drywhisker Mine
			exploration(15081),	-- Drywhisker Gorge
			exploration(15071),	-- Faldir's Cove
			exploration(15090),	-- Forsaken Wagon
			exploration(15062),	-- Galson's Lode
			exploration(15076),	-- Go'Shek Farm
			exploration(15080),	-- Hammerfall
			exploration(15067),	-- Hatchet Ridge
			exploration(15064),	-- High Perch
			exploration(15060),	-- Highlands Mill
			exploration(15087),	-- Labor's Rest
			exploration(15089),	-- Marrow's Farm
			exploration(15059),	-- Newstead
			exploration(15065),	-- Northfold Crossing
			exploration(15073),	-- Refuge Pointe
			exploration(15057),	-- Stromgarde Keep
			exploration(15072),	-- Thandol Span
			exploration(15084),	-- The Drowned Reef
			exploration(15082),	-- The Forbidding Sea
			exploration(15085),	-- The Great Sea
			exploration(15091),	-- The Mangled Chord
			exploration(15092),	-- The Neglected Seat
			exploration(15066),	-- Thoradin's Wall
			exploration(15061),	-- Valorcall Pass
			exploration(15078),	-- Witherbark Village
		})),

		-- 10.2.7
		expansion(EXPANSION.DF, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_7 } }, {
			-- Zone: Suramar
			exploration(15168),	-- Botanist's Terrace
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.0.2
		expansion(EXPANSION.TWW, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_2 } }, {
			-- Zone: Dornogal
			exploration(15329),	-- Delver's Headquarters
			-- Sub-zone:
			exploration(15051),	-- Chamber of Heart

			-- Zone: Isle of Dorn
			exploration(14717),	-- Isle of Dorn
			exploration(15525),	-- The Great Sea

			-- Zone: The Rinding Deeps
			exploration(14795),	-- The Ringing Deeps
			exploration(14807),	-- The Glittering Shelf
			exploration(14818),	-- Darkflame Cleft Exterior
			exploration(14823),	-- <Unnamed POI 007>
			exploration(14824),	-- <Unnamed POI 008>
			exploration(14825),	-- <Unnamed POI 009>
			exploration(14826),	-- <Unnamed POI 010>
			exploration(14827),	-- <Unnamed POI 011>
			exploration(14828),	-- <Unnamed POI 012>
			exploration(14829),	-- <Unnamed POI 013>
			exploration(14830),	-- <Unnamed POI 014>
			exploration(14831),	-- <Unnamed POI 015>
			exploration(14832),	-- <Unnamed POI 016>
			exploration(14833),	-- <Unnamed POI 017>
			exploration(14834),	-- <Unnamed POI 018>
			exploration(14835),	-- <Unnamed POI 019>
			exploration(14836),	-- <Unnamed POI 020>

			-- Zone: Hallowfall
			exploration(14838),	-- Hallowfall
			exploration(14920),	-- The Basin
			exploration(15552),	-- The Undersea

			-- Zone: Azj-Kahet
			exploration(14752),	-- Azj-Kahet
			exploration(14753),	-- City of Threads
			exploration(14903),	-- Deepstrike Point
			exploration(15359),	-- Sundered's Crucible
			-- Sub-zone: City of Threads
			exploration(15470),	-- Laboratory of the Grand Splicer

			-- Zone: Hall of Awakening [Earthen]
			exploration(14665),	-- Khaz Algar
			exploration(15342),	-- Hall of Awakening

			-- Scenario: Dalaran
			instance_exploration(15177),	-- Dalaran

			-- Scenario: Darkflame Cleft
			instance_exploration(15052),	-- Darkflame Cleft

			-- Scenario: Priory of the Sacred Flame
			instance_exploration(15145),	-- Hallowfall
			instance_exploration(15146),	-- The Undersea
			instance_exploration(15147),	-- Veneration Grounds
			instance_exploration(15148),	-- Velhan's Claim
			instance_exploration(15149),	-- Mereldar
			instance_exploration(15150),	-- Priory of the Sacred Flame

			-- Scenario: Hall of Awakening
			instance_exploration(15048),	-- Hall of Awakening
			instance_exploration(15141),	-- Awakening Machine
			instance_exploration(15142),	-- Firewall of Negation
			instance_exploration(15143),	-- Processing Unit
			instance_exploration(15144),	-- Annihilation Interface

			-- Scenario: Awakening The Machine
			instance_exploration(15133),	-- Awakening The Machine

			-- Delve: Earthcrawl Mines
			instance_exploration(14999),	-- Earthcrawl Mines

			-- Delve: Fungal Folly
			instance_exploration(14957),	-- Fungal Folly

			-- Delve: Kriegval's Rest
			instance_exploration(15000),	-- Kriegval's Rest

			-- Delve: Mycomancer Cavern
			instance_exploration(14998),	-- Mycomancer Cavern

			-- Delve: Nightfall Sanctum
			instance_exploration(15005),	-- Nightfall Sanctum

			-- Delve: Skittering Breach
			instance_exploration(15004),	-- Skittering Breach

			-- Delve: Tak-Rethan Abyss
			instance_exploration(15008),	-- Tak-Rethan Abyss
			instance_exploration(15327),	-- Tak-Rethan Abyss

			-- Delve: The Dread Pit
			instance_exploration(15003),	-- The Dread Pit

			-- Delve: The Sinkhole
			instance_exploration(15006),	-- The Sinkhole
			instance_exploration(15175),	-- The Sinkhole

			-- Delve: The Spiral Weave
			instance_exploration(15007),	-- The Spiral Weave

			-- Delve: The Underkeep
			instance_exploration(15009),	-- The Underkeep

			-- Delve: The Waterworks
			instance_exploration(15002),	-- The Waterworks

			-- Delve: Zekvir's Lair
			instance_exploration(15001),	-- Zekvir's Lair

			-- Raid: Nerub-ar Palace
			instance_exploration(15372),	-- Brood Pens
			instance_exploration(15376),	-- Crown of Shadows
			instance_exploration(15373),	-- Gossamer Gallery
			instance_exploration(15363),	-- Grand Rampart
			instance_exploration(15374),	-- Hall of Whispers
			instance_exploration(15368),	-- Kili-zar Arena
			instance_exploration(14980),	-- Nerub-ar Palace
			instance_exploration(15362),	-- Nerub-ar Gatehouse
			instance_exploration(15375),	-- Silken Court
			instance_exploration(15371),	-- Skittering Cavern
			instance_exploration(15367),	-- Terrace of Majesty
			instance_exploration(15366),	-- The Ascending Reach
			instance_exploration(15365),	-- The Congealing Pool
			instance_exploration(15370),	-- The Narthex
			instance_exploration(15364),	-- The Pulsing Pit
			instance_exploration(15369),	-- The Swaying Span

			-- Dungeon: Ara-Kara, City of Echoes
			instance_exploration(15093),	-- Ara-Kara, City of Echoes
			instance_exploration(15155),	-- Echoing Overlook
			instance_exploration(15154),	-- The Shredded Strands
			instance_exploration(15156),	-- The Undercache

			-- Dungeon: Cinderbrew Meadery
			instance_exploration(15103),	-- Cinderbrew Meadery
			instance_exploration(15341),	-- The BEE.E.O. Suite
			instance_exploration(15340),	-- The Buzz Barns
			instance_exploration(15338),	-- The Flaming Taps
			instance_exploration(15339),	-- The Stills

			-- Dungeon: City of Threads
			instance_exploration(14979),	-- City of Threads
			instance_exploration(15112),	-- High Hollows
			instance_exploration(15113),	-- The Transformatory
			instance_exploration(15111),	-- Umbral Bazaar

			-- Dungeon: Priory of the Sacred Flame
			instance_exploration(14954),	-- Priory of the Sacred Flame
			instance_exploration(15460),	-- Sanctified Grounds

			-- Dungeon: Darkflame Cleft
			instance_exploration(14882),	-- Darkflame Cleft
			instance_exploration(15022),	-- Hall of the Candle King
			instance_exploration(15019),	-- Hewn Passage
			instance_exploration(15023),	-- Lightless Depths
			instance_exploration(15020),	-- Sprawling Trackyard
			instance_exploration(15021),	-- The Waxatory

			-- Dungeon: The Dawnbreaker
			instance_exploration(15547),	-- Beledar's Bounty
			instance_exploration(15549),	-- Dayspring Fields
			instance_exploration(15786),	-- Hallowfall
			instance_exploration(15545),	-- Mereldar
			instance_exploration(15550),	-- Stagnant Mire
			instance_exploration(15544),	-- Tenir's Ascent
			instance_exploration(14971),	-- The Dawnbreaker
			instance_exploration(15551),	-- The Fangs
			instance_exploration(15548),	-- The Hungering Pool
			instance_exploration(15546),	-- Veneration Grounds

			-- Dungeon: The Rookery
			instance_exploration(14938),	-- The Rookery
			instance_exploration(15328),	-- The Rookery Landing

			-- Dungeon: The Stonevault
			instance_exploration(14883),	-- The Stonevault

			-- Battleground: Deephaul Ravine
			instance_exploration(14990),	-- Deephaul Ravine
			instance_exploration(15101),	-- Junction
			instance_exploration(15100),	-- The Earthenworks
			instance_exploration(15099),	-- The Waterworks

			-- Warband Scene: Warband Camp
			exploration(15387),	-- Warband Camp

			-- ??
			exploration(15513),	-- Pocket Dimension

			-- NYI?
			exploration(14484),	-- 10.2 Devland
			exploration(14523),	-- 11 Zone3
			exploration(14517),	-- 11Test1
			exploration(14615),	-- 11Test2
			exploration(14658),	-- 11Test3
			exploration(14661),	-- 11Test4
			exploration(14662),	-- 11Test5
			exploration(14723),	-- 11Test6
			exploration(14855),	-- 11Test7
			exploration(14908),	-- 11.0 - Underground Test
			exploration(15180),	-- 11.0 warband camp
			exploration(15027),	-- 2510 Coreway
			exploration(14730),	-- Abandoned Creche
			exploration(14616),	-- Darkglow Hollows
			exploration(15667),	-- Delves
			exploration(15108),	-- Dev Map - Exile's Reach - Tower
			exploration(14748),	-- Khaz Algar
			exploration(15343),	-- KVigue Test
			exploration(14512),	-- RebornTree
			exploration(14853),	-- Test Dungeon
			exploration(14747),	-- Zone 4 Dev Land
			exploration(15055),	-- zzoldPriory of the Sacred Flame
		})),

		-- 11.0.5
		expansion(EXPANSION.TWW, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_5 } }, {
			-- Zone: The Forbidden Reach [Dracthyr starting zone for all classes]
			exploration(15509),	-- The Forbidden Reach
			exploration(15510),	-- The War Creche

			-- Scenario: The Codex of Chromie
			instance_exploration(15439),	-- Bones of Grakkarond
			instance_exploration(15436),	-- Bronzebeard Encampment
			instance_exploration(15443),	-- Cenarion Hold
			instance_exploration(15448),	-- Hive'Ashi
			instance_exploration(15437),	-- Hive'Regal
			instance_exploration(15435),	-- Hive'Zora
			instance_exploration(15446),	-- Ravaged Twilight Camp
			instance_exploration(15431),	-- Silithus
			instance_exploration(15438),	-- Southwind Village
			instance_exploration(15445),	-- Staghelm Point
			instance_exploration(15447),	-- The Crystal Vale
			instance_exploration(15432),	-- The Scarab Dais
			instance_exploration(15433),	-- The Scarab Wall
			instance_exploration(15440),	-- The Swarming Pillar
			instance_exploration(15441),	-- Twilight Base Camp
			instance_exploration(15434),	-- Twilight Outpost
			instance_exploration(15442),	-- Twilight Post
			instance_exploration(15444),	-- Valor's Rest

			-- Raid: Blackrock Depths [Anniversary event]
			instance_exploration(15913),	-- Blackrock Depths

			-- NYI?
			exploration(15780),	-- Forbidden Reach - (11.0.5 Version) - Dracthyr for All
		})),

		-- 11.0.7
		expansion(EXPANSION.TWW, patch(0,7), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_7 } }, {
			-- Zone: Siren Isle
			exploration(15941),	-- Bilge Rat Corsair
			exploration(15914),	-- Hozen's Paw
			exploration(16101),	-- Pridetalon Hotsprings
			exploration(16108),	-- The Great Sea
		})),

		-- 11.1.0
		expansion(EXPANSION.TWW, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_0 } }, {
			-- Zone: Undermine
			exploration(15643),	-- Airship Supply Depot
			exploration(15465),	-- Slam Central Station
			exploration(15783),	-- The Moneymaker
			exploration(15533),	-- The Hoardroom

			-- Zone: Zuldazar
			exploration(15518),	-- Lucky Break Mines
			exploration(15530),	-- The Squandered Retreat

			-- Zone: Dornogal [DelvesNerubians01SpecialInstance]
			exploration(16075),	-- Earthcrawl Mines

			-- Delve: Demolition Dome
			instance_exploration(15991),	-- Demolition Dome

			-- Delve: Sidestreet Sluice
			instance_exploration(15990),	-- Sidestreet Sluice

			-- Delve: Excavation Site 9
			instance_exploration(15836),	-- Excavation Site 9

			-- Dungeon: Operation: Floodgate
			instance_exploration(15452),	-- Operation: Floodgate
			instance_exploration(15710),	-- The Waterworks

			-- Raid: Liberation of Undermine
			instance_exploration(15654),	-- Bilgewater Flats
			instance_exploration(15660),	-- Blackwater Marina
			instance_exploration(15651),	-- Castaway Cove
			instance_exploration(15652),	-- Demolition Dome
			instance_exploration(15658),	-- Emerald Hills Golf Course
			instance_exploration(15653),	-- Hovel Hill
			instance_exploration(15522),	-- Liberation of Undermine
			instance_exploration(15645),	-- Pleasant Heights
			instance_exploration(15644),	-- Plunder Party
			instance_exploration(15657),	-- Port Authority
			instance_exploration(15656),	-- Public Parking
			instance_exploration(15838),	-- Research and Destruction
			instance_exploration(15649),	-- Shipping and Handling
			instance_exploration(15664),	-- Slam Central Station
			instance_exploration(15650),	-- Steamwheedle Laboratories
			instance_exploration(15662),	-- Tailgate Park
			instance_exploration(15665),	-- The Gallagio
			instance_exploration(16177),	-- The Golden Cabana
			instance_exploration(15647),	-- The Heaps
			instance_exploration(16145),	-- The Heartbreak Room
			instance_exploration(16174),	-- The High Roller Suite
			instance_exploration(15661),	-- The Hoardroom
			instance_exploration(15839),	-- The House of Chrome
			instance_exploration(15646),	-- The Incontinental Hotel
			instance_exploration(15655),	-- The Incontinental Lobby
			instance_exploration(16176),	-- The Midnight Lounge
			instance_exploration(15659),	-- The Scrapshop
			instance_exploration(16175),	-- The Shooting Gallery
			instance_exploration(16146),	-- The Tower of Spades
			instance_exploration(15648),	-- The Vatworks
			instance_exploration(15663),	-- Venture Plaza
			instance_exploration(16106),	-- Venturewood

			-- PvP Arena:
			instance_exploration(15332),	-- Cage of Carnage

			-- Warband Scene: Gallagio Grand Gallery
			exploration(16078),	-- Warband_Plains
		})),

		-- 11.1.5
		expansion(EXPANSION.TWW, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_5 } }, {
			-- Revisited Horrific Visions
			instance_exploration(15946),	-- Vision of Orgrimmar
			instance_exploration(15942),	-- Vision of Stormwind

			-- Dastardly Duos
			instance_exploration(16092),	-- Dastardly Duos
			instance_exploration(16093),	-- Undermine

			-- NYI?
			exploration(16077),	-- Dornogal Test
		})),

		-- 11.1.7
		expansion(EXPANSION.TWW, patch(1,7), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_7 } }, {
			-- Lorewalking Zone: Arathi Highlands
			exploration(15716),	-- Arathi Highlands
			exploration(15735),	-- Ar'gorok
			exploration(15727),	-- Boulderfist Hall
			exploration(15721),	-- Boulder'gor
			exploration(15722),	-- Circle of East Binding
			exploration(15718),	-- Circle of Elements
			exploration(15734),	-- Circle of Inner Binding
			exploration(15732),	-- Circle of Outer Binding
			exploration(15731),	-- Dabyrie's Farmstead
			exploration(15730),	-- Drywhisker Gorge
			exploration(15740),	-- Drywhisker Mine
			exploration(15724),	-- Faldir's Cove
			exploration(15744),	-- Galson's Lode
			exploration(15729),	-- Go'Shek Farm
			exploration(15719),	-- Hammerfall
			exploration(15736),	-- Hatchet Ridge
			exploration(15738),	-- High Perch
			exploration(15741),	-- Highlands Mill
			exploration(15737),	-- Newstead
			exploration(15739),	-- Northfold Crossing
			exploration(15733),	-- Refuge Pointe
			exploration(15742),	-- Stromgarde Keep
			exploration(15726),	-- Thandol Span
			exploration(15723),	-- The Drowned Reef
			exploration(15720),	-- The Forbidding Sea
			exploration(15725),	-- Thoradin's Wall
			exploration(15743),	-- Valorcall Pass
			exploration(15728),	-- Witherbark Village

			-- Lorewalking Zone: Hillsbrad Foothills
			exploration(15748),	-- Dun Garok
			exploration(15747),	-- Durnholde Keep
			exploration(15749),	-- Eastern Strand
			exploration(15717),	-- Hillsbrad Foothills
			exploration(15746),	-- Nethander Stead
			exploration(15752),	-- Ravenholdt Manor
			exploration(15751),	-- The Great Sea
			exploration(15750),	-- Thoradin's Wall

			-- Lorewalking Zone: Lordaeron Garrison
			exploration(15989),	-- Lordaeron Garrison

			-- Lorewalking Zone: Ny'alotha, the Waking City
			exploration(15777),	-- Annex of Prophecy
			exploration(15772),	-- Chamber of Rebirth
			exploration(15768),	-- Den of Transfusion
			exploration(15766),	-- Locus of Infinite Truths
			exploration(15774),	-- Maw of Gor'ma
			exploration(15765),	-- Ny'alotha
			exploration(15764),	-- Ny'alotha, the Waking City
			exploration(15767),	-- N'Zoth
			exploration(15778),	-- Obsidian Overlook
			exploration(15773),	-- Spawning Pit
			exploration(15769),	-- Terrace of Desolation
			exploration(15775),	-- The Hive
			exploration(15776),	-- The Ritual Chamber
			exploration(15770),	-- Twilight Landing
			exploration(15779),	-- Vision of Destiny
			exploration(15771),	-- Warren of Decay

			-- Lorewalking Zone: Scarlet Halls
			exploration(15842),	-- Huntsman's Cloister
			exploration(15841),	-- Scarlet Halls
			exploration(15843),	-- Training Grounds

			-- Lorewalking Zone: The Hinterlands
			exploration(15758),	-- Bogen's Ledge
			exploration(15754),	-- Jintha'Alor
			exploration(15757),	-- Shadra'Alor
			exploration(15753),	-- The Altar of Zul
			exploration(15756),	-- The Forbidding Sea
			exploration(15714),	-- The Hinterlands
			exploration(15755),	-- Zun'watha

			-- Lorewalking Zone: Twilight Highlands
			exploration(15715),	-- Twilight Highlands
			exploration(15745),	-- Vermillion Redoubt

			-- Lorewalking Zone: Wetlands
			exploration(15759),	-- Dun Modr
			exploration(15760),	-- Saltspray Glen
			exploration(15761),	-- Thandol Span
			exploration(15713),	-- Wetlands

			-- NYI?
			exploration(15794),	-- Marrin's Enclave [UNUSED]
		})),

		-- 11.2.0
		expansion(EXPANSION.TWW, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_2_0 } }, {
			-- Zone: K'aresh
			exploration(15336),	-- K'aresh

			-- Delve: Voidrazor Sanctuary
			instance_exploration(16539),	-- Voidrazor Sanctuary

			-- Delve: Archival Assault
			instance_exploration(16427),	-- Archival Assault

			-- Dungeon: Eco-Dome Al'dani
			instance_exploration(16422),	-- Al'dani Sands
			instance_exploration(16419),	-- Breached Dome
			instance_exploration(16420),	-- Devastated Annex
			instance_exploration(16104),	-- Eco-Dome Al'dani
			instance_exploration(16569),	-- Temple of the Untamed
			instance_exploration(16421),	-- Warcamp Al'den

			-- Raid: Manaforge Omega
			instance_exploration(16178),	-- Manaforge Omega
			instance_exploration(16339),	-- The Dark Heart
			instance_exploration(16358),	-- The Forge Core
			instance_exploration(16572),	-- The Glassed Expanse
			instance_exploration(16571),	-- Wastes of K'aresh

			-- Warband Scene: The Fate of the Devoured
			exploration(16579),	-- K'aresh

			-- NYI?
			exploration(15334),	-- 11.2 - Karesh Test
			exploration(15798),	-- Wastelander Ruins [PH] - UNUSED
		})),
	}),
}));
