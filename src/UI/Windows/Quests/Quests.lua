-- App locals
local _, app = ...;
local L = app.L;

-- Implementation
app:CreateWindow("Quests", {
	AllowCompleteSound = true,
	Commands = { "attquests" },
	OnInit = function(self, handlers)
		self:SetData(app.CreateCustomHeader(app.HeaderConstants.QUESTS, {
			description = L.QUEST_TOOLTIP,
			visible = true,
			expanded = true,
			back = 1,
			OnUpdate = function(t)
				local g = app:BuildSearchResponseForField(app:GetDatabaseRoot().g, "questID");
				if g and #g > 0 then
					t.g = g;
					t.OnUpdate = nil;
					self:AssignChildren();
					self:ExpandData(true);
				end
			end
		}));
	end,
});
