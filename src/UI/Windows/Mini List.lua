-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local ipairs, pairs, getmetatable, setmetatable, tostring, tinsert, math_floor, wipe
	= ipairs, pairs, getmetatable, setmetatable, tostring, tinsert, math.floor, wipe;
local C_Map_GetMapInfo, C_Map_GetPlayerMapPosition, GetRealZoneText, GetSubZoneText, IsInInstance
	= C_Map.GetMapInfo, C_Map.GetPlayerMapPosition, GetRealZoneText, GetSubZoneText, IsInInstance;
local contains, containsValue = app.contains, app.containsValue;
local wipearray, ArrayAppend, CreateObject, MergeObject, MergeProperties, NestObjects, IsQuestFlaggedCompleted
	= app.wipearray, app.ArrayAppend, app.__CreateObject, app.MergeObject, app.MergeProperties, app.NestObjects, app.IsQuestFlaggedCompleted
local GetRelativeGroup, GetRelativeValue, ExpandGroupsRecursively
	= app.GetRelativeGroup, app.GetRelativeValue, app.ExpandGroupsRecursively;

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

-- Classic Style Mini List
local SortTypeByHeaderID = setmetatable({
	[app.HeaderConstants.QUESTS] = "ClassicQuestOrder",
}, {
	__index = function(t, key)
		local method = "text";
		rawset(t, key, method);
		return method;
	end,
});
local function SortForMiniList(a,b)
	-- If either object doesn't exist
	if a then
		if not b then
			return true;
		end
	elseif b then
		return false;
	else
		-- neither a or b exists, equality returns false
		return false;
	end

	if a.isRaid then
		if not b.isRaid then
			return true;
		end
	elseif b.isRaid then
		return false;
	elseif b.maps or b.mapID then
		if not (a.maps or a.mapID) then
			return true;
		end
	elseif a.maps then
		return false;
	end

	-- Any two similar-type groups with text
	return tostring(a.name or a.text) < tostring(b.name or b.text);
