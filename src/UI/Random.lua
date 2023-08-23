-- App locals
local appName, app = ...;
local contains, CloneReference, searchCache =
	app.contains, app.CloneReference, app.searchCache;

-- Global locals
local ipairs, tinsert, pairs, wipe
	= ipairs, tinsert, pairs, wipe;
local C_Map_GetMapInfo = C_Map.GetMapInfo;

-- Helper Functions
-- TODO: Move these to the public API.
local function SearchRecursively(group, field, temp)
	if group.visible and not group.saved then
		if group.g then
			for i, subgroup in ipairs(group.g) do
				SearchRecursively(subgroup, field, temp);
			end
		end
		if group[field] then tinsert(temp, group); end
	end
end
local function SearchRecursivelyForEverything(group, temp)
	if group.visible and not group.saved then
		if group.g then
			for i, subgroup in ipairs(group.g) do
				SearchRecursivelyForEverything(subgroup, temp);
			end
		end
		tinsert(temp, group);
	end
end
local function SearchRecursivelyForValue(group, field, value, temp)
	if group.visible and not group.saved then
		if group.g then
			for i, subgroup in ipairs(group.g) do
				SearchRecursivelyForValue(subgroup, field, value, temp);
			end
		end
		if group[field] and group[field] == value then tinsert(temp, group); end
	end
end

