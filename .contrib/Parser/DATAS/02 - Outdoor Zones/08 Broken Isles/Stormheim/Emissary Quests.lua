---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(STORMHEIM, {
			n(EMISSARY_QUESTS,   {
				q(42234, {	-- The Valarjar
					["provider"] = { "n", 106904 },	-- Valdemar Stormseeker <Valarjar Emissary>
					["isWorldQuest"] = true,
					["groups"] = {
						i(157824, {	-- Valarjar Cache
							["sym"] = {
								{"select", "itemID", 141592},	-- Technique: Codex of the Tranquil Mind [Rank 3] (RECIPE!)
								{"finalize"},	-- Push the processed items on to the finalized stack and ignore further queries on them.
								{"select", "mapID", STORMHEIM},
								{"find", "headerID", ZONE_REWARDS },
								{"pop"},	-- Push all of the groups contained to the processing layer.
							},
							["groups"] = {
								i(144310),	-- Formula: Enchant Neck - Mark of the Master [Rank 3] (RECIPE!)
							},
						}),
						un(REMOVED_FROM_GAME, i(154905, {	-- Valarjar Cache
							["sym"] = {{"select","itemID",
								157824,	-- Valarjar Cache
							}},
						})),
						un(REMOVED_FROM_GAME, i(151466, {	-- Valarjar Cache
							["sym"] = {{"select","itemID",
								157824,	-- Valarjar Cache
							}},
						})),
						un(REMOVED_FROM_GAME, i(146749, {	-- Valarjar Cache
							["sym"] = {{"select","itemID",
								157824,	-- Valarjar Cache
							}},
						})),
						un(REMOVED_FROM_GAME, i(137562, {	-- Valarjar Cache
							["sym"] = {{"select","itemID",
								157824,	-- Valarjar Cache
							}},
						})),
					},
				}),
				q(46746, bubbleDownSelf({ ["minReputation"] = { FACTION_VALAJAR, EXALTED }}, {		-- Supplies from the Valarjar
					["provider"] = { "n", 106904 },	-- Valdemar Stormseeker <Valarjar Emissary>
					["repeatable"] = true,
					["groups"] = {
						i(152106, {	-- Valarjar Strongbox
							i(151462, {	-- Spoiled Sample (QS!)
								["timeline"] = { ADDED_7_2_5, REMOVED_8_0_1 },
							}),
							i(147805),	-- Valarjar Stormwing (MOUNT!)
						}),
						un(REMOVED_FROM_GAME, i(146901, {	-- Valarjar Strongbox
							["sym"] = {
								{"select", "itemID", 152106},	-- Valarjar Strongbox
								{"pop"},
							},
						})),
					},
				})),
			}),
		}),
	}),
});
