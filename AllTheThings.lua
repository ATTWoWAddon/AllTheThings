--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--------------------------------------------------------------------------------
--				Copyright 2017-2025 Dylan Fortune (Crieve-Sargeras)           --
--------------------------------------------------------------------------------
-- App locals
local appName, app = ...;
local L = app.L;

-- Abbreviations
L.ABBREVIATIONS[L.UNSORTED .. " %> " .. L.UNSORTED] = "|T" .. app.asset("WindowIcon_Unsorted") .. ":0|t " .. L.SHORTTITLE .. " %> " .. L.UNSORTED;

-- Binding Localizations
BINDING_HEADER_ALLTHETHINGS = L.TITLE
BINDING_NAME_ALLTHETHINGS_TOGGLEACCOUNTMODE = L.TOGGLE_ACCOUNT_MODE
BINDING_NAME_ALLTHETHINGS_TOGGLECOMPLETIONISTMODE = L.TOGGLE_COMPLETIONIST_MODE
BINDING_NAME_ALLTHETHINGS_TOGGLEDEBUGMODE = L.TOGGLE_DEBUG_MODE
BINDING_NAME_ALLTHETHINGS_TOGGLEFACTIONMODE = L.TOGGLE_FACTION_MODE
BINDING_NAME_ALLTHETHINGS_TOGGLELOOTMODE = L.TOGGLE_LOOT_MODE

BINDING_HEADER_ALLTHETHINGS_PREFERENCES = PREFERENCES
BINDING_NAME_ALLTHETHINGS_TOGGLECOMPLETEDTHINGS = L.TOGGLE_COMPLETEDTHINGS
BINDING_NAME_ALLTHETHINGS_TOGGLECOMPLETEDGROUPS = L.TOGGLE_COMPLETEDGROUPS
BINDING_NAME_ALLTHETHINGS_TOGGLECOLLECTEDTHINGS = L.TOGGLE_COLLECTEDTHINGS
BINDING_NAME_ALLTHETHINGS_TOGGLEBOEITEMS = L.TOGGLE_BOEITEMS
BINDING_NAME_ALLTHETHINGS_TOGGLESOURCETEXT = L.TOGGLE_SOURCETEXT

BINDING_HEADER_ALLTHETHINGS_MODULES = L.MODULES
BINDING_NAME_ALLTHETHINGS_TOGGLEMAINLIST = L.TOGGLE_MAINLIST
BINDING_NAME_ALLTHETHINGS_TOGGLEMINILIST = L.TOGGLE_MINILIST
BINDING_NAME_ALLTHETHINGS_TOGGLE_PROFESSION_LIST = L.TOGGLE_PROFESSION_LIST
BINDING_NAME_ALLTHETHINGS_TOGGLE_RAID_ASSISTANT = L.TOGGLE_RAID_ASSISTANT
BINDING_NAME_ALLTHETHINGS_TOGGLE_WORLD_QUESTS_LIST = L.TOGGLE_WORLD_QUESTS_LIST
BINDING_NAME_ALLTHETHINGS_TOGGLERANDOM = L.TOGGLE_RANDOM
BINDING_NAME_ALLTHETHINGS_REROLL_RANDOM = L.REROLL_RANDOM

-- Performance Cache
local print,rawget,rawset,tostring,ipairs,pairs,tonumber,wipe,select,setmetatable,getmetatable,tinsert,tremove,type,math_floor,GetTime
	= print,rawget,rawset,tostring,ipairs,pairs,tonumber,wipe,select,setmetatable,getmetatable,tinsert,tremove,type,math.floor,GetTime

-- Global WoW API Cache
local C_Map_GetMapInfo = C_Map.GetMapInfo;

-- App & Module locals
local CacheFields, SearchForField, SearchForFieldContainer, SearchForObject
	= app.CacheFields, app.SearchForField, app.SearchForFieldContainer, app.SearchForObject
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
local TryColorizeName = app.TryColorizeName;
local MergeProperties = app.MergeProperties
local DESCRIPTION_SEPARATOR = app.DESCRIPTION_SEPARATOR;
local GetRelativeValue = app.GetRelativeValue

local
CreateObject,
MergeObject,
NestObject,
MergeObjects,
NestObjects,
PriorityNestObjects
=
app.__CreateObject,
app.MergeObject,
app.NestObject,
app.MergeObjects,
app.NestObjects,
app.PriorityNestObjects

-- Coroutine Helper Functions
local Callback = app.CallbackHandlers.Callback;
app.FillRunner = app.CreateRunner("fill");

-- Data Lib
local AllTheThingsAD = {};			-- For account-wide data.

local GetGroupItemIDWithModID, GroupMatchesParams
	= app.GetGroupItemIDWithModID, app.GroupMatchesParams

do
local ContainsLimit, ContainsExceeded;
local GetProgressTextForRow, GetUnobtainableTexture
app.AddEventHandler("OnLoad", function()
	GetProgressTextForRow = app.GetProgressTextForRow
	GetUnobtainableTexture = app.GetUnobtainableTexture
end)

local MaxLayer = 4
local Indents = {
	"  ",
}
for i=2,MaxLayer do
	Indents[i] = Indents[i-1].."  "
