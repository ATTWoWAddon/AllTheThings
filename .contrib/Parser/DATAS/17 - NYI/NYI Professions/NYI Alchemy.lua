---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(ALCHEMY, {
		n(CRAFTABLES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					i(5632),	-- Cowardly Flight Potion
					i(17967),	-- Refined Scale of Onyxia
				}),
			}),
			expansion(EXPANSION.WRATH, {
				-- 3.0.2
				expansion(EXPANSION.WRATH, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
					i(40248),	-- Eternal Might
				})),
			}),
			expansion(EXPANSION.CATA, {
				-- 4.0.3
				expansion(EXPANSION.CATA, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_3 } }, {
					i(61939),	-- Artisan Alchemist's Tarot
					i(61938),	-- Expert Alchemist's Tarot
					i(61941),	-- Grand Master Alchemist's Tarot
					i(61380),	-- Journeyman Alchemist's Tarot
					i(61940),	-- Master Alchemist's Tarot
				})),
			}),
			expansion(EXPANSION.WOD, {
				-- 6.0.2
				expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
					i(109227),	-- UNUSED
					i(109146),	-- UNUSED
					i(109149),	-- UNUSED
					i(109150),	-- UNUSED
					i(109154),	-- UNUSED
					i(109157),	-- UNUSED
					i(109158),	-- UNUSED
					i(109159),	-- UNUSED
				})),
			}),
			expansion(EXPANSION.BFA, {
				-- 8.2.0
				expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
					i(168502),	-- Potion of Reconstitution
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					i(171295),	-- [DNT] REUSE ME \\ Bolstering Concoction
					i(171296),	-- [DNT] REUSE ME \\ Brilliant Concoction
					i(171297),	-- [DNT] REUSE ME \\ Culinary Concoction
					i(171294),	-- [DNT] REUSE ME \\ Slippery Concoction
					i(171277),	-- [DNT] Spiritual Intellect Flask
					i(171279),	-- [DNT] Spiritual Strength Flask
					i(171293),	-- Alchemist's Pouch
					i(171281),	-- Eternal Cauldron
					i(171282),	-- Eternal Cauldron
					i(171283),	-- Eternal Cauldron
					i(175941),	-- Spiritual Alchemy Stone
					i(175942),	-- Spiritual Alchemy Stone
					i(175943),	-- Spiritual Alchemy Stone
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(202116),	-- Alacritous Alchemist Stone
					i(191535),	-- Alchemical Flavor Pocket+
					i(191536),	-- Alchemical Flavor Pocket++
					i(191537),	-- Alchemical Flavor Pocket+++
					i(191402),	-- Potion of Burning Purification+
					i(191403),	-- Potion of Burning Purification++
					i(191404),	-- Potion of Burning Purification+++
					i(191390),	-- Breezy Potion of Draconic Vigor+
					i(191391),	-- Breezy Potion of Draconic Vigor++
					i(191392),	-- Breezy Potion of Draconic Vigor+++
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					i(212775),	-- zzOldFleeting Flask of Tempered Aggression
					i(212776),	-- zzOldFleeting Flask of Tempered Aggression
					i(212777),	-- zzOldFleeting Flask of Tempered Aggression
					i(212318),	-- QA Algari Healing Potion
					i(212319),	-- QA Algari Mana Potion
					i(212320),	-- QA Cavedweller's Delight
					i(212323),	-- QA Draught of Shocking Revelations
					i(212322),	-- QA Draught of Silent Footfalls
					i(212326),	-- QA Frontline Potion
					i(212324),	-- QA Grotesque Vial
					i(212328),	-- QA Potion of the Reborn Cheetah
					i(212325),	-- QA Potion of Unwavering Focus
					i(212321),	-- QA Slumbering Soul Serum
					i(212327),	-- QA Tempered Potion
					i(224577),	-- Sphere of Infinite Transmutations (PTR Only)
					i(212295),	-- Vicious Flask of Manifested Fury
				})),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					r(11447),	-- Elixir of Waterwalking
					r(22430),	-- Refined Scale of Onyxia
					-- With SpellID attached
					i(5641),	-- Recipe: Cowardly Flight Potion
					i(2556),	-- Recipe: Elixir of Tongues
					i(13500),	-- Recipe: Greater Holy Protection Potion
				}),
			}),
			expansion(EXPANSION.TBC, {
				-- 2.3.0
				expansion(EXPANSION.TBC, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_2_3_0 } }, {
					-- Without SpellID attached
					i(34481),	-- Recipe: Mad Alchemist's Potion
				})),
			}),
			expansion(EXPANSION.WRATH, {
				-- 3.0.2
				expansion(EXPANSION.WRATH, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
					r(54020),	-- Transmute: Eternal Might
					r(53846),	-- Unknown
				})),
			}),
			expansion(EXPANSION.CATA, {
				-- 4.0.3
				expansion(EXPANSION.CATA, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_3 } }, {
					r(85621),	-- Alchemy Tarot
				})),

				-- 4.3.0
				expansion(EXPANSION.CATA, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_4_3_0 } }, {
					-- With SpellID attached
					i(71955),	-- Recipe: Transmute Deepholm Iolite
					i(71956),	-- Recipe: Transmute Elven Peridot
					i(71958),	-- Recipe: Transmute Lava Coral
					i(71957),	-- Recipe: Transmute Lightstone
					i(71960),	-- Recipe: Transmute Queen's Garnet
					i(71959),	-- Recipe: Transmute Shadow Spinel
				})),
			}),
			expansion(EXPANSION.WOD, {
				-- 6.0.2
				expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
					r(168042),	-- Alchemical Catalyst
					r(156586),	-- Alchemist's Cauldron
					r(156567),	-- Draenor Armor Flask
					r(156566),	-- Draenor Spirit Flask
					r(156575),	-- Greater Draenor Armor Flask
					r(156574),	-- Greater Draenor Spirit Flask
					r(156583),	-- Draenor Treasure Finding Potion
					-- With SpellID attached
					i(112049),	-- Recipe: Alchemical Catalyst - Fireweed
					i(112050),	-- Recipe: Alchemical Catalyst - Flytrap
					i(112054),	-- Recipe: Alchemical Catalyst - Lotus
					i(112053),	-- Recipe: Alchemical Catalyst - Orchid
					i(112051),	-- Recipe: Alchemical Catalyst - Starflower
					i(112025),	-- Recipe: Draenor Haste Flask
					i(113625),	-- Recipe: Draenor Versatility Flask
					i(112032),	-- Recipe: Greater Draenor Haste Flask
					i(113626),	-- Recipe: Greater Draenor Versatility Flask
					-- Without SpellID attached
					i(112052),	-- Recipe: Alchemical Catalyst - Arrowbloom
					i(112043),	-- Recipe: Draenic Mana Potion
					i(112022),	-- Recipe: Mighty Shadow Protection Potion
					i(120132),	-- Recipe: Secrets of Draenor Alchemy
				})),
			}),
			expansion(EXPANSION.LEGION, {
				-- 7.3.0
				expansion(EXPANSION.LEGION, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_3_0 } }, {
					r(251660),	-- Unknown
					r(251661),	-- Unknown
					r(251662),	-- Unknown
				})),
			}),
			expansion(EXPANSION.BFA, {
				-- 8.0.1
				expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
					r(252365),	-- Unknown
					r(252366),	-- Unknown
					r(252367),	-- Unknown
					r(252373),	-- Unknown
					r(252374),	-- Unknown
					r(252375),	-- Unknown
				})),

				-- 8.2.0
				expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
					r(298737),	-- Potion of Reconstitution [Rank 1]
					r(298738),	-- Potion of Reconstitution [Rank 2]
					-- With SpellID attached
					i(169493),	-- Recipe: Potion of Reconstitution [Rank 3]
					i(169601),	-- Recipe: Potion of Reconstitution [Rank 3]
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					r(307106),	-- 9.0 Alchemy - Modified Crafting Reagent 02
					r(307107),	-- 9.0 Alchemy - Modified Crafting Reagent 03
					r(307108),	-- 9.0 Alchemy - Modified Crafting Reagent 04
					r(307145),	-- 9.0 Transmute: 04
					r(307146),	-- 9.0 Transmute: 05
					r(307147),	-- 9.0 Transmute: 06
					r(307148),	-- 9.0 Transmute: 07
					r(307149),	-- 9.0 Transmute: 08
					r(307105),	-- Alchemist's Pouch
					r(307109),	-- Unknown
					r(307110),	-- Unknown
					r(307111),	-- Unknown
					r(307112),	-- Unknown
					-- Without SpellID attached
					i(183868),	-- [DNT][REUSE ME] Recipe: Crafter's Mark III
					i(182665),	-- Recipe: Sins to Virtue
				})),

				-- 9.1.0
				expansion(EXPANSION.SL, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_0 } }, {
					r(354860),	-- Unknown
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					r(371635),	-- Demonstration Item Recipe
					r(370771),	-- Dragon Isles Alchemy Troubleshooting Test Recipe (DNT)
					r(382571),	-- Opening
					-- With SpellID attached
					i(191598),	-- Recipe: Alchemical Flavor Pocket (RECIPE!)
					i(191453),	-- Recipe: Frostfire Potion of Draconic Vigor (RECIPE!)
					i(191457),	-- Recipe: Potion of Burning Purification (RECIPE!)
					i(191595),	-- Recipe: Wisp of Tyr (RECIPE!)
					-- Without SpellID attached
					i(194543),	-- Design: Dragon Isles Jewelcrafting Recipe Template (DNT) (RECIPE!)
					i(191428),	-- Recipe: Dragon Isles Alchemy Recipe Template (DNT) (RECIPE!)
					i(194959),	-- Recipe: Dragon Isles Cooking Recipe Template (DNT) (RECIPE!)
					i(191602),	-- Recipe: Advanced Phial Experimentation (RECIPE!)
					i(191600),	-- Recipe: Advanced Potion Experimentation (RECIPE!)
					i(191451),	-- Recipe: Aerated Mana Potion (RECIPE!)
					i(191437),	-- Recipe: Aerated Phial of Deftness (RECIPE!)
					i(191601),	-- Recipe: Basic Phial Experimentation (RECIPE!)
					i(191599),	-- Recipe: Basic Potion Experimentation (RECIPE!)
					i(191443),	-- Recipe: Bottled Putrescence (RECIPE!)
					i(191591),	-- Recipe: Brood Salt (RECIPE!)
					i(191439),	-- Recipe: Charged Phial of Alacrity (RECIPE!)
					i(191441),	-- Recipe: Crystaline Phial of Perception (RECIPE!)
					i(191448),	-- Recipe: Delicate Suspension of Spores (RECIPE!)
					i(191452),	-- Recipe: Elemental Potion of Power (RECIPE!)
					i(191450),	-- Recipe: Elemental Potion of Ultimate Power (RECIPE!)
					i(191596),	-- Recipe: Illustrious Insight (RECIPE!)
					i(191432),	-- Recipe: Iced Phial of Corrupting Rage (RECIPE!)
					i(191585),	-- Recipe: Omnium Draconis (RECIPE!)
					i(191433),	-- Recipe: Phial of Charged Isolation (RECIPE!)
					i(191442),	-- Recipe: Phial of Elemental Chaos (RECIPE!)
					i(191434),	-- Recipe: Phial of Glacial Fury (RECIPE!)
					i(191431),	-- Recipe: Phial of Icy Preservation (RECIPE!)
					i(191435),	-- Recipe: Phial of Static Empowerment (RECIPE!)
					i(191430),	-- Recipe: Phial of Still Air (RECIPE!)
					i(191436),	-- Recipe: Phial of Tepid Versatility (RECIPE!)
					i(191429),	-- Recipe: Phial of the Eye in the Storm (RECIPE!)
					i(191542),	-- Recipe: Potion Cauldron of Power (RECIPE!)
					i(191543),	-- Recipe: Potion Cauldron of Ultimate Power (RECIPE!)
					i(191445),	-- Recipe: Potion of Chilled Clarity (RECIPE!)
					i(191440),	-- Recipe: Potion of Frozen Fatality (RECIPE!)
					i(191444),	-- Recipe: Potion of Frozen Focus (RECIPE!)
					i(191455),	-- Recipe: Potion of Gusts (RECIPE!)
					i(191456),	-- Recipe: Potion of Shocking Disclosure (RECIPE!)
					i(191454),	-- Recipe: Potion of the Hushed Zephyr (RECIPE!)
					i(191446),	-- Recipe: Potion of Withering Vitality (RECIPE!)
					i(191584),	-- Recipe: Primal Convergent (RECIPE!)
					i(191449),	-- Recipe: Refreshing Healing Potion (RECIPE!)
					i(191447),	-- Recipe: Residual Neural Channeling Agent (RECIPE!)
					i(191438),	-- Recipe: Steaming Phial of Finesse (RECIPE!)
					i(191581),	-- Recipe: Transmute: Awakened Air (RECIPE!)
					i(191582),	-- Recipe: Transmute: Decay to Elements (RECIPE!)
					i(191583),	-- Recipe: Transmute: Order to Elements (RECIPE!)
					i(191592),	-- Recipe: Writhefire Oil (RECIPE!)
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					r(430606),	-- Unknown
					r(430613),	-- Unknown
					r(433271),	-- Unknown
					r(433604),	-- Unknown
					r(433605),	-- Unknown
					r(433606),	-- Unknown
					r(433607),	-- Unknown
					r(433608),	-- Unknown
					-- With SpellID attached
					i(224019),	-- Recipe: Vicious Flask of Manifested Fury (RECIPE!)
				})),
			}),
		}),
	}),
}));
