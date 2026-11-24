local appName, app = ...;
local L, settings = app.L, app.Settings;

-- Settings: Features Page
local child = settings:CreateOptionsPage(L.FEATURES_PAGE, appName)

local function UpdateMinimapButton()
	app.SetMinimapButtonSettings(
		settings:GetTooltipSetting("MinimapButton"),
		settings:GetTooltipSetting("MinimapSize"));
end

-- Cutscenes
local cutsceneSkipper = CreateFrame("Frame");
cutsceneSkipper:SetScript("OnEvent", function(self, event, movieID)
	-- print(self, "OnEvent", event, movieID)
	if settings:GetTooltipSetting("Skip:Cutscenes:SeenOnly") then
		-- Only movies report an ID, so in-engine cinematics always play in this mode.
		if event ~= "PLAY_MOVIE" or not movieID then return end
		local seen = ATTAccountWideData.SeenMovies
		if not seen then
			seen = {}
			ATTAccountWideData.SeenMovies = seen
		end
		-- First viewing on this account: remember it and let it play.
		if not seen[movieID] then
			seen[movieID] = true
			return
		end
	end
	MovieFrame:Hide()
	CinematicFrame_CancelCinematic()
	app.print(RENOWN_LEVEL_UP_SKIP_BUTTON,CINEMATICS)
end)
local function UpdateCutsceneSkipper()
	if settings:GetTooltipSetting("Skip:Cutscenes") then
		cutsceneSkipper:RegisterEvent("PLAY_MOVIE")
		cutsceneSkipper:RegisterEvent("CINEMATIC_START")
	else
		cutsceneSkipper:UnregisterEvent("PLAY_MOVIE")
		cutsceneSkipper:UnregisterEvent("CINEMATIC_START")
	end
end

-- Timerunning
local HasTimerunning = app.IsRetail and app.GameBuildVersion > 70000;
-- TODO: revise with Legion Remix so that Minilist can grab/assign extra filters without needing to be loaded immediately
-- in case someone isn't even using it
local function AddTimerunningToCurrentInstance()
	local active = settings:GetTooltipSetting("Filter:MiniList:Timerunning")
	local minilist = app:GetWindow("MiniList", true)
	if minilist then minilist.Filters = active and { Timerunning = true } or nil end
end
if HasTimerunning then
	app.AddEventHandler("OnLoad", AddTimerunningToCurrentInstance)
end

settings.CreateOptionSections(child, {
	{ title = L.MINIMAP_LABEL, options = {
		{ type = "check", key = "MinimapButton", text = L.MINIMAP_BUTTON_CHECKBOX, tooltip = L.MINIMAP_BUTTON_CHECKBOX_TOOLTIP, OnChanged = UpdateMinimapButton },
		{ type = "slider", name = "ATTsliderMinimapButtonSize", key = "MinimapSize", text = L.MINIMAP_SLIDER, tooltip = L.MINIMAP_SLIDER_TOOLTIP, min = 18, max = 48, step = 1, format = "%.0f", indent = 1, requires = { "MinimapButton" }, OnChanged = UpdateMinimapButton },
		{ type = "check", key = "WorldMapButton", text = L.WORLDMAP_BUTTON_CHECKBOX, tooltip = L.WORLDMAP_BUTTON_CHECKBOX_TOOLTIP },
	} },
	{ title = L.MODULES_LABEL, options = {
		{ type = "check", key = "Skip:Cutscenes", text = L.SKIP_CUTSCENES_CHECKBOX, tooltip = L.SKIP_CUTSCENES_CHECKBOX_TOOLTIP, OnRefresh = UpdateCutsceneSkipper },
		{ type = "check", key = "Skip:Cutscenes:SeenOnly", text = L.SKIP_SEEN_CUTSCENES_ONLY_CHECKBOX, tooltip = L.SKIP_SEEN_CUTSCENES_ONLY_CHECKBOX_TOOLTIP, indent = 1, requires = { "Skip:Cutscenes" } },
		HasTimerunning and { type = "check", key = "Filter:MiniList:Timerunning", text = L.FILTER_MINI_LIST_FOR_TIMERUNNING_CHECKBOX, tooltip = L.FILTER_MINI_LIST_FOR_TIMERUNNING_CHECKBOX_TOOLTIP,
			usable = function() return app.Modules.Events.IsTimerunningActive; end,
			OnChanged = function()
				AddTimerunningToCurrentInstance()
				app.LocationTrigger(true)
				-- changing this now needs to update Costs again since they now depend on this Filter
				app.HandleEvent("OnRecalculate_NewSettings")
			end,
		},
		app.IsClassic and { type = "check", key = "Auto:ProfessionList", text = L.AUTO_PROF_LIST_CHECKBOX, tooltip = L.AUTO_PROF_LIST_CHECKBOX_TOOLTIP },
		app.IsClassic and { type = "check", key = "Auto:AuctionList", text = L.AUTO_AUCTION_LIST_CHECKBOX, tooltip = L.AUTO_AUCTION_LIST_CHECKBOX_TOOLTIP,
			OnChanged = function()
				if settings:GetTooltipSetting("Auto:AuctionList") then
					local window = app:GetWindow("Auctions");
					if window then window:UpdatePosition(); end
				end
			end,
		},
		-- Retail and Forever show the Auction Module as a tab on the Auction House, which this hides completely.
		-- Note: rawget avoids the Localization table's MISSING LOCALE fallback (Forever doesn't export these strings yet)
		not app.IsClassic and { type = "check", key = "Show:AuctionTab",
			text = rawget(L, "AUCTION_TAB_CHECKBOX") or "Show the Auction House Module Tab",
			tooltip = rawget(L, "AUCTION_TAB_CHECKBOX_TOOLTIP") or "Enable this option if you want to see the Auction House Module provided with ATT.",
			OnChanged = function()
				local window = app:GetWindow("Auctions", true);
				if window and window.UpdatePosition then window:UpdatePosition(); end
			end,
		},
	} },
}, {
	notes = {
		{ title = L.ICON_LEGEND_STATUS_LABEL, text = L.ICON_LEGEND_STATUS_TEXT },
		{ title = L.ICON_LEGEND_MISC_LABEL, text = L.ICON_LEGEND_MISC_TEXT },
		{ title = L.KEYBINDINGS, text = app.Modules.Color.Colorize(L.KEYBINDINGS_TEXT, app.Colors.White) },
	},
});
