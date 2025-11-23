-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
local DF_LEATHERWORKING_KNOWLEDGE = 2025;
local TWW_LEATHERWORKING_KNOWLEDGE = 2792;
root(ROOTS.Professions, prof(LEATHERWORKING, bubbleDownSelf({ ["requireSkill"] = LEATHERWORKING }, {
	n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
		ach(18884),	-- A Test of Scale IV
		ach(18883),	-- A Test of Scale III
		ach(18882),	-- A Test of Scale II
		ach(18881),	-- A Test of Scale I
		ach(18793, {	-- Always Be Camping
			crit(61200, {	-- Place a Gnoll Tent
				["provider"] = { "i", 193476 },	-- Place a Gnoll Tent
			}),
			crit(61203),	-- Cured Rugged Hide (automated)
			crit(61204),	-- Stitch a Magnificent Hide Pack (automated)
			crit(61207, {	-- Eat Dirge's Kickin' Chimaerok Chops
				["provider"] = { "i", 21023 },	-- Eat Dirge's Kickin' Chimaerok Chops
			}),
			crit(61205),	-- Fish in any school of fish
			crit(61206, {	-- Take a S.E.L.F.I.E.
				["provider"] = { "i", 122674 },	-- S.E.L.F.I.E. Camera MkII
			}),
		}),
		ach(18900),	-- Budget Bard (automated)
	})),
	expansion(EXPANSION.CLASSIC, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {
			ach(17498, {	-- Renowned Leatherworking Specialist
				["altQuests"] = {
					5141,	-- Dragonscale Leatherworking [A]
					5145,	-- Dragonscale Leatherworking [H]
					5144,	-- Elemental Leatherworking [A]
					5146,	-- Elemental Leatherworking [H]
					5143,	-- Tribal Leatherworking [A]
					5148,	-- Tribal Leatherworking [H]
				},
				["sourceQuestNumRequired"] = 1,
				["timeline"] = { ADDED_10_0_7, REMOVED_10_0_7 },
			}),
			ach(18899, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- You Saw Nothing
				crit(61658, {	-- Gordok Ogre Suit shamelessly crafted
					["provider"] = { "i", 18258 },	-- Gordok Ogre Suit
				}),
				crit(61659, {	-- Gordok Ogre Suit donned
					["provider"] = { "i", 18258 },	-- Gordok Ogre Suit
				}),
			})),
		})),
		n(QUESTS, sharedDataSelf({
			["timeline"] = { REMOVED_4_0_3 },
			["lvl"] = 40,
		}, {
			q(5141, {	-- Dragonscale Leatherworking [A]
				["altQuests"] = {
					5144,	-- Elemental Leatherworking
					5143,	-- Tribal Leatherworking
				},
				["qg"] = 7866,	-- Peter Galen
				["coord"] = { 37.4, 65.4, AZSHARA },
				["cost"] = {
					{ "i", 8203, 2 },	-- Tough Scorpid Breastplate
					{ "i", 8204, 2 },	-- Tough Scorpid Gloves
					{ "i", 8165, 10 },	-- Worn Dragonscale
				},
				["requireSkill"] = LEATHERWORKING,
				["learnedAt"] = 225,
				["races"] = ALLIANCE_ONLY,
			}),
			q(5145, {	-- Dragonscale Leatherworking [H]
				["altQuests"] = {
					5146,	-- Elemental Leatherworking
					5148,	-- Tribal Leatherworking
				},
				["qg"] = 7867,	-- Thorkaf Dragoneye
				["coord"] = { 62.6, 57.4, BADLANDS },
				["cost"] = {
					{ "i", 8203, 2 },	-- Tough Scorpid Breastplate
					{ "i", 8204, 2 },	-- Tough Scorpid Gloves
					{ "i", 8165, 10 },	-- Worn Dragonscale
				},
				["requireSkill"] = LEATHERWORKING,
				["learnedAt"] = 225,
				["races"] = HORDE_ONLY,
			}),
			q(5144, {	-- Elemental Leatherworking [A]
				["altQuests"] = {
					5141,	-- Dragonscale Leatherworking
					5143,	-- Tribal Leatherworking
				},
				["qg"] = 7868,	-- Sarah Tanner
				["coord"] = { 63.6, 76.0, SEARING_GORGE },
				["cost"] = {
					{ "i", 7081, 2 },	-- Breath of Wind
					{ "i", 7075, 2 },	-- Core of Earth
					{ "i", 7079, 2 },	-- Globe of Water
					{ "i", 7077, 2 },	-- Heart of Fire
				},
				["requireSkill"] = LEATHERWORKING,
				["learnedAt"] = 225,
				["races"] = ALLIANCE_ONLY,
			}),
			q(5146, {	-- Elemental Leatherworking [H]
				["altQuests"] = {
					5145,	-- Dragonscale Leatherworking
					5148,	-- Tribal Leatherworking
				},
				["qg"] = 7869,	-- Brumn Winterhoof
				["coord"] = { 28.2, 45.0, ARATHI_HIGHLANDS },
				["cost"] = {
					{ "i", 7081, 2 },	-- Breath of Wind
					{ "i", 7075, 2 },	-- Core of Earth
					{ "i", 7079, 2 },	-- Globe of Water
					{ "i", 7077, 2 },	-- Heart of Fire
				},
				["requireSkill"] = LEATHERWORKING,
				["learnedAt"] = 225,
				["races"] = HORDE_ONLY,
			}),
			q(5143, {	-- Tribal Leatherworking [A]
				["sourceQuest"] = 2853,	-- Master of the Wild Leather [A]
				["altQuests"] = {
					5141,	-- Dragonscale Leatherworking
					5144,	-- Elemental Leatherworking
				},
				["qg"] = 7870,	-- Caryssia Moonhunter
				["coord"] = { 89.4, 46.5, FERALAS },
				["cost"] = {
					{ "i", 8214, 1 },	-- Wild Leather Helmet
					{ "i", 8211, 1 },	-- Wild Leather Vest
				},
				["requireSkill"] = LEATHERWORKING,
				["learnedAt"] = 225,
				["races"] = ALLIANCE_ONLY,
			}),
			q(5148, {	-- Tribal Leatherworking [H]
				["sourceQuest"] = 2860,	-- Master of the Wild Leather [H]
				["altQuests"] = {
					5145,	-- Dragonscale Leatherworking
					5146,	-- Elemental Leatherworking
				},
				["qg"] = 7871,	-- Se'Jib
				["coord"] = { 36.6, 34.2, STRANGLETHORN_VALE },
				["cost"] = {
					{ "i", 8214, 1 },	-- Wild Leather Helmet
					{ "i", 8211, 1 },	-- Wild Leather Vest
				},
				["requireSkill"] = LEATHERWORKING,
				["learnedAt"] = 225,
				["races"] = HORDE_ONLY,
			}),
		})),
	}),
	expansion(EXPANSION.TBC, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_5 } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18894),	-- Free Stylin' (automated)
		})),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
		n(QUESTS, {
			q(36176, {	-- A Call for Huntsman
				["description"] = "This item can drop from any Draenor mob.",
				["providers"] = {
					{ "i", 114877 },	-- Dirty Note
					{ "n", 75043 },		-- Karnoth
				},
				["timeline"] = { ADDED_6_0_2 },
				["maps"] = {
					FROSTFIRE_RIDGE,
					GORGROND,
					DRAENOR_NAGRAND,
					DRAENOR_SHADOWMOON_VALLEY,
					SPIRES_OF_ARAK,
					TALADOR,
				},
				["requireSkill"] = LEATHERWORKING,
				["races"] = ALLIANCE_ONLY,
			}),
			q(36505, {	-- A Warrior's Shroud
				["description"] = "This item can drop from any Draenor mob.",
				["provider"] = { "i", 116173 },	-- Tattered Frostwolf Shroud
				["timeline"] = { ADDED_6_0_2 },
				["maps"] = {
					FROSTFIRE_RIDGE,
					GORGROND,
					DRAENOR_NAGRAND,
					DRAENOR_SHADOWMOON_VALLEY,
					SPIRES_OF_ARAK,
					TALADOR,
				},
				["requireSkill"] = LEATHERWORKING,
				["races"] = HORDE_ONLY,
			}),
		}),
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		n(QUESTS, {
			q(39958, {	-- Skin Deep
				["provider"] = { "n", 93523 },	-- Namha Moonwater
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["cost"] = {
					{ "i", 124113, 20 },	-- 20x Stonehide Leather
					{ "i", 124115, 5 },		-- 5x Stormscale
				},
				["_drop"] = { "g" },
				["groups"] = {
					r(195119, {	-- Leatherworking (Legion Master)
						["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1 },
						["collectible"] = false,
					}),
					applyclassicphase(BFA_PHASE_ONE, r(264590, {["timeline"] = {ADDED_8_0_1}})),	-- Legion Leatherworking
					r(330211, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Legion]
					r(330212, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Legion]
					r(330213, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Legion]
					r(330214, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Legion]
					r(330215, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Legion]
				},
			}),
			q(40183, {	-- Over Your Head
				["sourceQuests"] = { 39958 },	-- Skin Deep
				["provider"] = { "n", 93523 },	-- Namha Moonwater
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["groups"] = {
					r(194739),	-- Battlebound Warhelm (RECIPE!)
					r(194699),	-- Warhide Mask (RECIPE!)
					r(196428, {["u"]=TRAINING}),	-- Rough Warhide Mask
					r(196375, {["u"]=TRAINING}),	-- Shaved Stonehide Pelt
					r(196382, {["u"]=TRAINING}),	-- Stonehide Leather Lining
					r(196385, {["u"]=TRAINING}),	-- Stonehide Leather Strip
					r(196379, {["u"]=TRAINING}),	-- Tanned Stonehide Leather
					i(130868),	-- Fresh Stonehide Pelt (QI!)
					i(130891),	-- Namha's Tanning Mixture (QI!)
					i(129975),	-- Rough Warhide Mask (QI!)
					i(130869),	-- Shaved Stonehide Pelt (QI!)
					i(130872),	-- Stonehide Leather Lining (QI!)
					i(130875),	-- Stonehide Leather Strip (QI!)
					i(130870),	-- Tanned Stonehide Leather (QI!)
				},
			}),
			q(40196, {	-- Adventuring Anxieties
				["sourceQuests"] = { 40183 },	-- Over Your Head
				["provider"] = { "n", 93523 },	-- Namha Moonwater
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
			}),
			q(40197, {	-- The Necessary Materials
				["sourceQuests"] = { 40196 },	-- Adventuring Anxieties
				["provider"] = { "n", 93523 },	-- Namha Moonwater
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["cost"] = {{"i", 124113, 100 }},	-- 100x Stonehide Leather
			}),
			q(41889, {	-- Dazed of the Past
				["sourceQuests"] = { 40197 },	-- The Necessary Materials
				["provider"] = { "n", 93523 },	-- Namha Moonwater
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["groups"] = {
					r(196648),	-- Stonehide Leather Barding (RECIPE!)
					r(196469, {["u"]=TRAINING}),	-- Stonehide Caparison
					r(196467, {["u"]=TRAINING}),	-- Stonehide Champron
					r(196468, {["u"]=TRAINING}),	-- Stonehide Crinet
					r(196397, {["u"]=TRAINING}),	-- Stonehide Leather Barding
					r(208615, {["u"]=TRAINING}),	-- Stonehide Leather Strip
					r(208596, {["u"]=TRAINING}),	-- Tanned Stonehide Pelt
					i(130887),	-- Stonehide Leather Barding (QI!)
					i(130896),	-- Stonehide Leather Caparison (QI!)
					i(130894),	-- Stonehide Leather Champron (QI!)
					i(130895),	-- Stonehide Leather Crinet (QI!)
					i(130875),	-- Stonehide Leather Strip (QI!)
					i(136539),	-- Tanned Stonehide Leather (QI!)
				},
			}),
			q(40200, {	-- Battle Bonds [A]
				["sourceQuests"] = { 41889 },	-- Dazed of the Past
				["provider"] = { "n", 93523 },	-- Namha Moonwater
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["races"] = ALLIANCE_ONLY,
			}),
			q(40241, {	-- Battle Bonds [H]
				["sourceQuests"] = { 41889 },	-- Dazed of the Past
				["provider"] = { "n", 93523 },	-- Namha Moonwater
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["races"] = HORDE_ONLY,
			}),
			q(40201, {	-- Playthings
				["sourceQuests"] = {
					40200,	-- Battle Bonds [A]
					40241,	-- Battle Bonds [H]
				},
				["provider"] = { "n", 93523 },	-- Namha Moonwater
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["groups"] = {
					r(194776),	-- Leather Pet Bed (RECIPE!)
					r(196375, {["u"]=TRAINING}),	-- Shaved Stonehide Pelt
					r(196442, {["u"]=TRAINING}),	-- Stonehide Leather Bed
					r(196382, {["u"]=TRAINING}),	-- Stonehide Leather Lining
					r(196385, {["u"]=TRAINING}),	-- Stonehide Leather Strip
					r(196379, {["u"]=TRAINING}),	-- Tanned Stonehide Leather
					i(130869),	-- Shaved Stonehide Pelt (QI!)
					i(130090),	-- Stonehide Leather Bed (QI!)
					i(130872),	-- Stonehide Leather Lining (QI!)
					i(130875),	-- Stonehide Leather Strip (QI!)
					i(130870),	-- Tanned Stonehide Leather (QI!)
				},
			}),
			q(40180, {	-- Mail Men
				["sourceQuests"] = { 40183 },	-- Over Your Head
				["provider"] = { "n", 93523 },	-- Namha Moonwater
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
			}),
			q(40177, {	-- Leather Lady
				["sourceQuests"] = { 40183 },	-- Over Your Head
				["provider"] = { "n", 93523 },	-- Namha Moonwater
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
			}),
			q(40179, {	-- Stormheim Savagery
				["sourceQuests"] = { 40177 },	-- Leather Lady
				["provider"] = { "n", 93522 },	-- Diane Cannings
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["groups"] = {
					r(194696),	-- Warhide Belt [Rank 1] (RECIPE!)
					r(194698),	-- Warhide Pants [Rank 1] (RECIPE!)
					i(129972),	-- Vrykul Leather Binding (QI!)
				},
			}),
			q(40178, {	-- Vestment Opportunity
				["sourceQuests"] = { 40177 },	-- Leather Lady
				["provider"] = { "n", 93522 },	-- Diane Cannings
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["groups"] = {
					r(194702),	-- Warhide Jerkin [Rank 1] (RECIPE!)
					i(129971),	-- Hideshaper's Vestment (QI!)
				},
			}),
			q(40181, {	-- Black Rook Bandit
				["sourceQuests"] = { 40180 },	-- Mail Men
				["provider"] = { "n", 98931 },	-- Thanid Glowergold
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["groups"] = {
					r(194736),	-- Battlebound Girdle [Rank 1] (RECIPE!)
					r(194738),	-- Battlebound Leggings [Rank 1] (RECIPE!)
					i(129973),	-- Black Rook Armor (QI!)
				},
			}),
			q(40182, {	-- Too Good To Pass Up
				["sourceQuests"] = { 40180 },	-- Mail Men
				["provider"] = { "n", 98931 },	-- Thanid Glowergold
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["groups"] = {
					r(194742),	-- Battlebound Hauberk [Rank 1] (RECIPE!)
					i(129974),	-- Black Rook Hauberk (QI!)
				},
			}),
			q(40176, {	-- From Head to Toe
				["sourceQuests"] = {
					40179,	-- Stormheim Savagery
					40181,	-- Black Rook Bandit
					40182,	-- Too Good To Pass Up
				},
				["provider"] = { "n", 93523 },	-- Namha Moonwater
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["groups"] = {
					r(194741),	-- Battlebound Treads [Rank 1] (RECIPE!)
					r(194701),	-- Warhide Footpads [Rank 1] (RECIPE!)
					r(196375, {["u"]=TRAINING}),	-- Shaved Stonehide Pelt
					r(196384, {["u"]=TRAINING}),	-- Stonehide Boot Exterior
					r(196382, {["u"]=TRAINING}),	-- Stonehide Leather Lining
					r(196427, {["u"]=TRAINING}),	-- Sturdy Stonehide Boots
					r(196379, {["u"]=TRAINING}),	-- Tanned Stonehide Leather
					i(130869),	-- Shaved Stonehide Pelt (QI!)
					i(130873),	-- Stonehide Boot Exterior (QI!)
					i(130872),	-- Stonehide Leather Lining (QI!)
					i(129964),	-- Sturdy Stonehide Boots (QI!)
					i(130870),	-- Tanned Stonehide Leather (QI!)
				},
			}),
			q(40187, {	-- Links in the Chain
				["sourceQuests"] = { 40176 },	-- From Head to Toe
				["provider"] = { "n", 98931 },	-- Thanid Glowergold
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
			}),
			q(40184, {	-- Tauren Tanning
				["sourceQuests"] = { 40176 },	-- From Head to Toe
				["provider"] = { "n", 93522 },	-- Diane Cannings
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
			}),
			q(40186, {	-- Drogbar Durability
				["sourceQuests"] = { 40184 },	-- Tauren Tanning
				["provider"] = { "n", 98948 },	-- Hrul Sharphoof
				["coord"] = { 36.8, 78.2, 750 },
				["groups"] = {
					r(194695),	-- Warhide Bindings [Rank 1] (RECIPE!)
					r(194700),	-- Warhide Gloves [Rank 1] (RECIPE!)
				},
			}),
			q(40185, {	-- Shoulder the Burden
				["sourceQuests"] = { 40184 },	-- Tauren Tanning
				["provider"] = { "n", 98948 },	-- Hrul Sharphoof
				["coord"] = { 36.8, 78.2, 750 },
				["groups"] = {
					r(194697),	-- Warhide Shoulderguard [Rank 1] (RECIPE!)
					i(129976),	-- Lohrumn's Shoulderguard (QI!)
				},
			}),
			q(40190, {	-- Hardening the Hide
				["sourceQuests"] = {
					40185,	-- Shoulder the Burden
					40186,	-- Drogbar Durability
				},
				["provider"] = { "n", 93522 },	-- Diane Cannings
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["isBreadcrumb"] = true,
			}),
			q(40191, {	-- Stamped Stories
				["sourceQuests"] = { 40190 },	-- Hardening the Hide
				["provider"] = { "n", 98948 },	-- Hrul Sharphoof
				["coord"] = { 36.8, 78.2, 750 },
				["groups"] = {
					r(194710),	-- Warhide Jerkin [Rank 2] (RECIPE!)
				},
			}),
			q(40192, {	-- Claw of the Land
				["sourceQuests"] = { 40191 },	-- Stamped Stories
				["provider"] = { "n", 98948 },	-- Hrul Sharphoof
				["coord"] = { 36.8, 78.2, 750 },
				["groups"] = {
					r(194704),	-- Warhide Belt [Rank 2] (RECIPE!)
					r(194703),	-- Warhide Bindings [Rank 2] (RECIPE!)
					i(130070),	-- Stalker Claw (QI!)
				},
			}),
			q(40188, {	-- Best Served Cold
				["sourceQuests"] = { 40187 },	-- Links in the Chain
				["provider"] = { "n", 98964 },	-- Celea
				["coord"] = { 47.4, 44.2, AZSUNA },
				["groups"] = {
					r(194735),	-- Battlebound Armbands [Rank 1] (RECIPE!)
					r(194740),	-- Battlebound Grips [Rank 1] (RECIPE!)
				},
			}),
			q(40189, {	-- Naga Know-How
				["sourceQuests"] = { 40187 },	-- Links in the Chain
				["provider"] = { "n", 98964 },	-- Celea
				["coord"] = { 47.4, 44.2, AZSUNA },
				["groups"] = {
					r(194737),	-- Battlebound Spaulders [Rank 1] (RECIPE!)
					i(129980),	-- Naga Shoulderguard (QI!)
				},
			}),
			q(40193, {	-- Getting the Kinks Out
				["sourceQuests"] = { 40189 },	-- Naga Know-How
				["provider"] = { "n", 98931 },	-- Thanid Glowergold
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["isBreadcrumb"] = true,
			}),
			q(40194, {	-- Reclaimed Cargo
				["sourceQuests"] = { 40193 },	-- Getting the Kinks Out
				["provider"] = { "n", 98964 },	-- Celea
				["coord"] = { 47.4, 44.2, AZSUNA },
				["groups"] = {
					r(194743),	-- Battlebound Armbands [Rank 2] (RECIPE!)
					r(194744),	-- Battlebound Girdle [Rank 2] (RECIPE!)
					i(130072),	-- Mail Armor Shipment (QI!)
				},
			}),
			q(40195, {	-- A Daring Rescue
				["sourceQuests"] = { 40194 },	-- Reclaimed Cargo
				["provider"] = { "n", 98964 },	-- Celea
				["coord"] = { 47.4, 44.2, AZSUNA },
				["groups"] = {
					i(130263),	-- Celea's Hauberk (QI!)
				},
			}),
			q(40327, {	-- Testing the Metal
				["sourceQuests"] = { 40195 },	-- A Daring Rescue
				["provider"] = { "n", 99689 },	-- Taldranis
				["coord"] = { 51.6, 58.0, AZSUNA },
				["groups"] = {
					r(194750),	-- Battlebound Hauberk [Rank 2] (RECIPE!)
				},
			}),
			q(40198, {	-- Rats!
				["sourceQuests"] = {
					40192,	-- Claw of the Land
					40327,	-- Testing the Metal
				},
				["provider"] = { "n", 93522 },	-- Diane Cannings
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["groups"] = {
					r(194709),	-- Warhide Footpads [Rank 2] (RECIPE!)
					r(194705),	-- Warhide Shoulderguard [Rank 2] (RECIPE!)
					i(130077),	-- Highmountain Leatherworking Pattern (QI!)
					i(130078),	-- Leatherworking Pattern Scrap (QI!)
				},
			}),
			q(40199, {	-- Leather Legwork
				["sourceQuests"] = { 40198 },	-- Rats!
				["provider"] = { "n", 98931 },	-- Thanid Glowergold
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["groups"] = {
					r(194745),	-- Battlebound Spaulders [Rank 2] (RECIPE!)
					r(194749),	-- Battlebound Treads [Rank 2] (RECIPE!)
					i(132172),	-- Crowbar
					i(130081),	-- Crowbar (QI!)
				},
			}),
			q(40202, {	-- The Final Lessons
				["sourceQuests"] = { 40199 },	-- Leather Legwork
				["provider"] = { "n", 93522 },	-- Diane Cannings
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
			}),
			q(40204, {	-- Evolution of the Past
				["sourceQuests"] = { 40202 },	-- The Final Lessons
				["provider"] = { "n", 98948 },	-- Hrul Sharphoof
				["coord"] = { 36.8, 78.2, 750 },
				["groups"] = {
					r(194708),	-- Warhide Gloves [Rank 2] (RECIPE!)
					i(130100),	-- Basilisk Hide (QI!)
				},
			}),
			q(40205, {	-- Respect for the Past
				["sourceQuests"] = { 40202 },	-- The Final Lessons
				["provider"] = { "n", 98948 },	-- Hrul Sharphoof
				["coord"] = { 36.8, 78.2, 750 },
				["groups"] = {
					r(194706),	-- Warhide Pants [Rank 2] (RECIPE!)
				},
			}),
			q(40203, {	-- Strength of the Past
				["sourceQuests"] = { 40202 },	-- The Final Lessons
				["provider"] = { "n", 98948 },	-- Hrul Sharphoof
				["coord"] = { 36.8, 78.2, 750 },
				["groups"] = {
					r(194707),	-- Warhide Mask [Rank 2] (RECIPE!)
					i(130098),	-- Scale of Deathwing (QI!)
				},
			}),
			q(40415, {	-- Well Spent Time
				["sourceQuests"] = {
					40204,	-- Evolution of the Past
					40205,	-- Respect for the Past
					40203,	-- Strength of the Past
				},
				["provider"] = { "n", 98948 },	-- Hrul Sharphoof
				["coord"] = { 36.8, 78.2, 750 },
			}),
			q(40206, {	-- A Debt Paid
				["sourceQuests"] = { 40199 },	-- Leather Legwork
				["provider"] = { "n", 98931 },	-- Thanid Glowergold
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
			}),
			q(40208, {	-- Eye of Azshara: Scales of the Sea
				["sourceQuests"] = { 40206 },	-- A Debt Paid
				["provider"] = { "n", 98964 },	-- Celea
				["coord"] = { 47.4, 44.2, AZSUNA },
				["maps"] = { 713 },	-- Eye of Azshara
				["groups"] = {
					r(194747),	-- Battlebound Warhelm [Rank 2] (RECIPE!)
					i(130106),	-- Warlord Parjesh's Hauberk (QI!)
				},
			}),
			q(40207, {	-- Scales of the Arcane
				["sourceQuests"] = { 40206 },	-- A Debt Paid
				["provider"] = { "n", 98964 },	-- Celea
				["coord"] = { 47.4, 44.2, AZSUNA },
				["groups"] = {
					r(194748),	-- Battlebound Grips [Rank 2] (RECIPE!)
					i(130104),	-- Blue Dragon Scale (QI!)
				},
			}),
			q(40209, {	-- Scales of the Earth
				["sourceQuests"] = { 40206 },	-- A Debt Paid
				["provider"] = { "n", 98964 },	-- Celea
				["coord"] = { 47.4, 44.2, AZSUNA },
				["groups"] = {
					r(194746),	-- Battlebound Leggings [Rank 2] (RECIPE!)
					i(130110),	-- Axetail Basilisk Matriarch Scales (QI!)
				},
			}),
			q(40210, {	-- Time Well Spent
				["sourceQuests"] = {
					40207,	-- Scales of the Arcane
					40208,	-- Eye of Azshara: Scales of the Sea
					40209,	-- Scales of the Earth
				},
				["provider"] = { "n", 98964 },	-- Celea
				["coord"] = { 47.4, 44.2, AZSUNA },
			}),
			q(40211, {	-- Demon Flesh
				["sourceQuests"] = {
					40415,	-- Well Spent Time
					40210,	-- Time Well Spent
					42079,	-- Masquerade
				},
				["provider"] = { "n", 93523 },	-- Namha Moonwater
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
			}),
			q(40212, {	-- Wrong End of the Knife
				["sourceQuests"] = { 40211 },	-- Demon Flesh
				["provider"] = { "n", 98969 },	-- Stalriss Dawnrunner
				["coord"] = { 26.6, 71.6, SURAMAR },
			}),
			q(40213, {	-- Hounds Abound
				["sourceQuests"] = { 40212 },	-- Wrong End of the Knife
				["provider"] = { "n", 98969 },	-- Stalriss Dawnrunner
				["coord"] = { 26.6, 71.6, SURAMAR },
				["groups"] = {
					i(130129),	-- Fel Hound Corpse (QI!)
				},
			}),
			q(40214, {	-- Fel Tanning
				["sourceQuests"] = { 40213 },	-- Hounds Abound
				["provider"] = { "n", 98969 },	-- Stalriss Dawnrunner
				["coord"] = { 26.6, 71.6, SURAMAR },
				["cost"] = {{ "i", 124438, 5 }},	-- 5x Unbroken Claw
				["groups"] = {
					r(194787),	-- Dreadleather Bindings [Rank 1] (RECIPE!)
					r(194796),	-- Gravenscale Armbands [Rank 1] (RECIPE!)
					r(196457, {["u"]=TRAINING}),	-- Fel Leather Cuff
					r(196395, {["u"]=TRAINING}),	-- Fel Leather Strap
					r(196456, {["u"]=TRAINING}),	-- Felhide Bracers
					i(130937),	-- Fel Leather Cuff (QI!)
					i(130880),	-- Fel Leather Strap (QI!)
					i(130130),	-- Felhide Bracers (QI!)
					i(130879),	-- Tanned Fel Leather (QI!)
				},
			}),
			q(40215, {	-- Mounting Made Easy
				["sourceQuests"] = { 40214 },	-- Fel Tanning
				["provider"] = { "n", 93523 },	-- Namha Moonwater
				["coord"] = { 35.4, 29.6, LEGION_DALARAN },
				["groups"] = {
					r(194780),	-- Elderhorn Riding Harness (RECIPE!)
				},
			}),
			-- The Sentinel's Eternal Refuge Questline
			q(46684, {	-- The Legend of the Elderhide
				["sourceQuests"] = { 46804 },	-- Fashion History and a Philosophy of Style
				["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
				["coord"] = { 41.2, 59.4, BROKEN_SHORE },
				["timeline"] = { ADDED_7_2_0 },
				["repeatable"] = true,
			}),
			q(46688, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Leather of the Ancients
				["sourceQuests"] = { 46684 },	-- The Legend of the Elderhide
				["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
				["coord"] = { 41.2, 59.4, BROKEN_SHORE },
				["repeatable"] = true,
				["groups"] = {
					i(146693),	-- Ancient Dreadleather (QI!)
					i(146692),	-- Ancient Dreadleather Armor (QI!)
				},
			})),
			q(46687, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Wisp and the Nightmare
				["sourceQuests"] = { 46684 },	-- The Legend of the Elderhide
				["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
				["coord"] = { 41.2, 59.4, BROKEN_SHORE },
				["maps"] = { 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, },	-- The Emerald Nightmare
				["repeatable"] = true,
				["groups"] = {
					i(146691),	-- Immaculate Spellsash (QI!)
					i(146690);	-- Xavius' Torn Spellsash (QI!)
				},
			})),
			q(46686, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Wisp and the Sea
				["sourceQuests"] = { 46684 },	-- The Legend of the Elderhide
				["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
				["coord"] = { 41.2, 59.4, BROKEN_SHORE },
				["maps"] = { 713 },	-- Eye of Azshara
				["repeatable"] = true,
				["groups"] = {
					i(146689),	-- Oiled Handmaiden's Gloves (QI!)
					i(146688),	-- Waterlogged Handmaiden's Gloves (QI!)
				},
			})),
			q(46685, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Wisp and the Shadow
				["sourceQuests"] = { 46684 },	-- The Legend of the Elderhide
				["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
				["coord"] = { 41.2, 59.4, BROKEN_SHORE },
				["maps"] = { 733 },	-- Darkheart Thicket
				["repeatable"] = true,
				["groups"] = {
					i(146686),	-- Colorless Shroud of Xavius (QI!)
					i(146687),	-- Dyed Shroud of Xavius (QI!)
				},
			})),
			q(46689, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Wisp-Touched Elderhide
				["sourceQuests"] = {
					46688,	-- Leather of the Ancients
					46687,	-- The Wisp and the Nightmare
					46686,	-- The Wisp and the Sea
					46685,	-- The Wisp and the Shadow
				},
				["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
				["coord"] = { 41.1, 59.3, BROKEN_SHORE },
				["repeatable"] = true,
				["groups"] = {
					i(147438),	-- Bag of Wisp-Touched Elderhide (QI!)
					i(146977),	-- Legendary Tanner's Kit (QI!)
					i(146712),	-- Wisp-Touched Elderhide
				},
			})),
			-- Vigilance Perch Questline
			q(46690, {	-- The Legend of the Wardenscale
				["sourceQuests"] = { 46804 },	-- Fashion History and a Philosophy of Style
				["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
				["coord"] = { 41.2, 59.4, BROKEN_SHORE },
				["timeline"] = { ADDED_7_2_0 },
				["repeatable"] = true,
				["groups"] = {
					i(147116),	-- Captured Spirit of the Father of Owls (QI!)
					i(147075),	-- Spirit Net (QI!)
				},
			}),
			q(46694, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Mail of the Ancients
				["sourceQuests"] = { 46690 },	-- The Legend of the Wardenscale
				["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
				["coord"] = { 41.2, 59.4, BROKEN_SHORE },
				["repeatable"] = true,
				["groups"] = {
					i(146701),	-- Ancient Gravenscale (QI!)
					i(146700),	-- Ancient Gravenscale Armor (QI!)
				},
			})),
			q(46692, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Owl and the Dreadlord
				["sourceQuests"] = { 46690 },	-- The Legend of the Wardenscale
				["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
				["coord"] = { 41.2, 59.4, BROKEN_SHORE },
				["maps"] = { 845, 846, 847, 848, 849 },	-- Cathedral of Eternal Night
				["repeatable"] = true,
				["groups"] = {
					i(146697),	-- Refinished Legplates of Mephistroth (QI!)
					i(146696),	-- Rusted Legplates of Mephistroth (QI!)
				},
			})),
			q(46693, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Owl and the Observer
				["sourceQuests"] = { 46690 },	-- The Legend of the Wardenscale
				["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
				["coord"] = { 41.2, 59.4, BROKEN_SHORE },
				["maps"] = { 815, 816, 817, 818, 819, 820, 821, 822, 809, 810, 811, 812, 813, 814 },	-- Return to Karazhan
				["repeatable"] = true,
				["groups"] = {
					i(146699),	-- Gleaming Bracers of the First War (QI!)
					i(146698),	-- Torn Bracers of the First War (QI!)
				},
			})),
			q(46691, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Owl and the Traitor
				["sourceQuests"] = { 46690 },	-- The Legend of the Wardenscale
				["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
				["coord"] = { 41.2, 59.4, BROKEN_SHORE },
				["maps"] = { 710, 711, 712, },	-- Vault of the Wardens
				["repeatable"] = true,
				["groups"] = {
					i(146694),	-- Chipped Felsong Mantle (QI!)
					i(146695),	-- Immaculate Felsong Mantle (QI!)
				},
			})),
			q(46695, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Prime Wardenscale
				["sourceQuests"] = {
					46694,	-- Mail of the Ancients
					46692,	-- The Owl and the Dreadlord
					46693,	-- The Owl and the Observer
					46691,	-- The Owl and the Traitor
				},
				["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
				["coord"] = { 41.1, 59.3, BROKEN_SHORE },
				["repeatable"] = true,
				["groups"] = {
					i(147439),	-- Box of Completed Prime Wardenscale (QI!)
					i(147209),	-- Legendary Wardenscale Supplies (QI!)
					i(146713),	-- Prime Wardenscale
				},
			})),
			-- 7.3.0
			q(48078, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Counterbalancing
				["sourceQuests"] = { 47743 },	-- The Child of Light and Shadow
				["provider"] = { "n", 125349 },	-- Enstraa
				["coord"] = { 39.6, 73.6, THE_VINDICAAR_KROKUUN_UPPER },
				["cost"] = {
					{ "i", 151566, 12 },	-- 12x Fiendish Leather
					{ "i", 151567, 12 },	-- 12x Lightweave Cloth
				},
				["groups"] = {
					i(151880),	-- Enstraa's Tanning Oil (QI!)
					i(151740),	-- Pattern: Fiendish Shoulderguards [Rank 1] (RECIPE!)
					i(151743),	-- Pattern: Fiendish Spaulders [Rank 1] (RECIPE!)
					i(151879),	-- Purified Fiendish Leather (QI!)
				},
			})),
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18777, {	-- Mallet of Thunderous Skins
				["provider"] = { "i", 164978 },	-- Mallet of Thunderous Skins
			}),
		})),
		n(QUESTS, {
			q(54481, {	-- Leathered Patterns [A]
				["provider"] = { "n", 136063 },	-- Cassandra Brennor
				["coord"] = { 75.5, 12.6, BORALUS },
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
				["races"] = ALLIANCE_ONLY,
			}),
			q(54482, {	-- Leathered Patterns [H]
				["provider"] = { "n", 122698 },	-- Xanjo
				["coord"] = { 44.1, 34.6, DAZARALOR },
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
				["races"] = HORDE_ONLY,
			}),
				------ Tools of Trade Questline ------
			q(55227, {	-- The Aeonian Artisan
				["description"] = "Requires 150 Kul Tiran Leatherworking.",
				["provider"] = { "n", 136063 },	-- Cassandra Brennor
				["coord"] = { 75.5, 12.6, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(53995, {	-- The Tauren Tanner
				["description"] = "Requires 150 Zandalari Leatherworking.",
				["provider"] = { "n", 122698 },	-- Xanjo
				["coord"] = { 44.1, 34.6, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
			}),
			q(55228, {	-- The Audition [A]
				["sourceQuests"] = { 55227 },	-- The Aeonian Artisan
				["provider"] = { "n", 151173 },	-- Daniss Ghostdancer
				["coord"] = { 69.6, 29.8, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["cost"] = {{ "i", 154167, 3 }},	-- 3x Drums of the Maelstrom
				["races"] = ALLIANCE_ONLY,
			}),
			q(55216, {	-- The Audition [H]
				["sourceQuests"] = { 53995 },	-- The Tauren Tanner
				["provider"] = { "n", 151162 },	-- Atikka "Ace" Moonchaser
				["coord"] = { 53.4, 92.5, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["cost"] = {{ "i", 154167, 3 }},	-- 3x Drums of the Maelstrom
				["races"] = HORDE_ONLY,
			}),
			q(55229, {	-- Repaying the Debt
				["sourceQuests"] = { 55228 },	-- The Audition [A]
				["provider"] = { "n", 151173 },	-- Daniss Ghostdancer
				["coord"] = { 69.6, 29.8, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(55217, {	-- Repaying the Life Debt
				["sourceQuests"] = { 55216 },	-- The Audition [H]
				["provider"] = { "n", 151162 },	-- Atikka "Ace" Moonchaser
				["coord"] = { 53.4, 92.5, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
			}),
			q(55230, {	-- Telonis' Prized Leather
				["sourceQuests"] = { 55229 },	-- Repaying the Debt
				["provider"] = { "n", 151287 },	-- Telonis
				["coord"] = { 42.6, 60.6, STORMWIND_CITY },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(167550),	-- Avarice's Chest Key (QI!)
					i(167541),	-- Rare Hides (QI!)
				},
			}),
			q(55218, {	-- Sheza's Prized Leather
				["sourceQuests"] = { 55217 },	-- Repaying the Life Debt
				["provider"] = { "n", 3037 },	-- Sheza Wildmane
				["coord"] = { 69.7, 26.7, THUNDER_BLUFF },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(167541),	-- Rare Hides (QI!)
					i(167673),	-- Verd's Chest Key (QI!)
				},
			}),
			q(55231, {	-- The Other Ghostdancer
				["sourceQuests"] = { 55228 },	-- The Audition [A]
				["provider"] = { "n", 151173 },	-- Daniss Ghostdancer
				["coord"] = { 69.6, 29.8, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(55219, {	-- Dropping by the Base
				["sourceQuests"] = { 55216 },	-- The Audition [H]
				["provider"] = { "n", 151162 },	-- Atikka "Ace" Moonchaser
				["coord"] = { 53.4, 92.5, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
			}),
			q(55232, {	-- Mevris' Menace
				["sourceQuests"] = { 55231 },	-- The Other Ghostdancer
				["provider"] = { "n", 151285 },	-- Mevris Ghostdancer
				["coord"] = { 53.6, 54.4, VALSHARAH },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(167542),	-- Brilliant Azure Scales (QI!)
				},
			}),
			q(55220, {	-- Bass Fishing
				["sourceQuests"] = { 55219 },	-- Dropping by the Base
				["provider"] = { "n", 108017 },	-- Torv Dubstomp
				["coord"] = { 54.9, 77.9, 750 },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(167543),	-- Brilliant Golden Scales (QI!)
				},
			}),
			q(55233, {	-- Picking Bones [A]
				["sourceQuests"] = { 55228 },	-- The Audition [A]
				["provider"] = { "n", 151173 },	-- Daniss Ghostdancer
				["coord"] = { 69.6, 29.8, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					o(325392, {	-- Box of Harvested Bones
						["coords"] = {
							{ 56.9, 32.7, TIRAGARDE_SOUND },
							{ 58.1, 32.6, TIRAGARDE_SOUND },
						},
						["groups"] = { i(165231) },	-- Unwaning Bones (QI!)
					}),
				},
			}),
			q(55221, {	-- Picking Bones [H]
				["sourceQuests"] = { 55216 },	-- The Audition [H]
				["provider"] = { "n", 151162 },	-- Atikka "Ace" Moonchaser
				["coord"] = { 53.4, 92.5, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
				["groups"] = { i(165231) },	-- Unwaning Bones (QI!)
			}),
			q(55234, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- Make Some Noise [A]
				["sourceQuests"] = {
					55230,	-- Telonis' Prized Leather
					55232,	-- Mevris' Menace
					55233,	-- Picking Bones [A]
				},
				["provider"] = { "n", 151173 },	-- Daniss Ghostdancer
				["coord"] = { 69.6, 29.8, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(167560),	-- Cleaned Brilliant Scales (QI!)
					i(167558),	-- Etched Bones (QI!)
					r(293135, {["u"]=TRAINING}),	-- Drum of Primal Might (RECIPE!)
					i(167561),	-- Drum of Primal Might (QI!)
					i(167559),	-- Supple Hides (QI!)
				},
			})),
			q(55222, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- Make Some Noise [H]
				["sourceQuests"] = {
					55218,	-- Sheza's Prized Leather
					55220,	-- Bass Fishing
					55221,	-- Picking Bones [H]
				},
				["provider"] = { "n", 151162 },	-- Atikka "Ace" Moonchaser
				["coord"] = { 53.4, 92.5, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(167560),	-- Cleaned Brilliant Scales (QI!)
					i(167558),	-- Etched Bones (QI!)
					r(293135, {["u"]=TRAINING}),	-- Drum of Primal Might (RECIPE!)
					i(167561),	-- Drum of Primal Might (QI!)
					i(167559),	-- Supple Hides (QI!)
				},
			})),
			q(55235, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- Instruments of Destruction [A]
				["sourceQuests"] = { 55234 },	-- Make Some Noise [A]
				["provider"] = { "n", 151173 },	-- Daniss Ghostdancer
				["coord"] = { 69.6, 29.8, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					r(293076),	-- Mallet of Thunderous Skins (RECIPE!)
				},
			})),
			q(55223, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- Instruments of Destruction [H]
				["sourceQuests"] = { 55222 },	-- Make Some Noise [H]
				["provider"] = { "n", 151162 },	-- Atikka "Ace" Moonchaser
				["coord"] = { 53.4, 92.5, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					r(293076),	-- Mallet of Thunderous Skins (RECIPE!)
				},
			})),
		}),
	})),
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(QUESTS, {
			q(70362, {	-- Dragon Isles Leatherworking
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Leatherworking.",
				["provider"] = { "n", 192048 },	-- Deidre Flemmin
				["coord"] = { 76.6, 34.7, THE_WAKING_SHORES },
				["lockCriteria"] = { 1, "spellID", 366249 },	-- Dragon Isles Leatherworking
			}),
			q(70033, {	-- Artisan's Supply: Pioneer's Leather Boots
				["qgs"] = {
					192027,	-- Dokhusek
					192048,	-- Deirdre Flemmin
					195785,	-- Samar
					196628,	-- Ekhi
				},
				["coords"] = {
					{ 57.9, 68.1, THE_WAKING_SHORES },	-- Deirdre Flemmin
					{ 80.8, 59.4, OHNAHRAN_PLAINS },	-- Dokhusek
					{ 29.0, 61.0, VALDRAKKEN },			-- Samar
					{ 39.4, 55.4, OHNAHRAN_PLAINS },	-- Ekhi
				},
				["cost"] = {{ "i", 193386, 1 }},	-- Pioneer's Leather Boots
				["_drop"] = { "g" },
			}),
			q(70256, {	-- Hidden Profession Master Leatherworking
				["name"] = "Hidden Profession Master: Leatherworking",
				["provider"] = { "n", 194842 },	-- Erden
				["coord"] = { 82.4, 50.6, OHNAHRAN_PLAINS },
			}),
			q(70191, {	-- Specialized Secrets: Leatherworking
				["sourceQuests"] = { 69979 },	-- A Worthy Hunt
				["provider"] = { "n", 193110 },	-- Khadin
				["coord"] = { 51.8, 33.0, OHNAHRAN_PLAINS },
				["cost"] = {{ "i", 191784, 1 }},	-- Dragon Shard of Knowledge
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
				i(198613),	-- Leatherworking Designs
			},
		},{
			-- Requires 25 Skill
			q(66363, {	-- Basilisk Bucklers
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191002 },	-- Dhurrel
				["coord"] = { 36.8, 63.6, VALDRAKKEN },
				["groups"] = {
					i(191780),	-- Rigid Basilisk Hide (QI!)
				},
			}),
			q(70594, {	-- Leatherworking Services Requested
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 194026 },	-- Azley
				["coord"] = { 35.6, 58.8, VALDRAKKEN },
			}),
			q(66951, {	-- Population Control
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191004 },	-- Temnaayu
				["coord"] = { 36.8, 62.4, VALDRAKKEN },
				["groups"] = {
					i(194448),	-- Salvaged Hide (QI!)
				},
			}),
			q(72407, {	-- Soaked in Success
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191004 },	-- Temnaayu
				["coord"] = { 36.8, 62.4, VALDRAKKEN },
				["groups"] = {
					i(201822),	-- Waterproof Hide (QI!)
				},
			}),
			q(66364, {	-- To Fly a Kite
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191004 },	-- Temnaayu
				["coord"] = { 36.8, 62.4, VALDRAKKEN },
				["groups"] = {
					i(191782),	-- Fresh Proto-Dragon Wings (QI!)
				},
			}),

			-- Requires 45 Skill
			q(70571, {	-- Drums Here!
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185551 },	-- Hideshaper Koruz
				["coord"] = { 28.6, 61.4, VALDRAKKEN },
			}),
			q(70569, {	-- For Trisket, a Task Kit
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185551 },	-- Hideshaper Koruz
				["coord"] = { 28.6, 61.4, VALDRAKKEN },
			}),
			q(70568, {	-- Tipping the Scales
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185551 },	-- Hideshaper Koruz
				["coord"] = { 28.6, 61.4, VALDRAKKEN },
			}),
			q(70567, {	-- When You Give Bakar a Bone
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185551 },	-- Hideshaper Koruz
				["coord"] = { 28.6, 61.4, VALDRAKKEN },
			}),
			-- Requires ?? Skill - Patch 10.1.0.
			q(75354, {	-- Mycelium Mastery
				["provider"] = { "n", 203516 },	-- Kayann
				["coord"] = { 36.5, 62.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
				["groups"] = {
					i(204792),	-- Nightlight Conkerbell Sample (QI!)
				},
			}),
			q(75368, {	-- Stones and Scales
				["provider"] = { "n", 203516 },	-- Kayann
				["coord"] = { 36.5, 62.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
				["groups"] = {
					i(198613),	-- Leatherworking Designs
					i(204800),	-- Scaly Stone Hide (QI!)
				},
			}),
			-- Patch 10.2.0.
			q(77945, {	-- Boots on the Ground
				["provider"] = { "n", 210162 },	-- Magnolia Oaken
				["coord"] = { 36.8, 63.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_0 },
				["cost"] = {{ "i", 193386, 3 }},	-- 3x Pioneer's Leather Boots
			}),
			q(77946, {	-- Fibrous Thread (TODO: didn't fire hqt as other one)
				["provider"] = { "n", 210162 },	-- Magnolia Oaken
				["coord"] = { 36.8, 63.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_0 },
				["groups"] = {
					i(198613),	-- Leatherworking Designs
					o(408134, {	-- Enchanted Thicket
						i(208950),	-- Emerald Fiber (QI!)
					}),
				},
			}),
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", DF_LEATHERWORKING_KNOWLEDGE, 1 }} }, {
				r(375125),	-- Bow of the Dragon Hunters
				r(375159),	-- Fang Adornments
				r(375123),	-- Flame-Touched Chain
				r(375117),	-- Flame-Touched Chainmail
				r(375124),	-- Flame-Touched Cuffs
				r(375119),	-- Flame-Touched Handguards
				r(375120),	-- Flame-Touched Helmet
				r(375121),	-- Flame-Touched Legguards
				r(375122),	-- Flame-Touched Spaulders
				r(375118),	-- Flame-Touched Treads
				r(375197),	-- Flaring Cowl
				r(375166),	-- Illustrious Insight
				r(375115),	-- Life-Bound Belt
				r(375116),	-- Life-Bound Bindings
				r(375110),	-- Life-Bound Boots
				r(375112),	-- Life-Bound Cap
				r(375109),	-- Life-Bound Chestpiece
				r(375111),	-- Life-Bound Gloves
				r(375114),	-- Life-Bound Shoulderpads
				r(375113),	-- Life-Bound Trousers
				r(375160),	-- Toxified Armor Patch
				r(375199),	-- Witherrot Tome
			}),
		}),
		n(TREASURES, {
			o(380593, {	-- Bag of Decayed Scales
				["questID"] = 70294,
				["coord"] = { 56.8, 30.5, THALDRASZUS },
				["groups"] = {
					i(198690),	-- Decayed Scales
				},
			}),
			o(380587, {	-- Crate of Treated Hides
				["questID"] = 70286,
				["coord"] = { 57.5, 41.3, THE_AZURE_SPAN },
				["groups"] = {
					i(198683),	-- Treated Hides
				},
			}),
			o(380547, {	-- Decay-Infused Tanning Oil
				["questID"] = 70266,
				["coord"] = { 16.77, 38.83, THE_AZURE_SPAN },
				["groups"] = {
					i(198658),	-- Decay-Infused Tanning Oil
				},
			}),
			o(410550, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Dreamtalon Claw
				["coord"] = { 34.0, 29.7, EMERALD_DREAM },
				["questID"] = 78305,
				["groups"] = {
					i(210215),	-- Dreamtalon Claw
				},
			})),
			o(398783, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- Flame-Infused Scale Oil
				["coord"] = { 41.2, 48.7, ZARALEK_CAVERN },
				["questID"] = 75495,
				["groups"] = {
					i(204986),	-- Flame-Infused Scale Oil
				},
			})),
			o(398785, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- Lava-Forged Leatherworker's "Knife"
				["coord"] = { 45.2, 21.0, ZARALEK_CAVERN },
				["questID"] = 75496,
				["groups"] = {
					i(204987),	-- Lava-Forged Leatherworker's "Knife"
				},
			})),
			o(410534, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Molted Faerie Dragon Scales
				["coord"] = { 37.4, 71.0, EMERALD_DREAM },
				["questID"] = 78299,
				["groups"] = {
					i(210211),	-- Molted Faerie Dragon Scales
				},
			})),
			o(380615, {	-- Poacher's Pack
				["questID"] = 70308,
				["coord"] = { 39.4, 86.3, THE_WAKING_SHORES },
				["groups"] = {
					i(198711),	-- Poacher's Pack
				},
			}),
			o(380579, {	-- Spare Djaradin Tools
				["questID"] = 70280,
				["coord"] = { 64.3, 25.4, THE_WAKING_SHORES },
				["groups"] = {
					i(198667),	-- Spare Djaradin Tools
				},
			}),
			o(398791, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- Sulfur-Soaked Skins
				["coord"] = { 49.5, 54.8, ZARALEK_CAVERN },
				["questID"] = 75502,
				["groups"] = {
					i(204988),	-- Sulfur-Soaked Skins
				},
			})),
			o(410529, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Tuft of Dreamsaber Fur
				["coord"] = { 41.7, 66.4, EMERALD_DREAM },
				["questID"] = 78298,
				["groups"] = {
					i(210208),	-- Tuft of Dreamsaber Fur
				},
			})),
			o(380554, {	-- Well-Danced Drum
				["description"] = "Fix the drum by interacting with it, wait for the little Tuskarr to finish dancing, then you can loot the treasure.",
				["questID"] = 70269,
				["coord"] = { 12.5, 49.4, THE_AZURE_SPAN },
				["groups"] = {
					i(201018),	-- Well-Danced Drum
				},
			}),
			o(380602, {	-- Wind-Blessed Hide
				["questID"] = 70300,
				["coord"] = { 86.4, 53.7, OHNAHRAN_PLAINS },
				["groups"] = {
					i(198696),	-- Wind-Blessed Hide
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(DF_LEATHERWORKING_KNOWLEDGE),
			},
		},{
			i(198613),	-- Leatherworking Designs
			q(74113, {	-- DF Inscription Order: Leatherworking
				["name"] = "DF Inscription Order: Leatherworking",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 194700 },	-- Draconic Treatise on Leatherworking
			}),
			q(66384, {	-- DF Weekly Leatherworking Knowledgepoint #1
				["name"] = "DF Leatherworking Treasure #1",
				["provider"] = { "i", 193910 },		-- Molten Dragon Scales
			}),
			q(66385, {	-- DF Weekly Leatherworking Knowledgepoint #2
				["name"] = "DF Leatherworking Treasure #2",
				["provider"] = { "i", 193913 },		-- Preserved Animal Parts
			}),
			q(70522, {	-- DF Weekly Leatherworking Knowledgepoint #3
				["name"] = "DF Leatherworking Drop #1: Proto Drake",
				["description"] = "Drops from any Proto Drake.\nCoordinates link to the spot(s) we found best.",
				["provider"] = { "i", 198975 },		-- Ossified Hide
				["coords"] = {
					{ 80.6, 33.8, THE_WAKING_SHORES },
					{ 79.4, 32.5, THE_WAKING_SHORES },
				},
				["crs"] = {
					196420,	-- Cavern Hunter (Thaldraszus)
					190056,	-- Primal Proto-Drake
				},
			}),
			q(70523, {	-- DF Weekly Leatherworking Knowledgepoint #4
				["name"] = "DF Leatherworking Drop #2: Sylvern&Vorquin",
				["description"] = "Drops from any Sylvern or Vorquin.\nCoordinates link to the spot(s) we found best.",
				["provider"] = { "i", 198976 },		-- Exceedingly Soft Skin
				["coords"] = {
					{ 36.6, 72.8, THALDRASZUS },
					{ 35.4, 72.8, THALDRASZUS },
					{ 32.4, 73.5, THALDRASZUS },
					{ 31.3, 76.5, THALDRASZUS },
				},
				["crs"] = {
					188277,	-- Garden Herdmare
					191317,	-- Creekside Grazer
					191203,	-- Pleasant Hart
				},
			}),
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(QUESTS, sharedData({
			["isWeekly"] = true,
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["groups"] = {
				i(228778),	-- Algari Leatherworker's Journal
			},
		},{
			q(84131, {	-- Leatherworking Services Requested
				["provider"] = { "n", 228177 },	-- Kala Clayhoof
				["coord"] = { 59.2, 55.2, DORNOGAL },
			}),
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", TWW_LEATHERWORKING_KNOWLEDGE, 1 }} }, {
				r(441460),	-- Blessed Weapon Grip
				r(441065),	-- Glyph-Etched Binding
				r(441059),	-- Glyph-Etched Breastplate
				r(441063),	-- Glyph-Etched Cuisses
				r(441064),	-- Glyph-Etched Epaulets
				r(441061),	-- Glyph-Etched Gauntlets
				r(441062),	-- Glyph-Etched Guise
				r(441060),	-- Glyph-Etched Stompers
				r(441066),	-- Glyph-Etched Vambraces
				r(441058),	-- Rune-Branded Armbands
				r(441053),	-- Rune-Branded Grasps
				r(441054),	-- Rune-Branded Hood
				r(441052),	-- Rune-Branded Kickers
				r(441055),	-- Rune-Branded Legwraps
				r(441056),	-- Rune-Branded Mantle
				r(441051),	-- Rune-Branded Tunic
				r(441057),	-- Rune-Branded Waistband
				r(443961),	-- Smoldering Pollen Hauberk
				r(443951),	-- Weathered Stormfront Vest
				r(441461),	-- Writhing Armor Banding
			}),
		}),
		n(TREASURES, {
			o(455965, {	-- Arathi Beveler Set
				["coord"] = { 47.5, 65.1, HALLOWFALL },
				["questID"] = 83902,
				["groups"] = {
					i(226328),	-- Arathi Beveler Set
				},
			}),
			o(455964, {	-- Arathi Leather Burnisher
				["coord"] = { 41.5, 57.8, HALLOWFALL },
				["questID"] = 83903,
				["groups"] = {
					i(226329),	-- Arathi Leather Burnisher
				},
			}),
			o(455962, {	-- Curved Nerubian Skinning Knife
				["coord"] = { 59.9, 54.0, AZJ_KAHET },
				["questID"] = 83905,
				["groups"] = {
					i(226331),	-- Curved Nerubian Skinning Knife
				},
			}),
			o(455968, {	-- Dornogal Craftsman's Flat Knife
				["coord"] = { 58.6, 30.7, ISLE_OF_DORN },
				["questID"] = 83899,
				["groups"] = {
					i(226325),	-- Dornogal Craftsman's Flat Knife
				},
			}),
			o(455966, {	-- Earthen Awl
				["coord"] = { 64.3, 65.2, THE_RINGING_DEEPS },
				["questID"] = 83901,
				["groups"] = {
					i(226327),	-- Earthen Awl
				},
			}),
			o(455969, {	-- Earthen Lacing Tools
				["coord"] = { 68.2, 23.3, DORNOGAL },	-- TODO: re-check mapID
				["questID"] = 83898,
				["groups"] = {
					i(226324),	-- Earthen Lacing Tools
				},
			}),
			o(455963, {	-- Nerubian Tanning Mallet
				["coord"] = { 55.0, 27.0, NERUBAR },
				["questID"] = 83904,
				["groups"] = {
					i(226330),	-- Nerubian Tanning Mallet
				},
			}),
			o(455967, {	-- Underground Stropping Compound
				["coord"] = { 47.1, 34.9, THE_RINGING_DEEPS },
				["questID"] = 83900,
				["groups"] = {
					i(226326),	-- Underground Stropping Compound
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(TWW_LEATHERWORKING_KNOWLEDGE),
			},
		},{
			-- i(),	-- Leatherworking Designs
			q(83267, {	-- TWW Weekly Leatherworking Knowledgepoint #1
				["name"] = "TWW Weekly Leatherworking Treasure #1",
				["provider"] = { "i", 225223 },		-- Sturdy Nerubian Carapace
			}),
			q(83268, {	-- TWW Weekly Leatherworking Knowledgepoint #2
				["name"] = "TWW Weekly Leatherworking Treasure #2",
				["provider"] = { "i", 225222 },		-- Studded Leather Band
			}),
		})),
	})),
	expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_0 } }, {
		n(ACHIEVEMENTS, {
			ach(42786, {	-- Leatherworking at Midnight
				["timeline"] = { ADDED_12_0_0 },
				["groups"] = {
				},
			}),
		}),
		--[[
		n(QUESTS, sharedData({
			["isWeekly"] = true,
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["groups"] = {
				i(228778),	-- Algari Leatherworker's Journal
			},
		},{
			q(84131, {	-- Leatherworking Services Requested
				["provider"] = { "n", 228177 },	-- Kala Clayhoof
				["coord"] = { 59.2, 55.2, DORNOGAL },
			}),
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", TWW_LEATHERWORKING_KNOWLEDGE, 1 }} }, {
				r(441460),	-- Blessed Weapon Grip
				r(441065),	-- Glyph-Etched Binding
				r(441059),	-- Glyph-Etched Breastplate
				r(441063),	-- Glyph-Etched Cuisses
				r(441064),	-- Glyph-Etched Epaulets
				r(441061),	-- Glyph-Etched Gauntlets
				r(441062),	-- Glyph-Etched Guise
				r(441060),	-- Glyph-Etched Stompers
				r(441066),	-- Glyph-Etched Vambraces
				r(441058),	-- Rune-Branded Armbands
				r(441053),	-- Rune-Branded Grasps
				r(441054),	-- Rune-Branded Hood
				r(441052),	-- Rune-Branded Kickers
				r(441055),	-- Rune-Branded Legwraps
				r(441056),	-- Rune-Branded Mantle
				r(441051),	-- Rune-Branded Tunic
				r(441057),	-- Rune-Branded Waistband
				r(443961),	-- Smoldering Pollen Hauberk
				r(443951),	-- Weathered Stormfront Vest
				r(441461),	-- Writhing Armor Banding
			}),
		}),
		n(TREASURES, {
			o(455965, {	-- Arathi Beveler Set
				["coord"] = { 47.5, 65.1, HALLOWFALL },
				["questID"] = 83902,
				["groups"] = {
					i(226328),	-- Arathi Beveler Set
				},
			}),
			o(455964, {	-- Arathi Leather Burnisher
				["coord"] = { 41.5, 57.8, HALLOWFALL },
				["questID"] = 83903,
				["groups"] = {
					i(226329),	-- Arathi Leather Burnisher
				},
			}),
			o(455962, {	-- Curved Nerubian Skinning Knife
				["coord"] = { 59.9, 54.0, AZJ_KAHET },
				["questID"] = 83905,
				["groups"] = {
					i(226331),	-- Curved Nerubian Skinning Knife
				},
			}),
			o(455968, {	-- Dornogal Craftsman's Flat Knife
				["coord"] = { 58.6, 30.7, ISLE_OF_DORN },
				["questID"] = 83899,
				["groups"] = {
					i(226325),	-- Dornogal Craftsman's Flat Knife
				},
			}),
			o(455966, {	-- Earthen Awl
				["coord"] = { 64.3, 65.2, THE_RINGING_DEEPS },
				["questID"] = 83901,
				["groups"] = {
					i(226327),	-- Earthen Awl
				},
			}),
			o(455969, {	-- Earthen Lacing Tools
				["coord"] = { 68.2, 23.3, DORNOGAL },	-- TODO: re-check mapID
				["questID"] = 83898,
				["groups"] = {
					i(226324),	-- Earthen Lacing Tools
				},
			}),
			o(455963, {	-- Nerubian Tanning Mallet
				["coord"] = { 55.0, 27.0, NERUBAR },
				["questID"] = 83904,
				["groups"] = {
					i(226330),	-- Nerubian Tanning Mallet
				},
			}),
			o(455967, {	-- Underground Stropping Compound
				["coord"] = { 47.1, 34.9, THE_RINGING_DEEPS },
				["questID"] = 83900,
				["groups"] = {
					i(226326),	-- Underground Stropping Compound
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(TWW_LEATHERWORKING_KNOWLEDGE),
			},
		},{
			-- i(),	-- Leatherworking Designs
			q(83267, {	-- TWW Weekly Leatherworking Knowledgepoint #1
				["name"] = "TWW Weekly Leatherworking Treasure #1",
				["provider"] = { "i", 225223 },		-- Sturdy Nerubian Carapace
			}),
			q(83268, {	-- TWW Weekly Leatherworking Knowledgepoint #2
				["name"] = "TWW Weekly Leatherworking Treasure #2",
				["provider"] = { "i", 225222 },		-- Studded Leather Band
			}),
		})),--]]
	})),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {
		n(PROFESSIONS, {
			prof(LEATHERWORKING, {
				q(47094),	-- Broken Shore - Choice: Leatherworking (L) - triggers when you choose to craft the leather legendary at Eliezer Hammerbeard (Nether Disruptor)
				q(47095),	-- Broken Shore - Choice: Leatherworking (M) - triggers when you choose to craft the mail legendary at Eliezer Hammerbeard (Nether Disruptor)
			}),
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {
		n(PROFESSIONS, {
			prof(LEATHERWORKING, {
				q(55628),	-- Tracking Quest - 15 minutes timer for recieving 'Spirit of the Bested' from other rare kill again (itemID 168138) (resets every 00,15,30,45 minut of hour)
			}),
		}),
	})),
});

