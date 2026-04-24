local _, app = ...;
local L, settings, ipairs = app.L, app.Settings, ipairs;

-- Settings: Interface Page
local child = settings:CreateOptionsPage(L.REPORTING_LABEL, L.FEATURES_PAGE)

local headerReporting = child:CreateHeaderLabel(L.REPORTING_LABEL)
if child.separator then
	headerReporting:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerReporting:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end

local checkboxReportCollectedThings = child:CreateCheckBox(L.REPORT_COLLECTED_THINGS_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Report:Collected"))
end,
function(self)
	settings:SetTooltipSetting("Report:Collected", self:GetChecked())
end)
checkboxReportCollectedThings:SetATTTooltip(L.REPORT_COLLECTED_THINGS_CHECKBOX_TOOLTIP)
checkboxReportCollectedThings:SetPoint("TOPLEFT", headerReporting, "BOTTOMLEFT", -2, 0)


local checkboxReportDeathTracker = child:CreateCheckBox(L.REPORT_DEATH_TRACKER_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Report:DeathTracker"))
end,
function(self)
	settings:SetTooltipSetting("Report:DeathTracker", self:GetChecked())
	settings:UpdateMode(1)
end)
checkboxReportDeathTracker:SetATTTooltip(L.REPORT_DEATH_TRACKER_CHECKBOX_TOOLTIP)
checkboxReportDeathTracker:AlignBelow(checkboxReportCollectedThings)

local checkboxReportQuests = child:CreateCheckBox(L.REPORT_COMPLETED_QUESTS_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Report:CompletedQuests"))
end,
function(self)
	settings:SetTooltipSetting("Report:CompletedQuests", self:GetChecked())
end)
checkboxReportQuests:SetATTTooltip(L.REPORT_COMPLETED_QUESTS_CHECKBOX_TOOLTIP)
checkboxReportQuests:AlignBelow(checkboxReportDeathTracker)

local checkboxReportUnsourced = child:CreateCheckBox(L.REPORT_UNSORTED_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Report:UnsortedQuests"))
	if not settings:GetTooltipSetting("Report:CompletedQuests") then
		self:Disable()
		self:SetAlpha(0.4)
	else
		self:Enable()
		self:SetAlpha(1)
	end
end,
function(self)
	settings:SetTooltipSetting("Report:UnsortedQuests", self:GetChecked())
end)
checkboxReportUnsourced:SetATTTooltip(L.REPORT_UNSORTED_CHECKBOX_TOOLTIP)
checkboxReportUnsourced:AlignBelow(checkboxReportQuests, 1)

