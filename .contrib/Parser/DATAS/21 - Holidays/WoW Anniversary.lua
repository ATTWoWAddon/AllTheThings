-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
-- #if AFTER 3.0.2
WOW_ANNIVERSARY_ROOT = createHeader({
	readable = "WoW's Anniversary",
	icon = 133783,
	eventID = EVENTS.WOW_ANNIVERSARY,
	eventSchedule = {
		1, -- Recurring, note that this changes every year.
		10, 22, 10, 0,	-- 10/22 at 10:00 AM
		01, 07, 10, 0	-- 01/07 at 10:00 AM
	},
	text = {
		en = "WoW's Anniversary",
		ru = "Годовщина WoW",
		cn = "魔兽世界周年庆",
		tw = "《魔獸世界》週年紀念",
	},
	description = {
		en = "This is a yearly recurring event that occurs between the beginning of November and the end of the year.",
		tw = "這是一個每年重複的活動，發生在十一月初到年底之間。",
	},
});
WOW_ANNIVERSARY_FOUR = createHeader({
	readable = "WoW's 4th Anniversary",
	icon = 133783,
	--eventID = ,	--
	text = {
		en = WOWAPI_GetAchievementName(2398),
	},
});
WOW_ANNIVERSARY_FIVE = createHeader({
	readable = "WoW's 5th Anniversary",
	icon = 133783,
	--eventID = ,	--
	text = {
		en = WOWAPI_GetAchievementName(4400),
	},
});
WOW_ANNIVERSARY_SIX = createHeader({
	readable = "WoW's 6th Anniversary",
	icon = 133783,
	--eventID = ,	--
	text = {
		en = WOWAPI_GetAchievementName(5512),
	},
});
WOW_ANNIVERSARY_SEVEN = createHeader({
	readable = "WoW's 7th Anniversary",
	icon = 133783,
	--eventID = ,	--
	text = {
		en = WOWAPI_GetAchievementName(5863),
	},
});
WOW_ANNIVERSARY_EIGHT = createHeader({
	readable = "WoW's 8th Anniversary",
	icon = 133783,
	--eventID = ,	--
	text = {
		en = WOWAPI_GetAchievementName(6131),
	},
});
WOW_ANNIVERSARY_NINE = createHeader({
	readable = "WoW's 9th Anniversary",
	icon = 133783,
	--eventID = ,	--
	text = {
		en = WOWAPI_GetAchievementName(7853),
	},
});
WOW_ANNIVERSARY_TEN = createHeader({
	readable = "WoW's 10th Anniversary",
	icon = 133783,
	eventID = 514,
	eventSchedule = {
		0, -- November 21st to January 5th 2015
		2014, 11, 21,	-- 11/21/2014
		2015, 01, 05,	-- 01/05/2015
	},
	text = {
		en = WOWAPI_GetAchievementName(8820),
	},
});
WOW_ANNIVERSARY_ELEVEN = createHeader({
	readable = "WoW's 11th Anniversary",
	icon = 133783,
	eventID = 566,
	eventSchedule = {
		0, -- 2015/11/16 to 2015/11/30
		2015, 11, 16,	-- 11/16/2015
		2015, 11, 30,	-- 11/30/2015
	},
	text = {
		en = WOWAPI_GetAchievementName(10058),
	},
});
WOW_ANNIVERSARY_TWELVE = createHeader({
	readable = "WoW's 12th Anniversary",
	icon = 133783,
	eventID = 589,
	eventSchedule = {
		0, -- 2016/11/16 to 2016/11/30
		2016, 11, 16,	-- 11/16/2016
		2016, 11, 30,	-- 11/30/2016
	},
	text = {
		en = WOWAPI_GetAchievementName(10741),
	},
});
WOW_ANNIVERSARY_THIRTEEN = createHeader({
	readable = "WoW's 13th Anniversary",
	icon = 133783,
	eventID = 693,
	eventSchedule = {
		0, -- November 16, 2017 to November 30, 2017
		2017, 11, 16,	-- 11/16/2017
		2017, 11, 30,	-- 11/30/2017
	},
	text = {
		en = WOWAPI_GetAchievementName(11848),
	},
});
WOW_ANNIVERSARY_FOURTEEN = createHeader({
	readable = "WoW's 14th Anniversary",
	icon = 133783,
	eventID = 807,
	eventSchedule = {
		0, -- 2018/11/16 to 2018/11/30
		2018, 11, 16,	-- 11/16/2018
		2018, 11, 30,	-- 11/30/2018
	},
	text = {
		en = WOWAPI_GetAchievementName(12827),
	},
});
WOW_ANNIVERSARY_FIFTEEN = createHeader({
	readable = "WoW's 15th Anniversary",
	icon = 133783,
	eventID = 808,
	eventSchedule = {
		0, -- November 5th, 2019 to January 7th, 2020
		2019, 11, 5,	-- 11/05/2019
		2020, 01, 7,	-- 01/07/2020
	},
	text = {
		en = WOWAPI_GetAchievementName(13917),
	},
});
WOW_ANNIVERSARY_SIXTEEN = createHeader({
	readable = "WoW's 16th Anniversary",
	icon = 133783,
	eventID = 1181,
	eventSchedule = {
		0, -- November 1st, 2020 to November 22nd, 2020
		2020, 11, 1,	-- 11/01/2020
		2020, 11, 22,	-- 11/22/2020
	},
	text = {
		en = WOWAPI_GetAchievementName(14271),
	},
});
WOW_ANNIVERSARY_SEVENTEEN = createHeader({
	readable = "WoW's 17th Anniversary",
	icon = 133783,
	eventID = 1225,
	eventSchedule = {
		0, -- 2021/11/15 to 2021/12/06
		2021, 11, 15,	-- 11/15/2021
		2021, 12, 06,	-- 12/06/2021
	},
	text = {
		en = WOWAPI_GetAchievementName(14942),
	},
});
WOW_ANNIVERSARY_EIGHTEEN = createHeader({
	readable = "WoW's 18th Anniversary",
	icon = 133783,
	eventID = 1262,
	eventSchedule = {
		0, -- November 6th through November 27th
		2022, 11, 6,	-- 11/06/2022
		2022, 11, 27,	-- 11/27/2022
	},
	text = {
		en = WOWAPI_GetAchievementName(15218),
	},
});
WOW_ANNIVERSARY_NINETEEN = createHeader({
	readable = "WoW's 19th Anniversary",
	icon = 133783,
	eventID = 1397,
	eventSchedule = {
		0, -- November 16th through December 7th
		2023, 11, 16,	-- 11/16/2023
		2023, 12, 7,	-- 12/07/2023
	},
	text = {
		en = WOWAPI_GetAchievementName(18702),
	},
});
WOW_ANNIVERSARY_TWENTY = createHeader({
	readable = "WoW's 20th Anniversary",
	icon = 133783,
	eventID = 1509,
	eventSchedule = {
		0, -- October 22nd through Jan 7th
		2024, 10, 22,	-- 10/22/2024
		2025, 01, 07,	-- 01/07/2025
	},
	text = {
		en = WOWAPI_GetAchievementName(41220),
	},
});
local BRONZE_TOKEN = 3100;

------ Encounter Constants ------
local ROCCOR = 2663;
local BAELGAR = 2664;
local INCENDIUS = 2665;
local ARGELMACH = 2666;
local THE_SEVEN = 2667;
local ANGERFORGE = 2668;
local FLAMELASH = 2669;
local DAGRAN = 2670;

------ NPC Constants ------
local GERSTAHN = 9018;
local GREBMAR = 9319;
local DARKVIRE = 9056;
local PHALANX = 9502;
local LOREGRAIN = 9024;

------ EncounterToCRS ------
local EncounterToCRS = {
	[ROCCOR] = { 226315 },	-- Lord Roccor
	[BAELGAR] = { 226303 },	-- Bael'Gar
	[INCENDIUS] = { 226304 },	-- Lord Incendius
	[ARGELMACH] = { 226306 },	-- Golem Lord Argelmach
	[THE_SEVEN] = {
		226307,	-- Anger'rel
		226310,	-- Doom'rel
		226309,	-- Dope'rel
		226313,	-- Gloom'rel
		226311,	-- Hate'rel
		226312,	-- Seeth'rel
		226308,	-- Vile'rel
	},
	[ANGERFORGE] = { 226316 },	-- General Angerforge
	[FLAMELASH] = { 226302 },		-- Ambassador Flamelash
	[DAGRAN] = {
		226305,	-- Emperor Dagran Thaurissan
		226314,	-- Moira Bronzebeard
	},
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[ROCCOR] = {
		i(231457),	-- Bottled Magma
		i(231395),	-- Earthslag Shoulders
		i(231455),	-- Embershard Pendant
		i(231456),	-- Heart of Roccor
		i(231449),	-- Leggings of Frenzied Magic
		i(231454),	-- Magma-Shot Boomstick
		i(231445),	-- Mantle of Lost Hope
		i(231397),	-- Rubicund Armguards
		i(231453),	-- Shard Splinter
		i(231394),	-- Stoneshell Guard
	};
	[BAELGAR] = {
		i(231463),	-- Arbiter's Blade
		i(231447),	-- Bloodclot Band
		i(231409),	-- Force of Magma
		i(231458),	-- Insolent Dark Iron's Vest
		i(231408),	-- Lavacrest Leggings
		i(231461),	-- Magma Giant's Crown
		i(231462),	-- Molten Furnace
		i(231410),	-- Rubidium Hammer
		i(231411),	-- Sash of the Burning Heart
	};
	[INCENDIUS] = {
		i(231404),	-- Cinderhide Armsplints
		i(231407),	-- Emberplate Armguards
		i(231464),	-- Flame-Tempered Skinner
		i(231468),	-- Flamekeeper's Fire Blanket
		i(231467),	-- Flamelord's Emberstaff
		i(231406),	-- Flameweave Cuffs
		i(231405),	-- Pyremail Wristguards
	};
	[ARGELMACH] = {
		i(231472),	-- Argelmach's Breaking Bar
		i(231471),	-- Golem Gearbox
		i(231389),	-- Luminary Robe
		i(231396),	-- Naglering
		i(231423),	-- Omnicast Boots
		i(231420),	-- Second Wind
		i(231470),	-- Spare Golem Frame
		i(231469),	-- Spare Golem Pauldrons
	};
	[THE_SEVEN] = {
		i(231431),	-- Deathdealer Breastplate
		i(231476),	-- Dope'rel's Calling Rune
		i(231474),	-- Dope'rel's Finger Gloves
		i(231430),	-- Ghostshroud
		i(231434),	-- Haunting Specter Leggings
		i(231427),	-- Impervious Giant
		i(231432),	-- Legplates of the Eternal Guardian
		i(231475),	-- Sabaton's of Anger'rel
		i(231473),	-- The Fifth's Linked Treads
		i(231428),	-- The Hammer of Grace
	};
	[ANGERFORGE] = {
		i(231418),	-- Angerforge's Battle Axe
		i(231480),	-- Anvilrage Dragoon's Trousers
		i(231477),	-- Anvilrage Medic's Boots
		i(231479),	-- Anvilrage Rogue's Belt of Knives
		i(231482),	-- Dragoon's Volley Gun
		i(231440),	-- Ebonsteel Spaulders
		i(231478),	-- Flamekeeper's Handwraps
		i(231414),	-- Force of Will
		i(231435),	-- Guiding Stave of Wisdom
		i(231419),	-- Lord General's Sword
		i(231421),	-- Royal Decorated Armor
		i(231481),	-- Sapper's Waistplate
		i(231422),	-- Warstrife Leggings
	};
	[FLAMELASH] = {
		i(231486),	-- Burning Spirit Tender's Mitts
		i(231424),	-- Burst of Knowledge
		i(231415),	-- Cape of the Fire Salamander
		i(231412),	-- Circle of Flame
		i(231484),	-- Fireguard's Lava-Dipped Cleaver
		i(231413),	-- Flame Wrath
		i(231483),	-- Flamelash's Fiery Spike
		i(231485),	-- Flamewalker Scale Spaulders
		i(231416),	-- Molten Fists
	};
	[DAGRAN] = {
		i(231437),	-- Emperor's Seal
		i(231417),	-- Hand of Justice
		i(231439),	-- Hands of the Exalted Herald
		i(231487),	-- Helm of the Molten Avatar
		i(231436),	-- Imperial Jewel
		i(231398),	-- Molten Ironfoe
		i(231429),	-- Robes of the Royal Crown
		i(231442),	-- Sash of the Grand Hunt
		i(231438),	-- Swiftwalker Boots
		i(231433),	-- Thaurissan's Royal Scepter
	};
};

------ Zone Drops ----------
local ZoneDropLoot = {
	i(231501),	-- Aristocratic Cuffs
	i(231507),	-- Battlechaser's Greaves
	i(231506),	-- Blisterbane Wrap
	i(231503),	-- Braincage
	i(231499),	-- Doomforged Straightedge
	i(231500),	-- Funeral Pyre Vestment
	i(231502),	-- Mar Alom's Grip
	i(231495),	-- Ribsplitter
	i(231504),	-- Runed Golem Shackles
	i(231497),	-- Searing Needle
	i(231498),	-- Spire of the Stoneshaper
	i(231505),	-- Stoneshield Cloak
	i(231496),	-- The Judge's Gavel
}

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

-- Common Symlink Drops
local SYM_ALL_BRD_DROPS = {{"select","headerID",WOW_ANNIVERSARY_TWENTY},{"pop"},
{"where","instanceID",1301},{"pop"},
{"where","headerID",VENDORS},{"extract","itemID"}}

local function RelicCofferKeyPurchase(itemID)
	local item = i(itemID, {
		["cost"] = {
			{"i",231510,40},	-- Timewarped Relic Coffer Key [L]
			{"i",232365,40},	-- Timewarped Relic Coffer Key [N]
			{"i",232366,40},	-- Timewarped Relic Coffer Key [H]
		},
	})
	return item
end

