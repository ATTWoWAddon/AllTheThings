local _, app = ...;
local L, settings = app.L, app.Settings;

-- Only load for Retail
if not app.IsRetail then return end

-- Settings: Expansion Filters Page
local child = settings:CreateOptionsPage(L.EXPANSION_FILTERS_PAGE, L.GENERAL_PAGE)

-- Header
local headerExpansions = child:CreateHeaderLabel(L.EXPANSION_FILTER_LABEL)
if child.separator then
	headerExpansions:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerExpansions:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end

local textExpansionsExplain = child:CreateTextLabel(L.EXPANSION_EXPLAIN_LABEL)
textExpansionsExplain:SetPoint("TOPLEFT", headerExpansions, "BOTTOMLEFT", 0, -4)

-- Enable/Disable Feature Toggle
local checkboxEnableFeature = child:CreateCheckBox(
	L.EXPANSION_FILTER_ENABLE,
	function(self)
		-- OnRefresh
		local enabled = settings:Get("ExpansionFilter:Enabled")
		self:SetChecked(enabled)
		if app.MODE_DEBUG_OR_ACCOUNT then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
		-- Update state of other controls based on enabled state
		for _, checkbox in pairs(self.expansionCheckboxes or {}) do
			if app.MODE_DEBUG_OR_ACCOUNT or not enabled then
				checkbox:Disable()
				checkbox:SetAlpha(0.4)
			else
				checkbox:Enable()
				checkbox:SetAlpha(1)
			end
		end
		for _, button in pairs(self.controlButtons or {}) do
			if app.MODE_DEBUG_OR_ACCOUNT or not enabled then
				button:Disable()
			else
				button:Enable()
			end
		end
	end,
	function(self)
		-- OnClick
		local enabled = self:GetChecked()
		settings:Set("ExpansionFilter:Enabled", enabled)
		-- Refresh all expansion checkboxes and buttons
		for _, checkbox in pairs(self.expansionCheckboxes or {}) do
			if checkbox.OnRefresh then checkbox:OnRefresh() end
		end
		for _, button in pairs(self.controlButtons or {}) do
			if button.OnRefresh then button:OnRefresh() end
		end
		settings:UpdateMode(1)
	end
)
checkboxEnableFeature:SetATTTooltip(L.EXPANSION_FILTER_ENABLE_TOOLTIP)
checkboxEnableFeature:SetPoint("TOPLEFT", textExpansionsExplain, "BOTTOMLEFT", -2, -10)
checkboxEnableFeature.expansionCheckboxes = {}
checkboxEnableFeature.controlButtons = {}

-- Mark as Work In Progress
checkboxEnableFeature:MarkAsWIP()

-- Expansion data structure
local expansions = {
	{ id = 1, name = _G.EXPANSION_NAME0, key = "ExpansionFilter:Classic" },
	{ id = 2, name = _G.EXPANSION_NAME1, key = "ExpansionFilter:TBC" },
	{ id = 3, name = _G.EXPANSION_NAME2, key = "ExpansionFilter:Wrath" },
	{ id = 4, name = _G.EXPANSION_NAME3, key = "ExpansionFilter:Cata" },
	{ id = 5, name = _G.EXPANSION_NAME4, key = "ExpansionFilter:MoP" },
	{ id = 6, name = _G.EXPANSION_NAME5, key = "ExpansionFilter:WoD" },
	{ id = 7, name = _G.EXPANSION_NAME6, key = "ExpansionFilter:Legion" },
	{ id = 8, name = _G.EXPANSION_NAME7, key = "ExpansionFilter:BfA" },
	{ id = 9, name = _G.EXPANSION_NAME8, key = "ExpansionFilter:SL" },
	{ id = 10, name = _G.EXPANSION_NAME9, key = "ExpansionFilter:DF" },
	{ id = 11, name = _G.EXPANSION_NAME10, key = "ExpansionFilter:TWW" },
}

