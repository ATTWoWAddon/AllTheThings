-- App locals
local _, app = ...;

-- Implementation
app:CreateWindow("Exploration", {
	AllowCompleteSound = true,
	Commands = { "attexploration" },
	OnInit = function(self, handlers)
		self.data = app.CreateRawText("Exploration", {
			icon = app.asset("Category_Exploration"),
			description = "This window shows you all of the exploration locations that you can complete. You may need to Shift+Left Click any header in ATT and also relog for these to be detected perfectly.",
			visible = true,
			expanded = true,
			back = 1,
			OnUpdate = function(t)
				local g = app:BuildSearchResponseForField(app:GetDataCache().g, "explorationID");
				if g and #g > 0 then
					tinsert(g, 1, {	-- Harvest Exploration
						text = "Harvest Exploration",
						icon = 132331,
						description = "Click here to attempt to harvest and collect all exploration credit.\n\nNOTE: This will likely take a while, but may correct some exploration issues you may be having.",
						OnClick = function(row, button)
							app.HarvestExploration();
							return true;
						end,
						OnUpdate = function(data)
							data.visible = true;
							return true;
						end,
					});
					t.g = g;
					t.OnUpdate = nil;
					self:AssignChildren();
					self:ExpandData(true);
				end
			end
		});
	end,
});
