-- CRIEVE NOTE: This file converts the ExplorationAreaPositionDB from the old format to the new one.
local explorationDB = ExportDB.ExplorationAreaPositionDB;
if explorationDB then
	local ipairs, tinsert = ipairs, table.insert;
	for areaID,areaCoords in next,explorationDB do
		if #areaCoords > 0 then
			-- Old Format detected, convert it to the [mapID] = {{ x, y }} format.
			local newCoords = {};
			for i,coord in ipairs(areaCoords) do
				local coordsForMap = newCoords[coord[3]];
				if not coordsForMap then
					coordsForMap = {};
					newCoords[coord[3]] = coordsForMap;
				end
				tinsert(coordsForMap, { coord[1], coord[2] });
			end
			explorationDB[areaID] = newCoords;
		end
	end
end