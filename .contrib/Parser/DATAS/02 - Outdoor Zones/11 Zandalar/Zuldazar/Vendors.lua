---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZULDAZAR, {
		n(VENDORS, {
			n(140137, {	-- Bugcatacher Cal'yoon
				["coord"] = { 77.0, 15.8, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["sym"] = {
					{"select", "itemID",
						10393,	-- Undercity Cockroach (PET!)
					},
				},
				["groups"] = {
					i(29901),	-- Blue Moth (PET!)
					i(29902),	-- Red Moth (PET!)
					i(29903),	-- Yellow Moth (PET!)
				},
			}),
			n(134345, {	-- Collector Kojo <Tortollan Seekers Emissary>
				["coord"] = { 71.5, 30.3, ZULDAZAR },
				["groups"] = bubbleDownClassicRep(FACTION_TORTOLLAN_SEEKERS, {
					{		-- Neutral
					}, {	-- Friendly
					}, {	-- Honored
						i(160538, {	-- Cape of the Scroll Keepers*
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162288, {	-- Recipe: Bountiful Captain's Feast [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162373, {	-- Technique: Contract: Champions of Azeroth [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162371, {	-- Technique: Contract: Tortollan Seekers [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
					}, {	-- Revered
						i(161514, {	-- Antiquity Handler's Gloves
							["cost"] = 14000000,	-- 1,400g
						}),
						i(163513, {	-- Cou'pa (PET!)
							["cost"] = { { "i", POLISHED_PET_CHARM, 200 }, },
						}),
						i(162298, {	-- Formula: Enchant Ring - Seal of Critical Strike [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162301, {	-- Formula: Enchant Ring - Seal of Versatility [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161529, {	-- Girdle of the Scroll-Sages
							["cost"] = 14000000,	-- 1,400g
						}),
						i(163026, {	-- Pattern: Embroidered Deep Sea Bag [Rank 2] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162289, {	-- Recipe: Bountiful Captain's Feast [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162136, {	-- Recipe: Endless Tincture of Renewed Combat [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162287, {	-- Recipe: Galley Banquet [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162292, {	-- Recipe: Grilled Catfish [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162293, {	-- Recipe: Seasoned Loins [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162137, {	-- Recipe: Siren's Alchemist Stone [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161494, {	-- Sea-Treated Footwraps
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162358, {	-- Technique: Codex of the Quiet Mind [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162377, {	-- Technique: Darkmoon Card of War [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162023, {	-- Technique: Glyph of the Dolphin (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162352, {	-- Technique: Inscribed Vessel of Mysticism [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162376, {	-- Technique: Tome of the Quiet Mind [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161544, {	-- Vambraces of a Thousand Year Toil
							["cost"] = 14000000,	-- 1,400g
						}),
					}, {	-- Exalted
						i(161534, {	-- Legguards of Ai'twen's Resurgence
							["cost"] = 19000000,	-- 1,900g
						}),
						i(166806, {	-- Recipe: Boralus Blood Sausage [Rank 2] (RECIPE!)
							["cost"] = 19000000,	-- 1,900g
							["timeline"] = { ADDED_8_1_0 },
						}),
						i(166263, {	-- Recipe: Sanguinated Feast [Rank 2] (RECIPE!)
							["cost"] = 19000000,	-- 1,900g
							["timeline"] = { ADDED_8_1_0 },
						}),
						i(166368, {	-- Recipe: Seasoned Steak and Potatoes [Rank 3] (RECIPE!)
							["cost"] = 19000000,	-- 1,900g
							["timeline"] = { ADDED_8_1_0 },
						}),
						i(166367, {	-- Recipe: Wild Berry Bread [Rank 3] (RECIPE!)
							["cost"] = 19000000,	-- 1,900g
							["timeline"] = { ADDED_8_1_0 },
						}),
						i(161549, {	-- Shellbuckle Girdle
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161519, {	-- Supple Moccasins of Pilgrimage
							["cost"] = 19000000,	-- 1,900g
						}),
						i(160543, {	-- Tabard of the Tortollan Seekers
							["cost"] = 6250000,	-- 625g
						}),
						i(161503, {	-- Wristwraps of Scrollbinding
							["cost"] = 19000000,	-- 1,900g
						}),
					},
				}),
			}),
			n(124034, {	-- Golkada
				["coord"] = { 71.2, 29.6, ZULDAZAR },	-- Golkada
				["groups"] = {
					i(163564),	-- Extra-dry Fruitcake
				},
			}),
			n(138099, {	-- Isabel Marigan <Alchemy Supplies>
				["coord"] = { 76.4, 49.0, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(9144, {	-- Wildvine Potion
						["timeline"] = { ADDED_8_0_1 },
					}),
				},
			}),
			n(161590, {	-- Jinxy Blastwheel <Profession Liason>
				["coord"] = { 52.7, 58.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["groups"] = COMMON_BFA_PVP_RECIPES_S4,
			}),
			n(136219, {	-- Mona <Butterflies>
				["coord"] = { 71.6, 29.4, ZULDAZAR },
				["groups"] = {
					i(163508, {	-- Blue Flitter (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 100 }, },
					}),
				},
			}),
			n(135249, {	-- Meatminder Teki
				["coord"] = { 66.8, 41.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(157781),	-- Extra-Chunky Dino Food
					i(157780),	-- Free-Range Dino Chow
					i(157779),	-- Infant Dino Kibble
				},
			}),
			n(142839, {	-- Old Jen'tay
				["description"] = "When you have 150 BfA Inscription, speak to the NPC and he will teach you the technique.",
				["coord"] = { 76.2, 39.8, ZULDAZAR },
				["groups"] = {
					i(162030),	-- Technique: Glyph of the Humble Flyer (RECIPE!)
				},
			}),
			n(142552, {	-- Ozgrom Ragefang <Profession Liason>
				["races"] = HORDE_ONLY,
				["coord"] = { 52.6, 58.2, ZULDAZAR },
				["groups"] = COMMON_BFA_PVP_RECIPES_S1_S2,
			}),
			n(140139, {	-- Spearmon Kol
				["coord"] = { 77.0, 16.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["sym"] = {{"select","itemID",
					2531,	-- Great Axe
					15811,	-- Heavy Spear
					8177,	-- Practice Sword
					49395,	-- Rigging Slicer
					15810,	-- Short Spear
				}},
			}),
			n(143555, {	-- Xander Silberman
				["coord"] = { 51.6, 58.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					moh(5, i(168920, {	-- Azerite-Encrusted Timequartz (Rank 1)
						["sourceQuests"] = { 56500 },	-- Storming the Battlefields
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
						["classes"] = HEALERS,
					})),
					moh(5, i(168442, {	-- Roiling Blood of the Vanquished (Rank 1)
						["sourceQuests"] = { 56500 },	-- Storming the Battlefields
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
						["sourceQuests"] = { 56500 },	-- Storming the Battlefields
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
		}),
	}),
})));
