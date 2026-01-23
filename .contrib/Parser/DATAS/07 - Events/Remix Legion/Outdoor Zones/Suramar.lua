-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	m(BROKEN_ISLES, {
		m(SURAMAR, {
			["icon"] = 1409002,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42586),	-- Campaign: Suramar
					ach(60813),	-- Elusive Foes: Suramar
					ach(60812),	-- Explore Suramar
					ach(60814),	-- Hidden Treasures: Suramar
					ach(42537),	-- Insurrection
					ach(42551, {	-- Looking for Group: Suramar
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60843,	-- Court of Stars
							60840,	-- The Arcway
							60865,	-- The Nighthold
						}},
					}),
					ach(61112, {	-- Lorerunner of Suramar
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							42586,	-- Campaign: Suramar
							61107,	-- Sojourner of Suramar
						}},
					}),
					ach(61107),	-- Sojourner of Suramar
					ach(42605, {	-- Suramar
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							42586,	-- Campaign: Suramar
							42551,	-- Looking for Group: Suramar
							42628,	-- The Nightfallen
							42564,	-- Tour Suramar
						}},
						["groups"] = {	-- Ensemble: Kaldorei Queen's Royal Vestments
							i(253344),	-- Kaldorei Queen's Sarong
							i(253345),	-- Kaldorei Queen's Crown
							i(253346),	-- Kaldorei Queen's Robe
							i(253347),	-- Kaldorei Queen's Sash
							i(253348),	-- Kaldorei Queen's Anklets
							i(253349),	-- Kaldorei Queen's Bangles
						},
					}),
					ach(42628, {	-- The Nightfallen
						i(256677, {	-- Large Legion Candle (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					}),
					ach(42564, {	-- Tour Suramar
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60813,	-- Elusive Foes: Suramar
							60812,	-- Explore Suramar
							60814,	-- Hidden Treasures: Suramar
						}},
					}),
				}),
				n(ZONE_REWARDS, {
					filter(CLOTH, {
						i(240537),	-- Manasinged Amice
						i(240534),	-- Manasinged Cinch
						i(240536),	-- Manasinged Doublet
						i(240467),	-- Manasinged Handwraps
						i(240538),	-- Manasinged Hood
						i(240470),	-- Manasinged Leggings
						i(240535),	-- Manasinged Robe
						i(240469),	-- Manasinged Slippers
						i(240468),	-- Manasinged Wraps
					}),
					filter(LEATHER, {
						i(240432),	-- Nighthide Cuffs
						i(240436),	-- Nighthide Gambeson
						i(240435),	-- Nighthide Girdle
						i(240431),	-- Nighthide Grips
						i(240439),	-- Nighthide Hat
						i(240438),	-- Nighthide Spaulders
						i(240434),	-- Nighthide Trousers
						i(240433),	-- Nighthide Waders
					}),
					filter(MAIL, {
						i(240408),	-- Helheim Boots
						i(240406),	-- Helheim Handguards
						i(240411),	-- Helheim Haubergeon
						i(240409),	-- Helheim Leggings
						i(240413),	-- Helheim Mask
						i(240412),	-- Helheim Spaulders
						i(240407),	-- Helheim Vambraces
						i(240410),	-- Helheim Waistband
					}),
					filter(PLATE, {
						i(240387),	-- Jandvik Diver's Breastplate
						i(240388),	-- Jandvik Diver's Epaulets
						i(240382),	-- Jandvik Diver's Gauntlets
						i(240386),	-- Jandvik Diver's Girdle
						i(240389),	-- Jandvik Diver's Helmet
						i(240385),	-- Jandvik Diver's Legguards
						i(240384),	-- Jandvik Diver's Warboots
						i(240383),	-- Jandvik Diver's Wristguards
					}),
				}),
			},
		}),
	}),
})));
