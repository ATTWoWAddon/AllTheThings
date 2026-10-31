-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local WAYLAID_CRATES_HEADER = createHeader({
	readable = "Waylaid Crates",
	icon = 132765,
	text = {
		en = "Waylaid Crates",
	},
	description = {
		en = "Waylaid Crates drop from creatures of level 10 and above all over Azeroth. Read the label to identify the shipment, then fill it with any one of the listed bundles to make a Sealed Crate, and deliver it to your faction's trade representative for Merchant's Favor.",
	},
});
root(ROOTS.ExpansionFeatures, {
	n(TRADE_LOGISTICS, {
		timeline = { TIMELINE.ADDED_1_60_1 },
		groups = {
			n(WAYLAID_CRATES_HEADER, {
				n(QUESTS, {
					q(91899, {	-- A Sealed Crate
						aqd = {
							qg = 256390,	-- Marcy Baker <Inventory Intake>
							coord = { 9.75, 71.02, MAP.REDRIDGE_MOUNTAINS },
						},
						hqd = {
							qg = 256386,	-- Dokimi <Inventory Intake>
							coord = { 50.15, 29.35, MAP.THE_BARRENS },
						},
						repeatable = true,
						groups = {
							objective(1, {	-- Sealed Apprentice Crate
								provider = { "i", 248765 },	-- Sealed Apprentice Crate
							}),
							currency(3402),	-- Merchant's Favor x5
						},
					}),
					q(91900, {	-- A Sealed Crate
						aqd = {
							qg = 256390,	-- Marcy Baker <Inventory Intake>
							coord = { 9.75, 71.02, MAP.REDRIDGE_MOUNTAINS },
						},
						hqd = {
							qg = 256386,	-- Dokimi <Inventory Intake>
							coord = { 50.15, 29.35, MAP.THE_BARRENS },
						},
						repeatable = true,
						groups = {
							objective(1, {	-- Sealed Journeyman Crate
								provider = { "i", 248766 },	-- Sealed Journeyman Crate
							}),
							currency(3402),	-- Merchant's Favor x10
						},
					}),
					q(91901, {	-- A Sealed Crate
						aqd = {
							qg = 256390,	-- Marcy Baker <Inventory Intake>
							coord = { 9.75, 71.02, MAP.REDRIDGE_MOUNTAINS },
						},
						hqd = {
							qg = 256386,	-- Dokimi <Inventory Intake>
							coord = { 50.15, 29.35, MAP.THE_BARRENS },
						},
						repeatable = true,
						groups = {
							objective(1, {	-- Sealed Expert Crate
								provider = { "i", 248767 },	-- Sealed Expert Crate
							}),
							currency(3402),	-- Merchant's Favor x15
						},
					}),
					q(91904, {	-- A Sealed Crate
						aqd = {
							qg = 256390,	-- Marcy Baker <Inventory Intake>
							coord = { 9.75, 71.02, MAP.REDRIDGE_MOUNTAINS },
						},
						hqd = {
							qg = 256386,	-- Dokimi <Inventory Intake>
							coord = { 50.15, 29.35, MAP.THE_BARRENS },
						},
						repeatable = true,
						groups = {
							objective(1, {	-- Sealed Apprentice Crate
								provider = { "i", 248770 },	-- Sealed Apprentice Crate
							}),
							currency(3402),	-- Merchant's Favor x10
						},
					}),
					q(91905, {	-- A Sealed Crate
						aqd = {
							qg = 256390,	-- Marcy Baker <Inventory Intake>
							coord = { 9.75, 71.02, MAP.REDRIDGE_MOUNTAINS },
						},
						hqd = {
							qg = 256386,	-- Dokimi <Inventory Intake>
							coord = { 50.15, 29.35, MAP.THE_BARRENS },
						},
						repeatable = true,
						groups = {
							objective(1, {	-- Sealed Journeyman Crate
								provider = { "i", 248771 },	-- Sealed Journeyman Crate
							}),
							currency(3402),	-- Merchant's Favor x20
						},
					}),
					q(91906, {	-- A Sealed Crate
						aqd = {
							qg = 256390,	-- Marcy Baker <Inventory Intake>
							coord = { 9.75, 71.02, MAP.REDRIDGE_MOUNTAINS },
						},
						hqd = {
							qg = 256386,	-- Dokimi <Inventory Intake>
							coord = { 50.15, 29.35, MAP.THE_BARRENS },
						},
						repeatable = true,
						groups = {
							objective(1, {	-- Sealed Expert Crate
								provider = { "i", 248772 },	-- Sealed Expert Crate
							}),
							currency(3402),	-- Merchant's Favor x30
						},
					}),
					q(93862, {	-- Crate Return
						description = "Use a Forged Delivery Receipt from an Uncertified Scribe on an empty Waylaid Crate to make a Notarized Shipping Container, then return it to your faction's trade representatives.",
						repeatable = true,
						timeline = { TIMELINE.CREATED_1_60_1 },
						groups = {
							objective(1, {	-- Notarized Shipping Container
								provider = { "i", 262917 },	-- Notarized Shipping Container
							}),
						},
					}),
					q(98247, {	-- Shipping Label (A)
						description = "The shipping label appears in your inventory once you seal a waylaid crate for the first time.",
						qs = 280179,	-- Shipping Label (QS!)
						qg = 256390,	-- Marcy Baker <Inventory Intake>
						coord = { 9.6, 71.0, MAP.REDRIDGE_MOUNTAINS },
						races = ALLIANCE_ONLY,
						lvl = 10,
						groups = {
							currency(3402),	-- Merchant's Favor x50
						},
					}),
					q(98248, {	-- Shipping Label (H)
						description = "The shipping label appears in your inventory once you seal a waylaid crate for the first time.",
						qs = 280180,	-- Shipping Label (QS!)
						qg = 256386,	-- Dokimi <Inventory Intake>
						coord = { 50.0, 29.2, MAP.THE_BARRENS },
						races = HORDE_ONLY,
						lvl = 10,
						groups = {
							currency(3402),	-- Merchant's Favor x50
						},
					}),
				}),
				i(248549),	-- Waylaid Crate
				n(createHeader({	-- Gathering
					readable = "Gathering",
					icon = 131025,
					text = {
						en = "Gathering",
						-- TODO: de = "",
						es = "Recolección",
						mx = "Recolección",
						-- TODO: fr = "",
						-- TODO: it = "",
						-- TODO: ko = "",
						-- TODO: pt = "",
						-- TODO: ru = "",
						cn = "采集",
						tw = "採集",
					},
				}), {
					-- Apprentice
					i(248685, {	-- Waylaid Crate: Apprentice Curiosities
						i(248765),	-- Sealed Apprentice Crate
					}),
					i(248682, {	-- Waylaid Crate: Apprentice Herbs
						i(248765),	-- Sealed Apprentice Crate
					}),
					i(248683, {	-- Waylaid Crate: Apprentice Ore
						i(248765),	-- Sealed Apprentice Crate
					}),
					i(248684, {	-- Waylaid Crate: Apprentice Textiles
						i(248765),	-- Sealed Apprentice Crate
					}),
					-- Journeyman
					i(248689, {	-- Waylaid Crate: Journeyman Curiosities
						i(248766),	-- Sealed Journeyman Crate
					}),
					i(248686, {	-- Waylaid Crate: Journeyman Herbs
						i(248766),	-- Sealed Journeyman Crate
					}),
					i(248687, {	-- Waylaid Crate: Journeyman Ore
						i(248766),	-- Sealed Journeyman Crate
					}),
					i(248688, {	-- Waylaid Crate: Journeyman Textiles
						i(248766),	-- Sealed Journeyman Crate
					}),
					-- Expert
					i(248690, {	-- Waylaid Crate: Earthly Expert Herbs
						i(248767),	-- Sealed Expert Crate
					}),
					i(248694, {	-- Waylaid Crate: Expert Curiosities
						i(248767),	-- Sealed Expert Crate
					}),
					i(248692, {	-- Waylaid Crate: Expert Ore
						i(248767),	-- Sealed Expert Crate
					}),
					i(248693, {	-- Waylaid Crate: Expert Textiles
						i(248767),	-- Sealed Expert Crate
					}),
					i(248691, {	-- Waylaid Crate: Flowering Expert Herbs
						i(248767),	-- Sealed Expert Crate
					}),
					-- Artisan
					i(248699, {	-- Waylaid Crate: Artisan Curiosities
						i(248768),	-- Sealed Artisan Crate
					}),
					i(248697, {	-- Waylaid Crate: Artisan Ore
						i(248768),	-- Sealed Artisan Crate
					}),
					i(248698, {	-- Waylaid Crate: Artisan Textiles
						i(248768),	-- Sealed Artisan Crate
					}),
					i(248695, {	-- Waylaid Crate: Earthly Artisan Herbs
						i(248768),	-- Sealed Artisan Crate
					}),
					i(248696, {	-- Waylaid Crate: Flowering Artisan Herbs
						i(248768),	-- Sealed Artisan Crate
					}),
				}),
				n(createHeader({	-- Crafted
					readable = "Crafted",
					icon = 131034,
					text = {
						en = "Crafted",
						-- TODO: de = "",
						es = "Fabricado",
						mx = "Fabricado",
						-- TODO: fr = "",
						-- TODO: it = "",
						-- TODO: ko = "",
						-- TODO: pt = "",
						-- TODO: ru = "",
						cn = "制造",
						tw = "製作",
					},
				}), {
					-- Apprentice
					i(248702, {	-- Waylaid Crate: Apprentice Fabrics
						i(248770),	-- Sealed Apprentice Crate
					}),
					i(248703, {	-- Waylaid Crate: Apprentice Ingots
						i(248770),	-- Sealed Apprentice Crate
					}),
					i(248704, {	-- Waylaid Crate: Apprentice Parts
						i(248770),	-- Sealed Apprentice Crate
					}),
					-- Journeyman
					i(248705, {	-- Waylaid Crate: Journeyman Fabrics
						i(248771),	-- Sealed Journeyman Crate
					}),
					i(248706, {	-- Waylaid Crate: Journeyman Ingots
						i(248771),	-- Sealed Journeyman Crate
					}),
					i(248707, {	-- Waylaid Crate: Journeyman Parts
						i(248771),	-- Sealed Journeyman Crate
					}),
					-- Expert
					i(248708, {	-- Waylaid Crate: Expert Fabrics
						i(248772),	-- Sealed Expert Crate
					}),
					i(248709, {	-- Waylaid Crate: Expert Ingots
						i(248772),	-- Sealed Expert Crate
					}),
					i(248710, {	-- Waylaid Crate: Expert Parts
						i(248772),	-- Sealed Expert Crate
					}),
					-- Artisan
					i(248711, {	-- Waylaid Crate: Artisan Fabrics
						i(248773),	-- Sealed Artisan Crate
					}),
					i(248712, {	-- Waylaid Crate: Artisan Ingots
						i(248773),	-- Sealed Artisan Crate
					}),
					i(248713, {	-- Waylaid Crate: Artisan Parts
						i(248773),	-- Sealed Artisan Crate
					}),
				}),
				-- TODO: The rare Sealed crates (248775-248779) and the Sealed Elite Crates (248769, 248774) have no known source or quest yet.
			}),
		},
	}),
});
