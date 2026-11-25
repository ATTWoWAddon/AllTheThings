-- Audio lib
local _, app = ...;
local api = {};
app.Audio = api;

local ipairs, pairs, pcall, type, time, math_random, PlaySound, PlaySoundFile
	= ipairs, pairs, pcall, type, time, math.random, PlaySound, PlaySoundFile

local DefaultSoundPack;

-- Sound Pack Management
-- Several Sound Packs can be enabled at once, their sounds are combined for each type.
-- CurrentSoundPack is the one which was activated last, OverrideSoundPack replaces all of them for now.
local EventHandlers, SoundPacks, CurrentSoundPack, OverrideSoundPack = {}, {}, nil, nil;
local function SendEvent(event, soundPack)
	for i,handler in ipairs(EventHandlers) do
		pcall(handler, event, soundPack);
	end
end
-- The names of the enabled Sound Packs, including the ones which aren't available at the moment
local function GetEnabledNames()
	local saved = AllTheThingsSavedVariables;
	local names = saved.EnabledSoundPacks;
	if not names then
		-- There could only be one before
		names = { [saved.CurrentSoundPack or "Default"] = true };
		saved.EnabledSoundPacks = names;
	end
	return names;
end
-- Activates only the given Sound Pack
function api:ActivateSoundPack(name, noerror)
	local t = type(name);
	if t == "string" then
		local soundPack = SoundPacks[name];
		if not soundPack then
			if noerror then
				return;
			else
				error("SoundPack '" .. name .. "' not found. Use AllTheThings.Audio:CreateSoundPack first!");
			end
		end
		CurrentSoundPack = soundPack;
	elseif t == "table" then
		CurrentSoundPack = api:CreateSoundPack(name.name, name);
	elseif noerror then
		return;
	else
		error("SoundPack '" .. tostring(name) .. "' is invalid!");
	end
	OverrideSoundPack = nil;
	AllTheThingsSavedVariables.CurrentSoundPack = CurrentSoundPack.name;
	AllTheThingsSavedVariables.EnabledSoundPacks = { [CurrentSoundPack.name] = true };
	SendEvent("Activated", CurrentSoundPack);
	return CurrentSoundPack;
end
function api:IsSoundPackEnabled(name)
	if OverrideSoundPack then return OverrideSoundPack.name == name; end
	return GetEnabledNames()[name] or false;
end
-- Enables or disables a Sound Pack without changing the other ones
function api:SetSoundPackEnabled(name, enabled)
	local soundPack = SoundPacks[name];
	if not soundPack then
		error("SoundPack '" .. tostring(name) .. "' not found. Use AllTheThings.Audio:CreateSoundPack first!");
	end
	local names = GetEnabledNames();
	OverrideSoundPack = nil;
	names[name] = enabled and true or nil;
	-- There is always at least one
	if next(names) == nil then names.Default = true; end
	if enabled then
		CurrentSoundPack = soundPack;
	elseif CurrentSoundPack == soundPack then
		CurrentSoundPack = api:GetEnabledSoundPacks()[1];
	end
	AllTheThingsSavedVariables.CurrentSoundPack = CurrentSoundPack.name;
	SendEvent("Activated", CurrentSoundPack);
end
function api:CreateSoundPack(name, sounds)
	if not name or type(name) ~= "string" then
		error("SoundPack '" .. tostring(name) .. "' is invalid!");
	end
	local soundPack = SoundPacks[name];
	if not soundPack then
		SoundPacks[name] = sounds;
	elseif soundPack ~= sounds then
		error("Sound Pack '" .. name .. "' is already in use by another sound pack.");
	end
	sounds.name = name;
	SendEvent("Created", sounds);
	return sounds;
end
-- Returns the Sound Pack which was activated last. Use GetEnabledSoundPacks for all of them.
function api:GetActiveSoundPack()
	return OverrideSoundPack or CurrentSoundPack;
end
function api:GetAllSoundPacks()
	return SoundPacks;
end
function api:GetSoundPack(name)
	return SoundPacks[name];
