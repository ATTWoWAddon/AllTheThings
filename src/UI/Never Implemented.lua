-- App locals
local appName, app = ...;

-- Implementation
app:GetWindow("NeverImplemented", {
	parent = UIParent,
	Silent = true,
	OnInit = function(self)
		SLASH_ATTNYI1 = "/attnyi";
		SlashCmdList["ATTNYI"] = function(cmd)
			self:Toggle();
		end
	end,
	OnLoad = function(self, settings)
		local g = app.Categories.NeverImplemented;
		if g then
			app.Categories.NeverImplemented = nil;
			local nyiData = app.CacheFields({
				text = "Never Implemented",
				icon = app.asset("Interface_Tchest"),
				visible = true,
				hideText = true,
				indent = 1,
				g = g,
			});
			app.AssignFieldValue(nyiData, "u", 1);
			nyiData.u = nil;
			self.nyiData = nyiData;
		end
	end,
	OnRebuild = function(self)
		if not self.data then
			local nyiData = self.nyiData;
			if nyiData then
				self.data = nyiData;
				return true;
			end
		end
	end,
	OnUpdate = function(self, ...)
		-- Update the groups without forcing Debug Mode.
		local UnobtainableItemFilter = app.UnobtainableItemFilter;
		app.UnobtainableItemFilter = app.NoFilter;
		self:DefaultUpdate(...);
		app.UnobtainableItemFilter = UnobtainableItemFilter;
		return false;
	end
});