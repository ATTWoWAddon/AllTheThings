-- App locals
local _, app = ...;
local L = app.L;
local DESCRIPTION_SEPARATOR = app.DESCRIPTION_SEPARATOR;

-- Implementation
app:CreateWindow("Hidden Currency Triggers", {
	Commands = { "atthct", "atthcts" },
	HideFromSettings = true,
	Preload = true,
	OnInit = function(self)
		self:SetData(app.CreateRawText(app.Modules.Color.Colorize(L.HIDDEN_CURRENCY_TRIGGERS, app.Colors.ChatLinkHQT), {
			icon = app.asset("Interface_Vendor"),
			description = L.HIDDEN_CURRENCY_TRIGGERS_DESC,
			title = L.HIDDEN_CURRENCY_TRIGGERS .. DESCRIPTION_SEPARATOR .. app.Version,
			font = "GameFontNormalLarge",
			_nosearch = true,
			visible = true,
			_hqt = true,
		}));
		self:AddEventHandler("OnDataCached", function(self, categories)
			self.data.g = categories.HiddenCurrencyTriggers;
			app.CacheFields(self.data, true);
			self:AssignChildren();
		end);
	end,
});
