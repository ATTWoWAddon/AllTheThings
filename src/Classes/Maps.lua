local app = select(2, ...);
local L = app.L;

-- App locals
local contains = app.contains;

-- Global locals
local coroutine, ipairs, pairs, pcall, rawset, tinsert, tremove, tonumber, math_floor, math_sqrt, math_random
	= coroutine, ipairs, pairs, pcall, rawset, tinsert, tremove, tonumber, math.floor, math.sqrt, math.random;
local CreateVector2D, GetInstanceInfo, GetRealZoneText, GetSubZoneText, InCombatLockdown,IsInInstance
	= CreateVector2D, GetInstanceInfo, GetRealZoneText, GetSubZoneText, InCombatLockdown,IsInInstance
local C_Map_GetMapArtID = C_Map.GetMapArtID;
local C_Map_GetMapLevels = C_Map.GetMapLevels;
local C_Map_GetBestMapForUnit = C_Map.GetBestMapForUnit;
local C_Map_GetPlayerMapPosition = C_Map.GetPlayerMapPosition;
local C_Map_GetMapInfo, C_Map_GetAreaInfo = C_Map.GetMapInfo, C_Map.GetAreaInfo;
local C_Map_GetMapChildrenInfo = C_Map.GetMapChildrenInfo;
local C_Map_GetWorldPosFromMapPos = C_Map.GetWorldPosFromMapPos;
local C_MapExplorationInfo_GetExploredAreaIDsAtPosition = C_MapExplorationInfo.GetExploredAreaIDsAtPosition;
-- added in 8.0, can't use in Classic
local C_Map_GetMapInfoAtPosition = C_Map.GetMapInfoAtPosition or app.ReturnFalse

-- Current Map Detection
local CurrentMapID;
local MapIDToMapName = setmetatable({}, {
	__index = L.MAP_ID_TO_ZONE_TEXT,
});
local function distance( x1, y1, x2, y2 )
	return math_sqrt( (x2-x1)^2 + (y2-y1)^2 )
end
local function GetCurrentMapID()
	local originalMapID = C_Map_GetBestMapForUnit("player");
	app.RealMapID = originalMapID
	-- app.PrintDebug("RealMapID",originalMapID)
	if originalMapID then
		local remap = app.MapRemapping[originalMapID];
		if not remap then return originalMapID; end

		-- local info = C_Map_GetMapInfo(originalMapID);
		-- app.PrintDebug("GetCurrentMapID (original): ", originalMapID, info and info.name, not not remap);

		local substitutions = remap.artIDs;
		if substitutions then
			local artID = C_Map_GetMapArtID(originalMapID);
			if artID then
				local mapID = substitutions[artID];
				if mapID then
					--print(" SUBBED (artID): ", artID, mapID);
					return mapID;
				end
			end
		end

		local zoneTexts = {};
		local name = GetRealZoneText();
		if name and name:len() > 0 then
			zoneTexts[name] = 1;
		end
		name = GetSubZoneText();
		if name and name:len() > 0 then
			zoneTexts[name] = 1;
		end
		name = GetZoneText();
		if name and name:len() > 0 then
			zoneTexts[name] = 1;
		end
		local instanceName,instanceType = GetInstanceInfo();
		if instanceType and instanceType ~= "none" then
			zoneTexts[instanceName] = 1;
		end

		substitutions = remap.areaIDs;
		if substitutions then
			for areaID,mapID in pairs(substitutions) do
				local info = C_Map_GetAreaInfo(areaID);
				if info and zoneTexts[info] then
					-- app.PrintDebug(" SUBBED (areaID): ", areaID, info, mapID);
					return mapID;
				end
			end
		end
		substitutions = remap.names;
		if remap.isContinent and not remap.compiledList then
			remap.compiledList = true;
			local childMaps = C_Map_GetMapChildrenInfo(originalMapID);
			if childMaps then
				if not substitutions then
					substitutions = {};
					remap.names = substitutions;
				end
				for j,childMapInfo in ipairs(childMaps) do
					substitutions[childMapInfo.name] = childMapInfo.mapID;
					local subChildMaps = C_Map_GetMapChildrenInfo(childMapInfo.mapID);
					if subChildMaps then
						for k,subChildMapInfo in ipairs(subChildMaps) do
							substitutions[subChildMapInfo.name] = subChildMapInfo.mapID;
						end
					end
				end
			end
		end
		if substitutions then
			for name,mapID in pairs(substitutions) do
				if zoneTexts[name] then
					-- app.PrintDebug(" SUBBED (name): ", name, info, mapID);
					return mapID;
				end
			end
			if remap.isContinent then
				-- Attempt to find the closest map.
				local position = C_Map_GetPlayerMapPosition(originalMapID, "player");
				if position then
					local continentID, worldPosition = C_Map_GetWorldPosFromMapPos(originalMapID, position);
					local closestDistance, closestMapID = 99999999, nil;
					local px, py = worldPosition:GetXY();
					for _,mapID in pairs(substitutions) do
						position = C_Map_GetPlayerMapPosition(mapID, "player")
						if position then
							continentID, worldPosition = C_Map_GetWorldPosFromMapPos(mapID, position);
							if worldPosition then
								local dist = distance(px, py, worldPosition:GetXY());
								if dist < closestDistance then
									closestDistance = dist;
									closestMapID = mapID;
								end
							end
						end
					end
					if closestMapID then
						-- app.PrintDebug(" SUBBED (closest): ", closestMapID);
						return closestMapID;
					end
				end
			end
		end
	else
		local zoneTexts,substitutions = {}, nil;
		local name = GetRealZoneText();
		if name and name:len() > 0 then
			zoneTexts[name] = 1;
		end
		name = GetSubZoneText();
		if name and name:len() > 0 then
			zoneTexts[name] = 1;
		end
		name = GetZoneText();
		if name and name:len() > 0 then
			zoneTexts[name] = 1;
		end
		local instanceName,instanceType = GetInstanceInfo();
		if instanceType and instanceType ~= "none" then
			zoneTexts[instanceName] = 1;
		end
		for mapID,remap in pairs(app.MapRemapping) do
			substitutions = remap.areaIDs;
			if substitutions then
				for areaID,mapID in pairs(substitutions) do
					local info = C_Map_GetAreaInfo(areaID);
					if info and zoneTexts[info] then
						-- app.PrintDebug(" SUBBED (areaID): ", areaID, info, mapID);
						return mapID;
					end
				end
			end
			substitutions = remap.names;
			if substitutions then
				for name,mapID in pairs(substitutions) do
					if zoneTexts[name] then
						-- app.PrintDebug(" SUBBED (name): ", name, info, mapID);
						return mapID;
					end
				end
			end
		end
	end
	return originalMapID;
