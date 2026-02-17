---------------
-- TAILORING --
---------------
local BOLT_OF_EMBERSILK = 53643;
local DREAMCLOTH = 54440;
local SECRET_OF_DRAENOR_TAILORING = 118722;
APPRENTICE_JOURNEYMAN_EXPERT_TAILORING = {
	r(3908, {	-- Tailoring (Apprentice)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 5,
		-- #endif
		["rank"] = 1,
	}),
	r(3909, {	-- Tailoring (Journeyman)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 10,
		-- #endif
		["rank"] = 2,
	}),
	r(3910, {	-- Tailoring (Expert)
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
	applyclassicphase(BFA_PHASE_ONE, r(264616, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Tailoring
	r(330222, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [CLASSIC]
	r(330223, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [CLASSIC]
	r(330224, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [CLASSIC]
	r(330225, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [CLASSIC]
	r(330226, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [CLASSIC]
	n(ARMOR, {
		r(8766),	-- Azure Silk Belt
		r(8760),	-- Azure Silk Hood
		r(8758),	-- Azure Silk Pants
		r(3859),	-- Azure Silk Vest
		r(2395),	-- Barbaric Linen Vest
		r(12053),	-- Black Mageweave Gloves
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_TWO, r(439088, {["timeline"] = {ADDED_1_15_1}})),	-- Black Mageweave Leggings
		r(12049, {["timeline"] = {REMOVED_1_15_1}}),	-- Black Mageweave Leggings
		-- #else
		r(12049),	-- Black Mageweave Leggings
		-- #endif
		r(12050),	-- Black Mageweave Robe
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_TWO, r(439086, {["timeline"] = {ADDED_1_15_1}})),	-- Black Mageweave Vest
		r(12048, {["timeline"] = {REMOVED_1_15_1}}),	-- Black Mageweave Vest
		-- #else
		r(12048),	-- Black Mageweave Vest
		-- #endif
		r(2394),	-- Blue Linen Shirt
		r(18420, {["timeline"] = {ADDED_2_1_0}}),	-- Brightcloth Cloak
		r(18415, {["timeline"] = {ADDED_2_1_0}}),	-- Brightcloth Gloves
		r(18414, {["timeline"] = {ADDED_2_1_0}}),	-- Brightcloth Robe
		r(3914),	-- Brown Linen Pants
		r(7623),	-- Brown Linen Robe
		r(3915),	-- Brown Linen Shirt
		r(2385),	-- Brown Linen Vest
		r(12069),	-- Cindercloth Robe
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_TWO, r(439098, {["timeline"] = {ADDED_1_15_1}})),	-- Crimson Silk Belt
		r(8772, {["timeline"] = {REMOVED_1_15_1}}),	-- Crimson Silk Belt
		-- #else
		r(8772),	-- Crimson Silk Belt
		-- #endif
		r(8804),	-- Crimson Silk Gloves
		r(8799),	-- Crimson Silk Pantaloons
		r(8791),	-- Crimson Silk Vest
		r(3848),	-- Double-stitched Woolen Shoulders
		r(12067),	-- Dreamweave Gloves
		r(12070),	-- Dreamweave Vest
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_TWO, r(439100, {["timeline"] = {ADDED_1_15_1}})),	-- Earthen Vest
		r(8764, {["timeline"] = {REMOVED_1_15_1}}),	-- Earthen Vest
		-- #else
		r(8764),	-- Earthen Vest
		-- #endif
		r(18437, {["timeline"] = {ADDED_2_1_0}}),	-- Felcloth Boots
		r(18442, {["timeline"] = {ADDED_2_1_0}}),	-- Felcloth Hood
		r(18451, {["timeline"] = {ADDED_2_1_0}}),	-- Felcloth Robe
		r(18453, {["timeline"] = {ADDED_2_1_0}}),	-- Felcloth Shoulders
		r(3871),	-- Formal White Shirt
		r(18411, {["timeline"] = {ADDED_2_1_0}}),	-- Frostweave Gloves
		r(18424, {["timeline"] = {ADDED_2_1_0}}),	-- Frostweave Pants
		r(18403, {["timeline"] = {ADDED_2_1_0}}),	-- Frostweave Tunic
		r(18410, {["timeline"] = {ADDED_2_1_0}}),	-- Ghostweave Belt
		r(18413, {["timeline"] = {ADDED_2_1_0}}),	-- Ghostweave Gloves
		r(18441, {["timeline"] = {ADDED_2_1_0}}),	-- Ghostweave Pants
		r(18416, {["timeline"] = {ADDED_2_1_0}}),	-- Ghostweave Vest
		r(3852),	-- Gloves of Meditation
		r(2406),	-- Gray Woolen Shirt
		r(3841),	-- Green Linen Bracers
		r(2396),	-- Green Linen Shirt
		r(8774),	-- Green Silken Shoulders
		r(2399),	-- Green Woolen Vest
		r(3842),	-- Handstitched Linen Britches
		r(3840),	-- Heavy Linen Gloves
		r(3843),	-- Heavy Woolen Gloves
		r(3850),	-- Heavy Woolen Pants
		r(6690),	-- Lesser Wizard's Robe
		r(8776),	-- Linen Belt
		r(2386),	-- Linen Boots
		r(2387),	-- Linen Cloak
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_TWO, r(439094, {["timeline"] = {ADDED_1_15_1}})),	-- Long Silken Cloak
		r(3861, {["timeline"] = {REMOVED_1_15_1}}),	-- Long Silken Cloak
		-- #else
		r(3861),	-- Long Silken Cloak
		-- #endif
		r(12061),	-- Orange Mageweave Shirt
		r(6521),	-- Pearl-clasped Cloak
		r(2392),	-- Red Linen Shirt
		r(8489),	-- Red Swashbuckler's Shirt
		r(2397),	-- Reinforced Linen Cape
		r(8770),	-- Robe of Power
		r(18423, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Boots
		r(18409, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Cloak
		r(18417, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Gloves
		r(18444, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Headband
		r(18438, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Pants
		r(18406, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Robe
		r(18449, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Shoulders
		r(18407, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Tunic
		r(8762),	-- Silk Headband
		r(8465),	-- Simple Dress
		r(12046),	-- Simple Kilt
		r(12045),	-- Simple Linen Boots
		r(12044),	-- Simple Linen Pants
		r(3845),	-- Soft-soled Linen Boots
		r(3855),	-- Spidersilk Boots
		applyclassicphase(WRATH_PHASE_ONE, r(63742, {["timeline"] = {ADDED_3_1_0}})),	-- Spidersilk Drape
		r(3866),	-- Stylish Red Shirt
		r(7624),	-- White Linen Robe
		r(2393),	-- White Linen Shirt
		r(8483),	-- White Swashbuckler's Shirt
		r(8467),	-- White Woolen Dress
		r(18421, {["timeline"] = {ADDED_2_1_0}}),	-- Wizardweave Leggings
		r(18446, {["timeline"] = {ADDED_2_1_0}}),	-- Wizardweave Robe
		r(18450, {["timeline"] = {ADDED_2_1_0}}),	-- Wizardweave Turban
		r(2401),	-- Woolen Boots
		r(2402),	-- Woolen Cape
	}),
	filter(BAGS, {
		r(3755),	-- Linen Bag
		r(12065),	-- Mageweave Bag
		r(3813),	-- Small Silk Pack
		r(3757),	-- Woolen Bag
	}),
	-- #if AFTER BFA
	filter(MISC, {
		r(3276),	-- Heavy Linen Bandage
		r(10841),	-- Heavy Mageweave Bandage
		r(18630),	-- Heavy Runecloth Bandage
		r(7929),	-- Heavy Silk Bandage
		r(3278),	-- Heavy Wool Bandage
		r(3275),	-- Linen Bandage
		r(10840),	-- Mageweave Bandage
		r(18629),	-- Runecloth Bandage
		r(7928),	-- Silk Bandage
		r(3277),	-- Wool Bandage
	}),
	-- #endif
	filter(REAGENTS, {
		r(2963),	-- Bolt of Linen Cloth
		r(3865),	-- Bolt of Mageweave
		r(3839),	-- Bolt of Silk Cloth
		r(2964),	-- Bolt of Woolen Cloth
	}),
};
ARTISAN_TAILORING = {
	r(12180, {	-- Tailoring (Artisan)
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
		r(12073),	-- Black Mageweave Boots
		r(12072),	-- Black Mageweave Headband
		r(12074),	-- Black Mageweave Shoulders
		r(12088),	-- Cindercloth Boots
		r(12092),	-- Dreamweave Circlet
		r(18402),	-- Runecloth Belt
		r(12077),	-- Simple Black Dress
	}),
	filter(BAGS, {
		r(12079),	-- Red Mageweave Bag
	}),
	n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
		r(1261695),	-- Dwarven District Banner
		r(1261688),	-- Elder Rise Rug
	})),
	filter(REAGENTS, {
		r(18401),	-- Bolt of Runecloth
	}),
};
SHADOWEAVE_TAILORING_CLASSIC = {
	r(12082),	-- Shadoweave Boots
	r(12071),	-- Shadoweave Gloves
	r(12052),	-- Shadoweave Pants
	r(12055),	-- Shadoweave Robe
	r(12076),	-- Shadoweave Shoulders
};
CLASSIC_TAILORING = appendGroups(APPRENTICE_JOURNEYMAN_EXPERT_TAILORING,
-- #if AFTER 2.1.0
ARTISAN_TAILORING
-- #else
	{}
-- #endif
);
TBC_TAILORING = applyclassicphase(TBC_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_2_0_5 } }, {
	r(26790, {	-- Tailoring (Master)
		["timeline"] = { ADDED_2_0_5, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 50,
		-- #endif
		["rank"] = 5,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264618, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Outland Tailoring
	r(330227, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [The Burning Cruse]
	r(330228, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [The Burning Cruse]
	r(330229, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [The Burning Cruse]
	r(330230, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [The Burning Cruse]
	r(330231, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [The Burning Cruse]
	n(ARMOR, {
		r(26765),	-- Netherweave Belt
		r(26772),	-- Netherweave Boots
		r(26764),	-- Netherweave Bracers
		r(26770),	-- Netherweave Gloves
		r(26771),	-- Netherweave Pants
	}),
	filter(BAGS, {
		r(26746),	-- Netherweave Bag
	}),
	n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
		r(1263692),	-- Draenei Weaver's Loom
		r(1263669),	-- Grand Drape of the Exiles
	})),
	filter(MISC, {
		-- #if AFTER BFA
		r(27033),	-- Heavy Netherweave Bandage
		r(27032),	-- Netherweave Bandage
		-- #endif
		r(31460),	-- Netherweave Net
	}),
	filter(REAGENTS, {
		r(26745),	-- Bolt of Netherweave
	}),
}));
WRATH_TAILORING = applyclassicphase(WRATH_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_3_0_3 } }, {
	r(51309, {	-- Tailoring (Grand Master)
		["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 65,
		-- #endif
		["rank"] = 6,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264620, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Northrend Tailoring
	r(330232, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Wrath of the Lich King]
	r(330233, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Wrath of the Lich King]
	r(330234, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Wrath of the Lich King]
	r(330235, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Wrath of the Lich King]
	r(330236, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Wrath of the Lich King]
	n(ARMOR, {
		r(56023),	-- Aurora Slippers
		r(55925),	-- Black Duskweave Leggings
		r(55941),	-- Black Duskweave Robe
		r(55943),	-- Black Duskweave Wristwraps
		r(64730, {["timeline"] = {ADDED_3_1_0}}),	-- Cloak of Crimson Snow
		r(56015),	-- Cloak of Frozen Spirits
		r(56014),	-- Cloak of the Moon
		r(56020),	-- Deep Frozen Cord
		r(55914),	-- Duskweave Belt
		r(55924),	-- Duskweave Boots
		r(55919),	-- Duskweave Cowl
		r(55922),	-- Duskweave Gloves
		r(55901),	-- Duskweave Leggings
		r(55921),	-- Duskweave Robe
		r(55923),	-- Duskweave Shoulders
		r(55920),	-- Duskweave Wristwraps
		r(56027),	-- Ebonweave Gloves
		r(56026),	-- Ebonweave Robe
		r(64729, {["timeline"] = {ADDED_3_1_0}}),	-- Frostguard Drape
		r(56021),	-- Frostmoon Pants
		r(59582),	-- Frostsavage Belt
		r(59585),	-- Frostsavage Boots
		r(59583),	-- Frostsavage Bracers
		r(59589),	-- Frostsavage Cowl
		r(59586),	-- Frostsavage Gloves
		r(59588),	-- Frostsavage Leggings
		r(59587),	-- Frostsavage Robe
		r(59584),	-- Frostsavage Shoulders
		r(55908),	-- Frostwoven Belt
		r(55906),	-- Frostwoven Boots
		r(55907),	-- Frostwoven Cowl
		r(55904),	-- Frostwoven Gloves
		r(56030),	-- Frostwoven Leggings
		r(55903),	-- Frostwoven Robe
		r(55902),	-- Frostwoven Shoulders
		r(56031),	-- Frostwoven Wristwraps
		r(60993),	-- Glacial Robe
		r(60994),	-- Glacial Slippers
		r(60990),	-- Glacial Waistband
		r(56000),	-- Green Workman's Shirt
		r(56018),	-- Hat of Wintry Doom
		r(56022),	-- Light Blessed Mittens
		r(56025),	-- Moonshroud Gloves
		r(56024),	-- Moonshroud Robe
		r(55911),	-- Mystic Frostwoven Robe
		r(55910),	-- Mystic Frostwoven Shoulders
		r(55913),	-- Mystic Frostwoven Wristwraps
		r(56019),	-- Silky Iceshard Boots
		r(56029),	-- Spellweave Gloves
		r(56028),	-- Spellweave Robe
		r(55995),	-- Yellow Lumberjack Shirt
	}),
	n(ARMOR_ENCHANTMENTS, {
		r(56010),	-- Azure Spellthread
		r(55769, {	-- Darkglow Embroidery [Rank 1]
			["timeline"] = { ADDED_3_0_3, REMOVED_6_0_2 },
			-- #if AFTER CATA
			["rank"] = 1,
			-- #endif
		}),
		r(55642, {	-- Lightweave Embroidery [Rank 1]
			["timeline"] = { ADDED_3_0_3, REMOVED_6_0_2 },
			-- #if AFTER CATA
			["rank"] = 1,
			-- #endif
		}),
		r(56034, {	-- Master's Spellthread [Rank 1]
			["timeline"] = { ADDED_3_0_3, REMOVED_6_0_2 },
			-- #if AFTER CATA
			["rank"] = 1,
			-- #endif
		}),
		r(56039, {	-- Sanctified Spellthread [Rank 1]
			["timeline"] = { ADDED_3_0_3, REMOVED_6_0_2 },
			-- #if AFTER CATA
			["rank"] = 1,
			-- #endif
		}),
		r(56008),	-- Shining Spellthread
		r(55777, {	-- Swordguard Embroidery [Rank 1]
			["timeline"] = { ADDED_3_0_3, REMOVED_6_0_2 },
			-- #if AFTER CATA
			["rank"] = 1,
			-- #endif
		}),
	}),
	filter(BAGS, {
		r(56007),	-- Frostweave Bag
	}),
	n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
		r(1263620),	-- Gilded Dalaran Banner
		r(1263627),	-- Kirin Tor Skyline Banner
	})),
	filter(MISC, {
		-- #if AFTER BFA
		r(45545),	-- Frostweave Bandage
		-- #endif
		r(55898),	-- Frostweave Net
		-- #if AFTER BFA
		r(45546),	-- Heavy Frostweave Bandage
		-- #endif
	}),
	filter(MOUNTS, {
		r(60969),	-- Flying Carpet
		r(60971),	-- Magnificent Flying Carpet
	}),
	filter(REAGENTS, {
		r(55899),	-- Bolt of Frostweave
		r(55900),	-- Bolt of Imbued Frostweave
		r(56002),	-- Ebonweave
		r(56001),	-- Moonshroud
		r(56003),	-- Spellweave
	}),
}));
ETERNIUM_THREAD = applyclassicphase(WRATH_PHASE_ONE, {
	i(38426, {	-- Eternium Thread
		-- #if AFTER CATA
		["description"] = "Can be bought from Leatherworking- and Tailoring Suppliers, as well as some Trade vendors around the world.",
		-- #else
		["description"] = "Can be bought from Tailoring Suppliers, as well as some Trade vendors around the world.",
		-- #endif
		["providers"] = {
			{ "n", 24341},	-- Barnabas Frye <Trade Goods>
			{ "n", 27012},	-- Beem Goldsprocket <Trade Goods>
			{ "n", 26941},	-- Brokkan Bear-Arms <Trade Goods>
			{ "n", 28726},	-- Dominique Stefano <Tailoring Supplies>
			{ "n", 23802},	-- Wink Sprinklesprankle <General Goods & Trade Supplies>
		},
		["timeline"] = { ADDED_3_0_3 },
	})
})
CATA_TAILORING = applyclassicphase(CATA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	r(75156, {	-- Tailoring (Illustrious)
		["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 7,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264622, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Cataclysm Tailoring
	r(330237, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Cataclysm]
	r(330238, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Cataclysm]
	r(330239, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Cataclysm]
	r(330240, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Cataclysm]
	r(330241, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Cataclysm]
	n(ARMOR, {
		-- #if ANYCLASSIC
		r(75293),	-- Vicious Embersilk Belt
		r(75297),	-- Vicious Embersilk Boots
		r(75270),	-- Vicious Embersilk Bracers
		applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, r(1216338, {["timeline"] = {ADDED_4_4_1}})),	-- Bloodthirsty Embersilk Cape
		r(75295),	-- Vicious Embersilk Gloves
		r(75291),	-- Vicious Embersilk Shoulders
		r(75269),	-- Vicious Fireweave Belt
		r(75294),	-- Vicious Fireweave Boots
		r(75290),	-- Vicious Fireweave Bracers
		r(75296),	-- Vicious Fireweave Gloves
		r(75292),	-- Vicious Fireweave Shoulders
		-- #endif
		r(75248),	-- Deathsilk Belt
		r(75252),	-- Deathsilk Boots
		r(75249),	-- Deathsilk Bracers
		r(75256),	-- Deathsilk Cowl
		r(75253),	-- Deathsilk Gloves
		r(75254),	-- Deathsilk Leggings
		r(75257),	-- Deathsilk Robe
		r(75251),	-- Deathsilk Shoulders
		r(75258),	-- Spiritmend Belt
		r(75261),	-- Spiritmend Boots
		r(75259),	-- Spiritmend Bracers
		r(75266),	-- Spiritmend Cowl
		r(75262),	-- Spiritmend Gloves
		r(75263),	-- Spiritmend Leggings
		r(75267),	-- Spiritmend Robe
		r(75260),	-- Spiritmend Shoulders
		-- #if ANYCLASSIC
		applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, r(1224154, {["timeline"] = {ADDED_4_4_2}})),	-- Vicious Embersilk Belt
		applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, r(1224155, {["timeline"] = {ADDED_4_4_2}})),	-- Vicious Embersilk Boots
		applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, r(1224156, {["timeline"] = {ADDED_4_4_2}})),	-- Vicious Embersilk Bracers
		applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, r(99537,   {["timeline"] = {ADDED_4_4_2}})),	-- Vicious Embersilk Cape
		applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, r(1224158, {["timeline"] = {ADDED_4_4_2}})),	-- Vicious Embersilk Gloves
		applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, r(1224161, {["timeline"] = {ADDED_4_4_2}})),	-- Vicious Embersilk Shoulders
		applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, r(1224162, {["timeline"] = {ADDED_4_4_2}})),	-- Vicious Fireweave Belt
		applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, r(1224163, {["timeline"] = {ADDED_4_4_2}})),	-- Vicious Fireweave Boots
		applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, r(1224164, {["timeline"] = {ADDED_4_4_2}})),	-- Vicious Fireweave Bracers
		applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, r(1224166, {["timeline"] = {ADDED_4_4_2}})),	-- Vicious Fireweave Gloves
		applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, r(1224169, {["timeline"] = {ADDED_4_4_2}})),	-- Vicious Fireweave Shoulders
		-- #else
		r(75293),	-- Vicious Embersilk Belt
		r(75297),	-- Vicious Embersilk Boots
		r(75270),	-- Vicious Embersilk Bracers
		r(99537, {["timeline"] = {ADDED_4_2_0}}),	-- Vicious Embersilk Cape
		r(75295),	-- Vicious Embersilk Gloves
		r(75291),	-- Vicious Embersilk Shoulders
		r(75269),	-- Vicious Fireweave Belt
		r(75294),	-- Vicious Fireweave Boots
		r(75290),	-- Vicious Fireweave Bracers
		r(75296),	-- Vicious Fireweave Gloves
		r(75292),	-- Vicious Fireweave Shoulders
		-- #endif

	}),
	n(ARMOR_ENCHANTMENTS, {
		r(75175, {	-- Darkglow Embroidery [Rank 2]
			["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_6_0_2 },
			["rank"] = 2,
		}),
		r(75250),	-- Enchanted Spellthread
		r(75255),	-- Ghostly Spellthread
		r(75172, {	-- Lightweave Embroidery [Rank 2]
			["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_6_0_2 },
			["rank"] = 2,
		}),
		r(75154, {	-- Master's Spellthread [Rank 2]
			["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_6_0_2 },
			["rank"] = 2,
		}),
		r(75155, {	-- Sanctified Spellthread [Rank 2]
			["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_6_0_2 },
			["rank"] = 2,
		}),
		r(75178, {	-- Swordguard Embroidery [Rank 2]
			["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_6_0_2 },
			["rank"] = 2,
		}),
	}),
	filter(BAGS, {
		r(75264),	-- Embersilk Bag
		r(75268),	-- Hyjal Expedition Bag
		r(75265),	-- Otherworldly Bag
	}),
	n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
		r(1262370),	-- "Unity of Thorns" Tapestry
		r(1261317),	-- Surwich Expedition Tent
	})),
	filter(MISC, {
		-- #if AFTER BFA
		r(88893),	-- Dense Embersilk Bandage
		r(74556),	-- Embersilk Bandage
		-- #endif
		r(75247),	-- Embersilk Net
		-- #if AFTER BFA
		r(74558),	-- Field Bandage: Dense Embersilk
		r(74557),	-- Heavy Embersilk Bandage
		-- #endif
	}),
	filter(REAGENTS, {
		r(74964),	-- Bolt of Embersilk Cloth
		r(75146),	-- Dream of Azshara
		r(75142),	-- Dream of Deepholm
		r(94743),	-- Dream of Destruction
		r(75144),	-- Dream of Hyjal
		r(75145),	-- Dream of Ragnaros
		r(75141),	-- Dream of Skywall
	}),
}));
COMMON_CATACLYSM_TAILORING_RECIPES = applyclassicphase(CATA_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	i(54601, {	-- Pattern: Belt of the Depths (RECIPE!)
		["cost"] = {{"i", DREAMCLOTH, 1}},
	}),
	i(68199, {	-- Pattern: Black Embersilk Gown (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
	}),
	-- #if ANYCLASSIC
	i(54593, {	-- Pattern: Bloodthirsty Embersilk Cowl (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
	}),
	i(54594, {	-- Pattern: Bloodthirsty Embersilk Pants (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
	}),
	i(54595, {	-- Pattern: Bloodthirsty Embersilk Robe (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
	}),
	i(54596, {	-- Pattern: Bloodthirsty Fireweave (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
	}),
	i(54597, {	-- Pattern: Bloodthirsty Fireweave Pants (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
	}),
	i(54598, {	-- Pattern: Bloodthirsty Fireweave Robe (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
	}),
	-- #endif
	i(54603, {	-- Pattern: Breeches of Mended Nightmares (RECIPE!)
		["cost"] = {{"i", DREAMCLOTH, 1}},
	}),
	i(54602, {	-- Pattern: Dreamless Belt (RECIPE!)
		["cost"] = {{"i", DREAMCLOTH, 1}},
	}),
	-- #if ANYCLASSIC
	i(238123, {	-- Pattern: Embersilk Cowl (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
		["timeline"] = { ADDED_4_4_2 },
	}),
	i(238124, {	-- Pattern: Embersilk Pants (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
		["timeline"] = { ADDED_4_4_2 },
	}),
	i(238125, {	-- Pattern: Embersilk Robe (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
		["timeline"] = { ADDED_4_4_2 },
	}),
	i(238126, {	-- Pattern: Fireweave Cowl (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
		["timeline"] = { ADDED_4_4_2 },
	}),
	i(238127, {	-- Pattern: Fireweave Pants (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
		["timeline"] = { ADDED_4_4_2 },
	}),
	i(238128, {	-- Pattern: Fireweave Robe (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
		["timeline"] = { ADDED_4_4_2 },
	}),
	-- #endif
	i(54604, {	-- Pattern: Flame-Ascended Pantaloons (RECIPE!)
		["cost"] = {{"i", DREAMCLOTH, 1}},
	}),
	i(54605, {	-- Pattern: Illusionary Bag (RECIPE!)
		["cost"] = {{"i", DREAMCLOTH, 1}},
	}),
	i(54599, {	-- Pattern: Powerful Enchanted Spellthread (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
	}),
	i(54600, {	-- Pattern: Powerful Ghostly Spellthread (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
	}),
	-- #if ANYCLASSIC
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238068, {	-- Pattern: Vicious Embersilk Cowl (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238069, {	-- Pattern: Vicious Embersilk (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238070, {	-- Pattern: Vicious Embersilk Robe (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238071, {	-- Pattern: Vicious Fireweave Cowl (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238072, {	-- Pattern: Vicious Fireweave Pants (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238073, {	-- Pattern: Vicious Fireweave Robe (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
		["timeline"] = { ADDED_4_4_2 },
	})),
	-- #else
	i(54593, {	-- Pattern: Vicious Embersilk Cowl (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
	}),
	i(54594, {	-- Pattern: Vicious Embersilk Pants (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
	}),
	i(54595, {	-- Pattern: Vicious Embersilk Robe (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
	}),
	i(54596, {	-- Pattern: Vicious Fireweave Cowl (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
	}),
	i(54597, {	-- Pattern: Vicious Fireweave Pants (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
	}),
	i(54598, {	-- Pattern: Vicious Fireweave Robe (RECIPE!)
		["cost"] = {{"i", BOLT_OF_EMBERSILK, 8}},
	}),
	-- #endif
}));
MOP_TAILORING = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	r(110426, {	-- Tailoring (Zen Master)
		["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 8,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264624, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Pandaria Tailoring
	r(330242, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Mist of Pandaria]
	r(330243, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Mist of Pandaria]
	r(330244, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Mist of Pandaria]
	r(330245, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Mist of Pandaria]
	r(330246, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Mist of Pandaria]
	n(ARMOR, {
		-- #if NOT ANYCLASSIC
		-- Wouter NOTE: this is not available in Classic for some reason
		r(134585, {["timeline"] = {ADDED_5_1_0}}),	-- Bipsi's Gloves
		-- #endif
		r(125530),	-- Windwool Belt
		r(125529),	-- Windwool Boots
		r(125528),	-- Windwool Bracers
		r(125526),	-- Windwool Gloves
		r(125523),	-- Windwool Hood
		r(125527),	-- Windwool Pants
		r(125524),	-- Windwool Shoulders
		r(125525),	-- Windwool Tunic
	}),
	n(ARMOR_ENCHANTMENTS, {
		r(125553),	-- Cerulean Spellthread
		r(125482, {	-- Darkglow Embroidery [Rank 3]
			["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			["rank"] = 3,
		}),
		r(125481, {	-- Lightweave Embroidery [Rank 3]
			["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			["rank"] = 3,
		}),
		r(125496, {	-- Master's Spellthread [Rank 3]
			["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			["rank"] = 3,
		}),
		r(125552),	-- Pearlescent Spellthread
		r(125497, {	-- Sanctified Spellthread [Rank 3]
			["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			["rank"] = 3,
		}),
		r(125483, {	-- Swordguard Embroidery [Rank 3]
			["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			["rank"] = 3,
		}),
	}),
	n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
		r(1263553),	-- Pandaren Fishing Net
		r(1261250),	-- Pandaren Meander Rug
	})),
	-- #if AFTER BFA
	filter(MISC, {
		r(102698),	-- Heavy Windwool Bandage
		r(102697),	-- Windwool Bandage
	}),
	-- #endif
	filter(REAGENTS, {
		r(125551),	-- Bolt of Windwool Cloth
		r(125557),	-- Imperial Silk
		r(130325),	-- Song of Harmony
	}),
}));
DRAENOR_TAILORING = applyclassicphase(WOD_PHASE_ONE, i(115357, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	["description"] = "This is a reward for completing the introductory Tailoring questline that can drop from any Draenor mob. Also sold at Tailoring Emporium for 100 gold.",
	["groups"] = {
		r(158758, {	-- Tailoring (Draenor Master)
			["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #endif
			["rank"] = 9,
		}),
		applyclassicphase(BFA_PHASE_ONE, r(264626, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Draenor Tailoring
		r(330247, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Warlords of Draenor]
		r(330248, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Warlords of Draenor]
		r(330249, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Warlords of Draenor]
		r(330250, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Warlords of Draenor]
		r(330251, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Warlords of Draenor]
		-- #if AFTER BFA
		r(172539),	-- Antiseptic Bandage
		-- #endif
		r(168835),	-- Hexweave Cloth
		r(176058),	-- Secrets of Draenor Tailoring
		r(168852),	-- Sumptuous Cowl
		r(168854),	-- Sumptuous Leggings
		r(168853),	-- Sumptuous Robes
	},
})));
COMMON_DRAENOR_TAILORING_RECIPES = applyclassicphase(WOD_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	i(257109, {	-- Pattern: Argussian Circular Rug (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 1}},
		["timeline"] = { ADDED_11_2_7 },
	}),
	i(258486, {	-- Pattern: Beloved Elekk Plushie (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 1}},
		["timeline"] = { ADDED_11_2_7 },
	}),
	i(257110, {	-- Pattern: Karabor Bed (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 1}},
		["timeline"] = { ADDED_11_2_7 },
	}),
	i(114863, {	-- Pattern: Brilliant Hexweave Cloak (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 1}},
	}),
	i(114866, {	-- Pattern: Creeping Carpet (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 5}},
	}),
	i(114865, {	-- Pattern: Elekk Plushie (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 5}},
	}),
	i(114872, {	-- Pattern: Greater Hexweave Essence (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 5}},
		["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_6_2_0 },
	}),
	i(114864, {	-- Pattern: Hexweave Bag (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 5}},
	}),
	i(114860, {	-- Pattern: Hexweave Belt (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 1}},
	}),
	i(114858, {	-- Pattern: Hexweave Bracers (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 1}},
	}),
	i(114854, {	-- Pattern: Hexweave Cowl (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 1}},
	}),
	i(114852, {	-- Pattern: Hexweave Embroidery (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 1}},
	}),
	i(114856, {	-- Pattern: Hexweave Gloves (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 1}},
	}),
	i(114855, {	-- Pattern: Hexweave Leggings (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 1}},
	}),
	i(114853, {	-- Pattern: Hexweave Mantle (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 1}},
	}),
	i(114857, {	-- Pattern: Hexweave Robe (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 1}},
	}),
	i(114859, {	-- Pattern: Hexweave Slippers (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 1}},
	}),
	i(202234, {	-- Pattern: Impressive Hexweave Essence (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 5}},
		["timeline"] = { ADDED_10_0_5 },
	}),
	i(114862, {	-- Pattern: Nimble Hexweave Cloak (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 1}},
	}),
	i(114861, {	-- Pattern: Powerful Hexweave Cloak (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 1}},
	}),
	i(202235, {	-- Pattern: Remarkable Hexweave Essence (RECIPE!)
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 5}},
		["timeline"] = { ADDED_10_0_5 },
	}),
	i(114871, {	-- Pattern: Hexweave Essence (RECIPE!)
		["collectible"] = false,
		["description"] = "The item is still in game but you can't learn the recipe from it anymore (recipe removed in 9.0.1)",
		["cost"] = {{"i", SECRET_OF_DRAENOR_TAILORING, 5}},
		["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_10_0_5 },
	}),
}));
LEGION_TAILORING = applyclassicphase(LEGION_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
		r(1263858),	-- Beloved Raptor Plushie
		r(1260774),	-- Circular Shal'dorei Rug
		r(1260769),	-- Shal'dorei Open-Air Tent
	})),
}));
BFA_TAILORING = applyclassicphase(BFA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	r(330257, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Battle for Azeroth]
	r(330258, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Battle for Azeroth]
	r(330259, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Battle for Azeroth]
	r(330260, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Battle for Azeroth]
	r(330261, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Battle for Azeroth]
	n(ARMOR, {
		r(285077, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Deep Sea Breeches
		r(285078, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Deep Sea Gloves
		r(257122),	-- Embroidered Deep Sea Breeches
		r(257114),	-- Embroidered Deep Sea Cloak [Rank 1]
		r(257115),	-- Embroidered Deep Sea Cloak [Rank 2]
		r(257118),	-- Embroidered Deep Sea Gloves
		r(272440),	-- Embroidered Deep Sea Satin
		r(269608),	-- Honorable Combatant's Satin Belt [Rank 1]
		r(269599),	-- Honorable Combatant's Satin Boots [Rank 1]
		r(269611),	-- Honorable Combatant's Satin Bracers [Rank 1]
		r(269596),	-- Honorable Combatant's Satin Cloak [Rank 1]
		r(269602),	-- Honorable Combatant's Satin Mittens [Rank 1]
		r(269605),	-- Honorable Combatant's Satin Pants [Rank 1]
		r(282168, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Belt [Rank 1]
		r(282194, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Boots [Rank 1]
		r(282164, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Bracers [Rank 1]
		r(282204, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Cloak [Rank 1]
		r(282191, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Mittens [Rank 1]
		r(282175, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Pants [Rank 1]
		r(257102),	-- Tidespray Linen Belt
		r(257103),	-- Tidespray Linen Bracers
		r(257107),	-- Tidespray Linen Cloak
		r(257097),	-- Tidespray Linen Hood
		r(257096),	-- Tidespray Linen Mittens
		r(268982),	-- Tidespray Linen Net
		r(257099),	-- Tidespray Linen Pants
		r(257104),	-- Tidespray Linen Robe
		r(257095),	-- Tidespray Linen Sandals
		r(257101),	-- Tidespray Linen Spaulders
		r(304577, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Belt [Rank 1]
		r(304568, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Boots [Rank 1]
		r(304580, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Bracers [Rank 1]
		r(304565, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Cloak [Rank 1]
		r(304571, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Mittens [Rank 1]
		r(304574, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Pants [Rank 1]
	}),
	n(ARMOR_ENCHANTMENTS, {
		r(279183),	-- Discreet Spellthread
		r(279184),	-- Feathery Spellthread
		r(279182),	-- Resilient Spellthread
	}),
	filter(BAGS, {
		r(257125),	-- Deep Sea Bag [Rank 1]
		r(257126),	-- Deep Sea Bag [Rank 2]
	}),
	n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
		r(1260458),	-- Red Dazar'alor Rug
		r(1260475),	-- Zanchuli Tapestry
	})),
	filter(MISC, {
		r(287274, {["timeline"] = {ADDED_8_1_0}}),	-- Aqueous Alteration
		r(257134),	-- Battle Flag: Phalanx Defense [Rank 1]
		r(257135),	-- Battle Flag: Phalanx Defense [Rank 2]
		r(257137),	-- Battle Flag: Rallying Swiftness [Rank 1]
		r(257138),	-- Battle Flag: Rallying Swiftness [Rank 2]
		r(257131),	-- Battle Flag: Spirit of Freedom [Rank 1]
		r(257132),	-- Battle Flag: Spirit of Freedom [Rank 2]
		r(267202),	-- Deep Sea Bandage
		r(268983),	-- Hooked Deep Sea Net
		r(278414),	-- Rough-hooked Tidespray Linen
		r(286654, {["timeline"] = {ADDED_8_1_0}}),	-- Sanguinated Alteration
		r(267201),	-- Tidespray Linen Bandage
	}),
}));
NAZJATAR_TAILORING = applyclassicphase(BFA_PHASE_THREE, bubbleDown({ ["timeline"] = { ADDED_8_2_0 } }, {
	n(ARMOR, {
		r(299034),	-- Gilded Seaweave Breeches
		r(299031),	-- Gilded Seaweave Gloves
		r(294841),	-- Notorious Combatant's Satin Belt [Rank 1]
		r(294832),	-- Notorious Combatant's Satin Boots [Rank 1]
		r(294844),	-- Notorious Combatant's Satin Bracers [Rank 1]
		r(294829),	-- Notorious Combatant's Satin Cloak [Rank 1]
		r(294835),	-- Notorious Combatant's Satin Mittens [Rank 1]
		r(294838),	-- Notorious Combatant's Satin Pants [Rank 1]
	}),
	filter(MISC, {
		r(301409),	-- Saddlechute
		r(301403),	-- Seabreeze Saddle Blanket
	}),
}));
SL_TAILORING = applyclassicphase(SL_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	r(310949),	-- Shadowlands Tailoring
	r(343634, {	-- Shadowlands Cloth Scavenging
		["collectible"] = false,
	}),
	n(ARMOR, {
		r(310885, {	-- Grim-Veiled Belt [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310886, {	-- Grim-Veiled Bracers [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310880, {	-- Grim-Veiled Cape [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310882, {	-- Grim-Veiled Hood [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310881, {	-- Grim-Veiled Mittens [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310883, {	-- Grim-Veiled Pants [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310879, {	-- Grim-Veiled Robe [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310878, {	-- Grim-Veiled Sandals [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310884, {	-- Grim-Veiled Spaulders [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310903),	-- Shadowlace Cord
		r(310900),	-- Shadowlace Cowl
		r(310904),	-- Shadowlace Cuffs
		r(310896),	-- Shadowlace Footwraps
		r(310899),	-- Shadowlace Handwraps
		r(310902),	-- Shadowlace Mantle
		r(310901),	-- Shadowlace Trousers
		r(310897),	-- Shadowlace Tunic
		r(310876),	-- Shrouded Cloth Belt
		r(310877),	-- Shrouded Cloth Bracerss
		r(310871),	-- Shrouded Cloth Cape
		r(310873),	-- Shrouded Cloth Hood
		r(310872),	-- Shrouded Cloth Mittens
		r(310874),	-- Shrouded Cloth Pants
		r(310870),	-- Shrouded Cloth Robe
		r(310869),	-- Shrouded Cloth Sandals
		r(310875),	-- Shrouded Cloth Spaulders
	}),
	n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
		r(1272578),	-- Aspirant's Ringed Banner
		r(1272575),	-- Heart of the Forest Banner
		r(1263853),	-- Kyrian Aspirant's Rolled Cushion
	})),
	filter(MISC, {
		r(343204),	-- Crafter's Mark I
		r(310923),	-- Heavy Shrouded Cloth Bandage
		r(345986),	-- Lightless Silk Pouch
		r(343659),	-- Novice Crafter's Mark
		r(345985),	-- Shrouded Cloth Bag
		r(310924),	-- Shrouded Cloth Bandage
	}),
}));
DF_TAILORING = applyclassicphase(DF_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	r(366258),	-- Dragon Isles Tailoring
	r(392396, {	-- Dragon Isles Cloth Scavenging
		["collectible"] = false,
	}),
	r(376562),	-- Dragon Isles Unravelling
	-- Technically, not from the trainer - you temporarily learn these when you touch the crafting table.
	r(376563, {["u"]=TRAINING}),	-- Fiddle with Draconium Fabric Cutters
	r(376564, {["u"]=TRAINING}),	-- Fiddle with Khaz'gorite Fabric Cutters
	n(ARMOR, {
		r(376509),	-- Surveyor's Cloth Bands
		r(376507),	-- Surveyor's Cloth Robe
		r(376508),	-- Surveyor's Cloth Treads
		r(376506),	-- Surveyor's Tailored Cloak
		r(395809),	-- Surveyor's Seasoned Cord
		r(395813),	-- Surveyor's Seasoned Gloves
		r(395814),	-- Surveyor's Seasoned Pants
		r(395807),	-- Surveyor's Seasoned Hood
		r(395815),	-- Surveyor's Seasoned Shoulders
	}),
	n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
		r(1259247),	-- Draconic Circular Rug
		r(1261940),	-- Tapestry of the Five Flights
	})),
	filter(PROFESSION_EQUIPMENT, {
		r(376543),	-- Wildercloth Alchemist's Robe
		r(376547),	-- Wildercloth Chef's Hat
		r(376549),	-- Wildercloth Enchanter's Hat
		r(376551),	-- Wildercloth Fishing Cap
		r(376553),	-- Wildercloth Gardening Hat
		r(376545),	-- Wildercloth Tailor's Coat
	}),
	filter(MISC, {
		r(376533),	-- Abrasive Polishing Cloth
		r(376535),	-- Blazing Embroidery Thread
		r(376699),	-- Illustrious Insight
		r(389196),	-- Recraft Equipment
		r(376560),	-- Simply Stitched Reagent Bag
		r(376538),	-- Vibrant Spellthread
		r(376528),	-- Wildercloth Bag
		r(376530),	-- Wildercloth Bandage
	}),
	filter(REAGENTS, {
		r(376558),	-- Vibrant Wildercloth Bolt
		r(376555),	-- Wildercloth Bolt
	}),
}));
TWW_TAILORING = bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	r(423343),	-- Khaz Algar Tailoring
	r(446926),	-- Unraveling
	r(425143),	-- Recraft Equipment
	n(ARMOR, {
		r(446958),	-- Pioneer's Cloth Cloak
		r(446957),	-- Pioneer's Cloth Cord
		r(446956),	-- Pioneer's Cloth Cuffs
		r(446959),	-- Pioneer's Cloth Hood
		r(446960),	-- Pioneer's Cloth Robe
		r(446955),	-- Pioneer's Cloth Slippers
		r(446963),	-- Pioneer's Perfected Gloves
		r(446961),	-- Pioneer's Perfected Leggings
		r(446962),	-- Pioneer's Perfected Mantle
	}),
	filter(BAGS, {
		r(446976),	-- Weavercloth Bag
		r(446978),	-- Weavercloth Reagent Bag
	}),
	n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
		r(1260215),	-- Dornogal Framed Rug
		r(1260326),	-- Undermine Bean Bag Chair
	})),
	filter(PROFESSION_EQUIPMENT, {
		r(446975),	-- Artisan Tailor's Coat
		r(446968),	-- Weavercloth Alchemist's Robe
		r(446969),	-- Weavercloth Chef's Hat
		r(446966),	-- Weavercloth Enchanter's Hat
		r(446965),	-- Weavercloth Fishing Cap
		r(446964),	-- Weavercloth Gardening Hat
		r(446967),	-- Weavercloth Tailor's Coat
	}),
	filter(MISC, {
		r(456706),	-- Algari Weaverline
		r(446996),	-- Bright Polishing Cloth
		r(446998),	-- Gritty Polishing Cloth
		r(447002),	-- Weavercloth Bandage
	}),
	filter(REAGENTS, {
		r(454397),	-- Exquisite Weavercloth Bolt
		r(446929),	-- Weavercloth Bolt
	}),
});
MID_TAILORING = bubbleDown({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	r(471015),	-- Midnight Tailoring
	r(1265674),	-- Artisan Tailor's Moxie
	r(1265682),	-- Concentration
	r(1265708),	-- Ingenuity
	r(1265621),	-- Knowledge
	r(1265608),	-- Multicraft
	r(1265658),	-- Quality
	r(471047),	-- Recraft Equipment
	r(1265700),	-- Resourcefulness
	r(1265683),	-- Skill
	r(1265666),	-- Sparks
	n(ARMOR, {
		r(1228953),	-- Courtly Belt
		r(1228958),	-- Courtly Cloak
		r(1228952),	-- Courtly Gloves
		r(1228951),	-- Courtly Helm
		r(1228956),	-- Courtly Pants
		r(1228955),	-- Courtly Robes
		r(1228959),	-- Courtly Shoulders
		r(1228957),	-- Courtly Slippers
		r(1228954),	-- Courtly Wrists
	}),
	n(ARMOR_ENCHANTMENTS, {
		r(1228976),	-- Bright Linen Spellthread
	}),
	filter(BAGS, {
		r(1228979),	-- Arcanoweave Reagent Rucksack
		r(1228978),	-- Bright Linen Reagent Satchel
		r(1228977),	-- Imbued Bright Linen Backpack
		r(1228980),	-- Sunfire Silk Backpack
	}),
	filter(COSMETIC, {
		r(1280545),	-- Blood-Tempered Cape
		r(1280544),	-- Farstrider's Embroidered Cover
		r(1280543),	-- Scout's Cape
		r(1280542),	-- Silvermoon Agent's Drape
		r(1280541),	-- Smuggler's Cloak
		r(1280546),	-- Spellbreaker's Shroud
	}),
	filter(PROFESSION_EQUIPMENT, {
		r(1228968),	-- Bright Linen Alchemy Apron
		r(1228970),	-- Bright Linen Enchanting Hat
		r(1228971),	-- Bright Linen Fishing Hat
		r(1228972),	-- Bright Linen Herbalism Hat
		r(1228973),	-- Bright Linen Tailoring Robe
		r(1228969),	-- Chef's Bright Linen Cooking Chapeau
	}),
	filter(MISC, {
		r(1228941),	-- Bright Linen Bandage
	}),
	filter(REAGENTS, {
		r(1228939),	-- Bright Linen Bolt
		r(1228940),	-- Imbued Bright Linen Bolt
	}),
});


