end
function api:RegisterForSoundPackEvents(handler)
	if type(handler) ~= "function" then
		error("Invalid event handler '" .. tostring(handler) .. "'");
	end
	EventHandlers[#EventHandlers+1] = handler
end
function api:ReloadSoundPack()
	CurrentSoundPack = SoundPacks[AllTheThingsSavedVariables.CurrentSoundPack or "Default"] or CurrentSoundPack;
	SendEvent("Activated", api:GetActiveSoundPack());
end
DefaultSoundPack = api:CreateSoundPack("Default", {
	COMPLETE = {
		app.asset("complete1.ogg"),
	},
	DEATH = {
		app.asset("death.ogg"),
	},
	FANFARE = {
		app.asset("fanfare1.ogg"),
		app.asset("fanfare2.ogg"),
		app.asset("fanfare3.ogg"),
		app.asset("fanfare4.ogg"),
		app.asset("fanfare5.ogg"),
		app.asset("fanfare6.ogg"),
	},
	MOUNTFANFARE = {
		app.asset("mountfanfare1.ogg"),
	},
	RAREFIND = {
		app.asset("rarefind1.wav"),
	},
	REMOVE = {
		app.asset("remove1.ogg"),
	},
	REPORT = {},	-- Only specifying the REPORT table prevents any report sound from playing
});
CurrentSoundPack = DefaultSoundPack;

-- Some extra Sound Packs
api:CreateSoundPack("Default (With Report Sounds)", {
	REPORT = {
		app.asset("report1.ogg"),
	},
});

-- Returns the enabled Sound Packs which are available, sorted by their name
function api:GetEnabledSoundPacks()
	if OverrideSoundPack then return { OverrideSoundPack }; end
	local soundPacks = {};
	for name in pairs(GetEnabledNames()) do
		soundPacks[#soundPacks + 1] = SoundPacks[name];
	end
	if #soundPacks == 0 then return { DefaultSoundPack }; end
	table.sort(soundPacks, function(a, b) return a.name < b.name; end);
	return soundPacks;
end
-- Returns the sounds of a type from all enabled Sound Packs, and the Sound Pack of each of them.
-- The default ones are used when none of the Sound Packs has the type.
function api:GetActiveSounds(soundType)
	local sounds, sources, found = {}, {}, false;
	for _,soundPack in ipairs(api:GetEnabledSoundPacks()) do
		local packSounds = soundPack[soundType];
		if packSounds then
			found = true;
			for _,sound in ipairs(packSounds) do
				sounds[#sounds + 1] = sound;
				sources[#sources + 1] = soundPack;
			end
		end
	end
	if not found then
		for _,sound in ipairs(DefaultSoundPack[soundType] or app.EmptyTable) do
			sounds[#sounds + 1] = sound;
			sources[#sources + 1] = DefaultSoundPack;
		end
	end
	return sounds, sources;
end
-- Types of sounds can be turned off
function api:IsSoundTypeMuted(soundType)
	local muted = AllTheThingsSavedVariables and AllTheThingsSavedVariables.MutedSoundTypes;
	return muted and muted[soundType] or false;
end
function api:SetSoundTypeMuted(soundType, isMuted)
	if not DefaultSoundPack[soundType] then
		error("Sound type '" .. tostring(soundType) .. "' is not valid");
	end
	local muted = AllTheThingsSavedVariables.MutedSoundTypes;
	if not muted then
		muted = {};
		AllTheThingsSavedVariables.MutedSoundTypes = muted;
	end
	muted[soundType] = isMuted and true or nil;
end
-- Plays a sound to test it, regardless of the settings, and stops the one which was tested before
local testHandle;
function api:TestSound(sound)
	if testHandle and StopSound then StopSound(testHandle); end
	local _, handle = (type(sound) == "string" and PlaySoundFile or PlaySound)(sound, app.Settings:GetTooltipSetting("Channel"));
	testHandle = handle;
end

-- Play Audio API
local SoundDelays = setmetatable({}, {
	__index = function(t, key)
		return 0;
	end
});
local function PlayAudio(soundType, setting)
	local settings = app.Settings
	if not setting or settings:GetTooltipSetting(setting) then
		-- Don't spam the users. It's nice sometimes, but let's put a delay of at least 1 second on there.
		local now = time();
		if SoundDelays[soundType] < now then
			local targetAudio = not api:IsSoundTypeMuted(soundType) and api:GetActiveSounds(soundType);
			if targetAudio then
				local audioCount = #targetAudio;
				if audioCount > 0 then
					SoundDelays[soundType] = now + 1;
					local soundFile = targetAudio[math_random(1, audioCount)];
					if soundFile then
						(type(soundFile) == "string" and PlaySoundFile or PlaySound)(soundFile, settings:GetTooltipSetting("Channel"));
						-- app.PrintDebug("PlayAudio",soundFile)
						return true;
					end
				end
			end
		end
	end
end
function api:PlayCompleteSound()
	PlayAudio("COMPLETE", "Celebrate");
end
function api:PlayDeathSound()
	PlayAudio("DEATH", "PlayDeathSound");
end
function api:PlayFanfare()
	PlayAudio("FANFARE", "Celebrate");
end
function api:PlayMountFanfare()
	if not PlayAudio("MOUNTFANFARE", "Celebrate") and not api:IsSoundTypeMuted("MOUNTFANFARE") then
		PlayAudio("FANFARE", "Celebrate")
	end
end
function api:PlayRareFindSound()
	PlayAudio("RAREFIND", "RareFind");
end
function api:PlayRemoveSound()
	PlayAudio("REMOVE", "Warn:Removed");
end
function api:PlayReportSound()
	if app.Settings:GetTooltipSetting("Warn:Removed") or app.Settings:GetTooltipSetting("Celebrate") or app.Contributor then
		PlayAudio("REPORT");
	end
end

-- Deprecated functions (they will still work for now)
-- Crieve NOTE: Not sure if that comment above also applies to the following functions too.

-- Accepts various 'type' values to insert a Sound into the respective table
function app.AddSound(tableName, sound)
	local soundType = type(sound);
	if soundType ~= "string" and soundType ~= "number" then
		error("Sound must be either a string FilePath ('Interface/...') or a FileDataID number");
	end
	tableName = (tableName or ""):upper();
	if not DefaultSoundPack[tableName] then	-- If it isn't in the default sound pack, it's not valid for any Sound Pack for ATT.
		error("Sound table '".. tableName .. "' is not valid");
	end
	local deprecatedSoundPack = SoundPacks.Modified or api:CreateSoundPack("Modified", {});
	local soundTable = deprecatedSoundPack[tableName];
	if not soundTable then
		soundTable = {};
		for i,snd in ipairs(DefaultSoundPack[tableName]) do
			soundTable[#soundTable+1] = snd
		end
		deprecatedSoundPack[tableName] = soundTable;
	end
	soundTable[#soundTable+1] = sound
end
-- Allows clearing the Sounds for a given 'type' of Sound
function app.ClearSounds(tableName)
	tableName = (tableName or ""):upper();
	if not DefaultSoundPack[tableName] then	-- If it isn't in the default sound pack, it's not valid for any Sound Pack for ATT.
		error("Sound table '".. tableName .. "' is not valid");
	end
	local deprecatedSoundPack = SoundPacks.Modified or api:CreateSoundPack("Modified", {});
	local soundTable = deprecatedSoundPack[tableName];
	if not soundTable then
		deprecatedSoundPack[tableName] = {};
	else
		wipe(soundTable);
	end
end

-- Note that any enabled sound table will completely replace the Default sounds for that table
-- The numbers are sounds of the game, which older clients don't have. Those use the Default sounds instead.
local HasModernSounds, HasPandariaSounds = app.GameBuildVersion >= 110000, app.GameBuildVersion >= 50000;	-- Forever is neither
local AprilFoolsSoundPack = api:CreateSoundPack("April Fools Sounds", {
	COMPLETE = HasModernSounds and {
		49371,
		49372,
	} or nil,
	DEATH = HasPandariaSounds and {
		20278,
	} or nil,
	FANFARE = {
		app.asset("ffdamnson.ogg"),
		app.asset("ffanime.ogg"),
		app.asset("ffezz.ogg"),
		app.asset("ffprettygood.ogg"),
		app.asset("ffwow.ogg"),
		app.asset("ffnice.ogg"),
	},
	MOUNTFANFARE = HasModernSounds and {
		108419,
	} or nil,
	RAREFIND = HasModernSounds and {
		256849,
	} or nil,
	REMOVE = HasPandariaSounds and {
		24272,
	} or nil,
	REPORT = HasModernSounds and {
		161694,
	} or nil,
});

local StartupSpecialSoundPack
local currentCalendarTime = C_DateAndTime and C_DateAndTime.GetCurrentCalendarTime()
if currentCalendarTime and currentCalendarTime.month == 4 and currentCalendarTime.monthDay == 1 then
	StartupSpecialSoundPack = AprilFoolsSoundPack
end

app.AddEventHandler("OnReady", function()
	-- Prepare the Sound Pack!
	AllTheThingsSavedVariables.SoundPackByType = nil;	-- was only used while testing
	OverrideSoundPack = StartupSpecialSoundPack;
	api:ReloadSoundPack();
end);
