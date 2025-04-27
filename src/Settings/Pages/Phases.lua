local _, app = ...;
if not app.IsClassic then return; end	-- This is only available in Classic!
local L, settings = app.L.SETTINGS_MENU, app.Settings;

-- Settings: General Page
local child = settings:CreateOptionsPage("Phases", appName)
local DescriptionLabel = child:CreateFontString(nil, "ARTWORK", "GameFontNormal");
if child.separator then
	DescriptionLabel:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	DescriptionLabel:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end
DescriptionLabel:SetPoint("RIGHT", child, "RIGHT", -8, 0);
DescriptionLabel:SetJustifyH("LEFT");
DescriptionLabel:SetText("|cFFFFFFFFIn World of Warcraft Classic, \"phases\" refer to content releases that introduce new zones, bosses, and features to the game over time, following the original Vanilla content release cycle. They essentially split the original game's content patches into manageable, staggered releases, allowing players to experience content in a more gradual and deliberate manner.\n\nBelow, you'll be able to toggle the visibility of content added during various phases of the game's life cycle separated by the expansion by which they were added.|r");
DescriptionLabel:Show();

-- Temporary stuff
local UnobtainableSettingsBase = settings.__UnobtainableSettingsBase;

local phases = L.PHASES;
local UnobtainableFilterOnClick = function(self)
	local checked = self:GetChecked();
	if checked then
		-- If the phase is active, fall through to the base setting.
		if UnobtainableSettingsBase.__index[self.u] then
			settings:SetUnobtainableFilter(self.u, nil);
		else
			settings:SetUnobtainableFilter(self.u, true);
		end
	else
		settings:SetUnobtainableFilter(self.u, false);
	end
end;
local UnobtainableOnRefresh = function(self)
	if app.MODE_DEBUG then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:SetChecked(settings:GetUnobtainableFilter(self.u));

		local minimumBuildVersion = phases[self.u].minimumBuildVersion;
		if minimumBuildVersion and minimumBuildVersion > app.GameBuildVersion then
			self:Disable();
			self:SetAlpha(0.2);
		else
			self:Enable();
			self:SetAlpha(1);
			if UnobtainableSettingsBase.__index[self.u] then
				self.Text:SetTextColor(0.6, 0.7, 1);
			else
				self.Text:SetTextColor(1, 1, 1);
			end
		end
	end
end;

-- Update the default unobtainable states based on build version.
for u,phase in pairs(phases) do
	if phase.minimumBuildVersion then
		if app.GameBuildVersion >= phase.minimumBuildVersion then
			if phase.buildVersion and app.GameBuildVersion >= phase.buildVersion then
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

function CreateExpansionPage(expansionID)
	local expansion = app.CreateExpansion(expansionID);
	local expansionName = "|T" .. expansion.icon .. ":0|t " .. expansion.text;
	local page = settings:CreateOptionsPage(expansionName, "Phases")
	local label = page:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
	if page.separator then
		label:SetPoint("TOPLEFT", page.separator, "BOTTOMLEFT", 8, -8);
	else
		label:SetPoint("TOPLEFT", page, "TOPLEFT", 8, -8);
	end
	label:SetJustifyH("LEFT");
	label:SetText("|CFFAAFFAA" .. expansionName .. " Phases|r");
	label:Show();
	page.Label = label;
	return page;
end

-- Classic Era Phases --
local page = CreateExpansionPage(1);
local last, yoffset, spacing, vspacing = page.Label, -4, 8, 1;
for i,o in ipairs({ { 11, 0, 0 }, {1101, spacing, -vspacing }, { 12, 0, -vspacing }, { 13, 0 }, { 14, 0 }, { 15, 0 }, { 1501, spacing, -vspacing }, { 1502, spacing }, { 1503, spacing }, { 1504, spacing }, { 16, 0, -vspacing }, { 1601, spacing, -vspacing }, { 1602, spacing }, { 1603, 0, -vspacing * 2 }, { 1604, 0, -vspacing * 2 }, { 1605, 0, -vspacing * 2 }, { 1606, spacing, -vspacing }, { 1607, spacing }, { 1608, spacing }, { 1609, spacing }, { 1610, spacing }, { 1611, spacing }, { 1612, spacing }, }) do
	local u = o[1];
	yoffset = o[3] or 6;
	local phase = phases[u];
	if phase then
		local filter = page:CreateCheckBox(phase.name or tostring(u), UnobtainableOnRefresh, UnobtainableFilterOnClick);
		local description = phase.description;
		if phase.lore then description = description .. "\n \n" .. phase.lore; end
		filter:SetATTTooltip(description .. "\n\nID: " .. u)
		filter:SetPoint("LEFT", page.Label, "LEFT", o[2], 0);
		filter:SetPoint("TOP", last, "BOTTOMLEFT", 0, yoffset);
		filter:SetScale(o[2] > 0 and 0.8 or 1);
		filter.u = u;
		last = filter;
	end
