local appName, app = ...;
local L, settings, ipairs = app.L, app.Settings, ipairs;

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

local checkboxPetCageTooltips = child:CreateCheckBox(L.PET_CAGE_TOOLTIPS_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("EnablePetCageTooltips"))
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("EnablePetCageTooltips", self:GetChecked())
end)
checkboxPetCageTooltips:SetATTTooltip(L.PET_CAGE_TOOLTIPS_CHECKBOX_TOOLTIP)
checkboxPetCageTooltips:AlignAfter(checkboxExceptNPCs)

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

local sliderSummarizeThings = child:CreateSlider("ATTSummarizeThingsSlider", {
	TOOLTIP=L.CONTAINS_SLIDER_TOOLTIP,
	SETTING="ContainsCount",
	FORMAT="%.0f",
	MIN=1, MAX=40, STEP=1,
	OnRefresh=function(self)
		if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SummarizeThings") then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
})
sliderSummarizeThings:SetWidth(200)
sliderSummarizeThings:SetHeight(20)
sliderSummarizeThings:SetPoint("TOP", checkboxSummarizeThings.Text, "BOTTOM", 0, -4)
sliderSummarizeThings:SetPoint("LEFT", checkboxSummarizeThings, "LEFT", 10, 0)

local sliderMaxTooltipTopLineLength = child:CreateSlider("ATTSliderMaxTooltipFirstLineLength", {
	TEXT=L.MAX_TOOLTIP_TOP_LINE_LENGTH_LABEL,
	-- TOOLTIP=, -- No tooltip?
	SETTING="MaxTooltipTopLineLength",
	FORMAT="%.0f",
	MIN=80, MAX=1000, STEP=20,
	OnRefresh=function(self)
		if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SummarizeThings") then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
})
sliderMaxTooltipTopLineLength:SetWidth(200)
sliderMaxTooltipTopLineLength:SetHeight(20)
sliderMaxTooltipTopLineLength:SetPoint("TOPLEFT", sliderSummarizeThings, "BOTTOMLEFT", 0, -25)

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

local checkboxOnlyRelevant, checkboxOnlyObtainable;
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

checkboxOnlyObtainable = child:CreateCheckBox(L.ONLY_OBTAINABLE_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("OnlyShowObtainableSharedAppearances"))
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SharedAppearances") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("OnlyShowObtainableSharedAppearances", self:GetChecked())
end)
checkboxOnlyObtainable:SetATTTooltip(L.ONLY_OBTAINABLE_CHECKBOX_TOOLTIP)
checkboxOnlyObtainable:AlignBelow(checkboxOriginalSource)
end

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
checkboxOnlyRelevant:AlignBelow(checkboxOnlyObtainable)

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

local sliderSourceLocations = child:CreateSlider("ATTsliderSourceLocations", {
	TOOLTIP=L.LOCATIONS_SLIDER_TOOLTIP,
	SETTING="Locations",
	FORMAT="%.0f",
	MIN=1, MAX=40, STEP=1,
	OnRefresh=function(self)
		if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SourceLocations") then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
})
sliderSourceLocations:SetWidth(140)
sliderSourceLocations:SetHeight(20)
sliderSourceLocations:SetPoint("TOP", checkboxSourceLocations.Text, "BOTTOM", 0, -4)
sliderSourceLocations:SetPoint("LEFT", checkboxSourceLocations, "LEFT", 10, 0)

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
checkboxCurrencyCalculation:AlignBelow(checkboxSpecializations)

if app.IsClassic then
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
checkboxShowCraftedItems:AlignBelow(checkboxSpecializations)

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

local sliderMainListScale = child:CreateSlider("ATTsliderMainListScale", {
	TEXT=L.MAIN_LIST_SLIDER_LABEL,
	TOOLTIP=L.MAIN_LIST_SCALE_TOOLTIP,
	SETTING="MainListScale",
	FORMAT="%.2f",
	MIN=0.1, MAX=4, STEP=0.1,
})
sliderMainListScale:SetWidth(200)
sliderMainListScale:SetHeight(20)
sliderMainListScale:SetPoint("TOPLEFT", headerListBehavior, "BOTTOMLEFT", 4, -15)

local sliderMiniListScale = child:CreateSlider("ATTsliderMiniListScale", {
	TEXT=L.MINI_LIST_SLIDER_LABEL,
	TOOLTIP=L.MINI_LIST_SCALE_TOOLTIP,
	SETTING="MiniListScale",
	FORMAT="%.2f",
	MIN=0.1, MAX=4, STEP=0.1,
})
sliderMiniListScale:SetWidth(200)
sliderMiniListScale:SetHeight(20)
sliderMiniListScale:SetPoint("TOPLEFT", sliderMainListScale, "BOTTOMLEFT", 0, -25)

local sliderInactiveWindowAlpha = child:CreateSlider("ATTsliderInactiveWindowAlpha", {
	TEXT=L.INACTIVE_WINDOW_ALPHA_LABEL,
	TOOLTIP=L.INACTIVE_WINDOW_ALPHA_TOOLTIP,
	SETTING="InactiveWindowAlpha",
	FORMAT="%.2f",
	MIN=0.1, MAX=1, STEP=0.05,
})
sliderInactiveWindowAlpha:SetWidth(200)
sliderInactiveWindowAlpha:SetHeight(20)
sliderInactiveWindowAlpha:SetPoint("TOPLEFT", sliderMiniListScale, "BOTTOMLEFT", 0, -25)

