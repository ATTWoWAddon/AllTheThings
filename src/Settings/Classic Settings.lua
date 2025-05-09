local appName, app = ...;
local L = app.L.SETTINGS_MENU;
local settings = app.Settings;

-- Settings Class
local Things = {
	"Achievements",
	"AzeriteEssences",
	"BattlePets",
	"CharacterUnlocks",
	"Conduits",
	"DeathTracker",
	"MountMods",
	"Exploration",
	"FlightPaths",
	"Followers",
	"Heirlooms",
	"HeirloomUpgrades",
	"Illusions",
	"Mounts",
	"Quests",
	"QuestsLocked",
	"PVPRanks",
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
		["LootMode"] = false,
		["MainOnly"] = false,
		["DebugMode"] = false,
		["FactionMode"] = false,
		["AccountWide:Achievements"] = app.GameBuildVersion >= 40000,
		["AccountWide:AzeriteEssences"] = true,
		["AccountWide:BattlePets"] = true,
		["AccountWide:CharacterUnlocks"] = true,
		["AccountWide:Conduits"] = true,
		["AccountWide:DeathTracker"] = true,
		["AccountWide:Exploration"] = false,
		["AccountWide:FlightPaths"] = false,
		["AccountWide:Followers"] = true,
		["AccountWide:Heirlooms"] = true,
		["AccountWide:Illusions"] = true,
		["AccountWide:Mounts"] = true,
		["AccountWide:PVPRanks"] = false,
		["AccountWide:Quests"] = false,
		["AccountWide:Recipes"] = true,
		["AccountWide:Reputations"] = app.GameBuildVersion >= 40000,
		["AccountWide:Titles"] = true,
		["AccountWide:Toys"] = true,
		["AccountWide:Transmog"] = true,
		["Thing:Achievements"] = true,
		["Thing:AzeriteEssences"] = app.GameBuildVersion >= 80000,
		["Thing:BattlePets"] = true,
		["Thing:CharacterUnlocks"] = app.IsRetail,	-- CRIEVE NOTE: This class might be up to the chopping block with a thing I have on my todo list. I'll leave it for now.
		["Thing:Conduits"] = app.GameBuildVersion >= 100000,
		["Thing:MountMods"] = app.GameBuildVersion >= 100000,
		["Thing:Exploration"] = app.IsClassic,	-- CRIEVE NOTE: For now, until Blizzard fixes their broken Retail version of the exploration API.
		["Thing:FlightPaths"] = true,
		["Thing:Followers"] = app.GameBuildVersion >= 60000,
		["Thing:Heirlooms"] = true,
		["Thing:HeirloomUpgrades"] = app.GameBuildVersion >= 60000,
		["Thing:Illusions"] = true,
		["Thing:Mounts"] = true,
		--["Thing:PVPRanks"] = app.GameBuildVersion < 20000,	-- CRIEVE NOTE: Maybe someday? Classic Era project.
		["Thing:Quests"] = true,
		["Thing:QuestsLocked"] = false,
		["Thing:Recipes"] = true,
		["Thing:Reputations"] = true,
		["Thing:RuneforgeLegendaries"] = app.GameBuildVersion >= 90000,
		["Thing:Titles"] = true,
		["Thing:Toys"] = true,
		["Thing:Transmog"] = app.GameBuildVersion >= 40000,
		["DeathTracker"] = app.GameBuildVersion < 40000,
		["Only:RWP"] = app.GameBuildVersion < 40000,
		["Only:NotTrash"] = app.GameBuildVersion <= 40000,
		["Skip:AutoRefresh"] = false,
		["Show:CompletedGroups"] = false,
		["Show:CollectedThings"] = false,
		["Show:OnlyActiveEvents"] = true,
		["Show:PetBattles"] = true,
		["Show:UnavailablePersonalLoot"] = true,
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
		["Window:CustomColors"] = {},	-- CRIEVE NOTE: Look into what this does, I'm not sure.
	},
};
local FilterSettingsBase = {
	__index = app.Presets[app.Class] or app.Presets.ALL,
};
local TransmogFilterSettingsBase = {
	__index = app.PresetTransmogs[app.Class] or app.PresetTransmogs.ALL,
};
local TooltipSettingsBase = {
	__index = {
		["Auto:AuctionList"] = true,
		["Auto:ProfessionList"] = true,
		["Celebrate"] = true,
		["Channel"] = "Master",
		["Screenshot"] = false,
		["DisplayInCombat"] = true,
		["Enabled"] = true,
		["Enabled:Mod"] = "None",
		["CompletedBy"] = true,
		["KnownBy"] = true,
		["Locations"] = 5,
		["MainListScale"] = 1,
		["MiniListScale"] = 1,
		["WorldMapButton"] = true,
		["MinimapButton"] = true,
		["MinimapSize"] = 36,
		["IconPortraits"] = true,
		["IconPortraitsForQuests"] = true,
		["Models"] = true,
		["Objectives"] = true,
		["PlayDeathSound"] = false,
		["Precision"] = 2,
		["Progress"] = true,
		["Repeatables"] = true,
		["ShowIconOnly"] = false,
		["SharedAppearances"] = true,
		["Show:CraftedItems"] = false,
		["Show:Recipes"] = false,
		["Show:Remaining"] = false,
		["Show:OnlyShowNonTrivialRecipes"] = true,
		["Show:Percentage"] = true,
		["Show:TooltipHelp"] = true,
		["SoftReserves"] = true,
		["SoftReservePersistence"] = false,
		["SourceLocations"] = true,
		["SourceLocations:Completed"] = true,
		["SourceLocations:Creatures"] = true,
		["SourceLocations:Things"] = true,
		["SourceLocations:Unsorted"] = false,
		["SummarizeThings"] = true,
		["Warn:Removed"] = true,
		["SocialProgress"] = true,

		-- Features: Reporting
		["Report:Collected"] = true,
		["Report:CompletedQuests"] = true,
		["Report:UnsortedQuests"] = true,

		-- Nearby Content
		["Nearby:ReportContent"] = false,
		["Nearby:Type:npc"] = true,
		["Nearby:Type:object"] = true,
		["Nearby:PlotWaypoints"] = false,
		["Nearby:ClearWaypoints"] = true,
		["Nearby:IncludeCompleted"] = true,
		["Nearby:IncludeUnknown"] = true,
		["Nearby:FlashTheTaskbar"] = true,
		["RareFind"] = true,

		-- Information Type Behaviours
		["MaxTooltipTopLineLength"] = 999,

		-- Information Types
		["description"] = true,
		["playerCoord"] = true,
		["requireEvent"] = true,
		["requireSkill"] = true,
		["providers"] = true,
		["nextEvent"] = true,
		["spellName"] = true,
		["coords"] = true,
		["parent"] = true,
		["locks"] = true,
		["lore"] = true,
		["maps"] = true,
		["awp"] = true,
		["crs"] = true,
		["qgs"] = true,
		["lvl"] = true,
		["rwp"] = true,
		["pvp"] = true,
		["pb"] = true,
		["c"] = true,
		["r"] = true,
		["u"] = true,
	},
};
local UnobtainableSettingsBase = {
	__index = {
		[1] = false,	-- Never Implemented
		[2] = false,	-- Removed From Game
		[3] = false,	-- Real Money
	},
};

