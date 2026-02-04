-- App locals
local _, app = ...;

-- Global locals
local ipairs, tinsert =
	  ipairs, tinsert;

-- Implementation
app:CreateWindow("Pet Battles", {
	AllowCompleteSound = true,
	IsDynamicCategory = true,
	Commands = { "attpetbattles" },
	OnInit = function(self, handlers)
		self:SetData(app.CreateCustomHeader(app.HeaderConstants.PET_BATTLES, {
			description = "This list shows you all of the pet battle content as well as where to acquire battle pets in the ATT database.",
			visible = true,
			expanded = true,
			indent = 0,
			back = 1,
			g = {},
			OnUpdate = function(t)
				local g = t.g;
				if g and #g < 1 then
					local results = app:BuildSearchResponseForField(app:GetDataCache().g, "pb");
					if results and #results > 0 then
						t.g = results;
						t.OnUpdate = nil;
						self:AssignChildren();
					end
				end
			end,
			OnTooltip = function(t, tooltipInfo)
				if not app.Settings:Get("Show:PetBattles") then
					tinsert(tooltipInfo, {
						left = app.Modules.Color.Colorize("WARNING: You have Pet Battles disabled in the Settings!\n\nThis window will likely be empty as a result.", app.Colors.TooltipWarning),
					});
				end
			end,
		}));
	end,
});
