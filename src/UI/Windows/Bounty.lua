-- App locals
local _, app = ...;

-- Global locals
local ipairs, tinsert
	= ipairs, tinsert;

-- Implementation
app:CreateWindow("Bounty", {
	AllowCompleteSound = true,
	Commands = { "attbounty" },
	OnInit = function(self, handlers)
		self:SetData(app.CreateCustomHeader(app.HeaderConstants.UI_BOUNTY_WINDOW, {
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = function(t)
				local g = t.g;
				if #g < 1 then
					local results = app:BuildSearchResponseForField(app:GetDatabaseRoot().g, "isBounty");
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
		}));
	end,
	OnUpdate = function(self, ...)
		-- Force Debug Mode
		local rawSettings = app.Settings:GetRawSettings("General");
		local debugMode = app.MODE_DEBUG;
		if not debugMode then
			rawSettings.DebugMode = true;
			app.Settings:UpdateMode();
		end
		self:DefaultUpdate(...);
		if not debugMode then
			rawSettings.DebugMode = debugMode;
			app.Settings:UpdateMode();
		end
		return true;
	end
});
