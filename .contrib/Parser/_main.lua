local AllowedNilGlobals = {
	CurrentSubFileName = 1,
}
_G = setmetatable(_G, { __index = function(t,key) if not AllowedNilGlobals[key] then print("ERROR: NON-EXISTENT-GLOBAL:",key) end end})
AllTheThings = {};
_ = AllTheThings;

-- #IMPORT: ..\\lib\\Constants
-- #IMPORT: ..\\lib\\Functions
-- #IMPORT: ..\\lib\\Headers
-- #IMPORT: ..\\lib\\Strings
-- #IMPORT: ..\\lib\\Structures

-----------------------------------------
-- P R I M A R Y   C A T E G O R I E S --
-----------------------------------------
assignRootCategoryHeader( 1, ROOTS.Instances, DUNGEONS_AND_RAIDS);
assignRootCategoryHeader( 2, ROOTS.Delves, DELVES);
assignRootCategoryHeader(10, ROOTS.Zones, OUTDOOR_ZONES, {
	mapID = 947,	-- Assign the Azeroth mapID. (is this necessary?
});
assignRootCategoryHeader(15, ROOTS.WorldDrops, WORLD_DROPS);
assignRootCategoryHeader(20, ROOTS.Craftables, CRAFTED_ITEMS, {
	DontEnforceSkillRequirements = true,
});
assignRootCategoryHeader(25, ROOTS.Professions, PROFESSIONS);
assignRootCategoryHeader(30, ROOTS.Holidays, HOLIDAYS, {
	difficultyID = 19,	-- 'Event' difficulty, allows auto-expand logic to find it when queueing special holiday dungeons
	SortType = "EventStart",
});
assignRootCategoryHeader(35, ROOTS.ExpansionFeatures, EXPANSION_FEATURES);

-----------------------------------------
-- L I M I T E D   C A T E G O R I E S --
-----------------------------------------
assignRootCategoryHeader(40, ROOTS.Character, CHARACTER);
assignRootCategoryHeader(45, ROOTS.Housing, HOUSING);
assignRootCategoryHeader(50, ROOTS.GroupFinder, DUNGEON_FINDER);
assignRootCategoryHeader(55, ROOTS.PVP, PVP);
assignRootCategoryHeader(65, ROOTS.Secrets, SECRETS);
assignRootCategoryHeader(75, ROOTS.WorldEvents, WORLD_EVENTS);

---------------------------------------
-- M A R K E T   C A T E G O R I E S --
---------------------------------------
-- 80: BMAH is in the BMAH file.
-- 85: In-Game Shop is in the In-Game Shop file.
assignRootCategoryHeader(90, ROOTS.Promotions, PROMOTIONS);
-- 95: Trading Post is in the Trading Post file.