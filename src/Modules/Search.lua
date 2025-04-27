
-- Search Module
local _, app = ...;

-- Concepts:
-- Encapsulates the functionality for performing and handling 'search' type capabilities in ATT
-- Module Dependencies:
-- DataHandling, Item
-- Class Dependencies:
-- Miscellaneous

-- Global locals
local floor, 	  type, tonumber,pairs,wipe
	= math.floor, type, tonumber,pairs,wipe

-- App locals
local SearchForObject, GetRelativeRawWithField
	= app.SearchForObject, app.GetRelativeRawWithField

-- Upgrade API Implementation
-- Access via AllTheThings.Modules.Search
local api = {};
app.Modules.Search = api;

-- Module locals
local CleanLink,GetGroupItemIDWithModID,GetItemIDAndModID,NestObject,CreateObject,CreateWrapFilterHeader
app.AddEventHandler("OnLoad", function()
	CleanLink = app.Modules.Item.CleanLink
	if not CleanLink then
		error("Search Module requires Modules.Item.CleanLink definition!")
	end
	GetGroupItemIDWithModID = app.GetGroupItemIDWithModID
	if not GetGroupItemIDWithModID then
		error("Search Module requires app.GetGroupItemIDWithModID definition!")
	end
	GetItemIDAndModID = app.GetItemIDAndModID
	if not GetItemIDAndModID then
		error("Search Module requires app.GetItemIDAndModID definition!")
	end
	NestObject = app.NestObject
	if not NestObject then
		error("Search Module requires app.NestObject definition!")
	end
	-- TODO: convert to CreateClassInstance once it uses proper key priority
	CreateObject = app.__CreateObject
	if not CreateObject then
		error("Search Module requires app.__CreateObject definition!")
	end
	CreateWrapFilterHeader = app.CreateVisualHeaderWithGroups
	if not CreateWrapFilterHeader then
		error("Search Module requires app.CreateWrapFilterHeader definition!")
	end
end)

-- Defines various short-hand or alternate 'kind' values and their accurate cache-based lookups
local KeyMaps = setmetatable({
	a = "achievementID",
	achievement = "achievementID",
	azessence = "azeriteessenceID",
	battlepet = "speciesID",
	c = "currencyID",
	currency = "currencyID",
	enchant = "spellID",
	fp = "flightpathID",
	follower = "followerID",
	garrbuilding = "garrisonbuildingID",
	garrfollower = "followerID",
	i = "modItemID",
	item = "modItemID",
	itemid = "modItemID",
	mount = "spellID",
	mountid = "spellID",
	n = "creatureID",
	npc = "creatureID",
	npcid = "creatureID",
	o = "objectID",
	object = "objectID",
	r = "spellID",
	recipe = "spellID",
	rfp = "runeforgepowerID",
	s = "sourceID",
	source = "sourceID",
	species = "speciesID",
	spell = "spellID",
	talent = "spellID",
	q = "questID",
	quest = "questID",
}, { __index = function(t,key) return key:gsub("id", "ID") end})

