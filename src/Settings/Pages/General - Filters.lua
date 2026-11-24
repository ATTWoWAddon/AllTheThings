local _, app = ...;
local L, settings = app.L, app.Settings;

-- Global locals
local ipairs, pairs, wipe
	= ipairs, pairs, wipe;

-- Settings: Filters Page
local child = settings:CreateOptionsPage(L.FILTERS_PAGE, L.GENERAL_PAGE)

local AllFilters = {}
local ProfileFilters
for i=1,113 do AllFilters[i] = true end
app.DesignateImmediateEvent("Settings.UpdateFilters")
app.AddEventHandler("Settings.UpdateFilters", function()
	if settings:Get("DebugMode") or (settings:Get("AccountMode") and settings:Get("Profile:DefaultFilters")) then
		settings:ResetFilters(AllFilters)
	elseif settings:Get("Profile:DefaultFilters") then
		settings:ResetFilters()	-- Class defaults
	else
		settings:ResetFilters(ProfileFilters)
	end
end)
app.AddEventHandler("Settings.OnApplyProfile", function()
	ProfileFilters = settings:Get("Profile:Filters") or {}
	settings:Set("Profile:Filters", ProfileFilters)
	app.HandleEvent("Settings.UpdateFilters")
end)

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
if app.GameBuildVersion >= 70000 then
	app.EquipmentFilters[11] = true; -- Artifacts
end

-- Filters are decided by Debug Mode, or by the class while its defaults are used
local function IsUsable()
	return not (app.MODE_DEBUG or settings:Get("Profile:DefaultFilters"));
end
local itemFilterNames = L.FILTER_ID_TYPES
local function CreateItems(filterIDs)
	local items = {};
	for _,filterID in ipairs(filterIDs) do
		local name = itemFilterNames[filterID];
		if name and (filterID ~= 11 or app.GameBuildVersion >= 70000) then
			items[#items + 1] = {
				text = name,
				tooltip = L.FILTER_ID..": "..filterID,
				get = function() return settings:GetFilter(filterID); end,
				set = function(checked)
					settings:SetFilter(filterID, checked);
					ProfileFilters[filterID] = checked;
				end,
				isDefault = function() return settings:GetDefaultFilter(filterID); end,
				isChanged = function()
					return IsUsable() and (settings:GetFilter(filterID) or false) ~= (settings:GetDefaultFilter(filterID) or false);
				end,
			};
		end
	end
	return items;
end

settings.CreateCheckList(child, {
	top = 34,
	columns = 3,
	usable = IsUsable,
	groups = {
		{ title = L.FILTERS_GROUP_WEAPONS, items = CreateItems({
			21, 22, 23, 24, 25, 26,	-- 1H Axes, 2H Axes, 1H Maces, 2H Maces, 1H Swords, 2H Swords
			20, 34, 29, 28, 35,		-- Daggers, Fist Weapons, Polearms, Staves, Warglaives
			32, 33, 31, 27,			-- Bows, Crossbows, Guns, Wands
		}) },
		{ title = L.FILTERS_GROUP_OFFHANDS, items = CreateItems({ 8, 1 }) },	-- Shields, Off-hands
		{ title = L.FILTERS_GROUP_ARMOR_TYPES, items = CreateItems({ 4, 5, 6, 7 }) },	-- Cloth, Leather, Mail, Plate
		{ title = L.FILTERS_GROUP_ARMOR_SLOTS, items = CreateItems({
			40, 41, 42, 44, 46,	-- Head, Shoulder, Chest, Hands, Legs
			3, 43, 45, 47,		-- Back, Wrist, Waist, Feet
		}) },
		{ title = L.FILTERS_GROUP_COSMETICS, items = CreateItems({ 10, 9, 2 }) },	-- Shirt, Tabard, Cosmetic
		{ title = L.FILTERS_GROUP_JEWELRY, items = CreateItems({ 51, 52, 53 }) },	-- Neck, Finger, Trinket
		{ title = OTHER or "Other", items = CreateItems({
			11,	-- Artifacts (TODO: move to separate Thing instead of Filter Type)
			57,	-- Profession Equipment
		}) },
	},
});

-- The class defaults and the three buttons
local checkboxDefaultFilters = child:CreateCheckBox(L.FILTERS_DEFAULT,
function(self)
	if app.MODE_DEBUG then
		self:SetChecked(true)
		self:Disable()
	else
		self:SetChecked(settings:Get("Profile:DefaultFilters"))
		self:Enable()
	end
end,
function(self)
	local checked = self:GetChecked()
	settings:Set("Profile:DefaultFilters", checked)
	app.HandleEvent("OnSettingChanged", "Profile:DefaultFilters", checked)
	app.HandleEvent("Settings.UpdateFilters")
	settings:UpdateMode(1)
end)
settings.StyleCheckBox(checkboxDefaultFilters, 280)
checkboxDefaultFilters:SetATTTooltip(L.FILTERS_DEFAULT_TOOLTIP)
checkboxDefaultFilters:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 4, -8)

local function CreateFilterButton(text, tooltip, OnClick)
	local button = child:CreateButton({ text = text, tooltip = tooltip, }, { OnClick = OnClick })
	button.OnRefresh = function(self)
		self:SetEnabled(IsUsable() and true or false)
	end
	return button
end
local buttonNone = CreateFilterButton(L.UNCHECK_ALL_BUTTON, L.UNCHECK_ALL_BUTTON_TOOLTIP, function()
	for filterID in pairs(app.EquipmentFilters) do
		settings:SetFilter(filterID, false)
		ProfileFilters[filterID] = false
	end
	settings:UpdateMode(1)
end)
buttonNone:SetPoint("TOPRIGHT", child.separator, "BOTTOMRIGHT", -8, -8)
local buttonAll = CreateFilterButton(L.ALL_BUTTON, L.ALL_BUTTON_TOOLTIP, function()
	for filterID = 1, 113 do	-- 113 = Bags, highest filterID in our Settings
		settings:SetFilter(filterID, true)
		ProfileFilters[filterID] = true
	end
	settings:UpdateMode(1)
end)
buttonAll:SetPoint("RIGHT", buttonNone, "LEFT", -8, 0)
local buttonClassDefaults = CreateFilterButton(L.CLASS_DEFAULTS_BUTTON, L.CLASS_DEFAULTS_BUTTON_TOOLTIP, function()
	wipe(ProfileFilters)
	settings:ResetFilters()
	settings:UpdateMode(1)
end)
buttonClassDefaults:SetPoint("RIGHT", buttonAll, "LEFT", -8, 0)
