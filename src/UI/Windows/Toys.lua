-- App locals
local _, app = ...;

-- Private Variables
local Flat;

-- Window Definition
app:CreateWindow("Toys", {
	AllowCompleteSound = true,
	IsDynamicCategory = true,
	Commands = { "atttoys" },
	Defaults = {
		Flat = false,
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
		self.SearchAPI.BuildCategorizedAndFlatSearchFunctionsForClassTypes(self, "toyID", "No titles found.", "Toy");
		self:SetData(app.CreateRawText(TOY_BOX, {
			icon = app.asset("Category_ToyBox"),
			description = "This list shows you all of the toys that you can collect.",
			visible = true,
			back = 1,
			g = {},
		}));
	end,
});