-- Local Functions
local SearchFilter;
local excludedZones = {
	947,	-- Cosmic
	1414,	-- Kalimdor
	1415,	-- Eastern Kingdoms
	101,	-- Outland
	113,	-- Northrend
	424,	-- Pandaria
	572,	-- Draenor
	619,	-- Broken Isles
};
local searchMethods = {
	ATT = function(self)
		if searchCache["randomatt"] then
			return searchCache["randomatt"];
		else
			local searchResults = {};
			for i, subgroup in ipairs(app:GetDataCache().g) do
				SearchRecursivelyForEverything(subgroup, searchResults);
			end
			searchCache["randomatt"] = searchResults;
			return searchResults;
		end
	end,
	Item = function(self)
		if searchCache["randomitem"] then
			return searchCache["randomitem"];
		else
			local searchResults, dict, temp = {}, {} , {};
			SearchRecursively(app:GetDataCache(), "itemID", searchResults);
			for i,o in pairs(searchResults) do
				if not (o.saved or o.collected) and o.collectible then
					tinsert(temp, o);
				end
			end
			searchCache["randomitem"] = temp;
			return temp;
		end
	end,
	Quest = function(self)
		if searchCache["randomquest"] then
			return searchCache["randomquest"];
		else
			local searchResults, dict, temp = {}, {} , {};
			SearchRecursively(app:GetDataCache(), "questID", searchResults);
			for i,o in pairs(searchResults) do
				if not (o.saved or o.collected) and o.collectible then
					tinsert(temp, o);
				end
			end
			searchCache["randomquest"] = temp;
			return temp;
		end
	end,
	Instance = function(self)
		if searchCache["randominstance"] then
			return searchCache["randominstance"];
		else
			local searchResults, dict, temp = {}, {} , {};
			SearchRecursively(app:GetDataCache(), "mapID", searchResults);
			for i,o in pairs(searchResults) do
				if not (o.saved or o.collected) and (((o.total or 0) - (o.progress or 0)) > 0) and not C_Map_GetMapInfo(o.mapID) then
					tinsert(temp, o);
				end
			end
			searchCache["randominstance"] = temp;
			return temp;
		end
	end,
	Dungeon = function(self)
		if searchCache["randomdungeon"] then
			return searchCache["randomdungeon"];
		else
			local searchResults, dict, temp = {}, {} , {};
			SearchRecursively(app:GetDataCache(), "mapID", searchResults);
			for i,o in pairs(searchResults) do
				if not (o.saved or o.collected) and not o.isRaid and (((o.total or 0) - (o.progress or 0)) > 0) and not C_Map_GetMapInfo(o.mapID) then
					tinsert(temp, o);
				end
			end
			searchCache["randomdungeon"] = temp;
			return temp;
		end
	end,
	Raid = function(self)
		if searchCache["randomraid"] then
			return searchCache["randomraid"];
		else
			local searchResults, dict, temp = {}, {} , {};
			SearchRecursively(app:GetDataCache(), "mapID", searchResults);
			for i,o in pairs(searchResults) do
				if not (o.saved or o.collected) and o.isRaid and (((o.total or 0) - (o.progress or 0)) > 0) then
					tinsert(temp, o);
				end
			end
			searchCache["randomraid"] = temp;
			return temp;
		end
	end,
	Zone = function(self)
		if searchCache["randomzone"] then
			return searchCache["randomzone"];
		else
			local searchResults, dict, temp = {}, {} , {};
			SearchRecursively(app:GetDataCache(), "mapID", searchResults);
			for i,o in pairs(searchResults) do
				if not (o.saved or o.collected) and (((o.total or 0) - (o.progress or 0)) > 0) and not contains(excludedZones, o.mapID) then
					tinsert(temp, o);
				end
			end
			searchCache["randomzone"] = temp;
			return temp;
		end
	end
};
local function Reroll(self)
	-- Rebuild all the datas
	local data = self.defaultHeader;
	self.data = data;
	wipe(data.g);
	for i,o in ipairs(data.options) do
		o.parent = data;
		tinsert(data.g, o);
	end
	if SearchFilter then
		-- Call to our method and build a list to draw from
		local temp = searchMethods[SearchFilter](self) or {};
		local totalWeight = 0;
		for i,o in ipairs(temp) do
			totalWeight = totalWeight + ((o.total or 1) - (o.progress or 0));
		end
		if totalWeight > 0 and #temp > 0 then
			local weight, selected = math.random(totalWeight), nil;
			totalWeight = 0;
			for i,o in ipairs(temp) do
				totalWeight = totalWeight + ((o.total or 1) - (o.progress or 0));
				if weight <= totalWeight then
					selected = o;
					break;
				end
			end
			if not selected then selected = temp[#temp - 1]; end
			if selected then
				local o = CloneReference(selected);
				o.parent = data;
				tinsert(data.g, o);
			else
				app.print("There was nothing to randomly select from.");
			end
		else
			app.print("There was nothing to randomly select from.");
		end
		self:Rebuild();
	end
end
local function SetSearchFilter(self, filter)
	SearchFilter = filter;
	Reroll(self);
	return true;
end

-- Implementation
app:GetWindow("Random", {
	parent = UIParent,
	Silent = true,
	OnInit = function(self, handlers)
		SLASH_ATTRANDOM1 = "/attran";
		SLASH_ATTRANDOM2 = "/attrandom";
		SlashCmdList["ATTRANDOM"] = function(cmd)
			self:Toggle();
		end
	end,
	OnLoad = function(self, settings)
		SearchFilter = settings.SearchFilter or "Quest";
	end,
	OnSave = function(self, settings)
		settings.SearchFilter = SearchFilter;
	end,
	OnRebuild = function(self, ...)
		if self.data then return; end
		
		-- For this window's options to work, Prime needs to be fully initialized.
		local prime = app:GetWindow("Prime");
		if not prime then return; end
		if not prime.data then prime:ForceUpdate(); end
	
		self.defaultHeader = {
			text = "Random - Go Get 'Em!",
			icon = app.asset("WindowIcon_Random"), 
			description = "This window allows you to randomly select a place or item to get. Go get 'em!",
			expanded = true,
			visible = true,
			back = 1,
			indent = 0,
			g = { },
			options = {
				{
					text = "Change Search Filter",
					icon = app.asset("Button_Search"), 
					description = "Click this to change your search filter.",
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row, button)
						self:SetData(self.filterOptions);
						return true;
					end,
				},
				{
					text = "Reroll",
					icon = app.asset("Button_Reroll"),
					description = "Click this button to reroll using the active filter.",
					visible = true,
					OnClick = function(row, button)
						Reroll(self);
						return true;
					end,
					OnUpdate = function(data)
						data.text = "Reroll: " .. SearchFilter;
						data.visible = true;
						return true;
					end,
				}
			},
		};
		self.filterOptions = {
			text = "Apply a Search Filter",
			icon = app.asset("Button_Search"), 
			description = "Please select a search filter option.",
			expanded = true,
			visible = true,
			back = 1,
			g = {
				setmetatable({
					['description'] = "Click this button to search... EVERYTHING.",
					['visible'] = true,
					['OnClick'] = function(row, button)
						return SetSearchFilter(self, "ATT");
					end,
					['OnUpdate'] = app.AlwaysShowUpdate,
				}, { __index = function(t, key)
					if key == "text" or key == "icon" or key == "preview" or key == "texcoord" then
						return app:GetDataCache()[key];
					end
				end}),
				{
					text = "Item",
					icon = "Interface\\Icons\\INV_Box_02",
					description = "Click this button to select a random item based on what you're missing.",
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row, button)
						return SetSearchFilter(self, "Item");
					end,
				},
				{
					text = "Quest",
					icon = "Interface\\GossipFrame\\AvailableQuestIcon",
					description = "Click this button to select a random quest based on what you're missing.",
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row, button)
						return SetSearchFilter(self, "Quest");
					end,
				},
				{
					text = "Instance",
					icon = app.asset("Category_D&R"),
					description = "Click this button to select a random instance based on what you're missing.",
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row, button)
						return SetSearchFilter(self, "Instance");
					end,
				},
				{
					text = "Dungeon",
					icon = app.asset("Difficulty_Normal"),
					description = "Click this button to select a random dungeon based on what you're missing.",
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row, button)
						return SetSearchFilter(self, "Dungeon");
					end,
				},
				{
					text = "Raid",
					icon = app.asset("Difficulty_Heroic"),
					description = "Click this button to select a random raid based on what you're missing.",
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row, button)
						return SetSearchFilter(self, "Raid");
					end,
				},
				{
					text = "Zone",
					icon = "Interface\\Icons\\INV_Misc_Map_01",
					description = "Click this button to select a random zone based on what you're missing.",
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row, button)
						return SetSearchFilter(self, "Zone");
					end,
				},
			},
		};
		
		self.data = self.defaultHeader;
		Reroll(self);
	end,
	OnUpdate = function(self, ...)
		-- Update the groups without forcing Debug Mode.
		local visibilityFilter, groupFilter, GroupRequirementsFilter = app.VisibilityFilter, app.GroupFilter, app.GroupRequirementsFilter;
		app.GroupRequirementsFilter = app.NoFilter;
		app.GroupFilter = app.NoFilter;
		app.VisibilityFilter = app.ObjectVisibilityFilter;
		self:DefaultUpdate(...);
		app.GroupRequirementsFilter = GroupRequirementsFilter;
		app.GroupFilter = groupFilter;
		app.VisibilityFilter = visibilityFilter;
		return false;
	end
});