---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local sks = function(cost, item)
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 161, cost });	-- Stone Keeper's Shard
	-- #endif
	return item;
end
local wmoh = function(cost, item)
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 126, cost });	-- Wintergrasp Mark of Honor
	-- #endif
	return item;
end
local BLACK_WAR_MAMMOTH_ALLIANCE = pvp({
	moh(15, sks(300, i(43956))),	-- Black War Mammoth (A) (MOUNT!)
});
local BLACK_WAR_MAMMOTH_HORDE = pvp({
	moh(15, sks(300, i(44077))),	-- Black War Mammoth (H) (MOUNT!)
});
local ARCANUM_ITEMS = pvp({
	sks(40, i(44075, {	-- Arcanum of Dominance
		["timeline"] = { REMOVED_5_0_4 },
	})),
	sks(40, i(44069, {	-- Arcanum of Triumph
		["timeline"] = { REMOVED_5_0_4 },
	})),
	moh(1, sks(30, i(44067))),	-- Inscription of Triumph
	moh(1, sks(30, i(44068))),	-- Inscription of Dominance
})
local JEWELCRAFTING_RECIPES = pvp({
	-- #if BEFORE CATA
	moh(1, sks(12, i(41730))),	-- Design: Durable Monarch Topaz [WRATH] / Design: Willful Monarch Topaz [CATA+] (RECIPE!)
	sks(12, i(41732, {	-- Design: Empowered Monarch Topaz [WRATH] / Design: Lucent Monarch Topaz [CATA+] (RECIPE!)
		["timeline"] = { REMOVED_4_0_1 },
	})),
	-- #endif
	moh(1, sks(24, i(41742))),	-- Design: Enigmatic Skyflare Diamond (RECIPE!)
	moh(1, sks(24, i(41743))),	-- Design: Forlorn Skyflare Diamond (RECIPE!)
	moh(1, sks(24, i(41744))),	-- Design: Impassive Skyflare Diamond (RECIPE!)
	moh(1, sks(12, i(41733))),	-- Design: Lucent Monarch Topaz (RECIPE!)
	-- #if AFTER CATA
	sks(12, i(41732, {	-- Design: Lucent Monarch Topaz [CATA+] / Design: Empowered Monarch Topaz [WRATH]
		["timeline"] = { REMOVED_4_0_1 },
	})),
	-- #endif
	moh(1, sks(12, i(41740))),	-- Design: Mysterious Twilight Opal (RECIPE!)
	moh(1, sks(12, i(41727))),	-- Design: Mystic Autumn's Glow (RECIPE!)
	-- #if BEFORE CATA
	sks(12, i(41739, {	-- Design: Opaque Forest Emerald [WRATH] / Design: Turbid Forest Emerald [CATA+] (RECIPE!)
		["timeline"] = { REMOVED_4_0_1 },
	})),
	-- #endif
	-- #if AFTER CATA
	sks(12, i(41736, {	-- Design: Radiant Forest Emerald [CATA+] / Design: Tense Forest Emerald [WRATH] (RECIPE!)
		["timeline"] = { REMOVED_4_0_1 },
	})),
	-- #endif
	moh(1, sks(12, i(41734))),	-- Design: Resplendent Monarch Topaz (RECIPE!)
	moh(1, sks(12, i(41735))),	-- Design: Shattered Forest Emerald (RECIPE!)
	moh(1, sks(12, i(41738))),	-- Design: Steady Forest Emerald (RECIPE!)
	moh(1, sks(12, i(41728))),	-- Design: Stormy Sky Sapphire (RECIPE!)
	-- #if BEFORE CATA
	sks(12, i(41736, {	-- Design: Tense Forest Emerald [WRATH] / Design: Radiant Forest Emerald [CATA+] (RECIPE!)
		["timeline"] = { REMOVED_4_0_1 },
	})),
	-- #endif
	moh(1, sks(12, i(41737))),	-- Design: Turbid Forest Emerald (RECIPE!)
	-- #if AFTER CATA
	sks(12, i(41739, {	-- Design: Turbid Forest Emerald [CATA+] / Design: Opaque Forest Emerald [WRATH] (RECIPE!)
		["timeline"] = { REMOVED_4_0_1 },
	})),
	moh(1, sks(12, i(41730))),	-- Design: Willful Monarch Topaz [CATA+] / Design: Durable Monarch Topaz [WRATH] (RECIPE!)
	-- #endif
	moh(1, sks(15, i(44081))),	-- Enigmatic Starflare Diamond
	moh(1, sks(15, i(44084))),	-- Forlorn Starflare Diamond
	moh(1, sks(15, i(44082))),	-- Impassive Starflare Diamond
	moh(1, sks(15, i(44087))),	-- Persistent Earthshatter Diamond
	moh(1, sks(15, i(44088))),	-- Powerful Earthshatter Diamond
	moh(1, sks(15, i(44076))),	-- Swift Starflare Diamond
	moh(1, sks(15, i(44078))),	-- Tireless Starflare Diamond
	moh(1, sks(15, i(44089))),	-- Trenchant Earthshatter Diamond
	moh(1, sks(20, i(44066))),	-- Kharmaa's Grace
});
local PHASE_ONE_TRINKETS = applyclassicphase(WRATH_PHASE_ONE, pvp({
	-- NOTE: These were previously marked as REMOVED_4_0_1, but they are still in Cata Classic
	moh(1, wmoh(25, i(44914))),	-- Anvil of Titans
	moh(1, wmoh(25, i(44912))),	-- Flow of Knowledge
}));
local PHASE_TWO_TRINKETS = applyclassicphase(WRATH_PHASE_TWO, pvp({
	-- NOTE: These were previously marked as REMOVED_4_0_1, but they are still in Cata Classic
	moh(1, wmoh(25, i(46086))),	-- Platinum Disks of Battle
	moh(1, wmoh(25, i(46087))),	-- Platinum Disks of Sorcery
	moh(1, wmoh(25, i(46088))),	-- Platinum Disks of Swiftness
	moh(1, wmoh(25, i(46083))), -- Titan-Forged Rune of Accuracy
	moh(1, wmoh(25, i(46085))), -- Titan-Forged Rune of Alacrity
	moh(1, wmoh(25, i(46081))),	-- Titan-Forged Rune of Audacity
	moh(1, wmoh(25, i(46084))),	-- Titan-Forged Rune of Cruelty
	moh(1, wmoh(25, i(46082))),	-- Titan-Forged Rune of Determination
}));
local WINTERGRASP_BELTS = applyclassicphase(WRATH_PHASE_THREE, pvp({
	moh(1, wmoh(15, i(46076))),	-- Titan-Forged Belt of Dominance
	moh(1, wmoh(15, i(46077))),	-- Titan-Forged Belt of Salvation
	moh(1, wmoh(15, i(46078))),	-- Titan-Forged Belt of Triumph
	moh(1, wmoh(15, i(46079))),	-- Titan-Forged Cord of Dominance
	moh(1, wmoh(15, i(46080))),	-- Titan-Forged Cord of Salvation
	moh(1, wmoh(15, i(46071))),	-- Titan-Forged Girdle of Salvation
	moh(1, wmoh(15, i(46072))),	-- Titan-Forged Girdle of Triumph
	moh(1, wmoh(15, i(46073))),	-- Titan-Forged Waistguard of Dominance
	moh(1, wmoh(15, i(46074))),	-- Titan-Forged Waistguard of Salvation
	moh(1, wmoh(15, i(46075))),	-- Titan-Forged Waistguard of Triumph
}));
local WINTERGRASP_BOOTS = applyclassicphase(WRATH_PHASE_ONE, pvp({
	moh(1, wmoh(15, i(44891))),	-- Titan-Forged Boots of Dominance
	moh(1, wmoh(15, i(44892))),	-- Titan-Forged Boots of Salvation
	moh(1, wmoh(15, i(44893))),	-- Titan-Forged Boots of Triumph
	moh(1, wmoh(15, i(44894))),	-- Titan-Forged Greaves of Salvation
	moh(1, wmoh(15, i(44895))),	-- Titan-Forged Greaves of Triumph
	moh(1, wmoh(15, i(44896))),	-- Titan-Forged Sabatons of Dominance
	moh(1, wmoh(15, i(44897))),	-- Titan-Forged Sabatons of Salvation
	moh(1, wmoh(15, i(44898))),	-- Titan-Forged Sabatons of Triumph
	moh(1, wmoh(15, i(44899))),	-- Titan-Forged Slippers of Dominance
	moh(1, wmoh(15, i(44900))),	-- Titan-Forged Slippers of Salvation
}));
local WINTERGRASP_BRACERS = applyclassicphase(WRATH_PHASE_THREE, pvp({
	moh(1, wmoh(15, i(48974))),	-- Titan-Forged Armwraps of Dominance
	moh(1, wmoh(15, i(48975))),	-- Titan-Forged Armwraps of Salvation
	moh(1, wmoh(15, i(48976))),	-- Titan-Forged Armwraps of Triumph
	moh(1, wmoh(15, i(48977))),	-- Titan-Forged Bracers of Salvation
	moh(1, wmoh(15, i(48978))),	-- Titan-Forged Bracers of Triumph
	moh(1, wmoh(15, i(48979))),	-- Titan-Forged Cuffs of Salvation
	moh(1, wmoh(15, i(48980))),	-- Titan-Forged Wristguards of Dominance
	moh(1, wmoh(15, i(48981))),	-- Titan-Forged Wristguards of Salvation
	moh(1, wmoh(15, i(48982))),	-- Titan-Forged Wristguards of Triumph
}));
local WINTERGRASP_CHESTS = applyclassicphase(WRATH_PHASE_TWO, pvp({
	moh(2, wmoh(40, i(46058))),	-- Titan-Forged Breastplate of Triumph
	moh(2, wmoh(40, i(46059))),	-- Titan-Forged Chain Armor of Triumph
	moh(2, wmoh(40, i(46057))),	-- Titan-Forged Chestguard of Salvation
	moh(2, wmoh(40, i(46064))),	-- Titan-Forged Leather Chestguard of Dominance
	moh(2, wmoh(40, i(46063))),	-- Titan-Forged Leather Chestguard of Salvation
	moh(2, wmoh(40, i(46062))),	-- Titan-Forged Leather Tunic of Triumph
	moh(2, wmoh(40, i(46061))),	-- Titan-Forged Mail Armor of Domination
	moh(2, wmoh(40, i(46065))),	-- Titan-Forged Raiment of Dominance
	moh(2, wmoh(40, i(46066))),	-- Titan-Forged Raiment of Salvation
	moh(2, wmoh(40, i(46060))),	-- Titan-Forged Ringmail of Salvation
}));
local WINTERGRASP_CLOAKS = applyclassicphase(WRATH_PHASE_THREE, pvp({
	moh(1, wmoh(25, i(51570))),	-- Titan-Forged Cloak of Ascendancy
	moh(1, wmoh(25, i(51571))),	-- Titan-Forged Cloak of Victory
}));
local WINTERGRASP_COMMENDATION = pvp({
	wmoh(9, sks(30, i(44115, {	-- Wintergrasp Commendation
		["timeline"] = { REMOVED_4_0_1 },
	}))),
});
local WINTERGRASP_HELMS = applyclassicphase(WRATH_PHASE_ONE, pvp({
	moh(2, wmoh(40, i(44903))),	-- Titan-Forged Chain Helm of Triumph
	moh(2, wmoh(40, i(44910))),	-- Titan-Forged Hood of Dominance
	moh(2, wmoh(40, i(44909))),	-- Titan-Forged Hood of Salvation
	moh(2, wmoh(40, i(44907))),	-- Titan-Forged Leather Helm of Dominance
	moh(2, wmoh(40, i(44906))),	-- Titan-Forged Leather Helm of Salvation
	moh(2, wmoh(40, i(44908))),	-- Titan-Forged Leather Helm of Triumph
	moh(2, wmoh(40, i(44904))),	-- Titan-Forged Mail Helm of Dominance
	moh(2, wmoh(40, i(44901))),	-- Titan-Forged Plate Headcover of Salvation
	moh(2, wmoh(40, i(44902))),	-- Titan-Forged Plate Helm of Triumph
	moh(2, wmoh(40, i(44905))),	-- Titan-Forged Ringmail Helm of Salvation
}));
local WINTERGRASP_LEGS = applyclassicphase(WRATH_PHASE_THREE, pvp({
	moh(2, wmoh(40, i(48983))),	-- Titan-Forged Chain Leggings of Triumph
	moh(2, wmoh(40, i(48991))),	-- Titan-Forged Cloth Leggings of Salvation
	moh(2, wmoh(40, i(48997))),	-- Titan-Forged Cloth Trousers of Domination
	moh(2, wmoh(40, i(48998))),	-- Titan-Forged Leather Legguards of Dominance
	moh(2, wmoh(40, i(48987))),	-- Titan-Forged Leather Legguards of Salvation
	moh(2, wmoh(40, i(48988))),	-- Titan-Forged Leather Legguards of Triumph
	moh(2, wmoh(40, i(48990))),	-- Titan-Forged Mail Leggings of Dominance
	moh(2, wmoh(40, i(48992))),	-- Titan-Forged Plate Legguards of Salvation
	moh(2, wmoh(40, i(48993))),	-- Titan-Forged Plate Legguards of Triumph
	moh(2, wmoh(40, i(48994))),	-- Titan-Forged Ringmail Leggings of Salvation
}));
local WINTERGRASP_NECKS = applyclassicphase(WRATH_PHASE_THREE, pvp({
	-- NOTE: These were previously marked as REMOVED_4_0_1, but they are still in Cata Classic
	moh(1, wmoh(15, i(51568))),	-- Titan-Forged Pendant of Ascendancy
	moh(1, wmoh(15, i(51569))),	-- Titan-Forged Pendant of Victory
}));
local WINTERGRASP_RINGS = applyclassicphase(WRATH_PHASE_THREE, pvp({
	-- NOTE: These were previously marked as REMOVED_4_0_1, but they are still in Cata Classic
	moh(1, wmoh(15, i(48999))),	-- Titan-Forged Band of Ascendancy
	moh(1, wmoh(15, i(49000))),	-- Titan-Forged Band of Victory
}));
local WINTERGRASP_SHOULDERS = applyclassicphase(WRATH_PHASE_FOUR, pvp({
	moh(2, wmoh(40, i(51573))),	-- Titan-Forged Shoulderpads of Domination
	moh(2, wmoh(40, i(51572))),	-- Titan-Forged Shoulderpads of Salvation
	moh(2, wmoh(40, i(51581))),	-- Titan-Forged Shoulderplates of Salvation
	moh(2, wmoh(40, i(51580))),	-- Titan-Forged Shoulderplates of Triumph
	moh(2, wmoh(40, i(51578))),	-- Titan-Forged Shoulders of Dominance
	moh(2, wmoh(40, i(51579))),	-- Titan-Forged Shoulders of Salvation
	moh(2, wmoh(40, i(51577))),	-- Titan-Forged Shoulders of Triumph
	moh(2, wmoh(40, i(51574))),	-- Titan-Forged Spaulders of Dominance
	moh(2, wmoh(40, i(51575))),	-- Titan-Forged Spaulders of Salvation
	moh(2, wmoh(40, i(51576))),	-- Titan-Forged Spaulders of Triumph
}));
local WINTERGRASP_HEIRLOOMS = pvp({
	moh(8, i(122375, {	-- Aged Pauldrons of The Five Thunders
		["timeline"] = { ADDED_6_1_0 },
	})),
	moh(12, i(122338, {	-- Ancient Heirloom Armor Casing
		["timeline"] = { ADDED_6_1_0 },
		["sym"] = {{ "fill" }},	-- simply fill this item
	})),
	moh(14, i(122339, {	-- Ancient Heirloom Scabbard
		["timeline"] = { ADDED_6_1_0 },
		["sym"] = {{ "fill" }},	-- simply fill this item
	})),
	moh(10, i(122369, {	-- Battleworn Thrash Blade
		["timeline"] = { ADDED_6_1_0 },
	})),
	moh(8, i(122376, {	-- Exceptional Stormshroud Shoulders
		["timeline"] = { ADDED_6_1_0 },
	})),
	moh(8, i(122378, {	-- Exquisite Sunderseer Mantle
		["timeline"] = { ADDED_6_1_0 },
	})),
	moh(4, i(122371, {	-- Inherited Insignia of the Alliance
		["timeline"] = { ADDED_6_1_0 },
	})),
	moh(4, i(122370, {	-- Inherited Insignia of the Horde
		["timeline"] = { ADDED_6_1_0 },
	})),
	moh(4, i(122530, {	-- Inherited Mark of Tyranny
		["timeline"] = { ADDED_6_1_0 },
	})),
	moh(10, i(122368, {	-- Grand Staff of Jordan
		["timeline"] = { ADDED_6_1_0 },
	})),
	moh(8, i(122377, {	-- Lasting Feralheart Spaulders
		["timeline"] = { ADDED_6_1_0 },
	})),
	moh(8, i(122373, {	-- Pristine Lightforge Spaulders
		["timeline"] = { ADDED_6_1_0 },
	})),
	moh(8, i(122374, {	-- Prized Beastmaster's Mantle
		["timeline"] = { ADDED_6_1_0 },
	})),
	moh(10, i(122365, {	-- Reforged Truesilver Champion
		["timeline"] = { ADDED_6_1_0 },
	})),
	moh(10, i(122364, {	-- Sharpened Scarlet Kris
		["timeline"] = { ADDED_6_1_0 },
	})),
	moh(8, i(122372, {	-- Strengthened Stockade Pauldrons
		["timeline"] = { ADDED_6_1_0 },
	})),
	moh(10, i(122367, {	-- The Blessed Hammer of Grace
		["timeline"] = { ADDED_6_1_0 },
	})),
	moh(10, i(122366, {	-- Upgraded Dwarven Hand Cannon
		["timeline"] = { ADDED_6_1_0 },
	})),

	-- Old Heirlooms before they became learnable
	sks(200, i(44102, {	-- Aged Pauldrons of The Five Thunders
		["timeline"] = { REMOVED_6_1_0 },
	})),
	sks(200, i(44096, {	-- Battleworn Thrash Blade
		["timeline"] = { REMOVED_6_1_0 },
	})),
	sks(200, i(44103, {	-- Exceptional Stormshroud Shoulders
		["timeline"] = { REMOVED_6_1_0 },
	})),
	sks(200, i(44107, {	-- Exquisite Sunderseer Mantle
		["timeline"] = { REMOVED_6_1_0 },
	})),
	sks(250, i(44098, {	-- Inherited Insignia of the Alliance
		["timeline"] = { REMOVED_6_1_0 },
	})),
	sks(250, i(44097, {	-- Inherited Insignia of the Horde
		["timeline"] = { REMOVED_6_1_0 },
	})),
	sks(325, i(44095, {	-- Grand Staff of Jordan
		["timeline"] = { REMOVED_6_1_0 },
	})),
	sks(200, i(44105, {	-- Lasting Feralheart Spaulders
		["timeline"] = { REMOVED_6_1_0 },
	})),
	sks(200, i(44100, {	-- Pristine Lightforge Spaulders
		["timeline"] = { REMOVED_6_1_0 },
	})),
	sks(200, i(44101, {	-- Prized Beastmaster's Mantle
		["timeline"] = { REMOVED_6_1_0 },
	})),
	sks(325, i(44092, {	-- Reforged Truesilver Champion
		["timeline"] = { REMOVED_6_1_0 },
	})),
	sks(200, i(44091, {	-- Sharpened Scarlet Kris
		["timeline"] = { REMOVED_6_1_0 },
	})),
	sks(200, i(44099, {	-- Strengthened Stockade Pauldrons
		["timeline"] = { REMOVED_6_1_0 },
	})),
	sks(250, i(44094, {	-- The Blessed Hammer of Grace
		["timeline"] = { REMOVED_6_1_0 },
	})),
	sks(325, i(44093, {	-- Unpgraded Dwarven Hand Cannon
		["timeline"] = { REMOVED_6_1_0 },
	})),
});

