local _, app = ...;
local L, settings = app.L, app.Settings;

-- Only load for Retail
if not app.IsRetail then return end

-- Ideally we would use app.CURRENT_EXPANSION from Expansion.lua but it returns 0 on initial load of the game client
-- prior to the player entering the world, so we hardcode it here for now.
-- Would need to delay loading this settings panel content until it returned a valid value
local CURRENT_EXPANSION = 12

-- Settings: Expansion Filters Page
local child = settings:CreateOptionsPage(L.EXPANSION_FILTERS_PAGE, L.GENERAL_PAGE)

-- Header
local headerExpansions = child:CreateHeaderLabel(L.EXPANSION_FILTER_LABEL)
if child.separator then
	headerExpansions:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerExpansions:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end

local textExpansionsExplain = child:CreateTextLabel(L.EXPANSION_EXPLAIN_LABEL.."\n\n"..L.EXPANSION_FILTER_ENABLE_TOOLTIP)
textExpansionsExplain:SetPoint("TOPLEFT", headerExpansions, "BOTTOMLEFT", 0, -4)

-- Expansion data structure
local expansions = {
	{ key = "ExpansionFilter:Classic" },
	{ key = "ExpansionFilter:TBC" },
	{ key = "ExpansionFilter:Wrath" },
	{ key = "ExpansionFilter:Cata" },
	{ key = "ExpansionFilter:MoP" },
	{ key = "ExpansionFilter:WoD" },
	{ key = "ExpansionFilter:Legion" },
	{ key = "ExpansionFilter:BfA" },
	{ key = "ExpansionFilter:SL" },
	{ key = "ExpansionFilter:DF" },
	{ key = "ExpansionFilter:TWW" },
	{ key = "ExpansionFilter:MID" },
	{ key = "ExpansionFilter:TLT" },
}
for i = 1,CURRENT_EXPANSION do
	expansions[i].info = app.CreateExpansion(i)
end

-- Create checkboxes for each expansion
local lastCheckbox = textExpansionsExplain
local expansion, expansionName
for i = 1,CURRENT_EXPANSION do
	expansion = expansions[i]
	expansionName = expansion.info.name
	local checkbox = child:CreateCheckBox(
		"|T" .. expansion.info.icon .. ":0|t |c" .. app.DefaultColors.Insane .. expansionName .. "|r",
		function(self)
			-- OnRefresh
			self:SetChecked(settings:Get(self.expansionKey))
			if app.MODE_DEBUG then
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

	if i == 1 then
		checkbox:SetPoint("TOPLEFT", lastCheckbox, "BOTTOMLEFT", 0, -10)
	else
		checkbox:SetPoint("TOPLEFT", lastCheckbox, "BOTTOMLEFT", 0, -4)
	end

	-- Set tooltip
	checkbox:SetATTTooltip(string.format(L.EXPANSION_FILTER_TOOLTIP, expansionName))

	lastCheckbox = checkbox
end

-- Control buttons
local buttonEnableAll = child:CreateButton(
	{ text = L.EXPANSION_ENABLE_ALL, tooltip = L.EXPANSION_ENABLE_ALL_TOOLTIP },
	{
		OnClick = function(self)
			for i=1,#expansions do
				settings:Set(expansions[i].key, true)
			end
			settings:UpdateMode(1)
		end,
	}
)
buttonEnableAll:SetPoint("LEFT", headerExpansions, 0, 0)
buttonEnableAll:SetPoint("BOTTOM", child, "BOTTOM", 0, 10)
buttonEnableAll.OnRefresh = function(self)
	if app.MODE_DEBUG then
		self:Disable()
	else
		self:Enable()
	end
end

local buttonDisableAll = child:CreateButton(
	{ text = L.EXPANSION_DISABLE_ALL, tooltip = L.EXPANSION_DISABLE_ALL_TOOLTIP },
	{
		OnClick = function(self)
			for i=1,#expansions do
				settings:Set(expansions[i].key, false)
			end
			settings:UpdateMode(1)
		end,
	}
)
buttonDisableAll:AlignAfter(buttonEnableAll, 8)
buttonDisableAll.OnRefresh = function(self)
	if app.MODE_DEBUG then
		self:Disable()
	else
		self:Enable()
	end
end

local buttonCurrentOnly = child:CreateButton(
	{ text = L.EXPANSION_CURRENT_ONLY, tooltip = L.EXPANSION_CURRENT_ONLY_TOOLTIP },
	{
		OnClick = function(self)
			local currentExpansion = CURRENT_EXPANSION
			for i=1,#expansions do
				settings:Set(expansions[i].key, i == currentExpansion)
			end
			settings:UpdateMode(1)
		end,
	}
)
buttonCurrentOnly:AlignAfter(buttonDisableAll, 8)
buttonCurrentOnly.OnRefresh = function(self)
	if app.MODE_DEBUG then
		self:Disable()
	else
		self:Enable()
	end
end
