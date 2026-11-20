-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, {
	n(TRADE_LOGISTICS, {
		timeline = { TIMELINE.ADDED_1_60_1 },
		groups = {
			n(VENDORS, {
				n(256732, {	-- Alynsia <Enchanter>
					coord = { 11.1, 71.6, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = ENCHANTING_RECIPES.MERCHANTS_FAVOR_RECIPES_ALLIANCE,
				}),
				n(248196, {	-- Apothecary Durelle <Alchemist>
					coord = { 49.8, 29.6, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = ALCHEMY_RECIPES.MERCHANTS_FAVOR_RECIPES_HORDE,
				}),
				n(248199, {	-- Beneris <Enchanting>
					coord = { 49.6, 29.8, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = ENCHANTING_RECIPES.MERCHANTS_FAVOR_RECIPES_HORDE,
				}),
				n(256734, {	-- Daniel Stitchsong <Leatherworker>
					coord = { 10.0, 72.6, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = LEATHERWORKING_RECIPES.MERCHANTS_FAVOR_RECIPES_ALLIANCE,
				}),
				n(256742, {	-- Dianne Softstep <Uncertified Scribe>
					coord = { 9.0, 76.6, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = {
						i(262902, {	-- Forged Delivery Receipt
							cost = { { "c", 3402, 15 } },	-- x15 Merchant's Favor
							groups = {
								i(262917),	-- Notarized Shipping Container
							},
						}),
						i(262896, {	-- Forger's Quill
							minReputation = { 2586, HONORED },	-- Azeroth Commerce Authority, Honored.
							cost = { { "c", 3402, 15 } },	-- x15 Merchant's Favor
						}),
					},
				}),
				n(248200, {	-- Fizzlefuse <Opportunist Engineer>
					coord = { 49.8, 29.6, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = ENGINEERING_RECIPES.MERCHANTS_FAVOR_RECIPES_HORDE,
				}),
				n(256733, {	-- Fritz Fizzle <Engineer>
					coord = { 10.4, 74.4, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = ENGINEERING_RECIPES.MERCHANTS_FAVOR_RECIPES_ALLIANCE,
				}),
				n(256384, {	-- Gishah <Supply Officer>
					coord = { 49.4, 29.4, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = {
						i(270887, {	-- Advertising License Application (QS!)
							minReputation = { 2587, HONORED },	-- Durotar Supply and Logistics, Honored.
							cost = { { "c", 3402, 1200 } },	-- x1200 Merchant's Favor
						}),
						i(262764, {	-- Durotar Supply and Logistics Tabard
							minReputation = { 2587, EXALTED },	-- Durotar Supply and Logistics, Exalted.
							cost = { { "c", 3402, 200 } },	-- x200 Merchant's Favor
						}),
						i(284664, {	-- Packmule Treat
							minReputation = { 2587, REVERED },	-- Durotar Supply and Logistics, Revered.
							cost = { { "c", 3402, 1500 } },	-- x1500 Merchant's Favor
						}),
					},
				}),
				n(248197, {	-- Gor'mak <Blacksmith>
					coord = { 49.8, 29.6, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = BLACKSMITHING_RECIPES.MERCHANTS_FAVOR_RECIPES_HORDE,
				}),
				n(256736, {	-- Huey Sunnydale <Mule Handler>
					coord = { 8.4, 72.0, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = {
						i(262766, {	-- Reins of the Pack Kodo (MOUNT!)
							minReputation = { 2586, EXALTED },	-- Azeroth Commerce Authority, Exalted.
							cost = { { "c", 3402, 6000 } },	-- x6000 Merchant's Favor
						}),
					},
				}),
				n(248202, {	-- Jim'bek <Tailor>
					coord = { 49.6, 29.6, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = TAILORING_RECIPES.MERCHANTS_FAVOR_RECIPES_HORDE,
				}),
				n(256731, {	-- Kalsey Sanden <Chef>
					coord = { 10.8, 72.8, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					sym = {{ "select", "itemID",
						2692,	-- Hot Spices
						2678,	-- Mild Spices
						159,	-- Refreshing Spring Water
						4536,	-- Shiny Red Apple
						10284,	-- Simple Flour
						4470,	-- Simple Wood
						3713,	-- Soothing Spices
						11291,	-- Star Wood
						272941,	-- Thick Logs
					}},
					groups = {
						i(249888, {	-- Recipe: Calcified Smoothie (RECIPE!)
							minReputation = { 2586, FRIENDLY },	-- Azeroth Commerce Authority, Friendly.
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(249887, {	-- Recipe: Mrrggl Smrrthle (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(249886, {	-- Recipe: Slimy Smoothie (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
						i(249889, {	-- Recipe: Spicy Smoothie (RECIPE!)
							minReputation = { 2586, FRIENDLY },	-- Azeroth Commerce Authority, Friendly.
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(249885, {	-- Recipe: Venomous Smoothie (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(249890, {	-- Recipe: Wicked Smoothie (RECIPE!)
							minReputation = { 2586, HONORED },	-- Azeroth Commerce Authority, Honored.
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
					},
				}),
				n(256672, {	-- Kurvelk Shadowhoof <Uncertified Scribe>
					coord = { 49.8, 30.0, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = {
						i(262902, {	-- Forged Delivery Receipt
							cost = { { "c", 3402, 15 } },	-- x15 Merchant's Favor
							groups = {
								i(262917),	-- Notarized Shipping Container
							},
						}),
						i(262896, {	-- Forger's Quill
							minReputation = { 2587, HONORED },	-- Durotar Supply and Logistics, Honored.
							cost = { { "c", 3402, 15 } },	-- x15 Merchant's Favor
						}),
					},
				}),
				n(256735, {	-- Mivin Shadowweave <Tailor>
					coord = { 10.0, 72.8, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = TAILORING_RECIPES.MERCHANTS_FAVOR_RECIPES_ALLIANCE,
				}),
				n(256729, {	-- Nina Surefire <Alchemist>
					coord = { 10.8, 72.6, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = ALCHEMY_RECIPES.MERCHANTS_FAVOR_RECIPES_ALLIANCE,
				}),
				n(256400, {	-- Okamache <Kodo Handler>
					coord = { 49.6, 28.8, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = {
						i(262766, {	-- Reins of the Pack Kodo (MOUNT!)
							minReputation = { 2587, EXALTED },	-- Durotar Supply and Logistics, Exalted.
							cost = { { "c", 3402, 6000 } },	-- x6000 Merchant's Favor
						}),
					},
				}),
				n(248201, {	-- Pawani <Leatherworker>
					coord = { 49.6, 29.6, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = LEATHERWORKING_RECIPES.MERCHANTS_FAVOR_RECIPES_HORDE,
				}),
				n(256730, {	-- Stondry Darkhammer <Blacksmith>
					coord = { 10.4, 74.6, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = BLACKSMITHING_RECIPES.MERCHANTS_FAVOR_RECIPES_ALLIANCE,
				}),
				n(256389, {	-- Tamelyn Aldridge <Supply Officer>
					coord = { 10.5, 71.3, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = {
						i(270888, {	-- Advertising License Application (QS!)
							minReputation = { 2586, HONORED },	-- Azeroth Commerce Authority, Honored.
							cost = { { "c", 3402, 1200 } },	-- x1200 Merchant's Favor
						}),
						i(262765, {	-- Azeroth Commerce Authority Tabard
							minReputation = { 2586, EXALTED },	-- Azeroth Commerce Authority, Exalted.
							cost = { { "c", 3402, 200 } },	-- x200 Merchant's Favor
						}),
						i(284664, {	-- Packmule Treat
							minReputation = { 2586, REVERED },	-- Azeroth Commerce Authority, Revered.
							cost = { { "c", 3402, 1500 } },	-- x1500 Merchant's Favor
						}),
					},
				}),
			}),
		},
	}),
});
