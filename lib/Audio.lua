-- Audio lib
local _, app = ...;
local api = {};
app.Audio = api;

-- Sound Pack Management
local EventHandlers, SoundPacks, CurrentSoundPack = {}, {}, nil;
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
	AllTheThingsSavedVariables.CurrentSoundPack = CurrentSoundPack.name;
	for i,handler in ipairs(EventHandlers) do
		pcall(handler, "Activated", CurrentSoundPack);
	end
	return CurrentSoundPack;
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
	for i,handler in ipairs(EventHandlers) do
		pcall(handler, "Created", sounds);
	end
	return sounds;
end
function api:GetActiveSoundPack()
	return CurrentSoundPack;
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
	tinsert(EventHandlers, handler);
end
function api:ReloadSoundPack()
	api:ActivateSoundPack(AllTheThingsSavedVariables.CurrentSoundPack or "Default", true);
end
local DefaultSoundPack = api:CreateSoundPack("Default", {
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

-- Play Audio API
local SoundDelays = setmetatable({}, {
	__index = function(t, key)
		return 0;
	end
});
local function PlayAudio(soundType, setting)
	if not setting or app.Settings:GetTooltipSetting(setting) then
		-- Don't spam the users. It's nice sometimes, but let's put a delay of at least 1 second on there.
		local now = time();
		if SoundDelays[soundType] < now then
			local targetAudio = CurrentSoundPack[soundType] or DefaultSoundPack[soundType];
			if targetAudio then
				local audioCount = #targetAudio;
				if audioCount > 0 then
					SoundDelays[soundType] = now + 1;
					local soundFile = targetAudio[math.random(1, audioCount)];
					if soundFile then
						(type(soundFile) == "string" and PlaySoundFile or PlaySound)(soundFile, app.Settings:GetTooltipSetting("Channel"));
						app.PrintDebug("PlayAudio",soundFile)
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
	if not PlayAudio("MOUNTFANFARE", "Celebrate") then
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
			tinsert(soundTable, snd);
		end
		deprecatedSoundPack[tableName] = soundTable;
	end
	tinsert(soundTable, sound);
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

-- Legend of Zelda sound pack
local ZeldaTwilightPrincessSoundPack = api:CreateSoundPack("Legend of Zelda", {
	COMPLETE = {
		app.asset("Zelda_WiiIntro.wav"),
	},
	DEATH = {
		app.asset("Zelda_Fairy.wav"),
	},
	FANFARE = {
		app.asset("Zelda_FirstRupee.wav"),
		app.asset("Zelda_Fanfare_SmallItem.wav"),
		app.asset("Zelda_Fanfare_Item.wav"),
		app.asset("Zelda_Fanfare_HeartContainer.wav"),
		app.asset("Zelda_Fanfare_GoldenBug.wav"),
		app.asset("Zelda_Fanfare_CatchFish.wav"),
	},
	MOUNTFANFARE = {
		app.asset("Zelda_Epona.wav"),
	},
	RAREFIND = {
		app.asset("Zelda_Secret.wav"),
	},
	REMOVE = {},
	REPORT = {},
});

-- Note that any enabled sound table will completely replace the Default sounds for that table
local AprilFoolsSoundPack = api:CreateSoundPack("April Fools Sounds", {
	COMPLETE = {
		49371,
		49372,
	},
	DEATH = {
		20278,
	},
	FANFARE = {
		app.asset("ffdamnson.ogg"),
		app.asset("ffanime.ogg"),
		app.asset("ffezz.ogg"),
		app.asset("ffprettygood.ogg"),
		app.asset("ffwow.ogg"),
		app.asset("ffnice.ogg"),
	},
	MOUNTFANFARE = {
		108419,
	},
	RAREFIND = {
		256849,
	},
	REMOVE = {
		24272,
	},
	REPORT = {
		161694,
	},
});

local StartupSpecialSoundPack
local currentCalendarTime = C_DateAndTime and C_DateAndTime.GetCurrentCalendarTime()
if currentCalendarTime and currentCalendarTime.month == 4 and currentCalendarTime.monthDay == 1 then
	StartupSpecialSoundPack = AprilFoolsSoundPack
end

app.AddEventHandler("OnReady", function()
	-- Prepare the Sound Pack!
	api:ActivateSoundPack(StartupSpecialSoundPack or AllTheThingsSavedVariables.CurrentSoundPack or "Default", true);
end);
