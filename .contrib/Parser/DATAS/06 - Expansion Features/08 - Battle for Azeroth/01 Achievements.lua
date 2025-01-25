-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.BFA, {
	n(ACHIEVEMENTS, {	-- Achievements (Achievements that don't really fit into a specific Location which are specific to BFA)
		ach(40953, bubbleDownSelf({	-- A Farewell to Arms
			["timeline"] = { ADDED_11_0_7 },
		},{
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				12947,	-- Azerothian Diplomat
				12807,	-- Battle for Azeroth Dungeon Hero
				40961,	-- Batle of Dazar'alor
				40959,	-- Black Empire State of Mind
				41209,	-- Dressed to Kill: Battle for Azeroth
				13414,	-- Crucible of Storms
				13134,	-- Expedition Leader
				40958,	-- Full Heart, Can't Lose
				40956,	-- I'm On Island Time
				40957,	-- Maximum Effort
				13541,	-- Mecha-Done
				40963,	-- Ny'alotha, the Waking City
				40962,	-- The Eternal Palace
				13994,	-- Through the Depths of Visions
				14730,	-- To All the Squirrels I Set Sail to See
				40960,	-- Uldir
				13638,	-- Undersea Usurper
				40955,	-- War Stories
			}},
			["groups"] = {
				i(235515),	-- Jani's Trashpile (MOUNT!)
			},
		})),
		ach(13036),		-- A Loa of a Tale (automated)
		pvp(ach(12573, {	-- Band of Brothers
			crit(41008),		-- Honorable Kill
			crit(41009),		-- Loot Player Bounty
			crit(41010),		-- Complete Rare Elite World Quest
			crit(41011),		-- Loot War Supply Chest
		})),
		ach(12989, {	-- Battle for Azeroth Pathfinder, Part One
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				12988,	-- Battle for Azeroth Explorer
				12947,	-- Azerothian Diplomat
				13144,	-- Wide World of Quests
				12593,	-- Kul Tourist (A)
				12479,	-- Zandalar Forever! (H)
				12510,	-- Ready for War (A)
				12509,	-- Ready for War (H)
			}},
		}),
		ach(13250, {	-- Battle for Azeroth Pathfinder, Part Two
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				12989,	-- Battle for Azeroth Pathfinder, Part One
				13712,	-- Explore Nazjatar
				13776,	-- Explore Mechagon
			}},
			["g"] = {
				i(169162),	-- Wonderwing 2.0 (MOUNT!)
				crit(45265, {	-- Rustbolt Resistance Revered
					["_factions"] = { FACTION_RUSTBOLT_RESISTANCE },	-- Rustbolt Resistance
				}),
				crit(45266, {	-- Unshackled Revered
					["_factions"] = { FACTION_WAVEBLADE_ANKOAN },	-- Ankoan
				}),
				crit(45267, {	-- Unshackled Revered
					["_factions"] = { FACTION_THE_UNSHACKLED },	-- Unshackled
				}),
			},
		}),
		ach(13703, {	-- Battlefield Master
		-- TODO: do we maps this into every bg/brawl/island exp map?
			ach(13701),	-- Battlefield Brawler
			ach(13702),	-- Battlefield Tactician
		}),
		pvp(ach(12571)),	-- Bounty Hunting
		pvp(ach(12605, {	-- Conqueror of Azeroth (A)
			["races"] = ALLIANCE_ONLY,
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				12573,	-- Band of Brothers
				12571,	-- Bounty Hunting
				12572,	-- War Supplied
				12574,	-- Tour of Duty: Nazmir
				12576,	-- Tour of Duty: Vol'dun
				12579,	-- Tour of Duty: Drustvar
				12578,	-- Tour of Duty: Stormsong Valley
				12577,	-- Tour of Duty: Tiragarde Sound
				12575,	-- Tour of Duty: Zuldazar
			}},
			["g"] = {
				i(163577),	-- Conquerer's Scythemaw (MOUNT!)
				title(377),	-- <Name>, Conqueror of Azeroth
			},
		})),
		pvp(ach(12604, {	-- Conqueror of Azeroth (H)
			["races"] = HORDE_ONLY,
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				12573,	-- Band of Brothers
				12571,	-- Bounty Hunting
				12572,	-- War Supplied
				12574,	-- Tour of Duty: Nazmir
				12576,	-- Tour of Duty: Vol'dun
				12579,	-- Tour of Duty: Drustvar
				12578,	-- Tour of Duty: Stormsong Valley
				12577,	-- Tour of Duty: Tiragarde Sound
				12575,	-- Tour of Duty: Zuldazar
			}},
			["g"] = {
				i(163577),	-- Conquerer's Scythemaw (MOUNT!)
				title(377),	-- <Name>, Conqueror of Azeroth
			},
		})),
		un(BLACK_MARKET, ach(14183, {	-- Conspicuous Consumption
			["provider"] = { "i", 163042 },	-- Mighty Caravan Brutosaur
		})),
		ach(41209, {	-- Dressed to Kill: Battle for Azeroth
			["timeline"] = { ADDED_11_0_7 },
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				14058,	-- All Eyes On Me
				13385,	-- Daz'aling Attire
				12993,	-- Don't Warfront Me
				13585,	-- Never Lose, Never Choose To
				12991,	-- New Mog, G'huun This?
				13433,	-- Tall, Dark, and Sinister
				14059,	-- The Eyes Have It
				13571,	-- Under the Seams
			}},
		}),
		ach(13029, {	-- Eating Out of the Palm of My Tiny Hand
			crit(41575, {	-- Brutosaur of Nazmir Fed
				["description"] = "Buy Primitive Watermelon from Blind Wunja inside the cave at 34.6, 54.9 and feed it to Goramor.",
				["cost"] = { { "i", 163563, 1 } },	-- Primitive Watermelon
				["coord"] = { 32.3, 35.3, NAZMIR },	-- Goramor
				["crs"] = {
					143644,	-- Goramor
				},
			}),
			crit(41578, {	-- Brutosaur of Vol'dun Fed
				["description"] = "Buy Snake on a Stick from Rikati at 40.4, 55.4 and feed it to Ol' Stompy.",
				["cost"] = { { "i", 163567, 1 } },	-- Snake on a Stick
				["coord"] = { 62.0, 9.20, VOLDUN },	-- Ol' Stompy
				["crs"] = {
					143332,	-- Ol' Stompy
				},
			}),
			crit(41580, {	-- Brutosaur of Zuldazar Fed
				["description"] = "Buy Extra-Dry Fruitcake from Golkada at 71.2, 29.6 and feed it to Irritable Maka'fon.",
				["coord"] = { 64.0, 39.2, ZULDAZAR },	-- Irritable Maka'fon
				["crs"] = {
					130922,	-- Irritable Maka'fon
				},
			}),
		}),
		pvp(ach(13623, {	-- Fighting on Two Fronts
			crit(45752, {	-- Acquire Nazjatar Battle Commendations
				["cost"] = { { "i", 168802, 25 } },
			}),
			crit(45749, {	-- Kill Players in Mechagon
				["maps"] = { MECHAGON },
			}),
			crit(45750, {	-- Kill Players in Nazjatar
				["maps"] = { NAZJATAR },
			}),
			crit(45751, {	-- Loot 5 War Supply Chests in Nazjatar
				["maps"] = { NAZJATAR },
			}),
		})),
		pvp(a(ach(13402))),	-- Frontline Slayer (A)
		pvp(h(ach(13403))),	-- Frontline Slayer (H)
		pvp(ach(13387, {	-- Frontline Veteran (A)
			["races"] = ALLIANCE_ONLY,
			["g"] = bubbleDown({["sharedDescription"] = "Requires War Mode Active" }, {
				crit(44016, {		-- A Sound Defense
					["_quests"] = { 53711 },	-- A Sound Defense (Faction Assault WQ)
				}),
				crit(44017, {		-- Storm's Rage
					["_quests"] = { 51982 },	-- Storm's Rage (Faction Assault WQ)
				}),
				crit(44018, {		-- A Drust Cause
					["_quests"] = { 53701 },	-- A Drust Cause (Faction Assault WQ)
				}),
				crit(44019, {		-- Many Fine Heroes
					["_quests"] = { 54134 },	-- Many Fine Heroes (Faction Assault WQ)
				}),
				crit(44020, {		-- March on the Marsh
					["_quests"] = { 54136 },	-- March on the Marsh (Faction Assault WQ)
				}),
				crit(44021, {		-- Ritual Rampage
					["_quests"] = { 54138 },	-- Ritual Rampage (Faction Assault WQ)
				}),
			}),
		})),
		pvp(ach(13388, {	-- Frontline Veteran (H)
			["races"] = HORDE_ONLY,
			["g"] = bubbleDown({["sharedDescription"] = "Requires War Mode Active" }, {
				crit(44022, {		-- Breaching Boralus
					["_quests"] = { 53939 },	-- Breaching Boralus (Faction Assault WQ)
				}),
				crit(44023, {		-- Romp in the Swamp
					["_quests"] = { 54135 },	-- Romp in the Swamp (Faction Assault WQ)
				}),
				crit(44024, {		-- Isolated Victory
					["_quests"] = { 53885 },	-- Isolated Victory (Faction Assault WQ)
				}),
				crit(44025, {		-- Shores of Zuldazar
					["_quests"] = { 53883 },	-- Shores of Zuldazar (Faction Assault WQ)
				}),
				crit(44026, {		-- In Every Dark Corner
					["_quests"] = { 54137 },	-- In Every Dark Corner (Faction Assault WQ)
				}),
				crit(44027, {		-- Horde of Heroes
					["_quests"] = { 54132 },	-- Horde of Heroes (Faction Assault WQ)
				}),
			}),
		})),
		a(ach(13283)),	-- Frontline Warrior (A)
		h(ach(13284)),	-- Frontline Warrior (H)
		ach(12740, {	-- Full of Scrap!
			["maps"] = {
				BORALUS,
				DAZARALOR,
			},
			["g"] = {
				ach(12739),	-- Scraptastic!
				ach(12738),	-- Holy Scrap!
			},
		}),
		ach(12482, {	-- Get Hek'd
			["description"] = "Make sure to loot the cache Jani leaves behind as you fulfill each requirement; that's what awards the actual achievement criteria.",
			["g"] = {
				crit(40037, {	-- Golden Ravasaur Egg
					["itemID"] = 156963,	-- Golden Ravasaur Egg
					["coord"] = { 71.6, 41.2, ZULDAZAR },	-- Trashpile turn-in
					["sourceQuests"] = {
						51145,	-- Curse of Jani (A)
						47442,	-- Curse of Jani (H)
					},
					["crs"] = {
						131560,	-- Feral Ravasaur
						122504,	-- Savagemane Ravasaur
						148871,	-- Voidcrafted Ravasaur
					},
				}),
				crit(40041, {	-- Vilescale Pearl
					["itemID"] = 157797,	-- Vilescale Pearl
					["coord"] = { 80.8, 46.7, NAZMIR },
					["crs"] = {
						125328,	-- Priestess Zaldraxia
						125393,	-- Vilescale Guardian
						125392,	-- Vilescale Mana Taster
						125366,	-- Vilescale Poacher
					},
				}),
				crit(40045, {	-- Charged Ranishu Antennae
					["itemID"] = 158910,	-- Charged Ranishu Antennae
					["coord"] = { 47.0, 46.6, VOLDUN },	-- Court of Zak'rajan
					["crs"] = {
						129464,	-- Ranishu Nibbler
						129473,	-- Ranishu Nibbler
						135727,	-- Ranishu Ravager
						129474,	-- Ranishu Ravager
					},
				}),
				crit(40038, {	-- Big Hunter Mon
					["sourceQuests"] = { 50332 },	-- Big Hunter Mon
					["coord"] = { 66.2, 16.6, ZULDAZAR },	-- Trashpile pick-up
				}),
				crit(40042, {	-- Snapjaw Tail
					["itemID"] = 157801,	-- Snapjaw Tail
					["coord"] = { 34.0, 75.0, NAZMIR },
					["crs"] = {
						126723,	-- Primal Snapjaw
						120588,	-- Rivermarsh Snapjaw
					},
				}),
				crit(40046, {	-- Polished Ringhorn Hoof
					["itemID"] = 158915,	-- Polished Ringhorn Hoof
					["coord"] = { 56.2, 15.3, VOLDUN },
					["crs"] = {
						130317,	-- Ringhorn Fawn
						130321,	-- Ringhorn Stag
						130316,	-- Ringhorn Strider
					},
				}),
				crit(40039, {	-- The Great Hat Robbery
					["sourceQuests"] = { 50381 },	-- The Great Hat Robbery
					["coord"] = { 61.9, 46.9, ZULDAZAR },
				}),
				crit(40043, {	-- Nazwathan Relic
					["itemID"] = 157802,	-- Nazwathan Relic
					["coord"] = { 68.5, 32.7, NAZMIR },
					["crs"] = {
						131157,	-- Nazwathan Blood Bender
						131155,	-- Nazwathan Guardian
						131156,	-- Nazwathan Hulk
					},
				}),
				crit(40047, {	-- Sturdy Redrock Jaw
					["itemID"] = 158916,	-- Sturdy Redrock Jaw
					["coord"] = { 49.3, 84.3, VOLDUN },	-- The Eternal Spring
					["crs"] = {
						134744,	-- Redrock Howler
						134718,	-- Redrock Scavenger
					},
				}),
				crit(40040, {	-- Feathered Viper Scale
					["itemID"] = 157794,	-- Feathered Viper Scale
					["coord"] = { 62.7, 20.5, ZULDAZAR },	-- Trashpile turn-in
					["sourceQuests"] = {
						51145,	-- Curse of Jani (A)
						47442,	-- Curse of Jani (H)
					},
					["crs"] = {
						132410,	-- Feathered Viper
						132409,	-- Feathered Viper
					},
				}),
				crit(40044, {	-- Taking the Loa Road
					["sourceQuests"] = { 50444 },	-- Taking the Loa Road
					["coord"] = { 53.9, 74.1, NAZMIR },
				}),
				crit(40048, {	-- Saurid Surprise
					["sourceQuests"] = { 50901 },	-- Saurid Surprise
					["coord"] = { 42.1, 72.1, VOLDUN },
				}),
			},
		}),
		ach(40956, bubbleDownSelf({	-- I'm On Island Time
			["timeline"] = { ADDED_11_0_7 },
		},{
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				12988,	-- Battle for Azeroth Explorer
				41203,	-- Bwon Voyage
				41204,	-- Dune Squad
				41202,	-- Hot Tropic
				12593,	-- Loremaster of Kul Tiras
				13294,	-- Loremaster of Zandalar
				41206,	-- Songs of Storms
				41205,	-- Sound Off
				41207,	-- When the Drust Settles
				13144,	-- Wide World of Quests
			}},
			["groups"] = {
				mount(303767),	-- Honeyback Hivemother (MOUNT!)
			},
		})),
		pvp(ach(12861, {	-- Master of Duels
			["maps"] = {
				BORALUS,
				ZULDAZAR,
			},
			["g"] = {
				title(383),	-- Contender
				ach(12863, {	-- Dueling Master
					i(163055),	-- Dueler's Tabard
					ach(12860),	-- Contender
					ach(12858),	-- Slugfest
					ach(12857),	-- Trial by Combat
					ach(12856),	-- The First Rule of Dueler's Guild
				}),
				ach(12859),	-- Prize Fighter
				ach(12862, {	-- Thirty Six and Two
					crit(41083),	-- Death Knight
					crit(41084),	-- Demon Hunter
					crit(41085),	-- Druid
				-- #if AFTER 10.0.5
					crit(57850),	-- Evokers
				-- #endif
					crit(41086),	-- Hunter
					crit(41088),	-- Mage
					crit(41087),	-- Monk
					crit(41089),	-- Paladin
					crit(41090),	-- Priest
					crit(41091),	-- Rogue
					crit(41092),	-- Shaman
					crit(41093),	-- Warlock
					crit(43156),	-- Warrior
				}),
			},
		})),
		ach(13027, {	-- Mushroom Harvest
			["g"] = {
				crit(41390, {	-- Skullcap
					["_npcs"] = { 143316 },
				}),
				crit(41391, {	-- Bane of the Woods
					["_npcs"] = { 143314 },
				}),
				crit(41392, {	-- Portakillo
					["_npcs"] = { 143313 },
				}),
				crit(41393, {	-- Toadcruel
					["_npcs"] = { 143311 },
				}),
			},
		}),
		ach(13057, {	-- Shanty Raid
			crit(41541, {	-- Shanty of the Lively Men
				["provider"] = { "i", 163714 },	-- Forbidden Sea Shanty of the Lively Men
			}),
			crit(41542, {	-- Shanty of Fruit Counting
				["provider"] = { "i", 163715 },	-- Forbidden Sea Shanty of Fruit Counting
			}),
			crit(41543, {	-- Shanty of Inebriation
				["provider"] = { "i", 163716 },	-- Forbidden Sea Shanty of Inebriation
			}),
			crit(41544, {	-- Shanty of Josephus
				["provider"] = { "i", 163717 },	-- Forbidden Sea Shanty of Josephus
			}),
			crit(41545, {	-- Shanty of the Black Sphere
				["provider"] = { "i", 163718 },	-- Forbidden Sea Shanty of the Black Sphere
			}),
			crit(41546, {	-- Shanty of the Horse
				["provider"] = { "i", 163719 },	-- Forbidden Sea Shanty of the Horse
			}),
		}),
		pvp(ach(13317, {	-- Supplied and Ready
			["maps"] = {
				DRUSTVAR,
				NAZMIR,
				STORMSONG_VALLEY,
				TIRAGARDE_SOUND,
				VOLDUN,
				ZULDAZAR
			},
		})),
		ach(12872),	-- The Dirty Five
		ach(13061, {	-- Three Sheets to the Wind
			["sym"] = {{ "achievement_criteria" }},
		}),
		ach(14730, {	-- To All The Squirrels I Set Sail to See
			crit(50236, {	-- Honey Bee
				["crs"] = { 131376 },	-- Honey Bee
				["coord"] = { 45.87, 62.73, STORMSONG_VALLEY },
			}),
			crit(50237, {	-- Olivewing
				["crs"] = { 143220 },	-- Olivewing
				["coord"] = { 25.83, 70.26, STORMSONG_VALLEY },
			}),
			crit(50238, {	-- Fluttering Softwing
				["crs"] = { 126546 },	-- Fluttering Softwing
				["coord"] = { 84.76, 77.74, TIRAGARDE_SOUND },
			}),
			crit(50239, {	-- Drustbat
				["crs"] = { 129791 },	-- Drustbat
				["coord"] = { 53.09, 30.50, DRUSTVAR  },
			}),
			crit(50240, {	-- Tiragarde Gull
				["crs"] = { 126519 },	-- Tiragarde Gull
				["coord"] = { 77.72, 47.90, TIRAGARDE_SOUND },
			}),
			crit(50241, {	-- Bramble Hare
				["crs"] = { 128798 },	-- Bramble Hare
				["coord"] = { 59.81, 21.85, DRUSTVAR  },
			}),
			crit(50242, {	-- Jungle Gulper
				["crs"] = { 130445 },	-- Jungle Gulper
				["coord"] = { 62.72, 16.52, ZULDAZAR },
			}),
			crit(50243, {	-- Crested Gekkota
				["crs"] = { 130716 },	-- Crested Gekkota
				["coord"] = { 67.11, 41.89, ZULDAZAR },
			}),
			crit(50245, {	-- Nazmani Weevil
				["crs"] = { 130217 },	-- Nazmani Weevil
				["coord"] = { 48.01, 69.10, NAZMIR },
			}),
			crit(50244, {	-- Bloodfever Tarantula
				["crs"] = { 131017 },	-- Bloodfever Tarantula
				["coord"] = { 30.30, 66.91, NAZMIR },
			}),
			crit(50246, {	-- Temple Beetle
				["crs"] = { 130441 },	-- Temple Beetle
				["coord"] = { 43.53, 36.77, DAZARALOR }
			}),
			crit(50247, {	-- Vale Flutterby
				["crs"] = { 134700 },	-- Vale Flutterby
				["coord"] = { 52.75, 83.73, VOLDUN },
			}),
		}),
		ach(40955, {	-- War Stories
			["timeline"] = { ADDED_11_0_7 },
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				12582,	-- Come Sail Away
				13251,	-- In Teldrassil's Shadow
				12719,	-- Spirits Be With You
				13710,	-- Sunken Ambitions
				14157,	-- The Corruptor's End
				13925,	-- The Fourth War (A)
				13924,	-- The Fourth War (H)
				13700,	-- The Mechagonian Threat (H)
				13553,	-- The Mechagonian Threat (A)
				12997,	-- The Pride of Kul Tiras
				13263,	-- The Shadow Hunter
				13517,	-- Two Sides to Every Tale
				13709,	-- Unfathomable
				12555,	-- Welcome to Zandalar
			}},
		}),
		pvp(ach(12572)),	-- War Supplied
	}),
	n(TREASURES, {	-- Treasures that belong to the above achievements
		o(297495, {	-- Tales of de Loa: Akunda
			["coord"] = { 42.2, 62.1, VOLDUN },
			["g"] = {
				i(162628),	-- Tales of de Loa: Akunda
			},
		}),
		o(297491, {	-- Tales of de Loa: Bwonsamdi
			["coord"] = { 39.1, 38.6, NAZMIR },
			["g"] = {
				i(163330),	-- Tales of de Loa: Bwonsamdi
			},
		}),
		o(297521, {	-- Tales of de Loa: Gonk
			["coord"] = { 51.7, 28.3, ZULDAZAR },
			["g"] = {
				i(162657),	-- Tales of de Loa: Gonk
			},
		}),
		o(297074, {	-- Tales of de Loa: Gral
			["coord"] = { 75.5, 67.6, ZULDAZAR },
			["g"] = {
				i(163170),	-- Tales of de Loa: Gral
			},
		}),
		o(297522, {	-- Tales of de Loa: Hir'eek
			["coord"] = { 39.5, 54.6, NAZMIR },
			["g"] = {
				i(163199),	-- Tales of de Loa: Hir'eek
			},
		}),
		o(297528, {	-- Tales of de Loa: Jani
			["coord"] = { 48.5, 54.6, ZULDAZAR },
			["g"] = {
				i(162656),	-- Tales of de Loa: Jani
			},
		}),
		o(297494, {	-- Tales of de Loa: Kimbul
			["coord"] = { 27.7, 62.1, VOLDUN },
			["g"] = {
				i(163198),	-- Tales of de Loa: Kimbul
			},
		}),
		o(297489, {	-- Tales of de Loa: Krag'wa
			["coord"] = { 58.9, 48.6, NAZMIR },
			["g"] = {
				i(163331),	-- Tales of de Loa: Krag'wa
			},
		}),
		o(297524, {	-- Tales of de Loa: Pa'ku
			["coord"] = { 49.0, 41.3, ZULDAZAR },
			["g"] = {
				i(162658),	-- Tales of de Loa: Pa'ku
			},
		}),
		o(297490, {	-- Tales of de Loa: Rezan
			["coord"] = { 43.8, 76.7, ZULDAZAR },
			["g"] = {
				i(163332),	-- Tales of de Loa: Rezan
			},
		}),
		o(297485, {	-- Tales of de Loa: Sethraliss
			["coord"] = { 49.5, 24.4, VOLDUN },
			["g"] = {
				i(163333),	-- Tales of de Loa: Sethraliss
			},
		}),
		o(297493, {	-- Tales of de Loa: Shadra
			["coord"] = { 47.7, 28.9, ZULDAZAR },
			["g"] = {
				i(163221),	-- Tales of de Loa: Shadra
			},
		}),
		o(297885, {	-- Tales of de Loa: Torcali
			["coord"] = { 67.3, 17.6, ZULDAZAR },
			["g"] = {
				i(163739),	-- Tales of de Loa: Torcali
			},
		}),
		o(297523, {	-- Tales of de Loa: Torga
			["coord"] = { 72.8, 7.60, NAZMIR },
			["g"] = {
				i(163197),	-- Tales of de Loa: Torga
			},
		}),
		o(297700, {	-- Tales of de Loa: Zandalar
			["coord"] = { 53.2, 9.3, DAZARALOR },
			["g"] = {
				i(163682),	-- Tales of de Loa: Zandalar
			},
		}),
	})
}));