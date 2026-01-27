-- App locals
local _, app = ...;
local L = app.L;

-- Implementation
app:CreateWindow("Hiddent Quest Triggers", {
	Commands = { "atthqt", "atthqts" },
	HideFromSettings = true,
	Preload = true,
	OnInit = function(self)
		self:SetData(app.CacheFields(app.CreateRawText(app.Modules.Color.Colorize(L.HIDDEN_QUEST_TRIGGERS, app.Colors.ChatLinkHQT), {
			icon = app.asset("Interface_Quest"),
			description = L.HIDDEN_QUEST_TRIGGERS_DESC,
			font = "GameFontNormalLarge",
			_nosearch = true,
			visible = true,
			_hqt = true,
			g = app.Categories.HiddenQuestTriggers,
		}), true));
		self:AssignChildren();
	end,
});
