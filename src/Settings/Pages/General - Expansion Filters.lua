local _, app = ...;
local L, settings = app.L, app.Settings;

-- Only load for Retail
if not (app.IsRetail and app.GameBuildVersion > 70000) then return end

-- Global locals
local ipairs = ipairs;

-- Get Current Expansion Number by in-game API.
-- This returns 0 on initial load of the game client prior to the player entering the world
-- local CURRENT_EXPANSION = GetServerExpansionLevel() + 1
-- Would need to delay loading this settings panel content until it returned a valid value
local CURRENT_EXPANSION = 12

-- Settings: Expansion Filters Page
local child = settings:CreateOptionsPage(L.EXPANSION_FILTERS_PAGE, L.GENERAL_PAGE)

local ExpansionSettings = {
	"ExpansionFilter:Classic",
	"ExpansionFilter:TBC",
	"ExpansionFilter:Wrath",
	"ExpansionFilter:Cata",
	"ExpansionFilter:MoP",
	"ExpansionFilter:WoD",
	"ExpansionFilter:Legion",
	"ExpansionFilter:BfA",
	"ExpansionFilter:SL",
	"ExpansionFilter:DF",
	"ExpansionFilter:TWW",
	"ExpansionFilter:MID",
	"ExpansionFilter:TLT",
}
local function IsUsable() return not app.MODE_DEBUG; end

local items = {};
for i=1,CURRENT_EXPANSION do
	local key, expansion = ExpansionSettings[i], app.CreateExpansion(i);
	items[i] = {
		text = "|T" .. expansion.icon .. ":0|t |c" .. app.DefaultColors.Insane .. expansion.name .. "|r",
		tooltip = L.EXPANSION_FILTER_TOOLTIP:format(expansion.name),
		get = function() return settings:Get(key); end,
		set = function(checked)
			settings:Set(key, checked);
			settings:UpdateMode(1);
		end,
		isChanged = function() return settings.IsSettingChanged(key); end,
	};
end
settings.CreateCheckList(child, {
	top = 34,
	columns = 2,
	usable = IsUsable,
	text = L.EXPANSION_EXPLAIN_LABEL.."\n\n"..L.EXPANSION_FILTER_ENABLE_TOOLTIP,
	groups = { { title = L.EXPANSION_FILTER_LABEL, items = items } },
});

-- Control buttons
local last;
local function CreateExpansionButton(text, tooltip, IsEnabled)
	local button = child:CreateButton({ text = text, tooltip = tooltip }, {
		OnClick = function()
			for i,key in ipairs(ExpansionSettings) do
				settings:Set(key, IsEnabled(i))
			end
			settings:UpdateMode(1)
		end,
	})
	button.OnRefresh = function(self) self:SetEnabled(IsUsable()) end
	if last then
		button:SetPoint("LEFT", last, "RIGHT", 8, 0)
	else
		button:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 4, -8)
	end
	last = button
end
CreateExpansionButton(L.EXPANSION_ENABLE_ALL, L.EXPANSION_ENABLE_ALL_TOOLTIP, function() return true end)
CreateExpansionButton(L.EXPANSION_DISABLE_ALL, L.EXPANSION_DISABLE_ALL_TOOLTIP, function() return false end)
CreateExpansionButton(L.EXPANSION_CURRENT_ONLY, L.EXPANSION_CURRENT_ONLY_TOOLTIP, function(i) return i == CURRENT_EXPANSION end)