-- Create checkboxes for each expansion
local lastCheckbox = checkboxEnableFeature
for i, expansion in ipairs(expansions) do
	local checkbox = child:CreateCheckBox(
		expansion.name,
		function(self)
			-- OnRefresh
			self:SetChecked(settings:Get(self.expansionKey))
			local enabled = settings:Get("ExpansionFilter:Enabled")
			if app.MODE_DEBUG_OR_ACCOUNT or not enabled then
				self:Disable()
				self:SetAlpha(0.4)
			else
				self:Enable()
				self:SetAlpha(1)
			end
		end,
		function(self)
			-- OnClick
			settings:Set(self.expansionKey, self:GetChecked())
			settings:UpdateMode(1)
		end
	)
	checkbox.expansionKey = expansion.key
	checkbox.expansionID = expansion.id

	if i == 1 then
		checkbox:SetPoint("TOPLEFT", lastCheckbox, "BOTTOMLEFT", 18, -10)  -- Indented 20px to the right
	else
		checkbox:SetPoint("TOPLEFT", lastCheckbox, "BOTTOMLEFT", 0, -4)
	end

	-- Set tooltip
	checkbox:SetATTTooltip(string.format(L.EXPANSION_FILTER_TOOLTIP, expansion.name))

	lastCheckbox = checkbox
	-- Store reference in the enable feature checkbox
	table.insert(checkboxEnableFeature.expansionCheckboxes, checkbox)
end

-- Control buttons
local buttonEnableAll = child:CreateButton(
	{ text = L.EXPANSION_ENABLE_ALL, tooltip = L.EXPANSION_ENABLE_ALL_TOOLTIP },
	{
		OnClick = function(self)
			for _, expansion in ipairs(expansions) do
				settings:Set(expansion.key, true)
			end
			settings:UpdateMode(1)
		end,
	}
)
buttonEnableAll:SetPoint("LEFT", headerExpansions, 0, 0)
buttonEnableAll:SetPoint("BOTTOM", child, "BOTTOM", 0, 10)
buttonEnableAll.OnRefresh = function(self)
	local enabled = settings:Get("ExpansionFilter:Enabled")
	if app.MODE_DEBUG_OR_ACCOUNT or not enabled then
		self:Disable()
	else
		self:Enable()
	end
end
table.insert(checkboxEnableFeature.controlButtons, buttonEnableAll)

local buttonDisableAll = child:CreateButton(
	{ text = L.EXPANSION_DISABLE_ALL, tooltip = L.EXPANSION_DISABLE_ALL_TOOLTIP },
	{
		OnClick = function(self)
			for _, expansion in ipairs(expansions) do
				settings:Set(expansion.key, false)
			end
			settings:UpdateMode(1)
		end,
	}
)
buttonDisableAll:AlignAfter(buttonEnableAll, 8)
buttonDisableAll.OnRefresh = function(self)
	local enabled = settings:Get("ExpansionFilter:Enabled")
	if app.MODE_DEBUG_OR_ACCOUNT or not enabled then
		self:Disable()
	else
		self:Enable()
	end
end
table.insert(checkboxEnableFeature.controlButtons, buttonDisableAll)

local buttonCurrentOnly = child:CreateButton(
	{ text = L.EXPANSION_CURRENT_ONLY, tooltip = L.EXPANSION_CURRENT_ONLY_TOOLTIP },
	{
		OnClick = function(self)
			local currentExpansion = app.CURRENT_EXPANSION or 11
			for _, expansion in ipairs(expansions) do
				settings:Set(expansion.key, expansion.id == currentExpansion)
			end
			settings:UpdateMode(1)
		end,
	}
)
buttonCurrentOnly:AlignAfter(buttonDisableAll, 8)
buttonCurrentOnly.OnRefresh = function(self)
	local enabled = settings:Get("ExpansionFilter:Enabled")
	if app.MODE_DEBUG_OR_ACCOUNT or not enabled then
		self:Disable()
	else
		self:Enable()
	end
end
table.insert(checkboxEnableFeature.controlButtons, buttonCurrentOnly)

-- Store in profile checkbox
if app.IsRetail then
	local checkboxStoreInProfile = child:CreateCheckBox(L.STORE_IN_PROFILE_BUTTON,
	function(self)
		self:SetChecked(settings:Get("Profile:StoreExpansionFilters"))
	end,
	function(self)
		settings:Set("Profile:StoreExpansionFilters", self:GetChecked())
		app.HandleEvent("OnSettingChanged", "Profile:StoreExpansionFilters");
	end)
	checkboxStoreInProfile:SetATTTooltip(L.STORE_EXPANSION_FILTERS_TOOLTIP)
	checkboxStoreInProfile:AlignAfter(buttonCurrentOnly, 8)
end
