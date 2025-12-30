-- App locals
local _, app = ...;

-- Global locals
local ipairs, pairs, tremove =
	  ipairs, pairs, tremove;

-- Implementation
app:CreateWindow("Mounts", {
	AllowCompleteSound = true,
	IsDynamicCategory = true,
	Commands = { "attmounts" },
	OnInit = function(self, handlers)
		self.data = {
			text = MOUNTS,
			icon = app.asset("Category_Mounts"),
			description = "This list shows you all of the mounts that you can collect.",
			visible = true,
			expanded = true,
			back = 1,
			g = {},
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					local headers, mounts = {}, {};
					for i,matches in pairs(app.SearchForFieldContainer("spellID")) do
						if #matches > 0 then
							if not mounts[i] then
								local result = matches[1];
								if (result.f and result.f == 100) or (result.filterID and result.filterID == 100) then
									local mount = app.CreateMount(tonumber(i));
									mounts[i] = self.BuildCategory(data, headers, matches, mount);
									if mount.u and mount.u < 3 then
										for j,o in ipairs(matches) do
											if o.itemID and (not o.u or o.u >= 3) then
												mount.u = nil;
											end
										end
									end
								end
							end
						end
					end
					for i=#g,1,-1 do
						local header = g[i];
						if header.g and #header.g < 1 and header.headerID and header.key == "headerID" then
							headers[header.headerID] = nil;
							tremove(g, i);
						else
							header.SortType = "text";
						end
					end
					data.SortType = "text";
				end
			end
		};
	end,
});
