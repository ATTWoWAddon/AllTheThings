--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--------------------------------------------------------------------------------
--				Copyright 2017-2023 Dylan Fortune (Crieve-Sargeras)           --
--------------------------------------------------------------------------------
local appName, app = ...
local L = app.L
local Colorize = app.Modules.Color.Colorize

-- The Settings Frame
local settings = CreateFrame("FRAME", appName .. "-Settings", InterfaceOptionsFramePanelContainer or UIParent, BackdropTemplateMixin and "BackdropTemplate")
app.Settings = settings
settings.AccountWide = {
	Achievements = true,
	BattlePets = true,
	Deaths = true,
	Exploration = true,
	FlightPaths = true,
	Illusions = true,
	Mounts = true,
	PVPRanks = true,
	Quests = true,
	Recipes = true,
	Reputations = true,
	RWP = true,
	Titles = true,
	Toys = true,
};
settings.Collectibles = {
	Achievements = true,
	BattlePets = true,
	Exploration = true,
	FlightPaths = true,
	Illusions = true,
	Loot = true,
	Mounts = true,
	Quests = true,
	Recipes = true,
	Reputations = true,
	RWP = true,
	Titles = true,
	Toys = true,
};
settings.name = appName;
settings.Objects = {}
settings.Callback = app.CallbackHandlers.Callback
do	-- Add the ATT Settings frame into the WoW Settings options
	local category = Settings.RegisterCanvasLayoutCategory(settings, settings.name)
	category.ID = settings.name
	Settings.RegisterAddOnCategory(category)
	settings.Open = function(self)
		-- Open the Options menu.
		Settings.OpenToCategory(self.name)
	end
end
-- Provides a Unique Counter value for the Key referenced on each reference
settings.UniqueCounter = setmetatable({}, {
	__index = function(t, key)
		local trackKey = "_"..key
		local next = (rawget(t, trackKey) or 0) + 1
		-- print("UniqueCounter",key,next)
		t[trackKey] = next
		return next
	end
})

-- Settings Class
local Things = {
	"Achievements",
	"AzeriteEssences",
	"BattlePets",
	"Conduits",
	"DrakewatcherManuscripts",
	"FlightPaths",
	"Followers",
	"Heirlooms",
	"HeirloomUpgrades",
	"Illusions",
	"Mounts",
	"MusicRollsAndSelfieFilters",
	"Quests",
	"QuestsLocked",
	"Recipes",
	"Reputations",
	"RuneforgeLegendaries",
	"Titles",
	"Toys",
	"Transmog",
}
local GeneralSettingsBase = {
	__index = {
		["AccountMode"] = false,
		["Completionist"] = true,
		["MainOnly"] = false,
		["DebugMode"] = false,
		["FactionMode"] = false,
		["Repeatable"] = false,
		["RepeatableFirstTime"] = false,
		["AccountWide:Achievements"] = true,
		["AccountWide:AzeriteEssences"] = true,
		-- ["AccountWide:BattlePets"] = true,
		["AccountWide:Conduits"] = true,
		-- ["AccountWide:DrakewatcherManuscripts"] = true,
		["AccountWide:FlightPaths"] = true,
		["AccountWide:Followers"] = true,
		-- ["AccountWide:Heirlooms"] = true,
		-- ["AccountWide:Illusions"] = true,
		-- ["AccountWide:Mounts"] = true,
		["AccountWide:MusicRollsAndSelfieFilters"] = true,
		["AccountWide:Quests"] = true,
		["AccountWide:Recipes"] = true,
		["AccountWide:Reputations"] = true,
		-- ["AccountWide:RuneforgeLegendaries"] = true,
		["AccountWide:Titles"] = true,
		-- ["AccountWide:Toys"] = true,
		-- ["AccountWide:Transmog"] = true,
		["Thing:Achievements"] = true,
		["Thing:AzeriteEssences"] = true,
		["Thing:BattlePets"] = true,
		["Thing:Conduits"] = true,
		["Thing:DrakewatcherManuscripts"] = true,
		["Thing:FlightPaths"] = true,
		["Thing:Followers"] = true,
		["Thing:Heirlooms"] = true,
		["Thing:HeirloomUpgrades"] = true,
		["Thing:Illusions"] = true,
		["Thing:Mounts"] = true,
		["Thing:MusicRollsAndSelfieFilters"] = true,
		["Thing:Quests"] = true,
		["Thing:QuestsLocked"] = false,
		["Thing:Recipes"] = true,
		["Thing:Reputations"] = true,
		["Thing:RuneforgeLegendaries"] = true,
		["Thing:Titles"] = true,
		["Thing:Toys"] = true,
		["Thing:Transmog"] = true,
		["Show:CompletedGroups"] = false,
		["Show:CollectedThings"] = false,
		["Show:OnlyActiveEvents"] = true,
		["Skip:AutoRefresh"] = false,
		["Show:PetBattles"] = true,
		["Hide:PvP"] = false,
		["Dynamic:Style"] = 1,
		["CC:SL_COV_KYR"] = false,
		["CC:SL_COV_VEN"] = false,
		["CC:SL_COV_NFA"] = false,
		["CC:SL_COV_NEC"] = false,
		["Profile:ShowProfileLoadedMessage"] = true,
		["Window:BackgroundColor"] = { r = 0, g = 0, b = 0, a = 1 },
		["Window:BorderColor"] = { r = 1, g = 1, b = 1, a = 1 },
		["Window:UseClassForBorder"] = false,
	},
}
local FilterSettingsBase = {}
local TooltipSettingsBase = {
	__index = {
		["Auto:BountyList"] = false,
		["Auto:MiniList"] = true,
		["Auto:ProfessionList"] = true,
		["Auto:Sync"] = true,
		["Auto:AH"] = false,
		["Celebrate"] = true,
		["Coordinates"] = true,
		["Screenshot"] = false,
		["Channel"] = "Master",
		["ClassRequirements"] = true,
		["Descriptions"] = true,
		["DisplayInCombat"] = true,
		["Enabled"] = true,
		["Enabled:Mod"] = "None",
		["Expand:Difficulty"] = true,
		["IncludeOriginalSource"] = true,
		["LootSpecializations"] = true,
		["MinimapButton"] = true,
		["MinimapSize"] = 36,
		["MinimapStyle"] = false,
		["Models"] = true,
		["KnownBy"] = true,
		["LiveScan"] = false,
		["Locations"] = 5,
		["Lore"] = true,
		["MainListScale"] = 1,
		["MiniListScale"] = 1,
		["Precision"] = 2,
		["PlayDeathSound"] = false,
		["Progress"] = true,
		["QuestGivers"] = true,
		["RaceRequirements"] = true,
		["Report:Collected"] = true,
		["Report:CompletedQuests"] = true,
		["Report:UnsortedQuests"] = true,
		["ShowIconOnly"] = false,
		["SharedAppearances"] = true,
		["Show:Remaining"] = false,
		["Show:Percentage"] = true,
		["UseMoreColors"] = true,
		["Show:TooltipHelp"] = true,
		["Skip:Cutscenes"] = false,
		["SourceLocations"] = true,
		["SourceLocations:Completed"] = true,
		["SourceLocations:Creatures"] = true,
		["SourceLocations:Things"] = true,
		["DropChances"] = true,
		["SpecializationRequirements"] = true,
		["SummarizeThings"] = true,
		["Warn:Difficulty"] = true,
		["Warn:Removed"] = true,
		["Currencies"] = true,
		["QuestChain:Nested"] = true,
		["WorldQuestsList:Currencies"] = true,
		["ProfessionRequirements"] = true,
		["LevelRequirements"] = true,
		["CompletedBy"] = true,
		["Updates:AdHoc"] = true,
	},
}

