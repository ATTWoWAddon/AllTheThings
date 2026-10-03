do
-- FlightPathDB --
-- Represents the mapID used by the game to show FlightPaths at a Flight Master
-- Missing ones will be reported in chat by ATT when 'Debugging' is set
local FlightPathMapIDs = {};
for i,mapID in ipairs({
	1464,	-- Kalimdor
	1463,	-- Eastern Kingdoms
	2665,	-- Zephras Isle
})
do table.insert(FlightPathMapIDs, mapID); end
ExportDB._Compressed.FlightPathDB = true
ExportDB.FlightPathDB = {FlightPathMapIDs = FlightPathMapIDs}
end
