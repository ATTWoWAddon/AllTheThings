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
		es = "Halloween",
		mx = "Halloween",
		-- #endif
	},
});
local CANDY_AND_TOY_VENDOR_GROUPS = {
	i(122338, {	-- Ancient Heirloom Armor Casing
		["cost"] = { { "i", 33226, 250 } },	-- 250x Tricky Treat
		["timeline"] = { ADDED_6_1_0 },
	}),
	i(167731, {	-- Battle-Hardened Heirloom Armor Casing
		["cost"] = { { "i", 33226, 450 } },	-- 450x Tricky Treat
		["timeline"] = { ADDED_8_1_5 },
	}),
	i(187997, {	-- Eternal Heirloom Armor Casing
		["cost"] = { { "i", 33226, 450 } },	-- 450x Tricky Treat
		["timeline"] = { ADDED_9_1_5 },
	}),
	i(122340, {	-- Timeworn Heirloom Armor Casing
		["cost"] = { { "i", 33226, 450 } },	-- 450x Tricky Treat
		["timeline"] = { ADDED_6_1_0 },
	}),
	i(151614, {	-- Weathered Heirloom Armor Casing
		["cost"] = { { "i", 33226, 450 } },	-- 450x Tricky Treat
		["timeline"] = { ADDED_7_2_5 },
	}),
	-- #if BEFORE 7.0.1
	i(116811, {	-- "Lil' Starlet" Costume
		["cost"] = { { "i", 33226, 5 }, },	-- 5x Tricky Treat
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(116810, {	-- "Mad Alchemist" Costume
		["cost"] = { { "i", 33226, 5 }, },	-- 5x Tricky Treat
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(37585, {	-- Chewy Fel Taffy
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(116801, {	-- Cursed Birman (PET!)
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(70908, {	-- Feline Familiar (PET!)
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
		["timeline"] = { ADDED_4_2_0 },
	}),
	i(37583, {	-- G.N.E.R.D.S.
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(33292, {	-- Hallowed Helm
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
	}),
	i(70722, {	-- Little Wickerman (TOY!)
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
		["timeline"] = { ADDED_4_2_0 },
	}),
	i(37011, {	-- Magic Broom (MOUNT!)
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
		["collectible"] = false,
	}),
	i(37582, {	-- Pyroblast Cinnamon Ball
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(37584, {	-- Soothing Spearmint Candy
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(37604, {	-- Tooth Pick
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(116804, {	-- Widget the Departed (PET!)
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
		["timeline"] = { ADDED_6_0_2 },
	}),
	-- #else
	i(208735, {	-- Bucket of Morbid Treats
		["cost"] = { { "i", 33226, 150 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_10_1_7 },
	}),
	i(37585, {	-- Chewy Fel Taffy
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	iensemble(230173, {	-- Ensemble: Prowler's Faded Headgear
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
		["timeline"] = { ADDED_11_0_5 },
	}),
	i(128643, {	-- Exquisite Costume Set: "Deathwing"
		["cost"] = { { "i", 33226, 200 }, },	-- 200x Tricky Treat
		["timeline"] = { ADDED_6_2_2 },
	}),
	i(138990, {	-- Exquisite Costume Set: "Grommash"
		["cost"] = { { "i", 33226, 200 }, },	-- 200x Tricky Treat
		["timeline"] = { ADDED_7_0_3 },
	}),
	i(116828, {	-- Exquisite Costume Set: "The Lich King"
		["cost"] = { { "i", 33226, 200 }, },	-- 200x Tricky Treat
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(151268, {	-- Exquisite Costume Set: "Xavius"
		["cost"] = { { "i", 33226, 200 }, },	-- 200x Tricky Treat
		["timeline"] = { ADDED_7_3_0 },
	}),
	i(37583, {	-- G.N.E.R.D.S.
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(33292, {	-- Hallowed Helm
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
	}),
	i(163045, {	-- Headless Horseman's Hearthstone (TOY!)
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
		["timeline"] = { ADDED_8_0_1 },
	}),
	i(151271, {	-- Horse Head Costume (TOY!)
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
		["timeline"] = { ADDED_7_3_0 },
	}),
	i(151270, {	-- Horse Tail Costume (TOY!)
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
		["timeline"] = { ADDED_7_3_0 },
	}),
	i(70722, {	-- Little Wickerman (TOY!)
		-- #if BEFORE 11.0.5
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
		-- #else
		["cost"] = { { "i", 33226, 100 }, },	-- 100x Tricky Treat
		-- #endif
		["timeline"] = { ADDED_4_2_0 },
	}),
	i(37011, {	-- Magic Broom (MOUNT!)
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
		["collectible"] = false,
	}),
	i(226427, {	-- Patched Harvester's Claw
		["cost"] = { { "i", 33226, 100 }, },	-- 100x Tricky Treat
		["timeline"] = { ADDED_11_0_5 },
	}),
	i(226461, {	-- Patched Harvest Golem's Belt
		["cost"] = { { "i", 33226, 100 }, },	-- 100x Tricky Treat
		["timeline"] = { ADDED_11_2_5 },
	}),
	i(226458, {	-- Patched Harvest Golem's Boots
		["cost"] = { { "i", 33226, 100 }, },	-- 100x Tricky Treat
		["timeline"] = { ADDED_11_2_5 },
	}),
	i(226457, {	-- Patched Harvest Golem's Chest
		["cost"] = { { "i", 33226, 100 }, },	-- 100x Tricky Treat
		["timeline"] = { ADDED_11_2_5 },
	}),
	i(226456, {	-- Patched Harvest Golem's Gloves
		["cost"] = { { "i", 33226, 100 }, },	-- 100x Tricky Treat
		["timeline"] = { ADDED_11_2_5 },
	}),
	i(226690, {	-- Patched Harvest Golem's Head
		["cost"] = { { "i", 33226, 100 }, },	-- 100x Tricky Treat
		["timeline"] = { ADDED_11_2_5 },
	}),
	i(226455, {	-- Patched Harvest Golem's Pants
		["cost"] = { { "i", 33226, 100 }, },	-- 100x Tricky Treat
		["timeline"] = { ADDED_11_2_5 },
	}),
	i(226454, {	-- Patched Harvest Golem's Pauldrons
		["cost"] = { { "i", 33226, 100 }, },	-- 100x Tricky Treat
		["timeline"] = { ADDED_11_2_5 },
	}),
	i(226453, {	-- Patched Harvest Golem's Post
		["cost"] = { { "i", 33226, 100 }, },	-- 100x Tricky Treat
		["timeline"] = { ADDED_11_0_5 },
	}),
	i(230042, {	-- Prowler's Faded Shoulder Cape
		["cost"] = { { "i", 33226, 50 }, },	-- 50x Tricky Treat
		["timeline"] = { ADDED_11_0_5 },
	}),
	i(37582, {	-- Pyroblast Cinnamon Ball
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(37584, {	-- Soothing Spearmint Candy
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(247706, {	-- The Horseman's Ghoulish Blade
		["cost"] = { { "i", 33226, 100 }, },	-- 100x Tricky Treat
		["timeline"] = { ADDED_11_2_5 },
	}),
	i(247715, {	-- The Horseman's Ghoulish Bulwark
		["cost"] = { { "i", 33226, 100 }, },	-- 100x Tricky Treat
		["timeline"] = { ADDED_11_2_5 },
	}),
	i(247710, {	-- The Horseman's Ghoulish Great Blade
		["cost"] = { { "i", 33226, 100 }, },	-- 100x Tricky Treat
		["timeline"] = { ADDED_11_2_5 },
	}),
	i(37604, {	-- Tooth Pick
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	-- #endif
};
local PET_VENDOR_GROUPS = {
	i(116811, {	-- "Lil' Starlet" Costume
		["timeline"] = { ADDED_6_0_2 },
		["cost"] = { { "i", 33226, 5 }, },	-- 5x Tricky Treat
	}),
	i(116810, {	-- "Mad Alchemist" Costume
		["timeline"] = { ADDED_6_0_2 },
		["cost"] = { { "i", 33226, 5 }, },	-- 5x Tricky Treat
	}),
	i(116812, {	-- "Yipp-Saron" Costume
		["timeline"] = { ADDED_6_0_2 },
		["cost"] = { { "i", 33226, 5 }, },	-- 5x Tricky Treat
	}),
	i(116801, {	-- Cursed Birman (PET!)
		["timeline"] = { ADDED_6_0_2 },
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
	}),
	i(70908, {	-- Feline Familiar (PET!)
		["timeline"] = { ADDED_4_2_0 },
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
	}),
	i(151269, {	-- Naxxy (PET!)
		["timeline"] = { ADDED_7_3_0 },
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
	}),
	i(139036, {	-- Ominous Pet Treat
		["timeline"] = { ADDED_7_0_3 },
		["cost"] = { { "i", 33226, 5 }, },	-- 5x Tricky Treat
	}),
	i(33154, {	-- Sinister Squashling (PET!)
		["timeline"] = { ADDED_2_2_2 },
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
	}),
	i(116804, {	-- Widget the Departed (PET!)
		["timeline"] = { ADDED_6_0_2 },
		["cost"] = { { "i", 33226, 150 }, },	-- 150x Tricky Treat
	}),
};
local MASKS_WITH_COST = {
	i(34000, {	-- Blood Elf Female Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_3_0_2 },
	}),
	i(34002, {	-- Blood Elf Male Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_3_0_2 },
	}),
	i(34001, {	-- Draenei Female Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_3_0_2 },
	}),
	i(34003, {	-- Draenei Male Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_3_0_2 },
	}),
	i(20562, {	-- Dwarf Female Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(20561, {	-- Dwarf Male Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(20392, {	-- Gnome Female Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(20391, {	-- Gnome Male Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(49212, {	-- Goblin Female Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_4_0_1 },
	}),
	i(49210, {	-- Goblin Male Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_4_0_1 },
	}),
	i(20565, {	-- Human Female Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(20566, {	-- Human Male Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(69187, {	-- Murloc Female Mask
		["cost"] = { { "i", 33226, 5 }, },	-- 5x Tricky Treat
		["timeline"] = { ADDED_4_0_1 },
	}),
	i(69188, {	-- Murloc Male Mask
		["cost"] = { { "i", 33226, 5 }, },	-- 5x Tricky Treat
		["timeline"] = { ADDED_4_0_1 },
	}),
	i(69189, {	-- Naga Female Mask
		["cost"] = { { "i", 33226, 5 }, },	-- 5x Tricky Treat
		["timeline"] = { ADDED_4_0_1 },
	}),
	i(69190, {	-- Naga Male Mask
		["cost"] = { { "i", 33226, 5 }, },	-- 5x Tricky Treat
		["timeline"] = { ADDED_4_0_1 },
	}),
	i(20563, {	-- Night Elf Female Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(20564, {	-- Night Elf Male Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(69192, {	-- Ogre Female Mask
		["cost"] = { { "i", 33226, 5 }, },	-- 5x Tricky Treat
		["timeline"] = { ADDED_4_0_1 },
	}),
	i(69193, {	-- Ogre Male Mask
		["cost"] = { { "i", 33226, 5 }, },	-- 5x Tricky Treat
		["timeline"] = { ADDED_4_0_1 },
	}),
	i(20569, {	-- Orc Female Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(20570, {	-- Orc Male Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(20571, {	-- Tauren Female Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(20572, {	-- Tauren Male Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(20567, {	-- Troll Female Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(20568, {	-- Troll Male Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(20574, {	-- Undead Female Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(20573, {	-- Undead Male Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(69194, {	-- Vrykul Female Mask
		["cost"] = { { "i", 33226, 5 }, },	-- 5x Tricky Treat
		["timeline"] = { ADDED_4_0_1 },
	}),
	i(69195, {	-- Vrykul Male Mask
		["cost"] = { { "i", 33226, 5 }, },	-- 5x Tricky Treat
		["timeline"] = { ADDED_4_0_1 },
	}),
	i(49215, {	-- Worgen Female Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_4_0_1 },
	}),
	i(49216, {	-- Worgen Male Mask
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_4_0_1 },
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
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(139004, {	-- Hallowed Wand - Banshee
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_7_0_3 },
	}),
	i(20410, {	-- Hallowed Wand - Bat
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		-- #if AFTER TWW
		["description"] = "Can only be used on party members of your faction.",
		-- #endif
	}),
	i(128645, {	-- Hallowed Wand - Gargoyle
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_6_2_2 },
	}),
	i(116853, {	-- Hallowed Wand - Geist
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(20409, {	-- Hallowed Wand - Ghost
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		-- #if AFTER TWW
		["description"] = "Can only be used on party members of your faction.",
		-- #endif
	}),
	i(116850, {	-- Hallowed Wand - Ghoul
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(20399, {	-- Hallowed Wand - Leper Gnome
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		-- #if AFTER TWW
		["description"] = "Can only be used on party members of your faction.",
		-- #endif
	}),
	i(128646, {	-- Hallowed Wand - Nerubian
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_6_2_2 },
	}),
	i(20398, {	-- Hallowed Wand - Ninja
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		-- #if AFTER TWW
		["description"] = "Can only be used on party members of your faction.",
		-- #endif
	}),
	i(20397, {	-- Hallowed Wand - Pirate
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		-- #if AFTER TWW
		["description"] = "Can only be used on party members of your faction.",
		-- #endif
	}),
	i(20413, {	-- Hallowed Wand - Random
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
	}),
	i(20411, {	-- Hallowed Wand - Skeleton
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		-- #if AFTER TWW
		["description"] = "Can only be used on party members of your faction.",
		-- #endif
	}),
	i(116848, {	-- Hallowed Wand - Slime
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(116854, {	-- Hallowed Wand - Spider
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(128644, {	-- Hallowed Wand - Wight
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		["timeline"] = { ADDED_6_2_2 },
	}),
	i(20414, {	-- Hallowed Wand - Wisp
		["cost"] = { { "i", 33226, 2 }, },	-- 2x Tricky Treat
		-- #if AFTER TWW
		["description"] = "Can only be used on party members of your faction.",
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
local SPECTRAL_GROG = i(104316, {	-- Spectral Grog
	["maps"] = { DRAENOR_SHADOWMOON_VALLEY },
	["crs"] = {
		96637,	-- Boneship Reveler
		96538,	-- Brackish Cultivator
		96535,	-- Captain Bonerender
		96545,	-- Growing Squashling
		96536,	-- Salty Dreg
	},
});

-- CRIEVE NOTE: Use this function for candy buckets. :)
local CANDY_BUCKET_OBJECT_DATA = {
	readable = "Candy Bucket",
	consolidate = true,	-- This tells parser that we need to export this as a group to clean up duplicated data.
	dynamic = true,	-- This tells parser to not include it in the export of ObjectDB when it consolidates it.
	model = 200946,
	text = {
		en = "Candy Bucket",
		es = "Cubo de caramelos",
		de = "Eimer mit Süßigkeiten",
		fr = "Seau de bonbons",
		it = "Secchio delle Caramelle",
		pt = "Balde de Balas",
		ru = "Кулек конфет",
		ko = "사탕 바구니",
		cn = "糖罐",
		tw = "糖果桶",
	},
};
local ObjectDB = ObjectDB;
function candybucket(questID, t)
	t = q(questID, t);
	t._drop = { "g" };
	t.isYearly = true;
	t.g = { i(33226, { ["races"] = IGNORED_VALUE }) };	-- Tricky Treat
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

root(ROOTS.Holidays, applyevent(EVENTS.HALLOWS_END, n(HALLOWS_END_HEADER, {
	-- #if AFTER 2.0.1
	n(ACHIEVEMENTS, {
		ach(1656, {	-- Hallowed Be Thy Name (A) / Hallowed Be Thy Name [MOP+]
			-- Meta Achievement should symlink the contained Achievements from Source
			["sym"] = {{"meta_achievement",
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
			["timeline"] = { ADDED_3_0_2 },
			-- #if BEFORE MOP
			["races"] = ALLIANCE_ONLY,
			-- #endif
			["groups"] = {
				title(92),	-- <Name> the Hallowed
			},
		}),
		ach(1657, {	-- Hallowed Be Thy Name (H)
			-- Meta Achievement should symlink the contained Achievements from Source
			["sym"] = {{"meta_achievement",
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
			["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
			["races"] = HORDE_ONLY,
			["groups"] = {
				title(92),	-- <Name> the Hallowed
			},
		}),
		ach(10365, {	-- A Frightening Friend
			["description"] = "You need Tier 3 garrison for this.",
			["coords"] = {
				{ 40.1, 70.0, LUNARFALL },	-- Pepe Location (Alliance)
				{ 70.7, 90.2, FROSTWALL },	-- Pepe Location (Horde)
			},
			["timeline"] = { ADDED_6_2_2 },
		}),
		ach(284, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- A Mask For All Occasions
			crit(2260, {	-- Blood Elf Female Mask
				["provider"] = { "i", 34000 },	-- Blood Elf Female Mask
			}),
			crit(2270, {	-- Blood Elf Male Mask
				["provider"] = { "i", 34002 },	-- Blood Elf Male Mask
			}),
			crit(2261, {	-- Draenei Female Mask
				["provider"] = { "i", 34001 },	-- Draenei Female Mask
			}),
			crit(2271, {	-- Draenei Male Mask
				["provider"] = { "i", 34003 },	-- Draenei Male Mask
			}),
			crit(2262, {	-- Dwarf Female Mask
				["provider"] = { "i", 20562 },	-- Dwarf Female Mask
			}),
			crit(2272, {	-- Dwarf Male Mask
				["provider"] = { "i", 20561 },	-- Dwarf Male Mask
			}),
			crit(2263, {	-- Gnome Female Mask
				["provider"] = { "i", 20392 },	-- Gnome Female Mask
			}),
			crit(2273, {	-- Gnome Male Mask
				["provider"] = { "i", 20391 },	-- Gnome Male Mask
			}),
			crit(17590, {	-- Goblin Female Mask
				["provider"] = { "i", 49212 },	-- Goblin Female Mask
				["timeline"] = { ADDED_4_0_1 },
			}),
			crit(17591, {	-- Goblin Male Mask
				["provider"] = { "i", 49210 },	-- Goblin Male Mask
				["timeline"] = { ADDED_4_0_1 },
			}),
			crit(2264, {	-- Human Female Mask
				["provider"] = { "i", 20565 },	-- Human Female Mask
			}),
			crit(2274, {	-- Human Male Mask
				["provider"] = { "i", 20566 },	-- Human Male Mask
			}),
			crit(2265, {	-- Night Elf Female Mask
				["provider"] = { "i", 20563 },	-- Night Elf Female Mask
			}),
			crit(2275, {	-- Night Elf Male Mask
				["provider"] = { "i", 20564 },	-- Night Elf Male Mask
			}),
			crit(2266, {	-- Orc Female Mask
				["provider"] = { "i", 20569 },	-- Orc Female Mask
			}),
			crit(2276, {	-- Orc Male Mask
				["provider"] = { "i", 20570 },	-- Orc Male Mask
			}),
			crit(2267, {	-- Tauren Female Mask
				["provider"] = { "i", 20571 },	-- Tauren Female Mask
			}),
			crit(2277, {	-- Tauren Male Mask
				["provider"] = { "i", 20572 },	-- Tauren Male Mask
			}),
			crit(2268, {	-- Troll Female Mask
				["provider"] = { "i", 20567 },	-- Troll Female Mask
			}),
			crit(2278, {	-- Troll Male Mask
				["provider"] = { "i", 20568 },	-- Troll Male Mask
			}),
			crit(2269, {	-- Undead Female Mask
				["provider"] = { "i", 20574 },	-- Undead Female Mask
			}),
			crit(2279, {	-- Undead Male Mask
				["provider"] = { "i", 20573 },	-- Undead Male Mask
			}),
			crit(17592, {	-- Worgen Female Mask
				["provider"] = { "i", 49215 },	-- Worgen Female Mask
				["timeline"] = { ADDED_4_0_1 },
			}),
			crit(17593, {	-- Worgen Male Mask
				["provider"] = { "i", 49216 },	-- Worgen Male Mask
				["timeline"] = { ADDED_4_0_1 },
			}),
		})),
		ach(291, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- Check Your Head
			crit(5774, {	-- Blood Elf
				["provider"] = { "i", 34068 }	-- Weighted Jack-o'-Lantern
			}),
			crit(5775, {	-- Draenei
				["provider"] = { "i", 34068 }	-- Weighted Jack-o'-Lantern
			}),
			crit(5776, {	-- Dwarf
				["provider"] = { "i", 34068 }	-- Weighted Jack-o'-Lantern
			}),
			crit(5772, {	-- Gnome
				["provider"] = { "i", 34068 }	-- Weighted Jack-o'-Lantern
			}),
			crit(17855, {	-- Goblin
				["timeline"] = { ADDED_4_0_1 },
				["provider"] = { "i", 34068 }	-- Weighted Jack-o'-Lantern
			}),
			crit(5777, {	-- Human
				["provider"] = { "i", 34068 }	-- Weighted Jack-o'-Lantern
			}),
			crit(5778, {	-- Night Elf
				["provider"] = { "i", 34068 }	-- Weighted Jack-o'-Lantern
			}),
			crit(5779, {	-- Orc
				["provider"] = { "i", 34068 }	-- Weighted Jack-o'-Lantern
			}),
			crit(5780, {	-- Tauren
				["provider"] = { "i", 34068 }	-- Weighted Jack-o'-Lantern
			}),
			crit(5781, {	-- Troll
				["provider"] = { "i", 34068 }	-- Weighted Jack-o'-Lantern
			}),
			crit(5782, {	-- Undead
				["provider"] = { "i", 34068 }	-- Weighted Jack-o'-Lantern
			}),
			crit(17854, {	-- Worgen
				["timeline"] = { ADDED_4_0_1 },
				["provider"] = { "i", 34068 }	-- Weighted Jack-o'-Lantern
			}),
		})),
		ach(18959, {	-- Don't Lose Your Head, Man
			["timeline"] = { ADDED_10_1_7 },
		}),
		ach(1261, {	-- G.N.E.R.D. Rage
			["provider"] = { "i", 37583 },	-- G.N.E.R.D.S.
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(288, {	-- Out With It
			["description"] = "Eat 2-10 Tricky Treats quickly to trigger the debuff. Results may vary.",
			["cost"] = { { "i", 33226, 3 } },	-- Tricky Treat
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(1040, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- Rotten Hallow (A)
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				-- #if AFTER 4.0.1
				crit(17607, {	-- A Time to Gain
					["_quests"] = { 29075 },	-- A Time to Gain
				}),
				crit(17606, {	-- A Time to Lose
					["_quests"] = { 29371 },	-- A Time to Lose
				}),
				crit(3217, {	-- Clean Up In Stormwind
					["_quests"] = { 29144 },	-- Clean Up In Stormwind
				}),
				crit(3216, {	-- Stink Bombs Away!
					["_quests"] = { 29054 },	-- Stink Bombs Away!
				}),
				-- #else
				crit(3216, {	-- Crashing the Wickerman Festival
					["_quests"] = { 1658 },	-- Crashing the Wickerman Festival
				}),
				crit(3217, {	-- The Power of Pine
					["_quests"] = { 8373 },	-- The Power of Pine
				}),
				-- #endif
			},
		})),
		ach(1041, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- Rotten Hallow (H)
			["races"] = HORDE_ONLY,
			["groups"] = {
				-- #if AFTER 4.0.1
				crit(17608, {	-- A Time to Build Up
					["_quests"] = { 29376 },	-- A Time to Build Up
				}),
				crit(17609, {	-- A Time to Break Down
					["_quests"] = { 29377 },	-- A Time to Break Down
				}),
				crit(3219, {	-- Clean Up in Undercity
					["_quests"] = { 29375 },	-- Clean Up in Undercity
				}),
				crit(3218, {	-- Stink Bombs Away!
					["_quests"] = { 29374 },	-- Stink Bombs Away!
				}),
				-- #else
				crit(3218, {	-- Rotten Eggs and Ruined Kegs
					["_quests"] = { 8409 },	-- Rotten Eggs and Ruined Kegs
				}),
				crit(3219, {	-- Stinking Up Southshore
					["_quests"] = { 1657 },	-- Stinking Up Southshore
				}),
				-- #endif
			},
		})),
		ach(292, {	-- Sinister Calling
			-- #if BEFORE WRATH
			["providers"] = {
				{ "i", 33154 },	-- Sinister Squashling
				{ "i", 33292 },	-- Hallowed Helm
			},
			["timeline"] = { ADDED_2_0_1 },
			-- #else
			crit(5783, {	-- Sinister Squashling
				["provider"] = { "i", 33154 },	-- Sinister Squashling
			}),
			crit(12908, {	-- Hallowed Helm
				["provider"] = { "i", 33292 },	-- Hallowed Helm
			}),
			-- #endif
		}),
		ach(981, {	-- That Sparkling Smile
			["provider"] = { "i", 37604 },	-- Tooth Pick
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(979, {	-- The Mask Task
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(283, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- The Masquerade
			-- #if AFTER TWW
			["description"] = "You can only get transformed by party members of your faction.",
			-- #endif
			["groups"] = {
				crit(3209, {	-- Transformed by Hallowed Wand - Bat
					["provider"] = { "i", 20410 },	-- Hallowed Wand - Bat
				}),
				crit(3210, {	-- Transformed by Hallowed Wand - Ghost
					["provider"] = { "i", 20409 },	-- Hallowed Wand - Ghost
				}),
				crit(3211, {	-- Transformed by Hallowed Wand - Leper Gnome
					["provider"] = { "i", 20399 },	-- Hallowed Wand - Leper Gnome
				}),
				crit(3212, {	-- Transformed by Hallowed Wand - Ninja
					["provider"] = { "i", 20398 },	-- Hallowed Wand - Ninja
				}),
				crit(3213, {	-- Transformed by Hallowed Wand - Pirate
					["provider"] = { "i", 20397 },	-- Hallowed Wand - Pirate
				}),
				crit(3214, {	-- Transformed by Hallowed Wand - Skeleton
					["provider"] = { "i", 20411 },	-- Hallowed Wand - Skeleton
				}),
				crit(3215, {	-- Transformed by Hallowed Wand - Wisp
					["provider"] = { "i", 20414 },	-- Hallowed Wand - Wisp
				}),
			},
		})),
		ach(289, {	-- The Savior of Hallow's End
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { ELWYNN_FOREST, AZUREMYST_ISLE, TIRISFAL_GLADES, EVERSONG_WOODS, DUN_MOROGH, DUROTAR },
		}),
		ach(972, {	-- Trick or Treat!
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(971, {	-- Tricks and Treats of Azeroth (H) / Tricks and Treats of Azeroth [MOP+]
			-- Meta Achievement should symlink the contained Achievements from Source
			["sym"] = {{"meta_achievement",
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
			["timeline"] = { ADDED_3_0_2 },
			-- #if BEFORE MOP
			["races"] = HORDE_ONLY,
			-- #endif
		}),
		ach(970, {	-- Tricks and Treats of Azeroth (A)
			-- Meta Achievement should symlink the contained Achievements from Source
			["sym"] = {{"meta_achievement",
				966,	-- Tricks and Treats of Eastern Kingdoms (A)
				963,	-- Tricks and Treats of Kalimdor (A)
				969,	-- Tricks and Treats of Outlands (A)
			}},
			["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
			["races"] = ALLIANCE_ONLY,
		}),
		ach(5837, {	-- Tricks and Treats of Cataclysm (A)
			["timeline"] = { ADDED_4_2_0 },
			["races"] = ALLIANCE_ONLY,
		}),
		ach(5838, {	-- Tricks and Treats of Cataclysm (H)
			["timeline"] = { ADDED_4_2_0 },
			["races"] = HORDE_ONLY,
		}),
		ach(966, {	-- Tricks and Treats of Eastern Kingdoms (A)
			["timeline"] = { ADDED_3_0_2 },
			["races"] = ALLIANCE_ONLY,
		}),
		ach(967, {	-- Tricks and Treats of Eastern Kingdoms (H)
			["timeline"] = { ADDED_3_0_2 },
			["races"] = HORDE_ONLY,
		}),
		ach(963, {	-- Tricks and Treats of Kalimdor (A)
			["timeline"] = { ADDED_3_0_2 },
			["races"] = ALLIANCE_ONLY,
		}),
		ach(965, {	-- Tricks and Treats of Kalimdor (H)
			["timeline"] = { ADDED_3_0_2 },
			["races"] = HORDE_ONLY,
		}),
		ach(5836, {	-- Tricks and Treats of Northrend (A)
			["timeline"] = { ADDED_4_2_0 },
			["races"] = ALLIANCE_ONLY,
		}),
		ach(5835, {	-- Tricks and Treats of Northrend (H)
			["timeline"] = { ADDED_4_2_0 },
			["races"] = HORDE_ONLY,
		}),
		ach(969, {	-- Tricks and Treats of Outlands (A)
			["timeline"] = { ADDED_3_0_2 },
			["races"] = ALLIANCE_ONLY,
		}),
		ach(968, {	-- Tricks and Treats of Outlands (H)
			["timeline"] = { ADDED_3_0_2 },
			["races"] = HORDE_ONLY,
		}),
		ach(7601, {	-- Tricks and Treats of Pandaria (A)
			["timeline"] = { ADDED_5_0_4 },
			["races"] = ALLIANCE_ONLY,
		}),
		ach(7602, {	-- Tricks and Treats of Pandaria (H)
			["timeline"] = { ADDED_5_0_4 },
			["races"] = HORDE_ONLY,
		}),
		ach(18360, {	-- Tricks and Treats of the Dragon Isles (automated)
			["timeline"] = { ADDED_10_1_5 },
		}),
		ach(40862, {	-- Tricks and Treats of Khaz Algar (automated)
			["timeline"] = { ADDED_11_0_2 },
		}),
	}),
	-- #endif
	n(23682, {	-- Headless Horseman
		-- #if AFTER WRATH
		-- #if BEFORE 10.1.7
		["description"] = "You can loot the Loot-Stuffed Filled Pumpkin once a day per character by queueing for the encounter in the Dungeon Finder.",
		-- #endif
		-- #else
		["questID"] = 11392,	-- Call the Headless Horseman
		-- #endif
		["timeline"] = { ADDED_2_0_1 },
		["maps"] = {
			SCARLET_MONASTERY,
			436,	-- Scarlet Monastery, Crusader's Chapel
		},
		-- #if AFTER 4.0.1
		["sym"] = {
			-- Masks & Wands & Candy were potentially added as loot directly to him?
			{ "selectparent" },	-- Select the holiday root.
			{ "pop" },	-- Get the Rewards.
			{ "where", "headerID", REWARDS },	-- Select the "Rewards" header.
			{ "pop" },	-- Get the Rewards.
			{ "exclude", "itemID", 69187, 69188, 69189, 69190, 69192, 69193, 69194, 69195 },	-- Exclude Murloc, Naga, Ogre, Vrykul Masks
			{ "exclude", "itemID", 20392 },	-- Exclude Gnome Female Mask?
			{ "exclude", "itemID", 20413 },	-- Exclude Hallowed Wand - Random
			{"select","itemID",
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
		-- #if AFTER 9.0.1
		["lvl"] = 10,
		-- #elseif AFTER 7.3.2
		["lvl"] = 23,
		-- #elseif AFTER 7.0.1
		["lvl"] = 101,
		-- #elseif AFTER 6.0.1
		["lvl"] = 99,
		-- #elseif AFTER 5.0.1
		["lvl"] = 89,
		-- #elseif AFTER 4.2.2
		["lvl"] = 84,
		-- #elseif AFTER 4.0.1
		["lvl"] = 78,
		-- #else
		["lvl"] = 25,	-- Zone in level requirement for SM.
		-- #endif
		["groups"] = {
			ach(18962, {	-- A Cleansing Fire
				["timeline"] = { ADDED_10_1_7 },
			}),
			ach(255, {	-- Bring Me The Head of... Oh Wait
				["timeline"] = { ADDED_3_0_2, REMOVED_10_1_7 },
			}),
			ach(18960, {	-- Kickin' With the Wick
				["timeline"] = { ADDED_10_1_7 },
			}),
			i(117392, {	-- Loot-Filled Pumpkin (Epic)
				["timeline"] = { ADDED_6_0_2, REMOVED_10_1_7 },
				-- #if BEFORE 10.1.7
				["sym"] = {
					{ "selectparent", 2 },	-- Select the holiday root.
					{ "pop" },	-- Get the Rewards.
					{ "where", "headerID", REWARDS },	-- Select the "Rewards" header.
					{ "pop" },	-- Get the Rewards.
					{ "contains", "itemID", 33226, unpack(MASK_IDS) },	-- Tricky Treat & All the Masks
					{ "exclude", "itemID", 69187, 69188, 69189, 69190, 69192, 69193, 69194, 69195 },	-- Exclude Murloc, Naga, Ogre, Vrykul Masks
				},
				-- #endif
				-- Minimum level this bag drops (not 100% sure)
				-- #if AFTER 9.0.1
				["lvl"] = 50,
				-- #elseif AFTER 8.0.1
				["lvl"] = 110,
				-- #elseif AFTER 7.2.5
				["lvl"] = 98,
				-- #endif
				["groups"] = {
					-- #if BEFORE 10.1.7
					ach(980, {	-- The Horseman's Reins
						["provider"] = { "i", 37012 },	-- The Horseman's Reins
						["timeline"] = { ADDED_2_0_1 },
						["filterID"] = MOUNTS,
					}),
					i(33292, {	-- Hallowed Helm
						["timeline"] = { ADDED_2_2_2 },
					}),
					i(37012, {	-- Headless Horseman's Mount (MOUNT!)
						["timeline"] = { ADDED_2_0_1 },
					}),
					i(37011, {	-- Magic Broom (MOUNT!)
						["timeline"] = { ADDED_2_4_3 },
						["collectible"] = false,
					}),
					i(33154, {	-- Sinister Squashling (PET!)
						["timeline"] = { ADDED_2_2_2 },
					}),
					i(117356, {	-- The Horseman's Sinister Slicer
						["timeline"] = { ADDED_6_0_2 },
					}),
					i(117355, {	-- The Horseman's Horrific Hood
						["timeline"] = { ADDED_6_0_2 },
					}),
					-- #endif
				},
			}),
			i(209024, {	-- Loot-Filled Pumpkin (Epic Bag after 10.1.7 Rework)
				["timeline"] = { ADDED_10_1_7 },
				["sym"] = {
					{ "selectparent", 2 },	-- Select the holiday root.
					{ "pop" },	-- Get the Rewards.
					{ "where", "headerID", REWARDS },	-- Select the "Rewards" header.
					{ "pop" },	-- Get the Rewards.
					{ "contains", "itemID", 33226, unpack(MASK_IDS) },	-- Tricky Treat & All the Masks
					{ "exclude", "itemID", 69187, 69188, 69189, 69190, 69192, 69193, 69194, 69195 },	-- Exclude Murloc, Naga, Ogre, Vrykul Masks
				},
				-- #if BEFORE 11.2.5
				["description"] = "Your first attempt of the day has an increased chance at the mount, pet, and manuscript. Enabling the curses increases the chances for the mount, at least. Subsequent attempts scan still drop these items, but at a significantly lower rate (as far as we know).",	-- Manual override for src\Settings\Pages\Interface - Information.lua
				-- #endif
				["groups"] = {
					ach(980, {	-- The Horseman's Reins
						["provider"] = { "i", 37012 },	-- The Horseman's Reins
						["timeline"] = { ADDED_2_0_1 },
						["filterID"] = MOUNTS,
					}),
					ach(17547, {	-- The Lick King
						["timeline"] = { ADDED_10_1_7 },
						["provider"] = { "i", 211271 },	-- Arfus (PET)
					}),
					i(211271, {	-- Arfus (PET)
						["timeline"] = { ADDED_10_1_7 },
						-- #if AFTER 11.2.5
						["description"] = "While the first attempt each day has a greatly increased drop chance, this item can be farmed using multiple characters.",
						-- #endif
					}),
					i(33292, {	-- Hallowed Helm
						["timeline"] = { ADDED_2_2_2 },
					}),
					i(37012, {	-- Headless Horseman's Mount (MOUNT!)
						["timeline"] = { ADDED_2_0_1 },
						-- #if AFTER 10.1.7
						["description"] = "Enabling the curses increases the chances for the mount. Subsequent attempts scan still drop the mount, according to Blizzard, but at a significantly lower rate (as far as we know).",
						-- #endif
					}),
					i(37011, {	-- Magic Broom (MOUNT!)
						["timeline"] = { ADDED_2_4_3 },
						["collectible"] = false,
					}),
					i(226461, {	-- Patched Harvest Golem's Belt
						["timeline"] = { ADDED_11_0_5, REMOVED_11_2_5 },
					}),
					i(226458, {	-- Patched Harvest Golem's Boots
						["timeline"] = { ADDED_11_0_5, REMOVED_11_2_5 },
					}),
					i(226457, {	-- Patched Harvest Golem's Chest
						["timeline"] = { ADDED_11_0_5, REMOVED_11_2_5 },
					}),
					i(226456, {	-- Patched Harvest Golem's Gloves
						["timeline"] = { ADDED_11_0_5, REMOVED_11_2_5 },
					}),
					i(226690, {	-- Patched Harvest Golem's Head
						["timeline"] = { ADDED_11_0_5, REMOVED_11_2_5 },
					}),
					i(226455, {	-- Patched Harvest Golem's Pants
						["timeline"] = { ADDED_11_0_5, REMOVED_11_2_5 },
					}),
					i(226454, {	-- Patched Harvest Golem's Pauldrons
						["timeline"] = { ADDED_11_0_5, REMOVED_11_2_5 },
					}),
					i(33154, {	-- Sinister Squashling (PET!)
						["timeline"] = { ADDED_2_2_2 },
					}),
					i(247721, {	-- The Headless Horseman's Ghoulish Charger (MOUNT!)
						["timeline"] = { ADDED_11_2_5 },
						-- #if AFTER 11.2.5
						["description"] = "While the first attempt each day has a greatly increased drop chance, this item can be farmed using multiple characters.",
						-- #endif
					}),
					i(247966, {	-- The Horseman's Ghoulish Breastplate
						["timeline"] = { ADDED_11_2_5 },
						-- #if BEFORE 12.0.0
						["description"] = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
						-- #endif
					}),
					i(247967, {	-- The Horseman's Ghoulish Cinch
						["timeline"] = { ADDED_11_2_5 },
						-- #if BEFORE 12.0.0
						["description"] = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
						-- #endif
					}),
					i(247972, {	-- The Horseman's Ghoulish Cloak
						["timeline"] = { ADDED_11_2_5 },
						-- #if BEFORE 12.0.0
						["description"] = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
						-- #endif
					}),
					i(250708, {	-- The Horseman's Ghoulish Cowl
						["timeline"] = { ADDED_11_2_5 },
						-- #if BEFORE 12.0.0
						["description"] = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
						-- #endif
					}),
					i(247968, {	-- The Horseman's Ghoulish Greaves
						["timeline"] = { ADDED_11_2_5 },
						-- #if BEFORE 12.0.0
						["description"] = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
						-- #endif
					}),
					i(247971, {	-- The Horseman's Ghoulish Grips
						["timeline"] = { ADDED_11_2_5 },
						-- #if BEFORE 12.0.0
						["description"] = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
						-- #endif
					}),
					i(247964, {	-- The Horseman's Ghoulish Helm
						["timeline"] = { ADDED_11_2_5 },
						-- #if BEFORE 12.0.0
						["description"] = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
						-- #endif
					}),
					i(247965, {	-- The Horseman's Ghoulish Mantle
						["timeline"] = { ADDED_11_2_5 },
						-- #if BEFORE 12.0.0
						["description"] = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
						-- #endif
					}),
					i(247969, {	-- The Horseman's Ghoulish Treads
						["timeline"] = { ADDED_11_2_5 },
						-- #if BEFORE 12.0.0
						["description"] = "The first attempt each day guarantees 1 'Ghoulish' Set Item per character.",
						-- #endif
					}),
					i(117356, {	-- The Horseman's Sinister Slicer
						["timeline"] = { ADDED_6_0_2 },
					}),
					i(117355, {	-- The Horseman's Horrific Hood
						["timeline"] = { ADDED_6_0_2 },
					}),
					i(208485, {	-- The Scarlet Key
						["timeline"] = { ADDED_10_1_7 },
					}),
					i(208680, {	-- Windborne Velocidrake: Hallow's End Armor (MM!)
						["timeline"] = { ADDED_10_1_7 },
						["description"] = "This item is only eligible to drop for the first attempt per day per Warband, but every eligible failed attempt increases the drop chance.",
					}),
				},
			}),
			i(149574, {	-- Loot-Stuffed Pumpkin (Blue Bag after 7.2.5 Rework)
				-- Bag introduced in 7.2.5 [Legion]
				-- Only i600 has ever dropped from this bag, not the other iLvLs
				["timeline"] = { ADDED_7_0_3 },
				-- #if BEFORE 10.1.7
				["sym"] = {
					{ "selectparent", 2 },	-- Select the holiday root.
					{ "pop" },	-- Get the Rewards.
					{ "where", "headerID", REWARDS },	-- Select the "Rewards" header.
					{ "pop" },	-- Get the Rewards.
					{ "contains", "itemID", 33226, unpack(MASK_IDS) },	-- Tricky Treat & All the Masks
					{ "exclude", "itemID", 69187, 69188, 69189, 69190, 69192, 69193, 69194, 69195 },	-- Exclude Murloc, Naga, Ogre, Vrykul Masks
				},
				-- #endif
				["groups"] = {
					-- #if BEFORE 10.1.7
					i(117356, {	-- The Horseman's Sinister Slicer
						["timeline"] = { ADDED_6_0_2 },
					}),
					i(117355, {	-- The Horseman's Horrific Hood
						["timeline"] = { ADDED_6_0_2 },
					}),
					i(33292, {	-- Hallowed Helm
						["timeline"] = { ADDED_2_2_2 },
					}),
					i(37011, {	-- Magic Broom (MOUNT!)
						["timeline"] = { ADDED_2_4_3 },
						["collectible"] = false,
					}),
					-- #endif
				},
			}),
			i(209026, {	-- Loot-Stuffed Pumpkin (Blue Bag after 10.1.7 Rework)
				["timeline"] = { ADDED_10_1_7 },
				["sym"] = {
					{ "selectparent", 2 },	-- Select the holiday root.
					{ "pop" },	-- Get the Rewards.
					{ "where", "headerID", REWARDS },	-- Select the "Rewards" header.
					{ "pop" },	-- Get the Rewards.
					{ "contains", "itemID", 33226, unpack(MASK_IDS) },	-- Tricky Treat & All the Masks
					{ "exclude", "itemID", 69187, 69188, 69189, 69190, 69192, 69193, 69194, 69195 },	-- Exclude Murloc, Naga, Ogre, Vrykul Masks
				},
				["groups"] = {
					i(117356, {	-- The Horseman's Sinister Slicer
						["timeline"] = { ADDED_6_0_2 },
					}),
					i(117355, {	-- The Horseman's Horrific Hood
						["timeline"] = { ADDED_6_0_2 },
					}),
					i(33292, {	-- Hallowed Helm
						["timeline"] = { ADDED_2_2_2 },
					}),
					i(37011, {	-- Magic Broom (MOUNT!)
						["timeline"] = { ADDED_2_4_3 },
						["collectible"] = false,
					}),
				},
			}),
			i(54516, {	-- Loot-Stuffed Pumpkin
				-- This bag was removed at the end of MoP and in WoD epic bag introduced
				["timeline"] = { ADDED_3_3_0, REMOVED_6_0_2 },
				-- #if AFTER 4.2.0
				["sym"] = {
					{ "selectparent", 2 },	-- Select the holiday root.
					{ "pop" },	-- Get the Rewards.
					{ "where", "headerID", REWARDS },	-- Select the "Rewards" header.
					{ "pop" },	-- Get the Rewards.
					{ "contains", "itemID", 33226, unpack(MASK_IDS) },	-- Tricky Treat & All the Masks
					{ "exclude", "itemID", 69187, 69188, 69189, 69190, 69192, 69193, 69194, 69195 },	-- Exclude Murloc, Naga, Ogre, Vrykul Masks
				},
				-- #endif
				["groups"] = {
					-- #if AFTER 3.3.0
					-- #if BEFORE 4.0.1
					i(49426),	-- Emblem of Frost
					-- #endif
					-- #endif
					-- #if BEFORE 6.0.1
					ach(980, {	-- The Horseman's Reins
						["provider"] = { "i", 37012 },	-- The Horseman's Reins
						["timeline"] = { ADDED_2_0_1 },
						["filterID"] = MOUNTS,
					}),
					i(37012, {	-- Headless Horseman's Mount (MOUNT!)
						["timeline"] = { ADDED_2_0_1 },
					}),
					-- #endif
					-- Mists of Pandaria
					-- #if ANYCLASSIC
					i(263014, {	-- The Horseman's Horrific Hood
						["timeline"] = { ADDED_5_5_1, REMOVED_6_0_2 },
					}),
					i(263018, {	-- The Horseman's Sinister Slicer
						["timeline"] = { ADDED_5_5_1, REMOVED_6_0_2 },
					}),
					i(87569, {	-- The Horseman's Horrific Hood
						["timeline"] = { CREATED_5_0_4 },
					}),
					i(87570, {	-- The Horseman's Sinister Slicer
						["timeline"] = { CREATED_5_0_4 },
					}),
					-- #else
					i(87569, {	-- The Horseman's Horrific Hood
						["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					}),
					i(87570, {	-- The Horseman's Sinister Slicer
						["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					}),
					-- #endif
					-- Cataclysm
					i(71326, {	-- The Horseman's Horrific Helm
						["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
					}),
					i(71325, {	-- The Horseman's Sinister Saber
						["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
					}),
					-- Wrath of the Lich King Classic
					-- #if ANYCLASSIC
					i(211851, {	-- The Horseman's Baleful Blade
						["timeline"] = { ADDED_3_3_0, REMOVED_4_0_1 },
					}),
					i(211850, {	-- The Horseman's Horrific Helm
						["timeline"] = { ADDED_3_3_0, REMOVED_4_0_1 },
					}),
					i(211817, {	-- Ring of Ghoulish Glee
						["timeline"] = { ADDED_3_3_0, REMOVED_4_0_1 },
					}),
					i(211844, {	-- The Horseman's Seal
						["timeline"] = { ADDED_3_3_0, REMOVED_4_0_1 },
					}),
					i(211847, {	-- Wicked Witch's Band
						["timeline"] = { ADDED_3_3_0, REMOVED_4_0_1 },
					}),
					-- #endif
					i(33154, {	-- Sinister Squashling (PET!)
						["timeline"] = { ADDED_2_2_2 },
					}),
					i(33292, {	-- Hallowed Helm
						["timeline"] = { ADDED_2_2_2 },
					}),
					i(33176, {	-- Flying Broom (MOUNT!)
						["timeline"] = { ADDED_2_2_2, DELETED_4_2_2 },
					}),
					i(37011, {	-- Magic Broom (MOUNT!)
						["timeline"] = { ADDED_2_4_3 },
						["collectible"] = false,
					}),
				},
			}),

			-- #if BEFORE WRATH
			ach(980, {	-- The Horseman's Reins
				["provider"] = { "i", 37012 },	-- The Horseman's Reins
				["timeline"] = { ADDED_2_0_1 },
				["filterID"] = MOUNTS,
			}),
			i(37012, {	-- Headless Horseman's Mount (MOUNT!)
				["timeline"] = { ADDED_2_0_1 },
			}),
			-- #endif
			-- Legion+
			i(143901, {	-- Band of the Petrified Pumpkin
				["timeline"] = { ADDED_7_0_3 },
			}),
			i(143904, {	-- Seal of Ghoulish Glee
				["timeline"] = { ADDED_7_0_3 },
			}),
			i(143903, {	-- The Horseman's Ring
				["timeline"] = { ADDED_7_0_3 },
			}),
			i(143902, {	-- Wicked Witch's Signet
				["timeline"] = { ADDED_7_0_3 },
			}),
			-- Warlords of Draenor
			i(117363, {	-- Band of the Petrified Pumpkin
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			i(117364, {	-- Seal of Ghoulish Glee
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			i(117365, {	-- The Horseman's Ring
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			i(117362, {	-- Wicked Witch's Signet
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			-- Mists of Pandaria
			-- #if ANYCLASSIC
			i(263013, {	-- Band of the Petrified Pumpkin
				["timeline"] = { ADDED_5_5_1, REMOVED_6_0_2 },
			}),
			i(263010, {	-- Seal of Ghoulish Glee
				["timeline"] = { ADDED_5_5_1, REMOVED_6_0_2 },
			}),
			i(263011, {	-- The Horseman's Ring
				["timeline"] = { ADDED_5_5_1, REMOVED_6_0_2 },
			}),
			i(263012, {	-- Wicked Witch's Signet
				["timeline"] = { ADDED_5_5_1, REMOVED_6_0_2 },
			}),
			i(88167, {	-- Band of the Petrified Pumpkin
				["timeline"] = { CREATED_5_0_4 },
			}),
			i(88168, {	-- Seal of Ghoulish Glee
				["timeline"] = { CREATED_5_0_4 },
			}),
			i(88169, {	-- The Horseman's Ring
				["timeline"] = { CREATED_5_0_4 },
			}),
			i(88166, {	-- Wicked Witch's Signet
				["timeline"] = { CREATED_5_0_4 },
			}),
			-- #else
			i(88167, {	-- Band of the Petrified Pumpkin
				["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			}),
			i(88168, {	-- Seal of Ghoulish Glee
				["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			}),
			i(88169, {	-- The Horseman's Ring
				["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			}),
			i(88166, {	-- Wicked Witch's Signet
				["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			}),
			-- #endif
			-- Cataclysm
			i(71327, {	-- Band of Ghoulish Glee
				["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
			}),
			i(71330, {	-- Seal of the Petrified Pumpkin
				["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
			}),
			i(71328, {	-- The Horseman's Signet
				["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
			}),
			i(71329, {	-- Wicked Witch's Ring
				["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
			}),
			-- Wrath of the Lich King
			i(49128, {	-- The Horseman's Baleful Blade
				["timeline"] = { ADDED_3_0_2, REMOVED_3_3_0 },
			}),
			i(49126, {	-- The Horseman's Horrific Helm
				["timeline"] = { ADDED_3_0_2, REMOVED_3_3_0 },
			}),
			i(49121, {	-- Ring of Ghoulish Glee
				["timeline"] = { ADDED_3_0_2, REMOVED_3_3_0 },
			}),
			i(49123, {	-- The Horseman's Signet
				["timeline"] = { ADDED_3_0_2, REMOVED_3_3_0 },
			}),
			i(49124, {	-- Wicked Witch's Band
				["timeline"] = { ADDED_3_0_2, REMOVED_3_3_0 },
			}),
			-- Burning Crusade
			i(38175, {	-- The Horseman's Blade
				["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
			}),
			i(33808, {	-- The Horseman's Helm
				["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
			}),
			i(34075, {	-- Ring of Ghoulish Delight
				["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
			}),
			i(34073, {	-- The Horseman's Signet Ring
				["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
			}),
			i(34074, {	-- Witches Band
				["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
			}),
			-- #if BEFORE WRATH
			i(33154, {	-- Sinister Squashling (PET!)
				["timeline"] = { ADDED_2_2_2 },
			}),
			i(33292, {	-- Hallowed Helm
				["timeline"] = { ADDED_2_2_2 },
			}),
			i(37011, {	-- Magic Broom (MOUNT!)
				["timeline"] = { ADDED_2_4_3 },
				["collectible"] = false,
			}),
			-- #endif
			-- #if NOT ANYCLASSIC
			-- #if BEFORE LEGION
			i(33176, {	-- Flying Broom (MOUNT!)
				["timeline"] = { ADDED_2_2_2, DELETED_4_2_2 },
			}),
			i(33182, {	-- Swift Flying Broom (MOUNT!)
				["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
			}),
			i(33184, {	-- Swift Magic Broom (MOUNT!)
				["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
			}),
			i(33183, {	-- Old Magic Broom (MOUNT!)
				["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
			}),
			-- #endif
			-- #endif
			i(33226, {	-- Tricky Treat
				["timeline"] = { ADDED_2_4_3 },
			}),
			i(34068, {	-- Weighted Jack-o'-Lantern
				["timeline"] = { ADDED_2_2_2 },
			}),
		},
	}),
	petbattle(filter(BATTLE_PETS, {
		["description"] = "|cFFFFD700Ghastly Rats|r, |cFFFFD700Ghost Maggots|r, and |cFFFFD700Spectral Spinners|r are only present in your Garrison once the |cFFFFD700Creepy Crawlers|r decoration is applied. This can be bought for |cFFFFD7005 Spooky Supplies|r from |cFFFFD700Izzy Hollyfizzle|r in the Garrison.",
		["timeline"] = { ADDED_6_2_2 },
		["maps"] = {
			FROSTWALL,
			LUNARFALL,
		},
		["cost"] = {
			{ "i", 128664, 1 },	-- Creepy Crawlers
		},
		["groups"] = {
			pet(1741),	-- Ghastly Rat (PET!)
			pet(1740),	-- Ghost Maggot (PET!)
			pet(1730),	-- Spectral Spinner (PET!)
		},
	})),
	header(HEADERS.Quest, 12406, {	-- Candy Bucket Quests
		n(FACTION_HEADER_NEUTRAL, {
			["timeline"] = { ADDED_2_0_1 },
			["groups"] = {
				candybucket(28955, {	-- Candy Bucket — Badlands, Fuselight, Neutral
					["provider"] = { "o", 208137 },	-- Candy Bucket, Badlands
					["coord"] = { 65.9, 35.8, BADLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12406, {	-- Candy Bucket — Blade's Edge Mountains, Evergrove, Neutral
					["provider"] = { "o", 190112 },	-- Candy Bucket, Blade's Edge Mountains
					["coord"] = { 62.9, 38.3, BLADES_EDGE_MOUNTAINS },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(13460, {	-- Candy Bucket — Borean Tundra, Unu'pe, Neutral
					["provider"] = { "o", 194068 },	-- Candy Bucket, Borean Tundra
					["coord"] = { 78.4, 49.2, BOREAN_TUNDRA },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(43055, {	-- Candy Bucket — Dalaran : Broken Shores, Legerdemain Lounge, Neutral
					["provider"] = { "o", 251670 },	-- Candy Bucket, Dalaran
					["coord"] = { 48.1, 41.3, LEGION_DALARAN },
					["timeline"] = { ADDED_7_0_3 },
				}),
				candybucket(13463, {	-- Candy Bucket — Dalaran : Northrend, Legerdemain Lounge, Neutral
					["provider"] = { "o", 194071 },	-- Candy Bucket, Dalaran
					["coord"] = { 48.3, 40.8, NORTHREND_DALARAN },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(13472, {	-- Candy Bucket — Dalaran : Northrend, Underbelly, Neutral
					["provider"] = { "o", 194072 },	-- Candy Bucket, Dalaran
					["coord"] = { 38.0, 59.9, NORTHREND_THE_UNDERBELLY },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(28993, {	-- Candy Bucket — Desolace, Karnum's Glade, Neutral
					["provider"] = { "o", 208157 },	-- Candy Bucket, Desolace
					["coord"] = { 56.8, 50.0, DESOLACE },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(39657, {	-- Candy Bucket — Draenor Garrison (Frostwall or Lunarfall), Neutral
					-- TODO: While it might seem weird, having this have coordinates at least will plot it on the map so folks don't forget.
					-- Perhaps investigate a programatic solution? The garrison has different map IDs at different stages of creation.
					["provider"] = { "o", 243912 },	-- Candy Bucket, Draenor Garrison
					["timeline"] = { ADDED_6_0_2 },
					["maps"] = {
						FROSTWALL,
						LUNARFALL,
					},
				}),
				candybucket(13459, {	-- Candy Bucket — Dragonblight, Moa'ki Harbor, Neutral
					["provider"] = { "o", 194067 },	-- Candy Bucket, Dragonblight
					["coord"] = { 48.2, 74.7, DRAGONBLIGHT },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(13456, {	-- Candy Bucket — Dragonblight, Wyrmrest Temple, Neutral
					["provider"] = { "o", 194066 },	-- Candy Bucket, Dragonblight
					["coord"] = { 60.1, 53.5, DRAGONBLIGHT },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(32024, {	-- Candy Bucket — Dread Wastes, Klaxxi'vess, Neutral
					["provider"] = { "o", 215877 },	-- Candy Bucket, Dread Wastes
					["coord"] = { 55.9, 32.3, DREAD_WASTES },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32023, {	-- Candy Bucket — Dread Wastes, Soggy's Gamble, Neutral
					["provider"] = { "o", 215876 },	-- Candy Bucket, Dread Wastes
					["coord"] = { 55.2, 71.1, DREAD_WASTES },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(12398, {	-- Candy Bucket — Dustwallow Marsh, Mudsprocket, Neutral
					["provider"] = { "o", 190104 },	-- Candy Bucket, Dustwallow Marsh
					["coord"] = { 41.86, 74.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12402, {	-- Candy Bucket — Eastern Plaguelands, Light's Hope Chapel, Neutral
					["provider"] = { "o", 190108 },	-- Candy Bucket, Eastern Plaguelands
					["coords"] = {
						-- #if AFTER CATA
						{ 75.6, 52.4, EASTERN_PLAGUELANDS },
						-- #else
						{ 81.7, 58.1, EASTERN_PLAGUELANDS },
						-- #endif
						-- #if AFTER LEGION
						{ 41.3, 90.4, LIGHTS_HOPE_CHAPEL },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28994, {	-- Candy Bucket — Felwood, Whisperwind Grove, Neutral
					["provider"] = { "o", 208158 },	-- Candy Bucket, Felwood
					["coord"] = { 44.6, 28.9, FELWOOD },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(13452, {	-- Candy Bucket — Howling Fjord, Kamagua, Neutral
					["provider"] = { "o", 194065 },	-- Candy Bucket, Howling Fjord
					["coord"] = { 25.4, 59.8, HOWLING_FJORD },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(32034, {	-- Candy Bucket — Krasarang Wilds, Marista, Neutral
					["provider"] = { "o", 215892 },	-- Candy Bucket, Krasarang Wilds
					["coord"] = { 51.4, 77.29, KRASARANG_WILDS },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32036, {	-- Candy Bucket — Krasarang Wilds, Zhu's Watch, Neutral
					["provider"] = { "o", 215894 },	-- Candy Bucket, Krasarang Wilds
					["coord"] = { 75.94, 6.91, KRASARANG_WILDS },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32039, {	-- Candy Bucket — Kun-Lai Summit, Binan Village, Neutral
					["provider"] = { "o", 215897 },	-- Candy Bucket, Kun-Lai Summit
					["coord"] = { 72.7, 92.2, KUN_LAI_SUMMIT },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32041, {	-- Candy Bucket — Kun-Lai Summit, Grummle Bazaar, Neutral
					["provider"] = { "o", 215899 },	-- Candy Bucket, Kun-Lai Summit
					["coord"] = { 64.2, 61.2, KUN_LAI_SUMMIT },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32037, {	-- Candy Bucket — Kun-Lai Summit, One Keg, Neutral
					["provider"] = { "o", 215895 },	-- Candy Bucket, Kun-Lai Summit
					["coord"] = { 57.4, 59.9, KUN_LAI_SUMMIT },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32051, {	-- Candy Bucket — Kun-Lai Summit, Zouchin Village, Neutral
					["provider"] = { "o", 215914 },	-- Candy Bucket, Kun-Lai Summit
					["coord"] = { 62.3, 29.0, KUN_LAI_SUMMIT },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(29000, {	-- Candy Bucket — Mount Hyjal, Grove of Aessina, Neutral
					["provider"] = { "o", 208163 },	-- Candy Bucket, Mount Hyjal
					["coord"] = { 18.7, 37.3, MOUNT_HYJAL },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28999, {	-- Candy Bucket — Mount Hyjal, Nordrassil, Neutral
					["provider"] = { "o", 208162 },	-- Candy Bucket, Mount Hyjal
					["coord"] = { 63.0, 24.1, MOUNT_HYJAL },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(29001, {	-- Candy Bucket — Mount Hyjal, Shrine of Aviana, Neutral
					["provider"] = { "o", 208164 },	-- Candy Bucket, Mount Hyjal
					["coord"] = { 42.7, 45.6, MOUNT_HYJAL },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12407, {	-- Candy Bucket — Netherstorm, Area 52, Neutral
					["provider"] = { "o", 190113 },	-- Candy Bucket, Netherstorm
					["coord"] = { 32.0, 64.4, NETHERSTORM },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12408, {	-- Candy Bucket — Netherstorm, The Stormspire, Neutral
					["provider"] = { "o", 190114 },	-- Candy Bucket, Netherstorm
					["coord"] = { 43.4, 36.1, NETHERSTORM },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12396, {	-- Candy Bucket — Northern Barrens, Ratchet, Neutral
					["provider"] = { "o", 190102 },	-- Candy Bucket, Northern Barrens
					["timeline"] = { ADDED_2_0_1 },
					["coords"] = {
						-- #if AFTER CATA
						{ 67.3, 74.7, NORTHERN_BARRENS },
						-- #else
						{ 62.1, 39.4, THE_BARRENS },
						-- #endif
					},
				}),
				candybucket(28965, {	-- Candy Bucket — Searing Gorge, Iron Summit, Neutral
					["provider"] = { "o", 208138 },	-- Candy Bucket, Searing Gorge
					["coord"] = { 39.4, 66.1, SEARING_GORGE },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12409, {	-- Candy Bucket — Shadowmoon Valley, Altar of Sha'tar or Sanctum of the Stars, Neutral
					["providers"] = {
						{ "o", 190115 },	-- Candy Bucket, Shadowmoon Valley [Altar of Sha'tar]
						{ "o", 190116 },	-- Candy Bucket, Shadowmoon Valley [Sanctum of the Stars]
					},
					["coords"] = {
						{ 61.0, 28.2, SHADOWMOON_VALLEY },	-- Aldor
						{ 56.4, 59.8, SHADOWMOON_VALLEY },	-- Scryer
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12404, {	-- Candy Bucket — Shattrath City, Aldor Rise or Scryer's Tier, Neutral
					["providers"] = {
						{ "o", 190110 },	-- Candy Bucket, Shattrath City [Aldor Rise]
						{ "o", 190111 },	-- Candy Bucket, Shattrath City [Scryer's Tier]
					},
					["coords"] = {
						{ 56.2, 81.8, SHATTRATH_CITY },	-- Scryer
						{ 28.1, 49.0, SHATTRATH_CITY },	-- Aldor
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12950, {	-- Candy Bucket — Sholazar, Nesingwary Base Camp, Neutral
					["provider"] = { "o", 192018 },	-- Candy Bucket, Sholazar Basin
					["coord"] = { 26.7, 59.2, SHOLAZAR_BASIN },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(12401, {	-- Candy Bucket — Silithus, Cenarion Hold, Neutral
					["provider"] = { "o", 190107 },	-- Candy Bucket, Silithus
					["coords"] = {
						-- #if AFTER CATA
						{ 55.5, 36.7, SILITHUS },
						-- #else
						{ 51.8, 39.2, SILITHUS },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28967, {	-- Candy Bucket — Swamp of Sorrows, Bogpaddle, Neutral
					["provider"] = { "o", 208139 },	-- Candy Bucket, Swamp of Sorrows
					["coord"] = { 71.7, 14.0, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(29014, {	-- Candy Bucket — Tanaris, Bootlegger Outpost, Neutral
					["provider"] = { "o", 208177 },	-- Candy Bucket, Tanaris
					["coord"] = { 55.7, 60.9, TANARIS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12399, {	-- Candy Bucket — Tanaris, Gadgetzan, Neutral
					["provider"] = { "o", 190105 },	-- Candy Bucket, Tanaris
					["coords"] = {
						-- #if AFTER CATA
						{ 52.6, 27.1, TANARIS },
						-- #else
						{ 52.45, 27.88, TANARIS },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12397, {	-- Candy Bucket — The Cape of Stranglethorn, Booty Bay, Neutral
					["provider"] = { "o", 190103 },	-- Candy Bucket, Stranglethorn Vale
					["coords"] = {
						-- #if AFTER CATA
						{ 40.9, 73.8, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 27.1, 77.3, STRANGLETHORN_VALE },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(32027, {	-- Candy Bucket — The Jade Forest, Dawn's Blossom, Neutral
					["provider"] = { "o", 215880 },	-- Candy Bucket, The Jade Forest
					["coord"] = { 45.7, 43.6, THE_JADE_FOREST },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32029, {	-- Candy Bucket — The Jade Forest, Greenstone Village, Neutral
					["provider"] = { "o", 215884 },	-- Candy Bucket, The Jade Forest
					["coord"] = { 48.0, 34.6, THE_JADE_FOREST },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32032, {	-- Candy Bucket — The Jade Forest, Jade Temple Grounds, Neutral
					["provider"] = { "o", 215889 },	-- Candy Bucket, The Jade Forest
					["coord"] = { 54.6, 63.3, THE_JADE_FOREST },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32031, {	-- Candy Bucket — The Jade Forest, Sri-La Village, Neutral
					["provider"] = { "o", 215886 },	-- Candy Bucket, The Jade Forest
					["coord"] = { 55.7, 24.4, THE_JADE_FOREST },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32021, {	-- Candy Bucket — The Jade Forest, Tian Monastery, Neutral
					["provider"] = { "o", 215874 },	-- Candy Bucket, The Jade Forest
					["coord"] = { 41.6, 23.1, THE_JADE_FOREST },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(13462, {	-- Candy Bucket — The Storm Peaks, Bouldercrag's Refuge, Neutral
					["provider"] = { "o", 194070 },	-- Candy Bucket, The Storm Peaks
					["coord"] = { 30.9, 37.2, THE_STORM_PEAKS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(13461, {	-- Candy Bucket — The Storm Peaks, K3, Neutral
					["provider"] = { "o", 194069 },	-- Candy Bucket, The Storm Peaks
					["coord"] = { 41.1, 85.9, THE_STORM_PEAKS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(32026, {	-- Candy Bucket — The Veiled Stair, Tavern in the Mists, Neutral
					["provider"] = { "o", 215879 },	-- Candy Bucket, The Veiled Stair
					["coord"] = { 54.9, 72.3, THE_VEILED_STAIR },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32043, {	-- Candy Bucket — Townlong Steppes, Longying Outpost, Neutral
					["provider"] = { "o", 215902 },	-- Candy Bucket, Townlong Steppes
					["coord"] = { 71.1, 57.8, TOWNLONG_STEPPES },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(29016, {	-- Candy Bucket — Uldum, Oasis of Vir'sar, Neutral
					["provider"] = { "o", 208178 },	-- Candy Bucket, Uldum
					["coords"] = {
						{ 26.6, 7.30, ULDUM },
						-- #if AFTER 8.3.0
						{ 26.6, 7.30, NZOTH_ASSAULT_ULDUM },
						-- #endif
					},
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(29017, {	-- Candy Bucket — Uldum, Ramkahen, Neutral
					["provider"] = { "o", 208179 },	-- Candy Bucket, Uldum
					["coord"] = { 54.7, 33.0, ULDUM },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(29018, {	-- Candy Bucket — Un'Goro Crater, Marshal's Stand, Neutral
					["provider"] = { "o", 208180 },	-- Candy Bucket, Un'Goro Crater
					["coord"] = { 55.2, 62.1, UNGORO_CRATER },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(32044, {	-- Candy Bucket — Vale of Eternal Blossoms, Mistfall Village, Neutral
					["provider"] = { "o", 215903 },	-- Candy Bucket, Vale of Eternal Blossoms
					["coords"] = {
						{ 35.1, 77.7, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if AFTER 8.3.0
						{ 35.1, 77.7, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						-- #endif
					},
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32048, {	-- Candy Bucket — Valley of the Four Winds, Pang's Stead, Neutral
					["provider"] = { "o", 215905 },	-- Candy Bucket, Valley of the Four Winds
					["coord"] = { 83.6, 20.3, VALLEY_OF_THE_FOUR_WINDS },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32046, {	-- Candy Bucket — Valley of the Four Winds, Stoneplow, Neutral
					["provider"] = { "o", 215906 },	-- Candy Bucket, Valley of the Four Winds
					["coord"] = { 19.8, 55.7, VALLEY_OF_THE_FOUR_WINDS },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(28981, {	-- Candy Bucket — Vashj'ir, Deepmist Grotto, Neutral
					["provider"] = { "o", 208141 },	-- Candy Bucket, Kelp'thar Forest
					["coord"] = { 63.4, 60.2, VASHJIR_KELPTHAR_FOREST },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28982, {	-- Candy Bucket — Vashj'ir, Silver Tide Hollow, Neutral
					["provider"] = { "o", 208142 },	-- Candy Bucket, Shimmering Expanse
					["coord"] = { 49.2, 41.9, VASHJIR_SHIMMERING_EXPANSE },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12400, {	-- Candy Bucket — Winterspring, Everlook, Neutral
					["provider"] = { "o", 190106 },	-- Candy Bucket, Winterspring
					["coords"] = {
						-- #if AFTER CATA
						{ 59.8, 51.2, WINTERSPRING },
						-- #else
						{ 61.33, 38.86, WINTERSPRING },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12403, {	-- Candy Bucket — Zangarmarsh, Cenarion Refuge, Neutral
					["provider"] = { "o", 190109 },	-- Candy Bucket, Zangarmarsh
					["coord"] = { 78.5, 62.9, ZANGARMARSH },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12941, {	-- Candy Bucket — Zul'Drak, The Argent Stand, Neutral
					["provider"] = { "o", 191879 },	-- Candy Bucket, Zul'Drak
					["coord"] = { 40.8, 66.0, ZULDRAK },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(12940, {	-- Candy Bucket — Zul'Drak, Zim'Torga, Neutral
					["provider"] = { "o", 191878 },	-- Candy Bucket, Zul'Drak
					["coord"] = { 59.3, 57.2, ZULDRAK },
					["timeline"] = { ADDED_3_0_2 },
				}),

				-- Dragonflight
				candybucket(75684, {	-- Candy Bucket - Ohn'ahran Plains, Broadhoof Outpost
					["provider"] = { "o", 401738 },	-- Candy Bucket, Ohn'ahran Plains
					["coord"] = { 46.2, 40.6, OHNAHRAN_PLAINS },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75693, {	-- Candy Bucket - Ohn'ahran Plains, Emberwatch
					["provider"] = { "o", 401747 },	-- Candy Bucket, Ohn'ahran Plains
					["coord"] = { 66.3, 24.5, OHNAHRAN_PLAINS },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75692, {	-- Candy Bucket - Ohn'ahran Plains, Forkriver Crossing
					["provider"] = { "o", 401746 },	-- Candy Bucket, Ohn'ahran Plains
					["coord"] = { 72.1, 80.4, OHNAHRAN_PLAINS },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75685, {	-- Candy Bucket - Ohn'ahran Plains, Maruukai
					["provider"] = { "o", 401739 },	-- Candy Bucket, Ohn'ahran Plains
					["coord"] = { 62.9, 40.6, OHNAHRAN_PLAINS },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75687, {	-- Candy Bucket - Ohn'ahran Plains, Ohn'iri Springs
					["provider"] = { "o", 401741 },	-- Candy Bucket, Ohn'ahran Plains
					["coord"] = { 57.1, 76.7, OHNAHRAN_PLAINS },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75688, {	-- Candy Bucket - Ohn'ahran Plains, Pinewood Post
					["provider"] = { "o", 401742 },	-- Candy Bucket, Ohn'ahran Plains
					["coord"] = { 81.3, 59.2, OHNAHRAN_PLAINS },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75689, {	-- Candy Bucket - Ohn'ahran Plains, Rusza'thar Reach
					["provider"] = { "o", 401743 },	-- Candy Bucket, Ohn'ahran Plains
					["coord"] = { 85.9, 35.4, OHNAHRAN_PLAINS },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75686, {	-- Candy Bucket - Ohn'ahran Plains, Shady Sanctuary
					["provider"] = { "o", 401740 },	-- Candy Bucket, Ohn'ahran Plains
					["coord"] = { 28.6, 60.6, OHNAHRAN_PLAINS },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75691, {	-- Candy Bucket - Ohn'ahran Plains, Teerakai
					["provider"] = { "o", 401745 },	-- Candy Bucket, Ohn'ahran Plains
					["coord"] = { 41.9, 60.4, OHNAHRAN_PLAINS },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75690, {	-- Candy Bucket - Ohn'ahran Plains, Timberstep Outpost
					["provider"] = { "o", 401744 },	-- Candy Bucket, Ohn'ahran Plains
					["coord"] = { 85.0, 26.0, OHNAHRAN_PLAINS },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75698, {	-- Candy Bucket - Thaldraszus, Algeth'era Court
					["provider"] = { "o", 401751 },	-- Candy Bucket, Thaldraszus
					["coord"] = { 50.1, 42.7, THALDRASZUS },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75696, {	-- Candy Bucket - Thaldraszus, Garden Shrine
					["provider"] = { "o", 401749 },	-- Candy Bucket, Thaldraszus
					["coord"] = { 35.1, 79.2, THALDRASZUS },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75697, {	-- Candy Bucket - Thaldraszus, Gelikyr Post
					["provider"] = { "o", 401750 },	-- Candy Bucket, Thaldraszus
					["coord"] = { 52.4, 69.8, THALDRASZUS },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75695, {	-- Candy Bucket - Thaldraszus, Temporal Conflux
					["provider"] = { "o", 401748 },	-- Candy Bucket, Thaldraszus
					["coord"] = { 59.9, 82.7, THALDRASZUS },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75700, {	-- Candy Bucket - Thaldraszus, Valdrakken (The Parting Glass)
					["provider"] = { "o", 401753 },	-- Candy Bucket, Valdrakken
					["coord"] = { 72.4, 46.7, VALDRAKKEN },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75699, {	-- Candy Bucket - Thaldraszus, Valdrakken (The Roasted Ram)
					["provider"] = { "o", 401752 },	-- Candy Bucket, Valdrakken
					["coord"] = { 47.2, 45.5, VALDRAKKEN },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75701, {	-- Candy Bucket - Thaldraszus, Valdrakken (Weyrnrest)
					["provider"] = { "o", 401754 },	-- Candy Bucket, Valdrakken
					["coord"] = { 22.4, 30.9, VALDRAKKEN },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75667, {	-- Candy Bucket - The Azure Span, Camp Antonidas
					["provider"] = { "o", 401714 },	-- Candy Bucket, The Azure Span
					["coord"] = { 47.0, 40.3, THE_AZURE_SPAN },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75668, {	-- Candy Bucket - The Azure Span, Camp Nowhere
					["provider"] = { "o", 401723 },	-- Candy Bucket, The Azure Span
					["coord"] = { 62.8, 57.7, THE_AZURE_SPAN },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75669, {	-- Candy Bucket - The Azure Span, Iskaara
					["provider"] = { "o", 401724 },	-- Candy Bucket, The Azure Span
					["coord"] = { 12.4, 49.4, THE_AZURE_SPAN },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75670, {	-- Candy Bucket - The Azure Span, Theron's Watch
					["provider"] = { "o", 401725 },	-- Candy Bucket, The Azure Span
					["coord"] = { 65.5, 16.3, THE_AZURE_SPAN },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75671, {	-- Candy Bucket - The Azure Span, Three-Falls Lookout
					["provider"] = { "o", 401726 },	-- Candy Bucket, The Azure Span
					["coord"] = { 18.8, 24.6, THE_AZURE_SPAN },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75702, {	-- Candy Bucket - The Forbidden Reach, Morqut Village
					["provider"] = { "o", 401755 },	-- Candy Bucket, The Forbidden Reach
					["coord"] = { 33.9, 58.8, THE_FORBIDDEN_REACH },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75672, {	-- Candy Bucket - The Waking Shores, Apex Observatory
					["provider"] = { "o", 401727 },	-- Candy Bucket, The Waking Shores
					["coord"] = { 24.5, 82.1, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75673, {	-- Candy Bucket - The Waking Shores, Dragonscale Basecamp
					["provider"] = { "o", 401728 },	-- Candy Bucket, The Waking Shores
					["coord"] = { 47.7, 83.3, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75675, {	-- Candy Bucket - The Waking Shores, Life Vault Ruins
					["provider"] = { "o", 401730 },	-- Candy Bucket, The Waking Shores
					["coord"] = { 65.2, 57.9, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75676, {	-- Candy Bucket - The Waking Shores, Obsidian Throne
					["provider"] = { "o", 401731 },	-- Candy Bucket, The Waking Shores
					["coord"] = { 25.8, 55.2, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(77698, {	-- Candy Bucket - The Waking Shores, Obsidian Bulwark
					["provider"] = { "o", 407048 },	-- Candy Bucket, The Waking Shores
					["coord"] = { 43.1, 66.7, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75674, {	-- Candy Bucket - The Waking Shores, Ruby Lifeshrine
					["provider"] = { "o", 401729 },	-- Candy Bucket, The Waking Shores
					["coord"] = { 58.0, 67.3, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75677, {	-- Candy Bucket - The Waking Shores, Skytop Observatory
					["provider"] = { "o", 401732 },	-- Candy Bucket, The Waking Shores
					["coord"] = { 76.1, 54.8, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75678, {	-- Candy Bucket - The Waking Shores, Uktulut Backwater
					["provider"] = { "o", 401733 },	-- Candy Bucket, The Waking Shores
					["coord"] = { 53.9, 39.0, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75679, {	-- Candy Bucket - The Waking Shores, Uktulut Pier
					["provider"] = { "o", 401734 },	-- Candy Bucket, The Waking Shores
					["coord"] = { 46.4, 27.4, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75683, {	-- Candy Bucket - The Waking Shores, Wingrest Embassy
					["provider"] = { "o", 401737 },	-- Candy Bucket, The Waking Shores
					["coord"] = { 76.2, 35.4, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75704, {	-- Candy Bucket - Zaralek Cavern, Loamm
					["provider"] = { "o", 401757 },	-- Candy Bucket, Zaralek Cavern
					["coord"] = { 56.4, 56.4, ZARALEK_CAVERN },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(75703, {	-- Candy Bucket - Zaralek Cavern, Obsidian Rest
					["provider"] = { "o", 401756 },	-- Candy Bucket, Zaralek Cavern
					["coord"] = { 52.1, 26.5, ZARALEK_CAVERN },
					["timeline"] = { ADDED_10_1_5 },
				}),

				-- The War within
				candybucket(84579, {	-- Candy Bucket — Azj-Kahet, Faerin's Advance
					["provider"] = { "o", 464926 },	-- Candy Bucket
					["coord"] = { 59, 18.6, AZJ_KAHET },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84580, {	-- Candy Bucket — Azj-Kahet, Mmarl
					["provider"] = { "o", 464927 },	-- Candy Bucket
					["coord"] = { 78, 62.8, AZJ_KAHET },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84582, {	-- Candy Bucket — Azj-Kahet, Weaver's Lair
					["provider"] = { "o", 464929 },	-- Candy Bucket
					["coord"] = { 56.9, 39, AZJ_KAHET },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84581, {	-- Candy Bucket — Azj-Kahet, Wildcamp Ul'ar
					["provider"] = { "o", 464928 },	-- Candy Bucket
					["coord"] = { 44.8, 66.3, AZJ_KAHET },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84576, {	-- Candy Bucket — City of Threads, High Hollows
					["provider"] = { "o", 464923 },	-- Candy Bucket
					["coord"] = { 62, 41.4, NERUBAR },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84578, {	-- Candy Bucket — City of Threads, Umbral Bazzar
					["provider"] = { "o", 464925 },	-- Candy Bucket
					["coord"] = { 49.7, 22.3, NERUBAR },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84577, {	-- Candy Bucket — City of Threads - Lower, The Burrows
					["provider"] = { "o", 464924 },	-- Candy Bucket
					["coord"] = { 57.4, 38.5, NERUBAR_LOWER },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84572, {	-- Candy Bucket — Hallowfall, Dunelle's Kindness
					["provider"] = { "o", 464919 },	-- Candy Bucket
					["coord"] = { 69.1, 45.7, HALLOWFALL },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84574, {	-- Candy Bucket — Hallowfall, Light's Redoubt
					["provider"] = { "o", 464921 },	-- Candy Bucket
					["coord"] = { 40.6, 68, HALLOWFALL },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84573, {	-- Candy Bucket — Hallowfall, Lorel's Crossing
					["provider"] = { "o", 464920 },	-- Candy Bucket
					["coord"] = { 49.1, 39.5, HALLOWFALL },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84575, {	-- Candy Bucket — Hallowfall, Mereldar
					["provider"] = { "o", 464922 },	-- Candy Bucket
					["coord"] = { 42.8, 55.7, HALLOWFALL },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84564, {	-- Candy Bucket — Isle of Dorn, Dornogal
					["provider"] = { "o", 464911 },	-- Candy Bucket
					["coord"] = { 45, 47.3, DORNOGAL },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84566, {	-- Candy Bucket — Isle of Dorn, Freywold Village
					["provider"] = { "o", 464913 },	-- Candy Bucket
					["coord"] = { 42, 74.4, ISLE_OF_DORN },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84567, {	-- Candy Bucket — Isle of Dorn, Rambleshire
					["provider"] = { "o", 464914 },	-- Candy Bucket
					["coord"] = { 58.2, 27.1, ISLE_OF_DORN },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84568, {	-- Candy Bucket — The Ringing Deeps, Camp Murroch
					["provider"] = { "o", 464915 },	-- Candy Bucket
					["coord"] = { 59.5, 64.1, THE_RINGING_DEEPS },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84569, {	-- Candy Bucket — The Ringing Deeps, Gundargaz
					["provider"] = { "o", 464916 },	-- Candy Bucket
					["coord"] = { 47.9, 32.1, THE_RINGING_DEEPS },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84570, {	-- Candy Bucket — The Ringing Deeps, Opportunity Point
					["provider"] = { "o", 464917 },	-- Candy Bucket
					["coord"] = { 63.4, 79, THE_RINGING_DEEPS },
					["timeline"] = { ADDED_11_0_2 },
				}),
				candybucket(84571, {	-- Candy Bucket — The Ringing Deeps, Shadowvein Point
					["provider"] = { "o", 464918 },	-- Candy Bucket
					["coord"] = { 61.9, 46.3, THE_RINGING_DEEPS },
					["timeline"] = { ADDED_11_0_2 },
				}),
			},
		}),
		n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["races"] = ALLIANCE_ONLY }, {
			["timeline"] = { ADDED_2_0_1 },
			["groups"] = {
				candybucket(28954, {	-- Candy Bucket — Arathi Highlands, Refuge Point, Alliance
					["provider"] = { "o", 208120 },	-- Candy Bucket, Arathi Highlands
					["coord"] = { 40.1, 49, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12345, {	-- Candy Bucket — Ashenvale, Astranaar, Alliance
					["provider"] = { "o", 190035 },	-- Candy Bucket, Ashenvale
					["coord"] = { 37.0, 49.3, ASHENVALE },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12333, {	-- Candy Bucket — Azuremyst Isle, Azure Watch, Alliance
					["provider"] = { "o", 190037 },	-- Candy Bucket, Azuremyst Isle
					["coord"] = { 48.5, 49.1, AZUREMYST_ISLE },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28956, {	-- Candy Bucket — Badlands, Dragon's Mouth, Alliance
					["provider"] = { "o", 208121 },	-- Candy Bucket, Badlands
					["coord"] = { 20.9, 56.2, BADLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12358, {	-- Candy Bucket — Blade's Edge Mountains, Sylvanaar, Alliance
					["provider"] = { "o", 190061 },	-- Candy Bucket, Blade's Edge Mountains
					["coord"] = { 35.8, 63.8, BLADES_EDGE_MOUNTAINS },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12359, {	-- Candy Bucket — Blade's Edge Mountains, Toshley's Station, Alliance
					["provider"] = { "o", 190062 },	-- Candy Bucket, Blade's Edge Mountains
					["coord"] = { 61.0, 68.1, BLADES_EDGE_MOUNTAINS },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28960, {	-- Candy Bucket — Blasted Lands, Nethergarde Keep, Alliance
					["provider"] = { "o", 208122 },	-- Candy Bucket, Blasted Lands
					["coord"] = { 60.7, 14.2, BLASTED_LANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28961, {	-- Candy Bucket — Blasted Lands, Surwich, Alliance
					["provider"] = { "o", 208123 },	-- Candy Bucket, Blasted Lands
					["coord"] = { 44.4, 87.7, BLASTED_LANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12341, {	-- Candy Bucket — Bloodmyst Isle, Blood Watch, Alliance
					["provider"] = { "o", 190045 },	-- Candy Bucket, Bloodmyst Isle
					["coord"] = { 55.7, 59.9, BLOODMYST_ISLE },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(13437, {	-- Candy Bucket — Borean Tundra, Fizzcrank Airstrip, Alliance
					["provider"] = { "o", 194060 },	-- Candy Bucket, Borean Tundra
					["coord"] = { 57.1, 18.8, BOREAN_TUNDRA },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(13436, {	-- Candy Bucket — Borean Tundra, Valiance Keep, Alliance
					["provider"] = { "o", 194059 },	-- Candy Bucket, Borean Tundra
					["coord"] = { 58.5, 67.9, BOREAN_TUNDRA },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(43056, {	-- Candy Bucket — Dalaran : Broken Shores, Silver Enclave, Alliance
					["provider"] = { "o", 251671 },	-- Candy Bucket, Dalaran
					["coord"] = { 41.8, 64.1, LEGION_DALARAN },
					["timeline"] = { ADDED_7_0_3 },
				}),
				candybucket(13473, {	-- Candy Bucket — Dalaran : Northrend, Silver Enclave, Alliance
					["provider"] = { "o", 194064 },	-- Candy Bucket, Dalaran
					["coord"] = { 42.5, 63.5, NORTHREND_DALARAN },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(12338, {	-- Candy Bucket — Darkshore, Auberdine, Alliance
					["provider"] = { "o", 190042 },	-- Candy Bucket, Auberdine
					["coord"] = { 37.0, 44.0, DARKSHORE },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_1 },
				}),
				candybucket(28951, {	-- Candy Bucket — Darkshore, Lor'danel, Alliance
					["provider"] = { "o", 208115 },	-- Candy Bucket, Darkshore
					["coord"] = { 50.8, 18.8, DARKSHORE },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12334, {	-- Candy Bucket — Darnassus, Craftsmen's Terrace, Alliance
					["provider"] = { "o", 190038 },	-- Candy Bucket, Darnassus
					["coords"] = {
						-- #if AFTER CATA
						{ 62.2, 33.0, DARNASSUS },
						-- #else
						{ 67.43, 16.0, DARNASSUS },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(29020, {	-- Candy Bucket — Deepholm, Temple of Earth, Alliance
					["provider"] = { "o", 208183 },	-- Candy Bucket, Deepholm
					["coord"] = { 47.4, 51.7, DEEPHOLM },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12348, {	-- Candy Bucket — Desolace, Nijel's Point, Alliance
					["provider"] = { "o", 190051 },	-- Candy Bucket, Desolace
					["coord"] = { 66.3, 6.70, DESOLACE },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(13438, {	-- Candy Bucket — Dragonblight, Stars' Rest, Alliance
					["provider"] = { "o", 194061 },	-- Candy Bucket, Dragonblight
					["coord"] = { 29.0, 56.2, DRAGONBLIGHT },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(13439, {	-- Candy Bucket — Dragonblight, Wintergarde Keep, Alliance
					["provider"] = { "o", 194062 },	-- Candy Bucket, Dragonblight
					["coord"] = { 77.5, 51.3, DRAGONBLIGHT },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(12332, {	-- Candy Bucket — Dun Morogh, Kharanos, Alliance
					["provider"] = { "o", 190036 },	-- Candy Bucket, Dun Morogh
					["coords"] = {
						-- #if AFTER CATA
						{ 54.5, 50.7, DUN_MOROGH },
						-- #else
						{ 47.38, 52.44, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12344, {	-- Candy Bucket — Duskwood, Darkshire, Alliance
					["provider"] = { "o", 190048 },	-- Candy Bucket, Duskwood
					["coord"] = { 73.9, 44.4, DUSKWOOD },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12349, {	-- Candy Bucket — Dustwallow Marsh, Theramore, Alliance
					["provider"] = { "o", 190052 },	-- Candy Bucket, Dustwallow Marsh
					["coord"] = { 66.6, 45.3, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12286, {	-- Candy Bucket — Elwynn Forest, Goldshire, Alliance
					["provider"] = { "o", 189303 },	-- Candy Bucket, Elwynn Forest
					["coord"] = { 43.7, 66.0, ELWYNN_FOREST },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28995, {	-- Candy Bucket — Felwood, Talonbranch Glade, Alliance
					["provider"] = { "o", 208159 },	-- Candy Bucket, Felwood
					["coord"] = { 61.8, 26.7, FELWOOD },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28952, {	-- Candy Bucket — Feralas, Dreamer's Rest, Alliance
					["provider"] = { "o", 208116 },	-- Candy Bucket, Feralas
					["coord"] = { 51.1, 17.8, FERALAS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12350, {	-- Candy Bucket — Feralas, Feathermoon Stronghold, Alliance
					["provider"] = { "o", 190053 },	-- Candy Bucket, Feralas
					["coords"] = {
						-- #if AFTER CATA
						{ 46.3, 45.2, FERALAS },
						-- #else
						{ 30.9, 43.5, FERALAS },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12944, {	-- Candy Bucket — Grizzly Hills, Amberpine Lodge, Alliance
					["provider"] = { "o", 191882 },	-- Candy Bucket, Grizzly Hills
					["coord"] = { 32.0, 60.2, GRIZZLY_HILLS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(12945, {	-- Candy Bucket — Grizzly Hills, Westfall Brigade, Alliance
					["provider"] = { "o", 191883 },	-- Candy Bucket, Grizzly Hills
					["coord"] = { 59.6, 26.4, GRIZZLY_HILLS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(12352, {	-- Candy Bucket — Hellfire Peninsula, Honor Hold, Alliance
					["provider"] = { "o", 190055 },	-- Candy Bucket, Hellfire Peninsula
					["coord"] = { 54.3, 63.6, HELLFIRE_PENINSULA },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12353, {	-- Candy Bucket — Hellfire Peninsula, Temple of Telhamat, Alliance
					["provider"] = { "o", 190056 },	-- Candy Bucket, Hellfire Peninsula
					["coord"] = { 23.4, 36.5, HELLFIRE_PENINSULA },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12346, {	-- Candy Bucket — Hillsbrad Foothills, Southshore, Alliance
					["provider"] = { "o", 190049 },	-- Candy Bucket, Hillsbrad Foothills
					["coord"] = { 51.1, 59.0, HILLSBRAD_FOOTHILLS },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_1 },
				}),
				candybucket(13435, {	-- Candy Bucket — Howling Fjord, Fort Wildervar, Alliance
					["provider"] = { "o", 194058 },	-- Candy Bucket, Howling Fjord
					["coord"] = { 60.5, 15.9, HOWLING_FJORD },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(13433, {	-- Candy Bucket — Howling Fjord, Valgarde, Alliance
					["provider"] = { "o", 194056 },	-- Candy Bucket, Howling Fjord
					["coord"] = { 58.4, 62.8, HOWLING_FJORD },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(13434, {	-- Candy Bucket — Howling Fjord, Westguard Keep, Alliance
					["provider"] = { "o", 194057 },	-- Candy Bucket, Howling Fjord
					["coord"] = { 30.8, 41.5, HOWLING_FJORD },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(12335, {	-- Candy Bucket — Ironforge, The Commons, Alliance
					["provider"] = { "o", 190039 },	-- Candy Bucket, Ironforge
					["coord"] = { 18.6, 51.3, IRONFORGE },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(32042, {	-- Candy Bucket — Kun-Lai Summit, Westwind Rest, Alliance
					["provider"] = { "o", 215900 },	-- Candy Bucket, Kun-Lai Summit
					["coord"] = { 54.1, 82.8, KUN_LAI_SUMMIT },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(28963, {	-- Candy Bucket — Loch Modan, Farstrider Lodge, Alliance
					["provider"] = { "o", 208124 },	-- Candy Bucket, Loch Modan
					["coord"] = { 82.9, 63.6, LOCH_MODAN },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12339, {	-- Candy Bucket — Loch Modan, Thelsamar, Alliance
					["provider"] = { "o", 190043 },	-- Candy Bucket, Loch Modan
					["coord"] = { 35.5, 48.4, LOCH_MODAN },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12357, {	-- Candy Bucket — Nagrand, Telaar, Alliance
					["provider"] = { "o", 190060 },	-- Candy Bucket, Nagrand
					["coord"] = { 54.2, 75.8, NAGRAND },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28964, {	-- Candy Bucket — Northern Stranglethorn, Fort Livingston, Alliance
					["provider"] = { "o", 208125 },	-- Candy Bucket, Northern Stranglethorn
					["coord"] = { 53.1, 66.9, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12342, {	-- Candy Bucket — Redridge Mountains, Lakeshire, Alliance
					["provider"] = { "o", 190046 },	-- Candy Bucket, Redridge Mountains
					["coords"] = {
						-- #if AFTER CATA
						{ 26.4, 41.6, REDRIDGE_MOUNTAINS },
						-- #else
						{ 27.0, 44.9, REDRIDGE_MOUNTAINS },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12360, {	-- Candy Bucket — Shadowmoon Valley, Wildhammer Stronghold, Alliance
					["provider"] = { "o", 190063 },	-- Candy Bucket, Shadowmoon Valley
					["coord"] = { 37.1, 58.2, SHADOWMOON_VALLEY },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(29008, {	-- Candy Bucket — Southern Barrens, Fort Triumph, Alliance
					["provider"] = { "o", 208171 },	-- Candy Bucket, Southern Barrens
					["coord"] = { 49.1, 68.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(29006, {	-- Candy Bucket — Southern Barrens, Honor's Stand, Alliance
					["provider"] = { "o", 208169 },	-- Candy Bucket, Southern Barrens
					["coord"] = { 39.0, 11.0, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(29007, {	-- Candy Bucket — Southern Barrens, Northwatch Hold, Alliance
					["provider"] = { "o", 208170 },	-- Candy Bucket, Southern Barrens
					["coord"] = { 65.6, 46.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(29013, {	-- Candy Bucket — Stonetalon Mountains, Farwatcher's Glen, Alliance
					["provider"] = { "o", 208176 },	-- Candy Bucket, Stonetalon Mountains
					["coord"] = { 31.5, 60.7, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(29010, {	-- Candy Bucket — Stonetalon Mountains, Northwatch Expedition Base, Alliance
					["provider"] = { "o", 208173 },	-- Candy Bucket, Stonetalon Mountains
					["coord"] = { 71.0, 79.1, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12347, {	-- Candy Bucket — Stonetalon Mountains, Stonetalon Peak, Alliance
					["provider"] = { "o", 190050 },	-- Candy Bucket, Stonetalon Mountains
					["coords"] = {
						-- #if AFTER CATA
						{ 40.6, 17.7, STONETALON_MOUNTAINS },
						-- #else
						{ 35.53, 6.4, STONETALON_MOUNTAINS },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(29012, {	-- Candy Bucket — Stonetalon Mountains, Thal'darah Overlook, Alliance
					["provider"] = { "o", 208175 },	-- Candy Bucket, Stonetalon Mountains
					["coord"] = { 39.5, 32.8, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(29011, {	-- Candy Bucket — Stonetalon Mountains, Windshear Hold, Alliance
					["provider"] = { "o", 208174 },	-- Candy Bucket, Stonetalon Mountains
					["coord"] = { 59.1, 56.3, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12336, {	-- Candy Bucket — Stormwind, The Trade District, Alliance
					["provider"] = { "o", 190040 },	-- Candy Bucket, Stormwind City
					["coords"] = {
						-- #if AFTER CATA
						{ 60.5, 75.2, STORMWIND_CITY },
						-- #else
						{ 52.77, 65.77, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28968, {	-- Candy Bucket — Swamp of Sorrows, The Harborage, Alliance
					["provider"] = { "o", 208126 },	-- Candy Bucket, Swamp of Sorrows
					["coord"] = { 29.0, 32.6, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12331, {	-- Candy Bucket — Teldrassil, Dolanaar, Alliance
					["provider"] = { "o", 190034 },	-- Candy Bucket, Teldrassil
					["coords"] = {
						-- #if AFTER CATA
						{ 55.4, 52.3, TELDRASSIL },
						-- #else
						{ 55.6, 59.85, TELDRASSIL },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12356, {	-- Candy Bucket — Terokkar Forest, Allerian Stronghold, Alliance
					["provider"] = { "o", 190059 },	-- Candy Bucket, Terokkar Forest
					["coord"] = { 56.6, 53.2, TEROKKAR_FOREST },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12337, {	-- Candy Bucket — The Exodar, Seat of the Naaru, Alliance
					["provider"] = { "o", 190041 },	-- Candy Bucket, The Exodar
					["coord"] = { 59.3, 19.2, THE_EXODAR },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12351, {	-- Candy Bucket — The Hinterlands, Aerie Peak, Alliance
					["provider"] = { "o", 190054 },	-- Candy Bucket, The Hinterlands
					["coords"] = {
						-- #if AFTER CATA
						{ 14.2, 44.7, THE_HINTERLANDS },
						-- #else
						{ 14.1, 41.5, THE_HINTERLANDS },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28970, {	-- Candy Bucket — The Hinterlands, Stormfeather Outpost, Alliance
					["provider"] = { "o", 208127 },	-- Candy Bucket, The Hinterlands
					["coord"] = { 66.2, 44.4, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(32049, {	-- Candy Bucket — The Jade Forest, Paw'don Village, Alliance
					["provider"] = { "o", 215907 },	-- Candy Bucket, The Jade Forest
					["coord"] = { 44.8, 84.4, THE_JADE_FOREST },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32033, {	-- Candy Bucket — The Jade Forest, Pearlfin Village, Alliance
					["provider"] = { "o", 215891 },	-- Candy Bucket, The Jade Forest
					["coord"] = { 59.6, 83.2, THE_JADE_FOREST },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(13448, {	-- Candy Bucket — The Storm Peaks, Frosthold, Alliance
					["provider"] = { "o", 194063 },	-- Candy Bucket, The Storm Peaks
					["coord"] = { 28.7, 74.3, THE_STORM_PEAKS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(75681, {	-- Candy Bucket — The Waking Shores, Wild Coast
					["provider"] = { "o", 401735 },	-- Candy Bucket, The Waking Shores
					["coord"] = { 81.3, 32.0, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(54710, {	-- Candy Bucket — Tiragarde Sound, Boralus, Alliance
					["provider"] = { "o", 316755 },	-- Candy Bucket, Boralus
					["coord"] = { 73.7, 12.4, BORALUS },
					["timeline"] = { ADDED_8_0_1 },
				}),
				candybucket(28977, {	-- Candy Bucket — Twilight Highlands, Firebeard's Patrol, Alliance
					["provider"] = { "o", 208128 },	-- Candy Bucket, Twilight Highlands
					["coord"] = { 60.4, 58.2, TWILIGHT_HIGHLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28980, {	-- Candy Bucket — Twilight Highlands, Highbank, Alliance
					["provider"] = { "o", 208129 },	-- Candy Bucket, Twilight Highlands
					["coord"] = { 79.5, 78.5, TWILIGHT_HIGHLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28978, {	-- Candy Bucket — Twilight Highlands, Thundermar, Alliance
					["provider"] = { "o", 208130 },	-- Candy Bucket, Twilight Highlands
					["coord"] = { 49.6, 30.4, TWILIGHT_HIGHLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28979, {	-- Candy Bucket — Twilight Highlands, Victor's Point, Alliance
					["provider"] = { "o", 208131 },	-- Candy Bucket, Twilight Highlands
					["coord"] = { 43.6, 57.3, TWILIGHT_HIGHLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(32052, {	-- Candy Bucket — Vale of Eternal Blossoms, Shrine of Seven Stars, Alliance
					["provider"] = { "o", 215915 },	-- Candy Bucket, Shrine of Seven Stars
					["coords"] = {
						{ 87.0, 68.8, VALE_OF_ETERNAL_BLOSSOMS },
						{ 37.7, 67.0, SHRINE_OF_SEVEN_STARS },
					},
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(28985, {	-- Candy Bucket — Vashj'ir, Darkbreak Cove, Alliance
					["provider"] = { "o", 208132 },	-- Candy Bucket, Abyssal Depths
					["coord"] = { 54.7, 72.2, VASHJIR_ABYSSAL_DEPTHS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28983, {	-- Candy Bucket — Vashj'ir, Tranquil Wash, Alliance
					["provider"] = { "o", 208133 },	-- Candy Bucket, Shimmering Expanse
					["coord"] = { 49.7, 57.4, VASHJIR_SHIMMERING_EXPANSE },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28988, {	-- Candy Bucket — Western Plaguelands, Chillwind Camp, Alliance
					["provider"] = { "o", 208134 },	-- Candy Bucket, Western Plaguelands
					["coord"] = { 43.4, 84.5, WESTERN_PLAGUELANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12340, {	-- Candy Bucket — Westfall, Sentinel Hill, Alliance
					-- #if BEFORE CATA
					["description"] = "The candy bucket will relocate to Sentinel Tower if the area is phased post Defias attack.",
					-- #endif
					["provider"] = { "o", 190047 },	-- Candy Bucket, Westfall
					["coords"] = {
						{ 52.9, 53.6, WESTFALL },
						-- #if AFTER CATA
						{ 56.8, 47.3, WESTFALL },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28991, {	-- Candy Bucket — Wetlands, Greenwarden's Grove, Alliance
					["provider"] = { "o", 208135 },	-- Candy Bucket, Wetlands
					["coord"] = { 58.1, 39.2, WETLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12343, {	-- Candy Bucket — Wetlands, Menethil Harbor, Alliance
					["provider"] = { "o", 190044 },	-- Candy Bucket, Wetlands
					["coord"] = { 10.8, 60.9, WETLANDS },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28990, {	-- Candy Bucket — Wetlands, Swiftgear Station, Alliance
					["provider"] = { "o", 208136 },	-- Candy Bucket, Wetlands
					["coord"] = { 26.1, 25.9, WETLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12355, {	-- Candy Bucket — Zangarmarsh, Orebor Harborage, Alliance
					["provider"] = { "o", 190058 },	-- Candy Bucket, Zangarmarsh
					["coord"] = { 41.9, 26.2, ZANGARMARSH },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12354, {	-- Candy Bucket — Zangarmarsh, Telredor, Alliance
					["provider"] = { "o", 190057 },	-- Candy Bucket, Zangarmarsh
					["coord"] = { 67.2, 49.0, ZANGARMARSH },
					["timeline"] = { ADDED_2_0_1 },
				}),
			},
		})),
		n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["races"] = HORDE_ONLY }, {
			["timeline"] = { ADDED_2_0_1 },
			["groups"] = {
				candybucket(12380, {	-- Candy Bucket — Arathi Highlands, Hammerfall, Horde
					["provider"] = { "o", 190082 },	-- Candy Bucket, Arathi Highlands
					["coord"] = { 69.0, 33.4, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28958, {	-- Candy Bucket — Ashenvale, Hellscream's Watch, Horde
					["provider"] = { "o", 208118 },	-- Candy Bucket, Ashenvale
					["coord"] = { 38.6, 42.4, ASHENVALE },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28953, {	-- Candy Bucket — Ashenvale, Silverwind Refuge, Horde
					["provider"] = { "o", 208117 },	-- Candy Bucket, Ashenvale
					["coord"] = { 50.2, 67.2, ASHENVALE },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12377, {	-- Candy Bucket — Ashenvale, Splintertree Post, Horde
					["provider"] = { "o", 190079 },	-- Candy Bucket, Ashenvale
					["coord"] = { 73.9, 60.7, ASHENVALE },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28989, {	-- Candy Bucket — Ashenvale, Zoram'gar Outpost, Horde
					["provider"] = { "o", 208119 },	-- Candy Bucket, Ashenvale
					["coord"] = { 13.0, 34.1, ASHENVALE },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28992, {	-- Candy Bucket — Azshara, Bilgewater Harbor, Horde
					["provider"] = { "o", 208140 },	-- Candy Bucket, Azshara
					["coord"] = { 57.1, 50.2, AZSHARA },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12385, {	-- Candy Bucket — Badlands, Kargath, Horde (removed)
					["provider"] = { "o", 190087 },	-- Candy Bucket, Badlands
					["coord"] = { 2.8, 46.0, BADLANDS },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_1 },
				}),
				candybucket(28957, {	-- Candy Bucket — Badlands, New Kargath, Horde
					["provider"] = { "o", 208143 },	-- Candy Bucket, Badlands
					["coord"] = { 18.3, 42.8, BADLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12394, {	-- Candy Bucket — Blade's Edge Mountains, Mok'Nathal Village, Horde
					["provider"] = { "o", 190100 },	-- Candy Bucket, Blade's Edge Mountains
					["coord"] = { 76.2, 60.4, BLADES_EDGE_MOUNTAINS },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12393, {	-- Candy Bucket — Blade's Edge Mountains, Thunderlord Stronghold, Horde
					["provider"] = { "o", 190099 },	-- Candy Bucket, Blade's Edge Mountains
					["coord"] = { 53.4, 55.5, BLADES_EDGE_MOUNTAINS },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28959, {	-- Candy Bucket — Blasted Lands, Dreadmaul Hold, Horde
					["provider"] = { "o", 208144 },	-- Candy Bucket, Blasted Lands
					["coord"] = { 40.5, 11.4, BLASTED_LANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(13501, {	-- Candy Bucket — Borean Tundra, Bor'gorok Outpost, Horde
					["provider"] = { "o", 194084 },	-- Candy Bucket, Borean Tundra
					["coord"] = { 49.7, 10.0, BOREAN_TUNDRA },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(13467, {	-- Candy Bucket — Borean Tundra, Taunka'le Village, Horde
					["provider"] = { "o", 194076 },	-- Candy Bucket, Borean Tundra
					["coord"] = { 76.7, 37.4, BOREAN_TUNDRA },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(13468, {	-- Candy Bucket — Borean Tundra, Warsong Hold, Horde
					["provider"] = { "o", 194077 },	-- Candy Bucket, Borean Tundra
					["coord"] = { 41.8, 54.4, BOREAN_TUNDRA },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(43057, {	-- Candy Bucket — Dalaran : Broken Shores, Sunreaver's Sanctuary, Horde
					["provider"] = { "o", 251672 },	-- Candy Bucket, Dalaran
					["coord"] = { 66.7, 30.1, LEGION_DALARAN },
					["timeline"] = { ADDED_7_0_3 },
				}),
				candybucket(13474, {	-- Candy Bucket — Dalaran : Northrend, Sunreaver's Sanctuary, Horde
					["provider"] = { "o", 194081 },	-- Candy Bucket, Dalaran
					["coord"] = { 66.6, 30.1, NORTHREND_DALARAN },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(29019, {	-- Candy Bucket — Deepholm, Temple of Earth, Horde
					["provider"] = { "o", 208181 },	-- Candy Bucket, Deepholm
					["coord"] = { 51.2, 50.0, DEEPHOLM },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12381, {	-- Candy Bucket — Desolace, Shadowprey Village, Horde
					["provider"] = { "o", 190083 },	-- Candy Bucket, Desolace
					["coord"] = { 24.1, 68.3, DESOLACE },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(13469, {	-- Candy Bucket — Dragonblight, Agmar's Hammer, Horde
					["provider"] = { "o", 194078 },	-- Candy Bucket, Dragonblight
					["coord"] = { 37.8, 46.4, DRAGONBLIGHT },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(13470, {	-- Candy Bucket — Dragonblight, Venomspite, Horde
					["provider"] = { "o", 194079 },	-- Candy Bucket, Dragonblight
					["coord"] = { 76.8, 63.2, DRAGONBLIGHT },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(12361, {	-- Candy Bucket — Durotar, Razor Hill, Horde
					["provider"] = { "o", 190064 },	-- Candy Bucket, Durotar
					["coord"] = { 51.6, 41.7, DUROTAR },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12383, {	-- Candy Bucket — Dustwallow Marsh, Brackenwall Village, Horde
					["provider"] = { "o", 190085 },	-- Candy Bucket, Dustwallow Marsh
					["coord"] = { 36.8, 32.4, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12365, {	-- Candy Bucket — Eversong Woods, Fairbreeze Village, Horde
					["provider"] = { "o", 190068 },	-- Candy Bucket, Eversong Woods
					["coord"] = { 43.7, 71.1, EVERSONG_WOODS },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12364, {	-- Candy Bucket — Eversong Woods, Falconwing Square, Horde
					["provider"] = { "o", 190067 },	-- Candy Bucket, Eversong Woods
					["coord"] = { 48.1, 47.8, EVERSONG_WOODS },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28996, {	-- Candy Bucket — Feralas, Camp Ataya, Horde
					["provider"] = { "o", 208160 },	-- Candy Bucket, Feralas
					["coord"] = { 41.4, 15.6, FERALAS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12386, {	-- Candy Bucket — Feralas, Camp Mojache, Horde
					["provider"] = { "o", 190088 },	-- Candy Bucket, Feralas
					["coord"] = { 74.8, 45.1, FERALAS },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28998, {	-- Candy Bucket — Feralas, Stonemaul Hold, Horde
					["provider"] = { "o", 208161 },	-- Candy Bucket, Feralas
					["coord"] = { 52.0, 47.7, FERALAS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12373, {	-- Candy Bucket — Ghostlands, Tranquillien, Horde
					["provider"] = { "o", 190075 },	-- Candy Bucket, Ghostlands
					["coord"] = { 48.7, 31.9, GHOSTLANDS },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12947, {	-- Candy Bucket — Grizzly Hills, Camp Oneqwah, Horde
					["provider"] = { "o", 191881 },	-- Candy Bucket, Grizzly Hills
					["coord"] = { 65.4, 47.0, GRIZZLY_HILLS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(12946, {	-- Candy Bucket — Grizzly Hills, Conquest Hold, Horde
					["provider"] = { "o", 191880 },	-- Candy Bucket, Grizzly Hills
					["coord"] = { 20.9, 64.7, GRIZZLY_HILLS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(12389, {	-- Candy Bucket — Hellfire Peninsula, Falcon Watch, Horde
					["provider"] = { "o", 190091 },	-- Candy Bucket, Hellfire Peninsula
					["coord"] = { 26.9, 59.6, HELLFIRE_PENINSULA },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12388, {	-- Candy Bucket — Hellfire Peninsula, Thrallmar, Horde
					["provider"] = { "o", 190090 },	-- Candy Bucket, Hellfire Peninsula
					["coord"] = { 56.8, 37.5, HELLFIRE_PENINSULA },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28962, {	-- Candy Bucket — Hillsbrad Foothills, Eastpoint Tower, Horde
					["provider"] = { "o", 208145 },	-- Candy Bucket, Hillsbrad Foothills
					["coord"] = { 60.3, 63.8, HILLSBRAD_FOOTHILLS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12376, {	-- Candy Bucket — Hillsbrad Foothills, Tarren Hill, Horde
					["provider"] = { "o", 190078 },	-- Candy Bucket, Hillsbrad Foothills
					["coord"] = { 57.9, 47.3, HILLSBRAD_FOOTHILLS },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(13464, {	-- Candy Bucket — Howling Fjord, Camp Winterhoof, Horde
					["provider"] = { "o", 194073 },	-- Candy Bucket, Howling Fjord
					["coord"] = { 49.5, 10.8, HOWLING_FJORD },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(13465, {	-- Candy Bucket — Howling Fjord, New Agamand, Horde
					["provider"] = { "o", 194074 },	-- Candy Bucket, Howling Fjord
					["coord"] = { 52.1, 66.2, HOWLING_FJORD },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(13466, {	-- Candy Bucket — Howling Fjord, Vengeance Landing, Horde
					["provider"] = { "o", 194075 },	-- Candy Bucket, Howling Fjord
					["coord"] = { 79.2, 30.6, HOWLING_FJORD },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(32020, {	-- Candy Bucket — Krasarang Wilds, Dawnchaser Retreat, Horde
					["provider"] = { "o", 215873 },	-- Candy Bucket, Krasarang Wilds
					["coord"] = { 28.3, 50.7, KRASARANG_WILDS },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32047, {	-- Candy Bucket — Krasarang Wilds, Thunder Cleft, Horde
					["provider"] = { "o", 215904 },	-- Candy Bucket, Krasarang Wilds
					["coord"] = { 61.0, 25.1, KRASARANG_WILDS },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32040, {	-- Candy Bucket — Kun-Lai Summit, Eastwind Rest, Horde
					["provider"] = { "o", 215898 },	-- Candy Bucket, Kun-Lai Summit
					["coord"] = { 62.7, 80.5, KUN_LAI_SUMMIT },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(12362, {	-- Candy Bucket — Mulgore, Bloodhoof Village, Horde
					["provider"] = { "o", 190065 },	-- Candy Bucket, Mulgore
					["coord"] = { 46.8, 60.4, MULGORE },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12392, {	-- Candy Bucket — Nagrand, Garadar, Horde
					["provider"] = { "o", 190098 },	-- Candy Bucket, Nagrand
					["coord"] = { 56.7, 34.6, NAGRAND },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12374, {	-- Candy Bucket — Northern Barrens, Crossroads, Horde
					["provider"] = { "o", 190076 },	-- Candy Bucket, Northern Barrens
					["timeline"] = { ADDED_2_0_1 },
					["coords"] = {
						-- #if AFTER CATA
						{ 49.5, 58.0, NORTHERN_BARRENS },
						-- #else
						{ 52.0, 29.9, THE_BARRENS },
						-- #endif
					},
				}),
				candybucket(29002, {	-- Candy Bucket — Northern Barrens, Grol'dom Farm, Horde
					["provider"] = { "o", 208165 },	-- Candy Bucket, Northern Barrens
					["coord"] = { 56.3, 40.1, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(29003, {	-- Candy Bucket — Northern Barrens, Nozzlepot's Outpost, Horde
					["provider"] = { "o", 208166 },	-- Candy Bucket, Northern Barrens
					["coord"] = { 62.5, 16.6, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12382, {	-- Candy Bucket — Northern Stranglethorn, Grom'gol Base Camp, Horde
					["provider"] = { "o", 190084 },	-- Candy Bucket, Northern Stranglethorn
					["coord"] = { 37.3, 51.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12366, {	-- Candy Bucket — Orgrimmar, Valley of Strength, Horde
					["provider"] = { "o", 190069 },	-- Candy Bucket, Orgrimmar
					["coord"] = { 53.8, 78.8, ORGRIMMAR },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12395, {	-- Candy Bucket — Shadowmoon Valley, Shadowmoon Village, Horde
					["provider"] = { "o", 190101 },	-- Candy Bucket, Shadowmoon Valley
					["coord"] = { 30.3, 27.8, SHADOWMOON_VALLEY },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12370, {	-- Candy Bucket — Silvermoon City, The Bazaar, Horde
					["provider"] = { "o", 190073 },	-- Candy Bucket, Silvermoon City
					["coord"] = { 67.6, 73.2, SILVERMOON_CITY },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12369, {	-- Candy Bucket — Silvermoon City, The Royal Exchange, Horde
					["provider"] = { "o", 190072 },	-- Candy Bucket, Silvermoon City
					["coord"] = { 79.6, 57.9, SILVERMOON_CITY },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28966, {	-- Candy Bucket — Silverpine Forest, Forsaken Rear Guard, Horde
					["provider"] = { "o", 208146 },	-- Candy Bucket, Silverpine Forest
					["coord"] = { 44.3, 20.4, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12371, {	-- Candy Bucket — Silverpine Forest, The Sepulcher, Horde
					["provider"] = { "o", 190074 },	-- Candy Bucket, Silverpine Forest
					["coord"] = { 46.4, 42.8, SILVERPINE_FOREST },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12375, {	-- Candy Bucket — Southern Barrens, Camp Taurajo, Horde
					["provider"] = { "o", 190077 },	-- Candy Bucket, Camp Taurajo
					-- #if BEFORE CATA
					["coord"] = { 45.6, 59.1, THE_BARRENS },
					-- #endif
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_1 },
				}),
				candybucket(29005, {	-- Candy Bucket — Southern Barrens, Desolation Hold, Horde
					["provider"] = { "o", 208168 },	-- Candy Bucket, Southern Barrens
					["coord"] = { 40.7, 69.3, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(29004, {	-- Candy Bucket — Southern Barrens, Hunter's Hill, Horde
					["provider"] = { "o", 208167 },	-- Candy Bucket, Southern Barrens
					["coord"] = { 39.3, 20.1, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(29009, {	-- Candy Bucket — Stonetalon Mountains, Krom'gar Fortress, Horde
					["provider"] = { "o", 208172 },	-- Candy Bucket, Stonetalon Mountains
					["coord"] = { 66.5, 64.2, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12378, {	-- Candy Bucket — Stonetalon Mountains, Sun Rock Retreat, Horde
					["provider"] = { "o", 190080 },	-- Candy Bucket, Stonetalon Mountains
					["coord"] = { 50.4, 63.8, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12384, {	-- Candy Bucket — Swamp of Sorrows, Stonard, Horde
					["provider"] = { "o", 190086 },	-- Candy Bucket, Swamp of Sorrows
					["coord"] = { 46.9, 56.7, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12391, {	-- Candy Bucket — Terokkar Forest, Stonebreaker Hold, Horde
					["provider"] = { "o", 190097 },	-- Candy Bucket, Terokkar Forest
					["coord"] = { 48.8, 45.2, TEROKKAR_FOREST },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28969, {	-- Candy Bucket — The Cape of Stranglethorn, Hardwrench Hideaway, Horde
					["provider"] = { "o", 208147 },	-- Candy Bucket, The Cape of Stranglethorn
					["coord"] = { 35.1, 27.2, THE_CAPE_OF_STRANGLETHORN },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28971, {	-- Candy Bucket — The Hinterlands, Hiri'watha Research Station, Horde
					["provider"] = { "o", 208148 },	-- Candy Bucket, The Hinterlands
					["coord"] = { 31.9, 57.9, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12387, {	-- Candy Bucket — The Hinterlands, Revantusk Village, Horde
					["provider"] = { "o", 190089 },	-- Candy Bucket, The Hinterlands
					["coord"] = { 78.2, 81.4, THE_HINTERLANDS },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(32028, {	-- Candy Bucket — The Jade Forest, Grookin Hill, Horde
					["provider"] = { "o", 215881 },	-- Candy Bucket, The Jade Forest
					["coord"] = { 28.0, 47.4, THE_JADE_FOREST },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(32050, {	-- Candy Bucket — The Jade Forest, Honeydew Village, Horde
					["provider"] = { "o", 215908 },	-- Candy Bucket, The Jade Forest
					["coord"] = { 28.5, 13.3, THE_JADE_FOREST },
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(13471, {	-- Candy Bucket — The Storm Peaks, Camp Tunka'lo, Horde
					["provider"] = { "o", 194080 },	-- Candy Bucket, The Storm Peaks
					["coord"] = { 67.6, 50.6, THE_STORM_PEAKS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(13548, {	-- Candy Bucket — The Storm Peaks, Grom'arsh Crash Site, Horde
					["provider"] = { "o", 194119 },	-- Candy Bucket, The Storm Peaks
					["coord"] = { 37.1, 49.6, THE_STORM_PEAKS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				candybucket(75682, {	-- Candy Bucket — The Waking Shores, Wild Coast
					["provider"] = { "o", 401736 },	-- Candy Bucket, The Waking Shores
					["coord"] = { 80.4, 27.9, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_1_5 },
				}),
				candybucket(12379, {	-- Candy Bucket — Thousand Needles, Freewind Post, Horde (removed)
					["provider"] = { "o", 190081 },	-- Candy Bucket, Thousand Needles
					["coord"] = { 46.1, 51.4, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_1 },
				}),
				candybucket(12367, {	-- Candy Bucket — Thunder Bluff, Lower Rise, Horde
					["provider"] = { "o", 190070 },	-- Candy Bucket, Thunder Bluff
					["coord"] = { 45.7, 64.5, THUNDER_BLUFF },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(12363, {	-- Candy Bucket — Tirisfal Glades, Brill, Horde
					["provider"] = { "o", 190066 },	-- Candy Bucket, Tirisfal Glades
					["coord"] = { 60.9, 51.5, TIRISFAL_GLADES },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(28972, {	-- Candy Bucket — Tirisfal Glades, The Bulwark, Horde
					["provider"] = { "o", 208149 },	-- Candy Bucket, Tirisfal Glades
					["coord"] = { 83.0, 72.0, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28973, {	-- Candy Bucket — Twilight Highlands, Bloodgulch, Horde
					["provider"] = { "o", 208150 },	-- Candy Bucket, Twilight Highlands
					["coord"] = { 53.4, 42.9, TWILIGHT_HIGHLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28974, {	-- Candy Bucket — Twilight Highlands, Crushblow, Horde
					["provider"] = { "o", 208151 },	-- Candy Bucket, Twilight Highlands
					["coord"] = { 45.1, 76.7, TWILIGHT_HIGHLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28975, {	-- Candy Bucket — Twilight Highlands, Dragonmaw Post, Horde
					["provider"] = { "o", 208152 },	-- Candy Bucket, Twilight Highlands
					["coord"] = { 75.3, 54.8, TWILIGHT_HIGHLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28976, {	-- Candy Bucket — Twilight Highlands, Krazzworks, Horde
					["provider"] = { "o", 208153 },	-- Candy Bucket, Twilight Highlands
					["coord"] = { 75.4, 16.5, TWILIGHT_HIGHLANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12368, {	-- Candy Bucket — Undercity, The Trade Quarter, Horde
					["provider"] = { "o", 190071 },	-- Candy Bucket, Undercity
					["coord"] = { 67.7, 37.9, UNDERCITY },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(32022, {	-- Candy Bucket — Vale of Eternal Blossoms, Shrine of Two Moons, Horde
					["provider"] = { "o", 215875 },	-- Candy Bucket, Vale of Eternal Blossoms
					["coord"] = { 61.9, 16.1, VALE_OF_ETERNAL_BLOSSOMS },
					["coords"] = {
						{ 61.9, 16.1, VALE_OF_ETERNAL_BLOSSOMS },
						{ 57.7, 77.3, SHRINE_OF_TWO_MOONS },
					},
					["timeline"] = { ADDED_5_0_4 },
				}),
				candybucket(28984, {	-- Candy Bucket — Vashj'ir, Legion's Rest, Horde
					["provider"] = { "o", 208154 },	-- Candy Bucket, Shimmering Expanse
					["coord"] = { 51.5, 62.5, VASHJIR_SHIMMERING_EXPANSE },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28986, {	-- Candy Bucket — Vashj'ir, Tenebrous Cavern, Horde
					["provider"] = { "o", 208155 },	-- Candy Bucket, Abyssal Depths
					["coord"] = { 51.3, 60.6, VASHJIR_ABYSSAL_DEPTHS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(28987, {	-- Candy Bucket — Western Plaguelands, Andorhal, Horde
					["provider"] = { "o", 208156 },	-- Candy Bucket, Western Plaguelands
					["coord"] = { 48.2, 63.7, WESTERN_PLAGUELANDS },
					["timeline"] = { ADDED_4_1_0 },
				}),
				candybucket(12390, {	-- Candy Bucket — Zangarmarsh, Zabra'jin, Horde
					["provider"] = { "o", 190096 },	-- Candy Bucket, Zangarmarsh
					["coord"] = { 30.7, 50.9, ZANGARMARSH },
					["timeline"] = { ADDED_2_0_1 },
				}),
				candybucket(54709, {	-- Candy Bucket — Zuldazar, Dazar'alor, Horde
					["provider"] = { "o", 316754 },	-- Candy Bucket, The Great Seal
					["coord"] = { 49.6, 82.3, THE_GREAT_SEAL },
					["timeline"] = { ADDED_8_0_1 },
					["maps"] = {
						HALL_OF_CHRONICLERS,
						DAZARALOR,
					},
				}),
			},
		})),
	}),
	n(QUESTS, {
		q(12135, {	-- "Let the Fires Come!" (Alliance)
			["qg"] = 24519,	-- Costumed Orphan Matron
			["coords"] = {
				{ 60.8, 53.6, AZUREMYST_ISLE },
				-- #if AFTER CATA
				{ 53.4, 51.5, DUN_MOROGH },
				-- #else
				{ 46.2, 53.1, DUN_MOROGH },
				-- #endif
				{ 42.6, 64.6, ELWYNN_FOREST },
			},
			["timeline"] = { ADDED_2_0_1 },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm original level requirement
			["groups"] = {
				-- #if AFTER CATA
				i(33226),	-- Tricky Treat
				-- #else
				i(20557),	-- Hallow's End Pumpkin Treat
				-- #endif
				i(34068),	-- Weighted Jack-o'-Lantern
			},
		}),
		q(12139, {	-- "Let the Fires Come!" (Horde)
			["qg"] = 23973,	-- Masked Orphan Matron
			["coords"] = {
				{ 52.6, 41.5, DUROTAR },
				{ 47.2, 46.4, EVERSONG_WOODS },
				{ 60.8, 53.6, TIRISFAL_GLADES },
			},
			["timeline"] = { ADDED_2_0_1 },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm original level requirement
			["groups"] = {
				-- #if AFTER CATA
				i(33226),	-- Tricky Treat
				-- #else
				i(20557),	-- Hallow's End Pumpkin Treat
				-- #endif
				i(34068),	-- Weighted Jack-o'-Lantern
			},
		}),
		q(29430, {	-- A Friend in Need (Alliance)
			["qg"] = 51934,	-- Gretchen Fenlow
			["coord"] = { 32.3, 50.9, ELWYNN_FOREST },
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = lvlsquish(10, 10, 1),
		}),
		q(29431, {	-- A Friend in Need (Horde)
			["qg"] = 53763,	-- Candace Fenlow
			["coord"] = { 62.4, 66.7, TIRISFAL_GLADES },
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = lvlsquish(10, 10, 1),
		}),
		q(29074, {	-- A Season for Celebration (Alliance)
			["qgs"] = {
				18927,	-- Human Commoner
				19148,	-- Dwarf Commoner
				19171,	-- Draenei Commoner
				19172,	-- Gnome Commoner
				19173,	-- Night Elf Commoner
				20102,	-- Goblin Commoner
			},
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = {
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
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
		}),
		q(29400, {	-- A Season for Celebration (Horde)
			["qgs"] = {
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
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = {
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
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
		}),
		q(53122, {	-- A Season for Celebration (Horde - New Tirisfal Glades)
			["qgs"] = {
				19169,	-- Blood Elf Commoner
				19175,	-- Orc Commoner
				19176,	-- Tauren Commoner
				19177,	-- Troll Commoner
				19178,	-- Forsaken Commoner
				20102,	-- Goblin Commoner
			},
			["timeline"] = { ADDED_8_0_1 },
			["maps"] = {
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
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
		}),
		q(29377, {	-- A Time to Break Down
			["sourceQuests"] = {
				29400,	-- A Season for Celebration (Horde)
				-- #if AFTER 8.0.1
				53122,	-- A Season for Celebration (Horde - New Tirisfal Glades)
				-- #endif
			},
			["qg"] = 15197,	-- Darkcaller Yanka
			["coord"] = { 62.0, 67.8, TIRISFAL_GLADES },
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = { ELWYNN_FOREST },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Douse the Alliance's Wickerman
					["provider"] = { "i", 68647 },	-- Dousing Agent
					["coord"] = { 32.1, 50.6, ELWYNN_FOREST },
				}),
				i(33226),	-- Tricky Treat
			},
		}),
		q(29376, {	-- A Time to Build Up
			["sourceQuests"] = {
				29400,	-- A Season for Celebration (Horde)
				-- #if AFTER 8.0.1
				53122,	-- A Season for Celebration (Horde - New Tirisfal Glades)
				-- #endif
			},
			["qg"] = 15197,	-- Darkcaller Yanka
			["coord"] = { 62.0, 67.8, TIRISFAL_GLADES },
			["timeline"] = { ADDED_4_0_1 },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["groups"] = {
				i(33226),	-- Tricky Treat
			},
		}),
		q(29075, {	-- A Time to Gain
			["sourceQuest"] = 29074,	-- A Season for Celebration (Alliance)
			["qg"] = 51665,	-- Celestine of the Harvest
			["coord"] = { 32, 50.4, ELWYNN_FOREST },
			["timeline"] = { ADDED_4_0_1 },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["groups"] = {
				i(33226),	-- Tricky Treat
			},
		}),
		q(29371, {	-- A Time to Lose
			["sourceQuest"] = 29074,	-- A Season for Celebration (Alliance)
			["qg"] = 52064,	-- Keira
			["coord"] = { 32, 50.4, ELWYNN_FOREST },
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = { TIRISFAL_GLADES },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Douse the Horde's Wickerman
					["provider"] = { "i", 68648 },	-- Dousing Agent
					["coord"] = { 62, 67.8, TIRISFAL_GLADES },
				}),
				i(33226),	-- Tricky Treat
			},
		}),
		q(43259, {	-- Beware of the Crooked Tree
			["qg"] = 109854,	-- Duroc Ironjaw
			["coord"] = { 47.4, 40.6, LEGION_DALARAN },
			["timeline"] = { ADDED_7_0_3 },
			["maps"] = { VALSHARAH },
			["isYearly"] = true,
			["lvl"] = lvlsquish(98, 98, 40),	-- TODO: Check Level Requirement
		}),
		q(11392, {	-- Call the Headless Horseman
			["sourceQuests"] = {
				11135,	-- The Headless Horseman
				11220,	-- The Headless Horseman
			},
			["provider"] = { "o", 186267 },	-- Pumpkin Shrine
			["timeline"] = { ADDED_2_0_1, REMOVED_3_3_0 },
			["maps"] = {
				SCARLET_MONASTERY,
				436,	-- Scarlet Monastery, Crusader's Chapel
			},
			["isDaily"] = true,
			-- #if AFTER WRATH
			["lvl"] = 75,
			-- #elseif AFTER TBC
			["lvl"] = 65,
			-- #endif
		}),
		q(29144, {	-- Clean Up in Stormwind
			["qg"] = 51934,	-- Gretchen Fenlow
			["coord"] = { 32.2, 50.8, ELWYNN_FOREST },
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm original level requirement
			["groups"] = {
				objective(1, {	-- Stink Bombs Removed
					["provider"] = { "i", 69191 },	-- Arcane Cleanser
				}),
				i(33226),	-- Tricky Treat
			},
		}),
		q(29375, {	-- Clean Up in Undercity
			["sourceQuests"] = {
				29400,	-- A Season for Celebration (Horde)
				-- #if AFTER 8.0.1
				53122,	-- A Season for Celebration (Horde - New Tirisfal Glades)
				-- #endif
			},
			["qg"] = 53763,	-- Candace Fenlow
			["coord"] = { 62.4, 66.7, TIRISFAL_GLADES },
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = { UNDERCITY },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm original level requirement
			["groups"] = {
				objective(1, {	-- Stink Bombs Removed
					["provider"] = { "i", 70727 },	-- Arcane Cleanser
				}),
				i(33226),	-- Tricky Treat
			},
		}),
		q(11356, {	-- Costumed Orphan Matron
			["qgs"] = {
				18927,	-- Human Commoner
				19148,	-- Dwarf Commoner
				19171,	-- Draenei Commoner
				19172,	-- Gnome Commoner
				19173,	-- Night Elf Commoner
				20102,	-- Goblin Commoner
			},
			["timeline"] = { ADDED_2_0_1 },
			["maps"] = {
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
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true
		}),
		q(1658, {	-- Crashing the Wickerman Festival
			["qg"] = 15199,	-- Sergeant Hartman
			["coord"] = { 50, 57.2, HILLSBRAD_FOOTHILLS },
			["timeline"] = { REMOVED_4_0_3 },
			["maps"] = { SILVERPINE_FOREST, TIRISFAL_GLADES },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = 25,
			["groups"] = {
				objective(1, {	-- Scout out the Forsaken's Wickerman Festival.
					["provider"] = { "o", 181672 },	-- Wickerman Effigy
					["coord"] = { 56, 69, TIRISFAL_GLADES },
				}),
				i(20557),	-- Hallow's End Pumpkin Treat
			},
		}),
		q(39721, {	-- Culling the Crew
			["qg"] = 96705,	-- Orukan
			["timeline"] = { ADDED_6_0_2 },
			["maps"] = {
				FROSTWALL,
				LUNARFALL,
				DRAENOR_SHADOWMOON_VALLEY,
			},
			["isDaily"] = true,
			["lvl"] = lvlsquish(100, 100, 40),
			["groups"] = {
				objective(1, {	-- 0/12 Boneship Crewman slain
					["crs"] = {
						96536,	-- Salty Dreg
						96538,	-- Brackish Cultivator
						96637,	-- Boneship Reveler
					},
				}),
				i(128658),	-- Spooky Supplies
			},
		}),
		q(29398, {	-- Fencing the Goods (Alliance)
			["sourceQuest"] = 29392,	-- Missing Heirlooms (Alliance)
			["qg"] = 53950,	-- Hired Courier
			["coords"] = {
				-- #if AFTER LEGION
				{ 24, 44.6, STORMWIND_CITY },
				-- #else
				{ 24.1, 44.8, STORMWIND_CITY },
				-- #endif
			},
			["timeline"] = { ADDED_4_0_1 },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = lvlsquish(10, 10, 1),
		}),
		q(29416, {	-- Fencing the Goods (Horde)
			["sourceQuest"] = 29415,	-- Missing Heirlooms (Horde)
			["qg"] = 54142,	-- Hired Courier
			["coord"] = { 57.4, 9, DUROTAR },
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["lvl"] = lvlsquish(10, 10, 1),
		}),
		q(11440, {	-- Fire Brigade Practice (Azuremyst Isle)
			["sourceQuest"] = 11356,	-- Costumed Orphan Matron
			["qg"] = 24519,	-- Costumed Orphan Matron
			["coord"] = { 49.2, 51.4, AZUREMYST_ISLE },
			["timeline"] = { ADDED_2_0_1 },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
			["groups"] = {
				objective(1, {	-- 0/5 Fight Fires
					["provider"] = { "i", 32971 },	-- Water Bucket
				}),
				-- #if AFTER CATA
				i(33226),	-- Tricky Treat
				-- #else
				i(20557),	-- Hallow's End Pumpkin Treat
				-- #endif
			},
		}),
		q(11360, {	-- Fire Brigade Practice (Elwynn Forest)
			["sourceQuest"] = 11356,	-- Costumed Orphan Matron
			["qg"] = 24519,	-- Costumed Orphan Matron
			["coord"] = { 42.6, 64.4, ELWYNN_FOREST },
			["timeline"] = { ADDED_2_0_1 },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
			["groups"] = {
				objective(1, {	-- 0/5 Fight Fires
					["provider"] = { "i", 32971 },	-- Water Bucket
				}),
				-- #if AFTER CATA
				i(33226),	-- Tricky Treat
				-- #else
				i(20557),	-- Hallow's End Pumpkin Treat
				-- #endif
			},
		}),
		q(11439, {	-- Fire Brigade Practice (Dun Morogh)
			["sourceQuest"] = 11356,	-- Costumed Orphan Matron
			["qg"] = 24519,	-- Costumed Orphan Matron
			["coords"] = {
				-- #if AFTER CATA
				{ 53.2, 51.4, DUN_MOROGH },
				-- #else
				{ 46.2, 53.1, DUN_MOROGH },
				-- #endif
			},
			["timeline"] = { ADDED_2_0_1 },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
			["groups"] = {
				objective(1, {	-- 0/5 Fight Fires
					["provider"] = { "i", 32971 },	-- Water Bucket
				}),
				-- #if AFTER CATA
				i(33226),	-- Tricky Treat
				-- #else
				i(20557),	-- Hallow's End Pumpkin Treat
				-- #endif
			},
		}),
		q(11361, {	-- Fire Training (Durotar)
			["sourceQuest"] = 11357,	-- Masked Orphan Matron
			["qg"] = 23973,	-- Masked Orphan Matron
			["coord"] = { 52.5, 41.2, DUROTAR },
			["timeline"] = { ADDED_2_0_1 },
			["races"] = HORDE_ONLY,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
			["groups"] = {
				objective(1, {	-- 0/5 Fight Fires
					["provider"] = { "i", 32971 },	-- Water Bucket
				}),
				-- #if AFTER CATA
				i(33226),	-- Tricky Treat
				-- #else
				i(20557),	-- Hallow's End Pumpkin Treat
				-- #endif
			},
		}),
		q(11450, {	-- Fire Training (Eversong Woods)
			["sourceQuest"] = 11357,	-- Masked Orphan Matron
			["qg"] = 23973,	-- Masked Orphan Matron
			["coord"] = { 47.2, 46.6, EVERSONG_WOODS },
			["timeline"] = { ADDED_2_0_1 },
			["races"] = HORDE_ONLY,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
			["groups"] = {
				objective(1, {	-- 0/5 Fight Fires
					["provider"] = { "i", 32971 },	-- Water Bucket
				}),
				-- #if AFTER CATA
				i(33226),	-- Tricky Treat
				-- #else
				i(20557),	-- Hallow's End Pumpkin Treat
				-- #endif
			},
		}),
		q(11449, {	-- Fire Training (Tirisfal Glades)
			["sourceQuest"] = 11357,	-- Masked Orphan Matron
			["qg"] = 23973,	-- Masked Orphan Matron
			["coords"] = {
				-- #if AFTER CATA
				{ 60.8, 53.6, TIRISFAL_GLADES },
				-- #else
				{ 60.9, 53.0, TIRISFAL_GLADES },
				-- #endif
			},
			["timeline"] = { ADDED_2_0_1 },
			["races"] = HORDE_ONLY,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
			["groups"] = {
				objective(1, {	-- 0/5 Fight Fires
					["provider"] = { "i", 32971 },	-- Water Bucket
				}),
				-- #if AFTER CATA
				i(33226),	-- Tricky Treat
				-- #else
				i(20557),	-- Hallow's End Pumpkin Treat
				-- #endif
			},
		}),
		q(39720, {	-- Foul Fertilizer
			["qg"] = 96705,	-- Orukan
			["timeline"] = { ADDED_6_0_2 },
			["maps"] = {
				FROSTWALL,
				LUNARFALL,
				DRAENOR_SHADOWMOON_VALLEY,
			},
			["isDaily"] = true,
			["lvl"] = lvlsquish(100, 100, 40),
			["groups"] = {
				objective(1, {	-- 0/8 Dread Fertilizer
					["provider"] = { "n", 96765 },	-- Dread Fertilizer
					["coord"] = { 40.4, 82.0, DRAENOR_SHADOWMOON_VALLEY },
				}),
				i(128658),	-- Spooky Supplies
			},
		}),
		q(11242, {	-- Free at Last! (Alliance)
			["qg"] = 23904,	-- Sir Thomas
			["timeline"] = { ADDED_2_0_1, REMOVED_4_0_1 },
			["maps"] = { SCARLET_MONASTERY },
			["cost"] = {
				{ "i", 33277, 1 },	-- Tome of Thomas Thomson
			},
			["races"] = ALLIANCE_ONLY,
			["lvl"] = lvlsquish(60, 60, 25),
		}),
		q(11403, {	-- Free at Last! (Horde)
			["qg"] = 23904,	-- Sir Thomas
			["timeline"] = { ADDED_2_0_1, REMOVED_4_0_1 },
			["maps"] = { SCARLET_MONASTERY },
			["cost"] = {
				{ "i", 33277, 1 },	-- Tome of Thomas Thomson
			},
			["races"] = HORDE_ONLY,
			["lvl"] = lvlsquish(60, 60, 25),
		}),
		q(8311, {	-- Hallow's End Treats for Jesper!
			["qg"] = 15310,	-- Jesper
			["coords"] = {
				-- #if AFTER CATA
				{ 32, 50.4, ELWYNN_FOREST },
				-- #elseif AFTER WRATH
				{ 56.6, 51.8, STORMWIND_CITY },
				-- #else
				{ 47.6, 35.4, STORMWIND_CITY },
				-- #endif
			},
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 1),
			["groups"] = {
				q(8356, {	-- Flexing for Nougat (Alliance)
					["qg"] = 6740,	-- Innkeeper Allison <Innkeeper>
					["coords"] = {
						-- #if AFTER WRATH
						{ 60.4, 75.3, STORMWIND_CITY },
						-- #else
						{ 52.6, 65.6, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Stormwind Nougat
							["questID"] = 8311,	-- Hallow's End Treats for Jesper!
							["provider"] = { "i", 20492 },	-- Stormwind Nougat
						}),
					},
				}),
				q(8355, {	-- Incoming Gumdrop (Alliance)
					["qg"] = 6826,	-- Talvash del Kissel
					["coord"] = { 36, 4, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						objective(2, {	-- 0/1 Gnomeregan Gumdrop
							["questID"] = 8311,	-- Hallow's End Treats for Jesper!
							["provider"] = { "i", 20494 },	-- Gnomeregan Gumdrop
						}),
					},
				}),
				q(8353, {	-- Chicken Clucking for a Mint (Alliance)
					["qg"] = 5111,	-- Innkeeper Firebrew <Innkeeper>
					["coord"] = { 18.6, 51.4, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						objective(3, {	-- 0/1 Ironforge Mint
							["questID"] = 8311,	-- Hallow's End Treats for Jesper!
							["provider"] = { "i", 20490 },	-- Ironforge Mint
						}),
					},
				}),
				q(8357, {	-- Dancing for Marzipan (Alliance)
					["qg"] = 6735,	-- Innkeeper Saelienne <Innkeeper>
					["coords"] = {
						-- #if AFTER CATA
						{ 62.4, 32.8, DARNASSUS },
						-- #else
						{ 67.2, 15.8, DARNASSUS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						objective(4, {	-- 0/1 Darnassus Marzipan
							["questID"] = 8311,	-- Hallow's End Treats for Jesper!
							["provider"] = { "i", 20496 },	-- Darnassus Marzipan
						}),
					},
				}),
				-- #if AFTER CATA
				i(33226),	-- Tricky Treat
				-- #else
				i(20557),	-- Hallow's End Pumpkin Treat
				-- #endif
			},
		}),
		q(8312, {	-- Hallow's End Treats for Spoops!
			["qg"] = 15309,	-- Spoops
			["coords"] = {
				-- #if AFTER CATA
				{ 67.4, 7, UNDERCITY },
				-- #elseif AFTER CATA
				{ 62.1, 66.4, TIRISFAL_GLADES },
				-- #else
				{ 71.2, 22.8, ORGRIMMAR },
				-- #endif
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 1),
			["groups"] = {
				q(8359, {	-- Flexing for Nougat (Horde)
					["qg"] = 6929,	-- Innkeeper Gryshka <Innkeeper>
					["coords"] = {
						-- #if AFTER LEGION
						{ 53.6, 78.8, ORGRIMMAR },
						-- #elseif AFTER CATA
						{ 54.2, 68.4, ORGRIMMAR },
						-- #else
						{ 54.2, 68.4, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Orgrimmar Nougat
							["questID"] = 8312,	-- Hallow's End Treats for Spoops!
							["provider"] = { "i", 20493 },	-- Orgrimmar Nougat
						}),
					},
				}),
				q(8358, {	-- Incoming Gumdrop (Horde)
					["qg"] = 11814,	-- Kali Remik
					["coords"] = {
						-- #if AFTER LEGION
						{ 32.6, 65, ORGRIMMAR },
						-- #elseif AFTER CATA
						{ 33.5, 64.9, ORGRIMMAR },
						-- #else
						{ 56.2, 74.2, DUROTAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						objective(2, {	-- 0/1 Darkspear Gumdrop
							["questID"] = 8312,	-- Hallow's End Treats for Spoops!
							["provider"] = { "i", 20495 },	-- Darkspear Gumdrop
						}),
					},
				}),
				q(8354, {	-- Chicken Clucking for a Mint (Horde)
					["qg"] = 6741,	-- Innkeeper Norman <Innkeeper>
					["coord"] = { 67.8, 38.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						objective(3, {	-- 0/1 Undercity Mint
							["questID"] = 8312,	-- Hallow's End Treats for Spoops!
							["provider"] = { "i", 20491 },	-- Undercity Mint
						}),
					},
				}),
				q(8360, {	-- Dancing for Marzipan (Horde)
					["qg"] = 6746,	-- Innkeeper Pala <Innkeeper>
					["coord"] = { 45.8, 64.4, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						objective(4, {	-- 0/1 Thunder Bluff Marzipan
							["questID"] = 8312,	-- Hallow's End Treats for Spoops!
							["provider"] = { "i", 20497 },	-- Thunder Bluff Marzipan
						}),
					},
				}),
				-- #if AFTER CATA
				i(33226),	-- Tricky Treat
				-- #else
				i(20557),	-- Hallow's End Pumpkin Treat
				-- #endif
			},
		}),
		q(11357, {	-- Masked Orphan Matron
			["qgs"] = {
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
			["timeline"] = { ADDED_2_0_1 },
			["maps"] = {
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
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true
		}),
		q(29392, {	-- Missing Heirlooms (Alliance)
			["sourceQuest"] = 29430,	-- A Friend in Need (Alliance)
			["qg"] = 53949,	-- Anson Hastings
			["coords"] = {
				-- #if AFTER LEGION
				{ 60.2, 75.2, STORMWIND_CITY },
				-- #else
				{ 61.1, 70.6, STORMWIND_CITY },
				-- #endif
			},
			["timeline"] = { ADDED_4_0_1 },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = lvlsquish(10, 10, 1),
		}),
		q(29415, {	-- Missing Heirlooms (Horde)
			["sourceQuest"] = 29431,	-- A Friend in Need (Horde)
			["qg"] = 54141,	-- Edgar Goodwin
			["coord"] = { 54.4, 77.6, ORGRIMMAR },
			["timeline"] = { ADDED_4_0_1 },
			["races"] = HORDE_ONLY,
			["lvl"] = lvlsquish(10, 10, 1),
		}),
		q(39719, {	-- Mutiny on the Boneship
			["qg"] = 96705,	-- Orukan
			["timeline"] = { ADDED_6_0_2 },
			["maps"] = {
				FROSTWALL,
				LUNARFALL,
				DRAENOR_SHADOWMOON_VALLEY,
			},
			["isDaily"] = true,
			["lvl"] = lvlsquish(100, 100, 40),
			["groups"] = {
				objective(1, {	-- Captain Bonerender slain
					["provider"] = { "n", 96535 },	-- Captain Bonerender
					["coord"] = { 38.8, 86.2, DRAENOR_SHADOWMOON_VALLEY },
				}),
				i(128658),	-- Spooky Supplies
			},
		}),
		q(8322, {	-- Rotten Eggs
			["qg"] = 15197,	-- Darkcaller Yanka
			["coords"] = {
				{ 55.6, 69.9, TIRISFAL_GLADES },
				{ 51.4, 59.0, HILLSBRAD_FOOTHILLS },
			},
			["timeline"] = { REMOVED_4_0_3 },
			["cost"] = {
				{ "i", 20605, 1 },	-- Rotten Eggs
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = 30,
		}),
		q(8409, {	-- Ruined Kegs
			["sourceQuest"] = 8322,	-- Rotten Eggs
			["provider"] = { "o", 180570 },	-- Keg
			["coord"] = { 51.4, 59.0, HILLSBRAD_FOOTHILLS },
			["timeline"] = { REMOVED_4_0_3 },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = 30,
			["groups"] = {
				i(20557),	-- Hallow's End Pumpkin Treat
			},
		}),
		q(29399, {	-- Shopping Around (Alliance)
			["sourceQuest"] = 29398,	-- Fencing the Goods (Alliance)
			["qg"] = 8719,	-- Auctioneer Fitch
			["coords"] = {
				-- #if AFTER LEGION
				{ 61.2, 70.8, STORMWIND_CITY },
				-- #else
				{ 61.1, 70.6, STORMWIND_CITY },
				-- #endif
			},
			["timeline"] = { ADDED_4_0_1 },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = lvlsquish(10, 10, 1),
		}),
		q(29425, {	-- Shopping Around (Horde)
			["sourceQuest"] = 29416,	-- Fencing the Goods (Horde)
			["qg"] = 44866,	-- Auctioneer Drezmit
			["coord"] = { 54, 73.4, ORGRIMMAR },
			["timeline"] = { ADDED_4_0_1 },
			["races"] = HORDE_ONLY,
			["lvl"] = lvlsquish(10, 10, 1),
		}),
		q(1657, {	-- Stinking Up Southshore
			["qg"] = 15197,	-- Darkcaller Yanka
			["coord"] = { 55.6, 69.9, TIRISFAL_GLADES },
			["timeline"] = { REMOVED_4_0_3 },
			["maps"] = { HILLSBRAD_FOOTHILLS },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = 25,
			["groups"] = {
				objective(1, {	-- Toss Stink Bomb into Southshore
					["provider"] = { "i", 20387 },	-- Forsaken Stink Bomb Cluster
					["coord"] = { 49.8, 57.9, HILLSBRAD_FOOTHILLS },
				}),
				i(20557),	-- Hallow's End Pumpkin Treat
			},
		}),
		q(39716, {	-- Smashing Squashlings
			["qg"] = 96705,	-- Orukan
			["timeline"] = { ADDED_6_0_2 },
			["maps"] = {
				FROSTWALL,
				LUNARFALL,
				DRAENOR_SHADOWMOON_VALLEY,
			},
			["isDaily"] = true,
			["lvl"] = lvlsquish(100, 100, 40),
			["groups"] = {
				objective(1, {	-- 0/6 Growing Squashling
					["provider"] = { "n", 96545 },	-- Growing Squashling
					["coord"] = { 40.4, 82.0, DRAENOR_SHADOWMOON_VALLEY },
				}),
				i(128658),	-- Spooky Supplies
			},
		}),
		q(12133, {	-- Smash the Pumpkin (Alliance)
			["provider"] = { "o", 186887 },	-- Large Jack-o'-Lantern
			["coords"] = {
				{ 60.8, 53.6, AZUREMYST_ISLE },
				{ 53.4, 51.5, DUN_MOROGH },
				{ 42.6, 64.6, ELWYNN_FOREST },
			},
			["timeline"] = { ADDED_2_0_1 },
			["cost"] = {
				{ "i", 36876, 1 },	-- Scorched Holy Symbol
			},
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
			["groups"] = {
				i(34077),	-- Crudely Wrapped Gift
			},
		}),
		q(12155, {	-- Smash the Pumpkin (Horde)
			["provider"] = { "o", 186887 },	-- Large Jack-o'-Lantern
			["coords"] = {
				{ 52.6, 41.5, DUROTAR },
				{ 47.2, 46.4, EVERSONG_WOODS },
				{ 60.8, 53.6, TIRISFAL_GLADES },
			},
			["timeline"] = { ADDED_2_0_1 },
			["cost"] = {
				{ "i", 36876, 1 },	-- Scorched Holy Symbol
			},
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
			["groups"] = {
				i(34077),	-- Crudely Wrapped Gift
			},
		}),
		q(29054, {	-- Stink Bombs Away! (Alliance)
			["sourceQuest"] = 29074,	-- A Season for Celebration (Alliance)
			["qg"] = 51934,	-- Gretchen Fenlow
			["coord"] = { 32.2, 50.8, ELWYNN_FOREST },
			["timeline"] = { ADDED_4_0_1 },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
			["groups"] = {
				objective(1, {	-- 0/25 Bombs Dropped
					["provider"] = { "n", 52548 },	-- Gertrude Fenlow
					["coord"] = { 32.2, 50.6, ELWYNN_FOREST },
				}),
				i(33226),	-- Tricky Treat
			},
		}),
		q(29374, {	-- Stink Bombs Away! (Horde)
			-- #if AFTER 8.0.1
			["sourceQuests"] = {
				29400,	-- A Season for Celebration (Horde)
				53122,	-- A Season for Celebration (Horde - New Tirisfal Glades)
			},
			-- #else
			["sourceQuest"] = 29400,	-- A Season for Celebration (Horde)
			-- #endif
			["qg"] = 53763,	-- Candace Fenlow
			["coord"] = { 62.4, 66.7, TIRISFAL_GLADES },
			["timeline"] = { ADDED_4_0_1 },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
			["groups"] = {
				objective(1, {	-- 0/25 Bombs Dropped
					["provider"] = { "n", 53764 },	-- Crina Fenlow
					["coord"] = { 62.2, 67.0, TIRISFAL_GLADES },
				}),
				i(33226),	-- Tricky Treat
			},
		}),
		q(11131, {	-- Stop the Fires! (Alliance)
			["sourceQuests"] = {
				11440,	-- Fire Brigade Practice [Azuremyst Isle]
				11439,	-- Fire Brigade Practice [Dun Morogh]
				11360,	-- Fire Brigade Practice [Elwynn Forest]
			},
			["qg"] = 24519,	-- Costumed Orphan Matron
			["coords"] = {
				{ 60.8, 53.6, AZUREMYST_ISLE },
				{ 53.4, 51.5, DUN_MOROGH },
				{ 42.6, 64.6, ELWYNN_FOREST },
			},
			["timeline"] = { ADDED_2_0_1 },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
			["groups"] = {
				objective(1, {	-- 0/1 Put Out the Fires
					["provider"] = { "i", 32971 },	-- Water Bucket
				}),
				i(20557),	-- Hallow's End Pumpkin Treat
				i(34068),	-- Weighted Jack-o'-Lantern
			},
		}),
		q(11219, {	-- Stop the Fires! (Horde)
			["sourceQuests"] = {
				11361,	-- Fire Training [Durotar]
				11450,	-- Fire Training [Eversong Woods]
				11449,	-- Fire Training [Tirisfal Glades]
			},
			["qg"] = 23973,	-- Masked Orphan Matron
			["coords"] = {
				{ 52.6, 41.5, DUROTAR },
				{ 47.2, 46.4, EVERSONG_WOODS },
				{ 60.8, 53.6, TIRISFAL_GLADES },
			},
			["timeline"] = { ADDED_2_0_1 },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["lvl"] = lvlsquish(10, 10, 10),	-- TODO: Confirm level requirement.
			["groups"] = {
				objective(1, {	-- 0/1 Put Out the Fires
					["provider"] = { "i", 32971 },	-- Water Bucket
				}),
				i(20557),	-- Hallow's End Pumpkin Treat
				i(34068),	-- Weighted Jack-o'-Lantern
			},
		}),
		q(29402, {	-- Taking Precautions (Alliance)
			["sourceQuest"] = 29399,	-- Shopping Around (Alliance)
			["qg"] = 54021,	-- Hudson Barnes
			["coord"] = { 64, 46.4, STORMWIND_CITY },
			["timeline"] = { ADDED_4_0_1 },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = lvlsquish(10, 10, 1),
			["groups"] = {
				-- #if AFTER 5.0.4
				objective(1, {	-- 0/2 Strange Dust
					["provider"] = { "i", 10940 },	-- Strange Dust
				}),
				objective(2, {	-- 0/5 Crystal Vial
					["provider"] = { "i", 3371 },	-- Crystal Vial
				}),
				-- #else
				objective(1, {	-- 0/5 Crystal Vial
					["provider"] = { "i", 3371 },	-- Crystal Vial
				}),
				objective(2, {	-- 0/5 Arcane Powder
					["provider"] = { "i", 17020 },	-- Arcane Powder
				}),
				-- #endif
				objective(3, {	-- 0/5 Blood Nettle
					["providers"] = {
						{ "i",  71035 },	-- Blood Nettle
						{ "o", 209059 },	-- Blood Nettle
					},
					["coord"] = { 51.5, 10.0, STORMWIND_CITY },
				}),
			},
		}),
		q(29426, {	-- Taking Precautions (Horde)
			["sourceQuest"] = 29425,	-- Shopping Around (Horde)
			["qg"] = 54146,	-- Delian Sunshade
			["coord"] = { 58, 48.2, ORGRIMMAR },
			["timeline"] = { ADDED_4_0_1 },
			["races"] = HORDE_ONLY,
			["lvl"] = lvlsquish(10, 10, 1),
			["groups"] = {
				-- #if AFTER 5.0.4
				objective(1, {	-- 0/2 Strange Dust
					["provider"] = { "i", 10940 },	-- Strange Dust
				}),
				objective(2, {	-- 0/5 Crystal Vial
					["provider"] = { "i", 3371 },	-- Crystal Vial
				}),
				-- #else
				objective(1, {	-- 0/5 Crystal Vial
					["provider"] = { "i", 3371 },	-- Crystal Vial
				}),
				objective(2, {	-- 0/5 Arcane Powder
					["provider"] = { "i", 17020 },	-- Arcane Powder
				}),
				-- #endif
				objective(3, {	-- 0/5 Blood Nettle
					["providers"] = {
						{ "i",  71035 },	-- Blood Nettle
						{ "o", 209059 },	-- Blood Nettle
					},
					["coord"] = { 45.9, 49.5, ORGRIMMAR },
				}),
			},
		}),
		q(29403, {	-- The Collector's Agent (Alliance)
			["sourceQuest"] = 29402,	-- Taking Precautions (Alliance)
			["qg"] = 54021,	-- Hudson Barnes
			["coord"] = { 64, 46.4, STORMWIND_CITY },
			["timeline"] = { ADDED_4_0_1 },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = lvlsquish(10, 10, 1),
			["groups"] = {
				objective(1, {	-- Meeting Disrupted
					["provider"] = { "n", 54114 },	-- Unleashed Void
					["coord"] = { 55.2, 43.6, STORMWIND_CITY },
				}),
			},
		}),
		q(29427, {	-- The Collector's Agent (Horde)
			["sourceQuest"] = 29426,	-- Taking Precautions (Horde)
			["qg"] = 54146,	-- Delian Sunshade
			["coord"] = { 58, 48.2, ORGRIMMAR },
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = { TIRISFAL_GLADES },
			["races"] = HORDE_ONLY,
			["lvl"] = lvlsquish(10, 10, 1),
			["groups"] = {
				objective(1, {	-- Meeting Disrupted
					["provider"] = { "n", 54114 },	-- Unleashed Void
					["coord"] = { 65.8, 74.2, TIRISFAL_GLADES },
				}),
			},
		}),
		q(29413, {	-- The Creepy Crate (Alliance)
			["sourceQuest"] = 29411,	-- What Now? (Alliance)
			["provider"] = { "o", 209076 },	-- Anson's Crate
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = lvlsquish(10, 10, 1),
			["groups"] = {
				i(71076, {	-- Creepy Crate (PET!)
					["timeline"] = { ADDED_4_2_0 },
				}),
			},
		}),
		q(29429, {	-- The Creepy Crate (Horde)
			["sourceQuest"] = 29428,	-- What Now? (Horde)
			["provider"] = { "o", 209095 },	-- Edgar's Crate
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["lvl"] = lvlsquish(10, 10, 1),
			["groups"] = {
				i(71076, {	-- Creepy Crate (PET!)
					["timeline"] = { ADDED_4_2_0 },
				}),
			},
		}),
		q(11135, {	-- The Headless Horseman (Alliance)
			["qg"] = 24519,	-- Costumed Orphan Matron
			["coords"] = {
				{ 49.2, 51.3, AZUREMYST_ISLE },
				-- #if AFTER CATA
				{ 53.3, 51.5, DUN_MOROGH },
				-- #elseif AFTER TBC
				{ 46.2, 53.1, DUN_MOROGH },
				-- #endif
				{ 42.6, 64.4, ELWYNN_FOREST },
			},
			["timeline"] = { ADDED_2_0_1, REMOVED_4_0_1 },
			["races"] = ALLIANCE_ONLY,
			-- #if AFTER WRATH
			["lvl"] = 75,
			-- #elseif AFTER TBC
			["lvl"] = 65,
			-- #endif
		}),
		q(11220, {	-- The Headless Horseman (Horde)
			["qg"] = 23973,	-- Masked Orphan Matron
			["coords"] = {
				{ 52.6, 41.2, DUROTAR },
				{ 47.3, 46.5, EVERSONG_WOODS },
				{ 60.9, 53.0, TIRISFAL_GLADES },
			},
			["timeline"] = { ADDED_2_0_1, REMOVED_4_0_1 },
			["races"] = HORDE_ONLY,
			-- #if AFTER WRATH
			["lvl"] = 75,
			-- #elseif AFTER TBC
			["lvl"] = 65,
			-- #endif
		}),
		q(8373, {	-- The Power of Pine
			["qg"] = 15199,	-- Sergeant Hartman
			["coord"] = { 50, 57.2, HILLSBRAD_FOOTHILLS },
			["timeline"] = { REMOVED_4_0_3 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = 25,
			["groups"] = {
				objective(1, {	-- Clean up a stink bomb that's been dropped on Southshore!
					["provider"] = { "i", 20604 },	-- Stink Bomb Cleaner
				}),
				i(20557),	-- Hallow's End Pumpkin Treat
			},
		}),
		q(43162, {	-- Under the Crooked Tree
			-- ["sourceQuest"] = 43259,	-- Beware of the Crooked Tree	[not required 2023-10-25]
			["qg"] = 109734,	-- Hag of the Crooked Tree
			["coord"] = { 34.9, 56.0, VALSHARAH },
			["timeline"] = { ADDED_7_0_3 },
			["isDaily"] = true,
			["lvl"] = lvlsquish(98, 98, 40),	-- TODO: Check Level Requirement
			["groups"] = {
				objective(1, {	-- Drink from the cauldron and release Aria Sorrowheart's spirit
					["provider"] = { "n", 109825 },	-- Aria Sorrowheart
					["coord"] = { 34.8, 55.6, VALSHARAH },
				}),
				i(139137, {	-- Hag's Belongings
					["sym"] = {
						{ "selectparent", 3 },	-- Select the holiday root.
						{ "pop" },	-- Get the Rewards.
						{ "where", "headerID", REWARDS },	-- Select the "Rewards" header.
						{ "pop" },	-- Get the Rewards.
						{ "contains", "itemID", 33226, unpack(WANDS_IDS) },	-- Tricky Treat & All the Wands
						{ "exclude", "itemID", 20413 },	-- Exclude Hallowed Wand - Random
					},
					["groups"] = {
						i(139133),	-- Hat of the First Sister
						i(139134),	-- Hat of the Second Sister
						i(139135),	-- Hat of the Third Sister
						i(139136),	-- Hat of the Youngest Sister
					},
				}),
			},
		}),
		q(29411, {	-- What Now? (Alliance)
			["description"] = "Does not matter who you give it to, you still get the pet!",
			["sourceQuest"] = 29403,	-- The Collector's Agent (Alliance)
			["provider"] = { "o", 209072 },	-- Stolen Crate
			["coord"] = { 55.3, 43.5, STORMWIND_CITY },
			["timeline"] = { ADDED_4_0_1 },
			["cost"] = {
				{ "i", 71057, 1 },	-- Recovered Crate
			},
			["races"] = ALLIANCE_ONLY,
			["lvl"] = lvlsquish(10, 10, 1),
		}),
		q(29428, {	-- What Now? (Horde)
			["description"] = "Does not matter who you give it to, you still get the pet!",
			["sourceQuest"] = 29427,	-- The Collector's Agent (Horde)
			["provider"] = { "o", 209094 },	-- Stolen Crate
			["coord"] = { 65.8, 74.8, TIRISFAL_GLADES },
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = { ORGRIMMAR },
			["cost"] = {
				{ "i", 71057, 1 },	-- Recovered Crate
			},
			["races"] = HORDE_ONLY,
			["lvl"] = lvlsquish(10, 10, 1),
		}),
		q(64546,	-- Visions of Sire Denathrius
		bubbleDownSelf({
			["timeline"] = { ADDED_9_1_0 },
			["customCollect"] = "SL_COV_VEN",
		},{
			["description"] = "Speak with Theotar within The Ember Court scenario to spawn the 'Vision of Sire Denathrius'. During the final Tribute stage, accept the quest to receive the permanent unlock for your Ember Court.",
			["crs"] = {
				165196,	-- Theotar (Inside Ember Court)
				164966,	-- Temel <The Party Herald> (with a hat)
			},
			["coords"] = {
				{ 28.0, 43.0, REVENDRETH },	-- with hat, outside Sinfall
			},
			["provider"] = { "n", 180458 },	-- Vision of Sire Denathrius
			["repeatable"] = true,	-- probably yearly, Blizzard API says it's daily, in practice it unflaggs right after completion
			["maps"] = { 1644 },	-- The Ember Court
			["groups"] = {
				i(181442),	-- Visions of Sire Denathrius (EC!)
			},
		})),
		q(76075, {	-- A Ghostly Message
			["qgs"] = {
				53869,	-- Orphan Matron Seacole (A)
				53865,	-- Orphan Matron Nanee (H)
			},
			["coords"] = {
				{ 31.9, 50, ELWYNN_FOREST },	-- Alliance
				{ 62.4, 66.6, TIRISFAL_GLADES },	-- Horde
			},
			["timeline"] = { ADDED_10_1_7 },
			["groups"] = {
				i(206596),	-- Tome of Thomas Thomson (QI!)
			},
		}),
		q(76072, {	-- Shades of Scarlet
			["sourceQuest"] = 76075,	-- A Ghostly Message
			["provider"] = { "n", 206158 },	-- Sir Thomas
			["coord"] = { 81.2, 44.6, TIRISFAL_GLADES },
			["timeline"] = { ADDED_10_1_7 },
			["groups"] = {
				i(33226),	-- Tricky Treat
			},
		}),
		q(76073, {	-- No Laughing Matter
			["sourceQuest"] = 76072,	-- Shades of Scarlet
			["provider"] = { "n", 205473 },	-- Sir Thomas
			["coord"] = { 82.4, 32.7, TIRISFAL_GLADES },
			["timeline"] = { ADDED_10_1_7 },
			["groups"] = {
				i(33226),	-- Tricky Treat
			},
		}),
		q(76074, {	-- The Headless Horseman, Returned
			["sourceQuest"] = 76073,	-- No Laughing Matter
			["provider"] = { "n", 205448 },	-- Suzannah
			["coord"] = { 83.5, 30.8, TIRISFAL_GLADES },
			["timeline"] = { ADDED_10_1_7 },
			["groups"] = {
				i(33226),	-- Tricky Treat
			},
		}),
		q(77779, {	-- The Tale of Sir Thomas
			["sourceQuest"] = 76074,	-- The Headless Horseman, Returned
			["provider"] = { "n", 209609 },	-- Sir Thomas
			["coord"] = { 43, 53, SCARLET_MONASTERY },
			["timeline"] = { ADDED_10_1_7 },
			["groups"] = {
				i(208769),	-- Tome of Thomas Thomson
			},
		}),
	}),
	n(RARES, {
		["timeline"] = { ADDED_6_2_2 },
		["groups"] = {
			n(96323, {	-- Arachnis
				["description"] = "|cFFFFD700Arachnis|r is only present in your Garrison once the |cFFFFD700Creepy Crawlers|r decoration is applied. This can be bought with |cFFFFD7005 Spooky Supplies|r from |cFFFFD700Izzy Hollyfizzle|r in your garrison. (This rare is available all year.)",
				["timeline"] = { ADDED_6_2_2 },
				["questID"] = 39617,
				["isDaily"] = true,
				["coords"] = {
					{ 56.5, 87.9, FROSTWALL },
					{ 74.5, 33.9, LUNARFALL },
				},
				["cost"] = {
					{ "i", 128664, 1 },	-- Creepy Crawlers
				},
				["groups"] = {
					i(128794),	-- Sack of Spectral Spiders (TOY!)
				},
			}),
		},
	}),
	n(REWARDS, appendGroups(MASKS_WITHOUT_COST, appendGroups(WANDS_WITHOUT_COST, {
		i(34077, {	-- Crudely Wrapped Gift
			["timeline"] = { ADDED_2_0_1 },
			-- #if BEFORE CATA
			["sym"] = {
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
			["groups"] = {
				i(36877),	-- Folded Letter
				-- #if BEFORE 4.0.1
				i(33189, {	-- Rickety Magic Broom
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_1 },
				}),
				-- #endif
				-- #if BEFORE CATA
				i(37586),	-- Handful of Treats
				-- #endif
				i(34068),	-- Weighted Jack-o'-Lantern
			},
		}),
		i(37586, {	-- Handful of Treats
			["timeline"] = { ADDED_2_4_3 },
			["sym"] = {
				-- #if AFTER WRATH
				-- Achievements
				{ "select", "achievementID", 972 },	-- Trick or Treat!
				{ "finalize" },	-- Push the processed items on to the finalized stack and ignore further queries on them.
				-- #endif
				-- #if AFTER 4.2.0
				-- Masks & Wands & Candy
				{ "selectparent" },	-- Select the "Rewards" header.
				{ "pop" },	-- Get the Rewards.
				{ "exclude", "itemID", 37586, 20393, 34077 },	-- Handful of Treats & Treat Bag
				-- #if AFTER CATA
				{ "exclude", "itemID", 20390, 20389, 20388 },	-- Exclude Candy Bar, Candy Corn, Lollipop
				-- #endif
				{ "exclude", "itemID", 69187, 69188, 69189, 69190, 69192, 69193, 69194, 69195 },	-- Exclude Murloc, Naga, Ogre, Vrykul Masks
				{ "exclude", "itemID", 20413 },	-- Exclude Hallowed Wand - Random
				{ "finalize" },	-- Push the processed items on to the finalized stack and ignore further queries on them.
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
			["description"] = "Get this by Trick or Treating at any Innkeeper.",
			["sym"] = {
				{ "selectparent" },	-- Select the "Rewards" header.
				{ "pop" },	-- Get the Rewards.
				{ "exclude", "itemID", 20393, 37586, 34077 },	-- Treat Bag & Crudely Wrapped Gift
				{ "select", "itemID", 33292, 33154 },	-- Hallowed Helm & Sinister Squashling
			},
			-- #endif
			["timeline"] = { REMOVED_4_2_0 },
		}),
		i(20390, {	-- Candy Bar
			["timeline"] = { REMOVED_4_0_1 },
		}),
		i(20389, {	-- Candy Corn
			["timeline"] = { REMOVED_4_0_1 },
		}),
		i(37585, {	-- Chewy Fel Taffy
			["timeline"] = { ADDED_2_4_3 },
		}),
		i(37583, {	-- G.N.E.R.D.S.
			["timeline"] = { ADDED_2_4_3 },
		}),
		i(20388, {	-- Lollipop
			["timeline"] = { REMOVED_4_0_1 },
		}),
		i(37606, {	-- Penny Pouch
			["timeline"] = { ADDED_2_4_3 },
		}),
		i(37582, {	-- Pyroblast Cinnamon Ball
			["timeline"] = { ADDED_2_4_3 },
		}),
		i(37584, {	-- Soothing Spearmint Candy
			["timeline"] = { ADDED_2_4_3 },
		}),
		i(37604, {	-- Tooth Pick
			["timeline"] = { ADDED_2_4_3 },
		}),
		i(33226, {	-- Tricky Treat
			["timeline"] = { ADDED_2_4_3 },
		}),
	}))),
	n(TREASURES, {
		o(244568, {	-- Spooky Pepe
			["description"] = "You need a Tier 3 garrison for this.",
			["coords"] = {
				{ 70.71, 90.21, FROSTWALL },	-- Pepe Location [Horde]
				{ 40.12, 70.06, LUNARFALL },	-- Pepe Location [Alliance]
			},
			["timeline"] = { ADDED_6_2_2 },
			["groups"] = {
				i(128874),	-- A Tiny Scarecrow Costume (Pepe!)
				ach(10365),	-- A Frightening Friend
			},
		}),
	}),
	-- #if AFTER 4.2.2
	n(VENDORS, {
		n(53757, {	-- Chub <Candy & Toy Vendor>
			["coord"] = { 62.1, 66.4, TIRISFAL_GLADES },
			["timeline"] = { ADDED_4_2_2 },
			["races"] = HORDE_ONLY,
			["groups"] = CANDY_AND_TOY_VENDOR_GROUPS,
		}),
		n(53756, {	-- Darla <Wand Vendor>
			["coord"] = { 62.2, 66.4, TIRISFAL_GLADES },
			["timeline"] = { ADDED_4_2_2 },
			["races"] = HORDE_ONLY,
			["groups"] = WANDS_WITH_COST,
		}),
		n(53728, {	-- Dorothy <Candy & Toy Vendor>
			["coord"] = { 31.8, 50.0, ELWYNN_FOREST },
			["timeline"] = { ADDED_4_2_2 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = CANDY_AND_TOY_VENDOR_GROUPS,
		}),
		n(53760, {	-- Farina <Mask Vendor>
			["coord"] = { 62.3, 66.4, TIRISFAL_GLADES },
			["timeline"] = { ADDED_4_2_2 },
			["races"] = HORDE_ONLY,
			["groups"] = MASKS_WITH_COST,
		}),
		n(96362, {	-- Izzy Hollyfizzle <Events Coordinator>
			["timeline"] = { ADDED_6_2_2 },
			["coords"] = {
				{ 47.3, 38.4, FROSTWALL },
				{ 44.2, 51.0, LUNARFALL },
			},
			["groups"] = {
				i(128664, {	-- Creepy Crawlers (CI!)
					["cost"] = { { "i", 128658, 5 }, },	-- 5x Spooky Supplies
				}),
				i(128660, {	-- Ghoulish Guises (CI!)
					["cost"] = { { "i", 128658, 5 }, },	-- 5x Spooky Supplies
				}),
				i(128661, {	-- Hallow's Glow (CI!)
					["cost"] = { { "i", 128658, 5 }, },	-- 5x Spooky Supplies
				}),
				i(128662, {	-- Seer's Invitation (CI!)
					["cost"] = { { "i", 128658, 5 }, },	-- 5x Spooky Supplies
				}),
				i(33226, {	-- Tricky Treat
					["cost"] = { { "i", 128658, 1 }, },	-- 1x Spooky Supplies
				}),
				i(128663, {	-- Witch's Brew (CI!)
					["cost"] = { { "i", 128658, 5 }, },	-- 5x Spooky Supplies
				}),
			},
		}),
		n(109685, {	-- Pippi <Pet Vendor>
			["coord"] = { 31.9, 50.2, ELWYNN_FOREST },
			["timeline"] = { ADDED_7_1_0 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = PET_VENDOR_GROUPS,
		}),
		n(164966,	-- Temel <The Party Herald> (with a hat)
		bubbleDownSelf({["timeline"] = { ADDED_9_1_0 }},{
			["coords"] = {
				{ 28.0, 43.0, REVENDRETH },	-- with hat, outside Sinfall
				{ 58.8, 80.0, SINFALL_REACHES },	-- without hat
			},
			["crs"] = { 172531 },	-- Temel <The Party Herald> (with no hat - combining these because they sell the same stuff)
			["groups"] = {
				i(187133, {	-- Bewitching Little Hat
					["cost"] = { { "c", 1820, 25 } },	-- 25x Infused Ruby
				}),
			},
		})),
		n(52497, {	-- Spanky <Mask Vendor>
			["coord"] = { 31.8, 50.0, ELWYNN_FOREST },
			["timeline"] = { ADDED_4_2_2 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = MASKS_WITH_COST,
		}),
		n(53702, {	-- Stymie <Wand Vendor>
			["coord"] = { 31.9, 50.1, ELWYNN_FOREST },
			["timeline"] = { ADDED_4_2_2 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = WANDS_WITH_COST,
		}),
		n(109688, {	-- Woim <Pet Vendor>
			["coord"] = { 62.3, 66.4, TIRISFAL_GLADES },
			["timeline"] = { ADDED_7_1_0 },
			["races"] = HORDE_ONLY,
			["groups"] = PET_VENDOR_GROUPS,
		}),
	}),
	-- #endif
	n(ZONE_DROPS, {
		i(128807, {	-- Coin of Many Faces (TOY!)
			["maps"] = { DRAENOR_SHADOWMOON_VALLEY },
			["timeline"] = { ADDED_6_0_2 },
			["crs"] = {
				96637,	-- Boneship Reveler
				96538,	-- Brackish Cultivator
				96535,	-- Captain Bonerender
				96545,	-- Growing Squashling
				96536,	-- Salty Dreg
			},
		}),
		i(33117, {	-- Jack-o'-Lantern
			["timeline"] = { ADDED_2_2_3 },
		}),
		i(20400),	-- Pumpkin Bag
		-- #if AFTER 6.0.1
		SPECTRAL_GROG,
		-- #endif
	}),
})));

-- Remove the holiday flag.
SPECTRAL_GROG.u = nil;

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_1_5 } }, {
	applyevent(EVENTS.HALLOWS_END, n(HALLOWS_END_HEADER, {
		q(77221),	-- Obtain The Scarlet Key (ID 208485)
		q(78474),	-- Killing Headless Horseman (needs more details)
		q(78478),	-- Killing Headless Horseman (needs more details)
		q(78826),	-- Killing Headless Horseman (needs more details)
	})),
})));
