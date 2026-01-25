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
		-- TODO: Instead of duplicate rewards on vendors + source quest, maybe we can link them via crs and rely on Filler? need to test...
		n(VENDORS, {
			n(255222, {	-- "High Tides" Ren <Decor Vendor>
				["coord"] = { 62.4, 80.1, FOUNDERS_POINT },
			}),
			n(255228, {	-- "Len" Splinthoof <Decor Vendor>
				["coord"] = { 62.5, 80.4, FOUNDERS_POINT },
			}),
			n(255230, {	-- "Yen" Malone <Decor Vendor>
				["coord"] = { 62.2, 80.3, FOUNDERS_POINT },
			}),
			n(255218, {	-- Argan Hammerfist <Decor Vendor>
				["coord"] = { 52.2, 37.8, FOUNDERS_POINT },
			}),
			n(255216, {	-- Balen Starfinder <Decor Vendor>
				["coord"] = { 52.2, 37.8, FOUNDERS_POINT },
			}),
			n(255213, {	-- Faarden the Builder <Decor Vendor>
				["coord"] = { 52.0, 38.4, FOUNDERS_POINT },
			}),
			n(255942, {	-- Jendry Clockson <Donut Vendor>
				["groups"] = { i(260588) },	-- Jendry's Donut
			}),
			n(256750, {	-- Klasa <Preowned Parts>
				["coord"] = { 58.3, 61.7, FOUNDERS_POINT },
			}),
			n(255519, {	-- Lestia Goldenstrike <Lumberjack>
				["coord"] = { 51.9, 38.7, FOUNDERS_POINT },
			}),
			n(255221, {	-- Trevor Grenner <Decor Vendor>
				["coord"] = { 53.5, 40.9, FOUNDERS_POINT },
			}),
			n(255203, {	-- Xiao Dan <Decor Vendor>
				["coord"] = { 52.0, 38.2, FOUNDERS_POINT },
			}),
		}),
	},
}));
