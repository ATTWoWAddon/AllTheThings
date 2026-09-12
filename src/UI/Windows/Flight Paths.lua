-- App locals
local _, app = ...;
local L = app.L;

-- Private Variables
local Flat;

-- Window Definition
app:CreateWindow("Flight Paths", {
	AllowCompleteSound = true,
	IsDynamicCategory = true,
	Commands = { "attflightpaths", "attfps" },
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
		self.SearchAPI.BuildCategorizedAndFlatSearchFunctionsForClassTypes(self, "flightpathID", "No flight paths found.", "FlightPath");
		self:SetData(app.CreateCustomHeader(app.HeaderConstants.FLIGHT_PATHS, {
			description = L.FLIGHT_PATHS_TOOLTIP,
			visible = true,
			back = 1,
			g = {},
		}));
	end,
});
