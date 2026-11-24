local _, app = ...;
local L, settings = app.L, app.Settings;

-- Global locals
local ipairs, pairs, type, math_max
	= ipairs, pairs, type, math.max;

-- Builds a settings page from a list of sections, with a live preview or notes beside them.
-- Each section is { title = "", options = { ... } } and each option is one of:
--	{ type = "check", key = "", text = "", tooltip = "" }
--	{ type = "slider", key = "", text = nil or "", tooltip = "", min = 0, max = 1, step = 1, format = "%.0f" }
--	{ type = "dropdown", key = "", text = "", choices = { { value = "", text = "" }, ... }, width = 90, labelWidth = nil }
--	{ type = "color", text = "", tooltip = "", get = function() return r, g, b, a end, OnClick = function() end }
-- Options can also have:
--	indent: number of indentation steps
--	requires: tooltip settings which must all be enabled for the option to be usable
--	requiresAny: tooltip settings of which at least one must be enabled
--	usable: function which must return true for the option to be usable
--	setting: a general setting, used instead of the tooltip setting 'key' (not for sliders)
--	inverse: the general setting is disabled while the check is enabled
--	get / set: used instead of the tooltip setting 'key' (not for sliders)
--	isChanged / reset: for options which have their own defaults
--	OnChanged: called after the option changed
--	OnRefresh: called whenever the option refreshes (checks and dropdowns), with the option's frame
--	advanced: only shown in the Advanced view, or while it's changed from the default
--	wip: marks a check as being worked on
--	search: text which the settings search uses for a slider without a text
-- Options with a tooltip setting show a dot while they differ from the default, which resets them.
-- The choices of a dropdown can also be a function which returns them.
-- A false option or section is skipped, so they can be written as 'condition and { ... } or false'.

-- Layout
local COLUMN_WIDTH, SCROLLBAR_WIDTH, ASIDE_X = 366, 28, 384;
local FULL_WIDTH = 640;	-- without anything beside the sections
local HEADER_HEIGHT, CHECK_HEIGHT, SECTION_GAP, INDENT = 24, 20, 8, 16;
local SLIDER_HEIGHT, SLIDER_LABEL_HEIGHT, DROPDOWN_HEIGHT = 34, 18, 28;
local PREVIEW_PADDING, PREVIEW_INDENT = 10, 10;
local DISABLED_ALPHA = 0.55;	-- still readable on the dark background

local function IsUsable(option)
	if option.usable and not option.usable() then return false; end
	if option.requires then
		for _,key in ipairs(option.requires) do
			if not settings:GetTooltipSetting(key) then return false; end
		end
	end
	if option.requiresAny then
		for _,key in ipairs(option.requiresAny) do
			if settings:GetTooltipSetting(key) then return true; end
		end
		return false;
	end
	return true;
end
local function SetUsable(object, usable)
	if usable then
		object:Enable();
		object:SetAlpha(1);
	else
		object:Disable();
		object:SetAlpha(DISABLED_ALPHA);
	end
end
settings.SetUsable = SetUsable;
local function GetOption(option)
	if option.get then return option.get(); end
	if option.setting then
		local value = settings:Get(option.setting);
		if option.inverse then return not value; end
		return value;
	end
	return settings:GetTooltipSetting(option.key);
end
local function SetOption(option, value)
	if option.set then
		option.set(value);
	elseif option.setting then
		if option.inverse then value = not value; end
		settings:Set(option.setting, value);
	else
		settings:SetTooltipSetting(option.key, value);
	end
	if option.OnChanged then option.OnChanged(); end
end

local function IsChanged(option)
	if option.isChanged then return option.isChanged(); end
	if option.setting then return settings.IsSettingChanged(option.setting); end
	return option.key and not option.get and settings.IsTooltipSettingChanged(option.key);
