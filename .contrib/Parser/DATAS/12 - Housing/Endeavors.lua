---------------------------------------------
--      H O U S I N G    M O D U L E       --
---------------------------------------------

ENDEAVOR = createHeader({
	readable = "Endeavor",
	icon = 134495,
	text = {
		en = "Endeavor",
	},
});
KARESHI_ENDEAVOR = createHeader({
	readable = "K'areshi Endeavor",
	icon = 7413585,
	text = {
		en = "K'areshi Endeavor",
	},
});
GRUMMLE_ENDEAVOR = createHeader({
	readable = "Grummle Endeavor",
	icon = 7301740,
	text = {
		en = "Grummle Endeavor",
	},
});
NIFFEN_ENDEAVOR = createHeader({
	readable = "Niffen Endeavor",
	icon = 7413586,
	text = {
		en = "Niffen Endeavor",
	},
});
SINDOREI_ENDEAVOR = createHeader({
	readable = "Sin'dorei Endeavor",
	icon = 7301737,
	text = {
		en = "Sin'dorei Endeavor",
	},
});
DRACONIC_ENDEAVOR = createHeader({
	readable = "Draconic Endeavor",
	icon = 7301738,
	text = {
		en = "Draconic Endeavor",
	},
});
MECHAGNOME_ENDEAVOR = createHeader({
	readable = "Mechagnome Endeavor",
	icon = 7301741,
	text = {
		en = "Mechagnome Endeavor",
	},
});

local EndeavorVendorCoords = {
	{ 53.1, 38.3, FOUNDERS_POINT },
	{ 54.3, 56.1, RAZORWIND_SHORES },
}

local i_DecorCoupons = function(itemID, couponCost)
	return
	i(itemID, {
		["cost"] = {{ "c", COMMUNITY_COUPONS, couponCost }},
	})
end

