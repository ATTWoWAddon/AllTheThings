-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.Professions, prof(BLACKSMITHING, bubbleDownSelf({ ["requireSkill"] = BLACKSMITHING }, {
	n(QUESTS, sharedData({
		["lvl"] = 40,
		["timeline"] = { REMOVED_4_0_3 },
	}, {
		q(5283, {	-- The Art of the Armorsmith [A]
			["description"] = "Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",
			["altQuests"] = {
				5301,	-- The Art of the Armorsmith [H]
				-- #if SEASON_OF_DISCOVERY
				82662,	-- The Way of the Weaponsmith [A]
				82665,	-- The Way of the Weaponsmith [H]
				-- #else
				5284,	-- The Way of the Weaponsmith [A]
				5302,	-- The Way of the Weaponsmith [H]
				-- #endif
			},
			["qg"] = 5164,	-- Grumnus Steelshaper
			["coord"] = { 50.2, 42.6, MAP.IRONFORGE },
			["cost"] = {
				{ "i", 7937, 4 },	-- Ornate Mithril Helm
				{ "i", 7936, 2 },	-- Ornate Mithril Boots
				{ "i", 7935, 1 },	-- Ornate Mithril Breastplate
			},
			["races"] = ALLIANCE_ONLY,
		}),
		q(5301, {	-- The Art of the Armorsmith [H]
			["description"] = "Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",
			["altQuests"] = {
				5283,	-- The Art of the Armorsmith [A]
				-- #if SEASON_OF_DISCOVERY
				82662,	-- The Way of the Weaponsmith [A]
				82665,	-- The Way of the Weaponsmith [H]
				-- #else
				5284,	-- The Way of the Weaponsmith [A]
				5302,	-- The Way of the Weaponsmith [H]
				-- #endif
			},
			["qg"] = 11177,	-- Okothos Ironrager
			["coord"] = { 79.8, 23.8, MAP.ORGRIMMAR },
			["cost"] = {
				{ "i", 7937, 4 },	-- Ornate Mithril Helm
				{ "i", 7936, 2 },	-- Ornate Mithril Boots
				{ "i", 7935, 1 },	-- Ornate Mithril Breastplate
			},
			["races"] = HORDE_ONLY,
		}),
		q(5284, {	-- The Way of the Weaponsmith [A]
			["description"] = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
			["altQuests"] = {
				5283,	-- The Art of the Armorsmith [A]
				5301,	-- The Art of the Armorsmith [H]
				5302,	-- The Way of the Weaponsmith [H]
			},
			["qg"] = 11146,	-- Ironus Coldsteel
			["coord"] = { 49.8, 45.0, MAP.IRONFORGE },
			["cost"] = {
				{ "i", 3853, 4 },	-- Moonsteel Broadsword
				{ "i", 3855, 4 },	-- Massive Iron Axe
				{ "i", 7941, 2 },	-- Heavy Mithril Axe
				{ "i", 7945, 2 },	-- Big Black Mace
			},
			["races"] = ALLIANCE_ONLY,
		}),
		q(5302, {	-- The Way of the Weaponsmith [H]
			["description"] = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
			["altQuests"] = {
				5283,	-- The Art of the Armorsmith [A]
				5301,	-- The Art of the Armorsmith [H]
				5284,	-- The Way of the Weaponsmith [A]
			},
			["qg"] = 11178,	-- Borgosh Corebender
			["coord"] = { 79.6, 23.6, MAP.ORGRIMMAR },
			["cost"] = {
				{ "i", 3853, 4 },	-- Moonsteel Broadsword
				{ "i", 3855, 4 },	-- Massive Iron Axe
				{ "i", 7941, 2 },	-- Heavy Mithril Axe
				{ "i", 7945, 2 },	-- Big Black Mace
			},
			["races"] = HORDE_ONLY,
		}),
	})),
})));
