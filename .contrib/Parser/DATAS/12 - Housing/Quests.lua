---------------------------------------------
--      H O U S I N G    M O D U L E       --
---------------------------------------------
root(ROOTS.Housing, n(QUESTS, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_7 } }, {
	-- Alex: Not sure if Alliance share any of these or if its all horde
	-- Exo: At least main quests are shared... Dunno about Decor Hunts.
	q(93057, {	-- A House For You
		["maps"] = { FOUNDERS_POINT, RAZORWIND_SHORES },
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
			{ 53.1, 40.1,   FOUNDERS_POINT },	-- Lyssabel Dawnpetal [A]
			{ 55.3, 57.6, RAZORWIND_SHORES },	-- Tocho Couldhide [H]
		},
		["groups"] = { i(266892) },	-- Neighbourhood Campsites (Unlocks 'Founders Point' and 'Razorwind Shores' Campsites. Could not see Campsite IDs even with them enabled in ATT Settings)
	}),
	q(93647, {	-- Lumber For You
		["qgs"] = {
			255519,	-- Lestia Goldenstrike [A]
			255520,	-- Xiz'ro [H]
		},
		["coords"] = {
			{ 51.9, 38.7,   FOUNDERS_POINT },	-- Lestia Goldenstrike [A]
			{ 54.2, 58.0, RAZORWIND_SHORES },	-- Xiz'ro [H]
		},
	}),
	q(89450, {	-- Create a Neighborhood
		["qgs"] = {
			233063,	-- Lyssabel Dawnpetal [A]
			233708,	-- Tocho Couldhide [H]
		},
		["coords"] = {
			{ 53.1, 40.1,   FOUNDERS_POINT },	-- Lyssabel Dawnpetal [A]
			{ 55.3, 57.6, RAZORWIND_SHORES },	-- Tocho Couldhide [H]
		},
		["maps"] = { FOUNDERS_POINT, RAZORWIND_SHORES },
		["groups"] = { i(239098) },	-- Neighborhood Charter
	}),
	-- Misc
	q(92572, {	-- Furniture Favor
		["qg"] = 252312,	-- Second Chair Pawdo
		["coords"] = {
			{ 52.9, 68.0, DORNOGAL },
			{ 52.9, 89.0, ORGRIMMAR },
			{ 56.1, 77.1, STORMWIND_CITY },
		},
		["groups"] = { i(253173) },	-- Meadery Storage Barrel (DECOR!)
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
	-- Decor Treasure Hunts
	-- It IS possible that some of these quests are Neutral but not yet datamined properly on WoWhead. In that case, create a Neutral Header and move respective quests there.
	header(HEADERS.Quest, 92969, sharedData({	-- Decor Treasure Hunt [Alliance]
		-- qg is added to the mobileDB because, even with sharedData, it triggers contrib reports. Temp fix until it gets sorted?
		["qg"] = 248854,	-- The Last Architect
		["coord"] = { 52.7, 37.5, FOUNDERS_POINT },
		["races"] = ALLIANCE_ONLY,
	},{
		q(92437, {	-- Decor Treasure Hunt
			["groups"] = { i(245375) },	-- Sturdy Wooden Bookcase (DECOR!)
		}),
		q(92961, {	-- Decor Treasure Hunt
			-- WoWhead Comment: It is by the portal where you first enter, go behind the stone tower and it is in the shade of the big tree
			["groups"] = { i(245384) },	-- Sturdy Wooden Shelf (DECOR!)
		}),
		q(92962, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Go northeast and fly to the highest mountain in the isle. At its peak you'll find a mound of dirt. /way 69.2, 26.7
			["groups"] = { i(245355) },	-- Sturdy Wooden Door (DECOR!)
		}),
		q(92963, {	-- Decor Treasure Hunt
			["description"] = "Treasure can be found near the entrance to the Brumewood Hollow of the Founders Point at 63.1, 46.7",
			["coord"] = { 63.1, 46.7, FOUNDERS_POINT },	-- Treasure
			["groups"] = { i(245356) },	-- Goldshire Window (DECOR!)
		}),
		q(92964, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Located south of the Cliffside flight path, next to the tower.
			["groups"] = { i(245376) },	-- Tall Sturdy Wooden Bookcase (DECOR!)
		}),
		q(92965, {	-- Decor Treasure Hunt
			-- WoWhead Comment: /way 59.6 52.4
			["groups"] = { i(235523) },	-- Sturdy Wooden Chair (DECOR!)
		}),
		q(92966, {	-- Decor Treasure Hunt
			-- WoWhead Comment: 64.7, 57.7 Cave entrance underwater. 66.9, 57.0 Decor Treasure
			["groups"] = { i(236676) },	-- Stormwind Interior Narrow Wall (DECOR!)
		}),
		q(92967, {	-- Decor Treasure Hunt
			["groups"] = { i(236678) },	-- Stormwind Interior Doorway (DECOR!)
		}),
		q(92968, {	-- Decor Treasure Hunt
			-- WoWhead Comment: /way 52.83, 66.83
			["groups"] = { i(236677) },	-- Stormwind Interior Wall (DECOR!)
		}),
		q(92969, {	-- Decor Treasure Hunt
			["groups"] = { i(242951) },	-- Sturdy Wooden Bench (DECOR!)
		}),
		q(92970, {	-- Decor Treasure Hunt
			["groups"] = { i(246742) },	-- Tall Sturdy Wooden Chair (DECOR!)
		}),
		q(92971, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Next to gazebo in the roundabout on the southwest side near Guilded Oaks flightpoint. /way 41, 61
			["groups"] = { i(246104) },	-- Carved Wooden Crate (DECOR!)
		}),
		q(92972, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Follow the left coastside from the bridge on the south coast of the zone. Soon you will see a cave with the secret inside.
			["groups"] = { i(246103) },	-- Small Wooden Nightstand (DECOR!)
		}),
		q(92973, {	-- Decor Treasure Hunt
			-- Exo Note: Maybe around 46.4, 57.8?
			["groups"] = { i(246101) },	-- Small Wooden Stool (DECOR!)
		}),
		q(92974, {	-- Decor Treasure Hunt
			-- Exo Note: Treasure should be at 55.1, 50.6
			["groups"] = { i(246246) },	-- Stormwind Large Platform (DECOR!)
		}),
		q(92975, {	-- Decor Treasure Hunt
			["groups"] = { i(246245) },	-- Stormwind Round Platform (DECOR!)
		}),
		q(92976, {	-- Decor Treasure Hunt
			-- WoWhead Comment: on the Duskwood side of the most southern bridge on the map
			["groups"] = { i(246243) },	-- Stormwind Beam Platform (DECOR!)
		}),
		q(92977, {	-- Decor Treasure Hunt
			["groups"] = { i(245548) },	-- Iron-Reinforced Cupboard (DECOR!)
		}),
		q(92978, {	-- Decor Treasure Hunt
			["description"] = "Treasure can be found between the dock and the stranded boat at the Brumewood Hollow of the Founders Point at 54.2, 73.6",
			["coord"] = { 54.2, 73.6, FOUNDERS_POINT },	-- Treasure
			["groups"] = { i(243334) },	-- Reinforced Wooden Chest (DECOR!)
		}),
		q(92979, {	-- Decor Treasure Hunt
			-- Exo Note: Cave at 62.3, 79.5
			["groups"] = { i(245334) },	-- Wicker Basket (DECOR!)
		}),
		q(92980, {	-- Decor Treasure Hunt
			["description"] = "Treasure can be found at The Outer Banks of the Founders Point at 28.6, 46.8",
			["coord"] = { 28.6, 46.8, FOUNDERS_POINT },	-- Treasure
			["groups"] = { i(245556) },	-- Iron-Reinforced Standing Mirror (DECOR!)
		}),
		q(92981, {	-- Decor Treasure Hunt
			["description"] = "Treasure can be found just below the Watch Tower at The Outer Banks of the Founders Point at 29.9, 48.2",
			["coord"] = { 29.9, 48.2, FOUNDERS_POINT },	-- Treasure
			["groups"] = { i(245547) },	-- Wide Charming Couch (DECOR!)
		}),
		q(92982, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Head South West to the tip of the island, just after the last house (plot 41) to where the Decor smugglers are selling Horde items. Due South of them, in the water, is a group of turtles, and there is a pile of sand below the wreck above them.
			["groups"] = { i(244531) },	-- Sturdy Fireplace (DECOR!)
		}),
		q(92983, {	-- Decor Treasure Hunt
			-- WoWhead Comment: There's a covered bridge to the left of Small Aerie flightpoint. The mound of dirt can be found bellow, by the river. You won't need to dip into the water. /way 42.5, 44.7
			["groups"] = { i(245372) },	-- Covered Wooden Table (DECOR!)
		}),
		q(92984, {	-- Decor Treasure Hunt
			["groups"] = { i(245336) },	-- Sturdy Wooden Bed (DECOR!)
		}),
		q(92985, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Founders Point isle has 2 main rivers. Go to the west one. The river ends in a big waterfall where it meets the sea. Check the waters bellow said waterfall. /way 37.1, 45.9
			["groups"] = { i(246106) },	-- Wooden Chamberstick (DECOR!)
		}),
		q(92986, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Between plots #13 and #14 in Founders Point 36.6, 54.2
			["groups"] = { i(239075) },	-- Wrought Iron Chandelier (DECOR!)
		}),
		q(92987, {	-- Decor Treasure Hunt
			["description"] = "Treasure can be found below a big tree in the Gilded Oaks of the Founders Point at 36.6, 57.9",
			["coord"] = { 36.6, 57.9, FOUNDERS_POINT },	-- Treasure
			["groups"] = { i(235677) },	-- Wrought Iron Floor Lamp (DECOR!)
		}),
		q(92988, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Guilded Oaks area. just north of the flightpath on the coast is a mill.
			["groups"] = { i(235675) },	-- Three-Candle Wrought Iron Chandelier (DECOR!)
		}),
		q(92989, {	-- Decor Treasure Hunt
			-- Exo Note: Lighthouse. Around 34.6, 74.0
			["groups"] = { i(253589) },	-- Short Wooden Cabinet (DECOR!)
		}),
		q(92990, {	-- Decor Treasure Hunt
			["groups"] = { i(246258) },	-- Bel'ameth Round Platform (DECOR!)
		}),
		q(92991, {	-- Decor Treasure Hunt
			-- WoWhead Comment: you will be find the treasure at coordinates 49.15, 27.16
			["groups"] = { i(246254) },	-- Bel'ameth Beam Platform (DECOR!)
		}),
		q(92992, {	-- Decor Treasure Hunt
			-- WoWhead Comment: It's northeast of the Mear's Farm flight path, among 3 huge barrels.
			["groups"] = { i(245578) },	-- Bel'ameth Interior Doorway (DECOR!)
		}),
		q(92993, {	-- Decor Treasure Hunt
			-- WoWhead Comment: between the towers by the farm in founders point
			["groups"] = { i(245576) },	-- Bel'ameth Round Interior Pillar (DECOR!)
		}),
		q(92994, {	-- Decor Treasure Hunt
			-- WoWhead Comment: At the apple orchard plots by the coast, in its western flowerbed where the gold and yellow flowers meet. It's a short walk straight north from plot #52.
			["groups"] = { i(245575) },	-- Bel'ameth Interior Wall (DECOR!)
		}),
		q(92995, {	-- Decor Treasure Hunt
			-- WoWhead Comment: /way 30.9, 31.1
			["groups"] = { i(255650) },	-- Elegant Table Lamp (DECOR!)
		}),
		q(92996, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Underneath the pier with stairs down the hill. It's at furthest northwest corner/plot of the housing map.
			["groups"] = { i(246502) },	-- Charming Couch (DECOR!)
		}),
		q(92997, {	-- Decor Treasure Hunt
			-- Exo Note: Somewhere around 24.1, 34.9
			["groups"] = { i(246107) },	-- Large Sturdy Wooden Table (DECOR!)
		}),
		q(92998, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Check below the first steps of the wooden stairs 26.2, 37.9
			["groups"] = { i(246102) },	-- Large Covered Wooden Table (DECOR!)
		}),
		q(92999, {	-- Decor Treasure Hunt
			["groups"] = { i(245662) },	-- Carved Wooden Bar Table (DECOR!)
		}),
		q(93000, {	-- Decor Treasure Hunt
			-- WoWhead Comment: In a torchlit cave at /way 59.0, 45.7. To the left of the third waterfall (facing the waterfall) down from Cliffside flight path in Founders Point.
			["groups"] = { i(241618) },	-- Elegant Padded Footstool (DECOR!)
		}),
		q(93001, {	-- Decor Treasure Hunt
			-- WoWhead Comment: in the river basically next to the architect
			["groups"] = { i(244782) },	-- Elven Floral Window (DECOR!)
		}),
		q(93002, {	-- Decor Treasure Hunt
			["groups"] = { i(253490) },	-- Elegant Elven Desk (DECOR!)
		}),
		q(93003, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Right next to flight master Jeff at the portal where you spawn when entering the neighborhood. Coords: /way 56.65, 27.51
			["groups"] = { i(257690) },	-- Elegant Padded Chaise (DECOR!)
		}),
		q(93004, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Located to the east of the bulletin board on the zone map, at the entrance to the theatre area.
			["groups"] = { i(244780) },	-- Circular Elven Table (DECOR!)
		}),
		q(93005, {	-- Decor Treasure Hunt
			-- WoWhead Comment: at the fork between plots 16 and 11, just above the Brumewood Hollow area.
			["groups"] = { i(253441) },	-- Grand Elven Bookcase (DECOR!)
		}),
		q(93006, {	-- Decor Treasure Hunt
			-- WoWhead Comment: In the small courtyard with Jorvan Longmoor, right next to the Local Blacksmith at 53.6, 39.6
			["groups"] = { i(253479) },	-- Small Elegant Padded Chair (DECOR!)
		}),
		q(93007, {	-- Decor Treasure Hunt
			["groups"] = { i(253181) },	-- Gemmed Elven Chest (DECOR!)
		}),
		q(93008, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Gazebo set on a pond in Founders Point. The dirt pile is on the platform, not in the pond. /way 52, 29
			["groups"] = { i(235994) },	-- Ornate Stonework Fireplace (DECOR!)
		}),
		q(93009, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Behind the big circular hay bale location 57.59
			["groups"] = { i(246255) },	-- Bel'ameth Large Platform (DECOR!)
		}),
		q(93078, {	-- Decor Treasure Hunt
			-- Exo Note: Somewhere in the area of 53.8, 24.0
			["groups"] = { i(244533) },	-- Iron Chain Chandelier (DECOR!)
		}),
		q(93142, {	-- Decor Treasure Hunt
			-- WoWhead Comment: By the Stage area to the right of the city's center. A straight line down from the northest flight point.
			["groups"] = { i(257691) },	-- Open Elegant Elven Barrel (DECOR!)
		}),
	}));
	header(HEADERS.Quest, 93109, sharedData({	-- Decor Treasure Hunt [Horde]
		-- qg is added to the mobileDB because, even with sharedData, it triggers contrib reports. Temp fix until it gets sorted?
		["qg"] = 253596,	-- The Last Architect
		["coord"] = { 53.7, 57.4, RAZORWIND_SHORES },
		["races"] = HORDE_ONLY,
	},{
		q(93073, {	-- Decor Treasure Hunt
			["groups"] = { i(236654) },	-- Orgrimmar Interior Doorway (DECOR)
		}),
		q(93074, {	-- Decor Treasure Hunt
			["groups"] = { i(236655) },	-- Orgrimmar Interior Wall (DECOR)
		}),
		q(93075, {	-- Decor Treasure Hunt
			["groups"] = { i(236666) },	-- Orgrimmar Round Interior Pillar (DECOR)
		}),
		q(93077, {	-- Decor Treasure Hunt
			["groups"] = { i(244532) },	-- Rugged Stool (DECOR)
		}),
		q(93079, {	-- Decor Treasure Hunt
			-- WoWhead Comment: /way 63.5 48.8
			["groups"] = { i(244534) },	-- Iron-Reinforced Door (DECOR)
		}),
		q(93080, {	-- Decor Treasure Hunt
			["description"] = "Treasure can be found under the tent in the Sellers Market at the Cragthorn Highlands of the Razorwind Shores at 62.6, 51.7",
			["coord"] = { 62.6, 51.7, RAZORWIND_SHORES },	-- Treasure
			["groups"] = { i(245266) },	-- Iron-Studded Wooden Window (DECOR)
		}),
		q(93081, {	-- Decor Treasure Hunt
			-- WoWhead Comment: /way 72, 50
			["groups"] = { i(245532) },	-- Orgrimmar Chair (DECOR)
		}),
		q(93082, {	-- Decor Treasure Hunt
			-- WoWhead Comment: /way 70.83, 52.73
			["groups"] = { i(245533) },	-- Rugged Brazier (DECOR)
		}),
		q(93083, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Northeast, just north of the northern most plot/house.
			["groups"] = { i(245545) },	-- Orgrimmar Nightstand (DECOR)
		}),
		q(93084, {	-- Decor Treasure Hunt
			["description"] = "Treasure can be found at The Bloom of the Razorwind Shores at 60.7, 64.6",
			["coord"] = { 60.7, 64.6, RAZORWIND_SHORES },	-- Treasure
			["groups"] = { i(245546) },	-- Durable Wooden Chest (DECOR)
		}),
		q(93085, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Slightly north-east in town, really close. coords: /way 58.69, 56.05
			["groups"] = { i(246026) },	-- Orgrimmar Beam Platform (DECOR)
		}),
		q(93087, {	-- Decor Treasure Hunt
			["groups"] = { i(246027) },	-- Orgrimmar Round Platform (DECOR)
		}),
		q(93088, {	-- Decor Treasure Hunt
			["groups"] = { i(246028) },	-- Orgrimmar Large Platform (DECOR)
		}),
		q(93091, {	-- Decor Treasure Hunt
			["groups"] = { i(246036) },	-- High-Backed Orgrimmar Chair (DECOR)
		}),
		q(93097, {	-- Decor Treasure Hunt
			["groups"] = { i(246217) },	-- Short Orgrimmar Bench (DECOR)
		}),
		q(93098, {	-- Decor Treasure Hunt
			["groups"] = { i(246218) },	-- Iron-Reinforced Crate (DECOR)
		}),
		q(93099, {	-- Decor Treasure Hunt
			["groups"] = { i(246224) },	-- Large Orgrimmar Bookcase (DECOR)
		}),
		q(93100, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Located in Saltfang Shoals. /way 66 75
			["groups"] = { i(246587) },	-- Short Orgrimmar Bookcase (DECOR)
		}),
		q(93101, {	-- Decor Treasure Hunt
			["description"] = "Treasure can be found atop the arch at Saltfang Shoals of the Razorwind Shores at 61.9, 76.7",
			["coord"] = { 61.9, 76.7, RAZORWIND_SHORES },	-- Treasure
			["groups"] = { i(246687) },	-- Tusked Candleholder (DECOR)
		}),
		q(93102, {	-- Decor Treasure Hunt
			-- WoWhead Comment: In the water next to the dock of the small island in the east-ish south side of the neighborhood. Right next to Fuller. Coords: /way 63.26, 92.58
			["groups"] = { i(250920) },	-- Horned Hanging Sconce (DECOR)
		}),
		q(93103, {	-- Decor Treasure Hunt
			["groups"] = { i(246241) },	-- Spiky Banded Barrel (DECOR)
		}),
		q(93104, {	-- Decor Treasure Hunt
			["groups"] = { i(246880) },	-- Horned Banded Barrel (DECOR)
		}),
		q(93105, {	-- Decor Treasure Hunt
			["groups"] = { i(246883) },	-- Crude Banded Crate (DECOR)
		}),
		q(93106, {	-- Decor Treasure Hunt
			["groups"] = { i(247221) },	-- Small Orgrimmar Chair (DECOR)
		}),
		q(93107, {	-- Decor Treasure Hunt
			["groups"] = { i(248246) },	-- Razorwind Storage Table (DECOR)
		}),
		q(93108, {	-- Decor Treasure Hunt
			["groups"] = { i(251973) },	-- Hide-Covered Wall Shelf (DECOR)
		}),
		q(93109, {	-- Decor Treasure Hunt
			["description"] = "Treasure can be found at Saltfang Shoals of the Razorwind Shores at 47.8, 88.4",
			["coord"] = { 47.8, 88.4, RAZORWIND_SHORES },	-- Treasure
			["groups"] = { i(245680) },	-- Orgrimmar Bureaucrat's Desk (DECOR)
		}),
		q(93110, {	-- Decor Treasure Hunt
			["groups"] = { i(245398) },	-- Tusked Fireplace (DECOR)
		}),
		q(93111, {	-- Decor Treasure Hunt
			["groups"] = { i(245555) },	-- Orgrimmar Tusked Bed (DECOR)
		}),
		q(93115, {	-- Decor Treasure Hunt
			["groups"] = { i(246614) },	-- Razorwind Bar Table (DECOR)
		}),
		q(93131, {	-- Decor Treasure Hunt
			-- WoWhead Comment: A mound of dirt next to a large rock, Runetotem's Bounty 44, 66
			["groups"] = { i(246868) },	-- Wide Hide-Covered Bench (DECOR)
		}),
		q(93132, {	-- Decor Treasure Hunt
			-- WoWhead Comment: There is a river that starts on the northwestern side of the island and then curves southward. At the point where it turns south, there is a waterfall that feeds into a lake in the Runetotem's Bounty area of the map, which features a diving board and a rope swing. The mound is at the bottom of the lake beneath the diving board.
			["groups"] = { i(246869) },	-- Razorwind Wall Mirror (DECOR)
		}),
		q(93133, {	-- Decor Treasure Hunt
			["groups"] = { i(246882) },	-- Long Orgrimmar Bench (DECOR)
		}),
		q(93134, {	-- Decor Treasure Hunt
			-- WoWhead Comment: in Runetoterm's Bounty just east of the flight point for that area. The treasure is under a canopy on top of the falls next to a telescope.
			["groups"] = { i(248760) },	-- Lovely Elven Shelf (DECOR)
		}),
		q(93135, {	-- Decor Treasure Hunt
			["groups"] = { i(245581) },	-- Silvermoon Round Interior Pillar (DECOR!)
		}),
		q(93136, {	-- Decor Treasure Hunt
			["groups"] = { i(245583) },	-- Silvermoon Interior Wall (DECOR!)
		}),
		q(93137, {	-- Decor Treasure Hunt
			["groups"] = { i(245649) },	-- Silvermoon Interior Doorway (DECOR!)
		}),
		q(93138, {	-- Decor Treasure Hunt
			-- WoWhead Comment: The chest can be found in the SouthEast, 59.9, 76.1 at Razorwind Shores.
			["groups"] = { i(246250) },	-- Silvermoon Large Platform (DECOR!)
		}),
		q(93139, {	-- Decor Treasure Hunt
			["groups"] = { i(246253) },	-- Silvermoon Round Platform (DECOR!)
		}),
		q(93140, {	-- Decor Treasure Hunt
			-- WoWhead Comment: To the right of the town square, very close to where you pick the quest up. /way 57.85, 59.09
			["groups"] = { i(246249) },	-- Silvermoon Beam Platform (DECOR!)
		}),
		q(93141, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Located at 50.5, 79.6, right behind the tower located just Northwest of The Bluffs Flightpath.
			["groups"] = { i(251981) },	-- Elegant Elven Chandelier (DECOR!)
		}),
		q(93143, {	-- Decor Treasure Hunt
			-- WoWhead Comment: At the first intersection if you exit the town on the west side. To the right of fruit vendor Tzurg Lowlock. Coords: /way 49.50, 61.05
			["groups"] = { i(241617) },	-- Elegant Padded Chair (DECOR!)
		}),
		q(93147, {	-- Decor Treasure Hunt
			["groups"] = { i(253493) },	-- Carved Elven Bookcase (DECOR!)
		}),
		q(93149, {	-- Decor Treasure Hunt
			["groups"] = { i(243495) },	-- Elegant Padded Divan (DECOR!)
		}),
		q(93150, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Razorwind Shores at 17.09, 11.65 (just SW of the Runetotem's Bounty North flight point).
			["groups"] = { i(241620) },	-- Elegant Wooden Dresser (DECOR!)
		}),
		q(93151, {	-- Decor Treasure Hunt
			-- WoWhead Comment: Found on the small island at the far southwest of the housing district.
			["groups"] = { i(257692) },	-- Elegant Curved Table (DECOR!)
		}),
		q(93152, {	-- Decor Treasure Hunt
			["groups"] = { i(241621) },	-- Small Elegant End Table (DECOR!)
		}),
	}));
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_7 } }, {
		n(HOUSING, {
			q(92486),	-- Triggered after acquired a house
			q(92654),	-- Triggered after talking to Elven Decor vendor
			q(92666),	-- Triggered after talking to Local Decor vendor
			q(92733),	-- Triggered after entering house
			q(92734),	-- Triggered after entering Razorwind and Founders Point
			q(93629),	-- Triggered after completing 'Time to Decorate'
			q(94392),	-- Triggered after talking to flora decor
			q(94701),	-- Triggered after completing 'Home at Last' (94455)
			-- q(94703),	-- Unflagged after talking to Local Decor vendor
			q(94706),	-- Triggered after skipping tutorial
			q(94707),	-- Triggered after completing 'This Old Hearth' (94379)
			q(94709),	-- Triggered after entering house (tutorial?)
			q(94714),	-- Triggered after completing 'Feathering the Nest' (94210)
			-- q(94750),	-- Unflagged after talking to Elven Decor vendor
		}),
	}));
});
