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

settings.CreateOptionSections(child, {
	{ title = L.CELEBRATIONS_LABEL, options = {
		{ type = "dropdown", key = "Channel", text = L.AUDIO_CHANNEL, width = 120, choices = {
			{ value = "Master", text = L.CHANNEL_MASTER },
			{ value = "Music", text = L.CHANNEL_MUSIC },
			{ value = "SFX", text = L.CHANNEL_SFX },
			{ value = "Ambience", text = L.CHANNEL_AMBIENCE },
			{ value = "Dialog", text = L.CHANNEL_DIALOG },
		} },
		{ type = "dropdown", key = "Soundpack", text = L.SOUNDPACK, width = 270, choices = GetSoundpacks,
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
});

-- Sound packs can be registered or activated by other addons at any time
app.Audio:RegisterForSoundPackEvents(function()
	if soundpackDropdown then soundpackDropdown:OnRefresh(); end
end)