-- Check for Season of Discovery
local season = C_Seasons and C_Seasons.GetActiveSeason() or 0;
if season > 0 then
	if season == 1 then	-- SOM
		UnobtainableSettingsBase.__index[1604] = true;
	end
	if season == 2 then	-- SOD
		if app.GameBuildVersion >= 11502 then app.MaximumSkillLevel = 300;
		elseif app.GameBuildVersion >= 11501 then app.MaximumSkillLevel = 225;
		else app.MaximumSkillLevel = 150; end
	end
end

settings.__UnobtainableSettingsBase = UnobtainableSettingsBase;
local RawSettings;
local AllTheThingsSettings, AllTheThingsSettingsPerCharacter = {}, {};
settings.Initialize = function(self)
	local global_AllTheThingsSettings = _G["AllTheThingsSettings"];
	if global_AllTheThingsSettings then AllTheThingsSettings = global_AllTheThingsSettings; end
	_G["AllTheThingsSettings"] = AllTheThingsSettings;
	RawSettings = AllTheThingsSettings;

	local global_AllTheThingsSettingsPerCharacter = _G["AllTheThingsSettingsPerCharacter"];
	if global_AllTheThingsSettingsPerCharacter then AllTheThingsSettingsPerCharacter = global_AllTheThingsSettingsPerCharacter; end
	_G["AllTheThingsSettingsPerCharacter"] = AllTheThingsSettingsPerCharacter;

	-- Assign the default settings
	if not AllTheThingsSettings.General then AllTheThingsSettings.General = {}; end
	if not AllTheThingsSettings.Tooltips then AllTheThingsSettings.Tooltips = {}; end
	if not AllTheThingsSettings.Unobtainable then
		if AllTheThingsSettings.Unobtainables then
			AllTheThingsSettings.Unobtainable = AllTheThingsSettings.Unobtainables;
		else
			AllTheThingsSettings.Unobtainable = {};
		end
	end
	setmetatable(AllTheThingsSettings.General, GeneralSettingsBase);
	setmetatable(AllTheThingsSettings.Tooltips, TooltipSettingsBase);
	setmetatable(AllTheThingsSettings.Unobtainable, UnobtainableSettingsBase);

	-- Assign the preset filters for your character class as the default states
	if not AllTheThingsSettingsPerCharacter.Filters then AllTheThingsSettingsPerCharacter.Filters = {}; end
	if not AllTheThingsSettingsPerCharacter.TransmogFilters then AllTheThingsSettingsPerCharacter.TransmogFilters = {}; end
	setmetatable(AllTheThingsSettingsPerCharacter.Filters, FilterSettingsBase);
	setmetatable(AllTheThingsSettingsPerCharacter.TransmogFilters, TransmogFilterSettingsBase);

	if settings.RefreshActiveInformationTypes then
		settings.RefreshActiveInformationTypes()
		settings.RefreshActiveInformationTypes = nil
	end

	-- Somehow some forced Account-Wide Things were set to false in user Profiles, so using app.IsAccountTracked ALWAYS returned false
	-- so let's erase that data, and assign those Things in the Base General class
	for thing,forced in pairs(settings.ForceAccountWide) do
		if forced then
			local accountWideThing = "AccountWide:"..thing;
			settings:Set(accountWideThing, nil)
			GeneralSettingsBase.__index[accountWideThing] = true
			settings.AccountWide[thing] = true
		end
	end

	if self.LocationsSlider then
		self.LocationsSlider:SetValue(self:GetTooltipSetting("Locations"));
		self.MainListScaleSlider:SetValue(self:GetTooltipSetting("MainListScale"));
		self.MiniListScaleSlider:SetValue(self:GetTooltipSetting("MiniListScale"));
		self.PrecisionSlider:SetValue(self:GetTooltipSetting("Precision"));
	else
		self.sliderMaxTooltipTopLineLength:SetValue(self:GetTooltipSetting("MaxTooltipTopLineLength"))
		self.sliderSummarizeThings:SetValue(self:GetTooltipSetting("ContainsCount") or 25)
		self.sliderSourceLocations:SetValue(self:GetTooltipSetting("Locations") or 5)
		self.sliderMainListScale:SetValue(self:GetTooltipSetting("MainListScale"))
		self.sliderMiniListScale:SetValue(self:GetTooltipSetting("MiniListScale"))
		self.sliderPercentagePrecision:SetValue(self:GetTooltipSetting("Precision"))
	end
	self.sliderMinimapButtonSize:SetValue(self:GetTooltipSetting("MinimapSize"))

	app.SetWorldMapButtonSettings(self:GetTooltipSetting("WorldMapButton"));
	app.SetMinimapButtonSettings(
		self:GetTooltipSetting("MinimapButton"),
		self:GetTooltipSetting("MinimapSize"));

	self:UpdateMode();