end
local function ResetOption(option)
	if option.reset then
		option.reset();
		return;
	end
	if option.setting then
		local default = settings.GetSettingDefault(option.setting) or false;
		if option.inverse then default = not default; end
		SetOption(option, default);
		return;
	end
	-- nil removes the override, so the profile uses ATT's default again
	settings:SetTooltipSetting(option.key, nil);
	if option.OnChanged then option.OnChanged(); end
end
-- The names of the options by their tooltip setting, to explain what a grayed-out option needs
local OptionNames = {};
local function GetOptionName(key)
	return OptionNames[key] or key;
end
local function AddUnusableReason(option, tooltipInfo)
	if IsUsable(option) then return; end
	local missing = {};
	if option.requires then
		for _,key in ipairs(option.requires) do
			if not settings:GetTooltipSetting(key) then missing[#missing + 1] = GetOptionName(key); end
		end
	end
	local reason;
	if #missing > 0 then
		reason = L.SETTINGS_NEEDS:format(app.TableConcat(missing, nil, nil, ", "));
	elseif option.requiresAny and not (option.usable and not option.usable()) then
		for _,key in ipairs(option.requiresAny) do missing[#missing + 1] = GetOptionName(key); end
		reason = L.SETTINGS_NEEDS_ANY:format(app.TableConcat(missing, nil, nil, ", "));
	elseif app.MODE_DEBUG then
		reason = L.SETTINGS_NOT_IN_DEBUG;
	end
	if reason then
		tooltipInfo[#tooltipInfo + 1] = { left = reason, wrap = true, r = 1, g = 0.4, b = 0.4 };
	end
end
-- Gives a button the option's tooltip, which also explains why it's grayed out
local function SetOptionTooltip(button, option)
	button:SetMotionScriptsWhileDisabled(true);
	button.OnTooltip = function(self, tooltipInfo)
		if not option.tooltip then tooltipInfo[#tooltipInfo + 1] = { left = option.text }; end
		AddUnusableReason(option, tooltipInfo);
	end
	button:SetATTTooltip(option.tooltip);
end

-- Shows a dot in front of an option which differs from its default, which resets it when clicked
local function CreateChangedMarker(content, option, x, y, height)
	local marker = CreateFrame("Button", nil, content);
	marker:SetSize(12, 12);
	marker:SetPoint("TOPRIGHT", content, "TOPLEFT", x + 2, y - (height - 12) / 2);
	local texture = marker:CreateTexture(nil, "ARTWORK");
	texture:SetAllPoints();
	texture:SetTexture("Interface\\COMMON\\Indicator-Yellow");
	marker:SetScript("OnClick", function() ResetOption(option); end);
	marker:SetATTTooltip(L.SETTINGS_RESET_OPTION);
	marker.OnRefresh = function(self) self:SetShown(IsChanged(option) and true or false); end
	marker:Hide();
	content:RegisterObject(marker);
end
local function CreateSectionReset(content, section)
	local button = CreateFrame("Button", nil, content);
	local text = button:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
	text:SetText(RESET or "Reset");
	text:SetPoint("RIGHT", button, "RIGHT", 0, 0);
	button:SetSize(text:GetStringWidth() + 4, 16);
	button:SetPoint("TOPRIGHT", content, "TOPLEFT", content.SectionWidth, -1);
	button:SetATTTooltip(L.SETTINGS_RESET_SECTION);
	button:SetScript("OnClick", function()
		for _,option in ipairs(section.options) do
			if option and IsChanged(option) then ResetOption(option); end
		end
	end);
	button.OnRefresh = function(self)
		for _,option in ipairs(section.options) do
			if option and IsChanged(option) then
				self:Show();
				return;
			end
		end
		self:Hide();
	end
	button:Hide();
	content:RegisterObject(button);
end

-- Gives a checkbox the size and font every option uses
settings.StyleCheckBox = function(cb, maxWidth)
	cb:SetScale(1);
	cb:SetSize(22, 22);
	-- Cut the label off with "..." when it doesn't fit
	local text = cb.Text;
	text:SetScale(1);
	text:SetFontObject(GameFontNormalSmall);
	text:SetJustifyH("LEFT");
	if text:GetUnboundedStringWidth() > maxWidth then text:SetWidth(maxWidth); end
	cb:SetHitRectInsets(0, -text:GetWidth(), 0, 0);
	-- Grayed-out options still explain what they do
	cb:SetMotionScriptsWhileDisabled(true);
end

-- Option builders. Each one returns the height it used.
local Builders = {
	check = function(content, option, x, y)
		local cb = content:CreateCheckBox(option.text,
		function(self)
			self:SetChecked(GetOption(option) and true or false);
			SetUsable(self, IsUsable(option));
			if option.OnRefresh then option.OnRefresh(self); end
		end,
		function(self)
			SetOption(option, self:GetChecked() and true or false);
			-- The option may not have accepted the change
			self:SetChecked(GetOption(option) and true or false);
		end);
		settings.StyleCheckBox(cb, content.SectionWidth - x - 26);
		cb:SetPoint("TOPLEFT", content, "TOPLEFT", x, y);
		SetOptionTooltip(cb, option);
		if option.wip then cb:MarkAsWIP(); end
		cb.SettingsOption.tooltip = option.tooltip;
		cb.SettingsOption.IsChanged = function() return IsChanged(option); end
		cb.SettingsOption.advanced = option.advanced;
		return CHECK_HEIGHT;
	end,
	slider = function(content, option, x, y)
		local slider = content:CreateSlider(option.name, {
			TEXT = option.text,
			SEARCH = option.search,
			TOOLTIP = option.tooltip,
			SETTING = option.key,
			FORMAT = option.format,
			MIN = option.min, MAX = option.max, STEP = option.step,
			OnRefresh = function(self) SetUsable(self, IsUsable(option)); end,
			OnValueChanged = option.OnChanged,
		});
		slider.SettingsOption.advanced = option.advanced;
		local labelHeight = option.text and SLIDER_LABEL_HEIGHT or 0;
		slider:SetSize(200, 20);
		slider:SetPoint("TOPLEFT", content, "TOPLEFT", x + 4, y - labelHeight);
		return SLIDER_HEIGHT + labelHeight;
	end,
	color = function(content, option, x, y)
		local button = CreateFrame("Button", nil, content);
		button:SetSize(22, 16);
		button:SetPoint("TOPLEFT", content, "TOPLEFT", x + 2, y - 3);
		local border = button:CreateTexture(nil, "BACKGROUND");
		border:SetAllPoints();
		border:SetColorTexture(0.6, 0.6, 0.6, 1);
		local swatch = button:CreateTexture(nil, "ARTWORK");
		swatch:SetPoint("TOPLEFT", button, "TOPLEFT", 1, -1);
		swatch:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", -1, 1);
		local text = button:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
		text:SetPoint("LEFT", button, "RIGHT", 6, 0);
		text:SetText(option.text);
		button:SetHitRectInsets(0, -text:GetStringWidth() - 6, 0, 0);
		button:SetScript("OnClick", option.OnClick);
		SetOptionTooltip(button, option);
		button.OnRefresh = function(self)
			local r, g, b, a = option.get();
			swatch:SetColorTexture(r or 0, g or 0, b or 0, a or 1);
			SetUsable(self, IsUsable(option));
		end
		content:RegisterObject(button);
		settings.RegisterOption({ frame = button, text = option.text, advanced = option.advanced, tooltip = option.tooltip, IsChanged = function() return IsChanged(option); end });
		return 22;
	end,
	dropdown = function(content, option, x, y)
		local label = content:CreateTextLabel(option.text);
		label:SetFontObject(GameFontNormalSmall);
		label:SetWidth(option.labelWidth or 0);
		label:SetWordWrap(false);
		label:SetPoint("TOPLEFT", content, "TOPLEFT", x + 4, y - 8);

		local dropdown = CreateFrame("Frame", content:GetName() .. "-DD-" .. (option.key or option.setting):gsub("%W", ""), content, "UIDropDownMenuTemplate");
		dropdown:SetPoint("LEFT", label, "RIGHT", -8, -2);
		UIDropDownMenu_SetWidth(dropdown, option.width or 90);
		local function GetChoices()
			return type(option.choices) == "function" and option.choices() or option.choices;
		end
		local function InitializeMenu()
			for _,choice in ipairs(GetChoices()) do
				local info = UIDropDownMenu_CreateInfo();
				info.text = choice.text;
				info.checked = GetOption(option) == choice.value;
				info.func = function()
					SetOption(option, choice.value);
					dropdown:OnRefresh();
				end
				UIDropDownMenu_AddButton(info);
			end
		end
		local initialized;
		dropdown.OnRefresh = function(self)
			-- Initializing runs the menu function right away, which needs the settings to be loaded
			if not initialized then
				initialized = true;
				UIDropDownMenu_Initialize(self, InitializeMenu);
			end
			local value = GetOption(option);
			for _,choice in ipairs(GetChoices()) do
				if choice.value == value then UIDropDownMenu_SetText(self, choice.text); end
			end
			if IsUsable(option) then
				UIDropDownMenu_EnableDropDown(self);
				self:SetAlpha(1);
				label:SetAlpha(1);
			else
				UIDropDownMenu_DisableDropDown(self);
				self:SetAlpha(DISABLED_ALPHA);
				label:SetAlpha(DISABLED_ALPHA);
			end
			if option.OnRefresh then option.OnRefresh(self); end
		end
		if option.tooltip then
			dropdown:EnableMouse(true);
			dropdown:SetATTTooltip(option.tooltip);
		end
		content:RegisterObject(dropdown);
		settings.RegisterOption({ frame = dropdown, text = option.text, advanced = option.advanced, tooltip = option.tooltip, IsChanged = function() return IsChanged(option); end });
		return DROPDOWN_HEIGHT;
	end,
};

-- Preview
local function GetPreviewLine(preview, index)
	local line = preview.Lines[index];
	if line then return line; end
	line = {
		Icon = preview:CreateTexture(nil, "ARTWORK"),
		Left = preview:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall"),
		Right = preview:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall"),
	};
	line.Icon:SetSize(14, 14);
	line.Left:SetJustifyH("LEFT");
	line.Left:SetJustifyV("TOP");
	line.Right:SetJustifyH("RIGHT");
	line.Right:SetWordWrap(false);
	preview.Lines[index] = line;
	return line;
end
local PreviewMixin = {
	Begin = function(self)
		self.count = 0;
		self.y = -PREVIEW_PADDING;
	end,
	-- options: r, g, b, indent, wrap, icon (texture) and portrait (unit)
	AddLine = function(self, left, right, options)
		options = options or app.EmptyTable;
		self.count = self.count + 1;
		local line = GetPreviewLine(self, self.count);
		local x = PREVIEW_PADDING + (options.indent or 0) * PREVIEW_INDENT;

		line.Right:ClearAllPoints();
		line.Right:SetPoint("TOPRIGHT", self, "TOPRIGHT", -PREVIEW_PADDING, self.y);
		line.Right:SetText(right or "");
		line.Right:Show();

		if options.icon or options.portrait then
			line.Icon:ClearAllPoints();
			line.Icon:SetPoint("TOPLEFT", self, "TOPLEFT", x, self.y + 1);
			if options.portrait then
				SetPortraitTexture(line.Icon, options.portrait);
			else
				line.Icon:SetTexture(options.icon);
			end
			line.Icon:Show();
			x = x + 18;
		else
			line.Icon:Hide();
		end

		line.Left:ClearAllPoints();
		line.Left:SetPoint("TOPLEFT", self, "TOPLEFT", x, self.y);
		line.Left:SetWordWrap(options.wrap and true or false);
		line.Left:SetWidth(math_max(20, self:GetWidth() - x - PREVIEW_PADDING - (right and line.Right:GetStringWidth() + 6 or 0)));
		line.Left:SetTextColor(options.r or 1, options.g or 1, options.b or 1);
		line.Left:SetText(left);
		line.Left:Show();

		self.y = self.y - math_max(14, line.Left:GetStringHeight() + 3);
	end,
	End = function(self)
		for i=self.count+1,#self.Lines do
			local line = self.Lines[i];
			line.Icon:Hide();
			line.Left:Hide();
			line.Right:Hide();
		end
		self:SetHeight(PREVIEW_PADDING - self.y);
	end,
};
local function CreatePreview(page, title, UpdatePreview)
	local label = page:CreateHeaderLabel(title);
	label:SetPoint("TOPLEFT", page.separator, "BOTTOMLEFT", ASIDE_X, -8);

	local preview = CreateFrame("Frame", nil, page, BackdropTemplateMixin and "BackdropTemplate");
	preview:SetPoint("TOPLEFT", page.separator, "BOTTOMLEFT", ASIDE_X, -30);
	preview:SetPoint("RIGHT", page, "RIGHT", -10, 0);
	preview:SetHeight(40);
	preview:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 16, edgeSize = 16,
		insets = { left = 4, right = 4, top = 4, bottom = 4 },
	});
	preview:SetBackdropColor(0, 0, 0, 0.8);
	preview:SetBackdropBorderColor(0.6, 0.6, 0.6, 1);
	preview.Lines = {};
	for key,method in pairs(PreviewMixin) do preview[key] = method; end

	local function Refresh()
		if not page:IsVisible() then return; end
		preview:Begin();
		UpdatePreview(preview);
		preview:End();
	end
	page.OnRefresh = Refresh;
	-- The frame has no width until its page has been laid out
	preview:SetScript("OnSizeChanged", function(self, width)
		if self.lastWidth ~= width then
			self.lastWidth = width;
			Refresh();
		end
	end);
	page:HookScript("OnShow", Refresh);
end

-- Hides the scrollbar of a scroll frame while everything fits
settings.HideUnneededScrollBar = function(scroller, scrollBar)
	local function UpdateScrollBar()
		scrollBar:SetShown(scroller:GetVerticalScrollRange() > 1);
	end
	scroller:HookScript("OnScrollRangeChanged", UpdateScrollBar);
	scroller:HookScript("OnShow", UpdateScrollBar);
end
-- Creates a scrollable column on the page, whose scrollbar hides while everything fits
local function CreateColumn(page, left, right, top)
	local content = page:CreateScrollFrame();
	local scroller = content.ScrollContainer;
	scroller:SetPoint("TOPLEFT", page.separator, "BOTTOMLEFT", left, -4 - (top or 0));
	scroller:SetPoint("BOTTOMRIGHT", page, "BOTTOMLEFT", right, 6);
	local scrollBar = scroller.ScrollBar or _G[scroller:GetName() .. "ScrollBar"];
	if scrollBar then
		scrollBar:ClearAllPoints();
		scrollBar:SetPoint("TOPRIGHT", scroller, "TOPRIGHT", -4, -18);
		scrollBar:SetPoint("BOTTOMRIGHT", scroller, "BOTTOMRIGHT", -4, 18);
		settings.HideUnneededScrollBar(scroller, scrollBar);
	end
	content.SectionWidth = right - left - SCROLLBAR_WIDTH;
	content:SetWidth(content.SectionWidth);
	return content;
end
local function CreateSectionHeader(content, title, y)
	local header = content:CreateHeaderLabel(title);
	header:SetPoint("TOPLEFT", content, "TOPLEFT", 8, y);
	local line = content:CreateTexture(nil, "ARTWORK");
	line:SetColorTexture(1, 1, 1, 0.2);
	line:SetHeight(1);
	line:SetPoint("TOPLEFT", content, "TOPLEFT", 8, y - HEADER_HEIGHT + 5);
	line:SetPoint("RIGHT", content, "LEFT", content.SectionWidth, 0);
	return HEADER_HEIGHT, header;
end
settings.CreatePageColumn = CreateColumn;
settings.CreatePageSectionHeader = CreateSectionHeader;
local function CreateNotes(page, notes)
	local content = CreateColumn(page, ASIDE_X - 8, FULL_WIDTH + 16);
	local y = -4;
	for _,note in ipairs(notes) do
		y = y - CreateSectionHeader(content, note.title, y);
		local text = content:CreateTextLabel(note.text);
		text:SetWidth(content.SectionWidth - 8);
		text:SetSpacing(4);
		text:SetPoint("TOPLEFT", content, "TOPLEFT", 8, y);
		y = y - text:GetStringHeight() - SECTION_GAP;
	end
	content:SetHeight(-y);
end

---@param page table # Settings page which receives the sections.
---@param sections table # Section and option definitions, see above.
---@param aside? table # Shown beside the sections: { preview = title, Update = function(preview) } to add lines with preview:AddLine(left, right, options), or { notes = { { title = "", text = "" }, ... } }.
settings.CreateOptionSections = function(page, sections, aside)
	local content = CreateColumn(page, 0, aside and COLUMN_WIDTH or FULL_WIDTH + 16);
	local contentName, holderCount = content:GetName(), 0;
	-- Everything is in a frame of its own, so the layout can move and hide it
	local function CreateHolder()
		holderCount = holderCount + 1;
		local holder = CreateFrame("Frame", contentName .. "-" .. holderCount, content);
		holder:SetWidth(content.SectionWidth);
		holder.SectionWidth = content.SectionWidth;
		settings.MakePanel(holder, content);
		return holder;
	end
	local headers, holders = {}, {};
	for _,section in ipairs(sections) do
		if section then
			local header = CreateHolder();
			header:SetHeight(CreateSectionHeader(header, section.title, 0));
			CreateSectionReset(header, section);
			headers[section] = header;
			for _,option in ipairs(section.options) do
				if option then
					local key = option.key;
					if key and not OptionNames[key] then OptionNames[key] = option.text or option.search; end
					local holder = CreateHolder();
					local x = 8 + (option.indent or 0) * INDENT;
					local height = Builders[option.type](holder, option, x, 0);
					if option.reset or option.setting or (key and not option.get) then CreateChangedMarker(holder, option, x, 0, option.type == "check" and 22 or height); end
					holder:SetHeight(height);
					holders[option] = holder;
				end
			end
		end
	end
	local function Layout()
		local advanced = settings:GetTooltipSetting("Settings:Advanced");
		local y = -4;
		for _,section in ipairs(sections) do
			if section then
				local header, headerY = headers[section], y;
				local any = false;
				y = y - header:GetHeight();
				for _,option in ipairs(section.options) do
					if option then
						local holder = holders[option];
						local shown = advanced or not option.advanced or IsChanged(option);
						holder:SetShown(shown and true or false);
						if shown then
							any = true;
							holder:ClearAllPoints();
							holder:SetPoint("TOPLEFT", content, "TOPLEFT", 0, y);
							y = y - holder:GetHeight();
						end
					end
				end
				header:SetShown(any);
				if any then
					header:ClearAllPoints();
					header:SetPoint("TOPLEFT", content, "TOPLEFT", 0, headerY);
					y = y - SECTION_GAP;
				else
					y = headerY;
				end
			end
		end
		-- The last section needs no gap below it
		content:SetHeight(-y - SECTION_GAP);
	end
	content.OnRefresh = Layout;
	page:HookScript("OnShow", Layout);
	if aside then
		if aside.preview then CreatePreview(page, aside.preview, aside.Update); end
		if aside.notes then CreateNotes(page, aside.notes); end
	end
end
