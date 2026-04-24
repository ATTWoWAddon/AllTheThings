-- App locals
local _,app = ...;
local pairs, tostring, math_floor, setmetatable, rawget
	= pairs, tostring, math.floor, setmetatable, rawget;
local EXPANSION_DATA = app.L.EXPANSION_DATA;

-- These should match the `patch()` function shifts for `expansion()` objects
-- ref: .contrib\Parser\lib\Functions\Shortcuts.lua
local PatchShift, RevShift = 10 ^ 2, 10 ^ 2;
local function GetPatchString(patchID, expansionID)
	local patch_decimal = PatchShift * (patchID - expansionID);
	local patch = math_floor(patch_decimal + 0.0001);
	local rev_decimal = RevShift * (patch_decimal - patch)
	local rev = math_floor(rev_decimal + 0.0001);
	return tostring(expansionID).."."..tostring(patch).."."..tostring(rev)
end

local ExpansionNames = setmetatable({}, {
	__index = function(t, expansionID)
		-- /script for key,value in pairs(_G) do if key:find("EXPANSION_NAME") then print(key, value); end end
		local name = _G["EXPANSION_NAME" .. (expansionID - 1)] or (EXPANSION_FILTER_TEXT .. " " .. expansionID);
		t[expansionID] = name;
		return name;
	end,
});
local ExpansionInfoByID = setmetatable({}, {
	__index = function(t, expansionID)
		local info = EXPANSION_DATA[expansionID] or {};
		if not info.name then info.name = ExpansionNames[expansionID] end
		info.expansionID = expansionID;
		t[expansionID] = info;
		return info;
	end
});
local PatchInfoByID = setmetatable({}, {
	__index = function(t, patchID)
		local expansionID = math_floor(patchID);
		local patchString = GetPatchString(patchID, expansionID);
		local info = setmetatable({ patchString = patchString }, { __index = ExpansionInfoByID[expansionID] });
		if expansionID ~= patchID then info.name = patchString; end
		t[patchID] = info
		return info;
	end
});

app.CreateExpansion = app.CreateClassWithInfo("Expansion", "expansionID", PatchInfoByID, {
	["ignoreSourceLookup"] = app.ReturnTrue,
	["ShouldShowEventSchedule"] = app.ReturnTrue,
});