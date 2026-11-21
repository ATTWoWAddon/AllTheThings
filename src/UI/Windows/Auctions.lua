-- App locals
local _, app = ...;
local L = app.L;
local GetItemInfo = app.WOWAPI.GetItemInfo;
local GetCoinTextureString = app.WOWAPI.GetCoinTextureString;

-- Global locals
local debugprofilestop, next, pcall, select, tinsert, tonumber, type,math_min
	= debugprofilestop, next, pcall, select, tinsert, tonumber, type,math.min

-- Module locals
local auctionData, priceA, priceB, oldLegacyFilter = {};
local GoldCap = 99999999999;
local function SortByPrice(a,b)
	priceA = a.price or 0;
	priceB = b.price or 0;
	if priceA == priceB then
		return a.itemID < b.itemID;
	else
		return priceA < priceB;
	end
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
		-- TODO: this is completely wrong for commodity items
		local numItems = C_AuctionHouse_GetNumReplicateItems();
		if numItems > 0 then
			app.PrintDebug("Received data for", numItems, "auctions");
			local auction, price;
			for i=0,numItems-1 do
				auction = {C_AuctionHouse_GetReplicateItemInfo(i)};
				local itemID = auction[17]
				local lowestPrice = auctionData[itemID] or GoldCap
				-- if itemID == app.DEBUGITEMID then
				-- 	app.PrintTable(auction)
				-- end
				-- buyoutPrice, then bidAmount, then minBid (an auction without a buyout reports a buyoutPrice of 0)
				price = auction[10]
				if not price or price <= 0 then
					price = auction[11]
					if not price or price <= 0 then
						price = auction[8] or GoldCap
					end
				end
				auctionData[itemID] = math_min(lowestPrice, price)
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
			local auction, itemID, price, lowest;
			repeat
				-- Process the Auction
				auction = {GetAuctionItemInfo("list", index)};
				if auction[16] == 0 then	-- saleStatus
					itemID = auction[17];	-- itemId
					if itemID and itemID > 0 then
						-- buyoutPrice, then bidAmount, then minBid (an auction without a buyout reports a buyoutPrice of 0)
						price = auction[10];
						if not price or price <= 0 then
							price = auction[11];
							if not price or price <= 0 then
								price = auction[8] or 0;
							end
						end
						-- keep the cheapest auction of each item
						lowest = auctionData[itemID];
						if not lowest or price < lowest then
							auctionData[itemID] = price;
						end
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
local LastCmd;
local MaximumPrice = GoldCap;
local function ParseCommand(self, cmd, skipUpdate)
	if not cmd or cmd == "" then
		cmd = "cap";
	else
		cmd = cmd:lower();
	end
	LastCmd = cmd;

	local price;
	if cmd == "cap" or cmd == "goldcap" or cmd == "default" then
		price = GoldCap;
	elseif cmd == "all" then
		price = GetMoney();
	elseif cmd == "warband" and app.GameBuildVersion >= 110000 then
		price = C_Bank.FetchDepositedMoney(Enum.BankType.Account) + GetMoney();
	else
		price = tonumber(cmd);
		if type(price) == "number" then
			price = price * 10000;
		else
			price = 0;
		end
	end
	if not price or price <= 0 or price > GoldCap then
		price = GoldCap;
	end

	if MaximumPrice ~= price then
		MaximumPrice = price;
		if not skipUpdate then
			self:Update(true);
		end
	end
end

