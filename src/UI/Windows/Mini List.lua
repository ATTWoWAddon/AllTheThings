-- App locals
local _, app = ...;
local L = app.L;

if app.IsRetail then return; end

local contains, containsValue = app.contains, app.containsValue;
local ExpandGroupsRecursively, GetRelativeValue, MergeObject
	= app.ExpandGroupsRecursively, app.GetRelativeValue, app.MergeObject;

-- Global locals
local ipairs, pairs, tinsert, math_floor, getmetatable, setmetatable, tostring =
	  ipairs, pairs, tinsert, math.floor, getmetatable, setmetatable, tostring;
local C_Map_GetMapInfo, C_Map_GetPlayerMapPosition
	= C_Map.GetMapInfo, C_Map.GetPlayerMapPosition;

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

-- Local variables
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
			if mapData ~= self.data then
				self:GetRunner().Reset()
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