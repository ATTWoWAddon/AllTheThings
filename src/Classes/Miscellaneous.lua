-- Miscellaneous Classes
-- Defines various Class types which provide ATT Window Row functionality without necessarily representing a collectible
local _, app = ...;

-- Global locals
local pairs = pairs;

-- App locals
local AssignChildren = app.AssignChildren;
local NestObjects, CreateObject, NestObject, SearchForFieldContainer, SearchForObject

local DynamicDataCache = app.CreateDataCache("dynamic", true);
local Runner = app.CreateRunner("dynamic");
Runner.SetPerFrameDefault(1)

-- Miscellaneous API Implementation
-- Access via AllTheThings.Modules.Miscellaneous
local api = {};
app.Modules.Miscellaneous = api;
app.AddEventHandler("OnLoad", function()
	NestObject = app.NestObject
	NestObjects = app.NestObjects
	CreateObject = app.__CreateObject
	SearchForFieldContainer = app.SearchForFieldContainer
	SearchForObject = app.SearchForObject;
end)

local RecursiveParentMapping = {};
-- Recurses upwards in the group hierarchy until finding the group with the specified value in the specified field. The
-- set of groups crossed while searching will all have their mapping value set to the found group.
-- While recursing, the mapping will be checked first if the current group has already been mapped, and return that mapping instead
local function RecursiveParentMapper(group, field, value)
	if not group then return; end
	-- is this group already mapped?
	local mapped = RecursiveParentMapping[group];
	if mapped then return mapped; end
	-- is this group the one for the mapping, or recurse to the parent
	mapped = (group[field] == value and group) or RecursiveParentMapper(group.parent, field, value);
	if mapped then
		RecursiveParentMapping[group] = mapped;
		return mapped;
	end
	-- this happens when we find unsorted cached content
end


-- Common function set as the OnClick for a group which will build itself a 'nested' version of the
-- content which matches the specified .dynamic 'field' and .dynamic_value of the group
local DynamicCategory_Nested = function(self)
	-- app.PrintDebug("DC:N",self.dynamic,self.dynamic_value,self.dynamic_withsubgroups,self.dynamic_searchcriteria)
	-- pull out all Things which should go into this category based on field & value
	local groups = app:BuildSearchResponse(self.dynamic, self.dynamic_value, {g=not self.dynamic_withsubgroups}, self.dynamic_searchcriteria);
	NestObjects(self, groups);
	-- reset indents and such
	AssignChildren(self);
	-- delay-sort the top level groups
	self.SortType = "Global";
	-- don't fill into dynamic groups if they are popped out
	self.skipFull = true
	-- make sure these things are cached so they can be updated when collected, but run the caching after other dynamic groups are filled
	Runner.Run(DynamicDataCache.CacheFields, self);
	-- run a direct update on itself after being populated
	app.DirectGroupUpdate(self);
end

local function CreateTopHeaderCache()
	local topheaders
	topheaders = setmetatable({}, { __index = function(t,group)
		local text = group and group.text
		if not text then
			-- this happens when we find unsorted cached content
			return
		end

		local top = topheaders[text]
		if not top then
			top = app.CreateVisualHeaderWithGroups(group)
			topheaders[text] = top
			topheaders[group] = top
		end

		return top
	end})
	return topheaders
end
-- Common function set as the OnClick for a group which will build itself a 'simple' version of the
-- content which matches the specified .dynamic 'field' of the group
-- NOTE: Content must be cached using the dynamic 'field'
local DynamicCategory_Simple = function(self)
	local dynamicCache = app.GetRawFieldContainer(self.dynamic);
	if dynamicCache then
		local rootATT = app:GetWindow("Prime").data;
		local top, thing;
		local topHeaders, dynamicValue, clearSubgroups = CreateTopHeaderCache(), self.dynamic_value, not self.dynamic_withsubgroups;
		if dynamicValue then
			local dynamicValueCache, thingKeys = dynamicCache[dynamicValue], app.ThingKeys;
			if dynamicValueCache then
				-- app.PrintDebug("DC:S",self.dynamic,self.dynamic_value,self.dynamic_withsubgroups)
				for _,source in pairs(dynamicValueCache) do
					-- only pull in actual 'Things' to the simple dynamic group
					if thingKeys[source.key] then
						-- find the top-level parent of the Thing
						top = topHeaders[RecursiveParentMapper(source, "parent", rootATT)]
						if top then
							-- put a copy of the Thing into the matching top category (no uniques since only 1 per cached Thing)
							-- remove it from being considered a cost within the dynamic category
							thing = CreateObject(source, clearSubgroups);
							thing.collectibleAsCost = false;
							NestObject(top, thing);
						end
					end
				end
				-- app.PrintDebugPrior("Complete")
				-- dynamic groups for Things within a specific Value of a Type are expected to be collected under a Header of the Type itself
			else
				-- instead of trying to do Simple if the cache doesn't exist, just put a Nested Dynamic group
				return DynamicCategory_Nested(self);
			end
		else
			for id,sources in pairs(dynamicCache) do
				for _,source in pairs(sources) do
					-- find the top-level parent of the Thing
					top = topHeaders[RecursiveParentMapper(source, "parent", rootATT)]
					if top then
						-- put a copy of the Thing into the matching top category (no uniques since only 1 per cached Thing)
						-- remove it from being considered a cost within the dynamic category
						thing = CreateObject(source, clearSubgroups);
						thing.collectibleAsCost = false;
						NestObject(top, thing);
					end
				end
			end
		end
		-- sort all of the Things by name in each top header and put it under the dynamic group
		for _,header in pairs(topHeaders) do
			-- delay-sort the groups in each categorized header
			header.SortType = "Global";
			NestObject(self, header);
		end
		-- reset indents and such
		AssignChildren(self);
		-- delay-sort the top level groups
		self.SortType = "Global";
		-- don't fill into dynamic groups if they are popped out
		self.skipFull = true
		-- make sure these things are cached so they can be updated when collected, but run the caching after other dynamic groups are filled
		Runner.Run(DynamicDataCache.CacheFields, self);
		-- run a direct update on itself after being populated
		app.DirectGroupUpdate(self);
	else
		-- instead of trying to do Simple if the cache doesn't exist, just put a Nested Dynamic group
		return DynamicCategory_Nested(self);
	end
