-- App locals
local _, app = ...;

-- Global locals
local ipairs, tinsert
	= ipairs, tinsert;

-- Implementation
app:CreateWindow("Breadcrumbs", {
	AllowCompleteSound = true,
	Commands = { "attbreadcrumbs" },
	OnRebuild = function(self, ...)
		if not self.data then
			self.data = {
				text = "Follow the Breadcrumbs",
				icon = 133968,
				description = "This window shows you all of the breadcrumbs tracked by ATT. Go get 'em!",
				visible = true,
				expanded = true,
				back = 1,
				indent = 0,
				g = { },
				OnUpdate = function(t)
					local g = t.g;
					if #g < 1 then
						local results = app:BuildSearchResponseForField(app:GetDataCache().g, "isBreadcrumb");
						if #results > 0 then
							for i,result in ipairs(results) do
								tinsert(g, result);
							end
							t.OnUpdate = nil;
							self:AssignChildren();
							self:ExpandData(true);
						end
					end
				end,
			}
		end
	end
});
