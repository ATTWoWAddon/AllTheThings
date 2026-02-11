-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local ipairs, pairs, setmetatable, tinsert, math_floor, wipe
	= ipairs, pairs, setmetatable, tinsert, math.floor, wipe;
local C_Map_GetMapInfo, C_Map_GetPlayerMapPosition, GetRealZoneText, GetSubZoneText, IsInInstance
	= C_Map.GetMapInfo, C_Map.GetPlayerMapPosition, GetRealZoneText, GetSubZoneText, IsInInstance;
local contains, containsValue = app.contains, app.containsValue;
local wipearray, ArrayAppend, CreateObject, MergeObject, MergeProperties, NestObjects, IsQuestFlaggedCompleted
	= app.wipearray, app.ArrayAppend, app.__CreateObject, app.MergeObject, app.MergeProperties, app.NestObjects, app.IsQuestFlaggedCompleted
local GetRelativeGroup = app.GetRelativeGroup;

-- Discord Error Reporting
local function BuildDiscordMapInfoTable(id, mapInfo)
	-- Builds a table to be used in the SetupReportDialog to display text which is copied into Discord for player reports
	mapInfo = mapInfo or C_Map_GetMapInfo(id)
	local info = {
		"### missing-map"..":"..id,
		"```elixir",	-- discord fancy box start
		"L:"..app.Level.." R:"..app.RaceID.." ("..app.Race..") C:"..app.ClassIndex.." ("..app.Class..")",
		id and ("mapID:"..id.." ("..(mapInfo.name or ("Map ID #" .. id))..")") or "mapID:??",
		"real-name:"..(GetRealZoneText() or "?"),
		"sub-name:"..(GetSubZoneText() or "?"),
	};

	local mapID = mapInfo.parentMapID
	while mapID do
		mapInfo = C_Map_GetMapInfo(mapID)
		if mapInfo then
			tinsert(info, "> parentMapID:"..mapID.." ("..(mapInfo.name or "??")..")")
			mapID = mapInfo.parentMapID;
		else break
		end
	end

	local position, coord = id and C_Map_GetPlayerMapPosition(id, "player"), nil;
	if position then
		local x,y = position:GetXY();
		coord = (math_floor(x * 1000) / 10) .. ", " .. (math_floor(y * 1000) / 10);
	end
	tinsert(info, coord and ("coord:"..coord) or "coord:??");

	if app.GameBuildVersion >= 100000 then	-- Only include this after Dragonflight
		local acctUnlocks = {
			IsQuestFlaggedCompleted(72366) and "DF_CA" or "N",	-- Dragonflight Campaign Complete
			IsQuestFlaggedCompleted(75658) and "DF_ZC" or "N",	-- Dragonflight Zaralek Caverns Complete
			IsQuestFlaggedCompleted(79573) and "WW_CA" or "N",	-- The War Within Campaign Complete
		}
		tinsert(info, "unlocks:"..app.TableConcat(acctUnlocks, nil, nil, "/"))
	end
	tinsert(info, "lq:"..(app.TableConcat(app.MostRecentQuestTurnIns or app.EmptyTable, nil, nil, "<") or ""));

	local inInstance, instanceType = IsInInstance()
	tinsert(info, "instance:"..(inInstance and "true" or "false")..":"..(instanceType or ""))
	tinsert(info, "ver:"..app.Version);
	tinsert(info, "build:"..app.GameBuildVersion);
	tinsert(info, "```");	-- discord fancy box end
	return info
end
local function ShowDiscordReportPopupForMapID(mapID)
	local popupID = "map-" .. mapID
	app:SetupReportDialog(popupID, "Missing Map: " .. mapID, BuildDiscordMapInfoTable(mapID, mapInfo))
	app.report(app:Linkify(app.Version.." (Click to Report) No data found for this Location!", app.Colors.ChatLinkError, "dialog:" .. popupID));
end

-- Retail Style Mini List
-- local C_Map_GetMapChildrenInfo = C_Map.GetMapChildrenInfo;
-- Wraps a given object such that it can act as an unfiltered Header of the base group
local CreateWrapVisualHeader = app.CreateVisualHeaderWithGroups
-- Returns the consolidated data format for the next header level
-- Headers are forced not collectible, and will have their content sorted, and can be copied from the existing Source header
local function CreateHeaderData(mapID, group, header)
	-- copy an uncollectible version of the existing header
	if header then
		-- special case for Difficulty headers, need to be actual difficulty groups to merge properly with any existing
		if header.difficultyID then
			header = CreateObject(header, true)
			header.g = { group }
			return header
		end
		-- special case for Map auto-headers, ignore re-nesting a Map header of the current Map
		if header.type == "m" and header.keyval == mapID then
			return group
		end
		header = CreateWrapVisualHeader(header, {group})
		header.SortType = "Global"
		return header
	else
		return { g = { group }, ["collectible"] = false, SortType = "Global" };
	end