end

local Filler
local function RecalculateFiller()
	local dynamicSetting = app.Settings:Get("Dynamic:Style") or 1;
	Filler = (dynamicSetting == 2 and DynamicCategory_Nested) or
			(dynamicSetting == 1 and DynamicCategory_Simple) or nil;
	-- app.PrintDebug("RecalculateFiller",dynamicSetting)
	return Filler
end

-- Adds a Dynamic Category Filler function to the Function Runner which will fill the provided group using the existing dynamic/dynamic_value fields
local function FillDynamicCategory(group, field, value)
	group.OnClick = false
	-- mark the top group as dynamic for the field which it used (so popouts under the dynamic header are considered unique from other dynamic popouts)
	group.dynamic = group.dynamicID or field;
	group.dynamic_value = group.dynamic_value or value;
	-- app.PrintDebug("FDC:",group.dynamic,group.dynamic_value)
	Runner.Run(Filler, group);
	return group
end

-- Nests Dynamic categories created based on the field used to cache groups.
-- Can indicate to keep sub-group Things if desired.
local function NestDynamicValueCategories(group)
	group.OnClick = false
	local cat;
	local field = group.dynamicValueID
	local dynamicvalue_field = group.dynamic_valueField
	local cache = SearchForFieldContainer(field);
	-- app.PrintDebug("FDVC:",field,dynamicvalue_field)
	for id,_ in pairs(cache) do
		-- create a cloned version of the cached object, or create a new object from the Creator
		cat = CreateObject(SearchForObject(field, id, "key") or { [field] = id }, true);
		cat.parent = group;
		cat.dynamic_withsubgroups = group.dynamic_withsubgroups;
		-- don't copy maps into dynamic headers, since when the dynamic content is cached it can be weird
		cat.maps = nil;
		cat.sourceParent = nil;
		cat.symlink = nil;
		-- if the Dynamic Value category itself is not collectible, then make sure it isn't filtered
		if not cat.collectible then
			cat = app.CreateVisualHeaderWithGroups(cat)
		end
		NestObject(group, FillDynamicCategory(cat, dynamicvalue_field or field, id));
	end
	-- Make sure the Dynamic Category group is sorted when opened since order isn't guaranteed by the table
	group.SortType = "Global";
	return group
end

local function dynamic_title(t)
	if t.__filled then return end
	return app.L.CLICK_TO_CREATE_FORMAT:format((t.name or UNKNOWN).." "..app.L.SETTINGS_MENU.DYNAMIC_CATEGORY_LABEL)
end
local function dynamic_back()
	return 0.3
end
local function dynamic_onclick(row, button)
	if not RecalculateFiller() then return true end
	-- fill the dynamic category group
	FillDynamicCategory(row.ref)
	row.ref.expanded = true
	-- don't handle further onclick logic (i.e. expanding)
	row.ref.__filled = true
	return true
end
local function dynamicvalues_onclick(row, button)
	if not RecalculateFiller() then return true end
	-- fill the dynamic category group
	NestDynamicValueCategories(row.ref)
	row.ref.expanded = true
	-- allow further onclick logic (i.e. expanding)
	row.ref.__filled = true
	return true
end

-- Allows creating an ATT object which can be toggled true/false, and when clicked captures the toggleID state into the parent and passes it into an optional handler
-- ex. CreateToggle(toggleID, t)
-- Expected t-data:
-- OnClickHandler = function(toggleState)
app.CreateToggle = app.CreateClass("Toggle", "toggleID", {
	["trackable"] = app.ReturnTrue,
	["OnClick"] = function(t)
		local onclick = t._OnClick
		if not onclick then
			onclick = function(row, button)
				local saved = not t.saved
				t.saved = saved
				local parent = t.parent
				if parent then
					parent[t.toggleID] = saved
				end
				local handler = t.OnClickHandler
				return handler and handler(saved) or nil
			end
			t._OnClick = onclick
		end
		return onclick
	end,
});

