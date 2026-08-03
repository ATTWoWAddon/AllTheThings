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
	if app.MODE_DEBUG then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:SetChecked(settings:GetFilter(self.filterID))
		self:Enable()
		self:SetAlpha(1)
	end
end

local allEquipmentFilters = {	-- Filter IDs
	21,  -- 1H Axes
	22,  -- 2H Axes
	23,  -- 1H Maces
	24,  -- 2H Maces
	25,  -- 1H Swords
	26,  -- 2H Swords

	20,  -- Daggers
	34,  -- Fist Weapons
	29,  -- Polearms
	28,  -- Staves
	35,  -- Warglaives

	32,  -- Bows
	33,  -- Crossbows
	31,  -- Guns
	27,  -- Wands
	36,  -- Thrown

	8,   -- Shields
	1,   -- Held in Off-Hand

	4,   -- Cloth
	5,   -- Leather
	6,   -- Mail
	7,   -- Plate

	40,  -- Head
	41,  -- Shoulder
	42,  -- Chest
	44,  -- Hands
	46,  -- Legs

	3,   -- Back
	43,  -- Wrist
	45,  -- Waist
	47,  -- Feet

	10,  -- Shirt
	9,   -- Tabard
	2,   -- Cosmetic
	57,  -- Profession Equipment
}

local unusedFilters = {
	11,  -- Artifacts
	50,  -- Miscellaneous
	51,  -- Neck
	52,  -- Finger
	53,  -- Trinket
	54,  -- Artifact Relics
	55,  -- Consumable
	113, -- Bags
	104, -- Quest Items
}
-- for k, v in pairs(unusedFilters) do
-- 	settings:SetFilter(v, true)
-- end

for i,filterID in ipairs({
	21, 22, 23, 24, 25, 26, -- 1H Axes, 2H Axes, 1H Maces, 2H Maces, 1H Swords, 2H Swords
	20, 34, 29, 28, 35,     -- Daggers, Fist Weapons, Polearms, Staves, Warglaives
	32, 33, 31, 36, 27,     -- Bows, Crossbows, Guns, Wands, Thrown,
	8, 1                    -- Shields, Off-hands
}) do
	local filter = child:CreateCheckBox(" " .. itemFilterNames[filterID], ItemFilterOnRefresh, ItemFilterOnClick)
	-- Start
	if filterID == 21 then
		filter:SetPoint("TOPLEFT", headerWeaponsAndArmor, "BOTTOMLEFT", -2, -6)
	-- Spacing
	elseif filterID == 20 or filterID == 32 or filterID == 8 then
		filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, -4)
	else
		filter:AlignBelow(last)
	end
	filter.filterID = filterID
	filter:SetATTTooltip(L.FILTER_ID..": "..filterID)
	last = filter
end

for i, filterID in ipairs({
	4, 5, 6, 7,		    -- Cloth, Leather, Mail, Plate
	40, 41, 42, 44, 46, -- Head, Shoulder, Chest, Hands, Legs
	3, 43, 45, 47,      -- Back, Wrist, Waist, Feet
	10, 9, 2,           -- Shirt, Tabard, Cosmetic
	57,                 -- Profession Equipment
}) do
	local filter = child:CreateCheckBox(" " .. (itemFilterNames[filterID]), ItemFilterOnRefresh, ItemFilterOnClick)
	-- Start
	if filterID == 4 then
		filter:SetPoint("TOPLEFT", headerWeaponsAndArmor, "BOTTOMLEFT", 320, -6)
	-- Spacing
	elseif filterID == 40 or filterID == 3 or filterID == 10 or filterID == 57 then
		filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, -4)
	else
		filter:AlignBelow(last)
	end
	filter.filterID = filterID
	filter:SetATTTooltip(L.FILTER_ID..": "..filterID)
	last = filter
end

-- The three buttons
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
	if app.MODE_DEBUG then
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
	if app.MODE_DEBUG then
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
	if app.MODE_DEBUG then
		self:Disable()
	else
		self:Enable()
	end
end

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
