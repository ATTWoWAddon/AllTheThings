---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(ISLE_OF_DORN, {
		header(HEADERS.Faction, FACTION_COUNCIL_OF_DORNOGAL, {
			["icon"] = 5891369,
			["groups"] = {
				faction(FACTION_COUNCIL_OF_DORNOGAL),
				title(565, {	-- Honorary Councilmember
					["minReputation"] = { FACTION_COUNCIL_OF_DORNOGAL, 25 },
				}),
				n(ACHIEVEMENTS, {
					ach(40856, {	-- Council of Dornogal
						["minReputation"] = { FACTION_COUNCIL_OF_DORNOGAL, 15 },
						["timeline"] = { ADDED_11_0_2, REMOVED_11_0_7 },
					}),
					ach(41161, {	-- Council of Dornogal
						["minReputation"] = { FACTION_COUNCIL_OF_DORNOGAL, 15 },
						["timeline"] = { ADDED_11_0_7 },
					}),
					ach(40904, {	-- Cornerstone of Dornogal
						["minReputation"] = { FACTION_COUNCIL_OF_DORNOGAL, 25 },
						["timeline"] = { ADDED_11_0_2, REMOVED_11_0_7 },
					}),
					ach(41162, {	-- Cornerstone of Dornogal
						["minReputation"] = { FACTION_COUNCIL_OF_DORNOGAL, 25 },
						["timeline"] = { ADDED_11_0_7 },
					}),
				}),
				n(QUESTS, sharedData({
					["provider"] = { "n", 223728 },	-- Auditor Balwurz <Keeper of Renown>
					["coord"] = { 39.1, 24.0, DORNOGAL },
				}, bubbleDownRep(FACTION_COUNCIL_OF_DORNOGAL, {
					{		-- RENOWN 1 --
					}, {	-- RENOWN 2 --
					}, {	-- RENOWN 3 --
						q(82342),	-- A Small Bundle of Goods
					}, {	-- RENOWN 4 --
						q(82345, {	-- A Shining Stone
							i(223951),	-- Earth-Encrusted Gem
						}),
					}, {	-- RENOWN 5 --
						q(84404),	-- A Small Bundle of Goods
					}, {	-- RENOWN 6 --
						q(82349),	-- Carved Crests
						q(82333),	-- Weathered Quests
					}, {	-- RENOWN 7 --
						q(82346),	-- A Small Bundle of Valorstones
					}, {	-- RENOWN 8 --
						q(84403),	-- A Small Bundle of Goods
						q(85718, {	-- A Shining Stone
							i(223951),	-- Earth-Encrusted Gem
						}),
					}, {	-- RENOWN 9 --
						q(82344),	-- Weathered Crests
					}, {	-- RENOWN 10 --
						q(82347, {	-- Assistant Councilmember
							i(218346),	-- Honorary Councilmember's Tabard (COSMETIC!)
						}),
					}, {	-- RENOWN 11 --
					}, {	-- RENOWN 12 --
						q(82348),	-- A Large Bundle of Goods
					}, {	-- RENOWN 13 --
					}, {	-- RENOWN 14 --
					}, {	-- RENOWN 15 --
					}, {	-- RENOWN 16 --
					}, {	-- RENOWN 17 --
						q(82356),	-- A Large Bundle of Goods
						q(85545),	-- Resonance Crystals
					}, {	-- RENOWN 18 --
					}, {	-- RENOWN 19 --
						q(82358),	-- Carved Crests
					}, {	-- RENOWN 20 --
						q(82359),	-- A Shining Bundle of Goods
					}, {	-- RENOWN 21 --
					}, {	-- RENOWN 22 --
						q(82361, {	-- A Small Bundle of Goods
							i(226147),	-- Bunch of Brave Rocks
						}),
					}, {	-- RENOWN 23 --
					}, {	-- RENOWN 24 --
						q(82365, {	-- A Crafter's Delight
							i(224072),	-- Enchanted Runed Harbinger Crest
						}),
						q(85546),	-- Resonance Crystals
					}, {	-- RENOWN 25 --
						q(82362),	-- For What Glimmers in Stone
						------ Paragon ------
						q(79219, {	-- Renowned with the Council of Dornogal
							["isRepeatable"] = true,
							["groups"] = { i(225239) },	-- Overflowing Council of Dornogal Trove
						}),
					},
				}))),
				header(HEADERS.Quest, 83240, bubbleDownSelf({ ["minReputation"] = { FACTION_COUNCIL_OF_DORNOGAL, 3 } }, {	-- The Theater Troupe
					["icon"] = 132288,
					["coord"] = { 56.4, 51.4, ISLE_OF_DORN },
					["maps"] = { THE_PROSCENIUM },
					["groups"] = {
						n(ACHIEVEMENTS, {
							ach(40860),	-- A Star of Dorn (automated)
							ach(40859, {	-- We're Here All Night (automated)
								i(253037, {	-- Dornogal Brazier (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
								}),
							}),
						}),
						n(QUESTS, {
							q(82781, {	-- Attention-Getter
								["provider"] = { "n", 217248 },	-- Elma
								["coords"] = {
									{ 56.7, 52.4, ISLE_OF_DORN },
									{ 53.3, 78.6, THE_PROSCENIUM },	-- The Proscenium
								},
								["minReputation"] = { FACTION_COUNCIL_OF_DORNOGAL, 10 },
							}),
							q(82782, {	-- Authenticity in Dress
								["provider"] = { "n", 215745 },	-- Rabaan
								["coords"] = {
									{ 56.7, 52.2, ISLE_OF_DORN },	-- Isle of Dorn
									{ 53.5, 77.1, THE_PROSCENIUM },	-- The Proscenium
								},
								["minReputation"] = { FACTION_COUNCIL_OF_DORNOGAL, 14 },
							}),
							q(82775, {	-- Quickchange Artist
								["provider"] = { "n", 215748 },	-- Wendeline
								["coords"] = {
									{ 57.0, 53.8, ISLE_OF_DORN },
									{ 54.7, 76.0, THE_PROSCENIUM},
								},
								["minReputation"] = { FACTION_COUNCIL_OF_DORNOGAL, 8 },
							}),
							q(82784, {	-- Resonant Performance
								["provider"] = { "n", 215744 },	-- Burkhalt
								["coords"] = {
									{ 56.7, 52.4, ISLE_OF_DORN },
									{ 53.7, 77.7, THE_PROSCENIUM },
								},
								["minReputation"] = { FACTION_COUNCIL_OF_DORNOGAL, 21 },
							}),
							q(79282, {	-- The Grand Debut
								["sourceQuests"] = { 79150 },	-- Thespians at the Proscenium
								["provider"] = { "n", 214296 },	-- Stage Manager Huberta
								["coords"] = {
									{ 56.5, 52.8, ISLE_OF_DORN },
									{ 49.9, 65.7, THE_PROSCENIUM },
								},
							}),
							q(83240, {	-- The Theater Troupe
								["provider"] = { "n", 214296 },	-- Stage Manager Huberta
								["coords"] = {
									{ 56.4, 51.4, ISLE_OF_DORN },	-- Isle of Dorn
									{ 49.6, 65.1, THE_PROSCENIUM },	-- The Proscenium
								},
								["isWeekly"] = true,
								["groups"] = {
									container(226263, {	-- Theater Troupe's Trove
										["providers"] = {
											-- future season versions
											-- #if AFTER 11.1
											{ "i", 239128 },	-- S2
											-- #endif
											-- #if AFTER 11.2
											{ "i", 250763 },	-- S3
											-- #endif
										},
										["groups"] = {
											i(245294, { ["timeline"] = { ADDED_11_2_7 } }),	-- Councilward's Jeweled Goblet (DECOR!)
											i(228320),	-- Design: Binding of Binding (RECIPE!)
											i(228708),	-- Formula: Gleeful Glamour - Earthen (RECIPE!)
											i(223126),	-- Formula: Enchant Chest - Stormrider's Agility (RECIPE!)
											i(223095),	-- Pattern: Rook Feather Wristwraps (RECIPE!)
											i(223036),	-- Plans: Charged Runeaxe (RECIPE!)
										},
									}),
									i(226263, {	-- Theater Troupe's Trove (S1)
										["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
										["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
									}),
									i(239128, {	-- Theater Troupe's Trove (S2)
										["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
										["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
									}),
									i(250763, {	-- Theater Troupe's Trove (S3)
										["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
										["timeline"] = { ADDED_11_2_0 },
									}),
									i(235151, {	-- Distinguished Actor's Chest
										["timeline"] = { ADDED_11_1_0 },
										["groups"] = { i(245294, { ["timeline"] = { ADDED_11_2_7 } }) },	-- Councilward's Jeweled Goblet (DECOR!)
									}),
								},
							}),
							q(79150, {	-- Thespians at the Proscenium
								["provider"] = { "n", 214296 },	-- Stage Manager Huberta
								["coords"] = {
									{ 56.4, 51.4, ISLE_OF_DORN },
									{ 49.4, 66.4, THE_PROSCENIUM },
								},
							}),
						}),
						n(REWARDS, {
							i(217011),	-- Amateur Actor's Chest
							i(217013),	-- Expert Actor's Chest
							i(217012),	-- Novice Actor's Chest
						}),
					},
				})),
				n(VENDORS, {
					n(223728, {	-- Auditor Balwurz <Keeper of Renown>
						["coord"] = { 39.1, 24.0, DORNOGAL },
						["groups"] = bubbleDownRep(FACTION_COUNCIL_OF_DORNOGAL, {
							{		-- RENOWN 1 --
								i(248013, {	-- Recipe: Dornic Mine and Cheese Platter (RECIPE!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = {{"c", RESONANCE_CRYSTALS, 3000}},
								}),
								i(253168, {	-- Earthen Storage Crate (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
								}),
								i(245295, {	-- Literature of Dornogal (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = {{"c", RESONANCE_CRYSTALS, 1000}},
								}),
								i(245297, {	-- Literature of Gundargaz (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = {{"c", RESONANCE_CRYSTALS, 1000}},
								}),
								i(245296, {	-- Literature of Taelloch (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = {{"c", RESONANCE_CRYSTALS, 1000}},
								}),
								i(245561, {	-- Ornate Ochre Window (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = {{"c", RESONANCE_CRYSTALS, 650}},
								}),
							}, {	-- RENOWN 2 --
								i(228419, {	-- Mineral-Sparkled Cape
									["cost"] = {{"c", RESONANCE_CRYSTALS, 250}},
								}),
								i(218345, {	-- Honorary Councilmember's Cloak
									["cost"] = {{"c", RESONANCE_CRYSTALS, 1625}},
								}),
							}, {	-- RENOWN 3 --
								i(223127, {	-- Formula: Enchant Chest - Council's Intellect (RECIPE!)
									["cost"] = {{"i", ARTISANS_ACUITY, 150}},
								}),
								i(223103, {	-- Pattern: Stormbound Armor Kit (RECIPE!)
									["cost"] = {{"i", ARTISANS_ACUITY, 150}},
								}),
								i(223062, {	-- Technique: Contract: Council of Dornogal (RECIPE!)
									["cost"] = {{"i", ARTISANS_ACUITY, 150}},
								}),
							}, {	-- RENOWN 4 --
							}, {	-- RENOWN 5 --
							}, {	-- RENOWN 6 --
							}, {	-- RENOWN 7 --
								i(223290, {	-- Chiseled Boulder Pauldrons
									["cost"] = {{"c", RESONANCE_CRYSTALS, 3900}},
								}),
								i(223292, {	-- Gem-Waded Shoulderpads
									["cost"] = {{"c", RESONANCE_CRYSTALS, 3900}},
								}),
								i(223289, {	-- Mineral-Sparkled Mantle
									["cost"] = {{"c", RESONANCE_CRYSTALS, 3900}},
								}),
								i(223291, {	-- Ore-namental Spaulders
									["cost"] = {{"c", RESONANCE_CRYSTALS, 3900}},
								}),
							}, {	-- RENOWN 8 --
							}, {	-- RENOWN 9 --
							}, {	-- RENOWN 10 --
							}, {	-- RENOWN 11 --
							}, {	-- RENOWN 12 --
								i(224645, {	-- Jewel-Etched Alchemy Notes (CI!)
									["cost"] = {{"i", ARTISANS_ACUITY, 50}},
									["requireSkill"] = ALCHEMY,
								}),
								i(224647, {	-- Jewel-Etched Blacksmithing Notes (CI!)
									["cost"] = {{"i", ARTISANS_ACUITY, 50}},
									["requireSkill"] = BLACKSMITHING,
								}),
								i(224652, {	-- Jewel-Etched Enchanting Notes (CI!)
									["cost"] = {{"i", ARTISANS_ACUITY, 50}},
									["requireSkill"] = ENCHANTING,
								}),
								i(224648, {	-- Jewel-Etched Tailoring Notes (CI!)
									["cost"] = {{"i", ARTISANS_ACUITY, 50}},
									["requireSkill"] = TAILORING,
								}),
							}, {	-- RENOWN 13 --
								i(222965, {	-- Loamy (PET!)
									["cost"] = {{"c", RESONANCE_CRYSTALS, 6500}},
								}),
							}, {	-- RENOWN 14 --
								i(228706, {	-- Rockslidomancer's Stone (TOY!)
									["cost"] = {{"c", RESONANCE_CRYSTALS, 5000}},
								}),
							}, {	-- RENOWN 15 --
								i(218344, {	-- Honorary Councilmember's Spaulders
									["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
								}),
							}, {	-- RENOWN 16 --
								i(223301, {	-- Chiseled Boulder Crushers
									["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
								}),
								i(223303, {	-- Gem-Waded Footwraps
									["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
								}),
								i(223300, {	-- Mineral-Sparkled Sandals
									["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
								}),
								i(223302, {	-- Ore-namental Sabatons
									["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
								}),
							}, {	-- RENOWN 17 --
							}, {	-- RENOWN 18 --
								i(223571, {	-- Shale Ramolith (MOUNT!)
									["cost"] = {{"c", RESONANCE_CRYSTALS, 8125}},
								}),
							}, {	-- RENOWN 19 --
							}, {	-- RENOWN 20 --
							}, {	-- RENOWN 21 --
							}, {	-- RENOWN 22 --
							}, {	-- RENOWN 23 --
								i(221753, {	-- Smoldering Cinderbee (MOUNT!)
									["cost"] = {{"c", RESONANCE_CRYSTALS, 11375}},
								}),
							}, {	-- RENOWN 24 --
							}, {	-- RENOWN 25 --
							},
						}),
					}),
				}),
			},
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	header(HEADERS.Faction, FACTION_COUNCIL_OF_DORNOGAL, {
		header(HEADERS.Quest, 83240, {	-- Theater Troupe
			q(86619, {	-- Theater Troupe, completes along with regular quest.
				["timeline"] = { ADDED_11_1_0 }
			}),
		}),
	}),
}));
