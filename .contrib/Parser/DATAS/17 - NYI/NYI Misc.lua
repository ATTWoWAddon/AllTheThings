---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, filter(MISC, {
	expansion(EXPANSION.CLASSIC, {
		-- 1.x.x
		n(P1xx, {
			i(8502),	-- Bronze Lotterybox
			i(17968),	-- Charged Scale of Onyxia
			i(9023),	-- Codex of Shadow Protection III
			i(8503),	-- Heavy Bronze Lotterybox
			i(8505),	-- Heavy Iron Lotterybox
			i(8507),	-- Heavy Mithril Lotterybox
			i(20367),	-- Hunting Gear
			i(8504),	-- Iron Lotterybox
			i(5126, {	-- Knowledge: Defias Disguise
			spell(5169),	-- Defias Disguise
			}),
			i(5127, {	-- Knowledge: South Seas Pirate Disguise
				spell(5264),	-- South Seas Pirate Disguise
			}),
			i(5129, {	-- Knowledge: Dark Iron Dwarf Disguise
				spell(5268),	-- Dark Iron Dwarf Disguise
			}),
			i(5130, {	-- Knowledge: Dalaran Wizard Disguise
				spell(5267),	-- Dalaran Wizard Disguise
			}),
			i(5131, {	-- Knowledge: Stonesplinter Disguise
				spell(5265),	-- Stonesplinter Trogg Disguise
			}),
			i(5132, {	-- Knowledge: Syndicate Disguise
				spell(5266),	-- Syndicate Disguise
			}),
			i(8506),	-- Mithril Lotterybox
			i(19804),	-- Pale Ghoulfish
			i(3895),	-- TEST Legendary
			i(22316),	-- Test Relic
			i(994),		-- Tome of Ice Armor
			i(8802),	-- Tome of Arcane Intellect
			i(8868),	-- Tome of Conjure Water VI
		}),
	}),
	expansion(EXPANSION.TBC, {
		-- 2.4.0
		expansion(EXPANSION.TBC, patch(4,0), bubbleDownSelf({ ["timeline"] = { CREATED_2_4_0 } }, {
			i(34548),	-- Cache of the Shattered Sun
			i(34544),	-- Essence of the Immortals
			i(35728),	-- Greater Inscription of the Blade (arena realm only)
			i(35729),	-- Greater Inscription of the Knight (arena realm only)
			i(35730),	-- Greater Inscription of the Oracle (arena realm only)
			i(35731),	-- Greater Inscription of the Orb (arena realm only)
		})),

		-- 2.x.x
		n(P2xx, {
			i(31507),	-- Grimoire of Searing Pain
			i(36963),	-- Grimoire of Torment (Rank 8)
			i(31502),	-- Libram: Blessing of Might VIII
			i(31503),	-- Libram: Greater Blessing of Might III
			i(31500),	-- Tome of Arcane Missiles XI
			i(31496),	-- Tome of Fireball XIV
			i(31498),	-- Tome of Frostbolt XIV
		}),
	}),
	expansion(EXPANSION.WRATH, {
		-- 3.0.1
		expansion(EXPANSION.WRATH, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
			i(41596),	-- Dalaran Jewelcrafter's Token
		})),

		-- 3.0.2
		expansion(EXPANSION.WRATH, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
			i(43016),	-- Dalaran Cooking Award
		})),

		-- 3.1.0
		expansion(EXPANSION.WRATH, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_3_1_0 } }, {
			i(45705),	-- Argent Tournament Invitation
			i(45924),	-- Certificate of Appreciation
			i(44871),	-- Greater Inscription of the Axe
			i(44872),	-- Greater Inscription of the Crag
			i(44873),	-- Greater Inscription of the Pinnacle
			i(44874),	-- Greater Inscription of the Storm
		})),

		-- 3.3.3
		expansion(EXPANSION.WRATH, patch(3,3), bubbleDownSelf({ ["timeline"] = { CREATED_3_3_3 } }, {
			i(50329),	-- Icecrown-10 Normal Loot Token
		})),

		-- 3.x.x
		n(P3xx, {
			i(33565),	-- Uncommon Drop Certificate
			i(33564),	-- World Drop Certificate
			i(44125),	-- zzzOLDLesser Inscription of Template - PH
			i(44126),	-- zzzOLDGreater Inscription of Template - PH
		}),
	}),
	expansion(EXPANSION.CATA, {
		-- 4.0.1
		expansion(EXPANSION.CATA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_1 } }, {
			i(42975),	-- Ace of Lords
			i(42977),	-- Two of Lords
			i(42978),	-- Three of Lords
			i(42979),	-- Four of Lords
			i(42980),	-- Five of Lords
			i(42981),	-- Six of Lords
			i(42982),	-- Seven of Lords
			i(42983),	-- Eight of Lords
			i(42976),	-- Lords Deck
			i(62898),	-- Tol Barad Commendation
		})),

		-- 4.0.3
		expansion(EXPANSION.CATA, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_3 } }, {
			i(55217),	-- Aqua Transform
			i(43254),	-- Essence Crystal
			i(55216),	-- Fiery Transform
			i(55218),	-- Rocky Transform
			i(55219),	-- Vaporous Transform
			i(52446),	-- Illustrious Jewelcrafter's Token
		})),

		-- 4.3.0
		expansion(EXPANSION.CATA, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_4_3_0 } }, {
			i(78892),	-- Perfect Geode
		})),

		-- 4.x.x
		n(P4xx, {
			i(70104),	-- Unknown
		}),
	}),
	expansion(EXPANSION.MOP, {
		-- 5.0.1
		expansion(EXPANSION.MOP, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
			i(79907),	-- Spear of Xuen (Old Version)
		})),

		-- 5.1.0
		expansion(EXPANSION.MOP, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_1_0 } }, {
			i(92563),	-- The Eye of the Storm
		})),

		-- 5.2.0
		expansion(EXPANSION.MOP, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_2_0 } }, {
			i(96194),	-- Chest of the Crackling Vanquisher
			i(96195),	-- Chest of the Crackling Conqueror
			i(96196),	-- Chest of the Crackling Protector
			i(96227),	-- Gauntlets of the Crackling Vanquisher
			i(96228),	-- Gauntlets of the Crackling Conqueror
			i(96229),	-- Gauntlets of the Crackling Protector
			i(96251),	-- Helm of the Crackling Vanquisher
			i(96252),	-- Helm of the Crackling Conqueror
			i(96253),	-- Helm of the Crackling Protector
			i(96259),	-- Leggings of the Crackling Vanquisher
			i(96260),	-- Leggings of the Crackling Conqueror
			i(96261),	-- Leggings of the Crackling Protector
			i(96327),	-- Shoulders of the Crackling Vanquisher
			i(96328),	-- Shoulders of the Crackling Conqueror
			i(96329),	-- Shoulders of the Crackling Protector
			i(96938),	-- Chest of the Crackling Vanquisher
			i(96939),	-- Chest of the Crackling Conqueror
			i(96940),	-- Chest of the Crackling Protector
			i(96971),	-- Gauntlets of the Crackling Vanquisher
			i(96972),	-- Gauntlets of the Crackling Conqueror
			i(96973),	-- Gauntlets of the Crackling Protector
			i(96995),	-- Helm of the Crackling Vanquisher
			i(96996),	-- Helm of the Crackling Conqueror
			i(96997),	-- Helm of the Crackling Protector
			i(97003),	-- Leggings of the Crackling Vanquisher
			i(97004),	-- Leggings of the Crackling Conqueror
			i(97005),	-- Leggings of the Crackling Protector
			i(97071),	-- Shoulders of the Crackling Vanquisher
			i(97072),	-- Shoulders of the Crackling Conqueror
			i(97073),	-- Shoulders of the Crackling Protector
		})),

		-- 5.3.0
		expansion(EXPANSION.MOP, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_3_0 } }, {
			i(98001),	-- Saurok Collection
			i(98005),	-- Saurok Collection
		})),

		-- 5.4.0
		expansion(EXPANSION.MOP, patch(4,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_4_0 } }, {
			i(103535),	-- Bulging Bag of Charms (was planned for asia store)
		})),

		-- 5.x.x
		n(P5xx, {
			i(103975),	-- Elder Charm of Good Fortune
			i(103976),	-- Mogu Rune of Fate
			i(101537),	-- Timeless Coins
			i(82460),	-- Unknown
			i(82462),	-- Unknown
			i(82463),	-- Unknown
			i(90568),	-- Unknown
			i(90569),	-- Unknown
		}),
	}),
	expansion(EXPANSION.WOD, {
		-- 6.0.1
		expansion(EXPANSION.WOD, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
			i(115371),	-- [PLACEHOLDER TIER 3 ITEM]
			i(107459),	-- Black Iron Fragment
			i(108882),	-- Bloodmaul Blasting Charge
			i(105914),	-- Danger Detector Boots
			i(105915),	-- Danger Detector Harness
			i(116130),	-- Draenic Crystal Fragments
			i(111810),	-- Barracks, Level 1 - unused version (used version is 111956)
			i(100894),	-- Deathtoll's Reward
			i(100898),	-- Kull Bloodseeker's Reward
			i(107474),	-- PH_6 Engorged Innards
			i(108595),	-- Recall Stone
			i(100897),	-- Skel'tik the Baleful's Reward
			i(100949),	-- Thunderlord Cache Reward
		})),

		-- 6.1.0
		expansion(EXPANSION.WOD, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_6_1_0 } }, {
			i(122419),	-- Scouting Missive: Gorian Proving Grounds
			i(122420),	-- Scouting Missive: Gorian Proving Grounds
		})),

		-- 6.x.x
		n(P6xx, {
			i(120370),	-- Unknown
			i(120371),	-- Unknown
			i(124644),	-- Unknown
		}),
	}),
	expansion(EXPANSION.LEGION, {
		-- 7.0.3
		expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
			i(134824),	-- "Sir Pugsington" Costume
			i(132118),	-- Aggramar's Blessing
			i(129742),	-- Badge of Timewalking Justice
			i(137281),	-- Court of Farondis Vendor List
			i(137283),	-- Dreamweavers Vendor List
			i(134006),	-- Dwyer's Spare Caber
			i(132107),	-- Hidden Horde Cache Map
			i(137280),	-- Highmountain Tribes Vendor List
			i(130186),	-- Intern Items - BJI
			i(137279),	-- Nightfallen Vendor List
			i(134008),	-- Simple Rosary of Light
			i(137282),	-- Valarjar Vendor List
			i(139603, {	-- Vault Patroller's Warboots
				["bonusID"] = 1,
			}),
			i(137278),	-- Wardens Vendor List
		})),

		-- 7.2.0
		expansion(EXPANSION.LEGION, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_2_0 } }, {
			n(SEASON_RUTHLESS, {
				n(PVP_ELITE, {
					i(146483),	-- Ensemble: Elite Ruthless Gladiator's Dreadplate Armor
					i(146481),	-- Ensemble: Elite Ruthless Gladiator's Dragonhide Armor
					i(146479),	-- Ensemble: Elite Ruthless Gladiator's Chain Armor
					i(146497),	-- Ensemble: Elite Ruthless Gladiator's Silk Armor
					i(146495),	-- Ensemble: Elite Ruthless Gladiator's Scaled Armor
					i(146493),	-- Ensemble: Elite Ruthless Gladiator's Satin Armor
					i(146487),	-- Ensemble: Elite Ruthless Gladiator's Leather Armor
					i(146491),	-- Ensemble: Elite Ruthless Gladiator's Ringmail Armor
					i(146485),	-- Ensemble: Elite Ruthless Gladiator's Felweave Armor
					i(146489),	-- Ensemble: Elite Ruthless Gladiator's Plate Armor
				}),
			}),
			n(SEASON_CATACLYSMIC, {
				n(PVP_ELITE, {
					i(146463),	-- Ensemble: Elite Cataclysmic Gladiator's Dreadplate Armor
					i(146461),	-- Ensemble: Elite Cataclysmic Gladiator's Dragonhide Armor
					i(146459),	-- Ensemble: Elite Cataclysmic Gladiator's Chain Armor
					i(146477),	-- Ensemble: Elite Cataclysmic Gladiator's Silk Armor
					i(146475),	-- Ensemble: Elite Cataclysmic Gladiator's Scaled Armor
					i(146473),	-- Ensemble: Elite Cataclysmic Gladiator's Satin Armor
					i(146467),	-- Ensemble: Elite Cataclysmic Gladiator's Leather Armor
					i(146471),	-- Ensemble: Elite Cataclysmic Gladiator's Ringmail Armor
					i(146465),	-- Ensemble: Elite Cataclysmic Gladiator's Felweave Armor
					i(146469),	-- Ensemble: Elite Cataclysmic Gladiator's Plate Armor
				}),
			}),
			i(146801),	-- BUILDING CONTRIBUTION REWARD ITEM [NYI]
			i(146800),	-- BUILDING CONTRIBUTION REWARD ITEM [NYI]
			i(146799),	-- BUILDING CONTRIBUTION REWARD ITEM [NYI]
		})),

		-- 7.x.x
		n(P7xx, {
			i(132250),	-- Unknown
			i(136411),	-- Unknown
			i(136621),	-- Unknown
			i(137602),	-- Unknown
			i(140787),	-- Unknown
			i(140921),	-- Unknown
			i(147904),	-- Cage Key
		}),
	}),
	expansion(EXPANSION.BFA, {
		-- 8.0.1
		expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
			i(159734),	-- Add Keystone Affix: Fortified
			i(159730),	-- Add Keystone Affix: Tyrannical
			i(159732),	-- Add Keystone Affix: Bursting
			i(159739),	-- Add Keystone Affix: Sanguine
			i(159735),	-- Add Keystone Affix: Grievous
			i(159731),	-- Add Keystone Affix: Bolstering
			i(159738),	-- Add Keystone Affix: Raging
			i(159733),	-- Add Keystone Affix: Explosive
			i(159736),	-- Add Keystone Affix: Necrotic
			i(159737),	-- Add Keystone Affix: Quaking
			i(159742),	-- Add Keystone Affix: Volcanic
			i(164258),	-- Cache of Uldir Treasures
			i(164259),	-- Cache of Uldir Treasures
			i(164260),	-- Cache of Uldir Treasures
			i(156927),	-- Great Hall Recall
			i(158841),	-- High King's Pride
			i(151060),	-- Keystone Container
			i(162549),	-- Personal Anchor
			i(155010),	-- REUSE ME (DNT)
			i(155011),	-- REUSE ME (DNT)
			i(155012),	-- REUSE ME (DNT)
			i(166381),	-- Set Keystone Level: 10
			i(166380),	-- Set Keystone Level: 11
			i(166379),	-- Set Keystone Level: 12
			i(166378),	-- Set Keystone Level: 13
			i(166377),	-- Set Keystone Level: 14
			i(159694),	-- Set Keystone Level: 15
			i(159695),	-- Set Keystone Level: 16
			i(159696),	-- Set Keystone Level: 17
			i(159697),	-- Set Keystone Level: 18
			i(159698),	-- Set Keystone Level: 19
			i(159699),	-- Set Keystone Level: 20
			i(159700),	-- Set Keystone Level: 21
			i(159701),	-- Set Keystone Level: 22
			i(159702),	-- Set Keystone Level: 23
			i(159703),	-- Set Keystone Level: 24
			i(159704),	-- Set Keystone Level: 25
			i(159705),	-- Set Keystone Level: 26
			i(159706),	-- Set Keystone Level: 27
			i(159707),	-- Set Keystone Level: 28
			i(159708),	-- Set Keystone Level: 29
			i(159709),	-- Set Keystone Level: 30
			i(159683),	-- Set Keystone Map: Black Rook Hold
			i(159684),	-- Set Keystone Map: Cathedral of Eternal Night
			i(159685),	-- Set Keystone Map: Court of Stars
			i(159681),	-- Set Keystone Map: Darkheart Thicket
			i(159686),	-- Set Keystone Map: Eye of Azshara
			i(159687),	-- Set Keystone Map: Halls of Valor
			i(159688),	-- Set Keystone Map: Maw of Souls
			i(159689),	-- Set Keystone Map: Lower Karazhan
			i(159691),	-- Set Keystone Map: Seat of the Triumvirate
			i(159692),	-- Set Keystone Map: The Arcway
			i(159690),	-- Set Keystone Map: Upper Karazhan
			i(159693),	-- Set Keystone Map: Vault of the Wardens
			i(158782),	-- Warchief's Prideful
			i(158922),	-- Zany Zombiefied Raptor
		})),

		-- 8.1.0
		expansion(EXPANSION.BFA, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_0 } }, {
			i(165730),	-- Cache of Dazar'alor Treasures
			i(165731),	-- Cache of Dazar'alor Treasures
			i(165732),	-- Cache of Dazar'alor Treasures
			i(166680),	-- Echo of Elune
			i(165904),	-- Treasure Map of Havenswood
			i(165905),	-- Treasure Map of Jorundall
			i(165884),	-- Treasure Map of Molten Cay
			i(165906),	-- Treasure Map of Skittering Hollow
			i(165903),	-- Treasure Map of The Dread Chain
			i(165902),	-- Treasure Map of The Rotting Mire
			i(165901),	-- Treasure Map of Un'gol Ruins
			i(165900),	-- Treasure Map of Verdant Wilds
			i(165899),	-- Treasure Map of Whispering Reef
		})),

		-- 8.1.5
		expansion(EXPANSION.BFA, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_5 } }, {
			i(167026),	-- Cache of Crucible Treasures
		})),

		-- 8.2.0
		expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
			i(168272),	-- [PH] Amathet Cache
			i(170501),	-- [PH] Mogu Cache
			i(169154),	-- [PH] N'Zoth Cache
			i(168171),	-- [PH] Objective Reward
			i(172381),	-- [PH] Objective Reward
			i(168244),	-- [PH] Treasure Reward
			i(170145),	-- Cache of Palace Treasures
			i(164774),	-- Decrypted Message Module
			i(169081),	-- Holographic Combat Entity Data
			i(175246),	-- N'lyeth, Sliver of N'Zoth (Unused verison)
		})),

		-- 8.2.5
		expansion(EXPANSION.BFA, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_5 } }, {
			i(170488),	-- [DNT] Torn Journal Page #7
			i(170484),	-- [DNT] Torn Journal Page #14
			i(170487),	-- [DNT] Torn Journal Page #23
			i(171372),	-- Alterac Valley Mark of Honor
			i(169295),	-- Dormant Vision Stone
		})),

		-- 8.3.0
		expansion(EXPANSION.BFA, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_3_0 } }, {
			i(174455),	-- Add Keystone Affix: Awakened
			i(169293),	-- Coalescing Visions
			i(174838),	-- Collapsed Fusion Core
			i(171347),	-- Corrupted Bone Fragment
			i(174642),	-- Corrupted Ny'alotha Raid Item
			i(174529),	-- Crate of Coalescing Visions
			i(174970),	-- Easeflower
			i(174800),	-- HARDCODED - Corrupted Stats Placeholder
			i(175019),	-- Holy Statuette
			i(174045),	-- Orb of Dark Portents
			i(174049),	-- Orb of Darkest Madness
			i(174047),	-- Orb of Darkest Visions
			i(174048),	-- Orb of Madness
			i(174046),	-- Orb of Visions
			i(174971),	-- Ripe Juicycrunch
			i(174663),	-- Set Keystone Map: Operation: Mechagon - Junkyard
			i(174664),	-- Set Keystone Map: Operation: Mechagon - Workshop
			i(175150),	-- Self-Shaping Amber
			i(175018),	-- Shadowy Rune
			i(171334),	-- Void-Touched Cloth
			i(175017),	-- Volatile Ember
		})),

		-- 8.x.x
		n(P8xx, {
			i(167005),	-- Salvaged Key
			i(164765),	-- Unknown
			i(164769),	-- Unknown
			i(169192),	-- Unknown
		}),
	}),
	expansion(EXPANSION.SL, {
		-- 9.0.1
		expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
			i(178152),	-- <Broker Adjective> Return Beacon
			i(173063),	-- [DNT] REUSE ME
			i(173064),	-- [DNT] REUSE ME
			i(180483),	-- [PH] Legendary Dust
			i(179367),	-- [PH] Torghast Boss Loot
			i(180531),	-- [PH] Twisted Dust
			i(181158),	-- [UNUSED - FOCUS] Blueprint: Charm of Energizing
			i(183949),	-- Add Keystone Affix: Inspiring
			i(183803),	-- Add Keystone Affix: Prideful
			i(183948),	-- Add Keystone Affix: Spiteful
			i(183947),	-- Add Keystone Affix: Storming
			i(180734),	-- Alchemist's Journal
			i(181480),	-- Anima Container 2
			i(181481),	-- Anima Container 3
			i(181482),	-- Anima Container 3
			i(175028),	-- Animana Cores
			i(174781),	-- Anisykos's Favorite Hammer
			i(177036),	-- Aquatic Enticer
			i(181542),	-- Ardenweald Anima 3
			i(178081),	-- Ardenweald Epic Treasure
			i(178080),	-- Ardenweald Rare Treasure
			i(178079),	-- Ardenweald Uncommon Treasure
			i(178089),	-- Ardenweald Unique Loot
			i(175923),	-- Ardenwood
			i(178147),	-- Army of the Darkness Insignia
			i(175135),	-- Atticus's Spare Supplies
			i(175050),	-- Bag o' Conduits
			i(178084),	-- Bastion Epic Treasure
			i(178083),	-- Bastion Rare Treasure
			i(178082),	-- Bastion Uncommon Treasure
			i(178090),	-- Bastion Unique Loot
			i(180736),	-- Blacksmith's Journal
			i(175041),	-- Blinding Anima
			i(175148),	-- Blooming Vale
			i(181281),	-- Boss 10 Lure
			i(180007),	-- Brewfest Pretzel Bowl
			i(180829),	-- Cache of Anima Tolls
			i(183939),	-- Carefully Bottled Holy Water
			i(180875),	-- Carriage Cargo
			i(175046),	-- Cats Go Fast
			i(179928),	-- Cell Chain Pull
			i(181240),	-- Charm of Buff 7
			i(178720),	-- Chase the Sun
			i(174038),	-- Chime of Celerity
			i(182159),	-- Choofa Very Happy PH Reward
			i(177035),	-- Colored Liquid Set
			i(183125),	-- Combat Meditation: Power
			i(175031),	-- Combo Wrath
			i(172496),	-- Conduit Keystone
			i(175036),	-- Conservation
			i(175045),	-- Continuing Stampede
			i(178726),	-- Continuing Stampede
			i(176129),	-- Contract: Decoration 4
			i(176133),	-- Contract: Entertainment 4
			i(176137),	-- Contract: Refreshment 4
			i(176141),	-- Contract: Security 4
			i(178727),	-- Controlled Affinity
			i(180737),	-- Cook's Journal
			i(180621),	-- Court of Harvesters Tribute
			i(181514),	-- Court of Harvesters Tribute
			i(178566),	-- Cracked Hand Mirror
			i(183834),	-- Crate of Drust Archaeology Fragments
			i(183835),	-- Crate of Zandalari Archaeology Fragments
			i(175030),	-- Critical Swiftmend
			i(180463),	-- Crusty Scepter
			i(178139),	-- Cypher of Relocation
			i(178556),	-- Cypher of Relocation
			i(178721),	-- Dark Star
			i(178112),	-- Death Venom Stinger
			i(180811),	-- Deathfang's Favorite Skull
			i(183122),	-- Death's Cloak
			i(183695),	-- Decaying Dark Naaru Shard
			i(180308),	-- Determined Stone Visage
			i(181753),	-- Droman Aliothe Elated PH Reward
			i(181755),	-- Droman Aliothe Happy PH Reward
			i(181754),	-- Droman Aliothe Very Happy PH Reward
			i(180423),	-- Duchess Helveera
			i(176878),	-- Dulled Memento
			i(179377),	-- Elegant Diary Key
			i(170479),	-- Elevator Key: Level 5
			i(170480),	-- Elevator Key: Level 10
			i(170481),	-- Elevator Key: Level 15
			i(170482),	-- Elevator Key: Level 20
			i(180421),	-- Emberfall
			i(183841),	-- Emergency Flare
			i(181796),	-- Emergency Supplies Key
			i(180738),	-- Enchanter's Journal
			i(180739),	-- Engineer's Journal
			i(175043),	-- Entangling Vortex
			i(175034),	-- Ethereal Form
			i(178724),	-- Ethereal Shape
			i(182698),	-- Exotic Purple Pigment
			i(178564),	-- Eye of the Jailer:|CFFff2020 +1000 |R
			i(175243),	-- Faded Grimoire
			i(178588),	-- Fae Armaments
			i(180292),	-- Faerie Dust
			i(184041),	-- Festive Umbrella
			i(174493),	-- First Bell of Markos
			i(180740),	-- Fisherman's Journal
			i(177042),	-- Five-Chime Batzos
			i(180741),	-- Florist's Journal
			i(175156),	-- Focus Fire
			i(175033),	-- Focused Moonfire
			i(175027),	-- Fulfilling Meditation
			i(178966),	-- Gardener's Satchel
			i(177034),	-- Gem Chisel Kit
			i(180230),	-- Gemstone Chips
			i(168208),	-- Gleaming Chest
			i(168210),	-- Gleaming Chest: Azrafael
			i(168211),	-- Gleaming Chest: Beneficus
			i(168209),	-- Gleaming Chest: Olberic
			i(174746),	-- Golden Egg Shells
			i(180852),	-- Granule of Stygia
			i(183726),	-- Gratitude of the Liberated
			i(170053),	-- Grek'og's Tusk
			i(172038),	-- Grim Iron Shackles
			i(180128),	-- Harvester's Elite Bounty Purse
			i(175038),	-- Healthy Bear
			i(177281),	-- Heavy Sorrowscale
			i(178728),	-- High Winds
			i(175040),	-- Infused Bark
			i(179652),	-- Infused Ruby
			i(180743),	-- Jeweler's Journal
			i(181750),	-- Kleia and Pelagos Elated PH Reward
			i(181752),	-- Kleia and Pelagos Happy PH Reward
			i(181751),	-- Kleia and Pelagos Very Happy PH Reward
			i(178586),	-- Kyrian Armaments
			i(178967),	-- Large Gardener's Satchel
			i(182652),	-- Larion Tamer's Harness
			i(183964),	-- Lavish Anima Items
			i(183808),	-- Leashed Construct
			i(180744),	-- Leatherworker's Journal
			i(180278),	-- Legendary Powers
			i(175025),	-- Lingering Moonfire
			i(169823),	-- Lordaeron Coin
			i(175044),	-- Louder Stampeding Roar
			i(180054),	-- Lunar Dumplings
			i(180056),	-- Lunar Rice Cake
			i(179862),	-- Luxurious Feather
			i(178587),	-- Maldraxxian Armaments
			i(175963),	-- Maldraxxus Epic Treasure
			i(175961),	-- Maldraxxus Rare Treasure
			i(175958),	-- Maldraxxus Uncommon Treasure
			i(178088),	-- Maldraxxus Unique Loot
			i(183809),	-- Margrave Krexus Tribute
			i(175111),	-- Marrow Larva
			i(178725),	-- Master of Shapes
			i(174745),	-- Memory Glass Shard
			i(175147),	-- Meteoric Vale
			i(178765),	-- Mindless Abomination's Chain
			i(180745),	-- Miner's Journal
			i(183206),	-- Miniature Seat of the Primus Replica
			i(183523),	-- Miniaturized Phylactery
			i(175752),	-- Mirror Fragment
			i(177764),	-- Mirror Fragment
			i(179664),	-- Mirror of Kalisthene
			i(171298),	-- Modified Crafting Reagent 06
			i(171299),	-- Modified Crafting Reagent 07
			i(171300),	-- Modified Crafting Reagent 08
			i(173941),	-- Monstrous Skull
			i(183734),	-- Mysteriously Thrumming Orb
			i(180399),	-- New Player Experience Box
			i(180293),	-- Night Fae Insignia
			i(177039),	-- Olive-Stuffed Barbouni
			i(183873),	-- Otherworldy Tea Set
			i(183190),	-- Oublion Cipher
			i(183825),	-- Oversized Monocle
			i(175042),	-- Path to Enlightenment
			i(175035),	-- Patience is a Virtue
			i(181444),	-- Perk 24
			i(181445),	-- Perk 25
			i(181446),	-- Perk 26
			i(181447),	-- Perk 27
			i(181448),	-- Perk 28
			i(181449),	-- Perk 29
			i(181451),	-- Perk 30
			i(175145),	-- Personal Growth
			i(178723),	-- Personal Growth
			i(175764),	-- PH Cloak B
			i(176394),	-- PH Critical
			i(175964),	-- PH Frequent
			i(182124),	-- PH Rare Item
			i(181261),	-- PH Slime
			i(183164),	-- PH Treasure Reward
			i(175956),	-- PH Unusual
			i(180798),	-- PH - Kyrian IOU
			i(179304),	-- Pile of Muck
			i(178677),	-- Prince Renathal
			i(175047),	-- Protective Rebirth
			i(175144),	-- Purest Healing
			i(178560),	-- Purity Contribution Progress
			i(176442),	-- Ratwhisker Brew
			i(175032),	-- Reactive Regrowth
			i(175051),	-- Reactive Regrowth
			i(178078),	-- Reborn Spirit Cache
			i(175146),	-- Recurring Vale
			i(182701),	-- Refined Blue Pigment
			i(182700),	-- Refined Green Pigment
			i(182699),	-- Refined Red Pigment
			i(175039),	-- Reinforced Bark
			i(183821),	-- Remornia
			i(183872),	-- Residual Sorrow
			i(171265),	-- REUSE ME
			i(178087),	-- Revendreth Epic Treasure
			i(178086),	-- Revendreth Rare Treasure
			i(178085),	-- Revendreth Uncommon Treasure
			i(178091),	-- Revendreth Unique Loot
			i(180354),	-- Ripped Stuffing
			i(175048),	-- Root Structure
			i(176093),	-- RSVP: Alexandros Mograine
			i(176058),	-- RSVP: Baroness Vashj
			i(176094),	-- RSVP: Honor 6
			i(176090),	-- RSVP: Lady Moonberry
			i(176092),	-- RSVP: Mikanikos
			i(176091),	-- RSVP: The Countess
			i(178687),	-- RSVP: VIP 17
			i(178688),	-- RSVP: VIP 18
			i(178689),	-- RSVP: VIP 19
			i(178690),	-- RSVP: VIP 20
			i(179303),	-- Rusty Sword
			i(180742),	-- Scribe's Journal
			i(174495),	-- Second Bell of Markos
			i(183046),	-- Serrated Inking Spines
			i(181855),	-- Set Keystone Map: De Other Side
			i(181852),	-- Set Keystone Map: Halls of Atonement
			i(181851),	-- Set Keystone Map: Mists of Tirna Scithe
			i(181850),	-- Set Keystone Map: Plaguefall
			i(181856),	-- Set Keystone Map: Sanguine Depths
			i(181853),	-- Set Keystone Map: Spires of Ascension
			i(181849),	-- Set Keystone Map: The Necrotic Wake
			i(181854),	-- Set Keystone Map: Theater of Pain
			i(176928),	-- Shadowlands Skinning Knife
			i(179919),	-- Shadowy Rabbit's Foot
			i(181746),	-- Sika Elated PH Reward
			i(181748),	-- Sika Happy PH Reward
			i(181747),	-- Sika Very Happy PH Reward
			i(172965),	-- Sinstone Fragments
			i(180746),	-- Skinner's Journal
			i(178965),	-- Small Gardener's Satchel
			i(172090),	-- Sorrowscale Fragment
			i(171948),	-- Soul Ash
			i(178045),	-- Soul Prism
			i(181371),	-- Spare Head
			i(175029),	-- Spreading Vale
			i(173061),	-- Stabilizing Powder
			i(180011),	-- Stale Brewfest Pretzel
			i(178719),	-- Star Shower
			i(178722),	-- Steel Leaves
			i(181167),	-- Steward Service Improvement: Harmonic Convergence
			i(182164),	-- Steward Service: Reagent Deposit
			i(183428),	-- Stitched Satchel of Aspirant Goods
			i(183426),	-- Stitched Satchel of Fae Goods
			i(183424),	-- Stitched Satchel of Maldraxxi Goods
			i(183429),	-- Stitched Satchel of Venthyr Goods
			i(181773),	-- Stonehead Happy PH Reward
			i(181772),	-- Stonehead Very Happy PH Reward
			i(172459),	-- Storied Legion Emblem
			i(180291),	-- Stranglevine Seed
			i(181766),	-- Strike with Clarity
			i(174942),	-- Stygia
			i(183131),	-- Stygic Grapnel
			i(177041),	-- Sunwarmed Xyfias
			i(175037),	-- Symbiotic Growth
			i(180747),	-- Tailor's Journal
			i(178597),	-- TBD Maldraxxus Supplies
			i(176081),	-- Temel's Party Planning Book
			i(176804),	-- Temp
			i(178969),	-- Test Container
			i(180217),	-- The Bad Container
			i(180422),	-- The Banewood Road
			i(180950),	-- The Maw - Pet Cosmetic - NYI
			i(180951),	-- The Maw - POI Unlock - NYI
			i(175143),	-- Thicker Bark
			i(174496),	-- Third Bell of Markos
			i(180600),	-- Thistle Tea
			i(179382),	-- Tiny, Wet Scroll
			i(180695),	-- Tome of Spiritual Knowledge
			i(174489),	-- Treated Animacone
			i(178718),	-- Trinary Efflux
			i(183965),	-- Uncommon Anima Items
			i(183688),	-- Veiled Crystal
			i(178589),	-- Venthyr Armaments
			i(180211),	-- Venthyr Eye
			i(180216),	-- Venthyr Heart
			i(180213),	-- Venthyr Nail
			i(180215),	-- Venthyr Rib
			i(180212),	-- Venthyr Scabbard
			i(180210),	-- Venthyr Tooth
			i(175155),	-- Virtuous Dirge
			i(175026),	-- Virtuous Toll
			i(180006),	-- Warm Brewfest Pretzel
			i(178968),	-- Weekly Gardener's Satchel
			i(179306),	-- Wingtip Warmer
			i(177708),	-- Writ of Tribute
		})),

		-- 9.0.2
		expansion(EXPANSION.SL, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_2 } }, {
			i(178659),	-- Abominable Backup
			i(181739),	-- Bag of Soul Ash
			i(184482),	-- Blueprint: Phial of Serenity
			i(184484),	-- Blueprint: Ring of Warding
			i(184483),	-- Blueprint: Vial of Lichfrost
			i(184663),	-- Building: Guardhouse
			i(184575),	-- Byron Test Happy Fun Rock
			i(184316),	-- Cache of Nathrian Treasures
			i(184317),	-- Cache of Nathrian Treasures
			i(184762),	-- Fragmented Sorrow
			i(184684),	-- Grimoire of Knowledge
			i(184685),	-- Grimoire of Knowledge
			i(184686),	-- Grimoire of Knowledge
			i(184687),	-- Grimoire of Knowledge
			i(184688),	-- Grimoire of Knowledge
			i(184608),	-- Korrath's Grimoire: Aleketh
			i(184609),	-- Korrath's Grimoire: Belidir
			i(184610),	-- Korrath's Grimoire: Gyadrek
			i(184649),	-- Mawrat Cannon
			i(184649),	-- Mawrat Cannon
			i(184612),	-- Mawsworn Orders
			i(184206),	-- Moth-Eaten Covenant Cloak
			i(181868),	-- Murder Vacation
			i(181366),	-- Necrostatic Charge
			i(173929),	-- Perforated Skull
			i(184153),	-- Polymorphic Polyhedron
			i(184761),	-- Purified Misery
			i(184760),	-- Quiescent Orb
			i(184120),	-- Spare Brain
			i(184121),	-- Spare Eye
			i(184122),	-- Spare Foot
			i(184119),	-- Spare Heart
			i(184124),	-- Spare Stomach
			i(184611),	-- Tormentor's Notes
			i(184607),	-- Words of the Warden
		})),

		-- 9.0.5
		expansion(EXPANSION.SL, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_5 } }, {
			i(185472),	-- Heritage of the Shu'halo
			i(185717),	-- Slumbering Spirit
			i(186099),	-- Spatial Realignment Apparatus
			i(185764),	-- Tome of Town Portal
		})),

		-- 9.1.0
		expansion(EXPANSION.SL, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_0 } }, {
			i(187524),	-- Add Keystone Affix: Tormented
			i(186402),	-- Armament Ehancement Matrix
			i(187120),	-- Blood Healing Shard 1 - Rank 5
			i(187571),	-- Brokers' Mining Mote of Potentiation
			i(187570),	-- Brokers' Skinning Mote of Potentiation
			i(173790),	-- Bunch of Berries
			i(186529),	-- Cache of Sanctum Treasures
			i(186530),	-- Cache of Sanctum Treasures
			i(186520),	-- Chest of Playtest Equipment
			i(186519),	-- Compressed Anima Bubble
			i(187544),	-- Consumed Weapon Essence
			i(187545),	-- Consumed Weapon Essence
			i(187546),	-- Consumed Weapon Essence
			i(187547),	-- Consumed Weapon Essence
			i(187548),	-- Consumed Weapon Essence
			i(187123),	-- Empowerment Bauble
			i(186971),	-- Feeder's Hand
			i(187151),	-- Field Recovery: Partial Conduit Index
			i(186719),	-- Field Recovery: Soulborn Socket Research
			i(186399),	-- Fragmented Vault Seal
			i(186203),	-- Glowing Devourer Stomach
			i(186396),	-- Intact Mauler Ridge
			i(186681),	-- Intentionally Scattered Page
			i(186394),	-- Item Ehancement Matrix
			i(186443),	-- Item Enhancement Kit
			i(186389),	-- Jailer's Stygian Badge
			i(184823),	-- Junk Mail
			i(184824),	-- Junk Mail
			i(184825),	-- Junk Mail
			i(187434),	-- Lightseed Sapling
			i(186420),	-- Lightweight Item Enhancement Kit
			i(187432),	-- Magifocus Heartwood
			i(186773),	-- NAK Test Gem Item
			i(186198),	-- Ordinary Seal
			i(187345),	-- Ornate Offering Box
			i(187112),	-- Packaged Soul Ash
			i(187149),	-- Partial Conduit Index
			i(184826),	-- Random Package Ammo
			i(186408),	-- Refracting Soul Stone
			i(186397),	-- Reinforced Item Ehancement Matrix
			i(186441),	-- Reinforced Item Enhancement Kit
			i(186521),	-- Renown For Free
			i(186715),	-- Research Report: Improved Alloys
			i(187137),	-- Research Report: Relic Finding Techniques
			i(186720),	-- Rift Gate Attenuator
			i(186197),	-- Seal of Death's Unity
			i(186585),	-- Shard of Domination - Grim Harvester - Rank 1
			i(186586),	-- Shard of Domination - Grim Harvester - Rank 2
			i(186587),	-- Shard of Domination - Grim Harvester - Rank 3
			i(186588),	-- Shard of Domination - Grim Harvester - Rank 4
			i(186589),	-- Shard of Domination - Grim Harvester - Rank 5
			i(186592),	-- Shard of Domination - Sanguine Rage - Rank 1
			i(186594),	-- Shard of Domination - Sanguine Rage - Rank 2
			i(186595),	-- Shard of Domination - Sanguine Rage - Rank 3
			i(186596),	-- Shard of Domination - Sanguine Rage - Rank 4
			i(186597),	-- Shard of Domination - Sanguine Rage - Rank 5
			i(186579),	-- Shard of Domination - Unbound Pestilence - Rank 1
			i(186581),	-- Shard of Domination - Unbound Pestilence - Rank 2
			i(186582),	-- Shard of Domination - Unbound Pestilence - Rank 3
			i(186583),	-- Shard of Domination - Unbound Pestilence - Rank 4
			i(186584),	-- Shard of Domination - Unbound Pestilence - Rank 5
			i(185975),	-- Soulborn Socket Matrix
			i(186400),	-- Soulborn Socket Research
			i(185948),	-- Spectral Javelin
			i(186390),	-- Spongy Devourer Gland
			i(186395),	-- Sturdy Korthian Bones
			i(186401),	-- Stygian Steel Nugget
			i(186412),	-- Stygian Steel Setting
			i(187526),	-- Suspicious List
			i(187116),	-- Target Dummy
			i(186972),	-- Teleporter Repair Kit
			i(184844),	-- Test Item
			i(186525),	-- The Mad Duke's Tea
			i(187917),	-- The Mad Duke's Tea
			i(186526),	-- The Mad Duke's Tea of Haste
			i(186527),	-- The Mad Duke's Tea of Precision
			i(186528),	-- The Mad Duke's Tea of Versatility
			i(187515),	-- Theotar's Bottomless Teapot
			i(186043),	-- Torghast Portal Manipulator
			i(186658),	-- Ven'ari's Scavenged Supplies
			i(187433),	-- Windcrystal Chimes
			i(187921),	-- [PH] Core Currency
		})),

		-- 9.1.5
		expansion(EXPANSION.SL, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_5 } }, {
			i(189534),	-- Add Keystone Affix: Infernal
			i(187610),	-- Court of Farondis Insignia
			i(188168),	-- Kyrian Traveler's Anima Cache
			i(189524),	-- Set Keystone Level: 31
			i(189525),	-- Set Keystone Level: 32
			i(189526),	-- Set Keystone Level: 33
			i(189527),	-- Set Keystone Level: 34
			i(189528),	-- Set Keystone Level: 35
		})),

		-- 9.2.0
		expansion(EXPANSION.SL, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_2_0 } }, {
			i(189452),	-- 9.2 Mount Crafting Bag of Goodies
			i(189428),	-- 9.2 Pet Battle Playtest Bag of Goodies
			i(190938),	-- Add Keystone Affix: Encrypted
			i(187152),	-- Automa Key
			i(185974),	-- Bahmeht Chain Link
			i(190654),	-- Cache of Sepulcher Treasures
			i(190387),	-- Conduits For Free
			i(188796),	-- Cypher Test Item
			i(191022),	-- Eternal Curio
			i(190823),	-- Firim's Mysterious Cache
			i(187920),	-- Flipper Fish
			i(188951),	-- Key
			i(188949),	-- Mysterious Object
			i(188950),	-- Mysterious Object
			i(190383),	-- Progenitor Essentia Lattice
			i(189546),	-- Set Keystone Map: Tazavesh: So'leah's Gambit
			i(189545),	-- Set Keystone Map: Tazavesh: Streets of Wonder
			i(189573),	-- Tame Prime: Garudeon
			i(189572),	-- Tame Prime: Hadeon the Stonebreaker
			i(189561),	-- Tame Prime: Orixal
			--- Spheroids ---
			i(190665),	-- [PH] Epic 1 Fluidic Spheroid
			i(190666),	-- [PH] Epic 2 Fluidic Spheroid
			i(190667),	-- [PH] Epic 3 Fluidic Spheroid
			i(190668),	-- [PH] Epic 4 Fluidic Spheroid
			i(190662),	-- [PH] Rare 6 Fluidic Spheroid
			i(190663),	-- [PH] Rare 7 Fluidic Spheroid
			i(190664),	-- [PH] Rare 8 Fluidic Spheroid
			i(189736),	-- Absorptialic Fluidic Spheroid
			i(189740),	-- Alacrialic Fluidic Spheroid
			i(189748),	-- Constialic Fluidic Spheroid
			i(189577),	-- Deflectialic Fluidic Spheroid
			i(189757),	-- Efficialic Fluidic Spheroid
			i(189739),	-- Extractialic Fluidic Spheroid
			i(189749),	-- Flexialic Fluidic Spheroid
			i(189743),	-- Focialic Fluidic Spheroid
			i(189755),	-- Fortialic Fluidic Spheroid
			i(189742),	-- Healialic Fluidic Spheroid
			i(189737),	-- Obscurialic Fluidic Spheroid
			i(189741),	-- Osmosialic Fluidic Spheroid
			i(189730),	-- Perceptialic Crystallic Spheroid
			i(189738),	-- Perceptialic Fluidic Spheroid
			i(189731),	-- Potentialic Crystallic Spheroid
			i(189744),	-- Potentialic Fluidic Spheroid
			i(189758),	-- Reflectialic Fluidic Spheroid
			i(189745),	-- Relialic Fluidic Spheroid
			i(189746),	-- Rigialic Fluidic Spheroid
			i(189759),	-- Robustialic Fluidic Spheroid
			i(189756),	-- Toxicialic Fluidic Spheroid
			i(189747),	-- Velocialic Fluidic Spheroid
		})),

		-- 9.2.5
		expansion(EXPANSION.SL, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_9_2_5 } }, {
			i(191217),	-- [Daon Test]Beast Battle-Training Stone
			i(191219),	-- [Daon Test]Immaculate Elemental Battle-Stone
			i(191200),	-- [Daon Test]Ultimate Battle-Training Stone
			i(193263),	-- Add Keystone Affix: Shrouded
			i(193265),	-- Set Keystone Map: Grimrail Depot
			i(193264),	-- Set Keystone Map: Iron Docks
			i(197802),	-- zzDog Bone (DNT - Reward PH)
		})),

		-- 9.2.7
		expansion(EXPANSION.SL, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_9_2_7 } }, {
			i(200655),	-- Set Keystone Level: 36
			i(200656),	-- Set Keystone Level: 37
			i(200657),	-- Set Keystone Level: 38
			i(200658),	-- Set Keystone Level: 39
			i(200659),	-- Set Keystone Level: 40
		})),

		-- 9.x.x
		n(P9xx, {
			i(173774),	-- Wilderbew Special
			i(173790),	-- Bunch of Berries
		}),
	}),
	expansion(EXPANSION.DF, {
		-- 10.0.0
		expansion(EXPANSION.DF, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
			i(194719),	-- [DEPRECATED]Illusionary Coin
			i(192600),	-- [DNT][PH] Meat
			i(194110),	-- [PH] Dragon Rider's Honor
			i(193682),	-- [PH] Plains Feather
			i(191063),	-- 10 Food/Drink Template - Alcohol - Potent
			i(191064),	-- 10 Food/Drink Template - Alcohol - Strong
			i(191062),	-- 10 Food/Drink Template - Alcohol - Weak
			i(193702),	-- 10.0 Dungeon - Optional Reagent
			i(193737),	-- 10.0 Dungeon - Optional Reagent
			i(193749),	-- 10.0 Dungeon - Optional Reagent
			i(191056),	-- 10.0 Food/Drink Template - Both Health and Mana - Level 70 - Required Level 65
			i(191052),	-- 10.0 Food/Drink Template - Drink Only - Level 65 - Required Level 60
			i(191053),	-- 10.0 Food/Drink Template - Drink Only - Level 70 - Required Level 65
			i(191050),	-- 10.0 Food/Drink Template - Food Only - Level 65 - Required Level 60
			i(191051),	-- 10.0 Food/Drink Template - Food Only - Level 70 - Required Level 65
			i(200282),	-- A Steamy Romance Novel: The Lusty Draconian Mage
			i(194442),	-- Activity Map: Apex Canopy
			i(201834),	-- Add Keystone Affix: Thundering
			i(191667),	-- Aged Key
			i(194028),	-- Ancient Parchment: Bottom Half
			i(194027),	-- Ancient Parchment: Top Half
			i(193798),	-- Ancient Titan Alloy
			i(194873),	-- Apprentice's Fluffed Quill
			i(200825),	-- Assorted Debris
			i(191192),	-- Assorted Parts
			i(198141),	-- Astral Essence
			i(192127),	-- Basilisk Eggs
			i(192560),	-- Bossy Storm Stuff
			i(192078),	-- Bottled Putrescence
			i(199690),	-- BWU Test Profession Accessory
			i(200950),	-- Consortium Packaging String
			i(191058),	-- Dilapidated Parchment: Bottom Half
			i(191059),	-- Dilapidated Parchment: Top Half
			i(200592),	-- Dirty Old Satchel
			i(191876),	-- DNT - Stonename Razorstone
			i(191877),	-- DNT - Stonename Razorstone
			i(191878),	-- DNT - Stonename Weightstone
			i(191879),	-- DNT - Stonename Weightstone
			i(191880),	-- DNT - Stonename Whetstone
			i(191881),	-- DNT - Stonename Whetstone
			i(191253),	-- DNT - TBD Placeholder - Optional Reagent
			i(200262),	-- Do-It-Yourself Part Building Kit
			i(191287),	-- Dragonscale Expedition Crate
			i(191203),	-- Dragonscale Expedition Supplies
			i(194678),	-- Elemental Crystal
			i(194021),	-- Emblazoned Parchment: Bottom Half
			i(194022),	-- Emblazoned Parchment: Top Half
			i(191296),	-- Enchanted Lockbox
			i(193659),	-- Ever-Decaying Spore
			i(198723),	-- Expedition Binoculars (NYI)
			i(192476),	-- Expedition Bullwhip
			i(191552),	-- Expedition Metal Detector
			i(198724),	-- Expedition Telescope (NYI)
			i(199185),	-- Fanciful Strings
			i(195460),	-- Fermented Musken Milk
			i(198674),	-- Filled Life Pools Vial
			i(195458),	-- Forager's Stew
			i(193774),	-- Furyforged Plating
			i(198479),	-- Gale Rider
			i(200607),	-- Half-Eaten Banana
			i(199343),	-- Immaculate Sac of Swog Treasures
			i(199187),	-- Impossible Sheet Music
			i(191244),	-- I.P.F. Mark 15
			i(196182),	-- Journal Entry
			i(198840),	-- Kalecite Cluster
			i(200935),	-- Large Egg Shell
			i(190233),	-- Maruuk Centaur Supplies
			i(194677),	-- Marvelous Mood Ring
			i(200588),	-- Meaty Stem
			i(194682),	-- Mother's Gift
			i(191193),	-- Mysteriously Charged Core
			i(186159),	-- Mythic Keystone
			i(187637),	-- Navarro's Backpack
			i(200948),	-- Obsidian Hunting Hook
			i(191032),	-- Oily Fat
			i(200844),	-- Overly Bent Bow
			i(191787),	-- Partially Digested Hand
			i(190318),	-- Perception!
			i(198653),	-- PH Profession Drop
			i(190340),	-- Plainshunter's Supplies
			i(201757),	-- Plundered Supplies
			i(200121),	-- Potion of Beginner's Luck
			i(194718),	-- Premium Salamander Feed
			i(200606),	-- Previously Owned Map
			i(201361),	-- Primal Inspiration
			i(194750),	-- Professional Equipment
			i(201821),	-- Professor Instructaur's Brain
			i(198519),	-- Professor Instructaur's Top Secret Guide to Alchemy
			i(198518),	-- Professor Instructaur's Top Secret Guide to Blacksmithing
			i(198520),	-- Professor Instructaur's Top Secret Guide to Enchanting
			i(198521),	-- Professor Instructaur's Top Secret Guide to Engineering
			i(198522),	-- Professor Instructaur's Top Secret Guide to Herbalism
			i(198523),	-- Professor Instructaur's Top Secret Guide to Inscription
			i(198524),	-- Professor Instructaur's Top Secret Guide to Jewelcrafting
			i(198525),	-- Professor Instructaur's Top Secret Guide to Leatherworking
			i(198526),	-- Professor Instructaur's Top Secret Guide to Mining
			i(198527),	-- Professor Instructaur's Top Secret Guide to Skinning
			i(198528),	-- Professor Instructaur's Top Secret Guide to Tailoring
			i(193209),	-- Quality Bone
			i(191194),	-- Radiant Metallic Threading
			i(191856),	-- Reinforced Hooked Line
			i(191252),	-- Reinforced Plating+
			i(191874),	-- Reinforced Plating++
			i(191875),	-- Reinforced Plating+++
			i(190319),	-- Resourceful!
			i(191861),	-- Rocdrop Carapace
			i(191864),	-- Rocdrop Pudgepart
			i(194025),	-- Runebound Parchment: Bottom Half
			i(194024),	-- Runebound Parchment: Top Half
			i(194075),	-- Sacrilegious Spear
			i(199685),	-- Scribbled Drawings of Explosions
			i(191849),	-- Serevite Angle Iron
			i(201344),	-- Set Keystone Map: Algeth'ar Academy
			i(201331),	-- Set Keystone Map: Auchindoun
			i(201332),	-- Set Keystone Map: Bloodmaul Slag Mines
			i(201346),	-- Set Keystone Map: Brackenhide Hollow
			i(201336),	-- Set Keystone Map: Gate of the Setting Sun
			i(201345),	-- Set Keystone Map: Halls of Infusion
			i(201339),	-- Set Keystone Map: Mogu'shan Palace
			i(201349),	-- Set Keystone Map: Neltharus
			i(201350),	-- Set Keystone Map: Ruby Life Pools
			i(201341),	-- Set Keystone Map: Scarlet Halls
			i(201342),	-- Set Keystone Map: Scarlet Monastery
			i(201340),	-- Set Keystone Map: Scholomance
			i(201330),	-- Set Keystone Map: Shadowmoon Burial Grounds
			i(201337),	-- Set Keystone Map: Shado-Pan Monastery
			i(201338),	-- Set Keystone Map: Siege of Niuzao Temple
			i(201333),	-- Set Keystone Map: Skyreach
			i(201335),	-- Set Keystone Map: Stormstout Brewery
			i(201334),	-- Set Keystone Map: Temple of the Jade Serpent
			i(201347),	-- Set Keystone Map: The Azure Vault
			i(201329),	-- Set Keystone Map: The Everbloom
			i(201348),	-- Set Keystone Map: The Nokhud Offensive
			i(201351),	-- Set Keystone Map: Uldaman: Legacy of Tyr
			i(201328),	-- Set Keystone Map: Upper Blackrock Spire
			i(199927),	-- Sheet Music: The Lazy Turnip
			i(191412),	-- Small Expedition Pick
			i(191175),	-- Snail Food
			i(190332),	-- Sparking Catalyst
			i(199184),	-- Spellbound Bone Pipes
			i(194686),	-- Spicy Musken Drummies
			i(194828),	-- Stacked Deck of Darkmoon Mysteries
			i(195465),	-- Stormwing Egg Breakfast
			i(199074),	-- Studies of Arcane Magic
			i(191413),	-- Sturdy Expedition Pick
			i(192130),	-- Sundered Flame Weapon Mold
			i(195464),	-- Sweetened Broadhoof Milk
			i(198842),	-- Tallstrider Feather
			i(187617),	-- Tempered Djaradin Steel
			i(190653),	-- Test Finishing Reagent without Quality 01 (DNT)
			i(190648),	-- Test Optional Reagent 01 with Quality 03 (DNT)
			i(191087),	-- Treasure Map: Ohn'ahran Plains
			i(194029),	-- Treasure Map: Thaldraszus
			i(194026),	-- Treasure Map: The Azure Span
			i(194023),	-- Treasure Map: The Waking Shores
			i(193640),	-- Unstable Power Stone
			i(200951),	-- Valdrakken Critter Snacks
			i(200870),	-- Vorquin Essence
			i(198733),	-- Wayfinderr's Compass (NYI)
			i(191426),	-- Whelmed Duckling
			i(191185),	-- Worn Parchment
			i(187621),	-- Writ of Construction
			i(187523),	-- Your Reward [DNT]
			i(191045),	-- Yu's Bloodied Journal Entry
			i(199186),	-- zzOldBewitched Wood
			i(193361),	-- zzOldIncomplete Hunting Necklace
			i(199110),	-- zzOldMechanical Maestro Duck
		})),

		-- 10.0.2
		expansion(EXPANSION.DF, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_2 } }, {
			i(201252),	-- 10.0 Bronze PvP Chest (DNT)
			i(193057),	-- 10.0 Placeholder Enchanting Crystal
			i(193067),	-- Acadia's Tools [DNT/Unused]
			i(200964),	-- Alliance Dueling Flag
			i(192604),	-- Ancient Lantern
			i(192684),	-- Ancient War Tusk
			i(201175),	-- Arakkoa Ritual Feather
			i(193448),	-- Arcane Cell
			i(201823),	-- Arcane-Infused Webbing
			i(201187),	-- Bent Lockpicks
			i(201211),	-- Bottled Ear Wax
			i(203435),	-- Bottomless Bag of Alchemy Goods
			i(203434),	-- Bottomless Bag of Blacksmithing Goods
			i(203436),	-- Bottomless Bag of Enchanting Goods
			i(203437),	-- Bottomless Bag of Engineering Goods
			i(203444),	-- Bottomless Bag of General Goods
			i(203449),	-- Bottomless Bag of Herbs
			i(203438),	-- Bottomless Bag of Inscription Goods
			i(203439),	-- Bottomless Bag of Jewelcrafting Goods
			i(203440),	-- Bottomless Bag of Leatherworking Goods
			i(203447),	-- Bottomless Bag of Optional Goods
			i(203448),	-- Bottomless Bag of Ore
			i(203450),	-- Bottomless Bag of Skins
			i(203441),	-- Bottomless Bag of Tailoring Goods
			i(201253),	-- Competitor's Edge
			i(192698),	-- Depleted Titan Training Matrix
			i(202037),	-- Expedition Shovel or Expedition Multi-Toolbox
			i(200862),	-- Experimental Duck Feed
			i(201174),	-- Fantastic Jewel
			i(200937),	-- Flavorful Soup Bone
			i(201423),	-- Hallowed Helm
			i(200965),	-- Horde Dueling Flag
			i(201723),	-- Indecipherable Pages
			i(193054),	-- Luxurious Loop
			i(201200),	-- Makeshift Totem
			i(199553),	-- Memory of Unity
			i(200933),	-- Mushy Vegtable
			i(201730),	-- Nokhud Centaur Spear
			i(201731),	-- Nokhud Centaur Staff
			i(201928),	-- Ohn'ir Windprayer Talisman
			i(201214),	-- Olfactory Truffle
			i(201176),	-- Ornate Bracelet
			i(201251),	-- Pillaged Contender's Strongbox
			i(201183),	-- Pouch of Salt
			i(192694),	-- Second Head's Fang
			i(201201),	-- Skull Pendant
			i(192633),	-- Slit-Shaped Pupil
			i(201179),	-- Snapped Tusk Tip
			i(201213),	-- Sparkling Stone
			i(201224),	-- Tauren Horn
			i(192696),	-- Third Head's Eye
			i(201223),	-- Thorn Bracelet
			i(193447),	-- Thunder Thigh
		})),

		-- 10.0.5
		expansion(EXPANSION.DF, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_5 } }, {
			i(203461),	-- Chronologically Reallocated Rations
			i(202112),	-- Crystal Shattering Armaments
			i(202310),	-- Defective Doomsday Device
			i(201990),	-- Primal Mote
			i(204277),	-- Ruby Whelp Treat
			i(204236),	-- Sack of Stolen Dragon Glyphs
			i(202035),	-- Self-Heating Rations
		})),

		-- 10.0.7
		expansion(EXPANSION.DF, patch(0,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_7 } }, {
			i(202663),	-- [DNT] Dragonscale Expedition Item 01
			i(202671),	-- [DNT] Dragonscale Expedition Item 02
			i(202672),	-- [DNT] Dragonscale Expedition Item 03
			i(202673),	-- [DNT] Dragonscale Expedition Item 04
			i(202674),	-- [DNT] Dragonscale Expedition Item 05
			i(202675),	-- [DNT] Maruuk Centaur Item 01
			i(202676),	-- [DNT] Maruuk Centaur Item 02
			i(202677),	-- [DNT] Maruuk Centaur Item 03
			i(202678),	-- [DNT] Maruuk Centaur Item 04
			i(202679),	-- [DNT] Maruuk Centaur Item 05
			i(202680),	-- [DNT] Iskaara Tuskarr Item 01
			i(202681),	-- [DNT] Iskaara Tuskarr Item 02
			i(202682),	-- [DNT] Iskaara Tuskarr Item 03
			i(202683),	-- [DNT] Iskaara Tuskarr Item 04
			i(202684),	-- [DNT] Iskaara Tuskarr Item 05
			i(202685),	-- [DNT] Valdrakken Accord Item 01
			i(202686),	-- [DNT] Valdrakken Accord Item 02
			i(202687),	-- [DNT] Valdrakken Accord Item 03
			i(202688),	-- [DNT] Valdrakken Accord Item 04
			i(202689),	-- [DNT] Valdrakken Accord Item 05
			i(203693),	-- Ensemble: Cloudburst Regalia
			i(203694),	-- Ensemble: Cyclonic Battlegear
			i(203696),	-- Ensemble: Dust Devil Armor
			i(203695),	-- Ensemble: Firestorm Armor
			i(203211),	-- Ensemble: Lion's Heritage Blue Armor Set
			i(203212),	-- Ensemble: Lion's Heritage Scarlet Armor Set
			i(203213),	-- Ensemble: Lion's Heritage White Armor Set
			i(203214),	-- Ensemble: Wolf's Heritage Blackrock Armor Set
			i(203215),	-- Ensemble: Wolf's Heritage Frostwolf Armor Set
			i(203216),	-- Ensemble: Wolf's Heritage Warsong Armor Set
			i(203465),	-- Draconic Artifact
			i(203210),	-- Dragonscale Supply Box
			i(203466),	-- Dragonscale Surplus Crate
			i(204330),	-- Inert Primordial Fragments
			i(203218),	-- Iskaara Supply Pouch
			i(203221),	-- Maruuk Supply Sack
			i(204310),	-- Mycelial Threads
			i(204307),	-- Ornate Bronze Lockbox
			i(204216),	-- Primordial Pulverizing
			i(204008),	-- Prodigious Sand Stone
			i(202202),	-- Revealing Mask
			i(203730),	-- Rustic Winterpelt Supplies
			i(204213),	-- Short-Range Teleport
			i(202075),	-- Temp Currency
			i(203657),	-- Toxin Antidote
			i(203223),	-- Valdrakken Supply Coffe
			i(203854),	-- Warblades of the Hakkari, Reborn
		})),

		-- 10.1.0
		expansion(EXPANSION.DF, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_0 } }, {
			i(205934),	-- Add Keystone Affix: Afflicted
			i(205933),	-- Add Keystone Affix: Entangling
			i(205935),	-- Add Keystone Affix: Incorporeal
			i(206158),	-- Add Keystone Affix: Shielding
			i(205903),	-- Barter Pebble
			i(204885),	-- Boulder Breakdown Mixture
			i(205220),	-- Corroded Key
			i(204890),	-- Dampening Emitter
			i(205198),	-- Detailed Titan Key
			i(206026),	-- Ensemble: Enmity Hood and Cloak
			i(205691),	-- Hypnotic Murloc Lure
			i(204886),	-- Insulating Embershard
			i(203397),	-- Kirygosa's Note
			i(205163),	-- Lucky Horseshoe - FOR TESTING AURAS DO NOT USE (SH)
			i(205898),	-- Metal Key and shield disabled
			i(205454),	-- Researchers Wheel Barrow
			i(206138),	-- Scalewarden's Pennant
			i(205993),	-- Set Keystone Map: The Vortex Pinnacle
			i(202387),	-- Slightly Ruffled Top Hat
			i(205234),	-- Soiled Key
			i(205867),	-- Steaming Drake Heart
			i(204891),	-- Tempered Embershard
			i(202206),	-- Thumper Part
			i(204893),	-- Three-Cheese Cake
			i(204892),	-- Time-Lost Brie
			i(204884),	-- Titan Control Card
			i(204883),	-- Titan Mining Tool
			i(204887),	-- Unstable Embershard
			i(204889),	-- Weak Elemental Binding Rings
		})),

		-- 10.1.5
		expansion(EXPANSION.DF, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_5 } }, {
			i(208097),	-- Flamethrower
			i(205259),	-- Order Soul
			i(207096),	-- Paracausal Chest
			i(207102),	-- TESTING ITEM DELETE ME
			i(205146),	-- Weyrnstone
		})),

		-- 10.1.7
		expansion(EXPANSION.DF, patch(1,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_7 } }, {
			i(208549),	-- Canned Meat Product
			i(208783),	-- Corrupted Blood
			i(209832),	-- Crate of Dreambound Leather
			i(209834),	-- Crate of Dreambound Mail
			i(209835),	-- Crate of Dreambound Plate
			i(209997),	-- Distilled Knowledge of Timeways
			i(208925),	-- Dreambound Trinket
			i(208545),	-- Kindled Bonfire
			i(209020),	-- Loot-Filled Pumpkin
			i(209025),	-- Loot-Filled Pumpkin
			i(208784),	-- Primeval Fin
			i(209870),	-- Surge Catcher
				------ Secrets of Azeroth ------
			i(206600),	-- A Clue
			i(206760),	-- A Clue
			i(206762),	-- A Clue
			i(206950),	-- A Clue
			i(206996),	-- A Clue
			i(208932),	-- A Partial Fourth Clue
			i(208933),	-- A Partial Fourth Clue
			i(208934),	-- A Partial Fourth Clue
			i(208935),	-- A Partial Fourth Clue
			i(208993),	-- Clue Scrap
			i(208994),	-- Clue Scrap
			i(208995),	-- Clue Scrap
			i(208996),	-- Clue Scrap
			i(208997),	-- Clue Scrap
			i(208998),	-- Clue Scrap
			i(208999),	-- Clue Scrap
			i(209000),	-- Clue Scrap
			i(209001),	-- Clue Scrap
			i(209002),	-- Clue Scrap
			i(209003),	-- Clue Scrap
			i(209004),	-- Clue Scrap
			i(209005),	-- Clue Scrap
			i(209006),	-- Clue Scrap
			i(209007),	-- Clue Scrap
			i(209008),	-- Clue Scrap
			i(209009),	-- Clue Scrap
			i(209010),	-- Clue Scrap
			i(209011),	-- Clue Scrap
			i(209012),	-- Clue Scrap
			i(209013),	-- Clue Scrap
			i(209014),	-- Clue Scrap
			i(209015),	-- Clue Scrap
			i(209016),	-- Clue Scrap
			i(208873),	-- The FINAL Clue
			i(208861),	-- The First Clue
			i(208865),	-- The First Clue
			i(208869),	-- The First Clue
			i(208863),	-- The Fourth Clue
			i(208872),	-- The Fourth Clue
			i(208866),	-- The Second Clue
			i(208862),	-- The Second Clue
			i(208870),	-- The Second Clue
			i(208867),	-- The Third Clue
			i(208864),	-- The Third Clue
			i(208871),	-- The Third Clue
				------ Warcraft Rumble ------
			i(204346),	-- Arclight Rumble Foil Box
			i(204348),	-- Balled-up Rumble Foil
			i(204373),	-- Banged-up Rumble Foil
			i(202398),	-- Gold Rumble Foil
			i(202259),	-- Warcraft Rumble Toy: Maiev
			i(202260),	-- Warcraft Rumble Toy: Maiev
			i(202863),	-- Warcraft Rumble Toy: Murloc
			i(202864),	-- Warcraft Rumble Toy: Murloc
			i(202852),	-- Warcraft Rumble Toy: Night Elf Huntress
			i(202853),	-- Warcraft Rumble Toy: Night Elf Huntress
			i(202262),	-- Warcraft Rumble Toy: Sneed
			i(202263),	-- Warcraft Rumble Toy: Sneed
			i(202857),	-- Warcraft Rumble Toy: Stonehoof Tauren
			i(202858),	-- Warcraft Rumble Toy: Stonehoof Tauren
			i(202860),	-- Warcraft Rumble Toy: Undead Ghoul
			i(202861),	-- Warcraft Rumble Toy: Undead Ghoul
			i(202866),	-- Warcraft Rumble Toy: Whelp Egg
			i(202867),	-- Warcraft Rumble Toy: Whelp Egg
		})),

		-- 10.2.0
		expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_0 } }, {
			i(208692),	-- Ancient Roottwined Tome
			i(210441),	-- Behemoth's Feather
			i(208840),	-- Concentrated Sophic Vellum
			i(209019),	-- Conjured Sugarfree Firewater Sorbet
			i(210326),	-- Cracked Medal of Conquest
			i(210420),	-- Dream Wardens Insignia [Rare]
			i(210419),	-- Dream Wardens Insignia [Uncommon]
			i(210786),	-- Dreaming Whiskerfish
			i(208597),	-- Eadweard's Notes
			i(208887),	-- Erden's Notes
			i(210027),	-- Extracted Ashen Dust
			i(210028),	-- Extracted Ashen Dust
			i(210450),	-- Flaming Orb
			i(208570),	-- Greater Verdant Crest of Honor
			i(208566),	-- Greater Verdant Trophy of Conquest
			i(210449),	-- Heated Scales
			i(210687),	-- Ironfur Sample
			i(208568),	-- Lesser Verdant Crest of Honor
			i(208564),	-- Lesser Verdant Trophy of Conquest
			i(209348),	-- Lydiara's Notes
			i(210443),	-- Matchbook
			i(208856),	-- Pocket Lint
			i(211418),	-- Q'onzu Edict of Change
			i(208690),	-- Roottwined Key
			i(208839),	-- Rune of Adaptive Binding
			i(210550),	-- Set Keystone Map: Dawn of the Infinite: Galakrond's Fall
			i(210551),	-- Set Keystone Map: Dawn of the Infinite: Murozond's Rise
			i(210040),	-- Set Keystone Map: Throne of the Tides
			i(209350),	-- Shalasar's Notes on Sophic Magics
			i(210442),	-- Sizzling Charcoal
			i(208606),	-- Somnagora's Heart
			i(210439),	-- Speck of Mana
			i(210440),	-- Splendid Blossom
			i(208782),	-- Symbiotic Glowspore Grip
			i(210223),	-- Unstable Element
			i(208569),	-- Verdant Crest of Honor
			i(208565),	-- Verdant Trophy of Conquest
			i(208745),	-- Your Reward [DNT]
		})),

		-- 10.2.5
		expansion(EXPANSION.DF, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_5 } }, {
			i(212784),	-- Destroyed Relic
			i(211104),	-- Ephemeral Fractured Emerald
			i(211112),	-- Ephemeral Swift Emerald
			i(211111),	-- Ephemeral Swift Ruby
			i(208822),	-- Infinite Hearthstone
			i(215160),	-- The Big Dig Rig
			i(210988),	-- Thread of Regeneration
			i(211388),	-- Timerunner's Starter Kit
		})),

		-- 10.2.6
		expansion(EXPANSION.DF, patch(2,6), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_6 } }, {
			------ Plunderstorm ------
			i(212096),	-- [DNT] Starter Pirate Gear
			i(212097),	-- [DNT] Starter Pirate Gear - Health Potion
			i(212517),	-- Barrel
			i(213232),	-- Bottled Time
			i(216723),	-- Chicken Coup
			i(212873),	-- Earthbreaker
			i(212662),	-- Explosive Caltrops
			i(212659),	-- Fade to Shadow
			i(212661),	-- Faeform
			i(212658),	-- Fire Whirl
			i(213164),	-- Gnomish Gravity Launcher
			i(216655),	-- Goblin Glue Rocket
			i(212998),	-- Holy Shield
			i(215455),	-- Hunter's Chains
			i(216719),	-- Keg Leg's Cannonade
			i(218270),	-- Lightning Bulwark
			i(212655),	-- Mana Sphere
			i(213217),	-- Mechano-Hog
			i(213397),	-- Parrot Snacks
			i(212663),	-- Quaking Leap
			i(215361),	-- Quaking Leap
			i(214242),	-- Repel
			i(216878),	-- Rigged Chest
			i(212657),	-- Rime Arrow
			i(212656),	-- Searing Axe
			i(212869),	-- Slicing Winds
			i(216722),	-- Smoke Bomb
			i(212975),	-- Snowdrift
			i(213577),	-- Star Bomb
			i(212660),	-- Steel Traps
			i(219020),	-- Storm Archon
			i(217272),	-- Stormproof Sloop
			i(213400),	-- Strange Snowman
			i(216672),	-- The Ambush
			i(216527),	-- Toxic Smackerel
			i(212917),	-- Windstorm
			------ Plunderstorm Valdrakken Vendor ------
			i(220203),	-- Clutch of Wyrm's Dreaming Crests
			i(217413),	-- Depleted Blackened Flightstone
			i(217416),	-- Depleted Emerald Flightstone
			i(217415),	-- Depleted Ruby Flightstone
			i(220206),	-- Gleaming Satchel of Drake's Dreaming Crests
			i(220204),	-- Pouch of Whelpling's Dreaming Crests
			i(220207),	-- Shimmering Clutch of Wyrm's Dreaming Crests
			i(220208),	-- Viridescent Bouquet of Aspect's Dreaming Crests
			--
			i(212175),	-- Draconic Commendation
		})),

		-- 10.2.7
		expansion(EXPANSION.DF, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_7 } }, {
			i(218120),	-- Arsenal: Exodar Peacekeeper's Armaments
			i(211932),	-- Cache of Infinite Treasure
			i(219220),	-- Catch Up Thread
			i(210881),	-- Cunning Charm
			i(213530),	-- Entropic Crystal
			i(217016),	-- Fragmented Medallion of the Darkspear
			i(217010),	-- Fragmented Medallion of the Draenei
			i(213540),	-- Ghostly Motes
			i(213531),	-- Nether Sands
			i(223475),	-- Set Keystone Level: 2
			i(223476),	-- Set Keystone Level: 3
			i(223477),	-- Set Keystone Level: 4
			i(223478),	-- Set Keystone Level: 5
			i(223479),	-- Set Keystone Level: 6
			i(223480),	-- Set Keystone Level: 7
			i(223481),	-- Set Keystone Level: 8
			i(223482),	-- Set Keystone Level: 9
			i(224120),	-- Timerunner's Gem Box
			i(216638),	-- Timerunner's Intro Kit
			i(219218),	-- Timerunner's Starter Kit
			i(219219),	-- Timerunner's Starter Kit
			i(213532),	-- Void Rune
			i(213537),	-- Void Tendril
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.0.0
		expansion(EXPANSION.TWW, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
			i(225640),	-- Abyssal Lure
			i(228415),	-- Adelgonn's Journal
			i(225211),	-- Airship Operations Manual
			i(225570),	-- Algari Fowlfeather
			i(219741),	-- Algari Mineral
			i(219742),	-- Algari Spices
			i(208670),	-- Arachnophobia Mode
			i(228612),	-- Artisan's Consortium Payout [Epic]
			i(228611),	-- Artisan's Consortium Payout [Rare]
			i(228610),	-- Artisan's Consortium Payout [Uncommon]
			i(211348),	-- Awkward Potion
			i(223805),	-- Bag Test A
			i(223806),	-- Bag Test B
			i(216603),	-- Boots of the Light
			i(224030),	-- Bottomless Bag of Khaz Algar Alchemy Goods
			i(224031),	-- Bottomless Bag of Khaz Algar Blacksmithing Goods
			i(224032),	-- Bottomless Bag of Khaz Algar Enchanting Goods
			i(224033),	-- Bottomless Bag of Khaz Algar Engineering Goods
			i(224100),	-- Bottomless Bag of Khaz Algar General Goods
			i(224156),	-- Bottomless Bag of Khaz Algar General Goods
			i(224027),	-- Bottomless Bag of Khaz Algar Herbs
			i(224034),	-- Bottomless Bag of Khaz Algar Inscription Goods
			i(224035),	-- Bottomless Bag of Khaz Algar Jewelcrafting Goods
			i(224037),	-- Bottomless Bag of Khaz Algar Leatherworking Goods
			i(224040),	-- Bottomless Bag of Khaz Algar Optional Goods
			i(224028),	-- Bottomless Bag of Khaz Algar Ore
			i(224029),	-- Bottomless Bag of Khaz Algar Skins
			i(224039),	-- Bottomless Bag of Khaz Algar Tailoring Goods
			i(222929),	-- Carved Coin Coffer
			i(218340),	-- Chest of Playtest Equipment
			i(228193),	-- Chipped Demon's Blade
			i(220693),	-- Coffer Key Shard
			i(222928),	-- Coin Coffer
			i(225123),	-- Companion Experience
			i(220260),	-- Corroded Golem Graspers
			i(228192),	-- Cracked Fel Focus
			i(225806),	-- Crystal Inkwell
			i(220284),	-- Darkened Crystal
			i(219138),	-- Delve Experience
			i(226260),	-- Delver's Pouch of Gold
			i(226257),	-- Delver's Pouch of Valorstones
			i(210693),	-- Delves Keystone
			i(211142),	-- Delves Keystone
			i(217386),	-- Discarded Memory Gem
			i(228225),	-- do not use
			i(223869),	-- DO NOT USE Prismatic Codex
			i(217970),	-- Dormant Runestone
			i(228450),	-- Edible Copper Nuggets
			i(210699),	-- Epic Delve Key
			i(221503),	-- Explorer's Warbound Battlegear Drop
			i(220233),	-- Extinguished Icon
			i(219500),	-- Fang Adornments
			i(212603),	-- First Half of Titan Key NOT USED
			i(206348),	-- Fragmented Flame
			i(209431),	-- Fungal Scraper
			i(218123),	-- Glowing Shard
			i(224791),	-- Golden Lord Outfit
			i(220377),	-- Growing Void Mass
			i(206581),	-- Harvester Core
			i(219743),	-- Khaz Algar Olive (Vendor)
			i(219744),	-- Khaz Algar Vegetable
			i(225214),	-- List of Activities
			i(210697),	-- Luckstone
			i(220340),	-- Meatball Cluster
			i(217984),	-- Miner's Rune of Decyphering
			i(212385),	-- Moira's Healing Surge TO DEPRECATE
			i(211349),	-- Mundane Potion
			i(226430),	-- Navigations of The Soul
			i(225805),	-- Ornate Box of Seasonings
			i(221777),	-- Pearlescent Shellcrab
			i(215360),	-- Personalized Setting
			i(225240),	-- PH_1
			i(225256),	-- PH_2
			i(225365),	-- PH_3
			i(225541),	-- PH_4
			i(225553),	-- PH_5
			i(221812),	-- Player Experience
			i(222956),	-- Player Experience
			i(206134),	-- Potion of Healing
			i(225210),	-- Priory Theses
			i(224068),	-- Professor Instructaur's Brain Pertaining to Khaz Algar
			i(224057),	-- Professor Instructaur's Top Secret Guide to Khaz Algar Alchemy
			i(224058),	-- Professor Instructaur's Top Secret Guide to Khaz Algar Blacksmithing
			i(224059),	-- Professor Instructaur's Top Secret Guide to Khaz Algar Enchanting
			i(224060),	-- Professor Instructaur's Top Secret Guide to Khaz Algar Engineering
			i(224061),	-- Professor Instructaur's Top Secret Guide to Khaz Algar Herbalism
			i(224062),	-- Professor Instructaur's Top Secret Guide to Khaz Algar Inscription
			i(224063),	-- Professor Instructaur's Top Secret Guide to Khaz Algar Jewelcrafting
			i(224064),	-- Professor Instructaur's Top Secret Guide to Khaz Algar Leatherworking
			i(224065),	-- Professor Instructaur's Top Secret Guide to Khaz Algar Mining
			i(224066),	-- Professor Instructaur's Top Secret Guide to Khaz Algar Skinning
			i(224067),	-- Professor Instructaur's Top Secret Guide to Khaz Algar Tailoring
			i(224913),	-- Radiant Fuel Cache
			i(210698),	-- Rare Delve Key
			i(219494),	-- Ritual Flame
			i(224728),	-- Rollin' Barrel
			i(222954),	-- Runed Coin Coffer
			i(225209),	-- Sacred Flame Prayers
			i(224792),	-- Sanguine Aristocrat Outfit
			i(227677),	-- Satchel of Enchanting Surplus
			i(227678),	-- Satchel of Engineering Surplus
			i(227679),	-- Satchel of Inscription Surplus
			i(227680),	-- Satchel of Jewelcrafting Surplus
			i(222977),	-- Scorched Junk
			i(228412),	-- Scouting Map: The Skies of the Dragon Isles
			i(219632),	-- Scribe Water
			i(228451),	-- Scrumptious Gold Bar
			i(212601),	-- Second Half of Titan Key NOT USED
			i(219142),	-- Set Keystone Map: Ara-Kara, City of Echoes
			i(219145),	-- Set Keystone Map: Cinderbrew Meadery
			i(219141),	-- Set Keystone Map: City of Threads
			i(219143),	-- Set Keystone Map: Darkflame Cleft
			i(219390),	-- Set Keystone Map: Grim Batol
			i(219139),	-- Set Keystone Map: Priory of the Sacred Flame
			i(219146),	-- Set Keystone Map: Stonevault
			i(219144),	-- Set Keystone Map: The Dawnbreaker
			i(219140),	-- Set Keystone Map: The Rookery
			i(221750),	-- Shredded Weavercloth
			i(222416),	-- Shredded Weavercloth
			i(224823),	-- Shredded Weavercloth
			i(212349),	-- Sizzling Spring Water [DNT][UNUSED]
			i(224786),	-- Skeleton King Outfit
			i(224729),	-- Slum Shark Tooth
			i(210051),	-- Spark Feather
			i(211494),	-- Spark of Beginnings
			i(228224),	-- Spark of Legacies
			i(220342),	-- Spiced Stock
			i(212527),	-- Spiderforged Emitter Key [REMOVED]
			i(216982),	-- Spy List
			i(228416),	-- Steelvein's Manifesto
			i(212340),	-- Strange Jar
			i(228449),	-- Tasty Iron Bar
			i(211529),	-- Test Big Bag (DNT)
			i(213569),	-- Test Item A
			i(213570),	-- Test Item B
			i(213097),	-- Test Warbound until equipped (DNT)
			i(219690),	-- Trophy Common Fish A
			i(219691),	-- Trophy Common Fish B
			i(219696),	-- Trophy Rare Fish A
			i(219697),	-- Trophy Rare Fish B
			i(219698),	-- Trophy Rare Fish C
			i(219699),	-- Trophy Rare Fish D
			i(219700),	-- Trophy Rare Fish E
			i(219701),	-- Trophy Rare Fish F
			i(219692),	-- Trophy Uncommon Fish A
			i(219693),	-- Trophy Uncommon Fish B
			i(219694),	-- Trophy Uncommon Fish C
			i(219695),	-- Trophy Uncoomon Fish D
			i(223316),	-- Trusty Hat
			i(212677),	-- Underground Cloth 01
			i(212678),	-- Underground Cloth 01
			i(212679),	-- Underground Cloth 01
			i(226154),	-- Wax-Sealed Crafty Crest
			i(226152),	-- Wax-sealed Crests
			i(228495),	-- Well-Used Potter's Wheel
			i(217401),	-- Wormcaller's Resonator
			i(217986),	-- "Delicious" Egg Parts
			i(224269),	-- [DNT] 11.0 Food/Drink Template - Food Only - Level 75 - Required Level 70
			i(226108),	-- [DNT] Debug Profession Stats
			i(223804),	-- [DNT] Zone 1 Placeholder Treasure
			i(224730),	-- [PH] Derby Dashers
			i(224719),	-- [PH] Evasive Angler's Treads
			i(224720),	-- [PH] Keen Angler's Eye
			i(224716),	-- [PH] Skewered Slum Shark
			i(224718),	-- [PH] Surface Tipper's Toes
			i(220162),	-- [PH] Toy, Pipe Toy
		})),

		-- 11.0.2
		expansion(EXPANSION.TWW, patch(0,02), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_2 } }, {
			i(230209),	-- Add Keystone Affix: Challenger's Peril
			i(230202),	-- Add Keystone Affix: Xal'atath's Bargain: Ascendant
			i(230206),	-- Add Keystone Affix: Xal'atath's Bargain: Devour
			i(230205),	-- Add Keystone Affix: Xal'atath's Bargain: Oblivion
			i(230204),	-- Add Keystone Affix: Xal'atath's Bargain: Voidbound
			i(230208),	-- Add Keystone Affix: Xal'atath's Guile
			i(228745),	-- Aurora Strand
			i(229130),	-- Cache of Delver's Spoils
			i(229005),	-- Cache of Earthen Treasures
			i(229006),	-- Cache of Earthen Treasures
			i(229370),	-- Companion Experience
			i(228743),	-- Damp Weavercloth
			i(228744),	-- Golbin Twist-Rag
			i(226275),	-- Grizzly Hills Granola
			i(226274),	-- Grizzly Hills Spring Water
			i(226262),	-- Grizzly Hills Trail Mix
			i(228951),	-- Pact Treasure Map
			i(232575),	-- Tome of Town Portal
			i(228742),	-- Unidentifiable Cloth
		})),

		-- 11.0.5
		expansion(EXPANSION.TWW, patch(0,05), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_5 } }, {
			i(223620),	-- 20th Anniversary Cache
			i(223621),	-- 20th Anniversary Cache
			i(223622),	-- 20th Anniversary Cache
			i(229198),	-- Ace of Air
			i(229222),	-- Ace of Earth
			i(229206),	-- Ace of Fire
			i(229214),	-- Ace of Frost
			i(223619),	-- Bronze Celebration Goodie Bag
			i(225252),	-- Bronze Celebration Token
			i(232472),	-- Cache of Dark Iron Treasures
			i(232473),	-- Cache of Dark Iron Treasures
			i(228910),	-- Cache of Nerubian Treasures
			i(226101),	-- Chromie's Tour Goodie Bag
			i(224569),	-- Commendation of the Defilers
			i(224563),	-- Commendation of the Frostwolf Clan
			i(224568),	-- Commendation of the League of Arathor
			i(224564),	-- Commendation of the Ravasaur Trainers
			i(224559),	-- Commendation of the Silverwing Sentinels
			i(224562),	-- Commendation of the Stormpike Guard
			i(224560),	-- Commendation of the Warsong Outriders
			i(229205),	-- Eight of Air
			i(229229),	-- Eight of Earth
			i(229221),	-- Eight of Frost
			i(229202),	-- Five of Air
			i(229226),	-- Five of Earth
			i(229218),	-- Five of Frost
			i(229201),	-- Four of Air
			i(229209),	-- Four of Fire
			i(229217),	-- Four of Frost
			i(228783),	-- PH - Sandbox Horse
			i(228782),	-- PH - Sandbox Wolf
			i(231511),	-- Relic Coffer Key Fragment
			i(229204),	-- Seven of Air
			i(229228),	-- Seven of Earth
			i(229220),	-- Seven of Frost
			i(229203),	-- Six of Air
			i(229227),	-- Six of Earth
			i(229200),	-- Three of Air
			i(229224),	-- Three of Earth
			i(227698),	-- Torn Diary, Page 2
			i(229223),	-- Two of Earth
			i(229215),	-- Two of Frost
			i(232631),	-- Wrapped Spear
		})),

		-- 11.0.7
		expansion(EXPANSION.TWW, patch(0,7), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_7 } }, {
			i(234313),	-- [DNT] Item
			i(234969),	-- Archivist Chassis
			i(233331),	-- Aura of Zealotry
			i(233650),	-- Call Galefeather
			i(232645),	-- Celestial Barrage
			i(228637),	-- Delete Me
			i(228641),	-- Delete Me
			i(228645),	-- Delete Me
			i(228649),	-- Delete Me
			i(232629),	-- Distilled Knowledge of Timeways
			i(234472),	-- Earthen Crystal
			i(234471),	-- Earthen Device
			i(234470),	-- Forgemaster's Focus
			i(233051),	-- G.R.A.V. Glove
			i(230207),	-- N.U.K.U.L.A.R. Target Painter
			i(232988),	-- Void Tear
		})),

		-- 11.1.0
		expansion(EXPANSION.TWW, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
			i(235667),	-- Add Keystone Affix: Xal'atath's Bargain: Pulsar
			i(232076),	-- Adventurer's Warbound Battlegear Drop
			i(232069),	-- Adventurer's Warbound Boots
			i(232068),	-- Adventurer's Warbound Chestpiece
			i(232070),	-- Adventurer's Warbound Gloves
			i(232071),	-- Adventurer's Warbound Headpiece
			i(232072),	-- Adventurer's Warbound Legs
			i(232073),	-- Adventurer's Warbound Shoulders
			i(232074),	-- Adventurer's Warbound Waist
			i(232075),	-- Adventurer's Warbound Wrists
			i(236785),	-- C.H.E.T.T. Card
			i(235018),	-- Cracked Cold One
			i(232898),	-- Delver's Bounty
			i(235535),	-- Discretely-Packaged Invention
			i(230807),	-- Drill Hands
			i(237260),	-- Glass of Daylight Dew
			i(228798),	-- Gob-Glider
			i(237036),	-- Golden Valorstone
			i(235559),	-- Hidden Trove
			i(237259),	-- Kapow Kanapes
			i(230017),	-- Master Blaster's Insignia
			i(234618),	-- Omega Oyster Outbreak
			i(234620),	-- Perfectly Preserved Kaja'Classic Original Taste
			i(231291),	-- Radar
			i(235627),	-- Scribbles' Favorite Candies
			i(230990),	-- Set Keystone Map: Operation: Floodgate
			i(231787),	-- Vigilante's Disposable Falling Shadow Grapple Gun
			i(236956),	-- Void-Touched Valorstone
			i(233054),	-- Wonder Ball
			i(225766),	-- Zoom-Zoom Boosters
			i(232929),	-- [DNT] Large Surge Chest
			i(232928),	-- [DNT] Medium Surge Chest
			i(232927),	-- [DNT] Small Surge Chest
		})),
	}),
}));