---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if AFTER CATA
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(THE_CAPE_OF_STRANGLETHORN, {
		["lore"] = "The Cape of Stranglethorn is the southern part of Stranglethorn Vale, now split from the Shattering. It traces the escalating conflict between the goblin pirates of Booty Bay and their rivals, the Bloodsail Buccaneers. The rest of the zone is dotted with troll ruins and sandy beaches.",
		["icon"] = 236844,
		-- #if ANYCLASSIC
		-- CRIEVE NOTE: This is super weird. In Cata Classic they used the retail mapID for STV as the combined STV map.
		-- The only way to get it on the mini list is to fly south from blasted lands or to use the world map button.
		["maps"] = { 224 },
		-- #endif
		["groups"] = {
			n(ACHIEVEMENTS, {
				applyclassicphase(PHASE_ONE, ach(871, {	-- Avast Ye, Admiral!
					["sourceQuest"] = 4621,	-- Avast Ye, Admiral!
					["groups"] = {
						title(111, {	-- Bloodsail Admiral <Name>
							["timeline"] = { ADDED_3_0_2 },
						}),
					},
				})),
				ach(4905, {	-- Cape of Stranglethorn Quests
					["timeline"] = { ADDED_4_0_3 },
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						26814, 26555,	-- High Priest Venoxis (A, H)
						26612,	-- Details of the Attack
						26613,	-- Up to Snuff
						26665,	-- Call of Booty
						26703,	-- Bloodsail's End
					},
					-- #endif
				}),
				explorationAch(4995, {	-- Explore the Cape of Stranglethorn
					["timeline"] = { ADDED_4_0_3 },
				}),
			}),
			pvp(o(179697, {	-- Arena Treasure Chest
				["description"] = "WARNING: FREE-FOR-ALL PVP EVENT\n\nChest is dropped in arena every 3 hours, starting at midnight.\n\n00:00/12PM, 03:00/3AM, 06:00/6AM, 09:00/9AM,\n12:00/12AM, 15:00/3PM, 18:00/6PM, 21:00/9PM",
				["coord"] = { 46.6, 26.1, THE_CAPE_OF_STRANGLETHORN },
				["groups"] = {
					ach(389, {	-- Gurubashi Arena Master
						["provider"] = { "i", 18706 },	-- Arena Master
					}),
					i(18706),	-- Arena Master
					i(18711),	-- Arena Bands
					i(18710),	-- Arena Bracers
					i(18712),	-- Arena Vambraces
					i(18709),	-- Arena Wristguards
					i(126948, {	-- Defending Champion
						["description"] = "Once you have the Arena Grand Master achievement, the next time you open the chest on that character you can get the Defending Champion in addition to the other spoils.",
						["timeline"] = { ADDED_6_2_0 },
						["cost"] = { { "i", 19024, 1 } },	-- Arena Grand Master
					}),
					i(122222, {	-- Music Roll: Angelic
						["timeline"] = { ADDED_6_1_0 },
					}),
				},
			})),
			battlepets({
				["sym"] = {{"select","speciesID",
					406,	-- Beetle (PET!)
					421,	-- Crimson Moth (PET!)
					407,	-- Forest Spiderling (PET!)
					408,	-- Lizard Hatchling (PET!)
					404,	-- Long-tailed Mole (PET!)
					424,	-- Roach (PET!)
					405,	-- Tree Python (PET!)
				}},
				["groups"] = {
					pet(411, {	-- Baby Ape (PET!)
						["description"] = "Can be found on Jaguero Isle in The Cape of Stranglethorn. They only spawn when it's raining on the island, and this area has its own unique weather pattern. Although it might be raining in Stranglethorn, it may not be raining on the Isle.",
					}),
					pet(401),	-- Strand Crab (PET!)
					pet(410, {	-- Wharf Rat (PET!)
						["description"] = "Can be found relaibly as secondary pets alongside Baby Apes, but also found in Booty Bay.",
					}),
				},
			}),
			explorationHeader({
				exploration(35),	-- Booty Bay
				visit_exploration(1577,{coord={54.6,23.8,THE_CAPE_OF_STRANGLETHORN}}),	-- Cape of Stranglethorn
				exploration(310),	-- Crystalvein Mine
				exploration(1741),	-- Gurubashi Arena
				exploration(1739),	-- Hardwrench Hideaway
				exploration(297),	-- Jaguero Isle
				visit_exploration(312,{coord={34.9,62.2,THE_CAPE_OF_STRANGLETHORN}}),	-- Janeiro's Point
				exploration(1737),	-- Mistvale Valley
				exploration(1738),	-- Nek'mani Wellspring
				exploration(311),	-- Ruins of Aboraz
				exploration(477),	-- Ruins of Jubuwal
				visit_exploration(1578,{coord={38.6,56.9,THE_CAPE_OF_STRANGLETHORN}}),	-- Southern Savage Coast
				exploration(5318),	-- The Sundering
				exploration(43),	-- Wild Shore
			}),
			n(FACTIONS, {
				faction(FACTION_BLOODSAIL_BUCCANEERS, {	-- Bloodsail Buccaneers
					["icon"] = 133694,
				}),
				faction(FACTION_BOOTY_BAY, {	-- Booty Bay
					["icon"] = 133784,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(18, {	-- Booty Bay, Stranglethorn
					["cr"] = 2858,	-- Gringer <Wind Rider Master>
					["coord"] = { 40.6, 73.2, THE_CAPE_OF_STRANGLETHORN },
					["races"] = HORDE_ONLY,
				}),
				fp(19, {	-- Booty Bay, Stranglethorn
					["cr"] = 2859,	-- Gyll <Gryphon Master>
					["coord"] = { 41.6, 74.4, THE_CAPE_OF_STRANGLETHORN },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(591, {	-- Explorers' League Digsite, Stranglethorn
					["cr"] = 43043,	-- Colin Swifthammer <Gryphon Master>
					["coord"] = { 55.6, 41.2, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(592, {	-- Hardwrench Hideaway, Stranglethorn
					["cr"] = 43053,	-- Hizzle <Wind Rider Master>
					["coord"] = { 35.0, 29.2, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(ENGINEERING, {
					n(7406, {	-- Oglethorpe Obnoticus <Gnomish Engineering Trainer>
						["coord"] = { 43.0, 72.0, THE_CAPE_OF_STRANGLETHORN },
						["g"] = ALL_GNOMISH_ENGINEERING,
					}),
				}),
				prof(FISHING, {
					o(180901),	-- Bloodsail Wreckage
				}),
			}),
			n(QUESTS, {
				q(610, {	-- "Pretty Boy" Duncan
					["qg"] = 2542,	-- Catelyn the Blade
					["sourceQuest"] = 603,	-- Ansirem's Key
					["coord"] = { 27.3, 77.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/1 Catelyn's Blade
							["provider"] = { "i", 4027 },	-- Catelyn's Blade
							["coord"] = { 27.6, 69.6, STRANGLETHORN_VALE },
							["cr"] = 2545,	-- "Pretty Boy" Duncan
						}),
					},
				}),
				q(26602, {	-- A Dish Best Served Huge
					["qg"] = 2500,	-- Captain Hecklebury Smotts
					["sourceQuest"] = 26600,	-- A Giant's Feast
					["coord"] = { 40.4, 67.8, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Negolash slain
							["providers"] = {
								{ "n", 1494 },	-- Negolash
								{ "o", 2289 },	-- Ruined Lifeboat
								{ "i", 59054 },	-- Giant Crate of Giant Food
							},
							["coord"] = { 49.7, 81.5, THE_CAPE_OF_STRANGLETHORN },
						}),
						i(4130, {	-- Smotts' Compass
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26600, {	-- A Giant's Feast
					["qg"] = 2500,	-- Captain Hecklebury Smotts
					["sourceQuest"] = 26599,	-- The Captain's Chest
					["coord"] = { 40.4, 67.8, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Crate of Grade-E Meat
							["provider"] = { "i", 59036 },	-- Crate of Grade-E Meat
							["coord"] = { 42.8, 69.0, THE_CAPE_OF_STRANGLETHORN },
							["cr"] = 2664,	-- Kelsey Yance <Cook>
						}),
						objective(2, {	-- 0/1 Crate of Pupellyverbos Port
							["provider"] = { "i", 59037 },	-- Crate of Pupellyverbos Port
							["coord"] = { 41.0, 74.0, THE_CAPE_OF_STRANGLETHORN },
							["cr"] = 2491,	-- Whiskey Slim <Blackwater Raiders>
						}),
					},
				}),
				q(26821, {	-- Airwyn Bantamflax
					["providers"] = {
						{ "n", 44082 },	-- Bronwyn Hewstrike
						{ "i", 58490 },	-- Opened Mosh'Ogg Bounty
					},
					["sourceQuest"] = 26824,	-- Results: Inconclusive
					["coord"] = { 55.2, 42.3, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(617, {	-- Akiris by the Bundle (1/2)
					["qg"] = 2494,	-- Privateer Bloads
					["coord"] = { 27.4, 76.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/10 Akiris Reed
							["provider"] = { "i", 4029 },	-- Akiris Reed
							["cr"] = 1907,	-- Naga Explorer
						}),
						i(4117, {	-- Scorching Sash
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(623, {	-- Akiris by the Bundle (2/2)
					["providers"] = {
						{ "n", 2494 },	-- Privateer Bloads
						{ "i", 4028 },	-- Bundle of Akiris Reeds
					},
					["sourceQuest"] = 617,	-- Akiris by the Bundle (1/2)
					["coord"] = { 27.4, 76.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(26819, {	-- Akiris by the Bundle (A)
					["qg"] = 44083,	-- Linzi Hewstrike
					["sourceQuest"] = 26823,	-- Too Big For His Britches
					["coord"] = { 55.4, 42.2, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Akiris Reed
							["provider"] = { "i", 4029 },	-- Akiris Reed
							["cr"] = 1907,	-- Naga Explorer
						}),
					},
				}),
				q(26487, {	-- Akiris by the Bundle (H)
					["qg"] = 43095,	-- Sassy Hardwrench
					["sourceQuest"] = 28704,	-- Warchief's Command: The Cape of Stranglethorn!
					["coord"] = { 34.6, 29.5, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = exclude(GOBLIN, HORDE_ONLY),
					["groups"] = {
						objective(1, {	-- 0/6 Akiris Reed
							["provider"] = { "i", 4029 },	-- Akiris Reed
							["cr"] = 1907,	-- Naga Explorer
						}),
					},
				}),
				q(26617, {	-- An Old Sea Dog
					["providers"] = {
						{ "i", 59143 },	-- Weather-Beaten Coin
						{ "i", 59142 },	-- Weather-Beaten Coin
					},
					["coord"] = { 41.2, 61.3, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["cr"] = 43454,	-- "Good-Boy" Bruce
				}),
				q(3721, {	-- An OOX of Your Own
					["qg"] = 7406,	-- Oglethorpe Obnoticus
					["sourceQuests"] = {
						648,	-- Rescue OOX-17/TN! (Tanaris)
						836,	-- Rescue OOX-09/HL! (Hinterlands)
						25476,	-- Rescue OOX-22/FE! (Feralas)
					},
					["coord"] = { 43.0, 72.0, THE_CAPE_OF_STRANGLETHORN },
					["lvl"] = lvlsquish(30, 30, 10),
					["groups"] = {
						i(10398, {	-- Mechanical Chicken (PET!)
							["timeline"] = { ADDED_1_11_1 },
						}),
					},
				}),
				q(603, {	-- Ansirem's Key
					["qg"] = 2543,	-- Archmage Ansirem Runeweaver
					["sourceQuest"] = 602,	-- Magical Analysis
					["coord"] = { 18.8, 78.5, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				pvp(q(7838, {	-- Arena Grandmaster
					["qg"] = 14508,	-- Short John Mithril
					["sourceQuest"] = 7810,	-- Arena Master
					["coord"] = { 45.0, 25.4, THE_CAPE_OF_STRANGLETHORN },
					["cost"] = { { "i", 18706, 12 } },	-- Arena Master (trinket)
					["repeatable"] = true,
					["groups"] = {
						ach(396, {	-- Arena Grandmaster
							["provider"] = { "i", 19024 },	-- Arena Grand Master
						}),
						i(19024),	-- Arena Grand Master
					},
				})),
				pvp(q(7810, {	-- Arena Master
					["provider"] = { "i", 18706 },	-- Arena Master (trinket)
					["coord"] = { 46.6, 26.1, THE_CAPE_OF_STRANGLETHORN },
				})),
				q(26644, {	-- Attracting Attention
					["qg"] = 2548,	-- Captain Keelhaul
					["sourceQuests"] = {
						26635,	-- Cannonball Swim
						26633,	-- Swabbing Duty
						26634,	-- The Bane of Many a Pirate
					},
					["coord"] = { 44.3, 91.6, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(4621, {	-- Avast Ye, Admiral!
					["qg"] = 2546,	-- Fleet Master Firallon
					["sourceQuest"] = 1036,	-- Avast Ye, Scallywag
					["minReputation"] = { FACTION_BLOODSAIL_BUCCANEERS, FRIENDLY },	-- Bloodsail Buccaneers, Friendly.
					["description"] = "This quest also requires you to be hated or lower with Booty Bay.",
					["coord"] = { 46.7, 95.2, THE_CAPE_OF_STRANGLETHORN },
					["lvl"] = lvlsquish(55, 55, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Baron Revilgaz slain
							["provider"] = { "n", 2496 },	-- Baron Revilgaz
						}),
						objective(2, {	-- 0/1 Fleet Master Seahorn slain
							["provider"] = { "n", 2487 },	-- Fleet Master Seahorn
						}),
						i(12185),	-- Bloodsail Admiral's Hat
					},
				}),
				q(1036, {	-- Avast Ye, Scallywag
					["qg"] = 43454,	-- "Good-Boy" Bruce
					["minReputation"] = { FACTION_BLOODSAIL_BUCCANEERS, FRIENDLY },	-- Bloodsail Buccaneers, Friendly.
					["coord"] = { 41.6, 61.2, THE_CAPE_OF_STRANGLETHORN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(55, 55, 10),
				}),
				q(26809, {	-- Backdoor Dealings (A)
					["qg"] = 44084,	-- Maywiki
					["sourceQuest"] = 26808,	-- Maywiki
					["coord"] = { 55.6, 42.2, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Place incense in front of Totem of Hir'eek
							["providers"] = {
								{ "i",  58963 },	-- Gurubashi Incense
								{ "o", 204361 },	-- Totem of Hir'eek
							},
							["coord"] = { 54.18, 31.45, THE_CAPE_OF_STRANGLETHORN },
						}),
						objective(2, {	-- Spy on Zanzil the Outcast
							["provider"] = { "n", 43245 },	-- Zanzil the Outcast
						}),
						i(61531, {	-- Veil of the Silent Listener
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61532, {	-- Monnion of the Bat
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61533, {	-- Small Pouch of Incense
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131606, {	-- Spaulders of the Bat
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26550, {	-- Backdoor Dealings (H)
					["qg"] = 43098,	-- Chabal
					["sourceQuest"] = 26495,	-- Chabal
					["coord"] = { 34.5, 27.9, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Place incense in front of Totem of Hir'eek
							["providers"] = {
								{ "i",  58963 },	-- Gurubashi Incense
								{ "o", 204361 },	-- Totem of Hir'eek
							},
							["coord"] = { 54.18, 31.45, THE_CAPE_OF_STRANGLETHORN },
						}),
						objective(2, {	-- Spy on Zanzil the Outcast
							["provider"] = { "n", 43245 },	-- Zanzil the Outcast
						}),
						i(61534, {	-- Veil of the Silent Listener
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61535, {	-- Monnion of the Bat
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61536, {	-- Small Pouch of Incense
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131554, {	-- Spaulders of the Bat
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26703, {	-- Bloodsail's End
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuests"] = {
						26700,	-- The Damsel's (Bad) Luck
						26697,	-- The Final Voyage of the Brashtide
						26699,	-- Turning the Brashtide
					},
					["coord"] = { 41.1, 73.1, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- Kill Fleet Master Firallon
							["provider"] = { "n", 2546 },	-- Fleet Master Firallon
							["coord"] = { 35.8, 66.6, THE_CAPE_OF_STRANGLETHORN },
						}),
						i(61626, {	-- Booty Bay Pendant
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61630, {	-- Booty Bay Pantaloons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61632, {	-- Booty Bay Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131586, {	-- Booty Bay Trousers
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(61628, {	-- Star of Stranglethorn
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26610, {	-- Bloodsail Treachery
					["provider"] = { "o", 2083 },	-- Bloodsail Correspondence
					["sourceQuest"] = 26609,	-- The Bloodsail Buccaneers
					["coord"] = { 41.2, 61.3, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(26665, {	-- Call of Booty
					["provider"] = { "o", 204450 },	-- Captain Stillwater's Charts
					["sourceQuests"] = {
						26650,	-- The Damsel's Luck
						26664,	-- Making Mutiny
						26663,	-- Sinking From Within
						26662,	-- The Brashtide Crew
					},
					["coord"] = { 50.3, 91.5, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(26635, {	-- Cannonball Swim
					["qg"] = 2545,	-- "Pretty Boy" Duncan
					["sourceQuest"] = 26631,	-- Your First Day as a Pirate
					["coord"] = { 44.5, 92.8, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Bloodsail Cannonball
							["providers"] = {
								{ "i",  59151 },	-- Bloodsail Cannonball
								{ "o", 204433 },	-- Bloodsail Cannonball
							},
							["coord"] = { 49.5, 93.9, THE_CAPE_OF_STRANGLETHORN },
						}),
					},
				}),
				q(26495, {	-- Chabal
					["providers"] = {
						{ "n", 43095 },	-- Sassy Hardwrench
						{ "i", 58883 },	-- Sassy's Largesse
					},
					["sourceQuest"] = 26493,	-- There's Somebody Out There Who Wants It
					["coord"] = { 34.6, 29.5, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(624, {	-- Cortello's Riddle (1/3)
					["providers"] = {
						{ "i", 4056 },	-- Cortello's Riddle
						{ "o", 2554 },	-- Cortello's Riddle
					},
					["coords"] = {
						{ 29.5, 89.3, STRANGLETHORN_VALE },
						{ 33.6, 88.3, STRANGLETHORN_VALE },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SWAMP_OF_SORROWS },
					["lvl"] = 35,
				}),
				q(625, {	-- Cortello's Riddle (2/3)
					["provider"] = { "o", 2553 },	-- A Soggy Scroll
					["sourceQuest"] = 624,	-- Cortello's Riddle (1/3)
					["coord"] = { 22.8, 48.1, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUSTWALLOW_MARSH },
					["lvl"] = 35,
				}),
				q(626, {	-- Cortello's Riddle (3/3)
					["provider"] = { "o", 2555 },	-- Musty Scroll
					["sourceQuest"] = 625,	-- Cortello's Riddle (2/3)
					["coord"] = { 31.1, 66.1, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["lvl"] = 35,
					["groups"] = {
						i(11324, {	-- Explorer's Knapsack
							["coord"] = { 80.8, 46.8, THE_HINTERLANDS },
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(613, {	-- Cracking Maury's Foot
					["qg"] = 2501,	-- "Sea Wolf" MacKinley
					["sourceQuest"] = 609,	-- Voodoo Dues
					["coord"] = { 27.8, 77.1, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Maury's Key
							["provider"] = { "i", 3930 },	-- Maury's Key
							["crs"] = {
								723,	-- Mosh'Ogg Butcher
								680,	-- Mosh'Ogg Lord
								678,	-- Mosh'Ogg Mauler
								679,	-- Mosh'Ogg Shaman
								710,	-- Mosh'Ogg Spellcrafter
								709,	-- Mosh'Ogg Warmonger
							},
						}),
						i(4129, {	-- Collection Plate
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26826, {	-- Dask "The Flask" Gobfizzle
					["providers"] = {
						{ "n", 44082 },	-- Bronwyn Hewstrike
						{ "i", 58490 },	-- Opened Mosh'Ogg Bounty
					},
					["sourceQuest"] = 28702,	-- Hero's Call: The Cape of Stranglethorn
					["description"] = "This quest is only available if you DID NOT complete |cff4a54e8The Source of the Corruption|r and |cff4a54e8The Mosh'Ogg Bounty|r in Northern Stranglethorn.",
					["coord"] = { 55.2, 42.3, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26825, {	-- Dask "The Flask" Gobfizzle
					["providers"] = {
						{ "n", 44082 },	-- Bronwyn Hewstrike
						{ "i", 58490 },	-- Opened Mosh'Ogg Bounty
					},
					["sourceQuest"] = 28702,	-- Hero's Call: The Cape of Stranglethorn
					["description"] = "This quest is only available if you DID complete |cff4a54e8The Source of the Corruption|r and |cff4a54e8The Mosh'Ogg Bounty|r in Northern Stranglethorn.",
					["coord"] = { 55.2, 42.5, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26612, {	-- Details of the Attack
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 26611,	-- The Baron Must Be Told
					["coord"] = { 41.1, 73.1, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Bloodsail Sea Dog slain
							["provider"] = { "n", 1565 },	-- Bloodsail Sea Dog
						}),
						objective(2, {	-- 0/8 Bloodsail Elder Magus slain
							["provider"] = { "n", 1653 },	-- Bloodsail Elder Magus
						}),
						objective(3, {	-- 0/1 Bloodsail Charts
							["providers"] = {
								{ "i", 3920 },	-- Bloodsail Charts
								{ "o", 2086 },	-- Bloodsail Charts
							},
							["coord"] = { 42.0, 83.0, THE_CAPE_OF_STRANGLETHORN },
						}),
						objective(4, {	-- 0/1 Bloodsail Orders
							["providers"] = {
								{ "i", 59145 },	-- Bloodsail Orders
								{ "o", 2087 },	-- Bloodsail Orders
							},
							["coord"] = { 40.7, 82.3, THE_CAPE_OF_STRANGLETHORN },
						}),
						i(61570, {	-- Informant's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61572, {	-- Belt of Supremacy
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61574, {	-- Sea Baron's Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61576, {	-- Pirate's Musket
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131563, {	-- Cord of Supremecy
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26592, {	-- Diffractory Chromascope
					["qg"] = 43096,	-- Flem Gizzix
					["sourceQuest"] = 26433,	-- The Holy Water of Clarity
					["coord"] = { 33.6, 29.1, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Bloodsail Ruby
							["providers"] = {
								{ "i",  59031 },	-- Bloodsail Ruby
								{ "o", 204399 },	-- Bloodsail Ruby
							},
							["coord"] = { 48.9, 36.6, THE_CAPE_OF_STRANGLETHORN },
						}),
						objective(2, {	-- 0/1 Bloodsail Sapphire
							["providers"] = {
								{ "i",  59032 },	-- Bloodsail Sapphire
								{ "o", 204398 },	-- Bloodsail Sapphire
							},
							["coord"] = { 36.6, 35.6, THE_CAPE_OF_STRANGLETHORN },
						}),
					},
				}),
				q(26678, {	-- Doublerum
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 26665,	-- Call of Booty
					["coord"] = { 41.1, 73.1, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(61384),	-- Doublerum
					},
				}),
				q(1116, {	-- Dream Dust in the Swamp
					["qg"] = 773,	-- Krazek
					["sourceQuest"] = 1115,	-- The Rumormonger
					["coord"] = { 27, 77.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SWAMP_OF_SORROWS },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Speck of Dream Dust
							["provider"] = { "i", 5803 },	-- Speck of Dream Dust
							["crs"] = {
								740,	-- Adolescent Whelp
								741,	-- Dreaming Whelp
								746,	-- Elder Dragonkin
								744,	-- Green Scalebane
								742,	-- Green Wyrmkin
								14445,	-- Lord Captain Wyrmak
								745,	-- Scalebane Captain
							},
						}),
					},
				}),
				q(9272, {	-- Dressing the Part
					["qg"] = 2546,	-- Fleet Master Firallon
					["minReputation"] = { FACTION_BLOODSAIL_BUCCANEERS, NEUTRAL },	-- Bloodsail Buccaneers, Neutral.
					["coord"] = { 46.6, 95.2, THE_CAPE_OF_STRANGLETHORN },
					["lvl"] = lvlsquish(49, 49, 10),
					["groups"] = {
						i(22746, {	-- Buccaneer's Uniform
							i(22742),	-- Bloodsail Shirt
							i(22743),	-- Bloodsail Sash
							i(22745),	-- Bloodsail Pants
							i(22744),	-- Bloodsail Boots
						}),
					},
				}),
				q(26649, {	-- Drive-By Piracy
					["qg"] = 2547,	-- Ironpatch
					["sourceQuest"] = 26647,	-- Ol' Blasty
					["coord"] = { 46.6, 94.9, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/75 Venture Co. Oil Worker slain
							["provider"] = { "n", 43596 },	-- Venture Co. Oil Worker
						}),
						i(61592, {	-- Black Gold Buckler
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61594, {	-- Venture Blaster
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61596, {	-- Slippery Glovelettes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61598, {	-- Ironpatch Shoulderguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131573, {	-- Ironpatch Handguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26810, {	-- Eliminate the Outcast (A)
					["providers"] = {
						{ "i", 60374 },	-- Maywiki's Fetish
						{ "n", 44084 },	-- Maywiki
					},
					["sourceQuest"] = 26809,	-- Backdoor Dealings
					["coord"] = { 55.7, 42.2, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Deal with Zanzil the Outcast
							["provider"] = { "n", 43245 },	-- Zanzil the Outcast
							["coord"] = { 61.19, 43.77, THE_CAPE_OF_STRANGLETHORN },
						}),
					},
				}),
				q(26551, {	-- Eliminate the Outcast (H)
					["providers"] = {
						{ "i", 58964 },	-- Chabal's Fetish
						{ "n", 43098 },	-- Chabal
					},
					["sourceQuest"] = 26550,	-- Backdoor Dealings
					["coord"] = { 34.5, 27.9, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Deal with Zanzil the Outcast
							["provider"] = { "n", 43245 },	-- Zanzil the Outcast
							["coord"] = { 61.19, 43.77, THE_CAPE_OF_STRANGLETHORN },
						}),
					},
				}),
				q(628, {	-- Excelsior
					["qg"] = 2495,	-- Drizzlik
					["sourceQuest"] = 577,	-- Some Assembly Required
					["coord"] = { 28.2, 77.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 31,
					["groups"] = {
						objective(1, {	-- 0/1 Elder Crocolisk Skin
							["provider"] = { "i", 4105 },	-- Elder Crocolisk Skin
							["cr"] = 2635,	-- Elder Saltwater Crocolisk
						}),
						i(4109, {	-- Excelsior Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(8554, {	-- Facing Negolash
					["qg"] = 2594,	-- Sprogger
					["sourceQuest"] = 8553,	-- The Captain's Cutlass
					["altQuests"] = { 618 },	-- Facing Negolash [Old]
					["coord"] = { 26.7, 73.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						q(619, {	-- Enticing Negolash
							["provider"] = { "o", 2289 },	-- Ruined Lifeboat
							["cost"] = {
								{ "i", 4457, 10 },	-- Barbecued Buzzard Wing
								{ "i", 4595, 5 },	-- Junglevine Wine
							},
							-- #if AFTER CATA
							["coord"] = { 49.7, 81.2, STRANGLETHORN_VALE },
							-- #endif
							["description"] =
								-- #if AFTER CATA
								"Although marked as removed, this Quest is used as a Hidden Trigger for the quest '|cFFFFD700A Dish Best Served Huge|r' (26602).",
								-- #else
								"This quest is repeatable, but can only be completed while you have the quest \"Facing Negolash\" in your quest log.",
								-- #endif
							["timeline"] = { REMOVED_4_0_3 },
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Smotts' Cutlass
									["questID"] = 8554,	-- Facing Negolash
									["provider"] = { "i", 3935 },	-- Smotts' Cutlass
									["coord"] = { 32.5, 81.9, STRANGLETHORN_VALE },
									["cr"] = 1494,	-- Negolash
								}),
							},
						}),
					},
				}),
				q(627, {	-- Favor for Krazek
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ARATHI_HIGHLANDS },
					["cost"] = { { "i", 4278, 4 } },	-- Lesser Bloodstone Ore
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(38399, {	-- Fencing the Rose
					["qg"] = 2542,	-- Catelyn the Blade
					["coord"] = { 41.3, 74.1, THE_CAPE_OF_STRANGLETHORN },
					["cost"] = {{ "i", 90561, 1 }},	-- Eternium Rose
					["timeline"] = { ADDED_6_2_0 },
					["requireSkill"] = ENGINEERING,
					["isDaily"] = true,
					["groups"] = {
						i(122677, {	-- Bag of Gold
							["description"] = "Contains 200g.",
						}),
					},
				}),
				q(4785, {	-- Fine Gold Thread
					["qg"] = 2670,	-- Xizk Goodstitch <Tailoring Supplies>
					["coord"] = { 28.6, 76.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["repeatable"] = true,
					["lvl"] = 31,
					["groups"] = {
						i(12293, {	-- Fine Gold Thread
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26624, {	-- Getting In With the Bloodsail
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 26612,	-- Details of the Attack
					["coord"] = { 41.1, 73.1, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(26822, {	-- Good-Fer-Nothin' Slither-Dogs
					["qg"] = 44100,	-- Goris
					["coord"] = { 55.0, 41.8, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Stranglethorn Basilisk slain
							["providers"] = {
								{ "n", 1550 },	-- Thrashtail Basilisk
								{ "n", 1551 },	-- Ironjaw Basilisk
							},
						}),
						i(61525, {	-- Goris' Medallion
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61526, {	-- Staff of First Occurrences
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61527, {	-- Slither-Dog Headguard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131611, {	-- Slither-Dog Helm
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26605, {	-- Grubby Little Paws
					["qg"] = 2634,	-- Princess Poobah
					["sourceQuest"] = 26604,	-- Protecting Her Royal Highness Poobah
					["coord"] = { 59.4, 79.0, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Poobah's Tiara
							["provider"] = { "i", 59057 },	-- Poobah's Tiara
							["crs"] = {
								43417,	-- Skymane Bonobo
								2521,	-- Skymane Gorilla
							},
						}),
						objective(2, {	-- 0/1 Poobah's Scepter
							["provider"] = { "i", 59058 },	-- Poobah's Scepter
							["crs"] = {
								43417,	-- Skymane Bonobo
								2521,	-- Skymane Gorilla
							},
						}),
						objective(3, {	-- 0/1 Poobah's Slippers
							["provider"] = { "i", 59059 },	-- Poobah's Slippers
							["crs"] = {
								43417,	-- Skymane Bonobo
								2521,	-- Skymane Gorilla
							},
						}),
						objective(4, {	-- 0/1 Poobah's Diary
							["provider"] = { "i", 59060 },	-- Poobah's Diary
							["crs"] = {
								43417,	-- Skymane Bonobo
								2521,	-- Skymane Gorilla
							},
						}),
					},
				}),
				q(26452, {	-- Gurubashi Challenge
					["qg"] = 43099,	-- Stone Guard Towhide
					["sourceQuest"] = 26451,	-- Gurubashi Challenge: Free-For-All Arena Combat
					["coord"] = { 46.2, 28.1, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- Defeat your Gurubashi Arena Challenger
							["providers"] = {
								{ "n", 43110 },	-- Gurubashi Arena Challenger
								{ "i", 60387 },	-- Gurubashi Challenge Flag
							},
						}),
					},
				}),
				q(26451, {	-- Gurubashi Challenge: Free-For-All Arena Combat
					["qg"] = 43099,	-- Stone Guard Towhide
					["coord"] = { 46.2, 28.1, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- Defeat your Gurubashi Arena Challenger
							["providers"] = {
								{ "n", 43110 },	-- Gurubashi Arena Challenger
								{ "i", 60387 },	-- Gurubashi Challenge Flag
							},
						}),
					},
				}),
				heroscall(q(28702, {	-- Hero's Call: The Cape of Stranglethorn!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },	-- Only found in Stormwind City in Cataclysm.
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 29. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 33. (TODO: Test max level between 32 and 39)
					["lvl"] = { 29, 33 },
					-- #endif
				})),
				{	-- High Priestess Jeklik
					["allianceQuestData"] = q(26812, {	-- High Priestess Jeklik (A)
						["providers"] = {
							{ "i", 60374 },	-- Maywiki's Fetish
							{ "n", 44084 },	-- Maywiki
						},
						["sourceQuest"] = 26811,	-- Through the Troll Hole (A)
					}),
					["hordeQuestData"] = q(26553, {	-- High Priestess Jeklik (H)
						["providers"] = {
							{ "i", 58964 },	-- Chabal's Fetish
							{ "n", 43098 },	-- Chabal
						},
						["sourceQuest"] = 26552,	-- Through the Troll Hole (H)
					}),
					["coord"] = { 78.5, 35.6, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- Destroy High Priestess Jeklik's body
							["providers"] = {
								{ "n", 43257 },	-- High Priestess Jeklik
								{ "n", 43255 },	-- Zanzil the Outcast
							},
							["coord"] = { 78.0, 43.8, NORTHERN_STRANGLETHORN },
							["description"] = "Attack Zanzil first to interupt the cast.",
						}),
					},
				},
				q(26814, {	-- High Priest Venoxis (A)
					["providers"] = {
						{ "i", 60374 },	-- Maywiki's Fetish
						{ "n", 44084 },	-- Maywiki
					},
					["sourceQuest"] = 26813,	-- Plunging Into Zul'Gurub
					["coord"] = { 82.1, 35.3, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Deal with High Priest Venoxis
							["providers"] = {
								{ "n", 43323 },	-- High Priest Venoxis
								{ "n", 43322 },	-- Zanzil the Outcast
							},
							["coord"] = { 84.0, 36.8, NORTHERN_STRANGLETHORN },
						}),
						i(61549, {	-- Maywiki's Favorite Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61550, {	-- Boots of the Foolhardy
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61551, {	-- Cloak of Great Endeavors
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131607, {	-- Treads of the Foolhardy
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26555, {	-- High Priest Venoxis (H)
					["providers"] = {
						{ "i", 58964 },	-- Chabal's Fetish
						{ "n", 43098 },	-- Chabal
					},
					["sourceQuest"] = 26554,	-- Plunging Into Zul'Gurub
					["coord"] = { 82.1, 35.3, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Deal with High Priest Venoxis
							["providers"] = {
								{ "n", 43323 },	-- High Priest Venoxis
								{ "n", 43322 },	-- Zanzil the Outcast
							},
							["coord"] = { 84.0, 36.8, NORTHERN_STRANGLETHORN },
						}),
						i(61552, {	-- Chabal's Favorite Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61553, {	-- Boots of the Foolhardy
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61554, {	-- Cloak of Great Endeavors
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131555, {	-- Treads of the Foolhardy
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(213, {	-- Hostile Takeover
					["qg"] = 737,	-- Kebok
					["coord"] = { 27.00, 77.13, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 31,
					["groups"] = {
						objective(1, {	-- Tumbled Crystal
							["provider"] = { "i", 4106 },	-- Tumbled Crystal
							["cr"] = 1096,	-- Venture Co. Geologist
						}),
						i(4121, {	-- Gemmed Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26435, {	-- I'm A Huge Liar and a Fraud	-- TODO:: part of loremaster?
					["providers"] = {
						{ "n", 43096 },	-- Flem Gizzix
						{ "i", 58490 },	-- Opened Mosh'Ogg Bounty
					},
					["sourceQuests"] = {
						26592,	-- Diffractory Chromascope
						26434,	-- Primal Reagents of Power
					},
					["coord"] = { 33.6, 29.1, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26820, {	-- If They're Just Going to Leave Them Lying Around... (A)
					["qg"] = 44083,	-- Linzi Hewstrike
					["sourceQuest"] = 26823,	-- Too Big For His Britches
					["coord"] = { 55.4, 42.2, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Naga Icon
							["providers"] = {
								{ "i",  58877 },	-- Naga Icon
								{ "o", 204336 },	-- Naga Icon
							},
							["coord"] = { 39.1, 46.2, THE_CAPE_OF_STRANGLETHORN },
						}),
						i(61521, {	-- Amulet of Brilliant Talent
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61522, {	-- Helm of Secrets
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26450, {	-- If They're Just Going to Leave Them Lying Around... (H)
					["qg"] = 43095,	-- Sassy Hardwrench
					["sourceQuest"] = 26404,	-- Above My Pay Grade
					["coord"] = { 34.6, 29.5, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Naga Icon
							["providers"] = {
								{ "i",  58877 },	-- Naga Icon
								{ "o", 204336 },	-- Naga Icon
							},
							["coord"] = { 39.1, 46.2, THE_CAPE_OF_STRANGLETHORN },
						}),
						i(61517, {	-- Sassy Pantaloons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61518, {	-- Iconic Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61519, {	-- Wandering Hands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61520, {	-- Corpsepump Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131530, {	-- Iconic Breastplate
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131531, {	-- Sassy Grippers
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(201, {	-- Investigate the Camp
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 28,
				}),
				q(26489, {	-- It's You!!
					["qg"] = 43095,	-- Sassy Hardwrench
					["sourceQuest"] = 28704,	-- Warchief's Command: The Cape of Stranglethorn!
					["coord"] = { 34.8, 29.4, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { GOBLIN },
					["groups"] = {
						objective(1, {	-- 0/6 Akiris Reed
							["provider"] = { "i", 4029 },	-- Akiris Reed
							["cr"] = 1907,	-- Naga Explorer
						}),
					},
				}),
				q(576, {	-- Keep An Eye Out
					["qg"] = 2493,	-- Dizzy One-Eye
					["sourceQuest"] = 595,	-- The Bloodsail Buccaneers (1/5)
					["coord"] = { 28.6, 75.9, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- Dizzy's Eye
							["provider"] = { "i", 3897 },	-- Dizzy's Eye
							["crs"] = {
								2545,	-- "Pretty Boy" Duncan
								4505,	-- Bloodsail Deckhand
								1653,	-- Bloodsail Elder Magus
								1562,	-- Bloodsail Mage
								1561,	-- Bloodsail Raider
								1565,	-- Bloodsail Sea Dog
								4506,	-- Bloodsail Swabby
								1563,	-- Bloodsail Swashbuckler
								1564,	-- Bloodsail Warlock
								2551,	-- Brutus
								2548,	-- Captain Keelhaul
								2550,	-- Captain Stillwater
								2546,	-- Fleet Master Firallon
								2549,	-- Garr Salthoof
								2547,	-- Ironpatch
							},
						}),
						i(4114),	-- Darktide Cape
					},
				}),
				q(26614, {	-- Keep An Eye Out
					["qg"] = 2493,	-- Dizzy One-Eye
					["sourceQuest"] = 26611,	-- The Baron Must Be Told
					["coord"] = { 43.3, 71.3, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- Dizzy's Eye
							["provider"] = { "i", 3897 },	-- Dizzy's Eye
							["crs"] = {
								2545,	-- "Pretty Boy" Duncan
								4505,	-- Bloodsail Deckhand
								1653,	-- Bloodsail Elder Magus
								1562,	-- Bloodsail Mage
								1561,	-- Bloodsail Raider
								1565,	-- Bloodsail Sea Dog
								4506,	-- Bloodsail Swabby
								1563,	-- Bloodsail Swashbuckler
								1564,	-- Bloodsail Warlock
								2551,	-- Brutus
								2548,	-- Captain Keelhaul
								2550,	-- Captain Stillwater
								2546,	-- Fleet Master Firallon
								2549,	-- Garr Salthoof
								2547,	-- Ironpatch
								43364,	-- Bloodsail Hooch-Hound
								43454,	-- "Good-Boy" Bruce
								43542,	-- Lime Thief
								43636,	-- Bloodsail Corsair
								43726,	-- Bloodsail Corsair
								44178,	-- Sweet Gary Guns
								44179,	-- Harry No-Hooks
								44182,	-- Gurlgrl
							},
						}),
						i(4114),	-- Darktide Cape
					},
				}),
				q(26595, {	-- Kill-Collect
					["qg"] = 2501,	-- "Sea Wolf" MacKinley
					["sourceQuest"] = 26594,	-- Return to MacKinley
					["coord"] = { 42.0, 73.4, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Maury's Clubbed Foot
							["provider"] = { "i", 3924 },	-- Maury's Clubbed Foot
							["coord"] = { 59.6, 49.0, THE_CAPE_OF_STRANGLETHORN },
							["cr"] = 2535,	-- Maury "Club Foot" Wilkins
						}),
						objective(2, {	-- 0/1 Fitztittle's Ratcheting Torque Wrench
							["provider"] = { "i", 59034 },	-- Fitztittle's Ratcheting Torque Wrench
							["coord"] = { 56.6, 57.8, THE_CAPE_OF_STRANGLETHORN },
							["cr"] = 43376,	-- Freewheelin' Juntz Fitztittle
						}),
						objective(3, {	-- 0/1 Ephram's Jeweled Mirror
							["provider"] = { "i", 59035 },	-- Ephram's Jeweled Mirror
							["coord"] = { 56.8, 52.4, THE_CAPE_OF_STRANGLETHORN },
							["cr"] = 43377,	-- Ephram "Midriff" Moonfall
						}),
						i(61538, {	-- Nice Shorts
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61540, {	-- Phase Three Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61542, {	-- Forceful Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131558, {	-- Phase Three Leggings
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131559, {	-- Nice Cuffs
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26534, {	-- Let's See What You've Got, Zanzil
					["qg"] = 43097,	-- Mixmaster Jasper
					["sourceQuest"] = 26533,	-- Zanzil's Secret
					["coord"] = { 35.1, 27.4, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Gmurgl tested
							["providers"] = {
								{ "n", 43203 },	-- Gmurgl <Saltscale Prisoner>
								{ "i", 59030 },	-- Jasper's Jungle Cooler
							},
						}),
						objective(2, {	-- Orgus tested
							["providers"] = {
								{ "n", 43204 },	-- Orgus <Mosh'ogg Prisoner>
								{ "i", 59030 },	-- Jasper's Jungle Cooler
							},
						}),
						objective(3, {	-- Captain Bartholomew Softbeard tested
							["providers"] = {
								{ "n", 43205 },	-- Captain Bartholomew Softbeard <Bloodsail Prisoner>
								{ "i", 59030 },	-- Jasper's Jungle Cooler
							},
						}),
					},
				}),
				q(602, {	-- Magical Analysis
					["providers"] = {
						{ "n", 2496 },	-- Baron Revilgaz
						{ "i", 3960 },	-- Bag of Water Elemental Bracers
					},
					["sourceQuest"] = 601,	-- Water Elementals
					["coord"] = { 27.2, 76.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(26664, {	-- Making Mutiny
					["provider"] = { "o", 204450 },	-- Captain Stillwater's Charts
					["sourceQuest"] = 26650,	-- The Damsel's Luck
					["coord"] = { 50.3, 91.5, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/9 Bloodsail Corsair slain
							["provider"] = { "n", 43636 },	-- Bloodsail Corsair
						}),
						i(61614, {	-- Supposed Mace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61616, {	-- Accusing Finger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61618, {	-- Mutineer's Noose
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26808, {	-- Maywiki
					["providers"] = {
						{ "n", 44083 },	-- Linzi Hewstrike
						{ "i", 60373 },	-- Linzi's Gift
					},
					["sourceQuest"] = 26819,	-- Akiris by the Bundle
					["coord"] = { 55.4, 42.2, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(594, {	-- Message in a Bottle (1/2)
					["providers"] = {
						{ "i", 4098 },	-- Carefully Folded Note
						{ "o", 2560 },	-- Half-Buried Bottle
					},
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
				}),
				q(630, {	-- Message in a Bottle (2/2)
					["qg"] = 2634,	-- Princess Poobah
					["sourceQuest"] = 594,	-- Message in a Bottle (1/2)
					["coord"] = { 38.4, 80.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 42,
					["groups"] = {
						objective(1, {	-- 0/1 Shackle Key
							["provider"] = { "i", 4103 },	-- Shackle Key
							["coord"] = { 40.8, 83.2, STRANGLETHORN_VALE },
							["cr"] = 1559,	-- King Mukla
						}),
						i(4118, {	-- Poobah's Nose Ring
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26603, {	-- Message in a Bottle
					["provider"] = { "o", 204406 },	-- Half-Buried Bottle
					["coords"] = {	-- All possible spawn locations, from the top to the bottom of the map
						{ 62.4, 46.8, THE_CAPE_OF_STRANGLETHORN },
						{ 57.0, 54.5, THE_CAPE_OF_STRANGLETHORN },
						{ 54.3, 65.4, THE_CAPE_OF_STRANGLETHORN },
						{ 50.2, 76.0, THE_CAPE_OF_STRANGLETHORN },
						{ 48.5, 81.0, THE_CAPE_OF_STRANGLETHORN },
					},
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(26494, {	-- Mixmaster Jasper
					["providers"] = {
						{ "n", 43095 },	-- Sassy Hardwrench
						{ "i", 58882 },	-- Sassy's Samples
					},
					["sourceQuest"] = 26493,	-- There's Somebody Out There Who Wants It
					["coord"] = { 34.6, 29.5, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26601, {	-- Mok'rash the Cleaver
					["qg"] = 2500,	-- Captain Hecklebury Smotts
					["sourceQuest"] = 26602,	-- A Dish Best Served Huge
					["coord"] = { 40.4, 67.8, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Mok'rash the Cleaver slain
							["provider"] = { "n", 1493 },	-- Mok'rash the Cleaver
							["coord"] = { 35, 65.4, THE_CAPE_OF_STRANGLETHORN },
						}),
						i(61562, {	-- Smott's Signet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61564, {	-- Sea Song Epaulets
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61566, {	-- Landlubber Headband
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61568, {	-- Sea Legs
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131561, {	-- Landlubber Helm
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26606, {	-- Mukla's Demise
					["qg"] = 2634,	-- Princess Poobah
					["sourceQuest"] = 26605,	-- Grubby Little Paws
					["coord"] = { 59.4, 79.0, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Shackle Key
							["provider"] = { "i", 4103 },	-- Shackle Key
							["coord"] = { 63.9, 83.8, THE_CAPE_OF_STRANGLETHORN },
							["cr"] = 1559,	-- King Mukla
						}),
						i(61586, {	-- Princess Poobah's Dress
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61588, {	-- Princess Poobah's Bracelets
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61589, {	-- Princess Poobah's Tiara
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131562, {	-- Princess Poobah's Bangles
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26647, {	-- Ol' Blasty
					["qg"] = 2547,	-- Ironpatch
					["sourceQuest"] = 26644,	-- Attracting Attention
					["coord"] = { 46.6, 94.9, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Hit Smilin' Timmy Sticks with a cannonball
							["provider"] = { "n", 43560 },	-- Smilin' Timmy Sticks
						}),
					},
				}),
				q(26648, {	-- Our Mortal Enemies
					["providers"] = {
						{ "n", 43556 },	-- "Dead-Eye" Drederick McGumm
						{ "i", 59226 },	-- Dead-Eye's Flare Gun
					},
					["sourceQuest"] = 26644,	-- Attracting Attention
					["coord"] = { 46.5, 93.2, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Ninja slain
							["provider"] = { "n", 43553 },	-- Ninja
						}),
						i(61600, {	-- Mortal Naginata
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61602, {	-- Ninja Star
							["timeline"] = { ADDED_4_0_3, DELETED_5_0_4 },
						}),
						i(61604, {	-- Other-Eye Patch
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61606, {	-- Pauldrons of the Eternal Battle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131572, {	-- One-Eye Patch
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156952, {	-- Adversarial Blackjack
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(26817, {	-- Perfectly Pure
					["qg"] = 44099,	-- Dask "The Flask" Gobfizzle
					["sourceQuest"] = 26823,	-- Too Big For His Britches
					["coord"] = { 55.3, 41.9, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Pure Water
							["providers"] = {
								{ "i", 60386 },	-- Pure Water
								{ "o", 759 },	-- The Holy Spring
							},
							["coord"] = { 43, 48, THE_CAPE_OF_STRANGLETHORN },
						}),
					},
				}),
				q(26813, {	-- Plunging Into Zul'Gurub (A)
					["providers"] = {
						{ "i",  60374 },	-- Maywiki's Fetish
						{ "n",  44084 },	-- Maywiki
						{ "o", 204386 },	-- Zanzil's Portal
					},
					["sourceQuest"] = 26812,	-- High Priestess Jeklik
					["coord"] = { 77.9, 44.1, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26554, {	-- Plunging Into Zul'Gurub (H)
					["providers"] = {
						{ "i",  58964 },	-- Chabal's Fetish
						{ "n",  43098 },	-- Chabal
						{ "o", 204386 },	-- Zanzil's Portal
					},
					["sourceQuest"] = 26553,	-- High Priestess Jeklik
					["coord"] = { 78.0, 44.2, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26818, {	-- Plush Pelts
					["qg"] = 44083,	-- Linzi Hewstrike
					["sourceQuest"] = 26823,	-- Too Big For His Britches
					["coord"] = { 55.4, 42.2, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Supple Tigress Fur
							["provider"] = { "i", 58812 },	-- Supple Tigress Fur
							["cr"] = 772,	-- Stranglethorn Tigress
						}),
						objective(2, {	-- 0/4 Velvety Panther Fur
							["provider"] = { "i", 58813 },	-- Velvety Panther Fur
							["cr"] = 1713,	-- Elder Shadowmaw Panther
						}),
						i(61513, {	-- Fuzzy Legwarmers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61516, {	-- Hambone's Spare Collar
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61515, {	-- Supple Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131609, {	-- Supple Support Harness
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131610, {	-- Velvet-Lined Chain Gloves
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(61514, {	-- Velvety Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26695, {	-- Prepare for Takeoff
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 26679,	-- Return to Revilgaz
					["coord"] = { 41.1, 73.1, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Narkk's Handbombs
							["providers"] = {
								{ "i",  59524 },	-- Narkk's Handbombs
								{ "o", 204587 },	-- Narkk's Handbombs
							},
							["coord"] = { 42.6, 69.1, THE_CAPE_OF_STRANGLETHORN },
						}),
					},
				}),
				q(26434, {	-- Primal Reagents of Power
					["qg"] = 43096,	-- Flem Gizzix
					["sourceQuest"] = 26433,	-- The Holy Water of Clarity
					["coord"] = { 33.6, 29.1, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Supple Tigress Fur
							["provider"] = { "i", 58812 },	-- Supple Tigress Fur
							["cr"] = 772,	-- Stranglethorn Tigress
						}),
						objective(2, {	-- 0/4 Velvety Panther Fur
							["provider"] = { "i", 58813 },	-- Velvety Panther Fur
							["cr"] = 1713,	-- Elder Shadowmaw Panther
						}),
						i(61528, {	-- Velvet Choker
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61529, {	-- Hideaway Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61530, {	-- Not-Scratchy Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131529, {	-- Not-Scratchy Faceguard
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26604, {	-- Protecting Her Royal Highness Poobah
					["qg"] = 2634,	-- Princess Poobah
					["sourceQuest"] = 26603,	-- Message in a Bottle
					["coord"] = { 59.4, 79.0, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Jaguero Stalker slain
							["provider"] = { "n", 2522 },	-- Jaguero Stalker
						}),
					},
				}),
				q(26816, {	-- Recipe for Disaster (A)
					["qg"] = 44099,	-- Dask "The Flask" Gobfizzle
					["sourceQuest"] = 26815,	-- Zanzil's Secret
					["coord"] = { 55.2, 42.0, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Zanzil's Formulation
							["provider"] = { "n", 58901 },	-- Zanzil's Formulation
							["cr"] = 1490,	-- Zanzil Witch Doctor
						}),
						i(61543, {	-- Dask's Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61544, {	-- Leggings with Mysterious Stains
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61545, {	-- Glass Encrusted Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131608, {	-- Pantaloons with Myserious Stains
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26535, {	-- Recipe for Disaster (H) (probably used as a sourcequest with High Priest Venoxiss)
					["qg"] = 43097,	-- Mixmaster Jasper
					["sourceQuest"] = 26534,	-- Let's See What You've Got, Zanzil
					["coord"] = { 35.1, 27.4, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Zanzil's Formulation
							["provider"] = { "n", 58901 },	-- Zanzil's Formulation
							["cr"] = 1490,	-- Zanzil Witch Doctor
						}),
						i(61546, {	-- Formulaic Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61547, {	-- Mixmaster's Britches
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61548, {	-- Boots of Explosive Dancing
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131551, {	-- Mixmaster's Trousers
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26824, {	-- Results: Inconclusive
					["providers"] = {
						{ "n", 44099 },	-- Dask "The Flask" Gobfizzle
						{ "i", 58490 },	-- Opened Mosh'Ogg Bounty
					},
					["sourceQuest"] = 26815,	-- Zanzil's Secret
					["coord"] = { 55.2, 42.0, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(607, {	-- Return to MacKinley
					["providers"] = {
						{ "n", 2502 },	-- "Shaky" Phillipe
						{ "i", 3922 },	-- Shaky's Payment
					},
					["sourceQuest"] = 606,	-- Scaring Shaky
					["coord"] = { 26.9, 73.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
				}),
				q(26594, {	-- Return to MacKinley
					["providers"] = {
						{ "n", 2502 },	-- "Shaky" Phillipe
						{ "i", 3922 },	-- Shaky's Payment
					},
					["sourceQuest"] = 26593,	-- Scaring Shaky
					["coord"] = { 40.5, 67.8, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(26679, {	-- Return to Revilgaz
					["providers"] = {
						{ "o", 204578 },	-- Barrel of Doublerum
						{ "i",  59523 },	-- Doublerum
					},
					["sourceQuest"] = 26678,	-- Doublerum
					["coord"] = { 40.6, 73.2, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(606, {	-- Scaring Shaky
					["qg"] = 2501,	-- "Sea Wolf" MacKinley
					["coord"] = { 27.78, 77.07, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/5 Mistvale Giblets
							["provider"] = { "i", 3919 },	-- Mistvale Giblets
							["cr"] = 1557,	-- Elder Mistvale Gorilla
						}),
					},
				}),
				q(26593, {	-- Scaring Shaky
					["qg"] = 2501,	-- "Sea Wolf" MacKinley
					["coord"] = { 42.0, 73.3, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Mistvale Giblets
							["provider"] = { "i", 3919 },	-- Mistvale Giblets
							["cr"] = 1557,	-- Elder Mistvale Gorilla
						}),
					},
				}),
				q(26629, {	-- Seeing Where Your Loyalties Lie
					["qg"] = 43504,	-- Yancey Grillsen
					["sourceQuest"] = 26624,	-- Getting in With the Bloodsail
					["coord"] = { 43.8, 56.4, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						q(26630, {	-- Looks Like a Tauren Pirate to Me
							["qg"] = 2487,	-- Fleet Master Seahorn
							["altQuests"] = { 26629 },	-- Seeing Where Your Loyalties Lie
							["coord"] = { 41.0, 73.2, THE_CAPE_OF_STRANGLETHORN },
							["timeline"] = { ADDED_4_0_3 },
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- Return both items to Fleet Master Seahorn
									["provider"] = { "n", 2487 },	-- Fleet Master Seahorn
								}),
								objective(2, {	-- 0/1 Oversized Pirate Hat
									["provider"] = { "i", 59148 },	-- Oversized Pirate Hat
									["coord"] = { 42.6, 69.2, THE_CAPE_OF_STRANGLETHORN },
									["cr"] = 2663,	-- Narkk <Pirate Supplies>
								}),
								objective(3, {	-- 0/1 Cow Head
									["provider"] = { "i", 59147 },	-- Cow Head
									["coord"] = { 43.2, 71.6, THE_CAPE_OF_STRANGLETHORN },
									["description"] = "\"I've killed thousands of players. I've committed genocide on entire species. Yet this was the first time I've felt sad about killing anything in WoW. Good night, sweet queen.\"\n -rabiesarebad (WoWHead)",
									["cr"] = 43505,	-- Bossy
								}),
								objective(1, {	-- 0/1 Head of Fleet Master Seahorn
									["questID"] = 26629,	-- Seeing Where Your Loyalties Lie
									["provider"] = { "i", 59146 },	-- Head of Fleet Master Seahorn
								}),
							},
						}),
					},
				}),
				q(26698, {	-- Seeking Seahorn
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 26679,	-- Return to Revilgaz
					["coord"] = { 41.1, 73.1, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(3643, {	-- Show Your Work
					["qg"] = 7406,	-- Oglethorpe Obnoticus <Master Gnome Engineer>
					["sourceQuest"] = 3642,	-- The Pledge of Secrecy
					["altQuests"] = { 3639, 3641 },	-- The Pledge of Secrecy
					["coord"] = { 28.2, 76.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_3_0_2 },	-- Originally supposed to be removed in 4.0.3, but Wrath Classic was weird.
					["requireSkill"] = ENGINEERING,
					["learnedAt"] = 200,
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4392, 2 },	-- Advanced Target Dummy
						{ "i", 4407, 1 },	-- Accurate Scope
						{ "i", 10559, 6 },	-- Mithril Tube
					},
					["lvl"] = 30,
					["groups"] = {
						i(10790),	-- Gnome Engineer Membership Card
					},
				}),
				q(605, {	-- Singing Blue Shards
					["qg"] = 2498,	-- Crank Fizzlebub
					["coord"] = { 27.12, 77.22, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Singing Crystal Shard
							["provider"] = { "i", 3918 },	-- Singing Crystal Shard
							["crs"] = {
								690,	-- Cold Eye Basilisk
								689,	-- Crystal Spine Basilisk
								1551,	-- Ironjaw Basilisk
								688,	-- Stone Maw Basilisk
								1550,	-- Thrashtail Basilisk
							},
						}),
					},
				}),
				q(26663, {	-- Sinking From Within
					["provider"] = { "o", 204450 },	-- Captain Stillwater's Charts
					["sourceQuest"] = 26650,	-- The Damsel's Luck
					["coord"] = { 50.3, 91.5, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- Sabotage the Grog
							["provider"] = { "o", 204454 },	-- Grog Barrel
							["coord"] = { 50.6, 91.5, THE_CAPE_OF_STRANGLETHORN },
						}),
						objective(2, {	-- Sabotage the Gunpowder
							["provider"] = { "o", 204455 },	-- Gunpowder Barrel
							["coord"] = { 46.8, 93.7, THE_CAPE_OF_STRANGLETHORN },
						}),
						objective(3, {	-- Sabotage the Cannonballs
							["provider"] = { "o", 204456 },	-- Cannonball Crate
							["coord"] = { 44.7, 92.8, THE_CAPE_OF_STRANGLETHORN },
						}),
					},
				}),
				q(209, {	-- Skullsplitter Tusks
					["qg"] = 737,	-- Kebok
					["sourceQuest"] = 189,	-- Bloodscalp Ears
					["coord"] = { 27.00, 77.13, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/18 Skullsplitter Tusk
							["provider"] = { "i", 1524 },	-- Skullsplitter Tusk
							["crs"] = {
								1059,	-- Ana'thek the Cruel <Skullsplitter Chief>
								696,	-- Skullsplitter Axe Thrower
								784,	-- Skullsplitter Beastmaster
								783,	-- Skullsplitter Berserker
								781,	-- Skullsplitter Headhunter
								669,	-- Skullsplitter Hunter
								780,	-- Skullsplitter Mystic
								782,	-- Skullsplitter Scout
								672,	-- Skullsplitter Spiritchaser
								667,	-- Skullsplitter Warrior
								670,	-- Skullsplitter Witch Doctor
							},
						}),
					},
				}),
				q(577, {	-- Some Assembly Required
					["qg"] = 2495,	-- Drizzlik
					["coord"] = { 28.2, 77.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 31,
					["groups"] = {
						objective(1, {	-- 0/5 Snapjaw Crocolisk Skin
							["provider"] = { "i", 4104 },	-- Snapjaw Crocolisk Skin
							["cr"] = 1152,	-- Snapjaw Crocolisk
						}),
					},
				}),
				q(348, {	-- Stranglethorn Fever
					["qg"] = 2486,	-- Fin Fizracket
					["coord"] = { 27.6, 76.7, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						q(349, {	-- Stranglethorn Fever
							["qg"] = 1449,	-- Witch Doctor Unbagwa
							["coord"] = { 35.2, 60.4, STRANGLETHORN_VALE },
							["cost"] = { { "i", 2799, 10 } },	-- Gorilla Fang
							["repeatable"] = true,
							["lvl"] = 32,
							["groups"] = {
								objective(1, {	-- 0/1 Heart of Mokk
									["questID"] = 348,	-- Stranglethorn Fever
									["provider"] = { "i", 2797 },	-- Heart of Mokk
									["coord"] = { 35.2, 60.4, STRANGLETHORN_VALE },
									["cr"] = 1514,	-- Mokk the Savage
								}),
							},
						}),
						i(4113, {	-- Medicine Blanket
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26597, {	-- Stranglethorn Fever
					["qg"] = 2486,	-- Fin Fizracket
					["coord"] = { 41.7, 72.8, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						q(26598, {	-- The Heart of Mokk
							["qg"] = 1449,	-- Witch Doctor Unbagwa
							["coord"] = { 54.1, 46.5, THE_CAPE_OF_STRANGLETHORN },
							["cost"] = { { "i", 2799, 1 } },	-- Gorilla Fang
							["timeline"] = { ADDED_4_0_3 },
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Heart of Mokk
									["questID"] = 26597,	-- Stranglethorn Fever
									["provider"] = { "i", 2797 },	-- Heart of Mokk
									["coord"] = { 53.4, 47.8, THE_CAPE_OF_STRANGLETHORN },
									["cr"] = 1514,	-- Mokk the Savage
								}),
							},
						}),
						i(61556, {	-- Feverish Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61558, {	-- Savage Handwraps
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61560, {	-- Chestpiece of Returning Strength
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131560, {	-- Savage Handguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(198, {	-- Supplies to Private Thorsen
					["providers"] = {
						{ "n", 773 },	-- Krazek
						{ "i", 2252 },	-- Miscellaneous Goblin Supplies
					},
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(575, {	-- Supply and Demand
					["qg"] = 2495,	-- Drizzlik
					["coord"] = { 28.29, 77.59, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/2 Large River Crocolisk Skin
							["provider"] = { "i", 4053 },	-- Large River Crocolisk Skin
							["cr"] = 1150,	-- River Crocolisk
						}),
					},
				}),
				q(26633, {	-- Swabbing Duty
					["qg"] = 2548,	-- Captain Keelhaul
					["sourceQuest"] = 26631,	-- Your First Day as a Pirate
					["coord"] = { 44.4, 91.6, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- Swab the decks
							["providers"] = {
								{ "n",  43511 },	-- Deck Stain
								{ "o", 204422 },	-- Swabbie's Mop
							},
							["description"] = "You can pay \"Pretty Boy\" Duncan (just outside the door from the lower decks) 1g to swab the decks for you if you don't want to do the minigame.",
						}),
						i(61578, {	-- Cleaning Britches
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61580, {	-- Swabbie's Booties
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61582, {	-- Riptide Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61584, {	-- Keelhaul Shackles
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131567, {	-- Riptide Boots
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131568, {	-- Keelhaul Harness
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26634, {	-- The Bane of Many A Pirate
					["qg"] = 2549,	-- Garr Salthoof
					["sourceQuest"] = 26633,	-- Swabbing Duty
					["coord"] = { 44.4, 92.0, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Bushel of Limes
							["providers"] = {
								{ "i",  59150 },	-- Bushel of Limes
								{ "o", 204432 },	-- Lime Crate
							},
							["coord"] = { 41.2, 82.4, THE_CAPE_OF_STRANGLETHORN },
						}),
					},
				}),
				q(26611, {	-- The Baron Must Be Told
					["qg"] = 2490,	-- First Mate Crazz
					["sourceQuest"] = 26610,	-- Bloodsail Treachery
					["coord"] = { 42.4, 72.0, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(595, {	-- The Bloodsail Buccaneers (1/5)
					["qg"] = 2490,	-- First Mate Crazz
					["coord"] = { 28.1, 76.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
				}),
				q(597, {	-- The Bloodsail Buccaneers (2/5)
					["provider"] = { "o", 2083 },	-- Bloodsail Correspondence
					["sourceQuest"] = 595,	-- The Bloodsail Buccaneers (1/5)
					["coord"] = { 27.3, 69.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
				}),
				q(599, {	-- The Bloodsail Buccaneers (3/5)
					["qg"] = 2490,	-- First Mate Crazz
					["sourceQuest"] = 597,	-- The Bloodsail Buccaneers (2/5)
					["coord"] = { 28.1, 76.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
				}),
				q(604, {	-- The Bloodsail Buccaneers (4/5)
					["qg"] = 2487,	-- Fleet Master Seahorn
					["sourceQuest"] = 599,	-- The Bloodsail Buccaneers (3/5)
					["coord"] = { 27.2, 77.0, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/10 Bloodsail Swashbuckler slain
							["provider"] = { "n", 1563 },	-- Bloodsail Swashbuckler
						}),
						objective(2, {	-- 0/1 Bloodsail Charts
							["providers"] = {
								{ "i", 3920 },	-- Bloodsail Charts
								{ "o", 2086 },	-- Bloodsail Charts
							},
							["coords"] = {
								{ 29.6, 80.8, STRANGLETHORN_VALE },
								{ 27.2, 82.7, STRANGLETHORN_VALE },
							},
						}),
						objective(3, {	-- 0/1 Bloodsail Orders
							["providers"] = {
								{ "i", 3921 },	-- Bloodsail Orders
								{ "o", 2087 },	-- Bloodsail Orders
							},
							["coords"] = {
								{ 29.6, 80.9, STRANGLETHORN_VALE },
								{ 27.0, 82.4, STRANGLETHORN_VALE },
							},
						}),
					},
				}),
				q(608, {	-- The Bloodsail Buccaneers (5/5)
					["qg"] = 2487,	-- Fleet Master Seahorn
					["sourceQuest"] = 604,	-- The Bloodsail Buccaneers (4/5)
					["coord"] = { 27.2, 77.0, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/1 Captain Stillwater slain
							["provider"] = { "n", 2550 },	-- Captain Stillwater
							["coord"] = { 33.0, 88.2, STRANGLETHORN_VALE },
						}),
						objective(2, {	-- 0/1 Captain Keelhaul slain
							["provider"] = { "n", 2548 },	-- Captain Keelhaul
							["coord"] = { 29.2, 88.6, STRANGLETHORN_VALE },
						}),
						objective(3, {	-- 0/1 Fleet Master Firallon slain
							["provider"] = { "n", 2546 },	-- Fleet Master Firallon
							["coord"] = { 30.6, 90.6, STRANGLETHORN_VALE },
						}),
						i(4138, {	-- Blackwater Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26609, {	-- The Bloodsail Buccaneers
					["qg"] = 2490,	-- First Mate Crazz
					["sourceQuests"] = {
						26595,	-- Kill-Collect
						26601,	-- Mok'rash the Cleaver
						26606,	-- Mukla's Demise
					},
					["sourceQuestNumRequired"] = 1,
					["description"] = "You need to complete at least one of [Kill-Collect], [Mok'rash the Cleaver], or [Mukla's Demise] to pick up this quest.",
					["coord"] = { 42.6, 71.8, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(26662, {	-- The Brashtide Crew
					["provider"] = { "o", 204450 },	-- Captain Stillwater's Charts
					["sourceQuest"] = 26650,	-- The Damsel's Luck
					["coord"] = { 50.3, 91.5, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- Speak with Long John Copper
							["provider"] = { "n", 43659 },	-- Long John Copper <The Brashtide Crew>
							["coord"] = { 51.2, 91.4, THE_CAPE_OF_STRANGLETHORN },
						}),
						objective(2, {	-- Speak with Enormous Shawn Stooker
							["provider"] = { "n", 43660 },	-- Enormous Shawn Stooker <The Brashtide Crew>
							["coord"] = { 46.8, 94.2, THE_CAPE_OF_STRANGLETHORN },
						}),
						objective(3, {	-- Speak with Wailing Mary Smitts
							["provider"] = { "n", 43661 },	-- Wailing Mary Smitts <The Brashtide Crew>
							["coord"] = { 44.6, 93.2, THE_CAPE_OF_STRANGLETHORN },
						}),
					},
				}),
				q(26596, {	-- The Call of Kalimdor (A)
					["qg"] = 48808,	-- Corporal Jeyne
					["coord"] = { 40.4, 68.1, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,	-- leads to Dustwallow Marsh
					["lvl"] = 35,
				}),
				q(26696, {	-- The Call of Kalimdor (H)
					["qg"] = 48797,	-- Gim'hila
					["description"] = "Swims in a circle near the dock.",
					["coord"] = { 39.6, 68.5, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(8551, {	-- The Captain's Chest
					["qg"] = 2500,	-- Captain Hecklebury Smotts
					["altQuests"] = { 614 },	-- The Captain's Chest [Old]
					["coord"] = { 26.7, 73.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Smotts' Chest
							["provider"] = { "i", 3932 },	-- Smotts' Chest
							["coord"] = { 36.6, 69.6, STRANGLETHORN_VALE },
							["cr"] = 1492,	-- Gorlash
						}),
					},
				}),
				q(26599, {	-- The Captain's Chest
					["qg"] = 2500,	-- Captain Hecklebury Smotts
					["coord"] = { 40.3, 67.7, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Smotts' Chest
							["provider"] = { "i", 3932 },	-- Smotts' Chest
							["coord"] = { 53.6, 67.8, THE_CAPE_OF_STRANGLETHORN },
							["cr"] = 1492,	-- Gorlash
						}),
						i(11469, {	-- Bloodband Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(8553, {	-- The Captain's Cutlass
					["qg"] = 2500,	-- Captain Hecklebury Smotts
					["sourceQuest"] = 8552,	-- The Monogrammed Sash
					["altQuests"] = { 615 },	-- The Captain's Cutlass [Old]
					["coord"] = { 26.6, 73.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
				}),
				q(1041, {	-- The Caravan Road
					["qg"] = 3945,	-- Caravaneer Ruzzgot
					["sourceQuest"] = 1040,	-- Passage to Booty Bay (The Barrens)
					["coord"] = { 27.4, 74.1, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(611, {	-- The Curse of the Tides
					["qg"] = 2542,	-- Catelyn the Blade
					["sourceQuest"] = 610,	-- "Pretty Boy" Duncan
					["coord"] = { 27.3, 77.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/1 Stone of the Tides
							["providers"] = {
								{ "i", 4034 },	-- Stone of the Tides
								{ "i", 4027 },	-- Catelyn's Blade
							},
							["coord"] = { 25, 23.6, STRANGLETHORN_VALE },
							["cr"] = 2624,	-- Gazban
						}),
						i(4120, {	-- Robe of Crystal Waters
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26700, {	-- The Damsel's (Bad) Luck
					["qg"] = 2487,	-- Fleet Master Seahorn
					["sourceQuest"] = 26698,	-- Seeking Seahorn
					["coord"] = { 41.5, 73.0, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Bloodsail Corsair slain
							["provider"] = { "n", 43726 },	-- Bloodsail Corsair
						}),
					},
				}),
				q(26650, {	-- The Damsel's Luck
					["qg"] = 2546,	-- Fleet Master Firallon
					["sourceQuests"] = {
						26649,	-- Drive-By Piracy
						26648,	-- Our Mortal Enemies
					},
					["coord"] = { 46.7, 95.2, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(26697, {	-- The Final Voyage of the Brashtide
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 26695,	-- Prepare for Takeoff
					["coord"] = { 41.1, 73.1, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/85 Brashtide Crewman slain
							["provider"] = { "n", 43717 },	-- Brashtide Crewman <The Brashtide Crew>
						}),
						objective(2, {	-- 0/6  slain
							["provider"] = { "n", 43790 },	-- Brashtide Attack Boat
						}),
						i(61608, {	-- Mongrel Shooter
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61610, {	-- Flight Master's Gift
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61612, {	-- Baron's Baton
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(157000, {	-- Fuse-Cutter Knife
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(616, {	-- The Haunted Isle
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(26433, {	-- The Holy Water of Clarity
					["qg"] = 43096,	-- Flem Gizzix
					["sourceQuests"] = {
						26487,	-- Akiris by the Bundle
						26450,	-- If They're Just Going to Leave Them Lying Around...
					},
					["coord"] = { 33.6, 29.1, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Pure Water
							["providers"] = {
								{ "i", 58811 },	-- The Holy Water of Clarity
								{ "o", 759 },	-- The Holy Spring
							},
							["coord"] = { 43, 48, THE_CAPE_OF_STRANGLETHORN },
						}),
					},
				}),
				q(26590, {	-- The Holy Water of Clarity
					["qg"] = 43096,	-- Flem Gizzix
					["sourceQuests"] = {
						573,	-- Mok'thardin's Enchantment (4/4)
						26487,	-- Akiris by the Bundle
						26450,	-- If They're Just Going to Leave Them Lying Around...
					},
					["description"] = "This version of the quest is given to players that have completed '|cffe50d12Mok'thardin's Enchantment|r' quest chain prior to the Cataclysm.",
					["coord"] = { 33.6, 29.1, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Pure Water
							["providers"] = {
								{ "i", 58811 },	-- The Holy Water of Clarity
								{ "o", 759 },	-- The Holy Spring
							},
							["coord"] = { 43, 48, THE_CAPE_OF_STRANGLETHORN },
						}),
					},
				}),
				q(2760, {	-- The Mithril Order
					["providers"] = {
						{ "n", 7794 },	-- McGavan
						{ "i", 8686 },	-- Mithril Pendant
					},
					["sourceQuests"] = {
						2757,	-- Booty Bay or Bust!
						2759,	-- In Search of Galvan
					},
					["coord"] = { 28.8, 75.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["lvl"] = 40,
				}),
				q(8552, {	-- The Monogrammed Sash
					["provider"] = { "i", 3985 },	-- Monogrammed Sash
					["altQuests"] = { 620 },	-- The Monogrammed Sash [Old]
					["coord"] = { 23.0, 71.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 1493,	-- Mok'rash
					["lvl"] = 35,
				}),
				q(3642, {	-- The Pledge of Secrecy
					["qg"] = 7406,	-- Oglethorpe Obnoticus <Master Gnome Engineer>
					["sourceQuests"] = {
						3635,	-- Gnome Engineering
						3637,	-- Gnome Engineering
					},
					["altQuests"] = { 3638, 3640 },	-- The Pledge of Secrecy
					["coord"] = { 28.2, 76.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_3_0_2 },	-- Originally supposed to be removed in 4.0.3, but Wrath Classic was weird.
					["requireSkill"] = ENGINEERING,
					["learnedAt"] = 200,
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Oglethorpe's Signed Pledge
							["providers"] = {
								{ "i", 11282 },	-- Oglethorpe's Signed Pledge
								{ "i", 10794 },	-- Oglethorpe's Pledge of Secrecy
							},
						}),
					},
				}),
				q(578, {	-- The Stone of the Tides
					["providers"] = {
						{ "n", 2496 },	-- Baron Revilgaz
						{ "i", 3898 },	-- Library Scrip
					},
					["sourceQuest"] = 616,	-- The Haunted Isle
					["coord"] = { 27.2, 76.9, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(26493, {	-- There's Somebody Out There Who Wants It
					["qg"] = 43095,	-- Sassy Hardwrench
					["sourceQuests"] = {
						26487,	-- Akiris by the Bundle
						26450,	-- If They're Just Going to Leave Them Lying Around...
					},
					["coord"] = { 34.6, 29.5, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Sassy's Secret Ingredient
							["provider"] = { "i", 58880 },	-- Sassy's Secret Ingredient
							["crs"] = {
								1550,	-- Thrashtail Basilisk
								1551,	-- Ironjaw Basilisk
							},
						}),
						i(61523, {	-- Basilisk Scale Necklace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61524, {	-- Helm of Secrets
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26811, {	-- Through the Troll Hole (A)
					["providers"] = {
						{ "i",  60374 },	-- Maywiki's Fetish
						{ "n",  44084 },	-- Maywiki
						{ "o", 204372 },	-- Zanzil's Portal
					},
					["description"] = "If you abandon this quest, talk to |cFFFFD700Maywiki|r at |cFFFFD700Explorers' League Digsite|r.",
					["sourceQuest"] = 26810,	-- Eliminate the Outcast
					["coord"] = { 61.2, 44.3, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26552, {	-- Through the Troll Hole (H)
					["providers"] = {
						{ "i",  58964 },	-- Chabal's Fetish
						{ "n",  43098 },	-- Chabal
						{ "o", 204372 },	-- Zanzil's Portal
					},
					["sourceQuest"] = 26551,	-- Eliminate the Outcast
					["description"] = "If you abandon this quest, talk to |cFFFFD700Chabal|r in |cFFFFD700Hardwrench Hideaway|r.",
					["coord"] = { 61.1, 44.2, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26823, {	-- Too Big For His Britches
					["qg"] = 44099,	-- Dask "The Flask" Gobfizzle
					["sourceQuests"] = { 26825, 26826 },	-- Dask "The Flask" Gobfizzle (two different versions)
					["coord"] = { 55.3, 41.9, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Ironjaw Humour
							["provider"] = { "i", 60380 },	-- Ironjaw Humour
							["coord"] = { 66.2, 26.4, THE_CAPE_OF_STRANGLETHORN },
							["cr"] = 44113,	-- Ironjaw Behemoth
						}),
					},
				}),
				q(9259, {	-- Traitor to the Bloodsail
					["qg"] = 16399,	-- Bloodsail Traitor
					["coord"] = { 48.4, 63.2, THE_CAPE_OF_STRANGLETHORN },
					["maxReputation"] = { FACTION_BOOTY_BAY, NEUTRAL },	-- Booty Bay, must be less than Neutral
					["cost"] = {
						{ "i", 4306, 40 },	-- Silk Cloth
						{ "i", 2604, 4 },	-- Red Dye
					},
					["repeatable"] = true,
					["lvl"] = lvlsquish(30, 30, 1),
				}),
				q(26699, {	-- Turning the Brashtide
					["qg"] = 2487,	-- Fleet Master Seahorn
					["sourceQuest"] = 26698,	-- Seeking Seahorn
					["coord"] = { 41.5, 73.0, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Brashtide Raider slain
							["provider"] = { "n", 43716 },	-- Brashtide Raider <The Brashtide Crew>
						}),
						i(61620, {	-- Revilgaz's Cutlass
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61622, {	-- Bruised Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61624, {	-- Brash Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131585, {	-- Revilgaz's Tunic
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(587, {	-- Up to Snuff
					["qg"] = 2488,	-- Deeg
					["sourceQuest"] = 597,	-- The Bloodsail Buccaneers (2/5)
					["coord"] = { 26.9, 77.3, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/15 Snuff
							["provider"] = { "i", 3910 },	-- Snuff
							["crs"] = {
								2545,	-- "Pretty Boy" Duncan
								4505,	-- Bloodsail Deckhand
								1653,	-- Bloodsail Elder Magus
								1562,	-- Bloodsail Mage
								1561,	-- Bloodsail Raider
								1565,	-- Bloodsail Sea Dog
								4506,	-- Bloodsail Swabby
								1563,	-- Bloodsail Swashbuckler
								1564,	-- Bloodsail Warlock
								2551,	-- Brutus
								2548,	-- Captain Keelhaul
								2550,	-- Captain Stillwater
								2546,	-- Fleet Master Firallon
								2549,	-- Garr Salthoof
								2547,	-- Ironpatch
							},
						}),
					},
				}),
				q(26613, {	-- Up to Snuff
					["qg"] = 2488,	-- Deeg
					["sourceQuest"] = 26611,	-- The Baron Must Be Told
					["coord"] = { 40.7, 73.8, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Snuff
							["provider"] = { "i", 3910 },	-- Snuff
							["crs"] = {
								2545,	-- "Pretty Boy" Duncan
								4505,	-- Bloodsail Deckhand
								1653,	-- Bloodsail Elder Magus
								1562,	-- Bloodsail Mage
								1561,	-- Bloodsail Raider
								1565,	-- Bloodsail Sea Dog
								4506,	-- Bloodsail Swabby
								1563,	-- Bloodsail Swashbuckler
								1564,	-- Bloodsail Warlock
								2551,	-- Brutus
								2548,	-- Captain Keelhaul
								2550,	-- Captain Stillwater
								2546,	-- Fleet Master Firallon
								2549,	-- Garr Salthoof
								2547,	-- Ironpatch
								43364,	-- Bloodsail Hooch-Hound
								43454,	-- "Good-Boy" Bruce
								43542,	-- Lime Thief
								43636,	-- Bloodsail Corsair
								43726,	-- Bloodsail Corsair
								44178,	-- Sweet Gary Guns
								44179,	-- Harry No-Hooks
								44182,	-- Gurlgrl
							},
						}),
					},
				}),
				q(600, {	-- Venture Company Mining
					["qg"] = 2498,	-- Crank Fizzlebub
					["sourceQuest"] = 605,	-- Singing Blue Shards
					["coord"] = { 27.1, 77.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Singing Blue Crystal
							["provider"] = { "i", 3917 },	-- Singing Blue Crystal
							["crs"] = {
								4723,	-- Foreman Cozzle
								675,	-- Venture Co. Foreman
								674,	-- Venture Co. Strip Miner
								676,	-- Venture Co. Surveyor
								677,	-- Venture Co. Tinkerer
								14492,	-- Verifonix <The Surveyor>
							},
						}),
						i(5253, {	-- Goblin Igniter
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4128, {	-- Silver Spade
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(609, {	-- Voodoo Dues
					["qg"] = 2501,	-- "Sea Wolf" MacKinley
					["sourceQuest"] = 607,	-- Return to MacKinley
					["coord"] = { 27.8, 77.1, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- Maury's Clubbed Foot
							["provider"] = { "i", 3924 },	-- Maury's Clubbed Foot
							["coord"] = { 35.2, 51.0, STRANGLETHORN_VALE },
							["cr"] = 2535,	-- Maury "Club Foot" Wilkins
						}),
						objective(2, {	-- Jon-Jon's Golden Spyglass
							["provider"] = { "i", 3925 },	-- Jon-Jon's Golden Spyglass
							["coord"] = { 34.8, 51.8, STRANGLETHORN_VALE },
							["cr"] = 2536,	-- Jon-Jon the Crow
						}),
						objective(3, {	-- Chucky's Huge Ring
							["provider"] = { "i", 3926 },	-- Chucky's Huge Ring
							["coord"] = { 40.2, 58.6, STRANGLETHORN_VALE },
							["cr"] = 2537,	-- Chucky "Ten Thumbs"
						}),
					},
				}),
				q(26631, {	-- Your First Day as a Pirate
					["providers"] = {
						{ "n", 43504 },	-- Yancey Grillsen
						{ "i", 59149 },	-- Yer Papers
					},
					["sourceQuests"] = {
						26630,	-- Looks Like a Tauren Pirate to Me
						26629,	-- Seeing Where Your Loyalties Lie
					},
					["coord"] = { 43.8, 56.4, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
				}),
				warchiefscommand(q(28704, {	-- Warchief's Command: The Cape of Stranglethorn!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { SILVERMOON_CITY, UNDERCITY },	-- Only found in Silvermoon City & Undercity in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 29. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 33. (TODO: Test max level)
					["lvl"] = { 29, 33 },
					-- #endif
				})),
				q(601, {	-- Water Elementals
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 578,	-- The Stone of the Tides
					["coord"] = { 27.2, 76.9, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/6 Water Elemental Bracers
							["provider"] = { "i", 3923 },	-- Water Elemental Bracers
							["cr"] = 691,	-- Lesser Water Elemental
						}),
					},
				}),
				q(580, {	-- Whiskey Slim's Lost Grog
					["qg"] = 2491,	-- Whiskey Slim
					["coord"] = { 27.1, 77.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/12 Pupellyverbos Port
							["providers"] = {
								{ "i", 3900 },	-- Pupellyverbos Port
								{ "o", 2068 },	-- Pupellyverbos Port
							},
							["coords"] = {
								{ 81.7, 49.3, THE_HINTERLANDS },
								{ 80.0, 59.8, THE_HINTERLANDS },
								{ 79.4, 70.4, THE_HINTERLANDS },
								{ 79.6, 81.5, THE_HINTERLANDS },
								{ 73.3, 96.9, THE_HINTERLANDS },
							},
						}),
					},
				}),
				q(621, {	-- Zanzil's Secret
					["qg"] = 2498,	-- Crank Fizzlebub
					["coord"] = { 27.1, 77.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/12 Zanzil's Mixture
							["provider"] = { "i", 4016 },	-- Zanzil's Mixture
							["crs"] = {
								2537,	-- Chucky "Ten Thumbs"
								2536,	-- Jon-Jon the Crow
								2535,	-- Maury "Club Foot" Wilkins
								2530,	-- Yenniku <Darkspear Hostage>
								1489,	-- Zanzil Hunter
								1491,	-- Zanzil Naga
								2534,	-- Zanzil the Outcast
								1490,	-- Zanzil Witch Doctor
								1488,	-- Zanzil Zombie
							},
						}),
						i(4131, {	-- Belt of Corruption
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26815, {	-- Zanzil's Secret (A)
					["qg"] = 44099,	-- Dask "The Flask" Gobfizzle
					["sourceQuest"] = 26817,	-- Perfectly Pure
					["coord"] = { 55.3, 41.9, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Zanzil's Mixture
							["provider"] = { "i", 4016 },	-- Zanzil's Mixture
							["crs"] = {
								2537,	-- Chucky "Ten Thumbs"
								2536,	-- Jon-Jon the Crow
								2535,	-- Maury "Club Foot" Wilkins
								2530,	-- Yenniku <Darkspear Hostage>
								1489,	-- Zanzil Hunter
								1491,	-- Zanzil Naga
								2534,	-- Zanzil the Outcast
								1490,	-- Zanzil Witch Doctor
								1488,	-- Zanzil Zombie
								43223,	-- Zanzil Mindslave
							},
						}),
					},
				}),
				q(26533, {	-- Zanzil's Secret (H)
					["qg"] = 43097,	-- Mixmaster Jasper
					["sourceQuest"] = 26494,	-- Mixmaster Jasper
					["coord"] = { 35.1, 27.4, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Zanzil's Mixture
							["provider"] = { "i", 4016 },	-- Zanzil's Mixture
							["crs"] = {
								2537,	-- Chucky "Ten Thumbs"
								2536,	-- Jon-Jon the Crow
								2535,	-- Maury "Club Foot" Wilkins
								2530,	-- Yenniku <Darkspear Hostage>
								1489,	-- Zanzil Hunter
								1491,	-- Zanzil Naga
								2534,	-- Zanzil the Outcast
								1490,	-- Zanzil Witch Doctor
								1488,	-- Zanzil Zombie
							},
						}),
					},
				}),
			}),
			n(RARES, {
				n(14491, {	-- Kurmokk
					["coords"] = {
						{ 58.0, 47.8, THE_CAPE_OF_STRANGLETHORN },
						{ 54.4, 52.2, THE_CAPE_OF_STRANGLETHORN },
						{ 51.0, 54.4, THE_CAPE_OF_STRANGLETHORN },
						{ 48.0, 58.0, THE_CAPE_OF_STRANGLETHORN },
					},
				}),
				n(2541, {	-- Lord Sakrasis
					["coord"] = { 43.8, 49.1, THE_CAPE_OF_STRANGLETHORN },
					["groups"] = {
						i(5028, {	-- Lord Sakrasis' Scepter
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(5029, {	-- Talisman of the Naga Lord
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(14490, {	-- Rippa
					["coord"] = { 41.4, 71.4, THE_CAPE_OF_STRANGLETHORN },
				}),
				n(1552, {	-- Scale Belly
					["coord"] = { 67.8, 25.4, THE_CAPE_OF_STRANGLETHORN },
					["description"] = "Found inside Crystalvein Mine.",
					["groups"] = {
						i(1604, {	-- Chromatic Sword
							["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
						}),
						i(4478, {	-- Iridescent Scale Leggings
							["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
						}),
					},
				}),
				n(14492, {	-- Verifonix <The Surveyor>
					["coord"] = { 53.2, 27.6, THE_CAPE_OF_STRANGLETHORN },
				}),
			}),
			n(VENDORS, {
				n(2846, {	-- Blixrez Goodstitch <Leatherworking Supplies>
					["coord"] = { 42.8, 74.1, THE_CAPE_OF_STRANGLETHORN },
					["groups"] = {
						i(5789, {	-- Pattern: Murloc Scale Bracers (RECIPE!)
							["isLimited"] = true,
						}),
						i(5788, {	-- Pattern: Thick Murloc Armor (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2672, {	-- Cowardly Crosby <Tailoring Supplies>
					["coord"] = { 40.8, 82.1, THE_CAPE_OF_STRANGLETHORN },
					["groups"] = {
						i(10318, {	-- Pattern: Admiral's Hat (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2838, {	-- Crazk Sparks <Fireworks Merchant>
					["coord"] = { 43.0, 72.7, THE_CAPE_OF_STRANGLETHORN },
					["groups"] = {
						i(18648, {	-- Schematic: Green Firework (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2845, {	-- Fargon Mortalak <Superior Armorer>
					["coord"] = { 44.1, 70.0, THE_CAPE_OF_STRANGLETHORN },
					["sym"] = {{"select","itemID",
						2419,	-- Augmented Chain Belt
						2420,	-- Augmented Chain Boots
						2421,	-- Augmented Chain Bracers
						2422,	-- Augmented Chain Gloves
						3891,	-- Augmented Chain Helm
						2418,	-- Augmented Chain Leggings
						2417,	-- Augmented Chain Vest
						2448,	-- Heavy Pavise
						17189,	-- Metal Buckler
					}},
					["groups"] = {
						i(12257, {	-- Heavy Notched Belt
							["isLimited"] = true,
						}),
					},
				}),
				n(2848, {	-- Glyx Brewright <Alchemy Supplies>
					["coord"] = { 42.7, 75.1, THE_CAPE_OF_STRANGLETHORN },
					["groups"] = {
						i(6056, {	-- Recipe: Frost Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
						i(6057, {	-- Recipe: Nature Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2839, {	-- Haren Kanmae <Superior Bowyer>
					["coord"] = { 42.9, 69.3, THE_CAPE_OF_STRANGLETHORN },
					["sym"] = {{"select","itemID",
						3027,	-- Heavy Recurve Bow
						3026,	-- Reinforced Bow
					}},
					["groups"] = {
						i(11305, {	-- Dense Shortbow
							["isLimited"] = true,
						}),
					},
				}),
				n(44179, {	-- Harry No-Hooks <Birds and Rum>
					["description"] = "If you don't have the required reputation with Bloodsail Buccaneers, these pets are also sold in Booty Bay by Narkk.",
					["minReputation"] = { FACTION_BLOODSAIL_BUCCANEERS, FRIENDLY },	-- Bloodsail Buccaneers
					["coord"] = { 46.6, 93.6, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(8495),	-- Senegal (PET!)
						i(8496),	-- Cockatiel (PET!)
					},
				}),
				n(2843, {	-- Jutak <Blade Trader>
					["coord"] = { 41.6, 74.1, THE_CAPE_OF_STRANGLETHORN },
					["sym"] = {{"select","itemID",
						2520,	-- Broadsword
						2528,	-- Falchion
						2521,	-- Flamberge
						2526,	-- Main Gauche
						2534,	-- Rondel
						2529,	-- Zweihander
					}},
					["groups"] = {
						i(12248, {	-- Daring Dirk
							["isLimited"] = true,
						}),
						i(12162, {	-- Plans: Hardened Iron Shortsword (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2664, {	-- Kelsey Yance <Cook>
					["coord"] = { 42.8, 69.0, THE_CAPE_OF_STRANGLETHORN },
					["groups"] = {
						i(13940),	-- Recipe: Cooked Glossy Mightfish (RECIPE!)
						i(13941),	-- Recipe: Filet of Redgill (RECIPE!)
						i(6039),	-- Recipe: Giant Clam Scorcho (RECIPE!)
						i(13943),	-- Recipe: Hot Smoked Bass (RECIPE!)
						i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
						i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(2840, {	-- Kizz Bluntstrike <Macecrafter>
					["coord"] = { 42.9, 70.4, THE_CAPE_OF_STRANGLETHORN },
					["sym"] = {{"select","itemID",
						1197,	-- Giant Mace
						852,	-- Mace
					}},
					["groups"] = {
						i(4778, {	-- Heavy Spiked Mace
							["isLimited"] = true,
						}),
						i(4777, {	-- Ironwood Maul
							["isLimited"] = true,
						}),
					},
				}),
				n(44083, {	-- Linzi Hewstrike
					["coord"] = { 55.4, 42.2, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2471,	-- Reinforced Leather Belt
						2473,	-- Reinforced Leather Boots
						2474,	-- Reinforced Leather Bracers
						3893,	-- Reinforced Leather Cap
						2475,	-- Reinforced Leather Gloves
						2472,	-- Reinforced Leather Pants
						2470,	-- Reinforced Leather Vest
						2464,	-- Studded Belt
						2467,	-- Studded Boots
						2468,	-- Studded Bracers
						2463,	-- Studded Doublet
						2469,	-- Studded Gloves
						3890,	-- Studded Hat
						2465,	-- Studded Pants
					}},
				}),
				n(2685, {	-- Mazk Snipeshot <Engineering Supplies>
					["coord"] = { 43.2, 70.2, THE_CAPE_OF_STRANGLETHORN },
					["groups"] = {
						i(13310, {	-- Schematic: Accurate Scope (RECIPE!)
							["timeline"] = { REMOVED_5_0_4 },	-- Now taught by trainer, recipe removed from the game.
						}),
						i(18651, {	-- Schematic: Truesilver Transformer (RECIPE!)
							["timeline"] = { REMOVED_2_0_1 },	-- Now taught by trainer, recipe removed from the game.
						}),
					},
				}),
				n(54232, {	-- Mrs. Gant <Cooking Trainer & Supplies>
					["coord"] = { 42.7, 72.7, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_2_0 },
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
						i(16767, {	-- Recipe: Undermine Clam Chowder (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2663, {	-- Narkk <Pirate Supplies>
					["coord"] = { 42.6, 69.1, THE_CAPE_OF_STRANGLETHORN },
					["groups"] = {
						i(8496),	-- Cockatiel (PET!)
						i(8495),	-- Senegal (PET!)
						i(10728, {	-- Pattern: Black Swashbuckler's Shirt (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2626, {	-- Old Man Heming <Fisherman>
					["coord"] = { 41.6, 73.4, THE_CAPE_OF_STRANGLETHORN },
					["groups"] = {
						i(16083, {	-- Expert Fishing - The Bass and You
							["timeline"] = { REMOVED_3_1_0 },
							-- #if SEASON_OF_DISCOVERY
							["OnUpdate"] = [[function(t)
								if C_Seasons and C_Seasons.GetActiveSeason() == 2 then
									t.u = ]] .. SOD_PHASE_TWO .. [[;
								end
								t.OnUpdate = nil;
							end]],
							-- #endif
							["rank"] = 3,
						}),
					},
				}),
				n(2849, {	-- Qixdi Goodstitch <Cloth Armor & Accessories>
					["coord"] = { 42.7, 74.2, THE_CAPE_OF_STRANGLETHORN },
					["sym"] = {{"select","itemID",
						2435,	-- Embroidered Armor
						3587,	-- Embroidered Belt
						2438,	-- Embroidered Boots
						3588,	-- Embroidered Bracers
						2440,	-- Embroidered Gloves
						3892,	-- Embroidered Hat
						2437,	-- Embroidered Pants
						2160,	-- Padded Armor
						3591,	-- Padded Belt
						2156,	-- Padded Boots
						3592,	-- Padded Bracers
						2158,	-- Padded Gloves
						2159,	-- Padded Pants
						3593,	-- Russet Belt
						2432,	-- Russet Boots
						3594,	-- Russet Bracers
						2434,	-- Russet Gloves
						3889,	-- Russet Hat
						2431,	-- Russet Pants
						2429,	-- Russet Vest
						3597,	-- Thick Cloth Belt
						3598,	-- Thick Cloth Bracers
						203,	-- Thick Cloth Gloves
						201,	-- Thick Cloth Pants
						202,	-- Thick Cloth Shoes
						200,	-- Thick Cloth Vest
					}},
				}),
				n(2699, {	-- Rikqiz <Leatherworking Supplies>
					["coord"] = { 43.2, 71.7, THE_CAPE_OF_STRANGLETHORN },
					["g"] = {
						i(14635, {	-- Pattern: Gem-Studded Leather Belt (RECIPE!)
							["isLimited"] = true,
						}),
						i(18239, {	-- Pattern: Shadowskin Gloves (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(151042, {	-- Skin-Me-Own-Coat Dibblefur <T-Shirt Scalper>
					["coord"] = { 42.1, 73.8, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_8_1_5 },
					["groups"] = {
						i(167227, {	-- Gild's Crewneck
							["timeline"] = { ADDED_8_1_5 },
						}),
						i(167208, {	-- Jade's Lovely Shirt
							["timeline"] = { ADDED_8_1_5 },
						}),
						i(167223, {	-- Selis' Silk Shirt
							["timeline"] = { ADDED_8_1_5 },
						}),
						i(167230, {	-- Shirtsi's Cloth Shirt
							["timeline"] = { ADDED_8_1_5 },
						}),
						i(167213, {	-- Shuurt's Precious
							["timeline"] = { ADDED_8_1_5 },
						}),
						i(167221, {	-- Threads of Tirion
							["timeline"] = { ADDED_8_1_5 },
						}),
						i(167214, {	-- Tia Shortsleeve's Short Sleeve Shirt
							["timeline"] = { ADDED_8_1_5 },
						}),
					},
				}),
				n(105637, {	-- Scowling Rosa <Texts and Specialty Goods>
					["description"] = "These are completely useless as far as we know. I bought one of each and they're sitting in my bank just in case Blizzard ever removes the vendor.\n - Crieve",
					["timeline"] = { ADDED_7_1_0 },
					["groups"] = {
						i(140101, {	-- A Hypothetical Examination of the Legion's Weaknesses
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(140133, {	-- Axe, Blade, and Fist
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(140109, {	-- How to Meditate in a Hurricane
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(140113, {	-- Legends of the Silver Hand
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(139403, {	-- Powerful Magical Foci and Those Who Wielded Them
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(140097, {	-- The Fall of Lordaeron and the Scouring of the Eastweald
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(140125, {	-- The Fall of the Warchief
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(140117, {	-- The Hunt for Light's Wrath
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(140121, {	-- The Seven Curses of the Southern Seas
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(140093, {	-- The Untold Tales of the War of the Ancients
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				n(2670, {	-- Xizk Goodstitch <Tailoring Supplies>
					["coord"] = { 43.6, 73.1, THE_CAPE_OF_STRANGLETHORN },
					["groups"] = {
						i(7087, {	-- Pattern: Crimson Silk Cloak (RECIPE!)
							["isLimited"] = true,
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_TWO, i(217258, {	-- Pattern: Enchanter's Cowl (RECIPE!)
							["timeline"] = { ADDED_1_15_1 },
							["isLimited"] = true,
						})),
						-- #endif
						i(14630, {	-- Pattern: Enchanter's Cowl (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_1 },
							-- #endif
							["isLimited"] = true,
						}),
					},
				}),
				n(2482, {	-- Zarena Cromwind <Superior Weaponsmith>
					["coord"] = { 43.0, 70.8, THE_CAPE_OF_STRANGLETHORN },
					["sym"] = {{"select","itemID",
						2527,	-- Battle Staff
						2520,	-- Broadsword
						2523,	-- Bullova
						2522,	-- Crescent Axe
						2521,	-- Flamberge
						2526,	-- Main Gauche
						2524,	-- Truncheon
						2525,	-- War Hammer
					}},
					["groups"] = {
						i(12251, {	-- Big Stick
							["isLimited"] = true,
						}),
						i(12163, {	-- Plans: Moonsteel Broadsword (RECIPE!)
							["isLimited"] = true,
						}),
						i(12252, {	-- Staff of Protection
							["isLimited"] = true,
						}),
					},
				}),
				n(8116, {	-- Ziggle Sparks
					["coord"] = { 41.6, 74.4, THE_CAPE_OF_STRANGLETHORN },
					["races"] = ALLIANCE_ONLY,
					["description"] =
						-- #if BEFORE 10.1
						"This NPC is only available on July 4th (US) or September 30th (EU).",
						-- #else
						"This NPC is only available on July 4th.",
						-- #endif
					["sym"] = {{"select", "itemID",
						8626,	-- Blue Sparkler
						8625,	-- White Sparkler
						8624,	-- Red Sparkler
					}},
				}),
			}),
			n(ZONE_DROPS, {
				i(5079, {	-- Cold Basilisk Eye
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 690,	-- Cold Eye Basilisk
				}),
				i(2955, {	-- First Mate Hat
					-- #if BEFORE CATA
					["crs"] = {
						2545,	-- "Pretty Boy" Duncan
						4505,	-- Bloodsail Deckhand
						1653,	-- Bloodsail Elder Magus
						1562,	-- Bloodsail Mage
						1561,	-- Bloodsail Raider
						1563,	-- Bloodsail Swashbuckler
						1564,	-- Bloodsail Warlock
					},
					-- #else
					["description"] = "This item has a chance to drop from any killed creature in the zone.",
					-- #endif
				}),
				i(8494, {	-- Hyacinth Macaw (PET!)
					["timeline"] = { ADDED_1_11_1 },
					-- #if BEFORE CATA
					["crs"] = {
						4505,	-- Bloodsail Deckhand
						1653,	-- Bloodsail Elder Magus
						4506,	-- Bloodsail Swabby
						1563,	-- Bloodsail Swashbuckler
						1564,	-- Bloodsail Warlock
						2546,	-- Fleet Master Firallon
					},
					-- #else
					["description"] = "This item has a chance to drop from any killed creature in the zone.",
					-- #endif
				}),
				i(5789, {	-- Pattern: Murloc Scale Bracers (RECIPE!)
					["cr"] = 1561,	-- Bloodsail Raider
				}),
				i(48126, {	-- Razzashi Hatchling (PET!)
					["timeline"] = { ADDED_3_2_0 },
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.CLASSIC, bubbleDownSelf({ ["timeline"] = { ADDED_1_11_1 } }, {
	m(EASTERN_KINGDOMS, {
		m(THE_CAPE_OF_STRANGLETHORN, {
			q(7908, {["timeline"] = { ADDED_1_12_1 }}),	-- Arena Master [Old] - completed with quest 7810
			q(618),		-- Facing Negolash [Old] - completed with quest 8554
			q(614),		-- The Captain's Chest [Old] - completed with quest 8551
			q(615, {["timeline"] = { ADDED_1_12_1 }}),		-- The Captain's Cutlass [Old] - completed with quest 8553
			q(620, {["timeline"] = { ADDED_1_12_1 }}),		-- The Monogrammed Sash [Old] - completed with quest 8552
		}),
	}),
})));
-- #endif
