-- Identifies the first known patch of each Expansion tag
-- Currently only utilized to query additional game flavors from Wowhead if the Parse version matches a lower Wowhead version
-- NOTE: Classic usually follows this build number.
-- https://warcraft.wiki.gg/wiki/Patch

FIRST_EXPANSION_PATCH = {

	-- Key-Value Pair   -- Classic Release Version
	["UNKNOWN"] = { 0, 0, 0, 0 },        -- Unknown, invalid data.
	["CLASSIC"] = { 1, 0, 0, 22248 },    -- NOTE: Values for WoW-Classic
	["SEASON_OF_DISCOVERY"] = { 1, 15, 0, 22248 },
	["TBC"] = { 2, 0, 1, 22248 },        -- NOTE: Values for TBC-Classic
	["WRATH"] = { 3, 0, 2, 9056 },       -- NOTE: Values for Wrath-Classic
	["CATA"] = { 4, 0, 1, 13164 },
	["MOP"] = { 5, 0, 4, 16015 },
	["WOD"] = { 6, 0, 2, 18764 },
	["LEGION"] = { 7, 0, 1, 20740 },
	["BFA"] = { 8, 0, 1, 27026 },
	["SL"] = { 9, 0, 1, 36216 },
	["DF"] = { 10, 0, 0, 45335 },
	["TWW"] = { 11, 0, 0, 55793 },
	["MID"] = { 12, 0, 0, 52068 },   -- TODO
	["TLT"] = { 13, 0, 0, 52068 },   -- TODO

}
