---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_2_5 } }, {
	m(AMIRDRASSIL, {
		n(VENDORS, bubbleDown({ ["races"] = ALLIANCE_ONLY }, {
			n(216285, {	-- Ellandrieth <General Goods>
				i(248401, { 	-- Ornamental Kaldorei Glaive (DECOR!)
					["sourceQuest"] = 76213,	-- Honor of the Goddess
					["races"] = NIGHTELF,
					["timeline"] = { ADDED_11_2_7 },
					["cost"] = { { "c", DRAGON_SUPPLIES, 500 } },
				}),
				i(245704, {	-- Bel'ameth Barrel (DECOR!)
					["timeline"] = { ADDED_11_2_7 },
					["cost"] = { { "c", DRAGON_SUPPLIES, 350 } },
				}),
				i(246089, {	-- Bel'ameth Wooden Table (DECOR!)
					["timeline"] = { ADDED_11_2_7 },
					["cost"] = { { "c", DRAGON_SUPPLIES, 350 } },
				}),
				i(246100, {	-- Small Bel'ameth Tent (DECOR!)
					["timeline"] = { ADDED_11_2_7 },
					["cost"] = { { "c", DRAGON_SUPPLIES, 500 } },
				}),
				i(245625, {	-- Bel'ameth Bench (DECOR!)
					["timeline"] = { ADDED_11_2_7 },
					["cost"] = { { "c", DRAGON_SUPPLIES, 250 } },
				}),
				i(251022, {	-- Bel'ameth Traveler's Pack (DECOR!)
					["sourceQuest"] = 78864,	-- The Returning
					["timeline"] = { ADDED_11_2_7 },
					["cost"] = { { "c", DRAGON_SUPPLIES, 300 } },
				}),
			}),
			n(216286, {	-- Moon Priestess Lasara
				["coord"] = { 46.5, 70.6, AMIRDRASSIL },
				["sym"] = {
					{"select", "npcID", 50305 },	-- Select Moon Priestess Lasara <Darnassus Quartermaster>
					{"pop"},						-- Discard Header and aquire their children
				},
				["groups"] = {
					i(210424, {	-- Darnassian Tabard
						["cost"] = { { "c", DRAGON_SUPPLIES, 250 } },
					}),
					i(210418, {	-- Darnassian Cloak (COSMETIC!)
						["cost"] = { { "c", DRAGON_SUPPLIES, 250 } },
					}),
					i(210415, {	-- Darnassian Moonsilver Spaulders (COSMETIC!)
						["cost"] = { { "c", DRAGON_SUPPLIES, 250 } },
					}),
					i(257352, {	-- Large Brazier of Elune
						["timeline"] = { ADDED_11_2_7 },
						["cost"] = { { "c", DRAGON_SUPPLIES, 300 } },
					}),
				},
			}),
			n(216284, {	-- Mythrin'dir <Trade Goods>
				["coord"] = { 54.1, 60.8, AMIRDRASSIL },
				["groups"] = {
					i(248759, {	-- Amirdrassil Stool (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
						["cost"] = { { "c", DRAGON_SUPPLIES, 250 } },
					}),
					i(246091, {	-- Bel'ameth Crafter's Tent (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
						["cost"] = { { "c", DRAGON_SUPPLIES, 500 } },
					}),
					i(211399),	-- Technique: Glyph of the Lunar Chameleon
				},
			}),
		})),
	}),
})));
