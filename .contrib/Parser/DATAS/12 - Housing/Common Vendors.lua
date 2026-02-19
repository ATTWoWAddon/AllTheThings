---------------------------------------------
--      H O U S I N G    M O D U L E       --
---------------------------------------------
-- #if AFTER 11.2.7
-- Contains the Vendors who sell common items only differing by Housing Neighborhood
--[[
	-- Example layout for setting up a new set of CVIs
	-- These can be listed back to back and will merge together in parser

	n_CommonVendorItems({
		["crs"] = {
			NPCID,	-- VendorName [Location]
			NPCID,	-- VendorName [Location]
		},
		["groups"] = {
			i(ITEM),	-- Item Name
		},
	}),

--]]



root(ROOTS.Housing, {
	n(COMMON_VENDOR_ITEMS, {
		["description"] = "It is advised to use the |cffffffffNPC Filler for the Mini List|r to allow these Items to fill properly under NPCs within your current Housing Neighborhood.",
		["timeline"] = { ADDED_11_2_7 },
	}),
	n_CommonVendorItems({
		["crs"] = {
			255222,	-- "High Tides" Ren <Decor Vendor> [Founder's Point]
			255278,	-- Gronthul <Decor Vendor> [Razorwind Shores]
		},
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
	n_CommonVendorItems({
		["crs"] = {
			255228,	-- "Len" Splinthoof <Decor Vendor> [Founder's Point]
			255297,	-- Shon'ja <Decor Vendor> [Razorwind Shores]
		},
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
	n_CommonVendorItems({
		["crs"] = {
			255230,	-- "Yen" Malone <Decor Vendor> [Founder's Point]
			255301,	-- Botanist Boh'an <Decor Vendor> [Razorwind Shores]
		},
		["groups"] = {
			i(248631),	-- Azsharan Firespear Tree (DECOR!)
			i(248630),	-- Barrens Hosta Bush (DECOR!)
			i(266238, {["timeline"] = { ADDED_12_0_0 }, ["decorID"] = 17867 }),	-- Cragthorn Highlands Large Garden Cluster (DECOR!)
			i(260702),	-- Dry Razorwind Grass Patch (DECOR!)
			i(248338),	-- Flat Boulder (DECOR!)
			i(248633),	-- Flowering Durotar Cactus (DECOR!)
			i(248632),	-- Hardy Razorwind Grass Patch (DECOR!)
			i(248339),	-- Hilltop Boulder (DECOR!)
			i(248629),	-- Nagrand Blueberry Bush (DECOR!)
			i(248638),	-- Pink Razorwind Paintbrush (DECOR!)
			i(248634),	-- Razorwind Acacia Tree (DECOR!)
			i(266236, {["timeline"] = { ADDED_12_0_0 }, ["decorID"] = 17865 }),	-- Razorwind Blooms Large Garden Cluster (DECOR!)
			i(266235, {["timeline"] = { ADDED_12_0_0 }, ["decorID"] = 17864 }),	-- Razorwind Cactus Large Garden Cluster (DECOR!)
			i(248626),	-- Razorwind Fighting Cactus (DECOR!)
			i(248650),	-- Razorwind Flamebrush (DECOR!)
			i(248636),	-- Razorwind Gobtree (DECOR!)
			i(248628),	-- Razorwind Palm Tree (DECOR!)
			i(248625),	-- Razorwind Succulent Palm (DECOR!)
			i(248627),	-- Razorwind Tumbleweed (DECOR!)
			i(260701),	-- Red Razorwind Paintbrush (DECOR!)
			i(248337),	-- Round-Top Boulder (DECOR!)
			i(266237, {["timeline"] = { ADDED_12_0_0 }, ["decorID"] = 17866 }),	-- Runetotem's Bounty Large Garden Cluster (DECOR!)
			i(266234, {["timeline"] = { ADDED_12_0_0 }, ["decorID"] = 17863 }),	-- Saltfang Shoals Large Garden Cluster (DECOR!)
			i(257388),	-- Slate Cobblestone (DECOR!)
			i(257359),	-- Slate Cobblestone Pair (DECOR!)
			i(257390),	-- Slate Cobblestone Path (DECOR!)
			i(257392),	-- Slate Cobblestone Trio (DECOR!)
			i(248637),	-- Sunset Aster Flowers (DECOR!)
		},
	}),
	n_CommonVendorItems({
		["crs"] = {
			255218,	-- Argan Hammerfist <Decor Vendor> [Founder's Point]
			255299,	-- Lefton Farrer <Decor Vendor> [Razorwind Shores]
		},
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
	n_CommonVendorItems({
		["crs"] = {
			255216,	-- Balen Starfinder <Decor Vendor> [Founder's Point]
			255298,	-- Jehzar Starfall <Decor Vendor> [Razorwind Shores]
		},
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
			i(251982, {	-- Gilded Silvermoon Candelabra (DECOR!)
				["timeline"] = { ADDED_12_0_0 },
			}),
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
	n_CommonVendorItems({
		["crs"] = {
			256750,	-- Klasa <Preowned Parts> [Founder's Point]
			240465,	-- Lonomia <Cursed Goods> [Razorwind Shores]
		},
		["groups"] = {
			i(245400),	-- Ceiling Cobweb (DECOR!)
			i(245401),	-- Tented Cobweb (DECOR!)
			i(245402),	-- Small Dangling Cobweb (DECOR!)
			i(245403),	-- Large Dangling Cobweb (DECOR!)
			i(245404),	-- Pillar Cobweb (DECOR!)
		},
	}),
	n_CommonVendorItems({
		["crs"] = {
			255519,	-- Lestia Goldenstrike <Lumberjack> [Founder's Point]
			255520,	-- Xiz'ro <Lumberjack> [Razorwind Shores]
		},
		["groups"] = {
			i(253580),	-- Harvesting Hatchet
			-- #if BEFORE 12.0.0
			i(251766, {	-- Shadowmoon Lumber
				["cost"] = { { "i", 242691, 1 } },	-- Olemba Lumber
			}),
			-- #endif
		},
	}),
	n_CommonVendorItems({
		["crs"] = {
			255221,	-- Trevor Grenner <Decor Vendor> [Founder's Point]
			255319,	-- "Yen" Malone <Decor Vendor> [Razorwind Shores]
		},
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
			i(266241, {	-- Brumewood Hollow Large Garden Cluster (DECOR!)
				["timeline"] = { ADDED_12_0_0 },
			}),
			i(266240, {	-- Founder's Point Large Garden Cluster (DECOR!)
				["timeline"] = { ADDED_12_0_0 },
			}),
			i(266242, {	-- Gilded Oaks Large Garden Cluster (DECOR!)
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
	n_CommonVendorItems({
		["crs"] = {
			255203,	-- Xiao Dan <Decor Vendor> [Founder's Point]
			255325,	-- "High Tides" Ren <Decor Vendor> [Razorwind Shores]
		},
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
			i(253589),	-- Short Wooden Cabinet (DECOR!)
			i(245358),	-- Small Fruit Platter (DECOR!)
			i(246103),	-- Small Wooden Nightstand (DECOR!)
			i(246101),	-- Small Wooden Stool (DECOR!)
			i(246248),	-- Stormwind Angled Platform (DECOR!)
			i(246243),	-- Stormwind Beam Platform (DECOR!)
			i(242255),	-- Stormwind Hall Rug (DECOR!)
			i(236678),	-- Stormwind Interior Doorway (DECOR!)
			i(236676),	-- Stormwind Interior Narrow Wall (DECOR!)
			i(236675),	-- Stormwind Interior Pillar (DECOR!)
			i(236677),	-- Stormwind Interior Wall (DECOR!)
			i(246246),	-- Stormwind Large Platform (DECOR!)
			i(246245),	-- Stormwind Round Platform (DECOR!)
			i(246247),	-- Stormwind Small Platform (DECOR!)
			i(244531),	-- Sturdy Fireplace (DECOR!)
			i(244530),	-- Sturdy Wall Rack (DECOR!)
			i(253593),	-- Sturdy Wooden Bathtub (DECOR!)
			i(245336),	-- Sturdy Wooden Bed (DECOR!)
			i(245375),	-- Sturdy Wooden Bookcase (DECOR!)
			i(245352),	-- Sturdy Wooden Coffin (DECOR!)
			i(245355),	-- Sturdy Wooden Interior Door (DECOR!)
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
	n_CommonVendorItems({
		["crs"] = {
			255213,	-- Faarden the Builder <Decor Vendor> [Founder's Point]
			255326,	-- "Len" Splinthoof <Decor Vendor> [Razorwind Shores]
		},
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
			i(245377),	-- Open-Air Sturdy Tent (DECOR!)
			i(246109),	-- Open Carved Wooden Crate (DECOR!)
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
	n_CommonVendorItems({
		["crs"] = {
			255230,	-- "Yen" Malone <Decor Vendor> [Founder's Point]
			255221,	-- Trevor Grenner <Decor Vendor> [Founder's Point]
			255301,	-- Botanist Boh'an <Decor Vendor> [Razorwind Shores]
		},
		["groups"] = {
			i(248338),	-- Flat Boulder (DECOR!)
			i(248339),	-- Hilltop Boulder (DECOR!)
			i(248337),	-- Round-Top Boulder (DECOR!)
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
		},
	}),
	n(VENDORS, {
		n(255654, {	-- Lorisin
			["coord"] = { 41.6, 61.8, FOUNDERS_POINT },
			["timeline"] = { ADDED_11_2_7 },
			["groups"] = {
				i(262562),	-- Bolt of Pressed Linen
				i(262563),	-- Bolt of Elegant Silk
				i(262564),	-- Bolt of Soft Wool
				i(262565),	-- Spool of Thread
			},
		}),
	}),
})
-- #endif