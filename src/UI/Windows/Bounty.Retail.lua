-- App locals
local _, app = ...;

-- Global locals

-- Implementation
app.AddCustomWindowOnUpdate("Bounty", function(self, force, got)
	if not self.initialized then
		if not app:GetDataCache() then	-- This module requires a valid data cache to function correctly.
			return;
		end
		self.initialized = true;
		self:SetData(app.CreateCustomHeader(app.HeaderConstants.UI_BOUNTY_WINDOW, {
			["visible"] = true,
			["g"] = app:BuildSearchResponse("isBounty"),
		}))
		self:AssignChildren();
		self.ExpandInfo = { Expand = true, Manual = true };
	end
	if self:IsVisible() then
		-- Force Debug Mode
		local rawSettings = app.Settings:GetRawSettings("General");
		local debugMode = app.MODE_DEBUG;
		if not debugMode then
			rawSettings.DebugMode = true;
			app.Settings:UpdateMode();
		end
		self:DefaultUpdate(force);
		if not debugMode then
			rawSettings.DebugMode = debugMode;
			app.Settings:UpdateMode();
		end
	end
end)

app.AddSlashCommands({"attbounty"},
function() app:GetWindow("Bounty"):Toggle() end)