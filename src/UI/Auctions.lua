-- App locals
local appName, app = ...;
local CloneReference = app.CloneReference;

-- Global locals
local _GetAuctionItemInfo, _GetAuctionItemLink = GetAuctionItemInfo, GetAuctionItemLink;

-- Module locals
local auctionData = {};

-- Implementation
app:GetWindow("Auctions", {
	parent = UIParent,
	Silent = true,
	IgnoreSettings = true,
	IgnoreQuestUpdates = true,
	OnInit = function(self, handlers)
		SLASH_ATTAUCTIONS1 = "/attauctions";
		SlashCmdList["ATTAUCTIONS"] = function(cmd)
			self:Toggle();
		end
		
		function ProcessAuctions()
			-- Gather the Auctions
			local numItems = GetNumAuctionItems("list");
			if numItems > 0 then
				local iter, index = 0, 1;
				repeat
					-- Process the Auction
					local link = _GetAuctionItemLink("list", index);
					if link then
						local _,itemID = strsplit(":", string.match(link, "item[%-?%d:]+"));
						auctionData[tonumber(itemID)] = 1;
						--print("ProcessAuctions", index, link, itemID);
					else
						local name, texture, count, quality, canUse, level, levelColHeader, minBid,
							minIncrement, buyoutPrice, bidAmount, highBidder, bidderFullName, owner,
							ownerFullName, saleStatus, itemID, hasAllInfo = _GetAuctionItemInfo("list", index);
						if itemID and itemID > 0 and saleStatus == 0 then
							--print("ProcessAuctions", index, itemID);
							auctionData[itemID] = 1;
						end
					end
					
					-- Increment the index and check the iteration variable.
					iter = iter + 1;
					if iter >= 10000 then
						coroutine.yield();
						iter = 0;
					end
					index = index + 1;
				until index > numItems;
				
				if numItems > 10000 then
					app.print("Scan complete.");
				end
				
				-- Write back the valid auction data to saved variables.
				ATTClassicAuctionData = auctionData;
				wipe(self.data.g);
				self:Update(true);
			end
		end
		handlers.AUCTION_ITEM_LIST_UPDATE = function()
			self:StartATTCoroutine("ProcessAuctions", ProcessAuctions);
		end
		handlers.ADDON_LOADED = function(self, addonName)
			if addonName == "Blizzard_AuctionUI" or addonName == "Blizzard_AuctionHouseUI" then
				self:UnregisterEvent("ADDON_LOADED");
				if app.Settings:GetTooltipSetting("Auto:AuctionList") then
					self:Show();
				end
			end
		end
		self:RegisterEvent("ADDON_LOADED");
		self.UpdatePosition = function(self)
			self:ClearAllPoints();
			if AuctionFrame and not AuctionFrame.__ATTSETUP then
				local origHide, origShow = AuctionFrame.Hide, AuctionFrame.Show;
				AuctionFrame.__ATTSETUP = true;
				AuctionFrame.Hide = function(...)
					origHide(...);
					self:UpdatePosition();
				end
				AuctionFrame.Show = function(...)
					origShow(...);
					self:UpdatePosition();
				end
			end
			if SideDressUpFrame and not SideDressUpFrame.__ATTSETUP then
				local origHide, origShow = SideDressUpFrame.Hide, SideDressUpFrame.Show;
				SideDressUpFrame.__ATTSETUP = true;
				SideDressUpFrame.Hide = function(...)
					origHide(...);
					self:UpdatePosition();
				end
				SideDressUpFrame.Show = function(...)
					origShow(...);
					self:UpdatePosition();
				end
			end
			if AuctionFrame and AuctionFrame:IsShown() then
				self:SetPoint("TOP", AuctionFrame, "TOP", 0, -12);
				self:SetPoint("BOTTOM", AuctionFrame, "BOTTOM", 0, 10);
				if SideDressUpFrame and SideDressUpFrame:IsShown() then
					self:SetPoint("LEFT", SideDressUpFrame, "RIGHT", 0, 0);
				else
					self:SetPoint("LEFT", AuctionFrame, "RIGHT", 0, 0);
				end
				if app.Settings:GetTooltipSetting("Auto:AuctionList") then
					self:Show();
				end
			else
				self:Hide();
			end
		end
	end,
	OnRebuild = function(self, ...)
		if not self.data then
			-- If we have left over auction data from previous, then use it.
			if ATTClassicAuctionData and not ATTClassicAuctionData[1] then auctionData = ATTClassicAuctionData; end
			self.data = {
				text = "Auction Module",
				icon = "INTERFACE\\ICONS\\INV_Misc_Coin_01", 
				description = "This is a debug window for all of the auction data that was returned. Turn on 'Account Mode' to show items usable on any character on your account!",
				visible = true, 
				expanded = true,
				back = 1,
				indent = 0,
				g = { },
				metas = {
					["mountID"] = app.CreateFilter(100, {	-- Mounts
						["description"] = "All mounts that you have not collected yet are displayed here.",
						["priority"] = 3,
					}),
					["recipeID"] = app.CreateFilter(200, {	-- Recipes
						["description"] = "All recipes that you have not collected yet are displayed here.",
						["priority"] = 6,
					}),
					["reagentID"] = {	-- Reagents
						["text"] = "Reagents",
						["icon"] = "Interface/ICONS/INV_Enchant_DustIllusion",
						["description"] = "All items that can be used to craft an item using a profession on your account.",
						["priority"] = 5,
					},
					["itemID"] = {	-- Items
						["text"] = "Items",
						["icon"] = "Interface/ICONS/INV_Box_02",
						["description"] = "All items that could potentially be upgrades are listed here.",
						["priority"] = 7,
					},
					["speciesID"] = app.CreateFilter(101, {	-- Battle Pets
						["description"] = "All battle pets that you have not collected yet are displayed here.",
						["priority"] = 6,
					}),
				},
				options = {
					setmetatable({
						clickText = "Click to run a Full Scan",
						clickDescription = "Click this button to perform a full scan of the auction house. This information will appear within this window and clear out the existing data.",
						scanningText = "Full Scan on Cooldown";
						scanningDescription = "Please wait while we wait for the server to respond.";
						icon = "INTERFACE/ICONS/Ability_Ambush",
						OnClick = function(row, button)
							return row.ref:StartScan(row);
						end,
						StartScan = function(ref, row)
							if ref.scanning then
								app.print("Scan already in progress. Please wait!");
								return;
							end
							if AucAdvanced and AucAdvanced.API then AucAdvanced.API.CompatibilityMode(1, ""); end
						
							-- QueryAuctionItems(name, minLevel, maxLevel, page, isUsable, qualityIndex, getAll, exactMatch, filterData);
							if select(2, CanSendAuctionQuery()) then
								-- Disable the button and register for the event.
								QueryAuctionItems("", nil, nil, 0, nil, nil, true, false, nil);
								app.print("Full Scan Initiated... Please Wait!");
								wipe(self.data.g);
								wipe(auctionData);
								self:Update(true);
								
								-- Update the Scan Button State
								row:StartATTCoroutine("UpdateScanButton", function()
									repeat
										if select(2, CanSendAuctionQuery()) then
											if ref.scanning then
												ref.scanning = nil;
												self:Refresh();
											end
											return true;
										else
											if not ref.scanning then
												ref.scanning = true;
												self:Refresh();
											end
											for i=0,60,1 do coroutine.yield(); end
										end
									until not ref.scanning;
								end);
							else
								app.print("Full Scan is still on Cooldown. Try again later.");
							end
						end,
						OnUpdate = function(data)
							data.visible = true;
							return true;
						end,
					}, { __index = function(t, key)
						if key == "info" then
							if select(2, CanSendAuctionQuery()) then
								return {
									text = t.clickText,
									description = t.clickDescription,
									trackable = nil,
									saved = nil,
								};
							else
								return {
									text = t.scanningText,
									description = t.scanningDescription,
									trackable = true,
									saved = false,
								};
							end
						end
						return t.info[key];
					end}),
					{
						text = "Clear Auction Data",
						description = "Click this button to clear all of the cached auction data.",
						icon = "INTERFACE/ICONS/Ability_Ambush",
						OnClick = function(row, button)
							wipe(self.data.g);
							wipe(auctionData);
							self:Update(true);
							return true;
						end,
						OnUpdate = function(data)
							-- Determine if anything is cached in the Auction Data.
							local any = false;
							for itemID,unused in pairs(auctionData) do
								any = true;
								break;
							end
							data.visible = any;
							return true;
						end,
					},
					{
						text = "Toggle Debug Mode",
						icon = "INTERFACE/ICONS/INV_Scarab_Crystal",
						description = "Click this button to toggle debug mode to show everything regardless of filters!",
						OnClick = function() 
							app.Settings:ToggleDebugMode();
						end,
						OnUpdate = function(data)
							data.visible = true;
							if app.Settings:Get("DebugMode") then
								-- Novaplane made me do it
								data.trackable = true;
								data.saved = true;
							else
								data.trackable = nil;
								data.saved = nil;
							end
							return true;
						end,
					},
					{
						text = "Toggle Account Mode",
						icon = "INTERFACE/ICONS/INV_Misc_Book_01",
						description = "Turn this setting on if you want to track all of the Things for all of your characters regardless of class and race filters.\n\nUnobtainable filters still apply.",
						OnClick = function() 
							app.Settings:ToggleAccountMode();
						end,
						OnUpdate = function(data)
							if app.Settings:Get("DebugMode") then
								data.visible = false;
							else
								data.visible = true;
								if app.Settings:Get("AccountMode") then
									data.trackable = true;
									data.saved = true;
								else
									data.trackable = nil;
									data.saved = nil;
								end
							end
							return true;
						end,
					},
					{
						text = "Toggle Faction Mode",
						icon = "INTERFACE/ICONS/INV_Scarab_Crystal",
						description = "Click this button to toggle faction mode to show everything for your faction!",
						OnClick = function() 
							app.Settings:ToggleFactionMode();
						end,
						OnUpdate = function(data)
							if app.Settings:Get("DebugMode") or not app.Settings:Get("AccountMode") then
								data.visible = false;
							else
								data.visible = true;
								if app.Settings:Get("FactionMode") then
									data.trackable = true;
									data.saved = true;
								else
									data.trackable = nil;
									data.saved = nil;
								end
							end
							return true;
						end,
					},
				},
				OnUpdate = function(data)
					local g = data.g;
					if #g < 1 then
						for i,option in ipairs(data.options) do
							table.insert(g, option);
						end
						
						-- Determine if anything is cached in the Auction Data.
						local any = false;
						for itemID,unused in pairs(auctionData) do
							any = true;
							break;
						end
						if any then
							-- Search the ATT Database for information related to the auction links (items, species, etc)
							local searchResultsByKey, searchResult, searchResults, key, keys, value, data = {};
							for itemID,unused in pairs(auctionData) do
								searchResults = app.SearchForField("itemID", itemID);
								if searchResults and #searchResults > 0 then
									searchResult = searchResults[1];
									key = searchResult.key;
									if key == "npcID" then
										if searchResult.itemID then
											key = "itemID";
										end
									end
									value = searchResult[key];
									keys = searchResultsByKey[key];
									
									-- Make sure that the key type is represented.
									if not keys then
										keys = {};
										searchResultsByKey[key] = keys;
									end
									
									-- First time this key value was used.
									data = keys[value];
									if not data then
										data = CloneReference(searchResult);
										if data.key == "npcID" then setmetatable(data, app.BaseItem); end
										data.indent = 1;
										keys[value] = data;
									end
								end
							end
							
							-- Apply a sub-filter to items with spellID-based identifiers.
							if searchResultsByKey.spellID then
								local filteredItems = {};
								for key,entry in pairs(searchResultsByKey.spellID) do
									if entry.f then
										local filterData = filteredItems[entry.f];
										if not filterData then
											filterData = {};
											filteredItems[entry.f] = filterData;
										end
										filterData[key] = entry;
									else
										print("Spell " .. entry.spellID .. " (Item ID #" .. (entry.itemID or RETRIEVING_DATA) .. " is missing a filterID?");
									end
								end
								
								if filteredItems[100] then searchResultsByKey.mountID = filteredItems[100]; end	-- Mounts
								if filteredItems[200] then searchResultsByKey.recipeID = filteredItems[200]; end	-- Recipes
								searchResultsByKey.spellID = nil;
							end
							
							-- Process the Non-Collectible Items for Reagents
							local reagentCache = app.GetDataMember("Reagents");
							if reagentCache and searchResultsByKey.itemID then
								local cachedItems = searchResultsByKey.itemID;
								searchResultsByKey.itemID = {};
								searchResultsByKey.reagentID = {};
								for itemID,entry in pairs(cachedItems) do
									if reagentCache[itemID] then
										searchResultsByKey.reagentID[itemID] = entry;
										if not entry.g then entry.g = {}; end
										for itemID2,count in pairs(reagentCache[itemID][2]) do
											local searchResults = app.SearchForField("itemID", itemID2);
											if searchResults and #searchResults > 0 then
												local craftedItem = CloneReference(searchResults[1]);
												craftedItem.indent = 2;
												table.insert(entry.g, craftedItem);
											end
										end
									else
										-- Push it back into the itemID table
										searchResultsByKey.itemID[itemID] = entry;
									end
								end
							end
							
							-- Display Test for Raw Data + Filtering
							for key, searchResults in pairs(searchResultsByKey) do
								local subdata = self.data.metas[key];
								if not subdata then
									subdata = {
										text = key,
										description = "Container for '" .. key .. "' object types.",
									};
									self.data.metas[key] = subdata;
								end
								subdata.g = {};
								for i,j in pairs(searchResults) do
									table.insert(subdata.g, j);
								end
								table.insert(g, subdata);
							end
						else
							table.insert(g, { text = "No auctions cached. Waiting on Auction data." });
						end
					end
				end,
			};
			pcall(self.RegisterEvent, self, "AUCTION_ITEM_LIST_UPDATE");
		end
		self:UpdatePosition();
	end
});