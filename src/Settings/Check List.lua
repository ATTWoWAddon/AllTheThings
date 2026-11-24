local _, app = ...;
local settings = app.Settings;

-- Global locals
local ipairs, math_ceil, math_floor
	= ipairs, math.ceil, math.floor;

-- Builds a page with a list of checkboxes in collapsible groups. Each group's header can toggle everything in it.
--	list.text: shown above the groups
--	list.top: height to leave free at the top of the page, e.g. for buttons
--	list.columns: number of columns, 1 by default
--	list.usable: function which must return true for the checkboxes to be usable
--	list.groups: { { title = "", text = nil or "", collapsed = false, items = { ... } }, ... }
-- Each item has a text, tooltip, get and set, and optionally:
--	description: shown beside it, for a list with a single column
--	indent: number of indentation steps
--	usable: function which must return true for the item to be usable
--	isDefault: function, colors the text of what's enabled by default
--	isChanged: function, whether it differs from the default
--	fixed: function, the group's header leaves it alone while it returns true
-- A false group or item is skipped.
local PAGE_WIDTH, ROW_HEIGHT, HEADER_HEIGHT, SECTION_GAP, INDENT, DESCRIPTION_X = 656, 20, 24, 8, 14, 230;

local function IsUsable(list, item)
	return (not list.usable or list.usable()) and (not item.usable or item.usable()) and true or false;
