-- App locals
local appName, app = ...;
local type,wipe,ipairs,pairs,rawget,select,tinsert,tremove,tonumber, math_floor
	= type,wipe,ipairs,pairs,rawget,select,tinsert,tremove,tonumber, math.floor

-- WoW API Cache
local C_Map_GetPlayerMapPosition, C_Map_GetMapInfo
	= C_Map.GetPlayerMapPosition, C_Map.GetMapInfo;
local UnitFactionGroup, UnitGUID, UnitName
	= UnitFactionGroup, UnitGUID, UnitName;
local GetQuestItemLink, GetQuestID, GetQuestText, GetObjectiveText, C_QuestLog_GetQuestObjectives
	= GetQuestItemLink, GetQuestID, GetQuestText, GetObjectiveText, C_QuestLog.GetQuestObjectives;
local GetNumQuestChoices, GetNumQuestRewards, GetNumQuestLogRewardSpells, GetQuestLogRewardSpell, GetNumQuestLogRewardCurrencies, GetQuestLogRewardCurrencyInfo
	= GetNumQuestChoices, GetNumQuestRewards, GetNumQuestLogRewardSpells, GetQuestLogRewardSpell, GetNumQuestLogRewardCurrencies, GetQuestLogRewardCurrencyInfo;
local GetNumLootItems, GetLootSlotLink, GetLootSourceInfo, GetTaxiMapID, C_TaxiMap_GetAllTaxiNodes
	= GetNumLootItems, GetLootSlotLink, GetLootSourceInfo, GetTaxiMapID, C_TaxiMap.GetAllTaxiNodes;
local GetItemID = app.WOWAPI.GetItemID;
local issecretvalue = app.WOWAPI.issecretvalue;

local CloneArray, CloneClassInstance, GetRelativeValue, MergeObject
	= app.CloneArray, app.CloneClassInstance, app.GetRelativeValue, app.MergeObject;
local CleanLink = app.Modules.Item.CleanLink

-- Implementation
local function CloneObject(o)
	local clone = CloneClassInstance(o);
	local u = GetRelativeValue(o, "u");
	if u then clone.u = u; end
	local e = GetRelativeValue(o, "e");
	if e then clone.e = e; end
	local lvl = GetRelativeValue(o, "lvl");
	if lvl then clone.lvl = lvl; end
	if not o.itemID or o.b == 1 then
		local races = o.races;
		if races then
			clone.races = CloneArray(races);
		else
			local r = GetRelativeValue(o, "r");
			if r then
				clone.r = r;
				clone.races = nil;
			else
				races = GetRelativeValue(o, "races");
				if races then clone.races = CloneArray(races); end
			end
		end
		local c = GetRelativeValue(o, "c");
		if c then clone.c = CloneArray(c); end
	end
	return clone;
