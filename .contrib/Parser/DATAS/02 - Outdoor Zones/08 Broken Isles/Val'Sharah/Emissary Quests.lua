---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(VALSHARAH, {
			n(EMISSARY_QUESTS, {
				q(42170, {	-- The Dreamweavers
					["provider"] = { "n", 106901 },	-- Sylvia Hartshorn <Dreamweaver Emissary>
					["isWorldQuest"] = true,
					["groups"] = {
						i(157822, {	-- Dreamweaver Provisions
							["sym"] = {
								{"select", "itemID", 141592},	-- Technique: Codex of the Tranquil Mind [Rank 3] (RECIPE!)
								{"finalize"},	-- Push the processed items on to the finalized stack and ignore further queries on them.
								{"select", "mapID", VALSHARAH},
								{"find", "headerID", ZONE_REWARDS },
								{"pop"},	-- Push all of the groups contained to the processing layer.
							},
							["groups"] = {
								i(144319),	-- Formula: Enchant Neck - Mark of the Deadly [Rank 3] (RECIPE!)
								i(130167),	-- Thistleleaf Adventurer (PET!)
							},
						}),
						un(REMOVED_FROM_GAME, i(154903, {	-- Dreamweaver Provisions
							["sym"] = {{"select","itemID",
								157822,	-- Dreamweaver Provisions
							}},
						})),
						un(REMOVED_FROM_GAME, i(151464, {	-- Dreamweaver Provisions
							["sym"] = {{"select","itemID",
								157822,	-- Dreamweaver Provisions
							}},
						})),
						un(REMOVED_FROM_GAME, i(146747, {	-- Dreamweaver Provisions
							["sym"] = {{"select","itemID",
								157822,	-- Dreamweaver Provisions
							}},
						})),
						un(REMOVED_FROM_GAME, i(137560, {	-- Dreamweaver Provisions
							["sym"] = {{"select","itemID",
								157822,	-- Dreamweaver Provisions
							}},
						})),
					},
				}),
				q(46747, bubbleDownSelf({ ["minReputation"] = { FACTION_THE_DREAMWEAVERS, EXALTED }}, {		-- Supplies From the Dreamweavers
					["provider"] = { "n", 106901 },	-- Sylvia Hartshorn <Dreamweaver Emissary>
					["repeatable"] = true,
					["groups"] = {
						i(152103, {	-- Dreamweaver Cache
							i(147804),	-- Wild Dreamrunner (MOUNT!)
							i(151462, {	-- Spoiled Sample (QS!)
								["timeline"] = { ADDED_7_2_5, REMOVED_8_0_1 },
							}),
						}),
						un(REMOVED_FROM_GAME, i(146898, {	-- Dreamweaver Cache
							["sym"] = {
								{"select", "itemID", 152103},	-- Dreamweaver Cache
								{"pop"},
							},
						})),
					},
				})),
			}),
		}),
	}),
});
