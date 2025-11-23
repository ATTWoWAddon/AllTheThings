---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if BEFORE CATA
-- This whole subzone used to be its own standalone zone and was merged with Hillsbrad with the Cataclysm.
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(ALTERAC_MOUNTAINS, {
		["lore"] = "Alterac Mountains is the location of the former nation of Alterac and the city-state of Dalaran, and its chief settlements included Alterac City, Dalaran and Strahnbrad. The central mountains have been overrun by ogres, while the organization called the Syndicate controls Strahnbrad and other areas. Dalaran was enclosed within an impregnable magic shell before the city was lifted in the air and moved to Northrend. A high, wooded region, the Alterac Mountains see much rainfall and its skies are constantly overcast. Crushridge ogres and the Syndicate, a wicked group of rogues led by fallen human nobles, clash repeatedly for control of this land.",
		["icon"] = 236711,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(760, {	-- Explore Alterac Mountains
					["timeline"] = { DELETED_4_0_3 },
				}),
			}),
			explorationHeader({
				exploration(1684),	-- Chillwind Point
				exploration(1679),	-- Corrahn's Dagger
				exploration(282),	-- Crushridge Hold
				exploration(279),	-- Dalaran
				exploration(1682),	-- Dandred's Fold
				exploration(1357),	-- Gallows' Corner
				exploration(1677),	-- Gavin's Naze
				exploration(1683),	-- Growless Cave
				exploration(278),	-- Lordamere Internment Camp
				exploration(1681),	-- Misty Shore
				exploration(3486),	-- Ravenholdt Manor
				exploration(281),	-- Ruins of Alterac
				exploration(283),	-- Slaughter Hollow
				exploration(1678),	-- Sofera's Naze
				exploration(280),	-- Strahnbrad
				exploration(1680),	-- The Headland
				exploration(284),	-- The Uplands
			}),
			n(FACTIONS, {
				faction(FACTION_RAVENHOLDT, {	-- Ravenholdt
					["icon"] = 132292,
					["OnTooltip"] = [[_.OnTooltipDB.Ravenholdt]],
				}),
				faction(FACTION_SYNDICATE, {	-- Syndicate
					["description"] = "Neutral is the highest you can currently reach with the Syndicate.\n\nDoing this on will tank your Ravenholdt rep, they're mutually exclusive. Get this done on an alt if you want to.",
					["minReputation"] = { FACTION_SYNDICATE, NEUTRAL - 1 },	-- Syndicate, Neutral. (-1)
					["maxReputation"] = { FACTION_SYNDICATE, NEUTRAL },	-- Syndicate, Neutral.
				}),
			}),
			n(PROFESSIONS, {
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(214212, {	-- Shadowy Figure
					["providers"] = {
						-- { "o",  },	-- Shard of Pure Light
						{ "i", 211421 },	-- The Box
					},
					["coord"] = { 88.6, 73.6, ALTERAC_MOUNTAINS },
					["groups"] = {
						r(429351, {	-- Extraplanar Spidersilk Boots (RECIPE!)
							["requireSkill"] = TAILORING,
						}),
						r(429348, {	-- Shifting Silver Breastplate (RECIPE!)
							["requireSkill"] = BLACKSMITHING,
						}),
						r(429869, {	-- Void-Touched Leather Gauntlets (RECIPE!)
							["requireSkill"] = LEATHERWORKING,
						}),
						r(429354, {	-- Void-Touched Leather Gloves (RECIPE!)
							["requireSkill"] = LEATHERWORKING,
						}),
						i(211422),	-- Shard of the Void
					},
				})),
				-- #endif
				-- #if BEFORE CATA
				prof(FISHING, {
					o(180685),	-- Waterlogged Wreckage
				}),
				-- #endif
			}),
			n(QUESTS, {
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8233, {	-- A Simple Request
					["allianceQuestData"] = {
						["qgs"] = {
							4163,	-- Syurna <Rogue Trainer>
							5165,	-- Hulfdan Blackbeard <Rogue Trainer>
							918,	-- Osborne the Night Man <Rogue Trainer>
						},
						["coords"] = {
							{ 36.8, 21.8, DARNASSUS },	-- Syurna <Rogue Trainer>
							{ 51.6, 14.6, IRONFORGE },	-- Hulfdan Blackbeard <Rogue Trainer>
							{ 74.6, 52.8, STORMWIND_CITY },	-- Osborne the Night Man <Rogue Trainer>
						},
					},
					["hordeQuestData"] = {
						["qgs"] = {
							3328,	-- Ormok <Rogue Trainer>
							4583,	-- Miles Dexter <Rogue Trainer>
						},
						["coords"] = {
							{ 44.0, 54.6, ORGRIMMAR },	-- Ormok <Rogue Trainer>
							{ 85.0, 75.2, UNDERCITY },	-- Miles Dexter <Rogue Trainer>
						},
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				})),
				q(522, {	-- Assassin's Contract
					["provider"] = { "i", 3668 },	-- Assassin's Contract
					["coord"] = { 50.8, 58.8, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 2434,	-- Shadowy Assassin
					["lvl"] = 30,
				}),
				q(523, {	-- Baron's Demise
					["sourceQuest"] = 522,	-- Assassin's Contract
					["qg"] = 2276,	-- Magistrate Henry Maleb
					["coord"] = { 48.2, 59.4, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Baron Vardus
							["provider"] = { "i", 3626 },	-- Head of Baron Vardus
							["coord"] = { 56.0, 26.2, ALTERAC_MOUNTAINS },
							["cr"] = 2306,	-- Baron Vardus
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(80453, {	-- Best Laid Plans
					["sourceQuest"] = 80411,	-- The Talisman of Kazdor
					["providers"] = {
						{ "n",   6707 },	-- Fahrad <Grand Master Rogue>
						{ "i", 217609 },	-- Talisman of Kazdor
					},
					["coord"] = { 84.4, 80.2, ALTERAC_MOUNTAINS },
					["timeline"] = { ADDED_1_15_2 },
					["classes"] = { ROGUE },
					["lvl"] = 45,
				})),
				applyclassicphase(SOD_PHASE_THREE, q(80455, {	-- Biding Our Time
					["sourceQuest"] = 80454,	-- One Last Drop
					["provider"] = { "o", 410369 },	-- Dead Drop
					["coord"] = { 47.1, 71.1, SILVERPINE_FOREST },
					["timeline"] = { ADDED_1_15_2 },
					["maps"] = { ALTERAC_MOUNTAINS },
					["classes"] = { ROGUE },
					["lvl"] = 45,
					["groups"] = {
						i(217736, {	-- Rune of the Coterie
							["classes"] = { ROGUE },
							["groups"] = {
								recipe(432295),	-- Engrave Helm - Honor Among Thieves
							},
						}),
						i(219343),	-- Filcher's Cowl
					},
				})),
				-- #endif
				q(506, {	-- Blackmoore's Legacy
					["sourceQuest"] = 503,	-- Gol'dir
					["qg"] = 2316,	-- Gol'dir
					["coord"] = { 59.96, 43.74, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(500, {	-- Crushridge Bounty
					["qg"] = 2263,	-- Marshal Redpath
					["coord"] = { 49.6, 58.6, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/9 Dirty Knucklebones
							["provider"] = { "i", 2843 },	-- Dirty Knucklebones
							["crs"] = {
								2253,	-- Crushridge Brute
								2256,	-- Crushridge Enforcer
								2255,	-- Crushridge Mage
								2254,	-- Crushridge Mauler
								2252,	-- Crushridge Ogre
								2416,	-- Crushridge Plunderer
								2287,	-- Crushridge Warmonger
							},
						}),
					},
				}),
				q(504, {	-- Crushridge Warmongers
					["sourceQuest"] = 500,	-- Crushridge Bounty
					["qg"] = 2263,	-- Marshal Redpath
					["coord"] = { 49.6, 58.6, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/15 Crushridge Warmonger
							["provider"] = { "n", 2287 },	-- Crushridge Warmonger
							["coord"] = { 38, 54.6, ALTERAC_MOUNTAINS },
						}),
						i(5249, {	-- Burning Sliver
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3763, {	-- Lunar Buckler
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1712, {	-- Cyclonian
					["sourceQuest"] = 1791,	-- The Windwatcher
					["providers"] = {
						{ "n", 6176 },	-- Bath'rah the Windwatcher
						{ "i", 6929 },	-- Bath'rah's Parchment
					},
					["coord"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ARATHI_HIGHLANDS, STRANGLETHORN_VALE },
					["cost"] = { { "i", 3357, 8 } },	-- Liferoot
					["classes"] = { WARRIOR },
					["lvl"] = 30,
					["groups"] = {
						objective(2, {	-- 0/30 Bloodscalp Tusk
							["provider"] = { "i", 3901 },	-- Bloodscalp Tusk
							["crs"] = {
								694,	-- Bloodscalp Axe Thrower
								699,	-- Bloodscalp Beastmaster
								597,	-- Bloodscalp Berserker
								671,	-- Bloodscalp Headhunter
								595,	-- Bloodscalp Hunter
								701,	-- Bloodscalp Mystic
								702,	-- Bloodscalp Scavenger
								588,	-- Bloodscalp Scout
								697,	-- Bloodscalp Shaman
								587,	-- Bloodscalp Warrior
								660,	-- Bloodscalp Witch Doctor
							},
						}),
						q(1714, {	-- Essence of the Exile
							["sourceQuest"] = 1791,	-- The Windwatcher
							["qg"] = 6176,	-- Bath'rah the Windwatcher
							["coord"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
							["timeline"] = { REMOVED_4_0_3 },
							["cost"] = {
								{ "i", 4479, 8 },	-- Burning Charm
								{ "i", 4481, 8 },	-- Cresting Charm
								{ "i", 4480, 8 },	-- Thundering Charm
							},
							["classes"] = { WARRIOR },
							["repeatable"] = true,
							["lvl"] = 30,
							["groups"] = {
								objective(3, {	-- 0/1 Essence of the Exile
									["questID"] = 1712,	-- Cyclonian
									["provider"] = { "i", 6851 },	-- Essence of the Exile
								}),
							},
						}),
					},
				}),
				q(537, {	-- Dark Council
					["sourceQuest"] = 525,	-- Further Mysteries
					["qg"] = 2276,	-- Magistrate Henry Maleb
					["coord"] = { 48.2, 59.4, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/4 Argus Shadow Mage slain
							["provider"] = { "n", 2318 },	-- Argus Shadow Mage
						}),
						objective(2, {	-- 0/1 Head of Nagaz
							["provider"] = { "n", 3672 },	-- Head of Nagaz
							["coord"] = { 39.6, 15.8, ALTERAC_MOUNTAINS },
							["cr"] = 2320,	-- Nagaz
						}),
					},
				}),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8410, {	-- Elemental Mastery
					-- #if AFTER TBC
					["allianceQuestData"] = {
						["qgs"] = {
							23127,	-- Farseer Javad <Shaman Trainer>
							20407,	-- Farseer Umbrua <Shaman Trainer>
						},
						["coords"] = {
							{ 55.2, 29.6, IRONFORGE },	-- Farseer Javad
							{ 61.8, 83.8, STORMWIND_CITY },	-- Farseer Umbrua
						},
					},
					["hordeQuestData"] = {
						["qgs"] = {
							5892,	-- Searn Firewarder <Shaman Trainer>
							3032,	-- Beram Skychaser <Shaman Trainer>
						},
						["coords"] = {
							{ 38.0, 37.8, ORGRIMMAR },	-- Searn Firewarder
							{ 22.8, 19.4, THUNDER_BLUFF },	-- Beram Skychaser
						},
					},
					-- #else
					["qgs"] = {
						5892,	-- Searn Firewarder <Shaman Trainer>
						3032,	-- Beram Skychaser <Shaman Trainer>
					},
					["coords"] = {
						{ 38.0, 37.8, ORGRIMMAR },	-- Searn Firewarder
						{ 22.8, 19.4, THUNDER_BLUFF },	-- Beram Skychaser
					},
					["races"] = HORDE_ONLY,
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 7067, 1 },	-- Elemental Earth
						{ "i", 7068, 1 },	-- Elemental Fire
						{ "i", 7069, 1 },	-- Elemental Air
						{ "i", 7070, 1 },	-- Elemental Water
					},
					["classes"] = { SHAMAN },
					["lvl"] = 50,
				})),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8235, {	-- Encoded Fragments
					["sourceQuest"] = 8234,	-- Sealed Azure Bag
					["qg"] = 8379,	-- Archmage Xylem
					["coord"] = { 29.6, 40.6, AZSHARA },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { ROGUE },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/10 Encoded Fragment
							["provider"] = { "i", 20023 },	-- Encoded Fragment
							["cr"] = 8766,	-- Forest Ooze
						}),
					},
				})),
				q(511, {	-- Encrypted Letter
					["providers"] = {
						{ "o", 1738 },	-- Syndicate Documents
						{ "o", 1739 },	-- Syndicate Documents
						{ "o", 1740 },	-- Syndicate Documents
						{ "i", 3521 },	-- Cleverly Encrypted Letter
					},
					["coord"] = { 58.3, 68.0, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(80526, {	-- Fool Me Twice
					["qg"] = 6707,	-- Fahrad <Grand Master Rogue>
					["coord"] = { 84.4, 80.2, ALTERAC_MOUNTAINS },
					["timeline"] = { ADDED_1_15_2 },
					["classes"] = { ROGUE },
					["lvl"] = 45,
				})),
				-- #endif
				q(510, {	-- Foreboding Plans
					["providers"] = {
						{ "o", 1738 },	-- Syndicate Documents
						{ "o", 1739 },	-- Syndicate Documents
						{ "o", 1740 },	-- Syndicate Documents
						{ "i", 3718 },	-- Foreboding Plans
					},
					["coord"] = { 58.3, 68.0, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				}),
				q(525, {	-- Further Mysteries
					["sourceQuest"] = 514,	-- Letter to Stormpike
					["providers"] = {
						{ "n", 1356 },	-- Prospector Stormpike
						{ "i", 3518 },	-- Decrypted Letter
					},
					["coord"] = { 74.4, 12, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(503, {	-- Gol'dir
					["sourceQuest"] = 533,	-- Infiltration
					["qg"] = 2229,	-- Krusk
					["coord"] = { 63.24, 20.68, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/1 Rusted Iron Key
							["provider"] = { "i", 3704 },	-- Rusted Iron Key
							["coord"] = { 61.8, 40.6, ALTERAC_MOUNTAINS },
							["cr"] = 2431,	-- Jailor Borhuin
						}),
					},
				}),
				q(533, {	-- Infiltration
					["sourceQuest"] = 498,	-- The Rescue,
					["qg"] = 2229,	-- Krusk
					["coord"] = { 63.24, 20.68, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/1 Syndicate Missive
							["provider"] = { "i", 3601 },	-- Syndicate Missive
							["description"] = "You can choose to bring Valik a drink or kill Syndicates until you get a missive to drop. Your choice.",
							["crs"] = {
								2240,	-- Syndicate Footpad
								2241,	-- Syndicate Thief
							},
						}),
					},
				}),
				q(8249, {	-- Junkboxes Needed
					-- #if AFTER 4.3.0
					["qg"] = 7323,	-- Winstone Wolfe <The Wolf>
					["coord"] = { 71.4, 45.0, HILLSBRAD_FOOTHILLS },
					-- #else
					["qg"] = 6707,	-- Fahrad <Grand Master Rogue>
					["coord"] = { 84.4, 80.3, ALTERAC_MOUNTAINS },
					-- #endif
					["maxReputation"] = { FACTION_RAVENHOLDT, EXALTED },	-- Ravenholdt, Exalted.
					["cost"] = { { "i", 16885, 5 } },	-- Heavy Junkbox
					["repeatable"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
					["groups"] = {
						i(20086, {	-- Dusksteel Throwing Knife [Classic] / Broken Dusksteel Throwing Knife [TBC]
							["timeline"] = {
								ADDED_1_11_1,
								REMOVED_2_0_1
							},
						}),
						i(25878, {	-- Dusksteel Throwing Knife [TBC]
							["timeline"] = { ADDED_2_1_0, REMOVED_5_0_4 },
						}),
					},
				}),
				q(514, {	-- Letter to Stormpike
					["sourceQuest"] = 511,	-- Encrypted Letter
					["providers"] = {
						{ "n", 2277 },	-- Loremaster Dibbs
						{ "i", 3521 },	-- Cleverly Encrypted Letter
					},
					["coord"] = { 50.4, 57, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(507, {	-- Lord Aliden Perenolde
					["sourceQuest"] = 506,	-- Blackmoore's Legacy
					["qg"] = 2229,	-- Krusk
					["coord"] = { 63.24, 20.68, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/1 Lord Aliden Perenolde slain
							["provider"] = { "n", 2423 },	-- Lord Aliden Perenolde
							["coord"] = { 39.2, 14.4, ALTERAC_MOUNTAINS },
						}),
					},
				}),
				q(512, {	-- Noble Deaths
					["sourceQuest"] = 510,	-- Foreboding Plans
					["qg"] = 2276,	-- Magistrate Henry Maleb
					["coord"] = { 48.2, 59.4, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/7 Alterac Signet Ring
							["provider"] = { "i", 3505 },	-- Alterac Signet Ring
							["crs"] = {
								14221,	-- Gravis Slipknot
								2246,	-- Syndicate Assassin
								2247,	-- Syndicate Enforcer
								2245,	-- Syndicate Saboteur
								2243,	-- Syndicate Sentry
								2242,	-- Syndicate Spy
								2319,	-- Syndicate Wizard
							},
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(80454, {	-- One Last Drop
					["sourceQuest"] = 80453,	-- Best Laid Plans
					["providers"] = {
						{ "n",   6777 },	-- Zan Shivsproket <Speciality Engineer>
						{ "i", 217737 },	-- Modified Talisman
					},
					["coord"] = { 86, 80, ALTERAC_MOUNTAINS },
					["timeline"] = { ADDED_1_15_2 },
					["maps"] = { SILVERPINE_FOREST },
					["classes"] = { ROGUE },
					["lvl"] = 45,
				})),
				-- #endif
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8234, {	-- Sealed Azure Bag
					["sourceQuest"] = 8233,	-- A Simple Request
					["qg"] = 6768,	-- Lord Jorach Ravenholdt <Lord of the Assassin's League>
					["coord"] = { 86.0, 79.0, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { AZSHARA },
					["classes"] = { ROGUE },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Sealed Azure Bag
							["provider"] = { "i", 19775 },	-- Sealed Azure Bag
							["coord"] = { 43.5, 25.4, AZSHARA },
							["cr"] = 6188,	-- Timbermaw Shaman
						}),
					},
				})),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8412, {	-- Spirit Totem
					["sourceQuest"] = 8410,	-- Elemental Mastery
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["coord"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WESTERN_PLAGUELANDS },
					-- #if BEFORE TBC
					["races"] = HORDE_ONLY,
					-- #endif
					["classes"] = { SHAMAN },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/8 Bloodshot Spider Eye
							["provider"] = { "i", 20610 },	-- Bloodshot Spider Eye
							["crs"] = {
								1821,	-- Carrion Lurker
								1809,	-- Carrion Vulture
								1824,	-- Plague Lurker
								1822,	-- Venom Mist Lurker
							},
						}),
						objective(2, {	-- 0/8 Thick Black Claw
							["provider"] = { "i", 20611 },	-- Thick Black Claw
							["crs"] = {
								1809,	-- Carrion Vulture
								1815,	-- Diseased Black Bear
								1816,	-- Diseased Grizzly
							},
						}),
					},
				})),
				q(554, {	-- Stormpike's Deciphering
					["sourceQuest"] = 551,	-- The Ensorcelled Parchment
					["providers"] = {
						{ "n", 2277 },	-- Loremaster Dibbs
						{ "i", 3706 },	-- Ensorcelled Parchment
					},
					["coord"] = { 50.4, 57.0, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(505, {	-- Syndicate Assassins
					["qg"] = 2276,	-- Magistrate Henry Maleb
					["coord"] = { 48.2, 59.4, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/12 Syndicate Footpad slain
							["provider"] = { "n", 2240 },	-- Syndicate Footpad
						}),
						objective(2, {	-- 0/8 Syndicate Thief slain
							["provider"] = { "n", 2241 },	-- Syndicate Thief
						}),
						i(3758, {	-- Crusader Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3759, {	-- Insulated Sage Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(6701, {	-- Syndicate Emblems
					["sourceQuest"] = 6681,	-- The Manor, Ravenholdt
					["qg"] = 6766,	-- Ravenholdt Guard <Assassin's League>
					["coord"] = { 85.2, 79.4, ALTERAC_MOUNTAINS },
					["maxReputation"] = { FACTION_RAVENHOLDT, FRIENDLY },	-- Ravenholdt, Friendly.
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 17124, 1 } },	-- Syndicate Emblem
					["classes"] = { ROGUE },
					["repeatable"] = true,
					["lvl"] = 24,
				}),
				q(508, {	-- Taretha's Gift
					["sourceQuest"] = 507,	-- Lord Aliden Perenolde
					["providers"] = {
						{ "n", 2317 },	-- Elysa
						{ "i", 3498 },	-- Taretha's Necklace
					},
					["coord"] = { 39.30, 14.30, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						i(3765, {	-- Brigand's Pauldrons
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3764, {	-- Mantis Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(495, {	-- The Crown of Will (1/5)
					["qg"] = 2227,	-- Sharlindra
					["coord"] = { 57.60, 93.84, UNDERCITY },
					["timeline"] = { REMOVED_5_0_4 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 34,
				}),
				q(518, {	-- The Crown of Will (2/5)
					["sourceQuest"] = 495,	-- The Crown of Will (1/5)
					["qg"] = 2278,	-- Melisara
					["coord"] = { 62.61, 20.64, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 34,
					["groups"] = {
						objective(1, {	-- 0/14 Crushridge Mauler
							["provider"] = { "n", 2254 },	-- Crushridge Mauler
						}),
					},
				}),
				q(519, {	-- The Crown of Will (3/5)
					["sourceQuest"] = 518,	-- The Crown of Will (2/5)
					["qg"] = 2278,	-- Melisara
					["coord"] = { 62.61, 20.64, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 34,
					["groups"] = {
						objective(1, {	-- 0/1 Targ's Head
							["provider"] = { "i", 3550 },	-- Targ's Head
							["coord"] = { 39.6, 53.0, ALTERAC_MOUNTAINS },
							["cr"] = 2420,	-- Targ
						}),
						objective(2, {	-- 0/1 Muckrake's Head
							["provider"] = { "i", 3551 },	-- Muckrake's Head
							["coord"] = { 38.8, 47.2, ALTERAC_MOUNTAINS },
							["cr"] = 2421,	-- Muckrake
						}),
						objective(3, {	-- 0/1 Glommus's Head
							["provider"] = { "i", 3552 },	-- Glommus's Head
							["coord"] = { 39.4, 41.8, ALTERAC_MOUNTAINS },
							["cr"] = 2422,	-- Glommus
						}),
					},
				}),
				q(520, {	-- The Crown of Will (4/5)
					["sourceQuest"] = 519,	-- The Crown of Will (3/5)
					["qg"] = 2278,	-- Melisara
					["coord"] = { 62.61, 20.64, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 34,
					["groups"] = {
						objective(1, {	-- 0/1 Mug'thol's Head
							["provider"] = { "i", 3553 },	-- Mug'thol's Head
							["coord"] = { 35.8, 54.0, ALTERAC_MOUNTAINS },
							["cr"] = 2257,	-- Mug'thol
						}),
						objective(2, {	-- 0/1 Crown of Will
							["provider"] = { "i", 3554 },	-- Mug'thol's Head
							["coord"] = { 35.8, 54.0, ALTERAC_MOUNTAINS },
							["cr"] = 2257,	-- Mug'thol
						}),
					},
				}),
				q(521, {	-- The Crown of Will (5/5)
					["sourceQuest"] = 520,	-- The Crown of Will (4/5)
					["providers"] = {
						{ "n", 2278 },	-- Melisara
						{ "i", 3554 },	-- Crown of Will
					},
					["coord"] = { 62.61, 20.64, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 34,
					["groups"] = {
						i(4430, {	-- Ethereal Talisman
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(551, {	-- The Ensorcelled Parchment
					["providers"] = {
						{ "i", 3706 },	-- Ensorcelled Parchment
						{ "o", 1765 },	-- Worn Wooden Chest
					},
					["coord"] = { 39.2, 14.8, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(6681, {	-- The Manor, Ravenholdt
					["description"] = "Speak with a Rogue Trainer and use select the chat option to receive the item that gives you this quest.\n\nDO NOT OPEN THE CHEST",
					["providers"] = {
						{ "i", 17125 },	-- Seal of Ravenholdt
						{ "i", 17126 },	-- Seal of Ravenholdt
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { ROGUE },
					["lvl"] = 24,
				}),
				q(1713, {	-- The Summoning
					["sourceQuest"] = 1712,	-- Cyclonian
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["coord"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Whirlwind Heart
							["provider"] = { "i", 6894 },	-- Whirlwind Heart
							["coord"] = { 80.6, 62.6, ALTERAC_MOUNTAINS },
							["cr"] = 6239,	-- Cyclonian
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(80411, {	-- The Talisman of Kazdor
					["description"] = "You'll need to find 2 Vile Concoctions and the Hollow Emblem.\n\n- The Hollow Emblem is on the second from the left upper hut on the right wall if you're facing the pyramid. You can climb the hill to the right of the pyramid to get there.\n\n- 1 Vile Concoction is inside the hut closest to the pyramid and the other is inside a hut on the corner of the left path after the first fork of the dungeon(that left path that no group ever takes).\n\n- Use one Vile Concoction on the cauldron of Witch Doctor Zum'rah (it doesn't break stealth) to kill him and loot the satchel beside him to loot a trinket. Equip the trinket to see which grave contains the Offering of Blood.\n\n- Use the other Vile Concoction on the cauldron of Antu'sul and loot the Offering of Bone beside him.\n\n- Combine both offerings, then use the Hollow Emblem to make the Emblem of Blood Magic Emblem of Blood Magic. This is the key to open the chest on the top of the pyramid to finally get the Talisman for the quest.",
					["sourceQuest"] = 80526,	-- Fool Me Twice
					["qg"] = 6707,	-- Fahrad <Grand Master Rogue>
					["coord"] = { 84.4, 80.2, ALTERAC_MOUNTAINS },
					["timeline"] = { ADDED_1_15_2 },
					["maps"] = { ZULFARRAK },
					["classes"] = { ROGUE },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Talisman of Kazdor
							["providers"] = {
								{ "i", 217609 },	-- Talisman of Kazdor
								{ "o", 433596 },	-- Spellbound War Chest
							},
						}),
					},
				})),
				-- #endif
				q(535, {	-- Valik
					["altQuests"] = { 533 },	-- Infiltration (Can only be completed while on this quest)
					["qg"] = 2333,	-- Henchman Valik
					["coord"] = { 57.15, 69.50, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 3703, 1 } },	-- Southshore Stout
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						i(3601),	-- Syndicate Missive
					},
				}),
				q(566, {	-- WANTED: Baron Vardus
					["sourceQuest"] = 549,	-- WANTED: Syndicate Personnel
					["provider"] = { "o", 1763 },	-- WANTED
					["coord"] = { 62.61, 20.76, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Baron Vardus
							["provider"] = { "i", 3626 },	-- Head of Baron Vardus
							["coord"] = { 56.0, 26.2, ALTERAC_MOUNTAINS },
							["cr"] = 2306,	-- Baron Vardus
						}),
						i(2231, {	-- Inferno Robe
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1792, {	-- Whirlwind Weapon
					["sourceQuest"] = 1713,	-- The Summoning
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["coord"] = { 80.5, 66.9, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["lvl"] = 30,
					["groups"] = {
						i(6975, {	-- Whirlwind Axe
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6977, {	-- Whirlwind Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6976, {	-- Whirlwind Warhammer
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
			}),
			n(RARES, {
				n(14222, {	-- Araga
					["coords"] = {
						{ 31.2, 71.0, ALTERAC_MOUNTAINS },
						{ 31.6, 86.8, ALTERAC_MOUNTAINS },
						{ 39.2, 92.0, ALTERAC_MOUNTAINS },
					},
				}),
				n(14223, {	-- Cranky Benj
					["coords"] = {
						{ 14.2, 54.2, ALTERAC_MOUNTAINS },
						{ 27.6, 41.0, ALTERAC_MOUNTAINS },
						{ 36.4, 16.2, ALTERAC_MOUNTAINS },
					},
				}),
				n(14221, {	-- Gravis Slipknot
					["coord"] = { 60.0, 44.6, ALTERAC_MOUNTAINS },
				}),
				n(14281, {	-- Jimmy the Bleeder
					["coords"] = {
						{ 48.6, 82.8, ALTERAC_MOUNTAINS },
						{ 58.6, 70.2, ALTERAC_MOUNTAINS },
					},
				}),
				n(2453, {	-- Lo'Grosh
					["coords"] = {
						{ 48.0, 34.2, ALTERAC_MOUNTAINS },
						{ 52.6, 46.2, ALTERAC_MOUNTAINS },
					},
					["groups"] = {
						i(6327),	-- The Pacifier
						i(4810),	-- Boulder Pads
						i(1678),	-- Black Ogre Kickers
					},
				}),
				n(2447, {	-- Narillasanz
					["description"] = "Patrols around the entire zone, but can usually be found along the river to the east.\n\nThis particular rare was used in the original World of Warcraft game packaging facing off against heroes wielding Teebu's Blazing Longsword.",
					["coord"] = { 79.2, 47.0, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
				}),
				n(2452, {	-- Skhowl
					["coords"] = {
						{ 30.6, 59.4, ALTERAC_MOUNTAINS },
						{ 31.6, 51.6, ALTERAC_MOUNTAINS },
						{ 38.6, 37.6, ALTERAC_MOUNTAINS },
						{ 43.8, 63.4, ALTERAC_MOUNTAINS },
					},
					["groups"] = {
						i(3011),	-- Feathered Headdress
						i(6331),	-- Howling Blade
					},
				}),
				n(2258, {	-- Stone Fury / Maggarrak [CATA+]
					["coords"] = {
						{ 61.8, 37.8, ALTERAC_MOUNTAINS },
						{ 66.6, 47.2, ALTERAC_MOUNTAINS },
						{ 73.0, 46.2, ALTERAC_MOUNTAINS },
						{ 78.8, 47.4, ALTERAC_MOUNTAINS },
						{ 80.8, 34.2, ALTERAC_MOUNTAINS },
					},
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_TWO, i(213452, {	-- Dormant Holy Rune
					["description"] = "Once you have this rune in your inventory, use Divine Intervention on a healer friend. Have them resurrect you to receive the rune upon resurrection.",
					["provider"] = { "o", 423841 },	-- Frozen Remains
					["coord"] = { 39.7, 60.8, ALTERAC_MOUNTAINS },
					["timeline"] = { ADDED_1_15_1 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(213132, {	-- Rune of the Guardian
							["classes"] = { PALADIN },
							["groups"] = {
								recipe(416035),	-- Engrave Boots - Guarded by the Light
							},
						}),
					},
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(2480, {	-- Bro'kin <Alchemy Supplies>
					["coord"] = { 38.0, 38.0, ALTERAC_MOUNTAINS },
					["groups"] = {
						i(14634, {	-- Recipe: Frost Oil (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2684, {	-- Rizz Loosebolt <Engineering Supplies>
					["coord"] = { 47.3, 35.2, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(13308, {	-- Schematic: Ice Deflector (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
							["isLimited"] = true,
						}),
					},
				}),
				n(6779, {	-- Smudge Thunderwood <Poison Vendor>
					["coord"] = { 86.0, 79.6, ALTERAC_MOUNTAINS },
					["groups"] = {
						i(18160, {	-- Recipe: Thistle Tea (RECIPE!)
							["timeline"] = { ADDED_1_3_0, REMOVED_6_0_2, ADDED_7_1_0 },
							["classes"] = { ROGUE },
						}),
					},
				}),
				n(6777, {	-- Zan Shivsproket <Speciality Engineer>
					["coord"] = { 86.0, 80.0, ALTERAC_MOUNTAINS },
					["groups"] = {
						i(7742, {	-- Schematic: Gnomish Cloaking Device (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(3711, {	-- Belamoore's Research Journal
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 2415,	-- Warden Belamoore
				}),
				i(8491, {	-- Black Tabby Cat (PET!)
					["timeline"] = { ADDED_1_11_1 },
					["races"] = HORDE_ONLY,
					["crs"] = {
						2271,	-- Dalaran Shield Guard
						2358,	-- Dalaran Summoner
						2272,	-- Dalaran Theurgist
					},
				}),
				i(1280, {	-- Cloaked Hood
					-- #if BEFORE 4.0.3
					["cr"] = 2246,	-- Syndicate Assassin
					["coords"] = {
						{ 48.8, 9.2, ALTERAC_MOUNTAINS },
						{ 49.6, 10.0, ALTERAC_MOUNTAINS },
					},
					-- #elseif AFTER 10.1.7
					["cr"] = 2242,	-- Syndicate Spy
					["coords"] = {
						{ 57.2, 24.4, ALTERAC_MOUNTAINS },
						{ 53.6, 14.8, ALTERAC_MOUNTAINS },
						{ 49.6, 10.0, ALTERAC_MOUNTAINS },
					},
					-- #endif
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
				}),
				i(11206, {	-- Formula: Enchant Cloak - Lesser Agility (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 2246,	-- Syndicate Assassin
				}),
				-- #if BEFORE 4.0.3
				i(1993, {	-- Ogremind Ring
					["cr"] = 2255,	-- Crushridge Mage
				}),
				-- #endif
				-- #if BEFORE CATA
				i(5775, {	-- Pattern: Black Silk Pack (RECIPE!)
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 2434,	-- Shadowy Assassin
				}),
				-- #endif
				i(3745, {	-- Rune of Opening
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 2358,	-- Dalaran Summoner
				}),
				i(1602, {	-- Sickle Axe
					["coords"] = {
						{ 42.2, 28.8, ALTERAC_MOUNTAINS },
						{ 42.8, 31.0, ALTERAC_MOUNTAINS },
						{ 44.2, 33.8, ALTERAC_MOUNTAINS },
						{ 44.4, 30.4, ALTERAC_MOUNTAINS },
					},
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
					["cr"] = 2287,	-- Crushridge Warmonger
				}),
				i(3703, {	-- Southshore Stout
					["cr"] = 2440,	-- Drunken Footpad
				}),
				i(5245, {	-- Summoner's Wand
					["coords"] = {
						{ 30.8, 31.6, ALTERAC_MOUNTAINS },
						{ 33.6, 40.6, ALTERAC_MOUNTAINS },
						{ 27.8, 40.6, ALTERAC_MOUNTAINS },
					},
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
					["races"] = HORDE_ONLY,
					["cr"] = 2358,	-- Dalaran Summoner
				}),
			}),
		},
	}),
}));
-- #endif
