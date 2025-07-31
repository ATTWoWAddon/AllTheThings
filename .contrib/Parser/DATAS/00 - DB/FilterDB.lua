---------------------------------------------------------
--     F I L T E R   D A T A B A S E   M O D U L E     --
---------------------------------------------------------
-- NOTE: This file is here instead of in the DB folder because it generates the new
-- FilterConstants contants table. Refer to the individual filters for more information.
local FilterDB = FilterDB; FilterConstants = {};
for filterID,filterData in pairs({
	-- Armor Types
	[1] = {
		readable = "Held in Off-Hand",
		icon = 134333,
		constant = "HELD_IN_OFF_HAND",
		text = {
			en = [[~INVTYPE_HOLDABLE]],
		},
	},
	[2] = {
		readable = "Cosmetic",
		icon = [[~_.asset("Interface_Cosmetic")]],
		constant = "COSMETIC",
		text = {
			-- #if AFTER LEGION
			-- TODO: Check when this was changed from Bucklers
			en = WOWAPI_GetItemSubClassInfo(4,5),
			-- #else
			en = "Cosmetic",
			-- #endif
		},
	},
	[3] = {
		readable = "Cloaks",
		icon = 133763,
		constant = "CLOAKS",
		text = {
			-- #if AFTER LEGION
			-- TODO: Check when this was added
			en = WOWAPI_GetItemSubClassInfo(8,3),
			-- #else
			en = [[~INVTYPE_CLOAK]],	-- This actually says "Back", there isn't a great alternative.
			-- #endif
		},
	},
	[4] = {
		readable = "Cloth",
		icon = 132662,
		constant = "CLOTH",
		text = {
			en = WOWAPI_GetItemSubClassInfo(4,1),
		},
	},
	[5] = {
		readable = "Leather",
		icon = 132724,
		constant = "LEATHER",
		text = {
			en = WOWAPI_GetItemSubClassInfo(4,2),
		},
	},
	[6] = {
		readable = "Mail",
		icon = 132627,
		constant = "MAIL",
		text = {
			en = WOWAPI_GetItemSubClassInfo(4,3),
		},
	},
	[7] = {
		readable = "Plate",
		icon = 132736,
		constant = "PLATE",
		text = {
			en = WOWAPI_GetItemSubClassInfo(4,4),
		},
	},
	[8] = {
		readable = "Shields",
		icon = 134952,
		constant = "SHIELDS",
		text = {
			en = WOWAPI_GetItemSubClassInfo(4,6),
		},
	},
	[9] = {
		readable = "Tabards",
		icon = 135026,
		constant = "TABARDS",
		text = {
			en = [[~INVTYPE_TABARD]],
		},
	},
	[10] = {
		readable = "Shirts",
		icon = 135025,
		constant = "SHIRTS",
		text = {
			en = [[~INVTYPE_BODY]],
		},
	},
	
	-- Special Weapon Types
	[11] = {
		readable = "Artifacts",
		icon = 535594,
		constant = "ARTIFACTS",
		export = true,
		text = {
			en = "Artifacts",
			de = "Artefakte",
			fr = "Artéfact",
			ru = "Артефакты",
			cn = "神器",
		},
	},
	
	-- Weapon Types
	[20] = {
		readable = "Daggers",
		icon = 135637,
		constant = "DAGGERS",
		text = {
			en = WOWAPI_GetItemSubClassInfo(2,15),
		},
	},
	[21] = {
		readable = "One-Handed Axes",
		icon = 132408,
		constant = "ONE_HANDED_AXES",
		text = {
			en = WOWAPI_GetItemSubClassInfo(2,0),
		},
	},
	[22] = {
		readable = "Two-Handed Axes",
		icon = 132400,
		constant = "TWO_HANDED_AXES",
		text = {
			en = WOWAPI_GetItemSubClassInfo(2,1),
		},
	},
	[23] = {
		readable = "One-Handed Maces",
		icon = 133477,
		constant = "ONE_HANDED_MACES",
		text = {
			en = WOWAPI_GetItemSubClassInfo(2,4),
		},
	},
	[24] = {
		readable = "Two-Handed Maces",
		icon = 133053,
		constant = "TWO_HANDED_MACES",
		text = {
			en = WOWAPI_GetItemSubClassInfo(2,5),
		},
	},
	[25] = {
		readable = "One-Handed Swords",
		icon = 135274,
		constant = "ONE_HANDED_SWORDS",
		text = {
			en = WOWAPI_GetItemSubClassInfo(2,7),
		},
	},
	[26] = {
		readable = "Two-Handed Swords",
		icon = 135277,
		constant = "TWO_HANDED_SWORDS",
		text = {
			en = WOWAPI_GetItemSubClassInfo(2,8),
		},
	},
	[27] = {
		readable = "Wands",
		icon = 135464,
		constant = "WANDS",
		text = {
			en = WOWAPI_GetItemSubClassInfo(2,19),
		},
	},
	[28] = {
		readable = "Staves",
		icon = 135164,
		constant = "STAVES",
		text = {
			en = WOWAPI_GetItemSubClassInfo(2,10),
		},
	},
	[29] = {
		readable = "Polearms",
		icon = 135127,
		constant = "POLEARMS",
		text = {
			en = WOWAPI_GetItemSubClassInfo(2,6),
		},
	},
	[30] = {
		readable = "Spears",	-- Unused
		icon = 135124,
		--constant = "SPEARS",
		text = {
			en = WOWAPI_GetItemSubClassInfo(2,17),
		},
	},
	[31] = {
		readable = "Guns",
		icon = 135610,
		constant = "GUNS",
		text = {
			en = WOWAPI_GetItemSubClassInfo(2,3),
		},
	},
	[32] = {
		readable = "Bows",
		icon = 135493,
		constant = "BOWS",
		text = {
			en = WOWAPI_GetItemSubClassInfo(2,2),
		},
	},
	[33] = {
		readable = "Crossbows",
		icon = 135530,
		constant = "CROSSBOWS",
		text = {
			en = WOWAPI_GetItemSubClassInfo(2,18),
		},
	},
	[34] = {
		readable = "Fist Weapons",
		icon = 134295,
		constant = "FIST_WEAPONS",
		text = {
			en = WOWAPI_GetItemSubClassInfo(2,13),
		},
	},
	[35] = {
		readable = "Warglaives",
		-- #if AFTER TBC
		icon = 135561,
		-- #else
		icon = 135277,
		-- #endif
		constant = "WARGLAIVES",
		text = {
			-- #if AFTER LEGION
			en = WOWAPI_GetItemSubClassInfo(2,9),
			-- #else
			en = "Warglaives",
			-- #endif
		},
	},
	[36] = {
		readable = "Thrown",
		icon = 135426,
		constant = "THROWN",
		text = {
			-- #if AFTER WRATH
			en = [[~INVTYPE_THROWN]],
			-- #else
			en = WOWAPI_GetItemSubClassInfo(2,16),
			-- #endif
		},
	},
	[37] = {
		readable = "Ammo",
		icon = 132383,
		constant = "AMMO",
		text = {
			en = [[~INVTYPE_AMMO]],
		},
	},
	
	-- Accessories
	[50] = {
		readable = "Miscellaneous",
		icon = 135999,
		constant = "MISCELLANEOUS",
		text = {
			en = [[~AUCTION_CATEGORY_MISCELLANEOUS]],
		},
	},
	[51] = {
		readable = "Neck",
		icon = 133289,
		constant = "NECK",
		text = {
			en = [[~INVTYPE_NECK]],
		},
	},
	[52] = {
		readable = "Finger",
		icon = 133346,
		constant = "FINGER",
		text = {
			en = [[~INVTYPE_FINGER]],
		},
	},
	[53] = {
		readable = "Trinket",
		icon = 135443,
		constant = "TRINKET",
		text = {
			en = [[~INVTYPE_TRINKET]],
		},
	},
	[54] = {
		readable = "Relic / Libram / Idols",
		-- #if AFTER LEGION
		icon = 1109960,
		-- #else
		icon = 134916,
		-- #endif
		constant = "RELIC",
		text = {
			-- #if AFTER LEGION
			en = WOWAPI_GetItemSubClassInfo(3,11),
			-- #else
			en = [[~INVTYPE_RELIC]],
			-- #endif
		},
	},
	[55] = {
		readable = "Consumables (Artifact Power, etc)",
		icon = 132812,
		constant = "CONSUMABLES",
		text = {
			en = [[~AUCTION_CATEGORY_CONSUMABLES]],
			--fr = "Consommables",
			--ru = "Расходуемые",
			--cn = "消耗品",
		},
	},
	[56] = {
		readable = "Reagents",
		icon = [[~_.asset("Interface_Zone_drop")]],
		constant = "REAGENTS",
		text = {
			en = WOWAPI_GetItemClassInfo(5),
		},
	},
	[57] = {
		readable = "Profession Equipment",
		icon = 132932,
		constant = "PROFESSION_EQUIPMENT",
		text = {
			-- #if AFTER 10.0.2
			en = [[~INVTYPE_PROFESSION_GEAR]],
			-- #else
			en = "Profession Equipment",
			-- #endif
		},
	},
	[58] = {
		readable = "Containers",	-- Tier Tokens, Timeless Isle BoA gear tokens, Bags of loot, etc
		icon = 132594,
		constant = "CONTAINERS",
		text = {
			en = [[~AUCTION_CATEGORY_CONTAINERS]],
		},
	},
	[59] = {
		readable = "Class Books (Classic Spells, Ashran Books, etc)",
		icon = 133735,
		constant = "CLASS_BOOKS",
		text = {
			en = "Class Books",
			fr = "Livres de classe",
			ru = "Классовые Книги",
			cn = "职业技能书",
		},
	},
	[60] = {
		readable = "S.E.L.F.I.E. Camera",
		icon = 1109100,
		constant = "SELFIE_CAMERA",
		text = {
			en = "S.E.L.F.I.E. Camera",
			es = "Cámara SELFI",
			de = "S.E.L.F.I.E.-Kamera",
			fr = "Appareil photo P.R.O.F.I.L",
			it = "Fotocamera S.E.L.F.I.E.",
			pt = "Câmera de S.E.L.F.I.E.",
			ru = "Камера СЕЛФИ",
			ko = "\"셀카\" 사진기",
			cn = "自拍神器",
		},
	},
	[61] = {
		readable = "Gems",
		icon = 134129,
		constant = "GEMS",
		text = {
			en = WOWAPI_GetItemClassInfo(3),
		},
	},
	
	-- Other Types
	[100] = {
		readable = "Mounts",
		icon = [[~_.asset("Category_Mounts")]],
		constant = "MOUNTS",
		text = {
			en = [[~MOUNTS]],
		},
	},
	[101] = {
		readable = "Battle Pets",
		icon = [[~_.asset("Category_PetJournal")]],
		constant = "BATTLE_PETS",
		text = {
			en = [[~AUCTION_CATEGORY_BATTLE_PETS]],
		},
	},
	[102] = {
		readable = "Toys",
		icon = [[~_.asset("Category_ToyBox")]],
		constant = "TOYS",
		text = {
			en = [[~TOY]],
		},
	},
	[103] = {
		readable = "Illusions",
		icon = 237174,
		constant = "ILLUSIONS",
		text = {
			en = "Illusions",
			de = "Waffenverzauberungen",
			fr = "Illusions",
			ru = "Иллюзии",
			cn = "幻象",
			tw = "武器附魔外觀",
		},
	},
	[104] = {
		readable = "Quest Items",
		icon = [[~_.asset("Interface_Quest_header")]],
		constant = "QUEST_ITEMS",
		export = true,
		text = {
			en = [[~AUCTION_CATEGORY_QUEST_ITEMS]],
		},
	},
	[105] = {
		readable = "Achievements",
		icon = [[~_.asset("Category_Achievements")]],
		constant = "ACHIEVEMENTS",
		text = {
			en = [[~TRACKER_FILTER_ACHIEVEMENTS]],
		},
	},
	[106] = {
		readable = "Holiday",
		icon = 133202,
		constant = "HOLIDAY",
		text = {
			en = [[~CALENDAR_FILTER_WEEKLY_HOLIDAYS]],
		},
	},
	[108] = {
		readable = "Music Rolls",
		icon = 134394,
		constant = "MUSIC_ROLLS",
		text = {
			en = [[~ENABLE_MUSIC.." "..ROLL]],
		},
	},
	[109] = {
		readable = "Heirlooms",
		icon = [[~_.asset("Weapon_Type_Heirloom")]],
		constant = "HEIRLOOMS",
		text = {
			en = [[~HEIRLOOMS]],
		},
	},
	[110] = {
		readable = "Titles",
		icon = [[~_.asset("Category_Titles")]],
		constant = "TITLES",
		text = {
			en = [[~PAPERDOLL_SIDEBAR_TITLES]],
		},
	},
	[111] = {
		readable = "Glyph",
		icon = 254306,
		constant = "GLYPHS",
		text = {
			en = WOWAPI_GetItemClassInfo(16),
		},
	},
	[112] = {
		readable = "Factions",
		icon = [[~_.asset("Category_Factions")]],
		constant = "FACTIONS",
		text = {
			en = [[~FACTION]],
		},
	},
	[113] = {
		readable = "Bags",
		icon = 133633,
		constant = "BAGS",
		text = {
			en = [[~INVTYPE_BAG]],
		},
	},
	[114] = {
		readable = "Mount Equipment",
		-- #if AFTER 8.2.0
		icon = 1534178,
		-- #else
		icon = 132261,
		-- #endif
		constant = "MOUNT_EQUIPMENT",
		text = {
			-- #if AFTER 8.2.0
			en = WOWAPI_GetItemSubClassInfo(13,0),
			-- #else
			en = "Mount Equipment",
			-- #endif
		},
	},
	[115] = {
		readable = "Keys",
		icon = 134237,
		constant = "KEYS",
		text = {
			en = "Keys",
		},
	},
	[200] = {
		readable = "Recipes",
		icon = 134941,
		constant = "RECIPES",
		text = {
			en = [[~AUCTION_CATEGORY_RECIPES]],
		},
	},
	[999] = {
		readable = "Event Item",
		icon = 133205,
		constant = "EVENT_ITEMS",
		text = {
			en = "Event Item",
			es = "Elemento de Evento",
			de = "Ereigniselement",
			fr = "Objet d’événements",
			it = "Oggetto dell'evento",
			pt = "Item de Evento",
			ru = "Предметы Событий",
			ko = "이벤트 아이템",
			cn = "事件物品",
		},
	},
})
do
	FilterDB[filterID] = filterData;
	if filterData.constant then
		FilterConstants[filterData.constant] = filterID;
	end
end
