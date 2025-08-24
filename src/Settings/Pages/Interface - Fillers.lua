local _, app = ...;
local L, settings = app.L, app.Settings;

-- This settings page relies on the 'Fill' Module
local Fill = app.Modules.Fill
if not Fill then return end

local ipairs,rawget
	= ipairs,rawget

-- Settings: Interface Page
local child = settings:CreateOptionsPage(L.FILLERS_LABEL, L.INTERFACE_PAGE)

local headerLbl = child:CreateHeaderLabel(L.FILLERS_LABEL)
if child.separator then
	headerLbl:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerLbl:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end
local explanationLbl = child:CreateTextLabel(L.FILLERS_EXPLANATION)
explanationLbl:SetPoint("TOPLEFT", headerLbl, "BOTTOMLEFT", 0, -4)

app.AddEventHandler("Fill.DefinedSettings", function(fillSettings)

	local DefaultValues = setmetatable({}, { __index = app.ReturnTrue })
	local StaticFillMeta = { __index = DefaultValues }

	function child:OnRefresh()
		-- local usersettings = settings:GetRawSettings(fillSettings.Container)
		-- app.PrintDebug("User Filler Settings on this Profile are",not usersettings and "MISSING" or "DEFINED")
		-- app.PrintTable(usersettings)
		if not rawget(StaticFillMeta, "__Initialized") then
			-- app.PrintDebug("init static meta")
			-- build a static metatable of the defaults for the fill settings, everything defaults to 'true' unless specified as 'false' or 'ignored'
			for r,rowval in ipairs(fillSettings.Row) do
				if rowval ~= "[]" then
					for c,colval in ipairs(fillSettings.Col) do
						if colval ~= NAME then
							local settingkey = colval..":"..rowval
							-- all fillers enabled by default on first load if not ignored or defaulted to false
							if fillSettings.ScopesIgnored[colval][rowval] or fillSettings.Defaults[rowval] == false then
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

	local prev, curr
	local rowfirst = explanationLbl
	local colwidth = 85
	local checkboxshift = colwidth - 16
	local rowpad = -10
	for r,rowval in ipairs(fillSettings.Row) do
		if rowval == "[]" then
			for c,colval in ipairs(fillSettings.Col) do
				colval = rawget(L, colval) or colval
				curr = child:CreateTextLabel(colval)
				curr:SetWidth(colwidth)
				if prev then
					curr:AlignAfter(prev)
				else
					curr:AlignBelow(rowfirst, 0, rowpad)
					rowfirst = curr
				end
				prev = curr
			end
			local separator = child:CreateTexture(nil, "ARTWORK");
			separator:SetPoint("TOP", rowfirst, "BOTTOM", 0, -2);
			separator:SetPoint("LEFT", rowfirst, "LEFT", -2, 0);
			separator:SetPoint("RIGHT", curr, "RIGHT", -2, 0);
			separator:SetColorTexture(1, 1, 1, 0.4);
			separator:SetHeight(1);
		else
			for c,colval in ipairs(fillSettings.Col) do
				if colval == NAME then
					local icon = fillSettings.Icons[rowval]
					local lblText = rawget(L, rowval) or rowval
					if icon then
						curr = child:CreateTextLabel(lblText.." |T"..icon..":0|t")
					else
						curr = child:CreateTextLabel(lblText)
					end
					curr:SetWidth(colwidth)
				else
					local settingkey = colval..":"..rowval
					local ignored = fillSettings.ScopesIgnored[colval][rowval]
					curr = child:CreateCheckBox("",
						function(self)
							if ignored then
								self:Disable()
								self:SetAlpha(0.6)
							else
								self:SetChecked(settings:GetValue(fillSettings.Container, settingkey))
							end
						end,
						function(self)
							settings:SetValue(fillSettings.Container, settingkey, self:GetChecked())
						end)
					local tooltip = fillSettings.Tooltips[rowval]
					if tooltip then
						curr:SetATTTooltip(tooltip)
					end
				end
				if prev then
					if c > 2 then
						curr:AlignAfter(prev, checkboxshift)
					else
						curr:AlignAfter(prev, 4)
					end
				else
					curr:AlignBelow(rowfirst, 0, rowpad)
					rowfirst = curr
				end
				prev = curr
			end
		end
		prev = nil
	end
end)