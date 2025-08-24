-------------------------------------
--   P R E S E T S   M O D U L E   --
-------------------------------------
local Presets = {
	["DEATHKNIGHT"] = {
		[PLATE] = true,
		[ONE_HANDED_AXES] = true,
		[TWO_HANDED_AXES] = true,
		[ONE_HANDED_MACES] = true,
		[TWO_HANDED_MACES] = true,
		[ONE_HANDED_SWORDS] = true,
		[TWO_HANDED_SWORDS] = true,
		[POLEARMS] = true,
	},
	["DEMONHUNTER"] = {
		[LEATHER] = true,
		[ONE_HANDED_AXES] = true,
		[ONE_HANDED_SWORDS] = true,
		[FIST_WEAPONS] = true,
		[WARGLAIVES] = true,
	},
	["DRUID"] = {
		[LEATHER] = true,
		[DAGGERS] = true,
		[ONE_HANDED_MACES] = true,
		[TWO_HANDED_MACES] = true,
		[STAVES] = true,
		[POLEARMS] = true,
		[FIST_WEAPONS] = true,
	},
	["EVOKER"] = {
		[MAIL] = true,
		[DAGGERS] = true,
		[ONE_HANDED_AXES] = true,
		[TWO_HANDED_AXES] = true,
		[ONE_HANDED_MACES] = true,
		[TWO_HANDED_MACES] = true,
		[ONE_HANDED_SWORDS] = true,
		[TWO_HANDED_SWORDS] = true,
		[STAVES] = true,
		[FIST_WEAPONS] = true,
	},
	["HUNTER"] = {
		[MAIL] = true,
		[DAGGERS] = true,
		[ONE_HANDED_AXES] = true,
		[TWO_HANDED_AXES] = true,
		[ONE_HANDED_SWORDS] = true,
		[TWO_HANDED_SWORDS] = true,
		[STAVES] = true,
		[POLEARMS] = true,
		[GUNS] = true,
		[BOWS] = true,
		[CROSSBOWS] = true,
		[FIST_WEAPONS] = true,
	},
	["MAGE"] = {
		[CLOTH] = true,
		[DAGGERS] = true,
		[ONE_HANDED_SWORDS] = true,
		[STAVES] = true,
		[WANDS] = true,
	},
	["MONK"] = {
		[LEATHER] = true,
		[ONE_HANDED_AXES] = true,
		[ONE_HANDED_MACES] = true,
		[ONE_HANDED_SWORDS] = true,
		[STAVES] = true,
		[POLEARMS] = true,
		[FIST_WEAPONS] = true,
	},
	["PALADIN"] = {
		[PLATE] = true,
		[SHIELDS] = true,
		[ONE_HANDED_AXES] = true,
		[TWO_HANDED_AXES] = true,
		[ONE_HANDED_MACES] = true,
		[TWO_HANDED_MACES] = true,
		[ONE_HANDED_SWORDS] = true,
		[TWO_HANDED_SWORDS] = true,
		[POLEARMS] = true,
	},
	["PRIEST"] = {
		[CLOTH] = true,
		[DAGGERS] = true,
		[ONE_HANDED_MACES] = true,
		[STAVES] = true,
		[WANDS] = true,
	},
	["ROGUE"] = {
		[LEATHER] = true,
		[DAGGERS] = true,
		[ONE_HANDED_AXES] = true,
		[ONE_HANDED_MACES] = true,
		[ONE_HANDED_SWORDS] = true,
		[GUNS] = true,
		[BOWS] = true,
		[CROSSBOWS] = true,
		[FIST_WEAPONS] = true,
	},
	["SHAMAN"] = {
		[MAIL] = true,
		[SHIELDS] = true,
		[FIST_WEAPONS] = true,
		[DAGGERS] = true,
		[ONE_HANDED_AXES] = true,
		[TWO_HANDED_AXES] = true,
		[ONE_HANDED_MACES] = true,
		[TWO_HANDED_MACES] = true,
		[STAVES] = true,
	},
	["WARLOCK"] = {
		[CLOTH] = true,
		[DAGGERS] = true,
		[ONE_HANDED_SWORDS] = true,
		[WANDS] = true,
		[STAVES] = true,
	},
	["WARRIOR"] = {
		[PLATE] = true,
		[SHIELDS] = true,
		[DAGGERS] = true,
		[ONE_HANDED_AXES] = true,
		[TWO_HANDED_AXES] = true,
		[ONE_HANDED_MACES] = true,
		[TWO_HANDED_MACES] = true,
		[ONE_HANDED_SWORDS] = true,
		[TWO_HANDED_SWORDS] = true,
		[STAVES] = true,
		[POLEARMS] = true,
		[GUNS] = true,
		[BOWS] = true,
		[CROSSBOWS] = true,
		[FIST_WEAPONS] = true,
	},
}