-- Allows creating a group which is keyed based on only its 'text' field
app.CreateRawText = app.CreateClass("RawText", "text", {
	name = function(t)
		return t.text
	end,
	isHeader = app.ReturnTrue,
})

-- Allows creating an ATT object which can be expanded to trigger an async population of the dynamic data it should contain, based on provided data in 't'
-- Expected t-data:
-- dynamic = The field which should be used for finding the data in this group
-- dynamic_value = Whether a specific value of the 'dynamic' field should be additionally used to select the data
-- dynamic_withsubgroups = Whether each found group should include sub-group content when copied into the dynamic category
app.CreateDynamicHeader = app.CreateClass("Dynamic", "dynamicID", {
	["OnClick"] = function(t)
		return dynamic_onclick
	end,
	-- Until clicked, show a description that click/expand will cause populating
	["title"] = dynamic_title,
	["visible"] = app.ReturnTrue,
	-- Tint the row backgrounds for separation from other data
	["back"] = dynamic_back,
	-- Always ignore dynamic categories for progress propagation
	["sourceIgnored"] = app.ReturnTrue,
});

-- Allows creating an ATT object which can be expanded to trigger an async population of the dynamic data it should contain, based on provided data in 't'
-- Expected t-data:
-- dynamic = The field which should be used for finding the data values for this group
-- dynamic_withsubgroups = Whether each found group should include sub-group content when copied into the dynamic category
app.CreateDynamicHeaderByValue = app.CreateClass("DynamicValues", "dynamicValueID", {
	["OnClick"] = function(t)
		return dynamicvalues_onclick
	end,
	-- Until clicked, show a description that click/expand will cause populating
	["title"] = dynamic_title,
	["visible"] = app.ReturnTrue,
	-- Tint the row backgrounds for separation from other data
	["back"] = dynamic_back,
	-- Always ignore dynamic categories for progress propagation
	["sourceIgnored"] = app.ReturnTrue,
});

local BaseClass__class = app.BaseClass.__class
local VisualHeaderFields = {
	-- back = function(t)
	-- 	return 0.3;	-- visibility of which rows are cloned
	-- end,
	__type = function() return "VisualHeader" end,
	hash = BaseClass__class.hash,
	text = BaseClass__class.text,
}
local CreateVisualHeader, CreateVisualHeader__class
CreateVisualHeader, CreateVisualHeader__class = app.CreateClass("VisualHeader", "noKey-VisualHeader", VisualHeaderFields);
app.CreateVisualHeader = CreateVisualHeader
local Wrap = app.WrapObject;
app.CreateVisualHeaderWithGroups = function(base, groups)
	return Wrap(CreateVisualHeader(nil, {g=groups}), base)
end

-- modify some things of this class... the returned Class is actually the metatable for a Class object, so __class contains the actual field functions
CreateVisualHeader__class = CreateVisualHeader__class.__class
-- We don't want the BaseClass fields to be part of the VisualHeader __class (due to them being copied from DefaultFields)
-- since that prevents those fields from falling through to the BaseObject as expected
for k, v in pairs(BaseClass__class) do
	if not VisualHeaderFields[k] then
		CreateVisualHeader__class[k] = nil
	end
end
-- manually remove the 'key' field since it isn't in BaseClass
CreateVisualHeader__class.key = nil
local Empty = app.EmptyFunction
-- Fields which should not pass-through a value in a visual header
for _,field in ipairs({
	"collectible",
	"sourceParent",
	"customCollect",
	"minReputation",
	"maxReputation",
	"OnUpdate",
	"OnTooltip",
	"_SettingsRefresh",
	"_up",
	"up",
	"races",
	"r",
	"c",
	"nmc",
	"nmr",
	"expanded",
	"indent",
	"g",
	"progress",
	"total",
	"visible",
	"modItemID",
	"rawlink",
	"sourceIgnored",
	"costTotal",
	"upgradeTotal",
	"iconPath",
	"tooltipInfo",
	"working",
	"TLUG",
	"e",
	"u",
	"pb",
	"pvp",
	"sr",
	"races",
	"isDaily",
	"isWeekly",
	"isMonthly",
	"isYearly",
	"repeatable",
	"requireSkill",
	"sym",
}) do
	CreateVisualHeader__class[field] = Empty
end

local CreateNonCollectible, CreateNonCollectible__class = app.CreateClass("NonCollectible", "noKey-nonCollectible", {
	-- back = function(t)
	-- 	return 0.3;	-- visibility of which rows are cloned
	-- end,
	collectible = app.EmptyFunction,
});
-- manually remove the 'key' field since it isn't in BaseClass
CreateNonCollectible__class.__class.key = nil
app.CreateNonCollectibleWithGroups = function(base, groups)
	if groups and #groups > 0 then
		return Wrap(CreateNonCollectible(nil, {g=groups}), base)
	else
		return Wrap(CreateNonCollectible(), base)
	end
end