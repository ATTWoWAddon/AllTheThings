-- Map Information Lib
do
local _, app = ...;
local L = app.L
local pairs, ipairs, math_floor, tinsert
	= pairs, ipairs, math.floor, tinsert;
local C_SuperTrack = C_SuperTrack;
local C_QuestLog_IsOnQuest = C_QuestLog.IsOnQuest;
local AttachTooltipSearchResults = app.Modules.Tooltip.AttachTooltipSearchResults;
local GetDisplayID = app.GetDisplayID;
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
local ResolveSymbolicLink = app.ResolveSymbolicLink;
local SearchForField = app.SearchForField
local SearchForObject = app.SearchForObject;
local WaypointRunner = app.CreateRunner("waypoint");
WaypointRunner.SetPerFrameDefault(1)
local __TomTomWaypointCacheIndexX = { __index = function(t, x)
	local o = setmetatable({}, app.MetaTable.AutoTable);
	t[x] = o;
	return o;
end };
local __TomTomWaypointCache = setmetatable({}, { __index = function(t, mapID)
	local o = setmetatable({}, __TomTomWaypointCacheIndexX);
	t[mapID] = o;
	return o;
end });
local __TomTomWaypointCount, __PlottedGroup;
local function PlotCachedCoords()
	if TomTom then
		-- app.PrintDebug("WP:TomTom:Plot",__PlottedGroup.text,__TomTomWaypointCount)
		local xnormal;
		for mapID,c in pairs(__TomTomWaypointCache) do
			for x,d in pairs(c) do
				xnormal = x / 1000;
				for y,datas in pairs(d) do
					-- Determine the Root and simplify NPC/Object data.
					-- An NPC/Object can contain all of the other types by reference and don't need individual entries.
					local root,rootByCreatureID,rootByObjectID = {},{},{};
					for key,group in pairs(datas) do
						local creatureID, objectID;
						if group.npcID or group.creatureID then
							creatureID = group.npcID or group.creatureID;
						elseif group.objectID then
							objectID = group.objectID;
						else
							if group.providers then
								for i,provider in ipairs(group.providers) do
									if provider[1] == "n" then
										if provider[2] > 0 then
											creatureID = provider[2];
										end
									elseif provider[1] == "o" then
										if provider[2] > 0 then
											objectID = provider[2];
										end
									end
								end
							end
							if group.qgs then
								local count = #group.qgs;
								if count > 1 and group.coords and #group.coords == count then
									for i=count,1,-1 do
										local coord = group.coords[i];
										if coord[3] == mapID and math_floor(coord[1] * 10) == x and math_floor(coord[2] * 10) == y then
											creatureID = group.qgs[i];
											break;
										end
									end
									if not creatureID then
										creatureID = group.qgs[1];
									end
								else
									creatureID = group.qgs[1];
								end
							end
							if group.crs then
								local count = #group.crs;
								if count > 1 and group.coords and #group.coords == count then
									for i=count,1,-1 do
										local coord = group.coords[i];
										if coord[3] == mapID and math_floor(coord[1] * 10) == x and math_floor(coord[2] * 10) == y then
											creatureID = group.crs[i];
											break;
										end
									end
									if not creatureID then
										creatureID = group.crs[1];
									end
								else
									creatureID = group.crs[1];
								end
							end
						end
						if creatureID then
							if not rootByCreatureID[creatureID] then
								rootByCreatureID[creatureID] = group;
								tinsert(root, app.CreateNPC(creatureID));
							end
						elseif objectID then
							if not rootByObjectID[objectID] then
								rootByObjectID[objectID] = group;
								-- TODO: doing this drops the icon for some objects that reference their content to provide a
								-- suitable .icon
								tinsert(root, app.CreateObject(objectID));
							end
						else
							tinsert(root, group);
						end
					end

					local first = root[1];
					if first then
						local sourcePath = app.GenerateSourceHash(first);
						for i=2,#root,1 do sourcePath = sourcePath .. ";" .. app.GenerateSourceHash(root[i]); end
						TomTom:AddWaypoint(mapID, xnormal, y / 1000, {
							from = "ATT",
							persistent = true,
							sourcePath = sourcePath,
							title = (first.text or RETRIEVING_DATA)
						}, root);
					end
				end
			end
		end
		if TomTom.SetClosestWaypoint then
			TomTom:SetClosestWaypoint();
		end
	elseif C_SuperTrack then
		-- app.PrintDebug("WP:C_SuperTrack:Plot",__PlottedGroup.text,__TomTomWaypointCount)
		if C_SuperTrack.SetSuperTrackedUserWaypoint and C_Map.SetUserWaypoint then
			-- try to track the first available waypoint in the cache
			for mapID,c in pairs(__TomTomWaypointCache) do
				for x,d in pairs(c) do
					for y,datas in pairs(d) do
						C_SuperTrack.SetSuperTrackedUserWaypoint(false);
						C_Map.ClearUserWaypoint();
						local mapPoint = UiMapPoint.CreateFromCoordinates(mapID or C_Map.GetBestMapForUnit("player") or 1, x/1000, y/1000);
						-- app.PrintDebug("WP:SuperTrack")
						-- app.PrintTable(mapPoint)
						C_Map.SetUserWaypoint(mapPoint);
						C_SuperTrack.SetSuperTrackedUserWaypoint(true);
						break;
					end
					break;
				end
				break;
			end
		end
		-- or navigate by active quest
		if __PlottedGroup.questID and C_QuestLog_IsOnQuest(__PlottedGroup.questID) then
			__TomTomWaypointCount = -1;
			C_SuperTrack.SetSuperTrackedQuestID(__PlottedGroup.questID);
		end
	end
	-- no coords actually plotted, notify in chat
	if __TomTomWaypointCount == 0 then
		app.print(L.NO_COORDINATES_FORMAT:format(__PlottedGroup.text));
	end
