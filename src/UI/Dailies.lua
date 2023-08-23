-- App locals
local appName, app = ...;

-- Implementation
app:GetWindow("Dailies", {
	parent = UIParent,
	Silent = true,
	AllowCompleteSound = true,
	OnInit = function(self, handlers)
		SLASH_ATTDAILIES1 = "/attdailies";
		SlashCmdList["ATTDAILIES"] = function(cmd)
			self:Toggle();
		end
	end,
	OnRebuild = function(self, ...)
		if not self.data then
			self.data = {
				text = "Dailies",
				icon = app.asset("Interface_Questd"), 
				description = "You can search the ATT Database for all Dailies. All quests displayed are 'incomplete', despite ATT sometimes showing completion for them. If you have a daily 'completed' in ATT, that simply means that you've reached Exalted with the associated reputation if there is one.",
				visible = true, 
				expanded = true,
				back = 1,
				OnUpdate = function(data)
					local g = app:BuildSearchResponse(app:GetDataCache().g, "isDaily", 1);
					if g and #g > 0 then
						data.g = g;
						data.OnUpdate = nil;
					end
				end
			};
		end
	end,
	OnUpdate = function(self, ...)
		-- Update the groups without forcing Debug Mode.
		local incompleteFilter = app.ShowIncompleteThings;
		app.ShowIncompleteThings = app.NoFilter;
		self:DefaultUpdate(...);
		app.ShowIncompleteThings = incompleteFilter;
		return false;
	end
});