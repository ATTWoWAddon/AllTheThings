
-- Color Module
local _, app = ...;

-- Dependencies
-- Table Lib
-- Faction Data Module
-- Retrieving Data Module

-- Concepts:
-- Encapsulates the functionality for handling and interacting with colors in the addon, which are typically represented in Text

-- Global locals
local rawget, ipairs, pairs, abs, floor, RAID_CLASS_COLORS, SecondsToTime, sformat, tonumber, select, GetClassInfo, BONUS_OBJECTIVE_TIME_LEFT
	= rawget, ipairs, pairs, abs, floor, RAID_CLASS_COLORS, SecondsToTime, string.format, tonumber, select, GetClassInfo, BONUS_OBJECTIVE_TIME_LEFT;
local Alliance, Horde = Enum.FlightPathFaction.Alliance, Enum.FlightPathFaction.Horde;

-- App locals
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
local ALLIANCE_ONLY = app.Modules.FactionData.FACTION_RACES[1];
local HORDE_ONLY = app.Modules.FactionData.FACTION_RACES[2];
local containsAny = app.containsAny;
local CS = CreateFrame("ColorSelect", nil, app.frame);
CS:Hide();

-- Module locals

local function HexToARGB(hex)
	return tonumber("0x"..hex:sub(1,2)), tonumber("0x"..hex:sub(3,4)), tonumber("0x"..hex:sub(5,6)), tonumber("0x"..hex:sub(7,8));
end
local function HexToRGB(hex)
	return tonumber("0x"..hex:sub(1,2)) / 255, tonumber("0x"..hex:sub(3,4)) / 255, tonumber("0x"..hex:sub(5,6)) / 255;
end
-- Color AARRGGBB values used throughout ATT
local colors = app.Colors;
local Colorize = function(str, color)
	return "|c"..color..str.."|r";
end
local RGBToHex = function(r, g, b)
	return sformat("ff%02x%02x%02x",
		r <= 255 and r >= 0 and r or 0,
		g <= 255 and g >= 0 and g or 0,
		b <= 255 and b >= 0 and b or 0);
end
-- Attempts to determine the colorized text for a given Group
app.TryColorizeName = function(group, name)
	name = name or group.name;
	if IsRetrieving(name) then return name; end
	-- raid headers
	if group.isRaid then
		return Colorize(name, colors.Raid);
	-- groups which are ignored for progress
	elseif group.sourceIgnored then
		return Colorize(name, colors.SourceIgnored);
	-- faction rep status
	elseif group.factionID and group.standing then
		return app.GetCurrentFactionStandingText(group.factionID, group.standing, name);
	-- locked/breadcrumb things
	elseif group.locked or group.isBreadcrumb then
		return Colorize(name, colors.Locked);
		-- if people REALLY only want to see colors in account/debug then we can comment this in
	elseif app.Settings:GetTooltipSetting("UseMoreColors") --and (app.MODE_ACCOUNT or app.MODE_DEBUG)
	then
		-- class color
		if group.classID then
			return Colorize(name, RAID_CLASS_COLORS[select(2, GetClassInfo(group.classID))].colorStr);
		elseif group.c and #group.c == 1 then
			return Colorize(name, RAID_CLASS_COLORS[select(2, GetClassInfo(group.c[1]))].colorStr);
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
		-- un-acquirable color
		-- grey color for things which are otherwise not available to the current character (would only show in account mode due to filtering)
		elseif not app.CurrentCharacterFilters(group) then
			return Colorize(name, colors.Unavailable);
		end
	end
	return name;
end
-- Returns 'Time Left: %s'
app.GetColoredTimeRemaining = function(time)
	if time and time > 0 then
		local timeLeft = BONUS_OBJECTIVE_TIME_LEFT:format(SecondsToTime(time * 60));
		if time < 30 then
			return Colorize(timeLeft, colors.TimeUnder30Min);
		elseif time < 120 then
			return Colorize(timeLeft, colors.TimeUnder2Hr);
		else
			return Colorize(timeLeft, colors.Time);
		end
	end
end
local function ConvertColorRgbToHsv(r, g, b)
  CS:SetColorRGB(r, g, b);
  local h,s,v = CS:GetColorHSV()
  return {h=h,s=s,v=v}
end
local red, green = ConvertColorRgbToHsv(1,0,0), ConvertColorRgbToHsv(0,1,0);
local progress_colors = setmetatable({[1] = colors.Completed}, {
	__index = function(t, p)
		local h;
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
		local color = RGBToHex(r * 255, g * 255, b * 255);
		t[p] = color;
		return color;
	end
});

-- Color API Implementation
-- Access via AllTheThings.Modules.Color
local api = {};
app.Modules.Color = api;
api.GetProgressColor = function(p)
	return progress_colors[p];
end
api.Colorize = Colorize;
api.RGBToHex = RGBToHex;
api.HexToARGB = HexToARGB;
api.ColorizeRGB = function(str, r, g, b)
	return "|c"..RGBToHex(r, g, b)..str.."|r";
end