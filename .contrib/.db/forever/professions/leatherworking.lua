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
				{ "i", 8203, 2 },	-- Tough Scorpid Breastplate
				{ "i", 8204, 2 },	-- Tough Scorpid Gloves
				{ "i", 8165, 10 },	-- Worn Dragonscale
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
				{ "i", 8203, 2 },	-- Tough Scorpid Breastplate
				{ "i", 8204, 2 },	-- Tough Scorpid Gloves
				{ "i", 8165, 10 },	-- Worn Dragonscale
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
				{ "i", 7081, 2 },	-- Breath of Wind
				{ "i", 7075, 2 },	-- Core of Earth
				{ "i", 7079, 2 },	-- Globe of Water
				{ "i", 7077, 2 },	-- Heart of Fire
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
				{ "i", 7081, 2 },	-- Breath of Wind
				{ "i", 7075, 2 },	-- Core of Earth
				{ "i", 7079, 2 },	-- Globe of Water
				{ "i", 7077, 2 },	-- Heart of Fire
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
				{ "i", 8214, 1 },	-- Wild Leather Helmet
				{ "i", 8211, 1 },	-- Wild Leather Vest
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
				{ "i", 8214, 1 },	-- Wild Leather Helmet
				{ "i", 8211, 1 },	-- Wild Leather Vest
			},
			races = HORDE_ONLY,
		}),
	})),
	header(HEADERS.SpellWithRank, 2108, {	-- Leatherworking (Apprentice)
		symselector = SymSelector.LEATHERWORKING_APPRENTICE,
		groups = {
			r(2108, {	-- Leatherworking (Apprentice)
				lvl = 5,
				rank = 1,
			}),
			n(ARMOR, {
				r(1255146, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Black Whelp Slippers
				r(1255145, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Dark Leather Boots
				r(2161),	-- Embossed Leather Boots
				r(2162),	-- Embossed Leather Cloak
				r(3756),	-- Embossed Leather Gloves
				r(3759),	-- Embossed Leather Pants
				r(2160),	-- Embossed Leather Vest
				r(3753),	-- Handstitched Leather Belt
				r(2149),	-- Handstitched Leather Boots
				r(9059),	-- Handstitched Leather Bracers
				r(9058),	-- Handstitched Leather Cloak
				r(2153),	-- Handstitched Leather Pants
				r(7126),	-- Handstitched Leather Vest
				r(9065),	-- Light Leather Bracers
				r(1255143, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Moonglow Boots
				r(1255144, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Murloc Scale Shoes
			}),
			n(ARMOR_ENCHANTMENTS, {
				r(2152),	-- Light Armor Kit
			}),
			filter(BAGS, {
				r(9060),	-- Light Leather Quiver
				r(9062),	-- Small Leather Ammo Pouch
			}),
			filter(REAGENTS, {
				r(3816),	-- Cured Light Hide
				r(2881),	-- Light Leather
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 3104, {	-- Leatherworking (Journeyman)
		symselector = SymSelector.LEATHERWORKING_JOURNEYMAN,
		groups = {
			r(3104, {	-- Leatherworking (Journeyman)
				lvl = 10,
				rank = 2,
			}),
			n(ARMOR, {
				r(3766),	-- Dark Leather Belt
				r(2167),	-- Dark Leather Boots
				r(2168),	-- Dark Leather Cloak
				r(7135),	-- Dark Leather Pants
				r(3763),	-- Fine Leather Belt
				r(2159),	-- Fine Leather Cloak
				r(3761),	-- Fine Leather Tunic
				r(9145),	-- Fletcher's Gloves
				r(3760),	-- Hillman's Cloak
				r(3764),	-- Hillman's Leather Gloves
				r(3768),	-- Hillman's Shoulders
				r(9068),	-- Light Leather Pants
				r(1255075, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Mender's Leather Belt
				r(9074),	-- Nimble Leather Gloves
				r(1255081, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Prowler's Leather Belt
				r(1255077, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Skirmisher's Leather Belt
				r(1255080, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Skulker's Leather Belt
				r(1255076, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Skycaller's Leather Belt
				r(1255079, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Stalker's Leather Belt
				r(2166),	-- Toughened Leather Armor
				r(3770),	-- Toughened Leather Gloves
				r(1255078, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Warden's Leather Belt
			}),
			n(ARMOR_ENCHANTMENTS, {
				r(3780),	-- Heavy Armor Kit
				r(2165),	-- Medium Armor Kit
			}),
			filter(BAGS, {
				r(9194),	-- Heavy Leather Ammo Pouch
				r(9193),	-- Heavy Quiver
			}),
			filter(REAGENTS, {
				r(3818),	-- Cured Heavy Hide
				r(3817),	-- Cured Medium Hide
				r(20649),	-- Heavy Leather
				r(20648),	-- Medium Leather
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 3811, {	-- Leatherworking (Expert)
		symselector = SymSelector.LEATHERWORKING_EXPERT,
		groups = {
			r(3811, {	-- Leatherworking (Expert)
				lvl = 20,
				rank = 3,
			}),
			n(ARMOR, {
				r(6661),	-- Barbaric Harness
				r(7151),	-- Barbaric Shoulders
				r(9206),	-- Dusky Belt
				r(9201),	-- Dusky Bracers
				r(9196),	-- Dusky Leather Armor
				r(9198),	-- Frost Leather Cloak
				r(3774),	-- Green Leather Belt
				r(3776),	-- Green Leather Bracers
				r(7156),	-- Guardian Gloves
				r(7147),	-- Guardian Pants
				r(10507),	-- Nightscape Headband
				r(10499),	-- Nightscape Tunic
				r(10518),	-- Turtle Scale Bracers
				r(10511),	-- Turtle Scale Breastplate
			}),
			n(ARMOR_ENCHANTMENTS, {
				r(10487),	-- Thick Armor Kit
			}),
			filter(BAGS, {
				r(14932),	-- Thick Leather Ammo Pouch
				r(14930),	-- Quickdraw Quiver
			}),
			filter(REAGENTS, {
				r(10482),	-- Cured Thick Hide
				r(20650),	-- Thick Leather
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 10662, {	-- Leatherworking (Artisan)
		symselector = SymSelector.LEATHERWORKING_ARTISAN,
		groups = {
			r(10662, {	-- Leatherworking (Artisan)
				lvl = 35,
				rank = 4,
			}),
			n(ARMOR, {
				r(10558),	-- Nightscape Boots
				r(10548),	-- Nightscape Pants
				r(10552),	-- Turtle Scale Helm
				r(10556),	-- Turtle Scale Leggings
			}),
			n(ARMOR_ENCHANTMENTS, {
				r(19058),	-- Rugged Armor Kit
			}),
			filter(REAGENTS, {
				r(19047),	-- Cured Rugged Hide
				r(22331),	-- Rugged Leather
			}),
		},
	}),
	header(HEADERS.SpellWithRank, DRAGONSCALE_LEATHERWORKING, {	-- Dragonscale Leatherworking
		symselector = SymSelector.LEATHERWORKING_DRAGONSCALE,
		groups = bubbleDown({ requireSkill = DRAGONSCALE_LEATHERWORKING }, {
			r(DRAGONSCALE_LEATHERWORKING),
			r(24654),	-- Blue Dragonscale Leggings
			r(10650),	-- Dragonscale Breastplate
			r(10619),	-- Dragonscale Gauntlets
			r(24655),	-- Green Dragonscale Gauntlets
		}),
	}),
	header(HEADERS.SpellWithRank, ELEMENTAL_LEATHERWORKING, {	-- Elemental Leatherworking
		symselector = SymSelector.LEATHERWORKING_ELEMENTAL,
		groups = bubbleDown({ requireSkill = ELEMENTAL_LEATHERWORKING }, {
			r(ELEMENTAL_LEATHERWORKING),
			r(10630),	-- Gauntlets of the Sea
			r(10632),	-- Helm of Fire
		}),
	}),
	header(HEADERS.SpellWithRank, TRIBAL_LEATHERWORKING, {	-- Tribal Leatherworking
		symselector = SymSelector.LEATHERWORKING_TRIBAL,
		groups = bubbleDown({ requireSkill = TRIBAL_LEATHERWORKING }, {
			r(TRIBAL_LEATHERWORKING),
			r(10647),	-- Feathered Breastplate
			r(10621),	-- Wolfshead Helm
		}),
	}),
});
