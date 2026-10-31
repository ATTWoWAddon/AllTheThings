--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

HALLOWS_END_HEADER = createHeader({
	readable = "Hallow's End",
	constant = "HALLOWS_END_HEADER",
	icon = [[~_.asset("Holiday_hallows_end")]],
	eventID = EVENTS.HALLOWS_END,
	-- #if BEFORE WRATH
	eventSchedule = {
		1,	-- Recurring
		10, 18, 10, 0,	-- 10/18 at 10:00 AM
		11, 1, 11, 0	-- 11/01 at 11:00 AM
	},
	-- #endif
	text = {
		-- #if AFTER TBC
		en = WOWAPI_GetCategoryName(158),
		-- #else
		en = "Hallow's End",
		de = "Schlotternächte",
		es = "Halloween",
		mx = "Halloween",
		fr = "Sanssaint",
		it = "Veglia delle Ombre",
		ko = "할로윈 축제",
		pt = "Noturnália",
		ru = "Тыквовин",
		cn = "万圣节",
		tw = "萬鬼節",
		-- #endif
	},
});

local TRICKY_TREAT = 33226;
local DRUSTVAR_CHOC = 252990;
local DUSKWOOD_CARAMEL = 253043;
local FELWOOD_FUDGE = 253042;

local MASKS_WITH_COST = {
	i(34000, {	-- Blood Elf Female Mask
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_3_0_2 },
	}),
	i(34002, {	-- Blood Elf Male Mask
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_3_0_2 },
	}),
	i(34001, {	-- Draenei Female Mask
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_3_0_2 },
	}),
	i(34003, {	-- Draenei Male Mask
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_3_0_2 },
	}),
	i(20562, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Dwarf Female Mask
	i(20561, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Dwarf Male Mask
	i(20392, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Gnome Female Mask
	i(20391, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Gnome Male Mask
	i(49212, {	-- Goblin Female Mask
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_4_2_2 },
	}),
	i(49210, {	-- Goblin Male Mask
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_4_2_2 },
	}),
	i(20565, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Human Female Mask
	i(20566, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Human Male Mask
	i(69187, {	-- Murloc Female Mask
		cost = { { "i", TRICKY_TREAT, 5 } },
		timeline = { ADDED_4_2_2 },
	}),
	i(69188, {	-- Murloc Male Mask
		cost = { { "i", TRICKY_TREAT, 5 } },
		timeline = { ADDED_4_2_2 },
	}),
	i(69189, {	-- Naga Female Mask
		cost = { { "i", TRICKY_TREAT, 5 } },
		timeline = { ADDED_4_2_2 },
	}),
	i(69190, {	-- Naga Male Mask
		cost = { { "i", TRICKY_TREAT, 5 } },
		timeline = { ADDED_4_2_2 },
	}),
	i(20563, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Night Elf Female Mask
	i(20564, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Night Elf Male Mask
	i(69192, {	-- Ogre Female Mask
		cost = { { "i", TRICKY_TREAT, 5 } },
		timeline = { ADDED_4_2_2 },
	}),
	i(69193, {	-- Ogre Male Mask
		cost = { { "i", TRICKY_TREAT, 5 } },
		timeline = { ADDED_4_2_2 },
	}),
	i(20569, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Orc Female Mask
	i(20570, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Orc Male Mask
	i(20571, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Tauren Female Mask
	i(20572, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Tauren Male Mask
	i(20567, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Troll Female Mask
	i(20568, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Troll Male Mask
	i(20574, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Undead Female Mask
	i(20573, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Undead Male Mask
	i(69194, {	-- Vrykul Female Mask
		cost = { { "i", TRICKY_TREAT, 5 } },
		timeline = { ADDED_4_2_2 },
	}),
	i(69195, {	-- Vrykul Male Mask
		cost = { { "i", TRICKY_TREAT, 5 } },
		timeline = { ADDED_4_2_2 },
	}),
	i(49215, {	-- Worgen Female Mask
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_4_2_2 },
	}),
	i(49216, {	-- Worgen Male Mask
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_4_2_2 },
	}),
};

local MASKS_WITHOUT_COST, MASK_IDS = {}, {};
for i,o in ipairs(MASKS_WITH_COST) do
	local w = {};
	for key,value in pairs(o) do
		w[key] = value;
	end
	w.cost = nil;
	table.insert(MASK_IDS, w.itemID);
	table.insert(MASKS_WITHOUT_COST, w);
end
local WANDS_WITH_COST = {
	i(116851, {	-- Hallowed Wand - Abomination
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_6_0_2 },
	}),
	i(139004, {	-- Hallowed Wand - Banshee
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_7_0_3 },
	}),
	i(20410, {	-- Hallowed Wand - Bat
		cost = { { "i", TRICKY_TREAT, 2 } },
		-- #if AFTER TWW
		description = "Can only be used on party members of your faction.",
		-- #endif
	}),
	i(128645, {	-- Hallowed Wand - Gargoyle
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_6_2_2 },
	}),
	i(116853, {	-- Hallowed Wand - Geist
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_6_0_2 },
	}),
	i(20409, {	-- Hallowed Wand - Ghost
		cost = { { "i", TRICKY_TREAT, 2 } },
		-- #if AFTER TWW
		description = "Can only be used on party members of your faction.",
		-- #endif
	}),
	i(116850, {	-- Hallowed Wand - Ghoul
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_6_0_2 },
	}),
	i(20399, {	-- Hallowed Wand - Leper Gnome
		cost = { { "i", TRICKY_TREAT, 2 } },
		-- #if AFTER TWW
		description = "Can only be used on party members of your faction.",
		-- #endif
	}),
	i(128646, {	-- Hallowed Wand - Nerubian
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_6_2_2 },
	}),
	i(20398, {	-- Hallowed Wand - Ninja
		cost = { { "i", TRICKY_TREAT, 2 } },
		-- #if AFTER TWW
		description = "Can only be used on party members of your faction.",
		-- #endif
	}),
	i(20397, {	-- Hallowed Wand - Pirate
		cost = { { "i", TRICKY_TREAT, 2 } },
		-- #if AFTER TWW
		description = "Can only be used on party members of your faction.",
		-- #endif
	}),
	i(20413, {	-- Hallowed Wand - Random
		cost = { { "i", TRICKY_TREAT, 2 } },
	}),
	i(20411, {	-- Hallowed Wand - Skeleton
		cost = { { "i", TRICKY_TREAT, 2 } },
		-- #if AFTER TWW
		description = "Can only be used on party members of your faction.",
		-- #endif
	}),
	i(116848, {	-- Hallowed Wand - Slime
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_6_0_2 },
	}),
	i(116854, {	-- Hallowed Wand - Spider
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_6_0_2 },
	}),
	i(128644, {	-- Hallowed Wand - Wight
		cost = { { "i", TRICKY_TREAT, 2 } },
		timeline = { ADDED_6_2_2 },
	}),
	i(20414, {	-- Hallowed Wand - Wisp
		cost = { { "i", TRICKY_TREAT, 2 } },
		-- #if AFTER TWW
		description = "Can only be used on party members of your faction.",
		-- #endif
	}),
};
local WANDS_WITHOUT_COST, WANDS_IDS = {}, {};
for i,o in ipairs(WANDS_WITH_COST) do
	local w = {};
	for key,value in pairs(o) do
		w[key] = value;
	end
	w.cost = nil;
	table.insert(WANDS_IDS, w.itemID);
	table.insert(WANDS_WITHOUT_COST, w);
end

-- CRIEVE NOTE: Use this function for candy buckets.
local CANDY_BUCKET_OBJECT_DATA = {
	readable = "Candy Bucket",
	consolidate = true,	-- This tells parser that we need to export this as a group to clean up duplicated data.
	dynamic = true,	-- This tells parser to not include it in the export of ObjectDB when it consolidates it.
	model = 200946,
	text = {
		en = "Candy Bucket",
		de = "Eimer mit Süßigkeiten",
		es = "Cubo de caramelos",
		mx = "Cubo de caramelos",
		fr = "Seau de bonbons",
		it = "Secchio delle Caramelle",
		ko = "사탕 바구니",
		pt = "Balde de Balas",
		ru = "Кулек конфет",
		cn = "糖罐",
		tw = "糖果桶",
	},
};
local ObjectDB = ObjectDB;
local function candybucket(questID, t)
	t = q(questID, t);
	t._drop = { "g" };
	t.isYearly = true;
	t.g = { i(TRICKY_TREAT, { races = IGNORED_VALUE }) };	-- Tricky Treat
	if t.provider and t.provider[1] == "o" then
		ObjectDB[t.provider[2]] = CANDY_BUCKET_OBJECT_DATA;
	elseif t.providers then
		for i,provider in ipairs(t.providers) do
			if provider and provider[1] == "o" then
				ObjectDB[provider[2]] = CANDY_BUCKET_OBJECT_DATA;
			end
		end
	end
	return t;
end
-- Since we can't use achievement headers for pre-3.0.2 period, we use these
local TRICKS_CATACLYSM = createHeader({	-- Achievement for Cataclysm was added in 4.2.0
	readable = "Tricks and Treats of the Cataclysm",
	icon = 133981,
	text = {
		en = "Tricks and Treats of the Cataclysm",
		de = "Süßes oder Saures von Cataclysm",
		es = "Truco o trato en Cataclysm",
		mx = "Truco o trato en Cataclysm",
		fr = "Bonbons et blagues du Cataclysme",
		it = "Dolcetti o scherzetti del Cataclisma",
		ko = "대격변의 할로윈",
		pt = "Gostosuras e Travessuras do Cataclismo",
		ru = "'Конфета или жизнь' после Катаклизма",
		cn = "灾变后的糖果",
		tw = "浩劫與重生之不給糖就搗蛋",
	},
});
local TRICKS_NORTHREND = createHeader({	-- Achievement for Northrend was added in 4.2.0
	readable = "Tricks and Treats of Northrend",
	icon = 133982,
	text = {
		en = "Tricks and Treats of Northrend",
		de = "Süßes oder Saures in Nordend",
		es = "Truco o trato en Rasganorte",
		mx = "Truco o trato en Rasganorte",
		fr = "Bonbons et blagues du Norfendre",
		it = "Dolcetti o scherzetti di Nordania",
		ko = "노스렌드의 할로윈",
		pt = "Gostosuras e Travessuras de Nortúndria",
		ru = "'Конфета или жизнь' в Нордсколе",
		cn = "诺森德的糖果",
		tw = "北裂境之不給糖就搗蛋",
	},
});
local TRICKS_OUTLAND = createHeader({
	readable = "Tricks and Treats of Outland",
	icon = 133985,
	text = {
		en = "Tricks and Treats of Outland",
		de = "Süßes oder Saures in der Scherbenwelt",
		es = "Truco o trato en Terrallende",
		mx = "Truco o trato en Terrallende",
		fr = "Bonbons et blagues d'Outreterre",
		it = "Dolcetti o scherzetti delle Terre Esterne",
		ko = "아웃랜드의 할로윈",
		pt = "Gostosuras e Travessuras de Terralém",
		ru = "'Конфета или жизнь' в Запределье",
		cn = "外域的糖果",
		tw = "外域之不給糖就搗蛋",
	},
});
local TRICKS_EASTERN_KINGDOMS = createHeader({
	readable = "Tricks and Treats of Eastern Kingdoms",
	icon = 133983,
	text = {
		en = "Tricks and Treats of Eastern Kingdoms",
		de = "Süßes oder Saures in den Östlichen Königreichen",
		es = "Truco o trato en los Reinos del Este",
		mx = "Truco o trato en los Reinos del Este",
		fr = "Bonbons et blagues des royaumes de l'Est",
		it = "Dolcetti o scherzetti dei Regni Orientali",
		ko = "동부 왕국의 할로윈",
		pt = "Gostosuras e Travessuras dos Reinos do Leste",
		ru = "'Конфета или жизнь' в Восточных королевствах",
		cn = "东部王国的糖果",
		tw = "東部王國之不給糖就搗蛋",
	},
});
local TRICKS_KALIMDOR = createHeader({
	readable = "Tricks and Treats of Kalimdor",
	icon = 236546,
	text = {
		en = "Tricks and Treats of Kalimdor",
		de = "Süßes oder Saures in Kalimdor",
		es = "Truco o trato en Kalimdor",
		mx = "Truco o trato en Kalimdor",
		fr = "Bonbons et blagues de Kalimdor",
		it = "Dolcetti o scherzetti di Kalimdor",
		ko = "칼림도어의 할로윈",
		pt = "Gostosuras e Travessuras de Kalimdor",
		ru = "'Конфета или жизнь' в Калимдоре",
		cn = "卡利姆多的糖果",
		tw = "卡林多之不給糖就搗蛋",
	},
});
local AchievementSwaps = {
-- #if AFTER 3.2.0
	[TRICKS_KALIMDOR] = 963,	-- Tricks and Treats of Kalimdor (A)
	[TRICKS_EASTERN_KINGDOMS] = 966,	-- Tricks and Treats of Eastern Kingdoms (A)
	[TRICKS_OUTLAND] = 969,	-- Tricks and Treats of Outlands (A)
	-- #if AFTER 4.2.2
	[TRICKS_NORTHREND] = 5836,	-- Tricks and Treats of Northrend (A)
	[TRICKS_CATACLYSM] = 5837,	-- Tricks and Treats of Cataclysm (A)
	-- #endif
-- #endif
}

local function VariableAchHeader(id, t)
	local achID = AchievementSwaps[id]
	if achID then
		return header(HEADERS.Achievement, achID, t)
	end
	return n(id, t)
end

root(ROOTS.Holidays, applyevent(EVENTS.HALLOWS_END, n(HALLOWS_END_HEADER, {
	timeline = { ADDED_1_8_0 },
	groups = {
		-- #if AFTER 2.0.1
		n(ACHIEVEMENTS, {
			ach(1656, {	-- Hallowed Be Thy Name (A) / Hallowed Be Thy Name [MOP+]
				-- Meta Achievement should symlink the contained Achievements from Source
				sym = {{"meta_achievement",
					972,				-- Trick or Treat!
					288,				-- Out With It
					255,				-- Bring Me The Head of... Oh Wait
					289,				-- The Savior of Hallow's End
					981,				-- That Sparkling Smile
					1040,				-- Rotten Hallow (A)
					-- #if AFTER MOP
					1041,				-- Rotten Hallow (H)
					-- #endif
					1261,				-- G.N.E.R.D. Rage
					291,				-- Check Your Head
					283,				-- The Masquerade
					292,				-- Sinister Calling
					-- #if AFTER MOP
					971,				-- Tricks and Treats of Azeroth
					-- #else
					970,				-- Tricks and Treats of Azeroth (A)
					-- #endif
				}},
				timeline = { ADDED_3_0_2 },
				-- #if BEFORE MOP
				races = ALLIANCE_ONLY,
				-- #endif
				groups = {
					title(92),	-- <Name> the Hallowed
				},
			}),
			ach(1657, {	-- Hallowed Be Thy Name (H)
				-- Meta Achievement should symlink the contained Achievements from Source
				sym = {{"meta_achievement",
					972,				-- Trick or Treat!
					288,				-- Out With It
					255,				-- Bring Me The Head of... Oh Wait
					289,				-- The Savior of Hallow's End
					981,				-- That Sparkling Smile
					1041,				-- Rotten Hallow (H)
					1261,				-- G.N.E.R.D. Rage
					291,				-- Check Your Head
					283,				-- The Masquerade
					292,				-- Sinister Calling
					971,				-- Tricks and Treats of Azeroth (H)
				}},
				timeline = { ADDED_3_0_2, REMOVED_5_0_4 },
				races = HORDE_ONLY,
				groups = { title(92) },	-- <Name> the Hallowed
			}),
			ach(10365, {	-- A Frightening Friend
				description = "You need Tier 3 garrison for this.",
				coords = {
					{ 40.1, 70.0, LUNARFALL },	-- Pepe Location (Alliance)
					{ 70.7, 90.2, FROSTWALL },	-- Pepe Location (Horde)
				},
				timeline = { ADDED_6_2_2 },
				groups = { i(282287, { timeline = { ADDED_12_1_5 } }) },	-- Scarecrow Pepe (DECOR!)
			}),
			ach(284, {	-- A Mask For All Occasions
				timeline = { ADDED_3_0_2 },
				groups = {
					crit(2260, {	-- Blood Elf Female Mask
						provider = { "i", 34000 },	-- Blood Elf Female Mask
					}),
					crit(2270, {	-- Blood Elf Male Mask
						provider = { "i", 34002 },	-- Blood Elf Male Mask
					}),
					crit(2261, {	-- Draenei Female Mask
						provider = { "i", 34001 },	-- Draenei Female Mask
					}),
					crit(2271, {	-- Draenei Male Mask
						provider = { "i", 34003 },	-- Draenei Male Mask
					}),
					crit(2262, {	-- Dwarf Female Mask
						provider = { "i", 20562 },	-- Dwarf Female Mask
					}),
					crit(2272, {	-- Dwarf Male Mask
						provider = { "i", 20561 },	-- Dwarf Male Mask
					}),
					crit(2263, {	-- Gnome Female Mask
						provider = { "i", 20392 },	-- Gnome Female Mask
					}),
					crit(2273, {	-- Gnome Male Mask
						provider = { "i", 20391 },	-- Gnome Male Mask
					}),
					crit(17590, {	-- Goblin Female Mask
						provider = { "i", 49212 },	-- Goblin Female Mask
						timeline = { ADDED_4_2_2 },
					}),
					crit(17591, {	-- Goblin Male Mask
						provider = { "i", 49210 },	-- Goblin Male Mask
						timeline = { ADDED_4_2_2 },
					}),
					crit(2264, {	-- Human Female Mask
						provider = { "i", 20565 },	-- Human Female Mask
					}),
					crit(2274, {	-- Human Male Mask
						provider = { "i", 20566 },	-- Human Male Mask
					}),
					crit(2265, {	-- Night Elf Female Mask
						provider = { "i", 20563 },	-- Night Elf Female Mask
					}),
					crit(2275, {	-- Night Elf Male Mask
						provider = { "i", 20564 },	-- Night Elf Male Mask
					}),
					crit(2266, {	-- Orc Female Mask
						provider = { "i", 20569 },	-- Orc Female Mask
					}),
					crit(2276, {	-- Orc Male Mask
						provider = { "i", 20570 },	-- Orc Male Mask
					}),
					crit(2267, {	-- Tauren Female Mask
						provider = { "i", 20571 },	-- Tauren Female Mask
					}),
					crit(2277, {	-- Tauren Male Mask
						provider = { "i", 20572 },	-- Tauren Male Mask
					}),
					crit(2268, {	-- Troll Female Mask
						provider = { "i", 20567 },	-- Troll Female Mask
					}),
					crit(2278, {	-- Troll Male Mask
						provider = { "i", 20568 },	-- Troll Male Mask
					}),
					crit(2269, {	-- Undead Female Mask
						provider = { "i", 20574 },	-- Undead Female Mask
					}),
					crit(2279, {	-- Undead Male Mask
						provider = { "i", 20573 },	-- Undead Male Mask
					}),
					crit(17592, {	-- Worgen Female Mask
						provider = { "i", 49215 },	-- Worgen Female Mask
						timeline = { ADDED_4_2_2 },
					}),
					crit(17593, {	-- Worgen Male Mask
						provider = { "i", 49216 },	-- Worgen Male Mask
						timeline = { ADDED_4_2_2 },
					}),
				},
			}),
			ach(291, {	-- Check Your Head
				timeline = { ADDED_3_0_2 },
				groups = {
					crit(5774, {	-- Blood Elf
						provider = { "i", 34068 }	-- Weighted Jack-o'-Lantern
					}),
					crit(5775, {	-- Draenei
						provider = { "i", 34068 }	-- Weighted Jack-o'-Lantern
					}),
					crit(5776, {	-- Dwarf
						provider = { "i", 34068 }	-- Weighted Jack-o'-Lantern
					}),
					crit(5772, {	-- Gnome
						provider = { "i", 34068 }	-- Weighted Jack-o'-Lantern
					}),
					crit(17855, {	-- Goblin
						timeline = { ADDED_4_2_2 },
						provider = { "i", 34068 }	-- Weighted Jack-o'-Lantern
					}),
					crit(5777, {	-- Human
						provider = { "i", 34068 }	-- Weighted Jack-o'-Lantern
					}),
					crit(5778, {	-- Night Elf
						provider = { "i", 34068 }	-- Weighted Jack-o'-Lantern
					}),
					crit(5779, {	-- Orc
						provider = { "i", 34068 }	-- Weighted Jack-o'-Lantern
					}),
					crit(5780, {	-- Tauren
						provider = { "i", 34068 }	-- Weighted Jack-o'-Lantern
					}),
					crit(5781, {	-- Troll
						provider = { "i", 34068 }	-- Weighted Jack-o'-Lantern
					}),
					crit(5782, {	-- Undead
						provider = { "i", 34068 }	-- Weighted Jack-o'-Lantern
					}),
					crit(17854, {	-- Worgen
						timeline = { ADDED_4_2_2 },
						provider = { "i", 34068 }	-- Weighted Jack-o'-Lantern
					}),
				},
			}),
			ach(18959, { timeline = { ADDED_10_1_7 } }),	-- Don't Lose Your Head, Man
			ach(64162, {	-- Drustvar Choc-O-Drop Designer
				maps = { FOUNDERS_POINT, RAZORWIND_SHORES },
				timeline = { ADDED_12_1_5 },
			}),
			ach(64160, {	-- Duskwood Caranek Crafter
				maps = { FOUNDERS_POINT, RAZORWIND_SHORES },
				timeline = { ADDED_12_1_5 },
			}),
			ach(64161, {	-- Felwood Fudge Bite Former
				maps = { FOUNDERS_POINT, RAZORWIND_SHORES },
				timeline = { ADDED_12_1_5 },
			}),
			ach(1261, {	-- G.N.E.R.D. Rage
				provider = { "i", 37583 },	-- G.N.E.R.D.S.
				timeline = { ADDED_3_0_2 },
			}),
			ach(62501, {	-- I Ain't Afraid of no Ghost
				provider = { "i", 249386 },	-- Ghost Gear
				maps = { FOUNDERS_POINT, RAZORWIND_SHORES },
				timeline = { ADDED_12_1_5 },
			}),
			ach(288, {	-- Out With It
				description = "Eat 2-10 Tricky Treats quickly to trigger the debuff. Results may vary.",
				cost = { { "i", TRICKY_TREAT, 3 } },
				timeline = { ADDED_3_0_2 },
			}),
			ach(1040, {	-- Rotten Hallow (A)
				timeline = { ADDED_3_0_2 },
				races = ALLIANCE_ONLY,
				groups = {
					-- #if AFTER 4.0.1
					crit(17607, {	-- A Time to Gain
						_quests = { 29075 },	-- A Time to Gain
					}),
					crit(17606, {	-- A Time to Lose
						_quests = { 29371 },	-- A Time to Lose
					}),
					crit(3217, {	-- Clean Up In Stormwind
						_quests = { 29144 },	-- Clean Up In Stormwind
					}),
					crit(3216, {	-- Stink Bombs Away!
						_quests = { 29054 },	-- Stink Bombs Away!
					}),
					-- #else
					crit(3216, {	-- Crashing the Wickerman Festival
						_quests = { 1658 },	-- Crashing the Wickerman Festival
					}),
					crit(3217, {	-- The Power of Pine
						_quests = { 8373 },	-- The Power of Pine
					}),
					-- #endif
				},
			}),
			ach(1041, {	-- Rotten Hallow (H)
				timeline = { ADDED_3_0_2 },
				races = HORDE_ONLY,
				groups = {
					-- #if AFTER 4.0.1
					crit(17608, {	-- A Time to Build Up
						_quests = { 29376 },	-- A Time to Build Up
					}),
					crit(17609, {	-- A Time to Break Down
						_quests = { 29377 },	-- A Time to Break Down
					}),
					crit(3219, {	-- Clean Up in Undercity
						_quests = { 29375 },	-- Clean Up in Undercity
					}),
					crit(3218, {	-- Stink Bombs Away!
						_quests = { 29374 },	-- Stink Bombs Away!
					}),
					-- #else
					crit(3218, {	-- Rotten Eggs and Ruined Kegs
						_quests = { 8409 },	-- Rotten Eggs and Ruined Kegs
					}),
					crit(3219, {	-- Stinking Up Southshore
						_quests = { 1657 },	-- Stinking Up Southshore
					}),
					-- #endif
				},
			}),
			ach(292, {	-- Sinister Calling
				-- #if BEFORE WRATH
				providers = {
					{ "i", 33154 },	-- Sinister Squashling
					{ "i", 33292 },	-- Hallowed Helm
				},
				timeline = { ADDED_2_2_2 },
				-- #else
				crit(5783, {	-- Sinister Squashling
					provider = { "i", 33154 },	-- Sinister Squashling
				}),
				crit(12908, {	-- Hallowed Helm
					provider = { "i", 33292 },	-- Hallowed Helm
				}),
				-- #endif
			}),
			ach(62500, {	-- Sweet Tooth
				maps = { FOUNDERS_POINT, RAZORWIND_SHORES },
				timeline = { ADDED_12_1_5 },
			}),
			ach(981, {	-- That Sparkling Smile
				provider = { "i", 37604 },	-- Tooth Pick
				timeline = { ADDED_3_0_2 },
			}),
			ach(979, {	-- The Mask Task
				timeline = { ADDED_3_0_2 },
			}),
			ach(283, {	-- The Masquerade
				-- #if AFTER TWW
				description = "You can only get transformed by party members of your faction.",
				-- #endif
				timeline = { ADDED_3_0_2 },
				groups = {
					crit(3209, {	-- Transformed by Hallowed Wand - Bat
						provider = { "i", 20410 },	-- Hallowed Wand - Bat
					}),
					crit(3210, {	-- Transformed by Hallowed Wand - Ghost
						provider = { "i", 20409 },	-- Hallowed Wand - Ghost
					}),
					crit(3211, {	-- Transformed by Hallowed Wand - Leper Gnome
						provider = { "i", 20399 },	-- Hallowed Wand - Leper Gnome
					}),
					crit(3212, {	-- Transformed by Hallowed Wand - Ninja
						provider = { "i", 20398 },	-- Hallowed Wand - Ninja
					}),
					crit(3213, {	-- Transformed by Hallowed Wand - Pirate
						provider = { "i", 20397 },	-- Hallowed Wand - Pirate
					}),
					crit(3214, {	-- Transformed by Hallowed Wand - Skeleton
						provider = { "i", 20411 },	-- Hallowed Wand - Skeleton
					}),
					crit(3215, {	-- Transformed by Hallowed Wand - Wisp
						provider = { "i", 20414 },	-- Hallowed Wand - Wisp
					}),
				},
			}),
			ach(289, {	-- The Savior of Hallow's End
				maps = { ELWYNN_FOREST, AZUREMYST_ISLE, TIRISFAL_GLADES, EVERSONG_WOODS, DUN_MOROGH, DUROTAR },
				timeline = { ADDED_3_0_2 },
			}),
			ach(972, {	-- Trick or Treat!
				timeline = { ADDED_3_0_2 },
			}),
			ach(971, {	-- Tricks and Treats of Azeroth (H) / Tricks and Treats of Azeroth [MOP+]
				-- Meta Achievement should symlink the contained Achievements from Source
				sym = {{"meta_achievement",
					-- #if AFTER MOP
					966,	-- Tricks and Treats of Eastern Kingdoms (A)
					-- #endif
					967,	-- Tricks and Treats of Eastern Kingdoms (H)
					-- #if AFTER MOP
					963,	-- Tricks and Treats of Kalimdor (A)
					-- #endif
					965,	-- Tricks and Treats of Kalimdor (H)
					-- #if AFTER MOP
					969,	-- Tricks and Treats of Outlands (A)
					-- #endif
					968,	-- Tricks and Treats of Outlands (H)
				}},
				-- #if BEFORE MOP
				races = HORDE_ONLY,
				-- #endif
				timeline = { ADDED_3_0_2 },
			}),
			ach(970, {	-- Tricks and Treats of Azeroth (A)
				-- Meta Achievement should symlink the contained Achievements from Source
				sym = {{"meta_achievement",
					966,	-- Tricks and Treats of Eastern Kingdoms (A)
					963,	-- Tricks and Treats of Kalimdor (A)
					969,	-- Tricks and Treats of Outlands (A)
				}},
				races = ALLIANCE_ONLY,
				timeline = { ADDED_3_0_2, REMOVED_5_0_4 },
			}),
			ach(5837, {	-- Tricks and Treats of Cataclysm (A)
				races = ALLIANCE_ONLY,
				timeline = { ADDED_4_2_2 },
			}),
			ach(5838, {	-- Tricks and Treats of Cataclysm (H)
				races = HORDE_ONLY,
				timeline = { ADDED_4_2_2 },
			}),
			ach(966, {	-- Tricks and Treats of Eastern Kingdoms (A)
				races = ALLIANCE_ONLY,
				timeline = { ADDED_3_0_2 },
			}),
			ach(967, {	-- Tricks and Treats of Eastern Kingdoms (H)
				races = HORDE_ONLY,
				timeline = { ADDED_3_0_2 },
			}),
			ach(963, {	-- Tricks and Treats of Kalimdor (A)
				races = ALLIANCE_ONLY,
				timeline = { ADDED_3_0_2 },
			}),
			ach(965, {	-- Tricks and Treats of Kalimdor (H)
				races = HORDE_ONLY,
				timeline = { ADDED_3_0_2 },
			}),
			ach(63400, { timeline = { ADDED_12_1_0 } }),	-- Tricks and Treats of Midnight
			ach(5836, {	-- Tricks and Treats of Northrend (A)
				races = ALLIANCE_ONLY,
				timeline = { ADDED_4_2_2 },
			}),
			ach(5835, {	-- Tricks and Treats of Northrend (H)
				races = HORDE_ONLY,
				timeline = { ADDED_4_2_2 },
			}),
			ach(969, {	-- Tricks and Treats of Outlands (A)
				races = ALLIANCE_ONLY,
				timeline = { ADDED_3_0_2 },
			}),
			ach(968, {	-- Tricks and Treats of Outlands (H)
				races = HORDE_ONLY,
				timeline = { ADDED_3_0_2 },
			}),
			ach(7601, {	-- Tricks and Treats of Pandaria (A)
				races = ALLIANCE_ONLY,
				timeline = { ADDED_5_0_4 },
			}),
			ach(7602, {	-- Tricks and Treats of Pandaria (H)
				races = HORDE_ONLY,
				timeline = { ADDED_5_0_4 },
			}),
			ach(18360, { timeline = { ADDED_10_1_5 } }),	-- Tricks and Treats of the Dragon Isles (automated)
			ach(40862, { timeline = { ADDED_11_0_2 } }),	-- Tricks and Treats of Khaz Algar (automated)
		}),
		-- #endif
		n(23682, {	-- Headless Horseman
			-- #if AFTER WRATH
			-- #if BEFORE 10.1.7
			description = "You can loot the Loot-Stuffed Filled Pumpkin once a day per character by queueing for the encounter in the Dungeon Finder.",
			-- #endif
			-- #else
			questID = 11392,	-- Call the Headless Horseman
			-- #endif
			timeline = { ADDED_2_2_2 },
			maps = {
				SCARLET_MONASTERY,
				436,	-- Scarlet Monastery, Crusader's Chapel
			},
			-- #if AFTER 4.0.1
			sym = {
				-- Masks & Wands & Candy were potentially added as loot directly to him?
				{ "selectparent" },	-- Select the holiday root.
				{ "pop" },	-- Get the Rewards.
				{ "where", "headerID", REWARDS },	-- Select the "Rewards" header.
				{ "pop" },	-- Get the Rewards.
				{ "exclude", "itemID",
					69187, 69188, 69189, 69190, 69192, 69193, 69194, 69195,	-- Exclude Murloc, Naga, Ogre, Vrykul Masks
					20392,	-- Exclude Gnome Female Mask?
					20413,	-- Exclude Hallowed Wand - Random
				},
				{ "select", "itemID",
					37585,	-- Chewy Fel Taffy
					37583,	-- G.N.E.R.D.S.
					37582,	-- Pyroblast Cinnamon Ball
					37584,	-- Soothing Spearmint Candy
					37606,	-- Penny Pouch
					37604,	-- Tooth Pick
				},
			},
			-- #endif
			-- Minimum level that can queue for event
			lvl =
				-- #if AFTER 9.0.1
				10,
				-- #elseif AFTER 7.3.2
				23,
				-- #elseif AFTER 7.0.1
				101,
				-- #elseif AFTER 6.0.1
				99,
				-- #elseif AFTER 5.0.1
				89,
				-- #elseif AFTER 4.2.2
				84,
				-- #elseif AFTER 4.0.1
				78,
				-- #else
				25,	-- Zone in level requirement for SM.
				-- #endif
			groups = {
				ach(18962, { timeline = { ADDED_10_1_7 } }),	-- A Cleansing Fire
				ach(255, { timeline = { ADDED_3_0_2, REMOVED_10_1_7 } }),	-- Bring Me The Head of... Oh Wait
				ach(18960, { timeline = { ADDED_10_1_7 } }),	-- Kickin' With the Wick
				i(117392, {	-- Loot-Filled Pumpkin (Epic)
					timeline = { ADDED_6_0_2, REMOVED_10_1_7 },
					-- #if BEFORE 10.1.7
					sym = {
						{ "selectparent", 2 },	-- Select the holiday root.
						{ "pop" },	-- Get the Rewards.
						{ "where", "headerID", REWARDS },	-- Select the "Rewards" header.
						{ "pop" },	-- Get the Rewards.
						{ "contains", "itemID", TRICKY_TREAT, unpack(MASK_IDS) },	-- Tricky Treat & All the Masks
						{ "exclude", "itemID", 69187, 69188, 69189, 69190, 69192, 69193, 69194, 69195 },	-- Exclude Murloc, Naga, Ogre, Vrykul Masks
					},
					-- #endif
					-- Minimum level this bag drops (not 100% sure)
					lvl =
						-- #if AFTER 9.0.1
						50,
						-- #elseif AFTER 8.0.1
						110,
						-- #elseif AFTER 7.2.5
						98,
						-- #else
						nil,
						-- #endif
					groups = {
						-- #if BEFORE 10.1.7
						ach(980, {	-- The Horseman's Reins
							provider = { "i", 37012 },	-- The Horseman's Reins
							timeline = { ADDED_2_2_2 },
							filterID = MOUNTS,
						}),
						i(33292, { timeline = { ADDED_2_2_2 } }),	-- Hallowed Helm
						i(37012, { timeline = { ADDED_2_2_2 } }),	-- Headless Horseman's Mount (MOUNT!)
						i(37011, {	-- Magic Broom (MOUNT!)
							timeline = { ADDED_2_4_3 },
							collectible = false,
						}),
						i(33154, { timeline = { ADDED_2_2_2 } }),	-- Sinister Squashling (PET!)
						i(117356, { timeline = { ADDED_6_0_2 } }),	-- The Horseman's Sinister Slicer
						i(117355, { timeline = { ADDED_6_0_2 } }),	-- The Horseman's Horrific Hood
						-- #endif
					},
				}),
				i(209024, {	-- Loot-Filled Pumpkin (Epic Bag after 10.1.7 Rework)
					timeline = { ADDED_10_1_7 },
					sym = {
						{ "selectparent", 2 },	-- Select the holiday root.
						{ "pop" },	-- Get the Rewards.
						{ "where", "headerID", REWARDS },	-- Select the "Rewards" header.
						{ "pop" },	-- Get the Rewards.
						{ "contains", "itemID", TRICKY_TREAT, unpack(MASK_IDS) },	-- Tricky Treat & All the Masks
						{ "exclude", "itemID", 69187, 69188, 69189, 69190, 69192, 69193, 69194, 69195 },	-- Exclude Murloc, Naga, Ogre, Vrykul Masks
					},
					-- #if BEFORE 11.2.5
					description = "Your first attempt of the day has an increased chance at the mount, pet, and manuscript. Enabling the curses increases the chances for the mount, at least. Subsequent attempts scan still drop these items, but at a significantly lower rate (as far as we know).",	-- Manual override for src\Settings\Pages\Interface - Information.lua
					-- #endif
					groups = {
						ach(980, {	-- The Horseman's Reins
							provider = { "i", 37012 },	-- The Horseman's Reins
							filterID = MOUNTS,
							timeline = { ADDED_2_2_2 },
						}),
						ach(17547, {	-- The Lick King
							provider = { "i", 211271 },	-- Arfus (PET)
						}),
						i(211271, {	-- Arfus (PET)
							-- #if AFTER 11.2.5
							description = "While the first attempt each day has a greatly increased drop chance, this item can be farmed using multiple characters.",
							-- #endif
						}),
						i(33292, { timeline = { ADDED_2_2_2 } }),	-- Hallowed Helm
						i(37012, {	-- Headless Horseman's Mount (MOUNT!)
							-- #if AFTER 10.1.7
							description = "Enabling the curses increases the chances for the mount. Subsequent attempts scan still drop the mount, according to Blizzard, but at a significantly lower rate (as far as we know).",
							-- #endif
							timeline = { ADDED_2_2_2 },
						}),
						i(37011, {	-- Magic Broom (MOUNT!)
							collectible = false,
							timeline = { ADDED_2_4_3 },
						}),
						i(226461, { timeline = { ADDED_11_0_5, REMOVED_11_2_5 } }),	-- Patched Harvest Golem's Belt
						i(226458, { timeline = { ADDED_11_0_5, REMOVED_11_2_5 } }),	-- Patched Harvest Golem's Boots
						i(226457, { timeline = { ADDED_11_0_5, REMOVED_11_2_5 } }),	-- Patched Harvest Golem's Chest
						i(226456, { timeline = { ADDED_11_0_5, REMOVED_11_2_5 } }),	-- Patched Harvest Golem's Gloves
						i(226690, { timeline = { ADDED_11_0_5, REMOVED_11_2_5 } }),	-- Patched Harvest Golem's Head
						i(226455, { timeline = { ADDED_11_0_5, REMOVED_11_2_5 } }),	-- Patched Harvest Golem's Pants
						i(226454, { timeline = { ADDED_11_0_5, REMOVED_11_2_5 } }),	-- Patched Harvest Golem's Pauldrons
						i(33154, { timeline = { ADDED_2_2_2 } }),	-- Sinister Squashling (PET!)
						i(247721, {	-- The Headless Horseman's Ghoulish Charger (MOUNT!)
							-- #if AFTER 11.2.5
							description = "While the first attempt each day has a greatly increased drop chance, this item can be farmed using multiple characters.",
							-- #endif
							timeline = { ADDED_11_2_5 },
						}),
						i(247966, {	-- The Horseman's Ghoulish Breastplate
							-- #if BEFORE 12.0.0
							description = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
							-- #endif
							timeline = { ADDED_11_2_5 },
						}),
						i(247967, {	-- The Horseman's Ghoulish Cinch
							-- #if BEFORE 12.0.0
							description = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
							-- #endif
							timeline = { ADDED_11_2_5 },
						}),
						i(247972, {	-- The Horseman's Ghoulish Cloak
							-- #if BEFORE 12.0.0
							description = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
							-- #endif
							timeline = { ADDED_11_2_5 },
						}),
						i(250708, {	-- The Horseman's Ghoulish Cowl
							-- #if BEFORE 12.0.0
							description = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
							-- #endif
							timeline = { ADDED_11_2_5 },
						}),
						i(247968, {	-- The Horseman's Ghoulish Greaves
							-- #if BEFORE 12.0.0
							description = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
							-- #endif
							timeline = { ADDED_11_2_5 },
						}),
						i(247971, {	-- The Horseman's Ghoulish Grips
							-- #if BEFORE 12.0.0
							description = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
							-- #endif
							timeline = { ADDED_11_2_5 },
						}),
						i(247964, {	-- The Horseman's Ghoulish Helm
							-- #if BEFORE 12.0.0
							description = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
							-- #endif
							timeline = { ADDED_11_2_5 },
						}),
						i(247965, {	-- The Horseman's Ghoulish Mantle
							-- #if BEFORE 12.0.0
							description = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
							-- #endif
							timeline = { ADDED_11_2_5 },
						}),
						i(247969, {	-- The Horseman's Ghoulish Treads
							-- #if BEFORE 12.0.0
							description = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
							-- #endif
							timeline = { ADDED_11_2_5 },
						}),
						i(117356, { timeline = { ADDED_6_0_2 } }),	-- The Horseman's Sinister Slicer
						i(117355, { timeline = { ADDED_6_0_2 } }),	-- The Horseman's Horrific Hood
						i(208485),	-- The Scarlet Key
						i(208680, {	-- Windborne Velocidrake: Hallow's End Armor (MM!)
							description = "This item is only eligible to drop for the first attempt per day per Warband, but every eligible failed attempt increases the drop chance.",
						}),
					},
				}),
				i(149574, {	-- Loot-Stuffed Pumpkin (Blue Bag after 7.2.5 Rework)
					-- Bag introduced in 7.2.5 [Legion]
					-- Only i600 has ever dropped from this bag, not the other iLvLs
					timeline = { ADDED_7_0_3 },
					-- #if BEFORE 10.1.7
					sym = {
						{ "selectparent", 2 },	-- Select the holiday root.
						{ "pop" },	-- Get the Rewards.
						{ "where", "headerID", REWARDS },	-- Select the "Rewards" header.
						{ "pop" },	-- Get the Rewards.
						{ "contains", "itemID", TRICKY_TREAT, unpack(MASK_IDS) },	-- Tricky Treat & All the Masks
						{ "exclude", "itemID", 69187, 69188, 69189, 69190, 69192, 69193, 69194, 69195 },	-- Exclude Murloc, Naga, Ogre, Vrykul Masks
					},
					-- #endif
					groups = {
						-- #if BEFORE 10.1.7
						i(117356, { timeline = { ADDED_6_0_2 } }),	-- The Horseman's Sinister Slicer
						i(117355, { timeline = { ADDED_6_0_2 } }),	-- The Horseman's Horrific Hood
						i(33292, { timeline = { ADDED_2_2_2 } }),	-- Hallowed Helm
						i(37011, {	-- Magic Broom (MOUNT!)
							collectible = false,
							timeline = { ADDED_2_4_3 },
						}),
						-- #endif
					},
				}),
				i(209026, {	-- Loot-Stuffed Pumpkin (Blue Bag after 10.1.7 Rework)
					timeline = { ADDED_10_1_7 },
					sym = {
						{ "selectparent", 2 },	-- Select the holiday root.
						{ "pop" },	-- Get the Rewards.
						{ "where", "headerID", REWARDS },	-- Select the "Rewards" header.
						{ "pop" },	-- Get the Rewards.
						{ "contains", "itemID", TRICKY_TREAT, unpack(MASK_IDS) },	-- Tricky Treat & All the Masks
						{ "exclude", "itemID", 69187, 69188, 69189, 69190, 69192, 69193, 69194, 69195 },	-- Exclude Murloc, Naga, Ogre, Vrykul Masks
					},
					groups = {
						i(117356, { timeline = { ADDED_6_0_2 } }),	-- The Horseman's Sinister Slicer
						i(117355, { timeline = { ADDED_6_0_2 } }),	-- The Horseman's Horrific Hood
						i(33292, { timeline = { ADDED_2_2_2 } }),	-- Hallowed Helm
						i(37011, {	-- Magic Broom (MOUNT!)
							collectible = false,
							timeline = { ADDED_2_4_3 },
						}),
					},
				}),
				i(54516, {	-- Loot-Stuffed Pumpkin
					-- This bag was removed at the end of MoP and in WoD epic bag introduced
					timeline = { ADDED_3_3_0, REMOVED_6_0_2 },
					-- #if AFTER 4.2.0
					sym = {
						{ "selectparent", 2 },	-- Select the holiday root.
						{ "pop" },	-- Get the Rewards.
						{ "where", "headerID", REWARDS },	-- Select the "Rewards" header.
						{ "pop" },	-- Get the Rewards.
						{ "contains", "itemID", TRICKY_TREAT, unpack(MASK_IDS) },	-- Tricky Treat & All the Masks
						{ "exclude", "itemID", 69187, 69188, 69189, 69190, 69192, 69193, 69194, 69195 },	-- Exclude Murloc, Naga, Ogre, Vrykul Masks
					},
					-- #endif
					groups = {
						-- #if AFTER 3.3.0
						-- #if BEFORE 4.0.1
						i(49426),	-- Emblem of Frost
						-- #endif
						-- #endif
						-- #if BEFORE 6.0.1
						ach(980, {	-- The Horseman's Reins
							provider = { "i", 37012 },	-- The Horseman's Reins
							timeline = { ADDED_2_2_2 },
							filterID = MOUNTS,
						}),
						i(37012, { timeline = { ADDED_2_2_2 } }),	-- Headless Horseman's Mount (MOUNT!)
						-- #endif
						-- Mists of Pandaria
						-- #if ANYCLASSIC
						i(263014, { timeline = { ADDED_5_5_1, REMOVED_5_5_4 } }),	-- The Horseman's Horrific Hood (489)
						i(263018, { timeline = { ADDED_5_5_1, REMOVED_5_5_4 } }),	-- The Horseman's Sinister Slicer (489)
						i(282172, { timeline = { ADDED_5_5_4, REMOVED_6_0_2 } }),	-- The Horseman's Horrific Hood (528)
						i(282174, { timeline = { ADDED_5_5_4, REMOVED_6_0_2 } }),	-- The Horseman's Sinister Slicer (528)
						i(87569, { timeline = { CREATED_5_0_4 } }),	-- The Horseman's Horrific Hood
						i(87570, { timeline = { CREATED_5_0_4 } }),	-- The Horseman's Sinister Slicer
						-- #else
						i(87569, { timeline = { ADDED_5_0_4, REMOVED_6_0_2 } }),	-- The Horseman's Horrific Hood
						i(87570, { timeline = { ADDED_5_0_4, REMOVED_6_0_2 } }),	-- The Horseman's Sinister Slicer
						-- #endif
						-- Cataclysm
						i(71326, { timeline = { ADDED_4_2_2, REMOVED_5_0_4 } }),	-- The Horseman's Horrific Helm
						i(71325, { timeline = { ADDED_4_2_2, REMOVED_5_0_4 } }),	-- The Horseman's Sinister Saber
						-- Wrath of the Lich King Classic
						-- #if ANYCLASSIC
						i(211851, { timeline = { ADDED_3_3_0, REMOVED_4_0_1 } }),	-- The Horseman's Baleful Blade
						i(211850, { timeline = { ADDED_3_3_0, REMOVED_4_0_1 } }),	-- The Horseman's Horrific Helm
						i(211817, { timeline = { ADDED_3_3_0, REMOVED_4_0_1 } }),	-- Ring of Ghoulish Glee
						i(211844, { timeline = { ADDED_3_3_0, REMOVED_4_0_1 } }),	-- The Horseman's Seal
						i(211847, { timeline = { ADDED_3_3_0, REMOVED_4_0_1 } }),	-- Wicked Witch's Band
						-- #endif
						i(33154, { timeline = { ADDED_2_2_2 } }),	-- Sinister Squashling (PET!)
						i(33292, { timeline = { ADDED_2_2_2 } }),	-- Hallowed Helm
						i(33176, { timeline = { ADDED_2_2_2, DELETED_4_2_2 } }),	-- Flying Broom (MOUNT!)
						i(37011, {	-- Magic Broom (MOUNT!)
							collectible = false,
							timeline = { ADDED_2_4_3 },
						}),
					},
				}),

				-- #if BEFORE WRATH
				ach(980, {	-- The Horseman's Reins
					provider = { "i", 37012 },	-- The Horseman's Reins
					filterID = MOUNTS,
				}),
				i(37012),	-- Headless Horseman's Mount (MOUNT!)
				-- #endif
				-- Legion+
				i(143901, { timeline = { ADDED_7_0_3 } }),	-- Band of the Petrified Pumpkin
				i(143904, { timeline = { ADDED_7_0_3 } }),	-- Seal of Ghoulish Glee
				i(143903, { timeline = { ADDED_7_0_3 } }),	-- The Horseman's Ring
				i(143902, { timeline = { ADDED_7_0_3 } }),	-- Wicked Witch's Signet
				-- Warlords of Draenor
				i(117363, { timeline = { ADDED_6_0_2, REMOVED_7_0_3 } }),	-- Band of the Petrified Pumpkin
				i(117364, { timeline = { ADDED_6_0_2, REMOVED_7_0_3 } }),	-- Seal of Ghoulish Glee
				i(117365, { timeline = { ADDED_6_0_2, REMOVED_7_0_3 } }),	-- The Horseman's Ring
				i(117362, { timeline = { ADDED_6_0_2, REMOVED_7_0_3 } }),	-- Wicked Witch's Signet
				-- Mists of Pandaria
				-- #if ANYCLASSIC
				i(263013, { timeline = { ADDED_5_5_1, REMOVED_6_0_2 } }),	-- Band of the Petrified Pumpkin
				i(263010, { timeline = { ADDED_5_5_1, REMOVED_6_0_2 } }),	-- Seal of Ghoulish Glee
				i(263011, { timeline = { ADDED_5_5_1, REMOVED_6_0_2 } }),	-- The Horseman's Ring
				i(263012, { timeline = { ADDED_5_5_1, REMOVED_6_0_2 } }),	-- Wicked Witch's Signet
				i(88167, { timeline = { CREATED_5_0_4 } }),	-- Band of the Petrified Pumpkin
				i(88168, { timeline = { CREATED_5_0_4 } }),	-- Seal of Ghoulish Glee
				i(88169, { timeline = { CREATED_5_0_4 } }),	-- The Horseman's Ring
				i(88166, { timeline = { CREATED_5_0_4 } }),	-- Wicked Witch's Signet
				-- #else
				i(88167, { timeline = { ADDED_5_0_4, REMOVED_6_0_2 } }),	-- Band of the Petrified Pumpkin
				i(88168, { timeline = { ADDED_5_0_4, REMOVED_6_0_2 } }),	-- Seal of Ghoulish Glee
				i(88169, { timeline = { ADDED_5_0_4, REMOVED_6_0_2 } }),	-- The Horseman's Ring
				i(88166, { timeline = { ADDED_5_0_4, REMOVED_6_0_2 } }),	-- Wicked Witch's Signet
				-- #endif
				-- Cataclysm
				i(71327, { timeline = { ADDED_4_2_2, REMOVED_5_0_4 } }),	-- Band of Ghoulish Glee
				i(71330, { timeline = { ADDED_4_2_2, REMOVED_5_0_4 } }),	-- Seal of the Petrified Pumpkin
				i(71328, { timeline = { ADDED_4_2_2, REMOVED_5_0_4 } }),	-- The Horseman's Signet
				i(71329, { timeline = { ADDED_4_2_2, REMOVED_5_0_4 } }),	-- Wicked Witch's Ring
				-- Wrath of the Lich King
				i(49128, { timeline = { ADDED_3_0_2, REMOVED_3_3_0 } }),	-- The Horseman's Baleful Blade
				i(49126, { timeline = { ADDED_3_0_2, REMOVED_3_3_0 } }),	-- The Horseman's Horrific Helm
				i(49121, { timeline = { ADDED_3_0_2, REMOVED_3_3_0 } }),	-- Ring of Ghoulish Glee
				i(49123, { timeline = { ADDED_3_0_2, REMOVED_3_3_0 } }),	-- The Horseman's Signet
				i(49124, { timeline = { ADDED_3_0_2, REMOVED_3_3_0 } }),	-- Wicked Witch's Band
				-- Burning Crusade
				-- #if CLASSIC_ANNIVERSARY
				--i(281893, {	-- The Horseman's Blade [Level 70, 100 GS] TODO: Missing ID blizz added multiples ids
				--	timeline = { ADDED_2_5_6_PHASE_3, REMOVED_3_0_2 },
				--}),
				--i(281895, {	-- The Horseman's Helm [Level 70, 100 GS] TODO: Missing ID blizz added multiples ids
				--	timeline = { ADDED_2_5_6_PHASE_3, REMOVED_3_0_2 },
				--}),
				i(281907, {	-- Ring of Ghoulish Delight [Level 70, 100 GS]
					timeline = { ADDED_2_5_6_PHASE_3, REMOVED_3_0_2 },
				}),
				i(281911, {	-- The Horseman's Signet Ring [Level 70, 100 GS]
					timeline = { ADDED_2_5_6_PHASE_3, REMOVED_3_0_2 },
				}),
				i(281915, {	-- Witches Band [Level 70, 100 GS]
					timeline = { ADDED_2_5_6_PHASE_3, REMOVED_3_0_2 },
				}),
				-- #else
				i(38175, { timeline = { REMOVED_3_0_2 } }),	-- The Horseman's Blade
				i(33808, { timeline = { REMOVED_3_0_2 } }),	-- The Horseman's Helm
				i(34075, { timeline = { REMOVED_3_0_2 } }),	-- Ring of Ghoulish Delight
				i(34073, { timeline = { REMOVED_3_0_2 } }),	-- The Horseman's Signet Ring
				i(34074, { timeline = { REMOVED_3_0_2 } }),	-- Witches Band
				-- #endif
				-- #if BEFORE WRATH
				i(33154),	-- Sinister Squashling (PET!)
				i(33292),	-- Hallowed Helm
				i(37011, {	-- Magic Broom (MOUNT!)
					collectible = false,
					timeline = { ADDED_2_4_3 },
				}),
				-- #endif
				-- #if NOT ANYCLASSIC
				-- #if BEFORE LEGION
				i(33176, { timeline = { ADDED_2_2_2, DELETED_4_2_2 } }),	-- Flying Broom (MOUNT!)
				i(33182, { timeline = { REMOVED_2_4_3 } }),	-- Swift Flying Broom (MOUNT!)
				i(33184, { timeline = { REMOVED_2_4_3 } }),	-- Swift Magic Broom (MOUNT!)
				i(33183, { timeline = { REMOVED_2_4_3 } }),	-- Old Magic Broom (MOUNT!)
				-- #endif
				-- #endif
				i(TRICKY_TREAT, { timeline = { ADDED_2_4_3 } }),
				i(34068),	-- Weighted Jack-o'-Lantern
			},
		}),
		petbattle(filter(BATTLE_PETS, {
			description = "|cFFFFD700Ghastly Rats|r, |cFFFFD700Ghost Maggots|r, and |cFFFFD700Spectral Spinners|r are only present in your Garrison once the |cFFFFD700Creepy Crawlers|r decoration is applied. This can be bought for |cFFFFD7005 Spooky Supplies|r from |cFFFFD700Izzy Hollyfizzle|r in the Garrison.",
			timeline = { ADDED_6_2_2 },
			maps = {
				FROSTWALL,
				LUNARFALL,
			},
			cost = { { "i", 128664, 1 } },	-- Creepy Crawlers
			groups = {
				pet(1741),	-- Ghastly Rat (PET!)
				pet(1740),	-- Ghost Maggot (PET!)
				pet(1730),	-- Spectral Spinner (PET!)
			},
		})),
		header(HEADERS.Quest, 12406, {	-- Candy Bucket Quests
			timeline = { ADDED_2_2_2 },
			groups = {
				header(HEADERS.Achievement, 63400, timelineSelf({ timeline = { ADDED_12_1_5 } }, {	-- Tricks and Treats of Midnight
					candybucket(97213, {	-- Candy Bucket - The Arcantina
						provider = { "o", 660449 },	-- Candy Bucket
						coord = { 63.0, 71.3, ARCANTINA },
					}),
					candybucket(97142, {	-- Candy Bucket - Silvermoon City, Wayfarer's Rest
						provider = { "o", 659876 },	-- Candy Bucket
						coord = { 55.8, 69.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					candybucket(97143, {	-- Candy Bucket - Eversong Woods, Fairbreeze Village
						provider = { "o", 659880 },	-- Candy Bucket
						coord = { 46.4, 46.1, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					candybucket(97148, {	-- Candy Bucket - Eversong Woods, Tranquillien
						provider = { "o", 659903 },	-- Candy Bucket
						coord = { 49.0, 68.5, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					candybucket(97206, {	-- Candy Bucket - Harandar, The Den
						provider = { "o", 660352 },	-- Candy Bucket
						coord = { 65.0, 63.8, 2576 },	-- The Den
					}),
					candybucket(97155, {	-- Candy Bucket - Harandar, Har'athir
						provider = { "o", 659952 },	-- Candy Bucket
						coord = { 69.1, 51.7, MAP.MIDNIGHT.HARANDAR },
					}),
					candybucket(97154, {	-- Candy Bucket - Harandar, Har'kuai
						provider = { "o", 659949 },	-- Candy Bucket
						coord = { 66.1, 24.5, MAP.MIDNIGHT.HARANDAR },
					}),
					candybucket(97208, {	-- Candy Bucket - Harandar, Har'mara
						provider = { "o", 660392 },	-- Candy Bucket
						coord = { 35.1, 22.8, MAP.MIDNIGHT.HARANDAR },
					}),
					candybucket(97207, {	-- Candy Bucket - Harandar, Har'alnor
						provider = { "o", 660368 },	-- Candy Bucket
						coord = { 30.9, 65.0, MAP.MIDNIGHT.HARANDAR },
					}),
					candybucket(97209, {	-- Candy Bucket - Voidstorm, Locus Point
						provider = { "o", 660442 },	-- Candy Bucket
						coord = { 41.7, 74.6, MAP.MIDNIGHT.VOIDSTORM },
					}),
					candybucket(97211, {	-- Candy Bucket - Voidstorm, Slayer's Rise [A]
						provider = { "o", 660447 },	-- Candy Bucket
						coord = { 76.0, 77.6, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
						races = ALLIANCE_ONLY,
					}),
					candybucket(97212, {	-- Candy Bucket - Voidstorm, Slayer's Rise [H]
						provider = { "o", 660448 },	-- Candy Bucket
						coord = { 21.3, 55.4, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
						races = HORDE_ONLY,
					}),
					candybucket(97210, {	-- Candy Bucket - Voidstorm, The Ingress
						provider = { "o", 660445 },	-- Candy Bucket
						coord = { 35.7, 58.6, MAP.MIDNIGHT.VOIDSTORM },
					}),
					candybucket(97150, {	-- Candy Bucket - Zul'Aman, Amani'Zar
						provider = { "o", 659923 },	-- Candy Bucket
						coord = { 45.3, 65.1, MAP.MIDNIGHT.ZULAMAN },
					}),
					candybucket(97151, {	-- Candy Bucket - Zul'Aman, Camp Stonewash
						provider = { "o", 659936 },	-- Candy Bucket
						coord = { 46.6, 25.9, MAP.MIDNIGHT.ZULAMAN },
					}),
					candybucket(97152, {	-- Candy Bucket - Zul'Aman, Witherbark Bluffs
						provider = { "o", 659940 },	-- Candy Bucket
						coord = { 36.9, 23.4, MAP.MIDNIGHT.ZULAMAN },
					}),
				})),
				header(HEADERS.Achievement, 40862, timelineSelf({ timeline = { ADDED_11_0_2 } }, {	-- Tricks and Treats of Khaz Algar
					candybucket(84579, {	-- Candy Bucket - Azj-Kahet, Faerin's Advance
						provider = { "o", 464926 },	-- Candy Bucket
						coord = { 59.0, 18.6, AZJ_KAHET },
					}),
					candybucket(84580, {	-- Candy Bucket - Azj-Kahet, Mmarl
						provider = { "o", 464927 },	-- Candy Bucket
						coord = { 78.0, 62.8, AZJ_KAHET },
					}),
					candybucket(84582, {	-- Candy Bucket - Azj-Kahet, Weaver's Lair
						provider = { "o", 464929 },	-- Candy Bucket
						coord = { 56.9, 39.0, AZJ_KAHET },
					}),
					candybucket(84581, {	-- Candy Bucket - Azj-Kahet, Wildcamp Ul'ar
						provider = { "o", 464928 },	-- Candy Bucket
						coord = { 44.8, 66.3, AZJ_KAHET },
					}),
					candybucket(84576, {	-- Candy Bucket - City of Threads, High Hollows
						provider = { "o", 464923 },	-- Candy Bucket
						coord = { 62.0, 41.4, NERUBAR },
					}),
					candybucket(84578, {	-- Candy Bucket - City of Threads, Umbral Bazzar
						provider = { "o", 464925 },	-- Candy Bucket
						coord = { 49.7, 22.3, NERUBAR },
					}),
					candybucket(84577, {	-- Candy Bucket - City of Threads - Lower, The Burrows
						provider = { "o", 464924 },	-- Candy Bucket
						coord = { 57.4, 38.5, NERUBAR_LOWER },
					}),
					candybucket(84572, {	-- Candy Bucket - Hallowfall, Dunelle's Kindness
						provider = { "o", 464919 },	-- Candy Bucket
						coord = { 69.1, 45.7, HALLOWFALL },
					}),
					candybucket(84574, {	-- Candy Bucket - Hallowfall, Light's Redoubt
						provider = { "o", 464921 },	-- Candy Bucket
						coord = { 40.6, 68.0, HALLOWFALL },
					}),
					candybucket(84573, {	-- Candy Bucket - Hallowfall, Lorel's Crossing
						provider = { "o", 464920 },	-- Candy Bucket
						coord = { 49.1, 39.5, HALLOWFALL },
					}),
					candybucket(84575, {	-- Candy Bucket - Hallowfall, Mereldar
						provider = { "o", 464922 },	-- Candy Bucket
						coord = { 42.8, 55.7, HALLOWFALL },
					}),
					candybucket(84564, {	-- Candy Bucket - Isle of Dorn, Dornogal
						provider = { "o", 464911 },	-- Candy Bucket
						coord = { 45.0, 47.3, DORNOGAL },
					}),
					candybucket(84566, {	-- Candy Bucket - Isle of Dorn, Freywold Village
						provider = { "o", 464913 },	-- Candy Bucket
						coord = { 42.0, 74.4, ISLE_OF_DORN },
					}),
					candybucket(84567, {	-- Candy Bucket - Isle of Dorn, Rambleshire
						provider = { "o", 464914 },	-- Candy Bucket
						coord = { 58.2, 27.1, ISLE_OF_DORN },
					}),
					candybucket(84568, {	-- Candy Bucket - The Ringing Deeps, Camp Murroch
						provider = { "o", 464915 },	-- Candy Bucket
						coord = { 59.5, 64.1, THE_RINGING_DEEPS },
					}),
					candybucket(84569, {	-- Candy Bucket - The Ringing Deeps, Gundargaz
						provider = { "o", 464916 },	-- Candy Bucket
						coord = { 47.9, 32.1, THE_RINGING_DEEPS },
					}),
					candybucket(84570, {	-- Candy Bucket - The Ringing Deeps, Opportunity Point
						provider = { "o", 464917 },	-- Candy Bucket
						coord = { 63.4, 79.0, THE_RINGING_DEEPS },
					}),
					candybucket(84571, {	-- Candy Bucket - The Ringing Deeps, Shadowvein Point
						provider = { "o", 464918 },	-- Candy Bucket
						coord = { 61.9, 46.3, THE_RINGING_DEEPS },
					}),
				})),
				header(HEADERS.Achievement, 18360, timelineSelf({ timeline = { ADDED_10_1_5 } }, {	-- Tricks and Treats of the Dragon Isles
					candybucket(75684, {	-- Candy Bucket - Ohn'ahran Plains, Broadhoof Outpost
						provider = { "o", 401738 },	-- Candy Bucket, Ohn'ahran Plains
						coord = { 46.2, 40.6, OHNAHRAN_PLAINS },
					}),
					candybucket(75693, {	-- Candy Bucket - Ohn'ahran Plains, Emberwatch
						provider = { "o", 401747 },	-- Candy Bucket, Ohn'ahran Plains
						coord = { 66.3, 24.5, OHNAHRAN_PLAINS },
					}),
					candybucket(75692, {	-- Candy Bucket - Ohn'ahran Plains, Forkriver Crossing
						provider = { "o", 401746 },	-- Candy Bucket, Ohn'ahran Plains
						coord = { 72.1, 80.4, OHNAHRAN_PLAINS },
					}),
					candybucket(75685, {	-- Candy Bucket - Ohn'ahran Plains, Maruukai
						provider = { "o", 401739 },	-- Candy Bucket, Ohn'ahran Plains
						coord = { 62.9, 40.6, OHNAHRAN_PLAINS },
					}),
					candybucket(75687, {	-- Candy Bucket - Ohn'ahran Plains, Ohn'iri Springs
						provider = { "o", 401741 },	-- Candy Bucket, Ohn'ahran Plains
						coord = { 57.1, 76.7, OHNAHRAN_PLAINS },
					}),
					candybucket(75688, {	-- Candy Bucket - Ohn'ahran Plains, Pinewood Post
						provider = { "o", 401742 },	-- Candy Bucket, Ohn'ahran Plains
						coord = { 81.3, 59.2, OHNAHRAN_PLAINS },
					}),
					candybucket(75689, {	-- Candy Bucket - Ohn'ahran Plains, Rusza'thar Reach
						provider = { "o", 401743 },	-- Candy Bucket, Ohn'ahran Plains
						coord = { 85.9, 35.4, OHNAHRAN_PLAINS },
					}),
					candybucket(75686, {	-- Candy Bucket - Ohn'ahran Plains, Shady Sanctuary
						provider = { "o", 401740 },	-- Candy Bucket, Ohn'ahran Plains
						coord = { 28.6, 60.6, OHNAHRAN_PLAINS },
					}),
					candybucket(75691, {	-- Candy Bucket - Ohn'ahran Plains, Teerakai
						provider = { "o", 401745 },	-- Candy Bucket, Ohn'ahran Plains
						coord = { 41.9, 60.4, OHNAHRAN_PLAINS },
					}),
					candybucket(75690, {	-- Candy Bucket - Ohn'ahran Plains, Timberstep Outpost
						provider = { "o", 401744 },	-- Candy Bucket, Ohn'ahran Plains
						coord = { 85.0, 26.0, OHNAHRAN_PLAINS },
					}),
					candybucket(75698, {	-- Candy Bucket - Thaldraszus, Algeth'era Court
						provider = { "o", 401751 },	-- Candy Bucket, Thaldraszus
						coord = { 50.1, 42.7, THALDRASZUS },
					}),
					candybucket(75696, {	-- Candy Bucket - Thaldraszus, Garden Shrine
						provider = { "o", 401749 },	-- Candy Bucket, Thaldraszus
						coord = { 35.1, 79.2, THALDRASZUS },
					}),
					candybucket(75697, {	-- Candy Bucket - Thaldraszus, Gelikyr Post
						provider = { "o", 401750 },	-- Candy Bucket, Thaldraszus
						coord = { 52.4, 69.8, THALDRASZUS },
					}),
					candybucket(75695, {	-- Candy Bucket - Thaldraszus, Temporal Conflux
						provider = { "o", 401748 },	-- Candy Bucket, Thaldraszus
						coord = { 59.9, 82.7, THALDRASZUS },
					}),
					candybucket(75700, {	-- Candy Bucket - Thaldraszus, Valdrakken (The Parting Glass)
						provider = { "o", 401753 },	-- Candy Bucket, Valdrakken
						coord = { 72.4, 46.7, VALDRAKKEN },
					}),
					candybucket(75699, {	-- Candy Bucket - Thaldraszus, Valdrakken (The Roasted Ram)
						provider = { "o", 401752 },	-- Candy Bucket, Valdrakken
						coord = { 47.2, 45.5, VALDRAKKEN },
					}),
					candybucket(75701, {	-- Candy Bucket - Thaldraszus, Valdrakken (Weyrnrest)
						provider = { "o", 401754 },	-- Candy Bucket, Valdrakken
						coord = { 22.4, 30.9, VALDRAKKEN },
					}),
					candybucket(75667, {	-- Candy Bucket - The Azure Span, Camp Antonidas
						provider = { "o", 401714 },	-- Candy Bucket, The Azure Span
						coord = { 47.0, 40.3, THE_AZURE_SPAN },
					}),
					candybucket(75668, {	-- Candy Bucket - The Azure Span, Camp Nowhere
						provider = { "o", 401723 },	-- Candy Bucket, The Azure Span
						coord = { 62.8, 57.7, THE_AZURE_SPAN },
					}),
					candybucket(75669, {	-- Candy Bucket - The Azure Span, Iskaara
						provider = { "o", 401724 },	-- Candy Bucket, The Azure Span
						coord = { 12.4, 49.4, THE_AZURE_SPAN },
					}),
					candybucket(75670, {	-- Candy Bucket - The Azure Span, Theron's Watch
						provider = { "o", 401725 },	-- Candy Bucket, The Azure Span
						coord = { 65.5, 16.3, THE_AZURE_SPAN },
					}),
					candybucket(75671, {	-- Candy Bucket - The Azure Span, Three-Falls Lookout
						provider = { "o", 401726 },	-- Candy Bucket, The Azure Span
						coord = { 18.8, 24.6, THE_AZURE_SPAN },
					}),
					candybucket(75702, {	-- Candy Bucket - The Forbidden Reach, Morqut Village
						provider = { "o", 401755 },	-- Candy Bucket, The Forbidden Reach
						coord = { 33.9, 58.8, THE_FORBIDDEN_REACH },
					}),
					candybucket(75672, {	-- Candy Bucket - The Waking Shores, Apex Observatory
						provider = { "o", 401727 },	-- Candy Bucket, The Waking Shores
						coord = { 24.5, 82.1, THE_WAKING_SHORES },
					}),
					candybucket(75673, {	-- Candy Bucket - The Waking Shores, Dragonscale Basecamp
						provider = { "o", 401728 },	-- Candy Bucket, The Waking Shores
						coord = { 47.7, 83.3, THE_WAKING_SHORES },
					}),
					candybucket(75675, {	-- Candy Bucket - The Waking Shores, Life Vault Ruins
						provider = { "o", 401730 },	-- Candy Bucket, The Waking Shores
						coord = { 65.2, 57.9, THE_WAKING_SHORES },
					}),
					candybucket(75676, {	-- Candy Bucket - The Waking Shores, Obsidian Throne
						provider = { "o", 401731 },	-- Candy Bucket, The Waking Shores
						coord = { 25.8, 55.2, THE_WAKING_SHORES },
					}),
					candybucket(77698, {	-- Candy Bucket - The Waking Shores, Obsidian Bulwark
						provider = { "o", 407048 },	-- Candy Bucket, The Waking Shores
						coord = { 43.1, 66.7, THE_WAKING_SHORES },
					}),
					candybucket(75674, {	-- Candy Bucket - The Waking Shores, Ruby Lifeshrine
						provider = { "o", 401729 },	-- Candy Bucket, The Waking Shores
						coord = { 58.0, 67.3, THE_WAKING_SHORES },
					}),
					candybucket(75677, {	-- Candy Bucket - The Waking Shores, Skytop Observatory
						provider = { "o", 401732 },	-- Candy Bucket, The Waking Shores
						coord = { 76.1, 54.8, THE_WAKING_SHORES },
					}),
					candybucket(75678, {	-- Candy Bucket - The Waking Shores, Uktulut Backwater
						provider = { "o", 401733 },	-- Candy Bucket, The Waking Shores
						coord = { 53.9, 39.0, THE_WAKING_SHORES },
					}),
					candybucket(75679, {	-- Candy Bucket - The Waking Shores, Uktulut Pier
						provider = { "o", 401734 },	-- Candy Bucket, The Waking Shores
						coord = { 46.4, 27.4, THE_WAKING_SHORES },
					}),
					candybucket(75681, {	-- Candy Bucket - The Waking Shores, Wild Coast
						provider = { "o", 401735 },	-- Candy Bucket, The Waking Shores
						coord = { 81.3, 32.0, THE_WAKING_SHORES },
						races = ALLIANCE_ONLY,
					}),
					candybucket(75682, {	-- Candy Bucket - The Waking Shores, Wild Coast
						provider = { "o", 401736 },	-- Candy Bucket, The Waking Shores
						coord = { 80.4, 27.9, THE_WAKING_SHORES },
						races = HORDE_ONLY,
					}),
					candybucket(75683, {	-- Candy Bucket - The Waking Shores, Wingrest Embassy
						provider = { "o", 401737 },	-- Candy Bucket, The Waking Shores
						coord = { 76.2, 35.4, THE_WAKING_SHORES },
					}),
					candybucket(75704, {	-- Candy Bucket - Zaralek Cavern, Loamm
						provider = { "o", 401757 },	-- Candy Bucket, Zaralek Cavern
						coord = { 56.4, 56.4, ZARALEK_CAVERN },
					}),
					candybucket(75703, {	-- Candy Bucket - Zaralek Cavern, Obsidian Rest
						provider = { "o", 401756 },	-- Candy Bucket, Zaralek Cavern
						coord = { 52.1, 26.5, ZARALEK_CAVERN },
					}),
				})),
				header(HEADERS.Map, KUL_TIRAS, sharedDataSelf({	-- Kul Tiras
					timeline = { ADDED_8_0_1 },
					races = ALLIANCE_ONLY,
				}, {
					candybucket(54710, {	-- Candy Bucket - Tiragarde Sound, Boralus, Alliance
						provider = { "o", 316755 },	-- Candy Bucket, Boralus
						coord = { 73.7, 12.4, BORALUS },
					}),
				})),
				header(HEADERS.Map, ZANDALAR, sharedDataSelf({	-- Zandalar
					timeline = { ADDED_8_0_1 },
					races = HORDE_ONLY,
				}, {
					candybucket(54709, {	-- Candy Bucket - Zuldazar, Dazar'alor, Horde
						provider = { "o", 316754 },	-- Candy Bucket, The Great Seal
						coord = { 49.6, 82.3, THE_GREAT_SEAL },
						maps = {
							HALL_OF_CHRONICLERS,
							DAZARALOR,
						},
					}),
				})),
				header(HEADERS.Map, BROKEN_ISLES, timelineSelf({ timeline = { ADDED_7_0_3 } }, {	-- Broken Isles
					candybucket(43055, {	-- Candy Bucket - Dalaran: Broken Shores, Legerdemain Lounge, Neutral
						provider = { "o", 251670 },	-- Candy Bucket, Dalaran
						coord = { 48.1, 41.3, LEGION_DALARAN },
					}),
					candybucket(43056, {	-- Candy Bucket - Dalaran: Broken Shores, Silver Enclave, Alliance
						provider = { "o", 251671 },	-- Candy Bucket, Dalaran
						coord = { 41.8, 64.1, LEGION_DALARAN },
						races = ALLIANCE_ONLY,
					}),
					candybucket(43057, {	-- Candy Bucket - Dalaran: Broken Shores, Sunreaver's Sanctuary, Horde
						provider = { "o", 251672 },	-- Candy Bucket, Dalaran
						coord = { 66.7, 30.1, LEGION_DALARAN },
						races = HORDE_ONLY,
					}),
				})),
				header(HEADERS.Map, DRAENOR, timelineSelf({ timeline = { ADDED_6_0_2 } }, {	-- Draenor
					candybucket(39657, {	-- Candy Bucket - Draenor Garrison (Frostwall or Lunarfall), Neutral
						-- TODO: While it might seem weird, having this have coordinates at least will plot it on the map so folks don't forget.
						-- Perhaps investigate a programmatic solution? The garrison has different map IDs at different stages of creation.
						provider = { "o", 243912 },	-- Candy Bucket, Draenor Garrison
						maps = {
							FROSTWALL,
							LUNARFALL,
						},
					}),
				})),
				header(HEADERS.Achievement, 7601, timelineSelf({ timeline = { ADDED_5_0_4 } }, {	-- Tricks and Treats of Pandaria
					candybucket(32024, {	-- Candy Bucket - Dread Wastes, Klaxxi'vess, Neutral
						provider = { "o", 215877 },	-- Candy Bucket, Dread Wastes
						coord = { 55.9, 32.3, DREAD_WASTES },
					}),
					candybucket(32023, {	-- Candy Bucket - Dread Wastes, Soggy's Gamble, Neutral
						provider = { "o", 215876 },	-- Candy Bucket, Dread Wastes
						coord = { 55.2, 71.1, DREAD_WASTES },
					}),
					candybucket(32020, {	-- Candy Bucket - Krasarang Wilds, Dawnchaser Retreat, Horde
						provider = { "o", 215873 },	-- Candy Bucket, Krasarang Wilds
						coord = { 28.3, 50.7, KRASARANG_WILDS },
						races = HORDE_ONLY,
					}),
					candybucket(32034, {	-- Candy Bucket - Krasarang Wilds, Marista, Neutral
						provider = { "o", 215892 },	-- Candy Bucket, Krasarang Wilds
						coord = { 51.4, 77.29, KRASARANG_WILDS },
					}),
					candybucket(32047, {	-- Candy Bucket - Krasarang Wilds, Thunder Cleft, Horde
						provider = { "o", 215904 },	-- Candy Bucket, Krasarang Wilds
						coord = { 61.0, 25.1, KRASARANG_WILDS },
						races = HORDE_ONLY,
					}),
					candybucket(32036, {	-- Candy Bucket - Krasarang Wilds, Zhu's Watch, Neutral
						provider = { "o", 215894 },	-- Candy Bucket, Krasarang Wilds
						coord = { 75.94, 6.91, KRASARANG_WILDS },
					}),
					candybucket(32039, {	-- Candy Bucket - Kun-Lai Summit, Binan Village, Neutral
						provider = { "o", 215897 },	-- Candy Bucket, Kun-Lai Summit
						coord = { 72.7, 92.2, KUN_LAI_SUMMIT },
					}),
					candybucket(32040, {	-- Candy Bucket - Kun-Lai Summit, Eastwind Rest, Horde
						provider = { "o", 215898 },	-- Candy Bucket, Kun-Lai Summit
						coord = { 62.7, 80.5, KUN_LAI_SUMMIT },
						races = HORDE_ONLY,
					}),
					candybucket(32041, {	-- Candy Bucket - Kun-Lai Summit, Grummle Bazaar, Neutral
						provider = { "o", 215899 },	-- Candy Bucket, Kun-Lai Summit
						coord = { 64.2, 61.2, KUN_LAI_SUMMIT },
					}),
					candybucket(32037, {	-- Candy Bucket - Kun-Lai Summit, One Keg, Neutral
						provider = { "o", 215895 },	-- Candy Bucket, Kun-Lai Summit
						coord = { 57.4, 59.9, KUN_LAI_SUMMIT },
					}),
					candybucket(32042, {	-- Candy Bucket - Kun-Lai Summit, Westwind Rest, Alliance
						provider = { "o", 215900 },	-- Candy Bucket, Kun-Lai Summit
						coord = { 54.1, 82.8, KUN_LAI_SUMMIT },
						races = ALLIANCE_ONLY,
					}),
					candybucket(32051, {	-- Candy Bucket - Kun-Lai Summit, Zouchin Village, Neutral
						provider = { "o", 215914 },	-- Candy Bucket, Kun-Lai Summit
						coord = { 62.3, 29.0, KUN_LAI_SUMMIT },
					}),
					candybucket(32027, {	-- Candy Bucket - The Jade Forest, Dawn's Blossom, Neutral
						provider = { "o", 215880 },	-- Candy Bucket, The Jade Forest
						coord = { 45.7, 43.6, THE_JADE_FOREST },
					}),
					candybucket(32029, {	-- Candy Bucket - The Jade Forest, Greenstone Village, Neutral
						provider = { "o", 215884 },	-- Candy Bucket, The Jade Forest
						coord = { 48.0, 34.6, THE_JADE_FOREST },
					}),
					candybucket(32028, {	-- Candy Bucket - The Jade Forest, Grookin Hill, Horde
						provider = { "o", 215881 },	-- Candy Bucket, The Jade Forest
						coord = { 28.0, 47.4, THE_JADE_FOREST },
						races = HORDE_ONLY,
					}),
					candybucket(32050, {	-- Candy Bucket - The Jade Forest, Honeydew Village, Horde
						provider = { "o", 215908 },	-- Candy Bucket, The Jade Forest
						coord = { 28.5, 13.3, THE_JADE_FOREST },
						races = HORDE_ONLY,
					}),
					candybucket(32032, {	-- Candy Bucket - The Jade Forest, Jade Temple Grounds, Neutral
						provider = { "o", 215889 },	-- Candy Bucket, The Jade Forest
						coord = { 54.6, 63.3, THE_JADE_FOREST },
					}),
					candybucket(32049, {	-- Candy Bucket - The Jade Forest, Paw'don Village, Alliance
						provider = { "o", 215907 },	-- Candy Bucket, The Jade Forest
						coord = { 44.8, 84.4, THE_JADE_FOREST },
						races = ALLIANCE_ONLY,
					}),
					candybucket(32033, {	-- Candy Bucket - The Jade Forest, Pearlfin Village, Alliance
						provider = { "o", 215891 },	-- Candy Bucket, The Jade Forest
						coord = { 59.6, 83.2, THE_JADE_FOREST },
						races = ALLIANCE_ONLY,
					}),
					candybucket(32031, {	-- Candy Bucket - The Jade Forest, Sri-La Village, Neutral
						provider = { "o", 215886 },	-- Candy Bucket, The Jade Forest
						coord = { 55.7, 24.4, THE_JADE_FOREST },
					}),
					candybucket(32021, {	-- Candy Bucket - The Jade Forest, Tian Monastery, Neutral
						provider = { "o", 215874 },	-- Candy Bucket, The Jade Forest
						coord = { 41.6, 23.1, THE_JADE_FOREST },
					}),
					candybucket(32026, {	-- Candy Bucket - The Veiled Stair, Tavern in the Mists, Neutral
						provider = { "o", 215879 },	-- Candy Bucket, The Veiled Stair
						coord = { 54.9, 72.3, THE_VEILED_STAIR },
					}),
					candybucket(32043, {	-- Candy Bucket - Townlong Steppes, Longying Outpost, Neutral
						provider = { "o", 215902 },	-- Candy Bucket, Townlong Steppes
						coord = { 71.1, 57.8, TOWNLONG_STEPPES },
					}),
					candybucket(32044, {	-- Candy Bucket - Vale of Eternal Blossoms, Mistfall Village, Neutral
						provider = { "o", 215903 },	-- Candy Bucket, Vale of Eternal Blossoms
						coords = {
							{ 35.1, 77.7, VALE_OF_ETERNAL_BLOSSOMS },
							-- #if AFTER 8.3.0
							{ 35.1, 77.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							-- #endif
						},
					}),
					candybucket(32052, {	-- Candy Bucket - Vale of Eternal Blossoms, Shrine of Seven Stars, Alliance
						provider = { "o", 215915 },	-- Candy Bucket, Shrine of Seven Stars
						coords = {
							{ 87.0, 68.8, VALE_OF_ETERNAL_BLOSSOMS },
							{ 37.7, 67.0, SHRINE_OF_SEVEN_STARS },
						},
						races = ALLIANCE_ONLY,
					}),
					candybucket(32022, {	-- Candy Bucket - Vale of Eternal Blossoms, Shrine of Two Moons, Horde
						provider = { "o", 215875 },	-- Candy Bucket, Vale of Eternal Blossoms
						coords = {
							{ 61.9, 16.1, VALE_OF_ETERNAL_BLOSSOMS },
							{ 57.7, 77.3, SHRINE_OF_TWO_MOONS },
						},
						races = HORDE_ONLY,
					}),
					candybucket(32048, {	-- Candy Bucket - Valley of the Four Winds, Pang's Stead, Neutral
						provider = { "o", 215905 },	-- Candy Bucket, Valley of the Four Winds
						coord = { 83.6, 20.3, VALLEY_OF_THE_FOUR_WINDS },
					}),
					candybucket(32046, {	-- Candy Bucket - Valley of the Four Winds, Stoneplow, Neutral
						provider = { "o", 215906 },	-- Candy Bucket, Valley of the Four Winds
						coord = { 19.8, 55.7, VALLEY_OF_THE_FOUR_WINDS },
					}),
				})),
				VariableAchHeader(TRICKS_CATACLYSM, timelineSelf({ timeline = { ADDED_4_1_0 } }, {	-- Tricks and Treats of the Cataclysm
					candybucket(29020, {	-- Candy Bucket - Deepholm, Temple of Earth, Alliance
						provider = { "o", 208183 },	-- Candy Bucket, Deepholm
						coord = { 47.4, 51.7, DEEPHOLM },
						races = ALLIANCE_ONLY,
					}),
					candybucket(29019, {	-- Candy Bucket - Deepholm, Temple of Earth, Horde
						provider = { "o", 208181 },	-- Candy Bucket, Deepholm
						coord = { 51.2, 50.0, DEEPHOLM },
						races = HORDE_ONLY,
					}),
					candybucket(29000, {	-- Candy Bucket - Mount Hyjal, Grove of Aessina, Neutral
						provider = { "o", 208163 },	-- Candy Bucket, Mount Hyjal
						coord = { 18.7, 37.3, MOUNT_HYJAL },
					}),
					candybucket(28999, {	-- Candy Bucket - Mount Hyjal, Nordrassil, Neutral
						provider = { "o", 208162 },	-- Candy Bucket, Mount Hyjal
						coord = { 63.0, 24.1, MOUNT_HYJAL },
					}),
					candybucket(29001, {	-- Candy Bucket - Mount Hyjal, Shrine of Aviana, Neutral
						provider = { "o", 208164 },	-- Candy Bucket, Mount Hyjal
						coord = { 42.7, 45.6, MOUNT_HYJAL },
					}),
					candybucket(28973, {	-- Candy Bucket - Twilight Highlands, Bloodgulch, Horde
						provider = { "o", 208150 },	-- Candy Bucket, Twilight Highlands
						coord = { 53.4, 42.9, TWILIGHT_HIGHLANDS },
						races = HORDE_ONLY,
					}),
					candybucket(28974, {	-- Candy Bucket - Twilight Highlands, Crushblow, Horde
						provider = { "o", 208151 },	-- Candy Bucket, Twilight Highlands
						coord = { 45.1, 76.7, TWILIGHT_HIGHLANDS },
						races = HORDE_ONLY,
					}),
					candybucket(28975, {	-- Candy Bucket - Twilight Highlands, Dragonmaw Post, Horde
						provider = { "o", 208152 },	-- Candy Bucket, Twilight Highlands
						coord = { 75.3, 54.8, TWILIGHT_HIGHLANDS },
						races = HORDE_ONLY,
					}),
					candybucket(28977, {	-- Candy Bucket - Twilight Highlands, Firebeard's Patrol, Alliance
						provider = { "o", 208128 },	-- Candy Bucket, Twilight Highlands
						coord = { 60.4, 58.2, TWILIGHT_HIGHLANDS },
						races = ALLIANCE_ONLY,
					}),
					candybucket(28980, {	-- Candy Bucket - Twilight Highlands, Highbank, Alliance
						provider = { "o", 208129 },	-- Candy Bucket, Twilight Highlands
						coord = { 79.5, 78.5, TWILIGHT_HIGHLANDS },
						races = ALLIANCE_ONLY,
					}),
					candybucket(28976, {	-- Candy Bucket - Twilight Highlands, Krazzworks, Horde
						provider = { "o", 208153 },	-- Candy Bucket, Twilight Highlands
						coord = { 75.4, 16.5, TWILIGHT_HIGHLANDS },
						races = HORDE_ONLY,
					}),
					candybucket(28978, {	-- Candy Bucket - Twilight Highlands, Thundermar, Alliance
						provider = { "o", 208130 },	-- Candy Bucket, Twilight Highlands
						coord = { 49.6, 30.4, TWILIGHT_HIGHLANDS },
						races = ALLIANCE_ONLY,
					}),
					candybucket(28979, {	-- Candy Bucket - Twilight Highlands, Victor's Point, Alliance
						provider = { "o", 208131 },	-- Candy Bucket, Twilight Highlands
						coord = { 43.6, 57.3, TWILIGHT_HIGHLANDS },
						races = ALLIANCE_ONLY,
					}),
					candybucket(29016, {	-- Candy Bucket - Uldum, Oasis of Vir'sar, Neutral
						provider = { "o", 208178 },	-- Candy Bucket, Uldum
						coords = {
							{ 26.6, 7.30, ULDUM },
							-- #if AFTER 8.3.0
							{ 26.6, 7.30, NZOTH_ASSAULT_ULDUM },
							-- #endif
						},
					}),
					candybucket(29017, {	-- Candy Bucket - Uldum, Ramkahen, Neutral
						provider = { "o", 208179 },	-- Candy Bucket, Uldum
						coord = { 54.7, 33.0, ULDUM },
					}),
					candybucket(28985, {	-- Candy Bucket - Vashj'ir, Darkbreak Cove, Alliance
						provider = { "o", 208132 },	-- Candy Bucket, Abyssal Depths
						coord = { 54.7, 72.2, VASHJIR_ABYSSAL_DEPTHS },
						races = ALLIANCE_ONLY,
					}),
					candybucket(28981, {	-- Candy Bucket - Vashj'ir, Deepmist Grotto, Neutral
						provider = { "o", 208141 },	-- Candy Bucket, Kelp'thar Forest
						coord = { 63.4, 60.2, VASHJIR_KELPTHAR_FOREST },
					}),
					candybucket(28984, {	-- Candy Bucket - Vashj'ir, Legion's Rest, Horde
						provider = { "o", 208154 },	-- Candy Bucket, Shimmering Expanse
						coord = { 51.5, 62.5, VASHJIR_SHIMMERING_EXPANSE },
						races = HORDE_ONLY,
					}),
					candybucket(28982, {	-- Candy Bucket - Vashj'ir, Silver Tide Hollow, Neutral
						provider = { "o", 208142 },	-- Candy Bucket, Shimmering Expanse
						coord = { 49.2, 41.9, VASHJIR_SHIMMERING_EXPANSE },
					}),
					candybucket(28986, {	-- Candy Bucket - Vashj'ir, Tenebrous Cavern, Horde
						provider = { "o", 208155 },	-- Candy Bucket, Abyssal Depths
						coord = { 51.3, 60.6, VASHJIR_ABYSSAL_DEPTHS },
						races = HORDE_ONLY,
					}),
					candybucket(28983, {	-- Candy Bucket - Vashj'ir, Tranquil Wash, Alliance
						provider = { "o", 208133 },	-- Candy Bucket, Shimmering Expanse
						coord = { 49.7, 57.4, VASHJIR_SHIMMERING_EXPANSE },
						races = ALLIANCE_ONLY,
					}),
				})),
				VariableAchHeader(TRICKS_NORTHREND, timelineSelf({ timeline = { ADDED_3_0_2 } }, {	-- Tricks and Treats of Northrend
					candybucket(13501, {	-- Candy Bucket - Borean Tundra, Bor'gorok Outpost, Horde
						provider = { "o", 194084 },	-- Candy Bucket, Borean Tundra
						coord = { 49.7, 10.0, BOREAN_TUNDRA },
						races = HORDE_ONLY,
					}),
					candybucket(13437, {	-- Candy Bucket - Borean Tundra, Fizzcrank Airstrip, Alliance
						provider = { "o", 194060 },	-- Candy Bucket, Borean Tundra
						coord = { 57.1, 18.8, BOREAN_TUNDRA },
						races = ALLIANCE_ONLY,
					}),
					candybucket(13467, {	-- Candy Bucket - Borean Tundra, Taunka'le Village, Horde
						provider = { "o", 194076 },	-- Candy Bucket, Borean Tundra
						coord = { 76.7, 37.4, BOREAN_TUNDRA },
						races = HORDE_ONLY,
					}),
					candybucket(13460, {	-- Candy Bucket - Borean Tundra, Unu'pe, Neutral
						provider = { "o", 194068 },	-- Candy Bucket, Borean Tundra
						coord = { 78.4, 49.2, BOREAN_TUNDRA },
					}),
					candybucket(13436, {	-- Candy Bucket - Borean Tundra, Valiance Keep, Alliance
						provider = { "o", 194059 },	-- Candy Bucket, Borean Tundra
						coord = { 58.5, 67.9, BOREAN_TUNDRA },
						races = ALLIANCE_ONLY,
					}),
					candybucket(13468, {	-- Candy Bucket - Borean Tundra, Warsong Hold, Horde
						provider = { "o", 194077 },	-- Candy Bucket, Borean Tundra
						coord = { 41.8, 54.4, BOREAN_TUNDRA },
						races = HORDE_ONLY,
					}),
					candybucket(13463, {	-- Candy Bucket - Dalaran: Northrend, Legerdemain Lounge, Neutral
						provider = { "o", 194071 },	-- Candy Bucket, Dalaran
						coord = { 48.3, 40.8, NORTHREND_DALARAN },
					}),
					candybucket(13473, {	-- Candy Bucket - Dalaran: Northrend, Silver Enclave, Alliance
						provider = { "o", 194064 },	-- Candy Bucket, Dalaran
						coord = { 42.5, 63.5, NORTHREND_DALARAN },
						races = ALLIANCE_ONLY,
					}),
					candybucket(13474, {	-- Candy Bucket - Dalaran: Northrend, Sunreaver's Sanctuary, Horde
						provider = { "o", 194081 },	-- Candy Bucket, Dalaran
						coord = { 66.6, 30.1, NORTHREND_DALARAN },
						races = HORDE_ONLY,
					}),
					candybucket(13472, {	-- Candy Bucket - Dalaran: Northrend, Underbelly, Neutral
						provider = { "o", 194072 },	-- Candy Bucket, Dalaran
						coord = { 38.0, 59.9, NORTHREND_THE_UNDERBELLY },
					}),
					candybucket(13469, {	-- Candy Bucket - Dragonblight, Agmar's Hammer, Horde
						provider = { "o", 194078 },	-- Candy Bucket, Dragonblight
						coord = { 37.8, 46.4, DRAGONBLIGHT },
						races = HORDE_ONLY,
					}),
					candybucket(13459, {	-- Candy Bucket - Dragonblight, Moa'ki Harbor, Neutral
						provider = { "o", 194067 },	-- Candy Bucket, Dragonblight
						coord = { 48.2, 74.7, DRAGONBLIGHT },
					}),
					candybucket(13438, {	-- Candy Bucket - Dragonblight, Stars' Rest, Alliance
						provider = { "o", 194061 },	-- Candy Bucket, Dragonblight
						coord = { 29.0, 56.2, DRAGONBLIGHT },
						races = ALLIANCE_ONLY,
					}),
					candybucket(13470, {	-- Candy Bucket - Dragonblight, Venomspite, Horde
						provider = { "o", 194079 },	-- Candy Bucket, Dragonblight
						coord = { 76.8, 63.2, DRAGONBLIGHT },
						races = HORDE_ONLY,
					}),
					candybucket(13439, {	-- Candy Bucket - Dragonblight, Wintergarde Keep, Alliance
						provider = { "o", 194062 },	-- Candy Bucket, Dragonblight
						coord = { 77.5, 51.3, DRAGONBLIGHT },
						races = ALLIANCE_ONLY,
					}),
					candybucket(13456, {	-- Candy Bucket - Dragonblight, Wyrmrest Temple, Neutral
						provider = { "o", 194066 },	-- Candy Bucket, Dragonblight
						coord = { 60.1, 53.5, DRAGONBLIGHT },
					}),
					candybucket(12944, {	-- Candy Bucket - Grizzly Hills, Amberpine Lodge, Alliance
						provider = { "o", 191882 },	-- Candy Bucket, Grizzly Hills
						coord = { 32.0, 60.2, GRIZZLY_HILLS },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12947, {	-- Candy Bucket - Grizzly Hills, Camp Oneqwah, Horde
						provider = { "o", 191881 },	-- Candy Bucket, Grizzly Hills
						coord = { 65.4, 47.0, GRIZZLY_HILLS },
						races = HORDE_ONLY,
					}),
					candybucket(12946, {	-- Candy Bucket - Grizzly Hills, Conquest Hold, Horde
						provider = { "o", 191880 },	-- Candy Bucket, Grizzly Hills
						coord = { 20.9, 64.7, GRIZZLY_HILLS },
						races = HORDE_ONLY,
					}),
					candybucket(12945, {	-- Candy Bucket - Grizzly Hills, Westfall Brigade, Alliance
						provider = { "o", 191883 },	-- Candy Bucket, Grizzly Hills
						coord = { 59.6, 26.4, GRIZZLY_HILLS },
						races = ALLIANCE_ONLY,
					}),
					candybucket(13464, {	-- Candy Bucket - Howling Fjord, Camp Winterhoof, Horde
						provider = { "o", 194073 },	-- Candy Bucket, Howling Fjord
						coord = { 49.5, 10.8, HOWLING_FJORD },
						races = HORDE_ONLY,
					}),
					candybucket(13435, {	-- Candy Bucket - Howling Fjord, Fort Wildervar, Alliance
						provider = { "o", 194058 },	-- Candy Bucket, Howling Fjord
						coord = { 60.5, 15.9, HOWLING_FJORD },
						races = ALLIANCE_ONLY,
					}),
					candybucket(13452, {	-- Candy Bucket - Howling Fjord, Kamagua, Neutral
						provider = { "o", 194065 },	-- Candy Bucket, Howling Fjord
						coord = { 25.4, 59.8, HOWLING_FJORD },
					}),
					candybucket(13465, {	-- Candy Bucket - Howling Fjord, New Agamand, Horde
						provider = { "o", 194074 },	-- Candy Bucket, Howling Fjord
						coord = { 52.1, 66.2, HOWLING_FJORD },
						races = HORDE_ONLY,
					}),
					candybucket(13433, {	-- Candy Bucket - Howling Fjord, Valgarde, Alliance
						provider = { "o", 194056 },	-- Candy Bucket, Howling Fjord
						coord = { 58.4, 62.8, HOWLING_FJORD },
						races = ALLIANCE_ONLY,
					}),
					candybucket(13466, {	-- Candy Bucket - Howling Fjord, Vengeance Landing, Horde
						provider = { "o", 194075 },	-- Candy Bucket, Howling Fjord
						coord = { 79.2, 30.6, HOWLING_FJORD },
						races = HORDE_ONLY,
					}),
					candybucket(13434, {	-- Candy Bucket - Howling Fjord, Westguard Keep, Alliance
						provider = { "o", 194057 },	-- Candy Bucket, Howling Fjord
						coord = { 30.8, 41.5, HOWLING_FJORD },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12950, {	-- Candy Bucket - Sholazar, Nesingwary Base Camp, Neutral
						provider = { "o", 192018 },	-- Candy Bucket, Sholazar Basin
						coord = { 26.7, 59.2, SHOLAZAR_BASIN },
					}),
					candybucket(13462, {	-- Candy Bucket - The Storm Peaks, Bouldercrag's Refuge, Neutral
						provider = { "o", 194070 },	-- Candy Bucket, The Storm Peaks
						coord = { 30.9, 37.2, THE_STORM_PEAKS },
					}),
					candybucket(13471, {	-- Candy Bucket - The Storm Peaks, Camp Tunka'lo, Horde
						provider = { "o", 194080 },	-- Candy Bucket, The Storm Peaks
						coord = { 67.6, 50.6, THE_STORM_PEAKS },
						races = HORDE_ONLY,
					}),
					candybucket(13448, {	-- Candy Bucket - The Storm Peaks, Frosthold, Alliance
						provider = { "o", 194063 },	-- Candy Bucket, The Storm Peaks
						coord = { 28.7, 74.3, THE_STORM_PEAKS },
						races = ALLIANCE_ONLY,
					}),
					candybucket(13548, {	-- Candy Bucket - The Storm Peaks, Grom'arsh Crash Site, Horde
						provider = { "o", 194119 },	-- Candy Bucket, The Storm Peaks
						coord = { 37.1, 49.6, THE_STORM_PEAKS },
						races = HORDE_ONLY,
					}),
					candybucket(13461, {	-- Candy Bucket - The Storm Peaks, K3, Neutral
						provider = { "o", 194069 },	-- Candy Bucket, The Storm Peaks
						coord = { 41.1, 85.9, THE_STORM_PEAKS },
					}),
					candybucket(12941, {	-- Candy Bucket - Zul'Drak, The Argent Stand, Neutral
						provider = { "o", 191879 },	-- Candy Bucket, Zul'Drak
						coord = { 40.8, 66.0, ZULDRAK },
					}),
					candybucket(12940, {	-- Candy Bucket - Zul'Drak, Zim'Torga, Neutral
						provider = { "o", 191878 },	-- Candy Bucket, Zul'Drak
						coord = { 59.3, 57.2, ZULDRAK },
					}),
				})),
				VariableAchHeader(TRICKS_OUTLAND, timelineSelf({ timeline = { ADDED_2_2_2 } }, {	-- Tricks and Treats of Outland
					candybucket(12406, {	-- Candy Bucket - Blade's Edge Mountains, Evergrove, Neutral
						provider = { "o", 190112 },	-- Candy Bucket, Blade's Edge Mountains
						coord = { 62.9, 38.3, BLADES_EDGE_MOUNTAINS },
					}),
					candybucket(12394, {	-- Candy Bucket - Blade's Edge Mountains, Mok'Nathal Village, Horde
						provider = { "o", 190100 },	-- Candy Bucket, Blade's Edge Mountains
						coord = { 76.2, 60.4, BLADES_EDGE_MOUNTAINS },
						races = HORDE_ONLY,
					}),
					candybucket(12358, {	-- Candy Bucket - Blade's Edge Mountains, Sylvanaar, Alliance
						provider = { "o", 190061 },	-- Candy Bucket, Blade's Edge Mountains
						coord = { 35.8, 63.8, BLADES_EDGE_MOUNTAINS },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12393, {	-- Candy Bucket - Blade's Edge Mountains, Thunderlord Stronghold, Horde
						provider = { "o", 190099 },	-- Candy Bucket, Blade's Edge Mountains
						coord = { 53.4, 55.5, BLADES_EDGE_MOUNTAINS },
						races = HORDE_ONLY,
					}),
					candybucket(12359, {	-- Candy Bucket - Blade's Edge Mountains, Toshley's Station, Alliance
						provider = { "o", 190062 },	-- Candy Bucket, Blade's Edge Mountains
						coord = { 61.0, 68.1, BLADES_EDGE_MOUNTAINS },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12389, {	-- Candy Bucket - Hellfire Peninsula, Falcon Watch, Horde
						provider = { "o", 190091 },	-- Candy Bucket, Hellfire Peninsula
						coord = { 26.9, 59.6, HELLFIRE_PENINSULA },
						races = HORDE_ONLY,
					}),
					candybucket(12352, {	-- Candy Bucket - Hellfire Peninsula, Honor Hold, Alliance
						provider = { "o", 190055 },	-- Candy Bucket, Hellfire Peninsula
						coord = { 54.3, 63.6, HELLFIRE_PENINSULA },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12353, {	-- Candy Bucket - Hellfire Peninsula, Temple of Telhamat, Alliance
						provider = { "o", 190056 },	-- Candy Bucket, Hellfire Peninsula
						coord = { 23.4, 36.5, HELLFIRE_PENINSULA },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12388, {	-- Candy Bucket - Hellfire Peninsula, Thrallmar, Horde
						provider = { "o", 190090 },	-- Candy Bucket, Hellfire Peninsula
						coord = { 56.8, 37.5, HELLFIRE_PENINSULA },
						races = HORDE_ONLY,
					}),
					candybucket(12392, {	-- Candy Bucket - Nagrand, Garadar, Horde
						provider = { "o", 190098 },	-- Candy Bucket, Nagrand
						coord = { 56.7, 34.6, NAGRAND },
						races = HORDE_ONLY,
					}),
					candybucket(12357, {	-- Candy Bucket - Nagrand, Telaar, Alliance
						provider = { "o", 190060 },	-- Candy Bucket, Nagrand
						coord = { 54.2, 75.8, NAGRAND },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12407, {	-- Candy Bucket - Netherstorm, Area 52, Neutral
						provider = { "o", 190113 },	-- Candy Bucket, Netherstorm
						coord = { 32.0, 64.4, NETHERSTORM },
					}),
					candybucket(12408, {	-- Candy Bucket - Netherstorm, The Stormspire, Neutral
						provider = { "o", 190114 },	-- Candy Bucket, Netherstorm
						coord = { 43.4, 36.1, NETHERSTORM },
					}),
					candybucket(12409, {	-- Candy Bucket - Shadowmoon Valley, Altar of Sha'tar or Sanctum of the Stars, Neutral
						providers = {
							{ "o", 190115 },	-- Candy Bucket, Shadowmoon Valley [Altar of Sha'tar]
							{ "o", 190116 },	-- Candy Bucket, Shadowmoon Valley [Sanctum of the Stars]
						},
						coords = {
							{ 61.0, 28.2, SHADOWMOON_VALLEY },	-- Aldor
							{ 56.4, 59.8, SHADOWMOON_VALLEY },	-- Scryer
						},
					}),
					candybucket(12395, {	-- Candy Bucket - Shadowmoon Valley, Shadowmoon Village, Horde
						provider = { "o", 190101 },	-- Candy Bucket, Shadowmoon Valley
						coord = { 30.3, 27.8, SHADOWMOON_VALLEY },
						races = HORDE_ONLY,
					}),
					candybucket(12360, {	-- Candy Bucket - Shadowmoon Valley, Wildhammer Stronghold, Alliance
						provider = { "o", 190063 },	-- Candy Bucket, Shadowmoon Valley
						coord = { 37.1, 58.2, SHADOWMOON_VALLEY },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12404, {	-- Candy Bucket - Shattrath City, Aldor Rise or Scryer's Tier, Neutral
						providers = {
							{ "o", 190110 },	-- Candy Bucket, Shattrath City [Aldor Rise]
							{ "o", 190111 },	-- Candy Bucket, Shattrath City [Scryer's Tier]
						},
						coords = {
							{ 56.2, 81.8, SHATTRATH_CITY },	-- Scryer
							{ 28.1, 49.0, SHATTRATH_CITY },	-- Aldor
						},
					}),
					candybucket(12356, {	-- Candy Bucket - Terokkar Forest, Allerian Stronghold, Alliance
						provider = { "o", 190059 },	-- Candy Bucket, Terokkar Forest
						coord = { 56.6, 53.2, TEROKKAR_FOREST },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12391, {	-- Candy Bucket - Terokkar Forest, Stonebreaker Hold, Horde
						provider = { "o", 190097 },	-- Candy Bucket, Terokkar Forest
						coord = { 48.8, 45.2, TEROKKAR_FOREST },
						races = HORDE_ONLY,
					}),
					candybucket(12403, {	-- Candy Bucket - Zangarmarsh, Cenarion Refuge, Neutral
						provider = { "o", 190109 },	-- Candy Bucket, Zangarmarsh
						coord = { 78.5, 62.9, ZANGARMARSH },
					}),
					candybucket(12355, {	-- Candy Bucket - Zangarmarsh, Orebor Harborage, Alliance
						provider = { "o", 190058 },	-- Candy Bucket, Zangarmarsh
						coord = { 41.9, 26.2, ZANGARMARSH },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12354, {	-- Candy Bucket - Zangarmarsh, Telredor, Alliance
						provider = { "o", 190057 },	-- Candy Bucket, Zangarmarsh
						coord = { 67.2, 49.0, ZANGARMARSH },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12390, {	-- Candy Bucket - Zangarmarsh, Zabra'jin, Horde
						provider = { "o", 190096 },	-- Candy Bucket, Zangarmarsh
						coord = { 30.7, 50.9, ZANGARMARSH },
						races = HORDE_ONLY,
					}),
				})),
				VariableAchHeader(TRICKS_EASTERN_KINGDOMS, timelineSelf({ timeline = { ADDED_2_2_2 } }, {	-- Tricks and Treats of Eastern Kingdoms
					candybucket(12380, {	-- Candy Bucket - Arathi Highlands, Hammerfall, Horde
						provider = { "o", 190082 },	-- Candy Bucket, Arathi Highlands
						coord = { 69.0, 33.4, ARATHI_HIGHLANDS },
						races = HORDE_ONLY,
					}),
					candybucket(28954, {	-- Candy Bucket - Arathi Highlands, Refuge Point, Alliance
						provider = { "o", 208120 },	-- Candy Bucket, Arathi Highlands
						coord = { 40.1, 49.0, ARATHI_HIGHLANDS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(28956, {	-- Candy Bucket - Badlands, Dragon's Mouth, Alliance
						provider = { "o", 208121 },	-- Candy Bucket, Badlands
						coord = { 20.9, 56.2, BADLANDS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(28955, {	-- Candy Bucket - Badlands, Fuselight, Neutral
						provider = { "o", 208137 },	-- Candy Bucket, Badlands
						coord = { 65.9, 35.8, BADLANDS },
						timeline = { ADDED_4_1_0 },
					}),
					candybucket(12385, {	-- Candy Bucket - Badlands, Kargath, Horde (Removed)
						provider = { "o", 190087 },	-- Candy Bucket, Badlands
						coord = { 2.8, 46.0, BADLANDS },
						timeline = { REMOVED_4_0_1 },
						races = HORDE_ONLY,
					}),
					candybucket(28957, {	-- Candy Bucket - Badlands, New Kargath, Horde
						provider = { "o", 208143 },	-- Candy Bucket, Badlands
						coord = { 18.3, 42.8, BADLANDS },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(28959, {	-- Candy Bucket - Blasted Lands, Dreadmaul Hold, Horde
						provider = { "o", 208144 },	-- Candy Bucket, Blasted Lands
						coord = { 40.5, 11.4, BLASTED_LANDS },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(28960, {	-- Candy Bucket - Blasted Lands, Nethergarde Keep, Alliance
						provider = { "o", 208122 },	-- Candy Bucket, Blasted Lands
						coord = { 60.7, 14.2, BLASTED_LANDS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(28961, {	-- Candy Bucket - Blasted Lands, Surwich, Alliance
						provider = { "o", 208123 },	-- Candy Bucket, Blasted Lands
						coord = { 44.4, 87.7, BLASTED_LANDS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12332, {	-- Candy Bucket - Dun Morogh, Kharanos, Alliance
						provider = { "o", 190036 },	-- Candy Bucket, Dun Morogh
						coords = {
							-- #if AFTER CATA
							{ 54.5, 50.7, DUN_MOROGH },
							-- #else
							{ 47.38, 52.44, DUN_MOROGH },
							-- #endif
						},
						races = ALLIANCE_ONLY,
					}),
					candybucket(12344, {	-- Candy Bucket - Duskwood, Darkshire, Alliance
						provider = { "o", 190048 },	-- Candy Bucket, Duskwood
						coord = { 73.9, 44.4, DUSKWOOD },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12402, {	-- Candy Bucket - Eastern Plaguelands, Light's Hope Chapel, Neutral
						provider = { "o", 190108 },	-- Candy Bucket, Eastern Plaguelands
						coords = {
							-- #if AFTER CATA
							{ 75.6, 52.4, EASTERN_PLAGUELANDS },
							-- #else
							{ 81.7, 58.1, EASTERN_PLAGUELANDS },
							-- #endif
							-- #if AFTER LEGION
							{ 41.3, 90.4, LIGHTS_HOPE_CHAPEL },
							-- #endif
						},
					}),
					candybucket(12286, {	-- Candy Bucket - Elwynn Forest, Goldshire, Alliance
						provider = { "o", 189303 },	-- Candy Bucket, Elwynn Forest
						coord = { 43.7, 66.0, ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
					}),
					candybucket(28962, {	-- Candy Bucket - Hillsbrad Foothills, Eastpoint Tower, Horde
						provider = { "o", 208145 },	-- Candy Bucket, Hillsbrad Foothills
						coord = { 60.3, 63.8, HILLSBRAD_FOOTHILLS },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(12346, {	-- Candy Bucket - Hillsbrad Foothills, Southshore, Alliance (Removed)
						provider = { "o", 190049 },	-- Candy Bucket, Hillsbrad Foothills
						coord = { 51.1, 59.0, HILLSBRAD_FOOTHILLS },
						timeline = { REMOVED_4_0_1 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12376, {	-- Candy Bucket - Hillsbrad Foothills, Tarren Hill, Horde
						provider = { "o", 190078 },	-- Candy Bucket, Hillsbrad Foothills
						coord = { 57.9, 47.3, HILLSBRAD_FOOTHILLS },
						races = HORDE_ONLY,
					}),
					candybucket(12335, {	-- Candy Bucket - Ironforge, The Commons, Alliance
						provider = { "o", 190039 },	-- Candy Bucket, Ironforge
						coord = { 18.6, 51.3, IRONFORGE },
						races = ALLIANCE_ONLY,
					}),
					candybucket(28963, {	-- Candy Bucket - Loch Modan, Farstrider Lodge, Alliance
						provider = { "o", 208124 },	-- Candy Bucket, Loch Modan
						coord = { 82.9, 63.6, LOCH_MODAN },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12339, {	-- Candy Bucket - Loch Modan, Thelsamar, Alliance
						provider = { "o", 190043 },	-- Candy Bucket, Loch Modan
						coord = { 35.5, 48.4, LOCH_MODAN },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12382, {	-- Candy Bucket - Northern Stranglethorn, Grom'gol Base Camp, Horde
						provider = { "o", 190084 },	-- Candy Bucket, Northern Stranglethorn
						coord = { 37.3, 51.7, NORTHERN_STRANGLETHORN },
						races = HORDE_ONLY,
					}),
					candybucket(28964, {	-- Candy Bucket - Northern Stranglethorn, Fort Livingston, Alliance
						provider = { "o", 208125 },	-- Candy Bucket, Northern Stranglethorn
						coord = { 53.1, 66.9, NORTHERN_STRANGLETHORN },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12342, {	-- Candy Bucket - Redridge Mountains, Lakeshire, Alliance
						provider = { "o", 190046 },	-- Candy Bucket, Redridge Mountains
						coords = {
							-- #if AFTER CATA
							{ 26.4, 41.6, REDRIDGE_MOUNTAINS },
							-- #else
							{ 27.0, 44.9, REDRIDGE_MOUNTAINS },
							-- #endif
						},
						races = ALLIANCE_ONLY,
					}),
					candybucket(28965, {	-- Candy Bucket - Searing Gorge, Iron Summit, Neutral
						provider = { "o", 208138 },	-- Candy Bucket, Searing Gorge
						coord = { 39.4, 66.1, SEARING_GORGE },
						timeline = { ADDED_4_1_0 },
					}),
					candybucket(12370, {	-- Candy Bucket - Silvermoon City, The Bazaar, Horde
						provider = { "o", 190073 },	-- Candy Bucket, Silvermoon City
						coord = { 67.6, 73.2, SILVERMOON_CITY },
						races = HORDE_ONLY,
					}),
					candybucket(12369, {	-- Candy Bucket - Silvermoon City, The Royal Exchange, Horde
						provider = { "o", 190072 },	-- Candy Bucket, Silvermoon City
						coord = { 79.6, 57.9, SILVERMOON_CITY },
						races = HORDE_ONLY,
					}),
					candybucket(28966, {	-- Candy Bucket - Silverpine Forest, Forsaken Rear Guard, Horde
						provider = { "o", 208146 },	-- Candy Bucket, Silverpine Forest
						coord = { 44.3, 20.4, SILVERPINE_FOREST },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(12371, {	-- Candy Bucket - Silverpine Forest, The Sepulcher, Horde
						provider = { "o", 190074 },	-- Candy Bucket, Silverpine Forest
						coord = { 46.4, 42.8, SILVERPINE_FOREST },
						races = HORDE_ONLY,
					}),
					candybucket(12336, {	-- Candy Bucket - Stormwind, The Trade District, Alliance
						provider = { "o", 190040 },	-- Candy Bucket, Stormwind City
						coords = {
							-- #if AFTER CATA
							{ 60.5, 75.2, STORMWIND_CITY },
							-- #else
							{ 52.77, 65.77, STORMWIND_CITY },
							-- #endif
						},
						races = ALLIANCE_ONLY,
					}),
					candybucket(28967, {	-- Candy Bucket - Swamp of Sorrows, Bogpaddle, Neutral
						provider = { "o", 208139 },	-- Candy Bucket, Swamp of Sorrows
						coord = { 71.7, 14.0, SWAMP_OF_SORROWS },
						timeline = { ADDED_4_1_0 },
					}),
					candybucket(12384, {	-- Candy Bucket - Swamp of Sorrows, Stonard, Horde
						provider = { "o", 190086 },	-- Candy Bucket, Swamp of Sorrows
						coord = { 46.9, 56.7, SWAMP_OF_SORROWS },
						races = HORDE_ONLY,
					}),
					candybucket(28968, {	-- Candy Bucket - Swamp of Sorrows, The Harborage, Alliance
						provider = { "o", 208126 },	-- Candy Bucket, Swamp of Sorrows
						coord = { 29.0, 32.6, SWAMP_OF_SORROWS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12397, {	-- Candy Bucket - The Cape of Stranglethorn, Booty Bay, Neutral
						provider = { "o", 190103 },	-- Candy Bucket, The Cape of Stranglethorn
						coords = {
							-- #if AFTER CATA
							{ 40.9, 73.8, THE_CAPE_OF_STRANGLETHORN },
							-- #else
							{ 27.1, 77.3, STRANGLETHORN_VALE },
							-- #endif
						},
					}),
					candybucket(28969, {	-- Candy Bucket - The Cape of Stranglethorn, Hardwrench Hideaway, Horde
						provider = { "o", 208147 },	-- Candy Bucket, The Cape of Stranglethorn
						coord = { 35.1, 27.2, THE_CAPE_OF_STRANGLETHORN },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(12351, {	-- Candy Bucket - The Hinterlands, Aerie Peak, Alliance
						provider = { "o", 190054 },	-- Candy Bucket, The Hinterlands
						coords = {
							-- #if AFTER CATA
							{ 14.2, 44.7, THE_HINTERLANDS },
							-- #else
							{ 14.1, 41.5, THE_HINTERLANDS },
							-- #endif
						},
						races = ALLIANCE_ONLY,
					}),
					candybucket(28971, {	-- Candy Bucket - The Hinterlands, Hiri'watha Research Station, Horde
						provider = { "o", 208148 },	-- Candy Bucket, The Hinterlands
						coord = { 31.9, 57.9, THE_HINTERLANDS },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(12387, {	-- Candy Bucket - The Hinterlands, Revantusk Village, Horde
						provider = { "o", 190089 },	-- Candy Bucket, The Hinterlands
						coord = { 78.2, 81.4, THE_HINTERLANDS },
						races = HORDE_ONLY,
					}),
					candybucket(28970, {	-- Candy Bucket - The Hinterlands, Stormfeather Outpost, Alliance
						provider = { "o", 208127 },	-- Candy Bucket, The Hinterlands
						coord = { 66.2, 44.4, THE_HINTERLANDS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12363, {	-- Candy Bucket - Tirisfal Glades, Brill, Horde
						provider = { "o", 190066 },	-- Candy Bucket, Tirisfal Glades
						coord = { 60.9, 51.5, TIRISFAL_GLADES },
						races = HORDE_ONLY,
					}),
					candybucket(28972, {	-- Candy Bucket - Tirisfal Glades, The Bulwark, Horde
						provider = { "o", 208149 },	-- Candy Bucket, Tirisfal Glades
						coord = { 83.0, 72.0, TIRISFAL_GLADES },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(12368, {	-- Candy Bucket - Undercity, The Trade Quarter, Horde
						provider = { "o", 190071 },	-- Candy Bucket, Undercity
						coord = { 67.7, 37.9, UNDERCITY },
						races = HORDE_ONLY,
					}),
					candybucket(28987, {	-- Candy Bucket - Western Plaguelands, Andorhal, Horde
						provider = { "o", 208156 },	-- Candy Bucket, Western Plaguelands
						coord = { 48.2, 63.7, WESTERN_PLAGUELANDS },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(28988, {	-- Candy Bucket - Western Plaguelands, Chillwind Camp, Alliance
						provider = { "o", 208134 },	-- Candy Bucket, Western Plaguelands
						coord = { 43.4, 84.5, WESTERN_PLAGUELANDS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12340, {	-- Candy Bucket - Westfall, Sentinel Hill, Alliance
						-- #if AFTER CATA
						description = "The candy bucket will relocate to Sentinel Tower if the area is phased post Defias attack.",
						-- #endif
						provider = { "o", 190047 },	-- Candy Bucket, Westfall
						coords = {
							{ 52.9, 53.6, WESTFALL },
							-- #if AFTER CATA
							{ 56.8, 47.3, WESTFALL },
							-- #endif
						},
						races = ALLIANCE_ONLY,
					}),
					candybucket(28991, {	-- Candy Bucket - Wetlands, Greenwarden's Grove, Alliance
						provider = { "o", 208135 },	-- Candy Bucket, Wetlands
						coord = { 58.1, 39.2, WETLANDS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12343, {	-- Candy Bucket - Wetlands, Menethil Harbor, Alliance
						provider = { "o", 190044 },	-- Candy Bucket, Wetlands
						coord = { 10.8, 60.9, WETLANDS },
						races = ALLIANCE_ONLY,
					}),
					candybucket(28990, {	-- Candy Bucket - Wetlands, Swiftgear Station, Alliance
						provider = { "o", 208136 },	-- Candy Bucket, Wetlands
						coord = { 26.1, 25.9, WETLANDS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
				})),
				VariableAchHeader(TRICKS_KALIMDOR, timelineSelf({ timeline = { ADDED_2_2_2 } }, {	-- Tricks and Treats of Kalimdor
					candybucket(12345, {	-- Candy Bucket - Ashenvale, Astranaar, Alliance
						provider = { "o", 190035 },	-- Candy Bucket, Ashenvale
						coord = { 37.0, 49.3, ASHENVALE },
						races = ALLIANCE_ONLY,
					}),
					candybucket(28958, {	-- Candy Bucket - Ashenvale, Hellscream's Watch, Horde
						provider = { "o", 208118 },	-- Candy Bucket, Ashenvale
						coord = { 38.6, 42.4, ASHENVALE },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(28953, {	-- Candy Bucket - Ashenvale, Silverwind Refuge, Horde
						provider = { "o", 208117 },	-- Candy Bucket, Ashenvale
						coord = { 50.2, 67.2, ASHENVALE },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(12377, {	-- Candy Bucket - Ashenvale, Splintertree Post, Horde
						provider = { "o", 190079 },	-- Candy Bucket, Ashenvale
						coord = { 73.9, 60.7, ASHENVALE },
						races = HORDE_ONLY,
					}),
					candybucket(28989, {	-- Candy Bucket - Ashenvale, Zoram'gar Outpost, Horde
						provider = { "o", 208119 },	-- Candy Bucket, Ashenvale
						coord = { 13.0, 34.1, ASHENVALE },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(28992, {	-- Candy Bucket - Azshara, Bilgewater Harbor, Horde
						provider = { "o", 208140 },	-- Candy Bucket, Azshara
						coord = { 57.1, 50.2, AZSHARA },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(12333, {	-- Candy Bucket - Azuremyst Isle, Azure Watch, Alliance
						provider = { "o", 190037 },	-- Candy Bucket, Azuremyst Isle
						coord = { 48.5, 49.1, AZUREMYST_ISLE },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12341, {	-- Candy Bucket - Bloodmyst Isle, Blood Watch, Alliance
						provider = { "o", 190045 },	-- Candy Bucket, Bloodmyst Isle
						coord = { 55.7, 59.9, BLOODMYST_ISLE },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12338, {	-- Candy Bucket - Darkshore, Auberdine, Alliance (Removed)
						provider = { "o", 190042 },	-- Candy Bucket, Auberdine
						coord = { 37.0, 44.0, DARKSHORE },
						timeline = { REMOVED_4_0_1 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(28951, {	-- Candy Bucket - Darkshore, Lor'danel, Alliance
						provider = { "o", 208115 },	-- Candy Bucket, Darkshore
						coord = { 50.8, 18.8, DARKSHORE },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12334, {	-- Candy Bucket - Darnassus, Craftsmen's Terrace, Alliance
						provider = { "o", 190038 },	-- Candy Bucket, Darnassus
						coords = {
							-- #if AFTER CATA
							{ 62.2, 33.0, DARNASSUS },
							-- #else
							{ 67.43, 16.0, DARNASSUS },
							-- #endif
						},
						races = ALLIANCE_ONLY,
					}),
					candybucket(28993, {	-- Candy Bucket - Desolace, Karnum's Glade, Neutral
						provider = { "o", 208157 },	-- Candy Bucket, Desolace
						coord = { 56.8, 50.0, DESOLACE },
						timeline = { ADDED_4_1_0 },
					}),
					candybucket(12348, {	-- Candy Bucket - Desolace, Nijel's Point, Alliance
						provider = { "o", 190051 },	-- Candy Bucket, Desolace
						coord = { 66.3, 6.70, DESOLACE },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12381, {	-- Candy Bucket - Desolace, Shadowprey Village, Horde
						provider = { "o", 190083 },	-- Candy Bucket, Desolace
						coord = { 24.1, 68.3, DESOLACE },
						races = HORDE_ONLY,
					}),
					candybucket(12361, {	-- Candy Bucket - Durotar, Razor Hill, Horde
						provider = { "o", 190064 },	-- Candy Bucket, Durotar
						coord = { 51.6, 41.7, DUROTAR },
						races = HORDE_ONLY,
					}),
					candybucket(12383, {	-- Candy Bucket - Dustwallow Marsh, Brackenwall Village, Horde
						provider = { "o", 190085 },	-- Candy Bucket, Dustwallow Marsh
						coord = { 36.8, 32.4, DUSTWALLOW_MARSH },
						races = HORDE_ONLY,
					}),
					candybucket(12398, {	-- Candy Bucket - Dustwallow Marsh, Mudsprocket, Neutral
						provider = { "o", 190104 },	-- Candy Bucket, Dustwallow Marsh
						coord = { 41.86, 74.1, DUSTWALLOW_MARSH },
					}),
					candybucket(12349, {	-- Candy Bucket - Dustwallow Marsh, Theramore, Alliance
						provider = { "o", 190052 },	-- Candy Bucket, Dustwallow Marsh
						coord = { 66.6, 45.3, DUSTWALLOW_MARSH },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12365, {	-- Candy Bucket - Eversong Woods, Fairbreeze Village, Horde
						provider = { "o", 190068 },	-- Candy Bucket, Eversong Woods
						coord = { 43.7, 71.1, EVERSONG_WOODS },
						races = HORDE_ONLY,
					}),
					candybucket(12364, {	-- Candy Bucket - Eversong Woods, Falconwing Square, Horde
						provider = { "o", 190067 },	-- Candy Bucket, Eversong Woods
						coord = { 48.1, 47.8, EVERSONG_WOODS },
						races = HORDE_ONLY,
					}),
					candybucket(28995, {	-- Candy Bucket - Felwood, Talonbranch Glade, Alliance
						provider = { "o", 208159 },	-- Candy Bucket, Felwood
						coord = { 61.8, 26.7, FELWOOD },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(28994, {	-- Candy Bucket - Felwood, Whisperwind Grove, Neutral
						provider = { "o", 208158 },	-- Candy Bucket, Felwood
						coord = { 44.6, 28.9, FELWOOD },
						timeline = { ADDED_4_1_0 },
					}),
					candybucket(28996, {	-- Candy Bucket - Feralas, Camp Ataya, Horde
						provider = { "o", 208160 },	-- Candy Bucket, Feralas
						coord = { 41.4, 15.6, FERALAS },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(12386, {	-- Candy Bucket - Feralas, Camp Mojache, Horde
						provider = { "o", 190088 },	-- Candy Bucket, Feralas
						coord = { 74.8, 45.1, FERALAS },
						races = HORDE_ONLY,
					}),
					candybucket(28952, {	-- Candy Bucket - Feralas, Dreamer's Rest, Alliance
						provider = { "o", 208116 },	-- Candy Bucket, Feralas
						coord = { 51.1, 17.8, FERALAS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12350, {	-- Candy Bucket - Feralas, Feathermoon Stronghold, Alliance
						provider = { "o", 190053 },	-- Candy Bucket, Feralas
						coords = {
							-- #if AFTER CATA
							{ 46.3, 45.2, FERALAS },
							-- #else
							{ 30.9, 43.5, FERALAS },
							-- #endif
						},
						races = ALLIANCE_ONLY,
					}),
					candybucket(28998, {	-- Candy Bucket - Feralas, Stonemaul Hold, Horde
						provider = { "o", 208161 },	-- Candy Bucket, Feralas
						coord = { 52.0, 47.7, FERALAS },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(12373, {	-- Candy Bucket - Ghostlands, Tranquillien, Horde
						provider = { "o", 190075 },	-- Candy Bucket, Ghostlands
						coord = { 48.7, 31.9, GHOSTLANDS },
						races = HORDE_ONLY,
					}),
					candybucket(12362, {	-- Candy Bucket - Mulgore, Bloodhoof Village, Horde
						provider = { "o", 190065 },	-- Candy Bucket, Mulgore
						coord = { 46.8, 60.4, MULGORE },
						races = HORDE_ONLY,
					}),
					candybucket(12374, {	-- Candy Bucket - Northern Barrens, Crossroads, Horde
						provider = { "o", 190076 },	-- Candy Bucket, Northern Barrens
						coords = {
							-- #if AFTER CATA
							{ 49.5, 58.0, NORTHERN_BARRENS },
							-- #else
							{ 52.0, 29.9, THE_BARRENS },
							-- #endif
						},
						races = HORDE_ONLY,
					}),
					candybucket(29002, {	-- Candy Bucket - Northern Barrens, Grol'dom Farm, Horde
						provider = { "o", 208165 },	-- Candy Bucket, Northern Barrens
						coord = { 56.3, 40.1, NORTHERN_BARRENS },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(29003, {	-- Candy Bucket - Northern Barrens, Nozzlepot's Outpost, Horde
						provider = { "o", 208166 },	-- Candy Bucket, Northern Barrens
						coord = { 62.5, 16.6, NORTHERN_BARRENS },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(12396, {	-- Candy Bucket - Northern Barrens, Ratchet, Neutral
						provider = { "o", 190102 },	-- Candy Bucket, Northern Barrens
						coords = {
							-- #if AFTER CATA
							{ 67.3, 74.7, NORTHERN_BARRENS },
							-- #else
							{ 62.1, 39.4, THE_BARRENS },
							-- #endif
						},
					}),
					candybucket(12366, {	-- Candy Bucket - Orgrimmar, Valley of Strength, Horde
						provider = { "o", 190069 },	-- Candy Bucket, Orgrimmar
						coord = { 53.8, 78.8, ORGRIMMAR },
						races = HORDE_ONLY,
					}),
					candybucket(12401, {	-- Candy Bucket - Silithus, Cenarion Hold, Neutral
						provider = { "o", 190107 },	-- Candy Bucket, Silithus
						coords = {
							-- #if AFTER CATA
							{ 55.5, 36.7, SILITHUS },
							-- #else
							{ 51.8, 39.2, SILITHUS },
							-- #endif
						},
					}),
					candybucket(12375, {	-- Candy Bucket - Southern Barrens, Camp Taurajo, Horde (Removed)
						provider = { "o", 190077 },	-- Candy Bucket, Camp Taurajo
						coord = { 45.6, 59.1, THE_BARRENS },
						timeline = { REMOVED_4_0_1 },
						races = HORDE_ONLY,
					}),
					candybucket(29005, {	-- Candy Bucket - Southern Barrens, Desolation Hold, Horde
						provider = { "o", 208168 },	-- Candy Bucket, Southern Barrens
						coord = { 40.7, 69.3, SOUTHERN_BARRENS },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(29008, {	-- Candy Bucket - Southern Barrens, Fort Triumph, Alliance
						provider = { "o", 208171 },	-- Candy Bucket, Southern Barrens
						coord = { 49.1, 68.5, SOUTHERN_BARRENS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(29006, {	-- Candy Bucket - Southern Barrens, Honor's Stand, Alliance
						provider = { "o", 208169 },	-- Candy Bucket, Southern Barrens
						coord = { 39.0, 11.0, SOUTHERN_BARRENS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(29004, {	-- Candy Bucket - Southern Barrens, Hunter's Hill, Horde
						provider = { "o", 208167 },	-- Candy Bucket, Southern Barrens
						coord = { 39.3, 20.1, SOUTHERN_BARRENS },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(29007, {	-- Candy Bucket - Southern Barrens, Northwatch Hold, Alliance
						provider = { "o", 208170 },	-- Candy Bucket, Southern Barrens
						coord = { 65.6, 46.6, SOUTHERN_BARRENS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(29013, {	-- Candy Bucket - Stonetalon Mountains, Farwatcher's Glen, Alliance
						provider = { "o", 208176 },	-- Candy Bucket, Stonetalon Mountains
						coord = { 31.5, 60.7, STONETALON_MOUNTAINS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(29009, {	-- Candy Bucket - Stonetalon Mountains, Krom'gar Fortress, Horde
						provider = { "o", 208172 },	-- Candy Bucket, Stonetalon Mountains
						coord = { 66.5, 64.2, STONETALON_MOUNTAINS },
						timeline = { ADDED_4_1_0 },
						races = HORDE_ONLY,
					}),
					candybucket(29010, {	-- Candy Bucket - Stonetalon Mountains, Northwatch Expedition Base, Alliance
						provider = { "o", 208173 },	-- Candy Bucket, Stonetalon Mountains
						coord = { 71.0, 79.1, STONETALON_MOUNTAINS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12347, {	-- Candy Bucket - Stonetalon Mountains, Stonetalon Peak, Alliance
						provider = { "o", 190050 },	-- Candy Bucket, Stonetalon Mountains
						coords = {
							-- #if AFTER CATA
							{ 40.6, 17.7, STONETALON_MOUNTAINS },
							-- #else
							{ 35.5, 6.4, STONETALON_MOUNTAINS },
							-- #endif
						},
						races = ALLIANCE_ONLY,
					}),
					candybucket(12378, {	-- Candy Bucket - Stonetalon Mountains, Sun Rock Retreat, Horde
						provider = { "o", 190080 },	-- Candy Bucket, Stonetalon Mountains
						coord = { 50.4, 63.8, STONETALON_MOUNTAINS },
						races = HORDE_ONLY,
					}),
					candybucket(29012, {	-- Candy Bucket - Stonetalon Mountains, Thal'darah Overlook, Alliance
						provider = { "o", 208175 },	-- Candy Bucket, Stonetalon Mountains
						coord = { 39.5, 32.8, STONETALON_MOUNTAINS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(29011, {	-- Candy Bucket - Stonetalon Mountains, Windshear Hold, Alliance
						provider = { "o", 208174 },	-- Candy Bucket, Stonetalon Mountains
						coord = { 59.1, 56.3, STONETALON_MOUNTAINS },
						timeline = { ADDED_4_1_0 },
						races = ALLIANCE_ONLY,
					}),
					candybucket(29014, {	-- Candy Bucket - Tanaris, Bootlegger Outpost, Neutral
						provider = { "o", 208177 },	-- Candy Bucket, Tanaris
						coord = { 55.7, 60.9, TANARIS },
						timeline = { ADDED_4_1_0 },
					}),
					candybucket(12399, {	-- Candy Bucket - Tanaris, Gadgetzan, Neutral
						provider = { "o", 190105 },	-- Candy Bucket, Tanaris
						coords = {
							-- #if AFTER CATA
							{ 52.6, 27.1, TANARIS },
							-- #else
							{ 52.5, 27.9, TANARIS },
							-- #endif
						},
					}),
					candybucket(12331, {	-- Candy Bucket - Teldrassil, Dolanaar, Alliance
						provider = { "o", 190034 },	-- Candy Bucket, Teldrassil
						coords = {
							-- #if AFTER CATA
							{ 55.4, 52.3, TELDRASSIL },
							-- #else
							{ 55.6, 59.8, TELDRASSIL },
							-- #endif
						},
						races = ALLIANCE_ONLY,
					}),
					candybucket(12337, {	-- Candy Bucket - The Exodar, Seat of the Naaru, Alliance
						provider = { "o", 190041 },	-- Candy Bucket, The Exodar
						coord = { 59.3, 19.2, THE_EXODAR },
						races = ALLIANCE_ONLY,
					}),
					candybucket(12379, {	-- Candy Bucket - Thousand Needles, Freewind Post, Horde (Removed)
						provider = { "o", 190081 },	-- Candy Bucket, Thousand Needles
						coord = { 46.1, 51.4, THOUSAND_NEEDLES },
						timeline = { REMOVED_4_0_1 },
						races = HORDE_ONLY,
					}),
					candybucket(12367, {	-- Candy Bucket - Thunder Bluff, Lower Rise, Horde
						provider = { "o", 190070 },	-- Candy Bucket, Thunder Bluff
						coord = { 45.7, 64.5, THUNDER_BLUFF },
						races = HORDE_ONLY,
					}),
					candybucket(29018, {	-- Candy Bucket - Un'Goro Crater, Marshal's Stand, Neutral
						provider = { "o", 208180 },	-- Candy Bucket, Un'Goro Crater
						coord = { 55.2, 62.1, UNGORO_CRATER },
						timeline = { ADDED_4_1_0 },
					}),
					candybucket(12400, {	-- Candy Bucket - Winterspring, Everlook, Neutral
						provider = { "o", 190106 },	-- Candy Bucket, Winterspring
						coords = {
							-- #if AFTER CATA
							{ 59.8, 51.2, WINTERSPRING },
							-- #else
							{ 61.3, 38.9, WINTERSPRING },
							-- #endif
						},
					}),
				})),
			},
		}),
		n(QUESTS, {
			q(12135, {	-- "Let the Fires Come!" (Alliance)
				qg = 24519,	-- Costumed Orphan Matron
				coords = {
					{ 60.8, 53.6, AZUREMYST_ISLE },
					-- #if AFTER CATA
					{ 53.4, 51.5, DUN_MOROGH },
					-- #else
					{ 46.2, 53.1, DUN_MOROGH },
					-- #endif
					{ 42.6, 64.6, ELWYNN_FOREST },
				},
				timeline = { ADDED_2_2_2 },
				races = ALLIANCE_ONLY,
				isDaily = true,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm original level requirement
				groups = {
					-- #if AFTER CATA
					i(TRICKY_TREAT),
					-- #else
					i(20557),	-- Hallow's End Pumpkin Treat
					-- #endif
					i(34068),	-- Weighted Jack-o'-Lantern
				},
			}),
			q(12139, {	-- "Let the Fires Come!" (Horde)
				qg = 23973,	-- Masked Orphan Matron
				coords = {
					{ 52.6, 41.5, DUROTAR },
					{ 47.2, 46.4, EVERSONG_WOODS },
					{ 60.8, 53.6, TIRISFAL_GLADES },
				},
				timeline = { ADDED_2_2_2 },
				races = HORDE_ONLY,
				isDaily = true,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm original level requirement
				groups = {
					-- #if AFTER CATA
					i(TRICKY_TREAT),
					-- #else
					i(20557),	-- Hallow's End Pumpkin Treat
					-- #endif
					i(34068),	-- Weighted Jack-o'-Lantern
				},
			}),
			q(29430, {	-- A Friend in Need (Alliance)
				qg = 51934,	-- Gretchen Fenlow
				coord = { 32.3, 50.9, ELWYNN_FOREST },
				timeline = { ADDED_4_2_2 },
				maps = { STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,
				lvl = lvlsquish(10, 10, 1),
			}),
			q(29431, {	-- A Friend in Need (Horde)
				qg = 53763,	-- Candace Fenlow
				coord = { 62.4, 66.7, TIRISFAL_GLADES },
				timeline = { ADDED_4_2_2 },
				maps = { ORGRIMMAR },
				races = HORDE_ONLY,
				isBreadcrumb = true,
				lvl = lvlsquish(10, 10, 1),
			}),
			q(93898, {	-- A Haunted Home
				qg = 220307,	-- Holiday Enthusiast
				coord = { 51.1, 76.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				maps = { FOUNDERS_POINT, RAZORWIND_SHORES },
				timeline = { ADDED_12_1_5 },
			}),
			q(29074, {	-- A Season for Celebration (Alliance)
				qgs = {
					18927,	-- Human Commoner
					19148,	-- Dwarf Commoner
					19171,	-- Draenei Commoner
					19172,	-- Gnome Commoner
					19173,	-- Night Elf Commoner
					20102,	-- Goblin Commoner
				},
				timeline = { ADDED_4_2_2 },
				maps = {
					NORTHERN_BARRENS,
					TANARIS,
					WINTERSPRING,
					IRONFORGE,
					STORMWIND_CITY,
					DARNASSUS,
					THE_EXODAR,
					NETHERSTORM,
					SHATTRATH_CITY,
					THE_STORM_PEAKS,
					THE_CAPE_OF_STRANGLETHORN,
					NORTHREND_DALARAN,
				},
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,
			}),
			q(29400, {	-- A Season for Celebration (Horde)
				qgs = {
					19169,	-- Blood Elf Commoner
					19175,	-- Orc Commoner
					19176,	-- Tauren Commoner
					19177,	-- Troll Commoner
					19178,	-- Forsaken Commoner
					20102,	-- Goblin Commoner
					-- #if AFTER TWW
					220870,	-- Holiday Enthusiast
					-- #endif
				},
				timeline = { ADDED_4_2_2 },
				maps = {
					NORTHERN_BARRENS,
					TANARIS,
					WINTERSPRING,
					ORGRIMMAR,
					THUNDER_BLUFF,
					UNDERCITY,
					EVERSONG_WOODS,
					NETHERSTORM,
					SHATTRATH_CITY,
					THE_STORM_PEAKS,
					THE_CAPE_OF_STRANGLETHORN,
					NORTHREND_DALARAN,
					-- #if AFTER TWW
					DORNOGAL
					-- #endif
				},
				races = HORDE_ONLY,
				isBreadcrumb = true,
			}),
			q(53122, {	-- A Season for Celebration (Horde - New Tirisfal Glades)
				qgs = {
					19169,	-- Blood Elf Commoner
					19175,	-- Orc Commoner
					19176,	-- Tauren Commoner
					19177,	-- Troll Commoner
					19178,	-- Forsaken Commoner
					20102,	-- Goblin Commoner
				},
				timeline = { ADDED_8_0_1 },
				maps = {
					NORTHERN_BARRENS,
					TANARIS,
					WINTERSPRING,
					ORGRIMMAR,
					THUNDER_BLUFF,
					UNDERCITY,
					EVERSONG_WOODS,
					NETHERSTORM,
					SHATTRATH_CITY,
					THE_STORM_PEAKS,
					THE_CAPE_OF_STRANGLETHORN,
					NORTHREND_DALARAN,
				},
				races = HORDE_ONLY,
				isBreadcrumb = true,
			}),
			q(29377, {	-- A Time to Break Down
				sourceQuests = {
					29400,	-- A Season for Celebration (Horde)
					-- #if AFTER 8.0.1
					53122,	-- A Season for Celebration (Horde - New Tirisfal Glades)
					-- #endif
				},
				qg = 15197,	-- Darkcaller Yanka
				coord = { 62.0, 67.8, TIRISFAL_GLADES },
				timeline = { ADDED_4_2_2 },
				maps = { ELWYNN_FOREST },
				races = HORDE_ONLY,
				isDaily = true,
				groups = {
					objective(1, {	-- Douse the Alliance's Wickerman
						provider = { "i", 68647 },	-- Dousing Agent
						coord = { 32.1, 50.6, ELWYNN_FOREST },
					}),
					i(TRICKY_TREAT),
				},
			}),
			q(29376, {	-- A Time to Build Up
				sourceQuests = {
					29400,	-- A Season for Celebration (Horde)
					-- #if AFTER 8.0.1
					53122,	-- A Season for Celebration (Horde - New Tirisfal Glades)
					-- #endif
				},
				qg = 15197,	-- Darkcaller Yanka
				coord = { 62.0, 67.8, TIRISFAL_GLADES },
				timeline = { ADDED_4_2_2 },
				races = HORDE_ONLY,
				isDaily = true,
				groups = {
					i(TRICKY_TREAT),
				},
			}),
			q(29075, {	-- A Time to Gain
				sourceQuest = 29074,	-- A Season for Celebration (Alliance)
				qg = 51665,	-- Celestine of the Harvest
				coord = { 32.0, 50.4, ELWYNN_FOREST },
				timeline = { ADDED_4_2_2 },
				races = ALLIANCE_ONLY,
				isDaily = true,
				groups = {
					i(TRICKY_TREAT),
				},
			}),
			q(29371, {	-- A Time to Lose
				sourceQuest = 29074,	-- A Season for Celebration (Alliance)
				qg = 52064,	-- Keira
				coord = { 32.0, 50.4, ELWYNN_FOREST },
				timeline = { ADDED_4_2_2 },
				maps = { TIRISFAL_GLADES },
				races = ALLIANCE_ONLY,
				isDaily = true,
				groups = {
					objective(1, {	-- Douse the Horde's Wickerman
						provider = { "i", 68648 },	-- Dousing Agent
						coord = { 62.0, 67.8, TIRISFAL_GLADES },
					}),
					i(TRICKY_TREAT),
				},
			}),
			q(43259, {	-- Beware of the Crooked Tree
				qg = 109854,	-- Duroc Ironjaw
				coord = { 47.4, 40.6, LEGION_DALARAN },
				timeline = { ADDED_7_0_3 },
				maps = { VALSHARAH },
				isYearly = true,
				lvl = lvlsquish(98, 98, 40),	-- TODO: Check Level Requirement
			}),
			q(92104, {	-- Broomstick Express
				qgs = {
					263976,	-- Alaric Duskwick
					249275,	-- Nargok Ghostcleaver
				},
				coords = {
					{ 54.1, 33.8, FOUNDERS_POINT },
					{ 51.7, 54.3, RAZORWIND_SHORES },
				},
				isDaily = true,
				timeline = { ADDED_12_1_5 },
				groups = {
					i(TRICKY_TREAT),
					i(DRUSTVAR_CHOC),
					i(DUSKWOOD_CARAMEL),
					i(FELWOOD_FUDGE),
				},
			}),
			q(11392, {	-- Call the Headless Horseman
				sourceQuests = {
					11135,	-- The Headless Horseman
					11220,	-- The Headless Horseman
				},
				provider = { "o", 186267 },	-- Pumpkin Shrine
				timeline = { ADDED_2_2_2, REMOVED_3_3_0 },
				maps = {
					SCARLET_MONASTERY,
					436,	-- Scarlet Monastery, Crusader's Chapel
				},
				lvl =
					-- #if AFTER WRATH
					75,
					-- #else
					65,
					-- #endif
			}),
			q(29144, {	-- Clean Up in Stormwind
				qg = 51934,	-- Gretchen Fenlow
				coord = { 32.2, 50.8, ELWYNN_FOREST },
				timeline = { ADDED_4_2_2 },
				maps = { STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				isDaily = true,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm original level requirement
				groups = {
					objective(1, {	-- Stink Bombs Removed
						provider = { "i", 69191 },	-- Arcane Cleanser
					}),
					i(TRICKY_TREAT),
				},
			}),
			q(29375, {	-- Clean Up in Undercity
				sourceQuests = {
					29400,	-- A Season for Celebration (Horde)
					-- #if AFTER 8.0.1
					53122,	-- A Season for Celebration (Horde - New Tirisfal Glades)
					-- #endif
				},
				qg = 53763,	-- Candace Fenlow
				coord = { 62.4, 66.7, TIRISFAL_GLADES },
				timeline = { ADDED_4_2_2 },
				maps = { UNDERCITY },
				races = HORDE_ONLY,
				isDaily = true,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm original level requirement
				groups = {
					objective(1, {	-- Stink Bombs Removed
						provider = { "i", 70727 },	-- Arcane Cleanser
					}),
					i(TRICKY_TREAT),
				},
			}),
			q(98801, {	-- Community Candy Crawl
				maps = { FOUNDERS_POINT, RAZORWIND_SHORES },
				isWorldQuest = true,
				timeline = { ADDED_12_1_5 },
				qi = 284591,	-- Neighboorhood Candy (QI!)
			}),
			q(11356, {	-- Costumed Orphan Matron
				qgs = {
					18927,	-- Human Commoner
					19148,	-- Dwarf Commoner
					19171,	-- Draenei Commoner
					19172,	-- Gnome Commoner
					19173,	-- Night Elf Commoner
					20102,	-- Goblin Commoner
				},
				timeline = { ADDED_2_2_2 },
				maps = {
					TANARIS,
					WINTERSPRING,
					IRONFORGE,
					STORMWIND_CITY,
					DARNASSUS,
					THE_EXODAR,
					NETHERSTORM,
					SHATTRATH_CITY,
					-- #if AFTER CATA
					NORTHERN_BARRENS,
					THE_CAPE_OF_STRANGLETHORN,
					-- #else
					STRANGLETHORN_VALE,
					THE_BARRENS,
					-- #endif
					-- #if AFTER WRATH
					THE_STORM_PEAKS,
					NORTHREND_DALARAN,
					-- #endif
				},
				races = ALLIANCE_ONLY,
				isBreadcrumb = true
			}),
			q(1658, {	-- Crashing the Wickerman Festival
				qg = 15199,	-- Sergeant Hartman
				coord = { 50.0, 57.2, HILLSBRAD_FOOTHILLS },
				timeline = { REMOVED_4_0_3 },
				maps = { SILVERPINE_FOREST, TIRISFAL_GLADES },
				races = ALLIANCE_ONLY,
				isYearly = true,
				lvl = 25,
				groups = {
					objective(1, {	-- Scout out the Forsaken's Wickerman Festival.
						provider = { "o", 181672 },	-- Wickerman Effigy
						coord = { 56.0, 69.0, TIRISFAL_GLADES },
					}),
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
			q(39721, {	-- Culling the Crew
				qg = 96705,	-- Orukan
				timeline = { ADDED_6_0_2 },
				maps = {
					FROSTWALL,
					LUNARFALL,
					DRAENOR_SHADOWMOON_VALLEY,
				},
				isDaily = true,
				lvl = lvlsquish(100, 100, 40),
				groups = {
					objective(1, {	-- 0/12 Boneship Crewman slain
						crs = {
							96536,	-- Salty Dreg
							96538,	-- Brackish Cultivator
							96637,	-- Boneship Reveler
						},
					}),
					i(128658),	-- Spooky Supplies
				},
			}),
			q(29398, {	-- Fencing the Goods (Alliance)
				sourceQuest = 29392,	-- Missing Heirlooms (Alliance)
				qg = 53950,	-- Hired Courier
				coords = {
					-- #if AFTER LEGION
					{ 24.0, 44.6, STORMWIND_CITY },
					-- #else
					{ 24.1, 44.8, STORMWIND_CITY },
					-- #endif
				},
				timeline = { ADDED_4_2_2 },
				races = ALLIANCE_ONLY,
				lvl = lvlsquish(10, 10, 1),
			}),
			q(29416, {	-- Fencing the Goods (Horde)
				sourceQuest = 29415,	-- Missing Heirlooms (Horde)
				qg = 54142,	-- Hired Courier
				coord = { 57.4, 9.0, DUROTAR },
				timeline = { ADDED_4_2_2 },
				maps = { ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = lvlsquish(10, 10, 1),
			}),
			q(11440, {	-- Fire Brigade Practice (Azuremyst Isle)
				sourceQuest = 11356,	-- Costumed Orphan Matron
				qg = 24519,	-- Costumed Orphan Matron
				coord = { 49.2, 51.4, AZUREMYST_ISLE },
				timeline = { ADDED_2_2_2 },
				races = ALLIANCE_ONLY,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
				groups = {
					objective(1, {	-- 0/5 Fight Fires
						provider = { "i", 32971 },	-- Water Bucket
					}),
					-- #if AFTER CATA
					i(TRICKY_TREAT),
					-- #else
					i(20557),	-- Hallow's End Pumpkin Treat
					-- #endif
				},
			}),
			q(11360, {	-- Fire Brigade Practice (Elwynn Forest)
				sourceQuest = 11356,	-- Costumed Orphan Matron
				qg = 24519,	-- Costumed Orphan Matron
				coord = { 42.6, 64.4, ELWYNN_FOREST },
				timeline = { ADDED_2_2_2 },
				races = ALLIANCE_ONLY,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
				groups = {
					objective(1, {	-- 0/5 Fight Fires
						provider = { "i", 32971 },	-- Water Bucket
					}),
					-- #if AFTER CATA
					i(TRICKY_TREAT),
					-- #else
					i(20557),	-- Hallow's End Pumpkin Treat
					-- #endif
				},
			}),
			q(11439, {	-- Fire Brigade Practice (Dun Morogh)
				sourceQuest = 11356,	-- Costumed Orphan Matron
				qg = 24519,	-- Costumed Orphan Matron
				coords = {
					-- #if AFTER CATA
					{ 53.2, 51.4, DUN_MOROGH },
					-- #else
					{ 46.2, 53.1, DUN_MOROGH },
					-- #endif
				},
				timeline = { ADDED_2_2_2 },
				races = ALLIANCE_ONLY,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
				groups = {
					objective(1, {	-- 0/5 Fight Fires
						provider = { "i", 32971 },	-- Water Bucket
					}),
					-- #if AFTER CATA
					i(TRICKY_TREAT),
					-- #else
					i(20557),	-- Hallow's End Pumpkin Treat
					-- #endif
				},
			}),
			q(11361, {	-- Fire Training (Durotar)
				sourceQuest = 11357,	-- Masked Orphan Matron
				qg = 23973,	-- Masked Orphan Matron
				coord = { 52.5, 41.2, DUROTAR },
				timeline = { ADDED_2_2_2 },
				races = HORDE_ONLY,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
				groups = {
					objective(1, {	-- 0/5 Fight Fires
						provider = { "i", 32971 },	-- Water Bucket
					}),
					-- #if AFTER CATA
					i(TRICKY_TREAT),
					-- #else
					i(20557),	-- Hallow's End Pumpkin Treat
					-- #endif
				},
			}),
			q(11450, {	-- Fire Training (Eversong Woods)
				sourceQuest = 11357,	-- Masked Orphan Matron
				qg = 23973,	-- Masked Orphan Matron
				coord = { 47.2, 46.6, EVERSONG_WOODS },
				timeline = { ADDED_2_2_2 },
				races = HORDE_ONLY,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
				groups = {
					objective(1, {	-- 0/5 Fight Fires
						provider = { "i", 32971 },	-- Water Bucket
					}),
					-- #if AFTER CATA
					i(TRICKY_TREAT),
					-- #else
					i(20557),	-- Hallow's End Pumpkin Treat
					-- #endif
				},
			}),
			q(11449, {	-- Fire Training (Tirisfal Glades)
				sourceQuest = 11357,	-- Masked Orphan Matron
				qg = 23973,	-- Masked Orphan Matron
				coords = {
					-- #if AFTER CATA
					{ 60.8, 53.6, TIRISFAL_GLADES },
					-- #else
					{ 60.9, 53.0, TIRISFAL_GLADES },
					-- #endif
				},
				timeline = { ADDED_2_2_2 },
				races = HORDE_ONLY,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
				groups = {
					objective(1, {	-- 0/5 Fight Fires
						provider = { "i", 32971 },	-- Water Bucket
					}),
					-- #if AFTER CATA
					i(TRICKY_TREAT),
					-- #else
					i(20557),	-- Hallow's End Pumpkin Treat
					-- #endif
				},
			}),
			q(39720, {	-- Foul Fertilizer
				qg = 96705,	-- Orukan
				timeline = { ADDED_6_0_2 },
				maps = {
					FROSTWALL,
					LUNARFALL,
					DRAENOR_SHADOWMOON_VALLEY,
				},
				isDaily = true,
				lvl = lvlsquish(100, 100, 40),
				groups = {
					objective(1, {	-- 0/8 Dread Fertilizer
						provider = { "n", 96765 },	-- Dread Fertilizer
						coord = { 40.4, 82.0, DRAENOR_SHADOWMOON_VALLEY },
					}),
					i(128658),	-- Spooky Supplies
				},
			}),
			q(11242, {	-- Free at Last! (Alliance)
				qg = 23904,	-- Sir Thomas
				timeline = { ADDED_2_2_2, REMOVED_4_0_1 },
				maps = { SCARLET_MONASTERY },
				provider = { "i", 33277 },	-- Tome of Thomas Thomson
				races = ALLIANCE_ONLY,
				lvl = lvlsquish(60, 60, 25),
			}),
			q(11403, {	-- Free at Last! (Horde)
				qg = 23904,	-- Sir Thomas
				timeline = { ADDED_2_2_2, REMOVED_4_0_1 },
				maps = { SCARLET_MONASTERY },
				provider = { "i", 33277 },	-- Tome of Thomas Thomson
				races = HORDE_ONLY,
				lvl = lvlsquish(60, 60, 25),
			}),
			q(8311, {	-- Hallow's End Treats for Jesper!
				qg = 15310,	-- Jesper
				coords = {
					-- #if AFTER CATA
					{ 32.0, 50.4, ELWYNN_FOREST },
					-- #elseif AFTER WRATH
					{ 56.6, 51.8, STORMWIND_CITY },
					-- #else
					{ 47.6, 35.4, STORMWIND_CITY },
					-- #endif
				},
				maxReputation = { 469, EXALTED },	-- Alliance, Exalted.
				races = ALLIANCE_ONLY,
				isYearly = true,
				lvl = lvlsquish(10, 10, 1),
				groups = {
					q(8356, {	-- Flexing for Nougat (Alliance)
						qg = 6740,	-- Innkeeper Allison <Innkeeper>
						coords = {
							-- #if AFTER WRATH
							{ 60.4, 75.3, STORMWIND_CITY },
							-- #else
							{ 52.6, 65.6, STORMWIND_CITY },
							-- #endif
						},
						races = ALLIANCE_ONLY,
						repeatable = true,
						groups = {
							objective(1, {	-- 0/1 Stormwind Nougat
								questID = 8311,	-- Hallow's End Treats for Jesper!
								provider = { "i", 20492 },	-- Stormwind Nougat
							}),
						},
					}),
					q(8355, {	-- Incoming Gumdrop (Alliance)
						qg = 6826,	-- Talvash del Kissel
						coord = { 36.0, 4.0, IRONFORGE },
						races = ALLIANCE_ONLY,
						repeatable = true,
						groups = {
							objective(2, {	-- 0/1 Gnomeregan Gumdrop
								questID = 8311,	-- Hallow's End Treats for Jesper!
								provider = { "i", 20494 },	-- Gnomeregan Gumdrop
							}),
						},
					}),
					q(8353, {	-- Chicken Clucking for a Mint (Alliance)
						qg = 5111,	-- Innkeeper Firebrew <Innkeeper>
						coord = { 18.6, 51.4, IRONFORGE },
						races = ALLIANCE_ONLY,
						repeatable = true,
						groups = {
							objective(3, {	-- 0/1 Ironforge Mint
								questID = 8311,	-- Hallow's End Treats for Jesper!
								provider = { "i", 20490 },	-- Ironforge Mint
							}),
						},
					}),
					q(8357, {	-- Dancing for Marzipan (Alliance)
						qg = 6735,	-- Innkeeper Saelienne <Innkeeper>
						coords = {
							-- #if AFTER CATA
							{ 62.4, 32.8, DARNASSUS },
							-- #else
							{ 67.2, 15.8, DARNASSUS },
							-- #endif
						},
						races = ALLIANCE_ONLY,
						repeatable = true,
						groups = {
							objective(4, {	-- 0/1 Darnassus Marzipan
								questID = 8311,	-- Hallow's End Treats for Jesper!
								provider = { "i", 20496 },	-- Darnassus Marzipan
							}),
						},
					}),
					-- #if AFTER CATA
					i(TRICKY_TREAT),
					-- #else
					i(20557),	-- Hallow's End Pumpkin Treat
					-- #endif
				},
			}),
			q(8312, {	-- Hallow's End Treats for Spoops!
				qg = 15309,	-- Spoops
				coords = {
					-- #if AFTER CATA
					{ 67.4, 7.0, UNDERCITY },
					-- #elseif AFTER CATA
					{ 62.1, 66.4, TIRISFAL_GLADES },
					-- #else
					{ 71.2, 22.8, ORGRIMMAR },
					-- #endif
				},
				maxReputation = { 67, EXALTED },	-- Horde, Exalted.
				races = HORDE_ONLY,
				isYearly = true,
				lvl = lvlsquish(10, 10, 1),
				groups = {
					q(8359, {	-- Flexing for Nougat (Horde)
						qg = 6929,	-- Innkeeper Gryshka <Innkeeper>
						coords = {
							-- #if AFTER LEGION
							{ 53.6, 78.8, ORGRIMMAR },
							-- #elseif AFTER CATA
							{ 54.2, 68.4, ORGRIMMAR },
							-- #else
							{ 54.2, 68.4, ORGRIMMAR },
							-- #endif
						},
						races = HORDE_ONLY,
						repeatable = true,
						groups = {
							objective(1, {	-- 0/1 Orgrimmar Nougat
								questID = 8312,	-- Hallow's End Treats for Spoops!
								provider = { "i", 20493 },	-- Orgrimmar Nougat
							}),
						},
					}),
					q(8358, {	-- Incoming Gumdrop (Horde)
						qg = 11814,	-- Kali Remik
						coords = {
							-- #if AFTER LEGION
							{ 32.6, 65.0, ORGRIMMAR },
							-- #elseif AFTER CATA
							{ 33.5, 64.9, ORGRIMMAR },
							-- #else
							{ 56.2, 74.2, DUROTAR },
							-- #endif
						},
						races = HORDE_ONLY,
						repeatable = true,
						groups = {
							objective(2, {	-- 0/1 Darkspear Gumdrop
								questID = 8312,	-- Hallow's End Treats for Spoops!
								provider = { "i", 20495 },	-- Darkspear Gumdrop
							}),
						},
					}),
					q(8354, {	-- Chicken Clucking for a Mint (Horde)
						qg = 6741,	-- Innkeeper Norman <Innkeeper>
						coord = { 67.8, 38.6, UNDERCITY },
						races = HORDE_ONLY,
						repeatable = true,
						groups = {
							objective(3, {	-- 0/1 Undercity Mint
								questID = 8312,	-- Hallow's End Treats for Spoops!
								provider = { "i", 20491 },	-- Undercity Mint
							}),
						},
					}),
					q(8360, {	-- Dancing for Marzipan (Horde)
						qg = 6746,	-- Innkeeper Pala <Innkeeper>
						coord = { 45.8, 64.4, THUNDER_BLUFF },
						races = HORDE_ONLY,
						repeatable = true,
						groups = {
							objective(4, {	-- 0/1 Thunder Bluff Marzipan
								questID = 8312,	-- Hallow's End Treats for Spoops!
								provider = { "i", 20497 },	-- Thunder Bluff Marzipan
							}),
						},
					}),
					-- #if AFTER CATA
					i(TRICKY_TREAT),
					-- #else
					i(20557),	-- Hallow's End Pumpkin Treat
					-- #endif
				},
			}),
			q(11357, {	-- Masked Orphan Matron
				qgs = {
					19169,	-- Blood Elf Commoner
					19175,	-- Orc Commoner
					19176,	-- Tauren Commoner
					19177,	-- Troll Commoner
					19178,	-- Forsaken Commoner
					20102,	-- Goblin Commoner
					-- #if AFTER TWW
					220870,	-- Holiday Enthusiast
					-- #endif
				},
				timeline = { ADDED_2_2_2 },
				maps = {
					TANARIS,
					WINTERSPRING,
					ORGRIMMAR,
					THUNDER_BLUFF,
					UNDERCITY,
					EVERSONG_WOODS,
					NETHERSTORM,
					SHATTRATH_CITY,
					-- #if AFTER CATA
					NORTHERN_BARRENS,
					THE_CAPE_OF_STRANGLETHORN,
					-- #else
					THE_BARRENS,
					STRANGLETHORN_VALE,
					-- #endif
					-- #if AFTER WRATH
					NORTHREND_DALARAN,
					THE_STORM_PEAKS,
					-- #endif
					-- #if AFTER TWW
					DORNOGAL
					-- #endif
				},
				races = HORDE_ONLY,
				isBreadcrumb = true
			}),
			q(29392, {	-- Missing Heirlooms (Alliance)
				sourceQuest = 29430,	-- A Friend in Need (Alliance)
				qg = 53949,	-- Anson Hastings
				coords = {
					-- #if AFTER LEGION
					{ 60.2, 75.2, STORMWIND_CITY },
					-- #else
					{ 61.1, 70.6, STORMWIND_CITY },
					-- #endif
				},
				timeline = { ADDED_4_2_2 },
				races = ALLIANCE_ONLY,
				lvl = lvlsquish(10, 10, 1),
			}),
			q(29415, {	-- Missing Heirlooms (Horde)
				sourceQuest = 29431,	-- A Friend in Need (Horde)
				qg = 54141,	-- Edgar Goodwin
				coord = { 54.4, 77.6, ORGRIMMAR },
				timeline = { ADDED_4_2_2 },
				races = HORDE_ONLY,
				lvl = lvlsquish(10, 10, 1),
			}),
			q(39719, {	-- Mutiny on the Boneship
				qg = 96705,	-- Orukan
				timeline = { ADDED_6_0_2 },
				maps = {
					FROSTWALL,
					LUNARFALL,
					DRAENOR_SHADOWMOON_VALLEY,
				},
				isDaily = true,
				lvl = lvlsquish(100, 100, 40),
				groups = {
					objective(1, {	-- Captain Bonerender slain
						provider = { "n", 96535 },	-- Captain Bonerender
						coord = { 38.8, 86.2, DRAENOR_SHADOWMOON_VALLEY },
					}),
					i(128658),	-- Spooky Supplies
				},
			}),
			q(8322, {	-- Rotten Eggs
				qg = 15197,	-- Darkcaller Yanka
				coords = {
					{ 55.6, 69.9, TIRISFAL_GLADES },
					{ 51.4, 59.0, HILLSBRAD_FOOTHILLS },
				},
				timeline = { REMOVED_4_0_3 },
				cost = { { "i", 20605, 1 } },	-- Rotten Eggs
				races = HORDE_ONLY,
				isYearly = true,
				lvl = 30,
			}),
			q(8409, {	-- Ruined Kegs
				sourceQuest = 8322,	-- Rotten Eggs
				provider = { "o", 180570 },	-- Keg
				coord = { 51.4, 59.0, HILLSBRAD_FOOTHILLS },
				timeline = { REMOVED_4_0_3 },
				races = HORDE_ONLY,
				isYearly = true,
				lvl = 30,
				groups = { i(20557) },	-- Hallow's End Pumpkin Treat
			}),
			q(29399, {	-- Shopping Around (Alliance)
				sourceQuest = 29398,	-- Fencing the Goods (Alliance)
				qg = 8719,	-- Auctioneer Fitch
				coords = {
					-- #if AFTER LEGION
					{ 61.2, 70.8, STORMWIND_CITY },
					-- #else
					{ 61.1, 70.6, STORMWIND_CITY },
					-- #endif
				},
				timeline = { ADDED_4_2_2 },
				races = ALLIANCE_ONLY,
				lvl = lvlsquish(10, 10, 1),
			}),
			q(29425, {	-- Shopping Around (Horde)
				sourceQuest = 29416,	-- Fencing the Goods (Horde)
				qg = 44866,	-- Auctioneer Drezmit
				coord = { 54.0, 73.4, ORGRIMMAR },
				timeline = { ADDED_4_2_2 },
				races = HORDE_ONLY,
				lvl = lvlsquish(10, 10, 1),
			}),
			q(1657, {	-- Stinking Up Southshore
				qg = 15197,	-- Darkcaller Yanka
				coord = { 55.6, 69.9, TIRISFAL_GLADES },
				timeline = { REMOVED_4_0_3 },
				maps = { HILLSBRAD_FOOTHILLS },
				races = HORDE_ONLY,
				isYearly = true,
				lvl = 25,
				groups = {
					objective(1, {	-- Toss Stink Bomb into Southshore
						provider = { "i", 20387 },	-- Forsaken Stink Bomb Cluster
						coord = { 49.8, 57.9, HILLSBRAD_FOOTHILLS },
					}),
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
			q(39716, {	-- Smashing Squashlings
				qg = 96705,	-- Orukan
				timeline = { ADDED_6_0_2 },
				maps = {
					FROSTWALL,
					LUNARFALL,
					DRAENOR_SHADOWMOON_VALLEY,
				},
				isDaily = true,
				lvl = lvlsquish(100, 100, 40),
				groups = {
					objective(1, {	-- 0/6 Growing Squashling
						provider = { "n", 96545 },	-- Growing Squashling
						coord = { 40.4, 82.0, DRAENOR_SHADOWMOON_VALLEY },
					}),
					i(128658),	-- Spooky Supplies
				},
			}),
			q(12133, {	-- Smash the Pumpkin (Alliance)
				providers = {
					{ "o", 186887 },	-- Large Jack-o'-Lantern
					{ "i", 36876 },	-- Scorched Holy Symbol
				},
				coords = {
					{ 60.8, 53.6, AZUREMYST_ISLE },
					{ 53.4, 51.5, DUN_MOROGH },
					{ 42.6, 64.6, ELWYNN_FOREST },
				},
				timeline = { ADDED_2_2_2 },
				races = ALLIANCE_ONLY,
				isDaily = true,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
				groups = { i(34077) },	-- Crudely Wrapped Gift
			}),
			q(12155, {	-- Smash the Pumpkin (Horde)
				providers = {
					{ "o", 186887 },	-- Large Jack-o'-Lantern
					{ "i", 36876 },	-- Scorched Holy Symbol
				},
				coords = {
					{ 52.6, 41.5, DUROTAR },
					{ 47.2, 46.4, EVERSONG_WOODS },
					{ 60.8, 53.6, TIRISFAL_GLADES },
				},
				timeline = { ADDED_2_2_2 },
				races = HORDE_ONLY,
				isDaily = true,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
				groups = { i(34077) },	-- Crudely Wrapped Gift
			}),
			q(92455, {	-- Specter Inspector
				qgs = {
					263976,	-- Alaric Duskwick
					249275,	-- Nargok Ghostcleaver
				},
				provider = { "i", 249386 },	-- Ghost Gear
				coords = {
					{ 54.1, 33.8, FOUNDERS_POINT },
					{ 51.7, 54.3, RAZORWIND_SHORES },
				},
				isDaily = true,
				timeline = { ADDED_12_1_5 },
				groups = {
					i(TRICKY_TREAT),
					i(DRUSTVAR_CHOC),
					i(DUSKWOOD_CARAMEL),
					i(FELWOOD_FUDGE),
				},
			}),
			q(29054, {	-- Stink Bombs Away! (Alliance)
				sourceQuest = 29074,	-- A Season for Celebration (Alliance)
				qg = 51934,	-- Gretchen Fenlow
				coord = { 32.2, 50.8, ELWYNN_FOREST },
				timeline = { ADDED_4_2_2 },
				races = ALLIANCE_ONLY,
				isDaily = true,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
				groups = {
					objective(1, {	-- 0/25 Bombs Dropped
						provider = { "n", 52548 },	-- Gertrude Fenlow
						coord = { 32.2, 50.6, ELWYNN_FOREST },
					}),
					i(TRICKY_TREAT),
				},
			}),
			q(29374, {	-- Stink Bombs Away! (Horde)
				-- #if AFTER 8.0.1
				sourceQuests = {
					29400,	-- A Season for Celebration (Horde)
					53122,	-- A Season for Celebration (Horde - New Tirisfal Glades)
				},
				-- #else
				sourceQuest = 29400,	-- A Season for Celebration (Horde)
				-- #endif
				qg = 53763,	-- Candace Fenlow
				coord = { 62.4, 66.7, TIRISFAL_GLADES },
				timeline = { ADDED_4_2_2 },
				races = HORDE_ONLY,
				isDaily = true,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
				groups = {
					objective(1, {	-- 0/25 Bombs Dropped
						provider = { "n", 53764 },	-- Crina Fenlow
						coord = { 62.2, 67.0, TIRISFAL_GLADES },
					}),
					i(TRICKY_TREAT),
				},
			}),
			q(11131, {	-- Stop the Fires! (Alliance)
				sourceQuests = {
					11440,	-- Fire Brigade Practice [Azuremyst Isle]
					11439,	-- Fire Brigade Practice [Dun Morogh]
					11360,	-- Fire Brigade Practice [Elwynn Forest]
				},
				qg = 24519,	-- Costumed Orphan Matron
				coords = {
					{ 60.8, 53.6, AZUREMYST_ISLE },
					{ 53.4, 51.5, DUN_MOROGH },
					{ 42.6, 64.6, ELWYNN_FOREST },
				},
				timeline = { ADDED_2_2_2 },
				races = ALLIANCE_ONLY,
				isDaily = true,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
				groups = {
					objective(1, {	-- 0/1 Put Out the Fires
						provider = { "i", 32971 },	-- Water Bucket
					}),
					i(20557),	-- Hallow's End Pumpkin Treat
					i(34068),	-- Weighted Jack-o'-Lantern
				},
			}),
			q(11219, {	-- Stop the Fires! (Horde)
				sourceQuests = {
					11361,	-- Fire Training [Durotar]
					11450,	-- Fire Training [Eversong Woods]
					11449,	-- Fire Training [Tirisfal Glades]
				},
				qg = 23973,	-- Masked Orphan Matron
				coords = {
					{ 52.6, 41.5, DUROTAR },
					{ 47.2, 46.4, EVERSONG_WOODS },
					{ 60.8, 53.6, TIRISFAL_GLADES },
				},
				timeline = { ADDED_2_2_2 },
				races = HORDE_ONLY,
				isDaily = true,
				lvl = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
				groups = {
					objective(1, {	-- 0/1 Put Out the Fires
						provider = { "i", 32971 },	-- Water Bucket
					}),
					i(20557),	-- Hallow's End Pumpkin Treat
					i(34068),	-- Weighted Jack-o'-Lantern
				},
			}),
			q(92498, {	-- Sugar Run (Drustvar)
				altQuests = {
					93400,	-- Sugar Run (Duskwood)
					95826,	-- Sugar Run (Felwood)
				},
				qg = 251678,	-- Yin Shuilan
				coords = {
					{ 53.9, 34.0, FOUNDERS_POINT },
					{ 51.8, 54.0, RAZORWIND_SHORES },
				},
				maps = { DRUSTVAR },
				isDaily = true,
				timeline = { ADDED_12_1_5 },
			}),
			q(92536, {	-- Bewitched Berry Bites
				sourceQuest = 92498,	-- Sugar Run (Drustvar)
				qg = 251989,	-- Nomi
				isDaily = true,
				timeline = { ADDED_12_1_5 },
				groups = {
					o(576223, {	-- Bewitched Berries
						i(252952),	-- Bewitched Berries (QI!)
					}),
					--
					i(TRICKY_TREAT),
					i(DRUSTVAR_CHOC),
				},
			}),
			q(92537, {	-- Hexed Honeycombs
				sourceQuest = 92498,	-- Sugar Run (Drustvar)
				qg = 251989,	-- Nomi
				isDaily = true,
				timeline = { ADDED_12_1_5 },
				groups = {
					o(576212, {	-- Bee Hive
						i(252947),	-- Honeycomb (QI!)
					}),
					--
					i(TRICKY_TREAT),
					i(DRUSTVAR_CHOC),
				},
			}),
			q(92535, {	-- Witchbane Truffles
				sourceQuest = 92498,	-- Sugar Run (Drustvar)
				qg = 251989,	-- Nomi
				isDaily = true,
				timeline = { ADDED_12_1_5 },
				qi = 257891,	-- Dog Whistle (QI!)
				groups = {
					i(TRICKY_TREAT),
					i(DRUSTVAR_CHOC),
				},
			}),
			q(95826, {	-- Sugar Run (Felwood)
				altQuests = {
					92498,	-- Sugar Run (Drustvar)
					93400,	-- Sugar Run (Duskwood)
				},
				qg = 251678,	-- Yin Shuilan
				coords = {
					{ 53.9, 34.0, FOUNDERS_POINT },
					{ 51.8, 54.0, RAZORWIND_SHORES },
				},
				maps = { FELWOOD },
				isDaily = true,
				timeline = { ADDED_12_1_5 },
			}),
			q(95827, {	-- Blighted Bloom Bites
				sourceQuest = 95826,	-- Sugar Run (Felwood)
				qg = 262791,	-- Nomi
				coord = { 43.6, 68.6, FELWOOD },
				isDaily = true,
				timeline = { ADDED_12_1_5 },
				groups = {
					o(644614, {	-- Blighted Bloom
						i(271052),	-- Blighted Bloom (QI!)
					}),
					--
					i(TRICKY_TREAT),
					i(FELWOOD_FUDGE),
				},
			}),
			q(95828, {	-- Felroot Crunch
				sourceQuest = 95826,	-- Sugar Run (Felwood)
				qg = 262791,	-- Nomi
				coord = { 43.6, 68.6, FELWOOD },
				isDaily = true,
				timeline = { ADDED_12_1_5 },
				qi = 258217,	-- Honey Drops (QI!)
				groups = {
					i(TRICKY_TREAT),
					i(FELWOOD_FUDGE),
				},
			}),
			q(95829, {	-- Rotleaf Wafers
				sourceQuest = 95826,	-- Sugar Run (Felwood)
				qg = 262791,	-- Nomi
				coord = { 43.6, 68.6, FELWOOD },
				isDaily = true,
				timeline = { ADDED_12_1_5 },
				groups = {
					i(TRICKY_TREAT),
					i(FELWOOD_FUDGE),
				},
			}),
			q(93400, {	-- Sugar Run (Duskwood)
				altQuests = {
					92498,	-- Sugar Run (Drustvar)
					95826,	-- Sugar Run (Felwood)
				},
				qg = 251678,	-- Yin Shuilan
				coords = {
					{ 53.9, 34.0, FOUNDERS_POINT },
					{ 51.8, 54.0, RAZORWIND_SHORES },
				},
				maps = { DUSKWOOD },
				isDaily = true,
				timeline = { ADDED_12_1_5 },
			}),
			q(95825, {	-- Blighted Core Caramels
				sourceQuest = 93400,	-- Sugar Run (Duskwood)
				qg = 254694,	-- Nomi
				coord = { 67.2, 76.7, DUSKWOOD },
				isDaily = true,
				timeline = { ADDED_12_1_5 },
				groups = {
					o(644613, {	-- Sugar Beet
						i(271051),	-- Sugar Beet (QI!)
					}),
					--
					i(TRICKY_TREAT),
					i(DUSKWOOD_CARAMEL),
				},
			}),
			q(93401, {	-- Howling Honey Drops
				sourceQuest = 93400,	-- Sugar Run (Duskwood)
				qg = 254694,	-- Nomi
				coord = { 67.2, 76.7, DUSKWOOD },
				isDaily = true,
				timeline = { ADDED_12_1_5 },
				groups = {
					o(612154, {	-- Bee Hive
						i(258217),	-- Honey Drops (QI!)
					}),
					--
					i(TRICKY_TREAT),
					i(DUSKWOOD_CARAMEL),
				},
			}),
			q(95822, {	-- Twisted Vine Licorice
				sourceQuest = 93400,	-- Sugar Run (Duskwood)
				qg = 254694,	-- Nomi
				coord = { 67.2, 76.7, DUSKWOOD },
				isDaily = true,
				timeline = { ADDED_12_1_5 },
				groups = {
					i(TRICKY_TREAT),
					i(DUSKWOOD_CARAMEL),
				},
			}),
			q(29402, {	-- Taking Precautions (Alliance)
				sourceQuest = 29399,	-- Shopping Around (Alliance)
				qg = 54021,	-- Hudson Barnes
				coord = { 64.0, 46.4, STORMWIND_CITY },
				timeline = { ADDED_4_2_2 },
				races = ALLIANCE_ONLY,
				lvl = lvlsquish(10, 10, 1),
				groups = {
					-- #if AFTER 5.0.4
					objective(1, {	-- 0/2 Strange Dust
						provider = { "i", 10940 },	-- Strange Dust
					}),
					objective(2, {	-- 0/5 Crystal Vial
						provider = { "i", 3371 },	-- Crystal Vial
					}),
					-- #else
					objective(1, {	-- 0/5 Crystal Vial
						provider = { "i", 3371 },	-- Crystal Vial
					}),
					objective(2, {	-- 0/5 Arcane Powder
						provider = { "i", 17020 },	-- Arcane Powder
					}),
					-- #endif
					objective(3, {	-- 0/5 Blood Nettle
						providers = {
							{ "i",  71035 },	-- Blood Nettle
							{ "o", 209059 },	-- Blood Nettle
						},
						coord = { 51.5, 10.0, STORMWIND_CITY },
					}),
				},
			}),
			q(29426, {	-- Taking Precautions (Horde)
				sourceQuest = 29425,	-- Shopping Around (Horde)
				qg = 54146,	-- Delian Sunshade
				coord = { 58.0, 48.2, ORGRIMMAR },
				timeline = { ADDED_4_2_2 },
				races = HORDE_ONLY,
				lvl = lvlsquish(10, 10, 1),
				groups = {
					-- #if AFTER 5.0.4
					objective(1, {	-- 0/2 Strange Dust
						provider = { "i", 10940 },	-- Strange Dust
					}),
					objective(2, {	-- 0/5 Crystal Vial
						provider = { "i", 3371 },	-- Crystal Vial
					}),
					-- #else
					objective(1, {	-- 0/5 Crystal Vial
						provider = { "i", 3371 },	-- Crystal Vial
					}),
					objective(2, {	-- 0/5 Arcane Powder
						provider = { "i", 17020 },	-- Arcane Powder
					}),
					-- #endif
					objective(3, {	-- 0/5 Blood Nettle
						providers = {
							{ "i",  71035 },	-- Blood Nettle
							{ "o", 209059 },	-- Blood Nettle
						},
						coord = { 45.9, 49.5, ORGRIMMAR },
					}),
				},
			}),
			q(29403, {	-- The Collector's Agent (Alliance)
				sourceQuest = 29402,	-- Taking Precautions (Alliance)
				qg = 54021,	-- Hudson Barnes
				coord = { 64.0, 46.4, STORMWIND_CITY },
				timeline = { ADDED_4_2_2 },
				races = ALLIANCE_ONLY,
				lvl = lvlsquish(10, 10, 1),
				groups = {
					objective(1, {	-- Meeting Disrupted
						provider = { "n", 54114 },	-- Unleashed Void
						coord = { 55.2, 43.6, STORMWIND_CITY },
					}),
				},
			}),
			q(29427, {	-- The Collector's Agent (Horde)
				sourceQuest = 29426,	-- Taking Precautions (Horde)
				qg = 54146,	-- Delian Sunshade
				coord = { 58.0, 48.2, ORGRIMMAR },
				timeline = { ADDED_4_2_2 },
				maps = { TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = lvlsquish(10, 10, 1),
				groups = {
					objective(1, {	-- Meeting Disrupted
						provider = { "n", 54114 },	-- Unleashed Void
						coord = { 65.8, 74.2, TIRISFAL_GLADES },
					}),
				},
			}),
			q(29413, {	-- The Creepy Crate (Alliance)
				sourceQuest = 29411,	-- What Now? (Alliance)
				provider = { "o", 209076 },	-- Anson's Crate
				timeline = { ADDED_4_2_2 },
				maps = { STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = lvlsquish(10, 10, 1),
				groups = {
					i(71076),	-- Creepy Crate (PET!)
				},
			}),
			q(29429, {	-- The Creepy Crate (Horde)
				sourceQuest = 29428,	-- What Now? (Horde)
				provider = { "o", 209095 },	-- Edgar's Crate
				timeline = { ADDED_4_2_2 },
				maps = { ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = lvlsquish(10, 10, 1),
				groups = {
					i(71076),	-- Creepy Crate (PET!)
				},
			}),
			q(11135, {	-- The Headless Horseman (Alliance)
				qg = 24519,	-- Costumed Orphan Matron
				coords = {
					{ 49.2, 51.3, AZUREMYST_ISLE },
					-- #if AFTER CATA
					{ 53.3, 51.5, DUN_MOROGH },
					-- #elseif AFTER TBC
					{ 46.2, 53.1, DUN_MOROGH },
					-- #endif
					{ 42.6, 64.4, ELWYNN_FOREST },
				},
				timeline = { ADDED_2_2_2, REMOVED_4_0_1 },
				races = ALLIANCE_ONLY,
				lvl =
					-- #if AFTER WRATH
					75,
					-- #else
					65,
					-- #endif
			}),
			q(11220, {	-- The Headless Horseman (Horde)
				qg = 23973,	-- Masked Orphan Matron
				coords = {
					{ 52.6, 41.2, DUROTAR },
					{ 47.3, 46.5, EVERSONG_WOODS },
					{ 60.9, 53.0, TIRISFAL_GLADES },
				},
				timeline = { ADDED_2_2_2, REMOVED_4_0_1 },
				races = HORDE_ONLY,
				lvl =
					-- #if AFTER WRATH
					75,
					-- #else
					65,
					-- #endif
			}),
			q(8373, {	-- The Power of Pine
				qg = 15199,	-- Sergeant Hartman
				coord = { 50.0, 57.2, HILLSBRAD_FOOTHILLS },
				timeline = { REMOVED_4_0_3 },
				races = ALLIANCE_ONLY,
				isYearly = true,
				lvl = 25,
				groups = {
					objective(1, {	-- Clean up a stink bomb that's been dropped on Southshore!
						provider = { "i", 20604 },	-- Stink Bomb Cleaner
					}),
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
			q(43162, {	-- Under the Crooked Tree
				-- sourceQuest = 43259,	-- Beware of the Crooked Tree	[not required 2023-10-25]
				qg = 109734,	-- Hag of the Crooked Tree
				coord = { 34.9, 56.0, VALSHARAH },
				timeline = { ADDED_7_0_3 },
				isDaily = true,
				lvl = lvlsquish(98, 98, 40),	-- TODO: Check Level Requirement
				groups = {
					objective(1, {	-- Drink from the cauldron and release Aria Sorrowheart's spirit
						provider = { "n", 109825 },	-- Aria Sorrowheart
						coord = { 34.8, 55.6, VALSHARAH },
					}),
					i(139137, {	-- Hag's Belongings
						sym = {
							{ "selectparent", 3 },	-- Select the holiday root.
							{ "pop" },	-- Get the Rewards.
							{ "where", "headerID", REWARDS },	-- Select the "Rewards" header.
							{ "pop" },	-- Get the Rewards.
							{ "contains", "itemID", TRICKY_TREAT, unpack(WANDS_IDS) },	-- Tricky Treat & All the Wands
							{ "exclude", "itemID", 20413 },	-- Exclude Hallowed Wand - Random
						},
						groups = {
							i(139133),	-- Hat of the First Sister
							i(139134),	-- Hat of the Second Sister
							i(139135),	-- Hat of the Third Sister
							i(139136),	-- Hat of the Youngest Sister
						},
					}),
				},
			}),
			q(29411, {	-- What Now? (Alliance)
				description = "Does not matter who you give it to, you still get the pet!",
				sourceQuest = 29403,	-- The Collector's Agent (Alliance)
				providers = {
					{ "o", 209072 },	-- Stolen Crate
					{ "i", 71057 },	-- Recovered Crate
				},
				coord = { 55.3, 43.5, STORMWIND_CITY },
				timeline = { ADDED_4_2_2 },
				races = ALLIANCE_ONLY,
				lvl = lvlsquish(10, 10, 1),
			}),
			q(29428, {	-- What Now? (Horde)
				description = "Does not matter who you give it to, you still get the pet!",
				sourceQuest = 29427,	-- The Collector's Agent (Horde)
				providers = {
					{ "o", 209094 },	-- Stolen Crate
					{ "i", 71057 },	-- Recovered Crate
				},
				coord = { 65.8, 74.8, TIRISFAL_GLADES },
				timeline = { ADDED_4_2_2 },
				maps = { ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = lvlsquish(10, 10, 1),
			}),
			q(64546,	-- Visions of Sire Denathrius
			bubbleDownSelf({
				customCollect = "SL_COV_VEN",
			},{
				description = "Speak with Theotar within The Ember Court scenario to spawn the 'Vision of Sire Denathrius'. During the final Tribute stage, accept the quest to receive the permanent unlock for your Ember Court.",
				crs = {
					165196,	-- Theotar (Inside Ember Court)
					164966,	-- Temel <The Party Herald> (with a hat)
				},
				coords = {
					{ 28.0, 43.0, REVENDRETH },	-- with hat, outside Sinfall
				},
				provider = { "n", 180458 },	-- Vision of Sire Denathrius
				timeline = { ADDED_9_1_0 },
				repeatable = true,	-- probably yearly, Blizzard API says it's daily, in practice it unflaggs right after completion
				maps = { 1644 },	-- The Ember Court
				groups = { i(181442) },	-- Visions of Sire Denathrius (EC!)
			})),
			q(76075, {	-- A Ghostly Message
				qgs = {
					53869,	-- Orphan Matron Seacole (A)
					53865,	-- Orphan Matron Nanee (H)
				},
				coords = {
					{ 31.9, 50.0, ELWYNN_FOREST },	-- Alliance
					{ 62.4, 66.6, TIRISFAL_GLADES },	-- Horde
				},
				timeline = { ADDED_10_1_7 },
				qi = 206596,	-- Tome of Thomas Thomson (QI!)
			}),
			q(76072, {	-- Shades of Scarlet
				sourceQuest = 76075,	-- A Ghostly Message
				provider = { "n", 206158 },	-- Sir Thomas
				coord = { 81.2, 44.6, TIRISFAL_GLADES },
				timeline = { ADDED_10_1_7 },
				groups = { i(TRICKY_TREAT) },
			}),
			q(76073, {	-- No Laughing Matter
				sourceQuest = 76072,	-- Shades of Scarlet
				provider = { "n", 205473 },	-- Sir Thomas
				coord = { 82.4, 32.7, TIRISFAL_GLADES },
				timeline = { ADDED_10_1_7 },
				groups = { i(TRICKY_TREAT) },
			}),
			q(76074, {	-- The Headless Horseman, Returned
				sourceQuest = 76073,	-- No Laughing Matter
				provider = { "n", 205448 },	-- Suzannah
				coord = { 83.5, 30.8, TIRISFAL_GLADES },
				timeline = { ADDED_10_1_7 },
				groups = { i(TRICKY_TREAT) },
			}),
			q(77779, {	-- The Tale of Sir Thomas
				sourceQuest = 76074,	-- The Headless Horseman, Returned
				provider = { "n", 209609 },	-- Sir Thomas
				coord = { 43.0, 53.0, SCARLET_MONASTERY },
				timeline = { ADDED_10_1_7 },
				groups = { i(208769) },	-- Tome of Thomas Thomson
			}),
		}),
		n(RARES, {
			timeline = { ADDED_6_2_2 },
			groups = {
				n(96323, {	-- Arachnis
					description = "|cFFFFD700Arachnis|r is only present in your Garrison once the |cFFFFD700Creepy Crawlers|r decoration is applied. This can be bought with |cFFFFD7005 Spooky Supplies|r from |cFFFFD700Izzy Hollyfizzle|r in your garrison. (This rare is available all year.)",
					questID = 39617,
					isDaily = true,
					coords = {
						{ 56.5, 87.9, FROSTWALL },
						{ 74.5, 33.9, LUNARFALL },
					},
					cost = { { "i", 128664, 1 } },	-- Creepy Crawlers
					groups = { i(128794) },	-- Sack of Spectral Spiders (TOY!)
				}),
			},
		}),
		n(REWARDS, appendGroups(MASKS_WITHOUT_COST, appendGroups(WANDS_WITHOUT_COST, {
			i(34077, {	-- Crudely Wrapped Gift
				timeline = { ADDED_2_2_2 },
				-- #if BEFORE CATA
				sym = {
					-- Masks & Wands & Candy
					{ "selectparent" },	-- Select the "Rewards" header.
					{ "pop" },	-- Get the Rewards.
					{ "exclude", "itemID", 20393, 34077 },	-- Treat Bag & Crudely Wrapped Gift
					{ "exclude", "itemID", 69187, 69188, 69189, 69190, 69192, 69193, 69194, 69195 },	-- Exclude Murloc, Naga, Ogre, Vrykul Masks
					{ "finalize" },	-- Push the processed items on to the finalized stack and ignore further queries on them.
					{"select","itemID",
						33292,	-- Hallowed Helm
						33154,	-- Sinister Squashling (PET!)
					},
				},
				-- #endif
				groups = {
					i(36877),	-- Folded Letter
					-- #if BEFORE 4.0.1
					i(33189, {	-- Rickety Magic Broom
						timeline = { REMOVED_4_0_1 },
					}),
					-- #endif
					-- #if BEFORE CATA
					i(37586),	-- Handful of Treats
					-- #endif
					i(34068),	-- Weighted Jack-o'-Lantern
				},
			}),
			i(37586, {	-- Handful of Treats
				timeline = { ADDED_2_4_3 },
				sym = {
					-- #if AFTER WRATH
					-- Achievements
					{ "select", "achievementID", 972 },	-- Trick or Treat!
					{ "finalize" },	-- Push the processed items on to the finalized stack and ignore further queries on them.
					-- #endif
					-- #if AFTER 4.2.0
					-- Masks & Wands & Candy
					{ "selectparent" },	-- Select the "Rewards" header.
					{ "pop" },	-- Get the Rewards.
					{ "exclude", "itemID",
						37586, 20393, 34077,	-- Handful of Treats & Treat Bag
					-- #if AFTER CATA
						20390, 20389, 20388,	-- Exclude Candy Bar, Candy Corn, Lollipop
					-- #endif
						69187, 69188, 69189, 69190, 69192, 69193, 69194, 69195,	-- Exclude Murloc, Naga, Ogre, Vrykul Masks
						20413,	-- Exclude Hallowed Wand - Random
					},
					{"select","itemID",
						33292,	-- Hallowed Helm
						33154,	-- Sinister Squashling (PET!)
					},
					-- #else
					-- Before 4.2.0 these bags were super boring.
					{ "select", "itemID", 37585, 37583, 37582, 37584 },	-- G.N.E.R.D.S., Pyroblast Cinnamon Ball, Soothing Spearmint Candy, and Chewy Fel Taffy
					-- #endif
				},
			}),
			i(20393, {	-- Treat Bag
				-- #if BEFORE 4.2.0
				description = "Get this by Trick or Treating at any Innkeeper.",
				sym = {
					{ "selectparent" },	-- Select the "Rewards" header.
					{ "pop" },	-- Get the Rewards.
					{ "exclude", "itemID", 20393, 37586, 34077 },	-- Treat Bag & Crudely Wrapped Gift
					{ "select", "itemID", 33292, 33154 },	-- Hallowed Helm & Sinister Squashling
				},
				-- #endif
				timeline = { REMOVED_4_2_0 },
			}),
			i(20390, { timeline = { REMOVED_4_0_1 } }),	-- Candy Bar
			i(20389, { timeline = { REMOVED_4_0_1 } }),	-- Candy Corn
			i(37585, { timeline = { ADDED_2_4_3 } }),	-- Chewy Fel Taffy
			i(37583, { timeline = { ADDED_2_4_3 } }),	-- G.N.E.R.D.S.
			i(20388, { timeline = { REMOVED_4_0_1 } }),	-- Lollipop
			i(37606, { timeline = { ADDED_2_4_3 } }),	-- Penny Pouch
			i(37582, { timeline = { ADDED_2_4_3 } }),	-- Pyroblast Cinnamon Ball
			i(37584, { timeline = { ADDED_2_4_3 } }),	-- Soothing Spearmint Candy
			i(37604, { timeline = { ADDED_2_4_3 } }),	-- Tooth Pick
			i(TRICKY_TREAT, { timeline = { ADDED_2_4_3 } }),
		}))),
		n(TREASURES, {
			o(180523, {	-- Apple Bob
				groups = { i(20516) },	-- Bobbing Apple
			}),
			o(691654, {	-- Ghost Gear
				coords = {
					{ 54.1, 33.8, FOUNDERS_POINT },
				},
				timeline = { ADDED_12_1_5 },
				groups = { i(249386) },	-- Ghost Gear
			}),
			o(576409, {	-- Haunted Candy
				coords = {
					{ 53.8, 33.6, FOUNDERS_POINT },
					{ 51.7, 54.5, RAZORWIND_SHORES },
				},
				isDaily = true,
				timeline = { ADDED_12_1_5 },
				groups = {
					i(DRUSTVAR_CHOC),
					i(DUSKWOOD_CARAMEL),
					i(FELWOOD_FUDGE),
				},
			}),
			o(612085, {	-- Pile of Candy
				coords = {
					{ 54.0, 33.8, FOUNDERS_POINT },
					{ 51.8, 54.2, RAZORWIND_SHORES },
				},
				timeline = { ADDED_12_1_5 },
				groups = {
					i(DRUSTVAR_CHOC),
					i(DUSKWOOD_CARAMEL),
					i(FELWOOD_FUDGE),
				},
			}),
			o(244568, {	-- Spooky Pepe
				description = "You need a Tier 3 garrison for this.",
				coords = {
					{ 70.7, 90.2, FROSTWALL },	-- Pepe Location [Horde]
					{ 40.1, 70.1, LUNARFALL },	-- Pepe Location [Alliance]
				},
				timeline = { ADDED_6_2_2 },
				groups = {
					i(128874),	-- A Tiny Scarecrow Costume (Pepe!)
					ach(10365),	-- A Frightening Friend
				},
			}),
			o(644611, {	-- Tricky Treasure
				coords = {
					{ 41.0, 61.4, FOUNDERS_POINT },
					{ 54.6, 32.3, FOUNDERS_POINT },
				},
				timeline = { ADDED_12_1_5 },
			}),
		}),
		-- #if AFTER 4.2.2
		n(VENDORS, {
			n_CommonVendorItems({
				timeline = { ADDED_12_1_5 },
				crs = {
					273472,	-- Cordula Wolfgang <Hallow's End Decor Specialist>
					273470,	-- Spew Gutsout <Hallow's End Decor Specialist>
					273403,	-- Jack <Decor Vendor>
					273402,	-- Echo <Decor Vendor>
				},
				groups = {
					i(282194, { cost = { { "i", TRICKY_TREAT, 20 } } }),	-- Candlelit Ogre Jack-o'-Lantern (DECOR!)
					i(282192, { cost = { { "i", TRICKY_TREAT, 20 } } }),	-- Candlelit Shrieking Jack-o'-Lantern (DECOR!)
					i(282202, { cost = { { "i", TRICKY_TREAT, 15 } } }),	-- Elaborate Heartsbane Ritual Markings (DECOR!)
					i(282196, { cost = { { "i", TRICKY_TREAT, 20 } } }),	-- Filled Candy Bucket (DECOR!)
					i(282208, { cost = { { "i", TRICKY_TREAT, 25 } } }),	-- Heartsbane Banner (DECOR!)
					i(282206, { cost = { { "i", TRICKY_TREAT, 15 } } }),	-- Heartsbane Stone Circle (DECOR!)
					i(282289, { cost = { { "i", TRICKY_TREAT, 20 } } }),	-- Horrific Head of the Horseman (DECOR!)
					i(282213, { cost = { { "i", TRICKY_TREAT, 25 } } }),	-- Looming Heartsbane Effigy (DECOR!)
					i(282204, { cost = { { "i", TRICKY_TREAT, 25 } } }),	-- Ominous Heartsbane Shrine (DECOR!)
					i(284213, { cost = { { "i", TRICKY_TREAT, 20 } } }),	-- Pattern: Spidery Witch Hat (RECIPE!)
					i(284212, { cost = { { "i", TRICKY_TREAT, 20 } } }),	-- Technique: Apple Bobbing Bucket (RECIPE!)
					i(282200, { cost = { { "i", TRICKY_TREAT, 20 } } }),	-- Unlit Ogre Jack-o'-Lantern (DECOR!)
					i(282198, { cost = { { "i", TRICKY_TREAT, 20 } } }),	-- Unlit Shrieking Jack-o'-Lantern (DECOR!)
				},
			}),
			n_CommonVendorItems({
				timeline = { ADDED_4_2_2 },
				crs = {
					53728,	-- Dorothy <Candy & Toy Vendor>
					53757,	-- Chub <Candy & Toy Vendor>
				},
				groups = {
					i(122338, {	-- Ancient Heirloom Armor Casing
						cost = { { "i", TRICKY_TREAT, 250 } },
						timeline = { ADDED_6_1_0 },
					}),
					i(167731, {	-- Battle-Hardened Heirloom Armor Casing
						cost = { { "i", TRICKY_TREAT, 450 } },
						timeline = { ADDED_8_1_5 },
					}),
					i(187997, {	-- Eternal Heirloom Armor Casing
						cost = { { "i", TRICKY_TREAT, 450 } },
						timeline = { ADDED_9_1_5 },
					}),
					i(122340, {	-- Timeworn Heirloom Armor Casing
						cost = { { "i", TRICKY_TREAT, 450 } },
						timeline = { ADDED_6_1_0 },
					}),
					i(151614, {	-- Weathered Heirloom Armor Casing
						cost = { { "i", TRICKY_TREAT, 450 } },
						timeline = { ADDED_7_2_5 },
					}),
					-- #if BEFORE 7.0.1
					i(116811, {	-- "Lil' Starlet" Costume
						cost = { { "i", TRICKY_TREAT, 5 } },
						timeline = { ADDED_6_0_2 },
					}),
					i(116810, {	-- "Mad Alchemist" Costume
						cost = { { "i", TRICKY_TREAT, 5 } },
						timeline = { ADDED_6_0_2 },
					}),
					i(37585, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Chewy Fel Taffy
					i(116801, {	-- Cursed Birman (PET!)
						cost = { { "i", TRICKY_TREAT, 150 } },
						timeline = { ADDED_6_0_2 },
					}),
					i(70908, {	-- Feline Familiar (PET!)
						cost = { { "i", TRICKY_TREAT, 150 } },
						timeline = { ADDED_4_2_2 },
					}),
					i(37583, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- G.N.E.R.D.S.
					i(33292, { cost = { { "i", TRICKY_TREAT, 150 } } }),	-- Hallowed Helm
					i(70722, {	-- Little Wickerman (TOY!)
						cost = { { "i", TRICKY_TREAT, 150 } },
						timeline = { ADDED_4_2_2 },
					}),
					i(37011, {	-- Magic Broom (MOUNT!)
						cost = { { "i", TRICKY_TREAT, 150 } },
						collectible = false,
					}),
					i(37582, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Pyroblast Cinnamon Ball
					i(37584, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Soothing Spearmint Candy
					i(37604, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Tooth Pick
					i(116804, {	-- Widget the Departed (PET!)
						cost = { { "i", TRICKY_TREAT, 150 } },
						timeline = { ADDED_6_0_2 },
					}),
					-- #else
					i(208735, {	-- Bucket of Morbid Treats
						cost = { { "i", TRICKY_TREAT, 150 } },
						timeline = { ADDED_10_1_7 },
					}),
					i(37585, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Chewy Fel Taffy
					iensemble(230173, {	-- Ensemble: Prowler's Faded Headgear
						cost = { { "i", TRICKY_TREAT, 150 } },
						timeline = { ADDED_11_0_5 },
					}),
					i(128643, {	-- Exquisite Costume Set: "Deathwing"
						cost = { { "i", TRICKY_TREAT, 200 } },
						timeline = { ADDED_6_2_2 },
					}),
					i(138990, {	-- Exquisite Costume Set: "Grommash"
						cost = { { "i", TRICKY_TREAT, 200 } },
						timeline = { ADDED_7_0_3 },
					}),
					i(116828, {	-- Exquisite Costume Set: "The Lich King"
						cost = { { "i", TRICKY_TREAT, 200 } },
						timeline = { ADDED_6_0_2 },
					}),
					i(151268, {	-- Exquisite Costume Set: "Xavius"
						cost = { { "i", TRICKY_TREAT, 200 } },
						timeline = { ADDED_7_3_0 },
					}),
					i(37583, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- G.N.E.R.D.S.
					i(33292, { cost = { { "i", TRICKY_TREAT, 150 } } }),	-- Hallowed Helm
					i(163045, {	-- Headless Horseman's Hearthstone (TOY!)
						cost = { { "i", TRICKY_TREAT, 150 } },
						timeline = { ADDED_8_0_1 },
					}),
					i(151271, {	-- Horse Head Costume (TOY!)
						cost = { { "i", TRICKY_TREAT, 150 } },
						timeline = { ADDED_7_3_0 },
					}),
					i(151270, {	-- Horse Tail Costume (TOY!)
						cost = { { "i", TRICKY_TREAT, 150 } },
						timeline = { ADDED_7_3_0 },
					}),
					i(70722, {	-- Little Wickerman (TOY!)
						cost = {
							-- #if AFTER 11.0.5
							{ "i", TRICKY_TREAT, 100 },
							-- #else
							{ "i", TRICKY_TREAT, 150 },
							-- #endif
						},
						timeline = { ADDED_4_2_2 },
					}),
					i(37011, {	-- Magic Broom (MOUNT!)
						cost = { { "i", TRICKY_TREAT, 150 } },
						collectible = false,
					}),
					i(226427, {	-- Patched Harvester's Claw
						cost = { { "i", TRICKY_TREAT, 100 } },
						timeline = { ADDED_11_0_5 },
					}),
					i(226461, {	-- Patched Harvest Golem's Belt
						cost = { { "i", TRICKY_TREAT, 100 } },
						timeline = { ADDED_11_2_5 },
					}),
					i(226458, {	-- Patched Harvest Golem's Boots
						cost = { { "i", TRICKY_TREAT, 100 } },
						timeline = { ADDED_11_2_5 },
					}),
					i(226457, {	-- Patched Harvest Golem's Chest
						cost = { { "i", TRICKY_TREAT, 100 } },
						timeline = { ADDED_11_2_5 },
					}),
					i(226456, {	-- Patched Harvest Golem's Gloves
						cost = { { "i", TRICKY_TREAT, 100 } },
						timeline = { ADDED_11_2_5 },
					}),
					i(226690, {	-- Patched Harvest Golem's Head
						cost = { { "i", TRICKY_TREAT, 100 } },
						timeline = { ADDED_11_2_5 },
					}),
					i(226455, {	-- Patched Harvest Golem's Pants
						cost = { { "i", TRICKY_TREAT, 100 } },
						timeline = { ADDED_11_2_5 },
					}),
					i(226454, {	-- Patched Harvest Golem's Pauldrons
						cost = { { "i", TRICKY_TREAT, 100 } },
						timeline = { ADDED_11_2_5 },
					}),
					i(226453, {	-- Patched Harvest Golem's Post
						cost = { { "i", TRICKY_TREAT, 100 } },
						timeline = { ADDED_11_0_5 },
					}),
					i(230042, {	-- Prowler's Faded Shoulder Cape
						cost = { { "i", TRICKY_TREAT, 50 } },
						timeline = { ADDED_11_0_5 },
					}),
					i(37582, {	-- Pyroblast Cinnamon Ball
						cost = { { "i", TRICKY_TREAT, 2 } },
					}),
					i(37584, {	-- Soothing Spearmint Candy
						cost = { { "i", TRICKY_TREAT, 2 } },
					}),
					i(247706, {	-- The Horseman's Ghoulish Blade
						cost = { { "i", TRICKY_TREAT, 100 } },
						timeline = { ADDED_11_2_5 },
					}),
					i(247715, {	-- The Horseman's Ghoulish Bulwark
						cost = { { "i", TRICKY_TREAT, 100 } },
						timeline = { ADDED_11_2_5 },
					}),
					i(247710, {	-- The Horseman's Ghoulish Great Blade
						cost = { { "i", TRICKY_TREAT, 100 } },
						timeline = { ADDED_11_2_5 },
					}),
					i(37604, { cost = { { "i", TRICKY_TREAT, 2 } } }),	-- Tooth Pick
					-- #endif
				},
			}),
			n_CommonVendorItems({
				timeline = { ADDED_4_2_2 },
				crs = {
					52497,	-- Spanky <Mask Vendor>
					53760,	-- Farina <Mask Vendor>
				},
				groups = MASKS_WITH_COST,
			}),
			n_CommonVendorItems({
				timeline = { ADDED_4_2_2 },
				crs = {
					53702,	-- Stymie <Wand Vendor>
					53756,	-- Darla <Wand Vendor>
				},
				groups = WANDS_WITH_COST,
			}),
			n_CommonVendorItems({
				timeline = { ADDED_7_1_0 },
				crs = {
					109685,	-- Pippi <Pet Vendor>
					109688,	-- Woim <Pet Vendor>
				},
				groups = {
					i(116811, {	-- "Lil' Starlet" Costume
						cost = { { "i", TRICKY_TREAT, 5 } },
						timeline = { ADDED_6_0_2 },
					}),
					i(116810, {	-- "Mad Alchemist" Costume
						cost = { { "i", TRICKY_TREAT, 5 } },
						timeline = { ADDED_6_0_2 },
					}),
					i(116812, {	-- "Yipp-Saron" Costume
						cost = { { "i", TRICKY_TREAT, 5 } },
						timeline = { ADDED_6_0_2 },
					}),
					i(116801, {	-- Cursed Birman (PET!)
						cost = { { "i", TRICKY_TREAT, 150 } },
						timeline = { ADDED_6_0_2 },
					}),
					i(70908, {	-- Feline Familiar (PET!)
						cost = { { "i", TRICKY_TREAT, 150 } },
						timeline = { ADDED_4_2_2 },
					}),
					i(151269, {	-- Naxxy (PET!)
						cost = { { "i", TRICKY_TREAT, 150 } },
						timeline = { ADDED_7_3_0 },
					}),
					i(139036, {	-- Ominous Pet Treat
						cost = { { "i", TRICKY_TREAT, 5 } },
						timeline = { ADDED_7_0_3 },
					}),
					i(33154, {	-- Sinister Squashling (PET!)
						cost = { { "i", TRICKY_TREAT, 150 } },
						timeline = { ADDED_2_2_2 },
					}),
					i(116804, {	-- Widget the Departed (PET!)
						cost = { { "i", TRICKY_TREAT, 150 } },
						timeline = { ADDED_6_0_2 },
					}),
				},
			}),
			n(273472, {	-- Cordula Wolfgang <Hallow's End Decor Specialist>
				coord = { 54.3, 32.7, FOUNDERS_POINT },
				timeline = { ADDED_12_1_5 },
			}),
			n(273470, {	-- Spew Gutsout <Hallow's End Decor Specialist>
				coord = { 52.4, 54.4, RAZORWIND_SHORES },
				timeline = { ADDED_12_1_5 },
			}),
			n(273403, {	-- Jack <Decor Vendor>
				coord = { 31.9, 50.3, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				timeline = { ADDED_12_1_5 },
				sym = {{"select","itemID",
					282086,	-- Buckled Witch Hat (DECOR!)
					282081,	-- Candlelit Smiling Jack-o'-Lantern (DECOR!)
					282098,	-- Elaborate Heartsbane Doom Catcher (DECOR!)
					282072,	-- Enchanted Hallow's End Candle (DECOR!)
					282090,	-- Eternally Powered Glowskull (DECOR!)
					282075,	-- Heartsbane Candle (DECOR!)
					282100,	-- Heartsbane Doom Catcher (DECOR!)
					282092,	-- Heartsbane Ritual Markings (DECOR!)
					282095,	-- Ominous Heartsbane Banner (DECOR!)
					282051,	-- Simple Hallow's End Candle (DECOR!)
					282077,	-- Spooky Scarecrow (DECOR!)
					282083,	-- Unlit Smiling Jack-o'-Lantern (DECOR!)
				}},
			}),
			n(273402, {	-- Echo <Decor Vendor>
				coord = { 62.3, 66.7, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				timeline = { ADDED_12_1_5 },
				sym = {{"select","itemID",
					282086,	-- Buckled Witch Hat (DECOR!)
					282081,	-- Candlelit Smiling Jack-o'-Lantern (DECOR!)
					282098,	-- Elaborate Heartsbane Doom Catcher (DECOR!)
					282072,	-- Enchanted Hallow's End Candle (DECOR!)
					282090,	-- Eternally Powered Glowskull (DECOR!)
					282075,	-- Heartsbane Candle (DECOR!)
					282100,	-- Heartsbane Doom Catcher (DECOR!)
					282092,	-- Heartsbane Ritual Markings (DECOR!)
					282095,	-- Ominous Heartsbane Banner (DECOR!)
					282051,	-- Simple Hallow's End Candle (DECOR!)
					282077,	-- Spooky Scarecrow (DECOR!)
					282083,	-- Unlit Smiling Jack-o'-Lantern (DECOR!)
				}},
			}),
			n(53757, {	-- Chub <Candy & Toy Vendor>
				coord = { 62.1, 66.4, TIRISFAL_GLADES },
				timeline = { ADDED_4_2_2 },
				races = HORDE_ONLY,
			}),
			n(53756, {	-- Darla <Wand Vendor>
				coord = { 62.2, 66.4, TIRISFAL_GLADES },
				timeline = { ADDED_4_2_2 },
				races = HORDE_ONLY,
			}),
			n(53728, {	-- Dorothy <Candy & Toy Vendor>
				coord = { 31.8, 50.0, ELWYNN_FOREST },
				timeline = { ADDED_4_2_2 },
				races = ALLIANCE_ONLY,
			}),
			n(53760, {	-- Farina <Mask Vendor>
				coord = { 62.3, 66.4, TIRISFAL_GLADES },
				timeline = { ADDED_4_2_2 },
				races = HORDE_ONLY,
			}),
			n(96362, {	-- Izzy Hollyfizzle <Events Coordinator>
				timeline = { ADDED_6_2_2 },
				coords = {
					{ 47.3, 38.4, FROSTWALL },
					{ 44.2, 51.0, LUNARFALL },
				},
				groups = {
					i(128664, {	-- Creepy Crawlers (CI!)
						cost = { { "i", 128658, 5 } },	-- 5x Spooky Supplies
					}),
					i(128660, {	-- Ghoulish Guises (CI!)
						cost = { { "i", 128658, 5 } },	-- 5x Spooky Supplies
					}),
					i(128661, {	-- Hallow's Glow (CI!)
						cost = { { "i", 128658, 5 } },	-- 5x Spooky Supplies
					}),
					i(128662, {	-- Seer's Invitation (CI!)
						cost = { { "i", 128658, 5 } },	-- 5x Spooky Supplies
					}),
					i(TRICKY_TREAT, {
						cost = { { "i", 128658, 1 } },	-- 1x Spooky Supplies
					}),
					i(128663, {	-- Witch's Brew (CI!)
						cost = { { "i", 128658, 5 } },	-- 5x Spooky Supplies
					}),
				},
			}),
			n(109685, {	-- Pippi <Pet Vendor>
				coord = { 31.9, 50.2, ELWYNN_FOREST },
				timeline = { ADDED_7_1_0 },
				races = ALLIANCE_ONLY,
			}),
			n(52497, {	-- Spanky <Mask Vendor>
				coord = { 31.8, 50.0, ELWYNN_FOREST },
				timeline = { ADDED_4_2_2 },
				races = ALLIANCE_ONLY,
			}),
			n(53702, {	-- Stymie <Wand Vendor>
				coord = { 31.9, 50.1, ELWYNN_FOREST },
				timeline = { ADDED_4_2_2 },
				races = ALLIANCE_ONLY,
			}),
			n(164966, {	-- Temel <The Party Herald> (with a hat)
				coords = {
					{ 28.0, 43.0, REVENDRETH },	-- with hat, outside Sinfall
					{ 58.8, 80.0, SINFALL_REACHES },	-- without hat
				},
				crs = { 172531 },	-- Temel <The Party Herald> (with no hat - combining these because they sell the same stuff)
				timeline = { ADDED_9_1_0 },
				groups = {
					i(187133, {	-- Bewitching Little Hat
						cost = { { "c", 1820, 25 } },	-- 25x Infused Ruby
					}),
				},
			}),
			n(252232, {	-- Tricky Treat Trader <Candy Crew>
				description = "The exhange rate of candy to Tricky Treats changes daily and varies between neighborhoods.",
				coords = {
					{ 53.8, 33.6, FOUNDERS_POINT },
					{ 51.6, 54.6, RAZORWIND_SHORES },
				},
				timeline = { ADDED_12_1_5 },
				groups = {
					i(TRICKY_TREAT, {
						cost = { { "i", DRUSTVAR_CHOC, 1 } },
					}),
					i(TRICKY_TREAT, {
						cost = { { "i", DUSKWOOD_CARAMEL, 1 } },
					}),
					i(TRICKY_TREAT, {
						cost = { { "i", FELWOOD_FUDGE, 1 } },
					}),
				},
			}),
			n(109688, {	-- Woim <Pet Vendor>
				coord = { 62.3, 66.4, TIRISFAL_GLADES },
				timeline = { ADDED_7_1_0 },
				races = HORDE_ONLY,
			}),
		}),
		-- #endif
		n(ZONE_DROPS, {
			i(128807, {	-- Coin of Many Faces (TOY!)
				maps = { DRAENOR_SHADOWMOON_VALLEY },
				timeline = { ADDED_6_0_2 },
				crs = {
					96637,	-- Boneship Reveler
					96538,	-- Brackish Cultivator
					96535,	-- Captain Bonerender
					96545,	-- Growing Squashling
					96536,	-- Salty Dreg
				},
			}),
			i(33117, {	-- Jack-o'-Lantern
				timeline = { ADDED_2_2_3 },
			}),
			i(20400),	-- Pumpkin Bag
			-- #if AFTER 6.0.1
			i(104316, {	-- Spectral Grog
				maps = { DRAENOR_SHADOWMOON_VALLEY },
				crs = {
					96637,	-- Boneship Reveler
					96538,	-- Brackish Cultivator
					96535,	-- Captain Bonerender
					96545,	-- Growing Squashling
					96536,	-- Salty Dreg
				},
			}),
			-- #endif
		}),
	},
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, {
	applyevent(EVENTS.HALLOWS_END, n(HALLOWS_END_HEADER, {
		timeline = { ADDED_10_1_5 },
		groups = {
			q(77221),	-- Obtain The Scarlet Key (ID 208485)
			q(78474),	-- Killing Headless Horseman (needs more details)
			q(78478),	-- Killing Headless Horseman (needs more details)
			q(78826),	-- Killing Headless Horseman (needs more details)
			q(99132, { timeline = { ADDED_12_1_5 }, isDaily = true }),	-- Triggers on depositing candy to your neighborhood Piniata
			q(97219, { timeline = { ADDED_12_1_5 }, isDaily = true }),	-- Candy Crafting
			q(98421, { timeline = { ADDED_12_1_5 }, isDaily = true }),	-- Candy Crafting
			q(98422, { timeline = { ADDED_12_1_5 }, isDaily = true }),	-- Candy Crafting
		},
	})),
}));
