-- App locals
local _, app = ...;
local tinsert = tinsert;
local L = app.L;

-- Implementation
app:CreateWindow("New With Patch", {
	Commands = { "attnwp" },
	OnLoad = function(self, settings)
		self.data = {
			text = L.NEW_WITH_PATCH,
			icon = app.asset("Interface_Newly_Added"),
			description = L.NEW_WITH_PATCH_TOOLTIP,
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = app.IsRetail and function(t)
				local g = t.g;
				if #g < 1 then
					local results = app:BuildSearchResponse(app:GetDataCache().g, "awp", app.GameBuildVersion);
					if #results > 0 then
						for i,result in ipairs(results) do
							tinsert(g, result);
						end
						t.OnUpdate = nil;
						self:AssignChildren();
					end
				end
			end or function(t)
				local g = t.g;
				if #g < 1 then
					-- Build a dictionary of all conditions added with the latest patch.
					local any, currentConditions, currentPatch = false, {}, app.GameBuildVersion;
					for u,phase in pairs(L.PHASES) do
						local requiredPatch = phase.buildVersion;
						if requiredPatch and requiredPatch == currentPatch then
							currentConditions[u] = true;
							any = true;
						end
					end
					local results;
					if any then
						-- Find all the content that matches the current conditions.
						results = app:BuildSearchFilteredResponse(app:GetDataCache().g, function(group)
							if group.u and currentConditions[group.u] then
								return true;
							end
						end);
					else
						-- Fallback to the default behaviour
						results = app:BuildSearchResponse(app:GetDataCache().g, "awp", currentPatch);
					end
					if #results > 0 then
						for i,result in ipairs(results) do
							tinsert(g, result);
						end
						t.OnUpdate = nil;
						self:AssignChildren();
					end
				end
			end,
		};
	end,
});