end
local function AddTomTomWaypointCache(coord, group)
	local mapID = coord[3];
	if mapID then
		__TomTomWaypointCache[mapID][math_floor(coord[1] * 10)][math_floor(coord[2] * 10)][group.key .. ":" .. group.keyval] = group;
		__TomTomWaypointCount = __TomTomWaypointCount + 1;
		-- app.PrintDebug("WP:Cache",__TomTomWaypointCount,app:SearchLink(group))
	else
		-- coord[3] not existing is checked by Parser and shouldn't ever happen
		app.print("Missing mapID for", group.text, coord[1], coord[2], mapID);
	end
end
-- Tracks attempted addition of coordinates. Sometimes we want to 'know' that coords exist but don't actually want to plot them
local function TryAddGroupWaypoints(group)
	local c = group.coords;
	if c then
		for _,coord in ipairs(c) do
			AddTomTomWaypointCache(coord, group);
		end
	end
	c = group.coord;
	if c then
		AddTomTomWaypointCache(c, group);
	end
end
local function AddTomTomParentCoord(group)
	-- app.PrintDebug("WP:ParentChain")
	local parent = group.sourceParent or group.parent;
	while parent do
		-- app.PrintDebug("WP:Parent:",parent.hash)
		TryAddGroupWaypoints(parent);
		if __TomTomWaypointCount > 0 then
			break;
		end
		parent = parent.sourceParent or parent.parent;
	end
