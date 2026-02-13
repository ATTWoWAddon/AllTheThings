local appName, app = ...;
local L, settings = app.L, app.Settings;

-- Settings: Features Page
local child = settings:CreateOptionsPage(L.FEATURES_PAGE, appName)

-- Column 1
local headerChatCommands = child:CreateHeaderLabel(L.CHAT_COMMANDS_LABEL)
if child.separator then
	headerChatCommands:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerChatCommands:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end

local textChatCommands = child:CreateTextLabel(L.CHAT_COMMANDS_TEXT)
textChatCommands:SetPoint("TOPLEFT", headerChatCommands, "BOTTOMLEFT", 0, -4)
textChatCommands:SetWidth(320)

local headerKeybindings = child:CreateHeaderLabel(L.KEYBINDINGS)
headerKeybindings:SetPoint("TOPLEFT", textChatCommands, "BOTTOMLEFT", 0, -15)

local textKeybindings = child:CreateTextLabel(app.Modules.Color.Colorize(L.KEYBINDINGS_TEXT, app.Colors.White))
textKeybindings:SetPoint("TOPLEFT", headerKeybindings, "BOTTOMLEFT", 0, -4)
textKeybindings:SetWidth(320)

-- Column 2
local headerIconLegendStatus = child:CreateHeaderLabel(L.ICON_LEGEND_STATUS_LABEL)
headerIconLegendStatus:SetPoint("TOPLEFT", headerChatCommands, 320, 0)

local textIconLegendStatus = child:CreateTextLabel(L.ICON_LEGEND_STATUS_TEXT)
textIconLegendStatus:SetPoint("TOPLEFT", headerIconLegendStatus, "BOTTOMLEFT", 0, -4)
textIconLegendStatus:SetWidth(320)

local headerIconLegendMisc = child:CreateHeaderLabel(L.ICON_LEGEND_MISC_LABEL)
headerIconLegendMisc:SetPoint("TOPLEFT", textIconLegendStatus, "BOTTOMLEFT", 0, -15)

local textIconLegendMisc = child:CreateTextLabel(L.ICON_LEGEND_MISC_TEXT)
textIconLegendMisc:SetPoint("TOPLEFT", headerIconLegendMisc, "BOTTOMLEFT", 0, -4)
textIconLegendMisc:SetWidth(320)

local headerMinimapButton = child:CreateHeaderLabel(L.MINIMAP_LABEL)
headerMinimapButton:SetPoint("TOPLEFT", textIconLegendMisc, "BOTTOMLEFT", 0, -15)


local checkboxShowMinimapButton = child:CreateCheckBox(L.MINIMAP_BUTTON_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("MinimapButton"))
end,
function(self)
	settings:SetTooltipSetting("MinimapButton", self:GetChecked())
	app.SetMinimapButtonSettings(
		settings:GetTooltipSetting("MinimapButton"),
		settings:GetTooltipSetting("MinimapSize"));
end)
checkboxShowMinimapButton:SetATTTooltip(L.MINIMAP_BUTTON_CHECKBOX_TOOLTIP)
checkboxShowMinimapButton:SetPoint("TOPLEFT", headerMinimapButton, "BOTTOMLEFT", -2, 0)

local sliderMinimapButtonSize = child:CreateSlider("ATTsliderMinimapButtonSize", {
	TEXT=L.MINIMAP_SLIDER,
	TOOLTIP=L.MINIMAP_SLIDER_TOOLTIP,
	MIN=18, MAX=48, STEP=1,
	SETTING="MinimapSize",
	FORMAT="%.0f",
	OnRefresh=function(self)
		if not settings:GetTooltipSetting("MinimapButton") then
			self:Disable()
			self:SetAlpha(0.4)
		else
			self:Enable()
			self:SetAlpha(1)
		end
	end,
	OnValueChanged=function(self)
		app.SetMinimapButtonSettings(settings:GetTooltipSetting("MinimapButton"),settings:GetTooltipSetting("MinimapSize"));
	end,
})
sliderMinimapButtonSize:SetWidth(200)
sliderMinimapButtonSize:SetHeight(20)
sliderMinimapButtonSize:SetPoint("TOPLEFT", checkboxShowMinimapButton, "BOTTOMLEFT", 5, -12)

local checkboxShowWorldMapButton = child:CreateCheckBox(L.WORLDMAP_BUTTON_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("WorldMapButton"))
end,
function(self)
	settings:SetTooltipSetting("WorldMapButton", self:GetChecked())
end)
checkboxShowWorldMapButton:SetATTTooltip(L.WORLDMAP_BUTTON_CHECKBOX_TOOLTIP)
checkboxShowWorldMapButton:SetPoint("TOP", sliderMinimapButtonSize, "BOTTOM", 0, -8)
checkboxShowWorldMapButton:SetPoint("LEFT", checkboxShowMinimapButton, "LEFT", 0, 0)