-- This is only available if the Vignette Info class is available.
if C_VignetteInfo then
	local checkboxReportNearby = child:CreateCheckBox(L.REPORT_NEARBY_CONTENT_CHECKBOX,
	function(self)
		self:SetChecked(settings:GetTooltipSetting("Nearby:ReportContent"))
	end,
	function(self)
		settings:SetTooltipSetting("Nearby:ReportContent", self:GetChecked())
	end)
	checkboxReportNearby:SetATTTooltip(L.REPORT_NEARBY_CONTENT_CHECKBOX_TOOLTIP)
	checkboxReportNearby:AlignBelow(checkboxReportUnsourced, -1)
	checkboxReportNearby:MarkAsWIP();

	local checkboxNearbyAutomaticallyPlot = child:CreateCheckBox(L.REPORT_NEARBY_CONTENT_AUTOMATICALLY_PLOT_WAYPOINTS_CHECKBOX,
	function(self)
		self:SetChecked(settings:GetTooltipSetting("Nearby:PlotWaypoints"))
		if not settings:GetTooltipSetting("Nearby:ReportContent") then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
	function(self)
		settings:SetTooltipSetting("Nearby:PlotWaypoints", self:GetChecked())
	end)
	checkboxNearbyAutomaticallyPlot:SetATTTooltip(L.REPORT_NEARBY_CONTENT_AUTOMATICALLY_PLOT_WAYPOINTS_CHECKBOX_TOOLTIP)
	checkboxNearbyAutomaticallyPlot:AlignBelow(checkboxReportNearby, 1)

	local checkboxNearbyClearWaypoints = child:CreateCheckBox(L.REPORT_NEARBY_CONTENT_CLEAR_WAYPOINTS_CHECKBOX,
	function(self)
		self:SetChecked(settings:GetTooltipSetting("Nearby:ClearWaypoints"))
		if not (settings:GetTooltipSetting("Nearby:ReportContent") and settings:GetTooltipSetting("Nearby:PlotWaypoints")) then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
	function(self)
		settings:SetTooltipSetting("Nearby:ClearWaypoints", self:GetChecked())
	end)
	checkboxNearbyClearWaypoints:SetATTTooltip(L.REPORT_NEARBY_CONTENT_CLEAR_WAYPOINTS_CHECKBOX_TOOLTIP)
	checkboxNearbyClearWaypoints:AlignBelow(checkboxNearbyAutomaticallyPlot, 1)

	local checkboxNearbyIncludeCreatures = child:CreateCheckBox(L.REPORT_NEARBY_CONTENT_INCLUDE_CREATURES_CHECKBOX,
	function(self)
		self:SetChecked(settings:GetTooltipSetting("Nearby:Type:npc"))
		if not settings:GetTooltipSetting("Nearby:ReportContent") then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
	function(self)
		settings:SetTooltipSetting("Nearby:Type:npc", self:GetChecked())
	end)
	checkboxNearbyIncludeCreatures:SetATTTooltip(L.REPORT_NEARBY_CONTENT_INCLUDE_CREATURES_CHECKBOX_TOOLTIP)
	checkboxNearbyIncludeCreatures:AlignBelow(checkboxNearbyClearWaypoints, -1)

	local checkboxNearbyIncludeTreasures = child:CreateCheckBox(L.REPORT_NEARBY_CONTENT_INCLUDE_TREASURES_CHECKBOX,
	function(self)
		self:SetChecked(settings:GetTooltipSetting("Nearby:Type:object"))
		if not settings:GetTooltipSetting("Nearby:ReportContent") then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
	function(self)
		settings:SetTooltipSetting("Nearby:Type:object", self:GetChecked())
	end)
	checkboxNearbyIncludeTreasures:SetATTTooltip(L.REPORT_NEARBY_CONTENT_INCLUDE_TREASURES_CHECKBOX_TOOLTIP)
	checkboxNearbyIncludeTreasures:AlignBelow(checkboxNearbyIncludeCreatures)

	local checkboxNearbyIncludeCompleted = child:CreateCheckBox(L.REPORT_NEARBY_CONTENT_INCLUDE_COMPLETED_CHECKBOX,
	function(self)
		self:SetChecked(settings:GetTooltipSetting("Nearby:IncludeCompleted"))
		if not settings:GetTooltipSetting("Nearby:ReportContent") then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
	function(self)
		settings:SetTooltipSetting("Nearby:IncludeCompleted", self:GetChecked())
	end)
	checkboxNearbyIncludeCompleted:SetATTTooltip(L.REPORT_NEARBY_CONTENT_INCLUDE_COMPLETED_CHECKBOX_TOOLTIP)
	checkboxNearbyIncludeCompleted:AlignBelow(checkboxNearbyIncludeTreasures)

	local checkboxNearbyIncludeUnknown = child:CreateCheckBox(L.REPORT_NEARBY_CONTENT_INCLUDE_UNKNOWN_CHECKBOX,
	function(self)
		self:SetChecked(settings:GetTooltipSetting("Nearby:IncludeUnknown"))
		if not settings:GetTooltipSetting("Nearby:ReportContent") then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
	function(self)
		settings:SetTooltipSetting("Nearby:IncludeUnknown", self:GetChecked())
	end)
	checkboxNearbyIncludeUnknown:SetATTTooltip(L.REPORT_NEARBY_CONTENT_INCLUDE_UNKNOWN_CHECKBOX_TOOLTIP)
	checkboxNearbyIncludeUnknown:AlignBelow(checkboxNearbyIncludeCompleted)

	local checkboxNearbyFlashTheTaskbar = child:CreateCheckBox(L.REPORT_NEARBY_CONTENT_FLASH_THE_TASKBAR_CHECKBOX,
	function(self)
		self:SetChecked(settings:GetTooltipSetting("Nearby:FlashTheTaskbar"))
		if not settings:GetTooltipSetting("Nearby:ReportContent") then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
	function(self)
		settings:SetTooltipSetting("Nearby:FlashTheTaskbar", self:GetChecked())
	end)
	checkboxNearbyFlashTheTaskbar:SetATTTooltip(L.REPORT_NEARBY_CONTENT_FLASH_THE_TASKBAR_CHECKBOX_TOOLTIP)
	checkboxNearbyFlashTheTaskbar:AlignBelow(checkboxNearbyIncludeUnknown)

	local checkboxNearbyPlaySoundEffect = child:CreateCheckBox(L.REPORT_NEARBY_CONTENT_PLAY_SOUND_EFFECT_CHECKBOX,
	function(self)
		self:SetChecked(settings:GetTooltipSetting("RareFind"))
		if not settings:GetTooltipSetting("Nearby:ReportContent") then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
	function(self)
		settings:SetTooltipSetting("RareFind", self:GetChecked())
	end)
	checkboxNearbyPlaySoundEffect:SetATTTooltip(L.REPORT_NEARBY_CONTENT_PLAY_SOUND_EFFECT_CHECKBOX_TOOLTIP)
	checkboxNearbyPlaySoundEffect:AlignBelow(checkboxNearbyFlashTheTaskbar)
end