end
local function GetMapName(mapID)
	if mapID then
		local mapName = MapIDToMapName[mapID];
		if mapName then return mapName; end

		local info = C_Map_GetMapInfo(mapID);
		return (info and info.name) or ("Map ID #" .. mapID);
	else
		return "Map ID #???";
	end
end
local function GetPlayerPosition()
	local mapID = app.RealMapID;
	if mapID then
		local pos = C_Map_GetPlayerMapPosition(mapID, "player");
		if pos then
			local px, py = pos:GetXY();
			return mapID, px * 100, py * 100;
		end
	end
	return mapID, 50, 50, true
end
app.GetPlayerPosition = GetPlayerPosition
local UpdateLocation
if app.GameBuildVersion < 30000 then
	-- Before Wrath Classic we didn't have mapIDs in the world proper, so ATT had to make a guess.
	-- This relied on the map name and stuff.
	local UpdateLocationCoroutine = function()
		-- Wait a second, will ya? The position detection is BAD.
		for i=1,30,1 do coroutine.yield(); end

		-- Acquire the new map ID.
		local mapID = GetCurrentMapID();
		while not mapID do
			coroutine.yield();
			mapID = GetCurrentMapID();
		end
		if CurrentMapID ~= mapID then
			CurrentMapID = mapID;
			app.CurrentMapID = mapID;
			app.CurrentMapInfo = C_Map_GetMapInfo(mapID);
			app.HandleEvent("OnCurrentMapIDChanged");
		end
	end
	UpdateLocation = function()
		app:StartATTCoroutine("UpdateLocation", UpdateLocationCoroutine);
	end
elseif not app.IsRetail then
	-- After Wrath Classic you don't need to wait for a bit before checking.
	local UpdateLocationCoroutine = function()
		-- Acquire the new map ID.
		local mapID = GetCurrentMapID();
		while not mapID do
			coroutine.yield();
			mapID = GetCurrentMapID();
		end
		if CurrentMapID ~= mapID then
			CurrentMapID = mapID;
			app.CurrentMapID = mapID;
			app.CurrentMapInfo = C_Map_GetMapInfo(mapID);
			app.HandleEvent("OnCurrentMapIDChanged");
		end
	end
	UpdateLocation = function()
		app:StartATTCoroutine("UpdateLocation", UpdateLocationCoroutine);
	end
else	-- Retail [please don't make this a coroutine... we need the logic to execute when it's expected to based on Events]
	local Callback = app.CallbackHandlers.Callback
	-- After Wrath Classic you don't need to wait for a bit before checking.
	local function RawUpdateLocation()
		-- Acquire the new map ID.
		local mapID = GetCurrentMapID() or 0
		if mapID == 0 then
			Callback(RawUpdateLocation)
			return
		end
		if CurrentMapID ~= mapID then
			CurrentMapID = mapID;
			app.CurrentMapID = mapID;
			app.CurrentMapInfo = C_Map_GetMapInfo(mapID);
			app.HandleEvent("OnCurrentMapIDChanged");
		end
	end
	-- Some of these location events trigger tons of times all at once
	UpdateLocation = function()
		Callback(RawUpdateLocation)
	end
end
app.AddEventHandler("OnReady", UpdateLocation);
app.AddEventRegistration("NEW_WMO_CHUNK", UpdateLocation);
app.AddEventRegistration("WAYPOINT_UPDATE", UpdateLocation);
app.AddEventRegistration("SCENARIO_UPDATE", UpdateLocation);
app.AddEventRegistration("ZONE_CHANGED", UpdateLocation);
app.AddEventRegistration("ZONE_CHANGED_INDOORS", UpdateLocation);
app.AddEventRegistration("ZONE_CHANGED_NEW_AREA", UpdateLocation);
app.AddEventRegistration("PLAYER_INTERACTION_MANAGER_FRAME_HIDE", UpdateLocation);
app.GetMapName = GetMapName;

-- Exploration
local ExplorationAreaPositionDB = app.ExplorationAreaPositionDB or {};
local KEY, CACHE = "explorationID", "Exploration"
local CLASSNAME = "Exploration"
app.CreateExploration = app.CreateClass(CLASSNAME, KEY, {
	CACHE = function() return CACHE end,
	["name"] = function(t)
		return C_Map_GetAreaInfo(t.explorationID) or UNKNOWN;
	end,
	["description"] = function(t)
		if t.coords and #t.coords > 0 then
			if not TomTom then
				return "You can use Alt+Right Click to plot the coordinates with TomTom installed. If this refuses to be marked collected for you in ATT, try reloading your UI or relogging.";
			else
				return "You can use Alt+Right Click to plot the coordinates. If this refuses to be marked collected for you in ATT, try reloading your UI or relogging.";
			end
		else
			return "This exploration node is missing coordinates in our database. It may be unavailable.";
		end
	end,
	["artID"] = function(t)
		return t.parent and (t.parent.artID or (t.parent.parent and t.parent.parent.artID));
	end,
	["icon"] = function(t)
		return app.asset("Category_Exploration");
	end,
	["mapID"] = function(t)
		return t.parent and (t.parent.mapID or (t.parent.parent and t.parent.parent.mapID));
	end,
	["collectible"] = function(t)
		return app.Settings.Collectibles.Exploration and t.coords and #t.coords > 0;
	end,
	["collected"] = app.IsClassic and function(t)
		if app.CurrentCharacter.Exploration[t.explorationID] then return 1; end

		local coords = t.coords;
		if coords and #coords > 0 then
			local c = coords[1];
			local explored = C_MapExplorationInfo_GetExploredAreaIDsAtPosition(c[3], CreateVector2D(c[1] / 100, c[2] / 100));
			if explored then
				for _,areaID in ipairs(explored) do
					if areaID == t.explorationID then
						app.SetCollected(nil, "Exploration", areaID, true);
						return 1;
					end
				end
			end
		end
		if app.Settings.AccountWide.Exploration and ATTAccountWideData.Exploration[t.explorationID] then return 2; end
	end
	-- Retail: only check cached data on collected checks
	or function(t)
		return app.TypicalCharacterCollected(CACHE, t.explorationID)
	end,
	["saved"] = function(t)
		return app.IsCached("Exploration", t.explorationID)
	end,
	["coords"] = function(t)
		return ExplorationAreaPositionDB[t.explorationID];
	end,
});

