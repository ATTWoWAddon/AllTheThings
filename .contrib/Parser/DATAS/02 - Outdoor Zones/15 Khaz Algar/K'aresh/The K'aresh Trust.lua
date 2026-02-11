---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(KARESH, {
		header(HEADERS.Faction, FACTION_THE_KARESH_TRUST, {
			["icon"] = 6937966,
			["groups"] = {
				faction(FACTION_THE_KARESH_TRUST),
				n(ACHIEVEMENTS, {
					ach(42022, {	-- A Trusted Partner
						["minReputation"] = { FACTION_THE_KARESH_TRUST, 20 },	-- The K'aresh Trust Renown 20
					}),
				}),
				title(644, {	-- <Name> of the Twilight Star
					["minReputation"] = { FACTION_THE_KARESH_TRUST, 20 },	-- The K'aresh Trust Renown 20
				}),
				n(QUESTS, sharedData({
					["provider"] = { "n", 235252 },	-- Om'sirik <Renown Quartermaster>
					["coord"] = { 40.6, 29.2, KARESH_TAZAVESH },
				}, bubbleDownRep(FACTION_THE_KARESH_TRUST, {
					{		-- RENOWN 1 --
					}, {	-- RENOWN 2 --
					}, {	-- RENOWN 3 --
					}, {	-- RENOWN 4 --
					}, {	-- RENOWN 5 --
						q(90630),	-- A Small Bundle of Crystals
						q(90631),	-- Weathered Crests
					}, {	-- RENOWN 6 --
						q(90632),	-- Valorstones
					}, {	-- RENOWN 7 --
					}, {	-- RENOWN 8 --
						q(90634),	-- A Small Bundle of Crystals
						q(90633),	-- Weathered Crests
					}, {	-- RENOWN 9 --
						q(90635),	-- Valorstones
					}, {	-- RENOWN 10 --
						q(91142, {	-- Tabard for the Trusted
							i(245968),	-- Tabard of the Trust (COSMETIC!)
						}),
					}, {	-- RENOWN 11 --
					}, {	-- RENOWN 12 --
						q(90637),	-- A Key in the Wastes
						q(90636),	-- Carved Crests
					}, {	-- RENOWN 13 --
						q(90638),	-- A Bundle of Crystals
					}, {	-- RENOWN 14 --
						q(91143),	-- Carved Crests
					}, {	-- RENOWN 15 --
					}, {	-- RENOWN 16 --
						q(92330),	-- Valorstones
					}, {	-- RENOWN 17 --
						q(90665),	-- Carved Crests
					}, {	-- RENOWN 18 --
						q(90666),	-- A Bundle of Crystals
					}, {	-- RENOWN 19 --
					}, {	-- RENOWN 20 --
						q(90667, {	-- Enchanted Runed Ethereal Crest
							i(231769),	-- Enchanted Runed Ethereal Crest
						}),
						------ Paragon ------
						q(85109, {	-- Renowned with the K'aresh Trust
							["isRepeatable"] = true,
							["groups"] = { i(230032) },	-- Overflowing K'aresh Trust Trove
						}),
					},
				}))),
				n(QUESTS, {
					header(HEADERS.Item, 242733, bubbleDownSelf({ 	-- Blue Barry (Ba'eth's Request Storyline)
						["minReputation"] = { FACTION_THE_KARESH_TRUST, 9 },	-- The K'aresh Trust Renown 9
					},{
						-- Quests have daily lockout.
						-- Day 1: 1st; Day 2: 2nd; Day 3: 3rd and 4th; Day 4: 5th and 6th
						q(90663, {	-- Stealing What is Ours
							["provider"] = { "n", 238016 },	-- Ba'eth
							["coord"] = { 57.6, 58.1, KARESH_TAZAVESH },
							["groups"] = {
								i(242535, {	-- Missing Imports (QI!)
									["coord"] = { 46.8, 35.7, KARESH_TAZAVESH },
									["providers"] = {
										{ "o", 532317 },	-- Shadowtrade Imports
										{ "o", 532318 },	-- Shadowtrade Imports
										{ "o", 532321 },	-- Shadowtrade Imports
										{ "o", 532322 },	-- Shadowtrade Imports
										{ "o", 532323 },	-- Shadowtrade Imports
									},
								}),
							},
						}),
						q(90729, {	-- Win-Win Situation
							["sourceQuests"] = { 90663 },	-- Stealing What is Ours
							["provider"] = { "n", 238016 },	-- Ba'eth
							["coord"] = { 57.6, 58.1, KARESH_TAZAVESH },
							["groups"] = {
								i(242667),	-- Ba'key's Special Cookie (QI!)
								i(242708),	-- Box of Cookies (QI!)
							},
						}),
						q(90747, {	-- The Wrong Bluecephalus
							["sourceQuests"] = { 90729 },	-- Win-Win Situation
							["provider"] = { "n", 243291 },	-- Xy'dax
							["coord"] = { 46.9, 36.8, KARESH_TAZAVESH },
						}),
						q(90773, {	-- Meat my Business
							["sourceQuests"] = { 90747 },	-- The Wrong Bluecephalus
							["provider"] = { "n", 243926 },	-- Chef Xy'Zin
							["coord"] = { 48.3, 41.5, KARESH_TAZAVESH },
							["groups"] = {
								i(242794),	-- Dustback Flank (QI!)
								i(243053),	-- Expired Luck Potion (QI!)
								i(242796),	-- Siltwing Tail (QI!)
								o(536867, {	-- Swoopwing Egg
									i(242797),	-- Swoopwing Egg (QI!)
								}),
							},
						}),
						q(90770, {	-- The Grift
							["sourceQuests"] = { 90773 },	-- Meat my Business
							["provider"] = { "n", 243915 },	-- Graftah
							["coord"] = { 48.7, 41.5, KARESH_TAZAVESH },
							["groups"] = {
								i(243050),	-- Backfire Wish Bracelet (QI!)
								i(243054),	-- Coin of Endless Debt (QI!)
								i(243055),	-- Mismatched Shoes of Balance (QI!)
								o(537690, {	-- Prosperity Pebble
									i(243049),	-- Prosperity Pebble (QI!)
								}),
							},
						}),
						q(90769, {	-- A Blue for You
							["sourceQuests"] = { 90770 },	-- The Grift
							["provider"] = { "n", 243915 },	-- Graftah
							["coord"] = { 48.7, 41.5, KARESH_TAZAVESH },
							["groups"] = { i(242733) },	-- Blue Barry (MOUNT!)
						}),
					})),
				}),
				n(VENDORS, {
					n(235252, {	-- Om'sirik <Renown Quartermaster>
						["coord"] = { 40.6, 29.2, KARESH_TAZAVESH },
						["groups"] = bubbleDownRep(FACTION_THE_KARESH_TRUST, {
							{		-- RENOWN 1 --
								q(94415),	-- Plumbing the Void
								q(94416),	-- Rehoming Technology
								i(258667, {	-- Angled Ethereal Pipe Segment (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "c", RESONANCE_CRYSTALS, 800 } },
								}),
								i(258669, {	-- Corner Ethereal Pipe Segment (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "c", RESONANCE_CRYSTALS, 800 } },
								}),
								i(247751, {	-- Deactivated K'areshi Warp Cannon (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "c", RESONANCE_CRYSTALS, 2000 } },
								}),
								i(258666, {	-- Ethereal Pipe Segment (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "c", RESONANCE_CRYSTALS, 800 } },
								}),
								i(258885, {	-- Exposed Angled Ethereal Pipe Segment (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "c", RESONANCE_CRYSTALS, 800 } },
								}),
								i(258766, {	-- Exposed Corner Ethereal Pipe Segment (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "c", RESONANCE_CRYSTALS, 800 } },
								}),
								i(258835, {	-- Exposed Intersecting Ethereal Pipe Segment (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "c", RESONANCE_CRYSTALS, 800 } },
								}),
								i(258767, {	-- Exposed Long Ethereal Pipe Segment (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "c", RESONANCE_CRYSTALS, 800} },
								}),
								i(258306, {	-- K'areshi Warp Platform (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "c", RESONANCE_CRYSTALS, 1000 } },
								}),
								i(258320, {	-- K'areshi Protectorate Portal (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "c", RESONANCE_CRYSTALS, 1000 } },
								}),
								i(258668, {	-- Long Ethereal Pipe Segment (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "c", RESONANCE_CRYSTALS, 800 } },
								}),
								i(258836, {	-- Reinforced Corner Ethereal Pipe Segment (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "c", RESONANCE_CRYSTALS, 800 } },
								}),
							}, {	-- RENOWN 2 --
							}, {	-- RENOWN 3 --
							}, {	-- RENOWN 4 --
							}, {	-- RENOWN 5 --
								i(239486, {	-- Pattern: Pure Chronomatic Fiber (RECIPE!)
									["cost"] = { { "i", ARTISANS_ACUITY, 150 } },
								}),
								i(239487, {	-- Pattern: Pure Dexterous Fiber (RECIPE!)
									["cost"] = { { "i", ARTISANS_ACUITY, 150 } },
								}),
								i(239485, {	-- Pattern: Pure Energizing Fiber (RECIPE!)
									["cost"] = { { "i", ARTISANS_ACUITY, 150 } },
								}),
								i(239488, {	-- Pattern: Pure Precise Fiber (RECIPE!)
									["cost"] = { { "i", ARTISANS_ACUITY, 150 } },
								}),
								i(244841, {	-- Recipe: Invigorating Healing Potion (RECIPE!)
									["cost"] = { { "i", ARTISANS_ACUITY, 150 } },
								}),
								i(248550, {	-- Recipe: Umbral Essentia (RECIPE!)
									["cost"] = { { "i", ARTISANS_ACUITY, 150 } },
								}),
								i(244043, {	-- Technique: Contract: The K'aresh Trust (RECIPE!)
									["cost"] = { { "i", ARTISANS_ACUITY, 150 } },
								}),
								i(244334, {	-- Technique: Vantus Rune: Manaforge Omega (RECIPE!)
									["cost"] = { { "i", ARTISANS_ACUITY, 150 } },
								}),
							}, {	-- RENOWN 6 --
								i(245967, {	-- Shawl of the Trust (COSMETIC!)
									["cost"] = { { "c", RESONANCE_CRYSTALS, 1625 } },
								}),
							}, {	-- RENOWN 7 --
								i(245975, {	-- Consortium Brute's Chestguard
									["cost"] = { { "c", RESONANCE_CRYSTALS, 2600 } },
								}),
								i(245978, {	-- Consortium Magi's Robes
									["cost"] = { { "c", RESONANCE_CRYSTALS, 2600 } },
								}),
								i(245977, {	-- Consortium Scout's Jacket
									["cost"] = { { "c", RESONANCE_CRYSTALS, 2600 } },
								}),
								i(245976, {	-- Consortium Skirmisher's Cuirass
									["cost"] = { { "c", RESONANCE_CRYSTALS, 2600 } },
								}),
							}, {	-- RENOWN 8 --
							}, {	-- RENOWN 9 --
							}, {	-- RENOWN 10 --
							}, {	-- RENOWN 11 --
							}, {	-- RENOWN 12 --
								i(235865, {	-- Ethereal Tome of Alchemy Knowledge (CI!)
									["cost"] = { { "i", ARTISANS_ACUITY, 50 } },
									["requireSkill"] = ALCHEMY,
								}),
								i(235864, {	-- Ethereal Tome of Blacksmithing Knowledge (CI!)
									["cost"] = { { "i", ARTISANS_ACUITY, 50 } },
									["requireSkill"] = BLACKSMITHING,
								}),
								i(235863, {	-- Ethereal Tome of Enchanting Knowledge (CI!)
									["cost"] = { { "i", ARTISANS_ACUITY, 50 } },
									["requireSkill"] = ENCHANTING,
								}),
								i(235862, {	-- Ethereal Tome of Engineering Knowledge (CI!)
									["cost"] = { { "i", ARTISANS_ACUITY, 50 } },
									["requireSkill"] = ENGINEERING,
								}),
								i(235861, {	-- Ethereal Tome of Herbalism Knowledge (CI!)
									["cost"] = { { "i", ARTISANS_ACUITY, 50 } },
									["requireSkill"] = HERBALISM,
								}),
								i(235860, {	-- Ethereal Tome of Inscription Knowledge (CI!)
									["cost"] = { { "i", ARTISANS_ACUITY, 50 } },
									["requireSkill"] = INSCRIPTION,
								}),
								i(235859, {	-- Ethereal Tome of Jewelcrafting Knowledge (CI!)
									["cost"] = { { "i", ARTISANS_ACUITY, 50 } },
									["requireSkill"] = JEWELCRAFTING,
								}),
								i(235858, {	-- Ethereal Tome of Leatherworking Knowledge (CI!)
									["cost"] = { { "i", ARTISANS_ACUITY, 50 } },
									["requireSkill"] = LEATHERWORKING,
								}),
								i(235857, {	-- Ethereal Tome of Mining Knowledge (CI!)
									["cost"] = { { "i", ARTISANS_ACUITY, 50 } },
									["requireSkill"] = MINING,
								}),
								i(235856, {	-- Ethereal Tome of Skinning Knowledge (CI!)
									["cost"] = { { "i", ARTISANS_ACUITY, 50 } },
									["requireSkill"] = SKINNING,
								}),
								i(235855, {	-- Ethereal Tome of Tailoring Knowledge (CI!)
									["cost"] = { { "i", ARTISANS_ACUITY, 50 } },
									["requireSkill"] = TAILORING,
								}),
							}, {	-- RENOWN 13 --
								i(245969, {	-- Mantle of the Trust (COSMETIC!)
									["cost"] = { { "c", RESONANCE_CRYSTALS, 3250 } },
								}),
							}, {	-- RENOWN 14 --
								iensemble(245693, {	-- K'areshi Ribbon Stash
									["cost"] = { { "c", RESONANCE_CRYSTALS, 2250 } },
								}),
							}, {	-- RENOWN 15 --
								i(242729, {	-- Ruby Void Creeper (MOUNT!)
									["cost"] = { { "c", RESONANCE_CRYSTALS, 8125 } },
								}),
							}, {	-- RENOWN 16 --
								i(245971, {	-- Consortium Brute's Clasp
									["cost"] = { { "c", RESONANCE_CRYSTALS, 3900 } },
								}),
								i(245974, {	-- Consortium Magi's Cuffs
									["cost"] = { { "c", RESONANCE_CRYSTALS, 3900 } },
								}),
								i(245973, {	-- Consortium Scout's Armlets
									["cost"] = { { "c", RESONANCE_CRYSTALS, 3900 } },
								}),
								i(245972, {	-- Consortium Skirmisher's Armbands
									["cost"] = { { "c", RESONANCE_CRYSTALS, 3900 } },
								}),
							}, {	-- RENOWN 17 --
								i(245979, {	-- Arcano-Charged Wrench (COSMETIC!)
									["cost"] = { { "c", RESONANCE_CRYSTALS, 1150 } },
								}),
								i(245980, {	-- Inter-Phase Scoop (COSMETIC!)
									["cost"] = { { "c", RESONANCE_CRYSTALS, 1150 } },
								}),
								i(245981, {	-- K'areshi Multi-Tool (COSMETIC!)
									["cost"] = { { "c", RESONANCE_CRYSTALS, 1150 } },
								}),
							}, {	-- RENOWN 18 --
								i(243191, {	-- Ethereal Augment Rune
									["cost"] = { { "g", 1000000000 } },	-- 100k gold
								}),
							}, {	-- RENOWN 19 --
								i(237484, {	-- Terror of the Wastes (MOUNT!)
									["cost"] = { { "c", RESONANCE_CRYSTALS, 11375 } },
								}),
							}, {	-- RENOWN 20 --
							}, {	-- RENOWN 21 --
							}, {	-- RENOWN 22 --
							}, {	-- RENOWN 23 --
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
	header(HEADERS.Faction, FACTION_THE_KARESH_TRUST, {
		q(90725),	-- Daily(?) Lockout, triggered at the completion of quests starting with 'Stealing What is Ours' (90663)
	}),
}));
