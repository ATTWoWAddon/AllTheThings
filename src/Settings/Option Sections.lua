local _, app = ...;
local settings = app.Settings;

-- Global locals
local ipairs, pairs, math_max
	= ipairs, pairs, math.max;

-- Builds a settings page from a list of sections, with a live preview beside them.
-- Each section is { title = "", options = { ... } } and each option is one of:
--	{ type = "check", key = "", text = "", tooltip = "" }
--	{ type = "slider", key = "", text = nil or "", tooltip = "", min = 0, max = 1, step = 1, format = "%.0f" }
--	{ type = "dropdown", key = "", text = "", choices = { { value = "", text = "" }, ... } }
-- Options can also have:
--	indent: number of indentation steps
--	requires: tooltip settings which must all be enabled for the option to be usable
--	requiresAny: tooltip settings of which at least one must be enabled
--	get / set: used instead of the tooltip setting 'key'
--	OnChanged: called after the option changed
-- A false option or section is skipped, so they can be written as 'condition and { ... } or false'.

-- Layout
local COLUMN_WIDTH, CONTENT_WIDTH, PREVIEW_X = 366, 338, 384;
local HEADER_HEIGHT, CHECK_HEIGHT, SECTION_GAP, INDENT = 24, 20, 8, 16;
local SLIDER_HEIGHT, SLIDER_LABEL_HEIGHT, DROPDOWN_HEIGHT = 34, 18, 28;
local PREVIEW_PADDING, PREVIEW_INDENT = 10, 10;

local function IsUsable(option)
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
		object:SetAlpha(0.4);
	end
end
local function GetOption(option)
	if option.get then return option.get(); end
	return settings:GetTooltipSetting(option.key);
end
local function SetOption(option, value)
	if option.set then
		option.set(value);
	else
		settings:SetTooltipSetting(option.key, value);
	end
	if option.OnChanged then option.OnChanged(); end
end

