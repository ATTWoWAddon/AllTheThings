-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
local DF_MINING_KNOWLEDGE = 2035;
local TWW_MINING_KNOWLEDGE = 2793;
root(ROOTS.Professions, prof(MINING, bubbleDownSelf({ ["requireSkill"] = MINING }, {
	-- #if AFTER 3.0.2
	n(DISCOVERY, {
		r(53120, {["timeline"] = {ADDED_3_0_2, REMOVED_6_0_2}, ["rank"] = 1 }),	-- Toughness [Rank 1]
		r(53121, {["timeline"] = {ADDED_3_0_2, REMOVED_6_0_2}, ["rank"] = 2 }),	-- Toughness [Rank 2]
		r(53122, {["timeline"] = {ADDED_3_0_2, REMOVED_6_0_2}, ["rank"] = 3 }),	-- Toughness [Rank 3]
		r(53123, {["timeline"] = {ADDED_3_0_2, REMOVED_6_0_2}, ["rank"] = 4 }),	-- Toughness [Rank 4]
		r(53124, {["timeline"] = {ADDED_3_0_2, REMOVED_6_0_2}, ["rank"] = 5 }),	-- Toughness [Rank 5]
		r(53040, {["timeline"] = {ADDED_3_0_3, REMOVED_6_0_2}, ["rank"] = 6 }),	-- Toughness [Rank 6]
		r(74496, {["timeline"] = {ADDED_4_0_3_LAUNCH, REMOVED_6_0_2}, ["rank"] = 7 }),	-- Toughness [Rank 7]
		r(102163, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}, ["rank"] = 8 }),	-- Toughness [Rank 8]
	}),
	-- #endif
	expansion(EXPANSION.CLASSIC, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
		n(ACHIEVEMENTS, {
			ach(18841),	-- Doing Your Share (automated)
		}),
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18839),	-- Broken Isles Mining Techniques (automated)
		})),
		header(HEADERS.Spell, 247850, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Empyrium Deposit [Rank 3]
			["providers"] = {
				{ "o", 272768 },	-- Empyrium Deposit
				{ "o", 272778 },	-- Rich Empyrium Deposit
			},
			["maps"] = {
				ANTORAN_WASTES,
				KROKUUN,
				EREDATH,
			},
			["groups"] = {
				q(48034, {	-- Empyrium Deposit Chunk
					["provider"] = { "i", 151860 },	-- Empyrium Deposit Chunk
					["groups"] = {
						r(247848),	-- Empyrium Deposit [Rank 1]
					},
				}),
				q(48035, {	-- Angling For a Better Strike
					["sourceQuests"] = { 48034 },	-- Empyrium Deposit Chunk
					["provider"] = { "i", 151861 },	-- Empyrium Dust
					["groups"] = {
						r(247849),	-- Empyrium Deposit [Rank 2]
					},
				}),
				q(48036, {	-- Precision Perfected
					["sourceQuests"] = { 48035 },	-- Angling For a Better Strike
					["provider"] = { "i", 151862 },	-- Unusable Empyrium Core
					["groups"] = {
						r(247850),	-- Empyrium Deposit [Rank 3]
					},
				}),
			},
		})),
		header(HEADERS.Spell, 247853, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Empyrium Seam [Rank 3]
			["provider"] = { "o", 272780 },	-- Empyrium Seam
			["maps"] = {
				ANTORAN_WASTES,
				KROKUUN,
				EREDATH,
			},
			["groups"] = {
				q(48037, {	-- Empyrium Seam Chunk
					["provider"] = { "i", 151863 },	-- Empyrium Seam Chunk
					["groups"] = {
						r(247851),	-- Empyrium Seam [Rank 1]
					},
				}),
				q(48038, {	-- Don't Just Pick At It
					["sourceQuests"] = { 48037 },	-- Empyrium Seam Chunk
					["provider"] = { "i", 151864 },	-- Embedded Empyrium Ore
					["groups"] = {
						r(247852),	-- Empyrium Seam [Rank 2]
					},
				}),
				q(48039, {	-- Balancing the Break
					["sourceQuests"] = { 48038 },	-- Don't Just Pick At It
					["provider"] = { "i", 151865 },	-- Empyrium Bits
					["groups"] = {
						r(247853),	-- Empyrium Seam [Rank 3]
					},
				}),
			},
		})),
		header(HEADERS.Spell, 184494, {	-- Felslate Deposit [Rank 3]
			["providers"] = {
				{ "o", 241743 },	-- Felslate Deposit
				{ "o", 245325 },	-- Rich Felslate Deposit
			},
			["maps"] = {
				AZSUNA,
				SURAMAR,
				STORMHEIM,
				VALSHARAH,
				HIGHMOUNTAIN,
				BROKEN_SHORE,
			},
			["groups"] = {
				q(38795, {	-- Felslate Deposit Sample
					["provider"] = { "i", 124496 },	-- Felslate Deposit Sample
					["groups"] = {
						r(184492),	-- Felslate Deposit [Rank 1]
					},
				}),
				q(38800, {	-- Rin'thissa's Eye
					["sourceQuests"] = {
						38799,	-- Darkheart Thicket: Nal'ryssa's Sisters
						38795,	-- Felslate Deposit Sample
					},
					["provider"] = { "i", 124499 },	-- Ore-Bound Eye
					["groups"] = {
						r(184493),	-- Felslate Deposit [Rank 2]
					},
				}),
				q(38803, {	-- Rin'thissa
					["sourceQuests"] = { 38800 },	-- Rin'thissa's Eye
					["provider"] = { "n", 93893 },	-- Rin'thissa
					["coord"] = { 31.8, 65.8, SURAMAR },
					["groups"] = {
						r(184494),	-- Felslate Deposit [Rank 3]
					},
				}),
			},
		}),
		header(HEADERS.Spell, 184498, {	-- Felslate Seam [Rank 3]
			["provider"] = { "o", 255344 },	-- Felslate Seam
			["maps"] = {
				AZSUNA,
				SURAMAR,
				STORMHEIM,
				VALSHARAH,
				HIGHMOUNTAIN,
				BROKEN_SHORE,
			},
			["groups"] = {
				q(38796, {	-- Felslate Seam Sample
					["provider"] = { "i", 124497 },	-- Felslate Seam Sample
					["groups"] = {
						r(184496),	-- Felslate Seam [Rank 1]
					},
				}),
				q(38801, {	-- Lyrelle's Right Arm
					["sourceQuests"] = {
						38799,	-- Darkheart Thicket: Nal'ryssa's Sisters
						38796,	-- Felslate Seam Sample
					},
					["provider"] = { "i", 124500 },	-- Severed Arm
					["groups"] = {
						r(184497),	-- Felslate Seam [Rank 2]
					},
				}),
				q(38804, {	-- Lyrelle
					["sourceQuests"] = { 38801 },	-- Lyrelle's Right Arm
					["provider"] = { "n", 93776 },	-- Lyrelle
					["coord"] = { 28.0, 26.4, SURAMAR },
					["groups"] = {
						r(184498),	-- Felslate Seam [Rank 3]
					},
				}),
			},
		}),
		header(HEADERS.Spell, 191970, {	-- Infernal Brimstone [Rank 3]
			["crs"] = { 93237 },	-- Brimstone Destroyer
			["maps"] = {
				AZSUNA,
				SURAMAR,
				STORMHEIM,
				VALSHARAH,
				HIGHMOUNTAIN,
				BROKEN_SHORE,
			},
			["groups"] = {
				q(38806, {	-- Infernal Brimstone Sample
					["provider"] = { "i", 124502 },	-- Infernal Brimstone Sample
					["groups"] = {
						r(184504),	-- Infernal Brimstone [Rank 1]
					},
				}),
				q(38807, {	-- Infernal Brimstone Analysis
					["description"] = "Need Rank 2 in all other mining ranks.",
					["sourceQuests"] = {
						38806,	-- Infernal Brimstone Sample
						38800,	-- Rin'thissa's Eye
						38801,	-- Lyrelle's Right Arm
						38789,	-- Rethu's Journal
						38790,	-- Rethu's Pick
						38802,	-- Ondri's Still-Beating Heart
						38791,	-- Rethu's Horn
					},
					["provider"] = { "n", 93189 },	-- Mama Diggs <Mining Trainer>
					["coord"] = { 46.2, 26.4, LEGION_DALARAN },
					["groups"] = {
						r(184505),	-- Infernal Brimstone [Rank 2]
						i(128392),	-- Deepholm Mineral Analysis (QI!)
						i(128396),	-- Obsidian Forest Analysis (QI!)
						i(128405),	-- Saronite Composition Analysis (QI!)
					},
				}),
				q(39790, {	-- Infernal Brimstone Theory
					["sourceQuests"] = { 38807 },	-- Infernal Brimstone Analysis
					["provider"] = { "n", 93189 },	-- Mama Diggs <Mining Trainer>
					["coord"] = { 46.2, 26.4, LEGION_DALARAN },
					["groups"] = {
						i(128852),	-- Infernal Brimstone Sample (QI!)
					},
				}),
				q(39763, {	-- For Whom the Fel Tolls
					["sourceQuests"] = { 39790 },	-- Infernal Brimstone Theory
					["provider"] = { "n", 97360 },	-- Matthew Rabis <Feral Warlock>
					["coord"] = { 47.2, 56.0, LEGION_THE_UNDERBELLY },
					["groups"] = {
						i(128813),	-- Fel Energy Core (QI!)
					},
				}),
				q(39817, {	-- The Brimstone's Secret
					["sourceQuests"] = { 39763 },	-- For Whom the Fel Tolls
					["provider"] = { "n", 97360 },	-- Matthew Rabis <Feral Warlock>
					["coord"] = { 47.2, 56.0, LEGION_THE_UNDERBELLY },
				}),
				q(39830, {	-- Hellfire Citadel: Hellfire and Brimstone
					["sourceQuests"] = { 39817 },	-- The Brimstone's Secret
					["provider"] = { "n", 93189 },	-- Mama Diggs <Mining Trainer>
					["coord"] = { 46.2, 26.4, LEGION_DALARAN },
					["maps"] = { 661, 662, 663, 664, 665, 666, 667, 668, 669, 670 },	-- Hellfire Citadel
					["groups"] = {
						r(191970),	-- Infernal Brimstone [Rank 3]
					},
				}),
			},
		}),
		header(HEADERS.Spell, 184457, {	-- Leystone Deposit [Rank 3]
			["providers"] = {
				{ "o", 241726 },	-- Leystone Deposit
				{ "o", 245324 },	-- Rich Leystone Deposit
			},
			["maps"] = {
				AZSUNA,
				SURAMAR,
				STORMHEIM,
				VALSHARAH,
				HIGHMOUNTAIN,
				BROKEN_SHORE,
			},
			["groups"] = {
				q(38777, {	-- Leystone Deposit Sample
					["provider"] = { "i", 124489 },	-- Leystone Deposit Sample
					["groups"] = {
						r(184454),	-- Leystone Deposit [Rank 1]
					},
				}),
				q(38789, {	-- Rethu's Journal
					["sourceQuests"] = {
						38777,	-- Leystone Deposit Sample
						38787,	-- The Legend of Rethu Ironhorn
					},
					["provider"] = { "i", 124492 },	-- Torn Journal Page
					["groups"] = {
						r(184456),	-- Leystone Deposit [Rank 2]
					},
				}),
				q(38792, {	-- Rethu's Lesson
					["sourceQuests"] = { 38789 },	-- Rethu's Journal
					["provider"] = { "n", 93735 },	-- Rethu Ironhorn
					["coord"] = { 37.8, 48.6, SURAMAR },
					["groups"] = {
						r(184457),	-- Leystone Deposit [Rank 3]
					},
				}),
			},
		}),
		header(HEADERS.Spell, 184486, {	-- Leystone Seam [Rank 3]
			["provider"] = { "o", 253280 },	-- Leystone Seam
			["maps"] = {
				AZSUNA,
				SURAMAR,
				STORMHEIM,
				VALSHARAH,
				HIGHMOUNTAIN,
				BROKEN_SHORE,
			},
			["groups"] = {
				q(38784, {	-- Leystone Seam Sample
					["provider"] = { "i", 124490 },	-- Leystone Seam Sample
					["groups"] = {
						r(184484),	-- Leystone Seam [Rank 1]
					},
				}),
				q(38790, {	-- Rethu's Pick
					["sourceQuests"] = {
						38784,	-- Leystone Seam Sample
						38787,	-- The Legend of Rethu Ironhorn
					},
					["provider"] = { "i", 124493 },	-- Battered Mining Pick
					["groups"] = {
						r(184485),	-- Leystone Seam [Rank 2]
					},
				}),
				q(38793, {	-- Rethu's Experience
					["sourceQuests"] = { 38790 },	-- Rethu's Pick
					["provider"] = { "n", 93735 },	-- Rethu Ironhorn
					["coord"] = { 37.8, 48.6, SURAMAR },
					["groups"] = {
						r(184486),	-- Leystone Seam [Rank 3]
					},
				}),
			},
		}),
		header(HEADERS.Spell, 184502, {	-- Living Felslate [Rank 3]
			["crs"] = { 93619 },	-- Infernal Brutalizer
			["maps"] = {
				AZSUNA,
				SURAMAR,
				STORMHEIM,
				VALSHARAH,
				HIGHMOUNTAIN,
				BROKEN_SHORE,
			},
			["groups"] = {
				q(38797, {	-- Living Felslate Sample
					["provider"] = { "i", 124498 },	-- Living Felslate Sample
					["groups"] = {
						r(184500),	-- Living Felslate [Rank 1]
					},
				}),
				q(38802, {	-- Ondri's Still-Beating Heart
					["sourceQuests"] = {
						38799,	-- Darkheart Thicket: Nal'ryssa's Sisters
						38797,	-- Living Felslate Sample
					},
					["provider"] = { "i", 124501 },	-- Ore-Choked Heart
					["groups"] = {
						r(184501),	-- Living Felslate [Rank 2]
					},
				}),
				q(38805, {	-- Ondri
					["sourceQuests"] = { 38802 },	-- Ondri's Still-Beating Heart
					["provider"] = { "n", 93777 },	-- Ondri
					["coord"] = { 28.2, 57.0, SURAMAR },
					["groups"] = {
						r(184502),	-- Living Felslate [Rank 3]
					},
				}),
			},
		}),
		header(HEADERS.Spell, 184490, {	-- Living Leystone [Rank 3]
			["description"] = "Best spot is in Valsharah during the 'Leystone Basilisks' World Quest.",
			["crs"] = {
				104877,	-- Leystone Basilisk (Mining Proc)
				103514,	-- Leystone Basilisk (WQ Valsharah)
			},
			["maps"] = {
				AZSUNA,
				SURAMAR,
				STORMHEIM,
				VALSHARAH,
				HIGHMOUNTAIN,
				BROKEN_SHORE,
			},
			["groups"] = {
				q(38785, {	-- Living Leystone Sample
					["provider"] = { "i", 124491 },	-- Living Leystone Sample
					["groups"] = {
						r(184488),	-- Living Leystone [Rank 1]
					},
				}),
				q(38791, {	-- Rethu's Horn
					["sourceQuests"] = {
						38785,	-- Living Leystone Sample
						38787,	-- The Legend of Rethu Ironhorn
					},
					["provider"] = { "i", 124494 },	-- Chunk of Horn
					["groups"] = {
						r(184489),	-- Living Leystone [Rank 2]
					},
				}),
				q(38794, {	-- Rethu's Sacrifice
					["sourceQuests"] = { 38791 },	-- Rethu's Horn
					["provider"] = { "n", 93735 },	-- Rethu Ironhorn
					["groups"] = {
						r(184490),	-- Living Leystone [Rank 3]
					},
				}),
			},
		}),
		n(QUESTS, {
			q(38901, {	-- The Felsmiths
				["description"] = "You must complete all of the Rank 1 Felslate mining techniques before this quest will become available.\n\nWARNING: Completion of the chain is required for Rank 2 Quest Items to drop.",
				["sourceQuests"] = {
					38795,	-- Felslate Deposit Sample
					38796,	-- Felslate Seam Sample
					38797	-- Living Felslate Sample
				},
				["provider"] = { "n", 93189 },	-- Mama Diggs <Mining Trainer>
				["coord"] = { 46.2, 26.4, LEGION_DALARAN },
			}),
			q(38798, {	-- A Shred of Your Humanity
				["sourceQuests"] = { 38901 },	-- The Felsmiths
				["provider"] = { "n", 92264 },	-- Felsmith Nal'ryssa <Blacksmithing Trainer>
				["coord"] = { 30.0, 53.4, SURAMAR },
			}),
			q(38799, {	-- Darkheart Thicket: Nal'ryssa's Sisters
				["sourceQuests"] = { 38798 },	-- A Shred of Your Humanity
				["provider"] = { "n", 92264 },	-- Felsmith Nal'ryssa <Blacksmithing Trainer>
				["coord"] = { 30.0, 53.4, SURAMAR },
				["maps"] = { 733 },	-- Darkheart Thicket
				["groups"] = {
					i(126947),	-- Nal'ryssa's Spare Mining Supplies
					i(126940),	-- Lyrelle's Signet Ring (QI!)
				},
			}),
			q(38888, {	-- The Highmountain Tauren
				["description"] = "You must complete all of the Rank 1 Leystone mining techniques before this quest will become available.\n\nWARNING: Completion of the chain is required for Rank 2 Quest Items to drop.",
				["sourceQuests"] = {
					38777,	-- Leystone Deposit Sample
					38784,	-- Leystone Seam Sample
					38785	-- Living Leystone Sample
				},
				["provider"] = { "n", 93189 },	-- Mama Diggs <Mining Trainer>
				["coord"] = { 46.2, 26.4, LEGION_DALARAN },
			}),
			q(38786, {	-- Where Respect is Due
				["sourceQuests"] = { 38888 },	-- The Highmountain Tauren
				["provider"] = { "n", 93691 },	-- Ronos Ironhorn <Mining Trainer>
				["coord"] = { 55.0, 84.0, HIGHMOUNTAIN },
				["groups"] = {
					i(128769),	-- Glass-Extracted Leystone (QI!)
					i(128767),	-- Ronos' Pick (QI!)
				},
			}),
			q(38787, {	-- The Legend of Rethu Ironhorn
				["sourceQuests"] = { 38786 },	-- Where Respect is Due
				["provider"] = { "n", 93691 },	-- Ronos Ironhorn <Mining Trainer>
				["coord"] = { 55.0, 84.0, HIGHMOUNTAIN },
			}),
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18840, {	-- Fourth War Mining Techniques
				crit(61525, {	-- Monelite Deposit
					["sourceQuests"] = {
						48761,	-- Spiderphobia
						51964,	-- Insufferable Bloodsuckers
					},
					["sourceQuestNumRequired"] = 1,
				}),
				crit(61526, {	-- Storm Silver Deposit
					["sourceQuests"] = {
						48768,	-- Brined Justice [A]
						52015,	-- Brined Justice [H]
					},
					["sourceQuestNumRequired"] = 1,
				}),
				crit(61527, {	-- Platinum Deposit
					["sourceQuests"] = {
						52050,	-- A More Challenging Career
						52055,	-- An Ore for an Eye
					},
					["sourceQuestNumRequired"] = 1,
				}),
				crit(61528, {	-- Monelite Seam
					["sourceQuests"] = {
						48767,	-- Seams Familiar
						51971,	-- An Exquisite Brooch
					},
					["sourceQuestNumRequired"] = 1,
				}),
				crit(61529, {	-- Storm Silver Seam
					["sourceQuests"] = {
						51889,	-- The Wrath of Grapes [A]
						52043,	-- The Wrath of Grapes [H]
					},
				}),
				crit(61530, {	-- Osmenite Deposit
					["sourceQuests"] = {
						56103,	-- Ounces of Osmenite [A]
						56431,	-- Ounces of Osmenite [H]
					},
					["sourceQuestNumRequired"] = 1,
				}),
				crit(61531, {	-- Osmenite Seam
					["sourceQuests"] = {
						56126,	-- Seams to be a Problem [A]
						56432,	-- Seams to be a Problem [H]
					},
					["sourceQuestNumRequired"] = 1,
				}),
			}),
		})),
		header(HEADERS.Spell, 253335, {	-- Monelite Deposit [Rank 3]
			["providers"] = {
				{ "o", 276616 },	-- Monelite Deposit
				{ "o", 276621 },	-- Rich Monelite Deposit
			},
			["maps"] = {
				DRUSTVAR,
				NAZMIR,
				STORMSONG_VALLEY,
				TIRAGARDE_SOUND,
				VOLDUN,
				ZULDAZAR,
				-- #if AFTER 8.2.0
				MECHAGON,
				-- #endif
			},
			["groups"] = {
				q(48752, {	-- A Need For Coal
					["description"] = "Requires 50 Kul'Tiran Mining.",
					["provider"] = { "n", 136091 },	-- Myra Cabot
					["coord"] = { 75.01, 7.61, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(253334),	-- Monelite Deposit [Rank 2]
						i(160902),	-- Ashvane Coal (QI!)
					},
				}),
				q(51962, {	-- Lumbering Away
					["description"] = "Requires 50 Zandalari Mining",
					["provider"] = { "n", 122694 },	-- Secott the Goldsmith
					["coord"] = { 44.0, 39.0, DAZARALOR },
					["requireSkill"] = MINING,
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(253334),	-- Monelite Deposit [Rank 2]
						i(160941),	-- Dry Firewood (QI!)
					},
				}),
				q(48761, {	-- Spiderphobia
					["description"] = "Requires 130 Kul'Tiran Mining.",
					["sourceQuests"] = { 48752 },	-- A Need For Coal
					["provider"] = { "n", 136091 },	-- Myra Cabot
					["coord"] = { 75.01, 7.61, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(253335),	-- Monelite Deposit [Rank 3]
					},
				}),
				q(51964, {	-- Insufferable Bloodsuckers
					["description"] = "Requires 130 Zandalari Mining",
					["sourceQuests"] = { 51962 },	-- Lumbering Away
					["provider"] = { "n", 122694 },	-- Secott the Goldsmith
					["coord"] = { 44.0, 39.0, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(253335),	-- Monelite Deposit [Rank 3]
					},
				}),
			},
		}),
		header(HEADERS.Spell, 253344, {	-- Monelite Seam [Rank 3]
			["provider"] = { "o", 276619 },	-- Monelite Seam
			["maps"] = {
				DRUSTVAR,
				NAZMIR,
				STORMSONG_VALLEY,
				TIRAGARDE_SOUND,
				VOLDUN,
				ZULDAZAR,
				-- #if AFTER 8.2.0
				MECHAGON,
				-- #endif
			},
			["groups"] = {
				q(48764, {	-- Don't Pick a Fight
					["description"] = "Requires 50 Kul'Tiran Mining.",
					["provider"] = { "n", 136091 },	-- Myra Cabot
					["coord"] = { 75.01, 7.61, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(253343),	-- Monelite Seam [Rank 2]
						i(160904),	-- Myra's Favorite Pick (QI!)
					},
				}),
				q(51965, {	-- Lending a Hand
					["description"] = "Requires 50 Zandalari Mining",
					["provider"] = { "n", 122694 },	-- Secott the Goldsmith
					["coord"] = { 44.0, 39.0, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(253343),	-- Monelite Seam [Rank 2]
						i(160943),	-- Secott's Old Hand (QI!)
					},
				}),
				q(48767, {	-- Seams Familiar
					["description"] = "This can drop from |cFFFFD700Monelite Seam|r at any mining level. You can only turn it in at Level 150 Kul Tiran Mining.",
					["sourceQuests"] = { 48764 },	-- Don't Pick a Fight
					["provider"] = { "i", 160905 },	-- Lost Anchor Necklace
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(253344),	-- Monelite Seam [Rank 3]
					},
				}),
				q(51971, {	-- An Exquisite Brooch
					["description"] = "This can drop from |cFFFFD700Monelite Seam|r at any mining level. You can only turn it in at Level 150 Zandalari Mining.",
					["sourceQuests"] = { 51965 },	-- Lending a Hand
					["provider"] = { "i", 160944 },	-- An Exquisite Brooch
					["coord"] = { 44.0, 39.0, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(253344),	-- Monelite Seam [Rank 3]
					},
				}),
			},
		}),
		header(HEADERS.Spell, 296147, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {	-- Osmenite Deposit [Rank 3]
			["providers"] = {
				{ "o", 325875 },	-- Osmenite Deposit
				{ "o", 325873 },	-- Rich Osmenite Deposit
			},
			["maps"] = { NAZJATAR },
			["groups"] = {
				q(56103, {	-- Ounces of Osmenite [A]
					["provider"] = { "i", 168939 },	-- Osmenite Shards [A]
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(296147),	-- Osmenite Deposit [Rank 3]
					},
				}),
				q(56431, {	-- Ounces of Osmenite [H]
					["provider"] = { "i", 169597 },	-- Osmenite Shards [H]
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(296147),	-- Osmenite Deposit [Rank 3]
					},
				}),
			},
		})),
		header(HEADERS.Spell, 296143, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {	-- Osmenite Seam [Rank 3]
			["provider"] = { "o", 325874 },	-- Osmenite Seam
			["maps"] = { NAZJATAR },
			["groups"] = {
				q(56126, {	-- Seams to be a Problem [A]
					["provider"] = { "i", 168954 },	-- Osmenite Dust [A]
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(296143),	-- Osmenite Seam [Rank 3]
					},
				}),
				q(56432, {	-- Seams to be a Problem [H]
					["provider"] = { "i", 169598 },	-- Osmenite Dust [H]
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(296143),	-- Osmenite Seam [Rank 3]
					},
				}),
			},
		})),
		header(HEADERS.Spell, 253341, {	-- Platinum Deposit [Rank 3]
			["providers"] = {
				{ "o", 276618 },	-- Platinum Deposit
				{ "o", 276623 },	-- Rich Platinum Deposit
			},
			["maps"] = {
				DRUSTVAR,
				NAZMIR,
				STORMSONG_VALLEY,
				TIRAGARDE_SOUND,
				VOLDUN,
				ZULDAZAR,
				-- #if AFTER 8.2.0
				MECHAGON,
				-- #endif
			},
			["groups"] = {
				q(52044, {	-- An Exceptional Platinum Shard [A]
					["description"] = "This can drop from |cFFFFD700Platinum Deposits|r and |cFFFFD700Rich Platinum Deposits|r at any mining level. You can only turn it in at Level 150 Kul Tiran Mining.",
					["provider"] = { "i", 161078 },	-- Exceptional Platinum Shard [A]
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(253340),	-- Platinum Deposit [Rank 2]
					},
				}),
				q(52046, {	-- An Exceptional Platinum Shard [H]
					["description"] = "This can drop from |cFFFFD700Platinum Deposits|r and |cFFFFD700Rich Platinum Deposits|r at any mining level. You can only turn it in at Level 150 Zandalari Mining.",
					["provider"] = { "i", 161079 },	-- Exceptional Platinum Shard [H]
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(253340),	-- Platinum Deposit [Rank 2]
					},
				}),
				q(52049, {	-- X Marks the Plat!
					["description"] = "This can drop from |cFFFFD700Platinum Deposits|r and |cFFFFD700Rich Platinum Deposits|r at any mining level. You can only turn it in at Level 150 Kul Tiran Mining.",
					["sourceQuests"] = { 52044 },	-- An Exceptional Platinum Shard [A]
					["provider"] = { "i", 161085 },	-- Tattered Map
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(161085),	-- Tattered Map (QI!)
					},
				}),
				q(52053, {	-- The Platinum Map
					["description"] = "This can drop from |cFFFFD700Platinum Deposits|r and |cFFFFD700Rich Platinum Deposits|r at any mining level. You can only turn it in at Level 150 Zandalari Mining.",
					["sourceQuests"] = { 52046 },	-- An Exceptional Platinum Shard [H]
					["provider"] = { "i", 161088 },	-- Platinum Map
					["races"] = HORDE_ONLY,
				}),
				q(52050, {	-- A More Challenging Career
					["sourceQuests"] = { 52049 },	-- X Marks the Plat!
					["provider"] = { "n", 139746 },		-- First Mate Cinderfuse
					["coord"] = { 19.76, 44.54, DRUSTVAR },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(253341),	-- Platinum Deposit [Rank 3]
						i(161082),	-- Platinum Nugget (QI!)
					},
				}),
				q(52055, {	-- An Ore for an Eye
					["sourceQuests"] = { 52053 },	-- The Platinum Map
					["provider"] = { "n", 139792 },	-- Ta'mil Nadu
					["coord"] = { 27.6, 69.8, VOLDUN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(253341),	-- Platinum Deposit [Rank 3]
						i(161082),	-- Platinum Nugget (QI!)
					},
				}),
			},
		}),
		header(HEADERS.Spell, 253338, {	-- Storm Silver Deposit [Rank 3]
			["providers"] = {
				{ "o", 276617 },	-- Storm Silver Deposit
				{ "o", 276622 },	-- Rich Storm Silver Deposit
			},
			["maps"] = {
				DRUSTVAR,
				NAZMIR,
				STORMSONG_VALLEY,
				TIRAGARDE_SOUND,
				VOLDUN,
				ZULDAZAR,
				-- #if AFTER 8.2.0
				MECHAGON,
				-- #endif
			},
			["groups"] = {
				q(51568, {	-- Ritualistic Preparations [A]
					["description"] = "Requires 50 Kul'Tiran Mining\n73.4, 8.4 in Boralus is location of the Forge\n41.8, 30.0 in Tiragarde Sound is the location to get the Blessing",
					["provider"] = { "n", 136091 },	-- Myra Cabot
					["coords"] = {
						{ 75.0, 7.6, BORALUS },	-- Trainer Location
						{ 73.4, 8.4, BORALUS },	-- Forge
						{ 41.8, 30.0, BORALUS },	-- Ingot Blessing
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(253337),	-- Storm Silver Deposit [Rank 2]
						i(160974),	-- Sanctified Storm Silver Ingots (QI!)
						i(161133),	-- Unsanctified Storm Silver Ingots (QI!)
						i(160440),	-- Unsanctified Storm Silver Ore (QI!)
					},
				}),
				q(52014, {	-- Ritualistic Prepartions [H]
					["description"] = "Requires 50 Zandalari Mining\n44.0, 38.3 in Daza'alor is location of the Forge\n52.8, 95.6 in Daza'alor harbor is the location to get the Blessing",
					["provider"] = { "n", 122694 },	-- Secott the Goldsmith
					["coords"] = {
						{ 44.0, 39.0, DAZARALOR },	-- Trainer Location
						{ 44.0, 38.3, DAZARALOR },	-- Forge
						{ 52.8, 95.6, DAZARALOR },	-- Ingot Blessing
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(253337),	-- Storm Silver Deposit [Rank 2]
						i(160974),	-- Sanctified Storm Silver Ingots (QI!)
						i(161133),	-- Unsanctified Storm Silver Ingots (QI!)
						i(160440),	-- Unsanctified Storm Silver Ore (QI!)
					},
				}),
				q(48768, {	-- Brined Justice [A]
					["description"] = "Requires 135 Kul'Tiran Mining.",
					["sourceQuests"] = { 51568 },	-- Ritualistic Preparations [A]
					["provider"] = { "n", 136091 },	-- Myra Cabot
					["coord"] = { 75.01, 7.61, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(253338),	-- Storm Silver Deposit [Rank 3]
						i(160453),	-- Stolen Storm Silver Bar (QI!)
					},
				}),

				q(52015, {	-- Brined Justice [H]
					["description"] = "Requires 135 Zandalari Mining",
					["sourceQuests"] = { 52014 },	-- Ritualistic Preparations [H]
					["provider"] = { "n", 122694 },	-- Secott the Goldsmith
					["coord"] = { 44.0, 39.0, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(253338),	-- Storm Silver Deposit [Rank 3]
						i(160453),	-- Stolen Storm Silver Bar (QI!)
					},
				}),
			},
		}),
		header(HEADERS.Spell, 253347, {	-- Storm Silver Seam [Rank 3]
			["provider"] = { "o", 276620 },	-- Storm Silver Seam
			["maps"] = {
				DRUSTVAR,
				NAZMIR,
				STORMSONG_VALLEY,
				TIRAGARDE_SOUND,
				VOLDUN,
				ZULDAZAR,
				-- #if AFTER 8.2.0
				MECHAGON,
				-- #endif
			},
			["groups"] = {
				q(48770, {	-- Three Sheets to the Wind [A]
					["description"] = "Requires 125 Kul'Tiran Mining\n75.25, 14.33 in Boralus is Harold Atkey Location\n75.51, 23.21 in Boralus is Franklin the Drunk Location\nWhen you visit Harold you want to buy \"Brennadam Apple Brand\".",
					["provider"] = { "n", 136091 },	-- Myra Cabot
					["coords"] = {
						{ 75.0, 7.61, BORALUS },	-- Trainer Location
						{ 75.2, 14.3, BORALUS },	-- Harold Atkey
						{ 75.5, 23.2, BORALUS },	-- Franklin The Drunk
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(253346),	-- Storm Silver Seam [Rank 2]
					},
				}),
				q(52016, {	-- Three Sheets to the Wind [H]
					["description"] = "Requires 125 Zandalari Mining",
					["provider"] = { "n", 122694 },	-- Secott the Goldsmith
					["coord"] = { 44.0, 39.0, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(253346),	-- Storm Silver Seam [Rank 2]
					},
				}),
				q(51380, {	-- Back to Franklin
					["description"] = "Requires 150 Kul'Tiran Mining.",
					["sourceQuests"] = { 48770 },	-- Three Sheets to the Wind [A]
					["provider"] = { "n", 136091 },	-- Myra Cabot
					["coord"] = { 75.01, 7.61, BORALUS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(52017, {	-- Back to Biru
					["description"] = "Requires 150 Zandalari Mining",
					["sourceQuests"] = { 52016 },	-- Three Sheets to the Wind [H]
					["provider"] = { "n", 122694 },	-- Secott the Goldsmith
					["coord"] = { 44.0, 39.0, DAZARALOR },
					["races"] = HORDE_ONLY,
				}),
				q(51889, {	-- The Wrath of Grapes [A]
					["description"] = "Requires 150 Kul'Tiran Mining.",
					["sourceQuests"] = { 51380 },	-- Back to Franklin
					["provider"] = { "n", 139375 },	-- Franklin the Drunk
					["coords"] = {
						{ 75.6, 23.5, BORALUS },	-- Franklin the Drunk
						{ 69.3, 13.0, BORALUS },	-- Hilock of Eggs
						{ 74.0, 12.7, BORALUS },	-- Jar of Pickle Juice [Inside Inn]
						{ 70.4, 9.67, BORALUS },	-- Mountain of Bacon
						{ 72.5, 11.6, BORALUS },	-- Pile of Sausages
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(253347),	-- Storm Silver Seam [Rank 3]
						i(160998),	-- Hillock of Eggs (QI!)
						i(160995),	-- Jar of Pickle Juice (QI!)
						i(160996),	-- Mountain of Bacon (QI!)
						i(160997),	-- Pile of Sausages (QI!)
					},
				}),
				q(52043, {	-- The Wrath of Grapes [H]
					["description"] = "Requires 150 Zandalari Mining",
					["sourceQuests"] = { 52017 },	-- Back to Biru
					["provider"] = { "n", 139634 },	-- Biru The Drunk
					["coord"] = { 52.7, 84.3, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(253347),	-- Storm Silver Seam [Rank 3]
						i(160998),	-- Hillock of Eggs (QI!)
						i(160995),	-- Jar of Pickle Juice (QI!)
						i(160996),	-- Mountain of Bacon (QI!)
						i(160997),	-- Pile of Sausages (QI!)
					},
				}),
			},
		}),
	})),
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18820, {	-- Geologist's Ledger: Dragon Isles
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					18819,	-- Geologist's Ledger - Draconium
					18818,	-- Geologist's Ledger - Serevite
					18821,	-- Geologist's Ledger - Overloaded Elements
				}},
				["groups"] = {
					crit(61388, {	-- Iridescent Ore Recovered
						["provider"] = {"i",201301},	-- Iridescent Ore
					}),
					crit(61389, {	-- Elementally Charged Stone Recovered
						["provider"] = {"i",202011},	-- Elementally Charged Stone
					}),
				},
			}),
			ach(18819, {	-- Geologist's Ledger - Draconium
				crit(61370, {	-- Draconium Deposit
					["providers"] = {
						{ "o", 379252 },	-- Draconium Deposit
						{ "o", 379248 },	-- Draconium Deposit
					},
					["_quests"] = { 71951 },	-- Draconium Deposit
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61371, {	-- Rich Draconium Deposit
					["providers"] = {
						{ "o", 379263 },	-- Rich Draconium Deposit
						{ "o", 379267 },	-- Rich Draconium Deposit
					},
					["_quests"] = { 71952 },	-- Rich Draconium Deposit
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61372, {	-- Molten Draconium Deposit
					["provider"] = { "o", 375235 },	-- Molten Draconium Deposit
					["_quests"] = { 71954 },	-- Molten Draconium Deposit
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61373, {	-- Hardened Draconium Deposit
					["provider"] = { "o", 375234 },	-- Hardened Draconium Deposit
					["_quests"] = { 71956 },	-- Hardened Draconium Deposit
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61374, {	-- Titan-Touched Draconium Deposit
					["provider"] = { "o", 375238 },	-- Titan-Touched Draconium Deposit
					["_quests"] = { 71958 },	-- Titan-Touched Draconium Deposit
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61375, {	-- Primal Draconium Deposit
					["provider"] = { "o", 375239 },	-- Primal Draconium Deposit
					["_quests"] = { 71960 },	-- Primal Draconium Deposit
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61376, {	-- Infurious Draconium Deposit
					["provider"] = { "o", 375240 },	-- Infurious Draconium Deposit
					["_quests"] = { 71962 },	-- Infurious Draconium Deposit
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61377, {	-- Draconium Seam
					["provider"] = { "o", 379272 },	-- Draconium Seam
					["_quests"] = { 72347 },	-- Draconium Seam
					["maps"] = {
						THE_FORBIDDEN_REACH,
						ZARALEK_CAVERN,
					},
				}),
				crit(61378, {	-- Metamorphic Draconium
					["provider"] = { "o", 390138 },	-- Metamorphic Draconium
					["_quests"] = { 75140 },	-- Metamorphic Draconium
					-- TODO: move to an ObjectDB eventually
					-- worth coords since it cannot actually be found throughout the entire zone it seems
					["coords"] = {
						{ 29.7, 41.4, ZARALEK_CAVERN },
						{ 29.9, 42.2, ZARALEK_CAVERN },
						{ 30.6, 50.4, ZARALEK_CAVERN },
						{ 30.8, 41.3, ZARALEK_CAVERN },
						{ 31.2, 44.5, ZARALEK_CAVERN },
						{ 31.9, 42.3, ZARALEK_CAVERN },
						{ 32.5, 43.1, ZARALEK_CAVERN },
						{ 32.7, 44.0, ZARALEK_CAVERN },
						{ 33.1, 45.1, ZARALEK_CAVERN },
						{ 33.6, 41.8, ZARALEK_CAVERN },
						{ 33.7, 44.4, ZARALEK_CAVERN },
						{ 34.3, 54.0, ZARALEK_CAVERN },
						{ 34.7, 49.0, ZARALEK_CAVERN },
						{ 35.3, 43.4, ZARALEK_CAVERN },
						{ 35.3, 51.8, ZARALEK_CAVERN },
						{ 36.0, 42.2, ZARALEK_CAVERN },
						{ 49.5, 40.4, ZARALEK_CAVERN },
					},
				}),
			}),
			ach(18818, {	-- Geologist's Ledger - Serevite
				crit(61362, {	-- Rich Serevite Deposit
					["providers"] = {
						{ "o", 381104 },	-- Rich Serevite Deposit
						{ "o", 381105 },	-- Rich Serevite Deposit
					},
					["_quests"] = { 71950 },	-- Rich Serevite Deposit
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61363, {	-- Molten Serevite Deposit
					["provider"] = { "o", 381516 },	-- Molten Serevite Deposit
					["_quests"] = { 71953 },	-- Molten Serevite Deposit
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61364, {	-- Hardened Serevite Deposit
					["provider"] = { "o", 381515 },	-- Hardened Serevite Deposit
					["_quests"] = { 71955 },	-- Hardened Serevite Deposit
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61365, {	-- Titan-Touched Serevite Deposit
					["provider"] = { "o", 381517 },	-- Titan-Touched Serevite Deposit
					["_quests"] = { 71957 },	-- Titan-Touched Serevite Deposit
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61366, {	-- Primal Serevite Deposit
					["provider"] = { "o", 381518 },	-- Primal Serevite Deposit
					["_quests"] = { 71959 },	-- Primal Serevite Deposit
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61367, {	-- Infurious Serevite Deposit
					["provider"] = { "o", 381519 },	-- Infurious Serevite Deposit
					["_quests"] = { 71961 },	-- Infurious Serevite Deposit
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61368, {	-- Serevite Seam
					["provider"] = { "o", 381106 },	-- Serevite Seam
					["_quests"] = { 72346 },	-- Serevite Seam
					["maps"] = {
						THE_FORBIDDEN_REACH,
						ZARALEK_CAVERN,
					},
				}),
				crit(61369, {	-- Metamorphic Serevite
					["provider"] = { "o", 390137 },	-- Metamorphic Serevite
					["_quests"] = { 75139 },	-- Metamorphic Serevite
					["maps"] = { ZARALEK_CAVERN },
				}),
			}),
			ach(18821, {	-- Geologist's Ledger - Overloaded Elements
				crit(61382, {	-- Overload Molten Node
					["providers"] = {
						{ "o", 375235 },	-- Molten Draconium Deposit
						{ "o", 381516 },	-- Molten Serevite Deposit
					},
					["_quests"] = { 71963 },	-- Overload Molten Node
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61383, {	-- Overload Hardened Node
					["providers"] = {
						{ "o", 375234 },	-- Hardened Draconium Deposit
						{ "o", 381515 },	-- Hardened Serevite Deposit
					},
					["_quests"] = { 71964 },	-- Overload Hardened Node
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61384, {	-- Overload Titan-Touched Node
					["providers"] = {
						{ "o", 375238 },	-- Titan-Touched Draconium Deposit
						{ "o", 381517 },	-- Titan-Touched Serevite Deposit
					},
					["_quests"] = { 71965 },	-- Overload Titan-Touched Node
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61385, {	-- Overload Primal Node
					["providers"] = {
						{ "o", 375239 },	-- Primal Draconium Deposit
						{ "o", 381518 },	-- Primal Serevite Deposit
					},
					["_quests"] = { 71966 },	-- Overload Primal Node
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61386, {	-- Overload Infurious Node
					["providers"] = {
						{ "o", 375240 },	-- Infurious Draconium Deposit
						{ "o", 381519 },	-- Infurious Serevite Deposit
					},
					["_quests"] = { 71967 },	-- Overload Infurious Node
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61387, {	-- Overload Metamorphic Node
					["providers"] = {
						{ "o", 390138 },	-- Metamorphic Draconium
						{ "o", 390137 },	-- Metamorphic Serevite
					},
					["_quests"] = { 75137 },	-- Overload Metamorphic Node
					["maps"] = { ZARALEK_CAVERN },
				}),
			}),
		})),
		n(QUESTS, {
			q(70028, {	-- Artisan's Supply: Salt Deposits
				["provider"] = { "n", 187261 },	-- Grun Ashbeard
				["coord"] = { 76.3, 34.6, THE_WAKING_SHORES },
				["cost"] = {{ "i", 197754, 5 }},	-- 5x Salt Deposit
				["_drop"] = { "g" },
			}),
			q(70258, {	-- Hidden Profession Master Mining
				["name"] = "Hidden Profession Master: Mining",
				["provider"] = { "n", 194843 },	-- Bridgette Holdug
				["coord"] = { 61.4, 76.9, THALDRASZUS },
			}),
			q(70192, {	-- Specialized Secrets: Mining
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
			["sharedDescription"] = "Requires 25 Skill.",
			["provider"] = { "n", 185553 },	-- Sekita the Burrower
			["coord"] = { 39.0, 51.2, VALDRAKKEN },
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["isWeekly"] = true,
			["groups"] = {
				i(199122),	-- Mining Field Notes
			},
		},{
			q(72156),	-- A Fiery Flight
			q(70617),	-- All Mine, Mine, Mine
			q(70618),	-- The Call of the Forge
			q(72157),	-- The Weight of Earth
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", DF_MINING_KNOWLEDGE, 1 }} }, {
				r(388213, {["timeline"] = {ADDED_10_0_5}}),	-- Overload Elemental Deposit
				r(383793),	-- Refine Draconium++
				r(383795),	-- Refine Draconium+++
				r(383796),	-- Refine Khaz'gorite++
				r(383797),	-- Refine Khaz'gorite+++
				r(383649),	-- Refine Serevite++
				r(383792),	-- Refine Serevite+++
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(DF_MINING_KNOWLEDGE),
			},
		},{
			i(199122),	-- Mining Field Notes
			q(74106, {		-- DF Inscription Order: Mining
				["name"] = "DF Inscription Order: Mining",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 194708 },	-- Draconic Treatise on Mining
			}),
			q(72160, {	-- DF Weekly Mining Knowledgepoint #1
				["name"] = "DF Weekly Mining Knowledgepoint #1",
				["provider"] = { "i", 201300 },	-- Iridescent Ore Fragments
			}),
			q(72161, {	-- DF Weekly Mining Knowledgepoint #2
				["name"] = "DF Weekly Mining Knowledgepoint #2",
				["provider"] = { "i", 201300 },	-- Iridescent Ore Fragments
			}),
			q(72162, {	-- DF Weekly Mining Knowledgepoint #3
				["name"] = "DF Weekly Mining Knowledgepoint #3",
				["provider"] = { "i", 201300 },	-- Iridescent Ore Fragments
			}),
			q(72163, {	-- DF Weekly Mining Knowledgepoint #4
				["name"] = "DF Weekly Mining Knowledgepoint #4",
				["provider"] = { "i", 201300 },	-- Iridescent Ore Fragments
			}),
			q(72164, {	-- DF Weekly Mining Knowledgepoint #5
				["name"] = "DF Weekly Mining Knowledgepoint #5",
				["provider"] = { "i", 201300 },	-- Iridescent Ore Fragments
			}),
			q(72165, {	-- DF Weekly Mining Knowledgepoint #6
				["name"] = "DF Weekly Mining Knowledgepoint #6",
				["provider"] = { "i", 201301 },	-- Iridescent Ore
			}),
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(QUESTS, sharedData({
			["sharedDescription"] = "Requires 25 Skill.",
			["provider"] = { "n", 219097 },	-- Tarib <Mining Trainer>
			["coord"] = { 52.6, 52.6, DORNOGAL },
			["isWeekly"] = true,
			["groups"] = {
				i(224818),	-- Algari Mining Notes
			},
		},{
			q(83103),	-- Acquiring Aqirite
			q(83102),	-- Bismuth is Business
			q(83104),	-- Identifying Ironclaw
			q(83106),	-- Null Pebble Excavation
			q(83105),	-- Rush-order Requisition
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", TWW_MINING_KNOWLEDGE, 1 }} }, {
				r(442330),	-- Refine Aqirite++
				r(442331),	-- Refine Aqirite+++
				r(442328),	-- Refine Bismuth++
				r(442329),	-- Refine Bismuth+++
				r(442332),	-- Refine Ironclaw Ore++
				r(442333),	-- Refine Ironclaw Ore+++
			}),
		}),
		n(QUESTS, sharedData({
			["isWeekly"] = true,
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["groups"] = {
				i(224818),	-- Algari Mining Notes
			},
		},{
			q(83103, {	-- Acquiring Aqirite
				["provider"] = { "n", 219097 },	-- Tarib <Mining Trainer>
				["coord"] = { 52.6, 52.6, DORNOGAL },
			}),
		})),
		n(QUESTS, {
			q(91420, {	-- Swap Meet
				["description"] = "Obtained the first time you harvest Desolate Deposit.",
				["providers"] = {
					{ "i", 246504 },	-- Inscrutable Ore (QS!)
					{ "o", 523491 },	-- Desolate Deposit
					{ "o", 523512 },	-- Rich Desolate Deposit
				},
				["timeline"] = { ADDED_11_2_0 },
			}),
		}),
		n(TREASURES, {
			o(455957, {	-- Arathi Precision Drill
				["coord"] = { 46.1, 64.4, HALLOWFALL },
				["questID"] = 83910,
				["groups"] = {
					i(226336),	-- Arathi Precision Drill
				},
			}),
			o(455956, {	-- Devout Archaeologist's Excavator
				["coord"] = { 43.1, 56.8, HALLOWFALL },
				["questID"] = 83911,
				["groups"] = {
					i(226337),	-- Devout Archaeologist's Excavator
				},
			}),
			o(455960, {	-- Dornogal Chisel
				["coord"] = { 36.6, 79.3, DORNOGAL },
				["questID"] = 83907,
				["groups"] = {
					i(226333),	-- Dornogal Chisel
				},
			}),
			o(455959, {	-- Earthen Excavator's Shovel
				["coord"] = { 49.4, 27.5, THE_RINGING_DEEPS },
				["questID"] = 83908,
				["groups"] = {
					i(226334),	-- Earthen Excavator's Shovel
				},
			}),
			o(455961, {	-- Earthen Miner's Gavel
				["coord"] = { 58.2, 62.0, ISLE_OF_DORN },
				["questID"] = 83906,
				["groups"] = {
					i(226332),	-- Earthen Miner's Gavel
				},
			}),
			o(455955, {	-- Heavy Spider Crusher
				["coord"] = { 46.8, 21.7, NERUBAR },
				["questID"] = 83912,
				["groups"] = {
					i(226338),	-- Heavy Spider Crusher
				},
			}),
			o(455954, {	-- Nerubian Mining Supplies
				["coord"] = { 48.0, 40.6, NERUBAR_LOWER },
				["questID"] = 83913,
				["groups"] = {
					i(226339),	-- Nerubian Mining Supplies
				},
			}),
			o(455958, {	-- Regenerating Ore
				["coord"] = { 66.2, 66.2, THE_RINGING_DEEPS },
				["questID"] = 83909,
				["groups"] = {
					i(226335),	-- Regenerating Ore
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(TWW_MINING_KNOWLEDGE),
			},
		},{
			q(83054, {	-- TWW Weekly Mining Knowledgepoint #1
				["name"] = "TWW Weekly Mining Knowledgepoint #1",
				["provider"] = { "i", 224583 },	-- Slab of Slate
			}),
			q(83053, {	-- TWW Weekly Mining Knowledgepoint #2
				["name"] = "TWW Weekly Mining Knowledgepoint #2",
				["provider"] = { "i", 224583 },	-- Slab of Slate
			}),
			q(83052, {	-- TWW Weekly Mining Knowledgepoint #3
				["name"] = "TWW Weekly Mining Knowledgepoint #3",
				["provider"] = { "i", 224583 },	-- Slab of Slate
			}),
			q(83051, {	-- TWW Weekly Mining Knowledgepoint #4
				["name"] = "TWW Weekly Mining Knowledgepoint #4",
				["provider"] = { "i", 224583 },	-- Slab of Slate
			}),
			q(83050, {	-- TWW Weekly Mining Knowledgepoint #5
				["name"] = "TWW Weekly Mining Knowledgepoint #5",
				["provider"] = { "i", 224583 },	-- Slab of Slate
			}),
			q(83049, {	-- TWW Weekly Mining Knowledgepoint #6
				["name"] = "TWW Weekly Mining Knowledgepoint #6",
				["provider"] = { "i", 224584 },	-- Erosion Polished Slate
			}),
		})),
	})),
	expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(42791, {	-- Mining at Midnight
				["timeline"] = { ADDED_12_0_X_LAUNCH },
				["groups"] = {
				},
			}),
		}),
		--[[
		n(QUESTS, sharedData({
			["sharedDescription"] = "Requires 25 Skill.",
			["provider"] = { "n", 219097 },	-- Tarib <Mining Trainer>
			["coord"] = { 52.6, 52.6, DORNOGAL },
			["isWeekly"] = true,
			["groups"] = {
				i(224818),	-- Algari Mining Notes
			},
		},{
			q(83103),	-- Acquiring Aqirite
			q(83102),	-- Bismuth is Business
			q(83104),	-- Identifying Ironclaw
			q(83106),	-- Null Pebble Excavation
			q(83105),	-- Rush-order Requisition
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", TWW_MINING_KNOWLEDGE, 1 }} }, {
				r(442330),	-- Refine Aqirite++
				r(442331),	-- Refine Aqirite+++
				r(442328),	-- Refine Bismuth++
				r(442329),	-- Refine Bismuth+++
				r(442332),	-- Refine Ironclaw Ore++
				r(442333),	-- Refine Ironclaw Ore+++
			}),
		}),
		n(QUESTS, sharedData({
			["isWeekly"] = true,
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["groups"] = {
				i(224818),	-- Algari Mining Notes
			},
		},{
			q(83103, {	-- Acquiring Aqirite
				["provider"] = { "n", 219097 },	-- Tarib <Mining Trainer>
				["coord"] = { 52.6, 52.6, DORNOGAL },
			}),
		})),
		n(QUESTS, {
			q(91420, {	-- Swap Meet
				["description"] = "Obtained the first time you harvest Desolate Deposit.",
				["providers"] = {
					{ "i", 246504 },	-- Inscrutable Ore (QS!)
					{ "o", 523491 },	-- Desolate Deposit
					{ "o", 523512 },	-- Rich Desolate Deposit
				},
				["timeline"] = { ADDED_11_2_0 },
			}),
		}),
		n(TREASURES, {
			o(455957, {	-- Arathi Precision Drill
				["coord"] = { 46.1, 64.4, HALLOWFALL },
				["questID"] = 83910,
				["groups"] = {
					i(226336),	-- Arathi Precision Drill
				},
			}),
			o(455956, {	-- Devout Archaeologist's Excavator
				["coord"] = { 43.1, 56.8, HALLOWFALL },
				["questID"] = 83911,
				["groups"] = {
					i(226337),	-- Devout Archaeologist's Excavator
				},
			}),
			o(455960, {	-- Dornogal Chisel
				["coord"] = { 36.6, 79.3, DORNOGAL },
				["questID"] = 83907,
				["groups"] = {
					i(226333),	-- Dornogal Chisel
				},
			}),
			o(455959, {	-- Earthen Excavator's Shovel
				["coord"] = { 49.4, 27.5, THE_RINGING_DEEPS },
				["questID"] = 83908,
				["groups"] = {
					i(226334),	-- Earthen Excavator's Shovel
				},
			}),
			o(455961, {	-- Earthen Miner's Gavel
				["coord"] = { 58.2, 62.0, ISLE_OF_DORN },
				["questID"] = 83906,
				["groups"] = {
					i(226332),	-- Earthen Miner's Gavel
				},
			}),
			o(455955, {	-- Heavy Spider Crusher
				["coord"] = { 46.8, 21.7, NERUBAR },
				["questID"] = 83912,
				["groups"] = {
					i(226338),	-- Heavy Spider Crusher
				},
			}),
			o(455954, {	-- Nerubian Mining Supplies
				["coord"] = { 48.0, 40.6, NERUBAR_LOWER },
				["questID"] = 83913,
				["groups"] = {
					i(226339),	-- Nerubian Mining Supplies
				},
			}),
			o(455958, {	-- Regenerating Ore
				["coord"] = { 66.2, 66.2, THE_RINGING_DEEPS },
				["questID"] = 83909,
				["groups"] = {
					i(226335),	-- Regenerating Ore
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(MID_MINING_KNOWLEDGE),
			},
		},{
			q(83054, {	-- TWW Weekly Mining Knowledgepoint #1
				["name"] = "TWW Weekly Mining Knowledgepoint #1",
				["provider"] = { "i", 224583 },	-- Slab of Slate
			}),
			q(83053, {	-- TWW Weekly Mining Knowledgepoint #2
				["name"] = "TWW Weekly Mining Knowledgepoint #2",
				["provider"] = { "i", 224583 },	-- Slab of Slate
			}),
			q(83052, {	-- TWW Weekly Mining Knowledgepoint #3
				["name"] = "TWW Weekly Mining Knowledgepoint #3",
				["provider"] = { "i", 224583 },	-- Slab of Slate
			}),
			q(83051, {	-- TWW Weekly Mining Knowledgepoint #4
				["name"] = "TWW Weekly Mining Knowledgepoint #4",
				["provider"] = { "i", 224583 },	-- Slab of Slate
			}),
			q(83050, {	-- TWW Weekly Mining Knowledgepoint #5
				["name"] = "TWW Weekly Mining Knowledgepoint #5",
				["provider"] = { "i", 224583 },	-- Slab of Slate
			}),
			q(83049, {	-- TWW Weekly Mining Knowledgepoint #6
				["name"] = "TWW Weekly Mining Knowledgepoint #6",
				["provider"] = { "i", 224584 },	-- Erosion Polished Slate
			}),
		})),--]]
	})),
})));
