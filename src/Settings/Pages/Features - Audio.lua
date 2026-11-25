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

-- Each type of sound can be turned off, and has a button to play each of its sounds
local TEST_X, TEST_BUTTON_WIDTH, MAX_TEST_BUTTONS = 190, 28, 14;
local SoundRows = {};
local function GetTestButton(row, index)
	local button = row.TestButtons[index];
	if button then return button; end
	button = CreateFrame("Button", nil, row:GetParent(), "UIPanelButtonTemplate");
	button:SetSize(TEST_BUTTON_WIDTH - 2, 19);
	button:SetPoint("LEFT", row, "LEFT", TEST_X + (index - 1) * TEST_BUTTON_WIDTH, 0);
	button:SetText(index);
	button:SetScript("OnClick", function(self) app.Audio:TestSound(self.sound); end);
	button.OnTooltip = function(self, tooltipInfo)
		-- Only the name of a file is of interest
		tooltipInfo[#tooltipInfo + 1] = { left = tostring(self.sound):match("[^/\\]+$") };
		tooltipInfo[#tooltipInfo + 1] = { left = self.soundPack.name, r = 1, g = 1, b = 1 };
	end
	button:SetATTTooltip();
	row.TestButtons[index] = button;
	return button;
end
local function RefreshTests(row, soundType)
	if not row.TestButtons then
		row.TestButtons = {};
		row.TestNote = row:GetParent():CreateFontString(nil, "ARTWORK", "GameFontDisableSmall");
	end
	local sounds, sources = app.Audio:GetActiveSounds(soundType);
	local count = math.min(#sounds, MAX_TEST_BUTTONS);
	for i=1,count do
		local button = GetTestButton(row, i);
		button.sound, button.soundPack = sounds[i], sources[i];
		button:Show();
	end
	for i=count+1,#row.TestButtons do row.TestButtons[i]:Hide(); end
	row.TestNote:ClearAllPoints();
	row.TestNote:SetPoint("LEFT", row, "LEFT", TEST_X + 4 + count * TEST_BUTTON_WIDTH, 0);
	row.TestNote:SetText(count == 0 and NONE or #sounds > count and ("+" .. (#sounds - count)) or "");
end
local function CreateSoundOption(soundType, text)
	local function SetEnabled(enabled)
		app.Audio:SetSoundTypeMuted(soundType, not enabled);
		settings:Refresh();
	end
	return { type = "check", text = text, tooltip = L.AUDIO_SOUND_TOOLTIP,
		get = function() return not app.Audio:IsSoundTypeMuted(soundType); end,
		set = SetEnabled,
		isChanged = function() return app.Audio:IsSoundTypeMuted(soundType); end,
		reset = function() SetEnabled(true); end,
		OnRefresh = function(self)
			SoundRows[soundType] = self;
			RefreshTests(self, soundType);
		end,
	};
end
local function GetSoundpackText()
	local soundPacks = app.Audio:GetEnabledSoundPacks();
	return #soundPacks == 1 and soundPacks[1].name or L.AUDIO_SOUNDPACK_COUNT:format(#soundPacks);
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
		{ type = "dropdown", key = "Soundpack", text = L.SOUNDPACK, tooltip = L.AUDIO_SOUNDPACK_TOOLTIP, width = 200, labelWidth = 110, choices = GetSoundpacks,
			multi = true,
			isSelected = function(name) return app.Audio:IsSoundPackEnabled(name); end,
			toggle = function(name)
				local enabled = not app.Audio:IsSoundPackEnabled(name);
				app.Audio:SetSoundPackEnabled(name, enabled);
				if enabled then app.Audio:PlayFanfare(); end
			end,
			get = GetSoundpackText,
			getText = GetSoundpackText,
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
	for soundType,row in pairs(SoundRows) do RefreshTests(row, soundType); end
end)
