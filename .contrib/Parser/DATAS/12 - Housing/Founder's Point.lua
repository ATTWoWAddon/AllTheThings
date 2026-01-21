---------------------------------------------
--      H O U S I N G    M O D U L E       --
---------------------------------------------
root(ROOTS.Housing, m(FOUNDERS_POINT, {
	["timeline"] = { ADDED_11_2_7 },
	["groups"] = {
		n(EXPLORATION, {
			visit_exploration(16704,{coord={62.2,76.9,2352}}),	-- Breakwater Bight
			visit_exploration(16376,{coord={64.0,53.7,2352}}),	-- Brumewood Hollow
			visit_exploration(16709,{coord={31.4,53.6,2352}}),	-- Crescent Cove
			visit_exploration(16700,{coord={34.9,70.4,2352}}),	-- Faldir's Torch
			map_exploration(16105,{coord={57.2,27.4,2352}}),	-- Founder's Point
			visit_exploration(16377,{coord={48.2,56.0,2352}}),	-- Gilded Oaks
			visit_exploration(16701,{coord={60.9,62.1,2352}}),	-- Morgan's Rest
			visit_exploration(16818,{coord={57.3,34.2,2352}}),	-- Stoneveil Ridge
			visit_exploration(16378,{coord={38.3,39.6,2352}}),	-- The Outer Banks
			visit_exploration(16588,{coord={53.0,35.1,2352}}),	-- Town Center
		}),
		n(FLIGHT_PATHS, {
			fp(3078, {	-- Brumewood Hollow, Founder's Point
				["coord"] = { 56.3, 58.0, FOUNDERS_POINT },
				["cr"] = 236118,	-- Lensholvada
			}),
			fp(3072, {	-- Entrance Portal, Founder's Point
				["coord"] = { 56.6, 27.7, FOUNDERS_POINT },
				["cr"] = 236111,	-- Jeff
			}),
			fp(3077, {	-- Gilded Oaks, Founder's Point
				["coord"] = { 38.1, 62.8, FOUNDERS_POINT },
				["cr"] = 236117,	-- Landan
			}),
			fp(3074, {	-- Mear's Farm, Founder's Point
				["coord"] = { 34.6, 34.2, FOUNDERS_POINT },
				["cr"] = 236113,	-- Eibhlin
			}),
			fp(3076, {	-- Small Aerie, Founder's Point
				["coord"] = { 43.3, 44.9, FOUNDERS_POINT },
				["cr"] = 236116,	-- Norbert
			}),
			fp(3079, {	-- Stoneveil Ridge, Founder's Point
				["coord"] = { 63.7, 41.4, FOUNDERS_POINT },
				["cr"] = 236119,	-- Arneu
			}),
			fp(3075, {	-- The Outer Banks, Founder's Point
				["coord"] = { 32.4, 45.9, FOUNDERS_POINT },
				["cr"] = 236115,	-- Niels
			}),
			fp(3073, {	-- Town Center, Founder's Point
				["coord"] = { 51.3, 39.6, FOUNDERS_POINT },
				["cr"] = 236112,	-- Billson
			}),
		}),
		header(HEADERS.Quest, 92969, sharedData({	-- Decor Treasure Hunt
			["qg"] = 248854,	-- The Last Architect
			-- this allows proper merging with 'coord' used below
			["coords"] = {{ 52.7, 37.5, FOUNDERS_POINT }},
		},{
			q(92437, {	-- Decor Treasure Hunt
				["coord"] = { 63.2, 38.3, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(245375) },	-- Sturdy Wooden Bookcase (DECOR!)
			}),
			q(92961, {	-- Decor Treasure Hunt
				["coord"] = { 58.1, 30.1, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(245384) },	-- Sturdy Wooden Shelf (DECOR!)
			}),
			q(92962, {	-- Decor Treasure Hunt
				["coord"] = { 69.2, 26.7, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(245355) },	-- Sturdy Wooden Door (DECOR!)
			}),
			q(92963, {	-- Decor Treasure Hunt
				["coord"] = { 63.1, 46.7, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(245356) },	-- Goldshire Window (DECOR!)
			}),
			q(92964, {	-- Decor Treasure Hunt
				["coord"] = { 64.9, 51.0, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(245376) },	-- Tall Sturdy Wooden Bookcase (DECOR!)
			}),
			q(92965, {	-- Decor Treasure Hunt
				["coord"] = { 59.6, 52.5, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(235523) },	-- Sturdy Wooden Chair (DECOR!)
			}),
			q(92966, {	-- Decor Treasure Hunt
				["description"] = "Inside the cave.",
				["coords"] = {
					{ 52.7, 37.5, FOUNDERS_POINT },	-- qg
					{ 64.6, 57.6, FOUNDERS_POINT },	-- Cave entrance
					{ 66.9, 57.0, FOUNDERS_POINT },	-- Treasure
				},
				["groups"] = { i(236676) },	-- Stormwind Interior Narrow Wall (DECOR!)
			}),
			q(92967, {	-- Decor Treasure Hunt
				["coord"] = { 58.3, 65.1, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(236678) },	-- Stormwind Interior Doorway (DECOR!)
			}),
			q(92968, {	-- Decor Treasure Hunt
				["coord"] = { 52.8, 66.9, FOUNDERS_POINT },
				["groups"] = { i(236677) },	-- Stormwind Interior Wall (DECOR!)
			}),
			q(92969, {	-- Decor Treasure Hunt
				["coord"] = { 55.4, 71.5, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(242951) },	-- Sturdy Wooden Bench (DECOR!)
			}),
			q(92970, {	-- Decor Treasure Hunt
				["coord"] = { 39.1, 60.0, FOUNDERS_POINT },
				["groups"] = { i(246742) },	-- Tall Sturdy Wooden Chair (DECOR!)
			}),
			q(92971, {	-- Decor Treasure Hunt
				["coord"] = { 40.9, 61.3, FOUNDERS_POINT },
				["groups"] = { i(246104) },	-- Carved Wooden Crate (DECOR!)
			}),
			q(92972, {	-- Decor Treasure Hunt
				["description"] = "Inside the cave.",
				["coords"] = {
					{ 52.7, 37.5, FOUNDERS_POINT },	-- qg
					{ 45.8, 64.9, FOUNDERS_POINT },	-- Cave entrance
					{ 45.4, 64.3, FOUNDERS_POINT },	-- Treasure
				},
				["groups"] = { i(246103) },	-- Small Wooden Nightstand (DECOR!)
			}),
			q(92973, {	-- Decor Treasure Hunt
				["coord"] = { 46.3, 57.9, FOUNDERS_POINT },
				["groups"] = { i(246101) },	-- Small Wooden Stool (DECOR!)
			}),
			q(92974, {	-- Decor Treasure Hunt
				["coord"] = { 55.0, 50.7, FOUNDERS_POINT },
				["groups"] = { i(246246) },	-- Stormwind Large Platform (DECOR!)
			}),
			q(92975, {	-- Decor Treasure Hunt
				["coord"] = { 49.9, 56.6, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(246245) },	-- Stormwind Round Platform (DECOR!)
			}),
			q(92976, {	-- Decor Treasure Hunt
				["coord"] = { 47.7, 62.0, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(246243) },	-- Stormwind Beam Platform (DECOR!)
			}),
			q(92977, {	-- Decor Treasure Hunt
				["coord"] = { 64.56, 85.60, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(245548) },	-- Iron-Reinforced Cupboard (DECOR!)
			}),
			q(92978, {	-- Decor Treasure Hunt
				["coord"] = { 54.2, 73.6, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(243334) },	-- Reinforced Wooden Chest (DECOR!)
			}),
			q(92979, {	-- Decor Treasure Hunt
				["description"] = "Inside the cave.",
				["coords"] = {
					{ 52.7, 37.5, FOUNDERS_POINT },	-- qg
					{ 62.4, 79.5, FOUNDERS_POINT },	-- Cave entrance
					{ 61.6, 79.4, FOUNDERS_POINT },	-- Treasure
				},
				["groups"] = { i(245334) },	-- Wicker Basket (DECOR!)
			}),
			q(92980, {	-- Decor Treasure Hunt
				["coord"] = { 28.6, 46.8, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(245556) },	-- Iron-Reinforced Standing Mirror (DECOR!)
			}),
			q(92981, {	-- Decor Treasure Hunt
				["coord"] = { 29.9, 48.2, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(245547) },	-- Wide Charming Couch (DECOR!)
			}),
			q(92982, {	-- Decor Treasure Hunt
				["coord"] = { 61.9, 82.5, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(244531) },	-- Sturdy Fireplace (DECOR!)
			}),
			q(92983, {	-- Decor Treasure Hunt
				["coord"] = { 42.5, 44.7, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(245372) },	-- Covered Wooden Table (DECOR!)
			}),
			q(92984, {	-- Decor Treasure Hunt
				["coord"] = { 42.7, 53.9, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(245336) },	-- Sturdy Wooden Bed (DECOR!)
			}),
			q(92985, {	-- Decor Treasure Hunt
				["coord"] = { 37.1, 45.9, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(246106) },	-- Wooden Chamberstick (DECOR!)
			}),
			q(92986, {	-- Decor Treasure Hunt
				["coord"] = { 36.6, 54.2, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(239075) },	-- Wrought Iron Chandelier (DECOR!)
			}),
			q(92987, {	-- Decor Treasure Hunt
				["coord"] = { 36.6, 57.9, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(235677) },	-- Wrought Iron Floor Lamp (DECOR!)
			}),
			q(92988, {	-- Decor Treasure Hunt
				["coord"] = { 34.6, 60.2, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(235675) },	-- Three-Candle Wrought Iron Chandelier (DECOR!)
			}),
			q(92989, {	-- Decor Treasure Hunt
				["coord"] = { 34.0, 72.7, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(253589) },	-- Short Wooden Cabinet (DECOR!)
			}),
			q(92990, {	-- Decor Treasure Hunt
				["coord"] = { 49.7, 42.4, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(246258) },	-- Bel'ameth Round Platform (DECOR!)
			}),
			q(92991, {	-- Decor Treasure Hunt
				["coord"] = { 49.2, 27.2, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(246254) },	-- Bel'ameth Beam Platform (DECOR!)
			}),
			q(92992, {	-- Decor Treasure Hunt
				["coord"] = { 41.0, 28.4, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(245578) },	-- Bel'ameth Interior Doorway (DECOR!)
			}),
			q(92993, {	-- Decor Treasure Hunt
				["coord"] = { 40.0, 32.0, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(245576) },	-- Bel'ameth Round Interior Pillar (DECOR!)
			}),
			q(92994, {	-- Decor Treasure Hunt
				["coord"] = { 36.9, 32.9, FOUNDERS_POINT },		-- Treasure
				["groups"] = { i(245575) },	-- Bel'ameth Interior Wall (DECOR!)
			}),
			q(92995, {	-- Decor Treasure Hunt
				["coord"] = { 30.9, 31.1, FOUNDERS_POINT },		-- Treasure
				["groups"] = { i(255650) },	-- Elegant Table Lamp (DECOR!)
			}),
			q(92996, {	-- Decor Treasure Hunt
				["coord"] = { 29.0, 28.2, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(246502) },	-- Charming Couch (DECOR!)
			}),
			q(92997, {	-- Decor Treasure Hunt
				["coord"] = { 21.1, 30.0, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(246107) },	-- Large Sturdy Wooden Table (DECOR!)
			}),
			q(92998, {	-- Decor Treasure Hunt
				["coord"] = { 26.2, 37.9, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(246102) },	-- Large Covered Wooden Table (DECOR!)
			}),
			q(92999, {	-- Decor Treasure Hunt
				["coord"] = { 28.3, 40.1, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(245662) },	-- Carved Wooden Bar Table (DECOR!)
			}),
			q(93000, {	-- Decor Treasure Hunt
				["description"] = "Inside the cave.",
				["coords"] = {
					{ 52.7, 37.5, FOUNDERS_POINT },	-- qg
					{ 59.0, 45.5, FOUNDERS_POINT },	-- Cave entrance
					{ 59.2, 44.9, FOUNDERS_POINT },	-- Treasure
				},
				["groups"] = { i(241618) },	-- Elegant Padded Footstool (DECOR!)
			}),
			q(93001, {	-- Decor Treasure Hunt
				["coord"] = { 56.8, 52.3, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(244782) },	-- Elven Floral Window (DECOR!)
			}),
			q(93002, {	-- Decor Treasure Hunt
				["coord"] = { 57.8, 42.0, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(253490) },	-- Elegant Elven Desk (DECOR!)
			}),
			q(93003, {	-- Decor Treasure Hunt
				["coord"] = { 56.7, 27.5, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(257690) },	-- Elegant Padded Chaise (DECOR!)
			}),
			q(93004, {	-- Decor Treasure Hunt
				["coord"] = { 55.3, 39.9, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(244780) },	-- Circular Elven Table (DECOR!)
			}),
			q(93005, {	-- Decor Treasure Hunt
				["coord"] = { 60.3, 56.8, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(253441) },	-- Grand Elven Bookcase (DECOR!)
			}),
			q(93006, {	-- Decor Treasure Hunt
				["coord"] = { 53.7, 39.8, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(253479) },	-- Small Elegant Padded Chair (DECOR!)
			}),
			q(93007, {	-- Decor Treasure Hunt
				["coord"] = { 57.3, 39.3, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(253181) },	-- Gemmed Elven Chest (DECOR!)
			}),
			q(93008, {	-- Decor Treasure Hunt
				["coord"] = { 52.4, 28.8, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(235994) },	-- Ornate Stonework Fireplace (DECOR!)
			}),
			q(93009, {	-- Decor Treasure Hunt
				["coord"] = { 53.6, 42.0, FOUNDERS_POINT },	-- Treasure
				["groups"] = { i(246255) },	-- Bel'ameth Large Platform (DECOR!)
			}),
		}));
		-- TODO: De-duplicate somehow. It seems that each vendor has a counterpart in the opposing zone, but nothing is really faction-based
		-- TODO: Instead of duplicate rewards on vendors + source quest, maybe we can link them via crs and rely on Filler? need to test...
		n(VENDORS, {
			n(252605, {	-- Aeeshna
				["coord"] = { 53.0, 38.2, FOUNDERS_POINT },
				["timeline"] = { ADDED_12_0_0 },
				["groups"] = {
					i(262664, {	-- Complete Guide to K'areshi Wrappings, Vol. 11 (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(263048, {	-- Consortium Energy Banner (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 15 }},
					}),
					i(263043, {	-- Consortium Energy Barrel (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(263045, {	-- Consortium Energy Collector (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 20 }},
					}),
					i(263046, {	-- Consortium Energy Crate (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(262884, {	-- Consortium Glowpost (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(263044, {	-- Empty Consortium Energy Barrel (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(263047, {	-- Empty Consortium Energy Crate (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(262665, {	-- K'areshi Holo-Crystal Projector (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(262666, {	-- K'areshi Incense Burner (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 2 }},
					}),
					i(262667, {	-- Oath Scale (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(262907, {	-- Tazaveshi Hookah (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
				},
			}),
			n(255222, {	-- "High Tides" Ren <Decor Vendor>
				["coord"] = { 62.4, 80.1, FOUNDERS_POINT },
				["groups"] = {
					i(244662),	-- Closed Leather Curtains (DECOR!)
					i(246223),	-- Cozy Hide-Covered Bench (DECOR!)
					i(246607),	-- Durable Hex Table (DECOR!)
					i(250094),	-- Empty Orgrimmar Bathtub (DECOR!)
					i(251639),	-- Hide-Covered Bench (DECOR!)
					i(251973),	-- Hide-Covered Wall Shelf (DECOR!)
					i(246036),	-- High-Backed Orgrimmar Chair (DECOR!)
					i(250920),	-- Horned Hanging Sconce (DECOR!)
					i(244533),	-- Iron Chain Chandelier (DECOR!)
					i(244534),	-- Iron-Reinforced Door (DECOR!)
					i(246037),	-- Iron-Reinforced Wooden Rack (DECOR!)
					i(257389),	-- Iron-Reinforced Wooden Window (DECOR!)
					i(245266),	-- Iron-Studded Wooden Window (DECOR!)
					i(246224),	-- Large Orgrimmar Bookcase (DECOR!)
					i(244663),	-- Leather Valance (DECOR!)
					i(246613),	-- Long Durable Table (DECOR!)
					i(246608),	-- Long Leather-Clad Table (DECOR!)
					i(246263),	-- Orgrimmar Angled Platform (DECOR!)
					i(258148),	-- Orgrimmar Bathtub (DECOR!)
					i(246259),	-- Orgrimmar Beam Platform (DECOR!)
					i(245680),	-- Orgrimmar Bureaucrat's Desk (DECOR!)
					i(245532),	-- Orgrimmar Chair (DECOR!)
					i(236654),	-- Orgrimmar Interior Doorway (DECOR!)
					i(236653),	-- Orgrimmar Interior Narrow Wall (DECOR!)
					i(236655),	-- Orgrimmar Interior Wall (DECOR!)
					i(246261),	-- Orgrimmar Large Platform (DECOR!)
					i(245545),	-- Orgrimmar Nightstand (DECOR!)
					i(246609),	-- Orgrimmar Open Dresser (DECOR!)
					i(236666),	-- Orgrimmar Round Interior Pillar (DECOR!)
					i(246260),	-- Orgrimmar Round Platform (DECOR!)
					i(246262),	-- Orgrimmar Small Platform (DECOR!)
					i(236667),	-- Orgrimmar Square Interior Pillar (DECOR!)
					i(245555),	-- Orgrimmar Tusked Bed (DECOR!)
					i(245394),	-- Plain Interior Doorway (DECOR!)
					i(245395),	-- Plain Interior Narrow Wall (DECOR!)
					i(245393),	-- Plain Interior Wall (DECOR!)
					i(246614),	-- Razorwind Bar Table (DECOR!)
					i(256050),	-- Razorwind Shores Front Door (DECOR!)
					i(246610),	-- Razorwind Standing Mirror (DECOR!)
					i(248246),	-- Razorwind Storage Table (DECOR!)
					i(246869),	-- Razorwind Wall Mirror (DECOR!)
					i(245264),	-- Round Stitched Cushion (DECOR!)
					i(244778),	-- Sethraliss Priest's Pillow (QI!) (DECOR!)
					i(246587),	-- Short Orgrimmar Bookcase (DECOR!)
					i(246225),	-- Small Leather Rug (DECOR!)
					i(247221),	-- Small Orgrimmar Chair (DECOR!)
					i(254316),	-- Small Orgrimmar Tusked Bed (DECOR!)
					i(250913),	-- Small Razorwind Bar Table (DECOR!)
					i(254560),	-- Small Razorwind Square Table (DECOR!)
					i(246038),	-- Stitched Leather Rug (DECOR!)
					i(245265),	-- Stitched Pillow Roll (DECOR!)
					i(244661),	-- Tied-Open Leather Curtains (DECOR!)
					i(252657),	-- Tied-Right Leather Curtains (DECOR!)
					i(246687),	-- Tusked Candleholder (DECOR!)
					i(251974),	-- Tusked Chandelier (DECOR!)
					i(245398),	-- Tusked Fireplace (DECOR!)
					i(246879),	-- Tusked Hanging Sconce (DECOR!)
					i(251975),	-- Tusked Sconce (DECOR!)
					i(250093),	-- Tusked Weapon Rack (DECOR!)
					i(251976),	-- Wolf Pelt Rug (DECOR!)
				},
			}),
			n(255228, {	-- "Len" Splinthoof <Decor Vendor>
				["coord"] = { 62.5, 80.4, FOUNDERS_POINT },
				["groups"] = {
					i(246883),	-- Crude Banded Crate (DECOR!)
					i(245546),	-- Durable Wooden Chest (DECOR!)
					i(246880),	-- Horned Banded Barrel (DECOR!)
					i(246218),	-- Iron-Reinforced Crate (DECOR!)
					i(251638),	-- Jagged Orgrimmar Trellis (DECOR!)
					i(254893),	-- Large Razorwind Gazebo (DECOR!)
					i(246220),	-- Leather-Banded Wooden Bench (DECOR!)
					i(246612),	-- Logger's Picnic Table (DECOR!)
					i(246882),	-- Long Orgrimmar Bench (DECOR!)
					i(246884),	-- Open Crude Banded Crate (DECOR!)
					i(246881),	-- Open Horned Banded Barrel (DECOR!)
					i(246616),	-- Open Iron-Reinforced Crate (DECOR!)
					i(246615),	-- Open Spiky Banded Barrel (DECOR!)
					i(251545),	-- Razorwind Cooking Grill (DECOR!)
					i(257099),	-- Razorwind Covered Well (DECOR!)
					i(246611),	-- Razorwind Fountain (DECOR!)
					i(256357),	-- Razorwind Porch Chair (DECOR!)
					i(245533),	-- Razorwind Brazier (DECOR!)
					i(244532),	-- Rugged Stool (DECOR!)
					i(246217),	-- Short Orgrimmar Bench (DECOR!)
					i(255708),	-- Small Jagged Orgrimmar Trellis (DECOR!)
					i(246241),	-- Spiky Banded Barrel (DECOR!)
					i(244535),	-- Tusked Gazebo (DECOR!)
					i(251637),	-- Tusked Weapon Stand (DECOR!)
					i(246868),	-- Wide Hide-Covered Bench (DECOR!)
					i(249550),	-- Wind Rider Roost (DECOR!)
				},
			}),
			n(255230, {	-- "Yen" Malone <Decor Vendor>
				["coord"] = { 62.2, 80.3, FOUNDERS_POINT },
				["groups"] = {
					i(248631),	-- Azsharan Firespear Tree (DECOR!)
					i(248630),	-- Barrens Hosta Bush (DECOR!)
					i(260702),	-- Dry Razorwind Grass Patch (DECOR!)
					i(248633),	-- Flowering Durotar Cactus (DECOR!)
					i(248632),	-- Hardy Razorwind Grass Patch (DECOR!)
					i(248629),	-- Nagrand Blueberry Bush (DECOR!)
					i(248638),	-- Pink Razorwind Paintbrush (DECOR!)
					i(248634),	-- Razorwind Acacia Tree (DECOR!)
					i(248626),	-- Razorwind Fighting Cactus (DECOR!)
					i(248650),	-- Razorwind Flamebrush (DECOR!)
					i(248636),	-- Razorwind Gobtree (DECOR!)
					i(248628),	-- Razorwind Palm Tree (DECOR!)
					i(248625),	-- Razorwind Succulent Palm (DECOR!)
					i(248627),	-- Razorwind Tumbleweed (DECOR!)
					i(260701),	-- Red Razorwind Paintbrush (DECOR!)
					i(257359),	-- Slate Cobblestone Pair (DECOR!)
					i(257388),	-- Slate Cobblestone (DECOR!)
					i(257390),	-- Slate Cobblestone Path (DECOR!)
					i(257392),	-- Slate Cobblestone Trio (DECOR!)
					i(248637),	-- Sunset Aster Flowers (DECOR!)
					i(248338),	-- Flat Boulder (DECOR!)
					i(248339),	-- Hilltop Boulder (DECOR!)
					i(248337),	-- Round-Top Boulder (DECOR!)
				},
			}),
			n(255218, {	-- Argan Hammerfist
				["coord"] = { 52.2, 37.8, FOUNDERS_POINT },
				["groups"] = {
					i(244780),	-- Circular Elven Table (DECOR!)
					i(244169),	-- Elegant Almond Table (DECOR!)
					i(253439),	-- Elegant Carved Bench (DECOR!)
					i(253437),	-- Elegant Covered Bench (DECOR!)
					i(257692),	-- Elegant Curved Table (DECOR!)
					i(241623, {	-- Elegant Elven Barrel (DECOR!)
						["timeline"] = { ADDED_12_0_0 },
					}),
					i(244782),	-- Elven Floral Window (DECOR!)
					i(248658),	-- Elven Wood Crate (DECOR!)
					i(247502),	-- Elven Woodvine Trellis (DECOR!)
					i(253495),	-- Grand Elven Bench (DECOR!)
					i(257691),	-- Open Elegant Elven Barrel (DECOR!)
					-- i(241625),	-- Open Elven Wood Crate (DECOR!)
					i(244118),	-- Rectangular Elegant Table (DECOR!)
					i(243088),	-- Standing Ornate Weapon Rack (DECOR!)
				},
			}),
			n(255216, {	-- Balen Starfinder <Decor Vendor>
				["coord"] = { 52.2, 37.8, FOUNDERS_POINT },
				["groups"] =  {
					i(246257),	-- Bel'ameth Angled Platform (DECOR!)
					i(246254, {	-- Bel'ameth Beam Platform (DECOR!)
						["sourceQuest"] = 92991,	-- Decor Treasure Hunt
					}),
					i(245578, {	-- Bel'ameth Interior Doorway (DECOR!)
						["sourceQuest"] = 92992,	-- Decor Treasure Hunt 38
					}),
					i(245579),	-- Bel'ameth Interior Narrow Wall (DECOR!)
					i(245575, {	-- Bel'ameth Interior Wall (DECOR!)
						["sourceQuest"] = 92994,	-- Decor Treasure Hunt 36
					}),
					i(246255),	-- Bel'ameth Large Platform (DECOR!)
					i(245576, {	-- Bel'ameth Round Interior Pillar (DECOR!)
						["sourceQuest"] = 92993,	-- Decor Treasure Hunt 37
					}),
					i(246258),	-- Bel'ameth Round Platform (DECOR!)
					i(246256),	-- Bel'ameth Small Platform (DECOR!)
					i(253493, {	-- Carved Elven Bookcase (DECOR!)
						["sourceQuest"] = 93147,	-- Decor Treasure Hunt 45
					}),
					i(243242),	-- Circular Elven Floor Rug (DECOR!)
					i(247501),	-- Elegant Carved Door (DECOR!)
					i(253180),	-- Elegant Elven Canopy Bed (DECOR!)
					i(251981, {	-- Elegant Elven Chandelier (DECOR!)
						["sourceQuest"] = 93141,	-- Decor Treasure Hunt
					}),
					i(253490, {	-- Elegant Elven Desk (DECOR!)
						["sourceQuest"] = 93002,	-- Decor Treasure Hunt 48
					}),
					i(241617, {	-- Elegant Padded Chair (DECOR!)
						["sourceQuest"] = 93143,	-- Decor Treasure Hunt 44
					}),
					i(257690, {	-- Elegant Padded Chaise (DECOR!)
						["sourceQuest"] = 93003,	-- Decor Treasure Hunt 47
					}),
					i(243495, {	-- Elegant Padded Divan (DECOR!)
						["sourceQuest"] = 93149,	-- Decor Treasure Hunt 47
					}),
					i(241618, {	-- Elegant Padded Footstool (DECOR!)
						["sourceQuest"] = 93000,	-- Decor Treasure Hunt 50
					}),
					i(246711),	-- Elegant Pillow Roll (DECOR!)
					i(246961),	-- Elegant Seat Cushion (DECOR!)
					i(255650, {	-- Elegant Table Lamp (DECOR!)
						["sourceQuest"] = 92995,	-- Decor Treasure Hunt 35
					}),
					i(246431),	-- Elegant Tied Curtain (DECOR!)
					i(244781),	-- Elegant Wall Drape (DECOR!)
					i(241620, {	-- Elegant Wooden Dresser (DECOR!)
						["sourceQuest"] = 93150,	-- Decor Treasure Hunt 48
					}),
					i(249558),	-- Elven Standing Mirror (DECOR!)
					i(253181, {	-- Gemmed Elven Chest (DECOR!)
						["sourceQuest"] = 93007,	-- Decor Treasure Hunt 43
					}),
					i(251982, {	-- Gilded Silvermoon Candelabra (DECOR!)
						["timeline"] = { ADDED_12_0_0 },
					}),
					i(253441, {	-- Grand Elven Bookcase (DECOR!)
						["sourceQuest"] = 93005,	-- Decor Treasure Hunt 45
					}),
					i(246691),	-- Grand Elven Wall Curtain (DECOR!)
					i(264169),	-- Homestone Doormat (DECOR!)
					i(248760, {	-- Lovely Elven Shelf (DECOR!)
						["sourceQuest"] = 93134,	-- Decor Treasure Hunt 35
					}),
					i(235994, {	-- Ornate Stonework Fireplace (DECOR!)
						["sourceQuest"] = 93008,	-- Decor Treasure Hunt 42
					}),
					i(241622),	-- Ornate Weapon Rack (DECOR!)
					i(243243),	-- Rectangular Elven Floor Rug (DECOR!)
					i(246252),	-- Silvermoon Angled Platform (DECOR!)
					i(246249),	-- Silvermoon Beam Platform (DECOR!)
					i(245649, {	-- Silvermoon Interior Doorway (DECOR!)
						["sourceQuest"] = 93137,	-- Decor Treasure Hunt 38
					}),
					i(245582),	-- Silvermoon Interior Narrow Wall (DECOR!)
					i(245583, {	-- Silvermoon Interior Wall (DECOR!)
						["sourceQuest"] = 93136,	-- Decor Treasure Hunt 37
					}),
					i(246250),	-- Silvermoon Large Platform (DECOR!)
					i(245581, {	-- Silvermoon Round Interior Pillar (DECOR!)
						["sourceQuest"] = 93135,	-- Decor Treasure Hunt 36
					}),
					i(246253),	-- Silvermoon Round Platform (DECOR!)
					i(246251),	-- Silvermoon Small Platform (DECOR!)
					i(241621, {	-- Small Elegant End Table (DECOR!)
						["sourceQuest"] = 93152,	-- Decor Treasure Hunt 50
					}),
					i(253479, {	-- Small Elegant Padded Chair (DECOR!)
						["sourceQuest"] = 93006,	-- Decor Treasure Hunt 44
					}),
				},
			}),
			n(255213, {	-- Faarden the Builder <Decor Vendor>
				["coord"] = { 52.0, 38.4, FOUNDERS_POINT },
				["groups"] =  {
					i(245662, {	-- Carved Wooden Bar Table (DECOR!)
						["sourceQuest"] = 92999,	-- Decor Treasure Hunt 31
					}),
					i(246104, {	-- Carved Wooden Crate (DECOR!)
						["sourceQuest"] = 92971,	-- Decor Treasure Hunt 19
					}),
					i(253590),	-- Coal-Fired Stovetop (DECOR!)
					i(245372, {	-- Covered Wooden Table (DECOR!)
						["sourceQuest"] = 92983,	-- Decor Treasure Hunt 27
					}),
					i(245365),	-- Empty Stormwind Market Stand (DECOR!)
					i(245357),	-- Gryphon Roost (DECOR!)
					i(246102, {	-- Large Covered Wooden Table (DECOR!)
						["sourceQuest"] = 92998,	-- Decor Treasure Hunt 32
					}),
					i(245359),	-- Large Stonework Fountain (DECOR!)
					i(246107, {	-- Large Sturdy Wooden Table (DECOR!)
						["sourceQuest"] = 92997,	-- Decor Treasure Hunt
					}),
					i(246109),	-- Open Carved Wooden Crate (DECOR!)
					i(245377),	-- Open-Air Sturdy Tent (DECOR!)
					i(243334, {	-- Reinforced Wooden Chest (DECOR!)
						["sourceQuest"] = 92978,	-- Decor Treasure Hunt 12
					}),
					i(244667),	-- Restful Wooden Bench (DECOR!)
					i(245360),	-- Small Stonework Fountain (DECOR!)
					i(245657),	-- Stonework Fountain (DECOR!)
					i(245366),	-- Stormwind Bean Seller's Stand (DECOR!)
					i(245367),	-- Stormwind Produce Seller's Stand (DECOR!)
					i(245368),	-- Stormwind Spice Merchant's Stand (DECOR!)
					i(245382),	-- Sturdy Covered Wagon (DECOR!)
					i(245380),	-- Sturdy Open Wagon (DECOR!)
					i(245379),	-- Sturdy Roofed Wagon (DECOR!)
					i(245378),	-- Sturdy Sheltering Tent (DECOR!)
					i(246105),	-- Sturdy Weapon Rack (DECOR!)
					i(263025),	-- Sturdy Wine Press (DECOR!)
					i(242951, {	-- Sturdy Wooden Bench (DECOR!)
						["sourceQuest"] = 92969,	-- Decor Treasure Hunt 10
					}),
					i(235523, {	-- Sturdy Wooden Chair (DECOR!)
						["sourceQuest"] = 92965,	-- Decor Treasure Hunt 06
					}),
					i(245374),	-- Sturdy Wooden Table (DECOR!)
					i(246588),	-- Sturdy Wooden Trellis (DECOR!)
					i(245386),	-- Sturdy Wooden Wheelbarrow (DECOR!)
					i(246742, {	-- Tall Sturdy Wooden Chair (DECOR!)
						["sourceQuest"] = 92970,	-- Decor Treasure Hunt 20
					}),
					i(246219),	-- Weather-Treated Wooden Table (DECOR!)
					i(245385),	-- Well-Built Well (DECOR!)
					i(246106, {	-- Wooden Chamberstick (DECOR!)
						["sourceQuest"] = 92985,	-- Decor Treasure Hunt 25
					}),
					i(245656),	-- Wooden Gazebo (DECOR!)
					i(245551),	-- Worker's Wooden Desk (DECOR!)
				},
			}),
			n(252917, {	-- Hesta Forlath <Endeavor Trader>
				["coords"] = {
					{ 53.1, 38.3,   FOUNDERS_POINT },
					{ 54.4, 56.0, RAZORWIND_SHORES },
				},
				["timeline"] = { ADDED_12_0_0 },
				["groups"] = {
					i(253601, {	-- 590 Quel'Lithien Red (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(253523, {	-- Astalor's Hookah (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(253600, {	-- Eversong Crystal Glass (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(253522, {	-- Thalassian Chest (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					-- Exo Note: For these, there probably be a sourceQuests or we will need a new system that tracks milestones of the endeavors as these items are locked behind them
					-- Reach the first milestone of the endeavor
					i(253524, {	-- 590 Quel'Lithien Red Display Bottle (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(254235, {	-- Sin'dori Artisan's Easel (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					-- Reach the second milestone of the endeavor
					i(253525, {	-- Thalassian Academy Dictation Device (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					-- Reach the third milestone of the endeavor
					i(253526, {	-- Sin'dorei Wine Display (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 15 }},
					}),
					i(253599, {	-- Artisanal Display Tent (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 15 }},
					}),
					-- Reach the fourth milestone of the endeavor
					-- Exo Note: This will probably have some HQT hidden behind it. Used to buy paintings in Silvermoon Bazaar but tooltip states "you don't need to keep the deed on you".
					i(253802, {	-- Deed of Patronage
						["cost"] = {{ "c", COMMUNITY_COUPONS, 30 }},
					}),
				},
			}),
			n(255942, {	-- Jendry Clockson <Donut Vendor>
				["groups"] = { i(260588) },	-- Jendry's Donut
			}),
			n(256750, {	-- Klasa <Preowned Parts>
				["coord"] = { 58.3, 61.7, FOUNDERS_POINT },
				["groups"] = {
					i(245400),	-- Ceiling Cobweb (DECOR!)
					i(245401),	-- Tented Cobweb (DECOR!)
					i(245402),	-- Small Dangling Cobweb (DECOR!)
					i(245403),	-- Large Dangling Cobweb (DECOR!)
					i(245404),	-- Pillar Cobweb (DECOR!)
				},
			}),
			n(255519, {	-- Lestia Goldenstrike <Lumberjack>
				["coord"] = { 51.9, 38.7, FOUNDERS_POINT },
				["groups"] = {
					i(253580),	-- Harvesting Hatchet
					i(251766, {	-- Shadowmoon Lumber
						["cost"] = { { "i", 242691, 1 } },	-- Olemba Lumber
					}),
				},
			}),
			n(255221, {	-- Trevor Grenner <Decor Vendor>
				["coord"] = { 53.5, 40.9, FOUNDERS_POINT },
				["groups"] = {
					i(248648),	-- Autumn Leaf Pile (DECOR!)
					i(245371),	-- Charming Laurel Tree (DECOR!)
					i(245327),	-- Creeping Corner Ivy (DECOR!)
					i(248642),	-- Creeping Lattice Ivy (DECOR!)
					i(248640),	-- Duskberry Bush (DECOR!)
					i(248641),	-- Duskwood Shadebrush (DECOR!)
					i(248643),	-- Duskwood Sycamore Shrub (DECOR!)
					i(255644),	-- Elwynn Apple Tree (DECOR!)
					i(258658),	-- Elwynn Autumn Apple Tree (DECOR!)
					i(245659),	-- Elwynn Cobblestone (DECOR!)
					i(245661),	-- Elwynn Cobblestone Cluster (DECOR!)
					i(245660),	-- Elwynn Cobblestone Pair (DECOR!)
					i(245658),	-- Elwynn Cobblestone Round (DECOR!)
					i(248802),	-- Elwynn Grass Patch (DECOR!)
					i(248803),	-- Elwynn Grass Spread (DECOR!)
					i(248811),	-- Elwynn Small Grass Patch (DECOR!)
					i(248635),	-- Elwynn Whitebrush (DECOR!)
					i(255646),	-- Founder's Point Apple Tree (DECOR!)
					i(258659),	-- Founder's Point Autumn Apple Tree (DECOR!)
					i(248647),	-- Founder's Point Blooming Grass Patch (DECOR!)
					i(245369),	-- Gift of Gilneas (DECOR!)
					i(248639),	-- Gloomrose (DECOR!)
					i(248645),	-- Pink Gilnean Rose (DECOR!)
					i(248646),	-- Silvermoon Sunrise Bush (DECOR!)
					i(245328),	-- Small Boxwood Bush (DECOR!)
					i(245329),	-- Small Poppy Cluster (DECOR!)
					i(248644),	-- Spiritbloom Flower (DECOR!)
					i(248649),	-- Young Chestnut Tree (DECOR!)
					i(248338),	-- Flat Boulder (DECOR!)
					i(248339),	-- Hilltop Boulder (DECOR!)
					i(248337),	-- Round-Top Boulder (DECOR!)
					--
					i(266241, {	-- Brumewood Hollow Large Garden Cluster (DECOR!)
						["timeline"] = { ADDED_12_0_0 },
					}),
					i(266240, {	-- Founder's Point Large Garden Cluster (DECOR!)
						["timeline"] = { ADDED_12_0_0 },
					}),
					i(266242, {	-- Gilded Oaks Large Garden Cluster (DECOR!)
						["timeline"] = { ADDED_12_0_0 },
					}),
					i(266245, {	-- Granite Cobblestone Path Arc (DECOR!)
						["timeline"] = { ADDED_12_0_0 },
					}),
					i(266244, {	-- Granite Cobblestone Path Corner (DECOR!)
						["timeline"] = { ADDED_12_0_0 },
					}),
					i(266443, {	-- Granite Cobblestone Long Path (DECOR!)
						["timeline"] = { ADDED_12_0_0 },
					}),
					i(266444, {	-- Granite Cobblestone Path (DECOR!)
						["timeline"] = { ADDED_12_0_0 },
					}),
					i(266239, {	-- Outer Banks Large Garden Cluster (DECOR!)
						["timeline"] = { ADDED_12_0_0 },
					}),
					i(266243, {	-- Stoneveil Ridge Large Garden Cluster (DECOR!)
						["timeline"] = { ADDED_12_0_0 },
					}),
				},
			}),
			n(255203, {	-- Xiao Dan <Decor Vendor>
				["coord"] = { 52.0, 38.2, FOUNDERS_POINT },
				["groups"] =  {
					i(245383),	-- "Sunrise Canyon" Painting (DECOR!)
					i(246502, {	-- Charming Couch (DECOR!)
						["sourceQuest"] = 92996,	-- Decor Treasure Hunt 34
					}),
					i(245267),	-- Charming Seat Cushion (DECOR!)
					i(245268),	-- Checkered Charming Seat Cushion (DECOR!)
					i(235633),	-- Circular Woolen Rug (DECOR!)
					i(244665),	-- Closed Folk Curtains (DECOR!)
					i(244666),	-- Durable Folk Valance (DECOR!)
					i(245335),	-- Empty Wicker Basket (DECOR!)
					i(258670),	-- Empty Wooden Bathtub (DECOR!)
					i(252659),	-- Founder's Point Front Door (DECOR!)
					i(245356, {	-- Goldshire Window (DECOR!)
						["sourceQuest"] = 92963,	-- Decor Treasure Hunt 04
					}),
					i(245548, {	-- Iron-Reinforced Cupboard (DECOR!)
						["sourceQuest"] = 92977,	-- Decor Treasure Hunt 13
					}),
					i(245556, {	-- Iron-Reinforced Standing Mirror (DECOR!)
						["sourceQuest"] = 92980,	-- Decor Treasure Hunt 30
					}),
					i(245353),	-- Open Wooden Coffin (DECOR!)
					i(245394),	-- Plain Interior Doorway (DECOR!)
					i(245395),	-- Plain Interior Narrow Wall (DECOR!)
					i(245393),	-- Plain Interior Wall (DECOR!)
					i(252417),	-- Plush Cushioned Chair (DECOR!)
					i(245370),	-- Secretive Bookcase Wall (DECOR!)
					i(253589, {	-- Short Wooden Cabinet (DECOR!)
						["sourceQuest"] = 92989,	-- Decor Treasure Hunt 21
					}),
					i(245358),	-- Small Fruit Platter (DECOR!)
					i(246103, {	-- Small Wooden Nightstand (DECOR!)
						["sourceQuest"] = 92972,	-- Decor Treasure Hunt 18
					}),
					i(246101, {	-- Small Wooden Stool (DECOR!)
						["sourceQuest"] = 92973,	-- Decor Treasure Hunt 17
					}),
					i(246248),	-- Stormwind Angled Platform (DECOR!)
					i(246243),	-- Stormwind Beam Platform (DECOR!)
					i(242255),	-- Stormwind Hall Rug (DECOR!)
					i(236678, {	-- Stormwind Interior Doorway (DECOR!)
						["sourceQuest"] = 92967,	-- Decor Treasure Hunt
					}),
					i(236676, {	-- Stormwind Interior Narrow Wall (DECOR!)
						["sourceQuest"] = 92966,	-- Decor Treasure Hunt 07
					}),
					i(236675),	-- Stormwind Interior Pillar (DECOR!)
					i(236677, {	-- Stormwind Interior Wall (DECOR!)
						["sourceQuest"] = 92968,	-- Decor Treasure Hunt 09
					}),
					i(246246),	-- Stormwind Large Platform (DECOR!)
					i(246245),	-- Stormwind Round Platform (DECOR!)
					i(246247),	-- Stormwind Small Platform (DECOR!)
					i(244531, {	-- Sturdy Fireplace (DECOR!)
						["sourceQuest"] = 92982,	-- Decor Treasure Hunt 28
					}),
					i(244530),	-- Sturdy Wall Rack (DECOR!)
					i(253593),	-- Sturdy Wooden Bathtub (DECOR!)
					i(245336, {	-- Sturdy Wooden Bed (DECOR!)
						["sourceQuest"] = 92984,	-- Decor Treasure Hunt 26
					}),
					i(245375, {	-- Sturdy Wooden Bookcase (DECOR!)
						["sourceQuest"] = 92437,	-- Decor Treasure Hunt 01
					}),
					i(245352),	-- Sturdy Wooden Coffin (DECOR!)
					i(245355, {	-- Sturdy Wooden Door (DECOR!)
						["sourceQuest"] = 92962,	-- Decor Treasure Hunt 03
					}),
					i(245392),	-- Sturdy Wooden Interior Pillar (DECOR!)
					i(245384, {	-- Sturdy Wooden Shelf (DECOR!)
						["sourceQuest"] = 92961,	-- Decor Treasure Hunt
					}),
					i(253592),	-- Sturdy Wooden Washbasin (DECOR!)
					i(245376, {	-- Tall Sturdy Wooden Bookcase (DECOR!)
						["sourceQuest"] = 92964,	-- Decor Treasure Hunt 05
					}),
					i(235675, {	-- Three-Candle Wrought Iron Chandelier (DECOR!)
						["sourceQuest"] = 92988,	-- Decor Treasure Hunt 22
					}),
					i(244664),	-- Tied-Open Folk Curtains (DECOR!)
					i(245334, {	-- Wicker Basket (DECOR!)
						["sourceQuest"] = 92979,	-- Decor Treasure Hunt
					}),
					i(245547, {	-- Wide Charming Couch (DECOR!)
						["sourceQuest"] = 92981,	-- Decor Treasure Hunt 29
					}),
					i(246106, {	-- Wooden Chamberstick (DECOR!)
						["sourceQuest"] = 92985,	-- Decor Treasure Hunt 25
					}),
					i(245354),	-- Wooden Coffin Lid (DECOR!)
					i(239075, {	-- Wrought Iron Chandelier (DECOR!)
						["sourceQuest"] = 92986,	-- Decor Treasure Hunt 24
					}),
					i(235677, {	-- Wrought Iron Floor Lamp (DECOR!)
						["sourceQuest"] = 92987,	-- Decor Treasure Hunt 23
					}),
				},
			}),
		}),
	},
}));
