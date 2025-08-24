local _, app = ...;
local L, settings = app.L, app.Settings;

-- Settings: Features Page
local child = settings:CreateOptionsPage(L.AUDIO_PAGE, L.FEATURES_PAGE)

-- Column 1
local headerCelebrations = child:CreateHeaderLabel(L.CELEBRATIONS_LABEL)
if child.separator then
	headerCelebrations:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerCelebrations:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end

local textSoundChannel = child:CreateTextLabel("|cffFFFFFF"..L.AUDIO_CHANNEL)
textSoundChannel:SetPoint("TOPLEFT", headerCelebrations, "BOTTOMLEFT", 0, -8)
textSoundChannel:SetWidth(textSoundChannel:GetUnboundedStringWidth())

local checkboxMasterChannel = child:CreateCheckBox(L.CHANNEL_MASTER,
function(self)
	-- Only check self if the setting is set to this option
	self:SetChecked(settings:GetTooltipSetting("Channel") == "Master")
end,
function(self)
	-- Don't uncheck self if checked again
	if settings:GetTooltipSetting("Channel") == "Master" then
		self:SetChecked(true)
		return
	end
	-- Set the setting to this option if checked
	if self:GetChecked() then
		settings:SetTooltipSetting("Channel", "Master")
	end
end)
checkboxMasterChannel:SetPoint("BOTTOMLEFT", textSoundChannel, "BOTTOMRIGHT", 2, -8)

local checkboxMusicChannel = child:CreateCheckBox(L.CHANNEL_MUSIC,
function(self)
	-- Only check self if the setting is set to this option
	self:SetChecked(settings:GetTooltipSetting("Channel") == "Music")
end,
function(self)
	-- Don't uncheck self if checked again
	if settings:GetTooltipSetting("Channel") == "Music" then
		self:SetChecked(true)
		return
	end
	-- Set the setting to this option if checked
	if self:GetChecked() then
		settings:SetTooltipSetting("Channel", "Music")
	end
end)
checkboxMusicChannel:AlignAfter(checkboxMasterChannel)

local checkboxEffectsChannel = child:CreateCheckBox(L.CHANNEL_SFX,
function(self)
	-- Only check self if the setting is set to this option
	self:SetChecked(settings:GetTooltipSetting("Channel") == "SFX")
end,
function(self)
	-- Don't uncheck self if checked again
	if settings:GetTooltipSetting("Channel") == "SFX" then
		self:SetChecked(true)
		return
	end
	-- Set the setting to this option if checked
	if self:GetChecked() then
		settings:SetTooltipSetting("Channel", "SFX")
	end
end)
checkboxEffectsChannel:SetPoint("TOPLEFT", textSoundChannel, "BOTTOMLEFT", 6, -3)

local checkboxAmbienceChannel = child:CreateCheckBox(L.CHANNEL_AMBIENCE,
function(self)
	-- Only check self if the setting is set to this option
	self:SetChecked(settings:GetTooltipSetting("Channel") == "Ambience")
end,
function(self)
	-- Don't uncheck self if checked again
	if settings:GetTooltipSetting("Channel") == "Ambience" then
		self:SetChecked(true)
		return
	end
	-- Set the setting to this option if checked
	if self:GetChecked() then
		settings:SetTooltipSetting("Channel", "Ambience")
	end
end)
checkboxAmbienceChannel:AlignAfter(checkboxEffectsChannel)

local checkboxDialogChannel = child:CreateCheckBox(L.CHANNEL_DIALOG,
function(self)
	-- Only check self if the setting is set to this option
	self:SetChecked(settings:GetTooltipSetting("Channel") == "Dialog")
end,
function(self)
	-- Don't uncheck self if checked again
	if settings:GetTooltipSetting("Channel") == "Dialog" then
		self:SetChecked(true)
		return
	end
	-- Set the setting to this option if checked
	if self:GetChecked() then
		settings:SetTooltipSetting("Channel", "Dialog")
	end
end)
checkboxDialogChannel:AlignAfter(checkboxAmbienceChannel)

