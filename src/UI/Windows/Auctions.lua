-- App locals
local _, app = ...;
local CloneReference = app.CloneReference;
local GetItemInfo = app.WOWAPI.GetItemInfo;

-- Global locals
local debugprofilestop, next, pcall, select, tinsert, tonumber, type
	= debugprofilestop, next, pcall, select, tinsert, tonumber, type;

-- Module locals
local auctionData, priceA, priceB, oldLegacyFilter = {};
local function SortByPrice(a,b)
	priceA = a.price or 0;
	priceB = b.price or 0;
	if priceA == priceB then
		return a.itemID < b.itemID;
	else
		return priceA < priceB;
	end
end
local function SummaryForAuctionItem(t)
	return t.cost and GetCoinTextureString(t.cost);
end

-- API Differences
local CanFullScan, ReceiveAuctions, RunFullScan, OnClickForAuctionItem;
if C_AuctionHouse then
	local C_AuctionHouse_ReplicateItems, C_AuctionHouse_GetNumReplicateItems, C_AuctionHouse_GetReplicateItemInfo
		= C_AuctionHouse.ReplicateItems, C_AuctionHouse.GetNumReplicateItems, C_AuctionHouse.GetReplicateItemInfo

	-- Only allow a scan once every 15 minutes.
	local cooldown = 0;
	CanFullScan = function()
		return cooldown - time() < 0;
	end
	--[[
	-- CRIEVE NOTE: Currently Classic has no need for the data, we could store it I guess, but we don't use it.
	function ProcessAuctions(auctions)
		for i,auction in ipairs(auctions) do
			-- https://warcraft.wiki.gg/wiki/API_C_AuctionHouse.GetReplicateItemInfo
			local itemID = auction[17];
			auctionData[itemID] =
				itemLink = C_AuctionHouse_GetReplicateItemLink(0),
				count = auction[3],
				price = auction[10]
			};
		end
	end
	ReceiveAuctions = function(callback)
		-- Gather the Auctions
		local numItems = C_AuctionHouse_GetNumReplicateItems();
		if numItems > 0 then
			local auctions = {};
			local continuables = {};
			for i=0,numItems-1 do
				auctions[i] = {C_AuctionHouse_GetReplicateItemInfo(i)};
				if not auctions[i][18] then
					local item = Item:CreateFromItemID(auctions[i][17]);
					continuables[item] = true;
					item:ContinueOnItemLoad(function()
						auctions[i] = {C_AuctionHouse_GetReplicateItemInfo(i)};
						continuables[item] = nil;
						if not next(continuables) then
							ProcessAuctions(auctions);
							callback(#auctions);
						end
					end);
				end
			end
		end
	end
	]]--
	ReceiveAuctions = function(callback)
		-- Gather the Auctions
		local numItems = C_AuctionHouse_GetNumReplicateItems();
		if numItems > 0 then
			local auction;
			for i=0,numItems-1 do
				auction = {C_AuctionHouse_GetReplicateItemInfo(i)};
				auctionData[auction[17]] = auction[10] or auction[11] or auction[8] or 0;	-- buyoutPrice or bidAmount or minBid
			end
			callback(numItems);
		end
	end
	RunFullScan = function(self)
		-- Register for the event and send the query.
		pcall(self.RegisterEvent, self, "REPLICATE_ITEM_LIST_UPDATE");
		C_AuctionHouse_ReplicateItems();
		cooldown = time() + 900;
	end
	OnClickForAuctionItem = function(self, button)
		local reference = self.ref;

		-- Attempt to search manually with the link.
		local link = reference.link or reference.silentLink;
		if link then
			AuctionHouseFrame.SearchBar.SearchBox:SetText(GetItemInfo(link))
			AuctionHouseFrame.SearchBar:StartSearch();
		end
	end