local RawSettings
settings.Initialize = function(self)
	-- app.PrintDebug("settings.Initialize")

	-- Assign the default settings
	if not settings:ApplyProfile() then
		if not AllTheThingsSettings then AllTheThingsSettings = {} end
		RawSettings = AllTheThingsSettings
		if not RawSettings.General then RawSettings.General = {} end
		if not RawSettings.Tooltips then RawSettings.Tooltips = {} end
		if not RawSettings.Unobtainable then RawSettings.Unobtainable = {} end
		setmetatable(RawSettings.General, GeneralSettingsBase)
		setmetatable(RawSettings.Tooltips, TooltipSettingsBase)
	end

	-- Assign the preset filters for your character class as the default states
	if not AllTheThingsSettingsPerCharacter then AllTheThingsSettingsPerCharacter = {} end
	if not AllTheThingsSettingsPerCharacter.Filters then AllTheThingsSettingsPerCharacter.Filters = {} end
	setmetatable(AllTheThingsSettingsPerCharacter.Filters, FilterSettingsBase)
	FilterSettingsBase.__index = app.Presets[app.Class] or app.Presets.ALL

	-- force re-enable of optional filters which become not optional
	-- (any filterID's here must be 'true' in all class presets)
	local reEnableFilters = { }
	for _,filterID in ipairs(reEnableFilters) do
		if not AllTheThingsSettingsPerCharacter.Filters[filterID] then
			AllTheThingsSettingsPerCharacter.Filters[filterID] = nil
		end
	end

	self.sliderSummarizeThings:SetValue(self:GetTooltipSetting("ContainsCount") or 25)
	self.sliderSourceLocations:SetValue(self:GetTooltipSetting("Locations") or 5)
	self.sliderMainListScale:SetValue(self:GetTooltipSetting("MainListScale"))
	self.sliderMiniListScale:SetValue(self:GetTooltipSetting("MiniListScale"))
	self.sliderPercentagePrecision:SetValue(self:GetTooltipSetting("Precision"))
	self.sliderMinimapButtonSize:SetValue(self:GetTooltipSetting("MinimapSize"))
	if self:GetTooltipSetting("MinimapButton") then
		if not app.Minimap then app.Minimap = app.CreateMinimapButton() end
		app.Minimap:Show()
	elseif app.Minimap then
		app.Minimap:Hide()
	end
	self:UpdateMode()

	if self:GetTooltipSetting("Auto:MainList") then
		app:GetWindow("Prime"):Show()
	end
	if self:GetTooltipSetting("Auto:RaidAssistant") then
		app:GetWindow("RaidAssistant"):Show()
	end
	if self:GetTooltipSetting("Auto:WorldQuestsList") then
		app:GetWindow("WorldQuests"):Show()
	end

	-- Account Synchronization
	if self:GetTooltipSetting("Auto:Sync") then
		app:Synchronize(true)
	end

	app._SettingsRefresh = GetTimePreciseSec()
	settings._Initialize = true
	-- app.PrintDebug("settings.Initialize:Done")
end
local function rawcopy(source, copy)
	if source and copy then
		for k,v in pairs(source) do
			copy[k] = v
		end
	end
end
-- Creates, assigns, and returns a RawSettings object for a given Profile Key
settings.NewProfile = function(self, key)
	if AllTheThingsProfiles and key then
		-- cannot create existing profile name
		if AllTheThingsProfiles.Profiles[key] then return end

		local raw = {
			General = {},
			Tooltips = {},
			Unobtainable = {},
			Windows = {},
		}
		-- Use Ad-Hoc for new Profiles, to remove initial lag
		raw.Tooltips["Updates:AdHoc"] = true
		AllTheThingsProfiles.Profiles[key] = raw
		return raw
	end
end
-- Creates, assigns, copies existing, and returns a RawSettings object for a given Profile Key
settings.CopyProfile = function(self, key, copyKey)
	if AllTheThingsProfiles then
		key = key or settings:GetProfile()
		-- don't try to copy the same profile
		if key == copyKey then return end
		-- delete the existing profile manually
		AllTheThingsProfiles.Profiles[key] = nil
		-- re-create the profile
		local raw = settings:NewProfile(key)
		local copy = AllTheThingsProfiles.Profiles[copyKey]
		if copy then
			rawcopy(copy.General, raw.General)
			rawcopy(copy.Tooltips, raw.Tooltips)
			rawcopy(copy.Unobtainable, raw.Unobtainable)
			rawcopy(copy.Windows, raw.Windows)
		end
		return raw
	end
end
-- Removes a Profile
settings.DeleteProfile = function(self, key)
	if AllTheThingsProfiles and key and key ~= "Default" then
		AllTheThingsProfiles.Profiles[key] = nil
		-- deleting the current character's profile, reassign to Default
		if key == AllTheThingsProfiles.Assignments[app.GUID] then
			AllTheThingsProfiles.Assignments[app.GUID] = nil
			settings.ApplyProfile()
		end
		-- deleting a profile used by other characters, they too will reset to default
		for char,profKey in pairs(AllTheThingsProfiles.Assignments) do
			if profKey == key then
				AllTheThingsProfiles.Assignments[char] = nil
			end
		end
		return true
	end
end
-- Gets the Profile for the current character
settings.GetProfile = function(self, localized)
	if AllTheThingsProfiles then
		return AllTheThingsProfiles.Assignments[app.GUID] or (localized and DEFAULT or "Default")
	end
end
-- Sets a Profile for the current character
settings.SetProfile = function(self, key)
	if AllTheThingsProfiles and key then
		-- don't assign Default... it's Default...
		if key == "Default" then key = nil end
		AllTheThingsProfiles.Assignments[app.GUID] = key
	end
end
-- Applies the profile for the current character as the base settings table
settings.ApplyProfile = function()
	if AllTheThingsProfiles then
		local key = settings:GetProfile()
		RawSettings = AllTheThingsProfiles.Profiles[key]
		if not RawSettings then
			RawSettings = settings:NewProfile(key)
		end
		setmetatable(RawSettings.General, GeneralSettingsBase)
		setmetatable(RawSettings.Tooltips, TooltipSettingsBase)

		-- apply window positions when applying a Profile
		if RawSettings.Windows then
			for suffix,_ in pairs(RawSettings.Windows) do
				settings.SetWindowFromProfile(suffix)
			end
		end

		if app.IsReady and settings:Get("Profile:ShowProfileLoadedMessage") then
			app.print(L["PROFILE"]..":",settings:GetProfile(true))
		end
		return true
	end
end
-- Allows moving an ATT window based on the position stored in the current Profile
-- This would be used when creating a Window initially during a game session
settings.SetWindowFromProfile = function(suffix)
	local points = RawSettings and RawSettings.Windows and RawSettings.Windows[suffix]
	local window = app.Windows[suffix]
	-- print("SetWindowFromProfile",suffix,points,window)
	if window then
		if RawSettings then
			if suffix == "Prime" then
				window:SetScale(settings:GetTooltipSetting("MainListScale"))
			else
				window:SetScale(settings:GetTooltipSetting("MiniListScale"))
			end
		end
		if points then
			-- only allow setting positions for Windows which are inherently movable
			if window:IsMovable() then
				window:ClearAllPoints()
				for _,point in ipairs(points) do
					if point.Point then
						window:SetPoint(point.Point, UIParent, point.PointRef, point.X, point.Y)
						-- print("SetPoint",suffix,point.Point, point.PointRef, point.X, point.Y)
					end
				end
				if points.Width then
					window:SetWidth(points.Width)
					-- print("SetWidth",suffix,points.Width)
				end
				if points.Height then
					window:SetHeight(points.Height)
					-- print("SetHeight",suffix,points.Height)
				end
				window.isLocked = points.Locked
			else
				-- if positions were stored accidentally for un-movable windows, clear them
				app.print("Removed Anchors for un-movable ATT window",suffix)
				RawSettings.Windows[suffix] = nil
			end
		end
		-- Apply the user-set colours
		local rBg, gBg, bBg, aBg, rBd, gBd, bBd, aBd

		-- User-saved colors
		rBg = tonumber(settings:Get("Window:BackgroundColor").r) or 0
		gBg = tonumber(settings:Get("Window:BackgroundColor").g) or 0
		bBg = tonumber(settings:Get("Window:BackgroundColor").b) or 0
		aBg = tonumber(settings:Get("Window:BackgroundColor").a) or 0

		-- Border colors
		if settings:GetTooltipSetting("Window:UseClassForBorder") then
			-- Set all the borders to the current class color
			local _, class = UnitClass("player")
			rBd, gBd, bBd = GetClassColor(class)
			aBd = 1
		else
			-- User-saved colors
			rBd = tonumber(settings:Get("Window:BorderColor").r) or 0
			gBd = tonumber(settings:Get("Window:BorderColor").g) or 0
			bBd = tonumber(settings:Get("Window:BorderColor").b) or 0
			aBd = tonumber(settings:Get("Window:BorderColor").a) or 0
		end

		for suffix, window in pairs(AllTheThings.Windows) do
			window:SetBackdropColor(rBg, gBg, bBg, aBg)
			window:SetBackdropBorderColor(rBd, gBd, bBd, aBd)
		end
	end
end
settings.CheckSeasonalDate = function(self, eventID, startMonth, startDay, endMonth, endDay)
	local today = date("*t")
	local now, start, ends = time({day=today.day,month=today.month,year=today.year,hour=0,min=0,sec=0})
	if startMonth <= endMonth then
		start = time({day=startDay,month=startMonth,year=today.year,hour=0,min=0,sec=0})
		ends = time({day=endDay,month=endMonth,year=today.year,hour=0,min=0,sec=0})
	else
		local year = today.year
		if today.month < startMonth then year = year - 1 end
		start = time({day=startDay,month=startMonth,year=year,hour=0,min=0,sec=0})
		ends = time({day=endDay,month=endMonth,year=year + 1,hour=0,min=0,sec=0})
	end

	local active = (now >= start and now <= ends)
	app.ActiveEvents[eventID] = active

	-- TODO: If AllTheThings is ever going to support OG Classic in this addon, this statement is untrue currently.
	app.PrintDebug("CheckSeasonalDate: This should no longer be called")
end
settings.Get = function(self, setting, container)
	return RawSettings.General[setting]
end
settings.GetValue = function(self, container, setting)
	return RawSettings[container][setting]
end
settings.GetUnobtainable = function(self, u)
	return not u or RawSettings.Unobtainable[u]
end
settings.GetFilter = function(self, filterID)
	return AllTheThingsSettingsPerCharacter.Filters[filterID]
end
settings.GetRawFilters = function(self)
	return AllTheThingsSettingsPerCharacter.Filters;
end
settings.GetRawSettings = function(self, name)
	return RawSettings[name];
end
settings.GetModeString = function(self)
	local mode = L["MODE"]
	if settings:Get("Thing:Transmog") or settings:Get("DebugMode") then
		if self:Get("Completionist") then
			mode = L["TITLE_COMPLETIONIST"] .. mode
		else
			mode = L["TITLE_UNIQUE_APPEARANCE"] .. mode
		end
	end
	if self:Get("DebugMode") then
		mode = L["TITLE_DEBUG"] .. mode
	else
		if self:Get("AccountMode") then
			if self:Get("FactionMode") then
				local englishFaction = UnitFactionGroup("player")
				if englishFaction == "Alliance" then
					mode = L["TITLE_ALLIANCE"] .. " " .. mode
				elseif englishFaction == "Horde" then
					mode = L["TITLE_HORDE"] .. " " .. mode
				else
					mode = L["TITLE_NEUTRAL"] .. " " .. mode
				end
			else
				mode = L["TITLE_ACCOUNT"] .. mode
			end
		elseif self:Get("MainOnly") and not self:Get("Completionist") then
			mode = app.ClassName .. " " .. mode .. L["TITLE_MAIN_ONLY"]
		else
			mode = app.ClassName .. " " .. mode
		end

		local things = {}
		local thingCount = 0
		local totalThingCount = 0
		local keyPrefix
		local solo = true
		for key,_ in pairs(GeneralSettingsBase.__index) do
			keyPrefix = string.sub(key, 1, 6)
			if keyPrefix == "Thing:" then
				totalThingCount = totalThingCount + 1
				if settings:Get(key) and
					-- Heirloom Upgrades only count when Heirlooms are enabled
					(key ~= "Thing:HeirloomUpgrades" or settings:Get("Thing:Heirlooms"))
					then
					thingCount = thingCount + 1
					table.insert(things, string.sub(key, 7))
				end
			elseif solo and keyPrefix == "Accoun" and settings:Get(key) then
				-- TODO: a bit wonky that a disabled Thing with AccountWide checked can make it non-solo...
				solo = nil
			end
		end
		if thingCount == 0 then
			mode = L["TITLE_NONE_THINGS"] .. mode
		elseif thingCount == 1 then
			mode = things[1] .. L["TITLE_ONLY"] .. mode
		elseif thingCount == 2 then
			mode = things[1] .. " + " .. things[2] .. L["TITLE_ONLY"] .. mode
		elseif thingCount == totalThingCount then
			-- only insane if not hiding anything!
			if settings:NonInsane() then
				-- don't add insane :)
			else
				mode = L["TITLE_INSANE"] .. mode
			end
		elseif not settings:Get("Thing:Transmog") then
			mode = L["TITLE_SOME_THINGS"] .. mode
		end
		if solo then
			mode = L["TITLE_SOLO"]..mode
		end
	end
	if self:Get("Filter:ByLevel") then
		mode = L["TITLE_LEVEL"] .. app.Level .. " " .. mode
	end
	-- Waiting on Refresh to properly show values
	if self.NeedsRefresh then
		mode = L["AFTER_REFRESH"] .. ": " .. mode
	end
	return mode
end
settings.GetShortModeString = function(self)
	if self:Get("DebugMode") then
		return "D"
	else
		local things = {}
		local thingCount = 0
		local totalThingCount = 0
		local keyPrefix
		local solo = true
		for key,_ in pairs(GeneralSettingsBase.__index) do
			keyPrefix = string.sub(key, 1, 6)
			if keyPrefix == "Thing:" then
				totalThingCount = totalThingCount + 1
				if settings:Get(key) and
					-- Heirloom Upgrades only count when Heirlooms are enabled
					(key ~= "Thing:HeirloomUpgrades" or settings:Get("Thing:Heirlooms"))
					then
					thingCount = thingCount + 1
					table.insert(things, string.sub(key, 7))
				end
			elseif solo and keyPrefix == "Accoun" and settings:Get(key) then
				solo = nil
			end
		end
		local style = ""
		if thingCount == 0 then
			style = "N"
		elseif thingCount == totalThingCount then
			-- only insane if not hiding anything!
			if settings:NonInsane() then
				-- don't add insane :)
			else
				style = "I"
			end
		else
			style = ""
		end
		if solo then
			style = "S"..style
		end
		-- Waiting on Refresh to properly show values
		if self.NeedsRefresh then
			style = "R:" .. " " .. style
		end
		if self:Get("Completionist") then
			if self:Get("AccountMode") then
				return style .. "AC"
			else
				return style .. "C"
			end
		else
			if self:Get("AccountMode") then
				return style .. "AU"
			elseif self:Get("MainOnly") then
				return style .. "UM"
			else
				return style .. "U"
			end
		end
	end
end
-- Returns true if something is being hidden/filtered and removing Insane status
settings.NonInsane = function(self)
	local ccs = app.CurrentCharacter and app.CurrentCharacter.CustomCollects and app.CurrentCharacter.CustomCollects
	return
	-- Hiding BoE's
	self:Get("Hide:BoEs")
	-- Hiding PvP
	or self:Get("Hide:PvP")
	-- Hiding Pet Battles
	or not self:Get("Show:PetBattles")
	-- Hiding any Seasonal content
	or self:Get("Show:OnlyActiveEvents")
	-- Non-Account Mode with Covenants filtered
	or (not self:Get("AccountMode")
		-- TODO: maybe track custom collect filters through a different Get method for easier logic
		and (not (ccs["SL_COV_KYR"] or self:Get("CC:SL_COV_KYR"))
			or not (ccs["SL_COV_NEC"] or self:Get("CC:SL_COV_NEC"))
			or not (ccs["SL_COV_NFA"] or self:Get("CC:SL_COV_NFA"))
			or not (ccs["SL_COV_VEN"] or self:Get("CC:SL_COV_VEN"))))
end
settings.GetPersonal = function(self, setting)
	return AllTheThingsSettingsPerCharacter[setting]
end
settings.GetTooltipSetting = function(self, setting)
	return RawSettings.Tooltips[setting]
end
do
local ModifierFuncs = {
	["Shift"] = IsShiftKeyDown,
	["Ctrl"] = IsControlKeyDown,
	["Alt"] = IsAltKeyDown,
	["Cmd"] = IsMetaKeyDown,
}
-- only returns 'true' for the requested TooltipSetting if the Setting's associated Modifier key is currently being pressed
settings.GetTooltipSettingWithMod = function(self, setting)
	local v = RawSettings.Tooltips[setting]
	if not v then return v end
	local k = RawSettings.Tooltips[setting..":Mod"]
	if k == "None" then
		return v
	end
	local func = ModifierFuncs[k]
	if func and func() then
		return v
	end
end
end
settings.Set = function(self, setting, value)
	RawSettings.General[setting] = value
	self:Refresh()
end
settings.SetValue = function(self, container, setting, value)
	RawSettings[container][setting] = value
	self:Refresh()
end
settings.SetFilter = function(self, filterID, value)
	AllTheThingsSettingsPerCharacter.Filters[filterID] = value
	self:UpdateMode(1)
end
settings.SetTooltipSetting = function(self, setting, value)
	RawSettings.Tooltips[setting] = value
	wipe(app.searchCache)
	self:Refresh()
end
settings.SetPersonal = function(self, setting, value)
	AllTheThingsSettingsPerCharacter[setting] = value
	self:Refresh()
end

do
local function Refresh(self)
	local objects = self.Objects
	-- app.PrintDebug("Settings.Refresh",objects and #objects)
	if objects then
		for _,object in ipairs(objects) do
			if object.OnRefresh then object:OnRefresh() end
			if object.RefreshChildren then object:RefreshChildren() end
		end
	end
	-- app.PrintDebug("Settings.Refresh:Done")
	self.__Refreshing = nil
end
settings.Refresh = function(self)
	-- apparently child components have the audacity to tell the parent it should refresh itself... so insubordinate
	if self.__Refreshing then return end
	self.__Refreshing = true
	settings.Callback(Refresh, self)
end
end

-- Applies a basic backdrop color to a given frame
-- r/g/b expected in 1-255 range
settings.ApplyBackdropColor = function(frame, r, g, b, a)
	frame.back = frame:CreateTexture(nil, "BACKGROUND")
	frame.back:SetColorTexture(r/255,g/255,b/255,a)
	frame.back:SetAllPoints(frame)
end
local function Mixin(o, mixin)
	for k,v in pairs(mixin) do
		o[k] = v;
	end
	return o;
end
local ATTSettingsObjectMixin, ATTSettingsPanelMixin;
-- Mixins
do
ATTSettingsObjectMixin = {
	-- Performs SetPoint anchoring against the 'other' frame to align this Checkbox below it. Allows an 'indent' which defines how many steps of indentation to
	-- apply either positive (right) or negative (left), or specifying another frame against which to LEFT-align
	AlignBelow = function(self, other, indent)
		if type(indent) == "number" then
			self:SetPoint("TOPLEFT", other, "BOTTOMLEFT", indent * 8, 4)
		elseif type(indent) == "table" then
			self:SetPoint("TOP", other, "BOTTOM", 0, 4)
			self:SetPoint("LEFT", indent, "LEFT")
		else
			self:SetPoint("TOPLEFT", other, "BOTTOMLEFT", 0, 4)
		end
	end,
	-- Performs SetPoint anchoring against the 'other' frame to align this Checkbox after it (right)
	AlignAfter = function(self, other, add)
		local text = other.Text
		add = add or 0;
		if text and text:GetText() then
			self:SetPoint("TOP", other, "TOP")
			self:SetPoint("LEFT", other.Text, "RIGHT", 4 + add, 0)
		else
			self:SetPoint("LEFT", other, "RIGHT", -4 + add, 0)
		end
	end,
	-- Disables, checks, fades the checkbox
	OnRefreshCheckedDisabled = function(self)
		if self.SetChecked then
			self:SetChecked(true)
		end
		if self.Disable then
			self:Disable()
		end
		if self.SetAlpha then
			self:SetAlpha(0.4)
		end
	end,
	-- Creates a font string attached to the top of the provided frame with the given text
	AddLabel = function(self, text)
		local label = self:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
		Mixin(label, ATTSettingsObjectMixin);
		self:RegisterObject(label);
		label:SetPoint("BOTTOMLEFT", self, "TOPLEFT", 0, -2)
		label:SetJustifyH("LEFT")
		label:SetHeight(18)
		label:SetText(text)
		return label
	end,
	-- Registers an Object within itself
	RegisterObject = function(self, o)
		if not self.Objects then self.Objects = {} end
		tinsert(self.Objects, o);
	end,
	-- Allows an Object to Refresh all Objects
	RefreshChildren = function(self)
		local objects = self.Objects
		if objects then
			for _,object in ipairs(objects) do
				if object.OnRefresh then object:OnRefresh() end
				if object.RefreshChildren then object:RefreshChildren() end
			end
		end
	end
};
ATTSettingsPanelMixin = {
	-- Create a header label
	CreateHeaderLabel = function(self, text)
		-- Create the header label
		local headerLabel = self:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
		Mixin(headerLabel, ATTSettingsObjectMixin);
		self:RegisterObject(headerLabel);
		headerLabel:SetJustifyH("LEFT")
		headerLabel:SetText(text)
		headerLabel:SetWordWrap(false)
		headerLabel:Show()

		-- Return the header label
		return headerLabel
	end,
	-- Create a text label, which defaults to the entire width of the options frame
	CreateTextLabel = function(self, text)
		-- Create the text label
		local textLabel = self:CreateFontString(nil, "ARTWORK", "GameFontNormal")
		Mixin(textLabel, ATTSettingsObjectMixin);
		self:RegisterObject(textLabel);
		textLabel:SetJustifyH("LEFT")
		textLabel:SetText(text)
		textLabel:SetWidth(640)	-- This can be manually adjusted afterwards to 320 for half-columns
		textLabel:Show()

		-- Return the text label
		return textLabel
	end,
	CreateCheckBox = function(self, text, OnRefresh, OnClick)
		if not text then
			print("Invalid Checkbox Info")
			text = "INVALID CHECKBOX"
		end
		local cb = CreateFrame("CheckButton", self:GetName() .. "-" .. text, self, "InterfaceOptionsCheckButtonTemplate")
		Mixin(cb, ATTSettingsObjectMixin);
		self:RegisterObject(cb);
		if OnClick then cb:SetScript("OnClick", OnClick) end
		cb.OnRefresh = OnRefresh or cb.OnRefreshCheckedDisabled
		cb.Text:SetText(text)
		cb.Text:SetScale(1.1)
		cb.Text:SetWordWrap(false)
		cb:SetHitRectInsets(0,0 - cb.Text:GetUnboundedStringWidth(),0,0);
		return cb
	end,
	--- Opts:
	---     name (string): Name of the dropdown (lowercase)
	---     items (Table): String table of the dropdown options.
	---     defaultVal (String): String value for the dropdown to default to (empty otherwise).
	---     changeFunc (Function): A custom function to be called, after selecting a dropdown option.
	-- Reference: https://medium.com/@JordanBenge/creating-a-wow-dropdown-menu-in-pure-lua-db7b2f9c0364
	CreateDropdown = function(self, opts, OnRefresh)
		error("DO NOT USE THIS METHOD")
		local dropdown_name = self:GetName().."DD"..(opts.name or settings.UniqueCounter.CreateDropdown)
		local menu_items = opts.items or {}
		local title_text = opts.title or ""
		local width = opts.width or 0
		local default_val = opts.defaultVal or ""
		local change_func = opts.changeFunc or function() end
		local template = opts.template or "UIDropDownMenuTemplate"

		local dropdown = CreateFrame("Frame", dropdown_name, self, template)
		Mixin(dropdown, ATTSettingsObjectMixin);
		self:RegisterObject(dropdown);
		dropdown:SetHeight(19)
		local dd_title = dropdown:AddLabel(title_text)

		-- Sets the dropdown width to the largest item string width.
		if width == 0 then
			for _,item in ipairs(menu_items) do
				dd_title:SetText(item)
				local text_width = dd_title:GetStringWidth() + 5
				if text_width > width then
					width = text_width
				end
			end
		end
		dd_title:SetText(title_text)

		--[[
		function UIDropDownMenu_Initialize(frame, initFunction, displayMode, level, menuList)
			frame.menuList = menuList
			securecall("UIDropDownMenu_InitializeHelper", frame) -- <-- this function is cancer
			-- Set the initialize function and call it.  The initFunction populates the dropdown list.
			if ( initFunction ) then
				UIDropDownMenu_SetInitializeFunction(frame, initFunction)
				initFunction(frame, level, frame.menuList)
			end
			--master frame
			if(level == nil) then
				level = 1
			end
			local dropDownList = _G["DropDownList"..level]
			dropDownList.dropdown = frame
			dropDownList.shouldRefresh = true
			UIDropDownMenu_SetDisplayMode(frame, displayMode)
		end
		]]
		-- UIDROPDOWNMENU_OPEN_MENU = dropdown
		UIDropDownMenu_SetInitializeFunction(dropdown,
			function(self)
				local info
				for key, val in pairs(menu_items) do
					info = {}
					info.text = val
					info.checked = false
					-- info.menuList = key
					info.hasArrow = false
					info.owner = dropdown
					info.func = function(b, arg1, arg2, checked)
						-- print("Dropdown option clicked",b.value,arg1,arg2,checked)
						UIDropDownMenu_SetSelectedName(dropdown, b.value)
						b.checked = true
						change_func(dropdown, b.value)
					end
					UIDropDownMenu_AddButton(info)
				end
			end)
		-- call the initialize function now that it's been set
		dropdown:initialize()
		UIDropDownMenu_SetDisplayMode(dropdown, "MENU")
		UIDropDownMenu_SetWidth(dropdown, width, 5)
		UIDropDownMenu_SetSelectedName(dropdown, default_val)
		-- UIDropDownMenu_Initialize(dropdown,
		-- 	,
		-- 	"MENU",
		-- 	dropdown_name)
		-- UIDROPDOWNMENU_OPEN_MENU = nil

		dropdown.OnRefresh = OnRefresh

		-- UIDropDownMenu_SetText(dropdown, default_val)
		dropdown:SetHitRectInsets(0,0,0,0)

		return dropdown
	end,
	CreateTextbox = function(self, opts, functions)

		local name = self:GetName().."TB"..(opts.name or settings.UniqueCounter.CreateTextbox)
		local title = opts.title
		local text = opts.text
		local width = opts.width or 150
		local template = opts.template or "InputBoxTemplate"

		local editbox = CreateFrame("EditBox", name, self, template)
		Mixin(editbox, ATTSettingsObjectMixin);
		self:RegisterObject(editbox);
		editbox:SetAutoFocus(false)
		editbox:SetTextInsets(0, 0, 3, 3)
		editbox:SetMaxLetters(256)
		editbox:SetHeight(19)
		editbox:SetWidth(width)

		if text then
			editbox:SetText(text)
		end

		if title then
			editbox:AddLabel(title)
		end

		-- setup textbox functions
		if functions then
			for k,f in pairs(functions) do
				editbox[k] = f
			end
		end
		-- print("created custom EditBox using",template)

		return editbox
		--[[ https://www.townlong-yak.com/framexml/live/go/BoxTemplate
		Virtual EditBox AuctionHouseLevelRangeEditBoxTemplate
		Virtual EditBox AuctionHouseQuantityInputEditBoxTemplate
		Virtual EditBox AuctionHouseSearchBoxTemplate
		Virtual EditBox AuthChallengeEditBoxTemplate
		Virtual EditBox AutoCompleteEditBoxTemplate
		Virtual EditBox BagSearchBoxTemplate
		Virtual EditBox ChatFrameEditBoxTemplate
		Virtual EditBox CommunitiesChatEditBoxTemplate
		Virtual EditBox CreateChannelPopupEditBoxTemplate
		Virtual EditBox InputBoxTemplate
		Virtual EditBox LargeInputBoxTemplate
		Virtual EditBox LargeMoneyInputBoxTemplate
		Virtual EditBox LFGListEditBoxTemplate
		Virtual EditBox NameChangeEditBoxTemplate
		Virtual EditBox SearchBoxTemplate
		Virtual EditBox SharedEditBoxTemplate
		Virtual EditBox StoreEditBoxTemplate
		]]
	end,
	CreateButton = function(self, opts, functions)

		local name = self:GetName().."B"..(opts.name or settings.UniqueCounter.CreateButton)
		local text = opts.text
		local width = opts.width
		local tooltip = opts.tooltip
		local refs = opts.refs
		local template = opts.template or "UIPanelButtonTemplate"

		local f = CreateFrame("Button", name, self, template)
		Mixin(f, ATTSettingsObjectMixin)
		self:RegisterObject(f)
		f:SetText(text)
		if width then
			f:SetWidth(width)
		else
			f:SetWidth(f:GetFontString():GetUnboundedStringWidth() + 20)
		end
		f:SetHeight(22)
		f:RegisterForClicks("AnyUp")

		if functions then
			for k,func in pairs(functions) do
				f:SetScript(k, func)
			end
		end

		if refs then
			for k,ref in pairs(refs) do
				f[k] = ref
			end
		end

		if tooltip then
			f:SetATTTooltip(tooltip)
		end

		table.insert(settings.Objects, f)
		f:Show()

		return f
	end,
	-- Returns the frame which will be offset by the associated scrollbar
	-- .ScrollContainer - the frame which acts as the scrollable area within which the scrollframe will be visible
	-- :SetMaxScroll(max) - change how much the scrollbar is able to scroll the scrollframe
	-- :CreateCheckBox(text, OnRefresh, OnClick) - create a checkbox attached to the scrollable area
	CreateScrollFrame = function(self)
		-- Create the ScrollFrame
		local scrollFrame = CreateFrame("ScrollFrame", settings:GetName().."SF"..settings.UniqueCounter.AddScrollframe, self, "ScrollFrameTemplate")
		local child = CreateFrame("Frame", settings:GetName().."SCF"..settings.UniqueCounter.AddScrollableframe)
		Mixin(child, ATTSettingsPanelMixin);
		self:RegisterObject(child);
		scrollFrame:SetScrollChild(child)
		child:SetWidth(1)	-- This is automatically defined, so long as the attribute exists at all
		child:SetHeight(1)	-- This is automatically defined, so long as the attribute exists at all
		child.ScrollContainer = scrollFrame
		-- Move the Scrollbar inside of the frame which it scrolls
		scrollFrame.ScrollBar:SetPoint("RIGHT", -36, 0)

		-- local scrollFrame = CreateFrame("Frame", settings:GetName().."SF"..settings.UniqueCounter.AddScrollframe, self, "ScrollFrameTemplate")
		-- scrollFrame:SetClipsChildren(true)
		-- scrollFrame:EnableMouseWheel(true)

		-- local child = CreateFrame("Frame", settings:GetName().."SCF"..settings.UniqueCounter.AddScrollableframe, scrollFrame)
		-- Mixin(child, ATTSettingsPanelMixin)
		-- self:RegisterObject(child)
		-- child:SetPoint("TOP")
		-- child:SetPoint("RIGHT", -scrollWidth, 0)
		-- child:SetPoint("LEFT")

		-- local scrollbar
		-- if SCROLL_FRAME_SCROLL_BAR_TEMPLATE then
		-- 	scrollbar = CreateFrame("EventFrame", settings:GetName().."SB"..settings.UniqueCounter.AddScrollbar, scrollFrame, SCROLL_FRAME_SCROLL_BAR_TEMPLATE)
		-- 	scrollbar:SetPoint("TOPRIGHT", scrollFrame, -8, 0)
		-- 	scrollbar:SetPoint("BOTTOMRIGHT", scrollFrame, -8, 0)
		-- 	scrollbar:SetHideIfUnscrollable(false)
		-- 	scrollbar:SetHideTrackIfThumbExceedsTrack(false)

		-- 	local CurrentValue, MaxValue = 0, 100
		-- 	scrollbar:SetPanExtentPercentage(0.25)
		-- 	scrollbar:SetScrollPercentage(0)
		-- 	scrollbar:RegisterCallback(BaseScrollBoxEvents.OnScroll, function(o, scrollPercentage)
		-- 		CurrentValue = scrollPercentage * MaxValue
		-- 		child:SetPoint("TOP", 0, CurrentValue)
		-- 	end, scrollFrame)
		-- 	scrollFrame:SetScript("OnMouseWheel", function(self, delta)
		-- 	scrollbar:ScrollStepInDirection(-delta)
		-- 	end)

		-- 	child.SetMaxScroll = function(frame, maxValue)
		-- 		MaxValue = maxValue
		-- 		scrollbar:SetVisibleExtentPercentage(100 / maxValue)
		-- 		scrollbar:ScrollStepInDirection(-0.01)
		-- 		scrollbar:ScrollStepInDirection(0.01)
		-- 	end
		-- else
		-- 	local CurrentValue = 0
		-- 	scrollbar = CreateFrame("Slider", settings:GetName().."SB"..settings.UniqueCounter.AddScrollbar, scrollFrame, "UIPanelScrollBarTemplate")
		-- 	scrollbar:SetPoint("TOPRIGHT", scrollFrame, 0, -scrollWidth)
		-- 	scrollbar:SetPoint("BOTTOMRIGHT", scrollFrame, 0, scrollWidth)
		-- 	scrollbar:SetScript("OnValueChanged", function(self, delta)
		-- 		local un = math.floor(delta)
		-- 		local up = un + 1
		-- 		CurrentValue = (up - delta) > (-(un - delta)) and un or up
		-- 		child:SetPoint("TOP", 0, CurrentValue)
		-- 	end)
		-- 	scrollbar.back = scrollbar:CreateTexture(nil, "BACKGROUND")
		-- 	scrollbar.back:SetColorTexture(0.1,0.1,0.1,1)
		-- 	scrollbar.back:SetAllPoints(scrollbar)
		-- 	scrollbar:SetMinMaxValues(0, 100)
		-- 	scrollbar:SetValueStep(10)
		-- 	scrollbar.CurrentValue = 0
		-- 	scrollbar:SetWidth(scrollWidth)
		-- 	scrollFrame:SetScript("OnMouseWheel", function(self, delta)
		-- 		scrollbar:SetValue(CurrentValue - (delta * 40)) -- Last number here controls scroll speed.
		-- 	end)
		-- 	child.SetMaxScroll = function(frame, maxValue)
		-- 		scrollbar:SetMinMaxValues(0, maxValue)
		-- 		scrollbar:SetValue(25)
		-- 		scrollbar:SetValue(0)
		-- 	end
		-- end

		return child
	end,
	CreateCheckBoxWithCount = function(self, text, OnRefresh, OnClick)
		local box = self:CreateCheckBox(text, OnRefresh, OnClick)
		Mixin(box, ATTSettingsObjectMixin)
		box:SetParent(self)
		self:RegisterObject(box)
		if not self.ATT then self.ATT = { CB = { }, CB_Count = 0 } end
		if not self.ATT.CB then self.ATT.CB = {} self.ATT.CB_Count = 0 end
		local count = self.ATT.CB_Count + 1
		self.ATT.CB[count] = box
		self.ATT.CB_Count = count
		return box
	end,
};
-- All Object mixins apply to the Panels as well
Mixin(ATTSettingsPanelMixin, ATTSettingsObjectMixin);
end

Mixin(settings, ATTSettingsPanelMixin);

-- Create a scrollframe and nested subcategory
settings.CreateOptionsPage = function(self, name, nested)
	-- Create the ScrollFrame
	local scrollFrame = CreateFrame("ScrollFrame", settings:GetName().."SF"..settings.UniqueCounter.AddScrollframe, self, "ScrollFrameTemplate")
	local scrollChild = CreateFrame("Frame", settings:GetName().."SCF"..settings.UniqueCounter.AddScrollableframe)
	Mixin(scrollChild, ATTSettingsPanelMixin);
	self:RegisterObject(scrollChild);
	scrollFrame:SetScrollChild(scrollChild)
	scrollChild:SetWidth(1)	-- This is automatically defined, so long as the attribute exists at all
	scrollChild:SetHeight(1)	-- This is automatically defined, so long as the attribute exists at all

	if nested == false then
		-- Set the scrollFrame to its proper size (only needed for top-level category)
		scrollFrame:SetPoint("TOPLEFT", 0, 0)
		scrollFrame:SetPoint("BOTTOMRIGHT", -25, 0)	-- Allow space for the scrollbar
	end

	if nested == true then
		-- Move the scrollbar to its proper position (only needed for subcategories)
		scrollFrame.ScrollBar:ClearPoint("RIGHT")
		scrollFrame.ScrollBar:SetPoint("RIGHT", -36, 0)

		-- Create the nested subcategory
		local subcategory = scrollFrame
		subcategory.name = name
		subcategory.parent = "AllTheThings"
		InterfaceOptions_AddCategory(subcategory)
	end

	-- Return the scrollable child
	return scrollChild
end

settings.ShowCopyPasteDialog = function(self)
	app:ShowPopupDialogWithEditBox(nil, self:GetText(), nil, 10)
end

settings.SetAccountMode = function(self, accountMode)
	self:Set("AccountMode", accountMode)
	self:UpdateMode(1)
end
settings.ToggleAccountMode = function(self)
	self:ForceRefreshFromToggle()
	self:SetAccountMode(not self:Get("AccountMode"))
end
settings.SetCompletionistMode = function(self, completionistMode)
	self:Set("Completionist", completionistMode)
	app.DoRefreshAppearanceSources = true
	self:UpdateMode(1)
end
settings.ToggleCompletionistMode = function(self)
	self:ForceRefreshFromToggle()
	self:SetCompletionistMode(not self:Get("Completionist"))
end
settings.SetDebugMode = function(self, debugMode)
	self:Set("DebugMode", debugMode)
	if debugMode then
		-- cache the current settings to re-apply after
		settings:Set("Cache:CompletedGroups", settings:Get("Show:CompletedGroups"))
		settings:Set("Cache:CollectedThings", settings:Get("Show:CollectedThings"))
		settings:SetCompletedGroups(true, true)
		settings:SetCollectedThings(true, true)
		if not self:Get("Thing:Transmog") then
			app.DoRefreshAppearanceSources = true
		end
	else
		settings:SetCompletedGroups(settings:Get("Cache:CompletedGroups"), true)
		settings:SetCollectedThings(settings:Get("Cache:CollectedThings"), true)
	end
	self:UpdateMode(1)
end
settings.ToggleDebugMode = function(self)
	self:ForceRefreshFromToggle()
	self:SetDebugMode(not self:Get("DebugMode"))
end
settings.SetFactionMode = function(self, factionMode)
	self:Set("FactionMode", factionMode)
	self:UpdateMode(1)
end
settings.ToggleFactionMode = function(self)
	self:ForceRefreshFromToggle()
	self:SetFactionMode(not self:Get("FactionMode"))
end
settings.SetMainOnlyMode = function(self, mainOnly)
	self:Set("MainOnly", mainOnly)
	self:SetCompletionistMode(self:Get("Completionist"))
end
settings.ToggleMainOnlyMode = function(self)
	self:ForceRefreshFromToggle()
	self:SetMainOnlyMode(not self:Get("MainOnly"))
end
settings.SetCompletedThings = function(self, checked)
	self:Set("Show:CompletedGroups", checked)
	self:Set("Show:CollectedThings", checked)
	settings:Set("Cache:CompletedGroups", checked)
	settings:Set("Cache:CollectedThings", checked)
	self:UpdateMode(1)
end
settings.ToggleCompletedThings = function(self)
	self:ForceRefreshFromToggle()
	self:SetCompletedThings(not self:Get("Show:CompletedGroups"))
end
settings.SetCompletedGroups = function(self, checked, skipRefresh)
	self:Set("Show:CompletedGroups", checked)
	self:UpdateMode(not skipRefresh)
end
settings.ToggleCompletedGroups = function(self)
	self:ForceRefreshFromToggle()
	self:SetCompletedGroups(not self:Get("Show:CompletedGroups"))
	settings:Set("Cache:CompletedGroups", self:Get("Show:CompletedGroups"))
end
settings.SetCollectedThings = function(self, checked, skipRefresh)
	self:Set("Show:CollectedThings", checked)
	self:UpdateMode(not skipRefresh)
end
settings.ToggleCollectedThings = function(self)
	self:ForceRefreshFromToggle()
	settings:SetCollectedThings(not self:Get("Show:CollectedThings"))
	settings:Set("Cache:CollectedThings", self:Get("Show:CollectedThings"))
end
settings.SetHideBOEItems = function(self, checked)
	self:Set("Hide:BoEs", checked)
	self:UpdateMode(1)
end
settings.ToggleBOEItems = function(self)
	self:ForceRefreshFromToggle()
	self:SetHideBOEItems(not self:Get("Hide:BoEs"))
end
-- When we toggle a setting directly (keybind etc.) the refresh should always take place immediately,
-- so force it always
settings.ForceRefreshFromToggle = function(self)
	self.ToggleRefresh = true
end
-- Setup tracking for all Things based on the Settings value, or whether it is forcibly tracked or forced AccountWide
settings.SetThingTracking = function(self, force)
	if force == "Debug" then
		for _,thing in ipairs(Things) do
			self.AccountWide[thing] = true
			self.Collectibles[thing] = true
		end
	elseif force == "Account" then
		for _,thing in ipairs(Things) do
			self.AccountWide[thing] = true
			self.Collectibles[thing] = self:Get("Thing:"..thing)
		end
	else
		for _,thing in ipairs(Things) do
			self.AccountWide[thing] = self:Get("AccountWide:"..thing)
			self.Collectibles[thing] = self:Get("Thing:"..thing)
		end
	end
end
-- Updates various application settings and values based on toggled Settings, as well as the Mode name and Refreshes the Settings
settings.UpdateMode = function(self, doRefresh)
	local filterSet = app.Modules.Filter.Set
	if self:Get("Completionist") then
		filterSet.ItemSource()
		app.ActiveItemCollectionHelper = app.CompletionistItemCollectionHelper
	else
		if self:Get("MainOnly") and not self:Get("AccountMode") and not self:Get("DebugMode") then
			filterSet.ItemSource(true, true)
			app.ActiveItemCollectionHelper = app.UniqueModeItemCollectionHelperOnlyMain
		else
			filterSet.ItemSource(true)
			app.ActiveItemCollectionHelper = app.UniqueModeItemCollectionHelper
		end
	end
	if self:Get("DebugMode") then
		filterSet.Group()
		filterSet.Unobtainable()
		filterSet.Visible()
		filterSet.FilterID()
		filterSet.Class()
		filterSet.Race()
		filterSet.RequireSkill()
		filterSet.Event()
		filterSet.MinReputation()
		filterSet.CustomCollect()
		-- Default filter fallback in Debug mode is based on Show Completed toggles so that uncollectible/completed content can still be hidden in Debug if desired
		filterSet.DefaultGroup(not self:Get("Show:CompletedGroups"))
		filterSet.DefaultThing(not self:Get("Show:CollectedThings"))

		settings:SetThingTracking("Debug")
		app.MODE_ACCOUNT = nil
		app.MODE_DEBUG = true
	else
		filterSet.Visible(true)
		filterSet.Group(true)
		filterSet.DefaultGroup(true)
		filterSet.DefaultThing(true)
		-- specifically hiding something
		if settings:GetValue("Unobtainable", "DoFiltering") then
			filterSet.Unobtainable(true)
		else
			filterSet.Unobtainable()
		end
		if self:Get("Show:TrackableThings") then
			filterSet.Trackable(true)
		else
			filterSet.Trackable()
		end

		if self:Get("AccountMode") then
			filterSet.FilterID()
			filterSet.Class()
			filterSet.RequireSkill()
			filterSet.MinReputation()
			filterSet.CustomCollect()
			app.MODE_ACCOUNT = true
			if self:Get("FactionMode") then
				filterSet.Race(true, true)
			else
				filterSet.Race()
			end

			-- Force Account-Wide with Account Mode otherwise you get really dumb situations
			settings:SetThingTracking("Account")
		else
			filterSet.FilterID(true)
			filterSet.Class(true)
			filterSet.Race(true)
			filterSet.RequireSkill(true)
			filterSet.MinReputation(true)
			filterSet.CustomCollect(true)

			settings:SetThingTracking()
			app.MODE_ACCOUNT = nil
		end

		if self:Get("Show:OnlyActiveEvents") then
			filterSet.Event(true)
		else
			filterSet.Event()
		end

		app.MODE_DEBUG = nil
	end
	app.MODE_DEBUG_OR_ACCOUNT = app.MODE_DEBUG or app.MODE_ACCOUNT
	if self:Get("Show:CompletedGroups") then
		filterSet.CompletedGroups()
	else
		filterSet.CompletedGroups(true)
	end
	if self:Get("Show:CollectedThings") then
		filterSet.CompletedThings()
	else
		filterSet.CompletedThings(true)
	end
	if self.AccountWide.Achievements then
		app.AchievementFilter = 4
	else
		app.AchievementFilter = 13
	end
	if self:Get("Filter:BoEs") and not self:Get("Hide:BoEs") then
		filterSet.ItemUnbound(true)
	else
		filterSet.ItemUnbound()
	end
	if self:Get("Hide:BoEs") then
		filterSet.Bound(true)
	else
		filterSet.Bound()
	end
	if self:Get("Hide:PvP") then
		filterSet.PvP(true)
	else
		filterSet.PvP()
	end
	if self:Get("Show:PetBattles") then
		filterSet.PetBattles()
	else
		filterSet.PetBattles(true)
	end
	app:UnregisterEvent("PLAYER_LEVEL_UP")
	if self:Get("Filter:ByLevel") and not self:Get("DebugMode") then
		app:RegisterEvent("PLAYER_LEVEL_UP")
		filterSet.Level(true)
	else
		filterSet.Level()
	end
	app:UnregisterEvent("TAXIMAP_OPENED")
	if self:Get("Thing:FlightPaths") or self:Get("DebugMode") then
		app:RegisterEvent("TAXIMAP_OPENED")
	end

	-- refresh forced from toggle
	if self.ToggleRefresh then
		doRefresh = "FORCE"
		self.ToggleRefresh = nil
	end
	-- if auto-refresh
	if doRefresh then
		self.NeedsRefresh = true
	end
	-- app.PrintDebug("UpdateMode",doRefresh)
	-- FORCE = Force Update
	-- 1 = Force Update IF NOT Skip
	-- not = Soft Update
	doRefresh = doRefresh == "FORCE" or
		(doRefresh and not settings:Get("Skip:AutoRefresh"))

	if doRefresh then
		self.NeedsRefresh = nil
		if app.DoRefreshAppearanceSources then
			app.RefreshAppearanceSources()
		end
		app:RefreshData(nil,nil,true)
		app._SettingsRefresh = GetTimePreciseSec()
	else
		-- lazy refresh instead if ATT is ready
		if app.IsReady then
			app:RefreshData(true,nil,true)
		end
	end

	-- ensure the settings pane itself is refreshed
	self:Refresh()
end

--------------------
-- "General" page --
--------------------

-- SETUP
(function()
-- Create the page
local child = settings:CreateOptionsPage("General", false)

-- Creates a Checkbox used to designate tracking the specified 'trackingOption', based on tracking of 'parentTrackingOption' if specified
-- localeKey: The prefix of the locale lookup value (i.e. HEIRLOOMS_UPGRADES)
-- thing: The settings lookup for this tracking option (i.e. 'HeirloomUpgrades')
-- parentThing: The settings lookup which must be enabled for this tracking checkbox to be enabled (i.e. 'Heirlooms')
child.CreateTrackingCheckbox = function(frame, localeKey, thing, parentThing)
	local name = L[localeKey.."_CHECKBOX"]
	local tooltip = L[localeKey.."_CHECKBOX_TOOLTIP"]
	local trackingOption = "Thing:"..thing
	local parentTrackingOption
	if parentThing then
		parentTrackingOption = "Thing:"..parentThing
	end
	local cb = frame:CreateCheckBox(name,
		function(self)
			self:SetChecked(settings:Get(trackingOption))
			if settings:Get("DebugMode") or (parentTrackingOption and not settings:Get(parentTrackingOption)) then
				self:Disable()
				self:SetAlpha(0.4)
			else
				self:Enable()
				self:SetAlpha(1)
			end
		end,
		function(self)
			settings:Set(trackingOption, self:GetChecked())
			settings:UpdateMode(1)
		end
	)
	cb:SetATTTooltip(tooltip)
	return cb
end

-- Creates a Checkbox to use when a tracking option cannot be un-toggled for Account-Wide Tracking
child.CreateForcedAccountWideCheckbox = function(frame)
	local cb = frame:CreateCheckBox("")
	cb:SetCheckedTexture(app.asset("TrackAccountWide"))
	return cb
end

-- Creates a Checkbox to use for toggling 'Account-Wide' tracking of a specified Thing
-- localeKey: The prefix of the locale lookup value (i.e. ACHIEVEMENTS)
-- thing: The settings lookup for this tracking option (i.e. 'Achievements')
child.CreateAccountWideCheckbox = function(frame, localeKey, thing)
	local tooltip = L["ACCOUNT_WIDE_"..localeKey.."_TOOLTIP"]
	local trackingOption = "Thing:"..thing
	local accountWideOption = "AccountWide:"..thing
	local cb = child:CreateCheckBox("",
		function(self)
			self:SetChecked(app.MODE_DEBUG_OR_ACCOUNT or settings:Get(accountWideOption))
			if app.MODE_DEBUG_OR_ACCOUNT or not settings:Get(trackingOption) then
				self:Disable()
				self:SetAlpha(0.4)
			else
				self:Enable()
				self:SetAlpha(1)
			end
		end,
		function(self)
			settings:Set(accountWideOption, self:GetChecked())
			settings:UpdateMode(1)
		end
	)
	cb:SetCheckedTexture(app.asset("TrackAccountWide"))
	cb:SetATTTooltip(tooltip)
	return cb
end

-- CONTENT

-- Top 1
local logo = child:CreateTexture(nil, "ARTWORK")
logo:SetPoint("TOPLEFT", child, 0, 0)
logo:SetTexture(app.asset("Discord_2_64"));
logo:SetSize(36, 36)
logo:Show()

local headerTitle = child:CreateHeaderLabel(L["TITLE"])
headerTitle:SetPoint("CENTER", logo, 0, 0)
headerTitle:SetPoint("LEFT", logo, "RIGHT", 0, 0)
headerTitle:SetScale(1.5)

local buttonDiscord = child:CreateButton(
-- button settings
{
	text = L["DISCORD_BUTTON_LABEL"],
	tooltip = L["DISCORD_BUTTON_TOOLTIP"],
},
-- function hooks for the button
{
	OnClick = function(self)
		app:ShowPopupDialogWithEditBox(nil, "discord.gg/allthethings", nil, 10)
	end,
})
buttonDiscord:SetPoint("CENTER", headerTitle, 0, 0)
buttonDiscord:SetPoint("LEFT", headerTitle, "RIGHT", 10, 0)

local buttonTwitch = child:CreateButton(
-- button settings
{
	text = L["TWITCH_BUTTON_LABEL"],
	tooltip = L["TWITCH_BUTTON_TOOLTIP"],
},
-- function hooks for the button
{
	OnClick = function(self)
		app:ShowPopupDialogWithEditBox(nil, "twitch.tv/crieve", nil, 10)
	end,
})
buttonTwitch:SetPoint("TOPLEFT", buttonDiscord, "TOPRIGHT", 4, 0)

local buttonPatreon = child:CreateButton(
-- button settings
{
	text = L["PATREON_BUTTON_LABEL"],
	tooltip = L["PATREON_BUTTON_TOOLTIP"],
},
-- function hooks for the button
{
	OnClick = function(self)
		app:ShowPopupDialogWithEditBox(nil, "patreon.com/allthethings", nil, 10)
	end,
})
buttonPatreon:SetPoint("TOPLEFT", buttonTwitch, "TOPRIGHT", 4, 0)

local buttonMerch = child:CreateButton(
-- button settings
{
	text = L["MERCH_BUTTON_LABEL"],
	tooltip = L["MERCH_BUTTON_TOOLTIP"],
},
-- function hooks for the button
{
	OnClick = function(self)
		app:ShowPopupDialogWithEditBox(nil, "designbyhumans.com/shop/allthethings", nil, 10)
	end,
})
buttonMerch:SetPoint("TOPLEFT", buttonPatreon, "TOPRIGHT", 4, 0)

local headerVersion = child:CreateHeaderLabel(" ")
headerVersion:SetPoint("TOPRIGHT", child, "TOPLEFT", 638, 0)
headerVersion:SetJustifyH("RIGHT")
headerVersion.OnRefresh = function(self)
	self:SetText(app.Version)
end

-- Top 2
local headerMode = child:CreateHeaderLabel("")
headerMode:SetPoint("LEFT", child, 0, 0)
headerMode:SetPoint("TOP", logo, "BOTTOM", 0, 0)
headerMode.OnRefresh = function(self)
	self:SetText(settings:GetModeString())
end

local textModeExplain = child:CreateTextLabel(L["MODE_EXPLAIN_LABEL"])
textModeExplain:SetPoint("TOPLEFT", headerMode, "BOTTOMLEFT", 0, -4)

local checkboxAccountMode = child:CreateCheckBox(L["ACCOUNT_MODE"],
function(self)
	self:SetChecked(settings:Get("AccountMode"))
	if settings:Get("DebugMode") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetAccountMode(self:GetChecked())
end)
checkboxAccountMode:SetATTTooltip(L["ACCOUNT_MODE_TOOLTIP"])
checkboxAccountMode:SetPoint("TOPLEFT", textModeExplain, "BOTTOMLEFT", -2, -2)

local checkboxFactionMode = child:CreateCheckBox(L["FACTION_MODE"],
function(self)
	local englishFaction = UnitFactionGroup("player")
	if englishFaction == "Alliance" then
		self.Text:SetText(app.ccColors.Alliance..self.Text:GetText())
	elseif englishFaction == "Horde" then
		self.Text:SetText(app.ccColors.Horde..self.Text:GetText())
	else
		self.Text:SetText(app.ccColors.Default..self.Text:GetText())
	end
	self:SetChecked(settings:Get("FactionMode"))
	if settings:Get("DebugMode") or not settings:Get("AccountMode") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetFactionMode(self:GetChecked())
end)
checkboxFactionMode:SetATTTooltip(L["FACTION_MODE_TOOLTIP"])
checkboxFactionMode:AlignAfter(checkboxAccountMode)

local checkboxSkipAutoRefresh = child:CreateCheckBox(L["SKIP_AUTO_REFRESH"],
function(self)
	self:SetChecked(settings:Get("Skip:AutoRefresh"))
end,
function(self)
	settings:Set("Skip:AutoRefresh", self:GetChecked())
end)
checkboxSkipAutoRefresh:SetATTTooltip(L["SKIP_AUTO_REFRESH_TOOLTIP"])
checkboxSkipAutoRefresh:SetPoint("TOPLEFT", checkboxAccountMode, 320, 0)
settings.checkboxSkipAutoRefresh = checkboxSkipAutoRefresh	-- So the Refresh function can find it

-- Column 1
local headerAccountThings = child:CreateHeaderLabel(L["ACCOUNT_THINGS_LABEL"])
headerAccountThings:SetPoint("LEFT", headerMode, 0, 0)
headerAccountThings:SetPoint("TOP", checkboxAccountMode, "BOTTOM", 0, -10)
headerAccountThings.OnRefresh = function(self)
	if settings:Get("DebugMode") then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

local accwideCheckboxTransmog = child:CreateForcedAccountWideCheckbox()
accwideCheckboxTransmog:SetPoint("TOPLEFT", headerAccountThings, "BOTTOMLEFT", -2, 0)

local checkboxTransmog = child:CreateCheckBox(L["TMOG_CHECKBOX"],
function(self)
	self:SetChecked(settings:Get("Thing:Transmog"))
	if settings:Get("DebugMode") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:Set("Thing:Transmog", self:GetChecked())
	if self:GetChecked() then
		app.DoRefreshAppearanceSources = true
	end
	settings:UpdateMode(1)
end)
checkboxTransmog:SetATTTooltip(L["TMOG_CHECKBOX_TOOLTIP"])
checkboxTransmog:AlignAfter(accwideCheckboxTransmog)

local checkboxSources = child:CreateCheckBox(L["COMPLETIONIST_MODE"],
function(self)
	self:SetChecked(settings:Get("Completionist"))
	if not settings:Get("Thing:Transmog") and not settings:Get("DebugMode") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetCompletionistMode(self:GetChecked())
end)
checkboxSources:SetATTTooltip(L["COMPLETIONIST_MODE_TOOLTIP"])
checkboxSources:AlignAfter(checkboxTransmog)

local checkboxMainOnlyMode = child:CreateCheckBox(L["I_ONLY_CARE_ABOUT_MY_MAIN"],
function(self)
	local className, classFilename = UnitClass("player")
	local rPerc, gPerc, bPerc = GetClassColor(classFilename)
	self.Text:SetTextColor(rPerc, gPerc, bPerc, 1)
	self:SetChecked(settings:Get("MainOnly"))
	if settings:Get("Completionist") or settings:Get("AccountMode") or settings:Get("DebugMode") then
		self:SetChecked(false)
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:SetChecked(settings:Get("MainOnly"))
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetMainOnlyMode(self:GetChecked())
end)
checkboxMainOnlyMode:SetATTTooltip(L["MAIN_ONLY_MODE_TOOLTIP"])
checkboxMainOnlyMode:AlignBelow(checkboxTransmog, 1)

local accwideCheckboxHeirlooms = child:CreateForcedAccountWideCheckbox()
accwideCheckboxHeirlooms:AlignBelow(checkboxMainOnlyMode, accwideCheckboxTransmog)

local checkboxHeirlooms = child:CreateTrackingCheckbox("HEIRLOOMS", "Heirlooms")
checkboxHeirlooms:AlignAfter(accwideCheckboxHeirlooms)

local checkboxHeirloomUpgrades = child:CreateTrackingCheckbox("HEIRLOOMS_UPGRADES", "HeirloomUpgrades", "Heirlooms")
checkboxHeirloomUpgrades:AlignAfter(checkboxHeirlooms)

local accwideCheckboxIllusions = child:CreateForcedAccountWideCheckbox()
accwideCheckboxIllusions:AlignBelow(accwideCheckboxHeirlooms)

local checkboxIllusions = child:CreateTrackingCheckbox("ILLUSIONS", "Illusions")
checkboxIllusions:AlignAfter(accwideCheckboxIllusions)

local accwideCheckboxMounts = child:CreateForcedAccountWideCheckbox()
accwideCheckboxMounts:AlignBelow(accwideCheckboxIllusions)

local checkboxMounts = child:CreateTrackingCheckbox("MOUNTS", "Mounts")
checkboxMounts:AlignAfter(accwideCheckboxMounts)

local accwideCheckboxBattlePets = child:CreateForcedAccountWideCheckbox()
accwideCheckboxBattlePets:AlignBelow(accwideCheckboxMounts)

local checkboxBattlePets = child:CreateTrackingCheckbox("BATTLE_PETS", "BattlePets")
checkboxBattlePets:AlignAfter(accwideCheckboxBattlePets)

local accwideCheckboxToys = child:CreateForcedAccountWideCheckbox()
accwideCheckboxToys:AlignBelow(accwideCheckboxBattlePets)

local checkboxToys = child:CreateTrackingCheckbox("TOYS", "Toys")
checkboxToys:AlignAfter(accwideCheckboxToys)

local headerGeneralThings = child:CreateHeaderLabel(L["GENERAL_THINGS_LABEL"])
headerGeneralThings:SetPoint("LEFT", headerMode, 0, 0)
headerGeneralThings:SetPoint("TOP", accwideCheckboxToys, "BOTTOM", 0, -10)
headerGeneralThings.OnRefresh = function(self)
	if settings:Get("DebugMode") then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end

	-- Halloween Easter Egg
	C_Calendar.OpenCalendar()
    local date = C_DateAndTime.GetCurrentCalendarTime()
    local numEvents = C_Calendar.GetNumDayEvents(0, date.monthDay)
    for i=1, numEvents do
        local event = C_Calendar.GetHolidayInfo(0, date.monthDay, i)
        if event and (event.texture == 235461 or event.texture == 235462) then -- Non-localised way to detect specific holiday
            self:SetText(L["STRANGER_THINGS_LABEL"])
        end
    end
end

local accwideCheckboxAchievements = child:CreateAccountWideCheckbox("ACHIEVEMENTS", "Achievements")
accwideCheckboxAchievements:SetPoint("TOPLEFT", headerGeneralThings, "BOTTOMLEFT", -2, 0)

local checkboxAchievements = child:CreateTrackingCheckbox("ACHIEVEMENTS", "Achievements")
checkboxAchievements:AlignAfter(accwideCheckboxAchievements)

local accwideCheckboxFlightPaths = child:CreateAccountWideCheckbox("FLIGHT_PATHS", "FlightPaths")
accwideCheckboxFlightPaths:AlignBelow(accwideCheckboxAchievements)

local checkboxFlightPaths = child:CreateTrackingCheckbox("FLIGHT_PATHS", "FlightPaths")
checkboxFlightPaths:AlignAfter(accwideCheckboxFlightPaths)

local accwideCheckboxFollowers = child:CreateAccountWideCheckbox("FOLLOWERS", "Followers")
accwideCheckboxFollowers:AlignBelow(accwideCheckboxFlightPaths)

local checkboxFollowers = child:CreateTrackingCheckbox("FOLLOWERS", "Followers")
checkboxFollowers:AlignAfter(accwideCheckboxFollowers)

local accwideCheckboxQuests = child:CreateAccountWideCheckbox("QUESTS", "Quests")
accwideCheckboxQuests:AlignBelow(accwideCheckboxFollowers)

local checkboxQuests = child:CreateTrackingCheckbox("QUESTS", "Quests")
checkboxQuests:AlignAfter(accwideCheckboxQuests)

local checkboxLockedQuests = child:CreateTrackingCheckbox("QUESTS_LOCKED", "QuestsLocked")
checkboxLockedQuests:AlignAfter(checkboxQuests)

local accwideCheckboxRecipes = child:CreateAccountWideCheckbox("RECIPES", "Recipes")
accwideCheckboxRecipes:AlignBelow(accwideCheckboxQuests)

local checkboxRecipes = child:CreateTrackingCheckbox("RECIPES", "Recipes")
checkboxRecipes:AlignAfter(accwideCheckboxRecipes)

local accwideCheckboxReputations = child:CreateAccountWideCheckbox("REPUTATIONS", "Reputations")
accwideCheckboxReputations:AlignBelow(accwideCheckboxRecipes)

local checkboxReputations = child:CreateTrackingCheckbox("REPUTATIONS", "Reputations")
checkboxReputations:AlignAfter(accwideCheckboxReputations)

local accwideCheckboxTitles = child:CreateAccountWideCheckbox("TITLES", "Titles")
accwideCheckboxTitles:AlignBelow(accwideCheckboxReputations)

local checkboxTitles = child:CreateTrackingCheckbox("TITLES", "Titles")
checkboxTitles:AlignAfter(accwideCheckboxTitles)

local headerExpansionThings = child:CreateHeaderLabel(L["EXPANSION_THINGS_LABEL"])
headerExpansionThings:SetPoint("LEFT", headerMode, 0, 0)
headerExpansionThings:SetPoint("TOP", checkboxTitles, "BOTTOM", 0, -10)
headerExpansionThings.OnRefresh = function(self)
	if settings:Get("DebugMode") then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

local accwideCheckboxMusicRollsAndSelfieFilters = child:CreateAccountWideCheckbox("MUSIC_ROLLS_SELFIE_FILTERS", "MusicRollsAndSelfieFilters")
accwideCheckboxMusicRollsAndSelfieFilters:SetPoint("TOPLEFT", headerExpansionThings, "BOTTOMLEFT", -2, 0)

local checkboxMusicRollsAndSelfieFilters = child:CreateTrackingCheckbox("MUSIC_ROLLS_SELFIE_FILTERS", "MusicRollsAndSelfieFilters")
checkboxMusicRollsAndSelfieFilters:AlignAfter(accwideCheckboxMusicRollsAndSelfieFilters)

local accwideCheckboxAzeriteEssences = child:CreateAccountWideCheckbox("AZERITE_ESSENCES", "AzeriteEssences")
accwideCheckboxAzeriteEssences:AlignBelow(accwideCheckboxMusicRollsAndSelfieFilters)

local checkboxAzeriteEssences = child:CreateTrackingCheckbox("AZERITE_ESSENCES", "AzeriteEssences")
checkboxAzeriteEssences:AlignAfter(accwideCheckboxAzeriteEssences)

local accwideCheckboxConduits = child:CreateAccountWideCheckbox("SOULBINDCONDUITS", "Conduits")
accwideCheckboxConduits:AlignBelow(accwideCheckboxAzeriteEssences)

local checkboxConduits = child:CreateTrackingCheckbox("SOULBINDCONDUITS", "Conduits")
checkboxConduits:AlignAfter(accwideCheckboxConduits)

local accwideCheckboxRunecarvingPowers = child:CreateForcedAccountWideCheckbox()
accwideCheckboxRunecarvingPowers:AlignBelow(accwideCheckboxConduits)

local checkboxRunecarvingPowers = child:CreateTrackingCheckbox("RUNEFORGELEGENDARIES", "RuneforgeLegendaries")
checkboxRunecarvingPowers:AlignAfter(accwideCheckboxRunecarvingPowers)

local accwideCheckboxDrakewatcherManuscripts = child:CreateForcedAccountWideCheckbox()
accwideCheckboxDrakewatcherManuscripts:AlignBelow(accwideCheckboxRunecarvingPowers)

local checkboxDrakewatcherManuscripts = child:CreateTrackingCheckbox("DRAKEWATCHERMANUSCRIPTS", "DrakewatcherManuscripts")
checkboxDrakewatcherManuscripts:AlignAfter(accwideCheckboxDrakewatcherManuscripts)

local headerAdditionalResources = child:CreateHeaderLabel(L["EXTRA_THINGS_LABEL"])
headerAdditionalResources:SetPoint("LEFT", headerMode, 0, 0)
headerAdditionalResources:SetPoint("TOP", checkboxDrakewatcherManuscripts, "BOTTOM", 0, -10)

local checkboxCollectRepeatableQuests = child:CreateCheckBox(L["SHOW_REPEATABLE_THINGS_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Repeatable"))
	if not settings:Get("Thing:Quests") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("Repeatable", self:GetChecked())
	settings:UpdateMode(1)
end)
checkboxCollectRepeatableQuests:SetATTTooltip(L["SHOW_REPEATABLE_THINGS_CHECKBOX_TOOLTIP"])
checkboxCollectRepeatableQuests:SetPoint("TOPLEFT", headerAdditionalResources, "BOTTOMLEFT", -2, 0)

local checkboxCollectRepeatableQuestsFirstTimeOnly = child:CreateCheckBox(L["FIRST_TIME_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("RepeatableFirstTime"))
	if not settings:Get("Thing:Quests") or not settings:GetTooltipSetting("Repeatable") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("RepeatableFirstTime", self:GetChecked())
	settings:UpdateMode(1)
end)
checkboxCollectRepeatableQuestsFirstTimeOnly:SetATTTooltip(L["FIRST_TIME_CHECKBOX_TOOLTIP"])
checkboxCollectRepeatableQuestsFirstTimeOnly:AlignBelow(checkboxCollectRepeatableQuests, 1)

local checkboxShowAllTrackableThings = child:CreateCheckBox(L["SHOW_INCOMPLETE_THINGS_CHECKBOX"],
function(self)
	self:SetChecked(settings:Get("Show:TrackableThings"))
	if settings:Get("DebugMode") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:Set("Show:TrackableThings", self:GetChecked())
	settings:UpdateMode(1)
end)
checkboxShowAllTrackableThings:SetATTTooltip(L["SHOW_INCOMPLETE_THINGS_CHECKBOX_TOOLTIP"])
checkboxShowAllTrackableThings:AlignBelow(checkboxCollectRepeatableQuestsFirstTimeOnly, -1)


local checkboxDebugMode = child:CreateCheckBox(L["DEBUG_MODE"],
function(self)
	self:SetChecked(settings:Get("DebugMode"))
end,
function(self)
	settings:SetDebugMode(self:GetChecked())
end)
checkboxDebugMode:SetATTTooltip(L["DEBUG_MODE_TOOLTIP"])
checkboxDebugMode:AlignBelow(checkboxShowAllTrackableThings)

-- Column 2
local headerGeneralContent = child:CreateHeaderLabel(L["GENERAL_CONTENT"])
headerGeneralContent:SetPoint("TOPLEFT", headerAccountThings, 320, 0)
headerGeneralContent.OnRefresh = function(self)
	if settings:Get("DebugMode") then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

local checkboxShowUnboundItems = child:CreateCheckBox(L["SHOW_BOE_CHECKBOX"],
function(self)
	self:SetChecked(not settings:Get("Hide:BoEs"))	-- Inversed, so enabled = show
	if settings:Get("DebugMode") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetHideBOEItems(not self:GetChecked())	-- Inversed, so enabled = show
end)
checkboxShowUnboundItems:SetATTTooltip(L["SHOW_BOE_CHECKBOX_TOOLTIP"])
checkboxShowUnboundItems:SetPoint("TOPLEFT", headerGeneralContent, "BOTTOMLEFT", -2, 0)

local checkboxIgnoreUnboundFilters = child:CreateCheckBox(L["IGNORE_FILTERS_FOR_BOES_CHECKBOX"],
function(self)
	self:SetChecked(settings:Get("Filter:BoEs"))
	if settings:Get("Hide:BoEs") or settings:Get("DebugMode") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:Set("Filter:BoEs", self:GetChecked())
	settings:UpdateMode(1)
end)
checkboxIgnoreUnboundFilters:SetATTTooltip(L["IGNORE_FILTERS_FOR_BOES_CHECKBOX_TOOLTIP"])
checkboxIgnoreUnboundFilters:AlignBelow(checkboxShowUnboundItems, 1)

local checkboxNoLevelFilter = child:CreateCheckBox(L["FILTER_THINGS_BY_LEVEL_CHECKBOX"],
function(self)
	self:SetChecked(not settings:Get("Filter:ByLevel"))	-- Inversed, so enabled = show
	if settings:Get("DebugMode") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:Set("Filter:ByLevel", not self:GetChecked())	-- Inversed, so enabled = show
	settings:UpdateMode(1)
end)
checkboxNoLevelFilter:SetATTTooltip(L["FILTER_THINGS_BY_LEVEL_CHECKBOX_TOOLTIP"])
checkboxNoLevelFilter:AlignBelow(checkboxIgnoreUnboundFilters, -1)

local checkboxNoSeasonalFilter = child:CreateCheckBox(L["SHOW_ALL_SEASONAL"],
	function(self)
		self:SetChecked(not settings:Get("Show:OnlyActiveEvents"))	-- Inversed, so enabled = show
		if settings:Get("DebugMode") then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
	function(self)
		settings:Set("Show:OnlyActiveEvents", not self:GetChecked())	-- Inversed, so enabled = show
		settings:UpdateMode(1)
	end
)
checkboxNoSeasonalFilter:SetATTTooltip(L["SHOW_ALL_SEASONAL_TOOLTIP"])
checkboxNoSeasonalFilter:AlignBelow(checkboxNoLevelFilter)

local checkboxShowPetBattles = child:CreateCheckBox(L["SHOW_PET_BATTLES_CHECKBOX"],
function(self)
	self:SetChecked(settings:Get("Show:PetBattles"))
	if settings:Get("DebugMode") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:Set("Show:PetBattles", self:GetChecked())
	settings:UpdateMode(1)
end)
checkboxShowPetBattles:SetATTTooltip(L["SHOW_PET_BATTLES_CHECKBOX_TOOLTIP"])
checkboxShowPetBattles:AlignBelow(checkboxNoSeasonalFilter)

local checkboxShowPvP = child:CreateCheckBox(L["SHOW_PVP_CHECKBOX"],
function(self)
	self:SetChecked(not settings:Get("Hide:PvP"))	-- Inversed, so enabled = show
	if settings:Get("DebugMode") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:Set("Hide:PvP", not self:GetChecked())	-- Inversed, so enabled = show
	settings:UpdateMode(1)
end)
checkboxShowPvP:SetATTTooltip(L["SHOW_PVP_CHECKBOX_TOOLTIP"])
checkboxShowPvP:AlignBelow(checkboxShowPetBattles)

local headerAutomatedContent = child:CreateHeaderLabel(L["CUSTOM_FILTERS_LABEL"])
headerAutomatedContent:SetPoint("TOP", checkboxShowPvP, "BOTTOM", 0, -10)
headerAutomatedContent:SetPoint("LEFT", headerGeneralContent, 0, 0)
headerAutomatedContent.OnRefresh = function(self)
	if settings:Get("DebugMode") then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

local textAutomatedContentExplain = child:CreateTextLabel(L["CUSTOM_FILTERS_EXPLAIN_LABEL"])
textAutomatedContentExplain:SetPoint("TOPLEFT", headerAutomatedContent, "BOTTOMLEFT", 0, -4)
textAutomatedContentExplain:SetWidth(320)
textAutomatedContentExplain.OnRefresh = function(self)
	if settings:Get("DebugMode") then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

	-- Automated Content toggles
	local insane_color = app.ccColors.Insane
	local customCollects, ccCheckbox = L["CUSTOM_COLLECTS_REASONS"]
	local previousCheckbox = textAutomatedContentExplain
	local xInitalOffset, yInitialOffset, inital = -2, -2, true
	-- Insane Required first
	for i,cc in ipairs({"SL_COV_KYR","SL_COV_NEC","SL_COV_NFA","SL_COV_VEN"}) do
		local filterID = "CC:" .. cc
		local reason = customCollects[cc]
		local text = reason["icon"].." "..insane_color..reason["text"].."|r"
		ccCheckbox = child:CreateCheckBox(text,
			function(self)
				local automatic = app and (app.MODE_DEBUG_OR_ACCOUNT
					or (app.CurrentCharacter and app.CurrentCharacter.CustomCollects and app.CurrentCharacter.CustomCollects[cc]))
				self:SetChecked(automatic or settings:Get(filterID))
				if automatic then
					self:SetAlpha(0.5)
				else
					self:Enable()
					self:SetAlpha(1)
				end
			end,
			function(self)
				local automatic = app and (app.MODE_DEBUG_OR_ACCOUNT
					or (app.CurrentCharacter and app.CurrentCharacter.CustomCollects and app.CurrentCharacter.CustomCollects[cc]))
				-- prevent toggling automatic filter without requiring it to be disabled (TODO add this logic as part of the checkbox itself somehow instead of manually?)
				if automatic then
					self:SetChecked(true)
					return
				end
				settings:Set(filterID, self:GetChecked())
				settings:UpdateMode(1)
			end
		)
		ccCheckbox:SetATTTooltip(string.format(L["CUSTOM_FILTERS_GENERIC_TOOLTIP_FORMAT"], text))
		if inital then
			ccCheckbox:SetPoint("LEFT", previousCheckbox, "LEFT", xInitalOffset, 0)
			ccCheckbox:SetPoint("TOP", previousCheckbox, "BOTTOM", 0, yInitialOffset)
			inital = nil
		else
			ccCheckbox:AlignBelow(previousCheckbox)
		end
		previousCheckbox = ccCheckbox
	end
	-- Non-Insane Required after
	for i,cc in ipairs({"NPE","SL_SKIP"}) do
		local filterID = "CC:" .. cc
		local reason = customCollects[cc]
		local text = reason["icon"].." "..reason["text"]
		ccCheckbox = child:CreateCheckBox(text,
		function(self)
			local automatic = app and (app.MODE_DEBUG_OR_ACCOUNT
				or (app.CurrentCharacter and app.CurrentCharacter.CustomCollects and app.CurrentCharacter.CustomCollects[cc]))
			self:SetChecked(automatic or settings:Get(filterID))
			if automatic then
				self:SetAlpha(0.4)
			else
				self:Enable()
				self:SetAlpha(1)
			end
		end,
		function(self)
			local automatic = app and (app.MODE_DEBUG_OR_ACCOUNT
				or (app.CurrentCharacter and app.CurrentCharacter.CustomCollects and app.CurrentCharacter.CustomCollects[cc]))
			-- prevent toggling automatic filter without requiring it to be disabled (TODO add this logic as part of the checkbox itself somehow instead of manually?)
			if automatic then
				self:SetChecked(true)
				return
			end
			settings:Set(filterID, self:GetChecked())
			settings:UpdateMode(1)
		end)
		ccCheckbox:SetATTTooltip(string.format(L["CUSTOM_FILTERS_GENERIC_TOOLTIP_FORMAT"], text))
		if inital then
			ccCheckbox:SetPoint("LEFT", previousCheckbox, "LEFT", xInitalOffset, 0)
			ccCheckbox:SetPoint("TOP", previousCheckbox, "BOTTOM", 0, yInitialOffset)
			inital = nil
		else
			ccCheckbox:AlignBelow(previousCheckbox)
		end
		previousCheckbox = ccCheckbox
	end

local headerUnobtainableContent = child:CreateHeaderLabel(L["UNOBTAINABLE_LABEL"])
headerUnobtainableContent:SetPoint("TOPLEFT", ccCheckbox, "BOTTOMLEFT", 0, -10)	-- Place under the last Automated Content checkbox
headerUnobtainableContent.OnRefresh = function(self)
	if settings:Get("DebugMode") then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

	local unobtainables = L["UNOBTAINABLE_ITEM_REASONS"]

local checkboxShowAllUnobtainable = child:CreateCheckBox(L["UNOBTAINABLE_ALL"],
	function(self)
		local anyFiltered = false
		for k,v in pairs(unobtainables) do
			if not settings:GetValue("Unobtainable", k) then
				anyFiltered = true
				-- ensure the filter is specifically marked as 'false' if it's not enabled
				settings:SetValue("Unobtainable", k, false)
			end
		end
		self:SetChecked(not anyFiltered)
		settings:SetValue("Unobtainable", "DoFiltering", anyFiltered)
		if settings:Get("DebugMode") then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
	function(self)
		local checked = self:GetChecked()
		for k,v in pairs(unobtainables) do
			settings:SetValue("Unobtainable", k, checked)
		end
		self:OnRefresh();
		settings:UpdateMode(1)
	end
)
checkboxShowAllUnobtainable:SetPoint("TOPLEFT", headerUnobtainableContent, "BOTTOMLEFT", -2, 0)

local checkboxShowAllNoChance = child:CreateCheckBox(L["NO_CHANCE_ALL"],
function(self)
	local anyFiltered = false
	for k,v in pairs(unobtainables) do
		if v[1] == 1 then
			if not settings:GetValue("Unobtainable", k) then
			anyFiltered = true
			end
		end
	end
	self:SetChecked(not anyFiltered)
	if settings:Get("DebugMode") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	local checked = self:GetChecked()
	for k,v in pairs(unobtainables) do
		if v[1] == 1 then
			settings:SetValue("Unobtainable", k, checked)
		end
	end
	checkboxShowAllUnobtainable:OnRefresh();
	settings:UpdateMode(1)
end)
checkboxShowAllNoChance:AlignBelow(checkboxShowAllUnobtainable, 1)

local last = checkboxShowAllNoChance
local count = 0
for k,v in pairs(unobtainables) do
	if v[1] == 1 then
		local filter = child:CreateCheckBox(v[3],
		function(self)
			self:SetChecked(settings:GetValue("Unobtainable", k))
			if settings:Get("DebugMode") then
				self:Disable()
				self:SetAlpha(0.4)
			else
				self:Enable()
				self:SetAlpha(1)
			end
		end,
		function(self)
			settings:SetValue("Unobtainable", k, self:GetChecked())
			checkboxShowAllUnobtainable:OnRefresh();
			settings:UpdateMode(1)
		end)
		filter:SetATTTooltip(v[2])
		if count == 0 then
			filter:AlignBelow(last, 1)
		else
			filter:AlignBelow(last)
		end
		last = filter
		count = count + 1
	end
end

local checkboxShowAllHighChance = child:CreateCheckBox(L["HIGH_CHANCE_ALL"],
function(self)
	local anyFiltered = false
	for k,v in pairs(unobtainables) do
		if v[1] == 2 or v[1] == 3 then
			if not settings:GetValue("Unobtainable", k) then
				anyFiltered = true
			end
		end
	end
	self:SetChecked(not anyFiltered)
	if settings:Get("DebugMode") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	local checked = self:GetChecked()
	for k,v in pairs(unobtainables) do
		if v[1] == 2 or v[1] == 3 then
			settings:SetValue("Unobtainable", k, checked)
		end
	end
	checkboxShowAllUnobtainable:OnRefresh();
	settings:UpdateMode(1)
end)
checkboxShowAllHighChance:AlignBelow(last, -1)

last = checkboxShowAllHighChance
count = 0
for k,v in pairs(unobtainables) do
	if v[1] == 2 or v[1] == 3 then
		local filter = child:CreateCheckBox(v[3],
		function(self)
			self:SetChecked(settings:GetValue("Unobtainable", k))
			if settings:Get("DebugMode") then
				self:Disable()
				self:SetAlpha(0.4)
			else
				self:Enable()
				self:SetAlpha(1)
			end
		end,
		function(self)
			settings:SetValue("Unobtainable", k, self:GetChecked())
			checkboxShowAllUnobtainable:OnRefresh();
			settings:UpdateMode(1)
		end)
		filter:SetATTTooltip(v[2])
		if count == 0 then
			filter:AlignBelow(last, 1)
		else
			filter:AlignBelow(last)
		end
		last = filter
		count = count + 1
	end
end

-- Bottom
local headerWeaponsAndArmor = child:CreateHeaderLabel(L["ITEM_FILTER_LABEL"])
headerWeaponsAndArmor:SetPoint("LEFT", headerMode, 0, 0)
headerWeaponsAndArmor:SetPoint("TOP", last, "BOTTOM", 0, -10)	-- Place under the last Unobtainable Content checkbox
headerWeaponsAndArmor.OnRefresh = function(self)
	if settings:Get("DebugMode") then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

local textWeaponsAndArmorExplain = child:CreateTextLabel(L["ITEM_EXPLAIN_LABEL"])
textWeaponsAndArmorExplain:SetPoint("TOPLEFT", headerWeaponsAndArmor, "BOTTOMLEFT", 0, -4)
textWeaponsAndArmorExplain.OnRefresh = function(self)
	if settings:Get("DebugMode") then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

-- Stuff to automatically generate the armor & weapon checkboxes
local last, xoffset, yoffset = headerWeaponsAndArmor, 0, -4
local itemFilterNames = L["FILTER_ID_TYPES"]
local ItemFilterOnClick = function(self)
	settings:SetFilter(self.filterID, self:GetChecked())
end
local ItemFilterOnRefresh = function(self)
	if app.MODE_DEBUG_OR_ACCOUNT then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:SetChecked(settings:GetFilter(self.filterID))
		self:Enable()
		self:SetAlpha(1)
	end
end

-- 1H Axes, 2H Axes, 1H Maces, 2H Maces, 1H Swords, 2H Swords, Daggers, Fist Weapons, Polearms, Warglaives
local awColumn1 = { 21, 22, 23, 24, 25, 26, 20, 34, 29, 35 }
for i,filterID in ipairs(awColumn1) do
	local filter = child:CreateCheckBox(itemFilterNames[filterID], ItemFilterOnRefresh, ItemFilterOnClick)
	-- Start
	if filterID == 21 then
		filter:SetPoint("TOPLEFT", textWeaponsAndArmorExplain, "BOTTOMLEFT", -2, -2)
	else
		filter:AlignBelow(last)
	end
	filter.filterID = filterID
	filter:SetATTTooltip(L["FILTER_ID"]..": "..filterID)
	last = filter
end

local allEquipmentFilters = {	-- Filter IDs
	11,	-- Artifacts
	2,	-- Cosmetic
	3,	-- Cloaks
	10,	-- Shirts
	9,	-- Tabards
	33,	-- Crossbows
	32,	-- Bows
	31,	-- Guns
	50,	-- Miscellaneous
	57,	-- Profession Equipment
	34,	-- Fist Weapons
	35,	-- Warglaives
	27,	-- Wands
	21,	-- 1H Axes
	22,	-- 2H Axes
	23,	-- 1H Maces
	24,	-- 2H Maces
	25,	-- 1H Swords
	26,	-- 2H Swords
	1,	-- Held in Off-Hand
	8,	-- Shields
	4,	-- Cloth
	5,	-- Leather
	6,	-- Mail
	7,	-- Plate
	20,	-- Daggers
	29,	-- Polearms
	28,	-- Staves
}

-- The 3 buttons
local buttonClassDefaults = child:CreateButton(
-- button settings
{
	text = L["CLASS_DEFAULTS_BUTTON"],
	tooltip = L["CLASS_DEFAULTS_BUTTON_TOOLTIP"],
},
-- function hooks for the button
{
	OnClick = function(self)
		for key,value in pairs(AllTheThingsSettingsPerCharacter.Filters) do
			AllTheThingsSettingsPerCharacter.Filters[key] = nil
		end
		settings:UpdateMode(1)
	end,
})
buttonClassDefaults:SetPoint("LEFT", headerMode, 0, 0)
buttonClassDefaults:SetPoint("TOP", last, "BOTTOM", 0, -10)
buttonClassDefaults.OnRefresh = function(self)
	if app.MODE_DEBUG_OR_ACCOUNT then
		self:Disable()
	else
		self:Enable()
	end
end

local buttonAll = child:CreateButton(
-- button settings
{
	text = L["ALL_BUTTON"],
	tooltip = L["ALL_BUTTON_TOOLTIP"],
},
-- function hooks for the button
{
	OnClick = function(self)
		for k,v in pairs(allEquipmentFilters) do
			AllTheThingsSettingsPerCharacter.Filters[v] = true
		end
		settings:UpdateMode(1)
	end,
})
buttonAll:SetPoint("TOPLEFT", buttonClassDefaults, "TOPRIGHT", 5, 0)
buttonAll.OnRefresh = function(self)
	if app.MODE_DEBUG_OR_ACCOUNT then
		self:Disable()
	else
		self:Enable()
	end
end

local buttonNone = child:CreateButton(
-- button settings
{
	text = L["UNCHECK_ALL_BUTTON"],
	tooltip = L["UNCHECK_ALL_BUTTON_TOOLTIP"],
},
-- function hooks for the button
{
	OnClick = function(self)
		for k,v in pairs(allEquipmentFilters) do
			AllTheThingsSettingsPerCharacter.Filters[v] = false
		end
		settings:UpdateMode(1)
	end,
})
buttonNone:SetPoint("TOPLEFT", buttonAll, "TOPRIGHT", 5, 0)
buttonNone.OnRefresh = function(self)
	if app.MODE_DEBUG_OR_ACCOUNT then
		self:Disable()
	else
		self:Enable()
	end
end

-- Bows, Crossbows, Guns, Staves, Wands, Shields, Off-hands
local awColumn2 = { 32, 33, 31, 28, 27, 8, 1 }
for i,filterID in ipairs(awColumn2) do
	local filter = child:CreateCheckBox(itemFilterNames[filterID], ItemFilterOnRefresh, ItemFilterOnClick)
	-- Start
	if filterID == 32 then
		filter:SetPoint("TOPLEFT", textWeaponsAndArmorExplain, "BOTTOMLEFT", 160, -2)
	else
		filter:AlignBelow(last)
	end
	filter.filterID = filterID
	filter:SetATTTooltip(L["FILTER_ID"]..": "..filterID)
	last = filter
end

-- Cloth, Leather, Mail, Plate + Cosmetic, Cloak, Shirt, Tabard + Artifacts, Profession Tools
local awColumn3 = { 4, 5, 6, 7, 2, 3, 10, 9, 11, 57 }
for i,filterID in ipairs(awColumn3) do
	local filter = child:CreateCheckBox(itemFilterNames[filterID], ItemFilterOnRefresh, ItemFilterOnClick)
	-- Start
	if filterID == 4 then
		filter:SetPoint("TOPLEFT", textWeaponsAndArmorExplain, "BOTTOMLEFT", 320, -2)
	-- Spacing
	elseif filterID == 2 or filterID == 11 then
		filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, 0)
	else
		filter:AlignBelow(last)
	end
	filter.filterID = filterID
	filter:SetATTTooltip(L["FILTER_ID"]..": "..filterID)
	last = filter
end

end)();

----------------------
-- "Interface" page --
----------------------

-- SETUP
(function()
-- Create the page
local child = settings:CreateOptionsPage(L["INTERFACE_PAGE"], true)

-- CONTENT

-- Column 1
local headerTooltips = child:CreateHeaderLabel(L["TOOLTIP_LABEL"])
headerTooltips:SetPoint("TOPLEFT", child, 0, 0)

local checkboxShowTooltipHelp = child:CreateCheckBox(L["TOOLTIP_HELP_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:TooltipHelp"))
end,
function(self)
	settings:SetTooltipSetting("Show:TooltipHelp", self:GetChecked())
	app:UpdateWindows()
end)
checkboxShowTooltipHelp:SetATTTooltip(L["TOOLTIP_HELP_CHECKBOX_TOOLTIP"])
checkboxShowTooltipHelp:SetPoint("TOPLEFT", headerTooltips, "BOTTOMLEFT", -2, 0)

local checkboxEnableTooltipIntegrations = child:CreateCheckBox(L["ENABLE_TOOLTIP_INFORMATION_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Enabled"))
end,
function(self)
	settings:SetTooltipSetting("Enabled", self:GetChecked())
end)
checkboxEnableTooltipIntegrations:SetATTTooltip(L["ENABLE_TOOLTIP_INFORMATION_CHECKBOX_TOOLTIP"])
checkboxEnableTooltipIntegrations:AlignBelow(checkboxShowTooltipHelp)

