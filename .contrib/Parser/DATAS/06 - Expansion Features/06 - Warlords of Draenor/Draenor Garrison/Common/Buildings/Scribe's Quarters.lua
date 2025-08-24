-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {
				garrisonBuilding(130, {	-- Scribe's quarters (rank 1: 95, rank 2: 129, rank 3: 130)
					n(QUESTS, {
						q(36647, {	-- Your First Inscription Work Order
							["provider"] = { "n", 77372 },	-- Eric Broadoak
							["races"] = ALLIANCE_ONLY
						}),
						q(37572, {	-- Your First Inscription Work Order
							["provider"] = { "n", 79829 },	-- Urgra
							["races"] = HORDE_ONLY,
						}),
					}),
					n(VENDORS, {
						n(77372, {	-- Eric Broadoak <Scribe>
							["races"] = ALLIANCE_ONLY,
							["sym"] = {
								{"select","npcID",87063},{"pop"},	-- Joao Calhandro <Inscription Recipes> (A)
								{"exclude", "itemID", 111923 },	-- Secret of Draenor Inscription
							},
							["groups"] = {
								i(111923, {	-- Secret of Draenor Inscription **Teaches laughing tarot, ocean tarot, savage tarot, war paints, card of omens, research warbinders ink, secrets of draenor inscription, Warbinder's ink
									i(120136),		-- Recipe: Secrets of Draenor Inscription
									recipe(169081),	-- War Paints
									recipe(167950),	-- Research: Warbinder's Ink
									recipe(175390),	-- Laughing Tarot
									recipe(175389),	-- Ocean Tarot
									recipe(175392),	-- Savage Tarot
									recipe(166669),	-- Card of Omens
									recipe(178497),	-- Warbinder's Ink
								}),
							},
						}),
						n(79829, {	-- Urgra <Scribe>
							["races"] = HORDE_ONLY,
							["sym"] = {
								{"select","npcID",87551},{"pop"},	-- Maru'sa <Inscription Recipes> (H)
								{"exclude", "itemID", 111923 },	-- Secret of Draenor Inscription
							},
							["groups"] = {
								i(111923, {	-- Secret of Draenor Inscription **Teaches laughing tarot, ocean tarot, savage tarot, war paints, card of omens, research warbinders ink, secrets of draenor inscription, Warbinder's ink
									i(120136),		-- Recipe: Secrets of Draenor Inscription
									recipe(169081),	-- War Paints
									recipe(167950),	-- Research: Warbinder's Ink
									recipe(175390),	-- Laughing Tarot
									recipe(175389),	-- Ocean Tarot
									recipe(175392),	-- Savage Tarot
									recipe(166669),	-- Card of Omens
									recipe(178497),	-- Warbinder's Ink
								}),
							},
						}),
					}),
				}),
			}),
		})),
	})
);
