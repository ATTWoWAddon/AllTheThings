-- App locals
local _, app = ...;
local L = app.L;

local ExportStyle
local function UpdateExportStyle(row, button, styleID, active)
	if active then
		ExportStyle = styleID
	else
		ExportStyle = nil
	end
	-- clear other checks
	local styleGroup = row.ref and row.ref.parent
	if not styleGroup then return end

	local g = styleGroup.g
	for i=1,#g do
		if g[i].toggleID ~= styleID then
			g[i].saved = nil
		end
	end
end
local function DoExport(row, button)
	if not ExportStyle then
		app.print("Please select a Style to Export")
		return
	end
	local window = app:GetWindow(row.ref.Suffix)
	app:ExportStylizedData(window, ExportStyle)
	app.print("Exported",window.Suffix,"in",ExportStyle,"style!")
end

-- Excluded windows
local ExcludedWindows = {
	Export = 1,
	Prime = 1,
}
local NoDataGroup = app.CreateRawText("NO DATA")
local ExportWindowData = setmetatable({}, {
	__index = function(t, window)
		-- if the window already has data, then cache the reference and return it
		-- otherwise return NO DATA text group
		if window.data then
			t[window] = window.data
			return t[window]
		end

		return NoDataGroup
	end
})
local ExportWindowRowGroups = setmetatable({}, {
	__index = function(t, window)
		-- these are the window-based groups being wrapped in export window rows
		-- they will be constant once defined, but hook a reference to the window itself since the data
		-- may not yet be defined, but we need to return the data once it is
		return setmetatable({}, {
			__index = function(t, key)
				if key == "visible" then
					return window:IsShown() and ExportWindowData[window] ~= NoDataGroup
				end
				return ExportWindowData[window][key]
			end
		})
	end
})

-- Window
app:CreateWindow("Export", {
	Commands = {
		"attexport",
		-- "export",	-- TODO uncomment when fixing how commands are defined
	},
	OnInit = function(self, handlers)
		local data = app.CreateRawText("Export", {
			-- icon = app.asset("Interface_Vendor"),
			description = "Allows exporting the data of an active window using a specified Style.",
			g = {},
		})
		local styleGroup = app.CreateRawText("Style", {
			icon = app.asset("Category_TradingPost"),
			parent = data,
			expanded = true,
			back = 0.5,
			SortType = "Global",
			g = {},
		})
		-- self.StyleGroup = styleGroup
		local styleGroupg = styleGroup.g
		for key in pairs(app.DataStyleExporters) do
			styleGroupg[#styleGroupg + 1] = app.CreateToggle(key, {
				name = key,
				parent = styleGroup,
				visible = true,
				OnUpdate = app.AlwaysShowUpdate,
				OnClickHandler = UpdateExportStyle
			})
		end
		data.g[#data.g + 1] = styleGroup

		local windowsGroup = app.CreateRawText("Windows", {
			icon = app.asset("Category_WorldDrops"),
			parent = data,
			expanded = true,
			back = 0.5,
			SortType = "Global",
			g = {},
		})
		local rows = windowsGroup.g
		for suffix,window in pairs(app.Windows) do
			if not ExcludedWindows[suffix] then
				rows[#rows + 1] = app.WrapObject({
					Suffix = suffix,
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = DoExport,
					parent = windowsGroup,
					font = "GameFontNormal",
					indent = 2,
					back = 0.2,
					g = false,
				}, ExportWindowRowGroups[window])
			end
		end
		data.g[#data.g + 1] = windowsGroup

		self:SetData(data)

		app.AddEventHandler("OnWindowCreated", function(window, suffix)
			if not ExcludedWindows[suffix] then
				rows[#rows + 1] = app.WrapObject({
					Suffix = suffix,
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = DoExport,
					parent = windowsGroup,
					font = "GameFontNormal",
					indent = 2,
					back = 0.2,
					g = false,
				}, ExportWindowRowGroups[window])
				windowsGroup.SortType = "Global"
				app.DirectGroupUpdate(windowsGroup)
			end
		end)
	end,
	VisibilityFilter = app.ReturnTrue,
})