end
settings.Get = function(self, setting)
	return AllTheThingsSettings.General[setting];
end
settings.ResetFilters = function(self)
	wipe(AllTheThingsSettingsPerCharacter.Filters)
	settings:UpdateMode(1)
end
settings.GetFilter = function(self, filterID)
	return AllTheThingsSettingsPerCharacter.Filters[filterID];
end
settings.GetDefaultFilter = function(self, filterID)
	return FilterSettingsBase.__index[filterID]
end
settings.GetFilterForTransmogBase = function(self, filterID)
	return app.PresetTransmogs.ALL[filterID];
end
settings.GetFilterForTransmog = function(self, filterID)
	return AllTheThingsSettingsPerCharacter.TransmogFilters[filterID];
end
settings.GetRawFilters = function(self)
	return AllTheThingsSettingsPerCharacter.Filters;
end
settings.GetRawSettings = function(self, name)
	return RawSettings[name];
end
settings.GetModeString = function(self)
	local mode = "Mode";
	if (settings:Get("Thing:Transmog") or app.MODE_DEBUG) and app.GameBuildVersion > 40000 then
		if self:Get("Completionist") then
			mode = "Completionist " .. mode
		else
			mode = "Unique " .. mode
		end
	end
	if app.MODE_DEBUG then
		mode = "Debug " .. mode;
	else
		if app.MODE_ACCOUNT then
			if self:Get("FactionMode") then
				mode = FACTION .. " " .. mode;
			else
				mode = "Account " .. mode;
			end
		end

		if app.GameBuildVersion < 40000 and self:Get("Only:RWP") and self.Collectibles.Transmog then
			mode = "RWP " .. mode;
		end

		if self:Get("Hide:PvP") then
			mode = "PvE " .. mode;
		end

		local solo = true
		local keyPrefix, thingName, thingActive
		local insaneTotalCount, insaneCount = 0, 0;
		local rankedTotalCount, rankedCount = 0, 0;
		local coreTotalCount, coreCount = 0, 0;
		local totalThingCount, thingCount, things = 0, 0, {};
		for key,_ in pairs(GeneralSettingsBase.__index) do
			keyPrefix = key:sub(1, 6);
			if keyPrefix == "Thing:" then
				totalThingCount = totalThingCount + 1
				thingActive = settings:Get(key);
				thingName = key:sub(7);
				if thingActive then
					-- Heirloom Upgrades only count when Heirlooms are enabled
					-- This prevents the heirloom uprades and quests locked from being displayed as a mode.
					if key ~= "Thing:HeirloomUpgrades" or settings:Get("Thing:Heirlooms") then
						thingCount = thingCount + 1
						table.insert(things, thingName)
					end
					if self.RequiredForInsaneMode[thingName] then
						insaneTotalCount = insaneTotalCount + 1;
						insaneCount = insaneCount + 1;
					end
					if self.RequiredForRankedMode[thingName] then
						rankedTotalCount = rankedTotalCount + 1;
						rankedCount = rankedCount + 1;
					end
					if self.RequiredForCoreMode[thingName] then
						coreTotalCount = coreTotalCount + 1;
						coreCount = coreCount + 1;
					end
				else
					if self.RequiredForInsaneMode[thingName] then
						insaneTotalCount = insaneTotalCount + 1;
					end
					if self.RequiredForRankedMode[thingName] then
						rankedTotalCount = rankedTotalCount + 1;
					end
					if self.RequiredForCoreMode[thingName] then
						coreTotalCount = coreTotalCount + 1;
					end
				end
			elseif solo and keyPrefix == "Accoun" and settings:Get(key) then
				-- TODO: a bit wonky that a disabled Thing with AccountWide checked can make it non-solo...
				solo = false
			end
		end
		if thingCount == 0 then
			mode = "None of the Things " .. mode;
		elseif thingCount == 1 then
			mode = things[1] .. " Only " .. mode;
		elseif thingCount == 2 then
			mode = things[1] .. " + " .. things[2] .. " Only " .. mode;
		elseif insaneCount == insaneTotalCount then
			-- only Insane if not hiding anything!
			if settings:NonMode() then
				-- don't add Insane :)
			else
				mode = "Insane " .. mode
			end
		elseif rankedCount == rankedTotalCount then
			-- only Ranked if not hiding anything!
			if settings:NonMode() then
				-- don't add Ranked :)
			else
				mode = "Ranked " .. mode
			end
		elseif coreCount == coreTotalCount then
			-- only Core if not hiding anything!
			if settings:NonMode() then
				-- don't add Core :)
			else
				mode = "Core " .. mode
			end
		elseif not settings:Get("Thing:Transmog") and self.RequiredForInsaneMode["Transmog"] then
			mode = "Some of the Things " .. mode
		end
		if solo then
			mode = "Solo " .. mode
		end
	end
	if self:Get("Filter:ByLevel") then
		mode = "Level " .. app.Level .. " " .. mode;
	end
	-- Waiting on Refresh to properly show values
	if self.NeedsRefresh then
		mode = "After Refresh: " .. mode
	end
	return mode;
