-- App locals
local _, app = ...;
local tinsert = tinsert;
local L = app.L;

-- Search Info
local SearchInfo = {
	field = "awp",
	value = app.GameBuildVersion,
	-- drops = {},
	-- searchcriteria = {},
}

-- Implementation
app:CreateWindow("New With Patch", {
	Commands = { "attnwp" },
	RootCommands = { "nwp" },
	OnLoad = function(self, settings)
		self:SetData(app.CreateRawText(L.NEW_WITH_PATCH, {
			icon = app.asset("Interface_Newly_Added"),
			description = L.NEW_WITH_PATCH_TOOLTIP,
			visible = true,
			expanded = true,
			SortType = "Global",
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = app.IsRetail and function(t)
				local g = t.g;
				if #g < 1 then
					local results = app:BuildSearchResponseRetailStyle(SearchInfo.field, SearchInfo.value, SearchInfo.drops, SearchInfo.searchcriteria)
					app.NestObjects(t, results);
					t.SortType = "Global";
					-- sort children of top level groups
					for i = 1, #g do
						local child = g[i]
						if child.g then
							child.SortType = "expansion"
						end
					end
					-- don't fill into groups if they are popped out
					t.skipFull = true
					app.NestObject(t, self.SearchAPI.BuildDynamicCategorySummaryForSearchResults(results))
					self:AssignChildren()
				end
				t.OnUpdate = nil
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
						results = app:BuildSearchFilteredResponse(app:GetDatabaseRoot().g, function(group)
							if group.u and currentConditions[group.u] then
								return true;
							end
						end);
					else
						-- Fallback to the default behaviour
						results = app:BuildSearchResponse(app:GetDatabaseRoot().g, "awp", currentPatch);
					end
					if results and #results > 0 then
						for i,result in ipairs(results) do
							tinsert(g, result);
						end
						tinsert(g, self.SearchAPI.BuildDynamicCategorySummaryForSearchResults(results));
						t.OnUpdate = nil;
						self:AssignChildren();
					end
				end
			end,
		}));
	end,
});
