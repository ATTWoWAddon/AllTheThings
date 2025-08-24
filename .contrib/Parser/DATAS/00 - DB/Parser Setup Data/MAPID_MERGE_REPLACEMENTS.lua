-- Intended to contain a set of MapID values and their respective 'real' MapID within the current game version
-- The purpose of this mapping is that Blizzard likes to maintain old map data on Achievement Criteria
-- which leads to the Criteria getting mapped under some non-existent or NYI map within ATT files
-- NYI maps are blanket ignored, but other maps are simply linked via 'maps' and are not directly sourced. This
-- small set of mapID replacements tells parser that instead of merging into one of these maps

-- Typically you'd add to this file when parser complains about a missing mapID:
-- "WARN: Failed to merge data which requires a Source: [mapID]:[###]"
-- but the missing map can't be sourced under NYI or Unsorted because it's used in 'maps' in available maps

MAPID_MERGE_REPLACEMENTS = {
	-- #if AFTER CATA
	[224] = THE_CAPE_OF_STRANGLETHORN,
	-- #endif
	-- #if AFTER 8.1.5
	[1339] = WARSONG_GULCH,
	-- #endif
	-- #if AFTER DF
	[2199] = THALDRASZUS,
	-- #endif
	-- #if AFTER TWW
	[2270] = AZJ_KAHET,
	[2271] = ISLE_OF_DORN,
	[2272] = THE_RINGING_DEEPS,
	[2273] = HALLOWFALL,
	-- #endif
}
