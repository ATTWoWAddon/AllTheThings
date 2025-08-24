local _, app = ...;
local L, settings = app.L, app.Settings;

-- Settings: General Page
local child = settings:CreateOptionsPage(L.FILTERS_PAGE, L.GENERAL_PAGE)

-- Top 1
local headerWeaponsAndArmor = child:CreateHeaderLabel(L.ITEM_FILTER_LABEL)
if child.separator then
	headerWeaponsAndArmor:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerWeaponsAndArmor:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end
headerWeaponsAndArmor.OnRefresh = function(self)
	if app.MODE_DEBUG then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

local textWeaponsAndArmorExplain = child:CreateTextLabel(L.ITEM_EXPLAIN_LABEL)
textWeaponsAndArmorExplain:SetPoint("TOPLEFT", headerWeaponsAndArmor, "BOTTOMLEFT", 0, -4)
textWeaponsAndArmorExplain.OnRefresh = function(self)
	if app.MODE_DEBUG then
		self:SetAlpha(0.4)
	else
		self:SetAlpha(1)
	end
end

-- Stuff to automatically generate the armor & weapon checkboxes
local last = headerWeaponsAndArmor
local itemFilterNames = L.FILTER_ID_TYPES
local ItemFilterOnClick = function(self)
	settings:SetFilter(self.filterID, self:GetChecked())
end
local ItemFilterOnRefresh = function(self)
	if settings:GetDefaultFilter(self.filterID) then
		self.Text:SetTextColor(0.6, 0.7, 1);
	else
		self.Text:SetTextColor(1, 1, 1);
	end
	if app.MODE_DEBUG_OR_ACCOUNT then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:SetChecked(settings:GetFilter(self.filterID))
		self:Enable()
		self:SetAlpha(1)
	end
end

for i,filterID in ipairs({
	21, 22, 23, 24, 25, 26,	-- 1H Axes, 2H Axes, 1H Maces, 2H Maces, 1H Swords, 2H Swords
	20, 34, 29, 28, 35		-- Daggers, Fist Weapons, Polearms, Staves, Warglaives
}) do
	local filter = child:CreateCheckBox(itemFilterNames[filterID], ItemFilterOnRefresh, ItemFilterOnClick)
	-- Start
	if filterID == 21 then
		filter:SetPoint("TOPLEFT", textWeaponsAndArmorExplain, "BOTTOMLEFT", -2, -6)
	-- Spacing
	elseif filterID == 20 then
		filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, -2)
	else
		filter:AlignBelow(last)
	end
	filter.filterID = filterID
	filter:SetATTTooltip(L.FILTER_ID ..": "..filterID)
	last = filter
end

local allEquipmentFilters = {	-- Filter IDs
	11,	-- Artifacts
	54,	-- Artifact Relics
	2,	-- Cosmetic
	3,	-- Cloaks
	10,	-- Shirts
	9,	-- Tabards
	33,	-- Crossbows
	32,	-- Bows
	31,	-- Guns
	36,	-- Thrown
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
	51,	-- Neck
	52,	-- Finger
	53,	-- Trinket
	55,	-- Consumable
	104,	-- Quest Items
	113,	-- Bags
}

-- Bows, Crossbows, Guns, Thrown, Wands, Shields, Off-hands
for i,filterID in ipairs({ 32, 33, 31, 36, 27, 8, 1 }) do
	local filter = child:CreateCheckBox(itemFilterNames[filterID], ItemFilterOnRefresh, ItemFilterOnClick)
	-- Start
	if filterID == 32 then
		filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, -10)
	-- Spacing
	elseif filterID == 8 then
		filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, -4)
	else
		filter:AlignBelow(last)
	end
	filter.filterID = filterID
	filter:SetATTTooltip(L.FILTER_ID..": "..filterID)
	last = filter
end

-- Artifacts, Relics, Profession Tools
for i,filterID in ipairs({
	4, 5, 6, 7,		-- Cloth, Leather, Mail, Plate
	2, 3, 10, 9,	-- Cosmetic, Cloak, Shirt, Tabard
	11, 54, 57,		-- Artifacts, Relics, Profession Tools
	50, 51, 52, 53, 113, 55, 104
}) do
	local filter = child:CreateCheckBox(itemFilterNames[filterID], ItemFilterOnRefresh, ItemFilterOnClick)
	-- Start
	if filterID == 4 then
		filter:SetPoint("TOPLEFT", textWeaponsAndArmorExplain, "BOTTOMLEFT", 320, -6)
	-- Spacing
	elseif filterID == 2 or filterID == 11 or filterID == 51 then
		filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, -4)
	else
		filter:AlignBelow(last)
	end
	filter.filterID = filterID
	filter:SetATTTooltip(L.FILTER_ID..": "..filterID)
	last = filter
end

-- The 3 buttons
local buttonClassDefaults = child:CreateButton(
{ text = L.CLASS_DEFAULTS_BUTTON, tooltip = L.CLASS_DEFAULTS_BUTTON_TOOLTIP, },
{
	OnClick = function(self)
		settings:ResetFilters()
	end,
})
buttonClassDefaults:SetPoint("LEFT", headerWeaponsAndArmor, 0, 0)
buttonClassDefaults:SetPoint("BOTTOM", child, "BOTTOM", 0, 10)
buttonClassDefaults.OnRefresh = function(self)
	if app.MODE_DEBUG_OR_ACCOUNT then
		self:Disable()
	else
		self:Enable()
	end
end

local buttonAll = child:CreateButton(
{ text = L.ALL_BUTTON, tooltip = L.ALL_BUTTON_TOOLTIP, },
{
	OnClick = function(self)
		for k,v in pairs(allEquipmentFilters) do
			settings:SetFilter(v, true)
		end
		settings:UpdateMode(1)
	end,
})
buttonAll:AlignAfter(buttonClassDefaults, 8)
buttonAll.OnRefresh = function(self)
	if app.MODE_DEBUG_OR_ACCOUNT then
		self:Disable()
	else
		self:Enable()
	end
end

local buttonNone = child:CreateButton(
{ text = L.UNCHECK_ALL_BUTTON, tooltip = L.UNCHECK_ALL_BUTTON_TOOLTIP, },
{
	OnClick = function(self)
		for k,v in pairs(allEquipmentFilters) do
			settings:SetFilter(v, false)
		end
		settings:UpdateMode(1)
	end,
})
buttonNone:AlignAfter(buttonAll, 8)
buttonNone.OnRefresh = function(self)
	if app.MODE_DEBUG_OR_ACCOUNT then
		self:Disable()
	else
		self:Enable()
	end
end

if app.IsRetail then
	local checkboxStoreInProfile = child:CreateCheckBox(L.STORE_IN_PROFILE_BUTTON,
	function(self)
		self:SetChecked(settings:Get("Profile:StoreFilters"))
	end,
	function(self)
		settings:Set("Profile:StoreFilters", self:GetChecked())
		app.HandleEvent("OnSettingChanged", "Profile:StoreFilters");
		settings:UpdateMode(1)
	end)
	checkboxStoreInProfile:SetATTTooltip(L.STORE_IN_PROFILE_BUTTON_TOOLTIP)
	checkboxStoreInProfile:AlignAfter(buttonNone, 8)
end