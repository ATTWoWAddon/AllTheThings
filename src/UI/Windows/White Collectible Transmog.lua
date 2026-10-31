-- App locals
local _, app = ...;
local tinsert = tinsert;
local L = app.L;

-- Implementation
app:CreateWindow("White Collectible Transmog", {
	Commands = { "attwct" },
	RootCommands = { "wct" },
	OnLoad = function(self, settings)
		self:SetData(app.CreateRawText(L.WHITE_COLLECTIBLE_TRANSMOG, {
			icon = app.asset("Interface_Newly_Added"),
			description = "",
			visible = true,
			expanded = true,
			SortType = "Global",
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = function(t)
				local g = t.g;
				if #g < 1 then
					local results = app:BuildSearchFilteredResponse(app:GetDatabaseRoot().g, function(group)
						if group.sourceID and group.collectible and group.q and (group.q or 0) < 2 then
							return true;
						end
					end);
					if results and #results > 0 then
						for i,result in ipairs(results) do
							tinsert(g, result);
						end
						t.OnUpdate = nil;
						self:AssignChildren();
					end
				end
			end,
		}));
	end,
});
