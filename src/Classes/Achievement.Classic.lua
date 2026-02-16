local _, app = ...
local L = app.L

-- Globals
local select, tostring, ipairs, pairs, tinsert, tonumber
	= select, tostring, ipairs, pairs, tinsert, tonumber;

-- App & Module locals
local SearchForField = app.SearchForField;
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;

-- WoW API Cache
local GetAchievementInfo = GetAchievementInfo;

-- Cache Achievement Data if it exists.
-- CRIEVE NOTE: This file is a work in progress. 
-- Gonna split up the "WithData" variants only if data is present in the addon and use the base logic if not
local AchievementData = rawget(L, "ACHIEVEMENT_DATA") or {};
local AchievementCriteriaData = rawget(L, "ACHIEVEMENT_CRITERIA_DATA") or {};


-- Achievement Criteria class. There are some criteria that show relative to other things
local criteriaFields = {
	RefreshCollectionOnly = true,
	["achievementID"] = function(t)
		return t.achID or t.criteriaParent.achievementID;
	end,
	["achievementData"] = function(t)
		local achievementID = t.achievementID;
		if achievementID then return AchievementData[achievementID] or app.EmptyTable; end
		return app.EmptyTable;
	end,
	["criteriaParent"] = function(t)
		return t.sourceParent or t.parent or app.EmptyTable;
	end,
	["collectible"] = app.ReturnFalse,
	["collected"] = app.ReturnFalse,
	["saved"] = app.ReturnFalse,
	["text"] = function(t)
		return L.CRITERIA_FORMAT:format(t.name or RETRIEVING_DATA);
	end,
	["defaultIcon"] = function(t)
		return app.GetIconFromProviders(t) or t.achievementData.icon or 136227;
	end,
	["defaultName"] = function(t)
		local name = app.GetNameFromProviders(t) or (t.parent and t.parent.name);
		if not IsRetrieving(name) then return name; end
		local achievementID = t.achievementID;
		if achievementID then
			return "@CRIEVE: INVALID ACHIEVEMENT CRITERIA achievementID:" .. achievementID .. ":" .. t.criteriaID;
		else
			return "@CRIEVE: INVALID ACHIEVEMENT CRITERIA " .. t.criteriaID;
		end
	end,
	["name"] = function(t)
		return t.defaultName;
	end,
	["icon"] = function(t)
		return t.defaultIcon;
	end,
	["coords"] = function(t)
		return t.criteriaParent.coords;
	end,
	["lvl"] = function(t)
		return t.achievementData.lvl or t.criteriaParent.lvl;
	end,
	["c"] = function(t)
		return t.achievementData.c or t.criteriaParent.c;
	end,
	["r"] = function(t)
		return t.achievementData.r or t.criteriaParent.r;
	end,
};
local validAchievementKeys = {
	achievementID = true,
	guildAchievementID = true
};
local GetAchievementCriteriaInfoByID = GetAchievementCriteriaInfoByID;
if GetAchievementCriteriaInfoByID then
	criteriaFields.collectible = function(t)
		return app.Settings.Collectibles.Achievements;
	end
	criteriaFields.collected = function(t)
		-- Check to see if the criteria was completed.
		local achievementID = t.achievementID;
		if achievementID then
			if app.CurrentCharacter.Achievements[achievementID] then return 1; end
			if app.Settings.AccountWide.Achievements and ATTAccountWideData.Achievements[achievementID] then return 2; end
			
			local criteriaID = t.criteriaID;
			if criteriaID then
				local collected = false;
				local status, err = pcall(function()
					collected = select(3, GetAchievementCriteriaInfoByID(achievementID, criteriaID, true));
				end);
				if not status then
					print("ERROR", achievementID, criteriaID, err);
				end
				return collected;
			end
		end
	end
	criteriaFields.saved = function(t)
		-- Check to see if the criteria was completed.
		local achievementID = t.achievementID;
		if achievementID then
			if app.CurrentCharacter.Achievements[achievementID] then return true; end
			local criteriaID = t.criteriaID;
			if criteriaID then
				return select(3, GetAchievementCriteriaInfoByID(achievementID, criteriaID, true));
			end
		end
	end
	criteriaFields.icon = function(t)
		local achievementID = t.achievementID;
		return achievementID and select(10, GetAchievementInfo(achievementID)) or t.defaultIcon;
	end
	criteriaFields.name = function(t)
		local achievementID = t.achievementID;
		if achievementID then
			local criteriaID = t.criteriaID;
			if criteriaID then
				local name = GetAchievementCriteriaInfoByID(achievementID, criteriaID, true);
				if not IsRetrieving(name) then
					t.name = name;
					return name;
				end
			end
		end
		return t.defaultName;
	end
	local function onTooltipForAchievementCriteria(t, tooltipInfo)
		local achievementID = t.achievementID;
		if achievementID then
			tinsert(tooltipInfo, {
				left = L.CRITERIA_FOR,
				right = "|cffffff00[" .. (select(2, GetAchievementInfo(achievementID)) or RETRIEVING_DATA) .. "]|r",
			});
			if IsShiftKeyDown() then
				local criteriaID = t.criteriaID;
				if criteriaID then
					tinsert(tooltipInfo, { left = " " });
					local criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, criteriaUID = GetAchievementCriteriaInfoByID(achievementID, criteriaID, true)
					if criteriaString then
						tinsert(tooltipInfo, {
							left = " [" .. criteriaUID .. "]: " .. tostring(criteriaString),
							right = "(" .. tostring(assetID) .. " @ " .. tostring(criteriaType) .. ") " .. tostring(quantityString) .. " " .. app.GetCompletionIcon(completed),
							r = 1, g = 1, b = 1
						});
					end
				end
			end
		end
	end
	criteriaFields.OnTooltip = function()
		return onTooltipForAchievementCriteria;
	end
	
	local achievementCacheByID = setmetatable({}, {
		__index = function(t, id)
			local searchResults = SearchForField("achievementID", id);
			if searchResults then
				for i,achievement in ipairs(searchResults) do
					if validAchievementKeys[achievement.key] then
						t[id] = achievement;
						return achievement;
					end
				end
			end
			print("FAILED TO CACHE ACHIEVEMENT", id);
			local achievement = app.EmptyTable;
			t[id] = achievement;
			return achievement;
		end,
	});
	local ogCriteriaFields = {
		lvl = criteriaFields.lvl,
		c = criteriaFields.c,
		r = criteriaFields.r,
	}
	for key,_ in pairs(ogCriteriaFields) do
		criteriaFields[key] = function(t)
			return achievementCacheByID[t.achievementID][key] or ogCriteriaFields[key](t);
		end
	end
