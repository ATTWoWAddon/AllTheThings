---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(HIGHMOUNTAIN, {
			n(VENDORS, {
				n(108537, {	-- Crafty Palu <Repairs>
					["coord"] = { 41.6, 10.6, HIGHMOUNTAIN },
					["groups"] = {
						i(258219, {	-- Driftwood Barrel
							["timeline"] = { ADDED_12_0_0 },
						}),
						i(258221, { 	-- Driftwood Junk Pile (DECOR!)
							["timeline"] = { ADDED_12_0_0 },
						}),
						i(258223, { 	-- Murloc's Wind Chimes (DECOR!)
							["timeline"] = { ADDED_12_0_0 },
						}),
					},
				}),
				n(93975, {	-- Leyweaver Yaphisteia
					["coord"] = { 29.4, 26.2, HIGHMOUNTAIN },
					["groups"] = {
						i(127027, {	-- Pattern: Imbued Silkweave Slippers (Rank 1)
							["cost"] = { { "i", 124437, 100 } },	-- 100x Shal'dorei Silk
						}),
					},
				}),
				n(94100, {	-- Lucas Sigmund <Repairs>
					["coord"] = { 39.9, 52.3, HIGHMOUNTAIN },
					["groups"] = {
						i(141044),	-- Technique: Glyph of Nesingwary's Nemeses (RECIPE!)
						i(141048, {	-- Technique: Glyph of the Headhunter
							["u"] = REMOVED_FROM_GAME,
						}),
						i(136783),	-- The Art of Concealment (CI!)
					},
				}),
				n(106902, {	-- Ransa Greyfeather <Highmountain Emissary>
					["coord"] = { 38.3, 45.8, 750 },	-- Thunder Totem
					["groups"] = bubbleDownClassicRep(FACTION_HIGHMOUNTAIN_TRIBE, {
						{		-- Neutral
						}, {	-- Friendly
							i(245458, {	-- Riverbend Jar (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = {
									{ "g", 3000000 },	-- 300g
									{ "c", ORDER_RESOURCES, 500 },
								},
							}),
							i(245454, {	-- Small Highmountain Drum (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = {
									{ "g", 3000000 },	-- 300g
									{ "c", ORDER_RESOURCES, 500 },
								},
							}),
							i(131814),	-- Whitewater Carp (TOY!)
						}, {	-- Honored
							i(140215, {	-- Boon of the Butcher
								["cost"] = 800000,	-- 80g
								["groups"] = { i(140224) },	-- Butchered Meat
							}),
							i(137839, {	-- Design: Skystone Loop [Rank 3] (RECIPE!)
								["cost"] = 5500000,		-- 550g
							}),
							i(136697, {	-- Plans: Gleaming Iron Spike (RECIPE!)
								["cost"] = 5500000,		-- 550g
							}),
							i(245452, {	-- Stonebull Canoe (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = {
									{ "g", 5000000 },	-- 500g
									{ "c", ORDER_RESOURCES, 750 },
								},
							}),
							i(248985, {	-- Tauren Hanging Brazier (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = {
									{ "g", 5000000 },	-- 500g
									{ "c", ORDER_RESOURCES, 750 },
								},
							}),
							i(140731, {	-- Treasure Map: Highmountain
								["filterID"] = CONSUMABLES,
							}),
						}, {	-- Revered
							i(136919, {	-- Baby Elderhorn (PET!)
								["cost"] = 5000000,		-- 500g
							}),
							i(131812, {	-- Darkshard Fragment (TOY!)
								["cost"] = 5000000,		-- 500g
							}),
							i(139601, {	-- Harpy-Hunter's Gloves
								["cost"] = 10000000,	-- 1,000g
							}),
							i(142408, {	-- Pattern: Drums of the Mountain [Rank 2] (RECIPE!)
								["timeline"] = { ADDED_7_1_0 },
								["cost"] = 5500000,		-- 550g
							}),
							i(243359, {	-- Tauren Windmill (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = {
									{ "g", 7000000 },	-- 700g
									{ "c", ORDER_RESOURCES, 1000 },
								},
							}),
							i(245270, {	-- Thunder Totem Kiln (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = {
									{ "g", 7000000 },	-- 700g
									{ "c", ORDER_RESOURCES, 1000 },
								},
							}),
						}, {	-- Exalted
							i(137855, {	-- Design: Ancient Maelstrom Amulet [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(137846, {	-- Design: Dawnlight Band [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(137844, {	-- Design: Prophetic Band [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(245450, {	-- Highmountain Totem (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = {
									{ "g", 10000000 },	-- 1,000g
									{ "c", ORDER_RESOURCES, 2000 },
								},
							}),
							i(139597, {	-- Mountainforged Chain Hauberk
								["cost"] = 50000000,	-- 5,000g
							}),
							i(142409, {	-- Pattern: Drums of the Mountain [Rank 3] (RECIPE!)
								["timeline"] = { ADDED_7_1_0 },
								["cost"] = 30000000,	-- 3,000g
							}),
							i(123948, {	-- Plans: Demonsteel Armguards [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(123955, {	-- Plans: Demonsteel Breastplate [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(123953, {	-- Plans: Demonsteel Gauntlets [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(140576),	-- Tabard of the Hightmountain Tribe
							i(243290, {	-- Tauren Waterwheel (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = {
									{ "g", 10000000 },	-- 1,000g
									{ "c", ORDER_RESOURCES, 2000 },
								},
							}),
						},
					}),
				}),
				n(99574, {	-- Slyhoof the Shameless Shaman <Used Totem Vendor>
					["coord"] = { 60.9, 59.5, 750 },	-- Thunder Totem
					["groups"] = {
						i(140336, {	-- Brulfist Idol (TOY!)
							["cost"] = 5000000,	-- 500g
						}),
						i(140335, {	-- Totem Tote
							["cost"] = 22000000,	-- 2,200g
						}),
					},
				}),
				n(108017, {	-- Torv Dubstomp
					["coord"] = { 54.9, 78.1, 652 },	-- Thunder Totem
					["groups"] = sharedData({
						["timeline"] = { ADDED_11_2_7 },
					}, {
						i(245409, {	-- Dried Whitewash Corn (DECOR!)
							["cost"] = {
								{ "g", 3000000 },	-- 300g
								{ "c", ORDER_RESOURCES, 500 },
							},
						}),
						i(257722, {	-- Hanging Arrow Kite (DECOR!)
							["cost"] = {
								{ "g", 3000000 },	-- 300g
								{ "c", ORDER_RESOURCES, 500 },
							},
						}),
						i(260698, {	-- Kobold Trassure Pile (DECOR!)
							["cost"] = {
								{ "g", 1000000 },	-- 100g
								{ "c", ORDER_RESOURCES, 200 },
							},
						}),
						i(245405, {	-- Large Highmountain Drum (DECOR!)
							["cost"] = {
								{ "g", 3000000 },	-- 300g
								{ "c", ORDER_RESOURCES, 500 },
							},
						}),
						i(245457, {	-- Riverbend Netting (DECOR!)
							["cost"] = {
								{ "g", 3000000 },	-- 300g
								{ "c", ORDER_RESOURCES, 500 },
							},
						}),
						i(257721, {	-- Skyhorn Arrow Kite (DECOR!)
							["cost"] = {
								{ "g", 3000000 },	-- 300g
								{ "c", ORDER_RESOURCES, 500 },
							},
						}),
						i(257401, {	-- Skyhorn Banner (DECOR!)
							["cost"] = {
								{ "g", 7000000 },	-- 700g
								{ "c", ORDER_RESOURCES, 1000 },
							},
						}),
						i(257723, {	-- Skyhorn Eagle Kite (DECOR!)
							["cost"] = {
								{ "g", 5000000 },	-- 500g
								{ "c", ORDER_RESOURCES, 750 },
							},
						}),
						i(245460, {	-- Skyhorn Storage Chest (DECOR!)
							["cost"] = {
								{ "g", 5000000 },	-- 500g
								{ "c", ORDER_RESOURCES, 750 },
							},
						}),
						i(256913, {	-- Tauren Jeweler's Roller (DECOR!)
							["cost"] = {
								{ "g", 3000000 },	-- 300g
								{ "c", ORDER_RESOURCES, 500 },
							},
						}),
						i(257397, {	-- Tauren Storyteller's Frame (DECOR!)
							["cost"] = {
								{ "g", 5000000 },	-- 500g
								{ "c", ORDER_RESOURCES, 750 },
							},
						}),
						i(245461, {	-- Tauren Vertical Windmill (DECOR!)
							["cost"] = {
								{ "g", 7000000 },	-- 700g
								{ "c", ORDER_RESOURCES, 1000 },
							},
						}),
						i(245456, {	-- Warbrave's Brazier (DECOR!)
							["cost"] = {
								{ "g", 5000000 },	-- 500g
								{ "c", ORDER_RESOURCES, 750 },
							},
						}),
						i(245453, {	-- Whitewash River Basket (DECOR!)
							["cost"] = {
								{ "g", 3000000 },	-- 300g
								{ "c", ORDER_RESOURCES, 500 },
							},
						}),
					}),
				}),
				header(HEADERS.Faction, FACTION_TALONS_VENGENCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_0 } }, {
					hqt(45029, {	-- Talon's Vengeance - Intro Complete
						["description"] = "Talk to Aviana while mounted on any Falcosaur Mount to unlock the Talon's Vengence faction.",
						["qg"] = 97925,	-- Aviana
						["coord"] = { 32.2, 66.8, HIGHMOUNTAIN },
					}),
					n(115887, {	-- Trinket
						["coord"] = { 32.4, 66.8, HIGHMOUNTAIN },
						["sourceQuest"] = 45029,	-- Talon's Vengeance - Intro Complete
						["groups"] = pvp(bubbleDownClassicRep(FACTION_TALONS_VENGENCE, {
							{		-- Neutral
								i(142366),	-- Regurgitated Leaf
								i(142361, {	-- Ivory Talon
									title(346, {	-- <Name>, Talon's Vengeance
										["collectible"] = false,
									}),
									i(142363),	-- Mark of Prey
								}),
							}, {	-- Friendly
								i(142364),	-- Bag of Twigs
							}, {	-- Honored
								i(142367, {	-- Ivory Feather
									i(142363),	-- Mark of Prey
								}),
							}, {	-- Revered
								i(142368, {	-- Cracked Falcosaur Beak
									["cost"] = 10000000,	-- 1,000g
								}),
							}, {	-- Exalted
								i(142369, {	-- Ivory Hawkstrider (MOUNT!)
									["minReputation"] = { FACTION_TALONS_VENGENCE, EXALTED },
									["cost"] = 100000000,	-- 10,000g
								}),
							},
						})),
					}),
				})),
			}),
		}),
	}),
});
