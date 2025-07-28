local _, app = ...
local L = app.L

-- Globals
local ipairs, pairs, tonumber
	= ipairs, pairs, tonumber
local C_TaxiMap_GetTaxiNodesForMap, C_TaxiMap_GetAllTaxiNodes, GetTaxiMapID, UnitGUID
	= C_TaxiMap.GetTaxiNodesForMap, C_TaxiMap.GetAllTaxiNodes, GetTaxiMapID, UnitGUID

-- DB Data
local FlightPathDB = app.FlightPathDB

-- Module
local contains = app.contains
local SearchForField = app.SearchForField
local IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted

-- Flight Path Lib
local localizedFlightPathNames;
local KEY, CACHE = "flightpathID", "FlightPaths"
local CLASSNAME = "FlightPath"
app.CreateFlightPath = app.CreateClass(CLASSNAME, KEY, {
	CACHE = function() return CACHE end,
	name = function(t)
		return localizedFlightPathNames[t[KEY]] or L.VISIT_FLIGHT_MASTER
	end,
	icon = function(t)
		local r = t.r
		if r then
			return app.asset(r == Enum.FlightPathFaction.Horde and "fp_horde" or "fp_alliance")
		end
		return app.asset("fp_neutral")
	end,
	saved = function(t)
		local id = t[KEY]
		-- character collected
		if app.IsCached(CACHE, id) then return 1 end
	end,
	collectible = function(t) return app.Settings.Collectibles[CACHE] end,
	collected = function(t)
		local collectedViaCache = app.TypicalCharacterCollected(CACHE, t[KEY])
		if collectedViaCache then return collectedViaCache end
		if t.altQuests then
			for i,questID in ipairs(t.altQuests) do
				if IsQuestFlaggedCompleted(questID) then
					return 2;
				end
			end
		end
	end,
})

if app.IsGit then
-- CRIEVE NOTE: Comment this out after you've finished sourcing flight masters
-- use /att check-fps if you want to run this
app.ChatCommands.Add("check-fps", function()
	local missingByMapID, any = {}, false;
	for flightpathID,flightPaths in pairs(app.SearchForFieldContainer("flightpathID")) do
		for i,o in ipairs(flightPaths) do
			if not (o.crs or o.npcID or o.objectID or o.provider or o.providers) and (not o.u or o.u >= 11) then
				local mapID = app.GetRelativeValue(o, "mapID");
				if mapID then
					local missingOnMap = missingByMapID[mapID];
					if not missingOnMap then
						missingOnMap = {};
						missingByMapID[mapID] = missingOnMap;
					end
					missingOnMap[flightpathID] = (","):split(o.name);
					any = true;
					break;
				end
			end
		end
	end

	if any then
		-- Create an information object.
		local info = {
			"### Missing Flight Master Summary",
			"```lua",
		};
		for mapID,missing in pairs(missingByMapID) do
			tinsert(info, app.GetMapName(mapID) .. " (" .. mapID .. ")");
			for flightpathID,text in pairs(missing) do
				tinsert(info, " " .. flightpathID .. " -- " .. text);
			end
		end
		tinsert(info, "```");	-- discord fancy box end

		local popupID, text = "flight-master-summary", "Summary";
		app:SetupReportDialog(popupID, text, info);
		app.print("Found Missing Flight Masters:", app:Linkify(text, app.Colors.ChatLinkError, "dialog:" .. popupID));
	end
end, {
	"Usage : /att check-fps",
	"Allows scanning all sourced FPs to find Flight Masters which have no NPC linked to them.",
});
end

local function CacheFlightPathDataForTarget(nodes)
	local guid = UnitGUID("npc") or UnitGUID("target");
	if guid then
		---@diagnostic disable-next-line: undefined-field
		local type, _, _, _, _, npcID = ("-"):split(guid);
		if type == "Creature" and npcID then
			local searchResults = SearchForField("npcID", tonumber(npcID));
			if searchResults and #searchResults > 0 then
				local count = 0;
				for i,group in ipairs(searchResults) do
					if group.flightpathID and not group.nmr and not group.nmc and (not group.u or group.u > 1) then
						nodes[group.flightpathID] = true;
						count = count + 1;
					end
				end
				return count;
			end
		end
	end
	return 0;
