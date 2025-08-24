---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(THE_GREAT_SEAL, {
		n(VENDORS, {
			n(141954, {	-- Arbo
				["coord"] = { 43.8, 24.4, DAZARALOR },
				["races"] = HORDE_ONLY,
				["sym"] = {{"select","itemID",
					2531,	-- Great Axe
					15811,	-- Heavy Spear
					15810,	-- Short Spear
				}},
				["groups"] = {
					i(8177),	-- Practice Sword
					i(49395),	-- Rigging Slicer
				},
			}),
			n(132153, {	-- "Black Eye" Zenru
				["coord"] = { 53.7, 85.9, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156659, {	-- Counterfeit Rastakhan Mask
						["description"] = "Return to |CFFCC33FFGriftah|r and trade him the |CFFFFD700Counterfeit Rastakhan Mask|r in exchange for the toy |cFFFFFFFF(53.0, 89.9)|r.",
						["groups"] = {
							i(156649),	-- Zandalari Effigy Amulet (TOY!)	Note!! We don't mark the item as Horde since Alliance can actually use it
						},
					}),
				},
			}),
			n(128078, {	-- Bri'tani <Spears>
				["coord"] = { 39.4, 17.4, DAZARALOR },
				["races"] = HORDE_ONLY,
				["sym"] = {{"select","itemID",
					44654,	-- Dalaran Spear
					15811,	-- Heavy Spear
					15810,	-- Short Spear
					39987,	-- Tuskarr Fishing Spear
				}},
			}),
			n(148923, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {	-- Captain Zen'taga <Dubloons Trader>
				["coord"] = { 44.4, 94.4, DAZARALOR },
				["races"] = HORDE_ONLY,
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
					i(166461, {	-- Gnarlwood Waveboard (TOY!)
						["cost"] = { { "c", 1710, 300 }, },	-- 300x Seaferer's Dubloon
					}),
					i(163619, {	-- Golden Beetle
						["cost"] = { { "c", 1710, 100 }, },	-- 100x Seaferer's Dubloon
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
					i(163620, {	-- Island Flotsam
						["cost"] = { { "c", 1710, 100 }, },	-- 100x Seaferer's Dubloon
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
					i(163618, {	-- Shimmering Shell
						["cost"] = { { "c", 1710, 100 }, },	-- 100x Seaferer's Dubloon
					}),
					i(166745, {	-- Siltwing Albatross (MOUNT!)
						["cost"] = { { "c", 1710, 1000 }, },	-- 1,000x Seaferer's Dubloon
					}),
					i(166501, {	-- Soggy Page
						["cost"] = { { "c", 1710, 100 }, },	-- 100x Seaferer's Dubloon
					}),
				},
			})),
			n(161067, {	-- Captain Kitt
				["coord"] = { 44.4, 94.3, DAZARALOR },
				["races"] = HORDE_ONLY,
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
			n(130901, {	-- Chronicler Grazzul <Inscription Trainer>
				["coord"] = { 42.3, 39.7, DAZARALOR },
				["groups"] = {
					i(158205),	-- Acacia Powder
					i(158186),	-- Distilled Water
					TempForceMisc(i(168026)),	-- Book of Techniques: Sanguine Feather Quill of Lana'thel
				},
			}),
			n(122703, {	-- Clever Kumali <Alchemist Trainer>
				["coord"] = { 42.2, 38.0, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(166422, {	-- Recipe: Silas' Sphere of Transmutation (RECIPE!)
						["sourceQuest"] = 50120,	-- A Recipe for Success (H)
					}),
				},
			}),
			n(138033, {	-- Elly Fraze <Toys and Curiosities>
				["coord"] = { 48.4, 89.5, DAZARALOR },
				-- Note!! Both factions can interact despite being marked unfriendly in-game to Alliance
				["groups"] = {
					i(104324, {	-- Foot Ball (TOY!)
						["timeline"] = { ADDED_5_4_0 },
					}),
					i(104323, {	-- The Swineskin (TOY!)
						["timeline"] = { ADDED_5_4_0 },
					}),
				},
			}),
			n(122702, {	-- Enchantress Quinni <Enchanting Trainer>
				["coord"] = { 47.0, 35.8, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(168024, {	-- Formula: Iwen's Enchanting Rod (RECIPE!)
						["sourceQuest"] = 54002,	-- Putting it All Together
						["timeline"] = { ADDED_8_1_5 },
					}),
				},
			}),
			n(127112, {	-- Forgemaster Zak'aal <Blacksmithing Trainer>
				["coord"] = { 43.4, 38.3, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(160298),	-- Durable Flux
					i(168022, {	-- Plans: Khaz'gorian Smithing Hammer (RECIPE!)
						["sourceQuests"] = { 50279 },	-- Anvil's Away (H)
						["timeline"] = { ADDED_8_1_5 },
					}),
				},
			}),
			n(132130, {	-- Granda Watae
				["coord"] = { 42.2, 35.8, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156652, {	-- Centennial Blossom
						["description"] = "Visit |CFFCC33FFTrader Nog|r and trade them the |CFFFFD700Centennial Blossom|r for a |CFFFFD700Preserved Night Elf Head|r |cFFFFFFFF(57.1, 91.4)|r.",
						["groups"] = {
							i(156649),	-- Zandalari Effigy Amulet (TOY!)	Note!! We don't mark the item as Horde since Alliance can actually use it
						},
					}),
				},
			}),
			n(132114, {	-- Griftah <Amazing Amulets>
				["coords"] = {
					{ 53.0, 89.9, DAZARALOR },	-- Griftah
					{ 34.7, 11.5, DAZARALOR },	-- Much-Too-Hot Pepper
					{ 37.8, 14.7, DAZARALOR },	-- Golden Seeds
					{ 42.1, 35.7, DAZARALOR },	-- Centennial Blossom
					{ 57.1, 91.4, DAZARALOR },	-- Preserved Night Elf Head
					{ 53.7, 85.9, DAZARALOR },	-- Counterfeit Rastakhan Mask
				},
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156659, {	-- Counterfeit Rastakhan Mask
						i(156649, {	-- Zandalari Effigy Amulet (TOY!)
							["description"] = "To get this item you have to jump through the following hoops:\n\n|cFFFFFFFFStep 1:|r Purchase a |CFFFFD700Sack of \"Discarded\" Hearthstones|r from |CFFCC33FFGriftah|r |cFFFFFFFF[Coords: 53.02, 89.93]|r.\n|cFFFFFFFFStep 2:|r Now visit |CFFCC33FFRakle the Wretched|r and trade him the |CFFFFD700Sack of \"Discarded\" Hearthstones|r to receive a |CFFFFD700Much-Too-Hot-Pepper|r |cFFFFFFFF[Coords: 34.77, 11.58]|r.\n|cFFFFFFFFStep 3:|r Visit |CFFCC33FFTrader Haw'li|r and trade them the |CFFFFD700Much-Too-Hot-Pepper|r for some |CFFFFD700Golden Seeds|r |cFFFFFFFF[Coords: 37.81, 14.72]|r.\n|cFFFFFFFFStep 4:|r Visit |CFFCC33FFGranda Watae|r and trade them the |CFFFFD700Golden Seeds|r for a |CFFFFD700Centennial Blossom|r |cFFFFFFFF[Coords: 42.16, 35.78]|r.\n|cFFFFFFFFStep 5:|r Visit |CFFCC33FFTrader Nog|r and trade them the |CFFFFD700Centennial Blossom|r for a |CFFFFD700Preserved Night Elf Head|r |cFFFFFFFF[Coords: 57.15, 91.47]|r.\n|cFFFFFFFFStep 6:|r Visit |CFFCC33FF\"Black Eye\" Zenru|r and trade them the |CFFFFD700Preserved Night Elf Head|r for a |CFFFFD700Counterfeit Rastakhan Mask|r |cFFFFFFFF[Coords: 53.77, 85.97]|r.\n|cFFFFFFFFStep 7:|r Return back to |CFFCC33FFGriftah|r and you will trade him the |CFFFFD700Counterfeit Rastakhan Mask|r in exchange for the toy |cFFFFFFFF[Coords: 53.02, 89.93]|r.",
						}),
						i(156647, {	-- Sack of "Discarded" Hearthstones
							["description"] = "Now visit |CFFCC33FFRakle the Wretched|r and trade him the |CFFFFD700Sack of \"Discarded\" Hearthstones|r to receive a |CFFFFD700Much-Too-Hot-Pepper|r |cFFFFFFFF[Coords: 34.77, 11.58]|r.",
						}),
					}),
				},
			}),
			n(132097, {	-- Happy Holaua <Pet Vendor>
				["coord"] = { 56.0, 32.2, DAZARALOR },
				["groups"] = {
					i(163508, {	-- Blue Flitter (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 100 }, },
					}),
					i(163504, {	-- Child of Jani (PET!)
						["description"] = "Complete the \"Get Hek'd\" achievement for this item to appear on the vendor.",
						["cost"] = { { "i", POLISHED_PET_CHARM, 100 }, },
					}),
					i(163705, {	-- Imaginary Gun (TOY!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 250 }, },
					}),
					i(165840, {	-- Shattered Pet Portal (CI!)
						-- #if BEFORE 9.0.2
						["cost"] = { { "i", POLISHED_PET_CHARM, 1000 }, },
						-- #endif
						["timeline"] = { REMOVED_9_1_0 },
					}),
					i(163502, {	-- Lil' Ben'fon (PET!)
						["sourceQuests"] = { 50297 },	-- The Head of Her Enemy
						["races"] = HORDE_ONLY,	-- Note!! We are only marking the item that learns it as Horde. Alliance can use it so we don't mark the actual species.
						["cost"] = { { "i", POLISHED_PET_CHARM, 300 }, },
					}),
					i(161016, {	-- Lil' Tika (PET!)
						["sourceQuests"] = { 49681 },	-- Lil' Tika
						["races"] = HORDE_ONLY,	-- Note!! We are only marking the item that learns it as Horde. Alliance can use it so we don't mark the actual species.
						["cost"] = { { "i", POLISHED_PET_CHARM, 200 }, },
					}),
					i(139003, {	-- Pocket Pet Portal (CI!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 1000 }, },
						["timeline"] = { REMOVED_9_1_0 },
					}),
					i(163499, {	-- Zandalari Shinchomper (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 50 }, },
					}),
					i(163560, {	-- Saurolisk Hatchling (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 200 }, },
					}),
					i(163498, {	-- Tiny Direhorn (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 100 }, },
					}),
					i(163704, {	-- Tiny Mechanical Mouse (TOY!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 500 }, },
					}),
				},
			}),
			n(126329, {	-- Headhunter Lani
				["coord"] = { 40.6, 16.8, DAZARALOR },
				["races"] = HORDE_ONLY,
				["sym"] = {{"select","itemID",
					2531,	-- Great Axe
					15811,	-- Heavy Spear
					8177,	-- Practice Sword
					49395,	-- Rigging Slicer
					15810,	-- Short Spear
				}},
			}),
			n(122465, {	-- Koatini
				["coord"] = { 48.8, 91.0, DAZARALOR },
				["groups"] = {
					i(39987),	-- Tuskarr Fishing Spear
				},
			}),
			n(131287, {	-- Natal'hakata <Zandalari Empire Emissary>
				["coord"] = { 67.2, 71.7, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
				["groups"] = bubbleDownClassicRep(FACTION_ZANDALARI_EMPIRE, {
					{		-- Neutral
					}, {	-- Friendly
					}, {	-- Honored
						i(160530, {	-- Dinomancer's Cloak
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162730, {	-- Schematic: AZ3-R1-T3 Gearspun Goggles [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162753, {	-- Technique: Contract: Zandalari Empire [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
					}, {	-- Revered
						i(161516, {	-- Bindings of the Disparate Tribes
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161497, {	-- Cord of the Loa Worshippers
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162764, {	-- Design: Laribole Staff of Alacrity [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162761, {	-- Design: Owlseye Loop [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162765, {	-- Design: Scarlet Diamond Staff of Intuition [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161526, {	-- Gral Worshipper's Waders
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161546, {	-- Grand Fleet Legplates
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162717, {	-- Formula: Enchant Ring - Pact of Haste [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162722, {	-- Formula: Enchant Weapon - Deadly Navigation [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162721, {	-- Formula: Enchant Weapon - Stalwart Navigation [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(163210, {	-- Party Totem (TOY!)
							["cost"] = 18000000,	-- 1,800g
						}),
						i(163317, {	-- Recipe: Battle Potion of Stamina [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162704, {	-- Recipe: Coastal Healing Potion [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162696, {	-- Recipe: Flask of Endless Fathoms [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162692, {	-- Recipe: Potion of Replenishment [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162731, {	-- Schematic: AZ3-R1-T3 Gearspun Goggles [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162743, {	-- Schematic: Deployable Attire Rearranger [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162742, {	-- Schematic: Interdimensional Companion Repository [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162741, {	-- Schematic: Organic Discombobulation Grenade [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(166736, {	-- Schematic: Unstable Temporal Time Shifter [Rank 2] (RECIPE!)
							["cost"] = 19000000,	-- 1,900g
							["timeline"] = { ADDED_8_1_0 },
						}),
						i(162623, {	-- Tome of Hex: Zandalari Tendonripper (CI!)
							["cost"] = 18000000,	-- 1,800g
						}),
						i(162625, {	-- Tome of Polymorph: Direhorn (CI!)
							["cost"] = 18000000,	-- 1,800g
						}),
					}, {	-- Exalted
						i(161548, {	-- Gonk Adherents Vambraces
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161665, {	-- Reins of the Cobalt Pterrordax (MOUNT!)
							["cost"] = 125000000,	-- 12,500g
						}),
						i(161664, {	-- Reins of the Spectral Pterrorwing (MOUNT!)
							["cost"] = 900000000,	-- 90,000g
						}),
						i(161500, {	-- Shadraspun Legwraps
							["cost"] = 19000000,	-- 1,900g
						}),
						i(160546, {	-- Tabard of the Zandalari Empire
							["cost"] = 6250000,	-- 625g
						}),
						i(161524, {	-- Torcali's Grips of the Bounty
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161517, {	-- Waistcord of Pa'ku's Flight
							["cost"] = 19000000,	-- 1,900g
						}),
					},
				}),
			}),
			n(148080, {	-- Olly <Pet Smuggler>
				["description"] = "To unlock this vendor, win PvP pet battles until the mission \"A Shady Message\" spawns. Complete the mission, and you'll be able to purchase items from the vendor. It could take 1, 10, 100 or 1,000 PvP pet battles before it spawns.",
				["coord"] = { 45.51, 86.45, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(163489, {	-- Abyssal Eel (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 75 }, },
					}),
					i(163493, {	-- Frenzied Cottontail (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 300 }, },
					}),
					i(163492, {	-- Drustvar Piglet (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 75 }, },
					}),
					i(163495, {	-- Greatwing Macaw (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 50 }, },
					}),
					i(163496, {	-- Mechanical Prarie Dog (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 75 }, },
					}),
					i(163494, {	-- Bilefang Skitterer (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 100 }, },
					}),
				},
			}),
			n(122700, {	-- Pin'jin the Patient <Tailoring Trainer>
				["coord"] = { 44.5, 33.9, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(159959),	-- Nylon Thread
					i(168029, {	-- Pattern: Synchronous Thread
						["description"] = "This recipe is for relearning the Synchronous Thread after you have completed the Tools of the Trade questline.",
						["sourceQuests"] = {
							53881,	-- Cut from the Same Cloth (A)
							53962,	-- Cut from the Same Cloth (H)
						},
						["cost"] = 11000000,	-- 1,100g
					}),
				},
			}),
			n(122463, {	-- Plen <Unusual and Remarkable Wares>
				["coord"] = { 47.7, 91.6, DAZARALOR },
				["groups"] = {
					i(63044),	-- Brown Riding Camel (MOUNT!)
					i(63045),	-- Tan Riding Camel (MOUNT!)
				},
			}),
			n(148924, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {	-- Provisioner Mukra
				["coord"] = { 51.22, 95.08, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(166743, {	-- Blight Bomber (TOY!)
						["cost"] = { { "c", 1716, 125 }, },	-- 125x Honorbound Service Medal
					}),
					i(166469, {	-- Bloodthirsty Dreadwing (MOUNT!)
						["cost"] = { { "c", 1716, 750 }, },	-- 750x Honorbound Service Medal
					}),
					i(166559, {	-- Commander's Signet of Battle
						["cost"] = { { "c", 1716, 300 }, },	-- 300x Honorbound Service Medal
					}),
					i(166755, {	-- Deathstalkers' Gloaming Powder
						["cost"] = { { "c", 1716, 75 }, },	-- 75x Honorbound Service Medal
					}),
					i(166751, {	-- Draught of Ten Lands
						["cost"] = { { "c", 1716, 5 }, },	-- 5x Honorbound Service Medal
					}),
					i(166549, {	-- Fine Crimson Cloak
						["cost"] = { { "c", 1716, 125 }, },	-- 125x Honorbound Service Medal
					}),
					i(166756, {	-- Loa-Touched Warscroll
						["cost"] = { { "c", 1716, 75 }, },	-- 75x Honorbound Service Medal
					}),
					i(166753, {	-- Orcish War Horn
						["cost"] = { { "c", 1716, 75 }, },	-- 75x Honorbound Service Medal
					}),
					i(166464, {	-- Rubyshell Krolusk (MOUNT!)
						["cost"] = { { "c", 1716, 200 }, },	-- 200x Honorbound Service Medal
					}),
					i(174373, {	-- Sandy Nightsaber (H) (MOUNT!)
						["cost"] = { { "c", 1716, 350 }, },	-- 350x Honorbound Service Medal
						["sourceQuest"] = 57959,	-- Heroic Warfront: The Battle for Darkshore
					}),
					i(166752, {	-- Stone Guard's Bladed Cloak
						["cost"] = { { "c", 1716, 75 }, },	-- 75x Honorbound Service Medal
					}),
					i(166347, {	-- Tanzil (PET!)
						["cost"] = { { "c", 1716, 100 }, },	-- 100x Honorbound Service Medal
					}),
					i(166754, {	-- Tome of Thalassian Hymns
						["cost"] = { { "c", 1716, 75 }, },	-- 75x Honorbound Service Medal
					}),
					i(166547, {	-- War-Torn Crimson Cloak
						["cost"] = { { "c", 1716, 50 }, },	-- 50x Honorbound Service Medal
					}),
				},
			})),
			n(126330, {	-- Rakle the Wretched
				["coord"] = { 34.7, 11.5, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156650, {	-- Much-Too-Hot Pepper
						["description"] = "Visit |CFFCC33FFTrader Haw'li|r and trade them the |CFFFFD700Much-Too-Hot-Pepper|r for some |CFFFFD700Golden Seeds|r |cFFFFFFFF[Coords: 37.8, 14.7]|r.",
						["groups"] = {
							i(156649),	-- Zandalari Effigy Amulet (TOY!)	Note!! We don't mark the item as Horde since Alliance can actually use it
						},
					}),
				},
			}),
			n(135447, {	-- Ransa Greyfeather <The Honorbound Emissary>
				["coord"] = { 58.0, 62.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(161532, {	-- Bindings of the Elemental Allies
						["cost"] = 19000000,	-- 1,900g
					}),
					i(162760, {	-- Design: Amberblaze Loop [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(160532, {	-- Drape of the Horde's Fury
						["cost"] = 14000000,	-- 1,400g
					}),
					i(162716, {	-- Formula: Enchant Ring - Pact of Critical Strike [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(161521, {	-- Goblin Sapper's Legguards
						["cost"] = 14000000,	-- 1,400g
					}),
					i(166444),	-- Honorbound Scouting Map (CI!)
					i(163779, {	-- Lil' War Machine (PET!)
						["races"] = HORDE_ONLY,
						["cost"] = { { "i", POLISHED_PET_CHARM, 200 }, },
					}),
					i(161550, {	-- Lustful Warbringer's Legplates
						["cost"] = 19000000,	-- 1,900g
					}),
					i(165719, {	-- Monelite Whetstone
						["cost"] = { { "c", 1560, 200 }, },	-- 200x War Resources
					}),
					i(163319, {	-- Recipe: Battle Potion of Strength [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(166310, {	-- Technique: Contract: The Honorbound [Rank 2] (RECIPE!)
						["cost"] = 19000000,	-- 1,900g
						["timeline"] = { ADDED_8_1_0 },
					}),
					i(162720, {	-- Formula: Enchanter's Sorcerous Scepter [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(162701, {	-- Recipe: Endless Tincture of Fractional Power [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(162695, {	-- Recipe: Flask of the Currents [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(162691, {	-- Recipe: Steelskin Potion [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(162707, {	-- Plans: Stormsteel Dagger [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(162774, {	-- Plans: Stormsteel Saber [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(162706, {	-- Plans: Stormsteel Shield [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(162708, {	-- Plans: Stormsteel Spear [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(162702, {	-- Recipe: Surging Alchemist Stone [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(161537, {	-- Sabatons of the Renewed Warpath
						["cost"] = 14000000,	-- 1,400g
					}),
					i(162728, {	-- Schematic: AZ3-R1-T3 Synthetic Specs	[Rank 2] (RECIPE!)
						["cost"] = 11000000,	-- 1,100g
					}),
					i(162729, {	-- Schematic: AZ3-R1-T3 Synthetic Specs [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(162746, {	-- Schematic: Finely-Tuned Stormsteel Destroyer [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(162744, {	-- Schematic: Monelite Scope of Alacrity [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(162745, {	-- Schematic: Precision Attitude Adjuster [Rank 3] (RECIPE!)
						["cost"] = 14000000,	-- 1,400g
					}),
					i(161512, {	-- Silent Stalker Belt
						["cost"] = 14000000,	-- 1,400g
					}),
					i(160545, {	-- Tabard of the Honorbound
						["cost"] = 6250000,	-- 625g
					}),
					i(161509, {	-- Tranquil Health Weavers
						["cost"] = 19000000,	-- 1,900g
					}),
					i(161501, {	-- Witch Doctor's Slippers
						["cost"] = 19000000,	-- 1,900g
					}),
					i(161498, {	-- Wristwraps of the Dutiful Apothecary
						["cost"] = 14000000,	-- 1,400g
					}),
				},
			}),
			n(131255, {	-- Rawajo <Spears Vendor>
				["coord"] = { 50.6, 11.8, DAZARALOR },
				["races"] = HORDE_ONLY,
				["sym"] = {{"select","itemID",
					44654,	-- Dalaran Spear
					15811,	-- Heavy Spear
					15810,	-- Short Spear
					39987,	-- Tuskarr Fishing Spear
				}},
			}),
			n(122695, {	-- Seshuli <Jewelcrafting Trainer>
				["coord"] = { 47.0, 37.8, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(168027, {	-- Design: Jewelhammer's Focus (RECIPE!)
						["sourceQuest"] = 49599,	-- The Missing Chapter (H)
					}),
				},
			}),
			n(131840, {	-- Shuga Blastcaps <Engineering Trainer>
				["coord"] = { 45.0, 40.6, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(168025, {	-- Book of Schematics: Ub3r-Spanner
						["sourceQuest"] = 53937,	-- The Ub3r-Spanner (H)
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
			n(125879, {	-- Talutu <Mount Vendor>
				["coord"] = { 48.5, 87.0, DAZARALOR },
				["groups"] = {
					i(163042, {	-- Mighty Caravan Brutosaur (MOUNT!)
						["cost"] = 50000000000,	-- 5,000,000g
						["timeline"] = { ADDED_8_0_1, REMOVED_9_0_1 },
					}),
					i(159139),	-- Lightweight Skyterror Barding
					i(163568, {	-- Lost Platysaur (PET!)
						["cost"] = 1000000000,	-- 100,000g
					}),
					i(163589, {	-- Palehide Direhorn (MOUNT!)
						["cost"] = 5000000000,	-- 500,000g
					}),
				},
			}),
			n(149045, {	-- Thaumaturge Vashreen <Purveyor of Exquisite Furnishings>
				["coord"] = { 53.9, 88.9, DAZARALOR },
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
					-- this gear currently doesn't display the correct version that the vendor sells, and it's also all duplicated gear from BFA mythics. commenting out until someone figures out a better way to display it.
					--[[
					i(155860),	-- Spymaster's Wrap
					i(155866),	-- Soulspun Casque
					i(155885),	-- Sea-Brawler's Greathelm
					i(155886),	-- Smartly Plumed Cap
					i(155887),	-- Sweete's Jeweled Headgear
					i(155888),	-- Irontide Captain's Hat
					i(158301),	-- Ruffled Poet Blouse
					i(158304),	-- Mantle of Fastidious Machinations
					i(158307),	-- Shrapnel-Dampening Chestguard
					i(158315),	-- Secret Spinner's Miter
					i(158344),	-- Mantle of Ceremonial Ascension
					i(158349),	-- Petticoat of the Self-Stylized Azerite Baron
					i(158355),	-- Loa-Blessed Chestguard
					i(158364),	-- High Altitude Turban
					i(159232),	-- Exquisitely Aerodynamic Shoulderpads
					i(159233),	-- Loa Betrayer's Vestments
					i(159236),	-- Headdress of the First Empire
					i(159238),	-- Mantle of Void-Touched Waters
					i(159241),	-- Blood-Drenched Robes
					i(159244),	-- Stormlurker's Cowl
					i(159252),	-- Grasping Crown of the Deep
					i(159254),	-- Brood Cleanser's Amice
					i(159257),	-- Robes of the Reborn Serpent
					i(159267),	-- Pauldrons of Vile Corruption
					i(159268),	-- Inmate's Straight Robe
					i(159273),	-- Amice of the Returned
					i(159279),	-- Soulfuel Headdress
					i(159298),	-- Venture Co. Plenipotentiary Vest
					i(159299),	-- Gold-Tasseled Epaulets
					i(159302),	-- Cowl of Fluid Machinations
					i(159303),	-- Vest of Reverent Adoration
					i(159307),	-- Tentacle-Laced Spaulders
					i(159310),	-- Circlet of the Enveloping Leviathan
					i(159314),	-- Cephalohide Jacket
					i(159318),	-- Hood of the Slithering Loa
					i(159323),	-- Shoulders of the Sanguine Monstrosity
					i(159330),	-- Gore-Splattered Vest
					i(159331),	-- Pistoleer's Spaulders
					i(159334),	-- Flashpowder Hood
					i(159335),	-- Raiment of the Blighted Tribe
					i(159339),	-- Gorak Tul's Mantle
					i(159352),	-- Gaping Maw Shoulderguard
					i(159354),	-- Hauberk of Sunken Despair
					i(159358),	-- Coif of the Court Spider
					i(159360),	-- Crashguard Spaulders
					i(159362),	-- Tri-Heart Chestguard
					i(159368),	-- Spaulders of Prime Emperor
					i(159370),	-- Corrupted Hexxer's Vestments
					i(159374),	-- Sethraliss' Fanged Helm
					i(159376),	-- Hook-Barbed Spaulders
					i(159381),	-- Visage of Bloody Horrors
					i(159385),	-- Amalgamated Abomination Spaulders
					i(159391),	-- Hood of the Dark Reaper
					i(159393),	-- Cannoneer's Mantle
					i(159395),	-- Deathslaver's Hauberk
					i(159398),	-- Soulscarred Headgear
					i(159407),	-- Lockjaw Shoulderplate
					i(159408),	-- Chestguard of the Deep Denizen
					i(159414),	-- Overseer's Riot Helmet
					i(159415),	-- Skyscorcher Pauldrons
					i(159416),	-- Harpooner's Plate Cuirass
					i(159422),	-- Helm of the Raptor King
					i(159423),	-- Pauldrons of the Great Unifier
					i(159424),	-- Desert Guardian's Breastplate
					i(159430),	-- Helm of Abyssal Malevolence
					i(159431),	-- Kraken Shell Pauldrons
					i(159432),	-- Breastplate of Arterial Protection
					i(159439),	-- C'thraxxi Binders Pauldrons
					i(159440),	-- Ashvane Warden's Cuirass
					i(159446),	-- Greathelm of the Putrid Path
					i(159448),	-- Breastplate of the Vengeful
					i(159455),	-- Pauldrons of the Horned Horror	--]]
				},
			}),
			n(129597, {	-- Trader Haw'li <Food & Drink>
				["coord"] = { 37.8, 14.7, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156651, {	-- Golden Seeds
						["description"] = "Visit |CFFCC33FFGranda Watae|r and trade them the |CFFFFD700Golden Seeds|r for a |CFFFFD700Centennial Blossom|r |cFFFFFFFF[Coords: 42.16, 35.78].",
						["groups"] = {
							i(156649),	-- Zandalari Effigy Amulet (TOY!)	Note!! We don't mark the item as Horde since Alliance can actually use it
						},
					}),
					i(159749),	-- Haw'li's Hot & Spicy Chili (TOY!)
				},
			}),
			n(125311, {	-- Trader Nog
				["coord"] = { 57.1, 91.4, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156655, {	-- Preserved Night Elf Head
						["description"] = "Visit |CFFCC33FF\"Black Eye\" Zenru|r and trade them the |CFFFFD700Preserved Night Elf Head|r for a |CFFFFD700Counterfeit Rastakhan Mask|r |cFFFFFFFF[Coords: 53.77, 85.97]|r.",
						["groups"] = {
							i(156649),	-- Zandalari Effigy Amulet (TOY!)	Note!! We don't mark the item as Horde since Alliance can actually use it
						},
					}),
				},
			}),
			n(145837, {	-- Violet Shadowmend
				["coord"] = { 51.6, 57.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
				--	i(163974),	-- Bucketshell	-- Listed under PvP w/ CRS
				--	i(142380),	-- Dutiful Squire (PET!)
				--	i(139776),	-- Horde Fanatic (PET!)
				},
			}),
			n(122698, {	-- Xanjo <Leatherworking Trainer>
				["coord"] = { 44.0, 34.6, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(168028, {	-- Pattern: Mallet of Thunderous Skins (RECIPE!)
						["sourceQuests"] = { 55223 },	-- Instruments of Destruction (H)
						["timeline"] = { ADDED_8_1_5 },
					}),
				},
			}),
		}),
	}),
})));
