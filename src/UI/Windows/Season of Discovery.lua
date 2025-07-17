local appName, app = ...;

---@diagnostic disable: deprecated
if not (C_Seasons and C_Seasons.GetActiveSeason() == 2) or app.GameBuildVersion >= 20000 then return; end

-- App locals
local tinsert = tinsert;

-- Implementation
local function IsExclusiveToSod(group)
	if group.u and group.u >= 1605 and group.u <= 1610 then
		return true;
	end
end
app:CreateWindow("Season of Discovery", {
	Commands = { "attsod" },
	OnInit = function(self, handlers)
		self.data = app.CreateNPC(app.HeaderConstants.SEASON_OF_DISCOVERY, {
			visible = true, 
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = function(t)
				local g = t.g;
				if #g < 1 then
					local results = app:BuildSearchFilteredResponse(app:GetDataCache().g, IsExclusiveToSod);
					if #results > 0 then
						for i,result in ipairs(results) do
							tinsert(g, result);
						end
						t.OnUpdate = nil;
						self:AssignChildren();
					end
				end
			end,
		});
	end,
});