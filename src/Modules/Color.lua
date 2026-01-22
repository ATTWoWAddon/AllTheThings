
-- Color Module
local _, app = ...;
local L = app.L;

-- Dependencies
-- Table Lib
-- Faction Data Module
-- Retrieving Data Module

-- Concepts:
-- Encapsulates the functionality for handling and interacting with colors in the addon, which are typically represented in Text

-- Global locals
local abs, ceil, floor, max, min, tonumber, tostring, SecondsToTime
	= abs, ceil, floor, max, min, tonumber, tostring, SecondsToTime;

-- Module locals
local CS = CreateFrame("ColorSelect", nil, app.frame);
CS:Hide();

-- This returns values between 0 and 1, not 0 and 255!
-- Color AARRGGBB values used throughout ATT
local function BindComponent(c)
	-- Binds a color component value (0 and 1) to (0 and 255) instead.
	return min(255, max(0, (c or 0) * 255));
end
local function HexToARGB(hex)
	return tonumber("0x"..hex:sub(1,2)) / 255, tonumber("0x"..hex:sub(3,4)) / 255, tonumber("0x"..hex:sub(5,6)) / 255, tonumber("0x"..hex:sub(7,8)) / 255;
end

local colorStringFormat = "ff%02x%02x%02x";
local function RGBToHex(r, g, b)
	return colorStringFormat:format(
		BindComponent(r),
		BindComponent(g),
		BindComponent(b));
end
local function RGBToHSV(r, g, b)
  CS:SetColorRGB(r, g, b);
  local h,s,v = CS:GetColorHSV()
  return {h=h,s=s,v=v}
end
local function Colorize(str, hex)
	return "|c"..hex..str.."|r";
end
local function ColorizeRGB(str, r, g, b)
	return "|c"..RGBToHex(r, g, b)..str.."|r";
end

-- Generates a Color Scale between Red and Green with the Blue Completed color for 100%
local colors, red, green, h = app.Colors, RGBToHSV(1,0,0), RGBToHSV(0,1,0);
local ProgressColors = setmetatable({
	[1] = colors.Completed,
}, {
	__index = function(t, p)
		p = tonumber(p);
		-- anything over 100% will just be 100% color
		if p > 1 then return t[1]; end
		-- anything somehow under 0 will just be 0
		if p < 0 then return t[0]; end
		if abs(red.h - green.h) > 180 then
			local angle = (360 - abs(red.h - green.h)) * p;
			if red.h < green.h then
				h = floor(red.h - angle);
				if h < 0 then h = 360 + h end
			else
				h = floor(red.h + angle);
				if h > 360 then h = h - 360 end
			end
		else
			h = floor(red.h-(red.h-green.h)*p)
		end
		CS:SetColorHSV(h, red.s-(red.s-green.s)*p, red.v-(red.v-green.v)*p);
		local r,g,b = CS:GetColorRGB();
		local color = RGBToHex(r, g, b);
		t[p] = color;
		return color;
	end
});
local function GetProgressColor(percent)
	return ProgressColors[percent];
end

-- Progress Text Helpers
local function GetProgressTextDefault(progress, total)
	return tostring(progress) .. " / " .. tostring(total);
end
local function GetProgressTextRemaining(progress, total)
	return tostring(max(0, (total or 0) - (progress or 0)));
end
local GetProgressText = GetProgressTextDefault;

local function GetNumberWithZeros(number, desiredLength)
	if desiredLength > 0 then
		local str = tostring(number);
		local length = str:len();
		local pos = str:find("[.]");
		if not pos then
			str = str .. ".";
			for i=desiredLength,1,-1 do
				str = str .. "0";
			end
		else
			local totalExtra = desiredLength - (length - pos);
			for i=totalExtra,1,-1 do
				str = str .. "0";
			end
			if totalExtra < 1 then
				str = str:sub(1, pos + desiredLength);
			end
		end
		return str;
	else
		return tostring(floor(number));
	end
end
local function GetCoordString(x, y)
	return GetNumberWithZeros(app.round(x, 1), 1) .. ", " .. GetNumberWithZeros(app.round(y, 1), 1);
end
local function GetPatchString(patch)
	patch = tonumber(patch)
	return patch and (floor(patch / 10000) .. "." .. (floor(patch / 100) % 100) .. "." .. (patch % 10))
end
local SettingsPrecision, UseMoreColors
local function GetPercentageTextDefault(percent)
	return " (" .. GetNumberWithZeros(percent * 100, SettingsPrecision) .. "%)";
end
local function GetPercentageEmpty(percent)
	return " ";
end
local GetPercentageText = GetPercentageTextDefault;
local TooltipSettingsSwaps = {
	Precision = function(value) SettingsPrecision = value end,
	UseMoreColors = function(value) UseMoreColors = value end,
	["Show:Remaining"] = function(value)
		GetProgressText = value and GetProgressTextRemaining or GetProgressTextDefault
	end,
	["Show:Percentage"] = function(value)
		GetPercentageText = value and GetPercentageTextDefault or GetPercentageEmpty
	end,
}
app.AddEventHandler("OnStartup", function()
	for k, v in pairs(TooltipSettingsSwaps) do
		v(app.Settings:GetTooltipSetting(k))
	end
end)
app.AddEventHandler("Settings.OnSet", function(container, key, value)
	if container == "Tooltips" then
		local func = TooltipSettingsSwaps[key]
		if func then
			func(value)
			app.CallbackEvent("OnRedrawWindows")
		end
	end
end)

