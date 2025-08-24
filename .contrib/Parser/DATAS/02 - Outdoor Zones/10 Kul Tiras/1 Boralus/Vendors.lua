---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(BORALUS, {
		n(VENDORS, {
			n(142190, {	-- Alchemist Hart <Amateur Potions>
				["coord"] = { 66.8, 41.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(9144, {	-- Wildvine Potion
						["timeline"] = { ADDED_8_0_1 },
					}),
				},
			}),
			n(137431, {	-- Annie Lacier
				["coord"] = { 50.6, 49.8, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2130,	-- Club
					851,	-- Cutlass
					2139,	-- Dirk
					927,	-- Double Axe
					2028,	-- Hammer
					2134,	-- Hand Axe
					852,	-- Mace
					2027,	-- Scimitar
					2131,	-- Shortsword
				}},
				["groups"] = {
					i(15905),	-- Brass Knuckles
				},
			}),
			n(142165, {	-- Arwin Blakemore <Thrift Goods>
				["coord"] = { 66.5, 40.9, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(3363),	-- Frayed Belt
					i(3365),	-- Frayed Bracers
					i(1376),	-- Frayed Cloak
					i(1377),	-- Frayed Gloves
					i(1378),	-- Frayed Pants
					i(1380),	-- Frayed Robe
					i(1374),	-- Frayed Shoes
					i(1372),	-- Ragged Cloak
					i(1369),	-- Ragged Leather Belt
					i(1367),	-- Ragged Leather Boots
					i(1370),	-- Ragged Leather Bracers
					i(1368),	-- Ragged Leather Gloves
					i(1366),	-- Ragged Leather Pants
					i(1364),	-- Ragged Leather Vest
				},
			}),
			n(161565, {	-- Bragni <Profession Liason>
				["coord"] = { 56.3, 27.2, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = COMMON_BFA_PVP_RECIPES_S4,
			}),
			n(148922, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {	-- Captain Klarisa
				["coord"] = { 66.0, 32.2, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(166491, {	-- Albino Duskwatcher (PET!)
						["cost"] = { { "c", 1710, 200 }, },	-- 200x Seaferer's Dubloon
					}),
					i(160286, {	-- Blue Tricorne Hat
						["cost"] = { { "c", 1710, 100 }, },	-- 100x Seaferer's Dubloon
					}),
					i(166662, {	-- Cranky Crab (TOY!)
						["cost"] = { { "c", 1710, 200 }, },	-- 200x Seaferer's Dubloon
					}),
					i(166500, {	-- Crimson Octopode (PET!)
						["cost"] = { { "c", 1710, 100 }, },	-- 100x Seaferer's Dubloon
					}),
					i(163616, {	-- Dented Coin (A)
						["description"] = "|CFFFF0000Turn in to Cyrus Crestfall in Boralus for Proudmoore Admiralty rep.|r",
					}),
					i(163614, {	-- Exotic Spices (A)
						["description"] = "|CFFFF0000Turn in to Xun Xun Sweetflower in Drustvar for Order of Embers rep.|r",
					}),
					i(166461, {	-- Gnarlwood Waveboard (TOY!)
						["cost"] = { { "c", 1710, 300 }, },	-- 300x Seaferer's Dubloon
					}),
					i(160289, {	-- Grey Tricorne Hat
						["cost"] = { { "c", 1710, 100 }, },	-- 100x Seaferer's Dubloon
					}),
					i(166663, {	-- Hand Anchor (TOY!)
						["cost"] = { { "c", 1710, 150 }, },	-- 150x Seaferer's Dubloon
					}),
					i(167855, {	-- Island Expedition Belt
						["cost"] = { { "c", 1710, 35 }, },	-- 35x Seaferer's Dubloon
					}),
					i(167850, {	-- Island Expedition Boots
						["cost"] = { { "c", 1710, 35 }, },	-- 35x Seaferer's Dubloon
					}),
					i(167848, {	-- Island Expedition Bracers
						["cost"] = { { "c", 1710, 35 }, },	-- 35x Seaferer's Dubloon
					}),
					i(167858, {	-- Island Expedition Cloak
						["cost"] = { { "c", 1710, 35 }, },	-- 35x Seaferer's Dubloon
						["groups"] = {
							i(160332, {	-- Mud-Slicked Capote -- Opening on Alliance
								["races"] = ALLIANCE_ONLY,
							}),
							i(155305, {	-- Golden City Greatcloak -- Opening on Horde
								["races"] = HORDE_ONLY,
							}),
						},
					}),
					i(167851, {	-- Island Expedition Gloves
						["cost"] = { { "c", 1710, 35 }, },	-- 35x Seaferer's Dubloon
					}),
					i(167853, {	-- Island Expedition Legwear
						["cost"] = { { "c", 1710, 35 }, },	-- 35x Seaferer's Dubloon
					}),
					i(163615, {	-- Lost Sea Scroll (A)
						["description"] = "|CFFFF0000Turn in to Brother Pike in Stormsong Valley for Storm's Wake rep.|r",
					}),
					i(166749, {	-- Lyrics: Song of the Sea (CI!)
						["cost"] = { { "c", 1710, 25 }, },	-- 25x Seaferer's Dubloon
					}),
					i(160290, {	-- Red Tricorne Hat
						["cost"] = { { "c", 1710, 100 }, },	-- 100x Seaferer's Dubloon
					}),
					i(166471, {	-- Saltwater Seahorse (MOUNT!)
						["cost"] = { { "c", 1710, 500 }, },	-- 500x Seaferer's Dubloon
					}),
					i(166745, {	-- Siltwing Albatross (MOUNT!)
						["cost"] = { { "c", 1710, 1000 }, },	-- 1,000x Seaferer's Dubloon
					}),
					i(166501, {	-- Soggy Page
						["description"] = "|CFFFF0000Turn in to Collector Kojo in Stormsong Valley (Alliance) or Zuldazar (Horde) for Tortollan Seekers rep.|r",
						["cost"] = { { "c", 1710, 100 }, },	-- 100x Seaferer's Dubloon
					}),
				},
			})),
			n(161091, {	-- Captain Nightrunner
				["coord"] = { 66.2, 32.1, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = sharedData({
					["modID"] = 14,
				},{
					i(173950, {	-- Crestfall Salvage
						["cost"] = {{ "c", 1710, 175 }},	-- 175x Seafarer's Dubloons
						["sym"] = {{"sub","common_island_expedition_salvage",MOUNTS,BATTLE_PETS,MISC},{"fill"}},
					}),
					i(173949, {	-- Dread Chain Salvage
						["cost"] = {{ "c", 1710, 175 }},	-- 175x Seafarer's Dubloons
						["sym"] = {{"sub","common_island_expedition_salvage",MOUNTS,BATTLE_PETS,MISC},{"fill"}},
					}),
					i(173988, {	-- Havenswood Salvage
						["cost"] = {{ "c", 1710, 175 }},	-- 175x Seafarer's Dubloons
						["sym"] = {{"sub","common_island_expedition_salvage",MOUNTS,BATTLE_PETS,MISC},{"fill"}},
					}),
					i(173989, {	-- Jorundall Salvage
						["cost"] = {{ "c", 1710, 175 }},	-- 175x Seafarer's Dubloons
						["sym"] = {{"sub","common_island_expedition_salvage",MOUNTS,BATTLE_PETS,MISC},{"fill"}},
					}),
					i(173991, {	-- Rotting Mire Salvage
						["cost"] = {{ "c", 1710, 175 }},	-- 175x Seafarer's Dubloons
						["sym"] = {{"sub","common_island_expedition_salvage",MOUNTS,BATTLE_PETS,MISC},{"fill"}},
					}),
					i(173992, {	-- Skittering Hollow Salvage
						["cost"] = {{ "c", 1710, 175 }},	-- 175x Seafarer's Dubloons
						["sym"] = {{"sub","common_island_expedition_salvage",MOUNTS,BATTLE_PETS,MISC},{"fill"}},
					}),
					i(173993, {	-- Snowblossom Salvage
						["cost"] = {{ "c", 1710, 175 }},	-- 175x Seafarer's Dubloons
						["sym"] = {{"sub","common_island_expedition_salvage",MOUNTS,BATTLE_PETS,MISC},{"fill"}},
					}),
					i(173990, {	-- Molten Cay Salvage
						["cost"] = {{ "c", 1710, 120 }},	-- 120x Seafarer's Dubloons
						["sym"] = {{"sub","common_island_expedition_salvage",MOUNTS,BATTLE_PETS,MISC},{"fill"}},
					}),
					i(173994, {	-- Un'gol Ruins Salvage
						["cost"] = {{ "c", 1710, 120 }},	-- 120x Seafarer's Dubloons
						["sym"] = {{"sub","common_island_expedition_salvage",MOUNTS,BATTLE_PETS,MISC},{"fill"}},
					}),
					i(173996, {	-- Verdant Wilds Salvage
						["cost"] = {{ "c", 1710, 120 }},	-- 120x Seafarer's Dubloons
						["sym"] = {{"sub","common_island_expedition_salvage",MOUNTS,BATTLE_PETS,MISC},{"fill"}},
					}),
					i(173997, {	-- Whispering Reef Salvage
						["cost"] = {{ "c", 1710, 120 }},	-- 120x Seafarer's Dubloons
						["sym"] = {{"sub","common_island_expedition_salvage",MOUNTS,BATTLE_PETS,MISC},{"fill"}},
					}),
					i(173987, {	-- Elemental Salvage
						["cost"] = {{ "c", 1710, 75 }},	-- 75x Seafarer's Dubloons
						["sym"] = {{"sub","common_island_expedition_salvage",BATTLE_PETS,MISC},{"fill"}},
					}),
					i(173995, {	-- Venture Co 'Salvage'
						["cost"] = {{ "c", 1710, 50 }},	-- 50x Seafarer's Dubloons
						["sym"] = {{"sub","common_island_expedition_salvage",MISC},{"fill"}},
					}),
				}),
			}),
			n(136063, {	-- Cassandra Brennor <Leatherworking Trainer>
				["coord"] = { 75.5, 12.6, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(168028, {	-- Pattern: Mallet of Thunderous Skins (RECIPE!)
						["sourceQuests"] = { 55235 },	-- Instruments of Destruction
						["timeline"] = { ADDED_8_1_5 },
					}),
				},
			}),
			n(141009, {	-- Col. Tenders <Chicken Vendor>
				["coord"] = { 59.8, 22.2, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(11023),	-- Ancona Chicken (PET!)
				},
			}),
			n(142065, {	-- Dana Pull
				["coord"] = { 50.8, 46.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(163495, {	-- Greatwing Macaw (PET!)
						["sourceQuests"] = { 49403 },	-- Rodrigo's Revenge
						["cost"] = { { "i", POLISHED_PET_CHARM, 50 }, },
					}),
					i(163496, {	-- Mechanical Prarie Dog (PET!)
						["sourceQuests"] = { 51426 },	-- Inspection Gadget
						["cost"] = { { "i", POLISHED_PET_CHARM, 75 }, },
					}),
				},
			}),
			n(136071, {	-- Daniel Brineweaver <Tailoring Trainer>
				["coord"] = { 76.8, 11.2, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(159959),	-- Nylon Thread
					i(168029, {	-- Pattern: Synchronous Thread
						["description"] = "This recipe is for relearning the Synchronous Thread after you have completed the Tools of the Trade questline.",
						["sourceQuests"] = {
							53881,	-- Cut from the Same Cloth (Alliance)
							53962,	-- Cut from the Same Cloth (Horde)
						},
						["cost"] = 10450000,	-- 1,045g
					}),
				},
			}),
			n(148024, {	-- Dodger <Pet Smuggler>
				["description"] = "To unlock this vendor, win PvP pet battles until the mission \"A Shady Message\" spawns. Complete the mission, and you'll be able to purchase items from the vendor. It could take 1, 10, 100 or 1,000 PvP pet battles before it spawns.",
				["coord"] = { 68.9, 17.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(163506, {	-- Accursed Hexxer (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 500 }, },
					}),
					i(163500, {	-- Bloodfeaster Larva (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 200 }, },
					}),
					i(163504, {	-- Child of Jani (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 100 }, },
					}),
					i(163503, {	-- Ranishu Runt (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 250 }, },
					}),
					i(163499, {	-- Zandalari Shinchomper (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 50 }, },
					}),
					i(163498, {	-- Tiny Direhorn (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 100 }, },
					}),
					i(163505, {	-- Swamp Toad (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 200 }, },
					}),
				},
			}),
			n(136041, {	-- Emily Fairweather <Enchanting Trainer>
				["coord"] = { 74.1, 11.4, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(168024, {	-- Formula: Iwen's Enchanting Rod (RECIPE!)
						["sourceQuest"] = 54002,	-- Putting it All Together
						["timeline"] = { ADDED_8_1_5 },
					}),
				},
			}),
			n(132228, {	-- Elric Whalgrene <Alchemy Trainer>
				["coord"] = { 74.1, 6.75, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(166422, {	-- Recipe: Silas' Sphere of Transmutation (RECIPE!)
						["sourceQuests"] = { 50129 },	-- A Recipe for Success
					}),
				},
			}),
			n(133536, {	-- Grix "Ironfists" Barlow <Blacksmithing Trainer>
				["coord"] = { 73.5, 8.57, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160298),	-- Durable Flux
					i(168022, {	-- Plans: Khaz'gorian Smithing Hammer (RECIPE!)
						["sourceQuests"] = { 50275 },	-- Anvil's Away (A)
						["timeline"] = { ADDED_8_1_5 },
					}),
				},
			}),
			n(136059, {	-- Layla Evenkeel <Engineering Trainer>
				["coord"] = { 77.6, 14.3, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(168025, {	-- Book of Schematics: Ub3r-Spanner
						["sourceQuests"] = { 53949 },	-- The Ub3r-Spanner (A)
						["groups"] = {
							r(282975),	-- The Ub3r-Spanner (RECIPE!)
							r(283399),	-- Ub3r-Module: Short-Fused Bomb Bots (RECIPE!)
							r(283403),	-- Ub3r-Module: Ub3r-Improved Target Dummy (RECIPE!)
							r(283401),	-- Ub3r-Module: Ub3r S3ntry Mk. X8.0 (RECIPE!)
						},
					}),
					i(160502),	-- Chemical Blasting Cap
					i(163569),	-- Insulated Wiring
				},
			}),
			n(142564, {	-- Leedan Gustaf <Profession Liason> [NOTE: PvP Craftable Recipes]
				["coord"] = { 56.0, 26.8, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = COMMON_BFA_PVP_RECIPES_S1_S2,
			}),
			n(145838, {	-- Marshal Frazer
				["coord"] = { 56.4, 26.9, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
				--	i(139775),	-- Alliance Enthusiast (PET!)
				--	i(142379),	-- Dutiful Squire (PET!)
				},
			}),
			n(143560, {	-- Marshal Gabriel
				["coord"] = { 56.2, 25.7, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					moh(5, i(168920, {	-- Azerite-Encrusted Timequartz (Rank 1)
						["sourceQuests"] = { 56499 },	-- Storming the Battlefields
					})),
					moh(10, i(168921, {	-- Azerite-Infused Timequartz [Rank 2]
						["description"] = "Requires completing the achievement |cffffff00Battlefield Brawler|r.\n",
					})),
					moh(10, i(168922, {	-- Azerite-Fueled Timequartz [Rank 3]
						["description"] = "Requires completing the achievement |cffffff00Battlefield Tactician|r.\n",
					})),
					moh(25, i(168923, {	-- Unburdened Azerite Timequartz (Rank 4)
						["u"] = REMOVED_FROM_GAME,
						["description"] = "Requires completing the achievement |cffffff00Battlefield Master|r.\n",
					})),
					moh(5, i(168442, {	-- Roiling Blood of the Vanquished (Rank 1)
						["sourceQuests"] = { 56499 },	-- Storming the Battlefields
					})),
					moh(25, i(168443, {	-- Agitated Blood of the Dominated [Rank 2]
						["description"] = "Requires completing the achievement |cffffff00Battlefield Brawler|r.\n",
					})),
					moh(25, i(168444, {	-- Churning Blood of the Conquered [Rank 3]
						["description"] = "Requires completing the achievement |cffffff00Battlefield Tactician|r.\n",
					})),
					moh(25, i(168814, {	-- Animated Blood of the Decimated (Rank 4)
						["u"] = REMOVED_FROM_GAME,
						["description"] = "Requires completing the achievement |cffffff00Battlefield Master|r.\n",
					})),
					moh(5, i(168578, {	-- Sphere of Suppressed Force (Rank 1)
						["sourceQuests"] = { 56499 },	-- Storming the Battlefields
					})),
					moh(10, i(168579, {	-- Sphere of Unrestrained Fury [Rank 2]
						["description"] = "Requires completing the achievement |cffffff00Battlefield Brawler|r.\n",
					})),
					moh(25, i(168580, {	-- Sphere of Leeched Mobility [Rank 3]
						["description"] = "Requires completing the achievement |cffffff00Battlefield Tactician|r.\n",
					})),
					moh(25, i(168581, {	-- Sphere of Incandescent Neutralization (Rank 4)
						["u"] = REMOVED_FROM_GAME,
						["description"] = "Requires completing the achievement |cffffff00Battlefield Master|r.\n",
						["classes"] = TANKS,
					})),
				},
			}),
			n(148228, {	-- Marvin Sipsquall <Shirt Vendor>
				["coord"] = { 76.8, 11.6, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {
					{"sub", "common_vendor", 29491},	-- Karandonna <Clothier>
				},
			}),
			n(123675, {	-- Patrick Markson
				["coord"] = { 74.0, 16.2, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					3024,	-- Bkp 2700 Enforcer
					2511,	-- Hunter's Boomstick
					3023,	-- Large Bore Blunderbuss
					2509,	-- Ornate Blunderbuss
					2510,	-- Solid Blunderbuss
				}},
				["groups"] = {
					i(3025),	-- BKP 42 "Ultra"
				},
			}),
			n(142169, {	-- Phil Gresham <Cobbler>
				["coord"] = { 70.6, 19.6, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2143,	-- Cuirboulli Boots
					238,	-- Cured Leather Boots
					2438,	-- Embroidered Boots
					792,	-- Knitted Sandals
					2156,	-- Padded Boots
					2473,	-- Reinforced Leather Boots
					843,	-- Tanned Leather Boots
				}},
				["groups"] = {
					i(20921),	-- Sun Cured Boots
				},
			}),
			n(135808, {	-- Provisioner Fray <Proudmoore Admiralty Emissary>
				["coord"] = { 67.5, 21.5, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = bubbleDownClassicRep(FACTION_PROUDMOORE_ADMIRALTY, {
					{		-- Neutral
					}, {	-- Friendly
					}, {	-- Honored
						i(163201, {	-- Gnoll Targetting Barrel (TOY!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(160534, {	-- Navy Blue Boat Cloak
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162327, {	-- Schematic: AZ3-R1-T3 Bionic Bifocals [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162359, {	-- Technique: Contract: Proudmoore Admiralty [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
					}, {	-- Revered
						i(161976, {	-- Admiralty Marine's Duffel
							["cost"] = 30000000,	-- 3,000g
							["groups"] = { h(i(166700)) },	-- Durable Sailor's Duffel (xfer only)
						}),
						i(163200, {	-- Cursed Spyglass (TOY!)
							["cost"] = 18000000,	-- 1,800g
						}),
						i(162380, {	-- Design: Tidal Amethyst Loop [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162304, {	-- Formula: Enchant Ring - Pact of Mastery [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162317, {	-- Formula: Enchant Weapon - Masterful Navigation [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162316, {	-- Formula: Enchant Weapon - Siphoning [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161569, {	-- Master-At-Arms Wristguards
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162414, {	-- Pattern: Hardened Tempest Knuckles [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162413, {	-- Pattern: Mistscale Knuckles [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161573, {	-- Proudmoore Marine's Legplates
							["cost"] = 14000000,	-- 1,400g
						}),
						i(163316, {	-- Recipe: Battle Potion of Intellect [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162254, {	-- Recipe: Coastal Mana Potion [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162134, {	-- Recipe: Flask of the Vast Horizon [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162130, {	-- Recipe: Potion of Bursting Blood [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161567, {	-- Sailing Master's Sash
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162328, {	-- Schematic: AZ3-R1-T3 Bionic Bifocals [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161572, {	-- Yardarm Sharpshooter's Boots
							["cost"] = 14000000,	-- 1,400g
						}),
					}, {	-- Exalted
						i(161574, {	-- Boarding Action Vambraces
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161571, {	-- Cordage Sliding Grips
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161570, {	-- First Lieutenant's Ceremonial Belt
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161568, {	-- Maritime Spellweaver's Leggings
							["cost"] = 19000000,	-- 1,900g
						}),
						i(160540, {	-- Proudmoore Admiralty Tabard
							["cost"] = 5000000,	-- 500g
						}),
						i(161911, {	-- Reins of the Admiralty Stallion (MOUNT!)
							["cost"] = 100000000,	-- 10,000g
							["races"] = ALLIANCE_ONLY,
						}),
						i(161879, {	-- Reins of the Proudmoore Sea Scout (MOUNT!)
							["cost"] = 900000000,	-- 90,000g
							["races"] = ALLIANCE_ONLY,
						}),
						i(166277, {	-- Schematic: Unstable Temporal Time Shifter [Rank 2] (RECIPE!)
							["cost"] = 19000000,	-- 1,900g
							["timeline"] = { ADDED_8_1_0 },
						}),
					},
				}),
			}),
			n(148927, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {	-- Provisioner Stoutforge
				["coord"] = { 66.8, 25.7, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(166465, {	-- Azureshell Krolusk (MOUNT!)
						["cost"] = { { "c", 1717, 200 }, },	-- 200x Legion Service Medal
					}),
					i(166770, {	-- Banded Gilnean Cloak
						["cost"] = { { "c", 1717, 75 }, },	-- 75x Legion Service Medal
					}),
					i(166560, {	-- Captain's Signet of Command
						["cost"] = { { "c", 1717, 300 }, },	-- 300x Legion Service Medal
					}),
					i(166750, {	-- Draught of Ten Lands
						["cost"] = { { "c", 1717, 5 }, },	-- 5x Legion Service Medal
					}),
					i(166769, {	-- Dwarven War Horn
						["cost"] = { { "c", 1717, 75 }, },	-- 75x Legion Service Medal
					}),
					i(166744, {	-- Glaive Tosser (TOY!)
						["cost"] = { { "c", 1717, 125 }, },	-- 125x Legion Service Medal
					}),
					i(166768, {	-- Hymnal of the 7th Legion
						["cost"] = { { "c", 1717, 75 }, },	-- 75x Legion Service Medal
					}),
					i(166767, {	-- Kaldorei Powder of Twilight
						["cost"] = { { "c", 1717, 75 }, },	-- 75x Legion Service Medal
					}),
					i(166463, {	-- Priestess' Moonsaber (MOUNT!)
						["cost"] = { { "c", 1717, 750 }, },	-- 750x Legion Service Medal
					}),
					i(166550, {	-- Royal Blue Cloak
						["cost"] = { { "c", 1717, 125 }, },	-- 125x Legion Service Medal
					}),
					i(166436, {	-- Sandy Nightsaber (A) (MOUNT!)
						["cost"] = { { "c", 1717, 350 }, },	-- 350x Legion Service Medal
					}),
					i(166766, {	-- Tidesages' Warscroll
						["cost"] = { { "c", 1717, 75 }, },	-- 75x Legion Service Medal
					}),
					i(166346, {	-- Trecker (PET!)
						["cost"] = { { "c", 1717, 100 }, },	-- 100x Legion Service Medal
					}),
					i(166548, {	-- War-Torn Royal Blue Cloak
						["cost"] = { { "c", 1717, 50 }, },	-- 50x Legion Service Medal
					}),
				},
			})),
			n(130368, {	-- Samuel D. Colton III <Jewelcrafting Trainer>
				["coord"] = { 75.0, 10.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(168027, {	-- Design: Jewelhammer's Focus (RECIPE!)
						["sourceQuest"] = 49584,	-- The Missing Chapter [A]
					}),
				},
			}),
			n(149045, {	-- Thaumaturge Vashreen <Purveyor of Exquisite Furnishings>
				["coord"] = { 71.7, 13.7, BORALUS },
				["groups"] = {
					i(168623, {	-- Biconcavic Lens of the Focusing Iris (Rank 4)
						["u"] = REMOVED_FROM_GAME,
						["description"] = "Requires completing the achievement |cffffff00Battle for Azeroth Keystone Master|r.\n",
						["cost"] = { { "c", 1718, 800 }, },	-- 800x Titan Residuum
					}),
					i(168560, {	-- Fetish of the Gilded Catacombs (Rank 4)
						["u"] = REMOVED_FROM_GAME,
						["description"] = "Requires completing the achievement |cffffff00Battle for Azeroth Keystone Master|r.\n",
						["classes"] = TANKS,
						["cost"] = { { "c", 1718, 800 }, },	-- 800x Titan Residuum
					}),
					i(168927, {	-- Seed of Vibrant Blooms (Rank 4)
						["u"] = REMOVED_FROM_GAME,
						["description"] = "Requires completing the achievement |cffffff00Battle for Azeroth Keystone Master|r.\n",
						["classes"] = HEALERS,
						["cost"] = { { "c", 1718, 800 }, },	-- 800x Titan Residuum
					}),
					-- This Gear need symlink someday
					i(174630),	-- Relinquished Azerite Spaulders
					i(174631),	-- Relinquished Azerite Spaulders
					i(174632),	-- Relinquished Azerite Spaulders
					i(174633),	-- Relinquished Azerite Helm
					i(174634),	-- Relinquished Azerite Helm
					i(174635),	-- Relinquished Azerite Helm
					i(174636),	-- Relinquished Azerite Chestpiece
					i(174637),	-- Relinquished Azerite Chestpiece
					i(174638),	-- Relinquished Azerite Chestpiece
				},
			}),
			n(142691, {	-- Tricky Nick <Shady Vendor>
				["coord"] = { 56.7, 47.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(163042, {	-- Mighty Caravan Brutosaur (MOUNT!)
						["cost"] = 50000000000,	-- 5,000,000g
						["timeline"] = { ADDED_8_0_1, REMOVED_9_0_1 },
					}),
					i(163568, {	-- Lost Platysaur (PET!)
						["cost"] = 1000000000,	-- 100,000g
					}),
					i(163589, {	-- Palehide Direhorn (MOUNT!)
						["cost"] = 5000000000,	-- 500,000g
					}),
				},
			}),
			n(135446, {	-- Vindicator Jaelaana <7th Legion Emissary>
				["coord"] = { 69.3, 24.9, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = bubbleDownClassicRep(FACTION_7TH_LEGION, {
					{		-- Neutral
						i(166445),	-- 7th Legion Scouting Map (CI!)
					}, {	-- Friendly
					}, {	-- Honored
						i(160536, {	-- 7th Legionnaire's Cloak
							["cost"] = 11000000,	-- 1,100g
						}),
						i(165720, {	-- Monelite Whetstone
							["cost"] = { { "c", 1560, 200 }, },	-- 200x War Resources
						}),
						i(162323, {	-- Schematic: AZ3-R1-T3 Synthetic Specs [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(166278, {	-- Technique: Contract: 7th Legion [Rank 2] (RECIPE!)
							["cost"] = 19000000,	-- 1,900g
							["timeline"] = { ADDED_8_1_0 },
						}),
					}, {	-- Revered
						i(161586, {	-- Belt of the Grove Auxiliary
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162378, {	-- Design: Amberblaze Loop [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162302, {	-- Formula: Enchant Ring - Pact of Critical Strike [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162306, {	-- Formula: Enchanter's Sorcerous Scepter [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161587, {	-- Legguards of the Storm Battalion
							["cost"] = 14000000,	-- 1,400g
						}),
						i(163778, {	-- Lil' Siege Tower (PET!)
							["races"] = ALLIANCE_ONLY,
							["cost"] = { { "i", POLISHED_PET_CHARM, 200 }, },
						}),
						i(162275, {	-- Plans: Stormsteel Dagger [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162670, {	-- Plans: Stormsteel Saber [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162261, {	-- Plans: Stormsteel Shield [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162276, {	-- Plans: Stormsteel Spear [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(163320, {	-- Recipe: Battle Potion of Strength [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162138, {	-- Recipe: Endless Tincture of Fractional Power [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162132, {	-- Recipe: Flask of the Currents [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162128, {	-- Recipe: Steelskin Potion [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162139, {	-- Recipe: Surging Alchemist Stone [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161589, {	-- Royal Knight's Sabatons
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162324, {	-- Schematic: AZ3-R1-T3 Synthetic Specs [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162346, {	-- Schematic: Finely-Tuned Stormsteel Destroyer [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162344, {	-- Schematic: Monelite Scope of Alacrity [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162345, {	-- Schematic: Precision Attitude Adjuster [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161583, {	-- Warmage's Flame-Brimming Wristcords
							["cost"] = 14000000,	-- 1,400g
						}),
					}, {	-- Exalted
						i(161588, {	-- Bracers of the Allied Earthbinders
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161590, {	-- Elite Footman's Legplates
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161585, {	-- Gloves of the Forward Skirmisher
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161584, {	-- Medical Corps Slippers
							["cost"] = 19000000,	-- 1,900g
						}),
						i(160539, {	-- Tabard of the 7th Legion
							["cost"] = 6250000,	-- 625g
						}),
					},
				}),
			}),
			n(130399, {	-- Zooey Inksprocket <Inscription Trainer>
				["coord"] = { 73.4, 6.3, BORALUS },
				["groups"] = {
					i(158205),	-- Acacia Powder
					i(158186),	-- Distilled Water
					TempForceMisc(i(168026)),	-- Book of Techniques: Sanguine Feather Quill of Lana'thel
				},
			}),
		}),
	}),
})));
