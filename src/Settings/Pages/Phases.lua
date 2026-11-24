local appName, app = ...;
if not app.IsClassic then return; end	-- This is only available in Classic!
local date, L, settings = date, app.L, app.Settings;

-- Global locals
local ipairs, pairs, time, tostring
	= ipairs, pairs, time, tostring;

-- Settings: Phases Page
local child = settings:CreateOptionsPage(L.PHASES_PAGE, appName)

local UnobtainableSettingsBase = settings.__UnobtainableSettingsBase;
local phases = L.PHASES;

-- Update the default unobtainable states based on build version.
local now = time();
for u,phase in pairs(phases) do
	if phase.minimumBuildVersion then
		if app.GameBuildVersion >= phase.minimumBuildVersion then
			if phase.buildVersion and app.GameBuildVersion >= phase.buildVersion and (not phase.release or phase.release <= now) then
				UnobtainableSettingsBase.__index[u] = true;
			else
				UnobtainableSettingsBase.__index[u] = false;
			end
		else
			UnobtainableSettingsBase.__index[u] = false;
		end
	end
end
UnobtainableSettingsBase.__index[11] = true;

-- The phases of each expansion, in order. Negative ones are the parts of the phase before them.
local PhasesByExpansion = {
	{ 11, -1101, 12, 13, 14, 15, -1501, -1502, -1503, -1504, 16, -1601, -1602, 1603, 1604, 1605, -1606, -1607, -1608, -1609, -1610, -1611, -1612 },
	app.GameBuildVersion > 20000 and { 17, -1701, 18, -1801, -1802, 19, -1901, -1902, 20, 21, -2101, -2102, -2103, -2104, -2105, -2106, -2107, -2108 },
	app.GameBuildVersion > 30000 and { 30, -3001, 31, -3101, 32, 33, -3301, -3302, -3303, -3304 },
	app.GameBuildVersion > 40000 and { 40, -4001, -4002, 41, 42 },
	app.GameBuildVersion > 50000 and { 50, -5001, -5002, -5003, -5004, -5005, -5006, -5007, 51, 52, -5201, 53, 54, -5401 },
};

local function GetPhaseTooltip(phase, u)
	local description = phase.description;
	if phase.lore then description = description .. "\n \n" .. phase.lore; end
	if phase.release and now < phase.release then
		description = description .. "\n\n|cFFFF8888Available:\n" .. app.Modules.Events.GetEventTimeString(date("*t", phase.release)) .. "|r";
	end
	return description .. "\n\nID: " .. u;
end
local function CreateItem(u, isPart)
	local phase = phases[u];
	if not phase then return; end
	local function IsUsable()
		local minimumBuildVersion = phase.minimumBuildVersion;
		return not (app.MODE_DEBUG or (minimumBuildVersion and minimumBuildVersion > app.GameBuildVersion));
	end
	return {
		text = phase.name or tostring(u),
		description = phase.description,
		tooltip = GetPhaseTooltip(phase, u),
		indent = isPart and 1 or 0,
		usable = IsUsable,
		get = function() return settings:GetUnobtainableFilter(u); end,
		set = function(checked) settings:SetUnobtainableFilter(u, checked); end,
		isDefault = function() return UnobtainableSettingsBase.__index[u]; end,
		isChanged = function()
			return (settings:GetUnobtainableFilter(u) or false) ~= (UnobtainableSettingsBase.__index[u] or false);
		end,
	};
end

-- Only the newest expansion starts expanded
local list = {};
for expansionID,ids in ipairs(PhasesByExpansion) do
	if ids then
		local expansion = app.CreateExpansion(expansionID);
		local items = {};
		for _,u in ipairs(ids) do
			local item = CreateItem(u < 0 and -u or u, u < 0);
			if item then items[#items + 1] = item; end
		end
		if #list > 0 then list[#list].collapsed = true; end
		list[#list + 1] = { title = "|T" .. expansion.icon .. ":0|t " .. expansion.text, items = items };
	end
end
settings.CreateCheckList(child, {
	text = "|cFFFFFFFFIn World of Warcraft Classic, \"phases\" refer to content releases that introduce new zones, bosses, and features to the game over time, following the original Vanilla content release cycle. They essentially split the original game's content patches into manageable, staggered releases, allowing players to experience content in a more gradual and deliberate manner.\n\nBelow, you'll be able to toggle the visibility of content added during various phases of the game's life cycle separated by the expansion by which they were added.|r",
	groups = list,
});