local checkboxAdjustRowIndents = child:CreateCheckBox(L.ADJUST_ROW_INDENTS_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Adjust:RowIndents"))
end,
function(self)
	settings:SetTooltipSetting("Adjust:RowIndents", self:GetChecked())
end)
checkboxAdjustRowIndents:SetATTTooltip(L.ADJUST_ROW_INDENTS_TOOLTIP)
checkboxAdjustRowIndents:SetPoint("LEFT", headerListBehavior, 0, 0)
checkboxAdjustRowIndents:SetPoint("TOP", sliderInactiveWindowAlpha, "BOTTOM", 0, -10)

local checkboxExpandMiniList = child:CreateCheckBox(L.EXPAND_MINILIST_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Expand:MiniList"))
end,
function(self)
	settings:SetTooltipSetting("Expand:MiniList", self:GetChecked())
end)
checkboxExpandMiniList:SetATTTooltip(L.EXPAND_MINILIST_CHECKBOX_TOOLTIP)
checkboxExpandMiniList:AlignBelow(checkboxAdjustRowIndents)

local checkboxExpandDifficulty = child:CreateCheckBox(L.EXPAND_DIFFICULTY_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Expand:Difficulty"))
	if app.IsClassic then
		if not settings:GetTooltipSetting("Expand:MiniList") then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end
end,
function(self)
	settings:SetTooltipSetting("Expand:Difficulty", self:GetChecked())
end)
checkboxExpandDifficulty:SetATTTooltip(L.EXPAND_DIFFICULTY_CHECKBOX_TOOLTIP)
checkboxExpandDifficulty:AlignBelow(checkboxExpandMiniList, app.IsClassic and 1 or nil)

local checkboxIconPortrait = child:CreateCheckBox(L.SHOW_ICON_PORTRAIT_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("IconPortraits"))
end,
function(self)
	settings:SetTooltipSetting("IconPortraits", self:GetChecked());
	app.CallbackEvent("OnRedrawWindows")
end)
checkboxIconPortrait:SetATTTooltip(L.SHOW_ICON_PORTRAIT_CHECKBOX_TOOLTIP)
checkboxIconPortrait:AlignBelow(checkboxExpandDifficulty, app.IsClassic and -1 or nil)

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
	app.CallbackEvent("OnRedrawWindows")
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

local checkboxFillDynamicQuests = child:CreateCheckBox(L.FILL_DYNAMIC_QUESTS_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("WorldQuestsList:Currencies"))
end,
function(self)
	settings:SetTooltipSetting("WorldQuestsList:Currencies", self:GetChecked())
end)
checkboxFillDynamicQuests:SetATTTooltip(L.FILL_DYNAMIC_QUESTS_CHECKBOX_TOOLTIP)
checkboxFillDynamicQuests:AlignBelow(checkboxModelPreview)

local checkboxNestedQuestChains = child:CreateCheckBox(L.NESTED_QUEST_CHAIN_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("QuestChain:Nested"))
end,
function(self)
	settings:SetTooltipSetting("QuestChain:Nested", self:GetChecked())
end)
checkboxNestedQuestChains:SetATTTooltip(L.NESTED_QUEST_CHAIN_CHECKBOX_TOOLTIP)
checkboxNestedQuestChains:AlignBelow(checkboxFillDynamicQuests)

local checkboxSortByProgress = child:CreateCheckBox(L.SORT_BY_PROGRESS_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Sort:Progress"))
end,
function(self)
	settings:SetTooltipSetting("Sort:Progress", self:GetChecked())
end)
checkboxSortByProgress:SetATTTooltip(L.SORT_BY_PROGRESS_CHECKBOX_TOOLTIP)
checkboxSortByProgress:AlignBelow(checkboxNestedQuestChains)

local checkboxShowRemainingCount = child:CreateCheckBox(L.SHOW_REMAINING_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:Remaining"))
end,
function(self)
	settings:SetTooltipSetting("Show:Remaining", self:GetChecked())
end)
checkboxShowRemainingCount:SetATTTooltip(L.SHOW_REMAINING_CHECKBOX_TOOLTIP)
checkboxShowRemainingCount:AlignBelow(checkboxSortByProgress)

local checkboxShowPercentageCount = child:CreateCheckBox(L.PERCENTAGES_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:Percentage"))
end,
function(self)
	settings:SetTooltipSetting("Show:Percentage", self:GetChecked())
end)
checkboxShowPercentageCount:SetATTTooltip(L.PERCENTAGES_CHECKBOX_TOOLTIP)
checkboxShowPercentageCount:AlignBelow(checkboxShowRemainingCount)

local sliderPercentagePrecision = child:CreateSlider("ATTsliderPercentagePrecision", {
	TEXT=L.PRECISION_SLIDER,
	TOOLTIP=L.PRECISION_SLIDER_TOOLTIP,
	MIN=0, MAX=8, STEP=1,
	SETTING="Precision",
	FORMAT="%.0f",
	OnRefresh=function(self)
		if not settings:GetTooltipSetting("Show:Percentage") then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
})
sliderPercentagePrecision:SetWidth(200)
sliderPercentagePrecision:SetHeight(20)
sliderPercentagePrecision:SetPoint("LEFT", sliderMainListScale, 0, 0)
sliderPercentagePrecision:SetPoint("TOP", checkboxShowPercentageCount, "BOTTOM", 0, -24)

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
