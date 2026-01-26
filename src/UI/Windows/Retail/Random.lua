-- App locals
local appName, app = ...;
if not app.IsRetail then return; end
local L = app.L;

-- Global locals
local ipairs, wipe, setmetatable, math_random, tinsert
	= ipairs, wipe, setmetatable, math.random, tinsert
local C_Map_GetMapInfo
	= C_Map.GetMapInfo
local NestObject, Push
	= app.NestObject, app.Push

-- Implementation
app.AddCustomWindowOnUpdate("Random", function(self)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			local searchCache = {}

			local function ClearCache()
				wipe(searchCache)
			end

			-- when changing settings, we need the random cache to be cleared since it's determined based on search
			-- results with specific settings
			self:AddEventHandler("OnRecalculate_NewSettings", ClearCache)

			local function SearchRecursively(group, results, func, field)
				if group.visible and not (group.saved or group.collected) then
					if group.g then
						for i, subgroup in ipairs(group.g) do
							SearchRecursively(subgroup, field, results, func);
						end
					end
					if group[field] and (not func or func(group)) then
						results[#results + 1] = group
					end
				end
			end
			local function SearchRecursivelyForValue(group, results, func, field, value)
				if group.visible and not (group.saved or group.collected) then
					if group.g then
						for i, subgroup in ipairs(group.g) do
							SearchRecursivelyForValue(subgroup, field, value, results, func);
						end
					end
					if group[field] and group[field] == value and (not func or func(group)) then
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
			-- Named-TypeIDs for the field to Select for a given named-Thing
			local TypeIDLookups = {
				Achievement = "achievementID",
				Campsites = "campsiteID",
				Decor = "decorID",
				Dungeon = "instanceID",
				Factions = "factionID",
				Flight_Paths = "flightpathID",
				Followers = "followerID",
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
			-- Named-Values for the value of a field in the Select
			local TypeIDValueLookups = {
			}
			local DefaultSelectionFilter = function(o) return o.collectible and not o.collected end
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

			local function GetSearchResults(rootData, name)
				if searchCache[name] then return searchCache[name] end
				local searchResults = {}
				SelectionMethods[name](rootData, searchResults, SelectionFilters[name], TypeIDLookups[name], TypeIDValueLookups[name])
				if #searchResults > 0 then
					searchCache[name] = searchResults
					return searchResults
				end
			end

			local mainHeader
			local function AddRandomCategoryButton(text, icon, desc, name)
				return app.CreateRawText(text, {
					icon = icon,
					description = desc,
					visible = true,
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row, button)
						self.RandomSearchFilter = name
						self:SetData(mainHeader)
						self:Reroll()
						return true
					end,
				})
			end

			local rerollOption = app.CreateRawText(L.REROLL, {
				['icon'] = app.asset("Button_Reroll"),
				['description'] = L.REROLL_DESC,
				['visible'] = true,
				['OnClick'] = function(row, button)
					self:Reroll();
					return true;
				end,
				['OnUpdate'] = app.AlwaysShowUpdate,
			})
			local filterHeader = app.CreateRawText(L.APPLY_SEARCH_FILTER, {
				['icon'] = app.asset("Button_Search"),
				["description"] = L.APPLY_SEARCH_FILTER_DESC,
				['visible'] = true,
				['OnUpdate'] = app.AlwaysShowUpdate,
				["indent"] = 0,
				['back'] = 1,
				['g'] = {
					app.CreateRawText(L.TITLE, {
						icon = app.asset("logo_32x32"),
						preview = app.asset("Discord_2_128"),
						description = L.SEARCH_EVERYTHING_BUTTON_OF_DOOM,
						visible = true,
						OnClick = function(row, button)
							self.RandomSearchFilter = appName;
							self:SetData(mainHeader);
							self:Reroll();
							return true;
						end,
						OnUpdate = app.AlwaysShowUpdate,
					}),
					AddRandomCategoryButton(L.ACHIEVEMENT, app.asset("Category_Achievements"), L.ACHIEVEMENT_DESC, "Achievement"),
					AddRandomCategoryButton(L.CAMPSITES, app.asset("Category_Campsites"), L.CAMPSITE_DESC, "Campsites"),
					AddRandomCategoryButton(L.DECOR, app.asset("Category_Housing"), L.DECOR_DESC, "Decor"),
					AddRandomCategoryButton(L.DUNGEON, app.asset("Difficulty_Normal"), L.DUNGEON_DESC, "Dungeon"),
					AddRandomCategoryButton(L.FACTIONS, app.asset("Category_Factions"), L.FACTION_DESC, "Factions"),
					AddRandomCategoryButton(L.FLIGHT_PATHS, app.asset("Category_FlightPaths"), L.FLIGHT_PATH_DESC, "Flight_Paths"),
					AddRandomCategoryButton(L.FOLLOWERS, app.asset("Category_Followers"), L.FOLLOWER_DESC, "Followers"),
					AddRandomCategoryButton(L.INSTANCE, app.asset("Category_D&R"), L.INSTANCE_DESC, "Instance"),
					AddRandomCategoryButton(L.ITEM, app.asset("Interface_Zone_drop"), L.ITEM_DESC, "Item"),
					AddRandomCategoryButton(L.MOUNT, app.asset("Category_Mounts"), L.MOUNT_DESC, "Mount"),
					AddRandomCategoryButton(L.PET, app.asset("Category_PetBattles"), L.PET_DESC, "Pet"),
					AddRandomCategoryButton(L.QUEST, app.asset("Interface_Quest"), L.QUEST_DESC, "Quest"),
					AddRandomCategoryButton(L.RAID, app.asset("Difficulty_Heroic"), L.RAID_DESC, "Raid"),
					AddRandomCategoryButton(L.TITLES, app.asset("Category_Titles"), L.TITLES_RAND_DESC, "Titles"),
					AddRandomCategoryButton(L.TOY, app.asset("Category_ToyBox"), L.TOY_DESC, "Toy"),
					AddRandomCategoryButton(L.ZONE, app.asset("Category_Zones"), L.ZONE_DESC, "Zone"),
				},
			})
			mainHeader = app.CreateRawText(L.GO_GO_RANDOM, {
				['icon'] = app.asset("WindowIcon_Random"),
				["description"] = L.GO_GO_RANDOM_DESC,
				['visible'] = true,
				['OnUpdate'] = app.AlwaysShowUpdate,
				['back'] = 1,
				["indent"] = 0,
				['options'] = {
					app.CreateRawText(L.CHANGE_SEARCH_FILTER, {
						['icon'] = app.asset("Button_Search"),
						["description"] = L.CHANGE_SEARCH_FILTER_DESC,
						['visible'] = true,
						['OnClick'] = function(row, button)
							self:SetData(filterHeader);
							self:Update(true);
							return true;
						end,
						['OnUpdate'] = app.AlwaysShowUpdate,
					}),
					rerollOption,
				},
				['g'] = { },
			})
			self:SetData(mainHeader);
			self.RebuildRandom = function(self, no)
				-- Rebuild all the datas
				wipe(self.data.g);

				local primeWindow = app:GetWindow("Prime")
				local primePending = primeWindow.HasPendingUpdate

				-- Call to our method and build a list to draw from if Prime has been opened
				if not primePending then
					local method = self.RandomSearchFilter or appName;
					rerollOption.text = L.REROLL_2 .. (method ~= appName and L[method:upper()] or method);
					local temp = GetSearchResults(primeWindow.data, method) or app.EmptyTable;
					local totalWeight = 0;
					for i,o in ipairs(temp) do
						totalWeight = totalWeight + ((o.total or 1) - (o.progress or 0));
					end
					-- app.PrintDebug("#random",temp and #temp,totalWeight)
					if totalWeight > 0 and #temp > 0 then
						local weight, selected = math_random(totalWeight), nil;
						totalWeight = 0;
						for i,o in ipairs(temp) do
							totalWeight = totalWeight + ((o.total or 1) - (o.progress or 0));
							if weight <= totalWeight then
								selected = o;
								break;
							end
						end
						-- app.PrintDebug("select",weight,selected and (selected.text or selected.hash))
						if not selected then selected = temp[#temp - 1]; end
						if selected then
							NestObject(self.data, selected, true);
						else
							app.print(L.NOTHING_TO_SELECT_FROM);
						end
					else
						app.print(L.NOTHING_TO_SELECT_FROM);
					end
				else
					rerollOption.text = "Please open /att"
					app.print(L.NOTHING_TO_SELECT_FROM);
				end
				for i=#self.data.options,1,-1 do
					tinsert(self.data.g, 1, self.data.options[i]);
				end
				self:AssignChildren();
				if not no then self:Update(); end
			end
			self.Reroll = function(self)
				Push(self, "Rebuild", self.RebuildRandom);
			end
			for i,o in ipairs(self.data.options) do
				tinsert(self.data.g, o);
			end
			local method = self.RandomSearchFilter or appName;
			rerollOption.text = L.REROLL_2 .. (method ~= appName and L[method:upper()] or method);
		end

		-- Update the window and all of its row data
		self.data.progress = 0;
		self.data.total = 0;
		self.data.indent = 0;
		self:AssignChildren();
		self:DefaultUpdate(true);
	end
end)

app.AddSlashCommands({"attran","attrandom"},
function() app:GetWindow("Random"):Toggle() end)