end
local AddTomTomProviderResults
-- Attempt to add TomTom waypoints for all directly nested/symlinked content from the group
local function AddNestedTomTomWaypoints(group, depth)
	if group.visible or depth == 0 then
		if group.plotting then return false; end
		group.plotting = true;
		-- app.PrintDebug("WP:depth",depth)
		-- always plot directly clicked otherwise don't plot saved or inaccessible groups
		if depth == 0 or (not group.saved and not group.missingSourceQuests) then
			-- app.PrintDebug("WP:Group",app:SearchLink(group))
			TryAddGroupWaypoints(group);
		end
		-- sub-groups coords?
		if group.g then
			-- app.PrintDebug("WP:SubGroups",app:SearchLink(group))
			for _,o in ipairs(group.g) do
				AddNestedTomTomWaypoints(o, depth + 1);
			end
		end
		-- symlink of the group coords?
		local searchResults = ResolveSymbolicLink(group);
		if searchResults then
			-- app.PrintDebug("WP:Sym",app:SearchLink(group))
			for _,o in ipairs(searchResults) do
				AddNestedTomTomWaypoints(o, depth + 1);
			end
		end
		-- if the Thing is specifically NOT a Quest
		-- check for the search result of the sourceQuests of the Thing
		-- e.g. Achievement using sourceQuest
		if group.key ~= "questID" then
			if group.sourceQuests then
				for _,questID in ipairs(group.sourceQuests) do
					for _,o in ipairs(SearchForObject("questID", questID, "field", true)) do
						-- app.PrintDebug("WP:sq-Search:",o.hash)
						AddNestedTomTomWaypoints(o, depth + 1)
					end
				end
			end
		end
		group.plotting = nil;
		-- no waypoints added yet, then try adding waypoints via the providers afterwards
		if __TomTomWaypointCount == 0 then
			AddTomTomProviderResults(group, 0)
		end
	end
end
local function AddTomTomParentChainWaypoint(group, depth)
	if group.visible then
		if group.plotting then return false; end
		group.plotting = true;
		-- also check for first coord(s) on parent chain of plotted group if no coords at or below the plotted group
		if depth == 0 and __TomTomWaypointCount == 0 then
			AddTomTomParentCoord(group);
		end
		group.plotting = nil;
	end
end
local function AddTomTomRawSearchResultWaypoints(field, value)
	if not field or not value or value < 1 then return end

	for _,o in ipairs(SearchForObject(field, value, "field", true)) do
		-- app.PrintDebug("WP:Search:",o,field,value,app:RawSearchLink(field, value))
		AddNestedTomTomWaypoints(o, 0);
		AddTomTomParentCoord(o);
	end
end
local function AddTomTomSearchResultWaypoints(group)
	if not group.visible then return end

	local key = group.key;
	if not key then return end

	AddTomTomRawSearchResultWaypoints(key, group[key])
end
local function AddTomTomAlternateDirectResults(group, depth)
	if not group.visible then return end

	-- also check for first coord(s) on alternate search results/parents of the group if it's a Thing and no other coords found
	if __TomTomWaypointCount == 0 and app.ThingKeys[group.key or 0] then
		-- app.PrintDebug("WP:Search",group.hash)
		AddTomTomSearchResultWaypoints(group);
	end
	-- if STILL nothing was found to plot (plotting meta-achievements whose achievements are under other groups)
	-- pop off the first/second layer of groups under the plotted group to plot their possible waypoints via the various means (nested & search)
	if __TomTomWaypointCount == 0 and depth == 0 then
		-- app.PrintDebug("WP:NestedSearchScan",group.hash)
		-- queue searches for 2 layers of groups
		local e = app.EmptyTable;
		for _,o in ipairs(group.g or e) do
			WaypointRunner.Run(AddTomTomSearchResultWaypoints, o);
			for _,p in ipairs(o.g or e) do
				WaypointRunner.Run(AddTomTomSearchResultWaypoints, p);
			end
		end
	end
end
local ProviderToField = {
	o = "objectID",
	i = "itemID",
	n = "npcID",
	s = "spellID",
	c = "currencyID",
}
AddTomTomProviderResults = function(group, depth)
	if not group.visible then return end

	-- app.PrintDebug("WP:Providers",app:SearchLink(group))
	-- grab providers from this group and try to plot their waypoints...
	if group.providers then
		for _,p in ipairs(group.providers) do
			WaypointRunner.Run(AddTomTomRawSearchResultWaypoints, ProviderToField[p[1]], p[2])
		end
	end
	-- is Cost really something that we'd plot for a waypoint? Probably not...
