-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	n(REWARDS, {
		currency(994, {		-- Seal of Tempered Fate
			["description"] = "Purchased for 300g from an NPC at your Ashran hub in Draenor.\n\n|cff3f48ccAlliance:|r Purchased from Fate-Twister Seress in Stormshield |cffffffff(51.6,  61.8)|r.\n\n|cff880015Horde:|r Purchased from Fate-Twister Tiklal in Warspear |cffffffff(64.6, 62.0)|r.\n",
			["coords"] = {
				{ 51.6, 61.8, STORMSHIELD },	-- Alliance
				{ 64.6, 62.0, 624 },	-- Horde, Warspear
			},
			["cost"] = { { "g", 3000000 } },	-- 300g
		}),
		currency(1129, {	-- Seal of Inevitable Fate
			["description"] = "Up to 3 per week obtained via quests in your faction's Ashran hub. Costs for the week increase each time you purchase a seal with the same currency.\n\n|cff3f48ccAlliance:|r Obtained from Fate-Twister Seress in Stormshield |cffffffff(51.6, 61.8)|r.\n\n|cff880015Horde:|r Obtained from Fate-Twister Tiklal in Warspear|cffffffff(64.6, 62.0)|r.\n\nApexis Crystals: 500 > 1,000 > 2,000\n\nGarrison Resources: 1,000 > 2,000 > 4,000\n\nGold: 500 > 1,000 > 2,000\n",
			["coords"] = {
				{ 51.6, 61.8, STORMSHIELD },	-- Alliance
				{ 64.6, 62.0, 624 },	-- Horde, Warspear
			},
		}),
		i(122618, {	-- Misprinted Draenic Coin
			["description"] = "From the first Heroic Dungeon completed per day while on certain quests",
			["timeline"] = { ADDED_6_1_0, REMOVED_9_0_1 },
		}),
	}),
})));
