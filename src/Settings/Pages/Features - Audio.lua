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

-- Lists the sounds of the active soundpack, with a button to play each of them
local SoundTypeNames = {
	COMPLETE = L.AUDIO_SOUND_COMPLETE,
	FANFARE = L.AUDIO_SOUND_FANFARE,
	MOUNTFANFARE = L.AUDIO_SOUND_MOUNTFANFARE,
	REMOVE = L.AUDIO_SOUND_REMOVE,
	RAREFIND = L.AUDIO_SOUND_RAREFIND,
	REPORT = L.AUDIO_SOUND_REPORT,
	DEATH = L.AUDIO_SOUND_DEATH,
};
local TEST_ROW_HEIGHT, TEST_BUTTON_X, TEST_BUTTON_WIDTH, MAX_TEST_BUTTONS = 24, 170, 28, 14;
local RefreshTests;
local function CreateSoundTests(content, x, y)
	local rows = {};
	for i,soundType in ipairs(app.Audio.SoundTypes) do
		local row = { soundType = soundType, buttons = {} };
		local rowY = y - (i - 1) * TEST_ROW_HEIGHT;
		local label = content:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
		label:SetPoint("TOPLEFT", content, "TOPLEFT", x + 4, rowY - 6);
		label:SetText(SoundTypeNames[soundType]);
		row.note = content:CreateFontString(nil, "ARTWORK", "GameFontDisableSmall");
		row.y = rowY;
		rows[i] = row;
	end
	local function GetButton(row, index)
		local button = row.buttons[index];
		if button then return button; end
		button = CreateFrame("Button", nil, content, "UIPanelButtonTemplate");
		button:SetSize(TEST_BUTTON_WIDTH - 2, 20);
		button:SetPoint("TOPLEFT", content, "TOPLEFT", x + TEST_BUTTON_X + (index - 1) * TEST_BUTTON_WIDTH, row.y - 1);
		button:SetText(index);
		button:SetScript("OnClick", function(self) app.Audio:TestSound(self.sound); end);
		button.OnTooltip = function(self, tooltipInfo)
			-- Only the name of a file is of interest
			tooltipInfo[#tooltipInfo + 1] = { left = tostring(self.sound):match("[^/\\]+$") };
		end
		button:SetATTTooltip();
		row.buttons[index] = button;
		return button;
	end
	RefreshTests = function()
		local isDefaultPack = app.Audio:GetActiveSoundPack().name == "Default";
		for _,row in ipairs(rows) do
			local sounds, isDefault = app.Audio:GetActiveSounds(row.soundType);
			local count = math.min(#sounds, MAX_TEST_BUTTONS);
			for i=1,count do
				local button = GetButton(row, i);
				button.sound = sounds[i];
				button:Show();
			end
			for i=count+1,#row.buttons do row.buttons[i]:Hide(); end
			row.note:ClearAllPoints();
			row.note:SetPoint("TOPLEFT", content, "TOPLEFT", x + TEST_BUTTON_X + count * TEST_BUTTON_WIDTH + 4, row.y - 6);
			row.note:SetText(count == 0 and NONE or (isDefault and not isDefaultPack and DEFAULT) or "");
		end
	end
	local refresher = CreateFrame("Frame", nil, content);
	refresher.OnRefresh = RefreshTests;
	content:RegisterObject(refresher);
	return #rows * TEST_ROW_HEIGHT;
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
		{ type = "custom", Create = CreateSoundTests },
	} },
});

-- Sound packs can be registered or activated by other addons at any time
app.Audio:RegisterForSoundPackEvents(function()
	if soundpackDropdown then soundpackDropdown:OnRefresh(); end
	if RefreshTests then RefreshTests(); end
end)
