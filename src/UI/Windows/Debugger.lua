-- App locals
local appName, app = ...;
local type,wipe,ipairs,pairs,select,tinsert,tremove,tonumber
	= type,wipe,ipairs,pairs,select,tinsert,tremove,tonumber

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
local C_TradeSkillUI_GetCategories
	= C_TradeSkillUI.GetCategories;
local GetItemID = app.WOWAPI.GetItemID;

local CloneArray, CloneClassInstance, GetRelativeValue, MergeObject
	= app.CloneArray, app.CloneClassInstance, app.GetRelativeValue, app.MergeObject;
local AfterCombatCallback = app.CallbackHandlers.AfterCombatCallback
local DelayedCallback = app.CallbackHandlers.DelayedCallback
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
local KeyMaps = setmetatable({
	a = "achievementID",
	achievement = "achievementID",
	azessence = "azeriteessenceID",
	battlepet = "speciesID",
	c = "currencyID",
	creature = "npcID",
	currency = "currencyID",
	enchant = "spellID",
	fp = "flightpathID",
	follower = "followerID",
	gameobject = "objectID",
	garrbuilding = "garrisonbuildingID",
	garrfollower = "followerID",
	i = "itemID",
	item = "itemID",
	itemid = "itemID",
	mount = "spellID",
	mountid = "spellID",
	n = "npcID",
	npc = "npcID",
	npcid = "npcID",
	o = "objectID",
	object = "objectID",
	r = "spellID",
	recipe = "spellID",
	rfp = "runeforgepowerID",
	s = "sourceID",
	source = "sourceID",
	species = "speciesID",
	spell = "spellID",
	talent = "spellID",
	q = "questID",
	quest = "questID",
}, { __index = function(t,key) return key:gsub("id", "ID") end})