else
	local CanSendAuctionQuery, GetNumAuctionItems, GetAuctionItemInfo
		= CanSendAuctionQuery, GetNumAuctionItems, GetAuctionItemInfo;
	CanFullScan = function()
		return select(2, CanSendAuctionQuery());
	end
	ReceiveAuctions = function(callback)
		local numItems = GetNumAuctionItems("list");
		if numItems > 0 then
			local index = 1;
			local auction;
			repeat
				-- Process the Auction
				auction = {GetAuctionItemInfo("list", index)};
				if auction[16] == 0 then	-- saleStatus
					local itemID = auction[17];	-- itemId
					if itemID and itemID > 0 then
						auctionData[itemID] = auction[10] or auction[11] or auction[8] or 0;	-- buyoutPrice or bidAmount or minBid
					end
				end
				index = index + 1;
			until index > numItems;
			callback(numItems);
		end
	end
	RunFullScan = function(self)
		-- Register for the event and send the query.
		pcall(self.RegisterEvent, self, "AUCTION_ITEM_LIST_UPDATE");
		QueryAuctionItems("", nil, nil, 0, nil, nil, true, false, nil);
		-- QueryAuctionItems(name, minLevel, maxLevel, page, isUsable, qualityIndex, getAll, exactMatch, filterData);
	end
	OnClickForAuctionItem = function(self, button)
		-- Do nothing, yet. Ideally we would attempt to buy the cheapest auction and update the price on the item.
	end
end

