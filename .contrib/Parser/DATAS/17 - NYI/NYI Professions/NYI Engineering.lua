---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(ENGINEERING, {
		n(CRAFTABLES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					i(10579),	-- Explosive Arrow
					i(10723),	-- Gnomish Ham Radio
					i(10580),	-- Goblin "Boom" Box
					i(10585),	-- Goblin Radio
					i(10719),	-- Mobile Alarm
				}),
			}),
			expansion(EXPANSION.TBC, {
				-- 2.0.1
				expansion(EXPANSION.TBC, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_2_0_1 } }, {
					i(23770),	-- Blue Smoke Flare
					i(23820),	-- Critter Enlarger
					i(23832),	-- Gnomish Tonk Controller
					i(23831),	-- Goblin Tonk Controller
					i(23840),	-- Remote Mail Terminal
				})),
			}),
			expansion(EXPANSION.WRATH, {
				-- 3.x.x
				n(P3xx, {
					i(37589),	-- Hyper-Powered Mote Extractor
					i(48945),	-- Gnomish Thinking Cap
				}),
			}),
			expansion(EXPANSION.MOP, {
				-- 5.0.4
				expansion(EXPANSION.MOP, patch(0,4), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
					i(81143),	-- Avanced Deepdive Helmet
				})),
			}),
			expansion(EXPANSION.WOD, {
				-- 6.0.2
				expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
					i(109168, {	-- Shrediron's Shredder
						["bonusID"] = 585,
					}),
				})),
			}),
			expansion(EXPANSION.BFA, {
				-- 8.0.1
				expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
					i(153591),	-- Belt Enchant: Holographic Horror Projector
					i(159829),	-- Belt Enchant: Miniaturized Plasma Shield
					i(153592),	-- Belt Enchant: Personal Space Amplifier
					i(153491),	-- Catchroot Seed Spreader
					i(153492),	-- Charged Refrigeration Projectile
					i(153498),	-- Electro-Induced Slumber Bomb
					i(153497),	-- Fro-Grow Grenade
					i(153488),	-- Neurological Immobilization Bomb
					i(153505),	-- Monelite Boomstick
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					i(172911),	-- [DNT] [REUSE ME] \\ M.O.T.E. Collector
					i(176448),	-- [DNT] [REUSE ME] \\ Soul Battery
					i(172916),	-- [DNT] [REUSE ME] \\ Soul Extractomatic [NYI]
					i(176616),	-- [DNT] [REUSE ME] \\ Unbound Soul
					i(172930),	-- [DNT] REUSE ME \\ Engineering - Modified Crafting Reagent 05
					i(172931),	-- [DNT] REUSE ME \\ Engineering - Modified Crafting Reagent 06
					i(172932),	-- [DNT] REUSE ME \\ Engineering - Modified Crafting Reagent 07
					i(172933),	-- [DNT] REUSE ME \\ Engineering - Modified Crafting Reagent 08
					i(172929),	-- [DNT] REUSE ME \\ Flash-Freeze Power Cells \\ Engineering - Modified Crafting Reagent 04
					i(172909),	-- [DNT] [REUSE ME]
					i(172942),	-- [DNT] [REUSE ME]
					i(172943),	-- [DNT] [REUSE ME]
					i(172944),	-- [DNT] [REUSE ME]
					i(172945),	-- [DNT] [REUSE ME]
					i(172913),	-- [DNT] [REUSE ME]
					i(172938),	-- Engineering Reagent 05
					i(172939),	-- Engineering Reagent 06
					i(172940),	-- Engineering Reagent 07
					i(172941),	-- Engineering Reagent 08
					i(172919),	-- Belt Modification: Damage Retaliator
					i(172917),	-- Belt Modification: Dimensional Shifter
					i(172918),	-- Belt Modification: Electro-Jump
					i(172928),	-- Hydrodynamic Accelerators
					i(172926),	-- Necrostatic Micro Capacitor
					i(172922),	-- Re-Calibrated Proton Blaster
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(198836),	-- Arclight Vital Correctors
					i(198250),	-- Convincingly Realistic Jumper Cables+
					i(198251),	-- Convincingly Realistic Jumper Cables++
					i(198252),	-- Convincingly Realistic Jumper Cables+++
					i(198274),	-- Element-Infused Rocket Helmet (TOY!) [Used Another ID]
					i(191305),	-- Expedition Multi-Toolbox
					i(198177),	-- Draconic Gunshoes+
					i(198178),	-- Draconic Gunshoes++
					i(198179),	-- Draconic Gunshoes+++
					i(198271),	-- H.E.L.P.+
					i(198272),	-- H.E.L.P.++
					i(198273),	-- H.E.L.P.+++
					i(198152),	-- Perfectly Calibrated Lenses+
					i(198153),	-- Perfectly Calibrated Lenses++
					i(198154),	-- Perfectly Calibrated Lenses+++
					i(198531),	-- Peripheral Vision Projectors (TYLER'S TEST DNT)
					i(198242),	-- Quack-E [Used another ID!]
					i(198284),	-- Spring-Loaded Draconium Fabric Cutter
					i(198285),	-- Spring-Loaded Titanicium Fabric Cutter
					i(198853),	-- Tinker: Always Malfunction
					i(198286),	-- Tinker Removal Kit+
					i(198287),	-- Tinker Removal Kit++
					i(198288),	-- Tinker Removal Kit+++
				})),

				-- 10.0.5
				expansion(EXPANSION.DF, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_5 } }, {
					i(203382),	-- Peripheral Vision Projectors
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					i(225984),	-- Assorted Choking Hazards
					i(225985),	-- Assorted Choking Hazards
					i(225986),	-- Assorted Choking Hazards
					i(224831),	-- Cube of Infinite Inventions (PTR Only)
					i(221476),	-- Engineering - 1H Wrench [DNT]
					i(221477),	-- Engineering - 2H Wrench [DNT]
					i(221892),	-- Explosive Mine
					i(221893),	-- Explosive Mine
					i(221894),	-- Explosive Mine
					i(221888),	-- Gravity Mine
					i(221889),	-- Gravity Mine
					i(221890),	-- Gravity Mine
					i(221946),	-- Irresistible Red Button
					i(221947),	-- Irresistible Red Button
					i(221929),	-- Overclocked Circuit Board
					i(221930),	-- Overclocked Circuit Board
					i(221931),	-- Overclocked Circuit Board
					i(221950),	-- Pausing Pylon
					i(221951),	-- Pausing Pylon
					i(221891),	-- Prototype: Explosive Mine
					i(221887),	-- Prototype: Gravity Mine
					i(221883),	-- Prototype: Stasis Mine
					i(221895),	-- Prototype: Tinker: Lightning Tether
					i(221899),	-- Prototype: Tinker: Overclocked S.E.L.F.I.E. Camera
					i(225244),	-- Refurbished Tinker: Shadowflame Rockets
					i(225243),	-- Refurbished Tinker: Supercollide-O-Tron
					i(221884),	-- Stasis Mine
					i(221885),	-- Stasis Mine
					i(221886),	-- Stasis Mine
					i(221896),	-- Tinker: Lightning Tether
					i(221897),	-- Tinker: Lightning Tether
					i(221898),	-- Tinker: Lightning Tether
					i(221900),	-- Tinker: Overclocked S.E.L.F.I.E. Camera
					i(221901),	-- Tinker: Overclocked S.E.L.F.I.E. Camera
					i(221902),	-- Tinker: Overclocked S.E.L.F.I.E. Camera
				})),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					r(12719),	-- Explosive Arrow
					r(6441),	-- Explosive Shells
					r(12904),	-- Gnomish Ham Radio
					r(12720),	-- Goblin "Boom" Box
					r(12722),	-- Goblin Radio
					r(12900),	-- Mobile Alarm
				}),
			}),
			expansion(EXPANSION.TBC, {
				-- 2.0.1
				expansion(EXPANSION.TBC, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_2_0_1 } }, {
					r(30573),	-- Gnomish Tonk Controller
					r(30561),	-- Goblin Tonk Controller
					-- With SpellID attached
					i(23813),	-- Schematic: Blue Smoke Flare
					i(23882),	-- Schematic: Critter Enlarger
					i(23812),	-- Schematic: Red Smoke Flare
					i(23885),	-- Schematic: Remote Mail Terminal
				})),
			}),
			expansion(EXPANSION.WRATH, {
				-- 3.0.2
				expansion(EXPANSION.WRATH, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
					r(49383),	-- Engineering
					r(56273),	-- Wormhole: Gadgetzan
					r(53280),	-- Unknown
				})),

				-- 3.2.0
				expansion(EXPANSION.WRATH, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_3_2_0 } }, {
					r(67790),	-- Dimensional Folder: K3
				})),
			}),
			expansion(EXPANSION.CATA, {
				-- 4.0.1
				expansion(EXPANSION.CATA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_1 } }, {
					r(84344),	-- Unknown
					r(84407),	-- Unknown
					r(84422),	-- Unknown
					r(84423),	-- Unknown
					r(84433),	-- Unknown
					r(84434),	-- Unknown
				})),
			}),
			expansion(EXPANSION.MOP, {
				-- 5.2.0
				expansion(EXPANSION.MOP, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_2_0 } }, {
					-- Without SpellID attached
					i(94894),	-- Schematic: Advanced Refrigeration Unit
					i(97230),	-- Schematic: Jard's Peculiar Energy Source
					i(94893),	-- Schematic: Pierre
					i(94880),	-- Schematic: Sky Golem
				})),

				-- 5.4.0
				expansion(EXPANSION.MOP, patch(4,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_4_0 } }, {
					-- Without SpellID attached
					i(100907),	-- Schematic: Rascal-Bot
				})),
			}),
			expansion(EXPANSION.WOD, {
				-- 6.0.2
				expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
					r(161543),	-- Unknown
					-- Without SpellID attached
					i(120134),	-- Recipe: Secrets of Draenor Engineering
				})),
			}),
			expansion(EXPANSION.LEGION, {
				-- 7.0.3
				expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
					-- Without SpellID attached
					i(137692),	-- Schematic: Blingtron's Circuit Design Tutorial
					i(137697),	-- Schematic: Blink-Trigger Headgun [Rank 2]
					i(137699),	-- Schematic: Bolt-Action Headgun [Rank 2]
					i(137693),	-- Schematic: Reaves Module: Failure Detection Mode
					i(137700),	-- Schematic: Reinforced Headgun [Rank 2]
					i(137725),	-- Schematic: Sonic Environment Enhancer
					i(137698),	-- Schematic: Tactical Headgun [Rank 2]
				})),

				-- 7.1.5
				expansion(EXPANSION.LEGION, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_7_1_5 } }, {
					-- Without SpellID attached
					i(144343),	-- Schematic: Rechargeable Reaves Battery
				})),

				-- 7.3.0
				expansion(EXPANSION.LEGION, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_3_0 } }, {
					-- Without SpellID attached
					i(151714),	-- Schematic: Gravitational Reduction Slippers
					i(151717),	-- Schematic: Wormhole Generator: Argus
				})),
			}),
			expansion(EXPANSION.BFA, {
				-- 8.0.1
				expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
					r(269205),	-- Belt Enchant: Holographic Horror Projector
					r(269126),	-- Belt Enchant: Miniaturized Plasma Shield
					r(269208),	-- Belt Enchant: Personal Space Amplifier
					r(255410),	-- Catchroot Seed Spreader [Rank 1]
					r(255411),	-- Catchroot Seed Spreader [Rank 2]
					r(255398),	-- Charged Refrigeration Projectile [Rank 1]
					r(255399),	-- Charged Refrigeration Projectile [Rank 2]
					r(255413),	-- Electro-Induced Slumber Bomb [Rank 1]
					r(255414),	-- Electro-Induced Slumber Bomb [Rank 2]
					r(255401),	-- Fro-Grow Grenade [Rank 1]
					r(255402),	-- Fro-Grow Grenade [Rank 2]
					r(255454),	-- Monelite Boomstick
					r(255404),	-- Neurological Immobilization Bomb [Rank 1]
					r(255405),	-- Neurological Immobilization Bomb [Rank 2]
					-- With SpellID attached
					i(162333),	-- Schematic: Catchroot Seed Spreader [Rank 3] [A]
					i(162737),	-- Schematic: Catchroot Seed Spreader [Rank 3] [H]
					i(162334),	-- Schematic: Charged Refrigeration Projectile [Rank 3] [A]
					i(162738),	-- Schematic: Charged Refrigeration Projectile [Rank 3] [H]
					i(162338),	-- Schematic: Electro-Induced Slumber Bomb [Rank 3]
					i(162335),	-- Schematic: Fro-Grow Grenade [Rank 3] [A]
					i(162739),	-- Schematic: Fro-Grow Grenade [Rank 3] [H]
					i(162336),	-- Schematic: Neurological Immobilization Bomb [Rank 3] [A]
					i(162740),	-- Schematic: Neurological Immobilization Bomb [Rank 3] [H]
				})),

				-- 8.1.5
				expansion(EXPANSION.BFA, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_5 } }, {
					-- Without SpellID attached
					i(165843),	-- Schematic: Mechantula
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					r(310488),	-- Disposable Ectoplasmic Specs
					r(310480),	-- Faerie Glider Kit
					r(310515),	-- Hydrodynamic Accelerators \\ Phaevon Alloy
					r(340534),	-- Interact
					r(310481),	-- Kyrian Glider Kit
					r(310482),	-- Maldraxxian Glider Kit
					r(310513),	-- Necrostatic Micro Capacitor \\ Elecxine Alloy
					r(310537),	-- Re-Calibrated Proton Blaster
					r(310483),	-- Stoneborn Glider Kit
					r(310491),	-- Torghast Reconfiguration Rig
					r(310489),	-- Unknown
					r(310494),	-- Unknown
					r(310527),	-- Unknown
					-- Without SpellID attached
					i(183867),	-- [DNT][REUSE ME] Schematic: Crafter's Mark III
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					r(382581),	-- Opening
					r(382352),	-- Perfectly Calibrated Lenses
					r(382360),	-- Tinker Removal Kit
					r(382382),	-- Wisp of Tyr
					r(382372),	-- Unknown
					r(382373),	-- Unknown
					-- With SpellID attached
					i(199298),	-- Schematic: Arclight Vital Correctors (RECIPE!)
					i(199296),	-- Schematic: Bronze Fireflight (RECIPE!)
					i(198780),	-- Schematic: Expedition Multi-Toolbox (RECIPE!)
					i(199292),	-- Schematic: Convincingly Realistic Jumper Cables (RECIPE!)
					i(199291),	-- Schematic: Draconic Gunshoes (RECIPE!)
					-- Without SpellID attached
					i(199294),	-- Schematic: Atomic Recalibrator (RECIPE!)
					i(199277),	-- Schematic: Battle-Ready Binoculars (RECIPE!)
					i(199279),	-- Schematic: Bottomless Stonecrust Ore Satchel (RECIPE!)
					i(199250),	-- Schematic: Calibrated Safety Switch (RECIPE!)
					i(199266),	-- Schematic: Centralized Precipitation Emitter (RECIPE!)
					i(199263),	-- Schematic: Completely Safe Rockets (RECIPE!)
					i(199224),	-- Schematic: Complicated Cuffs (RECIPE!)
					i(199235),	-- Schematic: Creature Combustion Canister (RECIPE!)
					i(199249),	-- Schematic: Critical Failure Prevention Unit (RECIPE!)
					i(199272),	-- Schematic: Deadline Deadeyes (RECIPE!)
					i(199225),	-- Schematic: Difficult Wrist Protectors (RECIPE!)
					i(199284),	-- Schematic: Draconium Brainwave Amplifier (RECIPE!)
					i(199278),	-- Schematic: Draconium Delver's Helmet (RECIPE!)
					i(199283),	-- Schematic: Draconium Encased Samophlange (RECIPE!)
					i(199280),	-- Schematic: Draconium Fisherfriend (RECIPE!)
					i(199221),	-- Schematic: Element-Infused Rocket Helmet (RECIPE!)
					i(199264),	-- Schematic: Endless Stack of Needles (RECIPE!)
					i(199267),	-- Schematic: Environmental Emulator (RECIPE!)
					i(199254),	-- Schematic: EZ-Thro Creature Combustion Canister (RECIPE!)
					i(199255),	-- Schematic: EZ-Thro Gravitational Displacer (RECIPE!)
					i(199300),	-- Schematic: EZ-Thro Grease Grenade (RECIPE!)
					i(199256),	-- Schematic: EZ-Thro Primal Deconstruction Charge (RECIPE!)
					i(199268),	-- Schematic: Giggle Goggles (RECIPE!)
					i(199288),	-- Schematic: Gyroscopic Kaleidoscope (RECIPE!)
					i(199247),	-- Schematic: Haphazardly Tethered Wires (RECIPE!)
					i(199231),	-- Schematic: High Intensity Thermal Scanner (RECIPE!)
					i(199252),	-- Schematic: I.W.I.N. Button Mk10 (RECIPE!)
					i(199281),	-- Schematic: Lapidary's Draconium Clamps (RECIPE!)
					i(199274),	-- Schematic: Lightweight Ocular Lenses (RECIPE!)
					i(199251),	-- Schematic: Magazine of Healing Darts (RECIPE!)
					i(199261),	-- Schematic: Meticulously Tuned Gear (RECIPE!)
					i(199271),	-- Schematic: Milestone Magnifiers (RECIPE!)
					i(199223),	-- Schematic: Needlessly Complex Wristguards (RECIPE!)
					i(199293),	-- Schematic: Neural Silencer Mk3 (RECIPE!)
					i(199262),	-- Schematic: One-Size-Fits-All Gear (RECIPE!)
					i(199276),	-- Schematic: Oscillating Wilderness Opticals (RECIPE!)
					i(199248),	-- Schematic: Overcharged Overclocker (RECIPE!)
					i(199222),	-- Schematic: Overengineered Sleeve Extenders (RECIPE!)
					i(199226),	-- Schematic: P.E.W. x2 (RECIPE!)
					i(199275),	-- Schematic: Peripheral Vision Projectors (RECIPE!)
					i(199270),	-- Schematic: Quality-Assured Optics (RECIPE!)
					i(199260),	-- Schematic: Rapidly Ticking Gear (RECIPE!)
					i(199259),	-- Schematic: Razor-Sharp Gear (RECIPE!)
					i(199233),	-- Schematic: S.A.V.I.O.R. (RECIPE!)
					i(199273),	-- Schematic: Sentry's Stabilized Specs (RECIPE!)
					i(199297),	-- Schematic: Spring-Loaded Capacitor Casing (RECIPE!)
					i(199282),	-- Schematic: Spring-Loaded Draconium Fabric Cutters (RECIPE!)
					i(199257),	-- Schematic: Suspiciously Silent Crate (RECIPE!)
					i(199253),	-- Schematic: Suspiciously Ticking Crate (RECIPE!)
					i(199287),	-- Schematic: Tinker: Plane Displacer (RECIPE!)
					i(199258),	-- Schematic: Tinker: Supercollide-O-Tron (RECIPE!)
					i(199265),	-- Schematic: Wyrmhole Generator (RECIPE!)
					i(199415),	-- Schematic: Zapthrottle Soul Inhaler (RECIPE!)
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					r(447347),	-- Explosive Mine
					r(447346),	-- Gravity Mine
					r(447359),	-- Overclocked Circuit Board
					r(447345),	-- Stasis Mine
					r(447348),	-- Tinker: Lightning Tether
					r(447349),	-- Tinker: Overclocked S.E.L.F.I.E. Camera
				})),

				-- 11.2.7
				expansion(EXPANSION.TWW, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_11_2_7 } }, {
					r(1246464),	-- [DNT] TWW Engineering Decor Template
					-- With SpellID attached
					i(233203),	-- Schematic: Housing Crafting Test Recipe
				})),
			}),
		}),
	}),
}));
