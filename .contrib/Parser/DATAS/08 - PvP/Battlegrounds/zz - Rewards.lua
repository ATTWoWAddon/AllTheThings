-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, {
	n(REWARDS, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
		filter(CONSUMABLES, {
			["description"] = "These are commonly sold by PVP Vendors and can also be acquired from reward crates.",
			["groups"] = {
				i(138478),	-- Feast of Ribs
				i(138727),	-- Potion of Defiance
				i(138729),	-- Potion of Heightened Senses
				i(138728),	-- Potion of Trivial Invisibility
				i(138479),	-- Potato Stew Feast
				i(138488),	-- Saltwater Potion
				i(138486),	-- "Third Wind" Potion
			},
		}),
		i(135539, {	-- Crate of Battlefield Goods 10-59	-- 9.0+
			["description"] = "Rewarded for winning a random battleground below max level.",
		--	["lvl"] = { 10, 59 },
			["groups"] = {
				i(134643),	-- Auxiliary's Cuffs*
				i(134642),	-- Auxiliary's Leggings*
				i(134640),	-- Auxiliary's Robe
				i(134641),	-- Auxiliary's Treads*
				i(134672),	-- Auxiliary's Amice
				i(134670),	-- Auxiliary's Cowl
				i(134669),	-- Auxiliary's Handwraps
				i(134671),	-- Auxiliary's Trousers
				i(134650),	-- Rookie's Bindings
				i(134648),	-- Rookie's Boots
				i(134676),	-- Rookie's Helm			-- Confirmed 08 Nov 2020
				i(134649),	-- Rookie's Pants
				i(134647),	-- Rookie's Tunic
				i(134675),	-- Rookie's Gloves*
				i(134677),	-- Rookie's Legguards*
				i(134678),	-- Rookie's Shoulders*
				i(134681),	-- Greenhorn's Legguards	-- Confirmed 21 Nov 2020
				i(134654),	-- Greenhorn's Armbands
				i(134651),	-- Greenhorn's Armor
				i(134652),	-- Greenhorn's Footguards
				i(134679),	-- Greenhorn's Gauntlets	-- Confirmed 09 Nov 2020
				i(134680),	-- Greenhorn's Helm			-- Confirmed 08 Nov 2020
				i(134653),	-- Greenhorn's Leggings
				i(134682),	-- Greenhorn's Spaulders
				i(134658),	-- Front-Line Armplates*
				i(134655),	-- Front-Line Breastplate*
				i(134657),	-- Front-Line Legguards*
				i(134656),	-- Front-Line Warboots*
				i(134683),	-- Front-Line Gauntlets*
				i(134685),	-- Front-Line Greaves*
				i(134684),	-- Front-Line Helm*
				i(134686),	-- Front-Line Shoulders*
				i(134689),	-- Recruit's Accolade
				i(134636),	-- Recruit's Cleaver*
				i(134635),	-- Recruit's Decapitator*
				i(134637),	-- Recruit's Dirk*
				i(134645),	-- Recruit's Endgame*
				i(134644),	-- Recruit's Hammer*
				i(134646),	-- Recruit's Mageblade*
				i(135481),	-- Recruit's Quickblade*
				i(134662),	-- Recruit's Redoubt*
				i(134638),	-- Recruit's Rifle			-- Confirmed 21 Nov 2020
				i(134663),	-- Recruit's Slicer*
				i(134639),	-- Recruit's Staff*
				i(134661),	-- Recruit's Signet			//** 4/21/19
				i(134660),	-- Recruit's Band
				i(134659),	-- Recruit's Ring
				i(134687),	-- Recruit's Barrier
				i(134674),	-- Recruit's Battle Staff*
				i(134690),	-- Recruit's Distinction
				i(134673),	-- Recruit's Gavel*
				i(134664),	-- Recruit's Greatsword
				i(134665),	-- Recruit's Longbow
				i(134668),	-- Recruit's Pike
				i(134667),	-- Recruit's Pummeler*
				i(134666),	-- Recruit's Shanker*
				i(134688),	-- Recruit's Slicer*
				i(134691),	-- Recruit's Badge*
			},
		}),
		i(135540, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3, REMOVED_9_0_1 } }, {	-- Crate of Battlefield Goods 40-59 before 9.0
			["description"] = "Rewarded for winning a random battleground in the level 40-59 range before 9.0.",
			["groups"] = {
				i(134672),	-- Auxiliary's Amice
				i(134670),	-- Auxiliary's Cowl
				i(134669),	-- Auxiliary's Handwraps
				i(134671),	-- Auxiliary's Trousers
				i(134675),	-- Rookie's Gloves*
				i(134676),	-- Rookie's Helm*
				i(134677),	-- Rookie's Legguards*
				i(134678),	-- Rookie's Shoulders*
				i(134679),	-- Greenhorn's Gauntlets
				i(134680),	-- Greenhorn's Helm
				i(134681),	-- Greenhorn's Legguards
				i(134682),	-- Greenhorn's Spaulders
				i(134683),	-- Front-Line Gauntlets*
				i(134685),	-- Front-Line Greaves*
				i(134684),	-- Front-Line Helm*
				i(134686),	-- Front-Line Shoulders*
				i(134689),	-- Recruit's Accolade*
				i(134687),	-- Recruit's Barrier
				i(134674),	-- Recruit's Battle Staff*
				i(134690),	-- Recruit's Distinction
				i(134673),	-- Recruit's Gavel*
				i(134664),	-- Recruit's Greatsword
				i(134665),	-- Recruit's Longbow
				i(134668),	-- Recruit's Pike
				i(134667),	-- Recruit's Pummeler*
				i(134666),	-- Recruit's Shanker*
				i(134688),	-- Recruit's Slicer*
				i(134691),	-- Recruit's Badge*
			},
		})),
		i(135541, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3, REMOVED_9_0_1 } }, {	-- Crusader's Crate of Battlefield Goods 60-69 before 9.0
			["description"] = "Rewarded for winning a random battleground in the level 60-69 range before 9.0.",
			["groups"] = {
				i(134584),	-- Inciter's Cord
				i(134585),	-- Inciter's Cuffs
				i(134583),	-- Inciter's Treads
				i(134592),	-- Insurgent's Belt
				i(134593),	-- Insurgent's Bindings
				i(134591),	-- Insurgent's Boots
				i(134596),	-- Agitator's Armbands
				i(134594),	-- Agitator's Footguards
				i(134595),	-- Agitator's Waistguard
				i(134602),	-- Instigator's Armplates*
				i(134601),	-- Instigator's Girdle*
				i(134600),	-- Instigator's Warboots*
				i(134587),	-- Vanguard Drape*
				i(134580),	-- Vanguard Heavy Crossbow
				i(134581),	-- Vanguard Shanker
				i(134589),	-- Vanguard Reprieve*
				i(134578),	-- Vanguard Cleaver
				i(134604),	-- Vanguard Hacker*
				i(134588),	-- Vanguard Gavel*
				i(134603),	-- Vanguard Redoubt*
				i(134582),	-- Vanguard Staff
				i(134577),	-- Vanguard Decapitator*
				i(134590),	-- Vanguard Baton of Light
			},
		})),
		i(135542, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3, REMOVED_9_0_1 } }, {	-- Icy Crate of Battlefield Goods 70-79 before 9.0
			["description"] = "Rewarded for winning a random battleground in the level 70-79 range before 9.0.",
			["groups"] = {
				i(134724),	-- Icyweave Amice*
				i(134722),	-- Icyweave Robes*
				i(134723),	-- Icyweave Gloves*
				i(134731),	-- Frosthide Shoulderpads
				i(134729),	-- Frosthide Tunic
				i(134730),	-- Frosthide Gloves
				i(134734),	-- Frigidlink Spaulders
				i(134732),	-- Frigidlink Armor
				i(134733),	-- Frigidlink Gauntlets
				i(134737),	-- Chillplate Shoulders*
				i(134735),	-- Chillplate Chestpiece*
				i(134736),	-- Chillplate Gauntlets*
				i(134717),	-- Cold-Touched Decapitator*
				i(134721),	-- Cold-Touched Staff
				i(134742),	-- Cold-Touched Hacker*
				i(134725),	-- Cold-Touched Mageblade*
				i(134719),	-- Cold-Touched Ripper
				i(134718),	-- Cold-Touched Shanker
				i(134726),	-- Cold-Touched Sword
				i(134720),	-- Cold-Touched Rifle
				i(134728),	-- Cold-Touched Wand*
				i(134741),	-- Cold-Touched Barrier*
				i(134727),	-- Cold-Touched Endgame
				i(134739),	-- Cold-Touched Band*
				i(134738),	-- Cold-Touched Ring*
				i(134740),	-- Cold-Touched Signet*
				i(134745),	-- Cold-Touched Badge*
				i(134744),	-- Cold-Touched Distinction*
				i(134743),	-- Cold-Touched Accolade*
			},
		})),
		i(135543, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3, REMOVED_9_0_1 } }, {	-- Rival's Crate of Battlefield Goods 80-89 before 9.0; splitting this box into two categories, loot table varies with level
			["description"] = "Rewarded for winning a random battleground in the level 80-89 range before 9.0.",
			["groups"] = {
				n(LEVEL_RANGE_80_84, {
					["description"] = "Rewarded for winning a random battleground in the level 80-84 range before 9.0.",
					["groups"] = {
						i(134616),	-- Inflammatory Cord*
						i(134615),	-- Inflammatory Hood*
						i(134614),	-- Inflammatory Treads*
						i(134622),	-- Incendiary Belt
						i(134620),	-- Incendiary Boots
						i(134621),	-- Incendiary Helm
						i(134623),	-- Firebrand's Footguards
						i(134624),	-- Firebrand's Helm
						i(134625),	-- Firebrand's Waistguard
						i(134631),	-- Firescored Girdle
						i(134630),	-- Firescored Helm
						i(134629),	-- Firescored Warboots
						i(134634),	-- Scorching Cloak*
						i(134607),	-- Scorching Cleaver
						i(134618),	-- Scorching Gavel*
						i(134606),	-- Scorching Greatsword
						i(134633),	-- Scorching Hacker
						i(134608),	-- Scorching Longbow
						i(134612),	-- Scorching Pike
						i(134611),	-- Scorching Pummeler
						i(134632),	-- Scorching Redoubt
						i(134610),	-- Scorching Shanker
						i(134619),	-- Scorching Staff*
						i(134626),	-- Scorching Necklace
						i(134627),	-- Scorching Pendant*
					},
				}),
				n(LEVEL_RANGE_85_89, {
					["description"] = "Rewarded for winning a random battleground in the level 85-89 range before 9.0.",
					["groups"] = {
						i(134754),	-- Veiled Cuffs*
						i(134752),	-- Veiled Leggings*
						i(134753),	-- Veiled Mantle*
						i(134751),	-- Veiled Raiment*
						i(134762),	-- Masked Bindings
						i(134760),	-- Masked Leggings
						i(134761),	-- Masked Shoulderpads
						i(134759),	-- Masked Tunic
						i(134766),	-- Overgrown Armbands
						i(134763),	-- Overgrown Armor
						i(134764),	-- Overgrown Kilt
						i(134765),	-- Overgrown Shoulderguards
						i(134770),	-- Concealment Armplates
						i(134767),	-- Concealment Breastplate
						i(134768),	-- Concealment Legplates
						i(134769),	-- Concealment Shoulderplates
						i(134748),	-- Covert Shanker
						i(134749),	-- Covert Rifle
						i(134757),	-- Covert Reprieve*
						i(134747),	-- Covert Cleaver
						i(134775),	-- Covert Hacker
						i(134756),	-- Covert Gavel*
						i(134758),	-- Covert Mageblade
						i(134750),	-- Covert Pike
						i(134774),	-- Covert Barrier
						i(134746),	-- Covert Greatsword
						i(134772),	-- Covert Band*
						i(134771),	-- Covert Ring*
					},
				}),
			},
		})),
		i(135545, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3, REMOVED_9_0_1 } }, {	-- Savage Crate of Battlefield Goods 90-99 before 9.0
			["description"] = "Rewarded for winning a random battleground in the level 90-99 range before 9.0.",
			["groups"] = {
				i(134787),	-- Entrenched Cowl*
				i(134786),	-- Entrenched Handwraps*
				i(134784),	-- Entrenched Raiment*
				i(134785),	-- Entrenched Treads
				i(134792),	-- Ruinous Boots*
				i(134793),	-- Ruinous Gloves*
				i(134794),	-- Ruinous Helm*
				i(134791),	-- Ruinous Tunic*
				i(134795),	-- Ironbranded Chainmail
				i(134796),	-- Ironbranded Footguards
				i(134797),	-- Ironbranded Gauntlets
				i(134798),	-- Ironbranded Ringmail Helm
				i(134799),	-- Tempered Breastplate
				i(134801),	-- Tempered Gauntlets
				i(134802),	-- Tempered Helm
				i(134800),	-- Tempered Warboots
				i(134804),	-- Seasoned Badge	- issue #534 on GitHub
				i(134778),	-- Seasoned Crossbow
				i(134779),	-- Seasoned Shanker
				i(134780),	-- Seasoned Ripper
				i(134805),	-- Seasoned Hacker
				i(134789),	-- Seasoned Gavel
				i(134781),	-- Seasoned Pummeler
				i(134783),	-- Seasoned Quickblade
				i(134782),	-- Seasoned Pike
				i(134803),	-- Seasoned Redoubt
				i(134790),	-- Seasoned Staff*
				i(134776),	-- Seasoned Decapitator
				i(134788),	-- Seasoned Distinction*
				i(134777),	-- Seasoned Accolade*
			},
		})),
		container(135546, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3, REMOVED_9_0_1 } }, {	-- Fel-Touched Crate of Battlefield Goods 100-109 before 9.0 / Ashran
			["description"] = "Rewarded for winning a random battleground in the level 100-109 range before 9.0, or Ashran quests.",
			["groups"] = {
				i(135578),	-- Battle Touched Banner
				i(135568),	-- Battle Touched Blood of the Fallen
				i(135574),	-- Battle Touched Blossom
				i(135573),	-- Battle Touched Chain Link
				i(135565),	-- Battle Touched Elemental Spark
				i(135571),	-- Battle Touched Ember
				i(135576),	-- Battle Touched Fetish
				i(135570),	-- Battle Touched Helfrost
				i(135569),	-- Battle Touched Infernal Shard
				i(135572),	-- Battle Touched Martyr Stone
				i(134696),	-- Cascading Amice*			— 4/27/19
				i(134694),	-- Cascading Cord*			— 4/26/19
				i(134697),	-- Cascading Cuffs*			— 4/26/19
				i(134695),	-- Cascading Trousers*		— 4/26/19
				i(134714),	-- Crushing Armplates
				i(134711),	-- Crushing Girdle
				i(134712),	-- Crushing Legguards
				i(134713),	-- Crushing Pauldrons
				i(134692),	-- Enveloping Accolade
				i(134715),	-- Enveloping Badge
				i(134716),	-- Enveloping Cloak*		— 4/26/19
				i(134698),	-- Enveloping Distinction*	— 4/26/19
				i(134709),	-- Enveloping Pendant*		— 4/25/19
				i(134707),	-- Surging Armbands
				i(134705),	-- Surging Chain Leggings
				i(134706),	-- Surging Spaulders
				i(134704),	-- Surging Waistguard
				i(134700),	-- Swarming Belt
				i(134703),	-- Swarming Bindings
				i(134701),	-- Swarming Legguards
				i(134702),	-- Swarming Shoulders
			},
		})),
		i(165714, {	-- Gold Strongbox - Win (A)
			["timeline"] = { ADDED_8_1_0 },
			["races"] = ALLIANCE_ONLY,
		}),
		i(165711, {	-- Gold Strongbox - Win (H)
			["timeline"] = { ADDED_8_1_0 },
			["races"] = HORDE_ONLY,
		}),
		i(203724, {	-- Field Medic's Hazard Payout
			["timeline"] = { ADDED_10_0_7 },
			["groups"] = {
				i(208567, {	-- Cracked Medal of Conquest
					["timeline"] = { ADDED_10_1_5, REMOVED_10_2_0 },
				}),
				i(212554, {	-- Cracked Medal of Conquest
					["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
				}),
				i(211773, {	-- Cracked Medal of Conquest
					["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
				}),
			},
		}),
		i(224557, {	-- Field Medic's Hazard Payout
			["timeline"] = { ADDED_11_0_2 },
			["groups"] = {
				i(225493, {	-- Cracked Medal of Conquest
					["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
				}),
				i(232790, {	-- Cracked Medal of Conquest
					["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
				}),
				i(232791, {	-- Medal of Conquest
					["timeline"] = { ADDED_11_2_0_SEASONSTART },
				}),
			},
		}),
		-- Reward for winning first battleground per season
		i(225772, {	-- Artisan's Consortium Advertisement (QS!/QI!)
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
		}),
		i(229401, {	-- Artisan's Consortium Pamphlet (QS!/QI!)
			["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
		}),
		i(230284, {	-- Artisan's Consortium Pamphlet (QS!/QI!)
			["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_0 },
		}),
	})),
})));
