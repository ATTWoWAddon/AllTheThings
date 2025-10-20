-- Defines the set of Fields which will be merged across all Sources of any object which matches the respective key Field
-- This makes it easy to ensure that certain types of groups always share common data, even when Sourced multiple times
-- e.g. if a group contains 'spellID=123' then all matching groups with 'spellID=123' will share the same 'type' and 'learnedAt' values

MERGE_OBJECT_FIELDS = {
	spellID = { "type","learnedAt" },
	recipeID = { "requireSkill","learnedAt" },
	speciesID = { "pb","crs" },
	instanceID = { "isRaid" },
	mapID = { "maps" },
	questID = { "type","sourceQuests","altQuests","isBreadcrumb","c","r","races","lvl","OnTooltip","_type","_area","_category","_text","name","description","nextQuests","isDaily","isMonthly","isYearly","repeatable","g" },
	itemID = { "_class","_subclass","_inventoryType","ignoreBonus","minReputation","spellID" },
}

-- Will eventually be removed as all 'merge' data is migrated to DB-scoped data
-- but dictates the allowed fields from any given Object which may be merged into matching
-- Objects elsewhere
MERGE_FROM_OBJECT_FIELDS = {
	recipeID = { "requireSkill" },
	speciesID = { "pb" },
	instanceID = { "isRaid" },
	mapID = { "maps" },
	questID = { "sourceQuests", "isBreadcrumb", "nextQuests" }
}
