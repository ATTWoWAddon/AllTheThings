-- App locals
local _, app = ...;
local L = app.L;

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
	OnInit = function(self, handlers)
		self:SetData(app.CreateRawText(L.COLLECTED_SOURCES, {
			icon = 134941,
			description = L.COLLECTED_SOURCES_TOOLTIP,
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = function(t)
				local g = t.g;
				if #g < 1 then
					local results = app:BuildSearchFilteredResponse(app:GetDatabaseRoot().g, function(group)
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
		}));
	end
});
end