-- Reporting
local AreaIDNameMapper = setmetatable({}, {__index = function(t,key)
	local id = #t + 1
	local keyid = tonumber(key)
	local name
	while id < 25000 do
		name = C_Map_GetAreaInfo(id)
		if name then
			t[name] = id
		end
		t[id] = name or UNKNOWN
		if key == name then
			-- app.PrintDebug("Found AreaID",id,"for",key)
			return id
		end
		if keyid == id then
			-- app.PrintDebug("Found Name",name,"for",id)
			return name or UNKNOWN
		end
		id = id + 1
	end
	app.PrintDebug("Ran out of AreaID and never found for",key)
end})
local ReportedAreas = {};
app.AddEventHandler("OnReportReset", function() wipe(ReportedAreas) end)
local function PrintDiscordInformationForExploration(o)
	if not app.Contributor then return end
	local areaID = o.explorationID;
	if not areaID or ReportedAreas[areaID] then return; end
	ReportedAreas[areaID] = o;

	local text = o.text or "???"
	local mapID = o.mapID;
	if mapID then text = text .. " (" .. GetMapName(mapID) .. ")"; end

	-- Create an information object.
	local info = {
		"### unmapped-area:" .. areaID,
		"```elixir",	-- discord fancy box start
		text,
		"",
	};

	local position, coord = mapID and C_Map_GetPlayerMapPosition(mapID, "player"), nil;
	local x,y
	if position then
		x,y = position:GetXY();
		x = math_floor(x * 1000) / 10
		y = math_floor(y * 1000) / 10
		coord = x .. ", " .. y;
	end
	if not x or not y then app.PrintDebug("Area has no valid coords on mapID",mapID) return end

	local luaFormat = "visit_exploration(%d,{coord={%.1f,%.1f,%d}}),\t-- %s"
	tinsert(info, luaFormat:format(areaID,x or 0,y or 0,mapID,text));
	tinsert(info, "");
	tinsert(info, "areaID: " .. (areaID or "??"));
	tinsert(info, "mapID: " .. (mapID or "??"));

	local coords = o.coords;
	if coords and #coords > 0 then
		tinsert(info, "coords:");
		for i,coord in ipairs(coords) do
			tinsert(info, coord[1] .. ", " .. coord[2]);
		end
	end
	tinsert(info, coord and ("playercoord:"..coord) or "playercoord:??");

	tinsert(info, "ver: "..app.Version);
	tinsert(info, "build: "..app.GameBuildVersion);
	tinsert(info, "```");	-- discord fancy box end

	local popupID = "area-" .. areaID;
	app:SetupReportDialog(popupID, text, info);
	app.print("Found Unmapped Area:", app:Linkify(text, app.Colors.ChatLinkError, "dialog:" .. popupID));
	app.Audio:PlayReportSound();
