-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	n(QUESTS, sharedData({
		["providers"] = {
			{ "n", 143560 },	-- Marshal Gabriel
			{ "n", 143555 },	-- Xander Silberman
		},
		["coords"] = {
			{ 56.4, 25.8, BORALUS },
			{ 51.6, 58.2, ZANDALAR },
		},
		["isWeekly"] = true,
	}, {
		q(53457,	-- Quartermaster's Bounty
		bubbleDownSelf({["timeline"] = { ADDED_8_0_1, REMOVED_8_2_0 }},{
			i(163827),	-- Quartermaster's Coin (QI!)
		})),
		q(57274,	-- Quartermaster's Bounty
		bubbleDownSelf({["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 }},{
			i(171198),	-- Quartermaster's Prize (QI!)
		})),
		q(58279,	-- Quartermaster's Bounty
		bubbleDownSelf({["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 }},{
			i(172519),	-- Quartermaster's Note (QI!)
		})),
	})),
	filter(REAGENTS, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_8_1_0 } }, {
		i(159570),	-- Battleborn Sigil Dread Combatant
		i(164580),	-- Battleborn Sigil Dread Challenger
		i(164581),	-- Battleborn Sigil Dread Rival
		i(164582),	-- Battleborn Sigil Dread Duelist
		i(164583),	-- Battleborn Sigil Dread Elite
		i(155622),	-- Warlord's Trophy Dread Combatant
		i(164584),	-- Warlord's Trophy Dread Challenger
		i(164585),	-- Warlord's Trophy Dread Rival
		i(164586),	-- Warlord's Trophy Dread Duelist
		i(164587),	-- Warlord's Trophy Dread Elite
	})),
	filter(REAGENTS, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 } }, {
		i(164951),	-- Battleborn Sigil Sinister Combatant
		i(164952),	-- Battleborn Sigil Sinister Challenger
		i(164953),	-- Battleborn Sigil Sinister Rival
		i(164954),	-- Battleborn Sigil Sinister Duelist
		i(164955),	-- Battleborn Sigil Sinister Elite
		i(164950),	-- Warlord's Trophy Sinister Combatant
		i(164956),	-- Warlord's Trophy Sinister Challenger
		i(164957),	-- Warlord's Trophy Sinister Rival
		i(164958),	-- Warlord's Trophy Sinister Duelist
		i(164959),	-- Warlord's Trophy Sinister Elite
	})),
	filter(REAGENTS, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 } }, {
		i(168316),	-- Battleborn Sigil Notorious Combatant
		i(171090),	-- Battleborn Sigil Notorious Challenger
		i(171091),	-- Battleborn Sigil Notorious Rival
		i(171092),	-- Battleborn Sigil Notorious Duelist
		i(171093),	-- Battleborn Sigil Notorious Elite
		i(171095),	-- Warlord's Trophy Notorious Combatant
		i(171096),	-- Warlord's Trophy Notorious Challenger
		i(171097),	-- Warlord's Trophy Notorious Rival
		i(171098),	-- Warlord's Trophy Notorious Duelist
		i(171099),	-- Warlord's Trophy Notorious Elite
	})),
	filter(REAGENTS, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 } }, {
		i(172890),	-- Battleborn Sigil Corrupted Combatant
		i(172891),	-- Battleborn Sigil Corrupted Challenger
		i(172892),	-- Battleborn Sigil Corrupted Rival
		i(172893),	-- Battleborn Sigil Corrupted Duelist
		i(172894),	-- Battleborn Sigil Corrupted Elite
		i(172895),	-- Warlord's Trophy Corrupted Combatant
		i(172896),	-- Warlord's Trophy Corrupted Challenger
		i(172897),	-- Warlord's Trophy Corrupted Rival
		i(172898),	-- Warlord's Trophy Corrupted Duelist
		i(172899),	-- Warlord's Trophy Corrupted Elite
	})),
}))));