end
local ClassicMapDataStyleMetatable = {
	__mode = "kv",
	__index = function(cachedMapData, mapID)
		if mapID then
			local results = app.SearchForField("mapID", mapID);
			if #results > 0 then
				-- Simplify the returned groups
				local groups = {};
				local filters = setmetatable({}, {
					__index = function(t, f)
						for i=1,#groups,1 do
							local o = groups[i];
							if o.filterID == f then
								if not o.g then o.g = {}; end
								t[f] = o;
								return o;
							end
						end

						local o = app.CreateFilter(f);
						tinsert(groups, o);
						t[f] = o;
						o.g = {};
						return o;
					end
				});
				local function MergeIntoFilter(f, o)
					MergeObject(filters[f].g, o);
				end
				local headers = setmetatable({}, {
					__index = function(t, headerID)
						for i=1,#groups,1 do
							local o = groups[i];
							if o.headerID == headerID then
								if not o.g then o.g = {}; end
								t[headerID] = o;
								return o;
							end
						end

						local o = app.CreateCustomHeader(headerID);
						tinsert(groups, o);
						t[headerID] = o;
						o.g = {};
						return o;
					end
				});
				local function MergeIntoHeader(headerID, o)
					MergeObject(headers[headerID].g, o);
				end

				local header = app.CreateMap(mapID, groups);
				for i, group in ipairs(results) do
					local clone = {};
					for key,value in pairs(group) do
						if key == "maps" then
							local maps = {};
							for i,mapID in ipairs(value) do
								tinsert(maps, mapID);
							end
							clone[key] = maps;
						elseif key == "g" then
							local g = {};
							for i,o in ipairs(value) do
								o = app.CloneClassInstance(o);
								ExpandGroupsRecursively(o, false);
								tinsert(g, o);
							end
							clone[key] = g;
						else
							clone[key] = value;
						end
					end
					local c = GetRelativeValue(group, "c");
					if c then clone.c = c; end
					local r = GetRelativeValue(group, "r");
					if r then clone.r = r; end
					local lvl = GetRelativeValue(group, "lvl");
					if lvl then clone.lvl = lvl; end
					setmetatable(clone, getmetatable(group));

					local key = group.key;
					if (key == "mapID" or key == "instanceID") or ((key == "headerID" or key == "npcID") and (group.maps and (mapID < 0 and contains(group.maps, mapID)))) then
						header.key = key;
						header[key] = group[key];
						MergeObject({header}, clone);
					else
						local headerConst = nil;
						if key == "criteriaID" then
							clone.achievementID = group.achievementID;
							headerConst = group.pb and app.HeaderConstants.PET_BATTLES or app.HeaderConstants.ACHIEVEMENTS;
						elseif key == "achievementID" then
							headerConst = app.HeaderConstants.ACHIEVEMENTS;
						elseif key == "questID" then
							headerConst = group.pb and app.HeaderConstants.PET_BATTLES or app.HeaderConstants.QUESTS;
						elseif key == "factionID" then
							headerConst = app.HeaderConstants.FACTIONS;
						elseif key == "explorationID" then
							headerConst = app.HeaderConstants.EXPLORATION;
						elseif key == "flightpathID" then
							headerConst = app.HeaderConstants.FLIGHT_PATHS;
						elseif key == "objectID" then
							headerConst = app.HeaderConstants.TREASURES;
						end

						-- Does this involve a profession?
						local requireSkill = GetRelativeValue(group, "requireSkill");
						if requireSkill then
							clone = app.CreateProfession(requireSkill, { g = { clone } });
							headerConst = app.HeaderConstants.PROFESSIONS;
						end

						if headerConst then
							MergeIntoHeader(headerConst, clone);
						elseif key == "headerID" then
							if clone.parent and clone.parent.headerID then
								MergeIntoHeader(clone.parent.headerID, clone);
							else
								MergeObject(groups, clone);
							end
						elseif key == "speciesID" then
							MergeIntoFilter(101, clone);	-- Pet Battles
						else
							local headerID = GetRelativeValue(group, "headerID");
							if headerID then
								-- Does this involve a holiday?
								if group.e then headerID = app.HeaderConstants.HOLIDAYS; end
								MergeIntoHeader(headerID, clone);
								if group.parent and group.parent.isRaid then
									headers[headerID].isRaid = true;
								end
							elseif clone.providers then
								if clone.providers[1] == 'o' then
									MergeIntoHeader(app.HeaderConstants.TREASURES, clone);
								else
									MergeIntoHeader(app.HeaderConstants.ZONE_DROPS, clone);
								end
							elseif clone.crs or key == "itemID" then
								MergeIntoHeader(app.HeaderConstants.ZONE_DROPS, clone);
							else
								MergeObject(groups, clone);
							end
						end
					end
				end

				-- Swap out the map data for the header.
				results = ((results.classID and app.CreateCharacterClass) or (header.key == "instanceID" and app.CreateInstance) or app.CreateMap)(header[header.key], header);
				results.visible = true;
				results.mapID = mapID;
				results.back = 1;
				results.indent = 0;

				if app.Settings:GetTooltipSetting("Expand:MiniList") then
					ExpandGroupsRecursively(results, true);
					results.expanded = true;
					if app.Settings:GetTooltipSetting("Expand:Difficulty") then
						local difficultyID = app.GetCurrentDifficultyID();
						if difficultyID ~= 0 then
							for _,row in ipairs(header.g) do
								if row.difficultyID or row.difficulties then
									if (row.difficultyID or -1) == difficultyID or (row.difficulties and containsValue(row.difficulties, difficultyID)) then
										if not row.expanded then ExpandGroupsRecursively(row, true, true); expanded = true; end
									elseif row.expanded then
										ExpandGroupsRecursively(row, false, true);
									end
								end
							end
						end
					end
				end

				for i,o in ipairs(header.g) do
					if o.key == "headerID" then
						o.SortType = SortTypeByHeaderID[o.headerID];
					end
				end

				-- Sort the list, but not for instances.
				if not results.instanceID and not IsInInstance() then
					app.Sort(groups, SortForMiniList);
				end

				-- Check to see completion...
				app.AssignChildren(results);
				cachedMapData[mapID] = results;
				return results;
			else
				-- If we don't have any map data on this area, report it to the chat window.
				ShowDiscordReportPopupForMapID(mapID);
			end
		end
	end
};

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
local groups, nested, headerKeys, difficultyGroup, nextParent, headerID, isInInstance
local rootGroups, mapGroups = {}, {};
local RetailMapDataStyleMetatable = {
	__mode = "kv",
	__index = function(cachedMapData, mapID)
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
			groups = {};
			wipearray(rootGroups);
			wipearray(mapGroups);
			local currentMaps = {[mapID] = true};
			mapData = { mapID = mapID, g = groups }
			isInInstance = IsInInstance();
			headerKeys = isInInstance and subGroupInstanceKeys or subGroupKeys;
			local group, groupmapID, groupmaps
			-- split search results by whether they represent the 'root' of the minilist or some other mapped content
			for i=1,#results do
				-- do not use any raw Source groups in the final list
				group = app.CloneClassInstance(results[i]);
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
				local externalMapHeader = app.CreateRawText(TRACKER_FILTER_REMOTE_ZONES, {icon=450908,description=L.REMOTE_ZONES_DESCRIPTION,external=true})
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
		return mapData;
	end,
};

