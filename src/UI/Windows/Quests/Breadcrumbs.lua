-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local ipairs, tinsert
	= ipairs, tinsert;

-- Implementation
app:CreateWindow("Breadcrumbs", {
	AllowCompleteSound = true,
	Commands = { "attbreadcrumbs" },
	OnInit = function(self, handlers)
		self:SetData(app.CreateRawText(L.BREADCRUMBS, {
			icon = 133968,
			description = L.BREADCRUMBS_TOOLTIP,
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = function(t)
				local g = app:BuildSearchResponseForField(app:GetDatabaseRoot().g, "isBreadcrumb");
				if g and #g > 0 then
					t.g = g;
					t.OnUpdate = nil;
					self:AssignChildren();
					self:ExpandData(true);
				end
			end,
		}));
	end
});
