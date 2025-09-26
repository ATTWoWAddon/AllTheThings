local _, app = ...;
local L, settings = app.L, app.Settings;

-- Only load for Retail
if not app.IsRetail then return end

-- Settings: Expansion Filters Page
local child = settings:CreateOptionsPage(L.EXPANSION_FILTERS_PAGE or "Expansion Filters", L.GENERAL_PAGE)

-- Header
local headerExpansions = child:CreateHeaderLabel(L.EXPANSION_FILTER_LABEL or "Filter by Expansion")
if child.separator then
	headerExpansions:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerExpansions:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end

local textExpansionsExplain = child:CreateTextLabel(L.EXPANSION_EXPLAIN_LABEL or "Select which expansions' content you want to see in your collection windows.")
textExpansionsExplain:SetPoint("TOPLEFT", headerExpansions, "BOTTOMLEFT", 0, -4)

-- Enable/Disable Feature Toggle
local checkboxEnableFeature = child:CreateCheckBox(
	L.EXPANSION_FILTER_ENABLE or "Enable Expansion Filtering",
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
checkboxEnableFeature:SetATTTooltip(L.EXPANSION_FILTER_ENABLE_TOOLTIP or "Enable or disable the expansion content filtering feature.")
checkboxEnableFeature:SetPoint("TOPLEFT", textExpansionsExplain, "BOTTOMLEFT", -2, -10)
checkboxEnableFeature.expansionCheckboxes = {}
checkboxEnableFeature.controlButtons = {}

-- Mark as Work In Progress
checkboxEnableFeature:MarkAsWIP()

-- Expansion data structure
local expansions = {
	{ id = 1, name = L.EXPANSION_DATA[1].name or "Classic", key = "ExpansionFilter:Classic" },
	{ id = 2, name = L.EXPANSION_DATA[2].name or "The Burning Crusade", key = "ExpansionFilter:TBC" },
	{ id = 3, name = L.EXPANSION_DATA[3].name or "Wrath of the Lich King", key = "ExpansionFilter:Wrath" },
	{ id = 4, name = L.EXPANSION_DATA[4].name or "Cataclysm", key = "ExpansionFilter:Cata" },
	{ id = 5, name = L.EXPANSION_DATA[5].name or "Mists of Pandaria", key = "ExpansionFilter:MoP" },
	{ id = 6, name = L.EXPANSION_DATA[6].name or "Warlords of Draenor", key = "ExpansionFilter:WoD" },
	{ id = 7, name = L.EXPANSION_DATA[7].name or "Legion", key = "ExpansionFilter:Legion" },
	{ id = 8, name = L.EXPANSION_DATA[8].name or "Battle for Azeroth", key = "ExpansionFilter:BfA" },
	{ id = 9, name = L.EXPANSION_DATA[9].name or "Shadowlands", key = "ExpansionFilter:SL" },
	{ id = 10, name = L.EXPANSION_DATA[10].name or "Dragonflight", key = "ExpansionFilter:DF" },
	{ id = 11, name = L.EXPANSION_DATA[11].name or "The War Within", key = "ExpansionFilter:TWW" },
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
	checkbox:SetATTTooltip(string.format(L.EXPANSION_FILTER_TOOLTIP or "Toggle visibility of %s content", expansion.name))

	lastCheckbox = checkbox
	-- Store reference in the enable feature checkbox
	table.insert(checkboxEnableFeature.expansionCheckboxes, checkbox)
end

-- Control buttons
local buttonEnableAll = child:CreateButton(
	{ text = L.EXPANSION_ENABLE_ALL or "Enable All", tooltip = L.EXPANSION_ENABLE_ALL_TOOLTIP or "Show content from all expansions" },
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
	{ text = L.EXPANSION_DISABLE_ALL or "Disable All", tooltip = L.EXPANSION_DISABLE_ALL_TOOLTIP or "Hide content from all expansions" },
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
	{ text = L.EXPANSION_CURRENT_ONLY or "Current Only", tooltip = L.EXPANSION_CURRENT_ONLY_TOOLTIP or "Show only current expansion content" },
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
	local checkboxStoreInProfile = child:CreateCheckBox(L.STORE_IN_PROFILE_BUTTON or "Store in Profile",
	function(self)
		self:SetChecked(settings:Get("Profile:StoreExpansionFilters"))
	end,
	function(self)
		settings:Set("Profile:StoreExpansionFilters", self:GetChecked())
		app.HandleEvent("OnSettingChanged", "Profile:StoreExpansionFilters");
	end)
	checkboxStoreInProfile:SetATTTooltip(L.STORE_EXPANSION_FILTERS_TOOLTIP or "Store these expansion filter settings in the current profile.")
	checkboxStoreInProfile:AlignAfter(buttonCurrentOnly, 8)
end