end
settings.GetShortModeString = function(self)
	if app.MODE_DEBUG then
		return "D";
	elseif app.MODE_ACCOUNT then
		return "A";
	else
		return "N";
	end
end
settings.GetPersonal = function(self, setting)
	return AllTheThingsSettingsPerCharacter[setting];
end
settings.GetTooltipSetting = function(self, setting)
	return AllTheThingsSettings.Tooltips[setting];
end

local ModifierFuncs = {
	["Shift"] = IsShiftKeyDown,
	["Ctrl"] = IsControlKeyDown,
	["Alt"] = IsAltKeyDown,
	["Cmd"] = IsMetaKeyDown,
}
settings.GetTooltipSettingWithMod = function(self, setting)
	-- only returns 'true' for the requested TooltipSetting if the Setting's associated Modifier key is currently being pressed
	local v = AllTheThingsSettings.Tooltips[setting]
	if not v then return v end
	local k = AllTheThingsSettings.Tooltips[setting..":Mod"]
	if k == "None" then
		return v
	end
	local func = ModifierFuncs[k]
	if func and func() then
		return v
	end
end
settings.GetValue = function(self, container, setting)
	return RawSettings[container][setting]
end
settings.GetUnobtainableFilter = function(self, u)
	return AllTheThingsSettings.Unobtainable[u];
