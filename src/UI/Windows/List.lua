-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local coroutine, getmetatable, setmetatable, ipairs, pairs, rawget, rawset, tremove, tonumber, tostring, math_floor
	= coroutine, getmetatable, setmetatable, ipairs, pairs, rawget, rawset, tremove, tonumber, tostring, math.floor
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;

-- Implementation
local DataType, MinimumID, MaximumID, PartitionSize = "questID", 1, 1000, 1000;
local BuildFromCache, OnlyMissing, OnlyCached, OnlyCollected, IsHarvesting;

-- Returns an Object based on a QuestID a lot of Quest information for displaying in a row
---@return table?
local function GetPopulatedQuestObject(questID)
	-- cannot do anything on a missing object or questID
	if not questID then return; end
	-- either want to duplicate the existing data for this quest, or create new data for a missing quest
	local questObject = app.__CreateObject(app.SearchForObject("questID", questID, "field") or { questID = questID, _missing = true }, true);
	-- if questID == 78663 then
	-- 	local debug = app.Debugging
	-- 	app.Debugging = true
	-- 	app.PrintTable(questObject)
	-- 	app.Debugging = debug
	-- end
	-- Try populating quest rewards
	app.TryPopulateQuestRewards(questObject);
	return questObject;
end
local BaseObjectTypeFuncs = {
	questID = GetPopulatedQuestObject,
};
local ObjectTypeFuncs = setmetatable({}, {
	__index = BaseObjectTypeFuncs
});
local function CreateTypeObject(type, id)
	-- app.PrintDebug("DLO-Obj:",type,id)
	local func = ObjectTypeFuncs[type];
	if func then return func(id); end
	-- Simply a visible table whose Base will be the actual referenced object
	return setmetatable({ visible = true }, {
		__index = app.SearchForObject(DataType, id, "key")
			or app.SearchForObject(type, id, "field")
			or app.__CreateObject({[type]=id})
	});
