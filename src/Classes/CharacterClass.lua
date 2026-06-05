do
-- App locals
local _,app = ...;
local Colorize = app.Modules.Color.Colorize;

-- Global locals
local C_CreatureInfo = C_CreatureInfo;
local RAID_CLASS_COLORS, GetPlayerInfoByGUID, UnitClass, UnitGUID, UnitIsGroupLeader, UnitRace
	= RAID_CLASS_COLORS, GetPlayerInfoByGUID, UnitClass, UnitGUID, UnitIsGroupLeader, UnitRace;
local math_floor, rawget, rawset, setmetatable, ipairs
	= math.floor, rawget, rawset, setmetatable, ipairs

local CharacterData
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData, characterData)
	CharacterData = characterData
end);

-- Class Info Helpers
local ClassIcons = {
	[1] = app.asset("ClassIcon_Warrior"),
	[2] = app.asset("ClassIcon_Paladin"),
	[3] = app.asset("ClassIcon_Hunter"),
	[4] = app.asset("ClassIcon_Rogue"),
	[5] = app.asset("ClassIcon_Priest"),
	[6] = app.asset("ClassIcon_DeathKnight"),
	[7] = app.asset("ClassIcon_Shaman"),
	[8] = app.asset("ClassIcon_Mage"),
	[9] = app.asset("ClassIcon_Warlock"),
	[10] = app.asset("ClassIcon_Monk"),
	[11] = app.asset("ClassIcon_Druid"),
	[12] = app.asset("ClassIcon_DemonHunter"),
	[13] = app.asset("ClassIcon_Evoker"),
};
local ClassInfoByID, ClassInfoByClassFile, ClassInfoByClassName = {}, {}, {};
local GetSpecializationInfoByID, SpecInfoMetatable = GetSpecializationInfoByID, nil;
if GetSpecializationInfoByID then
	local tonumber = tonumber
	SpecInfoMetatable = { __index = function(t, key)
		key = tonumber(key)
		-- Blizzard tries accessing ToDebugString on every table randomly because no one knows why
		if not key then return end

		local classID = math_floor(key);
		local specID = math_floor((1000 * (key - classID)) + 0.00001);
		local specID, name, description, icon, role, classFile = GetSpecializationInfoByID(specID);
		if name then
			local specInfo = {
				name = name,
				specID = specID,
				description = description,
				icon = icon,
				role = role
			};
			local classInfo = ClassInfoByClassFile[classFile];
			if classInfo then
				setmetatable(specInfo, { __index = classInfo });
				specInfo.text = Colorize(name, classInfo.colorStr);
			else
				specInfo.text = Colorize(name, app.Colors.SourceIgnored);
			end
			specInfo.icontext = "|T" .. icon .. ":0|t " .. specInfo.text;
			rawset(t, key, specInfo);
			return specInfo;
		end

		local info = {
			icon = ClassIcons[key] or 134400,
			file = "WARRIOR",
			name = UNKNOWN,
			classID = classID,
			colorStr = app.Colors.SourceIgnored,
			text = Colorize(UNKNOWN, app.Colors.SourceIgnored),
			isValid = false,
			c = { classID },
		};
		info.icontext = "|T" .. info.icon .. ":0|t " .. info.text;
		rawset(t, key, info);
		return info;
	end };
else
	SpecInfoMetatable = { __index = function(t, key)
		local info;
		local specID = math_floor(key);
		if specID ~= key then
			info = rawget(t, specID);
		end
		if not info then
			info = {
				icon = ClassIcons[key] or 134400,
				file = "WARRIOR",
				name = UNKNOWN,
				classID = specID,
				colorStr = app.Colors.SourceIgnored,
				text = Colorize(UNKNOWN, app.Colors.SourceIgnored),
				isValid = false,
			};
			info.icontext = "|T" .. info.icon .. ":0|t " .. info.text;
		end
		rawset(t, specID, info);
		return info;
	end };
end
local ClassInfoMetatableAfterCache = { __index = function(t, key)
	local info = {
		icon = 134400,
		file = WARRIOR,
		name = UNKNOWN,
		classID = 0,
		colorStr = app.Colors.SourceIgnored,
		text = Colorize(UNKNOWN, app.Colors.SourceIgnored),
		isValid = false,
	};
	info.icontext = "|T" .. info.icon .. ":0|t " .. info.text;
	rawset(t, key, info);
	return info;
end };
local ClassInfoMetatable = { __index = function(t, key)
	for classID,_ in pairs(ClassIcons) do
		local info = C_CreatureInfo.GetClassInfo(classID);
		if info then
			local colors = RAID_CLASS_COLORS[info.classFile];
			local colorStr = (colors and colors.colorStr) or app.Colors.SourceIgnored;
			info = {
				icon = ClassIcons[classID],
				file = info.classFile,
				name = info.className,
				classID = classID,
				colorStr = colorStr,
				text = Colorize(info.className, colorStr),
				isValid = not not colors,
				c = { classID },
			};
			---@diagnostic disable-next-line: inject-field
			info.icontext = "|T" .. info.icon .. ":0|t " .. info.text;

			rawset(ClassInfoByID, classID, info);
			rawset(ClassInfoByClassFile, info.file, info);
			rawset(ClassInfoByClassName, info.name, info);
		end
	end
	setmetatable(ClassInfoByID, SpecInfoMetatable);
	setmetatable(ClassInfoByClassFile, ClassInfoMetatableAfterCache);
	setmetatable(ClassInfoByClassName, ClassInfoMetatableAfterCache);
	return t[key];
end };
setmetatable(ClassInfoByID, ClassInfoMetatable);
setmetatable(ClassInfoByClassFile, ClassInfoMetatable);
setmetatable(ClassInfoByClassName, ClassInfoMetatable);

