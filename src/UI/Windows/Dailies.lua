-- App locals
local _, app = ...;

-- Implementation
app:CreateWindow("Dailies", {
	AllowCompleteSound = true,
	Commands = { "attdailies" },
	OnRebuild = function(self, ...)
		if not self.data then
			self.data = {
				text = "Dailies",
				icon = app.asset("Interface_Questd"),
				description = "You can search the ATT Database for all Dailies. All quests displayed are 'incomplete', despite ATT sometimes showing completion for them. If you have a daily 'completed' in ATT, that simply means that you've reached Exalted with the associated reputation if there is one.",
				visible = true,
				expanded = true,
				back = 1,
				OnUpdate = function(t)
					local g = app:BuildSearchResponse(app:GetDataCache().g, "isDaily", 1);
					if g and #g > 0 then
						t.g = g;
						t.OnUpdate = nil;
						self:AssignChildren();
						self:ExpandData(true);
					end
				end
			};
		end
	end,
	OnUpdate = function(self, ...)
		-- Update the groups without forcing Debug Mode.
		local state = app.Modules.Filter.Get.Trackable();
		app.Modules.Filter.Set.Trackable(true);
		self:DefaultUpdate(...);
		app.Modules.Filter.Set.Trackable(state);
		return false;
	end
});
