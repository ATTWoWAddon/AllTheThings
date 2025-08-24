---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(BROKEN_SHORE, {
			n(EMISSARY_QUESTS, {
				q(48641, {	-- Armies of Legionfall
					["provider"] = { "n", 120414 },	-- Captain Ruysantos
					["coord"] = { 42.2, 58.8, BROKEN_SHORE },
					["isWorldQuest"] = true,
					["groups"] = {
						i(157830, {	-- Legionfall Spoils
							["sym"] = {{"select","itemID",
								147216,	-- Dauntless Hood
								147221,	-- Dauntless Choker
								147218,	-- Dauntless Spaulders
								147222,	-- Dauntless Cloak
								147213,	-- Dauntless Tunic
								147212,	-- Dauntless Bracers
								147215,	-- Dauntless Gauntlets
								147219,	-- Dauntless Girdle
								147217,	-- Dauntless Leggings
								147214,	-- Dauntless Treads
								147220,	-- Dauntless Ring
								147223,	-- Dauntless Trinket
							}},
						}),
						un(REMOVED_FROM_GAME, i(154910, {	-- Legionfall Spoils
							["sym"] = {{"select","itemID",
								157830,	-- Legionfall Spoils
							}},
						})),
						un(REMOVED_FROM_GAME, i(152649, {	-- Legionfall Spoils
							["sym"] = {{"select","itemID",
								157830,	-- Legionfall Spoils
							}},
						})),
					},
				}),
				q(46777, bubbleDownSelf({ ["minReputation"] = { FACTION_ARMIES_OF_LEGIONFALL, EXALTED }}, {	-- The Bounties of Legionfall
					["provider"] = { "n", 120414 },	-- Captain Ruysantos
					["coord"] = { 42.2, 58.8, BROKEN_SHORE },
					["repeatable"] = true,
					["groups"] = {
						i(152108, {	-- Legionfall Chest
							i(147841),	-- Orphaned Felbat (PET!)
						}),
						un(REMOVED_FROM_GAME, i(147361, {	-- Legionfall Chest
							["sym"] = {
								{"select", "itemID", 152108},	-- Legionfall Chest
								{"pop"},
							},
						})),
					},
				})),
			}),
		}),
	}),
});
