-- App locals
local _, app = ...;
if app.GameBuildVersion < 30000 then return; end	-- Heirlooms were added with Wrath.

-- Private Variables
local Flat;

-- Window Definition
app:CreateWindow("Heirlooms", {
	AllowCompleteSound = true,
	IsDynamicCategory = true,
	Commands = { "attheirlooms" },
	Defaults = {
		Flat = true,
	},
	GetFlat = function(self)
		return Flat;
	end,
	SetFlat = function(self, flat)
		if Flat ~= flat then
			Flat = flat;
			self.data.OnUpdate = flat and self.OnUpdateFlat or self.OnUpdateCategorized;
			self.data.g = {};
			self:Rebuild();
			if self.IsDynamicCategory and self:IsShown() then
				app:GetWindow("Prime"):Update();
			end
		end
	end,
	ToggleFlat = function(self)
		self:SetFlat(not self:GetFlat());
	end,
	OnLoad = function(self, settings)
		self:SetFlat(settings.Flat);
	end,
	OnSave = function(self, settings)
		settings.Flat = Flat;
	end,
	OnInit = function(self, handlers)
		self.SearchAPI.BuildCategorizedAndFlatSearchFunctionsForClassTypes(self,
			"heirloomID", "No heirlooms found.", "Heirloom", "HeirloomWithFaction", "HeirloomAndAppearance");
		self:SetData(app.CreateRawText(HEIRLOOMS, {
			icon = app.asset("Weapon_Type_Heirloom"),
			description = "This list shows you all of the heirlooms that you can collect.",
			visible = true,
			back = 1,
			g = {},
		}));
	end,
});