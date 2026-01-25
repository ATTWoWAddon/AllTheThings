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
					i(245383),	-- "Sunrise Canyon" Painting (DECOR!)
					i(246502),	-- Charming Couch (DECOR!)
					i(245267),	-- Charming Seat Cushion (DECOR!)
					i(245268),	-- Checkered Charming Seat Cushion (DECOR!)
					i(235633),	-- Circular Woolen Rug (DECOR!)
					i(244665),	-- Closed Folk Curtains (DECOR!)
					i(244666),	-- Durable Folk Valance (DECOR!)
					i(245335),	-- Empty Wicker Basket (DECOR!)
					i(258670),	-- Empty Wooden Bathtub (DECOR!)
					i(252659),	-- Founder's Point Front Door (DECOR!)
					i(245356),	-- Goldshire Window (DECOR!)
					i(245548),	-- Iron-Reinforced Cupboard (DECOR!)
					i(245556),	-- Iron-Reinforced Standing Mirror (DECOR!)
					i(245353),	-- Open Wooden Coffin (DECOR!)
					i(245394),	-- Plain Interior Doorway (DECOR!)
					i(245395),	-- Plain Interior Narrow Wall (DECOR!)
					i(245393),	-- Plain Interior Wall (DECOR!)
					i(252417),	-- Plush Cushioned Chair (DECOR!)
					i(245370),	-- Secretive Bookcase Wall (DECOR!)
					i(244778),	-- Sethraliss Priest's Pillow (DECOR!)
					i(253589),	-- Short Wooden Cabinet (DECOR!)
					i(245358),	-- Small Fruit Platter (DECOR!)
					i(246103),	-- Small Wooden Nightstand (DECOR!)
					i(246101),	-- Small Wooden Stool (DECOR!)
					i(242255),	-- Stormwind Hall Rug (DECOR!)
					i(236678),	-- Stormwind Interior Doorway (DECOR!)
					i(236676),	-- Stormwind Interior Narrow Wall (DECOR!)
					i(236675),	-- Stormwind Interior Pillar (DECOR!)
					i(236677),	-- Stormwind Interior Wall (DECOR!)
					i(244531),	-- Sturdy Fireplace (DECOR!)
					i(244530),	-- Sturdy Wall Rack (DECOR!)
					i(253593),	-- Sturdy Wooden Bathtub (DECOR!)
					i(245336),	-- Sturdy Wooden Bed (DECOR!)
					i(245375),	-- Sturdy Wooden Bookcase (DECOR!)
					i(245352),	-- Sturdy Wooden Coffin (DECOR!)
					i(245355),	-- Sturdy Wooden Door (DECOR!)
					i(245392),	-- Sturdy Wooden Interior Pillar (DECOR!)
					i(245384),	-- Sturdy Wooden Shelf (DECOR!)
					i(253592),	-- Sturdy Wooden Washbasin (DECOR!)
					i(245376),	-- Tall Sturdy Wooden Bookcase (DECOR!)
					i(235675),	-- Three-Candle Wrought Iron Chandelier (DECOR!)
					i(244664),	-- Tied-Open Folk Curtains (DECOR!)
					i(245334),	-- Wicker Basket (DECOR!)
					i(245547),	-- Wide Charming Couch (DECOR!)
					i(246106),	-- Wooden Chamberstick (DECOR!)
					i(245354),	-- Wooden Coffin Lid (DECOR!)
					i(239075),	-- Wrought Iron Chandelier (DECOR!)
					i(235677),	-- Wrought Iron Floor Lamp (DECOR!)
				},
			}),
			n(255326, {	-- "Len" Splinthoof <Decor Vendor>
				["coord"] = { 39.9, 73.3, RAZORWIND_SHORES },
				["groups"] = {
					i(245662),	-- Carved Wooden Bar Table (DECOR!)
					i(246104),	-- Carved Wooden Crate (DECOR!)
					i(253590),	-- Coal-Fired Stovetop (DECOR!)
					i(245372),	-- Covered Wooden Table (DECOR!)
					i(245365),	-- Empty Stormwind Market Stand (DECOR!)
					i(245357),	-- Gryphon Roost (DECOR!)
					i(246102),	-- Large Covered Wooden Table (DECOR!)
					i(245359),	-- Large Stonework Fountain (DECOR!)
					i(246107),	-- Large Sturdy Wooden Table (DECOR!)
					i(246109),	-- Open Carved Wooden Crate (DECOR!)
					i(245377),	-- Open-Air Sturdy Tent (DECOR!)
					i(243334),	-- Reinforced Wooden Chest (DECOR!)
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
					i(242951),	-- Sturdy Wooden Bench (DECOR!)
					i(235523),	-- Sturdy Wooden Chair (DECOR!)
					i(245374),	-- Sturdy Wooden Table (DECOR!)
					i(246588),	-- Sturdy Wooden Trellis (DECOR!)
					i(245386),	-- Sturdy Wooden Wheelbarrow (DECOR!)
					i(246742),	-- Tall Sturdy Wooden Chair (DECOR!)
					i(246219),	-- Weather-Treated Wooden Table (DECOR!)
					i(245385),	-- Well-Built Well (DECOR!)
					i(246106),	-- Wooden Chamberstick (DECOR!)
					i(245656),	-- Wooden Gazebo (DECOR!)
					i(245551),	-- Worker's Wooden Desk (DECOR!)
				},
			}),
			n(255319, {	-- "Yen" Malone <Decor Vendor>
				["coord"] = { 40.1, 73.2, RAZORWIND_SHORES },
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
				},
			}),
			n(255301, {	-- Botanist Boh'an <Decor Vendor>
				["coord"] = { 53.6, 58.0, RAZORWIND_SHORES },
				["groups"] = {
					i(248631),	-- Azsharan Firespear Tree (DECOR!)
					i(248630),	-- Barrens Hosta Bush (DECOR!)
					i(260702),	-- Dry Razorwind Grass Patch (DECOR!)
					i(248338),	-- Flat Boulder (DECOR!)
					i(248633),	-- Flowering Durotar Cactus (DECOR!)
					i(248632),	-- Hardy Razorwind Grass Patch (DECOR!)
					i(248339),	-- Hilltop Boulder (DECOR!)
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
					i(248337),	-- Round-Top Boulder (DECOR!)
					i(257388),	-- Slate Cobblestone (DECOR!)
					i(257359),	-- Slate Cobblestone Pair (DECOR!)
					i(257390),	-- Slate Cobblestone Path (DECOR!)
					i(257392),	-- Slate Cobblestone Trio (DECOR!)
					i(248637),	-- Sunset Aster Flowers (DECOR!)
				},
			}),
			n(255278, {	-- Gronthul <Decor Vendor>
				["coord"] = { 54.1, 59.1, RAZORWIND_SHORES },
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
			n(255298, {	-- Jehzar Starfall <Decor Vendor>
				["coord"] = { 53.5, 58.5, RAZORWIND_SHORES },
				["groups"] = {
					i(246257),	-- Bel'ameth Angled Platform (DECOR!)
					i(246254),	-- Bel'ameth Beam Platform (DECOR!)
					i(245578),	-- Bel'ameth Interior Doorway (DECOR!)
					i(245579),	-- Bel'ameth Interior Narrow Wall (DECOR!)
					i(245575),	-- Bel'ameth Interior Wall (DECOR!)
					i(246255),	-- Bel'ameth Large Platform (DECOR!)
					i(245576),	-- Bel'ameth Round Interior Pillar (DECOR!)
					i(246258),	-- Bel'ameth Round Platform (DECOR!)
					i(246256),	-- Bel'ameth Small Platform (DECOR!)
					i(253493),	-- Carved Elven Bookcase (DECOR!)
					i(243242),	-- Circular Elven Floor Rug (DECOR!)
					i(247501),	-- Elegant Carved Door (DECOR!)
					i(253180),	-- Elegant Elven Canopy Bed (DECOR!)
					i(251981),	-- Elegant Elven Chandelier (DECOR!)
					i(253490),	-- Elegant Elven Desk (DECOR!)
					i(241617),	-- Elegant Padded Chair (DECOR!)
					i(257690),	-- Elegant Padded Chaise (DECOR!)
					i(243495),	-- Elegant Padded Divan (DECOR!)
					i(241618),	-- Elegant Padded Footstool (DECOR!)
					i(246711),	-- Elegant Pillow Roll (DECOR!)
					i(246961),	-- Elegant Seat Cushion (DECOR!)
					i(255650),	-- Elegant Table Lamp (DECOR!)
					i(246431),	-- Elegant Tied Curtain (DECOR!)
					i(244781),	-- Elegant Wall Drape (DECOR!)
					i(241620),	-- Elegant Wooden Dresser (DECOR!)
					i(249558),	-- Elven Standing Mirror (DECOR!)
					i(253181),	-- Gemmed Elven Chest (DECOR!)
					i(253441),	-- Grand Elven Bookcase (DECOR!)
					i(246691),	-- Grand Elven Wall Curtain (DECOR!)
					i(264169),	-- Homestone Doormat (DECOR!)
					i(248760),	-- Lovely Elven Shelf (DECOR!)
					i(235994),	-- Ornate Stonework Fireplace (DECOR!)
					i(241622),	-- Ornate Weapon Rack (DECOR!)
					i(243243),	-- Rectangular Elven Floor Rug (DECOR!)
					i(246252),	-- Silvermoon Angled Platform (DECOR!)
					i(246249),	-- Silvermoon Beam Platform (DECOR!)
					i(245649),	-- Silvermoon Interior Doorway (DECOR!)
					i(245582),	-- Silvermoon Interior Narrow Wall (DECOR!)
					i(245583),	-- Silvermoon Interior Wall (DECOR!)
					i(246250),	-- Silvermoon Large Platform (DECOR!)
					i(245581),	-- Silvermoon Round Interior Pillar (DECOR!)
					i(246253),	-- Silvermoon Round Platform (DECOR!)
					i(246251),	-- Silvermoon Small Platform (DECOR!)
					i(241621),	-- Small Elegant End Table (DECOR!)
					i(253479),	-- Small Elegant Padded Chair (DECOR!)
				},
			}),
			n(255299, {	-- Lefton Farrer <Decor Vendor>
				["coord"] = { 53.5, 58.5, RAZORWIND_SHORES },
				["groups"] = {
					i(244780),	-- Circular Elven Table (DECOR!)
					i(244169),	-- Elegant Almond Table (DECOR!)
					i(253439),	-- Elegant Carved Bench (DECOR!)
					i(253437),	-- Elegant Covered Bench (DECOR!)
					i(257692),	-- Elegant Curved Table (DECOR!)
					i(244782),	-- Elven Floral Window (DECOR!)
					i(248658),	-- Elven Wood Crate (DECOR!)
					i(247502),	-- Elven Woodvine Trellis (DECOR!)
					i(253495),	-- Grand Elven Bench (DECOR!)
					i(257691),	-- Open Elegant Elven Barrel (DECOR!)
					i(244118),	-- Rectangular Elegant Table (DECOR!)
					i(243088),	-- Standing Ornate Weapon Rack (DECOR!)
				},
			}),
			n(240465, {	-- Lonomia <Cursed Goods>
				["coord"] = { 68.3, 75.5, RAZORWIND_SHORES },
				["groups"] = {
					i(245400),	-- Ceiling Cobweb (DECOR!)
					i(245401),	-- Tented Cobweb (DECOR!)
					i(245402),	-- Small Dangling Cobweb (DECOR!)
					i(245403),	-- Large Dangling Cobweb (DECOR!)
					i(245404),	-- Pillar Cobweb (DECOR!)
				},
			}),
			n(255297, {	-- Shon'ja <Decor Vendor>
				["coord"] = { 54.1, 59.0, RAZORWIND_SHORES },
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
					i(245533),	-- Rugged Brazier (DECOR!)
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
			n(255520, {	-- Xiz'ro <Lumberjack>
				["coord"] = { 54.2, 58.0, RAZORWIND_SHORES },
				["groups"] = {
					i(253580),	-- Harvesting Hatchet
					i(251766, {	-- Shadowmoon Lumber
						["cost"] = { { "i", 242691, 1 } },	-- Olemba Lumber
					}),
				},
			}),
		}),
	},
}));
