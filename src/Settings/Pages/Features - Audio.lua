local _, app = ...;
local L, settings = app.L, app.Settings;

-- Settings: Audio Page
local child = settings:CreateOptionsPage(L.AUDIO_PAGE, L.FEATURES_PAGE)

local soundpackDropdown;
local function GetSoundpacks()
	local choices = {};
	for _,soundPack in pairs(app.Audio:GetAllSoundPacks()) do
		choices[#choices + 1] = { value = soundPack.name, text = soundPack.name };
	end
	table.sort(choices, function(a, b) return a.text < b.text; end);
	return choices;
end

-- The soundpack of each type of sound, with a button to play each of its sounds
local TEST_BUTTON_WIDTH, MAX_TEST_BUTTONS = 28, 11;
local SoundDropdowns = {};
local function GetTestButton(dropdown, index)
	local button = dropdown.TestButtons[index];
	if button then return button; end
	button = CreateFrame("Button", nil, dropdown:GetParent(), "UIPanelButtonTemplate");
	button:SetSize(TEST_BUTTON_WIDTH - 2, 20);
	button:SetPoint("LEFT", dropdown, "RIGHT", -8 + (index - 1) * TEST_BUTTON_WIDTH, 2);
	button:SetText(index);
	button:SetScript("OnClick", function(self) app.Audio:TestSound(self.sound); end);
	button.OnTooltip = function(self, tooltipInfo)
		-- Only the name of a file is of interest
		tooltipInfo[#tooltipInfo + 1] = { left = tostring(self.sound):match("[^/\\]+$") };
	end
	button:SetATTTooltip();
	dropdown.TestButtons[index] = button;
	return button;
end
local function RefreshTests(dropdown, soundType)
	if not dropdown.TestButtons then
		dropdown.TestButtons = {};
		dropdown.TestNote = dropdown:GetParent():CreateFontString(nil, "ARTWORK", "GameFontDisableSmall");
	end
	local sounds, isDefault = app.Audio:GetActiveSounds(soundType);
	local count = math.min(#sounds, MAX_TEST_BUTTONS);
	for i=1,count do
		local button = GetTestButton(dropdown, i);
		button.sound = sounds[i];
		button:Show();
	end
	for i=count+1,#dropdown.TestButtons do dropdown.TestButtons[i]:Hide(); end
	dropdown.TestNote:ClearAllPoints();
	dropdown.TestNote:SetPoint("LEFT", dropdown, "RIGHT", -4 + count * TEST_BUTTON_WIDTH, 2);
	dropdown.TestNote:SetText(count == 0 and NONE or isDefault and DEFAULT or "");
end
local function GetSoundpacksForType()
	local choices = GetSoundpacks();
	table.insert(choices, 1, { value = "", text = L.AUDIO_SAME_SOUNDPACK });
	table.insert(choices, 2, { value = false, text = NONE });
	return choices;
end
local function CreateSoundOption(soundType, text)
	local function SetSoundPack(name)
		if name == "" then name = nil; end
		app.Audio:SetSoundPackForType(soundType, name);
		settings:Refresh();
	end
	return { type = "dropdown", key = "Sound:" .. soundType, text = text, tooltip = L.AUDIO_SOUND_TOOLTIP, width = 150, labelWidth = 110, choices = GetSoundpacksForType,
		get = function()
			if app.Audio:IsSoundTypeMuted(soundType) then return false; end
			local soundPack = app.Audio:GetSoundPackForType(soundType);
			return soundPack and soundPack.name or "";
		end,
		set = SetSoundPack,
		isChanged = function() return app.Audio:IsSoundTypeMuted(soundType) or app.Audio:GetSoundPackForType(soundType) ~= nil; end,
		reset = function() SetSoundPack(""); end,
		OnRefresh = function(self)
			SoundDropdowns[soundType] = self;
			RefreshTests(self, soundType);
		end,
	};
end

settings.CreateOptionSections(child, {
	{ title = L.CELEBRATIONS_LABEL, options = {
		{ type = "dropdown", key = "Channel", text = L.AUDIO_CHANNEL, width = 200, labelWidth = 110, choices = {
			{ value = "Master", text = L.CHANNEL_MASTER },
			{ value = "Music", text = L.CHANNEL_MUSIC },
			{ value = "SFX", text = L.CHANNEL_SFX },
			{ value = "Ambience", text = L.CHANNEL_AMBIENCE },
			{ value = "Dialog", text = L.CHANNEL_DIALOG },
		} },
		{ type = "dropdown", key = "Soundpack", text = L.SOUNDPACK, width = 200, labelWidth = 110, choices = GetSoundpacks,
			get = function() return app.Audio:GetActiveSoundPack().name; end,
			set = function(name)
				app.Audio:ActivateSoundPack(name);
				app.Audio:PlayFanfare();
			end,
			OnRefresh = function(self) soundpackDropdown = self; end,
		},
		{ type = "check", key = "Celebrate", text = L.CELEBRATE_COLLECTED_CHECKBOX, tooltip = L.CELEBRATE_COLLECTED_CHECKBOX_TOOLTIP },
		{ type = "check", key = "Screenshot", text = L.SCREENSHOT_COLLECTED_CHECKBOX, tooltip = L.SCREENSHOT_COLLECTED_CHECKBOX_TOOLTIP .. (app.IsClassic and "\n\nNOTE: Classic has little to NO support for this feature at this time!" or "") },
		{ type = "check", key = "Warn:Removed", advanced = true, text = L.WARN_REMOVED_CHECKBOX, tooltip = L.WARN_REMOVED_CHECKBOX_TOOLTIP },
		{ type = "check", key = "PlayDeathSound", text = L.PLAY_DEATH_SOUND_CHECKBOX, tooltip = L.PLAY_DEATH_SOUND_CHECKBOX_TOOLTIP },
	} },
	{ title = L.AUDIO_TEST_LABEL, options = {
		CreateSoundOption("COMPLETE", L.AUDIO_SOUND_COMPLETE),
		CreateSoundOption("FANFARE", L.AUDIO_SOUND_FANFARE),
		CreateSoundOption("MOUNTFANFARE", L.AUDIO_SOUND_MOUNTFANFARE),
		CreateSoundOption("REMOVE", L.AUDIO_SOUND_REMOVE),
		CreateSoundOption("RAREFIND", L.AUDIO_SOUND_RAREFIND),
		CreateSoundOption("REPORT", L.AUDIO_SOUND_REPORT),
		CreateSoundOption("DEATH", L.AUDIO_SOUND_DEATH),
	} },
});

-- Sound packs can be registered or activated by other addons at any time
app.Audio:RegisterForSoundPackEvents(function()
	if soundpackDropdown then soundpackDropdown:OnRefresh(); end
	for _,dropdown in pairs(SoundDropdowns) do dropdown:OnRefresh(); end
end)
