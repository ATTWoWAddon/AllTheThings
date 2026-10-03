

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

local addedCheckSymlinks;
api.CheckSymlinks = function()
	if not addedCheckSymlinks then
		addedCheckSymlinks = true
		app:CreateWindow("AnalyzerCheckSymlinks", {
			OnInit = function(self, handlers)
				local data = app.CreateRawText("All Sym Groups", {
					visible = true,
				})

				local results = app:BuildSearchResponseRetailStyle("sym", nil, {sym=false});
				app.NestObjects(data, results, true)
				self:SetData(data)
				self:AssignChildren()
				--self:Update(true)

				app.SetDGUDelay(0)
				app.FillGroups(data)
			end,
		});
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