end
local RefreshExplorationData = app.IsClassic and (function(data)
	app:RefreshDataQuietly("RefreshExploration", true);
end) or (function(data) app.UpdateRawIDs("explorationID", data); end)
local function CacheAndUpdateExploration(explorationIDTable)
	-- app.PrintTable(saved)
	app.SetBatchCached("Exploration", explorationIDTable, 1)
	-- Trigger updates for these exploration areas
	local rawAreaIDdata = {}
	for areaID,_ in pairs(explorationIDTable) do
		rawAreaIDdata[#rawAreaIDdata + 1] = areaID
	end
	RefreshExplorationData(rawAreaIDdata)
end
local function GetExplorationBySubzone()
	local subzone = GetSubZoneText()
	if subzone and subzone ~= "" then
		local mapObject = app.SearchForObject("mapID",app.RealMapID,"key")
		if mapObject and mapObject.g then
			for _,o in ipairs(mapObject.g) do
				if o.headerID == app.HeaderConstants.EXPLORATION and o.g then
					for _,e in ipairs(o.g) do
						if e.name == subzone and e.__type == "Exploration" and e.coords then
							return e
						end
					end
					break
				end
			end
		end
		if not app.Contributor then return end
		local expectedAreaID = AreaIDNameMapper[subzone]
		-- don't report an area which is actually mapped in another zone already
		if not app.SearchForObject("explorationID", expectedAreaID) then
			local e = app.CreateExploration(expectedAreaID, { mapID = app.RealMapID, name = subzone})
			PrintDiscordInformationForExploration(e);
			return e
		end
	end
end
local function CheckIfExplorationIsMissing()
	-- do a manual check by way of the sub-zone name (since this is what correlates to the exploration name players see in ATT)
	-- we will provide a manual collection by way of exact player position having a specific subzone name when performing a check
	local explorationForSubzone = GetExplorationBySubzone()
	if explorationForSubzone then
		-- app.PrintDebug("SubzoneExplorationFind",mapID,pos.x,pos.y,app:SearchLink(explorationForSubzone))
		local areaID = explorationForSubzone.explorationID
		local characterExploration = app.CurrentCharacter.Exploration
		-- don't know how areaID could be nil here...
		if areaID and not characterExploration[areaID] then
			-- app.PrintDebug("Manual cached Exploration by Subzone name")
			-- we won't use regular caching since we're manually checking instead of the expected API utilization
			-- maybe eventually blizzard will fix the API
			characterExploration[areaID] = 2
			CacheAndUpdateExploration({[areaID]=true})
		end
	end
end
local function CheckExplorationForPlayerPosition()
	local mapID = C_Map_GetBestMapForUnit("player");
	if not mapID then return; end
	-- instances don't contain areas
	if IsInInstance() then return end
	CheckIfExplorationIsMissing()
	local pos = C_Map_GetPlayerMapPosition(mapID, "player");
	if not pos then return; end
	local areaIDs = C_MapExplorationInfo_GetExploredAreaIDsAtPosition(mapID, pos);
	if not areaIDs then return end;

	local characterExploration = app.CurrentCharacter.Exploration
	local newAreas = {};
	local saved = {}
	for _,areaID in ipairs(areaIDs) do
		-- app.PrintDebug("CheckPlayerExploration",mapID,pos.x,pos.y,app:SearchLink(app.SearchForObject("explorationID",areaID,"field")))
		if not characterExploration[areaID] then
			saved[areaID] = true
			tinsert(newAreas, areaID);
		end
		if not ReportedAreas[areaID] then
			if #app.SearchForField("explorationID", areaID) < 1 then
				PrintDiscordInformationForExploration(app.CreateExploration(areaID, { mapID = mapID}));
			end
		end
	end
	if #newAreas > 0 then
		CacheAndUpdateExploration(saved)
	end
end
local function CheckExplorationForCurrentLocation()
	app:StartATTCoroutine("Check Exploration", function()
		while not CurrentMapID do
			coroutine.yield();
		end
		CheckExplorationForPlayerPosition();
	end);
end
app.CheckExplorationForCurrentLocation = CheckExplorationForCurrentLocation;

-- Event Handling
if app.IsClassic then
	app.AddEventHandler("OnRecalculate", CheckExplorationForCurrentLocation);
else
	app.AddEventHandler("OnRefreshCollections", CheckExplorationForPlayerPosition)
end
app.AddEventRegistration("MAP_EXPLORATION_UPDATED", CheckExplorationForCurrentLocation)
app.AddEventRegistration("UI_INFO_MESSAGE", function(messageID, ...)
	-- app.PrintDebug("UI_INFO_MESSAGE", messageID, ...)
	if messageID == 372 or messageID == 396 then CheckExplorationForCurrentLocation(); end
end)
--
app.ChatCommands.Add("realtime-exploration-check", function(args)
	app.AddEventRegistration("FOG_OF_WAR_UPDATED", CheckExplorationForPlayerPosition)
	app.print("Enabled: realtime-exploration-check")
	return true
end, {
	"Usage : /att realtime-exploration-check",
	"This enables ATT to perform real-time Exploration checks when the Player visits new sub-zones of maps. This cannot be turned off except by reloading the UI.",
	"NOTE: This is not intended to be used except by Contribs in order to do fine-tuned testing of Exploration data",
})

-- Harvesting
local function GenerateHitsForMap(grid, mapID)
	if mapID == 594 or mapID == 2091 then return nil, nil; end	-- Shattrath City messing up Talador, War of the Shifting Sands messing up Silithus
	local any, hits, valid = false, setmetatable({}, app.MetaTable.AutoTable), setmetatable({}, app.MetaTable.AutoTable)
	local explored, mapInfo, coords
	for _,pos in ipairs(grid) do
		explored = C_MapExplorationInfo_GetExploredAreaIDsAtPosition(mapID, pos);
		if explored and #explored > 0 then
			local coord = {pos.x * 100, pos.y * 100, mapID};
			mapInfo = C_Map_GetMapInfoAtPosition(mapID, pos.x, pos.y)
			-- areaID often extends outside of the actual map where we check for areaID, so confine to coords
			-- which actually are placed within the bounds of the same map
			if mapInfo and mapInfo.mapID == mapID then
				coords = valid
			else
				coords = hits
			end
			for _,areaID in ipairs(explored) do
				tinsert(coords[areaID], coord)
			end
			any = true;
		end
	end
	-- if there are any areaID with no 'valid' on-map coordinates returned, then just copy those into the valid one and return that
	for areaID,coords in pairs(hits) do
		if #valid[areaID] == 0 then
			-- app.PrintDebug("Copied invalid areaID coords",areaID,#coords)
			valid[areaID] = coords
		end
	end
	if not any then
		app.print("No Exploration Areas Found in",app:SearchLink(app.SearchForObject("mapID",mapID,"key")))
	end
	return any, valid
end
local function CheckHitsForMap(grid, mapID, hits)
	hits = hits or {}
	for _,pos in ipairs(grid) do
		local explored = C_MapExplorationInfo_GetExploredAreaIDsAtPosition(mapID, pos);
		if explored then
			for _,areaID in ipairs(explored) do
				hits[areaID] = true
			end
		end
	end
	return hits
end
local OnClickForExplorationHeader = function(row, button)
	if button == "RightButton" and IsControlKeyDown() then
		local info = {};
		for i,exploration in ipairs(row.ref.g) do
			tinsert(info, "exploration(" .. exploration.explorationID .. "),\t-- " .. exploration.text);
		end
		app:ShowPopupDialogWithMultiLineEditBox(app.TableConcat(info, nil, nil, "\n"), nil, "Exploration Data");
		return true;
	end
end
local function GetAvgCoord(coords)
	local x_avg, y_avg = 0,0
	local mapID
	for _,coord in ipairs(coords) do
		x_avg = x_avg + coord[1]
		y_avg = y_avg + coord[2]
		if not mapID then mapID = coord[3] end
	end

	x_avg = math_floor(100 * x_avg / #coords) / 100
	y_avg = math_floor(100 * y_avg / #coords) / 100
	return {x_avg,y_avg,mapID}
end
local function GetBestCoord(coords)
	local avg_coord = GetAvgCoord(coords)
	-- app.PrintDebug("Find Best coord to",avg_coord[1],avg_coord[2],"from",#coords)
	-- grab a real coord which is closest to the avg coord (in case the avg coord is somehow outside the set of valid coords)
	local minDistance = 999
	local checkCoord, checkDistance
	local bestCoord = coords[1]
	for i=2,#coords,1 do
		checkCoord = coords[i]
		checkDistance = distance(checkCoord[1], checkCoord[2], avg_coord[1], avg_coord[2])
		if checkDistance < minDistance then
			bestCoord = checkCoord
			minDistance = checkDistance
			-- once we've narrowed down within a coord from the avg_coord, just return
			if checkDistance < 1 then
				-- app.PrintDebug("Quick Best coord:",bestCoord[1],bestCoord[2],bestCoord[3])
				return GetAvgCoord({bestCoord})
			end
		end
	end
	-- app.PrintDebug("Final Best coord:",bestCoord[1],bestCoord[2],bestCoord[3])
	return GetAvgCoord({bestCoord})
end
local function CacheExplorationForAllMaps()
	app.print("Robust Map Exploration Started...")
	local grid, Granularity = {}, 200;
	for i=0,Granularity,1 do
		for j=0,Granularity,1 do
			tinsert(grid, CreateVector2D(i / Granularity, j / Granularity));
		end
	end
	local saved = {}
	for mapID,_ in pairs(app.SearchForFieldContainer("mapID")) do
		if C_Map_GetMapArtID(mapID) then
			app.print("Checking Map " .. mapID .. "...");
			coroutine.yield()
			-- Find all points on the grid that have explored an area and make note of them.
			pcall(CheckHitsForMap, grid, mapID, saved);
		end
	end
	CacheAndUpdateExploration(saved)
	app.print("Robust Map Exploration Cached")
end
local function CacheExplorationForAllKnownExploration()
	app.print("Known Map Exploration Started...")
	local saved = {}
	local exploration
	for explorationID,explorations in pairs(app.SearchForFieldContainer("explorationID")) do
		-- only ever 1 cached
		exploration = explorations[1]
		if exploration.coords then
			local grid = {}
			local mapID
			-- convert the coords into a grid for our common method
			for _,coord in ipairs(exploration.coords) do
				grid[#grid + 1] = CreateVector2D(coord[1] / 100, coord[2] / 100)
				if not mapID then mapID = coord[3] end
			end
			-- Find all points on the grid that have explored an area and make note of them.
			pcall(CheckHitsForMap, grid, mapID, saved);
			-- app.print("Checking ExplorationID " .. explorationID .. "...");
			coroutine.yield()
		end
	end
	CacheAndUpdateExploration(saved)
	app.print("Known Map Exploration Cached")
end
-- add a parameter for a robust scan which checks all known Map data coords by scanning every map
-- without parameter do simple scan by cached ExplorationID coords
-- Allows a user to use /att collect-exploration [robust]
-- to force a full scan of all known ATT exploration or maps to cache visited exploration data
app.ChatCommands.Add("collect-exploration", function(args)
	if args[2] then
		app:StartATTCoroutine("FullMapExploration",CacheExplorationForAllMaps)
		return true
	end
	app:StartATTCoroutine("FullMapExploration",CacheExplorationForAllKnownExploration)
	return true
end, {
	"Usage : /att collect-exploration [robust]",
	"This allows a user to fully-scan the entire known set of Zones to harvest current Exploration data.",
	"NOTE: This operation (when providing the 'robust' parameter) should only be needed once per Character as Exploration is otherwise updated when new areas are explored.",
})
local ExplorationDB, FilterInGame
local function IncorporateHitsIntoDBs(hits, mapID, reportedAreasByID)
	-- For each of these fresh hits, add it to our raw positional DB.
	local foundArea
	local count = 0
	for areaID,coords in pairs(hits) do
		foundArea = app.SearchForObject("explorationID", areaID)
		if not foundArea or not FilterInGame(foundArea) then
			reportedAreasByID[areaID] = app.CreateExploration(areaID, { mapID = mapID});
		end
		tinsert(ExplorationDB[mapID], areaID)

		-- Record the best coordinates
		if #coords > 0 then
			ExplorationAreaPositionDB[areaID] = {GetBestCoord(coords)}
			count = count + 1
		else
			app.print("No coords found!",areaID)
		end
	end
	app.print("Captured",count,"Areas")
end
local function IncorporateHitsIntoSaved(saved, hits)
	for areaID,coords in pairs(hits) do
		saved[areaID] = true
	end
end
local function CleanEmptyExplorations()
	-- Clean up areaID's with no coords
	local emptyAreaIDs = {}
	for areaID,coords in pairs(ExplorationAreaPositionDB) do
		if #coords == 0 then
			emptyAreaIDs[areaID] = true
		end
	end
	for areaID,_ in pairs(emptyAreaIDs) do
		ExplorationAreaPositionDB[areaID] = nil
	end
end
local function PrintReportedAreaSummary()
	local reportedAreas = {};
	for areaID,o in pairs(ReportedAreas) do
		tinsert(reportedAreas, o);
	end
	if #reportedAreas > 0 then
		-- Create an information object.
		local info = {
			"### Found Area Summary",
			"```lua",
		};

		local areasByMapID = setmetatable({}, app.MetaTable.AutoTable);
		for i,o in ipairs(reportedAreas) do
			tinsert(areasByMapID[o.mapID], o);
		end
		for mapID,areas in pairs(areasByMapID) do
			app.Sort(areas, app.SortDefaults.text);
			tinsert(info, "-- " .. GetMapName(mapID) .. " (" .. mapID .. ")");
			for i,o in ipairs(areas) do
				tinsert(info, "exploration(" .. o.explorationID .. "),\t-- " .. o.text);
			end
			tinsert(info, "");
		end

		tinsert(info, "ver: "..app.Version);
		tinsert(info, "build: "..app.GameBuildVersion);
		tinsert(info, "```");	-- discord fancy box end

		local popupID, text = "found-area-summary", "Summary";
		app:SetupReportDialog(popupID, text, info);
		app.print("Found Areas:", app:Linkify(text, app.Colors.ChatLinkError, "dialog:" .. popupID));
	end
end
local function HarvestExploration()
	if app.SetupExplorationEvents then app.SetupExplorationEvents(); end

	-- setup our DB captures
	local harvest = app.LocalizeGlobal("AllTheThingsHarvestItems", true)
	harvest.ExplorationAreaPositionDB = ExplorationAreaPositionDB
	-- ExplorationDB is only used internally while harvesting to populate Exploration headers
	ExplorationDB =  setmetatable({}, app.MetaTable.AutoTable);

	FilterInGame = app.Modules.Filter.Filters.InGame

	app.print("Harvesting Exploration...");
	wipe(ReportedAreas)
	local grid, Granularity = {}, 200;
	for i=0,Granularity,1 do
		for j=0,Granularity,1 do
			tinsert(grid, CreateVector2D(i / Granularity, j / Granularity));
		end
	end
	local saved = {}
	for mapID,objects in pairs(app.SearchForFieldContainer("mapID")) do
		-- only check exploration on Zone maps where we have a raw map listed in ATT
		local mapInfo = C_Map_GetMapInfo(mapID)
		if mapInfo and mapInfo.mapType == 3 and C_Map_GetMapArtID(mapID) and app.SearchForObject("mapID",mapID,"key") then
			app.print("Harvesting Map " .. mapID .. "...");
			-- Find all points on the grid that have explored an area and make note of them.
			local ok, any, hits = pcall(GenerateHitsForMap, grid, mapID);
			if ok and hits then
				IncorporateHitsIntoDBs(hits, mapID, ReportedAreas)
				IncorporateHitsIntoSaved(saved, hits)

				-- If any were found, update the content of the exploration headers.
				for i,object in ipairs(objects) do
					if object.key == "mapID" and (object.mapID == mapID or (object.maps and contains(object.maps, mapID))) then
						-- Cache or Create the Exploration Header
						local explorationHeader = nil;
						if object.g then
							for j,o in ipairs(object.g) do
								if o.headerID == app.HeaderConstants.EXPLORATION then
									explorationHeader = o;
									break;
								end
							end
						else
							object.g = {};
						end
						local byExplorationID;
						if explorationHeader then
							byExplorationID = explorationHeader.ByExplorationID;
							if not byExplorationID then
								byExplorationID = {};
								explorationHeader.ByExplorationID = byExplorationID;
							end
							if explorationHeader.g then
								for j,o in ipairs(explorationHeader.g) do
									local areaID = o.explorationID;
									if areaID then byExplorationID[areaID] = o; end
								end
							else
								explorationHeader.g = {};
							end
						else
							byExplorationID = {};
							explorationHeader = app.CreateNPC(app.HeaderConstants.EXPLORATION);
							explorationHeader.ByExplorationID = byExplorationID;
							explorationHeader.g = {};
							explorationHeader.u = object.u;
							explorationHeader.parent = object;
							tinsert(object.g, 1, explorationHeader);
						end
						explorationHeader.OnClick = OnClickForExplorationHeader;
						explorationHeader.SortType = "text";

						-- Make sure the exploration header has all the objects
						for _,areaID in ipairs(ExplorationDB[mapID]) do
							if not byExplorationID[areaID] then
								local o = app.CreateExploration(areaID);
								o.mapID = mapID;
								o.parent = explorationHeader;
								tinsert(explorationHeader.g, o);
								byExplorationID[areaID] = o;
								local searchResults = app.SearchForField("explorationID", areaID);
								if #searchResults < 1 or ReportedAreas[areaID] then
									PrintDiscordInformationForExploration(o);
								end
								tinsert(searchResults, o);
							end
						end
					end
				end
			end
			repeat
				coroutine.yield();
			until(not InCombatLockdown());
		end
	end
	CleanEmptyExplorations()
	CacheAndUpdateExploration(saved)
	app.print("Exploration Harvest complete. You can now Ctrl+Right Click on an Exploration header to copy its content.");
	PrintReportedAreaSummary()
end
-- Allows a user to use /att harvest-exploration
-- to force a full scan of all known ATT maps to harvest exploration data
app.ChatCommands.Add("harvest-exploration", function(args)
	app:StartATTCoroutine("Harvest Exploration", function()
		HarvestExploration();
		collectgarbage();
	end);
	return true
end, {
	"Usage : /att harvest-exploration",
	"This allows fully-scanning the entire known set of Zones to harvest current Exploration data based on what the current character has Explored, and capture all the possible coordinates which 'should' unlock the specified Exploration Areas.",
	"NOTE: This operation is only expected to be used by Development in order to update Exploration in the addon!",
})

app.ChatCommands.Add("harvest-map", function(args)
	local mapID = tonumber(args[2])
	if not mapID then return end
	local granularity = tonumber(args[3] or 200)
	local simplify = args[4]
	-- setup our DB captures
	local harvest = app.LocalizeGlobal("AllTheThingsHarvestItems", true)
	harvest.ExplorationAreaPositionDB = ExplorationAreaPositionDB
	-- ExplorationDB is only used internally while harvesting to populate Exploration headers
	ExplorationDB =  setmetatable({}, app.MetaTable.AutoTable);
	FilterInGame = app.Modules.Filter.Filters.InGame
	wipe(ReportedAreas)
	app.print("Harvesting Map",mapID,"@",granularity,simplify and "[Simplified]" or "[Full]");
	local grid = {}
	for i=0,granularity,1 do
		for j=0,granularity,1 do
			tinsert(grid, CreateVector2D(i / granularity, j / granularity));
		end
	end

	local ok, any, hits = pcall(GenerateHitsForMap, grid, mapID)
	if not ok then app.print("Failed to find any valid areaIDs on map",mapID) return end
	IncorporateHitsIntoDBs(hits, mapID, ReportedAreas)
	local i = 6033345
	local tempGroup = {visible=true,text=app.GetMapName(mapID)}
	for areaID,coords in pairs(hits) do
		app.NestObject(tempGroup, app.CreateExploration(areaID, {coords=simplify and {GetBestCoord(coords)} or coords,icon=i}))
		i = i + 1
		if i > 6033354 then i = 6033345 end
	end
	-- app.AddTomTomWaypoint(tempGroup)
	-- app.PrintTable(tempGroup)
	-- app.PrintTable(hits)
	app:CreateMiniListForGroup(tempGroup, true)
	PrintReportedAreaSummary()
end, {
	"Usage : /att harvest-map mapID [granularity] [simplify]",
})

-- Maps
app.CreateMap = app.CreateClass("Map", "mapID", {
	["text"] = function(t)
		return t.isRaid and ("|c" .. app.Colors.Raid .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		return GetMapName(t.mapID);
	end,
	["icon"] = function(t)
		return app.asset("Category_Zones");
	end,
	["back"] = function(t)
		if t.isCurrentMap then
			return 1;
		end
	end,
	["artID"] = function(t)
		return C_Map_GetMapArtID(t.mapID);
	end,
	["lvl"] = function(t)
		return C_Map_GetMapLevels(t.mapID);
	end,
	["playerCoord"] = function(t)
		local mapID = t.mapID
		if mapID < 0 then mapID = app.RealMapID end
		local position = mapID and C_Map_GetPlayerMapPosition(mapID, "player")
		if position then
			local x,y = position:GetXY()
			return { app.round(x * 100, 1), app.round(y * 100, 1), mapID };
		end
	end,
	["isCurrentMap"] = function(t)
		if CurrentMapID == t.mapID then
			return true;
		end
		local maps = t.maps;
		if maps and contains(maps, CurrentMapID) then
			return true;
		end
	end,
	["ignoreSourceLookup"] = function(t)
		return true;
	end,
	isMinilistHeader = function(t)
		local mapinfo = C_Map_GetMapInfo(t.mapID)
		local mapType = mapinfo and mapinfo.mapType or 0
		local isHeader = mapType > 2
		t.isMinilistHeader = isHeader
		return isHeader
	end,
},
"WithHeader", {
	["name"] = function(t)
		return app.NPCNameFromID[t.headerID] or GetMapName(t.mapID);
	end,
	["icon"] = function(t)
		return L.HEADER_ICONS[t.headerID] or app.asset("Category_Zones");
	end,
	["lore"] = function(t)
		return L.HEADER_LORE[t.headerID];
	end,
	["description"] = function(t)
		return L.HEADER_DESCRIPTIONS[t.headerID];
	end,
}, (function(t)
	local creatureID = t.creatureID or t.npcID;
	if creatureID and creatureID < 0 then
		t.headerID = creatureID;
		t.creatureID = nil;
		t.npcID = nil;
		return true;
	elseif t.headerID then
		return true;
	end
end));
app.CreateMapWithStyle = function(id)
	local mapObject = app.CreateMap(id, { progress = 0, total = 0 });
	for _,data in ipairs(app.SearchForField("mapID", id)) do
		if data.mapID and data.icon then
			mapObject.text = data.text;
            mapObject.icon = data.icon;
            mapObject.lvl = data.lvl;
            mapObject.lore = data.lore;
            mapObject.description = data.description;
			break;
		end
	end

	if not mapObject.text then
		local mapInfo = C_Map_GetMapInfo(id);
		if mapInfo then
			mapObject.text = mapInfo.name;
		end
	end
	return mapObject;
end

-- Instances
local instanceFields = {
	["text"] = function(t)
		return t.isRaid and ("|c" .. app.Colors.Raid .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		return GetMapName(t.mapID);
	end,
	["icon"] = function(t)
		return app.asset("Category_Zones");
	end,
	["back"] = function(t)
		if t.isCurrentMap then
			return 1;
		end
	end,
	["mapID"] = function(t)
		return t.maps and t.maps[1];
	end,
	["lvl"] = function(t)
		local mapID = t.mapID;
		return mapID and C_Map_GetMapLevels(mapID);
	end,
	["locks"] = function(t)
		local savedInstanceID = t.savedInstanceID;
		if savedInstanceID then
			local lockouts = app.CurrentCharacter.Lockouts;
			local locks = lockouts[savedInstanceID];
			if locks then
				t.locks = locks;
				return locks;
			end
		end
	end,
	["saved"] = function(t)
		return t.locks;
	end,
	["isCurrentMap"] = function(t)
		if CurrentMapID == t.mapID then
			return true;
		end
		local maps = t.maps;
		if maps and contains(maps, CurrentMapID) then
			return true;
		end
	end,
	["isLockoutShared"] = app.ReturnFalse,
	["ignoreSourceLookup"] = function(t)
		return true;
	end,
};
local EJ_GetInstanceInfo = EJ_GetInstanceInfo;
if EJ_GetInstanceInfo and app.GameBuildVersion >= 50000 then
	local cache = app.CreateCache("instanceID");
	local function CacheInfo(t, field)
		local _t, id = cache.GetCached(t);
		local name, lore, _, _, _, icon, _, link = EJ_GetInstanceInfo(id);
		if name then _t.name = name; end
		if lore then _t.lore = lore; end
		if icon then _t.icon = icon; end
		if link then _t.link = link; end
		if field then return _t[field]; end
	end
	local oldIconField = instanceFields.icon;
	local oldNameField = instanceFields.name;
	instanceFields.icon = function(t) return cache.GetCachedField(t, "icon", CacheInfo) or oldIconField(t); end;
	instanceFields.name = function(t) return cache.GetCachedField(t, "name", CacheInfo) or oldNameField(t); end;
	instanceFields.lore = function(t) return cache.GetCachedField(t, "lore", CacheInfo); end;
	instanceFields.silentLink = function(t) return cache.GetCachedField(t, "link", CacheInfo); end;
end
app.CreateInstance = app.CreateClass("Instance", "instanceID", instanceFields,
"WithHeader", {
	["name"] = function(t)
		return app.NPCNameFromID[t.headerID] or instanceFields.name(t);
	end,
	["icon"] = function(t)
		return L.HEADER_ICONS[t.headerID] or app.asset("Category_Zones");
	end,
	["lore"] = function(t)
		return L.HEADER_LORE[t.headerID];
	end,
	["description"] = function(t)
		return L.HEADER_DESCRIPTIONS[t.headerID];
	end,
}, (function(t)
	if t.headerID then
		return true;
	else
		local creatureID = t.creatureID or t.npcID;
		if creatureID and creatureID < 0 then
			t.headerID = creatureID;
			t.creatureID = nil;
			t.npcID = nil;
			return true;
		end
	end
end));

-- Instance Event Handling
local GetNumSavedInstances, GetServerTime, GetSavedInstanceInfo, GetSavedInstanceEncounterInfo, RequestRaidInfo
	= GetNumSavedInstances, GetServerTime, GetSavedInstanceInfo, GetSavedInstanceEncounterInfo, RequestRaidInfo;
local AfterCombatCallback = app.CallbackHandlers.AfterCombatCallback;
local function RefreshSavesCallback()
	-- While the player is still logging in, wait.
	if not app.GUID then
		AfterCombatCallback(RefreshSavesCallback);
		return;
	end

	-- Cache the lockouts across your account.
	local serverTime = GetServerTime();

	-- Check to make sure that the old instance data has expired
	for guid,character in pairs(ATTCharacterData) do
		local locks = character.Lockouts;
		if locks then
			for instanceID,instance in pairs(locks) do
				local count = 0;
				for difficulty,lock in pairs(instance) do
					if type(lock) ~= "table" or type(lock.reset) ~= "number" or serverTime >= lock.reset then
						-- Clean this up.
						instance[difficulty] = nil;
					else
						count = count + 1;
					end
				end
				if count == 0 then
					-- Clean this up.
					locks[instanceID] = nil;
				end
			end
		end
	end

	-- Make sure there's info available to check save data
	local saves = GetNumSavedInstances();
	if not saves then
		-- While the player is still waiting for information, wait.
		AfterCombatCallback(RefreshSavesCallback);
		return;
	end

	-- Update Saved Instances
	local myLockouts = app.CurrentCharacter.Lockouts;
	for instanceIter=1,saves do
		local name, id, reset, difficulty, locked, _, _, isRaid, _, _, numEncounters, encounterProgress, extendDisabled, savedInstanceID = GetSavedInstanceInfo(instanceIter);
		if locked and savedInstanceID then
			-- Cache the locks for this instance
			difficulty = difficulty or 7;
			reset = serverTime + reset;
			local locks = myLockouts[savedInstanceID];
			if not locks then
				locks = {};
				myLockouts[savedInstanceID] = locks;
			end

			-- Create the lock for this difficulty
			local lock = locks[difficulty];
			if not lock then
				lock = { ["id"] = id, ["reset"] = reset, ["encounters"] = {}};
				locks[difficulty] = lock;
			else
				lock.id = id;
				lock.reset = reset;
			end

			-- If this is LFR, then don't share.
			if difficulty == 7 or difficulty == 17 then
				if #lock.encounters == 0 then
					-- Check Encounter locks
					for encounterIter=1,numEncounters do
						local name, _, isKilled = GetSavedInstanceEncounterInfo(instanceIter, encounterIter);
						tinsert(lock.encounters, { ["name"] = name, ["isKilled"] = isKilled });
					end
				else
					-- Check Encounter locks
					for encounterIter=1,numEncounters do
						local name, _, isKilled = GetSavedInstanceEncounterInfo(instanceIter, encounterIter);
						if not lock.encounters[encounterIter] then
							tinsert(lock.encounters, { ["name"] = name, ["isKilled"] = isKilled });
						elseif isKilled then
							lock.encounters[encounterIter].isKilled = true;
						end
					end
				end
			else
				-- Create the pseudo "shared" lock
				local shared = locks.shared;
				if not shared then
					shared = {};
					shared.id = id;
					shared.reset = reset;
					shared.encounters = {};
					locks.shared = shared;

					-- Check Encounter locks
					for encounterIter=1,numEncounters do
						local name, _, isKilled = GetSavedInstanceEncounterInfo(instanceIter, encounterIter);
						tinsert(lock.encounters, { ["name"] = name, ["isKilled"] = isKilled });

						-- Shared Encounter is always assigned if this is the first lock seen for this instance
						tinsert(shared.encounters, { ["name"] = name, ["isKilled"] = isKilled });
					end
				else
					-- Check Encounter locks
					for encounterIter=1,numEncounters do
						local name, _, isKilled = GetSavedInstanceEncounterInfo(instanceIter, encounterIter);
						if not lock.encounters[encounterIter] then
							tinsert(lock.encounters, { ["name"] = name, ["isKilled"] = isKilled });
						elseif isKilled then
							lock.encounters[encounterIter].isKilled = true;
						end
						if not shared.encounters[encounterIter] then
							tinsert(shared.encounters, { ["name"] = name, ["isKilled"] = isKilled });
						elseif isKilled then
							shared.encounters[encounterIter].isKilled = true;
						end
					end
				end
			end
		end
	end

	-- Mark that we're done now.
	app.HandleEvent("OnSavesUpdated");
end
app.AddEventRegistration("LOOT_CLOSED", function()
	-- Once the loot window closes after killing a boss, THEN trigger the update.
	app:UnregisterEvent("LOOT_CLOSED");
	app:RegisterEvent("UPDATE_INSTANCE_INFO");
	RequestRaidInfo();
end, true)
local function Event_UPDATE_INSTANCE_INFO()
	app:UnregisterEvent("UPDATE_INSTANCE_INFO");
	AfterCombatCallback(RefreshSavesCallback);
end
app.AddEventRegistration("UPDATE_INSTANCE_INFO", Event_UPDATE_INSTANCE_INFO, true)
app.AddEventHandler("OnRefreshCollectionsDone", Event_UPDATE_INSTANCE_INFO);
app.AddEventRegistration("BOSS_KILL", function(id, name, ...)
	-- This is so that when you kill a boss, you can trigger
	-- an automatic update of your saved instance cache.
	-- (It does lag a little, but you can disable this if you want.)
	-- Waiting until the LOOT_CLOSED occurs will prevent the failed Auto Loot bug.
	-- print("BOSS_KILL", id, name, ...);
	app:RegisterEvent("LOOT_CLOSED");
end);
