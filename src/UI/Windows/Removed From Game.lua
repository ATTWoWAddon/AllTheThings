-- App locals
local _, app = ...;
local tinsert = tinsert;

-- Implementation
app:CreateWindow("Removed From Game", {
	Commands = { "attrfg" },
	OnInit = function(self, handlers)
		self:SetData(app.CreateRawText("Removed From Game", {
			icon = app.asset("WindowIcon_RWP"),
			description = "This window shows you all of the things that have been removed from the game.",
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = function(t)
				local g = t.g;
				if #g < 1 then
					local results = app:BuildSearchResponse(app:GetDataCache().g, "u", 2);
					if #results > 0 then
						for i,result in ipairs(results) do
							tinsert(g, result);
						end
						t.OnUpdate = nil;
						self:AssignChildren();
						self:ExpandData(true);
					end
				end
			end,
		}));
	end,
	OnUpdate = function(self, ...)
		-- Update the groups without the Removed From Game filter turned on.
		local rawSettings = app.Settings:GetRawSettings("Unobtainable");
		local oldFilter = rawSettings[2];
		rawSettings[2] = true;
		self:DefaultUpdate(...);
		rawSettings[2] = oldFilter;
		return true
	end
});
