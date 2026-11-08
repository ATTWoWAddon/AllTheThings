---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.RIVERGLADES, {
	lore = "A sprawling landscape in the Eastern Kingdom which shifts from lush hillsides to ruined keeps of old.",
	timeline = { TIMELINE.ADDED_1_60_1 },
	icon = 1032150,
	groups = {
		n(ACHIEVEMENTS, {
			ach(62354),	-- Explore Riverglades
		}),
		explorationHeader({
			exploration(16726),	-- Bolder'ok
			exploration(16737),	-- Bristle Hills
			exploration(16734),	-- Elbrim's Farm
			exploration(16724),	-- Farholde Keep
			exploration(17780),	-- Krol'dok Stronghold
			exploration(16735),	-- Meadowsbrook
			exploration(16727),	-- Powderfuse Port
			exploration(16743),	-- Rog'mar
			exploration(16723),	-- Sunnyglade
			exploration(16729),	-- Terral's Watch
			exploration(16736),	-- Turner's Logging Camp
			exploration(16685),	-- Twilight's Shroud
			exploration(16725),	-- Wheeler's Grange
			exploration(16731),	-- Windstead
		}),
		n(FACTIONS, {
			faction(2826, {	-- Brotherhood of the Horse
				races = ALLIANCE_ONLY,
			}),
			faction(2827),	-- Powderfuse
		}),
		n(FLIGHT_PATHS, {
			fp(3276, {	-- Farholde Keep, Riverglades
				cr = 257087,	-- Gretchen Mayberry <Gryphon Master>
				coord = { 60.6, 81.6, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
			}),
		}),
		n(PROFESSIONS, {
			n(260562, {	-- Melbin Powderfuse <Master Goblin Engineer>
				coord = { 77.8, 50.8, MAP.RIVERGLADES },
				groups = ENGINEERING_RECIPES.GOBLIN_ENGINEERING,
			}),
		}),
		n(QUESTS, {
			q(95123, {	-- A Blast Ye Scurvy Dogs!
				-- TODO: Wowhead doesn't list the quest giver yet.
				lvl = 38,
				groups = {
					objective(1, {	-- 0/5 Eastsea Powder Keg
						provider = { "i", 268346 },	-- Eastsea Powder Keg
					}),
				},
			}),
			q(94734, {	-- A Boar's Delight
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 94733,	-- Our Ogre Friend
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/8 Sweetberry
						provider = { "i", 265808 },	-- Sweetberry
					}),
					objective(2, {	-- 0/12 Riverweed
						provider = { "i", 265806 },	-- Riverweed
					}),
				},
			}),
			q(95983, {	-- A Feast for Buzzards [A]
				-- TODO: Wowhead doesn't list the quest giver yet.
				qi = 271777,	-- Gnawed Skull (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(96103, {	-- A Feast for Buzzards [H]
				-- TODO: Wowhead doesn't list the quest giver yet.
				qi = 271777,	-- Gnawed Skull (PQI!)
				races = HORDE_ONLY,
				lvl = 36,
			}),
			q(94928, {	-- A Few Furs for Friz
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 59.5, 63.9.
				sourceQuest = 94925,	-- A Fur Trade
				qi = 267263,	-- Bundle of Lion Pelts (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(94925, {	-- A Fur Trade
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 59.5, 63.9.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/8 Prized Lion Hide
						provider = { "i", 266888 },	-- Prized Lion Hide
						crs = {
							259054,	-- Wildplains Patriarch
							259055,	-- Wildplains Huntress
						},
					}),
				},
			}),
			q(94480, {	-- A Gift From Our Enemies
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Stolen Feed
						provider = { "i", 265065 },	-- Stolen Feed
					}),
				},
			}),
			q(96109, {	-- A Hunter's Quiver
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 96108,	-- Poison Tips
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/6 Prized Lion Hide
						provider = { "i", 266888 },	-- Prized Lion Hide
						crs = {
							259054,	-- Wildplains Patriarch
							259055,	-- Wildplains Huntress
						},
					}),
					i(274926),	-- Matriarch Quiver
				},
			}),
			q(93786, {	-- A Message in Blood
				qg = 256418,	-- Krom'rosh
				coord = { 59.4, 45.4, MAP.RIVERGLADES },
				races = HORDE_ONLY,
				lvl = 35,
				groups = {
					objective(1, {	-- 0/12 Meadowsbrook Farmhand slain
						provider = { "n", 256383 },	-- Meadowsbrook Farmhand
					}),
				},
			}),
			q(96015, {	-- A Miner Problem
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = ALLIANCE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/5 Ogre Miner
						provider = { "n", 260995 },	-- Ogre Miner
					}),
					objective(2, {	-- 0/5 Twilight Subjugator slain
						provider = { "n", 260996 },	-- Twilight Subjugator
					}),
					i(275028),	-- Twilight Mine Light
				},
			}),
			q(94481, {	-- A Serving of Strength
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 94480,	-- A Gift From Our Enemies
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/8 Rog'mar Trainee fed
						provider = { "n", 256749 },	-- Rog'mar Trainee fed
					}),
					objective(2, {	-- 0/1 Hearty Stew
						provider = { "i", 265066 },	-- Hearty Stew
					}),
				},
			}),
			q(94907, {	-- A Small Favor
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 66.7, 81.1, where Demar Brant and Ashe Amberhall both stand.
				qi = 268646,	-- Amberhall's Soulstone (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Twilight Thrall
						provider = { "n", 258652 },	-- Twilight Thrall
					}),
				},
			}),
			q(95121, {	-- A Taste of the Sea
				qg = 259962,	-- Fimbo Greasemitz
				coord = { 78.8, 54.2, MAP.RIVERGLADES },
				lvl = 36,
				groups = {
					objective(1, {	-- 0/12 Saltwater Murloc Eye
						provider = { "i", 268344 },	-- Saltwater Murloc Eye
						crs = {
							255898,	-- Murloc Oracle
							256801,	-- Murloc Warrior
						},
					}),
					objective(2, {	-- 0/6 Sand Crawler Meat
						provider = { "i", 268345 },	-- Sand Crawler Meat
						crs = {
							255901,	-- Sand Crawler
							256807,	-- Shore Crawler
						},
					}),
					i(274972),	-- Recipe: Briny Seafood Stew
				},
			}),
			q(94737, {	-- A Treat for a Friend
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 94734,	-- A Boar's Delight
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Treat for Snufflesnout
						provider = { "i", 265810 },	-- Treat for Snufflesnout
					}),
				},
			}),
			q(95642, {	-- Abominable Magics
				qg = 256831,	-- Apprentice Claire
				coord = { 47.6, 47.2, MAP.RIVERGLADES },
				qi = 269990,	-- Crystal Catalyst (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/25 Empowered Brute
						provider = { "n", 261711 },	-- Empowered Brute
					}),
					objective(2, {	-- 0/1 Twilight Ritual Circle
						provider = { "n", 262006 },	-- Twilight Ritual Circle
					}),
					objective(3, {	-- 0/1 Twilight Ritualist
						provider = { "n", 262169 },	-- Twilight Ritualist
					}),
				},
			}),
			q(95124, {	-- Admiral Lamora
				-- TODO: Wowhead doesn't list the quest giver yet.
				lvl = 38,
				groups = {
					objective(1, {	-- 0/1 Admiral Lamora slain
						provider = { "n", 257861 },	-- Admiral Lamora
					}),
					objective(2, {	-- 0/1 Lamora's Loot
						provider = { "i", 268506 },	-- Lamora's Loot
					}),
				},
			}),
			q(94858, {	-- All That's Left
				-- Giver: Contributor Report accepted it at 52.7, 42.4, where Farmer Elbrim stands.
				sourceQuest = 94829,	-- What We Lost
				qg = 258697,	-- Farmer Elbrim
				coord = { 52.8, 42.4, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Discarded Doll
						provider = { "i", 266251 },	-- Discarded Doll
					}),
					objective(2, {	-- 0/1 Damaged Locket
						provider = { "i", 266252 },	-- Damaged Locket
					}),
				},
			}),
			q(95327, {	-- All's Well That Ends Well
				-- TODO: Wowhead doesn't list the quest giver yet.
				qi = 268810,	-- Ruzzgot's Shipment (PQI!)
				lvl = 36,
			}),
			q(96126, {	-- An Ogre's Captive
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = ALLIANCE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/1 Gronok's Key
						provider = { "i", 272190 },	-- Gronok's Key
						cr = 263749,	-- Gronok the Butcher
					}),
				},
			}),
			q(94884, {	-- An Unsettling Discovery
				qg = 256831,	-- Apprentice Claire
				coord = { 47.6, 47.2, MAP.RIVERGLADES },
				qi = 266426,	-- Filled Crystal Catalyst (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(95561, {	-- Apple of My Eye
				qg = 263089,	-- Tessa Dawnbright
				coord = { 63.8, 82.2, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/6 Fresh Apple
						provider = { "i", 271431 },	-- Fresh Apple
					}),
					i(4539),	-- Goldenbark Apple
				},
			}),
			q(97884, {	-- Armory of Sunnyglade
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Tremayne Family Blacksmithing Techniques
						provider = { "i", 278868 },	-- Tremayne Family Blacksmithing Techniques
					}),
					i(280943),	-- Tome of Tremayne Family Blacksmithing Techniques
				},
			}),
			q(95603, {	-- Bats in the Belfry
				qg = 262031,	-- Sister Rowland
				coord = { 61.8, 83.2, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/5 Roosting Duskbat slain
						provider = { "n", 262037 },	-- Roosting Duskbat
					}),
				},
			}),
			q(94961, {	-- Biting the Hand (1/2)
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 47.4, 51.2.
				lvl = 36,
				groups = {
					objective(1, {	-- 0/20 Twilight Finger Bone
						provider = { "i", 267073 },	-- Twilight Finger Bone
						crs = {
							254560,	-- Twilight Shadowmancer
							256798,	-- Twilight Neophyte
							256952,	-- Twilight Raider
							260969,	-- Twilight Instigator
						},
					}),
				},
			}),
			q(94963, {	-- Biting the Hand (2/2)
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 47.3, 51.3.
				sourceQuest = 94961,	-- Biting the Hand (1/2)
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Fuzzle slain
						provider = { "n", 259158 },	-- Fuzzle
					}),
				},
			}),
			q(94668, {	-- Bloodmaster's Ring (1/7)
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
			}),
			q(94670, {	-- Bloodmaster's Ring (2/7)
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 94669,	-- Pay to Play
				races = HORDE_ONLY,
				lvl = 36,
			}),
			q(94739, {	-- Bloodmaster's Ring (3/7)
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 94670,	-- Bloodmaster's Ring (2/7)
				races = HORDE_ONLY,
				lvl = 36,
			}),
			q(94962, {	-- Bloodmaster's Ring (4/7)
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 94739,	-- Bloodmaster's Ring (3/7)
				races = HORDE_ONLY,
				lvl = 36,
			}),
			q(94964, {	-- Bloodmaster's Ring (5/7)
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 94962,	-- Bloodmaster's Ring (4/7)
				races = HORDE_ONLY,
				lvl = 36,
			}),
			q(94965, {	-- Bloodmaster's Ring (6/7)
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 94737,	-- A Treat for a Friend
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					i(3928),	-- Superior Healing Potion
					i(13443),	-- Superior Mana Potion
				},
			}),
			q(95063, {	-- Bloodmaster's Ring (7/7)
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 94965,	-- Bloodmaster's Ring (6/7)
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					i(275043),	-- Bloodmaster's Ring
					i(275044),	-- Bloodsport Band
					i(275045),	-- Ogre Horn Ring
				},
			}),
			q(93788, {	-- Borrowed Blades
				qg = 256657,	-- Kreza Darkthorn <Weaponsmith & Armorcrafter>
				coord = { 59.8, 46.0, MAP.RIVERGLADES },
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/10 Woodworker's Axe
						provider = { "i", 263972 },	-- Woodworker's Axe
						cr = 256434,	-- Turner's Mill Lumberjack
					}),
				},
			}),
			q(94748, {	-- Break Their Chains
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/5 Rog'mar Scout rescued
						provider = { "n", 272737 },	-- Rog'mar Scout rescued
					}),
					objective(2, {	-- 0/5 Twilight Key
						provider = { "i", 265821 },	-- Twilight Key
						cr = 256799,	-- Twilight Champion
					}),
				},
			}),
			q(94768, {	-- Bring Me His Head [H]
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/1 Kilgar's Head
						provider = { "i", 265837 },	-- Kilgar's Head
					}),
					i(275050),	-- Cloak of the Cult
					i(275051),	-- Twilight Barrier
				},
			}),
			q(94890, {	-- Bring Me His Head [A]
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = ALLIANCE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/1 Kilgar's Head
						provider = { "i", 265837 },	-- Kilgar's Head
					}),
					i(275049),	-- Farholde Bastion
					i(275046),	-- Twilight Overlord Drape
				},
			}),
			q(94535, {	-- Bristle Hills Bandits
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/40 Stolen Ore
						provider = { "i", 265358 },	-- Stolen Ore
						crs = {
							255769,	-- Redridge Brute
							255770,	-- Redridge Mystic
							255772,	-- Redridge Trapper
							255774,	-- Redridge Scout
						},
					}),
				},
			}),
			q(94745, {	-- Carving a Path [H]
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/8 Twilight Fanatic slain
						provider = { "n", 256795 },	-- Twilight Fanatic
					}),
					objective(2, {	-- 0/8 Twilight Corrupter slain
						provider = { "n", 256797 },	-- Twilight Corrupter
					}),
					objective(3, {	-- 0/8 Twilight Champion slain
						provider = { "n", 256799 },	-- Twilight Champion
					}),
				},
			}),
			q(94889, {	-- Carving a Path [A]
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = ALLIANCE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/8 Twilight Fanatic slain
						provider = { "n", 256795 },	-- Twilight Fanatic
					}),
					objective(2, {	-- 0/8 Twilight Corrupter slain
						provider = { "n", 256797 },	-- Twilight Corrupter
					}),
					objective(3, {	-- 0/8 Twilight Champion slain
						provider = { "n", 256799 },	-- Twilight Champion
					}),
				},
			}),
			q(95792, {	-- Clear 'em Out
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 30.2, 69.1.
				lvl = 36,
				groups = {
					objective(1, {	-- 0/8 Cinderscale Whelp slain
						provider = { "n", 262473 },	-- Cinderscale Whelp
					}),
					objective(2, {	-- 0/4 Cinderscale Warrior slain
						provider = { "n", 262477 },	-- Cinderscale Warrior
					}),
				},
			}),
			q(96083, {	-- Clerical Quarantine
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(95428, {	-- Clugfist's Decree
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
			}),
			q(95312, {	-- Coming to Collect
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95383,	-- Shipping and Handling (2/2)
				lvl = 36,
			}),
			q(95472, {	-- Consolation Prize
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95321,	-- Tazzik's Dues
				qi = 268805,	-- Tazzik's Sweaty Shirt (PQI!)
				lvl = 36,
				groups = {
					i(270334),	-- Sweat-Stained Shirt
				},
			}),
			q(94617, {	-- Coyote Huntin'
				sourceQuest = 94615,	-- Foal Play
				qg = 258317,	-- Benjy Wheeler
				coord = { 54.6, 72.8, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Sootfur's Pelt
						provider = { "i", 265738 },	-- Sootfur's Pelt
						cr = 258522,	-- Sootfur
					}),
				},
			}),
			q(94881, {	-- Curious Trinkets
				qg = 257591,	-- Ashe Amberhall
				coord = { 66.6, 81.0, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/25 Twilight Charm
						provider = { "i", 266425 },	-- Twilight Charm
						crs = {
							254560,	-- Twilight Shadowmancer
							256798,	-- Twilight Neophyte
						},
					}),
				},
			}),
			q(95562, {	-- Cut Off the Heads
				-- Giver: Contributor Report accepted it at 47.7, 47.2, where Apprentice Claire stands.
				qg = 256831,	-- Apprentice Claire
				coord = { 47.6, 47.2, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Chogg's Head
						provider = { "i", 265750 },	-- Chogg's Head
					}),
					objective(2, {	-- 0/1 Zac's Head
						provider = { "i", 265751 },	-- Zac's Head
						cr = 256899,	-- Chogg'Zac
					}),
				},
			}),
			q(95433, {	-- Death to the Executioner
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Executioner's Mace
						provider = { "i", 269351 },	-- Executioner's Mace
					}),
					i(275011),	-- Thud Hammer
				},
			}),
			q(94893, {	-- Delivering Closure
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 94892,	-- Dying Wish
				qi = 266428,	-- Marshal Ryan's Crest (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(94727, {	-- Digging for Answers
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 94680,	-- Twilight Missives
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Twilight miner convinced
						provider = { "n", 260931 },	-- Twilight miner convinced
					}),
				},
			}),
			q(96082, {	-- Doctor's Orderly
				-- TODO: Wowhead doesn't list the quest giver yet.
				qi = 272126,	-- Makeshift Bandages (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/3 Wounded Soldier treated
						provider = { "n", 263614 },	-- Wounded Soldier treated
					}),
				},
			}),
			q(95957, {	-- Drink Up!
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95988,	-- Goes Down Smooth
				qi = 271822,	-- Frothing Mug (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(95163, {	-- Drive Them Back
				-- TODO: Wowhead doesn't list the quest giver yet.
				qi = 268521,	-- Swineherd's Staff (PQI!)
				races = HORDE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/10 Young Paletusk
						provider = { "n", 258331 },	-- Young Paletusk
					}),
				},
			}),
			q(94926, {	-- Drop the Hammer
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = ALLIANCE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/1 Komuk's Warmaul
						provider = { "i", 266889 },	-- Komuk's Warmaul
					}),
					i(275036),	-- Pauldron of Order
				},
			}),
			q(94927, {	-- Dunston Checks Out
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = ALLIANCE_ONLY,
				lvl = 38,
				groups = {
					i(275023),	-- Bolder'ok Loincloth
					i(275025),	-- Dunston's Ogre Duster
					i(275021),	-- Prisoner Handwraps
				},
			}),
			q(94892, {	-- Dying Wish
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 94887,	-- Saving Marshal Ryan
				qi = 266428,	-- Marshal Ryan's Crest (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(94672, {	-- Encroaching Twilight
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/8 Twilight Raider slain
						provider = { "n", 256952 },	-- Twilight Raider
					}),
					objective(2, {	-- 0/8 Twilight Shadowmancer slain
						provider = { "n", 254560 },	-- Twilight Shadowmancer
					}),
					objective(3, {	-- 0/8 Twilight Neophyte slain
						provider = { "n", 256798 },	-- Twilight Neophyte
					}),
				},
			}),
			q(94999, {	-- Eyes for the Watchman
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 43.5, 82.5.
				qi = 267244,	-- Care Package (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(93971, {	-- Farholde Scouting Report
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Farholde Scouting Report
						provider = { "i", 263930 },	-- Farholde Scouting Report
					}),
					i(275041),	-- Bloodied Sash
					i(275040),	-- Head-Harvest Crossbow
				},
			}),
			q(96107, {	-- Feathers for Fletching
				qg = 258031,	-- Neza Bloodsnout
				coord = { 60.4, 47.8, MAP.RIVERGLADES },
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/6 Plains Buzzard Feather
						provider = { "i", 271793 },	-- Plains Buzzard Feather
						cr = 263343,	-- Low Plains Buzzard
					}),
				},
			}),
			q(95951, {	-- Fetch 'n' Fletch
				qg = 263190,	-- Tan'jani
				coord = { 58.2, 45.2, MAP.RIVERGLADES },
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/20 Makeshift Stickin' Spear
						provider = { "i", 271630 },	-- Makeshift Stickin' Spear
					}),
				},
			}),
			q(94885, {	-- Field Marshal's Log
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 47.3, 51.1.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Field Marshal's Log
						provider = { "i", 266427 },	-- Field Marshal's Log
					}),
				},
			}),
			q(95913, {	-- Fit for a Princess
				-- Giver: Contributor Report accepted it at 63.8, 82.3, where Tessa Dawnbright stands.
				sourceQuest = 95561,	-- Apple of My Eye
				qg = 263089,	-- Tessa Dawnbright
				coord = { 63.8, 82.2, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/3 Coyote Pelt
						provider = { "i", 271432 },	-- Coyote Pelt
						cr = 259267,	-- Plains Coyote
					}),
					i(274932),	-- Coyote Hide Wraps
					i(274931),	-- Fur-Lined Bracers
				},
			}),
			q(94615, {	-- Foal Play
				-- Giver: the previous quest ends at Benjy Wheeler, who also takes this one in.
				sourceQuest = 94613,	-- My Kingdom for a Horse
				qg = 258317,	-- Benjy Wheeler
				coord = { 54.6, 72.8, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Pawprint Tracing
						provider = { "i", 267223 },	-- Pawprint Tracing
					}),
				},
			}),
			q(93787, {	-- Food for the Taking
				sourceQuest = 93786,	-- A Message in Blood
				qg = 256418,	-- Krom'rosh
				coord = { 59.4, 45.4, MAP.RIVERGLADES },
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/6 Feed Satchel
						provider = { "i", 262640 },	-- Feed Satchel
					}),
				},
			}),
			q(95943, {	-- Foreman's Plight
				-- Giver: Contributor Report accepted it at 63.3, 80.6, where Bertrand Ironbrow stands.
				qg = 260070,	-- Bertrand Ironbrow <Foreman>
				coord = { 63.2, 80.6, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Foreman's Crate
						provider = { "i", 271620 },	-- Foreman's Crate
					}),
				},
			}),
			q(95059, {	-- Frazzlespark's Crate [A]
				qg = 255897,	-- Friz Frazzlespark <Specialty Goods>
				coord = { 77.0, 52.8, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Frazzlespark's Crate
						provider = { "i", 276066 },	-- Frazzlespark's Crate
					}),
				},
			}),
			q(95062, {	-- Frazzlespark's Crate [H]
				qg = 255897,	-- Friz Frazzlespark <Specialty Goods>
				coord = { 77.0, 52.8, MAP.RIVERGLADES },
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Frazzlespark's Crate
						provider = { "i", 276066 },	-- Frazzlespark's Crate
					}),
				},
			}),
			q(94614, {	-- Freshwater Fiends
				qg = 258317,	-- Benjy Wheeler
				coord = { 54.6, 72.8, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/8 Mudfin Warrior slain
						provider = { "n", 258574 },	-- Mudfin Warrior
					}),
					objective(2, {	-- 0/8 Mudfin Oracle slain
						provider = { "n", 258573 },	-- Mudfin Oracle
					}),
				},
			}),
			q(95219, {	-- From Port to Port
				qg = 255897,	-- Friz Frazzlespark <Specialty Goods>
				coord = { 77.0, 52.8, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 40,
				groups = {
					objective(1, {	-- 0/1 Cask of Powderfuse Port
						provider = { "i", 276068 },	-- Cask of Powderfuse Port
					}),
				},
			}),
			q(94843, {	-- From Seed to Sprout
				qg = 256438,	-- Halligan Turner <Foreman>
				coord = { 41.0, 62.8, MAP.RIVERGLADES },
				qi = 266161,	-- Tree Sprouting Kit (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/5 Sapling planted
						provider = { "o", 621767 },	-- Sapling planted
						coord = { 37.5, 63.3, MAP.RIVERGLADES },
					}),
				},
			}),
			q(96063, {	-- Gaseous Gold
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 68.2, 48.7.
				lvl = 36,
				groups = {
					objective(1, {	-- 0/8 Marsh Gas Vial
						provider = { "i", 272004 },	-- Marsh Gas Vial
					}),
					i(274922),	-- Riverglades Marsh Gas
				},
			}),
			q(95322, {	-- Get the Goods
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95295,	-- I Know a Guy
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Bloodsail Trunk examined
						provider = { "o", 639870 },	-- Bloodsail Trunk examined
					}),
				},
			}),
			q(94532, {	-- Gnoll Infestation [H]
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/8 Redridge Mystic slain
						provider = { "n", 255770 },	-- Redridge Mystic
					}),
					objective(2, {	-- 0/8 Redridge Trapper slain
						provider = { "n", 255772 },	-- Redridge Trapper
					}),
					objective(3, {	-- 0/6 Redridge Brute slain
						provider = { "n", 255769 },	-- Redridge Brute
					}),
				},
			}),
			q(94678, {	-- Gnoll Infestation [A]
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 39.5, 74.6.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/8 Redridge Mystic slain
						provider = { "n", 255770 },	-- Redridge Mystic
					}),
					objective(2, {	-- 0/8 Redridge Trapper slain
						provider = { "n", 255772 },	-- Redridge Trapper
					}),
					objective(3, {	-- 0/6 Redridge Brute slain
						provider = { "n", 255769 },	-- Redridge Brute
					}),
				},
			}),
			q(95988, {	-- Goes Down Smooth
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 78.8, 54.0, where Innkeeper Zizplink and Fimbo Greasemitz both stand.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/3 Crawler Spittle
						provider = { "i", 271650 },	-- Crawler Spittle
						cr = 256807,	-- Shore Crawler
					}),
					objective(2, {	-- 0/1 Fresh Chum
						provider = { "i", 271657 },	-- Fresh Chum
					}),
					objective(3, {	-- 0/1 Goblin Degreaser
						provider = { "i", 271653 },	-- Goblin Degreaser
					}),
					objective(4, {	-- 0/1 Expired Poison
						provider = { "i", 271654 },	-- Expired Poison
					}),
					objective(5, {	-- 0/1 Zizplink's Grocery List
						provider = { "i", 276101 },	-- Zizplink's Grocery List
					}),
					i(274935),	-- Tessa's Tonic
				},
			}),
			q(95935, {	-- Hail the Dragonslayer [A]
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Head of Scaldaron
						provider = { "i", 271612 },	-- Head of Scaldaron
					}),
				},
			}),
			q(95936, {	-- Hail the Dragonslayer [H]
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Head of Scaldaron
						provider = { "i", 271613 },	-- Head of Scaldaron
					}),
				},
			}),
			q(94923, {	-- Hats Off
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 43.4, 82.6.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Robbie's Hat
						provider = { "i", 266884 },	-- Robbie's Hat
					}),
				},
			}),
			q(94861, {	-- Helping Hands
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 41.4, 64.5, where If a Tree Falls, and No One Hears... (94857) was turned in.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					i(274928),	-- Curly's Chopper
					i(274929),	-- Hurley's Felling Axe
				},
			}),
			q(95975, {	-- Her World
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95957,	-- Drink Up!
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/20 Wildflower
						provider = { "i", 271823 },	-- Wildflower
					}),
				},
			}),
			q(96009, {	-- High Stakes
				-- Giver: Contributor Report accepted it at 63.4, 80.5, where Bertrand Ironbrow stands.
				qg = 260070,	-- Bertrand Ironbrow <Foreman>
				coord = { 63.4, 80.4, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/10 Wood Bundle
						provider = { "i", 271877 },	-- Wood Bundle
					}),
					i(274957),	-- Lumber Luggers
				},
			}),
			q(94924, {	-- Hunting the Hunters
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 59.3, 63.8.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/12 Rog'mar Poacher slain
						provider = { "n", 259052 },	-- Rog'mar Poacher
					}),
				},
			}),
			q(95295, {	-- I Know a Guy
				-- TODO: Wowhead doesn't list the quest giver yet.
				lvl = 36,
			}),
			q(94857, {	-- If a Tree Falls, and No One Hears...
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 46.1, 71.0 and turned it in at 41.4, 64.5, where Helping Hands (94861) was accepted next.
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(95615, {	-- In Memoriam
				-- Giver: Contributor Report accepted it at 61.7, 83.3, where Sister Rowland stands.
				qg = 262031,	-- Sister Rowland
				coord = { 61.8, 83.2, MAP.RIVERGLADES },
				qi = 269997,	-- Bundle of Candles (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/3 Candles replaced
						provider = { "o", 642517 },	-- Candles replaced
						coord = { 61.7, 83.4, MAP.RIVERGLADES },
					}),
					i(274915),	-- Sacristan Band
					i(274916),	-- Verger Greaves
					i(274918),	-- Warding Candle
				},
			}),
			q(96125, {	-- In Need of Relief
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 59.5, 63.9.
				races = ALLIANCE_ONLY,
				lvl = 38,
			}),
			q(95643, {	-- Indiscriminate Purge
				qg = 256831,	-- Apprentice Claire
				coord = { 47.6, 47.2, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/5 Empowered Brute slain
						provider = { "n", 261711 },	-- Empowered Brute
					}),
					objective(2, {	-- 0/5 Twilight Ritualist slain
						provider = { "n", 262169 },	-- Twilight Ritualist
					}),
				},
			}),
			q(95278, {	-- It Is Time, Brother...
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/1 Blood and Battle
						provider = { "i", 268705 },	-- Blood and Battle
					}),
				},
			}),
			q(95261, {	-- It Takes Guts
				-- TODO: Wowhead doesn't list the quest giver yet.
				lvl = 38,
				groups = {
					objective(1, {	-- 0/15 Beast Entrails
						provider = { "i", 268632 },	-- Beast Entrails
					}),
					objective(2, {	-- 0/8 Rotflesh Mushroom
						provider = { "i", 268664 },	-- Rotflesh Mushroom
					}),
				},
			}),
			q(94556, {	-- Jom-jom's Escape
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					i(274955),	-- Clobrok's Block Rock
					i(274952),	-- Jom-jom's Gabbar
				},
			}),
			q(95613, {	-- Keeping the Light On
				-- Giver: Contributor Report accepted it at 61.7, 83.3, where Sister Rowland stands.
				qg = 262031,	-- Sister Rowland
				coord = { 61.8, 83.2, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/5 Holy Candle
						provider = { "i", 17028 },	-- Holy Candle
					}),
				},
			}),
			q(95986, {	-- King of the Wild Plains [A]
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95984,	-- Song of the Strider [A]
				qi = 271779,	-- Tallstrider Call (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Ombassa's Hide
						provider = { "i", 281052 },	-- Ombassa's Hide
						cr = 263315,	-- Ombassa
					}),
				},
			}),
			q(96105, {	-- King of the Wild Plains [H]
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 96104,	-- Song of the Strider [H]
				qi = 271779,	-- Tallstrider Call (PQI!)
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Ombassa's Hide
						provider = { "i", 281052 },	-- Ombassa's Hide
						cr = 263315,	-- Ombassa
					}),
				},
			}),
			q(95420, {	-- Land of Giants
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95418,	-- Spread the Word
				qi = 265750,	-- Chogg's Head (PQI!)
				races = HORDE_ONLY,
				lvl = 36,
			}),
			q(94895, {	-- Lost Shipping Crate
				provider = { "o", 658115 },	-- Lost Shipping Crate
				coord = { 23.4, 72.6, MAP.DESOLACE },
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Lost Shipping Crate
						provider = { "i", 276067 },	-- Lost Shipping Crate
					}),
				},
			}),
			q(95330, {	-- Love Thy Neighbor
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 64.7, 82.9.
				qi = 268816,	-- Surplus Crops (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(95424, {	-- Might Makes Right
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/7 Twilight Mauler slain
						provider = { "n", 260968 },	-- Twilight Mauler
					}),
					objective(2, {	-- 0/7 Twilight Firecaller slain
						provider = { "n", 261497 },	-- Twilight Firecaller
					}),
				},
			}),
			q(94613, {	-- My Kingdom for a Horse
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 66.6, 81, where Demar Brant and Ashe Amberhall both stand.
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(94891, {	-- News to Farholde
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 94890,	-- Bring Me His Head [A]
				qi = 265837,	-- Kilgar's Head (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 38,
				groups = {
					i(275042),	-- Farholde Keep Tabard
				},
			}),
			q(94888, {	-- No Soldier Left Behind
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = ALLIANCE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/5 Farholde Scouts rescued
						provider = { "n", 272737 },	-- Farholde Scouts rescued
					}),
					objective(2, {	-- 0/5 Twilight Key
						provider = { "i", 265821 },	-- Twilight Key
						cr = 256799,	-- Twilight Champion
					}),
				},
			}),
			q(95982, {	-- Not My Circus
				qg = 260540,	-- Jasper Geartoggle
				coord = { 75.8, 52.6, MAP.RIVERGLADES },
				lvl = 36,
				groups = {
					objective(1, {	-- 0/10 Briny Seafood Stew
						provider = { "i", 274971 },	-- Briny Seafood Stew
					}),
				},
			}),
			q(95033, {	-- On the Other Side
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 40,
			}),
			q(94733, {	-- Our Ogre Friend
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 94964,	-- Bloodmaster's Ring (5/7)
				races = HORDE_ONLY,
				lvl = 36,
			}),
			q(95329, {	-- Out in the Field
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 66.7, 81.0, where Demar Brant and Ashe Amberhall both stand.
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(95162, {	-- Paletusk Harvesting
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/10 Chunk of Boar Meat
						provider = { "i", 769 },	-- Chunk of Boar Meat
					}),
					i(274977),	-- Recipe: Plain Ol' Paletusk
				},
			}),
			q(94669, {	-- Pay to Play
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 94668,	-- Bloodmaster's Ring (1/7)
				races = HORDE_ONLY,
				lvl = 36,
			}),
			q(96108, {	-- Poison Tips
				-- Giver: the previous quest ends at Neza Bloodsnout, who also takes this one in.
				sourceQuest = 96107,	-- Feathers for Fletching
				qg = 258031,	-- Neza Bloodsnout
				coord = { 60.4, 47.8, MAP.RIVERGLADES },
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/4 Glade Viper Venom
						provider = { "i", 271776 },	-- Glade Viper Venom
						cr = 263307,	-- Glade Viper
					}),
				},
			}),
			q(95064, {	-- Preventative Measures
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 59.5, 63.9.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/12 Rog'mar Trainee slain
						provider = { "n", 256749 },	-- Rog'mar Trainee
					}),
					i(274961),	-- Brute Slayer Band
					i(274959),	-- Farholde Horns
				},
			}),
			q(95934, {	-- Proof of Profit
				-- TODO: Wowhead doesn't list the quest giver yet.
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Cubic Draconia
						provider = { "i", 271611 },	-- Cubic Draconia
					}),
				},
			}),
			q(95141, {	-- Report to Rog'mar
				qg = 2464,	-- Commander Aggro'gosh
				coord = { 32.2, 28.8, MAP.STRANGLETHORN_VALE },
				races = HORDE_ONLY,
				lvl = 36,
			}),
			q(94992, {	-- Rescue Roundup
				qg = 259254,	-- Lost Horse
				coord = { 53.4, 66.4, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(95432, {	-- Rise Up!
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/5 Ogre Miner
						provider = { "n", 260995 },	-- Ogre Miner
					}),
				},
			}),
			q(96067, {	-- Rock 'em and Sock 'em
				-- TODO: Wowhead doesn't list the quest giver yet.
				lvl = 36,
			}),
			q(95426, {	-- Rog'mar Supplies
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 59.5, 63.9.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/8 Rog'mar Supply Crate
						provider = { "i", 274975 },	-- Rog'mar Supply Crate
					}),
				},
			}),
			q(95431, {	-- Rumblings of Discontent
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 38,
			}),
			q(95118, {	-- Saltwater Savages
				qg = 259961,	-- Wharfmaster Whizzbuzz
				coord = { 79.4, 52.6, MAP.RIVERGLADES },
				lvl = 36,
				groups = {
					objective(1, {	-- 0/8 Murloc Warrior slain
						provider = { "n", 256801 },	-- Murloc Warrior
					}),
					objective(2, {	-- 0/8 Murloc Oracle slain
						provider = { "n", 255898 },	-- Murloc Oracle
					}),
				},
			}),
			q(94887, {	-- Saving Marshal Ryan
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 66.7, 81.0, where Demar Brant and Ashe Amberhall both stand.
				sourceQuest = 94885,	-- Field Marshal's Log
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Marshal Ryan found
						provider = { "n", 257250 },	-- Marshal Ryan found
					}),
					objective(2, {	-- 0/1 Field Marshal's Log
						provider = { "i", 267256 },	-- Field Marshal's Log
					}),
				},
			}),
			q(94877, {	-- Saving Sunnyglade
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 66.6, 81, where Demar Brant and Ashe Amberhall both stand.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/8 Twilight Raider slain
						provider = { "n", 256952 },	-- Twilight Raider
					}),
					objective(2, {	-- 0/8 Twilight Shadowmancer slain
						provider = { "n", 254560 },	-- Twilight Shadowmancer
					}),
					objective(3, {	-- 0/8 Twilight Neophyte slain
						provider = { "n", 256798 },	-- Twilight Neophyte
					}),
					i(274919),	-- Neophyte's Wand
					i(274920),	-- Twilight Carver
				},
			}),
			q(94879, {	-- Scraps of Knowledge
				qg = 257591,	-- Ashe Amberhall
				coord = { 66.6, 81.0, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/5 Twilight Page
						provider = { "i", 266424 },	-- Twilight Page
					}),
				},
			}),
			q(95165, {	-- See Ya, Scallywags!
				-- TODO: Wowhead doesn't list the quest giver yet.
				qi = 268505,	-- Remote Explosive Charge (PQI!)
				lvl = 38,
				groups = {
					objective(1, {	-- 0/1 First Ship Charge planted
						provider = { "o", 629425 },	-- First Ship Charge planted
					}),
					objective(2, {	-- 0/1 Second Ship Charge planted
						provider = { "o", 629426 },	-- Second Ship Charge planted
					}),
					objective(3, {	-- 0/1 Third Ship Charge planted
						provider = { "o", 629427 },	-- Third Ship Charge planted
					}),
				},
			}),
			q(95296, {	-- Shipping and Handling (1/2)
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95294,	-- Smuggler's Bargain
				qi = 268811,	-- Friz's Secret Stash (PQI!)
				lvl = 36,
			}),
			q(95383, {	-- Shipping and Handling (2/2)
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95296,	-- Shipping and Handling (1/2)
				qi = 268811,	-- Friz's Secret Stash (PQI!)
				lvl = 36,
			}),
			q(94483, {	-- Show Them How It's Done
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/8 Farholde Priest slain
						provider = { "n", 270667 },	-- Farholde Priest
					}),
					objective(2, {	-- 0/12 Farholde Scout slain
						provider = { "n", 257926 },	-- Farholde Scout
					}),
				},
			}),
			q(95602, {	-- Sickening Lights
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/5 Twilight Ritual Circle destroyed
						provider = { "n", 272603 },	-- Twilight Ritual Circle destroyed
					}),
				},
			}),
			q(95294, {	-- Smuggler's Bargain
				-- TODO: Wowhead doesn't list the quest giver yet.
				lvl = 38,
			}),
			q(95288, {	-- Smuggler's Paradise
				-- Giver: Contributor Report accepted it at 77.1, 52.8, where Friz Frazzlespark stands.
				sourceQuests = {
					93976,	-- The Goblin Trader
					94928,	-- A Few Furs for Friz
				},
				qg = 255897,	-- Friz Frazzlespark <Specialty Goods>
				coord = { 77.0, 52.8, MAP.RIVERGLADES },
				lvl = 38,
				groups = {
					objective(1, {	-- 0/8 Smuggled Goods
						provider = { "i", 268796 },	-- Smuggled Goods
						crs = {
							257901,	-- Eastsea Buccaneer
							257910,	-- Eastsea Musketeer
						},
					}),
				},
			}),
			q(95293, {	-- Smuggler's Special
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95288,	-- Smuggler's Paradise
				qi = 268824,	-- The Friz Special (PQI!)
				lvl = 38,
			}),
			q(94533, {	-- Snargl's Snout [H]
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Snargl's Snout
						provider = { "i", 265357 },	-- Snargl's Snout
					}),
					i(274944),	-- Bloodsnout Striker
					i(274942),	-- Bristlepelt Vest
					i(274943),	-- Gnoll Crusher Leggings
					i(274946),	-- Gnollblood Robe
				},
			}),
			q(94679, {	-- Snargl's Snout [A]
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 39.5, 74.6.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Snargl's Snout
						provider = { "i", 265357 },	-- Snargl's Snout
					}),
					i(274941),	-- Bristle Hills Mystic Robe
					i(274938),	-- Gnollhide Tunic
					i(274939),	-- Southern Watch Leggings
					i(274940),	-- Unbalanced Fighting Stick
				},
			}),
			q(96084, {	-- Something's in the Water
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Filled Freshwater Phial
						provider = { "i", 281228 },	-- Filled Freshwater Phial
					}),
					objective(2, {	-- 0/1 Empty Phial
						provider = { "i", 281229 },	-- Empty Phial
					}),
				},
			}),
			q(95984, {	-- Song of the Strider [A]
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95983,	-- A Feast for Buzzards [A]
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Intact Tallstrider Beak
						provider = { "i", 271778 },	-- Intact Tallstrider Beak
						cr = 263348,	-- Roving Tallstrider
					}),
				},
			}),
			q(96104, {	-- Song of the Strider [H]
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 96103,	-- A Feast for Buzzards [H]
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Intact Tallstrider Beak
						provider = { "i", 271778 },	-- Intact Tallstrider Beak
						cr = 263348,	-- Roving Tallstrider
					}),
				},
			}),
			q(95148, {	-- Southern Watch Gnoll Report
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 39.5, 74.6.
				sourceQuest = 95147,	-- The Lost Scout
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Southern Watch Gnoll Report
						provider = { "i", 268421 },	-- Southern Watch Gnoll Report
					}),
				},
			}),
			q(95418, {	-- Spread the Word
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95427,	-- Twilight No More!
				qi = 265750,	-- Chogg's Head (PQI!)
				races = HORDE_ONLY,
				lvl = 36,
			}),
			q(95183, {	-- Step One: Rock
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/10 Good Rock
						provider = { "i", 271892 },	-- Good Rock
					}),
				},
			}),
			q(96026, {	-- Step Two: More Rock
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95183,	-- Step One: Rock
				races = HORDE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/10 Heavy Weightstone
						provider = { "i", 3241 },	-- Heavy Weightstone
					}),
					i(251460),	-- Plans: Mithril Warhammer
				},
			}),
			q(95961, {	-- Stepped Out
				-- Giver: Contributor Report accepted it at 63.8, 82.3, where Tessa Dawnbright stands.
				sourceQuest = 95913,	-- Fit for a Princess
				qg = 263089,	-- Tessa Dawnbright
				coord = { 63.8, 82.2, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(94931, {	-- Stolen Saws
				qg = 256438,	-- Halligan Turner <Foreman>
				coord = { 41.0, 62.8, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/8 Saw Blade
						provider = { "i", 266897 },	-- Saw Blade
					}),
				},
			}),
			q(95156, {	-- Stuff 'Em and Stick 'Em
				-- Giver: Contributor Report accepted it at 66.1, 79.6, where Ember Bladewhisper stands.
				qg = 260080,	-- Ember Bladewhisper <Weapons Trainer>
				coord = { 66.0, 79.6, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/3 Bundle of Hay
						provider = { "i", 268536 },	-- Bundle of Hay
					}),
				},
			}),
			q(95321, {	-- Tazzik's Dues
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95312,	-- Coming to Collect
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Tazzik confronted
						provider = { "n", 260857 },	-- Tazzik confronted
					}),
				},
			}),
			q(95260, {	-- Terrors From the Deep
				-- TODO: Wowhead doesn't list the quest giver yet.
				lvl = 38,
			}),
			q(95326, {	-- The Big Payback
				-- TODO: Wowhead doesn't list the quest giver yet.
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Ruzzgot's Shipment
						provider = { "i", 268810 },	-- Ruzzgot's Shipment
						cr = 260429,	-- Venture Co. Agent
					}),
				},
			}),
			q(93976, {	-- The Goblin Trader
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 93788,	-- Borrowed Blades
				qi = 263973,	-- Beguiler's Blade (PQI!)
				races = HORDE_ONLY,
				lvl = 36,
			}),
			q(95147, {	-- The Lost Scout
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 23.6, 67.9.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Crudely Fashioned Report
						provider = { "i", 263931 },	-- Crudely Fashioned Report
					}),
				},
			}),
			q(95267, {	-- The Monster Surfaces
				-- TODO: Wowhead doesn't list the quest giver yet.
				qi = 268647,	-- Big Ball o' Bait (PQI!)
				lvl = 38,
				groups = {
					objective(1, {	-- 0/1 Sea Monster's Head
						provider = { "i", 268633 },	-- Sea Monster's Head
					}),
					i(274948),	-- Bottle of Powderfuse Port
				},
			}),
			q(95601, {	-- The Purple Ones
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/5 Empowered Brute slain
						provider = { "n", 261711 },	-- Empowered Brute
					}),
					objective(2, {	-- 0/10 Twilight Ritualist slain
						provider = { "n", 262169 },	-- Twilight Ritualist
					}),
				},
			}),
			q(95417, {	-- The Purple Ones
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95424,	-- Might Makes Right
				races = HORDE_ONLY,
				lvl = 36,
			}),
			q(95315, {	-- The Riverglades Report
				qg = 2700,	-- Captain Nials
				qi = 275994,	-- Captain Nials' Correspondence (PQI!)
				coord = { 45.8, 47.4, MAP.ARATHI_HIGHLANDS },
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(95066, {	-- The Rog'mar Situation
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Rog'mar Report
						provider = { "i", 274981 },	-- Rog'mar Report
					}),
					i(275052),	-- Orc Bone Bow
				},
			}),
			q(95184, {	-- The Sharpest of Blades
				-- Giver: Contributor Report accepted it at 66.1, 79.6, where Ember Bladewhisper stands.
				qg = 260080,	-- Ember Bladewhisper <Weapons Trainer>
				coord = { 66.0, 79.6, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/8 Solid Sharpening Stone
						provider = { "i", 7964 },	-- Solid Sharpening Stone
					}),
				},
			}),
			q(94894, {	-- The Twilight Threat
				-- TODO: Wowhead doesn't list the quest giver yet.
				qi = 265837,	-- Kilgar's Head (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 38,
			}),
			q(94744, {	-- The Wayward Warrior
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95428,	-- Clugfist's Decree
				races = HORDE_ONLY,
				lvl = 38,
			}),
			q(94886, {	-- The Western Front
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 66.6, 81.0, where Demar Brant and Ashe Amberhall both stand.
				races = ALLIANCE_ONLY,
				lvl = 38,
			}),
			q(94680, {	-- Twilight Missives
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/3 Twilight Missive
						provider = { "i", 265745 },	-- Twilight Missive
						cr = 254560,	-- Twilight Shadowmancer
					}),
				},
			}),
			q(95427, {	-- Twilight No More!
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95601,	-- The Purple Ones
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Chogg's Head
						provider = { "i", 265750 },	-- Chogg's Head
					}),
					objective(2, {	-- 0/1 Zac's Head
						provider = { "i", 265751 },	-- Zac's Head
						cr = 256899,	-- Chogg'Zac
					}),
				},
			}),
			q(95122, {	-- Unchecked Expansion
				-- TODO: Wowhead doesn't list the quest giver yet.
				lvl = 38,
				groups = {
					objective(1, {	-- 0/8 Eastsea Raider slain
						provider = { "n", 257915 },	-- Eastsea Raider
					}),
					objective(2, {	-- 0/8 Eastsea Bombardier slain
						provider = { "n", 257916 },	-- Eastsea Bombardier
					}),
				},
			}),
			q(95119, {	-- Unfriendly Competition
				qg = 259961,	-- Wharfmaster Whizzbuzz
				coord = { 79.4, 52.6, MAP.RIVERGLADES },
				lvl = 38,
				groups = {
					objective(1, {	-- 0/10 Eastsea Buccaneer slain
						provider = { "n", 257901 },	-- Eastsea Buccaneer
					}),
					objective(2, {	-- 0/10 Eastsea Musketeer slain
						provider = { "n", 257910 },	-- Eastsea Musketeer
					}),
				},
			}),
			q(94842, {	-- Unsavory Plant Food
				qg = 256438,	-- Halligan Turner <Foreman>
				coord = { 41.0, 62.8, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/4 Jumbo Crawfish Shell
						provider = { "i", 266157 },	-- Jumbo Crawfish Shell
						cr = 258588,	-- Jumbo Crawfish
					}),
					objective(2, {	-- 0/4 Fresh Manure
						provider = { "i", 266156 },	-- Fresh Manure
					}),
					objective(3, {	-- 0/8 Mudfin Murloc Head
						provider = { "i", 267266 },	-- Mudfin Murloc Head
						crs = {
							255899,	-- Murloc Tideskimmer
							258573,	-- Mudfin Oracle
							258574,	-- Mudfin Warrior
						},
					}),
				},
			}),
			q(95425, {	-- Unworthy Champion
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = HORDE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Skullbasher
						provider = { "i", 269257 },	-- Skullbasher
					}),
				},
			}),
			q(96085, {	-- Upstream Contamination
				-- TODO: Wowhead doesn't list the quest giver yet.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Contaminant eliminated
						provider = { "n", 263615 },	-- Contaminant eliminated
					}),
					i(3928),	-- Superior Healing Potion
				},
			}),
			q(95912, {	-- WANTED: Blademaster Kaijo
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 65.9, 81.1.
				races = ALLIANCE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/1 Blademaster's Banner
						provider = { "i", 271425 },	-- Blademaster's Banner
						cr = 263071,	-- Blademaster Kaijo
					}),
					i(287072),	-- Bladewhisper's Namesake
					i(276102),	-- Bladewind
				},
			}),
			q(95991, {	-- WANTED: Ghostmaw [A]
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 65.6, 80.8.
				races = ALLIANCE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/1 Ghostmaw's Fang
						provider = { "i", 271828 },	-- Ghostmaw's Fang
						cr = 263380,	-- Ghostmaw
					}),
					i(274962),	-- Crocskin Waders
				},
			}),
			q(95992, {	-- WANTED: Ghostmaw [H]
				provider = { "o", 645164 },	-- WANTED!
				coord = { 59.5, 47.0, MAP.RIVERGLADES },
				races = HORDE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/1 Ghostmaw's Fang
						provider = { "i", 271828 },	-- Ghostmaw's Fang
						cr = 263380,	-- Ghostmaw
					}),
					i(274962),	-- Crocskin Waders
				},
			}),
			q(95120, {	-- WANTED: Old Rot-Chum
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 78.5, 53.9, the same spot as WANTED: Trapclaw (95254), which starts from the WANTED! poster (628948).
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Rot-Covered Harpoon
						provider = { "i", 268341 },	-- Rot-Covered Harpoon
					}),
					i(274963),	-- Rot-Covered Harpoon
				},
			}),
			q(95882, {	-- WANTED: Scoutmaster Vargas
				provider = { "o", 707249 },	-- Wanted
				coord = { 59.6, 46.9, MAP.RIVERGLADES },
				races = HORDE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/1 Scoutmaster's Eye
						provider = { "i", 268581 },	-- Scoutmaster's Eye
						cr = 260211,	-- Scoutmaster Vargas
					}),
					i(276105),	-- Scoutmaster's Eyepatch
				},
			}),
			q(95254, {	-- WANTED: Trapclaw
				provider = { "o", 628948 },	-- WANTED!
				coord = { 78.5, 53.9, MAP.RIVERGLADES },
				lvl = 36,
				groups = {
					objective(1, {	-- 0/1 Trapclaw's Pincer
						provider = { "i", 268586 },	-- Trapclaw's Pincer
						cr = 260235,	-- Trapclaw
					}),
					i(16766),	-- Undermine Clam Chowder
				},
			}),
			q(95325, {	-- We've Been Robbed!
				-- TODO: Wowhead doesn't list the quest giver yet.
				sourceQuest = 95322,	-- Get the Goods
				lvl = 36,
			}),
			q(94829, {	-- What We Lost
				-- Giver: Contributor Report accepted it at 52.7, 42.4, where Farmer Elbrim stands.
				qg = 258697,	-- Farmer Elbrim
				coord = { 52.8, 42.4, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/5 Farmers' Mementos
						provider = { "i", 266148 },	-- Farmers' Mementos
						cr = 256952,	-- Twilight Raider
					}),
					objective(2, {	-- 0/5 Mementos buried
						provider = { "o", 621813 },	-- Mementos buried
					}),
				},
			}),
			q(94618, {	-- Wheeler's Fleeing Steeds
				qg = 258317,	-- Benjy Wheeler
				coord = { 54.6, 72.8, MAP.RIVERGLADES },
				qi = 267178,	-- Wheeler's Steed Feed (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 36,
			}),
			q(96081, {	-- Wound Dressings
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 65.5, 79.0.
				races = ALLIANCE_ONLY,
				lvl = 36,
				groups = {
					objective(1, {	-- 0/20 Mageweave Cloth
						provider = { "i", 4338 },	-- Mageweave Cloth
					}),
				},
			}),
		}),
		n(VENDORS, {
			n(263230, {	-- Dorb <Rare Goods>
				coord = { 63.8, 17.0, MAP.RIVERGLADES },
				groups = {
					i(271646, {	-- How to Make Friend
						isLimited = true,
					}),
					i(271648, {	-- Ogre Tooth Cleaner
						isLimited = true,
					}),
					i(271647, {	-- Once Used Shoe
						isLimited = true,
					}),
				},
			}),
			n(259962, {	-- Fimbo Greasemitz
				coord = { 79.0, 54.2, MAP.RIVERGLADES },
				groups = {
					i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
					i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
				},
			}),
			n(260566, {	-- Fizzix Boomshot <Gunsmith>
				coord = { 78.6, 53.6, MAP.RIVERGLADES },
				groups = {
					i(18650),	-- Schematic: EZ-Thro Dynamite II (RECIPE!)
				},
			}),
			n(255897, {	-- Friz Frazzlespark <Specialty Goods>
				coord = { 77.1, 52.9, MAP.RIVERGLADES },
				sym = {{ "select", "itemID",
					-- Weapons
					2520,	-- Broadsword
					2521,	-- Flamberge
					2522,	-- Crescent Axe
					2523,	-- Bullova
					2524,	-- Truncheon
					2525,	-- War Hammer
					2526,	-- Main Gauche
					2527,	-- Battle Staff
					-- Poison Supplies
					-- Not included.
				}},
				groups = bubbleDownClassicRep(2827, {	-- Powderfuse
					{	-- Neutral
						
					}, {	-- Friendly
						i(276200),	-- Crawler's Clackers
						i(276202),	-- Disengagement Ring
						i(276201),	-- Misplaced Pantaloons
					}, {	-- Honored
						i(276203),	-- Primitive Fishing Pole
						i(276204),	-- Thrash's Trash
					}, {	-- Revered
						i(276199),	-- Haughty Fellow's Monocle
					}, {	-- Exalted
					},
				}),
			}),
			n(272435, {	-- Goren Grayfellow <Armorer>
				coord = { 37.7, 76.0, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				sym = {{ "select", "itemID",
					2417,	-- Augmented Chain Vest
					2419,	-- Augmented Chain Belt
					2418,	-- Augmented Chain Leggings
					2420,	-- Augmented Chain Boots
					2421,	-- Augmented Chain Bracers
					2422,	-- Augmented Chain Gloves
					3891,	-- Augmented Chain Helm
					17189,	-- Metal Buckler
					2448,	-- Heavy Pavise
					2429,	-- Russet Vest
					3593,	-- Russet Belt
					2431,	-- Russet Pants
					2432,	-- Russet Boots
					3594,	-- Russet Bracers
					2434,	-- Russet Gloves
					3889,	-- Russet Hat
					2463,	-- Studded Doublet
					2464,	-- Studded Belt
					2465,	-- Studded Pants
					2467,	-- Studded Boots
					2468,	-- Studded Bracers
					2469,	-- Studded Gloves
					3890,	-- Studded Hat
				}},
			}),
			n(260487, {	-- Gritta Chumwater <Fisherman>
				coord = { 78.4, 55.1, MAP.RIVERGLADES },
				groups = {
					i(6330),	-- Recipe: Bristle Whisker Catfish (RECIPE!)
					i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
					i(271657),	-- Fresh Chum
				},
			}),
			n(255895, {	-- Grizzek <General Goods>
				coord = { 76.6, 53.3, MAP.RIVERGLADES },
				groups = {
					i(16767),	-- Recipe: Undermine Clam Chowder (RECIPE!)
				},
			}),
			n(255894, {	-- Innkeeper Zizplink <Innkeeper>
				coord = { 78.8, 54.0, MAP.RIVERGLADES },
				groups = {
					i(18046),	-- Recipe: Tender Wolf Steak (RECIPE!)
				},
			}),
			n(260565, {	-- Kor'gar <Engineering Supplies>
				coord = { 77.6, 50.8, MAP.RIVERGLADES },
				groups = {
					i(271653),	-- Goblin Degreaser
					i(16046),	-- Schematic: Masterwork Target Dummy (RECIPE!)
					i(16047),	-- Schematic: Thorium Tube (RECIPE!)
				},
			}),
			n(260560, {	-- Fimbo Greasemitz <Poison Vendor>
				coord = { 76.8, 51.1, MAP.RIVERGLADES },
				groups = {
					i(271654),	-- Expired Poison
				},
			}),
			n(263326, {	-- Madam Swyndle <Agent of the Black Market>
				coord = { 78.3, 51.8, MAP.RIVERGLADES },
				sym = { SymSelector.select("BMAH") },	-- Select BMAH header
			}),
			n(259860, {	-- Martha Wellsworth <General Goods>
				coord = { 64.2, 84.0, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				groups = {
					i(251460),	-- Plans: Mithril Warhammer (RECIPE!)
					i(274977),	-- Recipe: Plain Ol' Paletusk (RECIPE!)
				},
			}),
			n(272646, {	-- Miranda Turner <Cooking Supplier>
				coord = { 63.6, 82.6, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				groups = {
					i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
					i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
				},
			}),
			n(263384, {	-- Mister Graphed <Agent of the Black Market>
				coord = { 78.1, 51.9, MAP.RIVERGLADES },
				groups = {
					i(271871, {	-- Gift of Galloping
						cost = 1500000,	-- 150g
					}),
					i(12363),	-- Arcane Crystal
					i(249425),	-- Bauxite
					i(13468),	-- Black Lotus
					i(248822),	-- Death Lotus
					i(248819),	-- Fel Crystal
					i(249399),	-- Frilled Lichen
					i(249426),	-- Pitchblende
					i(249427),	-- Pristine Leather
					i(249428),	-- Pristine Hide
					i(249429),	-- Pristine Scale
					i(249391),	-- Pyrite
					i(249424),	-- Rosecap
					i(249274),	-- Stranglevine
					i(248820),	-- Torbernite
				},
			}),
			n(259861, {	-- Paige Armstrong
				coord = { 64.3, 82.0, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				sym = {{ "select", "itemID",
					2429,	-- Russet Vest
					3593,	-- Russet Belt
					2431,	-- Russet Pants
					2432,	-- Russet Boots
					3594,	-- Russet Bracers
					2434,	-- Russet Gloves
					3889,	-- Russet Hat
					2463,	-- Studded Doublet
					2464,	-- Studded Belt
					2465,	-- Studded Pants
					2467,	-- Studded Boots
					2468,	-- Studded Bracers
					2469,	-- Studded Gloves
					3890,	-- Studded Hat
					2417,	-- Augmented Chain Vest
					2419,	-- Augmented Chain Belt
					2418,	-- Augmented Chain Leggings
					2420,	-- Augmented Chain Boots
					2421,	-- Augmented Chain Bracers
					2422,	-- Augmented Chain Gloves
					3891,	-- Augmented Chain Helm
					17189,	-- Metal Buckler
					2448,	-- Heavy Pavise
					2520,	-- Broadsword
					2521,	-- Flamberge
					2522,	-- Crescent Axe
					2523,	-- Bullova
					2524,	-- Truncheon
					2525,	-- War Hammer
					2526,	-- Main Gauche
					2527,	-- Battle Staff
				}},
			}),
			n(6568, {	-- Vizzklick <Tailoring Supplies>
				coord = { 77.3, 51.3, MAP.RIVERGLADES },
				groups = {
					i(7088),	-- Pattern: Crimson Silk Robe (RECIPE!)
					i(21358),	-- Pattern: Soul Pouch (RECIPE!)
					i(253665),	-- Pattern: Linen Reagent Bag (RECIPE!)
					i(253668),	-- Pattern: Woolen Reagent Bag (RECIPE!)
				},
			}),
		}),
	},
});