end

-- TBC Phases  --
if app.GameBuildVersion > 20000 then
	local page = CreateExpansionPage(2);
	last, yoffset = page.Label, -4;
	for i,o in ipairs({ { 17, 0, 0 }, {1701, spacing, -vspacing }, { 18, 0, -vspacing }, {1801, spacing, -vspacing }, { 1802, spacing }, { 19, 0, -vspacing }, { 1901, spacing, -vspacing }, { 1902, spacing }, { 20, 0, -vspacing }, { 21, 0 }, {2101, spacing, -vspacing }, { 2102, spacing }, { 2103, spacing }, { 2104, spacing }, { 2105, spacing }, { 2106, spacing }, { 2107, spacing }, { 2108, spacing, -vspacing }, }) do
		local u = o[1];
		yoffset = o[3] or 6;
		local phase = phases[u];
		if phase then
			local filter = page:CreateCheckBox(phase.name or tostring(u), UnobtainableOnRefresh, UnobtainableFilterOnClick);
			local description = phase.description;
			if phase.lore then description = description .. "\n \n" .. phase.lore; end
			filter:SetATTTooltip(description .. "\n\nID: " .. u)
			filter:SetPoint("LEFT", page.Label, "LEFT", o[2], 0);
			filter:SetPoint("TOP", last, "BOTTOMLEFT", 0, yoffset);
			filter:SetScale(o[2] > 0 and 0.8 or 1);
			filter.u = u;
			last = filter;
		end
	end
end

-- WotLK Phases --
if app.GameBuildVersion > 30000 then
	local page = CreateExpansionPage(3);
	last, yoffset = page.Label, -4;
	for i,o in ipairs({ { 30, 0, 0 }, {3001, spacing, -vspacing }, { 31, 0, -vspacing }, {3101, spacing, -vspacing }, { 32, 0, -vspacing }, { 33, 0 }, {3301, spacing, -vspacing }, {3302, spacing }, {3303, spacing }, {3304, spacing }, }) do
		local u = o[1];
		yoffset = o[3] or 6;
		local phase = phases[u];
		if phase then
			local filter = page:CreateCheckBox(phase.name or tostring(u), UnobtainableOnRefresh, UnobtainableFilterOnClick);
			local description = phase.description;
			if phase.lore then description = description .. "\n \n" .. phase.lore; end
			filter:SetATTTooltip(description .. "\n\nID: " .. u)
			filter:SetPoint("LEFT", page.Label, "LEFT", o[2], 0);
			filter:SetPoint("TOP", last, "BOTTOMLEFT", 0, yoffset);
			filter:SetScale(o[2] > 0 and 0.8 or 1);
			filter.u = u;
			last = filter;
		end
	end
end

-- Cata Phases --
if app.GameBuildVersion > 40000 then
	local page = CreateExpansionPage(4);
	last, yoffset = page.Label, -4;
	for i,o in ipairs({ { 40, 0, 0 }, {4001, spacing, -vspacing }, {4002, spacing }, { 41, 0, -vspacing }, { 42, 0, -vspacing }, }) do
		local u = o[1];
		yoffset = o[3] or 6;
		local phase = phases[u];
		if phase then
			local filter = page:CreateCheckBox(phase.name or tostring(u), UnobtainableOnRefresh, UnobtainableFilterOnClick);
			local description = phase.description;
			if phase.lore then description = description .. "\n \n" .. phase.lore; end
			filter:SetATTTooltip(description .. "\n\nID: " .. u)
			filter:SetPoint("LEFT", page.Label, "LEFT", o[2], 0);
			filter:SetPoint("TOP", last, "BOTTOMLEFT", 0, yoffset);
			filter:SetScale(o[2] > 0 and 0.8 or 1);
			filter.u = u;
			last = filter;
		end
	end
end

-- MoP Phases --
if app.GameBuildVersion > 50000 then
	local page = CreateExpansionPage(5);
	last, yoffset = page.Label, -4;
	for i,o in ipairs({ { 50, 0, 0 }, { 51, 0, -vspacing }, { 52, 0, -vspacing }, { 53, 0, -vspacing }, { 54, 0, -vspacing }, }) do
		local u = o[1];
		yoffset = o[3] or 6;
		local phase = phases[u];
		if phase then
			local filter = page:CreateCheckBox(phase.name or tostring(u), UnobtainableOnRefresh, UnobtainableFilterOnClick);
			local description = phase.description;
			if phase.lore then description = description .. "\n \n" .. phase.lore; end
			filter:SetATTTooltip(description .. "\n\nID: " .. u)
			filter:SetPoint("LEFT", page.Label, "LEFT", o[2], 0);
			filter:SetPoint("TOP", last, "BOTTOMLEFT", 0, yoffset);
			filter:SetScale(o[2] > 0 and 0.8 or 1);
			filter.u = u;
			last = filter;
		end
	end
end