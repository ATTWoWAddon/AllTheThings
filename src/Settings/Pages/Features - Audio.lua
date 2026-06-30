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

local function GetSortedSoundPackNames()
	local soundPacks = {}
	for _, soundPack in pairs(app.Audio:GetAllSoundPacks()) do
		tinsert(soundPacks, soundPack.name)
	end
	table.sort(soundPacks)
	return soundPacks
end

local function SelectSoundPack(name)
	app.Audio:ActivateSoundPack(name)
	app.Audio:PlayFanfare()
end

if app.IsRetail then
	local dropdownSoundpack = CreateFrame("DropdownButton", nil, child, "WowStyle1DropdownTemplate")
	dropdownSoundpack:SetPoint("TOPLEFT", textSoundpack, "BOTTOMLEFT", 0, -2)
	dropdownSoundpack:SetWidth(270)
	dropdownSoundpack:SetDefaultText(app.Audio:GetActiveSoundPack().name)

	local function IsSoundPackSelected(name)
		return app.Audio:GetActiveSoundPack().name == name
	end

	dropdownSoundpack:SetupMenu(function(_, rootDescription)
		for _, name in ipairs(GetSortedSoundPackNames()) do
			rootDescription:CreateRadio(name, IsSoundPackSelected, SelectSoundPack, name)
		end
	end)

	-- Refresh the selected text when another module changes the active pack.
	app.Audio:RegisterForSoundPackEvents(function()
		dropdownSoundpack:GenerateMenu()
	end)
else
	-- Current Classic clients do not consistently expose Blizzard_Menu. Use a
	-- standard button which cycles packs without requiring the Retail menu framework.
	local soundPackButton = CreateFrame("Button", nil, child, "UIPanelButtonTemplate")
	soundPackButton:SetPoint("TOPLEFT", textSoundpack, "BOTTOMLEFT", 0, -2)
	soundPackButton:SetSize(270, 24)
	soundPackButton:SetText(app.Audio:GetActiveSoundPack().name)
	soundPackButton:SetScript("OnClick", function()
		local soundPacks = GetSortedSoundPackNames()
		local activeName = app.Audio:GetActiveSoundPack().name
		local nextIndex = 1
		for index, name in ipairs(soundPacks) do
			if name == activeName then
				nextIndex = index % #soundPacks + 1
				break
			end
		end
		if soundPacks[nextIndex] then
			SelectSoundPack(soundPacks[nextIndex])
		end
	end)
	app.Audio:RegisterForSoundPackEvents(function()
		soundPackButton:SetText(app.Audio:GetActiveSoundPack().name)
	end)
end
