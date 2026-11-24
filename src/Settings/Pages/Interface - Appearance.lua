local _, app = ...;
local L, settings = app.L, app.Settings;

-- Global locals
local ipairs, pairs, tonumber
	= ipairs, pairs, tonumber;

-- Settings: Appearance Page
-- What the ATT windows look like.
local child = settings:CreateOptionsPage(L.APPEARANCE_PAGE, L.INTERFACE_PAGE)

-- The fonts of LibSharedMedia when another addon has it, or otherwise the game's own.
-- The game's fonts only have the characters of some languages.
local GameFonts = {};
local locale = GetLocale();
if locale ~= "ruRU" and locale ~= "koKR" and locale ~= "zhCN" and locale ~= "zhTW" then
	GameFonts["Arial Narrow"] = "Fonts\\ARIALN.TTF";
	GameFonts["Friz Quadrata TT"] = "Fonts\\FRIZQT__.TTF";
	GameFonts["Morpheus"] = "Fonts\\MORPHEUS.TTF";
	GameFonts["Skurri"] = "Fonts\\SKURRI.TTF";
end
local function GetSharedMedia()
	return LibStub and LibStub("LibSharedMedia-3.0", true);
end
-- nil while the font isn't available, e.g. when the addon it came with is disabled
settings.GetFontPath = function(name)
	local media = GetSharedMedia();
	return media and media:Fetch("font", name, true) or GameFonts[name];
