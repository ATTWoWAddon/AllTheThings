--------------------
-- LEATHERWORKING --
--------------------
LEATHERWORKING_RECIPES = {
	APPRENTICE = {
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
	};
	JOURNEYMAN = {
		r(3104, {	-- Leatherworking (Journeyman)
			lvl = 10,
			rank = 2,
		}),
		n(ARMOR, {
			r(1255093, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Brawler's Leather Helm
			r(3766),	-- Dark Leather Belt
			r(2167),	-- Dark Leather Boots
			r(2168),	-- Dark Leather Cloak
			r(7135),	-- Dark Leather Pants
			r(1255091, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Defender's Leather Helm
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
			r(1255089, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Stormrider's Leather Helm
			r(1255090, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Totemic Leather Helm
			r(2166),	-- Toughened Leather Armor
			r(3770),	-- Toughened Leather Gloves
			r(1255092, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Trapper's Leather Helm
			r(1255078, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Warden's Leather Belt
			r(1255088, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Wisdom's Leather Helm
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
	};
	EXPERT = {
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
	};
	ARTISAN = {
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
	};
	MERCHANTS_FAVOR_RECIPES_ALLIANCE = bubbleDownClassicRep(AZEROTH_COMMERCE_AUTHORITY, {
		{	-- Neutral
			i(271626, {	-- Leatherworking Certification
				cost = { { "c", MERCHANTS_FAVOR, 1000 } },
			}),
			i(252765, {	-- Pattern: Brawler's Leather Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252786, {	-- Pattern: Brawler's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252777, {	-- Pattern: Brawler's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252798, {	-- Pattern: Brawler's Leather Hood (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252820, {	-- Pattern: Brawler's Leather Legguards (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252805, {	-- Pattern: Brawler's Leather Tunic (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252767, {	-- Pattern: Defender's Leather Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252788, {	-- Pattern: Defender's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252779, {	-- Pattern: Defender's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252800, {	-- Pattern: Defender's Leather Hood (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252822, {	-- Pattern: Defender's Leather Kilt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252807, {	-- Pattern: Defender's Leather Tunic (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252769, {	-- Pattern: Stormrider's Leather Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252790, {	-- Pattern: Stormrider's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252781, {	-- Pattern: Stormrider's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252802, {	-- Pattern: Stormrider's Leather Hood (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252824, {	-- Pattern: Stormrider's Leather Kilt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252809, {	-- Pattern: Stormrider's Leather Tunic (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252768, {	-- Pattern: Totemic Leather Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252789, {	-- Pattern: Totemic Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252780, {	-- Pattern: Totemic Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252801, {	-- Pattern: Totemic Leather Hood (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252823, {	-- Pattern: Totemic Leather Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252808, {	-- Pattern: Totemic Leather Tunic (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252767, {	-- Pattern: Defender's Leather Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252787, {	-- Pattern: Trapper's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252778, {	-- Pattern: Trapper's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252799, {	-- Pattern: Trapper's Leather Hood (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252821, {	-- Pattern: Trapper's Leather Legguards (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252806, {	-- Pattern: Trapper's Leather Tunic (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252803, {	-- Pattern: Wisdom's Leather Hood (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252782, {	-- Pattern: Wisdom's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252825, {	-- Pattern: Wisdom's Leather Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252770, {	-- Pattern: Wisdom's Leather Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252791, {	-- Pattern: Wisdom's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252810, {	-- Pattern: Wisdom's Leather Tunic (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
		}, {	-- Friendly
			i(252834, {	-- Pattern: Forceful Thick Armor Kit (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252842, {	-- Pattern: Mender's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252852, {	-- Pattern: Mender's Leather Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252903, {	-- Pattern: Mender's Mail Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252836, {	-- Pattern: Prowler's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252848, {	-- Pattern: Prowler's Leather Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252840, {	-- Pattern: Skirmisher's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252902, {	-- Pattern: Skirmisher's Mail Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252841, {	-- Pattern: Skycaller's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252851, {	-- Pattern: Skycaller's Leather Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252901, {	-- Pattern: Skycaller's Mail Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252837, {	-- Pattern: Skulker's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252849, {	-- Pattern: Skulker's Leather Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252838, {	-- Pattern: Stalker's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252900, {	-- Pattern: Stalker's Mail Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252839, {	-- Pattern: Warden's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252850, {	-- Pattern: Warden's Leather Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
		}, {	-- Honored
			i(252864, {	-- Pattern: Mender's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252857, {	-- Pattern: Mender's Leather Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252876, {	-- Pattern: Mender's Leather Waistguard (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252925, {	-- Pattern: Mender's Mail Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252907, {	-- Pattern: Mender's Mail Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252913, {	-- Pattern: Mender's Mail Sabatons (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252941, {	-- Pattern: Mystic Rugged Armor Kit (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252860, {	-- Pattern: Prowler's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252853, {	-- Pattern: Prowler's Leather Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252872, {	-- Pattern: Prowler's Leather Waistguard (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252863, {	-- Pattern: Skycaller's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252856, {	-- Pattern: Skycaller's Leather Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252875, {	-- Pattern: Skycaller's Leather Waistguard (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252923, {	-- Pattern: Skycaller's Mail Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252905, {	-- Pattern: Skycaller's Mail Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252911, {	-- Pattern: Skycaller's Mail Sabatons (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252924, {	-- Pattern: Skirmisher's Mail Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252906, {	-- Pattern: Skirmisher's Mail Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252912, {	-- Pattern: Skirmisher's Mail Sabatons (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252861, {	-- Pattern: Skulker's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252854, {	-- Pattern: Skulker's Leather Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252873, {	-- Pattern: Skulker's Leather Waistguard (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252922, {	-- Pattern: Stalker's Mail Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252904, {	-- Pattern: Stalker's Mail Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252910, {	-- Pattern: Stalker's Mail Sabatons (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252862, {	-- Pattern: Warden's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252855, {	-- Pattern: Warden's Leather Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252874, {	-- Pattern: Warden's Leather Waistguard (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
		}, {	-- Revered
		}, {	-- Exalted
		},
	});
	MERCHANTS_FAVOR_RECIPES_HORDE = bubbleDownClassicRep(DUROTAR_SUPPLY_AND_LOGISTICS, {
		{	-- Neutral
			i(271626, {	-- Leatherworking Certification
				cost = { { "c", MERCHANTS_FAVOR, 1000 } },
			}),
			i(252765, {	-- Pattern: Brawler's Leather Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252786, {	-- Pattern: Brawler's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252777, {	-- Pattern: Brawler's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252798, {	-- Pattern: Brawler's Leather Hood (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252820, {	-- Pattern: Brawler's Leather Legguards (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252805, {	-- Pattern: Brawler's Leather Tunic (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252767, {	-- Pattern: Defender's Leather Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252788, {	-- Pattern: Defender's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252779, {	-- Pattern: Defender's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252800, {	-- Pattern: Defender's Leather Hood (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252822, {	-- Pattern: Defender's Leather Kilt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252807, {	-- Pattern: Defender's Leather Tunic (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252769, {	-- Pattern: Stormrider's Leather Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252790, {	-- Pattern: Stormrider's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252781, {	-- Pattern: Stormrider's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252802, {	-- Pattern: Stormrider's Leather Hood (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252824, {	-- Pattern: Stormrider's Leather Kilt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252809, {	-- Pattern: Stormrider's Leather Tunic (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252768, {	-- Pattern: Totemic Leather Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252789, {	-- Pattern: Totemic Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252780, {	-- Pattern: Totemic Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252801, {	-- Pattern: Totemic Leather Hood (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252823, {	-- Pattern: Totemic Leather Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252808, {	-- Pattern: Totemic Leather Tunic (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252767, {	-- Pattern: Defender's Leather Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252787, {	-- Pattern: Trapper's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252778, {	-- Pattern: Trapper's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252799, {	-- Pattern: Trapper's Leather Hood (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252821, {	-- Pattern: Trapper's Leather Legguards (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252806, {	-- Pattern: Trapper's Leather Tunic (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252803, {	-- Pattern: Wisdom's Leather Hood (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252782, {	-- Pattern: Wisdom's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252825, {	-- Pattern: Wisdom's Leather Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252770, {	-- Pattern: Wisdom's Leather Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(252810, {	-- Pattern: Wisdom's Leather Tunic (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
		}, {	-- Friendly
			i(252834, {	-- Pattern: Forceful Thick Armor Kit (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252842, {	-- Pattern: Mender's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252852, {	-- Pattern: Mender's Leather Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252903, {	-- Pattern: Mender's Mail Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252836, {	-- Pattern: Prowler's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252848, {	-- Pattern: Prowler's Leather Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252840, {	-- Pattern: Skirmisher's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252902, {	-- Pattern: Skirmisher's Mail Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252841, {	-- Pattern: Skycaller's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252851, {	-- Pattern: Skycaller's Leather Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252901, {	-- Pattern: Skycaller's Mail Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252837, {	-- Pattern: Skulker's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252849, {	-- Pattern: Skulker's Leather Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252838, {	-- Pattern: Stalker's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252900, {	-- Pattern: Stalker's Mail Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252839, {	-- Pattern: Warden's Leather Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(252850, {	-- Pattern: Warden's Leather Shoulder (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
		}, {	-- Honored
			i(252864, {	-- Pattern: Mender's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252857, {	-- Pattern: Mender's Leather Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252876, {	-- Pattern: Mender's Leather Waistguard (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252925, {	-- Pattern: Mender's Mail Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252907, {	-- Pattern: Mender's Mail Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252913, {	-- Pattern: Mender's Mail Sabatons (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252941, {	-- Pattern: Mystic Rugged Armor Kit (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252860, {	-- Pattern: Prowler's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252853, {	-- Pattern: Prowler's Leather Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252872, {	-- Pattern: Prowler's Leather Waistguard (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252863, {	-- Pattern: Skycaller's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252856, {	-- Pattern: Skycaller's Leather Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252875, {	-- Pattern: Skycaller's Leather Waistguard (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252923, {	-- Pattern: Skycaller's Mail Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252905, {	-- Pattern: Skycaller's Mail Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252911, {	-- Pattern: Skycaller's Mail Sabatons (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252924, {	-- Pattern: Skirmisher's Mail Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252906, {	-- Pattern: Skirmisher's Mail Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252912, {	-- Pattern: Skirmisher's Mail Sabatons (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252861, {	-- Pattern: Skulker's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252854, {	-- Pattern: Skulker's Leather Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252873, {	-- Pattern: Skulker's Leather Waistguard (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252922, {	-- Pattern: Stalker's Mail Belt (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252904, {	-- Pattern: Stalker's Mail Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252910, {	-- Pattern: Stalker's Mail Sabatons (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252862, {	-- Pattern: Warden's Leather Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252855, {	-- Pattern: Warden's Leather Bracers (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(252874, {	-- Pattern: Warden's Leather Waistguard (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
		}, {	-- Revered
		}, {	-- Exalted
		},
	});
	DRAGONSCALE = {
		r(DRAGONSCALE_LEATHERWORKING),
		r(24654),	-- Blue Dragonscale Leggings
		r(10650),	-- Dragonscale Breastplate
		r(10619),	-- Dragonscale Gauntlets
		r(24655),	-- Green Dragonscale Gauntlets
	};
	ELEMENTAL = {
		r(ELEMENTAL_LEATHERWORKING),
		r(10630),	-- Gauntlets of the Sea
		r(10632),	-- Helm of Fire
	};
	TRIBAL = {
		r(TRIBAL_LEATHERWORKING),
		r(10647),	-- Feathered Breastplate
		r(10621),	-- Wolfshead Helm
	};
};