local function GetProgressColorText(progress, total)
	if total and total > 0 then
		local percent = min(1, (progress or 0) / total);
		return Colorize(GetProgressText(progress, total) .. GetPercentageText(percent), GetProgressColor(percent));
	end
end
local function GetProgressTextToNextPercent(progress, total)
	if total <= progress then
		return Colorize(L.YOU_DID_IT, GetProgressColor(1));
	else
		local originalPercent = progress / total;
		local nextPercent = ceil(originalPercent * 100);
		local roundedPercent = nextPercent * 0.01;
		local diff = ceil(total * (roundedPercent - originalPercent));
		if diff < 1 or nextPercent == 100 then
			return Colorize((total - progress) .. L.THINGS_UNTIL .. "100%", GetProgressColor(1));
		elseif diff == 1 then
			return Colorize(diff .. L.THING_UNTIL .. nextPercent .. "%", GetProgressColor(roundedPercent));
		else
			return Colorize(diff .. L.THINGS_UNTIL .. nextPercent .. "%", GetProgressColor(roundedPercent));
		end
	end
end


-- Color API Implementation
-- Access via AllTheThings.Modules.Color
local api = {};
app.Modules.Color = api;
api.Colorize = Colorize;
api.ColorizeRGB = ColorizeRGB;
api.HexToARGB = HexToARGB;
api.RGBToHex = RGBToHex;
api.GetCoordString = GetCoordString;
api.GetPatchString = GetPatchString;
api.GetNumberWithZeros = GetNumberWithZeros;
api.GetProgressColor = GetProgressColor;
api.GetProgressColorText = GetProgressColorText;
api.GetProgressTextToNextPercent = GetProgressTextToNextPercent;
api.GetProgressText = function(...)
	-- NOTE: This is so you can cache the function externally and not lose the ability to swap the behaviour.
	return GetProgressText(...);
end

-- TODO: Convert these to module locals. (meaning api scoped)
local containsAny, contains = app.containsAny, app.contains;
local BONUS_OBJECTIVE_TIME_LEFT = BONUS_OBJECTIVE_TIME_LEFT;
local Alliance, Horde = Enum.FlightPathFaction.Alliance, Enum.FlightPathFaction.Horde;
local ALLIANCE_ONLY = app.Modules.FactionData.FACTION_RACES[1];
local HORDE_ONLY = app.Modules.FactionData.FACTION_RACES[2];
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
app.TryColorizeName = function(group, name)
	-- Attempts to determine the colorized text for a given Group
	name = name or group.name;
	if IsRetrieving(name) then return name; end
	-- raid headers
	if group.isRaid then
		return Colorize(name, colors.Raid);
	-- groups which are ignored for progress
	elseif group.sourceIgnored then
		return Colorize(name, colors.SourceIgnored);
	-- locked things
	elseif group.locked then
		return Colorize(name, colors.Locked);
	-- lockable things (use breadcrumb color for similar concept)
	elseif group.lc then
		return Colorize(name, colors.Breadcrumb)
	-- breadcrumbs (should always be covered within Quest lib)
	-- elseif group.isBreadcrumb then
	-- 	return Colorize(name, colors.Breadcrumb);
	-- if people REALLY only want to see colors in account/debug then we can comment this in
	elseif UseMoreColors --and (app.MODE_DEBUG_OR_ACCOUNT)
	then
		-- class color
		if group.classID then
			return Colorize(name, app.ClassInfoByID[group.classID].colorStr);
		elseif group.accountWide then
			return Colorize(name, colors.Account)
		elseif group.c and #group.c == 1 then
			return Colorize(name, app.ClassInfoByID[group.c[1]].colorStr);
		-- faction colors
		elseif group.r then
			-- red for Horde
			if group.r == Horde then
				return Colorize(name, colors.Horde);
			-- blue for Alliance
			elseif group.r == Alliance then
				return Colorize(name, colors.Alliance);
			end
		-- specific races
		elseif group.races then
			local hrace = containsAny(group.races, HORDE_ONLY);
			local arace = containsAny(group.races, ALLIANCE_ONLY);
			if hrace and not arace then
				-- this group requires a horde-only race, and not any alliance race
				return Colorize(name, colors.Horde);
			elseif arace and not hrace then
				-- this group requires a alliance-only race, and not any horde race
				return Colorize(name, colors.Alliance);
			end
		-- specific raceID
		elseif group.raceID then
			local hrace = contains(HORDE_ONLY, group.raceID);
			local arace = contains(ALLIANCE_ONLY, group.raceID);
			if hrace and not arace then
				-- this group requires a horde-only race, and not any alliance race
				return Colorize(name, colors.Horde);
			elseif arace and not hrace then
				-- this group requires a alliance-only race, and not any horde race
				return Colorize(name, colors.Alliance);
			end
		-- un-acquirable color
		-- grey color for things which are otherwise not available to the current character (would only show in account mode due to filtering)
		elseif not app.CurrentCharacterFilters(group) then
			return Colorize(name, colors.Unavailable);
		elseif group.questID and app.AccountWideQuestsDB[group.questID] then
			return Colorize(name, colors.Account)
		end
	end
	return name;
end
app.GetColoredTimeRemaining = function(t)
	-- Returns 'Time Left: %s'
	if t and t > 0 then
		local timeLeft = BONUS_OBJECTIVE_TIME_LEFT:format(SecondsToTime(t))
		if t < 30 then
			return Colorize(timeLeft, colors.TimeUnder30Min);
		elseif t < 120 then
			return Colorize(timeLeft, colors.TimeUnder2Hr);
		else
			return Colorize(timeLeft, colors.Time);
		end
	end
end
