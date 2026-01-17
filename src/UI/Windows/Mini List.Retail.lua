-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local pairs, setmetatable, tinsert, math_floor, wipe
	= pairs, setmetatable, tinsert, math.floor, wipe;
local C_Map_GetMapInfo, C_Map_GetPlayerMapPosition, GetRealZoneText, GetSubZoneText, IsInInstance, GetTimePreciseSec
	= C_Map.GetMapInfo, C_Map.GetPlayerMapPosition, GetRealZoneText, GetSubZoneText, IsInInstance, GetTimePreciseSec;
local contains, wipearray, ArrayAppend, CreateObject, MergeObject, MergeProperties, NestObjects, IsQuestFlaggedCompleted, SearchForField
	= app.contains, app.wipearray, app.ArrayAppend, app.__CreateObject, app.MergeObject, app.MergeProperties, app.NestObjects, app.IsQuestFlaggedCompleted, app.SearchForField
local GetRelativeGroup, ExpandGroupsRecursively
	= app.GetRelativeGroup, app.ExpandGroupsRecursively;
local Callback = app.CallbackHandlers.Callback;

-- Implementation
app.AddCustomWindowOnUpdate("MiniList", function(self, force, got)
	-- app.PrintDebug("MiniList:Update",force,got)
	if not self.initialized then
		force = true;
		self.initialized = true;
		self.CurrentMaps = {};
		self.mapID = -1;
		self.IsSameMapID = function(self)
			return self.CurrentMaps[self.mapID];
		end
		self.SetMapID = function(self, mapID)
			-- app.PrintDebug("SetMapID",mapID)
			self.mapID = mapID;
			self:SetVisible(true);
			self:Update();
		end
		-- local C_Map_GetMapChildrenInfo = C_Map.GetMapChildrenInfo;

		-- Wraps a given object such that it can act as an unfiltered Header of the base group
		local CreateWrapVisualHeader = app.CreateVisualHeaderWithGroups
		-- Returns the consolidated data format for the next header level
		-- Headers are forced not collectible, and will have their content sorted, and can be copied from the existing Source header
		local function CreateHeaderData(group, header)
			-- copy an uncollectible version of the existing header
			if header then
				-- special case for Difficulty headers, need to be actual difficulty groups to merge properly with any existing
				if header.difficultyID then
					header = CreateObject(header, true)
					header.g = { group }
					return header
				end
				-- special case for Map auto-headers, ignore re-nesting a Map header of the current Map
				if header.type == "m" and header.keyval == self.mapID then
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

		(function()
		local results, groups, nested, header, headerKeys, difficultyGroup, nextParent, headerID, isInInstance
		local rootGroups, mapGroups = {}, {};

		self.MapCache = setmetatable({}, { __mode = "kv" })
		local function TrySwapFromCache()
			-- window to keep cached maps/not re-build & update them
			local expired = GetTimePreciseSec() - 60
			for mapID,mapData in pairs(self.MapCache) do
				-- app.PrintDebug("Check expired cached map",mapID,mapData._lastshown,expired)
				if mapData._lastshown < expired then
					-- app.PrintDebug("Removed cached map",mapID,mapData._lastshown,expired)
					self.MapCache[mapID] = nil
				end
			end
			local mapID = self.mapID
			header = self.MapCache[mapID]
			if not header then return end
			if not header._maps[mapID] then
				-- app.PrintDebug("cache maps cleared! rebuild new for",mapID)
				self.MapCache[mapID] = nil
				return
			end
			-- app.PrintDebug("Loaded cached Map",mapID)
			header._lastshown = GetTimePreciseSec()
			self:SetData(header)
			self.CurrentMaps = header._maps
			-- app.PrintTable(self.CurrentMaps)
			-- Reset the Fill if needed
			if not header._fillcomplete then
				-- app.PrintDebug("Re-fill cached Map",mapID)
				app.SetSkipLevel(2);
				app.FillGroups(header);
				app.SetSkipLevel(0);
			end
			Callback(self.Update, self);
			return true
		end

		app.AddEventHandler("OnSettingsNeedsRefresh", function()
			-- if settings change that requrie refresh, wipe cached maps
			wipe(self.MapCache)
		end)

		self.Rebuild = function(self)
			-- Reset the minilist Runner before building new data
			self:GetRunner().Reset()

			if TrySwapFromCache() then return end
			-- app.PrintDebug("Rebuild",self.mapID);
			local currentMaps, mapID = {}, self.mapID

			-- Get all results for this map
			results = SearchForField("mapID", mapID)
			-- app.PrintDebug("Rebuild#",#results);
			if results and #results > 0 then

				-- I tend to like this way of finding sub-maps, but it does mean we rely on Blizzard and get whatever maps they happen to claim
				-- are children of a given map... sometimes has weird results like scenarios during quests being considered children in
				-- other zones. Since it can give us special top-level maps (Anniversary AV) also as children of other top-level maps (Hillsbarad)
				-- we would need to filter the results and add them properly into the results below via sub-groups if they are maps themselves
				-- local submapinfos = ArrayAppend(C_Map_GetMapChildrenInfo(mapID, 5), C_Map_GetMapChildrenInfo(mapID, 6))
				-- if submapinfos then
					-- for _,mapInfo in ipairs(submapinfos) do
						-- subresults = SearchForField("mapID", mapInfo.mapID)
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
							subresults = SearchForField("mapID", subMapID)
							-- app.PrintDebug("Adding Sub-Map Results:",subMapID,#subresults)
							results = ArrayAppend(results, subresults)
						end
					end
				end
				-- Simplify the returned groups
				groups = {};
				wipearray(rootGroups);
				wipearray(mapGroups);
				header = { mapID = mapID, g = groups }
				currentMaps[mapID] = true;
				isInInstance = IsInInstance();
				headerKeys = isInInstance and subGroupInstanceKeys or subGroupKeys;
				local group, groupmapID, groupmaps
				-- split search results by whether they represent the 'root' of the minilist or some other mapped content
				for i=1,#results do
					-- do not use any raw Source groups in the final list
					group = CreateObject(results[i]);
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
					MergeProperties(header, group, true);
					NestObjects(header, group.g);
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
								group = CreateHeaderData(group, nextParent);
								nested = true;
							end
						elseif nextParent.isMinilistHeader then
							group = CreateHeaderData(group, nextParent);
							nested = true;
						else
							for i=1,#headerKeys do
								if nextParent[headerKeys[i]] then
									-- create the specified group Type header
									group = CreateHeaderData(group, nextParent);
									nested = true;
									break;
								end
							end
						end
						nextParent = nextParent.parent;
					end

					-- really really special cases...
					-- Battle Pets get an additional raw Filter nesting
					if not nested and group.key == "speciesID" then
						group = app.CreateFilter(101, CreateHeaderData(group));
					end

					-- If relative to a difficultyGroup, then merge it into one.
					if difficultyGroup then
						group = CreateHeaderData(group, difficultyGroup);
						-- remove the name sorttype from the difficulty-based header
						group.SortType = nil
						-- link the difficulty group to the current window header so that it assumes its expected hash
						group.parent = header
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
					local externalMapHeader = app.CreateRawText(TRACKER_FILTER_REMOTE_ZONES, {icon=450908,description=L.REMOTE_ZONES_DESCRIPTION,external=true})
					externalMapHeader.SortType = "Global";
					NestObjects(externalMapHeader, externalMaps)
					MergeObject(groups, externalMapHeader)
				end

				if #rootGroups == 0 then
					-- if only one group in the map root, then shift it up as the map root instead
					local headerGroups = header.g;
					if #headerGroups == 1 then
						local topGroup = headerGroups[1]
						if not topGroup.external
							-- only shift up certain group types
							and (topGroup.instanceID or topGroup.classID or topGroup.mapID)
						then
							header.g = nil;
							-- don't persist the parent links since this will now be a minilist root
							topGroup.parent = nil
							topGroup.sourceParent = nil
							MergeProperties(header, topGroup, true);
							NestObjects(header, topGroup.g);
						end
					else
						app.PrintDebug("No root Map groups!",mapID)
					end
				end

				header.u = nil;
				header.e = nil;
				if header.instanceID then
					header = app.CreateInstance(header.instanceID, header);
				else
					if header.classID then
						header = app.CreateCharacterClass(header.classID, header);
					else
						header = app.CreateMap(header.mapID, header);
					end
					-- sort top level by name if not in an instance
					header.SortType = "Global";
				end

				-- Swap out the map data for the header.
				self:SetData(header);
				header._maps = currentMaps
				header._lastshown = GetTimePreciseSec()
				-- app.PrintDebug("Saved cached Map",mapID,header._lastshown)
				self.MapCache[mapID] = header
				-- Fill up the groups that need to be filled!
				app.SetSkipLevel(2);
				app.FillGroups(header);
				app.SetSkipLevel(0);
				self:BuildData();

				self.CurrentMaps = currentMaps;

				-- Make sure to scroll to the top when being rebuilt
				self.ScrollBar:SetValue(1);
			else
				-- If we don't have any data cached for this mapID and it exists in game, report it to the chat window.
				self.CurrentMaps = {[mapID]=true};
				local mapInfo = C_Map_GetMapInfo(mapID);
				if mapInfo then
					-- only report for mapIDs which actually exist
					mapID = self.mapID
					-- Linkify the output
					local popupID = "map-" .. mapID
					app:SetupReportDialog(popupID, "Missing Map: " .. mapID, BuildDiscordMapInfoTable(mapID, mapInfo))
					app.report(app:Linkify(app.Version.." (Click to Report) No data found for this Location!", app.Colors.ChatLinkError, "dialog:" .. popupID));
				end
				self:SetData(app.CreateMap(mapID, {
					["text"] = L.MINI_LIST .. " [" .. mapID .. "]",
					["icon"] = 237385,
					["description"] = L.MINI_LIST_DESC,
					["visible"] = true,
					["g"] = {
						app.CreateRawText(L.UPDATE_LOCATION_NOW, {
							["icon"] = 134269,
							["description"] = L.UPDATE_LOCATION_NOW_DESC,
							["OnClick"] = function(row, button)
								Callback(app.LocationTrigger)
								return true;
							end,
							["OnUpdate"] = app.AlwaysShowUpdate,
						}),
					},
				}));
				self:BuildData();
			end
			-- app.PrintDebugPrior("RB-Done")
			return true;
		end
		end)()
		self.RefreshLocation = function(show)
			-- Acquire the new map ID.
			local mapID = app.CurrentMapID;
			-- app.PrintDebug("RefreshLocation",mapID)
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

			-- Cache that we're in the current map ID.
			-- app.PrintDebug("new map");
			self.mapID = mapID;
			if show then
				self:SetVisible(true)
			end
			-- force update when showing the minilist
			Callback(self.Update, self);
		end
	end
	if self:IsVisible() then
		-- Update the window and all of its row data
		if not self:IsSameMapID() then
			-- app.PrintDebug("Leaving map",self.data.mapID)
			self.data._lastshown = GetTimePreciseSec()
			force = self:Rebuild();
		else
			-- Update the mapID into the data for external reference in case not rebuilding
			self.data.mapID = self.mapID;
		end
		self:DefaultUpdate(force, got);
	end
end)

local function ToggleMiniListForCurrentZone()
	local window = app:GetWindow("MiniList");
	if window:IsVisible() then
		window:Hide();
	else
		window.RefreshLocation(true);
	end
end
app.ToggleMiniListForCurrentZone = ToggleMiniListForCurrentZone;

app.AddSlashCommands({"attmini","attminilist"},
function() app:ToggleMiniListForCurrentZone() end)

-- TODO: figure out why minilist doesn't re-show itself sometimes, then make auto-hiding of windows configurable in some way...
-- app.AddEventRegistration("PET_BATTLE_OPENING_START", function(...)
-- 	-- check for open ATT windows
-- 	for _,window in pairs(app.Windows) do
-- 		if window:IsVisible() then
-- 			if not app.PetBattleClosed then app.PetBattleClosed = {}; end
-- 			tinsert(app.PetBattleClosed, window);
-- 			window:Toggle();
-- 		end
-- 	end
-- end)
-- this fires twice when pet battle ends
-- app.AddEventRegistration("PET_BATTLE_CLOSE", function(...)
-- 	-- app.PrintDebug("PET_BATTLE_CLOSE",app.PetBattleClosed and #app.PetBattleClosed)
-- 	if app.PetBattleClosed then
-- 		for _,window in ipairs(app.PetBattleClosed) do
-- 			-- special open for Current Instance list
-- 			if window.Suffix == "MiniList" then
-- 				DelayedCallback(app.ToggleMiniListForCurrentZone, 1);
-- 			else
-- 				window:Toggle();
-- 			end
-- 		end
-- 		app.PetBattleClosed = nil;
-- 	end
-- end)

do
	local MinilistSuffix = "MiniList"
	local containsValue = app.containsValue;
	local function TryGeneralExpand(window)
		-- check to expand groups after they have been built and updated
		-- dont re-expand if the user has previously full-collapsed the minilist
		-- need to force expand if so since the groups haven't been updated yet
		if not window.fullCollapsed and app.Settings:GetTooltipSetting("Expand:MiniList") then
			window.ExpandInfo = { Expand = true };
			Callback(window.Update, window)
		end
	end
	local function TryExpandMinilist(window)
		if window.Suffix ~= MinilistSuffix then return end

		local header = window.data
		local g = header and header.g
		if not g then return end

		-- app.PrintDebug("Try expand minilist",app.Settings:GetTooltipSetting("Expand:Difficulty"),app.GetCurrentDifficultyID())
		if app.Settings:GetTooltipSetting("Expand:Difficulty") then
			local difficultyID = app.GetCurrentDifficultyID()
			if difficultyID and difficultyID ~= 0 then
				local expanded, row
				for i=1,#g do
					row = g[i]
					if row.difficultyID or row.difficulties then
						if (row.difficultyID or -1) == difficultyID or (row.difficulties and containsValue(row.difficulties, difficultyID)) then
							ExpandGroupsRecursively(row, true, true)
							expanded = true
						elseif row.expanded then
							ExpandGroupsRecursively(row, false, true)
						end
					-- Zone Drops/Common Boss Drops should also be expanded within instances
					-- elseif row.headerID == app.HeaderConstants.ZONE_DROPS or row.headerID == app.HeaderConstants.COMMON_BOSS_DROPS then
					-- 	if not row.expanded then ExpandGroupsRecursively(row, true); expanded = true; end
					end
				end

				if expanded then
					Callback(window.Update, window)
					return
				end
			end
		end
		TryGeneralExpand(window)
	end
	app.AddEventHandler("OnWindowFillComplete", TryExpandMinilist)
end