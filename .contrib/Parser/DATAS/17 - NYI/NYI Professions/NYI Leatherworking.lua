---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(LEATHERWORKING, {
		n(CRAFTABLES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					i(8195),	-- Nightscape Cloak
					i(15141),	-- Onyxia Scale Breastplate
				}),
			}),
			expansion(EXPANSION.WRATH, {
				-- 3.0.2
				expansion(EXPANSION.WRATH, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
					i(41264),	-- Deflecting Bracers
					i(39710),	-- Verdant Tundra Belt
					i(39709),	-- Verdant Tundra Boots
					i(39711),	-- Verdant Tundra Bracers
					i(39707),	-- Verdant Tundra Cap
					i(39708),	-- Verdant Tundra Shoulderpads
				})),

				-- 3.x.x
				n(P3xx, {
					i(38378)	-- Wyrmscale Leg Armor
				}),
			}),
			expansion(EXPANSION.CATA, {
				-- 4.0.1
				expansion(EXPANSION.CATA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_1 } }, {
					i(56501),	-- Razorshell Belt
					i(56493),	-- Razorshell Boots
					i(56487),	-- Razorshell Bracers
					i(56515),	-- Razorshell Chest
					i(56497),	-- Razorshell Gloves
					i(56507),	-- Razorshell Helm
					i(56511),	-- Razorshell Leggings
					i(56488),	-- Razorshell Shoulders
					i(56496),	-- Windbound Belt
					i(56492),	-- Windbound Boots
					i(56485),	-- Windbound Bracers
					i(56510),	-- Windbound Chest
					i(56486),	-- Windbound Gloves
					i(56514),	-- Windbound Helm
					i(56506),	-- Windbound Leggings
					i(56500),	-- Windbound Shoulders

				})),
			}),
			expansion(EXPANSION.WOD, {
				-- 6.0.2
				expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
					i(118049),	-- Small Football
				})),
			}),
			expansion(EXPANSION.LEGION, {
				-- 7.0.3
				expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
					i(130878),	-- Shaved Felhide
					i(129963),	-- Stonehide Boot Base
				})),
			}),
			expansion(EXPANSION.BFA, {
				-- 8.0.1
				expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
					i(161974),	-- Honorable Combatant's Cestus [A]
					i(159895),	-- Honorable Combatant's Cestus [H]
					i(161973),	-- Honorable Combatant's Striker [A]
					i(159894),	-- Honorable Combatant's Striker [H]
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					i(172342),	-- [DNT] REUSE ME \\ Leatherworking - Modified Crafting Reagent 05
					i(172343),	-- [DNT] REUSE ME \\ Leatherworking - Modified Crafting Reagent 06
					i(172344),	-- [DNT] REUSE ME \\ Leatherworking - Modified Crafting Reagent 07
					i(172345),	-- [DNT] REUSE ME \\ Leatherworking - Modified Crafting Reagent 08
					i(172334),	-- Leatherworking Reagent 05
					i(172335),	-- Leatherworking Reagent 06
					i(172336),	-- Leatherworking Reagent 07
					i(172337),	-- Leatherworking Reagent 08
					i(172313),	-- Bonerivitted Armguards
					i(172308),	-- Bonerivitted Gauntlets
					i(172310),	-- Bonerivitted Greaves
					i(172309),	-- Bonerivitted Helm
					i(172311),	-- Bonerivitted Pauldrons
					i(172307),	-- Bonerivitted Treads
					i(172306),	-- Bonerivitted Vest
					i(172312),	-- Bonerivitted Waistguard
					i(177946),	-- Desolate Leather Barding
					i(172305),	-- Flayed Hide Armguards
					i(172300),	-- Flayed Hide Gauntlets
					i(172302),	-- Flayed Hide Greaves
					i(172301),	-- Flayed Hide Helm
					i(172303),	-- Flayed Hide Pauldrons
					i(172299),	-- Flayed Hide Treads
					i(172298),	-- Flayed Hide Vest
					i(172304),	-- Flayed Hide Waistguard
					i(172289),	-- Gormhide Armguards
					i(172284),	-- Gormhide Gauntlets
					i(172286),	-- Gormhide Greaves
					i(172285),	-- Gormhide Helm
					i(172287),	-- Gormhide Pauldrons
					i(172283),	-- Gormhide Treads
					i(172282),	-- Gormhide Vest
					i(172288),	-- Gormhide Waistguard
					i(172354),	-- Heavy Composite Bow
					i(172355),	-- Heavy Composite Crossbow
					i(172353),	-- Macabre Striker
					i(172339),	-- Leatherworking - Modified Crafting Reagent 02
					i(172340),	-- Leatherworking - Modified Crafting Reagent 03
					i(172341),	-- Leatherworking - Modified Crafting Reagent 04
					i(172332),	-- Necrotic Leather
					i(172333),	-- Purified Leather
					i(172352),	-- Reinforced Desolate Leather Cestus
					i(172331),	-- Sinful Leather
					i(172281),	-- Sinscale Armguards
					i(172276),	-- Sinscale Gauntlets
					i(172278),	-- Sinscale Greaves
					i(172277),	-- Sinscale Helm
					i(172279),	-- Sinscale Pauldrons
					i(172275),	-- Sinscale Treads
					i(172274),	-- Sinscale Vest
					i(172280),	-- Sinscale Waistguard
					i(172273),	-- Sintanned Armguards
					i(172268),	-- Sintanned Gauntlets
					i(172270),	-- Sintanned Greaves
					i(172269),	-- Sintanned Helm
					i(172271),	-- Sintanned Pauldrons
					i(172267),	-- Sintanned Treads
					i(172266),	-- Sintanned Vest
					i(172272),	-- Sintanned Waistguard
					i(172330),	-- Unseelie Leather
					i(172297),	-- Wildskin Armguards
					i(172292),	-- Wildskin Gauntlets
					i(172294),	-- Wildskin Greaves
					i(172293),	-- Wildskin Helm
					i(172295),	-- Wildskin Pauldrons
					i(172291),	-- Wildskin Treads
					i(172290),	-- Wildskin Vest
					i(172296),	-- Wildskin Waistguard
					i(172338),	-- Loosened Belt
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(193232),	-- Deathchill Hide+
					i(193233),	-- Deathchill Hide++
					i(193234),	-- Deathchill Hide+++
					i(193239),	-- Drygrate Scales+
					i(193240),	-- Drygrate Scales++
					i(193241),	-- Drygrate Scales+++
					i(193475),	-- Masterwork Riding Crop
					i(193495),	-- Savage Bow
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					i(219895),	-- Deepfury Hide+
					i(219896),	-- Deepfury Hide++
					i(219897),	-- Deepfury Hide+++
				})),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					-- With SpellID attached
					i(8388),	-- Pattern: Nightscape Cloak
					i(15780),	-- Pattern: Onyxia Scale Breastplate
					-- Without SpellID attached
					i(22698),	-- Pattern: Icy Scale Bracers
					i(22696),	-- Pattern: Icy Scale Breastplate
					i(22697),	-- Pattern: Icy Scale Gauntlets
					i(4997),	-- Deprecated Recipe: Kodo Skin Bag
					i(22695),	-- Pattern: Polar Bracers
					i(22694),	-- Pattern: Polar Gloves
					i(22692),	-- Pattern: Polar Tunic
				}),
			}),
			-- #if ANYCLASSIC
			expansion(EXPANSION.TBC, {
				applyclassicphase(TBC_PHASE_FOUR, i(185922, {	-- Pattern: Greater Drums of War
					["description"] = "Not actually sure if this is in the game at all since the spell trained by this recipe can be learned at the trainer.",
				})),
			}),
			-- #endif
			expansion(EXPANSION.TBC, {
				-- 2.4.0
				expansion(EXPANSION.TBC, patch(4,0), bubbleDownSelf({ ["timeline"] = { CREATED_2_4_0 } }, {
					-- Without SpellID attached
					i(35528),	-- Pattern: Swiftstrike Shoulders
				})),
			}),
			expansion(EXPANSION.WRATH, {
				-- 3.0.2
				expansion(EXPANSION.WRATH, patch(0,2), bubbleDown({ ["timeline"] = { CREATED_3_0_2 } }, {
					r(55243),	-- Bracers of Deflection
					r(53681),	-- Garok's Battle
					r(53686),	-- Verdant Tundra Belt
					r(53688),	-- Verdant Tundra Boots
					r(53689),	-- Verdant Tundra Bracers
					r(53687),	-- Verdant Tundra Cap
					r(53690),	-- Verdant Tundra Shoulderpads
					r(45541),	-- Unknown
					r(48038),	-- Unknown
					r(50935),	-- Unknown
					-- Without SpellID attached
					i(38599),	-- Pattern: Dark Arctic Chestpiece
					i(38598),	-- Pattern: Dark Arctic Leggings
				})),
			}),
			expansion(EXPANSION.CATA, {
				-- 4.0.1
				expansion(EXPANSION.CATA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_1 } }, {
					r(74493),	-- Savage Leather
					r(78421),	-- Unknown
					r(78422),	-- Unknown
					-- With SpellID attached
					i(67017),	-- Pattern: Razorshell Belt
					i(67009),	-- Pattern: Razorshell Boots
					i(67003),	-- Pattern: Razorshell Bracers
					i(67035),	-- Pattern: Razorshell Chest
					i(67013),	-- Pattern: Razorshell Gloves
					i(67023),	-- Pattern: Razorshell Helm
					i(67030),	-- Pattern: Razorshell Leggings
					i(67004),	-- Pattern: Razorshell Shoulders
					i(67012),	-- Pattern: Windbound Belt
					i(67008),	-- Pattern: Windbound Boots
					i(67001),	-- Pattern: Windbound Bracers
					i(67028),	-- Pattern: Windbound Chest
					i(67002),	-- Pattern: Windbound Gloves
					i(67034),	-- Pattern: Windbound Helm
					i(67022),	-- Pattern: Windbound Leggings
					i(67016),	-- Pattern: Windbound Shoulders
					-- Without SpellID attached
					i(67039),	-- Pattern: Cloak of Beasts
					i(67041),	-- Pattern: Cloak of War
					i(67015),	-- Pattern: Darkbrand Belt
					i(67007),	-- Pattern: Darkbrand Boots
					i(66999),	-- Pattern: Darkbrand Bracers
					i(67026),	-- Pattern: Darkbrand Chestguard
					i(67000),	-- Pattern: Darkbrand Gloves
					i(67021),	-- Pattern: Darkbrand Helm
					i(67033),	-- Pattern: Darkbrand Leggings
					i(67011),	-- Pattern: Darkbrand Shoulders
					i(67038),	-- Pattern: Heavy Savage Armor Kit
					i(67036),	-- Pattern: Heavy Savage Leather
					i(66995),	-- Pattern: Savage Cloak
					i(67018),	-- Pattern: Scorched Leg Armor
					i(67005),	-- Pattern: Shellscale Cloak->Hardened Scale Cloak
					i(66997),	-- Pattern: Tsunami Belt
					i(67010),	-- Pattern: Tsunami Boots
					i(66996),	-- Pattern: Tsunami Bracers
					i(67020),	-- Pattern: Tsunami Chestguard
					i(67006),	-- Pattern: Tsunami Gloves
					i(67031),	-- Pattern: Tsunami Helm
					i(67025),	-- Pattern: Tsunami Leggings
					i(67014),	-- Pattern: Tsunami Shoulders
					i(67019),	-- Pattern: Twilight Leg Armor
				})),
			}),
			expansion(EXPANSION.MOP, {
				-- 5.0.4
				expansion(EXPANSION.WOD, patch(0,4), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
					i(86286),	-- Pattern: Sha Leather
				})),
			}),
			expansion(EXPANSION.WOD, {
				-- 6.0.2
				expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
					r(171713),	-- Burnished Leather
					-- With SpellID attached
					i(118097),	-- Pattern: Small Football
					-- Without SpellID attached
					i(116319),	-- Pattern: Journeying Helm
					i(116320),	-- Pattern: Journeying Robes
					i(116321),	-- Pattern: Journeying Slacks
					i(120130),	-- Pattern: Secrets of Draenor Leatherworking
					i(116322),	-- Pattern: Traveling Helm
					i(116324),	-- Pattern: Traveling Leggings
					i(116323),	-- Pattern: Traveling Tunic
				})),
			}),
			expansion(EXPANSION.LEGION, {
				-- 7.0.3
				expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
					r(196388),	-- Tanned Fel Leather
					r(196387),	-- Shaved Felhide
					r(196425),	-- Stonehide Boot Base
					r(196383),	-- Stonehide Leather Vamp
					-- Without SpellID attached
					i(137900),	-- Pattern: Battlebound Armbands [Rank 2]
					i(137905),	-- Pattern: Battlebound Grips [Rank 2]
					i(137907),	-- Pattern: Battlebound Hauberk [Rank 2]
					i(137903),	-- Pattern: Battlebound Leggings [Rank 2]
					i(137902),	-- Pattern: Battlebound Spaulders [Rank 2]
					i(132124),	-- Pattern: Battlebound Treads [Rank 1]
					i(137906),	-- Pattern: Battlebound Treads [Rank 2]
					i(132123),	-- Pattern: Battlebound Warhelm [Rank 1]
					i(137904),	-- Pattern: Battlebound Warhelm [Rank 2]
					i(140636),	-- Pattern: Dreadleather Bindings [Rank 1]
					i(140644),	-- Pattern: Gravenscale Armbands [Rank 1]
					i(137933),	-- Pattern: Leather Pet Bed
					i(137952),	-- Pattern: Stonehide Leather Barding
					i(137868),	-- Pattern: Warhide Bindings [Rank 2]
					i(137874),	-- Pattern: Warhide Footpads [Rank 2]
					i(137873),	-- Pattern: Warhide Gloves [Rank 2]
					i(137875),	-- Pattern: Warhide Jerkin [Rank 2]
					i(137872),	-- Pattern: Warhide Mask [Rank 2]
					i(137871),	-- Pattern: Warhide Pants [Rank 2]
					i(137870),	-- Pattern: Warhide Shoulderguard [Rank 2]
				})),
			}),
			expansion(EXPANSION.BFA, {
				-- 8.0.1
				expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
					r(269549),	-- Honorable Combatant's Cestus [Rank 1]
					r(269546),	-- Honorable Combatant's Striker [Rank 1]
					-- With SpellID attached
					i(162419),	-- Honorable Combatant's Cestus [Rank 2]
					i(162420),	-- Honorable Combatant's Cestus [Rank 3]
					i(162415),	-- Honorable Combatant's Striker [Rank 2]
					i(162416),	-- Honorable Combatant's Striker [Rank 3]
					-- With SpellID attached
					i(162388),	-- Pattern: Hardened Tempest Boots [Rank 3]
					i(162389),	-- Pattern: Hardened Tempest Leggings [Rank 3]
					i(162400),	-- Pattern: Mistscale Boots [Rank 3]
					i(162401),	-- Pattern: Mistscale Greaves [Rank 3]
				})),

				-- 8.1.0
				expansion(EXPANSION.BFA, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_0 } }, {
					i(166312),	-- Pattern: Coarse Leather Barding [Rank 2]
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					r(338261),	-- Almost Thing (RECIPE!)
					r(309293),	-- Bonerivetted Armguards (RECIPE!)
					r(309288),	-- Bonerivetted Gauntlets (RECIPE!)
					r(309289),	-- Bonerivetted Helm (RECIPE!)
					r(309290),	-- Bonerivetted Leggings (RECIPE!)
					r(309291),	-- Bonerivetted Pauldrons (RECIPE!)
					r(309286),	-- Bonerivetted Treads (RECIPE!)
					r(309287),	-- Bonerivetted Vest (RECIPE!)
					r(309292),	-- Bonerivetted Waistguard (RECIPE!)
					r(308896),	-- Callous Hide (RECIPE!)
					r(308895),	-- Desolate Leather (RECIPE!)
					r(309285),	-- Flayed Hide Armguards (RECIPE!)
					r(309280),	-- Flayed Hide Gauntlets (RECIPE!)
					r(309281),	-- Flayed Hide Helm (RECIPE!)
					r(309282),	-- Flayed Hide Leggings (RECIPE!)
					r(309283),	-- Flayed Hide Pauldrons (RECIPE!)
					r(309278),	-- Flayed Hide Treads (RECIPE!)
					r(309279),	-- Flayed Hide Vest (RECIPE!)
					r(309284),	-- Flayed Hide Waistguard (RECIPE!)
					r(309269),	-- Gormhide Armguards (RECIPE!)
					r(309264),	-- Gormhide Gauntlets (RECIPE!)
					r(309265),	-- Gormhide Helm (RECIPE!)
					r(309266),	-- Gormhide Leggings (RECIPE!)
					r(309267),	-- Gormhide Pauldrons (RECIPE!)
					r(309262),	-- Gormhide Treads (RECIPE!)
					r(309263),	-- Gormhide Vest (RECIPE!)
					r(309268),	-- Gormhide Waistguard (RECIPE!)
					r(309196),	-- Heavy Composite Bow (RECIPE!)
					r(309197),	-- Heavy Composite Crossbow (RECIPE!)
					r(309194),	-- Macabre Striker (RECIPE!)
					r(309223),	-- Modified Crafting Reagent 02 (RECIPE!)
					r(309224),	-- Modified Crafting Reagent 03 (RECIPE!)
					r(309225),	-- Modified Crafting Reagent 04 (RECIPE!)
					r(309216),	-- Necrotic Leather (RECIPE!)
					r(309217),	-- Purified Leather (RECIPE!)
					r(309195),	-- Reinforced Desolate Leather Cestus (RECIPE!)
					r(309215),	-- Sinful Leather (RECIPE!)
					r(309261),	-- Sinscale Armguards (RECIPE!)
					r(309256),	-- Sinscale Gauntlets (RECIPE!)
					r(309257),	-- Sinscale Helm (RECIPE!)
					r(309258),	-- Sinscale Leggings (RECIPE!)
					r(309259),	-- Sinscale Pauldrons (RECIPE!)
					r(309254),	-- Sinscale Treads (RECIPE!)
					r(309255),	-- Sinscale Vest (RECIPE!)
					r(309260),	-- Sinscale Waistguard (RECIPE!)
					r(309253),	-- Sintanned Armguards (RECIPE!)
					r(309248),	-- Sintanned Gauntlets (RECIPE!)
					r(309249),	-- Sintanned Helm (RECIPE!)
					r(309250),	-- Sintanned Leggings (RECIPE!)
					r(309251),	-- Sintanned Pauldrons (RECIPE!)
					r(309246),	-- Sintanned Treads (RECIPE!)
					r(309247),	-- Sintanned Vest (RECIPE!)
					r(309252),	-- Sintanned Waistguard (RECIPE!)
					r(309214),	-- Unseelie Leather (RECIPE!)
					r(309270),	-- Wildskin Treads (RECIPE!)
					r(309271),	-- Wildskin Vest (RECIPE!)
					r(309272),	-- Wildskin Gauntlets (RECIPE!)
					r(309273),	-- Wildskin Helm (RECIPE!)
					r(309274),	-- Wildskin Leggings (RECIPE!)
					r(309275),	-- Wildskin Pauldrons (RECIPE!)
					r(309276),	-- Wildskin Waistguard (RECIPE!)
					r(309277),	-- Wildskin Armguards (RECIPE!)
					-- With SpellID attached
					i(182669),	-- Pattern: Loosened Belt (RECIPE!)
					-- Without SpellID attached
					i(183869),	-- [DNT][REUSE ME] Pattern: Crafter's Mark III
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					r(375175),	-- Deathchill Hide (RECIPE!)
					r(375177),	-- Drygrate Scales (RECIPE!)
					r(375170),	-- Masterwork Riding Crop (RECIPE!)
					r(382585),	-- Opening (RECIPE!)
					r(375198),	-- Savage Bow (RECIPE!)
					-- With SpellID attached
					i(197984),	-- Pattern: Wisp of Tyr (RECIPE!)
					-- Without SpellID attached
					i(197985),	-- Pattern: Illustrious Insight / Essence of Tyr (RECIPE!)
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					r(444085),	-- Deepfury Hide (RECIPE!)
				})),

				-- 11.2.7
				expansion(EXPANSION.TWW, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_11_2_7 } }, {
					r(1269498),	-- Snowfall Tribe Scare-Totem
				})),
			}),
		}),
	}),
}));
