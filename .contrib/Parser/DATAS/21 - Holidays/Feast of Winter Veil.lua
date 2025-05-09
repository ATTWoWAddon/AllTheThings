--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
FEAST_OF_WINTER_VEIL_HEADER = createHeader({
	readable = "Feast of Winter Veil",
	constant = "FEAST_OF_WINTER_VEIL_HEADER",
	icon = [[~_.asset("Holiday_winter_veil")]],
	eventID = EVENTS.FEAST_OF_WINTER_VEIL,
	-- #if BEFORE WRATH
	eventSchedule = {
		1, -- Recurring
		12, 16, 10, 0,	-- 12/16 at 10:00 AM
		1, 2, 6, 0		-- 01/02 at 6 AM
	},
	-- #endif
	text = {
		en = WOWAPI_GetSpellName(21953),
		cn = "冬幕节", -- WOWAPI_GetSpellName(21953) == 冬幕大餐
		tw = "冬幕節",
	},
});
local HUGE_SNOWBALL = i(35557);	-- Huge Snowball
local FROZEN_ARMS_OF_A_HERO = i(128314, {	-- Frozen Arms of a Hero
	["timeline"] = { ADDED_6_2_0 },
});
local MEDALLION_OF_THE_LEGION = i(128315, {	-- Medallion of the Legion
	["timeline"] = { ADDED_6_2_0 },
});

-- BB King Criteria UID shenanigans
local TYRANDE_WHISPERWIND_CRITERIA_UID = 12666;
local PROPHET_VELEN_CRITERIA_UID = 12667;
local LORTHEMAR_THERON_CRITERIA_UID = 12660;
local LADY_SYLVANAS_WINDRUNNER_CRITERIA_UID = 12661;
local BAINE_BLOODHOOF_CRITERIA_UID = 12662;
-- #if ANYCLASSIC
-- #if AFTER 4.0.3
-- #if BEFORE 6.0.2
-- Crieve NOTE: The dumb shits at Blizzard shifted these achievement criterias for Cataclysm Classic
TYRANDE_WHISPERWIND_CRITERIA_UID = 12665;
PROPHET_VELEN_CRITERIA_UID = 12666;
LORTHEMAR_THERON_CRITERIA_UID = 12659;
LADY_SYLVANAS_WINDRUNNER_CRITERIA_UID = 12660;
BAINE_BLOODHOOF_CRITERIA_UID = 12661;
-- #endif
-- #endif
-- #endif

