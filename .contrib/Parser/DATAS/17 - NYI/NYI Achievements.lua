---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(ACHIEVEMENTS, {
	expansion(EXPANSION.CLASSIC, {
		-- Used in Season of Mastery to track if you died
		ach(15329),	-- Has Died
		ach(15332),	-- [DNT] Survivor (Season of Mastery) (hidden) \\ Survivor
		ach(15578),	-- <Hidden> Adventure Awaits - Hit 60 with Buff Adventure Awaits
		-- Used in Season of Discovery to check if you were eligible for the Cata Level 80 Boost
		ach(42133),	-- [DNT] Balnazzar Defeated
		ach(42186),	-- [DNT] Balnazzar Defeated (Backup Achievement)
	}),
	-- #if AFTER WRATH
	expansion(EXPANSION.WRATH, {
		-- 3.x.x
		n(P3xx, {
			ach(1),	-- Race/Level Achievement [PH]
			ach(2),	-- Class/Level Achievement [PH]
			ach(3),	-- Level Each Faction to 80. [PH]
			ach(4),	-- Level Two Classes to 80. [PH]
			ach(5),	-- Level to 15 without dying. [PH]
			ach(14),	-- Level to 55. [PH]
			ach(17),	-- Max dagger skill. [PH]
			ach(18),	-- Max two-handed swords. [PH]
			ach(19),	-- Max axes. [PH]
			ach(20),	-- Max two-handed axes.  [PH]
			ach(21),	-- Max maces.  [PH]
			ach(22),	-- Max two-handed maces.  [PH]
			ach(23),	-- Max polearms.  [PH]
			ach(24),	-- Max staves.  [PH]
			ach(25),	-- Max guns.  [PH]
			ach(26),	-- Max crossbows.  [PH]
			ach(27),	-- Max bows.  [PH]
			ach(28),	-- Max wands. [PH]
			ach(29),	-- Max swords.  [PH]
			ach(30),	-- Get 4 weapon skills to 400. [PH]
			ach(56),	-- Deaths in Warsong Gulch NYI \\ Deaths in Warsong Gulch
			ach(57),	-- Deaths in Alterac Valley NYI \\ Deaths in Alterac Valley
			ach(58),	-- Deaths from Drek'Thar
			ach(59),	-- Deaths in Arathi Basin NYI \\ Deaths in Arathi Basin
			ach(86),	-- Chat lines sent NYI \\ Chat lines sent
			ach(87),	-- Chat lines read NYI \\ Chat lines read
			ach(88),	-- Total mail received NYI \\ Total mail received
			ach(89),	-- Total mail sent NYI \\ Total mail sent
			ach(90),	-- Number of Guilds NYI \\ Number of Guilds
			ach(91),	-- Time spent in longest Guild NYI \\ Time spent in longest Guild
			ach(92),	-- Highest Guild rank NYI \\ Highest Guild rank
			ach(93),	-- Guild Charters signed NYI \\ Guild Charters signed
			ach(96),	-- Most quests completed in a day
			ach(109),	-- Bosses killed NYI \\ Bosses killed
			ach(111),	-- Most killed boss was killed
			ach(136),	-- The Epicurean <NYI>
			ach(138),	-- The Savior <PH> <NYI>
			ach(139),	-- Timely Heal <PH> <NYI>
			ach(140),	-- Gnome's Best Friend <PH> <NYI>
			ach(142),	-- I Need a Remedy <PH> <NYI>
			ach(145),	-- For The Halibut... <PH> <NYI>
			ach(146),	-- Fishin' Around the World  <PH> <NYI>
			ach(147),	-- Rainy Day <PH> <NYI>
			ach(148),	-- Rock The Boat <PH> <NYI>
			ach(149),	-- Drinkin' and Fishin' <PH> <NYI>
			ach(151),	-- Hurry Up and Fish <PH> <NYI>
			ach(152),	-- The Old Gnome and the Sea <PH> <NYI>
			ach(163),	-- No Neans No  <NYI>
			ach(164),	-- Arathi Defender <PH> <NYI>
			ach(176),	-- Current enchanting skill
			ach(177),	-- Highest enchanting skill NYI \\ Highest enchanting skill
			ach(179),	-- Legendary items enchanted NYI \\ Legendary items enchanted
			ach(180),	-- Total number of items enchanted NYI \\ Total number of items enchanted
			ach(182),	-- Total materials used in enchanting NYI \\ Total materials used in enchanting
			ach(184),	-- Uncommon items enchanted NYI \\ Uncommon items enchanted
			ach(185),	-- Rare items enchanted NYI \\ Rare items enchanted
			ach(186),	-- Epic items enchanted NYI \\ Epic items enchanted
			ach(187),	-- Largest critical hit
			ach(188),	-- Ability used in largest critical hit
			ach(189),	-- Largest heal cast \\ Largest heal NYI \\ Largest heal
			ach(190),	-- Healing ability used the most
			ach(191),	-- Ability used in largest heal
			ach(192),	-- Damage ability used the most
			ach(193),	-- Largest hit dealt \\ Largest hit NYI \\ Largest hit
			ach(194),	-- Ability used in largest hit
			ach(195),	-- Largest critical heal
			ach(196),	-- Ability used in largest critical heal
			ach(197),	-- Total damage done
			ach(198),	-- Total healing done
			ach(215),	-- That's Gotta Hurt <PH> <NYI>
			ach(217),	-- Thanks For Keeping It Warm <PH> <NYI>
			ach(232),	-- Darkmoon Dealer <PH> <nyi>
			ach(234),	-- Shots and Giggles <PH> <nyi>
			ach(235),	-- Boom! \\ Boom! <PH> <nyi>
			ach(250),	-- Egg Hunter  <PH> <nyi>
			ach(257),	-- Red Noses Lead The Way  <PH> <nyi>
			ach(258),	-- Spread the Love  <PH> <nyi>
			ach(261),	-- Flaunt It  <PH> <nyi>
			ach(262),	-- Drown the flame  <PH> <nyi>
			ach(268),	-- Missilekisser <PH> <nyi>
			ach(269),	-- Party Poopers <PH> <nyi>
			ach(270),	-- Flake Maker <PH> <nyi>
			ach(276),	-- Greatfather's Little Helper  <PH> <nyi>
			ach(278),	-- Vintage Collector  <PH> <nyi>
			ach(285),	-- Tricked  <PH> <nyi>
			ach(294),	-- Beeerfeest <PH> <nyi>
			ach(296),	-- Round em' up <PH> <nyi>
			ach(297),	-- Brewfest Antique Collector <PH> <nyi>
			ach(304),	-- Ram Rider <PH> <nyi>
			ach(314),	-- Total Arena Points gained
			ach(315),	-- Total Honor gained NYI \\ Total Honor gained
			ach(316),	-- World Honorable kills NYI \\ World Honorable kills
			ach(317),	-- World dishonorable kills NYI \\ World dishonorable kills
			ach(321),	-- Total raid and dungeon deaths \\ Total dungeon deaths
			ach(322),	-- Total deaths to Lich King dungeon bosses \\ Total deaths to 5-player dungeon bosses NYI \\ Total deaths to 5-player dungeon bosses
			ach(323),	-- Total deaths to Lich King 10-player raid bosses \\ Total death to 10-player raid bosses NYI \\ Total death to 10-player raid bosses
			ach(324),	-- Total deaths to Lich King 25-player raid bosses \\ Total deaths to 25-player raid bosses NYI \\ Total deaths to 25-player raid bosses
			ach(335),	-- Most epic items owned at one time
			ach(336),	-- Legendary items acquired NYI \\ Legendary items acquired
			ach(337),	-- Epic items crafted NYI \\ Epic items crafted
			ach(339),	-- Mounts owned \\ Most mounts owned at one time
			ach(340),	-- Most trinkets owned at one time NYI \\ Most trinkets owned at one time
			ach(341),	-- Epic items looted NYI \\ Epic items looted
			ach(342),	-- Epic items acquired NYI \\ Epic items acquired
			ach(343),	-- Percent time PvP flagged NYI \\ Percent time PvP flagged
			ach(351),	-- Times summoned by warlock
			ach(352),	-- Times summoned to a Meeting Stone
			ach(354),	-- Number of boat / zeppelin trips
			ach(355),	-- Fastest ground speed NYI \\ Fastest ground speed
			ach(356),	-- Fastest flight speed NYI \\ Fastest flight speed
			ach(357),	-- Fastest water speed NYI \\ Fastest water speed
			ach(358),	-- Number of trips through the Dark Portal NYI \\ Number of trips through the Dark Portal
			ach(359),	-- Number of jumps NYI \\ Number of jumps
			ach(360),	-- Max number of friends NYI \\ Max number of friends
			ach(361),	-- Number of friends NYI \\ Number of friends
			ach(368),	-- Fastest loss
			ach(369),	-- Fastest win
			ach(371),	-- Most healing done in one Arena
			ach(372),	-- Most damage received in one Arena
			ach(373),	-- Most damage dealt in one Arena
			ach(375),	-- Highest total Strength NYI \\ Highest total strength
			ach(377),	-- Most factions at Exalted \\ Total factions at Exalted
			ach(378),	-- Most factions at Revered or higher \\ Total factions at Revered or higher NYI \\ Total factions at Revered or higher
			ach(379),	-- Time to achieve Exalted with home city
			ach(380),	-- Honorable Kills made before level 60
			ach(384),	-- Most killing blows in one Battleground NYI \\ Most killing blows in one Battleground
			ach(385),	-- World NYI \\ World
			ach(386),	-- Battlegrounds NYI \\ Battlegrounds
			ach(387),	-- Arenas NYI \\ Arenas
			ach(390),	-- Most healing done in one Battleground NYI \\ Most healing done in one Battleground
			ach(391),	-- Most damage received in one Battleground NYI \\ Most damage received in one Battleground
			ach(392),	-- Most damage dealt in one Battleground NYI \\ Most damage dealt in one Battleground
			ach(413),	-- Malygos Slayer <PH> <NYI>
			ach(417),	-- Gladiator <PH> <NYI>
			ach(455),	-- Kel'Thuzad Slayer <PH> <NYI>
			ach(501),	-- Tuskarrmageddon <NYI>
			ach(527),	-- Largest hit received NYI \\ Largest hit received
			ach(528),	-- Total damage received NYI \\ Total damage received
			ach(529),	-- Most factions at Honored or higher \\ Total factions at Honored or higher NYI \\ Total factions at Honored or higher
			ach(548),	-- Max distance fallen without dying
			ach(570),	-- Average item level of best equipped armor and weapons NYI \\ Average item level of armor and weapons
			ach(593),	-- Deaths from Vanndar Stormpike
			ach(594),	-- Deaths from Hogger
			ach(620),	-- Multitude of Mounts <NYI>
			ach(751),	-- Deaths in Ulduar NYI \\ Deaths in Ulduar
			ach(752),	-- Deaths in Naxxramas NYI \\ Deaths in Naxxramas
			ach(754),	-- Longest Arena winning streak
			ach(755),	-- Longest Battleground winning streak NYI \\ Longest Battleground winning streak
			ach(788),	-- Number of groups formed NYI \\ Number of groups formed
			ach(789),	-- Number of 40-player groups NYI \\ Number of 40-person groups
			ach(790),	-- Number of 25-player groups NYI \\ Number of 25-person groups
			ach(791),	-- Number of 10-player groups NYI \\ Number of 10-person groups
			ach(792),	-- Number of 5-player groups NYI \\ Number of 5-person groups
			ach(793),	-- Number of groups of <5 NYI \\ Number of groups of <5
			ach(794),	-- These stats may not be interesting since you join and leave the same group a lot
			ach(795),	-- Times considered resurrecting but logged instead
			ach(803),	-- Most daily quests completed per day
			ach(804),	-- Total gold earned in one play session
			ach(805),	-- Highest attribute
			ach(806),	-- Lowest attribute
			ach(807),	-- Highest total Intelligence \\ Highest total intelligence
			ach(810),	-- Highest total Agility NYI \\ Highest total agility
			ach(813),	-- Highest total Spirit \\ Highest total spirit
			ach(815),	-- Highest total mana NYI \\ Highest total mana
			ach(817),	-- Highest total health NYI \\ Highest total health
			ach(820),	-- Highest defense
			ach(821),	-- Highest critical chance
			ach(823),	-- Highest hit chance
			ach(829),	-- Largest heal received NYI \\ Largest heal received
			ach(830),	-- Total healing received NYI \\ Total healing received
			ach(831),	-- Highest total Stamina \\ Highest total stamina
			ach(832),	-- Times used
			ach(833),	-- Times used
			ach(834),	-- Items deposited to Guild bank NYI \\ Items deposited to Guild bank
			ach(835),	-- Items withdrawn from Guild banks NYI \\ Items withdrawn from Guild banks
			ach(836),	-- Highest armor
			ach(904),	-- The Aldor
			ach(916),	-- Total deaths in 25-player raids NYI \\ Total deaths in 25-player raids
			ach(917),	-- Total deaths in 10-player raids NYI \\ Total deaths in 10-player raids
			ach(918),	-- Total deaths in 5-player dungeons NYI \\ Total deaths in 5-player dungeons
			ach(920),	-- Most auctions posted at one time
			ach(924),	-- Most Northrend factions at Exalted \\ Northrend factions at Exalted
			ach(925),	-- Most Outland factions at Exalted \\ Outland factions at Exalted
			ach(926),	-- Most Horde factions at Exalted \\ Horde or Alliance factions at Exalted NYI \\ Horde or Alliance factions at Exalted
			ach(927),	-- Equipped epic items in item slots \\ Most epics worn at one time
			ach(928),	-- Extra bank slots purchased \\ Total bank space
			ach(929),	-- Total guild bank space NYI \\ Total guild bank space
			ach(930),	-- Total bag space NYI \\ Total bag space
			ach(931),	-- Total factions encountered NYI \\ Total factions encountered
			ach(935),	-- Kel'Thuzad attempts
			ach(936),	-- Kel'Thuzad kills
			ach(954),	-- What is a Feat of Strength?
			ach(1016),	-- Plethora of Pets
			ach(1018),	-- Pandemic of Pets
			ach(1019),	-- Shop Smart. Shop Pet... Smart
			ach(1043),	-- Greed rolls made on loot NYI \\ Greed rolls made on loot
			ach(1044),	-- Need rolls made on loot NYI \\ Need rolls made on loot
			ach(1046),	-- Total times someone called a chicken
			ach(1049),	-- Highest expertise
			ach(1050),	-- Highest dodge chance
			ach(1051),	-- Highest block chance
			ach(1052),	-- Highest parry chance
			ach(1053),	-- Highest resilience
			ach(1054),	-- Highest armor penetration
			ach(1055),	-- Highest spellpower
			ach(1056),	-- Highest haste
			ach(1057),	-- Deaths in 2v2
			ach(1058),	-- Total kills that grant experience or honor
			ach(1105),	-- Total 25-player raids completed (final boss killed) NYI \\ Total 25-player raids completed (final boss killed)
			ach(1106),	-- Deaths in Eye of the Storm NYI \\ Deaths in Eye of the Storm
			ach(1107),	-- Deaths in 3v3
			ach(1108),	-- Deaths in 5v5
			ach(1149),	-- Talent tree respecs \\ Total talent tree respecs
			ach(1150),	-- Gold spent on talent tree respecs \\ Total gold spent on talent tree respecs
			ach(1154),	-- Death Touch
			ach(1155),	-- Steamroller
			ach(1156),	-- Test Pets Chared Criteria <NYI>
			ach(1158),	-- Duel Identity <NYI>
			ach(1163),	-- Hot Hot Hot Streak <NYI>
			ach(1202),	-- Weapon skills at maximum skill \\ Weapon skills at maximum NYI
			ach(1227),	-- Death in the Nexus NYI
			ach(1228),	-- Death in Utgarde Keep NYI
			ach(1230),	-- Prince Keleseth kills (Utgarde Keep)
			ach(1253),	-- Raised as a ghoul
			ach(1256),	-- Solo Onyxia
			ach(1290),	-- Who Sharted?
			ach(1316),	-- $gOmar:Omara;'s Test Localization Achievement <PH><NYI>
			ach(1338),	-- Total killing blows
			ach(1458),	-- Continent with the most Honorable Kills
			ach(1466),	-- Most Alliance factions at Exalted
			ach(1485),	-- Lich King 5-player different bosses defeated \\ Lich King 5-player different bosses killed
			ach(1489),	-- Continent with the most Killing Blows
			ach(1500),	-- Deaths in Strand of the Ancients
			ach(1520),	-- Items pickpocketed
			ach(1551),	-- World Honorable Kills
			ach(1716),	-- Battleground with the most Killing Blows
			ach(1719),	-- Battleground with the most Honorable Kills
			ach(1731),	-- Industrial Warfare
			ach(1739),	-- Against the Odds
			ach(1759),	-- Lich King 25-player different bosses defeated \\ Lich King 25-player different bosses killed
			ach(1771),	-- Lich King 10-player different bosses defeated \\ Lich King 10-player different bosses killed
			ach(1818),	-- Emblem of Heroism
			ach(1819),	-- Emblem of Valor
			ach(1820),	-- 25 Emblems of Heroism
			ach(1821),	-- 50 Emblems of Heroism
			ach(1822),	-- 100 Emblems of Heroism
			ach(1823),	-- 250 Emblems of Heroism
			ach(1824),	-- 500 Emblems of Heroism
			ach(1825),	-- 1000 Emblems of Heroism
			ach(1826),	-- 25 Emblems of Valor
			ach(1827),	-- 50 Emblems of Valor
			ach(1828),	-- 100 Emblems of Valor
			ach(1829),	-- 250 Emblems of Valor
			ach(1830),	-- 500 Emblems of Valor
			ach(1831),	-- 1000 Emblems of Valor
			ach(1861),	-- The Party's Over
			ach(2216),	-- Most deadly Lich King dungeon boss
			ach(2217),	-- Most deadly Lich King 10-player raid boss
			ach(2218),	-- Most deadly Lich King 25-player raid boss
			ach(2219),	-- Total deaths in 5-player Heroic dungeons \\ Total deaths in 5-player heroic dungeons
			ach(2396),	-- Battleground played the most
			ach(2397),	-- Battleground won the most
			ach(2896),	-- Emblem of Conquest
			ach(2897),	-- 25 Emblems of Conquest
			ach(2898),	-- 50 Emblems of Conquest
			ach(2899),	-- 100 Emblems of Conquest
			ach(2900),	-- 250 Emblems of Conquest
			ach(2901),	-- 500 Emblems of Conquest
			ach(2902),	-- 1000 Emblems of Conquest
			ach(3376),	-- Flame Leviathan + 1 attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3377),	-- Flame Leviathan + 2 attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3378),	-- Flame Leviathan + 3 attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3379),	-- Flame Leviathan + 4 attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3380),	-- Flame Leviathan + 1 attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3381),	-- Flame Leviathan + 2 attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3382),	-- Flame Leviathan + 3 attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3383),	-- Flame Leviathan + 4 attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3384),	-- XT-002 Deconstructor Hardmode Activations (Ulduar 10 player) (TRACKING ONLY)
			ach(3385),	-- XT-002 Deconstructor Heart Damaged (Ulduar 10 player) (TRACKING ONLY)
			ach(3386),	-- XT-002 Deconstructor Hardmode Activations (Ulduar 25 player) (TRACKING ONLY)
			ach(3387),	-- XT-002 Deconstructor Heart Damaged (Ulduar 25 player) (TRACKING ONLY)
			ach(3388),	-- Assembly of Iron - Runemaster Last attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3389),	-- Assembly of Iron - Runemaster Last attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3390),	-- Assembly of Iron - Steelbreaker Last attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3391),	-- Assembly of Iron - Steelbreaker Last attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3392),	-- Thorim - Hardmode attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3393),	-- Thorim - Hardmode attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3394),	-- Freya + 1 attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3395),	-- Freya + 1 attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3396),	-- Freya + 2 attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3397),	-- Freya + 2 attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3398),	-- Freya + 3 attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3399),	-- Freya + 3 attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3400),	-- Mimiron Hardmode attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3401),	-- Mimiron Hardmode attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3402),	-- General Vezax Hardmode attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3403),	-- General Vezax Hardmode attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3404),	-- Yogg-Saron + 3 Keepers attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3405),	-- Yogg-Saron + 2 Keepers attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3406),	-- Yogg-Saron + 1 Keeper attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3407),	-- Yogg-Saron + 0 Keepers attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3408),	-- Yogg-Saron + 3 Keepers attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3409),	-- Yogg-Saron + 2 Keepers attempts (Ulduar 10 player) (TRACKING ONLY)
			ach(3410),	-- Yogg-Saron + 1 Keeper attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3411),	-- Yogg-Saron + 0 Keepers attempts (Ulduar 25 player) (TRACKING ONLY)
			ach(3516),	-- Deaths in Ulduar
			ach(4778),	-- Disenchant rolls made on loot
			ach(4780),	-- Deaths in Trial of the Crusader
			ach(4781),	-- Deaths in Icecrown Citadel
			ach(18602),	-- Defense Protocol Beta: Trial of The Champion
		}),
	}),
	expansion(EXPANSION.CATA, {
		-- 4.x.x
		n(P4xx, {
			ach(5133),	-- Active Duty
			ach(4783),	-- Cataclysm Dungeon Explorer
			ach(4876),	-- Eastern Kingdoms Dungeon Explorer
			ach(4867),	-- Explore Tol Barad NYI
			ach(4953),	-- Guild Gladiator
			ach(4877),	-- Kalimdor Dungeon Explorer
			ach(4880),	-- Master of Battle for Gilneas
			ach(5259),	-- Master of Twin Peaks
			ach(4879),	-- Northrend Dungeon Explorer
			ach(4878),	-- Outland Dungeon Explorer
			ach(6321),	-- Ruthless Gladiator's Twilight Drake
			ach(5033),	-- Tour of Duty
			ach(5125),	-- United Nations
			ach(4954),	-- Warrior Duelist/Gladiator (WIP)
			ach(5085),	-- Zul'Aman Guild Run
		}),
	}),
	expansion(EXPANSION.MOP, {
		-- 5.x.x
		n(P5xx, {
			ach(7403),	-- Challenge mode dungeon completed the most
			ach(8681),	-- Deaths in Deepwind Gorge
			ach(7255),	-- Deaths in Silvershard Mines
			ach(7256),	-- Deaths in Temple of Kotmogu
			ach(7254),	-- Deaths in The Battle for Gilneas
			ach(7253),	-- Deaths in Twin Peaks
			ach(6617),	-- Gettin' Lucky
			ach(6461),	-- He's Mine!
			ach(6542),	-- Loremaster of Pandaria
			ach(7278),	-- Mucking Around
			ach(7243),	-- Pandaria different dungeon bosses defeated
			ach(7246),	-- Pandaria different raid bosses defeated
			ach(6627),	-- Realm First! Guild Level 30
			ach(6710),	-- Realm First! Salyis's Warband
			ach(6711),	-- Realm First! Sha of Anger
			ach(8853),	-- Scenario Dominator
			ach(8852),	-- Scenario Rampage
			ach(6549),	-- The Brewmasters
			ach(8394),	-- The Frostwind Slayer
			ach(7277),	-- Zero Bug Count
			-- 5.5.0.60481
			ach(8913),	-- Collector's Edition: Dread Raven
			ach(8915),	-- Collector's Edition: Dread Hatchling
		}),
	}),
	expansion(EXPANSION.WOD, {
		-- 6.x.x
		n(P6xx, {
			ach(10060),	-- Garrison Followers recruited
			ach(10181),	-- Garrison Missions completed
			ach(10184),	-- Garrison Rare Missions completed
			ach(10329),	-- Item slots equipped with Epic items
			ach(10331),	-- Item slots equipped with Heirloom items
			ach(10330),	-- Item slots equipped with Legendary items
			ach(10328),	-- Item slots equipped with Rare items
			ach(10327),	-- Item slots equipped with Uncommon items
			ach(9368),	-- Total deaths in raids
		}),
	}),
	expansion(EXPANSION.LEGION, {
		-- 7.0.3
		expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
			ach(11234),	-- Class Hall Champions recruited
			ach(11235),	-- Class Hall Troops recruited
			ach(11236),	-- Class Hall Missions completed
			ach(11237),	-- Class Hall Rare Missions completed
		})),

		-- 7.2.0
		expansion(EXPANSION.LEGION, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_2_0 } }, {
			ach(11339),	-- Legion's Bane
		})),

		-- 7.3.0
		expansion(EXPANSION.LEGION, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_3_0 } }, {
			ach(12107),	-- Season 3v3 victories on your current faction
		})),

		-- 7.3.2
		expansion(EXPANSION.LEGION, patch(3,2), bubbleDownSelf({ ["timeline"] = { CREATED_7_3_2 } }, {
			ach(12138),	-- Fierce Gladiator's Storm Dragon
		})),

		-- 7.3.5
		expansion(EXPANSION.LEGION, patch(3,5), bubbleDownSelf({ ["timeline"] = { CREATED_7_3_5 } }, {
			ach(12216),	-- Prestige 26
			ach(12217),	-- Prestige 27
			ach(12218),	-- Prestige 28
			ach(12219),	-- Prestige 29
		})),
	}),
	expansion(EXPANSION.BFA, {
		-- 8.0.1
		expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
			ach(12598),	-- <Hidden> Kul Tiras Continent Achievement
			ach(12554),	-- <Hidden> Lordaeron Scenario Launch
			ach(12920),	-- A Tiny Heart
			ach(12921),	-- Big Hearted
			ach(12569),	-- Bounty On My Head
			ach(12570),	-- Bounty On My Head
			ach(13052),	-- Dishonorable Discharge
			ach(13040),	-- Dive Bar Hop
			ach(12923),	-- Feel Your Heart
			ach(13043),	-- First Responder
			ach(12545),	-- Got My Mind On My Money
			ach(12924),	-- Heart On Your Sleeve
			ach(12919),	-- It Grew Ten Sizes That Day
			ach(12925),	-- In Tune With Your Heart
			ach(12946),	-- Kul Tiras Diplomat
			ach(12922),	-- Listen To Your Heart
			ach(12580),	-- Mission Accomplished: Kul Tiras
			ach(12603),	-- Mission Accomplished: Zandalar
			ach(12871),	-- Prepared for War
			ach(13044),	-- The Dark Essence of Achieving
			ach(13037),	-- Torcanata
		})),

		-- 8.1.0
		expansion(EXPANSION.BFA, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_0 } }, {
			ach(13318),	-- 100 Exalted Reputations
			ach(13415),	-- Heroic: Crucible of Storms
			ach(13432),	-- Mythic: Jadefire Masters
			ach(13447),	-- Mythic: Jadefire Masters
			ach(13444),	-- One Shot, One Kill
			ach(13446),	-- One Shot, One Kill
		})),

		-- 8.1.5
		expansion(EXPANSION.BFA, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_5 } }, {
			ach(13540),	-- Deaths from Battle for Wintergrasp
			ach(13195),	-- Rumble Club
		})),

		-- 8.2.0
		expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
			ach(13721),	-- Diligent Ally
			ach(13471),	-- Diversed Investments
			ach(13515),	-- Freedom Run
			ach(13838),	-- Level 100 - Mount Equipment Unlock Check
		})),

		-- 8.3.0
		expansion(EXPANSION.BFA, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_3_0 } }, {
			ach(14025),	-- <new achievement>
			ach(14116),	-- All Bridges Burned
			ach(14121),	-- Daring Defender
			ach(14113),	-- Imagine a Dark, Dark World
			ach(14122),	-- Long Trek Through Darkness
			ach(14088),	-- Orgrimmar - Pained
			ach(14090),	-- Orgrimmar - Dark Imagination
			ach(14092),	-- Orgrimmar - Burned Bridge
			ach(14099),	-- Orgrimmar - Daredevil
			ach(14100),	-- Orgrimmar - Long Night
			ach(14106),	-- Pained Expression
			ach(14083),	-- Stormwind - Pained
			ach(14084),	-- Stormwind - Dark Imagination
			ach(14085),	-- Stormwind - Burned Bridge
			ach(14086),	-- Stormwind - Daredevil
			ach(14087),	-- Stormwind - Long Night
			ach(13996),	-- The Dark Horde
			ach(13995),	-- Twilight over the White City
		})),
	}),
	expansion(EXPANSION.SL, {
		-- 9.0.1
		expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
			ach(14529),	-- <Hidden> Shadowlands Alt - Trigger Alt Progression
			ach(14300),	-- Ardenweald Achieved \\ [PH] Ardenweald Zone Achievement
			ach(14299),	-- Bastion Bested \\ [PH] Bastion Zone Achievement
			ach(14520),	-- Deathbringer
			ach(14517),	-- First Trial, First Try
			ach(14234),	-- Kyrian Campaign
			ach(14301),	-- Maldraxxus Mastered \\ [PH] Maldraxxus Zone Achievement
			ach(14279),	-- Necrolords Campaign
			ach(14282),	-- Night Fae Campaign
			ach(14378),	-- Progression Tracking - Block 1. Skoldus
			ach(14302),	-- Revendreth Resolved \\ [PH] Revendreth Zone Achievement
			ach(14756),	-- Stygian Sample
			ach(14657),	-- Stygian Stockpile
			ach(14757),	-- Stygian Supply
			ach(14518),	-- The Many Trials of Zo'Sorg
			ach(14484),	-- Torghast: Coldheart Interstitia: Layer 2
			ach(14485),	-- Torghast: Coldheart Interstitia: Layer 3
			ach(14486),	-- Torghast: Coldheart Interstitia: Layer 4
			ach(14487),	-- Torghast: Coldheart Interstitia: Layer 5
			ach(14584),	-- Torghast: Coldheart Interstitia: Layer 6
			ach(14585),	-- Torghast: Coldheart Interstitia: Layer 7
			ach(14586),	-- Torghast: Coldheart Interstitia: Layer 8
			ach(14587),	-- Torghast: Coldheart Interstitia: Layer 9
			ach(14474),	-- Torghast: Fracture Chambers: Layer 2
			ach(14475),	-- Torghast: Fracture Chambers: Layer 3
			ach(14476),	-- Torghast: Fracture Chambers: Layer 4
			ach(14477),	-- Torghast: Fracture Chambers: Layer 5
			ach(14576),	-- Torghast: Fracture Chambers: Layer 6
			ach(14577),	-- Torghast: Fracture Chambers: Layer 7
			ach(14578),	-- Torghast: Fracture Chambers: Layer 8
			ach(14579),	-- Torghast: Fracture Chambers: Layer 9
			ach(14489),	-- Torghast: Mort'regar: Layer 2
			ach(14490),	-- Torghast: Mort'regar: Layer 3
			ach(14491),	-- Torghast: Mort'regar: Layer 4
			ach(14492),	-- Torghast: Mort'regar: Layer 5
			ach(14588),	-- Torghast: Mort'regar: Layer 6
			ach(14589),	-- Torghast: Mort'regar: Layer 7
			ach(14590),	-- Torghast: Mort'regar: Layer 8
			ach(14591),	-- Torghast: Mort'regar: Layer 9
			ach(14465),	-- Torghast: Skoldus Hall: Layer 2
			ach(14464),	-- Torghast: Skoldus Hall: Layer 3
			ach(14466),	-- Torghast: Skoldus Hall: Layer 4
			ach(14467),	-- Torghast: Skoldus Hall: Layer 5
			ach(14572),	-- Torghast: Skoldus Hall: Layer 6
			ach(14573),	-- Torghast: Skoldus Hall: Layer 7
			ach(14574),	-- Torghast: Skoldus Hall: Layer 8
			ach(14575),	-- Torghast: Skoldus Hall: Layer 9
			ach(14479),	-- Torghast: The Soulforges: Layer 2
			ach(14480),	-- Torghast: The Soulforges: Layer 3
			ach(14481),	-- Torghast: The Soulforges: Layer 4
			ach(14482),	-- Torghast: The Soulforges: Layer 5
			ach(14580),	-- Torghast: The Soulforges: Layer 6
			ach(14581),	-- Torghast: The Soulforges: Layer 7
			ach(14582),	-- Torghast: The Soulforges: Layer 8
			ach(14583),	-- Torghast: The Soulforges: Layer 9
			ach(14494),	-- Torghast: The Upper Reaches: Layer 2
			ach(14495),	-- Torghast: The Upper Reaches: Layer 3
			ach(14496),	-- Torghast: The Upper Reaches: Layer 4
			ach(14497),	-- Torghast: The Upper Reaches: Layer 5
			ach(14592),	-- Torghast: The Upper Reaches: Layer 6
			ach(14593),	-- Torghast: The Upper Reaches: Layer 7
			ach(14594),	-- Torghast: The Upper Reaches: Layer 8
			ach(14595),	-- Torghast: The Upper Reaches: Layer 9
			ach(14604),	-- Torghast: Tracking - Completed Layer 9
			ach(14571),	-- Twisting Corridors: Layer 9
			ach(13997),	-- Venthyr Campaign
		})),

		-- 9.0.2
		expansion(EXPANSION.SL, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_2 } }, {
			ach(14838),	-- Champion of Connection
		})),

		-- 9.1.0
		expansion(EXPANSION.SL, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_0 } }, {
			ach(15074),	-- <Hidden> Razorwing Eggs Returned
		})),

		-- 9.1.5
		expansion(EXPANSION.SL, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_5 } }, {
			ach(15326),	-- [DNT] Rating Test Achievement
		})),

		-- 9.2.0
		expansion(EXPANSION.SL, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_2_0 } }, {
			ach(15219),	-- Automa
			ach(15557),	-- Murkastrasza
		})),
	}),
	expansion(EXPANSION.DF, {
		-- 10.0.0
		expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
			ach(15517),	-- Solo Shuffle rounds participated in
			ach(15516),	-- Solo Shuffle rounds won
			ach(15798),	-- Winding Slitherdrake
		})),

		-- 10.0.2
		expansion(EXPANSION.DF, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_2 } }, {
			ach(16794),	-- Dragon Isles Crafting Order Apprentice
			ach(16795),	-- Dragon Isles Crafting Order Journeyman
			ach(16800),	-- Dragon Isles Crafting Order Master
		})),

		-- 10.0.5
		expansion(EXPANSION.DF, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_5 } }, {
			ach(17316),	-- Dragon Isles Crafting Order Apprentice
			ach(17317),	-- Dragon Isles Crafting Order Journeyman
			ach(17318),	-- Dragon Isles Crafting Order Master
		})),

		-- 10.0.7
		expansion(EXPANSION.DF, patch(0,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_7 } }, {
			ach(17500),	-- Renowned Tribal Leatherworker
			ach(17501),	-- Renowned Mooncloth Tailor
			ach(17502),	-- Renowned Spellfire Tailor
			ach(17503),	-- Renowned Shadoweave Tailor
			ach(17322),	-- <DNT> Hearthfire Fellowship Rank 1
			ach(17323),	-- <DNT> Hearthfire Fellowship Rank 2
			ach(17324),	-- <DNT> Hearthfire Fellowship Rank 3
			ach(17325),	-- <DNT> Hearthfire Fellowship Rank 4
		})),

		-- 10.1.7
		expansion(EXPANSION.DF, patch(1,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_7 } }, {
			ach(6313),	-- [DNT] UTILITY: Promotion - China (Cenarion Hatchling)
			ach(9030),	-- Login Tracking Achievement [SERVER ONLY]
			ach(10705),	-- HS Achievement Fixup
			ach(11266),	-- Overwatch Spray Unlock
			ach(11295),	-- Movie Promotion Transmog Fixup
			ach(14958),	-- [DNT] Charity Pet 2021 - Bananas (account level)
			ach(14960),	-- [DNT] Charity Pet 2021 - Bananas (character level)
			ach(19028),	-- Lil' Frostwing
		})),

		-- 10.2.5
		expansion(EXPANSION.DF, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_5 } }, {
			ach(19696),	-- Hearthstone Anniversary Mail
		})),

		-- 10.2.7
		expansion(EXPANSION.DF, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_7 } }, {
			ach(40227),	-- Realm First! Mythic Garrosh
			ach(40226),	-- Realm First! Timerunner
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.0.0
		expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
			ach(40305),	-- Allied Races: Earthen (Hidden Character Achievement)
			ach(40306),	-- Allied Races: Earthen
			ach(40509),	-- Awakening The Machine: Wave 10
			ach(40586),	-- Awakening The Machine: Wave 20
			ach(40587),	-- Awakening The Machine: Wave 30
			ach(40588),	-- Awakening The Machine: Wave 40
			ach(40589),	-- Awakening The Machine: Wave 50
			ach(40102),	-- Dawn of a new Delve
			ach(40505),	-- Fate of the Kirin Tor
			ach(20512),	-- Herding Cats
			ach(40101),	-- Hitting one's Stride
			ach(18830),	-- Level 2
			ach(40619),	-- Mine Poppin'
			ach(40432),	-- Nemesis (Solo)
			ach(40510),	-- One Ping Only
			ach(40511),	-- Rare Within
			ach(40099),	-- That Extra Push Over the Cliff
			ach(40750),	-- Treasure Trove Keys obtained
			ach(40265),	-- [PH] The Silken Court Achievement
		})),

		-- 11.0.7
		expansion(EXPANSION.TWW, patch(0,07), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_7 } }, {
			ach(41219),	-- Explore Siren Isle
		})),

		-- 11.1.5
		expansion(EXPANSION.TWW, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_5 } }, {
			ach(41700),	-- Dastardly Duos Weekly Wins
			ach(15558),	-- Survey Bot (Added in 11.1.5.60008, removed in 11.1.5.60067)
		})),

		-- 11.1.7
		expansion(EXPANSION.TWW, patch(1,7), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_7 } }, {
			ach(42028),	-- Ashes to Ashes
		})),

		-- 11.2.7
		expansion(EXPANSION.TWW, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_11_2_7 } }, {
			ach(51753),	-- Azsuna Matata
			ach(61516),	-- Radiant Singer
		})),
	}),
	expansion(EXPANSION.MID, {
		-- 12.0.0
		expansion(EXPANSION.MID, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_12_0_0 } }, {
			ach(42575),	-- Elusive Foes: Antoran Wastes
			ach(42646),	-- Elusive Foes: Eredath
			ach(42579),	-- Elusive Foes: Highmountain
			ach(42591),	-- Elusive Foes: Krokuun
			ach(42640),	-- Elusive Foes: Stormheim
			ach(42650),	-- Elusive Foes: Suramar
			ach(42580),	-- Elusive Foes: Val'sharah
			ach(42560),	-- Explore Antoran Wastes
			ach(42535),	-- Explore Eredath
			ach(42528),	-- Explore Highmountain
			ach(42620),	-- Explore Krokuun
			ach(42608),	-- Explore Stormheim
			ach(42665),	-- Explore Suramar
			ach(42573),	-- Explore Val'sharah
			ach(42631),	-- Hidden Treasures: Antoran Wastes
			ach(42626),	-- Hidden Treasures: Eredath
			ach(42634),	-- Hidden Treasures: Highmountain
			ach(42588),	-- Hidden Treasures: Krokuun
			ach(42606),	-- Hidden Treasures: Stormheim
			ach(42577),	-- Hidden Treasures: Suramar
			ach(42668),	-- Hidden Treasures: Val'sharah
		})),
	}),
	-- #endif
}));
