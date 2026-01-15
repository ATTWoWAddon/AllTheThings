-- App locals
local _, app = ...;

-- Global locals
local ipairs, tinsert
	= ipairs, tinsert;

-- Implementation
app:CreateWindow("Bounty", {
	AllowCompleteSound = true,
	Commands = { "attbounty" },
	OnRebuild = function(self, ...)
		if not self.data then
			self.data = app.CreateCustomHeader(app.HeaderConstants.UI_BOUNTY_WINDOW, {
				visible = true,
				expanded = true,
				back = 1,
				indent = 0,
				g = { },
				OnUpdate = function(t)
					local g = t.g;
					if #g < 1 then
						local results = app:BuildSearchResponseForField(app:GetDataCache().g, "isBounty");
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
			});
		end
	end,
	OnUpdate = function(self, ...)
		-- Update the groups without the Removed From Game filter turned on.
		local rawSettings = app.Settings:GetRawSettings("Unobtainable");
		local oldFilter = rawSettings[2];
		rawSettings[2] = true;
		self:DefaultUpdate(...);
		rawSettings[2] = oldFilter;
		return false;
	end
});
