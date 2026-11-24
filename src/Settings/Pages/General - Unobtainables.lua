local _, app = ...;
local L, settings = app.L, app.Settings;

-- Global locals
local ipairs = ipairs;

-- Settings: Unobtainables Page
local child = settings:CreateOptionsPage(L.UNOBTAINABLES_PAGE, L.GENERAL_PAGE)

local phases = L.PHASES;
local UnobtainableSettingsBase = settings.__UnobtainableSettingsBase;
local function IsUsable() return not app.MODE_DEBUG; end
local function CreateItems(conditions)
	local items = {};
	for _,u in ipairs(conditions) do
		local phase = phases[u];
		if phase then
			local description = phase.description;
			items[#items + 1] = {
				text = phase.name,
				description = description,
				tooltip = (phase.lore and (description .. "\n \n" .. phase.lore) or description) .. "\n\nID: " .. u,
				usable = IsUsable,
				get = function() return settings:GetUnobtainableFilter(u); end,
				set = function(checked) settings:SetUnobtainableFilter(u, checked); end,
				isDefault = function() return UnobtainableSettingsBase.__index[u]; end,
				isChanged = function()
					return (settings:GetUnobtainableFilter(u) or false) ~= (UnobtainableSettingsBase.__index[u] or false);
				end,
			};
		else
			print("Invalid phase ID", u);
		end
	end
	return items;
end

-- Automated Content
local function CreateAutomatedItems(reasons, color)
	local items = {};
	for _,cc in ipairs(reasons) do
		local filterID, reason = "CC:" .. cc, L.CUSTOM_COLLECTS_REASONS[cc];
		local text = reason.icon.." "..reason.text;
		-- prevent toggling automatic filters
		local function IsAutomatic()
			return app.MODE_DEBUG_OR_ACCOUNT
				or (app.CurrentCharacter and app.CurrentCharacter.CustomCollects and app.CurrentCharacter.CustomCollects[cc]);
		end
		items[#items + 1] = {
			text = app.Modules.Color.Colorize(text, color),
			tooltip = L.CUSTOM_FILTERS_GENERIC_TOOLTIP_FORMAT:format(text),
			usable = function() return not IsAutomatic(); end,
			get = function() return IsAutomatic() or settings:Get(filterID); end,
			set = function(checked)
				if IsAutomatic() then return; end
				settings:Set(filterID, checked);
				settings:UpdateMode(1);
			end,
			isChanged = function() return settings.IsSettingChanged(filterID); end,
		};
	end
	return items;
end

local groups;
if app.IsClassic or app.GameBuildVersion < 20000 then
	-- The ids are different in classic.
	groups = {
		{ title = L.UNOBTAINABLE_LABEL, items = CreateItems({
			1,	-- Never Implemented
			2,	-- Removed From Game
			3,	-- Real Money
			4,	-- PvP Elite / Gladiator
		}) },
	};
else
	groups = {
		{ title = L.UNOBTAINABLE_LABEL, items = CreateItems({
			1,	-- Never Implemented
			2,	-- Removed From Game
			6,	-- Conditionally Available
			5,	-- Unlearnable
		}) },
		{ title = L.UNOBTAINABLES_GROUP_SHOP, items = CreateItems({
			3,	-- Real Money
			7,	-- Trading Post
			9,	-- Black Market AH
			10,	-- Trading Card Game
		}) },
		{ title = L.UNOBTAINABLES_GROUP_SPECIAL, items = CreateItems({
			38,	-- Ordos
			4,	-- PvP Elite / Gladiator
		}) },
	};
end
if app.GameBuildVersion > 90000 then
	local items = CreateAutomatedItems({ "SL_COV_KYR", "SL_COV_NEC", "SL_COV_NFA", "SL_COV_VEN" }, app.Colors.Insane);
	for _,item in ipairs(CreateAutomatedItems({ "NPE", "SL_SKIP" }, app.Colors.Default)) do
		items[#items + 1] = item;
	end
	groups[#groups + 1] = { title = L.CUSTOM_FILTERS_LABEL, text = L.CUSTOM_FILTERS_EXPLAIN_LABEL, items = items };
end
settings.CreateCheckList(child, { groups = groups });
