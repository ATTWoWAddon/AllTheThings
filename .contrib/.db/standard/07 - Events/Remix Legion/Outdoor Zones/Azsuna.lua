-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	m(BROKEN_ISLES, {
		m(AZSUNA, {
			["icon"] = 1408998,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42319, {	-- Azsuna
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							42317,	-- Campaign: Azsuna
							42318,	-- Court of Farondis
							42519,	-- Looking for Group: Azsuna
							42515,	-- Tour Azsuna
						}},
						["groups"] = { i(252301) },	-- Warden's Companion (PET!)
					}),
					ach(42317),	-- Campaign: Azsuna
					ach(42318, {	-- Court of Farondis
						i(250307, {	-- Tome of the Corrupt (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					}),
					ach(42518),	-- Elusive Foes: Azsuna
					ach(42516),	-- Explore Azsuna
					ach(42517),	-- Hidden Treasures: Azsuna
					ach(42519, {	-- Looking for Group: Azsuna
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60819,	-- Eye of Azshara
							60822,	-- Vault of the Wardens
						}},
					}),
					ach(61108, {	-- Lorerunner of Azsuna
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							42317,	-- Campaign: Azsuna
							61103,	-- Sojourner of Azsuna
						}},
					}),
					ach(61103),	-- Sojourner of Azsuna
					ach(61218, {	-- The Wardens
						i(251778, {	-- Sentinel’s Moonwing Gaze (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					}),
					ach(42515, {	-- Tour Azsuna
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							42518,	-- Elusive Foes: Azsuna
							42516,	-- Explore Azsuna
							42517,	-- Hidden Treasures: Azsuna
						}},
					}),
				}),
				n(RARES, {
					n(244782, {	-- Eye of Greed
						["coord"] = { 66.0, 45.9, AZSUNA },
					}),
				}),
				n(TREASURES, {
					header(HEADERS.Object, 240645, {	-- Glimmering Treasure Chest
						["provider"] = { "o", 240645 },	-- Glimmering Treasure Chest
						["groups"] = { i(251674) },	-- Sssurine's Luxurious Sssandals
					}),
				}),
				n(ZONE_REWARDS, {
					filter(CLOAKS, {
						i(247481),	-- Astromancer's Greatcloak
					}),
					filter(CLOTH, {
						i(240716),	-- Leyline Scholar's Bindings
						i(240710),	-- Leyline Scholar's Cowl
						i(240717),	-- Leyline Scholar's Gloves
						i(240714),	-- Leyline Scholar's Leggings
						i(240713),	-- Leyline Scholar's Sash
						i(240711),	-- Leyline Scholar's Shawl
						i(240715),	-- Leyline Scholar's Slippers
						i(240712),	-- Leyline Scholar's Vestments
					}),
					filter(LEATHER, {
						i(240762),	-- Llothien Prowler's Belt
						i(240765),	-- Llothien Prowler's Cuffs
						i(240766),	-- Llothien Prowler's Gloves
						i(240761),	-- Llothien Prowler's Harness
						i(240759),	-- Llothien Prowler's Hat
						i(240763),	-- Llothien Prowler's Legguards
						i(240760),	-- Llothien Prowler's Shoulderguard
						i(240764),	-- Llothien Prowler's Waders
					}),
					filter(MAIL, {
						i(240795),	-- Breeches of Remembered Eternity
						i(240793),	-- Chainmail of Remembered Eternity
						i(240794),	-- Cinch of Remembered Eternity
						i(240791),	-- Coif of Remembered Eternity
						i(240798),	-- Grips of Remembered Eternity
						i(240792),	-- Pinions of Remembered Eternity
						i(240796),	-- Sollerets of Remembered Eternity
						i(240797),	-- Vambraces of Remembered Eternity
					}),
					filter(PLATE, {
						i(240688),	-- Nar'thalas Graduate's Breastplate
						i(240686),	-- Nar'thalas Graduate's Faceguard
						i(240690),	-- Nar'thalas Graduate's Legguards
						i(240691),	-- Nar'thalas Graduate's Sabatons
						i(240687),	-- Nar'thalas Graduate's Shoulderguards
						i(240689),	-- Nar'thalas Graduate's Greatbelt
						i(240692),	-- Nar'thalas Graduate's Vambraces
						i(240693),	-- Nar'thalas Graduate's Handguards
					}),
				}),
			},
		}),
	}),
})));
