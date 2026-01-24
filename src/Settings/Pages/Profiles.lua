local appName, app = ...;
local L, settings, tinsert = app.L, app.Settings, tinsert;
local Callback = app.CallbackHandlers.Callback;

-- Settings: Profiles Page
local child = settings:CreateOptionsPage(L.PROFILES_PAGE, appName)

-- CONTENT
local headerProfiles = child:CreateHeaderLabel(L.PROFILES_PAGE)
if child.separator then
	headerProfiles:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerProfiles:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end

local textCurrentProfile = child:CreateHeaderLabel(REFORGE_CURRENT..":")
textCurrentProfile:SetPoint("TOPLEFT", headerProfiles, "BOTTOMLEFT", 0, -10)

local textCurrentProfileName = child:CreateHeaderLabel(" ")
textCurrentProfileName:AlignAfter(textCurrentProfile, 10);
textCurrentProfileName:SetTextColor(1, 1, 1, 1)

-- New Profile Textbox + Label
local textboxNewProfile = child:CreateTextbox(
-- textbox settings
{
	title = NEW_COMPACT_UNIT_FRAME_PROFILE,
	width = 200,
},
-- function hooks for the textbox
{
	OnRefresh = function(self)
		self:SetText("")
	end,
})
textboxNewProfile:SetPoint("TOPLEFT", textCurrentProfile, "BOTTOMLEFT", 5, -20)
textboxNewProfile:SetATTTooltip(L.PROFILE_NEW_TOOLTIP)
textboxNewProfile:Show()

-- Profiles selector scrollbox
local profileSelector = child:CreateScrollFrame()
local profileScroller = profileSelector.ScrollContainer
profileScroller:SetPoint("TOPLEFT", textboxNewProfile, "BOTTOMLEFT", 0, -10)
profileScroller:SetPoint("RIGHT", textboxNewProfile, "RIGHT", 25, 0)
profileScroller:SetHeight(420)
local back = profileScroller:CreateTexture(nil, "BACKGROUND")
back:SetColorTexture(20/255,20/255,20/255,1)
back:SetAllPoints(profileScroller)

-- Initialize Profiles Button
local SelectedProfile;
local function InitProfilesButton_Disable(self)
	self:Disable()
end
local buttonInitializeProfiles = child:CreateButton(
{ text = L.PROFILE_INITIALIZE, tooltip = L.PROFILE_INITIALIZE_TOOLTIP, },
{
	OnClick = function(self)
		app:ShowPopupDialog(L.PROFILE_INITIALIZE_CONFIRM,
		function()
			app.SetupProfiles()
			Callback(InitProfilesButton_Disable, self)
		end)
	end,
})
buttonInitializeProfiles:SetPoint("TOPLEFT", headerProfiles, "TOPRIGHT", 10, 5)
buttonInitializeProfiles:Show()

-- common function for setting the current profile
local UseProfile = function(profile)
	SelectedProfile = nil
	settings:SetProfile(profile)
	settings:ApplyProfile()
	settings:UpdateMode(1)
end

-- Create Button
local buttonCreateProfile = child:CreateButton(
{ text = CREATE_COMPACT_UNIT_FRAME_PROFILE, tooltip = CREATE_NEW_COMPACT_UNIT_FRAME_PROFILE, },
{
	OnClick = function(self)
		-- if self.ATTActionObject and self.ATTActionObject.GetText then
			local newProfile = textboxNewProfile:GetText()
			if newProfile and newProfile ~= "" then
				if settings:NewProfile(newProfile) then
					UseProfile(newProfile)
					profileSelector:OnRefresh()
					return true
				end
				-- TODO dialog about existing profile
				-- app:ShowPopupDialog("Profile already exists!", app.EmptyFunction)
			end
		-- end
	end,
})
buttonCreateProfile:SetPoint("TOPLEFT", textboxNewProfile, "TOPRIGHT", 5, 2)

-- Delete Button
local buttonDeleteProfile = child:CreateButton(
{ text = DELETE, tooltip = L.PROFILE_DELETE_TOOLTIP, },
{
	OnClick = function(self)
		local profile = SelectedProfile
		if profile then
			if settings:DeleteProfile(profile) then
				settings:UpdateMode(1)
				profileSelector:OnRefresh()
				return true
			end
			-- TODO dialog about not deleting a profile
			-- app:ShowPopupDialog("Profile cannot be deleted!", app.EmptyFunction)
		end
	end
})
buttonDeleteProfile:SetPoint("BOTTOMLEFT", profileScroller, "BOTTOMRIGHT", 5, -1)

-- Switch Button
local buttonSwitchProfile = child:CreateButton(
{ text = SWITCH, tooltip = L.PROFILE_SWITCH_TOOLTIP, },
{
	OnClick = function(self)
		local profile = SelectedProfile
		if profile then
			UseProfile(profile)
			profileSelector:OnRefresh()
			return true
		end
	end
})
buttonSwitchProfile:SetPoint("LEFT", buttonDeleteProfile, "LEFT", 0, 0)
buttonSwitchProfile:SetPoint("TOP", profileScroller, "TOP", 0, 2)

