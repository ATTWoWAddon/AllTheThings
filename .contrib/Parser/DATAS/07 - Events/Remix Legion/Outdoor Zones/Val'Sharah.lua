-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	m(BROKEN_ISLES, {
		m(VALSHARAH, {
			["icon"] = 1409010,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42617),	-- Campaign: Val'Sharah
					ach(42619, {	-- Dreamweavers
						i(250407, {	-- Legion’s Fel Brazier (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					}),
					ach(60810),	-- Elusive Foes: Val'sharah
					ach(60809),	-- Explore Val'sharah
					ach(60811),	-- Hidden Treasures: Val'sharah
					ach(42663, {	-- Looking for Group: Val'Sharah
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60834,	-- Black Rook Hold
							60837,	-- Darkheart Thicket
							60859,	-- The Emerald Nightmare
						}},
					}),
					ach(61111, {	-- Lorerunner of Val'Sharah
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							42617,	-- Campaign: Val'Sharah
							61106,	-- Sojourner of Val'Sharah
						}},
					}),
					ach(61106),	-- Sojourner of Val'Sharah
					ach(42594, {	-- Tour Val'Sharah
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60810,	-- Elusive Foes: Val'sharah
							60809,	-- Explore Val'Sharah
							60811,	-- Hidden Treasures: Val'sharah
						}},
					}),
					ach(42630, {	-- Val'Sharah
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							42617,	-- Campaign: Val'Sharah
							42619,	-- Dreamweavers
							42663,	-- Looking for Group: Val'Sharah
							42594,	-- Tour Val'Sharah
						}},
						["groups"] = { i(253353) },	-- Illusion: Felshatter (ILLUSION!)
					}),
				}),
				n(ZONE_REWARDS, {
					filter(CLOAKS, {
						i(240627),	-- Cape of Remembered Eternity
						i(240612),	-- Shroud of Remembered Eternity
					}),
					filter(CLOTH, {
						i(240729),	-- Crescent Vale Belt
						i(240731),	-- Crescent Vale Boots
						i(240726),	-- Crescent Vale Cowl
						i(240733),	-- Crescent Vale Gloves
						i(240730),	-- Crescent Vale Legwraps
						i(240727),	-- Crescent Vale Shawl
						i(240728),	-- Crescent Vale Vestments
						i(240732),	-- Crescent Vale Wristwraps
					}),
					filter(LEATHER, {
						i(240757),	-- Sablehide Bindings
						i(240756),	-- Sablehide Boots
						i(240755),	-- Sablehide Breeches
						i(240758),	-- Sablehide Grips
						i(240751),	-- Sablehide Headgear
						i(240752),	-- Sablehide Mantle
						i(240754),	-- Sablehide Strap
						i(240753),	-- Sablehide Tunic
					}),
					filter(MAIL, {
						i(240785),	-- Dreadthorn Chestguard
						i(240788),	-- Dreadthorn Greaves
						i(240790),	-- Dreadthorn Handguards
						i(240783),	-- Dreadthorn Helmet
						i(240787),	-- Dreadthorn Legguards
						i(240784),	-- Dreadthorn Spaulders
						i(240786),	-- Dreadthorn Waistband
						i(240789),	-- Dreadthorn Wristguards
					}),
					filter(PLATE, {
						i(240696),	-- Thunderpeak Bone Battleplate
						i(240694),	-- Thunderpeak Bone Faceguard
						i(240701),	-- Thunderpeak Bone Gauntlets
						i(240697),	-- Thunderpeak Bone Girdle
						i(240695),	-- Thunderpeak Bone Spaulders
						i(240699),	-- Thunderpeak Bone Stompers
						i(240700),	-- Thunderpeak Bone Vambraces
						i(240698),	-- Thunderpeak Bone Wargreaves
					}),
				}),
			},
		}),
	}),
})));
