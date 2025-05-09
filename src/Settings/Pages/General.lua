local appName, app = ...;
local L, settings = app.L.SETTINGS_MENU, app.Settings;

-- Settings: General Page
local child = settings:CreateOptionsPage("General", appName, true)

-- Creates a Checkbox used to designate tracking the specified 'trackingOption', based on tracking of 'parentTrackingOption' if specified
-- localeKey: The prefix of the locale lookup value (i.e. HEIRLOOMS_UPGRADES)
-- thing: The settings lookup for this tracking option (i.e. 'HeirloomUpgrades')
-- officiallySupported: Whether or not this thing is supported officially in the WoW API or if ATT is faking it. (pair with an app.GameBuildVersion check)
-- parentThing: The settings lookup which must be enabled for this tracking checkbox to be enabled (i.e. 'Heirlooms')
child.CreateTrackingCheckbox = function(frame, localeKey, thing, officiallySupported, parentThing)
	local name = L[localeKey.."_CHECKBOX"]
	local tooltip = L[localeKey.."_CHECKBOX_TOOLTIP"]
	if not officiallySupported then
		tooltip = tooltip .. "\n\n" .. L.UNOFFICIAL_SUPPORT_TOOLTIP;
	end
	if settings.RequiredForInsaneMode[thing] then
		name = app.ccColors.Insane .. name;
	end
	if settings.ForceAccountWide[thing] then
		tooltip = tooltip .. "\n\n" .. L.ACC_WIDE_DEFAULT;
	end
	local trackingOption = "Thing:"..thing
	local parentTrackingOption
	if parentThing then
		parentTrackingOption = "Thing:"..parentThing
	end
	local cb = frame:CreateCheckBox(name,
		function(self)
			self:SetChecked(settings:Get(trackingOption))
			if app.MODE_DEBUG or (parentTrackingOption and not settings:Get(parentTrackingOption)) then
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
	if settings.ForceAccountWide[thing] then
		return frame:CreateForcedAccountWideCheckbox();
	end

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
	cb:SetATTTooltip(L.TRACK_ACC_WIDE.."\n\n" .. tooltip)
	return cb
end


-- Top 1
local headerMode = child:CreateHeaderLabel("")
if child.separator then
	headerMode:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerMode:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end
if child.separator then
	headerMode:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerMode:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end
app.AddEventHandler("OnSettingsRefreshed", function()
	headerMode:SetText(settings:GetModeString() .. " (" .. settings:GetShortModeString() .. ")");
end);

local modeButton = CreateFrame("Button", nil, child, "UIDropDownMenuButtonScriptTemplate")
modeButton:SetSize(24, 24)
modeButton:SetPoint("LEFT", headerMode, "RIGHT", 1, 0)
modeButton:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Up")
modeButton:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Down")
modeButton:SetDisabledTexture("Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Disabled")
modeButton:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight")
modeButton:SetScript("OnClick", function()
	local function GeneratorFunction(owner, rootDescription)
		local preset0 = rootDescription:CreateButton(L.TITLE_NONE_THINGS, OnClick)
		preset0:SetTooltip(function(tooltip, elementDescription)
			GameTooltip_SetTitle(tooltip, MenuUtil.GetElementText(elementDescription))
			GameTooltip_AddInstructionLine(tooltip, L.PRESET_TOOLTIP)
			GameTooltip_AddNormalLine(tooltip, L.PRESET_NONE)
		end)
		preset0:SetResponder(function()
			-- Account-wide Things
			settings:Set("Thing:Transmog", false)
			settings:Set("Completionist", false)
			settings:Set("MainOnly", false)
			settings:Set("Thing:Heirlooms", false)
			settings:Set("Thing:HeirloomUpgrades", false)
			settings:Set("Thing:Illusions", false)
			settings:Set("Thing:Mounts", false)
			settings:Set("Thing:BattlePets", false)
			settings:Set("Thing:Toys", false)

			-- General Things
			settings:Set("Thing:Achievements", false)
			settings:Set("Thing:CharacterUnlocks", false)
			settings:Set("Thing:DeathTracker", false)
			settings:Set("Thing:Exploration", false)
			settings:Set("Thing:FlightPaths", false)
			settings:Set("Thing:Quests", false)
			settings:Set("Thing:QuestsLocked", false)
			settings:Set("Thing:QuestsHidden", false)
			settings:Set("Thing:Recipes", false)
			settings:Set("Thing:Reputations", false)
			settings:Set("Thing:Titles", false)

			-- General Content
			settings:Set("Hide:BoEs", true)
			settings:Set("Filter:BoEs", false)
			settings:Set("Filter:ByLevel", true)
			settings:Set("Show:UnavailablePersonalLoot", false)
			settings:Set("Show:OnlyActiveEvents", true)
			settings:Set("Show:PetBattles", false)
			settings:Set("Hide:PvP", true)
			settings:Set("Show:Skyriding", false)

			-- Expansion Things
			settings:Set("Thing:Followers", false)
			settings:Set("Thing:AzeriteEssences", false)
			settings:Set("Thing:Conduits", false)
			settings:Set("Thing:RuneforgeLegendaries", false)
			settings:Set("Thing:MountMods", false)

			-- Close menu after clicking and refresh
			settings:UpdateMode(1)
			return MenuResponse.Close
		end)

		local preset = rootDescription:CreateButton(L.TITLE_CORE, OnClick)
		preset:SetTooltip(function(tooltip, elementDescription)
			GameTooltip_SetTitle(tooltip, MenuUtil.GetElementText(elementDescription))
			GameTooltip_AddInstructionLine(tooltip, L.PRESET_TOOLTIP)
			GameTooltip_AddNormalLine(tooltip, L.PRESET_CORE)
		end)
		preset:SetResponder(function()
			-- Account-wide Things
			settings:Set("Thing:Transmog", true)
			settings:Set("Completionist", false)
			settings:Set("MainOnly", false)
			settings:Set("Thing:Heirlooms", true)
			settings:Set("Thing:HeirloomUpgrades", false)
			settings:Set("Thing:Illusions", true)
			settings:Set("Thing:Mounts", true)
			settings:Set("Thing:BattlePets", true)
			settings:Set("Thing:Toys", true)

			-- General Things
			settings:Set("Thing:Achievements", false)
			settings:Set("Thing:CharacterUnlocks", false)
			settings:Set("Thing:DeathTracker", false)
			settings:Set("Thing:Exploration", false)
			settings:Set("Thing:FlightPaths", false)
			settings:Set("Thing:Quests", false)
			settings:Set("Thing:QuestsLocked", false)
			settings:Set("Thing:QuestsHidden", false)
			settings:Set("Thing:Recipes", false)
			settings:Set("Thing:Reputations", false)
			settings:Set("Thing:Titles", false)

			-- General Content
			settings:Set("Hide:BoEs", false)
			settings:Set("Filter:BoEs", true)
			settings:Set("Filter:ByLevel", false)
			settings:Set("Show:UnavailablePersonalLoot", true)
			settings:Set("Show:OnlyActiveEvents", false)
			settings:Set("Show:PetBattles", true)
			settings:Set("Hide:PvP", false)
			settings:Set("Show:Skyriding", true)

			-- Expansion Things
			settings:Set("Thing:Followers", false)
			settings:Set("Thing:AzeriteEssences", false)
			settings:Set("Thing:Conduits", false)
			settings:Set("Thing:RuneforgeLegendaries", false)
			settings:Set("Thing:MountMods", false)

			-- Close menu after clicking and refresh
			settings:UpdateMode(1)
			return MenuResponse.Close
		end)

		local preset = rootDescription:CreateButton(L.TITLE_RANKED, OnClick)
		preset:SetTooltip(function(tooltip, elementDescription)
			GameTooltip_SetTitle(tooltip, MenuUtil.GetElementText(elementDescription))
			GameTooltip_AddInstructionLine(tooltip, L.PRESET_TOOLTIP)
			GameTooltip_AddNormalLine(tooltip, L.PRESET_RANKED)
		end)
		preset:SetResponder(function()
			-- Account-wide Things
			settings:Set("Thing:Transmog", true)
			settings:Set("Completionist", true)
			settings:Set("MainOnly", false)
			settings:Set("Thing:Heirlooms", true)
			settings:Set("Thing:HeirloomUpgrades", false)
			settings:Set("Thing:Illusions", true)
			settings:Set("Thing:Mounts", true)
			settings:Set("Thing:BattlePets", true)
			settings:Set("Thing:Toys", true)

			-- General Things
			settings:Set("Thing:Achievements", true)
			settings:Set("Thing:CharacterUnlocks", false)
			settings:Set("Thing:DeathTracker", false)
			settings:Set("Thing:Exploration", false)
			settings:Set("Thing:FlightPaths", false)
			settings:Set("Thing:Quests", true)
			settings:Set("Thing:QuestsLocked", false)
			settings:Set("Thing:QuestsHidden", false)
			settings:Set("Thing:Recipes", true)
			settings:Set("Thing:Reputations", true)
			settings:Set("Thing:Titles", true)

			-- General Content
			settings:Set("Hide:BoEs", false)
			settings:Set("Filter:BoEs", true)
			settings:Set("Filter:ByLevel", false)
			settings:Set("Show:UnavailablePersonalLoot", true)
			settings:Set("Show:OnlyActiveEvents", false)
			settings:Set("Show:PetBattles", true)
			settings:Set("Hide:PvP", false)
			settings:Set("Show:Skyriding", true)

			-- Expansion Things
			settings:Set("Thing:Followers", false)
			settings:Set("Thing:AzeriteEssences", false)
			settings:Set("Thing:Conduits", false)
			settings:Set("Thing:RuneforgeLegendaries", false)
			settings:Set("Thing:MountMods", false)

			-- Close menu after clicking and refresh
			settings:UpdateMode(1)
			return MenuResponse.Close
		end)

		local preset = rootDescription:CreateButton(L.TITLE_INSANE, OnClick)
		preset:SetTooltip(function(tooltip, elementDescription)
			GameTooltip_SetTitle(tooltip, MenuUtil.GetElementText(elementDescription))
			GameTooltip_AddInstructionLine(tooltip, L.PRESET_TOOLTIP)
			GameTooltip_AddNormalLine(tooltip, L.PRESET_INSANE)
		end)
		preset:SetResponder(function()
			-- Account-wide Things
			settings:Set("Thing:Transmog", true)
			-- settings:Set("Completionist", true)
			-- settings:Set("MainOnly", true)
			settings:Set("Thing:Heirlooms", true)
			settings:Set("Thing:HeirloomUpgrades", true)
			settings:Set("Thing:Illusions", true)
			settings:Set("Thing:Mounts", true)
			settings:Set("Thing:BattlePets", true)
			settings:Set("Thing:Toys", true)

			-- General Things
			settings:Set("Thing:Achievements", true)
			if app.IsRetail then
				settings:Set("Thing:CharacterUnlocks", true)
			else
				settings:Set("Thing:CharacterUnlocks", false)
			end
			settings:Set("Thing:DeathTracker", true)
			if app.IsClassic then
				settings:Set("Thing:Exploration", true)
			else
				settings:Set("Thing:Exploration", false)
			end
			settings:Set("Thing:FlightPaths", true)
			settings:Set("Thing:Quests", true)
			settings:Set("Thing:QuestsLocked", false)
			settings:Set("Thing:QuestsHidden", false)
			settings:Set("Thing:Recipes", true)
			settings:Set("Thing:Reputations", true)
			settings:Set("Thing:Titles", true)

			-- General Content
			settings:Set("Hide:BoEs", false)
			settings:Set("Filter:BoEs", true)
			settings:Set("Filter:ByLevel", false)
			settings:Set("Show:UnavailablePersonalLoot", true)
			settings:Set("Show:OnlyActiveEvents", false)
			settings:Set("Show:PetBattles", true)
			settings:Set("Hide:PvP", false)
			settings:Set("Show:Skyriding", true)

			-- Expansion Things
			settings:Set("Thing:Followers", true)
			settings:Set("Thing:AzeriteEssences", true)
			settings:Set("Thing:Conduits", true)
			settings:Set("Thing:RuneforgeLegendaries", true)
			settings:Set("Thing:MountMods", true)

			-- Automated Content
			settings:Set("CC:SL_COV_KYR", true)
			settings:Set("CC:SL_COV_NEC", true)
			settings:Set("CC:SL_COV_NFA", true)
			settings:Set("CC:SL_COV_VEN", true)

			-- Close menu after clicking and refresh
			settings:UpdateMode(1)
			return MenuResponse.Close
		end)

		local preset = rootDescription:CreateButton(L.TITLE_ACCOUNT, OnClick)
		preset:SetTooltip(function(tooltip, elementDescription)
			GameTooltip_SetTitle(tooltip, MenuUtil.GetElementText(elementDescription))
			GameTooltip_AddInstructionLine(tooltip, L.PRESET_TOOLTIP)
			GameTooltip_AddNormalLine(tooltip, L.PRESET_ACCOUNT)
		end)
		preset:SetResponder(function()
			settings:SetAccountMode(true)
			
			-- General Things
			settings:Set("AccountWide:Achievements", true)
			settings:Set("AccountWide:CharacterUnlocks", true)
			settings:Set("AccountWide:DeathTracker", true)
			settings:Set("AccountWide:Quests", true)
			settings:Set("AccountWide:Recipes", true)
			settings:Set("AccountWide:Reputations", true)
			settings:Set("AccountWide:Titles", true)

			-- Expansion Things
			settings:Set("AccountWide:Followers", true)
			settings:Set("AccountWide:AzeriteEssences", true)
			settings:Set("AccountWide:Conduits", true)
			
			-- Close menu after clicking and refresh
			settings:UpdateMode(1)
			return MenuResponse.Close
		end)

		local preset = rootDescription:CreateButton(L.TITLE_SOLO, OnClick)
		preset:SetTooltip(function(tooltip, elementDescription)
			GameTooltip_SetTitle(tooltip, MenuUtil.GetElementText(elementDescription))
			GameTooltip_AddInstructionLine(tooltip, L.PRESET_TOOLTIP)
			GameTooltip_AddNormalLine(tooltip, L.PRESET_SOLO)
		end)
		preset:SetResponder(function()
			settings:SetAccountMode(false)
			
			-- General Things
			settings:Set("AccountWide:Achievements", false)
			settings:Set("AccountWide:CharacterUnlocks", false)
			settings:Set("AccountWide:DeathTracker", false)
			settings:Set("AccountWide:Quests", false)
			settings:Set("AccountWide:Recipes", false)
			settings:Set("AccountWide:Reputations", false)
			settings:Set("AccountWide:Titles", false)

			-- Expansion Things
			settings:Set("AccountWide:Followers", false)
			settings:Set("AccountWide:AzeriteEssences", false)
			settings:Set("AccountWide:Conduits", false)
			
			-- Close menu after clicking and refresh
			settings:UpdateMode(1)
			return MenuResponse.Close
		end)

		local preset = rootDescription:CreateButton(L.TITLE_UNIQUE_APPEARANCE, OnClick)
		preset:SetTooltip(function(tooltip, elementDescription)
			GameTooltip_SetTitle(tooltip, MenuUtil.GetElementText(elementDescription))
			GameTooltip_AddInstructionLine(tooltip, L.PRESET_TOOLTIP)
			GameTooltip_AddNormalLine(tooltip, L.PRESET_UNIQUE)
		end)
		preset:SetResponder(function()
			settings:Set("Thing:Transmog", true)
			settings:Set("Completionist", false)

			-- Close menu after clicking and refresh
			settings:UpdateMode(1)
			return MenuResponse.Close
		end)

		local preset = rootDescription:CreateButton(L.TITLE_COMPLETIONIST, OnClick)
		preset:SetTooltip(function(tooltip, elementDescription)
			GameTooltip_SetTitle(tooltip, MenuUtil.GetElementText(elementDescription))
			GameTooltip_AddInstructionLine(tooltip, L.PRESET_TOOLTIP)
			GameTooltip_AddNormalLine(tooltip, L.PRESET_COMP)
		end)
		preset:SetResponder(function()
			settings:Set("Thing:Transmog", true)
			settings:Set("Completionist", true)
			
			-- Close menu after clicking and refresh
			settings:UpdateMode(1)
			return MenuResponse.Close
		end)
	end

	MenuUtil.CreateContextMenu(modeButton, GeneratorFunction)
end)

local textModeExplain = child:CreateTextLabel(L.MODE_EXPLAIN_LABEL)
textModeExplain:SetPoint("TOPLEFT", headerMode, "BOTTOMLEFT", 0, -4)
textModeExplain:SetPoint("RIGHT", child.separator or child, "RIGHT", 8)
textModeExplain:SetWordWrap(true)

-- Column 1
local checkboxDebugMode = child:CreateCheckBox(L.DEBUG_MODE,
function(self)
	self:SetChecked(app.MODE_DEBUG)
end,
function(self)
	settings:SetDebugMode(self:GetChecked())
end)
checkboxDebugMode:SetATTTooltip(L.DEBUG_MODE_TOOLTIP)
checkboxDebugMode:SetPoint("TOPLEFT", textModeExplain, "BOTTOMLEFT", 0, -2)

local checkboxAccountMode = child:CreateCheckBox(L.ACCOUNT_MODE,
function(self)
	self:SetChecked(app.MODE_ACCOUNT)
	if app.MODE_DEBUG then
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
checkboxAccountMode:SetATTTooltip(L.ACCOUNT_MODE_TOOLTIP)
checkboxAccountMode:AlignBelow(checkboxDebugMode)

local checkboxFactionMode = child:CreateCheckBox(L.FACTION_MODE,
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
	if app.MODE_DEBUG or not app.MODE_ACCOUNT then
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
checkboxFactionMode:SetATTTooltip(L.FACTION_MODE_TOOLTIP)
checkboxFactionMode:AlignAfter(checkboxAccountMode)

local checkboxLootMode = child:CreateCheckBox(L.LOOT_MODE,
function(self)
	self:SetChecked(settings:Get("LootMode"));
	if app.MODE_DEBUG then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetLootMode(self:GetChecked());
end);
checkboxLootMode:SetATTTooltip(L.LOOT_MODE_TOOLTIP);
checkboxLootMode:AlignBelow(checkboxAccountMode)

local headerAccountThings = child:CreateHeaderLabel(L.ACCOUNT_THINGS_LABEL)
headerAccountThings:SetPoint("LEFT", headerMode, 0, 0)
headerAccountThings:SetPoint("TOP", checkboxLootMode, "BOTTOM", 0, -10)
headerAccountThings.OnRefresh = function(self)
	if app.MODE_DEBUG then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

local accwideCheckboxTransmog = child:CreateAccountWideCheckbox("APPEARANCES", "Transmog")
accwideCheckboxTransmog:SetPoint("TOPLEFT", headerAccountThings, "BOTTOMLEFT", -2, 0)

local name = L.APPEARANCES_CHECKBOX;
if settings.RequiredForInsaneMode.Transmog then
	name = app.ccColors.Insane .. name;
end
local checkboxTransmog = child:CreateCheckBox(name,
function(self)
	self:SetChecked(settings:Get("Thing:Transmog"))
	if app.MODE_DEBUG then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:Set("Thing:Transmog", self:GetChecked())
	settings:UpdateMode(1)
end)
local tooltip = L.APPEARANCES_CHECKBOX_TOOLTIP;
if app.GameBuildVersion < 40000 then
	tooltip = tooltip .. "\n\n" .. L.UNOFFICIAL_SUPPORT_TOOLTIP;
end
if settings.ForceAccountWide.Transmog then
	tooltip = tooltip .. "\n\n" .. L.ACC_WIDE_DEFAULT;
end
checkboxTransmog:SetATTTooltip(tooltip)
checkboxTransmog:AlignAfter(accwideCheckboxTransmog)

local checkboxMainOnlyMode;
if app.GameBuildVersion >= 40000 then	-- Transmog officially supported with Cataclysm.
	local checkboxSources = child:CreateCheckBox(L.COMPLETIONIST_MODE,
	function(self)
		self:SetChecked(settings:Get("Completionist"))
		if not settings:Get("Thing:Transmog") and not app.MODE_DEBUG then
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
	checkboxSources:SetATTTooltip(L.COMPLETIONIST_MODE_TOOLTIP)
	checkboxSources:AlignAfter(checkboxTransmog)

	checkboxMainOnlyMode = child:CreateCheckBox(L.MAIN_ONLY,
	function(self)
		local _, classFilename = UnitClass("player")
		local rPerc, gPerc, bPerc = GetClassColor(classFilename)
		self.Text:SetTextColor(rPerc, gPerc, bPerc, 1)
		self:SetChecked(settings:Get("MainOnly"))
		if settings:Get("Completionist") or app.MODE_ACCOUNT or app.MODE_DEBUG then
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
	checkboxMainOnlyMode:SetATTTooltip(L.MAIN_ONLY_TOOLTIP)
	checkboxMainOnlyMode:AlignBelow(checkboxTransmog, 1)

	if app.IsClassic then
		local checkboxQualityFilter = child:CreateCheckBox(L.ONLY_NOT_TRASH,
		function(self)
			self:SetChecked(settings:Get("Only:NotTrash"))
			if not settings:Get("Thing:Transmog") and not app.MODE_DEBUG then
				self:Disable()
				self:SetAlpha(0.4)
			else
				self:Enable()
				self:SetAlpha(1)
			end
		end,
		function(self)
			settings:Set("Only:NotTrash", self:GetChecked());
			settings:UpdateMode(1);
		end)
		checkboxQualityFilter:SetATTTooltip(L.ONLY_NOT_TRASH_TOOLTIP)
		checkboxQualityFilter:AlignAfter(checkboxMainOnlyMode)
		checkboxQualityFilter:SetScale(0.8);
	end
else
	local checkboxOnlyRWP = child:CreateCheckBox(L.ONLY_RWP,
	function(self)
		self:SetChecked(settings:Get("Only:RWP"))
		if not settings:Get("Thing:Transmog") and not app.MODE_DEBUG then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
	function(self)
		settings:Set("Only:RWP", self:GetChecked());
		settings:UpdateMode(1);
	end)
	checkboxOnlyRWP:SetATTTooltip(L.ONLY_RWP_TOOLTIP)
	checkboxOnlyRWP:AlignAfter(checkboxTransmog)
	checkboxOnlyRWP:SetScale(0.8);

	local checkboxQualityFilter = child:CreateCheckBox(L.ONLY_NOT_TRASH,
	function(self)
		self:SetChecked(settings:Get("Only:NotTrash"))
		if not settings:Get("Thing:Transmog") and not app.MODE_DEBUG then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
	function(self)
		settings:Set("Only:NotTrash", self:GetChecked());
		settings:UpdateMode(1);
	end)
	checkboxQualityFilter:SetATTTooltip(L.ONLY_NOT_TRASH_TOOLTIP)
	checkboxQualityFilter:AlignBelow(checkboxOnlyRWP)
	checkboxQualityFilter:SetScale(0.8);
end

-- Heirlooms aren't in the game until late Wrath Classic.
local accwideCheckboxHeirlooms;
if C_Heirloom and app.GameBuildVersion >= 30000 then
	accwideCheckboxHeirlooms =
	child:CreateAccountWideCheckbox("HEIRLOOMS", "Heirlooms")
		:AlignBelow(checkboxMainOnlyMode or accwideCheckboxTransmog, checkboxMainOnlyMode and accwideCheckboxTransmog)
	local checkboxHeirlooms =
	child:CreateTrackingCheckbox("HEIRLOOMS", "Heirlooms", true)
		:AlignAfter(accwideCheckboxHeirlooms)
	if app.GameBuildVersion >= 60000 then	-- Heirloom Upgrades added with WOD
		child:CreateTrackingCheckbox("HEIRLOOMS_UPGRADES", "HeirloomUpgrades", true, "Heirlooms")
			:AlignAfter(checkboxHeirlooms)
	end
end

-- Illusions were added with the Transmog API during Legion
local accwideCheckboxIllusions;
if C_TransmogCollection and app.GameBuildVersion >= 70000 then
accwideCheckboxIllusions =
child:CreateAccountWideCheckbox("ILLUSIONS", "Illusions")
	:AlignBelow(accwideCheckboxHeirlooms or accwideCheckboxTransmog)
child:CreateTrackingCheckbox("ILLUSIONS", "Illusions", true)
	:AlignAfter(accwideCheckboxIllusions)
end

local accwideCheckboxMounts =
child:CreateAccountWideCheckbox("MOUNTS", "Mounts")
	:AlignBelow(accwideCheckboxIllusions or accwideCheckboxHeirlooms or accwideCheckboxTransmog)
child:CreateTrackingCheckbox("MOUNTS", "Mounts", app.GameBuildVersion >= 30000)	-- Official Support added with Wrath
	:AlignAfter(accwideCheckboxMounts)

local accwideCheckboxBattlePets =
child:CreateAccountWideCheckbox("BATTLE_PETS", "BattlePets")
	:AlignBelow(accwideCheckboxMounts)
child:CreateTrackingCheckbox("BATTLE_PETS", "BattlePets", app.GameBuildVersion >= 30000)	-- Official Support added with Wrath.
	:AlignAfter(accwideCheckboxBattlePets)

local accwideCheckboxToys =
child:CreateAccountWideCheckbox("TOYS", "Toys")
	:AlignBelow(accwideCheckboxBattlePets)
child:CreateTrackingCheckbox("TOYS", "Toys", app.GameBuildVersion >= 30000)	-- Official Support added with Wrath
	:AlignAfter(accwideCheckboxToys)

local headerGeneralThings = child:CreateHeaderLabel(L.GENERAL_THINGS_LABEL)
headerGeneralThings:SetPoint("LEFT", headerMode, 0, 0)
headerGeneralThings:SetPoint("TOP", accwideCheckboxToys, "BOTTOM", 0, -30)
headerGeneralThings.OnRefresh = function(self)
	if app.MODE_DEBUG then
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
            self:SetText(L.STRANGER_THINGS_LABEL)
        end
    end
end

local accwideCheckboxAchievements =
child:CreateAccountWideCheckbox("ACHIEVEMENTS", "Achievements")
child:CreateTrackingCheckbox("ACHIEVEMENTS", "Achievements", app.GameBuildVersion >= 30000)	-- Official Support added with Wrath
	:AlignAfter(accwideCheckboxAchievements)
accwideCheckboxAchievements:SetPoint("TOPLEFT", headerGeneralThings, "BOTTOMLEFT", -2, 0)

local accwideCheckboxCharacterUnlocks;
if app.IsRetail then
-- Crieve doesn't like this class and thinks the functionality should remain on the Quest, Item, or Spell classes.
accwideCheckboxCharacterUnlocks =
child:CreateAccountWideCheckbox("CHARACTERUNLOCKS", "CharacterUnlocks")
	:AlignBelow(accwideCheckboxAchievements)
child:CreateTrackingCheckbox("CHARACTERUNLOCKS", "CharacterUnlocks", true)
	:AlignAfter(accwideCheckboxCharacterUnlocks)
end

local accwideCheckboxDeaths;
if app.IsClassic then
-- Classic wants you to collect these, but Retail doesn't yet.
accwideCheckboxDeaths =
child:CreateAccountWideCheckbox("DEATHS", "DeathTracker")
	:AlignBelow(accwideCheckboxCharacterUnlocks or accwideCheckboxAchievements)
child:CreateTrackingCheckbox("DEATHS", "DeathTracker", true)
	:AlignAfter(accwideCheckboxDeaths)
end

local accwideCheckboxExploration =
child:CreateAccountWideCheckbox("EXPLORATION", "Exploration")
	:AlignBelow(accwideCheckboxDeaths or accwideCheckboxCharacterUnlocks or accwideCheckboxAchievements)
local explorationCheckbox = child:CreateTrackingCheckbox("EXPLORATION", "Exploration", true)
	:AlignAfter(accwideCheckboxExploration)
if app.IsRetail then
	explorationCheckbox:MarkAsWIP();
end

local accwideCheckboxFlightPaths =
child:CreateAccountWideCheckbox("FLIGHT_PATHS", "FlightPaths")
	:AlignBelow(accwideCheckboxExploration)
child:CreateTrackingCheckbox("FLIGHT_PATHS", "FlightPaths", true)
	:AlignAfter(accwideCheckboxFlightPaths)

local accwideCheckboxQuests =
child:CreateAccountWideCheckbox("QUESTS", "Quests")
	:AlignBelow(accwideCheckboxFlightPaths)
local checkboxQuests =
child:CreateTrackingCheckbox("QUESTS", "Quests", true)
	:AlignAfter(accwideCheckboxQuests)
local checkboxQuestsLocked =
child:CreateTrackingCheckbox("QUESTS_LOCKED", "QuestsLocked", true)
	:AlignAfter(checkboxQuests)
if app.IsRetail then
	child:CreateTrackingCheckbox("QUESTS_HIDDEN_TRACKER", "QuestsHidden", true)
		:AlignAfter(checkboxQuestsLocked)
end

local accwideCheckboxRecipes =
child:CreateAccountWideCheckbox("RECIPES", "Recipes")
	:AlignBelow(accwideCheckboxQuests)
child:CreateTrackingCheckbox("RECIPES", "Recipes", true)
	:AlignAfter(accwideCheckboxRecipes)

local accwideCheckboxReputations =
child:CreateAccountWideCheckbox("REPUTATIONS", "Reputations")
	:AlignBelow(accwideCheckboxRecipes)
child:CreateTrackingCheckbox("REPUTATIONS", "Reputations", true)
	:AlignAfter(accwideCheckboxReputations)

local accwideCheckboxTitles =
child:CreateAccountWideCheckbox("TITLES", "Titles")
	:AlignBelow(accwideCheckboxReputations)
child:CreateTrackingCheckbox("TITLES", "Titles", true)
	:AlignAfter(accwideCheckboxTitles)

-- Column 2
local checkboxShowAllTrackableThings = child:CreateCheckBox(L.SHOW_INCOMPLETE_THINGS_CHECKBOX,
function(self)
	self:SetChecked(settings:Get("Show:TrackableThings"))
	if app.MODE_DEBUG then
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
checkboxShowAllTrackableThings:SetATTTooltip(L.SHOW_INCOMPLETE_THINGS_CHECKBOX_TOOLTIP)
checkboxShowAllTrackableThings:SetPoint("TOP", checkboxDebugMode, "TOP", 0, 0)
checkboxShowAllTrackableThings:SetPoint("LEFT", textModeExplain, "LEFT", 320, 0)

local checkboxShowCompletedGroups = child:CreateCheckBox(L.SHOW_COMPLETED_GROUPS_CHECKBOX,
function(self)
	self:SetChecked(settings:Get("Show:CompletedGroups"))
end,
function(self)
	settings:SetCompletedGroups(self:GetChecked())
	settings:Set("Cache:CompletedGroups", self:GetChecked())
	settings:UpdateMode(1)
end)
checkboxShowCompletedGroups:SetATTTooltip(L.SHOW_COMPLETED_GROUPS_CHECKBOX_TOOLTIP)
checkboxShowCompletedGroups:AlignBelow(checkboxShowAllTrackableThings)

local checkboxShowCollectedThings = child:CreateCheckBox(L.SHOW_COLLECTED_THINGS_CHECKBOX,
function(self)
	self:SetChecked(settings:Get("Show:CollectedThings"))
end,
function(self)
	settings:SetCollectedThings(self:GetChecked())
	settings:Set("Cache:CollectedThings", self:GetChecked())
end)
checkboxShowCollectedThings:SetATTTooltip(L.SHOW_COLLECTED_THINGS_CHECKBOX_TOOLTIP)
checkboxShowCollectedThings:AlignBelow(checkboxShowCompletedGroups)

local headerGeneralContent = child:CreateHeaderLabel(L.GENERAL_CONTENT)
headerGeneralContent:SetPoint("TOP", headerAccountThings, "TOP", 0, 0)
headerGeneralContent:SetPoint("LEFT", checkboxShowAllTrackableThings, "LEFT", 0, 0)
headerGeneralContent.OnRefresh = function(self)
	if app.MODE_DEBUG then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

local checkboxShowUnboundItems = child:CreateCheckBox("|T"..app.asset("Category_WorldDrops")..":0|t " .. app.ccColors.Insane .. L.SHOW_BOE_CHECKBOX,
function(self)
	self:SetChecked(not settings:Get("Hide:BoEs"))	-- Inversed, so enabled = show
	if app.MODE_DEBUG then
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
checkboxShowUnboundItems:SetATTTooltip(L.SHOW_BOE_CHECKBOX_TOOLTIP)
checkboxShowUnboundItems:SetPoint("TOPLEFT", headerGeneralContent, "BOTTOMLEFT", -2, 0)

local checkboxIgnoreUnboundFilters = child:CreateCheckBox(L.IGNORE_FILTERS_FOR_BOES_CHECKBOX,
function(self)
	self:SetChecked(settings:Get("Filter:BoEs"))
	if settings:Get("Hide:BoEs") or app.MODE_ACCOUNT or app.MODE_DEBUG then
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
checkboxIgnoreUnboundFilters:SetATTTooltip(L.IGNORE_FILTERS_FOR_BOES_CHECKBOX_TOOLTIP)
checkboxIgnoreUnboundFilters:AlignBelow(checkboxShowUnboundItems, 1)

local checkboxNoLevelFilter = child:CreateCheckBox("|T1530081:0|t " .. app.ccColors.Insane .. L.FILTER_THINGS_BY_LEVEL_CHECKBOX,
function(self)
	self:SetChecked(not settings:Get("Filter:ByLevel"))	-- Inversed, so enabled = show
	if app.MODE_DEBUG then
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
checkboxNoLevelFilter:SetATTTooltip(L.FILTER_THINGS_BY_LEVEL_CHECKBOX_TOOLTIP)
checkboxNoLevelFilter:AlignBelow(checkboxIgnoreUnboundFilters, -1)
if app.IsClassic then
	app.AddEventHandler("OnPlayerLevelUp", function()
		if settings:Get("Filter:ByLevel") then
			settings:Refresh();

			-- TODO: Investigate if this is necessary of if the above code handles that.
			app:RefreshDataCompletely("PLAYER_LEVEL_UP");
		end
	end);
else
	app.AddEventHandler("OnPlayerLevelUp", function()
		if settings:Get("Filter:ByLevel") then
			settings:Refresh();
		end
	end);
end

local checkboxNoSkillLevelFilter;
if app.GameBuildVersion < 20000 then
checkboxNoSkillLevelFilter = child:CreateCheckBox("|T1530081:0|t " .. app.ccColors.Insane .. L.FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX,
function(self)
	self:SetChecked(not settings:Get("Filter:BySkillLevel"))	-- Inversed, so enabled = show
	if app.MODE_DEBUG then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:Set("Filter:BySkillLevel", not self:GetChecked())	-- Inversed, so enabled = show
	settings:UpdateMode(1)
end)
checkboxNoSkillLevelFilter:SetATTTooltip(L.FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX_TOOLTIP)
checkboxNoSkillLevelFilter:AlignBelow(checkboxNoLevelFilter)
end

-- Personal Loot was introduced with Mists of Pandaria
local checkboxShowAllLearnableQuestRewards;
if app.GameBuildVersion >= 50000 then
	checkboxShowAllLearnableQuestRewards = child:CreateCheckBox("|T"..app.asset("Interface_Quest_header")..":0|t " .. app.ccColors.Insane .. L.SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX,
		function(self)
			self:SetChecked(settings:Get("Show:UnavailablePersonalLoot"))
			if app.MODE_DEBUG then
				self:Disable()
				self:SetAlpha(0.4)
			else
				self:Enable()
				self:SetAlpha(1)
			end
		end,
		function(self)
			settings:Set("Show:UnavailablePersonalLoot", self:GetChecked())
			settings:UpdateMode(1)
		end)
	checkboxShowAllLearnableQuestRewards:SetATTTooltip(L.SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX_TOOLTIP)
	checkboxShowAllLearnableQuestRewards:AlignBelow(checkboxNoLevelFilter)
end

local checkboxNoSeasonalFilter = child:CreateCheckBox("|T"..app.asset("Category_Holidays")..":0|t " .. app.ccColors.Insane .. L.SHOW_ALL_SEASONAL,
	function(self)
		self:SetChecked(not settings:Get("Show:OnlyActiveEvents"))	-- Inversed, so enabled = show
		if app.MODE_DEBUG then
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
checkboxNoSeasonalFilter:SetATTTooltip(L.SHOW_ALL_SEASONAL_TOOLTIP)
checkboxNoSeasonalFilter:AlignBelow(checkboxShowAllLearnableQuestRewards or checkboxNoSkillLevelFilter or checkboxNoLevelFilter)

local checkboxShowPetBattles = child:CreateCheckBox("|T"..app.asset("Category_PetBattles")..":0|t " .. app.ccColors.Insane .. L.SHOW_PET_BATTLES_CHECKBOX,
function(self)
	self:SetChecked(settings:Get("Show:PetBattles"))
	if app.MODE_DEBUG then
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
checkboxShowPetBattles:SetATTTooltip(L.SHOW_PET_BATTLES_CHECKBOX_TOOLTIP)
checkboxShowPetBattles:AlignBelow(checkboxNoSeasonalFilter)

local checkboxShowPvP = child:CreateCheckBox("|T"..app.asset("Category_PvP")..":0|t " .. app.ccColors.Insane .. L.SHOW_PVP_CHECKBOX,
function(self)
	self:SetChecked(not settings:Get("Hide:PvP"))	-- Inversed, so enabled = show
	if app.MODE_DEBUG then
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
checkboxShowPvP:SetATTTooltip(L.SHOW_PVP_CHECKBOX_TOOLTIP)
checkboxShowPvP:AlignBelow(checkboxShowPetBattles)

local checkboxShowSkyriding = child:CreateCheckBox("|TInterface\\Icons\\ability_dragonriding_dragonridinggliding01:0|t " .. app.ccColors.Insane .. L.SHOW_SKYRIDING_CHECKBOX,
function(self)
	self:SetChecked(settings:Get("Show:Skyriding"))
	if app.MODE_DEBUG then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:Set("Show:Skyriding", self:GetChecked())
	settings:UpdateMode(1)
end)
checkboxShowSkyriding:SetATTTooltip(L.SHOW_SKYRIDING_CHECKBOX_TOOLTIP)
checkboxShowSkyriding:AlignBelow(checkboxShowPvP)

-- Expansion Things
if app.GameBuildVersion >= 60000 then
	-- This section is hidden until after Warlords!
	local headerExpansionThings = child:CreateHeaderLabel(L.EXPANSION_THINGS_LABEL)
	headerExpansionThings:SetPoint("LEFT", headerGeneralContent, 0, 0)
	headerExpansionThings:SetPoint("TOP", headerGeneralThings, "TOP", 0, 0)
	headerExpansionThings.OnRefresh = function(self)
		if app.MODE_DEBUG then
			self:SetAlpha(0.4)
		else
			self:SetAlpha(1)
		end
	end

	-- Followers (Warlords+)
	local accwideCheckboxFollowers =
	child:CreateAccountWideCheckbox("FOLLOWERS", "Followers")
	accwideCheckboxFollowers:SetPoint("TOPLEFT", headerExpansionThings, "BOTTOMLEFT", -2, 0)
	child:CreateTrackingCheckbox("FOLLOWERS", "Followers", true)
		:AlignAfter(accwideCheckboxFollowers)

	if app.GameBuildVersion >= 80000 then
		-- Azerite Essences (BFA+)
		local accwideCheckboxAzeriteEssences =
		child:CreateAccountWideCheckbox("AZERITE_ESSENCES", "AzeriteEssences")
			:AlignBelow(accwideCheckboxFollowers)
		child:CreateTrackingCheckbox("AZERITE_ESSENCES", "AzeriteEssences", true)
			:AlignAfter(accwideCheckboxAzeriteEssences)

		if app.GameBuildVersion >= 90000 then
			-- Conduits (Shadowlands+)
			local accwideCheckboxConduits =
			child:CreateAccountWideCheckbox("SOULBINDCONDUITS", "Conduits")
				:AlignBelow(accwideCheckboxAzeriteEssences)
			child:CreateTrackingCheckbox("SOULBINDCONDUITS", "Conduits", true)
				:AlignAfter(accwideCheckboxConduits)

			-- Runeforge Legendaries (Shadowlands+)
			local accwideCheckboxRunecarvingPowers =
			child:CreateForcedAccountWideCheckbox()
				:AlignBelow(accwideCheckboxConduits)
			child:CreateTrackingCheckbox("RUNEFORGELEGENDARIES", "RuneforgeLegendaries", true)
				:AlignAfter(accwideCheckboxRunecarvingPowers)

			if app.GameBuildVersion >= 100000 then
				-- Mount Mods (Dragonflight+)
				local accwideCheckboxMountMods =
				child:CreateForcedAccountWideCheckbox()
					:AlignBelow(accwideCheckboxRunecarvingPowers)
				child:CreateTrackingCheckbox("MOUNTMODS", "MountMods", true)
					:AlignAfter(accwideCheckboxMountMods)
			end
		end
	end
end