end
local ContainsTypesIndicators
app.AddEventHandler("OnStartup", function() ContainsTypesIndicators = app.Modules.Fill.Settings.Icons end)
local function BuildContainsInfo(root, entries, indent, layer)
	local subgroups = root and root.g
	if not subgroups or #subgroups == 0 then return end

	for _,group in ipairs(subgroups) do
		-- If there's progress to display for a non-sourceIgnored group, then let's summarize a bit better.
		if group.visible and not group.sourceIgnored and not group.skipContains then
			-- Special case to ignore 'container' layers where the container is a Header which matches the ItemID of the parent
			if group.headerID and group.headerID == root.itemID then
				BuildContainsInfo(group, entries, indent, layer)
			else
				-- Count it, but don't actually add it to entries if it meets the limit
				if #entries >= ContainsLimit then
					ContainsExceeded = ContainsExceeded + 1;
				else
					-- Insert into the display.
					-- app.PrintDebug("INCLUDE",app.Debugging,GetProgressTextForRow(group),group.hash,group.key,group.key and group[group.key])
					local o = { group = group, right = GetProgressTextForRow(group, true) };
					local indicator = ContainsTypesIndicators[group.filledType] or app.GetIndicatorIcon(group);
					o.prefix = indicator and (Indents[indent]:sub(3) .. "|T" .. indicator .. ":0|t ") or Indents[indent]
					entries[#entries + 1] = o
				end

				-- Only go down one more level.
				if layer < MaxLayer then
					BuildContainsInfo(group, entries, indent + 1, layer + 1);
				end
			end
			-- else
			-- 	app.PrintDebug("EXCLUDE",app.Debugging,GetProgressTextForRow(group),group.hash,group.key,group.key and group[group.key])
		end
	end
end
-- Fields on groups which can be utilized in tooltips to show additional Source location info for that group (by order of priority)
local TooltipSourceFields = {
	"professionID",
	"instanceID",
	"mapID",
	"maps",
	"npcID",
	"questID"
};
local SourceLocationSettingsKey = setmetatable({
	creatureID = "SourceLocations:Creatures",
	npcID = "SourceLocations:Creatures",
}, {
	__index = function(t, key)
		return "SourceLocations:Things";
	end
});
local UnobtainableTexture = " |T"..L.UNOBTAINABLE_ITEM_TEXTURES[1]..":0|t"
local NotCurrentCharacterTexture = " |T"..L.UNOBTAINABLE_ITEM_TEXTURES[0]..":0|t"
local RETRIEVING_DATA = RETRIEVING_DATA
local function AddContainsData(group, tooltipInfo)
	local key = group.key
	local thingCheck = app.ThingKeys[key]
	-- only show Contains on Things
	if not thingCheck or (app.ActiveRowReference and thingCheck ~= true) then return end

	local working = group.working
	-- Sort by the heirarchy of the group if not the raw group of an ATT list
	if not working and not app.ActiveRowReference then
		app.Sort(group.g, app.SortDefaults.Hierarchy, true);
	end
	-- app.PrintDebug("SummarizeThings",app:SearchLink(group),group.g and #group.g,working)
	local entries = {};
	-- app.Debugging = "CONTAINS-"..group.hash;
	ContainsLimit = app.Settings:GetTooltipSetting("ContainsCount") or 25;
	ContainsExceeded = 0;
	BuildContainsInfo(group, entries, 1, 1)
	-- app.Debugging = nil;
	-- app.PrintDebug(entries and #entries,"contains entries")
	if #entries > 0 then
		local left, right;
		tinsert(tooltipInfo, { left = L.CONTAINS });
		local item, entry;
		local RecursiveParentField = app.GetRelativeValue
		for i=1,#entries do
			item = entries[i];
			entry = item.group;
			if not entry.objectiveID then
				left = entry.text;
				if not left or IsRetrieving(left) then
					left = RETRIEVING_DATA

					if not working then
						local AsyncRefreshFunc = entry.AsyncRefreshFunc
						if AsyncRefreshFunc then
							AsyncRefreshFunc(entry)
						else
							-- app.PrintDebug("No Async Refresh Func for TT Type!",entry.__type)
							app.ReshowGametooltip()
						end
					end
					working = true
				end
				left = TryColorizeName(entry, left);
				-- app.PrintDebug("Entry#",i,app:SearchLink(entry),app.GenerateSourcePathForTooltip(entry))

				-- If this entry has a specific Class requirement and is not itself a 'Class' header, tack that on as well
				if entry.c and entry.key ~= "classID" and #entry.c == 1 then
					left = left .. " [" .. TryColorizeName(entry, app.ClassInfoByID[entry.c[1]].name) .. "]";
				end
				if entry.icon then item.prefix = item.prefix .. "|T" .. entry.icon .. ":0|t "; end

				-- If this entry has specialization requirements, let's attempt to show the specialization icons.
				right = item.right;
				local specs = entry.specs;
				if specs and #specs > 0 then
					right = app.GetSpecsString(specs, false, false) .. right;
				else
					local c = entry.c;
					if c and #c > 0 then
						right = app.GetClassesString(c, false, false) .. right;
					end
				end

				-- If this entry has customCollect requirements, list them for clarity
				if entry.customCollect then
					for i,c in ipairs(entry.customCollect) do
						local reason = L.CUSTOM_COLLECTS_REASONS[c];
						local icon_color_str = reason.icon.." |c"..reason.color..reason.text;
						if i > 1 then
							right = icon_color_str .. " / " .. right;
						else
							right = icon_color_str .. "  " .. right;
						end
					end
				end

				-- If this entry is an Item, show additional Source information for that Item (since it needs to be acquired in a specific location most-likely)
				if entry.itemID and key ~= "npcID" and key ~= "encounterID" then
					-- Add the Zone name
					local field, id;
					for _,v in ipairs(TooltipSourceFields) do
						id = RecursiveParentField(entry, v, true);
						-- print("check",v,id)
						if id then
							field = v;
							break;
						end
					end
					if field then
						local locationGroup, locationName;
						-- convert maps
						if field == "maps" then
							-- if only a few maps, list them all
							local count = #id;
							if count == 1 then
								locationName = app.GetMapName(id[1]);
							else
								-- instead of listing individual zone names, just list zone count for brevity
								local names = {__count=0}
								local name
								for j=1,count,1 do
									name = app.GetMapName(id[j]);
									if name and not names[name] then
										names.__count = names.__count + 1
									end
								end
								locationName = "["..names.__count.." "..BRAWL_TOOLTIP_MAPS.."]"
								-- old: list 3 zones/+++
								-- local mapsConcat, names, name = {}, {}, nil;
								-- for j=1,count,1 do
								-- 	name = app.GetMapName(id[j]);
								-- 	if name and not names[name] then
								-- 		names[name] = true;
								-- 		mapsConcat[#mapsConcat + 1] = name
								-- 	end
								-- end
								-- -- 1 unique map name displayed
								-- if #mapsConcat < 2 then
								-- 	locationName = app.TableConcat(mapsConcat, nil, nil, "/");
								-- else
								-- 	mapsConcat[2] = "+"..(count - 1);
								-- 	locationName = app.TableConcat(mapsConcat, nil, nil, "/", 1, 2);
								-- end
							end
						else
							locationGroup = SearchForObject(field, id, "field") or (id and field == "mapID" and C_Map_GetMapInfo(id));
							locationName = locationGroup and TryColorizeName(locationGroup, locationGroup.name);
						end
						-- print("contains info",entry.itemID,field,id,locationGroup,locationName)
						if locationName then
							-- Add the immediate parent group Vendor name
							local rawParent, sParent = rawget(entry, "parent"), entry.sourceParent;
							-- the source entry is different from the raw parent and the search context, then show the source parent text for reference
							if sParent and sParent.text and not GroupMatchesParams(rawParent, sParent.key, sParent[sParent.key]) and not GroupMatchesParams(sParent, key, id) then
								local parentText = sParent.text;
								if IsRetrieving(parentText) then
									working = true;
								end
								right = locationName .. " > " .. parentText .. " " .. right;
							else
								right = locationName .. " " .. right;
							end
						-- else
							-- print("No Location name for item",entry.itemID,id,field)
						end
					end
				end

				-- If this entry is an Achievement Criteria (whose raw parent is not the Achievement) then show the Achievement
				if entry.criteriaID and entry.achievementID then
					local rawParent = rawget(entry, "parent");
					if not rawParent or rawParent.achievementID ~= entry.achievementID then
						local critAch = SearchForObject("achievementID", entry.achievementID, "key");
						left = left .. " > " .. (critAch and critAch.text or "???");
					end
				end

				tinsert(tooltipInfo, { left = item.prefix .. left, right = right });
			end
		end

		if ContainsExceeded > 0 then
			tinsert(tooltipInfo, { left = (L.AND_MORE):format(ContainsExceeded) });
		end
	end
	return working
end
app.AddEventHandler("OnLoad", function()
	app.Settings.CreateInformationType("SummarizeThings", {
		text = "SummarizeThings",
		priority = 2.9, HideCheckBox = true,
		Process = function(t, reference, tooltipInfo)
			if reference.g then
				if AddContainsData(reference, tooltipInfo) then
					reference.working = true
				end
			end
		end
	})
end)

local SourceSearcher = app.SourceSearcher

local function AddSourceLinesForTooltip(tooltipInfo, paramA, paramB)
	-- Create a list of sources
	-- app.PrintDebug("SourceLocations",paramA,paramB,SourceLocationSettingsKey[paramA])
	if not app.ThingKeys[paramA] then return end
	local settings = app.Settings
	if not settings:GetTooltipSetting("SourceLocations") or not settings:GetTooltipSetting(SourceLocationSettingsKey[paramA]) then return end

	local text, parent, right
	local character, unavailable, unobtainable = {}, {}, {}
	local showUnsorted = settings:GetTooltipSetting("SourceLocations:Unsorted");
	local showCompleted = settings:GetTooltipSetting("SourceLocations:Completed");
	local FilterSettings, FilterInGame, FilterCharacter, FirstParent
		= app.RecursiveGroupRequirementsFilter, app.Modules.Filter.Filters.InGame, app.RecursiveCharacterRequirementsFilter, app.GetRelativeGroup
	local abbrevs = L.ABBREVIATIONS;
	local sourcesToShow
	-- paramB is the modItemID for itemID searches, so we may have to fallback to the base itemID if nothing sourced for the modItemID
	-- TODO: Rings from raid showing all difficulties, need fallback matching for items... modItemID, modID, itemID
	-- using a second return, directSources, to indicate the SourceSearcher has returned the Sources rather than the Things
	local allReferences, directSources = SourceSearcher[paramA](paramA,paramB)
	-- app.PrintDebug(directSources and "Source count" or "Search count",#allReferences,paramA,paramB,GetItemIDAndModID(paramB))
	for _,j in ipairs(allReferences or app.EmptyTable) do
		parent = directSources and j or j.parent
		-- app.PrintDebug("source:",app:SearchLink(j),parent and parent.parent,showCompleted or not app.IsComplete(j))
		if parent and parent.parent
			and (showCompleted or not app.IsComplete(j))
		then
			text = app.GenerateSourcePathForTooltip(parent);
			-- app.PrintDebug("SourceLocation",text,FilterInGame(j),FilterSettings(parent),FilterCharacter(parent))
			if showUnsorted or (not text:match(L.UNSORTED) and not text:match(L.HIDDEN_QUEST_TRIGGERS)) then
				-- doesn't meet current unobtainable filters from the Thing itself and its parent chain
				if not FilterInGame(j) or not FilterInGame(parent) then
					unobtainable[#unobtainable + 1] = text..UnobtainableTexture
				else
					-- something user would currently see in a list or not
					sourcesToShow = FilterSettings(parent) and character or unavailable
					-- from obtainable, different character source
					if not FilterCharacter(parent) then
						sourcesToShow[#sourcesToShow + 1] = text..NotCurrentCharacterTexture
					else
						-- check if this needs a status icon even though it's being shown
						right = GetUnobtainableTexture(FirstParent(parent, "e", true) or FirstParent(parent, "u", true) or parent)
							or (parent.rwp and app.asset("status-prerequisites"))
						if right then
							sourcesToShow[#sourcesToShow + 1] = text.." |T" .. right .. ":0|t"
						else
							sourcesToShow[#sourcesToShow + 1] = text
						end
					end
				end
			end
		end
	end
	-- app.PrintDebug("Sources count",#character,#unobtainable)
	-- if in Debug, add any unobtainable & unavailable sources
	if app.MODE_DEBUG then
		-- app.PrintDebug("+unavailable",#unavailable,"+unobtainable",#unobtainable)
		app.ArrayAppend(character, unavailable, unobtainable)
	elseif #character == 0 and not (paramA == "npcID" or paramA == "creatureID" or paramA == "encounterID") then
		-- no sources available to the character, add any unavailable/unobtainable sources
		if #unavailable > 0 then
			-- app.PrintDebug("+unavailable",#unavailable)
			app.ArrayAppend(character, unavailable)
		elseif #unobtainable > 0 then
			-- app.PrintDebug("+unobtainable",#unobtainable)
			app.ArrayAppend(character, unobtainable)
		end
	end
	if #character > 0 then
		local listing = {};
		local maximum = settings:GetTooltipSetting("Locations");
		local count = 0;
		app.Sort(character, app.SortDefaults.Strings);
		for _,text in ipairs(character) do
			-- since the strings are sorted, we only need to add ones that are not equal to the previously-added one
			-- instead of checking all existing strings
			if listing[#listing] ~= text then
				count = count + 1;
				if count <= maximum then
					listing[#listing + 1] = text
					-- app.PrintDebug("add source",text)
				end
			-- else app.PrintDebug("exclude source by last match",text)
			end
		end
		if count > maximum then
			listing[#listing + 1] = (L.AND_OTHER_SOURCES):format(count - maximum)
		end
		if #listing > 0 then
			local wrap = settings:GetTooltipSetting("SourceLocations:Wrapping");
			local working
			for _,text in ipairs(listing) do
				for source,replacement in pairs(abbrevs) do
					text = text:gsub(source, replacement);
				end
				if not working and IsRetrieving(text) then working = true; end
				local left, right = DESCRIPTION_SEPARATOR:split(text);
				tooltipInfo[#tooltipInfo + 1] = { left = left, right = right, wrap = wrap }
			end
			tooltipInfo.hasSourceLocations = true;
			return working
		end
	end
end
app.AddEventHandler("OnLoad", function()
	local SourceShowKeys = app.CloneDictionary(app.ThingKeys, {
		-- Specific keys which we don't want to list Sources but are considered Things
		npcID = false,
		creatureID = false,
		encounterID = false,
		explorationID = false,
	})
	app.Settings.CreateInformationType("SourceLocations", {
		priority = 2.7,
		text = "Source Locations",
		HideCheckBox = true,
		Process = function(t, reference, tooltipInfo)
			local key = reference.key
			local id = key == "itemID" and reference.modItemID or reference[key]
			if key and id and SourceShowKeys[key] then
				if tooltipInfo.hasSourceLocations then return end
				if AddSourceLinesForTooltip(tooltipInfo, key, id) then
					reference.working = true
				end
			end
		end
	})
end)

local unpack = unpack
local function GetSearchResults(method, paramA, paramB, options)
	-- app.PrintDebug("GetSearchResults",method,paramA,paramB)
	if not method then
		print("GetSearchResults: Invalid method: nil");
		return nil, true;
	end
	if not paramA then
		print("GetSearchResults: Invalid paramA: nil");
		return nil, true;
	end

	-- If we are searching for only one parameter, it is a raw link.
	local rawlink;
	if paramB then paramB = tonumber(paramB);
	else rawlink = paramA; end

	local RecursiveCharacterRequirementsFilter, RecursiveGroupRequirementsFilter
		= app.RecursiveCharacterRequirementsFilter, app.RecursiveGroupRequirementsFilter

	-- Call to the method to search the database.
	local group, a, b
	if options and options.AppendSearchParams then
		group, a, b = method(paramA, paramB, unpack(options.AppendSearchParams))
	else
		group, a, b = method(paramA, paramB)
	end
	-- app.PrintDebug("GetSearchResults:method",group and #group,a,b,paramA,paramB)
	if group then
		if a then paramA = a; end
		if b then paramB = b; end
		if paramA == "modItemID" then paramA = "itemID" end
		-- Move all post processing here?
		if #group > 0 then
			-- For Creatures, Objects and Encounters that are inside of an instance, we only want the data relevant for the instance + difficulty.
			if paramA == "npcID" or paramA == "creatureID" or paramA == "encounterID" or paramA == "objectID" then
				local subgroup = {};
				for _,j in ipairs(group) do
					if not j.ShouldExcludeFromTooltip then
						tinsert(subgroup, j);
					end
				end
				group = subgroup;
			elseif paramA == "azeriteessenceID" then
				local regroup = {};
				local rank = options and options.Rank
				if app.MODE_ACCOUNT then
					for i,j in ipairs(group) do
						if j.rank == rank and app.RecursiveUnobtainableFilter(j) then
							if j.mapID or j.parent == nil or j.parent.parent == nil then
								tinsert(regroup, setmetatable({["g"] = {}}, { __index = j }));
							else
								tinsert(regroup, j);
							end
						end
					end
				else
					for i,j in ipairs(group) do
						if j.rank == rank and RecursiveCharacterRequirementsFilter(j) and app.RecursiveUnobtainableFilter(j) and RecursiveGroupRequirementsFilter(j) then
							if j.mapID or j.parent == nil or j.parent.parent == nil then
								tinsert(regroup, setmetatable({["g"] = {}}, { __index = j }));
							else
								tinsert(regroup, j);
							end
						end
					end
				end

				group = regroup;
			elseif paramA == "titleID" or paramA == "followerID" then
				-- Don't do anything
				local regroup = {};
				if app.MODE_ACCOUNT then
					for i,j in ipairs(group) do
						if app.RecursiveUnobtainableFilter(j) then
							tinsert(regroup, setmetatable({["g"] = {}}, { __index = j }));
						end
					end
				else
					for i,j in ipairs(group) do
						if RecursiveCharacterRequirementsFilter(j) and app.RecursiveUnobtainableFilter(j) and RecursiveGroupRequirementsFilter(j) then
							tinsert(regroup, setmetatable({["g"] = {}}, { __index = j }));
						end
					end
				end

				group = regroup;
			end
		end
	else
		group = {};
	end

	-- Determine if this is a cache for an item
	if rawlink and not paramB then
		local itemString = app.Modules.Item.CleanLink(rawlink)
		if itemString:match("item") then
			-- app.PrintDebug("Rawlink SourceID",sourceID,rawlink)
			local _, itemID, enchantId, gemId1, gemId2, gemId3, gemId4, suffixId, uniqueId, linkLevel, specializationID, upgradeId, linkModID, numBonusIds, bonusID1 = (":"):split(itemString);
			if itemID then
				itemID = tonumber(itemID);
				local modID = tonumber(linkModID) or 0;
				if modID == 0 then modID = nil; end
				local bonusID = (tonumber(numBonusIds) or 0) > 0 and tonumber(bonusID1) or 3524;
				if bonusID == 3524 then bonusID = nil; end
				local sourceID = app.GetSourceID(rawlink);
				if sourceID then
					paramA = "sourceID"
					paramB = sourceID
					-- app.PrintDebug("use sourceID params",paramA,paramB)
				else
					paramA = "itemID";
					paramB = GetGroupItemIDWithModID(nil, itemID, modID, bonusID) or itemID;
					-- app.PrintDebug("use itemID params",paramA,paramB)
				end
			end
		else
			local kind, id = (":"):split(rawlink);
			kind = kind:lower();
			if id then id = tonumber(id); end
			if kind == "itemid" then
				paramA = "itemID";
				paramB = id;
			elseif kind == "questid" then
				paramA = "questID";
				paramB = id;
			elseif kind == "creatureid" or kind == "npcid" then
				paramA = "npcID";
				paramB = id;
			elseif kind == "achievementid" then
				paramA = "achievementID";
				paramB = id;
			end
		end
	end

	-- Create clones of the search results
	if not group.g then
		-- Clone all the non-ignored groups so that things don't get modified in the Source
		-- app.PrintDebug("Cloning Roots for",paramA,paramB,"#group",group and #group);
		local cloned = {};
		for _,o in ipairs(group) do
			-- app.PrintDebug("Clone:",app:SearchLink(o),GetRelativeValue(o, "sourceIgnored"),app.GetRelativeRawWithField(o, "sourceIgnored"),app.GenerateSourcePathForTooltip(o))
			if not GetRelativeValue(o, "sourceIgnored") then
				cloned[#cloned + 1] = CreateObject(o)
			end
		end
		-- replace the Source references with the cloned references
		group = cloned;
		local clearSourceParent = #group > 1;
		-- Find or Create the root group for the search results, and capture the results which need to be nested instead
		local root, filtered
		local nested = {};
		-- app.PrintDebug("Find Root for",paramA,paramB,"#group",group and #group);
		-- check for Item groups in a special way to account for extra ID's
		if paramA == "itemID" then
			local refinedMatches = app.GroupBestMatchingItems(group, paramB);
			if refinedMatches then
				-- move from depth 3 to depth 1 to find the set of items which best matches for the root
				for depth=3,1,-1 do
					if refinedMatches[depth] then
						-- app.PrintDebug("refined",depth,#refinedMatches[depth])
						if not root then
							for _,o in ipairs(refinedMatches[depth]) do
								-- object meets filter criteria and is exactly what is being searched
								if RecursiveCharacterRequirementsFilter(o) then
									-- app.PrintDebug("filtered root");
									if root then
										if filtered then
											-- app.PrintDebug("merge root",app:SearchLink(o));
											-- app.PrintTable(o)
											MergeProperties(root, o, filtered);
											-- other root content will be nested after
											MergeObjects(nested, o.g);
										else
											local otherRoot = root;
											-- app.PrintDebug("replace root",app:SearchLink(otherRoot));
											root = o;
											MergeProperties(root, otherRoot);
											-- previous root content will be nested after
											MergeObjects(nested, otherRoot.g);
										end
									else
										root = o;
										-- app.PrintDebug("first root",app:SearchLink(o));
									end
									filtered = true
								else
									-- app.PrintDebug("unfiltered root",app:SearchLink(o),o.modItemID,paramB);
									if root then MergeProperties(root, o, true);
									else root = o; end
								end
							end
						else
							for _,o in ipairs(refinedMatches[depth]) do
								-- Not accurate matched enough to be the root, so it will be nested
								-- app.PrintDebug("nested",app:SearchLink(o))
								nested[#nested + 1] = o
							end
						end
					end
				end
			end
		else
			for _,o in ipairs(group) do
				-- If the obj "is" the root obj
				-- app.PrintDebug(o.key,o[o.key],o.modItemID,"=parent>",o.parent and o.parent.key,o.parent and o.parent.key and o.parent[o.parent.key],o.parent and o.parent.text);
				if GroupMatchesParams(o, paramA, paramB) then
					-- object meets filter criteria and is exactly what is being searched
					if RecursiveCharacterRequirementsFilter(o) then
						-- app.PrintDebug("filtered root");
						if root then
							if filtered then
								-- app.PrintDebug("merge root",o.key,o[o.key]);
								-- app.PrintTable(o)
								MergeProperties(root, o, filtered);
								-- other root content will be nested after
								MergeObjects(nested, o.g);
							else
								local otherRoot = root;
								-- app.PrintDebug("replace root",otherRoot.key,otherRoot[otherRoot.key]);
								-- app.PrintTable(o)
								root = o;
								MergeProperties(root, otherRoot);
								-- previous root content will be nested after
								MergeObjects(nested, otherRoot.g);
							end
						else
							-- app.PrintDebug("first root",o.key,o[o.key]);
							-- app.PrintTable(o)
							root = o;
						end
						filtered = true
					else
						-- app.PrintDebug("unfiltered root",o.key,o[o.key],o.modItemID,paramB);
						if root then MergeProperties(root, o, true);
						else root = o; end
					end
				else
					-- Not the root, so it will be nested
					-- app.PrintDebug("nested")
					nested[#nested + 1] = o
				end
			end
		end
		if not root then
			-- app.PrintDebug("Create New Root",paramA,paramB)
			if paramA == "criteriaID" then
				local critID, achID = (":"):split(paramB)
				root = CreateObject({ [paramA] = tonumber(critID), achievementID = tonumber(achID) })
			else
				root = CreateObject({ [paramA] = paramB })
			end
			root.missing = true
		end
		-- If rawLink exists, import it into the root
		if rawlink then app.ImportRawLink(root, rawlink); end
		-- Ensure the param values are consistent with the new root object values (basically only affects creatureID)
		paramA, paramB = root.key, root[root.key];
		-- Special Case for itemID, need to use the modItemID for accuracy in item matching
		if root.itemID then
			if paramA ~= "sourceID" then
				paramA = "itemID"
				paramB = root.modItemID or paramB
			end
			-- if our item root has a bonusID, then we will rely on upgrade module to provide any upgrade
			-- raw groups with 'up' will never be sourced with a bonusID
			local bonusID = root.bonusID
			if bonusID ~= 3524 and bonusID or 0 > 0 then
				root.up = nil
			end
		end
		-- app.PrintDebug("Root",root.key,root[root.key],root.modItemID,root.up,root._up);
		-- app.PrintTable(root)
		-- app.PrintDebug("Root Collect",root.collectible,root.collected,root.collectibleAsCost,root.hasUpgrade);
		-- app.PrintDebug("params",paramA,paramB);
		-- app.PrintDebug(#nested,"Nested total");
		if #nested > 0 then
			-- Nest the objects by matching filter priority if it's not a currency
			if paramA ~= "currencyID" then
				PriorityNestObjects(root, nested, nil, RecursiveCharacterRequirementsFilter, RecursiveGroupRequirementsFilter)
			else
				-- do roughly the same logic for currency, but will not add the skipped objects afterwards
				local added = {};
				for i,o in ipairs(nested) do
					-- If the obj meets the recursive group filter
					if RecursiveCharacterRequirementsFilter(o) then
						-- Merge the obj into the merged results
						-- app.PrintDebug("Merge object",o.key,o[o.key])
						added[#added + 1] = o
					end
				end
				-- Nest the added objects
				NestObjects(root, added)
			end
		end

		-- if not root.key then
		-- 	app.PrintDebug("UNKNOWN ROOT GROUP",paramA,paramB)
		-- 	app.PrintTable(root)
		-- end

		-- Single group which matches the root, then collapse it
		-- This could only happen if a Thing is literally listed underneath itself...
		if root.g and #root.g == 1 then
			local o = root.g[1];
			-- if not o.key then
			-- 	app.PrintDebug("UNKNOWN OBJECT GROUP",paramA,paramB)
			-- 	app.PrintTable(o)
			-- end
			if o.key then
				local okey, rootkey = o.key, root.key
				-- print("Check Single",root.key,root.key and root[root.key],o.key and root[o.key],o.key,o.key and o[o.key],root.key and o[root.key])
				-- Heroic Tusks of Mannoroth triggers this logic
				if (root[okey] == o[okey]) or (root[rootkey] == o[rootkey]) then
					-- print("Single group")
					root.g = nil;
					MergeProperties(root, o, true);
				end
			end
		end

		-- Replace as the group
		group = root;
		-- Ensure some specific relative values are captured in the base group
		-- can make this a loop if there ends up being more needed...
		group.difficultyID = GetRelativeValue(group, "difficultyID");
		-- Ensure no weird parent references attached to the base search result if there were multiple search results
		group.parent = nil;
		if clearSourceParent then
			group.sourceParent = nil;
		end

		-- app.PrintDebug(group.g and #group.g,"Merge total");
		-- app.PrintDebug("Final Group",group.key,group[group.key],group.collectible,group.collected,app:SearchLink(group.sourceParent));
		-- app.PrintDebug("Group Type",group.__type)

		-- Special cases
		-- This was added in https://github.com/ATTWoWAddon/AllTheThings/commit/97dfc7dd9d228f149635e7fcbccd1c22549316a4
		-- in Dec 2020. I'm trying to figure out why other than forcibly reducing some Achievement tooltip size...
		-- Going to remove this and see if any complaints since showing more accurate Achievement information than Blizz
		-- default tooltip is probably a nicety - Runaway 2025-10-18
		-- Don't show nested criteria of achievements (unless loading popout/row content)
		-- if group.g and group.key == "achievementID" and app.GetSkipLevel() < 2 then
		-- 	local noCrits = {};
		-- 	-- print("achieve group",#group.g)
		-- 	for i=1,#group.g do
		-- 		if group.g[i].key ~= "criteriaID" then
		-- 			tinsert(noCrits, group.g[i]);
		-- 		end
		-- 	end
		-- 	group.g = noCrits;
		-- 	-- print("achieve nocrits",#group.g)
		-- end

		-- Fill the search result but not if the search itself was skipped (Mark of Honor) or indicated to skip
		if not options or not options.SkipFill then
			-- Fill up the group
			app.FillGroups(group)
		end

		-- Only need to build groups from the top level
		app.AssignChildren(group);
	-- delete sub-groups if there are none
	elseif #group.g == 0 then
		group.g = nil;
	end

	app.TopLevelUpdateGroup(group, true);

	group.isBaseSearchResult = true;

	return group, group.working
end
app.GetCachedSearchResults = function(method, paramA, paramB, options)
	-- app.print("GCSR",paramA,paramB,options and options.IgnoreCache)
	if options then
		if options.IgnoreCache then
			return GetSearchResults(method, paramA, paramB, options)
		end
		-- add a 10sec cache window to lookups
		-- probably long enough that any repeated use is smoother, but short enough that user actions would typically result in fresh lookups
		if options.ShortCache then
			local time = math_floor(GetTime() / 10)
			return app.GetCachedData((paramB and paramA..":"..paramB or paramA)..time, GetSearchResults, method, paramA, paramB, options);
		end
	end
	return app.GetCachedData(paramB and paramA..":"..paramB or paramA, GetSearchResults, method, paramA, paramB, options);
end
end	-- Search results Lib

(function()
-- Keys for groups which are in-game 'Things'
app.ThingKeys = {
	-- filterID = true,
	flightpathID = true,
	-- professionID = true,
	-- categoryID = true,
	-- mapID = true,
	conduitID = true,
	currencyID = true,
	itemID = true,
	toyID = true,
	sourceID = true,
	speciesID = true,
	recipeID = true,
	runeforgepowerID = true,
	spellID = true,
	missionID = true,
	mountID = true,
	mountmodID = true,
	illusionID = true,
	questID = true,
	objectID = true,
	artifactID = true,
	azeriteessenceID = true,
	followerID = true,
	factionID = true,
	titleID = true,
	campsiteID = true,
	decorID = true,
	garrisonbuildingID = true,
	achievementID = true,	-- special handling
	criteriaID = true,	-- special handling
	-- 1 - Specific keys which we don't want to list Contains data on row reference tooltips but are considered Things
	npcID = 1,
	creatureID = 1,
	encounterID = 1,
	explorationID = 1,
};
local SpecificSources = {
	headerID = {
		[app.HeaderConstants.COMMON_BOSS_DROPS] = true,
		[app.HeaderConstants.COMMON_VENDOR_ITEMS] = true,
	},
}
if rawget(app.HeaderConstants, "DROPS") then
	SpecificSources.headerID[app.HeaderConstants.DROPS] = true
end
local KeepSourced = {
	criteriaID = true
}
local SourceSearcher = app.SourceSearcher
local function GetThingSources(field, value)
	if field == "achievementID" then
		return SearchForField(field, value)
	end
	if field == "itemID" then
		-- allow extra return val (indicates directSources)
		return SourceSearcher.itemID(field, value)
	end
	-- ignore extra return vals
	local results = app.SearchForLink(field..":"..value)
	return results
end
-- TODO: probably have parser generate CraftedItemDB for simpler use
local function GetCraftingOutputRecipes(thing)
	local recipeIDs
	local itemID = thing.itemID
	for reagent,recipes in pairs(app.ReagentsDB) do
		for recipeID,info in pairs(recipes) do
			if info[1] == itemID then
				if recipeIDs then recipeIDs[#recipeIDs + 1] = recipeID
				else recipeIDs = { recipeID } end
			end
		end
	end
	return recipeIDs
end

-- Builds a 'Source' group from the parent of the group (or other listings of this group) and lists it under the group itself for
local function BuildSourceParent(group)
	-- only show sources for Things or specific of other types
	if not group or not group.key then return; end
	local groupKey, thingKeys = group.key, app.ThingKeys;
	local thingCheck = thingKeys[groupKey];
	local specificSource = SpecificSources[groupKey]
	if specificSource then
		 specificSource = specificSource[group[groupKey]];
	end
	-- group with some Source-able data can be treated as specific Source
	if not specificSource and (
		group.npcID or group.crs or group.providers
	) then
		specificSource = true;
	end
	if not thingCheck and not specificSource then return; end

	-- pull all listings of this 'Thing'
	local keyValue = group[groupKey];
	local isDirectSources
	local things = specificSource and { group }
	if not things then
		things, isDirectSources = GetThingSources(groupKey, keyValue)
	end
	-- app.PrintDebug("BuildSourceParent",group.hash,thingCheck,specificSource,keyValue,#things,isDirectSources)
	-- if app.Debugging then
	-- 	local sourceGroup = app.CreateRawText("DEBUG THINGS", {
	-- 		["OnUpdate"] = app.AlwaysShowUpdate,
	-- 		["skipFill"] = true,
	-- 		["g"] = {},
	-- 	})
	-- 	NestObjects(sourceGroup, things, true)
	-- 	NestObject(group, sourceGroup, nil, 1)
	-- end
	if things then
		local groupHash = group.hash;
		local parents = {};
		local isAchievement = groupKey == "achievementID";
		local parentKey, parent;
		-- collect all possible parent groups for all instances of this Thing
		for _,thing in ipairs(things) do
			if isDirectSources then
				parents[#parents + 1] = CreateObject(thing)
			elseif isAchievement or GroupMatchesParams(thing, groupKey, keyValue) then
				---@class ATTTempParentObject
				---@field key string
				---@field hash string
				---@field npcID number
				---@field creatureID number
				---@field _keepSource boolean
				---@field parent ATTTempParentObject
				parent = thing.parent;
				while parent do
					-- app.PrintDebug("parent",parent.text,parent.key)
					parentKey = parent.key;
					if parentKey and parent[parentKey] and parent.hash ~= groupHash then
						-- only show certain types of parents as sources.. typically 'Game World Things'
						-- or if the parent is directly tied to an NPC
						if thingKeys[parentKey] or parent.npcID then
							-- add the parent for display later
							parent = CreateObject(parent, true)
							parents[#parents + 1] = parent
							-- achievement criteria can nest inside their Source for clarity
							if isAchievement and KeepSourced[thing.key] then
								NestObject(parent, thing, true)
							end
							break
						-- or a map
						elseif parent.mapID then
							parent = app.CreateVisualHeaderWithGroups(CreateObject(parent, true))
							parents[#parents + 1] = parent
							-- achievement criteria can nest inside their Source for clarity
							if isAchievement and KeepSourced[thing.key] then
								NestObject(parent, thing, true)
							end
							break
						-- or a header with tagged NCPs
						elseif parent.headerID and parent.crs then
							local npcs = parent.crs
							for i=1,#npcs do
								parents[#parents + 1] = CreateObject(SearchForObject("npcID", npcs[i], "field") or {["npcID"] = npcs[i]}, true)
							end
							break
						end
					end
					-- move to the next parent if the current parent is not a valid 'Thing'
					parent = parent.parent;
				end
				-- Things tagged with an npcID should show that NPC as a Source
				if thing.key ~= "npcID" and thing.npcID and thing.hash ~= group.hash then
					local parentNPC = CreateObject(SearchForObject("npcID", thing.npcID, "field") or {["npcID"] = thing.npcID}, true)
					parents[#parents + 1] = parentNPC
					-- achievement criteria can nest inside their Source for clarity
					if isAchievement and KeepSourced[thing.key] then
						NestObject(parentNPC, thing, true)
					end
				end
				-- Things tagged with many npcIDs should show all those NPCs as a Source
				if thing.crs then
					-- app.PrintDebug("thing.crs",#thing.crs)
					local parentNPC;
					for _,npcID in ipairs(thing.crs) do
						parentNPC = CreateObject(SearchForObject("npcID", npcID, "field") or {["npcID"] = npcID}, true)
						parents[#parents + 1] = parentNPC
						-- achievement criteria can nest inside their Source for clarity
						if isAchievement and KeepSourced[thing.key] then
							NestObject(parentNPC, thing, true)
						end
					end
				end
				-- Things tagged with providers should show the providers as a Source
				if thing.providers then
					local type, id;
					for _,p in ipairs(thing.providers) do
						type, id = p[1], p[2];
						-- app.PrintDebug("Root Provider",type,id);
						---@type any
						local pRef = (type == "i" and SearchForObject("itemID", id, "field"))
								or   (type == "o" and SearchForObject("objectID", id, "field"))
								or   (type == "n" and SearchForObject("npcID", id, "field"))
								or   (type == "s" and SearchForObject("spellID", id, "field"));
						if pRef then
							pRef = CreateObject(pRef, true);
							parents[#parents + 1] = pRef
						else
							pRef = (type == "i" and app.CreateItem(id))
								or   (type == "o" and app.CreateObject(id))
								or   (type == "n" and app.CreateNPC(id))
								or   (type == "s" and app.CreateSpell(id));
							parents[#parents + 1] = pRef
						end
						-- achievement criteria can nest inside their Source for clarity
						if isAchievement and thing.key == "criteriaID" then
							NestObject(pRef, thing, true)
						end
					end
				end
				-- Things tagged with qgs should show the quest givers as a Source
				if thing.qgs then
					for _,id in ipairs(thing.qgs) do
						-- app.PrintDebug("Root Provider",type,id);
						local pRef = SearchForObject("npcID", id, "field");
						if pRef then
							pRef = CreateObject(pRef, true);
							parents[#parents + 1] = pRef
						else
							pRef = app.CreateNPC(id);
							parents[#parents + 1] = pRef
						end
					end
				end
				-- Things which are a Item output of one or more Crafting Recipes should show those Recipes as a Source
				if thing.itemID then
					local recipes = GetCraftingOutputRecipes(thing)
					if recipes then
						for _,recipeID in ipairs(recipes) do
							local pRef = SearchForObject("recipeID", recipeID, "field");
							if pRef then
								pRef = CreateObject(pRef, true);
								parents[#parents + 1] = pRef
							else
								pRef = app.CreateRecipe(recipeID);
								parents[#parents + 1] = pRef
							end
							pRef.OnUpdate = app.AlwaysShowUpdate
						end
					end
				end
				-- Things tagged with 'sourceQuests' should show the quests as a Source (if the Thing itself is not a raw Quest)
				-- if thing.sourceQuests and groupKey ~= "questID" then
				-- 	local questRef;
				-- 	for _,sq in ipairs(thing.sourceQuests) do
				-- 		questRef = SearchForObject("questID", sq) or {["questID"] = sq};
				-- 		tinsert(parents, questRef);
				-- 	end
				-- end
			end
		end
		-- Raw Criteria include their containing Achievement as the Source
		-- re-popping this Achievement will do normal Sources for all the Criteria and be useful
		if groupKey == "criteriaID" then
			local achID = group.achievementID;
			parent = CreateObject(SearchForObject("achievementID", achID, "key") or { achievementID = achID }, true)
			-- app.PrintDebug("add achievement for empty criteria",achID)
			parents[#parents + 1] = parent
		end

		if #parents == 0 then return end

		-- if there are valid parent groups for sources, merge them into a 'Source(s)' group
		-- app.PrintDebug("Found parents",#parents)
		local sourceGroup = app.CreateRawText(L.SOURCES, {
			description = L.SOURCES_DESC,
			icon = 134441,
			OnUpdate = app.AlwaysShowUpdate,
			sourceIgnored = true,
			skipFull = true,
			SortPriority = -3.0,
			g = {},
			IgnorePopout=true,
		})
		for _,parent in ipairs(parents) do
			-- if there's nothing nested under the parent, then force it to be visible
			-- otherwise the visibility can be driven by the nested thing
			parent.OnSetVisibility = not parent.g and app.AlwaysShowUpdate or nil	-- TODO: filter actual unobtainable sources...
		end
		PriorityNestObjects(sourceGroup, parents, nil, app.RecursiveCharacterRequirementsFilter, app.RecursiveGroupRequirementsFilter);
		NestObject(group, sourceGroup, nil, 1);
	end
end
app.AddEventHandler("OnNewPopoutGroup", BuildSourceParent)
end)();



do	-- Main Data
-- Returns {name,icon} for a known HeaderConstants NPCID
local function SimpleHeaderGroup(npcID, t)
	if t then
		t.name = L.HEADER_NAMES[npcID]
		t.icon = L.HEADER_ICONS[npcID]
		if t.suffix then
			t.name = t.name .. " (".. t.suffix ..")"
			t.suffix = nil
		end
	else
		t = {
				name = L.HEADER_NAMES[npcID],
				icon = L.HEADER_ICONS[npcID]
			}
	end
	return t
end

function app:GetDataCache()
	if not app.Categories then
		return nil;
	end

	-- app.PrintMemoryUsage("app:GetDataCache init")

	-- not really worth moving this into a Class since it's literally allowed to be used once
	local DefaultRootKeys = {
		__type = function(t) return "ROOT" end,
		title = function(t)
			return t.modeString .. DESCRIPTION_SEPARATOR .. t.untilNextPercentage
		end,
		summaryText = function(t)
			if not rawget(t,"TLUG") and app.CurrentCharacter then
				local primeData = app.CurrentCharacter.PrimeData
				if primeData then
					return app.Modules.Color.GetProgressColorText(primeData.progress, primeData.total)
				end
			end
			return app.Modules.Color.GetProgressColorText(t.progress, t.total)
		end,
		modeString = function(t)
			return app.Settings:GetModeString()
		end,
		untilNextPercentage = function(t)
			if not rawget(t,"TLUG") and app.CurrentCharacter then
				local primeData = app.CurrentCharacter.PrimeData
				if primeData then
					return app.Modules.Color.GetProgressTextToNextPercent(primeData.progress, primeData.total)
				end
			end
			return app.Modules.Color.GetProgressTextToNextPercent(t.progress, t.total)
		end,
		visible = app.ReturnTrue,
	}
	app.CloneDictionary(app.BaseClass.__class, DefaultRootKeys)

	-- Update the Row Data by filtering raw data (this function only runs once)
	local g = {};
	local rootData = setmetatable({
		key = "ROOT",
		text = L.TITLE,
		icon = app.asset("logo_32x32"),
		preview = app.asset("Discord_2_128"),
		description = L.DESCRIPTION,
		font = "GameFontNormalLarge",
		expanded = true,
		g = g,
	}, {
		__index = function(t, key)
			local defaultKeyFunc = DefaultRootKeys[key]
			if defaultKeyFunc then return defaultKeyFunc(t) end
		end,
		__newindex = function(t, key, val)
			-- app.PrintDebug("Top-Root-Set",rawget(t,"TLUG"),key,val)
			if key == "visible" then
				return;
			end
			-- until the Main list receives a top-level update
			if not rawget(t,"TLUG") then
				-- ignore setting progress/total values
				if key == "progress" or key == "total" then
					return;
				end
			end
			rawset(t, key, val);
		end
	});

	-----------------------------------------
	-- P R I M A R Y   C A T E G O R I E S --
	-----------------------------------------
	-- Dungeons & Raids
	tinsert(g, app.CreateRawText(GROUP_FINDER, {
		icon = app.asset("Category_D&R"),
		g = app.Categories.Instances,
	}));

	-- Delves
	if app.Categories.Delves then
		tinsert(g, app.CreateCustomHeader(app.HeaderConstants.DELVES, app.Categories.Delves));
	end

	-- Outdoor Zones
	if app.Categories.Zones then
		tinsert(g, app.CreateRawText(BUG_CATEGORY2, {
			icon = app.asset("Category_Zones"),
			g = app.Categories.Zones,
			mapID = 947,
		}));
	end

	-- World Drops
	tinsert(g, app.CreateCustomHeader(app.HeaderConstants.WORLD_DROPS, {
		g = app.Categories.WorldDrops or {},
		isWorldDropCategory = true,
	}));

	-- Crafted Items
	local craftables = app.Categories.Craftables;
	if craftables then
		tinsert(g, app.CreateRawText(LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM, {
			icon = app.asset("Category_Crafting"),
			DontEnforceSkillRequirements = true,
			isCraftedCategory = true,
			g = craftables,
		}));
	end

	-- Professions
	local ProfessionsHeader = app.CreateCustomHeader(app.HeaderConstants.PROFESSIONS, {
		g = app.Categories.Professions or {}
	});
	tinsert(g, ProfessionsHeader);

	-- Holidays
	if app.Categories.Holidays then
		tinsert(g, app.CreateCustomHeader(app.HeaderConstants.HOLIDAYS, {
			difficultyID = 19,	-- 'Event' difficulty, allows auto-expand logic to find it when queueing special holiday dungeons
			SortType = "EventStart",
			isHolidayCategory = true,
			g = app.Categories.Holidays,
		}));
	end

	-- Expansion Features
	if app.Categories.ExpansionFeatures and #app.Categories.ExpansionFeatures > 0 then
		tinsert(g, app.CreateRawText(GetCategoryInfo(15301) or EXPANSION_FILTER_TEXT, {
			icon = app.asset("Category_ExpansionFeatures"),
			description = "These expansion features are new systems or ideas by Blizzard which are spread over multiple zones. For the ease of access & for the sake of reducing numbers, these are tagged as expansion features.\nIf an expansion feature is limited to 1 zone, it will continue being listed only under its respective zone.",
			g = app.Categories.ExpansionFeatures,
		}));
	end

	-----------------------------------------
	-- L I M I T E D   C A T E G O R I E S --
	-----------------------------------------
	-- Character
	if app.Categories.Character then
		tinsert(g, app.CreateRawText(CHARACTER, {
			icon = app.asset("Category_ItemSets"),
			g = app.Categories.Character,
		}));
	end

	-- Housing
	if app.Categories.Housing then
		tinsert(g, app.CreateCustomHeader(app.HeaderConstants.HOUSING, app.Categories.Housing));
	end

	-- Group Finder
	if app.Categories.GroupFinder then
		tinsert(g, app.CreateRawText(DUNGEONS_BUTTON, {
			icon = app.asset("Category_GroupFinder"),
			g = app.Categories.GroupFinder,
		}));
	end

	-- Pet Battles
	if app.Categories.PetBattles then
		tinsert(g, app.CreateCustomHeader(app.HeaderConstants.PET_BATTLES, app.Categories.PetBattles));
	end

	-- PvP
	if app.Categories.PVP then
		tinsert(g, app.CreateCustomHeader(app.HeaderConstants.PVP, {
			g = app.Categories.PVP,
			isPVPCategory = true,
		}));
	end

	-- Season of Discovery
	if app.Categories.SeasonOfDiscovery then
		for i,o in ipairs(app.Categories.SeasonOfDiscovery) do
			tinsert(g, o);
		end
	end

	-- Secrets
	if app.Categories.Secrets then
		tinsert(g, app.CreateCustomHeader(app.HeaderConstants.SECRETS, app.Categories.Secrets));
	end

	-- Skills
	if app.Categories.Skills then
		tinsert(g, app.CreateRawText(SKILLS, {
			icon = 136105,
			g = app.Categories.Skills
		}));
	end

	-- World Events
	if app.Categories.WorldEvents then
		tinsert(g, app.CreateRawText(BATTLE_PET_SOURCE_7, {
			icon = app.asset("Category_Event"),
			description = "These events occur at different times in the game's timeline, typically as one time server wide events. Special celebrations such as Anniversary events and such may be found within this category.",
			g = app.Categories.WorldEvents,
			isEventCategory = true,
		}));
	end

	---------------------------------------
	-- M A R K E T   C A T E G O R I E S --
	---------------------------------------
	-- Black Market
	if app.Categories.BlackMarket then tinsert(g, app.Categories.BlackMarket[1]); end

	-- In-Game Store
	if app.Categories.InGameShop then
		tinsert(g, app.CreateCustomHeader(app.HeaderConstants.IN_GAME_SHOP, app.Categories.InGameShop));
	end
	
	-- Promotions
	if app.Categories.Promotions then
		tinsert(g, app.CreateRawText(BATTLE_PET_SOURCE_8, {
			icon = app.asset("Category_Promo"),
			description = "This section is for real world promotions that seeped extremely rare content into the game prior to some of them appearing within the In-Game Shop.",
			isPromotionCategory = true,
			g = app.Categories.Promotions,
		}));
	end
	
	-- Trading Post
	if app.Categories.TradingPost then
		tinsert(g, app.CreateRawText(TRANSMOG_SOURCE_7, {
			icon = app.asset("Category_TradingPost"),
			g = app.Categories.TradingPost
		}));
	end
	
	-----------------------------------------
	-- D Y N A M I C   C A T E G O R I E S --
	-----------------------------------------
	if app.IsClassic and app.Windows then
		local keys,sortedList = {},{};
		for suffix,window in pairs(app.WindowDefinitions) do
			if window and window.IsDynamicCategory then
				if window.DynamicCategoryHeader then
					if window.DynamicProfessionID then
						local dynamicProfessionHeader = nil;
						for i,header in ipairs(ProfessionsHeader.g) do
							if header.requireSkill == window.DynamicProfessionID then
								dynamicProfessionHeader = header;
								break;
							end
						end

						local recipesList = app.CreateDynamicCategory(suffix);
						recipesList.IgnoreBuildRequests = true;
						if dynamicProfessionHeader then
							recipesList.text = "Recipes";
							recipesList.icon = 134939;
							if not dynamicProfessionHeader.g then
								dynamicProfessionHeader.g = {};
							end
							tinsert(dynamicProfessionHeader.g, recipesList);
						else
							tinsert(ProfessionsHeader.g, recipesList);
						end
					else
						print("Unhandled dynamic category conditional");
					end
				else
					keys[suffix] = window;
				end
			end
		end
		for suffix,window in pairs(app.Windows) do
			if window and window.IsDynamicCategory then
				if window.DynamicCategoryHeader then
					if window.DynamicProfessionID then
						local dynamicProfessionHeader = nil;
						for i,header in ipairs(ProfessionsHeader.g) do
							if header.requireSkill == window.DynamicProfessionID then
								dynamicProfessionHeader = header;
								break;
							end
						end

						local recipesList = app.CreateDynamicCategory(suffix);
						recipesList.IgnoreBuildRequests = true;
						if dynamicProfessionHeader then
							recipesList.text = "Recipes";
							recipesList.icon = 134939;
							if not dynamicProfessionHeader.g then
								dynamicProfessionHeader.g = {};
							end
							tinsert(dynamicProfessionHeader.g, recipesList);
						else
							tinsert(ProfessionsHeader.g, recipesList);
						end
					else
						print("Unhandled dynamic category conditional");
					end
				else
					keys[suffix] = window;
				end
			end
		end
		for suffix,window in pairs(keys) do
			tinsert(sortedList, suffix);
		end
		app.Sort(sortedList, app.SortDefaults.Strings);
		for i,suffix in ipairs(sortedList) do
			local dynamicCategory = app.CreateDynamicCategory(suffix);
			dynamicCategory.sourceIgnored = 1;
			tinsert(g, dynamicCategory);
		end
	end
	
	-- Track Deaths!
	tinsert(g, app.CreateDeathClass());
	
	-- Yourself.
	tinsert(g, app.CreateUnit("player", {
		description = L.DEBUG_LOGIN,
		races = { app.RaceIndex },
		c = { app.ClassIndex },
		r = app.FactionID,
		collected = 1,
		nmr = false,
		OnUpdate = function(self)
			self.lvl = app.Level;
			if app.MODE_DEBUG then
				self.collectible = true;
			else
				self.collectible = false;
			end
		end
	}));

	-- Module-based Groups
	app.HandleEvent("OnAddExtraMainCategories", g)

	-- app.PrintMemoryUsage()
	-- app.PrintDebug("Begin Cache Prime")
	CacheFields(rootData);
	-- app.PrintDebugPrior("Ended Cache Prime")
	-- app.PrintMemoryUsage()

	-- Achievements
	if app.Categories.Achievements then
		local db = app.CreateCustomHeader(app.HeaderConstants.ACHIEVEMENTS, app.Categories.Achievements);
		db.sourceIgnored = 1;	-- everything in this category is now cloned!
		for _, o in ipairs(db.g) do
			o.sourceIgnored = nil
		end
		CacheFields(db, true, "Achievements")
		tinsert(g, db);
	end
	
	app.AssignChildren(rootData);
	
	if app.IsRetail then
	-- Create Dynamic Groups Button
	tinsert(g, app.CreateRawText(L.CLICK_TO_CREATE_FORMAT:format(L.DYNAMIC_CATEGORY_LABEL), {
		icon = app.asset("Interface_CreateDynamic"),
		OnUpdate = app.AlwaysShowUpdate,
		sourceIgnored = true,
		-- ["OnClick"] = function(row, button)
			-- could implement logic to auto-populate all dynamic groups like before... will see if people complain about individual generation
		-- end,
		-- Top-Level Dynamic Categories
		g = {
			-- Future Unobtainable
			app.CreateDynamicHeader("rwp", {
				dynamic_withsubgroups = true,
				dynamic_value = app.GameBuildVersion,
				dynamic_searchcriteria = {
					SearchValueCriteria = {
						-- only include 'rwp' search results where the value is >= the current game version
						function(o,field,value)
							local rwp = o[field]
							if not rwp then return end
							return rwp >= value
						end
					}
				},
				name = L.FUTURE_UNOBTAINABLE,
				description = L.FUTURE_UNOBTAINABLE_TOOLTIP,
				icon = app.asset("Interface_Future_Unobtainable")
			}),

			-- Recently Added
			app.CreateDynamicHeader("awp", {
				dynamic_value = app.GameBuildVersion,
				dynamic_withsubgroups = true,
				name = L.NEW_WITH_PATCH,
				description = L.NEW_WITH_PATCH_TOOLTIP,
				icon = app.asset("Interface_Newly_Added")
			}),

			-- Achievements
			app.CreateDynamicHeader("achievementID", SimpleHeaderGroup(app.HeaderConstants.ACHIEVEMENTS)),

			-- Artifacts
			app.CreateDynamicHeader("artifactID", SimpleHeaderGroup(app.HeaderConstants.ARTIFACTS)),

			-- Azerite Essences
			app.CreateDynamicHeader("azeriteessenceID", SimpleHeaderGroup(app.HeaderConstants.AZERITE_ESSENCES)),

			-- Battle Pets
			app.CreateDynamicHeader("speciesID", {
				name = AUCTION_CATEGORY_BATTLE_PETS,
				icon = app.asset("Category_PetJournal")
			}),

			-- Campsites
			app.CreateDynamicHeader("campsiteID", {
				name = WARBAND_SCENES,
				icon = app.asset("Category_Campsites")
			}),

			-- Character Unlocks
			app.CreateDynamicHeader("characterUnlock", {
				name = L.CHARACTERUNLOCKS_CHECKBOX,
				icon = app.asset("Category_ItemSets")
			}),

			-- Conduits
			app.CreateDynamicHeader("conduitID", SimpleHeaderGroup(app.HeaderConstants.CONDUITS, {suffix=EXPANSION_NAME8})),

			-- Currencies
			app.CreateDynamicHeaderByValue("currencyID", {
				dynamic_withsubgroups = true,
				name = CURRENCY,
				icon = app.asset("Interface_Vendor")
			}),

			-- Decor
			app.CreateDynamicHeader("decorID", {
				name = CATALOG_SHOP_TYPE_DECOR,
				icon = app.asset("Category_Housing")
			}),

			-- Factions
			app.CreateDynamicHeaderByValue("factionID", {
				dynamic_withsubgroups = true,
				name = L.FACTIONS,
				icon = app.asset("Category_Factions")
			}),

			-- Flight Paths
			app.CreateDynamicHeader("flightpathID", {
				name = L.FLIGHT_PATHS,
				icon = app.asset("Category_FlightPaths")
			}),

			-- Followers
			app.CreateDynamicHeader("followerID", SimpleHeaderGroup(app.HeaderConstants.FOLLOWERS)),

			-- Garrison Buildings
			-- TODO: doesn't seem to work...
			-- app.CreateDynamicHeader("garrisonbuildingID", SimpleHeaderGroup(app.HeaderConstants.BUILDINGS)),

			-- Heirlooms
			app.CreateDynamicHeader("heirloomID", SimpleHeaderGroup(app.HeaderConstants.HEIRLOOMS)),

			-- Illusions
			app.CreateDynamicHeader("illusionID", {
				name = L.FILTER_ID_TYPES[103],
				icon = app.asset("Category_Illusions")
			}),

			-- Mounts
			app.CreateDynamicHeader("mountID", {
				name = MOUNTS,
				icon = app.asset("Category_Mounts")
			}),

			-- Mount Mods
			app.CreateDynamicHeader("mountmodID", SimpleHeaderGroup(app.HeaderConstants.MOUNT_MODS)),

			-- Pet Battles
			app.CreateDynamicHeader("pb", SimpleHeaderGroup(app.HeaderConstants.PET_BATTLES, {dynamic_withsubgroups = true})),

			-- Professions
			app.CreateDynamicHeaderByValue("professionID", {
				dynamic_withsubgroups = true,
				dynamic_valueField = "requireSkill",
				name = TRADE_SKILLS,
				icon = app.asset("Category_Professions")
			}),

			-- Runeforge Powers
			app.CreateDynamicHeader("runeforgepowerID", SimpleHeaderGroup(app.HeaderConstants.LEGENDARIES, {suffix=EXPANSION_NAME8})),

			-- Titles
			app.CreateDynamicHeader("titleID", {
				name = PAPERDOLL_SIDEBAR_TITLES,
				icon = app.asset("Category_Titles")
			}),

			-- Toys
			app.CreateDynamicHeader("toyID", {
				name = TOY_BOX,
				icon = app.asset("Category_ToyBox")
			}),

			-- Various Quest groups
			app.CreateCustomHeader(app.HeaderConstants.QUESTS, {
				visible = true,
				OnUpdate = app.AlwaysShowUpdate,
				g = {
					-- Breadcrumbs
					app.CreateDynamicHeader("isBreadcrumb", {
						name = L.BREADCRUMBS,
						icon = 134051
					}),

					-- Dailies
					app.CreateDynamicHeader("isDaily", {
						name = DAILY,
						icon = app.asset("Interface_Questd")
					}),

					-- Weeklies
					app.CreateDynamicHeader("isWeekly", {
						name = CALENDAR_REPEAT_WEEKLY,
						icon = app.asset("Interface_Questw")
					}),

					-- HQTs
					app.CreateDynamicHeader("isHQT", {
						name = MINIMAP_TRACKING_HIDDEN_QUESTS,
						icon = app.asset("Interface_Quest"),
					}),

					-- All Quests
					-- this works but..... bad idea instead use /att list type=quest limit=79000
					-- app.CreateDynamicHeaderByValue("questID", {
					-- 	dynamic_withsubgroups = true,
					-- 	name = QUESTS_LABEL,
					-- 	icon = app.asset("Interface_Quest_header")
					-- }),
				}
			}),

		},
	}));
	
	-- Function to build a hidden window's data
	local AllHiddenWindows = {}
	local function BuildHiddenWindowData(name, icon, description, category, flags)
		if not app.Categories[category] then return end

		local windowData = app.CreateRawText(app.Modules.Color.Colorize(name, flags and flags.Color or app.Colors.ChatLinkError), app.Categories[category])
		windowData.title = name .. DESCRIPTION_SEPARATOR .. app.Version
		windowData.icon = app.asset(icon)
		windowData.description = description
		windowData.font = "GameFontNormalLarge"
		for k, v in pairs(flags or app.EmptyTable) do
			windowData[k] = v
		end

		CacheFields(windowData, true)
		AllHiddenWindows[#AllHiddenWindows + 1] = windowData

		-- Filter for Never Implemented things
		if category == "NeverImplemented" then
			app.AssignFieldValue(windowData, "u", 1)
		end

		local window = app:GetWindow(category)
		window:SetData(windowData)
		window:AssignChildren()
	end

	-- Build all the hidden window's data
	--BuildHiddenWindowData(L.UNSORTED, "WindowIcon_Unsorted", L.UNSORTED_DESC, "Unsorted", { _missing = true, _unsorted = true, _nosearch = true })
	BuildHiddenWindowData(L.NEVER_IMPLEMENTED, "status-unobtainable", L.NEVER_IMPLEMENTED_DESC, "NeverImplemented", { _nyi = true, _nosearch = true })
	BuildHiddenWindowData(L.HIDDEN_ACHIEVEMENT_TRIGGERS, "Category_Achievements", L.HIDDEN_ACHIEVEMENT_TRIGGERS_DESC, "HiddenAchievementTriggers", { _hqt = true, _nosearch = true, Color = app.Colors.ChatLinkHQT })
	BuildHiddenWindowData(L.HIDDEN_CURRENCY_TRIGGERS, "Interface_Vendor", L.HIDDEN_CURRENCY_TRIGGERS_DESC, "HiddenCurrencyTriggers", { _hqt = true, _nosearch = true, Color = app.Colors.ChatLinkHQT })
	BuildHiddenWindowData(L.HIDDEN_QUEST_TRIGGERS, "Interface_Quest", L.HIDDEN_QUEST_TRIGGERS_DESC, "HiddenQuestTriggers", { _hqt = true, _nosearch = true, Color = app.Colors.ChatLinkHQT })
	BuildHiddenWindowData(L.SOURCELESS, "WindowIcon_Unsorted", L.SOURCELESS_DESC, "Sourceless", { _missing = true, _unsorted = true, _nosearch = true, Color = app.Colors.TooltipWarning })
	-- app.PrintMemoryUsage("Hidden Windows Data Done")

	-- a single Unsorted window to collect all base Unsorted windows
	-- TODO: migrate this logic once Window creation is revised
	app.ChatCommands.Add("all-hidden", function(args)
		local window = app:GetWindow("all-hidden")
		if window and not window.HasPendingUpdate then window:Toggle() return true end

		-- local allHiddenSearch = app:BuildTargettedSearchResponse(AllUnsortedGroups, "_nosearch", true, nil, {ParentInclusionCriteria={},SearchCriteria={},SearchValueCriteria={}})

		local windowData = app.CreateRawText(app.Modules.Color.Colorize("All-Hidden", app.Colors.ChatLinkError), {
			-- clone all unhidden groups into this window
			g = CreateObject(AllHiddenWindows),
			title = "All-Hidden" .. DESCRIPTION_SEPARATOR .. app.Version,
			icon = app.asset("status-unobtainable"),
			description = "All Hidden ATT Content",
			font = "GameFontNormalLarge",
		})
		window:SetData(windowData)
		window:AssignChildren()
		window:Toggle()
		return true
	end, {
		"Usage : /att all-hidden",
		"Provides a single command to open all Hidden content in a single window",
	})
	end
	-- app.PrintMemoryUsage("Finished loading data cache")
	-- app.PrintMemoryUsage()
	app.GetDataCache = function()
		-- app.PrintDebug("Cached data cache")
		return rootData;
	end
	return rootData;
end

end	-- Dynamic/Main Data

local function PrePopulateAchievementSymlinks()
	local achCache = app.SearchForFieldContainer("achievementID")
	-- app.PrintDebug("FillAchSym")
	if achCache then
		local FillSym = app.FillAchievementCriteriaAsync
		app.FillRunner.SetPerFrame(500)
		local Run = app.FillRunner.Run
		local group
		for achID,groups in pairs(achCache) do
			for i=1,#groups do
				group = groups[i]
				if group.__type == "Achievement" and not GetRelativeValue(group, "sourceIgnored") then
					-- app.PrintDebug("FillAchSym",group.hash)
					Run(FillSym, group)
				end
			end
		end
		app.FillRunner.SetPerFrame(25)
	end
	Callback(app.RemoveEventHandler, PrePopulateAchievementSymlinks)
	-- app.PrintDebug("Done:FillAchSym")
end
app.AddEventHandler("OnRefreshCollectionsDone", PrePopulateAchievementSymlinks)


app.AddEventHandler("OnReady", function()
	-- warning about debug logging in case it sneaks in we can realize quicker
	app.PrintDebug("NOTE: ATT debug prints enabled!")
end);

-- Startup Event
local ADDON_LOADED_HANDLERS = {
	[appName] = function()
		-- Old Saved Variables
		AllTheThingsAD = app.LocalizeGlobalIfAllowed("AllTheThingsAD", true);	-- For account-wide data.

		-- Cache the Localized Category Data
		AllTheThingsAD.LocalizedCategoryNames = setmetatable(AllTheThingsAD.LocalizedCategoryNames or {}, { __index = app.CategoryNames });
		app.CategoryNames = nil;

		-- Clear some keys which got added and shouldn't have been
		AllTheThingsAD.ExplorationDB = nil
		AllTheThingsAD.ExplorationAreaPositionDB = nil
		
		-- CRIEVE NOTE: Once the Sync Window is moved over from Classic, this can be removed.
		if not AllTheThingsAD.LinkedAccounts then
			AllTheThingsAD.LinkedAccounts = {};
		end

		-- clear harvest data on load in case someone forgets
		AllTheThingsHarvestItems = {};
		
		-- Character Data Storage
		local characterData = app.LocalizeGlobalIfAllowed("ATTCharacterData", true);
		local currentCharacter = characterData[app.GUID];
		if not currentCharacter then
			currentCharacter = {};
			characterData[app.GUID] = currentCharacter;
		end
		currentCharacter.build = app.GameBuildVersion;
		local name, realm = UnitName("player");
		if not realm then realm = GetRealmName(); end
		if name then currentCharacter.name = name; end
		if realm then currentCharacter.realm = realm; end
		if app.Me then currentCharacter.text = app.Me; end
		if app.GUID then currentCharacter.guid = app.GUID; end
		if app.Level then currentCharacter.lvl = app.Level; end
		if app.FactionID then currentCharacter.factionID = app.FactionID; end
		if app.ClassIndex then currentCharacter.classID = app.ClassIndex; end
		if app.RaceIndex then currentCharacter.raceID = app.RaceIndex; end
		if app.Class then currentCharacter.class = app.Class; end
		if app.Race then currentCharacter.race = app.Race; end
		if not currentCharacter.Achievements then currentCharacter.Achievements = {}; end
		if not currentCharacter.ActiveSkills then currentCharacter.ActiveSkills = {}; end
		if not currentCharacter.CustomCollects then currentCharacter.CustomCollects = {}; end
		if not currentCharacter.Lockouts then currentCharacter.Lockouts = {}; end
		if not currentCharacter.Quests then currentCharacter.Quests = {}; end
		if not currentCharacter.Professions then currentCharacter.Professions = {}; end
		app.CurrentCharacter = currentCharacter;
		app.AddEventHandler("OnPlayerLevelUp", function()
			currentCharacter.lvl = app.Level;
		end);
		
		-- Current character collections shouldn't use '2' ever... so clear any 'inaccurate' data
		local currentQuestsCache = currentCharacter.Quests;
		for questID,completion in pairs(currentQuestsCache) do
			if completion == 2 then currentQuestsCache[questID] = nil; end
		end

		-- Account Wide Data Storage
		local accountWideData = app.LocalizeGlobalIfAllowed("ATTAccountWideData", true);
		if not accountWideData.Achievements then accountWideData.Achievements = {}; end
		if not accountWideData.BattlePets then accountWideData.BattlePets = {}; end
		if not accountWideData.Exploration then accountWideData.Exploration = {}; end
		if not accountWideData.Factions then accountWideData.Factions = {}; end
		if not accountWideData.FactionBonus then accountWideData.FactionBonus = {}; end
		if not accountWideData.FlightPaths then accountWideData.FlightPaths = {}; end
		if not accountWideData.HeirloomRanks then accountWideData.HeirloomRanks = {}; end
		if not accountWideData.Quests then accountWideData.Quests = {}; end
		if not accountWideData.Spells then accountWideData.Spells = {}; end
		if not accountWideData.Titles then accountWideData.Titles = {}; end
		if not accountWideData.Transmog then accountWideData.Transmog = {}; end
		if not accountWideData.OneTimeQuests then accountWideData.OneTimeQuests = {}; end
		
		-- Clean up unused saved variables if they become deprecated after being pushed to Git
		accountWideData.Campsite = nil
		accountWideData.WarbandScene = nil
		accountWideData.TEMP_TWWSources = nil
		currentCharacter.CommonItems = nil
		accountWideData.CommonItems = nil
		
		-- Clean up other matching Characters with identical Name-Realm but differing GUID
		local myGUID = app.GUID;
		local myName, myRealm = currentCharacter.name, currentCharacter.realm;
		local myRegex = "%|cff[A-z0-9][A-z0-9][A-z0-9][A-z0-9][A-z0-9][A-z0-9]"..myName.."%-"..myRealm.."%|r";
		local otherName, otherRealm, otherText;
		local toClean;
		for guid,character in pairs(characterData) do
			-- simple check on name/realm first
			otherName = character.name;
			otherRealm = character.realm;
			otherText = character.text;
			if guid ~= myGUID then
				if otherName == myName and otherRealm == myRealm then
					if toClean then tinsert(toClean, guid)
					else toClean = { guid }; end
				elseif otherText and otherText:match(myRegex) then
					if toClean then tinsert(toClean, guid)
					else toClean = { guid }; end
				end
			end
		end
		if toClean then
			local copyTables = { "Buildings","GarrisonBuildings","Factions","FlightPaths" };
			local cleanCharacterFunc = function(guid)
				-- copy the set of QuestIDs from the duplicate character (to persist repeatable Quests collection)
				local character = characterData[guid];
				for _,tableName in ipairs(copyTables) do
					local copyTable = character[tableName];
					if copyTable then
						-- app.PrintDebug("Copying Dupe",tableName)
						local currentTable = currentCharacter[tableName];
						if not currentTable then
							-- old/restored character missing copied data
							currentTable = {}
							currentCharacter[tableName] = currentTable
						end
						for ID,complete in pairs(copyTable) do
							-- app.PrintDebug("Check",ID,complete,"?",currentTable[ID])
							if complete and not currentTable[ID] then
								-- app.PrintDebug("Copied Completed",ID)
								currentTable[ID] = complete;
							end
						end
					end
				end
				-- Remove the actual dupe data afterwards
				-- move to a backup table temporarily in case anyone reports weird issues, we could potentially resolve them?
				local backups = accountWideData._CharacterBackups;
				if not backups then
					backups = {};
					accountWideData._CharacterBackups = backups;
				end
				backups[guid] = character;
				characterData[guid] = nil;
				local count = 0
				for guid,char in pairs(backups) do
					count = count + 1
				end
				app.print("Removed & Backed up Duplicate Data of Current Character:",character.text,guid,"[You have",count,"total character backups]")
				app.print("Use '/att remove-deleted-character-backups help' for more info")
			end
			for _,guid in ipairs(toClean) do
				app.FunctionRunner.Run(cleanCharacterFunc, guid);
			end
		end

		-- Allows removing the character backups that ATT automatically creates for duplicated characters which are replaced by new ones
		app.ChatCommands.Add("remove-deleted-character-backups", function(args)
			local backups = 0
			for guid,char in pairs(accountWideData._CharacterBackups or app.EmptyTable) do
				backups = backups + 1
			end
			accountWideData._CharacterBackups = nil
			app.print("Cleaned up",backups,"character backups!")
			return true
		end, {
			"Usage : /att remove-deleted-character-backups",
			"Allows permanently removing all deleted character backup data",
			"-- ATT removes and cleans out character-specific cached data which is stored by a character with the same Name-Realm as the logged-in character but a different character GUID. If you find yourself creating and deleting a lot of repeated characters, this will clean up those characters' data backups",
		})

		-- Initialize Settings
		app.Settings:Initialize();

		-- Notify Event Handlers that Saved Variable Data is available.
		app.HandleEvent("OnSavedVariablesAvailable", currentCharacter, accountWideData, characterData);
		-- Event handlers which need Saved Variable data which is added by OnSavedVariablesAvailable handlers into saved variables
		app.HandleEvent("OnAfterSavedVariablesAvailable", currentCharacter, accountWideData);
		
		-- OnLoad events (saved variables are now available)
		app.HandleEvent("OnLoad")
	end,
};
app:RegisterFuncEvent("ADDON_LOADED", function(addonName)
	local addonTrigger = ADDON_LOADED_HANDLERS[addonName];
	if addonTrigger then addonTrigger(); end
end)