-- Group content that changes randomly throughout the ages because Blizzard is bad at making up their damn minds.
local CHAMPION_ROSSLAI_GROUPS = {};
local KNIGHT_DAMERON_GROUPS = {};
local MARSHAL_MAGRUDER_GROUPS = {};
local STONE_GUARD_GROUPS = {};
local TRAVIS_DAY_GROUPS = {};
appendGroups(BLACK_WAR_MAMMOTH_ALLIANCE, KNIGHT_DAMERON_GROUPS);
-- #if AFTER MOP
-- NOTE: Not sure which expansion these got moved.
appendGroups(BLACK_WAR_MAMMOTH_HORDE, CHAMPION_ROSSLAI_GROUPS);
-- #endif
appendGroups(BLACK_WAR_MAMMOTH_HORDE, STONE_GUARD_GROUPS);
appendGroups(WINTERGRASP_COMMENDATION, KNIGHT_DAMERON_GROUPS);
appendGroups(WINTERGRASP_COMMENDATION, STONE_GUARD_GROUPS);
-- #if AFTER MOP
-- NOTE: Not sure which expansion these got moved.
appendGroups(JEWELCRAFTING_RECIPES, CHAMPION_ROSSLAI_GROUPS);
-- #else
appendGroups(ARCANUM_ITEMS, KNIGHT_DAMERON_GROUPS);
appendGroups(ARCANUM_ITEMS, STONE_GUARD_GROUPS);
appendGroups(JEWELCRAFTING_RECIPES, STONE_GUARD_GROUPS);
-- #endif
appendGroups(JEWELCRAFTING_RECIPES, KNIGHT_DAMERON_GROUPS);
-- #if AFTER MOP
-- NOTE: Not sure which expansion these got moved.
appendGroups(WINTERGRASP_HELMS, CHAMPION_ROSSLAI_GROUPS);
-- #endif
appendGroups(WINTERGRASP_HELMS, KNIGHT_DAMERON_GROUPS);
appendGroups(WINTERGRASP_HELMS, STONE_GUARD_GROUPS);
appendGroups(WINTERGRASP_HELMS, TRAVIS_DAY_GROUPS);
-- #if AFTER MOP
-- NOTE: On Retail Wowhead these are listed as sold by all four vendors, though in Cata Classic they are ONLY sold by Ros'slai and Magruder
appendGroups(WINTERGRASP_SHOULDERS, KNIGHT_DAMERON_GROUPS);
appendGroups(WINTERGRASP_SHOULDERS, STONE_GUARD_GROUPS);
-- #else
appendGroups(WINTERGRASP_SHOULDERS, CHAMPION_ROSSLAI_GROUPS);
appendGroups(WINTERGRASP_SHOULDERS, MARSHAL_MAGRUDER_GROUPS);
-- #endif
appendGroups(WINTERGRASP_NECKS, CHAMPION_ROSSLAI_GROUPS);
appendGroups(WINTERGRASP_NECKS, MARSHAL_MAGRUDER_GROUPS);
appendGroups(WINTERGRASP_CLOAKS, CHAMPION_ROSSLAI_GROUPS);
appendGroups(WINTERGRASP_CLOAKS, MARSHAL_MAGRUDER_GROUPS);
-- #if AFTER MOP
-- NOTE: Not sure which expansion these got moved.
appendGroups(WINTERGRASP_BRACERS, CHAMPION_ROSSLAI_GROUPS);
appendGroups(WINTERGRASP_BRACERS, MARSHAL_MAGRUDER_GROUPS);
appendGroups(WINTERGRASP_CHESTS, CHAMPION_ROSSLAI_GROUPS);
appendGroups(WINTERGRASP_CHESTS, KNIGHT_DAMERON_GROUPS);
appendGroups(WINTERGRASP_CHESTS, STONE_GUARD_GROUPS);
appendGroups(WINTERGRASP_BELTS, CHAMPION_ROSSLAI_GROUPS);
appendGroups(WINTERGRASP_BELTS, MARSHAL_MAGRUDER_GROUPS);
appendGroups(WINTERGRASP_LEGS, CHAMPION_ROSSLAI_GROUPS);
appendGroups(WINTERGRASP_LEGS, KNIGHT_DAMERON_GROUPS);
appendGroups(WINTERGRASP_LEGS, STONE_GUARD_GROUPS);
-- #else
appendGroups(WINTERGRASP_BRACERS, KNIGHT_DAMERON_GROUPS);
appendGroups(WINTERGRASP_BRACERS, STONE_GUARD_GROUPS);
appendGroups(WINTERGRASP_CHESTS, KNIGHT_DAMERON_GROUPS);
appendGroups(WINTERGRASP_CHESTS, STONE_GUARD_GROUPS);
appendGroups(WINTERGRASP_BELTS, KNIGHT_DAMERON_GROUPS);
appendGroups(WINTERGRASP_BELTS, STONE_GUARD_GROUPS);
appendGroups(WINTERGRASP_LEGS, KNIGHT_DAMERON_GROUPS);
appendGroups(WINTERGRASP_LEGS, STONE_GUARD_GROUPS);
-- #endif
appendGroups(WINTERGRASP_BOOTS, KNIGHT_DAMERON_GROUPS);
appendGroups(WINTERGRASP_BOOTS, STONE_GUARD_GROUPS);
appendGroups(WINTERGRASP_BOOTS, TRAVIS_DAY_GROUPS);
appendGroups(WINTERGRASP_RINGS, KNIGHT_DAMERON_GROUPS);
appendGroups(WINTERGRASP_RINGS, STONE_GUARD_GROUPS);
appendGroups(PHASE_ONE_TRINKETS, KNIGHT_DAMERON_GROUPS);
appendGroups(PHASE_ONE_TRINKETS, STONE_GUARD_GROUPS);
appendGroups(PHASE_ONE_TRINKETS, TRAVIS_DAY_GROUPS);
appendGroups(PHASE_TWO_TRINKETS, KNIGHT_DAMERON_GROUPS);
appendGroups(PHASE_TWO_TRINKETS, STONE_GUARD_GROUPS);
-- #if BEFORE MOP
-- NOTE: Not sure which expansion these got moved.
appendGroups(WINTERGRASP_HEIRLOOMS, KNIGHT_DAMERON_GROUPS);
-- #endif
appendGroups(WINTERGRASP_HEIRLOOMS, STONE_GUARD_GROUPS);
appendGroups(WINTERGRASP_HEIRLOOMS, TRAVIS_DAY_GROUPS);

