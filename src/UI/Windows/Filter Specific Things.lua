-- App locals
local _, app = ...;
local tinsert = tinsert;

-- Implementation
app:CreateWindow("Filter Specific Things", {
	Commands = { "attfiltertypes" },
	OnInit = function(self, handlers)
		self.data = {
			text = "Filter Specific Things",
			icon = app.asset("WindowIcon_RWP"),
			description = "This window shows you all of the filter specific things.",
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = function(t)
				local g = t.g;
				if #g < 1 then
					for filterID,_ in pairs(app.L.FILTER_ID_TYPES) do
						local obj = app.CreateFilter(filterID);
						tinsert(g, obj);
						obj.g = app:BuildSearchFilteredResponse(app:GetDataCache().g, function(group)
							if group.f == filterID then
								return true;
							end
						end);
					end
					t.OnUpdate = nil;
					self:AssignChildren();
					self:ExpandData(true);
				end
			end,
		};
	end,
	OnUpdate = function(self, ...)
		-- Prevent Quests and Achievements from being collectible within this context.
		local oldAchievementsCollection = app.Settings.Collectibles.Achievements;
		local oldQuestCollection = app.Settings.Collectibles.Quests;
		app.Settings.Collectibles.Achievements = false;
		app.Settings.Collectibles.Quests = false;
		self:DefaultUpdate(...);
		app.Settings.Collectibles.Quests = oldQuestCollection;
		app.Settings.Collectibles.Achievements = oldAchievementsCollection;
		return false;
	end
});
