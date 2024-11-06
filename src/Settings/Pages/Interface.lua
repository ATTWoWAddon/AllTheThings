local appName, app = ...;
local L, settings, ipairs = app.L.SETTINGS_MENU, app.Settings, ipairs;

-- Settings: Interface Page
local child = settings:CreateOptionsPage(L.INTERFACE_PAGE, appName);

-- Column 1
local headerTooltips = child:CreateHeaderLabel(L.TOOLTIP_LABEL)
if child.separator then
	headerTooltips:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerTooltips:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end

local checkboxShowTooltipHelp = child:CreateCheckBox(L.TOOLTIP_HELP_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:TooltipHelp"))
end,
function(self)
	settings:SetTooltipSetting("Show:TooltipHelp", self:GetChecked())
end)
checkboxShowTooltipHelp:SetATTTooltip(L.TOOLTIP_HELP_CHECKBOX_TOOLTIP)
checkboxShowTooltipHelp:SetPoint("TOPLEFT", headerTooltips, "BOTTOMLEFT", -2, 0)

local checkboxEnableTooltipIntegrations = child:CreateCheckBox(L.ENABLE_TOOLTIP_INFORMATION_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Enabled"))
end,
function(self)
	settings:SetTooltipSetting("Enabled", self:GetChecked())
end)
checkboxEnableTooltipIntegrations:SetATTTooltip(L.ENABLE_TOOLTIP_INFORMATION_CHECKBOX_TOOLTIP)
checkboxEnableTooltipIntegrations:AlignBelow(checkboxShowTooltipHelp)

local textTooltipModifier = child:CreateTextLabel("|cffFFFFFF"..L.TOOLTIP_MOD_LABEL)
textTooltipModifier:SetPoint("TOPLEFT", checkboxEnableTooltipIntegrations.Text, "TOPRIGHT", 15, 0)
textTooltipModifier.OnRefresh = function(self)
	if not settings:GetTooltipSetting("Enabled") then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

