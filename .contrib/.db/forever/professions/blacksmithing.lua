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
				{ "i", 7937, 4 },	-- Ornate Mithril Helm
				{ "i", 7936, 2 },	-- Ornate Mithril Boots
				{ "i", 7935, 1 },	-- Ornate Mithril Breastplate
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
				{ "i", 7937, 4 },	-- Ornate Mithril Helm
				{ "i", 7936, 2 },	-- Ornate Mithril Boots
				{ "i", 7935, 1 },	-- Ornate Mithril Breastplate
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
				{ "i", 3853, 4 },	-- Moonsteel Broadsword
				{ "i", 3855, 4 },	-- Massive Iron Axe
				{ "i", 7941, 2 },	-- Heavy Mithril Axe
				{ "i", 7945, 2 },	-- Big Black Mace
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
				{ "i", 3853, 4 },	-- Moonsteel Broadsword
				{ "i", 3855, 4 },	-- Massive Iron Axe
				{ "i", 7941, 2 },	-- Heavy Mithril Axe
				{ "i", 7945, 2 },	-- Big Black Mace
			},
			races = HORDE_ONLY,
		}),
	})),
	header(HEADERS.SpellWithRank, 2018, {	-- Blacksmithing (Apprentice)
		symselector = SymSelector.BLACKSMITHING_APPRENTICE,
		groups = {
			r(2018, {	-- Blacksmithing (Apprentice)
				lvl = 5,
				rank = 1,
			}),
			n(ARMOR, {
				r(2663),	-- Copper Bracers
				r(2661),	-- Copper Chain Belt
				r(3319),	-- Copper Chain Boots
				r(2662),	-- Copper Chain Pants
				r(1252229, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Gemmed Copper Boots
				r(1252231, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Glowing Copper Boots
				r(12260),	-- Rough Copper Vest
				r(2666),	-- Runed Copper Belt
				r(3323),	-- Runed Copper Gauntlets
				r(3324),	-- Runed Copper Pants
				r(1252230, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Strange Copper Boots
			}),
			filter(MISC, {
				r(2665),	-- Coarse Sharpening Stone
				r(3116),	-- Coarse Weightstone
				r(2660),	-- Rough Sharpening Stone
				r(3115),	-- Rough Weightstone
			}),
			filter(REAGENTS, {
				r(1245287, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Copper Rod
				r(3320),	-- Rough Grinding Stone
			}),
			n(WEAPONS, {
				r(2738),	-- Copper Axe
				r(3293),	-- Copper Battle Axe
				r(9983),	-- Copper Claymore
				r(8880),	-- Copper Dagger
				r(2737),	-- Copper Mace
				r(2739),	-- Copper Shortsword
				r(7408),	-- Heavy Copper Maul
				r(3294),	-- Thick War Axe
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 3100, {	-- Blacksmithing (Journeyman)
		symselector = SymSelector.BLACKSMITHING_JOURNEYMAN,
		groups = {
			r(3100, {	-- Blacksmithing (Journeyman)
				lvl = 10,
				rank = 2,
			}),
			n(ARMOR, {
				r(1252250, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Acolyte's Chain Helm
				r(1252245, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Acolyte's Chain Leggings
				r(1252240, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Acolyte's Chain Shirt
				r(1252251, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Crusader's Chain Helm
				r(1252246, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Crusader's Chain Leggings
				r(1252241, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Crusader's Chain Shirt
				r(1252248, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Guard's Chain Helm
				r(1252243, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Guard's Chain Leggings
				r(2672),	-- Patterned Bronze Bracers
				r(1252249, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Protector's Chain Helm
				r(1252244, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Protector's Chain Leggings
				r(1252239, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Protector's Chain Shirt
				r(7817),	-- Rough Bronze Boots
				r(2670),	-- Rough Bronze Cuirass
				r(2668),	-- Rough Bronze Leggings
				r(3328),	-- Rough Bronze Shoulders
				r(2664),	-- Runed Copper Bracers
				r(2675),	-- Shining Silver Breastplate
				r(3331),	-- Silvered Bronze Boots
				r(3333),	-- Silvered Bronze Gauntlets
				r(1252247, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Veteran's Chain Helm
				r(1252242, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Veteran's Chain Leggings
				r(1252237, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Veteran's Chain Shirt
			}),
			filter(MISC, {
				r(2674),	-- Heavy Sharpening Stone
				r(3117),	-- Heavy Weightstone
				r(19666),	-- Silver Skeleton Key
			}),
			filter(REAGENTS, {
				r(3326),	-- Coarse Grinding Stone
				r(3337),	-- Heavy Grinding Stone
				r(7818),	-- Silver Rod
			}),
			n(WEAPONS, {
				r(3491),	-- Big Bronze Knife
				r(2740),	-- Bronze Mace
				r(6517),	-- Pearl-handled Dagger
				r(2741),	-- Bronze Axe
				r(2742),	-- Bronze Shortsword
				r(3296),	-- Heavy Bronze Mace
				r(3292),	-- Heavy Copper Broadsword
				r(9985),	-- Bronze Warhammer
				r(9987),	-- Bronze Battle Axe
				r(9986),	-- Bronze Greatsword
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 3538, {	-- Blacksmithing (Expert)
		symselector = SymSelector.BLACKSMITHING_EXPERT,
		groups = {
			r(3538, {	-- Blacksmithing (Expert)
				lvl = 20,
				rank = 3,
			}),
			n(ARMOR, {
				r(7223),	-- Golden Scale Bracers
				r(3501),	-- Green Iron Bracers
				r(3508),	-- Green Iron Hauberk
				r(3502),	-- Green Iron Helm
				r(3506),	-- Green Iron Leggings
				r(9928),	-- Heavy Mithril Gauntlet
				r(9926),	-- Heavy Mithril Shoulder
				r(9931),	-- Mithril Plate Pants
				r(9916),	-- Steel Breastplate
				r(9935),	-- Steel Plate Helm
			}),
			filter(MISC, {
				r(19667),	-- Golden Skeleton
				r(8768),	-- Iron Buckle
				r(9918),	-- Solid Sharpening Stone
				r(9921),	-- Solid Weightstone
				r(19668),	-- Truesilver Skeleton Key
			}),
			filter(REAGENTS, {
				r(14379),	-- Golden Rod
				r(9920),	-- Solid Grinding Stone
				r(14380),	-- Truesilver Rod
			}),
			n(WEAPONS, {
				r(15972),	-- Glinting Steel Dagger
				r(9993),	-- Heavy Mithril Axe
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 9785, {	-- Blacksmithing (Artisan)
		symselector = SymSelector.BLACKSMITHING_ARTISAN,
		groups = {
			r(9785, {	-- Blacksmithing (Artisan)
				lvl = 35,
				rank = 4,
			}),
			n(ARMOR, {
				r(9968),	-- Heavy Mithril Boots
				r(9959),	-- Heavy Mithril Breastplate
				r(9961),	-- Mithril Coif
				r(1252292),	-- Shining Mithril Helm
			}),
			filter(MISC, {
				r(19669),	-- Arcanite Skeleton Key
				r(16639),	-- Dense Grinding Stone
				r(16641),	-- Dense Sharpening Stone
				r(16640),	-- Dense Weightstone
			}),
			filter(REAGENTS, {
				r(20201),	-- Arcanite Rod
			}),
			n(WEAPONS, {
				r(10001),	-- Big Black Mace
			}),
		},
	}),
	header(HEADERS.SpellWithRank, ARMORSMITH, {	-- Armorsmith
		symselector = SymSelector.BLACKSMITHING_ARMORSMITHING,
		groups = bubbleDown({ requireSkill = ARMORSMITH }, {
			r(ARMORSMITH),
			r(9974),	-- Truesilver Breastplate
			r(9954),	-- Truesilver Gauntlets
		}),
	}),
	header(HEADERS.SpellWithRank, WEAPONSMITH, {	-- Weaponsmith
		symselector = SymSelector.BLACKSMITHING_WEAPONSMITHING,
		groups = bubbleDown({ requireSkill = WEAPONSMITH }, {
			r(WEAPONSMITH),
			r(MASTER_AXESMITH, { requireSkill = MASTER_AXESMITH }),
			r(MASTER_HAMMERSMITH, { requireSkill = MASTER_HAMMERSMITH }),
			r(MASTER_SWORDSMITH, { requireSkill = MASTER_SWORDSMITH }),
			r(10011),	-- Blight
			r(10007),	-- Phantom Blade
			r(10003),	-- The Shatterer
			r(10015),	-- Truesilver Champion
		}),
	}),
});
