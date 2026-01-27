-- App locals
local _, app = ...;
local L = app.L;
if not app.IsRetail then return; end

-- Implementation
app.AddCustomWindowOnUpdate("Future Unobtainables", function(self, force)
	if not self.initialized then
		if not app:GetDataCache() then	-- This module requires a valid data cache to function correctly.
			return;
		end
		self.initialized = true;
		self:SetData(app.CreateRawText(L.FUTURE_UNOBTAINABLE, {
			["icon"] = app.asset("Interface_Future_Unobtainable"),
			["description"] = L.FUTURE_UNOBTAINABLE_TOOLTIP,
			["visible"] = true,
			["back"] = 1,
			["g"] = app:BuildSearchResponseRetailStyle("rwp"),
		}))
		self:AssignChildren();
		self.ExpandInfo = { Expand = true };
	end
	if self:IsVisible() then
		self:DefaultUpdate(force);
		return true
	end
end)

app.AddSlashCommands({"attrwp"},
function() app:GetWindow("Future Unobtainables"):Toggle() end)
