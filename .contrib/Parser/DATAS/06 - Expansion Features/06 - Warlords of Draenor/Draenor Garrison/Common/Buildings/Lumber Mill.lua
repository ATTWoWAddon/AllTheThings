-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {
				garrisonBuilding(138, {	-- Lumber Mill (rank 1: 40, rank 2: 41, rank 3: 138)
					n(ACHIEVEMENTS, {
						a(ach(9078, {	-- Choppin' Even More Logs (Alliance) (100)
							a(title(259)),		-- the Commandojack
						})),
						h(ach(9080, {	-- Choppin' Even More Logs (Horde) (100)
							h(title(258)),		-- Timber Lord
						})),
						ach(9077, {		-- Choppin' Some More Logs (50)
							title(257),		-- Lumberjack
						}),
						-- not nesting these since they are neutral achievements within horde/alliance achievements... ugh
						ach(9076),		-- Choppin' Some Logs (10)
						ach(9429, {		-- Upgrading the Mill
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = {
								i(109255),		-- Lumber Mill, Level 3 [Blueprints]
								crit(25174),		-- Place 75 Work Order at the Lumber Mill
								crit(25733),		-- Legacy of the Ancients
								crit(25731, {		-- Reduction in Force
									["sourceQuests"] = {
										36448,
										36449,
									}
								}),
							},
						}),
					}),
					n(QUESTS, {
						q(36189, {	-- Easing into Lumberjacking
							["provider"] = { "n", 84248 },	-- Justin Timberlord <Work Orders>
							["races"] = ALLIANCE_ONLY,
						}),
						q(36137, {	-- Easing into Lumberjacking
							["provider"] = { "n", 84247 },	-- Lumber Lord Oktron <Work Orders>
							["races"] = HORDE_ONLY,
						}),
						q(36296, {	-- Phylarch the Evergreen
							["description"] = "Chance to spawn when you cut down trees with a rank 3 lumbermill in your garrison. After spawning 3 times, he will become your follower.",
							["groups"] = {
								follower(194),	-- Phylarch the Evergreen
							},
						}),
						q(36448, {	-- Reduction in Force
							["description"] = "Weldon Barov must be an active follower (ideally assigned to a building) to be available to give this quest.",
							["sourceQuest"] = 36429,	-- The Rise and Fall of Barov Industries: Weldon Barov
							["provider"] = { "n", 85413 },	-- Weldon Barov <Barov Industries>
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(116154),	-- Barov Lumberjack Caller
							},
						}),
						q(36449, {	-- Reduction in Force
							["description"] = "Weldon Barov must be an active follower (ideally assigned to a building) to be available to give this quest.",
							["sourceQuests"] = { 36427 },	-- The Rise and Fall of Barov Industries: Alexi Barov
							["provider"] = { "n", 85414 },	-- Alexi Barov <Barov Industries>
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(116154),	-- Barov Lumberjack Caller
							},
						}),
						q(36194, {	-- Sharper Blades, Bigger Timber
							["description"] = "Requires Lumber Mill level 2",
							["provider"] = { "n", 84248 },	-- Justin Timberlord <Work Orders>
							["races"] = ALLIANCE_ONLY,
						}),
						q(36142, {	-- Sharper Blades, Bigger Timber
							["description"] = "Requires Lumber Mill level 2",
							["provider"] = { "n", 84247 },	-- Lumber Lord Oktron <Work Orders>
							["races"] = HORDE_ONLY,
						}),
						q(36813, {	-- Subversive Infestation
							["description"] = "This Quest requires a Level 3 Lumber Mill as well as the Follower Phylarch the Green either active or attached to the Lumber Mill.",
							["provider"] = { "n", 84889 },	-- Phylarch the Evergreen
							["groups"] = {
								i(117398),	-- Everbloom Seed Pouch
							},
						}),
						q(36429, {	-- The Rise and Fall of Barov Industries: Weldon Barov
							["description"] = "Weldon Barov is found at various locations in Draenor. He is stuck under a log and you need the lumber mill to get him out of there.",
							["provider"] = { "n", 85378 },	-- Weldon Barov <Barov Industries>
							["coords"] = {
								{ 54.9, 79.7, SPIRES_OF_ARAK },
								{ 59.0, 38.4, DRAENOR_NAGRAND },
								{ 56.0, 70.0, DRAENOR_NAGRAND },
								{ 59.0, 29.0, TALADOR },
								{ 73.0, 28.0, TALADOR },
								{ 73.7, 64.0, TALADOR },
								{ 46.0, 31.5, DRAENOR_SHADOWMOON_VALLEY },
								{ 45.5, 66.3, GORGROND },
							},
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								follower(195),	-- Weldon Barov / Alexi Barov
							},
						}),
						q(36427, {	-- The Rise and Fall of Barov Industries: Alexi Barov
							["description"] = "Alexi Barov can be found in multiple zones under a Fallen Tree. A lumber mill is required to rescue him.",
							["provider"] = { "n", 85379 },	-- Alexi Barov <Barov Industries>
							["coords"] = {
								{ 36.0, 48.3, DRAENOR_NAGRAND },
								{ 56.5, 70.1, DRAENOR_NAGRAND },
								{ 59.0, 38.5, DRAENOR_NAGRAND },
								{ 72.2, 29.1, DRAENOR_NAGRAND },
								{ 84.4, 54.1, DRAENOR_NAGRAND },
								{ 43.5, 66.4, GORGROND },
								{ 51.5, 45.0, GORGROND },
								{ 51.3, 61.9, GORGROND },
								{ 53.6, 74.9, GORGROND },
								{ 61.3, 39.3, GORGROND },
								{ 36.6, 43.2, SPIRES_OF_ARAK },
								{ 47.9, 72.4, SPIRES_OF_ARAK },
								{ 55.2, 55.1, SPIRES_OF_ARAK },
								{ 55.2, 79.5, SPIRES_OF_ARAK },
								{ 62.4, 69.5, SPIRES_OF_ARAK },
								{ 54.3, 56.2, TALADOR },
								{ 59.1, 30.0, TALADOR },
								{ 70.1, 54.2, TALADOR },
								{ 73.8, 28.2, TALADOR },
								{ 73.6, 64.0, TALADOR },
							},
							["races"] = HORDE_ONLY,
							["groups"] = {
								follower(195),	-- Weldon Barov / Alexi Barov
							},
						}),
						q(36195, {	-- Tree-i-cide
							["description"] = "This Quest requires a Level 3 Lumber Mill.",
							["provider"] = { "n", 84248 },	-- Justin Timberlord <Work Orders>
							["races"] = ALLIANCE_ONLY,
						}),
						q(36182, {	-- Tree-i-cide
							["description"] = "This Quest requires a Level 3 Lumber Mill.",
							["provider"] = { "n", 84247 },	-- Lumber Lord Oktron <Work Orders>
							["races"] = HORDE_ONLY,
						}),
						q(36192, {	-- Turning Timber into Profit
							["sourceQuest"] = 36189,	-- Easing into Lumberjacking
							["provider"] = { "n", 84248 },	-- Justin Timberlord <Work Orders>
							["races"] = ALLIANCE_ONLY,
						}),
						q(36138, {	-- Turning Timber into Profit
							["sourceQuest"] = 36137,	-- Easing into Lumberjacking
							["provider"] = { "n", 84247 },	-- Lumber Lord Oktron <Work Orders>
							["races"] = HORDE_ONLY,
						}),
						n(85199, {	-- Petrified Ancient
							["description"] = "These will appear as nodes on your mini-map as trees do after you have built your Level 2 Lumber Mill.",
							["groups"] = {
								q(36385, {	-- Legacy of the Ancients
									["provider"] = { "i", 115467 },	-- Barkskin Tome
									["groups"] = {
										i(115506),	-- Treessassin's Guise (TOY!)
									},
								}),
							},
						}),
					}),
				}),
			}),
		})),
	})
);

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	n(GARRISONS, {
		n(BUILDINGS, {	-- Buildings
			garrisonBuilding(138, {	-- Lumber Mill
				q(36294),	-- Phylarch the Evergreen A - Lumber Mill first attack
				q(36295),	-- Phylarch the Evergreen B - Lumber Mill second attack
			}),
		}),
	}),
})));