-- Copy Button
local buttonCopyProfile = child:CreateButton(
{ text = CALENDAR_COPY_EVENT, tooltip = L.PROFILE_COPY_TOOLTIP, },
{
	OnClick = function(self)
		local profile = SelectedProfile
		if profile then
			settings:CopyProfile(nil, profile)
			settings:ApplyProfile()
			settings:UpdateMode(1)
			profileSelector:OnRefresh()
			return true
		end
	end
})
buttonCopyProfile:SetPoint("TOPLEFT", buttonSwitchProfile, "BOTTOMLEFT", 0, -4)

-- Checkbox to show profile loaded message
local checkboxShowProfileLoaded = child:CreateCheckBox(L.SHOW_PROFILE_LOADED,
function(self)
	self:SetChecked(settings:Get("Profile:ShowProfileLoadedMessage"))
end,
function(self)
	settings:Set("Profile:ShowProfileLoadedMessage", not settings:Get("Profile:ShowProfileLoadedMessage"))
	self:SetChecked(settings:Get("Profile:ShowProfileLoadedMessage"))
end)
checkboxShowProfileLoaded:SetPoint("TOPLEFT", profileScroller, "BOTTOMLEFT", 0, -4)

local function ProfileCheckbox_Disable(self)
	self:Disable()
end
profileSelector.OnRefresh = function()
	-- app.PrintDebug("SelectedProfile",SelectedProfile)

	-- update the current profile label
	local currentProfile = settings:GetProfile(true)
	textCurrentProfileName:SetText(currentProfile or NOT_APPLICABLE)

	-- app.PrintDebug("refresh profiles scrollbox")
	local settingProfileItems = {}
	if AllTheThingsProfiles then
		-- buttons have no OnRefresh script, so have to hide it externally
		buttonInitializeProfiles:Hide()

		for k,v in pairs(AllTheThingsProfiles.Profiles) do
			-- app.PrintDebug("added",k)
			tinsert(settingProfileItems, k == "Default" and DEFAULT or k)
		end
	end
	-- sort the profiles
	app.Sort(settingProfileItems, app.SortDefaults.Strings)

	local profileCount, existingBoxes, lastProfileSelect = 0, profileSelector.ATT and profileSelector.ATT.CB_Count or 0, nil

	-- create checkboxes for the profiles in the scrollframe
	for _,profile in ipairs(settingProfileItems) do
		local profileBox
		profileCount = profileCount + 1
		if existingBoxes >= profileCount then
			-- app.PrintDebug("replace-profileCB",profileCount,profile)
			profileBox = profileSelector.ATT.CB[profileCount]
			profileBox.Text:SetText(profile)
		else
			-- app.PrintDebug("new-profileCB",profileCount,profile)
			profileBox = profileSelector:CreateCheckBoxWithCount(profile,
				function(self)
					-- app.PrintDebug("CB.OnRefresh",self.Text:GetText())
					local myProfile = self.Text:GetText()
					local activeProfile = settings:GetProfile(true)
					if activeProfile == myProfile then
						self:SetAlpha(0.5)
						self:SetChecked(true)
						Callback(ProfileCheckbox_Disable, self)
					elseif SelectedProfile == myProfile then
						self:SetAlpha(1)
						self:Enable()
						self:SetChecked(true)
					else
						self:SetAlpha(1)
						self:Enable()
						self:SetChecked(false)
					end
				end,
				function(self)
					-- logic when the respective profile checkbox is selected
					-- holding shift will switch profiles instead of selecting one
					local myProfile = self.Text:GetText()
					local activeProfile = settings:GetProfile(true)
					-- app.PrintDebug("clicked",profile)
					if SelectedProfile == myProfile then
						SelectedProfile = nil
					elseif myProfile ~= activeProfile then
						SelectedProfile = myProfile
					end
					if IsShiftKeyDown() then
						if myProfile ~= activeProfile then
							UseProfile(myProfile)
						end
					end
					profileSelector:OnRefresh()
					return true
				end)
			if lastProfileSelect then
				profileBox:AlignBelow(lastProfileSelect)
			else
				profileBox:SetPoint("TOPLEFT", profileSelector, "TOPLEFT", 5, -5)
			end
		end
		profileBox.Text:SetWordWrap(false)
		profileBox:SetHitRectInsets(0,0 - profileBox.Text:GetWidth(),0,0)
		profileBox:SetATTTooltip(profile)
		profileBox:OnRefresh()
		profileBox:Show()
		lastProfileSelect = profileBox
	end

	-- enable/disable buttons if profile is 'selected'
	if SelectedProfile then
		buttonSwitchProfile:Enable()
		buttonCopyProfile:Enable()
		buttonDeleteProfile:Enable()
	else
		buttonSwitchProfile:Disable()
		buttonCopyProfile:Disable()
		buttonDeleteProfile:Disable()
	end

	-- hide extra checkboxes if they've been deleted during this game session
	if existingBoxes > profileCount then
		-- app.PrintDebug("removing extra checkboxes",profileCount,existingBoxes)
		for i=profileCount + 1,existingBoxes do
			profileSelector.ATT.CB[i]:Hide()
		end
	end
end