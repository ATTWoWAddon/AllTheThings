-- App locals
local _, app = ...;
local L = app.L;
local DESCRIPTION_SEPARATOR = app.DESCRIPTION_SEPARATOR;

-- Global locals
local tinsert = tinsert;

-- Implementation
app:CreateWindow("Sourceless", {
	Commands = { "attunsourced", "attsourceless" },
	HideFromSettings = true,
	Preload = true,
	OnInit = function(self)
		self:SetData(app.CacheFields(app.CreateRawText(app.Modules.Color.Colorize(L.SOURCELESS, app.Colors.TooltipWarning), {
			icon = app.asset("WindowIcon_Unsorted"),
			description = L.NEVER_IMPLEMENTED_DESC,
			title = "NYI`" .. app.Version,
			font = "GameFontNormalLarge",
			_nosearch = true,
			_unsorted = true,
			_missing = true,
			visible = true,
			_nyi = true,
			g = app.Categories.Sourceless,
		})));
		self:AssignChildren();
	end,
	OnUpdate = function(self, ...)
		-- Update the groups without forcing Debug Mode.
		local state = app.Modules.Filter.Get.Unobtainable();
		app.Modules.Filter.Set.Unobtainable();
		self:DefaultUpdate(...);
		app.Modules.Filter.Set.Unobtainable(state);
		return true
	end
});