root(ROOTS.Holidays, applyevent(EVENTS.WOW_ANNIVERSARY, n(WOW_ANNIVERSARY_ROOT, {
	-- Stuff that's completely gone.
	n(WOW_ANNIVERSARY_FOUR, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_3, REMOVED_3_1_0 } }, {
		ach(2398),	-- 4th Anniversary
		i(44819),	-- Baby Blizzard Bear (PET!)
	})),
	n(WOW_ANNIVERSARY_FIVE, bubbleDownSelf({ ["timeline"] = { ADDED_3_2_2, REMOVED_3_3_2 } }, {
		ach(4400),	-- 5th Anniversary
		i(49362),	-- Onyxian Whelpling (PET!)
	})),
	n(WOW_ANNIVERSARY_SIX, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_1, REMOVED_4_2_2 } }, {
		ach(5512),	-- 6th Anniversary
	})),
	n(WOW_ANNIVERSARY_SEVEN, bubbleDownSelf({ ["timeline"] = { ADDED_4_2_2, REMOVED_4_3_0 } }, {
		ach(5863),	-- 7th Anniversary
		i(71134),	-- Celebration Package
	})),
	n(WOW_ANNIVERSARY_EIGHT, bubbleDownSelf({
		["timeline"] = {
			-- #if ANYCLASSIC
			CREATED_4_3_0, -- 8th anniversary will not happen during Cataclysm version of the game
			-- #else
			ADDED_4_3_0, REMOVED_5_1_0
			-- #endif
		},
	},
	{
		ach(6131),	-- 8th Anniversary
		i(71134),	-- Celebration Package
	})),
	n(WOW_ANNIVERSARY_NINE, bubbleDownSelf({ ["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 } }, {
		ach(7853),	-- 9th Anniversary
		n(MAILBOX, {
			i(90918),	-- Celebration Package
		}),
	})),
	n(WOW_ANNIVERSARY_TEN, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2, REMOVED_6_2_0 } },{
		ach(8820, {	-- 10th Anniversary
			i(115301),	-- Molten Corgi (PET!)
		}),
		ach(9729, {		-- Victory in Hillsbrad (Alliance)
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				title(280),		-- <Name>, Tarren Mill Terror
			},
		}),
		ach(9566, {		-- Victory in Hillsbrad (Horde)
			["races"] = HORDE_ONLY,
			["g"] = {
				title(281),		-- <Name>, Southshore Slayer
			},
		}),
		n(MAILBOX, {
			i(107224),	-- Celebration Package
		}),
		e(1528, {	-- Ragnaros
			["crs"] = { 11502 },	-- Ragnaros
			["groups"] = {
				ach(9550, {	-- Boldly, You Sought the Power of Ragnaros
					i(115484),	-- Core Hound (MOUNT!)
				}),
				i(118574),	-- Hatespark the Tiny (PET!)
				i(118572),	-- Illusion: Flames of Ragnaros (ILLUSION!)
				i(118942),	-- Crown of Power
				i(118941),	-- Crown of Woe
				i(118939),	-- Crown of Destruction
				i(118940),	-- Crown of Desolation
			},
		}),
	})),
	n(WOW_ANNIVERSARY_ELEVEN, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_0, REMOVED_6_2_0 } },{
		ach(10058),	-- 11th Anniversary
		n(MAILBOX, {
			i(128513, {	-- Anniversary Gift
				i(127987),	-- Celebration Package
				-- These got a vendor next anniversary 12.
				i(128506),	-- Celebration Wand - Gnoll
				i(128505),	-- Celebration Wand - Murloc
				i(128510),	-- Exquisite Costume Set: "Edwin VanCleef"
				i(128507, {	-- Inflatable Thunderfury, Blessed Blade of the Windseeker
					ach(10335),	-- Did Someone Say...?
				}),
			}),
		}),
	})),
	n(WOW_ANNIVERSARY_TWELVE, bubbleDown({ ["timeline"] = { ADDED_7_0_3, REMOVED_7_2_5 } },{
		ach(10741),	-- 12th Anniversary
		n(MAILBOX, {
			i(139284, {	-- Anniversary Gift
				i(139285),	-- Celebration Package
				i(139410),	-- Letter from the Timewalker [Horde]
				i(139409),	-- Letter from the Timewalker [Alliance]
			}),
		}),
		n(QUESTS, {
			q(43472, {	-- The Historians
				["provider"] = { "i", 139410 },	-- Letter from the Timewalker [Horde]
				["coord"] = { 36.4, 74.4, ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(43471, {	-- The Historians
				["provider"] = { "i", 139409 },	-- Letter from the Timewalker [Alliance]
				["coord"] = { 84.6, 25.0, STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
		}),
	})),
	n(WOW_ANNIVERSARY_THIRTEEN, bubbleDown({ ["timeline"] = { ADDED_7_2_5, REMOVED_7_2_5 } },{
		ach(11848),	-- 13th Anniversary
		n(MAILBOX, {
			i(147876, {	-- Anniversary Gift
				i(147877),	-- Celebration Package
				i(147881),	-- A Slightly More Urgent Letter from the Timewalkers [Horde]
				i(147880),	-- A Slightly More Urgent Letter from the Timewalkers [Alliance]
				i(139410),	-- Letter from the Timewalker [Horde]
				i(139409),	-- Letter from the Timewalker [Alliance]
			}),
		}),
		n(QUESTS, {
			q(47251, {	-- Interesting Things
				["provider"] = { "i", 147881 },	-- A Slightly More Urgent Letter from the Timewalkers [Horde]
				["coord"] = { 36.4, 74.4, ORGRIMMAR },
				["races"] = HORDE_ONLY,
			}),
			q(47252, {	-- Interesting Things
				["provider"] = { "i", 147880 },	-- A Slightly More Urgent Letter from the Timewalkers [Alliance]
				["coord"] = { 84.6, 25.0, STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
			}),
		}),
	})),
	n(WOW_ANNIVERSARY_FOURTEEN, bubbleDown({ ["timeline"] = { ADDED_8_0_1, REMOVED_8_2_5 } },{
		ach(12827),	-- 14th Anniversary
		n(MAILBOX, {
			i(162637, {	-- Anniversary Gift
				i(162636),	-- Celebration Package
				i(147881),	-- A Slightly More Urgent Letter from the Timewalkers [Horde]
				i(147880),	-- A Slightly More Urgent Letter from the Timewalkers [Alliance]
				i(139410),	-- Letter from the Timewalker [Horde]
				i(139409),	-- Letter from the Timewalker [Alliance]
			}),
		}),
	})),
	n(WOW_ANNIVERSARY_FIFTEEN, bubbleDown({ ["timeline"] = { ADDED_8_2_5, REMOVED_9_0_1 } },{
		ach(13917),	-- 15th Anniversary
		n(157113, {	-- Chromie
			--	inst(2235, {	-- doesn't show up in-game
			["maps"] = {
				1553,	-- Caverns of Time (instanced)
				--	BC
				1554,	-- Serpentshrine Cavern
				1555,	-- Tempest Keep
				1556,	-- Battle for Mount Hyjal
				--	WotLK
				1557,	-- Naxxramas
				1563,	-- Trial of the Crusader
				1558,	-- Icecrown Citadel
				--	Cata
				1559,	-- The Bastion of Twilight
				1556,	-- Blackwing Descent
				1561,	-- Firelands
			},
			["cr"] = 154233,	-- Chromie
			["groups"] = {
				d(DIFFICULTY.DUNGEON.TIMEWALKING, {
					ach(13931, {	-- Memories of Fel, Frost and Fire
						i(172012),	-- Obsidian Worldbreaker (MOUNT!)
					}),
					expansion(EXPANSION.TBC, {
						e(1572, {	-- Lady Vashj
							["creatureID"] = 21212,	-- Lady Vashj
							["groups"] = {
								-- Old Token Items
								i(171912),	-- Crystalforge Faceguard
								i(171914),	-- Crystalforge Greathelm
								i(171913),	-- Crystalforge War-Helm
								i(171916),	-- Deathmantle Helm
								i(171919),	-- Cataclysm Headguard
								i(171920),	-- Cataclysm Headpiece
								i(171921),	-- Cataclysm Helm
								i(171925),	-- Nordrassil Headdress
								i(171924),	-- Nordrassil Headguard
								i(171926),	-- Nordrassil Headpiece
								i(171917),	-- Cowl of the Avatar
								i(171918),	-- Hood of the Avatar
								i(171910),	-- Destroyer Battle-Helm
								i(171911),	-- Destroyer Greathelm
								i(171915),	-- Rift Stalker Helm
								i(171922),	-- Cowl of Tirisfall
								i(171923),	-- Hood of the Corruptor
								--
								i(171481),	-- Glorious Gauntlets of Crestfall
								i(171471),	-- Krakken-Heart Breastplate
								i(171472),	-- Fang of Vashj
								i(171474),	-- Serpent Spine Longbow
								i(171477),	-- Lightfathom Scepter
								i(171480),	-- Runetotem's Mantle
								i(171476),	-- Vestments of the Sea-Witch
								i(171475),	-- Belt of One-Hundred Deaths
								i(171473),	-- Cobta-Lash Boots
								i(171479),	-- Coral Band of the Revived
								i(171478),	-- Ring of Endless Coils
								i(171482),	-- Prism of Inner Calm
								i(97554),	-- Coilfang Stalker (PET!)
							},
						}),
						e(1576, {	-- Kael'thas Sunstrider
							["creatureID"] = 19622,	-- Kael'thas Sunstrider
							["groups"] = {
								-- Old Token Items
								i(171902),	-- Cataclysm Chestguard
								i(171903),	-- Cataclysm Chestpiece
								i(171904),	-- Cataclysm Chestplate
								i(171896),	-- Crystalforge Breastplate
								i(171895),	-- Crystalforge Chestguard
								i(171897),	-- Crystalforge Chestpiece
								i(171889),	-- Deathmantle Chestguard
								i(171894),	-- Destroyer Breastplate
								i(171893),	-- Destroyer Chestguard
								i(171899),	-- Deathmantle Chestguard
								i(171907),	-- Nordrassil Chestguard
								i(171909),	-- Nordrassil Chestpiece
								i(171908),	-- Nordrassil Chestplate
								i(171901),	-- Shroud of the Avatar
								i(171900),	-- Vestments of the Avatar
								--
								i(171898),	-- Rift Stalker Hauberk
								i(171906),	-- Robe of the Corruptor
								i(171905),	-- Robes of Tirisfal
								i(171494),	-- Band of the Ranger-General
								i(171487),	-- Crown of the Sun
								i(171484),	-- Gauntlets of the Sun King
								i(171492),	-- Leggings of Murderous Intent
								i(171493),	-- Rod of the Sun King
								i(171489),	-- Royal Cloak of the Sunstriders
								i(171495),	-- Royal Gauntlets of Silvermoon
								i(171488),	-- Sunhawk Leggings
								i(171486),	-- Sunshower Light Cloak
								i(171491),	-- Thalassian Wildercloak
								i(171485),	-- The Nexus Key
								i(171490),	-- Twinblade of the Phoenix
								i(32458),	-- Ashes of Al'ar (MOUNT!)
							},
						}),
						e(1581, {	-- Archimonde
							["creatureID"] = 17968,	-- Archimonde
							["groups"] = {
								--	ach(695),	-- The Battle for Mount Hyjal
								-- Old Token Items
								i(171942),	-- Cowl of Absolution
								i(171941),	-- Cowl o the Tempest
								i(171943),	-- Hood of Absolution
								i(171940),	-- Hood of the Malefic
								i(171929),	-- Lightbringer Faceguard
								i(171930),	-- Lightbringer Greathelm
								i(171931),	-- Lightbringer War-Helm
								i(171932),	-- Gronnstalker's Helmet
								i(171927),	-- Onslaught Battle-Helm
								i(171928),	-- Onslaught Greathelm
								i(171935),	-- Skyshatter Cover
								i(171934),	-- Skyshatter Headguard
								i(171933),	-- Skyshatter Helmet
								i(171936),	-- Slayer's Helm
								i(171938),	-- Thunderheart Cover
								i(171939),	-- Thunderheart Headguard
								i(171937),	-- Thunderheart Helmet
								--
								i(171502),	-- Apostle of Argus
								i(171496),	-- Cataclysm's Edge
								i(171504),	-- Tempest of Chaos
								i(171500),	-- Bristleblitz Striker
								i(171503),	-- Antonidas' Aegis of Rapt Concentration
								i(171505),	-- Scepter of Purification
								i(171501),	-- Mail of Fevered Pursuit
								i(171499),	-- Midnight Chestguard
								i(171507),	-- Robes of Rhonin
								i(171498),	-- Savior's Grasp
								i(171506),	-- Leggings of Eternity
								i(171497),	-- Legguards of Endless Rage
								i(122112),	-- Hyjal Wisp (PET!)
							},
						}),
					}),
					expansion(EXPANSION.WRATH, {
						e(1605, {	-- Heigan the Unclean
							["creatureID"] = 15936,	-- Heigan the Unclean
							["groups"] = {
								i(171618),	-- Amulet of Autopsy
								i(171515),	-- Bindings of the Decrepit
								i(171509),	-- Breastplate of Tormented Rage
								i(171516),	-- Chestguard of Bitter Charms
								i(171514),	-- Cryptfiend's Bite
								i(171619),	-- Cuffs of Dark Shadows
								i(171617),	-- Demise
								i(171521),	-- Eruption-Scarred Boots
								i(171522),	-- Gloves of the Dancing Bear
								i(171518),	-- Heigan's Putrid Vestments
								i(171519),	-- Helm of Pilgrimage
								i(171512),	-- Iron-Spring Jumpers
								i(171508),	-- Leggings of Colossal Strides
								i(171510),	-- Legguards of the Apostle
								i(171623),	-- Necrogenic Belt
								i(171624),	-- Preceptor's Bindings
								i(171622),	-- Ring of Holy Cleansing
								i(171625),	-- Saltarello Shoes
								i(171520),	-- Serene Echoes
								i(171621),	-- Shoulderplates of Bloodshed
								i(171626),	-- Staff of the Plague Beast
								i(171511),	-- Stalk-Skin Belt
								i(171517),	-- The Undeath Carrier
								i(171620),	-- Tunic of the Lost Pack
							},
						}),
						e(1623, {	-- Anub'arak
							["creatureID"] = 34564,	-- Anub'arak
							["groups"] = {
								i(171615, {	-- Aegis of the Coliseum
									["races"] = HORDE_ONLY,
								}),
								i(171616, {	-- Anguish
									["races"] = HORDE_ONLY,
								}),
								i(171560, {	-- Archon Glaive
									["races"] = ALLIANCE_ONLY,
								}),
								i(171604, {	-- Ardent Guard
									["races"] = HORDE_ONLY,
								}),
								i(171583, {	-- Argent Resolve
									["races"] = ALLIANCE_ONLY,
								}),
								i(171525, {	-- Armbands of Dark Determination
									["races"] = HORDE_ONLY,
								}),
								i(171557, {	-- Armbands of the Ashen Saint
									["races"] = ALLIANCE_ONLY,
								}),
								i(171581, {	-- Baelgun's Heavy Crossbow
									["races"] = ALLIANCE_ONLY,
								}),
								i(171527, {	-- Band of the Traitor King
									["races"] = HORDE_ONLY,
								}),
								i(171543, {	-- Band of Deplorable violence
									["races"] = ALLIANCE_ONLY,
								}),
								i(171548, {	-- Belt of Deathly Dominion
									["races"] = ALLIANCE_ONLY,
								}),
								i(171614, {	-- Belt of the Eternal
									["races"] = HORDE_ONLY,
								}),
								i(171556, {	-- Belt of the Forgotten Martyr
									["races"] = ALLIANCE_ONLY,
								}),
								i(171536, {	-- Bindings of the Ashen Saint
									["races"] = HORDE_ONLY,
								}),
								i(171610, {	-- Blackhorn Bludgeon
									["races"] = HORDE_ONLY,
								}),
								i(171533, {	-- Boots of the Icy Floe
									["races"] = HORDE_ONLY,
								}),
								i(171547, {	-- Bracers of Dark Determination
									["races"] = ALLIANCE_ONLY,
								}),
								i(171529, {	-- Breeches of the Deepening Void
									["races"] = HORDE_ONLY,
								}),
								i(171595, {	-- Bulwark of the Royal Guard
									["races"] = ALLIANCE_ONLY,
								}),
								i(171558, {	-- Chestguard of Flowing Elements
									["races"] = ALLIANCE_ONLY,
								}),
								i(171585, {	-- Chestguard of the Warden
									["races"] = ALLIANCE_ONLY,
								}),
								i(171597, {	-- Cinch of the Undying
									["races"] = ALLIANCE_ONLY,
								}),
								i(171589, {	-- Cold Convergence
									["races"] = ALLIANCE_ONLY,
								}),
								i(171584, {	-- Crusader's Glory
									["races"] = ALLIANCE_ONLY,
								}),
								i(171537, {	-- Cuirass of Flowing Elements
									["races"] = HORDE_ONLY,
								}),
								i(171612, {	-- Darkmaw Crossbow
									["races"] = HORDE_ONLY,
								}),
								i(171555, {	-- Footpads of the Icy Floe
									["races"] = HORDE_ONLY,
								}),
								i(171594, {	-- Fordragon Blades
									["races"] = ALLIANCE_ONLY,
								}),
								i(171608, {	-- Forsaken Bonecarver
									["races"] = HORDE_ONLY,
								}),
								i(171603, {	-- Frostblade Hatchet
									["races"] = HORDE_ONLY,
								}),
								i(171542, {	-- Gauntlets of Bitter Reprisal
									["races"] = HORDE_ONLY,
								}),
								i(171535, {	-- Girdle of the Forgotten Martyr
									["races"] = HORDE_ONLY,
								}),
								i(171561, {	-- Gloves of Bitter Reprisal
									["races"] = ALLIANCE_ONLY,
								}),
								i(171562, {	-- Gloves of the Lifeless Touch
									["races"] = ALLIANCE_ONLY,
								}),
								i(171546, {	-- Greaves of the 7th Legion
									["races"] = ALLIANCE_ONLY,
								}),
								i(171524, {	-- Greaves of the Saronite Citadel
									["races"] = HORDE_ONLY,
								}),
								i(171538, {	-- Handwraps of the Lifeless Touch
									["races"] = HORDE_ONLY,
								}),
								i(171541, {	-- Hellion Glaive
									["races"] = HORDE_ONLY,
								}),
								i(171526, {	-- Hellscream Slicer
									["races"] = HORDE_ONLY,
								}),
								i(171587, {	-- Helmet of the Crypt Lord
									["races"] = ALLIANCE_ONLY,
								}),
								i(171602, {	-- Helm of the Crypt Lord
									["races"] = HORDE_ONLY,
								}),
								i(171530, {	-- Leggings of the Awakening
									["races"] = HORDE_ONLY,
								}),
								i(171553, {	-- Leggings of the Deepening Void
									["races"] = ALLIANCE_ONLY,
								}),
								i(171531, {	-- Leggings of the Lurking Threat
									["races"] = HORDE_ONLY,
								}),
								i(171551, {	-- Legguards of the Lurking Threat
									["races"] = ALLIANCE_ONLY,
								}),
								i(171607, {	--  Legplates of Redeemed Blood
									["races"] = HORDE_ONLY,
								}),
								i(171596, {	-- Legplates of the Immortal Spider
									["races"] = ALLIANCE_ONLY,
								}),
								i(171592, {	-- Legplates of the Silver Hand
									["races"] = ALLIANCE_ONLY,
								}),
								i(171552, {	-- Legwraps of the Awakening
									["races"] = HORDE_ONLY,
								}),
								i(171539, {	-- Lurid Manifestation
									["races"] = HORDE_ONLY,
								}),
								i(171599, {	-- Mace of the Earthborn Chieftain
									["races"] = HORDE_ONLY,
								}),
								i(171540, {	-- Maiden's Adoration
									["races"] = HORDE_ONLY,
								}),
								i(171559, {	-- Maiden's Favor
									["races"] = ALLIANCE_ONLY,
								}),
								i(171532, {	-- Might of the Nerub
									["races"] = HORDE_ONLY,
								}),
								i(171554, {	-- Misery's End
									["races"] = ALLIANCE_ONLY,
								}),
								i(171606, {	-- Pauldrons of the Shadow Hunter
									["races"] = HORDE_ONLY,
								}),
								i(171591, {	-- Pauldrons of the Timeless Hunter
									["races"] = ALLIANCE_ONLY,
								}),
								i(171605, {	-- Perdition
									["races"] = HORDE_ONLY,
								}),
								i(171600, {	-- Pride of the Kor'kron
									["races"] = HORDE_ONLY,
								}),
								i(171528, {	-- Reign of the Dead
									["races"] = HORDE_ONLY,
								}),
								i(171549, {	-- Reign of the Unliving
									["races"] = ALLIANCE_ONLY,
								}),
								i(171611, {	-- Robes of the Sleepless
									["races"] = HORDE_ONLY,
								}),
								i(171545, {	-- Signet of the Traitor King
									["races"] = ALLIANCE_ONLY,
								}),
								i(171609, {	-- Shoulderpads of the Snow Bandit
									["races"] = HORDE_ONLY,
								}),
								i(171593, {	-- Spaulders of the Snow Bandit
									["races"] = ALLIANCE_ONLY,
								}),
								i(171601, {	-- Stoneskin Chestplate
									["races"] = HORDE_ONLY,
								}),
								i(171544, {	-- Stormpike Cleaver
									["races"] = ALLIANCE_ONLY,
								}),
								i(171550, {	-- Strength of the Nerub
									["races"] = ALLIANCE_ONLY,
								}),
								i(171534, {	-- Suffering's End
									["races"] = HORDE_ONLY,
								}),
								i(171613, {	-- Sunwalker Legguards
									["races"] = HORDE_ONLY,
								}),
								i(171590, {	-- The Grinder
									["races"] = ALLIANCE_ONLY,
								}),
								i(171582, {	-- The Lion's Maw
									["races"] = ALLIANCE_ONLY,
								}),
								i(171598, {	-- Vestments of the Sleepless
									["races"] = ALLIANCE_ONLY,
								}),
								i(171586, {	-- Vigilant Ward
									["races"] = ALLIANCE_ONLY,
								}),
								i(171523, {	-- Waistguard of Deathly Dominion
									["races"] = HORDE_ONLY,
								}),
								i(171588, {	-- Westfall Saber
									["races"] = ALLIANCE_ONLY,
								}),
								i(142085),	-- Nerubian Swarmer (PET!)
							},
						}),
						e(1636, {	-- The Lich King
							["creatureID"] = 36597,	-- The Lich King
							["groups"] = {
								i(172021),	-- Marks of Sanctification Purse
								i(171571),	-- Archus, Greatstaff of Antonidas
								i(171569),	-- Bloodsurge, Kel'Thuzad's Blade of Agony
								i(171563),	-- Fal'inrush, Defender of Quel'thalas
								i(171566),	-- Glorenzelg, High-Blade of the Silver Hand
								i(171576),	-- Halion, Staff of Forgotten Love
								i(171565),	-- Havoc's Call, Blade of Lordaeron Kings
								i(171568),	-- Heaven's Fall, Kryss of a Thousand Lies
								i(171564),	-- Mithrios, Bronzebeard's Legacy
								i(171567),	-- Oathbinder, Charge of the Ranger-General
								i(171578),	-- Pugius, Fist of Defiance
								i(171570),	-- Royal Scepter of Terenas II
								i(171577),	-- Stormfury, Dark Blade of the Betrayer
								i(171574),	-- Tainted Twig of Nordrassil
								i(171580),	-- Tel'thas, Dagger of the Blood King
								i(171572),	-- Troggbane, Axe of the Frostborne King
								i(171575),	-- Valius, Gavel of the Lightbringer
								i(171573),	-- Warmace of Menethil
								i(171579),	-- Windrunner's Heartseeker
								i(50818),	-- Invincible (MOUNT!)
								i(142098),	-- Drudge Ghoul (PET!)
								i(122229),	-- Music Roll: Invincible
								i(139547, {	-- Runes of the Darkening [Death Knight Hidden Appearance]
									["sourceQuest"] = 38990,	-- The Call of Icecrown
								}),
							},
						}),
					}),
					expansion(EXPANSION.CATA, {
						e(167, {	-- Cho'gall
							["creatureID"] = 43324,
							["groups"] = {
								-- Old tier Items
								i(171856),	-- Shadowflame Mantle
								i(171872),	-- Reinforced Sapphirium Shoulderguards
								i(171870),	-- Reinforced Sapphirium Pauldrons
								i(171873),	-- Reinforced Sapphirium Mantle
								i(171857),	-- Mercurial Shoulderwraps
								i(171858),	-- Mercurial Mantle
								i(171866),	-- Spaulders of the Raging Elements
								i(171865),	-- Shoulderwraps of the Raging Elements
								i(171864),	-- Mantle of the Raging Elements
								i(171863),	-- Lightning-Charged Spaulders
								i(171868),	-- Earthen Shoulderguards
								i(171867),	-- Earthen Pauldrons
								i(171862),	-- Wind Dancer's Spaulders
								i(171861),	-- Stormrider's Spaulders
								i(171860),	-- Stormrider's Shoulderwraps
								i(171859),	-- Stormrider's Mantle
								i(171871),	-- Magma Plated Shoulderguards
								i(171869),	-- Magma Plated Pauldrons
								i(17155),	-- Firelord's Mantle
								i(171842),	-- Shalug'doom, the Axe of Unmaking
								i(171847),	-- "Uhn'agh Fash, the Darkest Betrayal"
								i(171854),	-- Twilight's Hammer
								i(171845),	-- Helm of Maddening Whispers
								i(171846),	-- Membrane of C'Thun
								i(171844),	-- Battleplate of the Apocalypse
								i(171849),	-- Shackles of the End of Days
								i(171850),	-- Hands of the Twilight Council
								i(171843),	-- Coil of Ten-Thousand Screams
								i(171851),	-- Kilt of the Forgotten Battle
								i(171848),	-- Treads of Hideous Transformation
								i(171853),	-- Signet of the Fifth Circle
								i(171852),	-- Fall of Mortality
								i(152972),	-- Faceless Minion (PET!)
							},
						}),
						e(174, {	-- Nefarian's End
							["crs"] = {
								41376,	-- Nefarian
								41270,	-- Onyxia
							},
							["groups"] = {
								-- Old tier Items
								i(171875),	-- Shadowflame Hood
								i(171889),	-- Reinforced Sapphirium Helmet
								i(171892),	-- Reinforced Sapphirium Headguard
								i(171891),	-- Reinforced Sapphirium Faceguard
								i(171876),	-- Mercurial Hood
								i(171877),	-- Mercurial Cowl
								i(171882),	-- Lightning-Charged Headguard
								i(171885),	-- Helmet of the Raging Elements
								i(171884),	-- Headpiece of the Raging Elements
								i(171883),	-- Faceguard of the Raging Elements
								i(171886),	-- Earthen Helemt
								i(171887),	-- Earthen Faceguard
								i(171881),	-- Wind Dancer's Helmet
								i(171878),	-- Stormrider's Helm
								i(171880),	-- Stormrider's Headpiece
								i(171879),	-- Stormrider's Cover
								i(171890),	-- Magma Plated Faceguard
								i(171888),	-- Magma Plated Helmet
								i(171874),	-- Firelord's Hood
								--
								i(171639),	-- Reclaimed Ashkandi, Greatsword of the Brotherhood
								i(171638),	-- Andoros, Fist of the Dragon King
								i(171633),	-- Crul'korak, the Lightning's Arc
								i(171634),	-- Akmin-Kurai, Dominion's Shield
								i(171632),	-- Rage of Ages
								i(171629),	-- Mantle of Nefarius
								i(171630),	-- Pauldrons of the Apocalypse
								i(171627),	-- Spaulders of the Scarred Lady
								i(171637),	-- Shadow of Dread
								i(171636),	-- Shadowblaze Robes
								i(171635),	-- Belt of the Blackhand
								i(171628),	-- Belt of the Nightmare
								i(171631),	-- Prestor's Talisman of Machination
								i(122195),	-- Music Roll: Legends of Azeroth
							},
						}),
						e(198, {	-- Ragnaros
							["creatureID"] = 52409,
							["groups"] = {
								i(69224),	-- Pureblood Fire Hawk (MOUNT!)
								i(171804),	-- Balespider's Hood
								i(171794),	-- Cowl of the Cleansing Flame
								i(171770),	-- Dark Phoenix Helmet
								i(171736),	-- Elementium Deathplate Faceguard
								i(171740),	-- Elementium Deathplate Helmet
								i(171820),	-- Erupting Volcanic Faceguard
								i(171815),	-- Erupting Volcanic Headpiece
								i(171825),	-- Erupting Volcanic Helmet
								i(171761),	-- Faceguard of the Molten Giant
								i(171809),	-- Firehawk Hood
								i(171774),	-- Flamewaker's Headguard
								i(171785),	-- Helmet of the Molten Giant
								i(171799),	-- Hood of the Cleansing Flame
								i(171765),	-- Immolation Faceguard
								i(171790),	-- Immolation Headguard
								i(171780),	-- Immolation Helmet
								i(171754),	-- Obsidian Arborweave Cover
								i(171744),	-- Obsidian Arborweave Headpiece
								i(171749),	-- Obsidian Arborweave Helm
								i(171732),	-- Sho'ravon, Greatstaff of Annihilation
								i(171731),	-- Sho'ravon, Greatstaff of Annihilation (Heroic, confirmed drop)
								i(171724),	-- Sulfuras, the Extinguished Hand
								i(171727),	-- Ko'gun, Hammer of the Firelord
								i(171725),	-- Arathar, the Eye of Flame
								i(171728),	-- Crown of Flame
								i(171726),	-- Choker of the Vanquished Lord
								i(171663),	-- Pauldrons of Roaring Flame
								i(171730),	-- Fingers of Incineration
								i(171729),	-- Majordomo's Chain of Office
								i(171646),	-- Matrix Restabilizer
								i(171640),	-- Variable Pulse Lightning Capacitor
								i(171647),	-- Vessel of Acceleration
							},
						}),
					}),
				}),
			},
		}),
		n(MAILBOX, {
			i(172014, {	-- Anniversary Gift
				i(172013),	-- Celebration Firework
				i(172015),	-- Celebration Package
				i(171177),	-- Invitation from the Timewalkers
				i(172016),	-- Lil' Nefarian (PET!)
			}),
		}),
		n(QUESTS, {
			q(57298, {	-- How Things "Really" Happened...
				["sourceQuest"] = 57249,	-- A Timely Invitation
				["qg"] = 157113,	-- Chromie
				["coord"] = { 53.5, 54.7, CAVERNS_OF_TIME },
				["lvl"] = 60,
			}),
		}),
	})),
	n(WOW_ANNIVERSARY_SIXTEEN, bubbleDown({ ["timeline"] = { ADDED_9_0_1, REMOVED_9_0_1 } },{
		ach(14271),	-- 16th Anniversary
		n(MAILBOX, {
			i(178513, {	-- Anniversary Gift
				i(172013),	-- Celebration Firework
				i(178512),	-- Celebration Package
				i(171177),	-- Invitation from the Timewalkers
			}),
		}),
	})),
	n(WOW_ANNIVERSARY_SEVENTEEN, bubbleDown({ ["timeline"] = { ADDED_9_1_5, REMOVED_9_1_5 } }, {
		ach(14942),	-- WoW's 17th Anniversary
		n(MAILBOX, {
			i(185906, {	-- Anniversary Gift
				i(185907),	-- Celebration Package
				i(172013),	-- Celebration Firework
				i(171177),	-- Invitation from the Timewalkers
			}),
		}),
	})),
	n(WOW_ANNIVERSARY_EIGHTEEN, bubbleDown({ ["timeline"] = { ADDED_10_0_0, REMOVED_10_0_2_LAUNCH } }, {
		ach(15218),	-- WoW's 18th Anniversary
		n(MAILBOX, {
			i(187710, {	-- Anniversary Gift
				i(187709),	-- Celebration Package
				i(172013),	-- Celebration Firework
				i(171177),	-- Invitation from the Timewalkers
			}),
		}),
	})),
	n(WOW_ANNIVERSARY_NINETEEN, bubbleDown({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_0 } }, {
		ach(18702),	-- WoW's 19th Anniversary
		n(MAILBOX, {
			i(208211, {	-- Anniversary Gift
				i(208210),	-- Celebration Package
				i(172013),	-- Celebration Firework
				i(171177),	-- Invitation from the Timewalkers
				i(208543, {	-- Lil' Frostwing (PET!)
					ach(19192),	-- Lil' Frostwing
				}),
			}),
		}),
	})),

	-- Stuff that's still in the game
	n(WOW_ANNIVERSARY_TWELVE, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } },{
		n(QUESTS, {
			-- Correct answers is in the bottom
			q(43461, {	-- A Time to Reflect
				["qg"] = 110035,	-- Historian Jupa
				["isDaily"] = true,
				-- #if BEFORE 11.0.5
				["coord"] = { 36.6, 74.6, ORGRIMMAR },
				-- #else
				["coords"] = {
					{ 36.6, 74.6, ORGRIMMAR },
					{ 62.8, 50.2, TANARIS },
				},
				-- make sure this available timeline doesn't get eaten by matching removed timeline on merged parent Quests
				["_forcetimeline"] = true,
				-- #endif
				["races"] = HORDE_ONLY,
			}),
			q(43323, {	-- A Time to Reflect
				["qg"] = 110034,	-- Historian Llore
				["isDaily"] = true,
				-- #if BEFORE 11.0.5
				["coord"] = { 84.6, 25.0, STORMWIND_CITY },
				-- #else
				["coords"] = {
					{ 84.6, 25.0, STORMWIND_CITY },
					{ 62.8, 50.2, TANARIS },
				},
				-- make sure this available timeline doesn't get eaten by matching removed timeline on merged parent Quests
				["_forcetimeline"] = true,
				-- #endif
				["races"] = ALLIANCE_ONLY,
			}),
		}),
		n(VENDORS, {
			n(110035, {	-- Historian Jupa [Horde]
				["coord"] = { 36.6, 74.6, ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(136925, {	-- Corgi Pup (PET!)
						["cost"] = {{ "c", TIMEWARPED_BADGE, 200 }},
					}),
					i(128506, {	-- Celebration Wand - Gnoll
						["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
					}),
					i(128505, {	-- Celebration Wand - Murloc
						["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
					}),
					i(128510, {	-- Exquisite Costume Set: "Edwin VanCleef"
						["cost"] = {{ "c", TIMEWARPED_BADGE, 200 }},
					}),
					i(128507, {	-- Inflatable Thunderfury, Blessed Blade of the Windseeker
						["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						["groups"] = {
							ach(10335),	-- Did Someone Say...?
						},
					}),
				},
			}),
			n(110034, {	-- Historian Llore [Alliance]
				["coord"] = { 84.6, 25.0, STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(136925, {	-- Corgi Pup (PET!)
						["cost"] = {{ "c", TIMEWARPED_BADGE, 200 }},
					}),
					i(128506, {	-- Celebration Wand - Gnoll
						["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
					}),
					i(128505, {	-- Celebration Wand - Murloc
						["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
					}),
					i(128510, {	-- Exquisite Costume Set: "Edwin VanCleef"
						["cost"] = {{ "c", TIMEWARPED_BADGE, 200 }},
					}),
					i(128507, {	-- Inflatable Thunderfury, Blessed Blade of the Windseeker
						["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						["groups"] = {
							ach(10335),	-- Did Someone Say...?
						},
					}),
				},
			}),
			n(231351, {	-- Kieule <Souvenirs>
				["coord"] = { 62.38, 49.92, TANARIS },
				["g"] = {
					i(140670),	-- Souvenir Elekk
					i(140671),	-- Souvenir Raptor
					i(118052),	-- Murloc Chew Toy
					i(130151, {	-- The "Devilsaur" Lunchbox (TOY!)
						["cost"] = { { "c", 1155, 1000 }, },	-- 1,000x Ancient Mana
					}),
				},
			}),
		}),
	})),
	n(WOW_ANNIVERSARY_THIRTEEN, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5 } },{
		n(QUESTS, {
			q(47253, {	-- The Originals [Alliance]
				["qg"] = 110034,	-- Historian Llore
				["isDaily"] = true,
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 51.5, 38.7, CAVERNS_OF_TIME },
				["timeline"] = { REMOVED_11_0_5 },
				-- make sure this available timeline doesn't get eaten by matching removed timeline on merged parent Quests
				["_forcetimeline"] = true,
				["sym"] = {{"select","npcID",
					121818,	-- Lord Kazzak [Blasted Lands - Always up]
					121820,	-- Azuregos [Azshara - Always Up]
					121911,	-- Taerar [Ashenvale - 1st Rotation] [1st one in 2017]
					121912,	-- Ysondre [Feralas - 2nd Rotation] [1st one in 2018]
					121821,	-- Lethon [The Hinterlands - 3rd Rotation]
					121913,	-- Emeriss [Duskwood - 4th Rotation]
				}},
			}),
			q(47254, {	-- The Originals [Horde]
				-- #if BEFORE 11.0.5
				["qg"] = 110035,	-- Historian Jupa
				-- #else
				["qg"] = 223882,	-- Izaik Kadarov
				-- #endif
				["isDaily"] = true,
				-- #if BEFORE 11.0.5
				["races"] = HORDE_ONLY,
				["coord"] = { 51.5, 38.7, CAVERNS_OF_TIME },
				-- #else
				["coord"] = { 62.3, 51.8, TANARIS },
				-- #endif
				-- make sure this available timeline doesn't get eaten by matching removed timeline on merged parent Quests
				["_forcetimeline"] = true,
				["sym"] = {{"select","npcID",
					121818,	-- Lord Kazzak [Blasted Lands - Always up]
					121820,	-- Azuregos [Azshara - Always Up]
					121911,	-- Taerar [Ashenvale - 1st Rotation] [1st one in 2017]
					121912,	-- Ysondre [Feralas - 2nd Rotation] [1st one in 2018]
					121821,	-- Lethon [The Hinterlands - 3rd Rotation]
					121913,	-- Emeriss [Duskwood - 4th Rotation]
				}},
			}),
		}),
		n(WORLD_BOSSES, {
			n(121820, {	-- Azuregos [Azshara - Always Up]
				["isRaid"] = true,
				["questID"] = 47462,
				["isDaily"] = true,
				["coord"] = { 48.76, 83.82, AZSHARA },
				["groups"] = {
					i(150424),	-- Cold Snap
					i(150428),	-- Eskhandar's Left Claw
					i(150423),	-- Fang of the Mystics
					i(150421),	-- Typhoon
					i(150419),	-- Crystal Adorned Crown
					i(150417),	-- Drape of Benediction
					i(150544),	-- Mana-Frosted Pauldrons
					i(150543),	-- Sapphire-Encrusted Tunic
					i(150422),	-- Unmelting Ice Girdle
					i(150425),	-- Snowblind Shoes
					i(150545),	-- Ring of Ancient Arcana
				},
			}),
			n(121818, {	-- Lord Kazzak [Blasted Lands - Always up]
				["isRaid"] = true,
				["questID"] = 47461,
				["isDaily"] = true,
				["coord"] = { 32.42, 48.21, BLASTED_LANDS },
				["groups"] = {
					i(150383),	-- Amberseal Keeper
					i(150427),	-- Empyrean Demolisher
					i(150379),	-- Infernal Headcage
					i(150426),	-- Blazefury Medallion
					i(150380),	-- Eskhandar's Pelt
					i(150386),	-- Blacklight Bracer
					i(150382),	-- Doomhide Gauntlets
					i(150381),	-- Flayed Doomguard Belt
					i(150385),	-- Fel-Infused Leggings
					i(150384),	-- Ring of Entropy
					i(230011, {["timeline"] = { ADDED_11_0_5 }}),	-- Lil'Kaz (PET!)
				},
			}),
			n(DRAGONS_OF_NIGHTMARE, {
				["questID"] = 47463,
				["isRaid"] = true,
				["isDaily"] = true,
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							121913,	-- Emeriss
							121821,	-- Lethon
							121911,	-- Taerar
							121912,	-- Ysondre
						},
						["groups"] = {
							i(150429),	-- Emerald Dragonfang
							i(150412),	-- Hammer of Bestial Fury
							i(150393),	-- Nightmare Blade
							i(150403),	-- Polished Ironwood Crossbow
							i(150408),	-- Staff of Rampant Growth
							i(150411),	-- Green Dragonskin Cloak
							i(150392),	-- Mindtear Band
							i(150404),	-- Ring of the Unliving
							i(150388),	-- Hibernation Crystal
							i(150407),	-- Dragonheart Necklace
						},
					}),
					n(121913, {	-- Emeriss [Duskwood - 4th Rotation]
						["isRaid"] = true,
						["coord"] = { 46.54, 39.73, DUSKWOOD },
						["groups"] = {
							i(150405),	-- Circlet of Restless Dreams
							i(150415),	-- Dragonspur Wraps
							i(150416),	-- Gloves of Delusional Power
							i(150410),	-- Acid Inscribed Greaves
							i(150406),	-- Boots of the Endless Moor
						},
					}),
					n(121821, {	-- Lethon [The Hinterlands - 3rd Rotation]
						["isRaid"] = true,
						["coord"] = { 62.87, 25.2, THE_HINTERLANDS },
						["groups"] = {
							i(150401),	-- Deviate Growth Cap
							i(150399),	-- Black Bark Wristbands
							i(150402),	-- Gauntlets of the Shining Light
							i(150398),	-- Dark Heart Pants
							i(150400),	-- Malignant Footguards
						},
					}),
					n(121911, {	-- Taerar [Ashenvale - 1st Rotation] [1st one in 2017]
						["isRaid"] = true,
						["coord"] = { 93.8, 40.8, ASHENVALE },
						["groups"] = {
							i(150395),	-- Unnatural Leather Spaulders
							i(150413),	-- Dragonbone Wristguards
							i(150414),	-- Ancient Corroded Leggings
							i(150390),	-- Strangely Glyphed Legplates
							i(150394),	-- Mendicant's Slippers
						},
					}),
					n(121912, {	-- Ysondre [Feralas - 2nd Rotation] [1st one in 2018]
						["isRaid"] = true,
						["coord"] = { 50.93, 11.91, FERALAS },
						["groups"] = {
							i(150409),	-- Trance Stone
							i(150387),	-- Acid Inscribed Pauldrons
							i(150391),	-- Jade Inlaid Vestments
							i(150397),	-- Belt of the Dark Bog
							i(150389),	-- Leggings of the Demented Mind
							i(150396),	-- Boots of Fright
						},
					}),
				},
			}),
		}),
		n(VENDORS, {
			n(110035, {	-- Historian Jupa [Horde]
				["coord"] = { 36.6, 74.6, ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(147885, {	-- Bronze-Tinted Sunglasses
						["cost"] = {{ "c", TIMEWARPED_BADGE, 200 }},
					}),
					i(147883, {	-- Celebration Wand - Quillboar
						["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
					}),
					i(147882, {	-- Celebration Wand - Trogg
						["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
					}),
					i(147884, {	-- Tranquil Mechanical Yeti Costume
						["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
					}),
				},
			}),
			n(110034, {	-- Historian Llore [Alliance]
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 84.6, 25.0, STORMWIND_CITY },
				["groups"] = {
					i(147885, {	-- Bronze-Tinted Sunglasses
						["cost"] = {{ "c", TIMEWARPED_BADGE, 200 }},
					}),
					i(147883, {	-- Celebration Wand - Quillboar
						["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
					}),
					i(147882, {	-- Celebration Wand - Trogg
						["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
					}),
					i(147884, {	-- Tranquil Mechanical Yeti Costume
						["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
					}),
				},
			}),
		}),
	})),
	n(WOW_ANNIVERSARY_FOURTEEN, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } },{
		n(VENDORS, {
			n(110035, {	-- Historian Jupa [Horde]
				["coord"] = { 36.6, 74.6, ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(158149, {	-- Overtuned Corgi Goggles (TOY!)
						["cost"] = {{ "c", TIMEWARPED_BADGE, 200 }},
					}),
				},
			}),
			n(110034, {	-- Historian Llore [Alliance]
				["coord"] = { 84.6, 25.0, STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158149, {	-- Overtuned Corgi Goggles (TOY!)
						["cost"] = {{ "c", TIMEWARPED_BADGE, 200 }},
					}),
				},
			}),
		}),
	})),
	n(WOW_ANNIVERSARY_FIFTEEN, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_5 } },{
		m(1537, {	-- Alterac Valley
			["icon"] = 236711,	-- Alterac Valley
			["groups"] = {
				ach(13928, {	-- Alterac Valley of Olde (A)
					["races"] = ALLIANCE_ONLY,
				}),
				ach(13930, {	-- Alterac Valley of Olde (H)
					["races"] = HORDE_ONLY,
				}),
				n(QUESTS, {
					q(57302, {	-- Alterac Valley Graveyards
						["qg"] = 159811,	-- Sergeant Durgen Stormpike
						["isDaily"] = true,
						["coord"] = { 43.6, 17.2, 1537 },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 10,
					}),
					q(57305, {	-- Armor Scraps
						["qg"] = 13257,	-- Murgot Deepforge
						["isDaily"] = true,
						["coord"] = { 43.6, 15.9, 1537 },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 10,
					}),
					q(57309, {	-- Begin the Attack
						["repeatable"] = true,	-- presumably
						["qg"] = 13446,	-- Field Marshal Teravaine
						["coord"] = { 52.3, 44.0, 1537 },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 10,
					}),
					q(57304, {	-- Capture a Mine (A)
						["providers"] = {
							{ "n", 12096 },		-- Stormpike Quartermaster
							{ "n", 159811 },	-- Sergeant Durgen Stormpike
						},
						["isDaily"] = true,
						["coords"] = {
							{ 43.3, 17.0, 1537 },
							{ 43.6, 17.2, 1537 },
						},
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 10,
					}),
					q(57314, {	-- Capture a Mine (H)
						["providers"] = {
							{ "n", 12097 },		-- Frostwolf Quartermaster
							{ "n", 158579 },	-- Corporal Teeka Bloodsnarl
						},
						["isDaily"] = true,
						["coords"] = {
							{ 46.8, 83.5, 1537 },
							{ 50.8, 82.3, 1537 },
						},
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					}),
					q(57311, {	-- Coldtooth Supplies (A)
						["repeatable"] = true,
						["qg"] = 12096,	-- Stormpike Quartermaster
						["coord"] = { 43.3, 17.0, 1537 },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 10,
					}),
					q(57321, {	-- Coldtooth Supplies (H)
						["repeatable"] = true,
						["qg"] = 12097,	-- Frostwolf Quartermaster
						["coord"] = { 46.8, 83.5, 1537 },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					}),
					q(57722, {	-- Empty Stables (A)
						["repeatable"] = true,
						["qg"] = 158863,	-- Stormpike Stable Master
						["coord"] = { 42.6, 16.9, 1537 },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 10,
					}),
					q(57723, {	-- Empty Stables (H)
						["repeatable"] = true,
						["qg"] = 158864,	-- Frostwolf Stable Master
						["coord"] = { 57.1, 82.5, 1537 },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					}),
					q(57317, {	-- Enemy Booty
						["qg"] = 13176,	-- Smith Regzar
						["isDaily"] = true,
						["coord"] = { 49.9, 82.6, 1537 },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					}),
					q(57310, {	-- Irondeep Supplies (A)
						["repeatable"] = true,
						["qg"] = 12096,	-- Stormpike Quartermaster
						["coord"] = { 43.3, 17.0, 1537 },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 10,
					}),
					q(57322, {	-- Irondeep Supplies (H)
						["repeatable"] = true,
						["qg"] = 12097,	-- Frostwolf Quartermaster
						["coord"] = { 46.8, 83.5, 1537 },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					}),
					q(56258, {	-- Ivus the Forest Lord
						["qg"] = 154476,	-- Archdruid Renferal
						["coord"] = { 43.9, 12.6, 1537 },
						["cost"] = { { "i", 17423, 1 } },	-- Storm Crystal
						["races"] = ALLIANCE_ONLY,
						["isWeekly"] = true,
					}),
					q(57638, {	-- Korrak the Bloodrager
						["qg"] = 158515,	-- Lieutenant Haggerdin
						["coord"] = { 43.6, 16.0, 1537 },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 10,
						["groups"] = {
							i(172122),	-- Bloodseeker
							i(172125),	-- Cold Forged Blade
							i(172139),	-- Cold Forged Hammer
							i(172121),	-- Ice Barbed Spear
							i(172123),	-- Wand of Biting Cold
							i(18150),	-- Rune of Recall
						},
					}),
					q(63953, {	-- Korrak's Revenge
						["timeline"] = { ADDED_9_1_5 },
						["isYearly"] = true,	-- presumably
						["groups"] = {
							i(172022, {	-- Stormpike Battle Ram (MOUNT!)
								["races"] = ALLIANCE_ONLY,
							}),
							i(172023, {	-- Frostwolf Snarler (MOUNT!)
								["races"] = HORDE_ONLY,
							}),
						},
					}),
					q(57320, {	-- Launch the Attack!
						["repeatable"] = true,	-- presumably
						["qg"] = 13449,	-- Warmaster Garrick
						["coord"] = { 45.0, 48.0, 1537 },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					}),
					q(56259, {	-- Lokholar the Ice Lord
						["qg"] = 154474,	-- Primalist Thurloga
						["coord"] = { 50.1, 85.1, 1537 },
						["cost"] = { { "i", 17306, 1 } },	-- Stormpike Soldier's Blood
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
					}),
					q(57641, {	-- Master Ryson's All Seeing Eye
						--	unsure if this has faction requirements or anything along those lines
						["repeatable"] = true,	-- presumably
						["lvl"] = 10,
					}),
					q(57306, {	-- More Armor Scraps
						["repeatable"] = true,
						["qg"] = 13257,	-- Murgot Deepforge
						["coord"] = { 43.6, 15.9, 1537 },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 10,
					}),
					q(57318, {	-- More Booty!
						["repeatable"] = true,
						["qg"] = 13176,	-- Smith Regzar
						["coord"] = { 49.9, 82.6, 1537 },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					}),
					q(57313, {	-- Speak with our Quartermaster
						["qg"] = 13798,	-- Jotek
						["isWeekly"] = true,
						["coord"] = { 50.6, 82.0, 1537 },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					}),
					q(56256, {	-- The Battle for Alterac (A)
						["qg"] = 154478,	-- Prospector Stonehewer
					--	["coord"] = { , ALTERAC_VALLEY },
						["isWeekly"] = true,
						["races"] = ALLIANCE_ONLY,
					}),
					q(56257, {	-- The Battle for Alterac (H)
						["qg"] = 154473,	-- Voggah Deathgrip
						["coord"] = { 55.0, 87.2, ALTERAC_VALLEY },
						["isWeekly"] = true,
						["races"] = HORDE_ONLY,
					}),
					q(57312, {	-- The Graveyards of Alterac
						["qg"] = 158579,	-- Corporal Teeka Bloodsnarl
						["isDaily"] = true,
						["coord"] = { 50.8, 82.3, 1537 },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					}),
					q(57639, {	-- The Legend of Korrak
						["qg"] = 158501,	-- Warmaster Laggrond
						["coord"] = { 50.1, 82.5, 1537 },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
						["groups"] = {
							i(172122),	-- Bloodseeker
							i(172125),	-- Cold Forged Blade
							i(172139),	-- Cold Forged Hammer
							i(172121),	-- Ice Barbed Spear
							i(172123),	-- Wand of Biting Cold
							i(18149);	-- Rune of Recall
						},
					}),
					q(57303, {	-- The Quartermaster
						["qg"] = 13797,	-- Mountaineer Boombellow
						["isWeekly"] = true,
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 10,
					}),
					q(57307, {	-- Towers and Bunkers (A)
						["qg"] = 159811,	-- Sergeant Durgen Stormpike
						["isDaily"] = true,
						["coord"] = { 43.6, 17.2, 1537 },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 10,
					}),
					q(57315, {	-- Towers and Bunkers (H)
						["qg"] = 158579,	-- Corporal Teeka Bloodsnarl
						["isDaily"] = true,
						["coord"] = { 50.8, 82.3, 1537 },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					}),
					q(57730, {	-- Zinfizzlex's Portable Shredder Unit (A)
						["description"] = "Questgiver is west of Korrak (over the bridge) and you have to escort him to your base. After bringing him to safety he offers the quest.",
						["repeatable"] = true,
						["qg"] = 13377,	-- Master Engineer Zinfizzlex
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 10,
						["g"] = { i(17410) },	-- Zinfizzlex's Portable Shredder Unit
					}),
					q(57731, {	-- Zinfizzlex's Portable Shredder Unit (H)
						["description"] = "Questgiver is west of Korrak (over the bridge) and you have to escort him to your base. After bringing him to safety he offers the quest.",
						["repeatable"] = true,
						["qg"] = 13377,	-- Master Engineer Zinfizzlex
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
						["g"] = { i(17384) },	-- Zinfizzlex's Portable Shredder Unit
					}),
				}),
				n(VENDORS, {
					n(158386, {	-- Time-Displaced Jorek Ironside <Frostwolf Supply Officer>
						["coords"] = {
							{ 58.1, 33.6, HILLSBRAD_FOOTHILLS },
						},
						["races"] = HORDE_ONLY,
						["groups"] = {
							n(BACK, {
								i(172100, {	-- Frostwolf Advisor's Cloak
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172098, {	-- Frostwolf Legionnaire's Cloak
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
							}),
							filter(CLOTH, {
								i(172120, {	-- Frost Runed Headdress
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172105, {	-- Frostwolf Cloth Belt
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
							}),
							filter(FINGER_F, {
								i(172124, {	-- Deep Rooted Ring
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172138, {	-- Don Julio's Band
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172140, {	-- Don Rodrigo's Band
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
							}),
							filter(LEATHER, {
								i(172104, {	-- Frostwolf Leather Belt
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172128, {	-- Yeti Hide Bracers
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
							}),
							filter(MAIL, {
								i(172103, {	-- Frostwolf Mail Belt
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172126, {	-- Winteraxe Epaulets
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
							}),
							filter(NECK_F, {
								i(172111, {	-- Frostwolf Advisor's Pendant
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172110, {	-- Frostwolf Legionnaire's Pendant
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
							}),
							filter(PLATE, {
								i(172102, {	-- Frostwolf Plate Belt
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172127, {	-- Frozen Steel Vambraces
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
							}),
							n(WEAPONS, {
								i(172122, {	-- Bloodseeker
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 90 },
									},
								}),
								i(172125, {	-- Cold Forged Blade
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 40 },
									},
								}),
								i(172139, {	-- Cold Forged Hammer
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 40 },
									},
								}),
								i(172118, {	-- Frostbite
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 40 },
									},
								}),
								i(172114, {	-- Glacial Blade
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 40 },
									},
								}),
								i(172121, {	-- Ice Barbed Spear
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 90 },
									},
								}),
								i(172133, {	-- Lei of the Lifegiver
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 30 },
									},
								}),
								i(172135, {	-- The Immovable Object
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 30 },
									},
								}),
								i(172137, {	-- The Lobotomizer
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 40 },
									},
								}),
								i(172134, {	-- Therazane's Touch
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 30 },
									},
								}),
								i(172136, {	-- The Unstoppable Force
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 90 },
									},
								}),
								i(172129, {	-- Tome of Arcane Domination
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 30 },
									},
								}),
								i(172130, {	-- Tome of Shadow Force
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 30 },
									},
								}),
								i(172132, {	-- Tome of the Fiery Arcana
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 30 },
									},
								}),
								i(172131, {	-- Tome of the Ice Lord
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 30 },
									},
								}),
								i(172123, {	-- Wand of Biting Cold
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 40 },
									},
								}),
								i(172116, {	-- Whiteout Staff
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 40 },
									},
								}),
							}),
						},
					}),
					n(158385, {	-- Time-Displaced Thanthaldis Snowgleam <Stormpike Supply Officer>
						["coords"] = {
							{ 44.7, 46.4, HILLSBRAD_FOOTHILLS },
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							n(BACK, {
								i(172101, {	-- Stormpike Sage's Cloak
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172099, {	-- Stormpike Soldier's Cloak
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
							}),
							filter(CLOTH, {
								i(172120, {	-- Frost Runed Headdress
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172109, {	-- Stormpike Cloth Girdle
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
							}),
							filter(FINGER_F, {
								i(172124, {	-- Deep Rooted Ring
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172138, {	-- Don Julio's Band
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172140, {	-- Don Rodrigo's Band
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
							}),
							filter(LEATHER, {
								i(172108, {	-- Stormpike Leather Girdle
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172128, {	-- Yeti Hide Bracers
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
							}),
							filter(MAIL, {
								i(172107, {	-- Stormpike Mail Girdle
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172126, {	-- Winteraxe Epaulets
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
							}),
							filter(PLATE, {
								i(172127, {	-- Frozen Steel Vambraces
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172106, {	-- Stormpike Plate Girdle
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
							}),
							filter(NECK_F, {
								i(172113, {	-- Stormpike Sage's Pendant
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
								i(172112, {	-- Stormpike Soldier's Pendant
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 20 },
									},
								}),
							}),
							n(WEAPONS, {
								i(172122, {	-- Bloodseeker
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 90 },
									},
								}),
								i(172125, {	-- Cold Forged Blade
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 40 },
									},
								}),
								i(172139, {	-- Cold Forged Hammer
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 40 },
									},
								}),
								i(172117, {	-- Crackling Staff
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 90 },
									},
								}),
								i(172115, {	-- Electrified Dagger
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 40 },
									},
								}),
								i(172121, {	-- Ice Barbed Spear
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 90 },
									},
								}),
								i(172133, {	-- Lei of the Lifegiver
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 30 },
									},
								}),
								i(172119, {	-- Stormstrike Hammer
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 40 },
									},
								}),
								i(172135, {	-- The Immovable Object
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 30 },
									},
								}),
								i(172137, {	-- The Lobotomizer
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 40 },
									},
								}),
								i(172134, {	-- Therazane's Touch
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 30 },
									},
								}),
								i(172136, {	-- The Unstoppable Force
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 90 },
									},
								}),
								i(172129, {	-- Tome of Arcane Domination
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 30 },
									},
								}),
								i(172130, {	-- Tome of Shadow Force
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 30 },
									},
								}),
								i(172132, {	-- Tome of the Fiery Arcana
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 30 },
									},
								}),
								i(172131, {	-- Tome of the Ice Lord
									["cost"] = {
										{ "i", 137642, 1 },	-- 1x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 30 },
									},
								}),
								i(172123, {	-- Wand of Biting Cold
									["cost"] = {
										{ "i", 137642, 2 },	-- 2x  Mark of Honor
										{ "c", TIMEWARPED_BADGE, 40 },
									},
								}),
							}),
						},
					}),
					-- #if AFTER 11.0.5
					n(158386, {	-- Time-Displaced Jorek Ironside <Frostwolf Supply Officer>
						["crs"] = { 229711 },	-- Time-Displaced Jorek Ironside <Frostwolf Supply Officer>
						["coords"] = {
							{ 62.8, 51.1, TANARIS },
						},
					}),
					n(158385, {	-- Time-Displaced Thanthaldis Snowgleam <Stormpike Supply Officer>
						["crs"] = { 229710 },	-- Time-Displaced Thanthaldis Snowgleam <Stormpike Supply Officer>
						["coords"] = {
							{ 62.7, 51.0, TANARIS },
						},
					}),
					-- #endif
				}),
			},
		}),
		n(QUESTS, {
			q(57249, {	-- A Timely Invitation
				["provider"] = { "i", 171177 },	-- Invitation from the Timewalkers
				["coord"] = { 53.6, 54.8, CAVERNS_OF_TIME },
				["isYearly"] = true,
			}),
			q(57300, {	-- Soldier of Time
				-- #if BEFORE 11.0.5
				["qg"] = 157113,	-- Chromie
				["coord"] = { 53.5, 54.7, CAVERNS_OF_TIME },
				-- #else
				["qg"] = 223882,	-- Izaik Kadarov
				["coord"] = { 62.3, 51.8, TANARIS },
				-- #endif
				["isWeekly"] = true,
				["timeline"] = { ADDED_8_2_5, REMOVED_8_2_5, ADDED_11_0_2 },
				["_drop"] = { "g" },	-- drop MoH to remove this quest from the popout
			}),
		}),
		n(VENDORS, {
			n(158061, {	-- Historian Ma'di
				["coord"] = { 50.7, 41.1, CAVERNS_OF_TIME },
				["groups"] = {
					i(147885, {	-- Bronze-Tinted Sunglasses
						["cost"] = {{ "c", TIMEWARPED_BADGE, 200 }},
					}),
					i(128506, {	-- Celebration Wand - Gnoll
						["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
					}),
					i(128505, {	-- Celebration Wand - Murloc
						["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
					}),
					i(147883, {	-- Celebration Wand - Quillboar
						["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
					}),
					i(147882, {	-- Celebration Wand - Trogg
						["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
					}),
					i(136925, {	-- Corgi Pup (PET!)
						["cost"] = {{ "c", TIMEWARPED_BADGE, 200 }},
					}),
					i(128510, {	-- Exquisite Costume Set: "Edwin VanCleef"
						["cost"] = {{ "c", TIMEWARPED_BADGE, 200 }},
					}),
					i(128507, {	-- Inflatable Thunderfury, Blessed Blade of the Windseeker
						["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						["groups"] = {
							ach(10335),	-- Did Someone Say...?
						},
					}),
					i(158149, {	-- Overtuned Corgi Goggles (TOY!)
						["cost"] = {{ "c", TIMEWARPED_BADGE, 200 }},
					}),
					i(147884, {	-- Tranquil Mechanical Yeti Costume
						["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
					}),
				},
			}),
		}),
	})),
	n(WOW_ANNIVERSARY_SIXTEEN, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_1 } },{
		n(VENDORS, {
			n(158061, {	-- Historian Ma'di
				["coord"] = { 50.7, 41.1, CAVERNS_OF_TIME },
				["groups"] = {
					i(178514, {	-- Crafted Cloak of War
						["cost"] = {{ "c", TIMEWARPED_BADGE, 200 }},
					}),
				},
			}),
		}),
	})),
	n(WOW_ANNIVERSARY_SEVENTEEN, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 } },{
		n(QUESTS, {
			-- #if BEFORE 11.0.5
			q(60215, {	-- Doomwalkin' Has Come Knockin'
				["qg"] = 157113,	-- Chromie
				["coord"] = { 53.5, 54.7, CAVERNS_OF_TIME },
				["isWeekly"] = true,
			}),
			-- #else
			q(60215, {	-- Timely Gate Crashers
				["qg"] = 223882,	-- Izaik Kadarov
				["coord"] = { 62.3, 51.8, TANARIS },
				["isWeekly"] = true,
			}),
			-- #endif
		}),
		n(VENDORS, {
			n(158061, {	-- Historian Ma'di
				["coord"] = { 50.7, 41.1, CAVERNS_OF_TIME },
				["groups"] = {
					i(186556, {	-- Timeless Mechanical Dragonling (PET!)
						["cost"] = {{ "c", TIMEWARPED_BADGE, 200 }},
					}),
				},
			}),
		}),
		n(WORLD_BOSSES, {
			n(167749, {	-- Doomwalker
				["isRaid"] = true,
				["questID"] = 60214,
				["isDaily"] = true,
				["coords"] = {
					-- #IF BEFORE 11.0.5
					{ 64.4, 50.7, TANARIS },
					-- #ELSE
					{ 62.1, 58.4, TANARIS },	-- center of large pat circle
					-- #ENDIF
				},
				["maps"] = {
					74,	--	Caverns of Time Entrance
					CAVERNS_OF_TIME,
				},
				["groups"] = {
					i(208572, {	-- Azure Worldchiller (MOUNT!)
						["timeline"] = { ADDED_10_2_0 }
					}),
					i(186469, {	-- Illidari Doomhawk (MOUNT!)
						["timeline"] = { ADDED_10_2_0, REMOVED_10_2_0, ADDED_11_0_5 }
					}),
					i(43959, {	-- Reins of the Grand Black War Mammoth (A) (MOUNT!)
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_11_0_5 },
					}),
					i(44083, {	-- Reins of the Grand Black War Mammoth (H) (MOUNT!)
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_11_0_5 },
					}),
					i(186501);	-- Doomwalker Trophy Stand (TOY!)
					i(186506),	-- Akama's Edge
					i(186460),	-- Anger-Spark Gloves
					i(186459),	-- Archaic Charm of Presence
					i(186467),	-- Barrel-Blade Longrifle
					i(186462),	-- Black-Iron Battlecloak
					i(186481),	-- Darkcrest Waistguard
					i(186466),	-- Ethereum Nexus-Reaver
					i(186465),	-- Faceguard of the Endless Watch
					i(186464),	-- Fathom-Helm of the Deeps
					i(186461),	-- Gilded Trousers of Benediction
					i(186475),	-- Hellstiched Mantle
					i(186468),	-- Talon of the Tempest
					i(186463),	-- Terrorweave Tunic
					i(186484),	-- Voidforged Greaves
				},
			}),
		}),
	})),
	n(WOW_ANNIVERSARY_NINETEEN, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } },{
		n(VENDORS, {
			n(158061, {	-- Historian Ma'di
				["coord"] = { 50.7, 41.1, CAVERNS_OF_TIME },
				["groups"] = {
					i(186469, {	-- Illidari Doomhawk (MOUNT!)
						["cost"] = {{ "c", TIMEWARPED_BADGE, 5000 }},
					}),
				},
			}),
		}),
	})),
	n(WOW_ANNIVERSARY_TWENTY, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } },{
		inst(1301, {	-- Blackrock Depths
			["isRaid"] = true,
			--["coord"] = { },
			["maps"] = {
				2362,	-- Shadowforge City
				2363,	-- Detention Block
			},
			["g"] = {
				n(ACHIEVEMENTS, {
					ach(41220, { ["timeline"] = { "removed 11.0.7.58238" } }),	-- WoW's 20th Anniversary
					ach(40999, {		-- You're in Your Blackrock Depths
						crit(70642, {	-- Lord Roccor
							["_encounter"] = { ROCCOR, DIFFICULTY.RAID.MULTI.ALL_WITHOUT_MYTHIC },
						}),
						crit(70571, {	-- High Interrogator Gerstahn
							["_npc"] = { GERSTAHN },
						}),
						crit(70643, {	-- Bael'Gar
							["_encounter"] = { BAELGAR, DIFFICULTY.RAID.MULTI.ALL_WITHOUT_MYTHIC },
						}),
						crit(70572, {	-- Houndmaster Grebmar
							["_npc"] = { GREBMAR },
						}),
						crit(70644, {	-- Lord Incendius
							["_encounter"] = { INCENDIUS, DIFFICULTY.RAID.MULTI.ALL_WITHOUT_MYTHIC },
						}),
						crit(70575, {	-- Fineous Darkvire
							["_npc"] = { DARKVIRE },
						}),
						crit(70576, {	-- Phalanx
							["_npc"] = { PHALANX },
						}),
						crit(70645, {	-- Golem Lord Argelmach
							["_encounter"] = { ARGELMACH, DIFFICULTY.RAID.MULTI.ALL_WITHOUT_MYTHIC },
						}),
						crit(70578, {	-- The Seven
							["_encounter"] = { THE_SEVEN, DIFFICULTY.RAID.MULTI.ALL_WITHOUT_MYTHIC },
						}),
						crit(70646, {	-- General Angerforge
							["_encounter"] = { ANGERFORGE, DIFFICULTY.RAID.MULTI.ALL_WITHOUT_MYTHIC },
						}),
						crit(70647, {	-- Ambassador Flamelash
							["_encounter"] = { FLAMELASH, DIFFICULTY.RAID.MULTI.ALL_WITHOUT_MYTHIC },
						}),
						crit(70581, {	-- Pyromancer Loregrain
							["_npc"] = { LOREGRAIN },
						}),
						crit(70648, {	-- Emperor Dagran Thaurissan
							["_encounter"] = { DAGRAN, DIFFICULTY.RAID.MULTI.ALL_WITHOUT_MYTHIC },
						}),
					}),
				}),
				n(QUESTS, {
					q(82817, {	-- Disturbance Detected: Blackrock Depths
						["qgs"] = {
							-- #if BEFORE 11.0.7
							229494,	-- Moira Thaurissan <Queen of the Dark Iron>
							-- #else
							234556,	-- Grannadormu
							-- #endif
						},
						["coords"] = {
							-- #if BEFORE 11.0.7
							{ 63.0, 49.7, TANARIS },
							-- #else
							{ 52.8, 82.8, ORGRIMMAR },
							{ 56.0, 18.4, STORMWIND_CITY },
							-- #endif
						},
						["isWeekly"] = true,
						["g"] = {
							i(232471, {	-- Cache of Dark Iron Treasures
								["sym"] = SYM_ALL_BRD_DROPS,
							}),
						},
					}),
					q(84735, {	-- Truth of the Dark Irons
						["provider"] = { "n", 229494 },	-- Moira Thaurissan <Queen of the Dark Iron>
						["coord"] = { 63.0, 49.7, TANARIS },
					}),
				}),
				n(VENDORS, {
					-- TODO: maybe once I have figured out better 'Sources' tech to list things with a Source and then assign alternate Sources
					-- this can be cleaned up again while maintaining proper 'cost' links
					RelicCofferKeyPurchase(231418),	-- Angerforge's Battle Axe
					RelicCofferKeyPurchase(231480),	-- Anvilrage Dragoon's Trousers
					RelicCofferKeyPurchase(231477),	-- Anvilrage Medic's Boots
					RelicCofferKeyPurchase(231479),	-- Anvilrage Rogue's Belt of Knives
					RelicCofferKeyPurchase(231488),	-- Anvilrage, Warden's Breastplate
					RelicCofferKeyPurchase(231463),	-- Arbiter's Blade
					RelicCofferKeyPurchase(231472),	-- Argelmach's Breaking Bar
					RelicCofferKeyPurchase(231492),	-- Barman Shanker
					RelicCofferKeyPurchase(231450),	-- Belt of the Eminent Mason
					RelicCofferKeyPurchase(231447),	-- Bloodclot Band
					RelicCofferKeyPurchase(231399),	-- Bloodfist
					RelicCofferKeyPurchase(231493),	-- Bottle-Popper Ring
					RelicCofferKeyPurchase(231457),	-- Bottled Magma
					RelicCofferKeyPurchase(231486),	-- Burning Spirit Tender's Mitts
					RelicCofferKeyPurchase(231424),	-- Burst of Knowledge
					RelicCofferKeyPurchase(231415),	-- Cape of the Fire Salamander
					RelicCofferKeyPurchase(231425),	-- Chief Architect's Monocle
					RelicCofferKeyPurchase(231404),	-- Cinderhide Armsplints
					RelicCofferKeyPurchase(231412),	-- Circle of Flame
					RelicCofferKeyPurchase(231489),	-- Dark Warder's Pauldrons
					RelicCofferKeyPurchase(231431),	-- Deathdealer Breastplate
					RelicCofferKeyPurchase(231476),	-- Dope'rel's Calling Rune
					RelicCofferKeyPurchase(231474),	-- Dope'rel's Finger Gloves
					RelicCofferKeyPurchase(231482),	-- Dragoon's Volley Gun
					RelicCofferKeyPurchase(231395),	-- Earthslag Shoulders
					RelicCofferKeyPurchase(231440),	-- Ebonsteel Spaulders
					RelicCofferKeyPurchase(231407),	-- Emberplate Armguards
					RelicCofferKeyPurchase(231455),	-- Embershard Pendant
					RelicCofferKeyPurchase(231437),	-- Emperor's Seal
					RelicCofferKeyPurchase(231392),	-- Enthralled Sphere
					RelicCofferKeyPurchase(231448),	-- Entrenching Boots
					RelicCofferKeyPurchase(231451),	-- Ferrous Cord
					RelicCofferKeyPurchase(231484),	-- Fireguard's Lava-Dipped Cleaver
					RelicCofferKeyPurchase(231400),	-- Fists of Phalanx
					RelicCofferKeyPurchase(231413),	-- Flame Wrath
					RelicCofferKeyPurchase(231464),	-- Flame-Tempered Skinner
					RelicCofferKeyPurchase(231468),	-- Flamekeeper's Fire Blanket
					RelicCofferKeyPurchase(231478),	-- Flamekeeper's Handwraps
					RelicCofferKeyPurchase(231483),	-- Flamelash's Fiery Spike
					RelicCofferKeyPurchase(231467),	-- Flamelord's Emberstaff
					RelicCofferKeyPurchase(231401),	-- Flamestrider Robes
					RelicCofferKeyPurchase(231485),	-- Flamewalker Scale Spaulders
					RelicCofferKeyPurchase(231406),	-- Flameweave Cuffs
					RelicCofferKeyPurchase(231409),	-- Force of Magma
					RelicCofferKeyPurchase(231414),	-- Force of Will
					RelicCofferKeyPurchase(231444),	-- Foreman's Head Protector
					RelicCofferKeyPurchase(231430),	-- Ghostshroud
					RelicCofferKeyPurchase(231494),	-- Golem Carapace Opener
					RelicCofferKeyPurchase(231443),	-- Golem Fitted Pauldrons
					RelicCofferKeyPurchase(231471),	-- Golem Gearbox
					RelicCofferKeyPurchase(231446),	-- Greaves of Withering Despair
					RelicCofferKeyPurchase(231491),	-- Grebmar's Catch Pole
					RelicCofferKeyPurchase(231465),	-- Grizzle's Skinne
					RelicCofferKeyPurchase(231435),	-- Guiding Stave of Wisdom
					RelicCofferKeyPurchase(231417),	-- Hand of Justice
					RelicCofferKeyPurchase(231439),	-- Hands of the Exalted Herald
					RelicCofferKeyPurchase(231434),	-- Haunting Specter Leggings
					RelicCofferKeyPurchase(231456),	-- Heart of Roccor
					RelicCofferKeyPurchase(231487),	-- Helm of the Molten Avatar
					RelicCofferKeyPurchase(231393),	-- Houndmaster's Bow
					RelicCofferKeyPurchase(231436),	-- Imperial Jewel
					RelicCofferKeyPurchase(231427),	-- Impervious Giant
					RelicCofferKeyPurchase(231458),	-- Insolent Dark Iron's Vest
					RelicCofferKeyPurchase(231391),	-- Kentic Amice
					RelicCofferKeyPurchase(231403),	-- Kindling Stave
					RelicCofferKeyPurchase(231408),	-- Lavacrest Leggings
					RelicCofferKeyPurchase(231388),	-- Lead Surveyor's Belt
					RelicCofferKeyPurchase(231449),	-- Leggings of Frenzied Magic
					RelicCofferKeyPurchase(231432),	-- Legplates of the Eternal Guardian
					RelicCofferKeyPurchase(231419),	-- Lord General's Sword
					RelicCofferKeyPurchase(231389),	-- Luminary Robe
					RelicCofferKeyPurchase(231461),	-- Magma Giant's Crown
					RelicCofferKeyPurchase(231454),	-- Magma-Shot Boomstick
					RelicCofferKeyPurchase(231445),	-- Mantle of Lost Hope
					RelicCofferKeyPurchase(231416),	-- Molten Fists
					RelicCofferKeyPurchase(231462),	-- Molten Furnace
					RelicCofferKeyPurchase(231398),	-- Molten Ironfoe
					RelicCofferKeyPurchase(231396),	-- Naglering
					RelicCofferKeyPurchase(231423),	-- Omnicast Boots
					RelicCofferKeyPurchase(231405),	-- Pyremail Wristguards
					RelicCofferKeyPurchase(231429),	-- Robes of the Royal Crown
					RelicCofferKeyPurchase(231421),	-- Royal Decorated Armor
					RelicCofferKeyPurchase(231397),	-- Rubicund Armguards
					RelicCofferKeyPurchase(231410),	-- Rubidium Hammer
					RelicCofferKeyPurchase(231475),	-- Sabaton's of Anger'rel
					RelicCofferKeyPurchase(231481),	-- Sapper's Waistplate
					RelicCofferKeyPurchase(231411),	-- Sash of the Burning Heart
					RelicCofferKeyPurchase(231442),	-- Sash of the Grand Hunt
					RelicCofferKeyPurchase(231402),	-- Searingscale Leggings
					RelicCofferKeyPurchase(231420),	-- Second Wind
					RelicCofferKeyPurchase(231426),	-- Senior Designer's Pantaloons
					RelicCofferKeyPurchase(231453),	-- Shard Splinter
					RelicCofferKeyPurchase(231470),	-- Spare Golem Frame
					RelicCofferKeyPurchase(231469),	-- Spare Golem Pauldrons
					RelicCofferKeyPurchase(231390),	-- Spritecaster Cape
					RelicCofferKeyPurchase(231394),	-- Stoneshell Guard
					RelicCofferKeyPurchase(231438),	-- Swiftwalker Boots
					RelicCofferKeyPurchase(231433),	-- Thaurissan's Royal Scepter
					RelicCofferKeyPurchase(231473),	-- The Fifth's Linked Treads
					RelicCofferKeyPurchase(231428),	-- The Hammer of Grace
					RelicCofferKeyPurchase(231422),	-- Warstrife Leggings
					RelicCofferKeyPurchase(231441),	-- Wristguards of Renown
					n(223881, {	-- Braggi Brazenbrass <Raidfinder Relic Coffer Key Exchanger>
						["coord"] = { 63.0, 49.8, TANARIS },
						["sym"] = SYM_ALL_BRD_DROPS,
					}),
					n(233209, {	-- Kraegan Emberforge <Normal Relic Coffer Key Exchanger>
						["coord"] = { 63.0, 49.8, TANARIS},
						["sym"] = SYM_ALL_BRD_DROPS,
					}),
					n(224322, {	-- Hilda Hellforge <Heroic Relic Coffer Key Exchanger>
						["coord"] = { 63.0, 49.8, TANARIS},
						["sym"] = SYM_ALL_BRD_DROPS,
					}),
				}),
				Difficulty(DIFFICULTY.RAID.MULTI.ALL_WITHOUT_MYTHIC).AddGroups({
					ZoneDrops({}),
					Boss(ROCCOR),
					n(GERSTAHN, {
						i(231488),	-- Anvilrage, Warden's Breastplate
						i(231489),	-- Dark Warder's Pauldrons
						i(231392),	-- Enthralled Sphere
						i(231446),	-- Greaves of Withering Despair
						i(231391),	-- Kentic Amice
					}),
					Boss(BAELGAR),
					n(GREBMAR, {
						i(231491),	-- Grebmar's Catch Pole
						i(231465),	-- Grizzle's Skinne
						i(231393),	-- Houndmaster's Bow
						i(231390),	-- Spritecaster Cape
					}),
					Boss(INCENDIUS),
					n(DARKVIRE, {
						i(231450),	-- Belt of the Eminent Mason
						i(231425),	-- Chief Architect's Monocle
						i(231444),	-- Foreman's Head Protector
						i(231494),	-- Golem Carapace Opener
						i(231388),	-- Lead Surveyor's Belt
						i(231426),	-- Senior Designer's Pantaloons
					}),
					n(PHALANX, {
						i(231492),	-- Barman Shanker
						i(231399),	-- Bloodfist
						i(231493),	-- Bottle-Popper Ring
						i(231451),	-- Ferrous Cord
						i(231400),	-- Fists of Phalanx
						i(231443),	-- Golem Fitted Pauldrons
						i(231441),	-- Wristguards of Renown
					}),
					Boss(ARGELMACH),
					Boss(THE_SEVEN),
					Boss(ANGERFORGE),
					Boss(FLAMELASH),
					n(LOREGRAIN, {
						i(231448),	-- Entrenching Boots
						i(231401),	-- Flamestrider Robes
						i(231403),	-- Kindling Stave
						i(231402),	-- Searingscale Leggings
					}),
					Boss(DAGRAN, {
						i(224278),	-- Timewarped Ironforge Blueprints (QI!)
					}),
				}),
				Difficulty(DIFFICULTY.RAID.LFR).AddGroups({
					CommonBossDrops({
						i(231510, {	-- Timewarped Relic Coffer Key
							["description"] = "You can only loot 120 keys per difficulty per character for the entire event.",
						}),
					}),
				}),
				Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
					CommonBossDrops({
						i(232365, {	-- Timewarped Relic Coffer Key
							["description"] = "You can only loot 120 keys per difficulty per character for the entire event.",
						}),
					}),
				}),
				Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
					CommonBossDrops({
						i(232366, {	-- Timewarped Relic Coffer Key
							["description"] = "You can only loot 120 keys per difficulty per character for the entire event.",
						}),
					}),
				}),
			},
		}),
		n(ACHIEVEMENTS, {
			ach(40976, {	-- A Cool Twenty Years
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					40996,	-- A Gatecrasher
					40994,	-- An Original
					40990,	-- Balloonist
					40977,	-- Codex Editor: Ahn'Qiraj
					40987,	-- Fashion Critic
					40985,	-- I Have That One!
					40992,	-- Peanut Gallery
					40989,	-- Pet Mischief
				}},
				["g"] = {
					i(228760),	-- Coldflame Tempest (MOUNT!)
				},
			}),
			ach(41015),		-- A Dark Iron Past
			ach(40996),		-- A Gatecrasher (automated)
			ach(40998),		-- A Timewalking Step Back to a Classic Dungeon Time (automated)
			ach(41000),		-- A Timewalking Journey Back to a Classic Dungeon Time (automated)
			ach(40994),		-- An Original (automated)
			ach(40993, {	-- Avid Listener
				crit(70553),	-- Listen to 'The Heroes of the Scarab Wall' story
				crit(70555),	-- Listen to 'The Mercy of Baine Bloodhoof' story
				crit(70554),	-- Listen to 'The Tragedy of Thassarian' story
			}),
			ach(40990),		-- Balloonist
			ach(40984),		-- Big Fan
			ach(41033),		-- Classy Dresser
			ach(40987),		-- Fashion Critic
			ach(40991, {	-- Frequent Flyer
				crit(70549, {["crs"]={225017}}),	-- Bronze Balloon
				crit(70550, {["crs"]={228529}}),	-- Dark Blue Balloon
				crit(70548, {["crs"]={225252}}),	-- Gold Balloon
				crit(70551, {["crs"]={228530}}),	-- Light Blue Balloon
			}),
			ach(40985),		-- I Have That One!
			ach(40986),		-- Mount Master
			ach(40992),		-- Peanut Gallery
			ach(40989, {	-- Pet Mischief
				["provider"] = { "i", 224157 },	-- Pet Mirror
			}),
			ach(40988, {	-- Photo Op!
				["crs"] = {
					226156,	-- Twilight Highlands
					226155,	-- Uldum
					226154,	-- Mount Hyjal
					226159,	-- Nagrand
					226158,	-- Gorgrond
					226157,	-- Shadowmoon Valley
					226162,	-- The Storm Peaks
					226161,	-- Icecrown
					226160,	-- Grizzly Hills
					224532,	-- Valley of the Four Winds
					224531,	-- Kun-Lai Summit
					224062,	-- Jade Forest
					226181,	-- Val'Sharah
					226180,	-- Stormheim
					226178,	-- Suramar
					226185,	-- Stormsong Valley
					226183,	-- Drustvar
					226182,	-- Tiragard Sound
					226189,	-- Zereth Mortis
					226188,	-- Ardenweald
					226186,	-- Revendreth
					226192,	-- Ohn'ahran Plains
					226191,	-- Waking Shores
					226190,	-- Azure Span
				},
			}),
			ach(40997),		-- The Gatecrashers (automated)
			ach(40995),		-- The Originals (automated)
			ach(41038),		-- Token Collector
			ach(41013),		-- Upgraded Apparel
			ach(40661, {		-- Zoomies!
				["provider"] = { "i", 224157 },	-- Pet Mirror
				["crs"] = { 227559 },	-- Zoomy Treat
				["coords"] = {
					{ 62.0, 50.1, TANARIS },
					{ 61.9, 50.1, TANARIS },
					{ 61.8, 49.9, TANARIS },
					{ 61.7, 50.0, TANARIS },
					{ 62.2, 49.6, TANARIS },
					{ 62.3, 49.3, TANARIS },
					-- there's quite a many more it seems, not worth for more coords, only need 3 to get achieve
				},
			}),
		}),
		n(FACTIONS, {
			faction(FACTION_ZANDALAR_TRIBE, {	-- Zandalar Tribe
				["icon"] = 135727,
			}),
		}),
		n(GROUP_FINDER, sharedData({
			["maps"] = { 2354 },	-- Silithus
		},{
			i(229355, {	-- Chromie's Premium Goodie Bag
				i(226046),	-- Timely Tourist's Band
				i(226064),	-- Timely Tourist's Beacon Staff
				i(226082),	-- Timely Tourist's Belt
				i(226091),	-- Timely Tourist's Bindings
				i(226056),	-- Timely Tourist's Blade
				i(226167),	-- Timely Tourist's Bolthrower
				i(226085),	-- Timely Tourist's Boots
				i(226083),	-- Timely Tourist's Bracers
				i(226068),	-- Timely Tourist's Breastplate
				i(226076),	-- Timely Tourist's Chainmail
				i(226169),	-- Timely Tourist's Chisel
				i(226171),	-- Timely Tourist's Cleaver
				i(226051),	-- Timely Tourist's Cloak
				i(226079),	-- Timely Tourist's Coif
				i(226098),	-- Timely Tourist's Cord
				i(226095),	-- Timely Tourist's Cowl
				i(226099),	-- Timely Tourist's Cuffs
				i(226063),	-- Timely Tourist's Drill-Tipped Stave
				i(226089),	-- Timely Tourist's Epaulets
				i(226070),	-- Timely Tourist's Gauntlets
				i(226074),	-- Timely Tourist's Girdle
				i(226086),	-- Timely Tourist's Gloves
				i(226080),	-- Timely Tourist's Greaves
				i(226078),	-- Timely Tourist's Grips
				i(226055),	-- Timely Tourist's Hammer
				i(226094),	-- Timely Tourist's Handwraps
				i(226170),	-- Timely Tourist's Hatchet
				i(226087),	-- Timely Tourist's Headgear
				i(226071),	-- Timely Tourist's Helm
				i(226072),	-- Timely Tourist's Legguards
				i(226065),	-- Timely Tourist's Lantern
				i(226096),	-- Timely Tourist's Leggings
				i(226088),	-- Timely Tourist's Pants
				i(226073),	-- Timely Tourist's Pauldrons
				i(226049),	-- Timely Tourist's Pendant
				i(226062),	-- Timely Tourist's Polearm
				i(226054),	-- Timely Tourist's Pummeler
				i(226048),	-- Timely Tourist's Ring
				i(226053),	-- Timely Tourist's Ritual Knife
				i(226092),	-- Timely Tourist's Robes
				i(226069),	-- Timely Tourist's Sabatons
				i(226093),	-- Timely Tourist's Sandals
				i(226090),	-- Timely Tourist's Sash
				i(226052),	-- Timely Tourist's Shank
				i(226058),	-- Timely Tourist's Sharpshooter
				i(226050),	-- Timely Tourist's Shawl
				i(226066),	-- Timely Tourist's Shield
				i(226081),	-- Timely Tourist's Shoulderguards
				i(226097),	-- Timely Tourist's Shoulderpads
				i(226047),	-- Timely Tourist's Signet
				i(226061),	-- Timely Tourist's Spade
				i(226168),	-- Timely Tourist's Spellblade
				i(226077),	-- Timely Tourist's Striders
				i(226057),	-- Timely Tourist's Sword
				i(226059),	-- Timely Tourist's Torch
				i(226075),	-- Timely Tourist's Vambraces
				i(226084),	-- Timely Tourist's Vest
				i(226060),	-- Timely Tourist's Waraxe
			}),
			i(226102, {	-- Chromie's Tour Goodie Bag
				["sym"] = {
					{ "select", "itemID", 229355},	-- Chromie's Premium Goodie Bag
					{ "pop" },
				},
				["skipFill"] = true,
			}),
			i(229359, {	-- Chromie's Goodie Bag
				["sym"] = {
					{ "select", "itemID", 229355},	-- Chromie's Premium Goodie Bag
					{ "pop" },
				},
				["skipFill"] = true,
			}),
			i(232877, {	-- Timely Goodie Bag
				["sym"] = {
					{ "select", "itemID", 229355},	-- Chromie's Premium Goodie Bag
					{ "pop" },
				},
				["skipFill"] = true,
			}),
			-- Satchel when under level 80 for Celebration Raid Finder (possibly codex?)
			i(234413, {	-- Satchel of Exotic Mysteries
				i(224572),	-- Crystallized Augment Rune
			}),
		})),
		n(QUESTS, {
			q(82672),	-- Another Timely Invitation
			q(84254, {	-- Meet and Greet
				["provider"] = { "n", 223877 },	-- Yllana <Event Coordinator>
				["coord"] = { 62.9, 50.7, TANARIS },
			}),
			q(84489, {	-- Shopping Squee!
				["sourceQuests"] = { 84254 },	-- Meet and Greet
				["provider"] = { "n", 223877 },	-- Yllana <Event Coordinator>
				["coord"] = { 62.9, 50.7, TANARIS },
			}),
			q(84616, {	-- Celebrate Good Fun!
				["provider"] = { "n", 223877 },	-- Yllana <Event Coordinator>
				["coord"] = { 62.9, 50.7, TANARIS },
				["isDaily"] = true
			}),
			q(82783, {	-- Chromie's Codex
				["provider"] = { "n", 226368 },	-- Chromie
				["coord"] = { 62.6, 50.0, TANARIS },
				["maps"] = { 2354 },	-- Silithus
				["isWeekly"] = true,
				["g"] = {
					ach(40977),	-- Codex Editor: Ahn'Qiraj
					i(233014, {	-- Bronze Celebration Cache of Treasures
						["sym"] = SYM_ALL_BRD_DROPS,
					}),
				},
			}),
			------ Stay awhile and listen ------
			hqt(84743, {	-- Stay awhile and listen: Moira Thaurissan <Queen of the Dark Iron>
				["name"] = "Stay awhile and listen: Moira Thaurissan",
				["description"] = "Dialogue becomes available after completing 'Disturbance Detected: Blackrock Depths' (82817).",
				["sourceQuests"] = { 82817 },	-- Disturbance Detected: Blackrock Depths (Completed)
				["provider"] = { "n", 229494 },	-- Moira Thaurissan <Queen of the Dark Iron>
				["coord"] = { 63.0, 49.7, TANARIS },
			}),
		}),
		n(REWARDS, {
			currency(BRONZE_TOKEN),
		}),
		n(TREASURES, {
			o(455795, {	-- Pet Box
				["coord"] = { 62, 50.1, TANARIS },
				["groups"] = {
					i(224157),	-- Pet Mirror
				},
			}),
		}),
		n(VENDORS, {
			n(223884, {	--  Bobadormu
				["coord"] = { 62.7, 50.3, TANARIS },
				["g"] = {
					n(ARMOR, bubbleDownFiltered({
						["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
					},FILTERFUNC_itemID,{
						filter(BACK_F, {
							i(225187),	-- Blackmetal Cape
						}),
						filter(CLOTH, {
							i(225182),	-- Aristocratic Cuffs
							i(224858),	-- Coldstone Slippers
							i(224854),	-- Holy Shroud
						}),
						filter(FINGER_F, {
							i(225186),	-- Freezing Band
						}),
						filter(LEATHER, {
							i(224853),	-- Adventurer's Pith Helmet
							i(224857),	-- Feet of the Lynx
							i(225181),	-- Unearthed Bands
						}),
						filter(MAIL, {
							i(224859),	-- Caverndeep Trudgers
							i(224855),	-- Helm of Narv
							i(225183),	-- Slimescale Bracers
						}),
						filter(PLATE, {
							i(224860),	-- Boots of Avoidance
							i(224856),	-- Mugthol's Helm
							i(234862, {	-- Ogre Captains Armor
								["modID"] = 22,
								["cost"] = {{ "c", TIMEWARPED_BADGE, 100 }},
								["timeline"] = { ADDED_11_0_7 },
							}),
							i(225184),	-- Runed Golem Shackles
						}),
					})),
					filter(BATTLE_PETS, {
						i(224410, {	-- Craggles (PET!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 2200}}
						}),
						i(224406, {	-- Misty (PET!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 2200}}
						}),
					}),
					filter(COSMETIC, {
						i(227718, {	-- Bearded Branch of Lore
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}}
						}),
						i(227704, {	-- Claymore of the Knight's Pledge
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}}
						}),
						i(227706, {	-- Doomreaper's Scythe
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}}
						}),
						i(227707, {	-- Doomwail Reaper
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}}
						}),
						i(227712, {	-- Emberswirl Bulwark
							["cost"] = {{"c", TIMEWARPED_BADGE, 2000}}
						}),
						i(227703, {	-- Farstrider's Huntsblade
							["cost"] = {{"c", TIMEWARPED_BADGE, 1500}}
						}),
						i(227714, {	-- Gilded Drakecrest Shield
							["cost"] = {{"c", TIMEWARPED_BADGE, 2000}}
						}),
						i(227709, {	-- Kirin Tor Adept's Stave
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}}
						}),
						i(227705, {	-- Runed-Ice Dirk
							["cost"] = {{"c", TIMEWARPED_BADGE, 1500}}
						}),
						i(227717, {	-- Sermons of the Naaru
							["cost"] = {{"c", TIMEWARPED_BADGE, 1500}}
						}),
						i(227711, {	-- Tusked Branch of War
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}}
						}),
					}),
					filter(MISC, sharedData({
						["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
					}, {
						i(224567),	-- Commendation of the Argent Dawn
						i(224558),	-- Commendation of the Brood of Nozdormu
						i(224561),	-- Commendation of the Hydraxian Waterlords
						i(224571),	-- Commendation of the Thorium Brotherhood
						i(224566),	-- Commendation of the Timbermaw Hold
						i(224565, {	-- Commendation of the Wintersaber Trainers
							["races"] = ALLIANCE_ONLY,
						}),
						i(224570),	-- Commendation of the Zandalar Tribe
					})),
					filter(MISC, {	-- Might be unecessary..
						i(122338, {	-- Ancient Heirloom Armor Casing
							["cost"] = {{ "c", TIMEWARPED_BADGE, 750 }},
							["sym"] = {{ "fill" }},
						}),
						i(122339, {	-- Ancient Heirloom Scabbard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 900 }},
							["sym"] = {{ "fill" }},
						}),
						i(204336, {	-- Awakened Heirloom Armor Casing
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
							["timeline"] = { ADDED_10_0_7 },
							["sym"] = {{ "fill" }},
						}),
						i(204337, {	-- Awakened Heirloom Scabbard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
							["timeline"] = { ADDED_10_0_7 },
							["sym"] = {{ "fill" }},
						}),
						i(167731, {	-- Battle-Hardened Heirloom Armor Casing
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
							["timeline"] = { ADDED_8_1_5 },
							["sym"] = {{ "fill" }},
						}),
						i(167732, {	-- Battle-Hardened Heirloom Scabbard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
							["timeline"] = { ADDED_8_1_5 },
							["sym"] = {{ "fill" }},
						}),
						i(187997, {	-- Eternal Heirloom Armor Casing
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
							["timeline"] = { ADDED_9_1_5 },
							["sym"] = {{ "fill" }},
						}),
						i(187998, {	-- Eternal Heirloom Scabbard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
							["timeline"] = { ADDED_9_1_5 },
							["sym"] = {{ "fill" }},
						}),
						i(122340, {	-- Timeworn Heirloom Armor Casing
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
							["sym"] = {{ "fill" }},
						}),
						i(122341, {	-- Timeworn Heirloom Scabbard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
							["sym"] = {{ "fill" }},
						}),
						i(151614, {	-- Weathered Heirloom Armor Casing
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
							["timeline"] = { ADDED_7_2_5 },
							["sym"] = {{ "fill" }},
						}),
						i(151615, {	-- Weathered Heirloom Scabbard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
							["timeline"] = { ADDED_7_2_5 },
							["sym"] = {{ "fill" }},
						}),
					}),
					filter(MISC, {
						i(224190, {	-- Kreeg's Hardy Draught
							["cost"] = {{"c", TIMEWARPED_BADGE, 25}}
						}),
						i(225378, {	-- Mohawk Grenade
							["cost"] = {{"c", TIMEWARPED_BADGE, 200}}
						}),
					}),
					filter(MOUNTS, {
						i(224398, {	-- Frayfeather Hippogryph (MOUNT!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 5000}}
						}),
						i(205208, {	-- Sandy Shalewing (MOUNT!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 5000}}
						}),
					}),
					filter(TOYS, {
						i(224192, {	-- Practice Ravager (TOY!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 200}}
						}),
					}),
					n(WEAPONS, {
						i(225200, {	-- Alcor's Sunrazor
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}}
						}),
						i(225195, {	-- Axe of the Deep Woods
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}}
						}),
						i(225192, {	-- Bow of Searing Arrows
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}}
						}),
						i(225197, {	-- Crimson Shocker
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}}
						}),
						i(225193, {	-- Elemental Mage Staff
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}}
						}),
						i(225199, {	-- Flurry Axe
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}}
						}),
						i(225196, {	-- Grimlok's Charge
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}}
						}),
						i(225191, {	-- Gut Ripper
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}}
						}),
						i(225188, {	-- Lefty's Brass Knuckle
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}}
						}),
						i(225189, {	-- Lightforged Blade
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}}
						}),
						i(234624, {	-- Longsword of the Knight's Pledge
							["cost"] = {{"c", TIMEWARPED_BADGE, 1500}},
							["timeline"] = { ADDED_11_0_7 },
						}),
						i(225190, {	-- Pendulum of Doom
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}}
						}),
						i(225201, {	-- Precisely Calibrated Rifle
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}}
						}),
						i(225194, {	-- Redbeard Crest
							["cost"] = {{"c", TIMEWARPED_BADGE, 35}}
						}),
						i(225198, {	-- Warden Staff
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}}
						}),
					}),
				},
			}),
			n(158061, {	-- Historian Ma'di
				["coord"] = { 62.6, 50.4, TANARIS },
				["g"] = {
					i(229828, {	-- 20th Anniversary Balloon Chest (TOY!)
						["cost"] = {{"c", BRONZE_TOKEN, 10}}
					}),
					i(208572, {	-- Azure Worldchiller (MOUNT!)
						["cost"] = {{"c", TIMEWARPED_BADGE, 5000}}
					}),
					i(232598, {	-- Bag of Timewarped Badges
						["cost"] = {{"c", BRONZE_TOKEN, 1}},
						["g"] = {
							currency(TIMEWARPED_BADGE),
						},
					}),
					i(235505, {	-- Satchel of Timewarped Badges
						["cost"] = {{"c", BRONZE_TOKEN, 5}},
						["g"] = {
							currency(TIMEWARPED_BADGE),
						},
					}),
					i(235506, {	-- Box of Timewarped Badges
						["cost"] = {{"c", BRONZE_TOKEN, 25}},
						["g"] = {
							currency(TIMEWARPED_BADGE),
						},
					}),
					i(228785, {	-- Coldflame Bulwark
						["cost"] = {{"c", BRONZE_TOKEN, 10}}
					}),
					i(228788, {	-- Coldflame Edged Crest
						["cost"] = {{"c", BRONZE_TOKEN, 15}}
					}),
					i(228789, {	-- Coldflame Ring (TOY!)
						["cost"] = {{"c", BRONZE_TOKEN, 10}}
					}),
					i(228786, {	-- Coldflame Winged Crown
						["cost"] = {{"c", BRONZE_TOKEN, 10}}
					}),
					i(228784, {	-- Coldflame's Edge
						["cost"] = {{"c", BRONZE_TOKEN, 10}}
					}),
					i(228781, {	-- Lil'Doomy (PET!)
						["cost"] = {{"c", BRONZE_TOKEN, 10}}
					}),
				},
			}),
			n(231352, {	-- Notary Grably <Titles of Olde>
				["coord"] = { 63.3, 50.7, TANARIS },
				["g"] = {
					i(230264, {	-- Bronze Celebration Titles: Broken Isles Enthusiast
						["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						["g"] = {
							title(587),	-- Broken Isles Enthusiast <Name> (TITLE!)
						},
					}),
					i(230261, {	-- Bronze Celebration Titles: Cataclysm Enthusiast
						["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						["g"] = {
							title(584),	-- Cataclsym Enthusiast <Name> (TITLE!)
						},
					}),
					i(230258, {	-- Bronze Celebration Titles: Classic Enthusiast
						["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						["g"] = {
							title(581),	-- Classic Enthusiast <Name> (TITLE!)
						},
					}),
					i(230263, {	-- Bronze Celebration Titles: Draenor Enthusiast
						["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						["g"] = {
							title(586),	-- Draenor Enthusias <Name> (TITLE!)
						},
					}),
					i(230268, {	-- Bronze Celebration Titles: Dragon Isles Enthusiast
						["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						["g"] = {
							title(591),	-- Dragon Isles Enthusiast <Name> (TITLE!)
						},
					}),
					i(229826, {	-- Bronze Celebration Titles: Grizzly Hills Hiker
						["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						["g"] = {
							title(577),	-- Grizzly Hills Hiker <Name> (TITLE!)
						},
					}),
					i(231833, {	-- Bronze Celebration Titles: Karazhan Graduate
						["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						["g"] = {
							title(596),	-- Karazhan Graduate <Name> (TITLE!)
						},
					}),
					i(230266, {	-- Bronze Celebration Titles: Kul Tiras Enthusiast
						["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						["g"] = {
							title(589),	-- Kul Tiras Enthusiast <Name> (TITLE!)
						},
					}),
					i(231832, {	-- Bronze Celebration Titles: Molten Core Prospector
						["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						["g"] = {
							title(595),	-- Molten Core Prospector <Name> (TITLE!)
						},
					}),
					i(230260, {	-- Bronze Celebration Titles: Northrend Enthusiast
						["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						["g"] = {
							title(583),	-- Northrend Enthusiast <Name> (TITLE!)
						},
					}),
					i(230259, {	-- Bronze Celebration Titles: Outland Enthusiast
						["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						["g"] = {
							title(582),	-- Outland Enthusiast <Name> (TITLE!)
						},
					}),
					i(230262, {	-- Bronze Celebration Titles: Pandaria Enthusiast
						["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						["g"] = {
							title(585),	-- Pandaria Enthusiast <Name> (TITLE!)
						},
					}),
					i(229827, {	-- Bronze Celebration Titles: Plaguelands Survivor
						["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						["g"] = {
							title(578),	-- Plaguelands Survivor <Name> (TITLE!)
						},
					}),
					i(230267, {	-- Bronze Celebration Titles: Shadowlands Enthusiast
						["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						["g"] = {
							title(590),	-- Shadowlands Enthusiast <Name> (TITLE!)
						},
					}),
					i(230265, {	-- Bronze Celebration Titles: Zuldazar Enthusiast
						["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						["g"] = {
							title(588),	-- Zuldazar Enthusiast <Name> (TITLE!)
						},
					}),
				},
			}),
			n(229707, {	-- Storekeeper Reginald <Out of Time-ly Trinkets>
				["coord"] = { 62.9, 51.1, TANARIS },
				["g"] = sharedData({
					["cost"] = {{"c", BRONZE_TOKEN, 10}},
				}, {
					i(44819),	-- Baby Blizzard Bear (PET!)
					i(115484, {	-- Core Hound Chain (MOUNT!)
						["cost"] = {{"c", BRONZE_TOKEN, 20}},
					}),
					i(118574),	-- Hatespark the Tiny (PET!)
					i(172016),	-- Lil' Nefarian (PET!)
					i(115301),	-- Molten Corgi (PET!)
					i(172012, {	-- Obsidian Worldbreaker (MOUNT!)
						["cost"] = {{"c", BRONZE_TOKEN, 20}},
					}),
					i(49362),	-- Onyxian Whelpling (PET!)
				}),
			}),
			n(223902, {	-- Traeya <Armor Vendor>
				["coord"] = { 63.1, 50.9, TANARIS },
				["g"] = sharedData({
					["cost"] = {{"c", BRONZE_TOKEN, 60}},
				}, {
					iensemble(228205, {	-- Ensemble: Pale Rider's Eternal Armor
						["classes"] = { DEATHKNIGHT },
					}),
					iensemble(228206, {	-- Ensemble: Netherwalker's Eternal Armor
						["classes"] = { DEMONHUNTER },
					}),
					iensemble(228199, {	-- Ensemble: Eternal Stormrage Armor
						["classes"] = { DRUID },
					}),
					iensemble(228207, {	-- Ensemble: Earth-Warder's Eternal Armor
						["classes"] = { EVOKER },
					}),
					iensemble(228200, {	-- Ensemble: Dragonstalker's Eternal Armor
						["classes"] = { HUNTER },
					}),
					iensemble(228201, {	-- Ensemble: Eternal Netherwind Regalia
						["classes"] = { MAGE },
					}),
					iensemble(228208, {	-- Ensemble: Eternal Battlegear of the August Acolyte
						["classes"] = { MONK },
					}),
					iensemble(228198, {	-- Ensemble: Eternal Judgment Armor
						["classes"] = { PALADIN },
					}),
					iensemble(228204, {	-- Ensemble: Eternal Vestments of Transcendence
						["classes"] = { PRIEST },
					}),
					iensemble(228202, {	-- Ensemble: Eternal Bloodfang Armor
						["classes"] = { ROGUE },
					}),
					iensemble(228203, {	-- Ensemble: Eternal Ten Storms
						["classes"] = { SHAMAN },
					}),
					iensemble(228209, {	-- Ensemble: Eternal Nemesis Raiment
						["classes"] = { WARLOCK },
					}),
					iensemble(228197, {	-- Ensemble: Eternal Battlegear of Wrath
						["classes"] = { WARRIOR },
					}),
				}),
			}),
		}),
		n(WORLD_BOSSES, {
			n(226646, {	-- Sha of Anger
				["isRaid"] = true,
				["questID"] = 84282,
				["isDaily"] = true,
				["coord"] = { 33.7, 55.6 , TANARIS },
				["maps"] = {
					74,	--	Caverns of Time Entrance
					CAVERNS_OF_TIME,
				},
				["g"] = {
					filter(MOUNTS, {
						i(87771),	-- Reins of the Heavenly Onyx Cloud Serpent (MOUNT!)
					}),
					filter(CLOAKS, {
						i(227641),	-- Malevolent Gladiator's Cape of Cruelty
						i(227642),	-- Malevolent Gladiator's Cloak of Alacrity
						i(227640),	-- Malevolent Gladiator's Drape of Prowess
					}),
					filter(CLOTH, {
						i(227591),	-- Gloves of the Burning Scroll
						i(227590),	-- Leggings of the Burning Scroll
						i(227586),	-- Guardian Serpent Gloves
						i(227587),	-- Guardian Serpent Leggings
						i(227588),	-- Sha-Skin Gloves
						i(227589),	-- Sha-Skin Leggings
						i(227635),	-- Malevolent Gladiator's Cord of Accuracy
						i(227634),	-- Malevolent Gladiator's Cord of Cruelty
						i(227636),	-- Malevolent Gladiator's Cord of Meditation
						i(227637),	-- Malevolent Gladiator's Cuffs of Accuracy
						i(227639),	-- Malevolent Gladiator's Cuffs of Meditation
						i(227638),	-- Malevolent Gladiator's Cuffs of Prowess
						i(227629),	-- Malevolent Gladiator's Felweave Handguards
						i(227632),	-- Malevolent Gladiator's Felweave Trousers
						i(227630),	-- Malevolent Gladiator's Mooncloth Gloves
						i(227633),	-- Malevolent Gladiator's Mooncloth Leggings
						i(227628),	-- Malevolent Gladiator's Silk Handguards
						i(227631),	-- Malevolent Gladiator's Silk Trousers
						i(227626),	-- Malevolent Gladiator's Treads of Alacrity
						i(227625),	-- Malevolent Gladiator's Treads of Cruelty
						i(227627),	-- Malevolent Gladiator's Treads of Meditation
					}),
					filter(LEATHER, {
						i(227565),	-- Eternal Blossom Grips
						i(227564),	-- Eternal Blossom Legguards
						i(227598),	-- Red Crane Grips
						i(227599),	-- Red Crane Leggings
						i(227561),	-- Gloves of the Thousandfold Blades
						i(227560),	-- Legguards of the Thousandfold Blades
						i(227613),	-- Malevolent Gladiator's Armwraps of Accuracy
						i(227612),	-- Malevolent Gladiator's Armwraps of Alacrity
						i(227611),	-- Malevolent Gladiator's Belt of Cruelty
						i(227614),	-- Malevolent Gladiator's Bindings of Prowess
						i(227601),	-- Malevolent Gladiator's Boots of Alacrity
						i(227600),	-- Malevolent Gladiator's Boots of Cruelty
						i(227602),	-- Malevolent Gladiator's Footguards of Alacrity
						i(227604),	-- Malevolent Gladiator's Ironskin Gloves
						i(227607),	-- Malevolent Gladiator's Ironskin Legguards
						i(227603),	-- Malevolent Gladiator's Leather Gloves
						i(227606),	-- Malevolent Gladiator's Leather Legguards
						i(227609),	-- Malevolent Gladiator's Waistband of Cruelty
						i(227610),	-- Malevolent Gladiator's Waistband of Accuracy
						i(227605),	-- Malevolent Gladiator's Wyrmhide Gloves
						i(227608),	-- Malevolent Gladiator's Wyrmhide Legguards
					}),
					filter(MAIL, {
						i(227556),	-- Firebird's Gloves
						i(227557),	-- Firebird's Kilt
						i(227559),	-- Yaungol Slayer's Gloves
						i(227558),	-- Yaungol Slayer's Legguards
						i(227624),	-- Malevolent Gladiator's Armbands of Prowess
						i(227617),	-- Malevolent Gladiator's Chain Gauntlets
						i(227619),	-- Malevolent Gladiator's Chain Leggings
						i(227616),	-- Malevolent Gladiator's Footguards of Alacrity
						i(227622),	-- Malevolent Gladiator's Links of Cruelty
						i(227618),	-- Malevolent Gladiator's Ringmail Gauntlets
						i(227620),	-- Malevolent Gladiator's Ringmail Leggings
						i(227615),	-- Malevolent Gladiator's Sabatons of Cruelty
						i(227621),	-- Malevolent Gladiator's Waistguard of Meditation
						i(227623),	-- Malevolent Gladiator's Wristguards of Alacrity
					}),
					filter(PLATE, {
						i(227575),	-- Gauntlets of the Lost Catacomb
						i(227574),	-- Greaves of the Lost Catacomb
						i(227573),	-- Gauntlets of Resounding Rings
						i(227572),	-- Legplates of Resounding Rings
						i(227577),	-- White Tiger Gauntlets
						i(227576),	-- White Tiger Legplates
						i(227657),	-- Malevolent Gladiator's Armplates of Alacrity
						i(227656),	-- Malevolent Gladiator's Armplates of Proficiency
						i(227655),	-- Malevolent Gladiator's Bracers of Prowess
						i(227654),	-- Malevolent Gladiator's Clasp of Cruelty
						i(227647),	-- Malevolent Gladiator's Dreadplate Gauntlets
						i(227650),	-- Malevolent Gladiator's Dreadplate Legguards
						i(227652),	-- Malevolent Gladiator's Girdle of Accuracy
						i(227653),	-- Malevolent Gladiator's Girdle of Prowess
						i(227644),	-- Malevolent Gladiator's Greaves of Alacrity
						i(227646),	-- Malevolent Gladiator's Ornamented Gloves
						i(227649),	-- Malevolent Gladiator's Ornamented Legplates
						i(227651),	-- Malevolent Gladiator's Plate Legguards
						i(227648),	-- Malevolent Gladiator's Plate Gauntlets
						i(227645),	-- Malevolent Gladiator's Warboots of Alacrity
						i(227643),	-- Malevolent Gladiator's Warboots of Cruelty
					}),
				},
			}),
			n(227257, {	-- Archavon the Stone Watcher
				["isRaid"] = true,
				["questID"] = 84256,
				["isDaily"] = true,
				["coord"] = { 46.0, 28.9, TANARIS },
				["maps"] = {
					74,	--	Caverns of Time Entrance
					CAVERNS_OF_TIME,
				},
				["g"] = {
					filter(MOUNTS, {
						a(i(43959)),	-- Reins of the Grand Black War Mammoth (A) (MOUNT!)
						h(i(44083)),	-- Reins of the Grand Black War Mammoth (H) (MOUNT!)
					}),
					filter(CLOTH, {
						i(227244),	-- Heroes' Gloves of Faith
						i(227254),	-- Heroes' Leggings of Faith
						i(227264),	-- Heroes' Robe of Faith
						i(227242),	-- Heroes' Frostfire Gloves
						i(227252),	-- Heroes' Frostfire Leggings
						i(227262),	-- Heroes' Frostfire Robe
						i(227243),	-- Heroes' Plagueheart Gloves
						i(227253),	-- Heroes' Plagueheart Leggings
						i(227263),	-- Heroes' Plagueheart Robe
						i(227231),	-- Hateful Gladiator's Felweave Handguards
						i(227221),	-- Hateful Gladiator's Felweave Raiment
						i(227241),	-- Hateful Gladiator's Felweave Trousers
						i(227229),	-- Hateful Gladiator's Mooncloth Gloves
						i(227239),	-- Hateful Gladiator's Mooncloth Leggings
						i(227218),	-- Hateful Gladiator's Mooncloth Robe
						i(227230),	-- Hateful Gladiator's Silk Handguards
						i(227220),	-- Hateful Gladiator's Silk Raiment
						i(227240),	-- Hateful Gladiator's Silk Trousers
					}),
					filter(LEATHER, {
						i(227266),	-- Heroes' Bonescythe Breastplate
						i(227246),	-- Heroes' Bonescythe Gauntlets
						i(227256),	-- Heroes' Bonescythe Legplates
						i(227245),	-- Heroes' Dreamwalker Handgrips
						i(227255),	-- Heroes' Dreamwalker Legguards
						i(227265),	-- Heroes' Dreamwalker Raiments
						i(227227),	-- Hateful Gladiator's Kodohide Gloves
						i(227237),	-- Hateful Gladiator's Kodohide Legguards
						i(227215),	-- Hateful Gladiator's Kodohide Robes
						i(227228),	-- Hateful Gladiator's Leather Gloves
						i(227238),	-- Hateful Gladiator's Leather Legguards
						i(227214),	-- Hateful Gladiator's Leather Tunic
					}),
					filter(MAIL, {
						i(227247),	-- Heroes' Cryptstalker Handguards
						i(227257),	-- Heroes' Cryptstalker Legguards
						i(227267),	-- Heroes' Cryptstalker Tunic
						i(227248),	-- Heroes' Earthshatter Handguards
						i(227258),	-- Heroes' Earthshatter Legguards
						i(227268),	-- Heroes' Earthshatter Tunic
						i(227213),	-- Hateful Gladiator's Chain Armor
						i(227226),	-- Hateful Gladiator's Chain Gauntlets
						i(227236),	-- Hateful Gladiator's Chain Leggings
						i(227212),	-- Hateful Gladiator's Ringmail Armor
						i(227225),	-- Hateful Gladiator's Ringmail Gauntlets
						i(227235),	-- Hateful Gladiator's Ringmail Leggings
					}),
					filter(PLATE, {
						i(227269),	-- Heroes' Dreadnaught Battleplate
						i(227249),	-- Heroes' Dreadnaught Gauntlets
						i(227259),	-- Heroes' Dreadnaught Legplates
						i(227251),	-- Heroes' Redemption Gloves
						i(227261),	-- Heroes' Redemption Greaves
						i(227271),	-- Heroes' Redemption Tunic
						i(227270),	-- Heroes' Scourgeborne Battleplate
						i(227250),	-- Heroes' Scourgeborne Gauntlets
						i(227260),	-- Heroes' Scourgeborne Legplates
						i(227209),	-- Hateful Gladiator's Dreadplate Chestpiece
						i(227223),	-- Hateful Gladiator's Dreadplate Gauntlets
						i(227233),	-- Hateful Gladiator's Dreadplate Legguards
						i(227211),	-- Hateful Gladiator's Ornamented Chestguard
						i(227224),	-- Hateful Gladiator's Ornamented Gloves
						i(227234),	-- Hateful Gladiator's Ornamented Legplates
						i(227210),	-- Hateful Gladiator's Plate Chestpiece
						i(227222),	-- Hateful Gladiator's Plate Gauntlets
						i(227232),	-- Hateful Gladiator's Plate Legguards
					}),
				},
			}),
		}),
	})),
})));
--[[
Quiz Answers:
What was the name of Illidian's jailer? Maiev Shadowsong
Before Cata where could the remains of Mankrik's Wife be found? Barrens
Bloodfeather, Windfury, & Witchwing are all types of which race? Harpy
King Krush, King Mosh, and King Dred are all what type of creature? Devilsaur
In Zandali, the language of the trools, what does "atal'ai" mean? Devoted Ones
Which paladin was not among the five when the Silver Hand was originally created? Alexandros
Which arm and which eye did Zul'jin lose during his captivity oand eventual escape? Right eye, Left Arm
Who was the naga lieutenant of Illidian and once handmaiden of queen Azshara? Vashj
Who was the first pandaren to tame a cloud serpent? Jiang
what is the name of the desert that surrounds the CoT? Tanaris
What pit lord was the ruler of Outland before being imprisoned by Illidian? Magtheridon
What area was reshaped by Goblins to resemble the symbol of the horde? Azshara
Which Alliance city located in Darkshore was destroyed by Deathwing's Return? Auberdine
What was the name of the human that kept Thrall as a slave in Durnholde Keep? Aedelas Blackmoore
What is the name of the mate of Har'koa? Loque'nahak
Which son of an Alliance traitor would one day become a leader of the Syndicate? Aliden
What phrase means "Safe Journey" in Draenei? Dioniss aca
Before succumbing to magical addiction, the Wretched were once members of which race? blood elves
what is the name of the bridge that connects Arathi Highlands and Wetlands? Thandol Span
What was the name of the human who helped Thrall escape Durnholde Keep? Taretha Foxton
Which Orc was responsible for opening numerous portals on Draenor and shattering the Orc homeworld? Ner'zhul
Who became the Lich King after Arthas was defeated? Bolvar Fordragon
Razorman and Bristleback are 2 feuding tribes of which race? Quillboar
Who was the brother of Varok Saurfang and the only Orc to fight in the War of the ancients? Broxigar
Which apothecary cannot be found in shadowfang Keep during the Love is in the air event? Copeland
What Goblin trading company is known for plundering the natural resources of Azeroth? Venture Company
Who became Ragnaros' second Majordomo, protecting the Keep in Firelands? Majordomo Staghelm
This cult was affiliated with the orcish Shadow Council & included members such as Nagaz & Marez Cowl. Argus Wake
What is a Grummle's most prized personal possession? Luckydo
which of the following is not an orc clan? Bloodfang
what are the final words from this Headless Horseman quote: "it is over, your search is done! let fate choose now...." the righteous one!
Which musical trinkets could be used to invoke spontaneous dancing in others against their will? Piccolo of the flaming Fire
Who was Jaina Proudmoore's mentor in the Kirin Tor? Archmage Antonidas
What dragon appears in the human guise of Lord victor Nefarius? Nefarian
which Pandaria creatures are the embodiments of negative emotions? sha
Who was the first to leave pandaria on the back of the sea turtle Shen-zin Su? Liu Lang
What is the name of the red dragon whose skull is on display in t he Hall of Explorers? Tyranastrasz
the Night Elves and the dragonflights stood against the armies of the Qiraji in what war? war of the shifting sands
Where was Dalaran originally located in the Eastern Kingdoms? Hillsbrad Foothills
Which of the following is not a possible result from drinking Noggenfogger? you breathe fire
Cro Threadstrong continually threatened what specific type of vendor in shattrath city? Fruit Vendor
What was the name of the once benevolent spiritual leader in Stormwind that sided with Deathwing? Benedictus
what is the highest rank that can be bestowed on a night elf watcher? Warden
--]]

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
	n(WOW_ANNIVERSARY_TWENTY, {
		q(84309),	-- Bonus chance for Reins of the Heavenly Onyx Cloud Serpent from Sha of Anger on first kill per day
		q(84312),	-- Bonus chance for Grand Black War Mammoth from Doomwalker/Archavon on first kill per day
		q(86398),	-- Bonus chance for Illidary Doomhawk from Doomwalker on first kill per day
		q(85723),	-- first WB kill of day/event or maybe Doomwalker
		q(85168),	-- fourth WB kill of day/event or mayba Kazzak
		q(84878),	-- triggered with turnin of 'Chromie's Codex' [82783] (Bronze Cel Cache lockout?)
		q(84665),	-- triggered with turnin of 'Timely Gate Crashers' [60215] (Bronze Cel Cache lockout?)
		q(86202, name(HEADERS.Item, 233014)),	-- opening first Bronze Celebration Cache of week
		q(84615, name(HEADERS.Spell, 455050)),	-- Blessings of the Bronze Dragonflight, triggered with turnin of 'Celebrate Good Fun' [84616]
		-- Blackrock Depths
		q(86278),	-- High Interrogator Gerstahn (LFR)
		q(86289),	-- High Interrogator Gerstahn (N)
		q(86290),	-- High Interrogator Gerstahn (H)
		q(86279),	-- Houndmaster Grebmar (LFR)
		q(86288),	-- Houndmaster Grebmar (N)
		q(86291),	-- Houndmaster Grebmar (H)
		q(86280),	-- Fineous Darkvire (LFR)
		q(86287),	-- Fineous Darkvire (N)
		q(86292),	-- Fineous Darkvire (H)
		q(86281),	-- Phalanx (LFR)
		q(86286),	-- Phalanx (N)
		q(86293),	-- Phalanx (H)
		q(86282),	-- Pyromancer Loregrain (LFR)
		q(86285),	-- Pyromancer Loregrain (N)
	}),
	-- Warband weekly Bronze Celebration Tokens
	n(WOW_ANNIVERSARY_TWENTY, sharedData(name(HEADERS.Currency, 3100), {
		hqt(84629),	-- 'Meet and Greet' [84254]
		hqt(84630),	-- 'Shopping Spree!' [84489]
		hqt(84604),	-- 'Chromie's Codex' [82783]
		hqt(84606),	-- 'Timely Gate Crashers' [60215]
		hqt(84596),	-- Spreading The Lights
		hqt(84609),	-- Forge the Pact (All Pacts)
		hqt(84610),	-- Theater Troupe
		hqt(86466),	-- Awakening The Machine
		hqt(84599),	-- Sparks of War
		hqt(84614),	-- World Boss (All)
		hqt(84598),	-- Rollin' Down in the Deeps
		hqt(85833),	-- Precussive Archaeology
		hqt(84608),	-- 'An Original Path Through Time' [85947]
	})),
})));
-- #endif