-- Buy All
-- Searches the Auction House for each queued item, finds its cheapest buyout,
-- and asks for confirmation (with the price) before buying it. Bid-only and own auctions are skipped.
-- Two backends: the Classic browse frame (QueryAuctionItems) and the modern Auction House (C_AuctionHouse),
-- which some Classic-era clients (e.g. Forever) use as well.
local StartBuyAll;
local BuyAllBackend;
if QueryAuctionItems and PlaceAuctionBid and GetAuctionItemInfo and GetNumAuctionItems then
	-- Classic Auction House: search by name (not exact, so random-suffix variants match), keep only this itemID,
	-- page through the results, buy by list index.
	local CanSendAuctionQuery, GetAuctionItemInfo, GetNumAuctionItems, PlaceAuctionBid, QueryAuctionItems, UnitName
		= CanSendAuctionQuery, GetAuctionItemInfo, GetNumAuctionItems, PlaceAuctionBid, QueryAuctionItems, UnitName;
	local PAGE_SIZE = NUM_AUCTION_ITEMS_PER_PAGE or 50;
	local MAX_PAGES = 20;
	-- Returns the buyout of the auction at index if it is an active, buyout-able auction of itemID that isn't ours
	local function GetBuyout(index, itemID)
		local _, _, _, _, _, _, _, _, _, buyoutPrice, _, _, _, owner, _, saleStatus, id = GetAuctionItemInfo("list", index);
		if id == itemID and saleStatus == 0 and buyoutPrice and buyoutPrice > 0 and (not owner or owner ~= UnitName("player")) then
			return buyoutPrice;
		end
	end
	BuyAllBackend = {
		Events = { "AUCTION_ITEM_LIST_UPDATE" },
		IsOpen = function()
			return AuctionFrame and AuctionFrame:IsShown();
		end,
		CanQuery = function()
			return CanSendAuctionQuery();
		end,
		-- Sends the first search for job.name.
		Search = function(job)
			job.page = 0;
			QueryAuctionItems(job.name, nil, nil, 0, nil, nil, false, false, nil);
		end,
		-- Called once the results settle. Returns "query", fn to send another query, or "done" (job.result holds the pick, if any).
		OnResults = function(job, maxPrice)
			local itemID = job.itemID;
			local numBatch, numTotal = GetNumAuctionItems("list");
			if job.locating then
				for index=1,numBatch do
					if GetBuyout(index, itemID) == job.best then
						job.result = { index = index, buyout = job.best };
						return "done";
					end
				end
				return "done";
			end
			local buyout;
			for index=1,numBatch do
				buyout = GetBuyout(index, itemID);
				if buyout and buyout <= maxPrice and (not job.best or buyout < job.best) then
					job.best, job.bestPage = buyout, job.page;
				end
			end
			if (job.page + 1) * PAGE_SIZE < (numTotal or 0) and job.page + 1 < MAX_PAGES then
				job.page = job.page + 1;
				return "query", function() QueryAuctionItems(job.name, nil, nil, job.page, nil, nil, false, false, nil); end;
			end
			if not job.best then return "done" end
			job.locating = true;
			if job.bestPage == job.page then
				return BuyAllBackend.OnResults(job, maxPrice);
			end
			job.page = job.bestPage;
			return "query", function() QueryAuctionItems(job.name, nil, nil, job.page, nil, nil, false, false, nil); end;
		end,
		-- Buys the chosen auction if it is still the same one; returns true when a bid was placed.
		Buy = function(job)
			local result = job.result;
			if GetBuyout(result.index, job.itemID) == result.buyout then
				PlaceAuctionBid("list", result.index, result.buyout);
				return true;
			end
		end,
	};
