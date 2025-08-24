local _, app = ...;
local L, settings = app.L, app.Settings;

-- Only display this tab on April Fool's Day.
local today = C_DateAndTime.GetCurrentCalendarTime();
if not (today.monthDay == 1 and today.month == 4) then return; end

-- Blacklist
local child = settings:CreateOptionsPage(L.BLACKLIST_PAGE, L.FEATURES_PAGE)
local headerBlacklist = child:CreateHeaderLabel("Blacklist")
if child.separator then
	headerBlacklist:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerBlacklist:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end

local blacklistCheckbox = child:CreateCheckBox(L.BLACKLIST_CHECKBOX,
function(self)
	self:SetChecked(false);
end,
function(self)
	app.print(L.BLACKLIST_JUST_KIDDING);
end)
blacklistCheckbox:SetATTTooltip(L.BLACKLIST_CHECKBOX_TOOLTIP)
blacklistCheckbox:SetPoint("TOPLEFT", headerBlacklist, "BOTTOMLEFT", 4, 0)