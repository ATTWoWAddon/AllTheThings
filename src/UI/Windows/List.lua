-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local coroutine, getmetatable, setmetatable, ipairs, pairs, rawget, rawset, tremove, tonumber, tostring, math_floor
	= coroutine, getmetatable, setmetatable, ipairs, pairs, rawget, rawset, tremove, tonumber, tostring, math.floor
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;

-- Implementation
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

local DataType, MinimumID, MaximumID, PartitionSize = "quest", 1, 1000, 1000;
local OnlyMissing, OnlyCached, OnlyCollected, IsHarvesting;
local DataTypeShortcuts = setmetatable({
	source = "sourceID",
	s = "sourceID",
	achievementcategory = "achievementCategoryID",
	azeriteessence = "azeriteEssenceID",
	flightpath = "flightPathID",
	runeforgepower = "runeforgePowerID",
	itemharvester = "itemharvester",
}, {
	__index = function(t, key)
		if not key:find("ID") then
			key = key .. "ID";
		end
		t[key] = key;
		return key;
	end,
});
app:CreateWindow("list", {
	Commands = { "attharvest","attharvester" },
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
		
		-- If new values were specified, use those new values.
		if params.part then PartitionSize = tonumber(params.part); end
		if params.limit then MaximumID = tonumber(params.limit); end
		if params.min then MinimumID = tonumber(params.min); end
		if params.type then
			local a,b = params.type:split(":");
			DataType = DataTypeShortcuts[b or a];
			if b then
				if a == "cache" then
					-- TODO: Look into this?
					params.cached = true;
				end
			end
		end
		OnlyCollected = params.collected;
		IsHarvesting = params.harvesting;
		OnlyMissing = params.missing;
		OnlyCached = params.cached;
		if self:IsShown() then
			self:Update(true);
			return true;
		end
	end,
	OnLoad = function(self, settings)
		if settings.MinimumID then MinimumID = settings.MinimumID end;
		if settings.MaximumID then MaximumID = settings.MaximumID end;
		if settings.PartitionSize then PartitionSize = settings.PartitionSize; end
		if settings.OnlyMissing then OnlyMissing = settings.OnlyMissing; end
		if settings.OnlyCached then OnlyCached = settings.OnlyCached; end
		if settings.OnlyCollected then OnlyCollected = settings.OnlyCollected; end
		if settings.IsHarvesting then IsHarvesting = settings.IsHarvesting; end
	end,
	OnSave = function(self, settings)
		settings.MinimumID = MinimumID;
		settings.MaximumID = MaximumID;
		settings.PartitionSize = PartitionSize;
		settings.OnlyMissing = OnlyMissing;
		settings.OnlyCached = OnlyCached;
		settings.OnlyCollected = OnlyCollected;
		settings.IsHarvesting = IsHarvesting;
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

		-- temporarily prevent a force refresh from exploding the game if this window is open
		self.doesOwnUpdate = true;
		local DGU, DGR = app.DirectGroupUpdate, app.DirectGroupRefresh;

		-- custom params for initialization
		local dataType = (app.GetCustomWindowParam("list", "type") or "quest");
		local onlyMissing = app.GetCustomWindowParam("list", "missing");
		local onlyCached = app.GetCustomWindowParam("list", "cached");
		local onlyCollected = app.GetCustomWindowParam("list", "collected");
		local harvesting = app.GetCustomWindowParam("list", "harvesting");
		PartitionSize = tonumber(app.GetCustomWindowParam("list", "part")) or 1000;
		MaximumID = tonumber(app.GetCustomWindowParam("list", "limit")) or 1000;
		local min = tonumber(app.GetCustomWindowParam("list", "min")) or 0
		-- print("Quests - onlyMissing",onlyMissing)
		local CacheFields, ItemHarvester;

		-- manual type adjustments to match internal use (due to lowercase keys with non-lowercase cache keys >_<)
		if dataType == "s" or dataType == "source" then
			dataType = "source";
		elseif dataType == "achievementcategory" then
			dataType = "achievementCategory";
		elseif dataType == "azeriteessence" then
			dataType = "azeriteEssence";
		elseif dataType == "flightpath" then
			dataType = "flightPath";
		elseif dataType == "runeforgepower" then
			dataType = "runeforgePower";
		elseif dataType == "itemharvester" then
			if not app.CreateItemHarvester then
				app.print("'itemharvester' Requires 'Debugging' enabled when loading the game!")
				return
			end
			ItemHarvester = app.CreateItemHarvester;
		elseif dataType:find("cache") then
			-- special data type to utilize an ATT cache instead of generating raw groups
			-- "cache:item"
			-- => itemID
			-- fill all items from itemID cache into list, sorted by itemID
			local added = {};
			CacheFields = {};
			local cacheID;
			local _, cacheKey = (":"):split(dataType);
			local cacheKeyID = cacheKey.."ID";
			local imin, imax = 0, 999999
			-- convert the list min/max into cache-based min/max for cache lists
			if MaximumID ~= 1000 then
				imax = MaximumID + 1;
				MaximumID = 999999
			end
			if min ~= 0 then
				imin = min;
				min = 0;
			end
			dataType = cacheKey;
			-- collect valid id values
			for id,groups in pairs(app.GetRawFieldContainer(cacheKey) or app.GetRawFieldContainer(cacheKeyID) or app.EmptyTable) do
				for index,o in ipairs(groups) do
					cacheID = tonumber(o.modItemID or o[dataType] or o[cacheKeyID]) or 0;
					if imin <= cacheID and cacheID <= imax then
						added[cacheID] = true;
						-- app.PrintDebug("CacheID",cacheID,"from cache",id,"@",index,#groups)
						-- app.PrintDebug(o.modItemID,o[dataType],o[cacheKeyID])
					-- else app.PrintDebug("Ignored Data for Harvest due to CacheID Bounds",cacheID,app:SearchLink(o))
					end
				end
			end
			for id,_ in pairs(added) do
				CacheFields[#CacheFields + 1] = id
			end
			app.Sort(CacheFields, app.SortDefaults.Values);
			app.PrintDebug(#CacheFields,"CacheFields:Sorted",CacheFields[1],"->",CacheFields[#CacheFields])
		end

		-- add the ID
		DataType = DataType.."ID";

		local ForceVisibleFields = {
			visible = true,
			total = 0,
			progress = 0,
			costTotal = 0,
			upgradeTotal = 0,
		};
		local PartitionUpdateFields = {
			total = true,
			progress = true,
			parent = true,
			expanded = true,
			window = true,
		};
		local PartitionMeta = {
			__index = ForceVisibleFields,
			__newindex = function(t, key, val)
				-- only allow changing existing table fields
				if PartitionUpdateFields[key] then
					rawset(t, key, val);
					-- app.PrintDebug("__newindex:part",key,val)
				end
			end
		};

		local ObjectTypeFuncs = {
			questID = GetPopulatedQuestObject,
		};
		if CacheFields then
			-- app.PrintDebug("OTF:Define",DataType)
			ObjectTypeFuncs[DataType] = function(id)
				-- use the cached id in the slot of the requested id instead
				-- app.PrintDebug("OTF",id)
				id = CacheFields[id];
				-- app.PrintDebug("OTF:CacheID",DataType,id)
				return setmetatable({ visible = true }, {
					__index = id and (app.SearchForObject(DataType, id, "key")
									or app.SearchForObject(DataType, id, "field")
									or app.__CreateObject({[DataType]=id}))
								or setmetatable({name=EMPTY}, app.BaseClass)
				});
			end
			-- app.PrintDebug("SetLimit",#CacheFields)
			MaximumID = #CacheFields;
		end
		if ItemHarvester then
			ObjectTypeFuncs[DataType] = ItemHarvester;
		end
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

		-- info about the Window
		local g = {};
		self:SetData(setmetatable({
			text = "Full Data List - "..(DataType or "None"),
			icon = app.asset("Interface_Quest_header"),
			description = "1 - "..MaximumID,
			g = g,
		}, PartitionMeta));

		local overrides = {
			visible = not IsHarvesting and true or nil,
			indent = 2,
			collectibleAsCost = false,
			costCollectibles = false,
			g = false,
			back = function(o, key)
				return o._missing and 1 or 0;
			end,
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
		};
		if onlyMissing then
			app.SetDGUDelay(0);
			if onlyCached then
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
		if onlyCollected then
			app.SetDGUDelay(0);
			if onlyMissing then
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
		if IsHarvesting then
			app.SetDGUDelay(0);
			app.StartCoroutine("AutoHarvestFirstPartitionCoroutine", self.AutoHarvestFirstPartitionCoroutine);
		end
		-- add a bunch of raw, delay-loaded objects in order into the window
		local groupCount = math_floor(MaximumID / PartitionSize);
		local groupStart = math_floor(min / PartitionSize);
		local partition, partitionStart, partitionGroups;
		local dlo = app.DelayLoadedObject;
		for j=groupStart,groupCount,1 do
			partitionStart = j * PartitionSize;
			partitionGroups = {};
			-- define a sub-group for a range of things
			partition = setmetatable({
				text = tostring(partitionStart + 1).."+",
				icon = app.asset("Interface_Quest_header"),
				g = partitionGroups,
			}, PartitionMeta);
			for i=1,PartitionSize,1 do
				tinsert(partitionGroups, dlo(CreateTypeObject, "text", overrides, DataType, partitionStart + i));
			end
			tinsert(g, partition);
		end
		self:AssignChildren();
	end,
	OnUpdate = function(self, ...)
		-- requires Visibility filter to check .visibile for display of the group
		local filterVisible = app.Modules.Filter.Get.Visible();
		app.Modules.Filter.Set.Visible(true);
		-- Force Debug Mode
		local rawSettings = app.Settings:GetRawSettings("General");
		local debugMode = app.MODE_DEBUG;
		if not debugMode then
			rawSettings.DebugMode = true;
			app.Settings:UpdateMode();
		end
		self:DefaultUpdate(...);
		if not debugMode then
			rawSettings.DebugMode = debugMode;
			app.Settings:UpdateMode();
		end
		app.Modules.Filter.Set.Visible(filterVisible);
		return true;
	end
});

if true then return; end

app.AddSlashCommands({"attharvest","attharvester"},
function(cmd)
	app.print("Force Debug Mode");
	app.Debugging = true
	app.Settings:ForceRefreshFromToggle();
	app.Settings:SetDebugMode(true);
	app.SetCustomWindowParam("list", "reset", true);
	app.SetCustomWindowParam("list", "type", "cache:item");
	app.SetCustomWindowParam("list", "harvesting", true);
	local args = { (","):split(cmd:lower()) };
	app.SetCustomWindowParam("list", "min", args[1]);
	app.SetCustomWindowParam("list", "limit", args[2] or 999999);
	-- reduce the re-try duration when harvesting
	app.SetCAN_RETRY_DURATION_SEC(1)
	app:GetWindow("list"):Toggle();
end)