-- Returns a string containing the class icons, followed by their respective names if desired
local function GetClassesString(c, includeNames, trim)
	local icons = {}
	local info
	local i = 1
	if includeNames then
		for _,cl in ipairs(c) do
			info = ClassInfoByID[cl]
			if info then
				icons[i] = info.icontext
				i = i + 1
			end
		end
	else
		for _,cl in ipairs(c) do
			info = ClassIcons[cl]
			if info then
				icons[i * 3 - 2] = "|T";
				icons[i * 3 - 1] = info
				icons[i * 3] = ":0|t ";
				i = i + 1
			end
		end
	end
	if trim then
		return app.TableConcat(icons):match('^%s*(.*%S)');
	end
	return app.TableConcat(icons);
end
app.GetClassesString = GetClassesString

-- Implementation
app.CreateCharacterClass = app.CreateClassWithInfo("CharacterClass", "classID", ClassInfoByID, {
	["nmc"] = function(t)
		local nmc = math_floor(t.classID) ~= app.ClassIndex
		t.nmc = nmc
		return nmc
	end,
	["ignoreSourceLookup"] = app.ReturnTrue,
});
local function CacheCharacterDataFromATTCache(_t, unit)
	for guid,character in pairs(CharacterData) do
		if guid == unit or character.name == unit then
			_t.guid = character.guid;
			_t.name = character.name
			_t.realm = character.realm
			if character.classID then
				_t.classID = character.classID;
				_t.icon = ClassInfoByID[character.classID].icon
				local classInfo = ClassInfoByID[character.classID];
				if classInfo then
					_t.className = classInfo.name;
					_t.classFile = classInfo.file;
				end
			end
			if character.raceID then
				_t.raceID = character.raceID;
				local raceInfo = C_CreatureInfo.GetRaceInfo(character.raceID);
				if raceInfo then _t.race = raceInfo.raceName; end
			end
			return true
		end
	end
end
local function CacheCharacterDataFromAPIs(_t, unit)
	local name, realm, guid, className, classFile, classID, raceName, raceFile, raceID;
	local _,_,s3 = ("-"):split(unit)
	if s3 then
		-- It's a GUID.
		guid = unit;
		className, classFile, raceName, raceFile, raceID, name = GetPlayerInfoByGUID(guid);
		if classFile then classID = ClassInfoByClassFile[classFile].classID; end
	else
		name, realm = UnitFullName(unit)
		if name then
			guid = UnitGUID(unit);
			if guid and app.WOWAPI.issecretvalue(guid) then guid = nil; end
			className, classFile, classID = UnitClass(unit);
			raceName, raceFile, raceID = UnitRace(unit);
		else
			_t.name = unit;
		end
	end
	if name then
		_t.name = name;
		_t.realm = realm
		_t.guid = guid;
		if raceID then
			_t.raceID = raceID;
			_t.race = C_CreatureInfo.GetRaceInfo(raceID).raceName;
		end
	end
	if classID then
		_t.className = className;
		_t.classFile = classFile;
		_t.classID = classID;
		_t.icon = ClassInfoByID[classID].icon
	end
end
local cache = app.CreateCache("unit");
local function CacheInfo(t, field)
	local _t, unit = cache.GetCached(t)
	-- no difference in outcome, we just want to prioritize the ATT Cache lookup
	if CacheCharacterDataFromATTCache(_t, unit) or CacheCharacterDataFromAPIs(_t, unit) then end
	if field then return _t[field] end
end
local UnitFields = {
	["text"] = function(t)
		return t.classText;
	end,
	["title"] = function(t)
		if IsInGroup() then
			if rawget(t, "isML") then return MASTER_LOOTER; end
			if UnitIsGroupLeader(t.unit) then return RAID_LEADER; end
		end
	end,
	["lvl"] = function(t)
		return UnitLevel(t.unit);
	end,
	["classText"] = function(t)
		local classFile = t.classFile;
		local fullName = (t.name or UNKNOWN) .. " - " .. (t.realm or UNKNOWN)
		if classFile then return "|c" .. RAID_CLASS_COLORS[classFile].colorStr .. fullName .. "|r"; end
		return fullName
	end,
	["tooltipText"] = function(t)
		local text = t.text;
		local icon = t.icon;
		if icon then text = "|T" .. icon .. ":0|t " .. text; end
		return text;
	end,
	["ignoreSourceLookup"] = app.ReturnTrue,
	isHeader = app.ReturnTrue,
	isMinilistHeader = app.ReturnTrue,
}
-- Assign Cache-Info Fields
for _,field in ipairs({ "name", "realm", "icon", "guid", "race", "raceID", "className", "classFile", "classID" }) do
	UnitFields[field] =	function(t)
		return cache.GetCachedField(t, field, CacheInfo)
	end
end
app.CreateUnit = app.CreateClass("Unit", "unit", UnitFields)

-- Track Yourself in the Main List, but only in Debug Mode!
app.AddEventHandler("OnBuildDataCache", function(categories)
	categories.Yourself = app.CreateUnit("player", {
		description = app.L.DEBUG_LOGIN,
		races = { app.RaceIndex },
		c = { app.ClassIndex },
		r = app.FactionID,
		collected = 1,
		nmr = false,
		SortPriority = 200,
		OnUpdate = function(self)
			self.lvl = app.Level;
			if app.MODE_DEBUG then
				self.collectible = true;
			else
				self.collectible = false;
			end
		end
	});
end);

-- External API
app.ClassInfoByClassFile = ClassInfoByClassFile;
app.ClassInfoByClassName = ClassInfoByClassName;
app.ClassInfoByID = ClassInfoByID;
end
