do
-- #if FOREVER
if true then return; end
-- #endif

-- FlightPathDB --
-- Represents the mapID used by the game to show FlightPaths at a Flight Master
-- Missing ones will be reported in chat by ATT when 'Debugging' is set
local FlightPathMapIDs = {};
for i,mapID in ipairs({
	-- #if ANYCLASSIC
	KALIMDOR,
	EASTERN_KINGDOMS,
		-- #if AFTER TBC
		EVERSONG_WOODS,	-- Eversong Woods (and Ghostlands + Isle of Quel'Danas)
		AZUREMYST_ISLE,	-- Azuremyst Isle (and Bloodmyst)
		HELLFIRE_PENINSULA,	-- Hellfire Peninsula (All of Outland)
		-- #endif
		-- #if AFTER WRATH
		ICECROWN,			-- Icecrown (All of Northrend)
		-- #endif
	-- #else
	1209,	-- Kalimdor
	1208,	-- Eastern Kingdoms
		-- #if AFTER TBC
		1467,	-- Outland
		-- #endif
		-- #if AFTER WRATH
		1384,	-- Northrend
		-- #endif
	-- #endif

	-- #if AFTER MOP
		-- #if ANYCLASSIC
		PANDARIA,
		-- #else
		1923,	-- Pandaria
		-- #endif
	-- #endif

	-- #if AFTER WOD
	1922,	-- Draenor
	-- #endif

	-- #if AFTER LEGION
	993,	-- Broken Isle
	-- #endif

	-- #if AFTER 7.3.0
	994,	-- Argus (reported no flight points on this map...)
	-- #endif

	-- #if AFTER BFA
	1011,	-- Zandalar
	1014,	-- Kul Tiras
	-- #endif

	-- #if AFTER 8.3.0
	1504,	-- Nazjatar
	-- #endif

	-- #if AFTER SL
	1647,	-- The Shadowlands
	1409,	-- Exile's Reach
	-- #endif

	-- #if AFTER 9.2.0
	2046,	-- Zereth Mortis
	2055,	-- Sepulcher of the First Ones (has FPs inside)
	-- #endif

	-- #if AFTER DF
	2057,	-- Dragon Isles
	2149,	-- Ohn'ahran Plains [The Nokhud Offensive] (has FPs inside)
	-- #endif

	-- #if AFTER 10.1.0
	2175,	-- Zaralek Cavern
	-- #endif

	-- #if AFTER 10.2.0
	2241,	-- Emerald Dream
	-- #endif

	-- #if AFTER TWW
	2276,	-- Khaz Algar
	2298,	-- Nerub-ar Palace (has FPs inside)
	-- #endif

	-- #if AFTER 11.1.0
	2374,	-- Undermine
	-- #endif

	-- #if AFTER 11.2.0
	2398,	-- K'aresh
	-- #endif

	-- #if AFTER 11.2.7
	2401,	-- Alliance Housing District
	2402,	-- Horde Housing District
	-- #endif

	-- #if AFTER MID
	2481,	-- Eastern Kingdoms
	2480,	-- Harandar
	2479,	-- Voidstorm
	2540,	-- Sunkiller Sanctum
	-- #endif

	-- #if AFTER 12.0.7
	2623,	-- Naigtal
	2622,	-- Val
	-- #endif

	-- #if AFTER 12.1.5
	2671,	-- The Labyrinth of Kindo'Jan
	-- #endif
})
do table.insert(FlightPathMapIDs, mapID); end
ExportDB._Compressed.FlightPathDB = true
ExportDB.FlightPathDB = {FlightPathMapIDs = FlightPathMapIDs}
end
