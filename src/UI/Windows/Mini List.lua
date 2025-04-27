-- App locals
local appName, app = ...;
local contains, containsValue = app.contains, app.containsValue;
local AssignChildren, CloneReference, ExpandGroupsRecursively, GetRelativeField, GetRelativeValue, MergeObject, SearchForField
	= app.AssignChildren, app.CloneReference, app.ExpandGroupsRecursively, app.GetRelativeField, app.GetRelativeValue, app.MergeObject, app.SearchForField;
local GetTimerunningSeasonEventID = app.Modules.Events.GetTimerunningSeason;

-- Global locals
local ipairs, pairs, tinsert, getmetatable, setmetatable, tostring =
	  ipairs, pairs, tinsert, getmetatable, setmetatable, tostring;
local C_Map_GetMapInfo, C_Map_GetAreaInfo = C_Map.GetMapInfo, C_Map.GetAreaInfo;

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
local CachedMapData = setmetatable({}, {
	__index = function(cachedMapData, mapID)
		local results = SearchForField("mapID", mapID);
		if #results > 0 then
			-- Simplify the returned groups
			local groups = {};
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

					local o = app.CreateNPC(headerID);
					tinsert(groups, o);
					t[headerID] = o;
					o.g = {};
					return o;
				end
			});
			local function MergeIntoHeader(headerID, o)
				MergeObject(headers[headerID].g, o);
			end

			-- If there's a timerunning event going on...
			local timerunningSeasonEventID = GetTimerunningSeasonEventID();
			if timerunningSeasonEventID and app.Settings:GetTooltipSetting("Filter:MiniList:Timerunning") then
				local refined = {};
				for _,j in ipairs(results) do
					if GetRelativeValue(j, "e") == timerunningSeasonEventID then
						tinsert(refined, j);
					end
				end
				results = refined;
			end

			local header = {};
			header.mapID = mapID;
			header.g = groups;
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
							o = CloneReference(o);
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
						headerConst = app.HeaderConstants.ACHIEVEMENTS;
					elseif key == "achievementID" then
						headerConst = app.HeaderConstants.ACHIEVEMENTS;
					elseif key == "questID" then
						headerConst = app.HeaderConstants.QUESTS;
					elseif key == "factionID" then
						headerConst = app.HeaderConstants.FACTIONS;
					elseif key == "explorationID" then
						headerConst = app.HeaderConstants.EXPLORATION;
					elseif key == "flightpathID" then
						headerConst = app.HeaderConstants.FLIGHT_PATHS;
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
					else
						local headerID = GetRelativeValue(group, "headerID");
						if headerID then
							MergeIntoHeader(headerID, clone);
							if group.parent and group.parent.isRaid then
								headers[headerID].isRaid = true;
							end
						else
							MergeObject(groups, clone);
						end
					end
				end
			end

			-- Swap out the map data for the header.
			results = ((results.classID and app.CreateCharacterClass) or (header.key == "instanceID" and app.CreateInstance) or app.CreateMap)(header[header.key], header);
			ExpandGroupsRecursively(results, true);
			results.visible = true;
			results.expanded = true;
			results.mapID = mapID;
			results.back = 1;
			results.indent = 0;

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
			AssignChildren(results);
			cachedMapData[mapID] = results;
			return results;
		else
			-- If we don't have any map data on this area, report it to the chat window.
			print("No map found for this location ", app.GetMapName(mapID), " [", mapID, "]");

			local mapInfo = C_Map_GetMapInfo(mapID);
			if mapInfo then
				local mapPath = mapInfo.name or ("Map ID #" .. mapID);
				mapID = mapInfo.parentMapID;
				while mapID do
					mapInfo = C_Map_GetMapInfo(mapID);
					if mapInfo then
						mapPath = (mapInfo.name or ("Map ID #" .. mapID)) .. " > " .. mapPath;
						mapID = mapInfo.parentMapID;
					else
						break;
					end
				end
				print("Path: ", mapPath);
			end
			print("Please report this to the ATT Discord! Thanks! ", app.Version);
		end
	end
});

-- Implementation
app:CreateWindow("MiniList", {
	AllowCompleteSound = true,
	SettingsName = "Mini List",
	IsTopLevel = true,
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
	OnInit = function(self, handlers)
		handlers.PLAYER_DIFFICULTY_CHANGED = function()
			wipe(CachedMapData);
			self:Rebuild();
		end
		self.SetMapID = function(self, mapID, show)
			if mapID and mapID ~= self.mapID then
				self.mapID = mapID;
				self:Rebuild();
			end
			if show then
				self:Show();
			end
		end
		app.ToggleMiniListForCurrentZone = function()
			if self:IsVisible() then
				self:Hide();
			else
				self:SetMapID(app.CurrentMapID);
				self:Show();
			end
		end;
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
			self.data = CachedMapData[self.mapID];
		end
	end,
});