end
local function OnTooltipForAchievementCriteriaData(t, tooltipInfo)
	local achievementID = t.achievementID;
	if achievementID then
		tinsert(tooltipInfo, {
			left = L.CRITERIA_FOR,
			right = t.achievementData.text or achievementID,
		});
	end
	if t.ShouldShowRelatedThingsInTooltip then
		local relatedThings = {};
		t.GetRelatedThings(t.data, relatedThings);
		if #relatedThings > 0 then
			tinsert(tooltipInfo, { left = " " });
			for j,thing in ipairs(relatedThings) do
				tinsert(tooltipInfo, {
					left = "  |T" .. thing.icon .. ":0|t " .. thing.text,
					right = app.GetProgressTextForTooltip(thing)
				});
			end
		end
	end
	if not t.collectible and app.GameBuildVersion < 30000 then
		tinsert(tooltipInfo, {
			left = "\n \nCRIEVE NOTE: This cannot be collected prior to Wrath Classic as it lacks a permanent collectible state.",
			r = 1, g = 0.6, b = 0.6,
			wrap = true
		});
		local d = t.data.BrokenTypeDescription;
		if d then
			tinsert(tooltipInfo, {
				left = d,
				r = 1, g = 0.4, b = 0.4,
				wrap = true
			});
		end
	end
	if IsShiftKeyDown() then
		local criteriaInfo = {};
		t.data.OnTooltip(t.data, criteriaInfo);
		if #criteriaInfo > 0 then
			tinsert(tooltipInfo, { left = " " });
			for i,info in ipairs(criteriaInfo) do
				tinsert(tooltipInfo, info);
			end
		end
	end
