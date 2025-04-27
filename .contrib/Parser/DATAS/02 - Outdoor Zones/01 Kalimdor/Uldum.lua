---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KALIMDOR, {
	m(ULDUM, {
		["lore"] = "Uldum, a new zone added with Cataclysm, was known as the Land of the Titans. An ancient desert formerly inaccessible to the Alliance and the Horde, it is rich with Titan lore and an advanced civilization, the Tol'vir. This region draws aesthetic influences heavily from Ancient Egypt, with pyramids, obelisks, similar deities, and irrigation systems.\n\nThis zone requires the use of flying mounts.",
		["icon"] = 409550,
		["timeline"] = { ADDED_4_0_3 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(4865),	-- Explore Uldum
				ach(4888, {	-- One Hump or Two? (Uldum)
					["providers"] = {
						{ "i", 63044 },	-- Brown Riding Camel
						{ "i", 63045 },	-- Tan Riding Camel
						{ "i", 63046 },	-- Reins of the Grey Riding Camel
					},
				}),
				achWithRep(4884, FACTION_RAMKAHEN),	-- Ramkahen
				ach(5767, {	-- Scourer of the Eternal Sands
					["provider"] = { "i", 63046 },	-- Reins of the Grey Riding Camel
					["groups"] = {
						-- #if NOT ANYCLASSIC
						title(143),	-- <Name> the Camel-Hoarder
						-- #else
						title(213),	-- <Name> the Camel-Hoarder
						-- #endif
					},
				}),
				ach(4872, {	-- Unearthing Uldum
					-- #IF RETAIL
					["_doautomation"] = true,
					-- #ENDIF
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						28112,	-- Escape From the Lost City
						28533,	-- The High Council's Decision
						27779,	-- Gnomebliteration
						27755,	-- The Curse of the Tombs
						28520,	-- The Fall of Neferset City
						27627,	-- Just a Fancy Cockroach
						27905,	-- Tailgunner!
						28267,	-- Firing Squad
						28633,	-- The Coffer of Promise
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					484,	-- Desert Spider (PET!)
					467,	-- Dung Beetle (PET!)
					631,	-- Emerald Boa (PET!)
				}},
				["groups"] = {
					pet(851, {	-- Horned Lizard (PET!)
						["description"] = "Can be found in most places around Uldum, the listed coordinates indicates the wider areas where the pet is most common.",
						["coords"] = {
							{ 30.6, 15.0, ULDUM },	-- Oasis of Vir'sar
							{ 50.4, 21.8, ULDUM },	-- Sahket Wastes
							{ 65.5, 33.4, ULDUM },	-- Obelisk of the Stars
							{ 76.0, 55.7, ULDUM },	-- The Steps of Fate
							{ 60.8, 72.7, ULDUM },	-- Lost City ofthe Tol'vir
						},
					}),
					pet(545, {	-- Leopard Scorpid (PET!)
						["description"] = "Can be found in most places around Uldum, the listed coordinates indicates the wider areas where the pet is most common.",
						["coords"] = {
							{ 30.6, 15.0, ULDUM },	-- Oasis of Vir'sar
							{ 50.4, 21.8, ULDUM },	-- Sahket Wastes
							{ 65.5, 33.4, ULDUM },	-- Obelisk of the Stars
							{ 76.0, 55.7, ULDUM },	-- The Steps of Fate
							{ 32.0, 62.7, ULDUM },	-- Ruins of Ammon
						},
					}),
					pet(543, {	-- Locust (PET!)
						["description"] = "Found around Vir'naal river.",
						["coords"] = {
							{ 58.0, 76.8, ULDUM },	-- Western Vir'naal River Delta
							{ 57.3, 50.8, ULDUM },	-- Vir'naal River
							{ 48.5, 34.15, ULDUM },	-- Vir'naal Oasis west
							{ 59.2, 31.5, ULDUM },	-- Vir'naal Oasis east
						},
					}),
					pet(542, {	-- Mac Frog (PET!)
						["description"] = "Found around Vir'nal river.",
						["coords"] = {
							{ 66.0, 72.4, ULDUM },	-- Eastern Vir'naal River Delta
							{ 58.0, 76.8, ULDUM },	-- Western Vir'naal River Delta
							{ 57.3, 50.8, ULDUM },	-- Vir'naal River
							{ 48.5, 34.15, ULDUM },	-- Vir'naal Oasis west
							{ 59.2, 31.5, ULDUM },	-- Vir'naal Oasis east
						},
					}),
					pet(544, {	-- Oasis Moth (PET!)
						["description"] = "Found around Vir'nal river.",
						["coords"] = {
							{ 58.0, 76.8, ULDUM },	-- Western Vir'naal River Delta
							{ 57.3, 50.8, ULDUM },	-- Vir'naal River
							{ 48.5, 34.15, ULDUM },	-- Vir'naal Oasis west
							{ 59.2, 31.5, ULDUM },	-- Vir'naal Oasis east
						},
					}),
					pet(511, {	-- Sidewinder (PET!)
						["description"] = "Can be found in most places around Uldum and Silithus, the listed coordinates indicates the wider areas where the pet is most common.",
						["coords"] = {
							{ 48.0, 37.0, SILITHUS },	-- West of Cenarion Hold
							{ 36.7, 77.7, SILITHUS },	-- The Scarab Wall
							{ 30.6, 15.0, ULDUM },	-- Oasis of Vir'sar
							{ 50.4, 21.8, ULDUM },	-- Sahket Wastes
							{ 65.5, 33.4, ULDUM },	-- Obelisk of the Stars
							{ 76.0, 55.7, ULDUM },	-- The Steps of Fate
							{ 32.0, 62.7, ULDUM },	-- Ruins of Ammon
						},
					}),
					pet(546, {	-- Tol'vir Scarab (PET!)
						["description"] = "Can be found in most places around Uldum, the listed coordinates indicates the wider areas where the pet is most common.",
						["coords"] = {
							{ 32.0, 62.7, ULDUM },	-- Ruins of Ammon
							{ 39.45, 41.45, ULDUM },	-- Orsis
							{ 34.0, 23.85, ULDUM },	-- Temple of Uldum
							{ 35.9, 15.75, ULDUM },	-- Ruins of Khintaset
							{ 46.0, 15.0, ULDUM },	-- Ruins of Ahmtul
							{ 53.2, 27.7, ULDUM },	-- Seal of the Sun King
							{ 63.65, 26.7, ULDUM },	-- Obelisk of the Stars
							{ 76.0, 55.7, ULDUM },	-- The Steps of Fate
						},
					}),
				},
			}),
			explorationHeader({
				visit_exploration(5499,{coord={53.4,48.5,ULDUM}}),	-- Akhenet Fields
				exploration(5596),	-- Cradle of the Ancients
				exploration(5701),	-- Halls of Origination Entrance
				exploration(5455),	-- Khartut's Tomb
				visit_exploration(5599,{coord={60.9,65.2,ULDUM}}),	-- Lost City of the Tol'vir
				exploration(5498),	-- Mar'at
				visit_exploration(5688,{coord={52.2,71.8,ULDUM}}),	-- Mount Akher
				exploration(5467),	-- Nahom
				visit_exploration(5663,{coord={51.9,72.1,ULDUM}}),	-- Neferset City
				visit_exploration(5679,{coord={50.7,64.4,ULDUM}}),	-- Neferset City Outskirts
				exploration(5668),	-- Obelisk of the Moon
				exploration(5423),	-- Obelisk of the Stars
				exploration(5597),	-- Obelisk of the Sun
				exploration(5465),	-- Orsis
				exploration(5466),	-- Ramkahen
				visit_exploration(5500,{coord={58.4,45.9,ULDUM}}),	-- Ramkahen Legion Outpost
				exploration(5647),	-- Ruins of Ahmtul
				exploration(5606),	-- Ruins of Ammon
				exploration(5671),	-- Ruins of Khintaset
				exploration(5602),	-- Schnottz's Landing
				visit_exploration(5665,{coord={57.6,61.5,ULDUM}}),	-- Sunwatcher's Ridge
				exploration(5696),	-- Surveyors' Outpost
				exploration(5669),	-- Temple of Uldum
				exploration(5612),	-- The Cursed Landing
				exploration(5420),	-- The Gate of Unending Cycles
				exploration(5613),	-- The Steps of Fate
				exploration(5582),	-- The Threshold
				exploration(5614),	-- The Trail of Devastation
				exploration(5583),	-- The Vortex Pinnacle
				exploration(5684),	-- Throne of the Four Winds
				exploration(5689),	-- Tombs of the Precursors
				visit_exploration(5666,{coord={54.7,42.6,ULDUM}}),	-- Vir'naal Dam
				visit_exploration(5586,{coord={55.0,46.4,ULDUM}}),	-- Vir'naal River
				visit_exploration(5717,{coord={66.5,68.3,ULDUM}}),	-- Vir'naal River Delta
			}),
			n(FACTIONS, {
				faction(FACTION_RAMKAHEN, {	-- Ramkahen
					["provider"] = { "i", 65904 },	-- Tabard of Ramkahen
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(653, {	-- Oasis of Vir'sar
					["cr"] = 48274,	-- Jock Lindsey <Flight Master>
					["coord"] = { 26.6, 8.2, ULDUM },
				}),
				fp(652, {	-- Ramkahen
					["cr"] = 48275,	-- Kurzel <Flight Master>
					["coord"] = { 56.2, 33.6, ULDUM },
				}),
				fp(674, {	-- Schnottz's Landing
					["cr"] = 48273,	-- Evax Oilspark <Flight Master>
					["coord"] = { 22.2, 64.8, ULDUM },
				}),
			}),
			-- #if ANYCLASSIC
 			n(PROFESSIONS, {
				prof(FISHING, {
					o(202779, {	-- Blackbelly Mudfish School
						i(22739),	-- Tome of Polymorph: Turtle (CI!)
					}),
					o(202780, {	-- Fathom Eel Swarm
						i(22739),	-- Tome of Polymorph: Turtle (CI!)
					}),
				}),
				prof(MINING, {
					["description"] = "Elementium Veins (0.05% Drop Rate) and Rich Elementium Veins (0.08% Drop Rate) require a mining skill of 475-500.",
					["groups"] = {
						i(67282),	-- Elementium Geode (PET!)
					},
				}),
			}),
			-- #endif
			petbattles({
				n(66824, {	-- Obalis <Grand Master Pet Tamer>
					["coord"] = { 56.6, 41.8, ULDUM },
				}),
			}),
			n(QUESTS, {
				q(27761, {	-- A Disarming Distraction
					["coord"] = { 74.1, 64.4, ULDUM },
					["provider"] = { "o", 206293 },	-- A.I.D.A. Terminal
					["sourceQuest"] = 27760,	-- Artificial Intelligence
					["groups"] = {
						objective(1, {	-- 0/1 First Bomb Cluster disarmed
							["provider"] = { "o", 206395 },	-- First Bomb Cluster
						}),
						objective(2, {	-- 0/1 Second Bomb Cluster disarmed
							["provider"] = { "o", 206396 },	-- Second Bomb Cluster
						}),
						objective(3, {	-- 0/1 Third Bomb Cluster disarmed
							["provider"] = { "o", 206397 },	-- Third Bomb Cluster
						}),
						objective(4, {	-- 0/4 Unstable Bomb Bot deactivated
							["provider"] = { "n", 46888 },	-- Unstable Bomb Bot
						}),
						i(65843),	-- Brainrot Grips
						i(65842),	-- Treads of the Starry Obelisk
						i(65841),	-- Tomb-Curse Chestplate
					},
				}),
				q(27928, {	-- A Favor for the Furrier
					["qg"] = 47670,	-- Belloc Brightblade
					["coord"] = { 24.3, 64.5, ULDUM },
					["sourceQuest"] = 27926,	-- Eastern Hospitality
					["groups"] = {
						objective(1, {	-- 0/5 Desert Coyote Pelt
							["provider"] = { "i", 62776 },	-- Desert Coyote Pelt
							["cr"] = 47190,	-- Shaggy Desert Coyote
						}),
						i(65867),	-- Pristine Coyote Spaulders
						i(65866),	-- Flenser's Leggings
						i(65865),	-- Ankh-Inscribed Bracers
					},
				}),
				q(27176, {	-- A Strange Disc
					["coord"] = { 64.8, 29.5, ULDUM },
					["modelScale"] = 30,
					["provider"] = { "o", 205266 },	-- Elaborate Disc
					["sourceQuests"] = {
						28112,	-- Escape From the Lost City
						27141,	-- Exploding Through
					},
					["groups"] = {
						i(65889),	-- Shardfinder Hood
						i(65888),	-- Splinterproof Bracers
						i(65887),	-- Staffseeker Shoulderplates
					},
				}),
				q(27624, {	-- After the Fall
					["qg"] = 45296,	-- Harrison Jones
					["coord"] = { 64.5, 28.0, ULDUM },
					["sourceQuest"] = 27431,	-- Tipping the Balance
					["groups"] = {
						objective(1, {	-- 0/1 Orb of the Morning Star
							["providers"] = {
								{ "i", 61044 },	-- Orb of the Morning Star
								{ "o", 205884 },	-- Watcher Head
							},
						}),
						objective(2, {	-- 0/1 Orb of the Evening Star
							["providers"] = {
								{ "i", 61975 },	-- Orb of the Evening Star
								{ "o", 205886 },	-- Watcher Head
							},
						}),
						objective(3, {	-- 0/1 Orb of the North Star
							["providers"] = {
								{ "i", 61976 },	-- Orb of the North Star
								{ "o", 205889 },	-- Watcher Head
							},
						}),
						objective(4, {	-- 0/1 Orb of the Shooting Star
							["providers"] = {
								{ "i", 61977 },	-- Orb of the Shooting Star
								{ "o", 205887 },	-- Watcher Head
							},
						}),
					},
				}),
				q(28135, {	-- Al'Akir's Vengeance
					["qg"] = 47684,	-- King Phaoris
					["coord"] = { 54.9, 32.7, ULDUM },
					["sourceQuest"] = 28134,	-- Impending Retribution
				}),
				q(27839, {	-- Ancient Weapons
					["qg"] = 46134,	-- High Commander Kamses
					["coord"] = { 58.8, 46.1, ULDUM },
					["sourceQuest"] = 28201,	-- Ploughshares to Swords
					["groups"] = {
						objective(1, {	-- 0/1 Ancient Tol'vir Armaments
							["providers"] = {
								{ "i", 62533 },	-- Ancient Tol'vir Armaments
								{ "o", 206393 },	-- Ancient Tol'vir Weapons
							},
						}),
						i(65836),	-- Stolen Neferset Waistguard
						i(65835),	-- Chestguard of the Bleak Scarab
						i(65834),	-- Weaponseeker Bracers
					},
				}),
				q(27943, {	-- Angered Spirits
					["qg"] = 47159,	-- Commander Schnottz
					["coord"] = { 24.4, 64.0, ULDUM },
					["sourceQuest"] = 27939,	-- The Desert Fox
				}),
				q(27760, {	-- Artificial Intelligence
					["provider"] = { "i", 62483 },	-- A.I.D.A. Communicator
					["crs"] = {
						46920,	-- Expedition Member
						46590,	-- Crazed Digger
						47014,	-- Cursed Surveyor
					},
				}),
				q(28403, {	-- Bad Datas
					["qg"] = 48528,	-- Harrison Jones
					["coord"] = { 36.1, 20.2, ULDUM },
					["sourceQuest"] = 28402,	-- Schnottz So Fast
				}),
				q(27990, {	-- Battlezone
					["qg"] = 47159,	-- Commander Schnottz
					["coord"] = { 24.4, 64.0, ULDUM },
					["sourceQuest"] = 28002,	-- Crisis Management
					["groups"] = {
						i(65854),	-- Substitute Gunner's Leggings
						i(65853),	-- Tank Director's Treads
						i(65852),	-- Gauntlets of Delicate Aim
					},
				}),
				q(27517, {	-- Be Prepared
					["coord"] = { 65.1, 33.8, ULDUM },
					["provider"] = { "o", 205540 },	-- Decrepit Skeleton
					["sourceQuest"] = 27196,	-- On to Something
					["description"] = "This quest can be accepted from a Decrepit Skeleton or from a Piece of Rope, looted from a Tormented Tomb-Robber. This version of the quest can be picked up as soon as you enter the Chamber of the Stars.",
					["groups"] = {
						i(65886),	-- Rope-Grip Gloves
						i(65872),	-- Helm of Broken Bones
						i(65884),	-- Femurbreak Stompers
					},
				}),
				q(28602, {	-- Be Prepared
					["qg"] = 45296,	-- Harrison Jones
					["coord"] = { 64.5, 28.0, ULDUM },
					["sourceQuests"] = {
						27196,	-- On to Something
						27541,	-- Lessons From the Past
					},
					["description"] = "This version of the quest will be offered if you have completed Lessons From the Past.",
					["groups"] = {
						i(65886),	-- Rope-Grip Gloves
						i(65872),	-- Helm of Broken Bones
						i(65884),	-- Femurbreak Stompers
					},
				}),
				q(28483, {	-- Bleeding the Enemy
					["qg"] = 48564,	-- King Phaoris
					["coord"] = { 52.0, 65.4, ULDUM },
					["sourceQuest"] = 28623,	-- The Push Westward
					["groups"] = {
						objective(1, {	-- 0/10 Neferset Insignia
							["provider"] = { "i", 64352 },	-- Neferset Insignia
							["crs"] = {
								47722,	-- Neferset Armorer
								47727,	-- Neferset Blade Twister
								47729,	-- Neferset Savage
								47738,	-- Neferset Snake Charmer
								47741,	-- Neferset Venom Keeper
								47760,	-- Neferset Cursebringer
								47762,	-- Neferset Ritualist
								48625,	-- Neferset Scryer
								48626,	-- Neferset Raider
								48757,	-- Neferset Intruder credit
							},
						}),
					},
				}),
				q(27924, {	-- Budd's Plan
					["qg"] = 46875,	-- Budd
					["coord"] = { 59.5, 72.0, ULDUM },
					["sourceQuest"] = 27922,	-- Traitors!
					["groups"] = {
						objective(1, {	-- 0/6 Neferset Armor
							["provider"] = { "i", 62821 },	-- Neferset Armor
							["crs"] = {
								47306,	-- Neferset Sentinel
								48267,	-- Neferset Denizen
							},
						}),
					},
				}),
				q(27549, {	-- By the Light of the Stars
					["qg"] = 45296,	-- Harrison Jones
					["coord"] = { 64.4, 28.0, ULDUM },
					["sourceQuests"] = {
						27517,	-- Be Prepared
						28602,	-- Be Prepared
						27541,	-- Lessons From the Past
						27511,	-- The Thrill of Discovery
					},
					["sourceQuestNumRequired"] = 3,	-- ['Be Prepared' don't cross-complete apparently]
					["groups"] = {
						objective(1, {	-- 0/7 Suspended Starlight
							["providers"] = {
								{ "i", 61376 },	-- Suspended Starlight
								{ "o", 205582 },	-- Suspended Starlight
							},
						}),
						i(61509),	-- Sapphire Spectacles
					},
				}),
				q(28352, {	-- Camelraderie
					["qg"] = 48431,	-- Sullah
					["coord"] = { 29.6, 21.8, ULDUM },
					["sourceQuest"] = 28274,	-- Two Tents
					["groups"] = {
						objective(1, {	-- 0/3 Wild Camels captured
							["provider"] = { "i", 67241 },	-- Sullah's Camel Harness
							["cr"] = 51193,	-- Wild Camel
						}),
					},
				}),
				q(27623, {	-- Colossal Guardians
					["coord"] = { 39.6, 45.4, ULDUM },
					["provider"] = { "o", 205874 },	-- Sand-Covered Hieroglyphs
					["sourceQuest"] = 27602,	-- The Prophet's Dying Words
					["groups"] = {
						objective(1, {	-- 0/1 Stone of the Moon
							["provider"] = { "i", 61970 },	-- Stone of the Moon
							["cr"] = 46042,	-- Colossus of the Moon
						}),
						objective(2, {	-- 0/1 Stone of the Sun
							["provider"] = { "i", 61971 },	-- Stone of the Sun
							["cr"] = 46041,	-- Colossus of the Sun
						}),
					},
				}),
				q(27777, {	-- Core Access Codes
					["coord"] = { 74.1, 64.4, ULDUM },
					["provider"] = { "o", 206293 },	-- A.I.D.A. Terminal
					["sourceQuest"] = 27760,	-- Artificial Intelligence
					["groups"] = {
						objective(1, {	-- 0/1 Core Access Codes
							["provider"] = { "i", 62399 },	-- Core Access Codes
							["cr"] = 46587,	-- Twizzleflux the Insane
						}),
					},
				}),
				q(28002, {	-- Crisis Management
					["qg"] = 47670,	-- Belloc Brightblade
					["coord"] = { 24.3, 64.5, ULDUM },
					["sourceQuest"] = 27969,	-- Make Yourself Useful
					["groups"] = {
						objective(1, {	-- 0/1 Prolific Writer Questioned
							["provider"] = { "n", 47516 },	-- Prolific Writer
						}),
						objective(2, {	-- 0/1 Privileged Socialite Soothed
							["provider"] = { "n", 47519 },	-- Privileged Socialite
						}),
						objective(3, {	-- 0/1 Pretentious Businessman Chastened
							["provider"] = { "n", 47520 },	-- Pretentious Businessman
						}),
						objective(4, {	-- 0/1 Budding Artist Counseled
							["provider"] = { "n", 47707 },	-- Budding Artist
						}),
					},
				}),
				q(27940, {	-- Dirty Birds
					["qg"] = 47202,	-- Diseased Vulture
					["sourceQuest"] = 27926,	-- Eastern Hospitality
					["description"] = "This quest is auto-accepted when you kill a Diseased Vulture after accepting The Desert Fox or A Favor for the Furrier.",
					["coord"] = { 43.5, 70.5, ULDUM },	-- Cradle of the Ancients
					["groups"] = {
						objective(1, {	-- 0/8 Diseased Vultures Slain
							["provider"] = { "n", 47202 },	-- Diseased Vulture
						}),
					},
				}),
				q(27669, {	-- Do the Honors
					["qg"] = 45296,	-- Harrison Jones
					["coord"] = { 64.5, 28.0, ULDUM },
					["sourceQuest"] = 27624,	-- After the Fall
					["groups"] = {
						objective(1, {	-- 0/1 Obelisk of the Stars Reactivated
							["provider"] = { "i", 62054 },	-- Orbs of the Stars
						}),
						i(65863),	-- Chain Reaction Hood
						i(65862),	-- Crashing Idol Headguard
						i(65861),	-- Statue Climbers
						i(65864),	-- Eye of the Stars
					},
				}),
				q(27187, {	-- Do the World a Favor
					["qg"] = 45202,	-- Mangy Hyena
					["sourceQuest"] = 27141,	-- Harrison Jones
					["description"] = "This quest is auto-accepted when you kill a Mangy Hyena after accepting A Strange Disc or Field Work.",
					["coord"] = { 64.0, 30.0, ULDUM },	-- Obelisk of the Stars
					["groups"] = {
						objective(1, {	-- 0/12 Mangy Hyenas Eradicated
							["providers"] = {
								{ "n", 45202},	-- Mangy Hyena
								{ "n", 45204},	-- Skarf
							},
						}),
					},
				}),
				q(27926, {	-- Eastern Hospitality
					["qg"] = 47670,	-- Belloc Brightblade
					["coord"] = { 24.3, 64.5, ULDUM },
					["sourceQuest"] = 28132,	-- Efficient Excavations
					["groups"] = {
						objective(1, {	-- 0/1 Mingled with Ambassador Laurent
							["provider"] = { "n", 47176 },	-- Ambassador Laurent
						}),
						objective(2, {	-- 0/1 Mingled with a Refined Gentleman
							["provider"] = { "n", 47185 },	-- Refined Gentleman
						}),
						objective(3, {	-- 0/1 Mingled with a Budding Artist
							["provider"] = { "n", 47187 },	-- Budding Artist
						}),
						objective(4, {	-- 0/1 Mingled with an Aspiring Starlet
							["provider"] = { "n", 47189 },	-- Aspiring Starlet
						}),
					},
				}),
				q(27003, {	-- Easy Money
					["qg"] = 44833,	-- Adarrah
					["sourceQuests"] = {
						28558,	-- Hero's Call: Uldum!
						28295,	-- Meetup with the Caravan
						28296,	-- Meetup with the Caravan
						28557,	-- Warchief's Command: Uldum!
					},
					["coord"] = { 30.4, 65.5, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28132, {	-- Efficient Excavations
					["crs"] = { 46993 },	-- Schnottz Air Officer
					["provider"] = { "i", 62768 },	-- Efficient Excavations
					["sourceQuest"] = 27669,	-- Do the Honors
					["isBreadcrumb"] = true,
				}),
				q(28112, {	-- Escape From the Lost City
					["qg"] = 46872,	-- Prince Nadun
					["coord"] = { 59.5, 72.0, ULDUM },
					["sourceQuests"] = {
						27923,	-- Smoke in Their Eyes
						27924,	-- Budd's Plan
						28105,	-- Kavem the Callous
					},
					["groups"] = {
						i(64492, {	-- Ramkahen Badge of Valor
							["collectible"] = false,
						}),
					},
				}),
				q(27941, {	-- Fashionism
					["qg"] = 47670,	-- Belloc Brightblade
					["coord"] = { 24.3,64.5, ULDUM },
					["sourceQuest"] = 27928,	-- A Favor for the Furrier
					["groups"] = {
						i(65860),	-- Impeccable Uniform Gauntlets
						i(65859),	-- Waistguard of Fallen Hearts
						i(65858),	-- Bullet-Pierced Chestplate
					},
				}),
				q(27179, {	-- Field Work
					["qg"] = 45186,	-- Sand Pygmy Corpse
					["coord"] = { 64.6, 28.6, ULDUM },
					["sourceQuests"] = {
						28112,	-- Escape From the Lost City
						27141,	-- Exploding Through
					},
					["groups"] = {
						objective(1, {	-- 0/10 Ornate Tablet Fragment
							["provider"] = { "i", 60860 },	-- Ornate Tablet Fragment
							["cr"] = 45190,	-- Sand Pygmy
						}),
					},
				}),
				q(28497, {	-- Fire From the Sky
					["qg"] = 48698,	-- Harrison Jones
					["sourceQuest"] = 28482,	-- Sullah's Gift
					["coord"] = { 41.3, 5.5, ULDUM },
					["groups"] = {
						ach(5317),	-- Help the Bombardier! I'm the Bombardier!
						i(65870),	-- Confiscated Dog Tags
						i(65869),	-- Powderburned Spaulders
						i(65868),	-- Canopic CHestplate
					},
				}),
				q(28736, {	-- Fire From the Sky (Daily)
					["qg"] = 49523,	-- Weathered Nomad
					["sourceQuest"] = 28497,	-- Fire From the Sky
					["coord"] = { 41.3, 5.5, ULDUM },
					["isDaily"] = true,
					["groups"] = {
						ach(5317),	-- Help the Bombardier! I'm the Bombardier!
					},
				}),
				q(28267, {	-- Firing Squad
					["qg"] = 47972,	-- Commander Schnottz
					["sourceQuests"] = {
						28195,	-- Sending a Message
						28194,	-- The Great Escape
					},
					["coord"] = { 22.5, 63.1, ULDUM },
					-- #if AFTER 9.2.0
					["description"] = "If Harrison Jones does not spawn after the cutscene, you have to zone out and back in again. Either log out and in again, or fly northwest to Ahn'Qiraj and back.",
					-- #endif
					["groups"] = {
						i(65803),	-- Harrison's Insignia of Panache
						i(65805),	-- Schnottz's Medallion of Command
						i(65804),	-- Talisman of Sinister Order
					},
				}),
				q(27748, {	-- Fortune and Glory
					["qg"] = 47158,	-- Harrison Jones
					["coord"] = { 36.1, 15.7, ULDUM },
					["sourceQuest"] = 28613,	-- See You on the Other Side!
					["groups"] = {
						objective(1, {	-- 0/1 Obsidian Colossus Defeated
							["provider"] = { "n", 46646 },	-- Obsidian Colossus
						}),
						i(65786),	-- Colossus Smasher Breastplate
						i(65788),	-- Arrowspike Launcher
						i(65787),	-- Harrison's Climbing Hook
					},
				}),
				q(28273, {	-- Friend of a Friend
					["qg"] = 48186,	-- Harrison Jones
					["coord"] = { 27.0, 7.5, ULDUM },
					["sourceQuest"] = 28269,	-- Meet Me In Vir'sar
				}),
				q(27779, {	-- Gnomebliteration
					["qg"] = 46750,	-- Fusion Core
					["coord"] = { 77.2, 63.2, ULDUM },
					["sourceQuest"] = 27778,	-- Hacking the Wibson
					["groups"] = {
						i(65776),	-- Kata-Mary Crown
						i(65775),	-- Spaulders of Rolling Incineration
						i(65774),	-- Fireball Treads
						i(65773),	-- Gloves of Gnomebliteration
					},
				}),
				q(27950, {	-- Gobbles!
					["qg"] = 47159,	-- Commander Schnottz
					["coord"] = { 24.4, 64.2, ULDUM },
					["sourceQuests"] = {
						27941,	-- Fashionism
						27942,	-- Idolatry
						27943,	-- Angered Spirits
					},
				}),
				q(27778, {	-- Hacking the Wibson
					["provider"] = { "o", 206293 },	-- A.I.D.A. Terminal
					["sourceQuests"] = {
						27761,	-- A Disarming Distraction
						27777,	-- Core Access Codes
					},
					["coord"] = { 74.1, 64.4, ULDUM },
					["groups"] = {
						objective(1, {	-- 0/1 Wibson Mainframe hacked
							["providers"] = {
								{ "i", 62621},	-- Maintenance Axe
								{ "o", 206532},	-- Maintenance Tools
								{ "n", 46715},	-- Wibson Mainframe
							},
						}),
					},
				}),
				q(28612, {	-- Harrison Jones and the Temple of Uldum
					["qg"] = 49151,	-- Harrison Jones
					["coord"] = { 33.3, 19.6, ULDUM },
					["sourceQuest"] = 27748,	-- Fortune and Glory
					["groups"] = {
						ach(4961),	-- In a Thousand Years Even You Might be Worth Something
						i(65833),	-- Leggings of Promise
						i(65832),	-- Girlde of the Ancient One
						i(65831),	-- Pharoah's Burial Spaulders
					},
				}),
				heroscall(q(28558, {	-- Hero's Call: Uldum!
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 83,
				})),
				q(28404, {	-- I'll Do It By Hand
					["qg"] = 48558,	-- Harrison Jones
					["coord"] = { 38.9, 23.2, ULDUM },
					["sourceQuest"] = 28403,	-- Bad Datas
					["groups"] = {
						objective(1, {	-- 0/1 Titanic Guardian Defeated
							["provider"] = { "n", 48437 },	-- Titanic Guardian
						}),
						i(65873),	-- Titanic Treads
						i(65885),	-- Gauntlets of Ahmtul
						i(65871),	-- Guardian-Killer Waistplate
					},
				}),
				q(27900, {	-- I've Got This Guy
					["qg"] = 46978,	-- Harrison Jones
					["coord"] = { 43.9, 57.0, ULDUM },
					["sourceQuests"] = {
						27669,	-- Do the Honors
						27899,	-- That Gleam in his Eye
					},
					["groups"] = {
						objective(1, {	-- 0/10 Schnottz Air Troopers Slain
							["provider"] = { "n", 46979 },	-- Schnottz Air Trooper
						}),
					},
				}),
				q(27942, {	-- Idolatry
					["qg"] = 47159,	-- Commander Schnottz
					["coord"] = { 24.4, 64.0, ULDUM },
					["sourceQuest"] = 27939,	-- The Desert Fox
					["groups"] = {
						objective(1, {	-- 0/8 Well-preserved Idol
							["providers"] = {
								{ "i", 62792 },	-- Well-preserved Idol
								{ "o", 206563 },	-- Well-preserved Idol
							},
						}),
					},
				}),
				q(27903, {	-- Ignition
					["qg"] = 46978,	-- Harrison Jones
					["coord"] = { 43.9, 57.0, ULDUM },
					["sourceQuest"] = 27901,	-- They Don't Know What They've Got Here
					["groups"] = {
						objective(1, {	-- 0/1 Lens of the Sun
							["provider"] = { "i", 62705 },	-- Lens of the Sun
							["cr"] = 47032,	-- Titanic Guardian
						}),
					},
				}),
				q(28134, {	-- Impending Retribution
					["qg"] = 47684,	-- King Phaoris
					["coord"] = { 54.9, 32.7, ULDUM },
					["sourceQuest"] = 28112,	-- Escape From the Lost City
				}),
				q(28353, {	-- Jonesy Sent For You
					["qg"] = 48431,	-- Sullah
					["coord"] = { 29.6, 21.8, ULDUM },
					["sourceQuest"] = 28350,	-- Master Trapper
					["isBreadcrumb"] = true,
				}),
				q(27627, {	-- Just a Fancy Cockroach
					["sourceQuest"] = 27431,	-- Tipping the Balance
					["description"] = "This quest is auto-accepted when you kill any color Scarab after completing Tipping the Balance.",
					["coord"] = { 64.4, 29.6, ULDUM },
					["groups"] = {
						objective(1, {	-- 0/5 Amethyst Scarabs Slain
							["provider"] = { "n", 46129 },	-- Amethyst Scarab
						}),
						objective(2, {	-- 0/5 Emerald Scarabs Slain
							["provider"] = { "n", 46128 },	-- Emerald Scarab
						}),
						objective(3, {	-- 0/5 Sapphire Scarabs Slain
							["provider"] = { "n", 46127 },	-- Sapphire Scarab
						}),
						objective(4, {	-- 0/5 Turquoise Scarabs Slain
							["provider"] = { "n", 46126 },	-- Turquoise Scarab
						}),
						-- #if BEFORE MOP
						i(68612, {	-- Scarab Leg Talisman
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				q(28105, {	-- Kavem the Callous
					["qg"] = 46872,	-- Prince Nadun
					["coord"] = { 59.5, 72.0, ULDUM },
					["sourceQuest"] = 27922,	-- Traitors!
					["groups"] = {
						objective(1, {	-- 0/1 Neferset Key
							["provider"] = { "i", 62817 },	-- Neferset Key
							["cr"] = 47567,	-- Kavem the Callous
						}),
						i(65820),	-- Keythief Handwraps
						i(65819),	-- Kavem's Trimmed Chestguard
						i(65821),	-- Pearl-Handled Long Gun
					},
				}),
				q(27541, {	-- Lessons From the Past
					["qg"] = 45874,	-- Schnottz Scout
					["coord"] = { 63.4, 32.4, ULDUM },
					["sourceQuest"] = 27196,	-- On to Something
				}),
				q(28480, {	-- Lieutenants of Darkness
					["qg"] = 48564,	-- King Phaoris
					["sourceQuest"] = 28623,	-- The Push Westward
					["coord"] = { 52.0, 65.4, ULDUM },
					["groups"] = {
						objective(1, {	-- 0/1 Scorpion-Lord Namkhare slain
							["provider"] = { "n", 47742 },	-- Scorpion-Lord Namkhare
						}),
						objective(2, {	-- 0/1 High Priest Sekhemet slain
							["provider"] = { "n", 47730 },	-- High Priest Sekhemet
						}),
						i(65813),	-- Scarab-Inlaid Crossbow
						i(65814),	-- Sekhemet's Seal
						-- #if BEFORE MOP
						i(65812, {	-- Namkhare's Cabochon Charm
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				q(28193, {	-- Lockdown!
					["qg"] = 47972,	-- Commander Schnottz
					["coord"] = { 22.5, 63.1, ULDUM },
					["sourceQuest"] = 28187,	-- Missed Me By Zhat Much!
				}),
				q(27969, {	-- Make Yourself Useful
					["qg"] = 47159,	-- Commander Schnottz
					["coord"] = { 24.4, 64.0, ULDUM },
					["sourceQuest"] = 27950,	-- Gobbles!
					["groups"] = {
						objective(1, {	-- 0/6 Slackers Motivated
							["provider"] = { "n", 47292 },	-- Slacking Laborer
						}),
						i(65857),	-- Shoulders of the Obelisk
						i(65856),	-- Chestguard of Vigorous Motivation
						i(65855),	-- Mongoose-Hide Waistguard
					},
				}),
				q(28350, {	-- Master Trapper
					["qg"] = 48431,	-- Sullah
					["coord"] = { 29.6, 21.8, ULDUM },
					["sourceQuest"] = 28274,	-- Two Tents
					["groups"] = {
						objective(1, {	-- 0/5 Meat Scrap
							["provider"] = { "i", 63541 },	-- Meat Scrap
							["crs"] = {
								45202,	-- Mangy Hyena
								45321,	-- Riverbed Crocolisk
								45859,	-- Venomblood Scorpid
								46317,	-- Neferset Crocolisk
								47202,	-- Diseased Vulture
								47720,	-- Camel
								47726,	-- Tiger
								47737,	-- Venomscale Scorpid
								47740,	-- Viper
								47803,	-- Sand Scorpid
								48199,	-- Bloodsnarl Scavenger
								48209,	-- Bloodsnarl Scavenger
								48239,	-- Armadillo
								50862,	-- Deathsting Scorpid
								50866,	-- Desert Lion
								50873,	-- Majestic Duneprawler
								51193,	-- Wild Camel
								51199,	-- Wild Camel PROXY (DO NOT LOCALIZE)
								51675,	-- Oasis Crocolisk
							},
						}),
					},
				}),
				q(28269, {	-- Meet Me In Vir'sar
					["qg"] = 48162,	-- Harrison Jones
					["coord"] = { 23.5, 60.2, ULDUM },
					["sourceQuest"] = 28267,	-- Firing Squad
				}),
				q(27520, {	-- Minions of Al'Akir
					["qg"] = 45799,	-- Prince Nadun
					["coord"] = { 45.2, 37.9, ULDUM },
					["sourceQuest"] = 28135,	-- Al'Akir's Vengeance
					["groups"] = {
						objective(1, {	-- 0/6 Scion of Al'Akir slain
							["provider"] = { "n", 45755 },	-- Scion of Al'Akir
						}),
						i(65810),	-- Asp-Clasp Bracers
						i(65809),	-- Gloves of the Stela
						i(65811),	-- Cenotaph Choker
					},
				}),
				q(28187, {	-- Missed Me By Zhat Much!
					["qg"] = 47940,	-- Commander Schnottz
					["coord"] = { 24.4, 64.0, ULDUM },
					["sourceQuest"] = 27990,	-- Battlezone
				}),
				q(28272, {	-- Missing Pieces
					["qg"] = 48186,	-- Harrison Jones
					["coord"] = { 27.0, 7.5, ULDUM },
					["sourceQuest"] = 28350,	-- Master Trapper
					["groups"] = {
						objective(1, {	-- 0/7 Ancient Copper Scroll
							["providers"] = {
								{ "i", 63685 },	-- Ancient Copper Scroll
								{ "o", 207124 },	-- Pillaged Loot Sack
							},
						}),
					},
				}),
				q(28376, {	-- Myzerian's Head
					["crs"] = { 48428 },	-- Myzerian
					["coord"] = { 40.59, 22.19, ULDUM },
					["provider"] = { "i", 63700 },
					["sourceQuest"] = 28367,	-- Shroud of the Makers!
				}),
				q(28561, {	-- Nahom Must Hold
					["qg"] = 47684,	-- King Phaoris
					["coord"] = { 54.9, 32.7, ULDUM },
					["sourceQuest"] = 28533,	-- The High Council's Decision
				}),
				q(27707, {	-- Neferset Prison
					["qg"] = 46136,	-- Vizier Tanotep
					["sourceQuest"] = 27632,	-- Tanotep's Son
				}),
				q(27196, {	-- On to Something
					["description"] = "Warning: Jumping after Harrison Jones DOES NOT give you any slow fall effects. Mount up and fly down after him.",
					["qg"] = 45180,	-- Harrison Jones
					["coord"] = { 64.5, 28.5, ULDUM },
					["sourceQuests"] = {
						27176,	-- A Strange Disc
						27179,	-- Field Work	-- first pass: did this first. Do "A Strange Disc" first next time
					},
				}),
				q(28201, {	-- Ploughshares to Swords
					["qg"] = 46134,	-- High Commander Kamses
					["coord"] = { 58.8, 46.1, ULDUM },
					["sourceQuest"] = 27631,	-- The High Commander's Vote
					["groups"] = {
						objective(1, {	-- 0/8 Ramkahen Laborer recruited
							["provider"] = { "n", 46333 },	-- Ramkahen Laborer
						}),
					},
				}),
				q(27141, {	-- Exploding Through
					["qg"] = 44860,	-- Harrison Jones
					["coord"] = { 64.3, 22.3, ULDUM },
					["sourceQuest"] = 27993,	-- Take it to 'Em!
				}),
				q(28499, {	-- Punish the Trespassers
					["qg"] = 48501,	-- Sun Prophet Tumet
					["coord"] = { 67.3, 42.7, ULDUM },
					["sourceQuest"] = 28561,	-- Nahom Must Hold
					["groups"] = {
						objective(1, {	-- 0/10 Neferset intruder slain
							["providers"] = {
								{ "n", 48757},	-- Neferset Intruder credit
								{ "n", 48625},	-- Neferset Scryer
								{ "n", 48626},	-- Neferset Raider
								{ "n", 48627},	-- Neferset Looter
							},
						}),
						i(65818),	-- Leggings of the Unforgiving Tomb
						i(65817),	-- Grave Protector Shoulderplates
						i(65816),	-- Ramkahen Ceremonial Hammer
					},
				}),
				q(28621, {	-- Put That Baby in the Cradle!
					["qg"] = 49204,	-- Brann Bronzebeard
					["coord"] = { 32.5, 30.8, ULDUM },
					["sourceQuest"] = 28612,	-- Harrison Jones and Temple of Uldum
				}),
				q(28271, {	-- Reduced Productivity
					["qg"] = 48186,	-- Harrison Jones
					["coord"] = { 27.0, 7.5, ULDUM },
					["sourceQuests"] = {
						28353,	-- Jonesy Sent For You
						28350,	-- Master Trapper
					},
					["groups"] = {
						objective(1, {	-- 0/15 Schnottz Employees Killed at Obelisk of the Moon
							["providers"] = {
								{ "n", 48204},	-- Schnottz Excavator
								{ "n", 48205},	-- Schnottz Overseer
								{ "n", 48443},	-- Schnottz Elite Trooper
								{ "n", 48488},	-- Schnottz Elite Trooper Corpse
								{ "n", 48534},	-- Schnottz Elite Trooper Corpse
								{ "n", 48631},	-- Schnottz Elite Infantryman
								{ "n", 48668},	-- Schnottz Elite Trooper
								{ "n", 48720},	-- Schnottz Elite Infantryman
								{ "n", 49114},	-- Schnottz Elite Infantryman Corpse
								{ "n", 49115},	-- Schnottz Infantryman Corpse
								{ "n", 49173},	-- Schnottz Elite Infantryman Corpse
								{ "n", 50659},	-- Schnottz Overseer
								{ "n", 50660},	-- Schnottz Overseer
								{ "n", 50661},	-- Schnottz Overseer
								{ "n", 50671},	-- Schnottz Elite Trooper
								{ "n", 50672},	-- Schnottz Elite Trooper
								{ "n", 50673},	-- Schnottz Elite Trooper
								{ "n", 51753},	-- Schnottz Overseer
							},
						}),
					},
				}),
				q(28141, {	-- Relics of the Sun King
					["qg"] = 47715,	-- Sun Priest Asaris
					["coord"] = { 52.9, 27.7, ULDUM },
					["sourceQuest"] = 28112,	-- Escape From the Lost City
					["groups"] = {
						objective(1, {	-- 0/4 Relic of the Sun King
							["provider"] = { "i", 63081 },	-- Relic of the Sun King
							["cr"] = 45905,	-- Wastewander Outrider
						}),
					},
				}),
				q(28291, {	-- Return to Camp
					["qg"] = 48237,	-- Salhet
					["coord"] = { 56.9, 62.4, ULDUM },
					["sourceQuest"] = 28277,	-- Salhet the Tactician
				}),
				q(28277, {	-- Salhet the Tactician
					["qg"] = 48237,	-- Salhet
					["coord"] = { 56.9, 62.4, ULDUM },
					["sourceQuest"] = 28276,	-- Salhet's Secret
					["groups"] = {
						i(65829),	-- Leggings of Feline Command
						i(65828),	-- Great General's Crown
						i(65830),	-- Salhet's Ornate Dagger
					},
				}),
				q(28486, {	-- Salhet's Gambit
					["qg"] = 49345,	-- Salhet
					["coord"] = { 52.9, 65.5, ULDUM },
					["sourceQuest"] = 28623,	-- The Push Westward
				}),
				q(28276, {	-- Salhet's Secret
					["qg"] = 48022,	-- Salhet
					["coord"] = { 52.5, 56.5, ULDUM },	-- Picked up anywhere on Sunwatcher's Ridge, but adding one coord to point out the general area
					["sourceQuest"] = 28210,	-- Shaping Up
				}),
				q(28402, {	-- Schnottz So Fast
					-- #if AFTER 9.2.0
					["description"] = "If Harrison Jones does not spawn after the cutscene, you have to zone out and back in again. Either log out and in again, or fly out of Chamber of the Moon and back.",
					-- #endif
					["qg"] = 48186,	-- Harrison Jones
					["coord"] = { 27.0, 7.5, ULDUM },
					["sourceQuest"] = 28367,	-- Shroud of the Makers
					["groups"] = {
						objective(1, {	-- 0/10 Schnottz Elite Troopers Slain
							["provider"] = { "n", 48668 },	-- Schnottz Elite Trooper
						}),
					},
				}),
				q(28613, {	-- See You on the Other Side!
					["qg"] = 48698,	-- Harrison Jones
					["coord"] = { 41.3, 5.5, ULDUM },
					["sourceQuest"] = 28497,	-- Fire From the Sky
				}),
				q(27628, {	-- Send Word to Phaoris
					["qg"] = 45799,	-- Prince Nadun
					["coord"] = { 45.2, 37.9, ULDUM },
					["sourceQuest"] = 27706,	-- The Scepter of Orsis
				}),
				q(28195, {	-- Sending a Message
					["qg"] = 47972,	-- Commander Schnottz
					["coord"] = { 22.5, 63.1, ULDUM },
					["sourceQuest"] = 28193,	-- Lockdown!
					["groups"] = {
						objective(1, {	-- 0/1 Captain Margun Killed
							["provider"] = { "n", 47981 },	-- Captain Margun
						}),
						objective(2, {	-- 0/1 Captain Cork Killed
							["provider"] = { "n", 47980 },	-- Captain Cork
						}),
						objective(3, {	-- 0/1 Captain Kronkh Killed
							["provider"] = { "n", 47978 },	-- Captain Kronkh
						}),
					},
				}),
				q(28210, {	-- Shaping Up
					["qg"] = 46883,	-- Salhet
					["coord"] = { 59.5, 47.3, ULDUM },
					["sourceQuest"] = 28198,	-- The Weakest Link
					["groups"] = {
						objective(1, {	-- 0/8 Help Salhet defeat Bloodsnarl Hyenas
							["provider"] = { "n", 45353 },	-- Bloodsnarl Hyena
						}),
					},
				}),
				q(28367, {	-- Shroud of the Makers
					["qg"] = 48431,	-- Sullah
					["coord"] = { 29.6, 21.8, ULDUM },
					["sourceQuest"] = 28363,	-- Stirred the Hornet's Nest
					["groups"] = {
						objective(1, {	-- 0/7 Powder Kegs Sabotaged
							["provider"] = { "o", 207127 },	-- Schnottz Powder Keg
						}),
						i(65876),	-- Leggings of the Vir'naal
						i(65875),	-- Powderkeg Bracers
						i(65874),	-- Rediscovered Delta Walkers
					},
				}),
				q(27923, {	-- Smoke in Their Eyes
					["qg"] = 46872,	-- Prince Nadun
					["coord"] = { 59.5, 72.0, ULDUM },
					["sourceQuest"] = 27922,	-- Traitors!
					["groups"] = {
						objective(1, {	-- 0/5 Bale of Hay burnt
							["provider"] = { "o", 206684 },	-- Bale of Hay
						}),
					},
				}),
				q(28363, {	-- Stirred the Hornet's Nest
					["qg"] = 48186,	-- Harrison Jones
					["coord"] = { 27.0, 7.5, ULDUM },
					["sourceQuests"] = {
						28272,	-- Missing Pieces
						28271,	-- Reduced Productivity
					},
				}),
				q(27836, {	-- Stopping the Spread
					["qg"] = 46135,	-- High Priest Amet
					["coord"] = { 54.1, 41.8, ULDUM },
					["sourceQuest"] = 27630,	-- The High Priest's Vice
					["groups"] = {
						objective(1, {	-- 0/6 Slitherer Egg destroyed
							["provider"] = { "o", 206390 },	-- Slitherer Egg
						}),
					},
				}),
				q(28482, {	-- Sullah's Gift
					["qg"] = 48621,	-- Sullah
					["coord"] = { 42.1, 25.9, ULDUM },
					["sourceQuest"] = 28404,	-- I'll Do It By Hand
				}),
				q(27905, {	-- Tailgunner!
					["qg"] = 46978,	-- Harrison Jones
					["coord"] = { 43.9, 57.0, ULDUM },
					["sourceQuests"] = {
						27900,	-- I've Got This Guy
						27903,	-- Ignition
					},
					["groups"] = {
						i(65883),	-- Tailgunner's Flight Suit
						i(65882),	-- Reinforced Seatbelt
						i(65881),	-- Aeronaut's Helm
					},
				}),
				q(27993, {	-- Take it to 'Em!
					["qg"] = 47318,	-- Mack
					["coord"] = { 49.6, 39.0, ULDUM },
					["isBreadcrumb"] = true,
					["sourceQuest"] = 28112,	-- Escape From the Lost City
				}),
				q(27632, {	-- Tanotep's Son
					["qg"] = 46136,	-- Vizier Tanotep
					["coord"] = { 56.6, 53.5, ULDUM },
					["sourceQuest"] = 27629,	-- The Vizier's Vote
					["groups"] = {
						objective(1, {	-- 0/1 Vir'Naal Delta Map
							["provider"] = { "i", 62280 },	-- Vir'Naal Delta Map
							["cr"] = 46340,	-- Neferset Guard
						}),
						i(65794),	-- Marshseeker Gloves
						i(65793),	-- Hamatep Legguards
						i(65795),	-- Vir'naal Guardsman's Axe
						i(157550),	-- Vir'naal Cleaver
					},
				}),
				q(27899, {	-- That Gleam in his Eye
					["qg"] = 47005,	-- Adarrah
					["coord"] = { 54.2, 35.2, ULDUM },
					["sourceQuest"] = 27669,	-- Do The Honors
					["isBreadcrumb"] = true,
				}),
				q(28502, {	-- The Bandit Warlord
					["qg"] = 47715,	-- Sun Priest Asaris
					["coord"] = { 53.0, 27.7, ULDUM },
					["sourceQuest"] = 28141,	-- Relics of the Sun King
					["groups"] = {
						objective(1, {	-- 0/1 Warlord Ihsenn slain
							["provider"] = { "n", 47755 },	-- Warlord Ihsenn
						}),
						i(65798),	-- Bandit Scourge Bracers
						i(65797),	-- Heptu Headguard
						i(65796),	-- Qebnet Greaves
						i(65799),	-- Ihsenn's Staff of Terror
					},
				}),
				q(28633, {	-- The Coffer of Promise
					["qg"] = 49248,	-- Brann Bronzebeard
					["coord"] = { 44.8, 67.3, ULDUM },
					["sourceQuest"] = 28622,	-- Three if by Air
					["groups"] = {
						objective(1, {	-- 0/1 Titan Discs
							["providers"] = {
								{ "i", 64667 },	-- Titan Discs
								{ "o", 207294 },	-- Coffer of Promise
							},
						}),
					},
				}),
				q(27755, {	-- The Curse of the Tombs
					["qg"] = 48501,	-- Sun Prophet Tumet
					["coord"] = { 67.3, 42.7, ULDUM },
					["sourceQuest"] = 28501,	-- The Defense of Nahom
					["groups"] = {
						objective(1, {	-- 0/6 Crazed Digger slain
							["provider"] = { "n", 46590 },	-- Crazed Digger
						}),
						objective(2, {	-- 0/1 Mekgineer Mixeltweed slain
							["provider"] = { "n", 46592 },	-- Mekgineer Mixeltweed
						}),
						i(65847),	-- Robes of Khintaset
						i(65846),	-- Bracers of the Verdant Cradle
						i(65845),	-- Misappropriated Girdle of Khartut
						i(65844),	-- Tombbreaker Mace
						i(157551),	-- Tombbreaker Gavel
					},
				}),
				q(28500, {	-- The Cypher of Keset
					["qg"] = 48761,	-- Salhet
					["coord"] = { 67.2, 42.8, ULDUM },
					["sourceQuests"] = {
						28499,	-- Punish the Trespassers
						28498,	-- The Secret of Nahom
					},
					["groups"] = {
						objective(1, {	-- 0/1 The Cypher of Keset
							["provider"] = { "i", 64649 },	-- The Cypher of Keset
							["cr"] = 49214,	-- Raider Lord Havat
						}),
					},
				}),
				q(28501, {	-- The Defense of Nahom
					["qg"] = 48761,	-- Salhet
					["coord"] = { 67.2, 42.8, ULDUM },
					["sourceQuest"] = 28500,	-- The Cypher of Keset
				}),
				q(28611, {	-- The Defilers' Ritual
					["qg"] = 46135,	-- High Priest Amet
					["coord"] = { 54.1, 41.8, ULDUM },
					["sourceQuests"] = {
						27836,	-- Stopping the Spread
						27837,	-- Trespassers in the Water
					},
					["groups"] = {
						objective(1, {	-- 0/1 Neferset Ritual stopped
							["provider"] = { "n", 49148 },	-- Dark Ritualist Zakahn
						}),
					},
				}),
				q(27939, {	-- The Desert Fox
					["qg"] = 47159,	-- Commander Schnottz
					["coord"] = { 24.4, 64.0, ULDUM },
					["sourceQuest"] = 27926,	-- Eastern Hospitality
				}),
				q(28200, {	-- The Elements of Supplies
					["qg"] = 48012,	-- Sergeant Mehat
					["coord"] = { 58.9, 46.1, ULDUM },
					["sourceQuest"] = 27631,	-- The High Commander's Vote
					["groups"] = {
						objective(1, {	-- 0/20 Hardened Crocolisk Hide
							["provider"] = { "i", 63256 },	-- Hardened Crocolisk Hide
							["crs"] = {
								45321,	-- Riverbed Crocolisk
								46317,	-- Neferset Crocolisk
								51675,	-- Oasis Crocolisk
							},
						}),
						i(65839),	-- Sarcophagus Bracers
						i(65838),	-- Cartouche-Inscribed Spaulders
						i(65837),	-- Legplates of Heilopolis
						i(65840),	-- Knife of the Venomous Asp
					},
				}),
				q(28520, {	-- The Fall of Neferset City
					["qg"] = 48564,	-- King Phaoris
					["coord"] = { 52.0, 65.4, ULDUM },
					["sourceQuests"] = {
						28480,	-- Lieutenants of Darkness
						28483,	-- Bleeding the Enemy
						28486,	-- Salhet's Gambit
					},
					["groups"] = {
						objective(1, {	-- 0/1 Dark Pharaoh Tekahn slain
							["provider"] = { "n", 47753 },	-- Dark Pharaoh Tekahn
						}),
						i(65741),	-- Wrap of the Fallen City
						i(65740),	-- Fallen Brotherhood Gauntlets
						i(65742),	-- Drape of Neferset Destruction
						i(65739),	-- Necklace of the Dead City
					},
				}),
				q(28194, {	-- The Great Escape
					["qg"] = 47967,	-- Prolific Writer
					["coord"] = { 21.8, 64.0, ULDUM },
					["sourceQuest"] = 28187,	-- Missed Me By Zhat Much!
					["groups"] = {
						objective(1, {	-- 0/6 Fresh Sailor Uniform
							["provider"] = { "i", 63248 },	-- Fresh Sailor Uniform
							["cr"] = 47982,	-- Schnottz Sea Trooper
						}),
						i(65850),	-- Mirror-Polished Boots
						i(65849),	-- Gauntlets of the Obelisk
						i(65848),	-- False-Face Mask
						i(65851),	-- Officer's Formal Baton
					},
				}),
				q(28654, {	-- The Heart of the Matter
					["qg"] = 49204,	-- Brann Bronzebeard
					["coord"] = { 44.8, 67.3, ULDUM },
					["sourceQuest"] = 28633,	-- The Coffer of Promise
				}),
				q(27631, {	-- The High Commander's Vote
					["qg"] = 47959,	-- Prince Nadun
					["coord"] = { 55.0, 34.0, ULDUM },
					["sourceQuest"] = 27628,	-- Send Word to Phaoris
				}),
				q(28533, {	-- The High Council's Decision
					["providers"] = {
						{ "n", 46134 },	-- High Commander Kamses
						{ "n", 46135 },	-- High Priest Amet
						{ "n", 46136 },	-- Vizier Tanotep
					},
					["coords"] = {
						{ 58.8, 46.1, ULDUM },
						{ 54.1, 41.8, ULDUM },
						{ 56.6, 53.5, ULDUM },
					},
					["sourceQuests"] = {
						27738,	-- The Pit of Scales
						27838,	-- The Root of Corruption
						28291,	-- Return to Camp
					},
				}),
				q(27630, {	-- The High Priest's Vote
					["qg"] = 47959,	-- Prince Nadun
					["coord"] = { 55.0, 34.0, ULDUM },
					["sourceQuest"] = 27628,	-- Send Word to Phaoris
				}),
				q(27738, {	-- The Pit of Scales
					["qg"] = 46136,	-- Vizier Tanotep
					["coord"] = { 71.2, 73.7, ULDUM },
					["sourceQuest"] = 27707,	-- Neferset Prison
					["groups"] = {
						i(65792),	-- Girdle of the Rescuer
						i(65790),	-- Pit Heart Bracers
						i(65789),	-- Caimas' Spaulders
						i(65791),	-- Shield of the Returning Prince
					},
				}),
				q(27595, {	-- The Prophet Hadassi
					["qg"] = 45772,	-- General Ammantep
					["coord"] = { 45.2, 37.7, ULDUM },
					["sourceQuest"] = 28135,	-- Al'Akir's Vengeance
				}),
				q(27602, {	-- The Prophet's Dying Words
					["qg"] = 46603,	-- Prophet Hadassi
					["coord"] = { 40.0, 40.5, ULDUM },
					["sourceQuest"] = 27595,	-- The Prophet Hadassi
				}),
				q(28623, {	-- The Push Westward
					["qg"] = 48761,	-- Salhet
					["coord"] = { 67.2, 42.8, ULDUM },
					["sourceQuest"] = 28501,	-- The Defense of Nahom
				}),
				q(27838, {	-- The Root of the Corruption
					["qg"] = 46135,	-- High Priest Amet
					["coord"] = { 54.1, 41.8, ULDUM },
					["sourceQuest"] = 28611,	-- The Defiler's Ritual
					["groups"] = {
						objective(1, {	-- 0/1 Scalemother Hevna slain
							["provider"] = { "n", 46871 },	-- Scalemother Hevna
						}),
						i(65823),	-- Scales of the Scalemother
						i(65822),	-- Hevna's Eye Socket
						i(65824),	-- Corrupted Eggshell Drape
					},
				}),
				q(27706, {	-- The Scepter of Orsis
					["provider"] = { "o", 205874 },	-- Sand-Covered Hieroglyphs
					["sourceQuest"] = 27623,	-- Colossal Guardians
					["coord"] = { 39.6, 45.4, ULDUM },
					["groups"] = {
						objective(1, {	-- 0/1 The Scepter of Orsis
							["providers"] = {
								{ "i", 62267 },	-- The Scepter of Orsis
								{ "o", 205824 },	-- Sacred Receptacle
							},
						}),
						i(65807),	-- Hood of the Scorpion
						i(65806),	-- Sunwatcher's Legplates
						i(65808),	-- Orsis Polearm
					},
				}),
				q(28498, {	-- The Secret of Nahom
					["qg"] = 48761,	-- Salhet
					["coord"] = { 67.2, 42.8, ULDUM },
					["sourceQuest"] = 28561,	-- Nahom Must Hold
					["groups"] = {
						objective(1, {	-- 0/8 Atulhet's Record Fragment
							["providers"] = {
								{ "i", 64642 },	-- Atulhet's Record Fragment
								{ "o", 207281 },	-- Atulhet's Record Fragment
							},
						}),
					},
				}),
				q(27511, {	-- The Thrill of Discovery
					["qg"] = 45296,	-- Harrison Jones
					["coord"] = { 64.5, 28.0, ULDUM },
					["sourceQuest"] = 27196,	-- On to Something
				}),
				q(27629, {	-- The Vizier's Vote
					["qg"] = 47959,	-- Prince Nadun
					["coord"] = { 55.0, 34.0, ULDUM },
					["sourceQuest"] = 27628,	-- Send Word to Phaoris
				}),
				q(28198, {	-- The Weakest Link
					["qg"] = 46134,	-- High Commander Kamses
					["coord"] = { 58.8, 46.1, ULDUM },
					["sourceQuest"] = 27631,	-- The High Commander's Vote
				}),
				q(27901, {	-- They Don't Know What They've Got Here
					["qg"] = 46978,	-- Harrison Jones
					["coord"] = { 43.9, 57.0, ULDUM },
					["sourceQuest"] = 27669,	-- Do the Honors
				}),
				q(28250, {	-- Thieving Little Pluckers
					["qg"] = 46603,	-- Nomarch Teneth
					["coord"] = { 60.2, 38.2, ULDUM },
					["isDaily"] = true,
				}),
				q(28622, {	-- Three if by Air
					["qg"] = 49203,	-- Harrison Jones
					["coord"] = { 32.5, 30.6, ULDUM },
					["sourceQuest"] = 28621,	-- Put That Baby in the Cradle!
				}),
				q(27431, {	-- Tipping the Balance
					["qg"] = 45296,	-- Harrison Jones
					["coord"] = { 64.5, 28.0, ULDUM },
					["sourceQuest"] = 27549,	-- By the Light of the Stars
				}),
				q(27922, {	-- Traitors!
					["description"] = "You are meant to get up on the roof by using your own flyng mount.",
					["qg"] = 46872,	-- Prince Nadun
					["coord"] = { 59.5, 72.0, ULDUM },
					["sourceQuest"] = 27003,	-- Easy Money (tanaris)
				}),
				q(27837, {	-- Trespassers in the Water
					["qg"] = 46135,	-- High Priest Amet
					["coord"] = { 54.1, 41.8, ULDUM },
					["sourceQuest"] = 27630,	-- The High Priest's Vote
					["groups"] = {
						objective(1, {	-- 0/8 Stillwater Slitherer slain
							["provider"] = { "n", 46868 },	-- Stillwater Slitherer
						}),
						i(65827),	-- Vir'naal Spaulders
						i(65826),	-- Sandals of Corrupted Water
						i(65825),	-- Helm of the Siltwater Slayer
					},
				}),
				q(28274, {	-- Two Tents
					["qg"] = 48203,	-- Sullah
					["coord"] = { 26.6, 8.0, ULDUM },
					["sourceQuest"] = 28273,	-- Friend of a Friend
				}),
				q(27519, {	-- Under the Choking Sands
					["qg"] = 45772,	-- General Ammantep
					["coord"] = { 45.2, 37.7, ULDUM },
					["sourceQuest"] = 28135,	-- Al'Akir's Vengeance
				}),
				q(28351, {	-- Unlimited Potential
					["qg"] = 48431,	-- Sullah
					["coord"] = { 29.6, 21.8, ULDUM },
					["sourceQuest"] = 28274,	-- Two Tents
				}),
				q(28145, {	-- Venomblood Antidote
					["qg"] = 47715,	-- Sun Priest Asaris
					["coord"] = { 52.9, 27.7, ULDUM },
					["sourceQuest"] = 28112,	-- Escape From the Lost City
					["groups"] = {
						i(65801),	-- Mar'at Belt
						i(65800),	-- Bracers of the Dark Pyramid
						i(65802),	-- Shining Scorpid Eye
					},
				}),
				warchiefscommand(q(28557, {	-- Warchief's Command: Uldum!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF, UNDERCITY },	-- Only found in Orgrimmar, Thunder Bluff, & Undercity in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 83. (TODO: Confirm this.)
					["lvl"] = 83,
					-- #endif
				})),
			}),
			n(RARES, {
				n(50065, {	-- Armagedillo
					["coord"] = { 45.0, 42.5, ULDUM },
					["groups"] = {
						i(67243),	-- Armagedillo's Tail
					},
				}),
				n(50064, {	-- Cyrus the Black
					["coords"] = {
						{ 58.0, 82.6, ULDUM },
						{ 58.4, 61.6, ULDUM },
						{ 66.6, 68.2, ULDUM },
						{ 70.8, 74.2, ULDUM },
					},
					["groups"] = {
						i(67242),	-- Tol'Vir Hereditary Girdle
					},
				}),
				n(51403, {	-- Madexx - Black
					["coords"] = {
						{ 47.8, 18.2, ULDUM },
						{ 51.0, 20.4, ULDUM },
						{ 53.4, 19.0, ULDUM },
					},
				}),
				n(51404, {	-- Madexx - Blue
					["coords"] = {
						{ 47.6, 18.8, ULDUM },
						{ 44.8, 10.0, ULDUM },
						{ 44.8, 21.6, ULDUM },
						{ 50.6, 23.8, ULDUM },
						{ 51.0, 19.6, ULDUM },
						{ 53.2, 19.8, ULDUM },
					},
				}),
				n(50154, {	-- Madexx - Brown
					["coords"] = {
						{ 44.8, 10.0, ULDUM },
						{ 44.8, 22.2, ULDUM },
						{ 47.6, 18.6, ULDUM },
						{ 50.8, 20.2, ULDUM },
						{ 50.0, 23.8, ULDUM },
						{ 53.8, 19.4, ULDUM },
					},
				}),
				n(51402, {	-- Madexx - Green
					["coords"] = {
						{ 44.8, 10.0, ULDUM },
						{ 44.8, 22.2, ULDUM },
						{ 47.6, 18.6, ULDUM },
						{ 50.8, 20.2, ULDUM },
						{ 50.0, 23.8, ULDUM },
						{ 53.8, 19.4, ULDUM },
					},
				}),
				n(51401, {	-- Madexx - Red
					["coords"] = {
						{ 44.8, 10.0, ULDUM },
						{ 44.8, 22.2, ULDUM },
						{ 47.6, 18.6, ULDUM },
						{ 50.8, 20.2, ULDUM },
						{ 50.0, 23.8, ULDUM },
					},
				}),
				n(50409, {	-- Mysterious Camel Figurine
					["description"] = "If you're lucky enough to find this Mysterious Camel Figurine, clicking on it will teleport you to the Feralas Steam Pools, where you can defeat Dormus to get the rare Grey Riding Camel.",
					["coords"] = {
						{ 25.59, 65.89, ULDUM },
						{ 29.85, 20.45, ULDUM },
						{ 30.61, 60.50, ULDUM },
						{ 30.99, 66.37, ULDUM },
						{ 31.50, 69.26, ULDUM },
						{ 37.13, 64.08, ULDUM },
						{ 40.16, 38.41, ULDUM },
						{ 45.24, 16.04, ULDUM },
						{ 47.28, 76.69, ULDUM },
						{ 48.17, 46.40, ULDUM },
						{ 49.13, 75.91, ULDUM },
						{ 50.24, 73.67, ULDUM },
						{ 50.47, 31.54, ULDUM },
						{ 51.14, 79.79, ULDUM },
						{ 51.80, 49.34, ULDUM },
						{ 52.14, 51.21, ULDUM },
						{ 64.66, 30.27, ULDUM },
						{ 69.87, 58.13, ULDUM },
						{ 72.02, 43.88, ULDUM },
						{ 73.44, 73.61, ULDUM },
					},
					["groups"] = {
						i(63046, {	-- Grey Riding Camel (MOUNT!)
							["crs"] = { 50245 },	-- Dormus the Camel Hoarder
						}),
					},
				}),
				n(50410, {	-- Mysterious Camel Figurine
					["description"] = "Fake Camel!",
				}),
			}),
			n(VENDORS, {
				n(48617, {	-- Blacksmith Abasi <Ramkahen Quartermaster>
					["coord"] = { 54.0, 33.2, ULDUM },
					["groups"] = bubbleDownClassicRep(FACTION_RAMKAHEN, {
						{	-- Neutral
						},
						{	-- Friendly
							i(65904),	-- Tabard of Ramkahen
						},
						{	-- Honored
							i(62437),	-- Shroud of the Dead
							i(62439),	-- Belt of the Stargazer
							i(62438),	-- Drystone Greaves
							i(62436),	-- Ammunae's Blessing
						},
						{	-- Revered
							i(62441),	-- Robes of Orsis
							i(62446),	-- Quicksand Belt
							i(62445),	-- Sash of Prophecy
							i(62440),	-- Red Rock Band
							i(62369, {	-- Arcanum of the Ramkahen
								["description"] = "This version is only visible on the vendor when you aren't at the required reputation to purchase it yet on your current character.",
								["filterID"] = CONSUMABLES,
							}),
							i(68766, {	-- Arcanum of the Ramkahen
								["filterID"] = CONSUMABLES,
							}),
						},
						{	-- Exalted
							i(62447),	-- Gift of Nadun
							i(62449),	-- Sandguard Bracers
							i(62448),	-- Sun King's Girdle
							i(62450),	-- Desert Walker Sandals
							i(63044),	-- Brown Riding Camel (MOUNT!)
							i(63045),	-- Tan Riding Camel (MOUNT!)
						},
					}),
				}),
				n(49406, {	-- Yasmin <Innkeeper>
					["coord"] = { 26.6, 7.2, ULDUM },
					["groups"] = {
						i(65893, {	-- Sands of Time
							["cost"] = 30000000,	-- 3000g
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(65651),	-- Technique: Origami Beetle
			}),
		},
	}),
}));