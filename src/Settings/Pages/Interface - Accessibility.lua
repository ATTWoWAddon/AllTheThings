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
		app.CallbackEvent("OnRenderDirty")
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
		local _, class = UnitClass("player")
		rBd, gBd, bBd = GetClassColor(class)
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
settings.ApplyWindowColors = function(window)
	-- Apply the user-set colours
	local rBg, gBg, bBg, aBg, rBd, gBd, bBd, aBd = settings.GetWindowColors()

	window:SetBackdropColor(rBg, gBg, bBg, aBg)
	window:SetBackdropBorderColor(rBd, gBd, bBd, aBd)
end
settings.ApplyAllWindowColors = function()
	-- Apply the user-set colours
	local rBg, gBg, bBg, aBg, rBd, gBd, bBd, aBd = settings.GetWindowColors()

	for suffix, window in pairs(app.Windows) do
		window:SetBackdropColor(rBg, gBg, bBg, aBg)
		window:SetBackdropBorderColor(rBd, gBd, bBd, aBd)
	end
end

-- Settings: Accessibility Page
local child = settings:CreateOptionsPage(L.ACCESSIBILITY_PAGE, L.INTERFACE_PAGE)

-- Column 1
local headerColors = child:CreateHeaderLabel(L.COLORS_ICONS)
if child.separator then
	headerColors:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerColors:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end

local textHeader = child:CreateTextLabel(Colorize(L.ACCESSIBILITY_EXPLAIN, app.Colors.White))
textHeader:SetPoint("TOPLEFT", headerColors, "BOTTOMLEFT", 0, -4)

local checkboxUseMoreColors = child:CreateCheckBox(L.MORE_COLORS_CHECKBOX,
function(self)
	self:SetChecked(settings:GetTooltipSetting("UseMoreColors"))
end,
function(self)
	settings:SetTooltipSetting("UseMoreColors", self:GetChecked())
end)
checkboxUseMoreColors:SetATTTooltip(L.MORE_COLORS_CHECKBOX_TOOLTIP)
checkboxUseMoreColors:SetPoint("TOPLEFT", textHeader, "BOTTOMLEFT", 0, -5)

local buttonDefault = child:CreateButton(
{ text = DEFAULT, tooltip = L.RESET_TOOLTIP, },
{
	OnClick = function(self)
		wipe(app.Colors);
		app.CallbackEvent("OnRenderDirty")
	end,
})
buttonDefault:SetPoint("TOPLEFT", checkboxUseMoreColors.Text, "TOPRIGHT", 10, 5)

local textBreadcrumbs = child:CreateTextLabel(Colorize(L.BREADCRUMBS, app.Colors.White))
textBreadcrumbs:SetPoint("TOPLEFT", checkboxUseMoreColors, "BOTTOMLEFT", 0, -6)

local function SetBreadcrumbColor(color)
	app.Colors.Breadcrumb = RGBToHex(color.r, color.g, color.b);
end
local buttonBreadcrumbColor = child:CreateButton(
{ text = COLOR, },
{
	OnClick = function(self)
		ShowColorPicker(SetBreadcrumbColor, app.Colors.Breadcrumb);
	end,
})
buttonBreadcrumbColor:SetPoint("TOPLEFT", textBreadcrumbs, "BOTTOMLEFT", 0, -5)

--

local textLocked = child:CreateTextLabel(Colorize(L.LOCKED_QUESTS, app.Colors.White))
textLocked:SetPoint("TOPLEFT", buttonBreadcrumbColor, "BOTTOMLEFT", 0, -10)

local function SetLockedColor(color)
	app.Colors.Locked = RGBToHex(color.r, color.g, color.b);
end
local buttonLockedColor = child:CreateButton(
{ text = COLOR, },
{
	OnClick = function(self)
		ShowColorPicker(SetLockedColor, app.Colors.Locked)
	end,
})
buttonLockedColor:SetPoint("TOPLEFT", textLocked, "BOTTOMLEFT", 0, -5)

--

local textMount = child:CreateTextLabel(Colorize(MOUNTS, app.Colors.White))
textMount:SetPoint("TOPLEFT", buttonLockedColor, "BOTTOMLEFT", 0, -10)

local function SetMountColor(color)
	app.Colors.Mount = RGBToHex(color.r, color.g, color.b)
end
local buttonMountColor = child:CreateButton(
{ text = COLOR, },
{
	OnClick = function(self)
		ShowColorPicker(SetMountColor, app.Colors.Mount);
	end,
})
buttonMountColor:SetPoint("TOPLEFT", textMount, "BOTTOMLEFT", 0, -5)



local headerWindowColors = child:CreateHeaderLabel(L.WINDOW_COLORS)
headerWindowColors:SetPoint("LEFT", headerColors, 0, 0)
headerWindowColors:SetPoint("TOP", buttonMountColor, "BOTTOM", 0, -20)

-- Color Picker
local function SetWindowBackgroundColor(color)
	settings:Set("Window:BackgroundColor", color);
	settings.ApplyAllWindowColors();
end
local buttonBackgroundColor = child:CreateButton(
{ text = L.BACKGROUND, tooltip = L.BACKGROUND_TOOLTIP, },
{
	OnClick = function(self)
		ShowColorPicker(SetWindowBackgroundColor, settings:Get("Window:BackgroundColor"));
	end,
})
buttonBackgroundColor:SetPoint("TOPLEFT", headerWindowColors, "BOTTOMLEFT", 0, -5)


local function SetWindowBorderColor(color)
	settings:Set("Window:BorderColor", color);
	settings.ApplyAllWindowColors();
end
local buttonBorderColor = child:CreateButton(
{ text = L.BORDER, tooltip = L.BORDER_TOOLTIP, },
{
	OnClick = function(self)
		ShowColorPicker(SetWindowBorderColor, settings:Get("Window:BorderColor"));
	end,
})
buttonBorderColor:SetPoint("BOTTOMLEFT", buttonBackgroundColor, "BOTTOMRIGHT", 5, 0)
buttonBorderColor.OnRefresh = function(self)
	if settings:GetTooltipSetting("Window:UseClassForBorder") then
		self:Disable()
	else
		self:Enable()
	end
end

local buttonResetColor = child:CreateButton(
{ text = RESET, tooltip = L.RESET_TOOLTIP, },
{
	OnClick = function(self)
		settings:Set("Window:BackgroundColor", {r = 0, g = 0, b = 0, a = 1})
		settings:Set("Window:BorderColor", {r = 1, g = 1, b = 1, a = 1})
		settings.ApplyAllWindowColors()
	end,
})
buttonResetColor:SetPoint("BOTTOMLEFT", buttonBorderColor, "BOTTOMRIGHT", 5, 0)

local checkboxUseClassColorForBorder = child:CreateCheckBox(L.CLASS_BORDER,
function(self)
	self:SetChecked(settings:GetTooltipSetting("Window:UseClassForBorder"))
end,
function(self)
	settings:SetTooltipSetting("Window:UseClassForBorder", self:GetChecked())
	settings.ApplyAllWindowColors()
end)
checkboxUseClassColorForBorder:SetATTTooltip(L.CLASS_BORDER_TOOLTIP)
checkboxUseClassColorForBorder:SetPoint("TOPLEFT", buttonBackgroundColor, "BOTTOMLEFT", -2, 0)