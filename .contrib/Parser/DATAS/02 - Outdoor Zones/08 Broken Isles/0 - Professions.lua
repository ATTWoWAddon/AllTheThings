root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		n(PROFESSIONS, {
			["maps"] = {
				LEGION_DALARAN,
			},
			["groups"] = {
				prof(JEWELCRAFTING, {
					q(40523, {	-- Facet-nating Friends
						["coord"] = { 40.3, 34.7, LEGION_DALARAN },
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["groups"] = {
							recipe(264546),	-- Legion Jewelcrafting
						},
					}),
					q(40529, {	-- Truly Outrageous
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuests"] = { 40523 },	-- Facet-nating Friends
						["groups"] = {
							recipe(195850),	-- Versatile Skystone
						},
					}),
					q(40530, {	-- An Eye for Detail
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuests"] = { 40529 },	-- Truly Outrageous
					}),
					q(40531, {	-- Swift Vengeance
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuests"] = { 40530 },	-- An Eye for Detail
					}),
					q(40532, {	-- Making the Cut (Deadly Deep Amber)
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuest"] = 40531,	-- Swift Vengeance
						["groups"] = {
							recipe(195848),	-- Deadly Deep Amber
						},
					}),
					q(40534, {	-- Making the Cut (Masterful Queen's Opal)
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuest"] = 40531,	-- Swift Vengeance
						["groups"] = {
							recipe(195851),	-- Masterful Queen's Opal
						},
					}),
					q(40533, {	-- Making the Cut (Quick Azsunite)
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuest"] = 40531,	-- Swift Vengeance
						["groups"] = {
							recipe(195849),	-- Quick Azsunite
						},
					}),
					q(40524, {	-- A Familiar Ring to It
						["provider"] = { "n", 93527 },	-- Timothy Jones
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuest"] = 40523,	-- Facet-nating Friends
					}),
					q(40525, {	-- Getting the Band Back Together
						["provider"] = { "n", 100538 },	-- Timothy Jones
						["coord"] = { 46.6, 41.4, AZSUNA },
						["sourceQuest"] = 40524,	-- A Familiar Ring to It
					}),
					q(42214, {	-- Knocked for a Loop
						["provider"] = { "n", 100538 },	-- Timothy Jones
						["coord"] = { 46.6, 41.4, AZSUNA },
						["sourceQuest"] = 40524,	-- A Familiar Ring to It
						["requireSkill"] = JEWELCRAFTING,
					}),
					q(40528, {	-- Finishing Touches (Azsunite Loop)
						["provider"] = { "n", 100538 },	-- Timothy Jones
						["coord"] = { 46.6, 41.4, AZSUNA },
						["description"] = "You can pick one recipe to learn first, and then purchase the other two recipes from Jabrul.",
						["sourceQuests"] = {
							42214,	-- Knocked for a Loop
							40525,	-- Getting the Band Back Together
						},
						["groups"] = {
							i(137215),	-- Cut Azsunite (QI!)
							i(137794),	-- Design: Azsunite Loop [Rank 1] (RECIPE!)
						},
					}),
					q(40526, {	-- Finishing Touches (Skystone Loop)
						["provider"] = { "n", 100538 },	-- Timothy Jones
						["coord"] = { 46.6, 41.4, AZSUNA },
						["description"] = "You can pick one recipe to learn first, and then purchase the other two recipes from Jabrul.",
						["sourceQuests"] = {
							42214,	-- Knocked for a Loop
							40525,	-- Getting the Band Back Together
						},
						["groups"] = {
							i(137212),	-- Cut Skystone (QI!)
							i(137793),	-- Design: Skystone Loop [Rank 1] (RECIPE!)
						},
					}),
					q(40527, {	-- Finishing Touches (Deep Amber Loop)
						["provider"] = { "n", 100538 },	-- Timothy Jones
						["coord"] = { 46.6, 41.4, AZSUNA },
						["description"] = "You can pick one recipe to learn first, and then purchase the other two recipes from Jabrul.",
						["sourceQuests"] = {
							42214,	-- Knocked for a Loop
							40525,	-- Getting the Band Back Together
						},
						["groups"] = {
							i(137214),	-- Cut Deep Amber (QI!)
							i(137792),	-- Design: Deep Amber Loop [Rank 1] (RECIPE!)
						},
					}),
					q(40535, {	-- Raising the Drogbar
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuests"] = {
							40532,	-- Making the Cut (Deadly Deep Amber)
							40534,	-- Making the Cut (Masterful Queen's Opal)
							40533,	-- Making the Cut (Quick Azsunite)
							40527,	-- Finishing Touches (Deep Amber Loop)
							40526,	-- Finishing Touches (Skystone Loop)
							40528,	-- Finishing Touches (Azsunite Loop)
						},
					}),
					q(40536, {	-- Bruls Before Jewels
						["provider"] = { "n", 100776 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 45.3, 73.3, VALSHARAH },
						["sourceQuest"] = 40535,	-- Raising the Drogbar
						["groups"] = {
							i(132469),	-- Design: Azsunite Pendant
							i(132468),	-- Design: Deep Amber Pendant
							i(132467),	-- Design: Skystone Pendant
						},
					}),
					q(40538, {	-- Lapidary Lessons
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuests"] = { 40536 },	-- Bruls Before Jewels
						["groups"] = {
							recipe(195854),	-- Versatile Maelstrom Sapphire
						},
					}),
					q(40539, {	-- Hidden Intentions
						["provider"] = { "n", 100939 },	-- Clive Cozen
						["coord"] = { 38.3, 36.2, LEGION_DALARAN },
						["sourceQuests"] = { 40536 },	-- Bruls Before Jewels
						["groups"] = {
							recipe(195881),	-- Jeweled Lockpick
						},
					}),
					q(40540, {	-- Come at Me, Brul
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuests"] = { 40538 },	-- Lapidary Lessons
					}),
					q(40541, {	-- The Charge Within
						["provider"] = { "n", 100499 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 42.2, 35.0, STORMHEIM },
						["sourceQuests"] = { 40540 },	-- Come at Me, Brul
						["groups"] = {
							i(132760),	-- Conducting Jewel (QI!)
						},
					}),
					q(40546, {	-- Mysteries of Nature
						["provider"] = { "n", 100499 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 42.2, 35.0, STORMHEIM },
						["sourceQuests"] = { 40541 },	-- The Charge Within
						["groups"] = {
							recipe(195883),	-- Chatterstone
						},
					}),
					q(40542, {	-- Eyes of Nashal
						["provider"] = { "n", 100499 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 42.2, 35.0, STORMHEIM },
						["sourceQuests"] = { 40546 },	-- Mysteries of Nature
						["groups"] = {
							sp(199417),	-- Design: Deadly Eye of Prophecy
							recipe(195852),	-- Deadly Eye of Prophecy
						},
					}),
					q(40543, {	-- Eyes of Nashal
						["provider"] = { "n", 100499 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 42.2, 35.0, STORMHEIM },
						["sourceQuests"] = { 40546 },	-- Mysteries of Nature
						["groups"] = {
							sp(199418),	-- Design: Quick Dawnlight
							recipe(195853),	-- Quick Dawnlight
						},
					}),
					q(40544, {	-- Eyes of Nashal
						["provider"] = { "n", 100499 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 42.2, 35.0, STORMHEIM },
						["sourceQuests"] = { 40546 },	-- Mysteries of Nature
						["groups"] = {
							sp(199419),	-- Design: Masterful Shadowruby
							recipe(195855),	-- Masterful Shadowruby
						},
					}),
					q(40556, {	-- Jabrul Needs You
						["provider"] = { "o", 246250 },	-- Letter From Jabrul
						["coord"] = { 40.0, 35.3, LEGION_DALARAN },
						["isBreadcrumb"] = true,
						["sourceQuests"] = {
							40542,	-- Eyes of Nashal
							40543,	-- Eyes of Nashal
							40544,	-- Eyes of Nashal
						},
					}),
					q(40547, {	-- To Dalaran, With Love
						["provider"] = { "n", 100521 },	-- Jabrul
						["coord"] = { 56.4, 59.6, AZSUNA },
						["sourceQuests"] = { 40556 },	-- Jabrul Needs You
					}),
					q(40558, {	-- Socket to Me
						["provider"] = { "o", 246154 },	-- Broken Toy Box
						["coord"] = { 40.0, 35.3, LEGION_DALARAN },
						["sourceQuests"] = { 40547 },	-- To Dalaran, With Love
						["groups"] = {
							recipe(195882),	-- JewelCraft
						},
					}),
					q(40559, {	-- Black Rook Hold: The Raven's Wisdom
						["provider"] = { "n", 93527 },	-- Timothy Jones
						["coord"] = { 39.8, 35, LEGION_DALARAN },
						["sourceQuests"] = { 40558 },	-- Socket to Me
						["maps"] = { 751, 752, 753, 754, 755, 756 },	-- The Black Rook Hold
						["groups"] = {
							i(137800),	-- Dawnlight Band [Rank 1] (RECIPE!)
						},
					}),
					q(40561, {	-- Halls of Valor: Jewel of the Heavens
						["provider"] = { "n", 93527 },	-- Timothy Jones
						["coord"] = { 39.8, 35, LEGION_DALARAN },
						["sourceQuests"] = { 40558 },	-- Socket to Me
						["maps"] = { 703, 704, 705 },	-- Halls of Valor
						["groups"] = {
							i(137799),	-- Maelstrom Band [Rank 1] (RECIPE!)
						},
					}),
					q(40560, {	-- Maw of Souls: Spiriting Away
						["provider"] = { "n", 93527 },	-- Timothy Jones
						["coord"] = { 39.8, 35, LEGION_DALARAN },
						["sourceQuests"] = { 40558 },	-- Socket to Me
						["maps"] = { 706, 707, 708 },	-- Maw of Souls
						["groups"] = {
							i(137798),	-- Prophetic Band [Rank 1] (RECIPE!)
						},
					}),
					q(40562, {	-- A Personal Touch
						["provider"] = { "n", 93543 },	-- Sminx Glasseye
						["coord"] = { 39.8, 35, LEGION_DALARAN },
						["sourceQuests"] = {
							40559,	-- Black Rook Hold: The Raven's Wisdom
							40561,	-- Halls of Valor: Jewel of the Heavens
							40560,	-- Maw of Souls: Spiriting Away
						},
						["groups"] = {
							sp(199991),	-- Design: Class Necklace
						},
					}),
				}),
				prof(TAILORING, {
					q(38944, {	-- Sew It Begins
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["groups"] = {
							recipe(264628),	-- Legion Tailoring
						},
					}),
					q(38945, {	-- This Should Be Simple... Right?
						["sourceQuests"] = { 38944 },	-- Sew It Begins
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["groups"] = {
							recipe(185920),	-- Silkweave Epaulets
							recipe(185919),	-- Silkweave Cinch
							--
							i(127294),	-- Handcrafted Silkweave Robe (QI!)
							o(242636, {	-- Tanithria's Purple Dye
								["coord"] = { 35.5, 34.5, LEGION_DALARAN },
								["groups"] = { i(127289) },	-- Tanithria's Purple Dye (QI!)
							}),
							o(242638, {	-- Tanithria's Red Dye
								["coord"] = { 35.5, 34.5, LEGION_DALARAN },
								["groups"] = { i(127291) },	-- Tanithria's Red Dye (QI!)
							}),
							o(242633, {	-- Tanithria's Silkweave
								["coord"] = { 35.5, 34.0, LEGION_DALARAN },
								["groups"] = { i(127286) },	-- Tanithria's Silkweave (QI!)
							}),
							o(242634, {	-- Tanithria's Thread
								["coord"] = { 35.5, 34.5, LEGION_DALARAN },
								["groups"] = { i(127287) },	-- Tanithria's Thread (QI!)
							}),
						},
					}),
					q(38946, {	-- Consult the Locals
						["sourceQuests"] = { 38945 },	-- This Should Be Simple... Right?
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38947, {	-- Runic Catgut
						["sourceQuests"] = { 38946 },	-- Consult the Locals
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 60.0, 34.6, AZSUNA },
					}),
					q(38948, {	-- Hard Times
						["sourceQuests"] = { 38946 },	-- Consult the Locals
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 60.0, 34.6, AZSUNA },
					}),
					q(38949, {	-- So You Think You Can Sew
						["sourceQuests"] = {
							38947,	-- Runic Catgut
							38948,	-- Hard Times
						},
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 60.0, 34.6, AZSUNA },
						["groups"] = {
							r(186763, {["u"]=TRAINING}),	-- Rune-Threaded Silkweave Robe
							r(186764, {["u"]=TRAINING}),	-- Rune-Threaded Silkweave Bracers
							r(185918),	-- Silkweave Bracers [Rank 1]
							r(185925),	-- Silkweave Robe [Rank 1]
						},
					}),
					q(38950, {	-- The Wayward Tailor
						["sourceQuests"] = { 38949 },	-- So You Think You Can Sew
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 60.0, 34.6, AZSUNA },
					}),
					q(38951, {	-- A Needle Need
						["sourceQuests"] = { 38950 },	-- The Wayward Tailor
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38952, {	-- Meticulous Precision
						["sourceQuests"] = { 38951 },	-- A Needle Need
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38953, {	-- Advanced Needlework
						["sourceQuests"] = { 38952 },	-- Meticulous Precision
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["groups"] = {
							r(186799, {["u"]=TRAINING}),	-- Basic Slikweave Robe
							r(186801, {["u"]=TRAINING}),	-- Embroidered Slikweave Robe
							r(185935),	-- Silkweave Cinch [Rank 2]
						},
					}),
					q(38954, {	-- Where's Lyndras?
						["sourceQuests"] = { 38953 },	-- Advanced Needlework
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38955, {	-- Sew Far, Sew Good
						["sourceQuests"] = { 38954 },	-- Where's Lyndras?
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["groups"] = {
							recipe(186388),	-- Silkweave Satchel
						},
					}),
					q(38956, {	-- Where's Lyndras Again?
						["sourceQuests"] = { 38955 },	-- Sew Far, Sew Good
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38957, {	-- Taking Inspiration
						["sourceQuests"] = { 38956 },	-- Where's Lyndras Again?
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["groups"] = {
							recipe(185921),	-- Silkweave Pantaloons [Rank 1] (RECIPE!)
						},
					}),
					q(38958, {	-- The Right Color
						["sourceQuests"] = { 38956 },	-- Where's Lyndras Again?
						["provider"] = { "n", 93525 },	-- Ainderu Summerleaf
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["groups"] = {
							recipe(185924),	-- Silkweave Slippers [Rank 1] (RECIPE!)
						},
					}),
					q(38959, {	-- Left Behind
						["sourceQuests"] = {
							38958,	-- The Right Color
							38958,	-- Taking Inspiration
						},
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38960, {	-- Lining Them Up
						["sourceQuests"] = {
							38958,	-- The Right Color
							38958,	-- Taking Inspiration
						},
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38963, {	-- The Final Lesson?
						["sourceQuests"] = {
							38959,	-- Left Behind
							38960,	-- Lining Them Up
						},
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["groups"] = {
							r(187058, {["u"]=TRAINING}),	-- Slikweave Hood Lining
							r(187059, {["u"]=TRAINING}),	-- Slikweave Hood: Outer Layer
							r(187060, {["u"]=TRAINING}),	-- Handcrafted Slikweave Hood
							recipe(185922),	-- Silkweave Hood [Rank 1] (RECIPE!)
						},
					}),
					q(38961, {	-- Eye of Azshara: The Depraved Nightfallen
						["sourceQuests"] = { 38963 },	-- The Final Lesson?
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["maps"] = { 713 },	-- Eye of Azshara
						["groups"] = {
							recipe(185923),	-- Silkweave Gloves [Rank 1] (RECIPE!)
						},
					}),
					q(38964, {	-- Where's Lyndras Now?
						["sourceQuests"] = { 38961 },	-- Eye of Azshara: The Depraved Nightfallen
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(39602, {	-- Where's Lyndras: Sewer Sleuthing
						["sourceQuests"] = { 38964 },	-- Where's Lyndras Now?
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(39605, {	-- Where's Lyndras: Downward Spiral
						["sourceQuests"] = {
							38964,	-- Where's Lyndras Now?
							39602,	-- Where's Lyndras: Sewer Sleuthing
						},
						["provider"] = { "o", 243899 },	-- Broken Ley Flame Burner
						["coord"] = { 56.2, 68.4, LEGION_DALARAN },
					}),
					q(39667, {	-- Where's Lyndras: Leyflame Larceny
						["sourceQuests"] = { 39605 },	-- Where's Lyndras: Downward Spiral
						["provider"] = { "o", 243899 },	-- Broken Ley Flame Burner
						["coord"] = { 56.2, 68.4, LEGION_DALARAN },
					}),
					q(38965, {	-- Assault on Violet Hold: Into the Hold
						["sourceQuests"] = { 39667 },	-- Where's Lyndras: Leyflame Larceny
						["provider"] = { "n", 96444 },	-- Violet Hold Guard
						["coord"] = { 65.2, 67.4, LEGION_DALARAN },
						["maps"] = { 732 },	-- Assault of Violet Hold (Legion)
					}),
					q(38966, {	-- Secret Silkweaving Methods
						["sourceQuests"] = { 38965 },	-- Assault on Violet Hod: Into the Hold
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["groups"] = {
							recipe(185937),	-- Silkweave Pantaloons [Rank 2] (RECIPE!)
							recipe(185938),	-- Silkweave Hood [Rank 2] (RECIPE!)
							recipe(185939),	-- Silkweave Gloves [Rank 2] (RECIPE!)
							recipe(185940),	-- Silkweave Slippers [Rank 2] (RECIPE!)
						},
					}),
					q(38962, {	-- The Path to Suramar City
						["sourceQuests"] = { 38966 },	-- Secret Silkweaving Methods
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38967, {	-- The Nightborne Connection
						["sourceQuests"] = { 38962 },	-- The Path to Suramar City
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38968, {	-- Proof of Loyalty
						["sourceQuests"] = { 38967 },	-- The Nightborne Connection
						["provider"] = { "n", 93969 },	-- Leyweaver Tytallo
						["coord"] = { 40.4, 69.4, SURAMAR },
					}),
					q(38969, {	-- Master of Silkweave
						["sourceQuests"] = { 38962 },	-- The Path to Suramar City
						["provider"] = { "n", 93971 },	-- Leyweaver Inondra
						["coord"] = { 40.4, 69.4, SURAMAR },
					}),
					q(38970, {	-- The Queen's Grace Loom
						["sourceQuests"] = {
							38969,	-- Proof of Loyalty
							38969,	-- Master of Silkweave
						},
						["provider"] = { "n", 93969 },	-- Leyweaver Tytallo
						["coord"] = { 40.4, 69.4, SURAMAR },
						["groups"] = {
							r(185962),	-- Imbued Silkweave
							r(185926),	-- Imbued Silkweave Bracers [Rank 1]
						},
					}),
					q(38971, {	-- Exotic Textiles
						["sourceQuests"] = { 38970 },	-- The Queen's Grace Loom
						["provider"] = { "n", 93978 },	-- Leyweaver Athystro
						["coord"] = { 26.6, 71.4, SURAMAR },
						["groups"] = {
							r(185931),	-- Pattern: Imbued Silkweave Gloves [Rank 1] (RECIPE!)
						},
					}),
					q(38974, {	-- Halls of Valor: The Right Question
						["sourceQuests"] = { 38971 },	-- Exotic Textiles
						["provider"] = { "n", 93977 },	-- Leyweaver Tellumi
						["coord"] = { 65.6, 56.2, STORMHEIM },
						["maps"] = { 703, 704, 705 },	-- Halls of Valor
						["groups"] = {
							r(185929),	-- Pattern: Imbued Silkweave Pantaloons [Rank 1] (RECIPE!)
						},
					}),
					q(38975, {	-- Inspire Me!
						["sourceQuests"] = { 38970 },	-- The Queen's Grace Loom
						["provider"] = { "n", 93976 },	-- Leyweaver Mithrogane
						["coord"] = { 40.2, 69.6, SURAMAR },
						["groups"] = {
							r(185933),	-- Pattern: Imbued Silkwave Robes [Rank 1] (RECIPE!)
						},
					}),
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	m(BROKEN_ISLES, {
		m(LEGION_DALARAN, {
			n(PROFESSIONS, {
				prof(ALCHEMY, {
					n(QUESTS, {
						q(42083),	-- on turn-in of (42081)
					}),
				}),
			}),
		}),
	}),
})));