end
local function GetFontChoices()
	local choices = {};
	local media = GetSharedMedia();
	if media then
		for _,name in ipairs(media:List("font")) do choices[#choices + 1] = { value = name, text = name }; end
	else
		for name in pairs(GameFonts) do choices[#choices + 1] = { value = name, text = name }; end
	end
	table.sort(choices, function(a, b) return a.text < b.text; end);
	table.insert(choices, 1, { value = "", text = DEFAULT });
	return choices;
end
-- Other addons can add their fonts after ATT has loaded
app.AddEventHandler("OnReady", function()
	if settings:GetTooltipSetting("Row:Font") ~= "" then app.ApplyStyleToAllWindows(); end
end)

-- A color of the ATT windows
local function CreateWindowColorOption(text, tooltip, key, usable)
	local function GetDefault() return settings.GetSettingDefault(key); end
	return { type = "color", text = text, tooltip = tooltip, usable = usable,
		get = function()
			local color = settings:Get(key);
			return color.r, color.g, color.b, color.a;
		end,
		OnClick = function()
			settings.ShowColorPicker(function(color) settings:Set(key, color); end, settings:Get(key));
		end,
		isChanged = function()
			local color, default = settings:Get(key), GetDefault();
			for component,value in pairs(default) do
				if (tonumber(color[component]) or 0) ~= value then return true; end
			end
		end,
		reset = function()
			local default = GetDefault();
			settings:Set(key, { r = default.r, g = default.g, b = default.b, a = default.a });
			app.CallbackEvent("OnRedrawWindows")
		end,
	};
end

local function HasBorders() return not settings:GetTooltipSetting("Window:HideBorders"); end
local function HasSquareBorders()
	return HasBorders() and settings:GetTooltipSetting("Window:BorderStyle") == "square";
end

settings.CreateOptionSections(child, {
	{ title = L.WINDOWS_PAGE, options = {
		{ type = "dropdown", key = "Window:BorderStyle", text = L.APPEARANCE_BORDER_STYLE, tooltip = L.APPEARANCE_BORDER_STYLE_TOOLTIP, width = 160, labelWidth = 80, usable = HasBorders, choices = {
			{ value = "rounded", text = L.APPEARANCE_BORDER_ROUNDED },
			{ value = "square", text = L.APPEARANCE_BORDER_SQUARE },
		} },
		{ type = "slider", name = "ATTsliderBorderSize", key = "Window:BorderSize", text = L.APPEARANCE_BORDER_SIZE, tooltip = L.APPEARANCE_BORDER_SIZE_TOOLTIP, min = 1, max = 8, step = 1, format = "%.0f", usable = HasSquareBorders },
		{ type = "check", key = "Window:HideBorders", text = L.HIDE_BORDERS, tooltip = L.HIDE_BORDERS_TOOLTIP },
		{ type = "check", key = "Window:UseClassForBorder", text = L.CLASS_BORDER, tooltip = L.CLASS_BORDER_TOOLTIP, usable = HasBorders },
		{ type = "check", key = "Window:ShowScrollBar", text = L.APPEARANCE_SCROLL_BAR, tooltip = L.APPEARANCE_SCROLL_BAR_TOOLTIP },
	} },
	{ title = L.WINDOW_COLORS, options = {
		CreateWindowColorOption(L.BACKGROUND, L.BACKGROUND_TOOLTIP, "Window:BackgroundColor"),
		CreateWindowColorOption(L.BORDER, L.BORDER_TOOLTIP, "Window:BorderColor", function()
			return HasBorders() and not settings:GetTooltipSetting("Window:UseClassForBorder");
		end),
		CreateWindowColorOption(L.APPEARANCE_TITLE_COLOR, L.APPEARANCE_TITLE_COLOR_TOOLTIP, "Window:TitleColor"),
		CreateWindowColorOption(L.APPEARANCE_HIGHLIGHT_COLOR, L.APPEARANCE_HIGHLIGHT_COLOR_TOOLTIP, "Window:HighlightColor"),
	} },
	{ title = L.APPEARANCE_GROUP_TEXT, options = {
		{ type = "dropdown", key = "Row:Font", text = L.APPEARANCE_FONT, tooltip = L.APPEARANCE_FONT_TOOLTIP, width = 160, labelWidth = 80, choices = GetFontChoices },
		{ type = "dropdown", key = "Row:FontOutline", text = L.APPEARANCE_OUTLINE, tooltip = L.APPEARANCE_OUTLINE_TOOLTIP, width = 160, labelWidth = 80, choices = {
			{ value = "", text = DEFAULT },
			{ value = "OUTLINE", text = L.APPEARANCE_OUTLINE_THIN },
			{ value = "THICKOUTLINE", text = L.APPEARANCE_OUTLINE_THICK },
		} },
		{ type = "slider", name = "ATTsliderRowFontScale", key = "Row:FontScale", text = L.APPEARANCE_TEXT_SIZE, tooltip = L.APPEARANCE_TEXT_SIZE_TOOLTIP, min = 0.7, max = 2, step = 0.05, format = "%.2f" },
		{ type = "slider", name = "ATTsliderRowSpacing", key = "Row:Spacing", text = L.APPEARANCE_ROW_SPACING, tooltip = L.APPEARANCE_ROW_SPACING_TOOLTIP, min = 0, max = 20, step = 1, format = "%.0f" },
	} },
},
-- Preview: a fixed sample of a list in the chosen style.
{ preview = L.PREVIEW_LABEL, Update = function(preview)
	local rBg, gBg, bBg, aBg, rBd, gBd, bBd, aBd = settings.GetWindowColors();
	preview:SetBackdrop(app.GetWindowBackdrop());
	preview:SetBackdropColor(rBg, gBg, bBg, aBg);
	preview:SetBackdropBorderColor(rBd, gBd, bBd, HasBorders() and aBd or 0);
	if not preview.TitleBackground then
		preview.TitleBackground = preview:CreateTexture(nil, "BACKGROUND", nil, 1);
		preview.TitleBackground:SetPoint("TOPLEFT", preview, "TOPLEFT", 5, -6);
		preview.TitleBackground:SetPoint("RIGHT", preview, "RIGHT", -5, 0);
	end
	local color = settings:Get("Window:TitleColor");
	preview.TitleBackground:SetColorTexture(tonumber(color.r) or 0, tonumber(color.g) or 0, tonumber(color.b) or 0, tonumber(color.a) or 0);
	preview.lineFont = app.GetRowFont("GameFontNormal");
	preview.lineSpacing = tonumber(settings:GetTooltipSetting("Row:Spacing")) or 4;
	preview:AddLine(L.PREVIEW_ZONE, app.Modules.Color.GetProgressColorText(60, 100), { r = 1, g = 0.82, b = 0 });
	preview.TitleBackground:SetPoint("BOTTOM", preview, "TOP", 0, preview.y + 1);
	preview:AddLine(L.PREVIEW_CREATURE, app.Modules.Color.GetProgressColorText(2, 3), { r = 1, g = 0.82, b = 0, indent = 1 });
	preview:AddLine(L.PREVIEW_QUEST, app.Modules.Color.GetProgressColorText(0, 2), { r = 1, g = 0.82, b = 0, indent = 1 });
	preview:AddLine(L.PREVIEW_REWARD:format(1), nil, { r = 1, g = 0.82, b = 0, indent = 2 });
	preview:AddLine(L.PREVIEW_REWARD:format(2), nil, { r = 1, g = 0.82, b = 0, indent = 2 });
end });