elseif C_AuctionHouse and C_AuctionHouse.SendBrowseQuery and C_AuctionHouse.SendSearchQuery and C_AuctionHouse.PlaceBid then
	-- Modern Auction House: browse by name to find the item key, then search that item sorted by price.
	local C_AuctionHouse = C_AuctionHouse;
	local PRICE_SORT = { { sortOrder = Enum.AuctionHouseSortOrder and Enum.AuctionHouseSortOrder.Price or 0, reverseSort = false } };
	local MAX_MORE = 10;
	BuyAllBackend = {
		Events = { "AUCTION_HOUSE_BROWSE_RESULTS_UPDATED", "ITEM_SEARCH_RESULTS_UPDATED" },
		IsOpen = function()
			return AuctionHouseFrame and AuctionHouseFrame:IsShown();
		end,
		CanQuery = function()
			return not C_AuctionHouse.IsThrottledMessageSystemReady or C_AuctionHouse.IsThrottledMessageSystemReady();
		end,
		Search = function(job)
			job.stage = "browse";
			C_AuctionHouse.SendBrowseQuery({ searchString = job.name, sorts = PRICE_SORT, filters = {}, itemClassFilters = {} });
		end,
		OnResults = function(job, maxPrice)
			local itemID = job.itemID;
			if job.stage == "browse" then
				-- Random-suffix items ("of the Bear", "of the Monkey", ...) share the itemID but each variant has
				-- its own item key, and any of them teaches the appearance: try them from the cheapest up.
				job.keys = {};
				for _,browse in ipairs(C_AuctionHouse.GetBrowseResults() or app.EmptyTable) do
					if browse.itemKey and browse.itemKey.itemID == itemID then
						job.keys[#job.keys + 1] = { itemKey = browse.itemKey, minPrice = browse.minPrice or 0 };
					end
				end
				if #job.keys < 1 then return "done" end
				table.sort(job.keys, function(a, b) return a.minPrice < b.minPrice end);
				job.keyIndex = 0;
				job.stage = "search";
				return BuyAllBackend.NextKey(job, maxPrice);
			end
			-- Item search results for the current variant: keep the cheapest buyout that isn't ours.
			local itemKey = job.itemKey;
			local info, buyout;
			for index=1,C_AuctionHouse.GetNumItemSearchResults(itemKey) do
				info = C_AuctionHouse.GetItemSearchResultInfo(itemKey, index);
				buyout = info and info.buyoutAmount;
				if buyout and buyout > 0 and buyout <= maxPrice and not info.containsOwnerItem
					and (not job.result or buyout < job.result.buyout) then
					job.result = { auctionID = info.auctionID, buyout = buyout };
					job.foundOnKey = true;
				end
			end
			if not job.foundOnKey and not C_AuctionHouse.HasFullItemSearchResults(itemKey) and job.more < MAX_MORE then
				job.more = job.more + 1;
				return "query", function() C_AuctionHouse.RequestMoreItemSearchResults(itemKey); end;
			end
			return BuyAllBackend.NextKey(job, maxPrice);
		end,
		-- Searches the next variant, unless none of the remaining ones can beat the best buyout found so far.
		NextKey = function(job, maxPrice)
			job.keyIndex = job.keyIndex + 1;
			local key = job.keys[job.keyIndex];
			if not key or key.minPrice > maxPrice or (job.result and key.minPrice >= job.result.buyout) then
				return "done";
			end
			job.itemKey, job.more, job.foundOnKey = key.itemKey, 0, nil;
			return "query", function() C_AuctionHouse.SendSearchQuery(key.itemKey, PRICE_SORT, true); end;
		end,
		Buy = function(job)
			C_AuctionHouse.PlaceBid(job.result.auctionID, job.result.buyout);
			return true;
		end,
	};
end
if BuyAllBackend then
	local Backend = BuyAllBackend;
	local C_Timer_After, GetMoney, tremove = C_Timer.After, GetMoney, table.remove;
	local POPUP = "ALL_THE_THINGS_AUCTION_BUY_ALL";

	local queue, current, bought, total, running, token = {}, nil, 0, 0, false, 0;
	local eventFrame = CreateFrame("Frame");
	local ProcessNext;

	local listening, lastQuery, waitToken = false, nil, 0;
	local function SetListening(listen)
		listening = listen;
		if not listen then waitToken = waitToken + 1; end	-- cancels the pending watchdog
		for _,event in ipairs(Backend.Events) do
			if listen then eventFrame:RegisterEvent(event) else eventFrame:UnregisterEvent(event) end
		end
	end
	local function Finish()
		local wasRunning = running;
		-- Clear the state first: hiding the popup below calls its OnHide, which must not finish again.
		running, current = false, nil;
		wipe(queue);
		SetListening(false);
		StaticPopup_Hide(POPUP);
		if wasRunning then
			app.print((L.AUCTIONS_BUY_ALL_DONE or "Buy All finished: bought %d of %d items."):format(bought, total));
		end
	end
	local function Next()
		C_Timer_After(0.3, ProcessNext);
	end
	local function ShowConfirm()
		local buyout = current.result.buyout;
		if buyout > GetMoney() then
			app.print((L.AUCTIONS_BUY_ALL_TOO_EXPENSIVE or "Not enough money to buy %s for %s, skipping."):format(current.link, GetCoinTextureString(buyout)));
			return Next();
		end
		local popup = StaticPopupDialogs[POPUP];
		if not popup then
			popup = {
				button1 = BUYOUT,
				button2 = L.AUCTIONS_BUY_ALL_SKIP or "Skip",
				button3 = L.AUCTIONS_BUY_ALL_STOP or "Stop",
				timeout = 0,
				whileDead = true,
				hideOnEscape = true,
				preferredIndex = 3,
				OnAccept = function(self, job)
					job.handled = true;
					-- The click on Buyout is the hardware event the purchase needs.
					if running and Backend.IsOpen() and Backend.Buy(job) then
						bought = bought + 1;
						-- Mark the row as bought (green check) and skip it on later runs.
						local row = job.row;
						if row then
							row.trackable = true;
							row.saved = true;
							local window = app:GetWindow("Auctions", true);
							if window then window:Refresh(); end
						end
					end
					Next();
				end,
				OnCancel = function(self, job)
					job.handled = true;
					Next();
				end,
				OnAlt = function(self, job)
					job.handled = true;
					Finish();
				end,
				OnHide = function(self)
					-- Escape counts as Skip (OnCancel). Hidden without any button (e.g. replaced by another popup): stop Buy All.
					local job = self.data;
					if job and not job.handled and running then
						Finish();
					end
				end,
			};
			StaticPopupDialogs[POPUP] = popup;
		end
		popup.text = (L.AUCTIONS_BUY_ALL_CONFIRM or "Buy %s\nfor %s?\n(%d of %d)"):format(current.link, GetCoinTextureString(buyout), total - #queue, total);
		StaticPopup_Hide(POPUP);
		local dialog = StaticPopup_Show(POPUP, nil, nil, current);
		if not dialog then
			return Next();
		end
		-- Popups stack below any other visible popup (or the previous one still hiding), so pin ours
		-- to the first popup position to keep it in the same place for every item.
		dialog:ClearAllPoints();
		dialog:SetPoint("TOP", UIParent, "TOP", 0, -135);
	end
	local Query;
	-- A query can go unanswered (the server dropped it for being too soon, or the search failed).
	-- Resend it, and after a few tries skip the item so the run never stalls.
	local MAX_RETRIES, WATCHDOG = 2, 6;
	local function Retry()
		local job = current;
		if not running or not job or not lastQuery then return end
		SetListening(false);
		token = token + 1;	-- drop any results still settling for the unanswered query
		job.retries = (job.retries or 0) + 1;
		if job.retries > MAX_RETRIES then
			app.print((L.AUCTIONS_BUY_ALL_NO_BUYOUT or "No buyout within your Maximum Price found for %s, skipping."):format(job.link or ("item:" .. job.itemID)));
			return Next();
		end
		local fn = lastQuery;
		C_Timer_After(1, function()
			if running and current == job then Query(fn); end
		end);
	end
	Query = function(fn)
		if not running then return end
		if not Backend.IsOpen() then return Finish() end
		if not Backend.CanQuery() then
			C_Timer_After(0.25, function() Query(fn) end);
			return;
		end
		SetListening(true);
		lastQuery = fn;
		fn();
		local myWait = waitToken;
		C_Timer_After(WATCHDOG, function()
			if myWait == waitToken and listening and running then Retry(); end
		end);
	end
	local function OnSettled()
		SetListening(false);
		if not running or not current then return end
		local job = current;
		local state, nextQuery = Backend.OnResults(job, MaximumPrice);
		if state == "query" then
			return Query(nextQuery);
		end
		if job.result then
			return ShowConfirm();
		end
		app.print((L.AUCTIONS_BUY_ALL_NO_BUYOUT or "No buyout within your Maximum Price found for %s, skipping."):format(job.link));
		Next();
	end
	-- Retry when the server drops a query or a browse fails (modern Auction House only).
	local retryFrame = CreateFrame("Frame");
	pcall(retryFrame.RegisterEvent, retryFrame, "AUCTION_HOUSE_THROTTLED_MESSAGE_DROPPED");
	pcall(retryFrame.RegisterEvent, retryFrame, "AUCTION_HOUSE_BROWSE_FAILURE");
	retryFrame:SetScript("OnEvent", function()
		if running and listening then Retry(); end
	end);
	-- Result events fire several times while the results load, so wait until they settle.
	eventFrame:SetScript("OnEvent", function()
		waitToken = waitToken + 1;	-- results are arriving: no need for the watchdog
		token = token + 1;
		local myToken = token;
		C_Timer_After(0.3, function()
			if myToken == token then OnSettled(); end
		end);
	end);
	ProcessNext = function()
		if not running then return end
		if not Backend.IsOpen() then return Finish() end
		current = tremove(queue, 1);
		if not current then return Finish() end
		local job = current;
		-- The search needs the item's base name (without a random suffix, so every variant matches):
		-- take it from the item cache, then the row's link, and otherwise load the item first
		-- (most items in a big list aren't cached yet).
		local name, link = GetItemInfo(job.itemID);
		job.link = job.link or link;
		if not name then
			name = job.link and job.link:match("|h%[(.+)%]|h");
		end
		if name then
			job.name = name;
			return Query(function() Backend.Search(job) end);
		end
		if not (Item and Item.CreateFromItemID) then
			return Next();
		end
		local item = Item:CreateFromItemID(job.itemID);
		local waiting = true;
		item:ContinueOnItemLoad(function()
			if not waiting or not running or current ~= job then return end
			waiting = false;
			job.name = item:GetItemName();
			job.link = item:GetItemLink() or job.link;
			if job.name then
				Query(function() Backend.Search(job) end);
			else
				Next();
			end
		end);
		-- Give up on items that never load.
		C_Timer_After(5, function()
			if waiting and running and current == job then
				waiting = false;
				app.print((L.AUCTIONS_BUY_ALL_NO_BUYOUT or "No buyout within your Maximum Price found for %s, skipping."):format(job.link or ("item:" .. job.itemID)));
				Next();
			end
		end);
	end
	StartBuyAll = function(group)
		if running then
			app.print(L.AUCTIONS_BUY_ALL_RUNNING or "Buy All is already running.");
			return;
		end
		if not Backend.IsOpen() then
			app.print(L.AUCTIONS_BUY_ALL_OPEN_AH or "Open the Auction House to use Buy All.");
			return;
		end
		wipe(queue);
		local seen = {};
		for _,o in ipairs(group.g or app.EmptyTable) do
			local itemID, price = o.itemID, o.price;
			-- Only things ATT tracks as collectible and still missing (some items have an appearance
			-- but aren't collectible, e.g. profession tools like the Arclight Spanner).
			if itemID and price and price > 0 and price <= MaximumPrice and o.collectible and not o.collected
				and not o.saved and o.visible ~= false and not seen[itemID] then
				seen[itemID] = true;
				queue[#queue + 1] = { itemID = itemID, link = o.link, row = o };
			end
		end
		total, bought = #queue, 0;
		if total < 1 then
			app.print(L.AUCTIONS_BUY_ALL_NOTHING or "There are no uncollected appearances within your Maximum Price to buy.");
			return;
		end
		running = true;
		ProcessNext();
	end
	-- Stop if the Auction House closes mid-run.
	local closer = CreateFrame("Frame");
	pcall(closer.RegisterEvent, closer, "AUCTION_HOUSE_CLOSED");
	closer:SetScript("OnEvent", function()
		if running then Finish(); end
	end);
end

do	-- Auction Item Type
	local KEY = "itemID"
	-- Only update an Auction Item if it's within the MaximumPrice
	local function OnUpdateAuctionItem(t, parent, UpdateGroup)
		local price = t.price
		if price <= MaximumPrice then return end

		return true
	end
	local function SummaryForAuctionItem(t)
		return t.price and GetCoinTextureString(t.price) or ""
	end
	-- Wraps the given Type Object as an Auction Item, allowing altered functionality representing this being an Auction result
	local CreateAuctionItem = app.CreateClass("AuctionItem", KEY, {
		IsClassIsolated = true,
		ImportFrom = "Item",
		ImportFields = { "link", "AsyncRefreshFunc" },
		OnClick = function() return OnClickForAuctionItem end,
		summaryText = function(t)
			local summary = app.GetProgressTextForRow(t).." "..SummaryForAuctionItem(t)
			t.summaryText = summary
			return summary
		end,
		-- only update if it meets the MaxPrice threshold
		OnUpdate = function(t) return OnUpdateAuctionItem end,
		-- ignore some other fields that don't make sense for auctions
		g = app.EmptyFunction,
		costCollectibles = app.EmptyFunction,
		collectibleAsCost = app.EmptyFunction,
		costsCount = app.EmptyFunction,
	})
	app.CreateAuctionItem = function(t, price)
		local c = app.WrapObject(CreateAuctionItem(t[KEY]), t)
		c.price = price or 0
		return c
	end
end

app:CreateWindow("Auctions", {
	Commands = { "attauctions" },
	TooltipAnchor = "ANCHOR_RIGHT",
	IgnoreQuestUpdates = true,
	Preload = true,
	Defaults = {
		movable = false,
	},
	OnInit = function(self, handlers)
		local function ProcessAuctions()
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
				self:UpdatePosition();
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
			end
			if auctionFrame and auctionFrame:IsShown() then
				local width = self:GetWidth();
				self:ClearAllPoints();
				if AuctionHouseFrame then
					self:SetPoint("TOP", auctionFrame, "TOP", 0, 0);
					self:SetPoint("BOTTOM", auctionFrame, "BOTTOM", 0, 0);
				else
					self:SetPoint("TOP", auctionFrame, "TOP", 0, -12);
					self:SetPoint("BOTTOM", auctionFrame, "BOTTOM", 0, 10);
				end
				if SideDressUpFrame then
					if SideDressUpFrame:IsShown() then
						self:SetPoint("LEFT", SideDressUpFrame, "RIGHT", 0, 0);
					else
						self:SetPoint("LEFT", auctionFrame, "RIGHT", 0, 0);
					end
				end
				self:SetWidth(width);
				if app.Settings:GetTooltipSetting("Auto:AuctionList") and app.IsClassic then
					self:Show();
				elseif AuctionHouseFrameTabSideBar and app.IsRetail then
					AuctionHouseFrameTabSideBar:ClearAllPoints()
					AuctionHouseFrameTabSideBar:SetPoint("TOPLEFT", AuctionHouseFrame, "TOPRIGHT")
					AuctionHouseFrameTabSideBar:SetPoint("BOTTOMLEFT", AuctionHouseFrame, "BOTTOMRIGHT")
				end

				if app.IsRetail then
					app.Settings:SetTooltipSetting("Auto:AuctionList", false)
					self:SetResizable(false)
					self:SetWidth(350)
					self.CloseButton:Disable()	-- Hiding would be better, but it reasserts itself too often for that
					self:Hide()

					if not AuctionHouseFrameTabSideBar then	-- This runs in other addons as well, to create the shared parent frame
						AuctionHouseFrameTabSideBar = CreateFrame("Frame", nil, AuctionHouseFrame, "")
						AuctionHouseFrameTabSideBar:SetWidth(1)
						AuctionHouseFrameTabSideBar:SetPoint("TOPLEFT", AuctionHouseFrame, "TOPRIGHT")
						AuctionHouseFrameTabSideBar:SetPoint("BOTTOMLEFT", AuctionHouseFrame, "BOTTOMRIGHT")
						AuctionHouseFrameTabSideBar.Tabs = {}
						AuctionHouseFrameTabSideBar.selTab = 0
					end

					if not app.AuctionHouseTab then
						app.AuctionHouseTab = CreateFrame("Frame", nil, AuctionHouseFrameTabSideBar, "AllTheThings_Tab")
						app.AuctionHouseTab:SetPoint("TOPLEFT", AuctionHouseFrameTabSideBar, "TOPRIGHT", -2, -52)
						AuctionHouseFrameTabSideBar.Tabs[#AuctionHouseFrameTabSideBar.Tabs + 1] = app.AuctionHouseTab
					end

					local function toggleAHTab()
						local newState = not self:IsShown()
						app.AuctionHouseTab:SetChecked(newState)
						app.AuctionHouseTab.Icon:SetTexture("Interface\\Addons\\AllTheThings\\assets\\logo_32x32")
						app.AuctionHouseTab.Icon:SetSize(24, 24)

						AuctionHouseFrameTabSideBar:ClearAllPoints()
						if newState then
							for i = 1, #AuctionHouseFrameTabSideBar.Tabs do
								if AuctionHouseFrameTabSideBar.selTab == i and i ~= 1 then
									AuctionHouseFrameTabSideBar.Tabs[i]:GetScript("OnMouseUp")(AuctionHouseFrameTabSideBar.Tabs[i])
								end
							end
							AuctionHouseFrameTabSideBar.selTab = 1
							self:SetVisible(true)

							AuctionHouseFrameTabSideBar:SetPoint("TOPLEFT", self, "TOPRIGHT")
							AuctionHouseFrameTabSideBar:SetPoint("BOTTOMLEFT", self, "BOTTOMRIGHT")
						else
							AuctionHouseFrameTabSideBar.selTab = 0
							self:SetVisible(false)

							AuctionHouseFrameTabSideBar:SetPoint("TOPLEFT", AuctionHouseFrame, "TOPRIGHT")
							AuctionHouseFrameTabSideBar:SetPoint("BOTTOMLEFT", AuctionHouseFrame, "BOTTOMRIGHT")
						end
					end
					app.AuctionHouseTab:SetCustomOnMouseUpHandler(toggleAHTab)
					app.AuctionHouseTab:SetChecked(false)
					app.AuctionHouseTab.Icon:SetTexture("Interface\\Addons\\AllTheThings\\assets\\logo_32x32")
					app.AuctionHouseTab.Icon:SetSize(24, 24)

					if not app.CreatedTabAuction then
						AuctionHouseFrame:HookScript("OnHide", function()
							-- AuctionHouseFrameTabSideBar:ClearAllPoints()
							-- AuctionHouseFrameTabSideBar:SetPoint("TOPLEFT", AuctionHouseFrame, "TOPRIGHT")
							-- AuctionHouseFrameTabSideBar:SetPoint("BOTTOMLEFT", AuctionHouseFrame, "BOTTOMRIGHT")
							AuctionHouseFrameTabSideBar.selTab = 0
							app.AuctionHouseTab:SetChecked(false)
							app.AuctionHouseTab.Icon:SetTexture("Interface\\Addons\\AllTheThings\\assets\\logo_32x32")
							app.AuctionHouseTab.Icon:SetSize(24, 24)
							self:Hide()
						end)

						app.CreatedTabAuction = true
					end
				end
			else
				self:Hide();
			end
		end
		self:SetMovable(false);
		self:SetData(app.CreateRawText(L.AUCTION_MODULE, {
			icon = 133784,
			description = L.AUCTIONS_TOOLTIP,
			SortType = "name",
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			metas = { },
			options = {
				setmetatable({
					clickText = L.AUCTIONS_SCAN_CLICK_TEXT,
					clickDescription = L.AUCTIONS_SCAN_CLICK_DESC,
					scanningText = L.AUCTIONS_SCAN_COOLDOWN_TEXT,
					scanningDescription = L.AUCTIONS_SCAN_COOLDOWN_DESC,
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
					OnSetVisibility = app.ReturnTrue,
				}, { __index = function(t, key)
					if key == "info" then
						if CanFullScan() then
							return app.CreateRawText(t.clickText, {
								description = t.clickDescription,
								trackable = nil,
								saved = nil,
							});
						else
							return app.CreateRawText(t.scanningText, {
								description = t.scanningDescription,
								trackable = true,
								saved = false,
							});
						end
					end
					return t.info[key];
				end}),
				app.CreateRawText(L.AUCTIONS_CLEAR_DATA, {
					description = L.AUCTIONS_CLEAR_CACHE_DESC,
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
						data.visible = next(auctionData) ~= nil
						return true;
					end,
				}),
				app.CreateRawText(L.TOGGLE_DEBUG_MODE, {
					icon = 134932,
					description = L.AUCTIONS_DEBUG_MODE_DESC,
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
				}),
				app.CreateRawText(L.TOGGLE_ACCOUNT_MODE, {
					icon = 133733,
					description = L.ACCOUNT_MODE_TOOLTIP,
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
				}),
				app.CreateRawText(L.TOGGLE_FACTION_MODE, {
					icon = 134932,
					description = L.AUCTIONS_FACTION_MODE_DESC,
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
				}),
				app.CreateRawText(L.AUCTIONS_MAXIMUM_PRICE, {
					icon = 133784,
					description = L.AUCTIONS_MAX_PRICE_DESC,
					visible = true,
					SortPriority = 1.5,
					OnClick = function(row, button)
						app:ShowPopupDialogWithEditBox(L.AUCTIONS_MAX_PRICE_POPUP, tostring(MaximumPrice * 0.0001), function(cmd)
							ParseCommand(self, cmd);
						end);
						return true;
					end,
					OnUpdate = function(data)
						data.summaryText = MaximumPrice == GoldCap and L.AUCTIONS_NO_LIMIT or GetCoinTextureString(MaximumPrice);
						return app.AlwaysShowUpdate(data);
					end,
				}),
				app.CreateRawText(L.ACHIEVEMENT, {	-- Achievements
					Metas = { "Achievement", "AchievementCriteria" },
					icon = app.asset("Category_Achievements"),
					description = L.AUCTIONS_ITEMS_FOR_ACHIEVEMENTS_DESC,
					SortPriority = 2,
				}),
				app.CreateRawText(L.APPEARANCES, {	-- Appearances
					Metas = { "ItemWithAppearance", "ItemAsTransmog", "SimpleItemAsTransmog" },
					icon = 135349,
					description = L.AUCTIONS_APPEARANCES_DESC,
					SortPriority = 2,
					BuyAll = true,
				}),
				app.CreateFilter(101, {	-- Battle Pets
					Metas = { "BattlePetWithItem", "Species" },
					description = L.AUCTIONS_BATTLE_PETS_DESC,
					SortPriority = 2,
				}),
				app.CreateRawText(CHARACTER, {	-- Character
					icon = app.asset("Category_ItemSets"),
					Metas = { "CharacterUnlockQuestItem", "CharacterUnlockSpellItem" },
					description = L.AUCTIONS_SPELLS_DESC,
					SortPriority = 2,
				}),
				app.CreateRawText(L.FACTIONS, {	-- Factions
					Metas = { "ItemWithFaction" },
					icon = app.asset("Category_Factions"),
					description = L.AUCTIONS_REPUTATION_DESC,
					SortPriority = 2,
				}),
				app.CreateFilter(100, {	-- Mounts
					Metas = { "MountWithItem" },
					description = L.ALL_THE_MOUNTS_DESC,
					SortPriority = 2,
				}),
				app.CreateRawText(L.AUCTIONS_MATERIALS, {	-- Materials
					Metas = { "Material" },
					icon = 132856,
					description = L.ALL_THE_REAGENTS_DESC,
					SortPriority = 2,
				}),
				app.CreateRawText(L.AUCTIONS_MISCELLANEOUS, {	-- Miscellaneous
					Metas = { "Item", "SimpleItem" },
					icon = 132595,
					description = L.AUCTIONS_OTHER_ITEMS_DESC,
					SortPriority = 2,
				}),
				app.CreateCustomHeader(app.HeaderConstants.QUESTS, {	-- Quest
					Metas = { "ItemAsHQT" },
					description = L.AUCTIONS_QUEST_ITEMS_DESC,
					SortPriority = 2,
				}),
				app.CreateFilter(200, {	-- Recipes
					Metas = { "RecipeWithItem" },
					description = L.ALL_THE_RECIPES_DESC,
					SortPriority = 2,
				}),
				app.CreateRawText(L.TOYS, {	-- Toys
					Metas = { "Toy", "ToyEventually" },
					icon = 133015,
					description = L.AUCTIONS_TOYS_DESC,
					SortPriority = 2,
				}),
				app.CreateRawText(L.AUCTIONS_LEGACY, {	-- Legacy
					Metas = { "legacyID" },
					icon = 135331,
					description = L.AUCTIONS_REMOVED_ITEMS_DESC,
					SortPriority = 100000,
					OnUpdate = function(data)
						local rawSettings = app.Settings:GetRawSettings("Unobtainable");
						oldLegacyFilter = rawSettings[2];
						rawSettings[2] = true;
					end,
				}),
				app.CreateRawText(L.AUCTIONS_LEGACY_CLEANER, {	-- Legacy Cleaner
					icon = 135331,
					SortPriority = 100001,
					OnUpdate = function(data)
						app.Settings:GetRawSettings("Unobtainable")[2] = oldLegacyFilter;
					end,
				})
			},
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					for i,option in ipairs(data.options) do
						option.g = {};
						g[#g+1] = option
						if option.Metas then
							for j,meta in ipairs(option.Metas) do
								data.metas[meta] = option;
							end
						end
					end

					-- Determine if anything is cached in the Auction Data.
					if next(auctionData) then
						-- Search the ATT Database for information related to the auction links (items, species, etc)
						local searchResultsByKey = {}
						local searchResult, key, keys, value
						for itemID,price in pairs(auctionData) do
							-- TODO: investigate if this needs to properly handle multiple variants of an item, or if AH data is just bad
							searchResult = app.SearchForObject("itemID", itemID, "field") or app.CreateItem(itemID)
							key = searchResult.key;
							local __type = searchResult.__type or key;
							if key == "npcID" and searchResult.itemID then
								key = "itemID";
							end
							if key == "itemID" and searchResult.sourceID then
								key = "sourceID";
							end
							value = searchResult[key];

							if searchResult.u and (searchResult.u == 1 or searchResult.u == 2) then
								value = value .. "_" .. searchResult.u;
								__type = "legacyID";
							end

							-- Make sure that the key type is represented.
							keys = searchResultsByKey[__type];
							if not keys then
								keys = {};
								searchResultsByKey[__type] = keys;
							end

							-- First time this key value was used.
							if not keys[value] then
								keys[value] = app.CreateAuctionItem(searchResult, tonumber(price))
							end
						end

						-- Process the Non-Collectible Items for Materials (Reagents)
						local reagentCache = AllTheThingsAD.Reagents;
						if not reagentCache then
							reagentCache = {};
							AllTheThingsAD.Reagents = reagentCache;
						end
						if reagentCache and searchResultsByKey.SimpleItem then
							local cachedItems = searchResultsByKey.SimpleItem;
							searchResultsByKey.SimpleItem = {};
							searchResultsByKey.Material = {};
							for itemID,entry in pairs(cachedItems) do
								if reagentCache[itemID] then
									searchResultsByKey.Material[itemID] = entry;
									if not entry.g then entry.g = {}; end
									for itemID2,count in pairs(reagentCache[itemID][2]) do
										local searchResults = app.SearchForField("itemID", itemID2);
										if searchResults and #searchResults > 0 then
											local craftedItem = app.CloneClassInstance(searchResults[1]);
											craftedItem.OnClick = OnClickForAuctionItem;
											entry.g[#entry.g+1] = craftedItem
										end
									end
								else
									-- Push it back into the itemID table
									searchResultsByKey.SimpleItem[itemID] = entry;
								end
							end
						end

						-- Display Test for Raw Data + Filtering
						-- (several keys can share one option, e.g. Appearances, so only wipe each option once)
						local wiped = {}
						for key, searchResults in pairs(searchResultsByKey) do
							local subdata = self.data.metas[key];
							if subdata then
								if not wiped[subdata] then
									wipe(subdata.g)
									wiped[subdata] = true
								end
							else
								subdata = app.CreateRawText(key, {
									text = key,
									Metas = { key },
									description = L.AUCTIONS_CONTAINER_DESC:format(key),
									SortPriority = 2,
									g = {},
								});
								self.data.metas[key] = subdata;
								g[#g + 1] = subdata
							end
							local subdatag = subdata.g
							for _,j in pairs(searchResults) do
								subdatag[#subdatag + 1] = j
							end
							app.Sort(subdatag, SortByPrice)
						end

						-- Buy All row at the top of Appearances (Classic Auction House only)
						if StartBuyAll then
							for _,option in ipairs(data.options) do
								if option.BuyAll and #option.g > 0 then
									tinsert(option.g, 1, app.CreateRawText(L.AUCTIONS_BUY_ALL or "Buy All", {
										icon = 133785,
										description = L.AUCTIONS_BUY_ALL_DESC or "Searches the Auction House for each uncollected appearance listed below (up to your Maximum Price) and offers the cheapest buyout for each one. Every purchase asks for confirmation first. Bid-only auctions and your own auctions are skipped.",
										OnClick = function(row, button)
											StartBuyAll(option);
											return true;
										end,
										OnUpdate = app.AlwaysShowUpdate,
									}));
								end
							end
						end
					else
						tinsert(g, app.CreateRawText(L.AUCTIONS_NO_DATA, {
							SortPriority = 99999,
						}));
					end
					app.AssignChildren(self.data)
				end
			end,
		}));
		self.VisibilityFilter = function(t)
			local price = t.price
			if not price or price <= MaximumPrice then return app.VisibilityFilter(t) end
		end
		if rawget(app.HeaderConstants, "MOUNT_MODS") then
			tinsert(self.data.options, app.CreateCustomHeader(app.HeaderConstants.MOUNT_MODS, {	-- Mount Mods
				Metas = { "MountMod" },
				description = L.AUCTIONS_MOUNT_MODS_DESC,
				SortPriority = 2,
			}));
		end
		if app.GameBuildVersion >= 70000 then
			tinsert(self.data.options, app.CreateFilter(103, {	-- Illusions
				Metas = { "IllusionWithItem" },
				description = L.AUCTIONS_ILLUSIONS_DESC,
				SortPriority = 2,
			}));
		end
		if app.GameBuildVersion > 110000 then
			tinsert(self.data.options, app.CreateRawText(L.DECOR, {	-- Decor
				Metas = { "Decor" },
				icon = app.asset("Category_Housing"),
				description = L.AUCTIONS_DECOR_DESC,
				SortPriority = 2,
			}));
		end
		-- If we have left over auction data from previous, then use it.
		if AllTheThingsAuctionData then
			auctionData = AllTheThingsAuctionData;
		end
		self:UpdatePosition();
	end,
	OnLoad = function(self, settings)
		-- If we have left over auction data from previous, then use it.
		if AllTheThingsAuctionData then
			auctionData = AllTheThingsAuctionData;
		end
		if settings.LastCmd then
			ParseCommand(self, settings.LastCmd, true);
		end
	end,
	OnSave = function(self, settings)
		settings.LastCmd = LastCmd;
	end,
	OnRebuild = function(self)
		self:UpdatePosition();
	end,
	OnShow = function(self)
		ParseCommand(self, LastCmd);
	end,
});
