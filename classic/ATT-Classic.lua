--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--------------------------------------------------------------------------------
--				Copyright 2017-2023 Dylan Fortune (Crieve-Sargeras)           --
--------------------------------------------------------------------------------
-- App locals
local appName, app = ...;
local contains, containsAny, containsValue = app.contains, app.containsAny, app.containsValue;
local CloneArray, CloneDictionary, CloneReference = app.CloneArray, app.CloneDictionary, app.CloneReference;
local GetRelativeValue = app.GetRelativeValue;
local L = app.L;

-- Binding Localizations
BINDING_HEADER_ALLTHETHINGS = L.TITLE
BINDING_NAME_ALLTHETHINGS_TOGGLEACCOUNTMODE = L["TOGGLE_ACCOUNT_MODE"]
BINDING_NAME_ALLTHETHINGS_TOGGLEDEBUGMODE = L["TOGGLE_DEBUG_MODE"]
BINDING_NAME_ALLTHETHINGS_TOGGLEFACTIONMODE = L["TOGGLE_FACTION_MODE"]

BINDING_HEADER_ALLTHETHINGS_PREFERENCES = L["PREFERENCES"]
BINDING_NAME_ALLTHETHINGS_TOGGLECOMPLETEDTHINGS = L["TOGGLE_COMPLETEDTHINGS"]
BINDING_NAME_ALLTHETHINGS_TOGGLECOMPLETEDGROUPS = L["TOGGLE_COMPLETEDGROUPS"]
BINDING_NAME_ALLTHETHINGS_TOGGLECOLLECTEDTHINGS = L["TOGGLE_COLLECTEDTHINGS"]
BINDING_NAME_ALLTHETHINGS_TOGGLEBOEITEMS = L["TOGGLE_BOEITEMS"]
BINDING_NAME_ALLTHETHINGS_TOGGLELOOTDROPS = L["TOGGLE_LOOTDROPS"]
BINDING_NAME_ALLTHETHINGS_TOGGLESOURCETEXT = L["TOGGLE_SOURCETEXT"]

BINDING_HEADER_ALLTHETHINGS_MODULES = L["MODULES"]
BINDING_NAME_ALLTHETHINGS_TOGGLEMAINLIST = L["TOGGLE_MAINLIST"]
BINDING_NAME_ALLTHETHINGS_TOGGLEMINILIST = L["TOGGLE_MINILIST"]
BINDING_NAME_ALLTHETHINGS_TOGGLE_PROFESSION_LIST = L["TOGGLE_PROFESSION_LIST"]
BINDING_NAME_ALLTHETHINGS_TOGGLE_RAID_ASSISTANT = L["TOGGLE_RAID_ASSISTANT"]
BINDING_NAME_ALLTHETHINGS_TOGGLERANDOM = L["TOGGLE_RANDOM"]
BINDING_NAME_ALLTHETHINGS_REROLL_RANDOM = L["REROLL_RANDOM"]

-- Global API cache
-- While this may seem silly, caching references to commonly used APIs is actually a performance gain...
local C_DateAndTime_GetServerTimeLocal
	= C_DateAndTime.GetServerTimeLocal;
local ipairs, tinsert, pairs, rawset, rawget, pcall
	= ipairs, tinsert, pairs, rawset, rawget, pcall;
local C_Map_GetMapInfo, C_Map_GetAreaInfo = C_Map.GetMapInfo, C_Map.GetAreaInfo;
local C_Map_GetPlayerMapPosition = C_Map.GetPlayerMapPosition;
local GetAchievementInfo = _G["GetAchievementInfo"];
local GetAchievementNumCriteria = _G["GetAchievementNumCriteria"];
local GetAchievementCriteriaInfo = _G["GetAchievementCriteriaInfo"];
local GetAchievementCriteriaInfoByID = _G["GetAchievementCriteriaInfoByID"];
local GetCategoryInfo = _G["GetCategoryInfo"];
local GetFactionInfoByID = _G["GetFactionInfoByID"];
local GetItemInfo = _G["GetItemInfo"];
local GetItemInfoInstant = _G["GetItemInfoInstant"];
local GetItemCount = _G["GetItemCount"];
local InCombatLockdown = _G["InCombatLockdown"];
local GetSpellInfo, IsPlayerSpell, IsSpellKnown, IsSpellKnownOrOverridesKnown, IsTitleKnown =
	  GetSpellInfo, IsPlayerSpell, IsSpellKnown, IsSpellKnownOrOverridesKnown, IsTitleKnown;
local C_QuestLog_GetAllCompletedQuestIDs = C_QuestLog.GetAllCompletedQuestIDs;
local C_QuestLog_IsOnQuest = C_QuestLog.IsOnQuest;
local ALLIANCE_FACTION_ID = Enum.FlightPathFaction.Alliance;
local HORDE_FACTION_ID = Enum.FlightPathFaction.Horde;

-- App & Module locals
local SearchForField, SearchForFieldContainer
	= app.SearchForField, app.SearchForFieldContainer;

-- Add a Feader & Filter debugger
setmetatable(app.FilterConstants, {
	__index = function(t, key)
		print("MISSING FilterConstant:", key);
		rawset(t, key, -9999999999);
		return -9999999999;
	end
});
setmetatable(app.HeaderConstants, {
	__index = function(t, key)
		print("MISSING HeaderConstant:", key);
		rawset(t, key, -9999999999);
		return -9999999999;
	end
});

-- Local Variables
local DESCRIPTION_SEPARATOR = "`";
local ALLIANCE_ONLY = {
	1,
	3,
	4,
	7,
	11,
	22,
	25,
	29,
	30,
	32,
	34,
	37,
};
local HORDE_ONLY = {
	2,
	5,
	6,
	8,
	9,
	10,
	26,
	27,
	28,
	31,
	35,
	36,
};

-- Helper Functions
local UpdateGroup, UpdateGroups;
local constructor = function(id, t, typeID)
	if t then
		if not t.g and t[1] then
			return { g=t, [typeID]=id };
		else
			t[typeID] = id;
			return t;
		end
	else
		return {[typeID] = id};
	end
end
function distance( x1, y1, x2, y2 )
	return math.sqrt( (x2-x1)^2 + (y2-y1)^2 )
end

local pendingCollection, pendingRemovals, retrievingCollection, pendingCollectionCooldown = {},{},{},0;
local function PendingCollectionCoroutine()
	while not app.IsReady do coroutine.yield(); end
	while pendingCollectionCooldown > 0 do
		pendingCollectionCooldown = pendingCollectionCooldown - 1;
		coroutine.yield();

		-- If any of the collection objects is retrieving data, try again.
		local anyRetrieving = false;
		for hash,thing in pairs(retrievingCollection) do
			local retries = thing[1];
			if retries > 0 then
				retries = retries - 1;
				thing[1] = retries;
				local text = thing[2].text;
				if not text or text == RETRIEVING_DATA then
					retrievingCollection[hash] = nil;
					anyRetrieving = true;
				end
			end
		end
		if anyRetrieving then
			pendingCollectionCooldown = pendingCollectionCooldown + 1;
		end
	end

	-- Report new things to your collection!
	local any,allTypes = false,{};
	local reportCollected = app.Settings:GetTooltipSetting("Report:Collected");
	for hash,t in pairs(pendingCollection) do
		local f = t.f;
		if f then allTypes[f] = true; end
		if reportCollected then
			print((t.text or RETRIEVING_DATA) .. " was added to your collection!");
		end
		any = true;
	end
	if any then
		wipe(pendingCollection);

		-- Check if there was a mount.
		if allTypes[app.FilterConstants.MOUNTS] then
			app:PlayRareFindSound();
		else
			app:PlayFanfare();
		end
	end

	-- Report removed things from your collection...
	any = false;
	for hash,t in pairs(pendingRemovals) do
		if reportCollected then
			print((t.text or RETRIEVING_DATA) .. " was removed from your collection!");
		end
		any = true;
	end
	if any then
		wipe(pendingRemovals);
		app:PlayRemoveSound();
	end
end
local function AddToCollection(group)
	if not group then return; end
	local hash = group.hash;
	local text = group.text;
	if not text or text == RETRIEVING_DATA then
		retrievingCollection[hash] = { 5, group };
	end

	-- Do not add the item to the pending list if it was already in it.
	if pendingRemovals[hash] then
		pendingRemovals[hash] = nil;
	else
		pendingCollection[hash] = group;
		pendingCollectionCooldown = 10;
		app:StartATTCoroutine("Pending Collection", PendingCollectionCoroutine);
	end
end
local function RemoveFromCollection(group)
	if not group then return; end
	local hash = group.hash;
	local text = group.text;
	if not text or text == RETRIEVING_DATA then
		retrievingCollection[hash] = { 5, group };
	end

	-- Do not add the item to the pending list if it was already in it.
	if pendingCollection[hash] then
		pendingCollection[hash] = nil;
	else
		pendingRemovals[hash] = group;
		pendingCollectionCooldown = 10;
		app:StartATTCoroutine("Pending Collection", PendingCollectionCoroutine);
	end
end

-- Data Lib
local attData;
local ATTClassicAD = {};			-- For account-wide data.
local function SetDataMember(member, data)
	ATTClassicAD[member] = data;
end
local function GetDataMember(member, default)
	attData = ATTClassicAD[member];
	if attData == nil then
		ATTClassicAD[member] = default;
		return default;
	else
		return attData;
	end
end
local function SetDataSubMember(member, submember, data)
	attData = ATTClassicAD[member];
	if attData == nil then
		ATTClassicAD[member] = { [submember] = data };
	else
		attData[submember] = data;
	end
end
local function GetDataSubMember(member, submember, default)
	attData = ATTClassicAD[member];
	if attData then
		attData = attData[submember];
		if attData == nil then
			ATTClassicAD[member][submember] = default;
			return default;
		else
			return attData;
		end
	else
		ATTClassicAD[member] = { [submember] = default };
		return default;
	end
end
app.SetDataMember = SetDataMember;
app.GetDataMember = GetDataMember;
app.SetDataSubMember = SetDataSubMember;
app.GetDataSubMember = GetDataSubMember;
app.SetCollected = function()
	app.print("SetCollected not initialized yet...");
end;
app.SetCollectedForSubType = function()
	app.print("SetCollectedForSubType not initialized yet...");
end

local backdrop = {
	bgFile = "Interface/Tooltips/UI-Tooltip-Background",
	edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 }
};

-- Game Tooltip Icon
local GameTooltipIcon = CreateFrame("FRAME", nil, GameTooltip);
GameTooltipIcon:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
GameTooltipIcon:SetSize(72, 72);
GameTooltipIcon.icon = GameTooltipIcon:CreateTexture(nil, "ARTWORK");
GameTooltipIcon.icon:SetAllPoints(GameTooltipIcon);
GameTooltipIcon.icon:Show();
GameTooltipIcon.icon.Background = GameTooltipIcon:CreateTexture(nil, "BACKGROUND");
GameTooltipIcon.icon.Background:SetAllPoints(GameTooltipIcon);
GameTooltipIcon.icon.Background:Show();
GameTooltipIcon.icon.Border = GameTooltipIcon:CreateTexture(nil, "BORDER");
GameTooltipIcon.icon.Border:SetAllPoints(GameTooltipIcon);
GameTooltipIcon.icon.Border:Show();
GameTooltipIcon:Hide();

-- Model is used to display the model of an NPC/Encounter.
local GameTooltipModel, model, fi = CreateFrame("FRAME", "ATTGameTooltipModel", GameTooltip, BackdropTemplateMixin and "BackdropTemplate");
GameTooltipModel:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
GameTooltipModel:SetSize(128, 128);
GameTooltipModel:SetBackdrop(backdrop);
GameTooltipModel:SetBackdropBorderColor(1, 1, 1, 1);
GameTooltipModel:SetBackdropColor(0, 0, 0, 1);
GameTooltipModel.Models = {};
GameTooltipModel.Model = CreateFrame("DressUpModel", nil, GameTooltipModel);
GameTooltipModel.Model:SetPoint("TOPLEFT", GameTooltipModel ,"TOPLEFT", 4, -4)
GameTooltipModel.Model:SetPoint("BOTTOMRIGHT", GameTooltipModel ,"BOTTOMRIGHT", -4, 4)
GameTooltipModel.Model:SetFacing(MODELFRAME_DEFAULT_ROTATION);
GameTooltipModel.Model:SetScript("OnUpdate", function(self, elapsed)
	self:SetFacing(self:GetFacing() + elapsed);
end);
GameTooltipModel.Model:Hide();

local MAX_CREATURES_PER_ENCOUNTER = 9;
for i=1,MAX_CREATURES_PER_ENCOUNTER do
	model = CreateFrame("DressUpModel", "ATTGameTooltipModel" .. i, GameTooltipModel);
	model:SetPoint("TOPLEFT", GameTooltipModel ,"TOPLEFT", 4, -4);
	model:SetPoint("BOTTOMRIGHT", GameTooltipModel ,"BOTTOMRIGHT", -4, 4);
	model:SetCamDistanceScale(1.7);
	model:SetDisplayInfo(987);
	model:SetFacing(MODELFRAME_DEFAULT_ROTATION);
	fi = math.floor(i / 2);
	model:SetPosition(fi * -0.1, (fi * (i % 2 == 0 and -1 or 1)) * ((MAX_CREATURES_PER_ENCOUNTER - i) * 0.1), fi * 0.2 - 0.3);
	if model.SetDepth then
		model:SetDepth(i);
	end
	model:Hide();
	tinsert(GameTooltipModel.Models, model);
end
GameTooltipModel.HideAllModels = function(self)
	for i=1,MAX_CREATURES_PER_ENCOUNTER do
		GameTooltipModel.Models[i]:Hide();
	end
	GameTooltipModel.Model:Hide();
end
GameTooltipModel.SetCreatureID = function(self, creatureID)
	GameTooltipModel.HideAllModels(self);
	if creatureID > 0 then
		self.Model:SetUnit("none");
		self.Model:SetCreature(creatureID);
		local displayID = self.Model:GetDisplayInfo();
		if not displayID then
			app:StartATTCoroutine("SetCreatureID", function()
				if self.lastModel == creatureID then
					self:SetCreatureID(creatureID);
				end
			end);
		end
	end
	self:Show();
end
GameTooltipModel.TrySetDisplayInfo = function(self, reference, displayInfo)
	if displayInfo then
		local count = #displayInfo;
		if count > 0 then
			local rotation = reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION;
			local scale = reference.modelScale or 1;
			if count > 1 then
				count = math.min(count, MAX_CREATURES_PER_ENCOUNTER);
				local ratio = count / MAX_CREATURES_PER_ENCOUNTER;
				if count < 3 then
					for i=1,count do
						model = self.Models[i];
						model:SetDisplayInfo(displayInfo[i]);
						model:SetCamDistanceScale(scale);
						model:SetFacing(rotation);
						model:SetPosition(0, (i % 2 == 0 and 0.5 or -0.5), 0);
						model:Show();
					end
				else
					scale = (1 + (ratio * 0.5)) * scale;
					for i=1,count do
						model = self.Models[i];
						model:SetDisplayInfo(displayInfo[i]);
						model:SetCamDistanceScale(scale);
						model:SetFacing(rotation);
						fi = math.floor(i / 2);
						model:SetPosition(fi * -0.1, (fi * (i % 2 == 0 and -1 or 1)) * ((MAX_CREATURES_PER_ENCOUNTER - i) * 0.1), fi * 0.2 - (ratio * 0.15));
						model:Show();
					end
				end
			else
				self.Model:SetFacing(rotation);
				self.Model:SetCamDistanceScale(scale);
				self.Model:SetDisplayInfo(displayInfo[1]);
				self.Model:Show();
			end
			self:Show();
			return true;
		end
	end
end
GameTooltipModel.TrySetModel = function(self, reference)
	GameTooltipModel.HideAllModels(self);
	if app.Settings:GetTooltipSetting("Models") then
		self.lastModel = reference;
		local displayInfo = reference.displayInfo;
		if displayInfo then
			if GameTooltipModel.TrySetDisplayInfo(self, reference, displayInfo) then
				return true;
			end
		end
		if reference.qgs then
			if #reference.qgs > 1 then
				local displayInfo = {};
				local markedKeys = {};
				for i,creatureID in ipairs(reference.qgs) do
					local displayID = app.NPCDisplayIDFromID[creatureID];
					if displayID and not markedKeys[displayID] then
						tinsert(displayInfo, displayID);
						markedKeys[displayID] = 1;
					end
				end
				if GameTooltipModel.TrySetDisplayInfo(self, reference, displayInfo) then
					return true;
				end
			else
				local displayID = app.NPCDisplayIDFromID[reference.qgs[1]];
				if displayID then
					self.Model:SetFacing(reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION);
					self.Model:SetCamDistanceScale(reference.modelScale or 1);
					self.Model:SetDisplayInfo(displayID);
					self.Model:Show();
					self:Show();
					return true;
				end
			end
		elseif reference.providers then
			local displayInfo = {}
			local markedKeys = {}
			for k,v in pairs(reference.providers) do
				if v[1] == "n" and v[2] > 0 then
					local displayID = app.NPCDisplayIDFromID[v[2]];
					if displayID and not markedKeys[displayID] then
						tinsert(displayInfo, displayID);
						markedKeys[displayID] = 1;
					end
				end
			end
			if GameTooltipModel.TrySetDisplayInfo(self, reference, displayInfo) then
				return true;
			end
		end

		if reference.displayID then
			self.Model:SetFacing(reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION);
			self.Model:SetCamDistanceScale(reference.modelScale or 1);
			self.Model:SetDisplayInfo(reference.displayID);
			self.Model:Show();
			self:Show();
			return true;
		elseif reference.modelID then
			self.Model:SetFacing(reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION);
			self.Model:SetCamDistanceScale(reference.modelScale or 1);
			self.Model:SetDisplayInfo(reference.modelID);
			self.Model:Show();
			self:Show();
			return true;
		elseif reference.unit and not reference.icon then
			self.Model:SetFacing(reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION);
			self.Model:SetCamDistanceScale(reference.modelScale or 1);
			self.Model:SetUnit(reference.unit);
			self.Model:Show();
			self:Show();
		end
		if reference.model then
			self.Model:SetFacing(reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION);
			self.Model:SetCamDistanceScale(reference.modelScale or 1);
			self.Model:SetUnit("none");
			self.Model:SetModel(reference.model);
			self.Model:Show();
			self:Show();
			return true;
		elseif reference.creatureID and reference.creatureID > 0 then
			self.Model:SetFacing(reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION);
			self.Model:SetCamDistanceScale(reference.modelScale or 1);
			self:SetCreatureID(reference.creatureID);
			self.Model:Show();
			return true;
		end
		if reference.atlas then
			GameTooltipIcon:SetSize(64,64);
			GameTooltipIcon.icon:SetAtlas(reference.atlas);
			GameTooltipIcon:Show();
			if reference["atlas-background"] then
				GameTooltipIcon.icon.Background:SetAtlas(reference["atlas-background"]);
				GameTooltipIcon.icon.Background:Show();
			end
			if reference["atlas-border"] then
				GameTooltipIcon.icon.Border:SetAtlas(reference["atlas-border"]);
				GameTooltipIcon.icon.Border:Show();
				if reference["atlas-color"] then
					local swatches = reference["atlas-color"];
					GameTooltipIcon.icon.Border:SetVertexColor(swatches[1], swatches[2], swatches[3], swatches[4] or 1.0);
				else
					GameTooltipIcon.icon.Border:SetVertexColor(1, 1, 1, 1.0);
				end
			end
			return true;
		end
	end
end
GameTooltipModel:Hide();

app.AlwaysShowUpdate = function(data) data.visible = true; return true; end
app.AlwaysShowUpdateWithoutReturn = function(data) data.visible = true; end
app.print = function(...)
	print(L["TITLE"], ...);
end

-- Color Lib
local CS = CreateFrame("ColorSelect", nil, app.frame);
local function Colorize(str, color)
	return "|c" .. color .. str .. "|r";
end
local function HexToRGB(hex)
	return tonumber("0x"..hex:sub(3,4)) / 255, tonumber("0x"..hex:sub(5,6)) / 255, tonumber("0x"..hex:sub(7,8)) / 255;
end
local function RGBToHex(r, g, b)
	return string.format("ff%02x%02x%02x",
		r <= 255 and r >= 0 and r or 0,
		g <= 255 and g >= 0 and g or 0,
		b <= 255 and b >= 0 and b or 0);
end
local function ConvertColorRgbToHsv(r, g, b)
  CS:SetColorRGB(r, g, b);
  local h,s,v = CS:GetColorHSV()
  return {h=h,s=s,v=v}
end
local red, green = ConvertColorRgbToHsv(1,0,0), ConvertColorRgbToHsv(0,1,0);
local progress_colors = setmetatable({ [1] = app.Colors.Completed }, {
	__index = function(t, p)
		local h;
		p = tonumber(p);
		if abs(red.h - green.h) > 180 then
			local angle = (360 - abs(red.h - green.h)) * p;
			if red.h < green.h then
				h = floor(red.h - angle);
				if h < 0 then h = 360 + h end
			else
				h = floor(red.h + angle);
				if h > 360 then h = h - 360 end
			end
		else
			h = floor(red.h-(red.h-green.h)*p)
		end
		CS:SetColorHSV(h, red.s-(red.s-green.s)*p, red.v-(red.v-green.v)*p);
		local r,g,b = CS:GetColorRGB();
		local color = RGBToHex(r * 255, g * 255, b * 255);
		rawset(t, p, color);
		return color;
	end
});
local function GetNumberWithZeros(number, desiredLength)
	if desiredLength > 0 then
		local str = tostring(number);
		local length = string.len(str);
		local pos = string.find(str,"[.]");
		if not pos then
			str = str .. ".";
			for i=desiredLength,1,-1 do
				str = str .. "0";
			end
		else
			local totalExtra = desiredLength - (length - pos);
			for i=totalExtra,1,-1 do
				str = str .. "0";
			end
			if totalExtra < 1 then
				str = string.sub(str, 1, pos + desiredLength);
			end
		end
		return str;
	else
		return tostring(floor(number));
	end
end
local function GetProgressTextDefault(progress, total)
	return tostring(progress) .. " / " .. tostring(total);
end
local function GetProgressTextRemaining(progress, total)
	return tostring(total - progress);
end
local function GetProgressColor(p)
	return progress_colors[p];
end
local function GetProgressColorText(progress, total)
	if total and total > 0 then
		local percent = progress / total;
		return "|c" .. GetProgressColor(percent) .. app.GetProgressText(progress, total) .. " (" .. GetNumberWithZeros(percent * 100, app.Settings:GetTooltipSetting("Precision")) .. "%) |r";
	end
end
local function GetCollectionIcon(state)
	return L[(state and (state == 2 and "COLLECTED_APPEARANCE_ICON" or "COLLECTED_ICON")) or "NOT_COLLECTED_ICON"];
end
local function GetCollectionText(state)
	return L[(state and (state == 2 and "COLLECTED_APPEARANCE" or "COLLECTED")) or "NOT_COLLECTED"];
end
local function GetCompletionIcon(state)
	return L[state and "COMPLETE_ICON" or "NOT_COLLECTED_ICON"];
end
local function GetCompletionText(state)
	return L[(state == 2 and "COMPLETE_OTHER") or ((state == 1 or state == true) and "COMPLETE") or "INCOMPLETE"];
end
local function GetProgressTextForRow(data)
	local total = data.total;
	if total and (total > 1 or (total > 0 and not data.collectible)) then
		return GetProgressColorText(data.progress or 0, total);
	elseif data.collectible then
		return GetCollectionIcon(data.collected);
	elseif data.trackable then
		return GetCompletionIcon(data.saved);
	end
end
local function GetProgressTextForTooltip(data)
	if data.total and (data.total > 1 or (data.total > 0 and not data.collectible)) then
		return GetProgressColorText(data.progress or 0, data.total);
	elseif data.collectible or (data.spellID and data.itemID and data.trackable) then
		return GetCollectionText(data.collected);
	elseif data.trackable then
		return GetCompletionText(data.saved);
	end
end
local function GetAddedWithPatchString(awp)
	if awp then
		awp = tonumber(awp);
		return "This gets added in patch " .. math.floor(awp / 10000) .. "." .. (math.floor(awp / 100) % 10) .. "." .. (awp % 10);
	end
end
local function GetRemovedWithPatchString(rwp)
	if rwp then
		rwp = tonumber(rwp);
		return "This gets removed in patch " .. math.floor(rwp / 10000) .. "." .. (math.floor(rwp / 100) % 10) .. "." .. (rwp % 10);
	end
end
app.GetProgressText = GetProgressTextDefault;
app.GetProgressTextDefault = GetProgressTextDefault;
app.GetProgressTextRemaining = GetProgressTextRemaining;
app.GetProgressColorText = GetProgressColorText;
CS:Hide();


-- Source ID Harvesting Lib
local DressUpModel = CreateFrame('DressUpModel');
local NPCModelHarvester = CreateFrame('DressUpModel', nil, OffScreenFrame);
local inventorySlotsMap = {	-- Taken directly from CanIMogIt (Thanks!)
    ["INVTYPE_HEAD"] = {1},
	["INVTYPE_NECK"] = {2},
    ["INVTYPE_SHOULDER"] = {3},
    ["INVTYPE_BODY"] = {4},
    ["INVTYPE_CHEST"] = {5},
    ["INVTYPE_ROBE"] = {5},
    ["INVTYPE_WAIST"] = {6},
    ["INVTYPE_LEGS"] = {7},
    ["INVTYPE_FEET"] = {8},
    ["INVTYPE_WRIST"] = {9},
    ["INVTYPE_HAND"] = {10},
	["INVTYPE_RING"] = {11},
	["INVTYPE_TRINKET"] = {12},
    ["INVTYPE_CLOAK"] = {15},
    ["INVTYPE_WEAPON"] = {16, 17},
    ["INVTYPE_SHIELD"] = {17},
    ["INVTYPE_2HWEAPON"] = {16, 17},
    ["INVTYPE_WEAPONMAINHAND"] = {16},
    ["INVTYPE_RANGED"] = {16},
    ["INVTYPE_RANGEDRIGHT"] = {16},
    ["INVTYPE_WEAPONOFFHAND"] = {17},
    ["INVTYPE_HOLDABLE"] = {17},
    ["INVTYPE_TABARD"] = {19},
};
local achievementTooltipText = {
	[17213] = "DPA",	-- Defense Protocol Alpha: Utgarde Keep
	[17283] = "DPA",	-- Defense Protocol Alpha: The Nexus
	[17285] = "DPA",	-- Defense Protocol Alpha: Azjol-Nerub
	[17291] = "DPA",	-- Defense Protocol Alpha: Ahn'kahet: The Old Kingdom
	[17292] = "DPA",	-- Defense Protocol Alpha: Drak'Tharon Keep
	[17293] = "DPA",	-- Defense Protocol Alpha: The Violet Hold
	[17295] = "DPA",	-- Defense Protocol Alpha: Gundrak
	[17297] = "DPA",	-- Defense Protocol Alpha: Halls of Stone
	[17299] = "DPA",	-- Defense Protocol Alpha: Halls of Lightning
	[17300] = "DPA",	-- Defense Protocol Alpha: The Oculus
	[17301] = "DPA",	-- Defense Protocol Alpha: Utgarde Pinnacle
	[17302] = "DPA",	-- Defense Protocol Alpha: The Culling of Stratholme

	[18590] = "DPB",	-- Defense Protocol Beta: Utgarde Keep
	[18591] = "DPB",	-- Defense Protocol Beta: The Nexus
	[18592] = "DPB",	-- Defense Protocol Beta: Azjol-Nerub
	[18593] = "DPB",	-- Defense Protocol Beta: Ahn'kahet: The Old Kingdom
	[18594] = "DPB",	-- Defense Protocol Beta: Drak'Tharon Keep
	[18595] = "DPB",	-- Defense Protocol Beta: The Violet Hold
	[18596] = "DPB",	-- Defense Protocol Beta: Gundrak
	[18597] = "DPB",	-- Defense Protocol Beta: Halls of Stone
	[18598] = "DPB",	-- Defense Protocol Beta: Halls of Lightning
	[18599] = "DPB",	-- Defense Protocol Beta: The Oculus
	[18600] = "DPB",	-- Defense Protocol Beta: Utgarde Pinnacle
	[18601] = "DPB",	-- Defense Protocol Beta: The Culling of Stratholme
	[18677] = "DPB",	-- Defense Protocol Beta: Trial of the Champion (A)
	[18678] = "DPB",	-- Defense Protocol Beta: Trial of the Champion (H)
};
local function BuildGroups(parent)
	local g = parent.g;
	if g then
		-- Iterate through the groups
		for i=1,#g,1 do
			-- Set the group's parent
			local group = g[i];
			group.parent = parent;

			-- Build the groups
			BuildGroups(group);
		end
	end
end
local function BuildSourceText(group, l, skip)
	if group then
		local parent = group.parent;
		if parent then
			if not group.itemID and not skip and (parent.key == "filterID" or parent.key == "spellID" or ((parent.headerID or (parent.spellID and (group.categoryID or group.tierID)))
				and ((parent.headerID == app.HeaderConstants.VENDORS or parent.headerID == app.HeaderConstants.QUESTS or parent.headerID == app.HeaderConstants.WORLD_BOSSES) or (parent.parent and parent.parent.parent)))) then
				return BuildSourceText(parent.parent, 5, skip) .. DESCRIPTION_SEPARATOR .. (group.text or RETRIEVING_DATA) .. " (" .. (parent.text or RETRIEVING_DATA) .. ")";
			end
			if group.headerID then
				if group.headerID == app.HeaderConstants.ZONE_DROPS then
					if group.crs and #group.crs == 1 then
						return BuildSourceText(parent, l + 1, skip) .. DESCRIPTION_SEPARATOR .. (app.NPCNameFromID[group.crs[1]] or RETRIEVING_DATA) .. " (Drop)";
					end
					return BuildSourceText(parent, l + 1, skip) .. DESCRIPTION_SEPARATOR .. (group.text or RETRIEVING_DATA);
				end
				if parent.difficultyID then
					return BuildSourceText(parent, l + 1, skip);
				end
				if parent.parent then
					return BuildSourceText(parent, l + 1, skip) .. DESCRIPTION_SEPARATOR .. (group.text or RETRIEVING_DATA);
				end
			end
			if group.key == "criteriaID" and group.achievementID then
				local tooltipText = achievementTooltipText[group.achievementID];
				if tooltipText then
					return BuildSourceText(parent, 5, group.itemID or skip) .. " (" .. tooltipText .. ")";
				else
					return BuildSourceText(parent, 5, group.itemID or skip);
				end
			end
			if parent.key == "categoryID" or parent.key == "tierID" or group.key == "filterID" or group.key == "spellID" or group.key == "encounterID" or (parent.key == "mapID" and group.key == "npcID") then
				return BuildSourceText(parent, 5, skip) .. DESCRIPTION_SEPARATOR .. (group.text or RETRIEVING_DATA);
			end
			if l < 1 then
				return BuildSourceText(parent, l + 1, group.itemID or skip);
			else
				return BuildSourceText(parent, l + 1, group.itemID or skip) .. " > " .. (group.text or RETRIEVING_DATA);
			end
		end
		return group.text or RETRIEVING_DATA;
	end
	return L.TITLE;
end
local function BuildSourceTextForChat(group, l)
	if group.parent then
		if l < 1 then
			return BuildSourceTextForChat(group.parent, l + 1);
		else
			return BuildSourceTextForChat(group.parent, l + 1) .. " > " .. (group.text or "*");
		end
		return group.text or "*";
	end
	return "ATT";
end
local function BuildSourceTextForDynamicPath(group)
	local parent = group.parent;
	if parent then
		return BuildSourceTextForDynamicPath(parent) .. ">" .. (group.hash or group.name or group.text);
	else
		return group.hash or group.name or group.text;
	end
end
local function CloneData(group)
	local clone = setmetatable({}, getmetatable(group));
	for key,value in pairs(group) do
		clone[key] = value;
	end
	if group.g then
		local g = {};
		for i,group in ipairs(group.g) do
			local child = CloneData(group);
			child.parent = clone;
			tinsert(g, child);
		end
		clone.g = g;
	end
	return clone;
end
app.IsComplete = function(o)
	if o.total then return o.total == o.progress; end
	if o.collectible then return o.collected; end
	if o.trackable then return o.saved; end
end
app.MaximumItemInfoRetries = 400;
local function GetDisplayID(data)
	if data.displayID then
		return data.displayID;
	elseif data.creatureID then
		local displayID = app.NPCDisplayIDFromID[data.creatureID];
		if displayID then
			return displayID;
		end
	end

	if data.providers and #data.providers > 0 then
		for k,v in pairs(data.providers) do
			-- if one of the providers is an NPC, we should show its texture regardless of other providers
			if v[1] == "n" then
				return app.NPCDisplayIDFromID[v[2]];
			end
		end
	end

	if data.qgs and #data.qgs > 0 then
		return app.NPCDisplayIDFromID[data.qgs[1]];
	end
end



local function GetBestMapForGroup(group)
	if group then
		return group.mapID or (group.maps and group.maps[1]) or (group.coords and group.coords[1][3]) or GetBestMapForGroup(group.parent);
	end
end
local function GetRelativeDifficulty(group, difficultyID)
	if group then
		if group.difficultyID then
			if group.difficultyID == difficultyID then
				return true;
			end
			if group.difficulties then
				for i, difficulty in ipairs(group.difficulties) do
					if difficulty == difficultyID then
						return true;
					end
				end
			end
			return false;
		end
		if group.parent then
			return GetRelativeDifficulty(group.sourceParent or group.parent, difficultyID);
		else
			return true;
		end
	end
end
local function GetRelativeMap(group, currentMapID)
	if group then
		return group.mapID or (group.maps and (contains(group.maps, currentMapID) and currentMapID or group.maps[1])) or GetRelativeMap(group.parent, currentMapID);
	end
	return currentMapID;
end
local function GetRelativeField(group, field, value)
	if group then
		return group[field] == value or GetRelativeField(group.parent, field, value);
	end
end
local function GetDeepestRelativeValue(group, field)
	if group then
		return GetDeepestRelativeValue(group.parent, field) or group[field];
	end
end

-- Quest Completion Lib
local CompletedQuests, DirtyQuests = {}, {};
local IsQuestFlaggedCompleted = function(questID)
	return questID and CompletedQuests[questID];
end
local IsQuestFlaggedCompletedForObject = function(t)
	if IsQuestFlaggedCompleted(t.questID) then return 1; end
	if app.Settings.AccountWide.Quests and not t.repeatable then
		if t.questID and ATTAccountWideData.Quests[t.questID] then
			return 2;
		end
	end
	local altQuests = t.altQuests;
	if altQuests then
		for i,questID in ipairs(altQuests) do
			if IsQuestFlaggedCompleted(questID) then
				return 2;
			end
		end
		if app.Settings.AccountWide.Quests then
			for i,questID in ipairs(altQuests) do
				if  ATTAccountWideData.Quests[questID] then
					return 2;
				end
			end
		end
	end
end

-- Search Caching
local searchCache = {};
app.searchCache = searchCache;
local keysByPriority = {	-- Sorted by frequency of use.
	"itemID",
	"questID",
	"npcID",
	"creatureID",
	"objectID",
	"mapID",
	"currencyID",
	"spellID",
	"classID",
	"professionID",
	"categoryID",
	"illusionID",
	"headerID",
};
local function GetKey(t)
	for i,key in ipairs(keysByPriority) do
		if rawget(t, key) then
			return key;
		end
	end
	for i,key in ipairs(keysByPriority) do
		if t[key] then	-- This goes a bit deeper.
			return key;
		end
	end
end
local function CreateHash(t)
	local key = t.key or GetKey(t);
	if key then
		return key .. t[key];
	end
end
local function GetHash(t)
	return t.hash or CreateHash(t);
end
local function CreateObject(t)
	local s = {};
	if t[1] then
		-- array
		for i,o in ipairs(t) do
			tinsert(s, CreateObject(o));
		end
		return s;
	else
		for k,v in pairs(t) do
			rawset(s, k, v);
		end
		if t.g then
			s.g = {};
			for i,o in ipairs(t.g) do
				tinsert(s.g, CreateObject(o));
			end
		end

		local meta = getmetatable(t);
		if meta then
			setmetatable(s, meta);
			return s;
		else
			t = s;
			if t.mapID then
				t = app.CreateMap(t.mapID, t);
			elseif t.currencyID then
				t = app.CreateCurrencyClass(t.currencyID, t);
			elseif t.achID then
				t = app.CreateAchievement(t.achID, t);
			elseif t.achievementID then
				t = app.CreateAchievement(t.achievementID, t);
			elseif t.objectID then
				t = app.CreateObject(t.objectID, t);
			elseif t.professionID then
				t = app.CreateProfession(t.professionID, t);
			elseif t.categoryID then
				t = app.CreateCategory(t.categoryID, t);
			elseif t.illusionID then
				t = app.CreateIllusion(t.illusionID, t);
			elseif t.recipeID then
				t = app.CreateRecipe(t.recipeID, t);
			elseif t.spellID then
				if t.f == app.FilterConstants.RECIPES then
					t = app.CreateRecipe(t.spellID, t);
				else
					t = app.CreateSpell(t.spellID, t);
				end
			elseif t.itemID then
				if t.toyID then
					t = app.CreateToy(t.itemID, t);
				else
					t = app.CreateItem(t.itemID, t);
				end
			elseif t.classID then
				t = app.CreateCharacterClass(t.classID, t);
			elseif t.npcID or t.creatureID then
				t = app.CreateNPC(t.npcID or t.creatureID, t);
			elseif t.headerID then
				t = app.CreateNPC(t.headerID, t);	-- For now.
			elseif t.questID then
				t = app.CreateQuest(t.questID, t);
			elseif t.factionID then
				t = app.CreateFaction(t.factionID, t);
			else
				t = setmetatable({}, { __index = t });
			end
			t.visible = true;
			return t;
		end
	end
end

local MergeObject;
local function MergeObjects(g, g2)
	for i,o in ipairs(g2) do
		MergeObject(g, o);
	end
end
MergeObject = function(g, t, index)
	local hash = GetHash(t);
	if hash then
		for i,o in ipairs(g) do
			if GetHash(o) == hash then
				if t.g then
					local tg = t.g;
					t.g = nil;
					if o.g then
						MergeObjects(o.g, tg);
					else
						o.g = tg;
					end
				end
				for k,v in pairs(t) do
					if k == "races" or k == "c" then
						local c = rawget(o, k);
						if not c then
							c = CloneArray(v);
							if o.itemID and o.itemID == 46752 then
								for _,p in ipairs(c) do
									print("INSERTING (CLONE)", p, C_CreatureInfo.GetRaceInfo(p).raceName);
								end
							end
							rawset(o, k, c);
						else
							for _,p in ipairs(v) do
								if not contains(c, p) then
									if o.itemID and o.itemID == 46752 then
										print("INSERTING", p, C_CreatureInfo.GetRaceInfo(p).raceName);
									end
									tinsert(c, p);
								end
							end
						end
					elseif k == "r" then
						if o[k] and o[k] ~= v then
							rawset(o, k, nil);
						else
							rawset(o, k, v);
						end
					elseif k ~= "expanded" then
						rawset(o, k, v);
					end
				end
				rawset(o, "nmr", (o.races and not contains(o.races, app.RaceIndex)) or (o.r and o.r ~= app.FactionID));
				rawset(o, "nmc", o.c and not contains(o.c, app.ClassIndex));
				return o;
			end
		end
	end
	if index then
		tinsert(g, index, t);
	else
		tinsert(g, t);
	end
	if t.itemID and t.itemID == 46752 and t.races then
		for _,p in ipairs(t.races) do
			print("INSERTING (BASE)", p, C_CreatureInfo.GetRaceInfo(p).raceName);
		end
	end
	rawset(t, "nmr", (t.races and not contains(t.races, app.RaceIndex)) or (t.r and t.r ~= app.FactionID));
	rawset(t, "nmc", t.c and not contains(t.c, app.ClassIndex));
	return t;
end
local function MergeClone(g, o)
	local clone = CreateObject(o);
	local u = GetRelativeValue(o, "u");
	if u then clone.u = u; end
	local e = GetRelativeValue(o, "e");
	if e then clone.e = e; end
	if not o.itemID or o.b == 1 then
		local r = GetRelativeValue(o, "r");
		if r then
			clone.r = r;
			clone.races = nil;
		else
			local races = GetRelativeValue(o, "races");
			if races then clone.races = CloneArray(races); end
		end
		local c = GetRelativeValue(o, "c");
		if c then clone.c = CloneArray(c); end
	end
	return MergeObject(g, clone);
end
local function ExpandGroupsRecursively(group, expanded, manual)
	if group.g and (not group.itemID or manual) then
		group.expanded = expanded;
		for i, subgroup in ipairs(group.g) do
			ExpandGroupsRecursively(subgroup, expanded, manual);
		end
	end
end
local function ReapplyExpand(g, g2)
	for j,p in ipairs(g2) do
		local found = false;
		local key = p.key;
		local id = p[key];
		for i,o in ipairs(g) do
			if o[key] == id then
				found = true;
				if o.expanded then
					if not p.expanded then
						p.expanded = true;
						if o.g and p.g then ReapplyExpand(o.g, p.g); end
					end
				end
				break;
			end
		end
		if not found then
			ExpandGroupsRecursively(p, true);
		end
	end
end
app.MergeClone = MergeClone;

local ResolveSymbolicLink;
(function()
local subroutines;
subroutines = {
	["common_recipes_vendor"] = function(npcID)
		return {
			{"select", "creatureID", npcID},	-- Main Vendor
			{"pop"},	-- Remove Main Vendor and push his children into the processing queue.
			{"is", "itemID"},	-- Only Items
			{"exclude", "itemID",
				-- Borya <Tailoring Supplies> Cataclysm Tailoring
				6270,	-- Pattern: Blue Linen Vest
				6274,	-- Pattern: Blue Overalls
				10314,	-- Pattern: Lavender Mageweave Shirt
				10317,	-- Pattern: Pink Mageweave Shirt
				5772,	-- Pattern: Red Woolen Bag
				-- Sumi <Blacksmithing Supplies> Cataclysm Blacksmithing
				12162,	-- Plans: Hardened Iron Shortsword
				-- Tamar <Leatherworking Supplies> Cataclysm Leatherworking
				18731,	-- Pattern: Heavy Leather Ball
				-- Kithas <Enchanting Supplies> Cataclysm Enchanting
				6349,	-- Formula: Enchant 2H Weapon - Lesser Intellect
				20753,	-- Formula: Lesser Wizard Oil
				20752,	-- Formula: Minor Mana Oil
				20758,	-- Formula: Minor Wizard Oil
				22307,	-- Pattern: Enchanted Mageweave Pouch
				-- Marith Lazuria <Jewelcrafting Supplies> Cataclysm Jewelcrafting
				-- Shazdar <Sous Chef> Cataclysm Cooking
				-- Tiffany Cartier <Jewelcrafting Supplies> Northrend Jewelcrafting
				-- Timothy Jones <Jewelcrafting Trainer> Northrend Jewelcrafting
			},
		};
	end,
	["common_vendor"] = function(npcID)
		return {
			{"select", "creatureID", npcID},	-- Main Vendor
			{"pop"},	-- Remove Main Vendor and push his children into the processing queue.
			{"is", "itemID"},	-- Only Items
		};
	end,
	["pvp_gear_base"] = function(tierID, headerID1, headerID2)
		local b = {
			{ "select", "tierID", tierID },	-- Select the Expansion header
			{ "pop" },	-- Discard the Expansion header and acquire the children.
			{ "where", "headerID", headerID1 },	-- Select the Season header
		};
		if headerID2 then
			tinsert(b, { "pop" });	-- Discard the Season header and acquire the children.
			tinsert(b, { "where", "headerID", headerID2 });	-- Select the Set header
		end
		return b;
	end,
};
ResolveSymbolicLink = function(o)
	if o.resolved then return o.resolved; end
	if o and o.sym then
		local searchResults, finalized = {}, {};
		for j,sym in ipairs(o.sym) do
			local cmd = sym[1];
			if cmd == "select" then
				-- Instruction to search the full database for multiple of a given type
				local field = sym[2];
				local cache;
				for i=3,#sym do
					local cache = SearchForField(field, sym[i]);
					if #cache > 0 then
						for k,s in ipairs(cache) do
							local ref = ResolveSymbolicLink(s);
							if ref then
								if s.g then
									for i,m in ipairs(s.g) do
										table.insert(searchResults, m);
									end
								end
								for i,m in ipairs(ref) do
									table.insert(searchResults, m);
								end
							else
								table.insert(searchResults, s);
							end
						end
					elseif field == "itemID" then
						table.insert(searchResults, app.CreateItem(sym[i], {
							description = "This was dynamically filled using a symlink, but the information wasn't found in the addon.",
						}));
					else
						print(BuildSourceTextForDynamicPath(o));
						print("Failed to select ", field, sym[i]);
					end
				end
			elseif cmd == "selectparent" then
				-- Instruction to select the parent object of the parent that owns the symbolic link.
				local cache = sym[2];
				if cache and cache > 0 then
					local parent = o.parent;
					while cache > 1 do
						parent = parent.parent;
						cache = cache - 1;
					end
					if parent then
						table.insert(searchResults, parent);
					else
						print("Failed to select parent " .. sym[2] .. " levels up.");
					end
				else
					-- Select the direct parent object.
					table.insert(searchResults, o.parent);
				end
			elseif cmd == "selectprofession" then
				local requireSkill, response = sym[2];
				if app.Categories.Achievements then
					response = app:BuildSearchResponse(app.Categories.Achievements, "requireSkill", requireSkill);
					if response then tinsert(searchResults, {text=ACHIEVEMENTS,icon = app.asset("Category_Achievements"),g=response}); end
				end
				response = app:BuildSearchResponse(app.Categories.Instances, "requireSkill", requireSkill);
				if response then tinsert(searchResults, {text=GROUP_FINDER,icon = app.asset("Category_D&R"),g=response}); end
				response = app:BuildSearchResponse(app.Categories.Zones, "requireSkill", requireSkill);
				if response then tinsert(searchResults, {text=BUG_CATEGORY2,icon = app.asset("Category_Zones"),g=response});  end
				response = app:BuildSearchResponse(app.Categories.WorldDrops, "requireSkill", requireSkill);
				if response then tinsert(searchResults, {text=TRANSMOG_SOURCE_4,icon = app.asset("Category_WorldDrops"),g=response});  end
				response = app:BuildSearchResponse(app.Categories.Craftables, "requireSkill", requireSkill);
				if response then tinsert(searchResults, {text=LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM,icon = app.asset("Category_Crafting"),g=response});  end
				response = app:BuildSearchResponse(app.Categories.WorldEvents, "requireSkill", requireSkill);
				if response then tinsert(searchResults, {text=BATTLE_PET_SOURCE_7,icon = app.asset("Category_Event"),g=response});  end
			elseif cmd == "fill" then
				-- Instruction to fill with identical content cached elsewhere for this group
				local cache = SearchForField(o.key, o[o.key]);
				if #cache > 0 then
					o.symbolizing = true;
					for k,s in ipairs(cache) do
						if not s.symbolizing then
							local ref = ResolveSymbolicLink(s);
							if ref then
								if s.g then
									for i,m in ipairs(s.g) do
										table.insert(searchResults, m);
									end
								end
								for i,m in ipairs(ref) do
									table.insert(searchResults, m);
								end
							else
								table.insert(searchResults, s);
							end
						end
					end
					o.symbolizing = nil;
				else
					print("Failed to select ", sym[2], sym[3]);
				end
			elseif cmd == "pop" then
				-- Instruction to "pop" all of the group values up one level.
				local orig = searchResults;
				searchResults = {};
				for k,s in ipairs(orig) do
					if s.g then
						for l,t in ipairs(s.g) do
							table.insert(searchResults, t);
						end
					end
				end
			elseif cmd == "where" then
				-- Instruction to include only search results where a key value is a value
				local key, value = sym[2], sym[3];
				for k=#searchResults,1,-1 do
					local s = searchResults[k];
					if not s[key] or s[key] ~= value then
						table.remove(searchResults, k);
					end
				end
			elseif cmd == "index" then
				-- Instruction to include the search result with a given index within each of the selection's groups.
				local index = sym[2];
				local orig = searchResults;
				searchResults = {};
				for k=#orig,1,-1 do
					local s = orig[k];
					if s.g and index <= #s.g then
						table.insert(searchResults, s.g[index]);
					end
				end
			elseif cmd == "not" then
				-- Instruction to include only search results where a key value is not a value
				if #sym > 3 then
					local dict = {};
					for k=2,#sym,2 do
						dict[sym[k] ] = sym[k + 1];
					end
					for k=#searchResults,1,-1 do
						local s = searchResults[k];
						local matched = true;
						for key,value in pairs(dict) do
							if not s[key] or s[key] ~= value then
								matched = false;
								break;
							end
						end
						if matched then
							table.remove(searchResults, k);
						end
					end
				else
					local key, value = sym[2], sym[3];
					for k=#searchResults,1,-1 do
						local s = searchResults[k];
						if s[key] and s[key] == value then
							table.remove(searchResults, k);
						end
					end
				end
			elseif cmd == "is" then
				-- Instruction to include only search results where a key exists
				local key = sym[2];
				for k=#searchResults,1,-1 do
					local s = searchResults[k];
					if not s[key] then table.remove(searchResults, k); end
				end
			elseif cmd == "isnt" then
				-- Instruction to include only search results where a key doesn't exist
				local key = sym[2];
				for k=#searchResults,1,-1 do
					local s = searchResults[k];
					if s[key] then table.remove(searchResults, k); end
				end
			elseif cmd == "contains" then
				-- Instruction to include only search results where a key value contains a value.
				local key = sym[2];
				local clone = {unpack(sym)};
				table.remove(clone, 1);
				table.remove(clone, 1);
				if #clone > 0 then
					for k=#searchResults,1,-1 do
						local s = searchResults[k];
						if not s[key] or not contains(clone, s[key]) then
							table.remove(searchResults, k);
						end
					end
				end
			elseif cmd == "exclude" then
				-- Instruction to exclude search results where a key value contains a value.
				local key = sym[2];
				local clone = {unpack(sym)};
				table.remove(clone, 1);
				table.remove(clone, 1);
				if #clone > 0 then
					for k=#searchResults,1,-1 do
						local s = searchResults[k];
						if s[key] and contains(clone, s[key]) then
							table.remove(searchResults, k);
						end
					end
				end
			elseif cmd == "finalize" then
				-- Instruction to finalize the current search results and prevent additional queries from affecting this selection.
				for k,s in ipairs(searchResults) do
					table.insert(finalized, s);
				end
				wipe(searchResults);
			elseif cmd == "merge" then
				-- Instruction to take all of the finalized and non-finalized search results and merge them back in to the processing queue.
				for k,s in ipairs(searchResults) do
					table.insert(finalized, s);
				end
				searchResults = finalized;
				finalized = {};
			elseif cmd == "postprocess" then
				-- Instruction to take all of the current search results and ensure that there are no duplicated primary keys.
				local uniques = {};
				MergeObjects(uniques, searchResults);
				searchResults = uniques;
			elseif cmd == "invtype" then
				-- Instruction to include only search results where an item is of a specific inventory type.
				local types = {unpack(sym)};
				table.remove(types, 1);
				if #types > 0 then
					for k=#searchResults,1,-1 do
						local s = searchResults[k];
						if s.itemID and not contains(types, select(4, GetItemInfoInstant(s.itemID))) then
							table.remove(searchResults, k);
						end
					end
				end
			elseif cmd == "sub" then
				local subroutine = subroutines[sym[2]];
				if subroutine then
					local args = {unpack(sym)};
					table.remove(args, 1);
					table.remove(args, 1);
					local commands = subroutine(unpack(args));
					if commands then
						local results = ResolveSymbolicLink(setmetatable({sym=commands}, {__index=o}));
						if results then
							for k,s in ipairs(results) do
								table.insert(searchResults, s);
							end
						end
					end
				else
					print("Could not find subroutine", sym[2]);
				end
			elseif cmd == "subif" then
				-- Instruction to perform a set of commands if a conditional is returned true.
				local subroutine = subroutines[sym[2]];
				if subroutine then
					-- If the subroutine's conditional was successful.
					if sym[3] and (sym[3])(o) then
						local args = {unpack(sym)};
						table.remove(args, 1);
						table.remove(args, 1);
						table.remove(args, 1);
						local commands = subroutine(unpack(args));
						if commands then
							local results = ResolveSymbolicLink(setmetatable({sym=commands}, {__index=o}));
							if results then
								for k,s in ipairs(results) do
									table.insert(searchResults, s);
								end
							end
						end
					end
				else
					print("Could not find subroutine", sym[2]);
				end
			elseif cmd == "achievement_criteria" then
				-- Instruction to select the criteria provided by the achievement this is attached to. (maybe build this into achievements?)
				if GetAchievementNumCriteria then
					local achievementID = o.achievementID;
					local cache;
					for criteriaID=1,GetAchievementNumCriteria(achievementID),1 do
						local criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, id = GetAchievementCriteriaInfo(achievementID, criteriaID, true);
						local criteriaObject = app.CreateAchievementCriteria(id);
						criteriaObject.achievementID = achievementID;
						if criteriaType == 27 then
							cache = SearchForField("questID", assetID);
						elseif criteriaType == 36 or criteriaType == 42 then
							criteriaObject.providers = {{ "i", assetID }};
						elseif criteriaType == 110 or criteriaType == 29 or criteriaType == 69 or criteriaType == 52 or criteriaType == 53 or criteriaType == 54 or criteriaType == 32 then
							-- Ignored
						else
							--print("Unhandled Criteria Type", criteriaType, assetID);
						end
						if cache and #cache > 0 then
							local uniques = {};
							MergeObjects(uniques, cache);
							for i,p in ipairs(uniques) do
								rawset(p, "text", nil);
								for key,value in pairs(p) do
									criteriaObject[key] = value;
								end
							end
						end
						criteriaObject.parent = o;
						tinsert(searchResults, criteriaObject);
					end
				end
			elseif cmd == "meta_achievement" then
                -- Instruction to search the full database for multiple achievementID's
                local cache;
				for i=2,#sym do
					local cache = SearchForField("achievementID", sym[i]);
					if #cache > 0 then
						for k,s in ipairs(cache) do
							local ref = ResolveSymbolicLink(s);
							if ref then
								local cs = CloneReference(s);
								if not cs.g then cs.g = {}; end
								for i,m in ipairs(ref) do
									table.insert(cs.g, m);
								end
								table.insert(searchResults, cs);
							else
								table.insert(searchResults, s);
							end
						end
					else
						print("Failed to select achievementID", sym[i]);
					end
				end
                -- Remove any Criteria groups associated with those achievements
                for k=#searchResults,1,-1 do
                    local s = searchResults[k];
                    if s.criteriaID then tremove(searchResults, k); end
                end
			end
		end

		-- If we have any pending finalizations to make, then merge them into the finalized table. [Equivalent to a "finalize" instruction]
		if #searchResults > 0 then
			for k,s in ipairs(searchResults) do
				table.insert(finalized, s);
			end
		end

		-- If we had any finalized search results, then return it.
		if #finalized > 0 then
			-- print("Symbolic Link for ", o.key, " ", o[o.key], " contains ", #finalized, " values after filtering.");
			o.resolved = finalized;
			return finalized;
		else
			-- print("Symbolic Link for ", o.key, " ", o[o.key], " contained no values after filtering.");
		end
	end
end
end)();
local function BuildContainsInfo(groups, entries, paramA, paramB, indent, layer)
	for i,group in ipairs(groups) do
		if app.RecursiveGroupRequirementsFilter(group) then
			local right = nil;
			if group.total and (group.total > 1 or (group.total > 0 and not group.collectible)) then
				if (group.progress / group.total) < 1 or app.Settings:Get("Show:CompletedGroups") then
					right = GetProgressColorText(group.progress, group.total);
				end
			elseif paramA and paramB and (not group[paramA] or (group[paramA] and group[paramA] ~= paramB)) then
				if group.collectible then
					if group.collected then
						if app.Settings:Get("Show:CollectedThings") then
							right = GetCollectionIcon(group.collected);
						end
					else
						right = L["NOT_COLLECTED_ICON"];
					end
				elseif group.trackable then
					if app.Settings:Get("Show:IncompleteThings") then
						if group.saved then
							if app.Settings:Get("Show:CollectedThings") then
								right = L["COMPLETE_ICON"];
							end
						else
							right = L["NOT_COLLECTED_ICON"];
						end
					elseif group.visible then
						right = group.count and (group.count .. "x") or "---";
					end
				elseif group.visible then
					right = group.count and (group.count .. "x") or "---";
				end
			end

			if right then
				-- Insert into the display.
				local o = { prefix = indent, group = group, right = right };
				if group.u then
					local reason = L["UNOBTAINABLE_ITEM_REASONS"][group.u];
					if reason and (not reason[5] or select(4, GetBuildInfo()) < reason[5]) then
						o.texture = L["UNOBTAINABLE_ITEM_TEXTURES"][reason[1]];
					end
				elseif group.e then
					o.texture = L["UNOBTAINABLE_ITEM_TEXTURES"][4];
				end
				if o.texture then
					o.prefix = string.sub(o.prefix, 4) .. "|T" .. o.texture .. ":0|t ";
					o.texture = nil;
				end
				tinsert(entries, o);

				-- Only go down one more level.
				if layer < 2 and group.g and #group.g > 0 and not group.symbolized then
					BuildContainsInfo(group.g, entries, paramA, paramB, indent .. "  ", layer + 1);
				end
			end
		end
	end
end
local function GetCachedSearchResults(search, method, paramA, paramB, ...)
	if search then
		local now = time();
		local cache = searchCache[search];
		if cache and (now - cache[1]) < cache[2] then return cache[3]; end

		-- Determine if this tooltip needs more work the next time it refreshes.
		if not paramA then paramA = ""; end
		local working, info, crafted, recipes = false, {}, {}, {};
		cache = { now, 100000000 };
		searchCache[search] = cache;

		-- Call to the method to search the database.
		local group, a, b = method(paramA, paramB, ...);
		if not group then
			group = {};
		elseif group.g then
			group = group.g;
		end
		if a then paramA = a; end
		if b then paramB = b; end

		-- For Creatures that are inside of an instance, we only want the data relevant for the instance.
		if paramA == "creatureID" or paramA == "encounterID" then
			if group and #group > 0 then
				local difficultyID = (IsInInstance() and select(3, GetInstanceInfo())) or (paramA == "encounterID" and EJ_GetDifficulty and EJ_GetDifficulty()) or 0;
				if difficultyID > 0 then
					local subgroup = {};
					for _,j in ipairs(group) do
						if GetRelativeDifficulty(j, difficultyID) then
							tinsert(subgroup, j);
						end
					end
					group = subgroup;
				end

				local regroup = {};
				if app.Settings:Get("DebugMode") then
					for i,j in ipairs(group) do
						tinsert(regroup, j);
					end
				else
					if app.Settings:Get("AccountMode") then
						for i,j in ipairs(group) do
							if app.RecursiveUnobtainableFilter(j) then
								if j.questID and j.itemID then
									if not j.saved then
										-- Only show the item on the tooltip if the quest is active and incomplete or the item is a provider.
										if C_QuestLog_IsOnQuest(j.questID) then
											if not IsQuestComplete(j.questID) then
												tinsert(regroup, j);
											end
										elseif j.providers then
											tinsert(regroup, j);
										else
											-- Do a quick search on the itemID.
											local searchResults = SearchForField("itemID", j.itemID);
											if #searchResults > 0 then
												for k,searchResult in ipairs(searchResults) do
													if searchResult.providers then
														for l,provider in ipairs(searchResult.providers) do
															if provider[1] == 'i' and provider[2] == j.itemID then
																tinsert(regroup, j);
																break;
															end
														end
														break;
													end
												end
											end
										end
									end
								else
									tinsert(regroup, j);
								end
							end
						end
					else
						for i,j in ipairs(group) do
							if app.RecursiveClassAndRaceFilter(j) and app.RecursiveUnobtainableFilter(j) and app.RecursiveGroupRequirementsFilter(j) then
								if j.questID and j.itemID then
									if not j.saved then
										-- Only show the item on the tooltip if the quest is active and incomplete or the item is a provider.
										if C_QuestLog_IsOnQuest(j.questID) then
											if not IsQuestComplete(j.questID) then
												tinsert(regroup, j);
											end
										elseif j.providers then
											tinsert(regroup, j);
										else
											-- Do a quick search on the itemID.
											local searchResults = SearchForField("itemID", j.itemID);
											if #searchResults > 0 then
												for k,searchResult in ipairs(searchResults) do
													if searchResult.providers then
														for l,provider in ipairs(searchResult.providers) do
															if provider[1] == 'i' and provider[2] == j.itemID then
																tinsert(regroup, j);
																break;
															end
														end
														break;
													end
												end
											end
										end
									end
								else
									tinsert(regroup, j);
								end
							end
						end
					end
				end
				if #regroup > 0 then
					if app.Settings:GetTooltipSetting("Lore") then
						for i,j in ipairs(regroup) do
							if j.lore and j[paramA] and j[paramA] == paramB then
								tinsert(info, 1, { left = j.lore, wrap = true, color = app.Colors.TooltipLore });
							end
						end
					end
					if app.Settings:GetTooltipSetting("Descriptions") then
						for i,j in ipairs(regroup) do
							if j.description and j[paramA] and j[paramA] == paramB then
								tinsert(info, 1, { left = j.description, wrap = true, color = app.Colors.TooltipDescription });
							end
						end
					end
					app.Sort(regroup, function(a, b)
						return not (a.headerID and a.headerID == app.HeaderConstants.COMMON_BOSS_DROPS) and b.headerID and b.headerID == app.HeaderConstants.COMMON_BOSS_DROPS;
					end);
				end
				group = regroup;
			end
		elseif paramA == "titleID" then
			-- Don't do anything
			local regroup = {};
			if app.Settings:Get("AccountMode") then
				for i,j in ipairs(group) do
					if app.RecursiveUnobtainableFilter(j) then
						tinsert(regroup, setmetatable({["g"] = {}}, { __index = j }));
					end
				end
			else
				for i,j in ipairs(group) do
					if app.RecursiveClassAndRaceFilter(j) and app.RecursiveUnobtainableFilter(j) then
						tinsert(regroup, setmetatable({["g"] = {}}, { __index = j }));
					end
				end
			end

			group = regroup;
		else
			-- Determine if this is a cache for an item
			local itemID;
			if not paramB then
				local itemString = string.match(paramA, "item[%-?%d:]+");
				if itemString then
					local itemID2 = select(2, strsplit(":", itemString));
					if itemID2 then
						itemID = tonumber(itemID2);
						paramA = "itemID";
						paramB = itemID;
					end
				else
					local kind, id = strsplit(":", paramA);
					kind = string.lower(kind);
					if id then id = tonumber(id); end
					if kind == "itemid" then
						paramA = "itemID";
						paramB = id;
						itemID = id;
					elseif kind == "questid" then
						paramA = "questID";
						paramB = id;
					elseif kind == "creatureid" or kind == "npcid" then
						paramA = "creatureID";
						paramB = id;
					end
				end
			elseif paramA == "itemID" then
				itemID = paramB;
			end

			if itemID then
				-- Show the unobtainable source text
				local u, e = 99999999;
				for i,j in ipairs(group) do
					if j.itemID == itemID then
						if j.u and u > j.u and (not j.crs or paramA == "itemID") then
							u = j.u;
						end
						if j.e then
							e = j.e;
						end
					end
				end
				if u < 99999999 then
					local reason = L["UNOBTAINABLE_ITEM_REASONS"][u];
					if reason and (not reason[5] or select(4, GetBuildInfo()) < reason[5]) then
						tinsert(info, { left = reason[2], wrap = true });
					end
				end
				if e then
					local reason = app.Modules.Events.GetEventTooltipNoteForGroup({ e = e });
					if reason then
						local left, right = strsplit(DESCRIPTION_SEPARATOR, reason);
						if right then
							tinsert(info, { left = left, right = right, color = app.Colors.TooltipDescription });
						else
							tinsert(info, { left = left, color = app.Colors.TooltipDescription });
						end
					end
				end
				local itemName, itemLink = GameTooltip:GetItem();
				if app.Settings:GetTooltipSetting("itemID") then tinsert(info, { left = L["ITEM_ID"], right = tostring(itemID) }); end
				if app.Settings:GetTooltipSetting("itemLevel") then tinsert(info, { left = "Item Level", right = select(4, GetItemInfo(itemLink or itemID)) }); end
				if app.Settings:GetTooltipSetting("itemString") and itemLink then tinsert(info, { left = "Item String", right = string.match(itemLink, "item[%-?%d:]+") }); end
				app.ShowSoftReservesForItem(itemID, info);

				local reagentCache = app.GetDataSubMember("Reagents", itemID);
				if reagentCache then
					for spellID,count in pairs(reagentCache[1]) do
						MergeClone(recipes, { ["spellID"] = spellID, ["collectible"] = false, ["count"] = count });
					end
					for craftedItemID,count in pairs(reagentCache[2]) do
						MergeClone(crafted, { ["itemID"] = craftedItemID, ["count"] = count });
						local searchResults = SearchForField("itemID", craftedItemID);
						if #searchResults > 0 then
							for i,o in ipairs(searchResults) do
								if not o.itemID and o.cost then
									-- Reagent for something that crafts a thing required for something else.
									MergeClone(group, { ["itemID"] = craftedItemID, ["count"] = count, ["g"] = { CreateObject(o) } });
								end
							end
						end
					end
				end
			end
		end

		-- Create a list of sources
		if app.Settings:GetTooltipSetting("SourceLocations") and (not paramA or (app.Settings:GetTooltipSetting(paramA == "creatureID" and "SourceLocations:Creatures" or "SourceLocations:Things"))) then
			local temp = {};
			local unfiltered = {};
			local abbrevs = L["ABBREVIATIONS"];
			local abbrevs_post = L["ABBREVIATIONS_POST"];
			if not abbrevs_post[" true "] then
				abbrevs_post[" %> " .. app.GetMapName(947)] = "";
				abbrevs_post[" %> " .. app.GetMapName(1415)] = "";
				abbrevs_post[" %> " .. app.GetMapName(1414)] = "";
				abbrevs_post[" false "] = " 0 ";
				abbrevs_post[" true "] = " 1 ";
			end
			for i,j in ipairs(group) do
				if j.parent and not GetRelativeValue(j, "hideText") and j.parent.parent
					and (app.Settings:GetTooltipSetting("SourceLocations:Completed") or not app.IsComplete(j)) then
					local text = BuildSourceText(paramA ~= "itemID" and j.parent or j, paramA ~= "itemID" and 1 or 0);
					for source,replacement in pairs(abbrevs) do
						text = string.gsub(text, source, replacement);
					end
					for source,replacement in pairs(abbrevs_post) do
						text = string.gsub(text, source, replacement);
					end

					local right = " ";
					if j.u then
						local reason = L["UNOBTAINABLE_ITEM_REASONS"][j.u];
						if reason and (not reason[5] or select(4, GetBuildInfo()) < reason[5]) then
							right = "|T" .. L["UNOBTAINABLE_ITEM_TEXTURES"][reason[1]] .. ":0|t";
						end
					end
					if j.rwp then right = right .. "|T" .. L["UNOBTAINABLE_ITEM_TEXTURES"][2] .. ":0|t"; end
					if j.e then right = right .. "|T" .. L["UNOBTAINABLE_ITEM_TEXTURES"][4] .. ":0|t"; end

					if not app.RecursiveClassAndRaceFilter(j.parent) then
						tinsert(unfiltered, { text, right .. "|TInterface\\FriendsFrame\\StatusIcon-Away:0|t" });
					elseif not app.RecursiveUnobtainableFilter(j.parent) then
						tinsert(unfiltered, { text, right .. "|TInterface\\FriendsFrame\\StatusIcon-DnD:0|t" });
					else
						tinsert(temp, { text, right });
					end
				end
			end
			if (#temp < 1 and not (paramA == "creatureID")) or app.Settings:Get("DebugMode") then
				for i,data in ipairs(unfiltered) do
					tinsert(temp, data);
				end
			end
			if #temp > 0 then
				local listing, listingByText = {}, {};
				local maximum = app.Settings:GetTooltipSetting("Locations");
				for i,data in ipairs(temp) do
					local text = data[1] or RETRIEVING_DATA;
					if not listingByText[text] then
						listingByText[text] = data;
						tinsert(listing, 1, data);
						if string.find(text, RETRIEVING_DATA) then working = true; end
					end
				end
				local count, splitCounts, splitCount = 0, { };
				for i,data in ipairs(listing) do
					local left, right = strsplit(DESCRIPTION_SEPARATOR, data[1]);
					left = left .. data[2];
					splitCount = splitCounts[left];
					if not splitCount then
						splitCount = { count = 0, data=data, variants ={} };
						splitCounts[left] = splitCount;
					end
					if right and not contains(splitCount.variants, right) then
						table.insert(splitCount.variants, right);
						if string.find(right, BATTLE_PET_SOURCE_2) then
							splitCount.count = splitCount.count + 1;
						end
					end
				end
				for left,splitCount in pairs(splitCounts) do
					if splitCount.count < 6 then
						if #splitCount.variants < 1 then
							tinsert(info, 1, { left = left, wrap = not string.find(left, " > ") });
							count = count + 1;
						else
							for i,right in ipairs(splitCount.variants) do
								tinsert(info, 1, { left = left, right = right, wrap = not string.find(left, " > ") });
								count = count + 1;
							end
						end
					else
						tinsert(info, 1, { left = left, right = TRACKER_HEADER_QUESTS, wrap = not string.find(left, " > ") });
						count = count + 1;
						for i,right in ipairs(splitCount.variants) do
							if not string.find(right, BATTLE_PET_SOURCE_2) then
								tinsert(info, 1, { left = left, right = right, wrap = not string.find(left, " > ") });
								count = count + 1;
							end
						end
					end
				end
				if count > maximum + 1 then
					for i=count,maximum + 1,-1 do
						table.remove(info, 1);
					end
					tinsert(info, 1, "And " .. (count - maximum) .. " other sources...");
				end
			end
		end

		-- Create an unlinked version of the object.
		if not group.g then
			local merged = {};
			for i,o in ipairs(group) do
				MergeClone(merged, o);
			end
			if #merged == 1 and merged[1][paramA] == paramB then
				group = merged[1];
				local symbolicLink = ResolveSymbolicLink(group);
				if symbolicLink then
					if group.g and #group.g >= 0 then
						for j=1,#symbolicLink,1 do
							MergeClone(group.g, symbolicLink[j]);
						end
					else
						for j=#symbolicLink,1,-1 do
							symbolicLink[j] = CreateObject(symbolicLink[j]);
						end
						group.g = symbolicLink;
					end
				end
			else
				for i,o in ipairs(merged) do
					local symbolicLink = ResolveSymbolicLink(o);
					if symbolicLink then
						o.symbolized = true;
						if o.g and #o.g >= 0 then
							for j=1,#symbolicLink,1 do
								MergeClone(o.g, symbolicLink[j]);
							end
						else
							for j=#symbolicLink,1,-1 do
								symbolicLink[j] = CreateObject(symbolicLink[j]);
							end
							o.g = symbolicLink;
						end
					end
				end
				group = CreateObject({ [paramA] = paramB });
				group.g = merged;
			end
		end

		-- Resolve Cost
		--print("GetCachedSearchResults", paramA, paramB);
		if paramA == "currencyID" then
			local costResults = SearchForField("currencyIDAsCost", paramB);
			if #costResults > 0 then
				if not group.g then group.g = {} end
				local usedToBuy = app.CreateNPC(app.HeaderConstants.VENDORS);
				usedToBuy.text = "Currency For";
				if not usedToBuy.g then usedToBuy.g = {}; end
				for i,o in ipairs(costResults) do
					MergeClone(usedToBuy.g, o);
				end
				MergeObject(group.g, usedToBuy);
			end
		elseif paramA == "itemID" then
			local costResults = SearchForField("itemIDAsCost", paramB);
			if #costResults > 0 then
				if not group.g then group.g = {} end
				local attunement = app.CreateNPC(app.HeaderConstants.QUESTS);
				if not attunement.g then attunement.g = {}; end
				local usedToBuy = app.CreateNPC(app.HeaderConstants.VENDORS);
				if not usedToBuy.g then usedToBuy.g = {}; end
				for i,o in ipairs(costResults) do
					if o.key == "instanceID" or ((o.key == "difficultyID" or o.key == "mapID" or o.key == "headerID") and (o.parent and GetRelativeValue(o.parent, "instanceID"))) then
						if app.Settings.Collectibles.Quests then
							local d = CreateObject(o);
							d.sourceParent = o.parent;
							d.collectible = true;
							d.collected = GetItemCount(paramB, true) > 0;
							d.progress = nil;
							d.total = nil;
							d.g = {};
							MergeObject(attunement.g, d);
						end
					else
						MergeClone(usedToBuy.g, o);
					end
				end
				if #attunement.g > 0 then
					attunement.text = "Attunement For";
					MergeObject(group.g, attunement);
				end
				if #usedToBuy.g > 0 then
					usedToBuy.text = "Currency For";
					MergeObject(group.g, usedToBuy);
				end
			end
		end

		if group.g then
			group.total = 0;
			group.progress = 0;
			app.UpdateGroups(group, group.g);
			if group.collectible then
				group.total = group.total + 1;
				if group.collected then
					group.progress = group.progress + 1;
				end
			end
		end

		if group.lore and app.Settings:GetTooltipSetting("Lore") and not (paramA == "titleID") then
			tinsert(info, 1, { left = group.lore, wrap = true, color = app.Colors.TooltipLore });
		end

		if group.description and app.Settings:GetTooltipSetting("Descriptions") and not (paramA == "titleID") then
			tinsert(info, 1, { left = group.description, wrap = true, color = app.Colors.TooltipDescription });
		end

		if group.nextEvent then
			local timeStrings = app.Modules.Events.GetEventTimeStrings(group.nextEvent);
			if timeStrings then
				for i,timeString in ipairs(timeStrings) do
					tinsert(info, 1, { left = timeString, wrap = true, color = app.Colors.TooltipDescription });
				end
			end
		end

		if group.rwp then
			tinsert(info, 1, { left = GetRemovedWithPatchString(group.rwp), wrap = true, color = app.Colors.RemovedWithPatch });
		end

		if group.awp then
			tinsert(info, 1, { left = GetAddedWithPatchString(group.awp), wrap = true, color = app.Colors.AddedWithPatch });
		end

		if group.isLimited then
			tinsert(info, 1, { left = L.LIMITED_QUANTITY, wrap = true, color = app.Colors.TooltipDescription });
		end

		if group.pvp then
			tinsert(info, { left = L["REQUIRES_PVP"] });
		end

		local showOtherCharacterQuests = app.Settings:GetTooltipSetting("Show:OtherCharacterQuests");
		if app.Settings:GetTooltipSetting("SummarizeThings") then
			-- Contents
			if group.g and #group.g > 0 then
				local entries = {};
				BuildContainsInfo(group.g, entries, paramA, paramB, "  ", app.noDepth and 99 or 1);
				if #entries > 0 then
					local realmName, left, right = GetRealmName();
					tinsert(info, { left = "Contains:" });
					if #entries < 25 then
						for i,item in ipairs(entries) do
							left = item.group.text or RETRIEVING_DATA;
							if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
							local mapID = GetBestMapForGroup(item.group);
							if mapID and mapID ~= app.CurrentMapID then left = left .. " (" .. app.GetMapName(mapID) .. ")"; end
							if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
							tinsert(info, { left = item.prefix .. left, right = item.right });

							if item.group.questID and not item.group.repeatable and showOtherCharacterQuests then
								local incompletes = {};
								for guid,character in pairs(ATTCharacterData) do
									if not character.ignored and character.realm == realmName
										and (not item.group.r or (character.factionID and item.group.r == character.factionID))
										and (not item.group.races or (character.raceID and contains(item.group.races, character.raceID)))
										and (not item.group.c or (character.classID and contains(item.group.c, character.classID)))
										and (character.Quests and not character.Quests[item.group.questID]) then
										incompletes[guid] = character;
									end
								end
								local desc, j = "", 0;
								for guid,character in pairs(incompletes) do
									if j > 0 then desc = desc .. ", "; end
									desc = desc .. (character.text or guid);
									j = j + 1;
								end
								if j > 0 then
									tinsert(info, { left = " ", right = string.gsub(desc, "-" .. realmName, ""), hash = "HASH" .. item.group.questID });
								end
							end
						end
					else
						for i=1,math.min(25, #entries) do
							local item = entries[i];
							left = item.group.text or RETRIEVING_DATA;
							if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
							local mapID = GetBestMapForGroup(item.group);
							if mapID and mapID ~= app.CurrentMapID then left = left .. " (" .. app.GetMapName(mapID) .. ")"; end
							if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
							tinsert(info, { left = item.prefix .. left, right = item.right });

							if item.group.questID and not item.group.repeatable and showOtherCharacterQuests then
								local incompletes = {};
								for guid,character in pairs(ATTCharacterData) do
									if not character.ignored and character.realm == realmName and character.Quests and not character.Quests[item.group.questID] then
										incompletes[guid] = character;
									end
								end
								local desc, j = "", 0;
								for guid,character in pairs(incompletes) do
									if j > 0 then desc = desc .. ", "; end
									desc = desc .. (character.text or guid);
									j = j + 1;
								end
								tinsert(info, { left = " ", right = string.gsub(desc, "-" .. realmName, ""), hash = "HASH" .. item.group.questID });
							end
						end
						local more = #entries - 25;
						if more > 0 then tinsert(info, { left = "And " .. more .. " more..." }); end
					end
				end
			end

			-- Crafted Items
			if crafted and #crafted > 0 then
				if app.Settings:GetTooltipSetting("Show:CraftedItems") then
					local entries = {};
					BuildContainsInfo(crafted, entries, paramA, paramB, "  ", app.noDepth and 99 or 1);
					if #entries > 0 then
						local left, right;
						tinsert(info, { left = "Used to Craft:" });
						if #entries < 25 then
							app.Sort(entries, function(a, b)
								if a.group.name then
									if b.group.name then
										return a.group.name <= b.group.name;
									end
									return true;
								end
								return false;
							end);
							for i,item in ipairs(entries) do
								left = item.group.text or RETRIEVING_DATA;
								if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
								if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
								tinsert(info, { left = item.prefix .. left, right = item.right });
							end
						else
							for i=1,math.min(25, #entries) do
								local item = entries[i];
								left = item.group.text or RETRIEVING_DATA;
								if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
								if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
								tinsert(info, { left = item.prefix .. left, right = item.right });
							end
							local more = #entries - 25;
							if more > 0 then tinsert(info, { left = "And " .. more .. " more..." }); end
						end
					end
				end
			end

			-- Recipes
			if recipes and #recipes > 0 then
				if app.Settings:GetTooltipSetting("Show:Recipes") then
					local entries, left, right = {};
					BuildContainsInfo(recipes, entries, paramA, paramB, "  ", app.noDepth and 99 or 1);
					if #entries > 0 then
						tinsert(info, { left = "Used in Recipes:" });
						if #entries < 25 then
							app.Sort(entries, function(a, b)
								if a and a.group.name then
									if b and b.group.name then
										return a.group.name <= b.group.name;
									end
									return true;
								end
								return false;
							end);
							for i,item in ipairs(entries) do
								left = item.group.text or RETRIEVING_DATA;
								if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
								if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
								tinsert(info, { left = item.prefix .. left, right = item.right });
							end
						else
							for i=1,math.min(25, #entries) do
								local item = entries[i];
								left = item.group.text or RETRIEVING_DATA;
								if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
								if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
								tinsert(info, { left = item.prefix .. left, right = item.right });
							end
							local more = #entries - 25;
							if more > 0 then tinsert(info, { left = "And " .. more .. " more..." }); end
						end
					end
				end
				if app.Settings:GetTooltipSetting("Show:SpellRanks") then
					if app.Settings:Get("AccountMode") or app.Settings:Get("DebugMode") then
						-- Show all characters
					else
						-- Show only the current character
						local nonTrivialRecipes = {};
						for i, o in pairs(recipes) do
							local craftTypeID = app.CurrentCharacter.SpellRanks[o.spellID];
							if craftTypeID and craftTypeID > 0 then
								o.craftTypeID = craftTypeID;
								tinsert(nonTrivialRecipes, o);
							end
						end
						local entries, left, right = {};
						BuildContainsInfo(nonTrivialRecipes, entries, paramA, paramB, "  ", app.noDepth and 99 or 1);
						if #entries > 0 then
							tinsert(info, { left = "Available Skill Ups:" });
							if #entries < 25 then
								app.Sort(entries, function(a, b)
									if a.group.craftTypeID == b.group.craftTypeID then
										if a.group.name then
											if b.group.name then
												return a.group.name <= b.group.name;
											end
											return true;
										end
										return false;
									end
									return a.group.craftTypeID > b.group.craftTypeID;
								end);
								for i,item in ipairs(entries) do
									left = item.group.text or RETRIEVING_DATA;
									if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
									if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
									tinsert(info, { left = item.prefix .. left, right = item.right });
								end
							else
								for i=1,math.min(25, #entries) do
									local item = entries[i];
									left = item.group.text or RETRIEVING_DATA;
									if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
									if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
									tinsert(info, { left = item.prefix .. left, right = item.right });
								end
								local more = #entries - 25;
								if more > 0 then tinsert(info, { left = "And " .. more .. " more..." }); end
							end
						end
					end
				end
			end
		end

		-- If the item is a recipe, then show which characters know this recipe.
		if group.collectible and app.Settings:GetTooltipSetting("KnownBy") then
			local knownBy, kind = {}, nil;
			if group.speciesID then
				kind = "Owned by ";
				for guid,character in pairs(ATTCharacterData) do
					if character.BattlePets and character.BattlePets[group.speciesID] then
						table.insert(knownBy, character);
					end
				end
			elseif group.spellID then
				kind = "Known by ";
				for guid,character in pairs(ATTCharacterData) do
					if character.Spells and character.Spells[group.spellID] then
						table.insert(knownBy, character);
					end
				end
			elseif group.itemID then
				kind = "Owned by ";
				for guid,character in pairs(ATTCharacterData) do
					if (character.RWP and character.RWP[group.itemID])
					or (character.Toys and character.Toys[group.itemID]) then
						table.insert(knownBy, character);
					end
				end
			elseif group.achievementID then
				kind = "Completed by ";
				for guid,character in pairs(ATTCharacterData) do
					if character.Achievements and character.Achievements[group.achievementID] then
						table.insert(knownBy, character);
					end
				end
			elseif group.questID then
				kind = "Completed by ";
				for guid,character in pairs(ATTCharacterData) do
					if character.Quests and character.Quests[group.questID] then
						table.insert(knownBy, character);
					end
				end
			end
			if #knownBy > 0 and kind then
				app.Sort(knownBy, app.SortDefaults.Name);
				local desc = kind;
				for i,character in ipairs(knownBy) do
					if i > 1 then desc = desc .. ", "; end
					desc = desc .. (character.text or "???");
					if group.itemID and character == app.CurrentCharacter then
						local count = GetItemCount(group.itemID, true);
						if count and count > 1 then
							desc = desc .. " (x" .. count .. ")";
						end
					end
				end
				tinsert(info, { left = string.gsub(desc, "-" .. GetRealmName(), ""), wrap = true, color = app.Colors.TooltipDescription });
			end
		end

		-- If the user wants to show the progress of this search result, do so.
		if app.Settings:GetTooltipSetting("Progress") and (not group.spellID or #info > 0) then
			group.collectionText = (app.Settings:GetTooltipSetting("ShowIconOnly") and GetProgressTextForRow or GetProgressTextForTooltip)(group);

			-- add the progress as a new line for encounter tooltips instead of using right text since it can overlap the NPC name
			if group.encounterID then tinsert(info, 1, { left = "Progress", right = group.collectionText }); end
		end

		-- If there was any informational text generated, then attach that info.
		if #info > 0 then
			local uniques, dupes, _ = {}, {};
			for i,item in ipairs(info) do
				_ = item.hash or item.left;
				if not _ then
					tinsert(uniques, item);
				else
					if item.right then _ = _ .. item.right; end
					if not dupes[_] then
						dupes[_] = true;
						tinsert(uniques, item);
					end
				end
			end

			for i,item in ipairs(uniques) do
				if item.color then item.r, item.g, item.b = HexToRGB(item.color); end
			end
			group.tooltipInfo = uniques;
		end

		-- Cache the result for a while depending on if there is more work to be done.
		cache[2] = (working and 0.01) or 100000000;
		cache[3] = group;
		return group;
	end
end
local function SendGroupChatMessage(msg)
	if IsInRaid() then
		SendChatMessage(msg, "RAID", nil, nil);
	elseif IsInGroup(LE_PARTY_CATEGORY_HOME) then
		SendChatMessage(msg, "PARTY", nil, nil);
	end
end
local function SendGroupMessage(msg)
	if IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and IsInInstance() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "INSTANCE_CHAT")
	elseif IsInRaid() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "RAID")
	elseif IsInGroup(LE_PARTY_CATEGORY_HOME) then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "PARTY")
	end
end
local function SendGuildMessage(msg)
	if IsInGuild() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "GUILD");
	else
		app.events.CHAT_MSG_ADDON("ATTC", msg, "WHISPER", "player");
	end
end
local function SendResponseMessage(msg, player)
	if UnitInRaid(player) or UnitInParty(player) then
		SendGroupMessage("to\t" .. player .. "\t" .. msg);
	else
		C_ChatInfo.SendAddonMessage("ATTC", msg, "WHISPER", player);
	end
end

-- Item Information Lib
local function SearchForLink(link)
	if string.match(link, "item") then
		-- Parse the link and get the itemID and bonus ids.
		local itemString = string.match(link, "item[%-?%d:]+") or link;
		if itemString then
			-- Cache the Item ID and the Suffix ID.
			local _, itemID, _, _, _, _, _, suffixID = strsplit(":", itemString);
			if itemID then
				-- Ensure that the itemID and suffixID are properly formatted.
				itemID = tonumber(itemID) or 0;
				if itemID > 0 then
					if suffixID and suffixID ~= "" then
						suffixID = tonumber(suffixID) or 0;
						if suffixID > 0 then
							-- Record the Suffix as valid for this itemID.
							local suffixes = GetDataSubMember("ValidSuffixesPerItemID", itemID);
							if not suffixes then
								suffixes = {};
								GetDataSubMember("ValidSuffixesPerItemID", itemID, suffixes);
							end
							if not suffixes[suffixID] then
								suffixes[suffixID] = 1;
								app.ClearItemCache();
							end
						end
					end
					return SearchForField("itemID", itemID), "itemID", itemID;
				end
			end
		end
	else
		local kind, id = strsplit(":", link);
		kind = string.gsub(string.lower(kind), "id", "ID");
		if string.sub(kind,1,2) == "|c" then
			kind = string.sub(kind,11);
		end
		if string.sub(kind,1,2) == "|h" then
			kind = string.sub(kind,3);
		end
		if id then id = tonumber(strsplit("|[", id) or id); end
		--print("SearchForLink A:", kind, id);
		--print("SearchForLink B:", string.gsub(string.gsub(link, "|c", "c"), "|h", "h"));
		if kind == "i" then
			kind = "itemID";
		elseif kind == "quest" or kind == "q" then
			kind = "questID";
		elseif kind == "faction" or kind == "rep" then
			kind = "factionID";
		elseif kind == "ach" or kind == "achievement" then
			kind = "achievementID";
		elseif kind == "creature" or kind == "npcID" or kind == "npc" or kind == "n" then
			kind = "creatureID";
		elseif kind == "currency" then
			kind = "currencyID";
		elseif kind == "spell" or kind == "enchant" or kind == "talent" or kind == "recipe" or kind == "mount" then
			kind = "spellID";
		elseif kind == "pet" or kind == "battlepet" then
			kind = "speciesID";
		elseif kind == "filterforrwp" then
			kind = "filterForRWP";
		elseif kind == "pettype" or kind == "pettypeID" then
			kind = "petTypeID";
		end
		local cache;
		if id then
			cache = SearchForField(kind, id);
			if #cache == 0 then
				local obj = CreateObject({
					key = kind, [kind] = id,
					hash = kind .. ":" .. id,
				});
				if not obj.__type then
					obj.icon = "Interface\\ICONS\\INV_Misc_EngGizmos_20";
					obj.text = "Search Results for '" .. obj.hash .. "'";
					local response = app:BuildSearchResponse(app:GetDataCache().g, kind, id);
					if response and #response > 0 then
						obj.g = {};
						for i,o in ipairs(response) do
							tinsert(obj.g, o);
						end
					end
				else
					obj.description = "@Crieve: This has not been sourced in ATT yet!";
				end
				tinsert(cache, obj);
			end
		else
			local obj = { hash = kind };
			obj.icon = "Interface\\ICONS\\INV_Misc_EngGizmos_20";
			obj.text = "Search Results for '" .. obj.hash .. "'";
			local response = app:BuildSearchResponseForField(app:GetDataCache().g, kind);
			if response and #response > 0 then
				obj.g = {};
				for i,o in ipairs(response) do
					tinsert(obj.g, o);
				end
			end
			cache = {};
			tinsert(cache, obj);
		end
		return cache, kind, id;
	end
end
local function SearchForMissingItemsRecursively(group, listing)
	if group.visible then
		if (group.collectible or (group.itemID and group.total and group.total > 0)) and (not group.b or group.b == 2 or group.b == 3) then
			table.insert(listing, group);
		end
		if group.g and group.expanded then
			-- Go through the sub groups and determine if any of them have a response.
			for i, subgroup in ipairs(group.g) do
				SearchForMissingItemsRecursively(subgroup, listing);
			end
		end
	end
end
local function SearchForMissingItems(group)
	local listing = {};
	SearchForMissingItemsRecursively(group, listing);
	return listing;
end
local function SearchForMissingItemNames(group)
	-- Auctionator needs unique Item Names. Nothing else.
	local uniqueNames = {};
	for i,group in ipairs(SearchForMissingItems(group)) do
		local name = group.name;
		if name then uniqueNames[name] = 1; end
	end

	-- Build the array of names.
	local arr = {};
	for key,value in pairs(uniqueNames) do
		table.insert(arr, key);
	end
	return arr;
end
local function UpdateSearchResults(searchResults)
	if searchResults and #searchResults > 0 then
		-- Attempt to cleanly refresh the data.
		local fresh = false;

		-- Mark all results as marked. This prevents a double +1 on parents.
		for i,result in ipairs(searchResults) do
			if result.visible and result.parent and result.parent.total then
				result.marked = true;
			end
		end

		-- Only unmark and +1 marked search results.
		for i,result in ipairs(searchResults) do
			if result.marked then
				result.marked = nil;
				if result.total then
					-- This is an item that has a relative set of groups
					app.UpdateParentProgress(result);

					-- If this is NOT a group...
					if not result.g then
						-- If we've collected the item, use the "Show Collected Items" filter.
						result.visible = app.CollectedItemVisibilityFilter(result);
					end
				else
					app.UpdateParentProgress(result.parent);

					-- If we've collected the item, use the "Show Collected Items" filter.
					result.visible = app.CollectedItemVisibilityFilter(result);
				end
				fresh = true;
			end
		end

		-- If the data is fresh, don't force a refresh.
		if fresh then
			app:RefreshDataCompletely("UpdateSearchResults");
		else
			app:RefreshDataQuietly("UpdateSearchResults", true);
		end
	end
end
app.SearchForLink = SearchForLink;

-- Dynamic Categories
do
local onClickForDynamicCategory = function(row, button)
	local window = row.ref.dynamicWindow;
	if window then
		if button == "RightButton" then
			window:Toggle();
			return true;
		elseif not row.ref.g or #row.ref.g < 1 then
			if #window.data.g < 1 then window:ForceRebuild(); end
			local prime = app:GetWindow("Prime");
			local primeData = prime.data;
			if primeData then
				local progress, total = window.data.progress or 0, window.data.total or 0;
				local g = CloneReference(window.data).g;
				for i,o in ipairs(g) do
					o.parent = row.ref;
				end
				row.ref.g = g;
				row.ref.progress = progress;
				row.ref.total = total;
				prime:Refresh();
			end
		end
	end
end
local onUpdateForDynamicCategory = function(data)
	data.dynamicWindow:ForceRebuild();
	--print("onUpdateForDynamicCategory", data.text, data.progress, data.total);
	local parent, total = data.parent, data.total;
	if parent and total then
		parent.progress = parent.progress + data.progress;
		parent.total = parent.total + total;
		data.visible = app.GroupVisibilityFilter(data);
	else
		data.visible = true;
	end
	return true;
end
app.CreateDynamicCategory = app.CreateClass("DynamicCategory", "suffix", {
	["dynamicWindow"] = function(t)
		local window = app:GetWindow(t.suffix);
		if window then return window; end
	end,
	["dynamicWindowData"] = function(t)
		local window = app:GetWindow(t.suffix);
		if window and window.data then
			return window.data;
		end
		return app.EmptyTable;
	end,
	["text"] = function(t)
		return t.dynamicWindowData.text or ("Dynamic Category: " .. t.suffix);
	end,
	["icon"] = function(t)
		return t.dynamicWindowData.icon or "Interface/ICONS/INV_Misc_Gear_02";
	end,
	["description"] = function(t)
		return t.dynamicWindowData.description;
	end,
	["progress"] = function(t)
		return t.dynamicWindowData.progress;
	end,
	["total"] = function(t)
		return t.dynamicWindowData.total;
	end,
	["summary"] = function(t)
		local total = t.total;
		if not total or total < 1 then
			return "[Click to Cache]";
		end
	end,
	["OnClick"] = function(t)
		return onClickForDynamicCategory;
	end,
	["OnUpdate"] = function(t)
		return onUpdateForDynamicCategory;
	end,
});
end
function app:GetDataCache()
	if app.Categories then
		local rootData = setmetatable({
			text = L["TITLE"],
			hash = "ATT",
			icon = app.asset("logo_32x32"),
			preview = app.asset("Discord_2_128"),
			description = L["DESCRIPTION"],
			font = "GameFontNormalLarge",
			expanded = true,
			visible = true,
			progress = 0,
			total = 0,
			g = {},
		}, {
			__index = function(t, key)
				if key == "title" then
					return t.modeString .. DESCRIPTION_SEPARATOR .. t.untilNextPercentage;
				elseif key == "progressText" then
					if t.total < 1 then
						local primeData = app.CurrentCharacter.PrimeData;
						if primeData then
							return app.GetProgressColorText(primeData.progress, primeData.total);
						end
					end
					return app.GetProgressColorText(t.progress, t.total);
				elseif key == "modeString" then
					return app.Settings:GetModeString();
				elseif key == "untilNextPercentage" then
					if t.total < 1 then
						local primeData = app.CurrentCharacter.PrimeData;
						if primeData then
							return app.GetNumberOfItemsUntilNextPercentage(primeData.progress, primeData.total);
						end
					end
					return app.GetNumberOfItemsUntilNextPercentage(t.progress, t.total);
				else
					-- Something that isn't dynamic.
					return table[key];
				end
			end
		});
		local g = rootData.g;

		-- Dungeons & Raids
		if app.Categories.Instances then
			table.insert(g, {
				text = GROUP_FINDER,
				icon = app.asset("Category_D&R"),
				g = app.Categories.Instances
			});
		end

		-- Outdoor Zones
		if app.Categories.Zones then
			table.insert(g, {
				mapID = 947,
				text = BUG_CATEGORY2,
				icon = app.asset("Category_Zones"),
				g = app.Categories.Zones
			});
		end

		-- World Drops
		if app.Categories.WorldDrops then
			table.insert(g, {
				text = TRANSMOG_SOURCE_4,
				icon = app.asset("Category_WorldDrops"),
				g = app.Categories.WorldDrops,
				isWorldDropCategory = true
			});
		end

		-- Crafted Items
		if app.Categories.Craftables then
			table.insert(g, {
				text = LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM,
				icon = app.asset("Category_Crafting"),
				DontEnforceSkillRequirements = true,
				g = app.Categories.Craftables,
				isCraftedCategory = true
			});
		end

		-- Professions
		if app.Categories.Professions then
			table.insert(g, {
				text = TRADE_SKILLS,
				icon = app.asset("Category_Professions"),
				description = "This section will only show your character's professions outside of Account and Debug Mode.",
				g = app.Categories.Professions
			});
		end

		-- Holidays
		if app.Categories.Holidays then
			table.insert(g, app.CreateNPC(app.HeaderConstants.HOLIDAYS, {
				description = "These events occur at consistent dates around the year based on and themed around real world holiday events.",
				g = app.Categories.Holidays,
				OnUpdate = function(t)
					local now = C_DateAndTime_GetServerTimeLocal();
					app.Sort(t.g, function(a, b)
						return (a.nextEvent and a.nextEvent.start or 0) < (b.nextEvent and b.nextEvent.start or 0);
					end);
					local temp = {};
					for i=#t.g,1,-1 do
						local a = t.g[i];
						if a and a.nextEvent and a.nextEvent["end"] < now then
							table.remove(t.g, i);
							tinsert(temp, a);
						end
					end
					for i=#temp,1,-1 do
						tinsert(t.g, temp[i]);
					end
				end,
				isHolidayCategory = true,
			}));
		end

		-- Expansion Features
		if app.Categories.ExpansionFeatures and #app.Categories.ExpansionFeatures > 0 then
			table.insert(g, {
				text = "Expansion Features",
				icon = app.asset("Category_ExpansionFeatures"),
				g = app.Categories.ExpansionFeatures
			});
		end

		-- In-Game Store
		if app.Categories.InGameShop then
			table.insert(g, app.CreateNPC(app.HeaderConstants.IN_GAME_SHOP, {
				g = app.Categories.InGameShop,
				expanded = false
			}));
		end

		-- PvP
		if app.Categories.PVP then
			table.insert(g, app.CreateNPC(app.HeaderConstants.PVP, {
				g = app.Categories.PVP,
				isPVPCategory = true
			}));
		end

		-- Promotions
		if app.Categories.Promotions then
			table.insert(g, {
				text = BATTLE_PET_SOURCE_8,
				icon = app.asset("Category_Promo"),
				description = "This section is for real world promotions that seeped extremely rare content into the game prior to some of them appearing within the In-Game Shop.",
				g = app.Categories.Promotions,
				isPromotionCategory = true
			});
		end

		-- Skills
		if app.Categories.Skills then
			table.insert(g, {
				text = SKILLS,
				icon = "Interface\\ICONS\\SPELL_NATURE_THUNDERCLAP",
				g = app.Categories.Skills
			});
		end

		-- World Events
		if app.Categories.WorldEvents then
			table.insert(g, {
				text = BATTLE_PET_SOURCE_7;
				icon = app.asset("Category_Event"),
				description = "These events occur at different times in the game's timeline, typically as one time server wide events. Special celebrations such as Anniversary events and such may be found within this category.",
				g = app.Categories.WorldEvents,
				isEventCategory = true,
			});
		end

		-- Now that we have all of the root data, cache it.
		app.CacheFields(rootData);

		-- The achievements window has a mix of dynamic and non-dynamic information.
		local achievementDynamicCategory = app.CreateDynamicCategory("Achievements");
		BuildGroups(achievementDynamicCategory.dynamicWindow.data);
		table.insert(g, achievementDynamicCategory);

		-- Dynamic Categories (Content generated and managed by a separate Window)
		table.insert(g, app.CreateDynamicCategory("Battle Pets"));
		table.insert(g, app.CreateDynamicCategory("Factions"));
		table.insert(g, app.CreateDynamicCategory("Flight Paths"));
		table.insert(g, app.CreateDynamicCategory("Mounts"));
		table.insert(g, app.CreateDynamicCategory("Titles"));
		table.insert(g, app.CreateDynamicCategory("Toys"));

		-- Track Deaths!
		table.insert(g, app:CreateDeathClass());

		-- Yourself.
		table.insert(g, app.CreateUnit("player", {
			description = "Awarded for logging in.\n\nGood job! YOU DID IT!\n\nOnly visible while in Debug Mode.",
			races = { app.RaceIndex },
			c = { app.ClassIndex },
			r = app.FactionID,
			collected = 1,
			nmr = false,
			OnUpdate = function(self)
				self.lvl = app.Level;
				if app.Settings:Get("DebugMode") then
					self.collectible = true;
				else
					self.collectible = false;
				end
			end
		}));

		-- Now assign the parent hierarchy for this cache.
		BuildGroups(rootData);

		-- Determine how many tierID instances could be found
		local tierCounter = 0;
		local tierCache = SearchForFieldContainer("tierID");
		for key,value in pairs(tierCache) do
			tierCounter = tierCounter + 1;
		end
		if tierCounter == 1 then
			-- Purge the Tier Objects. This is the Classic Layout style.
			for key,values in pairs(tierCache) do
				for j,value in ipairs(values) do
					local parent = value.parent;
					if parent then
						-- Remove the tier object reference.
						for i=#parent.g,1,-1 do
							if parent.g[i] == value then
								table.remove(parent.g, i);
								break;
							end
						end

						-- Feed the children to its parent.
						if value.g then
							for i,child in ipairs(value.g) do
								child.parent = parent;
								table.insert(parent.g, child);
							end
						end
					end
				end
			end

			-- Wipe out the tier object cache.
			wipe(tierCache);
		end

		-- All future calls to this function will return the root data.
		app.GetDataCache = function()
			return rootData;
		end
		return rootData;
	end
end

-- Tooltip Functions
local EXTERMINATOR = {
	["Player-4372-00B131BB"] = true,	-- Aivet
	["Player-4372-004A0418"] = true,	-- Jubilee
	["Player-4372-00273DCA"] = true,	-- Havadin
	["Player-4372-00DED426"] = true,	-- Krieve
	["Player-4372-00862D32"] = true,	-- Aethbric
	["Player-4372-0128B376"] = true,	-- Alizewsaur
	["Player-4372-012A730E"] = true,	-- Allysandra
	["Player-4372-00FE5CE7"] = true,	-- Amiera
	["Player-4372-0073B95B"] = true,	-- Amyralynn
	["Player-4372-0087049A"] = true,	-- Asandra
	["Player-4372-003159A9"] = true,	-- Astromarus
	["Player-4372-006A97BA"] = true,	-- Azwel
	["Player-4372-0014521D"] = true,	-- Bombeon
	["Player-4372-00E86132"] = true,	-- Borlemont
	["Player-4372-010B9178"] = true,	-- Braven
	["Player-4372-0063664F"] = true,	-- Brittbrat
	["Player-4372-001BA8B1"] = true,	-- Darkirontank
	["Player-4372-0100DF23"] = true,	-- Dizplaced
	["Player-4372-01230376"] = true,	-- Drixxtwo
	["Player-4372-002719C4"] = true,	-- Drunkninja
	["Player-4372-0124174F"] = true,	-- Dubsteve
	["Player-4372-00BD6CC7"] = true,	-- Enthira
	["Player-4372-00A3A0FD"] = true,	-- Fairplay
	["Player-4372-0046DDA0"] = true,	-- Firasia
	["Player-4372-004A7A3F"] = true,	-- Fortress
	["Player-4372-00CF7821"] = true,	-- Glas
	["Player-4372-00E7DEC4"] = true,	-- Gnubs
	["Player-4372-0108DCC1"] = true,	-- Grotesque
	["Player-4372-00E8CC3C"] = true,	-- Hairyplodder
	["Player-4372-00D38E94"] = true,	-- Havachant
	["Player-4372-00312AD9"] = true,	-- Hewn
	["Player-4372-0046F7E8"] = true,	-- Holochops
	["Player-4372-007AF4B7"] = true,	-- Intothefray
	["Player-4372-01125B10"] = true,	-- Jonaya
	["Player-4372-011C1FE9"] = true,	-- Katalysm
	["Player-4372-00EBCC07"] = true,	-- Lilithann
	["Player-4372-0075A187"] = true,	-- Loknido
	["Player-4372-01390D2A"] = true,	-- Manamontanna
	["Player-4372-00FE5DA2"] = true,	-- Mimico
	["Player-4372-00D7B345"] = true,	-- Narom
	["Player-4372-01353958"] = true,	-- Naromot
	["Player-4372-01294037"] = true,	-- Necrid
	["Player-4372-00793732"] = true,	-- Nirv
	["Player-4372-01250D6D"] = true,	-- Pewpeu
	["Player-4372-0008B144"] = true,	-- Pixl
	["Player-4372-00C2F945"] = true,	-- Rooni
	["Player-4372-0058A418"] = true,	-- Saitosan [Druid]
	["Player-4372-0123A5BE"] = true,	-- Sheisskopf
	["Player-4372-00F82168"] = true,	-- Semiha
	["Player-4372-001F92DA"] = true,	-- Shadrac
	["Player-4372-00732218"] = true,	-- Solow
	["Player-4372-01091DE4"] = true,	-- Tacolock
	["Player-4372-00451B8E"] = true,	-- Tinybit
	["Player-4372-00E5AE25"] = true,	-- Villeinia
	["Player-4372-0066A25C"] = true,	-- Viran
	["Player-4372-00D96703"] = true,	-- Worfin
};
local GOLD_TYCOON = {
	["Player-4372-004A0418"] = true,	-- Jubilee
	["Player-4372-00273DCA"] = true,	-- Havadin
	["Player-4372-0068D548"] = true,	-- Headphones
	["Player-4372-00F2D620"] = true,	-- Notloknido
	["Player-4372-00FF84F0"] = true,	-- Saitosan [Priest]
};
local SCARAB_LORD = {
	["Player-4372-000B3C4D"] = true,	-- Congelatore
	["Player-4372-00A64EA0"] = true,	-- Macpayn
};
local function AttachTooltipRawSearchResults(self, lineNumber, group)
	if group then
		-- If there was info text generated for this search result, then display that first.
		if group.tooltipInfo and #group.tooltipInfo > 0 then
			local left, right, o;
			local leftname = self:GetName() .. "TextLeft";
			local rightname = self:GetName() .. "TextRight";
			for i,entry in ipairs(group.tooltipInfo) do
				local found = false;
				left = entry.left or " ";
				for i=self:NumLines(),1,-1 do
					if _G[leftname..i]:GetText() == left then
						o = _G[rightname..i];
						if o and o:GetText() == entry.right then
							found = true;
							break;
						end
					end
				end
				if not found then
					right = entry.right;
					if right then
						if entry.r then
							self:AddDoubleLine(left, right, entry.r, entry.g, entry.b, entry.r, entry.g, entry.b);
						else
							self:AddDoubleLine(left, right);
						end
					elseif entry.r then
						if entry.wrap then
							self:AddLine(left, entry.r, entry.g, entry.b, 1);
						else
							self:AddLine(left, entry.r, entry.g, entry.b);
						end
					else
						if entry.wrap then
							self:AddLine(left, 1, 1, 1, 1);
						else
							self:AddLine(left);
						end
					end
				end
			end
		end

		-- If the user has Show Collection Progress turned on.
		if group.encounterID then
			self:Show();
		elseif group.collectionText and self:NumLines() > 0 then
			local rightSide = _G[self:GetName() .. "TextRight" .. (lineNumber or 1)];
			if rightSide then
				rightSide:SetText(group.collectionText);
				rightSide:Show();
			end
		end
	end
end
local function AttachTooltipSearchResults(self, lineNumber, search, method, ...)
	AttachTooltipRawSearchResults(self, lineNumber, GetCachedSearchResults(search, method, ...));
end
local function AttachTooltip(self)
	if not self.ATTCProcessing then
		self.ATTCProcessing = true;
		if (not InCombatLockdown() or app.Settings:GetTooltipSetting("DisplayInCombat")) and app.Settings:GetTooltipSetting("Enabled") then
			local numLines = self:NumLines();
			if numLines > 0 then
				--[[--
				-- Debug all of the available fields on the tooltip.
				for i,j in pairs(self) do
					self:AddDoubleLine(tostring(i), tostring(j));
				end
				self:Show();
				self:AddDoubleLine("GetItem", tostring(select(2, self:GetItem()) or "nil"));
				self:AddDoubleLine("GetSpell", tostring(select(2, self:GetSpell()) or "nil"));
				self:AddDoubleLine("GetUnit", tostring(select(2, self:GetUnit()) or "nil"));
				--]]--

				-- Does the tooltip have an owner?
				local owner = self:GetOwner();
				if owner then
					if owner.SpellHighlightTexture then
						-- Actionbars, don't want that.
						return true;
					end
					if owner.cooldownWrapper then
						local parent = owner:GetParent();
						if parent then
							parent = parent:GetParent();
							if parent and parent.fanfareToys then
								-- Toy Box, don't want that.
								return true;
							end
						end
					end
				end

				-- Does the tooltip have a target?
				local target = select(2, self:GetUnit());
				if target then
					-- Yes.
					local guid = UnitGUID(target);
					if guid then
						local type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = strsplit("-",guid);
						-- print(guid, type, npcID);
						if type == "Player" then
							if guid == "Player-4372-0000390A" then
								local leftSide = _G[self:GetName() .. "TextLeft1"];
								if leftSide then
									leftSide:SetText("|c" .. app.Colors.Raid .. UnitName(target) .. " the Completionist|r");
								end
								local rightSide = _G[self:GetName() .. "TextRight2"];
								leftSide = _G[self:GetName() .. "TextLeft2"];
								if leftSide and rightSide then
									leftSide:SetText(L["TITLE"]);
									leftSide:Show();
									rightSide:SetText("Author");
									rightSide:Show();
								else
									self:AddDoubleLine(L["TITLE"], "Author");
								end
							elseif SCARAB_LORD[guid] then
								local leftSide = _G[self:GetName() .. "TextLeft1"];
								if leftSide then leftSide:SetText("|c" .. app.Colors.Raid .. "Scarab Lord " .. UnitName(target) .. "|r"); end
							elseif GOLD_TYCOON[guid] then
								local leftSide = _G[self:GetName() .. "TextLeft1"];
								if leftSide then leftSide:SetText("|c" .. app.Colors.Raid .. "Gold Tycoon " .. UnitName(target) .. "|r"); end
							elseif EXTERMINATOR[guid] then
								local leftSide = _G[self:GetName() .. "TextLeft1"];
								if leftSide then leftSide:SetText("|cffa335ee" .. UnitName(target) .. " the Exterminator|r"); end
							elseif guid == "Player-4372-00006B41" then
								local leftSide = _G[self:GetName() .. "TextLeft1"];
								if leftSide then leftSide:SetText("|cffF58CBA" .. UnitName(target) .. " the Huggler|r"); end
							elseif guid == "Player-4647-031D0890" then
								local leftSide = _G[self:GetName() .. "TextLeft1"];
								if leftSide then leftSide:SetText("|cff665a2c" .. UnitName(target) .. " the Time-Loser|r"); end
								local rightSide = _G[self:GetName() .. "TextRight2"];
								if rightSide then rightSide:SetText(GetCollectionIcon(0)); end
								self:AddLine("This scumbag abused an auto-invite addon to steal the Time-Lost Proto Drake from a person that had them on their friends list. ATT has deemed this unacceptable behaviour and will forever stain this player's reputation so long as they remain on the server.", 0.4, 0.8, 1, true);
							end
						elseif type == "Creature" or type == "Vehicle" then
							if app.Settings:GetTooltipSetting("creatureID") then self:AddDoubleLine(L["CREATURE_ID"], tostring(npcID)); end
							AttachTooltipSearchResults(self, 1, "creatureID:" .. npcID, SearchForField, "creatureID", tonumber(npcID));
						end
						return true;
					end
				end

				-- Does the tooltip have a spell? [Mount Journal, Action Bars, etc]
				local spellID = select(2, self:GetSpell());
				if spellID then
					AttachTooltipSearchResults(self, 1, "spellID:" .. spellID, SearchForField, "spellID", spellID);
					self:Show();
					if owner and owner.ActiveTexture then
						self.ATTCProcessing = nil;
					end
					return true;
				end

				-- Does the tooltip have an itemlink?
				local link = select(2, self:GetItem());
				if link then AttachTooltipSearchResults(self, 1, link, SearchForLink, link); end

				-- If the owner has a ref, it's an ATT row. Ignore it.
				if owner and owner.ref then return true; end

				local objectID = app.GetBestObjectIDForName(_G[self:GetName() .. "TextLeft1"]:GetText());
				if objectID then
					AttachTooltipSearchResults(self, 1, "objectID:" .. objectID, SearchForField, "objectID", objectID);
					self:Show();
					return true;
				end
			end
		end
	end
end
local function ClearTooltip(self)
	self.ATTCProcessing = nil;
end
local function ShowItemCompareTooltips(...)
	local items = { ... };
	local count = #items;
	if count > 0 then
		for i,item in ipairs(items) do
			local shoppingTooltip = GameTooltip.shoppingTooltips[i];
			if shoppingTooltip then
				shoppingTooltip.attItem = type(item) == "number" and select(2, GetItemInfo(item)) or item;
				pcall(shoppingTooltip.SetHyperlink, shoppingTooltip, shoppingTooltip.attItem);
			else
				break;
			end
		end

		-- Quick maths
		-- Taken from https://github.com/Ennie/wow-ui-source/blob/master/FrameXML/GameTooltip.lua
		local shoppingTooltip1, shoppingTooltip2, shoppingTooltip3 = unpack(GameTooltip.shoppingTooltips);
		local leftPos, rightPos = (GameTooltip:GetLeft() or 0), (GameTooltip:GetRight() or 0);
		if GetScreenWidth() - rightPos < leftPos then
			side = "left";
		else
			side = "right";
		end

		-- see if we should slide the tooltip
		local anchorType = GameTooltip:GetAnchorType();
		if anchorType and anchorType ~= "ANCHOR_PRESERVE" then
			local totalWidth = shoppingTooltip1:GetWidth();
			if count > 1 then totalWidth = totalWidth + shoppingTooltip2:GetWidth(); end
			if count > 2 then totalWidth = totalWidth + shoppingTooltip3:GetWidth(); end
			if ( (side == "left") and (totalWidth > leftPos) ) then
				GameTooltip:SetAnchorType(anchorType, (totalWidth - leftPos), 0);
			elseif ( (side == "right") and (rightPos + totalWidth) >  GetScreenWidth() ) then
				GameTooltip:SetAnchorType(anchorType, -((rightPos + totalWidth) - GetScreenWidth()), 0);
			end
		end

		-- anchor the compare tooltips
		if count > 2 then
			shoppingTooltip3:SetOwner(GameTooltip, "ANCHOR_NONE");
			shoppingTooltip3:ClearAllPoints();
			if side == "left" then
				shoppingTooltip3:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, -10);
			else
				shoppingTooltip3:SetPoint("TOPLEFT", GameTooltip, "TOPRIGHT", 0, -10);
			end
			pcall(shoppingTooltip3.SetHyperlink, shoppingTooltip3, shoppingTooltip3.attItem);
			shoppingTooltip3:Show();
			shoppingTooltip1:SetOwner(shoppingTooltip3, "ANCHOR_NONE");
		else
			shoppingTooltip1:SetOwner(GameTooltip, "ANCHOR_NONE");
		end
		shoppingTooltip1:ClearAllPoints();
		if side == "left" then
			if count > 2 then
				shoppingTooltip1:SetPoint("TOPRIGHT", shoppingTooltip3, "TOPLEFT", 0, 0);
			else
				shoppingTooltip1:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, -10);
			end
		else
			if count > 2 then
				shoppingTooltip1:SetPoint("TOPLEFT", shoppingTooltip3, "TOPRIGHT", 0, 0);
			else
				shoppingTooltip1:SetPoint("TOPLEFT", GameTooltip, "TOPRIGHT", 0, -10);
			end
		end
		pcall(shoppingTooltip1.SetHyperlink, shoppingTooltip1, shoppingTooltip1.attItem);
		shoppingTooltip1:Show();

		if count > 1 then
			shoppingTooltip2:SetOwner(shoppingTooltip1, "ANCHOR_NONE");
			shoppingTooltip2:ClearAllPoints();
			if side == "left" then
				shoppingTooltip2:SetPoint("TOPRIGHT", shoppingTooltip1, "TOPLEFT", 0, 0);
			else
				shoppingTooltip2:SetPoint("TOPLEFT", shoppingTooltip1, "TOPRIGHT", 0, 0);
			end
			pcall(shoppingTooltip2.SetHyperlink, shoppingTooltip2, shoppingTooltip2.attItem);
			shoppingTooltip2:Show();
		end

		return shoppingTooltip1, shoppingTooltip2, shoppingTooltip3;
	end
end
app.ShowItemCompareTooltips = ShowItemCompareTooltips;

-- 10.0.2
-- https://wowpedia.fandom.com/wiki/Patch_10.0.2/API_changes#Tooltip_Changes
if TooltipDataProcessor then
	local Enum_TooltipDataType = Enum.TooltipDataType;
	local TooltipTypes = {
		[Enum_TooltipDataType.Toy] = "itemID",
		[Enum_TooltipDataType.Item] = "itemID",
		[Enum_TooltipDataType.Spell] = "spellID",
		[Enum_TooltipDataType.UnitAura] = "spellID",
		--[Enum_TooltipDataType.Mount] = "spellID",
		--[Enum_TooltipDataType.Macro] = "spellID",	-- Possibly?
		[Enum_TooltipDataType.Achievement] = "achievementID",
		[Enum_TooltipDataType.Quest] = "questID",
		[Enum_TooltipDataType.QuestPartyProgress] = "questID",
		--[Enum_TooltipDataType.BattlePet] = "speciesID",
		--[Enum_TooltipDataType.CompanionPet] = "speciesID",
		[Enum_TooltipDataType.Currency] = "currencyID",
		[Enum_TooltipDataType.InstanceLock] = "instanceID",
	};
	--[[
	for key,id in pairs(Enum_TooltipDataType) do
		if not TooltipTypes[id] then
			print("Not handling Tooltip Type", key, id);
		end
	end
	]]--
	TooltipDataProcessor.AddTooltipPostCall(TooltipDataProcessor.AllTypes, function(tooltip, data)
		if InCombatLockdown() and not app.Settings:GetTooltipSetting("DisplayInCombat") then
			return;
		end
		if not app.Settings:GetTooltipSetting("Enabled") then
			return;
		end

		local enumType = data.type;
		local key = TooltipTypes[enumType];
		if key then
			if key == "" then
				-- Intentionally blacklisted.
				return;
			end

			-- Try the default.
			local id = data.id;
			if id then
				AttachTooltipSearchResults(tooltip, 1, key .. ":" .. id, SearchForField, key, id);
				return;
			end

			local name, link, id = TooltipUtil.GetDisplayedItem(tooltip);
			if link and id then
				if id == 137642 then -- skip Mark of Honor for now
					AttachTooltipSearchResults(self, 1, link, (function() end), "itemID", 137642);
					return true;
				else
					AttachTooltipSearchResults(tooltip, 1, link, SearchForLink, link);
					return;
				end
			end

			local name, spellID = TooltipUtil.GetDisplayedSpell(tooltip);
			if spellID then
				AttachTooltipSearchResults(tooltip, 1, "spellID:" .. spellID, SearchForField, "spellID", spellID);
				return;
			end
		elseif enumType == 10 then
			-- Mounts!
			local spellID = select(2, C_MountJournal.GetMountInfoByID(data.id));
			if spellID then
				AttachTooltipSearchResults(tooltip, 1, "spellID:" .. spellID, SearchForField, "spellID", spellID);
				return;
			end
		elseif enumType == 4 then
			-- Objects!
			local objectID = app.GetBestObjectIDForName(data.lines[1].leftText);
			if objectID then
				AttachTooltipSearchResults(tooltip, 1, "objectID:" .. objectID, SearchForField, "objectID", objectID);
				return true;
			end
		elseif enumType == 21 then
			-- Minimap Mouseover
			local content = data.lines;
			if content and #content > 0 then
				local text = content[1].leftText;
				local arr = { strsplit("|", text) };
				if #arr == 3 then text = strsub(arr[3], 2); end
				local objectID = app.GetBestObjectIDForName(text);
				if objectID then
					AttachTooltipSearchResults(tooltip, 1, "objectID:" .. objectID, SearchForField, "objectID", objectID);
					return true;
				end
			end
		elseif enumType == 2 then
			-- Units!
			local name, t, guid = TooltipUtil.GetDisplayedUnit(tooltip);
			if guid then
				local type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = strsplit("-",guid);
				-- print(guid, type, npcID);
				if type == "Player" then
					if guid == "Player-4372-0000390A" or guid == "Player-76-0895E23B" then
						local leftSide = _G[tooltip:GetName() .. "TextLeft1"];
						if leftSide then
							leftSide:SetText("|c" .. app.Colors.Raid .. name .. " the Completionist|r");
						end
						local rightSide = _G[tooltip:GetName() .. "TextRight2"];
						leftSide = _G[tooltip:GetName() .. "TextLeft2"];
						if leftSide and rightSide then
							leftSide:SetText(L["TITLE"]);
							leftSide:Show();
							rightSide:SetText("Author");
							rightSide:Show();
						else
							tooltip:AddDoubleLine(L["TITLE"], "Author");
						end
					elseif SCARAB_LORD[guid] then
						local leftSide = _G[tooltip:GetName() .. "TextLeft1"];
						if leftSide then leftSide:SetText("|c" .. app.Colors.Raid .. "Scarab Lord " .. name .. "|r"); end
					elseif GOLD_TYCOON[guid] then
						local leftSide = _G[tooltip:GetName() .. "TextLeft1"];
						if leftSide then leftSide:SetText("|c" .. app.Colors.Raid .. "Gold Tycoon " .. name .. "|r"); end
					elseif EXTERMINATOR[guid] then
						local leftSide = _G[tooltip:GetName() .. "TextLeft1"];
						if leftSide then leftSide:SetText("|cffa335ee" .. name .. " the Exterminator|r"); end
					elseif guid == "Player-4372-00006B41" then
						local leftSide = _G[tooltip:GetName() .. "TextLeft1"];
						if leftSide then leftSide:SetText("|cffF58CBA" .. name .. " the Huggler|r"); end
					elseif guid == "Player-4647-031D0890" then
						local leftSide = _G[tooltip:GetName() .. "TextLeft1"];
						if leftSide then leftSide:SetText("|cff665a2c" .. name .. " the Time-Loser|r"); end
						local rightSide = _G[tooltip:GetName() .. "TextRight2"];
						if rightSide then rightSide:SetText(GetCollectionIcon(0)); end
						tooltip:AddLine("This scumbag abused an auto-invite addon to steal the Time-Lost Proto Drake from a person that had them on their friends list. ATT has deemed this unacceptable behaviour and will forever stain this player's reputation so long as they remain on the server.", 0.4, 0.8, 1, true);
					end
				elseif type == "Creature" or type == "Vehicle" then
					if app.Settings:GetTooltipSetting("creatureID") then tooltip:AddDoubleLine(L["CREATURE_ID"], tostring(npcID)); end
					AttachTooltipSearchResults(tooltip, 1, "creatureID:" .. npcID, SearchForField, "creatureID", tonumber(npcID));
				end
				return true;
			end
		elseif enumType == 25 then
			-- Macro!
			local content = data.lines;
			if content and #content > 1 then
				local tooltipType = content[2].type;
				if tooltipType == 13 then
					local spellID = content[1].tooltipID;
					if spellID then
						AttachTooltipSearchResults(tooltip, 1, "spellID:" .. spellID, SearchForField, "spellID", spellID);
						return;
					end
				elseif tooltipType == 29 then
					local itemID = content[1].tooltipID;
					if itemID then
						AttachTooltipSearchResults(tooltip, 1, "itemID:" .. itemID, SearchForField, "itemID", itemID);
						return;
					end
				end
			end
		else
			--[[
			for key,value in pairs(data) do
				if type(value) == "table" then
					tooltip:AddLine(key);
					for key2,value2 in pairs(value) do
						tooltip:AddLine(" " .. key2);
						if type(value2) == "table" then
							for key3,value3 in pairs(value2) do
								tooltip:AddDoubleLine("  " .. key3, tostring(value3));
							end
						else
							tooltip:AddDoubleLine(" " .. key2, tostring(value2));
						end
					end
				else
					tooltip:AddDoubleLine(key, tostring(value));
				end
			end
			-- Report unhandled types.
			for key,id in pairs(Enum_TooltipDataType) do
				if id == enumType then
					print("Unhandled Tooltip Type", key, enumType);
					return;
				end
			end
			print("Unhandled Tooltip Type", enumType);
			]]--
		end
	end)
else
	GameTooltip:HookScript("OnTooltipSetQuest", AttachTooltip);
	GameTooltip:HookScript("OnTooltipSetItem", AttachTooltip);
	GameTooltip:HookScript("OnTooltipSetUnit", AttachTooltip);
	GameTooltip:HookScript("OnTooltipCleared", ClearTooltip);
	GameTooltip:HookScript("OnShow", AttachTooltip);
	GameTooltip:HookScript("OnUpdate", AttachTooltip);
	GameTooltip:HookScript("OnHide", ClearTooltip);
	ItemRefTooltip:HookScript("OnShow", AttachTooltip);
	ItemRefTooltip:HookScript("OnTooltipSetQuest", AttachTooltip);
	ItemRefTooltip:HookScript("OnTooltipSetItem", AttachTooltip);
	ItemRefTooltip:HookScript("OnTooltipCleared", ClearTooltip);
	ItemRefShoppingTooltip1:HookScript("OnShow", AttachTooltip);
	ItemRefShoppingTooltip1:HookScript("OnTooltipSetQuest", AttachTooltip);
	ItemRefShoppingTooltip1:HookScript("OnTooltipSetItem", AttachTooltip);
	ItemRefShoppingTooltip1:HookScript("OnTooltipCleared", ClearTooltip);
	ItemRefShoppingTooltip2:HookScript("OnShow", AttachTooltip);
	ItemRefShoppingTooltip2:HookScript("OnTooltipSetQuest", AttachTooltip);
	ItemRefShoppingTooltip2:HookScript("OnTooltipSetItem", AttachTooltip);
	ItemRefShoppingTooltip2:HookScript("OnTooltipCleared", ClearTooltip);
	WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipSetQuest", AttachTooltip);
	WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipSetItem", AttachTooltip);
	WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipSetUnit", AttachTooltip);
	WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipCleared", ClearTooltip);
	WorldMapTooltip:HookScript("OnTooltipSetItem", AttachTooltip);
	WorldMapTooltip:HookScript("OnTooltipSetQuest", AttachTooltip);
	WorldMapTooltip:HookScript("OnTooltipCleared", ClearTooltip);
	WorldMapTooltip:HookScript("OnShow", AttachTooltip);
end
if select(4, GetBuildInfo()) > 11403 then
	app:RegisterEvent("CURSOR_CHANGED");
	app.events.CURSOR_CHANGED = function()
		app:StartATTCoroutine("UpdateTooltip", function()
			while not GameTooltip:IsShown() do
				coroutine.yield();
			end
			AttachTooltip(GameTooltip);
		end);
	end
end

local oldItemSetHyperlink = ItemRefTooltip.SetHyperlink;
function ItemRefTooltip:SetHyperlink(link, a, b, c, d, e, f)
	-- Make sure to call the default function, but with a try-catch.
	local status, err = pcall(function () oldItemSetHyperlink(self, link, a, b, c, d, e, f) end)
	if not status then
		-- Search for the Link in the database
		local linkType, id, params = strsplit(':', link)
		local cmd = linkType .. "ID" .. ":" .. id;
		local group = GetCachedSearchResults(cmd, SearchForLink, cmd);
		if group then app:CreateMiniListForGroup(group); end
	end
end


-- Achievement Lib
(function()
local SetAchievementCollected = function(t, achievementID, collected)
	return app.SetCollected(t, "Achievements", achievementID, collected);
end

-- These achievement handlers are good to use at any point.
local LOREMASTER_CreateQuests = function(t, extraQuestIDs)
	local parent = t.sourceParent or t.parent;
	if parent then
		-- Get the quests list from the zone itself.
		local g, quests, count = parent.parent and parent.parent.g, {}, 0;
		if g and #g > 0 then
			for i,o in ipairs(g) do
				if o.headerID == app.HeaderConstants.QUESTS then
					-- Clone the list to prevent dirtying the quest list in the zone.
					for j,quest in ipairs(o.g) do
						if quest.key == "questID" and not quest.repeatable then
							count = count + 1;
							quests[count] = quest;
						end
					end
					break;
				end
			end
		end

		-- If additional questIDs were manually included, let's do some extra work.
		if extraQuestIDs and #extraQuestIDs > 0 then
			for i,questID in ipairs(extraQuestIDs) do
				local results = SearchForField("questID", questID);
				if #results > 0 then
					local quest = results[1];
					if quest.key == "questID" and not quest.repeatable then
						count = count + 1;
						quests[count] = quest;
					end
				end
			end
		end
		if count > 0 then
			return quests;
		end
	end
end;
local LOREMASTER_CreateQuestsAndStructures = function(t, mapID, extraQuestIDs)
	-- Grab all of the quests on the continent.
	local response;
	local results = SearchForField("mapID", mapID);
	local count = #results;
	if count < 1 then
		return;
	elseif count > 1 then
		-- Uh wasn't expecting this.
		local bestResult;
		for i=1,#results,1 do
			local g = results[i].g;
			if g and not bestResult or #g > #bestResult.g then
				bestResult = results[i];
			end
		end
		response = app:BuildSearchResponseForField(bestResult.g, "questID");
	else
		response = app:BuildSearchResponseForField(results[1].g, "questID");
	end


	local quests, structures = {}, {};
	if response then
		-- Get the quests list from the zone itself.
		local zones_header = {text=BUG_CATEGORY2,icon = app.asset("Category_Zones"),description = "These are outdoor quests that involve the associated maps for the continent.",g = response};
		app:BuildFlatSearchResponseForField(response, "questID", quests);
		if #zones_header.g > 0 then
			tinsert(structures, zones_header);
		end

		-- Get a list of all of the mapIDs in this structure.
		response = {};
		app:BuildFlatSearchResponseForField(zones_header.g, "mapID", response);
		if #response > 0 then
			local mapIDs = {};
			for i,o in ipairs(response) do
				if o.mapID and not mapIDs[o.mapID] then
					mapIDs[o.mapID] = true;
				end
				if o.maps then
					for j,id in ipairs(o.maps) do
						if not mapIDs[id] then
							mapIDs[id] = true;
						end
					end
				end
			end
			response = app:BuildSearchFilteredResponse(app.Categories.Instances, function(group)
				if group.questID and not group.repeatable then
					if group.coords then
						for i,coord in ipairs(group.coords) do
							if coord[3] and mapIDs[coord[3]] then
								return true;
							end
						end
					end
					if group.maps then
						for i,id in ipairs(group.maps) do
							if mapIDs[id] then
								return true;
							end
						end
					end
					return false;
				end
			end);
			if response then
				local dungeon_header = {text=GROUP_FINDER,icon = app.asset("Category_D&R"),description = "These are dungeon quests that involve the associated maps for the continent. They may or may not count towards the loremaster achievement. Just get it done and don't be lazy or complain to me.\n\n - Crieve",g = response};
				app:BuildFlatSearchResponseForField(response, "questID", quests);
				if #dungeon_header.g > 0 then
					tinsert(structures, 1, dungeon_header);
				end
			end
		end
	end

	-- If additional questIDs were manually included, let's do some extra work.
	if extraQuestIDs and #extraQuestIDs > 0 then
		for i,questID in ipairs(extraQuestIDs) do
			local results = SearchForField("questID", questID);
			if #results > 0 then
				tinsert(quests, 1, results[1]);
			end
		end
	end

	-- Return the Outdoor Zones and Dungeon structures.
	return quests, structures;
end
local commonAchievementHandlers = {
["COMPANIONS_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local template = {};
		for i,o in pairs(SearchForFieldContainer("speciesID")) do
			table.insert(template, o[1]);
		end

		local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], template)).data;
		clone.OnTooltip = t.OnTooltip;
		clone.OnUpdate = t.OnUpdate;
		clone.rank = t.rank;
		return true;
	end
end,
["DEDICATED_10M_OnUpdate"] = function(t)
	rawset(t, "collectible", nil);
	if app.Settings:Get("DebugMode") or app.Settings:Get("AccountMode") then
		return false;
	elseif IsInGroup() and GetNumGroupMembers() >= 9 then
		rawset(t, "collectible", false);
		return true;
	end
end,
["DEDICATED_25M_OnUpdate"] = function(t)
	rawset(t, "collectible", nil);
	if app.Settings:Get("DebugMode") or app.Settings:Get("AccountMode") then
		return false;
	elseif IsInGroup() and GetNumGroupMembers() >= 21 then
		rawset(t, "collectible", false);
		return true;
	end
end,
["EXALTED_REP_OnInit"] = function(t, factionID)
	t.BuildReputation = function()
		local r = t.rep;
		if not r then
			local f = SearchForField("factionID", factionID);
			if #f > 0 then
				r = f[1];
				for i,o in ipairs(f) do
					if o.key == "factionID" then
						if o.maxReputation then
							r = CloneData(o);
							r.maxReputation = nil;
						else
							r = o;
						end
						break;
					end
				end
				t.rep = r;
			end
		end
		return r;
	end
	return t;
end,
["EXALTED_REP_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local r = t.rep or (t.BuildReputation and t:BuildReputation());
		local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], { r })).data;
		clone.description = t.description;
		return true;
	end
end,
["EXALTED_REP_OnUpdate"] = function(t)
	if t.collectible then
		local r = t.rep or (t.BuildReputation and t:BuildReputation());
		if not r then return true; end
		t:SetAchievementCollected(t.achievementID, r.standing == 8);
	end
end,
["EXALTED_REP_OnTooltip"] = function(t)
	if t.collectible then
		local r = t.rep or (t.BuildReputation and t:BuildReputation());
		if r then
			GameTooltip:AddLine(" ");
			GameTooltip:AddDoubleLine(" |T" .. r.icon .. ":0|t " .. r.text, app.L[r.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		end
	end
end,
["EXALTED_REPS_OnInit"] = function(t, ...)
	local factionIDs = { ... };
	t.BuildReputations = function()
		local reps = t.reps;
		if not reps then
			reps = {};
			for i,factionID in ipairs(factionIDs) do
				local f = SearchForField("factionID", factionID);
				if #f > 0 then
					local best = f[1];
					for _,o in ipairs(f) do
						if o.key == "factionID" then
							best = o;
							break;
						end
					end
					if best.maxReputation then
						best = CloneData(best);
						best.maxReputation = nil;
					end
					tinsert(reps, best);
				end
			end
			if #reps > 0 then
				t.reps = reps;
			else
				reps = nil;
			end
		end
		return reps;
	end
	return t;
end,
["EXALTED_REPS_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local reps = t.reps or (t.BuildReputations and t:BuildReputations());
		local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], reps)).data;
		clone.description = t.description;
		return true;
	end
end,
["EXALTED_REPS_OnTooltip"] = function(t)
	if t.collectible then
		local reps = t.reps or (t.BuildReputations and t:BuildReputations());
		if reps then
			GameTooltip:AddLine(" ");
			for i,faction in ipairs(reps) do
				GameTooltip:AddDoubleLine(" |T" .. faction.icon .. ":0|t " .. faction.text, app.L[faction.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
			end
		end
	end
end,
["LOREMASTER_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local data = t.quests or (t.BuildQuests and t:BuildQuests());
		local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], data)).data;
		clone.description = t.description;
		return true;
	end
end,
["LOREMASTER_CONTINENT_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local data = t.structures or (t.BuildStructures and t:BuildStructures()) or t.quests;
		local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], data)).data;
		clone.description = t.description;
		return true;
	end
end,
["MOUNTS_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local template,r = {},{};
		for i,o in pairs(SearchForFieldContainer("spellID")) do
			if ((o[1].f and o[1].f == app.FilterConstants.MOUNTS)
			or (o[1].filterID and o[1].filterID == app.FilterConstants.MOUNTS)) and not r[i] then
				table.insert(template, o[1]);
				r[i] = 1;
			end
		end

		local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], template)).data;
		clone.OnTooltip = t.OnTooltip;
		clone.OnUpdate = t.OnUpdate;
		clone.rank = t.rank;
		return true;
	end
end,
["REPUTATIONS_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local template = {};
		for i,o in ipairs(app:GetDataCache().g) do
			if o.headerID == app.HeaderConstants.FACTIONS then
				for j,p in ipairs(o.g) do
					if (not p.minReputation or (p.minReputation[1] == p.factionID and p.minReputation[2] >= 41999)) and (not p.maxReputation or (p.maxReputation[1] ~= p.factionID and p.reputation >= 0)) then
						table.insert(template, p);
					end
				end
			end
		end

		local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], template)).data;
		clone.OnTooltip = t.OnTooltip;
		clone.OnUpdate = t.OnUpdate;
		clone.rank = t.rank;
		return true;
	end
end,
};
app.CommonAchievementHandlers = commonAchievementHandlers;

local fields = {
	["collectible"] = function(t)
		return app.Settings.Collectibles.Achievements;
	end,
	["collected"] = function(t)
		if app.CurrentCharacter.Achievements[t.achievementID] then return 1; end
		if app.Settings.AccountWide.Achievements and ATTAccountWideData.Achievements[t.achievementID] then return 2; end
	end,
	["OnUpdate"] = function(t) ResolveSymbolicLink(t); end,
};
local categoryFields = {
	["icon"] = function(t)
		return app.asset("Category_Achievements");
	end,
};
if GetCategoryInfo and (GetCategoryInfo(92) ~= "" and GetCategoryInfo(92) ~= nil) then
	-- Achievements are in. We can use the API.
	local GetAchievementCategory = _G["GetAchievementCategory"];
	fields.text = function(t)
		return t.link or "|cffffff00[" .. (t.name or ("@CRIEVE: INVALID ACHIEVEMENT " .. t.achievementID)) .. "]|r";
	end
	fields.name = function(t)
		local name = select(2, GetAchievementInfo(t.achievementID));
		if name then return name; end
		local data = L.ACHIEVEMENT_DATA[t.achievementID];
		if data and data[2] then return data[2]; end
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						return app.ObjectNames[v[2]];
					elseif v[1] == "i" then
						return GetItemInfo(v[2]);
					end
				end
			end
		end
		if t.spellID then return GetSpellInfo(t.spellID); end
	end
	fields.link = function(t)
		return GetAchievementLink(t.achievementID);
	end
	fields.icon = function(t)
		local name = select(10, GetAchievementInfo(t.achievementID));
		if name then return name; end
		local data = L.ACHIEVEMENT_DATA[t.achievementID];
		if data and data[3] then return data[3]; end
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						local icon = app.ObjectIcons[v[2]];
						if icon then return icon; end
					elseif v[1] == "i" then
						return select(5, GetItemInfoInstant(v[2])) or "Interface\\Worldmap\\Gear_64Grey";
					end
				end
			end
		end
		if t.spellID then return select(3, GetSpellInfo(t.spellID)); end
		return t.parent.icon or "Interface\\Worldmap\\Gear_64Grey";
	end
	fields.parentCategoryID = function(t)
		local data = GetAchievementCategory(t.achievementID);
		if data then return data; end
		data = L.ACHIEVEMENT_DATA[t.achievementID];
		if data then return data[1]; end
		return -1;
	end
	fields.SetAchievementCollected = function(t)
		if t.achievementID == 5788 or t.achievementID == 6059 then
			return SetAchievementCollected;
		else
			print("Attempted to retrieve the function SetAchievementCollected from the Achievement object. (no longer available)");
			return function(t, achievementID, collected)
				print("Attempted to set achievement " .. achievementID .. " as collected: " .. (collected and 1 or 0));
			end
		end
	end
	fields.isStatistic = function(t)
		return select(15, GetAchievementInfo(t.achievementID));
	end
	local onTooltipForAchievement = function(t)
		local achievementID = t.achievementID;
		if achievementID and IsShiftKeyDown() then
			local criteriaDatas,criteriaDatasByUID = {}, {};
			for criteriaID=1,99999,1 do
				local criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, criteriaUID = GetAchievementCriteriaInfoByID(achievementID, criteriaID);
				if criteriaString then
					criteriaDatasByUID[criteriaUID] = true;
					tinsert(criteriaDatas, {
						" [" .. criteriaUID .. "]: " .. tostring(criteriaString),
						"(" .. tostring(assetID) .. " @ " .. tostring(criteriaType) .. ") " .. tostring(quantityString) .. " " .. GetCompletionIcon(completed)
					});
				end
			end
			local totalCriteria = GetAchievementNumCriteria(achievementID) or 0;
			if totalCriteria > 0 then
				for criteriaIndex=1,totalCriteria,1 do
					local criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, criteriaUID = GetAchievementCriteriaInfo(achievementID, criteriaIndex, true);
					if criteriaString and (not criteriaDatasByUID[criteriaUID] or criteriaUID == 0) then
						tinsert(criteriaDatas, {
							" [" .. criteriaUID .. " @ Index: " .. criteriaIndex .. "]: " .. tostring(criteriaString),
							"(" .. tostring(assetID) .. " @ " .. tostring(criteriaType) .. ") " .. tostring(quantityString) .. " " .. GetCompletionIcon(completed)
						});
					end
				end
			end
			if #criteriaDatas > 0 then
				GameTooltip:AddLine(" ", 1, 1, 1);
				GameTooltip:AddDoubleLine("Total Criteria", tostring(#criteriaDatas), 0.8, 0.8, 1);
				for i,criteriaData in ipairs(criteriaDatas) do
					GameTooltip:AddDoubleLine(criteriaData[1], criteriaData[2], 1, 1, 1, 1, 1, 1);
				end
			end
		end
	end
	local onTooltipForAchievementCriteria = function(t)
		local achievementID = t.achievementID;
		if achievementID then
			GameTooltip:AddDoubleLine(L.CRITERIA_FOR, "|cffffff00[" .. (select(2, GetAchievementInfo(achievementID)) or RETRIEVING_DATA) .. "]|r");
			if IsShiftKeyDown() then
				local criteriaID = t.criteriaID;
				if criteriaID then
					GameTooltip:AddLine(" ", 1, 1, 1);
					local criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, criteriaUID = t.GetInfo(achievementID, criteriaID, true)
					if criteriaString then
						GameTooltip:AddDoubleLine(" [" .. criteriaUID .. "]: " .. tostring(criteriaString),
							"(" .. tostring(assetID) .. " @ " .. tostring(criteriaType) .. ") " .. tostring(quantityString) .. " " .. GetCompletionIcon(completed), 1, 1, 1, 1, 1, 1);
					end
				end
			end
		end
	end
	fields.OnTooltip = function(t)
		return onTooltipForAchievement;
	end
	categoryFields.text = function(t)
		local data = GetCategoryInfo(t.achievementCategoryID);
		if data then return data; end
		data = L.ACHIEVEMENT_CRITERIA_DATA[t.achievementCategoryID];
		if data then return data[2]; end
		return RETRIEVING_DATA .. " achcat:" .. t.achievementCategoryID;
	end
	categoryFields.parentCategoryID = function(t)
		local data = select(2, GetCategoryInfo(t.achievementCategoryID));
		if data then return data; end
		data = L.ACHIEVEMENT_CRITERIA_DATA[t.achievementCategoryID];
		if data then return data[1]; end
		return -1;
	end
	app.CreateAchievement = app.CreateClass("Achievement", "achievementID", fields);
	app.CreateAchievementCriteria = app.CreateClass("AchievementCriteria", "criteriaID", {
		["achievementID"] = function(t)
			return t.achID or t.criteriaParent.achievementID;
		end,
		["criteriaParent"] = function(t)
			return t.sourceParent or t.parent or app.EmptyTable;
		end,
		["index"] = function(t)
			return 1;
		end,
		["collectible"] = function(t)
			return app.Settings.Collectibles.Achievements;
		end,
		["trackable"] = function(t)
			return true;
		end,
		["text"] = function(t)
			return "|cffffff00[Criteria: " .. (t.name or RETRIEVING_DATA) .. "]|r";
		end,
		["name"] = function(t)
			local achievementID = t.achievementID;
			if achievementID then
				local criteriaID = t.criteriaID;
				if criteriaID then
					return t.GetInfo(achievementID, criteriaID, true) or ("achievementID:" .. achievementID .. ":" .. criteriaID);
				end
			end
		end,
		["icon"] = function(t)
			if t.providers then
				for k,v in ipairs(t.providers) do
					if v[2] > 0 then
						if v[1] == "o" then
							local icon = app.ObjectIcons[v[2]];
							if icon then return icon; end
						elseif v[1] == "i" then
							return select(5, GetItemInfoInstant(v[2])) or "Interface\\Icons\\INV_Misc_Bag_10";
						end
					end
				end
			end
			local achievementID = t.achievementID;
			if achievementID then
				return select(10, GetAchievementInfo(achievementID));
			end
		end,
		["model"] = function(t)
			if t.providers then
				for k,v in ipairs(t.providers) do
					if v[2] > 0 then
						if v[1] == "o" then
							local model = app.ObjectModels[v[2]];
							if model then return model; end
						end
					end
				end
			end
		end,
		["collected"] = function(t)
			-- Check to see if the criteria was completed.
			local achievementID = t.achievementID;
			if achievementID then
				if app.CurrentCharacter.Achievements[achievementID] then return 1; end
				if app.Settings.AccountWide.Achievements and ATTAccountWideData.Achievements[achievementID] then return 2; end

				local criteriaID = t.criteriaID;
				if criteriaID then
					local collected = false;
					local status, err = pcall(function()
						collected = select(3, t.GetInfo(achievementID, criteriaID, true));
					end);
					if not status then
						print("ERROR", achievementID, criteriaID, err);
					end
					return collected;
				end
			end
		end,
		["saved"] = function(t)
			-- Check to see if the criteria was completed.
			local achievementID = t.achievementID;
			if achievementID then
				if app.CurrentCharacter.Achievements[achievementID] then return true; end
				local criteriaID = t.criteriaID;
				if criteriaID then
					return select(3, t.GetInfo(achievementID, criteriaID, true));
				end
			end
		end,
		["OnTooltip"] = function()
			return onTooltipForAchievementCriteria;
		end,
		GetInfo = function()
			return GetAchievementCriteriaInfoByID;
		end,
	},
	"WithIndex", {
		GetInfo = function()
			return GetAchievementCriteriaInfo;
		end;
	}, (function(t) return t.criteriaID < 100; end));

	local function CheckAchievementCollectionStatus(achievementID)
		achievementID = tonumber(achievementID);
		SetAchievementCollected(SearchForField("achievementID", achievementID)[1], achievementID, select(13, GetAchievementInfo(achievementID)));
	end
	local function refreshAchievementCollection()
		if ATTAccountWideData then
			for achievementID,container in pairs(SearchForFieldContainer("achievementID")) do
				local id = tonumber(achievementID);
				if achievementID ~= 5788 then
					SetAchievementCollected(container[1], id, select(13, GetAchievementInfo(id)));
				end
			end
		end
	end
	tinsert(app.EventHandlers.OnRecalculate, refreshAchievementCollection);
	app:RegisterEvent("ADDON_LOADED");
	app:RegisterEvent("ACHIEVEMENT_EARNED");
	app.events.ACHIEVEMENT_EARNED = CheckAchievementCollectionStatus;
	app.events.ADDON_LOADED = function(addonName)
		if addonName == "Blizzard_AchievementUI" then
			refreshAchievementCollection();
			app:UnregisterEvent("ADDON_LOADED");
		end
	end

	-- Achievements are supported in this version, so we don't need to manually check anything!
	-- Most calculations that were previously in the OnUpdate can now exist in a build script instead.
	commonAchievementHandlers.EXPLORATION_OnClick = function(row, button)
		if button == "RightButton" then
			local t = row.ref;
			local areas = t.areas;
			if not areas then
				local g = (t.sourceParent or t.parent).parent.g;
				if g and #g > 0 then
					for i,o in ipairs(g) do
						if o.headerID == app.HeaderConstants.EXPLORATION then
							areas = o.g;
							break;
						end
					end
					if not areas then return; end
				else
					return;
				end
				t.areas = areas;
			end
			local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], areas)).data;
			clone.description = t.description;
			return true;
		end
	end
	commonAchievementHandlers.LOREMASTER_CONTINENT_OnUpdate = function(t, mapID, ...)
		t.OnUpdate = nil;
		local extraQuestIDs = { ... };
		t.BuildStructures = function()
			if not t.structures then
				local quests, structures = LOREMASTER_CreateQuestsAndStructures(t, mapID, extraQuestIDs);
				if quests then
					t.quests = quests;
					t.structures = structures;
					return structures;
				end
			else
				return t.structures;
			end
		end
	end
	commonAchievementHandlers.LOREMASTER_OnUpdate = function(t, ...)
		t.OnUpdate = nil;
		local extraQuestIDs = { ... };
		t.BuildQuests = function()
			local quests = t.quests;
			if not quests then
				quests = LOREMASTER_CreateQuests(t, extraQuestIDs);
				if quests then
					t.quests = quests;
				end
			end
			return quests;
		end
	end
else
	-- Achievements are NOT in. We can't use the API.
	fields.text = function(t)
		return "|cffffff00[" .. (t.name or RETRIEVING_DATA) .. "]|r";
	end
	fields.name = function(t)
		local data = L.ACHIEVEMENT_DATA[t.achievementID];
		if data and data[2] then return data[2]; end
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						return app.ObjectNames[v[2]];
					elseif v[1] == "i" then
						return GetItemInfo(v[2]);
					end
				end
			end
		end
		if t.spellID then return GetSpellInfo(t.spellID); end
	end
	fields.icon = function(t)
		local data = L.ACHIEVEMENT_DATA[t.achievementID];
		if data and data[3] then return data[3]; end
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						local icon = app.ObjectIcons[v[2]];
						if icon then return icon; end
					elseif v[1] == "i" then
						return select(5, GetItemInfoInstant(v[2])) or "Interface\\Worldmap\\Gear_64Grey";
					end
				end
			end
		end
		if t.spellID then return select(3, GetSpellInfo(t.spellID)); end
		return t.parent.icon or "Interface\\Worldmap\\Gear_64Grey";
	end
	fields.parentCategoryID = function(t)
		local data = L.ACHIEVEMENT_DATA[t.achievementID];
		if data then return data[1]; end
		return -1;
	end
	fields.SetAchievementCollected = function(t)
		return SetAchievementCollected;
	end
	categoryFields.text = function(t)
		local data = L.ACHIEVEMENT_CRITERIA_DATA[t.achievementCategoryID];
		if data then return data[2]; end
		return RETRIEVING_DATA .. " achcat:" .. t.achievementCategoryID;
	end
	categoryFields.parentCategoryID = function(t)
		local data = L.ACHIEVEMENT_CRITERIA_DATA[t.achievementCategoryID];
		if data then return data[1]; end
		return -1;
	end

	local fieldsWithSpellID = {
		OnUpdate = function(t)
			if t.collectible then
				t:SetAchievementCollected(t.achievementID, app.IsSpellKnown(t.spellID, t.rank));
			end
		end
	};
	app.CreateAchievement = app.CreateClass("Achievement", "achievementID", fields,
		"WithSpell", fieldsWithSpellID, function(t) return t.spellID; end);	-- This is a conditional contructor.
	app.CreateAchievementCriteria = function(id, t) return nil; end	-- We don't support showing criteria before Wrath

	-- Add in manual achievement handlers
	-- These are required to manually detect if an "achievement" is collected or not.
	-- They do not use the WOW Achievement API since it doesn't exist in this version.
	-- A lot of times these require additional calculations in the OnUpdate, so do not use these outside of the required environment!
	local LOREMASTER_EXPLICIT_OnUpdate = function(t)
		-- This is detached because we don't want contribs calling to this directly, it's a helper function.
		local quests = t.quests;
		if quests and #quests > 0 then
			local p = 0;
			if app.FilterItemClass_RequireRaces(t) then
				for i,o in ipairs(quests) do
					if app.FilterItemClass(o) then
						if o.collected == 1 then
							p = p + 1;
						end
					end
				end
			end
			t.p = p;
			t:SetAchievementCollected(t.achievementID, p >= t.rank);
		else
			return true;
		end
	end
	commonAchievementHandlers.ALL_ITEM_PROVIDERS = function(t)
		local collected = true;
		for i,provider in ipairs(t.providers) do
			if provider[1] == "i" and GetItemCount(provider[2], true) == 0 then
				collected = false;
				break;
			end
		end
		t:SetAchievementCollected(t.achievementID, collected);
	end
	commonAchievementHandlers.ANY_ITEM_PROVIDER = function(t)
		local collected = false;
		for i,provider in ipairs(t.providers) do
			if provider[1] == "i" and GetItemCount(provider[2], true) > 0 then
				collected = true;
				break;
			end
		end
		t:SetAchievementCollected(t.achievementID, collected);
	end
	commonAchievementHandlers.ALL_SOURCE_QUESTS = function(t)
		local collected = true;
		for i,questID in ipairs(t.sourceQuests) do
			if not C_QuestLog.IsQuestFlaggedCompleted(questID) then
				collected = false;
				break;
			end
		end
		t:SetAchievementCollected(t.achievementID, collected);
	end
	commonAchievementHandlers.ANY_SOURCE_QUEST = function(t)
		local collected = false;
		for i,questID in ipairs(t.sourceQuests) do
			if C_QuestLog.IsQuestFlaggedCompleted(questID) then
				collected = true;
				break;
			end
		end
		t:SetAchievementCollected(t.achievementID, collected);
	end
	commonAchievementHandlers.COMPANIONS_OnUpdate = function(t)
		if app.Settings.Collectibles.BattlePets then
			local count = 0;
			for i,g in pairs(SearchForFieldContainer("speciesID")) do
				if g[1].collected then
					count = count + 1;
				end
			end
			if t.rank > 1 then
				t.progress = math.min(count, t.rank);
				t.total = t.rank;
				t.collectible = false;

				if app.GroupFilter(t) then
					local parent = t.parent;
					parent.total = (parent.total or 0) + t.total;
					parent.progress = (parent.progress or 0) + t.progress;
					t.visible = (t.progress < t.total or app.CollectedItemVisibilityFilter(t));
				else
					t.visible = false;
				end
			else
				t.collected = count >= 1;
				t.collectible = collectible;

				if app.GroupFilter(t) then
					local parent = t.parent;
					parent.total = (parent.total or 0) + 1;
					if t.collected then parent.progress = (parent.progress or 0) + 1; end
					t.visible = (not t.collected or app.CollectedItemVisibilityFilter(t));
				else
					t.visible = false;
				end
			end
		else
			t.collected = nil;
			t.collectible = false;
			t.progress = nil;
			t.total = nil;
			t.visible = false;
		end
		return true;
	end
	commonAchievementHandlers.COMPANIONS_OnTooltip = function(t)
		GameTooltip:AddLine("Collect " .. t.rank .. " companion pets.");
		if t.total and t.progress < t.total and t.rank >= 25 then
			GameTooltip:AddLine(" ");
			local c = 0;
			for i,g in pairs(SearchForFieldContainer("speciesID")) do
				local p = g[1];
				if p.visible then
					c = c + 1;
					if c < 16 then
						GameTooltip:AddDoubleLine(" |T" .. p.icon .. ":0|t " .. p.text, app.L[p.collected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
					end
				end
			end
			if c > 15 then GameTooltip:AddLine(" And " .. (c - 15) .. " more!"); end
		end
	end
	commonAchievementHandlers.EXALTED_REPS_OnUpdate = function(t)
		if t.collectible then
			local reps = t.reps or (t.BuildReputations and t:BuildReputations());
			if not reps then return true; end
			local collected = true;
			for i,r in ipairs(reps) do
				if r.standing < 8 then
					collected = false;
					break;
				end
			end
			t:SetAchievementCollected(t.achievementID, collected);
		end
	end
	commonAchievementHandlers.EXALTED_REPS_ANY_OnUpdate = function(t)
		if t.collectible then
			local reps = t.reps or (t.BuildReputations and t:BuildReputations());
			if not reps then return true; end
			local collected = false;
			for i,r in ipairs(reps) do
				if r.standing == 8 then
					collected = true;
					break;
				end
			end
			t:SetAchievementCollected(t.achievementID, collected);
		end
	end
	commonAchievementHandlers.EXPLORATION_OnUpdate = function(t)
		if t.collectible and t.parent then
			if not t.areas then
				local g = (t.sourceParent or t.parent).parent.g;
				if g and #g > 0 then
					for i,o in ipairs(g) do
						if o.headerID == app.HeaderConstants.EXPLORATION then
							t.areas = o.g;
							break;
						end
					end
					if not t.areas then return; end
				else
					return;
				end
			end
			local collected = true;
			for i,o in ipairs(t.areas) do
				if o.collected ~= 1 and app.FilterItemClass_UnobtainableItem(o) then
					collected = false;
					break;
				end
			end
			t:SetAchievementCollected(t.achievementID, collected);
		end
	end
	commonAchievementHandlers.EXPLORATION_OnClick = function(row, button)
		if button == "RightButton" then
			local t = row.ref;
			local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], t.areas)).data;
			clone.description = t.description;
			return true;
		end
	end
	commonAchievementHandlers.KNOW_SPELLS_OnUpdate = function(t, ...)
		if t.collectible then
			if not t.spells then
				local spells = {};
				for i,spellID in ipairs({ ... }) do
					local f = SearchForField("spellID", spellID);
					if #f > 0 then
						tinsert(spells, f[1]);
					else
						return true;
					end
				end
				if #spells < 1 then return true; end
				t.spells = spells;
			end
			local collected = true;
			for i,spell in ipairs(t.spells) do
				if spell.collected then
					collected = false;
					break;
				end
			end
			t:SetAchievementCollected(t.achievementID, collected);
		end
	end
	commonAchievementHandlers.KNOW_SPELLS_ANY_OnUpdate = function(t, ...)
		if t.collectible then
			if not t.spells then
				local spells = {};
				for i,spellID in ipairs({ ... }) do
					local f = SearchForField("spellID", spellID);
					if #f > 0 then
						tinsert(spells, f[1]);
					else
						tinsert(spells, app.CreateSpell(spellID));
					end
				end
				if #spells < 1 then return true; end
				t.spells = spells;
			end
			local collected = false;
			for i,spell in ipairs(t.spells) do
				if spell.collected then
					collected = true;
					break;
				end
			end
			t:SetAchievementCollected(t.achievementID, collected);
		end
	end
	commonAchievementHandlers.KNOW_SPELLS_OnClick = function(row, button)
		if button == "RightButton" then
			local t = row.ref;
			local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], t.spells)).data;
			clone.description = t.description;
			return true;
		end
	end
	commonAchievementHandlers.KNOW_SPELLS_OnTooltip = function(t)
		if t.collectible and t.spells then
			GameTooltip:AddLine(" ");
			for i,spell in ipairs(t.spells) do
				GameTooltip:AddDoubleLine(" |T" .. spell.icon .. ":0|t " .. spell.text, app.L[spell.collected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
			end
		end
	end
	commonAchievementHandlers.LEVEL_OnUpdate = function(t)
		t:SetAchievementCollected(t.achievementID, app.Level >= t.lvl);
	end
	commonAchievementHandlers.LOREMASTER_CONTINENT_OnUpdate = function(t, mapID, ...)
		if t.collectible and t.parent then
			if not t.quests then
				local quests, structures = LOREMASTER_CreateQuestsAndStructures(t, mapID, { ... });
				if quests then
					t.quests = quests;
					t.structures = structures;
				else
					return;
				end
			end
			return LOREMASTER_EXPLICIT_OnUpdate(t);
		end
	end
	commonAchievementHandlers.LOREMASTER_OnUpdate = function(t, ...)
		if t.collectible and t.parent then
			local quests = t.quests;
			if not quests then
				quests = LOREMASTER_CreateQuests(t, { ... });
				if quests then
					t.quests = quests;
				else
					return;
				end
			end
			return LOREMASTER_EXPLICIT_OnUpdate(t);
		end
	end
	commonAchievementHandlers.LOREMASTER_OnTooltip = function(t)
		if t.collectible and t.p and not t.collected then
			GameTooltip:AddLine(" ");
			GameTooltip:AddDoubleLine(" ", app.GetProgressText(min(t.rank, t.p),t.rank), 1, 1, 1);
		end
	end
	commonAchievementHandlers.META_ACHCAT_OnUpdate = function(t, achievementCategoryID)
		if t.collectible then
			if not t.achievements then
				local achievements;
				for i,o in ipairs(t.parent.g) do
					if o.achievementCategoryID == achievementCategoryID then
						achievements = o.g;
						break;
					end
				end
				if not achievements then return true; end
				t.achievements = achievements;
			end
			local collected = true;
			for i,faction in ipairs(t.achievements) do
				if not faction.collected and app.FilterItemClass_UnobtainableItem(faction) then
					collected = false;
					break;
				end
			end
			t:SetAchievementCollected(t.achievementID, collected);
		end
	end
	commonAchievementHandlers.META_OnUpdate = function(t, ...)
		if t.collectible then
			if not t.achievements then
				local achievements = {};
				for i,achievementID in ipairs({ ... }) do
					local f = SearchForField("achievementID", achievementID);
					if #f > 0 then
						tinsert(achievements, f[1]);
					else
						return true;
					end
				end
				if #achievements < 1 then return true; end
				t.achievements = achievements;
			end
			local collected = true;
			for i,faction in ipairs(t.achievements) do
				if not faction.collected then
					collected = false;
					break;
				end
			end
			t:SetAchievementCollected(t.achievementID, collected);
		end
	end
	commonAchievementHandlers.META_OnClick = function(row, button)
		if button == "RightButton" then
			local t = row.ref;
			local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], t.achievements)).data;
			clone.description = t.description;
			return true;
		end
	end
	commonAchievementHandlers.META_OnTooltip = function(t)
		if t.collectible and t.achievements then
			GameTooltip:AddLine(" ");
			for i,achievement in ipairs(t.achievements) do
				GameTooltip:AddDoubleLine(" |T" .. achievement.icon .. ":0|t " .. achievement.text, app.L[achievement.collected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
			end
		end
	end
	commonAchievementHandlers.MOUNTS_OnUpdate = function(t)
		if app.Settings.Collectibles.Mounts then
			local count,r = 0,{};
			for i,g in pairs(SearchForFieldContainer("spellID")) do
				if ((g[1].f and g[1].f == app.FilterConstants.MOUNTS)
				or (g[1].filterID and g[1].filterID == app.FilterConstants.MOUNTS)) and not r[i] then
					if g[1].collected then count = count + 1; end
					r[i] = 1;
				end
			end
			if t.rank > 1 then
				t.progress = math.min(count, t.rank);
				t.total = t.rank;
				t.collectible = false;

				if app.GroupFilter(t) then
					local parent = t.parent;
					parent.total = (parent.total or 0) + t.total;
					parent.progress = (parent.progress or 0) + t.progress;
					t.visible = (t.progress < t.total or app.CollectedItemVisibilityFilter(t));
				else
					t.visible = false;
				end
			else
				t.collected = count >= 1;
				t.collectible = collectible;

				if app.GroupFilter(t) then
					local parent = t.parent;
					parent.total = (parent.total or 0) + 1;
					if t.collected then parent.progress = (parent.progress or 0) + 1; end
					t.visible = (not t.collected or app.CollectedItemVisibilityFilter(t));
				else
					t.visible = false;
				end
			end
		else
			t.collected = nil;
			t.collectible = false;
			t.progress = nil;
			t.total = nil;
			t.visible = false;
		end
		return true;
	end
	commonAchievementHandlers.MOUNTS_OnTooltip = function(t)
		GameTooltip:AddLine("Collect " .. t.rank .. " mounts.");
		if t.total and t.progress < t.total and t.rank >= 25 then
			GameTooltip:AddLine(" ");
			local c = 0;
			local template,r = {},{};
			for i,o in pairs(SearchForFieldContainer("spellID")) do
				local p = o[1];
				if ((p.f and p.f == app.FilterConstants.MOUNTS)
				or (p.filterID and p.filterID == app.FilterConstants.MOUNTS)) and not r[i] then
					r[i] = 1;
					if p.visible then
						c = c + 1;
						if c < 16 then
							GameTooltip:AddDoubleLine(" |T" .. p.icon .. ":0|t " .. p.text, app.L[p.collected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
						end
					end
				end
			end
			if c > 15 then GameTooltip:AddLine(" And " .. (c - 15) .. " more!"); end
		end
	end
	commonAchievementHandlers.REPUTATIONS_OnUpdate = function(t)
		if app.Settings.Collectibles.Achievements then
			local count = 0;
			local ignored = app.IgnoredReputationsForAchievements;
			if not ignored then
				ignored = {[169] = 1};
				app.IgnoredReputationsForAchievements = ignored;
			end
			for factionID,g in pairs(SearchForFieldContainer("factionID")) do
				if not ignored[factionID] and #g > 0 and g[1].standing == 8 then
					count = count + 1;
				end
			end
			if t.rank > 1 then
				t.progress = math.min(count, t.rank);
				t.total = t.rank;
				t.collectible = false;

				if app.GroupFilter(t) then
					local parent = t.parent;
					parent.total = (parent.total or 0) + t.total;
					parent.progress = (parent.progress or 0) + t.progress;
					t.visible = (t.progress < t.total or app.CollectedItemVisibilityFilter(t));
				else
					t.visible = false;
				end
			else
				t.collected = count >= 1;
				t.collectible = collectible;

				if app.GroupFilter(t) then
					local parent = t.parent;
					parent.total = (parent.total or 0) + 1;
					if t.collected then parent.progress = (parent.progress or 0) + 1; end
					t.visible = (not t.collected or app.CollectedItemVisibilityFilter(t));
				else
					t.visible = false;
				end
			end
		else
			t.collected = nil;
			t.collectible = false;
			t.progress = nil;
			t.total = nil;
			t.visible = false;
		end
		return true;
	end
	commonAchievementHandlers.REPUTATIONS_OnTooltip = function(t)
		GameTooltip:AddLine("Raise " .. t.rank .. " reputations to Exalted.");
		if t.total and t.progress < t.total and t.rank >= 25 then
			GameTooltip:AddLine(" ");
			local ignored = app.IgnoredReputationsForAchievements;
			if not ignored then
				ignored = {[169] = 1};
				app.IgnoredReputationsForAchievements = ignored;
			end
			for i,o in ipairs(app:GetDataCache().g) do
				if o.headerID == app.HeaderConstants.FACTIONS then
					for j,p in ipairs(o.g) do
						if (p.visible or p.factionID == 909) and not ignored[p.factionID] and (not p.minReputation or (p.minReputation[1] == p.factionID and p.minReputation[2] >= 41999)) and (not p.maxReputation or (p.maxReputation[1] ~= p.factionID and p.reputation >= 0)) then
							GameTooltip:AddDoubleLine(" |T" .. p.icon .. ":0|t " .. p.text, app.L[p.standing >= 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
						end
					end
				end
			end
		end
	end
end
app.CreateAchievementCategory = app.CreateClass("AchievementCategory", "achievementCategoryID", categoryFields);
end)();

-- Category Lib
(function()
app.CreateCategory = app.CreateClass("Category", "categoryID", {
	["text"] = function(t)
		return ATTClassicAD.LocalizedCategoryNames[t.categoryID] or ("Unknown Category #" .. t.categoryID);
	end,
	["icon"] = function(t)
		return ATTC.CategoryIcons[t.categoryID] or "Interface/ICONS/INV_Misc_Gear_02";
	end,
});
end)();

-- Character Class Lib
(function()
local classIcons = {
	[1] = app.asset("ClassIcon_Warrior"),
	[2] = app.asset("ClassIcon_Paladin"),
	[3] = app.asset("ClassIcon_Hunter"),
	[4] = app.asset("ClassIcon_Rogue"),
	[5] = app.asset("ClassIcon_Priest"),
	[6] = app.asset("ClassIcon_DeathKnight"),
	[7] = app.asset("ClassIcon_Shaman"),
	[8] = app.asset("ClassIcon_Mage"),
	[9] = app.asset("ClassIcon_Warlock"),
	[10] = app.asset("ClassIcon_Monk"),
	[11] = app.asset("ClassIcon_Druid"),
	[12] = app.asset("ClassIcon_DemonHunter"),
};
local GetClassIDFromClassFile = function(classFile)
	for i,icon in pairs(classIcons) do
		local info = C_CreatureInfo.GetClassInfo(i);
		if info and info.classFile == classFile then
			return i;
		end
	end
end
app.ClassDB = setmetatable({}, { __index = function(t, className)
	for i,_ in pairs(classIcons) do
		local info = C_CreatureInfo.GetClassInfo(i);
		if info and info.className == className then
			rawset(t, className, i);
			return i;
		end
	end
end });

app.CreateCharacterClass, app.BaseCharacterClass = app.CreateClass("CharacterClass", "classID", {
	["text"] = function(t)
		local text = "|c" .. t.classColors.colorStr .. t.name .. "|r";
		rawset(t, "text", text);
		return text;
	end,
	["icon"] = function(t)
		return classIcons[t.classID];
	end,
	["name"] = function(t)
		return C_CreatureInfo.GetClassInfo(t.classID).className;
	end,
	["c"] = function(t)
		local c = { t.classID };
		rawset(t, "c", c);
		return c;
	end,
	["nmc"] = function(t)
		return t.classID ~= app.ClassIndex;
	end,
	["classColors"] = function(t)
		return RAID_CLASS_COLORS[C_CreatureInfo.GetClassInfo(t.classID).classFile];
	end,
});
app.CreateUnit = app.CreateClass("Unit", "unit", {
	["text"] = function(t)
		return t.classText;
	end,
	["info"] = function(t)
		local unit = t.unit;
		for guid,character in pairs(ATTCharacterData) do
			if guid == unit or character.name == unit then
				rawset(t, "guid", character.guid);
				rawset(t, "name", character.name);
				rawset(t, "lvl", character.lvl);
				if character.classID then
					rawset(t, "classID", character.classID);
					rawset(t, "classes", { character.classID });
					local classInfo = C_CreatureInfo.GetClassInfo(character.classID);
					if classInfo then
						rawset(t, "className", classInfo.className);
						rawset(t, "classFile", classInfo.classFile);
					end
				end
				if character.raceID then
					rawset(t, "raceID", character.raceID);
					rawset(t, "races", { character.raceID });
					rawset(t, "race", C_CreatureInfo.GetRaceInfo(character.raceID).raceName);
				end
				return t;
			end
		end
		local name, guid, className, classFile, classID, raceName, raceFile, raceID;
		if #{strsplit("-", unit)} > 1 then
			-- It's a GUID.
			guid = unit;
			className, classFile, raceName, raceFile, raceID, name = GetPlayerInfoByGUID(guid);
			classID = GetClassIDFromClassFile(classFile);
		else
			name = UnitName(unit);
			if name then
				guid = UnitGUID(unit);
				className, classFile, classID = UnitClass(unit);
				raceName, raceFile, raceID = UnitRace(unit);
			else
				rawset(t, "name", unit);
				return t;
			end
		end
		if name then
			rawset(t, "name", name);
			rawset(t, "guid", guid);
			if classID then
				rawset(t, "className", className);
				rawset(t, "classFile", classFile);
				rawset(t, "classID", classID);
			end
			if raceID then
				rawset(t, "raceID", raceID);
				rawset(t, "races", { raceID });
				rawset(t, "race", C_CreatureInfo.GetRaceInfo(raceID).raceName);
			end
		end
		return t;
	end,
	["name"] = function(t)
		return rawget(t.info, "name");
	end,
	["icon"] = function(t)
		local classID = rawget(t.info, "classID");
		if classID then return classIcons[classID]; end
	end,
	["guid"] = function(t)
		local guid = rawget(t.info, "guid");
		if guid then return guid; end
	end,
	["title"] = function(t)
		if IsInGroup() then
			if rawget(t, "isML") then return MASTER_LOOTER; end
			if UnitIsGroupLeader(t.unit, "raid") then return RAID_LEADER; end
		end
	end,
	["lvl"] = function(t)
		return UnitLevel(t.unit);
	end,
	["race"] = function(t)
		return rawget(t.info, "race");
	end,
	["className"] = function(t)
		return rawget(t.info, "className");
	end,
	["classFile"] = function(t)
		return rawget(t.info, "classFile");
	end,
	["classText"] = function(t)
		local classFile = t.classFile;
		if classFile then return "|c" .. RAID_CLASS_COLORS[classFile].colorStr .. t.name .. "|r"; end
		return t.name;
	end,
	["tooltipText"] = function(t)
		local text = t.text;
		local icon = t.icon;
		if icon then text = "|T" .. icon .. ":0|t " .. text; end
		return text;
	end,
});
app.CreateQuestUnit = app.ExtendClass("Unit", "QuestUnit", "unit", {
	["visible"] = function(t)
		return true;
	end,
	["collectible"] = function(t)
		return true;
	end,
	["trackable"] = function(t)
		return true;
	end,
	["collected"] = function(t)
		return t.saved;
	end,
	["OnClick"] = function(t)
		return app.NoFilter;
	end,
	["OnUpdate"] = function(t)
		return app.AlwaysShowUpdateWithoutReturn;
	end,
	["saved"] = function(t)
		local questID = GetRelativeValue(t, "questID");
		if questID then
			local guid = t.guid;
			if guid and questID then
				if guid == app.GUID then
					return IsQuestFlaggedCompleted(questID);
				else
					local questsForGUID = GetDataMember("GroupQuestsByGUID")[guid] or (ATTCharacterData[guid] and ATTCharacterData[guid].Quests);
					return questsForGUID and questsForGUID[questID];
				end
			end
		end
	end,
});
end)();

-- Companion Lib
(function()
local SetBattlePetCollected = function(t, speciesID, collected)
	return app.SetCollected(t, "BattlePets", speciesID, collected);
end
local SetMountCollected = function(t, spellID, collected)
	return app.SetCollectedForSubType(t, "Spells", "Mounts", spellID, collected);
end
local speciesFields = {
	["f"] = function(t)
		return app.FilterConstants.BATTLE_PETS;
	end,
	["collectible"] = function(t)
		return app.Settings.Collectibles.BattlePets;
	end,
	["text"] = function(t)
		return "|cff0070dd" .. (t.name or RETRIEVING_DATA) .. "|r";
	end,
	["link"] = function(t)
		if t.itemID then
			local link = select(2, GetItemInfo(t.itemID));
			if link then
				t.link = link;
				return link;
			end
		end
	end,
	["tsm"] = function(t)
		if t.itemID then return string.format("i:%d", t.itemID); end
		return string.format("p:%d:1:3", t.speciesID);
	end,
};
local mountFields = {
	["text"] = function(t)
		return "|cffb19cd9" .. t.name .. "|r";
	end,
	["icon"] = function(t)
		return select(3, GetSpellInfo(t.spellID));
	end,
	["link"] = function(t)
		return (t.itemID and select(2, GetItemInfo(t.itemID))) or GetSpellLink(t.spellID);
	end,
	["f"] = function(t)
		return app.FilterConstants.MOUNTS;
	end,
	["collectible"] = function(t)
		return app.Settings.Collectibles.Mounts;
	end,
	["explicitlyCollected"] = function(t)
		return IsSpellKnown(t.spellID) or (t.questID and IsQuestFlaggedCompleted(t.questID)) or (t.itemID and GetItemCount(t.itemID, true) > 0);
	end,
	["b"] = function(t)
		return (t.parent and t.parent.b) or 1;
	end,
	["name"] = function(t)
		return GetSpellInfo(t.spellID) or RETRIEVING_DATA;
	end,
	["tsmForItem"] = function(t)
		if t.itemID then return string.format("i:%d", t.itemID); end
		if t.parent and t.parent.itemID then return string.format("i:%d", t.parent.itemID); end
	end,
	["linkForItem"] = function(t)
		return select(2, GetItemInfo(t.itemID)) or GetSpellLink(t.spellID);
	end,
};

if C_PetJournal then
	speciesFields.icon = function(t)
		return select(2, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
	end
	speciesFields.name = function(t)
		return C_PetJournal.GetPetInfoBySpeciesID(t.speciesID);
	end
	speciesFields.petTypeID = function(t)
		return select(3, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
	end
	speciesFields.displayID = function(t)
		return select(12, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
	end
	speciesFields.description = function(t)
		return select(6, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
	end
	speciesFields.collected = function(t)
		return SetBattlePetCollected(t, t.speciesID, C_PetJournal.GetNumCollectedInfo(t.speciesID) > 0);
	end

	local SpellIDToMountID = setmetatable({}, { __index = function(t, id)
		local allMountIDs = C_MountJournal.GetMountIDs();
		if allMountIDs and #allMountIDs > 0 then
			for i,mountID in ipairs(allMountIDs) do
				local spellID = select(2, C_MountJournal.GetMountInfoByID(mountID));
				if spellID then rawset(t, spellID, mountID); end
			end
			setmetatable(t, nil);
			return rawget(t, id);
		end
	end });
	mountFields.mountID = function(t)
		return SpellIDToMountID[t.spellID];
	end
	mountFields.name = function(t)
		local mountID = t.mountID;
		if mountID then return C_MountJournal.GetMountInfoByID(mountID); end
		return GetSpellInfo(t.spellID) or RETRIEVING_DATA;
	end
	mountFields.displayID = function(t)
		local mountID = t.mountID;
		if mountID then return C_MountJournal.GetMountInfoExtraByID(mountID); end
	end
	mountFields.lore = function(t)
		local mountID = t.mountID;
		if mountID then return select(2, C_MountJournal.GetMountInfoExtraByID(mountID)); end
	end
	mountFields.collected = function(t)
		local spellID = t.spellID;
		for i,o in ipairs(SearchForField("spellID", spellID)) do
			if o.explicitlyCollected then
				return SetMountCollected(t, spellID, true);
			end
		end
		return SetMountCollected(t, spellID, false);
	end
else
	speciesFields.icon = function(t)
		if t.itemID then
			return select(5, GetItemInfoInstant(t.itemID)) or "Interface\\Icons\\INV_Misc_QuestionMark";
		end
		return "Interface\\Icons\\INV_Misc_QuestionMark";
	end
	speciesFields.name = function(t)
		return t.itemID and GetItemInfo(t.itemID) or RETRIEVING_DATA;
	end
	mountFields.name = function(t)
		return GetSpellInfo(t.spellID) or RETRIEVING_DATA;
	end
	if GetCompanionInfo and GetNumCompanions("CRITTER") ~= nil then
		local CollectedBattlePetHelper = {};
		local CollectedMountHelper = {};
		local function RefreshCompanionCollectionStatus(companionType)
			local anythingNew = false;
			if not companionType or companionType == "CRITTER" then
				setmetatable(CollectedBattlePetHelper, nil);
				local critterCount = GetNumCompanions("CRITTER");
				if not critterCount then
					print("Failed to get Companion Info for Critters");
				else
					for i=critterCount,1,-1 do
						local spellID = select(3, GetCompanionInfo("CRITTER", i));
						if spellID then
							if not CollectedBattlePetHelper[spellID] then
								CollectedBattlePetHelper[spellID] = true;
								anythingNew = true;
							end
						else
							print("Failed to get Companion Info for Critter ".. i);
						end
					end
				end
			end
			if not companionType or companionType == "MOUNT" then
				setmetatable(CollectedMountHelper, nil);
				for i=GetNumCompanions("MOUNT"),1,-1 do
					local spellID = select(3, GetCompanionInfo("MOUNT", i));
					if spellID then
						if not CollectedMountHelper[spellID] then
							CollectedMountHelper[spellID] = true;
							anythingNew = true;
						end
					else
						print("Failed to get Companion Info for Mount ".. i);
					end
				end
			end
			if anythingNew then app:RefreshDataQuietly("RefreshCompanionCollectionStatus", true); end
		end
		local meta = { __index = function(t, spellID)
			RefreshCompanionCollectionStatus();
			return rawget(t, spellID);
		end };
		setmetatable(CollectedBattlePetHelper, meta);
		setmetatable(CollectedMountHelper, meta);
		speciesFields.collected = function(t)
			return SetBattlePetCollected(t, t.speciesID, (t.spellID and CollectedBattlePetHelper[t.spellID]));
		end
		mountFields.collected = function(t)
			return SetMountCollected(t, t.spellID, (t.spellID and CollectedMountHelper[t.spellID]));
		end
		app:RegisterEvent("COMPANION_LEARNED");
		app:RegisterEvent("COMPANION_UNLEARNED");
		app:RegisterEvent("COMPANION_UPDATE");
		app.events.COMPANION_LEARNED = RefreshCompanionCollectionStatus;
		app.events.COMPANION_UNLEARNED = RefreshCompanionCollectionStatus;
		app.events.COMPANION_UPDATE = RefreshCompanionCollectionStatus;
	else
		speciesFields.collected = function(t)
			return SetBattlePetCollected(t, t.speciesID, t.itemID and GetItemCount(t.itemID, true) > 0);
		end
		mountFields.collected = function(t)
			local spellID = t.spellID;
			for i,o in ipairs(SearchForField("spellID", spellID)) do
				if o.explicitlyCollected then
					return SetMountCollected(t, spellID, true);
				end
			end
			return SetMountCollected(t, spellID, false);
		end
	end
end

app.CreateMount = app.CreateClass("Mount", "spellID", mountFields,
	"WithItem", {	-- This is a conditional contructor.
		link = mountFields.linkForItem;
		tsm = mountFields.tsmForItem
	}, function(t) return t.itemID; end);
app.CreatePetType = app.CreateClass("PetType", "petTypeID", {
	["text"] = function(t)
		return _G["BATTLE_PET_NAME_" .. t.petTypeID];
	end,
	["icon"] = function(t)
		return app.asset("Icon_PetFamily_"..PET_TYPE_SUFFIX[t.petTypeID]);
	end,
});
app.CreateSpecies = app.CreateClass("Species", "speciesID", speciesFields);
end)();

-- Currency Lib
(function()
local CurrencyInfo = {};
local GetCurrencyCount;
local GetCurrencyLink = GetCurrencyLink;
if C_CurrencyInfo and C_CurrencyInfo.GetCurrencyInfo then
	local C_CurrencyInfo_GetCurrencyInfo = C_CurrencyInfo.GetCurrencyInfo;
	if C_CurrencyInfo.GetCurrencyLink then
		GetCurrencyLink = C_CurrencyInfo.GetCurrencyLink;
	end
	setmetatable(CurrencyInfo, { __index = function(t, id)
		local currencyInfo = C_CurrencyInfo_GetCurrencyInfo(id);
		if currencyInfo then
			local info = {
				name = currencyInfo.name,
				icon = currencyInfo.iconFileID
			}
			rawset(t, id, info);
			return info;
		end
	end });
	GetCurrencyCount = function(id)
		return C_CurrencyInfo_GetCurrencyInfo(id).quantity or 0;
	end
else
	local GetCurrencyInfo = GetCurrencyInfo;
	setmetatable(CurrencyInfo, { __index = function(t, id)
		local name, amount, icon = GetCurrencyInfo(id);
		if name then
			local info = {
				name = name,
				icon = icon
			}
			rawset(t, id, info);
			return info;
		end
	end });
	GetCurrencyCount = function(id)
		return select(2, GetCurrencyInfo(id)) or 0;
	end
end
local CurrencyCollectibleAsCost = setmetatable({}, { __index = function(t, id)
	local results = SearchForField("currencyIDAsCost", id, true);
	if #results > 0 then
		for _,ref in pairs(results) do
			if ref.currencyID ~= id and app.RecursiveGroupRequirementsFilter(ref) then
				if ref.collectible and not ref.collected then
					t[id] = true;
					return true;
				elseif ref.total and ref.total > ref.progress then
					t[id] = true;
					return true;
				end
			end
		end
	end
	t[id] = false;
	return false;
end });
local CurrencyCollectedAsCost = setmetatable({}, { __index = function(t, id)
	local any, partial;
	local results = SearchForField("currencyIDAsCost", id, true);
	if #results > 0 then
		local count = GetCurrencyCount(id);
		for _,ref in pairs(results) do
			if ref.currencyID ~= id and app.RecursiveDefaultClassAndRaceFilter(ref) then
				if ref.collectible and ref.collected ~= 1 then
					if ref.cost then
						for k,v in ipairs(ref.cost) do
							if v[2] == id and v[1] == "c" then
								if count >= (v[3] or 1) then
									partial = true;
								else
									t[id] = false;
									return false;
								end
							end
						end
					end
				elseif (ref.total and ref.total > 0 and not GetRelativeField(t, "parent", ref) and ref.progress < ref.total) then
					if ref.cost then
						for k,v in ipairs(ref.cost) do
							if v[2] == id and v[1] == "c" then
								if count >= (v[3] or 1) then
									partial = true;
								else
									t[id] = false;
									return false;
								end
							end
						end
					end
				end
				any = true;
			end
		end
		if any then
			t[id] = partial and 2 or 1;
			return partial and 2 or 1;
		end
	end
	t[id] = false;
	return false;
end });
table.insert(app.EventHandlers.OnRecalculate, function()
	wipe(CurrencyCollectibleAsCost);
	wipe(CurrencyCollectedAsCost);
end);
app.CreateCurrencyClass = app.CreateClass("Currency", "currencyID", {
	["text"] = function(t)
		return t.info.name;
	end,
	["icon"] = function(t)
		return t.info.icon;
	end,
	["info"] = function(t)
		local info = CurrencyInfo[t.currencyID];
		if info then
			t.info = info;
			return info;
		end
		return {};
	end,
	["link"] = function(t)
		return GetCurrencyLink(t.currencyID, 1);
	end,
	["collectible"] = function(t)
		return t.collectibleAsCost;
	end,
	["collectibleAsCost"] = function(t)
		if not t.parent or not t.parent.saved then
			if CurrencyCollectibleAsCost[t.currencyID] then
				return true;
			elseif t.simplemeta then
				setmetatable(t, t.simplemeta);
				return false;
			end
		end
	end,
	["collected"] = function(t)
		return t.collectedAsCost;
	end,
	["collectedAsCost"] = function(t)
		return CurrencyCollectedAsCost[t.currencyID];
	end,
});

if not TooltipDataProcessor then
local GameTooltip_SetCurrencyByID = GameTooltip.SetCurrencyByID;
GameTooltip.SetCurrencyByID = function(self, currencyID, count)
	-- Make sure to call to base functionality
	if GameTooltip_SetCurrencyByID then
		GameTooltip_SetCurrencyByID(self, currencyID, count);
	else
		local results = SearchForField("currencyID", currencyID);
		if #results > 0 then
			GameTooltip:AddLine(results[1].text or RETRIEVING_DATA, 1, 1, 1);
		end
	end
	if (not InCombatLockdown() or app.Settings:GetTooltipSetting("DisplayInCombat")) and app.Settings:GetTooltipSetting("Enabled") then
		AttachTooltipSearchResults(self, 1, "currencyID:" .. currencyID, SearchForField, "currencyID", currencyID);
		if app.Settings:GetTooltipSetting("currencyID") then self:AddDoubleLine(L["CURRENCY_ID"], tostring(currencyID)); end
		self:Show();
	end
end
local GameTooltip_SetCurrencyToken = GameTooltip.SetCurrencyToken;
GameTooltip.SetCurrencyToken = function(self, tokenID)
	-- Make sure to call to base functionality
	if GameTooltip_SetCurrencyToken then GameTooltip_SetCurrencyToken(self, tokenID); end
	if (not InCombatLockdown() or app.Settings:GetTooltipSetting("DisplayInCombat")) and app.Settings:GetTooltipSetting("Enabled") then
		-- Determine what kind of list data this is. (Blizzard is whack and using this API call for headers too...)
		local name, isHeader = GetCurrencyListInfo(tokenID);
		if not isHeader then
			-- Determine which currencyID is the one that we're dealing with.
			for currencyID,results in pairs(SearchForFieldContainer("currencyID")) do
				-- Compare the name of the currency vs the name of the token
				if results[1].text == name then
					if not GameTooltip_SetCurrencyToken then
						GameTooltip:AddLine(results[1].text or RETRIEVING_DATA, 1, 1, 1);
					end
					AttachTooltipSearchResults(self, 1, "currencyID:" .. currencyID, SearchForField, "currencyID", currencyID);
					if app.Settings:GetTooltipSetting("currencyID") then self:AddDoubleLine(L["CURRENCY_ID"], tostring(currencyID)); end
					self:Show();
					break;
				end
			end
		end
	end
end
end
end)();

-- Death Tracker Lib
(function()
local fields = {
	["text"] = function(t)
		return "Total Deaths";
	end,
	["icon"] = function(t)
		return app.asset("Category_Deaths");
	end,
	["progress"] = function(t)
		return math.min(t.total, app.Settings.AccountWide.Deaths and ATTAccountWideData.Deaths or app.CurrentCharacter.Deaths);
	end,
	["OnTooltip"] = function(t)
		local c = {};
		for _,character in pairs(ATTCharacterData) do
			if character and character.Deaths and character.Deaths > 0 then
				table.insert(c, character);
			end
		end
		if #c > 0 then
			GameTooltip:AddLine(" ");
			GameTooltip:AddLine("Deaths Per Character:");
			app.Sort(c, function(a, b)
				return a.Deaths > b.Deaths;
			end);
			for i,character in ipairs(c) do
				GameTooltip:AddDoubleLine("  " .. string.gsub(character.text, "-" .. GetRealmName(), ""), character.Deaths, 1, 1, 1);
			end
		end
	end,
};
if C_GameRules and C_GameRules.IsHardcoreActive() then
	fields.description = function(t)
		return "The ATT Gods must be sated. Go forth and attempt to level, mortal!\n\n 'Live! Die! Try Again!'\n";
	end;
	fields.total = function(t) return 1; end
else
	fields.description = function(t)
		return "The ATT Gods must be sated. Go forth and attempt to level, mortal!\n\n 'Live! Die! Live Again!'\n";
	end;
	fields.total = function(t) return 1000; end
end
if GetStatistic and GetStatistic(60) then
	-- Statistics are available, this means we can get the actual statistic from the server's database.
	local OnUpdateForDeathTrackerLib = function(t)
		if app.Settings:Get("Thing:Deaths") then
			local stat = GetStatistic(60) or "0";
			if stat == "--" then stat = "0"; end
			local deaths = tonumber(stat);
			if deaths > 0 and deaths > app.CurrentCharacter.Deaths then
				ATTAccountWideData.Deaths = ATTAccountWideData.Deaths + (deaths - app.CurrentCharacter.Deaths);
				app.CurrentCharacter.Deaths = deaths;
			end
			t.parent.progress = t.parent.progress + t.progress;
			t.parent.total = t.parent.total + t.total;
			t.visible = app.GroupVisibilityFilter(t);
		else
			t.visible = false;
		end
		return true;
	end
	fields.OnUpdate = function(t)
		return OnUpdateForDeathTrackerLib;
	end
	app.events.PLAYER_DEAD = function()
		app:PlayDeathSound();
	end
else
	-- Oh boy, we have to track it ourselves!
	local OnUpdateForDeathTrackerLib = function(t)
		if app.Settings:Get("Thing:Deaths") then
			t.parent.progress = t.parent.progress + t.progress;
			t.parent.total = t.parent.total + t.total;
			t.visible = app.GroupVisibilityFilter(t);
		else
			t.visible = false;
		end
		return true;
	end
	fields.OnUpdate = function(t)
		return OnUpdateForDeathTrackerLib;
	end
	app.events.PLAYER_DEAD = function()
		ATTAccountWideData.Deaths = ATTAccountWideData.Deaths + 1;
		app.CurrentCharacter.Deaths = app.CurrentCharacter.Deaths + 1;
		app:PlayDeathSound();
		app:RefreshDataQuietly("PLAYER_DEAD");
	end
end
app:RegisterEvent("PLAYER_DEAD");
app.CreateDeathClass = app.CreateClass("DeathsTracker", "deaths", fields);
end)();

-- Difficulty Lib
(function()
local difficulties = {
	[1] = { 9, 148, 173 },
	[2] = { 174 },
	[3] = { 175 },
	[4] = { 176 },
	[9] = { 1 },
	[148] = { 1 },
	[173] = { 1 },
	[174] = { 2 },
	[175] = { 3 },
	[176] = { 4 },
};
app.DifficultyColors = {
	[2] = "ff0070dd",
	[5] = "ff0070dd",
	[6] = "ff0070dd",
	[7] = "ff9d9d9d",
	[15] = "ff0070dd",
	[16] = "ffa335ee",
	[17] = "ff9d9d9d",
	[23] = "ffa335ee",
	[24] = "ffe6cc80",
	[33] = "ffe6cc80",
};
app.DifficultyIcons = {
	[-1] = app.asset("Difficulty_LFR"),
	[-2] = app.asset("Difficulty_Normal"),
	[-3] = app.asset("Difficulty_Heroic"),
	[-4] = app.asset("Difficulty_Mythic"),
	[1] = app.asset("Difficulty_Normal"),
	[2] = app.asset("Difficulty_Heroic"),
	[3] = app.asset("Difficulty_Normal"),
	[4] = app.asset("Difficulty_Normal"),
	[5] = app.asset("Difficulty_Heroic"),
	[6] = app.asset("Difficulty_Heroic"),
	[7] = app.asset("Difficulty_LFR"),
	[9] = app.asset("Difficulty_Mythic"),
	[11] = app.asset("Difficulty_Normal"),
	[12] = app.asset("Difficulty_Heroic"),
	[14] = app.asset("Difficulty_Normal"),
	[15] = app.asset("Difficulty_Heroic"),
	[16] = app.asset("Difficulty_Mythic"),
	[17] = app.asset("Difficulty_LFR"),
	[18] = app.asset("Category_Event"),
	[23] = app.asset("Difficulty_Mythic"),
	[24] = app.asset("Difficulty_Timewalking"),
	[33] = app.asset("Difficulty_Timewalking"),
};
app.CreateDifficulty = app.CreateClass("Difficulty", "difficultyID", {
	["text"] = function(t)
		return t.sourceParent and string.format("%s [%s]", t.name, t.sourceParent.text or UNKNOWN) or t.name;
	end,
	["name"] = function(t)
		return L["CUSTOM_DIFFICULTIES"][t.difficultyID] or GetDifficultyInfo(t.difficultyID) or "Unknown Difficulty";
	end,
	["icon"] = function(t)
		return app.DifficultyIcons[t.difficultyID];
	end,
	["saved"] = function(t)
		return t.locks;
	end,
	["locks"] = function(t)
		local locks = t.parent and t.parent.locks;
		if locks then
			if t.parent.isLockoutShared and not (t.difficultyID == 7 or t.difficultyID == 17) then
				rawset(t, "locks", locks.shared);
				return locks.shared;
			else
				-- Look for this difficulty's lockout.
				for difficultyKey, lock in pairs(locks) do
					if difficultyKey == "shared" then
						-- ignore this one
					elseif difficultyKey == t.difficultyID then
						rawset(t, "locks", lock);
						return lock;
					end
				end
			end
		end
	end,
	["difficulties"] = function(t)
		return difficulties[t.difficultyID];
	end,
	["u"] = function(t)
		if t.difficultyID == 24 or t.difficultyID == 33 then
			return 42;
		end
	end,
	["description"] = function(t)
		if t.difficultyID == 24 or t.difficultyID == 33 then
			return L["WE_JUST_HATE_TIMEWALKING"];
		end
	end,
	["hash"] = function(t)
		if t.parent then return t.key .. t[t.key] .. "~" .. t.parent.key .. t.parent[t.parent.key]; end
	end,
});
end)();

-- Encounter Lib
(function()
if EJ_GetEncounterInfo then
	app.CreateEncounter = app.CreateClass("Encounter", "encounterID", {
		["name"] = function(t)
			return EJ_GetEncounterInfo(t.encounterID);
		end,
		["lore"] = function(t)
			return select(2, EJ_GetEncounterInfo(t.encounterID));
		end,
		["displayID"] = function(t)
			return select(4, EJ_GetCreatureInfo(1, t.encounterID));
		end,
		["displayInfo"] = function(t)
			local displayInfos, id, displayInfo = {}, t.encounterID;
			for i=1,MAX_CREATURES_PER_ENCOUNTER do
				displayInfo = select(4, EJ_GetCreatureInfo(i, id));
				if displayInfo then
					tinsert(displayInfos, displayInfo);
				else
					break;
				end
			end
			rawset(t, "displayInfo", displayInfos);
			return displayInfos;
		end,
		["icon"] = function(t)
			return app.DifficultyIcons[GetRelativeValue(t, "difficultyID") or 1];
		end,
	},
	"WithQuest", {
		trackable = function(t)
			return true;
		end,
		saved = function(t)
			return IsQuestFlaggedCompletedForObject(t) == 1;
		end
	}, (function(t) return t.questID; end));
else
	app.CreateEncounter = function(id, t)
		local npcID = t.creatureID or (t.crs and t.crs[1]) or t.npcID or (t.qgs and t.qgs[1]);
		if npcID then
			t = app.CreateNPC(npcID, t);
			t.encounterID = id;
			return t;
		else
			t = constructor(id, t, "encounterID");
			t.text = "INVALID ENCOUNTER " .. id;
			print(t.text);
			return t;
		end
	end
end
end)();

-- Faction Lib
(function()
local setFactionCollected = function(t, factionID, collected)
	return app.SetCollectedForSubType(t, "Factions", "Reputations", factionID, collected);
end
local StandingByID = {
	{	-- 1: HATED
		["color"] = GetProgressColor(0),
		["threshold"] = -42000,
	},
	{	-- 2: HOSTILE
		["color"] = "00FF0000",
		["threshold"] = -6000,
	},
	{	-- 3: UNFRIENDLY
		["color"] = "00EE6622",
		["threshold"] = -3000,
	},
	{	-- 4: NEUTRAL
		["color"] = "00FFFF00",
		["threshold"] = 0,
	},
	{	-- 5: FRIENDLY
		["color"] = "0000FF00",
		["threshold"] = 3000,
	},
	{	-- 6: HONORED
		["color"] = "0000FF88",
		["threshold"] = 9000,
	},
	{	-- 7: REVERED
		["color"] = "0000FFCC",
		["threshold"] = 21000,
	},
	{	-- 8: EXALTED
		["color"] = GetProgressColor(1),
		["threshold"] = 42000,
	},
};
app.FactionNameByID = setmetatable({}, { __index = function(t, id)
	local name = GetFactionInfoByID(id);
	if name then
		rawset(t, id, name);
		rawset(app.FactionIDByName, name, id);
		return name;
	end
end });
app.FactionIDByName = setmetatable({}, { __index = function(t, name)
	for i=1,3000,1 do
		if app.FactionNameByID[i] == name then
			return i;
		end
	end
end });
app.ColorizeStandingText = function(standingID, text)
	local standing = StandingByID[standingID];
	if standing then
		return Colorize(text, standing.color);
	else
		local rgb = FACTION_BAR_COLORS[standingID];
		return Colorize(text, RGBToHex(rgb.r * 255, rgb.g * 255, rgb.b * 255));
	end
end
app.GetFactionIDByName = function(name)
	name = strtrim(name);
	return app.FactionIDByName[name] or name;
end
app.GetFactionStanding = function(reputation)
	-- Total earned rep from GetFactionInfoByID is a value AWAY FROM ZERO, not a value within the standing bracket.
	if reputation then
		for i=#StandingByID,1,-1 do
			local threshold = StandingByID[i].threshold;
			if reputation >= threshold then
				return i, threshold < 0 and (threshold - reputation) or (reputation - threshold);
			end
		end
	end
	return 1, 0
end
app.GetFactionStandingText = function(standingID)
	return app.ColorizeStandingText(standingID, _G["FACTION_STANDING_LABEL" .. standingID] or UNKNOWN);
end
app.GetFactionStandingThresholdFromString = function(replevel)
	replevel = strtrim(replevel);
	for standing=1,8,1 do
		if _G["FACTION_STANDING_LABEL" .. standing] == replevel then
			return StandingByID[standing].threshold;
		end
	end
end
app.IsFactionExclusive = function(factionID)
	return factionID == 934 or factionID == 932 or factionID == 1104 or factionID == 1105;
end
local fields = {
	["text"] = function(t)
		return app.ColorizeStandingText(t.standing, t.name);
	end,
	["name"] = function(t)
		return app.FactionNameByID[t.factionID] or (t.creatureID and app.NPCNameFromID[t.creatureID]) or (FACTION .. " #" .. t.factionID);
	end,
	["icon"] = function(t)
		return app.asset("Category_Factions");
	end,
	["trackable"] = function(t)
		return true;
	end,
	["collectible"] = function(t)
		if app.Settings.Collectibles.Reputations then
			-- If your reputation is higher than the maximum for a different faction, return partial completion.
			if not app.Settings.AccountWide.Reputations and t.maxReputation and t.maxReputation[1] ~= t.factionID and (select(3, GetFactionInfoByID(t.maxReputation[1])) or 4) >= app.GetFactionStanding(t.maxReputation[2]) then
				return false;
			end
			return true;
		end
		return false;
	end,
	["saved"] = function(t)
		local factionID = t.factionID;
		local minReputation = t.minReputation;
		if minReputation and minReputation[1] == factionID then
			return setFactionCollected(t, factionID, (select(6, GetFactionInfoByID(factionID)) or 0) >= minReputation[2]);
		else
			return setFactionCollected(t, factionID, t.standing >= t.maxstanding);
		end
	end,
	["title"] = function(t)
		local reputation = t.reputation;
		local amount, ceiling = select(2, app.GetFactionStanding(reputation)), t.ceiling;
		local title = _G["FACTION_STANDING_LABEL" .. t.standing];
		if ceiling then
			title = title .. DESCRIPTION_SEPARATOR .. amount .. " / " .. ceiling;
			if reputation < 42000 then
				return title .. " (" .. (42000 - reputation) .. " to " .. _G["FACTION_STANDING_LABEL8"] .. ")";
			end
		end
		return title;
	end,
	["reputation"] = function(t)
		return select(6, GetFactionInfoByID(t.factionID));
	end,
	["ceiling"] = function(t)
		local _, _, _, m, ma = GetFactionInfoByID(t.factionID);
		return ma and m and (ma - m);
	end,
	["standing"] = function(t)
		return select(3, GetFactionInfoByID(t.factionID)) or 1;
	end,
	["maxstanding"] = function(t)
		if t.minReputation and t.minReputation[1] == t.factionID then
			return app.GetFactionStanding(t.minReputation[2]);
		end
		return 8;
	end,
	["description"] = function(t)
		return select(2, GetFactionInfoByID(t.factionID)) or "Not all reputations can be viewed on a single character. IE: Warsong Outriders cannot be viewed by an Alliance Player and Silverwing Sentinels cannot be viewed by a Horde Player.";
	end,
};
fields.collected = fields.saved;
app.CreateFaction = app.CreateClass("Faction", "factionID", fields);
app.OnUpdateReputationRequired = function(t)
	if app.Settings:Get("DebugMode") or app.Settings:Get("AccountMode") then
		t.visible = true;
		return false;
	else
		local reputationID = t.minReputation[1];
		t.visible = (select(3, GetFactionInfoByID(reputationID)) or 1) >= 4;
		return true;
	end
end
end)();

-- Flight Path Lib
(function()
local arrOfNodes = {
	1414,	-- Kalimdor
	1415,	-- Eastern Kingdoms
	1941,	-- Eversong Woods (and Ghostlands + Isle of Quel'Danas)
	1943,	-- Azuremyst Isle (and Bloodmyst)
	1944,	-- Hellfire Peninsula (All of Outland)

	-- TODO:
	118,	-- Icecrown (All of Northrend)
	--422,	-- Dread Wastes (All of Pandaria)
	--525,	-- Frostfire Ridge (All of Draenor)
	--630,	-- Azsuna (All of Broken Isles)
	--882,	-- Mac'Aree (All of Argus)
	--862,	-- Zuldazar (All of Zuldazar)
	--896,	-- Drustvar (All of Kul Tiras)

	1209,	-- Kalimdor
	1208,	-- Eastern Kingdoms
	1467,	-- Outland
	1384,	-- Northrend
	1923,	-- Pandaria
	1922,	-- Draenor
	993,	-- Broken Isles
	994,	-- Argus
	1011,	-- Zandalar
	1014,	-- Kul Tiras
	1504,	-- Nazjatar
	1647,	-- The Shadowlands
	1409,	-- Exile's Reach [Correct]
	2046,	-- Zereth Mortis
	2057,	-- Dragon Isles
	2055,	-- Sepulcher of the First Ones (has FPs inside)
	2149,	-- Ohn'ahran Plains [The Nokhud Offensive] (has FPs inside)
	2175,	-- Zaralek Cavern
};
app.CacheFlightPathData = function()
	local newNodes, anyNew = {}, false;
	for i,mapID in ipairs(arrOfNodes) do
		local allNodeData = C_TaxiMap.GetTaxiNodesForMap(mapID);
		if allNodeData then
			for j,nodeData in ipairs(allNodeData) do
				if nodeData.name then
					ATTClassicAD.LocalizedFlightPathNames[nodeData.nodeID] = nodeData.name;
					if #SearchForField("flightPathID", nodeData.nodeID) < 1 then
						newNodes[nodeData.nodeID] = nodeData.name;
						anyNew = true;
					end
				end
			end
		end
	end
	if anyNew then
		print("Found new flight path data:");
		for i,name in pairs(newNodes) do
			print(i, name);
		end
		SetDataMember("NewFlightPathData", newNodes);
	end
end
app.CacheFlightPathDataForMap = function(mapID, nodes)
	local count = 0;
	local temp = {};
	for nodeID,_ in pairs(SearchForFieldContainer("flightPathID")) do
		for i,node in ipairs(_) do
			if not node.u and node.coords and node.coords[1][3] == mapID then
				if not node.r or node.r == app.FactionID then
					temp[nodeID] = node;
					count = count + 1;
				end
			end
		end
	end
	if count > 0 then
		if count > 1 then
			count = 0;
			local mapID = app.CurrentMapID;
			if mapID then
				local pos = C_Map_GetPlayerMapPosition(mapID, "player");
				if pos then
					local px, py = pos:GetXY();
					px, py = px * 100, py * 100;

					-- Select the best flight path node.
					for nodeID,node in pairs(temp) do
						local coord = node.coords and node.coords[1];
						if coord then
							-- Allow for a little bit of leeway.
							if distance(px, py, coord[1], coord[2]) < 0.6 then
								nodes[nodeID] = true;
							end
						end
					end
				end
			end
		else
			for nodeID,_ in pairs(temp) do
				nodes[nodeID] = true;
			end
		end
	end
	return count;
end
app.CacheFlightPathDataForTarget = function(nodes)
	local guid = UnitGUID("npc") or UnitGUID("target");
	if guid then
		local type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = strsplit("-",guid);
		if type == "Creature" and npcID then
			npcID = tonumber(npcID);
			local count = 0;
			local searchResults = SearchForField("creatureID", npcID);
			if searchResults and #searchResults > 0 then
				for i,group in ipairs(searchResults) do
					if group.flightPathID and not group.nmr and not group.nmc and (not group.u or group.u > 1) then
						nodes[group.flightPathID] = true;
						count = count + 1;
					end
				end
			end
			return count;
		end
	end
	return 0;
end
app.CreateFlightPath = app.CreateClass("FlightPath", "flightPathID", {
	["text"] = function(t)
		return t.name;
	end,
	["name"] = function(t)
		return ATTClassicAD.LocalizedFlightPathNames[t.flightPathID] or "Visit the Flight Master to cache.";
	end,
	["icon"] = function(t)
		local r = t.r;
		if r then
			if r == HORDE_FACTION_ID then
				return app.asset("fp_horde");
			else
				return app.asset("fp_alliance");
			end
		end
		return app.asset("fp_neutral");
	end,
	["description"] = function(t)
		return "Flight paths are cached when you look at the flight master at each location.\n  - Crieve";
	end,
	["collectible"] = function(t)
		return app.Settings.Collectibles.FlightPaths;
	end,
	["collected"] = function(t)
		if app.CurrentCharacter.FlightPaths[t.flightPathID] then return 1; end
		if app.Settings.AccountWide.FlightPaths and ATTAccountWideData.FlightPaths[t.flightPathID] then return 2; end
		if t.altQuests then
			for i,questID in ipairs(t.altQuests) do
				if IsQuestFlaggedCompleted(questID) then
					return 2;
				end
			end
		end
	end,
	["nmc"] = function(t)
		local c = t.c;
		if c and not contains(c, app.ClassIndex) then
			rawset(t, "nmc", true); -- "Not My Class"
			return true;
		end
		rawset(t, "nmc", false); -- "My Class"
		return false;
	end,
	["nmr"] = function(t)
		local r = t.r;
		return r and r ~= app.FactionID;
	end,
});
app.events.GOSSIP_SHOW = function()
	local knownNodeIDs = {};
	if app.CacheFlightPathDataForTarget(knownNodeIDs) > 0 then
		local any = false;
		for nodeID,_ in pairs(knownNodeIDs) do
			nodeID = tonumber(nodeID);
			if not app.CurrentCharacter.FlightPaths[nodeID] then
				local searchResults = SearchForField("flightPathID", nodeID);
				app.SetCollected(#searchResults > 0 and searchResults[1], "FlightPaths", nodeID, true);
				any = true;
			end
		end
		if any then
			app:RefreshDataQuietly("GOSSIP_SHOW", true);
		end
	end
end
app.events.TAXIMAP_OPENED = function()
	local knownNodeIDs = {};
	app.CacheFlightPathDataForTarget(knownNodeIDs);
	app.CacheFlightPathDataForMap(app.CurrentMapID, knownNodeIDs);

	local allNodeData = C_TaxiMap.GetAllTaxiNodes(app.CurrentMapID);
	if allNodeData then
		for j,nodeData in ipairs(allNodeData) do
			if nodeData.state and nodeData.state < 2 then
				knownNodeIDs[nodeData.nodeID] = true;
			end
		end
	end

	local any = false;
	for nodeID,_ in pairs(knownNodeIDs) do
		nodeID = tonumber(nodeID);
		if not app.CurrentCharacter.FlightPaths[nodeID] then
			local searchResults = SearchForField("flightPathID", nodeID);
			app.SetCollected(#searchResults > 0 and searchResults[1], "FlightPaths", nodeID, true);
			any = true;
		end
	end
	if any then
		app:RefreshDataQuietly("TAXIMAP_OPENED", true);
	end
end
end)();

-- Garrison Lib
(function()
if C_Garrison then
local C_Garrison_GetBuildingInfo = C_Garrison.GetBuildingInfo;
local GarrisonBuildingInfoMeta = { __index = function(t, key)
	local _, name, _, icon, lore, _, _, _, _, _, uncollected = C_Garrison_GetBuildingInfo(t.garrisonBuildingID);
	if not name then return nil; end
	t.name = name;
	t.icon = icon;
	t.lore = lore;
	setmetatable(t, nil);
	return t[key];
end };
local GarrisonBuildingInfoByID = setmetatable({}, { __index = function(t, id)
	local info = setmetatable({ garrisonBuildingID = id }, GarrisonBuildingInfoMeta);
	t[id] = info;
	return info;
end });
app.CreateGarrisonBuilding = app.CreateClass("GarrisonBuilding", "garrisonBuildingID", {
	info = function(t)
		return GarrisonBuildingInfoByID[t.garrisonBuildingID];
	end,
	name = function(t)
		return t.info.name;
	end,
	icon = function(t)
		return t.info.icon;
	end,
	lore = function(t)
		return t.info.lore;
	end,
},
"WithItem", {
	icon = function(t)
		return select(5, GetItemInfoInstant(t.itemID)) or t.info.icon;
	end,
	link = function(t)
		return select(2, GetItemInfo(t.itemID)) or RETRIEVING_DATA;
	end,
	name = function(t)
		return GetItemInfo(t.itemID) or t.info.name;
	end,
	tsm = function(t)
		return string.format("i:%d", t.itemID);
	end,
	f = function(t)
		return app.FilterConstants.RECIPES;
	end,
	collectible = function(t)
		return app.Settings.Collectibles.Recipes;
	end,
	collected = function(t)
		local id = t.garrisonBuildingID;
		if app.CurrentCharacter.GarrisonBuildings[id] then return 1; end
		return app.SetCollected(t, "GarrisonBuildings", id, not select(11, C_Garrison_GetBuildingInfo(id)));
	end,
}, (function(t) return t.itemID; end));

local C_Garrison_GetMissionName = C_Garrison.GetMissionName;
app.CreateGarrisonMission = app.CreateClass("GarrisonMission", "garrisonMissionID", {
	name = function(t)
		return C_Garrison_GetMissionName(t.missionID);
	end,
	icon = function(t)
		return "Interface/ICONS/INV_Icon_Mission_Complete_Order";
	end,
});

local C_Garrison_GetTalentInfo = C_Garrison.GetTalentInfo;
local GarrisonTalentInfoMeta = { __index = function(t, key)
	local info = C_Garrison_GetTalentInfo(t.garrisonTalentID);
	if not info then return nil; end
	t.name = info.name;
	t.icon = info.icon or "Interface/ICONS/INV_Icon_Mission_Complete_Order";
	t.description = info.description;
	setmetatable(t, nil);
	return t[key];
end };
local GarrisonTalentInfoByID = setmetatable({}, { __index = function(t, id)
	local info = setmetatable({ garrisonTalentID = id }, GarrisonTalentInfoMeta);
	t[id] = info;
	return info;
end });
app.CreateGarrisonTalent = app.CreateClass("GarrisonTalent", "garrisonTalentID", {
	info = function(t)
		return GarrisonTalentInfoByID[t.garrisonTalentID];
	end,
	name = function(t)
		return t.info.name;
	end,
	icon = function(t)
		return t.info.icon;
	end,
	description = function(t)
		return t.info.description;
	end,
	trackable = function(t)
		return true;
	end,
	saved = function(t)
		return C_Garrison_GetTalentInfo(t.garrisonTalentID).researched;
	end,
});
else
app.CreateGarrisonBuilding = function(id, t)
	return { text = "GarrisonBuilding #" .. id, description = "This data type is not supported at this time." };
end
app.CreateGarrisonMission = function(id, t)
	return { text = "GarrisonMission #" .. id, description = "This data type is not supported at this time." };
end
app.CreateGarrisonTalent = function(id, t)
	return { text = "GarrisonTalent #" .. id, description = "This data type is not supported at this time." };
end
end
end)();

-- Item Lib
(function()
local BestSuffixPerItemID = setmetatable({}, { __index = function(t, id)
	local suffixes = GetDataSubMember("ValidSuffixesPerItemID", id);
	if suffixes then
		for suffixID,_ in pairs(suffixes) do
			rawset(t, id, suffixID);
			return suffixID;
		end
	else
		-- No valid suffixes
		rawset(t, id, 0);
		return 0;
	end
end });
local TotalRetriesPerItemID = setmetatable({}, { __index = function(t, id)
	return 0;
end });
local BestItemLinkPerItemID = setmetatable({}, { __index = function(t, id)
	local suffixID = BestSuffixPerItemID[id];
	local link = select(2, GetItemInfo(suffixID > 0 and string.format("item:%d:0:0:0:0:0:%d", id, suffixID) or id));
	if link then
		rawset(t, id, link);
		return link;
	end
end });
local BlacklistedRWPItems = {
	[22736] = true,	-- Andonisus, Reaper of Souls
};
local baseGetItemCount = function(t)
	return GetItemCount(t.itemID, true);
end;
app.ParseItemID = function(itemName)
	if type(itemName) == "number" then
		return itemName;
	else
		local itemID = tonumber(itemName);
		if string.match(tostring(itemID), itemName) then
			-- This was actually an item ID.
			return itemID;
		else
			-- The itemID given was actually the name or a link.
			itemID = GetItemInfoInstant(itemName);
			if itemID then
				-- Oh good, it was cached by WoW.
				return itemID;
			else
				-- Oh no, gonna need to work for it.
				for id,_ in pairs(SearchForFieldContainer("itemID")) do
					local text = BestItemLinkPerItemID[id];
					if text and string.match(text, itemName) then
						return id;
					end
				end
			end
		end
	end
end
app.ClearItemCache = function()
	wipe(BestSuffixPerItemID);
	wipe(BestItemLinkPerItemID);
end
local collectibleAsCostForItem = function(t)
	local id = t.itemID;
	local results = SearchForField("itemIDAsCost", id);
	if #results > 0 then
		local costTotal = 0;
		if not t.parent or not t.parent.saved then
			for _,ref in pairs(results) do
				if ref.itemID ~= id and app.RecursiveGroupRequirementsFilter(ref) then
					if ref.key == "instanceID" or ((ref.key == "difficultyID" or ref.key == "mapID" or ref.key == "headerID") and (ref.parent and GetRelativeValue(ref.parent, "instanceID"))) then
						if costTotal < 1 then	-- This is for Keys
							costTotal = costTotal + 1;
						end
					elseif (ref.collectible and not ref.collected) or (ref.total and ref.total > ref.progress) then
						if ref.cost then
							for k,v in ipairs(ref.cost) do
								if v[2] == id and v[1] == "i" then
									costTotal = costTotal + (v[3] or 1);
								end
							end
						end
						if ref.providers then
							for k,v in ipairs(ref.providers) do
								if v[2] == id and v[1] == "i" then
									if ref.objectiveID then
										costTotal = costTotal + (t.objectiveCost or 0);
									else
										costTotal = costTotal + 1;
									end
								end
							end
						end
					end
				end
			end
		end
		t.costTotal = costTotal;
		return costTotal > 0;
	elseif t.simplemeta then
		-- If no references to the item were used as a cost evaluation, then simplify the meta.
		setmetatable(t, t.simplemeta);
		return false;
	end
end;
local collectedAsCostForItem = function(t)
	if t.costTotal and t.costTotal > 0 then
		return t.GetItemCount(t) >= t.costTotal;
	end
end;
local collectibleAsQuest = function(t)
	if app.Settings.Collectibles.Quests then
		if (not t.repeatable and not t.isBreadcrumb) or C_QuestLog_IsOnQuest(t.questID) then
			return true;
		end
	end
end
local isCollectibleRWP = function(t)
	return t.f and (t.rwp or (t.u and (t.u == 2 or t.u == 3 or t.u == 4))) and not BlacklistedRWPItems[t.itemID] and app.Settings:GetFilterForRWPBase(t.f);
end
local collectedAsRWP = function(t)
	if app.Settings.Collectibles.RWP then
		-- If it's a BOE we can collect it on this character.
		local id, b = t.itemID, t.b;
		if not b or b == 2 or b == 3 then
			-- This item is BOE. You CAN collect this on this character! (but not from a quest)
			return app.SetCollected(t, "RWP", id, GetItemCount(id, true) > 0);
		elseif app.Settings:GetFilterForRWP(t.f) or (t.filterForRWP and app.Settings:GetFilterForRWP(t.filterForRWP)) then
			-- This character matches requirements
			if GetItemCount(id, true) > 0 then
				-- You kept this item. Nice!
				return app.SetCollected(t, "RWP", id, true);
			else
				-- Check to see if this item was a quest reward.
				local searchResults = SearchForField("itemID", id);
				if #searchResults > 0 then
					for i,o in ipairs(searchResults) do
						if ((o.key == "questID" and o.saved) or (o.parent and o.parent.key == "questID" and o.parent.saved)) and app.RecursiveDefaultClassAndRaceFilter(o) then
							return app.SetCollected(t, "RWP", id, true);
						end
					end
					return app.SetCollected(t, "RWP", id, false);
				end
			end
		else
			-- This character does NOT match requirements and the item is BOP. You can't collect these on this character. :(
			return app.SetCollected(t, "RWP", id, false);
		end
	end
end;
local itemFields = {
	["text"] = function(t)
		return t.link;
	end,
	["icon"] = function(t)
		return select(5, GetItemInfoInstant(t.itemID)) or "Interface\\Icons\\INV_Misc_QuestionMark";
	end,
	["link"] = function(t)
		return BestItemLinkPerItemID[t.itemID];
	end,
	["name"] = function(t)
		local link = t.link;
		return link and GetItemInfo(link);
	end,
	["b"] = function(t)
		return 2;
	end,
	["f"] = function(t)
		if t.questID then return app.FilterConstants.QUEST_ITEMS; end
		if #SearchForField("itemIDAsCost", t.itemID) > 0 then
			return app.FilterConstants.QUEST_ITEMS;
		end
	end,
	["tsm"] = function(t)
		return string.format("i:%d", t.itemID);
	end,
	["GetItemCount"] = function(t)
		return baseGetItemCount;
	end,
	["collectible"] = function(t)
		return t.collectibleAsCost;
	end,
	["collected"] = function(t)
		return t.collectedAsCost;
	end,
	["collectibleAsCost"] = collectibleAsCostForItem,	-- These two references can get replaced/removed
	["collectedAsCost"] = collectedAsCostForItem,
};
app.CreateItem = app.CreateClass("Item", "itemID", itemFields,
"AsRWP", {
	collectible = function(t)
		return t.collectibleAsCost or app.Settings.Collectibles.RWP;
	end,
	collected = function(t)
		if t.collectedAsCost == false then
			return;
		end
		return collectedAsRWP(t);
	end,
}, isCollectibleRWP,
"WithFactionAndQuest", {
	collectible = function(t)
		return t.collectibleAsCost or collectibleAsQuest(t) or app.Settings.Collectibles.Reputations;
	end,
	collected = function(t)
		if t.collectedAsCost == false then
			return 0;
		end
		if not IsQuestFlaggedCompletedForObject(t) then
			return 0;
		end
		-- This is used by reputation tokens. (turn in items)
		if app.CurrentCharacter.Factions[t.factionID] then return 1; end
		if app.Settings.AccountWide.Reputations and ATTAccountWideData.Factions[t.factionID] then return 2; end
	end,
	trackable = function(t)
		return true;
	end,
	saved = function(t)
		return IsQuestFlaggedCompletedForObject(t) == 1;
	end
}, (function(t) return t.factionID and t.questID; end),
"WithQuest", {
	collectible = function(t)
		return t.collectibleAsCost or collectibleAsQuest(t);
	end,
	collected = function(t)
		return IsQuestFlaggedCompletedForObject(t) or t.collectedAsCost;
	end,
	trackable = function(t)
		return true;
	end,
	saved = function(t)
		return IsQuestFlaggedCompletedForObject(t) == 1;
	end
}, (function(t) return t.questID; end),
"WithFaction", {
	collectible = function(t)
		return t.collectibleAsCost or app.Settings.Collectibles.Reputations;
	end,
	collected = function(t)
		if t.collectedAsCost == false then
			return 0;
		end
		-- This is used by reputation tokens. (turn in items)
		if app.CurrentCharacter.Factions[t.factionID] then return 1; end
		if app.Settings.AccountWide.Reputations and ATTAccountWideData.Factions[t.factionID] then return 2; end
	end,
}, (function(t) return t.factionID; end));

-- No difference between an item and an heirloom in classic, yet.
app.CreateHeirloom = function(id, t)
	t = app.CreateItem(id, t);
	--t.b = 2;
	return t;
end

local fields = CloneDictionary(itemFields);
fields.collectible = function(t)
	return app.Settings.Collectibles.Toys;
end
fields.collected = function(t)
	if t.toyID then return app.SetCollected(t, "Toys", t.toyID, GetItemCount(t.toyID, true) > 0); end
end
fields.itemID = function(t)
	return t.toyID;
end
app.CreateToy = app.CreateClass("Toy", "toyID", fields);

local HarvestedItemDatabase = {};
local itemHarvesterFields = CloneDictionary(itemFields);
itemHarvesterFields.collectible = function(t)
	return true;
end
itemHarvesterFields.collected = function(t)
	return false;
end
itemHarvesterFields.text = function(t)
	local link = t.link;
	if link then
		local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
		itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expacID, setID, isCraftingReagent
			= GetItemInfo(link);
		if itemName then
			local spellName, spellID;
			if classID == "Recipe" or classID == "Mount" then
				spellName, spellID = GetItemSpell(t.itemID);
				if spellName == "Learning" then spellID = nil; end	-- RIP.
			end
			--setmetatable(t, t.conditions[2]);
			local info = {
				["name"] = itemName,
				["itemID"] = t.itemID,
				["equippable"] = itemEquipLoc and itemEquipLoc ~= "" and true or false,
				["class"] = classID,
				["subclass"] = subclassID,
				["inventoryType"] = C_Item.GetItemInventoryTypeByID(t.itemID),
				["b"] = bindType,
				["q"] = itemQuality,
				["iLvl"] = itemLevel,
				["spellID"] = spellID,
			};
			if itemMinLevel and itemMinLevel > 1 then
				info.lvl = itemMinLevel;
			end
			if info.inventoryType == 0 then
				info.inventoryType = nil;
			end
			if info.b and info.b ~= 1 then
				info.b = nil;
			end
			if info.q and info.q < 1 then
				info.q = nil;
			end
			if info.iLvl and info.iLvl < 2 then
				info.iLvl = nil;
			end
			t.itemType = itemType;
			t.itemSubType = itemSubType;
			t.info = info;
			t.retries = nil;
			HarvestedItemDatabase[t.itemID] = info;
			ATTClassicAD.HarvestedItemDatabase = HarvestedItemDatabase;
			return link;
		end
	end

	t.retries = (t.retries or 0) + 1;
	if t.retries > 30 then
		rawset(t, "collected", true);
	end
end
local ItemHarvester = CreateFrame("GameTooltip", "ATTCItemHarvester", UIParent, "GameTooltipTemplate");
app.CreateItemHarvester = app.CreateClass("ItemHarvester", "itemID", itemHarvesterFields,
"TooltipHarvester", {
	text = function(t)
		local link = t.link;
		if link then
			ItemHarvester:SetOwner(UIParent,"ANCHOR_NONE")
			ItemHarvester:SetHyperlink(link);
			local lineCount = ItemHarvester:NumLines();
			if ATTCItemHarvesterTextLeft1:GetText() and ATTCItemHarvesterTextLeft1:GetText() ~= RETRIEVING_DATA and lineCount > 0 then
				local requirements = {};
				for index=2,lineCount,1 do
					local line = _G["ATTCItemHarvesterTextLeft" .. index] or _G["ATTCItemHarvesterText" .. index];
					if line then
						local text = line:GetText();
						if text then
							if string.find(text, "Classes: ") then
								local classes = {};
								local _,list = strsplit(":", text);
								for i,s in ipairs({strsplit(",", list)}) do
									table.insert(classes, app.ClassDB[strtrim(s)]);
								end
								if #classes > 0 then
									t.info.classes = classes;
								end
							elseif string.find(text, "Races: ") then
								local races = {};
								local _,list = strsplit(":", text);
								for i,s in ipairs({strsplit(",", list)}) do
									table.insert(races, app.RaceDB[strtrim(s)]);
								end
								if #races > 0 then
									t.info.races = races;
								end
							elseif string.find(text, "Requires") and not string.find(text, "Level") and not string.find(text, "Riding") then
								local c = strsub(text, 1, 1);
								if c ~= " " and c ~= "\t" and c ~= "\n" and c ~= "\r" then
									text = strsub(strtrim(text), 9);
									if string.find(text, "-") then
										local faction,replevel = strsplit("-", text);
										t.info.minReputation = { app.GetFactionIDByName(faction), app.GetFactionStandingThresholdFromString(replevel) };
									else
										if string.find(text, "%(") then
											if t.info.requireSkill then
												-- If non-specialization skill is already assigned, skip this part.
												text = nil;
											else
												text = strsplit("(", text);
											end
										end
										if text then
											local spellName = strtrim(text);
											if spellName == "Herbalism" then spellName = "Herb Gathering"; end
											local spellID = app.SpellNameToSpellID[spellName];
											if spellID then
												local skillID = app.SpellIDToSkillID[spellID];
												if skillID then
													t.info.requireSkill = skillID;
												else
													print("Unknown Skill '" .. spellName .. "'");
													table.insert(requirements, spellName);
												end
											else
												print("Unknown Spell '" .. spellName .. "'");
												table.insert(requirements, spellName);
											end
										end
									end
								end
							end
						end
					end
				end
				if #requirements > 0 then
					t.info.otherRequirements = requirements;
				end
				rawset(t, "text", link);
				rawset(t, "collected", true);
			end
			ItemHarvester:Hide();
			return link;
		end
	end
}, (function(t) return false; end));
end)();

-- Map Lib
(function()
local C_Map_GetMapArtID = C_Map.GetMapArtID;
local C_Map_GetMapLevels = C_Map.GetMapLevels;
local C_Map_GetBestMapForUnit = C_Map.GetBestMapForUnit;
local C_MapExplorationInfo_GetExploredMapTextures = C_MapExplorationInfo.GetExploredMapTextures;
local C_MapExplorationInfo_GetExploredAreaIDsAtPosition = C_MapExplorationInfo.GetExploredAreaIDsAtPosition;
local mapIDToMapName, mapIDToAreaID = {}, {
	[126] = { 4560 },	-- The Underbelly
	[427] = { 132, 800 },	-- Coldridge Valley, Coldridge Pass
	[465] = { 154 },	-- Deathknell
	[425] = { 9, 59, 24, 34 },	-- Northshire Valley, Northshire Vineyards, Northshire Abbey, Echo Ridge Mine
	[460] = { 188 },	-- Shadowglen
	[461] = { 363 },	-- Valley of Trials
	[462] = { 221 },	-- Camp Narache
	[467] = { 3431 },	-- Sunstrider Isle
	[468] = { 3526, 3527, 3560, 3528, 3559, 3529, 3530, 3561 },	-- Ammen Vale, Crash Site, Ammen Fields, Silverline Lake, Nestlewood Hills, Nestlewood Thicket, Shadow Ridge, The Sacred Grove
	[348] = { 4095 },	-- Magisters' Terrace
};
for mapID,area in pairs(mapIDToAreaID) do
	local info = C_Map_GetAreaInfo(area[1]);
	if info then
		mapIDToMapName[mapID] = info;
		L.ZONE_TEXT_TO_MAP_ID[info] = mapID;
		if #area > 1 then
			for i=2,#area,1 do
				local info = C_Map_GetAreaInfo(area[i]);
				if info then L.ALT_ZONE_TEXT_TO_MAP_ID[info] = mapID; end
			end
		end
	end
end
app.GetCurrentMapID = function()
	local zone = GetRealZoneText();
	if zone then
		local mapID = L.ZONE_TEXT_TO_MAP_ID[zone] or L.ALT_ZONE_TEXT_TO_MAP_ID[zone];
		if mapID then return mapID; end
	end
	zone = GetSubZoneText();
	if zone then
		local mapID = L.ZONE_TEXT_TO_MAP_ID[zone] or L.ALT_ZONE_TEXT_TO_MAP_ID[zone];
		if mapID then return mapID; end
	end
	return C_Map_GetBestMapForUnit("player");
end
app.GetMapName = function(mapID)
	if mapID and mapID > 0 then
		if mapIDToMapName[mapID] then return mapIDToMapName[mapID]; end
		local info = C_Map_GetMapInfo(mapID);
		if info then
			return info.name;
		else
			for name,m in pairs(L.ZONE_TEXT_TO_MAP_ID) do
				if mapID == m then
					return name;
				end
			end
			for name,m in pairs(L.ALT_ZONE_TEXT_TO_MAP_ID) do
				if mapID == m then
					return name;
				end
			end
		end
		return "Map ID #" .. mapID;
	else
		return "Map ID #???";
	end
end

app.CreateExploration = app.CreateClass("Exploration", "explorationID", {
	["text"] = function(t)
		return C_Map_GetAreaInfo(t.explorationID) or RETRIEVING_DATA;
	end,
	["title"] = function(t)
		return t.maphash;
	end,
	["description"] = function(t)
		if not TomTom then
			return "You can use Alt+Right Click to plot the coordinates with TomTom installed. If this refuses to be marked collected for you in ATT, try reloading your UI or relogging.";
		else
			return "You can use Alt+Right Click to plot the coordinates. If this refuses to be marked collected for you in ATT, try reloading your UI or relogging.";
		end
	end,
	["preview"] = function(t)
		local exploredMapTextureInfo = t.exploredMapTextureInfo;
		if exploredMapTextureInfo then
			local texture = exploredMapTextureInfo.fileDataIDs[1];
			if texture then
				rawset(t, "preview", texture);
				return texture;
			end
		end
	end,
	["artID"] = function(t)
		return t.parent and (t.parent.artID or (t.parent.parent and t.parent.parent.artID));
	end,
	["icon"] = function(t)
		return app.asset("Category_Exploration");
	end,
	["mapID"] = function(t)
		return t.parent and (t.parent.mapID or (t.parent.parent and t.parent.parent.mapID));
	end,
	["collectible"] = function(t)
		return app.Settings.Collectibles.Exploration;
	end,
	["collected"] = function(t)
		if app.CurrentCharacter.Exploration[t.explorationID] then return 1; end
		if app.Settings.AccountWide.Exploration and ATTAccountWideData.Exploration[t.explorationID] then return 2; end

		local maphash = t.maphash;
		if maphash then
			local exploredMapTextures = C_MapExplorationInfo_GetExploredMapTextures(t.mapID)
			if exploredMapTextures then
				for i,info in ipairs(exploredMapTextures) do
					local hash = info.textureWidth..":"..info.textureHeight..":"..info.offsetX..":"..info.offsetY;
					if hash == maphash then return app.SetCollected(nil, "Exploration", t.explorationID, true); end
				end
				--[[
				if not app.MAPHASHTHING then app.MAPHASHTHING = {}; end
					if not app.MAPHASHTHING[t.explorationID] then
					app.MAPHASHTHING[t.explorationID] = true;
					print("Failed to detect maphash '" .. maphash .. "' on map " .. t.mapID .. ".");
				end
				]]--
			end
		end
		--[[
		if not app.MAPTHING then app.MAPTHING = {}; end
		local exploredMapTextures = C_MapExplorationInfo_GetExploredMapTextures(t.mapID);
		if not app.MAPTHING[t.mapID] and exploredMapTextures then
			app.MAPTHING[t.mapID] = true;
			local hashes = {};
			for i,o in ipairs(t.parent.g) do
				if o.maphash then hashes[o.maphash] = o; end
			end
			for i,info in ipairs(exploredMapTextures) do
				local hash = info.textureWidth..":"..info.textureHeight..":"..info.offsetX..":"..info.offsetY;
				if hash and not hashes[hash] then
					print("Failed to find areaID for maphash '" .. hash .. "' on map " .. t.mapID .. ".");
				end
			end
		end
		local coords = t.coords;
		if coords and #coords > 0 then
			local c = coords[1];
			local explored = C_MapExplorationInfo_GetExploredAreaIDsAtPosition(c[2], CreateVector2D(c[1] / 100, c[2] / 100, c[2]));
			if explored then
				for _,areaID in ipairs(explored) do
					if areaID == t.explorationID then
						app.SetCollected(nil, "Exploration", areaID, true);
						return 1;
					end
				end
			end
		end
		]]--
	end,
	["coords"] = function(t)
		local coords = app.ExplorationAreaPositionDB[t.explorationID];
		if not coords then
			local maphash = t.maphash;
			if maphash then
				local coords = {};
				local width, height, offsetX, offsetY = strsplit(":", maphash);
				tinsert(coords, {((offsetX + (width * 0.5)) * 100) / WorldMapFrame:GetWidth(), ((offsetY + (height * 0.5)) * 100) / WorldMapFrame:GetHeight(), t.mapID});
				return coords;
			end
		end
		return coords;
	end,
	["exploredMapTextureInfo"] = function(t)
		local maphash = t.maphash;
		if maphash then
			local exploredMapTextures = C_MapExplorationInfo_GetExploredMapTextures(t.mapID)
			if exploredMapTextures then
				for i,info in ipairs(exploredMapTextures) do
					local hash = info.textureWidth..":"..info.textureHeight..":"..info.offsetX..":"..info.offsetY;
					if hash == maphash then
						rawset(t, "exploredMapTextureInfo", info);
						return info;
					end
				end
			end
		end
	end
});

local ExplorationGrid = {};
local levelOfDetail = -1;--200;
for i=0,levelOfDetail,1 do
	for j=0,levelOfDetail,1 do
		tinsert(ExplorationGrid, CreateVector2D(i / levelOfDetail, j / levelOfDetail));
	end
end

local DiscoveredNewArea = {};
local simplifyExplorationData = function()
	local i = 100;
	while InCombatLockdown() do coroutine.yield(); end
	while i > 0 do i = i - 1; coroutine.yield(); end
	app.print("Simplifying Exploration Data...");
	local allMapData = {};
	local explorationDB = {};
	local explorationAreaPositionDB = {};
	for areaID,coords in pairs(app.ExplorationAreaPositionDB) do
		for i,coord in ipairs(coords) do
			local mapID = coord[3];
			if mapID then
				local x, y = math.floor(coord[1] * 100), math.floor(coord[2] * 100);
				local hash = x .. ":" .. y;
				local mapData = allMapData[mapID];
				if not mapData then
					mapData = {};
					mapData.areas = {};
					mapData.areaList = {};
					mapData.hits = {};
					allMapData[mapID] = mapData;
					explorationDB[mapID] = mapData.areaList;
				end
				if not mapData.areas[areaID] then
					mapData.areas[areaID] = 1;
					tinsert(mapData.areaList, areaID);
				end
				if not mapData.hits[hash] then
					mapData.hits[hash] = { areaID };
				else
					tinsert(mapData.hits[hash], areaID);
				end
			end
		end
	end
	app.print("Determining best coordinates for areas...");
	coroutine.yield();
	local sortMethod = function(a, b)
		return a[1] > b[1];
	end;
	for mapID,mapData in pairs(allMapData) do
		app.print("Determining best coordinates for map ".. mapID);
		local hitsByAreaID, hitsByCount = {}, {};
		for i,areaID in ipairs(mapData.areaList) do
			hitsByAreaID[areaID] = {};
		end
		for hash,hits in pairs(mapData.hits) do
			tinsert(hitsByCount, { #hits, hash, hits});
		end
		app.Sort(hitsByCount, sortMethod);
		coroutine.yield();

		-- Now randomly grab hashes until every area has a few hashes
		while #hitsByCount > 0 do
			local index = math.random(#hitsByCount);
			local hit = hitsByCount[index];
			table.remove(hitsByCount, index);
			for i,areaID in ipairs(hit[3]) do
				local hits = hitsByAreaID[areaID];
				if #hits < 10 then tinsert(hits, hit[2]); end
			end
		end

		-- Now that each has some hashes (probably), let's simplfy that data table.
		for areaID,hits in pairs(hitsByAreaID) do
			local positions = explorationAreaPositionDB[areaID];
			if not positions then
				positions = {};
				explorationAreaPositionDB[areaID] = positions;
			end
			for i,hash in ipairs(hits) do
				local x, y = hash:match("(%d+):(%d+)");
				tinsert(positions, { tonumber(x) * 0.01, tonumber(y) * 0.01, mapID });
			end
		end
	end
	ATTClassicAD.ExplorationDB = explorationDB;
	ATTClassicAD.ExplorationAreaPositionDB = explorationAreaPositionDB;
	app.ExplorationDB = explorationDB;
	app.ExplorationAreaPositionDB = explorationAreaPositionDB;
	app.print("Done Simplifying Exploration Data.");
end
local onMapUpdate = function(t)
	local explorationByAreaID = {};
	local explorationHeader = nil;
	local coordinates = {};
	if t.g then
		for i,o in ipairs(t.g) do
			if o.key == "headerID" and o.headerID == app.HeaderConstants.EXPLORATION then
				explorationHeader = o;
				if o.g then
					for j,e in ipairs(o.g) do
						explorationByAreaID[e.explorationID] = e;
						if e.coords and #e.coords > 0 then
							tinsert(coordinates, e.coords[1]);
						else
							--print("Missing Coordinates for areaID", e.explorationID);
						end
					end
				end
				break;
			end
		end
	end

	local id = t.mapID;
	local newExplorationObjects = {};
	local areaIDs = app.ExplorationDB[id];
	for _,pos in ipairs(coordinates) do
		local explored = C_MapExplorationInfo_GetExploredAreaIDsAtPosition(pos[3] or id, CreateVector2D(pos[1] / 100, pos[2] / 100));
		if explored then
			for _,areaID in ipairs(explored) do
				app.SetCollected(nil, "Exploration", areaID, true);
				local o = explorationByAreaID[areaID];
				if not o and not DiscoveredNewArea[areaID] and #SearchForField("explorationID", areaID) < 1 then
					DiscoveredNewArea[areaID] = true;
					o = app.CreateExploration(areaID);
					explorationByAreaID[areaID] = o;
					tinsert(newExplorationObjects, o);
					print("Found New AreaID:", id, t.text, areaID, o.text);
					tinsert(areaIDs, areaID);
				end
			end
		end
	end
	for _,pos in ipairs(ExplorationGrid) do
		local explored = C_MapExplorationInfo_GetExploredAreaIDsAtPosition(id, pos);
		if explored then
			for _,areaID in ipairs(explored) do
				app.SetCollected(nil, "Exploration", areaID, true);
				local o = explorationByAreaID[areaID];
				if not o and not DiscoveredNewArea[areaID] then
					DiscoveredNewArea[areaID] = true;
					o = app.CreateExploration(areaID);
					explorationByAreaID[areaID] = o;
					tinsert(newExplorationObjects, o);
					print("Found New AreaID:", id, t.text, areaID, o.text);
					tinsert(areaIDs, areaID);
				end
				local coords = app.ExplorationAreaPositionDB[areaID];
				if not coords then
					coords = {};
					app.ExplorationAreaPositionDB[areaID] = coords;
					local missing = ATTClassicAD.ExplorationAreaPositionDB;
					if not missing then
						missing = {};
						--ATTClassicAD.ExplorationAreaPositionDB = missing;
					end
					missing[areaID] = coords;
				end
				tinsert(coords, {pos.x * 100, pos.y * 100, id});
			end
		end
	end
	if #newExplorationObjects > 0 then
		if explorationHeader then
			if not explorationHeader.g then
				explorationHeader.g = {};
			end
			for i,o in ipairs(newExplorationObjects) do
				table.insert(explorationHeader.g, o);
				o.parent = explorationHeader;
			end
		else
			explorationHeader = app.CreateNPC(app.HeaderConstants.EXPLORATION, newExplorationObjects);
			explorationHeader.u = t.u;
			for i,o in ipairs(newExplorationObjects) do
				o.parent = explorationHeader;
				if not o.u then o.u = t.u; end
			end
			explorationHeader.parent = t;
			tinsert(t.g, 1, explorationHeader);
		end
	end
	if explorationHeader and explorationHeader.g then
		app.Sort(explorationHeader.g, app.SortDefaults.Text);
	end
	rawset(t, "OnUpdate", nil);
	--app:StartATTCoroutine("Simplifying Exploration Data", simplifyExplorationData);
end;
app.SortExplorationDB = function()
	local e,t=ATTC.ExplorationDB,{};
	for mapID,areas in pairs(e) do
		local s = {};
		t[mapID] = s;
		for i,areaID in ipairs(areas) do
			tinsert(s, { areaID, C_Map_GetAreaInfo(areaID) });
		end
		app.Sort(s, function(a, b)
			return a[2] < b[2];
		end);
	end
	ATTClassicAD.NamedExplorationDB = t;
end
local createMap, mapClass = app.CreateClass("Map", "mapID", {
	["text"] = function(t)
		return t.isRaid and ("|c" .. app.Colors.Raid .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		return t.headerID and app.NPCNameFromID[t.headerID] or app.GetMapName(t.mapID);
	end,
	["icon"] = function(t)
		return t.headerID and L["HEADER_ICONS"][t.headerID] or app.asset("Category_Zones");
	end,
	["back"] = function(t)
		if app.CurrentMapID == t.mapID or (t.maps and contains(t.maps, app.CurrentMapID)) then
			return 1;
		end
	end,
	["artID"] = function(t)
		return C_Map_GetMapArtID(t.mapID);
	end,
	["lvl"] = function(t)
		return C_Map_GetMapLevels(t.mapID);
	end,
});
app.BaseMap = mapClass;
app.CreateMap = function(id, t)
	local t = createMap(id, t);
	local artID = t.artID;
	if artID and t.g then
		local explorationByAreaID = {};
		local explorationHeader = nil;
		for i,o in ipairs(t.g) do
			if o.headerID == app.HeaderConstants.EXPLORATION then
				explorationHeader = o;
				if o.g then
					for j,e in ipairs(o.g) do
						local explorationID = e.explorationID;
						if explorationID then
							explorationByAreaID[explorationID] = e;
						end
					end
				end
				break;
			end
		end

		local newExplorationObjects = {};
		local areaIDs = app.ExplorationDB[id];
		if not areaIDs then
			areaIDs = {};
			app.ExplorationDB[id] = areaIDs;
			--ATTClassicAD.ExplorationDB = ATTC.ExplorationDB;
		else
			for _,areaID in ipairs(areaIDs) do
				if not explorationByAreaID[areaID] then
					o = app.CreateExploration(areaID);
					explorationByAreaID[areaID] = o;
					tinsert(newExplorationObjects, o);
				end
			end
		end
		if #newExplorationObjects > 0 then
			if explorationHeader then
				if not explorationHeader.g then
					explorationHeader.g = {};
				end
				for i,o in ipairs(newExplorationObjects) do
					table.insert(explorationHeader.g, o);
					o.parent = explorationHeader;
				end
			else
				explorationHeader = app.CreateNPC(app.HeaderConstants.EXPLORATION, newExplorationObjects);
				explorationHeader.u = t.u;
				for i,o in ipairs(newExplorationObjects) do
					o.parent = explorationHeader;
					if not o.u then o.u = t.u; end
				end
				explorationHeader.parent = t;
				tinsert(t.g, 1, explorationHeader);
			end
		end
		if explorationHeader and explorationHeader.g then
			app.Sort(explorationHeader.g, app.SortDefaults.Text);
		end
		if not rawget(t, "OnUpdate") then
			t.OnUpdate = onMapUpdate;
		end
	end
	if t.creatureID and t.creatureID < 0 then
		t.headerID = t.creatureID;
		t.creatureID = nil;
	end
	return t;
end
app.CreateInstance = app.CreateClass("Instance", "instanceID", {
	["text"] = function(t)
		return t.isRaid and ("|c" .. app.Colors.Raid .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		return t.headerID and app.NPCNameFromID[t.headerID] or app.GetMapName(t.mapID);
	end,
	["icon"] = function(t)
		return t.headerID and L["HEADER_ICONS"][t.headerID] or app.asset("Category_Zones");
	end,
	["back"] = function(t)
		if app.CurrentMapID == t.mapID or (t.maps and contains(t.maps, app.CurrentMapID)) then
			return 1;
		end
	end,
	["mapID"] = function(t)
		return t.maps and t.maps[1];
	end,
	["lvl"] = function(t)
		return C_Map_GetMapLevels(t.mapID);
	end,
	["locks"] = function(t)
		local lockouts = app.CurrentCharacter.Lockouts;
		local locks = lockouts[t.name];
		if locks then
			t.locks = locks;
			return locks;
		end
		local sins = t.sins;
		if sins then
			for i=1,#sins,1 do
				locks = lockouts[sins[i]];
				if locks then
					t.locks = locks;
					return locks;
				end
			end
		end
		local areaID = t["zone-text-areaID"];
		if areaID then
			local name = C_Map_GetAreaInfo(areaID);
			if name then
				locks = lockouts[name];
				if locks then
					t.locks = locks;
					return locks;
				end
			end
		end
	end,
	["saved"] = function(t)
		return t.locks;
	end,
},
"WithCreature", {}, (function(t)
	if t.creatureID and t.creatureID < 0 then
		t.headerID = t.creatureID;
		t.creatureID = nil;
		return true;
	end
end));

app.events.MAP_EXPLORATION_UPDATED = function(...)
	app.CurrentMapID = app.GetCurrentMapID();
	app:StartATTCoroutine("RefreshExploration", function()
		coroutine.yield();
		local mapID = app.CurrentMapID;
		while not mapID do
			coroutine.yield();
			mapID = app.CurrentMapID;
		end
		local pos = C_Map_GetPlayerMapPosition(mapID, "player");
		if pos then
			local px, py = pos:GetXY();
			px, py = px * 100, py * 100;
			local explored = C_MapExplorationInfo_GetExploredAreaIDsAtPosition(app.CurrentMapID, pos);
			if explored then
				local newArea = false;
				for _,areaID in ipairs(explored) do
					if not app.CurrentCharacter.Exploration[areaID] then
						app.SetCollected(nil, "Exploration", areaID, true);
						newArea = true;
						if not app.ExplorationAreaPositionDB[areaID] then
							local coord = {px, py, app.CurrentMapID};
							print("New Coordinate: ", C_Map_GetAreaInfo(areaID), coord);
							app.ExplorationAreaPositionDB[areaID] = { coord };
						end
					end
				end
				if newArea then app:RefreshDataQuietly("RefreshExploration", true); end
			end
		end
	end);
end
app.events.UI_INFO_MESSAGE = function(messageID)
	if messageID == 372 then
		app.events.MAP_EXPLORATION_UPDATED();
	end
end
app.events.ZONE_CHANGED = function()
	app.CurrentMapID = app.GetCurrentMapID();
end
app.events.ZONE_CHANGED_INDOORS = function()
	app.CurrentMapID = app.GetCurrentMapID();
end
app.events.ZONE_CHANGED_NEW_AREA = function()
	app.CurrentMapID = app.GetCurrentMapID();
end
app:RegisterEvent("MAP_EXPLORATION_UPDATED");
app:RegisterEvent("UI_INFO_MESSAGE");
app:RegisterEvent("ZONE_CHANGED");
app:RegisterEvent("ZONE_CHANGED_INDOORS");
app:RegisterEvent("ZONE_CHANGED_NEW_AREA");
end)();

-- NPC Lib
(function()
-- NPC Model Harvester (also acquires the displayID)
local npcModelHarvester = CreateFrame("DressUpModel", nil, UIParent);
npcModelHarvester:SetPoint("TOPRIGHT", UIParent, "BOTTOMRIGHT", 0, 0);
npcModelHarvester:SetSize(1, 1);
npcModelHarvester:Hide();
local NPCDisplayIDFromID = setmetatable({}, { __index = function(t, id)
	if id > 0 then
		npcModelHarvester:SetDisplayInfo(0);
		npcModelHarvester:SetUnit("none");
		npcModelHarvester:SetCreature(id);
		local displayID = npcModelHarvester:GetDisplayInfo();
		if displayID and displayID ~= 0 then
			rawset(t, id, displayID);
			app:RedrawWindows("NPCDisplayIDFromID");
			return displayID;
		end
	end
end});
app.NPCDisplayIDFromID = NPCDisplayIDFromID;

-- NPC & Title Name Harvesting Lib (https://us.battle.net/forums/en/wow/topic/20758497390?page=1#post-4, Thanks Gello!)
local NPCNameFromID, NPCTitlesFromID = {},{};
local C_TooltipInfo_GetHyperlink = C_TooltipInfo and C_TooltipInfo.GetHyperlink;
if C_TooltipInfo_GetHyperlink then
	setmetatable(NPCNameFromID, { __index = function(t, id)
		if id > 0 then
			local tooltipData = C_TooltipInfo_GetHyperlink(format("unit:Creature-0-0-0-0-%d-0000000000",id));
			if tooltipData then
				local title = tooltipData.lines[1].leftText;
				if title and #tooltipData.lines > 2 then
					NPCTitlesFromID[id] = tooltipData.lines[2].leftText;
				end
				if title and title ~= RETRIEVING_DATA then
					t[id] = title;
					return title;
				end
			end
		else
			return L.HEADER_NAMES[id];
		end
	end});
else
	local ATTCNPCHarvester = CreateFrame("GameTooltip", "ATTCNPCHarvester", UIParent, "GameTooltipTemplate");
	setmetatable(NPCNameFromID, { __index = function(t, id)
		if id > 0 then
			ATTCNPCHarvester:SetOwner(UIParent,"ANCHOR_NONE")
			ATTCNPCHarvester:SetHyperlink(format("unit:Creature-0-0-0-0-%d-0000000000",id))
			local title = ATTCNPCHarvesterTextLeft1:GetText();
			if title and ATTCNPCHarvester:NumLines() > 2 then
				NPCTitlesFromID[id] = ATTCNPCHarvesterTextLeft2:GetText();
			end
			ATTCNPCHarvester:Hide();
			if title and title ~= RETRIEVING_DATA then
				t[id] = title;
				return title;
			end
		else
			return L.HEADER_NAMES[id];
		end
	end});
end
app.NPCNameFromID = NPCNameFromID;
app.NPCTitlesFromID = NPCTitlesFromID;

-- Event, Header, and NPC Lib
local createNPC = app.CreateClass("NPC", "npcID", {
	["key"] = function(t)
		return "npcID";
	end,
	["text"] = function(t)
		return t.isRaid and ("|c" .. app.Colors.Raid .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		return NPCNameFromID[t.npcID] or RETRIEVING_DATA;
	end,
	["icon"] = function(t)
		return (t.parent and t.parent.headerID == app.HeaderConstants.VENDORS and "Interface\\Icons\\INV_Misc_Coin_01")
			or app.DifficultyIcons[GetRelativeValue(t, "difficultyID") or 1];
	end,
	["title"] = function(t)
		return NPCTitlesFromID[t.npcID];
	end,
	["displayID"] = function(t)
		return app.NPCDisplayIDFromID[t.npcID];
	end,
	["creatureID"] = function(t)	-- TODO: Do something about this, it's silly.
		return t.npcID;
	end,
},
"WithQuest", {
	collectible = function(t)
		return app.Settings.Collectibles.Quests and (not t.repeatable and not t.isBreadcrumb or C_QuestLog_IsOnQuest(t.questID));
	end,
	collected = function(t)
		return IsQuestFlaggedCompletedForObject(t);
	end,
	trackable = function(t)
		return true;
	end,
	saved = function(t)
		return IsQuestFlaggedCompletedForObject(t) == 1;
	end
}, (function(t) return t.questID; end));
local createCustomHeader = app.CreateClass("Header", "headerID", {
	["text"] = function(t)
		return t.isRaid and ("|c" .. app.Colors.Raid .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		return L["HEADER_NAMES"][t.headerID];
	end,
	["icon"] = function(t)
		return L["HEADER_ICONS"][t.headerID] or app.asset("Category_Zones");
	end,
	["description"] = function(t)
		return L["HEADER_DESCRIPTIONS"][t.headerID];
	end,
	["lore"] = function(t)
		return L["HEADER_LORE"][t.headerID];
	end,
	["saved"] = function(t)
		return IsQuestFlaggedCompletedForObject(t) == 1;
	end,
	["trackable"] = function(t)
		return t.questID;
	end,
},
"WithEvent", app.Modules.Events.Fields, (function(t) return L.HEADER_EVENTS[t.headerID]; end));
app.CreateCustomHeader = createCustomHeader;
app.CreateNPC = function(id, t)
	if not id then
		print("Broken ID for CreateNPC");
		t = {};
		if t[1] then
			t = { g = t };
		end
		t.OnUpdate = function()
			print("HEY! FIX THIS", BuildSourceTextForDynamicPath(t, 0));
			print(t.progress, t.total, t.g and #t.g);

		end
		id = 0;
	end
	if id < 1 then
		if t and t.npcID == id then t.npcID = nil; end
		return createCustomHeader(id, t);
	else
		return createNPC(id, t);
	end
end

-- Automatic Headers
local HeaderTypeAbbreviations = {
	["a"] = "achievementID",
	["c"] = "classID",
	["m"] = "mapID",
	["n"] = "npcID",
	["i"] = "itemID",
	["q"] = "questID",
	["s"] = "spellID",
};
-- Alternate functions to attach data into a table based on an id for a given type code
local AlternateDataTypes = {
	["ac"] = function(id)
		return { text = GetCategoryInfo(id) };
	end,
	["crit"] = function(id)
		local ach = math.floor(id);
		local crit = math.floor(100 * (id - ach) + 0.005);
		return { text = GetAchievementCriteriaInfo(ach, crit) };
	end,
	["d"] = function(id)
		local name, _, _, _, _, _, _, _, _, _, textureFilename = GetLFGDungeonInfo(id);
		return { text = name, icon = textureFilename };
	end,
	["df"] = function(id)
		local aid = math.floor(id);
		local hid = math.floor(10000 * (id - aid) + 0.005);
		id = app.FactionID == Enum.FlightPathFaction.Alliance and tonumber(aid) or tonumber(hid);
		local name, _, _, _, _, _, _, _, _, _, textureFilename = GetLFGDungeonInfo(id);
		return { text = name, icon = textureFilename };
	end,
	["_G"] = function(id)
		return { ["text"] = _G[id] };
	end,
};
app.CreateHeader = app.CreateClass("AutomaticHeader", "autoID", {
	["text"] = function(t)
		return t.isRaid and ("|c" .. app.Colors.Raid .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		return t.result.name or t.result.text;
	end,
	["icon"] = function(t)
		return t.result.icon;
	end,
	["result"] = function(t)
		local typ = HeaderTypeAbbreviations[t.type];
		if typ then
			local cache = SearchForField(typ, t.autoID);
			if #cache > 0 then
				t.result = cache[1];
				return cache[1];
			else
				cache = CreateObject({[typ] = t.autoID});
				t.result = cache;
				return cache;
			end
		else
			local cache = AlternateDataTypes[t.type];
			if cache then
				cache = cache(t.autoID);
				if cache then
					t.result = cache;
					return cache;
				end
			end
		end
		print("Unhandled Header Type", t.type, t.autoID, typ);
		return app.EmptyTable;
	end,
},
"WithQuest", {
	collectible = function(t)
		return app.Settings.Collectibles.Quests and (not t.repeatable and not t.isBreadcrumb or C_QuestLog_IsOnQuest(t.questID));
	end,
	collected = function(t)
		return IsQuestFlaggedCompletedForObject(t);
	end,
	trackable = function(t)
		return true;
	end,
	saved = function(t)
		return IsQuestFlaggedCompletedForObject(t) == 1;
	end
}, (function(t) return t.questID; end));
end)();

-- Object Lib (as in "World Object")
(function()
app.CreateObject = app.CreateClass("Object", "objectID", {
	["text"] = function(t)
		return t.isRaid and ("|c" .. app.Colors.Raid .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						return app.ObjectNames[v[2]] or RETRIEVING_DATA;
					elseif v[1] == "i" then
						return GetItemInfo(v[2]) or RETRIEVING_DATA;
					end
				end
			end
		end
		return app.ObjectNames[t.objectID] or ("Object ID #" .. t.objectID);
	end,
	["icon"] = function(t)
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						local icon = app.ObjectIcons[v[2]];
						if icon then return icon; end
					elseif v[1] == "i" then
						return select(5, GetItemInfoInstant(v[2])) or "Interface\\Icons\\INV_Misc_Bag_10";
					end
				end
			end
		end
		return app.ObjectIcons[t.objectID] or "Interface\\Icons\\INV_Misc_Bag_10";
	end,
	["model"] = function(t)
		return app.ObjectModels[t.objectID];
	end,
},
"WithQuest", {
	collectible = function(t)
		return app.Settings.Collectibles.Quests and (not t.repeatable and not t.isBreadcrumb or C_QuestLog_IsOnQuest(t.questID));
	end,
	collected = function(t)
		return IsQuestFlaggedCompletedForObject(t);
	end,
	trackable = function(t)
		return true;
	end,
	saved = function(t)
		return IsQuestFlaggedCompletedForObject(t) == 1;
	end
}, (function(t) return t.questID; end));
end)();

-- Profession Lib
(function()
app.SkillIDToSpellID = setmetatable({
	[171] = 2259,	-- Alchemy
	[794] = 158762,	-- Arch
	[261] = 5149,	-- Beast Training
	[164] = 2018,	-- Blacksmithing
	[185] = 2550,	-- Cooking
	[333] = 7411,	-- Enchanting
	[202] = 4036,	-- Engineering
	[356] = 7620,	-- Fishing
	[129] = 3273,	-- First Aid
	[182] = 2366,	-- Herb Gathering
	[773] = 45357,	-- Inscription
	[755] = 25229,	-- Jewelcrafting
	[165] = 2108,	-- Leatherworking
	[186] = 2575,	-- Mining
	[393] = 8613,	-- Skinning
	[197] = 3908,	-- Tailoring
	[960] = 53428,  -- Runeforging
	[40] = 2842,	-- Poisons
	[633] = 1809,	-- Lockpicking
	[921] = 921,	-- Pickpocketing

	-- Riding
	[762] = 33388,	-- Riding

	-- Specializations
	[20219] = 20219,	-- Gnomish Engineering
	[20222] = 20222,	-- Goblin Engineering
	[9788] = 9788,		-- Armorsmith
	[9787] = 9787,		-- Weaponsmith
	[17041] = 17041,	-- Master Axesmith
	[17040] = 17040,	-- Master Hammersmith
	[17039] = 17039,	-- Master Swordsmith
	[10656] = 10656,	-- Dragonscale Leatherworking
	[10658] = 10658,	-- Elemental Leatherworking
	[10660] = 10660,	-- Tribal Leatherworking
	[26801] = 26801,	-- Shadoweave Tailoring
	[26797] = 26797,	-- Spellfire Tailoring
	[26798] = 26798,	-- Mooncloth Tailoring
	[125589] = 125589,	-- Way of the Brew
	[124694] = 124694,	-- Way of the Grill
	[125588] = 125588,	-- Way of the Oven
	[125586] = 125586,	-- Way of the Pot
	[125587] = 125587,	-- Way of the Steamer
	[125584] = 125584,	-- Way of the Wok
}, {__index = function(t,k) return k; end});
app.SpellIDToSkillID = {};
for skillID,spellID in pairs(app.SkillIDToSpellID) do
	app.SpellIDToSkillID[spellID] = skillID;
end
app.SpecializationSpellIDs = setmetatable({
	[20219] = 4036,	-- Gnomish Engineering
	[20222] = 4036,	-- Goblin Engineering
	[9788] = 2018,	-- Armorsmith
	[9787] = 2018,	-- Weaponsmith
	[17041] = 2018,	-- Master Axesmith
	[17040] = 2018,	-- Master Hammersmith
	[17039] = 2018,	-- Master Swordsmith
	[10656] = 2108,	-- Dragonscale Leatherworking
	[10658] = 2108,	-- Elemental Leatherworking
	[10660] = 2108,	-- Tribal Leatherworking
	[26801] = 3908,	-- Shadoweave Tailoring
	[26797] = 3908,	-- Spellfire Tailoring
	[26798] = 3908,	-- Mooncloth Tailoring
	[125589] = 2550,-- Way of the Brew
	[124694] = 2550,-- Way of the Grill
	[125588] = 2550,-- Way of the Oven
	[125586] = 2550,-- Way of the Pot
	[125587] = 2550,-- Way of the Steamer
	[125584] = 2550,-- Way of the Wok
}, {__index = function(t,k) return k; end})

local BLACKSMITHING = ATTC.SkillIDToSpellID[164];
local LEATHERWORKING = ATTC.SkillIDToSpellID[165];
local TAILORING = ATTC.SkillIDToSpellID[197];
app.OnUpdateForOmarionsHandbook = function(t)
	t.visible = true;
	t.collectible = nil;
	if app.Settings:Get("DebugMode") or app.Settings:Get("AccountMode") or CompletedQuests[9233] or C_QuestLog_IsOnQuest(9233) then
		return false;
	else
		for spellID,skills in pairs(app.CurrentCharacter.ActiveSkills) do
			if (spellID == BLACKSMITHING or spellID == LEATHERWORKING or spellID == TAILORING) and skills[1] > 270 then
				t.collectible = false;
				t.visible = false;
				return true;
			end
		end
	end
end;
app.CreateProfession = app.CreateClass("Profession", "professionID", {
	["text"] = function(t)
		return GetSpellInfo(t.spellID);
	end,
	["icon"] = function(t)
		return select(3, GetSpellInfo(t.spellID));
	end,
	["spellID"] = function(t)
		return app.SkillIDToSpellID[t.professionID];
	end,
	["requireSkill"] = function(t)
		return t.professionID;
	end,
	["sym"] = function(t)
		return {{"selectprofession", t.professionID}};
	end
});
end)();

-- Quest Lib
(function()
local C_QuestLog_GetQuestInfo = C_QuestLog.GetTitleForQuestID or C_QuestLog.GetQuestInfo;
local C_QuestLog_GetQuestObjectives = C_QuestLog.GetQuestObjectives;
local GetQuestLogIndexByID = C_QuestLog.GetLogIndexForQuestID or GetQuestLogIndexByID;
local questRetries = {};
local QuestTitleFromID = setmetatable({}, { __index = function(t, id)
	local title = C_QuestLog_GetQuestInfo(id);
	if title and title ~= RETRIEVING_DATA then
		rawset(questRetries, id, nil);
		rawset(t, id, title);
		return title;
	else
		local retries = rawget(questRetries, id);
		if retries and retries > 120 then
			title = "Quest #" .. id .. "*";
			rawset(questRetries, id, nil);
			rawset(t, id, title);
			return title;
		else
			rawset(questRetries, id, (retries or 0) + 1);
		end
	end
end })
local IgnoreErrorQuests = {
	[1476]=1,	-- Hearts of the Pure (Horde Pre-req for the Undercity Succubus Binding quest)
	[1474]=1,	-- The Binding (Succubus) [Undercity]
	[1508]=1,	-- Blind Cazul (Horde Pre-req for the Orgrimmar Succubus Binding quest)
	[1509]=1,	-- News of Dogran (1/2) (Horde Pre-req for the Orgrimmar Succubus Binding quest)
	[1510]=1,	-- News of Dogran (2/2) (Horde Pre-req for the Orgrimmar Succubus Binding quest)
	[1511]=1,	-- Ken'zigla's Draught (Horde Pre-req for the Orgrimmar Succubus Binding quest)
	[1515]=1,	-- Dogran's Captivity (Horde Pre-req for the Orgrimmar Succubus Binding quest)
	[1512]=1,	-- Love's Gift (Horde Pre-req for the Orgrimmar Succubus Binding quest)
	[1513]=1,	-- The Binding (Succubus) [Orgrimmar]
	[1738]=1,	-- Heartswood (Alliance Pre-req for the Stormwind City Succubus Binding quest)
	[1739]=1,	-- The Binding (Succubus) [Stormwind City]
	[1516]=1, 	-- Call of Earth (1/3 Durotar)
	[1519]=1, 	-- Call of Earth (1/3 Mulgore)
	[9449]=1, 	-- Call of Earth (1/3 Ammen Vale)
	[555]=1,	-- Soothing Turtle Bisque (A)
	[7321]=1,	-- Soothing Turtle Bisque (H)
	[3630]=1,	-- Gnome Engineering [A]
	[3632]=1,	-- Gnome Engineering [A]
	[3634]=1,	-- Gnome Engineering [H]
	[3635]=1,	-- Gnome Engineering [H]
	[3637]=1,	-- Gnome Engineering [H]
	[3526]=1,	-- Goblin Engineering [H]
	[3629]=1,	-- Goblin Engineering [A]
	[3633]=1,	-- Goblin Engineering [H]
	[4181]=1,	-- Goblin Engineering [A]
	[5517]=1,	-- Chromatic Mantle of the Dawn
	[5521]=1,	-- Chromatic Mantle of the Dawn
	[5524]=1,	-- Chromatic Mantle of the Dawn
	[5504]=1,	-- Mantles of the Dawn
	[5507]=1,	-- Mantles of the Dawn
	[5513]=1,	-- Mantles of the Dawn
	[7170]=1,	-- Earned Reverence (Alliance)
	[7165]=1,	-- Earned Reverence (Horde)
	[7171]=1,	-- Legendary Heroes (Alliance)
	[7166]=1,	-- Legendary Heroes (Horde)
	[7168]=1,	-- Rise and Be Recognized (Alliance)
	[7163]=1,	-- Rise and Be Recognized (Horde)
	[7172]=1,	-- The Eye of Command (Alliance)
	[7167]=1,	-- The Eye of Command (Horde)
	[7164]=1,	-- Honored Amongst the Clan
	[7169]=1,	-- Honored Amongst the Guard
	[8870]=1,	-- The Lunar Festival
	[8871]=1,	-- The Lunar Festival
	[8872]=1,	-- The Lunar Festival
	[8873]=1,	-- The Lunar Festival
	[8874]=1,	-- The Lunar Festival
	[8875]=1,	-- The Lunar Festival
	[8700]=1,	-- Band of Unending Life
	[8692]=1,	-- Cloak of Unending Life
	[8708]=1,	-- Mace of Unending Life
	[8704]=1,	-- Signet of the Unseen Path
	[8696]=1,	-- Cloak of the Unseen Path
	[8712]=1,	-- Scythe of the Unseen Path
	[8699]=1,	-- Band of Vaulted Secrets
	[8691]=1,	-- Drape of Vaulted Secrets
	[8707]=1,	-- Blade of Vaulted Secrets
	[8703]=1,	-- Ring of Eternal Justice
	[8695]=1,	-- Cape of Eternal Justice
	[8711]=1,	-- Blade of Eternal Justice
	[8697]=1,	-- Ring of Infinite Wisdom
	[8689]=1,	-- Shroud of Infinite Wisdom
	[8705]=1,	-- Gavel of Infinite Wisdom
	[8701]=1,	-- Band of Veiled Shadows
	[8693]=1,	-- Cloak of Veiled Shadows
	[8709]=1,	-- Dagger of Veiled Shadows
	[8698]=1,	-- Ring of the Gathering Storm
	[8690]=1,	-- Cloak of the Gathering Storm
	[8706]=1,	-- Hammer of the Gathering Storm
	[8702]=1,	-- Ring of Unspoken Names
	[8694]=1,	-- Shroud of Unspoken Names
	[8710]=1,	-- Kris of Unspoken Names
	[8556]=1,	-- Signet of Unyielding Strength
	[8557]=1,	-- Drape of Unyielding Strength
	[8558]=1,	-- Sickle of Unyielding Strength
	[9520]=1,	-- Diabolical Plans [Alliance]
	[9535]=1,	-- Diabolical Plans [Horde]
	[9522]=1,	-- Never Again! [Alliance]
	[9536]=1,	-- Never Again! [Horde]
	[10371]=1,	-- Yorus Barleybrew (Draenei)
	[10621]=1,	-- Illidari Bane-Shard (A)
	[10623]=1,	-- Illidari Bane-Shard (H)
	[10759]=1,	-- Find the Deserter (A)
	[10761]=1,	-- Find the Deserter (H)
	[11185]=1,	-- The Apothecary's Letter
	[11186]=1,	-- Signs of Treachery?
	[11201]=1,	-- The Grimtotem Plot
	[11123]=1,	-- Inspecting the Ruins [Alliance]
	[11124]=1,	-- Inspecting the Ruins [Horde]
	[11150]=1,	-- Raze Direhorn Post! [Alliance]
	[11205]=1,	-- Raze Direhorn Post! [Horde]
	[11215]=1,	-- Help Mudsprocket
};
setmetatable(CompletedQuests, {__newindex = function (t, key, value)
	if value then
		rawset(t, key, value);
		rawset(DirtyQuests, key, true);
		app.SetCollected(nil, "Quests", key, true);
		if app.Settings:GetTooltipSetting("Report:CompletedQuests") then
			local searchResults = SearchForField("questID", key);
			if #searchResults > 0 then
				local questID, nmr, nmc, text = key, false, false, "";
				for i,searchResult in ipairs(searchResults) do
					if searchResult.key == "questID" and not IgnoreErrorQuests[questID] and not GetRelativeField(searchResult, "headerID", app.HeaderConstants.TIER_ZERO_POINT_FIVE_SETS) then
						if searchResult.nmr and not nmr then
							nmr = true;
							text = searchResult.text;
						end
						if searchResult.nmc and not nmc then
							nmc = true;
							text = searchResult.text;
						end
					end
				end
				if app.Settings:GetTooltipSetting("Report:UnsortedQuests") then
					return true;
				end
				if nmc then key = key .. " [C]"; end
				if nmr then key = key .. " [R]"; end
				key = key .. " (" .. (text or RETRIEVING_DATA) .. ")";
			else
				local text = C_QuestLog_GetQuestInfo(key) or RETRIEVING_DATA;
				key = key .. " [M] (" .. text .. ")";
			end
			print("Completed Quest #" .. key);
		end
	end
end});

local criteriaFuncs = {
    ["achID"] = function(achievementID)
        return app.CurrentCharacter.Achievements[achievementID];
    end,
    ["lvl"] = function(v)
        return app.Level >= v;
    end,
    ["questID"] = function(questID)
		return IsQuestFlaggedCompleted(questID);
	end,
    ["spellID"] = function(spellID)
        return app.CurrentCharacter.Spells[spellID] or app.CurrentCharacter.ActiveSkills[spellID];
    end,
    ["factionID"] = function(v)
		-- v = factionID.standingRequiredToLock
		local factionID = math.floor(v + 0.00001);
		local lockStanding = math.floor((v - factionID) * 10 + 0.00001);
        local standing = select(3, GetFactionInfoByID(factionID)) or 4;
		--app.print("Check Faction", factionID,  "Standing (", standing, ") is locked @ (", lockStanding, ")");
		return standing >= lockStanding;
    end,
};
local OnUpdateForLockCriteria = function(t)
	local lockCriteria = t.lc;
	if lockCriteria then
		local criteriaRequired = lockCriteria[1];
		local critKey, critFunc, nonQuestLock;
		for i=2,#lockCriteria,2 do
			critKey = lockCriteria[i];
			critFunc = criteriaFuncs[critKey];
			if critFunc then
				if critFunc(lockCriteria[i + 1]) then
					if not nonQuestLock and critKey ~= "questID" then
						nonQuestLock = true;
					end
					criteriaRequired = criteriaRequired - 1;
					if criteriaRequired <= 0 then
						t.locked = true;
						-- if this was locked due to something other than a Quest specifically, indicate it cannot be done in Party Sync
						if nonQuestLock then
							-- app.PrintDebug("Automatic DisablePartySync", app:Linkify(questID, app.Colors.ChatLink, "search:questID:" .. questID))
							t.DisablePartySync = true;
						end
						break;
					end
				end
			else
				app.print("Unknown 'lockCriteria' key:", critKey, lockCriteria[i + 1]);
			end
		end
	end
end
local createQuest = app.CreateClass("Quest", "questID", {
	["text"] = function(t)
		if t.repeatable then return "|cff0070DD" .. t.name .. "|r"; end
		return t.name;
	end,
	["name"] = function(t)
		return QuestTitleFromID[t.questID] or (t.npcID and app.NPCNameFromID[t.npcID]) or RETRIEVING_DATA;
	end,
	["icon"] = function(t)
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						local icon = app.ObjectIcons[v[2]];
						if icon then return icon; end
					elseif v[1] == "i" then
						return select(5, GetItemInfoInstant(v[2])) or "Interface\\Icons\\INV_Misc_Book_09";
					end
				end
			end
		end
		if t.isWorldQuest then
			return app.asset("Interface_WorldQuest");
		elseif t.repeatable then
			return app.asset("Interface_Questd");
		else
			return app.asset("Interface_Quest");
		end
	end,
	["model"] = function(t)
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						return app.ObjectModels[v[2]];
					end
				end
			end
		end
	end,
	["link"] = function(t)
		if t.questID then return "[" .. t.name .. " (".. t.questID .. ")]"; end
	end,
	["collectible"] = function(t)
		if app.Settings.Collectibles.Quests then
			if C_QuestLog_IsOnQuest(t.questID) then
				return true;
			end
			if t.locked then return app.Settings.AccountWide.Quests; end
			return not t.repeatable and not t.isBreadcrumb;
		end
	end,
	["collected"] = function(t)
		if C_QuestLog_IsOnQuest(t.questID) then
			return false;
		end
		return IsQuestFlaggedCompletedForObject(t);
	end,
	["trackable"] = function(t)
		return true;
	end,
	["saved"] = function(t)
		return IsQuestFlaggedCompletedForObject(t) == 1;
	end,
},
"SetupLockCriteria", nil, (function(t)
	if t.lc then
		if t.OnUpdate then
			print("BRUH ON UPDATE WITH LOCK CRITERIA QUEST ID #", t.questID);
		else
			t.OnUpdate = OnUpdateForLockCriteria;
		end
	end
end),
"WithReputation", {
	collectible = function(t)
		if app.Settings.Collectibles.Quests then
			if C_QuestLog_IsOnQuest(t.questID) then
				return true;
			end
			if t.locked then return app.Settings.AccountWide.Quests; end
			if t.maxReputation and app.Settings.Collectibles.Reputations then
				return true;
			end
			return not t.repeatable and not t.isBreadcrumb;
		end
	end,
	collected = function(t)
		if C_QuestLog_IsOnQuest(t.questID) then
			return false;
		end
		local flag = IsQuestFlaggedCompletedForObject(t);
		if flag then
			return flag;
		end
		if t.maxReputation then
			if (select(6, GetFactionInfoByID(t.maxReputation[1])) or 0) >= t.maxReputation[2] then
				return t.repeatable and 1 or 2;
			end
			if app.Settings.AccountWide.Reputations then
				local searchResults = SearchForField("factionID", t.maxReputation[1]);
				if #searchResults > 0 then
					for i,searchResult in ipairs(searchResults) do
						if searchResult.key ~= "questID" and searchResult.collected then
							return 2;
						end
					end
				end
			end
		end
	end
}, (function(t) return t.maxReputation; end),
"AsBreadcrumb", {
	collectible = function(t)
		if app.Settings.Collectibles.Quests then
			if C_QuestLog_IsOnQuest(t.questID) or IsQuestFlaggedCompletedForObject(t) then
				return true;
			end
			local results = SearchForField("sourceQuestID", t.questID);
			if #results > 0 then
				for i,o in ipairs(results) do
					if o.collectible and not o.collected then
						return true;
					end
				end
			end
		end
		return false;
	end,
	collected = function(t)
		return IsQuestFlaggedCompletedForObject(t);
	end,
	text = function(t)
		return "|cffcbc3e3" .. t.name .. "|r";
	end
}, (function(t) return t.isBreadcrumb; end));
app.CreateQuest = createQuest;
app.CreateQuestWithFactionData = function(t)
	local aqd, hqd = t.aqd, t.hqd;
	local questData, otherQuestData;
	if app.FactionID == HORDE_FACTION_ID then
		questData = hqd;
		otherQuestData = aqd;
	else
		questData = aqd;
		otherQuestData = hqd;
	end

	-- Move over the quest data's groups.
	if questData.g then
		if not t.g then
			t.g = questData.g;
		else
			for _,o in ipairs(questData.g) do
				tinsert(t.g, 1, o);
			end
		end
		questData.g = nil;
	end
	if otherQuestData.g then
		for _,o in ipairs(otherQuestData.g) do
			o.parent = otherQuestData;
		end
	end

	-- Apply this quest's current data into the other faction's quest. (this is for tooltip caching and source quest resolution)
	for key,value in pairs(t) do
		if key ~= "g" then
			otherQuestData[key] = value;
		end
	end

	-- Apply the faction specific quest data to this object.
	for key,value in pairs(questData) do t[key] = value; end
	aqd.r = ALLIANCE_FACTION_ID;
	hqd.r = HORDE_FACTION_ID;
	t.otherQuestData = otherQuestData;
	otherQuestData.nmr = 1;
	return createQuest(t.questID, t);
end
app.CreateQuestObjective = app.CreateClass("Objective", "objectiveID", {
	["text"] = function(t)
		return t.name;
	end,
	["name"] = function(t)
		local questID = t.questID;
		if questID then
			local objectives = C_QuestLog_GetQuestObjectives(questID);
			if objectives then
				local objective = objectives[t.objectiveID];
				if objective then
					return objective.text;
				end
			end
			if t.providers then
				for k,v in ipairs(t.providers) do
					if v[2] > 0 then
						if v[1] == "o" then
							return app.ObjectNames[v[2]] or RETRIEVING_DATA;
						elseif v[1] == "i" then
							return GetItemInfo(v[2]) or RETRIEVING_DATA;
						end
					end
				end
			end
			if t.spellID then return GetSpellInfo(t.spellID); end
			return RETRIEVING_DATA;
		end
		return "INVALID: Must be relative to a Quest Object.";
	end,
	["icon"] = function(t)
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						local icon = app.ObjectIcons[v[2]];
						if icon then return icon; end
					elseif v[1] == "i" then
						return select(5, GetItemInfoInstant(v[2])) or "Interface\\Worldmap\\Gear_64Grey";
					end
				end
			end
		end
		if t.spellID then return select(3, GetSpellInfo(t.spellID)); end
		return t.parent.icon or "Interface\\Worldmap\\Gear_64Grey";
	end,
	["model"] = function(t)
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						return app.ObjectModels[v[2]];
					end
				end
			end
		end
	end,
	["hash"] = function(t)
		return "ob:" .. t.objectiveID .. ":" .. (t.questID or 0);
	end,
	["objectiveID"] = function(t)
		return 1;
	end,
	["questID"] = function(t)
		return t.parent.questID;
	end,
	["isDaily"] = function(t)
		return t.parent.isDaily;
	end,
	["isWeekly"] = function(t)
		return t.parent.isWeekly;
	end,
	["isMonthly"] = function(t)
		return t.parent.isMonthly;
	end,
	["isYearly"] = function(t)
		return t.parent.isYearly;
	end,
	["isWorldQuest"] = function(t)
		return t.parent.isWorldQuest;
	end,
	["repeatable"] = function(t)
		return t.parent.repeatable;
	end,
	["collectible"] = function(t)
		if not t.questID then
			return false;
		end
		return app.Settings.Collectibles.Quests and C_QuestLog_IsOnQuest(t.questID);
	end,
	["trackable"] = function(t)
		if not t.questID then
			return false;
		end
		return C_QuestLog_IsOnQuest(t.questID);
	end,
	["collected"] = function(t)
		-- If the parent is collected, return immediately.
		local collected = t.parent.collected;
		if collected then return collected; end

		-- Check to see if the objective was completed.
		local questID = t.questID;
		if questID then
			-- If the player isn't on that quest, return.
			local index = GetQuestLogIndexByID(questID);
			if index == 0 then return 0; end

			-- If the player completed the quest, return.
			if select(6, GetQuestLogTitle(index)) then return 1; end

			local objectives = C_QuestLog_GetQuestObjectives(questID);
			if objectives then
				local objective = objectives[t.objectiveID];
				if objective then
					return objective.finished and 1;
				end
			end
		end
	end,
	["saved"] = function(t)
		-- If the parent is saved, return immediately.
		local saved = t.parent.saved;
		if saved then return saved; end

		-- Check to see if the objective was completed.
		local questID = t.questID;
		if questID then
			local objectives = C_QuestLog_GetQuestObjectives(questID);
			if objectives then
				local objective = objectives[t.objectiveID];
				if objective then
					return objective.finished and 1;
				end
			end
		end
	end,
	["objectiveCost"] = function(t)
		-- This is only used to calculate how many things are required for an objective when its using a provider.
		local questID = t.questID;
		if questID then
			-- If the player isn't on that quest, return.
			local index = GetQuestLogIndexByID(questID);
			if index == 0 then return 0; end

			-- If the player completed the quest, return.
			if select(6, GetQuestLogTitle(index)) then return 0; end

			local objectives = C_QuestLog_GetQuestObjectives(questID);
			if objectives then
				local objective = objectives[t.objectiveID];
				if objective then
					if objective.finished then
						return 0;
					end
					if questID == 14107 then
					print(t.text, objective.numRequired);
					end
					return objective.numRequired or 1;
				end
			end
		end
		return 0;
	end
});
app.CompareQuestieDB = function()
	if QuestieLoader then
		local QuestieDB,missingQuestIDs = QuestieLoader:ImportModule("QuestieDB"), {};
		for id,_ in pairs(QuestieDB.QuestPointers) do
			local s = SearchForField("questID", id);
			if #s == 0 then
				table.insert(missingQuestIDs, id);
			end
		end
		app.Sort(missingQuestIDs, app.SortDefaults.Number);
		for _,id in ipairs(missingQuestIDs) do
			print("Missing Quest ", id);
		end
	else
		print("Error: Questie not available. Please enable it!");
	end
end
app.AddQuestObjectivesToTooltip = function(tooltip, reference)
	local objectified = false;
	local questLogIndex = GetQuestLogIndexByID(reference.questID);
	if questLogIndex then
		local lore, objective = GetQuestLogQuestText(questLogIndex);
		if lore and app.Settings:GetTooltipSetting("Lore") then
			tooltip:AddLine(Colorize(lore, app.Colors.TooltipLore), 1, 1, 1, 1);
		end
		if objective and app.Settings:GetTooltipSetting("Objectives") then
			tooltip:AddLine(QUEST_OBJECTIVES, 1, 1, 1, 1);
			tooltip:AddLine(objective, 0.4, 0.8, 1, 1);
			objectified = true;
		end
	end
	if not reference.saved and app.Settings:GetTooltipSetting("Objectives") then
		local objectives = C_QuestLog_GetQuestObjectives(reference.questID);
		if objectives and #objectives > 0 then
			if not objectified then
				tooltip:AddLine(QUEST_OBJECTIVES, 1, 1, 1, 1);
			end
			for i,objective in ipairs(objectives) do
				local _ = objective.text;
				if not _ or _:sub(1, 1) == " " then
					_ = RETRIEVING_DATA;
				end
				tooltip:AddDoubleLine("  " .. _, GetCompletionIcon(objective.finished), 1, 1, 1, 1);
			end
		end
	end
end

-- Game Events that trigger visual updates, but no computation updates.
local softRefresh = function()
	wipe(searchCache);
end;
app.events.BAG_NEW_ITEMS_UPDATED = softRefresh;
app.events.CRITERIA_UPDATE = softRefresh;
app.events.QUEST_REMOVED = softRefresh;
app.events.QUEST_WATCH_UPDATE = softRefresh;
app.events.QUEST_ACCEPTED = function(questLogIndex, questID)
	if not questID then questID = questLogIndex; end
	if questID then rawset(QuestTitleFromID, questID, nil); end
	softRefresh();
end
app.events.QUEST_LOG_UPDATE = function()
	app:UnregisterEvent("QUEST_LOG_UPDATE");
	if C_QuestLog_GetAllCompletedQuestIDs then
		local completedQuests = C_QuestLog_GetAllCompletedQuestIDs();
		if completedQuests and #completedQuests > 0 then
			for i,questID in ipairs(completedQuests) do
				CompletedQuests[questID] = true;
			end
		end
	else
		GetQuestsCompleted(CompletedQuests);
	end
	for questID,completed in pairs(DirtyQuests) do
		app.QuestCompletionHelper(tonumber(questID));
	end
	wipe(DirtyQuests);
	wipe(searchCache);
end
app.events.QUEST_TURNED_IN = function(questID)
	local quest = SearchForField("questID", questID);
	if #quest > 0 and (not quest[1].repeatable or (quest[1].isDaily or quest[1].isMonthly or quest[1].isYearly)) then
		CompletedQuests[questID] = true;
		for questID,completed in pairs(DirtyQuests) do
			app.QuestCompletionHelper(tonumber(questID));
		end
		wipe(DirtyQuests);
	end
	app:RefreshDataQuietly("QUEST_TURNED_IN", true);
end
app:RegisterEvent("BAG_NEW_ITEMS_UPDATED");
app:RegisterEvent("CRITERIA_UPDATE");
app:RegisterEvent("QUEST_ACCEPTED");
app:RegisterEvent("QUEST_LOG_UPDATE");
app:RegisterEvent("QUEST_REMOVED");
app:RegisterEvent("QUEST_TURNED_IN");
app:RegisterEvent("QUEST_WATCH_UPDATE");
end)();

-- Recipe & Spell Lib
(function()
local craftColors = {
	RGBToHex(64,192,64),
	RGBToHex(255,255,0),
	RGBToHex(255,128,64),
	[0]=RGBToHex(128, 128, 128),
};
local CraftTypeIDToColor = function(craftTypeID)
	return craftColors[craftTypeID];
end
app.CraftTypeToCraftTypeID = function(craftType)
	if craftType then
		if craftType == "optimal" then
			return 3;
		elseif craftType == "medium" then
			return 2;
		elseif craftType == "easy" then
			return 1;
		elseif craftType == "trivial" then
			return 0;
		end
	end
	return nil;
end
local MaxSpellRankPerSpellName = {};
local SpellIDToSpellName = {};
app.GetSpellName = function(spellID, rank)
	local spellName = rawget(SpellIDToSpellName, spellID);
	if spellName then return spellName; end
	if rank then
		spellName = GetSpellInfo(spellID, rank);
	else
		spellName = GetSpellInfo(spellID);
	end
	if spellName and spellName ~= "" and spellName ~= RETRIEVING_DATA then
		if not rawget(app.SpellNameToSpellID, spellName) then
			rawset(app.SpellNameToSpellID, spellName, spellID);
			if not rawget(SpellIDToSpellName, spellID) then
				rawset(SpellIDToSpellName, spellID, spellName);
			end
		end
		if rank then
			if (rawget(MaxSpellRankPerSpellName, spellName) or 0) < rank then
				rawset(MaxSpellRankPerSpellName, spellName, rank);
			end
			spellName = spellName .. " (" .. RANK .. " " .. rank .. ")";
			if not rawget(app.SpellNameToSpellID, spellName) then
				rawset(app.SpellNameToSpellID, spellName, spellID);
				if not rawget(SpellIDToSpellName, spellID) then
					rawset(SpellIDToSpellName, spellID, spellName);
				end
			end
		end
		return spellName;
	end
end
local isSpellKnownHelper = function(spellID)
	return spellID and (IsPlayerSpell(spellID) or IsSpellKnown(spellID, true) or IsSpellKnownOrOverridesKnown(spellID, true));
end
app.IsSpellKnown = function(spellID, rank, ignoreHigherRanks)
	if isSpellKnownHelper(spellID) then return true; end
	if rank then
		local spellName = GetSpellInfo(spellID);
		if spellName then
			local maxRank = ignoreHigherRanks and rank or  rawget(MaxSpellRankPerSpellName, spellName);
			if maxRank then
				spellName = spellName .. " (" .. RANK .. " ";
				for i=maxRank,rank,-1 do
					if isSpellKnownHelper(app.SpellNameToSpellID[spellName .. i .. ")"]) then
						return true;
					end
				end
			end
		end
	end
end
app.SpellNameToSpellID = setmetatable(L.SPELL_NAME_TO_SPELL_ID, {
	__index = function(t, key)
		for _,spellID in pairs(app.SkillIDToSpellID) do
			app.GetSpellName(spellID);
		end
		for specID,spellID in pairs(app.SpecializationSpellIDs) do
			app.GetSpellName(spellID);
		end
		for spellID,g in pairs(SearchForFieldContainer("spellID")) do
			local rank;
			for i,o in ipairs(g) do
				if o.rank then
					rank = o.rank;
					break;
				end
			end
			app.GetSpellName(spellID, rank);
		end
		local numSpellTabs, offset, lastSpellName, currentSpellRank, lastSpellRank = GetNumSpellTabs(), 1, "", 1, 1;
		for spellTabIndex=1,numSpellTabs do
			local numSpells = select(4, GetSpellTabInfo(spellTabIndex));
			for spellIndex=1,numSpells do
				local spellName, _, _, _, _, _, spellID = GetSpellInfo(offset, BOOKTYPE_SPELL);
				currentSpellRank = GetSpellRank(spellID);
				if not currentSpellRank then
					if lastSpellName == spellName then
						currentSpellRank = lastSpellRank + 1;
					else
						lastSpellName = spellName;
						currentSpellRank = 1;
					end
				end
				app.GetSpellName(spellID, currentSpellRank);
				if not rawget(t, spellName) then
					rawset(t, spellName, spellID);
				end
				lastSpellRank = currentSpellRank;
				offset = offset + 1;
			end
		end
		return rawget(t, key);
	end
});

-- The difference between a recipe and a spell is that a spell is not collectible.
local baseIconFromSpellID = function(t)
	return select(3, GetSpellInfo(t.spellID)) or (t.requireSkill and select(3, GetSpellInfo(t.requireSkill)));
end;
local linkFromSpellID = function(t)
	local link = GetSpellLink(t.spellID);
	if not link then
		if GetRelativeValue(t, "requireSkill") == 333 then
			return "|cffffffff|Henchant:" .. t.spellID .. "|h[" .. t.name .. "]|h|r";
		else
			return "|cffffffff|Hspell:" .. t.spellID .. "|h[" .. t.name .. "]|h|r";
		end
	end
	return link;
end;
local nameFromSpellID = function(t)
	return app.GetSpellName(t.spellID) or GetSpellLink(t.spellID) or RETRIEVING_DATA;
end;
local spellFields = {
	["text"] = function(t)
		return t.craftTypeID and Colorize(t.name, CraftTypeIDToColor(t.craftTypeID)) or t.link;
	end,
	["icon"] = function(t)
		local icon = t.baseIcon;
		if icon and icon ~= 136235 and icon ~= 136192 then
			return icon;
		end
		return "Interface\\ICONS\\INV_Scroll_04";
	end,
	["craftTypeID"] = function(t)
		return app.CurrentCharacter.SpellRanks[t.spellID];
	end,
	["trackable"] = function(t)
		return true;
	end,
	["saved"] = function(t)
		return GetSpellCooldown(t.spellID) > 0 and 1;
	end,
	["baseIcon"] = baseIconFromSpellID,
	["name"] = nameFromSpellID,
	["link"] = linkFromSpellID,
};
local createSpell = app.CreateClass("Spell", "spellID", spellFields);

local recipeFields = CloneDictionary(spellFields);
recipeFields.collectible = function(t)
	return app.Settings.Collectibles.Recipes;
end;
recipeFields.collected = function(t)
	if app.CurrentCharacter.Spells[t.spellID] then return 1; end
	local isKnown = not t.nmc and app.IsSpellKnown(t.spellID, t.rank, GetRelativeValue(t, "requireSkill") == 261);
	return app.SetCollectedForSubType(t, "Spells", "Recipes", t.spellID, isKnown);
end;
recipeFields.f = function(t)
	return app.FilterConstants.RECIPES;
end;
local createRecipe = app.CreateClass("Recipe", "spellID", recipeFields,
"WithItem", {
	baseIcon = function(t)
		return select(5, GetItemInfoInstant(t.itemID)) or baseIconFromSpellID(t);
	end,
	link = function(t)
		return select(2, GetItemInfo(t.itemID)) or RETRIEVING_DATA;
	end,
	name = function(t)
		return GetItemInfo(t.itemID) or nameFromSpellID(t);
	end,
	tsm = function(t)
		return string.format("i:%d", t.itemID);
	end,
	b = function(t)
		return app.Settings.AccountWide.Recipes and 2;
	end,
}, (function(t) return t.itemID; end));
local createItem = app.CreateItem;	-- Temporary Recipe fix until someone fixes parser.
app.CreateItem = function(id, t)
	if t and t.spellID and t.f == app.FilterConstants.RECIPES then	-- This is pretty slow, would be great it someone fixes it.
		t.f = nil;
		t.itemID = id;
		return createRecipe(t.spellID, t);
	end
	return createItem(id, t);
end
app.CreateRecipe = createRecipe;
app.CreateSpell = function(id, t)
	if t and t.itemID then
		return createRecipe(id, t);
	else
		return createSpell(id, t);
	end
end
end)();

-- Tier Lib
(function()
	local math_floor = math.floor;
	local baseTier = {
		__index = function(t, key)
			if key == "key" then
				return "tierID";
			else
				local info = rawget(L.TIER_DATA, t.tierID);
				return info and rawget(info, key);
			end
		end
	};
	app.CreateTier = function(id, t)
		-- patch can be included in the id
		local tierID = math_floor(id);
		t = constructor(tierID, t, "tierID");
		if id > tierID then
			local patch_decimal = 100 * (id - tierID);
			local patch = math_floor(patch_decimal + 0.0001);
			local rev = math_floor(10 * (patch_decimal - patch) + 0.0001);
			-- print("tier cache",id,tierID,patch_decimal,patch,rev)
			t.text = tostring(tierID).."."..tostring(patch).."."..tostring(rev);
		end
		return setmetatable(t, baseTier);
	end
end)();

-- Title Lib
(function()
local function StylizePlayerTitle(title, style, me)
	if title then
		if style == 0 then
			-- Prefix
			return title .. me;
		elseif style == 1 then
			-- Player Name First
			return me .. title;
		elseif style == 2 then
			-- Player Name First (with space)
			return me .. " " .. title;
		elseif style == 3 then
			-- Comma Separated
			return me .. ", " .. title;
		end
	else
		return title or "??";
	end
end
local OnUpdateForSpecificGender = function(t)
	if not (app.Settings:Get("AccountMode") or app.Settings:Get("DebugMode") or t.playerGender == UnitSex("player")) then
		t.visible = false;
		return true;
	elseif t.parent.titleIDs then
		UpdateGroup(t.parent, t);
		t.visible = false;
		return true;
	end
end
local OnUpdateForGenderedTitle = function(t)
	if not (app.Settings:Get("AccountMode") or app.Settings:Get("DebugMode")) then
		t.progress = nil;
		t.total = nil;
		t.g = nil;
	else
		if not t.titleObjects then
			local titleObjects = {};
			for index,titleID in ipairs(t.titleIDs) do
				local titleObject = app.CreateTitle(titleID, { ["playerGender"] = index == 1 and 2 or 3, ["OnUpdate"] = OnUpdateForSpecificGender });
				titleObject.parent = t;
				tinsert(titleObjects, titleObject);
			end
			t.titleObjects = titleObjects;
		end
		local g = {};
		for index,titleObject in ipairs(t.titleObjects) do
			if titleObject.titleID ~= t.titleID then tinsert(g, titleObject); end
		end
		if #g > 0 then t.g = g; end
	end
end
app.CreateTitle = app.CreateClass("Title", "titleID", {
	["icon"] = function(t)
		return "Interface\\Icons\\INV_Misc_Horn_01";
	end,
	["description"] = function(t)
		return L["TITLES_DESC"];
	end,
	["text"] = function(t)
		return "|c" .. app.Colors.Account .. (t.name or RETRIEVING_DATA) .. "|r";
	end,
	["name"] = function(t)
		return StylizePlayerTitle(t.titleName, t.style, UnitName("player"));
	end,
	["playerGender"] = function(t)
		return UnitSex("player");
	end,
	["titleName"] = function(t)
		return GetTitleName(t.titleID);
	end,
	["title"] = function(t)
		return StylizePlayerTitle(t.titleName, t.style, "("..CALENDAR_PLAYER_NAME..")");
	end,
	["style"] = function(t)
		local name = t.titleName;
		if name then
			local first = string.sub(name, 1, 1);
			if first == " " then
				-- Suffix
				first = string.sub(name, 2, 2);
				if first == string.upper(first) then
					-- Comma Separated
					return 3;
				end

				-- Player Name First
				return 1;
			else
				local last = string.sub(name, -1);
				if last == " " then
					-- Prefix
					return 0;
				end

				-- Suffix
				if first == string.lower(first) then
					-- Player Name First with a space
					return 2;
				end

				-- Comma Separated
				return 3;
			end
		end

		return 1;	-- Player Name First
	end,
	["collectible"] = function(t)
		return app.Settings.Collectibles.Titles;
	end,
	["trackable"] = function(t)
		return true;
	end,
	["collected"] = function(t)
		local titleID = t.titleID;
		return app.SetCollected(t, "Titles", titleID, IsTitleKnown(titleID));
	end,
	["saved"] = function(t)
		return IsTitleKnown(t.titleID);
	end,
	["OnUpdateForSpecificGender"] = function(t)
		return OnUpdateForSpecificGender;
	end,
},
"WithGender", {
	collected = function(t)
		local ids, acctTitles, charTitles = t.titleIDs, ATTAccountWideData.Titles, app.CurrentCharacter.Titles;
		local m, f = ids[1], ids[2];
		local alreadyHaveOne = charTitles[m] or charTitles[f];
		local collectedM = app.SetCollected(nil, "Titles", m, IsTitleKnown(m));
		local collectedF = app.SetCollected(nil, "Titles", f, IsTitleKnown(f));
		if collectedM == 1 or collectedF == 1 then
			if not alreadyHaveOne then AddToCollection(t); end
			return 1;
		elseif collectedM == 2 or collectedF == 2 then
			return 2;
		end
	end,
	description = function(t)
		return "This title changes its state whenever your character changes its gender identity. This is particularly common in Brunnhildar Village in Storm Peaks or by means of using an Engineering teleport. In account mode you will need to have multiple characters with representation of both gender types.";
	end,
	saved = function(t)
		local ids = t.titleIDs;
		return IsTitleKnown(ids[1]) or IsTitleKnown(ids[2]);
	end,
	title = function(t)
		local ids, acctTitles = t.titleIDs, ATTAccountWideData.Titles;
		local m, f = ids[1], ids[2];
		local player = "("..CALENDAR_PLAYER_NAME..")";
		return "  " .. StylizePlayerTitle(GetTitleName(m), t.style, player).. "\n  " .. StylizePlayerTitle(GetTitleName(f), t.style, player)
			.. DESCRIPTION_SEPARATOR .. GetCollectionIcon(acctTitles[m]) .. "\n" .. GetCollectionIcon(acctTitles[f]);
	end,
	titleID = function(t)
		return t.playerGender == 2 and t.titleIDs[1] or t.titleIDs[2];
	end,
	OnUpdate = function(t)
		return OnUpdateForGenderedTitle;
	end
}, (function(t) return t.titleIDs; end));
end)();

-- Unsupported Libs
(function()
-- Neither of these are supported at this time.
app.CreateArtifact = function(id, t)
	return { text = "Artifact #" .. id, description = "This data type is not supported at this time." };
end
app.CreateAzeriteEssence = function(id, t)
	return { text = "AzeriteEssence #" .. id, description = "This data type is not supported at this time." };
end
app.CreateConduit = function(id, t)
	return { text = "Conduit #" .. id, description = "This data type is not supported at this time." };
end
app.CreateDrakewatcherManuscript = function(id, t)
	return { text = "DrakewatcherManuscript #" .. id, description = "This data type is not supported at this time." };
end
app.CreateFollower = function(id, t)
	return { text = "Follower #" .. id, description = "This data type is not supported at this time." };
end

app.CreateGearSet = function(id, t)
	return { text = "GearSet #" .. id, description = "This data type is not supported at this time." };
end
app.CreateGearSetHeader = function(id, t)
	return { text = "GearSetHeader #" .. id, description = "This data type is not supported at this time." };
end
app.CreateGearSetSubHeader = function(id, t)
	return { text = "GearSetSubHeader #" .. id, description = "This data type is not supported at this time." };
end
app.CreateMusicRoll = function(questID, t)
	return { text = "MusicRoll #" .. questID, description = "This data type is not supported at this time." };
end
app.CreatePetAbility = function(id, t)
	return { text = "PetAbility #" .. id, description = "This data type is not supported at this time." };
end
app.CreateRace = function(id, t)
	return { text = "Race #" .. id, description = "This data type is not supported at this time." };
end
app.CreateRuneforgeLegendary = function(id, t)
	return { text = "RuneforgeLegendary #" .. id, description = "This data type is not supported at this time." };
end
app.CreateSelfieFilter = function(id, t)
	return { text = "SelfieFilter #" .. id, description = "This data type is not supported at this time." };
end
app.CreateVignette = function(id, t)
	return { text = "Vignette #" .. id, description = "This data type is not supported at this time." };
end
app.CreateItemSource = function(sourceID, itemID, t)
	t = app.CreateItem(itemID, t);
	t.s = sourceID;
	return t;
end
end)();

-- Filtering
function app.Filter()
	-- Meaning "Don't display."
	return false;
end
function app.NoFilter()
	-- Meaning "Display as expected."
	return true;
end
function app.FilterGroupsByLevel(group)
	-- after 9.0, transition to a req lvl range, either min, or min + max
    if group.lvl then
        local minlvl, maxlvl;
        if type(group.lvl) == "table" then
            minlvl = group.lvl[1];
            maxlvl = group.lvl[2];
        else
            minlvl = group.lvl;
        end

        if maxlvl then
            -- min and max provided
            return app.Level >= minlvl and app.Level <= maxlvl;
        elseif minlvl then
            -- only min provided
            return app.Level >= minlvl;
        end
    end
    -- no level requirement on the group, have to include it
    return true;
end
function app.FilterGroupsByCompletion(group)
	return group.progress < group.total;
end
function app.FilterItemBind(item)
	return item.b == 2 or item.b == 3; -- BoE
end
function app.FilterItemClass(item)
	if app.UnobtainableItemFilter(item) and app.RequireEventFilter(item) and app.PvPFilter(item) then
		if app.ItemBindFilter(item) then return true; end
		return app.ItemTypeFilter(item)
			and app.RequireBindingFilter(item)
			and app.RequiredSkillFilter(item)
			and app.ClassRequirementFilter(item)
			and app.RaceRequirementFilter(item)
			and app.RequireFactionFilter(item);
	end
end
function app.FilterItemPvP(item)
	if item.pvp then
		return false;
	else
		return true;
	end
end
function app.FilterItemClass_RequireClasses(item)
	return not item.nmc;
end
function app.FilterItemClass_RequireItemFilter(item)
	if item.f then
		if app.Settings:GetFilter(item.f) then
			return true;
		else
			return false;
		end
	else
		return true;
	end
end
function app.FilterItemClass_RequireRaces(item)
	return not item.nmr;
end
if select(4, GetBuildInfo()) > 11403 then
	function app.FilterItemClass_RequireRacesCurrentFaction(item)
		if item.nmr then
			if item.r then
				if item.r == app.FactionID then
					return true;
				else
					return false;
				end
			end
			if item.races then
				if app.FactionID == HORDE_FACTION_ID then
					return containsAny(item.races, HORDE_ONLY);
				else
					return containsAny(item.races, ALLIANCE_ONLY);
				end
			else
				return false;
			end
		else
			return true;
		end
	end
else
	function app.FilterItemClass_RequireRacesCurrentFaction(item)
		if item.nmr then
			if item.r then
				if item.r == app.FactionID then
					return true;
				else
					return false;
				end
			end
			if item.races then
				if app.FactionID == HORDE_FACTION_ID then
					return containsAny(item.races, HORDE_ONLY);
				else
					return containsAny(item.races, ALLIANCE_ONLY);
				end
			else
				return false;
			end
		else
			if item.nmc then
				if item.c and #item.c == 1 then
					if app.FactionID == HORDE_FACTION_ID then
						return item.c[1] ~= 2;	-- Check for Paladin
					else
						return item.c[1] ~= 7;	-- Check for Shaman
					end
				else
					return true;
				end
			else
				return true;
			end
		end
	end
end
function app.FilterItemClass_RequireBinding(item)
	if item.b and (item.b == 2 or item.b == 3) then
		return false;
	else
		return true;
	end
end
function app.FilterItemClass_RequiredSkill(item)
	local requireSkill = item.requireSkill;
	if requireSkill and (not item.professionID or not GetRelativeValue(item, "DontEnforceSkillRequirements") or item.b == 1) then
		requireSkill = app.SkillIDToSpellID[requireSkill];
		return requireSkill and app.CurrentCharacter.ActiveSkills[requireSkill];
	else
		return true;
	end
end
function app.FilterItemClass_RequireFaction(item)
	if item.minReputation and app.IsFactionExclusive(item.minReputation[1]) then
		if item.minReputation[2] > (select(6, GetFactionInfoByID(item.minReputation[1])) or 0) then
			return false;
		else
			return true;
		end
	else
		return true;
	end
end
function app.FilterItemClass_UnobtainableItem(item)
	if item.u and not app.Settings:GetUnobtainableFilter(item.u) then
		return false;
	else
		return true;
	end
end
function app.FilterItemTrackable(group)
	return group.trackable;
end
function app.ObjectVisibilityFilter(group)
	return group.visible;
end

-- Default Filter Settings (changed in ADDON_LOADED and in the Options Menu)
app.VisibilityFilter = app.ObjectVisibilityFilter;
app.GroupFilter = app.FilterItemClass;
app.GroupRequirementsFilter = app.NoFilter;
app.GroupVisibilityFilter = app.NoFilter;
app.ItemBindFilter = app.FilterItemBind;
app.ItemTypeFilter = app.NoFilter;
app.PvPFilter = app.NoFilter;
app.CollectedItemVisibilityFilter = app.NoFilter;
app.ClassRequirementFilter = app.NoFilter;
app.RaceRequirementFilter = app.NoFilter;
app.RequireBindingFilter = app.NoFilter;
app.RequireEventFilter = app.Modules.Events.FilterIsEventActive;
app.RequiredSkillFilter = app.NoFilter;
app.RequireFactionFilter = app.FilterItemClass_RequireFaction;
app.UnobtainableItemFilter = app.FilterItemClass_UnobtainableItem;
app.ShowIncompleteThings = app.Filter;

-- Recursive Checks
app.RecursiveGroupRequirementsFilter = function(group)
	if app.GroupRequirementsFilter(group) and app.GroupFilter(group) then
		if group.parent then return app.RecursiveGroupRequirementsFilter(group.parent); end
		return true;
	end
	return false;
end
app.RecursiveClassAndRaceFilter = function(group)
	if app.ClassRequirementFilter(group) and app.RaceRequirementFilter(group) then
		if group.parent then return app.RecursiveClassAndRaceFilter(group.parent); end
		return true;
	end
	return false;
end
app.RecursiveDefaultClassAndRaceFilter = function(group)
	if app.FilterItemClass_RequireClasses(group) and app.FilterItemClass_RequireRaces(group) then
		if group.parent then return app.RecursiveDefaultClassAndRaceFilter(group.parent); end
		return true;
	end
	return false;
end
app.RecursiveUnobtainableFilter = function(group)
	if app.UnobtainableItemFilter(group) and app.RequireEventFilter(group) then
		if group.parent then return app.RecursiveUnobtainableFilter(group.parent); end
		return true;
	end
	return false;
end
app.RecursiveIsDescendantOfParentWithValue = function(group, field, value)
	if group then
		if group[field] and group[field] == value then
			return true
		else
			if group.parent then
				return app.RecursiveIsDescendantOfParentWithValue(group.parent, field, value)
			end
		end
	end
	return false;
end

-- Processing Functions (Coroutines)
UpdateGroup = function(parent, group)
	local visible = false;

	-- Determine if this user can enter the instance or acquire the item.
	if app.GroupRequirementsFilter(group) then
		-- Check if this is a group
		if group.g then
			-- If this item is collectible, then mark it as such.
			if group.collectible then
				-- An item is a special case where it may have both an appearance and a set of items
				group.progress = group.collected and 1 or 0;
				group.total = 1;
			else
				-- Default to 0 for both
				group.progress = 0;
				group.total = 0;
			end

			-- Update the subgroups recursively...
			visible = UpdateGroups(group, group.g);

			-- If the 'can equip' filter says true
			if app.GroupFilter(group) and app.ClassRequirementFilter(group) and app.RaceRequirementFilter(group) then
				-- Increment the parent group's totals.
				parent.total = (parent.total or 0) + group.total;
				parent.progress = (parent.progress or 0) + group.progress;

				-- If this group is trackable, then we should show it.
				if group.total > 0 and app.GroupVisibilityFilter(group) then
					visible = true;
				elseif app.ShowIncompleteThings(group) and not group.saved then
					visible = true;
				elseif ((group.itemID and group.f) or group.sym) and app.Settings.Collectibles.Loot then
					visible = true;
				end
			else
				visible = false;
			end
		else
			-- If the 'can equip' filter says true
			if app.GroupFilter(group) then
				if group.collectible then
					-- Increment the parent group's totals.
					parent.total = (parent.total or 0) + 1;

					-- If we've collected the item, use the "Show Collected Items" filter.
					if group.collected then
						parent.progress = (parent.progress or 0) + 1;
						if app.CollectedItemVisibilityFilter(group) then
							visible = true;
						end
					else
						visible = true;
					end
				elseif group.trackable then
					-- If this group is trackable, then we should show it.
					if app.ShowIncompleteThings(group) and not group.saved then
						visible = true;
					end
				elseif ((group.itemID and group.f) or group.sym) and app.Settings.Collectibles.Loot then
					visible = true;
				elseif app.Settings:Get("DebugMode") then
					visible = true;
				end
			elseif app.Settings:Get("DebugMode") then
				visible = true;
			else
				visible = false;
			end
		end
	end

	-- Set the visibility
	group.visible = visible;
	return visible;
end
UpdateGroups = function(parent, g)
	if g then
		local visible = false;
		for i=1,#g,1 do
			local group = g[i];
			if group.OnUpdate then
				--local lastUpdate = GetTimePreciseSec();
				local result = group:OnUpdate(group);
				--local duration = (GetTimePreciseSec() - lastUpdate) * 10000;
				--if duration > 10 then print(group.text, "OnUpdate: ", duration); end
				if not result then
					if UpdateGroup(parent, group) then
						visible = true;
					end
				elseif group.visible then
					visible = true;
				end
			elseif UpdateGroup(parent, group) then
				visible = true;
			end
		end
		return visible;
	end
end
local function UpdateParentProgress(group)
	if group.collectible then
		group.progress = group.progress + 1;
	end

	-- Continue on to this object's parent.
	if group.parent then
		if group.visible then
			-- If we were initially visible, then update the parent.
			UpdateParentProgress(group.parent);

			-- If this group is trackable, then we should show it.
			if app.GroupVisibilityFilter(group) then
				group.visible = true;
			elseif app.ShowIncompleteThings(group) then
				group.visible = not group.saved;
			else
				group.visible = false;
			end
		end
	end
end
app.UpdateGroups = UpdateGroups;
app.UpdateParentProgress = UpdateParentProgress;

-- Helper Methods
function app.GetNumberOfItemsUntilNextPercentage(progress, total)
	if total <= progress then
		return "|c" .. GetProgressColor(1) .. "YOU DID IT!|r";
	else
		local originalPercent = progress / total;
		local nextPercent = math.ceil(originalPercent * 100);
		local roundedPercent = nextPercent * 0.01;
		local diff = math.ceil(total * (roundedPercent - originalPercent));
		if diff < 1 or nextPercent == 100 then
			return "|c" .. GetProgressColor(1) .. (total - progress) .. " THINGS UNTIL 100%|r";
		elseif diff == 1 then
			return "|c" .. GetProgressColor(roundedPercent) .. diff .. " THING UNTIL " .. nextPercent .. "%|r";
		else
			return "|c" .. GetProgressColor(roundedPercent) .. diff .. " THINGS UNTIL " .. nextPercent .. "%|r";
		end
	end
end
function app.QuestCompletionHelper(questID)
	-- Search ATT for the related quests.
	local searchResults = SearchForField("questID", questID);
	if #searchResults > 0 then
		-- Only increase progress for Quests as Collectible users.
		if app.Settings.Collectibles.Quests then
			-- Attempt to cleanly refresh the data.
			for i,result in ipairs(searchResults) do
				if result.visible and result.parent and result.parent.total then
					result.marked = true;
				end
			end
			for i,result in ipairs(searchResults) do
				if result.marked then
					result.marked = nil;
					if result.total then
						-- This is an item that has a relative set of groups
						UpdateParentProgress(result);

						-- If this is NOT a group...
						if not result.g and result.collectible then
							-- If we've collected the item, use the "Show Collected Items" filter.
							result.visible = app.CollectedItemVisibilityFilter(result);
						end
					else
						UpdateParentProgress(result.parent);

						if result.collectible then
							-- If we've collected the item, use the "Show Collected Items" filter.
							result.visible = app.CollectedItemVisibilityFilter(result);
						end
					end
				end
			end
		end
	end
end

-- Refresh certain kinds of data.
local function RefreshSkills()
	-- Store Skill Data
	local activeSkills = app.CurrentCharacter.ActiveSkills;
	wipe(activeSkills);
	rawset(app.SpellNameToSpellID, 0, nil);
	app.GetSpellName(0);
	local GetSkillLineInfo = _G["GetSkillLineInfo"];
	if GetSkillLineInfo then
		for index=GetNumSkillLines(),2,-1 do
			local skillName, header, isExpanded, skillRank, numTempPoints, skillModifier,
				skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType,
				skillDescription = GetSkillLineInfo(index);
			if not header then
				local spellID = app.SpellNameToSpellID[skillName];
				if spellID then
					local spellName = GetSpellInfo(spellID);
					for _,s in pairs(app.SkillIDToSpellID) do
						if GetSpellInfo(s) == spellName then
							spellID = s;
							break;
						end
					end
					activeSkills[spellID] = { skillRank, skillMaxRank };
				else
					for _,s in pairs(app.SkillIDToSpellID) do
						if GetSpellInfo(s) == skillName then
							spellID = s;
							break;
						end
					end
					if spellID then
						activeSkills[spellID] = { skillRank, skillMaxRank };
					else
						--print(skillName, header, isExpanded, skillRank, numTempPoints, skillModifier, skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType, skillDescription);
					end
				end
			end
		end
	end

	-- Hunter Only
	if app.ClassIndex == 3 then
		activeSkills[5149] = { 1, 1 };
	end

	-- Clone the data for the specializations.
	for specID,spellID in pairs(app.SpecializationSpellIDs) do
		local baseSpell = activeSkills[spellID];
		if baseSpell and (app.CurrentCharacter.Spells[specID] or IsSpellKnown(specID)) then
			activeSkills[specID] = baseSpell;
		end
	end
end
local function RefreshCollections()
	app:StartATTCoroutine("RefreshingCollections", function()
		while InCombatLockdown() do coroutine.yield(); end
		app.print("Refreshing collection...");
		app.events.QUEST_LOG_UPDATE();
		coroutine.yield();

		-- Harvest Illusion Collections
		if C_TransmogCollection and C_TransmogCollection.GetIllusions then
			local collectedIllusions = ATTAccountWideData.Illusions;
			for _,illusion in ipairs(C_TransmogCollection.GetIllusions()) do
				if illusion.isCollected then collectedIllusions[illusion.sourceID] = 1; end
			end
			coroutine.yield();
		end

		RefreshSkills();
		app:RefreshDataCompletely("RefreshCollections");
		app.print("Done refreshing collection.");
	end);
end
app.RefreshCollections = RefreshCollections;

-- Automatically Refresh Saved Instances
local function RefreshSaves()
	local waitTimer = 30;
	while waitTimer > 0 do
		coroutine.yield();
		waitTimer = waitTimer - 1;
	end

	-- While the player is in combat, wait for combat to end.
	while InCombatLockdown() do coroutine.yield(); end

	-- While the player is still logging in, wait.
	while not app.GUID do coroutine.yield(); end

	-- Cache the lockouts across your account.
	local serverTime = GetServerTime();

	-- Check to make sure that the old instance data has expired
	for guid,character in pairs(ATTCharacterData) do
		local locks = character.Lockouts;
		if locks then
			for name,instance in pairs(locks) do
				local count = 0;
				for difficulty,lock in pairs(instance) do
					if type(lock) ~= "table" or type(lock.reset) ~= "number" or serverTime >= lock.reset then
						-- Clean this up.
						instance[difficulty] = nil;
					else
						count = count + 1;
					end
				end
				if count == 0 then
					-- Clean this up.
					locks[name] = nil;
				end
			end
		end
	end

	-- While the player is still waiting for information, wait.
	-- NOTE: Usually, this is only 1 wait.
	local counter = 0;
	while GetNumSavedInstances() < 1 do
		coroutine.yield();
		counter = counter + 1;
		if counter > 10 then
			app.refreshingSaves = false;
			return false;
		end
	end

	-- Update Saved Instances
	local myLockouts = app.CurrentCharacter.Lockouts;
	for instanceIter=1,GetNumSavedInstances() do
		local name, id, reset, difficulty, locked, _, _, isRaid, _, _, numEncounters = GetSavedInstanceInfo(instanceIter);
		if locked then
			-- Update the name of the instance and cache the lock for this instance
			difficulty = difficulty or 7;
			reset = serverTime + reset;
			local locks = myLockouts[name];
			if not locks then
				locks = {};
				myLockouts[name] = locks;
			end

			-- Create the lock for this difficulty
			local lock = locks[difficulty];
			if not lock then
				lock = { ["id"] = id, ["reset"] = reset, ["encounters"] = {}};
				locks[difficulty] = lock;
			else
				lock.id = id;
				lock.reset = reset;
			end

			-- If this is LFR, then don't share.
			if difficulty == 7 or difficulty == 17 then
				if #lock.encounters == 0 then
					-- Check Encounter locks
					for encounterIter=1,numEncounters do
						local name, _, isKilled = GetSavedInstanceEncounterInfo(instanceIter, encounterIter);
						tinsert(lock.encounters, { ["name"] = name, ["isKilled"] = isKilled });
					end
				else
					-- Check Encounter locks
					for encounterIter=1,numEncounters do
						local name, _, isKilled = GetSavedInstanceEncounterInfo(instanceIter, encounterIter);
						if not lock.encounters[encounterIter] then
							tinsert(lock.encounters, { ["name"] = name, ["isKilled"] = isKilled });
						elseif isKilled then
							lock.encounters[encounterIter].isKilled = true;
						end
					end
				end
			else
				-- Create the pseudo "shared" lock
				local shared = locks["shared"];
				if not shared then
					shared = {};
					shared.id = id;
					shared.reset = reset;
					shared.encounters = {};
					locks["shared"] = shared;

					-- Check Encounter locks
					for encounterIter=1,numEncounters do
						local name, _, isKilled = GetSavedInstanceEncounterInfo(instanceIter, encounterIter);
						tinsert(lock.encounters, { ["name"] = name, ["isKilled"] = isKilled });

						-- Shared Encounter is always assigned if this is the first lock seen for this instance
						tinsert(shared.encounters, { ["name"] = name, ["isKilled"] = isKilled });
					end
				else
					-- Check Encounter locks
					for encounterIter=1,numEncounters do
						local name, _, isKilled = GetSavedInstanceEncounterInfo(instanceIter, encounterIter);
						if not lock.encounters[encounterIter] then
							tinsert(lock.encounters, { ["name"] = name, ["isKilled"] = isKilled });
						elseif isKilled then
							lock.encounters[encounterIter].isKilled = true;
						end
						if not shared.encounters[encounterIter] then
							tinsert(shared.encounters, { ["name"] = name, ["isKilled"] = isKilled });
						elseif isKilled then
							shared.encounters[encounterIter].isKilled = true;
						end
					end
				end
			end
		end
	end

	-- Mark that we're done now.
	app:RedrawWindows("RefreshSaves");
end
app:RegisterEvent("BOSS_KILL");
app.events.BOSS_KILL = function(id, name, ...)
	-- This is so that when you kill a boss, you can trigger
	-- an automatic update of your saved instance cache.
	-- (It does lag a little, but you can disable this if you want.)
	-- Waiting until the LOOT_CLOSED occurs will prevent the failed Auto Loot bug.
	-- print("BOSS_KILL", id, name, ...);
	app:UnregisterEvent("LOOT_CLOSED");
	app:RegisterEvent("LOOT_CLOSED");
end
app.events.LOOT_CLOSED = function()
	-- Once the loot window closes after killing a boss, THEN trigger the update.
	app:UnregisterEvent("LOOT_CLOSED");
	app:UnregisterEvent("UPDATE_INSTANCE_INFO");
	app:RegisterEvent("UPDATE_INSTANCE_INFO");
	RequestRaidInfo();
end
app.events.UPDATE_INSTANCE_INFO = function()
	app:UnregisterEvent("UPDATE_INSTANCE_INFO");
	app:StartATTCoroutine("RefreshSaves", RefreshSaves);
end

-- TomTom Support
local __TomTomWaypointCacheIndexY = { __index = function(t, y)
	local o = {};
	rawset(t, y, o);
	return o;
end };
local __TomTomWaypointCacheIndexX = { __index = function(t, x)
	local o = setmetatable({}, __TomTomWaypointCacheIndexY);
	rawset(t, x, o);
	return o;
end };
local __TomTomWaypointCache, __TomTomWaypointFirst = setmetatable({}, { __index = function(t, mapID)
	local o = setmetatable({}, __TomTomWaypointCacheIndexX);
	rawset(t, mapID, o);
	return o;
end });
local function AddTomTomWaypointCache(coord, group)
	local mapID = coord[3];
	if mapID then
		__TomTomWaypointCache[mapID][math.floor(coord[1] * 10)][math.floor(coord[2] * 10)][group.key .. ":" .. group[group.key]] = group;
	else
		print("Missing mapID for", group.text, coord[1], coord[2], mapID);
	end
end
local function AddTomTomWaypointInternal(group, depth)
	if group.visible then
		if group.plotting then return false; end
		group.plotting = true;
		if group.g then
			depth = depth + 1;
			for _,o in ipairs(group.g) do
				AddTomTomWaypointInternal(o, depth);
			end
			depth = depth - 1;
		end

		local searchResults = ResolveSymbolicLink(group);
		if searchResults then
			depth = depth + 1;
			for _,o in ipairs(searchResults) do
				AddTomTomWaypointInternal(o, depth);
			end
			depth = depth - 1;
		end
		group.plotting = nil;

		if TomTom then
			if (depth == 0 and not __TomTomWaypointFirst) or not group.saved then
				if group.coords or group.coord then
					__TomTomWaypointFirst = false;
					if group.coords then
						for _,coord in ipairs(group.coords) do
							AddTomTomWaypointCache(coord, group);
						end
					end
					if group.coord then AddTomTomWaypointCache(group.coord, group); end
				end
			end
		elseif C_SuperTrack then
			if depth == 0 or __TomTomWaypointFirst then
				local coord = group.coords and group.coords[1] or group.coord;
				if coord then
					__TomTomWaypointFirst = false;
					C_SuperTrack.SetSuperTrackedUserWaypoint(false);
					C_Map.ClearUserWaypoint();
					C_Map.SetUserWaypoint(UiMapPoint.CreateFromCoordinates(coord[3] or defaultMapID,coord[1]/100,coord[2]/100));
					C_SuperTrack.SetSuperTrackedUserWaypoint(true);
				end
			end
		end
	end
end
local function AddTomTomWaypoint(group)
	if TomTom or C_SuperTrack then
		__TomTomWaypointFirst = true;
		wipe(__TomTomWaypointCache);
		AddTomTomWaypointInternal(group, 0);
		if TomTom then
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
											if coord[3] == mapID and math.floor(coord[1] * 10) == x and math.floor(coord[2] * 10) == y then
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
											if coord[3] == mapID and math.floor(coord[1] * 10) == x and math.floor(coord[2] * 10) == y then
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
									tinsert(root, app.CreateObject(objectID));
								end
							else
								tinsert(root, group);
							end
						end

						local first = root[1];
						if first then
							local opt = { from = "ATT", persistent = false };
							opt.title = first.text or RETRIEVING_DATA;
							local displayID = GetDisplayID(first);
							if displayID then
								opt.minimap_displayID = displayID;
								opt.worldmap_displayID = displayID;
							end
							if first.icon then
								opt.minimap_icon = first.icon;
								opt.worldmap_icon = first.icon;
							end

							if TomTom.DefaultCallbacks then
								local callbacks = TomTom:DefaultCallbacks();
								callbacks.minimap.tooltip_update = nil;
								callbacks.minimap.tooltip_show = function(event, tooltip, uid, dist)
									tooltip:ClearLines();
									for i,o in ipairs(root) do
										local line = tooltip:NumLines() + 1;
										tooltip:AddLine(o.text);
										if o.title and not o.explorationID then tooltip:AddLine(o.title); end
										local key = o.key;
										if key == "objectiveID" then
											if o.parent and o.parent.questID then tooltip:AddLine("Objective for " .. o.parent.text); end
										elseif key == "criteriaID" then
											tooltip:AddDoubleLine(L.CRITERIA_FOR, GetAchievementLink(group.achievementID));
										else
											if key == "npcID" then key = "creatureID"; end
											AttachTooltipSearchResults(tooltip, 1, key .. ":" .. o[o.key], SearchForField, key, o[o.key], line);
										end
									end
									tooltip:Show();
								end
								callbacks.world.tooltip_update = nil;
								callbacks.world.tooltip_show = callbacks.minimap.tooltip_show;
								opt.callbacks = callbacks;
							end
							TomTom:AddWaypoint(mapID, xnormal, y / 1000, opt);
						end
					end
				end
			end
			TomTom:SetClosestWaypoint();
		end
		if C_SuperTrack and group.questID and C_QuestLog_IsOnQuest(group.questID) then
			C_SuperTrack.SetSuperTrackedQuestID(group.questID);
		end
	else
		app.print("You must have TomTom installed to plot coordinates.");
	end
end

-- Minimap Button
local function MinimapButtonOnClick(self, button)
	if button == "RightButton" then
		-- Right Button opens the Options menu.
		app.Settings:Open();
	else
		-- Left Button
		if IsShiftKeyDown() then
			app.RefreshCollections();
		elseif IsAltKeyDown() or IsControlKeyDown() then
			app.ToggleMiniListForCurrentZone();
		else
			app.ToggleMainList();
		end
	end
end
local function MinimapButtonOnEnter(self)
	GameTooltip:SetOwner(self, "ANCHOR_LEFT");
	GameTooltip:ClearLines();

	local reference = app:GetDataCache();
	if reference then
		GameTooltipIcon:SetSize(72,72);
		GameTooltipIcon:ClearAllPoints();
		GameTooltipIcon:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
		GameTooltipIcon.icon:SetTexture(reference.preview or reference.icon);
		local texcoord = reference.texcoord;
		if texcoord then
			GameTooltipIcon.icon:SetTexCoord(texcoord[1], texcoord[2], texcoord[3], texcoord[4]);
		else
			GameTooltipIcon.icon:SetTexCoord(0, 1, 0, 1);
		end
		GameTooltipIcon:Show();

		local left, right = strsplit(DESCRIPTION_SEPARATOR, reference.title);
		GameTooltip:AddDoubleLine(reference.text, reference.progressText, 1, 1, 1);
		GameTooltip:AddDoubleLine(left, right, 1, 1, 1);

		local prime = app:GetWindow("Prime");
		if prime and prime.forceFullDataRefresh then
			GameTooltip:AddDoubleLine("Updates Paused", L["MAIN_LIST_REQUIRES_REFRESH"], 1, 0.4, 0.4);
		else
			GameTooltip:AddLine(reference.description, 0.4, 0.8, 1, 1);
		end
	else
		GameTooltip:AddDoubleLine(L["TITLE"], "Click to load addon.", 1, 1, 1);
		GameTooltipIcon:Hide();
	end
	GameTooltip:AddLine(L["MINIMAP_MOUSEOVER_TEXT"], 1, 1, 1);
	GameTooltip:Show();
end
local function MinimapButtonOnLeave()
	GameTooltip:Hide();
	GameTooltipIcon.icon.Background:Hide();
	GameTooltipIcon.icon.Border:Hide();
	GameTooltipIcon:Hide();
	GameTooltipModel:Hide();
end
local function CreateMinimapButton()
	-- Create the Button for the Minimap frame. Create a local and non-local copy.
	local size = app.Settings:GetTooltipSetting("MinimapSize");
	local button = CreateFrame("BUTTON", appName .. "-Minimap", Minimap);
	button:SetPoint("CENTER", 0, 0);
	button:SetFrameStrata("HIGH");
	button:SetMovable(true);
	button:EnableMouse(true);
	button:RegisterForDrag("LeftButton", "RightButton");
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp");
	button:SetSize(size, size);

	-- Create the Button Texture
	local texture = button:CreateTexture(nil, "BACKGROUND");
	texture:SetTexture(app.asset("Discord_2_64"));
	texture:SetAllPoints();
	button.texture = texture;

	-- Create the Button Texture
	local oldtexture = button:CreateTexture(nil, "BACKGROUND");
	oldtexture:SetPoint("CENTER", 0, 0);
	oldtexture:SetTexture(app.asset("logo_tiny"));
	oldtexture:SetSize(21, 21);
	button.oldtexture = oldtexture;

	-- Create the Button Tracking Border
	local border = button:CreateTexture(nil, "BORDER");
	border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder");
	border:SetPoint("CENTER", 12, -12);
	border:SetSize(56, 56);
	button.border = border;
	button.UpdateStyle = function(self)
		if app.Settings:GetTooltipSetting("MinimapStyle") then
			self:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight", "ADD");
			self.texture:Hide();
			self.oldtexture:Show();
			self.border:Show();
		else
			self:SetHighlightTexture(app.asset("MinimapHighlight_64x64"));
			self.texture:Show();
			self.oldtexture:Hide();
			self.border:Hide();
		end
	end
	button:UpdateStyle();

	-- Button Configuration
	local rounding = 10;
	local MinimapShapes = {
		-- quadrant booleans (same order as SetTexCoord)
		-- {bottom-right, bottom-left, top-right, top-left}
		-- true = rounded, false = squared
		["ROUND"] 			= {true,  true,  true,  true },
		["SQUARE"] 			= {false, false, false, false},
		["CORNER-TOPLEFT"] 		= {false, false, false, true },
		["CORNER-TOPRIGHT"] 		= {false, false, true,  false},
		["CORNER-BOTTOMLEFT"] 		= {false, true,  false, false},
		["CORNER-BOTTOMRIGHT"]	 	= {true,  false, false, false},
		["SIDE-LEFT"] 			= {false, true,  false, true },
		["SIDE-RIGHT"] 			= {true,  false, true,  false},
		["SIDE-TOP"] 			= {false, false, true,  true },
		["SIDE-BOTTOM"] 		= {true,  true,  false, false},
		["TRICORNER-TOPLEFT"] 		= {false, true,  true,  true },
		["TRICORNER-TOPRIGHT"] 		= {true,  false, true,  true },
		["TRICORNER-BOTTOMLEFT"] 	= {true,  true,  false, true },
		["TRICORNER-BOTTOMRIGHT"] 	= {true,  true,  true,  false},
	};
	button.update = function(self)
		local position = GetDataMember("Position", -10.31);
		local angle = math.rad(position) -- determine position on your own
		local x, y
		local cos = math.cos(angle)
		local sin = math.sin(angle)
		local q = 1;
		if cos < 0 then
			q = q + 1;	-- lower
		end
		if sin > 0 then
			q = q + 2;	-- right
		end
		local width = (Minimap:GetWidth() * 0.5) + 8;
		local height = (Minimap:GetHeight() * 0.5) + 8;
		if MinimapShapes[GetMinimapShape and GetMinimapShape() or "ROUND"][q] then
			x = cos*width;
			y = sin*height;
		else
			x = math.max(-width, math.min(cos*(math.sqrt(2*(width)^2)-rounding), width))
			y = math.max(-height, math.min(sin*(math.sqrt(2*(height)^2)-rounding), height))
		end
		self:SetPoint("CENTER", "Minimap", "CENTER", -math.floor(x), math.floor(y));
	end
	local update = function(self)
		local w, x = GetCursorPosition();
		local y, z = Minimap:GetLeft(), Minimap:GetBottom();
		local s = UIParent:GetScale();
		w = y - w / s + 70; x = x / s - z - 70;
		SetDataMember("Position", math.deg(math.atan2(x, w)));
		self:Raise();
		self:update();
	end

	-- Register for Frame Events
	button:SetScript("OnDragStart", function(self)
		self:SetScript("OnUpdate", update);
	end);
	button:SetScript("OnDragStop", function(self)
		self:SetScript("OnUpdate", nil);
	end);
	button:SetScript("OnEnter", MinimapButtonOnEnter);
	button:SetScript("OnLeave", MinimapButtonOnLeave);
	button:SetScript("OnClick", MinimapButtonOnClick);
	button:update();
	button:Show();
	return button;
end
app.CreateMinimapButton = CreateMinimapButton;

-- Row Helper Functions
local SetPortraitTexture = _G["SetPortraitTexture"];
local SetPortraitTextureFromDisplayID = _G["SetPortraitTextureFromCreatureDisplayID"];
local function SetPortraitIcon(self, data, x)
	local displayID = GetDisplayID(data);
	if displayID then
		SetPortraitTextureFromDisplayID(self, displayID);
		self:SetWidth(self:GetHeight());
		self:SetTexCoord(0, 1, 0, 1);
		return true;
	elseif data.unit and not data.icon then
		SetPortraitTexture(self, data.unit);
		self:SetWidth(self:GetHeight());
		self:SetTexCoord(0, 1, 0, 1);
		return true;
	end

	-- Fallback to a traditional icon.
	if data.atlas then
		self:SetAtlas(data.atlas);
		self:SetWidth(self:GetHeight());
		self:SetTexCoord(0, 1, 0, 1);
		if data["atlas-background"] then
			self.Background:SetAtlas(data["atlas-background"]);
			self.Background:SetWidth(self:GetHeight());
			self.Background:Show();
		end
		if data["atlas-border"] then
			self.Border:SetAtlas(data["atlas-border"]);
			self.Border:SetWidth(self:GetHeight());
			self.Border:Show();
			if data["atlas-color"] then
				local swatches = data["atlas-color"];
				self.Border:SetVertexColor(swatches[1], swatches[2], swatches[3], swatches[4] or 1.0);
			else
				self.Border:SetVertexColor(1, 1, 1, 1.0);
			end
		end
		return true;
	elseif data.icon then
		self:SetWidth(self:GetHeight());
		self:SetTexture(data.icon);
		local texcoord = data.texcoord;
		if texcoord then
			self:SetTexCoord(texcoord[1], texcoord[2], texcoord[3], texcoord[4]);
		else
			self:SetTexCoord(0, 1, 0, 1);
		end
		return true;
	end
end
local function CalculateRowBack(data)
	if data.back then return data.back; end
	if data.parent then
		return CalculateRowBack(data.parent) * 0.5;
	else
		return 0;
	end
end
local function CalculateRowIndent(data)
	if data.indent then return data.indent; end
	if data.parent then
		return CalculateRowIndent(data.parent) + 1;
	else
		return 0;
	end
end

local CreateRow;
local function SetRowData(self, row, data)
	if row.ref ~= data then
		-- New data, update everything
		row.ref = data;
		row.summaryText = nil;
		if not data then
			row.Background:SetAlpha(0);
			row.Background:Hide();
			row.Texture:Hide();
			row.Texture.Background:Hide();
			row.Texture.Border:Hide();
			row.Indicator:Hide();
			row.Summary:Hide();
			row.Label:Hide();
			row:Hide();
			return;
		end

		local font = data.font or "GameFontNormal";
		if font ~= row.lastFont then
			row.Label:SetFontObject(font);
			row.Summary:SetFontObject(font);
			row.lastFont = font;
		end

		-- Every valid row has a summary and label
		row.Label:SetPoint("RIGHT", row.Summary, "LEFT", 0, 0);
		row.Summary:Show();
		row.Label:Show();
		row:Show();

		-- Calculate the indent
		local indent = ((CalculateRowIndent(data) * 8) or 0) + 8;
		row.Texture.Background:SetPoint("LEFT", row, "LEFT", indent, 0);
		row.Texture.Border:SetPoint("LEFT", row, "LEFT", indent, 0);
		row.Texture:SetPoint("LEFT", row, "LEFT", indent, 0);
		row.indent = indent;

		-- Calculate the back color
		local back = CalculateRowBack(data);
		if back then
			row.back = back;
			if back > 0 then
				row.Background:SetAlpha(back);
				row.Background:Show();
			else
				row.Background:Hide();
			end
		end
	elseif not data then
		return;	-- Already cleared
	end

	-- Update the Summary Text (this will be the thing that updates the most)
	local summary = data.summary or GetProgressTextForRow(data);
	local oldSummary = row.summaryText;
	if oldSummary then
		if summary then
			if oldSummary ~= summary then
				row.Summary:SetText(summary);
				row.summaryText = summary;
				self.smudged = true;	-- Mark this as smudged, so that it knowns to Update the rows completely. (this means that something changed its state)
			end
		else
			row.Summary:SetText((data.g and not data.expanded and #data.g > 0 and "+++") or "---");
			row.summaryText = nil;
			self.smudged = true;	-- Mark this as smudged, so that it knowns to Update the rows completely. (this means that something changed its state)
		end
	else
		if summary then
			row.Summary:SetText(summary);
			row.summaryText = summary;
		else
			row.Summary:SetText((data.g and not data.expanded and #data.g > 0 and "+++") or "---");
		end
	end

	-- Determine the Indicator Texture
	-- TODO: Move this to a field?
	local indicatorTexture = data.e and L["UNOBTAINABLE_ITEM_TEXTURES"][4];
	if data.u then
		local reason = L["UNOBTAINABLE_ITEM_REASONS"][data.u];
		if reason and (not reason[5] or select(4, GetBuildInfo()) < reason[5]) then
			indicatorTexture = L["UNOBTAINABLE_ITEM_TEXTURES"][reason[1]];
		end
	end

	-- If data is quest and is currently accepted or saved...
	if data.questID and C_QuestLog_IsOnQuest(data.questID) then
		indicatorTexture = app.asset("known_circle");
	elseif data.saved then
		if data.parent and data.parent.locks or data.isDaily then
			indicatorTexture = app.asset("known");
		else
			indicatorTexture = app.asset("known_green");
		end
	end

	-- Check to see what the text is currently
	local text = data.text;
	if text ~= row.text then
		if not text then
			text = RETRIEVING_DATA;
			self.processingLinks = true;
		elseif string.match(text, RETRIEVING_DATA) or text:find("^%[%]") or text:find("%[]") then
			-- This means the link is still rendering
			self.processingLinks = true;
		else
			row.text = text;
		end
		row.Label:SetText(text);
		row:SetHeight(select(2, row.Label:GetFont()) + 4);
	end

	-- If the data has a texture, assign it.
	if SetPortraitIcon(row.Texture, data) and row.Texture:GetTextureFilePath() then
		row.Texture:Show();
		row.Label:SetPoint("LEFT", row.Texture, "RIGHT", 2, 0);

		-- If we have a texture, let's assign it.
		if indicatorTexture then
			row.Indicator:SetTexture(indicatorTexture);
			row.Indicator:SetPoint("RIGHT", row.Texture, "LEFT", -2, 0);
			row.Indicator:Show();
		else
			row.Indicator:Hide();
		end
	else
		row.Texture:Hide();
		row.Label:SetPoint("LEFT", row, "LEFT", row.indent, 0);

		-- If we have a texture, let's assign it.
		if indicatorTexture then
			row.Indicator:SetTexture(indicatorTexture);
			row.Indicator:SetPoint("RIGHT", row, "LEFT", row.indent, 0);
			row.Indicator:Show();
		else
			row.Indicator:Hide();
		end
	end
end
local function RedrawVisibleRowData(self)
	-- If there is no raw data, then return immediately.
	if not self.rowData then return; end

	-- Make it so that if you scroll all the way down, you have the ability to see all of the text every time.
	local totalRowCount = #self.rowData;
	if totalRowCount > 0 then
		-- Ensure that the first row doesn't move out of position.
		local container = self.Container;
		local row = container.rows[1];
		if not row then return; end
		SetRowData(self, row, row.ref);

		-- Fill the remaining rows up to the (visible) row count.
		local containerHeight, totalHeight = container:GetHeight(), row:GetHeight();
		for i=2,totalRowCount do
			row = container.rows[i];
			if row then
				SetRowData(self, row, row.ref);
				totalHeight = totalHeight + row:GetHeight();
				if totalHeight > containerHeight then
					break;
				end
			else
				break;
			end
		end
	end
end
local function UpdateRowProgress(group)
	if group.collectible then
		group.progress = group.collected and 1 or 0;
		group.total = 1;
	else
		group.progress = 0;
		group.total = 0;
	end
	if group.g then
		for i,subgroup in ipairs(group.g) do
			UpdateRowProgress(subgroup);
			if subgroup.total then
				group.progress = group.progress + subgroup.progress;
				group.total = group.total + subgroup.total;
			end
		end
	end
end
local function UpdateVisibleRowData(self)
	-- If there is no raw data, then return immediately.
	if not self.rowData then return; end
	if self:GetHeight() > 48 then self.ScrollBar:Show(); else self.ScrollBar:Hide(); end

	-- Make it so that if you scroll all the way down, you have the ability to see all of the text every time.
	local totalRowCount = #self.rowData;
	if totalRowCount > 0 then
		-- Ensure that the first row doesn't move out of position.
		local container = self.Container;
		local row = container.rows[1] or CreateRow(container);
		SetRowData(self, row, self.rowData[1]);

		-- Fill the remaining rows up to the (visible) row count.
		local current, rowCount, containerHeight, totalHeight =
			math.max(1, math.min(self.CurrentIndex, totalRowCount)) + 1, 1, container:GetHeight(), row:GetHeight();

		for i=2,totalRowCount do
			row = container.rows[i] or CreateRow(container);
			SetRowData(self, row, self.rowData[current]);
			totalHeight = totalHeight + row:GetHeight();
			if totalHeight > containerHeight then
				break;
			else
				current = current + 1;
				rowCount = rowCount + 1;
			end
		end

		-- Hide the extra rows if any exist
		for i=math.max(2, rowCount + 1),#container.rows do
			local row = container.rows[i];
			if row.ref then
				SetRowData(self, row, nil);
			else
				break;
			end
		end
		self:SetMinMaxValues(rowCount, totalRowCount + 1);

		-- The data is smudged, meaning it needs to be Updated.
		if self.smudged then
			self.smudged = nil;
			self:Update(true);
		end

		-- If the rows need to be processed again, do so next update.
		if self.processingLinks then
			self:StartATTCoroutine("Process Links", function()
				while self.processingLinks do
					self.processingLinks = nil;
					coroutine.yield();
					self:Redraw();
				end
				if self.UpdateDone then
					self:StartATTCoroutine("UpdateDone", function()
						coroutine.yield();
						self:StartATTCoroutine("UpdateDoneP2", function()
							coroutine.yield();
							self:UpdateDone();
						end);
					end);
				end
			end);
		elseif self.UpdateDone and rowCount > 5 then
			self:StartATTCoroutine("UpdateDone", function()
				coroutine.yield();
				self:StartATTCoroutine("UpdateDoneP2", function()
					coroutine.yield();
					self:UpdateDone();
				end);
			end);
		end
	else
		self:Hide();
	end
end
local function IsSelfOrChild(self, focus)
	-- This function helps validate that the focus is within the local hierarchy.
	return focus and (self == focus or IsSelfOrChild(self, focus:GetParent()));
end
local function StopMovingOrSizing(self)
	if self.isMoving then
		self:StopMovingOrSizing();
		self.isMoving = false;
		self:RecordSettings();
	end
end
local function StartMovingOrSizing(self)
	if not (self:IsMovable() or self:IsResizable()) then
		return
	end
	if self.isMoving then
		StopMovingOrSizing(self);
	else
		self.isMoving = true;
		if not self:IsMovable() or ((select(2, GetCursorPosition()) / self:GetEffectiveScale()) < math.max(self:GetTop() - 40, self:GetBottom() + 10)) then
			self:StartSizing();
			self:StartATTCoroutine("StartMovingOrSizing (Sizing)", function()
				while self.isMoving do
					self:Refresh();
					coroutine.yield();
				end
			end);
		else
			self:StartMoving();
			self:StartATTCoroutine("StartMovingOrSizing (Moving)", function()
				while IsSelfOrChild(self, GetMouseFocus()) do
					coroutine.yield();
				end
				StopMovingOrSizing(self);
			end);
		end
	end
end
local function RowOnClick(self, button)
	local reference = self.ref;
	if reference then
		-- If the row data itself has an OnClick handler... execute that first.
		if reference.OnClick and reference.OnClick(self, button) then
			return true;
		end

		if IsShiftKeyDown() then
			if button == "RightButton" then
				if app.Settings:GetTooltipSetting("Sort:Progress") then
					app.print("Sorting selection by total progress...");
					app:StartATTCoroutine("Sorting", function() app.SortGroup(reference, "progress", self, false) end);
				else
					app.print("Sorting selection alphabetically...");
					app:StartATTCoroutine("Sorting", function() app.SortGroup(reference, "name", self, false) end);
				end
				return true;
			end

			-- If we're at the Auction House
			if AuctionFrame and AuctionFrame:IsShown() then
				local search = SearchForMissingItemNames(reference);
				local count = #search;
				if count < 1 then
					app.print("No cached items found in search. Expand the group and view the items to cache the names and try again. Only Bind on Equip items will be found using this search.");
					return true;
				end

				-- Auctionator Support
				if TSM_API and TSM_API.IsUIVisible("AUCTION") then
					app.print("TSM is not currently supported as the API for Classic is really limited.");
					return true;
				elseif Atr_SearchAH then
					Atr_SelectPane(3);
					if count > 1 then
						Atr_SearchAH(L["TITLE"], search, LE_ITEM_CLASS_ARMOR);
						return true;
					else
						Atr_SetSearchText (search[1]);
						Atr_Search_Onclick ();
						return true;
					end
				elseif Auctionator and Auctionator.API and AuctionatorTabs_Shopping then
					Auctionator.API.v1.MultiSearchExact(L["TITLE"], search);
					return;
				end

				-- Attempt to search manually with the link.
				local link = reference.link or reference.silentLink;
				if link and HandleModifiedItemClick(link) then
					AuctionFrameBrowse_Search();
				end
				return true;
			else
				-- Not at the Auction House
				-- If this reference has a link, then attempt to preview the appearance or write to the chat window.
				local link = reference.link or reference.silentLink;
				if link then
					if HandleModifiedItemClick(link) or ChatEdit_InsertLink(link or BuildSourceTextForChat(reference, 0)) then return true; end
					local _, dialog = StaticPopup_Visible("ALL_THE_THINGS_EDITBOX");
					if dialog then dialog.editBox:SetText(link); return true; end
				end
				if button == "LeftButton" then RefreshCollections(); end
				return true;
			end
		end

		-- Control Click Expands the Groups
		if IsControlKeyDown() then
			-- If this reference has a link, then attempt to preview the appearance.
			local link = reference.link or reference.silentLink;
			if link and HandleModifiedItemClick(link) then
				return true;
			end

			-- If this reference is anything else, expand the groups.
			if reference.g then
				if self.index < 1 and #reference.g > 0 then
					ExpandGroupsRecursively(reference, not reference.g[1].expanded, true);
				else
					ExpandGroupsRecursively(reference, not reference.expanded, true);
				end
				self:GetParent():GetParent():Update();
				return true;
			end
		end

		-- All non-Shift Right Clicks open a mini list or the settings.
		if button == "RightButton" then
			if IsAltKeyDown() then
				AddTomTomWaypoint(reference, false);
			elseif self.index > 0 then
				app:CreateMiniListForGroup(self.ref);
			else
				app.Settings:Open();
			end
		elseif self.index > 0 then
			reference.expanded = not reference.expanded;
			self:GetParent():GetParent():Update();
		elseif not reference.expanded then
			reference.expanded = true;
			self:GetParent():GetParent():Update();
		else
			-- Allow the First Frame to move the parent.
			local owner = self:GetParent():GetParent();
			if owner:IsMovable() then
				self:SetScript("OnMouseUp", function(self)
					self:SetScript("OnMouseUp", nil);
					StopMovingOrSizing(owner);
				end);
				StartMovingOrSizing(owner);
			end
		end
	end
end
local function RowOnEnter(self)
	local reference = self.ref; -- NOTE: This is the good ref value, not the parasitic one.
	if reference and GameTooltip then
		GameTooltipIcon.icon.Background:Hide();
		GameTooltipIcon.icon.Border:Hide();
		GameTooltipIcon:Hide();
		GameTooltipModel:Hide();
		GameTooltip:ClearLines();
		GameTooltipIcon:ClearAllPoints();
		GameTooltipModel:ClearAllPoints();
		if self:GetCenter() > (UIParent:GetWidth() / 2) then
			GameTooltip:SetOwner(self, "ANCHOR_LEFT");
			GameTooltipIcon:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
			GameTooltipModel:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
		else
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltipIcon:SetPoint("TOPLEFT", GameTooltip, "TOPRIGHT", 0, 0);
			GameTooltipModel:SetPoint("TOPLEFT", GameTooltip, "TOPRIGHT", 0, 0);
		end

		-- NOTE: Order matters, we "fall-through" certain values in order to pass this information to the item ID section.
		if not reference.creatureID then
			if reference.itemID then
				local link = reference.link;
				if link and link ~= "" then
					pcall(GameTooltip.SetHyperlink, GameTooltip, link);
				else
					GameTooltip:AddLine("Item #" .. reference.itemID);
					if reference and reference.u then
						local reason = L["UNOBTAINABLE_ITEM_REASONS"][reference.u];
						if reason and (not reason[5] or select(4, GetBuildInfo()) < reason[5]) then GameTooltip:AddLine(reason[2], 1, 1, 1, true); end
					end
					if reference.e then
						local reason = app.Modules.Events.GetEventTooltipNoteForGroup(reference);
						if reason then
							local left, right = strsplit(DESCRIPTION_SEPARATOR, reason);
							if right then
								GameTooltip:AddDoubleLine(left, right, 0.4, 0.8, 1, 0.4, 0.8, 1, 1);
							else
								GameTooltip:AddLine(left, 0.4, 0.8, 1, 1);
							end
						end
					end
					AttachTooltipSearchResults(GameTooltip, 1, "itemID:" .. reference.itemID, SearchForField, "itemID", reference.itemID);
				end
			elseif reference.currencyID then
				GameTooltip:SetCurrencyByID(reference.currencyID, 1);
			elseif reference.key ~= "questID" then
				local link = reference.link;
				if link then
					pcall(GameTooltip.SetHyperlink, GameTooltip, link);
					if reference.spellID then
						local requireSkill = GetRelativeValue(reference, "requireSkill");
						if requireSkill == 333 then
							AttachTooltipSearchResults(GameTooltip, 1, "spellID:" .. reference.spellID, SearchForField, "spellID", reference.spellID);
						elseif requireSkill == 960 then
							GameTooltip:AddLine(GameTooltipTextLeft1:GetText(), 1, 1, 1, true);
							GameTooltipTextLeft1:SetText(reference.name);
							GameTooltip:Show();
						end
					end
				end
			end
		end

		-- Miscellaneous fields
		if GameTooltip:NumLines() < 1 then
			GameTooltip:AddLine(reference.text);
		end
		if app.Settings:GetTooltipSetting("Progress") then
			if reference.trackable and reference.total and reference.total >= 2 then
				GameTooltip:AddDoubleLine("Tracking Progress", GetCompletionText(reference.saved));
			end
		end

		-- Relative ATT location
		if reference.parent and not reference.itemID then
			if reference.parent.parent then
				GameTooltip:AddDoubleLine(reference.parent.parent.text or RETRIEVING_DATA, reference.parent.text or RETRIEVING_DATA);
			else
				--GameTooltip:AddLine(reference.parent.text or RETRIEVING_DATA, 1, 1, 1);
			end
		end

		local title = reference.title;
		if title then
			local left, right = strsplit(DESCRIPTION_SEPARATOR, title);
			if right then
				GameTooltip:AddDoubleLine(left, right, 1, 1, 1);
			else
				GameTooltip:AddLine(title, 1, 1, 1);
			end
		elseif reference.retries then
			GameTooltip:AddLine("Failed to acquire information. This quest may have been removed from the game. " .. tostring(reference.retries), 1, 1, 1);
		end
		if reference.lvl then
			local minlvl, maxlvl;
			if type(reference.lvl) == "table" then
				minlvl = reference.lvl[1] or 0;
				maxlvl = reference.lvl[2] or 0;
			else
				minlvl = reference.lvl;
			end
			-- i suppose a maxlvl of 1 might exist?
			if maxlvl and maxlvl > 0 then
				GameTooltip:AddDoubleLine(L["REQUIRES_LEVEL"], tostring(minlvl) .. " to " .. tostring(maxlvl));
			-- no point to show 'requires lvl 1'
			elseif minlvl and minlvl > 1 then
				GameTooltip:AddDoubleLine(L["REQUIRES_LEVEL"], tostring(minlvl));
			end
		end
		if reference.b and app.Settings:GetTooltipSetting("binding") then GameTooltip:AddDoubleLine("Binding", tostring(reference.b)); end
		if reference.requireSkill then GameTooltip:AddDoubleLine(L["REQUIRES"], GetSpellInfo(app.SkillIDToSpellID[reference.requireSkill] or 0) or RETRIEVING_DATA); end
		if reference.f and reference.f > 0 and app.Settings:GetTooltipSetting("filterID") then
			if reference.filterForRWP then
				GameTooltip:AddDoubleLine(L["FILTER_ID"], tostring(L["FILTER_ID_TYPES"][reference.f]) .. " -> " .. tostring(L["FILTER_ID_TYPES"][reference.filterForRWP]));
			else
				GameTooltip:AddDoubleLine(L["FILTER_ID"], tostring(L["FILTER_ID_TYPES"][reference.f]));
			end
		end
		if reference.achievementID and app.Settings:GetTooltipSetting("achievementID") then
			GameTooltip:AddDoubleLine(L["ACHIEVEMENT_ID"], tostring(reference.achievementID));
			if reference.sourceQuests and not (GetCategoryInfo and GetCategoryInfo(92) ~= "") then
				GameTooltip:AddLine("This achievement has associated quests that can be completed before the introduction of the Achievement system coming with the Wrath Prepatch. Not all achievements can be tracked this way, but for those that can, they will be displayed. All other non-trackable achievements will be activated with the prepatch.", 0.4, 0.8, 1, true);
			end
		end
		if app.Settings:GetTooltipSetting("creatureID") then
			if reference.creatureID then
				GameTooltip:AddDoubleLine(L["CREATURE_ID"], tostring(reference.creatureID));
			elseif reference.npcID then
				GameTooltip:AddDoubleLine(L["NPC_ID"], tostring(reference.npcID));
			end
		end
		if reference.factionID and app.Settings:GetTooltipSetting("factionID") then GameTooltip:AddDoubleLine(L["FACTION_ID"], tostring(reference.factionID)); end
		if reference.minReputation and not reference.maxReputation then
			local standingId, offset = app.GetFactionStanding(reference.minReputation[2])
			local msg = "Requires a minimum standing of"
			if offset ~= 0 then msg = msg .. " " .. offset end
			msg = msg .. " " .. app.GetFactionStandingText(standingId) .. " with " .. (GetFactionInfoByID(reference.minReputation[1]) or "the opposite faction") .. "."
			GameTooltip:AddLine(msg);
		end
		if reference.maxReputation and not reference.minReputation then
			local standingId, offset = app.GetFactionStanding(reference.maxReputation[2])
			local msg = "Requires a standing lower than"
			if offset ~= 0 then msg = msg .. " " .. offset end
			msg = msg .. " " .. app.GetFactionStandingText(standingId) .. " with " .. (GetFactionInfoByID(reference.maxReputation[1]) or "the opposite faction") .. "."
			GameTooltip:AddLine(msg);
		end
		if reference.minReputation and reference.maxReputation then
			local minStandingId, minOffset = app.GetFactionStanding(reference.minReputation[2])
			local maxStandingId, maxOffset = app.GetFactionStanding(reference.maxReputation[2])
			if reference.maxReputation[1] == reference.minReputation[1] then
				local msg = "Requires a standing between"
				if minOffset ~= 0 then msg = msg .. " " .. minOffset end
				msg = msg .. " " .. app.GetFactionStandingText(minStandingId) .. " and"
				if maxOffset ~= 0 then msg = msg .. " " .. maxOffset end
				msg = msg .. " " .. app.GetFactionStandingText(maxStandingId) .. " with " .. (GetFactionInfoByID(reference.minReputation[1]) or "the opposite faction") .. ".";
				GameTooltip:AddLine(msg);
			else
				local msg = "Requires a minimum standing of"
				if minOffset ~= 0 then msg = msg .. " " .. minOffset end
				msg = msg .. " " .. app.GetFactionStandingText(minStandingId) .. " with " .. (GetFactionInfoByID(reference.minReputation[1]) or "the opposite faction") .. "."
				GameTooltip:AddLine(msg);

				msg = "Requires a standing lower than"
				if maxOffset ~= 0 then msg = msg .. " " .. maxOffset end
				msg = msg .. " " .. app.GetFactionStandingText(maxStandingId) .. " with " .. (GetFactionInfoByID(reference.maxReputation[1]) or "the opposite faction") .. "."
				GameTooltip:AddLine(msg);
			end
		end
		if reference.illusionID and app.Settings:GetTooltipSetting("illusionID") then GameTooltip:AddDoubleLine(L["ILLUSION_ID"], tostring(reference.illusionID)); end
		if reference.objectID and app.Settings:GetTooltipSetting("objectID") then GameTooltip:AddDoubleLine(L["OBJECT_ID"], tostring(reference.objectID)); end
		if reference.speciesID and app.Settings:GetTooltipSetting("speciesID") then GameTooltip:AddDoubleLine(L["SPECIES_ID"], tostring(reference.speciesID)); end
		if reference.spellID then
			if app.Settings:GetTooltipSetting("spellID") then GameTooltip:AddDoubleLine(L["SPELL_ID"], tostring(reference.spellID) .. " (" .. (app.GetSpellName(reference.spellID, reference.rank) or "??") .. ")"); end

			-- If the item is a recipe, then show which characters know this recipe.
			if not reference.collectible and app.Settings:GetTooltipSetting("KnownBy") then
				local knownBy = {};
				for _,character in pairs(ATTCharacterData) do
					if character.ActiveSkills and not character.ignored then
						local skills = character.ActiveSkills[reference.spellID];
						if skills then table.insert(knownBy, { character, skills[1], skills[2] }); end
					end
				end
				if #knownBy > 0 then
					app.Sort(knownBy, function(a, b)
						return a[2] > b[2];
					end);
					GameTooltip:AddLine("|c" .. app.Colors.TooltipDescription .. "Known by:|r");
					for i,data in ipairs(knownBy) do
						local character = data[1];
						GameTooltip:AddDoubleLine("  " .. string.gsub(character and character.text or "???", "-" .. GetRealmName(), ""), data[2] .. " / " .. data[3]);
					end

				end
			end
		end
		if reference.flightPathID and app.Settings:GetTooltipSetting("flightPathID")  then GameTooltip:AddDoubleLine(L["FLIGHT_PATH_ID"], tostring(reference.flightPathID)); end
		if reference.mapID and app.Settings:GetTooltipSetting("mapID") then GameTooltip:AddDoubleLine(L["MAP_ID"], tostring(reference.mapID)); end
		if reference.explorationID and app.Settings:GetTooltipSetting("explorationID") then GameTooltip:AddDoubleLine(L["EXPLORATION_ID"], tostring(reference.explorationID)); end
		if reference.artID and app.Settings:GetTooltipSetting("artID") then GameTooltip:AddDoubleLine(L["ART_ID"], tostring(reference.artID)); end
		--if reference.hash then GameTooltip:AddDoubleLine("Hash", tostring(reference.hash)); end
		if reference.coords and app.Settings:GetTooltipSetting("Coordinates") then
			local currentMapID, j, str = app.CurrentMapID, 0;
			for i,coord in ipairs(reference.coords) do
				local x, y = coord[1], coord[2];
				local mapID = coord[3] or currentMapID;
				if mapID ~= currentMapID then
					str = app.GetMapName(mapID) or "??";
					if app.Settings:GetTooltipSetting("mapID") then
						str = str .. " (" .. mapID .. ")";
					end
					str = str .. ": ";
				else
					str = "";
				end
				GameTooltip:AddDoubleLine(j == 0 and "Coordinates" or " ",
					str.. GetNumberWithZeros(math.floor(x * 10) * 0.1, 1) .. ", " .. GetNumberWithZeros(math.floor(y * 10) * 0.1, 1), 1, 1, 1, 1, 1, 1);
				j = j + 1;
				if j > 8 then
					break;
				end
			end
		end
		if reference.coord and app.Settings:GetTooltipSetting("Coordinates") then
			GameTooltip:AddDoubleLine("Coordinate",
				GetNumberWithZeros(math.floor(reference.coord[1] * 10) * 0.1, 1) .. ", " ..
				GetNumberWithZeros(math.floor(reference.coord[2] * 10) * 0.1, 1), 1, 1, 1, 1, 1, 1);
		end
		if reference.providers then
			local counter = 0;
			for i,provider in pairs(reference.providers) do
				local providerType = provider[1];
				local providerID = provider[2] or 0;
				local providerString = UNKNOWN;
				if providerType == "o" then
					providerString = app.ObjectNames[providerID] or reference.text or ("Object: " .. RETRIEVING_DATA)
					if app.Settings:GetTooltipSetting("objectID") then
						providerString = providerString .. ' (' .. providerID .. ')';
					end
				elseif providerType == "n" then
					providerString = (providerID > 0 and app.NPCNameFromID[providerID]) or ("Creature: " .. RETRIEVING_DATA)
					if app.Settings:GetTooltipSetting("creatureID") then
						providerString = providerString .. ' (' .. providerID .. ')';
					end
				elseif providerType == "i" then
					local _,name,_,_,_,_,_,_,_,icon = GetItemInfo(providerID);
					providerString = (icon and ("|T" .. icon .. ":0|t") or "") .. (name or ("Item: " .. RETRIEVING_DATA));
					if app.Settings:GetTooltipSetting("itemID") then
						providerString = providerString .. ' (' .. providerID .. ')';
					end
				end
				GameTooltip:AddDoubleLine(counter == 0 and "Provider(s)" or " ", providerString);
				counter = counter + 1;
			end
		end

		if not reference.itemID then
			if reference.lore and app.Settings:GetTooltipSetting("Lore") then
				local lore = reference.lore;
				local found = false;
				for i=1,GameTooltip:NumLines() do
					if _G["GameTooltipTextLeft"..i]:GetText() == lore then
						found = true;
						break;
					end
				end
				if not found then
					local r,g,b = HexToRGB(app.Colors.TooltipLore);
					GameTooltip:AddLine(lore, r, g, b, 1);
				end
			end
			local description = reference.description;
			if description and app.Settings:GetTooltipSetting("Descriptions") then
				local found = false;
				for i=1,GameTooltip:NumLines() do
					if _G["GameTooltipTextLeft"..i]:GetText() == description then
						found = true;
						break;
					end
				end
				if not found then
					local r,g,b = HexToRGB(app.Colors.TooltipDescription);
					GameTooltip:AddLine(description, r, g, b, 1);
				end
				if reference.maps then
					local description,maps,umaps,name = "Maps: ",{},{};
					for i=1,#reference.maps,1 do
						name = app.GetMapName(reference.maps[i]);
						if name and not umaps[name] then
							umaps[name] = true;
							tinsert(maps, name);
						end
					end
					for i,name in ipairs(maps) do
						if i > 1 then description = description .. ", "; end
						description = description .. name;
					end
					GameTooltip:AddLine(" ", 1, 1, 1, 1);
					local r,g,b = HexToRGB(app.Colors.TooltipDescription);
					GameTooltip:AddLine(description, r, g, b, 1);
				end
			elseif reference.maps then
				local description,maps,umaps,name = "Maps: ",{},{};
				for i=1,#reference.maps,1 do
					name = app.GetMapName(reference.maps[i]);
					if name and not umaps[name] then
						umaps[name] = true;
						tinsert(maps, name);
					end
				end
				for i,name in ipairs(maps) do
					if i > 1 then description = description .. ", "; end
					description = description .. name;
				end
				local r,g,b = HexToRGB(app.Colors.TooltipDescription);
				GameTooltip:AddLine(description, r, g, b, 1);
			end
			if reference.nextEvent then
				local timeStrings = app.Modules.Events.GetEventTimeStrings(reference.nextEvent);
				if timeStrings then
					local r,g,b = HexToRGB(app.Colors.TooltipDescription);
					for i,timeString in ipairs(timeStrings) do
						local left, right = strsplit(DESCRIPTION_SEPARATOR, timeString);
						if right then
							GameTooltip:AddDoubleLine(left, right, r, g, b, r, g, b, 1);
						else
							GameTooltip:AddLine(left, r, g, b, 1);
						end
					end
				end
			end
			if reference.awp then
				local found = false;
				local awp = GetAddedWithPatchString(reference.awp);
				for i=1,GameTooltip:NumLines() do
					if _G["GameTooltipTextLeft"..i]:GetText() == awp then
						found = true;
						break;
					end
				end
				if not found then
					local r,g,b = HexToRGB(app.Colors.AddedWithPatch);
					GameTooltip:AddLine(awp, r, g, b, 1);
				end
			end
			if reference.rwp then
				local found = false;
				local rwp = GetRemovedWithPatchString(reference.rwp);
				for i=1,GameTooltip:NumLines() do
					if _G["GameTooltipTextLeft"..i]:GetText() == rwp then
						found = true;
						break;
					end
				end
				if not found then
					local r,g,b = HexToRGB(app.Colors.RemovedWithPatch);
					GameTooltip:AddLine(rwp, r, g, b, 1);
				end
			end
			if reference.questID and not reference.objectiveID then
				app.AddQuestObjectivesToTooltip(GameTooltip, reference);
			end
			if reference.u then
				local reason = L["UNOBTAINABLE_ITEM_REASONS"][reference.u];
				if reason and (not reason[5] or select(4, GetBuildInfo()) < reason[5]) then GameTooltip:AddLine(reason[2], 1, 1, 1, true); end
			end
			if reference.e then
				local reason = app.Modules.Events.GetEventTooltipNoteForGroup(reference);
				if reason then
					local left, right = strsplit(DESCRIPTION_SEPARATOR, reason);
					if right then
						GameTooltip:AddDoubleLine(left, right, 0.4, 0.8, 1, 0.4, 0.8, 1, 1);
					else
						GameTooltip:AddLine(left, 0.4, 0.8, 1, 1);
					end
				end
			end
			if reference.sym then GameTooltip:AddLine("Right click to view more information.", 0.8, 0.8, 1, true); end
		end
		if reference.titleID then
			if app.Settings:GetTooltipSetting("titleID") then GameTooltip:AddDoubleLine(L["TITLE_ID"], tostring(reference.titleID)); end
			AttachTooltipSearchResults(GameTooltip, 1, "titleID:" .. reference.titleID, SearchForField, "titleID", reference.titleID);
		end
		if reference.questID and app.Settings:GetTooltipSetting("questID") then GameTooltip:AddDoubleLine(L["QUEST_ID"], tostring(reference.questID)); end
		if reference.qgs and app.Settings:GetTooltipSetting("QuestGivers") then
			if app.Settings:GetTooltipSetting("creatureID") then
				for i,qg in ipairs(reference.qgs) do
					GameTooltip:AddDoubleLine(i == 1 and L["QUEST_GIVER"] or " ", tostring(qg > 0 and app.NPCNameFromID[qg] or "") .. " (" .. qg .. ")");
				end
			else
				for i,qg in ipairs(reference.qgs) do
					GameTooltip:AddDoubleLine(i == 1 and L["QUEST_GIVER"] or " ", tostring(qg > 0 and app.NPCNameFromID[qg] or qg));
				end
			end
		end
		if reference.crs then
			if app.Settings:GetTooltipSetting("creatureID") then
				for i,cr in ipairs(reference.crs) do
					GameTooltip:AddDoubleLine(i == 1 and CREATURE or " ", tostring(cr > 0 and app.NPCNameFromID[cr] or "") .. " (" .. cr .. ")");
				end
			else
				for i,cr in ipairs(reference.crs) do
					GameTooltip:AddDoubleLine(i == 1 and CREATURE or " ", tostring(cr > 0 and app.NPCNameFromID[cr] or cr));
				end
			end
		end
		if reference.c and app.Settings:GetTooltipSetting("ClassRequirements") then
			local str = "";
			for i,cl in ipairs(reference.c) do
				local info = C_CreatureInfo.GetClassInfo(cl);
				if info then
					if i > 1 then str = str .. ", "; end
					str = str .. info.className;
				end
			end
			GameTooltip:AddDoubleLine("Classes", str);
		end
		if app.Settings:GetTooltipSetting("RaceRequirements") then
			if reference.races then
				local str = "";
				for i,race in ipairs(reference.races) do
					local info = C_CreatureInfo.GetRaceInfo(race);
					if info then
						if i > 1 then str = str .. ", "; end
						str = str .. info.raceName;
					end
				end
				GameTooltip:AddDoubleLine("Races", str);
			elseif reference.r and reference.r > 0 then
				GameTooltip:AddDoubleLine("Races", (reference.r == 2 and ITEM_REQ_ALLIANCE) or (reference.r == 1 and ITEM_REQ_HORDE) or "Unknown");
			end
		end
		if reference.isDaily then GameTooltip:AddLine("This can be completed daily.");
		elseif reference.isWeekly then GameTooltip:AddLine("This can be completed weekly.");
		elseif reference.isMontly then GameTooltip:AddLine("This can be completed monthly.");
		elseif reference.isYearly then GameTooltip:AddLine("This can be completed yearly.");
		elseif reference.repeatable then GameTooltip:AddLine("This can be repeated multiple times."); end
		if reference.pvp and not reference.itemID then GameTooltip:AddLine(L["REQUIRES_PVP"], 1, 1, 1, 1, true); end
		if not GameTooltipModel:TrySetModel(reference) then
			local texture = reference.preview or reference.icon;
			if texture then
				if reference.explorationID and reference.maphash and reference.preview then
					local width, height, offsetX, offsetY = strsplit(":", reference.maphash);
					GameTooltipIcon:SetSize(tonumber(width) or 72,tonumber(height) or 72);
				else
					GameTooltipIcon:SetSize(72,72);
				end
				GameTooltipIcon.icon:SetTexture(texture);
				local texcoord = reference.texcoord;
				if texcoord then
					GameTooltipIcon.icon:SetTexCoord(texcoord[1], texcoord[2], texcoord[3], texcoord[4]);
				else
					GameTooltipIcon.icon:SetTexCoord(0, 1, 0, 1);
				end
				GameTooltipIcon:Show();
			end
		end
		if reference.displayID and app.Settings:GetTooltipSetting("displayID") then
			GameTooltip:AddDoubleLine("Display ID", reference.displayID);
		end
		if reference.modelID and app.Settings:GetTooltipSetting("modelID") then
			GameTooltip:AddDoubleLine("Model ID", reference.modelID);
		end
		if reference.cost then
			if type(reference.cost) == "table" then
				local _, name, icon, amount;
				for k,v in pairs(reference.cost) do
					_ = v[1];
					if _ == "g" then
						GameTooltip:AddDoubleLine(k == 1 and "Cost" or " ", GetCoinTextureString(v[2]));
					else
						if _ == "i" then
							local item = app.CreateItem(v[2]);
							name = item.name;
							icon = item.icon;
						elseif _ == "c" then
							local currency = app.CreateCurrencyClass(v[2]);
							name = currency.text;
							icon = currency.icon;
						end
						name = (icon and ("|T" .. icon .. ":0|t") or "") .. (name or RETRIEVING_DATA);
						_ = (v[3] or 1);
						if _ > 1 then
							name = _ .. "x  " .. name;
						end
						GameTooltip:AddDoubleLine(k == 1 and "Cost" or " ", name);
					end
				end
			else
				GameTooltip:AddDoubleLine("Cost", GetCoinTextureString(reference.cost));
			end
		end
		if app.Settings:GetTooltipSetting("Progress") then
			local right = (app.Settings:GetTooltipSetting("ShowIconOnly") and GetProgressTextForRow or GetProgressTextForTooltip)(reference);
			if right and right ~= "" and right ~= "---" then
				GameTooltipTextRight1:SetText(right);
				GameTooltipTextRight1:Show();
			end
		end

		-- Show Breadcrumb information
		if reference.isBreadcrumb then
			GameTooltip:AddLine("This is a breadcrumb quest.");
		end

		GameTooltip:AddDoubleLine("Type", reference.__type);

		-- Show lockout information about an Instance (Raid or Dungeon)
		local locks = reference.locks;
		if locks then
			if locks.encounters then
				GameTooltip:AddDoubleLine("Resets", date("%c", locks.reset));
				for encounterIter,encounter in pairs(locks.encounters) do
					GameTooltip:AddDoubleLine(" " .. encounter.name, GetCompletionIcon(encounter.isKilled));
				end
			else
				if reference.isLockoutShared and locks.shared then
					GameTooltip:AddDoubleLine("Shared", date("%c", locks.shared.reset));
					for encounterIter,encounter in pairs(locks.shared.encounters) do
						GameTooltip:AddDoubleLine(" " .. encounter.name, GetCompletionIcon(encounter.isKilled));
					end
				else
					for key,value in pairs(locks) do
						if key == "shared" then
							-- Skip
						else
							GameTooltip:AddDoubleLine(Colorize(GetDifficultyInfo(key), app.DifficultyColors[key] or app.Colors.DefaultDifficulty), date("%c", value.reset));
							for encounterIter,encounter in pairs(value.encounters) do
								GameTooltip:AddDoubleLine(" " .. encounter.name, GetCompletionIcon(encounter.isKilled));
							end
						end
					end
				end
			end
		end

		if reference.OnTooltip then reference:OnTooltip(); end

		if reference.questID and app.Settings:GetTooltipSetting("SummarizeThings") then
			if not reference.repeatable and app.Settings:GetTooltipSetting("Show:OtherCharacterQuests") then
				local incompletes, realmName = {}, GetRealmName();
				for guid,character in pairs(ATTCharacterData) do
					if not character.ignored and character.realm == realmName
						and (not reference.r or (character.factionID and reference.r == character.factionID))
						and (not reference.races or (character.raceID and contains(reference.races, character.raceID)))
						and (not reference.c or (character.classID and contains(reference.c, character.classID)))
						and (character.Quests and not character.Quests[reference.questID]) then
						incompletes[guid] = character;
					end
				end
				incompletes[app.GUID] = nil;
				local desc, j = "", 0;
				for guid,character in pairs(incompletes) do
					if j > 0 then desc = desc .. ", "; end
					desc = desc .. (character.text or guid);
					j = j + 1;
				end
				if j > 0 then
					GameTooltip:AddLine("Incomplete on " .. string.gsub(desc, "-" .. realmName, ""), 1, 1, 1, true);
				end
			end
		end

		-- Show Quest Prereqs
		local isDebugMode = app.Settings:Get("DebugMode");
		if reference.sourceQuests and (isDebugMode or not reference.saved) then
			local prereqs, bc = {}, {};
			for i,sourceQuestID in ipairs(reference.sourceQuests) do
				if sourceQuestID > 0 and (isDebugMode or not IsQuestFlaggedCompleted(sourceQuestID)) then
					local sqs = SearchForField("questID", sourceQuestID);
					if #sqs > 0 then
						local bestMatch = nil;
						for j,sq in ipairs(sqs) do
							if sq.questID == sourceQuestID and not sq.objectiveID then
								if isDebugMode or (app.RecursiveClassAndRaceFilter(sq) and not IsQuestFlaggedCompleted(sourceQuestID)) then
									if sq.sourceQuests then
										-- Always prefer the source quest with additional source quest data.
										bestMatch = sq;
									elseif not sq.itemID and (not bestMatch or not bestMatch.sourceQuests) then
										-- Otherwise try to find the version of the quest that isn't an item.
										bestMatch = sq;
									end
								end
							end
						end
						if bestMatch then
							if bestMatch.isBreadcrumb then
								table.insert(bc, bestMatch);
							else
								table.insert(prereqs, bestMatch);
							end
						end
					else
						table.insert(prereqs, app.CreateQuest(sourceQuestID));
					end
				end
			end

			if prereqs and #prereqs > 0 then
				GameTooltip:AddLine("This quest has an incomplete prerequisite quest that you need to complete first.");
				for i,prereq in ipairs(prereqs) do
					local text = "   " .. prereq.questID .. ": " .. (prereq.text or RETRIEVING_DATA);
					if prereq.mapID then
						text = text .. " (" .. (app.GetMapName(prereq.mapID) or RETRIEVING_DATA) .. ")";
					elseif prereq.maps then
						text = text .. " (" .. (app.GetMapName(prereq.maps[1]) or RETRIEVING_DATA) .. ")";
					elseif prereq.coords then
						text = text .. " (" .. (app.GetMapName(prereq.coords[1][3]) or RETRIEVING_DATA) .. ")";
					end
					GameTooltip:AddDoubleLine(text, GetCompletionIcon(IsQuestFlaggedCompleted(prereq.questID)));
				end
			end
			if bc and #bc > 0 then
				GameTooltip:AddLine("This quest has a breadcrumb quest that you may be unable to complete after completing this one.");
				for i,prereq in ipairs(bc) do
					local text = "   " .. prereq.questID .. ": " .. (prereq.text or RETRIEVING_DATA);
					if prereq.mapID then
						text = text .. " (" .. (app.GetMapName(prereq.mapID) or RETRIEVING_DATA) .. ")";
					elseif prereq.maps then
						text = text .. " (" .. (app.GetMapName(prereq.maps[1]) or RETRIEVING_DATA) .. ")";
					elseif prereq.coords then
						text = text .. " (" .. (app.GetMapName(prereq.coords[1][3]) or RETRIEVING_DATA) .. ")";
					end
					GameTooltip:AddDoubleLine(text, GetCompletionIcon(IsQuestFlaggedCompleted(prereq.questID)));
				end
			end
		end

		if reference.g then
			-- If we're at the Auction House
			if AuctionFrame and AuctionFrame:IsShown() then
				GameTooltip:AddLine(L[(self.index > 0 and "OTHER_ROW_INSTRUCTIONS_AH") or "TOP_ROW_INSTRUCTIONS_AH"], 1, 1, 1);
			else
				GameTooltip:AddLine(L[(self.index > 0 and "OTHER_ROW_INSTRUCTIONS") or "TOP_ROW_INSTRUCTIONS"], 1, 1, 1);
			end
		end
		GameTooltip:Show();
	end
end
local function RowOnLeave(self)
	if GameTooltip then
		GameTooltip:ClearLines();
		GameTooltip:Hide();
		GameTooltipIcon.icon.Background:Hide();
		GameTooltipIcon.icon.Border:Hide();
		GameTooltipIcon:Hide();
		GameTooltipModel:Hide();
	end
end
CreateRow = function(self)
	local row = CreateFrame("Button", nil, self);
	row.index = #self.rows;
	if row.index == 0 then
		-- This means relative to the parent.
		row:SetPoint("TOPLEFT");
		row:SetPoint("TOPRIGHT");
	else
		-- This means relative to the row above this one.
		row:SetPoint("TOPLEFT", self.rows[row.index], "BOTTOMLEFT");
		row:SetPoint("TOPRIGHT", self.rows[row.index], "BOTTOMRIGHT");
	end
	table.insert(self.rows, row);

	-- Setup highlighting and event handling
	row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD");
	row:RegisterForClicks("LeftButtonDown","RightButtonDown");
	row:SetScript("OnClick", RowOnClick);
	row:SetScript("OnEnter", RowOnEnter);
	row:SetScript("OnLeave", RowOnLeave);
	row:EnableMouse(true);

	-- Label is the text information you read.
	row.Label = row:CreateFontString(nil, "ARTWORK", "GameFontNormal");
	row.Label:SetJustifyH("LEFT");
	row.Label:SetPoint("BOTTOM");
	row.Label:SetPoint("TOP");
	row:SetHeight(select(2, row.Label:GetFont()) + 4);

	-- Summary is the completion summary information. (percentage text)
	row.Summary = row:CreateFontString(nil, "ARTWORK", "GameFontNormal");
	row.Summary:SetJustifyH("CENTER");
	row.Summary:SetPoint("BOTTOM");
	row.Summary:SetPoint("RIGHT");
	row.Summary:SetPoint("TOP");

	-- Background is used by the Map Highlight functionality.
	row.Background = row:CreateTexture(nil, "BACKGROUND");
	row.Background:SetPoint("LEFT", 4, 0);
	row.Background:SetPoint("BOTTOM");
	row.Background:SetPoint("RIGHT");
	row.Background:SetPoint("TOP");
	row.Background:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight");

	-- Indicator is used by the Instance Saves functionality.
	row.Indicator = row:CreateTexture(nil, "ARTWORK");
	row.Indicator:SetPoint("BOTTOM");
	row.Indicator:SetPoint("TOP");
	row.Indicator:SetWidth(row:GetHeight());

	-- Texture is the icon.
	row.Texture = row:CreateTexture(nil, "ARTWORK");
	row.Texture:SetPoint("BOTTOM");
	row.Texture:SetPoint("TOP");
	row.Texture:SetWidth(row:GetHeight());
	row.Texture.Background = row:CreateTexture(nil, "BACKGROUND");
	row.Texture.Background:SetPoint("BOTTOM");
	row.Texture.Background:SetPoint("TOP");
	row.Texture.Background:SetWidth(row:GetHeight());
	row.Texture.Border = row:CreateTexture(nil, "BORDER");
	row.Texture.Border:SetPoint("BOTTOM");
	row.Texture.Border:SetPoint("TOP");
	row.Texture.Border:SetWidth(row:GetHeight());

	-- Clear the Row Data Initially
	SetRowData(self, row, nil);
	return row;
end

-- Window Creation
app.Windows = {};
local defaultNoEntriesRow = {
	text = "No data was found.",
	preview = app.asset("Discord_2_128"),
	description = "If you believe this was in error, try activating 'Debug Mode'. One of your filters may be restricting the visibility of the group.",
};
local AllWindowSettings;
local function ApplySettingsForWindow(self, windowSettings)
	if windowSettings.scale then self:SetScale(windowSettings.scale); end
	if windowSettings.movable then
		self:ClearAllPoints();
		if windowSettings.x then
			self:SetPoint(windowSettings.point or "CENTER", windowSettings.relativeTo or UIParent, windowSettings.relativePoint or "CENTER", windowSettings.x, windowSettings.y);
		else
			self:SetPoint("CENTER", UIParent, "CENTER");
		end
	end
	if windowSettings.width then
		self:SetSize(windowSettings.width, windowSettings.height);
	end
	self:SetMovable(windowSettings.movable);
	self:SetResizable(windowSettings.resizable);
	self:SetVisible(windowSettings.visible);
end
local function BuildSettingsForWindow(self, windowSettings)
	local scale = self:GetScale();
	if scale then
		windowSettings.scale = scale;
		local point, relativeTo, relativePoint, xOfs, yOfs = self:GetPoint()
		if xOfs then
			windowSettings.width = self:GetWidth();
			windowSettings.height = self:GetHeight();
			windowSettings.x = xOfs;
			windowSettings.y = yOfs;
			windowSettings.point = point;
			windowSettings.relativePoint = relativePoint;
			windowSettings.relativeTo = relativeTo and relativeTo:GetName();
		end
	else
		windowSettings.scale = 1;
		windowSettings.x = 0;
		windowSettings.y = 0;
	end
	windowSettings.visible = not not self:IsVisible();
	windowSettings.movable = not not self:IsMovable();
	windowSettings.resizable = not not self:IsResizable();
end
local function ClearSettingsForWindow(self)
	if not AllWindowSettings then return; end
	AllWindowSettings[self.Suffix] = nil;
end
local function LoadSettingsForWindow(self)
	if not AllWindowSettings then return; end
	local name = self.Suffix;
	local settings = AllWindowSettings[name];
	if not settings then
		settings = {};
		AllWindowSettings[name] = settings;
	end
	self.Settings = settings;
	self:Load();
end
local function LoadSettingsForWindows(windowSettings)
	if AllWindowSettings then
		return;
	end
	AllWindowSettings = windowSettings;
	local dynamicWindows = {};
	for name, settings in pairs(windowSettings) do
		if settings.dynamic then
			if settings.visible then
				dynamicWindows[name] = settings;
			else
				windowSettings[name] = nil;
			end
		end
	end

	-- Load all of the windows other than Prime.
	local primeWindow = app.Windows.Prime;
	app.Windows.Prime = nil;
	for name, window in pairs(app.Windows) do
		LoadSettingsForWindow(window);
		dynamicWindows[name] = nil;
	end

	-- Okay, now load Prime last.
	app.Windows.Prime = primeWindow;
	LoadSettingsForWindow(primeWindow);
	dynamicWindows.Prime = nil;

	for name,settings in pairs(dynamicWindows) do
		settings.visible = false;
		app:CreateMiniListFromSource(settings.key, settings.id, settings.sourcePath);
	end
end
app:RegisterEvent("PLAYER_LOGOUT");
app.events.PLAYER_LOGOUT = function()
	for _, window in pairs(app.Windows) do
		window:Save();
	end
end;

local function SetWindowData(self, data)
	if self.data ~= data then
		self.data = data;
		self:DelayedRebuild();
	end
end
local function ProcessGroup(data, object)
	if app.VisibilityFilter(object) then
		data[#data + 1] = object;
		if object.g and object.expanded then
			for i=1,#object.g,1 do
				ProcessGroup(data, object.g[i]);
			end
		end
	end
end
local function UpdateWindow(self, force, trigger)
	-- If this window doesn't have data, do nothing.
	local data = self.data;
	if not data then
		self:DelayedRebuild();
		return;
	end
	if not self.rowData then
		self.rowData = {};
	else
		wipe(self.rowData);
	end
	self.forceFullDataRefresh = self.forceFullDataRefresh or force or trigger;
	if force or self:IsShown() then
		data.expanded = true;
		if self.forceFullDataRefresh then
			local rows = self.Container.rows;
			for i=1,#rows,1 do
				SetRowData(self, rows[i], nil);
			end
			data.progress = 0;
			data.total = 0;
			--local lastUpdate = GetTimePreciseSec();
			if not (data.OnUpdate and data:OnUpdate()) then
				UpdateGroups(data, data.g);

				-- Check to see if the data changed.
				if self.data ~= data then
					print(self.Suffix, app.Colorize("DATA CHANGED!", RGBToHex(255, 120, 120)));
					return;
				end
			else
				print(self.Suffix, "Returned true!!! Skipping the rest of this UpdateWindows call");
				return;
			end
			self.forceFullDataRefresh = nil;
			--print("UpdateGroups RESULT", (GetTimePreciseSec() - lastUpdate) * 10000);
		end
		ProcessGroup(self.rowData, data);

		-- Does this user have everything?
		if data.total and data.total > 0 then
			if data.total <= data.progress then
				if #self.rowData < 1 then
					data.back = 1;
					tinsert(self.rowData, data);
				end
				if self.missingData then
					self.missingData = nil;
					--print("UNSETTING MISSING DATA", trigger, self.AllowCompleteSound);
					if trigger and self.AllowCompleteSound then
						--print("PLAY COMPLETE SOUND", self.data.text);
						app:PlayCompleteSound();
					end
				end
				if not self.ignoreNoEntries then
					local noentries = self.noEntriesRow or defaultNoEntriesRow;
					noentries.parent = self.data;
					tinsert(self.rowData, noentries);
				end
			else
				self.missingData = true;
			end
		else
			self.missingData = nil;
		end
		return true;
	end
end
local function UpdateWindowColor(self, suffix)
	self:SetBackdropBorderColor(1, 1, 1, 1);
	self:SetBackdropColor(0, 0, 0, 1);
end
if app.Debugging then
function app:RedrawWindows(source)
	app:StartATTCoroutine("RedrawWindows", function()
		coroutine.yield();
		coroutine.yield();
		print("RedrawWindows: ", source);
		local lastUpdate = GetTimePreciseSec();
		for name, window in pairs(app.Windows) do
			window:Redraw();
		end
		print("RedrawWindows: ", (GetTimePreciseSec() - lastUpdate) * 10000);
	end);
end
function app:RefreshWindows(source)
	print("RefreshWindows: ", source);
	local lastUpdate = GetTimePreciseSec();
	for name, window in pairs(app.Windows) do
		window:Refresh();
	end
	print("RefreshWindows: ", (GetTimePreciseSec() - lastUpdate) * 10000);
end
function app:UpdateWindows(source, force, trigger)
	print("UpdateWindows: ", source, force, trigger);
	if trigger then trigger = source; end
	local lastUpdate = GetTimePreciseSec();
	for name, window in pairs(app.Windows) do
		window:Update(force, trigger);
	end
	print("UpdateWindows: ", (GetTimePreciseSec() - lastUpdate) * 10000);
end
else
function app:RedrawWindows(source)
	for name, window in pairs(app.Windows) do
		window:Redraw();
	end
end
function app:RefreshWindows(source)
	for name, window in pairs(app.Windows) do
		window:Refresh();
	end
end
function app:UpdateWindows(source, force, trigger)
	if trigger then trigger = source; end
	for name, window in pairs(app.Windows) do
		local window_oldUpdate = window.Update;
		window.UpdatePending = true;
		window.Update = function(self, ...)
			local result = window_oldUpdate(self, ...);
			self.Update = window_oldUpdate;
			self.UpdatePending = nil;
			return result;
		end
	end
	for name, window in pairs(app.Windows) do
		if window.UpdatePending then
			window:Update(force, trigger);
		end
	end
end
end
function app:UpdateWindowColors()
	for suffix, window in pairs(app.Windows) do
		UpdateWindowColor(window, suffix);
	end
end

local refreshDataCooldown = 5;
local refreshFromTrigger;
local currentlyRefreshingData = false;
local function RefreshData(source, trigger)
	wipe(searchCache);
	refreshDataCooldown = 5;
	if trigger then
		--print("REFRESH_DATA", source, trigger);
		trigger = source;
	end
	refreshFromTrigger = refreshFromTrigger or trigger;
	if currentlyRefreshingData then return; end
	app:StartATTCoroutine("RefreshData", function()
		currentlyRefreshingData = true;

		-- While the player is in combat, wait for combat to end.
		while InCombatLockdown() do coroutine.yield(); end

		-- Wait 1/2 second. For multiple simultaneous requests, each one will reapply the delay.
		while refreshDataCooldown > 0 do
			refreshDataCooldown = refreshDataCooldown - 1;
			coroutine.yield();
		end

		-- Send an Update to the Windows to Rebuild their Row Data
		if app.forceFullDataRefresh then
			app.forceFullDataRefresh = nil;

			-- Execute the OnRecalculate handlers.
			for i,handler in ipairs(app.EventHandlers.OnRecalculate) do
				handler();
			end
			app:UpdateWindows(source, true, refreshFromTrigger);
		else
			app:UpdateWindows(source, nil, refreshFromTrigger);
		end
		refreshFromTrigger = nil;

		-- Send a message to your party members.
		local data = (app.CurrentCharacter and app.CurrentCharacter.PrimeData) or app:GetDataCache();
		msg = "A\t" .. app.Version .. "\t" .. (data.progress or 0) .. "\t" .. (data.total or 0) .. "\t" .. data.modeString;
		if app.lastProgressUpdateMessage ~= msg then
			SendGroupMessage(msg);
			SendGuildMessage(msg);
			app.lastProgressUpdateMessage = msg;
		end
		wipe(searchCache);
		currentlyRefreshingData = nil;
	end);
end
function app:RefreshDataCompletely(source, trigger)
	app.forceFullDataRefresh = true;
	RefreshData("RefreshDataCompletely:" .. source, trigger);
end
function app:RefreshDataQuietly(source, trigger)
	RefreshData("RefreshDataQuietly:" .. source, trigger);
end
local function SetWindowVisible(self, show)
	if show then
		self:Show();
	else
		self:Hide();
	end
end
local function ToggleWindow(self)
	self:SetVisible(not self:IsVisible());
end
local BuildCategory = function(self, headers, searchResults, inst)
	local sources, header, headerType = {}, self;
	for j,o in ipairs(searchResults) do
		if not o.u or o.u ~= 1 then
			MergeClone(sources, o);
			if o.parent then
				if not o.sourceQuests then
					local questID = GetRelativeValue(o, "questID");
					if questID then
						if not inst.sourceQuests then
							inst.sourceQuests = {};
						end
						if not contains(inst.sourceQuests, questID) then
							tinsert(inst.sourceQuests, questID);
						end
					else
						local sourceQuests = GetRelativeValue(o, "sourceQuests");
						if sourceQuests then
							if not inst.sourceQuests then
								inst.sourceQuests = {};
								for k,questID in ipairs(sourceQuests) do
									tinsert(inst.sourceQuests, questID);
								end
							else
								for k,questID in ipairs(sourceQuests) do
									if not contains(inst.sourceQuests, questID) then
										tinsert(inst.sourceQuests, questID);
									end
								end
							end
						end
					end
				end

				if GetRelativeValue(o, "isHolidayCategory") then
					headerType = "holiday";
				elseif GetRelativeValue(o, "isPromotionCategory") then
					headerType = "promo";
				elseif GetRelativeValue(o, "isPVPCategory") then
					headerType = "pvp";
				elseif GetRelativeValue(o, "isEventCategory") then
					headerType = "event";
				elseif GetRelativeValue(o, "isWorldDropCategory") or o.parent.headerID == app.HeaderConstants.COMMON_BOSS_DROPS then
					headerType = "drop";
				elseif o.parent.npcID then
					headerType = GetDeepestRelativeValue(o, "headerID") or o.parent.parent.headerID == app.HeaderConstants.VENDORS and app.HeaderConstants.VENDORS or "drop";
				elseif GetRelativeValue(o, "isCraftedCategory") then
					headerType = "crafted";
				elseif o.parent.achievementID then
					headerType = app.HeaderConstants.ACHIEVEMENTS;
				else
					headerType = GetDeepestRelativeValue(o, "headerID") or "drop";
					if headerType == true then	-- Seriously don't do this...
						headerType = "drop";
					end
				end
				local coords = GetRelativeValue(o, "coords");
				if coords then
					if not inst.coords then
						inst.coords = { unpack(coords) };
					else
						for i,coord in ipairs(coords) do
							tinsert(inst.coords, coord);
						end
					end
				end
			end
		end
	end
	local count = #sources;
	if count == 0 then return nil; end
	if count == 1 then
		for key,value in pairs(sources[1]) do
			inst[key] = value;
		end
	elseif count > 1 then
		-- Find the most accessible version of the thing.
		app.Sort(sources, app.SortDefaults.Accessibility);
		for key,value in pairs(sources[1]) do
			inst[key] = value;
		end
	end

	-- Determine the type of header to put the thing into.
	if not headerType then headerType = "drop"; end
	header = headers[headerType];
	if not header then
		if headerType == "holiday" then
			header = app.CreateNPC(app.HeaderConstants.HOLIDAYS);
		elseif headerType == "promo" then
			header = {};
			header.text = BATTLE_PET_SOURCE_8;
			header.icon = app.asset("Category_Promo");
		elseif headerType == "pvp" then
			header = {};
			header.text = PVP;
			header.icon = app.asset("Category_PvP");
		elseif headerType == "event" then
			header = {};
			header.text = BATTLE_PET_SOURCE_7;
			header.icon = app.asset("Category_Event");
		elseif headerType == "drop" then
			header = {};
			header.text = BATTLE_PET_SOURCE_1;
			header.icon = app.asset("Category_WorldDrops");
		elseif headerType == "crafted" then
			header = {};
			header.text = LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM;
			header.icon = app.asset("Category_Crafting");
		elseif type(headerType) == "number" then
			header = app.CreateNPC(headerType);
		else
			print("Unhandled Header Type", headerType);
		end
		if not headers[headerType] then
			headers[headerType] = header;
			tinsert(self.g, header);
			header.parent = self;
			header.g = {};
		end
	end
	inst.parent = header;
	inst.progress = nil;
	inst.total = nil;
	inst.g = nil;
	MergeObject(header.g, inst);
	return inst;
end
function app:GetWindow(suffix, settings)
	local window = app.Windows[suffix];
	if not window and settings then
		-- Create the window instance.
		window = CreateFrame("FRAME", nil, settings.parent or UIParent, BackdropTemplateMixin and "BackdropTemplate");
		app.Windows[suffix] = window;
		window.Suffix = suffix;
		window.SetData = SetWindowData;
		window.BuildCategory = BuildCategory;
		window.AllowCompleteSound = settings.AllowCompleteSound;
		window:SetScript("OnMouseDown", StartMovingOrSizing);
		window:SetScript("OnMouseUp", StopMovingOrSizing);
		window:SetScript("OnHide", StopMovingOrSizing);
		window:SetBackdrop(backdrop);
		window:SetClampedToScreen(true);
		window:SetToplevel(true);
		window:EnableMouse(true);
		window:SetMovable(true);
		window:SetResizable(true);
		if window.SetResizeBounds then
			window:SetResizeBounds(96, 32);
		else
			window:SetMinResize(96, 32);
		end
		window:SetSize(300, 300);
		window:Hide();

		if ATTClassicSettings then
			if suffix == "Prime" then
				window:SetScale(app.Settings:GetTooltipSetting("MainListScale"));
			else
				window:SetScale(app.Settings:GetTooltipSetting("MiniListScale"));
			end
		end

		-- Whether or not to debug things
		local debugging = settings.Debugging;--app.Debugging and window.Suffix == "Prime";

		-- Load / Save, which allows windows to keep track of key pieces of information.
		window.ClearSettings = ClearSettingsForWindow;
		if not settings.IgnoreSettings then
			local defaults = {};
			BuildSettingsForWindow(window, defaults);
			if settings.Defaults then
				for key,value in pairs(settings.Defaults) do
					defaults[key] = value;
				end
			end
			window.Load = function(self)
				local windowSettings = self.Settings;
				if not windowSettings then
					return;
				end
				setmetatable(windowSettings, { __index = defaults });
				if settings.OnLoad then
					settings.OnLoad(self, windowSettings);
				end
				ApplySettingsForWindow(self, windowSettings);
			end
			window.RecordSettings = function(self)
				local windowSettings = self.Settings;
				if windowSettings then
					BuildSettingsForWindow(self, windowSettings);
				end
				return windowSettings;
			end
			window.Save = function(self)
				local windowSettings = self:RecordSettings();
				if windowSettings and settings.OnSave then
					settings.OnSave(self, windowSettings);
				end
			end
		else
			local doNothing = function()
				-- Do nothing
			end;
			window.Load = settings.OnLoad or doNothing;
			window.RecordSettings = doNothing;
			window.Save = settings.OnSave or doNothing;
		end



		-- Visible, which overrides the default functions and gives the addon the ability to recieve information about it.
		local visible, oldShow, oldHide = false, window.Show, window.Hide;
		window.Show = function(self)
			if not visible then
				visible = true;
				oldShow(self);
				if not self.data then
					self:Rebuild();
				else
					self:Update();
				end
				if settings.OnShow then
					settings.OnShow(self);
				end
				self:RecordSettings();
			end
		end
		window.Hide = function(self)
			if visible then
				visible = false;
				oldHide(self);
				if settings.OnHide then
					settings.OnHide(self);
				end
				self:RecordSettings();
			end
		end
		window.SetVisible = SetWindowVisible;
		window.Toggle = ToggleWindow;

		-- Phase 1: Rebuild, which prepares the data for row data generation (first pass filters checking)
		-- NOTE: You can return true from the rebuild function to call the default on your new group data.
		window.DefaultRebuild = function(self)
			BuildGroups(self.data);
		end
		local onRebuild = settings.OnRebuild;
		if onRebuild then
			if debugging then
				window.ForceRebuild = function(self)
					print("ForceRebuild: " .. suffix);
					local lastUpdate = GetTimePreciseSec();
					local response = onRebuild(self);
					if self.data then
						if response then self:DefaultRebuild(); end
						print("ForceRebuild (DATA): " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
						self:ForceUpdate(true);
					else
						print("ForceRebuild (NO DATA): " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
					end
				end
				window.Rebuild = function(self)
					print("Rebuild: " .. suffix);
					local lastUpdate = GetTimePreciseSec();
					local response = onRebuild(self);
					if self.data then
						if response then self:DefaultRebuild(); end
						print("Rebuild (DATA): " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
						self:Update(true);
					else
						print("Rebuild (NO DATA): " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
					end
				end
			else
				window.ForceRebuild = function(self)
					local response = onRebuild(self);
					if self.data then
						if response then self:DefaultRebuild(); end
						self:ForceUpdate(true);
					end
				end
				window.Rebuild = function(self)
					local response = onRebuild(self);
					if self.data then
						if response then self:DefaultRebuild(); end
						self:Update(true);
					end
				end
			end
		else
			if debugging then
				window.ForceRebuild = function(self)
					if self.data then
						print("ForceRebuild: " .. suffix);
						local lastUpdate = GetTimePreciseSec();
						self:DefaultRebuild();
						print("ForceRebuild: " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
						self:ForceUpdate(true);
					end
				end
				window.Rebuild = function(self)
					if self.data then
						print("Rebuild: " .. suffix);
						local lastUpdate = GetTimePreciseSec();
						self:DefaultRebuild();
						print("Rebuild: " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
						self:Update(true);
					end
				end
			else
				window.ForceRebuild = function(self)
					if self.data then
						self:DefaultRebuild();
						self:ForceUpdate(true);
					end
				end
				window.Rebuild = function(self)
					if self.data then
						self:DefaultRebuild();
						self:Update(true);
					end
				end
			end
		end

		-- Phase 2: Update, which takes the prepared data and revalidates it.
		local OnUpdate = settings.OnUpdate or UpdateWindow;
		window.DefaultUpdate = UpdateWindow;
		if settings.Silent then
			if debugging then
				window.ForceUpdate = function(self, force, trigger)
					print("ForceUpdate: " .. suffix, force, trigger);
					local lastUpdate = GetTimePreciseSec();
					local result = OnUpdate(self, force, trigger);
					print("ForceUpdate: " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
					self:Refresh();
					return result;
				end
				window.Update = function(self, force, trigger)
					if self:IsShown() then
						print("UpdateWindow: " .. suffix, force, trigger);
						local lastUpdate = GetTimePreciseSec();
						local result = OnUpdate(self, force, trigger);
						print("UpdateWindow: " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
						self:Refresh();
						return result;
					else
						self.forceFullDataRefresh = self.forceFullDataRefresh or force or trigger;
					end
				end
			else
				window.ForceUpdate = function(self, force, trigger)
					local result = OnUpdate(self, force, trigger);
					self:Refresh();
					return result;
				end
				window.Update = function(self, force, trigger)
					if self:IsShown() then
						local result = OnUpdate(self, force, trigger);
						self:Refresh();
						return result;
					else
						self.forceFullDataRefresh = self.forceFullDataRefresh or force or trigger;
					end
				end
			end
		elseif debugging then
			window.ForceUpdate = function(self, force, trigger)
				print("ForceUpdate: " .. suffix, force, trigger);
				local lastUpdate = GetTimePreciseSec();
				local result = OnUpdate(self, force, trigger);
				print("ForceUpdate: " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
				self:Refresh();
				return result;
			end
			window.Update = function(self, force, trigger)
				print("UpdateWindow: " .. suffix, force, trigger);
				local lastUpdate = GetTimePreciseSec();
				local result = OnUpdate(self, force, trigger);
				print("UpdateWindow: " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
				self:Refresh();
				return result;
			end
		else
			window.ForceUpdate = function(self, force, trigger)
				local result = OnUpdate(self, force, trigger);
				self:Refresh();
				return result;
			end
			window.Update = function(self, force, trigger)
				local result = OnUpdate(self, force, trigger);
				self:Refresh();
				return result;
			end
		end

		-- Phase 3: Refresh, which simply refreshes the rows as they are with the row data.
		local defaultOnRefresh = UpdateVisibleRowData;
		local onRefresh = settings.OnRefresh;
		if onRefresh then
			if debugging then
				window.Refresh = function(self)
					print("Refresh: " .. suffix);
					local lastUpdate = GetTimePreciseSec();
					if onRefresh(self) then defaultOnRefresh(self); end
					print("Refresh: " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
				end
			else
				window.Refresh = function(self)
					if onRefresh(self) then defaultOnRefresh(self); end
				end
			end
		else
			if debugging then
				window.Refresh = function(self)
					print("Refresh: " .. suffix);
					local lastUpdate = GetTimePreciseSec();
					defaultOnRefresh(self);
					print("Refresh: " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
				end
			else
				window.Refresh = defaultOnRefresh;
			end
		end

		-- Phase 4: Redraw, which only updates the rows that already have row data visually.
		window.Redraw = function(self)
			if self:IsShown() then
				RedrawVisibleRowData(self);
			end
		end

		local delays = {};
		window.DelayedCall = function(self, method, delay, force)
			delays[method] = delay or 60;
			window:StartATTCoroutine("DelayedCall::" .. method, function()
				while delays[method] > 0 do
					coroutine.yield();
					delays[method] = delays[method] - 1;
				end
				while InCombatLockdown() do
					coroutine.yield();
				end
				window[method](window, force);
			end);
		end
		window.DelayedRebuild = function(self)
			self:DelayedCall("Rebuild", 1);
		end
		window.DelayedRefresh = function(self)
			self:DelayedCall("Refresh", 5);
		end
		window.DelayedUpdate = function(self, force)
			self:DelayedCall("Update", 60, force);
		end

		-- The Row Container. This contains all of the row frames.
		local container = CreateFrame("FRAME", nil, window);
		container:SetPoint("TOPLEFT", window, "TOPLEFT", 2, -6);
		container:SetPoint("BOTTOM", window, "BOTTOM", 0, 6);
		window.Container = container;
		UpdateWindowColor(window, suffix);
		container.rows = {};
		container:Show();

		local topright = window:CreateTexture(nil, "OVERLAY")
		topright:SetTexture(251963) -- Interface\\PaperDollInfoFrame\\UI-GearManager-Border
		topright:SetPoint("TOPRIGHT", window, "TOPRIGHT", -2, -2);
		topright:SetTexCoord(0.7, 0.745, 0.04, 0.4)
		topright:SetSize(20, 20);
		window.TopRight = topright;

		-- The Close Button. It's assigned as a local variable so you can change how it behaves.
		local closeButton = CreateFrame("Button", nil, window, "UIPanelCloseButton");
		closeButton:SetPoint("TOPRIGHT", window, "TOPRIGHT", 0, -1);
		closeButton:SetScript("OnClick", function() window:Toggle(); end);
		closeButton:SetSize(24, 24);
		window.CloseButton = closeButton;

		-- The Scroll Bar.
		window.CurrentIndex = 0;
		local scrollbar = CreateFrame("Slider", nil, window, "UIPanelScrollBarTemplate");
		container:SetPoint("RIGHT", scrollbar, "LEFT", -2, 0);
		scrollbar:SetPoint("TOP", window, "TOP", 0, -40);
		scrollbar:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", -4, 36);
		scrollbar:SetScript("OnValueChanged", function(self, value)
			if window.CurrentIndex ~= value then
				window.CurrentIndex = value;
				window:Refresh();
			end
		end);
		scrollbar.back = scrollbar:CreateTexture(nil, "BACKGROUND");
		scrollbar.back:SetColorTexture(0.1,0.1,0.1,1)
		scrollbar.back:SetAllPoints(scrollbar);
		scrollbar:SetMinMaxValues(1, 1);
		scrollbar:SetValueStep(1);
		scrollbar:SetValue(1);
		scrollbar:SetObeyStepOnDrag(true);
		scrollbar:SetWidth(16);
		scrollbar:EnableMouseWheel(true);
		window:SetScript("OnMouseWheel", function(self, delta)
			scrollbar:SetValue(window.CurrentIndex - delta);
		end);
		window.SetMinMaxValues = function(self, displayedValue, totalValue)
			scrollbar:SetMinMaxValues(1, math.max(1, totalValue - displayedValue));
		end

		-- The Corner Grip. (this isn't actually used, but it helps indicate to players that they can do something)
		local grip = window:CreateTexture(nil, "ARTWORK");
		grip:SetTexture(app.asset("grip"));
		grip:SetSize(16, 16);
		grip:SetTexCoord(0,1,0,1);
		grip:SetPoint("BOTTOMRIGHT", -5, 5);
		window:EnableMouseWheel(true);
		window.ScrollBar = scrollbar;

		-- Setup the Event Handlers
		local handlers = {};
		window:SetScript("OnEvent", function(self, e, ...)
			if debugging then print(e, ...); end
			local handler = handlers[e];
			if handler then
				handler(self, ...);
			else
				self:Update();
			end
		end);
		if not settings.IgnoreQuestUpdates then
			local delayedRefresh = function(self)
				self:DelayedRefresh();
			end;
			handlers.BAG_UPDATE_DELAYED = delayedRefresh;
			handlers.QUEST_WATCH_UPDATE = delayedRefresh;
			handlers.QUEST_ITEM_UPDATE = delayedRefresh;
			window:RegisterEvent("QUEST_WATCH_UPDATE");
			window:RegisterEvent("QUEST_ITEM_UPDATE");
			window:RegisterEvent("BAG_UPDATE_DELAYED");
			local delayedUpdateWithTrigger = function(self)
				self:Redraw();
				self:DelayedUpdate(true);
			end;
			handlers.QUEST_ACCEPTED = delayedUpdateWithTrigger;
			handlers.QUEST_REMOVED = delayedUpdateWithTrigger;
			window:RegisterEvent("QUEST_ACCEPTED");
			window:RegisterEvent("QUEST_REMOVED");
			local delayedUpdate = function(self)
				self:DelayedUpdate();
			end;
			handlers.QUEST_TURNED_IN = delayedUpdate;
			handlers.QUEST_LOG_UPDATE = delayedUpdate;
			window:RegisterEvent("QUEST_TURNED_IN");
			window:RegisterEvent("QUEST_LOG_UPDATE");
		end
		if settings.OnInit then
			settings.OnInit(window, handlers);
		end
		LoadSettingsForWindow(window);
	end
	return window;
end
function app:BuildFlatSearchFilteredResponse(groups, filter, t)
	if groups then
		for i,group in ipairs(groups) do
			if filter(group) then
				tinsert(t, CloneReference(group));
			elseif group.g then
				app:BuildFlatSearchFilteredResponse(group.g, filter, t);
			end
		end
	end
end
function app:BuildFlatSearchResponse(groups, field, value, t)
	if groups then
		for i,group in ipairs(groups) do
			local v = group[field];
			if v and (v == value or (field == "requireSkill" and app.SpellIDToSkillID[app.SpecializationSpellIDs[v] or 0] == value)) then
				tinsert(t, CloneReference(group));
			elseif group.g then
				app:BuildFlatSearchResponse(group.g, field, value, t);
			end
		end
	end
end
function app:BuildFlatSearchResponseForField(groups, field, t)
	if groups then
		for i,group in ipairs(groups) do
			if group[field] then
				tinsert(t, CloneReference(group));
			elseif group.g then
				app:BuildFlatSearchResponseForField(group.g, field, t);
			end
		end
	end
end
function app:BuildSearchFilteredResponse(groups, filter)
	if groups then
		local t;
		for i,group in ipairs(groups) do
			local response = app:BuildSearchFilteredResponse(group.g, filter);
			if response then
				if not t then t = {}; end
				tinsert(t, setmetatable({g=response}, { __index = group }));
			elseif filter(group) then
				if not t then t = {}; end
				tinsert(t, CloneReference(group));
			end
		end
		return t;
	end
end
function app:BuildSearchResponse(groups, field, value)
	if groups then
		local t;
		for i,group in ipairs(groups) do
			local response = app:BuildSearchResponse(group.g, field, value);
			if response then
				if not t then t = {}; end
				tinsert(t, setmetatable({g=response}, { __index = group }));
			else
				local v = group[field];
				if v and (v == value or (field == "requireSkill" and app.SpellIDToSkillID[app.SpecializationSpellIDs[v] or 0] == value)) then
					if not t then t = {}; end
					tinsert(t, CloneReference(group));
				end
			end
		end
		return t;
	end
end
function app:BuildSearchResponseForField(groups, field)
	if groups then
		local t;
		for i,group in ipairs(groups) do
			local response = app:BuildSearchResponseForField(group.g, field);
			if response then
				if not t then t = {}; end
				tinsert(t, setmetatable({g=response}, { __index = group }));
			elseif group[field] then
				if not t then t = {}; end
				tinsert(t, CloneReference(group));
			end
		end
		return t;
	end
end

-- Dynamic Popouts for Quest Chains and other Groups
local function OnInitForPopout(self, group)
	if group.questID or group.sourceQuests then
		local mainQuest = CloneReference(group);
		if group.parent then mainQuest.sourceParent = group.parent; end
		if mainQuest.sym then
			mainQuest.collectible = true;
			mainQuest.visible = true;
			mainQuest.progress = 0;
			mainQuest.total = 0;
			if not mainQuest.g then
				local resolved = ResolveSymbolicLink(group);
				if resolved then
					for i=#resolved,1,-1 do
						resolved[i] = CreateObject(resolved[i]);
					end
					mainQuest.g = resolved;
				end
			else
				local resolved = ResolveSymbolicLink(group);
				if resolved then
					MergeObjects(mainQuest.g, resolved);
				end
			end
		end

		if questID then mainQuest.collectible = true; end
		local g = { mainQuest };

		-- Check to see if Source Quests are listed elsewhere.
		if questID and not group.sourceQuests then
			local searchResults = SearchForField("questID", questID);
			if #searchResults > 1 then
				for i=1,#searchResults,1 do
					local searchResult = searchResults[i];
					if searchResult.questID == questID and searchResult.sourceQuests then
						searchResult = CloneReference(searchResult);
						searchResult.collectible = true;
						searchResult.g = g;
						mainQuest = searchResult;
						g = { mainQuest };
						break;
					end
				end
			end
		end

		-- Show Quest Prereqs
		if mainQuest.sourceQuests then
			local breakafter = 0;
			local sourceQuests, sourceQuest, subSourceQuests, prereqs = mainQuest.sourceQuests;
			while sourceQuests and #sourceQuests > 0 do
				subSourceQuests = {}; prereqs = {};
				for i,sourceQuestID in ipairs(sourceQuests) do
					sourceQuest = sourceQuestID < 1 and SearchForField("creatureID", math.abs(sourceQuestID)) or SearchForField("questID", sourceQuestID);
					if #sourceQuest > 0 then
						local found = nil;
						for i=1,#sourceQuest,1 do
							-- Only care about the first search result.
							local sq = sourceQuest[i];
							if sq and sq.questID and not sq.objectiveID then
								questID = sq.questID;
								if sq.parent and sq.parent.questID == questID then
									sq = sq.parent;
								end
								if app.GroupFilter(sq) then
									if app.RecursiveClassAndRaceFilter(sq) and questID == sourceQuestID then
										if not found or (not found.sourceQuests and sq.sourceQuests) then
											found = sq;
										end
									end
								end
							end
						end
						if found then
							sourceQuest = CloneReference(found);
							sourceQuest.collectible = true;
							sourceQuest.visible = true;
							sourceQuest.hideText = true;
							if found.sourceQuests and #found.sourceQuests > 0 and (not found.saved or app.CollectedItemVisibilityFilter(sourceQuest)) then
								-- Mark the sub source quest IDs as marked (as the same sub quest might point to 1 source quest ID)
								for j, subsourceQuests in ipairs(found.sourceQuests) do
									subSourceQuests[subsourceQuests] = true;
								end
							end
						else
							sourceQuest = nil;
						end
					elseif sourceQuestID > 0 then
						-- Create a Quest Object.
						sourceQuest = app.CreateQuest(sourceQuestID, { ['visible'] = true, ['collectible'] = true, ['hideText'] = true });
					else
						-- Create a NPC Object.
						sourceQuest = app.CreateNPC(math.abs(sourceQuestID), { ['visible'] = true, ['hideText'] = true });
					end

					-- If the quest was valid, attach it.
					if sourceQuest then tinsert(prereqs, sourceQuest); end
				end

				-- Convert the subSourceQuests table into an array
				sourceQuests = {};
				if #prereqs > 0 then
					for sourceQuestID,i in pairs(subSourceQuests) do
						tinsert(sourceQuests, tonumber(sourceQuestID));
					end
					tinsert(prereqs, {
						["text"] = "Upon Completion",
						["description"] = "The above quests need to be completed before being able to complete the quest(s) listed below.",
						["icon"] = "Interface\\Icons\\Spell_Holy_MagicalSentry.blp",
						["visible"] = true,
						["expanded"] = true,
						["hideText"] = true,
						["g"] = g,
					});
					g = prereqs;
					breakafter = breakafter + 1;
					if breakafter >= 100 then
						app.print("Likely just broke out of an infinite source quest loop. Please report this to the ATT Discord!");
						break;
					end
				end
			end

			-- Clean up the recursive hierarchy. (this removed duplicates)
			sourceQuests = {};
			prereqs = g;
			local orig = g;
			while prereqs and #prereqs > 0 do
				for i=#prereqs,1,-1 do
					local o = prereqs[i];
					if o.key then
						sourceQuest = o.key .. o[o.key];
						if sourceQuests[sourceQuest] then
							-- Already exists in the hierarchy. Uh oh.
							table.remove(prereqs, i);
						else
							sourceQuests[sourceQuest] = true;
						end
					end
				end

				if #prereqs > 1 then
					prereqs = prereqs[#prereqs];
					if prereqs then prereqs = prereqs.g; end
					orig = prereqs;
				else
					prereqs = prereqs[#prereqs];
					if prereqs then prereqs = prereqs.g; end
					orig[#orig].g = prereqs;
				end
			end

			-- Clean up standalone "Upon Completion" headers.
			prereqs = g;
			repeat
				local n = #prereqs;
				local lastprereq = prereqs[n];
				if lastprereq.text == "Upon Completion" and n > 1 then
					table.remove(prereqs, n);
					local g = prereqs[n-1].g;
					if not g then
						g = {};
						prereqs[n-1].g = g;
					end
					if lastprereq.g then
						for i,data in ipairs(lastprereq.g) do
							table.insert(g, data);
						end
					end
					prereqs = g;
				else
					prereqs = lastprereq.g;
				end
			until not prereqs or #prereqs < 1;
		end
		self.data = {
			text = "Quest Chain Requirements",
			icon = "Interface\\Icons\\Spell_Holy_MagicalSentry.blp",
			description = "The following quests need to be completed before being able to complete the final quest.",
			hideText = true,
			g = g,
		};
	elseif group.sym then
		self.data = CloneReference(group);
		self.data.collectible = true;
		self.data.visible = true;
		self.data.progress = 0;
		self.data.total = 0;
		if not self.data.g then
			local resolved = ResolveSymbolicLink(group);
			if resolved then
				for i=#resolved,1,-1 do
					resolved[i] = CreateObject(resolved[i]);
				end
				self.data.g = resolved;
			end
		else
			local resolved = ResolveSymbolicLink(group);
			if resolved then
				MergeObjects(self.data.g, resolved);
			end
		end
	elseif group.g then
		-- This is already a container with accurate numbers.
		self.data = group;
	else
		-- This is a standalone item
		group.visible = true;
		if not group.g and (group.itemID or group.currencyID) then
			local cmd = group.link or group.key .. ":" .. group[group.key];
			group = GetCachedSearchResults(cmd, SearchForLink, cmd);
		end
		self.data = group;
	end

	-- Clone the data and then insert it into the Raw Data table.
	self.data = CloneReference(self.data);
	self.data.hideText = true;
	self.data.visible = true;
	self.data.indent = 0;
	self.data.total = 0;
	self.data.progress = 0;

	-- If this is an achievement, build the criteria within it if possible.
	local achievementID = group.achievementID;
	if achievementID then
		local searchResults = SearchForField("achievementID", achievementID);
		if #searchResults > 0 then
			for i=1,#searchResults,1 do
				local searchResult = searchResults[i];
				if searchResult.achievementID == achievementID and searchResult.criteriaID then
					if not self.data.g then self.data.g = {}; end
					MergeObject(self.data.g, CloneReference(searchResult));
				end
			end
		end
	end

	--[[
	local currencyID = group.currencyID;
	if currencyID and not self.data.usedtobuy then
		local searchResults = SearchForField("currencyIDAsCost", currencyID);
		if #searchResults > 0 then
			local usedtobuy = {};
			usedtobuy.g = {};
			usedtobuy.text = "Used to Buy";
			usedtobuy.icon = "Interface\\Icons\\INV_Misc_Coin_01";
			usedtobuy.description = "This tooltip dynamically calculates the total number you need based on what is still visible below this header.";
			usedtobuy.OnTooltip = function(t)
				local total = 0;
				for _,o in ipairs(t.g) do
					if o.visible then
						if o.cost then
							for k,v in ipairs(o.cost) do
								if v[1] == "c" and v[2] == currencyID then
									total = total + (v[3] or 1);
								end
							end
						end
						if o.providers then
							for k,v in ipairs(o.providers) do
								if v[1] == "c" and v[2] == currencyID then
									total = total + (v[3] or 1);
								end
							end
						end
					end
				end
				GameTooltip:AddDoubleLine("Total Needed", total);
			end
			MergeObjects(usedtobuy.g, searchResults);
			if not self.data.g then self.data.g = {}; end
			tinsert(self.data.g, usedtobuy);
			self.data.usedtobuy = usedtobuy;
		end
	end

	local itemID = group.itemID;
	if itemID and not self.data.tradedin then
		local searchResults = SearchForField("itemIDAsCost", itemID);
		if #searchResults > 0 then
			local tradedin = {};
			tradedin.g = {};
			tradedin.text = "Used For";
			tradedin.icon = "Interface\\Icons\\INV_Misc_Coin_01";
			tradedin.description = "This tooltip dynamically calculates the total number you need based on what is still visible below this header.";
			tradedin.OnTooltip = function(t)
				local total = 0;
				for _,o in ipairs(t.g) do
					if o.visible then
						if o.cost then
							for k,v in ipairs(o.cost) do
								if v[1] == "i" and v[2] == itemID then
									total = total + (v[3] or 1);
								end
							end
						end
						if o.providers then
							for k,v in ipairs(o.providers) do
								if v[1] == "i" and v[2] == itemID then
									total = total + (v[3] or 1);
								end
							end
						end
					end
				end
				GameTooltip:AddDoubleLine("Total Needed", total);
			end
			MergeObjects(tradedin.g, searchResults);
			if not self.data.g then self.data.g = {}; end
			tinsert(self.data.g, tradedin);
			self.data.tradedin = tradedin;
		end
	end
	]]--

	if self.data.key then
		if group.cost and type(group.cost) == "table" then
			local costGroup = {
				["text"] = "Cost",
				["description"] = "The following contains all of the relevant items or currencies needed to acquire this.",
				["icon"] = "Interface\\Icons\\INV_Misc_Coin_02",
				["OnUpdate"] = app.AlwaysShowUpdate,
				["g"] = {},
			};
			local costItem;
			for i,c in ipairs(group.cost) do
				costItem = nil;
				if c[1] == "c" then
					costItem = app.CreateCurrencyClass(c[2]);
				elseif c[1] == "i" then
					costItem = app.CreateItem(c[2]);
				end
				if costItem then
					costItem = CloneReference(costItem);
					costItem.visible = true;
					costItem.OnUpdate = app.AlwaysShowUpdate;
					MergeObject(costGroup.g, costItem);
				end
			end
			if #costGroup.g > 0 then
				if not self.data.g then self.data.g = {}; end
				MergeObject(self.data.g, costGroup, 1);
			end
		end

		if group.providers or group.qgs or group.crs then
			local sourceGroup = {
				["text"] = "Sources",
				["description"] = "The following contains all of the relevant sources.",
				["icon"] = "Interface\\Icons\\INV_Misc_Coin_02",
				["OnUpdate"] = app.AlwaysShowUpdate,
				["g"] = {},
			};
			local sourceItem;
			if group.providers then
				for _,p in ipairs(group.providers) do
					sourceItem = nil;
					if p[1] == "n" then
						sourceItem = app.CreateNPC(p[2]);
					elseif p[1] == "o" then
						sourceItem = app.CreateObject(p[2]);
					elseif p[1] == "i" then
						sourceItem = app.CreateItem(p[2]);
					end
					if sourceItem then
						sourceItem.visible = true;
						sourceItem.OnUpdate = app.AlwaysShowUpdate;
						MergeObject(sourceGroup.g, sourceItem);
					end
				end
			end
			if group.crs then
				for _,cr in ipairs(group.crs) do
					sourceItem = app.CreateNPC(cr);
					sourceItem.visible = true;
					sourceItem.OnUpdate = app.AlwaysShowUpdate;
					MergeObject(sourceGroup.g, sourceItem);
				end
			end
			if group.qgs then
				for _,qg in ipairs(group.qgs) do
					sourceItem = app.CreateNPC(qg);
					sourceItem.visible = true;
					sourceItem.OnUpdate = app.AlwaysShowUpdate;
					MergeObject(sourceGroup.g, sourceItem);
				end
			end
			if #sourceGroup.g > 0 then
				if not self.data.g then self.data.g = {}; end
				MergeObject(self.data.g, sourceGroup, 1);
			end
		end
	end

	BuildGroups(self.data);
	UpdateGroups(self.data, self.data.g);
end
function app:CreateMiniListForGroup(group)
	-- Is this an achievement criteria or lacking some achievement information?
	local achievementID = group.achievementID;
	if achievementID and (group.criteriaID or not group.g) then
		local searchResults = SearchForField("achievementID", achievementID);
		if #searchResults > 0 then
			local bestResult;
			for i=1,#searchResults,1 do
				local searchResult = searchResults[i];
				if searchResult.achievementID == achievementID and not searchResult.criteriaID then
					if not bestResult or searchResult.g then
						bestResult = searchResult;
					end
				end
			end
			if bestResult then group = bestResult; end
		end
	end

	-- Is this a quest object or objective?
	local questID, parent = group.questID, group.parent;
	if questID and parent and parent.questID == questID then
		group = parent;
	end

	-- Pop Out Functionality! :O
	local popout = app:GetWindow(BuildSourceTextForDynamicPath(group), {
		Silent = true,
		AllowCompleteSound = true,
		--Debugging = true,
		OnInit = function(self)
			OnInitForPopout(self, (group.OnPopout and group:OnPopout()) or group);
		end,
		OnLoad = function(self, settings)
			settings.dynamic = true;
			settings.sourcePath = self.Suffix;

			-- This might be something we can rebuild
			local key = group.key;
			if key then
				settings.key = key;
				settings.id = group[key];
			end
		end,
		OnSave = function(self, settings)
			if not settings.visible then
				self:ClearSettings();
			end
		end,
	});
	if IsAltKeyDown() then
		AddTomTomWaypoint(popout.data, false);
	else
		if not popout.data.expanded then
			ExpandGroupsRecursively(popout.data, true, true);
		end
		popout:SetVisible(true);
	end
	return popout;
end
local function SearchForSourcePath(g, hashes, level, count)
	if g then
		local hash = hashes[level];
		if hash then
			for i,o in ipairs(g) do
				if (o.hash or o.name or o.text) == hash then
					if level == count then return o; end
					return SearchForSourcePath(o.g, hashes, level + 1, count);
				end
			end
		end
	end
end
function app:CreateMiniListFromSource(key, id, sourcePath)
	-- If we provided the original source path, then we can find the exact element to popout.
	if sourcePath then
		local hashes = { strsplit(">", sourcePath) };
		local ref = SearchForSourcePath(app:GetDataCache().g, hashes, 2, #hashes);
		if ref then
			app:CreateMiniListForGroup(ref);
			return;
		end
	end

	-- Without this it can't be recovered. :(
	if key and id then
		if sourcePath then
			-- Try to find an exact match.
			local searchResults = SearchForField(key, id);
			if #searchResults > 0 then
				for i,ref in ipairs(searchResults) do
					if BuildSourceTextForDynamicPath(ref) == sourcePath then
						app:CreateMiniListForGroup(ref);
						return;
					end
				end
			end
		end

		-- Search for the Link in the database
		local cmd = key .. ":" .. id;
		local ref = GetCachedSearchResults(cmd, SearchForLink, cmd);
		if ref then
			app:CreateMiniListForGroup(ref);
			return;
		end

		-- Search for the field/value pair everywhere in the DB.
		local t = {};
		app:BuildFlatSearchResponse(app:GetDataCache().g, key, id, t);
		if t and #t > 0 then
			local ref = #t == 1 and t[1] or CreateObject({ hash = key .. id, key = key, [key] = id, g = t });
			if ref then
				app:CreateMiniListForGroup(ref);
				return;
			end
		end
	end
end

-- Create the Primary Collection Window (this allows you to save the size and location)
app:GetWindow("Prime", {
	parent = UIParent,
	Silent = true,
	AllowCompleteSound = true,
	Defaults = {
		["y"] = 20,
		["x"] = 0,
		["scale"] = 1.2,
		["width"] = 360,
		["height"] = 600,
		["visible"] = false,
		["point"] = "CENTER",
		["relativePoint"] = "CENTER",
	},
	OnInit = function(self)
		app.ToggleMainList = function()
			self:Toggle();
		end

		SLASH_ATTPRIME1 = "/allthethings";
		SLASH_ATTPRIME2 = "/att";
		SLASH_ATTPRIME3 = "/attc";
		SLASH_ATTPRIME4 = "/things";
		SLASH_ATTPRIME5 = "/attmain";
		SlashCmdList["ATTPRIME"] = function(cmd)
			if cmd and strlen(cmd) > 0 then
				-- Search for the Link in the database
				cmd = string.lower(cmd);
				local group = GetCachedSearchResults(cmd, SearchForLink, cmd);
				if group then app:CreateMiniListForGroup(group); end
			else
				-- Default command
				self:Toggle();
			end
		end

	end,
	OnLoad = function(self, settings)
		if not settings.visible then
			self:ForceRebuild();
		end
	end,
	OnRebuild = function(self)
		-- Prime's data is built elsewhere.
		self.data = app:GetDataCache();
		return false;
	end,
	OnUpdate = function(self, ...)
		self.DefaultUpdate(self, ...);

		-- Write the current character's progress.
		local rootData = self.data;
		app.CurrentCharacter.PrimeData = {
			progress = rootData.progress,
			total = rootData.total,
			modeString = rootData.modeString,
		};
	end
});



local IsSameMap = function(data, results)
	if data.mapID then
		-- Exact same map?
		if data.mapID == results.mapID then
			return true;
		end

		-- Does the result map have an array of associated maps and this map is in there?
		if results.maps and contains(results.maps, data.mapID) then
			return true;
		end
	end
	if data.maps then
		-- Does the old map data contain this map?
		if contains(data.maps, results.mapID) then
			return true;
		end

		-- Does the result map have an array of associated maps and this map is in there?
		if results.maps and containsAny(results.maps, data.maps) then
			return true;
		end
	end
end
local function RefreshLocationCoroutine()
	-- Wait a second, will ya? The position detection is BAD.
	for i=1,30,1 do coroutine.yield(); end

	-- Acquire the new map ID.
	local mapID = app.GetCurrentMapID();
	while not mapID or mapID < 0 do
		coroutine.yield();
		mapID = app.GetCurrentMapID();
	end
	app.CurrentMapID = mapID;
	local window = app:GetWindow("CurrentInstance");
	if window then window:SetMapID(mapID); end
end
local function RefreshLocation()
	app:StartATTCoroutine("RefreshLocation", RefreshLocationCoroutine);
end
local function RebuildMapData(self, mapID)
	local results = SearchForField("mapID", mapID);
	if #results > 0 then
		-- Simplify the returned groups
		local groups = {};
		local header = { mapID = mapID, back = 1, g = groups };
		local achievementsHeader = app.CreateNPC(app.HeaderConstants.ACHIEVEMENTS, { ["g"] = {} });
		table.insert(groups, achievementsHeader);
		local explorationHeader = app.CreateNPC(app.HeaderConstants.EXPLORATION, { ["g"] = {} });
		table.insert(groups, explorationHeader);
		local factionsHeader = app.CreateNPC(app.HeaderConstants.FACTIONS, { ["g"] = {} });
		table.insert(groups, factionsHeader);
		local flightPathsHeader = app.CreateNPC(app.HeaderConstants.FLIGHT_PATHS, { ["g"] = {} });
		table.insert(groups, flightPathsHeader);
		local questsHeader = app.CreateNPC(app.HeaderConstants.QUESTS, { ["g"] = {} });
		table.insert(groups, questsHeader);
		local raresHeader = app.CreateNPC(app.HeaderConstants.RARES, { ["g"] = {} });
		table.insert(groups, raresHeader);
		local vendorsHeader = app.CreateNPC(app.HeaderConstants.VENDORS, { ["g"] = {} });
		table.insert(groups, vendorsHeader);
		local zoneDropsHeader = app.CreateNPC(app.HeaderConstants.ZONE_DROPS, { ["g"] = {} });
		table.insert(groups, zoneDropsHeader);
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
			setmetatable(clone, getmetatable(group));

			if group.key == "mapID" or group.key == "instanceID" then
				header.key = group.key;
				header[group.key] = group[group.key];
				MergeObject({header}, clone);
			elseif group.key == "npcID" then
				if GetRelativeField(group, "headerID", app.HeaderConstants.VENDORS) or GetRelativeField(group, "headerID", -173) then	-- It's a Vendor. (or a timewaking vendor)
					MergeObject(vendorsHeader.g, clone, 1);
				elseif GetRelativeField(group, "headerID", app.HeaderConstants.QUESTS) then	-- It's a Quest.
					MergeObject(questsHeader.g, clone, 1);
				else
					MergeObject(groups, clone);
				end
			elseif group.key == "criteriaID" then
				clone.achievementID = group.achievementID;
				MergeObject(achievementsHeader.g, clone);
			elseif group.key == "achievementID" then
				MergeObject(achievementsHeader.g, clone);
			elseif group.key == "questID" then
				MergeObject(questsHeader.g, clone, 1);
			elseif group.key == "factionID" then
				MergeObject(factionsHeader.g, clone);
			elseif group.key == "explorationID" then
				MergeObject(explorationHeader.g, clone);
			elseif group.key == "flightPathID" then
				MergeObject(flightPathsHeader.g, clone);
			elseif group.key == "itemID" then
				if GetRelativeField(group, "headerID", app.HeaderConstants.ZONE_DROPS) then
					MergeObject(zoneDropsHeader.g, clone);
				else
					local requireSkill = GetRelativeValue(group, "requireSkill");
					if requireSkill then
						clone = app.CreateProfession(requireSkill, { g = { clone } });
						MergeObject(groups, clone);
					else
						MergeObject(groups, clone);
					end
				end
			elseif group.key == "headerID" then
				if not GetRelativeValue(group, "instanceID") then
					MergeObject(groups, clone);
				end
			else
				MergeObject(groups, clone);
			end
		end

		-- Swap out the map data for the header.
		results = (header.key == "instanceID" and app.CreateInstance or app.CreateMap)(header.mapID, header);

		local oldData = self.data;
		if oldData then
			if IsSameMap(oldData, results) then
				ReapplyExpand(oldData.g, results.g);
			else
				ExpandGroupsRecursively(results, true);
			end
			results.e = nil;
			results.u = nil;
		else
			ExpandGroupsRecursively(results, true);
		end
		results.mapID = mapID;
		results.visible = true;
		results.expanded = true;
		results.back = 1;
		results.indent = 0;
		setmetatable(results,
			results.classID and app.BaseCharacterClass
			or app.BaseMap);

		-- Move all "isRaid" entries to the top of the list.
		if results.g then
			local bottom = {};
			local top = {};
			for i=#results.g,1,-1 do
				local o = results.g[i];
				if o.key == "factionID" then
					table.remove(results.g, i);
					MergeObject(factionsHeader.g, o, 1);
				elseif o.key == "flightPathID" then
					table.remove(results.g, i);
					MergeObject(flightPathsHeader.g, o, 1);
				elseif o.key == "questID" then
					table.remove(results.g, i);
					MergeObject(questsHeader.g, o, 1);
				end
			end
			for i=#results.g,1,-1 do
				local o = results.g[i];
				if o.isRaid then
					table.remove(results.g, i);
					table.insert(top, o);
				elseif o.g and #o.g < 1 and o.key == "headerID" then
					table.remove(results.g, i);
				end
			end
			for i,o in ipairs(top) do
				table.insert(results.g, 1, o);
			end
			for i,o in ipairs(bottom) do
				table.insert(results.g, o);
			end
		end

		local difficultyID = (IsInInstance() and select(3, GetInstanceInfo())) or (EJ_GetDifficulty and EJ_GetDifficulty()) or 0;
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

		-- Check to see completion...
		BuildGroups(results);
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
app:GetWindow("CurrentInstance", {
	parent = UIParent,
	Silent = true,
	AllowCompleteSound = true,
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
	OnInit = function(self, handlers)
		SLASH_ATTMINILIST1 = "/attmini";
		SLASH_ATTMINILIST2 = "/attminilist";
		app.ToggleMiniListForCurrentZone = function() self:Toggle(); end;
		SlashCmdList["ATTMINILIST"] = app.ToggleMiniListForCurrentZone;

		local delayedUpdate = function()
			self:DelayedUpdate(true);
		end;
		handlers.QUEST_TURNED_IN = delayedUpdate;
		handlers.QUEST_LOG_UPDATE = delayedUpdate;
		handlers.ZONE_CHANGED = RefreshLocation;
		handlers.ZONE_CHANGED_INDOORS = RefreshLocation;
		handlers.ZONE_CHANGED_NEW_AREA = RefreshLocation;
		self.SetMapID = function(self, mapID)
			if mapID ~= self.displayedMapID then
				self.mapID = mapID;
				self:Rebuild();
			end
		end
	end,
	OnLoad = function(self, settings)
		self:RegisterEvent("ZONE_CHANGED");
		self:RegisterEvent("ZONE_CHANGED_INDOORS");
		self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
		self:SetMapID(settings.mapID or app.CurrentMapID or app.GetCurrentMapID());
		RefreshLocation();
	end,
	OnSave = function(self, settings)
		settings.mapID = self.displayedMapID;
	end,
	OnRebuild = function(self)
		local mapID = self.mapID;
		if mapID then
			if not self.data or mapID ~= self.displayedMapID then
				local results = RebuildMapData(self, mapID);
				if results then
					self.displayedMapID = mapID;
					self.data = results;
				end
			end
		end
	end,
});


-- Uncomment this section if you need to enable Debugger:
--[[
app:GetWindow("Debugger", {
	parent = UIParent,
	Silent = true,
	OnInit = function(self, handlers)
		self.AddObject = function(self, info)
			-- Bubble Up the Maps
			local mapInfo;
			local mapID = app.CurrentMapID;
			if mapID then
				local pos = C_Map_GetPlayerMapPosition(mapID, "player");
				if pos then
					local px, py = pos:GetXY();
					info.coord = { px * 100, py * 100, mapID };
				end
				repeat
					mapInfo = C_Map_GetMapInfo(mapID);
					if mapInfo then
						info = { ["mapID"] = mapInfo.mapID, ["g"] = { info } };
						mapID = mapInfo.parentMapID
					end
				until not mapInfo or not mapID;
			end

			MergeClone(self.data.g, info);
			MergeObject(self.rawData, info);
			self:Update();
		end
		self.data = {
			['text'] = "Session History",
			['icon'] = app.asset("WindowIcon_RaidAssistant"),
			["description"] = "This keeps a visual record of all of the quests, maps, loot, and vendors that you have come into contact with since the session was started.",
			['visible'] = true,
			['expanded'] = true,
			['back'] = 1,
			['options'] = {
				{
					['text'] = "Clear History",
					['icon'] = "Interface\\Icons\\Ability_Rogue_FeignDeath.blp",
					["description"] = "Click this to fully clear this window.\n\nNOTE: If you click this by accident, use the dynamic Restore Buttons that this generates to reapply the data that was cleared.\n\nWARNING: If you reload the UI, the data stored in the Reload Button will be lost forever!",
					['visible'] = true,
					['count'] = 0,
					['OnClick'] = function(row, button)
						local copy = {};
						for i,o in ipairs(self.rawData) do
							tinsert(copy, o);
						end
						if #copy < 1 then
							app.print("There is nothing to clear.");
							return true;
						end
						row.ref.count = row.ref.count + 1;
						tinsert(self.data.options, {
							['text'] = "Restore Button " .. row.ref.count,
							['icon'] = app.asset("Button_Reroll"),
							["description"] = "Click this to restore your cleared data.\n\nNOTE: Each Restore Button houses different data.\n\nWARNING: This data will be lost forever when you reload your UI!",
							['visible'] = true,
							['data'] = copy,
							['OnClick'] = function(row, button)
								for i,info in ipairs(row.ref.data) do
									MergeClone(self.data.g, info);
									MergeObject(self.rawData, info);
								end
								self:Update();
								return true;
							end,
						});
						wipe(self.rawData);
						wipe(self.data.g);
						for i=#self.data.options,1,-1 do
							tinsert(self.data.g, 1, self.data.options[i]);
						end
						self:Update();
						return true;
					end,
				},
			},
			['g'] = {},
		};
		self.rawData = {};

		-- Setup Event Handlers and register for events
		self:SetScript("OnEvent", function(self, e, ...)
			--print(e, ...);
			if e == "ADDON_LOADED" then
				-- Only execute for this addon.
				local addonName = ...;
				if addonName ~= appName then return; end
				self:UnregisterEvent("ADDON_LOADED");
				if not ATTClassicDebugData then
					ATTClassicDebugData = app.GetDataMember("Debugger", {});
					app.SetDataMember("Debugger", nil);
				end
				self.rawData = ATTClassicDebugData;
				self.data.g = CreateObject(self.rawData);
				for i=#self.data.options,1,-1 do
					tinsert(self.data.g, 1, self.data.options[i]);
				end
				self:Update();
			elseif e == "ZONE_CHANGED" or e == "ZONE_CHANGED_NEW_AREA" then
				-- Bubble Up the Maps
				local mapInfo, info;
				local mapID = app.CurrentMapID;
				if mapID then
					repeat
						info = { ["mapID"] = mapID, ["g"] = info and { info } or nil };
						mapInfo = C_Map_GetMapInfo(mapID);
						if mapInfo then
							mapID = mapInfo.parentMapID;
						end
					until not mapInfo or not mapID;

					MergeClone(self.data.g, info);
					MergeObject(self.rawData, info);
					self:Update();
				end
			elseif e == "MERCHANT_SHOW" or e == "MERCHANT_UPDATE" then
				C_Timer.After(0.6, function()
					local guid = UnitGUID("npc");
					local ty, zero, server_id, instance_id, zone_uid, npcID, spawn_uid;
					if guid then ty, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = strsplit("-",guid); end
					if npcID then
						npcID = tonumber(npcID);

						-- Ignore vendor mount...
						if npcID == 62822 then
							return true;
						end

						local numItems = GetMerchantNumItems();
						--print("MERCHANT DETAILS", ty, npcID, numItems);

						local rawGroups = {};
						for i=1,numItems,1 do
							local link = GetMerchantItemLink(i);
							if link then
								local name, texture, cost, quantity, numAvailable, isPurchasable, isUsable, extendedCost = GetMerchantItemInfo(i);
								if extendedCost then
									cost = {};
									local itemCount = GetMerchantItemCostInfo(i);
									for j=1,itemCount,1 do
										local itemTexture, itemValue, itemLink = GetMerchantItemCostItem(i, j);
										if itemLink then
											-- print("  ", itemValue, itemLink, gsub(itemLink, "\124", "\124\124"));
											local m = itemLink:match("currency:(%d+)");
											if m then
												-- Parse as a CURRENCY.
												tinsert(cost, {"c", tonumber(m), itemValue});
											else
												-- Parse as an ITEM.
												tinsert(cost, {"i", tonumber(itemLink:match("item:(%d+)")), itemValue});
											end
										end
									end
								end

								-- Parse as an ITEM LINK.
								table.insert(rawGroups, {["itemID"] = tonumber(link:match("item:(%d+)")), ["cost"] = cost});
							end
						end

						local info = { [(ty == "GameObject") and "objectID" or "npcID"] = npcID };
						info.faction = UnitFactionGroup("npc");
						info.text = UnitName("npc");
						info.g = rawGroups;
						self:AddObject(info);
					end
				end);
			elseif e == "GOSSIP_SHOW" then
				local guid = UnitGUID("npc");
				if guid then
					local type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = strsplit("-",guid);
					if npcID then
						npcID = tonumber(npcID);
						--print("GOSSIP_SHOW", type, npcID);
						if type == "GameObject" then
							info = { ["objectID"] = npcID, ["text"] = UnitName("npc") };
						else
							info = { ["npcID"] = npcID };
							info.name = UnitName("npc");
						end
						info.faction = UnitFactionGroup("npc");
						self:AddObject(info);
					end
				end
			elseif e == "QUEST_DETAIL" then
				local questStartItemID = ...;
				local questID = GetQuestID();
				if questID == 0 then return false; end
				local npc = "questnpc";
				local guid = UnitGUID(npc);
				if not guid then
					npc = "npc";
					guid = UnitGUID(npc);
				end
				local type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid;
				if guid then type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = strsplit("-",guid); end
				-- print("QUEST_DETAIL", questStartItemID, " => Quest #", questID, type, npcID);

				local rawGroups = {};
				for i=1,GetNumQuestRewards(),1 do
					local link = GetQuestItemLink("reward", i);
					if link then table.insert(rawGroups, { ["itemID"] = GetItemInfoInstant(link) }); end
				end
				for i=1,GetNumQuestChoices(),1 do
					local link = GetQuestItemLink("choice", i);
					if link then table.insert(rawGroups, { ["itemID"] = GetItemInfoInstant(link) }); end
				end
				for i=1,GetNumQuestLogRewardSpells(questID),1 do
					local texture, name, isTradeskillSpell, isSpellLearned, hideSpellLearnText, isBoostSpell, garrFollowerID, genericUnlock, spellID = GetQuestLogRewardSpell(i, questID);
					if spellID then
						if isTradeskillSpell then
							table.insert(rawGroups, { ["recipeID"] = spellID, ["name"] = name });
						else
							table.insert(rawGroups, { ["spellID"] = spellID, ["name"] = name });
						end
					end
				end

				local info = { ["questID"] = questID, ["description"] = GetQuestText(), ["objectives"] = GetObjectiveText(), ["g"] = rawGroups };
				if questStartItemID and questStartItemID > 0 then info.itemID = questStartItemID; end
				if npcID then
					npcID = tonumber(npcID);
					if type == "GameObject" then
						info = { ["objectID"] = npcID, ["text"] = UnitName(npc), ["g"] = { info } };
					else
						info.qgs = {npcID};
						info.name = UnitName(npc);
					end
					info.faction = UnitFactionGroup(npc);
				end
				self:AddObject(info);
			elseif e == "CHAT_MSG_LOOT" then
				local msg, player, a, b, c, d, e, f, g, h, i, j, k, l = ...;
				local itemString = string.match(msg, "item[%-?%d:]+");
				if itemString then
					self:AddObject({ ["itemID"] = GetItemInfoInstant(itemString) });
				end
			end
		end);
		self:RegisterEvent("ADDON_LOADED");
		self:RegisterEvent("GOSSIP_SHOW");
		self:RegisterEvent("QUEST_DETAIL");
		self:RegisterEvent("TRADE_SKILL_LIST_UPDATE");
		self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
		self:RegisterEvent("ZONE_CHANGED");
		self:RegisterEvent("MERCHANT_SHOW");
		self:RegisterEvent("MERCHANT_UPDATE");
		self:RegisterEvent("CHAT_MSG_LOOT");
		--self:RegisterAllEvents();
	end,
	OnUpdate = function(self, ...)
		-- Update the window and all of its row data
		if self.data.OnUpdate then self.data.OnUpdate(self.data); end
		for i,g in ipairs(self.data.g) do
			if g.OnUpdate then g.OnUpdate(g); end
		end
		self.data.index = 0;
		self.data.back = 1;
		self.data.indent = 0;
		BuildGroups(self.data);
		UpdateWindow(self, true);
	end
});
]]--
app:GetWindow("ItemFilter", {
	parent = UIParent,
	Silent = true,
	OnUpdate = function(self, ...)
		if not self.initialized then
			self.initialized = true;
			self.dirty = true;

			-- Item Filter
			local actions = {
				['text'] = "Item Filters",
				['icon'] = app.asset("Category_ItemSets"),
				["description"] = "You can search the ATT Database by using a item filter.",
				['visible'] = true,
				['expanded'] = true,
				['back'] = 1,
				['OnUpdate'] = function(data)
					if not self.dirty then return nil; end
					self.dirty = nil;

					local g = {};
					table.insert(g, 1, data.setItemFilter);
					if #data.results > 0 then
						for i,result in ipairs(data.results) do
							table.insert(g, result);
						end
					end
					data.g = g;
					if #g > 0 then
						for i,entry in ipairs(g) do
							entry.indent = nil;
						end
						data.indent = 0;
						data.visible = true;
						BuildGroups(data);
						app.UpdateGroups(data, data.g);
						if not data.expanded then
							data.expanded = true;
							ExpandGroupsRecursively(data, true);
						end
					end

					-- Update the groups without forcing Debug Mode.
					local visibilityFilter = app.VisibilityFilter;
					app.VisibilityFilter = app.ObjectVisibilityFilter;
					BuildGroups(self.data);
					UpdateWindow(self, true);
					app.VisibilityFilter = visibilityFilter;
				end,
				['g'] = {},
				['results'] = {},
				['setItemFilter'] = {
					['text'] = "Set Item Filter",
					['icon'] = "Interface\\Icons\\INV_MISC_KEY_12",
					['description'] = "Click this to change the item filter you want to search for within ATT.",
					['visible'] = true,
					['OnClick'] = function(row, button)
						app:ShowPopupDialogWithEditBox("Which Item Filter would you like to search for?", "", function(text)
							text = string.lower(text);
							local f = tonumber(text);
							if tostring(f) ~= text then
								-- The string form did not match, the filter must have been by name.
								for id,filter in pairs(L["FILTER_ID_TYPES"]) do
									if string.match(string.lower(filter), text) then
										f = tonumber(id);
										break;
									end
								end
							end
							if f then
								self.data.results = app:BuildSearchResponse(app:GetDataCache().g, "f", f);
								row.ref.f = f;
								self.dirty = true;
							end
							wipe(searchCache);
							self:Update();
						end);
						return true;
					end,
					['OnUpdate'] = app.AlwaysShowUpdate,
				},
			};

			self.Reset = function()
				self.data = actions;
			end
			self:Reset();
		end

		-- Update the window and all of its row data
		if self.data.OnUpdate then self.data.OnUpdate(self.data, self); end
		UpdateWindow(self, true);
	end
});
app:GetWindow("ItemFinder", {
	parent = UIParent,
	Silent = true,
	OnUpdate = function(self, ...)
		if not self.initialized then
			self.initialized = true;
			self.data = {
				text = "Item Finder",
				icon = app.asset("WindowIcon_RaidAssistant"),
				description = "This is a contribution debug tool. NOT intended to be used by the majority of the player base.\n\nUsing this tool will lag your WoW every 5 seconds. Not sure why - likely a bad Blizzard Database thing.",
				visible = true,
				expanded = true,
				progress = 0,
				total = 0,
				back = 1,
				currentItemID = 60000,
				minimumItemID = 0,
				g = {
					{
						text = "Update Now",
						icon = app.asset("Button_Reroll"),
						description = "Click this to update the listing. Doing so shall remove all invalid, grey, or white items.",
						visible = true,
						fails = 0,
						OnClick = function(row, button)
							self:Update(true);
							return true;
						end,
						OnUpdate = app.AlwaysShowUpdate,
					},
				},
				OnUpdate = function(header)
					local g = header.g;
					if g then
						local count = #g;
						if count > 0 then
							for i=count,1,-1 do
								if g[i].collected then
									table.remove(g, i);
								end
							end
						end
						for count=#g,100 do
							local i = header.currentItemID - 1;
							if i > header.minimumItemID then
								header.currentItemID = i;
								tinsert(g, app.CreateItemHarvester(i, {
									parent = header
								}));
							end
						end
						self:DelayedUpdate(true);
						self.delayRemaining = 1;
					end
				end
			};
		end
		self.data.progress = 0;
		self.data.total = 0;
		UpdateGroups(self.data, self.data.g);
		UpdateWindow(self, ...);
		if self.data.OnUpdate then self.data.OnUpdate(self.data); end
	end
});
app:GetWindow("Tradeskills", {
	parent = UIParent,
	Silent = true,
	AllowCompleteSound = true,
	OnInit = function(self, handlers)
		SLASH_ATTSKILLS1 = "/attskills";
		SLASH_ATTSKILLS2 = "/atttradeskill";
		SLASH_ATTSKILLS3 = "/attprofession";
		SLASH_ATTSKILLS4 = "/attprof";
		SlashCmdList["ATTSKILLS"] = function(cmd)
			self:Toggle();
		end
		self:SetMovable(false);
		self:SetClampedToScreen(false);
		self.wait = 5;
		self.cache = {};
		self.header = {
			['text'] = "Profession List",
			['icon'] = "Interface\\Icons\\INV_Scroll_04",
			["description"] = "Open your professions to cache them.",
			['visible'] = true,
			['expanded'] = true,
			["indent"] = 0,
			['back'] = 1,
			['g'] = { },
		};
		self.data = self.header;
		self.previousCraftSkillID = 0;
		self.previousTradeSkillID = 0;
		self.CacheRecipes = function(self)
			-- If it's not yours, don't take credit for it.
			if IsTradeSkillLinked and IsTradeSkillLinked() then
				return;
			end
			if C_TradeSkillUI then
				if (C_TradeSkillUI.IsTradeSkillLinked and C_TradeSkillUI.IsTradeSkillLinked())
				or (C_TradeSkillUI.IsTradeSkillGuild and C_TradeSkillUI.IsTradeSkillGuild()) then
					return;
				end
			end

			-- Cache Learned Spells
			local skillCache = SearchForFieldContainer("spellID");
			if skillCache then
				-- Cache learned recipes and reagents
				local reagentCache = app.GetDataMember("Reagents", {});
				local learned, craftSkillID, tradeSkillID = 0, 0, 0;
				rawset(app.SpellNameToSpellID, 0, nil);
				app.GetSpellName(0);

				if CraftFrame and CraftFrame:IsVisible() then
					-- Crafting Skills (Enchanting and Beast Training Only)
					local craftSkillName, craftSkillLevel, craftSkillMaxLevel = GetCraftDisplaySkillLine();
					if craftSkillName and craftSkillName ~= "UNKNOWN" then
						local shouldShowSpellRanks = craftSkillLevel and craftSkillLevel ~= math.max(300, craftSkillMaxLevel);
						craftSkillID = app.SpellNameToSpellID[craftSkillName] or 0;
						if craftSkillID == 0 then
							app.print("Could not find spellID for", craftSkillName, GetLocale(), "! Please report this to the ATT Discord!");
						end
					elseif CraftFrameTitleText then
						craftSkillName = CraftFrameTitleText:GetText();
						craftSkillID = app.SpellNameToSpellID[craftSkillName] or 0;
						if craftSkillID == 0 then
							app.print("Could not find spellID for", craftSkillName, GetLocale(), "! Please report this to the ATT Discord!");
						end
					else
						craftSkillID = 0;
					end
				end

				if TradeSkillFrame and TradeSkillFrame:IsVisible() then
					-- Trade Skills (Non-Enchanting)
					local tradeSkillName, tradeSkillLevel, tradeSkillMaxLevel = GetTradeSkillLine();
					if tradeSkillName and tradeSkillName ~= "UNKNOWN" then
						local shouldShowSpellRanks = tradeSkillLevel and tradeSkillLevel ~= math.max(300, tradeSkillMaxLevel);
						tradeSkillID = app.SpellNameToSpellID[tradeSkillName] or 0;
						if tradeSkillID == 2656 then	-- Smelting, point this to Mining.
							tradeSkillID = 2575;
						elseif tradeSkillID == 0 then
							app.print("Could not find spellID for", tradeSkillName, GetLocale(), "! Please report this to the ATT Discord!");
						end
					else
						tradeSkillID = 0;
					end
				end

				if Skillet and Skillet.currentTrade and tradeSkillID == 0 and craftSkillID == 0 then
					if Skillet.isCraft then
						craftSkillID = Skillet.currentTrade;
					else
						tradeSkillID = Skillet.currentTrade;
					end
				end

				if craftSkillID ~= 0 then
					local spellName = GetSpellInfo(craftSkillID);
					for _,spellID in pairs(app.SkillIDToSpellID) do
						if GetSpellInfo(spellID) == spellName then
							craftSkillID = spellID;
							break;
						end
					end

					local numberOfCrafts, spellID = GetNumCrafts();
					for craftIndex = 1,numberOfCrafts do
						spellID = 0;
						local craftName, craftSubSpellName, craftType, numAvailable, isExpanded, trainingPointCost, requiredLevel = GetCraftInfo(craftIndex);
						if craftType == "optimal" or craftType == "medium" or craftType == "easy" or craftType == "trivial" or craftType == "used" or craftType == "none" then
							spellID = craftSubSpellName and (select(7, GetSpellInfo(craftName, craftSubSpellName)) or app.SpellNameToSpellID[craftName .. " (" .. craftSubSpellName .. ")"]) or app.SpellNameToSpellID[craftName];
							if spellID then
								if spellID == 44153 then spellID = 44155;	-- Fix the Flying Machine spellID.
								elseif spellID == 44151 then spellID = 44157;	-- Fix the Turbo Flying Machine spellID.
								elseif spellID == 20583 then spellID = 24492; end 	-- Fix rank 1 Nature Resistance.
								app.CurrentCharacter.SpellRanks[spellID] = shouldShowSpellRanks and app.CraftTypeToCraftTypeID(craftType) or nil;
								if not app.CurrentCharacter.Spells[spellID] then
									app.SetCollectedForSubType(nil, "Spells", "Recipes", spellID, true);
									learned = learned + 1;
								end
								if not skillCache[spellID] then
									app.print("Missing " .. craftName .. " (Spell ID #" .. spellID .. ") in ATT Database. Please report it!");
									skillCache[spellID] = { {} };
								end
							else
								app.print("Missing " .. craftName .. " spellID in ATT Database. Please report it!");
							end

							if craftType ~= "none" then
								-- Attempt to harvest the item associated with this craft.
								GameTooltip.SetCraftSpell(ATTCNPCHarvester, craftIndex);
								local link, craftedItemID = select(2, ATTCNPCHarvester:GetItem());
								if link then craftedItemID = GetItemInfoInstant(link); end

								-- Cache the Reagents used to make this item.
								for i=1,GetCraftNumReagents(craftIndex) do
									local itemID = GetItemInfoInstant(GetCraftReagentItemLink(craftIndex, i));
									if itemID then
										-- Make sure a cache table exists for this item.
										local _, _, reagentCount = GetCraftReagentInfo(craftIndex, i);
										if not reagentCache[itemID] then reagentCache[itemID] = { {}, {} }; end

										-- Index 1: The Recipe Skill IDs
										if spellID then reagentCache[itemID][1][spellID] = reagentCount; end

										-- Index 2: The Crafted Item IDs
										if craftedItemID then reagentCache[itemID][2][craftedItemID] = reagentCount; end
									end
								end
							end
						end
					end
				end

				if tradeSkillID ~= 0 then
					local spellName = GetSpellInfo(tradeSkillID);
					for _,spellID in pairs(app.SkillIDToSpellID) do
						if GetSpellInfo(spellID) == spellName then
							tradeSkillID = spellID;
							break;
						end
					end
					local numTradeSkills = GetNumTradeSkills();
					for skillIndex = 1,numTradeSkills do
						local skillName, skillType, numAvailable, isExpanded = GetTradeSkillInfo(skillIndex);
						if skillType == "optimal" or skillType == "medium" or skillType == "easy" or skillType == "trivial" or skillType == "used" or skillType == "none" then
							local spellID = app.SpellNameToSpellID[skillName];
							if spellID then
								if spellID == 44153 then spellID = 44155;	-- Fix the Flying Machine spellID.
								elseif spellID == 44151 then spellID = 44157;	-- Fix the Turbo Flying Machine spellID.
								elseif spellID == 61451 then spellID = 60969;	-- Fix the Flying Carpet spellID.
								elseif spellID == 61309 then spellID = 60971;	-- Fix the Magnificent Flying Carpet spellID.
								elseif spellID == 75596 then spellID = 75597;	-- Fix the Frosty Flying Carpet spellID.
								elseif spellID == 20583 then spellID = 24492; end 	-- Fix rank 1 Nature Resistance.
								app.CurrentCharacter.SpellRanks[spellID] = shouldShowSpellRanks and app.CraftTypeToCraftTypeID(skillType) or nil;
								if not app.CurrentCharacter.Spells[spellID] then
									app.SetCollectedForSubType(nil, "Spells", "Recipes", spellID, true);
									learned = learned + 1;
								end

								if not skillCache[spellID] then
									app.print("Missing " .. (skillName or "[??]") .. " (Spell ID #" .. spellID .. ") in ATT Database. Please report it!");
									skillCache[spellID] = { {} };
								end
							else
								app.print("Missing " .. (skillName or "[??]") .. " spellID in ATT Database. Please report it!");
							end

							-- Cache the Reagents used to make this item.
							local tradeSkillItemLink = GetTradeSkillItemLink(skillIndex);
							if tradeSkillItemLink then
								local craftedItemID = GetItemInfoInstant(tradeSkillItemLink);
								for i=1,GetTradeSkillNumReagents(skillIndex) do
									local reagentCount = select(3, GetTradeSkillReagentInfo(skillIndex, i));
									local itemID = GetItemInfoInstant(GetTradeSkillReagentItemLink(skillIndex, i));

									-- Make sure a cache table exists for this item.
									-- Index 1: The Recipe Skill IDs
									-- Index 2: The Crafted Item IDs
									if not reagentCache[itemID] then reagentCache[itemID] = { {}, {} }; end
									if spellID then reagentCache[itemID][1][spellID] = reagentCount; end
									if craftedItemID then reagentCache[itemID][2][craftedItemID] = reagentCount; end
								end
							end
						end
					end
				end

				-- Open the Tradeskill list for this Profession
				if app.Categories.Professions and (craftSkillID ~= 0 or tradeSkillID ~= 0) and (craftSkillID ~= self.previousCraftSkillID or tradeSkillID ~= self.previousTradeSkillID) then
					self.previousCraftSkillID = craftSkillID;
					self.previousTradeSkillID = tradeSkillID;
					local g = {};
					for i,group in ipairs(app.Categories.Professions) do
						if group.spellID == craftSkillID or group.spellID == tradeSkillID then
							local cache = self.cache[group.spellID];
							if not cache then
								cache = CloneReference(group);
								self.cache[group.spellID] = cache;
								local searchResults = ResolveSymbolicLink(group);
								if searchResults and #searchResults then
									for j,o in ipairs(searchResults) do
										tinsert(cache.g, o);
									end
								end
							end
							table.insert(g, cache);
						end
					end
					if #g > 0 then
						if #g == 1 then
							self.data = g[1];
						else
							self.data = self.header;
							self.data.g = g;
							for i,entry in ipairs(g) do
								entry.indent = nil;
							end
						end
						self.data.indent = 0;
						self.data.visible = true;
						if not self.data.expanded then
							self.data.expanded = true;
							ExpandGroupsRecursively(self.data, true);
						end
						self:Rebuild();
					end
				end

				-- If something new was "learned", then refresh the data.
				if learned > 0 then
					app.print("Cached " .. learned .. " known recipes!");
					app:RefreshDataQuietly("TradeSkills::CacheRecipes", true);
				end
			end
		end
		self.RefreshRecipes = function(self)
			if app.Settings.Collectibles.Recipes then
				self.wait = 5;
				app:StartATTCoroutine("RefreshingRecipes", function()
					while self.wait > 0 do
						self.wait = self.wait - 1;
						coroutine.yield();
					end
					while not self:IsVisible() do
						coroutine.yield();
					end

					wipe(searchCache);
					self:CacheRecipes();
				end);
			end
		end

		-- Skillet support.
		self.SkilletSupported = nil;

		-- TSM Shenanigans
		self.TSMCraftingVisible = nil;
		self.SetTSMCraftingVisible = function(self, visible)
			visible = not not visible;
			if visible == self.TSMCraftingVisible then
				return;
			end
			self.TSMCraftingVisible = visible;
			self:UpdateFrameVisibility();
			app:StartATTCoroutine("UpdateTradeSkills", function()
				while InCombatLockdown() do coroutine.yield(); end
				coroutine.yield();
				self:Update();
			end);
		end
		self.UpdateDefaultFrameVisibility = function(self)
			-- Skillet compatibility
			if SkilletFrame then
				if not self.SkilletSupported then
					Skillet["ATTC"] = { ["Update"] = function() self:Update(); end };
					Skillet:RegisterUpdatePlugin("ATTC");
					self.SkilletSupported = true;
				end
				self:SetParent(SkilletFrame);
				self:SetPoint("TOPLEFT", SkilletFrame, "TOPRIGHT", 0, 0);
				self:SetPoint("BOTTOMLEFT", SkilletFrame, "BOTTOMRIGHT", 0, 0);
				self:SetMovable(false);
				return true;
			elseif CraftFrame and CraftFrame:IsVisible() then
				-- Default Alignment on the Craft UI.
				self:ClearAllPoints();
				self:SetPoint("TOPLEFT", CraftFrame, "TOPRIGHT", -37, -11);
				self:SetPoint("BOTTOMLEFT", CraftFrame, "BOTTOMRIGHT", -37, 72);
				self:SetMovable(false);
				return true;
			elseif TradeSkillFrame and TradeSkillFrame:IsVisible() then
				-- Default Alignment on the TradeSkill UI.
				self:ClearAllPoints();
				self:SetPoint("TOPLEFT", TradeSkillFrame, "TOPRIGHT", -37, -11);
				self:SetPoint("BOTTOMLEFT", TradeSkillFrame, "BOTTOMRIGHT", -37, 72);
				self:SetMovable(false);
				return true;
			end
		end
		self.UpdateFrameVisibility = function(self)
			self:SetMovable(true);
			self:ClearAllPoints();
			if self.TSMCraftingVisible and self.cachedTSMFrame then
				if self.cachedTSMFrame.queue and self.cachedTSMFrame.queue:IsShown() then
					self:SetPoint("TOPLEFT", self.cachedTSMFrame.queue, "TOPRIGHT", 0, 0);
					self:SetPoint("BOTTOMLEFT", self.cachedTSMFrame.queue, "BOTTOMRIGHT", 0, 0);
				else
					self:SetPoint("TOPLEFT", self.cachedTSMFrame, "TOPRIGHT", 0, 0);
					self:SetPoint("BOTTOMLEFT", self.cachedTSMFrame, "BOTTOMRIGHT", 0, 0);
				end
				self:SetMovable(false);
				return true;
			elseif self:UpdateDefaultFrameVisibility() then
				return true;
			else
				self:SetMovable(false);
				app:StartATTCoroutine("TSMWHY", function()
					while InCombatLockdown() or not TradeSkillFrame do coroutine.yield(); end
					app:StartATTCoroutine("TSMWHYPT2", function()
						local thing = self.TSMCraftingVisible;
						self.TSMCraftingVisible = nil;
						self:SetTSMCraftingVisible(thing);
					end);
				end);
			end
		end

		-- Setup Event Handlers and register for events
		local updateTradeSkill = function()
			-- If it's not yours, don't take credit for it.
			if IsTradeSkillLinked and IsTradeSkillLinked() then
				return;
			end
			if C_TradeSkillUI then
				if (C_TradeSkillUI.IsTradeSkillLinked and C_TradeSkillUI.IsTradeSkillLinked())
				or (C_TradeSkillUI.IsTradeSkillGuild and C_TradeSkillUI.IsTradeSkillGuild()) then
					return;
				end
			end
			if self.TSMCraftingVisible == nil then
				self:SetTSMCraftingVisible(false);
			end
			self:UpdateFrameVisibility();
			if app.Settings:GetTooltipSetting("Auto:ProfessionList") then
				self:SetVisible(true);
			end
			RefreshSkills();
			self:RefreshRecipes();
		end
		handlers.CRAFT_SHOW = updateTradeSkill;
		handlers.TRADE_SKILL_SHOW = updateTradeSkill;
		pcall(self.RegisterEvent, self, "CRAFT_SHOW");
		self:RegisterEvent("TRADE_SKILL_SHOW");

		local tradeSkillClose = function()
			app:StartATTCoroutine("TSMWHY3", function()
				self:RefreshRecipes();
				if not self:UpdateFrameVisibility() then
					self:SetVisible(false);
				end
			end);
		end
		handlers.CRAFT_CLOSE = tradeSkillClose;
		handlers.TRADE_SKILL_CLOSE = tradeSkillClose;
		pcall(self.RegisterEvent, self, "CRAFT_CLOSE");
		self:RegisterEvent("TRADE_SKILL_CLOSE");

		local newSpellLearned = function(self, spellID)
			if spellID then
				if not app.CurrentCharacter.Spells[spellID] then
					local searchResults, spell = SearchForField("spellID", spellID);
					if #searchResults > 0 then
						spell = searchResults[1];
						for i=2,#searchResults,1 do
							local searchResult = searchResults[i];
							if not searchResult.itemID then
								spell = searchResult;
							end
						end
					else
						spell = app.CreateSpell(spellID);
					end
					if spell.f == app.FilterConstants.RECIPES then
						app.SetCollectedForSubType(spell, "Spells", "Recipes", spellID, true);
					else
						app.SetCollected(spell, "Spells", spellID, true);
					end
					app:RefreshDataQuietly("NEW_SPELL_LEARNED", true);
				else
					self:RefreshRecipes();
				end
			end
		end
		handlers.NEW_RECIPE_LEARNED = newSpellLearned;
		handlers.LEARNED_SPELL_IN_TAB = newSpellLearned;
		self:RegisterEvent("LEARNED_SPELL_IN_TAB");
		self:RegisterEvent("NEW_RECIPE_LEARNED");

		-- Default Update refreshes
		pcall(self.RegisterEvent, self, "CRAFT_UPDATE");
		self:RegisterEvent("TRADE_SKILL_LIST_UPDATE");
		self:RegisterEvent("SKILL_LINES_CHANGED");
	end,
	OnUpdate = function(self, ...)
		if TSM_API and TSMAPI_FOUR then
			if not self.cachedTSMFrame then
				for i,f in ipairs({UIParent:GetChildren()}) do
					if f.headerBgCenter then
						self.cachedTSMFrame = f;
						local oldSetVisible = f.SetVisible;
						local oldShow = f.Show;
						local oldHide = f.Hide;
						f.SetVisible = function(s, visible)
							oldSetVisible(s, visible);
							self:SetTSMCraftingVisible(visible);
						end
						f.Hide = function(s)
							oldHide(s);
							self:SetTSMCraftingVisible(false);
						end
						f.Show = function(s)
							oldShow(s);
							self:SetTSMCraftingVisible(true);
						end
						if self.gettinMadAtDumbNamingConventions then
							TSMAPI_FOUR.UI.NewElement = self.OldNewElement;
							self.gettinMadAtDumbNamingConventions = nil;
							self.OldNewElement = nil;
						end
						self:SetTSMCraftingVisible(f:IsShown());
						return;
					end
				end
				if not self.gettinMadAtDumbNamingConventions then
					self.gettinMadAtDumbNamingConventions = true;
					self.OldNewElement = TSMAPI_FOUR.UI.NewElement;
					TSMAPI_FOUR.UI.NewElement = function(...)
						app:StartATTCoroutine("UpdateTradeSkills", function()
							while InCombatLockdown() do coroutine.yield(); end
							coroutine.yield();
							self:Update();
						end);
						return self.OldNewElement(...);
					end
				end
			end
		elseif TSMCraftingTradeSkillFrame then
			if not self.cachedTSMFrame then
				local f = TSMCraftingTradeSkillFrame;
				self.cachedTSMFrame = f;
				local oldSetVisible = f.SetVisible;
				local oldShow = f.Show;
				local oldHide = f.Hide;
				f.SetVisible = function(s, visible)
					oldSetVisible(s, visible);
					self:SetTSMCraftingVisible(visible);
				end
				f.Hide = function(s)
					oldHide(s);
					self:SetTSMCraftingVisible(false);
				end
				f.Show = function(s)
					oldShow(s);
					self:SetTSMCraftingVisible(true);
				end
				if f.queueBtn then
					local setScript = f.queueBtn.SetScript;
					f.queueBtn.SetScript = function(s, e, callback)
						if e == "OnClick" then
							setScript(s, e, function(...)
								if callback then callback(...); end

								local thing = self.TSMCraftingVisible;
								self.TSMCraftingVisible = nil;
								self:SetTSMCraftingVisible(thing);
							end);
						else
							setScript(s, e, callback);
						end
					end
					f.queueBtn:SetScript("OnClick", f.queueBtn:GetScript("OnClick"));
				end
				self:SetTSMCraftingVisible(f:IsShown());
				return;
			end
		end
		UpdateWindow(self, ...);
	end,
});


-- Addon Message Handling
app:RegisterEvent("CHAT_MSG_ADDON");
app.events.CHAT_MSG_ADDON = function(prefix, text, channel, sender, target, zoneChannelID, localID, name, instanceID, ...)
	if prefix == "ATTC" then
		--print(prefix, text, channel, sender, target, zoneChannelID, localID, name, instanceID, ...)
		local args = { strsplit("\t", text) };
		local cmd = args[1];
		if cmd then
			local a = args[2];
			if cmd == "?" then		-- Query Request
				local response;
				if a then
					if a == "a" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Achievements[b] and 1 or 0);
						end
					elseif a == "e" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Exploration[b] and 1 or 0);
						end
					elseif a == "f" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Factions[b] and 1 or 0);
						end
					elseif a == "fp" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.FlightPaths[b] and 1 or 0);
						end
					elseif a == "p" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.BattlePets[b] and 1 or 0);
						end
					elseif a == "q" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (IsQuestFlaggedCompleted(b) and 1 or 0);
						end
					--[[
					elseif a == "s" then
						response = "s";
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (ATTAccountWideData.Sources[b] or 0);
						end
					]]--
					elseif a == "sp" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Spells[b] and 1 or 0);
						end
					elseif a == "t" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Titles[b] and 1 or 0);
						end
					elseif a == "toy" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Toys[b] and 1 or 0);
						end
					end
				else
					local character = app.CurrentCharacter;
					if character then
						local data = character.PrimeData;
						if data then
							response = "ATTC\t" .. (data.progress or 0) .. "\t" .. (data.total or 0) .. "\t" .. data.modeString;
						end
					end
				end
				if response then SendResponseMessage("!\t" .. response, sender); end
			elseif cmd == "!" then	-- Query Response
				if a == "ATTC" then
					print(target .. ": " .. GetProgressColorText(tonumber(args[3]), tonumber(args[4])) .. " " .. args[5]);
				end
			elseif cmd == "to" then	-- To Command
				local myName = UnitName("player");
				local name,server = strsplit("-", a);
				if myName == name and (not server or GetRealmName() == server) then
					app.events.CHAT_MSG_ADDON(prefix, strsub(text, 5 + strlen(a)), "WHISPER", sender);
				end
			end
		end
	end
end
SLASH_ATTGUILD1 = "/attguild";
SlashCmdList["ATTGUILD"] = function(cmd)
	C_ChatInfo.SendAddonMessage("ATTC", "?", "GUILD");
end
SLASH_ATTRAID1 = "/attraid";
SlashCmdList["ATTRAID"] = function(cmd)
	C_ChatInfo.SendAddonMessage("ATTC", "?", "RAID");
end
SLASH_ATTYELL1 = "/attyell";
SLASH_ATTYELL2 = "/attrohduh";
SlashCmdList["ATTYELL"] = function(cmd)
	C_ChatInfo.SendAddonMessage("ATTC", "?", "YELL");
end
SLASH_ATTWHO1 = "/attu";
SLASH_ATTWHO2 = "/attyou";
SLASH_ATTWHO3 = "/attwho";
SlashCmdList["ATTWHO"] = function(cmd)
	local name,server = UnitName("target");
	if name then
		if UnitIsPlayer("target") then
			SendResponseMessage("?", server and (name .. "-" .. server) or name);
		else
			local cmd = "creatureid:" .. select(6, strsplit("-", UnitGUID("target")));
			local group = GetCachedSearchResults(cmd, SearchForLink, cmd);
			if group then app:CreateMiniListForGroup(group); end
		end
	end
end

-- Game Events that trigger computation updates.
app.events.PLAYER_LEVEL_UP = function(newLevel)
	app.Level = newLevel;
	app:RefreshDataCompletely("PLAYER_LEVEL_UP");
end

-- Startup Event
app:RegisterEvent("ADDON_LOADED");
app:RegisterEvent("VARIABLES_LOADED");
app.events.ADDON_LOADED = function(addonName)
	-- Only execute for this addon.
	if addonName ~= appName then return; end
	app:UnregisterEvent("ADDON_LOADED");

	ATTClassicAD = _G["ATTClassicAD"];	-- For account-wide data.
	if not ATTClassicAD then
		ATTClassicAD = { };
		_G["ATTClassicAD"] = ATTClassicAD;
	end
	app:UpdateWindowColors();
	LibStub:GetLibrary("LibDataBroker-1.1"):NewDataObject(L["TITLE"], {
		type = "launcher",
		icon = app.asset("logo_32x32"),
		OnClick = MinimapButtonOnClick,
		OnEnter = MinimapButtonOnEnter,
		OnLeave = MinimapButtonOnLeave,
	});

	-- Cache the Localized Category Data
	ATTClassicAD.LocalizedCategoryNames = setmetatable(ATTClassicAD.LocalizedCategoryNames or {}, { __index = app.CategoryNames });
	app.CategoryNames = nil;

	-- Cache the Localized Flight Path Data
	ATTClassicAD.LocalizedFlightPathNames = setmetatable(ATTClassicAD.LocalizedFlightPathNames or {}, { __index = app.FlightPathNames });
	app.FlightPathDB = nil;

	-- Character Data Storage
	local characterData = ATTCharacterData;
	if not characterData then
		characterData = {};
		ATTCharacterData = characterData;
	end
	local currentCharacter = characterData[app.GUID];
	if not currentCharacter then
		currentCharacter = {};
		characterData[app.GUID] = currentCharacter;
	end
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
	if race then currentCharacter.race = race; end
	if not currentCharacter.Achievements then currentCharacter.Achievements = {}; end
	if not currentCharacter.ActiveSkills then currentCharacter.ActiveSkills = {}; end
	if not currentCharacter.BattlePets then currentCharacter.BattlePets = {}; end
	if not currentCharacter.Deaths then currentCharacter.Deaths = 0; end
	if not currentCharacter.Exploration then currentCharacter.Exploration = {}; end
	if not currentCharacter.Factions then currentCharacter.Factions = {}; end
	if not currentCharacter.FlightPaths then currentCharacter.FlightPaths = {}; end
	if not currentCharacter.GarrisonBuildings then currentCharacter.GarrisonBuildings = {}; end
	if not currentCharacter.Lockouts then currentCharacter.Lockouts = {}; end
	if not currentCharacter.Quests then currentCharacter.Quests = {}; end
	if not currentCharacter.RWP then currentCharacter.RWP = {}; end
	if not currentCharacter.Spells then currentCharacter.Spells = {}; end
	if not currentCharacter.SpellRanks then currentCharacter.SpellRanks = {}; end
	if not currentCharacter.Titles then currentCharacter.Titles = {}; end
	if not currentCharacter.Toys then currentCharacter.Toys = {}; end

	-- Update timestamps.
	local now = time();
	local timeStamps = currentCharacter.TimeStamps;
	if not timeStamps then
		timeStamps = {};
		currentCharacter.TimeStamps = timeStamps;
	end
	for key,value in pairs(currentCharacter) do
		if type(value) == "table" and not timeStamps[key] then
			timeStamps[key] = now;
		end
	end
	currentCharacter.lastPlayed = now;
	app.CurrentCharacter = currentCharacter;

	-- Convert over the deprecated Characters table.
	local characters = GetDataMember("Characters");
	if characters then
		for guid,text in pairs(characters) do
			if not characterData[guid] then
				characterData[guid] = { ["text"] = text };
			end
		end
	end

	-- Convert over the deprecated DeathsPerCharacter table.
	local deathsPerCharacter = GetDataMember("DeathsPerCharacter");
	if deathsPerCharacter then
		for guid,deaths in pairs(deathsPerCharacter) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.Deaths = deaths;
		end
	end

	-- Convert over the deprecated ActiveSkillsPerCharacter table.
	local activeSkillsPerCharacter = GetDataMember("ActiveSkillsPerCharacter");
	if activeSkillsPerCharacter then
		for guid,skills in pairs(activeSkillsPerCharacter) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.ActiveSkills = skills;
		end
	end

	-- Convert over the deprecated CollectedFlightPathsPerCharacter table.
	local collectedFlightPathsPerCharacter = GetDataMember("CollectedFlightPathsPerCharacter");
	if collectedFlightPathsPerCharacter then
		for guid,flightPaths in pairs(collectedFlightPathsPerCharacter) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.FlightPaths = flightPaths;
		end
	end

	-- Convert over the deprecated CollectedFactionsPerCharacter table.
	local collectedFactionsPerCharacter = GetDataMember("CollectedFactionsPerCharacter");
	if collectedFactionsPerCharacter then
		for guid,factions in pairs(collectedFactionsPerCharacter) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.Factions = factions;
		end
	end

	-- Convert over the deprecated lockouts table.
	local lockouts = GetDataMember("lockouts");
	if lockouts then
		for guid,locks in pairs(lockouts) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.Lockouts = locks;
		end
	end

	-- Convert over the deprecated CollectedQuestsPerCharacter table.
	local collectedQuestsPerCharacter = GetDataMember("CollectedQuestsPerCharacter");
	if collectedQuestsPerCharacter then
		for guid,quests in pairs(collectedQuestsPerCharacter) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.Quests = quests;
		end
	end

	-- Convert over the deprecated CollectedSpellsPerCharacter table.
	local collectedSpellsPerCharacter = GetDataMember("CollectedSpellsPerCharacter");
	if collectedSpellsPerCharacter then
		for guid,spells in pairs(collectedSpellsPerCharacter) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.Spells = spells;
		end
	end

	-- Convert over the deprecated SpellRanksPerCharacter table.
	local spellRanksPerCharacter = GetDataMember("SpellRanksPerCharacter");
	if spellRanksPerCharacter then
		for guid,ranks in pairs(spellRanksPerCharacter) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.SpellRanks = ranks;
		end
	end

	-- Account Wide Data Storage
	local accountWideData = ATTAccountWideData;
	if not accountWideData then
		accountWideData = {};
		ATTAccountWideData = accountWideData;
	end
	if not accountWideData.Achievements then accountWideData.Achievements = {}; end
	if not accountWideData.BattlePets then accountWideData.BattlePets = {}; end
	if not accountWideData.Deaths then accountWideData.Deaths = 0; end
	if not accountWideData.Exploration then accountWideData.Exploration = {}; end
	if not accountWideData.Factions then accountWideData.Factions = {}; end
	if not accountWideData.FlightPaths then accountWideData.FlightPaths = {}; end
	if not accountWideData.GarrisonBuildings then accountWideData.GarrisonBuildings = {}; end
	if not accountWideData.Illusions then accountWideData.Illusions = {}; end
	if not accountWideData.Quests then accountWideData.Quests = {}; end
	if not accountWideData.RWP then accountWideData.RWP = {}; end
	if not accountWideData.Spells then accountWideData.Spells = {}; end
	if not accountWideData.Titles then accountWideData.Titles = {}; end
	if not accountWideData.Toys then accountWideData.Toys = {}; end

	-- Account Wide Settings
	local accountWideSettings = app.Settings.AccountWide;
	local function SetCollected(t, field, id, collected)
		local container = currentCharacter[field];
		local oldstate = container[id];
		if collected then
			if not oldstate then
				if t and not (accountWideSettings[field] and accountWideData[field][id]) then
					--print("SetCollected", field, id, accountWideSettings[field], accountWideData[field][id]);
					AddToCollection(t);
				end
				container[id] = 1;
				accountWideData[field][id] = 1;
				local now = time();
				timeStamps[field] = now;
				currentCharacter.lastPlayed = now;
			end
			return 1;
		elseif oldstate then
			container[id] = nil;
			local now = time();
			timeStamps[field] = now;
			currentCharacter.lastPlayed = now;
			for guid,other in pairs(characterData) do
				local otherContainer = other[field];
				if otherContainer and otherContainer[id] then
					accountWideData[field][id] = 1;
					return accountWideSettings[field] and 2;
				end
			end
			if accountWideData[field][id] then
				RemoveFromCollection(t);
				accountWideData[field][id] = nil;
			end
		elseif accountWideSettings[field] and accountWideData[field][id] then
			return 2;
		end
	end
	local function SetCollectedForSubType(t, field, subtype, id, collected)
		local container = currentCharacter[field];
		local oldstate = container[id];
		if collected then
			if not oldstate then
				if t and not (accountWideSettings[subtype] and accountWideData[field][id]) then
					--print("SetCollectedForSubType", field, subtype, id, accountWideSettings[subtype], accountWideData[field][id]);
					AddToCollection(t);
				end
				container[id] = 1;
				accountWideData[field][id] = 1;
				local now = time();
				timeStamps[field] = now;
				currentCharacter.lastPlayed = now;
			end
			return 1;
		elseif oldstate then
			container[id] = nil;
			local now = time();
			timeStamps[field] = now;
			currentCharacter.lastPlayed = now;
			for guid,other in pairs(characterData) do
				local otherContainer = other[field];
				if otherContainer and otherContainer[id] then
					accountWideData[field][id] = 1;
					return accountWideSettings[subtype] and 2;
				end
			end
			if accountWideData[field][id] then
				RemoveFromCollection(t);
				accountWideData[field][id] = nil;
			end
		elseif accountWideSettings[subtype] and accountWideData[field][id] then
			return 2;
		end
	end
	app.SetCollected = SetCollected;
	app.SetCollectedForSubType = SetCollectedForSubType;

	-- Convert over the deprecated account wide tables.
	local data = GetDataMember("Deaths");
	if data then accountWideData.Deaths = data; end
	data = GetDataMember("CollectedFactions");
	if data then accountWideData.Factions = data; end
	data = GetDataMember("CollectedFlightPaths");
	if data then accountWideData.FlightPaths = data; end
	data = GetDataMember("CollectedQuests");
	if data then accountWideData.Quests = data; end
	data = GetDataMember("CollectedSpells");
	if data then accountWideData.Spells = data; end


	-- Check to see if we have a leftover ItemDB cache
	GetDataMember("GroupQuestsByGUID", {});
	GetDataMember("ValidSuffixesPerItemID", {});

	-- Clean up settings
	local oldsettings = {};
	for i,key in ipairs({
		"GroupQuestsByGUID",
		"LocalizedCategoryNames",
		"LocalizedFlightPathNames",
		"Position",
		"Reagents",
		"SoftReserves",
		"SoftReservePersistence",
		"ValidSuffixesPerItemID",
	}) do
		oldsettings[key] = ATTClassicAD[key];
	end
	wipe(ATTClassicAD);
	for key,value in pairs(oldsettings) do
		ATTClassicAD[key] = value;
	end

	-- Wipe the Debugger Data
	ATTClassicDebugData = nil;

	-- Tooltip Settings
	app.Settings:Initialize();
end
app.events.VARIABLES_LOADED = function()
	app:StartATTCoroutine("Startup", function()
		coroutine.yield();

		-- Prepare the Sound Pack!
		app.Audio:ReloadSoundPack();

		-- Cache some things
		app.CurrentMapID = app.GetCurrentMapID();

		-- Mark all previously completed quests.
		if C_QuestLog_GetAllCompletedQuestIDs then
			local completedQuests = C_QuestLog_GetAllCompletedQuestIDs();
			if completedQuests and #completedQuests > 0 then
				for i,questID in ipairs(completedQuests) do
					CompletedQuests[questID] = true;
				end
			end
		else
			GetQuestsCompleted(CompletedQuests);
		end
		wipe(DirtyQuests);
		app.events.UPDATE_INSTANCE_INFO();
		C_ChatInfo.RegisterAddonMessagePrefix("ATTC");

		-- Setup the Saved Variables if they aren't already.
		local savedVariables = AllTheThingsSavedVariables;
		if not AllTheThingsSavedVariables then
			savedVariables = {};
			AllTheThingsSavedVariables = savedVariables;
		end
		local windowSettings = savedVariables.Windows;
		if not windowSettings then
			windowSettings = {};
			savedVariables.Windows = windowSettings;
		end
		LoadSettingsForWindows(windowSettings);

		-- Now that all the windows are loaded, cache flight paths!
		app.CacheFlightPathData();

		-- Mark that we're ready now!
		app.IsReady = true;
	end);
end