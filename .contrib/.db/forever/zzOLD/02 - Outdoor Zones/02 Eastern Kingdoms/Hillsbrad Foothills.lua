---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.EASTERN_KINGDOMS, {
	m(MAP.HILLSBRAD_FOOTHILLS, {
		["lore"] =
			"Hillsbrad Foothills is a mid-level zone most suitable for players around level 25. The hills are home to the towns of Southshore and Hillsbrad Fields (Alliance), and Tarren Mill (Horde). Some notable locations, such as Durnholde Keep and Azurelode Mine can also be found here. Since this area lies outside of Thoradin's Wall, it is considered as a crossroads between Alliance and Horde players, which makes combat between the two factions likely.\n\nHillsbrad is relatively safe and stable. Its hills are green and pastoral, its meadows fertile and its soil rich. Humans loyal to the Alliance control Hillsbrad from the town of Southshore, though the Syndicate, murlocs and Forsaken threaten their serenity.",
		["icon"] = 236779,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(772),	-- Explore Hillsbrad Foothills
			}),
			explorationHeader({
				exploration(288),	-- Azurelode Mine
				exploration(1056),	-- Darrow Hill
				exploration(290),	-- Dun Garok
				exploration(275),	-- Durnholde Keep
				exploration(294),	-- Eastern Strand
				exploration(286),	-- Hillsbrad Fields
				exploration(289),	-- Nethander Stead
				exploration(896),	-- Purgation Isle
				visit_exploration(3486,{coord={70.3,45.6,MAP.HILLSBRAD_FOOTHILLS}}),	-- Ravenholdt Manor
				exploration(285),	-- Southpoint Tower
				exploration(271),	-- Southshore
				exploration(272),	-- Tarren Mill
				exploration(295),	-- Western Strand
			}),
			n(FLIGHT_PATHS, {
				fp(14, {	-- Southshore, Hillsbrad
					["cr"] = 2432,	-- Darla Harris <Gryphon Master>
					["coord"] = { 49.4, 52.4, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(13, {	-- Tarren Mill, Hillsbrad
					["cr"] = 2389,	-- Zarise <Bat Handler>
					["coord"] = { 60.2, 18.6, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
				}),
			}),
			lockpicking({
				o(179486, {	-- Battered Footlocker
					["coords"] = {
						{ 75.5, 40.0, MAP.HILLSBRAD_FOOTHILLS },
						{ 79.6, 46.6, MAP.HILLSBRAD_FOOTHILLS },
						{ 83.0, 44.1, MAP.HILLSBRAD_FOOTHILLS },
					},
					["requireSkill"] = LOCKPICKING,
					["learnedAt"] = 110,
				}),
			}),
			n(PROFESSIONS, {
				prof(FISHING, {
					o(180662),	-- Schooner Wreckage
				}),
				prof(TAILORING, {
					n(2399, {	-- Daryl Stack <Master Tailor>
						["coord"] = { 63.6, 20.8, MAP.HILLSBRAD_FOOTHILLS },
						["races"] = HORDE_ONLY,
						["groups"] = ARTISAN_TAILORING,
					}),
				}),
			}),
			n(QUESTS, {
				q(565, {	-- Bartolo's Yeti Fur Cloak
					["qg"] = 2438,	-- Bartolo Ginsetti
					["coord"] = { 49.4, 55.5, MAP.HILLSBRAD_FOOTHILLS },
					["cost"] = {
						{ "i", 2997, 1 },	-- Bolt of Woolen Cloth
						{ "i", 2321, 1 },	-- Fine Thread
						{ "i", 3719, 1 },	-- Hillman's Cloak
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						objective(4, {	-- 0/10 Yeti Fur
							["provider"] = { "i", 3720 },	-- Yeti Fur
							["crs"] = {
								4504,	-- Frostmaw
								2251,	-- Giant Yeti
								2250,	-- Mountain Yeti
								2452,	-- Skhowl
								2248,	-- Cave Yeti
								2249,	-- Ferocious Yeti
							},
						}),
						i(2805),	-- Yeti Fur Cloak
					},
				}),
				q(527, {	-- Battle of Hillsbrad (1/7)
					["qg"] = 2215,	-- High Executor Darthalia
					["coord"] = { 62.32, 20.33, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/6 Hillsbrad Farmer slain
							["provider"] = { "n", 2266 },	-- Hillsbrad Farmer
						}),
						objective(2, {	-- 0/6 Hillsbrad Farmhand slain
							["provider"] = { "n", 2360 },	-- Hillsbrad Farmhand
						}),
						objective(3, {	-- 0/1 Farmer Ray slain
							["provider"] = { "n", 232 },	-- Farmer Ray
						}),
						objective(4, {	-- 0/1 Farmer Getz slain
							["provider"] = { "n", 2403 },	-- Farmer Getz
						}),
					},
				}),
				q(528, {	-- Battle of Hillsbrad (2/7)
					["sourceQuest"] = 527,	-- Battle of Hillsbrad (1/7)
					["qg"] = 2215,	-- High Executor Darthalia
					["coord"] = { 62.32, 20.33, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/15 Hillsbrad Peasant slain
							["provider"] = { "n", 2267 },	-- Hillsbrad Peasant
						}),
					},
				}),
				q(529, {	-- Battle of Hillsbrad (3/7)
					["sourceQuest"] = 528,	-- Battle of Hillsbrad (2/7)
					["qg"] = 2215,	-- High Executor Darthalia
					["coord"] = { 62.32, 20.33, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/1 Blacksmith Verringtan slain
							["provider"] = { "n", 2404 },	-- Blacksmith Verringtan
						}),
						objective(2, {	-- 0/4 Hillsbrad Apprentice Blacksmith slain
							["provider"] = { "n", 2265 },	-- Hillsbrad Apprentice Blacksmith
						}),
						objective(3, {	-- 0/1 Shipment of Iron
							["providers"] = {
								{ "i", 3564 },	-- Shipment of Iron
								{ "o", 1736 },	-- Shipment of Iron
							},
							["coord"] = { 32.1, 45.4, MAP.HILLSBRAD_FOOTHILLS },
						}),
					},
				}),
				q(532, {	-- Battle of Hillsbrad (4/7)
					["sourceQuest"] = 529,	-- Battle of Hillsbrad (3/7)
					["qg"] = 2215,	-- High Executor Darthalia
					["coord"] = { 62.32, 20.33, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/1 Magistrate Burnside slain
							["provider"] = { "n", 2335 },	-- Magistrate Burnside
							["coord"] = { 29.6, 41.8, MAP.HILLSBRAD_FOOTHILLS },
						}),
						objective(2, {	-- 0/5 Hillsbrad Councilman slain
							["provider"] = { "n", 2387 },	-- Hillsbrad Councilman
						}),
						objective(3, {	-- Hillsbrad Proclamation destroyed
							["provider"] = { "o", 1761 },	-- Hillsbrad Proclamation
							["coord"] = { 29.7, 41.8, MAP.HILLSBRAD_FOOTHILLS },
						}),
						objective(4, {	-- 0/1 Hillsbrad Town Registry
							["providers"] = {
								{ "i", 3657 },	-- Hillsbrad Town Registry
								{ "o", 1759 },	-- Hillsbrad Town Registry
							},
							["coord"] = { 29.6, 41.6, MAP.HILLSBRAD_FOOTHILLS },
						}),
					},
				}),
				q(539, {	-- Battle of Hillsbrad (5/7)
					["sourceQuest"] = 532,	-- Battle of Hillsbrad (4/7)
					["qg"] = 2215,	-- High Executor Darthalia
					["coord"] = { 62.32, 20.33, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/1 Foreman Bonds slain
							["provider"] = { "n", 2305 },	-- Foreman Bonds
							["coord"] = { 31.0, 56.2, MAP.HILLSBRAD_FOOTHILLS },
						}),
						objective(2, {	-- 0/10 Hillsbrad Miner slain
							["provider"] = { "n", 2269 },	-- Hillsbrad Miner
						}),
					},
				}),
				q(541, {	-- Battle of Hillsbrad (6/7)
					["sourceQuest"] = 539,	-- Battle of Hillsbrad (5/7)
					["qg"] = 2215,	-- High Executor Darthalia
					["coord"] = { 62.32, 20.33, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/10 Dun Garok Mountaineer slain
							["provider"] = { "n", 2344 },	-- Dun Garok Mountaineer
						}),
						objective(2, {	-- 0/8 Dun Garok Rifleman slain
							["provider"] = { "n", 2345 },	-- Dun Garok Rifleman
						}),
						objective(3, {	-- 0/4 Dun Garok Priest slain
							["provider"] = { "n", 2346 },	-- Dun Garok Priest
						}),
						objective(4, {	-- 0/1 Captain Ironhill slain
							["provider"] = { "n", 2304 },	-- Captain Ironhill
							["coord"] = { 72.6, 80.0, MAP.HILLSBRAD_FOOTHILLS },
						}),
					},
				}),
				q(550, {	-- Battle of Hillsbrad (7/7)
					["sourceQuest"] = 541,	-- Battle of Hillsbrad (6/7)
					["providers"] = {
						{ "n", 2215 },	-- High Executor Darthalia
						{ "i", 3701 },	-- Darthalia's Sealed Commendation
					},
					["coord"] = { 62.32, 20.33, MAP.HILLSBRAD_FOOTHILLS },
					["maps"] = { MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						i(3761),	-- Deadskull Shield
						i(3822),	-- Runic Darkblade
						i(6282),	-- Sacred Burial Trousers
						i(3760),	-- Band of the Undercity
					},
				}),
				q(1066, {	-- Blood of Innocents
					["sourceQuest"] = 1065,	-- Journey to Tarren Mill
					["qg"] = 2216,	-- Apothecary Lydon
					["coord"] = { 61.4, 19.2, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/5 Vial of Innocent Blood
							["provider"] = { "i", 5620 },	-- Vial of Innocent Blood
							["cr"] = 2244,	-- Syndicate Shadow Mage
						}),
					},
				}),
				q(557, {	-- Bracers of Binding
					["sourceQuest"] = 556,	-- Stone Tokens
					["qg"] = 2437,	-- Keeper Bel'varil
					["coord"] = { 61.50, 20.91, MAP.HILLSBRAD_FOOTHILLS },
					["maps"] = { MAP.ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/4 Bracers of Earth Binding
							["provider"] = { "i", 3715 },	-- Bracers of Earth Binding
							["coord"] = { 16.4, 78.8, MAP.ALTERAC_MOUNTAINS },
							["cr"] = 2359,	-- Elemental Slave
						}),
					},
				}),
				q(564, {	-- Costly Menace
					["qg"] = 2382,	-- Darren Malvew
					["coord"] = { 52.4, 56.0, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/8 Mountain Lion slain
							["provider"] = { "n", 2406 },	-- Mountain Lion
						}),
						objective(2, {	-- 0/10 Hulking Mountain Lion slain
							["provider"] = { "n", 2407 },	-- Hulking Mountain Lion
						}),
						i(3753),	-- Shepherd's Girdle
						i(3754),	-- Shepherd's Gloves
						i(3736),	-- Recipe: Tasty Lion Steak (RECIPE!)
						i(3728),	-- Tasty Lion Steak
					},
				}),
				q(545, {	-- Dalaran Patrols
					["sourceQuest"] = 544,	-- Prison Break In
					["qg"] = 2410,	-- Magus Wordeen Voidglare
					["coord"] = { 61.60, 20.85, MAP.HILLSBRAD_FOOTHILLS },
					["maps"] = { MAP.ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/6 Dalaran Summoner slain
							["provider"] = { "n", 2358 },	-- Dalaran Summoner
						}),
						objective(2, {	-- 0/12 Elemental Slave slain
							["provider"] = { "n", 2359 },	-- Elemental Slave
						}),
					},
				}),
				q(567, {	-- Dangerous!
					["provider"] = { "o", 2008 },	-- Dangerous!
					["coord"] = { 62.56, 19.69, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/1 Clerk Horrace Whitesteed slain
							["provider"] = { "n", 2448 },	-- Clerk Horrace Whitesteed
							["coord"] = { 30.0, 42.8, MAP.HILLSBRAD_FOOTHILLS },
						}),
						objective(2, {	-- 0/1 Citizen Wilkes slain
							["provider"] = { "n", 2449 },	-- Citizen Wilkes
							["coord"] = { 32.8, 40.0, MAP.HILLSBRAD_FOOTHILLS },
						}),
						objective(3, {	-- 0/1 Miner Hackett slain
							["provider"] = { "n", 2450 },	-- Miner Hackett
							["coord"] = { 31.2, 53.6, MAP.HILLSBRAD_FOOTHILLS },
						}),
						objective(4, {	-- 0/1 Farmer Kalaba slain
							["provider"] = { "n", 2451 },	-- Farmer Kalaba
							["coord"] = { 35.8, 46.2, MAP.HILLSBRAD_FOOTHILLS },
						}),
						i(3742),	-- Bow of Plunder
						i(3743),	-- Sentry Buckler
						i(5250),	-- Charred Wand
						i(3732),	-- Hooded Cowl
					},
				}),
				q(536, {	-- Down the Coast
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["coord"] = { 51.4, 58.4, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/10 Torn Fin Tidehunter slain
							["provider"] = { "n", 2377 },	-- Torn Fin Tidehunter
						}),
						objective(2, {	-- 0/10 Torn Fin Oracle slain
							["provider"] = { "n", 2376 },	-- Torn Fin Oracle
						}),
					},
				}),
				q(509, {	-- Elixir of Agony (1/5)
					["sourceQuest"] = 502,	-- Elixir of Pain (2/2)
					["qg"] = 2216,	-- Apothecary Lydon
					["coord"] = { 61.45, 19.05, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/6 Mudsnout Blossoms
							["providers"] = {
								{ "i", 3502 },	-- Mudsnout Blossoms
								{ "o", 1723 },	-- Mudsnout Blossom
							},
							["coord"] = { 64.2, 62.5, MAP.HILLSBRAD_FOOTHILLS },
						}),
						i(2459),	-- Swiftness Potion
					},
				}),
				q(513, {	-- Elixir of Agony (2/5)
					["sourceQuest"] = 509,	-- Elixir of Agony (1/5)
					["providers"] = {
						{ "n", 2216 },	-- Apothecary Lydon
						{ "i", 3506 },	-- Mudsnout Composite
					},
					["coord"] = { 61.45, 19.05, MAP.HILLSBRAD_FOOTHILLS },
					["maps"] = { MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(515, {	-- Elixir of Agony (3/5)
					["sourceQuest"] = 513,	-- Elixir of Agony (2/5)
					["providers"] = {
						{ "n", 2055 },	-- Master Apothecary Faranell
						{ "i", 3508 },	-- Mudsnout Mixture
					},
					["coord"] = { 48.89, 69.21, MAP.UNDERCITY },
					["cost"] = { { "i", 3388, 1 } },	-- Strong Troll's Blood Potion
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(2, {	-- 0/5 Daggerspine Scale
							["provider"] = { "i", 3509 },	-- Daggerspine Scale
							["crs"] = {
								2370,	-- Daggerspine Screamer
								2369,	-- Daggerspine Shorehunter
								2368,	-- Daggerspine Shorestalker
								2371,	-- Daggerspine Siren
								14277,	-- Lady Zephris
							},
						}),
						objective(3, {	-- 0/5 Torn Fin Eye
							["provider"] = { "i", 3510 },	-- Torn Fin Eye
							["crs"] = {
								14276,	-- Scargil
								2375,	-- Torn Fin Coastrunner
								2374,	-- Torn Fin Muckdweller
								2376,	-- Torn Fin Oracle
								2377,	-- Torn Fin Tidehunter
							},
						}),
						i(3749),	-- High Apothecary Cloak
						i(3747),	-- Meditative Sash
					},
				}),
				q(517, {	-- Elixir of Agony (4/5)
					["sourceQuest"] = 515,	-- Elixir of Agony (3/5)
					["qg"] = 2216,	-- Apothecary Lydon
					["coord"] = { 61.45, 19.05, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Keg of Shindigger Stout
							["providers"] = {
								{ "i", 3517 },	-- Keg of Shindigger Stout
								{ "o", 1727 },	-- Keg of Shindigger Stout
							},
							["coord"] = { 72.7, 80.0, MAP.HILLSBRAD_FOOTHILLS },
						}),
					},
				}),
				q(524, {	-- Elixir of Agony (5/5)
					["sourceQuest"] = 517,	-- Elixir of Agony (4/5)
					["providers"] = {
						{ "n", 2216 },	-- Apothecary Lydon
						{ "i", 3520 },	-- Tainted Keg
						{ "o", 1728 },	-- Dusty Rug
					},
					["coord"] = { 61.45, 19.05, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(501, {	-- Elixir of Pain (1/2)
					["sourceQuest"] = 499,	-- Elixir of Suffering (2/2)
					["qg"] = 2216,	-- Apothecary Lydon
					["coord"] = { 61.45, 19.05, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
					["groups"] = {
						objective(1, {	-- 0/10 Mountain Lion Blood
							["provider"] = { "i", 3496 },	-- Mountain Lion Blood
							["crs"] = {
								2385,	-- Feral Mountain Lion
								2407,	-- Hulking Mountain Lion
								2406,	-- Mountain Lion
								2384,	-- Starving Mountain Lion
							},
						}),
						i(2230),	-- Gloves of Brawn
						i(3741),	-- Stomping Boots
						i(6482),	-- Firewalker Boots
						i(3735),	-- Recipe: Hot Lion Chops (RECIPE!)
					},
				}),
				q(502, {	-- Elixir of Pain (2/2)
					["sourceQuest"] = 501,	-- Elixir of Pain (1/2)
					["providers"] = {
						{ "n", 2216 },	-- Apothecary Lydon
						{ "i", 3497 },	-- Elixir of Pain
					},
					["coord"] = { 61.45, 19.05, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
				}),
				q(496, {	-- Elixir of Suffering (1/2)
					["qg"] = 2216,	-- Apothecary Lydon
					["coord"] = { 61.45, 19.05, MAP.HILLSBRAD_FOOTHILLS },
					["maps"] = { MAP.ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/10 Gray Bear Tongue
							["provider"] = { "i", 3476 },	-- Gray Bear Tongue
							["crs"] = {
								14280,	-- Big Samras
								2356,	-- Elder Gray Bear
								2351,	-- Gray Bear
								2354,	-- Vicious Gray Bear
							},
						}),
						objective(2, {	-- 0/1 Creeper Ichor
							["provider"] = { "i", 3477 },	-- Creeper Ichor
							["crs"] = {
								14279,	-- Creepthess
								2348,	-- Elder Moss Creeper
								2350,	-- Forest Moss Creeper
								2349,	-- Giant Moss Creeper
							},
						}),
					},
				}),
				q(499, {	-- Elixir of Suffering (2/2)
					["sourceQuest"] = 496,	-- Elixir of Suffering (1/2)
					["providers"] = {
						{ "n", 2216 },	-- Apothecary Lydon
						{ "i", 3495 },	-- Elixir of Suffering
					},
					["coord"] = { 61.45, 19.05, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(559, {	-- Farren's Proof (1/3)
					["sourceQuest"] = 536,	-- Down the Coast
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["coord"] = { 51.4, 58.4, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/10 Murloc Head
							["provider"] = { "i", 3716 },	-- Murloc Head
							["description"] = "Running joke is that since all adventurers take from the Murlocs is their heads, that's why the drop rate is so low - there's a bunch of headless murlocs running around!",
							["crs"] = {
								14276,	-- Scargil
								2375,	-- Torn Fin Coastrunner
								2374,	-- Torn Fin Muckdweller
								2376,	-- Torn Fin Oracle
								2377,	-- Torn Fin Tidehunter
							},
						}),
					},
				}),
				q(560, {	-- Farren's Proof (2/3)
					["sourceQuest"] = 559,	-- Farren's Proof (1/3)
					["providers"] = {
						{ "n", 2228 },	-- Lieutenant Farren Orinelle
						{ "i", 3717 },	-- Sack of Murloc Heads
					},
					["coord"] = { 51.4, 58.4, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(561, {	-- Farren's Proof (3/3)
					["sourceQuest"] = 560,	-- Farren's Proof (2/3)
					["qg"] = 2263,	-- Marshal Redpath
					["coord"] = { 49.5, 58.6, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(552, {	-- Helcular's Revenge (1/2)
					["qg"] = 2429,	-- Novice Thaivand
					["coord"] = { 63.87, 19.66, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/1 Helcular's Rod
							["provider"] = { "i", 3708 },	-- Helcular's Rod
							["crs"] = {
								2248,	-- Cave Yeti
								2249,	-- Ferocious Yeti
								2251,	-- Giant Yeti
								2250,	-- Mountain Yeti
							},
						}),
					},
				}),
				q(553, {	-- Helcular's Revenge (2/2)
					["sourceQuest"] = 552,	-- Helcular's Revenge (1/2)
					["qg"] = 2429,	-- Novice Thaivand
					["coord"] = { 63.87, 19.66, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- Flame of Azel charged
							["providers"] = {
								{ "i", 3710 },	-- Rod of Helcular
								{ "o", 1768 },	-- Flame of Azel
							},
							["coord"] = { 46.0, 32.0, MAP.HILLSBRAD_FOOTHILLS },
						}),
						objective(2, {	-- Flame of Veraz charged
							["providers"] = {
								{ "i", 3710 },	-- Rod of Helcular
								{ "o", 1769 },	-- Flame of Veraz
							},
							["coord"] = { 46.0, 32.0, MAP.HILLSBRAD_FOOTHILLS },
						}),
						objective(3, {	-- Flame of Uzel charged
							["providers"] = {
								{ "i", 3710 },	-- Rod of Helcular
								{ "o", 1770 },	-- Flame of Uzel
							},
							["coord"] = { 37.0, 68.0, MAP.ALTERAC_MOUNTAINS },
						}),
					},
				}),
				q(2480, {	-- Hinott's Assistance (2/2)
					["sourceQuest"] = 2479,	-- Hinott's Assistance (1/2)
					["qg"] = 2391,	-- Serge Hinott
					["coord"] = { 61.6, 19.2, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
					["groups"] = {
						recipe(8681, {	-- Instant Poison
						}),
						recipe(2842, {	-- Poisons
						}),
						i(8095),	-- Hinott's Oil
					},
				}),
				q(547, {	-- Humbert's Sword
					["qg"] = 2419,	-- Deathguard Humbert
					["coord"] = { 62.74, 20.21, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/1 Humbert's Sword
							["provider"] = { "i", 3693 },	-- Humbert's Sword
							["crs"] = {
								2344,	-- Dun Garok Mountaineer
								2346,	-- Dun Garok Priest
								2345,	-- Dun Garok Rifleman
								14275,	-- Tamra Stormpike
							},
						}),
						i(3750),	-- Ribbed Breastplate
						i(3751),	-- Mercenary Leggings
					},
				}),
				q(1065, {	-- Journey to Tarren Mill
					["sourceQuest"] = 1064,	-- Forsaken Aid
					["providers"] = {
						{ "n", 3419 },	-- Apothecary Zamah
						{ "i", 5628 },	-- Zamah's Note
					},
					["coord"] = { 22.85, 20.90, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(540, {	-- Preserving Knowledge
					["sourceQuest"] = 538,	-- Southshore
					["qg"] = 2277,	-- Loremaster Dibbs
					["coord"] = { 50.6, 57.1, MAP.HILLSBRAD_FOOTHILLS },
					["maps"] = { MAP.ALTERAC_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/5 Recovered Tome
							["provider"] = { "i", 3658 },	-- Recovered Tome
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
						objective(2, {	-- Worn Leather Book
							["providers"] = {
								{ "i", 3659 },	-- Worn Leather Book
								{ "o", 1760 },	-- Weathered Bookcase
							},
							["coord"] = { 38.5, 46.5, MAP.ALTERAC_MOUNTAINS },
						}),
					},
				}),
				q(544, {	-- Prison Break In
					["qg"] = 2410,	-- Magus Wordeen Voidglare
					["coord"] = { 61.60, 20.85, MAP.HILLSBRAD_FOOTHILLS },
					["maps"] = { MAP.ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Bloodstone Wedge
							["provider"] = { "i", 3691 },	-- Bloodstone Wedge
							["coord"] = { 19.4, 86.0, MAP.ALTERAC_MOUNTAINS },
							["cr"] = 2413,	-- Dermot
						}),
						objective(2, {	-- 0/1 Bloodstone Marble
							["provider"] = { "i", 3689 },	-- Bloodstone Marble
							["coord"] = { 20.8, 84.6, MAP.ALTERAC_MOUNTAINS },
							["cr"] = 2411,	-- Ricter
						}),
						objective(3, {	-- 0/1 Bloodstone Shard
							["provider"] = { "i", 3690 },	-- Bloodstone Shard
							["coord"] = { 20.4, 86.0, MAP.ALTERAC_MOUNTAINS },
							["cr"] = 2412,	-- Alina
						}),
						objective(4, {	-- 0/1 Bloodstone Oval
							["provider"] = { "i", 3688 },	-- Bloodstone Oval
							["coord"] = { 18.0, 83.6, MAP.ALTERAC_MOUNTAINS },
							["cr"] = 2414,	-- Kegan Darkmar
						}),
					},
				}),
				q(563, {	-- Reassignment
					["sourceQuest"] = 562,	-- Stormwind Ho!
					["providers"] = {
						{ "n", 2228 },	-- Lieutenant Farren Orinelle
						{ "i", 3721 },	-- Farren's Report
					},
					["coord"] = { 51.4, 58.4, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(542, {	-- Return to Milton
					["sourceQuest"] = 540,	-- Preserving Knowledge
					["providers"] = {
						{ "n", 2277 },	-- Loremaster Dibbs
						{ "i", 3660 },	-- Tomes of Alterac
					},
					["coord"] = { 50.6, 57.1, MAP.HILLSBRAD_FOOTHILLS },
					["maps"] = { MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1067, {	-- Return to Thunder Bluff
					["sourceQuest"] = 1066,	-- Blood of Innocents
					["qgs"] = {
						2216,	-- Apothecary Lydon
						5588,	-- Lydon's Toxin
					},
					["coord"] = { 61.4, 19.2, MAP.HILLSBRAD_FOOTHILLS },
					["maps"] = { MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				{	-- Soothing Turtle Bisque
					["allianceQuestData"] = q(555, {	-- Soothing Turtle Bisque (A)
						["qg"] = 2430,	-- Chef Jessen
						["coord"] = { 51.8, 58.7, MAP.HILLSBRAD_FOOTHILLS },
					}),
					["hordeQuestData"] = q(7321, {	-- Soothing Turtle Bisque (H)
						["qg"] = 2393,	-- Christoph Jeffcoat
						["coord"] = { 62.30, 19.05, MAP.HILLSBRAD_FOOTHILLS },
					}),
					["requireSkill"] = COOKING,
					["cost"] = {
						{ "i", 3712, 10 },	-- Turtle Meat
						{ "i", 3713, 1 },	-- Soothing Spices
					},
					["lvl"] = 28,
					["groups"] = {
						i(3737),	-- Recipe: Soothing Turtle Bisque (RECIPE!)
						i(3729),	-- Soothing Turtle Bisque
					},
				},
				q(538, {	-- Southshore
					["sourceQuest"] = 337,	-- An Old History Book
					["qg"] = 1440,	-- Milton Sheaf <Librarian>
					["coord"] = { 77.1, 30.2, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
				}),
				q(546, {	-- Souvenirs of Death
					["sourceQuest"] = 527,	-- Battle of Hillsbrad (1/7)
					["qg"] = 2418,	-- Deathguard Samsa
					["coord"] = { 62.12, 19.72, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/30 Hillsbrad Human Skull
							["provider"] = { "i", 3692 },	-- Hillsbrad Human Skull
							["crs"] = {
								2404,	-- Blacksmith Verringtan
								2449,	-- Citizen Wilkes
								2448,	-- Clerk Horrace Whitesteed
								2403,	-- Farmer Getz
								2451,	-- Farmer Kalaba
								232,	-- Farmer Ray
								2305,	-- Foreman Bonds
								2265,	-- Hillsbrad Apprentice Blacksmith
								2387,	-- Hillsbrad Councilman
								2266,	-- Hillsbrad Farmer
								2360,	-- Hillsbrad Farmhand
								2268,	-- Hillsbrad Footman
								2503,	-- Hillsbrad Foreman
								2269,	-- Hillsbrad Miner
								2267,	-- Hillsbrad Peasant
								2270,	-- Hillsbrad Sentry
								2264,	-- Hillsbrad Tailor
								2427,	-- Jailor Eston
								2428,	-- Jailor Marlgen
								2335,	-- Magistrate Burnside
								2450,	-- Miner Hackett
								2260,	-- Syndicate Rogue
								2244,	-- Syndicate Shadow Mage
								2261,	-- Syndicate Watchman
							},
						}),
						i(3739),	-- Skull Ring
					},
				}),
				q(556, {	-- Stone Tokens
					["qg"] = 2437,	-- Keeper Bel'varil
					["coord"] = { 61.50, 20.91, MAP.HILLSBRAD_FOOTHILLS },
					["maps"] = { MAP.ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Worn Stone Token
							["provider"] = { "i", 3714 },	-- Worn Stone Token
							["crs"] = {
								2271,	-- Dalaran Shield Guard
								2358,	-- Dalaran Summoner
								2272,	-- Dalaran Theurgist
								2628,	-- Dalaran Worker
								2415,	-- Warden Belamoore
							},
						}),
					},
				}),
				q(562, {	-- Stormwind Ho!
					["sourceQuest"] = 561,	-- Farren's Proof (3)
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["coord"] = { 51.4, 58.4, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/10 Daggerspine Shorehunter slain
							["provider"] = { "n", 2369 },	-- Daggerspine Shorehunter
						}),
						objective(2, {	-- 0/10 Daggerspine Siren slain
							["provider"] = { "n", 2371 },	-- Daggerspine Siren
						}),
						i(3755),	-- Fish Gutter
					},
				}),
				q(498, {	-- The Rescue
					["qg"] = 2229,	-- Krusk
					["coord"] = { 63.24, 20.68, MAP.HILLSBRAD_FOOTHILLS },
					["maps"] = { MAP.ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- Rescue Drull
							["providers"] = {
								{ "n", 2239 },	-- Drull
								{ "o", 1721 },	-- Locked ball and chain
								{ "i", 3467 },	-- Dull Iron Key
							},
							["coords"] = {
								{ 75.2, 41.6, MAP.HILLSBRAD_FOOTHILLS },
								{ 75.6, 42.6, MAP.HILLSBRAD_FOOTHILLS },
								{ 79.6, 42.0, MAP.HILLSBRAD_FOOTHILLS },
							},
							["cr"] = 2427,	-- Jailor Eston
						}),
						objective(2, {	-- Rescue Tog'thar
							["providers"] = {
								{ "n", 2238 },	-- Tog'thar
								{ "o", 1722 },	-- Locked ball and chain
								{ "i", 3499 },	-- Burnished Gold Key
							},
							["coords"] = {
								{ 79.6, 39.6, MAP.HILLSBRAD_FOOTHILLS },
								{ 79.6, 40.6, MAP.HILLSBRAD_FOOTHILLS },
							},
							["cr"] = 2428,	-- Jailor Marlgen
						}),
						i(3752),	-- Grunt Vest
						i(3733),	-- Orcish War Chain
						i(3734),	-- Recipe: Big Bear Steak (RECIPE!)
					},
				}),
				q(494, {	-- Time To Strike
					["qg"] = 2214,	-- Deathstalker Lesh
					["coord"] = { 20.79, 47.41, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(549, {	-- WANTED: Syndicate Personnel
					["provider"] = { "o", 1763 },	-- WANTED
					["coord"] = { 62.61, 20.76, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/10 Syndicate Rogue slain
							["provider"] = { "n", 2260 },	-- Syndicate Rogue
						}),
						objective(2, {	-- 0/10 Syndicate Watchman slain
							["provider"] = { "n", 2261 },	-- Syndicate Watchman
						}),
					},
				}),
			}),
			n(RARES, {
				n(14280, {	-- Big Samras
					["coords"] = {
						{ 72.6, 29.0, MAP.HILLSBRAD_FOOTHILLS },
						{ 75.8, 31.6, MAP.HILLSBRAD_FOOTHILLS },
						{ 86.6, 39.6, MAP.HILLSBRAD_FOOTHILLS },
						{ 85.0, 47.6, MAP.HILLSBRAD_FOOTHILLS },
					},
				}),
				n(14279, {	-- Creepthess
					["coords"] = {
						{ 25.8, 54.6, MAP.HILLSBRAD_FOOTHILLS },
						{ 28.4, 63.4, MAP.HILLSBRAD_FOOTHILLS },
						{ 35.2, 60.4, MAP.HILLSBRAD_FOOTHILLS },
						{ 39.2, 51.6, MAP.HILLSBRAD_FOOTHILLS },
					},
				}),
				n(14277, {	-- Lady Zephris
					["coords"] = {
						{ 58.2, 70.4, MAP.HILLSBRAD_FOOTHILLS },
						{ 60.6, 75.2, MAP.HILLSBRAD_FOOTHILLS },
						{ 65.6, 77.8, MAP.HILLSBRAD_FOOTHILLS },
						{ 65.8, 80.2, MAP.HILLSBRAD_FOOTHILLS },
						{ 67.8, 87.6, MAP.HILLSBRAD_FOOTHILLS },
					},
				}),
				n(14278, {	-- Ro'Bark
					["coords"] = {
						{ 61.8, 60.6, MAP.HILLSBRAD_FOOTHILLS },
						{ 66.2, 58.8, MAP.HILLSBRAD_FOOTHILLS },
						{ 66.2, 64.8, MAP.HILLSBRAD_FOOTHILLS },
						{ 63.2, 63.4, MAP.HILLSBRAD_FOOTHILLS },
					},
				}),
				n(14276, {	-- Scargil
					["coords"] = {
						{ 23.6, 64.4, MAP.HILLSBRAD_FOOTHILLS },
						{ 26.0, 65.4, MAP.HILLSBRAD_FOOTHILLS },
						{ 26.2, 73.0, MAP.HILLSBRAD_FOOTHILLS },
						{ 31.4, 72.2, MAP.HILLSBRAD_FOOTHILLS },
					},
				}),
				n(14275, {	-- Tamra Stormpike
					["coords"] = {
						{ 65.0, 66.2, MAP.HILLSBRAD_FOOTHILLS },
						{ 68.6, 77.8, MAP.HILLSBRAD_FOOTHILLS },
						{ 71.2, 75.4, MAP.HILLSBRAD_FOOTHILLS },
						{ 73.6, 81.0, MAP.HILLSBRAD_FOOTHILLS },
					},
					["races"] = HORDE_ONLY,
				}),
			}),
			n(VENDORS, {
				n(2393, {	-- Christoph Jeffcoat <Tradesman>
					["coord"] = { 62.2, 19.0, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5788, {	-- Pattern: Thick Murloc Armor (RECIPE!)
							["isLimited"] = true,
						}),
						i(6054, {	-- Recipe: Shadow Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2397, {	-- Derak Nightfall <Cook>
					["coord"] = { 63.0, 19.6, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6330),	-- Recipe: Bristle Whisker Catfish (RECIPE!)
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(2698, {	-- George Candarte <Leatherworking Supplies>
					["coord"] = { 92.0, 38.6, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(7613, {	-- Pattern: Green Leather Armor (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2388, {	-- Innkeeper Shay <Innkeeper>
					["coord"] = { 62.6, 19.0, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(3703),	-- Southshore Stout
					},
				}),
				n(3536, {	-- Kris Legace <Freewheeling Tradeswoman>
					["coord"] = { 80.0, 39.0, MAP.HILLSBRAD_FOOTHILLS },
					["groups"] = {
						i(4795, {	-- Bear Bracers
							["isLimited"] = true,
						}),
						i(4832, {	-- Mystic Sarong
							["isLimited"] = true,
						}),
						i(4796, {	-- Owl Bracers
							["isLimited"] = true,
						}),
						i(4830, {	-- Saber Leggings
							["isLimited"] = true,
						}),
						i(4831, {	-- Stalking Pants
							["isLimited"] = true,
						}),
						i(4794, {	-- Wolf Bracers
							["isLimited"] = true,
						}),
					},
				}),
				n(2383, {	-- Lindea Rabonne <Tackle and Bait>
					["coord"] = { 50.6, 61.0, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6330),	-- Recipe: Bristle Whisker Catfish (RECIPE!)
						i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
						i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
					},
				}),
				n(2394, {	-- Mallen Swain <Tailoring Supplies>
					["coord"] = { 62.0, 21.0, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6274, {	-- Pattern: Blue Overalls (RECIPE!)
							["isLimited"] = true,
						}),
						i(6401, {	-- Pattern: Dark Silk Shirt (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2357, {	-- Merideth Carlson <Horse Breeder>
					["coord"] = { 52.2, 55.4, MAP.HILLSBRAD_FOOTHILLS },

					-- Available to Humans without faction requirements.
					["minReputation"] = { FACTION_STORMWIND, EXALTED },	-- Stormwind, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. HUMAN .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2414),	-- Pinto Bridle
						i(5655),	-- Chestnut Mare Bridle
						i(5656),	-- Brown Horse Bridle
						i(18776),	-- Swift Palomino
						i(18777),	-- Swift Brown Steed
						i(18778),	-- Swift White Steed
					},
				}),
				n(2381, {	-- Micha Yance <Trade Goods>
					["coord"] = { 49.0, 55.2, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11163, {	-- Formula: Enchant Bracer - Lesser Dodge / CLASSIC: Formula: Enchant Bracer - Lesser Deflection (RECIPE!)
							["isLimited"] = true,
						}),
						i(4355, {	-- Pattern: Icy Cloak (RECIPE!)
							["isLimited"] = true,
						}),
						i(5788, {	-- Pattern: Thick Murloc Armor (RECIPE!)
							["isLimited"] = true,
						}),
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(2380, {	-- Nandar Branson <Alchemy Supplies>
					["coord"] = { 50.9, 57.1, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6055, {	-- Recipe: Fire Protection Potion (RECIPE!)
							["description"] =
								"This item can be sold on the Neutral Auction House to Alliance Alchemists for a... nominal fee.\n\nOnly naturally accessible to Horde players.",
							["isLimited"] = true,
						}),
					},
				}),
				n(3539, {	-- Ott <Weaponsmith>
					["coord"] = { 60.4, 26.0, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4817, {	-- Blessed Claymore
							["isLimited"] = true,
						}),
						i(4824, {	-- Blurred Axe
							["isLimited"] = true,
						}),
						i(12247, {	-- Broad Bladed Knife
							["isLimited"] = true,
						}),
						i(4825, {	-- Callous Axe
							["isLimited"] = true,
						}),
						i(4818, {	-- Executioner's Sword
							["isLimited"] = true,
						}),
						i(4826, {	-- Marauder Axe
							["isLimited"] = true,
						}),
						i(12249, {	-- Merciless Axe
							["isLimited"] = true,
						}),
					},
				}),
				n(3543, {	-- Robert Aebischer <Superior Armorsmith>
					["coord"] = { 51.2, 57.0, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4797, {	-- Fiery Cloak
							["isLimited"] = true,
						}),
						i(4798, {	-- Heavy Runed Cloak
							["isLimited"] = true,
						}),
						i(4799, {	-- Antiquated Cloak
							["isLimited"] = true,
						}),
						i(4800, {	-- Mighty Chain Pants
							["isLimited"] = true,
						}),
						i(4816, {	-- Legionnaire's Leggings
							["isLimited"] = true,
						}),
						i(4833, {	-- Glorious Shoulders
							["isLimited"] = true,
						}),
						i(4835, {	-- Elite Shoulders
							["isLimited"] = true,
						}),
					},
				}),
				n(3537, {	-- Zixil <Merchant Supreme>
					["coords"] = {
						{ 60.8, 19.8, MAP.HILLSBRAD_FOOTHILLS },
						{ 55.6, 34.6, MAP.HILLSBRAD_FOOTHILLS },
						{ 50.4, 50.8, MAP.HILLSBRAD_FOOTHILLS },
					},
					["groups"] = {
						i(4829, {	-- Dreamer's Belt
							["isLimited"] = true,
						}),
						i(4836, {	-- Fireproof Orb
							["isLimited"] = true,
						}),
						i(6377, {	-- Formula: Enchant Boots - Minor Agility (RECIPE!)
							["isLimited"] = true,
						}),
						i(4828, {	-- Nightwind Belt
							["isLimited"] = true,
						}),
						i(4838, {	-- Orb of Power
							["isLimited"] = true,
						}),
						i(7362, {	-- Pattern: Earthen Leather Shoulders (RECIPE!)
							["isLimited"] = true,
						}),
						i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
							["isLimited"] = true,
						}),
						i(7561, {	-- Schematic: Goblin Jumper Cables (RECIPE!)
							["isLimited"] = true,
						}),
						i(4837, {	-- Strength of Will
							["isLimited"] = true,
						}),
						i(4827, {	-- Wizard's Belt
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(3668, {	-- Assassin's Contract
					["description"] = "The assassins spawn as part of a random world event. AFK in Southshore and eventually they'll spawn nearby.",
					["coord"] = { 50.8, 58.8, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 2434,	-- Shadowy Assassin
					["lvl"] = 30,
				}),
				i(3204, {	-- Deepwood Bracers
					["coords"] = {
						{ 58.8, 74.6, MAP.HILLSBRAD_FOOTHILLS },
						{ 57.8, 75.8, MAP.HILLSBRAD_FOOTHILLS },
					},
					["cr"] = 2372,	-- Mudsnout Gnoll
				}),
				i(3336, {	-- Flesh Piercer
					["coords"] = {
						{ 59.6, 89.4, MAP.HILLSBRAD_FOOTHILLS },
						{ 57.2, 84.2, MAP.HILLSBRAD_FOOTHILLS },
					},
					["crs"] = {
						2370,	-- Daggerspine Screamer
						2368,	-- Daggerspine Shorestalker
					},
				}),
				i(11152, {	-- Formula: Enchant Gloves - Fishing (RECIPE!)
					["crs"] = {
						14276,	-- Scargil
						2375,	-- Torn Fin Coastrunner
						2374,	-- Torn Fin Muckdweller
						2376,	-- Torn Fin Oracle
						2377,	-- Torn Fin Tidehunter
					},
				}),
				i(3429, {	-- Guardsman Belt
					["crs"] = {
						2427,	-- Jailor Eston
						2428,	-- Jailor Marlgen
					},
				}),
				i(3053, {	-- Humbert's Chestpiece
					["crs"] = {
						2344,	-- Dun Garok Mountaineer
					},
				}),
				i(4724, {	-- Humbert's Helm
					["coords"] = {
						{ 71.2, 74.2, MAP.HILLSBRAD_FOOTHILLS },
						{ 72.0, 81.0, MAP.HILLSBRAD_FOOTHILLS },
					},
					["crs"] = {
						2345,	-- Dun Garok Rifleman
					},
				}),
				i(4723, {	-- Humbert's Pants
					["coords"] = {
						{ 70.6, 75.6, MAP.HILLSBRAD_FOOTHILLS },
						{ 71.4, 81.4, MAP.HILLSBRAD_FOOTHILLS },
					},
					["crs"] = {
						2346,	-- Dun Garok Priest
					},
				}),
				i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
					["cr"] = 2264,	-- Hillsbrad Tailor
				}),
				i(1485, {	-- Pitchfork
					["coords"] = {
						{ 31.8, 35.2, MAP.HILLSBRAD_FOOTHILLS },
						{ 36.6, 40.0, MAP.HILLSBRAD_FOOTHILLS },
						{ 34.2, 48.2, MAP.HILLSBRAD_FOOTHILLS },
					},
					["crs"] = {
						2403,	-- Farmer Getz
						2451,	-- Farmer Kalaba
						232,	-- Farmer Ray
						2266,	-- Hillsbrad Farmer
					},
				}),
				i(6211, {	-- Recipe: Elixir of Ogre's Strength
					["cr"] = 2373,	-- Mudsnout Shaman
				}),
			}),
		},
	}),
}));
