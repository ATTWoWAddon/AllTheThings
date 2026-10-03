
-- App locals
local _,app = ...;

local C_CreatureInfo_GetRaceInfo = C_CreatureInfo.GetRaceInfo;
if C_CreatureInfo_GetRaceInfo then

	local function GetRaceName(raceID)
		local info = C_CreatureInfo_GetRaceInfo(raceID);
		return info and info.raceName or (RACE .. " #" .. tostring(raceID));
	end

	local cache = app.CreateCache("raceID");
	local function default_name(t)
		return GetRaceName(t.raceID);
	end
	local function default_icon(t)
		local raceInfo = app.RaceDB.ID[t.raceID]
		if raceInfo then
			local icon = raceInfo.icon
			if icon then return icon end
			local raceGenderInfo = raceInfo.gender
			raceGenderInfo = raceGenderInfo and raceGenderInfo[app.Gender]
			icon = raceGenderInfo and raceGenderInfo.icon
			return icon
		end
	end
	app.GetRaceName = GetRaceName;
	app.CreateRace = app.CreateClass("Race", "raceID", {
		["icon"] = function(t)
			return cache.GetCachedField(t, "icon", default_icon);
		end,
		["name"] = function(t)
			return cache.GetCachedField(t, "name", default_name);
		end,
	});
else
	app.GetRaceName = function(raceID)
		return RACE .. " #" .. tostring(raceID);
	end;
	app.CreateRace = app.CreateUnimplementedClass("Race", "raceID");
end
