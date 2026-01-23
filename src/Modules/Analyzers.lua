

-- Analyzers Module
local _, app = ...;

-- Dependencies

-- Concepts:
-- Module that injects various analyzers into AllTheThings to allow for debugging and testing of data and functionality

-- Global locals

-- App locals

-- Module locals
local api = {}
app.Modules.Analyzers = api

local added = {}
local OnUpdate_CheckSymlinks = function(self, force)
	if self:IsVisible() then
		if not app:GetDataCache() then	-- This module requires a valid data cache to function correctly.
			return;
		end
		if not self.initialized then
			self.initialized = true;

			local data = {
				text = "All Sym Groups",
				visible = true,
			}

			local results = app:BuildSearchResponse("sym", nil, {sym=false});
			app.NestObjects(data, results, true)
			self:SetData(data)
			self:AssignChildren()
			self:Update(true)

			app.SetDGUDelay(0)
			app.FillGroups(data)
		end

		-- Update the window and all of its row data
		self:DefaultUpdate(force);
	end
end
api.CheckSymlinks = function()
	if not added.CheckSymlinks then
		added.CheckSymlinks = true
		app.AddCustomWindowOnUpdate("AnalyzerCheckSymlinks", OnUpdate_CheckSymlinks)
	end

	app:GetWindow("AnalyzerCheckSymlinks"):Toggle();
end

api.CheckRunners = function()
	for name,runner in pairs(app.Runners) do
		runner.Stats()
	end
end

-- Add Analyzer chat commands for simple calls
app.ChatCommands.Add("analyze-symlinks", function(args)
	api.CheckSymlinks()
end, {
	"Usage : /att analyze-symlinks",
	"Opens an ATT window with every symlink in ATT to check for symlinks which fail to retrieve expected data",
})

app.ChatCommands.Add("analyze-runners", function(args)
	api.CheckRunners()
end, {
	"Usage : /att analyze-runners",
	"Prints stats for every ATT Runner",
})