end
settings.Set = function(self, setting, value)
	AllTheThingsSettings.General[setting] = value;
	self:Refresh();
end
settings.SetFilter = function(self, filterID, value)
	AllTheThingsSettingsPerCharacter.Filters[filterID] = value;
	self:UpdateMode(1);
end
settings.SetTooltipSetting = function(self, setting, value)
	AllTheThingsSettings.Tooltips[setting] = value;
	app.WipeSearchCache();
	self:Refresh();
end
settings.SetUnobtainableFilter = function(self, u, value)
	AllTheThingsSettings.Unobtainable[u] = value;
	self:UpdateMode(1);
end
settings.SetPersonal = function(self, setting, value)
	AllTheThingsSettingsPerCharacter[setting] = value;
	self:Refresh();
end
settings.Refresh = function(self)
	app.CallbackEvent("OnSettingsRefreshed");
end


settings.Objects = {};
local function Mixin(o, mixin)
	for k,v in pairs(mixin) do
		o[k] = v;
	end
	return o;
end
local ATTSettingsObjectMixin, ATTSettingsPanelMixin;
-- Mixins
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
		return self
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
		return self
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
	MarkAsWIP = function(self)
		local wip = self:CreateTexture(nil, "OVERLAY");
		wip:SetPoint("LEFT", self.Text or self, "RIGHT", 2, 0);
		wip:SetTexture(app.asset("WIP"));
		wip:SetScale(0.5);
		--wip:SetRotation(-270);
		wip:Show();
	end,
	-- Registers an Object within itself
	RegisterObject = function(self, o)
		local objects = self.Objects
		if not objects then
			objects = {}
			self.Objects = objects;
		end
		tinsert(objects, o);
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
		--self:RegisterObject(headerLabel);
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
		--self:RegisterObject(textLabel);
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
		---@class ATTSettingsCheckButton: CheckButton
		---@field Text FontString
		---@field OnRefreshCheckedDisabled any
		local cb = CreateFrame("CheckButton", self:GetName() .. "-" .. text, self, "UICheckButtonTemplate")
		Mixin(cb, ATTSettingsObjectMixin);
		--self:RegisterObject(cb);
		if OnClick then cb:SetScript("OnClick", OnClick) end
		--cb.OnRefresh = OnRefresh or cb.OnRefreshCheckedDisabled
		OnRefresh = OnRefresh or cb.OnRefreshCheckedDisabled
		app.AddEventHandler("OnSettingsRefreshed", function()
			OnRefresh(cb);
		end);
		cb.Text:SetText(text)
		cb.Text:SetScale(1.3)
		cb.Text:SetWordWrap(false)
		cb:SetHitRectInsets(0,0 - cb.Text:GetUnboundedStringWidth(),0,0);
		cb:SetScale(0.8);
		return cb
	end,
	CreateTextbox = function(self, opts, functions)

		local name = self:GetName().."TB"..(opts.name or app.UniqueCounter.CreateTextbox)
		local title = opts.title
		local text = opts.text
		local width = opts.width or 150
		local template = opts.template or "InputBoxTemplate"

		---@class ATTOptionsEditBox: EditBox
		---@field AddLabel fun(self:any, label: string)
		local editbox = CreateFrame("EditBox", name, self, template)
		Mixin(editbox, ATTSettingsObjectMixin);
		--self:RegisterObject(editbox);
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

		local name = self:GetName().."B"..(opts.name or app.UniqueCounter.CreateButton)
		local text = opts.text
		local width = opts.width
		local tooltip = opts.tooltip
		local refs = opts.refs
		local template = opts.template or "UIPanelButtonTemplate"

		---@class ATTSettingsButton: ATTButtonClass
		local f = CreateFrame("Button", name, self, template)
		Mixin(f, ATTSettingsObjectMixin)
		--self:RegisterObject(f)
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
		---@class ATTOptionsScrollFrame: ScrollFrame
		local scrollFrame = CreateFrame("ScrollFrame", settings:GetName().."SF"..app.UniqueCounter.AddScrollframe, self, "ScrollFrameTemplate")
		---@class ATTOptionsScrollFrameChild: Frame
		local child = CreateFrame("Frame", settings:GetName().."SCF"..app.UniqueCounter.AddScrollableframe)
		Mixin(child, ATTSettingsPanelMixin);
		--self:RegisterObject(child);
		scrollFrame:SetScrollChild(child)
		child:SetWidth(1)	-- This is automatically defined, so long as the attribute exists at all
		child:SetHeight(1)	-- This is automatically defined, so long as the attribute exists at all
		child.ScrollContainer = scrollFrame
		-- Move the Scrollbar inside of the frame which it scrolls
		---@diagnostic disable-next-line: undefined-field
		scrollFrame.ScrollBar:SetPoint("RIGHT", -36, 0)

		-- local scrollFrame = CreateFrame("Frame", settings:GetName().."SF"..app.UniqueCounter.AddScrollframe, self, "ScrollFrameTemplate")
		-- scrollFrame:SetClipsChildren(true)
		-- scrollFrame:EnableMouseWheel(true)

		-- local child = CreateFrame("Frame", settings:GetName().."SCF"..app.UniqueCounter.AddScrollableframe, scrollFrame)
		-- Mixin(child, ATTSettingsPanelMixin)
		-- self:RegisterObject(child)
		-- child:SetPoint("TOP")
		-- child:SetPoint("RIGHT", -scrollWidth, 0)
		-- child:SetPoint("LEFT")

		-- local scrollbar
		-- if SCROLL_FRAME_SCROLL_BAR_TEMPLATE then
		-- 	scrollbar = CreateFrame("EventFrame", settings:GetName().."SB"..app.UniqueCounter.AddScrollbar, scrollFrame, SCROLL_FRAME_SCROLL_BAR_TEMPLATE)
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
		-- 	scrollbar = CreateFrame("Slider", settings:GetName().."SB"..app.UniqueCounter.AddScrollbar, scrollFrame, "UIPanelScrollBarTemplate")
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
		--self:RegisterObject(box)
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