-- WoWHead doesn't list specific colors on all of the vendors, but if you visit on the opposite faction, they sell both. It's based on the character's faction. Putting this in here in case its different and we need two separate distinctions.
local HOLIDAY_VENDOR_GROUPS_GREEN = {
	i(34261, {	-- Pattern: Green Winter Clothes
		["timeline"] = { ADDED_2_3_0 },
	}),
}
local HOLIDAY_VENDOR_GROUPS_RED = {
	i(34319, {	-- Pattern: Red Winter Clothes
		["timeline"] = { ADDED_2_3_0 },
	}),
};
local HOLIDAY_NON_COLLECTIBLE_GROUPS = {
	i(21215),	-- Graccu's Mince Meat Fruitcake
	-- #if AFTER 3.0.2.8962
	i(44481),	-- Grindgear Toy Gorilla
	-- #endif
	-- #if AFTER 3.1.0.9658
	i(44601),	-- Heavy Copper Racer
	-- #endif
	-- #if AFTER 3.0.2.8962
	i(34498),	-- Paper Zeppelin Kit (3.0.2.8962)
	i(44482),	-- Trusty Copper Racer (3.0.2.8970)
	-- #endif
	-- #if AFTER 3.1.0.9658
	i(44599),	-- Zippy Copper Racer
	-- #endif
};
local HOLIDAY_SMOKYWOOD_PASTURES_GIFT_PACK = {	-- Smokywood Pastures Gift Pack
	-- #if BEFORE 6.2.2.20395
	i(2996),	-- Bolt of Linen Cloth
	i(2840),	-- Copper Bar
	i(2318),	-- Light Leather
	i(785),		-- Mageroyal
	-- #else
	i(128647, {	-- Fizzy Apple Cider
		["timeline"] = { ADDED_6_2_2 },
	}),
	-- #endif
};
local STOLEN_PRESENT_GROUPS = {
	-- Battle Pets/Companions
	i(54436, {	-- Blue Clockwork Rocket Bot (PET!)
		["timeline"] = { ADDED_3_3_3 },
	}),
	i(34425, {	-- Clockwork Rocket Bot (PET!)
		["timeline"] = { ADDED_2_3_0 },
	}),
	i(73797, {	-- Lumpy (PET!)
		["timeline"] = { ADDED_4_3_0 },
	}),
	i(104317, {	-- Rotten Little Helper (PET!)
		["timeline"] = { ADDED_5_4_0 },
	}),
	i(178533, {	-- Jingles (PET!)
		["timeline"] = { ADDED_9_0_1 },
	}),
	i(232531, {	-- Grunch
		["timeline"] = { ADDED_11_0_7 },
	}),
	-- Toys
	i(54343),	-- Blue Crashin' Thrashin' Racer Controller (TOY!)
	i(108632, {	-- Crashin' Thrashin' Flamer Controller (TOY!)
		["timeline"] = { ADDED_6_2_2 },
	}),
	i(104318, {	-- Crashin' Thrashin' Flyer Controller (TOY!)
		["timeline"] = { ADDED_5_4_0 },
	}),
	i(172223, {	-- Crashin' Thrashin' Battleship (TOY!)
		["timeline"] = { ADDED_8_2_5 },
		["races"] = ALLIANCE_ONLY,
	}),
	i(172222, {	-- Crashin' Thrashin' Juggernaught (TOY!)
		["timeline"] = { ADDED_8_2_5 },
		["races"] = HORDE_ONLY,
	}),
	i(37710),	-- Crashin' Thrashin' Racer Controller (TOY!)
	i(116763, {	-- Crashin' Thrashin' Shredder Controller (TOY!)
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(139337, {	-- Disposable Winter Veil Suits (TOY!)
		["timeline"] = { ADDED_7_0_3 },
	}),
	i(128636, {	-- Endothermic Blaster (TOY!)
		["timeline"] = { ADDED_7_0_3 },
	}),
	i(191925, {	-- Falling Star Flinger (TOY!)
		["timeline"] = { ADDED_10_2_0 },
	}),
	i(191937, {	-- Falling Star Catcher (TOY!)
		["timeline"] = { ADDED_10_2_0 },
	}),
	i(209859, {	-- Festive Trans-Dimensional Bird Whistle (TOY!)
		["timeline"] = { ADDED_10_2_0 },
	}),
	i(116692, {	-- Fuzzy Green Lounge Cushion (TOY!)
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(162973, {	-- Greatfather Winter's Hearthstone (TOY!)
		["timeline"] = { ADDED_8_1_0 },	-- 8.0.1 it was added in the Gift, so will say 8.1 for this source
	}),
	i(151343, {	-- Hearthstation (A) (TOY!)
		["timeline"] = { ADDED_8_2_5 },
		["races"] = ALLIANCE_ONLY,
	}),
	i(151344, {	-- Hearthstation (H) (TOY!)
		["timeline"] = { ADDED_8_2_5 },
		["races"] = HORDE_ONLY,
	}),
	i(208825, {	-- Junior Timekeeper's Racing Belt (TOY!)
		["timeline"] = { ADDED_11_0_7 },
	}),
	i(46709),	-- MiniZep Controller (TOY!)
	i(116689, {	-- Pineapple Lounge Cushion (TOY!)
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(128776, {	-- Red Wooden Sled (TOY!)
		["timeline"] = { ADDED_6_2_2 },
	}),
	i(187422, {	-- Rockin' Rollin' Racer Customizer 19.9.3 (TOY!)
		["timeline"] = { ADDED_10_0_2 },
	}),
	i(116690, {	-- Safarai Lounge Cushion (TOY!)
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(116456, {	-- Scroll of Storytelling (TOY!)
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(90888, {	-- Special Edition Foot Ball (TOY!)
		["timeline"] = { ADDED_6_2_3 },
	}),
	i(90883, {	-- The Pigskin (TOY!)
		["timeline"] = { ADDED_6_2_3 },
	}),
	i(54438),	-- Tiny Blue Ragdoll (TOY!)
	i(54437),	-- Tiny Green Ragdoll (TOY!)
	i(162643, {	-- Toy Armor Set [A] (TOY!)
		["timeline"] = { ADDED_9_1_5 },
		["races"] = ALLIANCE_ONLY,
	}),
	i(162642, {	-- Toy Armor Set [H] (TOY!)
		["timeline"] = { ADDED_9_1_5 },
		["races"] = HORDE_ONLY,
	}),
	i(44606),	-- Toy Train Set (TOY!)
	i(151349, {	-- Toy Weapon Set [A] (TOY!)
		["timeline"] = { ADDED_7_3_0 },
		["races"] = ALLIANCE_ONLY,
	}),
	i(151348, {	-- Toy Weapon Set [H] (TOY!)
		["timeline"] = { ADDED_7_3_0 },
		["races"] = HORDE_ONLY,
	}),
	i(172219, {	-- Wild Holly (TOY!)
		["timeline"] = { ADDED_8_2_5 },
	}),
	i(45057),	-- Wind-Up Train Wrecker (TOY!)
	i(188680, {	-- Winter Veil Chorus Book (TOY!)
		["timeline"] = { ADDED_9_1_5 },
	}),
	i(210656, {	-- Winter Veil Socks (TOY!)
		["timeline"] = { ADDED_11_0_7 },
	}),
	i(178530, {	-- Wreath-A-Rang (TOY!)
		["timeline"] = { ADDED_9_1_5 },
	}),
	i(116691, {	-- Zhevra Lounge Cusion (TOY!)
		["timeline"] = { ADDED_6_0_2 },
	}),
	-- Mount Mods
	i(210432, {	-- Highland Drake: Winter Veil Armor (MM!)
		["timeline"] = { ADDED_10_2_0 },
	}),
	-- Illusions
	i(128649, {	-- Illusion: Winter's Grasp (ILLUSION!)
		["timeline"] = { ADDED_6_2_2 },
	}),
	i(118572, {	-- Illusion: Flames of Ragnaros (ILLUSION!)
		["timeline"] = { ADDED_6_0_2 },
	}),
	-- Appearances
	i(143898, {	-- Miniature Winter Veil Tree (Level 1 - Cosmetic)
		["timeline"] = { ADDED_7_1_0 },
	}),
	i(117371, {	-- Miniature Winter Veil Tree (Level 1-110)
		["timeline"] = { ADDED_6_0_2, REMOVED_7_1_0 },
	}),
	i(93625, {	-- Miniature Winter Veil Tree (Level 90)
		["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
	}),
	i(66540, {	-- Miniature Winter Veil Tree (Level 85)
		["timeline"] = { ADDED_4_3_0, REMOVED_5_1_0 },
	}),
	-- Trinkets
	i(151351, {	-- Glowing Gift
		["timeline"] = { ADDED_7_3_0 },
	}),
	-- Misc:
	i(46725),	-- Red Rider Air Rifle
	i(219291, {	-- Puntable Baby Greench
		["timeline"] = { ADDED_11_0_7 },
	}),
	i(219255, {	-- Puntable Rotten Little Helper
		["timeline"] = { ADDED_11_0_7 },
	}),
};
root(ROOTS.Holidays, applyevent(EVENTS.FEAST_OF_WINTER_VEIL, n(FEAST_OF_WINTER_VEIL_HEADER, {
	n(ACHIEVEMENTS, {
		ach(1692, {	-- Merrymaker (A)
			["sym"] = {{"meta_achievement",
				273,			-- On Metzen!
				252,			-- With a Little Helper from My Friends
				1255,			-- Scrooge (A)
				1282,			-- Fa-la-la-la-Ogri'la
				277,			-- 'Tis the Season
				279,			-- Simply Abominable
				1687,			-- Let It Snow
				1686,			-- Bros. Before Ho Ho Ho's (A)
				1688,			-- The Winter Veil Gourmet
				1689,			-- He Knows If You've Been Naughty
				1690,			-- A Frosty Shake
			}},
			["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				title(102),				-- Merrymaker
			},
		}),
		ach(1691, {	-- Merrymaker (H) / Merrymaker [MOP+]
			["sym"] = {{"meta_achievement",
				273,			-- On Metzen!
				252,			-- With a Little Helper from My Friends
				-- #if AFTER MOP
				1255,			-- Scrooge (A)
				-- #endif
				259,			-- Scrooge (H)
				1282,			-- Fa-la-la-la-Ogri'la
				277,			-- 'Tis the Season
				279,			-- Simply Abominable
				1687,			-- Let It Snow
				-- #if AFTER MOP
				1686,			-- Bros. Before Ho Ho Ho's (A)
				-- #endif
				1685,			-- Bros. Before Ho Ho Ho's (H)
				1688,			-- The Winter Veil Gourmet
				1689,			-- He Knows If You've Been Naughty
				1690,			-- A Frosty Shake
			}},
			["timeline"] = { ADDED_3_0_2 },
			-- #if BEFORE MOP
			["races"] = HORDE_ONLY,
			-- #endif
			["groups"] = {
				title(102),				-- Merrymaker
			},
		}),
		ach(277, {	-- 'Tis the Season
			["providers"] = {
				{ "i", 21215 },		-- Graccu's Mince Meat Fruitcake
				{ "i", 21525 },		-- Green Winter Hat
				{ "i", 21524 },		-- Red Winter Hat
				-- #if AFTER 7.2.5.24163
				{ "i", 151792 },	-- Green Winter Clothes
				{ "i", 151790 },	-- Red Winter Clothes
				{ "i", 151791 },	-- Winter Boots
				-- #else
				{ "i", 34087 },		-- Green Winter Clothes
				{ "i", 34085 },		-- Red Winter Clothes
				{ "i", 34086 },		-- Winter Boots
				-- #endif
			},
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { NORTHREND_DALARAN },
		}),
		ach(5853, {	-- A-Caroling We Will Go (A)
			-- #if AFTER 9.1.5
			["provider"] = { "i", 188680 },	-- Winter Veil Chorus Book
			-- #else
			["provider"] = { "i", 70923 },	-- Gaudy Winter Veil Sweater
			-- #endif
			["timeline"] = { ADDED_4_3_0 },
			["sym"] = {{ "achievement_criteria" }},
			["maps"] = { ORGRIMMAR, SILVERMOON_CITY, THUNDER_BLUFF, UNDERCITY },
			["races"] = ALLIANCE_ONLY,
		}),
		ach(5854, {	-- A-Caroling We Will Go (H)
			-- #if AFTER 9.1.5
			["provider"] = { "i", 188680 },	-- Winter Veil Chorus Book
			-- #else
			["provider"] = { "i", 70923 },	-- Gaudy Winter Veil Sweater
			-- #endif
			["timeline"] = { ADDED_4_3_0 },
			["sym"] = {{ "achievement_criteria" }},
			["maps"] = { DARNASSUS, THE_EXODAR, IRONFORGE, STORMWIND_CITY },
			["races"] = HORDE_ONLY,
		}),
		ach(1690, {	-- A Frosty Shake
			["providers"] = {
				{ "i", 17712 },	-- Winter Veil Disguise Kit
				{ "i", 17202 },	-- Snowball
			},
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { NORTHREND_DALARAN },
		}),
		ach(4436, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- BB King (A)
			["provider"] = { "i", 46725 },	-- Red Rider Air Rifle
			["maps"] = {
				ORGRIMMAR,
				SILVERMOON_CITY,
				UNDERCITY,
				-- #if BEFORE 9.0.1
				THUNDER_BLUFF,
				-- #endif
			},
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				crit(LORTHEMAR_THERON_CRITERIA_UID, {	-- Lor'themar Theron
					["provider"] = { "n", 16802 },	-- Lor'themar Theron
				}),
				crit(LADY_SYLVANAS_WINDRUNNER_CRITERIA_UID, {	-- Lady Sylvanas Windrunner
					["provider"] = { "n", 10181 },	-- Lady Sylvanas Windrunner
				}),

				-- THUNDER BLUFF LEADER HISTORY
				-- #if BEFORE 9.0.1
				-- Patch 9.0.1 (2020-10-13): Baine Bloodhoof removed from the criteria.
				-- #if AFTER 4.0.3
				-- Patch 4.0.3a (2010-11-23): Cairne Bloodhoof changed to Baine Bloodhoof;
				crit(BAINE_BLOODHOOF_CRITERIA_UID, {	-- Baine Bloodhoof <High Chieftain>
					["provider"] = { "n", 36648 },	-- Baine Bloodhoof <High Chieftain>
				}),
				-- #else
				crit(BAINE_BLOODHOOF_CRITERIA_UID, {	-- Cairne Bloodhoof <High Chieftain>
					["provider"] = { "n", 3057 },	-- Cairne Bloodhoof <High Chieftain>
				}),
				-- #endif
				-- #endif

				-- ORGRIMMAR FACTION LEADER HISTORY
				-- #if AFTER 8.2.5
				-- Patch 8.2.5 (2019-09-24): Eitrigg has replaced High Overlord Saurfang.
				crit(35832, {	-- Eitrigg
					["provider"] = { "n", 126066 },	-- Eitrigg
				}),
				-- #elseif AFTER 7.0.1
				-- Legion Hotfix (2016-12-16): High Overlord Saurfang has replaced Vol'jin from the criteria.
				crit(12659, {	-- High Overlord Saurfang
					["provider"] = { "n", 14720 },	-- High Overlord Saurfang
				}),
				-- #elseif AFTER 6.0.2
				-- Patch 6.0.2 (2014-10-14): Garrosh Hellscream changed to Vol'jin to reflect post-Siege of Orgrimmar events.
				crit(12659, {	-- Vol'jin
					["provider"] = { "n", 10540 },	-- Vol'jin
				}),
				-- #elseif AFTER 4.0.3
				-- Patch 4.0.3a (2010-11-23): Thrall changed to Garrosh Hellscream; Vol'jin removed.
				crit(12658, {	-- Garrosh Hellscream <Warchief>
					["provider"] = { "n", 39605 },	-- Garrosh Hellscream <Warchief>
				}),
				-- #else
				crit(12658, {	-- Thrall <Warchief>
					["provider"] = { "n", 4949 },	-- Thrall <Warchief>
				}),
				crit(12659, {	-- Vol'jin
					["provider"] = { "n", 10540 },	-- Vol'jin
				}),
				-- #endif
			},
		})),
		ach(4437, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- BB King (H)
			["provider"] = { "i", 46725 },	-- Red Rider Air Rifle
			["maps"] = {
				THE_EXODAR,
				DARNASSUS,
				IRONFORGE,
				-- #if BEFORE 9.0.1
				STORMWIND_CITY,
				-- #endif
			},
			["races"] = HORDE_ONLY,
			["groups"] = {
				crit(TYRANDE_WHISPERWIND_CRITERIA_UID, {	-- Tyrande Whisperwind
					["provider"] = { "n", 7999 },	-- Tyrande Whisperwind
				}),
				crit(PROPHET_VELEN_CRITERIA_UID, {	-- Prophet Velen
					["provider"] = { "n", 17468 },	-- Prophet Velen
				}),

				-- IRONFORGE FACTION LEADER HISTORY
				-- #if AFTER 4.0.3
				-- Patch 4.0.3a (2010-11-23): Criteria updated to match new faction leaders:
				-- King Magni Bronzebeard changed to Muradin Bronzebeard;
				-- High Tinker Mekkatorque removed.
				crit(12664, {	-- Muradin Bronzebeard
					["provider"] = { "n", 42928 },	-- Muradin Bronzebeard
				}),
				-- #else
				crit(12665, {	-- High Tinker Mekkatorque
					["provider"] = { "n", 7937 },	-- High Tinker Mekkatorque
				}),
				crit(12664, {	-- King Magni Bronzebeard
					["provider"] = { "n", 2784 },	-- King Magni Bronzebeard
				}),
				-- #endif

				-- STORMWIND CITY FACTION LEADER HISTORY
				-- #if BEFORE 9.0.1
				-- Patch 9.0.1 (2020-10-13): Anduin Wrynn removed.
				-- #if AFTER 7.0.1
				-- Legion Hotfix (2016-12-16): Anduin Wrynn replaced King Varian Wrynn from the criteria.
				crit(12663, {	-- Anduin Wrynn <King of Stormwind>
					["provider"] = { "n", 107574 },	-- Anduin Wrynn <King of Stormwind>
				}),
				-- #else
				crit(12663, {	-- King Varian Wrynn
					["provider"] = { "n", 29611 },	-- King Varian Wrynn
				}),
				-- #endif
				-- #endif
			},
		})),
		ach(1295, {	-- Crashin' & Thrashin'
			["providers"] = {
				{ "i", 37710 },	-- Crashin' Thrashin' Racer Controller
				{ "i", 54343 },	-- Blue Crashin' Thrashin' Racer Controller
			},
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(1282, {	-- Fa-la-la-la-Ogri'la
			["providers"] = {
				{ "i", 21212 },	-- Fresh Holly
				{ "i", 21213 },	-- Preserved Holly
				{ "n", 23120 },	-- Sky Sergeant Vanderlip
			},
			["sourceQuest"] = 11023,	-- Bomb them again!
			["timeline"] = { ADDED_3_0_2 },
			["coord"] = { 27.6, 52.9, BLADES_EDGE_MOUNTAINS },
			["_noautomation"] = true,
		}),
		ach(1689, {	-- He Knows If You've Been Naughty
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(1686, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- Holiday Bromance (A)
			["provider"] = { "i", 21519 },	-- Mistletoe
			["maps"] = {
				-- #if AFTER CATA
				NORTHERN_STRANGLETHORN,
				-- #else
				STRANGLETHORN_VALE,
				DESOLACE,
				-- #endif
				ELWYNN_FOREST,
				DUSTWALLOW_MARSH,
				STORMWIND_CITY
			},
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				crit(6228, {	-- Brother Nimetz in Stranglethorn Vale
					["provider"] = { "n", 739 },	-- Brother Nimetz
					-- #if AFTER CATA
					["coord"] = { 47.25, 11.10, NORTHERN_STRANGLETHORN },
					-- #else
					["coord"] = { 37.8, 3.6, STRANGLETHORN_VALE },
					-- #endif
				}),
				crit(6229, {	-- Brother Wilhelm in Goldshire
					["provider"] = { "n", 927 },	-- Brother Wilhelm
					-- #if AFTER CATA
					["coord"] = { 41.0, 65.8, ELWYNN_FOREST },
					-- #else
					["coord"] = { 41.0, 66.0, ELWYNN_FOREST },
					-- #endif
				}),
				crit(6231, {	-- Brother Karman in Theramore
					["provider"] = { "n", 8140 },	-- Brother Karman
					-- #if AFTER MOP
					["description"] = "If Theramore is phased, talk to Zidormi to the west of the city.",
					-- #endif
					-- #if AFTER CATA
					["coord"] = { 67.4, 47.2, DUSTWALLOW_MARSH },
					-- #else
					["coord"] = { 67.4, 47.4, DUSTWALLOW_MARSH },
					-- #endif
				}),
				crit(6230, {	-- Brother Kristoff in Stormwind
					["provider"] = { "n", 1444 },	-- Brother Kristoff
					-- #if AFTER LEGION
					["coord"] = { 54.6, 53.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 55.0, 54.2, STORMWIND_CITY },
					-- #endif
				}),
				crit(6232, {	-- Brother Joshua in Stormwind
					["provider"] = { "n", 5489 },	-- Brother Joshua
					-- #if AFTER LEGION
					["coord"] = { 49.6, 45.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 49.5, 45.2, STORMWIND_CITY },
					-- #endif
				}),
				crit(6233, {	-- Brother Crowley in Stormwind
					["provider"] = { "n", 12336 },	-- Brother Crowley
					-- #if AFTER LEGION
					["coord"] = { 52.2, 43.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 52.6, 43.4, STORMWIND_CITY },
					-- #endif
				}),
				crit(6234, {	-- Brother Cassius in Stormwind
					["provider"] = { "n", 1351 },	-- Brother Cassius
					-- #if AFTER LEGION
					["coord"] = { 52.2, 45.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 53.2, 45.2, STORMWIND_CITY },
					-- #endif
				}),
				crit(6235, {	-- Brother Benjamin in Stormwind
					["provider"] = { "n", 5484 },	-- Brother Benjamin
					-- #if AFTER LEGION
					["coord"] = { 51.6, 46.4, STORMWIND_CITY },
					-- #else
					["coord"] = { 52.3, 47.6, STORMWIND_CITY },
					-- #endif
				}),
				-- #if BEFORE CATA
				crit(6236, {	-- Brother Anton in Nijel's Point
					["provider"] = { "n", 1182 },	-- Brother Anton
					["coord"] = { 66.5, 7.9, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
				}),
				-- #endif
			},
		})),
		ach(1685, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- Holiday Bromance (H)
			["provider"] = { "i", 21519 },	-- Mistletoe
			["maps"] = { UNDERCITY, BOREAN_TUNDRA, ICECROWN },
			["races"] = HORDE_ONLY,
			["groups"] = {
				crit(6225, {	-- Brother Malach in the Undercity
					["provider"] = { "n", 5661 },	-- Brother Malach
					["coord"] = { 51.6, 22.6, UNDERCITY },
				}),
				crit(6226, {	-- Durkot Wolfbrother in Warsong Hold
					["provider"] = { "n", 26044 },	-- Durkot Wolfbrother
					["coord"] = { 40.2, 55.0, BOREAN_TUNDRA },
				}),
				crit(6662, {	-- Brother Keltan in Icecrown
					["provider"] = { "n", 31261 },	-- Brother Keltan
					["description"] = "Located on the horde gunship in the air.",
					["coord"] = { 69.4, 42.4, ICECROWN },
				}),
			},
		})),
		ach(10353, {	-- Iron Armada
			["timeline"] = { ADDED_6_2_2 },
			["groups"] = {
				crit(28989, {	-- Crashin' Thrashin' Cannon
					["provider"] = { "i", 108633 },	-- Crashin' Thrashin' Cannon
				}),
				crit(28924, {	-- Crashin' Thrashin' Flamer
					["provider"] = { "i", 108632 },	-- Crashin' Thrashin' Flamer Controller
				}),
				crit(28987, {	-- Crashin' Thrashin' Killdozer
					["provider"] = { "i", 108635 },	-- Crashin' Thrashin' Killdozer
				}),
				crit(28988, {	-- Crashin' Thrashin' Mortar
					["provider"] = { "i", 108634 },	-- Crashin' Thrashin' Mortar
				}),
				crit(28990, {	-- Crashin' Thrashin' Roller
					["provider"] = { "i", 108631 },	-- Crashin' Thrashin' Roller
				}),
			},
		}),
		ach(1687, {	-- Let It Snow
			["provider"] = { "i", 34191 },	-- Handful of Snowflakes
			["timeline"] = { ADDED_3_0_2 },
			["sym"] = {{ "achievement_criteria" }},
		}),
		ach(273, {	-- On Metzen!
			["provider"] = { "n", 15664 },	-- Metzen the Reindeer
			["timeline"] = { ADDED_3_0_2 },
			["sourceQuests"] = {
				-- #if AFTER 4.3.0
				7043,	-- You're a Mean One... [A]
				6983,	-- You're a Mean One... [H]
				-- #else
				8762,	-- Metzen the Reindeer (Alliance)
				8746,	-- Metzen the Reindeer (Horde)
				-- #endif
			},
			["maps"] = {
				-- #if AFTER CATA
				HILLSBRAD_FOOTHILLS,
				-- #else
				ALTERAC_MOUNTAINS,
				-- #endif
				IRONFORGE,
				ORGRIMMAR,
			},
		}),
		ach(1255, {	-- Scrooge (A)
			["providers"] = {
				{ "i", 17202 },	-- Snowball
				-- #if AFTER 4.0.3
				{ "n", 42928 },	-- Muradin Bronzebeard
				-- #else
				{ "n", 2784 },	-- King Magni Bronzebeard
				-- #endif
			},
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["_noautomation"] = true,
		}),
		ach(259, {	-- Scrooge (H)
			["providers"] = {
				{ "i", 17202 },	-- Snowball
				-- #if AFTER 4.0.3
				{ "n", 36648 },	-- Baine Bloodhoof <High Chieftain>
				-- #else
				{ "n", 3057 },	-- Cairne Bloodhoof <High Chieftain>
				-- #endif
			},
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = {
				-- #if AFTER 9.0.1
				ORIBOS,
				-- #endif
				THUNDER_BLUFF,
			},
			["races"] = HORDE_ONLY,
			["_noautomation"] = true,
		}),
		ach(279, {	-- Simply Abominable
			["sourceQuests"] = {
				7045,	-- A Smokywood Pastures' Thank You! (Alliance)
				6984,	-- A Smokywood Pastures' Thank You! (Horde)
			},
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = {
				IRONFORGE,
				ORGRIMMAR,
			},
		}),
		ach(8699, {	-- The Danger Zone
			["provider"] = { "i", 104318 },	-- Crashin' Thrashin' Flyer Controller
			["timeline"] = { ADDED_5_4_0 },
		}),
		ach(1688, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- The Winter Veil Gourmet
			["requireSkill"] = COOKING,
			["groups"] = {
				crit(6247, {	-- Gingerbread Cookie
					["provider"] = { "i", 17197 },	-- Gingerbread Cookie
				}),
				crit(6249, {	-- Hot Apple Cider
					["provider"] = { "i", 34411 },	-- Hot Apple Cider
				}),
				crit(6248, {	-- Winter Veil Egg Nog
					["provider"] = { "i", 17198 },	-- Winter Veil Egg Nog
				}),
			},
		})),
		pvp(ach(252, {	-- With a Little Helper from My Friends
			["provider"] = { "o", 180796 },	-- PX-238 Winter Wondervolt
			["timeline"] = { ADDED_3_0_2 },
			["_noautomation"] = true,
		})),
		ach(1705, {	-- Clockwork Rocket Bot (2007)
			["provider"] = { "i", 34425 },	-- Clockwork Rocket Bot
			["timeline"] = { ADDED_2_3_0 },
		}),
		ach(1706, {	-- Crashin' Thrashin' Racer (2008)
			["provider"] = { "i", 37710 },	-- Crashin' Thrashin' Racer Controller
			-- #if ANYCLASSIC
			["timeline"] = { CREATED_2_4_3, REMOVED_3_3_0 },
			-- #else
			["timeline"] = { ADDED_2_4_3 },
			-- #endif
		}),
		ach(6059, {	-- Red Rider Air Rifle (2009)
			["provider"] = { "i", 46725 },	-- Red Rider Air Rifle
			["timeline"] = { ADDED_4_3_0 },
		}),
		ach(6060, {	-- MiniZep Controller (2010)
			["provider"] = { "i", 46709 },	-- MiniZep Controller
			["timeline"] = { ADDED_4_3_0, REMOVED_4_3_0, ADDED_6_2_3 },
		}),
		ach(6061, {	-- Gaudy Winter Veil Sweater (2011)
			["provider"] = { "i", 70923 },	-- Gaudy Winter Veil Sweater
			["timeline"] = { ADDED_4_3_0 },
		}),
		ach(7852, {	-- They're Both Footballs? (2012)
			-- #if AFTER 6.0.0
			-- #if BEFORE 11.0.7
			["description"] = "If you have obtained both items but you didn't earn the achievement, try throwing both balls to a friend.\n\nIf you learned the toys on 2 different characters, the achievement cant be completed",
			-- #else
			["description"] = "If you have obtained both items but you didn't earn the achievement, try throwing both balls to a friend.",
			-- #endif
			-- #endif
			["providers"] = {
				{ "i", 90888 },	-- Special Edition Foot Ball (TOY!)
				{ "i", 90883 },	-- The Pigskin (TOY!)
			},
			["timeline"] = { ADDED_5_1_0 },
		}),
		ach(8698, {	-- Crashin' Thrashin' Flyer (2013)
			["provider"] = { "i", 104318 },	-- Crashin' Thrashin' Flyer Controller (TOY!)
			["timeline"] = { ADDED_5_4_0 },
		}),
		ach(9915, {	-- Crashin' Thrashin' Shredder (2014)
			["provider"] = { "i", 116763 },	-- Crashin' Thrashin' Shredder Controller (TOY!)
			["timeline"] = { ADDED_6_1_0 },
		}),
		ach(10337, {	-- Crashin' Thrashin' Flamer (2015)
			["provider"] = { "i", 108632 },	-- Crashin' Thrashin' Flamer Controller (TOY!)
			["timeline"] = { ADDED_6_2_2 },
		}),
		ach(10751, {	-- Brr... It's Cold in Here (2016)
			["provider"] = { "i", 128636 },	-- Endothermic Blaster (TOY!)
			["timeline"] = { ADDED_7_0_3 },
		}),
		ach(11913, {	-- Don't Play With That In The House (2017)
			["providers"] = {
				{ "i", 151349 },	-- Toy Weapon Set [A] (TOY!)
				{ "i", 151348 },	-- Toy Weapon Set [H] (TOY!)
			},
			["timeline"] = { ADDED_7_3_0 },
		}),
		ach(12850, {	-- At Least You're Being Careful (2018)
			["providers"] = {
				{ "i", 162643 },	-- Toy Armor Set [A] (TOY!)
				{ "i", 162642 },	-- Toy Armor Set [H] (TOY!)
			},
			["timeline"] = { ADDED_8_0_1 },
		}),
		ach(13927, {	-- Crashin' Splashin' (2019)
			["providers"] = {
				{ "i", 172223 },	-- Crashin' Thrashin' Battleship (TOY!)
				{ "i", 172222 },	-- Crashin' Thrashin' Juggernaught (TOY!)
			},
			["timeline"] = { ADDED_8_2_5 },
		}),
		ach(14931, {	-- Flying Festivities (2020)
			["provider"] = { "i", 178530 },	-- Wreath-A-Rang (TOY!)
			["timeline"] = { ADDED_9_0_5 },
		}),
		ach(15313, {	-- Rockin' Rollin' Racer (2021)
			["providers"] = {
				{ "i", 187422 },	-- Rockin' Rollin' Racer Customizer 19.9.3 (TOY!)
				{ "i", 187560 },	-- Rockin' Rollin' Racer Pack
			},
			["timeline"] = { ADDED_9_1_5 },
		}),
		ach(15181, {	-- Rock n' Roll (2021)
			["provider"] = { "i", 187422 },	-- Rockin' Rollin' Racer Customizer 19.9.3 (TOY!)
			["timeline"] = { ADDED_9_1_5 },
		}),
		ach(15645, {	-- To Catch Falling Stars (2022)
			["provider"] = { "i", 191937 },	-- Falling Star Catcher (TOY!)
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		ach(15653, {	-- The More You Know* (2022)
			["provider"] = { "i", 191937 },	-- Falling Star Catcher (TOY!)
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		ach(19077, {	-- Catch Me If You Can! (2023)
			["provider"] = { "i", 208825 },	-- Junior Timekeeper's Racing Belt (TOY!)
			["timeline"] = { ADDED_10_2_0 },
		}),
		ach(19130, {	-- Junior Racing Champion (2023)
			["provider"] = { "i", 208825 },	-- Junior Timekeeper's Racing Belt (TOY!)
			["timeline"] = { ADDED_10_2_0 },
		}),
		ach(20511, {	-- Gotta Punt em' All (2024)
			["provider"] = { "i", 218310 },	-- Box of Puntables (TOY!)
			["timeline"] = { ADDED_11_0_7 },
		}),
		ach(20510, {	-- What Could it be? (2024)
			["provider"] = { "i", 218310 },	-- Box of Puntables (TOY!)
			["timeline"] = { ADDED_11_0_7 },
		}),
	}),
	-- #if AFTER 7.3.0.24727
	filter(BATTLE_PETS, {
		petbattle(pet(2114, {	-- Globe Yeti (PET!)
			["description"] = "This pet spawns inside the globe located in Orgrimmar or Ironforge, and since 2019 its spawn rate has been greatly increased. Only one yeti is up at a time. When it spawns it will be a Level 1-3 Yeti by itself so be prepared. If you have a hard time competing with others for the pet you can make a macro that does the following:\n\n|cFFFFFFFF/tar globe yeti|r\n\n Spam this macro along with an |cFFFFFFFFInteract With Target|r key bind.\n\nYou can also try doing it while in War Mode since there are usually less people.",
			["timeline"] = { ADDED_7_3_0 },
			["maps"] = {
				ORGRIMMAR,
				IRONFORGE,
			},
		})),
	}),
	-- #endif
	n(COMMON_BOSS_DROPS, {
		-- #if AFTER LEGION
		i(139300, {	-- Finely-Tailored Green Holiday Hat
			["maps"] = {
				909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920,	-- Antorus
				751, 752, 753, 754, 755, 756,	-- Black Rook Hold
				713,	-- Eye of Azshara
				-- #if AFTER BFA
				1038,	-- Temple of Sethraliss
				1043,	-- Atrium of Sethraliss
				-- Waycrest Manor
				1015,	-- The Grand Foyer
				1016,	-- The Cellar
				1017,	-- Catacombs
				1018,	-- The Rupture
				1029,	-- Waycrest Dimension
				1512, 1513, 1514, 1515, 1516, 1517, 1518, 1519, 1520,	-- The Eternal Palace
				-- #endif
			},
			["crs"] = {
				125075,	-- Varimathras
				98696,	-- Illysanna Ravencrest
				91797,	-- King Deepbeard
				-- #if AFTER BFA
				133944,	-- Aspix
				131863,	-- Raal the Gluttonous
				150653,	-- Blackwater Behemoth
				-- #endif
			},
		}),
		i(139299, {	-- Finely-Tailored Red Holiday Hat
			["maps"] = {
				764, 765, 766, 767, 768, 769, 770, 771, 772,	-- Nighthold
				761, 763,	-- Court of Stars
				903,	-- The Seat of the Triumvirate
				-- #if AFTER BFA
				1148,	-- Ruin's Descent
				1149,	-- Hall of Sanitation
				1150,	-- Ring of Containment
				1151,	-- Archives of Eternity
				1152,	-- Plague Vault
				1153,	-- Gallery of Failures
				1154,	-- The Oblivion Door
				1155,	-- The Festering Core
				934,	-- Atal'Dazar
				935,	-- Sacrificial Pits
				936,	-- Freehold
				-- #endif
			},
			["crs"] = {
				101002,	-- Krosus
				104217,	-- Talixae Flamewreath
				122316,	-- Saprish
				-- #if AFTER BFA
				133298,	-- Fetid Devourer
				122965,	-- Vol'kaal
				126832,	-- Skycap'n Kragg
				-- #endif
			},
		}),
		-- #endif
		i(21525, {	-- Green Winter Hat
			["maps"] = {
				-- #if AFTER SHADOWLANDS
				-- Castle Nathria
				1735,	-- The Grand Walk
				1744,	-- The Purloined Stores
				1745,	-- Halls of the Faithful
				1746,	-- Pride's Prison
				1747,	-- Nightcloak Sanctum
				1748,	-- The Observatorium
				1750,	-- Feast of Arrogance
				-- #endif
				-- #if AFTER WOD
				593,	-- Auchindoun
				595,	-- Iron Docks
				610, 611, 612, 613, 614, 615,	-- Highmaul
				596, 597, 598, 599, 600,	-- Blackrock Foundry
				661, 662, 663, 664, 665, 666, 667, 668, 669, 670,	-- Hellfire Citadel
				-- #endif
				-- #if AFTER MOP
				556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570,	-- Siege of Orgrimmar
				-- #endif
				-- #if AFTER CATA
				293,	-- Grim Batol
				SHADOWFANG_KEEP,
				SHADOWFANG_KEEP_LEVEL2,
				SHADOWFANG_KEEP_LEVEL3,
				SHADOWFANG_KEEP_LEVEL4,
				SHADOWFANG_KEEP_LEVEL5,
				SHADOWFANG_KEEP_LEVEL6,
				SHADOWFANG_KEEP_LEVEL7,
				-- #endif
				-- #if AFTER WRATH
				THE_OCULUS, THE_OCULUS_FLOOR2, THE_OCULUS_FLOOR3, THE_OCULUS_FLOOR4, THE_OCULUS_FLOOR5,
				-- #else
				BLACKROCK_SPIRE,
				LBRS_TAZZALOR,
				LBRS_SKITTERWEB_TUNNELS,
				LBRS_HORDEMAR_CITY,
				LBRS_HALL_OF_BLACKHAND,
				LBRS_HALYCONS_LAIR,
				LBRS_CHAMBER_OF_BATTLE,
				DIRE_MAUL,
				SCHOLOMANCE,
				-- #if AFTER TBC
				AUCHINDOUN_AUCHENAI_CRYPTS,
				HELLFIRE_CITADEL_SHATTERED_HALLS,
				AUCHINDOUN_SHADOW_LABYRINTH,
				-- #endif
				-- #endif
			},
			["crs"] = {
				-- #if AFTER SHADOWLANDS
				166969,	-- Baroness Frieda
				-- #endif
				-- #if AFTER WOD
				76177,	-- Soulbinder Nyami
				79852,	-- Oshir
				77404,	-- The Butcher
				76865,	-- Beastlord Darmac
				93439,	-- Tyrant Velhari
				-- #endif
				-- #if AFTER MOP
				72249,	-- Galakras <The Last Brood of Galakrond>
				-- #endif
				-- #if AFTER CATA
				40319,	-- Drahga Shadowburner
				46964,	-- Lord Godfrey
				-- #endif
				-- #if AFTER WRATH
				27655,	-- Mage-Lord Urom
				-- #else
				1853,	-- Darkmaster Gandling
				10899,	-- Goraluk Anvilcrack <Blackhand Legion Armorsmith>
				11486,	-- Prince Tortheldrin
				-- #if AFTER TBC
				10429,	-- Warchief Rend Blackhand (TBC only)
				18373,	-- Exarch Maladaar
				16807,	-- Grand Warlock Nethekurse
				18732,	-- Grandmaster Vorpil
				-- #endif
				-- #endif
			},
		}),
		i(21524, {	-- Red Winter Hat
			["maps"] = {
				-- #if AFTER SHADOWLANDS
				-- Castle Nathria
				1735,	-- The Grand Walk
				1744,	-- The Purloined Stores
				1745,	-- Halls of the Faithful
				1746,	-- Pride's Prison
				1747,	-- Nightcloak Sanctum
				1748,	-- The Observatorium
				1750,	-- Feast of Arrogance
				1674,	-- Plaguefall
				1697,	-- Plaguefall
				1692,	-- Honor's Ascent
				1693,	-- Gardens of Repose
				1694,	-- Font of Fealty
				1695,	-- Seat of the Archon
				-- #endif
				-- #if AFTER WOD
				573,	-- Bloodmaul Slag Mines
				UPPER_BLACKROCK_SPIRE_WOD, 617, 618,	-- Upper Blackrock Spire
				596, 597, 598, 599, 600,	-- Blackrock Foundry
				661, 662, 663, 664, 665, 666, 667, 668, 669, 670,	-- Hellfire Citadel
				-- #endif
				-- #if AFTER MOP
				556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570,	-- Siege of Orgrimmar
				-- #endif
				-- #if AFTER CATA
				291, 292,	-- Deadmines
				283, 284,	-- Blackrock Caverns
				324,	-- The Stonecore
				-- #endif
				-- #if AFTER WRATH
				129,	-- The Nexus
				132,	-- Ahn'kahet: The Old Kingdom
				-- #else
				BLACKROCK_DEPTHS,
				BLACKROCK_SPIRE,
				LBRS_TAZZALOR,
				LBRS_SKITTERWEB_TUNNELS,
				LBRS_HORDEMAR_CITY,
				LBRS_HALL_OF_BLACKHAND,
				LBRS_HALYCONS_LAIR,
				LBRS_CHAMBER_OF_BATTLE,
				STRATHOLME,
				-- #if AFTER TBC
				CAVERNS_OF_TIME_OLD_HILLSBRAD_FOOTHILLS,
				TEMPEST_KEEP_BOTANICA,
				TEMPEST_KEEP_MECHANAR,
				-- #endif
				-- #endif
			},
			["crs"] = {
				-- #if AFTER SHADOWLANDS
				166969,	-- Baroness Frieda
				167406,	-- Sire Denathrius
				164255,	-- Globgrog
				162061,	-- Devos <Paragon of Doubt>
				-- #endif
				-- #if AFTER WOD
				74790,	-- Gug'rokk
				79912,	-- Commander Tharbek
				76814,	-- Flamebender Ka'graz
				90284,	-- Iron Reaver
				-- #endif
				-- #if AFTER MOP
				71515,	-- General Nazgrim
				-- #endif
				-- #if AFTER CATA
				47626,	-- Admiral Ripsnarl
				39679,	-- Corla, Herald of Twilight
				42333,	-- High Priestess Azil
				-- #endif
				-- #if AFTER WRATH
				26731,	-- Grand Magus Telestra
				29310,	-- Jedoga Shadowseeker
				-- #else
				10997,	-- Cannon Master Willey
				9019,	-- Emperor Dagran Thaurissan
				9237,	-- War Master Voone
				-- #if AFTER TBC
				17862,	-- Captain Skarloc
				17975,	-- High Botanist Freywinn
				19221,	-- Nethermancer Sepethrea
				-- #endif
				-- #endif
			},
		}),
	}),
	n(MAILBOX, {
		-- #if AFTER TBC
		["description"] = "These recipes are mailed to characters with the corresponding profession(s) at the start of the event. They can also be purchased from several seasonal vendors.",
		-- #else
		["description"] = "These recipes are mailed to characters with the corresponding profession(s) at the start of the event.",
		-- #endif
		["groups"] = {
			-- #if AFTER TBC
			i(34261, {	-- Pattern: Green Winter Clothes
				-- #if AFTER TBC
				["description"] = "Horde Tailors receive this pattern in the mail, but Alliance Tailors can learn it from the Neutral holiday vendor in Shattrath.",
				-- #else
				["description"] = "Horde Tailors receive this pattern in the mail, but Alliance Tailors that are adventurous can learn it from the Neutral holiday vendor in Orgrimmar.",
				-- #endif
				["timeline"] = { ADDED_2_3_0 },
			}),
			i(34319, {	-- Pattern: Red Winter Clothes
				-- #if AFTER TBC
				["description"] = "Alliance Tailors receive this pattern in the mail, but Horde Tailors can learn it from the Neutral holiday vendor in Shattrath.",
				-- #else
				["description"] = "Alliance Tailors receive this pattern in the mail, but Horde Tailors that are adventurous can learn it from the Neutral holiday vendor in Stormwind.",
				-- #endif
				["timeline"] = { ADDED_2_3_0 },
			}),
			i(34262, {	-- Pattern: Winter Boots (RECIPE!)
				["timeline"] = { ADDED_2_3_0 },
			}),
			i(34413, {	-- Recipe: Hot Apple Cider (RECIPE!)
				["timeline"] = { ADDED_2_3_0 },
			}),
			-- #else
			i(17724),	-- Pattern: Green Holiday Shirt
			-- #endif
			i(17712, {	-- Winter Veil Disguise Kit (TOY!)
				["description"] = "Greatfather Winter will mail this to you 24 hours after you complete the 'A Smokywood Pastures Thank You!' quest.",
				["sourceQuests"] = {
					7045,	-- A Smokywood Pastures Thank You! (Alliance)
					6984,	-- A Smokywood Pastures Thank You! (Horde)
				},
			}),
		},
	}),
	n(QUESTS, {
		q(8744, {	-- A Carefully Wrapped Present
			["providers"] = {
				{ "o", 180743 },	-- Carefully Wrapped Present
				{ "i", 21191 },	-- Carefully Wrapped Present
			},
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["isYearly"] = true,
			["groups"] = {
				i(116451, {	-- Warm Blue Woolen Socks
					["timeline"] = { ADDED_6_0_2 },
				}),
				i(116450, {	-- Warm Green Woolen Socks
					["timeline"] = { ADDED_6_0_2 },
				}),
				i(116448, {	-- Warm Red Woolen Socks
					["timeline"] = { ADDED_6_0_2 },
				}),
				i(128650, {	-- "Merry Munchkin" Costume
					["timeline"] = { ADDED_6_2_2 },
				}),
				i(21254),	-- Winter Veil Cookie
			},
		}),
		q(8803, {	-- A Festive Gift
			["providers"] = {
				{ "o", 180793 },	-- Festive Gift
				{ "i", 21363 },	-- Festive Gift
			},
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["isYearly"] = true,
			["lvl"] = 10,
			["groups"] = {
				i(21328),	-- Wand of Holiday Cheer
			},
		}),
		q(8768, {	-- A Gaily Wrapped Present
			["providers"] = {
				{ "o", 180747 },	-- Gaily Wrapped Present
				{ "i", 21310 },	-- Gaily Wrapped Present
			},
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["isYearly"] = true,
			["lvl"] = 20,
			["groups"] = {
				i(21301, {	-- Father Winter's Helper (PET!)
					["timeline"] = { ADDED_1_11_1 },
				}),
				i(21308, {	-- Winter Reindeer (PET!)
					["timeline"] = { ADDED_1_11_1 },
				}),
				i(21305, {	-- Winter's Little Helper (PET!)
					["timeline"] = { ADDED_1_11_1 },
				}),
				i(21309, {	-- Tiny Snowman (PET!)
					["timeline"] = { ADDED_1_11_1 },
				}),
			},
		}),
		q(8767, {	-- A Gently Shaken Gift [Non-Spell Casters Only] (Before 2015)
			["providers"] = {
				{ "o", 180746 },	-- Gently Shaken Gift
				{ "i", 21270 },	-- Gently Shaken Gift
			},
			["description"] = "Given prior to 2015 exclusively to non-spell casters.",
			["classes"] = exclude({ PRIEST, MAGE, WARLOCK, SHAMAN, DRUID }, ALL_CLASSES),
			["timeline"] = { REMOVED_6_2_3 },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["isYearly"] = true,
			["groups"] = {
				-- #if BEFORE 6.2.2
				i(116692, {	-- Fuzzy Green Lounge Cushion (TOY!)
					["timeline"] = { ADDED_6_0_2 },
				}),
				i(116689, {	-- Pineapple Lounge Cushion (TOY!)
					["timeline"] = { ADDED_6_0_2 },
				}),
				i(116690, {	-- Safarai Lounge Cushion (TOY!)
					["timeline"] = { ADDED_6_0_2 },
				}),
				i(116691, {	-- Zhevra Lounge Cusion (TOY!)
					["timeline"] = { ADDED_6_0_2 },
				}),
				-- #endif
				i(21235, {	-- Winter Veil Roast
					["timeline"] = { REMOVED_6_2_3 },
				}),
			},
		}),
		q(8788, {	-- A Gently Shaken Gift [Spell Casters Only] (Before 2015)
			["providers"] = {
				{ "o", 180746 },	-- Gently Shaken Gift
				{ "i", 21271 },	-- Gently Shaken Gift
			},
			["description"] = "Given prior to 2015 exclusively to spell casters.",
			["classes"] = { PRIEST, MAGE, WARLOCK, SHAMAN, DRUID },
			["timeline"] = { REMOVED_6_2_3 },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["isYearly"] = true,
			["groups"] = {
				-- #if BEFORE 6.2.2
				i(116692, {	-- Fuzzy Green Lounge Cushion (TOY!)
					["timeline"] = { ADDED_6_0_2 },
				}),
				i(116689, {	-- Pineapple Lounge Cushion (TOY!)
					["timeline"] = { ADDED_6_0_2 },
				}),
				i(116690, {	-- Safarai Lounge Cushion (TOY!)
					["timeline"] = { ADDED_6_0_2 },
				}),
				i(116691, {	-- Zhevra Lounge Cusion (TOY!)
					["timeline"] = { ADDED_6_0_2 },
				}),
				-- #endif
				i(21241, {	-- Winter Veil Eggnog
					["timeline"] = { REMOVED_6_2_3 },
				}),
			},
		}),
		q(39658, {	-- A Gently Shaken Gift (2015)
			["providers"] = {
				{ "o", 180746 },	-- Gently Shaken Gift
				{ "i", 128652 },	-- Gently Shaken Gift
			},
			["description"] = "Gift from 2015.",
			["timeline"] = { ADDED_6_2_2, REMOVED_7_0_3 },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["groups"] = {
				i(128776, {	-- Red Wooden Sled (TOY!)
					["timeline"] = { ADDED_6_2_2 },
				}),
				i(128768, {	-- Candy Cane
					["timeline"] = { ADDED_6_2_2 },
				}),
			},
		}),
		q(43364, {	-- A Gently Shaken Gift (2016)
			["providers"] = {
				{ "o", 180746 },	-- Gently Shaken Gift
				{ "i", 139343 },	-- Gently Shaken Gift
			},
			["description"] = "Gift from 2016.",
			["timeline"] = { ADDED_7_0_3, REMOVED_7_3_5 },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["groups"] = {
				i(139337, {	-- Disposable Winter Veil Suits (TOY!)
					["timeline"] = { ADDED_7_0_3 },
				}),
				i(128768, {	-- Candy Cane
					["timeline"] = { ADDED_6_2_2 },
				}),
			},
		}),
		q(50420, {	-- A Gently Shaken Gift (2017)
			["providers"] = {
				{ "o", 180746 },	-- Gently Shaken Gift
				{ "i", 151345 },	-- Gently Shaken Gift
			},
			["description"] = "Gift from 2017.  You will receive only one faction's Hearthstation.  In order to obtain the opposite faction's, you will need to have a character on that side open this gift.",
			["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["groups"] = {
				i(151343, {	-- Hearthstation (A) (TOY!)
					["timeline"] = { ADDED_7_3_5 },
					["races"] = ALLIANCE_ONLY,
				}),
				i(151344, {	-- Hearthstation (H) (TOY!)
					["timeline"] = { ADDED_7_3_5 },
					["races"] = HORDE_ONLY,
				}),
				i(128768, {	-- Candy Cane
					["timeline"] = { ADDED_6_2_2 },
				}),
			},
		}),
		q(53011, {	-- A Gently Shaken Gift (2018)
			["providers"] = {
				{ "o", 180746 },	-- Gently Shaken Gift
				{ "i", 162974 },	-- Gently Shaken Gift
			},
			["description"] = "Gift from 2018.",
			["timeline"] = { ADDED_8_0_1, REMOVED_8_2_5 },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["groups"] = {
				i(162973, {	-- Greatfather Winter's Hearthstone (TOY!)
					["timeline"] = { ADDED_8_0_1 },
				}),
				i(128768, {	-- Candy Cane
					["timeline"] = { ADDED_6_2_2 },
				}),
			},
		}),
		q(57643, {	-- A Gently Shaken Gift (2019)
			["providers"] = {
				{ "o", 180746 },	-- Gently Shaken Gift
				{ "i", 172225 },	-- Gently Shaken Gift
			},
			["description"] = "Gift from 2019.",
			["timeline"] = { ADDED_8_2_5, REMOVED_9_0_1 },	-- Should been removed earlier?
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["groups"] = {
				i(172219, {	-- Wild Holly (TOY!)
					["timeline"] = { ADDED_8_2_5 },
				}),
				i(128768, {	-- Candy Cane
					["timeline"] = { ADDED_6_2_2 },
				}),
			},
		}),
		q(60238, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_1, REMOVED_9_0_2 } }, {	-- A Gently Shaken Gift (2020)
			["providers"] = {
				{ "o", 180746 },	-- Gently Shaken Gift
				{ "i", 178529 },	-- Gently Shaken Gift
			},
			["description"] = "Gift from 2020.",
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["groups"] = {
				i(178530),	-- Wreath-A-Rang (TOY!)
				i(128768, {	-- Candy Cane
					["timeline"] = { ADDED_6_2_2 },
				}),
			},
		})),
		q(64581, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5, REMOVED_9_1_5 } }, {	-- A Gently Shaken Gift (2021)
			["providers"] = {
				{ "o", 180746 },	-- Gently Shaken Gift
				{ "i", 187520 },	-- Gently Shaken Gift
			},
			["description"] = "Gift from 2021.",
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["groups"] = {
				i(187422),	-- Rockin' Rollin' Racer Customizer 19.9.3 (TOY!)
				i(128768, {	-- Candy Cane
					["timeline"] = { ADDED_6_2_2 },
				}),
			},
		})),
		q(66508, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_0_2_LAUNCH } }, {	-- A Gently Shaken Gift (2022)
			["providers"] = {
				{ "o", 180746 },	-- Gently Shaken Gift
				{ "i", 192093 },	-- Gently Shaken Gift
			},
			["description"] = "Gift from 2022.",
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["groups"] = {
				i(191925),	-- Falling Star Flinger (TOY!)
			},
		})),
		q(78504, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_0 } }, {	-- A Gently Shaken Gift (2023)
			["providers"] = {
				{ "o", 180746 },	-- Gently Shaken Gift
				{ "i", 210657 },	-- Gently Shaken Gift
			},
			["description"] = "Gift from 2023.",
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["groups"] = {
				i(210656),	-- Winter Veil Socks (TOY!)
			},
		})),
		q(80684, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_7, REMOVED_11_0_7 } }, {	-- A Gently Shaken Gift (2024)
			["providers"] = {
				{ "o", 180746 },	-- Gently Shaken Gift
				{ "i", 218309 },	-- Gently Shaken Gift
			},
			["description"] = "Gift from 2024.",
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["groups"] = {
				i(218308, {	-- Winter Veil Cracker (TOY!)
					i(233013),	-- Coal Cookie
					i(234126),	-- Icicle Cupcake
					i(219286),	-- Puntable Globe Yeti
					i(234127),	-- Puntable Grumpling
					i(219289),	-- Puntable Tiny Snowman
				}),
			},
		})),
		q(8769, {	-- A Ticking Present
			["providers"] = {
				{ "o", 180748 },	-- Ticking Present
				{ "i", 21327 },	-- Ticking Present
			},
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["isYearly"] = true,
			["lvl"] = 40,
			["groups"] = {
				i(17725),	-- Formula: Enchant Weapon - Winter's Might (RECIPE!)
				i(17722),	-- Pattern: Gloves of the Greatfather (RECIPE!)
				i(17724),	-- Pattern: Green Holiday Shirt
				i(17706),	-- Plans: Edge of Winter (RECIPE!)
				i(17709),	-- Recipe: Elixir of Frost Power (RECIPE!)
				i(17720),	-- Schematic: Snowmaster 9000 (RECIPE!)
				i(21325),	-- Mechanical Greench
				i(21213),	-- Preserved Holly
			},
		}),
		{	-- A Smokywood Pastures' Thank You!
			["allianceQuestData"] = q(7045, {	-- A Smokywood Pastures' Thank You! (Alliance)
				["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
				["sourceQuest"] = 7043,	-- You're a Mean One... (Alliance)
				-- #if AFTER CATA
				["coord"] = { 33.2, 67.8, IRONFORGE },
				-- #else
				["coord"] = { 33.4, 67, IRONFORGE },
				-- #endif
				["races"] = ALLIANCE_ONLY,
				["lvl"] = lvlsquish(30, 30, 10),
			}),
			["hordeQuestData"] = q(6984, {	-- A Smokywood Pastures' Thank You! (Horde)
				["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
				["sourceQuest"] = 6983,	-- You're a Mean One... (Horde)
				-- #if AFTER CATA
				["coord"] = { 52.4, 77, ORGRIMMAR },
				-- #else
				["coord"] = { 53.2, 66.6, ORGRIMMAR },
				-- #endif
				["races"] = HORDE_ONLY,
				["lvl"] = lvlsquish(30, 30, 10),
			}),
			["isYearly"] = true,
			["groups"] = {
				i(17726, {	-- Smokywood Pastures Special Gift
					i(17725),	-- Formula: Enchant Weapon - Winter's Might (RECIPE!)
					-- #if AFTER 6.2.2
					i(128649, {	-- Illusion: Winter's Grasp (ILLUSION!)
						["timeline"] = { ADDED_6_2_2 },
					}),
					i(118572, {	-- Illusion: Flames of Ragnaros (ILLUSION!)
						["timeline"] = { ADDED_6_0_2 },
					}),
					-- #endif
					i(17722),	-- Pattern: Gloves of the Greatfather (RECIPE!)
					i(17724),	-- Pattern: Green Holiday Shirt
					i(17706),	-- Plans: Edge of Winter (RECIPE!)
					i(17709),	-- Recipe: Elixir of Frost Power (RECIPE!)
					i(17720),	-- Schematic: Snowmaster 9000 (RECIPE!)
				}),
			},
		},
		q(11528, {	-- A Winter Veil Gift (2007)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 34426 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2007.",
			-- #if ANYCLASSIC
			["timeline"] = { ADDED_2_3_0, REMOVED_3_0_2 },
			-- #else
			["timeline"] = { ADDED_2_3_0, REMOVED_2_4_3 },
			-- #endif
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(34425, {	-- Clockwork Rocket Bot (PET!)
					["timeline"] = { ADDED_2_3_0 },
				}),
			},
		}),
		q(13203, {	-- A Winter Veil Gift (2008)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 43504 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2008.",
			["timeline"] = { ADDED_2_4_3, REMOVED_3_3_0 },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(37710, {	-- Crashin' Thrashin' Racer Controller (TOY!)
					-- #if ANYCLASSIC
					["timeline"] = { CREATED_2_4_3, ADDED_3_0_2 },
					-- #else
					["timeline"] = { ADDED_2_4_3 },
					-- #endif
				}),
			},
		}),
		q(13966, {	-- A Winter Veil Gift (2009)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 46740 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2009.",
			["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3_LAUNCH },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["lvl"] = 10,
			["groups"] = {
				i(46725, {	-- Red Rider Air Rifle
					["timeline"] = { ADDED_3_3_0 },
				}),
			},
		}),
		q(28878, {	-- A Winter Veil Gift (2010)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 67443 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2010.",
			["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_4_2_0 },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(46709, {	-- MiniZep Controller (TOY!)
					["timeline"] = { ADDED_4_0_3_LAUNCH },
				}),
			},
		}),
		q(29385, {	-- A Winter Veil Gift (2011)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 70938 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2011.",
			["timeline"] = { ADDED_4_2_0, REMOVED_5_1_0 },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(70923, {	-- Gaudy Winter Veil Sweater
					["timeline"] = { ADDED_4_2_0 },
				}),
			},
		}),
		q(32106, {	-- A Winter Veil Gift (2012)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 90892 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2012.",
			["timeline"] = { ADDED_5_1_0, REMOVED_5_4_0 },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(90888, {	-- Special Edition Foot Ball (TOY!)
					["timeline"] = { ADDED_5_1_0 },
				}),
				i(90883, {	-- The Pigskin (TOY!)
					["timeline"] = { ADDED_5_1_0 },
				}),
			},
		}),
		q(33252, {	-- A Winter Veil Gift (2013)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 104319 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2013.",
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(104318, {	-- Crashin' Thrashin' Flyer Controller (TOY!)
					["timeline"] = { ADDED_5_4_0 },
				}),
			},
		}),
		q(36617, {	-- A Winter Veil Gift (2014)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 116761 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2014.",
			["timeline"] = { ADDED_6_0_2, REMOVED_6_2_2 },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(116763, {	-- Crashin' Thrashin' Shredder Controller (TOY!)
					["timeline"] = { ADDED_6_0_2 },
				}),
			},
		}),
		q(39659, {	-- A Winter Veil Gift (2015)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 128653 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2015.",
			["timeline"] = { ADDED_6_2_2, REMOVED_7_0_3 },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(108632, {	-- Crashin' Thrashin' Flamer Controller (TOY!)
					["timeline"] = { ADDED_6_2_2 },
				}),
			},
		}),
		q(43363, {	-- A Winter Veil Gift (2016)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 139341 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2016.",
			["timeline"] = { ADDED_7_0_3, REMOVED_7_3_0 },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(128636, {	-- Endothermic Blaster (TOY!)
					["timeline"] = { ADDED_7_0_3 },
				}),
			},
		}),
		q(47751, {	-- A Winter Veil Gift (2017)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 151350 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2017. You will receive only one factions Toy Weapon Set.  In order to obtain the opposite factions, you will need to have a character on that side open this gift.",
			["timeline"] = { ADDED_7_3_0, REMOVED_8_0_1_LAUNCH },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(151349, {	-- Toy Weapon Set [A] (TOY!)
					["timeline"] = { ADDED_7_3_0 },
					["races"] = ALLIANCE_ONLY,
				}),
				i(151348, {	-- Toy Weapon Set [H] (TOY!)
					["timeline"] = { ADDED_7_3_0 },
					["races"] = HORDE_ONLY,
				}),
			},
		}),
		q(52965, {	-- A Winter Veil Gift (2018)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 162644 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2018. You will receive only one factions Toy Armor Set.  In order to obtain the opposite factions, you will need to have a character on that side open this gift.",
			["timeline"] = { ADDED_8_0_1, REMOVED_8_2_5 },
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(162643, {	-- Toy Armor Set [A] (TOY!)
					["timeline"] = { ADDED_8_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				i(162642, {	-- Toy Armor Set [H] (TOY!)
					["timeline"] = { ADDED_8_0_1 },
					["races"] = HORDE_ONLY,
				}),
			},
		}),
		q(57642, {	-- A Winter Veil Gift (2019)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 172224 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2019.",
			["timeline"] = { ADDED_8_2_5, REMOVED_9_0_1 },	-- Should been removed earlier?
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(172223, {	-- Crashin' Thrashin' Battleship (TOY!)
					["timeline"] = { ADDED_8_2_5 },
					["races"] = ALLIANCE_ONLY,
				}),
				i(172222, {	-- Crashin' Thrashin' Juggernaught (TOY!)
					["timeline"] = { ADDED_8_2_5 },
					["races"] = HORDE_ONLY,
				}),
			},
		}),
		q(60239, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_1, REMOVED_9_0_2 } }, {	-- A Winter Veil Gift (2020)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 178528 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2020.",
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(178533),	-- Jingles (PET!)
			},
		})),
		q(64639, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5, REMOVED_9_1_5 } }, {	-- A Winter Veil Gift (2021)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 187561 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2021.",
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(187560),	-- Rockin' Rollin' Racer Pack
			},
		})),
		q(66507, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_0_2_LAUNCH } }, {	-- A Winter Veil Gift (2022)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 192094 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2022.",
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(191937),	-- Falling Star Catcher (TOY!)
			},
		})),
		q(78131, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_0 } }, {	-- A Winter Veil Gift (2023)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 209871 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2023.",
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(208825),	-- Junior Timekeeper's Racing Belt (TOY!)
			},
		})),
		q(80685, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_7, REMOVED_11_0_7 } }, {	-- A Winter Veil Gift (2024)
			["providers"] = {
				{ "o", 187236 },	-- Winter Veil Gift
				{ "i", 218311 },	-- Winter Veil Gift
			},
			["description"] = "Gift from 2024.",
			["maps"] = { IRONFORGE, ORGRIMMAR },
			["_drop"] = { "g" },
			["lvl"] = 10,
			["groups"] = {
				i(218310),	-- Box of Puntables (TOY!)
				i(232653),	-- Portentous Present (PET!)
			},
		})),
		q(7022, {	-- Greatfather Winter is Here! (Alliance)
			["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
			-- #if AFTER CATA
			["coord"] = { 33.2, 67.8, IRONFORGE },
			-- #else
			["coord"] = { 33.4, 67, IRONFORGE },
			-- #endif
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = 10,
		}),
		q(7023, {	-- Greatfather Winter is Here! (Alliance)
			["qgs"] = {
				13435,	-- Khole Jinglepocket
				-- #if AFTER TBC
				23010,	-- Wolgren Jinglepocket
				-- #endif
				-- #if AFTER WOD
				96304,	-- Tradurjo Jinglepocket
				-- #endif
			},
			["coords"] = {
				-- #if AFTER CATA
				{ 62.8, 70.2, STORMWIND_CITY },
				-- #else
				{ 55, 59.2, STORMWIND_CITY },
				-- #endif
				-- #if AFTER TBC
				{ 55.6, 49, THE_EXODAR },
				-- #endif
				-- #if AFTER WOD
				{ 41.8, 47.2, LUNARFALL },
				-- #endif
			},
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = 10,
		}),
		q(6961, {	-- Great-father Winter is Here! (Horde)
			["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
			-- #if AFTER CATA
			["coord"] = { 52.4, 77, ORGRIMMAR },
			-- #else
			["coord"] = { 53.2, 66.6, ORGRIMMAR },
			-- #endif
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = 10,
		}),
		q(7021, {	-- Great-father Winter is Here! (Horde)
			["qg"] = 13431,	-- Whulwert Copperpinch <Smokywood Pastures>
			-- #if AFTER CATA
			["coord"] = { 42.4, 55.6, THUNDER_BLUFF },
			-- #else
			["coord"] = { 43.8, 58.6, THUNDER_BLUFF },
			-- #endif
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = 10,
		}),
		q(7024, {	-- Great-father Winter is Here! (Horde)
			["qg"] = 13429,	-- Nardstrum Copperpinch <Smokywood Pastures>
			-- #if AFTER CATA
			["coord"] = { 67.8, 38.8, UNDERCITY },
			-- #else
			["coord"] = { 68, 39, UNDERCITY },
			-- #endif
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = 10,
		}),
		q(39651, {	-- Grumpus
			["qgs"] = {
				96451,	-- Almie [A]
				96735,	-- Pizzle [H]
			},
			["coords"] = {
				{ 47.4, 37.6, FROSTWALL },
				{ 44, 51.6, LUNARFALL },
			},
			["maps"] = { FROSTFIRE_RIDGE },
			["timeline"] = { ADDED_6_2_2 },
			["isDaily"] = true,
			["lvl"] = lvlsquish(90, 90, 40),
			["groups"] = {
				objective(1, {	-- Grumpus slain
					["provider"] = { "n", 96448 },	-- Grumpus
					["coord"] = { 45.6, 28.6, FROSTFIRE_RIDGE },
				}),
				i(128659, {	-- Merry Supplies
					["timeline"] = { ADDED_6_2_2 },
				}),
			},
		}),
		q(39649, {	-- Menacing Grumplings
			["qgs"] = {
				96451,	-- Almie [A]
				96735,	-- Pizzle [H]
			},
			["coords"] = {
				{ 47.4, 37.6, FROSTWALL },
				{ 44, 51.6, LUNARFALL },
			},
			["maps"] = { FROSTFIRE_RIDGE },
			["timeline"] = { ADDED_6_2_2 },
			["isDaily"] = true,
			["lvl"] = lvlsquish(90, 90, 40),
			["groups"] = {
				objective(1, {	-- 0/8 Grumplings slain
					["provider"] = { "n", 96449 },	-- Grumpling
				}),
				i(128659, {	-- Merry Supplies
					["timeline"] = { ADDED_6_2_2 },
				}),
				i(128632, {	-- Savage Snowball
					["timeline"] = { ADDED_6_2_2 },
				}),
			},
		}),
		q(8762, {	-- Metzen the Reindeer (Alliance)
			["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
			-- #if AFTER CATA
			["coord"] = { 33.2, 67.8, IRONFORGE },
			-- #else
			["coord"] = { 33.4, 67, IRONFORGE },
			-- #endif
			["maps"] = { SEARING_GORGE, TANARIS },
			["timeline"] = { REMOVED_4_3_0 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = 40,
			["groups"] = {
				objective(1, {	-- Find Metzen the Reindeer and rescue him
					["provider"] = { "n", 15664 },	-- Metzen the Reindeer
					["coords"] = {
						{ 68.6, 34.4, SEARING_GORGE },
						{ 73.2, 48.0, TANARIS },
					},
				}),
				objective(2, {	-- 0/1 Pouch of Raindeer Dust
					["provider"] = { "i", 21211 },	-- Pouch of Raindeer Dust
				}),
				i(21315, {	-- Smokywood Satchel
					i(21314),	-- Metzen's Letters and Notes
					i(21211),	-- Pouch of Raindeer Dust
				}),
				i(21213),	-- Preserved Holly
			},
		}),
		q(8746, {	-- Metzen the Reindeer (Horde)
			["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
			-- #if AFTER CATA
			["coord"] = { 52.4, 77, ORGRIMMAR },
			-- #else
			["coord"] = { 53.2, 66.6, ORGRIMMAR },
			-- #endif
			["maps"] = { SEARING_GORGE, TANARIS },
			["timeline"] = { REMOVED_4_3_0 },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = 40,
			["groups"] = {
				objective(1, {	-- Find Metzen the Reindeer and rescue him
					["provider"] = { "n", 15664 },	-- Metzen the Reindeer
					["coords"] = {
						{ 68.6, 34.4, SEARING_GORGE },
						{ 73.2, 48.0, TANARIS },
					},
				}),
				objective(2, {	-- 0/1 Pouch of Raindeer Dust
					["provider"] = { "i", 21211 },	-- Pouch of Raindeer Dust
				}),
				i(21315, {	-- Smokywood Satchel
					i(21314),	-- Metzen's Letters and Notes
					i(21211),	-- Pouch of Raindeer Dust
				}),
				i(21213),	-- Preserved Holly
			},
		}),
		q(8860, {	-- New Year Celebrations! (Alliance)
			["qg"] = 15732,	-- Wonderform Operator <Smokywood Pastures>
			["description"] = "This quest is only available on December 31. Quest can be obtained from Wonderform Operator in any major city.",
			["races"] = ALLIANCE_ONLY,
			["maps"] = {
				-- #if AFTER WRATH
				NORTHREND_DALARAN,
				-- #endif
				DUN_MOROGH,
				DUROTAR,
				ORGRIMMAR,
				-- #if AFTER CATA
				THE_CAPE_OF_STRANGLETHORN,
				-- #else
				STRANGLETHORN_VALE,
				-- #endif
				STORMWIND_CITY,
				TANARIS,
				TIRISFAL_GLADES,
				WETLANDS,
			},
			-- #if BEFORE CATA
			["isYearly"] = true,	-- NOTE: We actually don't know which expansion this changed to be a one time quest, but it eventually does. Keep a close eye on this for future expansions of WoW Classic.
			-- #endif
			["groups"] = {
				objective(1, {	-- 0/1 Smokywood Supplies
					["provider"] = { "i", 21545 },	-- Smokywood Supplies
				}),
			},
		}),
		q(8861, {	-- New Year Celebrations! (Horde)
			["qg"] = 15732,	-- Wonderform Operator <Smokywood Pastures>
			["description"] = "This quest is only available on December 31. Quest can be obtained from Wonderform Operator in any major city.",
			["races"] = HORDE_ONLY,
			["maps"] = {
				-- #if AFTER WRATH
				NORTHREND_DALARAN,
				-- #endif
				DUN_MOROGH,
				DUROTAR,
				ORGRIMMAR,
				-- #if AFTER CATA
				THE_CAPE_OF_STRANGLETHORN,
				-- #else
				STRANGLETHORN_VALE,
				-- #endif
				STORMWIND_CITY,
				TANARIS,
				TIRISFAL_GLADES,
				WETLANDS,
			},
			-- #if BEFORE CATA
			["isYearly"] = true,	-- NOTE: We actually don't know which expansion this changed to be a one time quest, but it eventually does. Keep a close eye on this for future expansions of WoW Classic.
			-- #endif
			["groups"] = {
				objective(1, {	-- 0/1 Smokywood Supplies
					["provider"] = { "i", 21545 },	-- Smokywood Supplies
				}),
			},
		}),
		q(7042, {	-- Stolen Winter Veil Treats (Alliance)
			["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
			-- #if AFTER CATA
			["coord"] = { 33.2, 67.8, IRONFORGE },
			-- #else
			["coord"] = { 33.4, 67, IRONFORGE },
			-- #endif
			["timeline"] = { REMOVED_4_0_3 },	-- No longer in Retail, and seems to have disappeared after 4.0.3 based on Wowhead evidence
			["maps"] = { ALTERAC_MOUNTAINS },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = 30,
		}),
		q(6963, {	-- Stolen Winter Veil Treats (Horde)
			["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
			-- #if AFTER CATA
			["coord"] = { 52.4, 77, ORGRIMMAR },
			-- #else
			["coord"] = { 53.2, 66.6, ORGRIMMAR },
			-- #endif
			["timeline"] = { REMOVED_4_0_3 },	-- No longer in Retail, and seems to have disappeared after 4.0.3 based on Wowhead evidence
			["maps"] = { ALTERAC_MOUNTAINS },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = 30,
		}),
		q(7063, {	-- The Feast of Winter Veil (Alliance)
			["providers"] = {
				{ "n", 2916 },	-- Historian Karnik
				{ "i", 17735 },	-- The Feast of Winter Veil (QI!)
			},
			["sourceQuest"] = 7062,	-- The Reason for the Season (Alliance)
			["coord"] = { 77.2, 11.8, IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = 10,
		}),
		q(7061, {	-- The Feast of Winter Veil (Horde)
			["providers"] = {
				{ "n", 13417 },	-- Sagorne Creststrider <Shaman Trainer>
				{ "i", 17735 },	-- The Feast of Winter Veil (QI!)
			},
			["sourceQuest"] = 6964,	-- The Reason for the Season (Horde)
			["coord"] = { 38.6, 36.2, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = 10,
		}),
		q(8763, {	-- The Hero of the Day (Alliance)
			["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
			["sourceQuest"] = 8762,	-- Metzen the Reindeer (Alliance)
			-- #if AFTER CATA
			["coord"] = { 33.2, 67.8, IRONFORGE },
			-- #else
			["coord"] = { 33.4, 67, IRONFORGE },
			-- #endif
			["description"] = 'Requires Cooking Skill Level 300',
			["timeline"] = { REMOVED_4_3_0 },
			["cost"] = {
				{ "i", 8150, 1 },	-- Deeprock Salt
				{ "g", 50000 },	-- 5g
			},
			["requireSkill"] = COOKING,
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = 40,
			["groups"] = {
				i(21213),	-- Preserved Holly
			},
		}),
		q(8799, {	-- The Hero of the Day (Horde)
			["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
			["sourceQuest"] = 8746,	-- Metzen the Reindeer (Horde)
			-- #if AFTER CATA
			["coord"] = { 52.4, 77, ORGRIMMAR },
			-- #else
			["coord"] = { 53.2, 66.6, ORGRIMMAR },
			-- #endif
			["description"] = 'Requires Cooking Skill Level 300',
			["timeline"] = { REMOVED_4_3_0 },
			["cost"] = {
				{ "i", 8150, 1 },	-- Deeprock Salt
				{ "g", 50000 },	-- 5g
			},
			["requireSkill"] = COOKING,
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = 40,
			["groups"] = {
				i(21213),	-- Preserved Holly
			},
		}),
		q(7062, {	-- The Reason for the Season (Alliance)
			["qg"] = 1365,	-- Goli Krumn
			["coord"] = { 30.2, 59.8, IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = 10,
			["groups"] = {
				i(17735),	-- The Feast of Winter Veil (QI!)
			},
		}),
		q(6964, {	-- The Reason for the Season (Horde)
			["qg"] = 9550,	-- Furmund
			["coord"] = { 51, 65.4, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = 10,
			["groups"] = {
				i(17735),	-- The Feast of Winter Veil (QI!)
			},
		}),
		{	-- Treats for Greatfather Winter
			["allianceQuestData"] = q(7025, {	-- Treats for Greatfather Winter (Alliance)
				["qg"] = 13444,	-- Greatfather Winter
				-- ["sourceQuests"] = { -- Reported Not Required Discord 2022/2023
				-- 	7022,	-- Greatfather Winter is Here! (Alliance)
				-- 	7023,	-- Greatfather Winter is Here! (Alliance)
				-- },
				["coord"] = { 33.2, 65.8, IRONFORGE },
				["races"] = ALLIANCE_ONLY,
			}),
			["hordeQuestData"] = q(6962, {	-- Treats for Great-father Winter (Horde)
				["qg"] = 13445,	-- Great-father Winter
				-- ["sourceQuests"] = { -- Reported Not Required Discord 2022/2023
				-- 	6961,	-- Great-father Winter is Here! (Horde)
				-- 	7021,	-- Great-father Winter is Here! (Horde)
				-- 	7024,	-- Great-father Winter is Here! (Horde)
				-- },
				["coord"] = { 52.4, 68.8, ORGRIMMAR },
				["races"] = HORDE_ONLY,
			}),
			["cost"] = {
				{ "i", 17197, 5 },	-- Gingerbread Cookie
				{ "i", 1179, 1 },	-- Ice Cold Milk
			},
			["isYearly"] = true,
			["lvl"] = 10,
			["groups"] = {
				i(17727, HOLIDAY_SMOKYWOOD_PASTURES_GIFT_PACK),	-- Smokywood Pastures Gift Pack
				i(17685, {	-- Smokywood Pastures Sampler
					i(17404),	-- Blended Bean Brew
					i(17344, {	-- Candy Cane
						["timeline"] = { REMOVED_6_2_2 },
					}),
					i(128768, {	-- Candy Cane
						["timeline"] = { ADDED_6_2_2 },
					}),
					i(17407),	-- Graccu's Homemade Meat Pie
					i(21215),	-- Graccu's Mince Meat Fruitcake
					i(17406),	-- Holiday Cheesewheel
				}),
			},
		},
		q(39668, {	-- What Horrible Presents
			["qgs"] = {
				96451,	-- Almie [A]
				96735,	-- Pizzle [H]
			},
			["coords"] = {
				{ 47.4, 37.6, FROSTWALL },
				{ 44, 51.6, LUNARFALL },
			},
			["maps"] = { FROSTFIRE_RIDGE },
			["timeline"] = { ADDED_6_2_2 },
			["isDaily"] = true,
			["lvl"] = lvlsquish(90, 90, 40),
			["groups"] = {
				objective(1, {	-- 0/5 Unusual gifts destroyed
					["provider"] = { "n", 96487 },	-- Unusual Gift
					["cost"] = { { "i", 128675, 1 } },	-- Spirit Bomb
				}),
				i(128659, {	-- Merry Supplies
					["timeline"] = { ADDED_6_2_2 },
				}),
			},
		}),
		q(39648, {	-- Where Are the Children?
			["qgs"] = {
				96451,	-- Almie [A]
				96735,	-- Pizzle [H]
			},
			["coords"] = {
				{ 47.4, 37.6, FROSTWALL },
				{ 44, 51.6, LUNARFALL },
			},
			["maps"] = { FROSTFIRE_RIDGE },
			["timeline"] = { ADDED_6_2_2 },
			["isDaily"] = true,
			["lvl"] = lvlsquish(90, 90, 40),
			["groups"] = {
				objective(1, {	-- 0/6 Children rescued
					["provider"] = { "n", 96454 },	-- Draenei Child
				}),
				i(128659, {	-- Merry Supplies
					["timeline"] = { ADDED_6_2_2 },
				}),
			},
		}),
		q(8827,{	-- Winter's Presents [A]
			["qg"] = 15732,	-- Wonderform Operator <Smokywood Pastures>
			["description"] = "This quest becomes available after the 25th.",
			["maps"] = {
				-- #if AFTER WRATH
				NORTHREND_DALARAN,
				-- #endif
				DUN_MOROGH,
				DUROTAR,
				ORGRIMMAR,
				-- #if AFTER CATA
				THE_CAPE_OF_STRANGLETHORN,
				-- #else
				STRANGLETHORN_VALE,
				-- #endif
				STORMWIND_CITY,
				TANARIS,
				TIRISFAL_GLADES,
				WETLANDS,
			},
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
		}),
		q(8828, {	-- Winter's Presents [H]
			["qg"] = 15732,	-- Wonderform Operator <Smokywood Pastures>
			["description"] = "This quest becomes available after the 25th.",
			["maps"] = {
				-- #if AFTER WRATH
				NORTHREND_DALARAN,
				-- #endif
				DUN_MOROGH,
				DUROTAR,
				ORGRIMMAR,
				-- #if AFTER CATA
				THE_CAPE_OF_STRANGLETHORN,
				-- #else
				STRANGLETHORN_VALE,
				-- #endif
				STORMWIND_CITY,
				TANARIS,
				TIRISFAL_GLADES,
				WETLANDS,
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
		}),
		q(81560, {	-- Winter's Presents
			["qg"] = 220307,	-- Holiday Enthusiast
			["coord"] = { 46, 55.1, DORNOGAL },
			["races"] = ALLIANCE_ONLY,
			["timeline"] = { ADDED_11_0_7 },
			["isYearly"] = true,
		}),
		q(81561, {	-- Winter's Presents
			["qgs"] = {
				220307,	-- Holiday Enthusiast
				220865,	-- Holiday Enthusiast
			},
			["coords"] = {
				{ 46, 55.1, DORNOGAL },
				{ 56.9, 28.7, DORNOGAL },
			},
			["races"] = HORDE_ONLY,
			["timeline"] = { ADDED_11_0_7 },
			["isYearly"] = true,
		}),
		{	-- You're a Mean One...
			["allianceQuestData"] = q(7043, {	-- You're a Mean One... [A]
				["sourceQuest"] = 7042,	-- Stolen Winter Veil Treats (Alliance)
				-- #if AFTER CATA
				["qgs"] = {
					13433,	-- Wulmort Jinglepocket (Alliance)
					13636,	-- Strange Snowman
				},
				["coords"] = {
					{ 33.2, 67.8, IRONFORGE },	-- Wulmort Jinglepocket (Alliance)
					{ 42.4, 41, HILLSBRAD_FOOTHILLS },	-- Strange Snowman
				},
				-- #else
				["maps"] = { IRONFORGE },
				-- #endif
			}),
			["hordeQuestData"] = q(6983, {	-- You're a Mean One... [H]
				["sourceQuest"] = 6963,	-- Stolen Winter Veil Treats (Horde)
				-- #if AFTER CATA
				["qgs"] = {
					13418,	-- Kaymard Copperpinch (Horde)
					13636,	-- Strange Snowman
				},
				["coords"] = {
					{ 52.4, 77, ORGRIMMAR },	-- Kaymard Copperpinch (Horde)
					{ 42.4, 41, HILLSBRAD_FOOTHILLS },	-- Strange Snowman
				},
				-- #else
				["maps"] = { ORGRIMMAR },
				-- #endif
			}),
			-- #if AFTER CATA
			["isDaily"] = true,
			-- #else
			["qg"] = 13636,	-- Strange Snowman
			["coord"] = { 35.4, 72.6, ALTERAC_MOUNTAINS },
			["isYearly"] = true,
			-- #endif
			["lvl"] = 30,
			["groups"] = {
				objective(1, {	-- 0/1 Stolen Treats
					["provider"] = { "i", 17662 },	-- Stolen Treats
					["cr"] = 13602,	-- The Abominable Greench
				}),
				o(209497, {
					["coords"] = {
						{ 43.4, 38.8, HILLSBRAD_FOOTHILLS },
						{ 43.5, 38.4, HILLSBRAD_FOOTHILLS },
						{ 43.7, 38.8, HILLSBRAD_FOOTHILLS },
						{ 45.3, 40.3, HILLSBRAD_FOOTHILLS },
					},
					["timeline"] = { ADDED_4_3_0 },
					["groups"] = {
						i(17662),	-- Stolen Treats
					},
				}),
				i(149503, {	-- Stolen Gift
					["description"] = "This gift is granted to any player below max level. This gift doesn't drop any of the rare seasonal items; it's currently not worth it.",
					["timeline"] = { ADDED_7_2_5 },
					-- #if AFTER SHADOWLANDS
					["lvl"] = { 30, 59 },
					-- #elseif AFTER BFA
					["lvl"] = { 30, 109 },
					-- #else
					["lvl"] = { 30, 100 },
					-- #endif
					["groups"] = HOLIDAY_NON_COLLECTIBLE_GROUPS,
				}),
				i(93626, {	-- Stolen Present
					["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
					-- #if BEFORE 6.0.2
					["groups"] = STOLEN_PRESENT_GROUPS,
					-- #endif
				}),
				i(73792, {	-- Stolen Present
					["timeline"] = { ADDED_4_3_0, REMOVED_5_1_0 },
					-- #if BEFORE 5.1.0
					["groups"] = STOLEN_PRESENT_GROUPS,
					-- #endif
				}),
				i(116762, {	-- Stolen Present
					["timeline"] = { ADDED_6_0_2 },
					["lvl"] = 50,
					["groups"] = STOLEN_PRESENT_GROUPS,
				}),
			},
		},
	}),
	-- #if AFTER 8.3.0
	n(TREASURES, {
		o(180746, {	-- Gently Shaken Gift
			i(178529, {	-- Gently Shaken Gift
				["timeline"] = { ADDED_9_0_1 },
			}),
			i(187520, {	-- Gently Shaken Gift
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(192093, {	-- Gently Shaken Gift
				["timeline"] = { ADDED_10_0_2_LAUNCH },
			}),
			i(210657, {	-- Gently Shaken
				["timeline"] = { ADDED_10_2_0 },
			}),
			i(218309, {	-- Gently Shaken
				["timeline"] = { ADDED_11_0_7 },
			}),
		}),
		o(341827, {	-- Greatfeather Pepe
			["coords"] = {
				{ 33.9, 68.1, IRONFORGE },
				{ 52.9, 77.4, ORGRIMMAR },
			},
			["timeline"] = { CREATED_8_3_0, ADDED_9_0_1 },
			["g"] = { i(174865) },	-- A Tiny Winter Hat (Pepe!)
		}),
		o(187236, {	-- Winter Veil Gift
			i(178528, {	-- Winter Veil Gift
				["timeline"] = { ADDED_9_0_1 },
			}),
			i(187561, {	-- Winter Veil Gift
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(192094, {	-- Winter Veil Gift
				["timeline"] = { ADDED_10_0_2_LAUNCH },
			}),
			i(209871, {	-- Winter Veil Gift
				["timeline"] = { ADDED_10_2_0 },
			}),
			i(218311, {	-- Winter Veil Gift
				["timeline"] = { ADDED_11_0_7 },
			}),
		}),
	}),
	-- #endif
	n(VENDORS, {
		n(COMMON_VENDOR_ITEMS, {
			["description"] = "These items can be found on any of the holiday vendors.",
			["crs"] = {
				13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
				13420,	-- Penney Copperpinch <Smokywood Pastures>
				-- #if AFTER 2.3.0.7561
				23064,	-- Eebee Jinglepocket <Smokywood Pastures>
				23012,	-- Hotoppik Jinglepocket <Smokywood Pastures>
				23010,	-- Wolgren Jinglepocket <Smokywood Pastures>
				-- #endif
				13432,	-- Seersa Jinglepocket <Smokywood Pastures>
				13429,	-- Nardstrum Copperpinch <Smokywood Pastures>
				-- #if AFTER 6.2.2.20395
				96304,	-- Tradurjo Jinglepocket <Smokywood Pastures>
				-- #endif
			},
			["maps"] = {
				IRONFORGE,
				ORGRIMMAR,
				-- #if AFTER 2.3.0.7561
				SHATTRATH_CITY,
				SILVERMOON_CITY,
				THE_EXODAR,
				-- #endif
				THUNDER_BLUFF,
				UNDERCITY,
				-- #if AFTER 6.2.2.20395
				LUNARFALL,
				FROSTWALL,
				-- #endif
			},
			["groups"] = {
				i(34262, {	-- Pattern: Winter Boots (RECIPE!)
					["timeline"] = { ADDED_2_3_0 },
				}),
				-- #if BEFORE 5.4.1
				i(17201),	-- Recipe: Egg Nog / Recipe: Winter Veil Egg Nog[5.4.1+] (RECIPE!)
				-- #endif
				i(17200),	-- Recipe: Gingerbread Cookie (RECIPE!)
				i(34413, {	-- Recipe: Hot Apple Cider (RECIPE!)
					["timeline"] = { ADDED_2_3_0 },
				}),
				-- #if AFTER 5.4.1
				i(17201),	-- Recipe: Winter Veil Egg Nog[5.4.1+] / Recipe: Egg Nog (RECIPE!)
				-- #endif
				i(188680, {	-- Winter Veil Chorus Book (TOY!)
					["timeline"] = { ADDED_9_1_5 },
				}),
				-- #if AFTER 5.1.0
				i(70923, {	-- Gaudy Winter Veil Sweater
					["timeline"] = { ADDED_4_2_0 },
				}),
				-- #endif
				i(17303),	-- Blue Ribboned Wrapping Paper
				i(17304),	-- Green Ribboned Wrapping Paper
				i(17307),	-- Purple Ribboned Wrapping Paper
				-- #if BEFORE 6.2.2.20395
				i(17344),	-- Candy Cane
				-- #endif
				i(17194),	-- Holiday Spices
				i(17196),	-- Holiday Spirits
				i(234407, {	-- Festive Green Holiday Boots
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234407, {	-- Festive Green Holiday Boots
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234398, {	-- Festive Green Holiday Belt
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234401, {	-- Festive Green Holiday Coat
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234403, {	-- Festive Green Holiday Pants
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234405, {	-- Festive Green Holiday Shorts
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234596, {	-- Festive Green Holiday Sweater
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234597, {	-- Festive Green Holiday Shirt
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234593, {	-- Festive Green Holiday Vest
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234406, {	-- Festive Red Holiday Boots
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234399, {	-- Festive Red Holiday Belt
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234400, {	-- Festive Red Holiday Coat
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234402, {	-- Festive Red Holiday Pants
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234404, {	-- Festive Red Holiday Shorts
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234595, {	-- Festive Red Holiday Sweater
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234598, {	-- Festive Red Holiday Shirt
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(234594, {	-- Festive Red Holiday Vest
					["timeline"] = { ADDED_11_0_7 },
				}),
			},
		}),
		n(23064, {	-- Eebee Jinglepocket <Smokywood Pastures>
			["coord"] = { 51.3, 29.7, SHATTRATH_CITY },
			["timeline"] = { ADDED_2_3_0 },
			-- #if AFTER CATA
			["groups"] = HOLIDAY_VENDOR_GROUPS_GREEN,
			-- #endif
		}),
		n(96362, {	-- Izzy Hollyfizzle <Events Coordinator>
			["timeline"] = { ADDED_6_2_2 },
			["coords"] = {
				{ 47.3, 38.4, FROSTWALL },
				{ 44.2, 51.0, LUNARFALL },
			},
			["groups"] = {
				i(108635, {	-- Crashin' Thrashin' Killdozer Controller (TOY!)
					["cost"] = { { "i", 128659, 5 }, },	-- 5x Merry Supplies
					["timeline"] = { ADDED_6_0_2 },
				}),
				i(128665, {	-- Ball of Tangled Lights
					["cost"] = { { "i", 128659, 5 }, },	-- 5x Merry Supplies
					["timeline"] = { ADDED_6_2_2 },
					["questID"] = 39615,
				}),
				i(128668, {	-- Festive Outfits
					["description"] = "This becomes un-saved if you remove the decorations even though the decorations remain unlocked.\n\nThis may also not be the correct QuestID for this Item unlock.",
					["cost"] = { { "i", 128659, 5 }, },	-- 5x Merry Supplies
					["timeline"] = { ADDED_6_2_2 },
					["questID"] = 39671,	-- apparently repeatable if you remove the festive decorations... or might be the wrong QuestID for the unlock specifically
					["repeatable"] = true,
				}),
				i(128666, {	-- Imported Trees
					["cost"] = { { "i", 128659, 5 }, },	-- 5x Merry Supplies
					["timeline"] = { ADDED_6_2_2 },
					["questID"] = 39616,
				}),
				i(128667, {	-- Little Helpers
					["cost"] = { { "i", 128659, 5 }, },	-- 5x Merry Supplies
					["timeline"] = { ADDED_6_2_2 },
					["questID"] = 39767,
				}),
				i(128669, {	-- Old Box of Decorations
					["cost"] = { { "i", 128659, 5 }, },	-- 5x Merry Supplies
					["timeline"] = { ADDED_6_2_2 },
					["questID"] = 39712,
				}),
				i(128670, {	-- Savage Gift
					["cost"] = { { "i", 128659, 5 }, },	-- 5x Merry Supplies
					["timeline"] = { ADDED_6_2_2 },
					["groups"] = {
						-- #if BEFORE 7.3.2
						i(128312, {	-- Elixir of the Rapid Mind
							["timeline"] = { ADDED_6_2_0 },
						}),
						-- #endif
						FROZEN_ARMS_OF_A_HERO,
						MEDALLION_OF_THE_LEGION,
						i(128671, {	-- Minion of Grumpus (MOUNT!)
							["timeline"] = { ADDED_6_2_2 },
						}),
					},
				}),
			},
		}),
		n(13435, {	-- Khole Jinglepocket <Smokywood Pastures>
			-- #if AFTER CATA
			["coord"] = { 63.0, 70.6, STORMWIND_CITY },
			-- #else
			["coord"] = { 55.0, 59.6, STORMWIND_CITY },
			-- #endif
			["groups"] = HOLIDAY_VENDOR_GROUPS_RED,
		}),
		n(13429, {	-- Nardstrum Copperpinch <Smokywood Pastures>
			["coord"] = { 68.4, 39.8, UNDERCITY },
			["groups"] = HOLIDAY_VENDOR_GROUPS_GREEN,
		}),
		n(13420, {	-- Penney Copperpinch <Smokywood Pastures>
			-- #if AFTER CATA
			["coord"] = { 52.6, 77.6, ORGRIMMAR },
			-- #else
			["coord"] = { 53.0, 66.0, ORGRIMMAR },
			-- #endif
			["groups"] = HOLIDAY_VENDOR_GROUPS_GREEN,
		}),
		n(13432, {	-- Seersa Jinglepocket <Smokywood Pastures>
			-- #if AFTER CATA
			["coord"] = { 42.6, 56.0, THUNDER_BLUFF },
			-- #else
			["coord"] = { 43.8, 59.2, THUNDER_BLUFF },
			-- #endif
			["groups"] = HOLIDAY_VENDOR_GROUPS_GREEN,
		}),
		n(96304, {	-- Tradurjo Jinglepocket <Smokywood Pastures>
			["coords"] = {
				{ 43, 46.6, LUNARFALL },
				{ 52, 33.2, FROSTWALL },
			},
			["timeline"] = { ADDED_6_2_2 },
			["groups"] = HOLIDAY_VENDOR_GROUPS_RED,
		}),
		n(23010, {	-- Wolgren Jinglepocket <Smokywood Pastures>
			["coord"] = { 56.2, 49.6, THE_EXODAR },
			["timeline"] = { ADDED_2_3_0 },
			["groups"] = HOLIDAY_VENDOR_GROUPS_RED,
		}),
		n(13433, {	-- Wulmort Jinglepocket <Smokywood Pastures>
			-- #if AFTER CATA
			["coord"] = { 33.2, 67.8, IRONFORGE },
			-- #else
			["coord"] = { 33.4, 67, IRONFORGE },
			-- #endif
			["groups"] = HOLIDAY_VENDOR_GROUPS_RED,
		}),
	}),
	n(15760, {	-- Winter Reveler
		["description"] = "Type /kiss while targeting any Winter Reveler to receive one of the following items.\n\nNOTE: While the debuff persists, you will be unable to kiss another one.",
		["crs"] = {
			-- #if AFTER TBC
			22998,	-- Blood Elf Female Winter Reveler
			22999,	-- Blood Elf Male Winter Reveler
			23001,	-- Draenei Female Winter Reveler
			23000,	-- Draenei Male Winter Reveler
			-- #endif
			15783,	-- Dwarf Female Winter Reveler
			15782,	-- Dwarf Male Winter Reveler
			-- #if AFTER TBC
			23006,	-- Gnome Female Winter Reveler
			23005,	-- Gnome Male Winter Reveler
			-- #endif
			15787,	-- Goblin Female Winter Reveler
			15795,	-- Goblin Male Winter Reveler
			15781,	-- Human Female Winter Reveler
			15780,	-- Human Male Winter Reveler
			15784,	-- Night Elf Female Winter Reveler
			15794,	-- Night Elf Male Winter Reveler
			15786,	-- Orc Female Winter Reveler
			15791,	-- Orc Male Winter Reveler
			-- #if AFTER 6.2.2.20395
			96349,	-- Pandaren Female Winter Reveler
			96348,	-- Pandaren Male Winter Reveler
			-- #endif
			15789,	-- Tauren Female Winter Reveler
			15793,	-- Tauren Male Winter Reveler
			15785,	-- Troll Female Winter Reveler
			15792,	-- Troll Male Winter Reveler
			15788,	-- Undead Female Winter Reveler
			15790,	-- Undead Male Winter Reveler
		},
		["groups"] = {
			i(21212),	-- Fresh Holly
			i(34191, {	-- Handful of Snowflakes
				["timeline"] = { ADDED_2_3_0 },
			}),
			i(21519),	-- Mistletoe
		},
	}),
	n(ZONE_DROPS, {
		o(178609, {	-- Holiday Snow
			i(17202),	-- Snowball
		}),
		o(243911, {	-- Snow Mound
			["timeline"] = { ADDED_6_2_2 },
			["coords"] = {
				{ 42.8, 27.3, FROSTFIRE_RIDGE },
				{ 43.2, 27.8, FROSTFIRE_RIDGE },
				{ 43.9, 28.0, FROSTFIRE_RIDGE },
				{ 44.1, 25.9, FROSTFIRE_RIDGE },
				{ 44.4, 26.5, FROSTFIRE_RIDGE },
				{ 45.0, 26.2, FROSTFIRE_RIDGE },
				{ 45.3, 26.7, FROSTFIRE_RIDGE },
				{ 45.8, 25.8, FROSTFIRE_RIDGE },
				{ 45.8, 26.6, FROSTFIRE_RIDGE },
				{ 47.0, 27.0, FROSTFIRE_RIDGE },
				{ 47.0, 28.5, FROSTFIRE_RIDGE },
				{ 47.4, 28.2, FROSTFIRE_RIDGE },
				{ 47.6, 27.6, FROSTFIRE_RIDGE },
			},
			["groups"] = {
				i(128770, {	-- Grumpling (PET!)
					["timeline"] = { ADDED_6_2_2 },
				}),
				HUGE_SNOWBALL,
				i(128632, {	-- Savage Snowball
					["timeline"] = { ADDED_6_2_2 },
				}),
				i(17202),	-- Snowball
				i(128648, {	-- Yellow Snowball
					["timeline"] = { ADDED_6_2_2 },
				}),
			},
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_0 } }, {
		applyevent(EVENTS.FEAST_OF_WINTER_VEIL, n(FEAST_OF_WINTER_VEIL_HEADER, {
			q(45766, {	-- finding Greatfather Winter in Highmountain (npc ID 104710)
				["isYearly"] = true,
			}),
		})),
	})),
	-- expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 } }, {
	-- 	applyevent(EVENTS.FEAST_OF_WINTER_VEIL, n(FEAST_OF_WINTER_VEIL_HEADER, {
	-- 		q(64628),	-- Triggered when learning the additional things for the Rockin' Rollin' Toy (spellID 358761)
	-- 	})),
	-- })),
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
		applyevent(EVENTS.FEAST_OF_WINTER_VEIL, n(FEAST_OF_WINTER_VEIL_HEADER, {
			q(78130),	-- Looting Festive Trans-Dimensional Bird Whistle [209859]
			q(78445),	-- Looting Highland Drake: Winter Veil Armor [210432]
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_7 } }, {
		applyevent(EVENTS.FEAST_OF_WINTER_VEIL, n(FEAST_OF_WINTER_VEIL_HEADER, {
			q(86440),	-- Stolen Present Daily / Scroll of Storytelling id 116456 (already known) / daily bonus?
			q(86441),	-- Bronze Celebration Token Winter Veil tracker
		})),
	})),
});

-- Remove the holiday flag.
-- #if BEFORE 6.2.2.20395
for i,o in ipairs(HOLIDAY_SMOKYWOOD_PASTURES_GIFT_PACK) do o.u = nil; end
-- #endif
for i=2,#HOLIDAY_NON_COLLECTIBLE_GROUPS,1 do
	HOLIDAY_NON_COLLECTIBLE_GROUPS[i].u = nil;
end
MEDALLION_OF_THE_LEGION.u = nil;
FROZEN_ARMS_OF_A_HERO.u = nil;
HUGE_SNOWBALL.u = nil;