local checkboxTooltipModifierNone = child:CreateCheckBox(L.TOOLTIP_MOD_NONE,
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

local checkboxTooltipModifierShift = child:CreateCheckBox(L.TOOLTIP_MOD_SHIFT,
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

local checkboxTooltipModifierCtrl = child:CreateCheckBox(L.TOOLTIP_MOD_CTRL,
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

local checkboxTooltipModifierAlt = child:CreateCheckBox(L.TOOLTIP_MOD_ALT,
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
	local checkboxTooltipModifierMeta = child:CreateCheckBox(L.TOOLTIP_MOD_CMD,
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

local checkboxDisplayInCombat = child:CreateCheckBox(L.DISPLAY_IN_COMBAT_CHECKBOX,
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
checkboxDisplayInCombat:SetATTTooltip(L.DISPLAY_IN_COMBAT_CHECKBOX_TOOLTIP)
checkboxDisplayInCombat:AlignBelow(checkboxTooltipModifierNone, -1)

local checkboxExceptNPCs = child:CreateCheckBox(L.NOT_DISPLAY_IN_COMBAT_NPCS_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("DisplayInCombatExceptNPCs"))
	if not (settings:GetTooltipSetting("Enabled") and settings:GetTooltipSetting("DisplayInCombat")) then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("DisplayInCombatExceptNPCs", self:GetChecked())
end)
checkboxExceptNPCs:SetATTTooltip(L.NOT_DISPLAY_IN_COMBAT_NPCS_CHECKBOX_TOOLTIP)
checkboxExceptNPCs:AlignAfter(checkboxDisplayInCombat)

local checkboxSummarizeThings = child:CreateCheckBox(L.SUMMARIZE_CHECKBOX,
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
checkboxSummarizeThings:SetATTTooltip(L.SUMMARIZE_CHECKBOX_TOOLTIP)
checkboxSummarizeThings:AlignBelow(checkboxDisplayInCombat)

local sliderSummarizeThings = CreateFrame("Slider", "ATTSummarizeThingsSlider", child, "UISliderTemplate")
sliderSummarizeThings:SetPoint("TOP", checkboxSummarizeThings.Text, "BOTTOM", 0, -4)
sliderSummarizeThings:SetPoint("LEFT", checkboxSummarizeThings, "LEFT", 10, 0)
table.insert(settings.Objects, sliderSummarizeThings)
settings.sliderSummarizeThings = sliderSummarizeThings
sliderSummarizeThings.tooltipText = L.CONTAINS_SLIDER_TOOLTIP
sliderSummarizeThings:SetOrientation('HORIZONTAL')
sliderSummarizeThings:SetWidth(200)
sliderSummarizeThings:SetHeight(20)
sliderSummarizeThings:SetValueStep(1)
sliderSummarizeThings:SetMinMaxValues(1, 40)
sliderSummarizeThings:SetObeyStepOnDrag(true)
sliderSummarizeThings.LabelLow = sliderSummarizeThings:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderSummarizeThings.LabelLow:SetPoint("TOPLEFT", sliderSummarizeThings, "BOTTOMLEFT", 0, 2)
sliderSummarizeThings.LabelLow:SetText('1')
sliderSummarizeThings.LabelHigh = sliderSummarizeThings:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderSummarizeThings.LabelHigh:SetPoint("TOPRIGHT", sliderSummarizeThings, "BOTTOMRIGHT", 0, 2)
sliderSummarizeThings.LabelHigh:SetText('40')
sliderSummarizeThings.Label = sliderSummarizeThings:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderSummarizeThings.Label:SetPoint("TOP", sliderSummarizeThings, "BOTTOM", 0, 2)
sliderSummarizeThings.Label:SetText(sliderSummarizeThings:GetValue())
sliderSummarizeThings:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(newValue)
	if newValue == settings:GetTooltipSetting("ContainsCount") then
		return 1
	end
	settings:SetTooltipSetting("ContainsCount", newValue)
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

local sliderMaxTooltipTopLineLength = CreateFrame("Slider", "ATTSliderMaxTooltipFirstLineLength", child, "UISliderTemplate")
sliderMaxTooltipTopLineLength:SetPoint("TOPLEFT", sliderSummarizeThings, "BOTTOMLEFT", 0, -25)
table.insert(settings.Objects, sliderMaxTooltipTopLineLength)
settings.sliderMaxTooltipTopLineLength = sliderMaxTooltipTopLineLength
sliderMaxTooltipTopLineLength:SetOrientation('HORIZONTAL')
sliderMaxTooltipTopLineLength:SetWidth(200)
sliderMaxTooltipTopLineLength:SetHeight(20)
sliderMaxTooltipTopLineLength:SetValueStep(10)
sliderMaxTooltipTopLineLength:SetMinMaxValues(80, 1000)
sliderMaxTooltipTopLineLength:SetObeyStepOnDrag(true)
sliderMaxTooltipTopLineLength.Text = sliderMaxTooltipTopLineLength:CreateFontString(nil, "ARTWORK", "GameFontNormal")
sliderMaxTooltipTopLineLength.Text:SetPoint("BOTTOMLEFT", sliderMaxTooltipTopLineLength, "TOPLEFT", 0, 0)
sliderMaxTooltipTopLineLength.Text:SetText(L.MAX_TOOLTIP_TOP_LINE_LENGTH_LABEL)
sliderMaxTooltipTopLineLength.Text:SetTextColor(1, 1, 1)
sliderMaxTooltipTopLineLength.LabelLow = sliderMaxTooltipTopLineLength:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderMaxTooltipTopLineLength.LabelLow:SetPoint("TOPLEFT", sliderMaxTooltipTopLineLength, "BOTTOMLEFT", 0, 2)
sliderMaxTooltipTopLineLength.LabelLow:SetText('80')
sliderMaxTooltipTopLineLength.LabelHigh = sliderMaxTooltipTopLineLength:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderMaxTooltipTopLineLength.LabelHigh:SetPoint("TOPRIGHT", sliderMaxTooltipTopLineLength, "BOTTOMRIGHT", 0, 2)
sliderMaxTooltipTopLineLength.LabelHigh:SetText('1000')
sliderMaxTooltipTopLineLength.Label = sliderMaxTooltipTopLineLength:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderMaxTooltipTopLineLength.Label:SetPoint("TOP", sliderMaxTooltipTopLineLength, "BOTTOM", 0, 0)
sliderMaxTooltipTopLineLength:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(("%.0f"):format(newValue))
	settings:SetTooltipSetting("MaxTooltipTopLineLength", newValue)
end)

local textTooltipShownInfo = child:CreateTextLabel("|cffFFFFFF"..L.TOOLTIP_SHOW_LABEL)
textTooltipShownInfo:SetPoint("TOP", sliderMaxTooltipTopLineLength, "BOTTOM", 0, -30)
textTooltipShownInfo:SetPoint("LEFT", headerTooltips, "LEFT", 0, 0)
textTooltipShownInfo.OnRefresh = function(self)
	if not settings:GetTooltipSetting("Enabled") then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

local checkboxCollectionProgress = child:CreateCheckBox(L.SHOW_COLLECTION_PROGRESS_CHECKBOX,
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
checkboxCollectionProgress:SetATTTooltip(L.SHOW_COLLECTION_PROGRESS_CHECKBOX_TOOLTIP)
checkboxCollectionProgress:SetPoint("LEFT", checkboxSummarizeThings, "LEFT", 0, 0)
checkboxCollectionProgress:SetPoint("TOP", textTooltipShownInfo, "BOTTOM", 0, -2)

local checkboxProgressIconOnly = child:CreateCheckBox(L.ICON_ONLY_CHECKBOX,
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
checkboxProgressIconOnly:SetATTTooltip(L.ICON_ONLY_CHECKBOX_TOOLTIP)
checkboxProgressIconOnly:AlignBelow(checkboxCollectionProgress, 1)

local checkboxOnlyRelevant;
if C_TransmogCollection then
local checkboxSharedAppearances = child:CreateCheckBox(L.SHARED_APPEARANCES_CHECKBOX,
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
checkboxSharedAppearances:SetATTTooltip(L.SHARED_APPEARANCES_CHECKBOX_TOOLTIP)
checkboxSharedAppearances:AlignBelow(checkboxProgressIconOnly, -1)

local checkboxOriginalSource = child:CreateCheckBox(L.INCLUDE_ORIGINAL_CHECKBOX,
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
checkboxOriginalSource:SetATTTooltip(L.INCLUDE_ORIGINAL_CHECKBOX_TOOLTIP)
checkboxOriginalSource:AlignBelow(checkboxSharedAppearances, 1)

checkboxOnlyRelevant = child:CreateCheckBox(L.ONLY_RELEVANT_CHECKBOX,
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
checkboxOnlyRelevant:SetATTTooltip(L.ONLY_RELEVANT_CHECKBOX_TOOLTIP)
checkboxOnlyRelevant:AlignBelow(checkboxOriginalSource)
end

local checkboxSourceLocations = child:CreateCheckBox(L.SOURCE_LOCATIONS_CHECKBOX,
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
checkboxSourceLocations:SetATTTooltip(L.SOURCE_LOCATIONS_CHECKBOX_TOOLTIP)
checkboxSourceLocations:AlignBelow(checkboxOnlyRelevant or checkboxProgressIconOnly, -1)

local sliderSourceLocations = CreateFrame("Slider", "ATTsliderSourceLocations", child, "UISliderTemplate")
sliderSourceLocations:SetPoint("TOP", checkboxSourceLocations.Text, "BOTTOM", 0, -4)
sliderSourceLocations:SetPoint("LEFT", checkboxSourceLocations, "LEFT", 10, 0)
table.insert(settings.Objects, sliderSourceLocations)
settings.sliderSourceLocations = sliderSourceLocations
sliderSourceLocations.tooltipText = L.LOCATIONS_SLIDER_TOOLTIP
sliderSourceLocations:SetOrientation('HORIZONTAL')
sliderSourceLocations:SetWidth(140)
sliderSourceLocations:SetHeight(20)
sliderSourceLocations:SetValueStep(1)
sliderSourceLocations:SetMinMaxValues(1, 40)
sliderSourceLocations:SetObeyStepOnDrag(true)
sliderSourceLocations.LabelLow = sliderSourceLocations:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderSourceLocations.LabelLow:SetPoint("TOPLEFT", sliderSourceLocations, "BOTTOMLEFT", 0, 2)
sliderSourceLocations.LabelLow:SetText('1')
sliderSourceLocations.LabelHigh = sliderSourceLocations:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderSourceLocations.LabelHigh:SetPoint("TOPRIGHT", sliderSourceLocations, "BOTTOMRIGHT", 0, 2)
sliderSourceLocations.LabelHigh:SetText('40')
sliderSourceLocations.Label = sliderSourceLocations:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderSourceLocations.Label:SetPoint("TOP", sliderSourceLocations, "BOTTOM", 0, 2)
sliderSourceLocations.Label:SetText(sliderSourceLocations:GetValue())
sliderSourceLocations:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(newValue)
	if newValue == settings:GetTooltipSetting("Locations") then
		return 1
	end
	settings:SetTooltipSetting("Locations", newValue)
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

local checkboxCompleted = child:CreateCheckBox(L.COMPLETED_SOURCES_CHECKBOX,
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
checkboxCompleted:SetATTTooltip(L.COMPLETED_SOURCES_CHECKBOX_TOOLTIP)
checkboxCompleted:SetPoint("TOP", sliderSourceLocations, "BOTTOM", 0, -8)
checkboxCompleted:SetPoint("LEFT", checkboxSourceLocations, "LEFT", 8, 4)

local checkboxCreatures = child:CreateCheckBox(L.FOR_CREATURES_CHECKBOX,
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
checkboxCreatures:SetATTTooltip(L.FOR_CREATURES_CHECKBOX_TOOLTIP)
checkboxCreatures:AlignBelow(checkboxCompleted)

local checkboxThings = child:CreateCheckBox(L.FOR_THINGS_CHECKBOX,
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
checkboxThings:SetATTTooltip(L.FOR_THINGS_CHECKBOX_TOOLTIP)
checkboxThings:AlignBelow(checkboxCreatures)

local checkboxUnsorted = child:CreateCheckBox(L.FOR_UNSORTED_CHECKBOX,
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
checkboxUnsorted:SetATTTooltip(L.FOR_UNSORTED_CHECKBOX_TOOLTIP)
checkboxUnsorted:AlignBelow(checkboxThings)

local checkboxAllowWrapping = child:CreateCheckBox(L.WITH_WRAPPING_CHECKBOX,
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
checkboxAllowWrapping:SetATTTooltip(L.WITH_WRAPPING_CHECKBOX_TOOLTIP)
checkboxAllowWrapping:AlignBelow(checkboxUnsorted)






local checkboxCompletedBy = child:CreateCheckBox(L.COMPLETED_BY_CHECKBOX,
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
checkboxCompletedBy:SetATTTooltip(L.COMPLETED_BY_CHECKBOX_TOOLTIP)
checkboxCompletedBy:AlignAfter(checkboxCollectionProgress, 20)

local checkboxKnownBy = child:CreateCheckBox(L.KNOWN_BY_CHECKBOX,
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
checkboxKnownBy:SetATTTooltip(L.KNOWN_BY_CHECKBOX_TOOLTIP)
checkboxKnownBy:AlignBelow(checkboxCompletedBy)

if app.IsRetail then	-- Not sure when the APIs needed for these features is added
local checkboxSpecializations = child:CreateCheckBox(L.SPEC_CHECKBOX,
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
checkboxSpecializations:SetATTTooltip(L.SPEC_CHECKBOX_TOOLTIP)
checkboxSpecializations:AlignBelow(checkboxKnownBy)

local checkboxDropChances = child:CreateCheckBox(L.DROP_CHANCES_CHECKBOX,
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
checkboxDropChances:SetATTTooltip(L.DROP_CHANCES_CHECKBOX_TOOLTIP)
checkboxDropChances:AlignBelow(checkboxSpecializations)

local checkboxCurrencyCalculation = child:CreateCheckBox(L.SHOW_CURRENCY_CALCULATIONS_CHECKBOX,
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
checkboxCurrencyCalculation:SetATTTooltip(L.SHOW_CURRENCY_CALCULATIONS_CHECKBOX_TOOLTIP)
checkboxCurrencyCalculation:AlignBelow(checkboxDropChances)
else
-- CRIEVE NOTE: This feature is kinda neat, but really only makes sense for Classic.
local checkboxShowCraftedItems = child:CreateCheckBox(L.SHOW_CRAFTED_ITEMS_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:CraftedItems"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SummarizeThings") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Show:CraftedItems", self:GetChecked());
end)
checkboxShowCraftedItems:SetATTTooltip(L.SHOW_CRAFTED_ITEMS_CHECKBOX_TOOLTIP)
checkboxShowCraftedItems:AlignBelow(checkboxKnownBy)

local checkboxShowRecipes = child:CreateCheckBox(L.SHOW_RECIPES_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:Recipes"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SummarizeThings") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Show:Recipes", self:GetChecked());
end)
checkboxShowRecipes:SetATTTooltip(L.SHOW_RECIPES_CHECKBOX_TOOLTIP)
checkboxShowRecipes:AlignBelow(checkboxShowCraftedItems)

local checkboxOnlyShowNonTrivialRecipes = child:CreateCheckBox(L.SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:OnlyShowNonTrivialRecipes"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SummarizeThings") or not settings:GetTooltipSetting("Show:Recipes") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Show:OnlyShowNonTrivialRecipes", self:GetChecked());
end)
checkboxOnlyShowNonTrivialRecipes:SetATTTooltip(L.SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX_TOOLTIP)
checkboxOnlyShowNonTrivialRecipes:AlignBelow(checkboxShowRecipes, 1)
end

-- Column 2
local headerListBehavior = child:CreateHeaderLabel(L.BEHAVIOR_LABEL)
headerListBehavior:SetPoint("TOPLEFT", headerTooltips, 380, 0)

local sliderMainListScale = CreateFrame("Slider", "ATTsliderMainListScale", child, "UISliderTemplate")
sliderMainListScale:SetPoint("TOPLEFT", headerListBehavior, "BOTTOMLEFT", 4, -15)
table.insert(settings.Objects, sliderMainListScale)
settings.sliderMainListScale = sliderMainListScale
sliderMainListScale.tooltipText = L.MAIN_LIST_SCALE_TOOLTIP
sliderMainListScale:SetOrientation('HORIZONTAL')
sliderMainListScale:SetWidth(200)
sliderMainListScale:SetHeight(20)
sliderMainListScale:SetValueStep(0.1)
sliderMainListScale:SetMinMaxValues(0.1, 4)
sliderMainListScale:SetObeyStepOnDrag(true)
sliderMainListScale.Text = sliderMainListScale:CreateFontString(nil, "ARTWORK", "GameFontNormal")
sliderMainListScale.Text:SetPoint("BOTTOMLEFT", sliderMainListScale, "TOPLEFT", 0, 0)
sliderMainListScale.Text:SetText(L.MAIN_LIST_SLIDER_LABEL)
sliderMainListScale.Text:SetTextColor(1, 1, 1)
sliderMainListScale.LabelLow = sliderMainListScale:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderMainListScale.LabelLow:SetPoint("TOPLEFT", sliderMainListScale, "BOTTOMLEFT", 0, 2)
sliderMainListScale.LabelLow:SetText('0.1')
sliderMainListScale.LabelHigh = sliderMainListScale:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderMainListScale.LabelHigh:SetPoint("TOPRIGHT", sliderMainListScale, "BOTTOMRIGHT", 0, 2)
sliderMainListScale.LabelHigh:SetText('4')
sliderMainListScale.Label = sliderMainListScale:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderMainListScale.Label:SetPoint("TOP", sliderMainListScale, "BOTTOM", 0, 0)
sliderMainListScale.Label:SetText(("%.2f"):format(sliderMainListScale:GetValue()))
sliderMainListScale:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(("%.2f"):format(newValue))
	settings:SetTooltipSetting("MainListScale", newValue)
	app:GetWindow("Prime"):SetScale(newValue)
end)

local sliderMiniListScale = CreateFrame("Slider", "ATTsliderMiniListScale", child, "UISliderTemplate")
sliderMiniListScale:SetPoint("TOPLEFT", sliderMainListScale, "BOTTOMLEFT", 0, -25)
table.insert(settings.Objects, sliderMiniListScale)
settings.sliderMiniListScale = sliderMiniListScale
sliderMiniListScale.tooltipText = L.MINI_LIST_SCALE_TOOLTIP
sliderMiniListScale:SetOrientation('HORIZONTAL')
sliderMiniListScale:SetWidth(200)
sliderMiniListScale:SetHeight(20)
sliderMiniListScale:SetValueStep(0.1)
sliderMiniListScale:SetMinMaxValues(0.1, 4)
sliderMiniListScale:SetObeyStepOnDrag(true)
sliderMiniListScale.Text = sliderMiniListScale:CreateFontString(nil, "ARTWORK", "GameFontNormal")
sliderMiniListScale.Text:SetPoint("BOTTOMLEFT", sliderMiniListScale, "TOPLEFT", 0, 0)
sliderMiniListScale.Text:SetText(L.MINI_LIST_SLIDER_LABEL)
sliderMiniListScale.Text:SetTextColor(1, 1, 1)
sliderMiniListScale.LabelLow = sliderMiniListScale:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderMiniListScale.LabelLow:SetPoint("TOPLEFT", sliderMiniListScale, "BOTTOMLEFT", 0, 2)
sliderMiniListScale.LabelLow:SetText('0.1')
sliderMiniListScale.LabelHigh = sliderMiniListScale:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderMiniListScale.LabelHigh:SetPoint("TOPRIGHT", sliderMiniListScale, "BOTTOMRIGHT", 0, 2)
sliderMiniListScale.LabelHigh:SetText('4')
sliderMiniListScale.Label = sliderMiniListScale:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderMiniListScale.Label:SetPoint("TOP", sliderMiniListScale, "BOTTOM", 0, 0)
sliderMiniListScale.Label:SetText(("%.2f"):format(sliderMiniListScale:GetValue()))
sliderMiniListScale:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(("%.2f"):format(newValue))
	settings:SetTooltipSetting("MiniListScale", newValue)
	for key,window in pairs(app.Windows) do
		if key ~= "Prime" then
			window:SetScale(newValue)
		end
	end
end)

local checkboxDoAdHocUpdates;
if app.IsRetail then	-- CRIEVE NOTE: Classic Windows don't support this.
checkboxDoAdHocUpdates = child:CreateCheckBox(L.ADHOC_UPDATES_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Updates:AdHoc"))
end,
function(self)
	settings:SetTooltipSetting("Updates:AdHoc", self:GetChecked())
end)
checkboxDoAdHocUpdates:SetATTTooltip(L.ADHOC_UPDATES_CHECKBOX_TOOLTIP)
checkboxDoAdHocUpdates:SetPoint("LEFT", headerListBehavior, 0, 0)
checkboxDoAdHocUpdates:SetPoint("TOP", sliderMiniListScale, "BOTTOM", 0, -10)
end

local checkboxExpandDifficulty = child:CreateCheckBox(L.EXPAND_DIFFICULTY_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Expand:Difficulty"))
end,
function(self)
	settings:SetTooltipSetting("Expand:Difficulty", self:GetChecked())
end)
checkboxExpandDifficulty:SetATTTooltip(L.EXPAND_DIFFICULTY_CHECKBOX_TOOLTIP)
if checkboxDoAdHocUpdates then
	checkboxExpandDifficulty:AlignBelow(checkboxDoAdHocUpdates)
else
	checkboxExpandDifficulty:SetPoint("LEFT", headerListBehavior, 0, 0)
	checkboxExpandDifficulty:SetPoint("TOP", sliderMiniListScale, "BOTTOM", 0, -10)
end

local checkboxIconPortrait = child:CreateCheckBox(L.SHOW_ICON_PORTRAIT_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("IconPortraits"))
end,
function(self)
	settings:SetTooltipSetting("IconPortraits", self:GetChecked());
	app.CallbackEvent("OnRenderDirty")
end)
checkboxIconPortrait:SetATTTooltip(L.SHOW_ICON_PORTRAIT_CHECKBOX_TOOLTIP)
checkboxIconPortrait:AlignBelow(checkboxExpandDifficulty)

local checkboxIconPortraitForQuests = child:CreateCheckBox(L.SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("IconPortraitsForQuests"))
	if not settings:GetTooltipSetting("IconPortraits") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("IconPortraitsForQuests", self:GetChecked())
	app.CallbackEvent("OnRenderDirty")
end)
checkboxIconPortraitForQuests:SetATTTooltip(L.SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX_TOOLTIP)
checkboxIconPortraitForQuests:AlignBelow(checkboxIconPortrait, 1)

local checkboxModelPreview = child:CreateCheckBox(L.SHOW_MODELS_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Models"))
end,
function(self)
	settings:SetTooltipSetting("Models", self:GetChecked())
end)
checkboxModelPreview:SetATTTooltip(L.SHOW_MODELS_CHECKBOX_TOOLTIP)
checkboxModelPreview:AlignBelow(checkboxIconPortraitForQuests, -1)

local checkboxNestedQuestChains;
if app.IsRetail then	-- CRIEVE NOTE: Classic Windows don't support this just yet.
local checkboxFillDynamicQuests = child:CreateCheckBox(L.FILL_DYNAMIC_QUESTS_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("WorldQuestsList:Currencies"))
end,
function(self)
	settings:SetTooltipSetting("WorldQuestsList:Currencies", self:GetChecked())
end)
checkboxFillDynamicQuests:SetATTTooltip(L.FILL_DYNAMIC_QUESTS_CHECKBOX_TOOLTIP)
checkboxFillDynamicQuests:AlignBelow(checkboxModelPreview)

local checkboxFillNPCData = child:CreateCheckBox(L.FILL_NPC_DATA_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("NPCData:Nested"))
end,
function(self)
	settings:SetTooltipSetting("NPCData:Nested", self:GetChecked())
	-- requires re-building of minilist
	app.LocationTrigger(true)
end)
checkboxFillNPCData:SetATTTooltip(L.FILL_NPC_DATA_CHECKBOX_TOOLTIP)
checkboxFillNPCData:AlignBelow(checkboxFillDynamicQuests)

checkboxNestedQuestChains = child:CreateCheckBox(L.NESTED_QUEST_CHAIN_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("QuestChain:Nested"))
end,
function(self)
	settings:SetTooltipSetting("QuestChain:Nested", self:GetChecked())
end)
checkboxNestedQuestChains:SetATTTooltip(L.NESTED_QUEST_CHAIN_CHECKBOX_TOOLTIP)
checkboxNestedQuestChains:AlignBelow(checkboxFillNPCData)
end

local checkboxSortByProgress = child:CreateCheckBox(L.SORT_BY_PROGRESS_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Sort:Progress"))
end,
function(self)
	settings:SetTooltipSetting("Sort:Progress", self:GetChecked())
end)
checkboxSortByProgress:SetATTTooltip(L.SORT_BY_PROGRESS_CHECKBOX_TOOLTIP)
checkboxSortByProgress:AlignBelow(checkboxNestedQuestChains or checkboxModelPreview)

local checkboxShowRemainingCount = child:CreateCheckBox(L.SHOW_REMAINING_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:Remaining"))
	app.Modules.Color.SetShowRemainingText(self:GetChecked());
end,
function(self)
	settings:SetTooltipSetting("Show:Remaining", self:GetChecked())
	app.Modules.Color.SetShowRemainingText(self:GetChecked());
	app.CallbackEvent("OnRenderDirty")
end)
checkboxShowRemainingCount:SetATTTooltip(L.SHOW_REMAINING_CHECKBOX_TOOLTIP)
checkboxShowRemainingCount:AlignBelow(checkboxSortByProgress)

local checkboxShowPercentageCount = child:CreateCheckBox(L.PERCENTAGES_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:Percentage"))
	app.Modules.Color.SetShowPercentageText(self:GetChecked());
end,
function(self)
	settings:SetTooltipSetting("Show:Percentage", self:GetChecked())
	app.Modules.Color.SetShowPercentageText(self:GetChecked());
	app.CallbackEvent("OnRenderDirty")
end)
checkboxShowPercentageCount:SetATTTooltip(L.PERCENTAGES_CHECKBOX_TOOLTIP)
checkboxShowPercentageCount:AlignBelow(checkboxShowRemainingCount)

local sliderPercentagePrecision = CreateFrame("Slider", "ATTsliderPercentagePrecision", child, "UISliderTemplate")
sliderPercentagePrecision:SetPoint("LEFT", sliderMainListScale, 0, 0)
sliderPercentagePrecision:SetPoint("TOP", checkboxShowPercentageCount, "BOTTOM", 0, -24)
table.insert(settings.Objects, sliderPercentagePrecision)
settings.sliderPercentagePrecision = sliderPercentagePrecision
sliderPercentagePrecision.tooltipText = L.PRECISION_SLIDER_TOOLTIP
sliderPercentagePrecision:SetOrientation('HORIZONTAL')
sliderPercentagePrecision:SetWidth(200)
sliderPercentagePrecision:SetHeight(20)
sliderPercentagePrecision:SetValueStep(1)
sliderPercentagePrecision:SetMinMaxValues(0, 8)
sliderPercentagePrecision:SetObeyStepOnDrag(true)
sliderPercentagePrecision.Text = sliderPercentagePrecision:CreateFontString(nil, "ARTWORK", "GameFontNormal")
sliderPercentagePrecision.Text:SetPoint("BOTTOMLEFT", sliderPercentagePrecision, "TOPLEFT", 0, 0)
sliderPercentagePrecision.Text:SetText(L.PRECISION_SLIDER)
sliderPercentagePrecision.Text:SetTextColor(1, 1, 1)
sliderPercentagePrecision.LabelLow = sliderPercentagePrecision:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderPercentagePrecision.LabelLow:SetPoint("TOPLEFT", sliderPercentagePrecision, "BOTTOMLEFT", 0, 2)
sliderPercentagePrecision.LabelLow:SetText('0')
sliderPercentagePrecision.LabelHigh = sliderPercentagePrecision:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderPercentagePrecision.LabelHigh:SetPoint("TOPRIGHT", sliderPercentagePrecision, "BOTTOMRIGHT", 0, 2)
sliderPercentagePrecision.LabelHigh:SetText('8')
sliderPercentagePrecision.Label = sliderPercentagePrecision:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
sliderPercentagePrecision.Label:SetPoint("TOP", sliderPercentagePrecision, "BOTTOM", 0, 2)
sliderPercentagePrecision.Label:SetText(sliderPercentagePrecision:GetValue())
sliderPercentagePrecision:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(newValue)
	if newValue == settings:GetTooltipSetting("Precision") then
		return 1
	end
	settings:SetTooltipSetting("Precision", newValue)
	app.CallbackEvent("OnRenderDirty")
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

if app.IsRetail then	-- CRIEVE NOTE: Classic Dynamic Categories don't support this just yet.
-- Dynamic Category Toggles
local textDynamicCategories = child:CreateTextLabel("|cffFFFFFF"..L.DYNAMIC_CATEGORY_LABEL)
textDynamicCategories:SetPoint("LEFT", checkboxShowPercentageCount, "LEFT", 4, 0)
textDynamicCategories:SetPoint("TOP", sliderPercentagePrecision, "BOTTOM", 0, -15)

local checkboxDynamicSimple = child:CreateCheckBox(L.DYNAMIC_CATEGORY_SIMPLE,
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
checkboxDynamicSimple:SetPoint("TOP", textDynamicCategories, "BOTTOM", 0, 0)
checkboxDynamicSimple:SetPoint("LEFT", textDynamicCategories, "LEFT", 0, 0)
checkboxDynamicSimple:SetATTTooltip(L.DYNAMIC_CATEGORY_SIMPLE_TOOLTIP..L.DYNAMIC_CATEGORY_TOOLTIP_NOTE)

local checkboxDynamicNested = child:CreateCheckBox(L.DYNAMIC_CATEGORY_NESTED,
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
checkboxDynamicNested:SetATTTooltip(L.DYNAMIC_CATEGORY_NESTED_TOOLTIP..L.DYNAMIC_CATEGORY_TOOLTIP_NOTE)
end