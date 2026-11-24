local appName, app = ...;
local L, settings = app.L, app.Settings;
local Callback = app.CallbackHandlers.Callback;

-- Global locals
local ipairs, pairs
	= ipairs, pairs;

-- Settings: Profiles Page
-- The list of profiles, and what can be done with the selected one.
local child = settings:CreateOptionsPage(L.PROFILES_PAGE, appName)

local LIST_WIDTH, ROW_HEIGHT = 340, 22;
local SelectedProfile;
local RefreshProfiles;

-- Current profile
local textCurrentProfile = child:CreateHeaderLabel("")
textCurrentProfile:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -10)

local function GetProfileName(profile)
	return profile == "Default" and DEFAULT or profile;
end
local function IsActiveProfile(profile)
	return settings:GetProfile(true) == GetProfileName(profile);
end
-- common function for setting the current profile
local function UseProfile(profile)
	SelectedProfile = nil
	settings:SetProfile(profile)
	settings:ApplyProfile()
	settings:UpdateMode(1)
	RefreshProfiles()
end

-- Initialize Profiles Button
local function InitProfilesButton_Disable(self)
	self:Disable()
end
local buttonInitializeProfiles = child:CreateButton(
{ text = L.PROFILE_INITIALIZE, tooltip = L.PROFILE_INITIALIZE_TOOLTIP, },
{
	OnClick = function(self)
		app:ShowPopupDialog(L.PROFILE_INITIALIZE_CONFIRM,
		function()
			settings.SetupProfiles()
			Callback(InitProfilesButton_Disable, self)
		end)
	end,
})
buttonInitializeProfiles:SetPoint("TOPRIGHT", child.separator, "BOTTOMRIGHT", -8, -8)

-- New Profile Textbox + Create Button
local textboxNewProfile = child:CreateTextbox({
	title = NEW_COMPACT_UNIT_FRAME_PROFILE,
	width = 220,
}, {
	OnRefresh = function(self)
		self:SetText("")
	end,
})
textboxNewProfile:SetPoint("TOPLEFT", textCurrentProfile, "BOTTOMLEFT", 6, -26)
textboxNewProfile:SetATTTooltip(L.PROFILE_NEW_TOOLTIP)
local function CreateProfile()
	local newProfile = textboxNewProfile:GetText()
	if newProfile and newProfile ~= "" and settings:NewProfile(newProfile) then
		UseProfile(newProfile)
	end
end
textboxNewProfile:SetScript("OnEnterPressed", CreateProfile)
local buttonCreateProfile = child:CreateButton(
{ text = CREATE_COMPACT_UNIT_FRAME_PROFILE, tooltip = CREATE_NEW_COMPACT_UNIT_FRAME_PROFILE, },
{ OnClick = CreateProfile })
buttonCreateProfile:SetPoint("LEFT", textboxNewProfile, "RIGHT", 6, 0)

