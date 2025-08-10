---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(HIGHMOUNTAIN, {
			n(EMISSARY_QUESTS, {
				q(42233, {	-- Highmountain Tribes
					["provider"] = { "n", 106902 },	-- Ransa Greyfeather <Highmountain Emissary>
					["isWorldQuest"] = true,
					["groups"] = {
						i(157823, {	-- Highmountain Tribute
							["sym"] = {
								{"select", "itemID", 141592},	-- Technique: Codex of the Tranquil Mind [Rank 3] (RECIPE!)
								{"finalize"},	-- Push the processed items on to the finalized stack and ignore further queries on them.
								{"select", "mapID", HIGHMOUNTAIN},
								{"find", "headerID", ZONE_REWARDS },
								{"pop"},
							},
							["groups"] = {
								i(144313),	-- Formula: Enchant Neck - Mark of the Versatile [Rank 3] (RECIPE!)
							},
						}),
						un(REMOVED_FROM_GAME, i(137561, {	-- Highmountain Tribute
							["sym"] = {{"select","itemID",
								157823,	-- Highmountain Tribute
							}},
						})),
						un(REMOVED_FROM_GAME, i(154904, {	-- Highmountain Tribute
							["sym"] = {{"select","itemID",
								157823,	-- Highmountain Tribute
							}},
						})),
						un(REMOVED_FROM_GAME, i(146748, {	-- Highmountain Tribute
							["sym"] = {{"select","itemID",
								157823,	-- Highmountain Tribute
							}},
						})),
						un(REMOVED_FROM_GAME, i(151465, {	-- Highmountain Tribute
							["sym"] = {{"select","itemID",
								157823,	-- Highmountain Tribute
							}},
						})),
					},
				}),
				q(46743, bubbleDownSelf({ ["minReputation"] = { FACTION_HIGHMOUNTAIN_TRIBE, EXALTED }}, {	-- Supplies From Highmountain
					["provider"] = { "n", 106902 },	-- Ransa Greyfeather <Highmountain Emissary>
					["repeatable"] = true,
					["groups"] = {
						i(152104, {	-- Highmountain Supplies
							i(147807),	-- Highmountain Elderhorn (MOUNT!)
						}),
						un(REMOVED_FROM_GAME, i(146899, {	-- Highmountain Supplies
							["sym"] = {
								{"select", "itemID", 152104},	-- Highmountain Supplies
								{"pop"},
							},
						})),
					},
				})),
			}),
		}),
	}),
});
