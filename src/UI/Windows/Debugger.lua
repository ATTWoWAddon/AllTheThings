-- App locals
local appName, app = ...;

-- Globals
local C_Map_GetMapInfo = C_Map.GetMapInfo

-- WoW API Cache
local GetItemID = app.WOWAPI.GetItemID;
local type,wipe,ipairs,pairs,rawget,tinsert,tremove,tonumber,tostring
	= type,wipe,ipairs,pairs,rawget,tinsert,tremove,tonumber,tostring

local AfterCombatCallback = app.CallbackHandlers.AfterCombatCallback
local DelayedCallback = app.CallbackHandlers.DelayedCallback

-- Implementation
-- Uncomment this section (and add to Classic TOCs) if you need to enable Debugger:
-- Retail Currently uses [/att debugger] as defined below
-- NOTE: It needs a lot of work!
--[[
app:CreateWindow("Debugger", {
	HideFromSettings = true,
	OnInit = function(self, handlers)
		self.AddObject = function(self, info)
			-- Bubble Up the Maps
			local mapInfo;
			local mapID = app.CurrentMapID;
			if mapID then
				local pos = C_Map_GetPlayerMapPosition(mapID, "player");
				if pos then
					local px, py = pos:GetXY();
					info.coords = {
						{ px * 100, py * 100, mapID }
					};
				end
				repeat
					mapInfo = C_Map_GetMapInfo(mapID);
					if mapInfo then
						info = { ["mapID"] = mapInfo.mapID, ["g"] = { info } };
						mapID = mapInfo.parentMapID
					end
				until not mapInfo or not mapID;
			end

			MergeClone(self.data.g, info);
			MergeObject(self.rawData, info);
			self:Update();
		end
		self.data = {
			['text'] = "Session History",
			['icon'] = app.asset("WindowIcon_RaidAssistant"),
			["description"] = "This keeps a visual record of all of the quests, maps, loot, and vendors that you have come into contact with since the session was started.",
			['visible'] = true,
			['expanded'] = true,
			['back'] = 1,
			['options'] = {
				{
					['text'] = "Clear History",
					['icon'] = 132293,
					["description"] = "Click this to fully clear this window.\n\nNOTE: If you click this by accident, use the dynamic Restore Buttons that this generates to reapply the data that was cleared.\n\nWARNING: If you reload the UI, the data stored in the Reload Button will be lost forever!",
					['visible'] = true,
					['count'] = 0,
					['OnClick'] = function(row, button)
						local copy = {};
						for i,o in ipairs(self.rawData) do
							tinsert(copy, o);
						end
						if #copy < 1 then
							app.print("There is nothing to clear.");
							return true;
						end
						row.ref.count = row.ref.count + 1;
						tinsert(self.data.options, {
							['text'] = "Restore Button " .. row.ref.count,
							['icon'] = app.asset("Button_Reroll"),
							["description"] = "Click this to restore your cleared data.\n\nNOTE: Each Restore Button houses different data.\n\nWARNING: This data will be lost forever when you reload your UI!",
							['visible'] = true,
							['data'] = copy,
							['OnClick'] = function(row, button)
								for i,info in ipairs(row.ref.data) do
									MergeClone(self.data.g, info);
									MergeObject(self.rawData, info);
								end
								self:Update();
								return true;
							end,
						});
						wipe(self.rawData);
						wipe(self.data.g);
						for i=#self.data.options,1,-1 do
							tinsert(self.data.g, 1, self.data.options[i]);
						end
						self:Update();
						return true;
					end,
				},
			},
			['g'] = {},
		};
		self.rawData = {};

		-- Setup Event Handlers and register for events
		self:SetScript("OnEvent", function(self, e, ...)
			--print(e, ...);
			if e == "ADDON_LOADED" then
				-- Only execute for this addon.
				local addonName = ...;
				if addonName ~= appName then return; end
				self:UnregisterEvent("ADDON_LOADED");
				if not AllTheThingsDebugData then
					AllTheThingsDebugData = {};
				end
				self.rawData = AllTheThingsDebugData;
				self.data.g = CloneClassInstance(self.rawData);
				for i=#self.data.options,1,-1 do
					tinsert(self.data.g, 1, self.data.options[i]);
				end
				self:Update();
			elseif e == "ZONE_CHANGED" or e == "ZONE_CHANGED_NEW_AREA" then
				-- Bubble Up the Maps
				local mapInfo, info;
				local mapID = app.CurrentMapID;
				if mapID then
					repeat
						info = { ["mapID"] = mapID, ["g"] = info and { info } or nil };
						mapInfo = C_Map_GetMapInfo(mapID);
						if mapInfo then
							mapID = mapInfo.parentMapID;
						end
					until not mapInfo or not mapID;

					MergeClone(self.data.g, info);
					MergeObject(self.rawData, info);
					self:Update();
				end
			elseif e == "MERCHANT_SHOW" or e == "MERCHANT_UPDATE" then
				C_Timer.After(0.6, function()
					local guid = UnitGUID("npc");
					local ty, zero, server_id, instance_id, zone_uid, npcID, spawn_uid;
					if guid then ty, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = ("-"):split(guid); end
					if npcID then
						npcID = tonumber(npcID);

						-- Ignore vendor mount...
						if npcID == 62822 then
							return true;
						end

						local numItems = GetMerchantNumItems();
						--print("MERCHANT DETAILS", ty, npcID, numItems);

						local rawGroups = {};
						for i=1,numItems,1 do
							local link = GetMerchantItemLink(i);
							if link then
								local name, texture, cost, quantity, numAvailable, isPurchasable, isUsable, extendedCost = GetMerchantItemInfo(i);
								if extendedCost then
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
								tinsert(rawGroups, {["itemID"] = tonumber(link:match("item:(%d+)")), ["cost"] = cost});
							end
						end

						local info = { [(ty == "GameObject") and "objectID" or "npcID"] = npcID };
						info.faction = UnitFactionGroup("npc");
						info.text = UnitName("npc");
						info.g = rawGroups;
						self:AddObject(info);
					end
				end);
			elseif e == "GOSSIP_SHOW" then
				local guid = UnitGUID("npc");
				if guid then
					local type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = ("-"):split(guid);
					if npcID then
						npcID = tonumber(npcID);
						--print("GOSSIP_SHOW", type, npcID);
						if type == "GameObject" then
							info = { ["objectID"] = npcID, ["text"] = UnitName("npc") };
						else
							info = { ["npcID"] = npcID };
							info.name = UnitName("npc");
						end
						info.faction = UnitFactionGroup("npc");
						self:AddObject(info);
					end
				end
			elseif e == "QUEST_DETAIL" then
				local questStartItemID = ...;
				local questID = GetQuestID();
				if questID == 0 then return false; end
				local npc = "questnpc";
				local guid = UnitGUID(npc);
				if not guid then
					npc = "npc";
					guid = UnitGUID(npc);
				end
				local type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid;
				if guid then type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = ("-"):split(guid); end
				-- print("QUEST_DETAIL", questStartItemID, " => Quest #", questID, type, npcID);

				local rawGroups = {};
				for i=1,GetNumQuestRewards(),1 do
					local link = GetQuestItemLink("reward", i);
					if link then tinsert(rawGroups, { ["itemID"] = GetItemID(link) }); end
				end
				for i=1,GetNumQuestChoices(),1 do
					local link = GetQuestItemLink("choice", i);
					if link then tinsert(rawGroups, { ["itemID"] = GetItemID(link) }); end
				end
				for i=1,GetNumQuestLogRewardSpells(questID),1 do
					local texture, name, isTradeskillSpell, isSpellLearned, hideSpellLearnText, isBoostSpell, garrFollowerID, genericUnlock, spellID = GetQuestLogRewardSpell(i, questID);
					if spellID then
						if isTradeskillSpell then
							tinsert(rawGroups, { ["recipeID"] = spellID, ["name"] = name });
						else
							tinsert(rawGroups, { ["spellID"] = spellID, ["name"] = name });
						end
					end
				end

				local info = { ["questID"] = questID, ["description"] = GetQuestText(), ["objectives"] = GetObjectiveText(), ["g"] = rawGroups };
				if questStartItemID and questStartItemID > 0 then info.itemID = questStartItemID; end
				if npcID then
					npcID = tonumber(npcID);
					if type == "GameObject" then
						info = { ["objectID"] = npcID, ["text"] = UnitName(npc), ["g"] = { info } };
					else
						info.qgs = {npcID};
						info.name = UnitName(npc);
					end
					info.faction = UnitFactionGroup(npc);
				end
				self:AddObject(info);
			elseif e == "CHAT_MSG_LOOT" then
				local msg, player, a, b, c, d, e, f, g, h, i, j, k, l = ...;
				local itemString = msg:match("item[%-?%d:]+");
				if itemString then
					self:AddObject({ ["itemID"] = GetItemID(itemString) });
				end
			end
		end);
		self:RegisterEvent("ADDON_LOADED");
		self:RegisterEvent("GOSSIP_SHOW");
		self:RegisterEvent("QUEST_DETAIL");
		self:RegisterEvent("TRADE_SKILL_LIST_UPDATE");
		self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
		self:RegisterEvent("ZONE_CHANGED");
		self:RegisterEvent("MERCHANT_SHOW");
		self:RegisterEvent("MERCHANT_UPDATE");
		self:RegisterEvent("CHAT_MSG_LOOT");
		--self:RegisterAllEvents();
	end,
	OnUpdate = function(self, ...)
		-- Update the window and all of its row data
		if self.data.OnUpdate then self.data.OnUpdate(self.data); end
		for i,g in ipairs(self.data.g) do
			if g.OnUpdate then g.OnUpdate(g); end
		end
		self.data.index = 0;
		self.data.back = 1;
		self.data.indent = 0;
		self:AssignChildren();
		self:DefaultUpdate(true);
	end
});
]]--