local textTooltipModifier = child:CreateTextLabel("|cffFFFFFF"..L["TOOLTIP_MOD_LABEL"])
textTooltipModifier:SetPoint("TOPLEFT", checkboxEnableTooltipIntegrations.Text, "TOPRIGHT", 15, 0)
textTooltipModifier.OnRefresh = function(self)
	if not settings:GetTooltipSetting("Enabled") then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

local checkboxTooltipModifierNone = child:CreateCheckBox(L["TOOLTIP_MOD_NONE"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Enabled:Mod") == "None")
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	-- re-checking the same box
	if settings:GetTooltipSetting("Enabled:Mod") == "None" then
		self:SetChecked(true)
		return
	end
	if self:GetChecked() then
		settings:SetTooltipSetting("Enabled:Mod", "None")
	end
end)
checkboxTooltipModifierNone:AlignBelow(checkboxEnableTooltipIntegrations, 1)

local checkboxTooltipModifierShift = child:CreateCheckBox(L["TOOLTIP_MOD_SHIFT"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Enabled:Mod") == "Shift")
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	-- re-checking the same box
	if settings:GetTooltipSetting("Enabled:Mod") == "Shift" then
		self:SetChecked(true)
		return
	end
	if self:GetChecked() then
		settings:SetTooltipSetting("Enabled:Mod", "Shift")
	end
end)
checkboxTooltipModifierShift:AlignAfter(checkboxTooltipModifierNone)

local checkboxTooltipModifierCtrl = child:CreateCheckBox(L["TOOLTIP_MOD_CTRL"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Enabled:Mod") == "Ctrl")
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	-- re-checking the same box
	if settings:GetTooltipSetting("Enabled:Mod") == "Ctrl" then
		self:SetChecked(true)
		return
	end
	if self:GetChecked() then
		settings:SetTooltipSetting("Enabled:Mod", "Ctrl")
	end
end)
checkboxTooltipModifierCtrl:AlignAfter(checkboxTooltipModifierShift)

local checkboxTooltipModifierAlt = child:CreateCheckBox(L["TOOLTIP_MOD_ALT"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Enabled:Mod") == "Alt")
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	-- re-checking the same box
	if settings:GetTooltipSetting("Enabled:Mod") == "Alt" then
		self:SetChecked(true)
		return
	end
	if self:GetChecked() then
		settings:SetTooltipSetting("Enabled:Mod", "Alt")
	end
end)
checkboxTooltipModifierAlt:AlignAfter(checkboxTooltipModifierCtrl)

	if IsMacClient() then
		local checkboxTooltipModifierMeta = child:CreateCheckBox(L["TOOLTIP_MOD_CMD"],
		function(self)
			self:SetChecked(settings:GetTooltipSetting("Enabled:Mod") == "Cmd")
			if not settings:GetTooltipSetting("Enabled") then
				self:Disable()
				self:SetAlpha(0.4)
			else
				self:Enable()
				self:SetAlpha(1)
			end
		end,
		function(self)
			-- re-checking the same box
			if settings:GetTooltipSetting("Enabled:Mod") == "Cmd" then
				self:SetChecked(true)
				return
			end
			if self:GetChecked() then
				settings:SetTooltipSetting("Enabled:Mod", "Cmd")
			end
		end)
		checkboxTooltipModifierMeta:AlignAfter(checkboxTooltipModifierAlt)
	end

local checkboxDisplayInCombat = child:CreateCheckBox(L["DISPLAY_IN_COMBAT_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("DisplayInCombat"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("DisplayInCombat", self:GetChecked())
end)
checkboxDisplayInCombat:SetATTTooltip(L["DISPLAY_IN_COMBAT_CHECKBOX_TOOLTIP"])
checkboxDisplayInCombat:AlignBelow(checkboxTooltipModifierNone, -1)

local checkboxSummarizeThings = child:CreateCheckBox(L["SUMMARIZE_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("SummarizeThings"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("SummarizeThings", self:GetChecked())
end)
checkboxSummarizeThings:SetATTTooltip(L["SUMMARIZE_CHECKBOX_TOOLTIP"])
checkboxSummarizeThings:AlignBelow(checkboxDisplayInCombat)

local sliderSummarizeThings = CreateFrame("Slider", "ATTSummarizeThingsSlider", child, "OptionsSliderTemplate")
sliderSummarizeThings:SetPoint("TOP", checkboxSummarizeThings.Text, "BOTTOM", 0, -4)
sliderSummarizeThings:SetPoint("LEFT", checkboxSummarizeThings, "LEFT", 10, 0)
table.insert(settings.Objects, sliderSummarizeThings)
settings.sliderSummarizeThings = sliderSummarizeThings
sliderSummarizeThings.tooltipText = L["CONTAINS_SLIDER_TOOLTIP"]
sliderSummarizeThings:SetOrientation('HORIZONTAL')
sliderSummarizeThings:SetWidth(200)
sliderSummarizeThings:SetHeight(20)
sliderSummarizeThings:SetValueStep(1)
sliderSummarizeThings:SetMinMaxValues(1, 40)
sliderSummarizeThings:SetObeyStepOnDrag(true)
_G[sliderSummarizeThings:GetName() .. 'Low']:SetText('1')
_G[sliderSummarizeThings:GetName() .. 'High']:SetText('40')
sliderSummarizeThings.Label = sliderSummarizeThings:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderSummarizeThings.Label:SetPoint("TOP", sliderSummarizeThings, "BOTTOM", 0, 2)
sliderSummarizeThings.Label:SetText(sliderSummarizeThings:GetValue())
sliderSummarizeThings:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(newValue)
	if newValue == settings:GetTooltipSetting("ContainsCount") then
		return 1
	end
	settings:SetTooltipSetting("ContainsCount", newValue)
	app:UpdateWindows()
end)
sliderSummarizeThings.OnRefresh = function(self)
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SummarizeThings") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end

local textTooltipShownInfo = child:CreateTextLabel("|cffFFFFFF"..L["TOOLTIP_SHOW_LABEL"])
textTooltipShownInfo:SetPoint("TOP", sliderSummarizeThings, "BOTTOM", 0, -15)
textTooltipShownInfo:SetPoint("LEFT", headerTooltips, "LEFT", 0, 0)
textTooltipShownInfo.OnRefresh = function(self)
	if not settings:GetTooltipSetting("Enabled") then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

local checkboxCollectionProgress = child:CreateCheckBox(L["SHOW_COLLECTION_PROGRESS_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Progress"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("Progress", self:GetChecked())
end)
checkboxCollectionProgress:SetATTTooltip(L["SHOW_COLLECTION_PROGRESS_CHECKBOX_TOOLTIP"])
checkboxCollectionProgress:SetPoint("LEFT", checkboxSummarizeThings, "LEFT", 0, 0)
checkboxCollectionProgress:SetPoint("TOP", textTooltipShownInfo, "BOTTOM", 0, -2)

local checkboxProgressIconOnly = child:CreateCheckBox(L["ICON_ONLY_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("ShowIconOnly"))
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("Progress") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("ShowIconOnly", self:GetChecked())
end)
checkboxProgressIconOnly:SetATTTooltip(L["ICON_ONLY_CHECKBOX_TOOLTIP"])
checkboxProgressIconOnly:AlignBelow(checkboxCollectionProgress, 1)

local checkboxKnownBy = child:CreateCheckBox(L["KNOWN_BY_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("KnownBy"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("KnownBy", self:GetChecked())
end)
checkboxKnownBy:SetATTTooltip(L["KNOWN_BY_CHECKBOX_TOOLTIP"])
checkboxKnownBy:AlignBelow(checkboxProgressIconOnly, -1)

local checkboxProfessions = child:CreateCheckBox(L["PROFESSION_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("ProfessionRequirements"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("ProfessionRequirements", self:GetChecked())
end)
checkboxProfessions:SetATTTooltip(L["PROFESSION_CHECKBOX_TOOLTIP"])
checkboxProfessions:AlignBelow(checkboxKnownBy)

local checkboxLevels = child:CreateCheckBox(L["LEVELREQ_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("LevelRequirements"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("LevelRequirements", self:GetChecked())
end)
checkboxLevels:SetATTTooltip(L["LEVELREQ_CHECKBOX_TOOLTIP"])
checkboxLevels:AlignBelow(checkboxProfessions)

local checkboxClasses = child:CreateCheckBox(L["CLASSES_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("ClassRequirements"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("ClassRequirements", self:GetChecked())
end)
checkboxClasses:SetATTTooltip(L["CLASSES_CHECKBOX_TOOLTIP"])
checkboxClasses:AlignBelow(checkboxLevels)

local checkboxRaces = child:CreateCheckBox(L["RACES_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("RaceRequirements"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("RaceRequirements", self:GetChecked())
end)
checkboxRaces:SetATTTooltip(L["RACES_CHECKBOX_TOOLTIP"])
checkboxRaces:AlignBelow(checkboxClasses)

local checkboxSpecializations = child:CreateCheckBox(L["SPEC_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("SpecializationRequirements"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("SpecializationRequirements", self:GetChecked())
end)
checkboxSpecializations:SetATTTooltip(L["SPEC_CHECKBOX_TOOLTIP"])
checkboxSpecializations:AlignBelow(checkboxRaces)

local checkboxDropChances = child:CreateCheckBox(L["DROP_CHANCES_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("DropChances"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("DropChances", self:GetChecked())
end)
checkboxDropChances:SetATTTooltip(L["DROP_CHANCES_CHECKBOX_TOOLTIP"])
checkboxDropChances:AlignBelow(checkboxSpecializations)

local checkboxCoordinates = child:CreateCheckBox(L["COORDINATES_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Coordinates"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("Coordinates", self:GetChecked())
end)
checkboxCoordinates:SetATTTooltip(L["COORDINATES_CHECKBOX_TOOLTIP"])
checkboxCoordinates:AlignBelow(checkboxDropChances)

local checkboxDescriptions = child:CreateCheckBox(L["DESCRIPTIONS_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Descriptions"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("Descriptions", self:GetChecked())
end)
checkboxDescriptions:SetATTTooltip(L["DESCRIPTIONS_CHECKBOX_TOOLTIP"])
checkboxDescriptions:AlignBelow(checkboxCoordinates)

local checkboxLore = child:CreateCheckBox(L["LORE_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Lore"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("Lore", self:GetChecked())
end)
checkboxLore:SetATTTooltip(L["LORE_CHECKBOX_TOOLTIP"])
checkboxLore:AlignBelow(checkboxDescriptions)

local checkboxModelPreview = child:CreateCheckBox(L["SHOW_MODELS_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Models"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("Models", self:GetChecked())
end)
checkboxModelPreview:SetATTTooltip(L["SHOW_MODELS_CHECKBOX_TOOLTIP"])
checkboxModelPreview:AlignBelow(checkboxLore)

local checkboxCurrencyCalculation = child:CreateCheckBox(L["SHOW_CURRENCY_CALCULATIONS_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Currencies"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("Currencies", self:GetChecked())
end)
checkboxCurrencyCalculation:SetATTTooltip(L["SHOW_CURRENCY_CALCULATIONS_CHECKBOX_TOOLTIP"])
checkboxCurrencyCalculation:AlignBelow(checkboxModelPreview)

local checkboxSharedAppearances = child:CreateCheckBox(L["SHARED_APPEARANCES_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("SharedAppearances"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("SharedAppearances", self:GetChecked())
end)
checkboxSharedAppearances:SetATTTooltip(L["SHARED_APPEARANCES_CHECKBOX_TOOLTIP"])
checkboxSharedAppearances:AlignAfter(checkboxCollectionProgress)

local checkboxOriginalSource = child:CreateCheckBox(L["INCLUDE_ORIGINAL_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("IncludeOriginalSource"))
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SharedAppearances") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("IncludeOriginalSource", self:GetChecked())
end)
checkboxOriginalSource:SetATTTooltip(L["INCLUDE_ORIGINAL_CHECKBOX_TOOLTIP"])
checkboxOriginalSource:AlignBelow(checkboxSharedAppearances, 1)

local checkboxOnlyRelevant = child:CreateCheckBox(L["ONLY_RELEVANT_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("OnlyShowRelevantSharedAppearances"))
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SharedAppearances") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("OnlyShowRelevantSharedAppearances", self:GetChecked())
end)
checkboxOnlyRelevant:SetATTTooltip(L["ONLY_RELEVANT_CHECKBOX_TOOLTIP"])
checkboxOnlyRelevant:AlignBelow(checkboxOriginalSource)

local checkboxCompletedBy = child:CreateCheckBox(L["COMPLETED_BY_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("CompletedBy"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("CompletedBy", self:GetChecked())
end)
checkboxCompletedBy:SetATTTooltip(L["COMPLETED_BY_CHECKBOX_TOOLTIP"])
checkboxCompletedBy:AlignBelow(checkboxOnlyRelevant, -1)

local checkboxSourceLocations = child:CreateCheckBox(L["SOURCE_LOCATIONS_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("SourceLocations"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("SourceLocations", self:GetChecked())
end)
checkboxSourceLocations:SetATTTooltip(L["SOURCE_LOCATIONS_CHECKBOX_TOOLTIP"])
checkboxSourceLocations:AlignBelow(checkboxCompletedBy)

local sliderSourceLocations = CreateFrame("Slider", "ATTsliderSourceLocations", child, "OptionsSliderTemplate")
sliderSourceLocations:SetPoint("TOP", checkboxSourceLocations.Text, "BOTTOM", 0, -4)
sliderSourceLocations:SetPoint("LEFT", checkboxSourceLocations, "LEFT", 10, 0)
table.insert(settings.Objects, sliderSourceLocations)
settings.sliderSourceLocations = sliderSourceLocations
sliderSourceLocations.tooltipText = L["LOCATIONS_SLIDER_TOOLTIP"]
sliderSourceLocations:SetOrientation('HORIZONTAL')
sliderSourceLocations:SetWidth(140)
sliderSourceLocations:SetHeight(20)
sliderSourceLocations:SetValueStep(1)
sliderSourceLocations:SetMinMaxValues(1, 40)
sliderSourceLocations:SetObeyStepOnDrag(true)
_G[sliderSourceLocations:GetName() .. 'Low']:SetText('1')
_G[sliderSourceLocations:GetName() .. 'High']:SetText('40')
sliderSourceLocations.Label = sliderSourceLocations:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderSourceLocations.Label:SetPoint("TOP", sliderSourceLocations, "BOTTOM", 0, 2)
sliderSourceLocations.Label:SetText(sliderSourceLocations:GetValue())
sliderSourceLocations:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(newValue)
	if newValue == settings:GetTooltipSetting("Locations") then
		return 1
	end
	settings:SetTooltipSetting("Locations", newValue)
	app:UpdateWindows()
end)
sliderSourceLocations.OnRefresh = function(self)
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SourceLocations") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end

local checkboxCompleted = child:CreateCheckBox(L["COMPLETED_SOURCES_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("SourceLocations:Completed"))
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SourceLocations") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("SourceLocations:Completed", self:GetChecked())
end)
checkboxCompleted:SetATTTooltip(L["COMPLETED_SOURCES_CHECKBOX_TOOLTIP"])
checkboxCompleted:SetPoint("TOP", sliderSourceLocations, "BOTTOM", 0, -8)
checkboxCompleted:SetPoint("LEFT", checkboxSourceLocations, "LEFT", 8, 4)

local checkboxCreatures = child:CreateCheckBox(L["FOR_CREATURES_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("SourceLocations:Creatures"))
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SourceLocations") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("SourceLocations:Creatures", self:GetChecked())
end)
checkboxCreatures:SetATTTooltip(L["FOR_CREATURES_CHECKBOX_TOOLTIP"])
checkboxCreatures:AlignBelow(checkboxCompleted)

local checkboxThings = child:CreateCheckBox(L["FOR_THINGS_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("SourceLocations:Things"))
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SourceLocations") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("SourceLocations:Things", self:GetChecked())
end)
checkboxThings:SetATTTooltip(L["FOR_THINGS_CHECKBOX_TOOLTIP"])
checkboxThings:AlignBelow(checkboxCreatures)

local checkboxUnsorted = child:CreateCheckBox(L["FOR_UNSORTED_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("SourceLocations:Unsorted"))
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SourceLocations") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("SourceLocations:Unsorted", self:GetChecked())
end)
checkboxUnsorted:SetATTTooltip(L["FOR_UNSORTED_CHECKBOX_TOOLTIP"])
checkboxUnsorted:AlignBelow(checkboxThings)

local checkboxAllowWrapping = child:CreateCheckBox(L["WITH_WRAPPING_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("SourceLocations:Wrapping"))
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SourceLocations") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("SourceLocations:Wrapping", self:GetChecked())
end)
checkboxAllowWrapping:SetATTTooltip(L["WITH_WRAPPING_CHECKBOX_TOOLTIP"])
checkboxAllowWrapping:AlignBelow(checkboxUnsorted)

-- Column 2
local headerListBehavior = child:CreateHeaderLabel(L["BEHAVIOR_LABEL"])
headerListBehavior:SetPoint("TOPLEFT", headerTooltips, 320, 0)

local sliderMainListScale = CreateFrame("Slider", "ATTsliderMainListScale", child, "OptionsSliderTemplate")
sliderMainListScale:SetPoint("TOPLEFT", headerListBehavior, "BOTTOMLEFT", 4, -15)
table.insert(settings.Objects, sliderMainListScale)
settings.sliderMainListScale = sliderMainListScale
sliderMainListScale.tooltipText = L["MAIN_LIST_SCALE_TOOLTIP"]
sliderMainListScale:SetOrientation('HORIZONTAL')
sliderMainListScale:SetWidth(200)
sliderMainListScale:SetHeight(20)
sliderMainListScale:SetValueStep(0.1)
sliderMainListScale:SetMinMaxValues(0.1, 4)
sliderMainListScale:SetObeyStepOnDrag(true)
_G[sliderMainListScale:GetName() .. 'Low']:SetText('0.1')
_G[sliderMainListScale:GetName() .. 'High']:SetText('4')
_G[sliderMainListScale:GetName() .. 'Text']:SetText(L["MAIN_LIST_SLIDER_LABEL"])
_G[sliderMainListScale:GetName() .. 'Text']:SetPoint("LEFT", sliderMainListScale, 0, 0)
sliderMainListScale.Label = sliderMainListScale:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderMainListScale.Label:SetPoint("TOP", sliderMainListScale, "BOTTOM", 0, 0)
sliderMainListScale.Label:SetText(tonumber(string.format("%." .. (2) .. "f", sliderMainListScale:GetValue())))
sliderMainListScale:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(tonumber(string.format("%." .. (2) .. "f", newValue)))
	settings:SetTooltipSetting("MainListScale", newValue)
	app:GetWindow("Prime"):SetScale(newValue)
end)

local sliderMiniListScale = CreateFrame("Slider", "ATTsliderMiniListScale", child, "OptionsSliderTemplate")
sliderMiniListScale:SetPoint("TOPLEFT", sliderMainListScale, "BOTTOMLEFT", 0, -25)
table.insert(settings.Objects, sliderMiniListScale)
settings.sliderMiniListScale = sliderMiniListScale
sliderMiniListScale.tooltipText = L["MINI_LIST_SCALE_TOOLTIP"]
sliderMiniListScale:SetOrientation('HORIZONTAL')
sliderMiniListScale:SetWidth(200)
sliderMiniListScale:SetHeight(20)
sliderMiniListScale:SetValueStep(0.1)
sliderMiniListScale:SetMinMaxValues(0.1, 4)
sliderMiniListScale:SetObeyStepOnDrag(true)
_G[sliderMiniListScale:GetName() .. 'Low']:SetText('0.1')
_G[sliderMiniListScale:GetName() .. 'High']:SetText('4')
_G[sliderMiniListScale:GetName() .. 'Text']:SetText(L["MINI_LIST_SLIDER_LABEL"])
_G[sliderMiniListScale:GetName() .. 'Text']:SetPoint("LEFT", sliderMiniListScale, 0, 0)
sliderMiniListScale.Label = sliderMiniListScale:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderMiniListScale.Label:SetPoint("TOP", sliderMiniListScale, "BOTTOM", 0, 0)
sliderMiniListScale.Label:SetText(tonumber(string.format("%." .. (2) .. "f", sliderMiniListScale:GetValue())))
sliderMiniListScale:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(tonumber(string.format("%." .. (2) .. "f", newValue)))
	settings:SetTooltipSetting("MiniListScale", newValue)
	for key,window in pairs(app.Windows) do
		if key ~= "Prime" then
			window:SetScale(newValue)
		end
	end
end)

local checkboxDoAdHocUpdates = child:CreateCheckBox(L["ADHOC_UPDATES_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Updates:AdHoc"))
end,
function(self)
	settings:SetTooltipSetting("Updates:AdHoc", self:GetChecked())
end)
checkboxDoAdHocUpdates:SetATTTooltip(L["ADHOC_UPDATES_CHECKBOX_TOOLTIP"])
checkboxDoAdHocUpdates:SetPoint("LEFT", headerListBehavior, 0, 0)
checkboxDoAdHocUpdates:SetPoint("TOP", sliderMiniListScale, "BOTTOM", 0, -10)

local checkboxExpandDifficulty = child:CreateCheckBox(L["EXPAND_DIFFICULTY_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Expand:Difficulty"))
end,
function(self)
	settings:SetTooltipSetting("Expand:Difficulty", self:GetChecked())
end)
checkboxExpandDifficulty:SetATTTooltip(L["EXPAND_DIFFICULTY_CHECKBOX_TOOLTIP"])
checkboxExpandDifficulty:AlignBelow(checkboxDoAdHocUpdates)

local checkboxWarnDifficulty = child:CreateCheckBox(L["WARN_DIFFICULTY_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Warn:Difficulty"))
end,
function(self)
	settings:SetTooltipSetting("Warn:Difficulty", self:GetChecked())
end)
checkboxWarnDifficulty:SetATTTooltip(L["WARN_DIFFICULTY_CHECKBOX_TOOLTIP"])
checkboxWarnDifficulty:AlignBelow(checkboxExpandDifficulty)

local checkboxShowCollectibleCostGroups = child:CreateCheckBox(L["CURRENCIES_IN_WQ_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("WorldQuestsList:Currencies"))
end,
function(self)
	settings:SetTooltipSetting("WorldQuestsList:Currencies", self:GetChecked())
end)
checkboxShowCollectibleCostGroups:SetATTTooltip(L["CURRENCIES_IN_WQ_CHECKBOX_TOOLTIP"])
checkboxShowCollectibleCostGroups:AlignBelow(checkboxWarnDifficulty)

local checkboxShowCompletedGroups = child:CreateCheckBox(L["SHOW_COMPLETED_GROUPS_CHECKBOX"],
function(self)
	self:SetChecked(settings:Get("Show:CompletedGroups"))
end,
function(self)
	settings:SetCompletedGroups(self:GetChecked())
	settings:Set("Cache:CompletedGroups", self:GetChecked())
	settings:UpdateMode(1)
end)
checkboxShowCompletedGroups:SetATTTooltip(L["SHOW_COMPLETED_GROUPS_CHECKBOX_TOOLTIP"])
checkboxShowCompletedGroups:AlignBelow(checkboxShowCollectibleCostGroups)

local checkboxShowCollectedThings = child:CreateCheckBox(L["SHOW_COLLECTED_THINGS_CHECKBOX"],
function(self)
	self:SetChecked(settings:Get("Show:CollectedThings"))
end,
function(self)
	settings:SetCollectedThings(self:GetChecked())
	settings:Set("Cache:CollectedThings", self:GetChecked())
end)
checkboxShowCollectedThings:SetATTTooltip(L["SHOW_COLLECTED_THINGS_CHECKBOX_TOOLTIP"])
checkboxShowCollectedThings:AlignBelow(checkboxShowCompletedGroups)

local checkboxUseMoreColors = child:CreateCheckBox(L["MORE_COLORS_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("UseMoreColors"))
end,
function(self)
	settings:SetTooltipSetting("UseMoreColors", self:GetChecked())
	app:UpdateWindows()
end)
checkboxUseMoreColors:SetATTTooltip(L["MORE_COLORS_CHECKBOX_TOOLTIP"])
checkboxUseMoreColors:AlignBelow(checkboxShowCollectedThings)

local checkboxNestedQuestChains = child:CreateCheckBox(L["QUEST_CHAIN_NESTED_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("QuestChain:Nested"))
end,
function(self)
	settings:SetTooltipSetting("QuestChain:Nested", self:GetChecked())
end)
checkboxNestedQuestChains:SetATTTooltip(L["QUEST_CHAIN_NESTED_CHECKBOX_TOOLTIP"])
checkboxNestedQuestChains:AlignBelow(checkboxUseMoreColors)

local checkboxSortByProgress = child:CreateCheckBox(L["SORT_BY_PROGRESS_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Sort:Progress"))
end,
function(self)
	settings:SetTooltipSetting("Sort:Progress", self:GetChecked())
end)
checkboxSortByProgress:SetATTTooltip(L["SORT_BY_PROGRESS_CHECKBOX_TOOLTIP"])
checkboxSortByProgress:AlignBelow(checkboxNestedQuestChains)

local checkboxShowRemainingCount = child:CreateCheckBox(L["SHOW_REMAINING_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:Remaining"))
	if self:GetChecked() then
		app.GetProgressText = app.GetProgressTextRemaining
	else
		app.GetProgressText = app.GetProgressTextDefault
	end
end,
function(self)
	settings:SetTooltipSetting("Show:Remaining", self:GetChecked())
	app:UpdateWindows()
end)
checkboxShowRemainingCount:SetATTTooltip(L["SHOW_REMAINING_CHECKBOX_TOOLTIP"])
checkboxShowRemainingCount:AlignBelow(checkboxSortByProgress)

local checkboxShowPercentageCount = child:CreateCheckBox(L["PERCENTAGES_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:Percentage"))
end,
function(self)
	settings:SetTooltipSetting("Show:Percentage", self:GetChecked())
	app:UpdateWindows()
end)
checkboxShowPercentageCount:SetATTTooltip(L["PERCENTAGES_CHECKBOX_TOOLTIP"])
checkboxShowPercentageCount:AlignBelow(checkboxShowRemainingCount)

local sliderPercentagePrecision = CreateFrame("Slider", "ATTsliderPercentagePrecision", child, "OptionsSliderTemplate")
sliderPercentagePrecision:SetPoint("LEFT", sliderMainListScale, 0, 0)
sliderPercentagePrecision:SetPoint("TOP", checkboxShowPercentageCount, "BOTTOM", 0, -12)
table.insert(settings.Objects, sliderPercentagePrecision)
settings.sliderPercentagePrecision = sliderPercentagePrecision
sliderPercentagePrecision.tooltipText = L["PRECISION_SLIDER_TOOLTIP"]
sliderPercentagePrecision:SetOrientation('HORIZONTAL')
sliderPercentagePrecision:SetWidth(200)
sliderPercentagePrecision:SetHeight(20)
sliderPercentagePrecision:SetValueStep(1)
sliderPercentagePrecision:SetMinMaxValues(0, 8)
sliderPercentagePrecision:SetObeyStepOnDrag(true)
_G[sliderPercentagePrecision:GetName() .. 'Low']:SetText('0')
_G[sliderPercentagePrecision:GetName() .. 'High']:SetText('8')
_G[sliderPercentagePrecision:GetName() .. 'Text']:SetText(L["PRECISION_SLIDER"])
_G[sliderPercentagePrecision:GetName() .. 'Text']:SetPoint("LEFT", sliderPercentagePrecision, 0, 0)
sliderPercentagePrecision.Label = sliderPercentagePrecision:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderPercentagePrecision.Label:SetPoint("TOP", sliderPercentagePrecision, "BOTTOM", 0, 2)
sliderPercentagePrecision.Label:SetText(sliderPercentagePrecision:GetValue())
sliderPercentagePrecision:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(newValue)
	if newValue == settings:GetTooltipSetting("Precision") then
		return 1
	end
	settings:SetTooltipSetting("Precision", newValue)
	app:UpdateWindows()
end)
sliderPercentagePrecision.OnRefresh = function(self)
	if not settings:GetTooltipSetting("Show:Percentage") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end

-- Dynamic Category Toggles
local textDynamicCategories = child:CreateTextLabel("|cffFFFFFF"..L["DYNAMIC_CATEGORY_LABEL"])
textDynamicCategories:SetPoint("LEFT", checkboxShowPercentageCount, "LEFT", 4, 0)
textDynamicCategories:SetPoint("TOP", sliderPercentagePrecision, "BOTTOM", 0, -15)

local checkboxDynamicOff = child:CreateCheckBox(L["DYNAMIC_CATEGORY_OFF"],
function(self)
	-- Only check self if the setting is set to this option
	self:SetChecked(settings:Get("Dynamic:Style") == 0)
end,
function(self)
	-- Don't uncheck self if checked again
	if settings:Get("Dynamic:Style") == 0 then
		self:SetChecked(true)
		return
	end
	-- Set the setting to this option if checked
	if self:GetChecked() then
		settings:Set("Dynamic:Style", 0)
	end
end)
checkboxDynamicOff:SetPoint("TOP", textDynamicCategories, "BOTTOM", 0, 0)
checkboxDynamicOff:SetPoint("LEFT", textDynamicCategories, "LEFT", 0, 0)
checkboxDynamicOff:SetATTTooltip(L["DYNAMIC_CATEGORY_OFF_TOOLTIP"]..L["DYNAMIC_CATEGORY_TOOLTIP_NOTE"])

local checkboxDynamicSimple = child:CreateCheckBox(L["DYNAMIC_CATEGORY_SIMPLE"],
function(self)
	-- Only check self if the setting is set to this option
	self:SetChecked(settings:Get("Dynamic:Style") == 1)
end,
function(self)
	-- Don't uncheck self if checked again
	if settings:Get("Dynamic:Style") == 1 then
		self:SetChecked(true)
		return
	end
	-- Set the setting to this option if checked
	if self:GetChecked() then
		settings:Set("Dynamic:Style", 1)
	end
end)
checkboxDynamicSimple:AlignAfter(checkboxDynamicOff)
checkboxDynamicSimple:SetATTTooltip(L["DYNAMIC_CATEGORY_SIMPLE_TOOLTIP"]..L["DYNAMIC_CATEGORY_TOOLTIP_NOTE"])

local checkboxDynamicNested = child:CreateCheckBox(L["DYNAMIC_CATEGORY_NESTED"],
function(self)
	-- Only check self if the setting is set to this option
	self:SetChecked(settings:Get("Dynamic:Style") == 2)
end,
function(self)
	-- Don't uncheck self if checked again
	if settings:Get("Dynamic:Style") == 2 then
		self:SetChecked(true)
		return
	end
	-- Set the setting to this option if checked
	if self:GetChecked() then
		settings:Set("Dynamic:Style", 2)
	end
end)
checkboxDynamicNested:AlignAfter(checkboxDynamicSimple)
checkboxDynamicNested:SetATTTooltip(L["DYNAMIC_CATEGORY_NESTED_TOOLTIP"]..L["DYNAMIC_CATEGORY_TOOLTIP_NOTE"])

local headerWindowColors = child:CreateHeaderLabel(L["WINDOW_COLORS"])
headerWindowColors:SetPoint("LEFT", headerListBehavior, 0, 0)
headerWindowColors:SetPoint("TOP", checkboxDynamicOff, "BOTTOM", 0, -10)

-- Color Picker
local function changeBackgroundColor(restore)
	local newR, newG, newB, newA
	if restore then
		-- The user bailed, we extract the old color from the table created by ShowColorPicker
		newR, newG, newB, newA = unpack(restore)
	else
		-- Something changed
		newA, newR, newG, newB = OpacitySliderFrame:GetValue(), ColorPickerFrame:GetColorRGB()
	end

	-- Update our internal storage
 	local r, g, b, a = newR, newG, newB, newA
	settings:Set("Window:BackgroundColor", {r = newR, g = newG, b = newB, a = newA})

 	-- And update the actual windows
	for suffix, window in pairs(AllTheThings.Windows) do
		window:SetBackdropColor(r, g, b, a)
	end
end

local function changeBorderColor(restore)
	local newR, newG, newB, newA
	if restore then
		-- The user bailed, we extract the old color from the table created by ShowColorPicker
		newR, newG, newB, newA = unpack(restore)
	else
		-- Something changed
		newA, newR, newG, newB = OpacitySliderFrame:GetValue(), ColorPickerFrame:GetColorRGB()
	end

	-- Update our internal storage
 	local r, g, b, a = newR, newG, newB, newA
	settings:Set("Window:BorderColor", {r = newR, g = newG, b = newB, a = newA})

 	-- And update the actual windows
	for suffix, window in pairs(AllTheThings.Windows) do
		window:SetBackdropBorderColor(r, g, b, a)
	end
end

function ShowColorPicker(r, g, b, a, changedCallback)
	ColorPickerFrame.hasOpacity, ColorPickerFrame.opacity = (a ~= nil), a
	ColorPickerFrame.previousValues = {r,g,b,a}
	ColorPickerFrame.func, ColorPickerFrame.opacityFunc, ColorPickerFrame.cancelFunc =
		changedCallback, changedCallback, changedCallback
	ColorPickerFrame:SetColorRGB(r,g,b)
	ColorPickerFrame:Hide()	-- Need to run the OnShow handler
	ColorPickerFrame:Show()
end

local buttonBackgroundColor = child:CreateButton(
-- button settings
{
	text = L["BACKGROUND"],
	tooltip = L["BACKGROUND_TOOLTIP"],
},
-- function hooks for the button
{
	OnClick = function(self)
		local r = tonumber(settings:Get("Window:BackgroundColor").r) or 0
		local g = tonumber(settings:Get("Window:BackgroundColor").g) or 0
		local b = tonumber(settings:Get("Window:BackgroundColor").b) or 0
		local a = tonumber(settings:Get("Window:BackgroundColor").a) or 0
		ShowColorPicker(r, g, b, a, changeBackgroundColor)
	end,
})
buttonBackgroundColor:SetPoint("TOPLEFT", headerWindowColors, "BOTTOMLEFT", 0, -5)

local buttonBorderColor = child:CreateButton(
-- button settings
{
	text = L["BORDER"],
	tooltip = L["BORDER_TOOLTIP"],
},
-- function hooks for the button
{
	OnClick = function(self)
		local r = tonumber(settings:Get("Window:BorderColor").r) or 0
		local g = tonumber(settings:Get("Window:BorderColor").g) or 0
		local b = tonumber(settings:Get("Window:BorderColor").b) or 0
		local a = tonumber(settings:Get("Window:BorderColor").a) or 0
		ShowColorPicker(r, g, b, a, changeBorderColor)
	end,
})
buttonBorderColor:SetPoint("BOTTOMLEFT", buttonBackgroundColor, "BOTTOMRIGHT", 5, 0)
buttonBorderColor.OnRefresh = function(self)
	if settings:GetTooltipSetting("Window:UseClassForBorder") then
		self:Disable()
	else
		self:Enable()
	end
end

local buttonResetColor = child:CreateButton(
-- button settings
{
	text = L["RESET"],
	tooltip = L["RESET_TOOLTIP"],
},
-- function hooks for the button
{
	OnClick = function(self)
		settings:Set("Window:BackgroundColor", {r = 0, g = 0, b = 0, a = 1})
		settings:Set("Window:BorderColor", {r = 1, g = 1, b = 1, a = 1})

		for suffix, window in pairs(AllTheThings.Windows) do
			window:SetBackdropColor(0, 0, 0, 1)
			window:SetBackdropBorderColor(1, 1, 1, 1)
		end
	end,
})
buttonResetColor:SetPoint("BOTTOMLEFT", buttonBorderColor, "BOTTOMRIGHT", 5, 0)

local checkboxUseClassColorForBorder = child:CreateCheckBox(L["CLASS_BORDER"],	-- LOCALISE
function(self)
	self:SetChecked(settings:GetTooltipSetting("Window:UseClassForBorder"))
end,
function(self)
	settings:SetTooltipSetting("Window:UseClassForBorder", self:GetChecked())
	app:UpdateWindows()
end)
checkboxUseClassColorForBorder:SetATTTooltip(L["CLASS_BORDER_TOOLTIP"])
checkboxUseClassColorForBorder:SetPoint("TOPLEFT", buttonBackgroundColor, "BOTTOMLEFT", -2, 0)

--Bottom
local headerAdditionalInformation = child:CreateHeaderLabel(L["ADDITIONAL_LABEL"])
headerAdditionalInformation:SetPoint("LEFT", headerTooltips, 0, 0)
headerAdditionalInformation:SetPoint("TOP", checkboxUseClassColorForBorder, "BOTTOM", 0, -10)

local ids = {
	["achievementID"] = "Achievement ID",
	["achievementCategoryID"] = "Achievement Category ID",
	["artifactID"] = "Artifact ID",
	["azeriteEssenceID"] = "Azerite Essence ID",
	["bonusID"] = "Bonus ID",
	["creatureID"] = "Creature ID",
	["creatures"] = "Creatures List",
	["currencyID"] = "Currency ID",
	["difficultyID"] = "Difficulty ID",
	["displayID"] = "Display ID",
	["encounterID"] = "Encounter ID",
	["factionID"] = "Faction ID",
	["filterID"] = "Filter ID",
	["flightPathID"] = "Flight Path ID",
	["followerID"] = "Follower ID",
	["headerID"] = "Header ID",
	["iconPath"] = "Icon Path",
	["illusionID"] = "Illusion ID",
	["instanceID"] = "Instance ID",
	["itemID"] = "Item ID",
	["itemString"] = "Item String",
	["mapID"] = "Map ID",
	["modID"] = "Mod ID",
	["objectID"] = "Object ID",
	["questID"] = "Quest ID",
	["QuestGivers"] = "Quest Givers",
	["sourceID"] = "Source ID",
	["speciesID"] = "Species ID",
	["spellID"] = "Spell ID",
	["tierID"] = "Tier ID",
	["titleID"] = "Title ID",
	["visualID"] = "Visual ID",
}
local last = nil
local idNo = 1
for _,id in pairs({"achievementID","achievementCategoryID","artifactID","azeriteEssenceID","bonusID","creatureID","creatures","currencyID", "difficultyID","displayID","encounterID","factionID","filterID","flightPathID","followerID","headerID","iconPath","illusionID","instanceID","itemID","itemString","mapID","modID","objectID","questID","QuestGivers","sourceID","speciesID","spellID","tierID","titleID","visualID"}) do
	local filter = child:CreateCheckBox(ids[id],
	function(self)
		self:SetChecked(settings:GetTooltipSetting(id))
	end,
	function(self)
		settings:SetTooltipSetting(id, self:GetChecked())
		settings:Refresh()
	end)
	-- Column 1
	if idNo == 1 then
		filter:SetPoint("TOPLEFT", headerAdditionalInformation, "BOTTOMLEFT", -2, 0)
	-- Column 2
	elseif idNo == 12 then
		filter:SetPoint("TOPLEFT", headerAdditionalInformation, "BOTTOMLEFT", 212, 0)
	-- Column 3
	elseif idNo == 23 then
		filter:SetPoint("TOPLEFT", headerAdditionalInformation, "BOTTOMLEFT", 425, 0)
	else
		filter:AlignBelow(last)
	end
	idNo = idNo + 1
	last = filter
end

end)();

---------------------
-- "Features" page --
---------------------

-- SETUP
(function()
-- Create the page
local child = settings:CreateOptionsPage(L["FEATURES_PAGE"], true)

-- CONTENT

-- Column 1
local headerCelebrations = child:CreateHeaderLabel(L["CELEBRATIONS_LABEL"])
headerCelebrations:SetPoint("TOPLEFT", child, 0, 0)

local textSoundChannel = child:CreateTextLabel("|cffFFFFFF"..L["AUDIO_CHANNEL"])
textSoundChannel:SetPoint("TOPLEFT", headerCelebrations, "BOTTOMLEFT", 0, -8)
textSoundChannel:SetWidth(textSoundChannel:GetUnboundedStringWidth())

local checkboxMasterChannel = child:CreateCheckBox(L["CHANNEL_MASTER"],
function(self)
	-- Only check self if the setting is set to this option
	self:SetChecked(settings:GetTooltipSetting("Channel") == "Master")
end,
function(self)
	-- Don't uncheck self if checked again
	if settings:GetTooltipSetting("Channel") == "Master" then
		self:SetChecked(true)
		return
	end
	-- Set the setting to this option if checked
	if self:GetChecked() then
		settings:SetTooltipSetting("Channel", "Master")
	end
end)
checkboxMasterChannel:SetPoint("BOTTOMLEFT", textSoundChannel, "BOTTOMRIGHT", 2, -8)

local checkboxMusicChannel = child:CreateCheckBox(L["CHANNEL_MUSIC"],
function(self)
	-- Only check self if the setting is set to this option
	self:SetChecked(settings:GetTooltipSetting("Channel") == "Music")
end,
function(self)
	-- Don't uncheck self if checked again
	if settings:GetTooltipSetting("Channel") == "Music" then
		self:SetChecked(true)
		return
	end
	-- Set the setting to this option if checked
	if self:GetChecked() then
		settings:SetTooltipSetting("Channel", "Music")
	end
end)
checkboxMusicChannel:AlignAfter(checkboxMasterChannel)

local checkboxEffectsChannel = child:CreateCheckBox(L["CHANNEL_SFX"],
function(self)
	-- Only check self if the setting is set to this option
	self:SetChecked(settings:GetTooltipSetting("Channel") == "SFX")
end,
function(self)
	-- Don't uncheck self if checked again
	if settings:GetTooltipSetting("Channel") == "SFX" then
		self:SetChecked(true)
		return
	end
	-- Set the setting to this option if checked
	if self:GetChecked() then
		settings:SetTooltipSetting("Channel", "SFX")
	end
end)
checkboxEffectsChannel:SetPoint("TOPLEFT", textSoundChannel, "BOTTOMLEFT", 6, -3)

local checkboxAmbienceChannel = child:CreateCheckBox(L["CHANNEL_AMBIENCE"],
function(self)
	-- Only check self if the setting is set to this option
	self:SetChecked(settings:GetTooltipSetting("Channel") == "Ambience")
end,
function(self)
	-- Don't uncheck self if checked again
	if settings:GetTooltipSetting("Channel") == "Ambience" then
		self:SetChecked(true)
		return
	end
	-- Set the setting to this option if checked
	if self:GetChecked() then
		settings:SetTooltipSetting("Channel", "Ambience")
	end
end)
checkboxAmbienceChannel:AlignAfter(checkboxEffectsChannel)

local checkboxDialogChannel = child:CreateCheckBox(L["CHANNEL_DIALOG"],
function(self)
	-- Only check self if the setting is set to this option
	self:SetChecked(settings:GetTooltipSetting("Channel") == "Dialog")
end,
function(self)
	-- Don't uncheck self if checked again
	if settings:GetTooltipSetting("Channel") == "Dialog" then
		self:SetChecked(true)
		return
	end
	-- Set the setting to this option if checked
	if self:GetChecked() then
		settings:SetTooltipSetting("Channel", "Dialog")
	end
end)
checkboxDialogChannel:AlignAfter(checkboxAmbienceChannel)

local checkboxCelebrateCollectedThings = child:CreateCheckBox(L["CELEBRATE_COLLECTED_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Celebrate"))
end,
function(self)
	settings:SetTooltipSetting("Celebrate", self:GetChecked())
end)
checkboxCelebrateCollectedThings:SetATTTooltip(L["CELEBRATE_COLLECTED_CHECKBOX_TOOLTIP"])
checkboxCelebrateCollectedThings:AlignBelow(checkboxEffectsChannel, -1)

local checkboxWarnRemovedThings = child:CreateCheckBox(L["WARN_REMOVED_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Warn:Removed"))
end,
function(self)
	settings:SetTooltipSetting("Warn:Removed", self:GetChecked())
end)
checkboxWarnRemovedThings:SetATTTooltip(L["WARN_REMOVED_CHECKBOX_TOOLTIP"])
checkboxWarnRemovedThings:AlignBelow(checkboxCelebrateCollectedThings)

local checkboxScreenshotCollectedThings = child:CreateCheckBox(L["SCREENSHOT_COLLECTED_CHECKBOX"],
	function(self)
		self:SetChecked(settings:GetTooltipSetting("Screenshot"))
	end,
	function(self)
		settings:SetTooltipSetting("Screenshot", self:GetChecked())
	end)
checkboxScreenshotCollectedThings:SetATTTooltip(L["SCREENSHOT_COLLECTED_CHECKBOX_TOOLTIP"])
checkboxScreenshotCollectedThings:AlignBelow(checkboxWarnRemovedThings)

local checkboxPlayDeathSound = child:CreateCheckBox("Play a sound when you die" --[[L["PLAY_DEATH_SOUND_CHECKBOX"] ]],
function(self)
	self:SetChecked(settings:GetTooltipSetting("PlayDeathSound"))
end,
function(self)
	settings:SetTooltipSetting("PlayDeathSound", self:GetChecked())
end)
--checkboxPlayDeathSound:SetATTTooltip(L["PLAY_DEATH_SOUND_CHECKBOX_TOOLTIP"])
checkboxPlayDeathSound:AlignBelow(checkboxScreenshotCollectedThings)

local textSoundpack = child:CreateTextLabel("|cffFFFFFF"..L["SOUNDPACK"])
textSoundpack:SetPoint("LEFT", headerCelebrations, 0, 0)
textSoundpack:SetPoint("TOP", checkboxPlayDeathSound, "BOTTOM", 0, 0)
textSoundpack:SetWidth(textSoundpack:GetUnboundedStringWidth())

local dropdownSoundpack = CreateFrame("Frame", "dropdownSoundpack", child, "UIDropDownMenuTemplate")
dropdownSoundpack:SetPoint("TOPLEFT", textSoundpack, "BOTTOMLEFT", -15, 0)
UIDropDownMenu_SetWidth(dropdownSoundpack, 270) -- Use in place of dropDown:SetWidth

-- Set the dropdown's current text to the active soundpack 
AllTheThings.Audio:RegisterForSoundPackEvents(function(event, soundPack)
	UIDropDownMenu_SetText(dropdownSoundpack, AllTheThings.Audio:GetActiveSoundPack().name)
end)

-- Change the active soundpack based on user selection
local function WPDropDownDemo_OnClick(self, arg1)
	AllTheThings.Audio:ActivateSoundPack(arg1)
	UIDropDownMenu_SetText(dropdownSoundpack, AllTheThings.Audio:GetActiveSoundPack().name)
	AllTheThings.Audio:PlayFanfare()
end

-- Populate the dropdown menu with all existing soundpacks
function WPDropDownDemo_Menu(frame, level, menuList)
	local info = UIDropDownMenu_CreateInfo()
	info.func = WPDropDownDemo_OnClick

	local soundPacks = AllTheThings.Audio:GetAllSoundPacks()
	for i, sounds in pairs(soundPacks) do
		info.text, info.arg1 = sounds.name, sounds.name
		UIDropDownMenu_AddButton(info)
	end
end
UIDropDownMenu_Initialize(dropdownSoundpack, WPDropDownDemo_Menu)

local headerMinimapButton = child:CreateHeaderLabel(L["MINIMAP_LABEL"])
headerMinimapButton:SetPoint("LEFT", headerCelebrations, 0, 0)
headerMinimapButton:SetPoint("TOP", dropdownSoundpack, "BOTTOM", 0, -10)

local checkboxShowMinimapButton = child:CreateCheckBox(L["MINIMAP_BUTTON_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("MinimapButton"))
end,
function(self)
	settings:SetTooltipSetting("MinimapButton", self:GetChecked())
	if self:GetChecked() then
		if not app.Minimap then app.Minimap = app.CreateMinimapButton() end
		app.Minimap:Show()
	elseif app.Minimap then
		app.Minimap:Hide()
	end
end)
checkboxShowMinimapButton:SetATTTooltip(L["MINIMAP_BUTTON_CHECKBOX_TOOLTIP"])
checkboxShowMinimapButton:SetPoint("TOPLEFT", headerMinimapButton, "BOTTOMLEFT", -2, 0)

local checkboxMinimapButtonStyle = child:CreateCheckBox(L["MINIMAP_BUTTON_STYLE_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("MinimapStyle"))
	if not settings:GetTooltipSetting("MinimapButton") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("MinimapStyle", self:GetChecked())
	if app.Minimap then app.Minimap:UpdateStyle() end
end)
checkboxMinimapButtonStyle:SetATTTooltip(L["MINIMAP_BUTTON_STYLE_CHECKBOX_TOOLTIP"])
checkboxMinimapButtonStyle:AlignBelow(checkboxShowMinimapButton, 1)

local sliderMinimapButtonSize = CreateFrame("Slider", "ATTsliderMinimapButtonSize", child, "OptionsSliderTemplate")
sliderMinimapButtonSize:SetPoint("TOPLEFT", checkboxMinimapButtonStyle, "BOTTOMLEFT", 5, -12)
table.insert(settings.Objects, sliderMinimapButtonSize)
settings.sliderMinimapButtonSize = sliderMinimapButtonSize
sliderMinimapButtonSize.tooltipText = L["MINIMAP_SLIDER_TOOLTIP"]
sliderMinimapButtonSize:SetOrientation('HORIZONTAL')
sliderMinimapButtonSize:SetWidth(200)
sliderMinimapButtonSize:SetHeight(20)
sliderMinimapButtonSize:SetValueStep(1)
sliderMinimapButtonSize:SetMinMaxValues(18, 48)
sliderMinimapButtonSize:SetObeyStepOnDrag(true)
_G[sliderMinimapButtonSize:GetName() .. 'Low']:SetText('18')
_G[sliderMinimapButtonSize:GetName() .. 'High']:SetText('48')
_G[sliderMinimapButtonSize:GetName() .. 'Text']:SetText(L["MINIMAP_SLIDER"])
_G[sliderMinimapButtonSize:GetName() .. 'Text']:SetPoint("LEFT", sliderMinimapButtonSize, 0, 0)
sliderMinimapButtonSize.Label = sliderMinimapButtonSize:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderMinimapButtonSize.Label:SetPoint("TOP", sliderMinimapButtonSize, "BOTTOM", 0, 2)
sliderMinimapButtonSize.Label:SetText(sliderMinimapButtonSize:GetValue())
sliderMinimapButtonSize:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(newValue)
	if newValue == settings:GetTooltipSetting("MinimapSize") then
		return 1
	end
	settings:SetTooltipSetting("MinimapSize", newValue)
	if app.Minimap then app.Minimap:SetSize(newValue, newValue) end
end)
sliderMinimapButtonSize.OnRefresh = function(self)
	if not settings:GetTooltipSetting("MinimapButton") or settings:GetTooltipSetting("MinimapStyle") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end

local headerModules = child:CreateHeaderLabel(L["MODULES_LABEL"])
headerModules:SetPoint("TOP", sliderMinimapButtonSize, "BOTTOM", 0, -20)
headerModules:SetPoint("LEFT", headerMinimapButton, "LEFT", 0, 0)

local ChangeSkipCutsceneState = function(self, checked)
	if checked then
		self:RegisterEvent("PLAY_MOVIE")
		self:RegisterEvent("CINEMATIC_START")
	else
		self:UnregisterEvent("PLAY_MOVIE")
		self:UnregisterEvent("CINEMATIC_START")
	end
end
local checkboxAutomaticallySkipCutscenes = child:CreateCheckBox(L["SKIP_CUTSCENES_CHECKBOX"],
function(self)
	local checked = settings:GetTooltipSetting("Skip:Cutscenes")
	self:SetChecked(checked)
	self:SetScript("OnEvent", function(self, ...)
		-- print(self, "OnEvent", ...)
		MovieFrame:Hide()
		CinematicFrame_CancelCinematic()
		app.print(RENOWN_LEVEL_UP_SKIP_BUTTON,CINEMATICS)
	end)
	ChangeSkipCutsceneState(self, checked)
end,
function(self)
	settings:SetTooltipSetting("Skip:Cutscenes", self:GetChecked())
end)
checkboxAutomaticallySkipCutscenes:SetATTTooltip(L["SKIP_CUTSCENES_CHECKBOX_TOOLTIP"])
checkboxAutomaticallySkipCutscenes:SetPoint("TOPLEFT", headerModules, "BOTTOMLEFT", -2, 0)

local checkboxAutomaticallyOpenMainList = child:CreateCheckBox(L["AUTO_MAIN_LIST_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:MainList"))
end,
function(self)
	settings:SetTooltipSetting("Auto:MainList", self:GetChecked())
end)
checkboxAutomaticallyOpenMainList:SetATTTooltip(L["AUTO_MAIN_LIST_CHECKBOX_TOOLTIP"])
checkboxAutomaticallyOpenMainList:AlignBelow(checkboxAutomaticallySkipCutscenes)

local checkboxAutomaticallyOpenMiniList = child:CreateCheckBox(L["AUTO_MINI_LIST_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:MiniList"))
end,
function(self)
	settings:SetTooltipSetting("Auto:MiniList", self:GetChecked())
end)
checkboxAutomaticallyOpenMiniList:SetATTTooltip(L["AUTO_MINI_LIST_CHECKBOX_TOOLTIP"])
checkboxAutomaticallyOpenMiniList:AlignBelow(checkboxAutomaticallyOpenMainList)

local checkboxAutomaticallyOpenBountyList = child:CreateCheckBox(L["AUTO_BOUNTY_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:BountyList"))
end,
function(self)
	settings:SetTooltipSetting("Auto:BountyList", self:GetChecked())
end)
checkboxAutomaticallyOpenBountyList:SetATTTooltip(L["AUTO_BOUNTY_CHECKBOX_TOOLTIP"])
checkboxAutomaticallyOpenBountyList:AlignBelow(checkboxAutomaticallyOpenMiniList)

local checkboxAutomaticallyOpenProfessionList = child:CreateCheckBox(L["AUTO_PROF_LIST_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:ProfessionList"))
end,
function(self)
	settings:SetTooltipSetting("Auto:ProfessionList", self:GetChecked())
end)
checkboxAutomaticallyOpenProfessionList:SetATTTooltip(L["AUTO_PROF_LIST_CHECKBOX_TOOLTIP"])
checkboxAutomaticallyOpenProfessionList:AlignBelow(checkboxAutomaticallyOpenBountyList)

local checkboxAutomaticallyOpenRaidAssistant = child:CreateCheckBox(L["AUTO_RAID_ASSISTANT_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:RaidAssistant"))
end,
function(self)
	settings:SetTooltipSetting("Auto:RaidAssistant", self:GetChecked())
end)
checkboxAutomaticallyOpenRaidAssistant:SetATTTooltip(L["AUTO_RAID_ASSISTANT_CHECKBOX_TOOLTIP"])
checkboxAutomaticallyOpenRaidAssistant:AlignBelow(checkboxAutomaticallyOpenProfessionList)

local checkboxAutomaticallyOpenWorldQuestList = child:CreateCheckBox(L["AUTO_WQ_LIST_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:WorldQuestsList"))
end,
function(self)
	settings:SetTooltipSetting("Auto:WorldQuestsList", self:GetChecked())
end)
checkboxAutomaticallyOpenWorldQuestList:SetATTTooltip(L["AUTO_WQ_LIST_CHECKBOX_TOOLTIP"])
checkboxAutomaticallyOpenWorldQuestList:AlignBelow(checkboxAutomaticallyOpenRaidAssistant)

-- TODO: eventually AH module gets fixed...
local checkboxShowAHModule = child:CreateCheckBox(L["AUCTION_TAB_CHECKBOX"],
function(self)
	self:SetChecked(false)
	self:Disable()
	self:SetAlpha(0.4)
	-- self:SetChecked(settings:GetTooltipSetting("Auto:AH"))
end,
function(self)
	-- settings:SetTooltipSetting("Auto:AH", self:GetChecked())
	-- if app.Blizzard_AuctionHouseUILoaded then
	-- 	if app.AuctionModuleTabID then
	-- 		if self:GetChecked() then
	-- 			PanelTemplates_EnableTab(AuctionHouseFrame, app.AuctionModuleTabID)
	-- 			app:OpenAuctionModule()
	-- 		else
	-- 			PanelTemplates_DisableTab(AuctionHouseFrame, app.AuctionModuleTabID)
	-- 		end
	-- 	else
	-- 		app:OpenAuctionModule()
	-- 	end
	-- end
end)
checkboxShowAHModule:SetATTTooltip(L["AUCTION_TAB_CHECKBOX_TOOLTIP"])
checkboxShowAHModule:AlignBelow(checkboxAutomaticallyOpenWorldQuestList)

local headerReporting = child:CreateHeaderLabel(L["REPORTING_LABEL"])
headerReporting:SetPoint("TOP", checkboxShowAHModule, "BOTTOM", 0, -10)
headerReporting:SetPoint("LEFT", headerModules, "LEFT", 0, 0)

local checkboxReportCollectedThings = child:CreateCheckBox(L["REPORT_COLLECTED_THINGS_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Report:Collected"))
end,
function(self)
	settings:SetTooltipSetting("Report:Collected", self:GetChecked())
end)
checkboxReportCollectedThings:SetATTTooltip(L["REPORT_COLLECTED_THINGS_CHECKBOX_TOOLTIP"])
checkboxReportCollectedThings:SetPoint("TOPLEFT", headerReporting, "BOTTOMLEFT", -2, 0)

local checkboxReportQuests = child:CreateCheckBox(L["REPORT_COMPLETED_QUESTS_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Report:CompletedQuests"))
end,
function(self)
	settings:SetTooltipSetting("Report:CompletedQuests", self:GetChecked())
end)
checkboxReportQuests:SetATTTooltip(L["REPORT_COMPLETED_QUESTS_CHECKBOX_TOOLTIP"])
checkboxReportQuests:AlignBelow(checkboxReportCollectedThings)

local checkboxReportUnsourced = child:CreateCheckBox(L["REPORT_UNSORTED_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Report:UnsortedQuests"))
	if not settings:GetTooltipSetting("Report:CompletedQuests") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("Report:UnsortedQuests", self:GetChecked())
end)
checkboxReportUnsourced:SetATTTooltip(L["REPORT_UNSORTED_CHECKBOX_TOOLTIP"])
checkboxReportUnsourced:AlignBelow(checkboxReportQuests, 1)

-- Column 2
local headerIconLegend = child:CreateHeaderLabel(L["ICON_LEGEND_LABEL"])
headerIconLegend:SetPoint("TOPLEFT", headerCelebrations, 320, 0)

local textIconLegend = child:CreateTextLabel(L["ICON_LEGEND_TEXT"])
textIconLegend:SetPoint("TOPLEFT", headerIconLegend, "BOTTOMLEFT", 0, -4)
textIconLegend:SetWidth(320)

local headerChatCommands = child:CreateHeaderLabel(L["CHAT_COMMANDS_LABEL"])
headerChatCommands:SetPoint("LEFT", headerIconLegend, 0, 0)
headerChatCommands:SetPoint("TOP", textIconLegend, "BOTTOM", 0, -15)

local textChatCommands = child:CreateTextLabel(L["CHAT_COMMANDS_TEXT"])
textChatCommands:SetPoint("TOPLEFT", headerChatCommands, "BOTTOMLEFT", 0, -4)
textChatCommands:SetWidth(320)

local headerKeybindings = child:CreateHeaderLabel(L["KEYBINDINGS"])
headerKeybindings:SetPoint("LEFT", headerChatCommands, 0, 0)
headerKeybindings:SetPoint("TOP", textChatCommands, "BOTTOM", 0, -15)

local textKeybindings = child:CreateTextLabel(Colorize(L["KEYBINDINGS_TEXT"], app.Colors.White))
textKeybindings:SetPoint("TOPLEFT", headerKeybindings, "BOTTOMLEFT", 0, -4)
textKeybindings:SetWidth(320)

end)();

---------------------
-- "Profiles" page --
---------------------
-- SETUP
(function()
-- Create the page
local child = settings:CreateOptionsPage(L["PROFILES_PAGE"], true)

-- CONTENT
local headerProfiles = child:CreateHeaderLabel(L["PROFILES_PAGE"])
headerProfiles:SetPoint("TOPLEFT", child, 0, 0)

local textCurrentProfile = child:CreateHeaderLabel(REFORGE_CURRENT..":")
textCurrentProfile:SetPoint("TOPLEFT", headerProfiles, "BOTTOMLEFT", 0, -10)

local textCurrentProfileName = child:CreateHeaderLabel(" ")
textCurrentProfileName:AlignAfter(textCurrentProfile, 10);
textCurrentProfileName:SetTextColor(1, 1, 1, 1)

-- New Profile Textbox + Label
local textboxNewProfile = child:CreateTextbox(
-- textbox settings
{
	title = NEW_COMPACT_UNIT_FRAME_PROFILE,
	width = 200,
},
-- function hooks for the textbox
{
	OnRefresh = function(self)
		self:SetText("")
	end,
})
textboxNewProfile:SetPoint("TOPLEFT", textCurrentProfile, "BOTTOMLEFT", 5, -20)
textboxNewProfile:SetATTTooltip(L["PROFILE_NEW_TOOLTIP"])
textboxNewProfile:Show()

-- Profiles selector scrollbox
local profileSelector = child:CreateScrollFrame()
local profileScroller = profileSelector.ScrollContainer
profileScroller:SetPoint("TOPLEFT", textboxNewProfile, "BOTTOMLEFT", 0, -10)
profileScroller:SetPoint("RIGHT", textboxNewProfile, "RIGHT", 25, 0)
profileScroller:SetHeight(475)
settings.ApplyBackdropColor(profileScroller, 20, 20, 20, 1)

-- Initialize Profiles Button
local SelectedProfile;
local function InitProfilesButton_Disable(self)
	self:Disable()
end
local buttonInitializeProfiles = child:CreateButton(
-- button settings
{
	text = L["PROFILE_INITIALIZE"],
	tooltip = L["PROFILE_INITIALIZE_TOOLTIP"],
},
-- function hooks for the button
{
	OnClick = function(self)
		app:ShowPopupDialog(L["PROFILE_INITIALIZE_CONFIRM"],
		function()
			app.SetupProfiles()
			settings.Callback(InitProfilesButton_Disable, self)
		end)
	end,
})
buttonInitializeProfiles:SetPoint("TOPLEFT", headerProfiles, "TOPRIGHT", 10, 5)
buttonInitializeProfiles:Show()

-- common function for setting the current profile
local UseProfile = function(profile)
	SelectedProfile = nil
	settings:SetProfile(profile)
	settings:ApplyProfile()
	settings:UpdateMode(1)
end

-- Create Button
local buttonCreateProfile = child:CreateButton(
-- button settings
{
	text = CREATE_COMPACT_UNIT_FRAME_PROFILE,
	tooltip = CREATE_NEW_COMPACT_UNIT_FRAME_PROFILE,
},
-- function hooks for the button
{
	OnClick = function(self)
		-- if self.ATTActionObject and self.ATTActionObject.GetText then
			local newProfile = textboxNewProfile:GetText()
			if newProfile and newProfile ~= "" then
				if settings:NewProfile(newProfile) then
					UseProfile(newProfile)
					profileSelector:OnRefresh()
					return true
				end
				-- TODO dialog about existing profile
				-- app:ShowPopupDialog("Profile already exists!", function() end)
			end
		-- end
	end,
})
buttonCreateProfile:SetPoint("TOPLEFT", textboxNewProfile, "TOPRIGHT", 5, 2)

-- Delete Button
local buttonDeleteProfile = child:CreateButton(
-- button settings
{
	text = DELETE,
	tooltip = L["PROFILE_DELETE_TOOLTIP"],
},
-- function hooks for the button
{
	OnClick = function(self)
		local profile = SelectedProfile
		if profile then
			if settings:DeleteProfile(profile) then
				settings:UpdateMode(1)
				profileSelector:OnRefresh()
				return true
			end
			-- TODO dialog about not deleting a profile
			-- app:ShowPopupDialog("Profile cannot be deleted!", function() end)
		end
	end
})
buttonDeleteProfile:SetPoint("BOTTOMLEFT", profileScroller, "BOTTOMRIGHT", 5, -1)

-- Switch Button
local buttonSwitchProfile = child:CreateButton(
-- button settings
{
	text = SWITCH,
	tooltip = L["PROFILE_SWITCH_TOOLTIP"],
},
-- function hooks for the button
{
	OnClick = function(self)
		local profile = SelectedProfile
		if profile then
			UseProfile(profile)
			profileSelector:OnRefresh()
			return true
		end
	end
})
buttonSwitchProfile:SetPoint("LEFT", buttonDeleteProfile, "LEFT", 0, 0)
buttonSwitchProfile:SetPoint("TOP", profileScroller, "TOP", 0, 2)

-- Copy Button
local buttonCopyProfile = child:CreateButton(
-- button settings
{
	text = CALENDAR_COPY_EVENT,
	tooltip = L["PROFILE_COPY_TOOLTIP"],
},
-- function hooks for the button
{
	OnClick = function(self)
		local profile = SelectedProfile
		if profile then
			settings:CopyProfile(nil, profile)
			settings:ApplyProfile()
			settings:UpdateMode(1)
			profileSelector:OnRefresh()
			return true
		end
	end
})
buttonCopyProfile:SetPoint("TOPLEFT", buttonSwitchProfile, "BOTTOMLEFT", 0, -4)

-- Checkbox to show profile loaded message
local checkboxShowProfileLoaded = child:CreateCheckBox(L["SHOW_PROFILE_LOADED"],
function(self)
	self:SetChecked(settings:Get("Profile:ShowProfileLoadedMessage"))
end,
function(self)
	settings:Set("Profile:ShowProfileLoadedMessage", not settings:Get("Profile:ShowProfileLoadedMessage"))
	self:SetChecked(settings:Get("Profile:ShowProfileLoadedMessage"))
end)
checkboxShowProfileLoaded:SetPoint("TOPLEFT", profileScroller, "BOTTOMLEFT", 0, -4)

local function ProfileCheckbox_Disable(self)
	self:Disable()
end
profileSelector.OnRefresh = function()
	-- app.PrintDebug("SelectedProfile",SelectedProfile)

	-- update the current profile label
	local currentProfile = settings:GetProfile(true)
	textCurrentProfileName:SetText(currentProfile or NOT_APPLICABLE)

	-- app.PrintDebug("refresh profiles scrollbox")
	local settingProfileItems = {}
	if AllTheThingsProfiles then
		-- buttons have no OnRefresh script, so have to hide it externally
		buttonInitializeProfiles:Hide()

		for k,v in pairs(AllTheThingsProfiles.Profiles) do
			-- app.PrintDebug("added",k)
			tinsert(settingProfileItems, k == "Default" and DEFAULT or k)
		end
	end
	-- sort the profiles
	app.Sort(settingProfileItems, app.SortDefaults.Text)

	local profileCount, existingBoxes, lastProfileSelect = 0, profileSelector.ATT and profileSelector.ATT.CB_Count or 0

	-- create checkboxes for the profiles in the scrollframe
	for _,profile in ipairs(settingProfileItems) do
		local profileBox
		profileCount = profileCount + 1
		if existingBoxes >= profileCount then
			-- app.PrintDebug("replace-profileCB",profileCount,profile)
			profileBox = profileSelector.ATT.CB[profileCount]
			profileBox.Text:SetText(profile)
		else
			-- app.PrintDebug("new-profileCB",profileCount,profile)
			profileBox = profileSelector:CreateCheckBoxWithCount(profile,
				function(self)
					-- app.PrintDebug("CB.OnRefresh",self.Text:GetText())
					local myProfile = self.Text:GetText()
					local activeProfile = settings:GetProfile(true)
					if activeProfile == myProfile then
						self:SetAlpha(0.5)
						self:SetChecked(true)
						settings.Callback(ProfileCheckbox_Disable, self)
					elseif SelectedProfile == myProfile then
						self:SetAlpha(1)
						self:Enable()
						self:SetChecked(true)
					else
						self:SetAlpha(1)
						self:Enable()
						self:SetChecked(false)
					end
				end,
				function(self)
					-- logic when the respective profile checkbox is selected
					-- holding shift will switch profiles instead of selecting one
					local myProfile = self.Text:GetText()
					local activeProfile = settings:GetProfile(true)
					-- app.PrintDebug("clicked",profile)
					if SelectedProfile == myProfile then
						SelectedProfile = nil
					elseif myProfile ~= activeProfile then
						SelectedProfile = myProfile
					end
					if IsShiftKeyDown() then
						if myProfile ~= activeProfile then
							UseProfile(myProfile)
						end
					end
					profileSelector:OnRefresh()
					return true
				end)
			if lastProfileSelect then
				profileBox:AlignBelow(lastProfileSelect)
			else
				profileBox:SetPoint("TOPLEFT", profileSelector, "TOPLEFT", 5, -5)
			end
		end
		profileBox.Text:SetWordWrap(false)
		profileBox:SetHitRectInsets(0,0 - profileBox.Text:GetWidth(),0,0)
		profileBox:SetATTTooltip(profile)
		profileBox:OnRefresh()
		profileBox:Show()
		lastProfileSelect = profileBox
	end

	-- enable/disable buttons if profile is 'selected'
	if SelectedProfile then
		buttonSwitchProfile:Enable()
		buttonCopyProfile:Enable()
		buttonDeleteProfile:Enable()
	else
		buttonSwitchProfile:Disable()
		buttonCopyProfile:Disable()
		buttonDeleteProfile:Disable()
	end

	-- hide extra checkboxes if they've been deleted during this game session
	if existingBoxes > profileCount then
		-- app.PrintDebug("removing extra checkboxes",profileCount,existingBoxes)
		for i=profileCount + 1,existingBoxes do
			profileSelector.ATT.CB[i]:Hide()
		end
	end
end

end)();

-----------------
-- "Sync" page --
-----------------

-- SETUP
do
-- Create the page
local child = settings:CreateOptionsPage(L["SYNC_PAGE"], true)

-- CONTENT
local headerSync = child:CreateHeaderLabel(L["ACCOUNT_SYNCHRONIZATION"])
headerSync:SetPoint("TOPLEFT", child, 0, 0)

local checkboxAutoSync = child:CreateCheckBox(L["AUTO_SYNC_ACC_DATA_CHECKBOX"],
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:Sync"))
end,
function(self)
	local checked = self:GetChecked()
	settings:SetTooltipSetting("Auto:Sync", checked)
	if checked then app:Synchronize(true) end
end)
checkboxAutoSync:SetATTTooltip(L["AUTO_SYNC_ACC_DATA_TOOLTIP"])
checkboxAutoSync:SetPoint("TOPLEFT", headerSync, "BOTTOMLEFT", 4, 0)

local function InitializeATTSyncWindow()
	local syncWindow = app:GetWindow("Sync")
	child:RegisterObject(syncWindow)
	syncWindow.OnRefresh = function()
		syncWindow:SetVisible(true, true)
	end
	syncWindow.CloseButton:Disable()
	syncWindow:ClearAllPoints()
	syncWindow:SetPoint("LEFT", headerSync, 0, 0)
	syncWindow:SetPoint("RIGHT", headerSync, "LEFT", 300, 0)
	syncWindow:SetPoint("TOP", checkboxAutoSync, "BOTTOM", 0, 4)
	syncWindow:SetPoint("BOTTOM", child, 0, -592)
	syncWindow:SetClampedToScreen(false)
	pcall(syncWindow.SetUserPlaced, syncWindow, false)
	syncWindow:SetToplevel(false)
	syncWindow:SetMovable(false)
	syncWindow:SetResizable(false)
	syncWindow:SetParent(child)

	child:SetScript("OnShow", function()
		local function refresh()
			syncWindow:Refresh()
		end
		RunNextFrame(refresh)
	end)
end

function child:OnRefresh()
	if not self.InitializeATTSyncWindow then
		InitializeATTSyncWindow();
		self.InitializeATTSyncWindow = true;
	end
end

end	-- "Sync" page --

------------------
-- "About" page --
------------------

-- SETUP
(function()
-- Create the page
local child = settings:CreateOptionsPage(L["ABOUT_PAGE"], true)

-- CONTENT
local textAbout = child:CreateTextLabel(L["TITLE"] .. L["ABOUT_1"])
textAbout:SetPoint("TOPLEFT", child, 0, 0)

local textShoutout = child:CreateTextLabel(L["ABOUT_2"] .. L["ABOUT_3"] .. L["ABOUT_4"] .. L["COLLECTED_ICON"] .. " " .. L["COLLECTED_APPEARANCE_ICON"] .. " " ..L["NOT_COLLECTED_ICON"] .. L["ABOUT_5"])
textShoutout:SetPoint("BOTTOMLEFT", child:GetParent(), 0, 10)

end)();