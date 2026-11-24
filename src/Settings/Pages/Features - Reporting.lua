local _, app = ...;
local L, settings = app.L, app.Settings;

-- Settings: Reporting Page
local child = settings:CreateOptionsPage(L.REPORTING_LABEL, L.FEATURES_PAGE)

local NEARBY = { "Nearby:ReportContent" };

settings.CreateOptionSections(child, {
	{ title = L.REPORTING_LABEL, options = {
		{ type = "check", key = "Report:Collected", text = L.REPORT_COLLECTED_THINGS_CHECKBOX, tooltip = L.REPORT_COLLECTED_THINGS_CHECKBOX_TOOLTIP },
		{ type = "check", key = "Report:DeathTracker", text = L.REPORT_DEATH_TRACKER_CHECKBOX, tooltip = L.REPORT_DEATH_TRACKER_CHECKBOX_TOOLTIP, OnChanged = function() settings:UpdateMode(1); end },
		{ type = "check", key = "Report:CompletedQuests", text = L.REPORT_COMPLETED_QUESTS_CHECKBOX, tooltip = L.REPORT_COMPLETED_QUESTS_CHECKBOX_TOOLTIP },
		{ type = "check", key = "Report:UnsortedQuests", text = L.REPORT_UNSORTED_CHECKBOX, tooltip = L.REPORT_UNSORTED_CHECKBOX_TOOLTIP, indent = 1, requires = { "Report:CompletedQuests" } },
	} },
	-- This is only available if the Vignette Info class is available.
	C_VignetteInfo and { title = L.REPORT_NEARBY_CONTENT_CHECKBOX, options = {
		{ type = "check", key = "Nearby:ReportContent", text = L.REPORT_NEARBY_CONTENT_CHECKBOX, tooltip = L.REPORT_NEARBY_CONTENT_CHECKBOX_TOOLTIP, wip = true },
		{ type = "check", key = "Nearby:PlotWaypoints", text = L.REPORT_NEARBY_CONTENT_AUTOMATICALLY_PLOT_WAYPOINTS_CHECKBOX, tooltip = L.REPORT_NEARBY_CONTENT_AUTOMATICALLY_PLOT_WAYPOINTS_CHECKBOX_TOOLTIP, indent = 1, requires = NEARBY },
		{ type = "check", key = "Nearby:ClearWaypoints", text = L.REPORT_NEARBY_CONTENT_CLEAR_WAYPOINTS_CHECKBOX, tooltip = L.REPORT_NEARBY_CONTENT_CLEAR_WAYPOINTS_CHECKBOX_TOOLTIP, indent = 2, requires = { "Nearby:ReportContent", "Nearby:PlotWaypoints" } },
		{ type = "check", key = "Nearby:Type:npc", text = L.REPORT_NEARBY_CONTENT_INCLUDE_CREATURES_CHECKBOX, tooltip = L.REPORT_NEARBY_CONTENT_INCLUDE_CREATURES_CHECKBOX_TOOLTIP, indent = 1, requires = NEARBY },
		{ type = "check", key = "Nearby:Type:object", text = L.REPORT_NEARBY_CONTENT_INCLUDE_TREASURES_CHECKBOX, tooltip = L.REPORT_NEARBY_CONTENT_INCLUDE_TREASURES_CHECKBOX_TOOLTIP, indent = 1, requires = NEARBY },
		{ type = "check", key = "Nearby:IncludeCompleted", text = L.REPORT_NEARBY_CONTENT_INCLUDE_COMPLETED_CHECKBOX, tooltip = L.REPORT_NEARBY_CONTENT_INCLUDE_COMPLETED_CHECKBOX_TOOLTIP, indent = 1, requires = NEARBY },
		{ type = "check", key = "Nearby:IncludeUnknown", text = L.REPORT_NEARBY_CONTENT_INCLUDE_UNKNOWN_CHECKBOX, tooltip = L.REPORT_NEARBY_CONTENT_INCLUDE_UNKNOWN_CHECKBOX_TOOLTIP, indent = 1, requires = NEARBY },
		{ type = "check", key = "Nearby:FlashTheTaskbar", text = L.REPORT_NEARBY_CONTENT_FLASH_THE_TASKBAR_CHECKBOX, tooltip = L.REPORT_NEARBY_CONTENT_FLASH_THE_TASKBAR_CHECKBOX_TOOLTIP, indent = 1, requires = NEARBY },
		{ type = "check", key = "RareFind", text = L.REPORT_NEARBY_CONTENT_PLAY_SOUND_EFFECT_CHECKBOX, tooltip = L.REPORT_NEARBY_CONTENT_PLAY_SOUND_EFFECT_CHECKBOX_TOOLTIP, indent = 1, requires = NEARBY },
	} } or false,
});
