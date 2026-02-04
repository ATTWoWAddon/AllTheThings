-- App locals
local _, app = ...;
local L = app.L;

-- Implementation
app:CreateWindow("Hidden Achievement Triggers", {
	Commands = { "atthat", "atthats" },
	HideFromSettings = true,
	Preload = true,
	OnInit = function(self)
		self:SetData(app.CacheFields(app.CreateRawText(app.Modules.Color.Colorize(L.HIDDEN_ACHIEVEMENT_TRIGGERS, app.Colors.ChatLinkHQT), {
			icon = app.asset("Category_Achievements"),
			description = L.HIDDEN_ACHIEVEMENT_TRIGGERS_DESC,
			font = "GameFontNormalLarge",
			_nosearch = true,
			visible = true,
			_hqt = true,
			g = app.Categories.HiddenAchievementTriggers,
		}), true));
		self:AssignChildren();
	end,
});