-- Implementation
app:CreateWindow("Auctions", {
	Commands = { "attauctions" },
	TooltipAnchor = "ANCHOR_RIGHT",
	IgnoreQuestUpdates = true,
	OnLoad = function(self, settings)
		self:UpdatePosition();
	end,
	OnSave = function(self, settings)

	end,
	OnInit = function(self, handlers)
		function ProcessAuctions()
			pcall(self.UnregisterEvent, self, "AUCTION_ITEM_LIST_UPDATE");
			pcall(self.UnregisterEvent, self, "REPLICATE_ITEM_LIST_UPDATE");
			local beginTime = debugprofilestop();
			ReceiveAuctions(function(count)
				app.print(format("Scanned %d auctions in %d milliseconds", count, debugprofilestop()-beginTime));

				-- Write back the valid auction data to saved variables.
				AllTheThingsAuctionData = auctionData;
				wipe(self.data.g);
				self:Update(true);
			end);
		end
		handlers.AUCTION_ITEM_LIST_UPDATE = ProcessAuctions;
		handlers.REPLICATE_ITEM_LIST_UPDATE = ProcessAuctions;
		handlers.ADDON_LOADED = function(self, addonName)
			if addonName == "Blizzard_AuctionUI" or addonName == "Blizzard_AuctionHouseUI" then
				self:SetParent(AuctionHouseFrame or AuctionFrame);
				self:UnregisterEvent("ADDON_LOADED");
				if app.Settings:GetTooltipSetting("Auto:AuctionList") then
					self:Show();
				end
			end
		end
		self:RegisterEvent("ADDON_LOADED");
		self.UpdatePosition = function(self)
			local auctionFrame = AuctionHouseFrame or AuctionFrame;
			if auctionFrame and not auctionFrame.__ATTSETUP then
				local origHide, origShow = auctionFrame.Hide, auctionFrame.Show;
				auctionFrame.__ATTSETUP = true;
				auctionFrame.Hide = function(...)
					origHide(...);
					self:UpdatePosition();
				end
				auctionFrame.Show = function(...)
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
			if auctionFrame and auctionFrame:IsShown() then
				local width = self:GetWidth();
				self:ClearAllPoints();
				self:SetPoint("TOP", auctionFrame, "TOP", 0, -12);
				self:SetPoint("BOTTOM", auctionFrame, "BOTTOM", 0, 10);
				if SideDressUpFrame and SideDressUpFrame:IsShown() then
					self:SetPoint("LEFT", SideDressUpFrame, "RIGHT", 0, 0);
				else
					self:SetPoint("LEFT", auctionFrame, "RIGHT", 0, 0);
				end
				self:SetWidth(width);
				if app.Settings:GetTooltipSetting("Auto:AuctionList") then
					self:Show();
				end
			else
				self:Hide();
			end

		end
		self:SetMovable(false);
	end,
	OnRebuild = function(self, ...)
		if not self.data then
			-- If we have left over auction data from previous, then use it.
			if AllTheThingsAuctionData and not AllTheThingsAuctionData[1] then
				auctionData = AllTheThingsAuctionData;
			end
			self.data = {
				text = "Auction Module",
				icon = 133784,
				description = "This is a debug window for all of the auction data that was returned. Turn on 'Account Mode' to show items usable on any character on your account!",
				SortType = "Global",
				visible = true,
				expanded = true,
				back = 1,
				indent = 0,
				g = { },
				metas = { },
				options = {
					setmetatable({
						clickText = "Click to run a Full Scan",
						clickDescription = "Click this button to perform a full scan of the auction house. This information will appear within this window and clear out the existing data.",
						scanningText = "Full Scan on Cooldown",
						scanningDescription = "Please wait while we wait for the server to respond.",
						SortPriority = 1,
						icon = 132089,
						OnClick = function(row, button)
							return row.ref:StartScan(row);
						end,
						StartScan = function(ref, row)
							if ref.scanning then
								app.print("Scan already in progress. Please wait!");
								return;
							end
							if AucAdvanced and AucAdvanced.API then AucAdvanced.API.CompatibilityMode(1, ""); end

							if CanFullScan() then
								-- Clear out the old scan data.
								app.print("Full Scan Initiated... Please Wait!");
								wipe(self.data.g);
								wipe(auctionData);
								self:Update(true);

								-- Register for the event and send the query.
								RunFullScan(self);

								-- Update the Scan Button State
								row:StartATTCoroutine("UpdateScanButton", function()
									repeat
										if CanFullScan() then
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
							if CanFullScan() then
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
						SortPriority = 1.1,
						icon = 132089,
						OnClick = function(row, button)
							wipe(self.data.g);
							wipe(auctionData);
							self:Update(true);
							return true;
						end,
						OnUpdate = function(data)
							-- Determine if anything is cached in the Auction Data.
							local any = false;
							for itemID,price in pairs(auctionData) do
								any = true;
								break;
							end
							data.visible = any;
							return true;
						end,
					},
					{
						text = "Toggle Debug Mode",
						icon = 134932,
						description = "Click this button to toggle debug mode to show everything regardless of filters!",
						SortPriority = 1.2,
						OnClick = function()
							app.Settings:ToggleDebugMode();
						end,
						OnUpdate = function(data)
							data.visible = true;
							if app.MODE_DEBUG then
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
						icon = 133733,
						description = "Turn this setting on if you want to track all of the Things for all of your characters regardless of class and race filters.\n\nUnobtainable filters still apply.",
						SortPriority = 1.3,
						OnClick = function()
							app.Settings:ToggleAccountMode();
						end,
						OnUpdate = function(data)
							if app.MODE_DEBUG then
								data.visible = false;
							else
								data.visible = true;
								if app.MODE_ACCOUNT then
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
						icon = 134932,
						description = "Click this button to toggle faction mode to show everything for your faction!",
						SortPriority = 1.4,
						OnClick = function()
							app.Settings:ToggleFactionMode();
						end,
						OnUpdate = function(data)
							if app.MODE_DEBUG or not app.MODE_ACCOUNT then
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
					{	-- Appearances
						text = "Appearances",
						Meta = "sourceID",
						icon = 135349,
						description = "All items that could be learned for transmog are listed here.",
						SortPriority = 2,
					},
					app.CreateFilter(101, {	-- Battle Pets
						Meta = "speciesID",
						description = "All battle pets that you have not collected yet are displayed here.",
						SortPriority = 3,
					}),
					app.CreateFilter(100, {	-- Mounts
						Meta = "mountID",
						description = "All mounts that you have not collected yet are displayed here.",
						SortPriority = 4,
					}),
					{	-- Materials
						text = "Materials",
						Meta = "reagentID",
						icon = 132856,
						description = "All items that can be used to craft an item using a profession on your account.",
						SortPriority = 5,
					},
					{	-- Miscellaneous
						text = "Miscellaneous",
						Meta = "itemID",
						icon = 132595,
						description = "All items that could be used for some non-transmog related purpose such as for an achievement are displayed here.",
						SortPriority = 6,
					},
					app.CreateFilter(200, {	-- Recipes
						Meta = "recipeID",
						description = "All recipes that you have not collected yet are displayed here.",
						SortPriority = 7,
					}),
					{	-- Toys
						text = "Toys",
						Meta = "toyID",
						icon = 133015,
						description = "All items that are classified as Toys either by ATT for the future or by the game presently.",
						SortPriority = 8,
					},
					{	-- Legacy
						text = "Legacy",
						Meta = "legacyID",
						icon = 135331,
						description = "All items that were removed from game that you could probably still collect for a... nominal fee.\n\nAlso if you have found something here, feel free to post about it on the ATT Discord's #classic-general channel! I'm sure some folks might want to find these.",
						SortPriority = 10,
						OnUpdate = function(data)
							oldLegacyFilter = AllTheThingsSettings.Unobtainable[2];
							AllTheThingsSettings.Unobtainable[2] = true;
						end,
					},
					{	-- Legacy Cleaner
						text = "Legacy Cleaner",
						icon = 135331,
						SortPriority = 10.1,
						OnUpdate = function(data)
							AllTheThingsSettings.Unobtainable[2] = oldLegacyFilter;
						end,
					}
				},
				OnUpdate = function(data)
					local g = data.g;
					if #g < 1 then
						for i,option in ipairs(data.options) do
							tinsert(g, option);
							if option.Meta then
								data.metas[option.Meta] = option;
							end
						end

						-- Determine if anything is cached in the Auction Data.
						local any = false;
						for itemID,price in pairs(auctionData) do
							any = true;
							break;
						end
						if any then
							-- Search the ATT Database for information related to the auction links (items, species, etc)
							local searchResultsByKey, searchResult, searchResults, key, keys, value, data = {}, nil, nil, nil, nil, nil, nil;
							for itemID,price in pairs(auctionData) do
								searchResults = app.SearchForField("itemID", itemID);
								if searchResults and #searchResults > 0 then
									app.Sort(searchResults, app.SortDefaults.Accessibility);
									searchResult = searchResults[1];
									key = searchResult.key;
									if key == "npcID" then
										if searchResult.itemID then
											key = "itemID";
										end
									end
									if key == "itemID" and searchResult.sourceID then
										key = "sourceID";
									end
									value = searchResult[key];
									if searchResult.u and (searchResult.u == 1 or searchResult.u == 2) then
										key = "legacyID";
										value = value .. "_" .. searchResult.u;
									end
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
										if data.key == "npcID" then app.CreateItem(itemID, data); end
										data.indent = 1;
										if price and price > 0 then
											data.price = price;
											data.cost = price;
											local oldindex = getmetatable(data).__index;
											setmetatable(data, {
												__index = function(t,key)
													if key == "summary" then
														return SummaryForAuctionItem(t);
													elseif key == "OnClick" then
														return OnClickForAuctionItem;
													elseif type(oldindex) == "table" then
														return oldindex[key];
													else
														oldindex(t, key);
													end
												end
											});
										else
										end
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
							local reagentCache = AllTheThingsAD.Reagents;
							if not reagentCache then
								reagentCache = {};
								AllTheThingsAD.Reagents = reagentCache;
							end
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
												tinsert(entry.g, craftedItem);
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
										Meta = key,
										description = "Container for '" .. key .. "' object types.",
									};
									self.data.metas[key] = subdata;
									tinsert(g, subdata);
								end
								subdata.g = {};
								for i,j in pairs(searchResults) do
									tinsert(subdata.g, j);
								end
								table.sort(subdata.g, SortByPrice);
							end
						else
							tinsert(g, { text = "No auctions cached. Waiting on Auction data." });
						end
					end
				end,
			};
		end
		self:UpdatePosition();
	end
});
