---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local THALASSIAN_TOKEN_OF_MERIT_S1 = 258556;

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.SILVERMOON_CITY, {
		n(VENDORS, {
			n(259722, {	-- Andra <Thalassian Finery>
				["coord"] = { 41.7, 66.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = bubbleDownFiltered({
					["cost"] = { { "i", FINERY_FUNDS, 1 } },
				},FILTERFUNC_itemID,{
					iensemble(265024),	-- Ensemble: Augur's Azure Garments
					iensemble(265022),	-- Ensemble: Augur's Crimson Garments
					iensemble(265026),	-- Ensemble: Augur's Lucent Garments
					iensemble(265025),	-- Ensemble: Augur's Umbral Garments
					iensemble(265023),	-- Ensemble: Augur's Viridian Garments
					iensemble(265019),	-- Ensemble: Courtier's Azure Vestments
					iensemble(264883),	-- Ensemble: Courtier's Crimson Vestments
					iensemble(265018),	-- Ensemble: Courtier's Viridian Vestments
					iensemble(265020),	-- Ensemble: Courtier's Umbral Vestments
					iensemble(265021),	-- Ensemble: Courtier's Lucent Vestments
				}),
			}),
			n(252915, {	-- Corlen Hordralin <Master Painter>
				["coord"] = { 44.2, 62.8, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = sharedData({
					["cost"] = { { "g", 50000000 } },		-- 5,000g
					-- Requires completion of 12.0 patch meta achievement [PH]. TODO: Which achievement?
				}, {
					i(253604),	-- "A Bridge Over Calm Waters" Painting (DECOR!)
					i(253615),	-- "Autumnal Eversong" Painting (DECOR!)
					i(253614),	-- "Brunch and a Book" Painting (DECOR!)
					i(253607),	-- "Eversong in Bloom" Painting (DECOR!)
					i(253605),	-- "Family Portrait" Painting (DECOR!)
					i(253616),	-- "Isolation" Painting (DECOR!)
					i(253608),	-- "Nature's Strength" Painting (DECOR!)
					i(253617),	-- "Reclamation" Painting (DECOR!)
					i(253620),	-- "River's Protectors" Painting (DECOR!)
					i(253602),	-- "Silvermoon in Summer" Painting (DECOR!)
					i(253619),	-- "The Fallen Protectors" Painting (DECOR!)
					i(253603),	-- "The Last Day of the Semester" Painting (DECOR!)
					i(253618),	-- "The Light Blooms" Painting (DECOR!)
				}),
			}),
			n(252915, {	-- Corlen Hordralin <Master Painter>
				["description"] = "This Vendor sells Decor only to players that have purchased 'Midnight Epic Edition' upgrade.",
				["coord"] = { 50.8, 56.6, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					i(252668, {	-- "The Harbinger" Painting (DECOR!)
						["cost"] = { { "g", 100000000 } },		-- 10,000g
					}),
					i(252666, {	-- "The High Exarch" Painting (DECOR!)
						["cost"] = { { "g", 100000000 } },		-- 10,000g
					}),
					i(252667, {	-- "The Ranger of the Void" Painting (DECOR!)
						["cost"] = { { "g", 100000000 } },		-- 10,000g
					}),
					i(252669, {	-- "The Redeemer" Painting (DECOR!)
						["cost"] = { { "g", 100000000 } },		-- 10,000g
					}),
					i(244668, {	-- Light-Infused Fountain (DECOR!)
						["cost"] = { { "g", 250000000 } },		-- 25,000g
					}),
					i(246414, {	-- Light-Infused Rotunda (DECOR!)
						["cost"] = { { "g", 250000000 } },		-- 25,000g
					}),
					i(245939, {	-- Void-Corrupted Fountain (DECOR!)
						["cost"] = { { "g", 250000000 } },		-- 25,000g
					}),
					i(248809, {	-- Void-Corrupted Rotunda (DECOR!)
						["cost"] = { { "g", 250000000 } },		-- 25,000g
					}),
				},
			}),
			n(239670, {	-- Vaultkeeper Elysa <Token of Merit Exchange>
				["coord"] = { 50.4, 64.9, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					-- All seasons
					i(263934, {	-- Chest of Gold
						["cost"] = { { "i", THALASSIAN_TOKEN_OF_MERIT_S1, 2 } },
					}),
					-- Season 1
					i(246752, {	-- Celebratory Pack of Hero Dawncrests
						["cost"] = { { "i", THALASSIAN_TOKEN_OF_MERIT_S1, 2 } },
					}),
					i(263897, {	-- Radiant Jewelbinder
						["cost"] = { { "i", THALASSIAN_TOKEN_OF_MERIT_S1, 6 } },
					}),
					i(232875, {	-- Spark of Radiance
						["cost"] = { { "i", THALASSIAN_TOKEN_OF_MERIT_S1, 6 } },
					}),
					i(246751, {	-- Triumphant Satchel of Champion Dawncrests
						["cost"] = { { "i", THALASSIAN_TOKEN_OF_MERIT_S1, 1 } },
					}),
					-- Season 2
					-- Season 3
				},
			}),
		}),
	}),
}));
