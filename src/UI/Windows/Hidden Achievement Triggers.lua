-- App locals
local _, app = ...;
local L = app.L;

-- Implementation
app:CreateWindow("Hiddent Achievement Triggers", {
	HideFromSettings = true,
	Commands = { "atthat", "atthats" },
	OnLoad = function(self, settings)
		local hat = app.Categories.HiddenAchievementTriggers;
		if hat then
			self:SetData(app.CacheFields(app.CreateRawText(L.HIDDEN_ACHIEVEMENT_TRIGGERS, {
				icon = app.asset("Category_Achievements"),
				description = L.HIDDEN_ACHIEVEMENT_TRIGGERS_DESC,
				font = "GameFontNormalLarge",
				visible = true,
				g = hat,
				_hqt = true,
			}), true));
			self:AssignChildren();
		end
	end,
});