-- Option builders. Each one returns the height it used.
local Builders = {
	check = function(content, option, x, y)
		local cb = content:CreateCheckBox(option.text,
		function(self)
			self:SetChecked(GetOption(option) and true or false);
			SetUsable(self, IsUsable(option));
		end,
		function(self)
			SetOption(option, self:GetChecked() and true or false);
		end);
		cb:SetScale(1);
		cb:SetSize(22, 22);
		cb:SetPoint("TOPLEFT", content, "TOPLEFT", x, y);
		-- Cut the label off with "..." when it doesn't fit
		local text = cb.Text;
		text:SetScale(1);
		text:SetFontObject(GameFontNormalSmall);
		text:SetJustifyH("LEFT");
		local maxWidth = CONTENT_WIDTH - x - 26;
		if text:GetUnboundedStringWidth() > maxWidth then text:SetWidth(maxWidth); end
		cb:SetHitRectInsets(0, -text:GetWidth(), 0, 0);
		if option.tooltip then cb:SetATTTooltip(option.tooltip); end
		return CHECK_HEIGHT;
	end,
	slider = function(content, option, x, y)
		local slider = content:CreateSlider(option.name, {
			TEXT = option.text,
			TOOLTIP = option.tooltip,
			SETTING = option.key,
			FORMAT = option.format,
			MIN = option.min, MAX = option.max, STEP = option.step,
			OnRefresh = function(self) SetUsable(self, IsUsable(option)); end,
		});
		local labelHeight = option.text and SLIDER_LABEL_HEIGHT or 0;
		slider:SetSize(200, 20);
		slider:SetPoint("TOPLEFT", content, "TOPLEFT", x + 4, y - labelHeight);
		return SLIDER_HEIGHT + labelHeight;
	end,
	dropdown = function(content, option, x, y)
		local label = content:CreateTextLabel(option.text);
		label:SetFontObject(GameFontNormalSmall);
		label:SetWidth(0);
		label:SetWordWrap(false);
		label:SetPoint("TOPLEFT", content, "TOPLEFT", x + 4, y - 8);

		local dropdown = CreateFrame("Frame", content:GetName() .. "-DD-" .. option.key:gsub("%W", ""), content, "UIDropDownMenuTemplate");
		dropdown:SetPoint("LEFT", label, "RIGHT", -8, -2);
		UIDropDownMenu_SetWidth(dropdown, 90);
		local function InitializeMenu()
			for _,choice in ipairs(option.choices) do
				local info = UIDropDownMenu_CreateInfo();
				info.text = choice.text;
				info.checked = GetOption(option) == choice.value;
				info.func = function() SetOption(option, choice.value); end
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
			for _,choice in ipairs(option.choices) do
				if choice.value == value then UIDropDownMenu_SetText(self, choice.text); end
			end
			if IsUsable(option) then
				UIDropDownMenu_EnableDropDown(self);
				self:SetAlpha(1);
				label:SetAlpha(1);
			else
				UIDropDownMenu_DisableDropDown(self);
				self:SetAlpha(0.4);
				label:SetAlpha(0.4);
			end
		end
		if option.tooltip then
			dropdown:EnableMouse(true);
			dropdown:SetATTTooltip(option.tooltip);
		end
		content:RegisterObject(dropdown);
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
	label:SetPoint("TOPLEFT", page.separator, "BOTTOMLEFT", PREVIEW_X, -8);

	local preview = CreateFrame("Frame", nil, page, BackdropTemplateMixin and "BackdropTemplate");
	preview:SetPoint("TOPLEFT", page.separator, "BOTTOMLEFT", PREVIEW_X, -30);
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

---@param page table # Settings page which receives the sections.
---@param sections table # Section and option definitions, see above.
---@param previewTitle string # Title shown above the preview.
---@param UpdatePreview function # Adds the preview's lines with preview:AddLine(left, right, options).
settings.CreateOptionSections = function(page, sections, previewTitle, UpdatePreview)
	local content = page:CreateScrollFrame();
	local scroller = content.ScrollContainer;
	scroller:SetPoint("TOPLEFT", page.separator, "BOTTOMLEFT", 0, -4);
	scroller:SetPoint("BOTTOMRIGHT", page, "BOTTOMLEFT", COLUMN_WIDTH, 6);
	local scrollBar = scroller.ScrollBar or _G[scroller:GetName() .. "ScrollBar"];
	if scrollBar then
		scrollBar:ClearAllPoints();
		scrollBar:SetPoint("TOPRIGHT", scroller, "TOPRIGHT", -4, -18);
		scrollBar:SetPoint("BOTTOMRIGHT", scroller, "BOTTOMRIGHT", -4, 18);
		-- Hide the scrollbar while everything fits
		local function UpdateScrollBar()
			scrollBar:SetShown(scroller:GetVerticalScrollRange() > 1);
		end
		scroller:HookScript("OnScrollRangeChanged", UpdateScrollBar);
		scroller:HookScript("OnShow", UpdateScrollBar);
	end
	content:SetWidth(CONTENT_WIDTH);

	local y = -4;
	for _,section in ipairs(sections) do
		if section then
			local header = content:CreateHeaderLabel(section.title);
			header:SetPoint("TOPLEFT", content, "TOPLEFT", 8, y);
			local line = content:CreateTexture(nil, "ARTWORK");
			line:SetColorTexture(1, 1, 1, 0.2);
			line:SetHeight(1);
			line:SetPoint("TOPLEFT", content, "TOPLEFT", 8, y - HEADER_HEIGHT + 5);
			line:SetPoint("RIGHT", content, "LEFT", CONTENT_WIDTH, 0);
			y = y - HEADER_HEIGHT;
			for _,option in ipairs(section.options) do
				if option then
					y = y - Builders[option.type](content, option, 8 + (option.indent or 0) * INDENT, y);
				end
			end
			y = y - SECTION_GAP;
		end
	end
	-- The last section needs no gap below it
	content:SetHeight(-y - SECTION_GAP);
	CreatePreview(page, previewTitle, UpdatePreview);
end