Mixin(settings, ATTSettingsPanelMixin);

local Categories, AddOnCategoryID, RootCategoryID = {}, appName, nil;
local openToCategory = Settings and Settings.OpenToCategory or InterfaceOptionsFrame_OpenToCategory;
settings.Open = function(self)
	if not openToCategory(RootCategoryID or AddOnCategoryID) then
		openToCategory(AddOnCategoryID);
	end
end
settings.CreateOptionsPage = function(self, text, parentCategory, isRootCategory)
	---@class ATTSubCategoryFrame: Frame
	---@field CreateCheckBox fun(self: any, locale: string, OnRefresh: function, OnClick: function)
	---@field CreateHeaderLabel fun(self: any, locale: string)
	local subcategory = CreateFrame("Frame", settings:GetName() .. "-" .. text, InterfaceOptionsFramePanelContainer);
	Mixin(subcategory, ATTSettingsPanelMixin);
	self:RegisterObject(subcategory);
	subcategory:SetAllPoints();

	if Settings and Settings.RegisterCanvasLayoutCategory then
		local category;
		if text == appName then
			category = Settings.RegisterCanvasLayoutCategory(subcategory, text)
			Settings.RegisterAddOnCategory(category);
			AddOnCategoryID = category.ID;
		else
			parentCategory = Categories[parentCategory or appName];
			category = Settings.RegisterCanvasLayoutSubcategory(parentCategory.category, subcategory, text)
			if isRootCategory then RootCategoryID = category.ID; end
		end
		subcategory:Hide();
		subcategory.category = category;
	else
		subcategory.name = text;
		if text ~= appName then subcategory.parent = parentCategory or appName; end
		InterfaceOptions_AddCategory(subcategory);
	end
	Categories[text] = subcategory;

	-- Common Header
	local logo = subcategory:CreateTexture(nil, "ARTWORK");
	logo:SetPoint("TOPLEFT", subcategory, "TOPLEFT", 8, -2);
	logo:SetTexture(app.asset("Discord_2_64"));
	logo:SetSize(36, 36);
	logo:Show();

	local title = subcategory:CreateHeaderLabel(L.TITLE);
	title:SetPoint("TOPLEFT", logo, "TOPRIGHT", 4, -4);
	title:SetScale(1.5);

	local version = subcategory:CreateHeaderLabel(app.Version);
	version:SetPoint("TOPRIGHT", subcategory, "TOPRIGHT", -8, 0);
	version:SetJustifyH("RIGHT");

	local separator = subcategory:CreateTexture(nil, "ARTWORK");
	separator:SetPoint("LEFT", subcategory, "LEFT", 4, 0);
	separator:SetPoint("RIGHT", subcategory, "RIGHT", -4, 0);
	separator:SetPoint("TOP", logo, "BOTTOM", 0, -2);
	separator:SetColorTexture(1, 1, 1, 0.4);
	separator:SetHeight(2);
	subcategory.separator = separator;

	local checkboxSkipAutoRefresh = subcategory:CreateCheckBox(L.SKIP_AUTO_REFRESH,
	function(self)
		self:SetChecked(settings:Get("Skip:AutoRefresh"))
	end,
	function(self)
		local skipRefresh = self:GetChecked();
		settings:Set("Skip:AutoRefresh", skipRefresh)
		if not skipRefresh then settings:UpdateMode("FORCE"); end
	end)
	checkboxSkipAutoRefresh:SetATTTooltip(L.SKIP_AUTO_REFRESH_TOOLTIP);
	checkboxSkipAutoRefresh:SetPoint("BOTTOMRIGHT", separator, "TOPRIGHT", -(checkboxSkipAutoRefresh.Text:GetWidth() * checkboxSkipAutoRefresh.Text:GetScale()), 0)
	return subcategory;
