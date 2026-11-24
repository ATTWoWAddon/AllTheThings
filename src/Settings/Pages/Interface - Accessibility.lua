local _, app = ...;
local L, settings = app.L, app.Settings;
local Colorize = app.Modules.Color.Colorize
local HexToARGB = app.Modules.Color.HexToARGB
local RGBToHex = app.Modules.Color.RGBToHex

local picker, r,g,b,a = ColorPickerFrame, nil, nil, nil, nil;
local function ShowColorPicker(callback, color)
	if type(color) == "table" then
		r, g, b, a = color.r, color.g, color.b, color.a;
	else
		a, r, g, b = HexToARGB(color);
	end
	r, g, b = r or 0, g or 0, b or 0;
	local function OnColorChanged(restore)
		local newR, newG, newB, newA
		if restore then
			newR, newG, newB, newA = unpack(restore)
		else
			if OpacitySliderFrame then
				newA = OpacitySliderFrame:GetValue();
			else
				newA = ColorPickerFrame:GetColorAlpha();
			end
			newR, newG, newB = ColorPickerFrame:GetColorRGB();
		end
		callback({r = newR, g = newG, b = newB, a = newA});
		app.CallbackEvent("OnRedrawWindows")
		settings:Refresh();
	end
	picker.func, picker.opacityFunc, picker.cancelFunc, picker.swatchFunc
		= OnColorChanged, OnColorChanged, OnColorChanged, OnColorChanged
	picker.previousValues = {r,g,b,a}
	picker.hasOpacity, picker.opacity = (a ~= nil), a
	if picker.SetColorRGB then
		picker:SetColorRGB(r,g,b)
	else
		ColorPickerFrame.Content.ColorPicker:SetColorRGB(r,g,b);
	end
	ColorPickerFrame:Hide()	-- Need to run the OnShow handler
	ColorPickerFrame:Show()
end


settings.GetWindowColors = function()
	local rBg, gBg, bBg, aBg, rBd, gBd, bBd, aBd

	-- User-saved colors
	local colorg = settings:Get("Window:BackgroundColor")
	rBg = tonumber(colorg.r) or 0
	gBg = tonumber(colorg.g) or 0
	bBg = tonumber(colorg.b) or 0
	aBg = tonumber(colorg.a) or 0

	-- Border colors
	if settings:GetTooltipSetting("Window:UseClassForBorder") then
		-- Set all the borders to the current class color
		rBd, gBd, bBd = GetClassColor(app.Class)
		aBd = 1
	else
		-- User-saved colors
		local colord = settings:Get("Window:BorderColor")
		rBd = tonumber(colord.r) or 0
		gBd = tonumber(colord.g) or 0
		bBd = tonumber(colord.b) or 0
		aBd = tonumber(colord.a) or 0
	end
	return rBg, gBg, bBg, aBg, rBd, gBd, bBd, aBd
end

settings.ShowColorPicker = ShowColorPicker;

-- Settings: Accessibility Page
local child = settings:CreateOptionsPage(L.ACCESSIBILITY_PAGE, L.INTERFACE_PAGE)

-- A color which is used for the text of some Things
local function CreateTextColorOption(text, key)
	return { type = "color", text = text,
		get = function()
			local _, red, green, blue = HexToARGB(app.Colors[key]);
			return red, green, blue;
		end,
		OnClick = function()
			ShowColorPicker(function(color)
				app.Colors[key] = RGBToHex(color.r, color.g, color.b);
			end, app.Colors[key]);
		end,
		-- Opening the color picker can store the default itself, which is no change
		isChanged = function() return app.Colors[key]:lower() ~= app.DefaultColors[key]:lower(); end,
		reset = function()
			app.Colors[key] = nil;
			app.CallbackEvent("OnRedrawWindows")
			settings:Refresh();
		end,
	};
end

settings.CreateOptionSections(child, {
	{ title = L.COLORS_ICONS, options = {
		{ type = "check", key = "UseMoreColors", text = L.MORE_COLORS_CHECKBOX, tooltip = L.MORE_COLORS_CHECKBOX_TOOLTIP },
		CreateTextColorOption(L.BREADCRUMBS, "Breadcrumb"),
		CreateTextColorOption(L.LOCKED_QUESTS, "Locked"),
		CreateTextColorOption(MOUNTS, "Mount"),
		CreateTextColorOption(L.SETTINGS_ACCOUNT_WIDE, "Account"),
		CreateTextColorOption(L.APPEARANCE_COMPLETED, "Completed"),
	} },
},
-- Preview: a fixed sample of a list in the chosen colors.
{ preview = L.PREVIEW_LABEL, Update = function(preview)
	local rBg, gBg, bBg, aBg, rBd, gBd, bBd, aBd = settings.GetWindowColors();
	preview:SetBackdropColor(rBg, gBg, bBg, aBg);
	preview:SetBackdropBorderColor(rBd, gBd, bBd, settings:GetTooltipSetting("Window:HideBorders") and 0 or aBd);
	preview:AddLine(L.PREVIEW_ZONE, app.Modules.Color.GetProgressColorText(60, 100));
	preview:AddLine(L.PREVIEW_CREATURE, app.Modules.Color.GetProgressColorText(3, 3), { indent = 1 });
	preview:AddLine(Colorize(L.PREVIEW_QUEST, app.Colors.Breadcrumb), L.BREADCRUMBS, { indent = 1 });
	preview:AddLine(Colorize(L.PREVIEW_QUEST, app.Colors.Locked), L.LOCKED_QUESTS, { indent = 1 });
	preview:AddLine(Colorize(L.PREVIEW_REWARD:format(1), app.Colors.Mount), MOUNTS, { indent = 1 });
	-- These only have a color while more colors are shown
	local className, _, classID = UnitClass("player");
	local _, factionName = UnitFactionGroup("player");
	preview:AddLine(app.TryColorizeName({ classID = classID }, L.PREVIEW_REWARD:format(2)), className, { indent = 1 });
	preview:AddLine(app.TryColorizeName({ r = app.FactionID }, L.PREVIEW_REWARD:format(3)), factionName, { indent = 1 });
	preview:AddLine(app.TryColorizeName({ accountWide = true }, L.PREVIEW_REWARD:format(4)), L.SETTINGS_ACCOUNT_WIDE, { indent = 1 });
end });