local checkboxCelebrateCollectedThings = child:CreateCheckBox(L.CELEBRATE_COLLECTED_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Celebrate"))
end,
function(self)
	settings:SetTooltipSetting("Celebrate", self:GetChecked())
end)
checkboxCelebrateCollectedThings:SetATTTooltip(L.CELEBRATE_COLLECTED_CHECKBOX_TOOLTIP)
checkboxCelebrateCollectedThings:AlignBelow(checkboxEffectsChannel, -1)
checkboxCelebrateCollectedThings:SetPoint("TOP", checkboxEffectsChannel, "BOTTOM", 0, -8)

local checkboxScreenshotCollectedThings = child:CreateCheckBox(L.SCREENSHOT_COLLECTED_CHECKBOX,
	function(self)
		self:SetChecked(settings:GetTooltipSetting("Screenshot"))
	end,
	function(self)
		settings:SetTooltipSetting("Screenshot", self:GetChecked())
	end)
checkboxScreenshotCollectedThings:SetATTTooltip(L.SCREENSHOT_COLLECTED_CHECKBOX_TOOLTIP .. (app.IsClassic and "\n\nNOTE: Classic has little to NO support for this feature at this time!" or ""))
checkboxScreenshotCollectedThings:AlignBelow(checkboxCelebrateCollectedThings)

local checkboxWarnRemovedThings = child:CreateCheckBox(L.WARN_REMOVED_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Warn:Removed"))
end,
function(self)
	settings:SetTooltipSetting("Warn:Removed", self:GetChecked())
end)
checkboxWarnRemovedThings:SetATTTooltip(L.WARN_REMOVED_CHECKBOX_TOOLTIP)
checkboxWarnRemovedThings:AlignBelow(checkboxScreenshotCollectedThings)

local checkboxPlayDeathSound = child:CreateCheckBox(L.PLAY_DEATH_SOUND_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("PlayDeathSound"))
end,
function(self)
	settings:SetTooltipSetting("PlayDeathSound", self:GetChecked())
end)
checkboxPlayDeathSound:SetATTTooltip(L.PLAY_DEATH_SOUND_CHECKBOX_TOOLTIP)
checkboxPlayDeathSound:AlignBelow(checkboxWarnRemovedThings)

local textSoundpack = child:CreateTextLabel("|cffFFFFFF"..L.SOUNDPACK)
textSoundpack:SetPoint("LEFT", headerCelebrations, 0, 0)
textSoundpack:SetPoint("TOP", checkboxPlayDeathSound, "BOTTOM", 0, -8)

local dropdownSoundpack = CreateFrame("Frame", "dropdownSoundpack", child, "UIDropDownMenuTemplate")
dropdownSoundpack:SetPoint("TOPLEFT", textSoundpack, "BOTTOMLEFT", -15, 0)
UIDropDownMenu_SetWidth(dropdownSoundpack, 270) -- Use in place of dropDown:SetWidth

-- Set the dropdown's current text to the active soundpack
app.Audio:RegisterForSoundPackEvents(function(event, soundPack)
	UIDropDownMenu_SetText(dropdownSoundpack, app.Audio:GetActiveSoundPack().name)
end)

-- Change the active soundpack based on user selection
local function WPDropDownDemo_OnClick(self, arg1)
	app.Audio:ActivateSoundPack(arg1)
	UIDropDownMenu_SetText(dropdownSoundpack, app.Audio:GetActiveSoundPack().name)
	app.Audio:PlayFanfare()
end

-- Populate the dropdown menu with all existing soundpacks
function WPDropDownDemo_Menu(frame, level, menuList)
	local soundPacks = {};
	for i, soundPack in pairs(app.Audio:GetAllSoundPacks()) do
		tinsert(soundPacks, soundPack.name);
	end
	table.sort(soundPacks);

	local info = UIDropDownMenu_CreateInfo()
	info.func = WPDropDownDemo_OnClick
	for i, name in ipairs(soundPacks) do
		info.text, info.arg1 = name, name
		UIDropDownMenu_AddButton(info)
	end
end
UIDropDownMenu_Initialize(dropdownSoundpack, WPDropDownDemo_Menu)