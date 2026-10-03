-- CRIEVE NOTE: This file converts the ExplorationAreaPositionDB from the old format to the new one.
local explorationDB = ExportDB.ExplorationAreaPositionDB;
if explorationDB then
	local ipairs, tinsert = ipairs, table.insert;
	for areaID,areaCoords in next,explorationDB do
		local arrayCoords = #areaCoords
		if arrayCoords > 0 then
			-- this happens when mapID = 1 is serialized as well since the key index of 1 results in #tbl == 1
			-- Old Format detected, convert it to the [mapID] = {{ x, y }} format.
			local newCoords = {}
			local mapID,coord
			for i=1,arrayCoords do
				coord = areaCoords[i]
				mapID = rawget(coord, 3)
				-- make sure there's a coord[3] defined and it wasn't auto-tabled due to ExportDB handling
				if mapID ~= nil and type(mapID) == "number" then
					local coordsForMap = newCoords[mapID];
					if not coordsForMap then
						coordsForMap = {};
						newCoords[mapID] = coordsForMap;
					end
					tinsert(coordsForMap, { coord[1], coord[2] });
				end
			end
			-- only re-assign if coords were actually converted
			if next(newCoords) then
				explorationDB[areaID] = newCoords;
			end
		end
	end
end
