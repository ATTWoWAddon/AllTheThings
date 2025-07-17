---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_1_0 } }, {
	m(UNDERMINE, {
		n(TREASURES, {
				o(469858, {	-- Shiny Trash Can
					-- entire map, basically
					-- trash items, crystals, valorstones
					--currency(3226), 	-- Market Research
				}),
				o(469857, {	-- Overflowing Dumpster
					-- entire map
					--currency(3226), 	-- Market Research
					i(234741),	-- Miscellaneous Mechanica
				}),
			--
			o(502908, {	-- A Threatening Letter
				["coord"] = { 27.3, 70.6, UNDERMINE },
				["questID"] = 86567,
			}),
			o(476066, {	-- Abandoned Toolbox
				["description"] = "On the roof.",
				["coord"] = { 40.8, 21.3, UNDERMINE },
				["questID"] = 85422,
			}),
			o(495592, {	-- Blackened Dice
				["description"] = "Turn the nearby valve to spew the dice onto the walkway.",
				["coord"] = { 39.0, 59.6, UNDERMINE },
				["questID"] = 85814,
				["g"] = {
					i(235255),	-- Durable Dice
				},
			}),
			o(504096, {	-- Crumpled Schematics
				["coord"] = { 42.3, 82.2, UNDERMINE },
				["questID"] = 86487,
				["g"] = { i(235037) },	-- Crumpled Schematic: Wormhole Generator: Undermine (CI!)
			}),
			o(493305, {	-- Exploded Plunger
				["coord"] = { 49.6, 90.2, UNDERMINE },
				["questID"] = 85698,
				["g"] = {
					i(235238),	-- Exploded Plunger
				},
			}),
			o(502914, {	-- Extractor Drill X-78 Safety Guide
				["coord"] = { 67.3, 98.1, THE_RINGING_DEEPS },
				["questID"] = 86569,
			}),
			o(499090, {	-- Fireworks Hat
				["provider"] = { "n", 233720 },	-- vignette
				["coord"] = { 55.9, 51.7, UNDERMINE },
				["questID"] = 85856,
				["g"] = {
					q(85838, {
						["name"] = "Original spot",
						["coord"] = { 57.9, 52.9, UNDERMINE },
					}),
					q(85839, {
						["name"] = "Next spot",
						["coord"] = { 55.9, 51.7, UNDERMINE },
					}),
					--
					i(235220),	-- Fireworks Hat (TOY!)
					i(235266),	-- Fireworked Hat
				},
			}),
			o(502893, {	-- First Half of Noggenfogger's Journal
				["description"] = "Underground in the nearby sewer.",
				["coord"] = { 39.6, 26.9, UNDERMINE },
				["questID"] = 86572,
			}),
			o(502903, {	-- Gallywix's Notes
				["description"] = "Inside the cave on a table.",
				["sourceQuest"] = 83129,	-- Nowhere Left to Hide
				["coord"] = { 60.9, 64.3, UNDERMINE },
				["questID"] = 86573,
			}),
			o(493307, {	-- Inert Plunger?
				["coord"] = { 49.7, 90.2, UNDERMINE },
				["questID"] = 85694,
			}),
			i(236961, {	-- Inoperative Gorillion (QS!)
				["cost"] = {
					{ "i", 234431, 1 },	-- Gorillion Batteries
					{ "i", 234433, 1 },	-- Gorillion Chasis
					{ "i", 234432, 1 },	-- Gorillion Engine
					{ "i", 234427, 1 },	-- Gorillion Fork
					{ "i", 234430, 1 },	-- Gorillion Grease
				},
			}),
			o(499119, {	-- Lonely Tub
				["coord"] = { 59.3, 19.0, UNDERMINE },
				["questID"] = 85860,
				["g"] = {
					q(85858, {
						["name"] = "Use nearby fire extinguisher on the Lonely Tub.",
						["coord"] = { 58.8, 18.0, UNDERMINE },
					}),
					i(235279),	-- Scorched Shorts (COSMETIC!)
				},
			}),
			o(477373, {	-- Marooned Floatmingo
				["coord"] = { 63.8, 32.2, UNDERMINE },
				["questID"] = 85494,
				["g"] = {
					i(235273),	-- Distracting Floatmingo
				},
			}),
			o(502917, {	-- Misplaced Work Order
				["coord"] = { 65.6, 14.2, UNDERMINE },
				["questID"] = 86568,	-- spellID 1214841
			}),
			o(474398, {	-- Muff's Auto-Locker
				["coord"] = { 34.3, 82.7, UNDERMINE },
				["questID"] = 85117,
				["g"] = {
					i(234433),	-- Gorillion Chasis
				},
			}),
			o(474393, {	-- Muff's Auto-Locker
				["coord"] = { 71.3, 85.7, UNDERMINE },
				["questID"] = 85114,
				["g"] = {
					i(234430),	-- Gorillion Grease
				},
			}),
			o(474397, {	-- Muff's Auto-Locker
				["coord"] = { 56.6, 55.3, UNDERMINE },
				["questID"] = 85116,
				["g"] = {
					i(234432),	-- Gorillion Engine
				},
			}),
			o(467468, {	-- Muff's Auto-Locker
				["coord"] = { 23.8, 45.4, UNDERMINE },
				["questID"] = 85072,
				["g"] = {
					i(234427),	-- Gorillion Fork
				},
			}),
			o(474396, {	-- Muff's Atuo-Locker
				["coord"] = { 75.1, 23.0, UNDERMINE },
				["questID"] = 85115,
				["g"] = {
					i(234431),	-- Gorillion Batteries
				},
			}),
			o(476068, {	-- Papa's Prized Putter
				["coord"] = { 74.6, 79.9, UNDERMINE },
				["questID"] = 85424,
				["g"] = {
					i(234821),	-- Papa's Prized Putter
				},
			}),
			o(477363, {	-- Particularly Nice Lamp
				["coord"] = { 39.4, 61, UNDERMINE },
				["questID"] = 85492,
				["g"] = {
					i(235221),	-- Particularly Bright Lightbulb
				},
			}),
			o(476070, {	-- Potent Potable
				["coord"] = { 69.6, 21.4, UNDERMINE },
				["questID"] = 85426,
				["g"] = {
					i(235230),	-- Impotent Potable
				},
			}),
			o(499605, {	-- Rocket Drill Safety Manual
				["coord"] = { 72.9, 73.2, THE_RINGING_DEEPS },
				["questID"] = 86570,
			}),
			o(502902, {	-- Second Half of Noggenfogger's Journal
				["coord"] = { 32.8, 58.9, UNDERMINE },
				["questID"] = 86571,
			}),
			o(499207, {	-- Suspicious Book
				["provider"] = { "n", 233775 },	-- vignette
				["coord"] = { 49.8, 65.5, UNDERMINE },
				["questID"] = 85868,
				["g"] = {
					-- TODO: probably need another look
					q(85866, {
						["name"] = "Original spot",
						["coord"] = { 49.8, 66.2, UNDERMINE },
					}),
					q(85867, {
						["name"] = "Next spot",
						["coord"] = { 49.5, 64.5, UNDERMINE },
					}),
					--
					i(235283),	-- Bashful Book
				},
			}),
			o(509567, {	-- The Undermine Guide to Authentic Cooking
				["description"] = "You will only be able to obtain the recipe if you already know the Classic cooking recipe: Undermine Clam Chowder.",
				["coord"] = { 38.5, 88.5, UNDERMINE },
				["g"] = { i(235800) },	-- Recipe: Authentic Undermine Clam Chowder (RECIPE!)
			}),
			o(477376, {	-- Trick Deck of Cards
				["coord"] = { 43.6, 51.5, UNDERMINE },
				["questID"] = 85496,
			}),
			o(477374, {	-- Uncracked Cold Ones
				["coord"] = { 53.3, 52.6, UNDERMINE },
				["questID"] = 85495,
				["g"] = {
					i(234951),	-- Uncracked Cold Ones (TOY!)
				},
			}),
			o(490816, {	-- Unexploded Fireworks
				["description"] = "On the roof",
				["coord"] = { 48.4, 43.1, UNDERMINE },
				["questID"] = 85683,
				["g"] = {
					i(235042),	-- Imminently Exploding Fireworks
				},
			}),
			o(476071, {	-- Unsupervised Takeout
				["coord"] = { 26.7, 42.6, UNDERMINE },
				["questID"] = 85425,
				["g"] = {
					i(233118),	-- Incontinental Takeout
					i(7341),	-- Cubic Zirconia Ring (probably placeholder?)
				},
			}),
		}),
	}),
})));