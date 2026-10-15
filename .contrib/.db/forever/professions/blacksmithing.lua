-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
profession(BLACKSMITHING, {
	n(ACHIEVEMENTS, {
		ach(62017, {	-- Artisan Blacksmith
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62016, {	-- Expert Blacksmith
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62015, {	-- Journeyman Blacksmith
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
	}),
	n(QUESTS, sharedData({
		lvl = 40,
		learnedAt = 225,
	}, {
		q(5283, {	-- The Art of the Armorsmith [A]
			description = "Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",
			altQuests = {
				5301,	-- The Art of the Armorsmith [H]
				5284,	-- The Way of the Weaponsmith [A]
				5302,	-- The Way of the Weaponsmith [H]
			},
			qg = 5164,	-- Grumnus Steelshaper
			coord = { 50.2, 42.6, MAP.IRONFORGE },
			cost = {
				{ "i", 7936, 2 },	-- 2x Ornate Mithril Boots
				{ "i", 7935, 1 },	-- 1x Ornate Mithril Breastplate
				{ "i", 7937, 4 },	-- 4x Ornate Mithril Helm
			},
			races = ALLIANCE_ONLY,
		}),
		q(5301, {	-- The Art of the Armorsmith [H]
			description = "Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",
			altQuests = {
				5283,	-- The Art of the Armorsmith [A]
				5284,	-- The Way of the Weaponsmith [A]
				5302,	-- The Way of the Weaponsmith [H]
			},
			qg = 11177,	-- Okothos Ironrager
			coord = { 79.8, 23.8, MAP.ORGRIMMAR },
			cost = {
				{ "i", 7936, 2 },	-- 2x Ornate Mithril Boots
				{ "i", 7935, 1 },	-- 1x Ornate Mithril Breastplate
				{ "i", 7937, 4 },	-- 4x Ornate Mithril Helm
			},
			races = HORDE_ONLY,
		}),
		q(5284, {	-- The Way of the Weaponsmith [A]
			description = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
			altQuests = {
				5283,	-- The Art of the Armorsmith [A]
				5301,	-- The Art of the Armorsmith [H]
				5302,	-- The Way of the Weaponsmith [H]
			},
			qg = 11146,	-- Ironus Coldsteel
			coord = { 49.8, 45.0, MAP.IRONFORGE },
			cost = {
				{ "i", 7945, 2 },	-- 2x Big Black Mace
				{ "i", 7941, 2 },	-- 2x Heavy Mithril Axe
				{ "i", 3855, 4 },	-- 4x Massive Iron Axe
				{ "i", 3853, 4 },	-- 4x Moonsteel Broadsword
			},
			races = ALLIANCE_ONLY,
		}),
		q(5302, {	-- The Way of the Weaponsmith [H]
			description = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
			altQuests = {
				5283,	-- The Art of the Armorsmith [A]
				5301,	-- The Art of the Armorsmith [H]
				5284,	-- The Way of the Weaponsmith [A]
			},
			qg = 11178,	-- Borgosh Corebender
			coord = { 79.6, 23.6, MAP.ORGRIMMAR },
			cost = {
				{ "i", 7945, 2 },	-- 2x Big Black Mace
				{ "i", 7941, 2 },	-- 2x Heavy Mithril Axe
				{ "i", 3855, 4 },	-- 4x Massive Iron Axe
				{ "i", 3853, 4 },	-- 4x Moonsteel Broadsword
			},
			races = HORDE_ONLY,
		}),
	})),
});
