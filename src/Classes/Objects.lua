do
-- CRIEVE NOTE: This file is currently identical in both Retail and Classic.
-- DO NOT TOUCH IT.
local app = select(2, ...);

-- App locals
local ArrayAppend = app.ArrayAppend;
local IsQuestFlaggedCompletedForObject = app.IsQuestFlaggedCompletedForObject;

-- Global locals
local C_QuestLog_IsOnQuest, ipairs, setmetatable, rawget
	= C_QuestLog.IsOnQuest, ipairs, setmetatable, rawget;

local GenerateGroupsForGenericSubGroup = function(t)
	-- only load this if we're in a tooltip-level or new window build
	if app.GetSkipLevel() < 1 then return end
	if rawget(t,"parent") then return end

	-- local parent = rawget(t,"parent")
	-- local window = app.GetRelativeValue(t, "window")
	-- local sp = t.sourceParent
	-- app.PrintDebug("spg?",app:SearchLink(t),
	-- 	"p",parent and app:SearchLink(parent),
	-- 	"sp",sp and app:SearchLink(sp),
	-- 	"w",window and window.Suffix)

	local spg = t._g
	if spg then return spg end

	-- direct object which is a child of a 'generic object container' can instead show the generic parent object content
	-- when the direct object is the root of a window/tooltip
	local sp = t.sourceParent
	if not sp then app.PrintDebug("spg.sourceParent MISSING??",app:SearchLink(t)) return end
	spg = {}
	-- make a copy of the non-object groups for this object to display
	for _,o in ipairs(sp.g) do
		if not o.objectID then
			spg[#spg + 1] = o
		end
	end
	-- add symlink from generic container if any
	local sym = app.ResolveSymbolicLink(sp)
	if sym then
		app.ArrayAppend(spg, sym)
	end
	-- for cached reference
	t._g = spg
	-- app.PrintDebug("spg",#spg)
	return spg
end

-- Object Lib (as in "World Object")
app.CreateObject = app.CreateClass("Object", "objectID", {
	text = function(t)
		return t.isRaid and ("|c" .. app.Colors.Raid .. t.name .. "|r") or t.name;
	end,
	name = function(t)
		return app.ObjectNames[t.objectID] or t.basename;
	end,
	basename = function(t)
		return app.GetNameFromProviders(t) or ("Object ID #" .. t.objectID);
	end,
	icon = function(t)
		local customIcon = app.ObjectIcons[t.objectID] or app.GetIconFromProviders(t)
		if customIcon then return customIcon end

		local g = t.g
		if g then
			for _,o in ipairs(g) do
				customIcon = (o.itemID or o.criteriaID) and o.icon or nil
				if customIcon then return customIcon end
			end
		end
		-- default object icon
		return app.asset("Interface_Tchest")
	end,
	model = function(t)
		return app.ObjectModels[t.objectID];
	end,
	indicatorIcon = function(t)
		if app.ActiveVignettes.object[t.objectID] then
			return app.asset("Interface_Ping");
		end
	end,
},
"AsGenericObjectContainer", {
	__ignoreCaching = app.ReturnTrue,
	trackable = function(t)
		for _,group in ipairs(t.g) do
			if group.objectID and group.trackable then return true; end
		end
	end,
	repeatable = function(t)
		for _,group in ipairs(t.g) do
			if group.objectID and group.repeatable then return true; end
		end
	end,
	saved = function(t)
		local anySaved;
		for _,group in ipairs(t.g) do
			if group.objectID then
				if group.saved then
					anySaved = true;
				else
					return;
				end
			end
		end
		-- every contained sub-object is already saved, so the repeated object should also be marked as saved
		return anySaved;
	end,
	coords = function(t)
		local unsavedCoords = {};
		for _,group in ipairs(t.g) do
			-- show collected coords of all sub-objects which are not saved
			if group.objectID and group.coords and not group.saved then
				ArrayAppend(unsavedCoords, group.coords);
			end
		end
		return unsavedCoords;
	end,
	indicatorIcon = function(t)
		local anyActive
		local activeObjectVignettes = app.ActiveVignettes.object
		for _,group in ipairs(t.g) do
			if group.objectID and activeObjectVignettes[group.objectID] then
				anyActive = true;
				break
			end
		end
		if anyActive then
			return app.asset("Interface_Ping");
		end
	end,
	-- This is never used typically since this class is only generated for objects which have a raw .g
	-- However there are situations where cloning an existing AsGenericObjectContainer object can expect removed .g (rootOnly)
	-- Which then causes Lua exceptions due to the above logic not checking for existence
	-- Perhaps an alternate fix in the future but for now this would prevent nuance situations and not affect existing handling
	g = function(t)
		return app.EmptyTable
	end
},
function(t) return t.type == "AsGenericObjectContainer" end,
"AsSubGenericObjectWithQuest", {
	CollectibleType = app.IsClassic and function() return "Quests" end
	-- Retail: objects tracked as HQT
	or function() return "QuestsHidden" end,
	collectible = app.IsClassic and function(t)
		return app.Settings.Collectibles.Quests and (not t.repeatable and not t.isBreadcrumb or C_QuestLog_IsOnQuest(t.questID));
	end
	-- Retail: typical object collectibility matches Lockable Quest collectibility
	or app.GlobalVariants.AndLockCriteria.collectible,
	collected = IsQuestFlaggedCompletedForObject,
	trackable = function(t)
		-- raw repeatable quests can't really be tracked since they immediately unflag
		return not rawget(t, "repeatable") and t.repeatable
	end,
	saved = function(t)
		return IsQuestFlaggedCompletedForObject(t) == 1;
	end,
	variants = {
		app.GlobalVariants.AndLockCriteria,
	},
	g = GenerateGroupsForGenericSubGroup,
},
function(t) return t.questID and t.type == "AsSubGenericObject" end,
"AsSubGenericObject", {
	g = GenerateGroupsForGenericSubGroup,
},
function(t) return t.type == "AsSubGenericObject" end,
"WithQuest", {
	CollectibleType = app.IsClassic and function() return "Quests" end
	-- Retail: objects tracked as HQT
	or function() return "QuestsHidden" end,
	collectible = app.IsClassic and function(t)
		return app.Settings.Collectibles.Quests and (not t.repeatable and not t.isBreadcrumb or C_QuestLog_IsOnQuest(t.questID));
	end
	-- Retail: typical object collectibility matches Lockable Quest collectibility
	or app.GlobalVariants.AndLockCriteria.collectible,
	collected = IsQuestFlaggedCompletedForObject,
	trackable = function(t)
		-- raw repeatable quests can't really be tracked since they immediately unflag
		return not rawget(t, "repeatable") and t.repeatable
	end,
	saved = function(t)
		return IsQuestFlaggedCompletedForObject(t) == 1;
	end,
	variants = {
		app.GlobalVariants.AndLockCriteria,
	},
}, function(t) return t.questID end);
end