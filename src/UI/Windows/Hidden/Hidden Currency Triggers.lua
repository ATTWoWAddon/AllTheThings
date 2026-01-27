-- App locals
local _, app = ...;
local L = app.L;

-- Implementation
app:CreateWindow("Hidden Currency Triggers", {
	Commands = { "atthct", "atthcts" },
	HideFromSettings = true,
	Preload = true,
	OnInit = function(self)
		self:SetData(app.CacheFields(app.CreateRawText(app.Modules.Color.Colorize(L.HIDDEN_CURRENCY_TRIGGERS, app.Colors.ChatLinkHQT), {
			icon = app.asset("Interface_Vendor"),
			description = L.HIDDEN_CURRENCY_TRIGGERS_DESC,
			font = "GameFontNormalLarge",
			_nosearch = true,
			visible = true,
			_hqt = true,
			g = app.Categories.HiddenCurrencyTriggers,
		}), true));
		self:AssignChildren();
	end,
});
