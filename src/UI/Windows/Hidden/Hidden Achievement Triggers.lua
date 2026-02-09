-- App locals
local _, app = ...;
local L = app.L;
local DESCRIPTION_SEPARATOR = app.DESCRIPTION_SEPARATOR;

-- Implementation
app:CreateWindow("Hidden Achievement Triggers", {
	Commands = { "atthat", "atthats" },
	HideFromSettings = true,
	Preload = true,
	OnInit = function(self)
		self:SetData(app.CreateRawText(app.Modules.Color.Colorize(L.HIDDEN_ACHIEVEMENT_TRIGGERS, app.Colors.ChatLinkHQT), {
			icon = app.asset("Category_Achievements"),
			description = L.HIDDEN_ACHIEVEMENT_TRIGGERS_DESC,
			title = L.HIDDEN_ACHIEVEMENT_TRIGGERS .. DESCRIPTION_SEPARATOR .. app.Version,
			font = "GameFontNormalLarge",
			_nosearch = true,
			visible = true,
			_hqt = true,
		}));
		self:AddEventHandler("OnDataCached", function(self, categories)
			self.data.g = categories.HiddenAchievementTriggers;
			app.CacheFields(self.data, true);
			self:AssignChildren();
		end);
	end,
});
