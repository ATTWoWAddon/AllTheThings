-- App locals
local appName, app = ...;
local L = app.L;

-- Global locals
local ipairs, tinsert, tremove, setmetatable, math_max, math_random, unpack, wipe
	= ipairs, tinsert, tremove, setmetatable, math.max, math.random, unpack, wipe;
local C_Map_GetMapInfo
	= C_Map.GetMapInfo
local NestObject = app.NestObject

-- Local Functions
local SearchFilter;

-- when changing settings, we need the random cache to be cleared since it's determined based on search
-- results with specific settings
local searchCache = {};
app.AddEventHandler("OnRecalculate_NewSettings", function()
	wipe(searchCache)
end)
local function SearchRecursively(group, results, func, field)
	if group.visible and not (group.saved or group.collected) then
		if group.g then
			for i, subgroup in ipairs(group.g) do
				SearchRecursively(subgroup, results, func, field)
			end
		end
		if group[field] and (not func or func(group)) then
			results[#results + 1] = group
		end
	end
end
local function SearchRecursivelyForEverything(group, results)
	if group.visible and not (group.saved or group.collected) then
		if group.g then
			for i, subgroup in ipairs(group.g) do
				SearchRecursivelyForEverything(subgroup, results);
			end
		end
		if group.collectible then
			results[#results + 1] = group
		end
	end
end
local excludedZones = setmetatable({}, {
	__index = function(t, mapID)
		local info = C_Map_GetMapInfo(mapID);
		t[mapID] = not info or info.mapType < 3;
		return t[mapID];
	end
});

-- Represents how to search for a given named-Thing
local SelectionMethods = setmetatable({
	AllTheThings = SearchRecursivelyForEverything,
}, { __index = function() return SearchRecursively end})
local function DefaultSelectionFilter(o) return o.collectible and not o.collected end
-- Named-Functions (if not ignored) for whether to select data pertaining to a specific named-Thing
local SelectionFilters = setmetatable({
	Achievement = function(o)
		return o.collectible and not o.collected and not o.mapID and not o.criteriaID;
	end,
	-- Campsites - default
	-- Decor - default
	Dungeon = function(o)
		return not o.isRaid and (((o.total or 0) - (o.progress or 0)) > 0);
	end,
	-- Factions - default
	-- Flight Paths - default
	-- Followers - default
	-- Item - default
	Instance = function(o)
		return ((o.total or 0) - (o.progress or 0)) > 0;
	end,
	-- Mount - default
	-- Pet - default
	-- Quest - default
	Raid = function(o)
		return o.isRaid and (((o.total or 0) - (o.progress or 0)) > 0);
	end,
	-- Titles - default
	-- Toy - default
	Zone = function(o)
		return (((o.total or 0) - (o.progress or 0)) > 0) and not o.instanceID and not excludedZones[o.mapID];
	end,
}, { __index = function() return DefaultSelectionFilter end})
-- Named-TypeIDs for the field to Select for a given named-Thing
local TypeIDLookups = {
	Achievement = "achievementID",
	Dungeon = "instanceID",
	Factions = "factionID",
	Flight_Paths = "flightpathID",
	Item = "itemID",
	Instance = "instanceID",
	Mount = "mountID",
	Pet = "speciesID",
	Quest = "questID",
	Raid = "instanceID",
	Titles = "titleID",
	Toy = "toyID",
	Zone = "mapID",
}
local TextLookups = {};
local function OnClickForSearchCategory(row, button)
	local self = row:GetParent():GetParent();
	SearchFilter = row.ref.category or "Quest";
	self:SetData(self.defaultHeader);
	self:Reroll();
	return true;
end
local function AddRandomCategoryButton(text, icon, desc, category)
	TextLookups[category] = text;
	return app.CreateRawText(text, {
		category = category,
		description = desc,
		icon = icon,
		SortPriority = 2,
		OnUpdate = app.AlwaysShowUpdate,
		OnClick = OnClickForSearchCategory,
	})
end
local RandomCategoryButtons = {
	app.CreateRawText(L.TITLE, {
		category = appName,
		SortPriority = 1,
		icon = app.asset("logo_32x32"),
		preview = app.asset("Discord_2_128"),
		description = L.SEARCH_EVERYTHING_BUTTON_OF_DOOM,
		OnUpdate = app.AlwaysShowUpdate,
		OnClick = OnClickForSearchCategory,
	}),
	AddRandomCategoryButton(L.ACHIEVEMENT, app.asset("Category_Achievements"), L.ACHIEVEMENT_DESC, "Achievement"),
	AddRandomCategoryButton(L.DUNGEON, app.asset("Difficulty_Normal"), L.DUNGEON_DESC, "Dungeon"),
	AddRandomCategoryButton(L.FACTIONS, app.asset("Category_Factions"), L.FACTION_DESC, "Factions"),
	AddRandomCategoryButton(L.FLIGHT_PATHS, app.asset("Category_FlightPaths"), L.FLIGHT_PATH_DESC, "Flight_Paths"),
	AddRandomCategoryButton(L.INSTANCE, app.asset("Category_D&R"), L.INSTANCE_DESC, "Instance"),
	AddRandomCategoryButton(L.ITEM, app.asset("Interface_Zone_drop"), L.ITEM_DESC, "Item"),
	AddRandomCategoryButton(L.MOUNT, app.asset("Category_Mounts"), L.MOUNT_DESC, "Mount"),
	AddRandomCategoryButton(L.PET, app.asset("Category_PetBattles"), L.PET_DESC, "Pet"),
	AddRandomCategoryButton(L.QUEST, app.asset("Interface_Quest"), L.QUEST_DESC, "Quest"),
	AddRandomCategoryButton(L.RAID, app.asset("Difficulty_Heroic"), L.RAID_DESC, "Raid"),
	AddRandomCategoryButton(L.TITLES, app.asset("Category_Titles"), L.TITLES_RAND_DESC, "Titles"),
	AddRandomCategoryButton(L.TOY, app.asset("Category_ToyBox"), L.TOY_DESC, "Toy"),
	AddRandomCategoryButton(L.ZONE, app.asset("Category_Zones"), L.ZONE_DESC, "Zone"),
};
app.AddRandomSearchCategory = function(category, key, text, desc, icon, filter)
	TypeIDLookups[category] = key;
	if filter then SelectionFilters[category] = filter; end
	tinsert(RandomCategoryButtons, AddRandomCategoryButton(text, icon, desc, category));
end
local function GetSearchResults()
	if SearchFilter then
		local searchResults = searchCache[SearchFilter];
		if searchResults then return searchResults end
		local method = SelectionMethods[SearchFilter];
		if method then
			searchResults = {}
			method(app:GetDatabaseRoot(), searchResults, SelectionFilters[SearchFilter], TypeIDLookups[SearchFilter])
			searchCache[SearchFilter] = searchResults
			return searchResults
		end
	end
end
local function GenerateWeightedTable(data)
	local weightedTable, totalWeight = {}, 0;
	if data then
		for i,o in ipairs(data) do
			local weight, total, progress = 1, o.total, o.progress;
			if total and progress then weight = math_max(total - progress, 1); end
			weightedTable[#weightedTable + 1] = { value=o, weight=weight };
			totalWeight = totalWeight + weight;
		end
	end
	return { weightedTable, totalWeight };
end
local function CreateCache()
	return GenerateWeightedTable(GetSearchResults() or {});
end

-- Implementation
app:CreateWindow("Random", {
	Commands = { "attrandom" },
	IgnoreQuestUpdates = true,
	OnLoad = function(self, settings)
		SearchFilter = settings.SearchFilter or "Quest";
		
		-- For this window's options to work, Prime needs to be fully initialized.
		local prime = app:GetWindow("Prime");
		if not prime.data.TLUG then prime:ForceUpdate(); end
		self:Reroll();
	end,
	OnSave = function(self, settings)
		settings.SearchFilter = SearchFilter;
	end,
	__Reroll = function(self)
		-- Rebuild all the datas
		for i=#self.data.g,#self.data.options + 1,-1 do
			tremove(self.data.g, i);
		end
		
		-- Call to our method and build a list to draw from
		local cache = app.GetCachedData("SEARCH::" .. SearchFilter, CreateCache);
		local weightedTable, totalWeight = unpack(cache);
		if totalWeight > 0 then
			local selected = weightedTable[#weightedTable].data;
			totalWeight = math_random(totalWeight);
			for i,o in ipairs(weightedTable) do
				totalWeight = totalWeight - o.weight;
				if totalWeight <= 0 then
					selected = o.value;
					break;
				end
			end
			if selected then
				local clone = app.CloneClassInstance(selected);
				clone.parent = self.data;
				tinsert(self.data.g, clone);
			else
				app.print(L.NOTHING_TO_SELECT_FROM);
			end
		else
			app.print(L.NOTHING_TO_SELECT_FROM);
		end
		self:Rebuild();
	end,
	Reroll = function(self)
		app.CallbackHandlers.Callback(self.__Reroll, self);
	end,
	OnInit = function(self, handlers)
		local filterOptions = app.CreateRawText(L.APPLY_SEARCH_FILTER, {
			icon = app.asset("Button_Search"),
			description = L.APPLY_SEARCH_FILTER_DESC,
			OnUpdate = app.AlwaysShowUpdate,
			SortType = "Global",
			indent = 0,
			back = 1,
			g = RandomCategoryButtons,
		});
		self.defaultHeader = app.CreateRawText(L.GO_GO_RANDOM, {
			icon = app.asset("WindowIcon_Random"),
			description = L.GO_GO_RANDOM_DESC,
			OnUpdate = app.AlwaysShowUpdate,
			expanded = true,
			visible = true,
			back = 1,
			indent = 0,
			g = {},
			options = {
				app.CreateRawText(L.CHANGE_SEARCH_FILTER, {
					icon = app.asset("Button_Search"),
					description = L.CHANGE_SEARCH_FILTER_DESC,
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row, button)
						app.AssignChildren(filterOptions);
						self:SetData(filterOptions);
						self:Update(true);
						return true;
					end,
				}),
				app.CreateRawText(L.REROLL, {
					icon = app.asset("Button_Reroll"),
					description = L.REROLL_DESC,
					OnClick = function(row, button)
						self:Reroll();
						return true;
					end,
					OnUpdate = function(data)
						data.text = L.REROLL .. ": " .. (SearchFilter ~= appName and TextLookups[SearchFilter] or SearchFilter);
						data.visible = true;
						return true;
					end,
				}),
			},
		})
		self:SetData(self.defaultHeader);
		for i,o in ipairs(self.data.options) do
			tinsert(self.data.g, o);
		end
		self:AssignChildren();
	end,
})