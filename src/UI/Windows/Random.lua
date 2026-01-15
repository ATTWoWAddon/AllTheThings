-- App locals
local _, app = ...;
local CloneReference = app.CloneReference;

-- Global locals
local ipairs, tinsert, math_max, pairs, unpack, wipe
	= ipairs, tinsert, math.max, pairs, unpack, wipe;

-- Helper Functions
local function GenerateWeightedTable(data)
	local weightedTable, totalWeight = {}, 0;
	if data then
		for i,o in ipairs(data) do
			local weight, total, progress = 1, o.total, o.progress;
			if total and progress then weight = math_max(total - progress, 1); end
			tinsert(weightedTable, { value=o, weight=weight });
			totalWeight = totalWeight + weight;
		end
	end
	return { weightedTable, totalWeight };
end
local function Search(field, g)
	local results = {};
	app:BuildFlatSearchFilteredResponse(g or app:GetDataCache().g, function(t) return t[field]; end, results);
	return results;
end

-- Local Functions
local SearchFilter;
local excludedZones = {
	[12] = 1,	-- Kalimdor
	[13] = 1,	-- Eastern Kingdoms
	[101] = 1,	-- Outland
	[113] = 1,	-- Northrend
	[424] = 1,	-- Pandaria
	[948] = 1,	-- The Maelstrom
	[572] = 1,	-- Draenor
	[619] = 1,	-- Broken Isles
	[905] = 1,	-- Argus
	[876] = 1,	-- Kul'Tiras
	[875] = 1,	-- Zandalar
	[947] = 1,	-- Cosmic (Classic)
	[1414] = 1,	-- Kalimdor (Classic)
	[1415] = 1,	-- Eastern Kingdoms (Classic)
	[1945] = 1,	-- Outland (Classic)
};
local everythingFilter = function(t)
	return (t.collectible and not t.collected) and not (t.mapID and excludedZones[t.mapID]) and not t.expansionID;
end;
local zoneFilter = function(t)
	return t.mapID and (not (t.saved or (t.collectible and t.collected)) and (t.total and t.progress < t.total)) and not excludedZones[t.mapID];
end;
local searchMethods = {
	ATT = function(self, cache)
		for i,o in pairs(app:GetDataCache().g) do
			if o.g then
				local results = {};
				app:BuildFlatSearchFilteredResponse(o.g, everythingFilter, results);
				for i,o in ipairs(results) do
					if not o.locked and ((o.collectible and not o.collected) or (not o.saved and o.total and o.progress < o.total)) then
						if app.RecursiveCharacterRequirementsFilter(o) and app.RecursiveGroupRequirementsFilter(o) then
							tinsert(cache, o);
						end
					end
				end
			end
		end
	end,
	Item = function(self, cache)
		for i,o in ipairs(Search("itemID")) do
			if not o.collected and o.collectible then
				if app.RecursiveCharacterRequirementsFilter(o) and app.RecursiveGroupRequirementsFilter(o) then
					tinsert(cache, o);
				end
			end
		end
	end,
	Quest = function(self, cache)
		for i,o in ipairs(Search("questID")) do
			if not o.locked and ((o.collectible and not o.collected) or (not o.saved and o.total and o.progress < o.total)) then
				if app.RecursiveCharacterRequirementsFilter(o) and app.RecursiveGroupRequirementsFilter(o) then
					tinsert(cache, o);
				end
			end
		end
	end,
	Instance = function(self, cache)
		for i,o in ipairs(Search("mapID", app.Categories.Instances)) do
			if not (o.saved or (o.collectible and o.collected)) and (o.total and o.progress < o.total) then
				tinsert(cache, o);
			end
		end
	end,
	Dungeon = function(self, cache)
		for i,o in ipairs(Search("mapID", app.Categories.Instances)) do
			if not o.isRaid and (not (o.saved or (o.collectible and o.collected)) and (o.total and o.progress < o.total)) then
				tinsert(cache, o);
			end
		end
	end,
	Raid = function(self, cache)
		for i,o in ipairs(Search("mapID", app.Categories.Instances)) do
			if o.isRaid and (not (o.saved or (o.collectible and o.collected)) and (o.total and o.progress < o.total)) then
				tinsert(cache, o);
			end
		end
	end,
	Zone = function(self, cache)
		for categoryName,category in pairs(app.Categories) do
			if categoryName ~= "Instances" then
				app:BuildFlatSearchFilteredResponse(category, zoneFilter, cache);
			end
		end
	end
};
local function CreateCache(self)
	local cache = {};
	searchMethods[SearchFilter](self, cache);
	return GenerateWeightedTable(cache);
end
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
		local cache = app.GetCachedData("SEARCH::" .. SearchFilter, CreateCache, self);
		local weightedTable, totalWeight = unpack(cache);
		if totalWeight > 0 then
			local selected = weightedTable[#weightedTable].data;
			totalWeight = math.random(totalWeight);
			for i,o in ipairs(weightedTable) do
				totalWeight = totalWeight - o.weight;
				if totalWeight <= 0 then
					selected = o.value;
					break;
				end
			end
			if selected then
				local o = CloneReference(selected);
				o.parent = data;
				tinsert(data.g, o);
			else
				app.print("Nothing was selected.");
			end
		else
			app.print("Source list was empty. Please check to see if anything matches your query.");
		end
		self:AssignChildren();
		self:ExpandData(true);
		self:Update();
	end
end
local function SetSearchFilter(self, filter)
	SearchFilter = filter;
	Reroll(self);
	return true;
end

-- Implementation
app:CreateWindow("Random", {
	Commands = { "attrandom" },
	OnLoad = function(self, settings)
		SearchFilter = settings.SearchFilter or "Quest";
	end,
	OnSave = function(self, settings)
		settings.SearchFilter = SearchFilter;
	end,
	OnInit = function(self, handlers)
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
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					data.OnUpdate = nil;
					-- For this window's options to work, Prime needs to be fully initialized.
					local prime = app:GetWindow("Prime");
					if not prime.data then prime:ForceUpdate(); end
					Reroll(self);
				end
			end
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
					icon = 132595,
					description = "Click this button to select a random item based on what you're missing.",
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row, button)
						return SetSearchFilter(self, "Item");
					end,
				},
				{
					text = "Quest",
					icon = 132049,
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
					icon = 134269,
					description = "Click this button to select a random zone based on what you're missing.",
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row, button)
						return SetSearchFilter(self, "Zone");
					end,
				},
			},
		};
		self.data = self.defaultHeader;
	end,
});
