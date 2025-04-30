-- When you encounter a bonusID or modID that needs a sourceID assignment,
-- you can lookup the sourceID in game and then look at the 
-- ItemModifiedAppearance table in WAGO to find the ID to use here.
root("ItemAppearanceModifierIDs_BonusID", {
	[1] = 1,
	[450] = 3,
	[4746] = 5,		-- ??
	[6894] = 153,	-- ??
	[6895] = 154,	-- ??
	[6896] = 155,	-- ??
	[6897] = 156,	-- ??
	[6898] = 157,	-- Gladiator
	[8107] = 158,	-- Elite Gladiator
	[7479] = 159,	-- ??
	[7532] = 160,	-- PvP Elite Gladiator
	[7897] = 159,	-- Gladiator??
});
root("ItemAppearanceModifierIDs_ModID", {
	[2] = 1,		-- DIFFICULTY.DUNGEON.HEROIC
	[3] = 1,
	[4] = 4,		-- DIFFICULTY.RAID.LFR
	[5] = 3,		-- DIFFICULTY.RAID.HEROIC
	[6] = 3,		-- DIFFICULTY.RAID.MYTHIC
	[8] = 159,
	[22] = 0,		-- DIFFICULTY.DUNGEON.TIMEWALKING
	[23] = 4,		-- DIFFICULTY.DUNGEON.MYTHIC
	[28] = 154,		-- ??
	[33] = 1,
	[35] = 1,
	[162] = 3,
});