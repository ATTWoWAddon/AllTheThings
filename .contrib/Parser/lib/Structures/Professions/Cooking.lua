-------------
-- COOKING --
-------------
CLASSIC_COOKING = {
	r(2550,	{	-- Cooking (Apprentice)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 5,
		-- #endif
		["rank"] = 1,
	}),
	r(3102,	{	-- Cooking (Journeyman)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 10,
		-- #endif
		["rank"] = 2,
	}),
	r(3538, {	-- Cooking (Expert)
		["timeline"] = { ADDED_3_1_0, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 20,
		-- #endif
		["rank"] = 3,
	}),
	r(9785, {	-- Cooking (Artisan)
		["timeline"] = { ADDED_3_1_0, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 35,
		-- #endif
		["rank"] = 4,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264632, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Classic Cooking
	r(818),		-- Cooking Fire
	r(6499),	-- Boiled Clams
	r(46684, {["timeline"] = {ADDED_4_1_0}}),	-- Charred Bear Kabobs
	r(2538),	-- Charred Wolf Meat
	r(2541),	-- Coyote Steak
	r(2544),	-- Crab Cake
	r(2546),	-- Dry Pork Ribs
	r(6415, {["timeline"] = {ADDED_4_0_3}}),	-- Fillet of Frenzy
	r(6500),	-- Goblin Deviled Clams
	r(18240, {["timeline"] = {ADDED_4_0_3}}),	-- Grilled Squid
	r(8604),	-- Herb Baked Egg
	r(46688, {["timeline"] = {ADDED_4_1_0}}),	-- Juicy Bear Burger
	r(6412, {["timeline"] = {ADDED_4_0_3}}),	-- Kaldorei Spider Kabob
	r(18243, {["timeline"] = {ADDED_4_0_3}}),	-- Nightfin Soup
	r(18244, {["timeline"] = {ADDED_4_0_3}}),	-- Poached Sunscale Salmon
	r(2540),	-- Roasted Boar Meat
	r(3400, {["timeline"] = {ADDED_4_0_3}}),	-- Soothing Turtle Bisque
	r(37836, {["timeline"] = {ADDED_2_0_5}}),	-- Spice Bread
	r(2539),	-- Spiced Wolf Meat
	r(21175),	-- Spider Sausage
	r(18238, {["timeline"] = {ADDED_4_0_3}}),	-- Spotted Yellowtail
	r(3399, {["timeline"] = {ADDED_4_0_3}}),	-- Tasty Lion Steak
	r(93741, {["timeline"] = {ADDED_4_0_3}}),	-- Venison Jerky
};
TBC_COOKING = applyclassicphase(WRATH_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_3_1_0 } }, {
	r(33359, {	-- Cooking (Master)
		["timeline"] = { ADDED_2_0_5, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 50,
		-- #endif
		["rank"] = 5,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264634, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Outland Cooking
	r(818),		-- Cooking Fire
	r(42302, {["timeline"] = {ADDED_4_0_1}}),	-- Fisherman's Feast
	r(42305, {["timeline"] = {ADDED_4_0_1}}),	-- Hot Buttered Trout
	r(42296, {["timeline"] = {ADDED_4_0_1}}),	-- Stewed Trout
}));
WRATH_COOKING = applyclassicphase(WRATH_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_3_0_3 } }, {
	r(51296, {	-- Cooking (Grand Master)
		["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 65,
		-- #endif
		["rank"] = 6,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264636, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Northrend Cooking
	r(818),		-- Cooking Fire
	r(45569),	-- Baked Manta Ray
	r(64358, {["timeline"] = {ADDED_3_1_0}}),	-- Black Jelly
	r(58065),	-- Dalaran Clam Chowder
	r(45554),	-- Great Feast
	r(45561),	-- Grilled Bonescale
	r(45563),	-- Grilled Sculpin
	r(45549),	-- Mammoth Meal
	r(45566),	-- Pickled Fangtooth
	r(45565),	-- Poached Nettlefish
	r(45553),	-- Rhino Dogs
	r(45552),	-- Roasted Worg
	r(45562),	-- Sauteed Goby
	r(45550),	-- Shoveltusk Steak
	r(45560),	-- Smoked Rockfin
	r(45564),	-- Smoked Salmon
	r(45551),	-- Worm Delight
}));
CATA_COOKING = applyclassicphase(CATA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	r(88053, {	-- Cooking (Illustrious)
		["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 7,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264638, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Cataclysm Cooking
	r(88006),	-- Blackened Surprise
	r(88015),	-- Darkbrew Lager
}));
MOP_COOKING = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	r(104381, {	-- Cooking (Zen Master)
		["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 8,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264640, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Pandaria Cooking
	r(124233),	-- Blanched Needle Mushrooms
	r(124228),	-- Boiled Silkworm Pupa
	r(124227),	-- Dried Needle Mushrooms
	r(124226),	-- Dried Peaches
	r(104297),	-- Fish Cake
	r(104237),	-- Golden Carp Consomme
	r(124231),	-- Green Curry Fish
	r(124232),	-- Peach Pie
	r(125080),	-- Pearl Milk Tea
	r(125067),	-- Perfectly Cooked Instant Noodles
	r(124223),	-- Pounded Rice Cake
	r(124229),	-- Red Bean Bun
	r(125122),	-- Rice Pudding
	r(125078),	-- Roasted Barley Tea
	r(124234),	-- Skewered Peanut Chicken
	r(125117),	-- Sliced Peaches
	r(124230),	-- Tangy Yogurt
	r(124225),	-- Toasted Fish Jerky
	r(125121),	-- Wildfowl Ginseng Soup
	r(124224),	-- Yak Cheese Curds
}));
WAY_OF_THE_BREW = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 }, ["sourceQuests"] = { 31479 } }, {
	r(125602),	-- Banquet of the Brew
	r(124052),	-- Ginseng Tea
	r(125603),	-- Great Banquet of the Brew
	r(124053),	-- Jade Witch Brew
	r(124054),	-- Mad Brewer's Breakfast
}));
WAY_OF_THE_GRILL = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 }, ["sourceQuests"] = { 31311 } }, {
	r(125141),	-- Banquet of the Grill
	r(104300),	-- Black Pepper Ribs and Shrimp
	r(104298),	-- Charbroiled Tiger Steak
	r(104299),	-- Eternal Blossom Fish
	r(125142),	-- Great Banquet of the Grill
}));
WAY_OF_THE_OVEN = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 }, ["sourceQuests"] = { 31478 } }, {
	r(125600),	-- Banquet of the Oven
	r(104312),	-- Chun Tian Spring Rolls
	r(125601),	-- Great Banquet of the Oven
	r(104311),	-- Twin Fish Platter
	r(104310),	-- Wildfowl Roast
}));
WAY_OF_THE_POT = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 }, ["sourceQuests"] = { 31472 } }, {
	r(125596),	-- Banquet of the Pot
	r(104305),	-- Braised Turtle
	r(125597),	-- Great Banquet of the Pot
	r(104306),	-- Mogu Fish Stew
	r(104307),	-- Shrimp Dumplings
}));
WAY_OF_THE_STEAMER = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 }, ["sourceQuests"] = { 31475 } }, {
	r(125598),	-- Banquet of the Steamer
	r(104308),	-- Fire Spirit Salmon
	r(125599),	-- Great Banquet of the Steamer
	r(104309),	-- Steamed Crab Surprise
	r(104304),	-- Swirling Mist Soup
}));
WAY_OF_THE_WOK = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 }, ["sourceQuests"] = { 31470 } }, {
	r(125594),	-- Banquet of the Wok
	r(125595),	-- Great Banquet of the Wok
	r(104301),	-- Sauteed Carrots
	r(104303),	-- Sea Mist Rice Noodles
	r(104302),	-- Valley Stir Fry
}));
DRAENOR_COOKING = applyclassicphase(WOD_PHASE_ONE, i(111387, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	["description"] = "This can drop from any Warlords of Draenor mob if you don't already have it learned.",
	["g"] = {
		r(158765, {	-- Cooking (Draenor Master)
			["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #endif
			["rank"] = 9,
		}),
		applyclassicphase(BFA_PHASE_ONE, r(264642, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Draenor Cooking
		r(161002),	-- Grilled Saberfish
		r(161001),	-- Saberfish Broth
	},
})));
BFA_COOKING = applyclassicphase(BFA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	r(818),		-- Cooking Fire
	r(290471, {["timeline"] = {ADDED_8_1_0}}),	-- Boralus Blood Sausage [Rank 1]
	r(259421),	-- Bountiful Captain's Feast [Rank 1]
	r(259418),	-- Galley Banquet [Rank 1]
	r(259419),	-- Galley Banquet [Rank 2]
	r(259430),	-- Grilled Catfish [Rank 1]
	r(259431),	-- Grilled Catfish [Rank 2]
	r(286381, {["timeline"] = {ADDED_8_1_0}}),	-- Honey Potpie
	r(259414),	-- Honey-Glazed Haunches [Rank 1]
	r(259415),	-- Honey-Glazed Haunches [Rank 2]
	r(259411),	-- Kul Tiramisu [Rank 1]
	r(259412),	-- Kul Tiramisu [Rank 2]
	r(259436),	-- Loa Loaf [Rank 1]
	r(259437),	-- Loa Loaf [Rank 2]
	r(259442),	-- Mon'Dazi [Rank 1]
	r(259443),	-- Mon'Dazi [Rank 2]
	r(259424),	-- Ravenberry Tarts [Rank 1]
	r(259425),	-- Ravenberry Tarts [Rank 2]
	r(287108, {["timeline"] = {ADDED_8_1_0}}),	-- Sanguinated Feast [Rank 1]
	r(259439),	-- Sailor's Pie [Rank 1]
	r(259440),	-- Sailor's Pie [Rank 2]
	r(259433),	-- Seasoned Loins [Rank 1]
	r(259434),	-- Seasoned Loins [Rank 2]
	r(288030, {["timeline"] = {ADDED_8_1_0}}),	-- Seasoned Steak and Potatoes [Rank 1]
	r(288032, {["timeline"] = {ADDED_8_1_0}}),	-- Seasoned Steak and Potatoes [Rank 2]
	r(259445),	-- Spiced Snapper [Rank 1]
	r(259446),	-- Spiced Snapper [Rank 2]
	r(259427),	-- Swamp Fish 'n Chips [Rank 1]
	r(259428),	-- Swamp Fish 'n Chips [Rank 2]
	r(288027, {["timeline"] = {ADDED_8_1_0}}),	-- Wild Berry Bread [Rank 1]
	r(288028, {["timeline"] = {ADDED_8_1_0}}),	-- Wild Berry Bread [Rank 2]
}));
NAZJATAR_COOKING = applyclassicphase(BFA_PHASE_THREE, bubbleDown({ ["timeline"] = { ADDED_8_2_0 } }, {
	r(297084),	-- Abyssal-Fried Rissole [Rank 1]
	r(297085),	-- Abyssal-Fried Rissole [Rank 2]
	r(297081),	-- Baked Port Tato [Rank 1]
	r(297082),	-- Baked Port Tato [Rank 2]
	r(297087),	-- Bil'Tong [Rank 1]
	r(297088),	-- Bil'Tong [Rank 2]
	r(297105),	-- Famine Evaluator And Snack Table [Rank 1]
	r(297077),	-- Fragrant Kakavia [Rank 1]
	r(297075),	-- Fragrant Kakavia [Rank 2]
	r(297078),	-- Mech-Dowel's "Big Mech" [Rank 1]
	r(297079),	-- Mech-Dowel's "Big Mech" [Rank 2]
}));
SL_COOKING = applyclassicphase(SHADOWLANDS_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	r(309830),	-- Shadowlands Cooking
	r(818),		-- Cooking Fire
	r(308415),	-- Banana Beef Pudding
	r(308410),	-- Biscuits and Caviar
	r(308397),	-- Butterscotch Marinated Ribs
	r(308411),	-- Candied Amberjack Cakes
	r(308404),	-- Cinnamon Bonefish Stew
	r(308420),	-- Fried Bonefish
	r(308413),	-- Iridescent Ravioli with Apple Sauce
	r(308412),	-- Meaty Apple Dumplings
	r(308414),	-- Pickled Meat Smoothie
	r(308417),	-- Seraph Tenders
	r(308419),	-- Smothered Shank
	r(308400),	-- Spinefin Souffle and Fries
	r(308426),	-- Steak a la Mode
	r(308402),	-- Surprisingly Palatable Feast
	r(308425),	-- Sweet Silvergill Sausages
	r(308405),	-- Tenebrous Crown Roast Aspic
}));
DF_COOKING = applyclassicphase(DF_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	r(366256),	-- Dragon Isles Cooking
	r(818),		-- Cooking Fire
	r(381364),	-- Assorted Exotic Spices
	r(381371),	-- Breakfast of Draconic Champions
	r(381367),	-- Cheese and Quackers
	r(381382),	-- Delicious Dragon Spittle
	r(381389),	-- Hopefully Healthy
	r(381368),	-- Mackerel Snackerel
	r(381363),	-- Pebbled Rock Salts
	r(381369),	-- Probably Protein
	r(381411),	-- Salted Meat Mash
	r(381386),	-- Scrambled Basilisk Eggs
	r(381370),	-- Sweet and Sour Clam Chowder
	r(381365),	-- Twice-Baked Potato
	r(381381),	-- Zesty Water
}));
TWW_COOKING = bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	r(423333),	-- Khaz Algar Cooking
	r(818),		-- Cooking Fire
	r(445107),	-- Angler's Delight
	r(445116),	-- Chippy Tea
	r(445117),	-- Chopped Mycobloom
	r(445088),	-- Coreway Kabob
	r(445098),	-- Deepfin Patty
	r(445095),	-- Fiery Fish Sticks
	r(445101),	-- Fish and Chips
	r(445089),	-- Flash Fire Fillet
	r(445127),	-- Fresh Fillet
	r(445096),	-- Ginger Glazed Fillet
	r(445087),	-- Hallowfall Chili
	r(462857),	-- Hearty Feast
	r(445120),	-- Hearty Food
	r(445110),	-- Jester's Board
	r(445103),	-- Marinated Tenderloins
	r(445090),	-- Meat and Potatoes
	r(445105),	-- Mycobloom Risotto
	r(445086),	-- Pan-Seared Mycobloom
	r(445118),	-- Portioned Steak
	r(445091),	-- Rib Stickers
	r(445085),	-- Roasted Mycobloom
	r(445102),	-- Salt Baked Seafood
	r(445097),	-- Salty Dog
	r(445083),	-- Simple Stew
	r(445104),	-- Sizzling Honey Roast
	r(445082),	-- Skewered Fillet
	r(445119),	-- Spiced Meat Stock
	r(445106),	-- Stuffed Cave Peppers
	r(445092),	-- Sweet and Sour Meatballs
	r(445099),	-- Sweet and Spicy Soup
	r(445093),	-- Tender Twilight Jerky
	r(445100),	-- The Sushi Special
	r(445084),	-- Unseasoned Field Steak
	r(445094),	-- Zesty Nibblers
});