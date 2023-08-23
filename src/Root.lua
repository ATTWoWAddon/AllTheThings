do
local appName, app = ...;

-- Performance Cache
local C_Map_GetPlayerMapPosition = C_Map.GetPlayerMapPosition;
local ipairs, tinsert, pairs
	= ipairs, tinsert, pairs;

-- Helper Functions (TODO: Define these somewhere and cache locally)
function distance( x1, y1, x2, y2 )
	return math.sqrt( (x2-x1)^2 + (y2-y1)^2 )
end

-- Build the Object Name Cache
local objectNamesToIDs = {};
for objectID,name in pairs(app.ObjectNames) do
	local o = objectNamesToIDs[name];
	if not o then
		o = { objectID };
		objectNamesToIDs[name] = o;
	else
		tinsert(o, objectID);
	end
end
app.GetBestObjectIDForName = function(name)
	local o = objectNamesToIDs[name];
	if o then
		if #o > 1 then
			local mapID = app.GetCurrentMapID();
			local pos = C_Map_GetPlayerMapPosition(mapID, "player");
			if pos then
				local px, py = pos:GetXY();
				px, py = px * 100, py * 100;
				local closestDistance, closestObjectID, dist = 99999, o[1];
				for i,objectID in ipairs(o) do
					local searchResults = app.SearchForField("objectID", objectID);
					if searchResults and #searchResults > 0 then
						for j,searchResult in ipairs(searchResults) do
							if searchResult.coord and searchResult.coord[3] == mapID then
								dist = distance(px, py, searchResult.coord[1], searchResult.coord[2]);
								if dist and dist < closestDistance then
									closestDistance = dist;
									closestObjectID = objectID;
								end
							elseif searchResult.coords then
								for k,coord in ipairs(searchResult.coords) do
									if coord[3] == mapID then
										dist = distance(px, py, coord[1], coord[2]);
										if dist and dist < closestDistance then
											closestDistance = dist;
											closestObjectID = objectID;
										end
									end
								end
							end
						end
					end
				end
				return closestObjectID;
			end
		end
		return o[1];
	end
end

-- Build the data cache now!
app.GetDataCache();
end