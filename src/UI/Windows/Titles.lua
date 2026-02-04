-- App locals
local _, app = ...;

-- Window Definition
if app.GameBuildVersion >= 20000 then
	-- Private Variables
	local Flat;
	
	app:CreateWindow("Titles", {
		AllowCompleteSound = true,
		IsDynamicCategory = true,
		Commands = { "atttitles" },
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
			self.SearchAPI.BuildCategorizedAndFlatSearchFunctionsForClassTypes(self, "titleID", "No titles found.", "Title", "TitleWithGender");
			self:SetData(app.CreateRawText(PAPERDOLL_SIDEBAR_TITLES, {
				icon = app.asset("Category_Titles"),
				description = "This list shows you all of the titles that you can collect.",
				visible = true,
				back = 1,
				g = {},
			}));
		end,
	});
else
	app:CreateWindow("Titles", {
		AllowCompleteSound = true,
		IsDynamicCategory = true,
		Commands = { "atttitles" },
		OnInit = function(self, handlers)
			self:SetData(app.CreateRawText(PAPERDOLL_SIDEBAR_TITLES, {
				icon = app.asset("Category_Titles"),
				description = "This list shows you all of the titles that you can collect.",
				visible = true,
				back = 1,
				g = {},
				OnUpdate = self.SearchAPI.BuildFlatSearchFunctionForClassTypes("pvpRankID", "No titles found.", "PVPRank");
			}));
		end,
	});
end