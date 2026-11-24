local _, app = ...;
local L, settings = app.L, app.Settings;

-- This settings page relies on the 'Fill' Module
local Fill = app.Modules.Fill
if not Fill then return end

local ipairs,rawget
	= ipairs,rawget

-- Settings: Fillers Page
-- A table with a row for every Filler, and a column for every place it can be used in.
local child = settings:CreateOptionsPage(L.FILLERS_LABEL, L.INTERFACE_PAGE)

local NAME_X, NAME_WIDTH, COLUMN_WIDTH, ROW_HEIGHT = 8, 220, 110, 24;

app.AddEventHandler("Fill.DefinedSettings", function(fillSettings)

	local DefaultValues = setmetatable({}, { __index = app.ReturnTrue })
	local StaticFillMeta = { __index = DefaultValues }

	function child:OnRefresh()
		-- local usersettings = settings:GetRawSettings(fillSettings.Container)
		-- app.PrintDebug("User Filler Settings on this Profile are",not usersettings and "MISSING" or "DEFINED")
		-- app.PrintTable(usersettings)
		if not rawget(StaticFillMeta, "__Initialized") then
			-- app.PrintDebug("init static meta")
			-- app.PrintTable(fillSettings)
			-- build a static metatable of the defaults for the fill settings, everything defaults to 'true' unless specified as 'false' or 'ignored'
			for r,rowval in ipairs(fillSettings.Row) do
				if rowval ~= "[]" then
					for c,colval in ipairs(fillSettings.Col) do
						if colval ~= NAME then
							local settingkey = colval..":"..rowval
							-- all fillers enabled by default on first load if not ignored or defaulted to false
							if fillSettings.ScopesIgnored[colval][rowval]
								or fillSettings.SettingsDefaults[rowval] == false
								or fillSettings.SettingsDefaults[settingkey] == false
							then
								-- app.PrintDebug(settingkey,"defaulted to false")
								DefaultValues[settingkey] = false
							end
						end
					end
				end
			end
			StaticFillMeta.__Initialized = true
			-- app.PrintTable(StaticFillMeta)
		end

		-- apply the metatable to the RawSettings
		settings:ApplySettingsMetatable(fillSettings.Container, StaticFillMeta)

		-- TEMP: copy the deprecated 'Fill NPC Data' value if enabled for the NPC Filler for the Profile
		-- eventually remove this after a few versions
		if app.Settings:GetTooltipSetting("NPCData:Nested") then
			local usersettings = settings:GetRawSettings(fillSettings.Container)
			usersettings["TOOLTIP:NPC"] = true
			usersettings["LIST:NPC"] = true
			usersettings["POPOUT:NPC"] = true
			-- TODO: some way to cleanup deprecated settings from user cache
			app.Settings:SetTooltipSetting("NPCData:Nested", false)
		end
	end

	child:OnRefresh()

	local content = settings.CreatePageColumn(child, 0, 656)
	local explanation = content:CreateTextLabel(L.FILLERS_EXPLANATION)
	explanation:SetWidth(content.SectionWidth - 8)
	explanation:SetWordWrap(true)
	explanation:SetPoint("TOPLEFT", content, "TOPLEFT", 8, -6)
	local y = -6 - explanation:GetStringHeight() - 16

	local rowCount = 0
	for r,rowval in ipairs(fillSettings.Row) do
		if rowval == "[]" then
			-- Column headers
			local x = NAME_X + NAME_WIDTH
			for c,colval in ipairs(fillSettings.Col) do
				local label = content:CreateFontString(nil, "ARTWORK", "GameFontNormal")
				label:SetText(rawget(L, colval) or colval)
				if colval == NAME then
					label:SetPoint("TOPLEFT", content, "TOPLEFT", NAME_X, y)
				else
					label:SetPoint("TOP", content, "TOPLEFT", x + COLUMN_WIDTH / 2, y)
					x = x + COLUMN_WIDTH
				end
			end
			y = y - 18
			local separator = content:CreateTexture(nil, "ARTWORK")
			separator:SetPoint("TOPLEFT", content, "TOPLEFT", NAME_X, y)
			separator:SetPoint("RIGHT", content, "LEFT", content.SectionWidth, 0)
			separator:SetColorTexture(1, 1, 1, 0.2)
			separator:SetHeight(1)
			y = y - 4
		else
			rowCount = rowCount + 1
			if rowCount % 2 == 0 then
				local stripe = content:CreateTexture(nil, "BACKGROUND")
				stripe:SetColorTexture(1, 1, 1, 0.04)
				stripe:SetPoint("TOPLEFT", content, "TOPLEFT", NAME_X - 4, y)
				stripe:SetSize(content.SectionWidth - NAME_X + 4, ROW_HEIGHT)
			end
			local tooltip = fillSettings.Tooltips[rowval]
			local name = rawget(L, rowval) or rowval
			local x = NAME_X + NAME_WIDTH
			for c,colval in ipairs(fillSettings.Col) do
				if colval == NAME then
					local icon = fillSettings.Icons[rowval]
					local label = content:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
					label:SetJustifyH("LEFT")
					label:SetWidth(NAME_WIDTH - 8)
					label:SetWordWrap(false)
					label:SetText(icon and (name .. " |T" .. icon .. ":0|t") or name)
					label:SetPoint("TOPLEFT", content, "TOPLEFT", NAME_X, y - 6)
				else
					local settingkey = colval..":"..rowval
					if fillSettings.ScopesIgnored[colval][rowval] then
						-- It can't be used there
						local label = content:CreateFontString(nil, "ARTWORK", "GameFontDisable")
						label:SetText("-")
						label:SetPoint("TOP", content, "TOPLEFT", x + COLUMN_WIDTH / 2, y - 6)
					else
						local cb = content:CreateCheckBox("", function(self)
							self:SetChecked(settings:GetValue(fillSettings.Container, settingkey))
						end, function(self)
							settings:SetValue(fillSettings.Container, settingkey, self:GetChecked())
						end)
						settings.StyleCheckBox(cb, 0)
						cb:SetPoint("TOP", content, "TOPLEFT", x + COLUMN_WIDTH / 2, y - 1)
						if tooltip then cb:SetATTTooltip(tooltip) end
						local option = cb.SettingsOption
						option.text = name .. " (" .. (rawget(L, colval) or colval) .. ")"
						option.tooltip = tooltip
						option.IsChanged = function()
							return (settings:GetValue(fillSettings.Container, settingkey) or false) ~= DefaultValues[settingkey]
						end
					end
					x = x + COLUMN_WIDTH
				end
			end
			y = y - ROW_HEIGHT
		end
	end

	local checkboxSimpleZoneDrops = content:CreateCheckBox(L.SIMPLE_ZONE_DROPS_CHECKBOX,
		function(self)
			self:SetChecked(settings:GetTooltipSetting("Fill:SimpleZoneDrops"))
		end,
		function(self)
			settings:SetTooltipSetting("Fill:SimpleZoneDrops", self:GetChecked())
			-- tooltips cache their filled content
			app.WipeSearchCache()
		end)
	settings.StyleCheckBox(checkboxSimpleZoneDrops, 500)
	checkboxSimpleZoneDrops:SetATTTooltip(L.SIMPLE_ZONE_DROPS_CHECKBOX_TOOLTIP)
	checkboxSimpleZoneDrops.SettingsOption.tooltip = L.SIMPLE_ZONE_DROPS_CHECKBOX_TOOLTIP
	checkboxSimpleZoneDrops.SettingsOption.IsChanged = function() return settings.IsTooltipSettingChanged("Fill:SimpleZoneDrops") end
	checkboxSimpleZoneDrops:SetPoint("TOPLEFT", content, "TOPLEFT", NAME_X - 4, y - 12)
	content:SetHeight(-y + 44)
end)