end
app.CreateAchievementCriteria = app.CreateClass("AchievementCriteria", "criteriaID", criteriaFields,
"WithData", {	-- When there is data related to the criteria available in the database module.
	["collectible"] = function(t)
		return app.Settings.Collectibles.Achievements and t.data.collectible;
	end,
	["trackable"] = function(t)
		return t.data.collectible;
	end,
	["name"] = function(t)
		local name = t.data.text;
		if not IsRetrieving(name) then return name; end
		return t.defaultName;
	end,
	["icon"] = function(t)
		return t.data.icon or t.defaultIcon;
	end,
	["rank"] = function(t) return t.data.rank; end,
	["collected"] = function(t)
		if t.data.collectible then
			if app.Settings.AccountWide.Achievements then
				-- Check to see if the criteria was completed.
				local achievementID = t.achievementID;
				if achievementID and ATTAccountWideData.Achievements[achievementID] then
					return 2;
				end
			end
			return t.data.collected and 1;
		end
	end,
	["saved"] = function(t)
		if t.data.collectible then
			return t.data.collected;
		end
	end,
	["GetRelatedThings"] = function(t)
		return t.data.GetRelatedThings;
	end,
	["ShouldShowRelatedThingsInTooltip"] = function(t)
		return t.data.ShouldShowRelatedThingsInTooltip;
	end,
	["OnTooltip"] = function(t)
		return OnTooltipForAchievementCriteriaData;
	end,
}, function(t)
	local data = AchievementCriteriaData[t.criteriaID];
	if data then
		t.data = data;
		return data;
	end
end);


-- Achievement Class Fields
local fields = {
	RefreshCollectionOnly = true,
	["collectible"] = function(t)
		return app.Settings.Collectibles.Achievements;
	end,
	["collected"] = function(t)
		if app.CurrentCharacter.Achievements[t.achievementID] then return 1; end
		if app.Settings.AccountWide.Achievements and ATTAccountWideData.Achievements[t.achievementID] then return 2; end
	end,
	["defaultName"] = function(t)
		return app.GetNameFromProviders(t) or ("@CRIEVE: INVALID ACHIEVEMENT " .. t.achievementID);
	end,
	["defaultIcon"] = function(t)
		return app.GetIconFromProviders(t) or t.parent.icon or 311226;
	end,
	["text"] = function(t)
		return "|cffffff00[" .. t.name .. "]|r";
	end,
	["name"] = function(t)
		return t.defaultName;
	end,
	["icon"] = function(t)
		return t.defaultIcon;
	end,
	["parentCategoryID"] = function(t)
		return -1;
	end,
	["GetRelatedThings"] = function(t)
		return app.EmptyFunction;
	end,
};

-- TEMPORARY
local function SetAchievementCollected(t, achievementID, collected)
	return app.SetCollected(t, "Achievements", achievementID, collected);
end
fields.SetAchievementCollected = function(t)
	return SetAchievementCollected;
end

