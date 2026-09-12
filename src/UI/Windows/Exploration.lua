-- App locals
local _, app = ...;
local L = app.L;

-- Implementation
app:CreateWindow("Exploration", {
	AllowCompleteSound = true,
	Commands = { "attexploration" },
	OnInit = function(self, handlers)
		self:SetData(app.CreateCustomHeader(app.HeaderConstants.EXPLORATION, {
			description = L.EXPLORATION_TOOLTIP,
			visible = true,
			expanded = true,
			back = 1,
			OnUpdate = function(t)
				local g = app:BuildSearchResponseForField(app:GetDatabaseRoot().g, "explorationID");
				if g and #g > 0 then
					tinsert(g, 1, app.CreateRawText("Harvest Exploration", {	-- Harvest Exploration
						icon = 132331,
						description = L.EXPLORATION_HARVEST_DESC,
						OnClick = function(row, button)
							app.HarvestExploration();
							return true;
						end,
						OnUpdate = function(data)
							data.visible = true;
							return true;
						end,
					}));
					t.g = g;
					t.OnUpdate = nil;
					self:AssignChildren();
					self:ExpandData(true);
				end
			end
		}));
	end,
});
