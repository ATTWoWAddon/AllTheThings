-- App locals
local _, app = ...;
local L = app.L;
local DESCRIPTION_SEPARATOR = app.DESCRIPTION_SEPARATOR;

-- Implementation
app:CreateWindow("Never Implemented", {
	Commands = { "attnyi" },
	HideFromSettings = true,
	Preload = true,
	OnInit = function(self)
		self:SetData(app.CreateRawText(L.NEVER_IMPLEMENTED, {
			icon = app.asset("Interface_Tchest"),
			description = L.NEVER_IMPLEMENTED_DESC,
			title = L.NEVER_IMPLEMENTED .. DESCRIPTION_SEPARATOR .. app.Version,
			font = "GameFontNormalLarge",
			_nosearch = true,
			visible = true,
			_nyi = true,
		}));
		self:AddEventHandler("OnDataCached", function(self, categories)
			self.data.g = categories.NeverImplemented;
			app.CacheFields(self.data, true);
			app.AssignFieldValue(self.data, "u", 1);
			self:AssignChildren();
		end);
	end,
	OnUpdate = function(self, ...)
		-- Ignore visibility check
		local filterVisible = app.Modules.Filter.Get.Visible();
		app.Modules.Filter.Set.Visible();
		self:DefaultUpdate(...);
		app.Modules.Filter.Set.Visible(filterVisible);
		return true;
	end
});
