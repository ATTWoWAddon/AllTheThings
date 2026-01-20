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
					local heirlooms = {};
					for i,searchResults in pairs(app.SearchForFieldContainer("heirloomUnlockID")) do
						if not heirlooms[i] then
							local parents = {};
							for j,o in ipairs(searchResults) do
								tinsert(parents, o.parent);
							end
							app.Sort(parents, app.SortDefaults.Accessibility);
							local heirloom = setmetatable({ parent = data }, { __index = parents[1] });
							heirloom.u = GetRelativeValue(parents[1], "u");
							tinsert(g, heirloom);
						end
					end
					if #g > 0 then
						data.SortType = "name";
					else
						tinsert(g, { OnUpdate = app.AlwaysShowUpdate, parent = data, text = "No heirlooms found." });
					end
				end
			end
		});
	end,
});
