---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(REDRIDGE_MOUNTAINS, {
		["lore"] =
		-- #if AFTER CATA
		"Redridge Mountains is a sleepy zone that is primarily Alliance. However, threats come from the Blackrock Invasion, which is revealed to be tied to the Black Dragonflight and Deathwing. The main series of quests follows John J. Keeshan, a clear tribute to Rambo.",
		-- #else
		"The Redridge Mountains are located east of Elwynn Forest, northeast of Duskwood, and south of the Burning Steppes. Although it may be considered contested, Horde characters have no settlements or NPCs and it is thus a place they use mostly for passing through to reach Flame Crest or Stonard.\n\nAn idyllic region of rushing rivers, towering elms and rising elevations, the Redridge Mountains are under Stormwind's protection (though since the second war it is technically independent), and remain one of the last peaceful regions in Azeroth. The people are content and calm, and supply Stormwind with timber, fish, and crops. A force of Blackrock orcs from the Burning Steppes has secured Stonewatch Keep, but so far the orcs keep to themselves.",
		-- #endif
		["icon"] = 236814,
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(780),	-- Explore Redridge Mountains
				ach(4902, {	-- Redridge Mountain Quests
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER MOP
					["groups"] = {
						crit(38367, {	-- The Gnoll Offensive
							["sourceQuest"] = 26545,	-- Yowler Must Die!
						}),
						crit(38368, {	-- Keeshan's Raiders
							["sourceQuest"] = 26607,	-- They Drew First Blood
						}),
						crit(38369, {	-- First Blood
							["sourceQuest"] = 26726,	-- Triumphant Return
						}),
					},
					-- #else
					["sourceQuests"] = {
						26545,	-- Yowler Must Die!
						26607,	-- They Drew First Blood
						26726,	-- Triumphant Return
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					646,	-- Chicken (PET!)
					378,	-- Rabbit (PET!)
				}},
				["groups"] = {
					pet(395),	-- Fledgling Buzzard (PET!)
					pet(391),	-- Mountain Cottontail (PET!)
					pet(392),	-- Redridge Rat (PET!)
					pet(424),	-- Roach (PET!)
				},
			}),
			explorationHeader({
				exploration(97),	-- Alther's Mill
				-- #if AFTER CATA
				exploration(5326),	-- Camp Everstill
				-- #endif
				exploration(1000),	-- Galardell Valley
				-- #if AFTER CATA
				exploration(5325),	-- Keeshan's Post
				-- #endif
				exploration(68),	-- Lake Everstill
				exploration(1001),	-- Lakeridge Highway
				exploration(69),	-- Lakeshire
				exploration(95),	-- Redridge Canyons
				exploration(996),	-- Render's Camp
				exploration(998),	-- Render's Rock
				exploration(997),	-- Render's Valley
				exploration(98),	-- Rethban Caverns
				-- #if AFTER CATA
				exploration(5324),	-- Shalewind Canyon
				-- #endif
				-- #if BEFORE CATA
				exploration(70),	-- Stonewatch
				-- #endif
				exploration(71),	-- Stonewatch Falls
				-- #if AFTER CATA
				exploration(2099),	-- Stonewatch Keep
				-- #endif
				exploration(999),	-- Stonewatch Tower
				exploration(1002),	-- Three Corners
				exploration(96),	-- Tower of Ilgalar
			}),
			n(FLIGHT_PATHS, {
				fp(615, {	-- Camp Everstill, Redridge
					["cr"] = 43371,	-- Arlen Marsters <Gryphon Master>
					["coord"] = { 52.8, 54.6, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(5, {	-- Lakeshire, Redridge
					["cr"] = 931,	-- Ariena Stormfeather <Gryphon Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 29.4, 53.6, REDRIDGE_MOUNTAINS },
						-- #else
						{ 30.6, 59.6, REDRIDGE_MOUNTAINS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				fp(596, {	-- Shalewind Canyon, Redridge
					["cr"] = 43072,	-- Nora Baldwin <Gryphon Master>
					["coord"] = { 77.8, 65.8, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(124, {	-- A Baying of Gnolls
					["qg"] = 415,	-- Verner Osgood
					["coord"] = { 31.0, 47.4, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/10 Redridge Brute
							["provider"] = { "n", 426 },	-- Redridge Brute
						}),
						objective(2, {	-- 0/10 Redridge Mystic
							["provider"] = { "n", 430 },	-- Redridge Mystic
						}),
					},
				}),
				q(129, {	-- A Free Lunch
					["providers"] = {
						{ "n", 379 },	-- Darcy
						{ "i", 5534 },	-- Parker's Lunch
					},
					["coord"] = { 26.7, 44.3, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(94, {	-- A Watchful Eye
					["providers"] = {
						{ "n", 313 },	-- Theocritus
						{ "i", 1083 },	-- Glyph of Azora
					},
					["coord"] = { 65.2, 69.8, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(26708, {	-- AHHHHHHHHHHHH! AHHHHHHHHH!!!
					["qg"] = 43733,	-- Colonel Troteman
					["sourceQuest"] = 26694,	-- The Grand Magus Doane
					["coord"] = { 77.2, 65.9, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/200 Blackrock Invaders slain
							["providers"] = {
								{ "n", 43775 },	-- Blackrock Invader
								{ "n", 43787 },	-- Blackrock Drake Rider
							},
						}),
						i(131588, {	-- Bravo Company Amice
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60722, {	-- Bravo Company Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60723, {	-- Bravo Company Monnions
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60725, {	-- Bravo Company Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60724, {	-- Bravo Company Shoulderguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131589, {	-- Bravo Company Spaulders
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(2282, {	-- Alther's Mill
					["providers"] = {
						{ "n", 6966 },	-- Lucius
						{ "i", 5060 },	-- Thieves' Tools
					},
					["sourceQuest"] = 2281,	-- Redridge Rendezvous
					["coord"] = { 28.2, 52.2, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Token of Thievery
							["provider"] = { "i", 7871 },	-- Token of Thievery
							["coord"] = { 52.0, 44.8, REDRIDGE_MOUNTAINS },
						}),
						i(7907, {	-- Certificate of Thievery
							["description"] = "This item has no function, but if you get caught, just hand them this like you're Ron Swanson.",
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(34, {	-- An Unwelcome Guest
					["qg"] = 342,	-- Martie Jainrose
					["coord"] = { 21.9, 46.4, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Bellygrub's Tusk
							["provider"] = { "i", 3631 },	-- Bellygrub's Tusk
							["coord"] = { 16.6, 49.8, REDRIDGE_MOUNTAINS },
							["cr"] = 345,	-- Bellygrub
						}),
						i(2562),	-- Bouquet of Scarlet Begonias
					},
				}),
				q(26509, {	-- An Unwelcome Guest
					["qg"] = 342,	-- Martie Jainrose
					["coord"] = { 22.0, 42.7, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Bellygrub's Tusk
							["provider"] = { "i", 3631 },	-- Bellygrub's Tusk
							["coord"] = { 17.4, 45, REDRIDGE_MOUNTAINS },
							["cr"] = 345,	-- Bellygrub
						}),
						i(2562),	-- Bouquet of Scarlet Begonias
					},
				}),
				q(26562, {	-- And Last But Not Least... Danforth
					["qg"] = 43303,	-- Krakauer
					["sourceQuest"] = 26561,	-- Krakauer
					["coord"] = { 25.9, 10.4, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Overlord Barbarius slain
							["provider"] = { "n", 43369 },	-- Overlord Barbarius
							["coord"] = { 28.6, 17.8, REDRIDGE_MOUNTAINS },
						}),
						objective(2, {	-- 0/1 Blackrock Lever Key
							["providers"] = {
								{ "i", 59033 },	-- Blackrock Lever Key
								{ "o", 204403 },	-- Chain Lever
							},
							["coord"] = { 27.8, 17.9, REDRIDGE_MOUNTAINS },
						}),
					},
				}),
				q(246, {	-- Assessing the Threat
					["qg"] = 1070,	-- Deputy Feldon
					["sourceQuest"] = 244,	-- Encroaching Gnolls
					["coord"] = { 30.8, 60, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						objective(1, {	-- 0/10 Redridge Mongrel
							["provider"] = { "n", 423 },	-- Redridge Mongrel
						}),
						objective(2, {	-- 0/10 Redridge Poacher
							["provider"] = { "n", 424 },	-- Redridge Poacher
						}),
					},
				}),
				q(128, {	-- Blackrock Bounty
					["qg"] = 903,	-- Guard Howe
					["coord"] = { 31.5, 58.0, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/15 Blackrock Champion
							["provider"] = { "n", 435 },	-- Blackrock Champion
						}),
					},
				}),
				q(20, {	-- Blackrock Menace
					["qg"] = 382,	-- Marshal Marris
					["coord"] = { 33.4, 49.0, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/10 Battleworn Axe
							["provider"] = { "i", 3014 },	-- Battleworn Axe
							["crs"] = {
								435,	-- Blackrock Champion
								4464,	-- Blackrock Gladiator
								440,	-- Blackrock Grunt
								4462,	-- Blackrock Hunter
								485,	-- Blackrock Outrunner
								437,	-- Blackrock Renegade
								4064,	-- Blackrock Scout
								4065,	-- Blackrock Sentry
								436,	-- Blackrock Shadowcaster
								4463,	-- Blackrock Summoner
								615,	-- Blackrock Tracker
							},
						}),
					},
				}),
				q(26636, {	-- Bravo Company Field Kit: Camouflage
					["qg"] = 43461,	-- Krakauer
					["sourceQuest"] = 26616,	-- It's Never Over
					["coord"] = { 52.4, 55.4, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Pile of Leaves
							["providers"] = {
								{ "i",  59152 },	-- Pile of Leaves
								{ "o", 204424 },	-- Pile of Leaves
							},
							["coord"] = { 48.5, 64.5, REDRIDGE_MOUNTAINS },
						}),
						objective(2, {	-- 0/5 Fox Poop
							["providers"] = {
								{ "i",  59153 },	-- Fox Poop
								{ "o", 204425 },	-- Fox Poop
							},
							["coord"] = { 47.9, 67.8, REDRIDGE_MOUNTAINS },
						}),
					},
				}),
				q(26637, {	-- Bravo Company Field Kit: Chloroform
					["qg"] = 43459,	-- Messner
					["sourceQuest"] = 26616,	-- It's Never Over
					["coord"] = { 52.4, 55.5, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Muckdweller Gland
							["provider"] = { "i", 59156 },	-- Muckdweller Gland
							["coord"] = { 42.0, 51.2, REDRIDGE_MOUNTAINS },
							["cr"] = 43532,	-- Muckdweller
						}),
						i(60717, {	-- Everstill Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60716, {	-- Muckdweller Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131569, {	-- Muckdweller Handguards
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60715, {	-- Vial of Chloroform
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26587, {	-- Breaking Out is Hard to Do
					["qg"] = 43270,	-- Messner
					["sourceQuest"] = 26586,	-- In Search of Bravo Company
					["coord"] = { 47.5, 41.8, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Messner's Cage Key
							["providers"] = {
								{ "i", 58950 },	-- Messner's Cage Key
								{ "o", 204389 },	-- Blackrock Key Pouch
							},
							["coord"] = { 49.5, 38.2, REDRIDGE_MOUNTAINS },
						}),
					},
				}),
				q(26514, {	-- Canyon Romp
					["qg"] = 344,	-- Magistrate Solomon
					["sourceQuest"] = 26512,	-- Tuning the Gnomecorder
					["coord"] = { 32.3, 39.5, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Redridge Gnoll Collar
							["provider"] = { "i", 58897 },	-- Redridge Gnoll Collar
							["coord"] = { 27.6, 31.4, REDRIDGE_MOUNTAINS },
							["crs"] = {
								430,	-- Redridge Mystic
								446,	-- Redridge Basher
								445,	-- Redridge Alpha
								580,	-- Redridge Drudger
							},
						}),
					},
				}),
				q(26714, {	-- Darkblaze, Brood of the Worldbreaker
					["qg"] = 43733,	-- Colonel Troteman
					["sourceQuest"] = 26713,	-- Showdown at Stonewatch
					["coord"] = { 60.6, 36.6, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Darkblaze defeated
							["provider"] = { "n", 43496 },	-- Darkblaze
							["coord"] = { 58.2, 55.6, REDRIDGE_MOUNTAINS },
						}),
					},
				}),
				q(131, {	-- Delivering Daffodils
					["providers"] = {
						{ "n", 342 },	-- Martie Jainrose
						{ "i", 1325 },	-- Daffodil Bouquet
					},
					["sourceQuest"] = 130,	-- Visit the Herbalist
					["coord"] = { 21.9, 46.4, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						i(1326),	-- Sauteed Sunfish
					},
				}),
				q(26668, {	-- Detonation
					["qg"] = 43611,	-- John J. Keeshan
					["sourceQuest"] = 26651,	-- To Win a War, You Gotta Become War
					["coord"] = { 77.6, 65.5, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(60712, {	-- Exterminator's Armbands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131576, {	-- Exterminator's Bracers
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156953, {	-- 'Liberated' Greataxe
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(60714, {	-- Massive Firearm of Death
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60711, {	-- Messner's Cuffs
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60713, {	-- Redridge Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(116, {	-- Dry Times
					["qg"] = 346,	-- Barkeep Daniels
					["coord"] = { 26.5, 44.2, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = {
						DUSKWOOD,
						ELWYNN_FOREST,
						STORMWIND_CITY,
						WESTFALL,
					},
					["cost"] = {
						{ "i", 1942, 1 },	-- Bottle of Moonshine
						{ "i", 1941, 1 },	-- Cask of Merlot
						{ "i", 1262, 1 },	-- Keg of Thunderbrew
						{ "i", 1939, 1 },	-- Skin of Sweet Rum
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						i(1270, {	-- Finely Woven Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10456, {	-- A Bulging Coin Purse
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(244, {	-- Encroaching Gnolls
					["qg"] = 464,	-- Guard Parker
					["coord"] = { 17.3, 69.5, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
				}),
				q(26506, {	-- Franks and Beans
					["qg"] = 379,	-- Darchy Parker
					["coord"] = { 15.6, 65.3, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Tarantula Eyes
							["provider"] = { "i", 58891 },	-- Tarantula Eyes
							["coord"] = { 14.6, 67.6, REDRIDGE_MOUNTAINS },
							["cr"] = 442,	-- Tarantula
						}),
						objective(2, {	-- 0/4 Condor Giblets
							["provider"] = { "i", 58892 },	-- Condor Giblets
							["coord"] = { 19.8, 66.2, REDRIDGE_MOUNTAINS },
							["cr"] = 428,	-- Dire Condor
						}),
						objective(3, {	-- 0/4 Goretusk Kidney
							["provider"] = { "i", 58893 },	-- Goretusk Kidney
							["coord"] = { 23.0, 61.2, REDRIDGE_MOUNTAINS },
							["cr"] = 547,	-- Great Goretusk
						}),
					},
				}),
				q(26519, {	-- He Who Controls the Ettins
					["description"] = "Once obtained, the Quest has to be completed. It can't be abandoned.",
					["provider"] = { "i", 58898 },	-- Dirt-Stained Scroll
					["sourceQuest"] = 26512,	-- Tuning the Gnomecorder
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Ardo Dirtpaw slain
							["provider"] = { "n", 711 },	-- Ardo Dirtpaw
							["coord"] = { 18.2, 18.2, REDRIDGE_MOUNTAINS },
						}),
					},
				}),
				q(26365, {	-- Hero's Call: Redridge Mountains! (From NPCs)
					["providers"] = {
						-- #if AFTER 7.0.3
						{ "n", 107574 },	-- Anduin Wrynn <King of Stormwind>
						-- #else
						{ "n", 29611 },		-- King Varian Wrynn <King of Stormwind>
						-- #endif
						{ "n", 1750 },		-- Grand Admiral Jes-Tereth
						{ "n", 821 },		-- Captain Danuvin
					},
					["coords"] = {
						-- #if AFTER 7.0.3
						{ 85.6, 31.8, STORMWIND_CITY },	-- Anduin Wrynn <King of Stormwind>
						-- #else
						{ 85.6, 31.8, STORMWIND_CITY },	-- King Varian Wrynn <King of Stormwind>
						-- #endif
						{ 85.8, 32.4, STORMWIND_CITY },	-- Grand Admiral Jes-Tereth
						{ 56.3, 47.6, WESTFALL },	-- Captain Danuvin
					},
					-- #IF BEFORE 11.0.5
					-- [Unsure prior to this]
					["description"] = "This quest seems to be unobtainable at higher levels, so if you want to collect the transmog from this quest then you'll need to do it early.",
					-- #ENDIF
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(14, 14, 11),
					["groups"] = {
						i(60689, {	-- Belt of Unsolvable Problems
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60690, {	-- Doody Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131517, {	-- Doody Shoes
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60688, {	-- Parker's Yardstick
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60691, {	-- Unfortunate Treads
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				heroscall(q(28563, {	-- Hero's Call: Redridge Mountains!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },	-- Only found in Stormwind City in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 14. (Confirmed by Hurieve, Crieve's Level 14 Hunter.)
					-- Cataclysm: Maximum is level 18 (TODO: Test max level between 16 and 30)
					["lvl"] = { 14, 18 },
					-- #endif
					["groups"] = {
						i(60689, {	-- Belt of Unsolvable Problems
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60690, {	-- Doody Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131517, {	-- Doody Shoes
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60688, {	-- Parker's Yardstick
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60691, {	-- Unfortunate Treads
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				})),
				q(3741, {	-- Hilary's Necklace
					["qg"] = 8965,	-- Shawn
					["coord"] = { 29.3, 53.4, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/1 Hilary's Necklace
							["providers"] = {
								{ "i",  10958 },	-- Hilary's Necklace
								{ "o", 154357 },	-- Glinting Mud
							},
							["coords"] = {
								{ 19.3, 51.8, REDRIDGE_MOUNTAINS },
								{ 25.9, 54.1, REDRIDGE_MOUNTAINS },
								{ 37.8, 54.4, REDRIDGE_MOUNTAINS },
							},
						}),
					},
				}),
				q(26573, {	-- His Heart Must Be In It
					["qg"] = 43221,	-- Colonel Troteman
					["sourceQuest"] = 26571,	-- Weapons of War
					["coord"] = { 28.6, 40.7, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Keeshan's Red Headband
							["providers"] = {
								{ "i", 58956 },	-- Keeshan's Red Headband
								{ "o", 204388 },	-- Blackrock Coffer
							},
							["coord"] = { 26.4, 10.4, REDRIDGE_MOUNTAINS },
						}),
						objective(2, {	-- 0/1 Keeshan's Jade Amulet
							["providers"] = {
								{ "i", 58957 },	-- Keeshan's Jade Amulet
								{ "o", 204388 },	-- Blackrock Coffer
							},
							["coord"] = { 26.4, 10.4, REDRIDGE_MOUNTAINS },
						}),
						i(131557, {	-- Hauberk of the Changing Heart
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60710, {	-- Troteman's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60709, {	-- Vest of the Changing Heart
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(2358, {	-- Horns of Nez'ra
					["qg"] = 7009,	-- Arantir <The Hand of Chaos>
					["coord"] = { 28.4, 52.4, REDRIDGE_MOUNTAINS },
					["timeline"] = { CREATED_1_11_1, ADDED_3_0_2, REMOVED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Horns of Nez'ra
							["provider"] = { "i", 7906 },	-- Horns of Nez'ra
							["coord"] = { 41.0, 38.8, REDRIDGE_MOUNTAINS },
							["crs"] = {
								485,	-- Blackrock Outrunner
								440,	-- Blackrock Grunt
								4065,	-- Blackrock Sentry
								615,	-- Blackrock Tracker
								437,	-- Blackrock Renegade
							},
						}),
						i(7676),	-- Thistle Tea
					},
				}),
				q(126, {	-- Howling in the Hills
					["qg"] = 415,	-- Verner Osgood
					["coord"] = { 31.0, 47.4, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Yowler's Paw
							["provider"] = { "i", 3614 },	-- Yowler's Paw
							["coord"] = { 28.8, 23.2, REDRIDGE_MOUNTAINS },
							["cr"] = 518,	-- Yowler
						}),
						i(1319, {	-- Ring of Iron Will
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(2910, {	-- Gold Militia Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26638, {	-- Hunting the Hunters
					["qg"] = 43462,	-- Danforth
					["sourceQuest"] = 26616,	-- It's Never Over
					["coord"] = { 52.5, 55.5, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Blackrock Hunter slain
							["provider"] = { "n", 4462 },	-- Blackrock Hunter
							["coord"] = { 47, 67.2, REDRIDGE_MOUNTAINS },
						}),
					},
				}),
				q(26586, {	-- In Search of Bravo Company
					["qg"] = 43221,	-- Colonel Troteman
					["sourceQuest"] = 26568,	-- This Ain't My War
					["coord"] = { 28.6, 40.7, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26616, {	-- It's Never Over
					["qg"] = 43184,	-- John J. Keeshan
					["sourceQuest"] = 26607,	-- They Drew First Blood
					["coord"] = { 26.3, 40.1, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Keeshan's Riverboat Ride Complete
							["provider"] = { "n", 43443 },	-- Keeshan's Riverboat
							["coord"] = { 34.2, 45.6, REDRIDGE_MOUNTAINS },
						}),
					},
				}),
				q(26567, {	-- John J. Keeshan
					["qg"] = 43221,	-- Colonel Troteman
					["sourceQuest"] = 26545,	-- Yowler Must Die!
					["coord"] = { 28.6, 40.7, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26560, {	-- Jorgensen
					["qg"] = 43300,	-- Messner
					["sourceQuest"] = 26587,	-- Breaking Out is Hard to Do
					["coord"] = { 47.5, 41.6, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Jorgensen's Cage Key
							["provider"] = { "i", 58969 },	-- Jorgensen's Cage Key
							["coord"] = { 43.6, 10.8, REDRIDGE_MOUNTAINS },
							["cr"] = 43350,	-- Utroka the Keymistress
						}),
					},
				}),
				q(26561, {	-- Krakauer
					["qg"] = 43305,	-- Jorgensen
					["sourceQuest"] = 26560,	-- Jorgensen
					["coord"] = { 33.5, 11.8, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Ritualist Tarak slain
							["provider"] = { "n", 43363 },	-- Ritualist Tarak
							["coord"] = { 26.6, 10.6, REDRIDGE_MOUNTAINS },
						}),
					},
				}),
				q(26511, {	-- Lake Everstill Clean Up
					["qg"] = 900,	-- Bailiff Conacher
					["coord"] = { 28.6, 40.9, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Lake Everstill Murloc slain
							["providers"] = {
								{ "n", 422 },	-- Murloc Flesheater
								{ "n", 545 },	-- Murloc Tidecaller
								{ "n", 578 },	-- Murloc Scout
								{ "n", 544 },	-- Murloc Nightcrawler
								{ "n", 548 },	-- Murloc Minor Tidecaller
								{ "n", 1083 },	-- Murloc Shorestriker
							},
							["coord"] = { 37.6, 44.2, REDRIDGE_MOUNTAINS },
						}),
						i(60699, {	-- Bailiff's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60698, {	-- Belt of Recurring Raids
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131539, {	-- Chain of Recurring Raids
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(157001, {	-- Everstill Hewer
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(60697, {	-- Indiscriminate Wand
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60696, {	-- Shield of the Lesson
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26513, {	-- Like a Fart in the Wind
					["qg"] = 382,	-- Marshal Marris
					["sourceQuest"] = 26510,	-- We Must Prepare!
					["coord"] = { 31.8, 44.9, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Redridge Supply Crate
							["providers"] = {
								{ "i", 58896 },	-- Redridge Supply Crate
								{ "o", 204352 },	-- Redridge Supply Crate
							},
							["coord"] = { 22.7, 36.5, REDRIDGE_MOUNTAINS },
						}),
						i(60692, {	-- Breadwinner's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60695, {	-- Cloak of Insomnia
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131540, {	-- Starvation Leggings
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60694, {	-- Starvation Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60693, {	-- Ventillated Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131541, {	-- Ventillated Vest
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(248, {	-- Looking Further
					["providers"] = {
						{ "o", 31 },	-- Old Lion Statue
						{ "i", 1083 },	-- Glyph of Azora
						{ "o", 76 },	-- An Empty Jar
					},
					["sourceQuest"] = 94,	-- A Watchful Eye
					["coord"] = { 84.3, 46.9, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(145, {	-- Messenger to Darkshire (1/2)
					["providers"] = {
						{ "n", 344 },	-- Magistrate Solomon
						{ "i", 1409 },	-- Solomon's Plea to Darkshire
					},
					["sourceQuest"] = 144,	-- Messenger to Westfall (2/2)
					["coord"] = { 30.0, 44.4, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(146, {	-- Messenger to Darkshire (2/2)
					["providers"] = {
						{ "n", 263 },	-- Lord Ello Ebonlocke
						{ "i", 1410 },	-- Ebonlocke's Response to Solomon
					},
					["sourceQuest"] = 145,	-- Messenger to Darkshire (1/2)
					["coord"] = { 72.0, 46.6, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(120, {	-- Messenger to Stormwind (1/2)
					["providers"] = {
						{ "n", 344 },	-- Magistrate Solomon
						{ "i", 1293 },	-- The State of Lakeshire
					},
					["coord"] = { 30.0, 44.4, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(121, {	-- Messenger to Stormwind (2/2)
					["providers"] = {
						{ "n", 466 },	-- General Marcus Jonathan
						{ "i", 1294 },	-- The General's Response
					},
					["sourceQuest"] = 120,	-- Messenger to Stormwind (1/2)
					["coord"] = { 63.8, 75.4, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(143, {	-- Messenger to Westfall (1/2)
					["providers"] = {
						{ "n", 344 },	-- Magistrate Solomon
						{ "i", 1407 },	-- Solomon's Plea to Westfall
					},
					["sourceQuest"] = 121,	-- Messenger to Stormwind (2/2)
					["coord"] = { 30.0, 44.4, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(144, {	-- Messenger to Westfall (2/2)
					["providers"] = {
						{ "n", 234 },	-- Gryan Stoutmantle
						{ "i", 1408 },	-- Stoutmantle's Response to Solomon
					},
					["sourceQuest"] = 143,	-- Messenger to Westfall (1/2)
					["coord"] = { 56.2, 47.6, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(219, {	-- Missing In Action
					["qg"] = 349,	-- Corporal Keeshan
					["coord"] = { 28.4, 12.6, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						i(3555, {	-- Robe of Solomon
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(1275, {	-- Deputy Chain Coat
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3431, {	-- Bone-studded Leather
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(249, {	-- Morganth
					["providers"] = {
						{ "o", 31 },	-- Old Lion Statue
						{ "n", 313 },	-- Theocritus <Mage of Tower Azora>
					},
					["sourceQuest"] = 248,	-- Looking Further
					["coords"] = {
						{ 84.5, 47.1, REDRIDGE_MOUNTAINS },
						{ 65.2, 69.8, ELWYNN_FOREST },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Pendant of Shadow
							["provider"] = { "i", 3617 },	-- Pendant of Shadow
							["coord"] = { 80, 49, REDRIDGE_MOUNTAINS },
							["cr"] = 397,	-- Morganth
						}),
						i(5274, {	-- Rose Mantle
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(150, {	-- Murloc Poachers
					["qg"] = 381,	-- Dockmaster Baren
					["coord"] = { 27.7, 47.3, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 1468, 8 },	-- Murloc Fin
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(3567, {	-- Dwarven Fishing Pole
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26508, {	-- Nida's Necklace
					["qg"] = 8965,	-- Shawn
					["coord"] = { 28.3, 48.8, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Nida's Necklace
							["providers"] = {
								{ "i", 10958 },	-- Nida's Necklace
								{ "o", 154357 },	-- Glinting Mud
							},
							["coords"] = {
								{ 19.9, 47.5, REDRIDGE_MOUNTAINS },
								{ 27.3, 50.8, REDRIDGE_MOUNTAINS },
								{ 35.8, 49.4, REDRIDGE_MOUNTAINS },
							},
						}),
					},
				}),
				q(26505, {	-- Parker's Report
					["providers"] = {
						{ "n", 464 },	-- Watch Captain Parker
						{ "i", 58890 },	-- Parker's Report
					},
					["sourceQuest"] = 26503,	-- Still Assessing the Threat
					["coord"] = { 15.3, 64.5, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26639, {	-- Point of Contact: Brubaker
					["qg"] = 43458,	-- John J. Keeshan
					["sourceQuest"] = 26616,	-- It's Never Over
					["coord"] = { 52.5, 55.4, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26646, {	-- Prisoners of War
					["qg"] = 43458,	-- John J. Keeshan
					["sourceQuests"] = {
						26637,	-- Bravo Company Field Kit: Chloroform
						26636,	-- Bravo Company Field Kit: Camouflage
						26638,	-- Hunting the Hunters
						26640,	-- Unspeakable Atrocities
					},
					["coord"] = { 52.5, 55.4, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Prisoners of War Freed
							["providers"] = {
								{ "i",  60384 },	-- Bravo Company Field Kit
								{ "o", 204441 },	-- Blackrock Holding Pen
								{ "o", 204442 },	-- Blackrock Holding Pen
								{ "o", 204435 },	-- Blackrock Holding Pen
							},
							["coords"] = {
								{ 68.9, 58.8, REDRIDGE_MOUNTAINS },
								{ 69.8, 59.1, REDRIDGE_MOUNTAINS },
								{ 69.0, 60.1, REDRIDGE_MOUNTAINS },
							},
						}),
						i(59261, {	-- Blackrock Holding Pen Key
							["provider"] = { "o", 204437 },	-- Blackrock Key Pouch
							["coord"] = { 69.5, 76.5, REDRIDGE_MOUNTAINS },
						}),
					},
				}),
				q(92, {	-- Redridge Goulash
					["qg"] = 343,	-- Chef Breanna
					["coord"] = { 22.7, 44.0, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 2296, 5 },	-- Great Goretusk Snout
						{ "i", 1080, 5 },	-- Tough Condor Meat
						{ "i", 1081, 5 },	-- Crisp Spider Meat
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						i(1082),	-- Redridge Goulash
						i(2699),	-- Recipe: Redridge Goulash (RECIPE!)
					},
				}),
				q(26570, {	-- Render's Army
					["qg"] = 382,	-- Marshal Marris
					["sourceQuest"] = 26568,	-- This Ain't My War
					["coord"] = { 29.7, 44.5, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/25 Blackrock Orcs of Alther's Mill or Render's Camp slain
							["providers"] = {
								{ "n", 437 },	-- Blackrock Renegade
								{ "n", 615 },	-- Blackrock Tracker
								{ "n", 4064 },	-- Blackrock Scout
								{ "n", 4463 },	-- Blackrock Summoner
								{ "n", 43327},	-- Murdunk
								{ "n", 43329},	-- Homurk
								{ "n", 43350},	-- Utroka the Keymistress
							},
							["coord"] = { 28.2, 13, REDRIDGE_MOUNTAINS },
						}),
					},
				}),
				q(347, {	-- Rethban Ore
					["qg"] = 341,	-- Foreman Oslow
					["sourceQuest"] = 345,	-- Ink Supplies (Elwynn Forest)
					["coord"] = { 32.2, 48.6, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 2798, 5 } },	-- Rethban Ore
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(26563, {	-- Return of the Bravo Company
					["qg"] = 43302,	-- Danforth
					["sourceQuest"] = 26562,	-- And Last But Not Least... Danforth
					["coord"] = { 28.3, 17.0, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(119, {	-- Return to Verner
					["providers"] = {
						{ "n", 514 },	-- Smith Argus
						{ "i", 1284 },	-- Crate of Horseshoes
					},
					["coord"] = { 41.7, 65.5, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(26520, {	-- Saving Foreman Oslow
					["provider"] = { "o", 204351 },	-- Ettin Control Orb
					["sourceQuest"] = 26519,	-- He Who Controls the Ettins
					["coord"] = { 17.8, 18.6, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Foreman Oslow Saved
							["providers"] = {
								{ "n", 341 },	-- Foreman Oslow
								{ "i", 58895 },	-- Ettin Control Orb
							},
							["coords"] = {
								{ 31.6, 44.6, REDRIDGE_MOUNTAINS },
								{ 24.0, 33.4, REDRIDGE_MOUNTAINS },
							},
							["cr"] = 43094,	-- Canyon Ettin
						}),
						i(60701, {	-- Leverage Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131543, {		-- Leverage Wriststraps
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60700, {	-- Solomon's Gavel
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60702, {	-- Sword of the Falling Sky
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(127, {	-- Selling Fish
					["qg"] = 381,	-- Dockmaster Baren
					["coord"] = { 27.8, 47.2, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/10 Spotted Sunfish
							["provider"] = { "i", 1467 },	-- Spotted Sunfish
							["crs"] = {
								422,	-- Murloc Flesheater
								548,	-- Murloc Minor Tidecaller
								544,	-- Murloc Nightcrawler
								578,	-- Murloc Scout
								1083,	-- Murloc Shorestriker
								545,	-- Murloc Tidecaller
								14270,	-- Squiddic
							},
						}),
						i(3663),	-- Murloc Fin Soup
						i(1322, {	-- Fishliver Oil
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3680),	-- Recipe: Murloc Fin Soup (RECIPE!)
					},
				}),
				q(115, {	-- Shadow Magic
					["qg"] = 382,	-- Marshal Marris
					["coord"] = { 33.4, 49.0, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/3 Midnight Orb
							["provider"] = { "i", 1261 },	-- Midnight Orb
							["coord"] = { 68.6, 57.6, REDRIDGE_MOUNTAINS },
							["cr"] = 436,	-- Blackrock Shadowcaster
						}),
					},
				}),
				q(26692, {	-- Shadowhide Extinction
					["qg"] = 43607,	-- Danforth
					["sourceQuest"] = 26668,	-- Detonation
					["coord"] = { 77.6, 65.3, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Shadowhide Gnoll slain
							["providers"] = {
								{ "n", 429 },	-- Shadowhide Darkweaver
								{ "n", 432 },	-- Shadowhide Brute
								{ "n", 434 },	-- Rabid Shadowhide Gnoll
								{ "n", 579 },	-- Shadowhide Assassin
								{ "n", 431 },	-- Shadowhide Slayer
								{ "n", 433 },	-- Shadowhide Gnoll
								{ "n", 568 },	-- Shadowhide Warrior
							},
							["coord"] = { 70.2, 42, REDRIDGE_MOUNTAINS },
						}),
						i(60719, {	-- Danforth's Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60718, {	-- Shadowhide Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131583, {	-- Shadowhide Footguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26713, {	-- Showdown at Stonewatch
					["qg"] = 43733,	-- Colonel Troteman
					["sourceQuest"] = 26708,	-- AHHHHHHHHHHHH! AHHHHHHHHH!!!
					["coord"] = { 60.6, 36.6, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Tharil'zun slain
							["provider"] = { "n", 486 },	-- Tharil'zun
							["coord"] = { 69.4, 59.8, REDRIDGE_MOUNTAINS },
						}),
						objective(2, {	-- 0/1 Gath'Ilzogg slain
							["provider"] = { "n", 334 },	-- Gath'Ilzogg <Warlord of the Blackrock Clan>
							["coord"] = { 58.6, 55.6, REDRIDGE_MOUNTAINS },
						}),
					},
				}),
				q(91, {	-- Solomon's Law
					["qg"] = 900,	-- Bailiff Conacher
					["coord"] = { 29.6, 44.3, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/10 Shadowhide Pendant
							["provider"] = { "i", 1075 },	-- Shadowhide Pendant
							["crs"] = {
								703,	-- Lieutenant Fangore
								434,	-- Rabid Shadowhide Gnoll
								947,	-- Rohh the Silent
								579,	-- Shadowhide Assassin
								432,	-- Shadowhide Brute
								429,	-- Shadowhide Darkweaver
								433,	-- Shadowhide Gnoll
								431,	-- Shadowhide Slayer
								568,	-- Shadowhide Warrior
							},
						}),
					},
				}),
				q(26503, {	-- Still Assessing the Threat
					["qg"] = 464,	-- Watch Captain Parker
					["sourceQuests"] = {
						26365,	-- Hero's Call: Redridge Mountains! (From NPCs)
						28563,	-- Hero's Call: Redridge Mountains!
					},
					["coord"] = { 15.3, 64.5, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gnoll Battle Plans
							["providers"] = {
								{ "i", 58887 },	-- Gnoll Battle Plans
								{ "o", 204345 },	-- Gnoll Battle Plan
							},
							["coord"] = { 16.3, 55.5, REDRIDGE_MOUNTAINS },
						}),
						objective(2, {	-- 0/1 Gnoll Orders
							["providers"] = {
								{ "i", 58888 },	-- Gnoll Orders
								{ "o", 204346 },	-- Gnoll Orders
							},
							["coord"] = { 28.0, 74.8, REDRIDGE_MOUNTAINS },
						}),
						objective(3, {	-- 0/1 Gnoll Strategy Guide
							["providers"] = {
								{ "i", 58889 },	-- Gnoll Strategy Guide
								{ "o", 204347 },	-- Gnoll Strategy Guide
							},
							["coord"] = { 30.5, 62.8, REDRIDGE_MOUNTAINS },
						}),
						i(60687, {	-- Belt of the Sons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60686, {	-- Boots of the Prolific Sire
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131538, {	-- Striders of the Prolific Sire
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60685, {	-- Yowling Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60731, {	-- Message Carrier
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26569, {	-- Surveying Equipment
					["qg"] = 43194,	-- Foreman Oslow
					["sourceQuests"] = {
						26568,	-- This Ain't My War
						26520,	-- Saving Foreman Oslow
					},
					["coord"] = { 29.6, 44.5, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Blackrock Spyglass
							["provider"] = { "i", 58952 },	-- Blackrock Spyglass
							["coord"] = { 41.0, 17.6, REDRIDGE_MOUNTAINS },
							["cr"] = 615,	-- Blackrock Tracker
						}),
						i(60708, {	-- Blackrock Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60707, {	-- Lakeshire Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131556, {	-- Lakeshire Handwraps
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60706, {	-- Sandals of the Neverending Bridge
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(19, {	-- Tharil'zun
					["qg"] = 382,	-- Marshal Marris
					["coord"] = { 33.4, 49.0, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Tharil'zun's Head
							["provider"] = { "i", 1260 },	-- Tharil'zun's Head
							["coord"] = { 68.4, 58.8, REDRIDGE_MOUNTAINS },
							["cr"] = 486,	-- Tharil'zun
						}),
						i(1276, {	-- Fire Hardened Buckler
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6093, {	-- Orc Crusher
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26693, {	-- The Dark Tower
					["qg"] = 43611,	-- John J. Keeshan
					["sourceQuest"] = 26668,	-- Detonation
					["coord"] = { 77.6, 65.5, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Key of Ilgalar
							["provider"] = { "i", 59522 },	-- Key of Ilgalar
							["coord"] = { 67.6, 29.6, REDRIDGE_MOUNTAINS },
							["cr"] = 703,	-- General Fangore
						}),
					},
				}),
				q(89, {	-- The Everstill Bridge
					["qg"] = 341,	-- Foreman Oslow
					["coord"] = { 32.2, 48.6, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/5 Iron Pike
							["provider"] = { "i", 2856 },	-- Iron Pike
							["crs"] = {
								446,	-- Redridge Basher
								426,	-- Redridge Brute
								580,	-- Redridge Drudger
								430,	-- Redridge Mystic
								14271,	-- Ribchaser
							},
						}),
						objective(2, {	-- 0/5 Iron Rivet
							["provider"] = { "i", 1013 },	-- Iron Rivet
							["crs"] = {
								446,	-- Redridge Basher
								426,	-- Redridge Brute
								580,	-- Redridge Drudger
								430,	-- Redridge Mystic
								14271,	-- Ribchaser
							},
						}),
						i(1310, {	-- Smith's Trousers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(1303, {	-- Bridgeworker's Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(1304, {	-- Riding Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26694, {	-- The Grand Magus Doane
					["providers"] = {
						{ "n", 43611 },	-- John J. Keeshan
						{ "i", 59522 },	-- Key of Ilgalar
					},
					["sourceQuest"] = 26693,	-- The Dark Tower
					["coord"] = { 77.6, 65.5, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Grand Magus Doane slain
							["provider"] = { "n", 397 },	-- Grand Magus Doane
							["coord"] = { 71.4, 44.8, REDRIDGE_MOUNTAINS },
						}),
						i(60721, {	-- Shalewind Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131584, {	-- Treacherous Boots
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60720, {	-- Treacherous Treads
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(125, {	-- The Lost Tools
					["qg"] = 341,	-- Foreman Oslow
					["coord"] = { 32.2, 48.7, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Oslow's Toolbox
							["providers"] = {
								{ "i", 1309 },	-- Oslow's Toolbox
								{ "o", 32 },	-- Sunken Chest
							},
							["coord"] = { 41.5, 54.68, REDRIDGE_MOUNTAINS },
						}),
						i(2313),	-- Medium Armor Kit
					},
				}),
				q(118, {	-- The Price of Shoes
					["providers"] = {
						{ "n", 415 },	-- Verner Osgood
						{ "i", 1283 },	-- Verner's Notes
					},
					["coord"] = { 31.0, 47.4, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(1699, {	-- The Rethban Gauntlet
					["qg"] = 6166,	-- Yorus Barleybrew
					-- #if AFTER TBC
					["sourceQuests"] = {
						1698,	-- Yorus Barleybrew
						10371,	-- Yorus Barleybrew (Draenei)
					},
					-- #else
					["sourceQuest"] = 1698,	-- Yorus Barleybrew
					-- #endif
					["coord"] = { 26.6, 44.8, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(1702, {	-- The Shieldsmith
					["providers"] = {
						{ "n", 6166 },	-- Yorus Barleybrew
						{ "i", 6843 },	-- Cask of Scalder
					},
					["sourceQuest"] = 1699,	-- The Rethban Gauntlet
					["coord"] = { 26.6, 44.8, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(6970, {	-- Furen's Favor
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(178, {	-- Theocritus' Retrieval
					["providers"] = {
						{ "i", 1962 },	-- Glowing Shadowhide Pendant
						{ "i", 1956 },	-- Faded Shadowhide Pendant
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						i(1970),	-- Restoring Balm
					},
				}),
				q(26607, {	-- They Drew First Blood
					["providers"] = {
						{ "n", 43221 },	-- Colonel Troteman
						{ "i", 59061 },	-- Keeshan's Possessions
					},
					["sourceQuests"] = {
						26573,	-- His Heart Must Be In It
						26563,	-- Return of the Bravo Company
					},
					["coord"] = { 28.6, 40.7, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26544, {	-- They've Wised Up...
					["qg"] = 344,	-- Magistrate Solomon
					["sourceQuest"] = 26514,	-- Canyon Romp
					["coord"] = { 28.9, 41.1, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Blackrock Orc Missive
							["provider"] = { "i", 58936 },	-- Blackrock Orc Missive
							["coord"] = { 19.2, 23.4, REDRIDGE_MOUNTAINS },
							["cr"] = 43185,	-- Blackrock Overseer
						}),
					},
				}),
				q(26568, {	-- This Ain't My War
					["qg"] = 43184,	-- John J. Keeshan
					["sourceQuest"] = 26567,	-- John J. Keeshan
					["coord"] = { 26.3, 40.1, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26651, {	-- To Win a War, You Gotta Become War
					["qg"] = 43458,	-- John J. Keeshan
					["sourceQuest"] = 26646,	-- Prisoners of War
					["coord"] = { 52.5, 55.3, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Seaforium Planted at Munitions Hut
							["provider"] = { "i", 60385 },	-- Bravo Company Field Kit
							["coord"] = { 63.8, 70.5, REDRIDGE_MOUNTAINS },
						}),
						objective(2, {	-- Seaforium Planted at Munitions Hut
							["provider"] = { "i", 60385 },	-- Bravo Company Field Kit
							["coord"] = { 66.4, 71.5, REDRIDGE_MOUNTAINS },
						}),
					},
				}),
				q(26726, {	-- Triumphant Return
					["qg"] = 43733,	-- Colonel Troteman
					["sourceQuest"] = 26714,	-- Darkblaze, Brood of the Worldbreaker
					["coord"] = { 60.6, 36.6, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(60734, {	-- Keeshan's Bandana
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60727, {	-- Keeshan's Bow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60726, {	-- Keeshan's Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60730, {	-- Bravo Company Signet
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26512, {	-- Tuning the Gnomecorder
					["qg"] = 344,	-- Magistrate Solomon
					["sourceQuest"] = 26510,	-- We Must Prepare!
					["coord"] = { 28.9, 41.1, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(122, {	-- Underbelly Scales
					["qg"] = 415,	-- Verner Osgood
					["coord"] = { 31.0, 47.4, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/6 Underbelly Whelp Scale
							["provider"] = { "i", 1221 },	-- Underbelly Whelp Scale
							["crs"] = {
								14272,	-- Snarlflare
								441,	-- Black Dragon Whelp
							},
						}),
						i(6092, {	-- Black Whelp Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(1302, {	-- Black Whelp Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26640, {	-- Unspeakable Atrocities
					["providers"] = {
						{ "n", 43508 },	-- Brubaker
						{ "i", 59157 },	-- Brubaker's Report
					},
					["sourceQuest"] = 26639,	-- Point of Contact: Brubaker
					["coord"] = { 53.0, 67.8, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(130, {	-- Visit the Herbalist
					["qg"] = 464,	-- Guard Parker
					["sourceQuest"] = 129,	-- A Free Lunch
					["coord"] = { 17.3, 69.5, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(169, {	-- Wanted: Gath'Ilzogg
					["provider"] = { "o", 60 },	-- Wanted: Gath'Ilzogg
					["coord"] = { 29.6, 46.2, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Gath'Ilzogg
							["provider"] = { "i", 3633 },	-- Head of Gath'Ilzogg
							["coord"] = { 69.6, 55.8, REDRIDGE_MOUNTAINS },
							["cr"] = 334,	-- Gath'Ilzogg <Warlord of the Blackrock Clan>
						}),
					},
				}),
				q(180, {	-- Wanted: Lieutenant Fangore
					["provider"] = { "o", 47 },	-- Wanted: Lieutenant Fangore
					["coord"] = { 26.7, 46.5, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Fangore's Paw
							["provider"] = { "i", 3632 },	-- Fangore's Paw
							["coord"] = { 80.0, 39.0, REDRIDGE_MOUNTAINS },
							["cr"] = 703,	-- Lieutenant Fangore
						}),
					},
				}),
				q(26504, {	-- Wanted: Redridge Gnolls
					["provider"] = { "o", 204344 },	-- Wanted!
					["coord"] = { 16.0, 64.6, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Redridge Gnoll slain
							["providers"] = {
								{ "n", 423 },	-- Redridge Mongrel
								{ "n", 426 },	-- Redridge Brute
								{ "n", 712 },	-- Redridge Thrasher
							},
							["coord"] = { 17.2, 58.0, REDRIDGE_MOUNTAINS },
						}),
						i(60684, {	-- Royal Guard Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60683, {	-- Tower Watch Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60682, {	-- Watch Captain's Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26510, {	-- We Must Prepare!
					["qg"] = 344,	-- Magistrate Solomon
					["coord"] = { 28.9, 41.1, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gnomecorder
							["providers"] = {
								{ "i", 58894 },	-- Gnomecorder
								{ "o", 204350 },	-- Gnomecorder
							},
							["coord"] = { 37.8, 42.5, REDRIDGE_MOUNTAINS },
						}),
					},
				}),
				q(26571, {	-- Weapons of War
					["qg"] = 43221,	-- Colonel Troteman
					["sourceQuest"] = 26568,	-- This Ain't My War
					["coord"] = { 28.6, 40.7, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Keeshan's Bow
							["provider"] = { "i", 58953 },	-- Keeshan's Bow
							["coord"] = { 51.6, 40.8, REDRIDGE_MOUNTAINS },
							["cr"] = 43327,	-- Murdunk
						}),
						objective(2, {	-- 0/1 Keeshan's Survival Knife
							["provider"] = { "i", 58954 },	-- Keeshan's Survival Knife
							["coord"] = { 51.6, 41.2, REDRIDGE_MOUNTAINS },
							["cr"] = 43329,	-- Homurk
						}),
					},
				}),
				q(1698, {	-- Yorus Barleybrew
					["qgs"] = {
						5479,	-- Wu Shen <Warrior Trainer>
						7315,	-- Darnath Bladesigner <Warrior Trainer>
					},
					["coords"] = {
						{ 48.6, 35.6, DARNASSUS },
						{ 78.8, 45.6, STORMWIND_CITY },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = exclude(DRAENEI, ALLIANCE_ONLY),
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(10371, {	-- Yorus Barleybrew (Draenei)
					["qg"] = 16771,	-- Ahonan
					["coord"] = { 55.0, 83.4, THE_EXODAR },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = { DRAENEI },
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(26545, {	-- Yowler Must Die!
					["qg"] = 344,	-- Magistrate Solomon
					["sourceQuest"] = 26544,	-- They've Wised Up...
					["coord"] = { 28.9, 41.1, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Yowler slain
							["provider"] = { "n", 518 },	-- Yowler
							["coord"] = { 27.0, 22.4, REDRIDGE_MOUNTAINS },
						}),
						objective(2, {	-- Blackrock Invasion Plans
							["provider"] = { "i", 58937 },	-- Blackrock Invasion Plans
						}),
						i(60703, {	-- Escalation Britchers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60705, {	-- Legguards of Invasion
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131552, {	-- Mongrel Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60704, {	-- Mongrel Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
			}),
			n(RARES, {
				n(14273, {  -- Boulderheart
					["coords"] = {
						-- #if AFTER CATA
						{ 56.6, 51.6, REDRIDGE_MOUNTAINS },
						-- #else
						{ 88.8, 67.0, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				n(616, {  -- Chatter
					["coords"] = {
						-- #if AFTER CATA
						{ 38.2, 35.8, REDRIDGE_MOUNTAINS },
						-- #else
						{ 51.2, 37.2, REDRIDGE_MOUNTAINS },
						{ 56.0, 41.4, REDRIDGE_MOUNTAINS },
						{ 58.6, 41.0, REDRIDGE_MOUNTAINS },
						{ 57.8, 49.8, REDRIDGE_MOUNTAINS },
						{ 53.6, 48.6, REDRIDGE_MOUNTAINS },
						{ 49.2, 41.8, REDRIDGE_MOUNTAINS },
						-- #endif
					},
					["groups"] = {
						i(3229, {	-- Tarantula Silk Sash
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(52146, {	-- Chitter
					["coord"] = { 63.8, 65.2, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_1_0 },
					-- #if AFTER 10.1.7
					["groups"] = {
						i(3229, {	-- Tarantula Silk Sash
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
					-- #endif
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(214456, {	-- Dro'zem the Blasphemous
					["coords"] = {
						{ 34.8, 7.6, REDRIDGE_MOUNTAINS },
						{ 63.6, 42.4, REDRIDGE_MOUNTAINS },
						{ 78.4, 72.8, REDRIDGE_MOUNTAINS },
						{ 76.2, 83.4, REDRIDGE_MOUNTAINS },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["groups"] = {
						i(211488, {	-- Rune of the Avenger
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { PALADIN },
							["groups"] = {
								recipe(410008),	-- Engrave Pants - Avenger's Shield
							},
						}),
					},
				})),
				-- #endif
				n(147222, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {	-- Gnollfeaster
					["coord"] = { 24.4, 70.9, REDRIDGE_MOUNTAINS },
					["questID"] = 54214,
					["isDaily"] = true,
					["groups"] = {
						i(165722),	-- Redridge Tarantula (PET!)
					},
				})),
				n(584, {  -- Kazon
					["coords"] = {
						-- #if AFTER CATA
						{ 34.8, 12.2, REDRIDGE_MOUNTAINS },
						-- #else
						{ 33.0, 6.6, REDRIDGE_MOUNTAINS },
						{ 36.0, 8.6, REDRIDGE_MOUNTAINS },
						{ 36.6, 11.6, REDRIDGE_MOUNTAINS },
						{ 38.4, 13.6, REDRIDGE_MOUNTAINS },
						{ 42.4, 15.4, REDRIDGE_MOUNTAINS },
						-- #endif
					},
					["groups"] = {
						i(3231, {	-- Cutthroat Pauldrons
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(2058, {	-- Kazon's Maul
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(214519, {	-- Incinerator Gar'im
					["coord"] = { 77.8, 86.2, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_2_0_1 },
					["groups"] = {
						i(211477, {	-- Rune of Incinerate
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { WARLOCK },
							["groups"] = {
								recipe(416015),	-- Engrave Pants - Incinerate
							},
						}),
					},
				})),
				-- #endif
				n(14271, {	-- Ribchaser
					["coords"] = {
						-- #if AFTER CATA
						{ 30.0, 57.6, REDRIDGE_MOUNTAINS },
						{ 30.0, 60.2, REDRIDGE_MOUNTAINS },
						{ 29.6, 64.2, REDRIDGE_MOUNTAINS },
						-- #else
						{ 16.2, 60.6, REDRIDGE_MOUNTAINS },
						{ 14.0, 64.2, REDRIDGE_MOUNTAINS },
						{ 18.8, 64.8, REDRIDGE_MOUNTAINS },
						{ 16.0, 67.2, REDRIDGE_MOUNTAINS },
						{ 28.4, 84.0, REDRIDGE_MOUNTAINS },
						{ 32.6, 78.8, REDRIDGE_MOUNTAINS },
						{ 33.6, 84.8, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				n(947, {  -- Rohh the Silent
					-- #if AFTER CATA
					["description"] = "This is a stealthed mob. You can target it with the macro '/tar Rohh'.",
					-- #endif
					["coords"] = {
						-- #if AFTER CATA
						{ 68.0, 35.6, REDRIDGE_MOUNTAINS },
						-- #else
						{ 76.0, 29.4, REDRIDGE_MOUNTAINS },
						{ 76.0, 34.2, REDRIDGE_MOUNTAINS },
						{ 73.0, 41.6, REDRIDGE_MOUNTAINS },
						{ 78.0, 40.4, REDRIDGE_MOUNTAINS },
						{ 76.4, 38.6, REDRIDGE_MOUNTAINS },
						{ 83.0, 47.8, REDRIDGE_MOUNTAINS },
						{ 80.2, 48.6, REDRIDGE_MOUNTAINS },
						{ 83.2, 51.0, REDRIDGE_MOUNTAINS },
						{ 83.4, 57.6, REDRIDGE_MOUNTAINS },
						-- #endif
					},
					["groups"] = {
						i(4446, {	-- Blackvenom Blade
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(4447, {	-- Cloak of Night
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(14269, {	-- Seeker Aqualon
					["coords"] = {
						-- #if AFTER CATA
						{ 71.0, 55.0, REDRIDGE_MOUNTAINS },
						-- #else
						{ 46.2, 59.6, REDRIDGE_MOUNTAINS },
						{ 50.2, 61.4, REDRIDGE_MOUNTAINS },
						{ 28.2, 58.2, REDRIDGE_MOUNTAINS },
						{ 63.6, 62.6, REDRIDGE_MOUNTAINS },
						{ 71.6, 64.6, REDRIDGE_MOUNTAINS },
						{ 75.8, 67.4, REDRIDGE_MOUNTAINS },
						{ 73.2, 71.2, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				n(14272, {	-- Snarlflare
					["coords"] = {
						-- #if AFTER CATA
						{ 34.0, 57.0, REDRIDGE_MOUNTAINS },
						-- #else
						{ 36.4, 66.8, REDRIDGE_MOUNTAINS },
						{ 43.4, 30.0, REDRIDGE_MOUNTAINS },
						{ 49.2, 33.0, REDRIDGE_MOUNTAINS },
						{ 54.6, 37.2, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				n(14270, {	-- Squiddic
					["coords"] = {
						-- #if AFTER CATA
						{ 37.4, 42.6, REDRIDGE_MOUNTAINS },
						-- #else
						{ 42.8, 52.8, REDRIDGE_MOUNTAINS },
						{ 39.0, 60.8, REDRIDGE_MOUNTAINS },
						{ 46.0, 63.4, REDRIDGE_MOUNTAINS },
						{ 52.6, 67.6, REDRIDGE_MOUNTAINS },
						{ 54.6, 60.0, REDRIDGE_MOUNTAINS },
						{ 47.6, 54.4, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
			}),
			-- #if BEFORE 4.0.3
			prof(SKINNING, {
				["crs"] = {
					441,	-- Black Dragon Whelp
					14272,	-- Snarlflare
				},
				["groups"] = {
					i(7286),	-- Black Whelp Scale
				},
			}),
			-- #endif
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, i(209873, {	-- Dragonslayer's Shield
					["provider"] = { "o", 409754 },	-- Wall-Mounted Shield
					["coord"] = { 69.8, 55.8, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(777, {	-- Amy Davenport <Tradeswoman>
					["coords"] = {
						-- #if AFTER CATA
						{ 28.0, 43.6, REDRIDGE_MOUNTAINS },
						-- #else
						{ 29.0, 47.6, REDRIDGE_MOUNTAINS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(20576, {	-- Pattern: Black Whelp Tunic (RECIPE!)
							["isLimited"] = true,
						}),
						i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				-- #if BEFORE 4.0.3
				n(3097, {	-- Bernard Brubaker <Leather Armor Merchant>
					["coord"] = { 88.2, 71.6, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4795, {	-- Bear Bracers
							["isLimited"] = true,
						}),
						i(4796, {	-- Owl Bracers
							["isLimited"] = true,
						}),
						i(4794, {	-- Wolf Bracers
							["isLimited"] = true,
						}),
					},
				}),
				n(3096, {	-- Captured Servant of Azora <Specialist Tailoring Supplies>
					["coord"] = { 74.5, 79.6, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- No longer sells any of this stuff after 4.0.3
						i(4790, {	-- Inferno Cloak
							["isLimited"] = true,
						}),
						i(4792, {	-- Spirit Cloak
							["isLimited"] = true,
						}),
						i(4793, {	-- Sylvan Cloak
							["isLimited"] = true,
						}),
					},
				}),
				-- #endif
				n(2697, {	-- Clyde Ranthal <Leatherworking Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 78.8, 63.5, REDRIDGE_MOUNTAINS },
						-- #else
						{ 89.0, 70.2, REDRIDGE_MOUNTAINS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7289, {	-- Pattern: Black Whelp Cloak (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(956, {	-- Dorin Songblade <Armorer>
					["coords"] = {
						-- #if AFTER CATA
						{ 29.7, 42.9, REDRIDGE_MOUNTAINS },
						-- #else
						{ 30.8, 46.6, REDRIDGE_MOUNTAINS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						1853,	-- Scalemail Belt
						287,	-- Scalemail Boots
						1852,	-- Scalemail Bracers
						718,	-- Scalemail Gloves
						286,	-- Scalemail Pants
						285,	-- Scalemail Vest
					}},
				}),
				n(3091, {	-- Franklin Hamar <Tailoring Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 26.5, 42.0, REDRIDGE_MOUNTAINS },
						-- #else
						{ 27.2, 45.4, REDRIDGE_MOUNTAINS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4782, {	-- Solstice Robe
							["isLimited"] = true,
						}),
						i(4781, {	-- Whispering Vest
							["isLimited"] = true,
						}),
						i(4786, {	-- Wise Man's Belt
							["isLimited"] = true,
						}),
					},
				}),
				-- #if AFTER 4.0.3
				n(3090, {	-- Gerald Crawley <Poison Supplies>
					["coord"] = { 24.8, 38.3, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						4565,	-- Simple Dagger
					}},
				}),
				-- #endif
				n(3085, {	-- Gloria Femmel <Cooking Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 26.1, 40.3, REDRIDGE_MOUNTAINS },
						-- #else
						{ 26.7, 43.6, REDRIDGE_MOUNTAINS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(3088, {	-- Henry Chapal <Gunsmith>
					["coords"] = {
						-- #if AFTER CATA
						{ 23.7, 38.5, REDRIDGE_MOUNTAINS },
						-- #else
						{ 23.8, 41.4, REDRIDGE_MOUNTAINS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2511,	-- Hunter's Boomstick
						3023,	-- Large Bore Blunderbuss
					}},
				}),
				n(793, {	-- Kara Adams <Shield Crafter>
					["coords"] = {
						-- #if AFTER CATA
						{ 29.4, 42.9, REDRIDGE_MOUNTAINS },
						-- #else
						{ 30.6, 46.6, REDRIDGE_MOUNTAINS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2445,	-- Large Metal Shield
						17188,	-- Ringed Buckler
					}},
					["groups"] = {
						i(4821, {	-- Bear Buckler
							["isLimited"] = true,
						}),
						i(4820, {	-- Guardian Buckler
							["isLimited"] = true,
						}),
						i(4822, {	-- Owl's Disk
							["isLimited"] = true,
						}),
					},
				}),
				-- #if AFTER 4.0.3
				n(789, {	-- Kimberly Hiett <Bowyer>
					["coord"] = { 26.4, 42.0, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2507,	-- Laminated Recurve Bow
						3026,	-- Reinforced Bow
					}},
				}),
				-- #endif
			}),
			n(ZONE_DROPS, {
				i(1446, {	-- Blackrock Boots
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						4463,	-- Blackrock Summoner
						-- #else
						440,	-- Blackrock Grunt
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 38.6, 13.6, REDRIDGE_MOUNTAINS },	-- Blackrock Summoner
						{ 34.4, 10.0, REDRIDGE_MOUNTAINS },	-- Blackrock Summoner
						{ 28.0, 15.4, REDRIDGE_MOUNTAINS },	-- Blackrock Summoner
						-- #else
						{ 41.4, 39.8, REDRIDGE_MOUNTAINS },	-- Blackrock Grunt
						{ 62.0, 44.0, REDRIDGE_MOUNTAINS },	-- Blackrock Grunt
						{ 74.8, 78.8, REDRIDGE_MOUNTAINS },	-- Blackrock Grunt
						-- #endif
					},
				}),
				i(1455, {	-- Blackrock Champion's Axe
					-- #if AFTER 10.1.7
					["description"] = "This item drops from both Blackrock Renegades & Blackrock Hunters. Renegades might have a higher droprate, but are unavailable for Alliance characters who have completed the 'First Blood' storyline due to phasing.\nPhasing can be circumvented with Party Sync, using an Alliance alt that haven't reached the quest progress trigger for this phasing, or using a Horde alt.",
					-- #endif
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						437,	-- Blackrock Renegade
						4462,	-- Blackrock Hunter
						-- #else
						435,	-- Blackrock Champion
						4464,	-- Blackrock Gladiator
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 54.4, 37.2, REDRIDGE_MOUNTAINS },
						{ 50.2, 42.8, REDRIDGE_MOUNTAINS },
						{ 48.6, 34.2, REDRIDGE_MOUNTAINS },
						{ 46.6, 38.6, REDRIDGE_MOUNTAINS },
						{ 44.2, 31.0, REDRIDGE_MOUNTAINS },
						{ 42.2, 34.8, REDRIDGE_MOUNTAINS },
						-- Hunter
						{ 54.4, 68.2, REDRIDGE_MOUNTAINS },
						{ 50.6, 68.0, REDRIDGE_MOUNTAINS },
						{ 50.6, 61.6, REDRIDGE_MOUNTAINS },
						{ 40.2, 68.4, REDRIDGE_MOUNTAINS },
						-- #else
						{ 35.6, 9.6, REDRIDGE_MOUNTAINS },
						{ 28.6, 14.6, REDRIDGE_MOUNTAINS },
						{ 69.6, 57.4, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(1448, {	-- Blackrock Gauntlets
					-- #if AFTER 10.1.7
					["description"] = "This item only drops from Blackrock Scouts, which are unavailable for Alliance characters who have completed the 'First Blood' storyline due to phasing.\nPhasing can be circumvented with Party Sync, using an Alliance alt that haven't reached the quest progress trigger for this phasing, or using a Horde alt.",
					-- #endif
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						4064,	-- Blackrock Scout
						-- #if BEFORE 4.0.3
						485,	-- Blackrock Outrunner
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 52.6, 41.2, REDRIDGE_MOUNTAINS },
						{ 49.0, 42.6, REDRIDGE_MOUNTAINS },
						{ 44.6, 36.6, REDRIDGE_MOUNTAINS },
						-- #else
						{ 65.6, 48.8, REDRIDGE_MOUNTAINS },
						{ 67.0, 59.0, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(1296, {	-- Blackrock Mace
					-- #if AFTER 10.1.7
					["description"] = "This item only drops from Blackrock Renegades, which are unavailable for Alliance characters who have completed the 'First Blood' storyline due to phasing.\nPhasing can be circumvented with Party Sync, using an Alliance alt that haven't reached the quest progress trigger for this phasing, or using a Horde alt.",
					-- #endif
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						437,	-- Blackrock Renegade
						4065,	-- Blackrock Sentry
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 52.6, 41.4, REDRIDGE_MOUNTAINS },
						{ 48.6, 34.2, REDRIDGE_MOUNTAINS },
						{ 44.0, 33.2, REDRIDGE_MOUNTAINS },
						-- #else
						{ 78.6, 71.6, REDRIDGE_MOUNTAINS },
						{ 62.6, 45.6, REDRIDGE_MOUNTAINS },
						{ 46.0, 18.4, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(1445, {	-- Blackrock Pauldrons
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						{ 39.4, 14.8, REDRIDGE_MOUNTAINS },
						{ 35.4, 8.6, REDRIDGE_MOUNTAINS },
						{ 28.6, 14.4, REDRIDGE_MOUNTAINS },
					},
					["crs"] = {
						615,	-- Blackrock Tracker
						-- #if BEFORE 4.0.3
						4462,	-- Blackrock Hunter
						-- #endif
					},
				}),
				i(58898, {	-- Dirt-Stained Scroll
					["description"] = "Once obtained, Quest from this item has to be completed. It can't be abandoned.",
					["sourceQuest"] = 26512,	-- Tuning the Gnomecorder
					["timeline"] = { ADDED_4_0_3 },
					["crs"] = {
						445,	-- Redridge Alpha
						446,	-- Redridge Basher
						580,	-- Redridge Drudger
						430,	-- Redridge Mystic
					},
				}),
				i(1287, {	-- Giant Tarantula Fang
					["cr"] = 442,	-- Tarantula
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						{ 28.4, 78.8, REDRIDGE_MOUNTAINS },
						{ 15.2, 76.2, REDRIDGE_MOUNTAINS },
					},
				}),
				i(1962, {	-- Glowing Shadowhide Pendant
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						703,	-- Lieutenant Fangore
						434,	-- Rabid Shadowhide Gnoll
						947,	-- Rohh the Silent
						579,	-- Shadowhide Assassin
						432,	-- Shadowhide Brute
						429,	-- Shadowhide Darkweaver
						433,	-- Shadowhide Gnoll
						431,	-- Shadowhide Slayer
						568,	-- Shadowhide Warrior
					},
				}),
				-- #if BEFORE 4.0.3
				i(723, {	-- Goretusk Liver
					["crs"] = {
						345,	-- Bellygrub
						547,	-- Great Goretusk
					},
				}),
				-- #endif
				i(1213, {	-- Gnoll Kindred Bracers
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 712,	-- Redridge Thrasher
					["coords"] = {
						{ 17.8, 59.6, REDRIDGE_MOUNTAINS },
						{ 28.8, 81.6, REDRIDGE_MOUNTAINS },
						-- #if AFTER 10.1.7
						{ 30.0, 73.4, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(1214, {	-- Gnoll Punisher
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						14271,	-- Ribchaser
						426,	-- Redridge Brute
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 30.8, 61.4, REDRIDGE_MOUNTAINS },
						{ 30.8, 73.8, REDRIDGE_MOUNTAINS },
						{ 18.6, 60.0, REDRIDGE_MOUNTAINS },
						-- #else
						{ 17.4, 64.4, REDRIDGE_MOUNTAINS },
						{ 31.0, 82.2, REDRIDGE_MOUNTAINS },
						{ 39.0, 33.0, REDRIDGE_MOUNTAINS },
						{ 24.0, 38.6, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(1440, {	-- Gnoll Skull Basher
					["cr"] = 446,	-- Redridge Basher
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						{ 38.2, 31.6, REDRIDGE_MOUNTAINS },
						{ 27.2, 36.8, REDRIDGE_MOUNTAINS },
						{ 21.6, 35.0, REDRIDGE_MOUNTAINS },
						{ 31.0, 21.6, REDRIDGE_MOUNTAINS },
						{ 24.4, 24.4, REDRIDGE_MOUNTAINS },
						{ 19.0, 16.6, REDRIDGE_MOUNTAINS },
					},
				}),
				i(1211, {	-- Gnoll War Harness
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 423,	-- Redridge Mongrel
					["coords"] = {
						{ 30.6, 62.6, REDRIDGE_MOUNTAINS },
						{ 30.0, 71.6, REDRIDGE_MOUNTAINS },
						{ 17.8, 57.8, REDRIDGE_MOUNTAINS },
					},
				}),
				-- #if BEFORE 4.0.3
				i(2296, {	-- Great Goretusk Snout
					["crs"] = {
						345,	-- Bellygrub
						547,	-- Great Goretusk
					},
				}),
				-- #endif
				i(1218, {	-- Heavy Gnoll War Club
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						580,	-- Redridge Drudger
						-- #else
						445,	-- Redridge Alpha
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 37.4, 30.8, REDRIDGE_MOUNTAINS },
						{ 31.2, 21.6, REDRIDGE_MOUNTAINS },
						{ 29.8, 37.4, REDRIDGE_MOUNTAINS },
						{ 24.6, 31.0, REDRIDGE_MOUNTAINS },
						{ 23.0, 19.0, REDRIDGE_MOUNTAINS },
						{ 20.0, 23.8, REDRIDGE_MOUNTAINS },
						-- #else
						{ 28.6, 22.2, REDRIDGE_MOUNTAINS },
						{ 18.6, 16.4, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(1299, {	-- Lesser Belt of the Spire
					-- #if AFTER 10.1.7
					["description"] = "This item only drops from Blackrock Warden, which are unavailable for Alliance characters who have completed the quest 'Detonation' due to phasing.\nPhasing can be circumvented with Party Sync, using an Alliance alt that haven't reached the quest progress trigger for this phasing, or using a Horde alt.",
					-- #endif
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						436,	-- Blackrock Shadowcaster
						-- #if AFTER 10.1.7
						43535,	-- Blackrock Warden
						-- #endif
					},
					["coords"] = {
						{ 59.2, 43.2, REDRIDGE_MOUNTAINS },
						{ 60.0, 50.6, REDRIDGE_MOUNTAINS },
						-- #if AFTER 10.1.7
						{ 68.6, 65.6, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(1300, {	-- Lesser Staff of the Spire
					-- #if AFTER 10.1.7
					["description"] = "This item only drops from Blackrock Warden, which are unavailable for Alliance characters who have completed the quest 'Detonation' due to phasing.\nPhasing can be circumvented with Party Sync, using an Alliance alt that haven't reached the quest progress trigger for this phasing, or using a Horde alt.",
					-- #endif
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						436,	-- Blackrock Shadowcaster
						-- #if AFTER 10.1.7
						43535,	-- Blackrock Warden
						-- #endif
					},
					["coords"] = {
						{ 59.2, 43.2, REDRIDGE_MOUNTAINS },
						{ 60.0, 50.6, REDRIDGE_MOUNTAINS },
						-- #if AFTER 10.1.7
						{ 68.6, 65.6, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(1220, {	-- Lupine Axe
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 580,	-- Redridge Drudger
					["coords"] = {
						{ 23.0, 19.0, REDRIDGE_MOUNTAINS },
						{ 20.0, 23.8, REDRIDGE_MOUNTAINS },
					},
				}),
				i(1406, {	-- Pearl-encrusted Spear / Pearl-Encrusted Spear
					["cr"] = 544,	-- Murloc Nightcrawler
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 76.0, 54.0, REDRIDGE_MOUNTAINS },
						{ 72.4, 54.8, REDRIDGE_MOUNTAINS },
						{ 72.0, 59.6, REDRIDGE_MOUNTAINS },
						-- #else
						{ 80.4, 58.4, REDRIDGE_MOUNTAINS },
						{ 81.0, 70.0, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(211530, {	-- Prophecy of a City Enthralled
					["coord"] = { 67.4, 56.0, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PRIEST },
					["cr"] = 436,	-- Blackrock Shadowcaster
					["groups"] = {
						recipe(425213),	-- Engrave Pants - Power Word: Barrier
					},
				})),
				-- #endif
				i(2700, {	-- Recipe: Succulent Pork Ribs (RECIPE!)
					["description"] = "Has a chance to drop from any creature in the zone.",
				}),
				i(1219, {	-- Redridge Machete
					["cr"] = 424,	-- Redridge Poacher
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 40.6, 66.0, REDRIDGE_MOUNTAINS },
						{ 39.0, 65.0, REDRIDGE_MOUNTAINS },
						-- #else
						{ 44.0, 72.8, REDRIDGE_MOUNTAINS },
						{ 32.2, 82.6, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(2798, {	-- Rethban Ore
					-- #if AFTER 4.0.3
					["description"] = "Quest, for which this Ore was an objective, has been made obsolete at the release of Cataclysm expansion.\nAs it has no use, it is safe to be destroyed or sold to a vendor.",
					-- #endif
					["cr"] = 580,	-- Redridge Drudger
				}),
				i(1462, {	-- Ring of the Shadow
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 429,	-- Shadowhide Darkweaver
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 70.4, 40.6, REDRIDGE_MOUNTAINS },
						{ 71.4, 48.6, REDRIDGE_MOUNTAINS },
						{ 76.2, 53.0, REDRIDGE_MOUNTAINS },
						-- #else
						{ 76.6, 43.6, REDRIDGE_MOUNTAINS },
						{ 80.0, 49.6, REDRIDGE_MOUNTAINS },
						{ 82.4, 55.2, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(1473, {	-- Riverside Staff
					["cr"] = 545,	-- Murloc Tidecaller
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 51.4, 50.0, REDRIDGE_MOUNTAINS },
						{ 49.6, 51.6, REDRIDGE_MOUNTAINS },
						-- #else
						{ 56.4, 49.0, REDRIDGE_MOUNTAINS },
						{ 81.0, 63.6, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(2566, {	-- Sacrificial Robes
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if BEFORE 4.0.3
						397,	-- Morganth / Grand Magus Doane [CATA+]
						-- #elseif AFTER 10.1.7
						429,	-- Shadowhide Darkweaver
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 70.4, 40.6, REDRIDGE_MOUNTAINS },
						{ 70.6, 45.2, REDRIDGE_MOUNTAINS },
						{ 76.2, 53.0, REDRIDGE_MOUNTAINS },
						-- #else
						{ 80.0, 49.6, REDRIDGE_MOUNTAINS },	-- Morganth
						-- #endif
					},
				}),
				i(1469, {	-- Scimitar of Atun
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						578,	-- Murloc Scout
						-- #if BEFORE 4.0.3
						14270,	-- Squiddic
						-- #endif
					},
					["coords"] = {
						{ 37.8, 41.4, REDRIDGE_MOUNTAINS },
						{ 36.4, 43.8, REDRIDGE_MOUNTAINS },
						-- #if BEFORE 4.0.3
						{ 57.8, 51.8, REDRIDGE_MOUNTAINS },
						{ 41.8, 48.2, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(2175, {	-- Shadowhide Battle Axe
					["cr"] = 568,	-- Shadowhide Warrior
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 71.4, 36.6, REDRIDGE_MOUNTAINS },
						{ 71.4, 43.8, REDRIDGE_MOUNTAINS },
						{ 75.4, 50.6, REDRIDGE_MOUNTAINS },
						-- #else
						{ 81.8, 38.2, REDRIDGE_MOUNTAINS },
						{ 77.8, 44.4, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(1457, {	-- Shadowhide Mace
					["cr"] = 433,	-- Shadowhide Gnoll
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						{ 66.8, 48.2, REDRIDGE_MOUNTAINS },
						{ 68.6, 44.4, REDRIDGE_MOUNTAINS },
						{ 66.2, 41.6, REDRIDGE_MOUNTAINS },
					},
				}),
				i(1458, {	-- Shadowhide Maul
					["cr"] = 432,	-- Shadowhide Brute
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 70.0, 35.2, REDRIDGE_MOUNTAINS },
						{ 70.8, 38.6, REDRIDGE_MOUNTAINS },
						{ 68.2, 44.0, REDRIDGE_MOUNTAINS },
						-- #else
						{ 82.0, 38.8, REDRIDGE_MOUNTAINS },
						{ 75.4, 46.0, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(1459, {	-- Shadowhide Scalper
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						429,	-- Shadowhide Darkweaver
						-- #else
						579,	-- Shadowhide Assassin
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 71.2, 40.4, REDRIDGE_MOUNTAINS },
						{ 66.8, 42.2, REDRIDGE_MOUNTAINS },
						{ 70.6, 49.6, REDRIDGE_MOUNTAINS },
						{ 70.4, 40.6, REDRIDGE_MOUNTAINS },
						{ 70.6, 45.2, REDRIDGE_MOUNTAINS },
						{ 76.2, 53.0, REDRIDGE_MOUNTAINS },
						-- #else
						{ 80.6, 48.8, REDRIDGE_MOUNTAINS },
						{ 79.2, 40.6, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(1460, {	-- Shadowhide Two-handed Sword / Shadowhide Two-Handed Sword
					["cr"] = 434,	-- Rabid Shadowhide Gnoll
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 67.8, 40.4, REDRIDGE_MOUNTAINS },
						{ 69.0, 48.8, REDRIDGE_MOUNTAINS },
						{ 67.2, 46.0, REDRIDGE_MOUNTAINS },
						-- #else
						{ 74.2, 44.6, REDRIDGE_MOUNTAINS },
						{ 72.6, 51.2, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(1461, {	-- Slayer's Battle Axe
					["cr"] = 431,	-- Shadowhide Slayer
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 72.6, 44.6, REDRIDGE_MOUNTAINS },
						{ 74.6, 52.2, REDRIDGE_MOUNTAINS },
						-- #else
						{ 81.6, 48.6, REDRIDGE_MOUNTAINS },
						{ 78.4, 38.2, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				i(1080, {	-- Tough Condor Meat
					["cr"] = 428,	-- Dire Condor
				}),
			}),
		},
	}),
}));