local function SearchByItemLink(link)
	-- Parse the link and get the itemID and bonus ids.
	-- app.PrintDebug("SearchByItemLink",link)
	local linkData = {(":"):split(link)}
	-- app.PrintTable(linkData)
	local itemID = linkData[2]
	if not itemID then return end
	-- ref: https://warcraft.wiki.gg/wiki/ItemLink
	-- indexes are shifted by 1 due to 'item' being the first index
	itemID = tonumber(itemID) or 0;
	local modID = tonumber(linkData[13]) or 0
	local bonusCount = tonumber(linkData[14]) or 0
	local bonusID1 = bonusCount > 0 and linkData[15] or 0
	local itemModifierIndex = 15 + bonusCount
	local itemModifierCount = tonumber(linkData[itemModifierIndex]) or 0
	local artifactID
	if itemModifierCount > 0 then
		for i=itemModifierIndex + 1,itemModifierIndex + (2 * itemModifierCount),2 do
			if linkData[i] == "8" then
				artifactID = tonumber(linkData[i + 1])
				break
			end
		end
	end
	local search
	-- Don't use SourceID for artifact searches since they contain many SourceIDs
	local sourceID = not artifactID and app.GetSourceID(link);
	if sourceID then
		-- Search for the Source ID. (an appearance)
		-- app.PrintDebug("SEARCHING FOR ITEM LINK WITH SOURCE", link, itemID, sourceID);
		search = SearchForObject("sourceID", sourceID, nil, true)
		-- app.PrintDebug("SFL.sourceID",sourceID,#search)
		if #search > 0 then return search, "sourceID", sourceID end
	end
	-- Search for the Item ID. (an item without an appearance)
	-- app.PrintDebug("SFL-exact",itemID, modID, (tonumber(bonusCount) or 0) > 0 and bonusID1)
	local exactItemID
	local modItemID
	-- Artifacts use a different modItemID
	if artifactID then
		exactItemID = app.GetArtifactModItemID(itemID, artifactID, modID == 0)
		-- fallback to non-offhand... still something about the links that makes some 2H artifacts weird
		modItemID = app.GetArtifactModItemID(itemID, artifactID)
		-- app.PrintDebug("artifact!",exactItemID)
	else
		exactItemID = GetGroupItemIDWithModID(nil, itemID, modID, bonusID1);
		modItemID = GetGroupItemIDWithModID(nil, itemID, modID);
	end
	-- app.PrintDebug("SEARCHING FOR ITEM LINK", link, exactItemID, modItemID, itemID);
	if exactItemID ~= itemID then
		search = SearchForObject("modItemID", exactItemID, nil, true);
		-- app.PrintDebug("SFL.modItemID",exactItemID,#search)
		if #search > 0 then return search, "modItemID", exactItemID end
	end
	if modItemID ~= itemID and modItemID ~= exactItemID then
		search = SearchForObject("modItemID", modItemID, nil, true);
		-- app.PrintDebug("SFL.modItemID",modItemID,#search)
		if #search > 0 then return search, "modItemID", modItemID end
	end
	return SearchForObject("itemID", itemID, nil, true), "itemID", itemID
end

local function SearchByKindLink(link)
	-- app.PrintDebug("SearchByKindLink",link)
	local kind, id, id2, id3 = (":"):split(link)
	kind = kind:lower()
	if id then id = tonumber(id) end
	if not id or not kind then
		-- can't search for nothing!
		return;
	end
	--print(link:gsub("|c", "c"):gsub("|h", "h"));
	-- app.PrintDebug("SFL",itemString,kind,">",KeyMaps[kind],id,id2,id3)
	kind = (KeyMaps[kind].."ID"):gsub("IDID", "ID")
	if kind == "modItemID" then
		if not id2 and not id3 then
			id, id2, id3 = GetItemIDAndModID(id)
		end
		id = GetGroupItemIDWithModID(nil, id, id2, id3)
	end
	-- app.PrintDebug("Search",kind,id,#SearchForObject(kind, id, nil, true))
	return SearchForObject(kind, id, nil, true), kind, id
end

local function SearchForLink(link)
	local cleanlink = CleanLink(link)

	-- real item links we should use the search by item link
	if link:match("|Hitem:") then
		return SearchByItemLink(cleanlink)
	end

	-- otherwise use our custom search by kind
	return SearchByKindLink(cleanlink)
end
app.SearchForLink = SearchForLink;

-- Search Results
local IncludeUnavailableRecipes, IgnoreBoEFilter;
-- Set some logic which is used during recursion without needing to set it on every recurse
local function SetRescursiveFilters()
	IncludeUnavailableRecipes = not app.BuildSearchResponse_IgnoreUnavailableRecipes;
	IgnoreBoEFilter = app.Modules.Filter.SettingsFilters.IgnoreBoEFilter;
end
api.SearchNil = "zsxdcfawoidsajd"
local MainRoot
local ClonedHierarchyGroups = {};
local ClonedHierarachyMapping = {};
local SearchGroups = {};
local DropFields = {}
-- A set of Criteria functions which must all be valid for each search result to be included in the response
local __SearchCriteria = {
	-- Include unavailable Recipes or any content which is not a Recipe or meets the BoE filter
	function(o) return IncludeUnavailableRecipes or not o.spellID or IgnoreBoEFilter(o) end,
}
local SearchCriteria = {}
-- A set of Criteria functions which must all be valid for each search result to be included in the response
local __SearchValueCriteria = {
	-- Include if the field of the group matches the desired value
	function(o, field, value) return o[field] == value end,
}
local SearchValueCriteria = {}
-- A set of Criteria functions which must all be valid for each search result to be included in the response
local __ParentInclusionCriteria = {
	-- Exclude heirarchical parents which don't exist, or specify '_nosearch' or are 'sourceIgnored'
	function(parent)
		-- check the parent to see if this parent chain will be excluded
		if not parent then
			-- app.PrintDebug("Don't capture non-parented",group.text)
			return
		end
		if GetRelativeRawWithField(parent, "sourceIgnored") then
			-- app.PrintDebug("Don't capture SourceIgnored",parent.text)
			return
		end
		if GetRelativeRawWithField(parent, "_nosearch") then
			-- app.PrintDebug("Don't capture _nosearch",parent.text)
			return
		end
		return true
	end
}
local ParentInclusionCriteria = {}
local Eval_SearchCriteria,Eval_SearchValueCriteria,Eval_ParentInclusionCriteria
local function __Eval_SearchCriteria(o)
	for i=1,#SearchCriteria do
		if not SearchCriteria[i](o) then return end
	end
	return true
end
local function __Eval_SearchValueCriteria(o, field, value)
	for i=1,#SearchValueCriteria do
		if not SearchValueCriteria[i](o, field, value) then return end
	end
	return true
end
local function __Eval_ParentInclusionCriteria(o)
	for i=1,#ParentInclusionCriteria do
		if not ParentInclusionCriteria[i](o) then return end
	end
	return true
end
local function ResetCriterias(criteria)
	wipe(SearchCriteria)
	wipe(SearchValueCriteria)
	wipe(ParentInclusionCriteria)
	local sc = criteria and criteria.SearchCriteria or __SearchCriteria
	for i=1,#sc do
		SearchCriteria[#SearchCriteria + 1] = sc[i]
	end
	local svc = criteria and criteria.SearchValueCriteria or __SearchValueCriteria
	for i=1,#svc do
		SearchValueCriteria[#SearchValueCriteria + 1] = svc[i]
	end
	local pic = criteria and criteria.ParentInclusionCriteria or __ParentInclusionCriteria
	for i=1,#pic do
		ParentInclusionCriteria[#ParentInclusionCriteria + 1] = pic[i]
	end
	Eval_SearchCriteria = #SearchCriteria > 0 and __Eval_SearchCriteria or app.ReturnTrue
	Eval_SearchValueCriteria = #SearchValueCriteria > 0 and __Eval_SearchValueCriteria or app.ReturnTrue
	Eval_ParentInclusionCriteria = #ParentInclusionCriteria > 0 and __Eval_ParentInclusionCriteria or app.ReturnTrue
end
-- Wraps a given object such that it can act as an unfiltered Header of the base group
local function CloneGroupIntoHeirarchy(group)
	local groupCopy = CreateWrapFilterHeader(group);
	ClonedHierarachyMapping[group] = groupCopy;
	return groupCopy;
end
-- Finds existing clone of the parent group, or clones the group into the proper clone hierarchy
local function MatchOrCloneParentInHierarchy(group)
	if group then
		-- already cloned group, return the clone
		local groupCopy = ClonedHierarachyMapping[group];
		if groupCopy then return groupCopy; end

		-- check the parent to see if this parent chain will be excluded
		local parent = group.parent;
		if not Eval_ParentInclusionCriteria(parent) then
			-- app.PrintDebug("PIH-PCrit",app:SearchLink(parent))
			return
		end

		-- is this a top-level group?
		if parent == MainRoot then
			groupCopy = CloneGroupIntoHeirarchy(group);
			groupCopy.__priorSearchRoot = true
			ClonedHierarchyGroups[#ClonedHierarchyGroups + 1] = groupCopy
			-- app.PrintDebug("Added top cloned parent",groupCopy.text)
			return groupCopy;
		elseif group.__priorSearchRoot then
			groupCopy = CloneGroupIntoHeirarchy(group);
			ClonedHierarchyGroups[#ClonedHierarchyGroups + 1] = groupCopy
			-- app.PrintDebug("Added top cloned parent from __priorSearchRoot",groupCopy.text)
			return groupCopy;
		else
			-- need to clone and attach this group to its cloned parent
			local clonedParent = MatchOrCloneParentInHierarchy(parent);
			if not clonedParent then
				-- app.PrintDebug("PIH-NoParent",app:SearchLink(parent))
				return
			end
			groupCopy = CloneGroupIntoHeirarchy(group);
			NestObject(clonedParent, groupCopy);
			return groupCopy;
		end
	end
end
-- Builds ClonedHierarchyGroups from an array of Sourced groups
local function BuildClonedHierarchy(sources)
	-- app.PrintDebug("BSR:Sourced",sources and #sources)
	if not sources or #sources == 0 then return end
	local parent, thing;
	-- for each source of each Thing with the value
	local source
	for i=1,#sources do
		source = sources[i]
		if Eval_SearchCriteria(source) then
			-- find/clone the expected parent group in hierachy
			parent = MatchOrCloneParentInHierarchy(source.parent);
			if parent then
				-- clone the Thing into the cloned parent
				thing = DropFields.g and CreateObject(source, true) or CreateObject(source);
				-- don't copy in any extra data for the thing which can pull things into groups, or reference other groups
				if DropFields.sym then thing.sym = nil; end
				thing.sourceParent = nil;
				-- need to map the cloned Thing also since it may end up being a parent of another Thing
				ClonedHierarachyMapping[source] = thing;
				NestObject(parent, thing);
			-- else app.PrintDebug("CloneHierarchy-Fail",source.parent,app:SearchLink(source))
			end
		-- else app.PrintDebug("Criteria-Fail:",app:SearchLink(source))
		end
	end
end
-- Recursively collects all groups which have the specified field existing
local function AddSearchGroupsByField(groups, field)
	if not groups then return end
	local group
	for i=1,#groups do
		group = groups[i]
		if group[field] ~= nil then
			SearchGroups[#SearchGroups + 1] = group
		else
			AddSearchGroupsByField(group.g, field);
		end
	end
end
-- Recursively collects all groups which have the specified field=value
local function AddSearchGroupsByFieldValue(groups, field, value)
	if not groups then return end
	local group
	for i=1,#groups do
		group = groups[i]
		if Eval_SearchValueCriteria(group, field, value) then
			SearchGroups[#SearchGroups + 1] = group
		else
			AddSearchGroupsByFieldValue(group.g, field, value);
		end
	end
end
-- Builds ClonedHierarchyGroups from the cached container using groups which match a particular key and value
local function BuildSearchResponseViaCacheContainer(cacheContainer, value)
	-- app.PrintDebug("BSR:Cached",value)
	if cacheContainer then
		if value then
			local sources = cacheContainer[value];
			BuildClonedHierarchy(sources);
		else
			for id,sources in pairs(cacheContainer) do
				-- each Thing's Sources need to be built
				BuildClonedHierarchy(sources);
			end
		end
	end
end
-- Collects a cloned hierarchy of groups which have the field and/or value within the given field. Specify 'clear' if found groups which match
-- should additionally clear their contents when being cloned
function app:BuildSearchResponse(field, value, drop, criteria)
	return app:BuildTargettedSearchResponse(app:GetDataCache(), field, value, drop, criteria)
end
-- Collects a cloned hierarchy of groups within the given target 'groups' which have the field and/or value within the given field. Specify 'clear' if found groups which match
-- should additionally clear their contents when being cloned
function app:BuildTargettedSearchResponse(groups, field, value, drop, criteria)
	if not groups then return end
	MainRoot = app:GetDataCache()
	if not MainRoot then app.PrintDebug("BuildTargettedSearchResponse.FAIL - No MainRoot available") return end
	local UseCached = groups == MainRoot
	if groups.g then groups = groups.g end
	if #groups == 0 then app.PrintDebug("BuildTargettedSearchResponse.FAIL - No groups available") return end
	-- make sure each set of search results goes into a new container
	-- otherwise two searches within the same window will replace the first set
	ClonedHierarchyGroups = {}
	wipe(ClonedHierarachyMapping);
	wipe(SearchGroups);
	wipe(DropFields)
	-- by default always drop 'sym' from results
	DropFields.sym = true
	if drop then
		for k,v in pairs(drop) do
			DropFields[k] = v
		end
	end

	SetRescursiveFilters();
	-- add custom Criterias from external param
	ResetCriterias(criteria)
	-- app.PrintDebug("BSR:",field,value)
	-- app.PrintTable(DropFields)
	-- app.PrintTable(criteria)
	-- app.PrintTable(SearchCriteria)
	-- app.PrintTable(SearchValueCriteria)
	-- can only do cache searches if there isn't custom criteria provided if we are actually searching MainRoot
	local cacheContainer = not criteria and UseCached and app.GetRawFieldContainer(field)
	if cacheContainer then
		BuildSearchResponseViaCacheContainer(cacheContainer, value);
	elseif value ~= nil then
		-- allow searching specifically for a nil field
		if value == api.SearchNil then
			value = nil;
		end
		-- app.PrintDebug("BSR:FieldValue",#groups,field,value)
		-- TODO: potentially do a first pass ignore of top-level groups to exclude entire categories
		AddSearchGroupsByFieldValue(groups, field, value);
		BuildClonedHierarchy(SearchGroups);
	else
		-- app.PrintDebug("BSR:Field",#groups,field)
		-- TODO: potentially do a first pass ignore of top-level groups to exclude entire categories
		AddSearchGroupsByField(groups, field);
		BuildClonedHierarchy(SearchGroups);
	end
	return ClonedHierarchyGroups;
end