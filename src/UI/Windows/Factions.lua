-- App locals
local _, app = ...;

-- Global locals
local ipairs, pairs, tinsert =
	  ipairs, pairs, tinsert;

-- Implementation
app:CreateWindow("Factions", {
	AllowCompleteSound = true,
	IsDynamicCategory = true,
	Commands = { "attfactions" },
	OnInit = function(self, handlers)
		self.data = app.CreateCustomHeader(app.HeaderConstants.FACTIONS, {
			description = "This list shows you all of the factions that you can collect.",
			visible = true,
			expanded = true,
			back = 1,
			g = {},
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					for factionID,matches in pairs(app.SearchForFieldContainer("factionID")) do
						local faction = app.CreateFaction(factionID);
						for j,o in ipairs(matches) do
							if o.key == "factionID" and o.factionID == factionID then
								for key,value in pairs(o) do faction[key] = value; end
								break;
							end
						end
						if not faction.u or faction.u ~= 1 then
							faction.progress = nil;
							faction.total = nil;
							faction.g = nil;
							faction.parent = data;
							tinsert(g, faction);
						end
					end
					data.SortType = "name";
				end
			end
		});
	end,
});