end
-- set of keys for headers which can be nested in the minilist automatically, but not confined to a direct top header
local subGroupKeys = {
	"filterID",
	"professionID",
	"raceID",
	"eventID",
	"instanceID",
	"achievementID",
};
-- set of keys for headers which can be nested in the minilist within an Instance automatically, but not confined to a direct top header
local subGroupInstanceKeys = {
	"filterID",
	"professionID",
	"raceID",
	"eventID",
	"achievementID",
};
-- Headers possible in a hierarchy that should just be ignored
local ignoredHeaders = app.HeaderData.IGNOREINMINILIST or app.EmptyTable;
local groups, nested, headerKeys, difficultyGroup, nextParent, headerID, isInInstance, instanceType
local rootGroups, mapGroups = {}, {};
-- TODO -- For now these have to be different. I don't know if __CreateObject works for all Classic scenarios due to explicit key checks
-- but CloneClassInstance doesn't properly clone the data in a way that cleanly represents the desired Minilist data
-- Hopefully can reconcile this more after Phase 1 of window consolidation
local DataCloner = app.IsRetail and app.__CreateObject or app.CloneClassInstance
local RetailMapDataStyleMetatable = {
	__mode = "kv",
	__index = function(cachedMapData, mapID)
		if not mapID then
			app.print("Invalid mapID for MiniList cache!",mapID)
			return
		end
		local mapData;

		-- Get all results for this map
		local results = app.SearchForField("mapID", mapID)
		if results and #results > 0 then
			-- I tend to like this way of finding sub-maps, but it does mean we rely on Blizzard and get whatever maps they happen to claim
			-- are children of a given map... sometimes has weird results like scenarios during quests being considered children in
			-- other zones. Since it can give us special top-level maps (Anniversary AV) also as children of other top-level maps (Hillsbarad)
			-- we would need to filter the results and add them properly into the results below via sub-groups if they are maps themselves
			-- local submapinfos = ArrayAppend(C_Map_GetMapChildrenInfo(mapID, 5), C_Map_GetMapChildrenInfo(mapID, 6))
			-- if submapinfos then
				-- for _,mapInfo in ipairs(submapinfos) do
					-- subresults = app.SearchForField("mapID", mapInfo.mapID)
					-- app.PrintDebug("Adding Sub-Map Results:",mapInfo.mapID,mapInfo.mapType,#subresults)
					-- results = ArrayAppend(results, subresults)
				-- end
			-- end
			-- See if there are any sub-maps we should also include by way of the 'maps' field on the 'real' map for this id
			local rootMap, result
			for i=1,#results do
				result = results[i]
				if result.key == "mapID" and result.mapID == mapID then
					rootMap = result
					break;
				end
			end
			local rootMaps = rootMap and rootMap.maps
			if rootMaps then
				local subresults, subMapID
				for i=1,#rootMaps do
					subMapID = rootMaps[i]
					if subMapID ~= mapID then
						subresults = app.SearchForField("mapID", subMapID)
						-- app.PrintDebug("Adding Sub-Map Results:",subMapID,#subresults)
						results = ArrayAppend(results, subresults)
					end
				end
			end
			-- Simplify the returned groups
			wipearray(rootGroups);
			wipearray(mapGroups);
			local currentMaps = {[mapID] = true};
			isInInstance, instanceType = IsInInstance();
			-- don't act like an Instance Minilist in Neighborhood or Player housing
			if isInInstance and (instanceType == "neighborhood" or instanceType == "interior") then
				isInInstance = nil
			end
			headerKeys = isInInstance and subGroupInstanceKeys or subGroupKeys;
			local group, groupmapID, groupmaps
			-- split search results by whether they represent the 'root' of the minilist or some other mapped content
			for i=1,#results do
				-- do not use any raw Source groups in the final list
				group = DataCloner(results[i])
				groupmapID = group.mapID
				groupmaps = group.maps
				-- Instance/Map/Class/Header(of current map) groups are allowed as root of minilist
				if (group.instanceID or (groupmapID and (group.key == "mapID" or (group.key == "headerID" and groupmapID == mapID))) or group.key == "classID")
					-- and actually match this minilist...
					-- only if this group mapID matches the minilist mapID directly or by maps
					and (groupmapID == mapID or (groupmaps and contains(groupmaps, mapID))) then
					rootGroups[#rootGroups + 1] = group
				else
					mapGroups[#mapGroups + 1] = group
				end
			end
			groups = {};
			mapData = { mapID = mapID, g = groups }

			-- first merge all root groups into the list
			local groupMaps
			for i=1,#rootGroups do
				group = rootGroups[i]
				groupMaps = group.maps
				if groupMaps then
					for i=1,#groupMaps do
						currentMaps[groupMaps[i]] = true;
					end
				end
				-- app.PrintDebug("Merge as Root",group.hash)
				MergeProperties(mapData, group, true);
				NestObjects(mapData, group.g);
			end
			local externalMaps = {}
			-- then merge all mapped groups into the list
			for i=1,#mapGroups do
				group = mapGroups[i]
				-- app.PrintDebug("Mapping:",app:SearchLink(group))
				nested = nil;
				difficultyGroup = nil

				-- Get the header chain for the group
				nextParent = group.parent;

				-- Cache the difficultyGroup, if there is one and we are in an actual instance where the group is being mapped
				if isInInstance then
					difficultyGroup = GetRelativeGroup(nextParent, "difficultyID")
					-- app.PrintDebug("difficultyGroup:",app:SearchLink(difficultyGroup))
				end

				-- Building the header chain for each mapped Thing
				while nextParent do
					headerID = nextParent.headerID
					if headerID then
						-- all Headers implicitly are allowed as visual headers in minilist unless explicitly ignored
						if not ignoredHeaders[headerID] then
							group = CreateHeaderData(mapID, group, nextParent);
							nested = true;
						end
					elseif nextParent.isMinilistHeader then
						group = CreateHeaderData(mapID, group, nextParent);
						nested = true;
					else
						for i=1,#headerKeys do
							if nextParent[headerKeys[i]] then
								-- create the specified group Type header
								group = CreateHeaderData(mapID, group, nextParent);
								nested = true;
								break;
							end
						end
					end
					nextParent = nextParent.parent;
					-- skip the difficultyGroup we found if any
					if difficultyGroup and nextParent == difficultyGroup then
						nextParent = nextParent.parent
					end
				end

				-- really really special cases...
				-- Battle Pets get an additional raw Filter nesting
				if not nested and group.key == "speciesID" then
					group = app.CreateFilter(101, CreateHeaderData(mapID, group));
				end

				-- If relative to a difficultyGroup, then merge it into one.
				if difficultyGroup then
					group = CreateHeaderData(mapID, group, difficultyGroup);
					-- remove the name sorttype from the difficulty-based header
					group.SortType = nil
					-- link the difficulty group to the current window header so that it assumes its expected hash
					group.parent = mapData
					group.sourceParent = nil
				end

				-- If we're trying to map in another 'map', nest it into a special group for external maps
				if group.instanceID or group.mapID then
					externalMaps[#externalMaps + 1] = group
					group = nil
				end
				if group then
					-- app.PrintDebug("Merge as Mapped:",app:SearchLink(group))
					MergeObject(groups, group)
				end
			end

			-- Nest our external maps into a special header to reduce minilist header spam
			if #externalMaps > 0 then
				local externalMapHeader = app.CreateCustomHeader(app.HeaderConstants.REMOTE_ZONES, {external=true})
				externalMapHeader.SortType = "Global";
				NestObjects(externalMapHeader, externalMaps)
				MergeObject(groups, externalMapHeader)
			end

			if #rootGroups == 0 then
				-- if only one group in the map root, then shift it up as the map root instead
				local mapG = mapData.g;
				if #mapG == 1 then
					local topGroup = mapG[1]
					if not topGroup.external
						-- only shift up certain group types
						and (topGroup.instanceID or topGroup.classID or topGroup.mapID)
					then
						mapData.g = nil;
						-- don't persist the parent links since this will now be a minilist root
						topGroup.parent = nil
						topGroup.sourceParent = nil
						MergeProperties(mapData, topGroup, true);
						NestObjects(mapData, topGroup.g);
					end
				else
					app.PrintDebug("No root Map groups!",mapID)
				end
			end

			mapData.u = nil;
			mapData.e = nil;
			if mapData.instanceID then
				mapData = app.CreateInstance(mapData.instanceID, mapData);
			else
				if mapData.classID then
					mapData = app.CreateCharacterClass(mapData.classID, mapData);
				else
					mapData = app.CreateMap(mapData.mapID, mapData);
				end
				-- sort top level by name if not in an instance
				mapData.SortType = "Global";
			end

			-- TODO: This is dumb, but apparently its required. (for now?)
			mapData.visible = true;
			mapData.back = 1;
			mapData.indent = 0;

			-- Cache all of the Current Maps with the same data.
			for id,_ in pairs(currentMaps) do
				cachedMapData[id] = mapData;
			end
		else
			-- If we don't have any data cached for this mapID and it exists in game, report it to the chat window.
			local mapInfo = C_Map_GetMapInfo(mapID);
			if mapInfo then
				-- only report for mapIDs which actually exist
				ShowDiscordReportPopupForMapID(mapID);
			end
			mapData = app.CreateMap(mapID, {
				["name"] = L.MINI_LIST .. " [" .. mapID .. "]",
				["icon"] = 237385,
				["description"] = L.MINI_LIST_DESC,
				["visible"] = true,
				["g"] = {
					app.CreateRawText(L.UPDATE_LOCATION_NOW, {
						["icon"] = 134269,
						["description"] = L.UPDATE_LOCATION_NOW_DESC,
						["OnClick"] = function(row, button)
							app.LocationTrigger();
							return true;
						end,
						["OnUpdate"] = app.AlwaysShowUpdate,
					}),
				},
			});
			cachedMapData[mapID] = mapData;
		end
		app.AssignChildren(mapData);
		mapData._lastshown = GetTimePreciseSec()
		mapData._firstshow = true
		app.PrintDebug("Built new map data for",mapID)
		return mapData;
	end,
};

-- Shared Mini List Behaviours
-- CRIEVE NOTE: I want to do some fancy Settings Menu Style thing to make it configurable,
-- maybe have a couple more styles or have them be extensible via an addon extension
local CachedMapData = setmetatable({}, RetailMapDataStyleMetatable);
app.GetCachedDataForMapID = function(mapID)
	return CachedMapData[mapID];
end
app.AddEventHandler("OnSettingsNeedsRefresh", function()
	-- if settings change that require a refresh, wipe cached maps
	-- TODO: technically, we might only need to completely wipe if the active Fillers are changed
	wipe(CachedMapData)
end)
local function TrySwapFromCache(self)
	local now = GetTimePreciseSec()
	-- window to keep cached maps/not re-build & update them
	local expired = now - 60
	local mapID = self.mapID
	if mapID == 0 then return end

	local header = CachedMapData[mapID]
	if header._firstshow then
		header._firstshow = nil
		-- never built, allow rebuild
		return
	elseif header._lastshown < expired then
		app.PrintDebug("Do update for cached map",mapID,header._lastshown,expired)
		-- we don't necessarily need to wipe the data, it would just need a force update if used again
		self.HasPendingUpdate = true
	end
	-- Update the mapID into the data for external reference in case not a real map
	header.mapID = self.mapID;
	self:SetData(header)
	app.PrintDebug("Loaded Swap Map Data",mapID)
	-- Reset the Fill if needed
	if not header._fillcomplete then
		-- Reset the minilist Runner before filling again
		self:GetRunner().Reset()
		app.PrintDebug("Re-fill cached Map",mapID)
		app.SetSkipLevel(2);
		app.FillGroups(header);
		app.SetSkipLevel(0);
	end
	-- If the minilist is meant to be expanded, cache the expand info.
	self:TryAddAutoExpand()
	app.CallbackHandlers.Callback(self.Update, self)
	return true
end
local function TryAddAutoExpand(self)
	if not self.fullCollapsed then
		if app.Settings:GetTooltipSetting("Expand:MiniList")
			or (IsInInstance() and app.Settings:GetTooltipSetting("Expand:Difficulty")) then
			self.ExpandInfo = { Expand = true }
			return true
		end
	end
end

-- Implementation
app:CreateWindow("MiniList", {
	AllowCompleteSound = true,
	SettingsName = "Mini List",
	-- IsTopLevel = true,
	-- Preload = true,
	-- Debugging = true,
	-- mapID = -1,
	Defaults = {
		["y"] = 0,
		["x"] = 0,
		["scale"] = 0.7,
		["width"] = 360,
		["height"] = 176,
		["visible"] = true,
		["point"] = "BOTTOMRIGHT",
		["relativePoint"] = "BOTTOMRIGHT",
	},
	Commands = {
		"attmini",
		"attminilist",
	},
	-- Called when the minilist should be shown with the specified mapID
	SetMapID = function(self, mapID, force)
		if self.mapID and self.data then
			self.data._lastshown = GetTimePreciseSec()
		end
		-- don't allow bad values
		mapID = tonumber(mapID) or 0
		app.PrintDebug("SetMapID",mapID,force)
		if force and mapID ~= 0 then
			CachedMapData[mapID] = nil
			self.mapID = nil
		end
		if mapID == self.mapID then
			self:Show();
			return
		end
		app.PrintDebug("new map",self.mapID,"=>",mapID);
		self.mapID = mapID;

		-- Swap will simply swap the data into the minilist and allow it to Refresh only, since it has already been Updated recently
		if self:TrySwapFromCache() then return end

		-- Reset the minilist Runner before building new data
		self:GetRunner().Reset()
		-- Detatch the Window from the previous data (just in case)
		if self.data then
			self.data.window = nil
		end

		-- Assign the fresh data to the Window
		local mapData = CachedMapData[mapID];
		self:SetData(mapData);
		self.HasPendingUpdate = true

		-- If on a valid mapID, then expand and fill
		if mapID ~= 0 then
			-- If the minilist is meant to be expanded, cache the expand info.
			self:TryAddAutoExpand()

			-- Fill up the groups that need to be filled!
			mapData._fillcomplete = nil
			app.SetSkipLevel(2);
			app.FillGroups(mapData);
			app.SetSkipLevel(0);
		end

		-- Make sure to scroll to the top when being rebuilt
		self.ScrollBar:SetValue(1);
		app.CallbackHandlers.Callback(self.Update, self)
	end,
	-- Visible Mini List, and needs to verify the mapID to Set
	RefreshLocation = function(self)
		-- Acquire the new map ID.
		local mapID = app.CurrentMapID;
		app.PrintDebug("RefreshLocation",mapID)
		-- can't really do anything about this from here anymore
		if not mapID then return end
		-- don't auto-load minimap to anything higher than a 'Zone' if we are in an instance, unless it has no parent?
		if IsInInstance() then
			local mapInfo = app.CurrentMapInfo;
			if mapInfo and mapInfo.parentMapID and (mapInfo.mapType or 0) < 3 then
				-- app.PrintDebug("Don't load Large Maps in minilist")
				return;
			end
		end

		self:SetMapID(mapID);
	end,
	TrySwapFromCache = TrySwapFromCache,
	TryAddAutoExpand = TryAddAutoExpand,
	OnInit = function(self, handlers)
		app.ToggleMiniListForCurrentZone = function(mapID)
			if not mapID and self:IsVisible() then
				self:Hide();
			else
				self:SetMapID(mapID or app.CurrentMapID);
				self:Show()
			end
		end
		app.LocationTrigger = function(forceNewMap)
			app.PrintDebug("app.LocationTrigger",forceNewMap)
			if forceNewMap then
				wipe(CachedMapData)
				self.mapID = nil
			end
			if self:IsVisible() then
				app.CallbackHandlers.AfterCombatOrDelayedCallback(self.RefreshLocation, 0.1, self)
			end
		end

		self:AddEventHandler("OnCurrentDifficultiesChanged", function(difficulties)
			-- TODO: this is still excessive AF in Retail. Can't think of a situation where it would actually be needed
			self:Rebuild();
		end);
		app.AddEventHandler("OnWindowFillComplete", function(window)
			if window.Suffix ~= self.Suffix then return end
			local mapData = window.data
			local g = mapData and mapData.g
			if not g then return end

			-- check to expand groups after they have been built and updated
			-- dont re-expand if the user has previously full-collapsed the minilist
			-- need to force expand if so since the groups haven't been updated yet
			if self:TryAddAutoExpand() then
				window:Update();
			end
		end);
		app.AddEventHandler("Settings.OnSet", function(container,key,val)
			if container ~= "Tooltips" then return end

			if key == "Expand:Difficulty" then
				if IsInInstance() then
					self:Rebuild()
				end
			elseif key == "Expand:MiniList" then
				self:Rebuild()
			end
		end)
	end,
	OnLoad = function(self, settings)
		app.AddEventHandler("OnCurrentMapIDChanged", app.LocationTrigger)
	end,
	OnSave = function(self, settings)
		settings.mapID = self.mapID;	-- is this really useful for something?
	end,
	-- This is called when showing the window when no data is present, or manually
	OnRebuild = function(self)
		self:SetMapID(app.CurrentMapID, true)
	end,
});
app.ToggleMiniListForCurrentZone = function(mapID)
	app:GetWindow("MiniList"):SetVisible(true);
end