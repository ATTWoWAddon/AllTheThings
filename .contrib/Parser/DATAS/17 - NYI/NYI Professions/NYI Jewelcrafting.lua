---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(JEWELCRAFTING, {
		n(CRAFTABLES, {
			expansion(EXPANSION.TBC, {
				-- 2.0.5
				expansion(EXPANSION.TBC, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_2_0_5 } }, {
					i(21793),	-- Arcanite Sword Pendant
					i(21780),	-- Blood Crown
					i(20952),	-- Cut Agate
					i(20962),	-- Cut Aquamarine
					i(21786),	-- Cut Azerothian Diamond
					i(20957),	-- Cut Citrine
					i(21785),	-- Cut Emerald
					i(20953),	-- Cut Jade
					i(20819),	-- Cut Malachite
					i(20829),	-- Cut Moonstone
					i(21773),	-- Cut Opal
					i(20965),	-- Cut Ruby
					i(20825),	-- Cut Shadowgem
					i(21772),	-- Cut Sapphire
					i(20822),	-- Cut Tigerseye
					i(20956),	-- Silver Rose Pendant
				})),
				-- 2.1.3
				expansion(EXPANSION.TBC, patch(1,3), bubbleDownSelf({ ["timeline"] = { CREATED_2_1_3 } }, {
					i(25884),	-- Primal Stone Statue
				})),

				-- 2.2.0
				expansion(EXPANSION.TBC, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_2_2_0 } }, {
					i(27774),	-- zzOLDMighty Blood Garnet
					i(27811),	-- zzOLDMighty Blood Garnet

				})),
			}),
			expansion(EXPANSION.WRATH, {
				-- 3.0.2
				expansion(EXPANSION.WRATH, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
					i(37430),	-- Solid Sky Sapphire
				})),
			}),
			expansion(EXPANSION.CATA, {
				-- 4.0.1
				expansion(EXPANSION.CATA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_1 } }, {
					i(52107),	-- Resolute Hessonite
					i(52150),	-- Perfect Resolute Hessonite
					i(52092),	-- Mystic Alicite
					i(52165),	-- Perfect Mystic Alicite
				})),
			}),
			expansion(EXPANSION.MOP, {
				-- 5.2.0
				expansion(EXPANSION.MOP, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_2_0 } }, {
					i(93597),	-- Crafted Dreadful Gladiator's Fleshslicer
					i(93599),	-- Crafted Dreadful Gladiator's Slasher
				})),
			}),
			expansion(EXPANSION.BFA, {
				-- 8.0.1
				expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
					i(159938),	-- Honorable Combatant's Staff of Alacrity
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					i(173120),	-- 9.x Cut Rare
					i(173118),	-- 9.x Cut Rare
					i(173119),	-- 9.x Cut Rare
					i(173117),	-- 9.x Raw Blue
					i(173111),	-- 9.x Raw Rare
					i(173116),	-- 9.x Raw Red
					i(173115),	-- 9.x Raw Yellow
					i(173164),	-- [DNT] REUSE ME
					i(173165),	-- [DNT] REUSE ME
					i(173166),	-- [DNT] REUSE ME
					i(173167),	-- [DNT] REUSE ME
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(191629),	-- 10.0 Jewelcrafting Gem Template (DNT)
					i(193034),	-- Ludicrously Luxurious Lucky Loop
					i(194112),	-- Straddling Illimited Diamond
					i(194113),	-- Straddling Illimited Diamond
					i(194114),	-- Straddling Illimited Diamond
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					i(215139),	-- Copy Copy Elemental Lariat
					i(215143),	-- Copy Copy Elemental Lariat
					i(215146),	-- JC Gemcutting Toy
				})),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.TBC, {
				-- 2.0.5
				expansion(EXPANSION.TBC, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_2_0_5 } }, {
					-- With SpellID attached
					i(21958),	-- Design: Arcanite Sword Pendant
					i(21959),	-- Design: Blood Crown
					i(21951),	-- Design: Cut Azerothian Diamond
					i(21950),	-- Design: Cut Emerald - Deprecated
					i(20972),	-- Design: Silver Rose Pendant

				})),

				-- 2.1.3
				expansion(EXPANSION.TBC, patch(1,3), bubbleDownSelf({ ["timeline"] = { CREATED_2_1_3 } }, {
					-- With SpellID attached
					i(25888),	-- Design: Primal Stone Statue
				})),

				-- 2.4.0
				expansion(EXPANSION.TBC, patch(4,0), bubbleDownSelf({ ["timeline"] = { CREATED_2_4_0 } }, {
					-- Without SpellID attached
					i(35533),	-- Design: Amulet of Flowing Life
					i(35534),	-- Design: Hard Khorium Band
					i(35535),	-- Design: Hard Khorium Choker
					i(35536),	-- Design: Loop of Forged Power
					i(35537),	-- Design: Pendant of Sunfire
					i(35538),	-- Design: Ring of Flowing Life
				})),
			}),
			expansion(EXPANSION.WRATH, {
				-- 3.0.2
				expansion(EXPANSION.WRATH, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
					-- Without SpellID attached
					i(41408),	-- ZZOLD Design: Austere Earthsiege Diamond
					i(41412),	-- ZZOLD Design: Beaming Earthsiege Diamond
					i(41404),	-- ZZOLD Design: Bracing Earthsiege Diamond
					i(41418),	-- ZZOLD Design: Chaotic Skyflare Diamond
					i(41419),	-- ZZOLD Design: Destructive Skyflare Diamond
					i(41414),	-- ZZOLD Design: Effulgent Skyflare Diamond
					i(41420),	-- ZZOLD Design: Ember Skyflare Diamond
					i(41421),	-- ZZOLD Design: Enigmatic Skyflare Diamond
					i(41405),	-- ZZOLD Design: Eternal Earthsiege Diamond
					i(41416),	-- ZZOLD Design: Forlorn Skyflare Diamond
					i(41417),	-- ZZOLD Design: Impassive Skyflare Diamond
					i(41403),	-- ZZOLD Design: Insightful Earthsiege Diamond
					i(41411),	-- ZZOLD Design: Invigorating Earthsiege Diamond
					i(41409),	-- ZZOLD Design: Persistent Earthsiege Diamond
					i(41406),	-- ZZOLD Design: Powerful Earthsiege Diamond
					i(41407),	-- ZZOLD Design: Relentless Earthsiege Diamond
					i(41413),	-- ZZOLD Design: Revitalizing Skyflare Diamond
					i(41422),	-- ZZOLD Design: Swift Skyflare Diamond
					i(41415),	-- ZZOLD Design: Tireless Skyflare Diamond
					i(41410),	-- ZZOLD Design: Trenchant Earthsiege Diamond
					i(41423),	-- ZZOLDDesign: Thundering Skyflare Diamond
				})),
			}),
			expansion(EXPANSION.CATA, {
				-- 4.0.1
				expansion(EXPANSION.CATA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_1 } }, {
					i(41403),	-- ZZOLD Design: Insightful Earthsiege Diamond
					i(41404),	-- ZZOLD Design: Bracing Earthsiege Diamond
					i(41405),	-- ZZOLD Design: Eternal Earthsiege Diamond
					i(41406),	-- ZZOLD Design: Powerful Earthsiege Diamond
					i(41407),	-- ZZOLD Design: Relentless Earthsiege Diamond
					i(41408),	-- ZZOLD Design: Austere Earthsiege Diamond
					i(41409),	-- ZZOLD Design: Persistent Earthsiege Diamond
					i(41410),	-- ZZOLD Design: Trenchant Earthsiege Diamond
					i(41411),	-- ZZOLD Design: Invigorating Earthsiege Diamond
					i(41412),	-- ZZOLD Design: Beaming Earthsiege Diamond
					i(41413),	-- ZZOLD Design: Revitalizing Skyflare Diamond
					i(41414),	-- ZZOLD Design: Effulgent Skyflare Diamond
					i(41415),	-- ZZOLD Design: Tireless Skyflare Diamond
					i(41416),	-- ZZOLD Design: Forlorn Skyflare Diamond
					i(41417),	-- ZZOLD Design: Impassive Skyflare Diamond
					i(41418),	-- ZZOLD Design: Chaotic Skyflare Diamond
					i(41419),	-- ZZOLD Design: Destructive Skyflare Diamond
					i(41420),	-- ZZOLD Design: Ember Skyflare Diamond
					i(41421),	-- ZZOLD Design: Enigmatic Skyflare Diamond
					i(41422),	-- ZZOLD Design: Swift Skyflare Diamond
					i(41423),	-- ZZOLDDesign: Thundering Skyflare Diamond
					r(73233),	-- Mystic Alicite
					r(73259),	-- Resolute Hessonite
				})),

				-- 4.0.3
				expansion(EXPANSION.CATA, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_3 } }, {
					i(52497),	-- Design: Jeweler's Sapphire Monocle
					i(52499),	-- Design: Figurine - King of Boars
					i(52500),	-- Design: Figurine - Demon Panther
					i(52501),	-- Design: Figurine - Earthen Guardian
					i(52502),	-- Design: Figurine - Jeweled Serpent
					i(52503),	-- Design: Figurine - Dream Owl
				})),
			}),
			expansion(EXPANSION.WOD, {
				-- 6.0.1
				expansion(EXPANSION.WOD, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
					i(116080),	-- Design: Greater Taladite Amplifier
					i(120131),	-- Recipe: Secrets of Draenor Jewelcrafting
					i(116087),	-- Design: Glowing Blackrock Band
					i(116081),	-- Design: Glowing Iron Band
					i(116084),	-- Design: Glowing Iron Choker
					i(116088),	-- Design: Shifting Blackrock Band
					i(116082),	-- Design: Shifting Iron Band
					i(116085),	-- Design: Shifting Iron Choker
					i(116089),	-- Design: Whispering Blackrock Band
					i(116083),	-- Design: Whispering Iron Band
					i(116086),	-- Design: Whispering Iron Choker
				})),
			}),
			expansion(EXPANSION.BFA, {
				-- 8.0.1
				expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
					r(269731),	-- Honorable Combatant's Staff of Alacrity [Rank 1]
					r(256612),	-- Mass Prospect Monelite
					r(256623),	-- Mass Prospect Platinum
					r(256614),	-- Mass Prospect Storm Silver
					-- With SpellID attached
					i(162383),	-- Design: Honorable Combatant's Staff of Alacrity [Rank 2]
					i(162384),	-- Design: Honorable Combatant's Staff of Alacrity [Rank 3]
				})),

				-- 8.2.0
				expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
					r(301993),	-- Prospecting
					r(301994),	-- Prospecting
					r(302706),	-- Prospecting
					r(302707),	-- Prospecting
					r(302708),	-- Prospecting
					r(302710),	-- Prospecting
					r(302711),	-- Prospecting
					r(302712),	-- Prospecting
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					r(311931),	-- 9.0 Jewelcrafting - Modified Crafting Reagent 01
					r(311933),	-- 9.0 Jewelcrafting - Modified Crafting Reagent 02
					r(311934),	-- 9.0 Jewelcrafting - Modified Crafting Reagent 03
					r(311935),	-- 9.0 Jewelcrafting - Modified Crafting Reagent 04
					r(311936),	-- 9.0 Jewelcrafting - Modified Crafting Reagent 05
					r(311937),	-- 9.0 Jewelcrafting - Modified Crafting Reagent 06
					r(311938),	-- 9.0 Jewelcrafting - Modified Crafting Reagent 07
					r(311939),	-- 9.0 Jewelcrafting - Modified Crafting Reagent 08
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					r(382584),	-- Opening (RECIPE!)
					r(391784),	-- Wisp of Tyr (RECIPE!)
					-- With SpellID attached
					i(194674),	-- Design: Soul Drainer/Elemental Soul Cage (RECIPE!)
					i(194655),	-- Design: Ludicrously Luxurious Lucky Loop (RECIPE!)
					i(194673),	-- Design: Straddling Illimited Diamond (RECIPE!)
					-- Without SpellID attached
					i(194672),	-- Design: Band of New Beginnings (RECIPE!)
					i(194630),	-- Design: Blotting Sand (RECIPE!)
					i(194656),	-- Design: Bold-Print Bifocals (RECIPE!)
					i(194659),	-- Design: Chromatic Focus (RECIPE!)
					i(194601),	-- Design: Crafty Alexstraszite (RECIPE!)
					i(194596),	-- Design: Crafty Queen's Ruby (RECIPE!)
					i(194609),	-- Design: Crafty Ysemerald (RECIPE!)
					i(194604),	-- Design: Deadly Alexstraszite (RECIPE!)
					i(194627),	-- Design: Draconic Vial (RECIPE!)
					i(194665),	-- Design: Dreamer's Vision (RECIPE!)
					i(194667),	-- Design: Earthwarden's Prize (RECIPE!)
					i(194670),	-- Design: Elemental Harmony (RECIPE!)
					i(194598),	-- Design: Energized Vibrant Emerald (RECIPE!)
					i(194622),	-- Design: Fierce Illimited Diamond (RECIPE!)
					i(194618),	-- Design: Forceful Nozdorite (RECIPE!)
					i(194616),	-- Design: Fractured Neltharite (RECIPE!)
					i(194628),	-- Design: Frameless Lens (RECIPE!)
					i(194629),	-- Design: Glossy Stone (RECIPE!)
					i(194621),	-- Design: Inscribed Illimited Diamond (RECIPE!)
					i(194617),	-- Design: Jagged Nozdorite (RECIPE!)
					i(194669),	-- Design: Jeweled Dragon's Heart (RECIPE!)
					i(194653),	-- Design: Jeweled Offering (RECIPE!)
					i(194666),	-- Design: Keeper's Glory (RECIPE!)
					i(194657),	-- Design: Left-Handed Magnifying Glass (RECIPE!)
					i(194639),	-- Design: Marvelous Mood Ring (RECIPE!)
					i(194643),	-- Design: Narcissist's Sculpture (RECIPE!)
					i(194636),	-- Design: Pendant of Impending Perils (RECIPE!)
					i(194631),	-- Design: Pounce (RECIPE!)
					i(194652),	-- Design: Projection Prism (RECIPE!)
					i(194619),	-- Design: Puissant Nozdorite (RECIPE!)
					i(194664),	-- Design: Queen's Gift (RECIPE!)
					i(194612),	-- Design: Quick Ysemerald (RECIPE!)
					i(194624),	-- Design: Resplendent Illimited Diamond (RECIPE!)
					i(194644),	-- Design: Revitalizing Red Carving (RECIPE!)
					i(194599),	-- Design: Sensei's Sundered Onyx (RECIPE!)
					i(194626),	-- Design: Shimmering Clasp (RECIPE!)
					i(198839),	-- Design: Signet of Titanic Insight (RECIPE!)
					i(194623),	-- Design: Skillful Illimited Diamond (RECIPE!)
					i(194600),	-- Design: Solid Eternity Amber (RECIPE!)
					i(194749),	-- Design: Split-Lens Specs (RECIPE!)
					i(194645),	-- Design: Statue of Tyr's Herald (RECIPE!)
					i(194620),	-- Design: Steady Nozdorite (RECIPE!)
					i(194608),	-- Design: Stormy Malygite (RECIPE!)
					i(194658),	-- Design: Sundered Onyx Loupes (RECIPE!)
					i(194625),	-- Design: Tiered Medallion Setting (RECIPE!)
					i(194668),	-- Design: Timewatcher's Patience (RECIPE!)
					i(194607),	-- Design: Zen Malygite (RECIPE!)
					i(194597),	-- Design: Zen Mystic Sapphire (RECIPE!)
					i(194615),	-- Design: Zen Neltharite (RECIPE!)
				})),

				-- 10.0.7
				expansion(EXPANSION.DF, patch(0,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_7 } }, {
					-- With SpellID attached
					i(204218),	-- Design: Primordial Pulverizing (RECIPE!)
				})),

				-- 10.1.5
				expansion(EXPANSION.DF, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_5 } }, {
					r(412557),	-- TEST CRUSHING (DNT) (RECIPE!)
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					r(435335),	-- Apply Socket (RECIPE!)
					-- With SpellID attached
					i(225431),	-- Design: Vicious Jeweler's Setting (RECIPE!)
					-- Without SpellID attached
					i(223083),	-- Design: Elemental Focusing Lens (RECIPE!)
					i(223084),	-- Design: Prismatic Null Stone (RECIPE!)
				})),
			}),
		}),
	}),
}));