end
local function BuildDataFromCache()
	-- special data type to utilize an ATT cache instead of generating raw groups
	-- "cache:item"
	-- => itemID
	-- fill all items from the cache into list, sorted by id

	-- collect valid id values
	local ValidKeys, cacheID = {}, nil;
	for id,groups in pairs(app.GetRawFieldContainer(DataType) or app.EmptyTable) do
		for index,o in ipairs(groups) do
			cacheID = tonumber(o.modItemID or o[DataType]) or 0;
			if cacheID ~= 0 then ValidKeys[cacheID] = true; end
		end
	end
	local CacheFields = {};
	for id,_ in pairs(ValidKeys) do
		CacheFields[#CacheFields + 1] = id
	end
	app.Sort(CacheFields, app.SortDefaults.Values);
	ObjectTypeFuncs[DataType] = function(id)
		-- use the cached id in the slot of the requested id instead
		id = CacheFields[id];
		return setmetatable({ visible = true }, {
			__index = id and (app.SearchForObject(DataType, id, "key")
							or app.SearchForObject(DataType, id, "field")
							or app.__CreateObject({[DataType]=id}))
						or setmetatable({name=EMPTY}, app.BaseClass)
		});
	end
	MinimumID = 1;
	MaximumID = #CacheFields;
end
local DataTypeShortcuts = app.Modules.Search.KeyMaps
app:CreateWindow("list", {
	Commands = { "attlist" },
	OnCommand = function(self, args, params)
		if params.reset then
			-- If rest was specified, then clear all settings to default.
			PartitionSize = 1000;
			MaximumID = 1000;
			MinimumID = 1
		end
		if params.finder then
			-- The user used /att finder, which is for harvesting exclusively
			params.type = "itemharvester";
			params.harvesting = true;
			params.limit = 225000;
		end
		-- /attlist type=quest min=1 limit=10000 part=100
		-- /attlist type=flightpath min=1 limit=10000 part=100

		-- If new values were specified, use those new values.
		if params.part then PartitionSize = tonumber(params.part); end
		if params.limit then MaximumID = tonumber(params.limit); end
		if params.min then MinimumID = tonumber(params.min); end
		BuildFromCache = false;
		if params.type then
			local a,b = (":"):split(params.type:lower():gsub("id", ""));
			DataType = DataTypeShortcuts[b or a];
			if b and a == "cache" then
				BuildFromCache = true;
			end
		end
		OnlyCollected = params.collected;
		IsHarvesting = params.harvesting;
		OnlyMissing = params.missing;
		OnlyCached = params.cached;
		wipe(self.data.g);
		self:Update(true);
		if self:IsShown() then
			return true;
		end
	end,
	OnLoad = function(self, settings)
		if settings.DataType then DataType = settings.DataType; end
		if settings.MinimumID then MinimumID = settings.MinimumID end
		if settings.MaximumID then MaximumID = settings.MaximumID end
		if settings.PartitionSize then PartitionSize = settings.PartitionSize; end
		if settings.BuildFromCache then BuildFromCache = settings.BuildFromCache; end
		if settings.OnlyMissing then OnlyMissing = settings.OnlyMissing; end
		if settings.OnlyCached then OnlyCached = settings.OnlyCached; end
		if settings.OnlyCollected then OnlyCollected = settings.OnlyCollected; end
		if settings.IsHarvesting then IsHarvesting = settings.IsHarvesting; end
		settings.visible = false
	end,
	OnSave = function(self, settings)
		settings.DataType = DataType;
		settings.MinimumID = MinimumID;
		settings.MaximumID = MaximumID;
		settings.PartitionSize = PartitionSize;
		settings.BuildFromCache = BuildFromCache;
		settings.OnlyMissing = OnlyMissing;
		settings.OnlyCached = OnlyCached;
		settings.OnlyCollected = OnlyCollected;
		settings.IsHarvesting = IsHarvesting;
		-- don't let list re-show itself on loads
		settings.visible = nil
	end,
	VerifyGroupSourceID = function(data)
		-- can only determine a sourceID if there is an itemID/sourceID on the group
		if not data.itemID and not data.sourceID then return true end
		if not data._VerifyGroupSourceID then data._VerifyGroupSourceID = 0 end
		if data._VerifyGroupSourceID > 5 then
			-- app.PrintDebug("Cannot Harvest: No Item Info",
			-- 	app:SearchLink(app.SearchForObject("itemID",data.modItemID,"field") or app.SearchForObject("sourceID",data.sourceID,"field")),
			-- 	data._VerifyGroupSourceID)
			return true
		end
		data._VerifyGroupSourceID = data._VerifyGroupSourceID + 1
		local link, source = data.link or data.silentLink, data.sourceID;
		if not link then return; end
		-- If it doesn't, the source ID will need to be harvested.
		local sourceID = app.GetSourceID(link);
		-- app.PrintDebug("SourceIDs",data.modItemID,source,app.GetSourceID(link),link)
		if sourceID and sourceID > 0 then
			-- only save the source if it is different than what we already have, or being forced
			if not source or source < 1 or source ~= sourceID then
				-- print(GetItemInfo(text))
				if not source then
					-- app.print("SourceID Update",link,data.modItemID,source,"=>",sourceID);
					data.sourceID = sourceID
					app.SaveHarvestSource(data)
				else
					app.print("SourceID Diff!",link,source,"=>",sourceID)
					-- replace the item information of the root Item (this affects the Main list)
					-- since the inherent item information does not match the SourceID any longer
					local mt = getmetatable(data)
					if mt then
						local rootData = mt.__index
						if rootData then
							rootData.rawlink = nil
							rootData.itemID = nil
							rootData.modItemID = nil
						end
					end
				end
			end
		end
		return true
	end,
	RemoveSelf = function(o)
		local parent = rawget(o, "parent");
		if not parent then
			app.PrintDebug("no parent?",o.text)
			return;
		end
		local og = parent.g;
		if not og then
			app.PrintDebug("no g?",parent.text)
			return;
		end
		local i = app.indexOf(og, o) or (o.__dlo and app.indexOf(og, o.__dlo));
		if i and i > 0 then
			-- app.PrintDebug("RemoveSelf",#og,i,o.text)
			tremove(og, i);
			-- app.PrintDebug("RemoveSelf",#og)
		end
		return og;
	end,
	OnInit = function(self, handlers)
		self.doesOwnUpdate = true
		self:SetData(app.CreateRawText("Full Data List", {
			icon = app.asset("Interface_Quest_header"),
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			g = {},
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					data.statistic = DataType or "None";
					data.description = (MinimumID or 1) .. " - " .. MaximumID;

					if app.Debugging and DataType == "sourceID" then
						app.print("Turn off Debugging (/att debug-print) to use sourceID lists. Excessive SourceID checking for ItemLinks will cause too much lag in this window!")
						return true
					end

					-- Wipe out the cached object type funcs from past runs this session.
					wipe(ObjectTypeFuncs);
					if DataType == "itemharvester" then
						if not app.CreateItemHarvester then
							app.print("'itemharvester' Requires 'Debugging' enabled when loading the game!")
							return
						end
						ObjectTypeFuncs[DataType] = app.CreateItemHarvester;
					elseif BuildFromCache then
						BuildDataFromCache();
					end
					if IsHarvesting then
						app.SetDGUDelay(0);
						app.StartCoroutine("AutoHarvestFirstPartitionCoroutine", data.window.AutoHarvestFirstPartitionCoroutine);
					end

					-- info about the Window
					local DGU, DGR = app.DirectGroupUpdate, app.DirectGroupRefresh;
					local overrides = {
						visible = not IsHarvesting and true or nil,
						collectibleAsCost = false,
						costCollectibles = false,
						g = false,
						text = IsHarvesting and function(o, key)
							local text = o.text;
							if not IsRetrieving(text) then
								DGR(o);
								if not self.VerifyGroupSourceID(o) then
									return "Harvesting..."
								end
								local og = self.RemoveSelf(o);
								-- app.PrintDebug(#og,"-",text)
								if #og <= 0 then
									self.RemoveSelf(o.parent);
								else
									o.visible = true;
								end
								return text;
							end
						end
						or function(o, key)
							local text = o.text;
							if not IsRetrieving(text) then
								-- if not self.VerifyGroupSourceID(o) then
								-- 	DGR(o);
								-- 	return "Harvesting..."
								-- end
								return "#"..(o[DataType] or o.keyval or "?")..": "..text;
							end
						end,
						OnLoad = function(o)
							-- app.PrintDebug("DGU-OnLoad:",o.hash)
							DGU(o);
						end,
						back = function(o, key)
							return o._missing and 1 or 0;
						end,
					};
					if OnlyMissing then
						app.SetDGUDelay(0);
						if OnlyCached then
							overrides.visible = function(o, key)
								if o._missing then
									local text = o.text;
									-- app.PrintDebug("check",text)
									return IsRetrieving(text) or
										(not text:find("#") and text ~= UNKNOWN and not text:find("transmogappearance:"));
								end
							end
						else
							overrides.visible = function(o, key)
								return o._missing;
							end
						end
					end
					if OnlyCollected then
						app.SetDGUDelay(0);
						if OnlyMissing then
							overrides.visible = function(o, key)
								if o._missing and o.collected then
									return o.collected;
								end
							end
						else
							overrides.visible = function(o, key)
								return o.collected;
							end
						end
					end

					local dlo = app.DelayLoadedObject;
					local count = PartitionSize
					local partitionG
					for index=MinimumID,MaximumID do
						count = count + 1;
						if count > PartitionSize then
							-- define a sub-group for a range of things
							partitionG = {};
							g[#g + 1] = app.CreateRawText(index .. "+", {
								icon = app.asset("Interface_Quest_header"),
								OnUpdate = app.AlwaysShowUpdate,
								visible = true,
								g = partitionG,
							});
							count = 1;
						end
						partitionG[#partitionG + 1] = dlo(CreateTypeObject, "text", overrides, DataType, index);
					end
					app.AssignChildren(data);
				end
				data.visible = true;
				return true;
			end,
		}));

		self.AutoHarvestFirstPartitionCoroutine = function()
			-- app.PrintDebug("AutoExpandingPartitions")
			local i = 10;
			-- yield a few frames to allow the list to fully generate
			while i > 0 do
				coroutine.yield();
				i = i - 1;
			end

			local partitions = self.data.g;
			if not partitions then return; end

			local part;
			-- app.PrintDebug("AutoExpandingPartitions",#partitions)
			while #partitions > 0 do
				part = partitions[1];
				if not part.expanded then
					part.expanded = true;
					-- app.PrintDebug("AutoExpand",part.text)
					app.DirectGroupRefresh(part);
				end
				coroutine.yield();
				-- Make sure the coroutine stops running if we close the list window
				if not self:IsVisible() then return; end
			end
		end
	end,
	OnUpdate = function(self, ...)
		local data = self.data
		if data and data.OnUpdate then
			data:OnUpdate()
		end
		-- requires Visibility filter to check .visibile for display of the group
		local filterVisible = app.Modules.Filter.Get.Visible();
		app.Modules.Filter.Set.Visible(true);
		self:DefaultUpdate(...);
		app.Modules.Filter.Set.Visible(filterVisible);
		return true;
	end
});