-- Uncomment this section if you need to enable Debugger:
-- Retail Currently uses [/att debugger] as defined below
app:CreateWindow("Debugger", {
	HideFromSettings = true,
	Commands = { "attdebugger" },
	AddObject = function(self, info)
		MergeObject(self.data.g, CloneObject(info));
		MergeObject(self.rawData, info);
		self:ApplyForcedVisibility(self.data);
		self:AssignChildren();
		self:Update(true);
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
				info.coords = { { px * 100, py * 100, mapID } };
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
	ApplyForcedVisibility = function(self, group)
		if group then
			group.OnUpdate = app.AlwaysShowUpdate;
			local g = group.g;
			if g then
				for i=1,#g do
					self:ApplyForcedVisibility(g[i]);
				end
			end
		end
		return group;
	end,
	CleanGroups = function(self, g)
		if g then
			for i=1,#g do
				self:CleanObject(g[i]);
			end
		end
	end,
	CleanObject = function(self, group)
		if group then
			group.__merge = nil;
			group.hash = nil;
			self:CleanGroups(group.g);
		end
	end,
	OnLoad = function(self, settings)
		if not AllTheThingsDebugData then
			AllTheThingsDebugData = {};
		end
		self.rawData = AllTheThingsDebugData;
		self:CleanGroups(self.rawData);
		self.data.g = CloneClassInstance(self.rawData);
		for i=#self.data.options,1,-1 do
			tinsert(self.data.g, 1, self.data.options[i]);
		end
		self:ApplyForcedVisibility(self.data);
		self:AssignChildren();
	end,
	OnSave = function(self, settings)
		self:CleanGroups(self.rawData);
		AllTheThingsDebugData = self.rawData;
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
						info = { key = "objectID", ["objectID"] = npcID, ["name"] = UnitName("npc") };
					else
						info = { key = "npcID", ["npcID"] = npcID };
						info.name = UnitName("npc");
					end
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
			if not guid or guid == app.GUID then return end

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
							app.print("Add",kind,"Loot",loot,"from",ot,id)
							if ot == "objectID" then
								info = { key = ot, [ot] = tonumber(id), g = { info }};
								info.basename = GameTooltipTextLeft1:GetText() or UNKNOWN
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
		
		-- Capture Tradeskill sources
		if C_TradeSkillUI_GetCategories then
			-- This version of the tradeskill UI is only compatible with Retail.
			-- CRIEVE NOTE: Someday maybe care about this for non-Retail?
			local C_TradeSkillUI_GetCategoryInfo, C_TradeSkillUI_GetAllRecipeIDs, C_TradeSkillUI_GetRecipeInfo
				= C_TradeSkillUI.GetCategoryInfo, C_TradeSkillUI.GetAllRecipeIDs, C_TradeSkillUI.GetRecipeInfo;
			handlers.TRADE_SKILL_SHOW = function(self)
				local tradeSkillID = GetTradeSkillLine();
				print("TRADE_SKILL_SHOW", tradeSkillID);
				local currentCategoryID, categories = -1, {};
				local categoryData, categoryList, rawGroups = {}, {}, {};
				local categoryIDs = { C_TradeSkillUI_GetCategories() };
				for i = 1,#categoryIDs do
					currentCategoryID = categoryIDs[i];
					C_TradeSkillUI_GetCategoryInfo(currentCategoryID, categoryData);
					if categoryData.name then
						if not categories[currentCategoryID] then
							local category = {
								key = "categoryID",
								["parentCategoryID"] = categoryData.parentCategoryID,
								["categoryID"] = currentCategoryID,
								["name"] = categoryData.name,
								["g"] = {}
							};
							categories[currentCategoryID] = category;
							tinsert(categoryList, category);
						end
					end
				end

				local recipeIDs = C_TradeSkillUI_GetAllRecipeIDs();
				for i = 1,#recipeIDs do
					local spellRecipeInfo = C_TradeSkillUI_GetRecipeInfo(recipeIDs[i]);
					if spellRecipeInfo then
						currentCategoryID = spellRecipeInfo.categoryID;
						if currentCategoryID then
							if not categories[currentCategoryID] then
								C_TradeSkillUI_GetCategoryInfo(currentCategoryID, categoryData);
								if categoryData.name then
									local category = {
										["parentCategoryID"] = categoryData.parentCategoryID,
										["categoryID"] = currentCategoryID,
										["name"] = categoryData.name,
										["g"] = {}
									};
									categories[currentCategoryID] = category;
									tinsert(categoryList, category);
								end
							end
						end
						local recipe = {
							key = "recipeID",
							["recipeID"] = spellRecipeInfo.recipeID,
							["requireSkill"] = tradeSkillID,
							["name"] = spellRecipeInfo.name,
						};
						if spellRecipeInfo.previousRecipeID then
							recipe.previousRecipeID = spellRecipeInfo.previousRecipeID;
						end
						if spellRecipeInfo.nextRecipeID then
							recipe.nextRecipeID = spellRecipeInfo.nextRecipeID;
						end
						tinsert(categories[currentCategoryID].g, recipe);
					end
				end

				-- Make each category parent have children. (not as gross as that sounds)
				for i=#categoryList,1,-1 do
					local category = categoryList[i];
					if category.parentCategoryID then
						local parentCategory = categories[category.parentCategoryID];
						category.parentCategoryID = nil;
						if parentCategory then
							tinsert(parentCategory.g, 1, category);
							tremove(categoryList, i);
						end
					end
				end

				-- Now merge the categories into the raw groups table.
				for i,category in ipairs(categoryList) do
					tinsert(rawGroups, category);
				end
				self:AddObject({
					key = "professionID",
					["professionID"] = tradeSkillID,
					["icon"] = GetTradeSkillTexture(tradeSkillID),
					["name"] = C_TradeSkillUI.GetTradeSkillDisplayName(tradeSkillID),
					["g"] = rawGroups
				});
			end
			handlers.TRADE_SKILL_LIST_UPDATE = handlers.TRADE_SKILL_SHOW;
			self:RegisterEvent("TRADE_SKILL_LIST_UPDATE");
			self:RegisterEvent("TRADE_SKILL_SHOW");
		end
	end,
});