-- TODO: eventually consolidate with above Classic-esque window implementation
-- Retail ATT Debugger Logic
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
	garrbuilding = "garrisonbuildingID",
	garrfollower = "followerID",
	i = "modItemID",
	item = "modItemID",
	itemid = "modItemID",
	mount = "spellID",
	mountid = "spellID",
	n = "creatureID",
	npc = "creatureID",
	npcid = "creatureID",
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
app.LoadDebugger = function()
	local debuggerWindow = app:GetWindow("Debugger", UIParent, function(self, force)
		if not self.initialized then
			self.initialized = true;
			force = true;
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
				_OnUpdate = 1,
				_SettingsRefresh = 1,
				_coord = 1,
				__merge = 1,
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
			local function InitDebuggerData()
				if not self.rawData then
					self.rawData = app.LocalizeGlobal("AllTheThingsDebugData", true);
					if self.rawData[1] then
						-- need to clean and create again to get different tables used as the actual 'objects' within the rows, otherwise the object data gets saved into the Global as well
						app.NestObjects(self.data, app.__CreateObject(CleanObject(self.rawData)));
					end
					if not self.data.g then self.data.g = {}; end
					for i=#self.data.options,1,-1 do
						tinsert(self.data.g, 1, self.data.options[i]);
					end
					app.AssignChildren(self.data);
					AfterCombatCallback(self.Update, self, true);
				end
			end
			-- batch operation to clear the rawData, and re-populate with a cleaned version of the current debugger content
			self.BackupData = function(self)
				wipe(self.rawData);
				-- skip clickable rows
				for _,o in ipairs(self.data.g) do
					if not o.OnClick then
						tinsert(self.rawData, CleanObject(o));
					end
				end
				app.print("Debugger Data Saved");
			end
			local IgnoredNPCs = {
				[142668] = 1,	-- Merchant Maku (Brutosaur)
				[142666] = 1,	-- Collector Unta (Brutosaur)
				[62821] = 1,	-- Mystic Birdhat (Grand Yak)
				[62822] = 1,	-- Cousin Slowhands (Grand Yak)
				[32642] = 1,	-- Mojodishu (Mammoth)
				[32641] = 1,	-- Drix Blackwrench (Mammoth)
			};
			self:SetData({
				['text'] = "Session History",
				['icon'] = app.asset("WindowIcon_RaidAssistant"),
				["description"] = "This keeps a visual record of all of the quests, maps, loot, and vendors that you have come into contact with since the session was started.",
				["OnUpdate"] = app.AlwaysShowUpdate,
				['back'] = 1,
				['options'] = {
					{
						["hash"] = "clearHistory",
						['text'] = "Clear History",
						['icon'] = 132293,
						["description"] = "Click this to fully clear this window.\n\nNOTE: If you click this by accident, use the dynamic Restore Buttons that this generates to reapply the data that was cleared.\n\nWARNING: If you reload the UI, the data stored in the Reload Button will be lost forever!",
						["OnUpdate"] = app.AlwaysShowUpdate,
						['count'] = 0,
						['OnClick'] = function(row, button)
							local copy = {};
							for i,o in ipairs(self.data.g) do
								-- only backup non-button groups
								if not o.OnClick then
									tinsert(copy, o);
								end
							end
							if #copy < 1 then
								app.print("There is nothing to clear.");
								return true;
							end
							row.ref.count = row.ref.count + 1;
							tinsert(self.data.options, {
								["hash"] = "restore" .. row.ref.count,
								['text'] = "Restore Button " .. row.ref.count,
								['icon'] = app.asset("Button_Reroll"),
								["description"] = "Click this to restore your cleared data.\n\nNOTE: Each Restore Button houses different data.\n\nWARNING: This data will be lost forever when you reload your UI!",
								["OnUpdate"] = app.AlwaysShowUpdate,
								['data'] = copy,
								['OnClick'] = function(row, button)
									for i,info in ipairs(row.ref.data) do
										app.NestObject(self.data, app.__CreateObject(info));
									end
									app.AssignChildren(self.data);
									AfterCombatCallback(self.Update, self, true);
									return true;
								end,
							});
							wipe(self.rawData);
							wipe(self.data.g);
							for i=#self.data.options,1,-1 do
								tinsert(self.data.g, 1, self.data.options[i]);
							end
							app.AssignChildren(self.data);
							AfterCombatCallback(self.Update, self, true);
							return true;
						end,
					},
				},
				['g'] = {},
			});

			local function CategorizeObject(info)
				if info.isVendor then
					return app.CreateNPC(app.HeaderConstants.VENDORS, { g = { info }})
				elseif info.questID then
					if info.isWorldQuest then
						return app.CreateNPC(app.HeaderConstants.WORLD_QUESTS, { g = { info }})
					else
						return app.CreateNPC(app.HeaderConstants.QUESTS, { g = { info }})
					end
				elseif info.npcID then
					return app.CreateNPC(app.HeaderConstants.ZONE_DROPS, { g = { info }})
				elseif info.objectID then
					return app.CreateNPC(app.HeaderConstants.TREASURES, { g = { info }})
				elseif info.unit then
					return app.CreateNPC(app.HeaderConstants.DROPS, { g = { info }})
				end
				return info
			end

			local AddObject = function(info)
				-- print("Debugger.AddObject")
				-- app.PrintTable(info)
				-- print("---")
				-- Bubble Up the Maps
				local mapInfo;
				local mapID = app.CurrentMapID;
				if mapID then
					if info then
						local pos = C_Map.GetPlayerMapPosition(mapID, "player");
						if pos then
							local px, py = pos:GetXY();
							info.coord = { math.ceil(px * 10000) / 100, math.ceil(py * 10000) / 100, mapID };
						end
						info = CategorizeObject(info)
					end
					repeat
						mapInfo = C_Map_GetMapInfo(mapID);
						if mapInfo then
							if not info then
								info = { ["mapID"] = mapInfo.mapID };
								-- print("Added mapID",mapInfo.mapID)
							else
								info = { ["mapID"] = mapInfo.mapID, ["g"] = { info } };
								-- print("Pushed into mapID",mapInfo.mapID)
							end
							mapID = mapInfo.parentMapID
						end
					until not mapInfo or not mapID;
				end

				if info then
					-- TODO: assign children on the created object, assign parent directly, nest to data, DGU the group
					app.NestObject(self.data, app.__CreateObject(info));
					self:BuildData();
					AfterCombatCallback(self.Update, self, true);
					-- trigger the delayed backup
					DelayedCallback(self.BackupData, 15, self);
				end
			end

			-- Merchant Additions
			local AddMerchant = function(guid)
				-- print("AddMerchant",guid)
				local guid = guid or UnitGUID("npc");
				if guid then
					local ty, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = ("-"):split(guid);
					if npc_id then
						npc_id = tonumber(npc_id);

						if IgnoredNPCs[npc_id] then return true; end

						local numItems = GetMerchantNumItems();
						app.PrintDebug("MERCHANT DETAILS", ty, npc_id, numItems);

						local rawGroups = {};
						for i=1,numItems,1 do
							local link = GetMerchantItemLink(i);
							if link then
								local merchItemIno = C_MerchantFrame.GetItemInfo(i);
								-- Parse as an ITEM LINK.
								local item = { ["itemID"] = tonumber(link:match("item:(%d+)")), ["rawlink"] = link, ["cost"] = merchItemIno.price };
								if merchItemIno.hasExtendedCost then
									local cost = {};
									local itemCount = GetMerchantItemCostInfo(i);
									for j=1,itemCount,1 do
										local _, itemValue, itemLink = GetMerchantItemCostItem(i, j);
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
									if cost[1] then
										item.cost = cost;
									end
								end

								tinsert(rawGroups, item);
							end
						end

						local info = { [(ty == "GameObject") and "objectID" or "npcID"] = npc_id };
						local faction = UnitFactionGroup("npc");
						if faction then
							info.r = faction == "Horde" and Enum.FlightPathFaction.Horde or Enum.FlightPathFaction.Alliance;
						end
						info.isVendor = 1;
						info.g = rawGroups;
						AddObject(info);
					end
				end
			end

			-- Setup Event Handlers and register for events
			self:SetScript("OnEvent", function(self, e, ...)
				-- app.PrintDebug(e, ...);
				if e == "ZONE_CHANGED_NEW_AREA" or e == "NEW_WMO_CHUNK" then
					AddObject();
				elseif e == "MERCHANT_SHOW" or e == "MERCHANT_UPDATE" then
					SetMerchantFilter(LE_LOOT_FILTER_ALL)
					MerchantFrame_Update()
					DelayedCallback(AddMerchant, 0.5, UnitGUID("npc"));
				elseif e == "TRADE_SKILL_LIST_UPDATE" then
					local tradeSkillID = app.GetTradeSkillLine();
					local currentCategoryID, categories = -1, {};
					local categoryData, categoryList, rawGroups = {}, {}, {};
					local categoryIDs = { C_TradeSkillUI_GetCategories() };
					for i = 1,#categoryIDs do
						currentCategoryID = categoryIDs[i];
						C_TradeSkillUI.GetCategoryInfo(currentCategoryID, categoryData);
						if categoryData.name then
							if not categories[currentCategoryID] then
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

					local recipeIDs = C_TradeSkillUI.GetAllRecipeIDs();
					for i = 1,#recipeIDs do
						local spellRecipeInfo = C_TradeSkillUI.GetRecipeInfo(recipeIDs[i]);
						if spellRecipeInfo then
							currentCategoryID = spellRecipeInfo.categoryID;
							if not categories[currentCategoryID] then
								C_TradeSkillUI.GetCategoryInfo(currentCategoryID, categoryData);
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
							local recipe = {
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
					local info = {
						["professionID"] = tradeSkillID,
						["icon"] = GetTradeSkillTexture(tradeSkillID),
						["name"] = C_TradeSkillUI.GetTradeSkillDisplayName(tradeSkillID),
						["g"] = rawGroups
					};
					app.NestObject(self.data, app.__CreateObject(info));
					app.AssignChildren(self.data);
					AfterCombatCallback(self.Update, self, true);
					-- trigger the delayed backup
					DelayedCallback(self.BackupData, 15, self);
				-- Capture quest NPC dialogs
				elseif e == "QUEST_DETAIL" or e == "QUEST_PROGRESS" or e == "QUEST_COMPLETE" then
					local questStartItemID = ...;
					local questID = GetQuestID();
					if questID == 0 then return false; end
					local npc = "questnpc";
					local guid = UnitGUID(npc);
					if not guid then
						npc = "npc";
						guid = UnitGUID(npc);
					end
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid;
					if guid then type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = ("-"):split(guid); end
					app.PrintDebug(e, questStartItemID, " => Quest #", questID, type, npc_id, app.NPCNameFromID[npc_id]);

					local rawGroups = {};
					for i=1,GetNumQuestRewards(),1 do
						local link = GetQuestItemLink("reward", i);
						if link then tinsert(rawGroups, { ["itemID"] = GetItemID(link) }); end
					end
					for i=1,GetNumQuestChoices(),1 do
						local link = GetQuestItemLink("choice", i);
						if link then tinsert(rawGroups, { ["itemID"] = GetItemID(link) }); end
					end
					-- GetNumQuestLogRewardSpells removed in 10.1
					-- for i=1,GetNumQuestLogRewardSpells(questID),1 do
					-- 	local texture, name, isTradeskillSpell, isSpellLearned, hideSpellLearnText, isBoostSpell, garrFollowerID, genericUnlock, spellID = GetQuestLogRewardSpell(i, questID);
					-- 	if garrFollowerID then
					-- 		tinsert(rawGroups, { ["followerID"] = garrFollowerID, ["name"] = name });
					-- 	elseif spellID then
					-- 		if isTradeskillSpell then
					-- 			tinsert(rawGroups, { ["recipeID"] = spellID, ["name"] = name });
					-- 		else
					-- 			tinsert(rawGroups, { ["spellID"] = spellID, ["name"] = name });
					-- 		end
					-- 	end
					-- end

					local info = { ["questID"] = questID };
					if #rawGroups > 0 then
						info.g = rawGroups
					end
					info.name = app.GetQuestName(questID)
					if e == "QUEST_DETAIL" then
						local providers = {}
						if questStartItemID and questStartItemID > 0 then tinsert(providers, { "i", questStartItemID }); end
						if npc_id then
							npc_id = tonumber(npc_id);
							if type == "GameObject" then
								tinsert(providers, { "o", npc_id })
							else
								info.qg = npc_id
								info.qg_name = app.NPCNameFromID[npc_id]
							end
							local faction = UnitFactionGroup(npc);
							if faction then
								info.r = faction == "Horde" and Enum.FlightPathFaction.Horde or Enum.FlightPathFaction.Alliance;
							end
						end
						if #providers > 0 then
							info.providers = providers
						end
					end
					AddObject(info);
				-- Capture accepted quests which skip NPC dialog windows (addons, auto-accepted)
				elseif e == "QUEST_ACCEPTED" then
					local questID = ...
					if questID then
						local info = { ["questID"] = questID };
						info.name = app.GetQuestName(questID)
						AddObject(info);
					end
				-- Capture various personal/party loot received
				elseif e == "CHAT_MSG_LOOT" then
					local msg, player, a, b, c, d, e, f, g, h, i, j, k, l = ...;
					-- "You receive item: item:###" will break the match
					-- this probably doesn't work in other locales
					msg = msg:gsub("item: ", "");
					-- print("Loot parse",msg)
					local itemString = msg:match("item[%-?%d:]+");
					if itemString then
						-- print("Looted Item",itemString)
						local itemID = GetItemID(itemString);
						AddObject({ ["unit"] = j, ["g"] = { { ["itemID"] = itemID, ["rawlink"] = itemString } } });
					end
				-- Capture personal loot sources
				elseif e == "LOOT_READY" then
					-- Only register LOOT_READY once per opened loot
					self:UnregisterEvent("LOOT_READY");
					self:RegisterEvent("LOOT_CLOSED");
					local slots = GetNumLootItems();
					-- print("Loot Slots:",slots);
					local loot, source, info
					local type, zero, server_id, instance_id, zone_uid, id, spawn_uid;
					local mapID = app.CurrentMapID;
					if mapID then
						local pos = C_Map.GetPlayerMapPosition(mapID, "player");
						if pos then
							local px, py = pos:GetXY();
							px = math.ceil(px * 10000) / 100
							py = math.ceil(py * 10000) / 100
							app.PrintDebug("Loot @ coord", px, py, mapID)
						end
					end
					for i=1,slots,1 do
						loot = GetLootSlotLink(i);
						if loot then
							-- app.PrintDebug("Loot @",i,":",loot)
							-- TODO: duplicated logic from SearchForLink
							local kind, lootID = (":"):split(loot);
							kind = kind:lower();
							if kind:sub(1,2) == "|c" then
								kind = kind:sub(11);
							end
							if kind:sub(1,2) == "|h" then
								kind = kind:sub(3);
							end
							kind = KeyMaps[kind:lower()]
							if lootID then lootID = tonumber(select(1, ("|["):split(lootID)) or lootID); end
							-- app.PrintDebug("Loot @",i,kind,lootID)
							if lootID and kind then
								source = { GetLootSourceInfo(i) };
								for j=1,#source,2 do
									type, zero, server_id, instance_id, zone_uid, id, spawn_uid = ("-"):split(source[j]);
									-- TODO: test this with Item containers
									app.print("Add",kind,"Loot",loot,"from",type,id)
									if not id then
										app.PrintDebug("Unknown Loot Source:",source[j])
									end
									info = {
										[type == "GameObject" and "objectID" or "npcID"] = tonumber(id),
										g = { { [kind] = lootID, ["rawlink"] = loot } }
									};
									AddObject(info);
								end
							end
						end
					end
				elseif e == "LOOT_CLOSED" then
					self:RegisterEvent("LOOT_READY");
					self:UnregisterEvent("LOOT_CLOSED");
				elseif e == "QUEST_LOOT_RECEIVED" then
					local questID, itemLink = ...
					local itemID = GetItemID(itemLink)
					local info = { ["questID"] = questID, ["g"] = { { ["itemID"] = itemID, ["rawlink"] = itemLink } } }
					app.PrintDebug("Add Quest Loot from",questID,itemLink,itemID)
					AddObject(info)
				elseif e == "LOOT_OPENED" then
					local guid = GetLootSourceInfo(1)
					if guid then
						local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = ("-"):split(guid);
						if(type == "GameObject") then
							local text = GameTooltipTextLeft1:GetText()
							app.print('ObjectID: '..(npc_id or 'UNKNOWN').. ' || ' .. 'Name: ' .. (text or 'UNKNOWN'))
						end
					end
				end
			end);
			self:RegisterEvent("QUEST_ACCEPTED");
			self:RegisterEvent("QUEST_DETAIL");
			self:RegisterEvent("QUEST_PROGRESS");
			self:RegisterEvent("QUEST_LOOT_RECEIVED");
			self:RegisterEvent("QUEST_COMPLETE");
			self:RegisterEvent("TRADE_SKILL_LIST_UPDATE");
			self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
			self:RegisterEvent("NEW_WMO_CHUNK");
			self:RegisterEvent("MERCHANT_SHOW");
			self:RegisterEvent("MERCHANT_UPDATE");
			self:RegisterEvent("LOOT_OPENED");
			self:RegisterEvent("LOOT_READY");
			self:RegisterEvent("CHAT_MSG_LOOT");
			--self:RegisterAllEvents();

			InitDebuggerData();
			-- Ensure the current Zone is added when the Window is initialized
			AddObject();
			app.AssignChildren(self.data);
		end

		-- Update the window and all of its row data
		self:BaseUpdate(force);
	end);
	app.TopLevelUpdateGroup(debuggerWindow.data);
	debuggerWindow:Show();
	app.LoadDebugger = function()
		debuggerWindow:Toggle();
	end
end