end

settings.SetAccountMode = function(self, accountMode)
	self:Set("AccountMode", accountMode);
	self:UpdateMode(1);
end
settings.ToggleAccountMode = function(self)
	self:ForceRefreshFromToggle()
	self:SetAccountMode(not self:Get("AccountMode"));
end
settings.SetCompletionistMode = function(self, completionistMode)
	self:Set("Completionist", completionistMode)
	self:UpdateMode(1)
end
settings.ToggleCompletionistMode = function(self)
	self:ForceRefreshFromToggle()
	self:SetCompletionistMode(not self:Get("Completionist"))
	if self:Get("Completionist") == true then
		app.print(L["TITLE_COMPLETIONIST"]..L["MODE"].."|R "..L["ENABLED"]..".")
	else
		app.print(L["TITLE_COMPLETIONIST"]..L["MODE"].."|R "..L["DISABLED"]..".")
	end
end
settings.SetDebugMode = function(self, debugMode)
	self:Set("DebugMode", debugMode);
	if debugMode then
		-- cache the current settings to re-apply after
		settings:Set("Cache:CompletedGroups", settings:Get("Show:CompletedGroups"))
		settings:Set("Cache:CollectedThings", settings:Get("Show:CollectedThings"))
		settings:SetCompletedGroups(true, true)
		settings:SetCollectedThings(true, true)
	else
		settings:SetCompletedGroups(settings:Get("Cache:CompletedGroups"), true)
		settings:SetCollectedThings(settings:Get("Cache:CollectedThings"), true)
	end
	self:UpdateMode(1);
end
settings.ToggleDebugMode = function(self)
	self:ForceRefreshFromToggle()
	self:SetDebugMode(not self:Get("DebugMode"));
end
settings.SetFactionMode = function(self, factionMode)
	self:Set("FactionMode", factionMode);
	self:UpdateMode(1);
end
settings.ToggleFactionMode = function(self)
	self:ForceRefreshFromToggle()
	self:SetFactionMode(not self:Get("FactionMode"));
end
settings.SetMainOnlyMode = function(self, mainOnly)
	self:Set("MainOnly", mainOnly);
	self:SetCompletionistMode(self:Get("Completionist"));
end
settings.ToggleMainOnlyMode = function(self)
	self:ForceRefreshFromToggle();
	self:SetMainOnlyMode(not self:Get("MainOnly"));
end
settings.SetCompletedThings = function(self, checked)
	self:Set("Show:CompletedGroups", checked);
	self:Set("Show:CollectedThings", checked);
	settings:Set("Cache:CompletedGroups", checked);
	settings:Set("Cache:CollectedThings", checked);
	self:UpdateMode(1);
end
settings.ToggleCompletedThings = function(self)
	self:ForceRefreshFromToggle()
	self:SetCompletedThings(not self:Get("Show:CompletedGroups"));
end
settings.SetCompletedGroups = function(self, checked)
	self:Set("Show:CompletedGroups", checked);
	self:UpdateMode(1);
end
settings.ToggleCompletedGroups = function(self)
	self:ForceRefreshFromToggle()
	self:SetCompletedGroups(not self:Get("Show:CompletedGroups"));
	settings:Set("Cache:CompletedGroups", self:Get("Show:CompletedGroups"));
end
settings.SetCollectedThings = function(self, checked)
	self:Set("Show:CollectedThings", checked);
	self:UpdateMode(1);
end
settings.ToggleCollectedThings = function(self)
	self:ForceRefreshFromToggle()
	settings:SetCollectedThings(not self:Get("Show:CollectedThings"));
	settings:Set("Cache:CollectedThings", self:Get("Show:CollectedThings"));
end
settings.SetHideBOEItems = function(self, checked)
	self:Set("Hide:BoEs", checked);
	self:UpdateMode(1);
end
settings.ToggleBOEItems = function(self)
	self:ForceRefreshFromToggle()
	self:SetHideBOEItems(not self:Get("Hide:BoEs"));
end
settings.SetLootMode = function(self, checked)
	self:Set("LootMode", checked);
	self:UpdateMode(1);