-- Shared Mini List Behaviours
-- CRIEVE NOTE: I want to do some fancy Settings Menu Style thing to make it configurable,
-- maybe have a couple more styles or have them be extensible via an addon extension
local CachedMapData = setmetatable({}, app.IsRetail and RetailMapDataStyleMetatable or ClassicMapDataStyleMetatable);
app.GetCachedDataForMapID = function(mapID)
	return CachedMapData[mapID];
end
app.AddEventHandler("OnSettingsNeedsRefresh", function()
	-- if settings change that require a refresh, wipe cached maps
	wipe(CachedMapData)
end)

-- Implementation
app:CreateWindow("MiniList", {
	AllowCompleteSound = true,
	SettingsName = "Mini List",
	IsTopLevel = true,
	Preload = true,
	mapID = -1,
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
	SetMapID = function(self, mapID, show)
		if mapID and mapID ~= self.mapID then
			self.mapID = mapID;
			self:Rebuild();
		end
		if show then
			self:Show();
		end
	end,
	OnInit = function(self, handlers)
		handlers.PLAYER_DIFFICULTY_CHANGED = function()
			wipe(CachedMapData);
			self:Rebuild();
		end
		app.ToggleMiniListForCurrentZone = function()
			if self:IsVisible() then
				self:Hide();
			else
				self:SetMapID(app.CurrentMapID, true);
			end
		end
		app.LocationTrigger = function(forceNewMap, fromWhere)
			if forceNewMap then wipe(CachedMapData); end
			self:DelayedRebuild();
		end

		if app.IsRetail then
			-- CRIEVE NOTE: I don't like the expand after the fact
			-- If there's a way to do that immediately that'd be swell
			app.AddEventHandler("OnWindowFillComplete", function(window)
				if window.Suffix ~= self.Suffix then return end
				local mapData = window.data
				local g = mapData and mapData.g
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
							window:Update();
							return
						end
					end
				end
				-- check to expand groups after they have been built and updated
				-- dont re-expand if the user has previously full-collapsed the minilist
				-- need to force expand if so since the groups haven't been updated yet
				if not window.fullCollapsed and app.Settings:GetTooltipSetting("Expand:MiniList") then
					window.ExpandInfo = { Expand = true };
					window:Update();
				end
			end);
		end
	end,
	OnLoad = function(self, settings)
		pcall(self.RegisterEvent, self, "PLAYER_DIFFICULTY_CHANGED");
		self:SetMapID(app.CurrentMapID or settings.mapID);
		app.AddEventHandler("OnCurrentMapIDChanged", function()
			self:SetMapID(app.CurrentMapID);
		end);
	end,
	OnSave = function(self, settings)
		settings.mapID = self.mapID;
	end,
	OnRebuild = function(self)
		if self.mapID then
			-- Reset the minilist Runner before building new data
			local mapData = CachedMapData[self.mapID];
			local oldData = self.data;
			if mapData ~= oldData then
				if oldData then
					-- Unassign this window as the target so that Runner doesn't update the totals
					oldData.window = nil;
					self:GetRunner().Reset()
				end
				self:SetData(mapData);

				-- Fill up the groups that need to be filled!
				app.SetSkipLevel(2);
				app.FillGroups(mapData);
				app.SetSkipLevel(0);

				-- Make sure to scroll to the top when being rebuilt
				self.ScrollBar:SetValue(1);
			end
		end
	end,
});
