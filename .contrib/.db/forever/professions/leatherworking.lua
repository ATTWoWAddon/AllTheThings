-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
profession(LEATHERWORKING, {
	n(ACHIEVEMENTS, {
		ach(62026, {	-- Artisan Leatherworker
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62025, {	-- Expert Leatherworker
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62024, {	-- Journeyman Leatherworker
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
	}),
	n(QUESTS, sharedData({
		lvl = 40,
		learnedAt = 225,
	}, {
		q(5141, {	-- Dragonscale Leatherworking [A]
			altQuests = {
				5144,	-- Elemental Leatherworking
				5143,	-- Tribal Leatherworking
			},
			qg = 7866,	-- Peter Galen
			coord = { 37.4, 65.4, MAP.AZSHARA },
			cost = {
				{ "i", 8203, 2 },	-- 2x Tough Scorpid Breastplate
				{ "i", 8204, 2 },	-- 2x Tough Scorpid Gloves
				{ "i", 8165, 10 },	-- 10x Worn Dragonscale
			},
			races = ALLIANCE_ONLY,
		}),
		q(5145, {	-- Dragonscale Leatherworking [H]
			altQuests = {
				5146,	-- Elemental Leatherworking
				5148,	-- Tribal Leatherworking
			},
			qg = 7867,	-- Thorkaf Dragoneye
			coord = { 62.6, 57.4, MAP.BADLANDS },
			cost = {
				{ "i", 8203, 2 },	-- 2x Tough Scorpid Breastplate
				{ "i", 8204, 2 },	-- 2x Tough Scorpid Gloves
				{ "i", 8165, 10 },	-- 10x Worn Dragonscale
			},
			races = HORDE_ONLY,
		}),
		q(5144, {	-- Elemental Leatherworking [A]
			altQuests = {
				5141,	-- Dragonscale Leatherworking
				5143,	-- Tribal Leatherworking
			},
			qg = 7868,	-- Sarah Tanner
			coord = { 63.6, 76.0, MAP.SEARING_GORGE },
			cost = {
				{ "i", 7081, 2 },	-- 2x Breath of Wind
				{ "i", 7075, 2 },	-- 2x Core of Earth
				{ "i", 7079, 2 },	-- 2x Globe of Water
				{ "i", 7077, 2 },	-- 2x Heart of Fire
			},
			races = ALLIANCE_ONLY,
		}),
		q(5146, {	-- Elemental Leatherworking [H]
			altQuests = {
				5145,	-- Dragonscale Leatherworking
				5148,	-- Tribal Leatherworking
			},
			qg = 7869,	-- Brumn Winterhoof
			coord = { 28.2, 45.0, MAP.ARATHI_HIGHLANDS },
			cost = {
				{ "i", 7081, 2 },	-- 2x Breath of Wind
				{ "i", 7075, 2 },	-- 2x Core of Earth
				{ "i", 7079, 2 },	-- 2x Globe of Water
				{ "i", 7077, 2 },	-- 2x Heart of Fire
			},
			races = HORDE_ONLY,
		}),
		q(5143, {	-- Tribal Leatherworking [A]
			sourceQuest = 2853,	-- Master of the Wild Leather [A]
			altQuests = {
				5141,	-- Dragonscale Leatherworking
				5144,	-- Elemental Leatherworking
			},
			qg = 7870,	-- Caryssia Moonhunter
			coord = { 89.4, 46.5, MAP.FERALAS },
			cost = {
				{ "i", 8214, 1 },	-- 1x Wild Leather Helmet
				{ "i", 8211, 1 },	-- 1x Wild Leather Vest
			},
			races = ALLIANCE_ONLY,
		}),
		q(5148, {	-- Tribal Leatherworking [H]
			sourceQuest = 2860,	-- Master of the Wild Leather [H]
			altQuests = {
				5145,	-- Dragonscale Leatherworking
				5146,	-- Elemental Leatherworking
			},
			qg = 7871,	-- Se'Jib
			coord = { 36.6, 34.2, MAP.STRANGLETHORN_VALE },
			cost = {
				{ "i", 8214, 1 },	-- 1x Wild Leather Helmet
				{ "i", 8211, 1 },	-- 1x Wild Leather Vest
			},
			races = HORDE_ONLY,
		}),
	})),
});
