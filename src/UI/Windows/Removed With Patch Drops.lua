-- App locals
local _, app = ...;
local tinsert, ipairs = tinsert, ipairs;
local GetRelativeValue = app.GetRelativeValue;

-- Local functions
local ExcludeRecipes, ExcludeRemovedMaps, ExcludeRemovedRares, ExcludeAddedWithPatch;
local AllowedHeaders = {
	[app.HeaderConstants.RARES] = true,
	[app.HeaderConstants.ZONE_DROPS] = true,
};
local function ExpandGroupsRecursively(group, expanded, manual)
	if group.g and (not group.itemID or manual) then
		group.expanded = expanded;
		for i, subgroup in ipairs(group.g) do
			ExpandGroupsRecursively(subgroup, expanded, manual);
		end
	end
end
local function ReapplyExpand(g, g2)
	for j,p in ipairs(g2) do
		local key = p.key;
		local id = p[key];
		for i,o in ipairs(g) do
			if o[key] == id then
				if o.expanded then
					if not p.expanded then
						p.expanded = true;
						if o.g and p.g then ReapplyExpand(o.g, p.g); end
					end
				end
				break;
			end
		end
	end
end
local function Export(g, strings)
	if g then
		for i,o in ipairs(g) do
			if o.itemID then
				tinsert(strings, o.itemID .. "\\t" .. (o.name or RETRIEVING_DATA) .. "\\t" .. (o.spellID or 0) .. "\\t" .. app.GenerateSourcePathForTooltip(o.parent));
			end
			Export(o.g, strings);
		end
	end
end

-- Implementation
app:CreateWindow("Removed With Patch Drops", {
	HideFromSettings = true,
	Commands = { "attrwpdrops" },
	OnLoad = function(self, settings)
		ExcludeRecipes = settings.ExcludeRecipes;
		ExcludeRemovedMaps = settings.ExcludeRemovedMaps;
		ExcludeRemovedRares = settings.ExcludeRemovedRares;
		ExcludeAddedWithPatch = settings.ExcludeAddedWithPatch;
		if ExcludeRecipes == nil then ExcludeRecipes = true; end
		if ExcludeRemovedMaps == nil then ExcludeRemovedMaps = true; end
		if ExcludeRemovedRares == nil then ExcludeRemovedRares = true; end
		if ExcludeAddedWithPatch == nil then ExcludeAddedWithPatch = true; end
	end,
	OnSave = function(self, settings)
		settings.ExcludeRecipes = ExcludeRecipes;
		settings.ExcludeRemovedMaps = ExcludeRemovedMaps;
		settings.ExcludeRemovedRares = ExcludeRemovedRares;
		settings.ExcludeAddedWithPatch = ExcludeAddedWithPatch;
	end,
	OnRebuild = function(self)
		if self.data then return true; end
		local options = {
			app.CreateRawText("Exclude Items Added With Patch", {
				icon = 134941,
				description = "Press this button to toggle excluding Items added back to the game after they are initially removed from the game.\n\nNOTE: This might be misleading: if an item has multiple sources and only one of the sources was added back, specific sources of that item that aren't currently marked with AWP will still be shown. The tooltip may show Added With Patch, but it might only apply to a different hidden source. (For example, Pattern: Black Silk Pack)",
				visible = true,
				priority = 6,
				OnClick = function(row, button)
					ExcludeAddedWithPatch = not ExcludeAddedWithPatch;
					wipe(self.data.g);
					self:Rebuild();
					return true;
				end,
				OnUpdate = function(data)
					data.saved = ExcludeAddedWithPatch;
					return true;
				end,
			}),
			app.CreateRawText("Exclude Recipes", {
				icon = 134941,
				description = "Press this button to toggle excluding Recipes.",
				visible = true,
				priority = 6,
				OnClick = function(row, button)
					ExcludeRecipes = not ExcludeRecipes;
					wipe(self.data.g);
					self:Rebuild();
					return true;
				end,
				OnUpdate = function(data)
					data.saved = ExcludeRecipes;
					return true;
				end,
			}),
			app.CreateRawText("Exclude Removed Maps", {
				icon = 237381,
				description = "Press this button to toggle excluding Maps that get Removed in the future.",
				visible = true,
				priority = 6,
				OnClick = function(row, button)
					ExcludeRemovedMaps = not ExcludeRemovedMaps;
					wipe(self.data.g);
					self:Rebuild();
					return true;
				end,
				OnUpdate = function(data)
					data.saved = ExcludeRemovedMaps;
					return true;
				end,
			}),
			app.CreateRawText("Exclude Removed Rares", {
				icon = app.asset("Interface_Rare"),
				description = "Press this button to toggle excluding Rares that get Removed in the future.",
				visible = true,
				priority = 6,
				OnClick = function(row, button)
					ExcludeRemovedRares = not ExcludeRemovedRares;
					wipe(self.data.g);
					self:Rebuild();
					return true;
				end,
				OnUpdate = function(data)
					data.saved = ExcludeRemovedRares;
					return true;
				end,
			}),
			{	-- Export Data Button
				text = "Export Data",
				icon = 136169,
				description = "Press this button to open an edit box containing the full content of the list.",
				visible = true,
				priority = 6,
				OnClick = function(row, button)
					local data, message, count = {}, "", 0;
					Export(self.data.g, data);
					for i,str in ipairs(data) do
						if count > 0 then
							message = message .. "\n";
						end
						message = message .. str;
						count = count + 1;
					end

					app:ShowPopupDialogWithMultiLineEditBox(message);
					return true;
				end,
				OnUpdate = app.ReturnTrue,
			},
		};

		local filteredData = app:BuildSearchFilteredResponse(app:GetDataCache().g, function(group)
			if group.rwp and group.itemID then
				local headerID = GetRelativeValue(group, "headerID");
				if headerID and AllowedHeaders[headerID] then
					return true;
				end
			end
		end);

		self.data = app.CreateRawText("Removed With Patch Drops", {
			icon = app.asset("WindowIcon_RWP"),
			description = "This window shows you all of the things excluding recipes that get removed in a future patch from zone drop, rare, and world drop sources.",
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					for i,option in ipairs(options) do
						option.parent = data;
						tinsert(g, option);
					end
					local results = app:BuildSearchFilteredResponse(filteredData, function(group)
						if group.rwp and group.itemID then
							-- If we want to exclude recipes, then do that.
							if ExcludeRecipes and (group.f or 0) == 200 then
								return false;
							end

							-- We only want to include items from mobs that are available in the future.
							local parent = group.parent;
							if parent and (parent.rwp or parent.u == app.PhaseConstants.NEVER_IMPLEMENTED) and not parent.awp then
								if parent.npcID and parent.npcID > 0 then
									if ExcludeRemovedRares then
										return false;
									end
								else
									if ExcludeRemovedMaps then
										return false;
									end
								end
							end

							-- If we only want to see permanently removed things, then do that.
							local awp = GetRelativeValue(group, "awp");
							if ExcludeAddedWithPatch and awp and awp >= group.rwp then
								return false;
							end

							-- Return everything else.
							return true;
						end
					end);
					if #results > 0 then
						for i,result in ipairs(results) do
							tinsert(g, result);
						end
						self:AssignChildren();
					end
					if self.oldG then ReapplyExpand(self.oldG, results); end
					self.oldG = results;
				end
			end,
		});
		return true;
	end,
});
