-- App locals
local _, app = ...;
local L = app.L;

-- This window is not currently supported by Classic!
if not app.IsRetail then return; end

-- World Quests weren't even a thing until... Was it WOD? Or was it Legion?
if app.GameBuildVersion < 70000 then return; end

-- Global locals
local ipairs, pairs, tinsert, type, wipe
	= ipairs, pairs, tinsert, type, wipe

-- Implementation
app.AddCustomWindowOnUpdate("WorldQuests", function(self, force, got)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			-- localize some APIs
			local MergeObject, NestObject, NestObjects = app.MergeObject, app.NestObject, app.NestObjects;
			local C_TaskQuest_GetQuestsForPlayerByMapID = C_TaskQuest.GetQuestsOnMap;
			local C_AreaPoiInfo_GetAreaPOIForMap,C_AreaPoiInfo_GetAreaPOIInfo,C_AreaPoiInfo_GetEventsForMap,C_AreaPoiInfo_GetAreaPOISecondsLeft
				= C_AreaPoiInfo.GetAreaPOIForMap,C_AreaPoiInfo.GetAreaPOIInfo,C_AreaPoiInfo.GetEventsForMap,C_AreaPoiInfo.GetAreaPOISecondsLeft
			local C_QuestLine_RequestQuestLinesForMap = C_QuestLine.RequestQuestLinesForMap;
			local C_QuestLine_GetAvailableQuestLines = C_QuestLine.GetAvailableQuestLines;
			local C_Map_GetMapChildrenInfo = C_Map.GetMapChildrenInfo;
			local C_QuestLog_GetBountiesForMapID = C_QuestLog.GetBountiesForMapID;
			local GetNumRandomDungeons, GetLFGDungeonInfo, GetLFGRandomDungeonInfo, GetLFGDungeonRewards, GetLFGDungeonRewardInfo =
				  GetNumRandomDungeons, GetLFGDungeonInfo, GetLFGRandomDungeonInfo, GetLFGDungeonRewards, GetLFGDungeonRewardInfo;
			
			-- Returns an Object based on a QuestID a lot of Quest information for displaying in a row
			---@return table?
			local function GetPopulatedQuestObject(questID)
				-- cannot do anything on a missing object or questID
				if not questID then return; end
				-- either want to duplicate the existing data for this quest, or create new data for a missing quest
				local questObject = app.__CreateObject(app.SearchForObject("questID", questID, "field") or { questID = questID, _missing = true }, true);
				-- if questID == 78663 then
				-- 	local debug = app.Debugging
				-- 	app.Debugging = true
				-- 	app.PrintTable(questObject)
				-- 	app.Debugging = debug
				-- end
				-- Try populating quest rewards
				app.TryPopulateQuestRewards(questObject);
				return questObject;
			end
			
			force = true;
			local UpdateButton = app.CreateRawText(L.UPDATE_WORLD_QUESTS, {
				["icon"] = 134269,
				["description"] = L.UPDATE_WORLD_QUESTS_DESC,
				["hash"] = "funUpdateWorldQuests",
				["OnClick"] = function(data, button)
					app.Push(self, "WorldQuests-Rebuild", self.Rebuild);
					return true;
				end,
				["OnUpdate"] = app.AlwaysShowUpdate,
			})
			local data = app.CreateRawText(L.WORLD_QUESTS, {
				["icon"] = 237387,
				["description"] = L.WORLD_QUESTS_DESC,
				["indent"] = 0,
				["back"] = 1,
				["g"] = {
					UpdateButton,
				},
			})
			self:SetData(data);
			-- Build the initial heirarchy
			self:BuildData();
			local emissaryMapIDs = {
				{ 619, 650 },	-- Broken Isles, Highmountain
				{ app.FactionID == Enum.FlightPathFaction.Horde and 875 or 876, 895 },	-- Kul'Tiras or Zandalar, Stormsong Valley
			};
			local worldMapIDs = {
				-- The War Within Continents
				{
					2274,	-- Khaz Algar
				},
				-- Dragon Isles Continents
				{
					1978,	-- Dragon Isles
					{
						2085,	-- Primalist Tomorrow
					}
				},
				-- Shadowlands Continents
				{
					1550,	-- Shadowlands
					-- {}
				},
				-- BFA Continents
				{
					875,	-- Zandalar
				},
				{
					876,	-- Kul'Tiras
				},
				{ 1355 },	-- Nazjatar
				-- Legion Continents
				{
					619,	-- Broken Isles
					{
						627,	-- Dalaran
					}
				},
				{ 905 },	-- Argus
				-- WoD Continents
				{ 572 },	-- Draenor
				-- MoP Continents
				{
					424,	-- Pandaria
				},
				-- Cataclysm Continents
				{ 948 },	-- The Maelstrom
				-- WotLK Continents
				{ 113 },	-- Northrend
				-- BC Continents
				{ 101 },	-- Outland
				-- Vanilla Continents
				{
					12,		-- Kalimdor
					{
						62,	-- Darkshore
					},
				},
				{	13,		-- Eastern Kingdoms
					{
						14,	-- Arathi Highlands
					},
				},
			}
			local RepeatablesPerMapID = {
				[2200] = {	-- Emerald Dream
					78319,	-- The Superbloom
				},
				[2024] = {	-- The Azure Span
					79226,	-- The Big Dig: Traitor's Rest
				},
			}
			-- Blizz likes to list the same quest on multiple maps
			local AddedQuestIDs = {}
			self.Clear = function(self)
				self:GetRunner().Reset()
				local g = self.data.g
				-- wipe parent references from current top-level groups so any delayed
				-- updates on sub-groups no longer chain to the window
				for _,o in ipairs(g) do
					o.parent = nil
				end
				wipe(g);
				tinsert(g, UpdateButton);
				self:BuildData();
				self:Update(true);
			end
			-- World Quests (Tasks)
			self.MergeTasks = function(self, mapObject)
				local mapID = mapObject.mapID;
				if not mapID then return; end
				local pois = C_TaskQuest_GetQuestsForPlayerByMapID(mapID);
				-- app.PrintDebug(#pois,"WQ in",mapID);
				if pois then
					for i,poi in ipairs(pois) do
						-- only include Tasks on this actual mapID since each Zone mapID is checked individually
						if poi.mapID == mapID and not AddedQuestIDs[poi.questID] then
							-- app.PrintTable(poi)
							AddedQuestIDs[poi.questID] = true
							local questObject = GetPopulatedQuestObject(poi.questID);
							if questObject then
								if self.includeAll or
									-- include the quest in the list if holding shift and tracking quests
									(self.includePermanent and self.includeQuests) or
									-- or if it is repeatable (i.e. one attempt per day/week/year)
									questObject.repeatable or
									-- or if it has time remaining
									(questObject.timeRemaining or 0 > 0)
								then
									-- if poi.questID == 78663 then
									-- 	app.print("WQ",questObject.questID,questObject.g and #questObject.g);
									-- end
									-- add the map POI coords to our new quest object
									if poi.x and poi.y then
										questObject.coords = {{ 100 * poi.x, 100 * poi.y, mapID }}
									end
									NestObject(mapObject, questObject);
									-- see if need to retry based on missing data
									-- if not self.retry and questObject.missingData then self.retry = true; end
								end
							end
						-- else app.PrintDebug("Skipped WQ",mapID,poi.mapID,poi.questID)
						end
					end
				end
			end
			local MapPOIs = {}
			-- Area POIs (Points of Interest)
			self.MergeAreaPOIs = function(self, mapObject)
				local mapID = mapObject.mapID
				if not mapID then return end

				local pois = app.ArrayAppend(C_AreaPoiInfo_GetAreaPOIForMap(mapID), C_AreaPoiInfo_GetEventsForMap(mapID))
				if not pois or #pois == 0 then return end

				-- replace the POI IDs with their respective infos
				for i=1,#pois do
					pois[i] = C_AreaPoiInfo_GetAreaPOIInfo(mapID, pois[i])
				end
				local poi, poiID, x, y
				for i=1,#pois do
					poi = pois[i]
					poiID = poi.areaPoiID
					local poiMapID = poi.linkedUiMapID
					-- one poiID may by linked to multiple Things or copies of a Thing so make sure to merge them together
					local o = app.SearchForObject("poiID", poiID, nil, true)
					if #o > 0 then
						local clone = app.__CreateObject(o[1])
						if not poiMapID and not poi.isPrimaryMapForPOI then
							poiMapID = app.GetRelativeValue(o[1], "mapID")
						end
						if #o > 1 then
							for i=2,#o do
								app.MergeProperties(clone, o[i])
							end
						end
						o = clone
					end
					if o and o.__type then
						o.timeRemaining = C_AreaPoiInfo_GetAreaPOISecondsLeft(poiID)
						if self.includeAll or
							-- if it has time remaining
							(not o.timeRemaining or (o.timeRemaining > 0))
						then
							-- add the map POI coords to our new object
							if poi.position then
								x, y = poi.position.x, poi.position.y
							else
								x, y = nil, nil
							end
							if x and y then
								o.coords = {{ 100 * x, 100 * y, mapID }}
							end
							if not poiMapID or poiMapID == mapID or poi.isPrimaryMapForPOI then
								NestObject(mapObject, o)
							else
								local mapPOIs = MapPOIs[poiMapID]
								if mapPOIs then mapPOIs[#mapPOIs + 1] = o
								else
									mapPOIs = {o}
									MapPOIs[poiMapID] = mapPOIs
								end
							end
						end
					end
				end

				-- add any POIs which show only on 'other' maps but intended for this one
				local myPOIs = MapPOIs[mapID]
				if myPOIs then
					for i=1,#myPOIs do
						NestObject(mapObject, myPOIs[i])
					end
				end
			end
			-- Storylines/Map Quest Icons
			self.MergeStorylines = function(self, mapObject)
				local mapID = mapObject.mapID;
				if not mapID then return; end
				C_QuestLine_RequestQuestLinesForMap(mapID);
				local questLines = C_QuestLine_GetAvailableQuestLines(mapID)
				if questLines then
					for id,questLine in pairs(questLines) do
						-- dont show 'hidden' quest lines... not sure what this is exactly
						if not questLine.isHidden and not AddedQuestIDs[questLine.questID] then
							AddedQuestIDs[questLine.questID] = true
							local questObject = GetPopulatedQuestObject(questLine.questID);
							if questObject then
								if self.includeAll or
									-- include the quest in the list if holding shift and tracking quests
									(self.includePermanent and self.includeQuests) or
									-- or if it is repeatable (i.e. one attempt per day/week/year)
									questObject.repeatable or
									-- or if it has time remaining
									(questObject.timeRemaining or 0 > 0)
								then
									NestObject(mapObject, questObject);
									-- see if need to retry based on missing data
									-- if not self.retry and questObject.missingData then self.retry = true; end
								end
							end
						end
					end
				else
					-- print("No questline data yet for mapID:",mapID);
					self.retry = true;
				end
			end
			-- Static Repeatables
			self.MergeRepeatables = function(self, mapObject)
				local mapID = mapObject.mapID;
				if not mapID then return; end
				local repeatables = RepeatablesPerMapID[mapID]
				if not repeatables then return end

				local questObject
				for _,questID in ipairs(repeatables) do
					questObject = GetPopulatedQuestObject(questID)
					if questObject then
						if self.includeAll or
							-- Account/Debug or not saved
							(app.MODE_DEBUG_OR_ACCOUNT or not questObject.saved)
						then
							NestObject(mapObject, questObject);
							-- see if need to retry based on missing data
							-- if not self.retry and questObject.missingData then self.retry = true; end
						end
					end
				end

			end
			self.BuildMapAndChildren = function(self, mapObject)
				if not mapObject.mapID then return; end

				-- print("Build Map",mapObject.mapID,mapObject.text);

				-- Merge Tasks for Zone
				self:MergeTasks(mapObject)
				-- Merge Storylines for Zone
				self:MergeStorylines(mapObject)
				-- Merge Repeatables for Zone
				self:MergeRepeatables(mapObject)
				-- Merge Area POIs for Zone
				self:MergeAreaPOIs(mapObject)

				-- look for quests on map child maps as well
				local mapChildInfos = C_Map_GetMapChildrenInfo(mapObject.mapID, 3);
				if mapChildInfos then
					for _,mapInfo in ipairs(mapChildInfos) do
						-- start fetching the data while other stuff is setup
						C_QuestLine_RequestQuestLinesForMap(mapInfo.mapID);
						local subMapObject = app.CreateMapWithStyle(mapInfo.mapID);

						-- Build the children maps
						self:BuildMapAndChildren(subMapObject);

						NestObject(mapObject, subMapObject);
					end
				end
			end
			self.Rebuild = function(self, no)
				-- Already filled with data and nothing needing to retry, just give it a forced update pass since data for quests should now populate dynamically
				if not self.retry and #self.data.g > 1 then
					-- app.PrintDebug("Already WQ data, just update again")
					-- Force Update Callback
					app.CallbackHandlers.Callback(self.Update, self, true);
					return;
				end
				-- Reset the world quests Runner before building new data
				self:GetRunner().Reset()
				wipe(self.data.g);
				-- Rebuild all World Quest data
				wipe(AddedQuestIDs)
				wipe(MapPOIs)
				-- app.PrintDebug("Rebuild WQ Data")
				self.retry = nil;
				-- Put a 'Clear World Quests' click first in the list
				local temp = {app.CreateRawText(L.CLEAR_WORLD_QUESTS, {
					['icon'] = 2447782,
					['description'] = L.CLEAR_WORLD_QUESTS_DESC,
					['hash'] = "funClearWorldQuests",
					['OnClick'] = function(data, button)
						app.Push(self, "WorldQuests-Clear", self.Clear);
						return true;
					end,
					['OnUpdate'] = app.AlwaysShowUpdate,
				})}

				-- options when refreshing the list
				self.includeAll = app.MODE_DEBUG;
				self.includeQuests = app.Settings.Collectibles.Quests or app.Settings.Collectibles.QuestsLocked;
				self.includePermanent = IsAltKeyDown() or self.includeAll;

				-- Acquire all of the world mapIDs
				for _,pair in ipairs(worldMapIDs) do
					local mapID = pair[1];
					-- app.PrintDebug("WQ.WorldMapIDs.", mapID)
					-- start fetching the data while other stuff is setup
					C_QuestLine_RequestQuestLinesForMap(mapID);
					local mapObject = app.CreateMapWithStyle(mapID);

					-- Build top-level maps all the way down
					self:BuildMapAndChildren(mapObject);

					-- Additional Maps
					local additionalMapIDs = pair[2];
					if additionalMapIDs then
						for i=1,#additionalMapIDs do
							-- Basic Sub-map
							local subMap = app.CreateMapWithStyle(additionalMapIDs[i])

							-- Build top-level maps all the way down for the sub-map
							self:BuildMapAndChildren(subMap);

							NestObject(mapObject, subMap);
						end
					end

					-- Merge everything for this map into the list
					app.Sort(mapObject.g, true)
					MergeObject(temp, mapObject)
				end

				-- Acquire all of the emissary quests
				for _,pair in ipairs(emissaryMapIDs) do
					local mapID = pair[1];
					-- print("WQ.EmissaryMapIDs." .. tostring(mapID))
					local mapObject = app.CreateMapWithStyle(mapID);
					local bounties = C_QuestLog_GetBountiesForMapID(pair[2]);
					if bounties and #bounties > 0 then
						for _,bounty in ipairs(bounties) do
							local questObject = GetPopulatedQuestObject(bounty.questID);
							NestObject(mapObject, questObject);
						end
					end
					app.Sort(mapObject.g, true)
					MergeObject(temp, mapObject);
				end

				-- Heroic Deeds
				if self.includePermanent and not (app.IsQuestFlaggedCompleted(32900) or app.IsQuestFlaggedCompleted(32901)) then
					local mapObject = app.CreateMapWithStyle(424);
					NestObject(mapObject, GetPopulatedQuestObject(app.FactionID == Enum.FlightPathFaction.Alliance and 32900 or 32901));
					MergeObject(temp, mapObject);
				end

				local OnUpdateForLFGHeader = function(group)
					local meetLevelrange = app.Modules.Filter.Filters.Level(group);
					if meetLevelrange or app.MODE_DEBUG_OR_ACCOUNT then
						-- default logic for available LFG category/Debug/Account
						return false;
					else
						group.visible = nil;
						return true;
					end
				end

				-- Get the LFG Rewards Available at this level
				local numRandomDungeons = GetNumRandomDungeons();
				-- print(numRandomDungeons,"numRandomDungeons");
				if numRandomDungeons > 0 then
					local gfg = {}
					local groupFinder = app.CreateRawText(DUNGEONS_BUTTON, { icon = app.asset("Category_GroupFinder"), g = gfg })
					for index=1,numRandomDungeons,1 do
						local dungeonID = GetLFGRandomDungeonInfo(index);
						-- app.PrintDebug("RandInfo",index,GetLFGRandomDungeonInfo(index));
						-- app.PrintDebug("NormInfo",dungeonID,GetLFGDungeonInfo(dungeonID))
						-- app.PrintDebug("DungeonAppearsInRandomLFD(dungeonID)",DungeonAppearsInRandomLFD(dungeonID)); -- useless
						local name, typeID, subtypeID, minLevel, maxLevel, recLevel, minRecLevel, maxRecLevel, expansionLevel, groupID, textureFilename, difficulty, maxPlayers, description, isHoliday, bonusRepAmount, minPlayers, isTimeWalker, name2, minGearLevel = GetLFGDungeonInfo(dungeonID);
						-- print(dungeonID,name, typeID, subtypeID, minLevel, maxLevel, recLevel, minRecLevel, maxRecLevel, expansionLevel, groupID, textureFilename, difficulty, maxPlayers, description, isHoliday, bonusRepAmount, minPlayers, isTimeWalker, name2, minGearLevel);
						local _, gold, unknown, xp, unknown2, numRewards, unknown = GetLFGDungeonRewards(dungeonID);
						-- print("GetLFGDungeonRewards",dungeonID,GetLFGDungeonRewards(dungeonID));
						local hg = {}
						local header = app.CreateRawText(name, { g = hg, dungeonID = dungeonID, description = description, lvl = { minRecLevel or 1, maxRecLevel }, OnUpdate = OnUpdateForLFGHeader})
						if expansionLevel and not isHoliday then
							header.icon = app.CreateExpansion(expansionLevel + 1).icon;
						elseif isTimeWalker then
							header.icon = app.asset("Difficulty_Timewalking");
						end
						for rewardIndex=1,numRewards,1 do
							local itemName, icon, count, claimed, rewardType, itemID, quality = GetLFGDungeonRewardInfo(dungeonID, rewardIndex);
							-- common logic
							local idType = (rewardType or "item").."ID";
							local thing = { [idType] = itemID };
							local _cache = app.SearchForField(idType, itemID);
							for _,data in ipairs(_cache) do
								-- copy any sourced data for the dungeon reward into the list
								if app.GroupMatchesParams(data, idType, itemID, true) then
									app.MergeProperties(thing, data);
								end
								local lvl;
								if isTimeWalker then
									lvl = (data.lvl and type(data.lvl) == "table" and data.lvl[1]) or
											data.lvl or
											(data.parent and data.parent.lvl and type(data.parent.lvl) == "table" and data.parent.lvl[1]) or
											data.parent.lvl or 0;
								else
									lvl = 0;
								end
								-- Should the rewards be listed in the window based on the level of the rewards
								if lvl <= minRecLevel then
									NestObjects(thing, data.g);	-- no need to clone, everything is re-created at the end
								end
							end
							hg[#hg + 1] = thing
						end
						gfg[#gfg + 1] = header
					end
					MergeObject(temp, groupFinder)
				end

				-- put all the things into the window data, turning them into objects as well
				NestObjects(self.data, temp);
				-- Build the heirarchy
				self:BuildData();
				-- Force Update
				self:Update(true);
			end
		end

		self:DefaultUpdate(force);
	end
end)

app.AddSlashCommands({"attwq"},
function() app:GetWindow("WorldQuests"):Toggle() end)