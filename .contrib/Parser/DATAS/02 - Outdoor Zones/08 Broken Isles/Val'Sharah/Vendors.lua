---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(BROKEN_ISLES, bubbleDown({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	m(VALSHARAH, {
		n(VENDORS, {
			n(252498, {	-- Corbin Branbell <Decor Specialist>
				["coord"] = { 42.1, 59.4, VALSHARAH },
				["timeline"] = { ADDED_11_2_7 },
				["groups"] = {
					i(245615, {	-- Bradensbrook Smoke Lantern (DECOR!)
						["cost"] = { { "c", ORDER_RESOURCES, 350 } },
					}),
					i(245616, {	-- Bradensbrook Thorned Well (DECOR!)
						["cost"] = { { "c", ORDER_RESOURCES, 1000 } },
					}),
				},
			}),
			n(112634, {	-- Hilseth Travelstride <Provisioner>
				["coords"] = {	-- Walks back-and-forth between the coordinates
					{ 57.2, 72.4, VALSHARAH },
					{ 57.6, 76.5, VALSHARAH },
					{ 56.4, 80.6, VALSHARAH },
				},
				["groups"] = {
					i(245260, {	-- Kaldorei Chef's Table (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
						["cost"] = { { "c", ORDER_RESOURCES, 400 } },
					}),
					i(238863, {	-- Kaldorei Desk (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
						["cost"] = { { "c", ORDER_RESOURCES, 300 } },
					}),
				},
			}),
			n(93974, {	-- Leyweaver Erenyi
				["coord"] = { 70.4, 46.6, VALSHARAH },
				["groups"] = {
					i(127022, {	-- Pattern: Imbued Silkweave Cinch [Rank 1] (RECIPE!)
						["cost"] = {{ "i", 124437, 100 }},	-- 100x Shal'dorei Silk
					}),
				},
			}),
			n(109306, {	-- Myria Glenbrook
				["coord"] = { 60.2, 84.9, VALSHARAH },
				["groups"] = {
					i(245698, {	-- Kaldorei Stone Fence (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
						["cost"] = { { "c", ORDER_RESOURCES, 150 } },
					}),
					i(245699, {	-- Kaldorei Stone Fencepost (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
						["cost"] = { { "c", ORDER_RESOURCES, 75 } },
					}),
					i(245258, {	-- Val'sharah Bookcase (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
						["cost"] = { { "c", ORDER_RESOURCES, 800 } },
					}),
				},
			}),
			n(253387, {	-- Selfira Ambergrove <Decor Specialist>
				["description"] = "Reputation-based Decor from this Vendor is currently NOT discounted!",	-- possibly a bug Blizz might fix
				["coord"] = { 54.2, 72.4, VALSHARAH },
				["timeline"] = { ADDED_11_2_7 },
				["sym"] = {{"select","itemID",
					-- Non-discounted Rep Items from Sylvia Hartshorn
					245261,	-- Kaldorei Washbasin (DECOR!)
					251494,	-- Moon-Blessed Barrel (DECOR!)
					238861,	-- Cenarion Rectangular Rug (DECOR!)
					264168,	-- Cenarion Round Rug (DECOR!)
					238859,	-- Cenarion Privacy Screen (DECOR!)
				}},
				["groups"] = {
					i(245739, {	-- Crescent Moon Lamppost (DECOR!)
						["sourceQuest"] = 40890,	-- The Tears of Elune
						["cost"] = { { "c", ORDER_RESOURCES, 600 } },
					}),
					i(238860, {	-- Deluxe Val'sharah Bed (DECOR!)
						["cost"] = { { "c", ORDER_RESOURCES, 1000 } },
					}),
					i(245700, {	-- Kaldorei Cushioned Seat (DECOR!)
						["sourceQuest"] = 38663,	-- The Die is Cast
						["cost"] = { { "c", ORDER_RESOURCES, 250 } },
					}),
					i(245703, {	-- Kaldorei Treasure Trove (DECOR!)
						["sourceAchievement"] = 11258,	-- Treasures of Val'sharah
						["cost"] = { { "c", ORDER_RESOURCES, 750 } },
					}),
					i(245702, {	-- Kaldorei Wall Shelf (DECOR!)
						["sourceQuest"] = 38147,	-- Entangled Dreams
						["cost"] = { { "c", ORDER_RESOURCES, 450 } },
					}),
					i(245697, {	-- Shala'nir Feather Bed (DECOR!)
						["sourceAchievement"] = 10698,	-- That's Val'sharah Folks!
						["cost"] = { { "c", ORDER_RESOURCES, 950 } },
					}),
				},
			}),
			n(106901, {	-- Sylvia Hartshorn <Dreamweaver Emissary>
				["coord"] = { 54.6, 73.2, VALSHARAH },
				["groups"] = bubbleDownClassicRep(FACTION_THE_DREAMWEAVERS, {
					{		-- Neutral
					}, {	-- Friendly
						i(251494, {	-- Moon-Blessed Barrel (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = { { "c", ORDER_RESOURCES, 200 } },
						}),
						i(130158, {	-- Path of Elothir (TOY!)
							["cost"] = 1000000,	-- 100g
						}),
					}, {	-- Honored
						i(140214, {	-- Boon of the Harvester
							["cost"] = 800000,	-- 80
							["groups"] = { i(140222) },	-- Harvested Goods
						}),
						i(238861, {	-- Cenarion Rectangular Rug (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {
								{ "g", 5000000 },	-- 500g
								{ "c", ORDER_RESOURCES, 750 },
							},
						}),
						i(264168, {	-- Cenarion Round Rug (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {
								{ "g", 5000000 },	-- 500g
								{ "c", ORDER_RESOURCES, 750 },
							},
						}),
						i(128599, {	-- Formula: Enchant Ring - Word of Versatility [Rank 3] (RECIPE!)
							["cost"] = 5500000,	-- 550g
						}),
						i(137883, {	-- Pattern: Warhide Jerkin [Rank 3] (RECIPE!)
							["cost"] = 5500000,	-- 550g
						}),
						i(130170, {	-- Tear of the Green Aspect (TOY!)
							["cost"] = 3000000,	-- 300g
						}),
						i(187932, {	-- Technique: Mark of the Duskwing Raven (RECIPE!)
							["timeline"] = { ADDED_9_1_5 },
							["cost"] = 5500000,	-- 550g
						}),
						i(140745, {	-- Treasure Map: Val'sharah
							["cost"] = 200000,	-- 20g
						}),
					}, {	-- Revered
						i(23712, {	-- Ash'ana (PET!)
							["cost"] = 5000000,	-- 500g
						}),
						i(245261, {	-- Kaldorei Washbasin (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {
								{ "g", 7000000 },	-- 700g
								{ "c", ORDER_RESOURCES, 1000 },
							},
						}),
						i(130232, {	-- Moonfeather Statue (TOY!)
							["cost"] = 5000000,	-- 500g
						}),
						i(139605, {	-- Pendant of the Moon Temple
							["cost"] = 10000000,	-- 1,000g
						}),
					}, {	-- Exalted
						i(238859, {	-- Cenarion Privacy Screen (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {
								{ "g", 10000000 },	-- 1,000g
								{ "c", ORDER_RESOURCES, 2000 },
							},
						}),
						i(140578, {	-- Dreamweaver Initiate's Tabard
							["cost"] = 3000000,	-- 300g
						}),
						i(128608, {	-- Formula: Enchant Cloak - Binding of Agility [Rank 3] (RECIPE!)
							["cost"] = 30000000,	-- 3,000g
						}),
						i(128593, {	-- Formula: Enchant Neck - Mark of the Claw [Rank 2] (RECIPE!)
							["cost"] = 15000000,	-- 1,500g
						}),
						i(128601, {	-- Formula: Enchant Ring - Binding of Haste [Rank 3] (RECIPE!)
							["cost"] = 30000000,	-- 3,000g
						}),
						i(137898, {	-- Pattern: Dreadleather Footpads [Rank 3] (RECIPE!)
							["cost"] = 30000000,	-- 3,000g
						}),
						i(137896, {	-- Pattern: Dreadleather Mask [Rank 3] (RECIPE!)
							["cost"] = 30000000,	-- 3,000g
						}),
						i(137895, {	-- Pattern: Dreadleather Pants [Rank 3] (RECIPE!)
							["cost"] = 30000000,	-- 3,000g
						}),
						i(139596, {	-- Pauldrons of Entwined Roots
							["cost"] = 50000000,	-- 5,000g
						}),
						i(140652, {	-- Seed of Solar Fire - Druid Artifact Skin
							["cost"] = 20000000,	-- 2,000g
						}),
						i(140667, {	-- Tabard of the Dreamweavers
							["cost"] = 6000000,	-- 600g
						}),
					},
				}),
			}),
		}),
	}),
})));
