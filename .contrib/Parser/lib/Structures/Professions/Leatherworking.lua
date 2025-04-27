--------------------
-- LEATHERWORKING --
--------------------
local ARCTIC_FUR = 44128;
local HEAVY_BOREAN_LEATHER = 38425;
local SECRET_OF_DRAENOR_LEATHERWORKING = 118721;
APPRENTICE_JOURNEYMAN_LEATHERWORKING = {
	r(2108,	{	-- Leatherworking (Apprentice)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 5,
		-- #endif
		["rank"] = 1,
	}),
	r(3104,	{	-- Leatherworking (Journeyman)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 10,
		-- #endif
		["rank"] = 2,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264577, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Leatherworking
	r(330180, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [CLASSIC]
	r(330181, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [CLASSIC]
	r(330183, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [CLASSIC]
	r(330184, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [CLASSIC]
	r(330185, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [CLASSIC]
	n(ARMOR, {
		r(36074, {["timeline"] = {ADDED_4_0_3}}),	-- Blackstorm Leggings
		r(3766),	-- Dark Leather Belt
		r(2167),	-- Dark Leather Boots
		r(2168),	-- Dark Leather Cloak
		r(7135),	-- Dark Leather Pants
		r(36076, {["timeline"] = {ADDED_4_0_3}}),	-- Dragonstrike Leggings
		r(2161),	-- Embossed Leather Boots
		r(2162),	-- Embossed Leather Cloak
		r(3756),	-- Embossed Leather Gloves
		r(3759),	-- Embossed Leather Pants
		r(2160),	-- Embossed Leather Vest
		r(3763),	-- Fine Leather Belt
		r(2159),	-- Fine Leather Cloak
		r(3761),	-- Fine Leather Tunic
		r(9145),	-- Fletcher's Gloves
		r(3753),	-- Handstitched Leather Belt
		r(2149),	-- Handstitched Leather Boots
		r(9059),	-- Handstitched Leather Bracers
		r(9058),	-- Handstitched Leather Cloak
		r(2153),	-- Handstitched Leather Pants
		r(7126),	-- Handstitched Leather Vest
		r(3760),	-- Hillman's Cloak
		r(3764),	-- Hillman's Leather Gloves
		r(3768),	-- Hillman's Shoulders
		r(9065),	-- Light Leather Bracers
		r(9068),	-- Light Leather Pants
		r(9074),	-- Nimble Leather Gloves
		r(19102, {["timeline"] = {ADDED_2_1_0}}),	-- Runic Leather Armor
		r(19072, {["timeline"] = {ADDED_2_1_0}}),	-- Runic Leather Belt
		r(19065, {["timeline"] = {ADDED_2_1_0}}),	-- Runic Leather Bracers
		r(19055, {["timeline"] = {ADDED_2_1_0}}),	-- Runic Leather Gauntlets
		r(19082, {["timeline"] = {ADDED_2_1_0}}),	-- Runic Leather Headband
		r(19091, {["timeline"] = {ADDED_2_1_0}}),	-- Runic Leather Pants
		r(19103, {["timeline"] = {ADDED_2_1_0}}),	-- Runic Leather Shoulders
		r(2166),	-- Toughened Leather Armor
		r(3770),	-- Toughened Leather Gloves
		r(19098, {["timeline"] = {ADDED_2_1_0}}),	-- Wicked Leather Armor
		r(19092, {["timeline"] = {ADDED_2_1_0}}),	-- Wicked Leather Belt
		r(19052, {["timeline"] = {ADDED_2_1_0}}),	-- Wicked Leather Bracers
		r(19071, {["timeline"] = {ADDED_2_1_0}}),	-- Wicked Leather Headband
		r(19083, {["timeline"] = {ADDED_2_1_0}}),	-- Wicked Leather Pants
		r(36075, {["timeline"] = {ADDED_4_0_3}}),	-- Wildfeather Leggings
	}),
	filter(MISC, {
		r(3816),	-- Cured Light Hide
		r(3817),	-- Cured Medium Hide
		r(3780),	-- Heavy Armor Kit
		r(20649),	-- Heavy Leather
		r(9194, {["timeline"] = {REMOVED_4_0_1}}),	-- Heavy Leather Ammo Pouch
		r(9193, {["timeline"] = {REMOVED_4_0_1}}),	-- Heavy Quiver
		r(2152),	-- Light Armor Kit
		r(2881),	-- Light Leather
		r(9060, {["timeline"] = {REMOVED_4_0_1}}),	-- Light Leather Quiver
		r(2165),	-- Medium Armor Kit
		r(20648),	-- Medium Leather
		r(9062, {["timeline"] = {REMOVED_4_0_1}}),	-- Small Leather Ammo Pouch
	}),
};
EXPERT_ARTISAN_LEATHERWORKING = {
	r(3811,	{	-- Leatherworking (Expert)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		-- #if SEASON_OF_DISCOVERY
		["OnUpdate"] = [[function(t)
			t.lvl = _.Settings:GetUnobtainableFilter(]] .. SOD_PHASE_ONE .. [[) and 26 or 20;
		end]],
		-- #else
		["lvl"] = 20,
		-- #endif
		-- #endif
		["rank"] = 3,
	}),
	r(10662, {	-- Leatherworking (Artisan)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		-- #if SEASON_OF_DISCOVERY
		["OnUpdate"] = [[function(t)
			t.lvl = _.Settings:GetUnobtainableFilter(]] .. SOD_PHASE_ONE .. [[) and 41 or 35;
		end]],
		-- #else
		["lvl"] = 35,
		-- #endif
		-- #endif
		["rank"] = 4,
	}),
	n(ARMOR, {
		r(6661),	-- Barbaric Harness
		r(7151),	-- Barbaric Shoulders
		r(24654),	-- Blue Dragonscale Leggings
		r(9206),	-- Dusky Belt
		r(9201),	-- Dusky Bracers
		r(9196),	-- Dusky Leather Armor
		r(9198),	-- Frost Leather Cloak
		r(3774),	-- Green Leather Belt
		r(3776),	-- Green Leather Bracers
		r(7156),	-- Guardian Gloves
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_TWO, r(439114)),	-- Guardian Pants
		-- #endif
		r(7147),	-- Guardian Pants
		r(10558),	-- Nightscape Boots
		r(10507),	-- Nightscape Headband
		r(10548),	-- Nightscape Pants
		r(10499),	-- Nightscape Tunic
		r(10518),	-- Turtle Scale Bracers
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_TWO, r(439116)),	-- Turtle Scale Breastplate
		-- #endif
		r(10511),	-- Turtle Scale Breastplate
		r(10552),	-- Turtle Scale Helm
		r(10556),	-- Turtle Scale Leggings
		-- #if AFTER CATA
		r(10650),	-- Dragonscale Breastplate
		r(10619, {["timeline"] = {REMOVED_4_0_3}}),	-- Dragonscale Gauntlets
		r(10647),	-- Feathered Breastplate
		r(10630),	-- Gauntlets of the Sea
		r(24655),	-- Green Dragonscale Gauntlets
		r(10632),	-- Helm of Fire
		-- #endif
	}),
	filter(MISC,	{
		r(3818),	-- Cured Heavy Hide
		r(19047),	-- Cured Rugged Hide
		r(10482),	-- Cured Thick Hide
		r(14930, {["timeline"] = {REMOVED_4_0_1}}),	-- Quickdraw Quiver
		r(19058),	-- Rugged Armor Kit
		r(22331),	-- Rugged Leather
		r(10487),	-- Thick Armor Kit
		r(20650),	-- Thick Leather
		r(14932, {["timeline"] = {REMOVED_4_0_1}}),	-- Thick Leather Ammo Pouch
	}),
};
CLASSIC_DRAGONSCALE = sharedData({ ["timeline"] = { REMOVED_4_0_3_LAUNCH } }, {
	r(10656, {	-- Dragonscale Leatherworking
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
	}),
	r(24654),	-- Blue Dragonscale Leggings
	r(10650),	-- Dragonscale Breastplate
	r(10619),	-- Dragonscale Gauntlets
	r(24655),	-- Green Dragonscale Gauntlets
});
CLASSIC_ELEMENTAL = sharedData({ ["timeline"] = { REMOVED_4_0_3_LAUNCH } }, {
	r(10658, {	-- Elemental Leatherworking
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
	}),
	r(10630),	-- Gauntlets of the Sea
	r(10632),	-- Helm of Fire
});
CLASSIC_TRIBAL = sharedData({ ["timeline"] = { REMOVED_4_0_3_LAUNCH } }, {
	r(10660, {	-- Tribal Leatherworking
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
	}),
	r(10647),	-- Feathered Breastplate
	r(10621),	-- Wolfshead Helm
});
CLASSIC_LEATHERWORKING = appendGroups(APPRENTICE_JOURNEYMAN_LEATHERWORKING,
-- #if AFTER 2.1.0
EXPERT_ARTISAN_LEATHERWORKING
-- #else
	{}
-- #endif
);
TBC_LEATHERWORKING = applyclassicphase(TBC_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_2_0_5 } }, {
	r(32549, {	-- Leatherworking (Master)
		["timeline"] = { ADDED_2_0_5, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 5,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264579, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Outland Leatherworking
	r(330186, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [The Burning Cruse]
	r(330187, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [The Burning Cruse]
	r(330188, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [The Burning Cruse]
	r(330189, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [The Burning Cruse]
	r(330190, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [The Burning Cruse]
	n(ARMOR, {
		r(32462),	-- Felscale Gloves
		r(32463),	-- Felscale Boots
		r(32464),	-- Felscale Pants
		r(32465),	-- Felscale Breastplate
		r(36079, {["timeline"] = {ADDED_4_0_3}}),	-- Golden Dragonstrike Breastplate
		r(36078, {["timeline"] = {ADDED_4_0_3}}),	-- Living Crystal Breastplate
		r(36077, {["timeline"] = {ADDED_4_0_3}}),	-- Primalstorm Breastplate
		r(32466),	-- Scaled Draenic Pants
		r(32467),	-- Scaled Draenic Gloves
		r(32468),	-- Scaled Draenic Vest
		r(32469),	-- Scaled Draenic Boots
		r(32470),	-- Thick Draenic Gloves
		r(32471),	-- Thick Draenic Pants
		r(32472),	-- Thick Draenic Boots
		r(32473),	-- Thick Draenic Vest
		r(32478),	-- Wild Draenish Boots
		r(32479),	-- Wild Draenish Gloves
		r(32480),	-- Wild Draenish Leggings
		r(32481),	-- Wild Draenish Vest
	}),
	filter(MISC, {
		r(163231, {["timeline"] = {ADDED_6_0_2}}),	-- Cobra Scales
		r(163226, {["timeline"] = {ADDED_6_0_2}}),	-- Crystal Infused Leather
		r(35540),	-- Drums of War
		r(163229, {["timeline"] = {ADDED_6_0_2}}),	-- Fel Hide
		r(163228, {["timeline"] = {ADDED_6_0_2}}),	-- Fel Scales
		r(44770, {["timeline"] = {ADDED_2_3_0}}),	-- Glove Reinforcements
		-- #if ANYCLASSIC
		applyclassicphase(TBC_PHASE_FOUR, r(351766, {	-- Greater Drums of War
			["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
		})),
		-- #endif
		r(44970, {["timeline"] = {ADDED_2_3_0}}),	-- Heavy Knothide Armor Kit
		r(32455),	-- Heavy Knothide Leather
		r(44343, {["timeline"] = {ADDED_2_3_0, REMOVED_4_0_1}}),	-- Knothide Ammo Pouch
		r(32456),	-- Knothide Armor Kit
		r(32454),	-- Knothide Leather
		r(44344, {["timeline"] = {ADDED_2_3_0, REMOVED_4_0_1}}),	-- Knothide Quiver
		r(45100, {["timeline"] = {ADDED_2_3_0}}),	-- Leatherworker's Satchel
		r(163230, {["timeline"] = {ADDED_6_0_2}}),	-- Nether Dragonscales
		r(163225, {["timeline"] = {ADDED_6_0_2}}),	-- Thick Clefthoof Leather
		r(163232, {["timeline"] = {ADDED_6_0_2}}),	-- Wind Scales
	}),
}));
TBC_DRAGONSCALE = applyclassicphase(TBC_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_2_0_5, REMOVED_4_0_3_LAUNCH } }, {
	r(36076),	-- Dragonstrike Leggings
	r(35576),	-- Ebon Netherscale Belt
	r(35577),	-- Ebon Netherscale Bracers
	r(35575),	-- Ebon Netherscale Breastplate
	r(36079),	-- Golden Dragonstrike Breastplate
	r(35582),	-- Netherstrike Belt
	r(35584),	-- Netherstrike Bracers
	r(35580),	-- Netherstrike Breastplate
}));
TBC_ELEMENTAL = applyclassicphase(TBC_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_2_0_5, REMOVED_4_0_3_LAUNCH } }, {
	r(36074),	-- Blackstorm Leggings
	r(36077),	-- Primalstorm Breastplate
	r(35590),	-- Primalstrike Belt
	r(35591),	-- Primalstrike Bracers
	r(35589),	-- Primalstrike Vest
}));
TBC_TRIBAL = applyclassicphase(TBC_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_2_0_5, REMOVED_4_0_3_LAUNCH } }, {
	r(36078),	-- Living Crystal Breastplate
	r(36075),	-- Wildfeather Leggings
	r(35587),	-- Windhawk Belt
	r(35588),	-- Windhawk Bracers
	r(35585),	-- Windhawk Hauberk
}));
CLASSIC_TBC_DRAGONSCALE = appendGroups(CLASSIC_DRAGONSCALE,
-- #if AFTER TBC
TBC_DRAGONSCALE
-- #else
	{}
-- #endif
);
CLASSIC_TBC_ELEMENTAL = appendGroups(CLASSIC_ELEMENTAL,
-- #if AFTER TBC
TBC_ELEMENTAL
-- #else
	{}
-- #endif
);
CLASSIC_TBC_TRIBAL = appendGroups(CLASSIC_TRIBAL,
-- #if AFTER TBC
TBC_TRIBAL
-- #else
	{}
-- #endif
);
WRATH_LEATHERWORKING = applyclassicphase(WRATH_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_3_0_3 } }, {
	r(51302, {	-- Leatherworking (Grand Master)
		["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 6,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264581, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Northrend Leatherworking
	r(330191, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Wrath of the Lich King]
	r(330192, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Wrath of the Lich King]
	r(330193, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Wrath of the Lich King]
	r(330194, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Wrath of the Lich King]
	r(330195, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Wrath of the Lich King]
	n(ARMOR, {
		r(50949),	-- Arctic Belt
		r(50948),	-- Arctic Boots
		r(50944),	-- Arctic Chestpiece
		r(50947),	-- Arctic Gloves
		r(51572),	-- Arctic Helm
		r(50945),	-- Arctic Leggings
		r(50946),	-- Arctic Shoulderpads
		r(51571),	-- Arctic Wristguards
		r(51568),	-- Black Chitinguard Boots
		r(60620),	-- Bugsquashers
		r(60631),	-- Cloak of Harsh Winds
		r(55199),	-- Cloak of Tormented Skies
		r(51570),	-- Dark Arctic Chestpiece
		r(51569),	-- Dark Arctic Leggings
		r(60601),	-- Dark Frostscale Leggings
		r(60604),	-- Dark Frostscale Breastplate
		r(60613),	-- Dark Iceborne Chestguard
		r(60611),	-- Dark Iceborne Leggings
		r(60629),	-- Dark Nerubian Chestpiece
		r(60627),	-- Dark Nerubian Leggings
		r(60605),	-- Dragonstompers
		r(60640),	-- Durable Nerubhide Cape
		r(60652),	-- Eaglebane Bracers
		r(50955),	-- Frostscale Belt
		r(50954),	-- Frostscale Boots
		r(60599),	-- Frostscale Bracers
		r(50950),	-- Frostscale Chestguard
		r(50953),	-- Frostscale Gloves
		r(60600),	-- Frostscale Helm
		r(50951),	-- Frostscale Leggings
		r(50952),	-- Frostscale Shoulders
		r(60637),	-- Ice Striker's Cloak
		r(50943),	-- Iceborne Belt
		r(50942),	-- Iceborne Boots
		r(50938),	-- Iceborne Chestguard
		r(50941),	-- Iceborne Gloves
		r(60608),	-- Iceborne Helm
		r(50939),	-- Iceborne Leggings
		r(50940),	-- Iceborne Shoulderpads
		r(60607),	-- Iceborne Wristguards
		r(60666),	-- Jormscale Footpads
		r(60660),	-- Leggings of Visceral Strikes
		r(50961),	-- Nerubian Belt
		r(60622),	-- Nerubian Bracers
		r(50960),	-- Nerubian Boots
		r(50956),	-- Nerubian Chestguard
		r(50959),	-- Nerubian Gloves
		r(60624),	-- Nerubian Helm
		r(50957),	-- Nerubian Legguards
		r(50958),	-- Nerubian Shoulders
		r(60658),	-- Nightshock Girdle
		r(60655),	-- Nightshock Hood
		r(60671),	-- Purehorn Spaulders
		r(60649),	-- Razorstrike Breastplate
		r(60630),	-- Scaled Icewalkers
		r(60665),	-- Seafoam Gauntlets
		r(60651),	-- Virulent Spaulders
		r(60669),	-- Wildscale Breastplate
	}),
	filter(MISC, {
		r(50962),	-- Borean Armor Kit
		r(64661),	-- Borean Leather
		r(69386, {["timeline"] = {ADDED_3_2_2}}),	-- Drums of Forgotten Kings
		r(69388, {["timeline"] = {ADDED_3_2_2}}),	-- Drums of the Wild
		r(62448),	-- Earthen Leg Armor
		r(50965),	-- Frosthide Leg Armor
		r(57683, {["timeline"] = {ADDED_3_0_3, REMOVED_6_0_2}}),	-- Fur Lining - Agility
		r(57691, {["timeline"] = {ADDED_3_0_3, REMOVED_6_0_2}}),	-- Fur Lining - Intellect
		r(57690, {["timeline"] = {ADDED_3_0_3, REMOVED_6_0_2}}),	-- Fur Lining - Stamina
		r(50963),	-- Heavy Borean Armor Kit
		r(50936),	-- Heavy Borean Leather
		r(50967),	-- Icescale Leg Armor
		r(163222, {["timeline"] = {ADDED_6_0_2}}),	-- Icy Dragonscale
		r(50964),	-- Jormungar Leg Armor
		r(60583, {["timeline"] = {ADDED_3_0_3, REMOVED_5_0_4}}),	-- Jormungar Leg Reinforcements
		r(163224, {["timeline"] = {ADDED_6_0_2}}),	-- Jormungar Scale
		r(163223, {["timeline"] = {ADDED_6_0_2}}),	-- Nerubian Chitin
		r(50966),	-- Nerubian Leg Armor
		r(60584, {["timeline"] = {ADDED_3_0_3, REMOVED_5_0_4}}),	-- Nerubian Leg Reinforcements
		r(60643),	-- Pack of Endless Pockets
	}),
}));
COMMON_WRATH_LEATHERWORKING_RECIPES = applyclassicphase(WRATH_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_3_0_3 } }, {
	i(ARCTIC_FUR, {
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 10 }},
	}),
	i(44553, {	-- Pattern: Earthgiving Boots (RECIPE!)
		["cost"] = {{ "i", ARCTIC_FUR, 2 }},
	}),
	i(44552, {	-- Pattern: Earthgiving Legguards (RECIPE!)
		["cost"] = {{ "i", ARCTIC_FUR, 2 }},
	}),
	i(44516, {	-- Pattern: Eviscerator's Bindings (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44515, {	-- Pattern: Eviscerator's Chestguard (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44513, {	-- Pattern: Eviscerator's Facemask (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44517, {	-- Pattern: Eviscerator's Gauntlets (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44519, {	-- Pattern: Eviscerator's Legguards (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44514, {	-- Pattern: Eviscerator's Shoulderpads (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44520, {	-- Pattern: Eviscerator's Treads (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44518, {	-- Pattern: Eviscerator's Waistguard (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44547, {	-- Pattern: Giantmaim Bracers (RECIPE!)
		["cost"] = {{ "i", ARCTIC_FUR, 2 }},
	}),
	i(44546, {	-- Pattern: Giantmaim Legguards (RECIPE!)
		["cost"] = {{ "i", ARCTIC_FUR, 2 }},
	}),
	i(44588, {	-- Pattern: Icy Scale Belt (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44589, {	-- Pattern: Icy Scale Boots (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44587, {	-- Pattern: Icy Scale Chestguard (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44526, {	-- Pattern: Overcast Belt (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44528, {	-- Pattern: Overcast Boots (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44524, {	-- Pattern: Overcast Bracers (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44523, {	-- Pattern: Overcast Chestguard (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44525, {	-- Pattern: Overcast Handwraps (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44521, {	-- Pattern: Overcast Headguard (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44527, {	-- Pattern: Overcast Leggings (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44522, {	-- Pattern: Overcast Spaulders (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44586, {	-- Pattern: Polar Boots (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44585, {	-- Pattern: Polar Cord (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44584, {	-- Pattern: Polar Vest (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44548, {	-- Pattern: Revenant's Breastplate (RECIPE!)
		["cost"] = {{ "i", ARCTIC_FUR, 2 }},
	}),
	i(44549, {	-- Pattern: Revenant's Treads (RECIPE!)
		["cost"] = {{ "i", ARCTIC_FUR, 2 }},
	}),
	i(44543, {	-- Pattern: Stormhide Belt (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44538, {	-- Pattern: Stormhide Crown (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44542, {	-- Pattern: Stormhide Grips (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44540, {	-- Pattern: Stormhide Hauberk (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44544, {	-- Pattern: Stormhide Legguards (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44539, {	-- Pattern: Stormhide Shoulders (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44545, {	-- Pattern: Stormhide Stompers (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44541, {	-- Pattern: Stormhide Wristguards (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44535, {	-- Pattern: Swiftarrow Belt (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44537, {	-- Pattern: Swiftarrow Boots (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44533, {	-- Pattern: Swiftarrow Bracers (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44534, {	-- Pattern: Swiftarrow Gauntlets (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44532, {	-- Pattern: Swiftarrow Hauberk (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44530, {	-- Pattern: Swiftarrow Helm (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44536, {	-- Pattern: Swiftarrow Leggings (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44531, {	-- Pattern: Swiftarrow Shoulderguards (RECIPE!)
		["cost"] = {{ "i", HEAVY_BOREAN_LEATHER, 3 }},
	}),
	i(44551, {	-- Pattern: Trollwoven Girdle (RECIPE!)
		["cost"] = {{ "i", ARCTIC_FUR, 2 }},
	}),
	i(44550, {	-- Pattern: Trollwoven Spaulders (RECIPE!)
		["cost"] = {{ "i", ARCTIC_FUR, 2 }},
	}),
	i(44932, {	-- Pattern: Windripper Boots (RECIPE!)
		["cost"] = {{ "i", ARCTIC_FUR, 2 }},
	}),
	i(44933, {	-- Pattern: Windripper Leggings (RECIPE!)
		["cost"] = {{ "i", ARCTIC_FUR, 2 }},
	}),
}));
CATA_LEATHERWORKING = applyclassicphase(CATA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	r(81199, {	-- Leatherworking (Illustrious)
		["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 7,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264583, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Cataclysm Leatherworking
	r(330196, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Cataclysm]
	r(330197, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Cataclysm]
	r(330198, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Cataclysm]
	r(330199, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Cataclysm]
	r(330200, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Cataclysm]
	n(ARMOR, {
		r(78438),	-- Cloak of Beasts
		r(78439),	-- Cloak of War
		r(78428),	-- Darkbrand Chestguard
		r(78416),	-- Darkbrand Belt
		r(78407),	-- Darkbrand Boots
		r(78398),	-- Darkbrand Bracers
		r(78399),	-- Darkbrand Glove
		r(78424),	-- Darkbrand Helm
		r(78433),	-- Darkbrand Leggings
		r(78411),	-- Darkbrand Shoulders
		r(78405),	-- Hardened Scale Cloak
		r(78380),	-- Savage Cloak
		r(78423),	-- Tsunami Chestguard
		r(78388),	-- Tsunami Bracers
		r(78396),	-- Tsunami Belt
		r(78410),	-- Tsunami Boots
		r(78406),	-- Tsunami Gloves
		r(78432),	-- Tsunami Helm
		r(78427),	-- Tsunami Leggings
		r(78415),	-- Tsunami Shoulders
		r(99536, {["timeline"] = {ADDED_4_2_0}}),	-- Vicious Fur Cloak
		r(99535, {["timeline"] = {ADDED_4_2_0}}),	-- Vicious Hide Cloak
	}),
	filter(MISC, {
		r(163216, {["timeline"] = {ADDED_6_0_2}}),	-- Blackened Dragonscale
		r(85068, {["timeline"] = {ADDED_4_0_3_LAUNCH, REMOVED_6_0_2}}),	-- Charscale Leg Reinforcements
		r(163218, {["timeline"] = {ADDED_6_0_2}}),	-- Deepsea Scale
		r(85067, {["timeline"] = {ADDED_4_0_3_LAUNCH, REMOVED_6_0_2}}),	-- Dragonbone Leg Reinforcements
		r(101600, {["timeline"] = {ADDED_4_2_0, REMOVED_6_0_2}}),	-- Drakehide Leg Reinforcements
		r(85008, {["timeline"] = {ADDED_4_0_3_LAUNCH, REMOVED_6_0_2}}),	-- Fur Lining - Agility [Rank 2]
		r(85010, {["timeline"] = {ADDED_4_0_3_LAUNCH, REMOVED_6_0_2}}),	-- Fur Lining - Intellect [Rank 2]
		r(85007, {["timeline"] = {ADDED_4_0_3_LAUNCH, REMOVED_6_0_2}}),	-- Fur Lining - Stamina [Rank 2]
		r(85009, {["timeline"] = {ADDED_4_0_3_LAUNCH, REMOVED_6_0_2}}),	-- Fur Lining - Strength [Rank 2]
		r(78437),	-- Heavy Savage Armor Kit
		r(78436),	-- Heavy Savage Leather
		r(78379),	-- Savage Armor Kit
		r(84950),	-- Savage Leather
		r(78419),	-- Scorched Leg Armor
		r(78420),	-- Twilight Leg Armor
	}),
}));
CLASSIC_CATA_LEATHERWORKING = appendGroups(CLASSIC_LEATHERWORKING,
-- #if AFTER CATA
CATA_LEATHERWORKING
-- #else
{}
-- #endif
);
COMMON_CATACLYSM_LEATHERWORKING_RECIPES = applyclassicphase(CATA_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	heavysavageleather(10, i(67095)),	-- Pattern: Assassin's Chestplate (RECIPE!)
	heavysavageleather(10, i(67070)),	-- Pattern: Belt of Nefarious Whispers (RECIPE!)
	-- #if ANYCLASSIC
	heavysavageleather(10, i(238167)),	-- Pattern: Bloodied Dragonscale Belt (RECIPE!)
	heavysavageleather(10, i(238159)),	-- Pattern: Bloodied Dragonscale Boots (RECIPE!)
	heavysavageleather(10, i(238151)),	-- Pattern: Bloodied Dragonscale Bracers (RECIPE!)
	heavysavageleather(10, i(238176)),	-- Pattern: Bloodied Dragonscale Chest (RECIPE!)
	heavysavageleather(10, i(238160)),	-- Pattern: Bloodied Dragonscale Gloves (RECIPE!)
	heavysavageleather(10, i(238168)),	-- Pattern: Bloodied Dragonscale Helm (RECIPE!)
	heavysavageleather(10, i(238175)),	-- Pattern: Bloodied Dragonscale Legs (RECIPE!)
	heavysavageleather(10, i(238152)),	-- Pattern: Bloodied Dragonscale Shoulders (RECIPE!)
	heavysavageleather(10, i(238163)),	-- Pattern: Bloodied Leather Belt (RECIPE!)
	heavysavageleather(10, i(238155)),	-- Pattern: Bloodied Leather Boots (RECIPE!)
	heavysavageleather(10, i(238147)),	-- Pattern: Bloodied Leather Bracers (RECIPE!)
	heavysavageleather(10, i(238171)),	-- Pattern: Bloodied Leather Chest (RECIPE!)
	heavysavageleather(10, i(238148)),	-- Pattern: Bloodied Leather Gloves (RECIPE!)
	heavysavageleather(10, i(238164)),	-- Pattern: Bloodied Leather Helm (RECIPE!)
	heavysavageleather(10, i(238172)),	-- Pattern: Bloodied Leather Legs (RECIPE!)
	heavysavageleather(10, i(238156)),	-- Pattern: Bloodied Leather Shoulders (RECIPE!)
	heavysavageleather(10, i(238158)),	-- Pattern: Bloodied Scale Belt (RECIPE!)
	heavysavageleather(10, i(238157)),	-- Pattern: Bloodied Scale Boots (RECIPE!)
	heavysavageleather(10, i(238149)),	-- Pattern: Bloodied Scale Bracers (RECIPE!)
	heavysavageleather(10, i(238173)),	-- Pattern: Bloodied Scale Chest (RECIPE!)
	heavysavageleather(10, i(238150)),	-- Pattern: Bloodied Scale Gloves (RECIPE!)
	heavysavageleather(10, i(238174)),	-- Pattern: Bloodied Scale Helm (RECIPE!)
	heavysavageleather(10, i(238166)),	-- Pattern: Bloodied Scale Legs (RECIPE!)
	heavysavageleather(10, i(238165)),	-- Pattern: Bloodied Scale Shoulders (RECIPE!)
	heavysavageleather(10, i(238146)),	-- Pattern: Bloodied Wyrmhide Belt (RECIPE!)
	heavysavageleather(10, i(238154)),	-- Pattern: Bloodied Wyrmhide Boots (RECIPE!)
	heavysavageleather(10, i(238145)),	-- Pattern: Bloodied Wyrmhide Bracers (RECIPE!)
	heavysavageleather(10, i(238162)),	-- Pattern: Bloodied Wyrmhide Chest (RECIPE!)
	heavysavageleather(10, i(238153)),	-- Pattern: Bloodied Wyrmhide Gloves (RECIPE!)
	heavysavageleather(10, i(238170)),	-- Pattern: Bloodied Wyrmhide Helm (RECIPE!)
	heavysavageleather(10, i(238169)),	-- Pattern: Bloodied Wyrmhide Legs (RECIPE!)
	heavysavageleather(10, i(238161)),	-- Pattern: Bloodied Wyrmhide Shoulders (RECIPE!)
	-- CRIEVE NOTE: In Cata Classic, these got renamed to Bloodthirsty instead of Vicious.
	heavysavageleather(10, i(67064)),	-- Pattern: Bloodthirsty Charscale Belt (RECIPE!)
	heavysavageleather(10, i(67063)),	-- Pattern: Bloodthirsty Charscale Boots (RECIPE!)
	heavysavageleather(10, i(67049)),	-- Pattern: Bloodthirsty Charscale Bracers (RECIPE!)
	heavysavageleather(10, i(67090)),	-- Pattern: Bloodthirsty Charscale Chest (RECIPE!)
	heavysavageleather(10, i(67053)),	-- Pattern: Bloodthirsty Charscale Gloves (RECIPE!)
	heavysavageleather(10, i(67091)),	-- Pattern: Bloodthirsty Charscale Helm (RECIPE!)
	heavysavageleather(10, i(67079)),	-- Pattern: Bloodthirsty Charscale Legs (RECIPE!)
	heavysavageleather(10, i(67078)),	-- Pattern: Bloodthirsty Charscale Shoulders (RECIPE!)
	heavysavageleather(10, i(67080)),	-- Pattern: Bloodthirsty Dragonscale Belt (RECIPE!)
	heavysavageleather(10, i(67065)),	-- Pattern: Bloodthirsty Dragonscale Boots (RECIPE!)
	heavysavageleather(10, i(67054)),	-- Pattern: Bloodthirsty Dragonscale Bracers (RECIPE!)
	heavysavageleather(10, i(67093)),	-- Pattern: Bloodthirsty Dragonscale Chest (RECIPE!)
	heavysavageleather(10, i(67066)),	-- Pattern: Bloodthirsty Dragonscale Gloves (RECIPE!)
	heavysavageleather(10, i(67081)),	-- Pattern: Bloodthirsty Dragonscale Helm (RECIPE!)
	heavysavageleather(10, i(67092)),	-- Pattern: Bloodthirsty Dragonscale Legs (RECIPE!)
	heavysavageleather(10, i(67055)),	-- Pattern: Bloodthirsty Dragonscale Shoulders (RECIPE!)
	heavysavageleather(10, i(67076)),	-- Pattern: Bloodthirsty Leather Belt (RECIPE!)
	heavysavageleather(10, i(67060)),	-- Pattern: Bloodthirsty Leather Boots (RECIPE!)
	heavysavageleather(10, i(67046)),	-- Pattern: Bloodthirsty Leather Bracers (RECIPE!)
	heavysavageleather(10, i(67087)),	-- Pattern: Bloodthirsty Leather Chest (RECIPE!)
	heavysavageleather(10, i(67048)),	-- Pattern: Bloodthirsty Leather Gloves (RECIPE!)
	heavysavageleather(10, i(67077)),	-- Pattern: Bloodthirsty Leather Helm (RECIPE!)
	heavysavageleather(10, i(67089)),	-- Pattern: Bloodthirsty Leather Legs (RECIPE!)
	heavysavageleather(10, i(67062)),	-- Pattern: Bloodthirsty Leather Shoulders (RECIPE!)
	heavysavageleather(10, i(67044)),	-- Pattern: Bloodthirsty Wyrmhide Belt (RECIPE!)
	heavysavageleather(10, i(67058)),	-- Pattern: Bloodthirsty Wyrmhide Boots (RECIPE!)
	heavysavageleather(10, i(67042)),	-- Pattern: Bloodthirsty Wyrmhide Bracers (RECIPE!)
	heavysavageleather(10, i(67075)),	-- Pattern: Bloodthirsty Wyrmhide Chest (RECIPE!)
	heavysavageleather(10, i(67056)),	-- Pattern: Bloodthirsty Wyrmhide Gloves (RECIPE!)
	heavysavageleather(10, i(67086)),	-- Pattern: Bloodthirsty Wyrmhide Helm (RECIPE!)
	heavysavageleather(10, i(67085)),	-- Pattern: Bloodthirsty Wyrmhide Legs (RECIPE!)
	heavysavageleather(10, i(67074)),	-- Pattern: Bloodthirsty Wyrmhide Shoulders (RECIPE!)
	-- #endif
	heavysavageleather(10, i(67084)),	-- Pattern: Charscale Leg Armor (RECIPE!)
	heavysavageleather(10, i(67094)),	-- Pattern: Chestguard of Nature's Fury (RECIPE!)
	heavysavageleather(10, i(67073)),	-- Pattern: Corded Viper Belt (RECIPE!)
	heavysavageleather(10, i(67100)),	-- Pattern: Dragonkiller Tunic (RECIPE!)
	heavysavageleather(10, i(68193)),	-- Pattern: Dragonscale Leg Armor (RECIPE!)
	heavysavageleather(10, i(71721, {	-- Pattern: Drakehide Leg Armor (RECIPE!)
		["timeline"] = { ADDED_4_2_0 },
	})),
	heavysavageleather(10, i(67068)),	-- Pattern: Lightning Lash (RECIPE!)
	heavysavageleather(10, i(67082)),	-- Pattern: Razor-Edged Cloak (RECIPE!)
	heavysavageleather(10, i(67072)),	-- Pattern: Stormleather Sash (RECIPE!)
	heavysavageleather(10, i(67083)),	-- Pattern: Twilight Dragonscale Cloak (RECIPE!)
	heavysavageleather(10, i(67096)),	-- Pattern: Twilight Scale Chestguard (RECIPE!)
	-- #if ANYCLASSIC
	heavysavageleather(10, i(238103)),	-- Pattern: Vicious Charscale Belt (RECIPE!)
	heavysavageleather(10, i(238102)),	-- Pattern: Vicious Charscale Boots (RECIPE!)
	heavysavageleather(10, i(238094)),	-- Pattern: Vicious Charscale Bracers (RECIPE!)
	heavysavageleather(10, i(238118)),	-- Pattern: Vicious Charscale Chest (RECIPE!)
	heavysavageleather(10, i(238095)),	-- Pattern: Vicious Charscale Gloves (RECIPE!)
	heavysavageleather(10, i(238119)),	-- Pattern: Vicious Charscale Helm (RECIPE!)
	heavysavageleather(10, i(238111)),	-- Pattern: Vicious Charscale Legs (RECIPE!)
	heavysavageleather(10, i(238110)),	-- Pattern: Vicious Charscale Shoulders (RECIPE!)
	heavysavageleather(10, i(238112)),	-- Pattern: Vicious Dragonscale Belt (RECIPE!)
	heavysavageleather(10, i(238104)),	-- Pattern: Vicious Dragonscale Boots (RECIPE!)
	heavysavageleather(10, i(238096)),	-- Pattern: Vicious Dragonscale Bracers (RECIPE!)
	heavysavageleather(10, i(238121)),	-- Pattern: Vicious Dragonscale Chest (RECIPE!)
	heavysavageleather(10, i(238105)),	-- Pattern: Vicious Dragonscale Gloves (RECIPE!)
	heavysavageleather(10, i(238113)),	-- Pattern: Vicious Dragonscale Helm (RECIPE!)
	heavysavageleather(10, i(238120)),	-- Pattern: Vicious Dragonscale Legs (RECIPE!)
	heavysavageleather(10, i(238097)),	-- Pattern: Vicious Dragonscale Shoulders (RECIPE!)
	heavysavageleather(10, i(238108)),	-- Pattern: Vicious Leather Belt (RECIPE!)
	heavysavageleather(10, i(238100)),	-- Pattern: Vicious Leather Boots (RECIPE!)
	heavysavageleather(10, i(238092)),	-- Pattern: Vicious Leather Bracers (RECIPE!)
	heavysavageleather(10, i(238116)),	-- Pattern: Vicious Leather Chest (RECIPE!)
	heavysavageleather(10, i(238093)),	-- Pattern: Vicious Leather Gloves (RECIPE!)
	heavysavageleather(10, i(238109)),	-- Pattern: Vicious Leather Helm (RECIPE!)
	heavysavageleather(10, i(238117)),	-- Pattern: Vicious Leather Legs (RECIPE!)
	heavysavageleather(10, i(238101)),	-- Pattern: Vicious Leather Shoulders (RECIPE!)
	heavysavageleather(10, i(238091)),	-- Pattern: Vicious Wyrmhide Belt (RECIPE!)
	heavysavageleather(10, i(238099)),	-- Pattern: Vicious Wyrmhide Boots (RECIPE!)
	heavysavageleather(10, i(238090)),	-- Pattern: Vicious Wyrmhide Bracers (RECIPE!)
	heavysavageleather(10, i(238107)),	-- Pattern: Vicious Wyrmhide Chest (RECIPE!)
	heavysavageleather(10, i(238098)),	-- Pattern: Vicious Wyrmhide Gloves (RECIPE!)
	heavysavageleather(10, i(238115)),	-- Pattern: Vicious Wyrmhide Helm (RECIPE!)
	heavysavageleather(10, i(238114)),	-- Pattern: Vicious Wyrmhide Legs (RECIPE!)
	heavysavageleather(10, i(238106)),	-- Pattern: Vicious Wyrmhide Shoulders (RECIPE!)
	-- #else
	heavysavageleather(10, i(67064)),	-- Pattern: Vicious Charscale Belt (RECIPE!)
	heavysavageleather(10, i(67063)),	-- Pattern: Vicious Charscale Boots (RECIPE!)
	heavysavageleather(10, i(67049)),	-- Pattern: Vicious Charscale Bracers (RECIPE!)
	heavysavageleather(10, i(67090)),	-- Pattern: Vicious Charscale Chest (RECIPE!)
	heavysavageleather(10, i(67053)),	-- Pattern: Vicious Charscale Gloves (RECIPE!)
	heavysavageleather(10, i(67091)),	-- Pattern: Vicious Charscale Helm (RECIPE!)
	heavysavageleather(10, i(67079)),	-- Pattern: Vicious Charscale Legs (RECIPE!)
	heavysavageleather(10, i(67078)),	-- Pattern: Vicious Charscale Shoulders (RECIPE!)
	heavysavageleather(10, i(67080)),	-- Pattern: Vicious Dragonscale Belt (RECIPE!)
	heavysavageleather(10, i(67065)),	-- Pattern: Vicious Dragonscale Boots (RECIPE!)
	heavysavageleather(10, i(67054)),	-- Pattern: Vicious Dragonscale Bracers (RECIPE!)
	heavysavageleather(10, i(67093)),	-- Pattern: Vicious Dragonscale Chest (RECIPE!)
	heavysavageleather(10, i(67066)),	-- Pattern: Vicious Dragonscale Gloves (RECIPE!)
	heavysavageleather(10, i(67081)),	-- Pattern: Vicious Dragonscale Helm (RECIPE!)
	heavysavageleather(10, i(67092)),	-- Pattern: Vicious Dragonscale Legs (RECIPE!)
	heavysavageleather(10, i(67055)),	-- Pattern: Vicious Dragonscale Shoulders (RECIPE!)
	heavysavageleather(10, i(67076)),	-- Pattern: Vicious Leather Belt (RECIPE!)
	heavysavageleather(10, i(67060)),	-- Pattern: Vicious Leather Boots (RECIPE!)
	heavysavageleather(10, i(67046)),	-- Pattern: Vicious Leather Bracers (RECIPE!)
	heavysavageleather(10, i(67087)),	-- Pattern: Vicious Leather Chest (RECIPE!)
	heavysavageleather(10, i(67048)),	-- Pattern: Vicious Leather Gloves (RECIPE!)
	heavysavageleather(10, i(67077)),	-- Pattern: Vicious Leather Helm (RECIPE!)
	heavysavageleather(10, i(67089)),	-- Pattern: Vicious Leather Legs (RECIPE!)
	heavysavageleather(10, i(67062)),	-- Pattern: Vicious Leather Shoulders (RECIPE!)
	heavysavageleather(10, i(67044)),	-- Pattern: Vicious Wyrmhide Belt (RECIPE!)
	heavysavageleather(10, i(67058)),	-- Pattern: Vicious Wyrmhide Boots (RECIPE!)
	heavysavageleather(10, i(67042)),	-- Pattern: Vicious Wyrmhide Bracers (RECIPE!)
	heavysavageleather(10, i(67075)),	-- Pattern: Vicious Wyrmhide Chest (RECIPE!)
	heavysavageleather(10, i(67056)),	-- Pattern: Vicious Wyrmhide Gloves (RECIPE!)
	heavysavageleather(10, i(67086)),	-- Pattern: Vicious Wyrmhide Helm (RECIPE!)
	heavysavageleather(10, i(67085)),	-- Pattern: Vicious Wyrmhide Legs (RECIPE!)
	heavysavageleather(10, i(67074)),	-- Pattern: Vicious Wyrmhide Shoulders (RECIPE!)
	-- #endif
	heavysavageleather(10, i(52980)),	-- Pristine Hide
}));
MOP_LEATHERWORKING = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	r(110423, {	-- Leatherworking (Zen Master)
		["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 8,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264585, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Pandaria Leatherworking
	r(330201, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Mist of Pandaria]
	r(330202, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Mist of Pandaria]
	r(330203, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Mist of Pandaria]
	r(330204, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Mist of Pandaria]
	r(330205, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Mist of Pandaria]
	n(ARMOR, {
		r(124578),	-- Misthide Belt
		r(124577),	-- Misthide Boots
		r(124576),	-- Misthide Bracers
		r(124573),	-- Misthide Chestguard
		r(124635),	-- Misthide Drape
		r(124574),	-- Misthide Gloves
		r(124571),	-- Misthide Helm
		r(124575),	-- Misthide Leggings
		r(124572),	-- Misthide Shoulders
		r(124637),	-- Quick Strike Cloak
		r(124586),	-- Stormscale Belt
		r(124585),	-- Stormscale Boots
		r(124584),	-- Stormscale Bracers
		r(124581),	-- Stormscale Chestguard
		r(124636),	-- Stormscale Drape
		r(124582),	-- Stormscale Gloves
		r(124579),	-- Stormscale Helm
		r(124583),	-- Stormscale Leggings
		r(124580),	-- Stormscale Shoulders
	}),
	filter(MISC, {
		r(124126),	-- Brutal Leg Armor
		r(124569, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Draconic Leg Reinforcements [Rank 1]
		r(124566, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Draconic Leg Reinforcements [Rank 2]
		r(124561),	-- Draconic Leg Reinforcements [Rank 3]
		r(124551, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Fur Lining - Agility [Rank 3]
		r(124552, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Fur Lining - Intellect [Rank 3]
		r(124553, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Fur Lining - Stamina [Rank 3]
		r(124549, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Fur Lining - Strength [Rank 1]
		r(124554, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Fur Lining - Strength [Rank 3]
		r(124568, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Heavy Leg Reinforcements [Rank 1]
		r(124565, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Heavy Leg Reinforcements [Rank 2]
		r(124563),	-- Heavy Leg Reinforcements [Rank 3]
		r(131865, {["timeline"] = {ADDED_5_2_0}}),	-- Magnificent Hide
		r(124627),	-- Mist-Touched Leather
		r(124567, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Primal Leg Reinforcements [Rank 1]
		r(124564, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Primal Leg Reinforcements [Rank 2]
		r(124559),	-- Primal Leg Reinforcements [Rank 3]
		r(163220, {["timeline"] = {ADDED_6_0_2}}),	-- Prismatic Scale
		r(124628),	-- Sha Armor Kit
		r(124124),	-- Sha-Touched Leg Armor
		r(124125),	-- Toughened Leg Armor
	}),
}));
COMMON_MOP_LEATHERWORKING_RECIPES = applyclassicphase(MOP_PHASE_LANDFALL, sharedData({ ["cost"] = {{ "i", SPIRIT_OF_HARMONY, 1 }}, ["timeline"] = { ADDED_5_0_4 } }, {
	i(86240),	-- Pattern: Contender's Dragonscale Belt (RECIPE!)
	i(86241),	-- Pattern: Contender's Dragonscale Boots (RECIPE!)
	i(86242),	-- Pattern: Contender's Dragonscale Bracers (RECIPE!)
	i(86243),	-- Pattern: Contender's Dragonscale Chestguard (RECIPE!)
	i(86244),	-- Pattern: Contender's Dragonscale Gloves (RECIPE!)
	i(86245),	-- Pattern: Contender's Dragonscale Helm (RECIPE!)
	i(86246),	-- Pattern: Contender's Dragonscale Leggings (RECIPE!)
	i(86247),	-- Pattern: Contender's Dragonscale Shoulders (RECIPE!)
	i(86248),	-- Pattern: Contender's Leather Belt (RECIPE!)
	i(86249),	-- Pattern: Contender's Leather Boots (RECIPE!)
	i(86250),	-- Pattern: Contender's Leather Bracers (RECIPE!)
	i(86251),	-- Pattern: Contender's Leather Chestguard (RECIPE!)
	i(86252),	-- Pattern: Contender's Leather Gloves (RECIPE!)
	i(86253),	-- Pattern: Contender's Leather Helm (RECIPE!)
	i(86254),	-- Pattern: Contender's Leather Leggings (RECIPE!)
	i(86255),	-- Pattern: Contender's Leather Shoulders (RECIPE!)
	i(86256),	-- Pattern: Contender's Scale Belt (RECIPE!)
	i(86257),	-- Pattern: Contender's Scale Boots (RECIPE!)
	i(86258),	-- Pattern: Contender's Scale Bracers (RECIPE!)
	i(86259),	-- Pattern: Contender's Scale Chestguard (RECIPE!)
	i(86260),	-- Pattern: Contender's Scale Gloves (RECIPE!)
	i(86261),	-- Pattern: Contender's Scale Helm (RECIPE!)
	i(86262),	-- Pattern: Contender's Scale Leggings (RECIPE!)
	i(86263),	-- Pattern: Contender's Scale Shoulders (RECIPE!)
	i(86264),	-- Pattern: Contender's Wyrmhide Belt (RECIPE!)
	i(86265),	-- Pattern: Contender's Wyrmhide Boots (RECIPE!)
	i(86266),	-- Pattern: Contender's Wyrmhide Bracers (RECIPE!)
	i(86267),	-- Pattern: Contender's Wyrmhide Chestguard (RECIPE!)
	i(86268),	-- Pattern: Contender's Wyrmhide Gloves (RECIPE!)
	i(86269),	-- Pattern: Contender's Wyrmhide Helm (RECIPE!)
	i(86270),	-- Pattern: Contender's Wyrmhide Leggings (RECIPE!)
	i(86271),	-- Pattern: Contender's Wyrmhide Shoulders (RECIPE!)
}));
DRAENOR_LEATHERWORKING = applyclassicphase(WOD_PHASE_ONE, i(115358, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	["description"] = "This is a reward for completing the introductory Leaterworking questline that can drop from any Draenor mob.",
	["g"] = {
		r(158752, {	-- Leatherworking (Draenor Master)
			["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #endif
			["rank"] = 9,
		}),
		applyclassicphase(BFA_PHASE_ONE, r(264588, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Draenor Leatherworking
		r(330206, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Warlords of Draenor]
		r(330207, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Warlords of Draenor]
		r(330208, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Warlords of Draenor]
		r(330209, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Warlords of Draenor]
		r(330210, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Warlords of Draenor]
		r(171391),	-- Burnished Leather
		r(171260),	-- Journeying Helm
		r(171261),	-- Journeying Robes
		r(171262),	-- Journeying Slacks
		r(176089),	-- Secrets of Draenor Leatherworking
		r(171263),	-- Traveling Helm
		r(171265),	-- Traveling Leggings
		r(171264),	-- Traveling Tunic
	},
})));
COMMON_DRAENOR_LEATHERWORKING_RECIPES = applyclassicphase(WOD_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	i(116328, {	-- Pattern: Brilliant Burnished Cloak (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116345, {	-- Pattern: Burnished Essence (RECIPE!)
		["description"] = "The item is still in game but you can't learn the recipe from it anymore (recipe removed in 9.0.1)",
		["collectible"] = false,
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 5 }},
		["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_10_0_5 },
	}),
	i(116349, {	-- Pattern: Burnished Inscription Bag (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 5 }},
	}),
	i(116347, {	-- Pattern: Burnished Leather Bag (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 5 }},
	}),
	i(116348, {	-- Pattern: Burnished Mining Bag (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 5 }},
	}),
	i(120258, {	-- Pattern: Drums of Fury (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116346, {	-- Pattern: Greater Burnished Essence (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 5 }},
		["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_6_2_0 },
	}),
	i(202232, {	-- Pattern: Impressive Burnished Essence (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 5 }},
		["timeline"] = { ADDED_10_0_5 },
	}),
	i(116325, {	-- Pattern: Leather Refurbishing Kit (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116327, {	-- Pattern: Nimble Burnished Cloak (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116326, {	-- Pattern: Powerful Burnished Cloak (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(202233, {	-- Recipe: Remarkable Burnished Essence (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 5 }},
		["timeline"] = { ADDED_10_0_5 },
	}),
	i(116350, {	-- Pattern: Riding Harness (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 5 }},
	}),
	i(116335, {	-- Pattern: Supple Boots (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116334, {	-- Pattern: Supple Bracers (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116332, {	-- Pattern: Supple Gloves (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116330, {	-- Pattern: Supple Helm (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116331, {	-- Pattern: Supple Leggings (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116329, {	-- Pattern: Supple Shoulderguards (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116333, {	-- Pattern: Supple Vest (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116336, {	-- Pattern: Supple Waistguard (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116344, {	-- Pattern: Wayfaring Belt (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116343, {	-- Pattern: Wayfaring Boots (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116342, {	-- Pattern: Wayfaring Bracers (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116340, {	-- Pattern: Wayfaring Gloves (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116338, {	-- Pattern: Wayfaring Helm (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116339, {	-- Pattern: Wayfaring Leggings (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116337, {	-- Pattern: Wayfaring Shoulderguards (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
	i(116341, {	-- Pattern: Wayfaring Tunic (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_LEATHERWORKING, 1 }},
	}),
}));
LEGION_LEATHERWORKING = applyclassicphase(LEGION_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(ARMOR, {
		r(226115),	-- Blue Chain Leggings
		r(226119),	-- Chain Belt
		r(226113),	-- Chain Boots
		r(226116),	-- Chain Bracers
		r(226118),	-- Chain Gauntlets
		r(226112),	-- Chain Hauberk
		r(226117),	-- Chain Leggings
		r(226121),	-- Chain Pauldrons
		r(226114),	-- Crackling Scale Breastplate
		r(226122),	-- Element Grips
		r(226132),	-- Heavy Scale Belt
		r(226134),	-- Heavy Scale Boots
		r(226123),	-- Heavy Scale Gauntlets
		r(226135),	-- Heavy Scale Hood
		r(226126),	-- Heavy Scale Pants
		r(226129),	-- Heavy Scale Pauldrons
		r(226128),	-- Heavy Scale Shirt
		r(226124),	-- Heavy Scale Wraps
		r(226107),	-- Light Scale Belt
		r(226109),	-- Light Scale Boots
		r(226106),	-- Light Scale Bracers
		r(226105),	-- Light Scale Gloves
		r(226108),	-- Light Scale Jerkin
		r(226111),	-- Light Scale Pants
		r(226110),	-- Shamanic Treads
		r(226137),	-- Spritescale Boots
		r(226125),	-- Spritescale Britches
		r(226127),	-- Spritescale Cinch
		r(226136),	-- Spritescale Circlet
		r(226120),	-- Spritescale Epaulets
		r(226131),	-- Spritescale Gloves
		r(226130),	-- Spritescale Jerkin
		r(226133),	-- Spritescale Wraps
	}),
}))
CLASSIC_CATA_LEGION_LEATHERWORKING = appendGroups(CLASSIC_CATA_LEATHERWORKING,
-- #if AFTER 7.0.3
LEGION_LEATHERWORKING
-- #else
{}
-- #endif
);
BFA_LEATHERWORKING = applyclassicphase(BFA_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	r(330216, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Battle for Azeroth]
	r(330218, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Battle for Azeroth]
	r(330219, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Battle for Azeroth]
	r(330220, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Battle for Azeroth]
	r(330221, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Battle for Azeroth]
	n(ARMOR, {
		r(256756),	-- Coarse Leather Armguards
		r(256750),	-- Coarse Leather Gauntlets
		r(256751),	-- Coarse Leather Helm
		r(256752),	-- Coarse Leather Leggings
		r(256754),	-- Coarse Leather Pauldrons
		r(256748),	-- Coarse Leather Treads
		r(256749),	-- Coarse Leather Vest
		r(256755),	-- Coarse Leather Waistguard
		r(285079, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Mistscale Boots
		r(285080, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Mistscale Greaves
		r(285083, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Tempest Boots
		r(285084, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Tempest Leggings
		r(256765),	-- Hardened Tempest Boots
		r(272278),	-- Hardened Tempest Hide
		r(256768),	-- Hardened Tempest Leggings
		r(269528),	-- Honorable Combatant's Leather Armguards [Rank 1]
		r(269519),	-- Honorable Combatant's Leather Gauntlets [Rank 1]
		r(269522),	-- Honorable Combatant's Leather Leggings [Rank 1]
		r(269516),	-- Honorable Combatant's Leather Treads [Rank 1]
		r(269525),	-- Honorable Combatant's Leather Waistguard [Rank 1]
		r(269543),	-- Honorable Combatant's Mail Armguards [Rank 1]
		r(269534),	-- Honorable Combatant's Mail Gauntlets [Rank 1]
		r(269537),	-- Honorable Combatant's Mail Leggings [Rank 1]
		r(269531),	-- Honorable Combatant's Mail Treads [Rank 1]
		r(269540),	-- Honorable Combatant's Mail Waistguard [Rank 1]
		r(256771),	-- Mistscale Boots
		r(256774),	-- Mistscale Leggings
		r(256757),	-- Shimmerscale Armguards
		r(256762),	-- Shimmerscale Gauntlets
		r(256761),	-- Shimmerscale Helm
		r(256760),	-- Shimmerscale Leggings
		r(256759),	-- Shimmerscale Pauldrons
		r(256764),	-- Shimmerscale Treads
		r(256763),	-- Shimmerscale Vest
		r(256758),	-- Shimmerscale Waistguard
		r(282312, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Leather Armguards [Rank 1]
		r(282324, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Leather Gauntlets [Rank 1]
		r(282321, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Leather Leggings [Rank 1]
		r(282327, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Leather Treads [Rank 1]
		r(282318, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Leather Waistguard [Rank 1]
		r(282287, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Mail Armguards [Rank 1]
		r(282306, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Mail Gauntlets [Rank 1]
		r(282302, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Mail Leggings [Rank 1]
		r(282309, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Mail Treads [Rank 1]
		r(282290, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Mail Waistguard [Rank 1]
		r(304424, {["timeline"] = (ADDED_8_3_0)}),	-- Uncanny Combatant's Leather Armguards [Rank 1]
		r(304415, {["timeline"] = (ADDED_8_3_0)}),	-- Uncanny Combatant's Leather Gauntlets [Rank 1]
		r(304418, {["timeline"] = (ADDED_8_3_0)}),	-- Uncanny Combatant's Leather Leggings [Rank 1]
		r(304412, {["timeline"] = (ADDED_8_3_0)}),	-- Uncanny Combatant's Leather Treads [Rank 1]
		r(304421, {["timeline"] = (ADDED_8_3_0)}),	-- Uncanny Combatant's Leather Waistguard [Rank 1]
		r(304439, {["timeline"] = (ADDED_8_3_0)}),	-- Uncanny Combatant's Mail Armguards [Rank 1]
		r(304430, {["timeline"] = (ADDED_8_3_0)}),	-- Uncanny Combatant's Mail Gauntlets [Rank 1]
		r(304433, {["timeline"] = (ADDED_8_3_0)}),	-- Uncanny Combatant's Mail Leggings [Rank 1]
		r(304427, {["timeline"] = (ADDED_8_3_0)}),	-- Uncanny Combatant's Mail Treads [Rank 1]
		r(304436, {["timeline"] = (ADDED_8_3_0)}),	-- Uncanny Combatant's Mail Waistguard [Rank 1]
	}),
	filter(MISC, {
		r(287273, {["timeline"] = {ADDED_8_1_0}}),	-- Aqueous Reskinning
		r(278423),	-- Amber Rallying Horn
		r(256790),	-- Coarse Leather Barding [Rank 1]
		r(286019, {["timeline"] = {ADDED_8_1_0}}),	-- Coarse Leather Barding [Rank 2]
		r(256791),	-- Drums of the Maelstrom
		r(269552),	-- Honorable Combatant's Bow [Rank 1]
		r(286652, {["timeline"] = {ADDED_8_1_0}}),	-- Sanguinated Reskinning
		r(285895, {["timeline"] = {ADDED_8_1_0}}),	-- Scarlet Herring Lure
		r(256793),	-- Shimmerscale Diving Helmet
		r(256792),	-- Shimmerscale Diving Suit
		r(276256),	-- Tempest Hide Pouch
	}),
	n(WEAPONS, {
		r(256778),	-- Coarse Leather Cestus
		r(256782),	-- Hardened Tempest Knuckles [Rank 1]
		r(256783),	-- Hardened Tempest Knuckles [Rank 2]
		r(269552),	-- Honorable Combatant's Bow [Rank 1]
		r(256779),	-- Mistscale Knuckles [Rank 1]
		r(256780),	-- Mistscale Knuckles [Rank 2]
		r(256787),	-- Recurve Bow of the Strands [Rank 1]
		r(256788),	-- Recurve Bow of the Strands [Rank 2]
		r(256777),	-- Shimmerscale Striker
		r(282277, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Bow [Rank 1]
		r(304442, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Bow [Rank 1]
	}),
}));
NAZJATAR_LEATHERWORKING = applyclassicphase(BFA_PHASE_THREE, sharedData({ ["timeline"] = { ADDED_8_2_0 } }, {
	n(ARMOR, {
		r(299025),	-- Cragscale Boots
		r(299028),	-- Cragscale Greaves
		r(299019),	-- Dredged Leather Boots
		r(299022),	-- Dredged Leather Leggings
		r(294808),	-- Notorious Combatant's Leather Armguards [Rank 1]
		r(294799),	-- Notorious Combatant's Leather Gauntlets [Rank 1]
		r(294802),	-- Notorious Combatant's Leather Leggings [Rank 1]
		r(294796),	-- Notorious Combatant's Leather Treads [Rank 1]
		r(294805),	-- Notorious Combatant's Leather Waistguard [Rank 1]
		r(294823),	-- Notorious Combatant's Mail Armguards [Rank 1]
		r(294814),	-- Notorious Combatant's Mail Gauntlets [Rank 1]
		r(294817),	-- Notorious Combatant's Mail Leggings [Rank 1]
		r(294811),	-- Notorious Combatant's Mail Treads [Rank 1]
		r(294820),	-- Notorious Combatant's Mail Waistguard [Rank 1]
	}),
	filter(MISC, {
		r(301411),	-- Comfortable Rider's Barding
		r(301405),	-- Dredged Leather Bladder
	}),
	n(WEAPONS, {
		r(294826),	-- Notorious Combatant's Bow [Rank 1]
	}),
}));
SL_LEATHERWORKING = applyclassicphase(SHADOWLANDS_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	r(309038),	-- Shadowlands Leatherworking
	n(ARMOR, {
		r(309213, {	-- Boneshatter Armguards [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
		r(309208, {	-- Boneshatter Gauntlets [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
		r(309210, {	-- Boneshatter Greaves [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
		r(309209, {	-- Boneshatter Helm [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
		r(309211, {	-- Boneshatter Pauldrons [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
		r(309206, {	-- Boneshatter Treads [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
		r(309207, {	-- Boneshatter Vest [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
		r(309212, {	-- Boneshatter Waistguard [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
		r(309181),	-- Desolate Leather Armguards
		r(309176),	-- Desolate Leather Gauntlets
		r(309186),	-- Desolate Scale Greaves
		r(309177),	-- Desolate Leather Helm
		r(309178),	-- Desolate Leather Leggings
		r(309179),	-- Desolate Leather Pauldrons
		r(309174),	-- Desolate Leather Treads
		r(309175),	-- Desolate Leather Vest
		r(309180),	-- Desolate Leather Waistguard
		r(309189),	-- Desolate Scale Armguards
		r(309184),	-- Desolate Scale Gauntlets
		r(309185),	-- Desolate Scale Helm
		r(309187),	-- Desolate Scale Pauldrons
		r(309182),	-- Desolate Scale Treads
		r(309183),	-- Desolate Scale Vest
		r(309188),	-- Desolate Scale Waistguard
		r(309237),	-- Shadebound Armguards
		r(309232),	-- Shadebound Gauntlets
		r(309233),	-- Shadebound Helm
		r(309234),	-- Shadebound Leggings
		r(309235),	-- Shadebound Pauldrons
		r(309230),	-- Shadebound Treads
		r(309231),	-- Shadebound Vest
		r(309236),	-- Shadebound Waistguard
		r(309245),	-- Shadowscale Armguards
		r(309240),	-- Shadowscale Gauntlets
		r(309241),	-- Shadowscale Helm
		r(309242),	-- Shadowscale Leggings
		r(309243),	-- Shadowscale Pauldrons
		r(309238),	-- Shadowscale Treads
		r(309239),	-- Shadowscale Vest
		r(309244),	-- Shadowscale Waistguard
		r(309205, {	-- Umbrahide Armguards [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
		r(309200, {	-- Umbrahide Gauntlets [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
		r(309201, {	-- Umbrahide Helm [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
		r(309202, {	-- Umbrahide Leggings [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
		r(309203, {	-- Umbrahide Pauldrons [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
		r(309198, {	-- Umbrahide Treads [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
		r(309199, {	-- Umbrahide Vest [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
		r(309204, {	-- Umbrahide Waistguard [Rank 1]
			["sourceQuests"] = { 62798 },	-- The Vessels of Leather and Bone
		}),
	}),
	filter(MISC, {
		r(324735),	-- Comfortable Rider's Barding
		r(343195),	-- Crafter's Mark I
		r(324087),	-- Desolate Armor Kit
		r(309173),	-- Drums of Deathly Ferocity
		r(308897),	-- Heavy Callous Hide
		r(308899),	-- Heavy Desolate Leather
		r(343660),	-- Novice Crafter's Mark
	}),
	n(WEAPONS, {
		r(309190),	-- Bone Bound Knuckles
		r(309192),	-- Composite Bow
		r(309193),	-- Composite Crossbow
		r(309191),	-- Desolate Leather Cestus
	}),
}));
DF_LEATHERWORKING = applyclassicphase(DF_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	r(366249),	-- Dragon Isles Leatherworking
	n(ARMOR, {
		r(375103),	-- Pioneer's Leather Boots
		r(375104),	-- Pioneer's Leather Wristguards
		r(375105),	-- Pioneer's Leather Tunic
		r(395863),	-- Pioneer's Practiced Belt
		r(395864),	-- Pioneer's Practiced Cowl
		r(395865),	-- Pioneer's Practiced Gloves
		r(395867),	-- Pioneer's Practiced Leggings
		r(395868),	-- Pioneer's Practiced Shoulderpads
		r(375106),	-- Trailblazer's Scale Boots
		r(375107),	-- Trailblazer's Scale Bracers
		r(375108),	-- Trailblazer's Scale Vest
		r(395839),	-- Trailblazer's Toughened Coif
		r(395844),	-- Trailblazer's Toughened Chainbelt
		r(395845),	-- Trailblazer's Toughened Grips
		r(395847),	-- Trailblazer's Toughened Legguards
		r(395851),	-- Trailblazer's Toughened Spikes
	}),
	filter(PROFESSION_EQUIPMENT, {
		r(375188),	-- Alchemist's Hat
		r(375182),	-- Durable Pack
		r(375181),	-- Floral Basket
		r(375184),	-- Jeweler's Cover
		r(375185),	-- Protective Gloves
		r(375186),	-- Resilient Smock
		r(375183),	-- Skinner's Cap
		r(375187),	-- Smithing Apron
	}),
	filter(MISC, {
		r(375178),	-- Earthshine Scales
		r(375168),	-- Feral Hide Drums
		r(375179),	-- Frostbite Scales
		r(409557, {["timeline"] = {ADDED_10_1_0}}),	-- Hide-Bound Drums
		r(409555, {["timeline"] = {ADDED_10_1_0}}),	-- Lustrous Scaled Drums
		r(375174),	-- Mireslush Hide
		r(389195),	-- Recraft Equipment
		r(375164),	-- Reinforced Armor Kit
		r(375173),	-- Stonecrust Hide
	}),
	n(WEAPONS, {
		r(375102),	-- Bonewrought Crossbow
	}),
}));
TWW_LEATHERWORKING = sharedData({ ["timeline"] = { ADDED_11_0_2 } }, {
	r(423340),	-- Khaz Algar Leatherworking
	r(425142),	-- Recraft Equipment
	n(ARMOR, {
		filter(LEATHER, {
			r(443702),	-- Spelunker's Leather Bands
			r(443696),	-- Spelunker's Leather Footpads
			r(443695),	-- Spelunker's Leather Jerkin
			r(443699),	-- Spelunker's Practiced Britches
			r(443698),	-- Spelunker's Practiced Hat
			r(443697),	-- Spelunker's Practiced Mitts
			r(443701),	-- Spelunker's Practiced Sash
			r(443700),	-- Spelunker's Practiced Shoulders
		}),
		filter(MAIL, {
			r(443710),	-- Tracker's Chitin Cuffs
			r(443704),	-- Tracker's Chitin Galoshes
			r(443703),	-- Tracker's Chitin Hauberk
			r(443709),	-- Tracker's Toughened Girdle
			r(443705),	-- Tracker's Toughened Handguards
			r(443706),	-- Tracker's Toughened Headgear
			r(443707),	-- Tracker's Toughened Links
			r(443708),	-- Tracker's Toughened Shoulderguards
		}),
	}),
	filter(PROFESSION_EQUIPMENT, {
		r(444105),	-- Apothecary's Cap
		r(444112),	-- Gardener's Basket
		r(444114),	-- Gemcutter's Apron
		r(444120),	-- Hideseeker's Hat
		r(444118),	-- Hideseeker's Pack
		r(444116),	-- Hideshaper's Cover
		r(444110),	-- Scrapsmith's Gloves
		r(444107),	-- Steelsmith's Apron
	}),
	filter(MISC, {
		r(444104),	-- Dual Layered Armor Kit
		r(444122),	-- Thunderous Drums
	}),
	filter(REAGENTS, {
		r(444075),	-- Carapace-Backed Hide
		r(444086),	-- Chitin Armor Banding
		r(444076),	-- Crystalfused Hide
		r(444079),	-- Leyfused Hide
		r(444078),	-- Sporecoated Hide
		r(444087),	-- Storm-Touched Weapon Wrap
		r(444077),	-- Writhing Hide
	}),
});