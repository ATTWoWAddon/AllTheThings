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

app.EquipmentFilters = {
	[21] = true,  -- 1H Axes
	[22] = true,  -- 2H Axes
	[23] = true,  -- 1H Maces
	[24] = true,  -- 2H Maces
	[25] = true,  -- 1H Swords
	[26] = true,  -- 2H Swords

	[20] = true,  -- Daggers
	[34] = true,  -- Fist Weapons
	[29] = true,  -- Polearms
	[28] = true,  -- Staves
	[35] = true,  -- Warglaives

	[32] = true,  -- Bows
	[33] = true,  -- Crossbows
	[31] = true,  -- Guns
	[27] = true,  -- Wands

	[8] = true,   -- Shields
	[1] = true,   -- Held in Off-Hand

	[11] = true,  -- Artifacts

	[4] = true,   -- Cloth
	[5] = true,   -- Leather
	[6] = true,   -- Mail
	[7] = true,   -- Plate

	[40] = true,  -- Head
	[41] = true,  -- Shoulder
	[42] = true,  -- Chest
	[44] = true,  -- Hands
	[46] = true,  -- Legs

	[3] = true,   -- Back
	[43] = true,  -- Wrist
	[45] = true,  -- Waist
	[47] = true,  -- Feet

	[10] = true,  -- Shirt
	[9] = true,   -- Tabard
	[2] = true,   -- Cosmetic

	[51] = true,  -- Neck
	[52] = true,  -- Finger
	[53] = true,  -- Trinket

	[57] = true,  -- Profession Equipment
}

for i, filterID in ipairs({
	21, 22, 23, 24, 25, 26, -- 1H Axes, 2H Axes, 1H Maces, 2H Maces, 1H Swords, 2H Swords
	20, 34, 29, 28, 35,     -- Daggers, Fist Weapons, Polearms, Staves, Warglaives
	32, 33, 31, 27,         -- Bows, Crossbows, Guns, Wands
	8, 1,                   -- Shields, Off-hands
	11,                     -- Artifacts (TODO: move to separate Thing instead of Filter Type)
	57                      -- Profession Equipment
}) do
	local filter = child:CreateCheckBox(itemFilterNames[filterID], ItemFilterOnRefresh, ItemFilterOnClick)
	-- Start
	if filterID == 21 then
		filter:SetPoint("TOPLEFT", headerWeaponsAndArmor, "BOTTOMLEFT", -2, -6)
	-- Spacing
	elseif filterID == 20 or filterID == 32 or filterID == 8 or filterID == 11 or filterID == 57 then
		filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, -4)
	else
		filter:AlignBelow(last)
	end
	filter.filterID = filterID
	filter:SetATTTooltip(L.FILTER_ID..": "..filterID)
	last = filter
end

for i, filterID in ipairs({
	4, 5, 6, 7,		     -- Cloth, Leather, Mail, Plate
	40, 41, 42, 44, 46, -- Head, Shoulder, Chest, Hands, Legs
	3, 43, 45, 47,      -- Back, Wrist, Waist, Feet
	10, 9, 2,           -- Shirt, Tabard, Cosmetic
	51, 52, 53,         -- Neck, Finger, Trinket
}) do
	local filter = child:CreateCheckBox(itemFilterNames[filterID], ItemFilterOnRefresh, ItemFilterOnClick)
	-- Start
	if filterID == 4 then
		filter:SetPoint("TOPLEFT", headerWeaponsAndArmor, "BOTTOMLEFT", 350, -6)
	-- Spacing
	elseif filterID == 40 or filterID == 3 or filterID == 10 or filterID == 51 then
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
		for filterID = 1, 113 do	-- 113 = Bags, highest filterID in our Settings
			settings:SetFilter(filterID, true)
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
		for filterID in pairs(app.EquipmentFilters) do
			settings:SetFilter(filterID, false)
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
