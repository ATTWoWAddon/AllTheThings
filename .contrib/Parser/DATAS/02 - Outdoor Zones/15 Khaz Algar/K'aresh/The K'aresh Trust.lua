---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		header(HEADERS.Faction, FACTION_THE_KARESH_TRUST, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 } }, {
			faction(FACTION_THE_KARESH_TRUST),
			n(ACHIEVEMENTS, {
				ach(42022, {	-- A Trusted Partner
					["minReputation"] = { FACTION_THE_KARESH_TRUST, 20 },	-- The K'aresh Trust Renown 20
					["timeline"] = { ADDED_11_2_0 },
				}),
			}),
			n(QUESTS, sharedData({
				["provider"] = { "n", 235252 },	-- Om'sirik <Renown Quartermaster>
				["coord"] = { 40.6, 29.2, KARESH_TAZAVESH },
			}, bubbleDownRep(FACTION_THE_KARESH_TRUST, {
				{		-- RENOWN 1 --
				}, {	-- RENOWN 2 --
				}, {	-- RENOWN 3 --
				}, {	-- RENOWN 4 --
					q(90630),	-- A Small Bundle of Crystals
					q(90631),	-- Weathered Crests
				}, {	-- RENOWN 5 --
				}, {	-- RENOWN 6 --
					q(90632),	-- Valorstones
				}, {	-- RENOWN 7 --
				}, {	-- RENOWN 8 --
					q(90634),	-- A Small Bundle of Crystals
					q(90633),	-- Weathered Crests
				}, {	-- RENOWN 9 --
					q(90635),	-- Valorstones
				}, {	-- RENOWN 10 --
					i(245968),	-- Tabard of the Trust
				}, {	-- RENOWN 11 --
				}, {	-- RENOWN 12 --
				}, {	-- RENOWN 13 --
				}, {	-- RENOWN 14 --
				}, {	-- RENOWN 15 --
				}, {	-- RENOWN 16 --
				}, {	-- RENOWN 17 --
				}, {	-- RENOWN 18 --
				}, {	-- RENOWN 19 --
				}, {	-- RENOWN 20 --
				}, {	-- RENOWN 21 --
				}, {	-- RENOWN 22 --
				}, {	-- RENOWN 23 --
				}, {	-- RENOWN 24 --
				}, {	-- RENOWN 25 --
					------ Paragon ------
				},
			}))),
			n(QUESTS, {
				q(90663, {	-- Stealing What is Ours
					["provider"] = { "n", 238016 },	-- Ba'eth
					["coord"] = { 57.6, 58.1, KARESH_TAZAVESH },
					["minReputation"] = { FACTION_THE_KARESH_TRUST, 9 },	-- The K'aresh Trust Renown 9
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
					["minReputation"] = { FACTION_THE_KARESH_TRUST, 9 },	-- The K'aresh Trust Renown 9
				}),
			}),
			n(VENDORS, {
				n(235252, {	-- Om'sirik <Renown Quartermaster>
					["coord"] = { 40.6, 29.2, KARESH_TAZAVESH },
					["groups"] = bubbleDownRep(FACTION_THE_KARESH_TRUST, {
						{		-- RENOWN 1 --
						}, {	-- RENOWN 2 --
						}, {	-- RENOWN 3 --
						}, {	-- RENOWN 4 --
						}, {	-- RENOWN 5 --
							i(239487, {	-- Pattern: Pure Dexterous Fiber (RECIPE!)
								["cost"] = {{"i", ARTISANS_ACUITY, 150}},
							}),
							i(239485, {	-- Pattern: Pure Energizing Fiber (RECIPE!)
								["cost"] = {{"i", ARTISANS_ACUITY, 150}},
							}),
							i(239486, {	-- Pattern: Pure Chronomatic Fiber (RECIPE!)
								["cost"] = {{"i", ARTISANS_ACUITY, 150}},
							}),
							i(239488, {	-- Pattern: Pure Precise Fiber (RECIPE!)
								["cost"] = {{"i", ARTISANS_ACUITY, 150}},
							}),
							i(244043, {	-- Technique: Contract: The K'aresh Trust (RECIPE!)
								["cost"] = {{"i", ARTISANS_ACUITY, 150}},
							}),
							i(244334, {	-- Technique: Vantus Rune: Manaforge Omega (RECIPE!)
								["cost"] = {{"i", ARTISANS_ACUITY, 150}},
							}),
							i(244841, {	-- Recipe: Invigorating Healing Potion (RECIPE!)
								["cost"] = {{"i", ARTISANS_ACUITY, 150}},
							}),
							i(248550, {	-- Recipe: Umbral Essentia (RECIPE!)
								["cost"] = {{"i", ARTISANS_ACUITY, 150}},
							}),
						}, {	-- RENOWN 6 --
							i(245967, {	-- Shawl of the Trust (COSMETIC!)
								["cost"] = {{"c", RESONANCE_CRYSTALS, 1625}},
							}),
						}, {	-- RENOWN 7 --
							i(245975, {	-- Consortium Brute's Chestguard
								["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
							}),
							i(245978, {	-- Consortium Magi's Robes
								["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
							}),
							i(245977, {	-- Consortium Scout's Jacket
								["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
							}),
							i(245976, {	-- Consortium Skirmisher's Cuirass
								["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
							}),
						}, {	-- RENOWN 8 --
						}, {	-- RENOWN 9 --
						}, {	-- RENOWN 10 --
						}, {	-- RENOWN 11 --
						}, {	-- RENOWN 12 --
							i(235865, {	-- Ethereal Tome of Alchemy Knowledge (CI!)
								["cost"] = {{"i", ARTISANS_ACUITY, 75}},
								["requireSkill"] = ALCHEMY,
							}),
							i(235864, {	-- Ethereal Tome of Blacksmithing Knowledge (CI!)
								["cost"] = {{"i", ARTISANS_ACUITY, 75}},
								["requireSkill"] = BLACKSMITHING,
							}),
							i(235863, {	-- Ethereal Tome of Enchanting Knowledge (CI!)
								["cost"] = {{"i", ARTISANS_ACUITY, 75}},
								["requireSkill"] = ENCHANTING,
							}),
							i(235862, {	-- Ethereal Tome of Engineering Knowledge (CI!)
								["cost"] = {{"i", ARTISANS_ACUITY, 75}},
								["requireSkill"] = ENGINEERING,
							}),
							i(235861, {	-- Ethereal Tome of Herbalism Knowledge (CI!)
								["cost"] = {{"i", ARTISANS_ACUITY, 75}},
								["requireSkill"] = HERBALISM,
							}),
							i(235860, {	-- Ethereal Tome of Inscription Knowledge (CI!)
								["cost"] = {{"i", ARTISANS_ACUITY, 50}},
								["requireSkill"] = INSCRIPTION,
							}),
							i(235859, {	-- Ethereal Tome of Jewelcrafting Knowledge (CI!)
								["cost"] = {{"i", ARTISANS_ACUITY, 75}},
								["requireSkill"] = LEATHERWORKING,
							}),
							i(235858, {	-- Ethereal Tome of Leatherworking Knowledge (CI!)
								["cost"] = {{"i", ARTISANS_ACUITY, 75}},
								["requireSkill"] = LEATHERWORKING,
							}),
							i(235857, {	-- Ethereal Tome of Mining Knowledge (CI!)
								["cost"] = {{"i", ARTISANS_ACUITY, 75}},
								["requireSkill"] = MINING,
							}),
							i(235856, {	-- Ethereal Tome of Skinning Knowledge (CI!)
								["cost"] = {{"i", ARTISANS_ACUITY, 75}},
								["requireSkill"] = SKINNING,
							}),
							i(235855, {	-- Ethereal Tome of Tailoring Knowledge (CI!)
								["cost"] = {{"i", ARTISANS_ACUITY, 75}},
								["requireSkill"] = TAILORING,
							}),
						}, {	-- RENOWN 13 --
							i(245969, {	-- Mantle of the Trust (COSMETIC!)
								["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
							}),
						}, {	-- RENOWN 14 --
							i(245693, {	-- K'areshi Ribbon Stash
								["cost"] = {{"c", RESONANCE_CRYSTALS, 2250}},
							}),
						}, {	-- RENOWN 15 --
							i(242729, {	-- Ruby Void Creeper (MOUNT!)
								["cost"] = {{"c", RESONANCE_CRYSTALS, 8125}},
							}),
						}, {	-- RENOWN 16 --
							i(245971, {	-- Consortium Brute's Clasp
								["cost"] = {{"c", RESONANCE_CRYSTALS, 3900}},
							}),
							i(245974, {	-- Consortium Magi's Cuffs
								["cost"] = {{"c", RESONANCE_CRYSTALS, 3900}},
							}),
							i(245973, {	-- Consortium Scout's Armlets
								["cost"] = {{"c", RESONANCE_CRYSTALS, 3900}},
							}),
							i(245972, {	-- Consortium Skirmisher's Armbands
								["cost"] = {{"c", RESONANCE_CRYSTALS, 3900}},
							}),
						}, {	-- RENOWN 17 --
							i(245979, {	-- Arcano-Charged Wrench (COSMETIC!)
								["cost"] = {{"c", RESONANCE_CRYSTALS, 1150}},
							}),
							i(245980, {	-- Inter-Phase Scoop (COSMETIC!)
								["cost"] = {{"c", RESONANCE_CRYSTALS, 1150}},
							}),
							i(245981, {	-- K'areshi Multi-Tool (COSMETIC!)
								["cost"] = {{"c", RESONANCE_CRYSTALS, 1150}},
							}),
						}, {	-- RENOWN 18 --
							i(243191, {	-- Ethereal Augment Rune
								["cost"] = { { "g", 1000000000 } },	-- 100k gold
							}),
						}, {	-- RENOWN 19 --
							i(237484, {	-- Terror of the Wastes (MOUNT!)
								["cost"] = {{"c", RESONANCE_CRYSTALS, 11375}},
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
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KHAZ_ALGAR, {
		m(KARESH, {
			n(QUESTS, {	-- Exo Note to Senior Contrib(s): I think this structure should be different but dunno how to structure it. Please fix and remove comment.
				q(90725),	-- Triggered at the completion of 'Stealing What is Ours' (90663) and 'Win-Win Situation' (90729)
			}),
		}),
	}),
})));