root(ROOTS.Zones, {
	m(NORTHREND, applyclassicphase(WRATH_PHASE_ONE, {
		m(WINTERGRASP, {
			["lore"] = "Wintergrasp is a World PvP zone, similar to Tol Barad. It emphasizes siege weapon warfare--walls and towers are destroyed not by player damage, but by siege damage. Your siege engine amount is controlled by which workshops in the zone your faction owns.",
			["icon"] = 135836,
			["groups"] = {
				n(FLIGHT_PATHS, {
					fp(303, {	-- Valiance Landing Camp
						["cr"] = 30869,	-- Arzo Safeflight <Flight Master>
						["coord"] = { 72.0, 31.0, WINTERGRASP },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(332, {	-- Warsong Camp
						["cr"] = 30870,	-- Herzo Safeflight <Flight Master>
						["coord"] = { 21.6, 34.8, WINTERGRASP },
						["races"] = HORDE_ONLY,
					}),
				}),
				n(QUESTS, {
					q(13156, {	-- A Rare Herb
						["qg"] = 31054,	-- Anchorite Tessa
						["coord"] = { 72.4, 31.6, WINTERGRASP },
						["races"] = ALLIANCE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13195, {	-- A Rare Herb
						["qg"] = 31054,	-- Anchorite Tessa
						["coord"] = { 72.4, 31.6, WINTERGRASP },
						["races"] = ALLIANCE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13196, {	-- Bones and Arrows (A)
						["qg"] = 31052,	-- Bowyer Randolph
						["coord"] = { 53.0, 20.8, WINTERGRASP },
						["races"] = ALLIANCE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13154, {	-- Bones and Arrows (A)
						["qg"] = 31052,	-- Bowyer Randolph
						["coord"] = { 53.0, 20.8, WINTERGRASP },
						["races"] = ALLIANCE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13193, {	-- Bones and Arrows (H)
						["qg"] = 31102,	-- Vieron Blazefeather
						["coord"] = { 22.4, 34.6, WINTERGRASP },
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13199, {	-- Bones and Arrows (H)
						["qg"] = 31102,	-- Vieron Blazefeather
						["coord"] = { 22.4, 34.6, WINTERGRASP },
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13222, {	-- Defend the Siege (A)
						["qg"] = 31109,	-- Senior Demolitionist Legoso
						["coord"] = { 71.6, 32.0, WINTERGRASP },
						["races"] = ALLIANCE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13223, {	-- Defend the Siege (H)
						["qg"] = 31107,	-- Lieutenant Murp
						["coord"] = { 22.4, 35.6, WINTERGRASP },
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13197, {	-- Fueling the Demolishers (A)
						["qg"] = 31108,	-- Siege Master Stouthandle
						["coord"] = { 71.8, 31.2, WINTERGRASP },
						["races"] = ALLIANCE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13191, {	-- Fueling the Demolishers (H)
						["qg"] = 31106,	-- Siegesmith Stronghoof
						["coord"] = { 47.0, 21.0, WINTERGRASP },
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13200, {	-- Fueling the Demolishers (H)
						["qg"] = 31106,	-- Siegesmith Stronghoof
						["coord"] = { 47.0, 21.0, WINTERGRASP },
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13194, {	-- Healing with Roses
						["qg"] = 31053,	-- Primalist Mulfort
						["coord"] = { 22.2, 34.6, WINTERGRASP },
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13201, {	-- Healing with Roses
						["qg"] = 31053,	-- Primalist Mulfort
						["coord"] = { 22.2, 34.6, WINTERGRASP },
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13202, {	-- Jinxing the Walls
						["qg"] = 31101,	-- Hoodoo Master Fu'jin
						["coord"] = { 51.6, 21.0, WINTERGRASP },
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13179, {	-- No Mercy for the Merciless
						["qg"] = 31036,	-- Commander Zanneth
						["coord"] = { 72.0, 32.0, WINTERGRASP },
						["races"] = ALLIANCE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13177, {	-- No Mercy for the Merciless
						["qg"] = 31036,	-- Commander Zanneth
						["coord"] = { 72.0, 32.0, WINTERGRASP },
						["races"] = ALLIANCE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13178, {	-- Slay them all!
						["qg"] = 31091,	-- Commander Dardosh
						["coord"] = { 22.0, 35.0, WINTERGRASP },
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13180, {	-- Slay them all!
						["qg"] = 31091,	-- Commander Dardosh
						["coord"] = { 22.0, 35.0, WINTERGRASP },
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13538, {	-- Southern Sabotage
						["qg"] = 31153,	-- Tactical Officer Ahbramis
						["coord"] = { 50.2, 17.8, WINTERGRASP },
						["races"] = ALLIANCE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13186, {	-- Stop the Siege (A)
						["qg"] = 31109,	-- Senior Demolitionist Legoso
						["coord"] = { 71.6, 32.0, WINTERGRASP },
						["races"] = ALLIANCE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13185, {	-- Stop the Siege (H)
						["qg"] = 31107,	-- Lieutenant Murp
						["coord"] = { 22.4, 35.6, WINTERGRASP },
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13539, {	-- Toppling the Towers
						["qg"] = 31151,	-- Tactical Officer Kilrath
						["coord"] = { 50.2, 17.8, WINTERGRASP },
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13181, {	-- Victory in Wintergrasp (A)
						["qg"] = 31153,	-- Tactical Officer Ahbramis
						["coord"] = { 50.2, 17.8, WINTERGRASP },
						["races"] = ALLIANCE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13183, {	-- Victory in Wintergrasp (H)
						["qg"] = 31151,	-- Tactical Officer Kilrath
						["coord"] = { 50.2, 17.8, WINTERGRASP },
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13153, {	-- Warding the Warriors (A)
						["qg"] = 31051,	-- Sorceress Kaylana
						["coord"] = { 48.4, 21.08, WINTERGRASP },
						["races"] = ALLIANCE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13198, {	-- Warding the Warriors (A)
						["qg"] = 31051,	-- Sorceress Kaylana
						["coord"] = { 48.4, 21.08, WINTERGRASP },
						["races"] = ALLIANCE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
					q(13192, {	-- Warding the Walls (H)
						["qg"] = 31101,	-- Hoodoo Master Fu'jin
						["coord"] = { 51.6, 21.0, WINTERGRASP },
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
						["lvl"] = 75,
					}),
				}),
				-- #if BEFORE 4.0.1
				n(REWARDS, {
					currency(161, {	-- Stone Keeper's Shard
						["description"] = "While your faction controls Wintergrasp on your layer, this will drop from killing bosses in dungeons and RDF.",
					});
				}),
				-- #endif
				n(VENDORS, {
					["description"] = "These vendors will only show if your faction controls Wintergrasp.",
					["groups"] = {
						n(39173, {	-- Champion Ros'slai <Wintergrasp Quartermaster>
							["coords"] = {
								{ 51.8, 17.3, WINTERGRASP },
								{ 51.8, 17.4, WINTERGRASP_BG },
							},
							["races"] = HORDE_ONLY,
							["groups"] = CHAMPION_ROSSLAI_GROUPS,
						}),
						n(31101, {	-- Hoodoo Master Fu'jin
							["coords"] = {
								{ 51.7, 21.2, WINTERGRASP },
								{ 21.9, 35.4, WINTERGRASP },
								{ 51.6, 21.0, WINTERGRASP_BG },
							},
							["races"] = HORDE_ONLY,
							["groups"] = ARCANUM_ITEMS,
						}),
						n(32294, {	-- Knight Dameron <Wintergrasp Quartermaster>
							["coords"] = {
								{ 51.7, 17.2, WINTERGRASP },
								{ 51.6, 17.6, WINTERGRASP_BG },
							},
							["races"] = ALLIANCE_ONLY,
							["groups"] = KNIGHT_DAMERON_GROUPS,
						}),
						n(39172, {	-- Marshal Magruder <Wintergrasp Quartermaster>
							["coords"] = {
								{ 51.8, 17.3, WINTERGRASP },
								{ 51.6, 17.6, WINTERGRASP_BG },
							},
							["races"] = ALLIANCE_ONLY,
							["groups"] = MARSHAL_MAGRUDER_GROUPS,
						}),
						n(30489, {	-- Morgan Day <Jewelcrafter>
							["coords"] = {
								{ 48.9, 17.5, WINTERGRASP },
								{ 48.8, 17.6, WINTERGRASP_BG },
							},
							["races"] = ALLIANCE_ONLY,
							["groups"] = JEWELCRAFTING_RECIPES,
						}),
						n(31051, {	-- Sorceress Kaylana
							["coords"] = {
								{ 48.5, 21.2, WINTERGRASP },
								{ 72.5, 32.0, WINTERGRASP },
								{ 48.4, 21.08, WINTERGRASP_BG },
							},
							["races"] = ALLIANCE_ONLY,
							["groups"] = ARCANUM_ITEMS,
						}),
						n(32296, {	-- Stone Guard Mukar <Wintergrasp Quartermaster>
							["coords"] = {
								{ 51.7, 17.2, WINTERGRASP },
								{ 51.6, 17.6, WINTERGRASP_BG },
							},
							["races"] = HORDE_ONLY,
							["groups"] = STONE_GUARD_GROUPS,
						}),
						n(30488, {	-- Travis Day <Legacy Weaponsmith>
							["coord"] = { 51.0, 17.4, WINTERGRASP },
							["races"] = ALLIANCE_ONLY,
							["groups"] = TRAVIS_DAY_GROUPS,
						}),
					},
				}),
			},
		}),
	})),
});
