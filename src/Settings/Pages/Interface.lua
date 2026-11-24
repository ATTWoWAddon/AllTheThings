local appName, app = ...;
local L, settings = app.L, app.Settings;

-- Settings: Interface Page (the ATT lists; tooltips have their own page)
local child = settings:CreateOptionsPage(L.INTERFACE_PAGE, appName);

local function RedrawWindows()
	app.CallbackEvent("OnRedrawWindows");
end

settings.CreateOptionSections(child, {
	{ title = L.WINDOWS_PAGE, options = {
		{ type = "slider", name = "ATTsliderMainListScale", key = "MainListScale", text = L.MAIN_LIST_SLIDER_LABEL, tooltip = L.MAIN_LIST_SCALE_TOOLTIP, min = 0.1, max = 4, step = 0.1, format = "%.2f" },
		{ type = "slider", name = "ATTsliderMiniListScale", key = "MiniListScale", text = L.MINI_LIST_SLIDER_LABEL, tooltip = L.MINI_LIST_SCALE_TOOLTIP, min = 0.1, max = 4, step = 0.1, format = "%.2f" },
		{ type = "slider", name = "ATTsliderInactiveWindowAlpha", key = "InactiveWindowAlpha", text = L.INACTIVE_WINDOW_ALPHA_LABEL, tooltip = L.INACTIVE_WINDOW_ALPHA_TOOLTIP, min = 0.1, max = 1, step = 0.05, format = "%.2f" },
	} },
	{ title = L.INTERFACE_GROUP_ROWS, options = {
		{ type = "check", key = "Adjust:RowIndents", text = L.ADJUST_ROW_INDENTS_CHECKBOX, tooltip = L.ADJUST_ROW_INDENTS_TOOLTIP },
		{ type = "check", key = "IconPortraits", text = L.SHOW_ICON_PORTRAIT_CHECKBOX, tooltip = L.SHOW_ICON_PORTRAIT_CHECKBOX_TOOLTIP, OnChanged = RedrawWindows },
		{ type = "check", key = "IconPortraitsForQuests", text = L.SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX, tooltip = L.SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX_TOOLTIP, indent = 1, requires = { "IconPortraits" }, OnChanged = RedrawWindows },
		{ type = "check", key = "Models", text = L.SHOW_MODELS_CHECKBOX, tooltip = L.SHOW_MODELS_CHECKBOX_TOOLTIP },
	} },
	{ title = L.INTERFACE_GROUP_PROGRESS, options = {
		{ type = "check", key = "Show:Remaining", text = L.SHOW_REMAINING_CHECKBOX, tooltip = L.SHOW_REMAINING_CHECKBOX_TOOLTIP },
		{ type = "check", key = "Show:Percentage", text = L.PERCENTAGES_CHECKBOX, tooltip = L.PERCENTAGES_CHECKBOX_TOOLTIP },
		{ type = "slider", name = "ATTsliderPercentagePrecision", key = "Precision", text = L.PRECISION_SLIDER, tooltip = L.PRECISION_SLIDER_TOOLTIP, min = 0, max = 8, step = 1, format = "%.0f", indent = 1, requires = { "Show:Percentage" } },
	} },
	{ title = L.INTERFACE_GROUP_EXPANDING, options = {
		{ type = "check", key = "Expand:MiniList", text = L.EXPAND_MINILIST_CHECKBOX, tooltip = L.EXPAND_MINILIST_CHECKBOX_TOOLTIP },
		{ type = "check", key = "Expand:Difficulty", text = L.EXPAND_DIFFICULTY_CHECKBOX, tooltip = L.EXPAND_DIFFICULTY_CHECKBOX_TOOLTIP },
		{ type = "check", key = "WorldQuestsList:Currencies", text = L.FILL_DYNAMIC_QUESTS_CHECKBOX, tooltip = L.FILL_DYNAMIC_QUESTS_CHECKBOX_TOOLTIP },
		{ type = "check", key = "QuestChain:Nested", text = L.NESTED_QUEST_CHAIN_CHECKBOX, tooltip = L.NESTED_QUEST_CHAIN_CHECKBOX_TOOLTIP },
		{ type = "check", key = "Sort:Progress", text = L.SORT_BY_PROGRESS_CHECKBOX, tooltip = L.SORT_BY_PROGRESS_CHECKBOX_TOOLTIP },
		-- CRIEVE NOTE: Classic Dynamic Categories don't support this just yet.
		app.IsRetail and app.GameBuildVersion > 70000 and { type = "dropdown", key = "Dynamic:Style", text = L.DYNAMIC_CATEGORY_LABEL,
			tooltip = L.DYNAMIC_CATEGORY_SIMPLE .. ": " .. L.DYNAMIC_CATEGORY_SIMPLE_TOOLTIP .. "\n\n" .. L.DYNAMIC_CATEGORY_NESTED .. ": " .. L.DYNAMIC_CATEGORY_NESTED_TOOLTIP .. L.DYNAMIC_CATEGORY_TOOLTIP_NOTE,
			choices = {
				{ value = 1, text = L.DYNAMIC_CATEGORY_SIMPLE },
				{ value = 2, text = L.DYNAMIC_CATEGORY_NESTED },
			},
			get = function() return settings:Get("Dynamic:Style"); end,
			set = function(value) settings:Set("Dynamic:Style", value); end,
		},
	} },
},
-- Preview: a fixed sample of a list.
{ preview = L.PREVIEW_LABEL, Update = function(preview)
	local function Get(key) return settings:GetTooltipSetting(key); end
	local GetProgressColorText = app.Modules.Color.GetProgressColorText;
	-- Indents grow with the depth of the rows above when they aren't adjusted
	local base = Get("Adjust:RowIndents") and 0 or 2;
	local expandAll, expandDifficulty = Get("Expand:MiniList"), Get("Expand:Difficulty");
	local portrait = Get("IconPortraits") and "player" or nil;
	local questPortrait = portrait and Get("IconPortraitsForQuests") and "player" or nil;
	local missing = app.GetCollectionIcon(false);

	preview:AddLine(L.PREVIEW_ZONE, GetProgressColorText(60, 100), { icon = "Interface\\Icons\\INV_Misc_Map_01" });
	preview:AddLine(L.PREVIEW_CREATURE, GetProgressColorText(2, 3), { indent = base + 1, portrait = portrait, icon = "Interface\\Icons\\INV_Misc_Head_Human_01" });
	preview:AddLine(L.PREVIEW_QUEST, GetProgressColorText(0, 2), { indent = base + 1, portrait = questPortrait, icon = "Interface\\GossipFrame\\AvailableQuestIcon" });
	if expandAll then
		preview:AddLine(L.PREVIEW_REWARD:format(1), missing, { indent = base + 2, icon = "Interface\\Icons\\INV_Misc_Bag_10" });
	end
	-- Only the difficulty you're in is expanded when that's enabled
	preview:AddLine(PLAYER_DIFFICULTY1 or "Normal", GetProgressColorText(4, 8), { indent = base + 1, icon = "Interface\\Icons\\INV_Misc_Key_03" });
	if expandAll or expandDifficulty then
		preview:AddLine(L.PREVIEW_REWARD:format(2), missing, { indent = base + 2, icon = "Interface\\Icons\\INV_Misc_Bag_10" });
	end
	preview:AddLine(PLAYER_DIFFICULTY2 or "Heroic", GetProgressColorText(0, 8), { indent = base + 1, icon = "Interface\\Icons\\INV_Misc_Key_04" });
	if expandAll and not expandDifficulty then
		preview:AddLine(L.PREVIEW_REWARD:format(3), missing, { indent = base + 2, icon = "Interface\\Icons\\INV_Misc_Bag_10" });
	end
end });
