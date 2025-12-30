-- App locals
local _, app = ...;

-- Global locals
if C_TransmogCollection then
local ipairs, tinsert, C_TransmogCollection_GetSourceInfo
	= ipairs, tinsert, C_TransmogCollection.GetSourceInfo;
local function UnmarkNestedCollectible(group)
	if group then
		if not group.sourceID then
			group.collectible = false;
		end
		if group.g then
			for i,o in ipairs(group.g) do
				UnmarkNestedCollectible(o);
			end
		end
	end
end

-- Implementation
app:CreateWindow("Collected Sources", {
	Commands = { "attcollectedsources" },
	OnRebuild = function(self, ...)
		if not self.data then
			self.data = {
				text = "Collected Sources",
				icon = 134941,
				description = "This window shows you all of the collected sources (according to Blizzard) tracked by ATT. Go get 'em!",
				visible = true,
				expanded = true,
				back = 1,
				indent = 0,
				g = { },
				OnUpdate = function(t)
					local g = t.g;
					if #g < 1 then
						local results = app:BuildSearchFilteredResponse(app:GetDataCache().g, function(group)
							if group.sourceID then
								local sourceInfo = C_TransmogCollection_GetSourceInfo(group.sourceID);
								return sourceInfo and sourceInfo.isCollected;
							end
						end);
						if results and #results > 0 then
							for i,result in ipairs(results) do
								UnmarkNestedCollectible(result);
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
end
