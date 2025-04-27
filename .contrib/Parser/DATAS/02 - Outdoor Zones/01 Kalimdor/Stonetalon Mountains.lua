---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KALIMDOR, {
	m(STONETALON_MOUNTAINS, {
		["lore"] =
			-- #if AFTER CATA
			"Stonetalon Mountains was heavily changed in the Shattering. Formerly a sleepy zone facing threats from the goblin loggers, it's now a fast-paced zone tracing a ticking time bomb headed towards a night elf camp by Stonetalon Peak.",
			-- #else
			"The Stonetalon Mountains are craggy and forbidding. The air is usually hot, though violent rainstorms and severe winds cool the slopes and endanger travelers. The mountains are home to many fierce creatures, including hippogryphs, harpies, drakes, wyverns and kobolds. This region is inhospitable and extreme.",
			-- #endif
		["icon"] = 236831,
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(847),	-- Explore Stonetalon Mountains
				ach(4936, {	-- Stonetalon Mountains Quests (A)
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						25642,	-- Don't Look Them in the Eyes
						25646,	-- Windshear Mine Cleanup
						25931,	-- Brood of Seldarria
						25851,	-- Dances with Grimtotem
					},
					-- #endif
				}),
				ach(4980, {	-- Stonetalon Mountains Quests (H)
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						26010,	-- Ashes to Ashes
						26058,	-- In Defense of Krom'Gar Fortress
						26067,	-- Jin'Zil's Blessing
						26068,	-- Kobold Fury!
						26115,	-- To Be Horde...
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					487,	-- Alpine Chipmunk (PET!)
					633,	-- Mountain Skunk (PET!)
					378,	-- Rabbit (PET!)
					472,	-- Rabid Nut Varmint 5000 (PET!)
					417,	-- Rat (PET!)
					424,	-- Roach (PET!)
				}},
				["groups"] = {
					pet(488),	-- Coral Snake (PET!)
					pet(412, {	-- Spider (PET!)
						["description"] = "The best place to catch these seems to be south of Windshear Hold, but it can definitely be found in other listed places.",
					}),
					pet(506, {	-- Venomspitter Hatchling (PET!)
						["description"] = "Can be found south of Windshear Hold in Webwinder Hollow with larger spiders.",
					}),
				},
			}),
			explorationHeader({
				-- #if AFTER CATA
				exploration(4938),	-- Battlescar Valley
				-- #endif
				exploration(2540),	-- Boulderslide Ravine
				-- #if AFTER CATA
				exploration(4936),	-- Cliffwalker Post
				exploration(469),	-- Greatwood Vale
				-- #else
				exploration(2538),	-- Camp Aparaje
				-- #endif
				exploration(2537),	-- Grimtotem Post
				exploration(2539),	-- Malaka'jin
				exploration(464),	-- Mirkfallon Lake
				-- #if AFTER CATA
				exploration(4931),	-- Ruins of Eldre'thar
				-- #else
				exploration(2541),	-- Sishir Canyon
				-- #endif
				exploration(467),	-- Stonetalon Peak
				exploration(460),	-- Sun Rock Retreat
				-- #if AFTER CATA
				exploration(4937),	-- Thal'darah Overlook
				-- #endif
				exploration(465),	-- The Charred Vale
				exploration(1277),	-- The Talondeep Path
				-- #if AFTER CATA
				exploration(4941),	-- Unearthed Grounds
				exploration(4930),	-- Webwinder Hollow
				-- #endif
				exploration(1076),	-- Webwinder Path
				exploration(461),	-- Windshear Crag
			}),
			n(FLIGHT_PATHS, {
				fp(360, {	-- Cliffwalker Post, Stonetalon Mountains
					["cr"] = 35141,	-- Orna Skywatcher <Flight Master>
					["coord"] = { 45.0, 30.8, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(365, {	-- Farwatcher's Glen, Stonetalon Mountains
					["cr"] = 35138,	-- Ceyora <Flight Master>
					["coord"] = { 32.0, 61.8, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(362, {	-- Krom'gar Fortress, Stonetalon Mountains
					["cr"] = 35140,	-- Kormal the Swift <Flight Master>
					["coord"] = { 66.4, 62.8, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(363, {	-- Malaka'jin, Stonetalon Mountains
					["cr"] = 35139,	-- Zillane <Flight Master>
					["coord"] = { 70.6, 89.4, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(541, {	-- Mirkfallon Post, Stonetalon Mountains
					["cr"] = 41240,	-- Fiora Moonsoar <Flight Master>
					["coord"] = { 48.6, 51.5, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(364, {	-- Northwatch Expedition Base Camp, Stonetalon Mountains
					["cr"] = 35136,	-- Kaluna Songflight <Flight Master>
					["coord"] = { 70.9, 80.6, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(29, {	-- Sun Rock Retreat, Stonetalon Mountains
					["cr"] = 4312,	-- Tharm <Wind Rider Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 48.4, 62.0, STONETALON_MOUNTAINS },
						-- #else
						{ 45.2, 59.8, STONETALON_MOUNTAINS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
				fp(33, {	-- Thal'darah Overlook, Stonetalon Mountains [CATA+] / Stonetalon Peak, Stonetalon Mountains
					["cr"] = 4407,	-- Teloren <Hippogryph Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 40.1, 32.0, STONETALON_MOUNTAINS },
						-- #else
						{ 36.4, 7.2, STONETALON_MOUNTAINS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				fp(540, {	-- The Sludgewerks, Stonetalon Mountains
					["cr"] = 41246,	-- Flok <Flight Master>
					["coord"] = { 53.8, 40.0, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(361, {	-- Windshear Hold, Stonetalon Mountains
					["cr"] = 35137,	-- Allana Swiftglide <Flight Master>
					["coord"] = { 58.8, 54.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			spell(921, {	-- Pickpocketing
				["classes"] = { ROGUE },
				["groups"] = {
					applyclassicphase(SOD_PHASE_ONE, i(210187, {	-- Venture Co. Work Order
						["coord"] = { 67.2, 52.2, STONETALON_MOUNTAINS },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							3988,	-- Venture Co. Operator
							4070,	-- Venture Co. Builder
							3992,	-- Venture Co. Engineer
							3993,	-- Venture Co. Machine Smith
						},
					})),
				},
			}),
			-- #endif
			n(PROFESSIONS, {
				prof(FISHING, {
					o(180662),	-- Schooner Wreckage
				}),
			}),
			n(QUESTS, {
				q(1071, {	-- A Gnome's Respite
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["sourceQuest"] = 1085,	-- On Guard in Stonetalon (2/2)
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/10 Venture Co. Logger slain
							["provider"] = { "n", 3989 },	-- Venture Co. Logger
						}),
						objective(2, {	-- 0/10 Venture Co. Deforester slain
							["provider"] = { "n", 3991 },	-- Venture Co. Deforester
						}),
					},
				}),
				q(25837, {	-- A Proper Peace Offerin'
					["qg"] = 41278,	-- "Cookie" McWeaksauce
					["sourceQuest"] = 25834,	-- Death by Proxy
					["coord"] = { 70.9, 79.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Kalimdor Eagle Egg
							["providers"] = {
								{ "i",  56041 },	-- Kalimdor Eagle Egg
								{ "o", 203253 },	-- Kalimdor Eagle Nest
							},
							["coord"] = { 64.6, 86.0, STONETALON_MOUNTAINS },
						}),
						objective(2, {	-- 0/8 Ram Haunch
							["provider"] = { "i", 56040 },	-- Ram Haunch
							["coord"] = { 66.8, 82.6, STONETALON_MOUNTAINS },
							["cr"] = 34894,	-- Stonetalon Ram
						}),
						objective(3, {	-- 0/10 Boulderslide Cheese
							["provider"] = { "i", 56042 },	-- Boulderslide Cheese
							["coord"] = { 60.2, 87.6, STONETALON_MOUNTAINS },
							["crs"] = {
								11917,	-- Boulderslide Geomancer
								11915,	-- Boulderslide Rock Keeper
								11918,	-- Boulderslide Stonepounder
							},
						}),
					},
				}),
				q(1075, {	-- A Scroll from Mauren
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["sourceQuest"] = 1071,	-- A Gnome's Respite
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(25821, {	-- A Special Kind of Job
					["qg"] = 41277,	-- Lieutenant Paulson
					["sourceQuests"] = {
						25808,	-- Is This Thing On?
						25809,	-- Leave No Man Behind
						25811,	-- Shuttin Her Down
					},
					["coord"] = { 72.1, 76.0, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25852, {	-- All's Clear
					["qg"] = 41229,	-- Force Commander Valen
					["sourceQuest"] = 25851,	-- Dances with Grimtotem
					["coord"] = { 71.1, 79.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26073, {	-- All's Quiet on the Southern Front [Krom'gar Champion]
					["qg"] = 3995,	-- Witch Doctor Jin'Zil
					["sourceQuests"] = {
						26067,	-- Jin'Zil's Blessing
						26068,	-- Kobold Fury!
					},
					["coord"] = { 71.1, 91.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26002, {	-- Alliance Attack Plans
					["qg"] = 40901,	-- Blastgineer Fuzzwhistle
					["sourceQuest"] = 26001,	-- The Missing Blastgineer
					["coord"] = { 73.2, 56.6, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Alliance Attack Plans
							["provider"] = { "i", 56469 },	-- Alliance Attack Plans
							["coord"] = { 75.2, 58.0, STONETALON_MOUNTAINS },
							["cr"] = 41864,	-- Huntress Davinia
						}),
					},
				}),
				q(1072, {	-- An Old Colleague
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["sourceQuest"] = 1071,	-- A Gnome's Respite
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(26047, {	-- And That's Why They Call Them Peons...
					["qg"] = 41992,	-- Blastgineer Igore
					["sourceQuest"] = 26044,	-- Where Are the Parts?
					["coord"] = { 67.2, 64.5, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Frightened Peon rescued
							["provider"] = { "n", 41989 },	-- Frightened Peon
						}),
					},
				}),
				q(6284, {	-- Arachnophobia
					["provider"] = { "o", 177904 },	-- Wanted Poster: Besseleth
					["coord"] = { 59.09, 75.76, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Besseleth's Fang
							["provider"] = { "i", 16192 },	-- Besseleth's Fang
							["coord"] = { 52.8, 72.6, STONETALON_MOUNTAINS },
							["cr"] = 11921,	-- Besseleth
						}),
						i(16891, {	-- Claystone Shortsword
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(16894, {	-- Clear Crystal Rod
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25766, {	-- Arcane Legacy
					["qg"] = 40899,	-- Arcanist Valdurian
					["sourceQuest"] = 25669,	-- Rumble in the Lumber...Mill
					["coord"] = { 58.7, 56.0, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Highborne Spirit Bound
							["providers"] = {
								{ "n", 41231 },	-- Enraged Highborne Spirit
								{ "n", 41232 },	-- Bound Highborne Spirit
								{ "i", 55972 },	-- Highborne Prison
							},
						}),
					},
				}),
				q(25822, {	-- Armaments for War
					["qg"] = 41229,	-- Force Commander Valen
					["sourceQuest"] = 25845,	-- Terms of Service
					["coord"] = { 71.1, 79.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Alliance Weapon Crate
							["providers"] = {
								{ "i",  56010 },	-- Alliance Weapon Crate
								{ "o", 203279 },	-- Alliance Weapon Crate
								{ "o", 203280 },	-- Alliance Weapon Crate
							},
							["coord"] = { 77.1, 76.9, STONETALON_MOUNTAINS },
						}),
						i(57450, {	-- Northwatch Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57449, {	-- Diplomat's Chestguard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57448, {	-- Basecamp Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131447, {	-- Basecamp Breeches
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25930, {	-- Ascending the Vale
					["qg"] = 41487,	-- Hierophant Malyk
					["sourceQuest"] = 25925,	-- Thal'darah's Vengeance
					["coord"] = { 33.1, 59.6, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Ascend the Charred Vale
							["provider"] = { "i", 56221 },	-- Salsbury's Rocket Pack
						}),
					},
				}),
				q(26010, {	-- Ashes to Ashes
					["qg"] = 41023,	-- Overlord Krom'gar
					["sourceQuest"] = 26004,	-- Krom'gar Fortress
					["coord"] = { 66.0, 63.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Northwatch Tent incinerated
							["providers"] = {
								{ "o", 203431 },	-- Northwatch Tent
								{ "i",  56473 },	-- Krom'gar Flame Thrower
							},
							["coord"] = { 62.0, 63.0, STONETALON_MOUNTAINS },
						}),
						i(57479, {	-- Flamethrower's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57478, {	-- Vest of Ashes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57477, {	-- Overlord's Favor
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131464, {	-- Tunic of Ashes
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(6548, {	-- Avenge My Village
					["qg"] = 11857,	-- Makaba Flathoof
					["coord"] = { 35.23, 27.79, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/8 Grimtotem Ruffian slain
							["provider"] = { "n", 11910 },	-- Grimtotem Ruffian
						}),
						objective(2, {	-- 0/6 Grimtotem Mercenary slain
							["provider"] = { "n", 11911 },	-- Grimtotem Mercenary
						}),
					},
				}),
				q(25914, {	-- Back to the Depths!
					["qg"] = 41488,	-- Sentinel Mistress Geleneth
					["sourceQuest"] = 25891,	-- Last Ditch Effort
					["coord"] = { 39.6, 30.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Harbinger Aph'lass slain
							["provider"] = { "n", 34923 },	-- Harbinger Aph'lass
						}),
						objective(2, {	-- 0/10 Invading Tentacle slain
							["providers"] = {
								{ "n", 34961 },	-- Invading Crusher
								{ "n", 34917 },	-- Invading Tendril
							},
						}),
					},
				}),
				q(25999, {	-- Barrier to Entry
					["qg"] = 34341,	-- Saurboz
					["sourceQuest"] = 25945,	-- We're Here to Do One Thing, Maybe Two...
					["coord"] = { 74.3, 47.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Krom'gar "Elf Killer" armed
							["providers"] = {
								{ "i",  56263 },	-- Land Mine Wrench
								{ "o", 203414 },	-- Krom'gar "Elf Killer"
							},
						}),
						i(57471, {	-- Elf-Killer Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57470, {	-- Incinerator's Gauntlets
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57469, {	-- Saurboz's Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131463, {	-- Saurboz's Handwraps
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26074, {	-- Beginning of the End
					["qg"] = 41023,	-- Overlord Krom'gar
					["sourceQuest"] = 26073,	-- All's Quiet on the Southern Front
					["coord"] = { 66.1, 63.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Krom'gar Hot Air Balloon safely escorted to the Sludgewerks
							["provider"] = { "n", 42030 },	-- Krom'gar Hot Air Balloon
						}),
					},
				}),
				q(26098, {	-- Betrayal at the Grove
					["providers"] = {
						{ "n", 42091 },	-- Orthus Cliffwalker
						{ "i", 56816 },	-- Krom'gar General's Insignia
					},
					["sourceQuest"] = 26097,	-- Proof of Lies
					["coord"] = { 39.6, 46.4, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26046, {	-- Between a Rock and a Hard Place
					["qg"] = 41990,	-- Scout Utvoch
					["sourceQuest"] = 26044,	-- Where Are the Parts?
					["coord"] = { 67.0, 64.5, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Raging Earth Elemental slain
							["provider"] = { "n", 41993 },	-- Raging Earth Elemental
						}),
					},
				}),
				q(25730, {	-- BEWARE OF CRAGJAW!
					["provider"] = { "o", 203186 },	-- STAY OUT!
					["coord"] = { 65.0, 49.4, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Cragjaw's Huge Tooth
							["provider"] = { "i", 55239 },	-- Cragjaw's Huge Tooth
							["coord"] = { 66.0, 47.0, STONETALON_MOUNTAINS },
							["cr"] = 41064,	-- Cragjaw
						}),
						i(57429, {	-- Fisherman's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57430, {	-- Irongoat Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57428, {	-- Fish Stunner
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131879, {	-- Fisherman's Links
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26043, {	-- BEWARE OF CRAGJAW!
					["provider"] = { "o", 203186 },	-- STAY OUT!
					["sourceQuest"] = 26004,	-- Krom'gar Fortress
					["coord"] = { 65.0, 49.4, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Cragjaw's Huge Tooth
							["provider"] = { "i", 55239 },	-- Cragjaw's Huge Tooth
							["coord"] = { 66.0, 47.0, STONETALON_MOUNTAINS },
							["cr"] = 41064,	-- Cragjaw
						}),
						i(57483, {	-- Cragpool Band
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57482, {	-- Anara's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57481, {	-- Fisherman's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57480, {	-- Spy-Mistress' Necklace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131471, {	-- Anara's Cord
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(6461, {	-- Blood Feeders
					["qg"] = 12816,	-- Xen'Zilla
					["coord"] = { 71.25, 95.0, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/10 Deepmoss Creeper slain
							["provider"] = { "n", 4005 },	-- Deepmoss Creeper
						}),
						objective(2, {	-- 0/7 Deepmoss Venomspitter slain
							["provider"] = { "n", 4007 },	-- Deepmoss Venomspitter
						}),
					},
				}),
				q(6283, {	-- Bloodfury Bloodline
					["qg"] = 11860,	-- Maggran Earthbinder
					["sourceQuest"] = 6282,	-- Harpies Threaten
					["coord"] = { 47.17, 61.08, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Bloodfury Ripper's Remains
							["provider"] = { "i", 16190 },	-- Bloodfury Ripper's Remains
							["coord"] = { 31.8, 62.6, STONETALON_MOUNTAINS },
							["cr"] = 12579,	-- Bloodfury Ripper
						}),
						i(16990, {	-- Spritekin Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(16987, {	-- Screecher Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25768, {	-- Bombs Away: Mirkfallon Post!
					["qg"] = 40896,	-- Lord Fallowmere
					["sourceQuest"] = 25769,	-- Fallowmere Beckons
					["coord"] = { 59.6, 56.9, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(57435, {	-- Oil-Stained Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57436, {	-- Well Oiled Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57437, {	-- Barus' Backup Sword
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57434, {	-- Oiler's Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131881, {	-- Barus' Armbands
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(6421, {	-- Boulderslide Ravine
					["qg"] = 11861,	-- Mor'rogal
					["coord"] = { 47.17, 64.10, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/10 Resonite Crystal
							["providers"] = {
								{ "i",  16581 },	-- Resonite Crystal
								{ "o", 178104 },	-- Resonite Crystal
							},
							["coord"] = { 60.0, 90.1, STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(25640, {	-- Bombs Away: Windshear Mine!
					["qg"] = 40895,	-- Professor Xakxak Gyromate
					["sourceQuest"] = 25622,	-- Burn, Baby, Burn!
					["coord"] = { 35.4, 71.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25931, {	-- Brood of Seldarria
					["qg"] = 41487,	-- Hierophant Malyk
					["description"] = "If you abandon this quest, you can pick it up again from Hierophant Malyk at Farwatcher's Glen.",
					["sourceQuest"] = 25930,	-- Ascending the Vale
					["coord"] = { 33.1, 59.6, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Seldarria's Egg destroyed
							["providers"] = {
								{ "o", 203384 },	-- Seldarria's Egg
								{ "i",  56221 },	-- Salsbury's Rocket Pack
							},
						}),
						i(57463, {	-- Brood-Killer Shoulderguard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57462, {	-- Goldrinn Acolyte's Cowl
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57461, {	-- Egg Smasher
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57464, {	-- Hierophant's Blessed Hands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131457, {	-- Brood-Killer Amice
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25622, {	-- Burn, Baby, Burn!
					["qg"] = 40895,	-- Professor Xakxak Gyromate
					["sourceQuest"] = 25621,	-- Field Test: Gnomecorder
					["coord"] = { 35.4, 71.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Warsong Stockpile Incinerated
							["providers"] = {
								{ "o", 40957 },	-- Warsong Stockpile
								{ "i", 55152 },	-- Warsong Flame Thrower
							},
							["coord"] = { 73.6, 50.2, STONETALON_MOUNTAINS },
						}),
						i(57426, {	-- Xakxak's Lab Frock
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57427, {	-- Vonderful Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57425, {	-- Gyromatic Axe
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(5881, {	-- Calling in the Reserves
					["providers"] = {
						{ "n", 11860 },	-- Maggran Earthbinder
						{ "i", 16189 },	-- Maggran's Reserve Letter
					},
					["coord"] = { 47.17, 61.08, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
				}),
				q(25767, {	-- Capturing Memories
					["qg"] = 40900,	-- Neophyte Starcrest
					["sourceQuest"] = 25669,	-- Rumble in the Lumber...Mill
					["coord"] = { 58.7, 56.0, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Eldre'thar Relic
							["providers"] = {
								{ "i",  55971 },	-- Eldre'thar Relic
								{ "o", 203214 },	-- Eldre'thar Relic
								{ "o", 203215 },	-- Eldre'thar Relic
								{ "o", 203216 },	-- Eldre'thar Relic
							},
							["coord"] = { 48.5, 73.0, STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(1087, {	-- Cenarius' Legacy
					["qg"] = 4198,	-- Braelyn Firehand
					["coord"] = { 45.91, 60.35, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/4 Son of Cenarius slain
							["provider"] = { "n", 4057 },	-- Son of Cenarius
						}),
						objective(2, {	-- 0/4 Daughter of Cenarius slain
							["provider"] = { "n", 4053 },	-- Daughter of Cenarius
						}),
						objective(3, {	-- 0/4 Cenarion Botanist slain
							["provider"] = { "n", 4051 },	-- Cenarion Botanist
						}),
					},
				}),
				q(25652, {	-- Commandeer That Balloon!
					["qg"] = 40879,	-- Boog the "Gear Whisperer"
					["sourceQuest"] = 25650,	-- Orders from High Command
					["coord"] = { 72.5, 61.5, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Krom'gar Hot Air Balloon Diverted
							["provider"] = { "n", 41009 },	-- Krom'gar Hot Air Balloon
						}),
						i(57420, {	-- Commandeered Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57418, {	-- Stonetalon Defender's Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57419, {	-- Wand of Bought Time
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1079, {	-- Covert Ops - Alpha
					["providers"] = {
						{ "n", 4077 },	-- Gaxim Rustfizzle
						{ "i", 5738 },	-- Covert Ops Pack
					},
					["sourceQuests"] = {
						1074,	-- Ineptitude + Chemicals = Fun (2/2)
						1077,	-- Special Delivery for Gaxim
					},
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/1 Venture Co. Engineering Plans
							["providers"] = {
								{ "i", 5718 },	-- Venture Co. Engineering Plans
								{ "o", 19602 },	-- Venture Co. Engineering Plans
							},
							["coord"] = { 66.1, 51.3, STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(1080, {	-- Covert Ops - Beta
					["providers"] = {
						{ "n", 4077 },	-- Gaxim Rustfizzle
						{ "i", 5738 },	-- Covert Ops Pack
					},
					["sourceQuests"] = {
						1074,	-- Ineptitude + Chemicals = Fun (2/2)
						1077,	-- Special Delivery for Gaxim
					},
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/1 Venture Co. Letters
							["providers"] = {
								{ "i", 5717 },	-- Venture Co. Letters
								{ "o", 19603 },	-- Venture Co. Documents
							},
							["coord"] = { 74.4, 59.2, STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(6301, {	-- Cycle of Rebirth
					["qg"] = 11864,	-- Tammra Windfield
					["coord"] = { 47.44, 58.47, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/10 Gaea Seed
							["providers"] = {
								{ "i",  16205 },	-- Gaea Seed
								{ "o", 177926 },	-- Gaea Seed
							},
							["coord"] = { 48.0, 39.8, STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(26061, {	-- Da Voodoo: Ram Horns
					["qg"] = 3995,	-- Witch Doctor Jin'Zil
					["sourceQuest"] = 26059,	-- Eyes and Ears: Malaka'jin
					["coord"] = { 71.1, 91.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Stonetalon Ram Horns
							["provider"] = { "i", 56797 },	-- Stonetalon Ram Horns
							["cr"] = 34894,	-- Stonetalon Ram
						}),
					},
				}),
				q(26062, {	-- Da Voodoo: Resonite Crystal
					["qg"] = 3995,	-- Witch Doctor Jin'Zil
					["sourceQuests"] = {
						26061,	-- Da Voodoo: Ram Horns
						26060,	-- Da Voodoo: Stormer Heart
					},
					["coord"] = { 71.1, 91.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Resonite Crystal
							["providers"] = {
								{ "i",  56795 },	-- Resonite Crystal
								{ "o", 178104 },	-- Resonite Crystal
							},
							["coord"] = { 60.0, 87.5, STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(26060, {	-- Da Voodoo: Stormer Heart
					["qg"] = 3995,	-- Witch Doctor Jin'Zil
					["sourceQuest"] = 26059,	-- Eyes and Ears: Malaka'jin
					["coord"] = { 71.1, 91.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Stormer Heart
							["provider"] = { "i", 56796 },	-- Stormer Heart
							["cr"] = 4008,	-- Cliff Stormer
						}),
					},
				}),
				q(25851, {	-- Dances with Grimtotem
					["qg"] = 11858,	-- Grundig Darkcloud
					["sourceQuest"] = 25848,	-- Downfall
					["coord"] = { 72.3, 83.8, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(57468, {	-- Valen's Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57467, {	-- Fancy Footwork
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57466, {	-- Negotiator's Armbands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131449, {	-- Valen's Treads
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57465, {	-- Ambassador's Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25834, {	-- Death by Proxy
					["qg"] = 41229,	-- Force Commander Valen
					["sourceQuest"] = 25821,	-- A Special Kind of Job
					["coord"] = { 71.1, 79.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25642, {	-- Don't Look Them in the Eyes
					["qg"] = 40879,	-- Boog the "Gear Whisperer"
					["sourceQuest"] = 25640,	-- Bombs Away: Windshear Mine!
					["coord"] = { 72.5, 61.5, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Azure Iron Ore
							["providers"] = {
								{ "i",  55174 },	-- Azure Iron Ore
								{ "o", 203132 },	-- Azure Iron Ore
							},
							["coord"] = { 71.9, 62.8, STONETALON_MOUNTAINS },
							["cr"] = 40904,	-- Krom'gar Peon
						}),
					},
				}),
				q(25848, {	-- Downfall
					["qg"] = 11858,	-- Grundig Darkcloud
					["sourceQuest"] = 25847,	-- Grimtotem Supremacy
					["coord"] = { 72.3, 83.8, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Insignia of the Horde General
							["providers"] = {
								{ "i",  56080 },	-- Insignia of the Horde General
								{ "o", 203281 },	-- Horde General's Chest
							},
							["coord"] = { 74.5, 87.8, STONETALON_MOUNTAINS },
							["crs"] = {
								41370,	-- General Vol'tar
								41368,	-- General Vaurajo
								41369,	-- General Salaman
								41367,	-- General Glubgok
							},
						}),
					},
				}),
				q(26026, {	-- Dream of a Better Tomorrow
					["qg"] = 40907,	-- Clarissa
					["sourceQuest"] = 26004,	-- Krom'gar Fortress
					["coord"] = { 66.0, 64.1, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 BD-816 War Apparatus
							["providers"] = {
								{ "i",  55227 },	-- BD-816 War Apparatus
								{ "o", 203088 },	-- BD-816 War Apparatus
							},
							["coord"] = { 63.1, 45.6, STONETALON_MOUNTAINS },
						}),
						objective(2, {	-- 0/1 Mechanized Fire
							["providers"] = {
								{ "i",  55221 },	-- Mechanized Fire
								{ "o", 203174 },	-- Mechanized Fire
							},
							["coord"] = { 63.1, 56.8, STONETALON_MOUNTAINS },
						}),
						objective(3, {	-- 0/1 Mechanized Ice
							["providers"] = {
								{ "i",  55222 },	-- Mechanized Ice
								{ "o", 203176 },	-- Mechanized Ice
							},
							["coord"] = { 66.1, 50.0, STONETALON_MOUNTAINS },
						}),
						objective(4, {	-- 0/1 Mechanized Air
							["providers"] = {
								{ "i",  55223 },	-- Mechanized Air
								{ "o", 203175 },	-- Mechanized Air
							},
							["coord"] = { 60.0, 64.2, STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(6481, {	-- Earthen Arise
					["qg"] = 11861,	-- Mor'rogal
					["sourceQuest"] = 6421,	-- Boulderslide Ravine
					["coord"] = { 47.17, 64.10, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/1 Goggeroc slain
							["providers"] = {
								{ "n",  11920 },	-- Goggeroc
								{ "o", 178145 },	-- Resonite Cask
								{ "i",  16603 },	-- Enchanted Resonite Crystal
							},
							["coord"] = { 57.4, 89.4, STONETALON_MOUNTAINS },
						}),
						i(16981, {	-- Owlbeard Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(1306, {	-- Wolfmane Wristguards
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(6393, {	-- Elemental War
					["qg"] = 11862,	-- Tsunaman
					["coord"] = { 47.28, 64.31, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/10 Incendrites
							["provider"] = { "i", 16312 },	-- Incendrites
							["crs"] = {
								4038,	-- Burning Destroyer
								4037,	-- Burning Ravager
								4036,	-- Rogue Flame Spirit
							},
						}),
					},
				}),
				q(26011, {	-- Enemy of the Horde: Marshal Paltrow
					["qg"] = 40903,	-- Spy-Mistress Anara
					["sourceQuest"] = 26004,	-- Krom'gar Fortress
					["coord"] = { 65.7, 63.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Marshal Paltrow slain
							["provider"] = { "n", 41937 },	-- Marshal Paltrow
							["coord"] = { 62.0, 67.8, STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(1083, {	-- Enraged Spirits
					["qg"] = 4080,	-- Kaela Shadowspear
					["sourceQuest"] = 1091,	-- Kaela's Update
					["coord"] = { 59.9, 66.8, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/8 Smoldering Embers
							["provider"] = { "i", 5659 },	-- Smoldering Embers
							["crs"] = {
								4038,	-- Burning Destroyer
								4037,	-- Burning Ravager
								4036,	-- Rogue Flame Spirit
							},
						}),
					},
				}),
				q(26059, {	-- Eyes and Ears: Malaka'jin
					["qg"] = 41023,	-- Overlord Krom'gar
					["sourceQuest"] = 26058,	-- In Defense of Krom'gar Fortress
					["coord"] = { 66.1, 63.6, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25769, {	-- Fallowmere Beckons
					["qg"] = 40899,	-- Arcanist Valdurian
					["sourceQuests"] = {
						25766,	-- Arcane Legacy
						25767,	-- Capturing Memories
					},
					["coord"] = { 58.7, 56.0, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26064, {	-- Fight On Their Stomachs
					["qg"] = 3411,	-- Denni'ka
					["sourceQuest"] = 26059,	-- Eyes and Ears: Malaka'jin
					["coord"] = { 72.0, 91.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Kalimdor Eagle Egg
							["providers"] = {
								{ "i",  56041 },	-- Kalimdor Eagle Egg
								{ "o", 203253 },	-- Kalimdor Eagle Nest
							},
							["coord"] = { 64.6, 86.0, STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(26077, {	-- Final Delivery
					["qg"] = 42033,	-- Jibbly Rakit
					["sourceQuest"] = 26076,	-- Spy Infestation
					["coord"] = { 52.9, 39.1, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Krom'gar Hot Air Balloon taken to Cliffwalker Post
							["provider"] = { "n", 42037 },	-- Krom'gar Hot Air Balloon
						}),
					},
				}),
				q(25662, {	-- Free Our Sisters
					["qg"] = 40896,	-- Lord Fallowmere
					["sourceQuest"] = 25652,	-- Commandeer That Balloon!
					["coord"] = { 59.6, 56.9, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Captured Huntress rescued
							["providers"] = {
								{ "n",  41070 },	-- Captured Huntress
								{ "o", 203148 },	-- Horde Cage
								{ "i",  55200 },	-- Horde Cage Key
							},
							["cr"] = 41062,	-- Krom'gar Infantry
						}),
					},
				}),
				q(1094, {	-- Further Instructions (1/2)
					["providers"] = {
						{ "n", 4201 },	-- Ziz Fizziks
						{ "i", 5735 },	-- Sealed Envelope
					},
					["sourceQuest"] = 1093,	-- Super Reaper 6000
					["coord"] = { 59.00, 62.53, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 16,
				}),
				q(1095, {	-- Further Instructions (2/2)
					["qg"] = 3442,	-- Sputtervalve
					["sourceQuest"] = 1094,	-- Further Instructions (1/2)
					["coord"] = { 62.97, 37.19, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 16,
				}),
				q(1096, {	-- Gerenzo Wrenchwhistle
					["qg"] = 4201,	-- Ziz Fizziks
					["sourceQuest"] = 1095,	-- Further Instructions (2/2)
					["coord"] = { 59.0, 62.53, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Gerenzo's Mechanical Arm
							["provider"] = { "i", 5736 },	-- Gerenzo's Mechanical Arm
							["coord"] = { 63.6, 39.6, STONETALON_MOUNTAINS },
							["cr"] = 4202,	-- Gerenzo Wrenchwhistle
						}),
						i(6667, {	-- Engineer's Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6668, {	-- Draftsman Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1090, {	-- Gerenzo's Orders (1/2)
					["qg"] = 4276,	-- Piznik
					["coord"] = { 71.80, 60.05, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 17,
				}),
				q(1092, {	-- Gerenzo's Orders (2/2)
					["providers"] = {
						{ "n", 4276 },	-- Piznik
						{ "i", 5733 },	-- Unidentified Ore
					},
					["sourceQuest"] = 1090,	-- Gerenzo's Orders (1/2)
					["coord"] = { 71.80, 60.05, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 17,
					["groups"] = {
						i(6666, {	-- Dredge Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25875, {	-- Gnome on the Inside
					["qg"] = 41233,	-- Scout Commander Barus
					["sourceQuest"] = 25768,	-- Bombs Away: Mirkfallon Post!
					["coord"] = { 48.3, 51.9, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1062, {	-- Goblin Invaders
					["qg"] = 4049,	-- Seereth Stonebreak
					["sourceQuest"] = 1061,	-- The Spirits of Stonetalon
					["coord"] = { 35.28, 27.84, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/15 Venture Co. Logger slain
							["provider"] = { "n", 3989 },	-- Venture Co. Logger
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78270, {	-- Goblin Lockpicks
					["qg"] = 4086,	-- Veenix <Venture Co. Merchant>
					["coord"] = { 58.2, 51.6, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { SILVERPINE_FOREST, SHADOWFANG_KEEP },
					["lockCriteria"] = { 1, "spellID", 400080 },	-- Engrave Chest - Deadly Brew
					["classes"] = { ROGUE },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Venture Co. Work Order
							["provider"] = { "i", 210187 },	-- Venture Co. Work Order
						}),
						i(210186, {	-- Breaching Charge
							["description"] = "Use this on the door that's normally opened by the NPC after defeating the first boss.",
						}),
					},
				})),
				-- #endif
				q(25847, {	-- Grimtotem Supremacy
					["qg"] = 11858,	-- Grundig Darkcloud
					["sourceQuest"] = 25846,	-- Grundig Darkcloud, Chieftain of the Grimtotem
					["coord"] = { 72.3, 83.8, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Grimtotem Armed
							["providers"] = {
								{ "n", 41351 },	-- Grimtotem Bodyguard
								{ "i", 56069 },	-- Alliance Weapon Crate
							},
						}),
					},
				}),
				q(25846, {	-- Grundig Darkcloud, Chieftain of the Grimtotem
					["providers"] = {
						{ "n", 41229 },	-- Force Commander Valen
						{ "i", 56061 },	-- Alliance Weapon Crates
					},
					["sourceQuest"] = 25822,	-- Armaments for War
					["coord"] = { 71.1, 79.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(6282, {	-- Harpies Threaten
					["qg"] = 11860,	-- Maggran Earthbinder
					["coord"] = { 47.17, 61.08, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/7 Bloodfury Harpy slain
							["provider"] = { "n", 4022 },	-- Bloodfury Harpy
						}),
						objective(2, {	-- 0/7 Bloodfury Ambusher slain
							["provider"] = { "n", 4025 },	-- Bloodfury Ambusher
						}),
						objective(3, {	-- 0/7 Bloodfury Slayer slain
							["provider"] = { "n", 4024 },	-- Bloodfury Slayer
						}),
						objective(4, {	-- 0/7 Bloodfury Roguefeather slain
							["provider"] = { "n", 4023 },	-- Bloodfury Roguefeather
						}),
					},
				}),
				heroscall(q(28539, {	-- Hero's Call: Stonetalon Mountains!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { DARNASSUS, THE_EXODAR },	-- Only found in Darnassus & The Exodar in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 24. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 28. (TODO: Test max level between 27 and 35)
					["lvl"] = { 24, 28 },
					-- #endif
				})),
				q(25935, {	-- Hungry Pups
					["qg"] = 41638,	-- Houndmaster Jonathan (mobileNPC)
					["description"] = "Houndmaster Jonathan walks his restless, hungry pups, around the tree.",
					["sourceQuest"] = 25925,	-- Thal'darah's Vengeance
					["coords"] = {
						{ 33.2, 59.5, STONETALON_MOUNTAINS },
						{ 33.0, 60.8, STONETALON_MOUNTAINS },
						{ 32.2, 60.9, STONETALON_MOUNTAINS },
						{ 32.3, 60.1, STONETALON_MOUNTAINS },
						{ 32.8, 59.6, STONETALON_MOUNTAINS },
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Black Dragon Whelp Filet
							["provider"] = { "i", 56223 },	-- Black Dragon Whelp Filet
							["cr"] = 34898,	-- Black Dragon Whelp
						}),
					},
				}),
				q(26045, {	-- I Got Your Parts Right Here...
					["qg"] = 41991,	-- Sergeant Dontrag
					["sourceQuest"] = 26044,	-- Where Are the Parts?
					["coord"] = { 67.1, 64.5, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Spare Part
							["providers"] = {
								{ "i",  56575 },	-- Spare Part
								{ "o", 203443 },	-- Spare Part
							},
							["coord"] = { 66.6, 68.0, STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(25739, {	-- If the Horde Don't Get You...
					["qg"] = 40897,	-- Northwatch Captain Kosak
					["sourceQuest"] = 25669,	-- Rumble in the Lumber...Mill
					["coord"] = { 59.5, 57.0, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Queen Silith slain
							["provider"] = { "n", 41185 },	-- Queen Silith
							["coord"] = { 57.6, 69.2, STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(25647, {	-- Illegible Orc Letter
					["provider"] = { "i", 55181 },	-- Illegible Orc Letter
					["sourceQuest"] = 25640,	-- Bombs Away: Windshear Mine
					["coord"] = { 72.3, 61.7, STONETALON_MOUNTAINS },
					["crs"] = { 40905 },	-- Windshear Overseer
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26058, {	-- In Defense of Krom'gar Fortress [Krom'gar Legionnaire]
					["qg"] = 40902,	-- Chief Blastgineer Bombguts
					["sourceQuest"] = 26048,	-- Spare Parts Up in Here!
					["coord"] = { 66.2, 62.9, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Gnomish Flying Machine slain
							["providers"] = {
								{ "n", 42015 },	-- Gnomish Bomber
								{ "n", 42016 },	-- Gnomish Flying Machine
							},
						}),
						objective(2, {	-- 0/25 Gnome Wing Commander slain
							["provider"] = { "n", 42017 },	-- Gnome Wing Commander
						}),
					},
				}),
				q(26099, {	-- Is This Justice?
					["qg"] = 42039,	-- High Chieftain Cliffwalker
					["sourceQuest"] = 26098,	-- Betrayal at the Grove
					["coord"] = { 45.0, 32.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 General Grebo slain
							["provider"] = { "n", 42050 },	-- General Grebo
						}),
					},
				}),
				q(25808, {	-- Is This Thing On?
					["qg"] = 41277,	-- Lieutenant Paulson
					["description"] = "If you abandon this quest, you can pick it up again from Lieutenant Paulson at the barricade near the entrance of The Deep Reaches.",
					["sourceQuest"] = 25806,	-- They Put the Assass in... Never Mind
					["coord"] = { 72.1, 76.0, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Master Assassin Kel'istra slain
							["providers"] = {
								{ "n", 41311 },	-- Master Assassin Kel'istra
								{ "i", 56014 },	-- Infrared Heat Detection Device
							},
						}),
						i(57447, {	-- Paulson's Crossbow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57446, {	-- Crackling Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57445, {	-- Mine Worker Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57444, {	-- Assassin Assassinator
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25876, {	-- It's Up There!
					["qg"] = 41434,	-- "Goblin" Pump Controller
					["sourceQuest"] = 25875,	-- Gnome on the Inside
					["coord"] = { 53.7, 42.4, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Krom'gar Log Book
							["providers"] = {
								{ "i",  56091 },	-- Krom'gar Log Book
								{ "o", 203294 },	-- Krom'gar Log Book
							},
							["coord"] = { 51.0, 44.6, STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(26067, {	-- Jin'Zil's Blessing
					["qg"] = 3995,	-- Witch Doctor Jin'Zil
					["sourceQuest"] = 26062,	-- Da Voodoo: Resonite Crystal
					["coord"] = { 71.1, 91.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Krom'gar Marauder empowered
							["providers"] = {
								{ "n", 41360 },	-- Krom'gar Marauder
								{ "i", 56798 },	-- Jin'Zil's Voodoo Stick
							},
						}),
					},
				}),
				q(1058, {	-- Jin'Zil's Forest Magic
					["qg"] = 3995,	-- Witch Doctor Jin'Zil
					["coord"] = { 74.54, 97.84, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/5 Stonetalon Sap
							["provider"] = { "i", 5582 },	-- Stonetalon Sap
							["cr"] = 4020,	-- Sap Beast
						}),
						objective(2, {	-- 0/5 Twilight Whisker
							["provider"] = { "i", 5584 },	-- Twilight Whisker
							["cr"] = 4067,	-- Twilight Runner
						}),
						objective(3, {	-- 0/30 Courser Eye
							["provider"] = { "i", 5585 },	-- Courser Eye
							["crs"] = {
								4018,	-- Antlered Courser
								4019,	-- Great Courser
							},
						}),
						objective(4, {	-- 0/1 Fey Dragon Scale
							["provider"] = { "i", 5583 },	-- Fey Dragon Scale
							["crs"] = {
								4016,	-- Fey Dragon
								4066,	-- Nal'taszar
								4017,	-- Wily Fey Dragon
							},
						}),
						i(6664, {	-- Voodoo Mantle
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6665, {	-- Hexed Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25673, {	-- Just Ask Alice
					["qg"] = 40908,	-- Alice
					["sourceQuest"] = 25652,	-- Commandeer That Balloon?
					["coord"] = { 58.5, 55.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 BD-816 War Apparatus
							["providers"] = {
								{ "i",  55227 },	-- BD-816 War Apparatus
								{ "o", 203088 },	-- BD-816 War Apparatus
							},
							["coord"] = { 63.1, 45.7, STONETALON_MOUNTAINS },
						}),
						objective(2, {	-- 0/1 Mechanized Fire
							["providers"] = {
								{ "i",  55221 },	-- Mechanized Fire
								{ "o", 203174 },	-- Mechanized Fire
							},
							["coord"] = { 63.1, 56.8, STONETALON_MOUNTAINS },
						}),
						objective(3, {	-- 0/1 Mechanized Ice
							["providers"] = {
								{ "i",  55222 },	-- Mechanized Ice
								{ "o", 203176 },	-- Mechanized Ice
							},
							["coord"] = { 66.2, 50.0, STONETALON_MOUNTAINS },
						}),
						objective(4, {	-- 0/1 Mechanized Air
							["providers"] = {
								{ "i",  55223 },	-- Mechanized Air
								{ "o", 203175 },	-- Mechanized Air
							},
							["coord"] = { 60.0, 64.2, STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(1091, {	-- Kaela's Update
					["providers"] = {
						{ "n", 4077 },	-- Gaxim Rustfizzle
						{ "i", 5717 },	-- Venture Co. Letters
					},
					["sourceQuests"] = {
						1079,	-- Covert Ops - Alpha
						1080,	-- Covert Ops - Beta
					},
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(6401, {	-- Kaya's Alive
					["qg"] = 11857,	-- Makaba Flathoof
					["sourceQuest"] = 6523,	-- Protect Kaya
					["coord"] = { 35.23, 27.79, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(1511, {	-- Ken'zigla's Draught
					["providers"] = {
						{ "n", 4197 },	-- Ken'zigla
						{ "i", 6624 },	-- Ken'zigla's Draught
					},
					["sourceQuest"] = 1510,	-- News of Dogran (2/2)
					["coord"] = { 73.2, 95, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["lvl"] = 20,
				}),
				q(6629, {	-- Kill Grundig Darkcloud
					["qg"] = 11857,	-- Makaba Flathoof
					["sourceQuest"] = 6548,	-- Avenge My Village
					["coord"] = { 35.23, 27.79, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/1 Grundig Darkcloud slain
							["provider"] = { "n", 11858 },	-- Grundig Darkcloud
							["coord"] = { 73.8, 86.6, STONETALON_MOUNTAINS },
						}),
						objective(2, {	-- 0/6 Grimtotem Brute slain
							["provider"] = { "n", 11912 },	-- Grimtotem Brute
						}),
					},
				}),
				q(26068, {	-- Kobold Fury!
					["qg"] = 42023,	-- Subjugator Devo
					["sourceQuest"] = 26066,	-- Reinforcements...
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Kobold Army Unleashed!
							["provider"] = { "i", 56799 },	-- Kobold War Horn
						}),
						i(57507, {	-- Kobold-Wrangler Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57506, {	-- Unearthed Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57508, {	-- Devo's Handaxe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131476, {	-- Kobold-Wrangler Legguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26004, {	-- Krom'gar Fortress [Krom'gar Sergeant]
					["providers"] = {
						{ "n", 34341 },	-- Saurboz
						{ "i", 56469 },	-- Alliance Attack Plans
					},
					["sourceQuest"] = 26002,	-- Alliance Attack Plans
					["coord"] = { 74.2, 47.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25891, {	-- Last Ditch Effort
					["qg"] = 41482,	-- Master Thal'darah
					["sourceQuest"] = 25889,	-- Save the Children!
					["coord"] = { 40.0, 33.6, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25809, {	-- Leave No Man Behind!
					["qg"] = 41282,	-- Corporal Wocard
					["sourceQuest"] = 25793,	-- The Deep Reaches
					["coord"] = { 72.1, 76.0, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Frightened Miner Rescued
							["provider"] = { "n", 41283 },	-- Frightened Miner
						}),
					},
				}),
				q(26003, {	-- Lessons from the Lost Isles
					["qg"] = 40926,	-- Kilag Gorefang
					["sourceQuest"] = 25999,	-- Barrier to Entry
					["coord"] = { 74.4, 47.6, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Darnassian Scout slain
							["providers"] = {
								{ "n", 41865 },	-- Darnassian Scout
								{ "i", 56470 },	-- Infrared Heat Focals
							},
						}),
					},
				}),
				q(26101, {	-- Might Makes Right [Krom'gar General]
					["qg"] = 41023,	-- Overlord Krom'gar
					["sourceQuest"] = 26100,	-- The General is Dead
					["coord"] = { 66.1, 63.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(28084, {	-- Might of the Krom'gar
					["qg"] = 42028,	-- Krom'gar Quartermaster
					["sourceQuest"] = 26004,	-- Krom'gar Fortress
					["coord"] = { 65.9, 64.1, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25649, {	-- Minx'll Fix It
					["providers"] = {
						{ "n", 40879 },	-- Boog the "Gear Whisperer"
						{ "i", 67437 },	-- Illegible Orc Letter
					},
					["sourceQuest"] = 25647,	-- Illegible Orc Letter
					["coord"] = { 72.5, 61.5, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26028, {	-- Mr. D's Wild Ride
					["qg"] = 40907,	-- Clarissa
					["sourceQuest"] = 26026,	-- Dream of a Better Tomorrow
					["coord"] = { 66.1, 64.2, STONETALON_MOUNTAINS },
					["description"] = "Warning: If you complete |cFFFFD700To Be Horde...|r, this quest cannot be completed.",
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Gnomebot Pounder slain
							["provider"] = { "n", 35203 },	-- Gnomebot Pounder
						}),
						objective(2, {	-- 0/20 Gnome Engineer slain
							["provider"] = { "n", 35334 },	-- Gnome Engineer
						}),
						i(57518),	-- Mr. Bubble's Shockingly Delicious Ice Cream
					},
				}),
				q(25728, {	-- Mr. P's Wild Ride
					["qg"] = 40908,	-- Alice
					["sourceQuest"] = 25673,	-- Just Ask Alice
					["coord"] = { 58.5, 55.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Goblin Technician slain
							["provider"] = { "n", 35333 },	-- Goblin Technician
						}),
						objective(2, {	-- 0/5 Goblin Harvester slain
							["provider"] = { "n", 35204 },	-- Goblin Harvester
						}),
						i(57518),	-- Mr. Bubble's Shockingly Delicious Ice Cream
					},
				}),
				q(6381, {	-- New Life
					["qg"] = 11864,	-- Tammra Windfield
					["sourceQuest"] = 6301,	-- Cycle of Rebirth
					["coord"] = { 47.44, 58.47, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/10 Gaea seed planted
							["providers"] = {
								{ "i",  16208 },	-- Enchanted Gaea Seeds
								{ "o", 177929 },	-- Gaea Dirt Mound
							},
							["coord"] = { 31, 61, STONETALON_MOUNTAINS },
						}),
						i(16985, {	-- Windseeker Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(16986, {	-- Sandspire Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26134, {	-- Nothing Left for You Here
					["qg"] = 42039,	-- High Chieftain Cliffwalker
					["sourceQuest"] = 26115,	-- To Be Horde...
					["coord"] = { 45.5, 33.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25877, {	-- No Time for Goodbyes!
					["qg"] = 41434,	-- "Goblin" Pump Controller
					["sourceQuest"] = 25876,	-- It's Up There!
					["coord"] = { 53.7, 42.4, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(57440, {	-- Shoulderguards of Warning
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57439, {	-- Messenger's Chestpiece
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57438, {	-- News Bearer Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131453, {	-- Messenger's Vest
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26069, {	-- Nura Pathfinder
					["qg"] = 3995,	-- Witch Doctor Jin'Zil
					["coord"] = { 71.0, 91.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(1070, {	-- On Guard in Stonetalon (1/2)
					["qg"] = 4079,	-- Sentinel Thenysil
					["coord"] = { 34.9, 49.8, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 17,
				}),
				q(1085, {	-- On Guard in Stonetalon (2/2)
					["qg"] = 4080,	-- Kaela Shadowspear
					["sourceQuest"] = 1070,	-- On Guard in Stonetalon (1/2)
					["coord"] = { 59.9, 66.8, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1088, {	-- Ordanus
					["qg"] = 4198,	-- Braelyn Firehand
					["sourceQuest"] = 1087,	-- Cenarius' Legacy
					["coord"] = { 45.91, 60.35, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Ordanus' Head
							["provider"] = { "i", 5686 },	-- Ordanus' Head
							["coord"] = { 62.0, 51.2, ASHENVALE },
							["cr"] = 4273,	-- Keeper Ordanus
						}),
					},
				}),
				q(26016, {	-- Orders from Base Camp
					["provider"] = { "i", 56474 },	-- Orders from Base Camp
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
					["crs"] = { 41937 },	-- Marshal Paltrow
					["races"] = HORDE_ONLY,
				}),
				q(25650, {	-- Orders from High Command
					["providers"] = {
						{ "n", 40881 },	-- Minx
						{ "i", 55182 },	-- Translated Orc Letter
					},
					["sourceQuest"] = 25649,	-- Minx'll Fix It
					["coord"] = { 70.8, 63.0, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25741, {	-- Preparations for the Future
					["qg"] = 40898,	-- Alithia Fallowmere
					["sourceQuest"] = 25669,	-- Rumble in the Lumber...Mill
					["coord"] = { 59.0, 56.4, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Deepmoss Venom Sac
							["provider"] = { "i", 55280 },	-- Deepmoss Venom Sac
							["crs"] = {
								4005,	-- Deepmoss Creeper
								4007,	-- Deepmoss Venomspitter
								4006,	-- Deepmoss Webspinner
							},
						}),
					},
				}),
				q(26097, {	-- Proof of Lies
					["qg"] = 42039,	-- High Chieftain Cliffwalker
					["sourceQuest"] = 26082,	-- To Battlescar!
					["coord"] = { 45.0, 32.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(6523, {	-- Protect Kaya
					["qg"] = 11856,	-- Kaya Flathoof
					["coord"] = { 73.51, 85.68, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(25913, {	-- Putting Them to Rest
					["qg"] = 41488,	-- Sentinel Mistress Geleneth
					["sourceQuest"] = 25891,	-- Last Ditch Effort
					["coord"] = { 39.6, 30.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Sentinel's Glaive
							["provider"] = { "i", 56187 },	-- Sentinel's Glaive
							["cr"] = 34969,	-- Corrupted Sentinel
						}),
					},
				}),
				q(1081, {	-- Reception from Tyrande
					["qg"] = 4079,	-- Sentinel Thenysil
					["sourceQuest"] = 1082,	-- Update for Sentinel Thenysil
					["coord"] = { 34.8, 49.8, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						i(7334, {	-- Efflorescent Robe
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(7335, {	-- Grizzly Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(7336, {	-- Wildwood Chain
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6678, {	-- Band of Elven Grace
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1057, {	-- Reclaiming the Charred Vale (1/2)
					["qg"] = 3994,	-- Keeper Albagorm
					["sourceQuest"] = 1056,	-- Journey to Stonetalon Peak
					["coord"] = { 37.1, 8.1, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/7 Bloodfury Harpy slain
							["provider"] = { "n", 4022 },	-- Bloodfury Harpy
						}),
						objective(2, {	-- 0/7 Bloodfury Ambusher slain
							["provider"] = { "n", 4025 },	-- Bloodfury Ambusher
						}),
						objective(3, {	-- 0/7 Bloodfury Slayer slain
							["provider"] = { "n", 4024 },	-- Bloodfury Slayer
						}),
						objective(4, {	-- 0/7 Bloodfury Roguefeather slain
							["provider"] = { "n", 4023 },	-- Bloodfury Roguefeather
						}),
					},
				}),
				q(1059, {	-- Reclaiming the Charred Vale (2/2)
					["qg"] = 3994,	-- Keeper Albagorm
					["sourceQuest"] = 1057,	-- Reclaiming the Charred Vale (1/2)
					["coord"] = { 37.1, 8.1, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(6675, {	-- Tempered Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6676, {	-- Constable Buckler
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26066, {	-- Reinforcements...
					["qg"] = 42023,	-- Subjugator Devo
					["sourceQuests"] = {
						26061,	-- Da Voodoo: Ram Horns
						26060,	-- Da Voodoo: Stormer Heart
					},
					["coord"] = { 71.1, 91.1, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Boulderslide Kobold subdued
							["provider"] = { "i", 56794 },	-- Subjugator Devo's Whip
							["crs"] = {
								11918,	-- Boulderslide Stonepounder
								11915,	-- Boulderslide Rock Keeper
								11917,	-- Boulderslide Geomancer
							},
						}),
					},
				}),
				q(26020, {	-- Report to Bombgutz
					["qg"] = 41023,	-- Overlord Krom'gar
					["sourceQuest"] = 26010,	-- Ashes to Ashes
					["coord"] = { 66.2, 63.6, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(1078, {	-- Retrieval for Mauren
					["qg"] = 4078,	-- Collin Mauren
					["coord"] = { 43.1, 80.3, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THOUSAND_NEEDLES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/8 Crystalized Scales
							["provider"] = { "i", 5675 },	-- Crystalized Scales
							["crs"] = {
								4044,	-- Blackened Basilisk
								4147,	-- Saltstone Basilisk
								4041,	-- Scorched Basilisk
								4042,	-- Singed Basilisk
							},
						}),
						i(6677, {	-- Spellcrafter Wand
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25615, {	-- Return to Stardust
					["qg"] = 39256,	-- Kalen Trueshot
					["sourceQuest"] = 25614,	-- The Only Way Down is in a Body Bag
					["coord"] = { 71.8, 45.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(57415, {	-- Stardust Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57416, {	-- Hippogryph Down Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57417, {	-- Clear Path Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131877, {	-- Stardust Waistcord
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25669, {	-- Rumble in the Lumber... Mill
					["qg"] = 41071,	-- Huntress Illiona
					["sourceQuest"] = 25662,	-- Free Our Sisters
					["coord"] = { 66.2, 54.5, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Huntress Illiona Freed
							["providers"] = {
								{ "n",  41071 },	-- Huntress Illiona
								{ "o", 203171 },	-- Huntress Illiona's Cage
								{ "i",  55213 },	-- Huntress Illiona's Cage Key
							},
							["coord"] = { 66.2, 54.5, STONETALON_MOUNTAINS },
							["cr"] = 41063,	-- Warlord Roktrog
						}),
						i(57432, {	-- Thwarter's Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57433, {	-- Windshear Axe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57431, {	-- Strategy Guide
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131880, {	-- Thwarter's Footguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25844, {	-- Sating the Savage Beast
					["providers"] = {
						{ "n", 41278 },	-- "Cookie" McWeaksauce
						{ "i", 56059 },	-- Meaty Offering
					},
					["sourceQuest"] = 25837,	-- A Proper Peace Offerin'
					["coord"] = { 70.9, 79.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25889, {	-- Save the Children!
					["qg"] = 41482,	-- Master Thal'darah
					["sourceQuest"] = 25880,	-- Warn Master Thal'darah
					["coord"] = { 40.0, 33.6, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Helpless Young Druid Rescued
							["providers"] = {
								{ "n", 41528 },	-- Helpless Young Druid
								{ "i", 56168 },	-- Thal'darah's Hippogryph Whistle
							},
						}),
						i(57460, {	-- Breastplate of Rescue
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57459, {	-- Headguard of the Innocent
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131455, {	-- Helm of the Innocent
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57458, {	-- Thal'darah's Pendant
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25878, {	-- Schemin' That Sabotage
					["qg"] = 41441,	-- Scout Mistress Yvonia
					["sourceQuest"] = 25768,	-- Bombs Away: Mirkfallon Post!
					["coord"] = { 48.4, 52.0, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Oil Pump destroyed
							["providers"] = {
								{ "i", 56140 },	-- Goblin Pump Controller
								{ "o", 41475 },	-- Oil Pump
							},
							["coord"] = { 50.6, 48.8, STONETALON_MOUNTAINS },
						}),
						i(57453, {	-- Yvonia's Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57452, {	-- Shield of Control
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57451, {	-- Sabotage Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131454, {	-- Yvonia's Spaulders
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79980, {	-- Scramble
					["provider"] = { "o", 424005 },	-- Pocket Litter
					["sourceQuest"] = 79192,	-- Stepping Stones
					["coord"] = { 40.8, 52.5, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_1_15_1 },
					["lvl"] = 14,
					["groups"] = {
						i(216619, {	-- Student Fodder
							["description"] = "This item gives you 4 bars of Rested Experience when consumed.",
						}),
						i(217314),	-- Moonsight Rifle
						i(217315),	-- Precision Bow
						i(3463),	-- Silver Star
					},
				})),
				-- #endif
				q(26009, {	-- Seek and Destroy
					["qg"] = 41023,	-- Overlord Krom'gar
					["altQuests"] = { 26115 },	-- To Be Horde...
					["sourceQuest"] = 26004,	-- Krom'gar Fortress
					["coord"] = { 66.1, 63.7, STONETALON_MOUNTAINS },
					-- #if BEFORE 9.0.1
					["description"] = "This quest cannot be completed after level 30, after reaching Exalted with Orgrimmar, or after finishing the Stonetalon Mountains questline.",
					-- #endif
					["timeline"] = { ADDED_4_0_3 },
					["maxReputation"] = { FACTION_ORGRIMMAR, EXALTED },	-- Orgrimmar, Exalted
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/20 Alliance Soldier slain
							["providers"] = {
								{ "n", 35152 },	-- Battlescar Ancient
								{ "n", 35153 },	-- Draenei Paladin
								{ "n", 35150 },	-- Darnassian Glaive Thrower
								{ "n", 41865 },	-- Darnassian Scout
								{ "n", 35334 },	-- Gnome Engineer
								{ "n", 35203 },	-- Gnomebot Pounder
								{ "n", 42016 },	-- Gnomish Flying Machine
								{ "n", 35154 },	-- Night Elf Mage
								{ "n", 41935 },	-- Northwatch Encroacher
								{ "n", 35151 },	-- Stonetalon Warder
							},
						}),
					},
				}),
				q(25912, {	-- Seen Better Days
					["qg"] = 41486,	-- Elder Sareth'na
					["sourceQuest"] = 25891,	-- Last Ditch Effort
					["coord"] = { 39.6, 30.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Elder Sareth'na's Sketch Book
							["providers"] = {
								{ "i",  56186 },	-- Elder Sareth'na's Sketch Book
								{ "o", 203374 },	-- Elder Sareth'na's Sketch Book
							},
							["coord"] = { 40.7, 17.3, STONETALON_MOUNTAINS },
						}),
						i(57457, {	-- Legguards of Winding Ways
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57456, {	-- Headguard of Solace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57455, {	-- Sareth'na's Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57454, {	-- Elune-Blessed Bow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131456, {	-- Cowl of Solace
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1068, {	-- Shredding Machines
					["qg"] = 4049,	-- Seereth Stonebreak
					["sourceQuest"] = 1062,	-- Goblin Invaders
					["coord"] = { 35.28, 27.84, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/1 XT:4 slain
							["provider"] = { "n", 4073 },	-- XT:4
						}),
						objective(2, {	-- 0/1 XT:9 slain
							["provider"] = { "n", 4074 },	-- XT:9
						}),
					},
				}),
				q(25811, {	-- Shuttin Her Down
					["qg"] = 41276,	-- Steeltoe McGee
					["sourceQuest"] = 25793,	-- The Deep Reaches
					["coord"] = { 72.0, 75.9, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Plant Explosives at First Beam
							["provider"] = { "i", 56018 },	-- Dynamite Bundle
							["coord"] = { 70.7, 76.0, STONETALON_MOUNTAINS },
						}),
						objective(2, {	-- Plant Explosives at Second Beam
							["provider"] = { "i", 56018 },	-- Dynamite Bundle
							["coord"] = { 69.7, 75.2, STONETALON_MOUNTAINS },
						}),
						objective(3, {	-- Plant Explosives at Third Beam
							["provider"] = { "i", 56018 },	-- Dynamite Bundle
							["coord"] = { 68.7, 71.3, STONETALON_MOUNTAINS },
						}),
						objective(4, {	-- Plant Explosives at Fourth Beam
							["provider"] = { "i", 56018 },	-- Dynamite Bundle
							["coord"] = { 68.5, 72.6, STONETALON_MOUNTAINS },
						}),
						i(57443, {	-- Deep Reach Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57442, {	-- Mine Sealer's Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						-- #if BEFORE MOP
						i(57441, {	-- Shutter Uppers
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				q(26048, {	-- Spare Parts Up In Here!
					["providers"] = {
						{ "n", 41991 },	-- Sergeant Dontrag
						{ "i", 56577 },	-- Crate of Spare Parts
					},
					["sourceQuests"] = {
						26047,	-- And That's Why They Call Them Peons...
						26046,	-- Between a Rock and a Hard Place
						26045,	-- I Got Your Parts Right Here
					},
					["coord"] = { 67.1, 64.5, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(57491, {	-- Spare Part Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57490, {	-- Blastgineer's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57489, {	-- Bombgutz Band
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131472, {	-- Blastgineer's Waistband
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1077, {	-- Special Delivery for Gaxim
					["providers"] = {
						{ "n", 4078 },	-- Collin Mauren
						{ "i", 5731 },	-- Scroll of Messaging
					},
					["sourceQuest"] = 1076,	-- Devils in Westfall
					["coord"] = { 43.1, 80.3, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(26076, {	-- Spy Infestation
					["qg"] = 42033,	-- Jibbly Rakit
					["sourceQuest"] = 26075,	-- The Turd Problem
					["coord"] = { 52.9, 39.1, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Alliance Spy slain
							["providers"] = {
								{ "n", 42034 },	-- Alliance Spy
								{ "i", 56800 },	-- Jibbly's Gas Bomb
							},
						}),
						i(57500, {	-- Crawling Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57499, {	-- Infested Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57498, {	-- Bow of Invisible Aim
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1093, {	-- Super Reaper 6000
					["qg"] = 4201,	-- Ziz Fizziks
					["sourceQuest"] = 1483,	-- Ziz Fizziks
					["coord"] = { 59.00, 62.53, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Super Reaper 6000 Blueprints
							["provider"] = { "i", 5734 },	-- Super Reaper 6000 Blueprints
							["cr"] = 3988,	-- Venture Co. Operator
						}),
					},
				}),
				q(25765, {	-- Tell 'Em Koko Sent You
					["qg"] = 40897,	-- Northwatch Captain Kosak
					["sourceQuest"] = 25739,	-- If the Horde Don't Get You...
					["coord"] = { 59.5, 57.0, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25845, {	-- Terms of Service
					["providers"] = {
						{ "n", 41350 },	-- Ton Windbow
						{ "i", 56060 },	-- Grimtotem Terms of Service
					},
					["sourceQuest"] = 25844,	-- Sating the Savage Beast
					["coord"] = { 72.7, 81.1, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25925, {	-- Thal'darah's Vengeance
					["qg"] = 41482,	-- Master Thal'darah
					["sourceQuest"] = 25891,	-- Last Ditch Effort
					["coord"] = { 40.0, 33.6, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 Krom'gar Demolisher destroyed
							["provider"] = { "n", 35163 },	-- Krom'gar Demolisher
						}),
						objective(2, {	-- 0/20 Horde Soldier slain
							["providers"] = {
								{ "n", 35158 },	-- Krom'gar Berserker
								{ "n", 35160 },	-- Krom'gar Logger
								{ "n", 35174 },	-- Krom'gar Peon
								{ "n", 35161 },	-- Krom'gar Warrior
								{ "n", 35159 },	-- Krom'gar Witch Doctor
							},
						}),
					},
				}),
				q(25793, {	-- The Deep Reaches
					["qg"] = 41229,	-- Force Commander Valen
					["sourceQuest"] = 25765,	-- Tell 'Em Koko Sent You
					["coord"] = { 71.1, 79.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1089, {	-- The Den
					["providers"] = {
						{ "n", 4198 },	-- Braelyn Firehand
						{ "i", 5687 },	-- Gatekeeper's Key
						{ "o", 19599 },	-- Talon Den Hoard
					},
					["sourceQuest"] = 1088,	-- Ordanus
					["coord"] = { 45.91, 60.35, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Sleepers' Key
							["providers"] = {
								{ "i", 5689 },	-- Sleepers' Key
								{ "o", 19596 },	-- Sleepers' Cache
								{ "i", 5687 },	-- Gatekeeper's Key
							},
							["coord"] = { 25.6, 11.4, STONETALON_MOUNTAINS },
						}),
						objective(2, {	-- 0/1 Claw Key
							["providers"] = {
								{ "i", 5690 },	-- Claw Key
								{ "o", 19597 },	-- Druids' Cache
								{ "i", 5687 },	-- Gatekeeper's Key
							},
							["coord"] = { 29.5, 15.8, STONETALON_MOUNTAINS },
						}),
						objective(3, {	-- 0/1 Barrow Key
							["providers"] = {
								{ "i", 5691 },	-- Barrow Key
								{ "o", 19598 },	-- Barrow Cache
								{ "i", 5687 },	-- Gatekeeper's Key
							},
							["coord"] = { 27.9, 13.8, STONETALON_MOUNTAINS },
						}),
						o(19595, {	-- Gatekeeper's Hold
							["coord"] = { 30.0, 15.5, STONETALON_MOUNTAINS },
							["group"] = { i(5687) },	-- Gatekeeper's Key
						}),
						i(6671, {	-- Juggernaut Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6670, {	-- Panther Armor
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6669, {	-- Sacred Band
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1063, {	-- The Elder Crone
					["qg"] = 4049,	-- Seereth Stonebreak
					["sourceQuest"] = 1062,	-- Goblin Invaders
					["coord"] = { 35.28, 27.84, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(26100, {	-- The General is Dead
					["qg"] = 42047,	-- Masha Cliffwalker
					["sourceQuest"] = 26099,	-- Is This Justice?
					["coord"] = { 45.1, 32.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25879, {	-- The Lumbering Oaf Problem
					["qg"] = 41441,	-- Scout Mistress Yvonia
					["sourceQuest"] = 25768,	-- Bombs Away: Mirkfallon Post!
					["coord"] = { 48.4, 52.0, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Lumbering Oaf slain
							["provider"] = { "n", 40906 },	-- Lumbering Oaf
						}),
					},
				}),
				q(26001, {	-- The Missing Blastgineer
					["qg"] = 34341,	-- Saurboz
					["sourceQuest"] = 25999,	-- Barrier to Entry
					["coord"] = { 74.2, 47.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25614, {	-- The Only Way Down is in a Body Bag
					["qg"] = 39256,	-- Kalen Trueshot
					["sourceQuest"] = 25613,	-- Do Yourself a Favor
					["coord"] = { 71.8, 45.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Warsong Wing Commander slain
							["provider"] = { "n", 40942 },	-- Warsong Wing Commander
						}),
					},
				}),
				q(26063, {	-- The Queen and Her Court (aa?)
					["qg"] = 11821,	-- Darn Talongrip
					["coord"] = { 64.9, 82.5, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Queen Silith slain
							["provider"] = { "n", 41185 },	-- Queen Silith
						}),
						objective(2, {	-- 0/10 Webwinder Hollow Spider slain
							["providers"] = {
								{ "n", 4005 },	-- Deepmoss Creeper
								{ "n", 4007 },	-- Deepmoss Venomspitter
								{ "n", 4006 },	-- Deepmoss Webspinner
							},
						}),
						i(57493, {	-- Darn Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57492, {	-- Talongrip Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1061, {	-- The Spirits of Stonetalon
					["qg"] = 4047,	-- Zor Lonetree
					["coord"] = { 39.03, 38.04, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_BARRENS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 13,
				}),
				q(26075, {	-- The Turd Problem
					["qg"] = 42033,	-- Jibbly Rakit
					["sourceQuest"] = 26074,	-- Beginning of the End
					["coord"] = { 52.9, 39.1, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Pridewing Wyvern slain
							["providers"] = {
								{ "n", 4014 },	-- Pridewing Consort
								{ "n", 4015 },	-- Pridewing Patriarch
								{ "n", 4012 },	-- Pridewing Wyvern
							},
						}),
					},
				}),
				q(25823, {	-- The Unrelenting Horde
					["qg"] = 41229,	-- Force Commander Valen
					["sourceQuest"] = 25845,	-- Terms of Service
					["coord"] = { 71.1, 79.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Horde at Unearthed Grounds Slain
							["providers"] = {
								{ "n", 41408 },	-- Goblin Stripminer
								{ "n", 41407 },	-- Krom'gar Blood Guard
							},
						}),
					},
				}),
				q(13913, {	-- They Took Our Gnomes
					["qg"] = 34354,	-- Huntress Jalin
					["sourceQuest"] = 28539,	-- Hero's Call: Stonetalon Mountains!
					["coord"] = { 35.1, 71.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25806, {	-- They Put the Assass in... Never Mind
					["qg"] = 41277,	-- Lieutenant Paulson
					["sourceQuest"] = 25793,	-- The Deep Reaches
					["coord"] = { 72.1, 76.0, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Krom'gar Assassin slain
							["providers"] = {
								{ "n", 41291 },	-- Krom'gar Assassin
								{ "i", 56014 },	-- Infrared Heat Detection Device
							},
						}),
					},
				}),
				q(25671, {	-- Thinning the Horde
					["qg"] = 40896,	-- Lord Fallowmere
					["sourceQuest"] = 25652,	-- Commandeer That Ballon!
					["coord"] = { 59.6, 56.9, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					-- #if BEFORE 9.0.1
					["description"] = "This quest cannot be completed after level 30, after reaching Exalted with Darnassus, or after finishing the Stonetalon Mountains questline.",
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/20 Horde Soldier Slain
							["providers"] = {
								{ "n", 35204 },	-- Goblin Harvester
								{ "n", 41408 },	-- Goblin Stripminer
								{ "n", 35333 },	-- Goblin Technician
								{ "n", 41291 },	-- Krom'gar Assassin
								{ "n", 35158 },	-- Krom'gar Berserker
								{ "n", 41407 },	-- Krom'gar Blood Guard
								{ "n", 34353 },	-- Krom'gar Incinerator
								{ "n", 41062 },	-- Krom'gar Infantry
								{ "n", 35160 },	-- Krom'gar Logger
								{ "n", 41360 },	-- Krom'gar Marauder
								{ "n", 40904 },	-- Krom'gar Peon
								{ "n", 41230 },	-- Krom'gar Rifleman
								{ "n", 35161 },	-- Krom'gar Warrior
								{ "n", 40905 },	-- Windshear Overseer
							},
						}),
					},
				}),
				q(26082, {	-- To Battlescar!
					["qg"] = 42050,	-- General Grebo
					["sourceQuest"] = 26077,	-- Final Delivery
					["coord"] = { 45.1, 32.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Darnassian Glaive Thrower
							["provider"] = { "n", 35150 },	-- Darnassian Glaive Thrower
						}),
						objective(2, {	-- 0/20 Alliance Soldier in Battlescar Valley slain
							["providers"] = {
								{ "n", 35151 },	-- Stonetalon Warder
								{ "n", 35152 },	-- Battlescar Ancient
								{ "n", 35153 },	-- Draenei Paladin
								{ "n", 35154 },	-- Night Elf Mage
							},
						}),
						i(57497, {	-- Grebo's Crossbow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57496, {	-- Wand of Destructive Talent
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57495, {	-- Shield of Battlescar Valley
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57494, {	-- Rampaging Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26115, {	-- To Be Horde...
					["qg"] = 42106,	-- Overlord Krom'gar
					["sourceQuest"] = 26101,	-- Might Makes Right
					["coord"] = { 45.6, 34.1, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Learn what it means to be Horde.
							["provider"] = { "n", 42124 },	-- Garrosh Hellscream <Warchief>
						}),
						i(57512, {	-- Cliffwalker Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57511, {	-- Belt of the Grieving Father
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57510, {	-- Masha's Armbands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57509, {	-- Orthus' Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131486, {	-- Cinch of the Grieving Father
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1082, {	-- Update for Sentinel Thenysil
					["qg"] = 4080,	-- Kaela Shadowspear
					["sourceQuests"] = {
						1083,	-- Enraged Spirits
						1084,	-- Wounded Ancients
					},
					["coord"] = { 59.9, 66.8, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(25880, {	-- Warn Master Thal'darah
					["qg"] = 41233,	-- Scout Commander Barus
					["sourceQuest"] = 25877,	-- No Time for Goodbyes!
					["coord"] = { 48.3, 51.9, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79974, {	-- Wet Job
					["provider"] = { "o", 424012 },	-- Mound of Dirt
					["sourceQuest"] = 79980,	-- Scramble
					["coord"] = { 39.6, 49.9, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_1_15_1 },
					["maps"] = { LOCH_MODAN },
					["lvl"] = 14,
					["groups"] = {
						i(20709),	-- Rumsey Rum Light
					},
				})),
				-- #endif
				q(26044, {	-- Where Are the Parts?
					["qg"] = 40902,	-- Chief Blastgineer Bombgutz
					["sourceQuest"] = 26020,	-- Report to Bombgutz
					["coord"] = { 66.2, 62.9, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78114, {	-- Wild Wyvern Wrangling
					["qg"] = 210845,	-- Jixo Madrocket <Amateur Daredevil>
					["coord"] = { 59.2, 62.4, STONETALON_MOUNTAINS },
					["cost"] = {	-- You don't need to be on the quest to get these drops
						{ "i", 209838, 1 },	-- Hypnotic Crystal
						{ "i", 209840, 1 },	-- Gnarled Wand of Wild Magic
					},
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { ASHENVALE, WAILING_CAVERNS },
					["classes"] = { HUNTER },
					["lvl"] = 15,
				})),
				-- #endif
				q(25646, {	-- Windshear Mine Cleanup
					["qg"] = 40973,	-- Sentinal Heliana
					["sourceQuest"] = 25640,	-- Bombs Away: Windshear Mine
					["coord"] = { 72.5, 61.5, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Windshear Overseer slain
							["provider"] = { "n", 40905 },	-- Windshear Overseer
						}),
						i(57422, {	-- Quiet Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57423, {	-- Overseer's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57421, {	-- Amulet of Shrill Screams
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57424, {	-- Heliana's Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131878, {	-- Overseer's Handguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25934, {	-- World First: Gnomegen
					["qg"] = 41664,	-- Salsbury the "Help"
					["sourceQuest"] = 25925,	-- Thal'darah's Vengeance
					["coord"] = { 33.1, 59.6, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Blazing Heart of Fire
							["provider"] = { "i", 56224 },	-- Blazing Heart of Fire
							["cr"] = 34911,	-- Fissure-born Fire Elemental
						}),
					},
				}),
				q(1084, {	-- Wounded Ancients
					["qg"] = 4080,	-- Kaela Shadowspear
					["sourceQuest"] = 1091,	-- Kaela's Update
					["coord"] = { 59.9, 66.8, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/1 Corroded Shrapnel
							["provider"] = { "i", 5664 },	-- Corroded Shrapnel
							["crs"] = {
								4029,	-- Blackened Ancient
								4028,	-- Charred Ancient
								4030,	-- Vengeful Ancient
							},
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78121, {	-- Wrangling a Wild Wyvern
					["qg"] = 210845,	-- Jixo Madrocket <Amateur Daredevil>
					["sourceQuest"] = 78114,	-- Wild Wyvern Wrangling
					["coord"] = { 59.2, 62.4, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { HUNTER },
					["lvl"] = 15,
					["groups"] = {
						i(209852, {	-- Rune of Kill Command
							["classes"] = { HUNTER },
							["groups"] = {
								recipe(410111),	-- Engrave Pants - Kill Command
							},
						}),
						i(209819, {	-- Wyvern Taming Wand
							["classes"] = { HUNTER },
						}),
					},
				})),
				-- #endif
				q(25607, {	-- Ze Gnomecorder
					["qg"] = 40895,	-- Professor Xakxak Gyromate
					["coord"] = { 35.4, 71.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Filthy Goblin Technology
							["provider"] = { "i", 55144 },	-- Filthy Goblin Technology
							["cr"] = 34590,	-- Goblin Technician
						}),
					},
				}),
				q(1483, {	-- Ziz Fizziks
					["qg"] = 3442,	-- Sputtervalve
					["coord"] = { 62.98, 37.21, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
			}),
			n(RARES, {
				n(50812, {	-- Arae
					["coord"] = { 49.4, 65.6, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(5915, {	-- Brother Ravenoak
					["coords"] = {
						-- #if AFTER CATA
						{ 41.8, 19.0, STONETALON_MOUNTAINS },
						-- #else
						{ 28.2, 12.8, STONETALON_MOUNTAINS },
						-- #endif
					},
				}),
				n(50884, {	-- Dustflight the Cowardly
					["coord"] = { 44.8, 55.8, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(50825, {	-- Feras
					["coord"] = { 76.0, 91.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(5931, {	-- Foreman Rigger
					["coords"] = {
						{ 67.6, 45.4, STONETALON_MOUNTAINS },
						{ 68.0, 54.0, STONETALON_MOUNTAINS },
						{ 63.8, 51.8, STONETALON_MOUNTAINS },
					},
					["timeline"] = { REMOVED_4_0_3 },
				}),
				n(50986, {	-- Goldenback
					["coord"] = { 82.2, 79.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(50759, {	-- Iriss the Widow
					["coord"] = { 54.4, 74.8, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(51062, {	-- Khep-Re
					["coord"] = { 74.6, 73.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(4066, {	-- Nal'taszar
					["coords"] = {
						-- #if AFTER CATA
						{ 48.6, 73.2, STONETALON_MOUNTAINS },
						-- #else
						{ 25.6, 12.6, STONETALON_MOUNTAINS },
						-- #endif
					},
				}),
				n(4015, {	-- Pridewing Patriarch
					["description"] =
						-- #if AFTER 7.2.0
						"Can spawn after killing any Pridewing Beasts.\n|cffe50d12Warning|r: This creaure scales with character level up to level cap!",
						-- #else
						"Can spawn after killing any Pridewing Beasts.",
						-- #endif
					["coords"] = {
						-- #if AFTER 7.2.0
						{ 55.6, 44.8, STONETALON_MOUNTAINS },
						-- #else
						{ 45.2, 39.2, STONETALON_MOUNTAINS },
						{ 44.8, 45.6, STONETALON_MOUNTAINS },
						{ 48.8, 48.0, STONETALON_MOUNTAINS },
						{ 54.8, 38.0, STONETALON_MOUNTAINS },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3, ADDED_7_2_0 },
					["groups"] = {
						i(5751, {	-- Webwing Cloak
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(5752, {	-- Wyvern Tailspike
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(212837, {	-- Primordial Anomaly
					["coord"] = { 29.6, 72.0, STONETALON_MOUNTAINS },
					["groups"] = {
						i(210811, {	-- Rune of Primordial Fury
							["classes"] = { SHAMAN },
							["groups"] = {
								recipe(425343),	-- Engrave Pants - Shamanistic Rage
							},
						}),
					},
				})),
				-- #endif
				n(50343, {	-- Quall
					["coords"] = {
						{ 60.0, 63.4, STONETALON_MOUNTAINS },
						{ 59.6, 64.0, STONETALON_MOUNTAINS },
					},
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(5916, {	-- Sentinel Amarassan
					["coords"] = {
						{ 30.2, 14.8, STONETALON_MOUNTAINS },
						{ 33.2, 17.6, STONETALON_MOUNTAINS },
						{ 36.2, 18.8, STONETALON_MOUNTAINS },
						{ 36.6, 14.6, STONETALON_MOUNTAINS },
					},
					["timeline"] = { REMOVED_4_0_3 },
				}),
				n(5930, {	-- Sister Riven
					["coords"] = {
						-- #if AFTER CATA
						{ 40.4, 70.8, STONETALON_MOUNTAINS },
						{ 40.4, 71.6, STONETALON_MOUNTAINS },
						-- #else
						{ 36.8, 68.8, STONETALON_MOUNTAINS },
						{ 29.2, 67.0, STONETALON_MOUNTAINS },
						{ 29.0, 73.6, STONETALON_MOUNTAINS },
						-- #endif
					},
				}),
				n(5928, {	-- Sorrow Wing
					["coords"] = {
						-- #if AFTER CATA
						{ 50.2, 41.2, STONETALON_MOUNTAINS },
						-- #else
						{ 46.8, 30.4, STONETALON_MOUNTAINS },
						{ 45.8, 38.8, STONETALON_MOUNTAINS },
						{ 49.6, 35.6, STONETALON_MOUNTAINS },
						{ 51.6, 36.8, STONETALON_MOUNTAINS },
						{ 51.4, 40.6, STONETALON_MOUNTAINS },
						-- #endif
					},
				}),
				n(50786, {	-- Sparkwing
					["coord"] = { 58.8, 86.6, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(5932, {	-- Taskmaster Whipfang
					["coords"] = {
						-- #if AFTER CATA
						{ 64.6, 45.6, STONETALON_MOUNTAINS },
						-- #else
						{ 64.8, 49.2, STONETALON_MOUNTAINS },
						{ 60.4, 51.4, STONETALON_MOUNTAINS },
						{ 63.0, 54.4, STONETALON_MOUNTAINS },
						{ 64.2, 57.0, STONETALON_MOUNTAINS },
						-- #endif
					},
				}),
				n(50874, {	-- Tenok
					["coord"] = { 44.4, 49.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(4030, {	-- Vengeful Ancient
					["coords"] = {
						{ 33.4, 63.0, STONETALON_MOUNTAINS },
						{ 30.2, 68.6, STONETALON_MOUNTAINS },
						{ 29.4, 72.6, STONETALON_MOUNTAINS },
						{ 33.0, 73.6, STONETALON_MOUNTAINS },
						{ 37.4, 72.4, STONETALON_MOUNTAINS },
					},
					["timeline"] = { REMOVED_4_0_3 },
				}),
				n(50895, {	-- Volux
					["coord"] = { 39.8, 46.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_5_2_0 },
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, i(209851, {	-- Fury of the Land
					["provider"] = { "o", 409711 },	-- Scrolls
					["coord"] = { 74.4, 85.7, STONETALON_MOUNTAINS },
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(9549, {	-- Borand <Bowyer>
					["coords"] = {
						-- #if AFTER CATA
						{ 48.6, 61.4, STONETALON_MOUNTAINS },
						-- #else
						{ 45.2, 59.2, STONETALON_MOUNTAINS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11304, {	-- Fine Longbow
							["isLimited"] = true,
						}),
					},
				}),
				n(4083, {	-- Jeeda <Apprentice Witch Doctor>
					["coords"] = {
						-- #if AFTER CATA
						{ 50.4, 63.4, STONETALON_MOUNTAINS },
						-- #else
						{ 47.6, 61.6, STONETALON_MOUNTAINS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6055, {	-- Recipe: Fire Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(12043, {	-- Kulwia <Trade Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 48.6, 61.6, STONETALON_MOUNTAINS },
						-- #else
						{ 45.4, 59.4, STONETALON_MOUNTAINS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11101, {	-- Formula: Enchant Bracer - Lesser Strength (RECIPE!)
							["isLimited"] = true,
						}),
						i(11039, {	-- Formula: Enchant Cloak - Minor Agility (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(42028, {	-- Krom'gar Quartermaster <Quartermaster>
					["coord"] = { 65.8, 64.0, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(57505, {	-- Krom'gar Champion's Armored Pauldrons
							["sourceQuest"] = 26073,	-- All's Quiet on the Southern Front [Krom'gar Champion]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131887, {	-- Krom'gar Champion's Chain Shoulderguard
							["sourceQuest"] = 26073,	-- All's Quiet on the Southern Front [Krom'gar Champion]
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57502, {	-- Krom'gar Champion's Hide Shoulderguard
							["sourceQuest"] = 26073,	-- All's Quiet on the Southern Front [Krom'gar Champion]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57503, {	-- Krom'gar Champion's Leather Shoulderguard
							["sourceQuest"] = 26073,	-- All's Quiet on the Southern Front [Krom'gar Champion]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57501, {	-- Krom'gar Champion's Linen Shoulderpads
							["sourceQuest"] = 26073,	-- All's Quiet on the Southern Front [Krom'gar Champion]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131886, {	-- Krom'gar Champion's Mesh Shoulderguard
							["sourceQuest"] = 26073,	-- All's Quiet on the Southern Front [Krom'gar Champion]
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57504, {	-- Krom'gar Champion's Plate Pauldrons
							["sourceQuest"] = 26073,	-- All's Quiet on the Southern Front [Krom'gar Champion]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57517, {	-- Krom'gar General's Armored Helm
							["sourceQuest"] = 26101,	-- Might Makes Right [Krom'gar General]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131889, {	-- Krom'gar General's Chain Mask
							["sourceQuest"] = 26101,	-- Might Makes Right [Krom'gar General]
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57514, {	-- Krom'gar General's Hide Mask
							["sourceQuest"] = 26101,	-- Might Makes Right [Krom'gar General]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57515, {	-- Krom'gar General's Leather Mask
							["sourceQuest"] = 26101,	-- Might Makes Right [Krom'gar General]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57513, {	-- Krom'gar General's Linen Cowl
							["sourceQuest"] = 26101,	-- Might Makes Right [Krom'gar General]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131888, {	-- Krom'gar General's Mesh Mask
							["sourceQuest"] = 26101,	-- Might Makes Right [Krom'gar General]
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57516, {	-- Krom'gar General's Plate Helm
							["sourceQuest"] = 26101,	-- Might Makes Right [Krom'gar General]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57488, {	-- Krom'gar Legionnaire's Armored Bracers
							["sourceQuest"] = 26058,	-- In Defense of Krom'gar Fortress [Krom'gar Legionnaire]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131885, {	-- Krom'gar Legionnaire's Chain Bracers
							["sourceQuest"] = 26058,	-- In Defense of Krom'gar Fortress [Krom'gar Legionnaire]
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57485, {	-- Krom'gar Legionnaire's Hide Wraps
							["sourceQuest"] = 26058,	-- In Defense of Krom'gar Fortress [Krom'gar Legionnaire]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57486, {	-- Krom'gar Legionnaire's Leather Bracers
							["sourceQuest"] = 26058,	-- In Defense of Krom'gar Fortress [Krom'gar Legionnaire]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57484, {	-- Krom'gar Legionnaire's Linen Bracers
							["sourceQuest"] = 26058,	-- In Defense of Krom'gar Fortress [Krom'gar Legionnaire]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131884, {	-- Krom'gar Legionnaire's Mesh Wraps
							["sourceQuest"] = 26058,	-- In Defense of Krom'gar Fortress [Krom'gar Legionnaire]
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57487, {	-- Krom'gar Legionnaire's Plate Bracers
							["sourceQuest"] = 26058,	-- In Defense of Krom'gar Fortress [Krom'gar Legionnaire]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57476, {	-- Krom'gar Sergeant's Armored Greaves
							["sourceQuest"] = 26004,	-- Krom'gar Fortress [Krom'gar Sergeant]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131883, {	-- Krom'gar Sergeant's Chain Boots
							["sourceQuest"] = 26004,	-- Krom'gar Fortress [Krom'gar Sergeant]
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57473, {	-- Krom'gar Sergeant's Hide Boots
							["sourceQuest"] = 26004,	-- Krom'gar Fortress [Krom'gar Sergeant]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57474, {	-- Krom'gar Sergeant's Leather Boots
							["sourceQuest"] = 26004,	-- Krom'gar Fortress [Krom'gar Sergeant]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57472, {	-- Krom'gar Sergeant's Linen Footwraps
							["sourceQuest"] = 26004,	-- Krom'gar Fortress [Krom'gar Sergeant]
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131882, {	-- Krom'gar Sergeant's Mesh Boots
							["sourceQuest"] = 26004,	-- Krom'gar Fortress [Krom'gar Sergeant]
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57475, {	-- Krom'gar Sergeant's Plate Greaves
							["sourceQuest"] = 26004,	-- Krom'gar Fortress [Krom'gar Sergeant]
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				n(4085, {	-- Nizzik <Venture Armor Salesman>
					["coord"] = { 62.6, 40.2, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(4827),	-- Wizard's Belt
						i(4828),	-- Nightwind Belt
						i(4829),	-- Dreamer's Belt
						i(4830),	-- Saber Leggings
						i(4831),	-- Stalking Pants
						i(4832),	-- Mystic Sarong
						i(4833),	-- Glorious Shoulders
						i(4835),	-- Elite Shoulders
					},
					-- #endif
				}),
				n(4086, {	-- Veenix <Venture Co. Merchant>
					["coord"] = { 58.2, 51.6, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(4817),	-- Orb of Power
						i(4818, {	-- Executioner's Sword
							["isLimited"] = true,
						}),
						i(4836),	-- Fireproof Orb
						i(4837),	-- Strength of Will
						i(4838),	-- Orb of Power
						i(7561),	-- Schematic: Goblin Jumper Cables (RECIPE!)
					},
					-- #endif
				}),
			}),
			n(ZONE_DROPS, {
				i(11151, {	-- Formula: Enchant Gloves - Herbalism
					["timeline"] = { REMOVED_4_3_0, DELETED_7_0_3 },	-- Replaced by BOP Version
					["crs"] = {
						4029,	-- Blackened Ancient
						4028,	-- Charred Ancient
						4030,	-- Vengeful Ancient
					},
				}),
				i(6840, {	-- Galvanized Horn
					["cr"] = 6167,	-- Chimaera Matriarch
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(210534, {	-- Idol of the Wild
					["coord"] = { 80.6, 90.0, STONETALON_MOUNTAINS },
					["classes"] = { DRUID },
					["crs"] = {
						11911,	-- Grimtotem Mercenary
						11910,	-- Grimtotem Ruffian
						11913,	-- Grimtotem Sorcerer
						11912,	-- Grimtotem Brute
					},
					["groups"] = {
						recipe(410021),	-- Engrave Chest - Wild Strikes
					},
				})),
				-- #endif
			}),
		},
	}),
}));