local headerModules = child:CreateHeaderLabel(L.MODULES_LABEL)
headerModules:SetPoint("TOP", checkboxShowWorldMapButton, "BOTTOM", 0, -10)
headerModules:SetPoint("LEFT", headerMinimapButton, "LEFT", 0, 0)

local ChangeSkipCutsceneState = function(self, checked)
	if checked then
		self:RegisterEvent("PLAY_MOVIE")
		self:RegisterEvent("CINEMATIC_START")
	else
		self:UnregisterEvent("PLAY_MOVIE")
		self:UnregisterEvent("CINEMATIC_START")
	end
end
local checkboxAutomaticallySkipCutscenes = child:CreateCheckBox(L.SKIP_CUTSCENES_CHECKBOX,
function(self)
	local checked = settings:GetTooltipSetting("Skip:Cutscenes")
	self:SetChecked(checked)
	self:SetScript("OnEvent", function(self, ...)
		-- print(self, "OnEvent", ...)
		MovieFrame:Hide()
		CinematicFrame_CancelCinematic()
		app.print(RENOWN_LEVEL_UP_SKIP_BUTTON,CINEMATICS)
	end)
	ChangeSkipCutsceneState(self, checked)
end,
function(self)
	settings:SetTooltipSetting("Skip:Cutscenes", self:GetChecked())
end)
checkboxAutomaticallySkipCutscenes:SetATTTooltip(L.SKIP_CUTSCENES_CHECKBOX_TOOLTIP)
checkboxAutomaticallySkipCutscenes:SetPoint("TOPLEFT", headerModules, "BOTTOMLEFT", -2, 0)

local checkboxFilterMiniListTimerunning;
if app.IsRetail then
	-- TODO: revise with Legion Remix so that Minilist can grab/assign extra filters without needing to be loaded immediately
	-- in case someone isn't even using it
	local function AddTimerunningToCurrentInstance()
		local active = settings:GetTooltipSetting("Filter:MiniList:Timerunning")
		local minilist = app:GetWindow("MiniList", true)
		if minilist then minilist.Filters = active and { Timerunning = true } or nil end
	end
	app.AddEventHandler("OnLoad", AddTimerunningToCurrentInstance)
	checkboxFilterMiniListTimerunning = child:CreateCheckBox(L.FILTER_MINI_LIST_FOR_TIMERUNNING_CHECKBOX,
	function(self)
		self:SetChecked(settings:GetTooltipSetting("Filter:MiniList:Timerunning"))
		self:SetAlpha(app.Modules.Events.IsTimerunningActive and 1 or 0.4)
	end,
	function(self)
		-- No Timerunning Active, don't modify settings
		if not app.Modules.Events.IsTimerunningActive then self:SetChecked(false) return end
		settings:SetTooltipSetting("Filter:MiniList:Timerunning", self:GetChecked())
		AddTimerunningToCurrentInstance()
		app.LocationTrigger(true)
		-- changing this now needs to update Costs again since they now depend on this Filter
		app.HandleEvent("OnRecalculate_NewSettings")
	end)
	checkboxFilterMiniListTimerunning:SetATTTooltip(L.FILTER_MINI_LIST_FOR_TIMERUNNING_CHECKBOX_TOOLTIP)
	checkboxFilterMiniListTimerunning:AlignBelow(checkboxAutomaticallySkipCutscenes, 1)
end

local checkboxAutomaticallyOpenProfessionList = child:CreateCheckBox(L.AUTO_PROF_LIST_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:ProfessionList"))
end,
function(self)
	settings:SetTooltipSetting("Auto:ProfessionList", self:GetChecked())
end)
checkboxAutomaticallyOpenProfessionList:SetATTTooltip(L.AUTO_PROF_LIST_CHECKBOX_TOOLTIP)
if checkboxFilterMiniListTimerunning then
	checkboxAutomaticallyOpenProfessionList:AlignBelow(checkboxFilterMiniListTimerunning, -1)
else
	checkboxAutomaticallyOpenProfessionList:AlignBelow(checkboxAutomaticallySkipCutscenes)
end

local OpenAuctionListAutomatically = child:CreateCheckBox("Automatically Open the Auction Module",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:AuctionList"));
end,
function(self)
	local checked = self:GetChecked();
	settings:SetTooltipSetting("Auto:AuctionList", checked);
	if checked then
		local window = app:GetWindow("Auctions");
		if window then window:UpdatePosition(); end
	end
end);
OpenAuctionListAutomatically:SetATTTooltip("Enable this option if you want to automatically open the Auction List when you open the auction house.\n\nYou can also bind this setting to a Key:\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Auction List\n\nShortcut Command: /attauctions");
OpenAuctionListAutomatically:AlignBelow(checkboxAutomaticallyOpenProfessionList)