root(ROOTS.Housing, n(ENDEAVOR, {
	["timeline"] = { ADDED_12_0_0 },
	["groups"] = {
		filter(MISC, {
			-- Grummle Endeavor
			i(81054),	-- Kafa'Kota Berry
			i(242693),	-- Kafaccino
			i(253750),	-- Luckydo
			-- Niffen Endeavor
			i(265361),	-- Pollinic Incense
		}),
		n(REWARDS, {
			currency(COMMUNITY_COUPONS),
		}),
		-- "Weekly" Quests (these actually reset more often but not necessarily daily)
		n(QUESTS, sharedData({
			["isWeekly"] = true,
		},{
			-- TODO: Separate quests by endeavor
			q(92429, {	-- Alternative Skinning
				["qgs"] = {
					251056, -- Gerath
					254255,	-- Hera Fer
				},
				["coords"] = {
					{ 52.9, 39.1, FOUNDERS_POINT },
					{ 54.2, 56.1, RAZORWIND_SHORES },
				},
				["groups"] = { i(251632) },	-- Biological Vacuum (QI!)
			}),
			q(92417, {	-- Farm to Table
				["qg"] = 250970, -- Yolan Hidor
				["coords"] = {
					{ 53.2, 38.0, FOUNDERS_POINT },
					{ 54.9, 57.3, RAZORWIND_SHORES },
				},
				["groups"] = {
					-- Founder's Point
					i(257886),	-- Ripe Apple (QI!)
					i(257889),	-- Ripe Carrot (QI!)
					i(257888),	-- Ripe Grapes (QI!)
					-- Razorwind Shores
					i(257890),	-- Ripe Cabbage (QI!)
					i(257892),	-- Ripe Coconut (QI!)
					i(257893),	-- Ripe Bananas (QI!)
					-- ??
					i(257903),	-- Ripe Tower Lettuce (QI!)
				},
			}),
			q(92402, {	-- Magical Touch
				["qg"] = 254536, -- Gelen Jord
				["coords"] = {
					{ 52.1, 38.1, FOUNDERS_POINT },
					-- { X, Y, RAZORWIND_SHORES },
				},
				["groups"] = {
					i(251273),	-- Slightly Magical Crystal (QI!)
					i(251492),	-- Slightly Magical Crystal Locator (QI!)
				},
			}),
			q(92443, {	-- Reverse Herb Farming
				["qg"] = 254255,	-- Hera Fer
				["coords"] = {
					{ 52.9, 37.6, FOUNDERS_POINT },
					{ 54.2, 56.1, RAZORWIND_SHORES },
				},
			}),
			q(92445, {	-- Smelting for Two
				["qg"] = 251185,	-- Jaren Holdart
				["coords"] = {
					{ 52.5, 38.4, FOUNDERS_POINT },
					{ 54.1, 57.0, RAZORWIND_SHORES },
				},
			}),
			-- Niffen
			q(94654),	-- Snail Mail - Apple
			q(94660),	-- Snail Mail - Bouquet of Fungi
			q(94662),	-- Snail Mail - Caramel
			q(94664),	-- Snail Mail - Caviar
			q(94641),	-- Snail Mail - Cedarwood
			q(94663),	-- Snail Mail - Chocolatey
			q(94645),	-- Snail Mail - Cinnamon
			q(94646),	-- Snail Mail - Clove
			q(94650),	-- Snail Mail - Coconut
			q(94661),	-- Snail Mail - Crushed up Granite
			q(94657),	-- Snail Mail - Dewy Mold
			q(94648),	-- Snail Mail - Dreamfoil
			q(94642),	-- Snail Mail - Fire Leaf
			q(94644),	-- Snail Mail - Fjarnskaggl
			q(94653),	-- Snail Mail - Foxflower
			q(94665),	-- Snail Mail - Fresh-Cut Grass
			q(94651),	-- Snail Mail - Honey
			q(94652),	-- Snail Mail - Just-Rained
			q(94659),	-- Snail Mail - Nerubian Hootch Wine
			q(94647),	-- Snail Mail - Nutmeg
			q(94655),	-- Snail Mail - Peachy
			q(94643),	-- Snail Mail - Roasted Ham
			q(94658),	-- Snail Mail - Scent of the Wind
			q(94649),	-- Snail Mail - Seven Day Old Sweat
			q(94656),	-- Snail Mail - Soapy
			q(94640),	-- Snail Mail - Writhebark
		})),
		n(TREASURES, {
		}),
		n(VENDORS, {
			n(DRACONIC_ENDEAVOR, {
				n(250820, {	-- Hordranin <Endeavor Trader>
					["coords"] = EndeavorVendorCoords,
					["groups"] = {
						i_DecorCoupons(250704, 15),	-- Ancient Weyrn Device
						i_DecorCoupons(250702, 5),	-- Artisan's Measuring Scales
						i_DecorCoupons(250699, 10),	-- Dark Talon Pennant
						i_DecorCoupons(250697, 10),	-- Draconic Auctioneer's Lectern
						i_DecorCoupons(250694, 15),	-- Draconic Metalshaper's Anvil
						i_DecorCoupons(250701, 20),	-- Draconic Trader's Cart
						i_DecorCoupons(250627, 5),	-- Forbidden Fork
						i_DecorCoupons(250696, 10),	-- Green Thumb's Watering Can
						i_DecorCoupons(250698, 10),	-- Obsidian Warder Pennant
						i_DecorCoupons(250695, 10),	-- Replica Grathardormu's Hammer
						i_DecorCoupons(250700, 5),	-- Roasted Ram Leg
						i_DecorCoupons(250703, 10),	-- War Creche Teaching Crystal
					},
				}),
			}),
			n(GRUMMLE_ENDEAVOR, {
				n(249684, {	-- Brother Dovetail <Endeavor Trader>
					["coords"] = EndeavorVendorCoords,
					["groups"] = {
						i_DecorCoupons(251474, 5),	-- Ceramic Kafa Mug (DECOR!)
						i_DecorCoupons(251473, 5),	-- Commander's Kafa Mug (DECOR!)
						i_DecorCoupons(252041, 15),	-- Dalaran Espresso Machine (DECOR!)
						i_DecorCoupons(251475, 10),	-- Dalaran Kafa Grinder (DECOR!)
						i_DecorCoupons(248407, 10),	-- Dalaran Kafa Table (DECOR!)
						i_DecorCoupons(246741, 10),	-- Grummle Bedroll (DECOR!)
						i_DecorCoupons(248402, 15),	-- Grummle Kafa Refinery (DECOR!)
						i_DecorCoupons(246686, 10),	-- Grummle Sleeping Bag (DECOR!)
						i_DecorCoupons(248403, 10),	-- Grummle Tent (DECOR!)
						i_DecorCoupons(248405, 5),	-- Kafa Creamer (DECOR!)
						i_DecorCoupons(246838, 10),	-- Kafa Press (DECOR!)
						i_DecorCoupons(248406, 10),	-- Legerdemain Lounge Sign Board (DECOR!)
						i_DecorCoupons(252039, 5),	-- Open Sack of Roasted Kafa (DECOR!)
						i_DecorCoupons(251472, 10),	-- Pandaren Wooden Cart (DECOR!)
						i_DecorCoupons(252040, 5),	-- Sealed Sack of Roasted Kafa (DECOR!)
					},
				}),
			}),
			n(KARESHI_ENDEAVOR, {
				n(252605, {	-- Aeeshna <Endeavor Trader>
					["coords"] = EndeavorVendorCoords,
					["groups"] = {
						i_DecorCoupons(262664, 5),	-- Complete Guide to K'areshi Wrappings, Vol. 11 (DECOR!)
						i_DecorCoupons(263048, 15),	-- Consortium Energy Banner (DECOR!)
						i_DecorCoupons(263043, 10),	-- Consortium Energy Barrel (DECOR!)
						i_DecorCoupons(263045, 20),	-- Consortium Energy Collector (DECOR!)
						i_DecorCoupons(263046, 5),	-- Consortium Energy Crate (DECOR!)
						i_DecorCoupons(262884, 10),	-- Consortium Glowpost (DECOR!)
						i_DecorCoupons(263044, 5),	-- Empty Consortium Energy Barrel (DECOR!)
						i_DecorCoupons(263047, 5),	-- Empty Consortium Energy Crate (DECOR!)
						i_DecorCoupons(262665, 5),	-- K'areshi Holo-Crystal Projector (DECOR!)
						i_DecorCoupons(262666, 2),	-- K'areshi Incense Burner (DECOR!)
						i_DecorCoupons(262667, 5),	-- Oath Scale (DECOR!)
						i_DecorCoupons(262907, 10),	-- Tazaveshi Hookah (DECOR!)
					},
				}),
			}),
			n(MECHAGNOME_ENDEAVOR, {
				n(248525, {	-- Pascal-K1N6 <Endeavor Trader>
					["coords"] = EndeavorVendorCoords,
					["groups"] = {
						i_DecorCoupons(254406, 2),	-- Mechanical Gauge (DECOR!)
						i_DecorCoupons(254407, 2),	-- Dual Mechanical Gauge (DECOR!)
						i_DecorCoupons(254408, 2),	-- Lively Pistons (DECOR!)
						i_DecorCoupons(254400, 2),	-- Triple-Tested Steam Valve (DECOR!)
						i_DecorCoupons(254410, 5),	-- Blue-Glo Lantern (DECOR!)
						i_DecorCoupons(254409, 2),	-- Sturdy Drive Belt (DECOR!)
						i_DecorCoupons(254401, 5),	-- Mad Science BLueprints (DECOR!)
						i_DecorCoupons(254404, 2),	-- Sticky Lever (DECOR!)
						i_DecorCoupons(254405, 2),	-- Dual-Action Turbo Pro Lever (DECOR!)
						i_DecorCoupons(254412, 2),	-- Well-Oiled Machine Cog (DECOR!)
						i_DecorCoupons(254402, 5),	-- Safety Electrical Cabling (DECOR!)
						i_DecorCoupons(254403, 10),	-- Machagon Control Console (DECOR!)
						i_DecorCoupons(254413, 2),	-- Jury-Rigged Electrical Couple (DECOR!)
						i_DecorCoupons(254766, 10),	-- Ineffective Mechanical Privacy Screen (DECOR!)
						i_DecorCoupons(254411, 10),	-- Z-205 Mechanical Device (DECOR!)
						i_DecorCoupons(254416, 15),	-- Galvanic Storage and Maintenance Device (DECOR!)
						i_DecorCoupons(254415, 20),	-- Miniature Charging Station (DECOR!)
					},
				}),
			}),
			n(NIFFEN_ENDEAVOR, {
				n(257897, {	-- Harlowe Marl <Endeavor Trader>
					["coords"] = EndeavorVendorCoords,
					["groups"] = {
						i_DecorCoupons(264920, 5),	-- Gooey Niffen Jar
						i_DecorCoupons(265032, 5),	-- Hearty Niffen Grub
						i_DecorCoupons(264917, 5),	-- Ceramic Loamm Bowl
						i_DecorCoupons(264925, 5),	-- Kilnmaster's Bucket
						i_DecorCoupons(264918, 2),	-- Zaralek Candles
						i_DecorCoupons(264922, 2),	-- Strong Sniffin' Incense
						i_DecorCoupons(264924, 10),	-- Loamm Wheelpot
						i_DecorCoupons(265541, 1),	-- Loammy Soil
						i_DecorCoupons(264923, 15),	-- Underdecorated Underground Table
						i_DecorCoupons(264919, 20),	-- Loamm Archway
						i_DecorCoupons(264915, 15),	-- Decorated Underground Table
						i_DecorCoupons(264921, 20),	-- Zaralek Snail Cart
						i_DecorCoupons(264916, 20),	-- Loamm Bartering Stall
					},
				}),
			}),
			n(SINDOREI_ENDEAVOR, {
				n(252917, {	-- Hesta Forlath <Endeavor Trader>
					["coords"] = EndeavorVendorCoords,
					["timeline"] = { ADDED_12_0_X_LAUNCH },
					["groups"] = {
						i_DecorCoupons(253601, 5),	-- 590 Quel'Lithien Red (DECOR!)
						i_DecorCoupons(253523, 5),	-- Astalor's Hookah (DECOR!)
						i_DecorCoupons(253600, 5),	-- Eversong Crystal Glass (DECOR!)
						i_DecorCoupons(253522, 5),	-- Thalassian Chest (DECOR!)
						-- Exo Note: For these, there probably be a sourceQuests or we will need a new system that tracks milestones of the Endeavor as these items are locked behind them
						-- Reach the first milestone of the endeavor
						i_DecorCoupons(253524, 10),	-- 590 Quel'Lithien Red Display Bottle (DECOR!)
						i_DecorCoupons(254235, 5),	-- Sin'dori Artisan's Easel (DECOR!)
						-- Reach the second milestone of the endeavor
						i_DecorCoupons(253525, 10),	-- Thalassian Academy Dictation Device (DECOR!)
						-- Reach the third milestone of the endeavor
						i_DecorCoupons(253526, 15),	-- Sin'dorei Wine Display (DECOR!)
						i_DecorCoupons(253599, 15),	-- Artisanal Display Tent (DECOR!)
						-- Reach the fourth milestone of the endeavor
						-- Exo Note: This will probably have some HQT hidden behind it. Used to buy paintings in Silvermoon Bazaar but tooltip states "you don't need to keep the deed on you".
						i_DecorCoupons(253802, 30),	-- Deed of Patronage
					},
				}),
			}),
		}),
	},
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_0 } }, {
		n(ENDEAVOR, {
			n(QUESTS, {
				q(94450),	-- Twenty Five Percent Completed
				q(94451),	-- Fifty Percent Completed
				q(94452),	-- Seventy Five Percent Completed
				q(94453),	-- One Hundred Percent Completed
				q(95040),	-- Obtain Pollinic Incense from Krobbin <Endeavor Engagement>
			}),
		}),
	})),
});
