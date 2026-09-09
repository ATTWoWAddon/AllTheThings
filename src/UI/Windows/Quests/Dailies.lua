-- App locals
local _, app = ...;
local L = app.L;

-- Implementation
app:CreateWindow("Dailies", {
	AllowCompleteSound = true,
	Commands = { "attdailies" },
	OnInit = function(self, handlers)
		self:SetData(app.CreateRawText(L.DAILIES, {
			icon = app.asset("Interface_Questd"),
			description = L.DAILIES_TOOLTIP,
			visible = true,
			expanded = true,
			back = 1,
			OnUpdate = function(t)
				local g = app:BuildSearchResponseForField(app:GetDatabaseRoot().g, "isDaily");
				if g and #g > 0 then
					t.g = g;
					t.OnUpdate = nil;
					self:AssignChildren();
					self:ExpandData(true);
				end
			end
		}));
	end,
	OnUpdate = function(self, ...)
		-- Update the groups without forcing Debug Mode.
		local state = app.Modules.Filter.Get.Trackable();
		app.Modules.Filter.Set.Trackable(true);
		self:DefaultUpdate(...);
		app.Modules.Filter.Set.Trackable(state);
		return true;
	end
});
