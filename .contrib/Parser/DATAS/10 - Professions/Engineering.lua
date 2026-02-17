-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.Professions, prof(ENGINEERING, bubbleDownSelf({ ["requireSkill"] = ENGINEERING }, {
	n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
		ach(18901, {	-- Chromatic Calibration: Holo-Gogs (automated)
			iensemble(209062),	-- Ensemble: Chromatically Calibrated Holo-Gogs
		}),
		ach(18875),	-- Dangerous Devices IV
		ach(18874),	-- Dangerous Devices III
		ach(18873),	-- Dangerous Devices II
		ach(18872),	-- Dangerous Devices I
		ach(18855, {	-- Portal to Everywhere
			crit(61584, {	-- Ultrasafe Transporter: Gadgetzan
				["provider"] = { "i", 18986 },	-- Ultrasafe Transporter: Gadgetzan
			}),
			crit(61594, {	-- Dimensional Ripper - Everlook
				["provider"] = { "i", 18984 },	-- Dimensional Ripper - Everlook
			}),
			crit(61595, {	-- Dimensional Ripper - Area 52
				["provider"] = { "i", 30542 },	-- Dimensional Ripper - Area 52
			}),
			crit(61585, {	-- Ultrasafe Transporter: Toshley's Station
				["provider"] = { "i", 30544 },	-- Ultrasafe Transporter: Toshley's Station
			}),
			crit(61586, {	-- Wormhole Generator: Northrend
				["provider"] = { "i", 48933 },	-- Wormhole Generator: Northrend
			}),
			crit(61587, {	-- Wormhole Generator: Pandaria
				["provider"] = { "i", 87215 },	-- Wormhole Generator: Pandaria
			}),
			crit(61588, {	-- Wormhole Centrifuge
				["provider"] = { "i", 112059 },	-- Wormhole Centrifuge
			}),
			crit(61589, {	-- Wormhole Generator: Argus
				["provider"] = { "i", 151652 },	-- Wormhole Generator: Argus
			}),
			crit(61590, {	-- Wormhole Generator: Kul Tiras
				["provider"] = { "i", 168807 },	-- Wormhole Generator: Kul Tiras
			}),
			crit(61591, {	-- Wormhole Generator: Zandalar
				["provider"] = { "i", 168808 },	-- Wormhole Generator: Zandalar
			}),
			crit(61592, {	-- Wormhole Generator: Shadowlands
				["provider"] = { "i", 172924 },	-- Wormhole Generator: Shadowlands
			}),
			crit(61593, {	-- Wyrmhole Generator: Dragon Isles
				["provider"] = { "i", 198156 },	-- Wyrmhole Generator: Dragon Isles
			}),
		}),
	})),
	expansion(EXPANSION.CLASSIC, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18730, {	-- Goblins vs Gnomes
				["sourceQuests"] = {
					3526,	-- Goblin Engineering
					3629,	-- Goblin Engineering
					3630,	-- Gnome Engineering
					3632,	-- Gnome Engineering
					3633,	-- Goblin Engineering
					3634,	-- Gnome Engineering
					3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
					4181,	-- Goblin Engineering
					29475,	-- Goblin Engineering
					29477,	-- Gnomish Engineering
				},
				["sourceQuestNumRequired"] = 1,
			}),
		})),
		n(QUESTS, sharedData({
			["learnedAt"] = 200,
		}, {
			q(3634, {	-- Gnome Engineering [A]
				["altQuests"] = {
					3526,	-- Goblin Engineering
					3629,	-- Goblin Engineering
					3630,	-- Gnome Engineering
					3632,	-- Gnome Engineering
					3633,	-- Goblin Engineering
					-- 3634,	-- Gnome Engineering
					3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
					4181,	-- Goblin Engineering
					-- #if AFTER CATA
					29475,	-- Goblin Engineering
					29477,	-- Gnomish Engineering
					-- #endif
				},
				["providers"] = {
					{ "n", 3494 },	-- Tinkerwiz <Journeyman Engineer>
					{ "i", 10789 },	-- Manual of Engineering Disciplines
				},
				["coord"] = { 62.6, 36.2, THE_BARRENS },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(3630, {	-- Gnome Engineering [A]
				["altQuests"] = {
					3526,	-- Goblin Engineering
					3629,	-- Goblin Engineering
					-- 3630,	-- Gnome Engineering
					3632,	-- Gnome Engineering
					3633,	-- Goblin Engineering
					3634,	-- Gnome Engineering
					3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
					4181,	-- Goblin Engineering
					-- #if AFTER CATA
					29475,	-- Goblin Engineering
					29477,	-- Gnomish Engineering
					-- #endif
				},
				["providers"] = {
					{ "n", 5518 },	-- Lilliam Sparkspindle <Expert Engineer>
					{ "i", 10789 },	-- Manual of Engineering Disciplines
				},
				["coord"] = { 55.0, 8.6, STORMWIND_CITY },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(3632, {	-- Gnome Engineering [A]
				["altQuests"] = {
					3526,	-- Goblin Engineering
					3629,	-- Goblin Engineering
					3630,	-- Gnome Engineering
					-- 3632,	-- Gnome Engineering
					3633,	-- Goblin Engineering
					3634,	-- Gnome Engineering
					3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
					4181,	-- Goblin Engineering
					-- #if AFTER CATA
					29475,	-- Goblin Engineering
					29477,	-- Gnomish Engineering
					-- #endif
				},
				["providers"] = {
					{ "n", 5174 },	-- Springspindle Fizzlegear <Artisan Engineer>
					{ "i", 10789 },	-- Manual of Engineering Disciplines
				},
				["coord"] = { 68.8, 45.2, IRONFORGE },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(3637, {	-- Gnome Engineering [H]
				["altQuests"] = {
					3526,	-- Goblin Engineering
					3629,	-- Goblin Engineering
					3630,	-- Gnome Engineering
					3632,	-- Gnome Engineering
					3633,	-- Goblin Engineering
					3634,	-- Gnome Engineering
					3635,	-- Gnome Engineering
					-- 3637,	-- Gnome Engineering
					4181,	-- Goblin Engineering
					-- #if AFTER CATA
					29475,	-- Goblin Engineering
					29477,	-- Gnomish Engineering
					-- #endif
				},
				["providers"] = {
					{ "n", 3494 },	-- Tinkerwiz <Journeyman Engineer>
					{ "i", 10789 },	-- Manual of Engineering Disciplines
				},
				["coord"] = { 62.6, 36.2, THE_BARRENS },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
			}),
			q(3635, {	-- Gnome Engineering [H]
				["altQuests"] = {
					3526,	-- Goblin Engineering
					3629,	-- Goblin Engineering
					3630,	-- Gnome Engineering
					3632,	-- Gnome Engineering
					3633,	-- Goblin Engineering
					3634,	-- Gnome Engineering
					-- 3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
					4181,	-- Goblin Engineering
					-- #if AFTER CATA
					29475,	-- Goblin Engineering
					29477,	-- Gnomish Engineering
					-- #endif
				},
				["providers"] = {
					{ "n", 4586 },	-- Graham Van Talen <Journeyman Engineer>
					{ "i", 10789 },	-- Manual of Engineering Disciplines
				},
				["coord"] = { 75.6, 74.6, UNDERCITY },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
			}),
			q(29477, {	-- Gnomish Engineering
				["altQuests"] = {
					3526,	-- Goblin Engineering
					3629,	-- Goblin Engineering
					3630,	-- Gnome Engineering
					3632,	-- Gnome Engineering
					3633,	-- Goblin Engineering
					3634,	-- Gnome Engineering
					3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
					4181,	-- Goblin Engineering
					29475,	-- Goblin Engineering
					-- 29477,	-- Gnomish Engineering
					-- #if AFTER CATA
					29475,	-- Goblin Engineering
					29477,	-- Gnomish Engineering
					-- #endif
				},
				["qgs"] = {
					5518,	-- Lilliam Sparkspindle <Engineering Trainer> [STORMWIND_CITY]
					5174,	-- Springspindle Fizzlegear <Engineering Trainer> [IRONFORGE]
					11017,	-- Roxxik <Engineering Trainer> [ORGRIMMAR]
					52651,	-- Engineer Palehoof [THUNDER_BLUFF]
				},
				["coords"] = {
					{ 62.8, 32.0, STORMWIND_CITY },	-- Lilliam Sparkspindle
					{ 68.8, 45.2, IRONFORGE },	-- Springspindle Fizzlegear
					{ 56.8, 56.4, ORGRIMMAR },	-- Roxxik
					{ 36.8, 59.6, THUNDER_BLUFF },	-- Engineer Palehoof
				},
				["timeline"] = { ADDED_4_3_0 },
				["cost"] = {
					{ "i", 10559, 6 },	-- Mithril Tube
					{ "i", 4392, 2 },	-- Advanced Target Dummy
					{ "i", 4407, 1 },	-- Accurate Scope
				},
				["repeatable"] = true,
			}),
			q(3629, {	-- Goblin Engineering [A]
				["altQuests"] = {
					3526,	-- Goblin Engineering
					-- 3629,	-- Goblin Engineering
					3630,	-- Gnome Engineering
					3632,	-- Gnome Engineering
					3633,	-- Goblin Engineering
					3634,	-- Gnome Engineering
					3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
					4181,	-- Goblin Engineering
					-- #if AFTER CATA
					29475,	-- Goblin Engineering
					29477,	-- Gnomish Engineering
					-- #endif
				},
				["providers"] = {
					{ "n", 5518 },	-- Lilliam Sparkspindle <Expert Engineer>
					{ "i", 10789 },	-- Manual of Engineering Disciplines
				},
				["coord"] = { 55.0, 8.6, STORMWIND_CITY },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(4181, {	-- Goblin Engineering [A]
				["altQuests"] = {
					3526,	-- Goblin Engineering
					3629,	-- Goblin Engineering
					3630,	-- Gnome Engineering
					3632,	-- Gnome Engineering
					3633,	-- Goblin Engineering
					3634,	-- Gnome Engineering
					3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
					-- 4181,	-- Goblin Engineering
					-- #if AFTER CATA
					29475,	-- Goblin Engineering
					29477,	-- Gnomish Engineering
					-- #endif
				},
				["providers"] = {
					{ "n", 5174 },	-- Springspindle Fizzlegear <Artisan Engineer>
					{ "i", 10789 },	-- Manual of Engineering Disciplines
				},
				["coord"] = { 68.8, 45.2, IRONFORGE },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(3633, {	-- Goblin Engineering [H]
				["altQuests"] = {
					3526,	-- Goblin Engineering
					3629,	-- Goblin Engineering
					3630,	-- Gnome Engineering
					3632,	-- Gnome Engineering
					-- 3633,	-- Goblin Engineering
					3634,	-- Gnome Engineering
					3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
					4181,	-- Goblin Engineering
					-- #if AFTER CATA
					29475,	-- Goblin Engineering
					29477,	-- Gnomish Engineering
					-- #endif
				},
				["providers"] = {
					{ "n", 3494 },	-- Tinkerwiz <Journeyman Engineer>
					{ "i", 10789 },	-- Manual of Engineering Disciplines
				},
				["coord"] = { 62.6, 36.2, THE_BARRENS },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
			}),
			q(3526, {	-- Goblin Engineering [H]
				["altQuests"] = {
					-- 3526,	-- Goblin Engineering
					3629,	-- Goblin Engineering
					3630,	-- Gnome Engineering
					3632,	-- Gnome Engineering
					3633,	-- Goblin Engineering
					3634,	-- Gnome Engineering
					3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
					4181,	-- Goblin Engineering
					-- #if AFTER CATA
					29475,	-- Goblin Engineering
					29477,	-- Gnomish Engineering
					-- #endif
				},
				["providers"] = {
					{ "n", 4586 },	-- Graham Van Talen <Journeyman Engineer>
					{ "i", 10789 },	-- Manual of Engineering Disciplines
				},
				["coord"] = { 75.6, 74.6, UNDERCITY },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
			}),
			q(29475, {	-- Goblin Engineering
				["altQuests"] = {
					3526,	-- Goblin Engineering
					3629,	-- Goblin Engineering
					3630,	-- Gnome Engineering
					3632,	-- Gnome Engineering
					3633,	-- Goblin Engineering
					3634,	-- Gnome Engineering
					3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
					4181,	-- Goblin Engineering
					-- 29475,	-- Goblin Engineering
					29477,	-- Gnomish Engineering
				},
				["qgs"] = {
					5518,	-- Lilliam Sparkspindle <Engineering Trainer> [STORMWIND_CITY]
					5174,	-- Springspindle Fizzlegear <Engineering Trainer> [IRONFORGE]
					11017,	-- Roxxik <Engineering Trainer> [ORGRIMMAR]
					52651,	-- Engineer Palehoof [THUNDER_BLUFF]
				},
				["coords"] = {
					{ 62.8, 32.0, STORMWIND_CITY },	-- Lilliam Sparkspindle
					{ 68.8, 45.2, IRONFORGE },	-- Springspindle Fizzlegear
					{ 56.8, 56.4, ORGRIMMAR },	-- Roxxik
					{ 36.8, 59.6, THUNDER_BLUFF },	-- Engineer Palehoof
				},
				["timeline"] = { ADDED_4_3_0 },
				["cost"] = {
					{ "i", 4394, 20 },	-- Big Iron Bomb
					{ "i", 10507, 20 },	-- Solid Dynamite
					{ "i", 4384, 5 },	-- Explosive Sheep
				},
				["repeatable"] = true,
			}),
		})),
		-- #if NOT ANYCLASSIC
		n(QUESTS, sharedData({
			["cost"] = { { "g", 20000 } },	-- 2g
			["lvl"] = 30,
			["repeatable"] = true,
			["timeline"] = { REMOVED_4_0_3 },
		}, {
			q(3647, {	-- Membership Card Renewal [A]
				["sourceQuest"] = 3641,	-- Show Your Work
				["qg"] = 7944,	-- Tinkmaster Overspark <Master Gnome Engineer>
				["coord"] = { 69.8, 50.2, IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(10790, {	-- Gnome Engineer Membership Card
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(3645, {	-- Membership Card Renewal [H]
				["sourceQuest"] = 3643,	-- Show Your Work
				["qg"] = 7406,	-- Oglethorpe Obnoticus <Master Gnome Engineer>
				["coord"] = { 28.2, 76.2, STRANGLETHORN_VALE },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(10790, {	-- Gnome Engineer Membership Card
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(3644, {	-- Membership Card Renewal
				["sourceQuest"] = 3639,	-- Show Your Work
				["qg"] = 8126,	-- Nixx Sprocketspring <Master Goblin Engineer>
				["coord"] = { 54.4, 27.2, TANARIS },
				["groups"] = {
					i(10791, {	-- Goblin Engineer Membership Card
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			q(3646, {	-- Membership Card Renewal
				["sourceQuest"] = 3639,	-- Show Your Work
				["qg"] = 8738,	-- Vazario Linkgrease <Goblin Engineering Trainer>
				["coord"] = { 62.6, 36.2, THE_BARRENS },
				["groups"] = {
					i(10791, {	-- Goblin Engineer Membership Card
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
		})),
		n(REWARDS, bubbleDownSelf({ ["timeline"] = { REMOVED_4_0_3 } }, {
			i(11423, {	-- Gnome Engineer's Renewal Gift
				["description"] = "If you destroy your Gnome Engineer Membership Card, you can renew your membership for 2 Gold and will receive this gift in the mail in about a day.",
				["groups"] = {
					i(10603),	-- Schematic: Catseye Ultra Goggles (RECIPE!)
					i(11827),	-- Schematic: Lil' Smoky (RECIPE!)
					i(10606),	-- Schematic: Parachute Cloak(RECIPE!)
				},
			}),
			i(11422, {	-- Goblin Engineer's Renewal Gift
				["description"] = "If you destroy your Goblin Engineer Membership Card, you can renew your membership for 2 Gold and will receive this gift in the mail in about a day.",
				["groups"] = {
					i(4416),	-- Schematic: Goblin Land Mine (RECIPE!)
					i(4417),	-- Schematic: Large Seaforium Charge (RECIPE!)
					i(11828),	-- Schematic: Pet Bombling (RECIPE!)
				},
			}),
		})),
		-- #endif
	}),
	expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
		ach(18908, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- Chromatic Calibration: Bio-Optic Killshades (automated)
			iensemble(209063),	-- Ensemble: Chromatically Calibrated Bio-Optic Killshades
		})),
	})),
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
		ach(18905, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- Chromatic Calibration: Retinal Armor (automated)
			iensemble(209064),	-- Ensemble: Chromatically Calibrated Retinal Armor
		})),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
		ach(18895, {	-- You Had it Coming
			["timeline"] = { ADDED_10_1_7 },
		}),
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		ach(18906, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- Chromatic Calibration: Cranial Cannons (automated)
			iensemble(209066),	-- Ensemble: Chromatically Calibrated Cranial Cannons
		})),
		n(QUESTS, {
			q(40545, {	-- Aww Scrap!
				["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
				["groups"] = {
					r(195112, {	-- Engineering (Legion Master)
						["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1 },
						["collectible"] = false,
					}),
					applyclassicphase(BFA_PHASE_ONE, r(264490, {["timeline"] = {ADDED_8_0_1}})),	-- Legion Engineering
				},
			}),
			q(40854, {	-- Endless Possibilities
				["sourceQuests"] = { 40545 },	-- Aww Scrap!
				["provider"] = { "n", 102193 },	-- Filgo Scrapbottom
				["coord"] = { 66.4, 53.4, LEGION_THE_UNDERBELLY },
			}),
			q(40855, {	-- Our Man in Azsuna
				["sourceQuests"] = { 40854 },	-- Endless Possibilities
				["provider"] = { "n", 93520 },	-- Didi the Wrench
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
			}),
			q(40856, {	-- It'll Cost You
				["sourceQuest"] = 40855,	-- Our Man in Azsuna
				["provider"] = { "n", 102195 },	-- Fargo Flintlocke
				["coord"] = { 65.2, 24.8, AZSUNA },
			}),
			q(40859, {	-- The Latest Fashion: Headguns!
				["sourceQuest"] = 40855,	-- Our Man in Azsuna
				["provider"] = { "n", 102195 },	-- Fargo Flintlocke
				["coord"] = { 65.2, 24.8, AZSUNA },
				["groups"] = {
					r(198939),	-- Blink-Trigger Headgun [Rank 1] (RECIPE!)
					r(198966),	-- Bolt-Action Headgun [Rank 1] (RECIPE!)
					r(198967),	-- Reinforced Headgun [Rank 1] (RECIPE!)
					r(198965),	-- Tactical Headgun [Rank 1] (RECIPE!)
				},
			}),
			q(40858, {	-- The Missing Pieces
				["sourceQuests"] = {
					40856,	-- It'll Cost You
					40859,	-- The Latest Fashion: Headguns!
				},
				["provider"] = { "n", 102195 },	-- Fargo Flintlocke
				["coord"] = { 65.2, 24.8, AZSUNA },
				["groups"] = {
					r(198976),	-- Auto-Hammer [Rank 1] (RECIPE!)
				},
			}),
			q(40863, {	-- Always the Last Thing
				["sourceQuests"] = { 40858 },	-- The Missing Pieces
				["provider"] = { "n", 93520 },	-- Didi the Wrench
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
				["groups"] = {
					r(198982),	-- Reaves Battery (RECIPE!)
				},
			}),
			q(40864, {	-- Modular Modifications
				["sourceQuests"] = { 40863 },	-- Always the Last Thing
				["provider"] = { "n", 93520 },	-- Didi the Wrench
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
				["groups"] = {
					r(198984),	-- Reaves Module: Repair Mode (RECIPE!)
					r(198988),	-- Reaves Module: Snack Distrubition Mode (RECIPE!)
				},
			}),
			q(40860, {	-- Resupplying the Line
				["sourceQuests"] = { 40858 },	-- The Missing Pieces
				["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
			}),
			q(40862, {	-- All Charged Up
				["sourceQuests"] = { 40860 },	-- Resupplying the Line
				["provider"] = { "n", 102197 },	-- Fargo Flintlocke
				["coord"] = { 59.8, 62.2, VALSHARAH },
				["groups"] = {
					r(198973),	-- Gunpowder Charge [Rank 1] (RECIPE!)
				},
			}),
			q(40861, {	-- In My Sights
				["sourceQuests"] = { 40860 },	-- Resupplying the Line
				["provider"] = { "n", 102197 },	-- Fargo Flintlocke
				["coord"] = { 59.8, 62.2, VALSHARAH },
				["groups"] = {
					r(198972),	-- Deployable Bullet Dispenser [Rank 1] (RECIPE!)
				},
			}),
			q(40870, {	-- Here Comes the BOOM!
				["sourceQuests"] = {
					40862,	-- All Charged Up
					40861,	-- In My Sights
				},
				["provider"] = { "n", 93520 },	-- Didi the Wrench
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
				["groups"] = {
					r(198987),	-- Reaves Module: Fireworks Display Mode (RECIPE!)
				},
			}),
			q(40869, {	-- Fire and Forget
				["sourceQuests"] = {
					40862,	-- All Charged Up
					40861,	-- In My Sights
				},
				["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
				["groups"] = {
					r(198974),	-- Pump-Action Bandage Gun [Rank 1] (RECIPE!)
				},
			}),
			q(40865, {	-- It's Not Rocket Science
				["sourceQuests"] = {
					40862,	-- All Charged Up
					40861,	-- In My Sights
				},
				["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
			}),
			q(40867, {	-- Bubble Baubles
				["sourceQuests"] = { 40865 },	-- It's Not Rocket Science
				["provider"] = { "n", 102198 },	-- Fargo Flintlocke
				["coord"] = { 78.2, 57.2, STORMHEIM },
			}),
			q(40866, {	-- The Shell, You Say?
				["sourceQuests"] = { 40865 },	-- It's Not Rocket Science
				["provider"] = { "n", 102198 },	-- Fargo Flintlocke
				["coord"] = { 78.2, 57.2, STORMHEIM },
				["groups"] = {
					r(200466),	-- Sonic Environment Enhancer (RECIPE!)
				},
			}),
			q(40868, {	-- Wibbly-Wobbly, Timey-Wimey
				["sourceQuests"] = {
					40866,	-- The Shell, You Say?
					40867,	-- Bubble Baubles
				},
				["provider"] = { "n", 102198 },	-- Fargo Flintlocke
				["coord"] = { 78.2, 57.2, STORMHEIM },
			}),
			q(40871, {	-- 'Locke and Load
				["sourceQuests"] = { 40868 },	-- Wibbly-Wobbly, Timey-Wimey
				["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
			}),
			q(40872, {	-- Going Out With a Bang
				["sourceQuests"] = { 40871 },	-- 'Locke and Load
				["provider"] = { "n", 102196 },	-- Fargo Flintlocke
				["coord"] = { 43.0, 62.8, AZSUNA },
				["groups"] = {
					r(198978),	-- Gunshoes (RECIPE!)
					i(133941),	-- Hobart's Prototype Gunshoes (QI!)
				},
			}),
			q(40873, {	-- Keep Yer Powder Dry
				["sourceQuests"] = { 40872 },	-- Going Out With a Bang
				["provider"] = { "n", 102196 },	-- Fargo Flintlocke
				["coord"] = { 43.0, 62.8, AZSUNA },
				["groups"] = {
					r(198975),	-- Gunpack [Rank 1] (RECIPE!)
					i(133798),	-- Barrel of Gunpowder (QI!)
				},
			}),
			q(40874, {	-- I'd Do It Myself, But...
				["sourceQuests"] = { 40872 },	-- Going Out With a Bang
				["provider"] = { "n", 102196 },	-- Fargo Flintlocke
				["coord"] = { 43.0, 62.8, AZSUNA },
			}),
			q(40875, {	-- Going to Waste
				["sourceQuests"] = { 40872 },	-- Going Out With a Bang
				["provider"] = { "n", 102196 },	-- Fargo Flintlocke
				["coord"] = { 43.0, 62.8, AZSUNA },
				["groups"] = {
					r(198977),	-- Failure Detection Pylon [Rank 1] (RECIPE!)
				},
			}),
			q(40876, {	-- 'Locke, Stock and Barrel
				["sourceQuests"] = {
					40873,	-- Keep Yer Powder Dry
					40874,	-- I'd Do It Myself, But...
					40875,	-- Going to Waste
				},
				["provider"] = { "n", 102196 },	-- Fargo Flintlocke
				["coord"] = { 43.0, 62.8, AZSUNA },
				["groups"] = {
					r(198991),	-- Blink-Trigger Headgun [Rank 2] (RECIPE!)
					r(198993),	-- Bolt-Action Headgun [Rank 2] (RECIPE!)
					r(198994),	-- Reinforced Headgun [Rank 2] (RECIPE!)
					r(198992),	-- Tactical Headgun [Rank 2] (RECIPE!)
				},
			}),
			q(40877, {	-- Halls of Valor: Trigger Happy
				["sourceQuests"] = { 40876 },	-- 'Locke, Stock and Barrel
				["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
				["maps"] = { 703, 704, 705 },	-- Halls of Valor
				["groups"] = {
					r(198981),	-- Trigger (RECIPE!)
				},
			}),
			q(40878, {	-- Assault on Violet Hold: Cheating Death
				["sourceQuests"] = { 40876 },	-- 'Locke, Stock and Barrel
				["provider"] = { "n", 93520 },	-- Didi the Wrench
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
				["maps"] = { 732 },	-- Assault of Violet Hold (Legion)
				["cost"] = {{ "i", 132515, 2 }},	-- 2x Failure Detection Pylon
				["groups"] = {
					r(198985),	-- Reaves Module: Failure Detection Mode (RECIPE!)
				},
			}),
			q(40882, {	-- Court of Stars: Revamping the Recoil
				["sourceQuests"] = { 40877 },	-- Halls of Valor: Trigger Happy
				["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
				["maps"] = { 761, 762, 763 },	-- Court of Stars
				["groups"] = {
					i(133673),	-- Schematic: Double-Barreled Cranial Cannon [Rank 1] (RECIPE!)
					i(133674),	-- Schematic: Ironsight Cranial Cannon [Rank 1] (RECIPE!)
					i(133672),	-- Schematic: Sawed-Off Cranial Cannon [Rank 1] (RECIPE!)
					i(133671),	-- Schematic: Semi-Automagic Cranial Cannon [Rank 1] (RECIPE!)
				},
			}),
			q(40880, {	-- Short Circuit
				["sourceQuests"] = {
					40877,	-- Halls of Valor: Trigger Happy
					40878,	-- Assault on Violet Hold: Cheating Death
				},
				["provider"] = { "n", 93520 },	-- Didi the Wrench
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
				["groups"] = {
					r(198980),	-- Blingtron's Circuit Design Tutorial (RECIPE!)
				},
			}),
			q(40881, {	-- Oil Rags to Riches
				["sourceQuests"] = { 40880 },	-- Short Circuit
				["provider"] = { "o", 246438 },	-- Blingtron Circuit Design
				["coord"] = { 69.5, 68.4, TANARIS },
				["groups"] = {
					i(141849),	-- Schematic: Reaves Module: Bling Mode (RECIPE!)
				},
			}),
			q(40879, {	-- It's On With Automatons
				["sourceQuests"] = { 40881 },	-- Oil Rags to Riches
				["provider"] = { "n", 93520 },	-- Didi the Wrench
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
				["groups"] = {
					r(198990),	-- Reaves Module: Piloted Combat Mode (RECIPE!)
				},
			}),
			------ 7.1.5 ------
			q(46119, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_5 } }, {	-- Boon of the Builder
				["sourceQuests"] = { 40882 },	-- Court of Stars: Revamping the Recoil
				["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
				["groups"] = {
					i(144328),	-- Boon of the Builder
				},
			})),
			q(46128, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_5 } }, {	-- Time for a Recharge
				["sourceQuests"] = { 40864 },	-- Modular Modifications
				["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
				["groups"] = {
					r(235775),	-- Rechargeable Reaves Battery
				},
			})),
			------ 7.3.0 ------
			q(48069, {	-- The Wrench Calls
				["sourceQuests"] = { 46941 },	-- The Path Forward
				["provider"] = { "n", 125525 },	-- Durael
				["timeline"] = { ADDED_7_3_0 },
				["maps"] = { THE_VINDICAAR_EREDATH_LOWER },
			}),
			q(48056, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- A Harsh Mistress
				["sourceQuests"] = { 48069 },	-- The Wrench Calls
				["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
				["coord"] = { 38.6, 25.0, LEGION_DALARAN },
				["groups"] = {
					r(247717),	-- Gravitational Reduction Slippers (RECIPE!)
					i(151927),	-- Prototype Gravitational Reduction Slippers (QI!)
				},
			})),
			q(48065, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Extraterrestrial Exploration
				["sourceQuests"] = { 48069 },	-- The Wrench Calls
				["provider"] = { "n", 93520 },	-- Didi the Wrench
				["coord"] = { 38.8, 25.6, LEGION_DALARAN },
				["groups"] = {
					r(247744),	-- Wormhole Generator: Argus (RECIPE!)
					i(151926),	-- Ionized Geographical Recorder (QI!)
				},
			})),
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18776, {	-- The Ub3r-Spanner
				["provider"] = { "i", 164740 },	-- Ub3r-Spanner
			}),
		})),
		n(QUESTS, {
			q(54475, {	-- Engineered Blueprints [A]
				["provider"] = { "n", 136059 },	-- Layla Evenkeel
				["coord"] = { 77.4, 14.2, BORALUS },
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
				["races"] = ALLIANCE_ONLY,
			}),
			q(54476, {	-- Engineered Blueprints [H]
				["provider"] = { "n", 131840 },	-- Shuga Blastcaps
				["coord"] = { 45.1, 40.6, DAZARALOR },
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
				["races"] = HORDE_ONLY,
			}),
			------ Tools of Trade Questline ------
			q(55028, {	-- It's Scrap Work... [A]
				["description"] = "Requires 150 Kul Tiran Engineering.",
				["provider"] = { "n", 136059 },	-- Layla Evenkeel
				["coord"] = { 77.4, 14.2, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(167041),	-- Coiled Current Culler (QI!)
					i(167037),	-- Encrypted Ub3r-Spanner Schematic (QI!)
				},
			}),
			q(55031, {	-- It's Scrap Work... [H]
				["description"] = "Requires 150 Zandalari Engineering.",
				["provider"] = { "n", 131840 },	-- Shuga Blastcaps
				["coord"] = { 45.1, 40.6, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(167041),	-- Coiled Current Culler (QI!)
					i(167037),	-- Encrypted Ub3r-Spanner Schematic (QI!)
				},
			}),
			q(53947, {	-- In the Dunes [A]
				["sourceQuests"] = { 55028 },	-- It's Scrap Work... [A]
				["provider"] = { "n", 136059 },	-- Layla Evenkeel
				["coord"] = { 77.4, 14.2, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(53783, {	-- In the Dunes [H]
				["sourceQuests"] = { 55031 },	-- It's Scrap Work... [H]
				["provider"] = { "n", 131840 },	-- Shuga Blastcaps
				["coord"] = { 45.1, 40.6, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
			}),
			q(53802, {	-- Sethrak Persuasion
				["sourceQuests"] = {
					53947,	-- In the Dunes [A]
					53783,	-- In the Dunes [H]
				},
				["provider"] = { "n", 145131 },	-- Dataguru Gryzix
				["coord"] = { 26.3, 47.3, VOLDUN },
				["timeline"] = { ADDED_8_1_5 },
				["groups"] = {
					i(164770),	-- Faithless Lightning Rod (QI!)
				},
			}),
			q(53806, {	-- Heavy is the Head
				["sourceQuests"] = {
					53947,	-- In the Dunes [A]
					53783,	-- In the Dunes [H]
				},
				["provider"] = { "n", 145131 },	-- Dataguru Gryzix
				["coord"] = { 26.3, 47.3, VOLDUN },
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(54930, {	-- Mechanical Liberation
				["sourceQuests"] = {
					53947,	-- In the Dunes [A]
					53783,	-- In the Dunes [H]
				},
				["provider"] = { "n", 145131 },	-- Dataguru Gryzix
				["coord"] = { 26.3, 47.3, VOLDUN },
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(53848, {	-- Tooling Around Vol'dun
				["sourceQuests"] = {
					53802,	-- Sethrak Persuasion
					53806,	-- Heavy is the Head
					54930,	-- Mechanical Liberation
				},
				["provider"] = { "n", 145131 },	-- Dataguru Gryzix
				["coord"] = { 26.3, 47.3, VOLDUN },
				["timeline"] = { ADDED_8_1_5 },
				["groups"] = {
					i(166881),	-- Gryzix's Toolbox (QI!)
				},
			}),
			q(53948, {	-- Vengeful Venture [A]
				["sourceQuests"] = { 53848 },	-- Tooling Around Vol'dun
				["provider"] = { "o", 307748 },	-- Venture Co. Letter
				["coord"] = { 26.3, 47.3, VOLDUN },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(164919),	-- Encrypted Ub3r-Spanner Schematic (QI!)
					i(166886),	-- Encrypted Ub3r-Spanner Schematic (QI!)
					i(164773),	-- Gryzix's Decoder (QI!)
				},
			}),
			q(53833, {	-- Vengeful Venture [H]
				["sourceQuests"] = { 53848 },	-- Tooling Around Vol'dun
				["provider"] = { "o", 307748 },	-- Venture Co. Letter
				["coord"] = { 26.3, 47.3, VOLDUN },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(164919),	-- Encrypted Ub3r-Spanner Schematic (QI!)
					i(166886),	-- Encrypted Ub3r-Spanner Schematic (QI!)
					i(164773),	-- Gryzix's Decoder (QI!)
				},
			}),
			q(53949, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- The Ub3r-Spanner [A]
				["sourceQuests"] = { 53948 },	-- Vengeful Venture [A]
				["provider"] = { "n", 136059 },	-- Layla Evenkeel
				["coord"] = { 77.4, 14.2, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					r(282975),	-- The Ub3r-Spanner (RECIPE!)
					r(283399),	-- Ub3r-Module: Short-Fused Bomb Bots (RECIPE!)
					r(283403),	-- Ub3r-Module: Ub3r-Improved Target Dummy (RECIPE!)
					r(283401),	-- Ub3r-Module: Ub3r S3ntry Mk. X8.0 (RECIPE!)
				},
			})),
			q(53937, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- The Ub3r-Spanner [H]
				["sourceQuests"] = { 53833 },	-- Vengeful Venture [H]
				["provider"] = { "n", 131840 },	-- Shuga Blastcaps
				["coord"] = { 45.1, 40.6, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					r(282975),	-- The Ub3r-Spanner (RECIPE!)
					r(283399),	-- Ub3r-Module: Short-Fused Bomb Bots (RECIPE!)
					r(283403),	-- Ub3r-Module: Ub3r-Improved Target Dummy (RECIPE!)
					r(283401),	-- Ub3r-Module: Ub3r S3ntry Mk. X8.0 (RECIPE!)
				},
			})),
		}),
	})),
	expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
		ach(18907, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- Chromatic Calibration: Ectoplasmic Specs (automated)
			iensemble(209067),	-- Ensemble: Chromatically Calibrated Ectoplasmic Specs
		})),
	})),
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18856),	-- Just an Ordinary Gas Cloud
			ach(18857, {	-- That's No Ordinary Gas Cloud!
				crit(61599),	-- 2 Air Souls Captured
				crit(61600),	-- 2 Earth Souls Captured
				crit(61601),	-- 2 Fire Souls Captured
				crit(61602),	-- 2 Frost Souls Captured
			}),
		})),
		n(QUESTS, {
			i(198156, {	-- Wyrmhole Generator: Dragon Isles (TOY!)
				["description"] = "You can collect additional portal options.\nRANDOM LOCATION = Carelessly leap into the portal...\nTHE WAKING SHORES = Pray return to the Waking Shores.\nOHN’AHRAN PLAINS = Clomp your hooves, imaginary or otherwise...\nTHE AZURE SPAN = Ensure your arrival at the Azure Span...\nTHALDRASZUS = Audibly spell out 'Thaldraszus'...\nTHE FORBIDDEN REACH = Disregard the word 'Forbidden' and venture...\nZARALEK CAVERN = Flip the portal horizontally...\nEMERALD DREAM = Close your eyes and snore loudly.",
				-- Object IDs and quest IDs are put at random to each other.
				-- There seems to be no way of getting the correct object ID for the Deactivated Signal Transmitter in game. (does not matter for ATT purpose)
				["groups"] = {
					-- The Waking Shores
					o(381964, {	-- Deactivated Signal Transmitter
						["questID"] = 70573,
						["coord"] = { 74.6, 25.5, THE_WAKING_SHORES },
					}),
					o(381983, {	-- Deactivated Signal Transmitter
						["questID"] = 70574,
						["coord"] = { 62.2, 78.9, THE_WAKING_SHORES },
					}),
					o(381985, {	-- Deactivated Signal Transmitter
						["questID"] = 70575,
						["coord"] = { 23.4, 43.8, THE_WAKING_SHORES },
					}),

					-- Ohn'ahran Plains
					o(381987, {	-- Deactivated Signal Transmitter
						["questID"] = 70576,
						["coord"] = { 28.0, 35.7, OHNAHRAN_PLAINS },
					}),
					o(381989, {	-- Deactivated Signal Transmitter
						["questID"] = 70577,
						["coord"] = { 56.9, 28.9, OHNAHRAN_PLAINS },
					}),
					o(381991, {	-- Deactivated Signal Transmitter
						["questID"] = 70578,
						["coord"] = { 67.7, 84.9, OHNAHRAN_PLAINS },
					}),

					-- The Azure Span
					o(381993, {	-- Deactivated Signal Transmitter
						["questID"] = 70579,
						["coord"] = { 27.6, 26.4, THE_AZURE_SPAN },
					}),
					o(381995, {	-- Deactivated Signal Transmitter
						["questID"] = 70580,
						["coord"] = { 45.8, 65.2, THE_AZURE_SPAN },
					}),
					o(381997, {	-- Deactivated Signal Transmitter
						["questID"] = 70581,
						["coord"] = { 71.0, 47.9, THE_AZURE_SPAN },
					}),

					-- Thaldraszus
					o(381999, {	-- Deactivated Signal Transmitter
						["questID"] = 70583,
						["coord"] = { 50.7, 55.7, THALDRASZUS },
					}),
					o(382001, {	-- Deactivated Signal Transmitter
						["questID"] = 70584,
						["coord"] = { 70.3, 44.3, THALDRASZUS },
					}),
					o(382003, {	-- Deactivated Signal Transmitter
						["questID"] = 70585,
						["coord"] = { 63.7, 77.1, THALDRASZUS },
					}),

					-- The Forbidden Reach
					o(385917, {	-- Deactivated Signal Transmitter
						["questID"] = 73143,
						["coord"] = { 31.8, 26.2, THE_FORBIDDEN_REACH },
					}),
					o(385919, {	-- Deactivated Signal Transmitter
						["questID"] = 73144,
						["coord"] = { 78.0, 51.0, THE_FORBIDDEN_REACH },
					}),
					o(385921, {	-- Deactivated Signal Transmitter
						["questID"] = 73145,
						["coord"] = { 39.9, 81.3, THE_FORBIDDEN_REACH },
					}),
				},
			}),
			q(72242, {	-- Dragon Isles Engineering
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Engineering.",
				["provider"] = { "n", 190535 },	-- Quizla Blastcaps
				["coord"] = { 75.9, 33.2, THE_WAKING_SHORES },
				["lockCriteria"] = { 1,
					"spellID", 366254,	-- Dragon Isles Engineering
					"questID", 70359,	-- Dragon Isles Engineering
				},
			}),
			q(70359, {	-- Dragon Isles Engineering
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Engineering.",
				["provider"] = { "n", 192165 },	-- Winnie Fingerspring <Engineering Trainer>
				["coord"] = { 43.0, 66.5, THE_WAKING_SHORES },
				["lockCriteria"] = { 1,
					"spellID", 366254,	-- Dragon Isles Engineering
					"questID", 72242,	-- Dragon Isles Engineering
				},
			}),
			q(70030, {	-- Artisan's Supply: Quality-Assured Optics
				["provider"] = { "n", 192165 },	-- Winnie Fingerspring <Engineering Trainer>
				["coord"] = { 43.0, 66.5, THE_WAKING_SHORES },
				["cost"] = {{ "i", 198328, 1 }},	-- 2x Quality-Assured Optics
				["_drop"] = { "g" },
			}),
			q(70252, {	-- Hidden Profession Master Engineering
				["name"] = "Hidden Profession Master: Engineering",
				["provider"] = { "n", 194838 },	-- Frizz Buzzcrank
				["coord"] = { 17.7, 21.6, THE_AZURE_SPAN },
			}),
			q(70187, {	-- Specialized Secrets: Engineering
				["sourceQuests"] = { 69979 },	-- A Worthy Hunt
				["provider"] = { "n", 193110 },	-- Khadin
				["coord"] = { 51.8, 33.0, OHNAHRAN_PLAINS },
				["cost"] = {{ "i", 191784, 1 }},	-- 1x Dragon Shard of Knowledge
				["isRepeatable"] = true,
				["groups"] = {
					i(190456),	-- Artisan's Mettle
				},
			}),
		}),
		n(QUESTS, sharedData({
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["isWeekly"] = true,
			["groups"] = {
				i(198611),	-- Engineering Details
			},
		},{
			------ Requires 25 Skill ------
			q(66942, {	-- Enemy Engineering
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191001 },	-- Gnoklin Quirkcoil
				["coord"] = { 36.8, 62.8, VALDRAKKEN },
				["groups"] = {
					i(194437),	-- Primal Ritual (QI!)
				},
			}),
			q(70591, {	-- Engineering Services Requested
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 194026 },	-- Azley
				["coord"] = { 35.6, 58.8, VALDRAKKEN },
			}),
			q(66891, {	-- Explosive Ash
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191001 },	-- Gnoklin Quirkcoil
				["coord"] = { 36.8, 62.8, VALDRAKKEN },
			}),
			q(72396, {	-- Horns of Plenty
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191000 },	-- Dothenos
				["coord"] = { 36.6, 62.6, VALDRAKKEN },
				["groups"] = {
					i(201816),	-- Springy Horns (QI!)
				},
			}),
			q(66890, {	-- Stolen Tools
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191000 },	-- Dothenos
				["coord"] = { 36.6, 62.6, VALDRAKKEN },
				["groups"] = {
					i(193836),	-- Stolen Tools (QI!)
				},
			}),

			------ Requires 45 Skill ------
			q(70540, {	-- An Engineer's Best Friend
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185548 },	-- Clinkyclick Shatterboom
				["coord"] = { 42.2, 48.8, VALDRAKKEN },
			}),
			q(70539, {	-- And You Thought They Did Nothing
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185548 },	-- Clinkyclick Shatterboom
				["coord"] = { 42.2, 48.8, VALDRAKKEN },
			}),
			q(70545, {	-- Blingtron 8000...?
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185548 },	-- Clinkyclick Shatterboom
				["coord"] = { 42.2, 48.8, VALDRAKKEN },
			}),
			q(70557, {	-- No Scopes
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185548 },	-- Clinkyclick Shatterboom
				["coord"] = { 42.2, 48.8, VALDRAKKEN },
			}),

			------ Requires ?? Skill - Patch 10.1.0. ------
			q(75575, {	-- Ballistae Bits
				["provider"] = { "n", 203516 },	-- Kayann
				["coord"] = { 36.5, 62.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
			}),
			q(75608, {	-- Titan Trash or Titan Treasure?
				["provider"] = { "n", 203516 },	-- Kayann
				["coord"] = { 36.5, 62.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
			}),
			-- Patch 10.2.0
			q(77938, {	-- An Unlikely Engineer
				["provider"] = { "n", 210162 },	-- Magnolia Oaken
				["coord"] = { 36.8, 63.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_0 },
			}),
			q(77891, {	-- Fixing The Dream
				["provider"] = { "n", 210162 },	-- Magnolia Oaken
				["coord"] = { 36.8, 63.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_0 },
				["groups"] = {
					i(209017),	-- Teleportal Creator (QI!)
				},
			}),
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", PROFESSION_KNOWLEDGE.DF.ENGINEERING, 1 }} }, {
				r(382345),	-- Assorted Safety Fuses
				r(382408),	-- Cartomancy Cannon
				r(382368),	-- Centralized Precipitation Emitter
				r(382365),	-- Completely Safe Rockets
				r(382371),	-- Element-Infused Rocket Helmet
				r(382366),	-- Endless Stack of Needles
				r(382369),	-- Environmental Emulator
				r(382370),	-- Giggle Goggles
				r(382326),	-- High Intensity Thermal Scanner
				r(382353),	-- I.W.I.N. Button Mk10
				r(382381),	-- Illustrious Insight
				r(382351),	-- Magazine of Healing Darts
				r(382374),	-- Rummage Through Scrap
				r(382328),	-- S.A.V.I.O.R.
				r(382358),	-- Suspiciously Silent Crate
				r(382354),	-- Suspiciously Ticking Crate
				r(382359),	-- Tinker: Supercollide-O-Tron
				r(393796),	-- Tinker: Arclight Vital Correctors
				r(382367),	-- Wyrmhole Generator
				r(387246),	-- Zapthrottle Soul Inhaler
			}),
		}),
		n(TREASURES, {
			o(398133,		-- Bolts and Brass/Handful of Khaz'gorite Bolts
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 57.7, 73.9, ZARALEK_CAVERN },
				["questID"] = 75430,
				["groups"] = {
					i(204850),	-- Handful of Khaz'gorite Bolts
					i(204851),	-- Oblong Brass Sculpture
				},
			})),
			o(380571, {	-- Boomthyr Rocket
				["description"] = "Interact with the Note next to the rocket, then gather the items in the surrounding area. You may need to leave and return to the area after gathering all objects for the treasure to be clickable after that.",
				["questID"] = 70270,
				["coord"] = { 56.0, 44.9, THE_WAKING_SHORES },
				["groups"] = {
					i(201014),	-- Boomthyr Rocket
					i(198816),	-- Aerospace Grace Draconium
					i(198815),	-- Ash
					i(198814),	-- Boom Fumes
					i(198817),	-- Durable Crystal
				},
			}),
			o(392587,	-- Busted Wyrmhole Generator
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 37.8, 58.8, ZARALEK_CAVERN },
				["questID"] = 75186,
				["groups"] = {
					i(204475),	-- Busted Wyrmhole Generator
					i(205954),	-- Three-Dimensional Compass (CI!)
				},
			})),
			o(392582,	-- Defective Survival Pack
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 50.5, 47.9, ZARALEK_CAVERN },
				["questID"] = 75184,
				["groups"] = {
					i(204471),	-- Defective Survival Pack
				},
			})),
			o(380560, {	-- Disabled Tesla Coil
				["description"] = "Click on the three exposed items to make the treasure appear.",
				["questID"] = 70275,
				["coord"] = { 49.1, 77.5, THE_WAKING_SHORES },
				["groups"] = {
					i(198789),	-- Intact Coil Capacitor
				},
			}),
			o(398135,	-- Discarded Dracothyst Drill
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 49.4, 79.0, ZARALEK_CAVERN },
				["questID"] = 75431,
				["groups"] = {
					i(204853),	-- Discarded Dracothyst Drill
				},
			})),
			o(410456,	-- Experimental Dreamcatcher
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["coord"] = { 39.5, 52.2, EMERALD_DREAM },
				["questID"] = 78278,
				["groups"] = {
					i(210193),	-- Experimental Dreamcatcher
				},
			})),
			o(392581,	-- Haphazardly Discarded Bomb
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 48.2, 27.9, ZARALEK_CAVERN },
				["questID"] = 75183,
				["groups"] = {
					i(204470),	-- Haphazardly Discarded Bomb
				},
			})),
			o(392593,	-- Inconspicuous Data Miner
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 49.9, 59.3, ZARALEK_CAVERN },
				["questID"] = 75188,
				["groups"] = {
					i(204480),	-- Inconspicuous Data Miner
				},
			})),
			o(410458,		-- Insomniotron
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["description"] = "In cavern.",
				["coord"] = { 49.0, 70.9, 2254 },
				["questID"] = 78279,
				["groups"] = {
					i(210194),	-- Insomniotron
				},
			})),
			o(392580,	-- Misplaced Aberrus Outflow Blueprints
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 48.5, 48.6, ZARALEK_CAVERN },
				["questID"] = 75180,
				["groups"] = {
					i(204469),	-- Misplaced Aberrus Outflow Blueprints
				},
			})),
			o(398138,	-- Molten Scoutbot/Overclocked Determination Core
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 48.1, 16.6, ZARALEK_CAVERN },
				["questID"] = 75433,
				["groups"] = {
					i(204855),	-- Overclocked Determination Core
				},
			})),
			o(410469,		-- Unhatched Battery
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["coord"] = { 62.6, 36.2, EMERALD_DREAM },
				["questID"] = 78281,
				["groups"] = {
					i(210197, {	-- Unhatched Battery
						i(210198),	-- Depleted Battery
					}),
				},
			})),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(PROFESSION_KNOWLEDGE.DF.ENGINEERING),
			},
		},{
			i(198611),	-- Engineering Details
			q(74111, {	-- DF Inscription Order: Engineering
				["name"] = "DF Inscription Order: Engineering",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 198510 },	-- Draconic Treatise on Engineering
			}),
			q(66379, {	-- DF Weekly Engineering Knowledgepoint #1
				["name"] = "DF Engineering Treasure #1",
				["provider"] = { "i", 193902 },	-- Eroded Titan Gizmo
			}),
			q(66380, {	-- DF Weekly Engineering Knowledgepoint #2
				["name"] = "DF Engineering Treasure #2",
				["provider"] = { "i", 193903 },	-- Watcher Power Core
			}),
			q(70517, {	-- DF Weekly Engineering Knowledgepoint #3
				["name"] = "DF Engineering Drop #1: Dragon-esque",
				["description"] = "Drops from any Dragon-kin/Proto Drakes/Dragonlike beasts.\nCoordinates link to the spot(s) we found best.",
				["provider"] = { "i", 198970 },		-- Infinitely Attachable Pair o' Docks
				["coord"] = { 49.4, 62.6, THALDRASZUS },
				["crs"] = { 194656 },	-- Reservoir Dapple
			}),
			q(70516, {	-- DF Weekly Engineering Knowledgepoint #4
				["name"] = "DF Engineering Drop #2: Tyrhold Ancient",
				["description"] = "Drops from any Tyrhold-esque mob.\nCoordinates link to Tyrhold where almost any mob can drop it.",
				["provider"] = { "i", 198969 },		-- Keeper's Mark
				["coord"] = { 57.2, 60.4, THALDRASZUS },
				["crs"] = { 193244 },	-- Titan Defense Matrix
			}),
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(QUESTS, {
			q(84128, {	-- Engineering Services Requested
				["sourceQuests"] = { 84285 },	-- Crafting Orders: Engineering
				["provider"] = { "n", 228177 },	-- Kala Clayhoof
				["coord"] = { 59.2, 55.2, DORNOGAL },
				["isWeekly"] = true,
				["groups"] = {
					i(228775),	-- Algari Engineer's Notepad
				},
			}),
		}),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", PROFESSION_KNOWLEDGE.TWW.ENGINEERING, 1 }} }, {
				r(447356),	-- Adjustable Cogwheel
				r(447333),	-- Aqirite Fueled Samophlange
				r(447374),	-- Box o' Booms
				r(447355),	-- Impeccable Cogwheel
				r(447354),	-- Overclocked Cogwheel
				r(447352),	-- P.0.W. x2
				r(447353),	-- Serrated Cogwheel
			}),
		}),
		n(TREASURES, {
			o(455996, {	-- Arathi Safety Gloves
				["coord"] = { 41.5, 48.9, HALLOWFALL },
				["questID"] = 83871,
				["groups"] = {
					i(226297),	-- Arathi Safety Gloves
				},
			}),
			o(456000, {	-- Dornogal Spectacles
				["coord"] = { 64.7, 52.7, DORNOGAL },
				["questID"] = 83867,
				["groups"] = {
					i(226293),	-- Dornogal Spectacles
				},
			}),
			o(455998, {	-- Earthen Construct Blueprints
				["coord"] = { 64.5, 58.8, THE_RINGING_DEEPS },
				["questID"] = 83869,
				["groups"] = {
					i(226295),	-- Earthen Construct Blueprints
				},
			}),
			o(455994, {	-- Emptied Venom Canister
				["coord"] = { 63.1, 11.1, NERUBAR },
				["questID"] = 83873,
				["groups"] = {
					i(226299),	-- Emptied Venom Canister
				},
			}),
			o(455997, {	-- Holy Firework Dud
				["coord"] = { 46.3, 61.3, HALLOWFALL },
				["questID"] = 83870,
				["groups"] = {
					i(226296),	-- Holy Firework Dud
				},
			}),
			o(455999, {	-- Inert Mining Bomb
				["coord"] = { 42.6, 27.3, THE_RINGING_DEEPS },
				["questID"] = 83868,
				["groups"] = {
					i(226294),	-- Inert Mining Bomb
				},
			}),
			o(455995, {	-- Puppeted Mechanical Spider
				["coord"] = { 56.8, 38.6, AZJ_KAHET },
				["questID"] = 83872,
				["groups"] = {
					i(226298),	-- Puppeted Mechanical Spider
				},
			}),
			o(456001, {	-- Rock Engineer's Wrench
				["coord"] = { 61.3, 69.6, ISLE_OF_DORN },
				["questID"] = 83866,
				["groups"] = {
					i(226292),	-- Rock Engineer's Wrench
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(PROFESSION_KNOWLEDGE.TWW.ENGINEERING),
			},
		},{
			i(228775),	-- Algari Engineer's Notepad
			q(83728, {	-- TWW Inscription Order: Engineering
				["name"] = "TWW Inscription Order: Engineering",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 222621 },	-- Algari Treatise on Engineering
			}),
			q(83260, {	-- TWW Weekly Engineering Knowledgepoint #1
				["name"] = "TWW Weekly Engineering Treasure #1",
				["provider"] = { "i", 225228 },	-- Rust-Locked Mechanism
			}),
			q(83261, {	-- TWW Weekly Engineering Knowledgepoint #2
				["name"] = "TWW Weekly Engineering Treasure #2",
				["provider"] = { "i", 225229 },	-- Earthen Induction Coil
			}),
		})),
	})),
	expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(42798, {	-- Engineering at Midnight
				i(264001),	-- Midnight Engineer's Shop Sign (DECOR!)
			}),
		}),
		n(QUESTS, {
			q(93692, {	-- Engineering Services Requested
				["sourceQuests"] = { 93727 },	-- Crafting Orders: Engineering
				["provider"] = { "n", 241452 },	-- Danwe <Engineering Trainer>
				["coord"] = { 43.5, 54.1, MAP.MIDNIGHT.SILVERMOON_CITY },
				["isWeekly"] = true,
				["groups"] = {
					i(263456),	-- Thalassian Engineer's Notepad
				},
			}),
		}),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", PROFESSION_KNOWLEDGE.MID.ENGINEERING, 1 }} }, {
				r(1229875),	-- Aetherlume Bands
				r(1229876),	-- Aetherlume Bracelets
				r(1229880),	-- Aetherlume Clonkers
				r(1229870),	-- Aetherlume Eye Wrap
				r(1229877),	-- Aetherlume Guards
				r(1229871),	-- Aetherlume Optics
				r(1229879),	-- Aetherlume Runners
				r(1229874),	-- Aetherlume Silken Cuffs
				r(1229878),	-- Aetherlume Softsteppers
				r(1229881),	-- Aetherlume Stompers
				r(1229873),	-- Aetherlume Sun Guard
				r(1229872),	-- Aetherlume Vision Shroud
				r(1229921),	-- HU5H, Nonchalant Pup
				r(1229906),	-- Junker's Big Ol' Bag
				r(1229924),	-- M3DDY
				r(1282456),	-- P.O.W. x3
				r(1229902),	-- Sin'dorei Angler's Rod
				r(1229905),	-- Sin'dorei Clampers
				r(1229897),	-- Sin'dorei Gilded Hardhat
				r(1229894),	-- Sin'dorei Headlamp
				r(1229907),	-- Sin'dorei Snippers
				r(1229903),	-- Turbo-Junker's Multitool
			}),
		}),
		n(TREASURES, {
			o(525941, {	-- Ethereal Stormwrench
				["coord"] = { 54.0, 51.0, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				["questID"] = 89137,
				["groups"] = {
					i(238560),	-- Ethereal Stormwrench
				},
			}),
			o(525942, {	-- Expeditious Pylon
				["coord"] = { 68.0, 49.8, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 89136,
				["groups"] = {
					i(238559),	-- Expeditious Pylon
				},
			}),
			o(525938, {	-- Handy Wrench
				["coord"] = { 34.2, 87.8, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89140,
				["groups"] = {
					i(238563),	-- Handy Wrench
				},
			}),
			o(525943, {	-- Manual of Mistakes and Mishaps
				["coord"] = { 39.6, 45.8, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 89135,
				["groups"] = {
					i(238558),	-- Manual of Mistakes and Mishaps
				},
			}),
			o(525944, {	-- Miniaturized Transport Skiff
				["coord"] = { 28.9, 39.1, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				["questID"] = 89134,
				["groups"] = {
					i(238557),	-- Miniaturized Transport Skiff
				},
			}),
			o(525940, {	-- Offline Helper Bot
				["coord"] = { 65.3, 35.0, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
				["questID"] = 89138,
				["groups"] = {
					i(238561),	-- Offline Helper Bot
				},
			}),
			o(525945, {	-- One Engineer's Junk
				["coord"] = { 51.2, 74.6, MAP.MIDNIGHT.SILVERMOON_CITY },
				["questID"] = 89133,
				["groups"] = {
					i(238556),	-- One Engineer's Junk
				},
			}),
			o(525939, {	-- What To Do When Nothing Works
				["coord"] = { 51.3, 57.0, MAP.MIDNIGHT.SILVERMOON_CITY },
				["questID"] = 89139,
				["groups"] = {
					i(238562),	-- What To Do When Nothing Works
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(PROFESSION_KNOWLEDGE.MID.ENGINEERING),
			},
		},{
			i(263456),	-- Thalassian Engineer's Notepad
			--[[ Has same questID as war within
			q(83728, {	-- MID Inscription Order: Engineering
				["name"] = "MID Inscription Order: Engineering",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 245809 },	-- Thalassian Treatise on Engineering
			}),
			--]]
			--[[ Needs QuestIDs
			q(83260, {	-- MID Weekly Engineering Knowledgepoint #1
				["name"] = "MID Weekly Engineering Treasure #1",
				["provider"] = { "i", 259194 },	-- Dance Gear
			}),
			q(83261, {	-- MID Weekly Engineering Knowledgepoint #2
				["name"] = "MID Weekly Engineering Treasure #2",
				["provider"] = { "i", 259195 },	-- Dawn Capacitor
			}),
			--]]
		})),
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	n(PROFESSIONS, {
		prof(ENGINEERING, {
			q(41100),	-- FLAG - Swap Didis - triggers after completing the "Endless Possibilities" (questID 40854)
			q(45365),	-- Treasure: Wand of Simulated Life - part of some legion engineering quest
		}),
	}),
})));
