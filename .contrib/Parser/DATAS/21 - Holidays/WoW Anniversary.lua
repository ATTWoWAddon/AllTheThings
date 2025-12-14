-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
-- #if AFTER 3.0.2
WOW_ANNIVERSARY_ROOT = createHeader({
	readable = "WoW's Anniversary",
	icon = 133783,
	eventID = EVENTS.WOW_ANNIVERSARY,
	eventSchedule = {
		1,	-- Recurring, note that this changes every year.
		11, 16, 10, 0,	-- 11/16 at 10:00 AM
		12, 07, 10, 0	-- 12/07 at 10:00 AM
	},
	text = {
		en = "WoW's Anniversary",
		-- TODO: de = "",
		es = "Aniversario de WoW",
		mx = "Aniversario de WoW",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Годовщина WoW",
		cn = "魔兽世界周年庆",
		tw = "《魔獸世界》週年紀念",
	},
	description = {
		en = "This is a yearly recurring event that occurs between the beginning of November and the end of the year.",
		-- TODO: de = "",
		es = "Es el aniversario de World of Warcraft! Desde el equipo de desarrollo de WoW, te damos las gracias por disfrutar del mundo de Azeroth y más allá junto a nosotros.",
		mx = "¡Es el aniversario de World of Warcraft! Desde el equipo de desarrollo de WoW, te damos las gracias por disfrutar del mundo de Azeroth y más allá junto a nosotros.",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "这是一个每年重现的活动，发生在十一月初到年底之间。",
		tw = "這是一個每年重複的活動，發生在十一月初到年底之間。",
	},
});
GUEST_RELATIONS = createHeader({
	readable = "Guest Relations",
	constant = "GUEST_RELATIONS",
	icon = [[~_.asset("Holiday_SecretsAz")]],
	text = {
		en = "Guest Relations",
		de = "Gästebetreuungen",
		es = "Recepción de invitados”",
		mx = "Atención a invitados",
		fr = "Relations clientèle",
		it = "Relazioni con gli Ospiti",
		pt = "Relacionamento com os Convidados",
		ru = "Работа с посетителями",
		ko = "손님 대응",
		cn = "宾客关系",
		tw = "公關",
	},
});
WOW_ANNIVERSARY_FOUR = createHeader({
	readable = "WoW's 4th Anniversary",
	icon = 133783,
	-- eventID = ,	--
	text = {
		en = WOWAPI_GetAchievementName(2398),
	},
});
WOW_ANNIVERSARY_FIVE = createHeader({
	readable = "WoW's 5th Anniversary",
	icon = 133783,
	-- eventID = ,	--
	text = {
		en = WOWAPI_GetAchievementName(4400),
	},
});
WOW_ANNIVERSARY_SIX = createHeader({
	readable = "WoW's 6th Anniversary",
	icon = 133783,
	-- eventID = ,	--
	text = {
		en = WOWAPI_GetAchievementName(5512),
	},
});
WOW_ANNIVERSARY_SEVEN = createHeader({
	readable = "WoW's 7th Anniversary",
	icon = 133783,
	-- eventID = ,	--
	text = {
		en = WOWAPI_GetAchievementName(5863),
	},
});
WOW_ANNIVERSARY_EIGHT = createHeader({
	readable = "WoW's 8th Anniversary",
	icon = 133783,
	-- eventID = ,	--
	text = {
		en = WOWAPI_GetAchievementName(6131),
	},
});
WOW_ANNIVERSARY_NINE = createHeader({
	readable = "WoW's 9th Anniversary",
	icon = 133783,
	-- eventID = ,	--
	text = {
		en = WOWAPI_GetAchievementName(7853),
	},
});
WOW_ANNIVERSARY_TEN = createHeader({
	readable = "WoW's 10th Anniversary",
	icon = 133783,
	eventID = 514,
	eventSchedule = {
		0,	-- November 21st to January 5th 2015
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
		0,	-- 2015/11/16 to 2015/11/30
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
		0,	-- 2016/11/16 to 2016/11/30
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
		0,	-- November 16, 2017 to November 30, 2017
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
		0,	-- 2018/11/16 to 2018/11/30
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
		0,	-- November 5th, 2019 to January 7th, 2020
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
		0,	-- November 1st, 2020 to November 22nd, 2020
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
		0,	-- 2021/11/15 to 2021/12/06
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
		0,	-- November 6th through November 27th
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
		0,	-- November 16th through December 7th
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
		0,	-- October 22nd through Jan 7th
		2024, 10, 22,	-- 10/22/2024
		2025, 01, 07,	-- 01/07/2025
	},
	text = {
		en = WOWAPI_GetAchievementName(41220),
	},
});
WOW_ANNIVERSARY_TWENTYONE = createHeader({
	readable = "WoW's 21st Anniversary",
	icon = 133783,
	eventID = 1501,
	eventSchedule = {
		0,	-- November 16th through December 7th
		2025, 11, 16,	-- 11/16/2025
		2025, 12, 07,	-- 12/07/2025
	},
	text = {
		en = WOWAPI_GetAchievementName(61406),
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
	[FLAMELASH] = { 226302 },	-- Ambassador Flamelash
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
		-- #IF BEFORE 11.2.5
		-- No vendors anymore, so no costs
		["cost"] = {
			{"i",231510,40},	-- Timewarped Relic Coffer Key [L]
			{"i",232365,40},	-- Timewarped Relic Coffer Key [N]
			{"i",232366,40},	-- Timewarped Relic Coffer Key [H]
		},
		-- #ENDIF
	})
	return item
end

-- Template for Anniversay groups to help separate one-time and recurring content
--[[
	n(WOW_ANNIVERSARY_N, {
		["timeline"] = { ADDED },
		["groups"] = appendAllGroups({},sharedData({
			["timeline"] = { ADDED, REMOVED },
		},{	-- One-Time Content
			ach(ACHID),	-- Nth Anniversary
			n(MAILBOX, {
			}),
		}),
		{	-- Recurring Content
			n(VENDORS, {
			}),
		}),
	}),
]]

root(ROOTS.Holidays, applyevent(EVENTS.WOW_ANNIVERSARY, n(WOW_ANNIVERSARY_ROOT, {
	n(WOW_ANNIVERSARY_FOUR, {
		["timeline"] = {
			-- #if ANYCLASSIC
			CREATED_3_0_3,	-- 4th anniversary will not happen during Classic
			-- #else
			ADDED_3_0_3, REMOVED_3_1_0,
			-- #endif
		},
		["groups"] = {
			ach(2398),	-- 4th Anniversary
			i(44819),	-- Baby Blizzard Bear (PET!)
		},
	}),
	n(WOW_ANNIVERSARY_FIVE, {
		["timeline"] = {
			-- #if ANYCLASSIC
			CREATED_3_2_2,	-- 5th anniversary will not happen during Classic
			-- #else
			ADDED_3_2_2, REMOVED_3_3_2,
			-- #endif
		},
		["groups"] = {
			ach(4400),	-- 5th Anniversary
			i(49362),	-- Onyxian Whelpling (PET!)
		}
	}),
	n(WOW_ANNIVERSARY_SIX, {
		["timeline"] = {
			-- #if ANYCLASSIC
			CREATED_4_0_1,	-- 6th anniversary will not happen during Classic
			-- #else
			ADDED_4_0_1, REMOVED_4_2_2,
			-- #endif
		},
		["groups"] = {
			ach(5512),	-- 6th Anniversary
		},
	}),
	n(WOW_ANNIVERSARY_SEVEN, {
		["timeline"] = {
			-- #if ANYCLASSIC
			CREATED_4_2_2,	-- 7th anniversary will not happen during Classic
			-- #else
			ADDED_4_2_2, REMOVED_4_3_0,
			-- #endif
		},
		["groups"] = {
			ach(5863),	-- 7th Anniversary
			i(71134),	-- Celebration Package
		},
	}),
	n(WOW_ANNIVERSARY_EIGHT, {
		["timeline"] = {
			-- #if ANYCLASSIC
			CREATED_4_3_0,	-- 8th anniversary will not happen during Classic
			-- #else
			ADDED_4_3_0, REMOVED_5_1_0,
			-- #endif
		},
		["groups"] = {
			ach(6131),	-- 8th Anniversary
			i(71134),	-- Celebration Package
		},
	}),
	n(WOW_ANNIVERSARY_NINE, {
		["timeline"] = {
			-- #if ANYCLASSIC
			CREATED_5_1_0,	-- 9th anniversary will not happen during Classic
			-- #else
			ADDED_5_1_0, REMOVED_6_0_2,
			-- #endif
		},
		["groups"] = {
			ach(7853),	-- 9th Anniversary
			n(MAILBOX, {
				i(90918),	-- Celebration Package
			}),
		},
	}),
	n(WOW_ANNIVERSARY_TEN, {
		["timeline"] = {
			-- #if ANYCLASSIC
			CREATED_6_0_2,	-- 10th anniversary will not happen during Classic
			-- #else
			ADDED_6_0_2, REMOVED_6_2_0,
			-- #endif
		},
		["groups"] = {
			ach(8820, {	-- 10th Anniversary
				i(115301),	-- Molten Corgi (PET!)
			}),
			ach(9729, {	-- Victory in Hillsbrad (Alliance)
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					title(280),	-- <Name>, Tarren Mill Terror
				},
			}),
			ach(9566, {	-- Victory in Hillsbrad (Horde)
				["races"] = HORDE_ONLY,
				["groups"] = {
					title(281),	-- <Name>, Southshore Slayer
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
		},
	}),
	n(WOW_ANNIVERSARY_ELEVEN, {
		["timeline"] = {
			-- #if ANYCLASSIC
			CREATED_6_2_0,	-- 11th anniversary will not happen during Classic
			-- #else
			ADDED_6_2_0, REMOVED_6_2_0,
			-- #endif
		},
		["groups"] = {
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
		},
	}),
	n(WOW_ANNIVERSARY_TWELVE, {
		["timeline"] = {
			-- #if ANYCLASSIC
			CREATED_7_0_3,	-- 12th anniversary will not happen during Classic
			-- #else
			ADDED_7_0_3,
			-- #endif
		},
		["groups"] = appendAllGroups({},sharedData({
			["timeline"] = { ADDED_7_0_3, REMOVED_7_2_5 },
		},{	-- One-Time Content
			ach(10741),	-- 12th Anniversary
			n(MAILBOX, {
				i(139284, {	-- Anniversary Gift
					i(139285),	-- Celebration Package
					i(139410),	-- Letter from the Timewalker [Horde]
					i(139409),	-- Letter from the Timewalker [Alliance]
				}),
			}),
		}),
		{	-- Recurring Content
			n(QUESTS, {
				q(43472, {	-- The Historians
					["provider"] = { "i", 139410 },	-- Letter from the Timewalker [Horde]
					["coord"] = { 36.4, 74.4, ORGRIMMAR },
					["timeline"] = {ADDED_7_0_3, REMOVED_7_2_5},
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
				}),
				q(43471, {	-- The Historians
					["provider"] = { "i", 139409 },	-- Letter from the Timewalker [Alliance]
					["coord"] = { 84.6, 25.0, STORMWIND_CITY },
					["timeline"] = {ADDED_7_0_3, REMOVED_7_2_5},
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
				}),
				-- Correct answers is in the bottom
				q(43461, {	-- A Time to Reflect
					["qg"] = 110035,	-- Historian Jupa
					-- #if BEFORE 11.0.5
					["coord"] = { 36.6, 74.6, ORGRIMMAR },
					-- #else
					["coords"] = {
						{ 36.6, 74.6, ORGRIMMAR },
						{ 62.8, 50.2, TANARIS },
					},
					-- #endif
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
				}),
				q(43323, {	-- A Time to Reflect
					["qg"] = 110034,	-- Historian Llore
					-- #if BEFORE 11.0.5
					["coord"] = { 84.6, 25.0, STORMWIND_CITY },
					-- #else
					["coords"] = {
						{ 84.6, 25.0, STORMWIND_CITY },
						{ 62.8, 50.2, TANARIS },
					},
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
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
			}),
		}),
	}),
	n(WOW_ANNIVERSARY_THIRTEEN, {
		["timeline"] = {
			-- #if ANYCLASSIC
			CREATED_7_2_5,	-- 13th anniversary will not happen during Classic
			-- #else
			ADDED_7_2_5
			-- #endif
		},
		["groups"] = appendAllGroups({},sharedData({
			["timeline"] = { ADDED_7_2_5, REMOVED_7_2_5 },
		},{	-- One-Time Content
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
		}),
		{	-- Recurring Content
			n(QUESTS, {
				q(47251, {	-- Interesting Things
					["provider"] = { "i", 147881 },	-- A Slightly More Urgent Letter from the Timewalkers [Horde]
					["coord"] = { 36.4, 74.4, ORGRIMMAR },
					["timeline"] = { ADDED_7_2_5, REMOVED_7_2_5 },
					["races"] = HORDE_ONLY,
				}),
				q(47252, {	-- Interesting Things
					["provider"] = { "i", 147880 },	-- A Slightly More Urgent Letter from the Timewalkers [Alliance]
					["coord"] = { 84.6, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_7_2_5, REMOVED_7_2_5 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(47253, {	-- The Originals [Alliance]
					["qg"] = 110034,	-- Historian Llore
					["coord"] = { 51.5, 38.7, CAVERNS_OF_TIME },
					["timeline"] = { ADDED_7_2_5, REMOVED_11_0_5 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
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
					-- #if BEFORE 11.0.5
					["races"] = HORDE_ONLY,
					["coord"] = { 51.5, 38.7, CAVERNS_OF_TIME },
					-- #else
					["coord"] = { 62.3, 51.8, TANARIS },
					-- #endif
					["isDaily"] = true,
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
		}),
	}),
	n(WOW_ANNIVERSARY_FOURTEEN, {
		["timeline"] = {
			-- #if ANYCLASSIC
			CREATED_8_0_1,	-- 14th anniversary will not happen during Classic
			-- #else
			ADDED_8_0_1,
			-- #endif
		},
		["groups"] = appendAllGroups({},sharedData({
			["timeline"] = { ADDED_8_0_1, REMOVED_8_2_5 },
		},{	-- One-Time Content
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
		}),
		{	-- Recurring Content
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
		}),
	}),
	n(WOW_ANNIVERSARY_FIFTEEN, {
		["timeline"] = {
			-- #if ANYCLASSIC
			CREATED_8_2_5,	-- 15th anniversary will not happen during Classic
			-- #else
			ADDED_8_2_5
			-- #endif
		},
		["groups"] = appendAllGroups({},sharedData({
			["timeline"] = { ADDED_8_2_5, REMOVED_9_0_1 },
		},{	-- One-Time Content
			ach(13917),	-- 15th Anniversary
			n(157113, {	-- Chromie
				-- inst(2235, {	-- doesn't show up in-game
				["maps"] = {
					1553,	-- Caverns of Time (instanced)
					-- BC
					1554,	-- Serpentshrine Cavern
					1555,	-- Tempest Keep
					1556,	-- Battle for Mount Hyjal
					-- WotLK
					1557,	-- Naxxramas
					1563,	-- Trial of the Crusader
					1558,	-- Icecrown Citadel
					-- Cata
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
									-- ach(695),	-- The Battle for Mount Hyjal
									-- Old Token Items
									i(171942),	-- Cowl of Absolution
									i(171941),	-- Cowl of the Tempest
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
									i(171607, {	-- Legplates of Redeemed Blood
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
									i(171563),	-- Fal'inrush, Defender of Quel'Thalas
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
		}),
		{	-- Recurring Content
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
							["coord"] = { 43.6, 17.2, 1537 },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
							["lvl"] = 10,
						}),
						q(57305, {	-- Armor Scraps
							["qg"] = 13257,	-- Murgot Deepforge
							["coord"] = { 43.6, 15.9, 1537 },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
							["lvl"] = 10,
						}),
						q(57309, {	-- Begin the Attack
							["qg"] = 13446,	-- Field Marshal Teravaine
							["coord"] = { 52.3, 44.0, 1537 },
							["races"] = ALLIANCE_ONLY,
							["repeatable"] = true,	-- presumably
							["lvl"] = 10,
						}),
						q(57304, {	-- Capture a Mine (A)
							["qgs"] = {
								12096,	-- Stormpike Quartermaster
								159811,	-- Sergeant Durgen Stormpike
							},
							["coords"] = {
								{ 43.3, 17.0, 1537 },
								{ 43.6, 17.2, 1537 },
							},
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
							["lvl"] = 10,
						}),
						q(57314, {	-- Capture a Mine (H)
							["qgs"] = {
								12097,	-- Frostwolf Quartermaster
								158579,	-- Corporal Teeka Bloodsnarl
							},
							["coords"] = {
								{ 46.8, 83.5, 1537 },
								{ 50.8, 82.3, 1537 },
							},
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
							["lvl"] = 10,
						}),
						q(57311, {	-- Coldtooth Supplies (A)
							["qg"] = 12096,	-- Stormpike Quartermaster
							["coord"] = { 43.3, 17.0, 1537 },
							["races"] = ALLIANCE_ONLY,
							["repeatable"] = true,
							["lvl"] = 10,
						}),
						q(57321, {	-- Coldtooth Supplies (H)
							["qg"] = 12097,	-- Frostwolf Quartermaster
							["coord"] = { 46.8, 83.5, 1537 },
							["races"] = HORDE_ONLY,
							["repeatable"] = true,
							["lvl"] = 10,
						}),
						q(57722, {	-- Empty Stables (A)
							["qg"] = 158863,	-- Stormpike Stable Master
							["coord"] = { 42.6, 16.9, 1537 },
							["races"] = ALLIANCE_ONLY,
							["repeatable"] = true,
							["lvl"] = 10,
						}),
						q(57723, {	-- Empty Stables (H)
							["qg"] = 158864,	-- Frostwolf Stable Master
							["coord"] = { 57.1, 82.5, 1537 },
							["races"] = HORDE_ONLY,
							["repeatable"] = true,
							["lvl"] = 10,
						}),
						q(57317, {	-- Enemy Booty
							["qg"] = 13176,	-- Smith Regzar
							["coord"] = { 49.9, 82.6, 1537 },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
							["lvl"] = 10,
						}),
						q(57310, {	-- Irondeep Supplies (A)
							["qg"] = 12096,	-- Stormpike Quartermaster
							["coord"] = { 43.3, 17.0, 1537 },
							["races"] = ALLIANCE_ONLY,
							["repeatable"] = true,
							["lvl"] = 10,
						}),
						q(57322, {	-- Irondeep Supplies (H)
							["qg"] = 12097,	-- Frostwolf Quartermaster
							["coord"] = { 46.8, 83.5, 1537 },
							["races"] = HORDE_ONLY,
							["repeatable"] = true,
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
							["qg"] = 13449,	-- Warmaster Garrick
							["coord"] = { 45.0, 48.0, 1537 },
							["races"] = HORDE_ONLY,
							["repeatable"] = true,	-- presumably
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
							["repeatable"] = true,	-- presumably
							["lvl"] = 10,
							-- unsure if this has faction requirements or anything along those lines
						}),
						q(57306, {	-- More Armor Scraps
							["qg"] = 13257,	-- Murgot Deepforge
							["coord"] = { 43.6, 15.9, 1537 },
							["races"] = ALLIANCE_ONLY,
							["repeatable"] = true,
							["lvl"] = 10,
						}),
						q(57318, {	-- More Booty!
							["qg"] = 13176,	-- Smith Regzar
							["coord"] = { 49.9, 82.6, 1537 },
							["races"] = HORDE_ONLY,
							["repeatable"] = true,
							["lvl"] = 10,
						}),
						q(57313, {	-- Speak with our Quartermaster
							["qg"] = 13798,	-- Jotek
							["coord"] = { 50.6, 82.0, 1537 },
							["races"] = HORDE_ONLY,
							["isWeekly"] = true,
							["lvl"] = 10,
						}),
						q(56256, {	-- The Battle for Alterac (A)
							["qg"] = 154478,	-- Prospector Stonehewer
							-- ["coord"] = { , ALTERAC_VALLEY },
							["races"] = ALLIANCE_ONLY,
							["isWeekly"] = true,
						}),
						q(56257, {	-- The Battle for Alterac (H)
							["qg"] = 154473,	-- Voggah Deathgrip
							["coord"] = { 55.0, 87.2, ALTERAC_VALLEY },
							["races"] = HORDE_ONLY,
							["isWeekly"] = true,
						}),
						q(57312, {	-- The Graveyards of Alterac
							["qg"] = 158579,	-- Corporal Teeka Bloodsnarl
							["coord"] = { 50.8, 82.3, 1537 },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
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
							["races"] = ALLIANCE_ONLY,
							["isWeekly"] = true,
							["lvl"] = 10,
						}),
						q(57307, {	-- Towers and Bunkers (A)
							["qg"] = 159811,	-- Sergeant Durgen Stormpike
							["coord"] = { 43.6, 17.2, 1537 },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
							["lvl"] = 10,
						}),
						q(57315, {	-- Towers and Bunkers (H)
							["qg"] = 158579,	-- Corporal Teeka Bloodsnarl
							["coord"] = { 50.8, 82.3, 1537 },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
							["lvl"] = 10,
						}),
						q(57730, {	-- Zinfizzlex's Portable Shredder Unit (A)
							["description"] = "Questgiver is west of Korrak (over the bridge) and you have to escort him to your base. After bringing him to safety he offers the quest.",
							["qg"] = 13377,	-- Master Engineer Zinfizzlex
							["races"] = ALLIANCE_ONLY,
							["repeatable"] = true,
							["lvl"] = 10,
							["groups"] = { i(17410) },	-- Zinfizzlex's Portable Shredder Unit
						}),
						q(57731, {	-- Zinfizzlex's Portable Shredder Unit (H)
							["description"] = "Questgiver is west of Korrak (over the bridge) and you have to escort him to your base. After bringing him to safety he offers the quest.",
							["qg"] = 13377,	-- Master Engineer Zinfizzlex
							["races"] = HORDE_ONLY,
							["repeatable"] = true,
							["lvl"] = 10,
							["groups"] = { i(17384) },	-- Zinfizzlex's Portable Shredder Unit
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
					["timeline"] = { ADDED_8_2_5, REMOVED_11_0_5 },
					["isYearly"] = true,
				}),
				q(57298, {	-- How Things "Really" Happened...
					["sourceQuest"] = 57249,	-- A Timely Invitation
					["qg"] = 157113,	-- Chromie
					["coord"] = { 53.5, 54.7, CAVERNS_OF_TIME },
					["timeline"] = { ADDED_8_2_5, REMOVED_9_0_1 },
					["lvl"] = 60,
				}),
				q(57300, {	-- Soldier of Time
					-- #if BEFORE 11.0.5
					["qg"] = 157113,	-- Chromie
					["coord"] = { 53.5, 54.7, CAVERNS_OF_TIME },
					-- #else
					["qg"] = 223882,	-- Izaik Kadarov
					["coord"] = { 62.3, 51.8, TANARIS },
					-- #endif
					["timeline"] = { ADDED_8_2_5, REMOVED_8_2_5, ADDED_11_0_2 },
					["isWeekly"] = true,
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
				n(158192, {	-- Leeroy Jenkins
					i(232378),	-- Jenkins' No Nonsense Fried Chicken
					i(172091),	-- Leeroy's Spicy Fried Chicken
				}),
				n(158067, {	-- Persnip Goodup <Balloon Vendor>
					["coord"] = { 53.2, 55.6, CAVERNS_OF_TIME },
					["groups"] = {
						i(172019),	-- Blue Anniversary Balloons
						i(172018),	-- Red Anniversary Balloons
						i(172017),	-- Sharpened Pin
					},
				}),
				n(157756, {	-- Waiter <Food & Drink>
					["coord"] = { 53.8, 39.0, CAVERNS_OF_TIME },
					["groups"] = {
						i(171199),	-- Ookerdooker Elixir
						i(171196),	-- Spellstone Delight
						i(171195),	-- Sugary Soul Shard
					},
				}),
			}),
		}),
	}),
	n(WOW_ANNIVERSARY_SIXTEEN, {
		["timeline"] = { ADDED_9_0_1 },
		["groups"] = appendAllGroups({},sharedData({
			["timeline"] = { ADDED_9_0_1, REMOVED_9_0_1 },
		},{	-- One-Time Content
			ach(14271),	-- 16th Anniversary
			n(MAILBOX, {
				i(178513, {	-- Anniversary Gift
					i(172013),	-- Celebration Firework
					i(178512),	-- Celebration Package
					i(171177),	-- Invitation from the Timewalkers
				}),
			}),
		}),
		{	-- Recurring Content
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
		}),
	}),
	n(WOW_ANNIVERSARY_SEVENTEEN, {
		["timeline"] = { ADDED_9_1_5 },
		["groups"] = appendAllGroups({},sharedData({
			["timeline"] = { ADDED_9_1_5, REMOVED_9_1_5 },
		},{	-- One-Time Content
			ach(14942),	-- WoW's 17th Anniversary
			n(MAILBOX, {
				i(185906, {	-- Anniversary Gift
					i(185907),	-- Celebration Package
					i(172013),	-- Celebration Firework
					i(171177),	-- Invitation from the Timewalkers
				}),
			}),
		}),
		{	-- Recurring Content
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
						74,	-- Caverns of Time Entrance
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
		}),
	}),
	n(WOW_ANNIVERSARY_EIGHTEEN, {
		["timeline"] = { ADDED_10_0_0 },
		["groups"] = appendAllGroups({},sharedData({
			["timeline"] = { ADDED_10_0_0, REMOVED_10_0_2_LAUNCH },
		},{	-- One-Time Content
			ach(15218),	-- WoW's 18th Anniversary
			n(MAILBOX, {
				i(187710, {	-- Anniversary Gift
					i(187709),	-- Celebration Package
					i(172013),	-- Celebration Firework
					i(171177),	-- Invitation from the Timewalkers
				}),
			}),
		}),
		{	-- Recurring Content
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
		}),
	}),
	n(WOW_ANNIVERSARY_NINETEEN, {
		["timeline"] = { ADDED_10_2_0 },
		["groups"] = appendAllGroups({},sharedData({
			["timeline"] = { ADDED_10_2_0, REMOVED_10_2_0 },
		},{	-- One-Time Content
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
		}),
		{	-- Recurring Content
			-- empty
		}),
	}),
	n(WOW_ANNIVERSARY_TWENTY, {
		["timeline"] = { ADDED_11_0_5 },
		["groups"] = appendAllGroups({},sharedData({
			["timeline"] = { ADDED_11_0_5, REMOVED_11_0_7 },
		},{	-- One-Time Content
			ach(41220),	-- WoW's 20th Anniversary
			n(FACTIONS, {
				faction(FACTION_ZANDALAR_TRIBE, {	-- Zandalar Tribe
					["icon"] = 135727,
				}),
			}),
			n(REWARDS, {
				currency(BRONZE_TOKEN),
			}),
		}),
		{	-- Recurring Content
			n(ACHIEVEMENTS, {
				ach(40976, {	-- A Cool Twenty Years
					["maps"] = {TANARIS},
					["groups"] = {
						i(228760),	-- Coldflame Tempest (MOUNT!)
					},
				}),
				ach(41015, {	-- A Dark Iron Past
					["maps"] = {
						2362,	-- Shadowforge City
						2363,	-- Detention Block
					},
				}),
				achpart(40996, 40997),	-- A Gatecrasher (automated) / The Gatecrashers (full)
				ach(40998),	-- A Timewalking Step Back to a Classic Dungeon Time (automated)
				ach(41000),	-- A Timewalking Journey Back to a Classic Dungeon Time (automated)
				achpart(40994, 40995),	-- An Original (automated) / The Originals (full)
				ach(40993, {	-- Avid Listener
					["maps"] = {TANARIS},
					["groups"] = {
						crit(70553),	-- Listen to 'The Heroes of the Scarab Wall' story
						crit(70555),	-- Listen to 'The Mercy of Baine Bloodhoof' story
						crit(70554),	-- Listen to 'The Tragedy of Thassarian' story
					},
				}),
				achpart(40990, 40991, {["maps"] = {TANARIS}}),	-- Balloonist / Frequent Flyer (full)
				ach(40984, {["maps"] = {TANARIS}}),	-- Big Fan
				ach(41033, {["timeline"] = {ADDED_11_0_5, REMOVED_11_0_7}}),	-- Classy Dresser
				ach(40987, {["maps"] = {TANARIS}}),	-- Fashion Critic
				ach(40991, {	-- Frequent Flyer
					["maps"] = {TANARIS},
					["groups"] = {
						crit(70549, {["crs"]={225017}}),	-- Bronze Balloon
						crit(70550, {["crs"]={228529}}),	-- Dark Blue Balloon
						crit(70548, {["crs"]={225252}}),	-- Gold Balloon
						crit(70551, {["crs"]={228530}}),	-- Light Blue Balloon
					},
				}),
				ach(40985, {["maps"] = {TANARIS}}),	-- I Have That One!
				ach(40986, {["maps"] = {TANARIS}}),	-- Mount Master
				ach(40992, {["maps"] = {TANARIS}}),	-- Peanut Gallery
				ach(40989, {	-- Pet Mischief
					["provider"] = { "i", 224157 },	-- Pet Mirror
					["maps"] = {TANARIS},
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
					["maps"] = {TANARIS},
				}),
				ach(40997),	-- The Gatecrashers (automated)
				ach(40995),	-- The Originals (automated)
				ach(41038, {["timeline"] = {ADDED_11_0_5, REMOVED_11_0_7}}),	-- Token Collector
				ach(41013, {["timeline"] = {ADDED_11_0_5, REMOVED_11_0_7}}),	-- Upgraded Apparel
				ach(40661, {	-- Zoomies!
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
			inst(1301, {	-- Blackrock Depths
				["maps"] = {
					2362,	-- Shadowforge City
					2363,	-- Detention Block
				},
				["isRaid"] = true,
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(40999, {	-- You're in Your Blackrock Depths
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
							["timeline"] = {ADDED_11_0_5, REMOVED_11_0_7},
							["isWeekly"] = true,
							["groups"] = {
								i(232471, {	-- Cache of Dark Iron Treasures
									["sym"] = SYM_ALL_BRD_DROPS,
								}),
							},
						}),
						q(84735, {	-- Truth of the Dark Irons
							["provider"] = { "n", 229494 },	-- Moira Thaurissan <Queen of the Dark Iron>
							["coord"] = { 63.0, 49.7, TANARIS },
							["timeline"] = {ADDED_11_0_5, REMOVED_11_0_7},
						}),
						------ Stay awhile and listen ------
						hqt(84743, {	-- Stay awhile and listen: Moira Thaurissan <Queen of the Dark Iron>
							["name"] = "Stay awhile and listen: Moira Thaurissan",
							-- #IF BEFORE 11.2.5
							["description"] = "Dialogue becomes available after completing 'Disturbance Detected: Blackrock Depths' (82817).",
							["sourceQuests"] = { 82817 },	-- Disturbance Detected: Blackrock Depths (Completed)
							-- #ENDIF
							["provider"] = { "n", 229494 },	-- Moira Thaurissan <Queen of the Dark Iron>
							["coord"] = { 63.0, 49.7, TANARIS },
						}),
					}),
					n(VENDORS, {
						["timeline"] = {ADDED_11_0_5, REMOVED_11_0_7},
						["groups"] = {
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
						},
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
					Difficulty(DIFFICULTY.RAID.NORMAL, {["timeline"] = {ADDED_11_0_5, REMOVED_11_0_7}}).AddGroups({
						CommonBossDrops({
							i(232365, {	-- Timewarped Relic Coffer Key
								["description"] = "You can only loot 120 keys per difficulty per character for the entire event.",
							}),
						}),
					}),
					Difficulty(DIFFICULTY.RAID.HEROIC, {["timeline"] = {ADDED_11_0_5, REMOVED_11_0_7}}).AddGroups({
						CommonBossDrops({
							i(232366, {	-- Timewarped Relic Coffer Key
								["description"] = "You can only loot 120 keys per difficulty per character for the entire event.",
							}),
						}),
					}),
				},
			}),
			n(GROUP_FINDER, sharedData({
				["maps"] = { 2354 },	-- Silithus
			},{
				-- when these bags are 'filled' with their content, fillAdjust '1' will remove the TW event flags from their
				-- Sourced contents in the TW rewards
				i(229355, {fillAdjust=1}),	-- Chromie's Premium Goodie Bag
				i(226102, {fillAdjust=1}),	-- Chromie's Tour Goodie Bag
				i(229359, {fillAdjust=1}),	-- Chromie's Goodie Bag
				i(232877,{fillAdjust=1,["modID"]=22}),	-- Timely Goodie Bag (force same modID as TW version so it doesn't appear removed)
				-- Satchel when under level 80 for Celebration Raid Finder (possibly codex?)
				i(234413, {	-- Satchel of Exotic Mysteries
					i(224572),	-- Crystallized Augment Rune
				}),
			})),
			n(GUEST_RELATIONS, {
				["description"] = "***Using Debug Mode is recommended.***\n",
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(40870, {	-- Azeroth's Greatest Detective
							-- Meta Achievement
							["sym"] = {{"meta_achievement",
								40871,	-- Assistant to the Assistant Guest Relations Manager
								40873,	-- Crate Insurance Agent
								40872,	-- I Saved the Party and All I Got Was This Lousy Hat
								40979,	-- No Crate Left Behind
							}},
							["groups"] = {
								title(571),	-- Detective <Name>
							},
						}),
					}),
					n(QUESTS, {
						-- Tutorial Questline
						q(84143, {	-- Lost and Busy
							["provider"] = { "n", 226683 },	-- Alyx <Volunteer Assistant Guest Relations Manager>
							["coord"] = { 63.0, 50.2, TANARIS },
						}),
						q(84144, {	-- Tat Big Meanie
							["sourceQuest"] = 84143,	-- Lost and Busy
							["provider"] = { "n", 226684 },	-- Maru <Junior Secret Sleuf>
							["coord"] = { 63.2, 52.4, TANARIS },
							["groups"] = {
								o(456767, {	-- Red Hair
									["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
									["coord"] = { 62.1, 51.7, TANARIS },
									["groups"] = { i(227364) },	-- Red Hair (QI!)
								}),
								o(455310, {	-- Hear Historic Tales at the Storyteller Stage!
									["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
									["coord"] = { 62.0, 51.5, TANARIS },
									["groups"] = { i(227363) },	-- Hear Historic Tales at the Storyteller Stage! (QI!)
								}),
								n(226775, {	-- Ratts <Former Event Coordinator>
									["coord"] = { 64.0, 51.7, TANARIS },
								}),
								o(456820, {	-- Strange Torch
									["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
									["coord"] = { 63.7, 47.8, TANARIS },
									["groups"] = { i(227443) },	-- Strange Torch (QI!)
								}),
								i(207730),	-- Idol of Ohn'ahra
							},
						}),
						q(84419, {	-- To da Ruins!
							["sourceQuest"] = 84144,	-- Tat Big Meanie
							["provider"] = { "n", 226684 },	-- Maru <Junior Secret Sleuf>
							["coord"] = { 63.2, 52.4, TANARIS },
						}),
						q(84393, {	-- Da Stick of Revealing
							["sourceQuest"] = 84419,	-- To da Ruins!
							["provider"] = { "n", 229062 },	-- Maru <Junior Secret Sleuf>
							["coord"] = { 35.1, 78.2, TANARIS },
							["groups"] = { i(208092) },	-- Torch of Pyrreth
						}),
						q(84363, {	-- Tweasure Hunt
							["description"] = "Activate Torch of Pyrreth at each of the Dig Sites.",
							["sourceQuest"] = 84393,	-- Da Stick of Revealing
							["provider"] = { "n", 229062 },	-- Maru <Junior Secret Sleuf>
							["coord"] = { 37.2, 78.9, TANARIS },
							["groups"] = {
								o(459333, {	-- Jeweled Eye
									["provider"] = { "i", 208092 },	-- Torch of Pyrreth
									["coord"] = { 40.8, 70.5, TANARIS },
									["groups"] = { i(227785) },	-- Jeweled Eye (QI!)
								}),
								n(228810, {	-- Tanaris Sandworm
									["provider"] = { "i", 208092 },	-- Torch of Pyrreth
									["coord"] = { 42.2, 72.0, TANARIS },
									["groups"] = { i(227790) },	-- Cool Guts (QI!)
								}),
								o(459368, {	-- Half-Burried Chest
									["provider"] = { "i", 208092 },	-- Torch of Pyrreth
									["coord"] = { 45.0, 64.6, TANARIS },
									["groups"] = { i(227775) },	-- Golden Chalice (QI!)
								}),
								n(228791, {	-- Ancient Statue
									["provider"] = { "i", 208092 },	-- Torch of Pyrreth
									["coord"] = { 52.3, 45.3, TANARIS },
									["groups"] = { i(227777) },	-- Fragment of an Ancient Statue (QI!)
								}),
							},
						}),
						q(84521, {	-- Thoughtful Pursuits
							["sourceQuest"] = 84363,	-- Tweasure Hunt
							["provider"] = { "n", 226766 },	-- Benatauk <Unco Benny>
							["coord"] = { 63.3, 52.4, TANARIS },
							["groups"] = {
								i(228617),	-- Benatauk's Clue Book (QI!)
								i(228618, {	-- Benatauk's Crystal Ocular Lenses (QI!)
									["coord"] = { 64.2, 50.0, TANARIS },
									["description"] = "Go to Isaandrae <Skyway Balloonist>. Maru will find and give you [Benatauk's Crystal Ocular Lenses].",
								}),
								i(228619, {	-- Benatauk's Thought Calculating Apparatus (QI!)
									["coord"] = { 63.6, 48.5, TANARIS },
									["description"] = "Go behind the Fashion Show platform. Maru will find and give you [Benatauk's Thought Calculating Apparatus].",
								}),
								i(228620, {	-- Benatauk's Downy Helmet Liner (QI!)
									["coord"] = { 61.4, 49.9, TANARIS },
									["description"] = "Go near Taivan. Maru will find and give you [Benatauk's Downy Helmet Liner].",
								}),
								i(206696),	-- Tricked-Out Thinking Cap
							},
						}),
						q(84868, {	-- A Whiff of Help
							["sourceQuest"] = 84521,	-- Thoughtful Pursuits
							["provider"] = { "n", 226766 },	-- Benatauk <Unco Benny>
							["coord"] = { 63.3, 52.4, TANARIS },
							["groups"] = {
								hqt(83831, {	-- Triggered on turn in of (84868) A Whiff of Help. Unlocks secret quests accountwide.
									["name"] = "Complete the Guest Relations tutorial quest chain."
								}),
							},
						}),
					}),
					n(VENDORS, {
						-- TODO: Review if these vendors are available outside anniversary
						n(226766, {	-- Benatauk <Unco Benny>
							["description"] = "You need to get up to the quest 'A Whiff of Help' in the chain and accept it in order to buy the items.",
							["sourceQuest"] = 84868,	-- A Whiff of Help (Quest Accepted)
							["coord"] = { 63.3, 52.4, TANARIS },
							["timeline"] = { "removed 11.0.7.58238" },
							["groups"] = {
								i(229351),	-- Spiritual Incense
								i(229375),	-- Neural Enlarger
							},
						}),
						n(230310, {	-- Pointless Treasure Salesman
							["description"] = "Inside the Booty Bay goblin statue behind chests in the back.",
							["coord"] = { 33.6, 63.5, THE_CAPE_OF_STRANGLETHORN },
							["groups"] = {
								i(228996, {	-- Relic of Crystal Connections
									["cost"] = {
										{ "i", 228995, 1 },	-- Golden Muffin
										{ "i", 228967, 9 },	-- Piece of Hate
									},
								}),
							},
						}),
						n(91079, {	-- Vashti the Wandering Merchant <General Goods>
							["description"] = "Can be found pathing up and down the road between Felblaze Ingress and The Ruined Sanctum in Azsuna, Broken Isles.",
							["coords"] = {
								-- North stop
								{ 66.0, 22.2, AZSUNA },
								-- Middle
								{ 65.2, 36.4, AZSUNA },
								-- South stop
								{ 65.8, 48.2, AZSUNA },
							},
							["groups"] = {
								i(228986, {	-- Aesthetician's Coupon Book
									["cost"] = 5000000,	-- 500g
								}),
								i(228990),	-- Bottle of Steam
								i(229413, {	-- "Dogg-Saron" Costume
									["cost"] = 250000000,	-- 25,000g
								}),
								i(228989, {	-- Exotic Critter Taming License
									["cost"] = 5000000,	-- 500g
								}),
								i(228767, {	-- Sandy Celebration Crate (QS!)
									["provider"] = { "i", 228768 },	-- Water-Resistant Receipt
									["cost"] = 5000000,	-- 500g
								}),
								i(228987, {	-- Scroll of Fel Binding
									["cost"] = 5000000,	-- 500g
								}),
								i(228991, {	-- Stone of Prophecy
									["cost"] = 50000000,	-- 5,000g
								}),
							},
						}),
					}),
					header(HEADERS.Achievement, 40872, {	-- I Saved the Party and All I Got Was This Lousy Hat
						ach(40872, {	-- I Saved the Party and All I Got Was This Lousy Hat (automated)
							i(234448),	-- Bright Ideas Thinking Cap
							i(231906),	-- High-Alert Thinking Cap
						}),
						-- Chapter 1
						q(84236, {	-- The Great Detective
							["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
							["provider"] = { "n", 226683 },	-- Alyx <Volunteer Assistant Guest Relations Manager>
							["coord"] = { 63.0, 50.2, TANARIS },
						}),
						q(84237, {	-- The "Great" Detective
							["description"] = "1. Talk to the members of Team Solid in following order until the quest shows 48% progress.\n- Ellanoir\n- Duryllin\n- Juddson Rakes\n- Ellanoir\n2. Use your Torch of Pyrreth at Wavestrider Beach to reveal Herrkrop's body.\n3. Talk to all nearby NPCs.\n4. Talk to Athelton Jones to complete the quest requirements.",
							["sourceQuest"] = 84236,	-- The Great Detective
							["provider"] = { "n", 226796 },	-- Athektin Jones
							["coord"] = { 63.9, 51.7, TANARIS },
							["groups"] = {
								n(226805, {	-- Ellanoir
									["coord"] = { 63.8, 51.0, TANARIS },
								}),
								n(226804, {	-- Duryllin
									["coord"] = { 63.8, 51.1, TANARIS },
								}),
								n(226803, {	-- Juddson Rakes
									["coord"] = { 63.8, 51.1, TANARIS },
								}),
								n(226810, {	-- Herrkrop
									["provider"] = { "i", 208092 },	-- Torch of Pyrreth
									["coord"] = { 66.2, 40.6, TANARIS },
								}),
								n(226812, {	-- Scrapes
									["coord"] = { 66.2, 40.7, TANARIS },
								}),
								n(228477, {	-- Nat Pagle
									["coord"] = { 66.2, 40.7, TANARIS },
								}),
								n(226814, {	-- Julia Henning
									["coord"] = { 65.7, 41.3, TANARIS },
								}),
								n(226796, {	-- Athelton Jones
									["coord"] = { 66.3, 40.6, TANARIS },
								}),
							},
						}),
						q(84278, {	-- Tracking Quest
							["description"] = "Use the Goblin Transport at 68.0, 40.8 to travel to Borean Tundra, then find Rexxar.",
							["sourceQuest"] = 84237,	-- The 'Great' Detective
							["qgs"] = {
								226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
								232406,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
							},
							["coord"] = { 63.0, 50.2, TANARIS },
							["groups"] = {
								i(227551),	-- Note from Rexxar (QI!)
								o(457025, {	-- Pre-Calibrated Goblin Transport Vessel
									["coord"] = { 68.0, 40.8, TANARIS },
								}),
								n(226952, {	-- Rexxar
									["coord"] = { 77.3, 46.2, BOREAN_TUNDRA },
								}),
							},
						}),
						q(84296, {	-- The Trail's Gone Cold
							["description"] = "1. Locate 3 diary pages around the marked shed and then go to Sholazar Basin.\n2. Interact with the Mounted Spyglass atop the Glimmering Pillar and then head to Icecrown.\n3. Summon Rexxar with your Spirit's Whistle and tell him about a shapeshifter.",
							["sourceQuest"] = 84278,	-- Tracking Quest
							["provider"] = { "n", 226952 },	-- Rexxar
							["coord"] = { 77.3, 46.2, BOREAN_TUNDRA },
							["crs"] = { 228550 },	-- Rexxar
							["groups"] = {
								i(227664),	-- Spirit's Whistle (QI!)
								o(457156, {	-- Torn Note
									["coord"] = { 85.9, 34.0, BOREAN_TUNDRA },
									["groups"] = { i(227665) },	-- Torn Diary, Page 4 (QI!)
								}),
								o(457161, {	-- Torn Note
									["description"] = "Use Torch of Pyrreth to reveal the page.",
									["provider"] = { "i", 208092 },	-- Torch of Pyrreth
									["coord"] = { 85.9, 33.9, BOREAN_TUNDRA },
									["groups"] = { i(227672) },	-- Torn Diary, Page 7 (QI!)
								}),
								o(457160, {	-- Torn Note
									["coord"] = { 88.1, 34.6, BOREAN_TUNDRA },
									["groups"] = { i(227671) },	-- Torn Diary, Page 6 (QI!)
								}),
								o(457197, {	-- Mounted Spyglass
									["coord"] = { 49.7, 36.0, SHOLAZAR_BASIN },
								}),
								n(228634, {	-- Scrapes
									["coord"] = { 16.0, 58.8, ICECROWN },
								}),
							},
						}),
						q(84334, {	-- Warn the Detective
							["sourceQuest"] = 84296,	-- The Trail's Gone Cold
							["qgs"] = {
								226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
								232404,	-- Alyx <Volunteer Assistant Guest Relations Manager and Associate Event Coordinator>
							},
							["coord"] = { 63.0, 50.2, TANARIS },
						}),
						q(84336, {	-- Spot The Difference
							["description"] = "Speak to Hemet, Leeroy, and Addie to suss out the detectives' stories, then accuse one. Chase the intruder east of Bootlegger Outpost and kill him.",
							["sourceQuest"] = 84334,	-- Warn the Detective
							["qgs"] = {
								226796,	-- Athelton Jones
								228661,	-- Athelton Jones (!)
							},
							["coord"] = { 61.0, 50.6, TANARIS },
							["groups"] = {
								n(227731, {	-- Addie Fizzlebog
									["coord"] = { 63.5, 51.7, TANARIS },
								}),
								n(228250, {	-- Hemet Nesingwary Sr.
									["coord"] = { 62.5, 51.9, TANARIS },
								}),
								n(158192, {	-- Leeroy Jenkins
									["coord"] = { 63.3, 52.3, TANARIS },
								}),
								n(228661, {	-- Athelton Jones (!)
									["coord"] = { 63.3, 52.3, TANARIS },
								}),
								n(228663, {	-- Y'illiya Xennin
									["coord"] = { 60.0, 62.5, TANARIS },
								}),
							},
						}),
						-- Chapter 2
						-- Quests in this chapter are faction locked, but both cross complete.
						{	-- Toy Trouble
								["allianceQuestData"] = q(84563, {	-- Toy Trouble [A]
							}),
								["hordeQuestData"] = q(85024, {	-- Toy Trouble [H]
							}),
							["provider"] = { "n", 232404 },	-- Alyx <Volunteer Assistant Guest Relations Manager and Associate Event Coordinator>
							["sourceQuest"] = 84336,	-- Spot The Difference
							["coord"] = { 63.0, 50.2, TANARIS },
						},
						{	-- Operation Toy Rescue
								["allianceQuestData"] = q(84588, {	-- Operation Toy Rescue [A]
								["description"] = "Talk to Yennu in Iskaara, find a note in Dragonscale Basecamp, and find their ball near Maruukai then return. Pet Kenshi in Boralus, find the Ball of Yarn in the park, and talk to Kenshi again.",
								["sourceQuest"] = 84563,	-- Toy Trouble [A]
								["groups"] = {
									i(229990),	-- My Journal: Operation Toy Rescue (QI!)
									n(142044, {	-- Kenshi
										["coord"] = { 54.0, 72.8, BORALUS },
										["groups"] = {
											i(232363, {	-- Half-Eaten Mouse
												["cost"] = {{ "i", 232362, 1 }},	-- Deluxe Tuna
											}),
										},
									}),
									o(467060, {	-- Ball of Yarn
										["description"] = "Near a fence and tree in Boralus Park.",
										["coord"] = { 42.1, 75.1, BORALUS },
										["groups"] = { i(229164)	},	-- Ball of Yarn (QI!)
									}),
								},
							}),
								["hordeQuestData"] = q(85025, {	-- Operation Toy Rescue [H]
								["description"] = "Talk to Yennu in Iskaara, find a note in Dragonscale Basecamp, and find their ball near Maruukai then return. Pet Nuts in Dazar'Alor, follow the fur sheddings to a Plush Toy, and give it to him.",
								["sourceQuest"] = 85024,	-- Toy Trouble [H]
								["groups"] = {
									i(229991),	-- My Journal: Operation Toy Rescue (QI!)
									n(54227, {	-- Nuts
										["coord"] = { 56.3, 31.7, DAZARALOR },
									}),
									o(470229, {	-- Plush Toy
										["coord"] = { 56.4, 21.3, DAZARALOR },
										["groups"] = { i(229908) },	-- Plush Toy (QI!)
									}),
								},
							}),
							["provider"] = { "n", 226684 },	-- Maru <Junior Secret Sleuf>
							["coord"] = { 63.2, 52.4, TANARIS },
							["groups"] = {
								n(229847, {	-- Yennu
									["coord"] = { 13.4, 48.9, THE_AZURE_SPAN },
								}),
								o(465234, {	-- Missing Page from Yennu's Snackbook
									["description"] = "Inside a cart in Dragonscale Basecamp.",
									["coord"] = { 47.0, 83.5, THE_WAKING_SHORES },
									["groups"] = { i(228791) },	-- Missing Page from Yennu's Snackbook (QI!)
								}),
								o(465277, {	-- Mound of Dirt
									["description"] = "By a river by the eastern side of Maruukai.",
									["coord"] = { 62.0, 37.5, OHNAHRAN_PLAINS },
									["groups"] = { i(228795) },	-- Yennu's Toy Ball (QI!)
								}),
							},
						},
						{	-- The Final Toy
							["allianceQuestData"] = q(84755, {	-- The Final Toy [A]
								["sourceQuest"] = 84588,	-- Operation Toy Rescue [A]
							}),
							["hordeQuestData"] = q(85042, {	-- The Final Toy [H]
								["sourceQuest"] = 85025,	-- Operation Toy Rescue [H]
							}),
							["qgs"] = {
								232404,	-- Alyx <Volunteer Assistant Guest Relations Manager and Associate Event Coordinator>
								232405,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Associate Event Coordinator>
								232407,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
							},
							["coord"] = { 63.0, 50.2, TANARIS },
						},
						{	-- The Toy Thief
							["allianceQuestData"] = q(84756, {	-- The Toy Thief [A]
								["description"] = "Talk to Maru, suspect a dog, then visit Urban Planner Volrath in Boralus.\nCollect a chew toy from the mountaintop behind Maruukai in the Ohn'ahran plains.\nPlace the Chew Toy in a Toy Box  in Teerakai and follow the Bakar Pup to collect Maru's toy from a nearby cave.",
								["sourceQuest"] = 84755,	-- The Final Toy [A]
									["groups"] = {
										i(229992),	-- My Journal: Operation Toy Rescue (QI!)
										n(142178, {	-- Urban Planner Volrath
											["coord"] = { 43.2, 73.7, BORALUS },
											["groups"] = { i(232364) },	-- Bakar Sketch (QI!)
										}),
									},
							}),
							["hordeQuestData"] = q(85043, {	-- The Toy Thief [H]
								["description"] = "Talk to Maru, suspect a dog, then visit Matan in Dazar'alor.\nCollect a chew toy from the mountaintop behind Maruukai in the Ohn'ahran plains.\nPlace the Chew Toy in a Toy Box  in Teerakai and follow the Bakar Pup to collect Maru's toy from a nearby cave.",
								["sourceQuest"] = 85042,	-- The Final Toy [H]
									["groups"] = {
										i(229997),	-- My Journal: Operation Toy Rescue (QI!)
										o(472068, {	-- Bakar Sketch
											["coord"] = { 57.0, 22.2, DAZARALOR },
											["groups"] = { i(229196) },	-- Bakar Sketch (QI!)
										}),
									},
							}),
							["provider"] = { "n", 226684 },	-- Maru <Junior Secret Sleuf>
							["coord"] = { 63.2, 52.4, TANARIS },
							["groups"] = {
								o(467293, {	-- Chew Toy
									["description"] = "Atop the high mountain peak behind Maruukai.",
									["coord"] = { 57.9, 31.7, OHNAHRAN_PLAINS },
									["groups"] = { i(229350) },	-- Chew Toy (QI!)
								}),
								o(467305, {	-- Toy Box
									["description"] = "Place the Chew Toy inside the Toy Box and then hide in the nearby bush.\nAfter Bakar Pup takes the toy, follow him to the cave.",
									["coord"] = { 39.6, 58.3, OHNAHRAN_PLAINS },
								}),
								o(467329, {	-- Maru's Toy
									["description"] = "Inside a cave near Teerakai",
									["coord"] = { 38.8, 56.0, OHNAHRAN_PLAINS },
									["groups"] = { i(229358)	},	-- Miniature Tuskarr Boat (QI!)
								}),
							},
						},
						-- Chapter 3
						q(85047, {	-- A Pirate Predicament
							["sourceQuests"] = {
								84756,	-- The Toy Thief [A]
								85043,	-- The Toy Thief [H]
							},
							["qgs"] = {
								232405,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Associate Event Coordinator>
								232407,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
								232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator, and Temporary Service Agent>
							},
							["coord"] = { 63.0, 50.2, TANARIS },
						}),
						q(85060, {	-- Pirate Foods and Superstitions
							["description"] = "Talk to Kelsey Yance in the Old Port Authority building or Mrs. Gant in a room on the lowest level of Booty Bay. Collect the Boonful Banquet from a barrel in the same room as Mrs. Gant then show it to Scowling Rosa who paths around the wharf.",
							["sourceQuest"] = 85047,	-- A Pirate Predicament
							["provider"] = { "n", 231413 },	-- Bonenose
							["coord"] = { 60.9, 44.7, TANARIS },
							["groups"] = {
								i(231263),	-- My Journal: The Case of the Superstitious and Hungry Pirates (QI!)
								n(2664, {	-- Kelsey Yance <Cook>
									["coord"] = { 42.8, 69.0, THE_CAPE_OF_STRANGLETHORN },
								}),
								n(54232, {	-- Mrs. Gant <Cooking Trainer & Supplies>
									["coord"] = { 42.7, 72.7, THE_CAPE_OF_STRANGLETHORN },
								}),
								o(473934, {	-- Property of Cooktholomew
									["description"] = "On the bottom floor of a building in Booty Bay by some bunks.",
									["coord"] = { 42.9, 72.9, THE_CAPE_OF_STRANGLETHORN },
									["groups"] = { i(229968) },	-- Boonful Banquet (QI!)
								}),
							},
						}),
						q(85208, {	-- A Pirate Missive
							["sourceQuest"] = 85060,	-- Pirate Foods and Superstitions
							["qgs"] = {
								232407,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
								232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Temporary Service Agent>
							},
							["coord"] = { 63.0, 50.2, TANARIS },
							["isBreadcrumb"] = true,
						}),
						q(85195, {	-- Pirate Gastronomy
							["description"] = "Acquire the required ingredients then talk to Bottlenose in Tanaris. Visit Hrothgar's Landing to grab the last ingredient.",
							["sourceQuest"] = 85208,	-- A Pirate Missive
							["provider"] = { "n", 105637 },	-- Scowling Rosa <Texts and Specialty Goods>
							["cost"] = {
								{ "i", 160711, 2 },	-- Aromatic Fish Oil
								{ "i", 33823, 5 },	-- Bloodfin Catfish
								{ "i", 41800, 1 },	-- Deep Sea Monsterbelly
								{ "i", 6522, 4 },	-- Deviate Fish
								{ "i", 27439, 3 },	-- Furious Crawdad
								{ "i", 41813, 2 },	-- Nettlefish
								{ "i", 4402, 1 },	-- Small Flame Sac
								{ "i", 2452, 2 },	-- Swiftthistle
								{ "i", 74846, 2 },	-- Witchberries
							},
							["groups"] = {
								i(229968),	-- Boonful Banquet (QI!)
								i(230235),	-- Rosa's Notes on Boonful Banquet (QI!)
								i(231263),	-- The Case of the Superstitious and Hungry Pirates (QI!)
								n(231413, {	-- Bottlenose
									["coord"] = { 60.9, 44.7, TANARIS },
								}),
								o(469985, {	-- Ice Block
									["description"] = "In the mountains of Hrothgar's Landing in Icecrown, contains the secret ingredient fish and must be visited for quest completion, even if you grab the fish elsewhere.",
									["coord"] = { 55.4, 10.7, 170 },	-- Hrothgar's Landing
								}),
							},
						}),
						-- Chapter 4
						q(85475, {	-- Secret in the Sands
							["sourceQuest"] = 85195,	-- Pirate Gastronomy
							["qgs"] = {
								232406,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
								232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Temporary Service Agent>
								232410,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Chief Temporary Agent of Timelines and Services>
							},
							["coord"] = { 63.0, 50.2, TANARIS },
						}),
						q(85476, {	-- Buried Tweasure
							["description"] = "Find clues in the Ruins of Uldum, by a rock to the east of Dunemaul Compound, to the left of Zul'Farakk's entrance, then talk to Yennu in the Gadgetzan inn.",
							["sourceQuest"] = 85475,	-- Secret in the Sands
							["provider"] = { "n", 226684 },	-- Maru <Junior Secret Sleuf>
							["coord"] = { 63.2, 52.4, TANARIS },
							["groups"] = {
								i(231808),	-- Ancient Treasure Notes (QI!)
								o(476815, {	-- Ancient Treasure Note
									["description"] = "In the back right of the Ruins of Uldum in the Valley of the Watchers.",
									["coord"] = { 37.6, 84.1, TANARIS },
								}),
								o(477605, {	-- Ancient Treasure Note
									["description"] = "By a rock to the south-east of Dunemaul Compound's adjacent mountain.",
									["coord"] = { 47.5, 56.5, TANARIS },
								}),
								o(477609, {	-- Ancient Treasure Note
									["description"] = "Around the wall to the left of Zul'Farakk's entrance. Use your Torch of Pyrreth.",
									["provider"] = { "i", 208092 },	-- Torch of Pyrreth
									["coord"] = { 38.8, 22.1, TANARIS },
								}),
								n(232863, {	-- Yennu
									["description"] = "Inside Gadgetzan's Inn.",
									["coord"] = {  52.7, 26.9, TANARIS },
								}),
								i(231819),	-- Celebratory Fireworks (QI!)
								i(231820),	-- Festive Balloons (QI!)
							},
						}),
						q(85502, {	-- Festive Reflections
							["sourceQuest"] = 85476,	-- Buried Tweasure
							["qgs"] = {
								232406,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
								232410,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Chief Temporary Agent of Timelines and Services>
							},
							["coord"] = { 63.0, 50.2, TANARIS },
						}),
						q(85503, {	-- A Surprising Investigation
							["description"] = "Speak to the time-displaced visitors, toss letters to eventgoers, speak to Bonenose at the north camp again, then head a bit northeast up the beach to celebrate with Alyx.",
							["sourceQuest"] = 85502,	-- Festive Reflections
							["provider"] = { "n", 226796 },	-- Athelton Jones
							["coord"] = { 61.0, 50.7, TANARIS },
							["groups"] = {
								n(233000, {	-- Big Kinook
									["description"] = "By the mole machine.",
									["coord"] = { 63.0, 49.9, TANARIS },
								}),
								n(233008, {	-- Jepetto Joybuzz
									["description"] = "By the Story Time seating.",
									["coord"] = { 63.8, 51.8, TANARIS },
								}),
								n(233002, {	-- Lorewalker Cho
									["description"] = "By the ice rink.",
									["coord"] = { 61.6, 51.0, TANARIS },
								}),
								n(233006, {	-- Maru <Junior Secret Sleuf>
									["description"] = "By the pet kennels.",
									["coord"] = { 61.9, 49.9, TANARIS },
								}),
								n(233007, {	-- Reshad
									["description"] = "On the fashion frenzy stage.",
									["coord"] = { 63.0, 49.2, TANARIS },
								}),
								i(231905),	-- Letters (QI!)
								n(231413, {	-- Bottlenose
									["coord"] = { 60.9, 44.7, TANARIS },
								}),
							},
						}),
					}),
					header(HEADERS.Achievement, 40871, {	-- Assistant to the Assistant Guest Relations Manager
						ach(40871, {	-- Assistant to the Assistant Guest Relations Manager (automated)
							i(231907),	-- Tricked-Out Thinking Cap
						}),
						-- The Case of Misfortune
						o(467403, {	-- Darkmoon Fortune Card
							["description"] = "Behind the crate next to Alyx. After looting this, talk with her, she will tell you to Speak to Alphonse.\n\nYou need to obtain 1 card, it does not matter which one, in order to see gossip options and start the quest.\nThis one is just an example as it is located near Alyx, the main quest giver of the event.",
							["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
							["coords"] = {
								{ 63.0, 50.2, TANARIS },
								{ 58.9, 83.6, KALIMDOR },
							},
							["crs"] = {
								226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
								230838,	-- Alphonse Constant <Apprentice Cartomancer>
							},
							["groups"] = { i(229219) },	-- Six of Frost
						}),
						q(84882, {	-- Deck Dismay
							["description"] = "Speak to Alphonse after having looted the Six of Frost to unlock this quest. Use the Idol of Ohn'ahra to find more cards scattered around the grounds.",
							["providers"] = {
								{ "n", 230838 },	-- Alphonse Constant <Apprentice Cartomancer>
								-- Need this here so you can link the source item / object to this quest without using debug mode
								{ "i", 229219 },	-- Six of Frost
							},
							["coord"] = { 63.9, 52.4, TANARIS },
							["groups"] = {
								o(467083, {	-- Darkmoon Fortune Card
									["description"] = "Under a bench near the Story Time stage.",
									["coord"] = { 63.97, 51.51, TANARIS },
									["groups"] = { i(229207) },	-- Two of Fire (QI!)
								}),
								o(467336, {	-- Darkmoon Fortune Card
									["description"] = "By two barrels near the Story Time seating.",
									["coord"] = { 63.77, 51.91, TANARIS },
									["groups"] = { i(229210) },	-- Five of Fire (QI!)
								}),
								o(467337, {	-- Darkmoon Fortune Card
									["description"] = "To the right of Leeroy's food stall.",
									["coord"] = { 63.27, 52.26, TANARIS },
									["groups"] = { i(229211) },	-- Six of Fire (QI!)
								}),
								o(467339, {	-- Darkmoon Fortune Card
									["description"] = "Behind Brivelthwerp near the ice rink.",
									["coord"] = { 61.91, 51.61, TANARIS },
									["groups"] = { i(229213) },	-- Eight of Fire (QI!)
								}),
								o(467351, {	-- Darkmoon Fortune Card
									["description"] = "Between two caravan carts by the front of the grounds.",
									["coord"] = { 61.19, 50.88, TANARIS },
									["groups"] = { i(229225) },	-- Four of Earth (QI!)
								}),
								o(467334, {	-- Darkmoon Fortune Card
									["description"] = "By the outhose near the photo-op portals.",
									["coord"] = { 62.14, 49.34, TANARIS },
									["groups"] = { i(229208) },	-- Three of Fire (QI!)
								}),
								o(467338, {	-- Darkmoon Fortune Card
									["description"] = "Near the black market walls under the Fashion Frenzy stage.",
									["coord"] = { 63.41, 48.98, TANARIS },
									["groups"] = { i(229212) },	-- Seven of Fire (QI!)
								}),
								o(467342, {	-- Darkmoon Fortune Card
									["description"] = "On one of the steps leading down to the Story Time area.",
									["coord"] = { 63.58, 51.00, TANARIS },
									["groups"] = { i(229216) },	-- Three of Frost (QI!)
								}),
								o(467075, {	-- Darkmoon Fortune Card
									["description"] = "On the Fashion Frenzy stage to the left.",
									["coord"] = { 63.18, 49.35, TANARIS },
									["groups"] = { i(229199) },	-- Two of Air (QI!)
								}),
							},
						}),
						-- The Case of a Good Book
						q(83832, {	-- Torn Dreams
							["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
							["qgs"] = {
								226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
								232404,	-- Alyx <Volunteer Assistant Guest Relations Manager and Associate Event Coordinator>
								232407,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
							},
							["coord"] = { 63.0, 50.2, TANARIS },
						}),
						q(83825, {	-- Restoring A Grand Tale
							["sourceQuest"] = 83832,	-- Torn Dreams
							["provider"] = { "n", 231433 },	-- Raenie Fizzlebog
							["coord"] = { 63.1, 52.0, TANARIS },
							["groups"] = {
								i(226241),	-- Shredded Green Hills of Stranglethorn (QI!/CI!)
								i(226362),	-- Torn Note (Black Market)
								i(226364),	-- Torn Note (Fiona Caravan)
								o(456039, {	-- Crumpled Letter
									["description"] = "Next to the boxes behind Leeroy's tent.",
									["coord"] = { 63.4, 52.4, TANARIS },
									["questID"] = 83837,
									["groups"] = { i(226365) },	-- Crumpled Letter
								}),
								o(456032, {	-- Ruffled Paper
									["description"] = "Right by Farmer Yoon, near the Mount Mania.",
									["coord"] = { 63.2, 52.0, TANARIS },
									["questID"] = 83833,
									["groups"] = { i(226361) },	-- Next Week's Mount Competition Listing
								}),
								o(456041, {	-- Folded Paper
									["description"] = "Next to the outhouse behind the Fashion Show platform.",
									["coord"] = { 63.6, 47.8, TANARIS },
									["groups"] = { i(226236) },	-- Green Hills of Stranglethorn - Page 21 (QI!)
								}),
								i(226232, {	-- Green Hills of Stranglethorn - Page 6 (QI!)
									["description"] = "Drops from any of the Anniversary World Bosses.",
								}),
								i(226233, {	-- Green Hills of Stranglethorn - Page 11 (QI!)
									["description"] = "Drops from any of the Anniversary World Bosses.",
								}),
								o(456036, {	-- Loose Paper
									["description"] = "In a Dog Bowl, in front of the Doghouse.",
									["coord"] = { 61.9, 49.8, TANARIS },
									["groups"] = { i(226234) },	-- Green Hills of Stranglethorn - Page 16 (QI!)
								}),
								i(226237, {	-- Green Hills of Stranglethorn - Page 25 (QI!)
									["description"] = "Drops from Sand Devils In the Timeless Tunnel.",
									["crs"] = { 227795 },	-- Sand Devil
								}),
								i(226238, {	-- Green Hills of Stranglethorn - Page 27 (QI!)
									["description"] = "Drops from Sand Devils In the Timeless Tunnel.",
									["crs"] = { 227795 },	-- Sand Devil
								}),
								o(456038, {	-- Wet Paper
									["description"] = "Behind the Story Time Stage, next to the Hearthstone Table.",
									["coord"] = { 64.5, 51.8, TANARIS },
									["groups"] = { i(226235) },	-- Green Hills of Stranglethorn - Page 18 (QI!)
								}),
								n(227816, {	-- Cravitz Lorent <Shady Book Dealer>
									["description"] = "Below the Fashion Frenzy platform.",
									["coord"] = { 63.6, 48.8, TANARIS },
									["groups"] = {
										i(226242, {	-- Green Hills of Stranglethorn (QI!)
											["description"] = "Ultimately, if you could not be bothered to search for the scattered pages,\nyou can buy this item from a vendor... |CFFFF0000Cheater...|r",
										}),
									},
								}),
							},
						}),
						-- The Loud and Smelly Case
						q(84583, {	-- A Hozen On My Back
							["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
							["qgs"] = {
								226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
								232404,	-- Alyx <Volunteer Assistant Guest Relations Manager and Associate Event Coordinator>
								232405,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Associate Event Coordinator>
								232406,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
								232407,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
							},
							["coord"] = { 63.0, 50.2, TANARIS },
						}),
						q(84595, {	-- The Case of the Fur-Getting Wikket
							["description"] = "Talk to Riko, Shademaster Kiryn, then Sully. Visit Gizmo's grave in the Jade Forest, then chase him down to return to Riko. Wait 5 minutes for Riko to send you mail.",
							["sourceQuest"] = 84583,	-- A Hozen On My Back
							["provider"] = { "n", 229749 },	-- Riko
							["coord"] = { 61.9, 50.5, TANARIS },
							["groups"] = {
								i(228750),	-- My Journal: The Case of the Fur-Getting Wikket (QI!)
								n(229775, {	-- Sully "The Pickle" McLeary
									["coord"] = { 63.1, 49.4, TANARIS },
								}),
								n(229776, {
									["provider"] = { "i", 208092 },	-- Torch of Pyrreth
									["coord"] = { 43.4, 68.8, THE_JADE_FOREST },
									["groups"] = { i(228755) },	-- Gizmo (QI!)
								}),
								i(228740),	-- Gizmo the Pure (PET!)
							},
						}),
						-- The Case of an Old Soul
						q(84435, {	-- Nola's Last Wish
							["description"] = "Speak to Lashk by the story time stage, locate Nola's Last Wish south of Tortaka Refuge in Vol'Dun, then used it to summon and speak to Scrollsage Nola's spirit at the underwater Tortollan wedding west of Atal'Dazar.",
							["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
							["qgs"] = {
								226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
								232406,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
								232407,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
							},
							["coord"] = { 63.0, 50.2, TANARIS },
							["groups"] = {
								i(228302),	-- My Journal: Nola's Last Wish (QI!)
								n(229102, {	-- Lashk
									["description"] = "Near the story time stage.",
									["coord"] = { 63.9, 53.5, TANARIS },
								}),
								o(463104, {	-- Nola's Last Wish
									["description"] = "In a pile of scrolls south of Tortaka Refuge in Vol'Dun.",
									["coord"] = { 64.0, 26.0, VOLDUN },
									["groups"] = { i(228223)	},	-- Nola's Last Wish (QI!)
								}),
								n(229103, {	-- Scrollsage Nola
									["description"] = "Use Nola's Last Wish to summon and speak to at the underwater Tortollan wedding west of Atal'Dazar.",
									["coord"] = { 24.4, 44.4, ZULDAZAR },
								})
							},
						}),
						-- The Case of Great Aspirations
						q(84932, {	-- A Legacy of Destruction
							["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
							["qgs"] = {
								226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
								232406,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
								232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Temporary Service Agent>
							},
							["coord"] = { 63.0, 50.2, TANARIS },
						}),
						q(84933, {	-- From Ashes to Wisdom
							["description"] = "Summon Voidfire with the provided whistle then talk to him in the following locations:\nNear the Ruins of Thaurissan in the Burning Steppes (61.4, 28.7)\nNear the Scar of the Worldbreaker in the Badlands (33.1, 53.0)\nNear the Twilight Breach north of Victor's Point in the Twilight Highlands (38.3, 49.1)\nIn the Quel'Dormir Gardens by the Ruins of Vash'jir in the Shimmering Expanse (38.8, 66.9)",
							["sourceQuest"] = 84932,	-- A Legacy of Destruction
							["provider"] = { "n", 231029 },	-- Voidfire
							["coords"] = {
								{ 61.7, 49.8, TANARIS },
								{ 61.4, 28.7, BURNING_STEPPES },
								{ 33.1, 53.0, BADLANDS },
								{ 38.3, 49.1, TWILIGHT_HIGHLANDS },
								{ 38.8, 66.9, VASHJIR_SHIMMERING_EXPANSE },
							},
							["groups"] = { i(231292) },	-- Whelpling Whistle (QI!)
						}),
						-- The Case of a Feathered Friend
						q(84923, {	-- A Bird's Tale
							["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
							["qgs"] = {
								226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
								232407,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
								232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Temporary Service Agent>
							},
							["coord"] = { 63.0, 50.2, TANARIS },
						}),
						q(84924, {	-- A Bird's Tail
							["description"] = "Interact with four feathers hidden around Spires of Arak, Shattrath, Nagrand and Frostfire Ridge in Draenor.",
							["sourceQuest"] = 84923,	-- A Bird's Tale
							["provider"] = { "n", 228273 },	-- Reshad
							["coord"] = { 64.2, 51.3, TANARIS },
							["groups"] = {
								i(229958),	-- Decorated Feather (QI!)
								o(469568, {	-- Burnt Feather
									["description"] = "On the alignment controls device atop the Windswept Terrace spire in Spires of Arak directly south of Veil Terokk.",
									["coord"] = { 45.8, 53.6, SPIRES_OF_ARAK },
									["groups"] = { i(229408) },	-- Burnt Feather (QI!)
								}),
								o(469569, {	-- Plucked Feather
									["description"] = "On a rock in Shattrath Overlook on the north-west side of Shattrath (Talador).",
									["coord"] = { 29.6, 29.6, TALADOR },
									["groups"] = { i(229409) },	-- Plucked Feather (QI!)
								}),
								o(469573, {	-- Frozen Feather
									["description"] = "Atop a seaside mountain in the Elemental Plateau in Nagrand (Draenor).",
									["coord"] = { 83.8, 19.4, DRAENOR_NAGRAND },
									["groups"] = { i(229410) },	-- Frozen Feather (QI!)
								}),
								o(469574, {	-- Normal Feather
									["description"] = "On a ridge slightly north of the Horde shipyard in Frostfire Ridge.",
									["coord"] = { 42.1, 67.5, FROSTFIRE_RIDGE },
									["groups"] = { i(229411) },	-- Normal Feather (QI!)
								}),
							},
						}),
						-- The Case of Pet Games
						q(84506, {	-- Pet Pursuit
							["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
							["qgs"] = {
								226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
								232407,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
								232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Temporary Service Agent>
							},
							["coord"] = { 63.0, 50.2, TANARIS },
						}),
						q(84469, {	-- Battle Pet Bingo
							["description"] = "Interact with the Jumping Spider in the Bamboo Wilds in Jade Forest and the Summit Kid atop Neverest Pinnacl in Kun'Lai Summit.",
							["sourceQuest"] = 84506,	-- Pet Pursuit
							["provider"] = { "n", 228276 },	-- Jepetto Joybuzz
							["coord"] = { 62.2, 49.7, TANARIS },
							["groups"] = {
								i(228328),	-- Bingo Card (QI!)
								o(464213, {	-- Jumping Spider
									["description"] = "In the Bamboo Wilds, northeast of Pearlfin Village in the Jade Forest.",
									["coord"] = { 64.0, 80.8, THE_JADE_FOREST },
								}),
								o(464218, {	-- Summit Kid
									["description"] = "Atop Neverest Pinnacle in Kun'Lai Summit.",
									["coord"] = { 44.4, 52.5, KUN_LAI_SUMMIT },
								}),
							},
						}),
						-- The Case of Missing Mementos
						q(85477, {	-- Lost and... Found?
							["description"] = "Open the Lost & Found box nest to Alyx then return the items to visitors around the anniversary grounds.",
							["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
							["qgs"] = {
								226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
								232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Temporary Service Agent>
							},
							["coord"] = { 63.0, 50.2, TANARIS },
							["groups"] = {
								i(231810),	-- Alyx's Lost & Found Notes (QI!)
								o(477139, {	-- Lost & Found
									["coord"] = { 63.0, 50.2, TANARIS },
									["groups"] = {
										i(231761, {	-- Crude Ivory Locket (QI!)
											["description"] = "Return this to Mankrik, found by Bartender Bob's stall to the right of the Story Time stage.",
										}),
										i(231764, {	-- Jade Amulet (QI!)
											["description"] = "Return this to John J. Keeshan, found south-east of the Mount Mania stage next to Ariok.",
										}),
										i(231763, {	-- Potion Bottle (QI!)
											["description"] = "Return this to Marin Noggenfogger, who paths around the grounds.",
										}),
										i(231762, {	-- Tiny Mechanical Mouse (QI!)
											["description"] = "Return this to Oglethorpe Obnoticus who paths around the grounds but frequently stops by Moira Thaurissan and the Dark Iron mole machine.",
										}),
										i(231765, {	-- Well-Worn Almanac (QI!)
											["description"] = "Return this to Farmer Yoon, found south of the Mount Mania stage.",
										}),
									},
								}),
								n(228249, {	-- Mankrik
									["coord"] = { 63.5, 52.2, TANARIS },
									["provider"] = { "i", 231761 },	-- Crude Ivory Locket
								}),
								n(228251, {	-- John J. Keeshan
									["coord"] = { 63.4, 51.8, TANARIS },
									["provider"] = { "i", 231764 },	-- Jade Amulet
								}),
								n(228248, {	-- Marin Noggenfogger
									["coord"] = { 63.6, 50.9, TANARIS },
									["provider"] = { "i", 231763 },	-- Potion Bottle
								}),
								n(228247, {	-- Oglethorpe Obnoticus
									["coord"] = { 62.9, 49.7, TANARIS },
									["provider"] = { "i", 231762 },	-- Tiny Mechanical Mouse
								}),
								n(228262, {	-- Farmer Yoon
									["coord"] = { 63.1, 52.0, TANARIS },
									["provider"] = { "i", 231765 },	-- Well-Worn Almanac
								}),
							},
						}),
						-- The Case of Staged Disaster
						q(84985, {	-- Not Ready on Set
							["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
							["qgs"] = {
								226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
								232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Temporary Service Agent>
								232410,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Chief Temporary Agent of Timelines and Services>
							},
							["coord"] = { 63.0, 50.2, TANARIS },
						}),
						q(84912, {	-- The Show Must Go On
							["description"] = "Collect the Mask of the Trickster and the Play Script from on and behind the stage, and the Prop Sword and Conductor's Baton from near the venue entrance.",
							["sourceQuest"] = 84985,	-- Not Ready on Set
							["provider"] = { "n", 171743 },	-- Dapperdew
							["coord"] = { 41.5, 44.8, ARDENWEALD },
							["groups"] = {
								i(229387),	-- Trickster's Riddles (QI!)
								o(469334, {	-- Mask of the Trickster
									["description"] = "Behind a wooden wall onstage near the back.",
									["coord"] = { 41.3, 43.8, ARDENWEALD },
									["groups"] = { i(229385) },	-- Mask of the Trickster (QI!)
								}),
								o(469327, {	-- Play Script
									["description"] = "On a table to the right in the back of the stage's balcony area.",
									["coord"] = { 41.3, 42.8, ARDENWEALD },
									["groups"] = { i(229383) },	-- Play Script (QI!)
								}),
								o(469332, {	-- Prop Sword
									["description"] = "Under the Winter Queen's throne platform.",
									["coord"] = { 42.3, 46.8, ARDENWEALD },
									["groups"] = { i(229384) },	-- Prop Sword (QI!)
								}),
								o(469335, {	-- Conductor's Baton
									["description"] = "Next to some drums to the right of the south venue entrance.",
									["coord"] = { 43.3, 46.4, ARDENWEALD },
									["groups"] = { i(229386) },	-- Conductor's Baton (QI!)
								}),
							},
						}),
					}),
					header(HEADERS.Achievement, 40979, {	-- No Crate Left Behind
						ach(40873),	-- Crate Insurance Agent
						ach(40979, {	-- No Crate Left Behind
							["sourceQuests"] = {
								83794,	-- Soggy Celebration Crate
								85574,	-- Hazy Celebration Crate
								84624,	-- Sandy Celebration Crate
								84470,	-- Dirt-Caked Celebration Crate
								83931,	-- Battered Celebration Crate
								84426,	-- Waterlogged Celebration Crate
								84767,	-- Charred Celebration Crate
								85523,	-- Mildewed Celebration Crate
								84773,	-- Crystalized Celebration Crate
								84625,	-- Surprisingly Pristine Celebration Crate
								84909,	-- Ghostly Celebration Crate
							},
						}),
						header(HEADERS.Quest, 83794, {
							i(228694),	-- Damp Ransom Note
							n(143029, {	-- Nikto <Master Talekeep>
								["coord"] = { 54.3, 54.5, ZULDAZAR },
								["groups"] = { i(225996) },	-- Clam Digger
							}),
							o(455761, {	-- Gerald
								["description"] = "Go to Zuldazar in Zandalar. At 54.3, 54.5 you will find Nikto. Buy Clam Digger and head upwards to 54.2, 54.2. Interract with Gerald and give him the drink.",
								["provider"] = { "i", 225996 },	-- Clam Digger
								["coord"] = { 54.2, 54.2, ZULDAZAR },
								["groups"] = {
									o(455768, {	-- Soggy Celebration Crate
										["coord"] = { 54.2, 54.2, ZULDAZAR },
										["questID"] = 83790,
										["groups"] = { i(226200) },	-- Soggy Celebration Crate (QS!)
									}),
								},
							}),
							q(83794, {	-- Soggy Celebration Crate
								["provider"] = { "i", 226200 },	-- Soggy Celebration Crate
							}),
						}),
						header(HEADERS.Quest, 85574, {
							n(233545, {	-- Curious Haze
								["description"] = "Interact with while dead to bounce up the mountain towards the crate and make it appear.",
								["coord"] = { 21.1, 57.2, NAGRAND },
							}),
							n(233090, {	-- Hazy Celebration Crate
								["description"] = "Only visible while dead.",
								["coords"] = {
									{ 54.0, 58.1, DESOLACE },
									{ 21.0, 60.0, NAGRAND },
								},
								["groups"] = { i(232263) },	-- Hazy Celebration Crate (QS!)
							}),
							q(85574, {	-- Hazy Celebration Crate
								["provider"] = { "i", 232263 },	-- Hazy Celebration Crate
							}),
						}),
						header(HEADERS.Quest, 84624, {
							i(228766),	-- Sandy Ransom Note
							o(465161, {	-- Water-Resistant Receipt of Sale
								["description"] = "Enter the underwater tunnel at 66.3, 86.2 in the Thousand Needles, find the receipt behind some pipes inside.",
								["coord"] = { 64.9, 84.4, THOUSAND_NEEDLES },
								["groups"] = { i(228768) },	-- Water-Resistant Receipt
							}),
							q(84624, {	-- Sandy Celebration Crate
								["provider"] = { "i", 228767 },	-- Sandy Celebration Crate
							}),
						}),
						header(HEADERS.Quest, 84470, {
							i(228321),	-- Dirt-Caked Ransom Note
							o(463653, {	-- Dirt-Caked Celebration Crate
								["description"] = "Enter the Karazhan Crypt at 39.83, 73.11 in Deadwind Pass. Follow the spiraling corridor down until you find the pool of Upside Down Sinners. Cross the pool and the crate will be in the back left of the next room.",
								["coord"] = { 22.4, 83.7, DEADWIND_PASS },
								["groups"] = { i(228322) },	-- Dirt-Caked Celebration Crate (QS!)
							}),
							q(84470, {	-- Dirt-Caked Celebration Crate
								["provider"] = { "i", 228322 },	-- Dirt-Caked Celebration Crate
							}),
						}),
						header(HEADERS.Quest, 83931, {
							o(456061, {	-- Battered Celebration Crate
								["description"] = "Outside a worg den near Gjalerbron in Howling Fjord.",
								["coord"] = { 29.4, 6.4, HOWLING_FJORD },
								["groups"] = { i(226375) },	-- Battered Celebration Crate (QS!)
							}),
							q(83931, {	-- Battered Celebration Crate
								["provider"] = { "i", 226375 },	-- Battered Celebration Crate
							}),
						}),
						header(HEADERS.Quest, 84426, {
							i(228300),	-- Sun-Baked Ransom Note
							o(462417, {	-- Waterlogged Celebration Crate
								["description"] = "Behind a bed on the second floor of an underwater gnomish building off the south-eastern coast of Tanaris.",
								["coord"] = { 69.2, 68.6, TANARIS },
								["groups"] = { i(228212) },	-- Waterlogged Celebration Crate (QS!)
							}),
							q(84426, {	-- Waterlogged Celebration Crate
								["provider"] = { "i", 228212 },	-- Waterlogged Celebration Crate
							}),
						}),
						header(HEADERS.Quest, 84767, {
							i(228977),	-- Burnt Ransom Note
							o(466438, {	-- Charred Celebration Crate
								["description"] = "On the ground by the bear trampoline in the north-western corner of Mount Hyjal.",
								["coord"] = { 13.6, 33.5, MOUNT_HYJAL },
								["groups"] = { i(228976) },	-- Charred Celebration Crate (QS!)
							}),
							q(84767, {	-- Charred Celebration Crate
								["provider"] = { "i", 228976 },	-- Charred Celebration Crate
							}),
						}),
						header(HEADERS.Quest, 85523, {
							i(231888),	-- Mildewed Ransom Note
							o(505260, {	-- Potion of Truth
								["description"] = "Found at the top of Thunder Peak behind Lord Magmathar in Ashenvale. The buff will be lost if you encounter any load screens or try to leave Kalimdor.",
								["coord"] = { 47.9, 38.3, ASHENVALE },
							}),
							o(478090, {	-- Mildewed Celebration Crate
								["description"] = "In a corner within Eldreth Row by the exterior of Dire Maul.\nVisible only with a buff, obtained from the Potion of Truth.",
								["provider"] = { "o", 505260 },	-- Potion of Truth
								["coord"] = {60.4, 35.4, FERALAS },
								["groups"] = { i(231886) },	-- Mildewed Celebration Crate (QS!)
							}),
							q(85523, {	-- Mildewed Celebration Crate
								["provider"] = { "i", 231886 },	-- Mildewed Celebration Crate
							}),
						}),
						header(HEADERS.Quest, 84773, {
							i(228985),	-- Shiny Ransom Note
							o(466512, {	-- Crystalized Celebration Crate
								["description"] = "Inside Oshu'gun's central chamber in Nagrand (Outland).",
								["coord"] = {35.3, 74.7, NAGRAND },
								["groups"] = { i(228983) },	-- Crystalized Celebration Crate (QS!)
							}),
							q(84773, {	-- Crystalized Celebration Crate
								["provider"] = { "i", 228983 },	-- Crystalized Celebration Crate
							}),
						}),
						header(HEADERS.Quest, 84625, {
							i(228769),	-- Surprisingly Pristine Ransom Note
							o(465183, {	-- Mysterious Bones
								["description"] = "Behind Andrestrasz's cave in his cave in Silithus, use Perky Pug or other dog battle pets at the coordinates to dig up the bones.",
								["provider"] = { "n", 37865 },	-- Perky Pug
								["coords"] = {
									{ 42.1, 93.4, AHNQIRAJ_THE_FALLEN_KINGDOM },	-- Cave Entrance
									{ 44.6, 90.1, AHNQIRAJ_THE_FALLEN_KINGDOM },	-- Mysterious Bones
								},
								["groups"] = { i(228772) },	-- Mysterious Bones
							}),
							o(465186, {	-- Unmarked Grave
								["description"] = "Use the bones at the Unmarked Grave to receive the crate.",
								["coord"] = { 37.3, 47.7, STORMHEIM },
								["cost"] = { { "i", 228772, 1 } },	-- Mysterious Bones
								["groups"] = { i(228770) },	-- Surprisingly Pristine Celebration Crate (QS!)
							}),
							q(84625, {	-- Surprisingly Pristine Celebration Crate
								["provider"] = { "i", 228770 },	-- Surprisingly Pristine Celebration Crate
							}),
						}),
						header(HEADERS.Quest, 84909, {
							i(229369),	-- Ghostly Ransom Note
							o(467489, {	-- Ghostly Celebration Crate
								["description"] = "Atop the Seat of the Primus in Maldraxxus, in the back to the right of the portal.",
								["coord"] = { 50.0, 73.8, MALDRAXXUS },
								["groups"] = { i(229367) },	-- Ghostly Celebration Crate (QS!)
							}),
							q(84909, {	-- Ghostly Celebration Crate
								["provider"] = { "i", 229367 },	-- Ghostly Celebration Crate
							}),
						}),
					}),
				},
			}),
			n(QUESTS, {
				q(82672, {	-- Another Timely Invitation
					-- #IF AFTER TWW
					["qgs"] = {
						224419, -- Holiday Celebrant
						224450, -- Holiday Celebrant
					},
					["coords"] = {
						{ 45.5, 55.5, DORNOGAL },
						{ 47.9, 78.2, ORGRIMMAR },
					},
					-- #ENDIF
					["isYearly"] = true,
				}),
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
					["groups"] = {
						ach(40977),	-- Codex Editor: Ahn'Qiraj
						i(233014, {	-- Bronze Celebration Cache of Treasures
							["timeline"] = { ADDED_11_0_5, REMOVED_11_0_7 },
							["sym"] = SYM_ALL_BRD_DROPS,
						}),
						-- #IF AFTER 11.2.5
						currency(TIMEWARPED_BADGE),
						-- #ENDIF
					},
				}),
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
				n(223884, {	-- Bobadormu
					["coord"] = { 62.7, 50.3, TANARIS },
					["timeline"] = { ADDED_11_0_5, REMOVED_11_0_7 },
					["groups"] = {
						filter(MISC, sharedData({
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}, {
							i(224567),	-- Commendation of the Argent Dawn
							i(224558),	-- Commendation of the Brood of Nozdormu
							i(224561),	-- Commendation of the Hydraxian Waterlords
							i(224571),	-- Commendation of the Thorium Brotherhood
							i(224566),	-- Commendation of the Timbermaw Hold
							i(224565),	-- Commendation of the Wintersaber Trainers
							i(224570),	-- Commendation of the Zandalar Tribe
						})),
						filter(MISC, {
							i(224190, {	-- Kreeg's Hardy Draught
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}}
							}),
							i(225378, {	-- Mohawk Grenade
								["cost"] = {{"c", TIMEWARPED_BADGE, 200}}
							}),
						}),
					},
				}),
				n(158061, {	-- Historian Ma'di
					["coord"] = { 62.6, 50.4, TANARIS },
					["groups"] = appendAllGroups({},
						sharedData({
							["timeline"] = { ADDED_11_0_5, REMOVED_11_0_7 },
						},{	-- One-Time Content
							i(229828, {	-- 20th Anniversary Balloon Chest (TOY!)
								["cost"] = {{"c", BRONZE_TOKEN, 10}}
							}),
							i(232598, {	-- Bag of Timewarped Badges
								["cost"] = {{"c", BRONZE_TOKEN, 1}},
								["groups"] = {
									currency(TIMEWARPED_BADGE),
								},
							}),
							i(235505, {	-- Satchel of Timewarped Badges
								["cost"] = {{"c", BRONZE_TOKEN, 5}},
								["groups"] = {
									currency(TIMEWARPED_BADGE),
								},
							}),
							i(235506, {	-- Box of Timewarped Badges
								["cost"] = {{"c", BRONZE_TOKEN, 25}},
								["groups"] = {
									currency(TIMEWARPED_BADGE),
								},
							}),
						}),
						{	-- Recurring Content
							i(208572, {	-- Azure Worldchiller (MOUNT!)
								["cost"] = {{"c", TIMEWARPED_BADGE, 5000}}
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
						}),
				}),
				n(231352, {	-- Notary Grably <Titles of Olde>
					["coord"] = { 63.3, 50.7, TANARIS },
					["groups"] = {
						i(230264, {	-- Bronze Celebration Titles: Broken Isles Enthusiast (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(587),	-- Broken Isles Enthusiast <Name>
							},
						}),
						i(230261, {	-- Bronze Celebration Titles: Cataclysm Enthusiast (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(584),	-- Cataclsym Enthusiast <Name>
							},
						}),
						i(230258, {	-- Bronze Celebration Titles: Classic Enthusiast (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(581),	-- Classic Enthusiast <Name>
							},
						}),
						i(230263, {	-- Bronze Celebration Titles: Draenor Enthusiast (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(586),	-- Draenor Enthusias <Name>
							},
						}),
						i(230268, {	-- Bronze Celebration Titles: Dragon Isles Enthusiast (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(591),	-- Dragon Isles Enthusiast <Name>
							},
						}),
						i(229826, {	-- Bronze Celebration Titles: Grizzly Hills Hiker (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(577),	-- Grizzly Hills Hiker <Name>
							},
						}),
						i(231833, {	-- Bronze Celebration Titles: Karazhan Graduate (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(596),	-- Karazhan Graduate <Name>
							},
						}),
						i(230266, {	-- Bronze Celebration Titles: Kul Tiras Enthusiast (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(589),	-- Kul Tiras Enthusiast <Name>
							},
						}),
						i(231832, {	-- Bronze Celebration Titles: Molten Core Prospector (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(595),	-- Molten Core Prospector <Name>
							},
						}),
						i(230260, {	-- Bronze Celebration Titles: Northrend Enthusiast (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(583),	-- Northrend Enthusiast <Name>
							},
						}),
						i(230259, {	-- Bronze Celebration Titles: Outland Enthusiast (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(582),	-- Outland Enthusiast <Name>
							},
						}),
						i(230262, {	-- Bronze Celebration Titles: Pandaria Enthusiast (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(585),	-- Pandaria Enthusiast <Name>
							},
						}),
						i(229827, {	-- Bronze Celebration Titles: Plaguelands Survivor (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(578),	-- Plaguelands Survivor <Name>
							},
						}),
						i(230267, {	-- Bronze Celebration Titles: Shadowlands Enthusiast (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(590),	-- Shadowlands Enthusiast <Name>
							},
						}),
						i(230265, {	-- Bronze Celebration Titles: Zuldazar Enthusiast (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(588),	-- Zuldazar Enthusiast <Name>
							},
						}),
					},
				}),
				n(229707, {	-- Storekeeper Reginald <Out of Time-ly Trinkets>
					["coord"] = { 62.9, 51.1, TANARIS },
					["timeline"] = { ADDED_11_0_5, REMOVED_11_0_7 },
					["groups"] = sharedData({
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
					["timeline"] = { ADDED_11_0_5, REMOVED_11_0_7 },
					["groups"] = sharedData({
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
						74,	-- Caverns of Time Entrance
						CAVERNS_OF_TIME,
					},
					["groups"] = {
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
					["description"] = "To engage Archavon, simply have five players stepping on the five runes around his dome.\n\nIgnore the valkyrs above the runes, they will despawn immediately when all runes are stepped on!",
					["isRaid"] = true,
					["questID"] = 84256,
					["isDaily"] = true,
					["coord"] = { 46.0, 28.9, TANARIS },
					["maps"] = {
						74,	-- Caverns of Time Entrance
						CAVERNS_OF_TIME,
					},
					["groups"] = {
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
		}),
	}),
	n(WOW_ANNIVERSARY_TWENTYONE, {
		["timeline"] = { ADDED_11_2_5 },
		["groups"] = appendAllGroups({},sharedData({
			["timeline"] = { ADDED_11_2_5, "removed 11.2.7.99999" },
		},{	-- One-Time Content
			ach(61406),	-- WoW's 21st Anniversary
		}),
		{	-- Recurring Content
			n(VENDORS, {
				n(231352, {	-- Notary Grably <Titles of Olde>
					["coord"] = { 63.3, 50.7, TANARIS },
					["groups"] = {
						i(249242, {	-- Bronze Celebration Titles: Khaz Algar Enthusiast (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
							["groups"] = {
								title(645),	-- Khaz Algar Enthusiast <Name>
							},
						}),
					},
				}),
				n(223902, {	-- Traeya <Armor Vendor>
					["coord"] = { 63.1, 50.9, TANARIS },
					["groups"] = {
						i(253154, {	-- Loyal Watchman's Gauntlets
							["cost"] = {{"c", TIMEWARPED_BADGE, 20}},
						}),
						i(253155, {	-- Loyal Watchman's Belt
							["cost"] = {{"c", TIMEWARPED_BADGE, 20}},
						}),
						i(253156, {	-- Loyal Watchman's Boots
							["cost"] = {{"c", TIMEWARPED_BADGE, 30}},
						}),
						i(253157, {	-- Loyal Watchman's Trousers
							["cost"] = {{"c", TIMEWARPED_BADGE, 30}},
						}),
						i(253158, {	-- Loyal Watchman's Cuirass
							["cost"] = {{"c", TIMEWARPED_BADGE, 30}},
						}),
						i(253159, {	-- Loyal Watchman's Spaulders
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(253160, {	-- Loyal Watchman's Helm
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
					},
				}),
			}),
		}),
	}),
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

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	["timeline"] = { ADDED_11_0_5 },
	["groups"] = {
		n(WOW_ANNIVERSARY_TWENTY, {
			n(GUEST_RELATIONS, {
				q(85564),	-- Talking to Kelsey during (85060) Pirate Foods and Superstitions.
				q(85565),	-- Talking to Mrs. Gant during (85060) Pirate Foods and Superstitions.
				q(85411),	-- Speaking to Bottlenose second option during (85195) Pirate Gastronomy.
				q(85412),	-- Speaking to Bottlenose third option during (85195) Pirate Gastronomy.
				q(85414),	-- Acquire 2 Swiftthistle for (85195) Pirate Gastronomy.
				q(85415),	-- Acquire 2 Witchberries for (85195) Pirate Gastronomy.
				q(85416),	-- Acquire 1 Small Flame Sac for (85195) Pirate Gastronomy.
				q(85417),	-- Acquire 2 Aromatic Fish Oil for (85195) Pirate Gastronomy.
				q(85418),	-- Acquire 5 Bloodfin Catfish for (85195) Pirate Gastronomy.
				q(85419),	-- Acquire 4 Deviate Fish for (85195) Pirate Gastronomy.
				q(85420),	-- Acquire 2 Nettlefish for (85195) Pirate Gastronomy.
				q(85421),	-- Acquire 3 Furious Crawdads for (85195) Pirate Gastronomy.
				q(84617, name(HEADERS.Achievement, 40873)),	-- Accepting Harder Puzzles from Alyx. This unlocks notes on the bulletin board next to Alyx.
			}),
			q(84309),	-- Bonus chance for Reins of the Heavenly Onyx Cloud Serpent from Sha of Anger on first kill per day
			q(84312),	-- Bonus chance for Grand Black War Mammoth from Doomwalker/Archavon on first kill per day
			q(86398),	-- Bonus chance for Illidari Doomhawk from Doomwalker on first kill per day
			q(85723),	-- first WB kill of day/event or maybe Doomwalker
			q(85168),	-- fourth WB kill of day/event or maybe Kazzak
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
	},
}));
-- #endif
