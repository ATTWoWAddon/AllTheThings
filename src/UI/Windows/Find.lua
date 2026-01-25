-- App locals
local _, app = ...;
local SearchForField = app.SearchForField;
local UpdateGroups = app.UpdateGroups;
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
local ipairs, rawset, tostring, tinsert = ipairs, rawset, tostring, tinsert;

-- WoW API Cache
local GetItemInfo = app.WOWAPI.GetItemInfo;
local GetItemID = app.WOWAPI.GetItemID;
local GetItemSpell = GetItemSpell;
local C_Item_GetItemInventoryTypeByID = C_Item and C_Item.GetItemInventoryTypeByID;

-- Implementation
app:CreateWindow("ItemFinder", {
	HideFromSettings = true,
	Commands = { "attfinditems" },
	OnRebuild = function(self, ...)
		if not self.data then
			local ItemHarvester = CreateFrame("GameTooltip", "ATTCItemHarvester", UIParent, "GameTooltipTemplate");
			ItemHarvester.AllTheThingsIgnored = true;
			ItemHarvester.Lines = setmetatable({}, {
				__index = function(t, key)
					local line = _G["ATTCItemHarvesterTextLeft" .. key];
					if line then
						rawset(t, key, line);
						return line;
					end
				end
			});
			local CreateItemHarvester = app.ExtendClass("Item", "ItemHarvester", "itemID", {
				IsClassIsolated = true,
				collectible = app.ReturnTrue,
				collected = app.ReturnFalse,
				text = function(t)
					local itemID = t.itemID;
					if GetItemID(itemID) then
						local link = t.link;
						if link then
							local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, _, _, _,
							itemEquipLoc, _, _, classID, subclassID, bindType = GetItemInfo(link);
							if itemName then
								local spellName, spellID;
								if classID == "Recipe" or classID == "Mount" then
									spellName, spellID = GetItemSpell(itemID);
									if spellName == "Learning" then spellID = nil; end	-- RIP.
								end
								local info = {
									["name"] = itemName,
									["itemID"] = itemID,
									["class"] = classID,
									["subclass"] = subclassID,
								};
								if spellID and spellID > 0 then
									info.spellID = spellID;
								end
								if itemEquipLoc and itemEquipLoc ~= "" then
									info.equippable = true;
								end
								if itemMinLevel and itemMinLevel > 1 then
									info.lvl = itemMinLevel;
								end
								if bindType and bindType == 1 then
									info.b = bindType;
								end
								if itemQuality and itemQuality >= 1 then
									info.q = itemQuality;
									if itemQuality > 6 then
										-- heirlooms return as 1 but are technically BoE for our concern
										info.b = 2;
									end
								end
								if itemLevel and itemLevel >= 2 then
									info.iLvl = itemLevel;
								end
								local inventoryType = C_Item_GetItemInventoryTypeByID(itemID);
								if inventoryType and inventoryType > 0 then
									info.inventoryType = inventoryType;
								end
								t.info = info;
								t.retries = nil;
								self.HarvestedItemDatabase[itemID] = info;

								if itemLink then
									ItemHarvester:ClearLines();
									ItemHarvester:SetOwner(UIParent,"ANCHOR_NONE")
									ItemHarvester:SetHyperlink(itemLink);
									local lineCount = ItemHarvester:NumLines();
									local str = ATTCItemHarvesterTextLeft1:GetText();
									local shouldBreak = classID ~= 7 and not (classID == 4 and subclassID == 0);
									if not IsRetrieving(str) and lineCount > 0 then
										for index=2,lineCount,1 do
											local line = ItemHarvester.Lines[index];
											if line then
												local text = line:GetText();
												if text then
													if shouldBreak and text:len() < 2 or text:sub(1, 1) == '\n' then
														break;
													end
													if text:find("Classes: ") then
														local classes = {};
														local _,list = (":"):split(text);
														for i,className in ipairs({(","):split(list)}) do
															tinsert(classes, app.ClassInfoByClassName[className:trim()].classID);
														end
														if #classes > 0 then
															info.classes = classes;
														end
													elseif text:find("Races: ") then
														local races,racesByText = {},{};
														local _,list = (":"):split(text);
														for i,raceName in ipairs({(","):split(list)}) do
															racesByText[raceName:trim()] = 1;
														end
														for raceName,_ in pairs(racesByText) do
															local race = app.RaceDB[raceName];
															if type(race) == 'number' then
																tinsert(races, race);
															else
																for _,raceID in pairs(race) do
																	tinsert(races, raceID);
																end
															end
														end
														if #races > 0 then
															info.races = races;
														end
													elseif text:find("Requires") and not text:find("Level") and not text:find("Riding") then
														local c = text:sub(1, 1);
														if c ~= " " and c ~= "\t" and c ~= "\n" and c ~= "\r" then
															text = text:trim():sub(9);
															if text:find("-") then
																info.minReputation = app.CreateFactionStandingFromText(text);
															else
																if text:find("%(") then
																	if info.requireSkill then
																		-- If non-specialization skill is already assigned, skip this part.
																		text = nil;
																	else
																		text = ("("):split(text);
																	end
																end
																if text then
																	local spellName = text:trim();
																	if spellName == "Herbalism" then spellName = "Herb Gathering"; end
																	local spellID = app.SpellNameToSpellID[spellName];
																	if spellID then
																		local skillID = app.SkillDB.SpellToSkill[spellID];
																		if skillID then
																			info.requireSkill = skillID;
																		end
																	end
																end
															end
														end
													end
												elseif shouldBreak then
													break;
												end
											end
										end
										rawset(t, "text", itemName);
										rawset(t, "collected", true);
									end
									ItemHarvester:Hide();
									return itemName;
								end
							end
						end
						t.retries = (t.retries or 0) + 1;
						if t.retries > 3 then
							rawset(t, "collected", true);
							self.HarvestedItemDatabase[itemID] = {};
						end
						return link;
					else
						rawset(t, "collected", true);
					end
					return tostring(itemID);
				end,
			});
			local ClearButton =
			{
				text = "Clear Harvested Item Database",
				icon = 133733,
				description = "Click this to clear the harvested item database.",
				SortPriority = 1.3,
				OnClick = function()
					self.HarvestedItemDatabase = {};
				end,
				OnUpdate = function(data)
					data.visible = true;
					return true;
				end,
			};
			local StartButton =
			{
				text = "Start Search",
				icon = 133733,
				description = "Click this to start the search.",
				SortPriority = 1.3,
				OnClick = function()
					local data = self.data;
					app.StartCoroutine("Harvest Items", function()
						local count, step = 0, data.step;
						local maxItemID = data.maxItemID;
						local minItemID = data.minItemID;
						for itemID=maxItemID,minItemID,-1 do
							if not self.HarvestedItemDatabase[itemID] and GetItemID(itemID) then
								tinsert(data.g, CreateItemHarvester(itemID, {
									parent = data
								}));

								count = count + 1;
								if count > step then
									count = 0;
									self:Update();
									while data.progress < data.total do
										for j=0,5,1 do
											coroutine.yield();
										end
										self:Update();
									end
									wipe(data.g);
								end
							end
						end
						self:Update();
						while data.progress < data.total do
							for j=0,5,1 do
								coroutine.yield();
							end
							self:Update();
						end
					end);
				end,
				OnUpdate = function(data)
					data.visible = true;
					return true;
				end,
			};
			self:SetData(app.CreateRawText("Item Finder", {
				icon = app.asset("WindowIcon_RaidAssistant"),
				description = "This is a contribution debug tool. NOT intended to be used by the majority of the player base.\n\nUsing this tool will lag your WoW every 5 seconds. Not sure why - likely a bad Blizzard Database thing.",
				visible = true,
				expanded = true,
				progress = 0,
				total = 0,
				back = 1,
				maxItemID = 256000,
				minItemID = 1,
				step = 1000,
				g = { ClearButton, StartButton }
			}));
		end
	end,
	OnUpdate = function(self, ...)
		local data = self.data;
		data.progress = 0;
		data.total = 0;
		UpdateGroups(data, data.g);
		self:DefaultUpdate(...);
		if data.OnUpdate then data.OnUpdate(data); end
	end,
	--[[
	OnRefresh = function(self, ...)
		self:DelayedCall("Update", 5);
		return true;

	end,
	]]--
	OnLoad = function(self, settings)
		self.HarvestedItemDatabase = AllTheThingsAD.HarvestedItemDatabase or {};
		for itemID,data in pairs(self.HarvestedItemDatabase) do
			if data.races then
				local clear = false;
				for i,race in ipairs(data.races) do
					if type(race) ~= 'number' then
						clear = true;
						break;
					end
				end
				if clear then
					self.HarvestedItemDatabase[itemID] = nil;
				end
			end
		end
	end,
	OnSave = function(self, settings)
		if self.HarvestedItemDatabase then
			AllTheThingsAD.HarvestedItemDatabase = self.HarvestedItemDatabase;
		end
	end,
});
app:CreateWindow("QuestFinder", {
	HideFromSettings = true,
	Commands = { "attfindquests" },
	OnRebuild = function(self, ...)
		if not self.data then
			local CreateQuestHarvester = app.ExtendClass("Quest", "QuestHarvester", "questID", {
				IsClassIsolated = true,
				collectible = app.ReturnFalse,
				collected = app.ReturnTrue,
			},
			"AsPending", {
				collectible = app.ReturnTrue,
				collected = app.ReturnFalse,
				text = function(t)
					local link = t.name;
					if link and link ~= "" and link ~= " " and not IsRetrieving(link) then
						return link;
					end

					t.retries = (t.retries or 0) + 1;
					if t.retries > 30 then
						rawset(t, "collected", true);
					end
					return RETRIEVING_DATA;
				end,
			},
			function(t)
				return #SearchForField("questID", t.questID) == 0;
			end);
			self:SetData(app.CreateRawText("Quest Finder", {
				icon = app.asset("WindowIcon_RaidAssistant"),
				description = "This is a contribution debug tool. NOT intended to be used by the majority of the player base.\n\nUsing this tool will lag your WoW every 5 seconds. Not sure why - likely a bad Blizzard Database thing.",
				visible = true,
				expanded = true,
				progress = 0,
				total = 0,
				back = 1,
				currentID = 88749,
				minimumID = 78295,
				g = { },
				OnUpdate = function(header)
					local g = header.g;
					if g then
						local count = #g;
						if count > 0 then
							for i=count,1,-1 do
								if g[i].collected then
									tremove(g, i);
								end
							end
						end
						for count=#g,5000 do
							local i = header.currentID - 1;
							if i > header.minimumID then
								header.currentID = i;
								tinsert(g, CreateQuestHarvester(i, {
									parent = header
								}));
							end
						end
					end
				end
			}));
		end
	end,
	OnUpdate = function(self, ...)
		self.data.progress = 0;
		self.data.total = 0;
		UpdateGroups(self.data, self.data.g);
		self:DefaultUpdate(...);
		if self.data.OnUpdate then self.data.OnUpdate(self.data); end
	end,
	OnRefresh = function(self, ...)
		self:DelayedCall("Update", 5);
		return true;
	end,
});
app:CreateWindow("SpellFinder", {
	HideFromSettings = true,
	Commands = { "attfindspells" },
	OnRebuild = function(self, ...)
		if not self.data then
			local CreateSpellHarvester = app.ExtendClass("Spell", "SpellHarvester", "spellID", {
				IsClassIsolated = true,
				collectible = app.ReturnFalse,
				collected = app.ReturnTrue,
			},
			"AsPending", {
				collectible = app.ReturnTrue,
				collected = app.ReturnFalse,
				text = function(t)
					local link = t.name;
					if link and link ~= "" and link ~= " " then
						return link;
					end

					t.retries = (t.retries or 0) + 1;
					if t.retries > 30 then
						rawset(t, "collected", true);
					end
					return RETRIEVING_DATA;
				end,
			},
			function(t)
				return #SearchForField("spellID", t.spellID) == 0;
			end);
			self:SetData(app.CreateRawText("Spell Finder", {
				icon = app.asset("WindowIcon_RaidAssistant"),
				description = "This is a contribution debug tool. NOT intended to be used by the majority of the player base.\n\nUsing this tool will lag your WoW every 5 seconds. Not sure why - likely a bad Blizzard Database thing.",
				visible = true,
				expanded = true,
				progress = 0,
				total = 0,
				back = 1,
				currentID = 450000,
				minimumID = 0,
				g = { },
				OnUpdate = function(header)
					local g = header.g;
					if g then
						local count = #g;
						if count > 0 then
							for i=count,1,-1 do
								if g[i].collected then
									tremove(g, i);
								end
							end
						end
						for count=#g,5000 do
							local i = header.currentID - 1;
							if i > header.minimumID then
								header.currentID = i;
								tinsert(g, CreateSpellHarvester(i, {
									parent = header
								}));
							end
						end
					end
				end
			}));
		end
	end,
	OnUpdate = function(self, ...)
		self.data.progress = 0;
		self.data.total = 0;
		UpdateGroups(self.data, self.data.g);
		self:DefaultUpdate(...);
		if self.data.OnUpdate then self.data.OnUpdate(self.data); end
	end,
	OnRefresh = function(self, ...)
		self:DelayedCall("Update", 5);
		return true;
	end,
});
