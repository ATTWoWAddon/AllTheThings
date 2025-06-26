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
				}, {	-- RENOWN 9 --
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
			n(VENDORS, {
				n(235252, {	-- Om'sirik <Renown Quartermaster>
					["coord"] = { 40.6, 29.2, KARESH_TAZAVESH },
					["g"] = bubbleDownRep(FACTION_THE_KARESH_TRUST, {
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
							i(235861, {	-- Ethereal Tome of Herbalism Knowledge (CI!)
								["cost"] = {{"i", ARTISANS_ACUITY, 75}},
								["requireSkill"] = HERBALISM,
							}),
							i(235860, {	-- Ethereal Tome of Inscription Knowledge (CI!)
								["cost"] = {{"i", ARTISANS_ACUITY, 50}},
								["requireSkill"] = INSCRIPTION,
							}),
							i(235857, {	-- Ethereal Tome of Mining Knowledge (CI!)
								["cost"] = {{"i", ARTISANS_ACUITY, 75}},
								["requireSkill"] = TAILORING,
							}),
						}, {	-- RENOWN 13 --
							i(245969, {	-- Mantle of the Trust (COSMETIC!)
								["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
							}),
						}, {	-- RENOWN 14 --
						}, {	-- RENOWN 15 --
							i(242729, {	-- Ruby Void Creeper (MOUNT!)
								--["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},	-- No value at the moment. 23.06.2025. -Exo
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
