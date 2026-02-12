-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.WOD, {
	n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
		n(BUILDINGS, {
			garrisonBuilding(145, {	-- Trading Post (rank 1: 111, rank 2: 144, rank 3: 145)
				n(ACHIEVEMENTS, {
					ach(9475, {		-- Laughing Skull Orcs
						["races"] = HORDE_ONLY,
						["groups"] = {
							title(287, {	-- Masked Chuckler <Name>
								["races"] = HORDE_ONLY,
							}),
						},
					}),
					ach(9476, {		-- Sha'tari Defense
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							title(288, {	-- Peacekeeper <Name>
								["races"] = ALLIANCE_ONLY,
							}),
						},
					}),
				}),
				n(FACTIONS, {
					faction(FACTION_SHATARI_DEFENSE, {["races"] = ALLIANCE_ONLY}),	-- Sha'tari Defense
					faction(FACTION_LAUGHING_SKULL_ORCS, {["races"] = HORDE_ONLY}),	-- Laughing Skull Orcs
				}),
				n(QUESTS, {
					q(36948, {	-- Auctioning for Parts
						["description"] = "Completing this quest grants you the ability to access the Auction House from your Garrison.",
						["qg"] = 87206,	-- Ancient Trading Mechanism
						["cost"] = {
							{ "i", 118375, 1 },	-- 1x Arcane Crystal Module
							{ "i", 118376, 1 },	-- 1x Auction Control Module
							{ "i", 118379, 1 },	-- 1x Cyclical Power Module
							{ "i", 118378, 1 },	-- 1x Super Cooling Module
						},
						["races"] = ALLIANCE_ONLY,
					}),
					q(37014, {	-- Auctioning for Parts
						["description"] = "Completing this quest grants you the ability to access the Auction House from your Garrison.",
						["qg"] = 86806,	-- Ancient Trading Mechanism
						["cost"] = {
							{ "i", 118375, 1 },	-- 1x Arcane Crystal Module
							{ "i", 118376, 1 },	-- 1x Auction Control Module
							{ "i", 118379, 1 },	-- 1x Cyclical Power Module
							{ "i", 118378, 1 },	-- 1x Super Cooling Module
						},
						["races"] = HORDE_ONLY,
					}),
					i(118375, {	-- Arcane Crystal Module
						["cost"] = {
							{ "i", 118344, 1 },	-- 1x Arcane Crystal Casing [Part 1 of 4]
							{ "i", 118345, 1 },	-- 1x Arcane Crystal Conduit [Part 2 of 4]
							{ "i", 118346, 1 },	-- 1x Arcane Crystal Amplifier [Part 3 of 4]
							{ "i", 118347, 1 },	-- 1x Arcane Crystal Lens [Part 4 of 4]
						},
					}),
					i(118376, {	-- Auction Control Module
						["cost"] = {
							{ "i", 118197, 1 },	-- 1x Auction Memory Socket [Part 1 of 3]
							{ "i", 118331, 1 },	-- 1x Auction Connecting Valve [Part 2 of 3]
							{ "i", 118332, 1 },	-- 1x Auction A.D.D.O.N.S Installer [Part 3 of 3]
						},
					}),
					i(118379, {	-- Cyclical Power Module
						["cost"] = {
							{ "i", 118340, 1 },	-- 1x Cyclical Power Converter [Part 1 of 4]
							{ "i", 118341, 1 },	-- 1x Cyclical Power Housing [Part 2 of 4]
							{ "i", 118342, 1 },	-- 1x Cyclical Power Framing [Part 3 of 4]
							{ "i", 118343, 1 },	-- 1x Cyclical Power Sequencer [Part 4 of 4]
						},
					}),
					i(118378, {	-- Super Cooling Module
						["cost"] = {
							{ "i", 118336, 1 },	-- 1x Super Cooling Regulator [Part 1 of 4]
							{ "i", 118337, 1 },	-- 1x Super Cooling Tubing [Part 2 of 4]
							{ "i", 118338, 1 },	-- 1x Super Cooling Coolant [Part 3 of 4]
							{ "i", 118339, 1 },	-- 1x Super Cooling Pump [Part 4 of 4]
						},
					}),
					q(37088, {	-- Tricks of the Trade
						["qgs"] = {
							87207,	-- Trader Joseph
							87208,	-- Trader Joseph
							87209,	-- Trader Joseph
							87210,	-- Trader Joseph
							87211,	-- Trader Joseph
							87212,	-- Trader Joseph
							87213,	-- Trader Joseph
							87214,	-- Trader Joseph
							87215,	-- Trader Joseph
							87216,	-- Trader Joseph
							87217,	-- Trader Joseph
							91071,	-- Trader Joseph
						},
						["races"] = ALLIANCE_ONLY,
					}),
					q(37062, {	-- Tricks of the Trade
						["qgs"] = {
							86803,	-- Fayla Fairfeather
							87112,	-- Fayla Fairfeather
							87113,	-- Fayla Fairfeather
							87114,	-- Fayla Fairfeather
							87115,	-- Fayla Fairfeather
							87116,	-- Fayla Fairfeather
							87117,	-- Fayla Fairfeather
							87118,	-- Fayla Fairfeather
							87119,	-- Fayla Fairfeather
							87120,	-- Fayla Fairfeather
							87121,	-- Fayla Fairfeather
							91070,	-- Fayla Fairfeather
						},
						["races"] = HORDE_ONLY,
					}),
				}),
				n(VENDORS, {
					n(COMMON_VENDOR_ITEMS, {
						["crs"] = {
							86777,	-- Elder Surehide <Trader>
							86779,	-- Krixel Pinchwhistle <Trader>
							86778,	-- Pyxni Pennypocket <Trader>
							86776,	-- Ribchewer <Trader>
							86683,	-- Tai'tasi <Trader>
						},
						["groups"] = {
							i(245444, {	-- Orcish Communal Stove (DECOR!)
								["races"] = HORDE_ONLY,
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = { { "c", GARRISON_RESOURCES, 250 } },
							}),
							i(245445, {	-- Frostwolf Axe-Dart Board (DECOR!)
								["races"] = HORDE_ONLY,
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = { { "c", GARRISON_RESOURCES, 150 } },
							}),
							i(244322, {	-- Frostwolf Banded Stool (DECOR!)
								["races"] = HORDE_ONLY,
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = { { "c", GARRISON_RESOURCES, 100 } },
							}),
							i(244321, {	-- Orcish Lumberjack's Stool (DECOR!)
								["races"] = HORDE_ONLY,
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = { { "c", GARRISON_RESOURCES, 100 } },
							}),
						},
					}),
					n(87015, {	-- Kil'rip <Laughing Skull Quartermaster>
						["races"] = HORDE_ONLY,
						["crs"] = { 86698 },	-- Kil'rip
						["groups"] = bubbleDownClassicRep(FACTION_LAUGHING_SKULL_ORCS, {
							{		-- Neutral
							}, {	-- Friendly
								i(245433, {	-- Blackrock Strongbox (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "c", APEXIS_CRYSTAL, 1000 } },
								}),
								i(245431, {	-- Draenor Cookpot (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "c", APEXIS_CRYSTAL, 1000 } },
								}),
								i(119159, {	-- Happy Fun Skull
									["cost"] = 5000000,		-- 500g
								}),
								i(118668),	-- Laughing Skull Elixir
							}, {	-- Honored
								i(118684, {	-- Maniacal Grimace
									["cost"] = 5000000,		-- 500g
								}),
								i(119160, {	-- Tickle Totem (TOY!)
									["cost"] = 12500000,	-- 1,250g
								}),
							}, {	-- Revered
								i(118672, {	-- Bloody Visage of the Laughing Skull
									["cost"] = {
										{ "c", APEXIS_CRYSTAL, 1000 },
										{ "g", 10000000 },	-- 1,000g
									},
								}),
								i(119146, {	-- Bone Wasp (PET!)
									["cost"] = {
										{ "c", APEXIS_CRYSTAL, 2000 },
										{ "g", 10000000 },	-- 1,000g
									},
								}),
								i(119166, {	-- Contract: Cacklebone
									["cost"] = 50000000,	-- 5,000g
									["groups"] = { follower(458) },	-- Cacklebone
								}),
								i(118671, {	-- Frozen Visage of the Laughing Skull
									["cost"] = {
										{ "c", APEXIS_CRYSTAL, 1000 },
										{ "g", 10000000 },	-- 1,000g
									},
								}),
								i(118674, {	-- Visage of the Laughing Skull
									["cost"] = {
										{ "c", APEXIS_CRYSTAL, 1000 },
										{ "g", 10000000 },	-- 1,000g
									},
								}),
							}, {	-- Exalted
								i(118673, {	-- Golden Visage of the Laughing Skull
									["cost"] = {
										{ "c", APEXIS_CRYSTAL, 1000 },
										{ "g", 50000000 },	-- 5,000g
									},
								}),
								i(116782, {	-- Ironside Warwolf (MOUNT!)
									["cost"] = {
										{ "c", APEXIS_CRYSTAL, 5000 },
										{ "g", 50000000 },	-- 5,000g
									},
								}),
								i(119138),	-- Laughing Skull Orc Tabard
							},
						}),
					}),
					n(85427, {	-- Maaria <Sha'tari Defense Quartermaster>
						["races"] = ALLIANCE_ONLY,
						["groups"] = bubbleDownClassicRep(FACTION_SHATARI_DEFENSE, {
							{		-- Neutral
							}, {	-- Friendly
								i(245424, {	-- Draenic Storage Chest (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = {
										{ "c", APEXIS_CRYSTAL, 1000 },
										{ "g", 5000000 },	-- 500g
									},
								}),
								i(118669),	-- Sha'tari Elixir
								i(251544, {	-- Telredor Recliner (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = {
										{ "c", APEXIS_CRYSTAL, 1000 },
										{ "g", 5000000 },	-- 500g
									},
								}),
							}, {	-- Honored
								i(118685, {	-- Sha'tari Protector
									["cost"] = 5000000,		-- 500g
								}),
								i(119182),	-- Soul Evacuation Crystal (TOY!)
							}, {	-- Revered
								i(119167, {	-- Contract: Vindicator Heluun
									["cost"] = 50000000,	-- 5,000g
									["groups"] = { follower(458) },	-- Vindicator Heluun
								}),
								iensemble(158208, {	-- Ensemble: Sha'tari Defender's Plate
									["classes"] = PLATE_CLASSES,
									["cost"] = 75000000,	-- 7,500g
								}),
								i(119421),	-- Sha'tari Defender's Medallion (TOY!)
								i(119150, {	-- Sky Fry (PET!)
									["cost"] = {
										{ "c", APEXIS_CRYSTAL, 2000 },
										{ "g", 10000000 },	-- 1,000g
									},
								}),
							}, {	-- Exalted
								i(116665, {	-- Armored Irontusk (MOUNT!)
									["cost"] = {
										{ "c", APEXIS_CRYSTAL, 5000 },
										{ "g", 50000000 },	-- 5,000g
									},
								}),
								i(119140),	-- Sha'tari Defense Tabard
							},
						}),
					}),
				}),
			}),
		}),
	})),
}));