end
local IgnoredNPCs = {
	[142668] = 1,	-- Merchant Maku (Brutosaur)
	[142666] = 1,	-- Collector Unta (Brutosaur)
	[62821] = 1,	-- Mystic Birdhat (Grand Yak)
	[62822] = 1,	-- Cousin Slowhands (Grand Yak)
	[32642] = 1,	-- Mojodishu (Mammoth)
	[32641] = 1,	-- Drix Blackwrench (Mammoth)
};
local CleanFields = {
	parent = 1,
	sourceParent = 1,
	total = 1,
	text = 1,
	forceShow = 1,
	progress = 1,
	OnUpdate = 1,
	expanded = 1,
	hash = 1,
	rawlink = 1,
	modItemID = 1,
	f = 1,
	key = 1,
	visible = 1,
	displayInfo = 1,
	displayID = 1,
	fetchedDisplayID = 1,
	nmr = 1,
	nmc = 1,
	TLUG = 1,
	locked = 1,
	collectibleAsCost = 1,
	costTotal = 1,
	upgradeTotal = 1,
	icon = 1,
	HasRetried = 1,
	_OnUpdate = 1,
	_SettingsRefresh = 1,
	_coord = 1,
	_missing = 1,
	__merge = 1,
	__canretry = 1,
	SortType = 1,
	OnClick = 1,
};
local function CleanObject(obj)
	if obj == nil then return end
	if type(obj) == "table" then
		local clean = {};
		if obj[1] then
			for _,o in ipairs(obj) do
				clean[#clean + 1] = CleanObject(o)
			end
		else
			for k,v in pairs(obj) do
				if not CleanFields[k] then
					clean[k] = CleanObject(v)
				end
			end
		end
		return clean
	elseif type(obj) == "number" then
		return obj
	else
		return tostring(obj)
	end
end

-- Exporting Data
local DefaultParsing = {};
local function CalculateIndent(indent)
	local str = "";
	for i=0,indent do
		str = str .. "\t";
	end
	return str;
end
local function GetMoneyString(amount)
	if amount > 0 then
		local formatted
		local gold, silver, copper = math_floor(amount / 100 / 100), math_floor((amount / 100) % 100),
			math_floor(amount % 100)
		if gold > 0 then
			formatted = app.formatNumericWithCommas(gold) .. "g"
		end
		if silver > 0 then
			if formatted then
				formatted = formatted .. " " .. silver .. "s";
			else
				formatted = silver .. "s";
			end
		end
		if copper > 0 then
			if formatted then
				formatted = formatted .. " " .. copper .. "c";
			else
				formatted = copper .. "c";
			end
		end
		return formatted
	end
	return amount
end
local function GetNameFromCost(costType, id, count)
	if costType == "g" then
		return GetMoneyString(amount or id);
	elseif costType == "c" then
		return (count > 1 and ("x" .. count .. " ") or "") .. (app.CreateCurrencyClass(id).name or UNKNOWN);
	else
		return (count > 1 and ("x" .. count .. " ") or "") .. (app.GetNameFromProvider(costType, id) or UNKNOWN);
	end
end
local function ExportKeyValue(key, value)
	local str = key .. " = ";
	if key == "providers" then
		str = str .. "{\n";
		for i,o in ipairs(value) do
			str = str .. "\t{ \"" .. o[1] .. "\", " .. o[2] .. " },\t-- " .. (app.GetNameFromProvider(o[1], o[2]) or UNKNOWN) .. "\n";
		end
		str = str .. "},";
	elseif key == "crs" or key == "qgs" then
		str = str .. "{\n";
		for i,id in ipairs(value) do
			str = str .. "\t" .. id .. ",\t-- " .. app.NPCNameFromID[id] .. "\n";
		end
		str = str .. "},";
	elseif key == "coords" then
		str = str .. "{\n";
		for mapID,coordsForMap in pairs(value) do
			str = str .. "\t[" .. mapID .. "] = {\n";
			for i,o in ipairs(coordsForMap) do
				str = str .. "\t\t{ " .. o[1] .. ", " .. o[2] .. " },\n";
			end
			str = str .. "\t},";
		end
		str = str .. "},";
	elseif key == "cost" then
		if type(value) == "number" then
			-- This is simply a gold value
			str = str .. value .. ",\t-- " .. GetMoneyString(value);
		else
			-- This is the traditional cost format.
			str = str .. "{\n";
			for i,o in ipairs(value) do
				str = str .. "\t{ \"" .. o[1] .. "\", " .. o[2] .. ", " .. (o[3] or 1) .. " },\t-- ".. GetNameFromCost(o[1], o[2], o[3]) .. "\n";
			end
			str = str .. "},";
		end
	elseif key == "r" then
		-- "r" is a shortcut for "races", where the whole of the faction can do a thing
		str = "races = " .. (value == 2 and "ALLIANCE_ONLY" or "HORDE_ONLY") .. ",";
	else
		if not DefaultParsing[key] then
			print("DEFAULT PARSING FOR KEY", key);
			DefaultParsing[key] = true;
		end
		if type(value) == "string" then
			if value:find("\"") or value:find("\n") then
				str = str .. "[[" .. value .. "]],";
			else
				str = str .. "\"" .. value .. "\",";
			end
		else
			str = str .. value .. ",";
		end
	end
	return str;
end
local function ExportRawDataToString(data)
	if data then
		local str = "{";
		local hasG = data.g;
		if hasG then data.g = nil; end
		
		local anyOtherKeys;
		for key,value in pairs(data) do
			if not CleanFields[key] then
				str = str .. "\n\t" .. ExportKeyValue(key,value):gsub("\n", "\n\t");
				anyOtherKeys = true;
			end
		end
		
		-- Assign the groups back
		if hasG then
			data.g = hasG;
			if #hasG > 0 then
				if anyOtherKeys then
					str = str .. "\n\tg = {";
					for i,o in ipairs(hasG) do
						str = str .. "\n\t\t" .. (ExportRawDataToString(o):gsub("\n", "\n\t\t"));
					end
					str = str .. "\n\t}";
				else
					for i,o in ipairs(hasG) do
						str = str .. "\n\t" .. (ExportRawDataToString(o):gsub("\n", "\n\t"));
					end
				end
			end
		end
		return str .. "\n},";
	end
	return "nil,";
end
local function ExportDataToString(data)
	if data then
		local id, name;
		local restore = {};
		if rawget(data, "basename") then
			name = data.basename;
			restore.basename = name;
			data.basename = nil;
		else
			name = rawget(data, "name");
			if name then
				restore.name = name;
				data.name = nil;
			else
				name = rawget(data, "text")
				if name then
					restore.text = name;
					data.text = nil;
				end
			end
		end
		
		local hasKey = data.key;
		if hasKey then
			id = data[hasKey];
			restore[hasKey] = id;
			
			-- Some classes have 2 parameters and will need to rip out some data to restore later
			-- Export the shortcut used by the key
			if hasKey == "npcID" then
				hasKey = "n(" .. id;
			elseif hasKey == "itemID" then
				hasKey = "i(" .. id;
			elseif hasKey == "mapID" then
				hasKey = "m(" .. id;
			elseif hasKey == "questID" then
				hasKey = "q(" .. id;
			elseif hasKey == "objectiveID" then
				hasKey = "objective(" .. id;
			elseif hasKey == "headerID" then
				for k,i in pairs(app.HeaderConstants) do
					if i == id then
						id = k;
						break;
					end
				end
				hasKey = "n(" .. id;
			else
				-- Unhandled key, just inject it raw.
				for key,value in pairs(restore) do
					data[key] = value;
				end
				restore = {};
				hasKey = nil;
			end
			if hasKey then
				if not name then name = data.name; end
				data[data.key] = nil;
			end
		end
		
		-- Build the string for non-keyed fields
		local str = "";
		local anyKeys;
		local hasG = data.g;
		if hasG then
			restore.g = hasG;
			data.g = nil;
		end
		for key,value in pairs(data) do
			if not CleanFields[key] then
				str = str .. "\n\t" .. ExportKeyValue(key,value):gsub("\n", "\n\t");
				anyKeys = true;
			end
		end
		
		-- Assign the groups back and export relative groups
		if hasG and #hasG > 0 then
			if anyKeys then
				str = str .. "\n\tgroups = {";
				for i,o in ipairs(hasG) do
					str = str .. "\n\t\t" .. (ExportDataToString(o):gsub("\n", "\n\t\t"));
				end
				str = str .. "\n\t},";
			else
				anyKeys = true;
				for i,o in ipairs(hasG) do
					str = str .. "\n\t" .. (ExportDataToString(o):gsub("\n", "\n\t"));
				end
			end
		end
		
		-- Restore the silenced fields back to their original values.
		for key,value in pairs(restore) do
			data[key] = value;
		end
		if anyKeys then
			if hasKey then
				if name then
					return hasKey .. ", {\t-- " .. name .. str .. "\n}),";
				else
					return hasKey .. ", {" .. str .. "\n}),";
				end
			else
				if name then
					return "{\t-- " .. name .. str .. "\n},";
				else
					return "{" .. str .. "\n},";
				end
			end
		else
			if hasKey then
				if name then
					return hasKey .. "),\t-- " .. name .. str;
				else
					return hasKey .. ")," .. str;
				end
			else
				if name then
					return "{\t-- " .. name .. str .. "\n},";
				else
					return "{" .. str .. "\n},";
				end
			end
		end
	end
	return "nil,";
end
local function OnClick_ExportData(row, button)
	-- TODO: It would be neat to be able to export singular objects
	if button == "LeftButton" and IsAltKeyDown() then
		local str = ExportDataToString(row.ref);
		if str then
			app:ShowPopupDialogWithMultiLineEditBox(str, nil, "Export Results");
		else
			app.print("Nothing to export");
		end
		return true;
	end
end

-- Uncomment this section if you need to enable Debugger:
-- Retail Currently uses [/att debugger] as defined below
app:CreateWindow("Debugger", {
	HideFromSettings = true,
	Commands = { "attdebugger" },
	AddObject = function(self, info)
		MergeObject(self.data.g, CloneObject(info));
		self:AssignChildren();
		app.CallbackHandlers.AfterCombatOrDelayedCallback(self.Update, 1, self, true)
		app.CallbackHandlers.AfterCombatOrDelayedCallback(self.BackupData, 15, self)
	end,
	AddObjectWithHeader = function(self, headerID, info)
		local header = { key = "headerID", headerID = headerID, g = { info }};
		-- Bubble Up the Maps
		local mapInfo;
		local mapID = app.CurrentMapID;
		if mapID then
			local pos = C_Map_GetPlayerMapPosition(mapID, "player");
			if pos then
				local px, py = pos:GetXY();
				info.coords = { [mapID] = { { px * 100, py * 100 } } };
			end
			repeat
				mapInfo = C_Map_GetMapInfo(mapID);
				if mapInfo then
					header = { key = "mapID", ["mapID"] = mapInfo.mapID, ["g"] = { header } };
					mapID = mapInfo.parentMapID
				end
			until not mapInfo or not mapID or mapID == 0;
		end
		self:AddObject(header);
	end,
	OnLoad = function(self, settings)
		self.rawData = app.LocalizeGlobal("AllTheThingsDebugData", true);
		self.data.g = CloneClassInstance(self.rawData);
		for i=#self.data.options,1,-1 do
			tinsert(self.data.g, 1, self.data.options[i]);
		end
		self:AssignChildren();
	end,
	OnSave = function(self, settings)
		self:BackupData()
	end,
	BackupData = function(self)
		wipe(self.rawData);
		-- skip clickable rows
		for _,o in ipairs(self.data.g) do
			if not o.OnClick then
				tinsert(self.rawData, CleanObject(o));
			end
		end
		app.print("Debugger Data Saved");
	end,
	OnInit = function(self, handlers)
		self:SetData(app.CreateRawText("Session History", {
			icon = app.asset("WindowIcon_RaidAssistant"),
			description = "This keeps a visual record of all of the quests, maps, loot, and vendors that you have come into contact with since the session was started.",
			visible = true,
			expanded = true,
			back = 1,
			options = {
				app.CreateRawText("Clear History", {
					icon = 132293,
					description = "Click this to fully clear this window.\n\nNOTE: If you click this by accident, use the dynamic Restore Buttons that this generates to reapply the data that was cleared.\n\nWARNING: If you reload the UI, the data stored in the Reload Button will be lost forever!",
					visible = true,
					count = 0,
					OnClick = function(row, button)
						local copy = {};
						for i,o in ipairs(self.rawData) do
							tinsert(copy, o);
						end
						if #copy < 1 then
							app.print("There is nothing to clear.");
							return true;
						end
						row.ref.count = row.ref.count + 1;
						tinsert(self.data.options, app.CreateRawText("Restore Button " .. row.ref.count, {
							icon = app.asset("Button_Reroll"),
							description = "Click this to restore your cleared data.\n\nNOTE: Each Restore Button houses different data.\n\nWARNING: This data will be lost forever when you reload your UI!",
							visible = true,
							data = copy,
							OnClick = function(row, button)
								for i,info in ipairs(row.ref.data) do
									MergeObject(self.data.g, CloneObject(info));
									MergeObject(self.rawData, info);
								end
								self:Update(true);
								return true;
							end,
						}));
						wipe(self.rawData);
						wipe(self.data.g);
						for i=#self.data.options,1,-1 do
							tinsert(self.data.g, 1, self.data.options[i]);
						end
						self:AssignChildren();
						self:Update(true);
						return true;
					end,
				}),
				app.CreateRawText("Export Raw Data", {
					icon = 135468,
					description = "Click this to export all of the data in raw string format.",
					visible = true,
					count = 0,
					OnClick = function(row, button)
						local str;
						for i,o in ipairs(self.data.g) do
							if o.key ~= "strKey" then
								local substr = ExportRawDataToString(CloneObject(o));
								if substr then
									if str then
										str = str .. "\n" .. substr;
									else
										str = substr;
									end
								end
							end
						end
						if str then
							app:ShowPopupDialogWithMultiLineEditBox(str, nil, "Export Results");
						else
							app.print("Nothing to export");
						end
						return true;
					end,
				}),
				app.CreateRawText("Export Readable Data", {
					icon = 135468,
					description = "Click this to export all of the data in readable string format.",
					visible = true,
					count = 0,
					OnClick = function(row, button)
						local str;
						for i,o in ipairs(self.data.g) do
							if o.key ~= "strKey" then
								local substr = ExportDataToString(CloneObject(o));
								if substr then
									if str then
										str = str .. "\n" .. substr;
									else
										str = substr;
									end
								end
							end
						end
						if str then
							app:ShowPopupDialogWithMultiLineEditBox(str, nil, "Export Results");
						else
							app.print("Nothing to export");
						end
						return true;
					end,
				}),
				app.CreateRawText("Import Raw Data", {
					icon = 135468,
					description = "Click this to import raw data into the debugger. Do NOT import readable data.",
					visible = true,
					count = 0,
					OnClick = function(row, button)
						app:ShowPopupDialogWithMultiLineEditBox("", function(txt)
							if txt then
								txt = txt:gsub("groups", "g");
								local lastChar = txt:sub(-1);
								if lastChar == "," or lastChar == ";" then txt = txt:sub(1, -2); end
								local func,err = loadstring("local data = " .. txt .. ";return data,true");
								if not err and func then
									local data,success = func();
									if data and success then
										MergeObject(self.data.g, CloneObject(data));
										MergeObject(self.rawData, data);
										self:Update(true);
									else
										app.print("Something went wrong importing the raw data...");
									end
								else
									app.print(err);
								end
							end
						end, "Paste Raw Data Below");
						return true;
					end,
				}),
			},
			g = {},
		}));
		app.AddEventHandler("OnCurrentMapIDChanged", function()
			-- Bubble Up the Maps
			local mapID = app.CurrentMapID;
			if mapID then
				local mapInfo, info;
				repeat
					info = { key = "mapID", ["mapID"] = mapID, ["g"] = info and { info } or nil };
					mapInfo = C_Map_GetMapInfo(mapID);
					if mapInfo then
						mapID = mapInfo.parentMapID;
					end
				until not mapInfo or not mapID or mapID == 0;
				self:AddObject(info);
			end
		end);

		-- Capture Gossip, Merchant, & Flight Master interactions
		handlers.GOSSIP_SHOW = function(self)
			local guid = UnitGUID("npc");
			if guid then
				local type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = ("-"):split(guid);
				if npcID then
					local info;
					npcID = tonumber(npcID);
					--print("GOSSIP_SHOW", type, npcID);
					if type == "GameObject" then
						info = { key = "objectID", ["objectID"] = npcID };
					else
						info = { key = "npcID", ["npcID"] = npcID };
					end
					info.name = UnitName("npc");
					local faction = UnitFactionGroup("npc");
					if faction then
						info.r = faction == "Horde" and Enum.FlightPathFaction.Horde or Enum.FlightPathFaction.Alliance;
					end
					self:AddObjectWithHeader(app.HeaderConstants.VENDORS, info);
				end
			end
		end
		handlers.TAXIMAP_OPENED = function(...)
			local mapID = GetTaxiMapID() or -1
			if mapID < 0 then return end
			local guid = UnitGUID("npc");
			if guid then
				local ot, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = ("-"):split(guid);
				if npcID then
					local allNodeData = C_TaxiMap_GetAllTaxiNodes(mapID)
					if allNodeData then
						for i,nodeData in ipairs(allNodeData) do
							if nodeData.state == 0 then
								local info = { key = "flightpathID", ["flightpathID"] = nodeData.nodeID, ["name"] = nodeData.name, ["providers"] = {{ ot == "GameObject" and "o" or "n", tonumber(npcID) }} };
								local faction = UnitFactionGroup("npc");
								if faction then
									info.r = faction == "Horde" and Enum.FlightPathFaction.Horde or Enum.FlightPathFaction.Alliance;
								end
								self:AddObjectWithHeader(app.HeaderConstants.FLIGHT_PATHS, info);
								break;
							end
						end
					end
				end
			end
		end
		local GetMerchantItemInfoX = C_MerchantFrame.GetItemInfo;
		if not GetMerchantItemInfoX then
			GetMerchantItemInfoX = function(i)
				local name, texture, cost, quantity, numAvailable, isPurchasable, isUsable, extendedCost = GetMerchantItemInfo(i);
				return {
					price = cost,
					hasExtendedCost = extendedCost
				};
			end
		end
		local function LoadMerchant(self)
			local guid = UnitGUID("npc");
			local ty, zero, server_id, instance_id, zone_uid, npcID, spawn_uid;
			if guid then ty, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = ("-"):split(guid); end
			if npcID then
				npcID = tonumber(npcID);

				-- Ignore vendor mounts...
				if IgnoredNPCs[npcID] then
					return true;
				end

				local numItems = GetMerchantNumItems();
				--print("MERCHANT DETAILS", ty, npcID, numItems);

				local rawGroups = {};
				for i=1,numItems,1 do
					local link = GetMerchantItemLink(i);
					if link then
						local merchItemInfo = GetMerchantItemInfoX(i);
						local cost = merchItemInfo.price;
						if merchItemInfo.hasExtendedCost then
							cost = {};
							local itemCount = GetMerchantItemCostInfo(i);
							for j=1,itemCount,1 do
								local itemTexture, itemValue, itemLink = GetMerchantItemCostItem(i, j);
								if itemLink then
									-- print("  ", itemValue, itemLink, gsub(itemLink, "\124", "\124\124"));
									local m = itemLink:match("currency:(%d+)");
									if m then
										-- Parse as a CURRENCY.
										tinsert(cost, {"c", tonumber(m), itemValue});
									else
										-- Parse as an ITEM.
										tinsert(cost, {"i", tonumber(itemLink:match("item:(%d+)")), itemValue});
									end
								end
							end
						end

						-- Parse as an ITEM LINK.
						tinsert(rawGroups, { key = "itemID", ["itemID"] = tonumber(link:match("item:(%d+)")), ["cost"] = cost });
					end
				end

				local key = app.Modules.Search.GetKeyField(ty)
				local info = { [key] = npcID, key = key };
				local faction = UnitFactionGroup("npc");
				if faction then
					info.r = faction == "Horde" and Enum.FlightPathFaction.Horde or Enum.FlightPathFaction.Alliance;
				end
				info.name = UnitName("npc");
				info.g = rawGroups;
				self:AddObjectWithHeader(app.HeaderConstants.VENDORS, info);
			end
		end
		handlers.MERCHANT_SHOW = function(self)
			if SetMerchantFilter then
				SetMerchantFilter(LE_LOOT_FILTER_ALL)
				MerchantFrame_Update()
			end
			app.CallbackHandlers.DelayedCallback(LoadMerchant, 0.6, self)
		end
		handlers.MERCHANT_UPDATE = handlers.MERCHANT_SHOW;
		self:RegisterEvent("GOSSIP_SHOW");
		self:RegisterEvent("TAXIMAP_OPENED");
		self:RegisterEvent("MERCHANT_SHOW");
		self:RegisterEvent("MERCHANT_UPDATE");

		-- Capture various party loot received
		handlers.CHAT_MSG_LOOT = function(self, msg, player, a, b, c, d, e, f, g, h, i, guid, k, l)
			-- don't store loot for the player since that is captured by source
			if not guid or issecretvalue(guid) or guid == app.GUID then return end

			-- "You receive item: item:###" will break the match
			msg = msg:gsub("item: ", "");
			-- print("Loot parse",msg)
			local itemString = msg:match("item[%-?%d:]+");
			if itemString then
				-- print("Looted Item",itemString)
				if guid then
					self:AddObjectWithHeader(app.HeaderConstants.DROPS, { key = "unit", ["unit"] = guid, ["g"] = { { key = "itemID", ["itemID"] = GetItemID(itemString), ["rawlink"] = itemString } } });
				else
					self:AddObjectWithHeader(app.HeaderConstants.DROPS, { key = "itemID", ["itemID"] = GetItemID(itemString), ["rawlink"] = itemString });
				end
			end
		end
		self:RegisterEvent("CHAT_MSG_LOOT");

		-- Capture personal loot sources
		handlers.LOOT_CLOSED = function(self)
			self:RegisterEvent("LOOT_READY");
			self:UnregisterEvent("LOOT_CLOSED");
		end
		handlers.LOOT_READY = function(self, ...)
			-- Only register LOOT_READY once per opened loot
			-- Need to use LOOT_READY since addons can receive loot before the LOOT_OPENED event
			self:UnregisterEvent("LOOT_READY");
			self:RegisterEvent("LOOT_CLOSED");
			local loot, source, kind, lootID, info, dropLink
			local ot, zero, server_id, instance_id, zone_uid, id, spawn_uid;
			local slots = GetNumLootItems();
			for i=1,slots,1 do
				loot = GetLootSlotLink(i);
				if loot then
					-- app.PrintDebug("Loot @",i,":",loot)
					loot = CleanLink(loot)
					kind, lootID = (":"):split(loot);
					kind = app.Modules.Search.GetKeyField(kind)
					if lootID then lootID = tonumber(select(1, ("|["):split(lootID)) or lootID); end
					-- app.PrintDebug("Loot @",i,kind,lootID)
					if lootID and kind then
						source = { GetLootSourceInfo(i) };
						for j=1,#source,2 do
							info = { key = kind, [kind] = lootID, rawlink = loot };
							dropLink = CleanLink(source[j])
							-- app.PrintDebug("droplink",dropLink)
							ot, zero, server_id, instance_id, zone_uid, id, spawn_uid = ("-"):split(dropLink);
							-- get Item container link
							if not id then
								dropLink = CleanLink(C_Item.GetItemLinkByGUID(dropLink))
								-- app.PrintDebug("item:droplink",dropLink)
								ot, zero, server_id, instance_id, zone_uid, id, spawn_uid = ("-"):split(dropLink);
							end
							ot = app.Modules.Search.GetKeyField(ot)
							app.print("Add",kind,"Loot",lootID,"from",ot,id)
							if ot == "objectID" then
								info = { key = ot, [ot] = tonumber(id), g = { info }};
								info.basename = GameTooltipTextLeft1:GetText() or UNKNOWN
								app.print('ObjectID: '..info.objectID.. ' || ' .. 'Name: ' .. info.basename)
								self:AddObjectWithHeader(app.HeaderConstants.TREASURES, info);
							else
								info = { key = ot, [ot] = tonumber(id), g = { info }};
								local classification = UnitClassification("target") or "";
								if classification == "rare" or classification == "rareelite" then
									self:AddObjectWithHeader(app.HeaderConstants.RARES, info);
								elseif classification == "worldboss" then
									self:AddObjectWithHeader(app.HeaderConstants.WORLD_BOSSES, info);
								else
									self:AddObjectWithHeader(app.HeaderConstants.DROPS, info);
								end
							end
						end
					end
				end
			end
		end
		self:RegisterEvent("LOOT_READY");

		-- Capture quest NPC dialogs
		handlers.QUEST_DETAIL = function(self, questStartItemID)
			local questID = GetQuestID();
			if questID == 0 then return false; end
			local npc = "questnpc";
			local guid = UnitGUID(npc);
			if not guid then
				npc = "npc";
				guid = UnitGUID(npc);
			end
			local ot, zero, server_id, instance_id, zone_uid, npcID, spawn_uid;
			if guid then ot, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = ("-"):split(guid); end
			-- print("QUEST_DETAIL", questStartItemID, " => Quest #", questID, ot, npcID);

			local rawGroups = {};
			for i=1,GetNumQuestRewards(),1 do
				local link = GetQuestItemLink("reward", i);
				if link then tinsert(rawGroups, { key = "itemID", ["itemID"] = GetItemID(link) }); end
			end
			for i=1,GetNumQuestChoices(),1 do
				local link = GetQuestItemLink("choice", i);
				if link then tinsert(rawGroups, { key = "itemID", ["itemID"] = GetItemID(link) }); end
			end
			if GetNumQuestLogRewardSpells then
				for i=1,GetNumQuestLogRewardSpells(questID),1 do
					local texture, name, isTradeskillSpell, isSpellLearned, hideSpellLearnText, isBoostSpell, garrFollowerID, genericUnlock, spellID = GetQuestLogRewardSpell(i, questID);
					if spellID then
						if isTradeskillSpell then
							tinsert(rawGroups, { key = "recipeID", ["recipeID"] = spellID, ["name"] = name });
						else
							tinsert(rawGroups, { key = "spellID", ["spellID"] = spellID, ["name"] = name });
						end
					end
				end
			end
			if GetNumQuestLogRewardCurrencies then
				for i=1,GetNumQuestLogRewardCurrencies(questID),1 do
					local name, texture, numItems, currencyId, quality = GetQuestLogRewardCurrencyInfo(i, questID);
					if currencyId then
						tinsert(rawGroups, { key = "currencyID", ["currencyID"] = currencyId, ["name"] = name, ["count"] = numItems or 1 });
					end
				end
			end
			local objectives = C_QuestLog_GetQuestObjectives(questID);
			if objectives and #objectives > 0 then
				for i=1,#objectives do
					local objective = objectives[i];
					if objective then
						tinsert(rawGroups, { key = "objectiveID", ["objectiveID"] = i, ["name"] = objective.text, ["type"] = objective.type, ["numRequired"] = objective.numRequired });
					end
				end
			end

			local info = { key = "questID", ["questID"] = questID, ["description"] = GetQuestText(), ["objectives"] = GetObjectiveText(), ["g"] = rawGroups };
			local providers = {};
			if questStartItemID then
				if type(questStartItemID) == "table" then
					for key,value in pairs(questStartItemID) do
						print("  ", key, value);
					end
				elseif questStartItemID > 0 then
					tinsert(providers, { "i", questStartItemID });
				end
			end
			if npcID then
				npcID = tonumber(npcID);
				if ot == "GameObject" then
					tinsert(providers, { "o", npcID });
				else
					info.qgs = {npcID};
				end
				local faction = UnitFactionGroup(npc);
				if faction then
					info.r = faction == "Horde" and Enum.FlightPathFaction.Horde or Enum.FlightPathFaction.Alliance;
				end
			end
			if #providers > 0 then info.providers = providers; end
			self:AddObjectWithHeader(app.HeaderConstants.QUESTS, info);
		end
		handlers.QUEST_COMPLETE = handlers.QUEST_DETAIL;
		handlers.QUEST_PROGRESS = handlers.QUEST_DETAIL;
		self:RegisterEvent("QUEST_DETAIL");
		self:RegisterEvent("QUEST_COMPLETE");
		self:RegisterEvent("QUEST_PROGRESS");

		-- Capture quest loot push sources
		handlers.QUEST_LOOT_RECEIVED = function(self, questID, itemLink)
			if questID and itemLink then
				local itemID = GetItemID(itemLink)
				if itemID then
					-- app.PrintDebug("Add Quest Loot from",questID,itemLink,itemID)
					self:AddObjectWithHeader(app.HeaderConstants.QUESTS, { key = "questID", ["questID"] = questID, ["g"] = {
						{ key = "itemID", ["itemID"] = itemID, ["rawlink"] = itemLink }
					}})
				end
			end
		end
		pcall(self.RegisterEvent, self, "QUEST_LOOT_RECEIVED");

		-- Capture accepted quests which skip NPC dialog windows (addons, auto-accepted)
		handlers.QUEST_ACCEPTED = function(self, questID)
			if questID then
				local info = { key = "questID", ["questID"] = questID };
				info.name = app.GetQuestName(questID)
				self:AddObjectWithHeader(app.HeaderConstants.QUESTS, info);
			end
		end
		self:RegisterEvent("QUEST_ACCEPTED");
	end,
	OnUpdate = function(self, ...)
		-- turn off the Visibility filter for the Debugger update
		local filterVisible = app.Modules.Filter.Get.Visible();
		app.Modules.Filter.Set.Visible();
		self:DefaultUpdate(...);
		app.Modules.Filter.Set.Visible(filterVisible);
		return true;
	end,
});
