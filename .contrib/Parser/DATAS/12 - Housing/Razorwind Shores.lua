---------------------------------------------
--      H O U S I N G    M O D U L E       --
---------------------------------------------
root(ROOTS.Housing, m(RAZORWIND_SHORES, {
	["timeline"] = { ADDED_11_2_7 },
	["groups"] = {
		n(EXPLORATION, {
			visit_exploration(16226,{coord={58.6,49.3,2351}}),	-- Cragthorn Highlands
			visit_exploration(16687,{coord={63.7,47.7,2351}}),	-- Four Sisters
			visit_exploration(16688,{coord={53.7,71.2,2351}}),	-- Ragewater Springs
			map_exploration(15524,{coord={54.0,50.0,2351}}),	-- Razorwind Shores
			visit_exploration(16228,{coord={45.9,54.7,2351}}),	-- Runetotem's Bounty
			visit_exploration(16229,{coord={41.1,69.7,2351}}),	-- Saltfang Shoals
			visit_exploration(16690,{coord={41.0,75.6,2351}}),	-- Scorchsong Isle
			visit_exploration(16589,{coord={55.6,56.2,2351}}),	-- The Common
			visit_exploration(16753,{coord={62.2,76.9,2351}}),	-- The Bloom
		}),
		n(FLIGHT_PATHS, {
			fp(2978, {	-- Cragthorn Highlands, Razorwind Shores
				["coord"] = { 66.3, 56.5, RAZORWIND_SHORES },
				["cr"] = 227952,	-- Jarg Riverbend
			}),
			fp(2972, {	-- Entrance Gate, Razorwind Shores
				["coord"] = { 54.8, 51.2, RAZORWIND_SHORES },
				["cr"] = 227801,	-- Drelda
			}),
			fp(2974, {	-- Runetotem's Bounty North, Razorwind Shores
				["coord"] = { 42.7, 55.9, RAZORWIND_SHORES },
				["cr"] = 227902,	-- Zurlik
			}),
			fp(2975, {	-- Runetotem's Bounty South, Razorwind Shores
				["coord"] = { 47.8, 69.9, RAZORWIND_SHORES },
				["cr"] = 227901,	-- Reginald Glarestone
			}),
			fp(2973, {	-- Saltfang Shoals East, Razorwind Shores
				["coord"] = { 68.1, 75.6, RAZORWIND_SHORES },
				["cr"] = 227894,	-- Trak Tuskbender
			}),
			fp(2980, {	-- The Bloom, Razorwind Shores
				["coord"] = { 59.2, 71.8, RAZORWIND_SHORES },
				["cr"] = 227896,	-- Wuls
			}),
			fp(2976, {	-- The Bluffs, Razorwind Shores
				["coord"] = { 52.7, 81.7, RAZORWIND_SHORES },
				["cr"] = 227900,	-- Luk'gra
			}),
			fp(2979, {	-- The Common, Razorwind Shores
				["coord"] = { 53.6, 59.7, RAZORWIND_SHORES },
				["cr"] = 227878,	-- Broktar
			}),
		}),
		header(HEADERS.Quest, 93109, sharedData({	-- Decor Treasure Hunt
			["qg"] = 253596,	-- The Last Architect
			-- this allows proper merging with 'coord' used below
			["coords"] = {{ 53.7, 57.4, RAZORWIND_SHORES }},
		},{
			q(93073, {	-- Decor Treasure Hunt
				["coord"] = { 53.7, 50.2, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(236654) },	-- Orgrimmar Interior Doorway (DECOR!)
			}),
			q(93074, {	-- Decor Treasure Hunt
				["coord"] = { 55.6, 49.8, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(236655) },	-- Orgrimmar Interior Wall (DECOR!)
			}),
			q(93075, {	-- Decor Treasure Hunt
				["coord"] = { 56.4, 48.0, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(236666) },	-- Orgrimmar Round Interior Pillar (DECOR!)
			}),
			q(93077, {	-- Decor Treasure Hunt
				["coord"] = { 58.0, 48.9, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(244532) },	-- Rugged Stool (DECOR!)
			}),
			q(93078, {	-- Decor Treasure Hunt
				["coord"] = { 63.6, 44.8, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(244533) },	-- Iron Chain Chandelier (DECOR!)
			}),
			q(93079, {	-- Decor Treasure Hunt
				["coord"] = { 62.3, 48.9, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(244534) },	-- Iron-Reinforced Door (DECOR!)
			}),
			q(93080, {	-- Decor Treasure Hunt
				["coord"] = { 62.6, 51.7, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(245266) },	-- Iron-Studded Wooden Window (DECOR!)
			}),
			q(93081, {	-- Decor Treasure Hunt
				["coord"] = { 70.3, 49.8, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(245532) },	-- Orgrimmar Chair (DECOR!)
			}),
			q(93082, {	-- Decor Treasure Hunt
				["coord"] = { 68.9, 52.5, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(245533) },	-- Rugged Brazier (DECOR!)
			}),
			q(93083, {	-- Decor Treasure Hunt
				["coord"] = { 72.1, 41.7, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(245545) },	-- Orgrimmar Nightstand (DECOR!)
			}),
			q(93084, {	-- Decor Treasure Hunt
				["coord"] = { 60.7, 64.6, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(245546) },	-- Durable Wooden Chest (DECOR!)
			}),
			q(93085, {	-- Decor Treasure Hunt
				["coord"] = { 38.7, 80.3, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246259) },	-- Orgrimmar Beam Platform (DECOR!)
			}),
			q(93087, {	-- Decor Treasure Hunt
				["coord"] = { 55.6, 52.4, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246260) },	-- Orgrimmar Round Platform (DECOR!)
			}),
			q(93088, {	-- Decor Treasure Hunt
				["coord"] = { 63.7, 56.2, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246261) },	-- Orgrimmar Large Platform (DECOR!)
			}),
			q(93091, {	-- Decor Treasure Hunt
				["coord"] = { 64.7, 58.1, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246036) },	-- High-Backed Orgrimmar Chair (DECOR!)
			}),
			q(93097, {	-- Decor Treasure Hunt
				["coord"] = { 57.8, 63.5, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246217) },	-- Short Orgrimmar Bench (DECOR!)
			}),
			q(93098, {	-- Decor Treasure Hunt
				["coord"] = { 68.3, 68.9, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246218) },	-- Iron-Reinforced Crate (DECOR!)
			}),
			q(93099, {	-- Decor Treasure Hunt
				["coord"] = { 68.2, 75.7, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246224) },	-- Large Orgrimmar Bookcase (DECOR!)
			}),
			q(93100, {	-- Decor Treasure Hunt
				["coord"] = { 64.8, 73.0, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246587) },	-- Short Orgrimmar Bookcase (DECOR!)
			}),
			q(93101, {	-- Decor Treasure Hunt
				["coord"] = { 61.9, 78.7, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246687) },	-- Tusked Candleholder (DECOR!)
			}),
			q(93102, {	-- Decor Treasure Hunt
				["coord"] = { 62.0, 88.7, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(250920) },	-- Horned Hanging Sconce (DECOR!)
			}),
			q(93103, {	-- Decor Treasure Hunt
				["coord"] = { 57.9, 86.3, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246241) },	-- Spiky Banded Barrel (DECOR!)
			}),
			q(93104, {	-- Decor Treasure Hunt
				["coord"] = { 58.0, 80.0, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246880) },	-- Horned Banded Barrel (DECOR!)
			}),
			q(93105, {	-- Decor Treasure Hunt
				["coord"] = { 53.8, 82.0, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246883) },	-- Crude Banded Crate (DECOR!)
			}),
			q(93106, {	-- Decor Treasure Hunt
				["coord"] = { 52.2, 81.8, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(247221) },	-- Small Orgrimmar Chair (DECOR!)
			}),
			q(93107, {	-- Decor Treasure Hunt
				["coord"] = { 53.4, 84.6, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(248246) },	-- Razorwind Storage Table (DECOR!)
			}),
			q(93108, {	-- Decor Treasure Hunt
				["coord"] = { 50.4, 83.0, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(251973) },	-- Hide-Covered Wall Shelf (DECOR!)
			}),
			q(93109, {	-- Decor Treasure Hunt
				["coord"] = { 47.8, 88.4, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(245680) },	-- Orgrimmar Bureaucrat's Desk (DECOR!)
			}),
			q(93110, {	-- Decor Treasure Hunt
				["coord"] = { 44.2, 86.7, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(245398) },	-- Tusked Fireplace (DECOR!)
			}),
			q(93111, {	-- Decor Treasure Hunt
				["description"] = "Inside the cave.",
				["coords"] = {
					{ 53.7, 57.4, RAZORWIND_SHORES },	-- qg
					{ 40.0, 73.0, RAZORWIND_SHORES },	-- Cave entrance
					{ 39.5, 70.2, RAZORWIND_SHORES },	-- Treasure
				},
				["groups"] = { i(245555) },	-- Orgrimmar Tusked Bed (DECOR!)
			}),
			q(93115, {	-- Decor Treasure Hunt
				["coord"] = { 42.2, 66.3, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246614) },	-- Razorwind Bar Table (DECOR!)
			}),
			q(93131, {	-- Decor Treasure Hunt
				["coord"] = { 44.7, 66.4, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246868) },	-- Wide Hide-Covered Bench (DECOR!)
			}),
			q(93132, {	-- Decor Treasure Hunt
				["description"] = "Under the water.",
				["coord"] = { 42.6, 50.4, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246869) },	-- Razorwind Wall Mirror (DECOR!)
			}),
			q(93133, {	-- Decor Treasure Hunt
				["coord"] = { 51.8, 80.0, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246882) },	-- Long Orgrimmar Bench (DECOR!)
			}),
			q(93134, {	-- Decor Treasure Hunt
				["coord"] = { 45.2, 56.3, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(248760) },	-- Lovely Elven Shelf (DECOR!)
			}),
			q(93135, {	-- Decor Treasure Hunt
				["coord"] = { 45.6, 56.9, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(245581) },	-- Silvermoon Round Interior Pillar (DECOR!)
			}),
			q(93136, {	-- Decor Treasure Hunt
				["coord"] = { 47.2, 59.7, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(245583) },	-- Silvermoon Interior Wall (DECOR!)
			}),
			q(93137, {	-- Decor Treasure Hunt
				["coord"] = { 51.8, 72.7, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(245649) },	-- Silvermoon Interior Doorway (DECOR!)
			}),
			q(93138, {	-- Decor Treasure Hunt
				["coord"] = { 59.0, 73.7, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246250) },	-- Silvermoon Large Platform (DECOR!)
			}),
			q(93139, {	-- Decor Treasure Hunt
				["coord"] = { 64.5, 69.2, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246253) },	-- Silvermoon Round Platform (DECOR!)
			}),
			q(93140, {	-- Decor Treasure Hunt
				["coord"] = { 57.1, 58.3, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(246249) },	-- Silvermoon Beam Platform (DECOR!)
			}),
			q(93141, {	-- Decor Treasure Hunt
				["coord"] = { 50.4, 76.8, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(251981) },	-- Elegant Elven Chandelier (DECOR!)
			}),
			q(93142, {	-- Decor Treasure Hunt
				["coord"] = { 51.0, 61.6, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(257691) },	-- Open Elegant Elven Barrel (DECOR!)
			}),
			q(93143, {	-- Decor Treasure Hunt
				["coord"] = { 49.5, 60.0, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(241617) },	-- Elegant Padded Chair (DECOR!)
			}),
			q(93147, {	-- Decor Treasure Hunt
				["coord"] = { 51.0, 89.6, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(253493) },	-- Carved Elven Bookcase (DECOR!)
			}),
			q(93148, {	-- Decor Treasure Hunt
				["coord"] = { 43.3, 69.5, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(244169) },	-- Elegant Almond Table (DECOR!)
			}),
			q(93149, {	-- Decor Treasure Hunt
				["coord"] = { 39.2, 74.0, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(243495) },	-- Elegant Padded Divan (DECOR!)
			}),
			q(93150, {	-- Decor Treasure Hunt
				["description"] = "Inside the cave.",
				["coords"] = {
					{ 53.7, 57.4, RAZORWIND_SHORES },	-- qg
					{ 39.7, 57.8, RAZORWIND_SHORES },	-- Cave entrance
					{ 39.3, 57.6, RAZORWIND_SHORES },	-- Treasure
				},
				["groups"] = { i(241620) },	-- Elegant Wooden Dresser (DECOR!)
			}),
			q(93151, {	-- Decor Treasure Hunt
				["coord"] = { 40.0, 78.5, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(257692) },	-- Elegant Curved Table (DECOR!)
			}),
			q(93152, {	-- Decor Treasure Hunt
				["coord"] = { 58.7, 69.5, RAZORWIND_SHORES },	-- Treasure
				["groups"] = { i(241621) },	-- Small Elegant End Table (DECOR!)
			}),
		}));
		-- TODO: De-duplicate somehow. It seems that each vendor has a counterpart in the opposing zone, but nothing is really faction-based
		-- TODO: Instead of duplicate rewards on vendors + source quest, maybe we can link them via crs and rely on Filler? need to test...
		n(VENDORS, {
			n(255325, {	-- "High Tides" Ren <Decor Vendor>
				["coord"] = { 39.8, 72.8, RAZORWIND_SHORES },
				["groups"] = {
					i(244778),	-- Sethraliss Priest's Pillow (DECOR!)
				},
			}),
			n(255326, {	-- "Len" Splinthoof <Decor Vendor>
				["description"] = "Inside the cave or outside fishing.",
				["coords"] = {
					{ 39.8, 70.2, RAZORWIND_SHORES },
					{ 39.9, 73.3, RAZORWIND_SHORES }
				},
			}),
			n(255319, {	-- "Yen" Malone <Decor Vendor>
				["coord"] = { 40.1, 73.2, RAZORWIND_SHORES },
			}),
			n(255301, {	-- Botanist Boh'an <Decor Vendor>
				["coord"] = { 53.6, 58.0, RAZORWIND_SHORES },
			}),
			n(255278, {	-- Gronthul <Decor Vendor>
				["coord"] = { 54.1, 59.1, RAZORWIND_SHORES },
			}),
			n(255298, {	-- Jehzar Starfall <Decor Vendor>
				["coord"] = { 53.5, 58.5, RAZORWIND_SHORES },
			}),
			n(255299, {	-- Lefton Farrer <Decor Vendor>
				["coord"] = { 53.5, 58.5, RAZORWIND_SHORES },
			}),
			n(240465, {	-- Lonomia <Cursed Goods>
				["coord"] = { 68.3, 75.5, RAZORWIND_SHORES },
			}),
			n(255297, {	-- Shon'ja <Decor Vendor>
				["coord"] = { 54.1, 59.0, RAZORWIND_SHORES },
			}),
			n(255520, {	-- Xiz'ro <Lumberjack>
				["coord"] = { 54.2, 58.0, RAZORWIND_SHORES },
			}),
		}),
	},
}));
