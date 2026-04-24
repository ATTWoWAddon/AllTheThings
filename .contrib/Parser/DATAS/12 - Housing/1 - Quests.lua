---------------------------------------------
--      H O U S I N G    M O D U L E       --
---------------------------------------------

MAIL_DELIVERY_RACES = createHeader({
	readable = "Mail Delivery Races",
	icon = 413580,
	text = {
		en = "Mail Delivery Races",
	},
});

root(ROOTS.Housing, {
	n(QUESTS, {
		["timeline"] = { ADDED_11_2_7 },
		["groups"] = {
			q(93057, {	-- A House For You
				["description"] = "Triggers on login. Requires a re-log if purchasing Midnight via in-game shop.",
				["maps"] = { FOUNDERS_POINT, RAZORWIND_SHORES },
				["isBreadcrumb"] = true,
			}),
			q(91863, {	-- My First House
				["sourceQuests"] = { 93057 },	-- A House For You
				["maps"] = { FOUNDERS_POINT, RAZORWIND_SHORES },
			}),
			q(94455, {	-- Home at Last
				["sourceQuests"] = { 91863 },	-- My First House
				["maps"] = { FOUNDERS_POINT, RAZORWIND_SHORES },
			}),
			q(91968, {	-- Welcome Home
				["sourceQuests"] = { 94455 },	-- Home at Last
				["maps"] = { FOUNDERS_POINT, RAZORWIND_SHORES },
			}),
			q(91969, {	-- Time to Decorate
				["sourceQuests"] = { 91968 },	-- Welcome Home
				["maps"] = { FOUNDERS_POINT, RAZORWIND_SHORES },
			}),
			q(94210, {	-- Feathering the Nest
				["sourceQuests"] = { 91969 },	-- Time to Decorate
				["maps"] = { FOUNDERS_POINT, RAZORWIND_SHORES },
			}),
			q(94379, {	-- This Old Hearth
				["sourceQuests"] = { 94210 },	-- Feathering the Nest
				["qgs"] = {
					233063,	-- Lyssabel Dawnpetal
					233708,	-- Tocho Couldhide
				},
				["coords"] = {
					{ 53.1, 40.1, FOUNDERS_POINT },	-- Lyssabel Dawnpetal
					{ 55.3, 57.6, RAZORWIND_SHORES },	-- Tocho Couldhide
				},
				["groups"] = {
					i(266892, sharedDataSelf({ ["timeline"] = { ADDED_12_0_0 } }, {	-- Neighborhood Campsites
						campsite(146),	-- Founder's Point
						campsite(145),	-- Razorwind Shores
					})),
				},
			}),
			q(92816, {	-- A Letter for Adventure
				-- It seems most people are not getting this
				-- Figure out lock criteria for this
				["sourceQuests"] = { 94379 },	-- This Old Hearth
				["maps"] = { FOUNDERS_POINT, RAZORWIND_SHORES },
				["groups"] = {
					i(254504),	-- Adventuring Letter (QI!)
				},
			}),
			q(93647, {	-- Lumber For You
				["qgs"] = {
					255519,	-- Lestia Goldenstrike
					255520,	-- Xiz'ro
				},
				["coords"] = {
					{ 53.9, 39.5, FOUNDERS_POINT },	-- Lestia Goldenstrike
					{ 54.2, 58.0, RAZORWIND_SHORES },	-- Xiz'ro
				},
			}),
			q(89450, {	-- Create a Neighborhood
				["qgs"] = {
					233063,	-- Lyssabel Dawnpetal
					233708,	-- Tocho Couldhide
				},
				["coords"] = {
					{ 53.1, 40.1, FOUNDERS_POINT },	-- Lyssabel Dawnpetal
					{ 55.3, 57.6, RAZORWIND_SHORES },	-- Tocho Couldhide
				},
				["groups"] = { i(239098) },	-- Neighborhood Charter
				["timeline"] = { ADDED_12_0_0 },
			}),
			q(94995, {	-- To Dye For
				["qgs"] = {
					255125,	-- Haleth Turnwater
					255126,	-- Helmi Cooper
				},
				["coords"] = {
					{ 52.4, 37.8, FOUNDERS_POINT },
					{ 53.7, 58.1, RAZORWIND_SHORES },
				},
				["timeline"] = { ADDED_12_0_0 },
				["groups"] = {
					i(259115),	-- Alliance Blue Dye
					i(259113),	-- Horde Red Dye
					i(259114),	-- Lush Green Dye
					i(259126),	-- Void Violet Dye
				},
			}),
		},
	}),
	n(QUESTS, sharedData({
		["qg"] = 252312,	-- Second Chair Pawdo
		["coords"] = {
			{ 52.9, 68.0, DORNOGAL },
			{ 52.9, 89.0, ORGRIMMAR },
			{ 56.1, 77.1, STORMWIND_CITY },
		},
		["timeline"] = { ADDED_11_2_7 },
	}, {
		q(92578, {	-- Draconic Decor
			["groups"] = { i(248116) },	-- Valdrakken Chandelier (DECOR!)
		}),
		q(92577, {	-- Dreamy Inspiration
			["groups"] = { i(245259) },	-- Small Val'sharah Bookcase (DECOR!)
		}),
		q(92572, {	-- Furniture Favor
			["groups"] = { i(253173) },	-- Meadery Storage Barrel (DECOR!)
		}),
		q(92581, {	-- Last Light
			["groups"] = { i(247915) },	-- Square Suramar Table (DECOR!)
		}),
		q(92580, {	-- Spare A Chair
			["groups"] = {
				i(246487),	-- Gnomish Tesla Coil (DECOR!)
				i(265822),	-- Unstable Mechagon Re-Localizatron (QI!)
			},
		}),
	})),
	n(QUESTS, {
		["groups"] = sharedData({
			["qgs"] = {
				260942,	-- Vaeli @ Founder's Point
				260943,	-- Vaeli @ Razorwind Shores
				260957,	-- Vaeli @ Silvermoon City
				260958,	-- Vaeli (This ID has been reported in both Neighborhoods)
			},
			["coords"] = {
				{ 51.9, 39.5, FOUNDERS_POINT },
				{ 49.5, 65.8, MAP.MIDNIGHT.SILVERMOON_CITY },
				{ 52.9, 59.8, RAZORWIND_SHORES }
			},
			["isWeekly"] = true,
			["groups"] = {	-- All quests given by Vaeli offer 'Essence of Lumber' as a reward
				-- Maybe do this better somehow. Technically this item should be a 'cost' on a symlink group attached to the respective Housing Lumberjack NPCs in both neighborhoods...  then could have proper coords on the NPC and cost indicator
				i(269010, {	-- Essence of Lumber
					["description"] = "Converts to 20 of any other Lumber type. Receiving the Lumber also counts towards the respective 'Harvest 250 Lumber' achievement",
					["sym"] = {{"select","itemID",
						245586,	-- Ironwood Lumber
						242691,	-- Olemba Lumber
						251762,	-- Coldwind Lumber
						251764,	-- Ashwood Lumber
						251763,	-- Bamboo Lumber
						251766,	-- Shadowmoon Lumber
						251767,	-- Fel-Touched Lumber
						251768,	-- Darkpine Lumber
						251772,	-- Arden Lumber
						251773,	-- Dragonpine Lumber
						248012,	-- Dornic Fir Lumber
						256963,	-- Thalassian Lumber
					}},
				}),
			},
			["timeline"] = { ADDED_12_0_1_LAUNCH },
		}, {
			q(95413),	-- Community Engagement
			q(95416),	-- Going Postal
			q(95440),	-- Housewarming
			q(95438),	-- Lost Animals
		}),
	}),
	n(MAIL_DELIVERY_RACES, {	-- Founder's Point Mail Delivery
		["timeline"] = { ADDED_12_0_1_LAUNCH },
		["groups"] = sharedData({	-- All Founder's Point Mail Delivery quests
			["qg"] = 260942,	-- Vaeli
			["coord"] = { 51.9, 39.5, FOUNDERS_POINT },
			["isRepeatable"] = true,
		}, {
			q(95407),	-- Autumnal Addresses		// Gilded Oaks route
			q(95408),	-- Coastal Courier			// Outer Banks route
			q(95409),	-- High Road, Hollow Road	// Ridge and Hollow route
		}),
	}),
	n(MAIL_DELIVERY_RACES, {	-- Razorwind Mail Delivery
		["timeline"] = { ADDED_12_0_1_LAUNCH },
		["groups"] = sharedData({
			["qg"] = 260943,	-- Vaeli
			["coord"] = { 52.9, 59.8, RAZORWIND_SHORES },
			["isRepeatable"] = true,
		}, {
			q(95410),	-- Cragthorn Certified		// Cragthorn Highlands route
			q(95411),	-- Desert Dispatch			// Bloom and Shore route
			q(95412),	-- Runetotem Run			// Runetotem's Bounty route
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.TWW, {
		n(HOUSING, {
			["timeline"] = { ADDED_11_2_7 },
			["groups"] = {
				q(92486),	-- Triggered after acquired a house
				q(92654),	-- Triggered after talking to Elven Decor vendor
				q(92666),	-- Triggered after talking to Local Decor vendor
				q(92733),	-- Triggered after entering house
				q(94424),	-- Triggered after entering house
				q(92734),	-- Triggered after entering Razorwind and Founder's Point
				q(93629),	-- Triggered after completing 'Time to Decorate'
				q(94392),	-- Triggered after talking to flora decor
				-- q(91029),	-- Triggered after talking to Xiz'ro <Lumberjack> (added in 11.1.7, probably not housing related?)
				q(95166,{isDaily=true}),	-- Pet the Dog (245551)
			},
		}),
	})
});

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.MID, {
		n(HOUSING, {
			["timeline"] = { ADDED_12_0_0 },
			["groups"] = {
				q(94905),	-- Triggered after completing "Home: Arcane Acrobatics" activity during 'Consortium Consternation' Endeavor
				q(95406),	-- Lost Animals, Triggered after completing 'Lost Animals' (95438)
			},
		}),
	})
});