end
settings.CreateCheckList = function(page, list)
	local content = settings.CreatePageColumn(page, 0, PAGE_WIDTH, list.top);
	local width, columns = content.SectionWidth, list.columns or 1;
	local columnWidth = math_floor((width - 8) / columns);
	local Layout;

	local intro;
	if list.text then
		intro = content:CreateTextLabel(list.text);
		intro:SetWidth(width - 8);
		intro:SetWordWrap(true);
		intro:SetPoint("TOPLEFT", content, "TOPLEFT", 8, -6);
	end

	local function CreateItem(group, item)
		local cb = content:CreateCheckBox(item.text, function(self)
			self:SetChecked(item.get() and true or false);
			local usable = IsUsable(list, item);
			settings.SetUsable(self, usable);
			if item.isDefault then
				if item.isDefault() then
					self.Text:SetTextColor(0.6, 0.7, 1);
				else
					self.Text:SetTextColor(1, 1, 1);
				end
			end
		end, function(self)
			item.set(self:GetChecked() and true or false);
			self:SetChecked(item.get() and true or false);
		end);
		local indent = (item.indent or 0) * INDENT;
		settings.StyleCheckBox(cb, (item.description and DESCRIPTION_X - 8 or columnWidth) - indent - 30);
		if item.tooltip then cb:SetATTTooltip(item.tooltip); end
		if item.description then
			local description = cb:CreateFontString(nil, "ARTWORK", "GameFontDisableSmall");
			description:SetJustifyH("LEFT");
			description:SetWordWrap(false);
			description:SetText((item.description:gsub("\n.*", "")));
			description:SetPoint("LEFT", cb, "LEFT", DESCRIPTION_X - indent, 0);
			description:SetWidth(width - DESCRIPTION_X - 16);
		end
		local option = cb.SettingsOption;
		option.tooltip = item.tooltip;
		option.IsChanged = item.isChanged;
		option.Open = function()
			if group.collapsed then
				group.collapsed = nil;
				Layout();
			end
		end
		item.frame = cb;
		item.indentation = indent;
	end
	local function CreateHeader(group)
		local header = CreateFrame("Button", nil, content);
		header:SetSize(width - 36, HEADER_HEIGHT - 4);
		header:SetScript("OnClick", function()
			group.collapsed = not group.collapsed or nil;
			Layout();
		end);
		local icon = header:CreateTexture(nil, "ARTWORK");
		icon:SetSize(14, 14);
		icon:SetPoint("LEFT", header, "LEFT", 0, 0);
		local title = header:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
		title:SetPoint("LEFT", icon, "RIGHT", 4, 0);
		title:SetText(group.title);
		local count = header:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall");
		count:SetPoint("RIGHT", header, "RIGHT", 0, 0);
		local line = header:CreateTexture(nil, "ARTWORK");
		line:SetColorTexture(1, 1, 1, 0.2);
		line:SetHeight(1);
		line:SetPoint("BOTTOMLEFT", header, "BOTTOMLEFT", -26, -1);
		line:SetPoint("BOTTOMRIGHT", header, "BOTTOMRIGHT", 0, -1);

		-- Checks everything in the group unless all of it already is. A gray check means only some of it is.
		local checkbox = CreateFrame("CheckButton", nil, content, settings.UITemplates.Checkbox);
		checkbox:SetSize(22, 22);
		checkbox:SetHitRectInsets(0, 0, 0, 0);
		checkbox:SetATTTooltip(app.L.INFORMATION_GROUP_TOGGLE_TOOLTIP);
		checkbox:SetScript("OnClick", function(self)
			local enable = not self.allEnabled;
			for _,item in ipairs(group.items) do
				if item and IsUsable(list, item) and (item.get() and true or false) ~= enable then item.set(enable); end
			end
			settings:Refresh();
		end);
		header.OnRefresh = function()
			local enabled, total, usable = 0, 0, false;
			for _,item in ipairs(group.items) do
				if item then
					total = total + 1;
					if item.get() then enabled = enabled + 1; end
					if IsUsable(list, item) then usable = true; end
				end
			end
			count:SetText(enabled .. " / " .. total);
			checkbox.allEnabled = enabled == total;
			checkbox:SetChecked(enabled > 0);
			local checked = checkbox:GetCheckedTexture();
			if checked then checked:SetDesaturated(enabled < total); end
			settings.SetUsable(checkbox, usable);
		end
		content:RegisterObject(header);
		header.CheckBox = checkbox;
		header.Icon = icon;
		group.header = header;
		if group.text then
			group.label = content:CreateTextLabel(group.text);
			group.label:SetFontObject(GameFontHighlightSmall);
			group.label:SetWidth(width - 16);
			group.label:SetWordWrap(true);
		end
	end
	for _,group in ipairs(list.groups) do
		if group then
			CreateHeader(group);
			for _,item in ipairs(group.items) do
				if item then CreateItem(group, item); end
			end
		end
	end

	Layout = function()
		local y = -4;
		if intro then y = y - intro:GetStringHeight() - SECTION_GAP * 2; end
		for _,group in ipairs(list.groups) do
			if group then
				local expanded = not group.collapsed;
				local header = group.header;
				header:ClearAllPoints();
				header:SetPoint("TOPLEFT", content, "TOPLEFT", 30, y);
				header.Icon:SetTexture(expanded and "Interface\\Buttons\\UI-MinusButton-Up" or "Interface\\Buttons\\UI-PlusButton-Up");
				header.CheckBox:ClearAllPoints();
				header.CheckBox:SetPoint("TOPLEFT", content, "TOPLEFT", 4, y + 1);
				y = y - HEADER_HEIGHT;
				if group.label then
					group.label:SetShown(expanded);
					group.label:ClearAllPoints();
					group.label:SetPoint("TOPLEFT", content, "TOPLEFT", 12, y - 2);
					if expanded then y = y - group.label:GetStringHeight() - 8; end
				end
				-- Fill each column from top to bottom
				local items = {};
				for _,item in ipairs(group.items) do
					if item then items[#items + 1] = item; end
				end
				local rows = math_ceil(#items / columns);
				for i,item in ipairs(items) do
					local column = math_floor((i - 1) / rows);
					item.frame:ClearAllPoints();
					item.frame:SetPoint("TOPLEFT", content, "TOPLEFT", 12 + column * columnWidth + item.indentation, y - ((i - 1) % rows) * ROW_HEIGHT);
					item.frame:SetShown(expanded);
				end
				if expanded then y = y - rows * ROW_HEIGHT; end
				y = y - SECTION_GAP;
			end
		end
		content:SetHeight(-y);
	end
	Layout();
	page:HookScript("OnShow", Layout);
end
