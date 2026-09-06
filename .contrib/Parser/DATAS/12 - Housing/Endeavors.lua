---------------------------------------------
--      H O U S I N G    M O D U L E       --
---------------------------------------------

ENDEAVOR = createHeader({
	readable = "Endeavor",
	icon = 134495,
	text = {
		en = "Endeavor",
		cn = "文化节",
	},
});
AMANI_ENDEAVOR = createHeader({
	readable = "Amani Endeavor",
	icon = 7672957,
	text = {
		en = "Amani Endeavor",
	},
});
DRACONIC_ENDEAVOR = createHeader({
	readable = "Draconic Endeavor",
	icon = 7301738,
	text = {
		en = "Draconic Endeavor",
		cn = "巨龙文化",
	},
});
GRUMMLE_ENDEAVOR = createHeader({
	readable = "Grummle Endeavor",
	icon = 7301740,
	text = {
		en = "Grummle Endeavor",
		cn = "土地精文化",
	},
});
KARESHI_ENDEAVOR = createHeader({
	readable = "K'areshi Endeavor",
	icon = 7413585,
	text = {
		en = "K'areshi Endeavor",
		cn = "卡雷什文化",
	},
});
KOBOLD_ENDEAVOR = createHeader({
	readable = "Kobold Endeavor",
	icon = 2061718,
	text = {
		en = "Kobold Endeavor",
	},
});
MARUUKAI_ENDEAVOR = createHeader({
	readable = "Maruukai Endeavor",
	icon = 4578413,
	text = {
		en = "Maruukai Endeavor",
	},
});
MECHAGNOME_ENDEAVOR = createHeader({
	readable = "Mechagnome Endeavor",
	icon = 7301741,
	text = {
		en = "Mechagnome Endeavor",
		cn = "机械侏儒文化",
	},
});
NIFFEN_ENDEAVOR = createHeader({
	readable = "Niffen Endeavor",
	icon = 7413586,
	text = {
		en = "Niffen Endeavor",
		cn = "鼹鼠人文化",
	},
});
SINDOREI_ENDEAVOR = createHeader({
	readable = "Sin'dorei Endeavor",
	icon = 7301737,
	text = {
		en = "Sin'dorei Endeavor",
		cn = "辛多雷文化"
	},
});
TORTOLLAN_ENDEAVOR = createHeader({
	readable = "Tortollan Endeavor",
	icon = 2065576,
	text = {
		en = "Tortollan Endeavor",
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
		n(REWARDS, {
			currency(COMMUNITY_COUPONS),
		}),
		n(AMANI_ENDEAVOR, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
			n(260485, {	-- Griftah <Endeavor Trader>
				["coords"] = EndeavorVendorCoords,
				["groups"] = {
					i_DecorCoupons(263708, 15),	-- Amani Anvil (DECOR!)
					i_DecorCoupons(274527, 2),	-- Amani Building Peg (DECOR!)
					i_DecorCoupons(274518, 20),	-- Amani Decorative Plinth (DECOR!)
					i_DecorCoupons(274521, 15),	-- Amani Road Marker (DECOR!)
					i_DecorCoupons(255649, 15),	-- Amani Water Well (DECOR!)
					i_DecorCoupons(263317, 10),	-- Amani Wicker Crate (DECOR!)
					i(269029, {	-- Bag of Totally Legitimate Amani Goods
						["cost"] = { { "i", 269994, 1 } },	-- 1x Griftah's Token of Appreciation
						["groups"] = {
							i(268976),	-- "Aromatic" Bottle
							i(269019),	-- Amani Construction Hammer
							i(268975),	-- Amani War Axe
							i(268973),	-- Bone Pen
							i(268974),	-- Deactivated Amani Hex Ward
							i(269021),	-- Jan'alai Bibelot
							i(268970),	-- Majestic Eagle Statue
							i(268977),	-- Ossein Fish Trinket
							i(268972),	-- Pressed Sanguithorn
							i(269020),	-- Scrimshaw Ward
							i(268978),	-- Torga Statue
						}
					}),
					i_DecorCoupons(274529, 15),	-- Forest Troll Fence (DECOR!)
					i_DecorCoupons(274531, 10),	-- Forest Troll Fencepost (DECOR!)
					i_DecorCoupons(274505, 30),	-- Shrine of Akil'zon, Loa of Victory (DECOR!)
					i_DecorCoupons(274539, 30),	-- Shrine of Halazzi, Loa of the Hunt (DECOR!)
					i_DecorCoupons(274537, 30),	-- Shrine of Jan'alai, Loa of Fire (DECOR!)
					i_DecorCoupons(274535, 30),	-- Shrine of Nalorakk, Loa of War (DECOR!)
					i_DecorCoupons(274525, 10),	-- Steamy Romance Tablet (DECOR!)
					i_DecorCoupons(274533, 15),	-- Witch Doctor's Punch Bowl (DECOR!)
					i_DecorCoupons(274523, 15),	-- Woven Forest Troll Rug (DECOR!)
				},
			}),
			n(267870, {	-- Unquestionably Griftah <Not Actually Griftah>
				["coords"] = {
					{ 62.4, 79.2, FOUNDERS_POINT },
					{ 40.2, 73.0, RAZORWIND_SHORES },
				},
				["groups"] = {
					i_DecorCoupons(244344, 10),	-- Griftah's Mystical Polter-Urn
					i_DecorCoupons(263875, 10),	-- Griftah's Resizing Hex-Skull
					i_DecorCoupons(276312, 10),	-- Griftah's Torch of Rotation
					q(97075),	-- Quality Goods
				},
			}),
			n(QUESTS, sharedData({
				["isWeekly"] = true,
			}, {
				q(95336, {	-- Frenzied Fossicking
					["qg"] = 263442,	-- Tol'anja
					["coords"] = {
						{ 52.7, 38.4, FOUNDERS_POINT },
						{ 54.2, 56.8, RAZORWIND_SHORES },
					},
				}),
				q(95768, {	-- My Stuff's Better Than Your Stuff
					["qgs"] = {
						262669,	-- Garben Rockfist
						262240,	-- Arnold Guyvere
					},
					["coords"] = {
						{ 53.0, 37.5, FOUNDERS_POINT },
						{ 54.4, 56.0, RAZORWIND_SHORES },
					},
				}),
				q(95673, {	-- Suspicious Scare-gull
					["qg"] = 262234,	-- Calada
					["coords"] = {
						{ 52.5, 38.6, FOUNDERS_POINT },
						{ 54.3, 57.1, RAZORWIND_SHORES },
					},
					["groups"] = {
						o(642704, {	-- Seagull Feather
							i(270210),	-- Bird Feathers (QI!)
						}),
					},
				}),
			})),
			n(REWARDS, {
				i(269994),	-- Griftah's Token of Appreciation
			}),
		})),
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
			-- Weekly Quests
			n(QUESTS, sharedData({
				["isWeekly"] = true,
			}, {
				q(92429, {	-- Alternative Skinning
					["qgs"] = {
						251056,	-- Gerath
						254255,	-- Hera Fer
					},
					["coords"] = {
						{ 52.9, 39.1, FOUNDERS_POINT },
						{ 54.2, 56.1, RAZORWIND_SHORES },
					},
					["groups"] = { i(251632) },	-- Biological Vacuum (QI!)
				}),
				q(92417, {	-- Farm to Table
					["qg"] = 250970,	-- Yolan Hidor
					["coords"] = {
						{ 53.2, 38.0, FOUNDERS_POINT },
						{ 54.9, 57.3, RAZORWIND_SHORES },
					},
					["groups"] = {
						i(257886),	-- Ripe Apple (QI!)
						i(257889),	-- Ripe Carrot (QI!)
						i(257888),	-- Ripe Grapes (QI!)
						i(257890),	-- Ripe Cabbage (QI!)
						i(257892),	-- Ripe Coconut (QI!)
						i(257893),	-- Ripe Bananas (QI!)
						i(257894),	-- Pine Apple (QI!)
						i(257903),	-- Ripe Tower Lettuce (QI!)
					},
				}),
				q(92402, {	-- Magical Touch
					["qg"] = 254536,	-- Gelen Jord
					["coords"] = {
						{ 52.1, 38.1, FOUNDERS_POINT },
						-- { X, Y, RAZORWIND_SHORES },
					},
					["qi"] = 251492,	-- Slightly Magical Crystal Locator (QI!)
					["groups"] = {
						o(572561, {	-- Crystal
							i(251273),	-- Slightly Magical Crystal (QI!)
						}),
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
			filter(MISC, {
				i(81054),	-- Kafa'Kota Berry
				i(242693),	-- Kafaccino
				i(253750),	-- Luckydo
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
		n(KOBOLD_ENDEAVOR, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
			n(271173, {	-- Timicky <Endeavor Vendor>
				["coords"] = {	-- Kobold Endeavor Vendors seem to have different coords than the others
					-- FOUNDERS_POINT
					{ 54.9, 57.3, RAZORWIND_SHORES },
				},
				["groups"] = {
					i_DecorCoupons(280267, 30),	-- Bold Kobold Kabin (DECOR!)
					i_DecorCoupons(280263, 20),	-- Candle Cage (DECOR!)
					i_DecorCoupons(280513, 20),	-- Color-Curious Candle (DECOR!)
					i_DecorCoupons(280269, 10),	-- Cozy Kobold Crate (DECOR!)
					i_DecorCoupons(280273, 10),	-- Droopy Longwick Rope (DECOR!)
					i_DecorCoupons(280275, 10),	-- Hanging Longwick Rope (DECOR!)
					i_DecorCoupons(280253, 20),	-- Highlighting High Light (DECOR!)
					i_DecorCoupons(280265, 25),	-- Hot Kobold Treasure (DECOR!)
					i_DecorCoupons(280249, 10),	-- Kobold Dig-Thing (DECOR!)
					i_DecorCoupons(280251, 10),	-- Kobold Sit-Thing (DECOR!)
					i_DecorCoupons(280261, 25),	-- Large Threedium Warrens Candle (DECOR!)
					i_DecorCoupons(280259, 20),	-- Large Warrens Candle (DECOR!)
					i_DecorCoupons(280271, 10),	-- Longwick Rope (DECOR!)
					i_DecorCoupons(280257, 15),	-- Medium Warrens Candle (DECOR!)
					i_DecorCoupons(280255, 10),	-- Small Warrens Candle (DECOR!)
					i_DecorCoupons(280246, 30),	-- Warrens Candlecooker (DECOR!)
				},
			}),
			n(REWARDS, {
				-- Exo Note: Dunno where these come from but there are a ton of Wax Sculptors throughtout the Neighborhood, asking for these in order to Sculpt Wax Blanks
				i(270274),	-- Home-Grown Wax
			}),
		})),
		n(MARUUKAI_ENDEAVOR, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
			n(265551, {	-- Roshai Lightstep <Endeavor Trader>
				["coords"] = EndeavorVendorCoords,
				["groups"] = {
					i_DecorCoupons(276663, 10),	-- Bakar's Napping Rug (DECOR!)
					i_DecorCoupons(276675, 5),	-- Bakar's Dinner (DECOR!)
					i_DecorCoupons(276654, 5),	-- Bakar's Favorite Ball (DECOR!)
					i_DecorCoupons(276673, 5),	-- Bakar's Snack (DECOR!)
					i_DecorCoupons(276667, 10),	-- Large Ornate Khanam's Rug (DECOR!)
					i_DecorCoupons(276650, 10),	-- Maruukai Barricade (DECOR!)
					i_DecorCoupons(276661, 15),	-- Maruukai Chef's Stove (DECOR!)
					i_DecorCoupons(276658, 10),	-- Maruukai Feast Table (DECOR!)
					i_DecorCoupons(276669, 5),	-- Maruukai Storage Basket (DECOR!)
					i_DecorCoupons(276656, 10),	-- Maruukai Wooden Table (DECOR!)
					i_DecorCoupons(276671, 5),	-- Open Maruukai Storage Basket (DECOR!)
					i_DecorCoupons(276677, 10),	-- Pet Food and Water Tray (DECOR!)
					i_DecorCoupons(276665, 10),	-- Ornate Khanam's Rug (DECOR!)
					i_DecorCoupons(276652, 10),	-- Tapered Maruukai Barricade (DECOR!)
					i_DecorCoupons(276626, 10),	-- Wide Maruukai Barricade (DECOR!)
				},
			}),
			--n(QUESTS, sharedData({
			--	["isWeekly"] = true,
			--}, {
			--})),
			filter(MISC, {
				i(268585),	-- Pup Treat
			}),
		})),
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
			filter(MISC, {
				i(265361),	-- Pollinic Incense
			}),
		}),
		n(SINDOREI_ENDEAVOR, {
			n(252917, {	-- Hesta Forlath <Endeavor Trader>
				["coords"] = EndeavorVendorCoords,
				["timeline"] = { ADDED_12_0_1_LAUNCH },
				["groups"] = {
					i_DecorCoupons(253601, 5),	-- 590 Quel'Lithien Red (DECOR!)
					i_DecorCoupons(253523, 5),	-- Astalor's Hookah (DECOR!)
					i_DecorCoupons(253600, 5),	-- Eversong Crystal Glass (DECOR!)
					i_DecorCoupons(253522, 5),	-- Thalassian Chest (DECOR!)
					-- Reach the first milestone of the endeavor
					i_DecorCoupons(253524, 10),	-- 590 Quel'Lithien Red Display Bottle (DECOR!)
					i_DecorCoupons(254235, 5),	-- Sin'dori Artisan's Easel (DECOR!)
					-- Reach the second milestone of the endeavor
					i_DecorCoupons(253525, 10),	-- Thalassian Academy Dictation Device (DECOR!)
					-- Reach the third milestone of the endeavor
					i_DecorCoupons(253526, 15),	-- Sin'dorei Wine Display (DECOR!)
					i_DecorCoupons(253599, 15),	-- Artisanal Display Tent (DECOR!)
					-- Reach the fourth milestone of the endeavor
					i(253802, {	-- Deed of Patronage
						["description"] = "Once you've purchased this item, you can talk to Hesta Forlath in Midnight Silvermoon City (/att n:252916) to purchase paintings.\n\nYou can safely delete this item.",
						["cost"] = { { "c", COMMUNITY_COUPONS, 30 } },
					}),
				},
			}),
			-- Weekly Quests
			n(QUESTS, sharedData({
				["isWeekly"] = true,
			}, {
				q(92608, {	-- Landscape Photography
					["qg"] = 252717,	-- Corlen Hordralin
					["coords"] = {
						{ 53.0, 37.2, FOUNDERS_POINT },	-- Founder's Point
						{ 53.8, 55.6, RAZORWIND_SHORES },	-- Razorwind Shores
					},
					["groups"] = { i(253316) },	-- Scoped Max Falcon Stealth Dragon 90 (PQI!)
				}),
			})),
		}),
		n(TORTOLLAN_ENDEAVOR, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
			n(ACHIEVEMENTS, {
				ach(63605, {	-- Souvenir Seeker, Founder's Point (Automated)
					["description"] = "There are 60 'hidden' Souvenirs that you must find in your neighborhood. You can find them yourself or you can ask 'Taggi' to activate minimap locations of the Souvenirs already found by your neighbors.",
					["cr"] = 272031,	-- Taggi <Chief Hider>
					["coord"] = { 52.0, 38.2, FOUNDERS_POINT },
				}),
				ach(63441, {	-- Souvenir Seeker, Razorwind Shores (Automated)
					["description"] = "There are 60 'hidden' Souvenirs that you must find in your neighborhood. You can find them yourself or you can ask 'Taggi' to activate minimap locations of the Souvenirs already found by your neighbors.",
					["cr"] = 272031,	-- Taggi <Chief Hider>
					["coord"] = { 54.6, 57.7, RAZORWIND_SHORES },
				}),
				ach(63606, {	-- Superlative Souvenir Seeker
					["maps"] = { FOUNDERS_POINT, RAZORWIND_SHORES },
				}),
			}),
			header(HEADERS.Achievement, 63605, {	-- Souvenir Seeker, Founder's Point
				-- NOTE: This ties achCriteria to the coordinates. The Number next to the NPC Name is the number of the criterion. Automation works.
				n(266674, {	-- Secret Souvenir (1)
					["coord"] = { 52.7, 38.7, FOUNDERS_POINT },
				}),
				n(266675, {	-- Secret Souvenir (2)
					["coord"] = { 53.2, 40.2, FOUNDERS_POINT },
				}),
				n(266676, {	-- Secret Souvenir (3)
					["coord"] = { 53.8, 41.7, FOUNDERS_POINT },
				}),
				n(266677, {	-- Secret Souvenir (4)
					["coord"] = { 56.0, 41.2, FOUNDERS_POINT },
				}),
				n(266678, {	-- Secret Souvenir (5)
					["coord"] = { 57.2, 45.3, FOUNDERS_POINT },
				}),
				n(266679, {	-- Secret Souvenir (6)
					["coord"] = { 52.1, 32.9, FOUNDERS_POINT },
				}),
				n(266680, {	-- Secret Souvenir (7)
					["coord"] = { 58.0, 26.9, FOUNDERS_POINT },
				}),
				n(266681, {	-- Secret Souvenir (8)
					["coord"] = { 54.4, 27.4, FOUNDERS_POINT },
				}),
				n(266682, {	-- Secret Souvenir (9)
					["coord"] = { 49.2, 27.1, FOUNDERS_POINT },
				}),
				n(266683, {	-- Secret Souvenir (10)
					["coord"] = { 59.3, 44.9, FOUNDERS_POINT },
				}),
				n(266684, {	-- Secret Souvenir (11)
					["coord"] = { 64.3, 36.5, FOUNDERS_POINT },
				}),
				n(266685, {	-- Secret Souvenir (12)
					["coord"] = { 63.6, 41.7, FOUNDERS_POINT },
				}),
				n(266686, {	-- Secret Souvenir (13)
					["coord"] = { 64.4, 51.1, FOUNDERS_POINT },
				}),
				n(266687, {	-- Secret Souvenir (14)
					["description"] = "In an underwater cave.",
					["coords"] = {
						{ 64.6, 57.6, FOUNDERS_POINT },	-- Cave Entrance
						{ 67.3, 57.7, FOUNDERS_POINT },	-- Secret Souvenir
					},
				}),
				n(266688, {	-- Secret Souvenir (15)
					["coord"] = { 59.9, 62.5, FOUNDERS_POINT },
				}),
				n(266689, {	-- Secret Souvenir (16)
					["coord"] = { 55.9, 57.1, FOUNDERS_POINT },
				}),
				n(266690, {	-- Secret Souvenir (17)
					["coord"] = { 58.3, 65.2, FOUNDERS_POINT },
				}),
				n(266691, {	-- Secret Souvenir (18)
					["coord"] = { 54.2, 64.7, FOUNDERS_POINT },
				}),
				n(266692, {	-- Secret Souvenir (19)
					["coord"] = { 47.9, 55.4, FOUNDERS_POINT },
				}),
				n(266693, {	-- Secret Souvenir (20)
					["coord"] = { 47.3, 61.8, FOUNDERS_POINT },
				}),
				n(266694, {	-- Secret Souvenir (21)
					["description"] = "The only way to get this Souvenir is to be extremely precise in your 'landing' on the plank JUST above it or switching your Flight Style.",
					["coord"] = { 46.7, 59.0, FOUNDERS_POINT },
				}),
				n(266695, {	-- Secret Souvenir (22)
					["coord"] = { 39.5, 60.0, FOUNDERS_POINT },
				}),
				n(266696, {	-- Secret Souvenir (23)
					["coord"] = { 38.0, 64.1, FOUNDERS_POINT },
				}),
				n(266697, {	-- Secret Souvenir (24)
					["coord"] = { 34.7, 72.2, FOUNDERS_POINT },
				}),
				n(266698, {	-- Secret Souvenir (25)
					["coord"] = { 37.7, 57.0, FOUNDERS_POINT },
				}),
				n(266699, {	-- Secret Souvenir (26)
					["description"] = "Pop the Balloon inside the Toy Vendor's Shop.",
					["coord"] = { 42.1, 43.0, FOUNDERS_POINT },
					["cr"] = 270647,	-- Balloon
				}),
				n(266700, {	-- Secret Souvenir (27)
					["coord"] = { 44.4, 29.5, FOUNDERS_POINT },
				}),
				n(266701, {	-- Secret Souvenir (28)
					["coord"] = { 39.3, 30.1, FOUNDERS_POINT },
				}),
				n(266702, {	-- Secret Souvenir (29)
					["coord"] = { 40.5, 25.5, FOUNDERS_POINT },
				}),
				n(266703, {	-- Secret Souvenir (30)
					["coord"] = { 41.9, 29.8, FOUNDERS_POINT },
				}),
				n(266704, {	-- Secret Souvenir (31)
					["coord"] = { 32.2, 38.7, FOUNDERS_POINT },
				}),
				n(266705, {	-- Secret Souvenir (32)
					["coord"] = { 28.3, 47.3, FOUNDERS_POINT },
				}),
				n(266706, {	-- Secret Souvenir (33)
					["coord"] = { 37.0, 45.3, FOUNDERS_POINT },
				}),
				n(266707, {	-- Secret Souvenir (34)
					["coord"] = { 35.6, 49.5, FOUNDERS_POINT },
				}),
				n(266708, {	-- Secret Souvenir (35)
					["coord"] = { 34.5, 60.6, FOUNDERS_POINT },
				}),
				n(266709, {	-- Secret Souvenir (36)
					["coord"] = { 32.8, 70.9, FOUNDERS_POINT },
				}),
				n(266710, {	-- Secret Souvenir (37)
					["coord"] = { 45.3, 64.4, FOUNDERS_POINT },
				}),
				n(266711, {	-- Secret Souvenir (38)
					["coord"] = { 49.2, 71.7, FOUNDERS_POINT },
				}),
				n(266712, {	-- Secret Souvenir (39)
					["coord"] = { 55.4, 75.1, FOUNDERS_POINT },
				}),
				n(266713, {	-- Secret Souvenir (40)
					["coord"] = { 62.1, 81.3, FOUNDERS_POINT },
				}),
				n(266714, {	-- Secret Souvenir (41)
					["coord"] = { 75.2, 83.5, FOUNDERS_POINT },
				}),
				n(266715, {	-- Secret Souvenir (42)
					["coord"] = { 61.3, 66.2, FOUNDERS_POINT },
				}),
				n(266716, {	-- Secret Souvenir (43)
					["coord"] = { 59.6, 50.6, FOUNDERS_POINT },
				}),
				n(266717, {	-- Secret Souvenir (44)
					["coord"] = { 56.7, 20.8, FOUNDERS_POINT },
				}),
				n(266718, {	-- Secret Souvenir (45)
					["coord"] = { 44.7, 17.2, FOUNDERS_POINT },
				}),
				n(266719, {	-- Secret Souvenir (46)
					["coord"] = { 31.7, 8.2, FOUNDERS_POINT },
				}),
				n(266720, {	-- Secret Souvenir (47)
					["coord"] = { 7.3, 37.6, FOUNDERS_POINT },
				}),
				n(266721, {	-- Secret Souvenir (48)
					["coord"] = { 43.4, 55.4, FOUNDERS_POINT },
				}),
				n(266722, {	-- Secret Souvenir (49)
					["coord"] = { 72.8, 35.3, FOUNDERS_POINT },
				}),
				n(266723, {	-- Secret Souvenir (50)
					["coord"] = { 57.1, 38.8, FOUNDERS_POINT },
				}),
				n(266724, {	-- Secret Souvenir (51)
					["description"] = "This Souvenir will appear at the Waterfall at Stoneveli Ridge and will flow down with the water. It will despawn once it washes ashore and a Tortollan kid takes it.",
					["coords"] = {
						{ 61.9, 43.9, FOUNDERS_POINT },	-- Waterfall, Start point
						{ 55.3, 50.3, FOUNDERS_POINT },	-- Bridge, Mid point
						{ 45.5, 64.6, FOUNDERS_POINT },	-- Shore, End point
					},
				}),
				n(266725, {	-- Secret Souvenir (52)
					["description"] = "This Souvenir requires usage of a water-based AoE spell, such as Druid's Efflorescence, Shaman's Surging Totem or Mage's Blizzard, on the 'Suspiciously Dry Soil'.",	-- This is bull$#!+
					["cr"] = 272966,	-- Suspiciously Dry Soil
					["coord"] = { 39.1, 31.3, FOUNDERS_POINT },
				}),
				n(266726, {	-- Secret Souvenir (53)
					["description"] = "This Souvenir can be found in the back of Kirt's Public Carriage.",
					["cr"] = 242053,	-- Public Carriage
					["maps"] = { FOUNDERS_POINT },
				}),
				n(266727, {	-- Secret Souvenir (54)
					["coord"] = { 60.3, 52.5, FOUNDERS_POINT },
				}),
				n(266728, {	-- Secret Souvenir (55)
					["description"] = "Area wide spawn. If you don't see the Souvenir, do as the area vignette states: 'Stay a While and Glisten'. Sit in middle Beach Chair and Relax. Nearby geysir will spit out the Souvenir... Eventually...",
					["coord"] = { 36.8, 46.8, FOUNDERS_POINT },
				}),
				n(266729, {	-- Secret Souvenir (56)
					["description"] = "This Souvenir can be found flying around the neighborhood on the back of a Kite. Crash into the Kite with your Flying Mount to force it to land on the ground.",
					["cr"] = 270577,	-- Seeker's Kite
					["maps"] = { FOUNDERS_POINT },
				}),
				n(266730, {	-- Secret Souvenir (57)
					["coord"] = { 62.1, 82.2, FOUNDERS_POINT },
				}),
				n(266731, {	-- Secret Souvenir (58)
					["description"] = "Read 'Scroll of the Salty Souvenir: East' at this location. You can buy the scroll from Rada at the center of your Neighborhood.",
					["cost"] = { { "i", 276747, 1 } },	-- Scroll of the Salty Souvenir: East
					["coords"] = { 77.5, 54.0, FOUNDERS_POINT },
				}),
				n(266732, {	-- Secret Souvenir (59)
					["description"] = "Read 'Scroll of the Salty Souvenir: West' at this location. You can buy the scroll from Rada at the center of your Neighborhood.",
					["cost"] = { { "i", 276748, 1 } },	-- Scroll of the Salty Souvenir: West
					["coord"] = { 19.6, 42.6, FOUNDERS_POINT },
				}),
				n(266734, {	-- Secret Souvenir (60)
					["description"] = "Read 'Scroll of the Salty Souvenir: South' at this location. You can buy the scroll from Rada at the center of your Neighborhood.",
					["cost"] = { { "i", 276749, 1 } },	-- Scroll of the Salty Souvenir: South
					["coords"] = { 55.8, 85.1, FOUNDERS_POINT },
				}),
			}),
			header(HEADERS.Achievement, 63441, {	-- Souvenir Seeker, Razorwind Shores
				-- NOTE: This ties achCriteria to the coordinates. The Number next to the NPC Name is the number of the criterion. Automation works.
				n(266613, {	-- Secret Souvenir (1)
					["coord"] = { 54.2, 56.9, RAZORWIND_SHORES },
				}),
				n(266614, {	-- Secret Souvenir (2)
					["coord"] = { 54.8, 57.5, RAZORWIND_SHORES },
				}),
				n(266615, {	-- Secret Souvenir (3)
					["coord"] = { 53.3, 56.6, RAZORWIND_SHORES },
				}),
				n(266616, {	-- Secret Souvenir (4)
					["coord"] = { 52.7, 52.7, RAZORWIND_SHORES },
				}),
				n(266617, {	-- Secret Souvenir (5)
					["coord"] = { 53.8, 49.0, RAZORWIND_SHORES },
				}),
				n(266618, {	-- Secret Souvenir (6)
					["coord"] = { 58.5, 49.5, RAZORWIND_SHORES },
				}),
				n(266619, {	-- Secret Souvenir (7)
					["coord"] = { 51.5, 58.7, RAZORWIND_SHORES },
				}),
				n(266620, {	-- Secret Souvenir (8)
					["coord"] = { 63.6, 44.2, RAZORWIND_SHORES },
				}),
				n(266621, {	-- Secret Souvenir (9)
					["coord"] = { 62.4, 52.1, RAZORWIND_SHORES },
				}),
				n(266622, {	-- Secret Souvenir (10)
					["coord"] = { 64.3, 58.3, RAZORWIND_SHORES },
				}),
				n(266623, {	-- Secret Souvenir (11)
					["coord"] = { 69.0, 76.0, RAZORWIND_SHORES },
				}),
				n(266624, {	-- Secret Souvenir (12)
					["description"] = "Read the scroll to learn how operate the ladders. When you approach the ladders, you will get an 'Extra Action Button'. Use it.",
					["provider"] = { "o", 656134 },	-- No Wrong Rung: A Quick Start Guide to Laddering
					["coord"] = { 62.2, 90.2, RAZORWIND_SHORES },
				}),
				n(266625, {	-- Secret Souvenir (13)
					["coord"] = { 61.5, 89.9, RAZORWIND_SHORES },
				}),
				n(266626, {	-- Secret Souvenir (14)
					["description"] = "Souvenir is hidden inside Shark's mount.",
					["coord"] = { 54.5, 81.6, RAZORWIND_SHORES },
				}),
				n(266627, {	-- Secret Souvenir (15)
					["coord"] = { 52.1, 72.4, RAZORWIND_SHORES },
				}),
				n(266628, {	-- Secret Souvenir (16)
					["coord"] = { 51.1, 69.5, RAZORWIND_SHORES },
				}),
				n(266629, {	-- Secret Souvenir (17)
					["coord"] = { 52.6, 64.4, RAZORWIND_SHORES },
				}),
				n(266630, {	-- Secret Souvenir (18)
					["coord"] = { 44.6, 54.5, RAZORWIND_SHORES },
				}),
				n(266631, {	-- Secret Souvenir (19)
					["coord"] = { 43.7, 50.7, RAZORWIND_SHORES },
				}),
				n(266632, {	-- Secret Souvenir (20)
					["description"] = "Inside the cave, behind the waterfall.",
					["coords"] = {
						{ 39.9, 57.9, RAZORWIND_SHORES },	-- Cave Entrance
						{ 39.3, 57.8, RAZORWIND_SHORES },	-- Secret Souvenir
					},
				}),
				n(266633, {	-- Secret Souvenir (21)
					["coord"] = { 41.6, 66.9, RAZORWIND_SHORES },
				}),
				n(266634, {	-- Secret Souvenir (22)
					["coord"] = { 42.7, 69.9, RAZORWIND_SHORES },
				}),
				n(266635, {	-- Secret Souvenir (23)
					["coord"] = { 48.8, 66.0, RAZORWIND_SHORES },
				}),
				n(266636, {	-- Secret Souvenir (24)
					["coord"] = { 46.7, 75.3, RAZORWIND_SHORES },
				}),
				n(266637, {	-- Secret Souvenir (25)
					["coord"] = { 40.8, 78.6, RAZORWIND_SHORES },
				}),
				n(266638, {	-- Secret Souvenir (26)
					["coord"] = { 38.7, 80.3, RAZORWIND_SHORES },
				}),
				n(266639, {	-- Secret Souvenir (27)
					["coord"] = { 44.0, 87.3, RAZORWIND_SHORES },
				}),
				n(266640, {	-- Secret Souvenir (28)
					["coord"] = { 51.1, 89.9, RAZORWIND_SHORES },
				}),
				n(266641, {	-- Secret Souvenir (29)
					["description"] = "Inside the house, op top of the shelf left of the entrance.",
					["coord"] = { 64.1, 69.5, RAZORWIND_SHORES },
				}),
				n(266642, {	-- Secret Souvenir (30)
					["coord"] = { 62.1, 63.3, RAZORWIND_SHORES },
				}),
				n(266643, {	-- Secret Souvenir (31)
					["coord"] = { 59.7, 64.7, RAZORWIND_SHORES },
				}),
				n(266644, {	-- Secret Souvenir (32)
					["coord"] = { 58.0, 63.6, RAZORWIND_SHORES },
				}),
				n(266645, {	-- Secret Souvenir (33)
					["coord"] = { 57.9, 69.8, RAZORWIND_SHORES },
				}),
				n(266646, {	-- Secret Souvenir (34)
					["coord"] = { 50.5, 62.6, RAZORWIND_SHORES },
				}),
				n(266647, {	-- Secret Souvenir (35)
					["coord"] = { 51.0, 65.0, RAZORWIND_SHORES },
				}),
				n(266648, {	-- Secret Souvenir (36)
					["coord"] = { 47.6, 62.2, RAZORWIND_SHORES },
				}),
				n(266649, {	-- Secret Souvenir (37)
					["coord"] = { 48.4, 61.8, RAZORWIND_SHORES },
				}),
				n(266650, {	-- Secret Souvenir (38)
					["coord"] = { 48.2, 58.5, RAZORWIND_SHORES },
				}),
				n(266651, {	-- Secret Souvenir (39)
					["coord"] = { 48.7, 54.1, RAZORWIND_SHORES },
				}),
				n(266652, {	-- Secret Souvenir (40)
					["coord"] = { 55.9, 50.5, RAZORWIND_SHORES },
				}),
				n(266653, {	-- Secret Souvenir (41)
					["coord"] = { 56.4, 48.4, RAZORWIND_SHORES },
				}),
				n(266654, {	-- Secret Souvenir (42)
					["coord"] = { 55.5, 60.8, RAZORWIND_SHORES },
				}),
				n(266655, {	-- Secret Souvenir (43)
					["coord"] = { 57.2, 58.1, RAZORWIND_SHORES },
				}),
				n(266656, {	-- Secret Souvenir (44)
					["coord"] = { 79.9, 40.5, RAZORWIND_SHORES },
				}),
				n(266657, {	-- Secret Souvenir (45)
					["coord"] = { 41.9, 24.5, RAZORWIND_SHORES },
				}),
				n(266658, {	-- Secret Souvenir (46)
					["coord"] = { 22.9, 42.6, RAZORWIND_SHORES },
				}),
				n(266659, {	-- Secret Souvenir (47)
					["coord"] = { 75.5, 88.7, RAZORWIND_SHORES },
				}),
				n(266660, {	-- Secret Souvenir (48)
					["coord"] = { 58.8, 55.4, RAZORWIND_SHORES },
				}),
				n(266661, {	-- Secret Souvenir (49)
					["coord"] = { 51.5, 54.0, RAZORWIND_SHORES },
				}),
				n(266662, {	-- Secret Souvenir (50)
					["coord"] = { 53.5, 54.5, RAZORWIND_SHORES },
				}),
				n(266663, {	-- Secret Souvenir (51)
					["description"] = "This Souvenir will appear at the Waterfall at Stoneveli Ridge and will flow down with the water. It will despawn once it washes ashore and a Tortollan kid takes it.",
					["coords"] = {
						{ 54.9, 42.8, RAZORWIND_SHORES },	-- Waterfall, Start point
						{ 56.0, 51.1, RAZORWIND_SHORES },	-- Waterfall, 2/4 point
						{ 62.4, 57.5, RAZORWIND_SHORES },	-- Bridge, 3/4 point
						{ 63.9, 63.3, RAZORWIND_SHORES },	-- Shore, End point
					},
				}),
				n(266664, {	-- Secret Souvenir (52)
					["description"] = "This Souvenir requires usage of a water-based AoE spell, such as Druid's Efflorescence, Shaman's Surging Totem or Mage's Blizzard, on the 'Suspiciously Dry Soil'.",	-- This is bull$#!+
					["cr"] = 272966,	-- Suspiciously Dry Soil
					["coord"] = { 47.2, 59.7, RAZORWIND_SHORES },
				}),
				n(266665, {	-- Secret Souvenir (53)
					["description"] = "This Souvenir can be found in the back of Communal Cart.",
					["cr"] = 256645,	-- Communal Cart
					["maps"] = { RAZORWIND_SHORES },
				}),
				n(266666, {	-- Secret Souvenir (54)
					["coord"] = { 62.6, 47.9, RAZORWIND_SHORES },
				}),
				n(266667, {	-- Secret Souvenir (55)
					["description"] = "Area wide spawn. If you don't see the Souvenir, do as the area vignette states: 'Stay a While and Glisten'. Sit in middle Beach Chair and Relax. Nearby geysir will spit out the Souvenir... Eventually...",
					["coord"] = { 52.6, 73.1, RAZORWIND_SHORES },
				}),
				n(266668, {	-- Secret Souvenir (56)
					["description"] = "This Souvenir can be found flying around the neighborhood on the back of a Kite. Crash into the Kite with your Flying Mount to force it to land on the ground.",
					["cr"] = 267939,	-- Seeker's Kite
					["maps"] = { RAZORWIND_SHORES },
				}),
				n(266669, {	-- Secret Souvenir (57)
					["description"] = "Under the bartender, in the body of the ship.",
					["coord"] = { 39.2, 73.8, RAZORWIND_SHORES },
				}),
				n(266670, {	-- Secret Souvenir (58)
					["description"] = "Read 'Scroll of the Salty Souvenir: East' at this location. You can buy the scroll from Rada at the center of your Neighborhood.",
					["cost"] = { { "i", 276747, 1 } },	-- Scroll of the Salty Souvenir: East
					["coords"] = { 75.2, 48.4, RAZORWIND_SHORES },
				}),
				n(266671, {	-- Secret Souvenir (59)
					["description"] = "Read 'Scroll of the Salty Souvenir: West' at this location. You can buy the scroll from Rada at the center of your Neighborhood.",
					["cost"] = { { "i", 276748, 1 } },	-- Scroll of the Salty Souvenir: West
					["coord"] = { 26.3, 33.3, RAZORWIND_SHORES },
				}),
				n(266672, {	-- Secret Souvenir (60)
					["description"] = "Read 'Scroll of the Salty Souvenir: South' at this location. You can buy the scroll from Rada at the center of your Neighborhood.",
					["cost"] = { { "i", 276749, 1 } },	-- Scroll of the Salty Souvenir: South
					["coords"] = { 56.1, 95.0, RAZORWIND_SHORES },
				}),
			}),
			n(VENDORS, {
				n(268115, {	-- Ataru <Inspirational Scroll Merchant>
					["coords"] = {
						{ 52.8, 37.5, FOUNDERS_POINT },
						{ 54.0, 56.0, RAZORWIND_SHORES },
					},
					["groups"] = {
						i_DecorCoupons(276628, 1),	-- Scroll of Deep Breath
						i_DecorCoupons(276629, 1),	-- Scroll of the Sailfish
					},
				}),
				n(268116, {	-- Mota <Unique Antiques>
					["coords"] = {
						{ 53.0, 37.5, FOUNDERS_POINT },
						{ 54.2, 55.9, RAZORWIND_SHORES },
					},
					["groups"] = {	-- Exo Note: Junk items. I don't know whether or not these have any use. If not, probably better to just move to Uncollectible
						i(276621),	-- Antique Shield
						i(276617),	-- Fancy Oar
						i(276619),	-- Mysterious Corked Bottle
						i(276620),	-- Patinaed Bottle
						i(276618),	-- Weathered Stone Tablet
					},
				}),
				n(268110, {	-- Rada <Scroll Vendor>
					["coords"] = {
						{ 52.9, 39.0, FOUNDERS_POINT },
						{ 54.2, 57.9, RAZORWIND_SHORES },
					},
					["groups"] = {
						i(245606),	-- Blank Scroll
						i(234973),	-- Pearlshell Scroll Case
						i(276747),	-- Scroll of the Salty Souvenir: East
						i(276749),	-- Scroll of the Salty Souvenir: South
						i(276748),	-- Scroll of the Salty Souvenir: West
						i(272116),	-- Water-Logged Transaction Scroll
						i(162588),	-- Weathered Scrollcase (BAG!)
					},
				}),
				n(268107, {	-- Roga <Travel Guide>
					["coords"] = {
						{ 52.9, 39.0, FOUNDERS_POINT },
						{ 54.4, 56.0, RAZORWIND_SHORES },
					},
					["groups"] = {	-- Exo Note: Alcohol. Probably move to Uncollectible?
						i(276615),	-- Half-shell Highball
						i(276616),	-- Pineapple Sundown
						i(276613),	-- Sparkling LaKoi
						i(276612),	-- The Shell-Shocker
					},
				}),
				n(268106, {	-- Taifa <Endeavor Trader>
					["coords"] = EndeavorVendorCoords,
					["groups"] = {
						i_DecorCoupons(280236, 30),	-- Ancient Memories of the Sea (DECOR!)
						i_DecorCoupons(280227, 25),	-- Apothecary's Tortollan Display Rack (DECOR!)
						i(280846, {	-- Beguiling Memories of the Sea (DECOR!)
							["sourceAchievement"] = 63605,	-- Souvenir Seeker, Founder's Point
							["cost"] = { { "c", COMMUNITY_COUPONS, 30 } },
						}),
						i_DecorCoupons(280223, 25),	-- Collector's Tortollan Display Rack (DECOR!)
						i_DecorCoupons(280240, 20),	-- Compact Cookfire (DECOR!)
						i_DecorCoupons(280230, 20),	-- Empty Tortollan Display Rack (DECOR!)
						i_DecorCoupons(280238, 10),	-- Half-Shell Hot Pot (DECOR!)
						i_DecorCoupons(280225, 25),	-- Mason's Tortollan Display Rack (DECOR!)
						i_DecorCoupons(280873, 5),	-- Protected Tortollan Scroll Case (DECOR!)
						i_DecorCoupons(280234, 15),	-- Sea Glass Bauble (DECOR!)
						i_DecorCoupons(280232, 15),	-- Sea Glass Lamp Post (DECOR!)
						i_DecorCoupons(280221, 10),	-- Sealeather Sack (DECOR!)
						i_DecorCoupons(280215, 20),	-- Tortollan Tarp Tent (DECOR!)
						i_DecorCoupons(280242, 15),	-- Tortollan Traveler's Chest (DECOR!)
						i_DecorCoupons(280244, 5),	-- Tortollan Traveler's Tincture (DECOR!)
					},
				}),
			}),
			n(QUESTS, sharedData({
				["isWeekly"] = true,
			}, {
				q(97521, {	-- A A Turtle Bade It to the Water
					["qg"] = 268107,	-- Roga
					["coords"] = {
						{ 52.9, 39.0, FOUNDERS_POINT },
						{ 54.4, 56.0, RAZORWIND_SHORES },
					},
				}),
				q(96960, {	-- Watering Hole
					["qg"] = 257168,	-- Throska
					["coords"] = {
						{ 62.2, 82.2, FOUNDERS_POINT },
						{ 39.1, 74.1, RAZORWIND_SHORES },
					},
				}),
			})),
		})),
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