end
-- TODO: this is scary. literally any NPC interaction i do in the game ATT will check if there's FlightPaths on that NPC
-- and then mark them completed based on arbitrary field data...
-- really needs to be revised that only entering the specific mapID triggers the event registration, and then only the specific npcIDs with
-- 'fake' flightpaths are accepted prior to running searches on that npcID
-- something similar to the zone-art caching stuff perhaps to link which mapIDs contain 'fake' FPs, and likewise which NPCs
-- or even have Parser capture this data for a separate DB container
app.AddEventRegistration("GOSSIP_SHOW", function()
	local knownNodeIDs = {};
	if CacheFlightPathDataForTarget(knownNodeIDs) > 0 then
		for nodeID,_ in pairs(knownNodeIDs) do
			app.SetThingCollected(KEY, nodeID, false, true)
		end
	end
end)
app.AddEventRegistration("TAXIMAP_OPENED", function()
	local mapID = GetTaxiMapID() or -1
	-- app.PrintDebug("TAXIMAP_OPENED",mapID)
	if mapID < 0 then return end
	if app.Contributor and not contains(FlightPathDB.FlightPathMapIDs, mapID) then
		app.print("Missing FlightPath Map:",app.GetMapName(mapID) or UNKNOWN,mapID)
	end
	local allNodeData = C_TaxiMap_GetAllTaxiNodes(mapID)
	if allNodeData then
		local nodeID
		for _,nodeData in ipairs(allNodeData) do
			nodeID = nodeData.nodeID
			localizedFlightPathNames[nodeID] = nodeData.name
			-- app.PrintDebug("FP",nodeID,nodeData.name,nodeData.state)
			if nodeData.state and nodeData.state < 2 then
				app.SetThingCollected(KEY, nodeID, false, true)
			end
			if app.Contributor then
				local fp = app.SearchForObject(KEY, nodeID, "key")
				if (not fp or not app.Modules.Filter.Filters.InGame(fp)) then
					app.print("FlightPath",nodeData.name,"#",nodeID,"is available on the Map",mapID,app.GetMapName(mapID) or UNKNOWN,"but is not found in game for ATT!")
					app.Audio:PlayReportSound();
				end
			end
		end
	end
end)
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
	if not accountWideData[CACHE] then accountWideData[CACHE] = {} end

	-- Create the Localization table for Flight Paths.
	localizedFlightPathNames = AllTheThingsAD.LocalizedFlightPathNames;
	if not localizedFlightPathNames then
		-- Convert the old nested table into an appropriately named one without any nesting.
		local UserLocale = AllTheThingsAD.UserLocale
		if UserLocale then
			localizedFlightPathNames = UserLocale.FLIGHTPATH_NAMES or {};
			AllTheThingsAD.UserLocale = nil;
		else
			localizedFlightPathNames = {};
		end
		AllTheThingsAD.LocalizedFlightPathNames = localizedFlightPathNames;
	end

	-- Push the default flight path names to the index.
	local flightPathNames = app.FlightPathNames
	app.FlightPathNames = nil;
	setmetatable(localizedFlightPathNames, {
		__index = function(t, id)
			local allNodeData
			for _,mapID in ipairs(FlightPathDB.FlightPathMapIDs) do
				allNodeData = C_TaxiMap_GetTaxiNodesForMap(mapID)
				if allNodeData and #allNodeData > 0 then
					for _,nodeData in ipairs(allNodeData) do
						t[nodeData.nodeID] = nodeData.name
					end
				else
					app.print("No taxi nodes found for map", mapID);
				end
			end

			-- Now that we've run this once, reassign the default names as the fallback.
			if flightPathNames then
				setmetatable(t, { __index = flightPathNames })
			else
				setmetatable(t, nil)
			end
			return t[id]
		end,
	})
end)
app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)