-- App locals
local _, app = ...;
local L = app.L;
local DESCRIPTION_SEPARATOR = app.DESCRIPTION_SEPARATOR;

-- Implementation
app:CreateWindow("Hidden Quest Triggers", {
	Commands = { "atthqt", "atthqts" },
	HideFromSettings = true,
	Preload = true,
	OnInit = function(self)
		self:SetData(app.CreateRawText(app.Modules.Color.Colorize(L.HIDDEN_QUEST_TRIGGERS, app.Colors.ChatLinkHQT), {
			icon = app.asset("Interface_Quest"),
			description = L.HIDDEN_QUEST_TRIGGERS_DESC,
			title = L.HIDDEN_QUEST_TRIGGERS .. DESCRIPTION_SEPARATOR .. app.Version,
			font = "GameFontNormalLarge",
			_nosearch = true,
			visible = true,
			_hqt = true,
		}));
		self:AddEventHandler("OnHiddenDataCached", function(self, categories)
			self.data.g = categories.HiddenQuestTriggers;
			app.CacheFields(self.data, true);
			self:AssignChildren();
		end);
	end,
});
