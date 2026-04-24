-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_MOP, n(REMIX_MOP, bubbleDown({ ["timeline"] = { ADDED_10_2_7, REMOVED_MOP_REMIX_END } }, {
	m(THE_JADE_FOREST, {
		["icon"] = 617824,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(19882),	-- Campaign: The Jade Forest [A] (automated)
				ach(19883),	-- Campaign: The Jade Forest [H] (automated)
				ach(19993),	-- Elusive Foes: The Jade Forest
				ach(20026),	-- Explore Jade Forest (automated)
				ach(19977, {	-- Hidden Treasures: The Jade Forest
					crit(65478, {	-- Ship's Storage
						["_quests"] = { 31396 },
					}),
					crit(65479, {	-- Ancient Pandaren Tea Pot
						["_quests"] = { 31400 },
					}),
					crit(65480, {	-- Lucky Pandaren Coin
						["_quests"] = { 31401 },
					}),
					crit(65481, {	-- Pandaren Ritual Stone
						["_quests"] = { 31404 },
					}),
				}),
				ach(20008, {	-- Looking For Group: The Jade Forest
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19923,	-- Greenstone Village
						19893,	-- A Brewing Storm
						19894,	-- Temple of the Jade Serpent
					}},
				}),
				ach(19872, {	-- The Jade Forest
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20008,	-- Looking For Group: The Jade Forest
						19912,	-- Order of the Cloud Serpent
						19962,	-- Tour The Jade Forest
					}},
					["groups"] = {
						i(220777),	-- Cherry Blossom Trail (TOY!)
					},
				}),
				ach(19962, {	-- Tour The Jade Forest
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19993,	-- Elusive Foes: The Jade Forest
						20026,	-- Explore Jade Forest
						19977,	-- Hidden Treasures: The Jade Forest
					}},
				}),
			}),
			n(FACTIONS, {
				faction(FACTION_ORDER_OF_THE_CLOUD_SERPENT, {	-- Order of the Cloud Serpent
					n(ACHIEVEMENTS, {
						ach(19912),		-- Order of the Cloud Serpent
					}),
				}),
			}),
			n(QUESTS, {
				q(81638, {	-- Home Is Where the Hearthstone Is
					["sourceQuests"] = { 79440 },	-- Recalling the War (need to confirm) we can use retail errors to confirm
					["provider"] = { "n", 65907 },	-- Jiayi Applebloom
					["coord"] = { 44.8, 84.4, THE_JADE_FOREST },
					["races"] = ALLIANCE_ONLY,
				}),
				q(80012, {	-- Dragonriding
					["sourceQuests"] = { 79440 },	-- Recalling the War
					["provider"] = { "n", 218468 },	-- Moratari
					["coord"] = { 28.5, 14.0, THE_JADE_FOREST },	-- missing ally coords
				}),
				q(80013, {	-- How to Glide with Your Dragon
					["sourceQuests"] = { 80012 },	-- Dragonriding
					["provider"] = { "n", 218469 },	-- Lord Anderstrasz
					["coord"] = { 65.2, 37.2, THE_JADE_FOREST },
					["groups"] = {
						i(216712),	-- Bronze Timepiece (QI!)
					},
				}),
				q(80015, {	-- How to Dive with Your Dragon
					["sourceQuests"] = { 80013 },	-- How to Glide with Your Dragon
					["provider"] = { "n", 218469 },	-- Lord Anderstrasz
					["coord"] = { 65.2, 37.2, THE_JADE_FOREST },
					["groups"] = {
						i(216712),	-- Bronze Timepiece (QI!)
					},
				}),
				q(80016, {	-- The Need For Higher Velocities
					["sourceQuests"] = { 80015 },	-- How to Dive with Your Dragon
					["provider"] = { "n", 218469 },	-- Lord Anderstrasz
					["coord"] = { 65.2, 37.2, THE_JADE_FOREST },
					["groups"] = {
						i(216712),	-- Bronze Timepiece (QI!)
					},
				}),
				q(80017, {	-- The Need For Higher Altitudes
					["sourceQuests"] = { 80016 },	-- The Need For Higher Velocities
					["provider"] = { "n", 218469 },	-- Lord Anderstrasz
					["coord"] = { 65.2, 37.2, THE_JADE_FOREST },
					["groups"] = {
						i(216712),	-- Bronze Timepiece (QI!)
					},
				}),
				q(80018, {	-- Fashionable Flying
					["sourceQuests"] = { 80017 },	-- The Need For Higher Altitudes
					["provider"] = { "n", 218469 },	-- Lord Anderstrasz
					["coord"] = { 65.2, 37.2, THE_JADE_FOREST },
				}),
				q(80349, {	-- Time to Return
					["sourceQuests"] = { 80018 },	-- Fashionable Flying
					["provider"] = { "n", 218469 },	-- Lord Anderstrasz
					["coord"] = { 65.2, 37.2, THE_JADE_FOREST },
				}),
				q(79489, {	-- Gems of Power
					["sourceQuests"] = { 79440 },	-- Recalling the War
				}),
				q(80196, {	-- Extract a Gem
					["sourceQuests"] = { 79489 },	-- Gems of Power
				}),
				q(80197, {	-- Combine Gems
					["sourceQuests"] = { 80196 },	-- Extract a Gem
				}),
				q(78893, {	-- A Scrap of Bronze
					["sourceQuests"] = { 79440 },	-- Recalling the War
					["provider"] = { "i", 210526 },	-- Unraveling Tunic (QI!)
					["groups"] = {
						i(217174),	-- Bronze (QI!)
					},
				}),
				q(81976, {	-- Bazaar, Isn't It?
					-- ["sourceQuests"] = { xx },	-- TODO: some of level up/turn in HQTs?
					["provider"] = { "n", 222186 },	-- Nostwin
					["coord"] = { 45.8, 84.7, THE_JADE_FOREST },	-- missing horde coords
					["groups"] = {
						i(217930),	-- Nostwin's Voucher
					},
				}),
				q(78894, {	-- Infinite Growth
					-- ["sourceQuests"] = { 81976 },	-- Bazaar, Isn't It? / unsure since I didn't teleport right after I get voucher
					["provider"] = { "n", 213664 },	-- Momentus
					["coord"] = { 42.5, 27.3, THE_JADE_FOREST },
				}),
				q(83775, {	-- Infinite Growth II
					["sourceQuests"] = { 78894 },	-- Infinite Growth
					["provider"] = { "n", 213664 },	-- Momentus
					["coord"] = { 42.5, 27.3, THE_JADE_FOREST },
					["lvl"] = { 50 },
				}),
				q(83776, {	-- Infinite Growth III
					["sourceQuests"] = { 83775 },	-- Infinite Growth II
					["provider"] = { "n", 213664 },	-- Momentus
					["coord"] = { 42.5, 27.3, THE_JADE_FOREST },
					["lvl"] = { 60 },
				}),
				q(83777, {	-- Infinite Growth IV
					["sourceQuests"] = { 83776 },	-- Infinite Growth III
					["provider"] = { "n", 213664 },	-- Momentus
					["coord"] = { 42.5, 27.3, THE_JADE_FOREST },
					["lvl"] = { 70 },
				}),
				q(80441, {	-- Aid the Order of the Cloud Serpent
					["provider"] = { "n", 58564 },	-- Elder Anli
					["coord"] = { 57.6, 44.9, THE_JADE_FOREST },
					["cost"] = { { "c", 738, 10 } },	-- 10x Lesser Charm of Good Fortune
					["repeatable"] = true,
				}),
				q(80429, {	-- Aid the August Celestials
					["provider"] = { "n", 57319 },	-- Elder Sage Storm-Sing
					["coord"] = { 53.8, 61.9, THE_JADE_FOREST },
					["cost"] = { { "c", 738, 10 } },	-- 10x Lesser Charm of Good Fortune
					["repeatable"] = true,
				}),
				q(83793, {	-- Aid the Jinyu [A]
					["provider"] = { "n", 54960 },	-- Elder Lusshan
					["coord"] = { 58.8, 80.6, THE_JADE_FOREST },
					["cost"] = { { "c", 738, 10 } },	-- 10x Lesser Charm of Good Fortune
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(83795, {	-- Aid the Hozen [H]
					["provider"] = { "n", 56336 },	-- Chief Kah Kah
					["coord"] = { 28.0, 47.0, THE_JADE_FOREST },
					["cost"] = { { "c", 738, 10 } },	-- 10x Lesser Charm of Good Fortune
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
			}),
			n(ZONE_REWARDS, {
				n(ARMOR, {
					filter(CLOTH, {
						i(213668),	-- Spirit-Waker's Bracers
						i(213667),	-- Spirit-Waker's Cord
						i(213663),	-- Spirit-Waker's Gloves
						i(213664),	-- Spirit-Waker's Hood
						i(213665),	-- Spirit-Waker's Leggings
						i(213661),	-- Spirit-Waker's Robe
						i(213662),	-- Spirit-Waker's Sandals
						i(213666),	-- Spirit-Waker's Shoulderpads
					}),
					filter(LEATHER, {
						i(214067),	-- Ghost Fox Bindings
						i(214063),	-- Ghost Fox Cover
						i(214061),	-- Ghost Fox Footguards
						i(214062),	-- Ghost Fox Grips
						i(214064),	-- Ghost Fox Legguards
						i(214065),	-- Ghost Fox Spaulders
						i(214060),	-- Ghost Fox Vest
						i(214066),	-- Ghost Fox Waistband
					}),
					filter(MAIL, {
						i(214460),	-- Windreaver's Belt
						i(214457),	-- Windreaver's Boots
						i(214454),	-- Windreaver's Bracers
						i(214459),	-- Windreaver's Gauntlets
						i(214456),	-- Windreaver's Hauberk
						i(214458),	-- Windreaver's Helm
						i(214463),	-- Windreaver's Leggings
						i(214461),	-- Windreaver's Spaulders
					}),
					filter(PLATE, {
						i(214762),	-- Spiritguard's Bracers
						i(214761),	-- Spiritguard's Breastplate
						i(214765),	-- Spiritguard's Gauntlets
						i(214766),	-- Spiritguard's Girdle
						i(214764),	-- Spiritguard's Helm
						i(214768),	-- Spiritguard's Legguards
						i(214767),	-- Spiritguard's Pauldrons
						i(214763),	-- Spiritguard's Sabatons
					}),
				}),
				n(WEAPONS, {
					i(215871),	-- Amberweaver's Conduit (wowhead)
					i(210342),	-- Bataari Hacker (wowhead)
					i(215980),	-- Binan Falchion (wowhead)
					i(215641),	-- Claws of the Wakener (wowhead)
					i(215558),	-- Cloudbender's Crossbow (wowhead)
					i(215938),	-- Cloudfall Edge (wowhead)
					i(215949),	-- Crane Temple Sword (wowhead)
					i(215803),	-- Dragonguard's Glaive (wowhead)
					i(216567),	-- Dreadwood Bulwark (wowhead)
					i(215859),	-- Faded Forest Staff (wowhead)
					i(216574),	-- Flamecaller's Bulwark (wowhead)
					i(215679),	-- Golden Crane Rod (wowhead)
					i(215738),	-- Grummle Mace (wowhead)
					i(215780),	-- Hatred's Warmace (wowhead)
					i(211163),	-- Hidden Pass Knuckles (wowhead)
					i(216418),	-- Hozen Dagger (wowhead)
					i(215487),	-- Hozen Waraxe (wowhead)
					i(215747),	-- Mace of the Rikkitun (wowhead)
					i(216001),	-- Mountainsage Rod (wowhead)
					i(210638),	-- Mushan Hewer (wowhead)
					i(216423),	-- Pandaren Basher (wowhead)
					i(216442),	-- Pandaren Decorative Fan (wowhead)
					i(216024),	-- Pandaren Hewer (wowhead)
					i(216438),	-- Pandaren Manuscript (wowhead)
					i(216542),	-- Pandaren Protector (wowhead)
					i(216479),	-- Pandaren Waveblade (wowhead)
					i(211149),	-- Rikkitun Warbow (wowhead)
					i(215595),	-- Saltscale Shanker (wowhead)
					i(216611),	-- Seawatch Speargun (wowhead)
					i(216572),	-- Shomi's Barrier (wowhead)
					i(215590),	-- Shomi's Shanker (wowhead)
					i(215601),	-- Spike of the Rikkitun (wowhead)
					i(215866),	-- Staff of Focus (wowhead)
					i(215743),	-- Sunsoul Smasher (wowhead)
					i(215942),	-- Swordmistress' Edge (wowhead)
					i(216475),	-- Temple Trainee's Blade (wowhead)
					i(216471),	-- Tian Monastery Channel (wowhead)
					i(215863),	-- Torch of Midnight (wowhead)
					i(215700),	-- Trailseeker Longrifle (wowhead)
					i(215946),	-- Valiant's Honorblade (wowhead)
					i(215675),	-- Wakener's Lantern (wowhead)
				}),
			}),
		},
	}),
}))));
