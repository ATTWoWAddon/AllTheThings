local _, app = ...;
local L, settings = app.L, app.Settings;

-- Settings: Tooltips Page
local child = settings:CreateOptionsPage(L.TOOLTIP_LABEL, L.INTERFACE_PAGE)

local ENABLED = { "Enabled" };
local PROGRESS = { "Enabled", "Progress" };
local SHARED = { "Enabled", "SharedAppearances" };
local SUMMARIZE = { "Enabled", "SummarizeThings" };
local SOURCES = { "Enabled", "SourceLocations" };
local CHARACTERS = { "CompletedBy", "KnownBy", "UsefulFor" };

local Modifiers = {
	{ value = "None", text = L.TOOLTIP_MOD_NONE },
	{ value = "Shift", text = L.TOOLTIP_MOD_SHIFT },
	{ value = "Ctrl", text = L.TOOLTIP_MOD_CTRL },
	{ value = "Alt", text = L.TOOLTIP_MOD_ALT },
};
if IsMacClient() then
	Modifiers[#Modifiers + 1] = { value = "Cmd", text = L.TOOLTIP_MOD_CMD };
end

local HasTransmog = C_TransmogCollection and true or false;
local sections = {
	{ title = L.TOOLTIP_LABEL, options = {
		{ type = "check", key = "Enabled", text = L.ENABLE_TOOLTIP_INFORMATION_CHECKBOX, tooltip = L.ENABLE_TOOLTIP_INFORMATION_CHECKBOX_TOOLTIP },
		{ type = "dropdown", key = "Enabled:Mod", text = L.TOOLTIP_MOD_LABEL, choices = Modifiers, indent = 1, requires = ENABLED },
		{ type = "check", key = "DisplayInCombat", text = L.DISPLAY_IN_COMBAT_CHECKBOX, tooltip = L.DISPLAY_IN_COMBAT_CHECKBOX_TOOLTIP, indent = 1, requires = ENABLED },
		{ type = "check", key = "DisplayInCombatExceptNPCs", text = L.NOT_DISPLAY_IN_COMBAT_NPCS_CHECKBOX, tooltip = L.NOT_DISPLAY_IN_COMBAT_NPCS_CHECKBOX_TOOLTIP, indent = 2, requires = { "Enabled", "DisplayInCombat" } },
		{ type = "check", key = "EnablePetCageTooltips", text = L.PET_CAGE_TOOLTIPS_CHECKBOX, tooltip = L.PET_CAGE_TOOLTIPS_CHECKBOX_TOOLTIP, indent = 1, requires = ENABLED },
		{ type = "check", key = "Show:TooltipHelp", text = L.TOOLTIP_HELP_CHECKBOX, tooltip = L.TOOLTIP_HELP_CHECKBOX_TOOLTIP },
	} },
	{ title = L.TOOLTIPS_GROUP_COLLECTION, options = {
		{ type = "check", key = "Progress", text = L.SHOW_COLLECTION_PROGRESS_CHECKBOX, tooltip = L.SHOW_COLLECTION_PROGRESS_CHECKBOX_TOOLTIP, requires = ENABLED },
		{ type = "check", key = "ShowIconOnly", text = L.ICON_ONLY_CHECKBOX, tooltip = L.ICON_ONLY_CHECKBOX_TOOLTIP, indent = 1, requires = PROGRESS },
		HasTransmog and { type = "check", key = "SharedAppearances", text = L.SHARED_APPEARANCES_CHECKBOX, tooltip = L.SHARED_APPEARANCES_CHECKBOX_TOOLTIP, requires = ENABLED },
		HasTransmog and { type = "check", key = "IncludeOriginalSource", text = L.INCLUDE_ORIGINAL_CHECKBOX, tooltip = L.INCLUDE_ORIGINAL_CHECKBOX_TOOLTIP, indent = 1, requires = SHARED },
		HasTransmog and { type = "check", key = "OnlyShowObtainableSharedAppearances", text = L.ONLY_OBTAINABLE_CHECKBOX, tooltip = L.ONLY_OBTAINABLE_CHECKBOX_TOOLTIP, indent = 1, requires = SHARED },
		HasTransmog and { type = "check", key = "OnlyShowRelevantSharedAppearances", text = L.ONLY_RELEVANT_CHECKBOX, tooltip = L.ONLY_RELEVANT_CHECKBOX_TOOLTIP, indent = 1, requires = SHARED },
		-- Decides whether the progress fits on the tooltip's first line
		{ type = "slider", name = "ATTSliderMaxTooltipFirstLineLength", key = "MaxTooltipTopLineLength", text = L.MAX_TOOLTIP_TOP_LINE_LENGTH_LABEL, min = 80, max = 1000, step = 20, format = "%.0f", requires = ENABLED },
	} },
	{ title = L.TOOLTIPS_GROUP_CONTENTS, options = {
		{ type = "check", key = "SummarizeThings", text = L.SUMMARIZE_CHECKBOX, tooltip = L.SUMMARIZE_CHECKBOX_TOOLTIP, requires = ENABLED },
		{ type = "slider", name = "ATTSummarizeThingsSlider", key = "ContainsCount", search = L.SUMMARIZE_CHECKBOX, tooltip = L.CONTAINS_SLIDER_TOOLTIP, min = 1, max = 40, step = 1, format = "%.0f", indent = 1, requires = SUMMARIZE },
		-- CRIEVE NOTE: This feature is kinda neat, but really only makes sense for Classic.
		app.IsClassic and { type = "check", key = "Show:CraftedItems", text = L.SHOW_CRAFTED_ITEMS_CHECKBOX, tooltip = L.SHOW_CRAFTED_ITEMS_CHECKBOX_TOOLTIP, indent = 1, requires = SUMMARIZE },
		app.IsClassic and { type = "check", key = "Show:Recipes", text = L.SHOW_RECIPES_CHECKBOX, tooltip = L.SHOW_RECIPES_CHECKBOX_TOOLTIP, indent = 1, requires = SUMMARIZE },
		app.IsClassic and { type = "check", key = "Show:OnlyShowNonTrivialRecipes", text = L.SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX, tooltip = L.SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX_TOOLTIP, indent = 2, requires = { "Enabled", "SummarizeThings", "Show:Recipes" } },
		{ type = "check", key = "SourceLocations", text = L.SOURCE_LOCATIONS_CHECKBOX, tooltip = L.SOURCE_LOCATIONS_CHECKBOX_TOOLTIP, requires = ENABLED },
		{ type = "slider", name = "ATTsliderSourceLocations", key = "Locations", search = L.SOURCE_LOCATIONS_CHECKBOX, tooltip = L.LOCATIONS_SLIDER_TOOLTIP, min = 1, max = 40, step = 1, format = "%.0f", indent = 1, requires = SOURCES },
		{ type = "check", key = "SourceLocations:Completed", text = L.COMPLETED_SOURCES_CHECKBOX, tooltip = L.COMPLETED_SOURCES_CHECKBOX_TOOLTIP, indent = 1, requires = SOURCES },
		{ type = "check", key = "SourceLocations:Creatures", text = L.FOR_CREATURES_CHECKBOX, tooltip = L.FOR_CREATURES_CHECKBOX_TOOLTIP, indent = 1, requires = SOURCES },
		{ type = "check", key = "SourceLocations:Things", text = L.FOR_THINGS_CHECKBOX, tooltip = L.FOR_THINGS_CHECKBOX_TOOLTIP, indent = 1, requires = SOURCES },
		{ type = "check", key = "SourceLocations:Unsorted", text = L.FOR_UNSORTED_CHECKBOX, tooltip = L.FOR_UNSORTED_CHECKBOX_TOOLTIP, indent = 1, requires = SOURCES },
		{ type = "check", key = "SourceLocations:Wrapping", text = L.WITH_WRAPPING_CHECKBOX, tooltip = L.WITH_WRAPPING_CHECKBOX_TOOLTIP, indent = 1, requires = SOURCES },
	} },
	{ title = L.CHARACTER_INFORMATION_LABEL, options = {
		{ type = "check", key = "CompletedBy", text = L.COMPLETED_BY_CHECKBOX, tooltip = L.COMPLETED_BY_CHECKBOX_TOOLTIP, requires = ENABLED },
		{ type = "check", key = "KnownBy", text = L.KNOWN_BY_CHECKBOX, tooltip = L.KNOWN_BY_CHECKBOX_TOOLTIP, requires = ENABLED },
		{ type = "check", key = "UsefulFor", text = L.USEFUL_FOR_CHECKBOX, tooltip = L.USEFUL_FOR_CHECKBOX_TOOLTIP, requires = ENABLED },
		{ type = "check", key = "GroupByRealm", text = L.GROUP_BY_REALM_CHECKBOX, tooltip = L.GROUP_BY_REALM_CHECKBOX_TOOLTIP.."\n\n"..L.CHARACTER_LIST_GROUPING_DESC, indent = 1, requires = ENABLED, requiresAny = CHARACTERS },
		{ type = "check", key = "GroupByFaction", text = L.GROUP_BY_FACTION_CHECKBOX, tooltip = L.GROUP_BY_FACTION_CHECKBOX_TOOLTIP.."\n\n"..L.CHARACTER_LIST_GROUPING_DESC, indent = 1, requires = ENABLED, requiresAny = CHARACTERS },
	} },
	{ title = L.TOOLTIPS_GROUP_DETAILS, options = {
		{ type = "check", key = "SpecializationRequirements", text = L.SPEC_CHECKBOX, tooltip = L.SPEC_CHECKBOX_TOOLTIP, requires = ENABLED },
		{ type = "check", key = "Currencies", text = L.SHOW_CURRENCY_CALCULATIONS_CHECKBOX, tooltip = L.SHOW_CURRENCY_CALCULATIONS_CHECKBOX_TOOLTIP, requires = ENABLED },
	} },
};

-- Preview: a fixed sample which shows what each option adds to a tooltip.
local GRAY = { r = 0.6, g = 0.6, b = 0.6, wrap = true };
local LABEL = { r = 1, g = 0.82, b = 0 };
local INDENTED = { indent = 1 };
local NAMES = { indent = 2, wrap = true };
local WRAPPED = { wrap = true };
local CONTAINED_SAMPLES, SHOWN_SAMPLES = 8, 4;

local function AddCharacters(preview, kind)
	local name = UnitName("player") or UNKNOWN;
	local byRealm, byFaction = settings:GetTooltipSetting("GroupByRealm"), settings:GetTooltipSetting("GroupByFaction");
	if byRealm or byFaction then
		local realm = byRealm and GetRealmName() or nil;
		if realm == "" then realm = UNKNOWN; end	-- Forever has no realm names
		local faction = byFaction and select(2, UnitFactionGroup("player")) or nil;
		preview:AddLine(kind:format(""), nil, LABEL);
		preview:AddLine((realm and faction and (realm .. ", " .. faction) or realm or faction or UNKNOWN) .. " (1)", nil, INDENTED);
		preview:AddLine(name, nil, NAMES);
	else
		preview:AddLine(kind:format(name), nil, WRAPPED);
	end
end
-- The help is only added to the rows of ATT windows, no matter whether tooltip integrations are enabled
local function AddTooltipHelp(preview)
	if not settings:GetTooltipSetting("Show:TooltipHelp") then return; end
	preview:AddLine(L.OTHER_ROW_INSTRUCTIONS, nil, WRAPPED);
	preview:AddLine(L.INFORMATION_ATT_WINDOWS_ONLY, nil, GRAY);
end
settings.CreateOptionSections(child, sections, { preview = L.PREVIEW_LABEL, Update = function(preview)
	local function Get(key) return settings:GetTooltipSetting(key); end
	local function IsOn(key) return Get("Enabled") and Get(key); end

	preview:AddLine(L.PREVIEW_ITEM, IsOn("Progress") and (Get("ShowIconOnly") and app.GetCollectionIcon(false) or app.GetCollectionText(false)) or nil, { r = 0, g = 0.44, b = 0.87 });
	if not Get("Enabled") then
		preview:AddLine(L.PREVIEW_DISABLED, nil, GRAY);
		AddTooltipHelp(preview);
		return;
	end
	local modifier = Get("Enabled:Mod");
	if modifier ~= "None" then
		for _,choice in ipairs(Modifiers) do
			if choice.value == modifier then
				preview:AddLine(L.PREVIEW_HOLD_MODIFIER:format(choice.text), nil, GRAY);
			end
		end
	end

	if HasTransmog and Get("SharedAppearances") then
		preview:AddLine(L.SHARED_APPEARANCES_CHECKBOX, nil, LABEL);
		if Get("IncludeOriginalSource") then
			preview:AddLine(L.PREVIEW_ITEM, app.GetCollectionIcon(false), INDENTED);
		end
		preview:AddLine(L.PREVIEW_SHARED_ITEM, app.GetCollectionIcon(1), INDENTED);
		if not Get("OnlyShowObtainableSharedAppearances") then
			preview:AddLine(L.PREVIEW_UNOBTAINABLE_ITEM, app.GetCollectionIcon(false), INDENTED);
		end
		if not Get("OnlyShowRelevantSharedAppearances") then
			preview:AddLine(L.PREVIEW_OTHER_CLASS_ITEM, app.GetCollectionIcon(false), INDENTED);
		end
	end

	if Get("SourceLocations") then
		local sources = {};
		if Get("SourceLocations:Creatures") then sources[#sources + 1] = L.PREVIEW_ZONE .. " > " .. L.PREVIEW_CREATURE; end
		if Get("SourceLocations:Things") then sources[#sources + 1] = L.PREVIEW_ZONE .. " > " .. L.PREVIEW_QUEST .. " > " .. L.PREVIEW_REWARD:format(1); end
		if Get("SourceLocations:Unsorted") then sources[#sources + 1] = L.FOR_UNSORTED_CHECKBOX; end
		local options = { wrap = Get("SourceLocations:Wrapping") };
		local shown = math.min(#sources, Get("Locations"));
		for i=1,shown do preview:AddLine(sources[i], nil, options); end
		if shown < #sources then preview:AddLine(L.AND_MORE:format(#sources - shown), nil, GRAY); end
	end

	if Get("SummarizeThings") then
		preview:AddLine(L.CONTAINS, nil, LABEL);
		-- Keep the preview short: the rest only counts towards "And X more ..."
		local count = Get("ContainsCount");
		local shown = math.min(count, SHOWN_SAMPLES);
		for i=1,shown do
			preview:AddLine(L.PREVIEW_REWARD:format(i), app.GetCollectionIcon(i == 1 and 1 or false), INDENTED);
		end
		if shown < CONTAINED_SAMPLES then preview:AddLine(L.AND_MORE:format(CONTAINED_SAMPLES - shown), nil, GRAY); end
	end

	if Get("SpecializationRequirements") then
		preview:AddLine(L.SPEC_CHECKBOX, UnitClass("player"));
	end
	if Get("Currencies") then
		preview:AddLine(L.CURRENCY, "12");
	end
	if Get("CompletedBy") then AddCharacters(preview, L.COMPLETED_BY); end
	if Get("KnownBy") then AddCharacters(preview, L.KNOWN_BY); end
	if Get("UsefulFor") then AddCharacters(preview, L.USEFUL_FOR); end
	AddTooltipHelp(preview);
end });
