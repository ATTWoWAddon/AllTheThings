---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(COOKING, {
		n(CRAFTABLES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					i(23683),	-- Crystal Flake Throat Lozenge
				}),
			}),
			expansion(EXPANSION.MOP, {
				-- 5.4.0
				expansion(EXPANSION.MOP, patch(4,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_4_0 } }, {
					i(101729),	-- Grand Deluxe Noodle Cart Kit
					i(101727),	-- Grand Noodle Cart Kit
					i(101740),	-- Grand Pandaren Treasure Noodle Cart Kit
				})),
			}),
			expansion(EXPANSION.WOD, {
				-- 6.0.2
				expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
					i(111435),	-- Clefhoof Pot Roast
					i(111440),	-- Crispy Fried Scorpion
					i(111432),	-- Deep Fried Riverbeast
					i(115300),	-- Marinated Elekk Steak
					i(111448),	-- Nagrand Tempura
					i(111443),	-- Salted Skulker
					i(115302),	-- Seasoned Elekk Ribeye
					i(111451),	-- Starflower Sandwich
					i(115291),	-- Whole Pot-Roasted Elekk
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					i(172064),	-- zzOldArdenweald Zonewich
					i(172065),	-- zzOldBastion Zonewich
					i(172066),	-- zzOldMaldraxxus Zonewich
					i(172060),	-- Quiethounds
					i(172067),	-- zzOldRevendreth Zonewich
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(198396),	-- Ribbed Mollusk Meat
				})),

				-- 10.1.5
				expansion(EXPANSION.DF, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_5 } }, {
					i(206188),	-- Druidic Dreamsalad
					i(206189),	-- Fine Taladorian Cheese Platter
					i(206187),	-- Highly Spiced Haunch
					i(206192),	-- Picante Pomfruit Cake
					i(206191),	-- Roquefort-Stuffed Peppers
					i(206190),	-- Venrik's Goat Milk
				})),

				-- 10.2.0
				expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_0 } }, {
					i(210495),	-- Slumbering Peacebloom Tea
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					i(220415),	-- Angler's Delight
					i(222283),	-- Angler's Delight
					i(220430),	-- Blessing Blossom Tea
					i(222743),	-- Blessing Blossom Tea
					i(220428),	-- Chippy Tea
					i(222295),	-- Chippy Tea
					i(220339),	-- Chopped Mycobloom
					i(220382),	-- Chopped Mycobloom
					i(222250),	-- Chopped Mycobloom
					i(222690),	-- Chopped Mycobloom
					i(220429),	-- Citrus Refresher
					i(220393),	-- Clumped Flour
					i(222261),	-- Clumped Flour
					i(220385),	-- Cluster of Meatballs
					i(222253),	-- Cluster of Meatballs
					i(219705),	-- Cooked Meat T1
					i(219702),	-- Cooked Meat T1 A
					i(219703),	-- Cooked Meat T1 B
					i(219704),	-- Cooked Meat T1 C
					i(220389),	-- Coreway Dust
					i(222257),	-- Coreway Dust
					i(220400),	-- Coreway Kabob
					i(222268),	-- Coreway Kabob
					i(220431),	-- Crisp Ringing Water
					i(220388),	-- Crunchy Peppers
					i(222256),	-- Crunchy Peppers
					i(220421),	-- Daylight Delicacy
					i(222289),	-- Daylight Delicacy
					i(220410),	-- Deepfin Patty
					i(223978),	-- Double Packed Yolk
					i(220427),	-- Everything Stew
					i(219719),	-- Feast
					i(220425),	-- Feast of the Midnight Masquerade
					i(220407),	-- Fiery Fish Sticks
					i(222275),	-- Fiery Fish Sticks
					i(223965),	-- Fine Egg Powder
					i(220413),	-- Fish and Chips
					i(222281),	-- Fish and Chips
					i(222278),	-- Fish Cake (Revise)
					i(219706),	-- Fish Palte Haste
					i(219707),	-- Fish Plate Crit
					i(219714),	-- Fish Plate Crit/Mastery
					i(219713),	-- Fish Plate Crit/Verse
					i(219710),	-- Fish Plate Haste/Crit
					i(219712),	-- Fish Plate Haste/Mastery
					i(219711),	-- Fish Plate Haste/Verse
					i(219709),	-- Fish Plate Mastery
					i(219717),	-- Fish Plate Stam Agi
					i(219718),	-- Fish Plate Stam Int
					i(219716),	-- Fish Plate Stam Str
					i(219708),	-- Fish Plate Verse
					i(219715),	-- Fish Plate Vers/Mastery
					i(222279),	-- Fish Soup (Revise)
					i(220401),	-- Flash Fire Fillet
					i(222269),	-- Flash Fire Fillet
					i(220306),	-- Fresh Fillet
					i(220386),	-- Fresh Fillet
					i(222254),	-- Fresh Fillet
					i(222694),	-- Fresh Fillet
					i(224117),	-- Ghoulfish Delight
					i(220408),	-- Ginger Glazed Fillet
					i(222276),	-- Ginger Glazed Fillet
					i(220392),	-- Granulated Spices
					i(222260),	-- Granulated Spices
					i(220405),	-- Grilled Pepper Steak
					i(220399),	-- Hallowfall Chili
					i(222267),	-- Hallowfall Chili
					i(222326),	-- Hearty Angler's Delight
					i(222338),	-- Hearty Chippy Tea
					i(219726),	-- Hearty Cooked Meat T1
					i(219723),	-- Hearty Cooked Meat T1 A
					i(219724),	-- Hearty Cooked Meat T1 B
					i(219725),	-- Hearty Cooked Meat T1 C
					i(222311),	-- Hearty Coreway Kabob
					i(222332),	-- Hearty Daylight Delicacy
					i(222318),	-- Hearty Fiery Fish Sticks
					i(222324),	-- Hearty Fish and Chips
					i(222321),	-- Hearty Fish Cake (Revise)
					i(219727),	-- Hearty Fish Palte Haste
					i(219728),	-- Hearty Fish Plate Crit
					i(219735),	-- Hearty Fish Plate Crit/Mastery
					i(219734),	-- Hearty Fish Plate Crit/Verse
					i(219731),	-- Hearty Fish Plate Haste/Crit
					i(219733),	-- Hearty Fish Plate Haste/Mastery
					i(219732),	-- Hearty Fish Plate Haste/Verse
					i(219730),	-- Hearty Fish Plate Mastery
					i(219740),	-- Hearty Fish Plate Stam
					i(219738),	-- Hearty Fish Plate Stam Agi
					i(219739),	-- Hearty Fish Plate Stam Int
					i(219737),	-- Hearty Fish Plate Stam Str
					i(219729),	-- Hearty Fish Plate Verse
					i(219736),	-- Hearty Fish Plate Vers/Mastery
					i(222322),	-- Hearty Fish Soup (Revise)
					i(222312),	-- Hearty Flash Fire Fillet
					i(222319),	-- Hearty Ginger Glazed Fillet
					i(222310),	-- Hearty Hallowfall Chili
					i(222334),	-- Hearty Late Night Snack
					i(222313),	-- Hearty Meat and Potatoes
					i(222306),	-- Hearty Meatball Hold-Me-Over
					i(222333),	-- Hearty Nightfall Nourishment
					i(222316),	-- Hearty NYI NAME NEEDED
					i(222327),	-- Hearty NYI NAME NEEDED
					i(222328),	-- Hearty NYI NAME NEEDED
					i(222329),	-- Hearty NYI NAME NEEDED
					i(222330),	-- Hearty NYI NAME NEEDED
					i(222336),	-- Hearty NYI NAME NEEDED
					i(222337),	-- Hearty NYI NAME NEEDED
					i(222339),	-- Hearty NYI NAME NEEDED
					i(222340),	-- Hearty NYI NAME NEEDED
					i(222341),	-- Hearty NYI NAME NEEDED
					i(222342),	-- Hearty NYI NAME NEEDED
					i(222344),	-- Hearty NYI NAME NEEDED
					i(222346),	-- Hearty NYI NAME NEEDED
					i(222347),	-- Hearty NYI NAME NEEDED
					i(222309),	-- Hearty Pan Seared Mycobloom
					i(222343),	-- Hearty Pep-In-Your-Step
					i(222314),	-- Hearty Rib Stickers
					i(222308),	-- Hearty Roasted Mycobloom
					i(222345),	-- Hearty Rockslide Shake
					i(222325),	-- Hearty Salt Baked Seafood
					i(222320),	-- Hearty Salty Fish Pie (Revise)
					i(222335),	-- Hearty Shadow-Infused Gumbo
					i(222305),	-- Hearty Skewered Fillet
					i(222315),	-- Hearty Sweet and Sour Meatballs
					i(222331),	-- Hearty The Breakfast Sampler
					i(222307),	-- Hearty Unseasoned Field Steak
					i(222782),	-- Hearty Village Potluck
					i(222317),	-- Hearty Zesty Nibblers
					i(220391),	-- Khaz Algar Tomato
					i(222259),	-- Khaz Algar Tomato
					i(220423),	-- Late Night Snack
					i(222291),	-- Late Night Snack
					i(222742),	-- Luminous Lemonade
					i(220419),	-- Marinated Tenderloins
					i(220402),	-- Meat and Potatoes
					i(222270),	-- Meat and Potatoes
					i(220395),	-- Meatball Hold-Me-Over
					i(222263),	-- Meatball Hold-Me-Over
					i(220416),	-- Mycobloom Risotto
					i(220422),	-- Nightfall Nourishment
					i(222290),	-- Nightfall Nourishment
					i(222273),	-- NYI NAME NEEDED
					i(222284),	-- NYI NAME NEEDED
					i(222285),	-- NYI NAME NEEDED
					i(222286),	-- NYI NAME NEEDED
					i(222287),	-- NYI NAME NEEDED
					i(222293),	-- NYI NAME NEEDED
					i(222294),	-- NYI NAME NEEDED
					i(222296),	-- NYI NAME NEEDED
					i(222297),	-- NYI NAME NEEDED
					i(222298),	-- NYI NAME NEEDED
					i(222299),	-- NYI NAME NEEDED
					i(222301),	-- NYI NAME NEEDED
					i(222303),	-- NYI NAME NEEDED
					i(222304),	-- NYI NAME NEEDED
					i(219745),	-- Olive Oil
					i(220435),	-- Olive Oil Ice Cream
					i(220398),	-- Pan Seared Mycobloom
					i(222266),	-- Pan Seared Mycobloom
					i(220432),	-- Pep-In-Your-Step
					i(222300),	-- Pep-In-Your-Step
					i(220341),	-- Portioned Steak
					i(220383),	-- Portioned Steak
					i(222251),	-- Portioned Steak
					i(222691),	-- Portioned Steak
					i(219721),	-- Prepared Algari Filet
					i(219722),	-- Prepared Algari Poultry
					i(219720),	-- Prepared Algari Steak
					i(220403),	-- Rib Stickers
					i(222271),	-- Rib Stickers
					i(220397),	-- Roasted Mycobloom
					i(222265),	-- Roasted Mycobloom
					i(220434),	-- Rockslide Shake
					i(222302),	-- Rockslide Shake
					i(220414),	-- Salt Baked Seafood
					i(222282),	-- Salt Baked Seafood
					i(220409),	-- Salty Fish Pie
					i(222277),	-- Salty Fish Pie (Revise)
					i(220433),	-- Savory Evening Tart
					i(222292),	-- Shadow-Infused Gumbo
					i(220418),	-- Sizzling Honey Roast
					i(220394),	-- Skewered Fillet
					i(222262),	-- Skewered Fillet
					i(220384),	-- Spiced Meat Stock
					i(222252),	-- Spiced Meat Stock
					i(222692),	-- Spiced Meat Stock
					i(220417),	-- Stuffed Cave Peppers
					i(222698),	-- Surface Olive
					i(220390),	-- Surface Olive
					i(222258),	-- Surface Olive
					i(220404),	-- Sweet and Sour Meatballs
					i(222272),	-- Sweet and Sour Meatballs
					i(222746),	-- Tasty Pocket Tart
					i(220420),	-- The Breakfast Sampler
					i(222288),	-- The Breakfast Sampler
					i(220387),	-- Twined Herbs
					i(222255),	-- Twined Herbs
					i(220411),	-- Underbelly Soup
					i(220396),	-- Unseasoned Field Steak
					i(222264),	-- Unseasoned Field Steak
					i(220426),	-- Village Potluck
					i(222734),	-- Village Potluck
					i(220406),	-- Zesty Nibblers
					i(222274),	-- Zesty Nibblers
					i(222785),	-- zzold cooking recipe
					i(222786),	-- zzold cooking recipe
					i(222787),	-- zzold cooking recipe
					i(220424),	-- zzOldFeast of the Divine Day
				})),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					-- With SpellID attached
					i(23690),	-- Recipe: Crystal Flake Throat Lozenge / Crystal Throat Lozenge
					-- Without SpellID attached
					i(16073),	-- Artisan Cookbook
					i(6891),	-- Recipe: Herb Baked Egg
				}),
			}),
			expansion(EXPANSION.WRATH, {
				-- 3.0.2
				expansion(EXPANSION.WRATH, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
					-- With SpellID attached
					i(34126),	-- Recipe: Shoveltusk Soup
					i(39692),	-- Recipe: Succulent Orca Stew
					-- Without SpellID attached
					i(39644),	-- Recipe: Kungaloosh
				})),
			}),
			expansion(EXPANSION.MOP, {
				-- 5.0.4
				expansion(EXPANSION.MOP, patch(0,4), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
					-- With SpellID attached
					i(86550),	-- Apprentice Cookbook
					i(86512),	-- Journeyman Cookbook
					-- Without SpellID attached
					i(86552),	-- Artisan Cookbook
					i(86551),	-- Expert Cookbook
					i(86554),	-- Grand Master Cookbook
					i(86553),	-- Master Cookbook
				})),

				-- 5.4.0
				expansion(EXPANSION.MOP, patch(4,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_4_0 } }, {
					-- With SpellID attached
					i(101739),	-- Recipe: Grand Deluxe Noodle Cart Kit
					i(101728),	-- Recipe: Grand Noodle Cart Kit
					i(101741),	-- Recipe: Grand Pandaren Treasure Noodle Cart Kit
					-- Without SpellID attached
					i(101631),	-- Recipe: Noodle Cart Kit
					i(101664),	-- Recipe: Deluxe Noodle Cart Kit
					i(101663),	-- Recipe: Pandaren Treasure Noodle Cart Kit
				})),
			}),
			expansion(EXPANSION.WOD, {
				-- 6.0.2
				expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
					r(160967),	-- Clefthoof Pot Roast
					r(160976),	-- Crispy Fried Scorpion
					r(160961),	-- Deep Fried Basilisk
					r(169696),	-- Marinated Elekk Steak
					r(160985),	-- Nagrand Tempura
					r(160980),	-- Salted Skulker
					r(169699),	-- Seasoned Elekk Ribeye
					r(160988),	-- Starflower Sandwich
					r(169693),	-- Whole Pot-Roasted Elekk
				})),
			}),
			expansion(EXPANSION.BFA, {
				-- 8.2.0
				expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
					-- Without SpellID attached
					i(169457),	-- Recipe: Mecha-Bytes
					i(170076),	-- Recipe: Unagi Skewer
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					r(308421),	-- Ardenweald Zonewich
					r(308422),	-- Bastion Zonewich
					r(308423),	-- Maldraxxus Zonewich
					r(308416),	-- Quiethounds
					r(308424),	-- Revendreth Zonewich
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					-- Without SpellID attached
					i(198118),	-- Recipe: Aromatic Seafood Platter (RECIPE!)
					i(198100),	-- Recipe: Assorted Exotic Spices (RECIPE!)
					i(198123),	-- Recipe: Braised Bruffalon Brisket (RECIPE!)
					i(198097),	-- Recipe: Breakfast of Draconic Champions (RECIPE!)
					i(198093),	-- Recipe: Cheese and Quackers (RECIPE!)
					i(198108),	-- Recipe: Delicious Dragon Spittle (RECIPE!)
					i(198117),	-- Recipe: Feisty Fish Sticks (RECIPE!)
					i(198122),	-- Recipe: Great Cerulean Sea (RECIPE!)
					i(198112),	-- Recipe: Hopefully Healthy (RECIPE!)
					i(198094),	-- Recipe: Mackerel Snackerel (RECIPE!)
					i(198099),	-- Recipe: Pebbled Rock Salts (RECIPE!)
					i(198095),	-- Recipe: Probably Protein (RECIPE!)
					i(198120),	-- Recipe: Revenge, Served Cold (RECIPE!)
					i(198124),	-- Recipe: Riverside Picnic (RECIPE!)
					i(198125),	-- Recipe: Roast Duck Delight (RECIPE!)
					i(198126),	-- Recipe: Salted Meat Mash (RECIPE!)
					i(198111),	-- Recipe: Scrambled Basilisk Eggs (RECIPE!)
					i(198119),	-- Recipe: Sizzling Seafood Medley (RECIPE!)
					i(198096),	-- Recipe: Sweet and Sour Clam Chowder (RECIPE!)
					i(198121),	-- Recipe: Thousandbone Tongueslicer (RECIPE!)
					i(198092),	-- Recipe: Twice-Baked Potato (RECIPE!)
					i(198107),	-- Recipe: Zesty Water (RECIPE!)
				})),

				-- 10.1.5
				expansion(EXPANSION.DF, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_5 } }, {
					r(412533),	-- Druidic Dreamsalad (RECIPE!)
					r(412534),	-- Fine Taladorian Cheese Platter (RECIPE!)
					r(412531),	-- Highly Spiced Haunch (RECIPE!)
					r(411178),	-- Lemon Silverleaf Tea (RECIPE!)
					r(412537),	-- Picante Pomfruit Cake (RECIPE!)
					r(412536),	-- Roquefort-Stuffed Peppers (RECIPE!)
					r(412535),	-- Venrik's Goat Milk (RECIPE!)
				})),

				-- 10.2.0
				expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_0 } }, {
					-- Without SpellID attached
					i(210496),	-- Recipe: Slumbering Peacebloom Tea
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					r(445478),	-- Blessing Blossom Tea
					r(445477),	-- Luminous Lemonade
					r(445481),	-- Tasty Pocket Tart
					r(445114),	-- Village Potluck
					-- Without SpellID attached
					i(224419),	-- Recipe: Jester's Board (RECIPE!)
					i(223959),	-- Recipe: Secret Sauce (RECIPE!)
				})),
			}),
		}),
	}),
	-- Needs Sorting
	prof(COOKING, {
		expansion(EXPANSION.MOP, {
			-- 5.0.1
			expansion(EXPANSION.MOP, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
				i(87239),	-- Recipe: Banquet of the Steamer
				i(74673),	-- Recipe: Fire Spirit Salmon
				i(87241),	-- Recipe: Great Banquet of the Steamer
				i(74672),	-- Recipe: Shrimp Dumplings
				i(74674),	-- Recipe: Steamed Crab Surprise
				i(87235),	-- Recipe: Banquet of the Pot
				i(74670),	-- Recipe: Braised Turtle
				i(87237),	-- Recipe: Great Banquet of the Pot
				i(74671),	-- Recipe: Mogu Fish Stew
				i(74669),	-- Recipe: Swirling Mist Soup
				i(87227),	-- Recipe: Banquet of the Grill
				i(74665),	-- Recipe: Black Pepper Ribs and Shrimp
				i(74663),	-- Recipe: Charbroiled Tiger Steak
				i(74664),	-- Recipe: Eternal Blossom Fish
				i(87229),	-- Recipe: Great Banquet of the Grill
				i(87243),	-- Recipe: Banquet of the Oven
				i(74677),	-- Recipe: Chun Tian Spring Rolls
				i(87245),	-- Recipe: Great Banquet of the Oven
				i(74676),	-- Recipe: Twin Fish Platter
				i(74675),	-- Recipe: Wildfowl Roast
				i(87247),	-- Recipe: Banquet of the Brew
				i(87249),	-- Recipe: Great Banquet of the Brew
				i(87231),	-- Recipe: Banquet of the Wok
				i(87233),	-- Recipe: Great Banquet of the Wok
				i(74666),	-- Recipe: Sauteed Carrots
				i(74668),	-- Recipe: Sea Mist Rice Noodles
				i(74667),	-- Recipe: Valley Stir Fry
			})),
		}),
	}),
}));