-- Check if the Achievement API is available.
if GetCategoryInfo and (GetCategoryInfo(92) ~= "" and GetCategoryInfo(92) ~= nil) then
	-- Achievements are in. We can use the API.
	local GetAchievementLink = _G["GetAchievementLink"];
	local GetAchievementCategory = _G["GetAchievementCategory"];
	local oldNameFunc, oldIconFunc = fields.defaultName, fields.defaultIcon;
	fields.defaultName = function(t)
		local name = select(2, GetAchievementInfo(t.achievementID));
		if not IsRetrieving(name) then return name; end
		return oldNameFunc(t);
	end
	fields.defaultIcon = function(t)
		local icon = select(10, GetAchievementInfo(t.achievementID));
		if icon then return icon; end
		return oldIconFunc(t);
	end
	fields.link = function(t)
		return GetAchievementLink(t.achievementID);
	end
	fields.parentCategoryID = function(t)
		return GetAchievementCategory(t.achievementID) or -1;
	end
	fields.isStatistic = function(t)
		return select(15, GetAchievementInfo(t.achievementID));
	end
	local GetAchievementNumCriteria = _G["GetAchievementNumCriteria"];
	local GetAchievementCriteriaInfo = _G["GetAchievementCriteriaInfo"];
	local InvalidStatistics = setmetatable({
		["0"] = 1,
		["1"] = 1,
		["2"] = 1,
		["3"] = 1,
		["4"] = 1,
		["5"] = 1,
		["6"] = 1,
		["7"] = 1,
		["8"] = 1,
		["9"] = 1,
		[""] = 1,
	}, { __index=function(t,key)
		if not key or key:match("%W") or not key:match(" %/ ") then return 1 end
	end})
	fields.statistic = function(t)
		local achievementID = t.achievementID;
		if achievementID then
			if GetAchievementNumCriteria(achievementID) == 1 then
				local quantity, reqQuantity = select(4, GetAchievementCriteriaInfo(achievementID, 1));
				if quantity and reqQuantity and reqQuantity > 1 then
					return tostring(quantity) .. " / " .. tostring(reqQuantity);
				end
			end
			---@diagnostic disable-next-line: missing-parameter
			local stat = GetStatistic(achievementID);
			if stat and not InvalidStatistics[stat] then return stat; end
		end
	end
	local onTooltipForAchievement = function(t, tooltipInfo)
		local achievementID = t.achievementID;
		if achievementID and IsShiftKeyDown() then
			local criteriaDatas,criteriaDatasByUID = {}, {};
			for criteriaID=1,99999,1 do
				local criteriaString, criteriaType, completed, _, _, _, _, assetID, quantityString, criteriaUID = GetAchievementCriteriaInfoByID(achievementID, criteriaID);
				if criteriaString and criteriaUID then
					criteriaDatasByUID[criteriaUID] = true;
					tinsert(criteriaDatas, {
						" [" .. criteriaUID .. "]: " .. tostring(criteriaString),
						"(" .. tostring(assetID) .. " @ " .. tostring(criteriaType) .. ") " .. tostring(quantityString) .. " " .. app.GetCompletionIcon(completed)
					});
				end
			end
			local totalCriteria = GetAchievementNumCriteria(achievementID) or 0;
			if totalCriteria > 0 then
				for criteriaIndex=1,totalCriteria,1 do
					---@diagnostic disable-next-line: redundant-parameter
					local criteriaString, criteriaType, completed, _, _, _, _, assetID, quantityString, criteriaUID = GetAchievementCriteriaInfo(achievementID, criteriaIndex, true);
					if criteriaString and (not criteriaDatasByUID[criteriaUID] or criteriaUID == 0) then
						tinsert(criteriaDatas, {
							" [" .. criteriaUID .. " @ Index: " .. criteriaIndex .. "]: " .. tostring(criteriaString),
							"(" .. tostring(assetID) .. " @ " .. tostring(criteriaType) .. ") " .. tostring(quantityString) .. " " .. app.GetCompletionIcon(completed)
						});
					end
				end
			end
			if #criteriaDatas > 0 then
				tinsert(tooltipInfo, { left = " " });
				tinsert(tooltipInfo, {
					left = "Total Criteria",
					right = tostring(#criteriaDatas),
					r = 0.8, g = 0.8, b = 1
				});
				for i,criteriaData in ipairs(criteriaDatas) do
					tinsert(tooltipInfo, {
						left = criteriaData[1],
						right = criteriaData[2],
						r = 1, g = 1, b = 1
					});
				end
			end
		end
	end
	fields.OnTooltip = function()
		return onTooltipForAchievement;
	end
	
	-- Setup a handler that will manage completion checks to keep it optimized.
	local function CheckAchievementCollectionStatus(achievementID)
		achievementID = tonumber(achievementID) or achievementID;
		local collected = select(13, GetAchievementInfo(achievementID));
		if collected ~= app.CurrentCharacter.Achievements[achievementID] then
			local reference;
			for i,o in ipairs(SearchForField("achievementID", achievementID)) do
				if o.key == "achievementID" or o.key == "guildAchievementID" then
					reference = o;
					break;
				end
			end
			SetAchievementCollected(reference or app.CreateAchievement(achievementID), achievementID, collected);
		end
	end
	local function refreshAchievementCollection()
		if ATTAccountWideData then
			local charAchievements = app.CurrentCharacter.Achievements;
			for achievementID,container in pairs(app.GetFieldContainer("achievementID")) do
				if not AchievementData[achievementID] then
					local collected = select(13, GetAchievementInfo(achievementID));
					if collected ~= charAchievements[achievementID] then
						local reference;
						for i,o in ipairs(container) do
							if validAchievementKeys[o.key] then
								reference = o;
								break;
							end
						end
						SetAchievementCollected(reference or app.CreateAchievement(achievementID), achievementID, collected);
					end
				end
			end
		end
	end
	app.AddEventHandler("OnRecalculate", refreshAchievementCollection);
	app:RegisterEvent("ADDON_LOADED");
	app:RegisterEvent("ACHIEVEMENT_EARNED");
	app.events.ACHIEVEMENT_EARNED = CheckAchievementCollectionStatus;
	app.events.ADDON_LOADED = function(addonName)
		if addonName == "Blizzard_AchievementUI" then
			refreshAchievementCollection();
			app:UnregisterEvent("ADDON_LOADED");
		end
	end
end
local function GetRelatedThingsForAchievement(t, objects)
	local func = t.data.GetRelatedThings;
	if func then func(t.data, objects); end
end
local function OnTooltipForAchievement(t, tooltipInfo)
	t.data.OnTooltip(t.data, tooltipInfo);
end
app.CreateAchievement = app.CreateClass("Achievement", "achievementID", fields,
"WithData", {	-- When there is data related to the criteria available in the database module.
	["collectible"] = function(t)
		return app.Settings.Collectibles.Achievements and t.data.collectible;
	end,
	["trackable"] = function(t)
		return t.data.collectible;
	end,
	["name"] = function(t)
		local name = t.data.name;
		if not IsRetrieving(name) then return name; end
		return t.defaultName;
	end,
	["icon"] = function(t)
		return t.data.icon or t.defaultIcon;
	end,
	["description"] = function(t)
		return t.data.description;
	end,
	["rank"] = function(t) return t.data.rank; end,
	["lvl"] = function(t) return t.data.lvl; end,
	["type"] = function(t) return t.data.type; end,
	["parentCategoryID"] = function(t) return t.data.category or -1; end,
	["collected"] = function(t)
		if t.data.collectible then
			if app.Settings.AccountWide.Achievements then
				-- Check to see if the criteria was completed.
				local achievementID = t.achievementID;
				if achievementID and ATTAccountWideData.Achievements[achievementID] then
					return 2;
				end
			end
			return t.data.collected and 1;
		end
	end,
	["saved"] = function(t)
		if t.data.collectible then
			return t.data.collected;
		end
	end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForAchievement;
	end,
	["OnTooltip"] = function(t)
		return OnTooltipForAchievement;
	end,
}, function(t)
	local data = AchievementData[t.achievementID];
	if data then
		t.data = data;
		return data;
	end
end);