end
app.AddTomTomWaypoint = function(group)
	-- app.PrintDebug("WP:Global",group.hash)
	wipe(__TomTomWaypointCache);
	__TomTomWaypointCount = 0;
	__PlottedGroup = group;
	-- attempt to cache all coords
	WaypointRunner.Run(AddNestedTomTomWaypoints, group, 0);
	WaypointRunner.Run(AddTomTomParentChainWaypoint, group, 0);
	WaypointRunner.Run(AddTomTomAlternateDirectResults, group, 0);
	-- actually send the coords now that every coord has been cached
	WaypointRunner.OnEnd(PlotCachedCoords);
end
app.AddEventHandler("OnReady", function()
	local tomTom = TomTom;
	if tomTom then
		local oldAddWaypoint = tomTom.AddWaypoint;
		tomTom.AddWaypoint = function(self, m, x, y, opts, root, ...)
			if opts and (opts.from == "ATT" and opts.sourcePath) then
				local sourceString = opts.sourcePath;
				if sourceString then
					if not root then
						root = {};
						---@diagnostic disable-next-line: undefined-field
						local sourceStrings = { (";"):split(sourceString) };
						for i,sourcePath in ipairs(sourceStrings) do
							---@diagnostic disable-next-line: undefined-field
							local hashes = { (">"):split(sourcePath) };
							local ref = app.SearchForSourcePath(app:GetDataCache().g, hashes, 2, #hashes);
							if ref then
								tinsert(root, ref);
							else
								---@diagnostic disable-next-line: undefined-field
								hashes = { ("ID"):split(sourcePath) };
								if #hashes == 3 then
									ref = app.CreateClassInstance(hashes[1] .. "ID", tonumber(hashes[3]));
									if ref then tinsert(root, ref); end
								end
							end
						end
					end
					if #root > 0 then
						local first = root[1];
						if IsRetrieving(opts.title) then
							opts.title = first.text or RETRIEVING_DATA;
						end
						local displayID = GetDisplayID(first);
						if displayID then
							opts.minimap_displayID = displayID;
							opts.worldmap_displayID = displayID;
						end
						if first.icon then
							opts.minimap_icon = first.icon;
							opts.worldmap_icon = first.icon;
						end
						---@diagnostic disable-next-line: undefined-global
						if TomTom.DefaultCallbacks then
							---@diagnostic disable-next-line: undefined-global
							local callbacks = TomTom:DefaultCallbacks();
							callbacks.minimap.tooltip_update = nil;
							callbacks.minimap.tooltip_show = function(event, tooltip, uid, dist)
								tooltip:ClearLines();
								for i,o in ipairs(root) do
									tooltip:AddLine(o.text);
									if o.title and not o.explorationID then tooltip:AddLine(o.title); end
									local key = o.key;
									if key == "objectiveID" then
										if o.parent and o.parent.questID then tooltip:AddLine("Objective for " .. o.parent.text); end
									elseif key == "criteriaID" then
										local achGroup = SearchForObject("achievementID", o.achievementID, "key")
										tooltip:AddDoubleLine(L.CRITERIA_FOR, achGroup.text or GetAchievementLink(o.achievementID));
									else
										if key == "npcID" then key = "creatureID"; end
										AttachTooltipSearchResults(tooltip, SearchForField, key, o.keyval);
									end
								end
								tooltip:Show();
							end
							callbacks.world.tooltip_update = nil;
							callbacks.world.tooltip_show = callbacks.minimap.tooltip_show;
							opts.callbacks = callbacks;
						end
					else
						--print("Failed to rebuild TomTom Waypoint");
						return;
					end
				end
			end
			return oldAddWaypoint(self, m, x, y, opts, root, ...);
		end

		local function AreAnyATTWaypointsPersisted()
			-- If there are any persisted waypoints, recover their tooltips
			local waypointsByMapID = tomTom.waypoints;
			if not waypointsByMapID then return false; end

			for mapID,waypointsByMap in pairs(waypointsByMapID) do
				for waypointUID,waypoint in pairs(waypointsByMap) do
					if waypoint.from == "ATT" then
						return true;
					end
				end
			end
			return false;
		end
		if AreAnyATTWaypointsPersisted() then tomTom:ReloadWaypoints(); end
	end
end);
end	-- Map Information Lib