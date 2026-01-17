---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		n(PROFESSIONS, {
			["maps"] = {
				LEGION_DALARAN,
			},
			["groups"] = {
				prof(JEWELCRAFTING, {
					q(40523, {	-- Facet-nating Friends
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.3, 34.7, LEGION_DALARAN },
						["groups"] = {
							recipe(264546),	-- Legion Jewelcrafting
						},
					}),
					q(40529, {	-- Truly Outrageous
						["sourceQuests"] = { 40523 },	-- Facet-nating Friends
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["groups"] = {
							recipe(195850),	-- Versatile Skystone
						},
					}),
					q(40530, {	-- An Eye for Detail
						["sourceQuests"] = { 40529 },	-- Truly Outrageous
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
					}),
					q(40531, {	-- Swift Vengeance
						["sourceQuests"] = { 40530 },	-- An Eye for Detail
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["groups"] = {
							i(132259),	-- Bag of Real Jewels (QI!)
						},
					}),
					q(40532, {	-- Making the Cut (Deadly Deep Amber)
						["sourceQuest"] = 40531,	-- Swift Vengeance
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["groups"] = {
							recipe(195848),	-- Deadly Deep Amber
						},
					}),
					q(40534, {	-- Making the Cut (Masterful Queen's Opal)
						["sourceQuest"] = 40531,	-- Swift Vengeance
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["groups"] = {
							recipe(195851),	-- Masterful Queen's Opal
						},
					}),
					q(40533, {	-- Making the Cut (Quick Azsunite)
						["sourceQuest"] = 40531,	-- Swift Vengeance
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["groups"] = {
							recipe(195849),	-- Quick Azsunite
						},
					}),
					q(40524, {	-- A Familiar Ring to It
						["sourceQuest"] = 40523,	-- Facet-nating Friends
						["provider"] = { "n", 93527 },	-- Timothy Jones
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
					}),
					q(40525, {	-- Getting the Band Back Together
						["sourceQuest"] = 40524,	-- A Familiar Ring to It
						["provider"] = { "n", 100538 },	-- Timothy Jones
						["coord"] = { 46.6, 41.4, AZSUNA },
					}),
					q(42214, {	-- Knocked for a Loop
						["sourceQuest"] = 40524,	-- A Familiar Ring to It
						["provider"] = { "n", 100538 },	-- Timothy Jones
						["coord"] = { 46.6, 41.4, AZSUNA },
						["requireSkill"] = JEWELCRAFTING,
					}),
					q(40528, {	-- Finishing Touches (Azsunite Loop)
						["description"] = "You can pick one recipe to learn first, and then purchase the other two recipes from Jabrul.",
						["sourceQuests"] = {
							42214,	-- Knocked for a Loop
							40525,	-- Getting the Band Back Together
						},
						["provider"] = { "n", 100538 },	-- Timothy Jones
						["coord"] = { 46.6, 41.4, AZSUNA },
						["groups"] = {
							i(137215),	-- Cut Azsunite (QI!)
							i(137794),	-- Design: Azsunite Loop [Rank 1] (RECIPE!)
						},
					}),
					q(40526, {	-- Finishing Touches (Skystone Loop)
						["description"] = "You can pick one recipe to learn first, and then purchase the other two recipes from Jabrul.",
						["sourceQuests"] = {
							42214,	-- Knocked for a Loop
							40525,	-- Getting the Band Back Together
						},
						["provider"] = { "n", 100538 },	-- Timothy Jones
						["coord"] = { 46.6, 41.4, AZSUNA },
						["groups"] = {
							i(137212),	-- Cut Skystone (QI!)
							i(137793),	-- Design: Skystone Loop [Rank 1] (RECIPE!)
						},
					}),
					q(40527, {	-- Finishing Touches (Deep Amber Loop)
						["description"] = "You can pick one recipe to learn first, and then purchase the other two recipes from Jabrul.",
						["sourceQuests"] = {
							42214,	-- Knocked for a Loop
							40525,	-- Getting the Band Back Together
						},
						["provider"] = { "n", 100538 },	-- Timothy Jones
						["coord"] = { 46.6, 41.4, AZSUNA },
						["groups"] = {
							i(137214),	-- Cut Deep Amber (QI!)
							i(137792),	-- Design: Deep Amber Loop [Rank 1] (RECIPE!)
						},
					}),
					q(40535, {	-- Raising the Drogbar
						["sourceQuests"] = {
							40532,	-- Making the Cut (Deadly Deep Amber)
							40534,	-- Making the Cut (Masterful Queen's Opal)
							40533,	-- Making the Cut (Quick Azsunite)
							40527,	-- Finishing Touches (Deep Amber Loop)
							40526,	-- Finishing Touches (Skystone Loop)
							40528,	-- Finishing Touches (Azsunite Loop)
						},
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
					}),
					q(40536, {	-- Bruls Before Jewels
						["sourceQuest"] = 40535,	-- Raising the Drogbar
						["provider"] = { "n", 100776 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 45.3, 73.3, VALSHARAH },
						["groups"] = {
							i(132469),	-- Design: Azsunite Pendant
							i(132468),	-- Design: Deep Amber Pendant
							i(132467),	-- Design: Skystone Pendant
						},
					}),
					q(40538, {	-- Lapidary Lessons
						["sourceQuests"] = { 40536 },	-- Bruls Before Jewels
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["groups"] = {
							recipe(195854),	-- Versatile Maelstrom Sapphire
						},
					}),
					q(40539, {	-- Hidden Intentions
						["sourceQuests"] = { 40536 },	-- Bruls Before Jewels
						["provider"] = { "n", 100939 },	-- Clive Cozen
						["coord"] = { 38.3, 36.2, LEGION_DALARAN },
						["groups"] = {
							recipe(195881),	-- Jeweled Lockpick
							i(137624),	-- Black Market Diamond (QI!)
							i(137625),	-- Diamond Lockpicks (QI!)
							i(132882),	-- Lockpick Design (QI!)
						},
					}),
					q(40540, {	-- Come at Me, Brul
						["sourceQuests"] = { 40538 },	-- Lapidary Lessons
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
					}),
					q(40541, {	-- The Charge Within
						["sourceQuests"] = { 40540 },	-- Come at Me, Brul
						["provider"] = { "n", 100499 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 42.2, 35.0, STORMHEIM },
						["groups"] = {
							i(132760),	-- Conducting Jewel (QI!)
						},
					}),
					q(40546, {	-- Mysteries of Nature
						["sourceQuests"] = { 40541 },	-- The Charge Within
						["provider"] = { "n", 100499 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 42.2, 35.0, STORMHEIM },
						["groups"] = {
							recipe(195883),	-- Chatterstone
						},
					}),
					q(40542, {	-- Eyes of Nashal
						["sourceQuests"] = { 40546 },	-- Mysteries of Nature
						["provider"] = { "n", 100499 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 42.2, 35.0, STORMHEIM },
						["groups"] = {
							sp(199417),	-- Design: Deadly Eye of Prophecy
							recipe(195852),	-- Deadly Eye of Prophecy
						},
					}),
					q(40543, {	-- Eyes of Nashal
						["sourceQuests"] = { 40546 },	-- Mysteries of Nature
						["provider"] = { "n", 100499 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 42.2, 35.0, STORMHEIM },
						["groups"] = {
							sp(199418),	-- Design: Quick Dawnlight
							recipe(195853),	-- Quick Dawnlight
						},
					}),
					q(40544, {	-- Eyes of Nashal
						["sourceQuests"] = { 40546 },	-- Mysteries of Nature
						["provider"] = { "n", 100499 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 42.2, 35.0, STORMHEIM },
						["groups"] = {
							sp(199419),	-- Design: Masterful Shadowruby
							recipe(195855),	-- Masterful Shadowruby
						},
					}),
					q(40556, {	-- Jabrul Needs You
						["sourceQuests"] = {
							40542,	-- Eyes of Nashal
							40543,	-- Eyes of Nashal
							40544,	-- Eyes of Nashal
						},
						["provider"] = { "o", 246250 },	-- Letter From Jabrul
						["coord"] = { 40.0, 35.3, LEGION_DALARAN },
						["isBreadcrumb"] = true,
					}),
					q(40547, {	-- To Dalaran, With Love
						["sourceQuests"] = { 40556 },	-- Jabrul Needs You
						["provider"] = { "n", 100521 },	-- Jabrul
						["coord"] = { 56.4, 59.6, AZSUNA },
					}),
					q(40558, {	-- Socket to Me
						["sourceQuests"] = { 40547 },	-- To Dalaran, With Love
						["provider"] = { "o", 246154 },	-- Broken Toy Box
						["coord"] = { 40.0, 35.3, LEGION_DALARAN },
						["groups"] = {
							recipe(195882),	-- JewelCraft
						},
					}),
					q(40559, {	-- Black Rook Hold: The Raven's Wisdom
						["sourceQuests"] = { 40558 },	-- Socket to Me
						["provider"] = { "n", 93527 },	-- Timothy Jones
						["coord"] = { 39.8, 35.0, LEGION_DALARAN },
						["maps"] = { 751, 752, 753, 754, 755, 756 },	-- The Black Rook Hold
						["groups"] = {
							i(137800),	-- Dawnlight Band [Rank 1] (RECIPE!)
						},
					}),
					q(40561, {	-- Halls of Valor: Jewel of the Heavens
						["sourceQuests"] = { 40558 },	-- Socket to Me
						["provider"] = { "n", 93527 },	-- Timothy Jones
						["coord"] = { 39.8, 35.0, LEGION_DALARAN },
						["maps"] = { 703, 704, 705 },	-- Halls of Valor
						["groups"] = {
							i(137799),	-- Maelstrom Band [Rank 1] (RECIPE!)
						},
					}),
					q(40560, {	-- Maw of Souls: Spiriting Away
						["sourceQuests"] = { 40558 },	-- Socket to Me
						["provider"] = { "n", 93527 },	-- Timothy Jones
						["coord"] = { 39.8, 35.0, LEGION_DALARAN },
						["maps"] = { 706, 707, 708 },	-- Maw of Souls
						["groups"] = {
							i(137798),	-- Prophetic Band [Rank 1] (RECIPE!)
						},
					}),
					q(40562, {	-- A Personal Touch
						["sourceQuests"] = {
							40559,	-- Black Rook Hold: The Raven's Wisdom
							40561,	-- Halls of Valor: Jewel of the Heavens
							40560,	-- Maw of Souls: Spiriting Away
						},
						["provider"] = { "n", 93543 },	-- Sminx Glasseye
						["coord"] = { 39.8, 35.0, LEGION_DALARAN },
						["groups"] = {
							sp(199991),	-- Design: Class Necklace
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