-- Apply Common Transmog Filter Types
local CommonTransmogFilterTypes = {
	HELD_IN_OFF_HAND,
	COSMETIC,
	CLOAKS,
	TABARDS,
	SHIRTS,
	MISC,
	PROFESSION_EQUIPMENT,
}
for key,data in pairs(Presets) do
	for _,id in ipairs(CommonTransmogFilterTypes) do
		data[id] = true
	end
end

-- #if ANYCLASSIC
-- Classic needs an additional set of presets for transmogs. (They use one for loot mode and the other for transmog)
local PresetTransmogs = {
	["ALL"] = {
		[HELD_IN_OFF_HAND] = true,
		[COSMETIC] = true,
		[CLOAKS] = true,
		[CLOTH] = true,
		[LEATHER] = true,
		[MAIL] = true,
		[PLATE] = true,
		[SHIELDS] = true,
		[TABARDS] = true,
		[SHIRTS] = true,
		[DAGGERS] = true,
		[ONE_HANDED_AXES] = true,
		[TWO_HANDED_AXES] = true,
		[ONE_HANDED_MACES] = true,
		[TWO_HANDED_MACES] = true,
		[ONE_HANDED_SWORDS] = true,
		[TWO_HANDED_SWORDS] = true,
		[WANDS] = true,
		[STAVES] = true,
		[POLEARMS] = true,
		[GUNS] = true,
		[BOWS] = true,
		[CROSSBOWS] = true,
		[FIST_WEAPONS] = true,
		[WARGLAIVES] = true,
		[PROFESSION_EQUIPMENT] = true,
	},
};
for key,data in pairs(Presets) do
	local o = {};
	for id,state in pairs(data) do
		o[id] = state;
	end
	PresetTransmogs[key] = o;
end

-- Assign the Preset Transmogs to the ExportDB.
ExportDB._Compressed.PresetTransmogs = true
ExportDB.PresetTransmogs = PresetTransmogs;
-- #endif

-- #if BEFORE 4.0.0
-- Prior to Cataclysm, players could equip non-primary armor types and get better stats than their primary armor type would.
Presets.DRUID[CLOTH] = true;
Presets.HUNTER[LEATHER] = true;
Presets.PALADIN[CLOTH] = true;
Presets.PALADIN[LEATHER] = true;
Presets.PALADIN[MAIL] = true;
Presets.SHAMAN[CLOTH] = true;
Presets.SHAMAN[LEATHER] = true;
Presets.WARRIOR[LEATHER] = true;
Presets.WARRIOR[MAIL] = true;
-- #endif

-- #if BEFORE 5.0.0
-- Prior to Mists of Pandaria, Thrown weapons were a thing.
Presets.HUNTER[THROWN] = true;
Presets.ROGUE[THROWN] = true;
Presets.WARRIOR[THROWN] = true;

-- So were librams, relics, and stuff
Presets.DRUID[IDOLS] = true;
Presets.PALADIN[LIBRAMS] = true;
Presets.SHAMAN[TOTEMS] = true;
-- #endif

-- Common Filter types (Class doesn't matter)
-- Assign the Common Filter Types into each Preset
-- TODO: why do we have some filter types assigned if they cant have an impact on ATT filtering?
local CommonNonTransmogFilterTypes = {
	MISC,
	NECK_F,
	FINGER_F,
	TRINKET_F,
	CONSUMABLES,
	QUEST_ITEMS,
	BAGS,
	REAGENTS,				-- [Not Available in Settings]
	MOUNTS,					-- [Not Available in Settings]
	BATTLE_PETS,			-- [Not Available in Settings]
	TOYS,					-- [Not Available in Settings]
	ILLUSIONS,				-- [Not Available in Settings]
	HOLIDAY_ITEMS,			-- [Not Available in Settings]
	MOUNT_EQUIPMENT,		-- [Not Available in Settings]
	RECIPES,				-- [Not Available in Settings]
}
-- #if AFTER LEGION
CommonNonTransmogFilterTypes[#CommonNonTransmogFilterTypes + 1] = RELICS_F;	-- Artifact Relics
-- #endif
for key,data in pairs(Presets) do
	for _,id in ipairs(CommonNonTransmogFilterTypes) do
		data[id] = true
	end
end

-- Assign the Presets to the ExportDB.
ExportDB._Compressed.Presets = true
ExportDB.Presets = Presets;