end
settings.ToggleLootMode = function(self)
	self:ForceRefreshFromToggle()
	self:SetLootMode(not self:Get("LootMode"));
end
-- When we toggle a setting directly (keybind etc.) the refresh should always take place immediately,
-- so force it always
settings.ForceRefreshFromToggle = function(self)
	self.ToggleRefresh = true;
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
	local filterSet = app.Modules.Filter.Set;
	if self:Get("Completionist") then
		filterSet.ItemSource()
	else
		if self:Get("MainOnly") and not self:Get("AccountMode") and not self:Get("DebugMode") then
			filterSet.ItemSource(true, true)
		else
			filterSet.ItemSource(true)
		end
	end
	if self:Get("DebugMode") then
		app.MODE_ACCOUNT = nil;
		app.MODE_DEBUG = true;
		filterSet.Group()
		filterSet.Unobtainable()
		filterSet.Visible(true)
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
		filterSet.Trackable()

		settings:SetThingTracking("Debug");

		-- Modules
		app.Modules.PVPRanks.SetCollectible(true);
		self.OnlyRWP = false;
	else
		app.MODE_DEBUG = nil;
		filterSet.Visible(true)
		filterSet.Group(true)
		filterSet.DefaultGroup(true)
		filterSet.DefaultThing(true)

		-- Check for any inactive unobtainable filters.
		local anyFiltered = false
		for u,phase in pairs(L.PHASES) do
			if not settings:GetUnobtainableFilter(u) then
				anyFiltered = true;
				break;
			end
		end
		if anyFiltered then
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
			app.MODE_ACCOUNT = true;
			filterSet.FilterID()
			filterSet.Class()
			filterSet.RequireSkill()
			filterSet.MinReputation()
			filterSet.CustomCollect()
			if self:Get("FactionMode") then
				filterSet.Race(true, true)
			else
				filterSet.Race()
			end

			-- Force Account-Wide with Account Mode otherwise you get really dumb situations
			settings:SetThingTracking("Account")
		else
			app.MODE_ACCOUNT = nil;
			filterSet.FilterID(true)
			filterSet.Class(true)
			filterSet.Race(true)
			filterSet.RequireSkill(true)
			filterSet.MinReputation(true)
			filterSet.CustomCollect(true)

			settings:SetThingTracking()
		end

		-- Old Filters
		local accountWideSettings = self.AccountWide;
		for key,value in pairs(accountWideSettings) do
			accountWideSettings[key] = self:Get("AccountWide:" .. key);
		end

		local collectibleSettings = self.Collectibles;
		for key,value in pairs(collectibleSettings) do
			collectibleSettings[key] = self:Get("Thing:" .. key);
		end

		-- Modules
		app.Modules.PVPRanks.SetCollectible(self:Get("Thing:PVPRanks"));

		if self:Get("Show:OnlyActiveEvents") then
			filterSet.Event(true)
		else
			filterSet.Event()
		end
		self.OnlyRWP = self:Get("Only:RWP");
		self.OnlyNotTrash = self:Get("Only:NotTrash");
	end
	app.MODE_DEBUG_OR_ACCOUNT = app.MODE_DEBUG or app.MODE_ACCOUNT;

	local filters = AllTheThingsSettingsPerCharacter.Filters;
	for filterID,state in pairs({
		[100] = self.Collectibles.Mounts,
		[101] = self.Collectibles.BattlePets,
		[102] = self.Collectibles.Toys,
		[200] = self.Collectibles.Recipes,
	}) do
		filters[filterID] = state;
	end

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

	if self:Get("Hide:BoEs") then
		filterSet.ItemUnbound()
		filterSet.Bound(true)
	else
		if self:Get("Filter:BoEs") then
			filterSet.ItemUnbound(true)
		else
			filterSet.ItemUnbound()
		end
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
	if self:Get("Filter:ByLevel") and not self:Get("DebugMode") then
		filterSet.Level(true)
	else
		filterSet.Level()
	end

	if self:Get("Filter:BySkillLevel") and not self:Get("DebugMode") then
		filterSet.SkillLevel(true)
	else
		filterSet.SkillLevel()
	end
	self.Collectibles.Loot = self:Get("LootMode");
	app.HandleEvent("OnSettingsNeedsRefresh")

	-- FORCE = Force Update
	-- 1 = Force Update IF NOT Skip
	-- not = Soft Update
	doRefresh = doRefresh == "FORCE" or
		(doRefresh and not settings:Get("Skip:AutoRefresh"))
	if doRefresh then
		app._SettingsRefresh = GetTimePreciseSec()
		app:RefreshDataCompletely("UpdateMode");
	end
	self:Refresh();
end