-- #if ANYCLASSIC
local applytraining = function(g)
	-- #if NOT ANYCLASSIC
	-- TODO: Solve this for classic, until then, only apply the filter to Retail.
	bubbleDown({ ["u"] = TRAINING }, g);	-- Training Recipes / Unlearnable
	-- #endif
	return g;
end

profession(LEATHERWORKING, {
	applytraining({
		["name"] = "Training",
		["timeline"] = { ADDED_7_0_3 },
		["categoryID"] = 468,
		["groups"] = {
			{
				["name"] = "Drum of Primal Might",
				["timeline"] = { ADDED_8_1_5 },
				["recipeID"] = 293135,
			},
			{
				["name"] = "Fel Leather Cuff",
				["timeline"] = { ADDED_7_0_3 },
				["recipeID"] = 196457,
			},
			{
				["name"] = "Fel Leather Strap",
				["timeline"] = { ADDED_7_0_3 },
				["recipeID"] = 196395,
			},
			{
				["name"] = "Felhide Bracers",
				["timeline"] = { ADDED_7_0_3 },
				["recipeID"] = 196456,
			},
			{
				["name"] = "Shaved Felhide",
				["timeline"] = { ADDED_7_0_3 },
				["recipeID"] = 196387,
			},
			{
				["name"] = "Tanned Fel Leather",
				["timeline"] = { ADDED_7_0_3 },
				["recipeID"] = 196388,
			},
			{
				["name"] = "Material Preparation",
				["timeline"] = { ADDED_7_0_3 },
				["categoryID"] = 484,
				["groups"] = {
					{
						["name"] = "Shaved Stonehide Pelt",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 196375,
					},
					{
						["name"] = "Stonehide Leather Strip",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 208615,
					},
					{
						["name"] = "Stonehide Leather Strip",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 196385,
					},
				},
			},
			{
				["name"] = "Tanning",
				["timeline"] = { ADDED_7_0_3 },
				["categoryID"] = 485,
				["groups"] = {
					{
						["name"] = "Tanned Stonehide Leather",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 196379,
					},
					{
						["name"] = "Tanned Stonehide Pelt",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 208596,
					},
				},
			},
			{
				["name"] = "Shaping",
				["timeline"] = { ADDED_7_0_3 },
				["categoryID"] = 486,
				["groups"] = {
					{
						["name"] = "Stonehide Boot Base",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 196425,
					},
					{
						["name"] = "Stonehide Boot Exterior",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 196384,
					},
					{
						["name"] = "Stonehide Caparison",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 196469,
					},
					{
						["name"] = "Stonehide Champron",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 196467,
					},
					{
						["name"] = "Stonehide Crinet",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 196468,
					},
					{
						["name"] = "Stonehide Leather Lining",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 196382,
					},
					{
						["name"] = "Stonehide Leather Vamp",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 196383,
					},
				},
			},
			{
				["name"] = "Stitching",
				["timeline"] = { ADDED_7_0_3 },
				["categoryID"] = 487,
				["groups"] = {
					{
						["name"] = "Rough Warhide Mask",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 196428,
					},
					{
						["name"] = "Stonehide Leather Barding",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 196397,
					},
					{
						["name"] = "Stonehide Leather Bed",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 196442,
					},
					{
						["name"] = "Sturdy Stonehide Boots",
						["timeline"] = { ADDED_7_0_3 },
						["recipeID"] = 196427,
					},
				},
			},
		},
	}),
	applyclassicphase(WOD_PHASE_ONE, expansion(EXPANSION.WOD, {
		-- #if AFTER 9.0.1.36216
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1501,
			["groups"] = {
				{
					["name"] = "Impressive Burnished Essence",
					["recipeID"] = 397862,
					["timeline"] = { ADDED_10_0_5 },
				},
				{
					["name"] = "Relic of the Past I",
					["recipeID"] = 330206,
				},
				{
					["name"] = "Relic of the Past II",
					["recipeID"] = 330207,
				},
				{
					["name"] = "Relic of the Past III",
					["recipeID"] = 330208,
				},
				{
					["name"] = "Relic of the Past IV",
					["recipeID"] = 330209,
				},
				{
					["name"] = "Relic of the Past V",
					["recipeID"] = 330210,
				},
				{
					["name"] = "Remarkable Burnished Essence",
					["recipeID"] = 397863,
					["timeline"] = { ADDED_10_0_5 },
				},
			},
		},
		-- #endif
		{
			["name"] = "Reagents and Research",
			["categoryID"] = 381,
			["groups"] = {
				{
					["name"] = "Burnished Leather",
					["recipeID"] = 171391,
				},
				{
					["name"] = "Burnished Leather",
					["timeline"] = { CREATED_6_0_2 },	-- Never Implemented
					["recipeID"] = 171713,
				},
				{
					["name"] = "Secrets of Draenor Leatherworking",
					["recipeID"] = 176089,
				},
				{
					["name"] = "Spiritual Leathercraft",
					["recipeID"] = 182121,
				},
			},
		},
		{
			["name"] = "Bags",
			["categoryID"] = 386,
			["groups"] = {
				{
					["name"] = "Burnished Inscription Bag",
					["recipeID"] = 171290,
				},
				{
					["name"] = "Burnished Leather Bag",
					["recipeID"] = 171288,
				},
				{
					["name"] = "Burnished Mining Bag",
					["recipeID"] = 171289,
				},
			},
		},
		{
			["name"] = "Armor Enhancers",
			["categoryID"] = 384,
			["groups"] = {
				{
					["recipeID"] = 171286,	-- Burnished Essence
					["timeline"] = { REMOVED_9_0_1 },
				},
				{
					["name"] = "Leather Refurbishing Kit",
					["recipeID"] = 171266,
				},
				{
					["recipeID"] = 187489,	-- Mighty Burnished Essence
					["timeline"] = { REMOVED_9_0_1 },
				},
				{
					["recipeID"] = 187513,	-- Savage Burnished Essence
					["timeline"] = { REMOVED_9_0_1 },
				},
			},
		},
		{
			["name"] = "Leather Armor",
			["categoryID"] = 382,
			["groups"] = {
				{
					["name"] = "Journeying Helm",
					["recipeID"] = 171260,
				},
				{
					["name"] = "Journeying Robes",
					["recipeID"] = 171261,
				},
				{
					["name"] = "Journeying Slacks",
					["recipeID"] = 171262,
				},
				{
					["name"] = "Supple Boots",
					["recipeID"] = 171276,
				},
				{
					["name"] = "Supple Bracers",
					["recipeID"] = 171275,
				},
				{
					["name"] = "Supple Gloves",
					["recipeID"] = 171273,
				},
				{
					["name"] = "Supple Helm",
					["recipeID"] = 171271,
				},
				{
					["name"] = "Supple Leggings",
					["recipeID"] = 171272,
				},
				{
					["name"] = "Supple Shoulderguards",
					["recipeID"] = 171270,
				},
				{
					["name"] = "Supple Vest",
					["recipeID"] = 171274,
				},
				{
					["name"] = "Supple Waistguard",
					["recipeID"] = 171277,
				},
			},
		},
		{
			["name"] = "Mail Armor",
			["categoryID"] = 383,
			["groups"] = {
				{
					["name"] = "Traveling Helm",
					["recipeID"] = 171263,
				},
				{
					["name"] = "Traveling Leggings",
					["recipeID"] = 171265,
				},
				{
					["name"] = "Traveling Tunic",
					["recipeID"] = 171264,
				},
				{
					["name"] = "Wayfaring Belt",
					["recipeID"] = 171285,
				},
				{
					["name"] = "Wayfaring Boots",
					["recipeID"] = 171284,
				},
				{
					["name"] = "Wayfaring Bracers",
					["recipeID"] = 171283,
				},
				{
					["name"] = "Wayfaring Gloves",
					["recipeID"] = 171281,
				},
				{
					["name"] = "Wayfaring Helm",
					["recipeID"] = 171279,
				},
				{
					["name"] = "Wayfaring Leggings",
					["recipeID"] = 171280,
				},
				{
					["name"] = "Wayfaring Shoulderguards",
					["recipeID"] = 171278,
				},
				{
					["name"] = "Wayfaring Tunic",
					["recipeID"] = 171282,
				},
			},
		},
		{
			["name"] = "Tents",
			["categoryID"] = 402,
			["groups"] = sharedData({
				["u"] = TRAINING,	-- Temporary Recipes (only available while building is active with LW follower),
			},{
				{
					["name"] = "Archmage's Tent",
					["recipeID"] = 176408,
				},
				{
					["name"] = "Blood Elven Tent",
					["recipeID"] = 176413,
					["races"] = HORDE_ONLY,
				},
				{
					["name"] = "Brute's Tent",
					["recipeID"] = 176409,
				},
				{
					["name"] = "Crusader's Tent",
					["recipeID"] = 176412,
				},
				{
					["name"] = "Deathweaver's Hovel",
					["recipeID"] = 176415,
				},
				{
					["name"] = "Distressingly Furry Tent",
					["recipeID"] = 176421,
				},
				{
					["name"] = "Elune's Retreat",
					["recipeID"] = 176417,
					["races"] = ALLIANCE_ONLY,
				},
				{
					["name"] = "Enchanter's Tent",
					["recipeID"] = 176404,
				},
				{
					["name"] = "Fine Blue and Gold Tent",
					["recipeID"] = 176392,
				},
				{
					["name"] = "Fine Blue and Green Tent",
					["recipeID"] = 176399,
				},
				{
					["name"] = "Fine Blue and Purple Tent",
					["recipeID"] = 176397,
				},
				{
					["name"] = "High Elven Tent",
					["recipeID"] = 176414,
					["races"] = ALLIANCE_ONLY,
				},
				{
					["name"] = "Ironskin Tent",
					["recipeID"] = 176401,
				},
				{
					["name"] = "Nomad's Spiked Tent",
					["recipeID"] = 176426,
				},
				{
					["name"] = "Orgrimmar's Reach",
					["recipeID"] = 176418,
					["races"] = HORDE_ONLY,
				},
				{
					["name"] = "Ornate Alliance Tent",
					["recipeID"] = 176422,
					["races"] = ALLIANCE_ONLY,
				},
				{
					["name"] = "Ornate Horde Tent",
					["recipeID"] = 176424,
					["races"] = HORDE_ONLY,
				},
				{
					["name"] = "Outcast's Tent",
					["recipeID"] = 176402,
				},
				{
					["name"] = "Patchwork Hut",
					["recipeID"] = 176416,
				},
				{
					["name"] = "Savage Leather Tent",
					["recipeID"] = 176405,
				},
				{
					["name"] = "Simple Tent",
					["recipeID"] = 176420,
				},
				{
					["name"] = "Sturdy Tent",
					["recipeID"] = 176411,
				},
				{
					["name"] = "Voodoo Doctor's Hovel",
					["recipeID"] = 176425,
				},
			}),
		},
		{
			["name"] = "Cloaks",
			["categoryID"] = 385,
			["groups"] = {
				{
					["name"] = "Brilliant Burnished Cloak",
					["recipeID"] = 171269,
				},
				{
					["name"] = "Nimble Burnished Cloak",
					["recipeID"] = 171268,
				},
				{
					["name"] = "Powerful Burnished Cloak",
					["recipeID"] = 171267,
				},
			},
		},
		{
			["name"] = "Other",
			["categoryID"] = 388,
			["groups"] = {
				{
					["name"] = "Drums of Fury",
					["recipeID"] = 178208,
				},
				{
					["name"] = "Riding Harness",
					["recipeID"] = 171291,
				},
				{
					["name"] = "Small Football",
					["timeline"] = { CREATED_6_0_2 },	-- Never Implemented
					["recipeID"] = 173416,
				},
			},
		},
	})),
	applyclassicphase(LEGION_PHASE_ONE, expansion(EXPANSION.LEGION, {
		-- #if AFTER 9.0.1.36216
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1502,
			["groups"] = {
				{
					["name"] = "Relic of the Past I",
					["recipeID"] = 330211,
				},
				{
					["name"] = "Relic of the Past II",
					["recipeID"] = 330212,
				},
				{
					["name"] = "Relic of the Past III",
					["recipeID"] = 330213,
				},
				{
					["name"] = "Relic of the Past IV",
					["recipeID"] = 330214,
				},
				{
					["name"] = "Relic of the Past V",
					["recipeID"] = 330215,
				},
			},
		},
		-- #endif
		{
			["name"] = "Leather Armor",
			["categoryID"] = 461,
			["groups"] = {
				{
					["name"] = "Dreadleather Belt",
					["nextRecipeID"] = 194720,
					["recipeID"] = 194788,
				},
				{
					["name"] = "Dreadleather Belt",
					["nextRecipeID"] = 194728,
					["previousRecipeID"] = 194788,
					["recipeID"] = 194720,
				},
				{
					["name"] = "Dreadleather Belt",
					["previousRecipeID"] = 194720,
					["recipeID"] = 194728,
				},
				{
					["name"] = "Dreadleather Bindings",
					["nextRecipeID"] = 194719,
					["recipeID"] = 194787,
				},
				{
					["name"] = "Dreadleather Bindings",
					["nextRecipeID"] = 194727,
					["previousRecipeID"] = 194787,
					["recipeID"] = 194719,
				},
				{
					["name"] = "Dreadleather Bindings",
					["previousRecipeID"] = 194719,
					["recipeID"] = 194727,
				},
				{
					["name"] = "Dreadleather Footpads",
					["nextRecipeID"] = 194725,
					["recipeID"] = 194785,
				},
				{
					["name"] = "Dreadleather Footpads",
					["nextRecipeID"] = 194733,
					["previousRecipeID"] = 194785,
					["recipeID"] = 194725,
				},
				{
					["name"] = "Dreadleather Footpads",
					["previousRecipeID"] = 194725,
					["recipeID"] = 194733,
				},
				{
					["name"] = "Dreadleather Gloves",
					["nextRecipeID"] = 194724,
					["recipeID"] = 194790,
				},
				{
					["name"] = "Dreadleather Gloves",
					["nextRecipeID"] = 194732,
					["previousRecipeID"] = 194790,
					["recipeID"] = 194724,
				},
				{
					["name"] = "Dreadleather Gloves",
					["previousRecipeID"] = 194724,
					["recipeID"] = 194732,
				},
				{
					["name"] = "Dreadleather Jerkin",
					["nextRecipeID"] = 194726,
					["recipeID"] = 194791,
				},
				{
					["name"] = "Dreadleather Jerkin",
					["nextRecipeID"] = 194734,
					["previousRecipeID"] = 194791,
					["recipeID"] = 194726,
				},
				{
					["name"] = "Dreadleather Jerkin",
					["previousRecipeID"] = 194726,
					["recipeID"] = 194734,
				},
				{
					["name"] = "Dreadleather Mask",
					["nextRecipeID"] = 194723,
					["recipeID"] = 194784,
				},
				{
					["name"] = "Dreadleather Mask",
					["nextRecipeID"] = 194731,
					["previousRecipeID"] = 194784,
					["recipeID"] = 194723,
				},
				{
					["name"] = "Dreadleather Mask",
					["previousRecipeID"] = 194723,
					["recipeID"] = 194731,
				},
				{
					["name"] = "Dreadleather Pants",
					["nextRecipeID"] = 194722,
					["recipeID"] = 194786,
				},
				{
					["name"] = "Dreadleather Pants",
					["nextRecipeID"] = 194730,
					["previousRecipeID"] = 194786,
					["recipeID"] = 194722,
				},
				{
					["name"] = "Dreadleather Pants",
					["previousRecipeID"] = 194722,
					["recipeID"] = 194730,
				},
				{
					["name"] = "Dreadleather Shoulderguard",
					["nextRecipeID"] = 194721,
					["recipeID"] = 194789,
				},
				{
					["name"] = "Dreadleather Shoulderguard",
					["nextRecipeID"] = 194729,
					["previousRecipeID"] = 194789,
					["recipeID"] = 194721,
				},
				{
					["name"] = "Dreadleather Shoulderguard  [Rank 3]",
					["timeline"] = { REMOVED_8_0_1, ADDED_10_0_7 },
					["previousRecipeID"] = 194721,
					["recipeID"] = 194729,
				},
				{
					["name"] = "Fiendish Shoulderguards",
					["nextRecipeID"] = 247801,
					["recipeID"] = 247800,
				},
				{
					["name"] = "Fiendish Shoulderguards",
					["nextRecipeID"] = 247802,
					["previousRecipeID"] = 247800,
					["recipeID"] = 247801,
				},
				{
					["name"] = "Fiendish Shoulderguards",
					["previousRecipeID"] = 247801,
					["recipeID"] = 247802,
				},
				{
					["name"] = "The Sentinel's Eternal Refuge",
					["recipeID"] = 239413,
				},
				{
					["name"] = "Warhide Belt",
					["nextRecipeID"] = 194704,
					["recipeID"] = 194696,
				},
				{
					["name"] = "Warhide Belt",
					["nextRecipeID"] = 194716,
					["previousRecipeID"] = 194696,
					["recipeID"] = 194704,
				},
				{
					["name"] = "Warhide Belt",
					["previousRecipeID"] = 194704,
					["recipeID"] = 194716,
				},
				{
					["name"] = "Warhide Bindings",
					["nextRecipeID"] = 194703,
					["recipeID"] = 194695,
				},
				{
					["name"] = "Warhide Bindings",
					["nextRecipeID"] = 194711,
					["previousRecipeID"] = 194695,
					["recipeID"] = 194703,
				},
				{
					["name"] = "Warhide Bindings",
					["previousRecipeID"] = 194703,
					["recipeID"] = 194711,
				},
				{
					["name"] = "Warhide Footpads",
					["nextRecipeID"] = 194709,
					["recipeID"] = 194701,
				},
				{
					["name"] = "Warhide Footpads",
					["nextRecipeID"] = 194715,
					["previousRecipeID"] = 194701,
					["recipeID"] = 194709,
				},
				{
					["name"] = "Warhide Footpads",
					["previousRecipeID"] = 194709,
					["recipeID"] = 194715,
				},
				{
					["name"] = "Warhide Gloves",
					["nextRecipeID"] = 194708,
					["recipeID"] = 194700,
				},
				{
					["name"] = "Warhide Gloves",
					["nextRecipeID"] = 194714,
					["previousRecipeID"] = 194700,
					["recipeID"] = 194708,
				},
				{
					["name"] = "Warhide Gloves",
					["previousRecipeID"] = 194708,
					["recipeID"] = 194714,
				},
				{
					["name"] = "Warhide Jerkin",
					["nextRecipeID"] = 194710,
					["recipeID"] = 194702,
				},
				{
					["name"] = "Warhide Jerkin",
					["nextRecipeID"] = 194718,
					["previousRecipeID"] = 194702,
					["recipeID"] = 194710,
				},
				{
					["name"] = "Warhide Jerkin",
					["previousRecipeID"] = 194710,
					["recipeID"] = 194718,
				},
				{
					["name"] = "Warhide Mask",
					["nextRecipeID"] = 194707,
					["recipeID"] = 194699,
				},
				{
					["name"] = "Warhide Mask",
					["nextRecipeID"] = 194713,
					["previousRecipeID"] = 194699,
					["recipeID"] = 194707,
				},
				{
					["name"] = "Warhide Mask",
					["previousRecipeID"] = 194707,
					["recipeID"] = 194713,
				},
				{
					["name"] = "Warhide Pants",
					["nextRecipeID"] = 194706,
					["recipeID"] = 194698,
				},
				{
					["name"] = "Warhide Pants",
					["nextRecipeID"] = 194712,
					["previousRecipeID"] = 194698,
					["recipeID"] = 194706,
				},
				{
					["name"] = "Warhide Pants",
					["previousRecipeID"] = 194706,
					["recipeID"] = 194712,
				},
				{
					["name"] = "Warhide Shoulderguard",
					["nextRecipeID"] = 194705,
					["recipeID"] = 194697,
				},
				{
					["name"] = "Warhide Shoulderguard",
					["nextRecipeID"] = 194717,
					["previousRecipeID"] = 194697,
					["recipeID"] = 194705,
				},
				{
					["name"] = "Warhide Shoulderguard",
					["previousRecipeID"] = 194705,
					["recipeID"] = 194717,
				},
			},
		},
		{
			["name"] = "Mail Armor",
			["categoryID"] = 462,
			["groups"] = {
				{
					["name"] = "Battlebound Armbands",
					["nextRecipeID"] = 194743,
					["recipeID"] = 194735,
				},
				{
					["name"] = "Battlebound Armbands",
					["nextRecipeID"] = 194751,
					["previousRecipeID"] = 194735,
					["recipeID"] = 194743,
				},
				{
					["name"] = "Battlebound Armbands",
					["previousRecipeID"] = 194743,
					["recipeID"] = 194751,
				},
				{
					["name"] = "Battlebound Girdle",
					["nextRecipeID"] = 194744,
					["recipeID"] = 194736,
				},
				{
					["name"] = "Battlebound Girdle",
					["nextRecipeID"] = 194756,
					["previousRecipeID"] = 194736,
					["recipeID"] = 194744,
				},
				{
					["name"] = "Battlebound Girdle",
					["previousRecipeID"] = 194744,
					["recipeID"] = 194756,
				},
				{
					["name"] = "Battlebound Grips",
					["nextRecipeID"] = 194748,
					["recipeID"] = 194740,
				},
				{
					["name"] = "Battlebound Grips",
					["nextRecipeID"] = 194754,
					["previousRecipeID"] = 194740,
					["recipeID"] = 194748,
				},
				{
					["name"] = "Battlebound Grips",
					["previousRecipeID"] = 194748,
					["recipeID"] = 194754,
				},
				{
					["name"] = "Battlebound Hauberk",
					["nextRecipeID"] = 194750,
					["recipeID"] = 194742,
				},
				{
					["name"] = "Battlebound Hauberk",
					["nextRecipeID"] = 194758,
					["previousRecipeID"] = 194742,
					["recipeID"] = 194750,
				},
				{
					["name"] = "Battlebound Hauberk",
					["previousRecipeID"] = 194750,
					["recipeID"] = 194758,
				},
				{
					["name"] = "Battlebound Leggings",
					["nextRecipeID"] = 194746,
					["recipeID"] = 194738,
				},
				{
					["name"] = "Battlebound Leggings",
					["nextRecipeID"] = 194752,
					["previousRecipeID"] = 194738,
					["recipeID"] = 194746,
				},
				{
					["name"] = "Battlebound Leggings",
					["previousRecipeID"] = 194746,
					["recipeID"] = 194752,
				},
				{
					["name"] = "Battlebound Spaulders",
					["nextRecipeID"] = 194745,
					["recipeID"] = 194737,
				},
				{
					["name"] = "Battlebound Spaulders",
					["nextRecipeID"] = 194757,
					["previousRecipeID"] = 194737,
					["recipeID"] = 194745,
				},
				{
					["name"] = "Battlebound Spaulders",
					["previousRecipeID"] = 194745,
					["recipeID"] = 194757,
				},
				{
					["name"] = "Battlebound Treads",
					["nextRecipeID"] = 194749,
					["recipeID"] = 194741,
				},
				{
					["name"] = "Battlebound Treads",
					["nextRecipeID"] = 194755,
					["previousRecipeID"] = 194741,
					["recipeID"] = 194749,
				},
				{
					["name"] = "Battlebound Treads",
					["previousRecipeID"] = 194749,
					["recipeID"] = 194755,
				},
				{
					["name"] = "Battlebound Warhelm",
					["nextRecipeID"] = 194747,
					["recipeID"] = 194739,
				},
				{
					["name"] = "Battlebound Warhelm",
					["nextRecipeID"] = 194753,
					["previousRecipeID"] = 194739,
					["recipeID"] = 194747,
				},
				{
					["name"] = "Battlebound Warhelm",
					["previousRecipeID"] = 194747,
					["recipeID"] = 194753,
				},
				{
					["name"] = "Fiendish Spaulders",
					["nextRecipeID"] = 247804,
					["recipeID"] = 247803,
				},
				{
					["name"] = "Fiendish Spaulders",
					["nextRecipeID"] = 247805,
					["previousRecipeID"] = 247803,
					["recipeID"] = 247804,
				},
				{
					["name"] = "Fiendish Spaulders",
					["previousRecipeID"] = 247804,
					["recipeID"] = 247805,
				},
				{
					["name"] = "Gravenscale Armbands",
					["nextRecipeID"] = 194759,
					["recipeID"] = 194796,
				},
				{
					["name"] = "Gravenscale Armbands",
					["nextRecipeID"] = 194767,
					["previousRecipeID"] = 194796,
					["recipeID"] = 194759,
				},
				{
					["name"] = "Gravenscale Armbands",
					["previousRecipeID"] = 194759,
					["recipeID"] = 194767,
				},
				{
					["name"] = "Gravenscale Girdle",
					["nextRecipeID"] = 194760,
					["recipeID"] = 194797,
				},
				{
					["name"] = "Gravenscale Girdle",
					["nextRecipeID"] = 194768,
					["previousRecipeID"] = 194797,
					["recipeID"] = 194760,
				},
				{
					["name"] = "Gravenscale Girdle",
					["previousRecipeID"] = 194760,
					["recipeID"] = 194768,
				},
				{
					["name"] = "Gravenscale Grips",
					["nextRecipeID"] = 194764,
					["recipeID"] = 194799,
				},
				{
					["name"] = "Gravenscale Grips",
					["nextRecipeID"] = 194772,
					["previousRecipeID"] = 194799,
					["recipeID"] = 194764,
				},
				{
					["name"] = "Gravenscale Grips",
					["previousRecipeID"] = 194764,
					["recipeID"] = 194772,
				},
				{
					["name"] = "Gravenscale Hauberk",
					["nextRecipeID"] = 194766,
					["recipeID"] = 194795,
				},
				{
					["name"] = "Gravenscale Hauberk",
					["nextRecipeID"] = 194774,
					["previousRecipeID"] = 194795,
					["recipeID"] = 194766,
				},
				{
					["name"] = "Gravenscale Hauberk",
					["previousRecipeID"] = 194766,
					["recipeID"] = 194774,
				},
				{
					["name"] = "Gravenscale Leggings",
					["nextRecipeID"] = 194762,
					["recipeID"] = 194792,
				},
				{
					["name"] = "Gravenscale Leggings",
					["nextRecipeID"] = 194770,
					["previousRecipeID"] = 194792,
					["recipeID"] = 194762,
				},
				{
					["name"] = "Gravenscale Leggings",
					["previousRecipeID"] = 194762,
					["recipeID"] = 194770,
				},
				{
					["name"] = "Gravenscale Spaulders",
					["nextRecipeID"] = 194761,
					["recipeID"] = 194798,
				},
				{
					["name"] = "Gravenscale Spaulders",
					["nextRecipeID"] = 194769,
					["previousRecipeID"] = 194798,
					["recipeID"] = 194761,
				},
				{
					["name"] = "Gravenscale Spaulders [Rank 3]",
					["timeline"] = { REMOVED_8_0_1, ADDED_10_0_7 },
					["previousRecipeID"] = 194761,
					["recipeID"] = 194769,
				},
				{
					["name"] = "Gravenscale Treads",
					["nextRecipeID"] = 194765,
					["recipeID"] = 194793,
				},
				{
					["name"] = "Gravenscale Treads",
					["nextRecipeID"] = 194773,
					["previousRecipeID"] = 194793,
					["recipeID"] = 194765,
				},
				{
					["name"] = "Gravenscale Treads",
					["previousRecipeID"] = 194765,
					["recipeID"] = 194773,
				},
				{
					["name"] = "Gravenscale Warhelm",
					["nextRecipeID"] = 194763,
					["recipeID"] = 194794,
				},
				{
					["name"] = "Gravenscale Warhelm",
					["nextRecipeID"] = 194771,
					["previousRecipeID"] = 194794,
					["recipeID"] = 194763,
				},
				{
					["name"] = "Gravenscale Warhelm",
					["previousRecipeID"] = 194763,
					["recipeID"] = 194771,
				},
				{
					["name"] = "Vigilance Perch",
					["recipeID"] = 239414,
				},
			},
		},
		{
			["name"] = "Other",
			["categoryID"] = 463,
			["groups"] = {
				{
					["name"] = "Drums of the Mountain",
					["nextRecipeID"] = 230954,
					["recipeID"] = 230936,
				},
				{
					["name"] = "Drums of the Mountain",
					["nextRecipeID"] = 230955,
					["previousRecipeID"] = 230936,
					["recipeID"] = 230954,
				},
				{
					["name"] = "Drums of the Mountain",
					["previousRecipeID"] = 230954,
					["recipeID"] = 230955,
				},
				{
					["name"] = "Elderhorn Riding Harness",
					["recipeID"] = 194780,
				},
				{
					["name"] = "Flaming Hoop",
					["recipeID"] = 194775,
				},
				{
					["name"] = "Leather Love Seat",
					["recipeID"] = 194779,
				},
				{
					["name"] = "Leather Pet Bed",
					["recipeID"] = 194776,
				},
				{
					["name"] = "Leather Pet Leash",
					["recipeID"] = 194778,
				},
				{
					["name"] = "Stonehide Leather Barding",
					["recipeID"] = 196648,
				},
			},
		},
	})),
	applyclassicphase(BFA_PHASE_ONE, expansion(EXPANSION.BFA, {
		n(DISCOVERY, {
			{	-- Hardened Tempest Boots
				["spellID"] = 256765,	-- Hardened Tempest Boots
				["groups"] = {
					{	-- Pattern: Imbued Tempest Boots
						["itemID"] = 162499,	-- Pattern: Imbued Tempest Boots
					},
					{	-- Imbued Tempest Boots
						["spellID"] = 256766,	-- Imbued Tempest Boots
						["groups"] = {
							{	-- Pattern: Emblazoned Tempest Boots
								["itemID"] = 162500,	-- Pattern: Emblazoned Tempest Boots
							},
						},
					},
				},
			},
			{	-- Hardened Tempest Leggings
				["spellID"] = 256768,	-- Hardened Tempest Leggings
				["groups"] = {
					{	-- Recipe: Imbued Tempest Leggings
						["itemID"] = 162501,	-- Pattern: Imbued Tempest Leggings
					},
					{	-- Imbued Tempest Leggings
						["spellID"] = 256769,	-- Imbued Tempest Leggings
						["groups"] = {
							{	-- Pattern: Emblazoned Tempest Leggings
								["itemID"] = 162502,	-- Pattern: Emblazoned Tempest Leggings
							},
						},
					},
				},
			},
			{	-- Enhanced Tempest Boots
				["spellID"] = 285083,	-- Enhanced Tempest Boots
				["groups"] = {
					{	-- Pattern: Fortified Tempest Boots
						["itemID"] = 165644,	-- Pattern: Fortified Tempest Boots
					},
					{	-- Fortified Tempest Boots
						["spellID"] = 285091,	-- Fortified Tempest Boots
						["groups"] = {
							{	-- Pattern: Tempered Tempest Boots
								["itemID"] = 165645,	-- Pattern: Tempered Tempest Boots
							},
						},
					},
				},
			},
			{	-- Enhanced Tempest Leggings
				["spellID"] = 285084,	-- Enhanced Tempest Leggings
				["groups"] = {
					{	-- Pattern: Fortified Tempest Leggings
						["itemID"] = 165646,	-- Pattern: Fortified Tempest Leggings
					},
					{	-- Fortified Tempest Leggings
						["spellID"] = 285092,	-- Fortified Tempest Leggings
						["groups"] = {
							{	-- Pattern: Tempered Tempest Leggings
								["itemID"] = 165647,	-- Pattern: Tempered Tempest Leggings
							},
						},
					},
				},
			},
			{	-- Mistscale Boots
				["spellID"] = 256771,	-- Mistscale Boots
				["groups"] = {
					{	-- Pattern: Imbued Mistscale Boots
						["itemID"] = 162503,	-- Pattern: Imbued Mistscale Boots
					},
					{	-- Imbued Mistscale Boots
						["spellID"] = 256772,	-- Imbued Mistscale Boots
						["groups"] = {
							{	-- Pattern: Tempered Tempest Leggings
								["itemID"] = 162504,	-- Pattern: Emblazoned Mistscale Boots
							},
						},
					},
				},
			},
			{	-- Mistscale Leggings
				["spellID"] = 256774,	-- Mistscale Leggings
				["groups"] = {
					{	-- Pattern: Imbued Mistscale Leggings
						["itemID"] = 162505,	-- Pattern: Imbued Mistscale Leggings
					},
					{	-- Imbued Mistscale Leggings
						["spellID"] = 256775,	-- Imbued Mistscale Leggings
						["groups"] = {
							{	-- Pattern: Emblazoned Mistscale Leggings
								["itemID"] = 162506,	-- Pattern: Emblazoned Mistscale Leggings
							},
						},
					},
				},
			},
			{	-- Enhanced Mistscale Boots
				["spellID"] = 285079,	-- Enhanced Mistscale Boots
				["groups"] = {
					{	-- Pattern: Fortified Mistscale Boots
						["itemID"] = 165648,	-- Pattern: Fortified Mistscale Boots
					},
					{	-- Fortified Mistscale Boots
						["spellID"] = 285087,	-- Fortified Mistscale Boots
						["groups"] = {
							{	-- Pattern: Tempered Mistscale Boots
								["itemID"] = 165649,	-- Pattern: Tempered Mistscale Boots
							},
						},
					},
				},
			},
			{	-- Enhanced Mistscale Greaves
				["spellID"] = 285080,	-- Enhanced Mistscale Greaves
				["groups"] = {
					{	-- Pattern: Fortified Mistscale Greaves
						["itemID"] = 165650,	-- Pattern: Fortified Mistscale Greaves
					},
					{	-- Fortified Mistscale Greaves
						["spellID"] = 285088,	-- Fortified Mistscale Greaves
						["groups"] = {
							{	-- Pattern: Tempered Mistscale Greaves
								["itemID"] = 165651,	-- Pattern: Tempered Mistscale Greaves
							},
						},
					},
				},
			},
		}),
		-- #if AFTER 9.0.1.36216
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1503,
			["groups"] = {
				{
					["name"] = "Relic of the Past I",
					["recipeID"] = 330216,
				},
				{
					["name"] = "Relic of the Past II",
					["recipeID"] = 330218,
				},
				{
					["name"] = "Relic of the Past III",
					["recipeID"] = 330219,
				},
				{
					["name"] = "Relic of the Past IV",
					["recipeID"] = 330220,
				},
				{
					["name"] = "Relic of the Past V",
					["recipeID"] = 330221,
				},
			},
		},
		-- #endif
		{
			["name"] = "Leather Armor",
			["categoryID"] = 883,
			["groups"] = {
				{
					["name"] = "Banded Dredged Boots",
					["recipeID"] = 299021,
				},
				{
					["name"] = "Banded Dredged Leggings",
					["recipeID"] = 299024,
				},
				{
					["name"] = "Coarse Leather Armguards",
					["recipeID"] = 256756,
				},
				{
					["name"] = "Coarse Leather Gauntlets",
					["recipeID"] = 256750,
				},
				{
					["name"] = "Coarse Leather Helm",
					["recipeID"] = 256751,
				},
				{
					["name"] = "Coarse Leather Leggings",
					["recipeID"] = 256752,
				},
				{
					["name"] = "Coarse Leather Pauldrons",
					["recipeID"] = 256754,
				},
				{
					["name"] = "Coarse Leather Treads",
					["recipeID"] = 256748,
				},
				{
					["name"] = "Coarse Leather Vest",
					["recipeID"] = 256749,
				},
				{
					["name"] = "Coarse Leather Waistguard",
					["recipeID"] = 256755,
				},
				{
					["name"] = "Dredged Leather Boots",
					["recipeID"] = 299019,
				},
				{
					["name"] = "Dredged Leather Leggings",
					["recipeID"] = 299022,
				},
				{
					["name"] = "Eldritch Dredged Leather Boots",
					["recipeID"] = 305805,
				},
				{
					["name"] = "Eldritch Dredged Leather Leggings",
					["recipeID"] = 305799,
				},
				{
					["name"] = "Emblazoned Tempest Boots",
					["recipeID"] = 256767,
				},
				{
					["name"] = "Emblazoned Tempest Leggings",
					["recipeID"] = 256770,
				},
				{
					["name"] = "Enhanced Tempest Boots",
					["recipeID"] = 285083,
				},
				{
					["name"] = "Enhanced Tempest Leggings",
					["recipeID"] = 285084,
				},
				{
					["name"] = "Fortified Tempest Boots",
					["recipeID"] = 285091,
				},
				{
					["name"] = "Fortified Tempest Leggings",
					["recipeID"] = 285092,
				},
				{
					["name"] = "Hardened Tempest Boots",
					["recipeID"] = 256765,
				},
				{
					["name"] = "Hardened Tempest Leggings",
					["recipeID"] = 256768,
				},
				{
					["name"] = "Honorable Combatant's Leather Armguards",
					["nextRecipeID"] = 269529,
					["recipeID"] = 269528,
				},
				{
					["name"] = "Honorable Combatant's Leather Armguards",
					["nextRecipeID"] = 269530,
					["previousRecipeID"] = 269528,
					["recipeID"] = 269529,
				},
				{
					["name"] = "Honorable Combatant's Leather Armguards",
					["previousRecipeID"] = 269529,
					["recipeID"] = 269530,
				},
				{
					["name"] = "Honorable Combatant's Leather Gauntlets",
					["nextRecipeID"] = 269520,
					["recipeID"] = 269519,
				},
				{
					["name"] = "Honorable Combatant's Leather Gauntlets",
					["nextRecipeID"] = 269521,
					["previousRecipeID"] = 269519,
					["recipeID"] = 269520,
				},
				{
					["name"] = "Honorable Combatant's Leather Gauntlets",
					["previousRecipeID"] = 269520,
					["recipeID"] = 269521,
				},
				{
					["name"] = "Honorable Combatant's Leather Leggings",
					["nextRecipeID"] = 269523,
					["recipeID"] = 269522,
				},
				{
					["name"] = "Honorable Combatant's Leather Leggings",
					["nextRecipeID"] = 269524,
					["previousRecipeID"] = 269522,
					["recipeID"] = 269523,
				},
				{
					["name"] = "Honorable Combatant's Leather Leggings",
					["previousRecipeID"] = 269523,
					["recipeID"] = 269524,
				},
				{
					["name"] = "Honorable Combatant's Leather Treads",
					["nextRecipeID"] = 269517,
					["recipeID"] = 269516,
				},
				{
					["name"] = "Honorable Combatant's Leather Treads",
					["nextRecipeID"] = 269518,
					["previousRecipeID"] = 269516,
					["recipeID"] = 269517,
				},
				{
					["name"] = "Honorable Combatant's Leather Treads",
					["previousRecipeID"] = 269517,
					["recipeID"] = 269518,
				},
				{
					["name"] = "Honorable Combatant's Leather Waistguard",
					["nextRecipeID"] = 269526,
					["recipeID"] = 269525,
				},
				{
					["name"] = "Honorable Combatant's Leather Waistguard",
					["nextRecipeID"] = 269527,
					["previousRecipeID"] = 269525,
					["recipeID"] = 269526,
				},
				{
					["name"] = "Honorable Combatant's Leather Waistguard",
					["previousRecipeID"] = 269526,
					["recipeID"] = 269527,
				},
				{
					["name"] = "Imbued Tempest Boots",
					["recipeID"] = 256766,
				},
				{
					["name"] = "Imbued Tempest Leggings",
					["recipeID"] = 256769,
				},
				{
					["name"] = "Maddening Dredged Leather Boots",
					["recipeID"] = 305795,
				},
				{
					["name"] = "Maddening Dredged Leather Leggings",
					["recipeID"] = 305798,
				},
				{
					["name"] = "Notorious Combatant's Leather Armguards",
					["nextRecipeID"] = 294809,
					["recipeID"] = 294808,
				},
				{
					["name"] = "Notorious Combatant's Leather Armguards",
					["nextRecipeID"] = 294810,
					["previousRecipeID"] = 294808,
					["recipeID"] = 294809,
				},
				{
					["name"] = "Notorious Combatant's Leather Armguards",
					["previousRecipeID"] = 294809,
					["recipeID"] = 294810,
				},
				{
					["name"] = "Notorious Combatant's Leather Gauntlets",
					["nextRecipeID"] = 294800,
					["recipeID"] = 294799,
				},
				{
					["name"] = "Notorious Combatant's Leather Gauntlets",
					["nextRecipeID"] = 294801,
					["previousRecipeID"] = 294799,
					["recipeID"] = 294800,
				},
				{
					["name"] = "Notorious Combatant's Leather Gauntlets",
					["previousRecipeID"] = 294800,
					["recipeID"] = 294801,
				},
				{
					["name"] = "Notorious Combatant's Leather Leggings",
					["nextRecipeID"] = 294803,
					["recipeID"] = 294802,
				},
				{
					["name"] = "Notorious Combatant's Leather Leggings",
					["nextRecipeID"] = 294804,
					["previousRecipeID"] = 294802,
					["recipeID"] = 294803,
				},
				{
					["name"] = "Notorious Combatant's Leather Leggings",
					["previousRecipeID"] = 294803,
					["recipeID"] = 294804,
				},
				{
					["name"] = "Notorious Combatant's Leather Treads",
					["nextRecipeID"] = 294797,
					["recipeID"] = 294796,
				},
				{
					["name"] = "Notorious Combatant's Leather Treads",
					["nextRecipeID"] = 294798,
					["previousRecipeID"] = 294796,
					["recipeID"] = 294797,
				},
				{
					["name"] = "Notorious Combatant's Leather Treads",
					["previousRecipeID"] = 294797,
					["recipeID"] = 294798,
				},
				{
					["name"] = "Notorious Combatant's Leather Waistguard",
					["nextRecipeID"] = 294806,
					["recipeID"] = 294805,
				},
				{
					["name"] = "Notorious Combatant's Leather Waistguard",
					["nextRecipeID"] = 294807,
					["previousRecipeID"] = 294805,
					["recipeID"] = 294806,
				},
				{
					["name"] = "Notorious Combatant's Leather Waistguard",
					["previousRecipeID"] = 294806,
					["recipeID"] = 294807,
				},
				{
					["name"] = "Reinforced Dredged Boots",
					["recipeID"] = 299020,
				},
				{
					["name"] = "Reinforced Dredged Leggings",
					["recipeID"] = 299023,
				},
				{
					["name"] = "Sinister Combatant's Leather Armguards",
					["nextRecipeID"] = 282313,
					["recipeID"] = 282312,
				},
				{
					["name"] = "Sinister Combatant's Leather Armguards",
					["nextRecipeID"] = 282314,
					["previousRecipeID"] = 282312,
					["recipeID"] = 282313,
				},
				{
					["name"] = "Sinister Combatant's Leather Armguards",
					["previousRecipeID"] = 282313,
					["recipeID"] = 282314,
				},
				{
					["name"] = "Sinister Combatant's Leather Gauntlets",
					["nextRecipeID"] = 282325,
					["recipeID"] = 282324,
				},
				{
					["name"] = "Sinister Combatant's Leather Gauntlets",
					["nextRecipeID"] = 282326,
					["previousRecipeID"] = 282324,
					["recipeID"] = 282325,
				},
				{
					["name"] = "Sinister Combatant's Leather Gauntlets",
					["previousRecipeID"] = 282325,
					["recipeID"] = 282326,
				},
				{
					["name"] = "Sinister Combatant's Leather Leggings",
					["nextRecipeID"] = 282322,
					["recipeID"] = 282321,
				},
				{
					["name"] = "Sinister Combatant's Leather Leggings",
					["nextRecipeID"] = 282323,
					["previousRecipeID"] = 282321,
					["recipeID"] = 282322,
				},
				{
					["name"] = "Sinister Combatant's Leather Leggings",
					["previousRecipeID"] = 282322,
					["recipeID"] = 282323,
				},
				{
					["name"] = "Sinister Combatant's Leather Treads",
					["nextRecipeID"] = 282328,
					["recipeID"] = 282327,
				},
				{
					["name"] = "Sinister Combatant's Leather Treads",
					["nextRecipeID"] = 282329,
					["previousRecipeID"] = 282327,
					["recipeID"] = 282328,
				},
				{
					["name"] = "Sinister Combatant's Leather Treads",
					["previousRecipeID"] = 282328,
					["recipeID"] = 282329,
				},
				{
					["name"] = "Sinister Combatant's Leather Waistguard",
					["nextRecipeID"] = 282319,
					["recipeID"] = 282318,
				},
				{
					["name"] = "Sinister Combatant's Leather Waistguard",
					["nextRecipeID"] = 282320,
					["previousRecipeID"] = 282318,
					["recipeID"] = 282319,
				},
				{
					["name"] = "Sinister Combatant's Leather Waistguard",
					["previousRecipeID"] = 282319,
					["recipeID"] = 282320,
				},
				{
					["name"] = "Tempered Tempest Boots",
					["recipeID"] = 285099,
				},
				{
					["name"] = "Tempered Tempest Leggings",
					["recipeID"] = 285100,
				},
				{
					["name"] = "Uncanny Combatant's Leather Armguards",
					["nextRecipeID"] = 304425,
					["recipeID"] = 304424,
				},
				{
					["name"] = "Uncanny Combatant's Leather Armguards",
					["nextRecipeID"] = 304426,
					["previousRecipeID"] = 304424,
					["recipeID"] = 304425,
				},
				{
					["name"] = "Uncanny Combatant's Leather Armguards",
					["previousRecipeID"] = 304425,
					["recipeID"] = 304426,
				},
				{
					["name"] = "Uncanny Combatant's Leather Gauntlets",
					["nextRecipeID"] = 304416,
					["recipeID"] = 304415,
				},
				{
					["name"] = "Uncanny Combatant's Leather Gauntlets",
					["nextRecipeID"] = 304417,
					["previousRecipeID"] = 304415,
					["recipeID"] = 304416,
				},
				{
					["name"] = "Uncanny Combatant's Leather Gauntlets",
					["previousRecipeID"] = 304416,
					["recipeID"] = 304417,
				},
				{
					["name"] = "Uncanny Combatant's Leather Leggings",
					["nextRecipeID"] = 304419,
					["recipeID"] = 304418,
				},
				{
					["name"] = "Uncanny Combatant's Leather Leggings",
					["nextRecipeID"] = 304420,
					["previousRecipeID"] = 304418,
					["recipeID"] = 304419,
				},
				{
					["name"] = "Uncanny Combatant's Leather Leggings",
					["previousRecipeID"] = 304419,
					["recipeID"] = 304420,
				},
				{
					["name"] = "Uncanny Combatant's Leather Treads",
					["nextRecipeID"] = 304413,
					["recipeID"] = 304412,
				},
				{
					["name"] = "Uncanny Combatant's Leather Treads",
					["nextRecipeID"] = 304414,
					["previousRecipeID"] = 304412,
					["recipeID"] = 304413,
				},
				{
					["name"] = "Uncanny Combatant's Leather Treads",
					["previousRecipeID"] = 304413,
					["recipeID"] = 304414,
				},
				{
					["name"] = "Uncanny Combatant's Leather Waistguard",
					["nextRecipeID"] = 304422,
					["recipeID"] = 304421,
				},
				{
					["name"] = "Uncanny Combatant's Leather Waistguard",
					["nextRecipeID"] = 304423,
					["previousRecipeID"] = 304421,
					["recipeID"] = 304422,
				},
				{
					["name"] = "Uncanny Combatant's Leather Waistguard",
					["previousRecipeID"] = 304422,
					["recipeID"] = 304423,
				},
				{
					["name"] = "Unsettling Dredged Leather Boots",
					["recipeID"] = 305796,
				},
				{
					["name"] = "Unsettling Dredged Leather Leggings",
					["recipeID"] = 305804,
				},
			},
		},
		{
			["name"] = "Mail Armor",
			["categoryID"] = 884,
			["groups"] = {
				{
					["name"] = "Banded Cragscale Boots",
					["recipeID"] = 299027,
				},
				{
					["name"] = "Banded Cragscale Greaves",
					["recipeID"] = 299030,
				},
				{
					["name"] = "Cragscale Boots",
					["recipeID"] = 299025,
				},
				{
					["name"] = "Cragscale Greaves",
					["recipeID"] = 299028,
				},
				{
					["name"] = "Eldritch Cragscale Boots",
					["recipeID"] = 305801,
				},
				{
					["name"] = "Eldritch Cragscale Greaves",
					["recipeID"] = 305807,
				},
				{
					["name"] = "Emblazoned Mistscale Boots",
					["recipeID"] = 256773,
				},
				{
					["name"] = "Emblazoned Mistscale Leggings",
					["recipeID"] = 256776,
				},
				{
					["name"] = "Enhanced Mistscale Boots",
					["recipeID"] = 285079,
				},
				{
					["name"] = "Enhanced Mistscale Greaves",
					["recipeID"] = 285080,
				},
				{
					["name"] = "Fortified Mistscale Boots",
					["recipeID"] = 285087,
				},
				{
					["name"] = "Fortified Mistscale Greaves",
					["recipeID"] = 285088,
				},
				{
					["name"] = "Honorable Combatant's Mail Armguards",
					["nextRecipeID"] = 269544,
					["recipeID"] = 269543,
				},
				{
					["name"] = "Honorable Combatant's Mail Armguards",
					["nextRecipeID"] = 269545,
					["previousRecipeID"] = 269543,
					["recipeID"] = 269544,
				},
				{
					["name"] = "Honorable Combatant's Mail Armguards",
					["previousRecipeID"] = 269544,
					["recipeID"] = 269545,
				},
				{
					["name"] = "Honorable Combatant's Mail Gauntlets",
					["nextRecipeID"] = 269535,
					["recipeID"] = 269534,
				},
				{
					["name"] = "Honorable Combatant's Mail Gauntlets",
					["nextRecipeID"] = 269536,
					["previousRecipeID"] = 269534,
					["recipeID"] = 269535,
				},
				{
					["name"] = "Honorable Combatant's Mail Gauntlets",
					["previousRecipeID"] = 269535,
					["recipeID"] = 269536,
				},
				{
					["name"] = "Honorable Combatant's Mail Leggings",
					["nextRecipeID"] = 269538,
					["recipeID"] = 269537,
				},
				{
					["name"] = "Honorable Combatant's Mail Leggings",
					["nextRecipeID"] = 269539,
					["previousRecipeID"] = 269537,
					["recipeID"] = 269538,
				},
				{
					["name"] = "Honorable Combatant's Mail Leggings",
					["previousRecipeID"] = 269538,
					["recipeID"] = 269539,
				},
				{
					["name"] = "Honorable Combatant's Mail Treads",
					["nextRecipeID"] = 269532,
					["recipeID"] = 269531,
				},
				{
					["name"] = "Honorable Combatant's Mail Treads",
					["nextRecipeID"] = 269533,
					["previousRecipeID"] = 269531,
					["recipeID"] = 269532,
				},
				{
					["name"] = "Honorable Combatant's Mail Treads",
					["previousRecipeID"] = 269532,
					["recipeID"] = 269533,
				},
				{
					["name"] = "Honorable Combatant's Mail Waistguard",
					["nextRecipeID"] = 269541,
					["recipeID"] = 269540,
				},
				{
					["name"] = "Honorable Combatant's Mail Waistguard",
					["nextRecipeID"] = 269542,
					["previousRecipeID"] = 269540,
					["recipeID"] = 269541,
				},
				{
					["name"] = "Honorable Combatant's Mail Waistguard",
					["previousRecipeID"] = 269541,
					["recipeID"] = 269542,
				},
				{
					["name"] = "Imbued Mistscale Boots",
					["recipeID"] = 256772,
				},
				{
					["name"] = "Imbued Mistscale Leggings",
					["recipeID"] = 256775,
				},
				{
					["name"] = "Maddening Cragscale Boots",
					["recipeID"] = 305802,
				},
				{
					["name"] = "Maddening Cragscale Greaves",
					["recipeID"] = 305806,
				},
				{
					["name"] = "Mistscale Boots",
					["recipeID"] = 256771,
				},
				{
					["name"] = "Mistscale Leggings",
					["recipeID"] = 256774,
				},
				{
					["name"] = "Notorious Combatant's Mail Armguards",
					["nextRecipeID"] = 294824,
					["recipeID"] = 294823,
				},
				{
					["name"] = "Notorious Combatant's Mail Armguards",
					["nextRecipeID"] = 294825,
					["previousRecipeID"] = 294823,
					["recipeID"] = 294824,
				},
				{
					["name"] = "Notorious Combatant's Mail Armguards",
					["previousRecipeID"] = 294824,
					["recipeID"] = 294825,
				},
				{
					["name"] = "Notorious Combatant's Mail Gauntlets",
					["nextRecipeID"] = 294815,
					["recipeID"] = 294814,
				},
				{
					["name"] = "Notorious Combatant's Mail Gauntlets",
					["nextRecipeID"] = 294816,
					["previousRecipeID"] = 294814,
					["recipeID"] = 294815,
				},
				{
					["name"] = "Notorious Combatant's Mail Gauntlets",
					["previousRecipeID"] = 294815,
					["recipeID"] = 294816,
				},
				{
					["name"] = "Notorious Combatant's Mail Leggings",
					["nextRecipeID"] = 294818,
					["recipeID"] = 294817,
				},
				{
					["name"] = "Notorious Combatant's Mail Leggings",
					["nextRecipeID"] = 294819,
					["previousRecipeID"] = 294817,
					["recipeID"] = 294818,
				},
				{
					["name"] = "Notorious Combatant's Mail Leggings",
					["previousRecipeID"] = 294818,
					["recipeID"] = 294819,
				},
				{
					["name"] = "Notorious Combatant's Mail Treads",
					["nextRecipeID"] = 294812,
					["recipeID"] = 294811,
				},
				{
					["name"] = "Notorious Combatant's Mail Treads",
					["nextRecipeID"] = 294813,
					["previousRecipeID"] = 294811,
					["recipeID"] = 294812,
				},
				{
					["name"] = "Notorious Combatant's Mail Treads",
					["previousRecipeID"] = 294812,
					["recipeID"] = 294813,
				},
				{
					["name"] = "Notorious Combatant's Mail Waistguard",
					["nextRecipeID"] = 294821,
					["recipeID"] = 294820,
				},
				{
					["name"] = "Notorious Combatant's Mail Waistguard",
					["nextRecipeID"] = 294822,
					["previousRecipeID"] = 294820,
					["recipeID"] = 294821,
				},
				{
					["name"] = "Notorious Combatant's Mail Waistguard",
					["previousRecipeID"] = 294821,
					["recipeID"] = 294822,
				},
				{
					["name"] = "Reinforced Cragscale Boots",
					["recipeID"] = 299026,
				},
				{
					["name"] = "Reinforced Cragscale Greaves",
					["recipeID"] = 299029,
				},
				{
					["name"] = "Shimmerscale Armguards",
					["recipeID"] = 256757,
				},
				{
					["name"] = "Shimmerscale Gauntlets",
					["recipeID"] = 256762,
				},
				{
					["name"] = "Shimmerscale Helm",
					["recipeID"] = 256761,
				},
				{
					["name"] = "Shimmerscale Leggings",
					["recipeID"] = 256760,
				},
				{
					["name"] = "Shimmerscale Pauldrons",
					["recipeID"] = 256759,
				},
				{
					["name"] = "Shimmerscale Treads",
					["recipeID"] = 256764,
				},
				{
					["name"] = "Shimmerscale Vest",
					["recipeID"] = 256763,
				},
				{
					["name"] = "Shimmerscale Waistguard",
					["recipeID"] = 256758,
				},
				{
					["name"] = "Sinister Combatant's Mail Armguards",
					["nextRecipeID"] = 282288,
					["recipeID"] = 282287,
				},
				{
					["name"] = "Sinister Combatant's Mail Armguards",
					["nextRecipeID"] = 282289,
					["previousRecipeID"] = 282287,
					["recipeID"] = 282288,
				},
				{
					["name"] = "Sinister Combatant's Mail Armguards",
					["previousRecipeID"] = 282288,
					["recipeID"] = 282289,
				},
				{
					["name"] = "Sinister Combatant's Mail Gauntlets",
					["nextRecipeID"] = 282307,
					["recipeID"] = 282306,
				},
				{
					["name"] = "Sinister Combatant's Mail Gauntlets",
					["nextRecipeID"] = 282308,
					["previousRecipeID"] = 282306,
					["recipeID"] = 282307,
				},
				{
					["name"] = "Sinister Combatant's Mail Gauntlets",
					["previousRecipeID"] = 282307,
					["recipeID"] = 282308,
				},
				{
					["name"] = "Sinister Combatant's Mail Leggings",
					["nextRecipeID"] = 282303,
					["recipeID"] = 282302,
				},
				{
					["name"] = "Sinister Combatant's Mail Leggings",
					["nextRecipeID"] = 282305,
					["previousRecipeID"] = 282302,
					["recipeID"] = 282303,
				},
				{
					["name"] = "Sinister Combatant's Mail Leggings",
					["previousRecipeID"] = 282303,
					["recipeID"] = 282305,
				},
				{
					["name"] = "Sinister Combatant's Mail Treads",
					["nextRecipeID"] = 282310,
					["recipeID"] = 282309,
				},
				{
					["name"] = "Sinister Combatant's Mail Treads",
					["nextRecipeID"] = 282311,
					["previousRecipeID"] = 282309,
					["recipeID"] = 282310,
				},
				{
					["name"] = "Sinister Combatant's Mail Treads",
					["previousRecipeID"] = 282310,
					["recipeID"] = 282311,
				},
				{
					["name"] = "Sinister Combatant's Mail Waistguard",
					["nextRecipeID"] = 282291,
					["recipeID"] = 282290,
				},
				{
					["name"] = "Sinister Combatant's Mail Waistguard",
					["nextRecipeID"] = 282292,
					["previousRecipeID"] = 282290,
					["recipeID"] = 282291,
				},
				{
					["name"] = "Sinister Combatant's Mail Waistguard",
					["previousRecipeID"] = 282291,
					["recipeID"] = 282292,
				},
				{
					["name"] = "Tempered Mistscale Boots",
					["recipeID"] = 285095,
				},
				{
					["name"] = "Tempered Mistscale Greaves",
					["recipeID"] = 285096,
				},
				{
					["name"] = "Uncanny Combatant's Mail Armguards",
					["nextRecipeID"] = 304440,
					["recipeID"] = 304439,
				},
				{
					["name"] = "Uncanny Combatant's Mail Armguards",
					["nextRecipeID"] = 304441,
					["previousRecipeID"] = 304439,
					["recipeID"] = 304440,
				},
				{
					["name"] = "Uncanny Combatant's Mail Armguards",
					["previousRecipeID"] = 304440,
					["recipeID"] = 304441,
				},
				{
					["name"] = "Uncanny Combatant's Mail Gauntlets",
					["nextRecipeID"] = 304431,
					["recipeID"] = 304430,
				},
				{
					["name"] = "Uncanny Combatant's Mail Gauntlets",
					["nextRecipeID"] = 304432,
					["previousRecipeID"] = 304430,
					["recipeID"] = 304431,
				},
				{
					["name"] = "Uncanny Combatant's Mail Gauntlets",
					["previousRecipeID"] = 304431,
					["recipeID"] = 304432,
				},
				{
					["name"] = "Uncanny Combatant's Mail Leggings",
					["nextRecipeID"] = 304434,
					["recipeID"] = 304433,
				},
				{
					["name"] = "Uncanny Combatant's Mail Leggings",
					["nextRecipeID"] = 304435,
					["previousRecipeID"] = 304433,
					["recipeID"] = 304434,
				},
				{
					["name"] = "Uncanny Combatant's Mail Leggings",
					["previousRecipeID"] = 304434,
					["recipeID"] = 304435,
				},
				{
					["name"] = "Uncanny Combatant's Mail Treads",
					["nextRecipeID"] = 304428,
					["recipeID"] = 304427,
				},
				{
					["name"] = "Uncanny Combatant's Mail Treads",
					["nextRecipeID"] = 304429,
					["previousRecipeID"] = 304427,
					["recipeID"] = 304428,
				},
				{
					["name"] = "Uncanny Combatant's Mail Treads",
					["previousRecipeID"] = 304428,
					["recipeID"] = 304429,
				},
				{
					["name"] = "Uncanny Combatant's Mail Waistguard",
					["nextRecipeID"] = 304437,
					["recipeID"] = 304436,
				},
				{
					["name"] = "Uncanny Combatant's Mail Waistguard",
					["nextRecipeID"] = 304438,
					["previousRecipeID"] = 304436,
					["recipeID"] = 304437,
				},
				{
					["name"] = "Uncanny Combatant's Mail Waistguard",
					["previousRecipeID"] = 304437,
					["recipeID"] = 304438,
				},
				{
					["name"] = "Unsettling Cragscale Boots",
					["recipeID"] = 305803,
				},
				{
					["name"] = "Unsettling Cragscale Greaves",
					["recipeID"] = 305800,
				},
			},
		},
		{
			["name"] = "Weapons",
			["categoryID"] = 885,
			["groups"] = {
				{
					["name"] = "Coarse Leather Cestus",
					["recipeID"] = 256778,
				},
				{
					["name"] = "Hardened Tempest Knuckles",
					["nextRecipeID"] = 256783,
					["recipeID"] = 256782,
				},
				{
					["name"] = "Hardened Tempest Knuckles",
					["nextRecipeID"] = 256784,
					["previousRecipeID"] = 256782,
					["recipeID"] = 256783,
				},
				{
					["name"] = "Hardened Tempest Knuckles",
					["previousRecipeID"] = 256783,
					["recipeID"] = 256784,
				},
				{
					["name"] = "Honorable Combatant's Bow",
					["nextRecipeID"] = 269553,
					["recipeID"] = 269552,
				},
				{
					["name"] = "Honorable Combatant's Bow",
					["nextRecipeID"] = 269554,
					["previousRecipeID"] = 269552,
					["recipeID"] = 269553,
				},
				{
					["name"] = "Honorable Combatant's Bow",
					["previousRecipeID"] = 269553,
					["recipeID"] = 269554,
				},
				{
					["name"] = "Mistscale Knuckles",
					["nextRecipeID"] = 256780,
					["recipeID"] = 256779,
				},
				{
					["name"] = "Mistscale Knuckles",
					["nextRecipeID"] = 256781,
					["previousRecipeID"] = 256779,
					["recipeID"] = 256780,
				},
				{
					["name"] = "Mistscale Knuckles",
					["previousRecipeID"] = 256780,
					["recipeID"] = 256781,
				},
				{
					["name"] = "Notorious Combatant's Bow",
					["nextRecipeID"] = 294827,
					["recipeID"] = 294826,
				},
				{
					["name"] = "Notorious Combatant's Bow",
					["nextRecipeID"] = 294828,
					["previousRecipeID"] = 294826,
					["recipeID"] = 294827,
				},
				{
					["name"] = "Notorious Combatant's Bow",
					["previousRecipeID"] = 294827,
					["recipeID"] = 294828,
				},
				{
					["name"] = "Recurve Bow of the Strands",
					["nextRecipeID"] = 256788,
					["recipeID"] = 256787,
				},
				{
					["name"] = "Recurve Bow of the Strands",
					["nextRecipeID"] = 256789,
					["previousRecipeID"] = 256787,
					["recipeID"] = 256788,
				},
				{
					["name"] = "Recurve Bow of the Strands",
					["previousRecipeID"] = 256788,
					["recipeID"] = 256789,
				},
				{
					["name"] = "Shimmerscale Striker",
					["recipeID"] = 256777,
				},
				{
					["name"] = "Sinister Combatant's Bow",
					["nextRecipeID"] = 282278,
					["recipeID"] = 282277,
				},
				{
					["name"] = "Sinister Combatant's Bow",
					["nextRecipeID"] = 282281,
					["previousRecipeID"] = 282277,
					["recipeID"] = 282278,
				},
				{
					["name"] = "Sinister Combatant's Bow",
					["previousRecipeID"] = 282278,
					["recipeID"] = 282281,
				},
				{
					["name"] = "Uncanny Combatant's Bow",
					["nextRecipeID"] = 304443,
					["recipeID"] = 304442,
				},
				{
					["name"] = "Uncanny Combatant's Bow",
					["nextRecipeID"] = 304444,
					["previousRecipeID"] = 304442,
					["recipeID"] = 304443,
				},
				{
					["name"] = "Uncanny Combatant's Bow",
					["previousRecipeID"] = 304443,
					["recipeID"] = 304444,
				},
			},
		},
		{
			["name"] = "Mount Equipment",
			["categoryID"] = 1288,
			["groups"] = {
				{
					["name"] = "Comfortable Rider's Barding",
					["recipeID"] = 301411,
				},
			},
		},
		{
			["name"] = "Other",
			["categoryID"] = 886,
			["groups"] = {
				{
					["name"] = "Coarse Leather Barding",
					["nextRecipeID"] = 286019,
					["recipeID"] = 256790,
				},
				{
					["name"] = "Coarse Leather Barding",
					["nextRecipeID"] = 286021,
					["previousRecipeID"] = 256790,
					["recipeID"] = 286019,
				},
				{
					["name"] = "Coarse Leather Barding",
					["previousRecipeID"] = 286019,
					["recipeID"] = 286021,
				},
				{
					["name"] = "Dredged Leather Bladder",
					["recipeID"] = 301405,
				},
				{
					["name"] = "Drums of the Maelstrom",
					["recipeID"] = 256791,
				},
				{
					["name"] = "Hardened Tempest Hide",
					["recipeID"] = 272278,
				},
				{
					["name"] = "Scarlet Herring Lure",
					["recipeID"] = 285895,
				},
				{
					["name"] = "Shimmerscale Diving Helmet",
					["recipeID"] = 256793,
				},
				{
					["name"] = "Shimmerscale Diving Suit",
					["recipeID"] = 256792,
				},
			},
		},
		{
			["name"] = "Conversions",
			["categoryID"] = 1244,
			["groups"] = {
				{
					["name"] = "Aqueous Reskinning",
					["recipeID"] = 287273,
				},
				{
					["name"] = "Sanguinated Reskinning",
					["recipeID"] = 286652,
				},
			},
		},
		{
			["name"] = "Focus",
			["categoryID"] = 1308,
			["groups"] = {
				{
					["name"] = "Void Focus",
					["recipeID"] = 307176,
				},
			},
		},
		{
			["name"] = "Follower Equipment",
			["categoryID"] = 1236,
			["groups"] = {
				{
					["name"] = "Amber Rallying Horn",
					["recipeID"] = 278423,
				},
				{
					["name"] = "Tempest Hide Pouch",
					["recipeID"] = 276256,
				},
			},
		},
		{
			["name"] = "Tool of the Trade",
			["categoryID"] = 1267,
			["groups"] = {
				{
					["name"] = "Mallet of Thunderous Skins",
					["recipeID"] = 293076,
				},
			},
		},
	})),
	applyclassicphase(SL_PHASE_ONE, expansion(EXPANSION.SL, {
		applytraining({
			["name"] = "Quest Recipes",
			["categoryID"] = 1531,
			["groups"] = {
				{
					["name"] = "Bonestudded Fist",
					["recipeID"] = 338260,
				},
				{
					["name"] = "Cleaned Hide",
					["recipeID"] = 338262,
				},
				{
					["name"] = "Courtly Leather Boots",
					["recipeID"] = 338263,
				},
				{
					["name"] = "Dyed Runestag Leather",
					["recipeID"] = 338253,
				},
				{
					["name"] = "Runestag Leather Strap",
					["recipeID"] = 338254,
				},
				{
					["name"] = "Softened Leather",
					["recipeID"] = 338265,
				},
				{
					["name"] = "Stalker's Leather Quiver",
					["recipeID"] = 338255,
				},
				{
					["name"] = "Steelhide Leather Belt",
					["recipeID"] = 338258,
				},
				{
					["name"] = "Steelhide Leather Harness",
					["recipeID"] = 338257,
				},
				{
					["name"] = "Steelhide Leather Strap",
					["recipeID"] = 338259,
				},
				{
					["name"] = "Tortured Sole",
					["recipeID"] = 338264,
				},
			},
		}),
		{
			["name"] = "Materials",
			["categoryID"] = 1338,
			["groups"] = {
				{
					["name"] = "Heavy Callous Hide",
					["recipeID"] = 308897,
				},
				{
					["name"] = "Heavy Desolate Leather",
					["recipeID"] = 308899,
				},
			},
		},
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1521,
			["groups"] = {
				{
					["name"] = "Crafter's Mark I",
					["recipeID"] = 343195,
				},
				{
					["name"] = "Crafter's Mark II",
					["recipeID"] = 343193,
				},
				{
					["recipeID"] = 359662,	-- Crafter's Mark IV
					["name"] = "Crafter's Mark IV",
					["timeline"] = { ADDED_9_2_0 },
				},
				{
					["recipeID"] = 359669,	-- Crafter's Mark of the First Ones
					["name"] = "Crafter's Mark of the First Ones",
					["timeline"] = { ADDED_9_2_0 },
				},
				{
					["name"] = "Novice Crafter's Mark",
					["recipeID"] = 343660,
				},
				{
					["recipeID"] = 359702,	-- Vestige of the Eternal
					["name"] = "Vestige of the Eternal",
					["timeline"] = { ADDED_9_2_0 },
				},
			},
		},
		{
			["name"] = "Armor Kits",
			["categoryID"] = 1471,
			["groups"] = {
				{
					["name"] = "Desolate Armor Kit",
					["recipeID"] = 324087,
				},
				{
					["name"] = "Heavy Desolate Armor Kit",
					["recipeID"] = 324088,
				},
			},
		},
		{
			["name"] = "Other",
			["categoryID"] = 1335,
			["groups"] = {
				recipe(309173, {	-- Drums of Deathly Ferocity
					["name"] = "Drums of Deathly Ferocity",
				}),
				recipe(355354, {	-- Elusive Pet Treat
					["name"] = "Elusive Pet Treat",
				}),
				recipe(354800, {	-- Pallid Bone Flute
					["name"] = "Pallid Bone Flute",
				}),
				recipe(354797, {	-- Pallid Oracle Bones
					["name"] = "Pallid Oracle Bones",
				}),
			},
		},
		{
			["name"] = "Specialized Armor",
			["categoryID"] = 1472,
			["groups"] = {
				{
					["name"] = "Boneshatter Armguards",
					["recipeID"] = 332064,
				},
				{
					["name"] = "Boneshatter Armguards",
					["recipeID"] = 309213,
				},
				{
					["name"] = "Boneshatter Armguards",
					["recipeID"] = 338994,
				},
				{
					["name"] = "Boneshatter Armguards",
					["recipeID"] = 332029,
				},
				{
					["name"] = "Boneshatter Gauntlets",
					["recipeID"] = 338989,
				},
				{
					["name"] = "Boneshatter Gauntlets",
					["recipeID"] = 332059,
				},
				{
					["name"] = "Boneshatter Gauntlets",
					["recipeID"] = 309208,
				},
				{
					["name"] = "Boneshatter Gauntlets",
					["recipeID"] = 332024,
				},
				{
					["name"] = "Boneshatter Greaves",
					["recipeID"] = 332061,
				},
				{
					["name"] = "Boneshatter Greaves",
					["recipeID"] = 309210,
				},
				{
					["name"] = "Boneshatter Greaves",
					["recipeID"] = 332026,
				},
				{
					["name"] = "Boneshatter Greaves",
					["recipeID"] = 338991,
				},
				{
					["name"] = "Boneshatter Helm",
					["recipeID"] = 332025,
				},
				{
					["name"] = "Boneshatter Helm",
					["recipeID"] = 309209,
				},
				{
					["name"] = "Boneshatter Helm",
					["recipeID"] = 338990,
				},
				{
					["name"] = "Boneshatter Helm",
					["recipeID"] = 332060,
				},
				{
					["name"] = "Boneshatter Pauldrons",
					["recipeID"] = 332062,
				},
				{
					["name"] = "Boneshatter Pauldrons",
					["recipeID"] = 309211,
				},
				{
					["name"] = "Boneshatter Pauldrons",
					["recipeID"] = 338992,
				},
				{
					["name"] = "Boneshatter Pauldrons",
					["recipeID"] = 332027,
				},
				{
					["name"] = "Boneshatter Treads",
					["recipeID"] = 338988,
				},
				{
					["name"] = "Boneshatter Treads",
					["recipeID"] = 332057,
				},
				{
					["name"] = "Boneshatter Treads",
					["recipeID"] = 309206,
				},
				{
					["name"] = "Boneshatter Treads",
					["recipeID"] = 332022,
				},
				{
					["name"] = "Boneshatter Vest",
					["recipeID"] = 332023,
				},
				{
					["name"] = "Boneshatter Vest",
					["recipeID"] = 338987,
				},
				{
					["name"] = "Boneshatter Vest",
					["recipeID"] = 332058,
				},
				{
					["name"] = "Boneshatter Vest",
					["recipeID"] = 309207,
				},
				{
					["name"] = "Boneshatter Waistguard",
					["recipeID"] = 338993,
				},
				{
					["name"] = "Boneshatter Waistguard",
					["recipeID"] = 332063,
				},
				{
					["name"] = "Boneshatter Waistguard",
					["recipeID"] = 309212,
				},
				{
					["name"] = "Boneshatter Waistguard",
					["recipeID"] = 332028,
				},
				{
					["name"] = "Umbrahide Armguards",
					["recipeID"] = 332056,
				},
				{
					["name"] = "Umbrahide Armguards",
					["recipeID"] = 338986,
				},
				{
					["name"] = "Umbrahide Armguards",
					["recipeID"] = 332021,
				},
				{
					["name"] = "Umbrahide Armguards",
					["recipeID"] = 309205,
				},
				{
					["name"] = "Umbrahide Gauntlets",
					["recipeID"] = 332051,
				},
				{
					["name"] = "Umbrahide Gauntlets",
					["recipeID"] = 332016,
				},
				{
					["name"] = "Umbrahide Gauntlets",
					["recipeID"] = 338981,
				},
				{
					["name"] = "Umbrahide Gauntlets",
					["recipeID"] = 309200,
				},
				{
					["name"] = "Umbrahide Helm",
					["recipeID"] = 332017,
				},
				{
					["name"] = "Umbrahide Helm",
					["recipeID"] = 332052,
				},
				{
					["name"] = "Umbrahide Helm",
					["recipeID"] = 338982,
				},
				{
					["name"] = "Umbrahide Helm",
					["recipeID"] = 309201,
				},
				{
					["name"] = "Umbrahide Leggings",
					["recipeID"] = 309202,
				},
				{
					["name"] = "Umbrahide Leggings",
					["recipeID"] = 332053,
				},
				{
					["name"] = "Umbrahide Leggings",
					["recipeID"] = 332018,
				},
				{
					["name"] = "Umbrahide Leggings",
					["recipeID"] = 338983,
				},
				{
					["name"] = "Umbrahide Pauldrons",
					["recipeID"] = 332054,
				},
				{
					["name"] = "Umbrahide Pauldrons",
					["recipeID"] = 338984,
				},
				{
					["name"] = "Umbrahide Pauldrons",
					["recipeID"] = 309203,
				},
				{
					["name"] = "Umbrahide Pauldrons",
					["recipeID"] = 332019,
				},
				{
					["name"] = "Umbrahide Treads",
					["recipeID"] = 309198,
				},
				{
					["name"] = "Umbrahide Treads",
					["recipeID"] = 332049,
				},
				{
					["name"] = "Umbrahide Treads",
					["recipeID"] = 332014,
				},
				{
					["name"] = "Umbrahide Treads",
					["recipeID"] = 338980,
				},
				{
					["name"] = "Umbrahide Vest",
					["recipeID"] = 332015,
				},
				{
					["name"] = "Umbrahide Vest",
					["recipeID"] = 338979,
				},
				{
					["name"] = "Umbrahide Vest",
					["recipeID"] = 332050,
				},
				{
					["name"] = "Umbrahide Vest",
					["recipeID"] = 309199,
				},
				{
					["name"] = "Umbrahide Waistguard",
					["recipeID"] = 309204,
				},
				{
					["name"] = "Umbrahide Waistguard",
					["recipeID"] = 338985,
				},
				{
					["name"] = "Umbrahide Waistguard",
					["recipeID"] = 332055,
				},
				{
					["name"] = "Umbrahide Waistguard",
					["recipeID"] = 332020,
				},
			},
		},
		{
			["name"] = "Leather Armor",
			["categoryID"] = 1336,
			["groups"] = {
				{
					["name"] = "Desolate Leather Armguards",
					["recipeID"] = 309181,
				},
				{
					["name"] = "Desolate Leather Gauntlets",
					["recipeID"] = 309176,
				},
				{
					["name"] = "Desolate Leather Helm",
					["recipeID"] = 309177,
				},
				{
					["name"] = "Desolate Leather Leggings",
					["recipeID"] = 309178,
				},
				{
					["name"] = "Desolate Leather Pauldrons",
					["recipeID"] = 309179,
				},
				{
					["name"] = "Desolate Leather Treads",
					["recipeID"] = 309174,
				},
				{
					["name"] = "Desolate Leather Vest",
					["recipeID"] = 309175,
				},
				{
					["name"] = "Desolate Leather Waistguard",
					["recipeID"] = 309180,
				},
				{
					["name"] = "Shadebound Armguards",
					["recipeID"] = 309237,
				},
				{
					["name"] = "Shadebound Gauntlets",
					["recipeID"] = 309232,
				},
				{
					["name"] = "Shadebound Helm",
					["recipeID"] = 309233,
				},
				{
					["name"] = "Shadebound Leggings",
					["recipeID"] = 309234,
				},
				{
					["name"] = "Shadebound Pauldrons",
					["recipeID"] = 309235,
				},
				{
					["name"] = "Shadebound Treads",
					["recipeID"] = 309230,
				},
				{
					["name"] = "Shadebound Vest",
					["recipeID"] = 309231,
				},
				{
					["name"] = "Shadebound Waistguard",
					["recipeID"] = 309236,
				},
			},
		},
		{
			["name"] = "Mail Armor",
			["categoryID"] = 1339,
			["groups"] = {
				{
					["name"] = "Desolate Scale Armguards",
					["recipeID"] = 309189,
				},
				{
					["name"] = "Desolate Scale Gauntlets",
					["recipeID"] = 309184,
				},
				{
					["name"] = "Desolate Scale Greaves",
					["recipeID"] = 309186,
				},
				{
					["name"] = "Desolate Scale Helm",
					["recipeID"] = 309185,
				},
				{
					["name"] = "Desolate Scale Pauldrons",
					["recipeID"] = 309187,
				},
				{
					["name"] = "Desolate Scale Treads",
					["recipeID"] = 309182,
				},
				{
					["name"] = "Desolate Scale Vest",
					["recipeID"] = 309183,
				},
				{
					["name"] = "Desolate Scale Waistguard",
					["recipeID"] = 309188,
				},
				{
					["name"] = "Shadowscale Armguards",
					["recipeID"] = 309245,
				},
				{
					["name"] = "Shadowscale Gauntlets",
					["recipeID"] = 309240,
				},
				{
					["name"] = "Shadowscale Helm",
					["recipeID"] = 309241,
				},
				{
					["name"] = "Shadowscale Leggings",
					["recipeID"] = 309242,
				},
				{
					["name"] = "Shadowscale Pauldrons",
					["recipeID"] = 309243,
				},
				{
					["name"] = "Shadowscale Treads",
					["recipeID"] = 309238,
				},
				{
					["name"] = "Shadowscale Vest",
					["recipeID"] = 309239,
				},
				{
					["name"] = "Shadowscale Waistguard",
					["recipeID"] = 309244,
				},
			},
		},
		{
			["name"] = "Weapons",
			["categoryID"] = 1337,
			["groups"] = {
				{
					["name"] = "Bone Bound Knuckles",
					["recipeID"] = 309190,
				},
				{
					["name"] = "Composite Bow",
					["recipeID"] = 309192,
				},
				{
					["name"] = "Composite Crossbow",
					["recipeID"] = 309193,
				},
				{
					["name"] = "Desolate Leather Cestus",
					["recipeID"] = 309191,
				},
			},
		},
		{
			["name"] = "Mount Equipment",
			["categoryID"] = 1476,
			["groups"] = {
				{
					["name"] = "Comfortable Rider's Barding",
					["recipeID"] = 324735,
				},
			},
		},
	})),
});
-- #endif
