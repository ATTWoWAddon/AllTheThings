---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(FISHING, {
		n(CRAFTABLES, {
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(198439),	-- Aged Recipe in a Bottle
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					i(222094),	-- Arathor Hammerfish
					i(222531),	-- Arathor Hammerfish
					i(222095),	-- Azj-Kahet Slum Shark
					i(222532),	-- Azj-Kahet Slum Shark
					i(222091),	-- Bismuth Bitterling
					i(222528),	-- Bismuth Bitterling
					i(222089),	-- Bloody Perch
					i(222526),	-- Bloody Perch
					i(219676),	-- Common Fish A
					i(219677),	-- Common Fish B
					i(219678),	-- Common Fish C
					i(219679),	-- Common Fish D
					i(222090),	-- Crystalline Sturgeon
					i(222527),	-- Crystalline Sturgeon
					i(222106),	-- Cursed Ghoulfish
					i(222543),	-- Cursed Ghoulfish
					i(222092),	-- Dornish Pike
					i(222529),	-- Dornish Pike
					i(220140),	-- Goldengill Trout
					i(222096),	-- Goldengill Trout
					i(222107),	-- Kah, King of the Deeps
					i(222544),	-- Kah, King of the Deeps
					i(222097),	-- Nibbling Minnow
					i(222534),	-- Nibbling Minnow
					i(222098),	-- Pale Huskfish
					i(222535),	-- Pale Huskfish
					i(222105),	-- Queen's Lurefish
					i(222542),	-- Queen's Lurefish
					i(222093),	-- Quiet River Bass
					i(222530),	-- Quiet River Bass
					i(219684),	-- Rare Fish A
					i(219685),	-- Rare Fish B
					i(219686),	-- Rare Fish C
					i(219687),	-- Rare Fish D
					i(219688),	-- Rare Fish E
					i(219689),	-- Rare Fish F
					i(222099),	-- Regal Dottyback
					i(222536),	-- Regal Dottyback
					i(222100),	-- Roaring Anglerseeker
					i(222537),	-- Roaring Anglerseeker
					i(222103),	-- Sanguine Dogfish
					i(222540),	-- Sanguine Dogfish
					i(222101),	-- Specular Rainbowfish
					i(222538),	-- Specular Rainbowfish
					i(222104),	-- Spiked Sea Raven
					i(222541),	-- Spiked Sea Raven
					i(219680),	-- Uncommon Fish A
					i(219681),	-- Uncommon Fish B
					i(219682),	-- Uncommon Fish C
					i(219683),	-- Uncoomon Fish D
					i(222102),	-- Whispering Stargazer
					i(222539),	-- Whispering Stargazer
				})),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					-- Without SpellID attached
					i(16082),	-- Artisan Fishing - The Way of the Lure
				}),
			}),
			expansion(EXPANSION.WRATH, {
				-- 3.1.0
				expansion(EXPANSION.WRATH, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_3_1_0 } }, {
					r(62734),	-- Fishing
				})),
			}),
			expansion(EXPANSION.CATA, {
				-- 4.0.1
				expansion(EXPANSION.CATA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_1 } }, {
					-- Without SpellID attached
					i(46055),	-- Grand Master Fishing - Deep Sea Adventures
					i(46054),	-- Journeyman Fishing - Fishing for Dummies
				})),
			}),
			expansion(EXPANSION.MOP, {
				-- 5.0.4
				expansion(EXPANSION.MOP, patch(0,4), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
					r(131474),	-- Fishing
					r(131476),	-- Fishing
					r(131490),	-- Fishing
				})),
			}),
			expansion(EXPANSION.BFA, {
				-- 8.0.1
				expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
					r(272011),	-- Fishing
				})),
			}),
		}),
	}),
}));
