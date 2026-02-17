---------------------------------------------
--      H O U S I N G    M O D U L E       --
---------------------------------------------
root(ROOTS.Housing, n(QUESTS, {
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
				233063,	-- Lyssabel Dawnpetal [A]
				233708,	-- Tocho Couldhide [H]
			},
			["coords"] = {
				{ 53.1, 40.1, FOUNDERS_POINT },	-- Lyssabel Dawnpetal [A]
				{ 55.3, 57.6, RAZORWIND_SHORES },	-- Tocho Couldhide [H]
			},
			["groups"] = {
				i(266892, sharedDataSelf({ ["timeline"] = { ADDED_12_0_0 } }, {	-- Neighbourhood Campsites
					campsite(146),	-- Founders Point
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
				255519,	-- Lestia Goldenstrike [A]
				255520,	-- Xiz'ro [H]
			},
			["coords"] = {
				{ 53.9, 39.5, FOUNDERS_POINT },	-- Lestia Goldenstrike [A]
				{ 54.2, 58.0, RAZORWIND_SHORES },	-- Xiz'ro [H]
			},
		}),
		q(89450, {	-- Create a Neighborhood
			["qgs"] = {
				233063,	-- Lyssabel Dawnpetal [A]
				233708,	-- Tocho Couldhide [H]
			},
			["coords"] = {
				{ 53.1, 40.1, FOUNDERS_POINT },	-- Lyssabel Dawnpetal [A]
				{ 55.3, 57.6, RAZORWIND_SHORES },	-- Tocho Couldhide [H]
			},
			["groups"] = { i(239098) },	-- Neighborhood Charter
			["timeline"] = { ADDED_12_0_0 },
		}),
		-- Misc
		q(92578, {	-- Draconic Decor
			["qg"] = 252312,	-- Second Chair Pawdo
			["coords"] = {
				{ 52.9, 68.0, DORNOGAL },
				{ 52.9, 89.0, ORGRIMMAR },
				{ 56.1, 77.1, STORMWIND_CITY },
			},
			["groups"] = { i(248116) },	-- Valdrakken Chandelier (DECOR!)
		}),
		q(92577, {	-- Dreamy Inspiration
			["qg"] = 252312,	-- Second Chair Pawdo
			["coords"] = {
				{ 52.9, 68.0, DORNOGAL },
				{ 52.9, 89.0, ORGRIMMAR },
				{ 56.1, 77.1, STORMWIND_CITY },
			},
			["groups"] = { i(245259) },	-- Small Val'sharah Bookcase (DECOR!)
		}),
		q(92572, {	-- Furniture Favor
			["qg"] = 252312,	-- Second Chair Pawdo
			["coords"] = {
				{ 52.9, 68.0, DORNOGAL },
				{ 52.9, 89.0, ORGRIMMAR },
				{ 56.1, 77.1, STORMWIND_CITY },
			},
			["groups"] = { i(253173) },	-- Meadery Storage Barrel (DECOR!)
		}),
		q(92581, {	-- Last Light
			["qg"] = 252312,	-- Second Chair Pawdo
			["coords"] = {
				{ 52.9, 68.0, DORNOGAL },
				{ 52.9, 89.0, ORGRIMMAR },
				{ 56.1, 77.1, STORMWIND_CITY },
			},
			["groups"] = { i(247915) },	-- Square Suramar Table (DECOR!)
		}),
		q(92580, {	-- Spare A Chair
			["qg"] = 252312,	-- Second Chair Pawdo
			["coords"] = {
				{ 52.9, 68.0, DORNOGAL },
				{ 52.9, 89.0, ORGRIMMAR },
				{ 56.1, 77.1, STORMWIND_CITY },
			},
			["groups"] = {
				i(246487),	-- Gnomish Tesla Coil (DECOR!)
				i(265822),	-- Unstable Mechagon Re-Localizatron (QI!)
			},
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
		-- Repeatables
		q(92608, {	-- Furniture Favor
			["qg"] = 252717,	-- Corlen Hordralin
			["coords"] = {
				{ 53.9, 55.7, DORNOGAL },
				{ 53.9, 55.7, RAZORWIND_SHORES },
			},
			["repeatable"] = true,
			["groups"] = {
				i(253316),	-- Scoped Max Falcon Stealth Dragon 90 (PQI!)
				-- currency(COMMUNITY_COUPONS),	-- 3x Coupons
			},
		}),
	},
}));

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
				q(92734),	-- Triggered after entering Razorwind and Founders Point
				q(93629),	-- Triggered after completing 'Time to Decorate'
				q(94392),	-- Triggered after talking to flora decor
				q(94701),	-- Triggered after completing 'Home at Last' (94455) / Alex: TODO: Blizzard bug - Weekly reputation: Poacher Rav'ik
				-- q(94703),	-- Unflagged after talking to Local Decor vendor
				q(94706),	-- Triggered after skipping tutorial / Alex: TODO: Blizzard bug - Weekly reputation: The Devouring Invader
				q(94707),	-- Triggered after completing 'This Old Hearth' (94379) / Alex: TODO: Blizzard bug - Weekly reputation: Elder Oaktalon
				q(94709),	-- Triggered after entering house (tutorial?) / Alex: TODO: Blizzard bug - Weekly reputation: The Decaying Diamondback
				q(94714),	-- Triggered after completing 'Feathering the Nest' (94210) / Alex: TODO: Blizzard bug - Weekly reputation: The Decaying Diamondback
				-- q(94750),	-- Unflagged after talking to Elven Decor vendor
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
			},
		}),
	})
});
