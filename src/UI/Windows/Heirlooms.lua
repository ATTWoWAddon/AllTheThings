-- App locals
local _, app = ...;
if app.GameBuildVersion < 30000 then return; end	-- Heirlooms were added with Wrath.

-- Global locals
local ipairs, pairs, tinsert =
	  ipairs, pairs, tinsert;
local GetRelativeValue = app.GetRelativeValue;

-- Implementation
app:CreateWindow("Heirlooms", {
	AllowCompleteSound = true,
	IsDynamicCategory = true,
	Commands = { "attheirlooms" },
	OnInit = function(self, handlers)
		local function SearchForHeirlooms(t) return t.heirloomID; end
		self.data = app.CreateRawText(HEIRLOOMS, {
			icon = app.asset("Weapon_Type_Heirloom"),
			description = "This list shows you all of the heirlooms that you can collect.",
			visible = true,
			expanded = true,
			back = 1,
			g = {},
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					local results,resultsByItemID = {},{};
					app:BuildFlatSearchFilteredResponse(app:GetDataCache().g, SearchForHeirlooms, results);
					for i,o in pairs(results) do
						local itemID = o.itemID;
						if itemID then
							if not resultsByItemID[itemID] then
								resultsByItemID[itemID] = { o };
							else tinsert(resultsByItemID[itemID], o); end
						end
					end
					for i,searchResults in pairs(resultsByItemID) do
						app.Sort(searchResults, app.SortDefaults.Accessibility);
						local heirloom = app.CloneClassInstance(searchResults[1]);
						heirloom.sourceParent = searchResults[1].parent;
						heirloom.parent = data;
						tinsert(g, heirloom);
					end
					if #g > 0 then
						data.SortType = "name";
						self:AssignChildren();
					else
						tinsert(g, app.CreateRawText("No heirlooms found.", { OnUpdate = app.AlwaysShowUpdate, parent = data }));
					end
				end
			end
		});
	end,
});
