-- App locals
local _, app = ...;

-- Implementation
app:CreateWindow("Quests", {
	AllowCompleteSound = true,
	Commands = { "attquests" },
	OnInit = function(self, handlers)
		self.data = app.CreateRawText("Quests", {
			icon = 132049,
			description = "This window shows you all of the quests (based on filters) that you can complete. Go get 'em!\n\nNOTE: This window will not include quest items used to complete quests, but will show all of the associated quest rewards.",
			visible = true,
			expanded = true,
			back = 1,
			OnUpdate = function(t)
				local g = app:BuildSearchResponseForField(app:GetDataCache().g, "questID");
				if g and #g > 0 then
					t.g = g;
					t.OnUpdate = nil;
					self:AssignChildren();
					self:ExpandData(true);
				end
			end
		});
	end,
});
