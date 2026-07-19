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
			i(259469, {["timeline"] = { ADDED_12_0_7 }}),	-- Adorned Hanging Razorwind Ropes (DECOR!)
			i(244662),	-- Closed Leather Curtains (DECOR!)
			i(246223),	-- Cozy Hide-Covered Bench (DECOR!)
			i(246607),	-- Durable Hex Table (DECOR!)
			i(250094),	-- Empty Orgrimmar Bathtub (DECOR!)
			i(251639),	-- Hide-Covered Bench (DECOR!)
			i(251973),	-- Hide-Covered Wall Shelf (DECOR!)
			i(246036),	-- High-Backed Orgrimmar Chair (DECOR!)
			i(265924, {["timeline"] = { ADDED_12_0_7 }}),	-- High-Mounted Razorwind Bowl Chandelier (DECOR!)
			i(250920),	-- Horned Hanging Sconce (DECOR!)
			i(267088, {["timeline"] = { ADDED_12_0_7 }}),	-- Iron Candlelight Lantern (DECOR!)
			i(244533),	-- Iron Chain Chandelier (DECOR!)
			i(244534),	-- Iron-Reinforced Door (DECOR!)
			i(246037),	-- Iron-Reinforced Wooden Rack (DECOR!)
			i(257389),	-- Iron-Reinforced Wooden Window (DECOR!)
			i(245266),	-- Iron-Studded Wooden Window (DECOR!)
			i(259466, {["timeline"] = { ADDED_12_0_7 }}),	-- Knotted Hanging Razorwind Ropes (DECOR!)
			i(246224),	-- Large Orgrimmar Bookcase (DECOR!)
			i(244663),	-- Leather Valance (DECOR!)
			i(259470, {["timeline"] = { ADDED_12_0_7 }}),	-- Lightly Adorned Hanging Razorwind Ropes (DECOR!)
			i(246613),	-- Long Durable Table (DECOR!)
			i(246608),	-- Long Leather-Clad Table (DECOR!)
			i(265926, {["timeline"] = { ADDED_12_0_7 }}),	-- Low-Hanging Razorwind Bowl Chandelier (DECOR!)
			i(255707, {["timeline"] = { ADDED_12_0_7 }}),	-- Low-Hanging Razorwind Iron Chandelier (DECOR!)
			i(259465, {["timeline"] = { ADDED_12_0_7 }}),	-- Low-Hanging Razorwind Ropes (DECOR!)
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
			i(259468, {["timeline"] = { ADDED_12_0_7 }}),	-- Plain Hanging Razorwind Ropes (DECOR!)
			i(245394),	-- Plain Interior Doorway (DECOR!)
			i(245395),	-- Plain Interior Narrow Wall (DECOR!)
			i(245393),	-- Plain Interior Wall (DECOR!)
			i(250692, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Banner Pelt (DECOR!)
			i(246614),	-- Razorwind Bar Table (DECOR!)
			i(265925, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Bowl Chandelier (DECOR!)
			i(254398, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Crafter's Chisel (DECOR!)
			i(255706, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Iron Chandelier (DECOR!)
			i(254678, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Logger's Axe (DECOR!)
			i(254396, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Miner's Pickaxe (DECOR!)
			i(254399, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Peon's Shovel (DECOR!)
			i(256050),	-- Razorwind Shores Front Door (DECOR!)
			i(254395, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Smith's Hammer (DECOR!)
			i(246610),	-- Razorwind Standing Mirror (DECOR!)
			i(256329, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Standing Tusk (DECOR!)
			i(248246),	-- Razorwind Storage Table (DECOR!)
			i(246869),	-- Razorwind Wall Mirror (DECOR!)
			i(254397, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Woodworker's Hand Saw (DECOR!)
			i(259464, {["timeline"] = { ADDED_12_0_7 }}),	-- Rolled Razorwind Leathers (DECOR!)
			i(245264),	-- Round Stitched Cushion (DECOR!)
			i(246587),	-- Short Orgrimmar Bookcase (DECOR!)
			i(246225),	-- Small Leather Rug (DECOR!)
			i(247221),	-- Small Orgrimmar Chair (DECOR!)
			i(254316),	-- Small Orgrimmar Tusked Bed (DECOR!)
			i(250913),	-- Small Razorwind Bar Table (DECOR!)
			i(254560),	-- Small Razorwind Square Table (DECOR!)
			i(258665, {["timeline"] = { ADDED_12_0_7 }}),	-- Small Stitched Rug (DECOR!)
			i(246038),	-- Stitched Leather Rug (DECOR!)
			i(245265),	-- Stitched Pillow Roll (DECOR!)
			i(244661),	-- Tied-Left Leather Curtains (DECOR!)
			i(252657),	-- Tied-Right Leather Curtains (DECOR!)
			i(258664, {["timeline"] = { ADDED_12_0_7 }}),	-- Tusk-Adorned Stitched Rug (DECOR!)
			i(246687),	-- Tusked Candleholder (DECOR!)
			i(251974),	-- Tusked Chandelier (DECOR!)
			i(245398),	-- Tusked Fireplace (DECOR!)
			i(259467, {["timeline"] = { ADDED_12_0_7 }}),	-- Tusked Hanging Razorwind Ropes (DECOR!)
			i(246879),	-- Tusked Hanging Sconce (DECOR!)
			i(251975),	-- Tusked Sconce (DECOR!)
			i(250691, {["timeline"] = { ADDED_12_0_7 }}),	-- Tusked Leather Tapestry (DECOR!)
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
			i(260486, {["timeline"] = { ADDED_12_0_7 }}),	-- Large Razorwind Farmer's Hay Pile (DECOR!)
			i(254893),	-- Large Razorwind Gazebo (DECOR!)
			i(246220),	-- Leather-Banded Wooden Bench (DECOR!)
			i(246612),	-- Logger's Picnic Table (DECOR!)
			i(246882),	-- Long Orgrimmar Bench (DECOR!)
			i(267616, {["timeline"] = { ADDED_12_0_7 }}),	-- Loose Wisps of Hay (DECOR!)
			i(246884),	-- Open Crude Banded Crate (DECOR!)
			i(246881),	-- Open Horned Banded Barrel (DECOR!)
			i(246616),	-- Open Iron-Reinforced Crate (DECOR!)
			i(246615),	-- Open Spiky Banded Barrel (DECOR!)
			i(251012, {["timeline"] = { ADDED_12_0_7 }}),	-- Painted Wood Scrap Pile (DECOR!)
			i(251011, {["timeline"] = { ADDED_12_0_7 }}),	-- Painted Wood Scraps (DECOR!)
			i(253019, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Banded Planter (DECOR!)
			i(245533),	-- Razorwind Brazier (DECOR!)
			i(267083, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Campfire Grill (DECOR!)
			i(263584, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Construction Crane (DECOR!)
			i(251545),	-- Razorwind Cooking Grill (DECOR!)
			i(257099),	-- Razorwind Covered Well (DECOR!)
			i(260487, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Farmer's Hay Pile (DECOR!)
			i(258307, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Fisher's Rack (DECOR!)
			i(263032, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Fishing Net (DECOR!)
			i(246611),	-- Razorwind Fountain (DECOR!)
			i(256357),	-- Razorwind Porch Chair (DECOR!)
			i(258663, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind River Paddle (DECOR!)
			i(263581, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Roofer's Shingle (DECOR!)
			i(263582, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Roofer's Shingle Pile (DECOR!)
			i(255709, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Shores Canoe (DECOR!)
			i(252008, {["timeline"] = { ADDED_12_0_7 }}),	-- Razorwind Wheelbarrow (DECOR!)
			i(244532),	-- Rugged Stool (DECOR!)
			i(268026, {["timeline"] = { ADDED_12_0_7 }}),	-- Scattered Wisps of Hay (DECOR!)
			i(246217),	-- Short Orgrimmar Bench (DECOR!)
			i(255708),	-- Small Jagged Orgrimmar Trellis (DECOR!)
			i(260488, {["timeline"] = { ADDED_12_0_7 }}),	-- Small Razorwind Farmer's Hay Pile (DECOR!)
			i(258300, {["timeline"] = { ADDED_12_0_7 }}),	-- Sparse Razorwind Fisher's Rack (DECOR!)
			i(246241),	-- Spiky Banded Barrel (DECOR!)
			i(263583, {["timeline"] = { ADDED_12_0_7 }}),	-- Tiny Clump of Hay (DECOR!)
			i(268028, {["timeline"] = { ADDED_12_0_7 }}),	-- Trampled Wisps of Hay (DECOR!)
			i(244535),	-- Tusked Gazebo (DECOR!)
			i(251637),	-- Tusked Weapon Stand (DECOR!)
			i(263031, {["timeline"] = { ADDED_12_0_7 }}),	-- Twisted Rope Coil (DECOR!)
			i(246868),	-- Wide Hide-Covered Bench (DECOR!)
			i(249550),	-- Wind Rider Roost (DECOR!)
			i(268027, {["timeline"] = { ADDED_12_0_7 }}),	-- Windblown Wisps of Hay (DECOR!)
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
			i(266238, {["timeline"] = { ADDED_12_0_0 }}),	-- Cragthorn Highlands Large Garden Cluster (DECOR!)
			i(260702),	-- Dry Razorwind Grass Patch (DECOR!)
			i(248338),	-- Flat Boulder (DECOR!)
			i(248633),	-- Flowering Durotar Cactus (DECOR!)
			i(248632),	-- Hardy Razorwind Grass Patch (DECOR!)
			i(248339),	-- Hilltop Boulder (DECOR!)
			i(248629),	-- Nagrand Blueberry Bush (DECOR!)
			i(248638),	-- Pink Razorwind Paintbrush (DECOR!)
			i(248634),	-- Razorwind Acacia Tree (DECOR!)
			i(266236, {["timeline"] = { ADDED_12_0_0 }}),	-- Razorwind Blooms Large Garden Cluster (DECOR!)
			i(266235, {["timeline"] = { ADDED_12_0_0 }}),	-- Razorwind Cactus Large Garden Cluster (DECOR!)
			i(248626),	-- Razorwind Fighting Cactus (DECOR!)
			i(248650),	-- Razorwind Flamebrush (DECOR!)
			i(248636),	-- Razorwind Gobtree (DECOR!)
			i(248628),	-- Razorwind Palm Tree (DECOR!)
			i(248625),	-- Razorwind Succulent Palm (DECOR!)
			i(248627),	-- Razorwind Tumbleweed (DECOR!)
			i(260701),	-- Red Razorwind Paintbrush (DECOR!)
			i(248337),	-- Round-Top Boulder (DECOR!)
			i(266237, {["timeline"] = { ADDED_12_0_0 }}),	-- Runetotem's Bounty Large Garden Cluster (DECOR!)
			i(266234, {["timeline"] = { ADDED_12_0_0 }}),	-- Saltfang Shoals Large Garden Cluster (DECOR!)
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
			i(241623, {["timeline"] = { ADDED_12_0_0 }}),	-- Elegant Elven Barrel (DECOR!)
			i(267202, {["timeline"] = { ADDED_12_0_7 }}),	-- Elegant Elven Water Well (DECOR!)
			i(244782),	-- Elven Floral Window (DECOR!)
			i(248658),	-- Elven Wood Crate (DECOR!)
			i(247502),	-- Elven Woodvine Trellis (DECOR!)
			i(253495),	-- Grand Elven Bench (DECOR!)
			i(257691),	-- Open Elegant Elven Barrel (DECOR!)
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
			i(264352, {["timeline"] = { ADDED_12_0_7 }}),	-- Elegant Elven Bathtub (DECOR!)
			i(265654, {["timeline"] = { ADDED_12_0_7 }}),	-- Elegant Elven Washbasin (DECOR!)
			i(253180),	-- Elegant Elven Canopy Bed (DECOR!)
			i(251981),	-- Elegant Elven Chandelier (DECOR!)
			i(253490),	-- Elegant Elven Desk (DECOR!)
			i(241617),	-- Elegant Padded Chair (DECOR!)
			i(257690),	-- Elegant Padded Chaise (DECOR!)
			i(243495),	-- Elegant Padded Divan (DECOR!)
			i(241618),	-- Elegant Padded Footstool (DECOR!)
			i(246711),	-- Elegant Pillow Roll (DECOR!)
			i(246961),	-- Elegant Seat Cushion (DECOR!)
			i(265653, {["timeline"] = { ADDED_12_0_7 }}),	-- Elegant Storage Table (DECOR!)
			i(255650),	-- Elegant Table Lamp (DECOR!)
			i(246431),	-- Elegant Tied Curtain (DECOR!)
			i(244781),	-- Elegant Wall Drape (DECOR!)
			i(241620),	-- Elegant Wooden Dresser (DECOR!)
			i(249558),	-- Elven Standing Mirror (DECOR!)
			i(264353, {["timeline"] = { ADDED_12_0_7 }}),	-- Empty Elegant Elven Bathtub (DECOR!)
			i(253181),	-- Gemmed Elven Chest (DECOR!)
			i(251982, {["timeline"] = { ADDED_12_0_0 }}),	-- Gilded Silvermoon Candelabra (DECOR!)
			i(253441),	-- Grand Elven Bookcase (DECOR!)
			i(246691),	-- Grand Elven Wall Curtain (DECOR!)
			i(264169),	-- Homestone Doormat (DECOR!)
			i(248760),	-- Lovely Elven Shelf (DECOR!)
			i(267075, {["timeline"] = { ADDED_12_0_7 }}),	-- Ornate Elven Stove (DECOR!)
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
			i(245300, {["timeline"] = { ADDED_12_0_7 }}),	-- Arched Violet Bellflowers (DECOR!)
			i(248648),	-- Autumn Leaf Pile (DECOR!)
			i(266241, {["timeline"] = { ADDED_12_0_0 }}),	-- Brumewood Hollow Large Garden Cluster (DECOR!)
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
			i(266240, {["timeline"] = { ADDED_12_0_0 }}),	-- Founder's Point Large Garden Cluster (DECOR!)
			i(245369),	-- Gift of Gilneas (DECOR!)
			i(266242, {["timeline"] = { ADDED_12_0_0 }}),	-- Gilded Oaks Large Garden Cluster (DECOR!)
			i(248639),	-- Gloomrose (DECOR!)
			i(266239, {["timeline"] = { ADDED_12_0_0 }}),	-- Outer Banks Large Garden Cluster (DECOR!)
			i(248645),	-- Pink Gilnean Rose (DECOR!)
			i(245299, {["timeline"] = { ADDED_12_0_7 }}),	-- Reaching Violet Bellflowers (DECOR!)
			i(248646),	-- Silvermoon Sunrise Bush (DECOR!)
			i(245328),	-- Small Boxwood Bush (DECOR!)
			i(245329),	-- Small Poppy Cluster (DECOR!)
			i(248644),	-- Spiritbloom Flower (DECOR!)
			i(266243, {["timeline"] = { ADDED_12_0_0 }}),	-- Stoneveil Ridge Large Garden Cluster (DECOR!)
			i(245298, {["timeline"] = { ADDED_12_0_7 }}),	-- Wild Violet Bellflowers (DECOR!)
			i(248649),	-- Young Chestnut Tree (DECOR!)
		},
	}),
	n_CommonVendorItems({
		["crs"] = {
			255203,	-- Xiao Dan <Decor Vendor> [Founder's Point]
			255325,	-- "High Tides" Ren <Decor Vendor> [Razorwind Shores]
		},
		["groups"] = {
			i(245383),	-- "Sunrise Canyon" Painting (DECOR!)
			i(262962, {["timeline"] = { ADDED_12_0_7 }}),	-- Carved Wooden Chair (DECOR!)
			i(246502),	-- Charming Couch (DECOR!)
			i(245267),	-- Charming Seat Cushion (DECOR!)
			i(245268),	-- Checkered Charming Seat Cushion (DECOR!)
			i(235633),	-- Circular Woolen Rug (DECOR!)
			i(244665),	-- Closed Folk Curtains (DECOR!)
			i(252037, {["timeline"] = { ADDED_12_0_7 }}),	-- Covered Wooden Desk (DECOR!)
			i(244666),	-- Durable Folk Valance (DECOR!)
			i(245335),	-- Empty Wicker Basket (DECOR!)
			i(258670),	-- Empty Wooden Bathtub (DECOR!)
			i(252659),	-- Founder's Point Front Door (DECOR!)
			i(245356),	-- Goldshire Window (DECOR!)
			i(266249, {["timeline"] = { ADDED_12_0_7 }}),	-- Hanging Tavern Lantern (DECOR!)
			i(245548),	-- Iron-Reinforced Cupboard (DECOR!)
			i(245556),	-- Iron-Reinforced Standing Mirror (DECOR!)
			i(266250, {["timeline"] = { ADDED_12_0_7 }}),	-- Long Hanging Tavern Lantern (DECOR!)
			i(268029, {["timeline"] = { ADDED_12_0_7 }}),	-- Mounted Founder's Point Lantern (DECOR!)
			i(268030, {["timeline"] = { ADDED_12_0_7 }}),	-- Mounted Tavern Lantern (DECOR!)
			i(245353),	-- Open Wooden Coffin (DECOR!)
			i(245394),	-- Plain Interior Doorway (DECOR!)
			i(245395),	-- Plain Interior Narrow Wall (DECOR!)
			i(245393),	-- Plain Interior Wall (DECOR!)
			i(252417),	-- Plush Cushioned Chair (DECOR!)
			i(258570, {["timeline"] = { ADDED_12_0_7 }}),	-- Refined Wooden Bed (DECOR!)
			i(245370),	-- Secretive Bookcase Wall (DECOR!)
			i(266233, {["timeline"] = { ADDED_12_0_7 }}),	-- Short Hanging Tavern Lantern (DECOR!)
			i(253589),	-- Short Wooden Cabinet (DECOR!)
			i(246934, {["timeline"] = { ADDED_12_0_7 }}),	-- Small Covered Wooden Table (DECOR!)
			i(245358),	-- Small Fruit Platter (DECOR!)
			i(246935, {["timeline"] = { ADDED_12_0_7 }}),	-- Small Sturdy Wooden Table (DECOR!)
			i(250092, {["timeline"] = { ADDED_12_0_7 }}),	-- Small Wooden Footstool (DECOR!)
			i(246103),	-- Small Wooden Nightstand (DECOR!)
			i(246101),	-- Small Wooden Stool (DECOR!)
			i(272359, {["timeline"] = { ADDED_12_0_7 }}),	-- Square Woolen Rug (DECOR!)
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
			i(252038, {["timeline"] = { ADDED_12_0_7 }}),	-- Sturdy Wooden Desk (DECOR!)
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
			i(246803, {["timeline"] = { ADDED_12_0_7 }}),	-- Arched Wooden Bench (DECOR!)
			i(252414, {["timeline"] = { ADDED_12_0_7 }}),	-- Broken Founder's Point Fence (DECOR!)
			i(246872, {["timeline"] = { ADDED_12_0_7 }}),	-- Carved Stone Bench (DECOR!)
			i(245662),	-- Carved Wooden Bar Table (DECOR!)
			i(246104),	-- Carved Wooden Crate (DECOR!)
			i(253590),	-- Coal-Fired Stovetop (DECOR!)
			i(245372),	-- Covered Wooden Table (DECOR!)
			i(258566, {["timeline"] = { ADDED_12_0_7 }}),	-- Empty Reinforced Wooden Barrel (DECOR!)
			i(245365),	-- Empty Stormwind Market Stand (DECOR!)
			i(246870, {["timeline"] = { ADDED_12_0_7 }}),	-- Farmer's Water Trough (DECOR!)
			i(252006, {["timeline"] = { ADDED_12_0_7 }}),	-- Founder's Point Fence (DECOR!)
			i(252410, {["timeline"] = { ADDED_12_0_7 }}),	-- Founder's Point Fencepost (DECOR!)
			i(252407, {["timeline"] = { ADDED_12_0_7 }}),	-- Founder's Point Framed Torch (DECOR!)
			i(250249, {["timeline"] = { ADDED_12_0_7 }}),	-- Founder's Point Gravestone (DECOR!)
			i(267084, {["timeline"] = { ADDED_12_0_7 }}),	-- Founder's Point Hay Bale (DECOR!)
			i(246876, {["timeline"] = { ADDED_12_0_7 }}),	-- Founder's Point Lamppost (DECOR!)
			i(249823, {["timeline"] = { ADDED_12_0_7 }}),	-- Founder's Point Navigation Sign (DECOR!)
			i(248400, {["timeline"] = { ADDED_12_0_7 }}),	-- Founder's Point Signpost (DECOR!)
			i(253018, {["timeline"] = { ADDED_12_0_7 }}),	-- Founder's Point Standing Torch (DECOR!)
			i(246875, {["timeline"] = { ADDED_12_0_7 }}),	-- Founder's Point Street Light (DECOR!)
			i(249822, {["timeline"] = { ADDED_12_0_7 }}),	-- Founder's Point Street Sign (DECOR!)
			i(245357),	-- Gryphon Roost (DECOR!)
			i(246871, {["timeline"] = { ADDED_12_0_7 }}),	-- Hay-Filled Sturdy Feeding Trough (DECOR!)
			i(246102),	-- Large Covered Wooden Table (DECOR!)
			i(250252, {["timeline"] = { ADDED_12_0_7 }}),	-- Large Founder's Point Gravestone (DECOR!)
			i(245359),	-- Large Stonework Fountain (DECOR!)
			i(246107),	-- Large Sturdy Wooden Table (DECOR!)
			i(252007, {["timeline"] = { ADDED_12_0_7 }}),	-- Long Founder's Point Fence (DECOR!)
			i(252408, {["timeline"] = { ADDED_12_0_7 }}),	-- Long Old Founder's Point Fence (DECOR!)
			i(252416, {["timeline"] = { ADDED_12_0_7 }}),	-- Old Broken Founder's Point Fence (DECOR!)
			i(252409, {["timeline"] = { ADDED_12_0_7 }}),	-- Old Founder's Point Fence (DECOR!)
			i(252412, {["timeline"] = { ADDED_12_0_7 }}),	-- Old Founder's Point Fencepost (DECOR!)
			i(245377),	-- Open-Air Sturdy Tent (DECOR!)
			i(246109),	-- Open Carved Wooden Crate (DECOR!)
			i(253707, {["timeline"] = { ADDED_12_0_7 }}),	-- Open Sturdy Wooden Crate (DECOR!)
			i(258818, {["timeline"] = { ADDED_12_0_7 }}),	-- Padded Wooden Bench (DECOR!)
			i(258565, {["timeline"] = { ADDED_12_0_7 }}),	-- Reinforced Wooden Barrel (DECOR!)
			i(243334),	-- Reinforced Wooden Chest (DECOR!)
			i(244667),	-- Restful Wooden Bench (DECOR!)
			i(250095, {["timeline"] = { ADDED_12_0_7 }}),	-- Runed Stone Placard (DECOR!)
			i(250250, {["timeline"] = { ADDED_12_0_7 }}),	-- Small Founder's Point Gravestone (DECOR!)
			i(245360),	-- Small Stonework Fountain (DECOR!)
			i(245657),	-- Stonework Fountain (DECOR!)
			i(245366),	-- Stormwind Bean Seller's Stand (DECOR!)
			i(245367),	-- Stormwind Produce Seller's Stand (DECOR!)
			i(245368),	-- Stormwind Spice Merchant's Stand (DECOR!)
			i(246874, {["timeline"] = { ADDED_12_0_7 }}),	-- Sturdy Brazier (DECOR!)
			i(245382),	-- Sturdy Covered Wagon (DECOR!)
			i(246877, {["timeline"] = { ADDED_12_0_7 }}),	-- Sturdy Feeding Trough (DECOR!)
			i(245380),	-- Sturdy Open Wagon (DECOR!)
			i(245379),	-- Sturdy Roofed Wagon (DECOR!)
			i(245378),	-- Sturdy Sheltering Tent (DECOR!)
			i(246105),	-- Sturdy Weapon Rack (DECOR!)
			i(263025),	-- Sturdy Wine Press (DECOR!)
			i(242951),	-- Sturdy Wooden Bench (DECOR!)
			i(235523),	-- Sturdy Wooden Chair (DECOR!)
			i(258819, {["timeline"] = { ADDED_12_0_7 }}),	-- Sturdy Wooden Crate (DECOR!)
			i(245374),	-- Sturdy Wooden Table (DECOR!)
			i(246588),	-- Sturdy Wooden Trellis (DECOR!)
			i(245386),	-- Sturdy Wooden Wheelbarrow (DECOR!)
			i(250251, {["timeline"] = { ADDED_12_0_7 }}),	-- Tall Founder's Point Gravestone (DECOR!)
			i(246742),	-- Tall Sturdy Wooden Chair (DECOR!)
			i(246219),	-- Weather-Treated Wooden Table (DECOR!)
			i(245385),	-- Well-Built Well (DECOR!)
			i(246106),	-- Wooden Chamberstick (DECOR!)
			i(245656),	-- Wooden Gazebo (DECOR!)
			i(252004, {["timeline"] = { ADDED_12_0_7 }}),	-- Wooden Planter Pot (DECOR!)
			i(252005, {["timeline"] = { ADDED_12_0_7 }}),	-- Wooden Planter Row (DECOR!)
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
	n_CommonVendorItems({
		["timeline"] = { ADDED_12_1_0 },
		["crs"] = {
			257332,	-- Devin Slatesmith <Decor Vendor> [Founder's Point]
			257257,	-- Merki <Decor Vendor> [Razorwind Shores]
		},
		["groups"] = {
			i(280148),	-- Large Triangular Wooden Tile (DECOR!)
			i(280144),	-- Large Wooden Floor Tile (DECOR!)
			i(280160),	-- Large Wooden Wall Tile (DECOR!)
			i(280152),	-- Short Round Wooden Column (DECOR!)
			i(280154),	-- Short Square Wooden Column (DECOR!)
			i(280146),	-- Small Triangular Wooden Tile (DECOR!)
			i(280142),	-- Small Wooden Floor Tile (DECOR!)
			i(280158),	-- Small Wooden Wall Tile (DECOR!)
			i(280164),	-- Spiral Wooden Stairs (DECOR!)
			i(280150),	-- Tall Round Wooden Column (DECOR!)
			i(280156),	-- Tall Square Wooden Column (DECOR!)
			i(280162),	-- Wide Wooden Staircase (DECOR!)
		},
	}),
	n_CommonVendorItems({
		["timeline"] = { ADDED_12_1_0 },
		["crs"] = {
			267795,	-- Perry Winkles <Pet Decor Vendor> [Founder's Point]
			267794,	-- Agratha <Pet Decor Vendor> [Razorwind Shores]
		},
		["groups"] = {
			i(277121),	-- Cozy Bird Nest (DECOR!)
			i(277160),	-- Cozy Lightbloom Lilypad (DECOR!)
			i(277144),	-- Crossroads Pet Cage (DECOR!)
			i(277149),	-- Crude Pet Cage (DECOR!)
			i(277163),	-- Loyal Companion's Plinth (DECOR!)
			i(276246, {	-- Mechanically Indistinguishable Pepe (DECOR!)
				-- There should be a Pepe, sitting atop one of the Bulletin Board pillars. You interact with it and then go to the vendors to buy a Mechanical version.
				["cost"] = { { "c", 3363, 10 } },	-- 10x Community Coupons
			}),
			i(277138),	-- Silvermoon Dragonhawk Incubator (DECOR!)
			i(277142),	-- Westfall Pet Cage (DECOR!)
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
});
-- #endif
