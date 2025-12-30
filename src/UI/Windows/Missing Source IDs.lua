-- App locals
local _, app = ...;
local tinsert = tinsert;

-- Implementation
app:CreateWindow("Missing Source IDs", {
	Commands = { "attmissingsourceids" },
	OnRebuild = function(self)
		if self.data then return true; end
		self.data = {
			text = "Missing Source IDs",
			icon = app.asset("WindowIcon_RWP"),
			description = "This window shows you all of the things that are currently missing sourceIDs that should have them in ATT.",
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = function(t)
				local g = t.g;
				if #g < 1 then
					local results = app:BuildSearchResponse(app:GetDataCache().g, "missingSourceID", true);
					if results and #results > 0 then
						for i,result in ipairs(results) do
							tinsert(g, result);
						end
						t.OnUpdate = nil;
						self:AssignChildren();
						self:ExpandData(true);
					end
				end
			end,
		};
		return true;
	end,
	OnUpdate = function(self, ...)
		-- Update the groups without the Removed From Game filter turned on.
		local oldFilter = AllTheThingsSettings.Unobtainable[2];
		AllTheThingsSettings.Unobtainable[2] = true;
		self:DefaultUpdate(...);
		AllTheThingsSettings.Unobtainable[2] = oldFilter;
		return false;
	end
});
