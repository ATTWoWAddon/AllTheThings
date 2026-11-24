local _, app = ...;
local L, settings = app.L, app.Settings;

-- Only display this tab on April Fool's Day.
local today = C_DateAndTime.GetCurrentCalendarTime();
if not (today.monthDay == 1 and today.month == 4) then return; end

-- Blacklist
local child = settings:CreateOptionsPage(L.BLACKLIST_PAGE, L.FEATURES_PAGE)
settings.CreateOptionSections(child, {
	{ title = L.BLACKLIST_PAGE, options = {
		{ type = "check", text = L.BLACKLIST_CHECKBOX, tooltip = L.BLACKLIST_CHECKBOX_TOOLTIP,
			get = app.ReturnFalse,
			set = function() app.print(L.BLACKLIST_JUST_KIDDING); end,
		},
	} },
});