-- List of profiles
local content = settings.CreatePageColumn(child, 4, 4 + LIST_WIDTH, 92)
local Rows = {}
local function GetRow(index)
	local row = Rows[index]
	if row then return row end
	row = CreateFrame("Button", nil, content)
	row:SetSize(LIST_WIDTH - 32, ROW_HEIGHT)
	row:SetPoint("TOPLEFT", content, "TOPLEFT", 4, -(index - 1) * ROW_HEIGHT - 4)
	row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
	row.Selected = row:CreateTexture(nil, "BACKGROUND")
	row.Selected:SetAllPoints()
	row.Selected:SetColorTexture(1, 0.82, 0, 0.15)
	row.Active = row:CreateFontString(nil, "ARTWORK", "GameFontGreenSmall")
	row.Active:SetPoint("RIGHT", row, "RIGHT", -6, 0)
	row.Active:SetText(L.SETTINGS_PRESET_ACTIVE)
	row.Text = row:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
	row.Text:SetPoint("LEFT", row, "LEFT", 6, 0)
	row.Text:SetPoint("RIGHT", row.Active, "LEFT", -6, 0)
	row.Text:SetJustifyH("LEFT")
	row.Text:SetWordWrap(false)
	-- holding shift or double clicking will switch profiles instead of selecting one
	row:SetScript("OnClick", function(self)
		local profile = self.profile
		if IsShiftKeyDown() and not IsActiveProfile(profile) then
			UseProfile(profile)
			return
		end
		SelectedProfile = SelectedProfile ~= profile and profile or nil
		RefreshProfiles()
	end)
	row:SetScript("OnDoubleClick", function(self)
		if not IsActiveProfile(self.profile) then UseProfile(self.profile) end
	end)
	row.OnTooltip = function(self, tooltipInfo)
		tooltipInfo[#tooltipInfo + 1] = { left = GetProfileName(self.profile) }
		tooltipInfo[#tooltipInfo + 1] = { left = L.PROFILE_SWITCH_TOOLTIP, wrap = true, r = 1, g = 1, b = 1 }
	end
	row:SetATTTooltip()
	Rows[index] = row
	return row
end

-- Actions for the selected profile
local lastAction
local function CreateAction(text, tooltip, IsEnabled, OnClick)
	local button = child:CreateButton({ text = text, tooltip = tooltip, width = 200 }, {
		OnClick = function()
			if SelectedProfile then OnClick(SelectedProfile) end
		end,
	})
	button.UpdateAction = function(self)
		self:SetEnabled(SelectedProfile ~= nil and IsEnabled(SelectedProfile) and true or false)
	end
	if lastAction then
		button:SetPoint("TOPLEFT", lastAction, "BOTTOMLEFT", 0, -6)
	else
		button:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", LIST_WIDTH + 24, -100)
	end
	lastAction = button
	return button
end
local function IsNotActive(profile) return not IsActiveProfile(profile) end
local Actions = {
	CreateAction(SWITCH, L.PROFILE_SWITCH_TOOLTIP, IsNotActive, UseProfile),
	CreateAction(CALENDAR_COPY_EVENT, L.PROFILE_COPY_TOOLTIP, IsNotActive, function(profile)
		-- This replaces everything in the current profile
		app:ShowPopupDialog(L.PROFILE_COPY_CONFIRM:format(GetProfileName(profile), settings:GetProfile(true)), function()
			settings:CopyProfile(nil, profile)
			settings:ApplyProfile()
			settings:UpdateMode(1)
			RefreshProfiles()
		end)
	end),
	CreateAction(DELETE, L.PROFILE_DELETE_TOOLTIP, function(profile) return profile ~= "Default" and profile ~= DEFAULT end, function(profile)
		app:ShowPopupDialog(L.PROFILE_DELETE_CONFIRM:format(GetProfileName(profile)), function()
			if settings:DeleteProfile(profile) then
				SelectedProfile = nil
				settings:UpdateMode(1)
				RefreshProfiles()
			end
		end)
	end),
}

-- Checkbox to show profile loaded message
local checkboxShowProfileLoaded = child:CreateCheckBox(L.SHOW_PROFILE_LOADED,
function(self)
	self:SetChecked(settings:Get("Profile:ShowProfileLoadedMessage"))
end,
function(self)
	settings:Set("Profile:ShowProfileLoadedMessage", not settings:Get("Profile:ShowProfileLoadedMessage"))
	self:SetChecked(settings:Get("Profile:ShowProfileLoadedMessage"))
end)
settings.StyleCheckBox(checkboxShowProfileLoaded, 600)
checkboxShowProfileLoaded.SettingsOption.IsChanged = function() return settings.IsSettingChanged("Profile:ShowProfileLoadedMessage") end
checkboxShowProfileLoaded:SetPoint("BOTTOMLEFT", child, "BOTTOMLEFT", 4, 4)
-- Leave room for it below the list
content.ScrollContainer:SetPoint("BOTTOMRIGHT", child, "BOTTOMLEFT", 4 + LIST_WIDTH, 34)
local back = content.ScrollContainer:CreateTexture(nil, "BACKGROUND")
back:SetColorTexture(1, 1, 1, 0.04)
back:SetAllPoints(content.ScrollContainer)

RefreshProfiles = function()
	-- update the current profile label
	textCurrentProfile:SetText(REFORGE_CURRENT .. ": |cffFFFFFF" .. (settings:GetProfile(true) or NOT_APPLICABLE) .. "|r")

	local profiles = {}
	if AllTheThingsProfiles then
		for profile in pairs(AllTheThingsProfiles.Profiles) do
			profiles[#profiles + 1] = profile
		end
	end
	buttonInitializeProfiles:SetShown(not AllTheThingsProfiles)
	textboxNewProfile:SetShown(AllTheThingsProfiles and true or false)
	buttonCreateProfile:SetShown(AllTheThingsProfiles and true or false)
	app.Sort(profiles, app.SortDefaults.Strings)

	for i,profile in ipairs(profiles) do
		local row = GetRow(i)
		row.profile = profile
		row.Text:SetText(GetProfileName(profile))
		row.Active:SetShown(IsActiveProfile(profile))
		row.Selected:SetShown(SelectedProfile == profile)
		row:Show()
	end
	-- hide extra rows if profiles have been deleted during this game session
	for i=#profiles+1,#Rows do Rows[i]:Hide() end
	content:SetHeight(#profiles * ROW_HEIGHT + 8)

	for _,button in ipairs(Actions) do button:UpdateAction() end
end
child.OnRefresh = RefreshProfiles
