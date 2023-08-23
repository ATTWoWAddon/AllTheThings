
-- Tooltip Module
local _, app = ...;

-- Concepts:
-- Encapsulates the functionality for interacting with and hooking into game Tooltips

-- Global locals
local rawget, ipairs, pairs, TooltipUtil, Enum_TooltipDataType, InCombatLockdown, pcall, strsplit, tostring, tonumber, tinsert, C_Map_GetPlayerMapPosition, math_sqrt
	= rawget, ipairs, pairs, TooltipUtil, Enum.TooltipDataType, InCombatLockdown, pcall, strsplit, tostring, tonumber, tinsert, C_Map.GetPlayerMapPosition, math.sqrt;

-- App locals
local SearchForField = app.SearchForField;

-- Module locals (can be set via OnReady if they do not change during Session but are not yet defined)
local GetCachedSearchResults, SearchForLink, L, GetCurrentMapID

-- Helper Functions (TODO: Define these somewhere and cache locally)
local function distance( x1, y1, x2, y2 )
	return math_sqrt( (x2-x1)^2 + (y2-y1)^2 )
end

-- Build the Object Name Cache
local objectNamesToIDs = {};
local function OnLoad_CacheObjectNames()
	for objectID,name in pairs(app.ObjectNames) do
		local o = objectNamesToIDs[name];
		if not o then
			o = { objectID };
			objectNamesToIDs[name] = o;
		else
			tinsert(o, objectID);
		end
	end
end

-- Uses a provided 'name' and scans the ObjectDB to find potentially matching ObjectID's,
-- then correlate those search results by closest distance to the player's current position
local function GetBestObjectIDForName(name)
	local o = objectNamesToIDs[name];
	if o then
		if #o > 1 then
			local closestObjectID;
			local mapID = GetCurrentMapID();
			local pos = C_Map_GetPlayerMapPosition(mapID, "player");
			if pos then
				local px, py = pos:GetXY();
				px, py = px * 100, py * 100;
				local closestDistance, dist, searchCoord = 99999, o[1];
				for i,objectID in ipairs(o) do
					local searchResults = SearchForField("objectID", objectID);
					if searchResults and #searchResults > 0 then
						for j,searchResult in ipairs(searchResults) do
							searchCoord = searchResult.coord;
							if searchCoord and searchCoord[3] == mapID then
								dist = distance(px, py, searchCoord[1], searchCoord[2]);
								if dist and dist < closestDistance then
									closestDistance = dist;
									closestObjectID = objectID;
								end
							elseif searchResult.coords then
								for k,coord in ipairs(searchResult.coords) do
									if coord[3] == mapID then
										dist = distance(px, py, coord[1], coord[2]);
										if dist and dist < closestDistance then
											closestDistance = dist;
											closestObjectID = objectID;
										end
									end
								end
							end
						end
					end
				end
			end
			return closestObjectID;
		end
		return o[1];
	end
end

-- many of these don't include an ID in-game so they don't attach results. maybe someday they will...
local TooltipTypes = {
	[Enum_TooltipDataType.Toy] = "itemID",
	[Enum_TooltipDataType.Item] = "itemID",
	[Enum_TooltipDataType.Spell] = "spellID",
	-- [Enum_TooltipDataType.Mount] = "spellID",	-- need special conversion
	[Enum_TooltipDataType.Achievement] = "achievementID",
	[Enum_TooltipDataType.Quest] = "questID",
	[Enum_TooltipDataType.QuestPartyProgress] = "questID",
	[Enum_TooltipDataType.BattlePet] = "speciesID",
	[Enum_TooltipDataType.CompanionPet] = "speciesID",
	[Enum_TooltipDataType.Currency] = "currencyID",
	[Enum_TooltipDataType.InstanceLock] = "instanceID",
};
-- We need to whitelist the actual in-game tooltips that ATT is allowed to hook
-- because all kinds of addons create their own tooltips and use them to do weird stuff behind the scenes
-- and there's no reason for ATT to care when it's not even visible to a player
local HookableTooltips = {
	["GameTooltip"]=1,
	["GameTooltipTooltip"]=1,
	["EmbeddedItemTooltipTooltip"]=1,
	["ItemRefTooltip"]=1,
	["ShoppingTooltip1"]=1,
	["ShoppingTooltip2"]=1,
	["PerksProgramTooltip"]=1,	-- tooltip used for items within the Trading Post UI
	["EncounterJournalTooltipItem1Tooltip"]=1,	-- various tooltips in Adventure Guide, some are actually useful to attach ATT data
	["GarrisonShipyardMapMissionTooltipTooltip"]=1,	-- tooltips of Navel missions from WoD Garrison
	-- other addons which create user-visible tooltips that ATT should attach into
	-- SilverDragon
	["SilverDragonLootTooltip"]=1,
	-- RareScanner
	["LootBarToolTip"]=1,
	["RSMapItemToolTip"]=1,
	-- Townlong Yak addons seem to use alternate, automatically appended tooltips now...
	["NotGameTooltip"]=1,
	["NotGameTooltip0"]=1,
	["NotGameTooltip01"]=1,
	["NotGameTooltip012"]=1,
	["NotGameTooltip0123"]=1,
};

local function ClearTooltip(self)
	-- app.PrintDebug("Clear Tooltip",self:GetName());
	self.AllTheThingsProcessing = nil;
	self.AttachComplete = nil;
	self.MiscFieldsComplete = nil;
	self.UpdateTooltip = nil;
end
-- Consolidated logic for whether a tooltip should include ATT information based on combat & user settings
local function CanAttachTooltips()
	return (not InCombatLockdown() or app.Settings:GetTooltipSetting("DisplayInCombat")) and app.Settings:GetTooltipSettingWithMod("Enabled");
end
-- Tooltip Functions
local function AttachTooltipRawSearchResults(self, lineNumber, group)
	if group then
		-- app.PrintDebug("Tooltip lines before search results",group.hash,group.tooltipInfo and #group.tooltipInfo)
		-- if app.DEBUG_PRINT then app.PrintTable(group.tooltipInfo) end
		-- If there was info text generated for this search result, then display that first.
		if group.tooltipInfo and #group.tooltipInfo > 0 then
			local left, right;
			for _,entry in ipairs(group.tooltipInfo) do
				left = entry.left;
				right = entry.right;
				if right then
					self:AddDoubleLine(left or " ", right);
				elseif entry.r then
					if entry.wrap then
						self:AddLine(left, entry.r / 255, entry.g / 255, entry.b / 255, 1);
					else
						self:AddLine(left, entry.r / 255, entry.g / 255, entry.b / 255);
					end
				else
					if entry.wrap then
						self:AddLine(left, nil, nil, nil, 1);
					else
						self:AddLine(left);
					end
				end
			end
		end

		-- If the user has Show Collection Progress turned on.
		if group.encounterID then
			self:Show();
		elseif group.collectionText and self:NumLines() > 0 then
			local rightSide = _G[self:GetName() .. "TextRight" .. (lineNumber or 1)];
			if rightSide then
				if self.CloseButton then
					-- dont think the region for the rightText can be modified within the tooltip, so pad instead
					rightSide:SetText(group.collectionText .. "     ");
				else
					rightSide:SetText(group.collectionText);
				end
				rightSide:Show();
			end
		end

		self.AttachComplete = not group.working;
	end
end
local function AttachTooltipSearchResults(self, lineNumber, search, method, ...)
	-- app.PrintDebug("AttachTooltipSearchResults",search,...)
	app.SetSkipPurchases(1);
	pcall(AttachTooltipRawSearchResults, self, lineNumber, GetCachedSearchResults(search, method, ...));
	app.SetSkipPurchases(0);
end
local function AttachTooltip(self, ttdata)

	if self.AllTheThingsIgnored or not CanAttachTooltips() then return; end

	-- Does the tooltip have an owner?
	local owner = self:GetOwner();
	if owner then
		if owner.SpellHighlightTexture
		or owner.TrainBook
		or owner.spendTextShadows then
			-- Actionbars/Spellbook/Talents UI, don't want that.
			return true;
		end
		-- this is already covered by a default in-game tooltip line:
		-- AUCTION_HOUSE_BUCKET_VARIATION_EQUIPMENT_TOOLTIP = "Items in this group may vary in stats and appearance. Check the auction's tooltip before buying.";
		-- if owner.useCircularIconBorder and not self.AllTheThingsProcessing then
		--	-- print("AH General Item Tooltip")
		--	-- Generalized tooltip hover of a selected Auction Item -- not always accurate to the actual Items for sale
		-- 	self:AddLine(L["AUCTION_GENERALIZED_ITEM_WARNING"]);
		-- end
		-- print("AttachTooltip-HasOwner");

		--[[--
		-- Debug all of the available fields on the owner.
		self:AddDoubleLine("GetOwner", tostring(owner:GetName()));
		for i,j in pairs(owner) do
			self:AddDoubleLine(tostring(i), tostring(j));
		end
		self:Show();
		--]]--

		local encounterID = owner.encounterID;
		if encounterID and not owner.itemID then
			if app.Settings:GetTooltipSetting("encounterID") then self:AddDoubleLine(L["ENCOUNTER_ID"], tostring(encounterID)); end
			AttachTooltipSearchResults(self, 1, "encounterID:" .. encounterID, SearchForField, "encounterID", tonumber(encounterID));
			return true;
		end

		-- Micro Menu button tooltips
		local gf;
		if owner.lastNumMountsNeedingFanfare then
			-- Collections
			gf = app:GetWindow("Prime").data;
		elseif owner.NewAdventureNotice then
			-- Adventure Guide
			gf = app:GetWindow("Prime").data.g[1];
		elseif owner.tooltipText then
			if type(owner.tooltipText) == "string" then
				if owner.tooltipText == DUNGEONS_BUTTON then
					-- Group Finder
					gf = app:GetWindow("Prime").data.g[4];
				elseif owner.tooltipText == BLIZZARD_STORE then
					-- Shop
					gf = app:GetWindow("Prime").data.g[16];
				elseif string.sub(owner.tooltipText, 1, string.len(ACHIEVEMENT_BUTTON)) == ACHIEVEMENT_BUTTON then
					-- Achievements
					gf = app:GetWindow("Prime").data.g[5];
				end
			end
		end
		if gf then
			-- app.PrintDebug("special tooltip")
			app.noDepth = true;
			AttachTooltipSearchResults(self, 1, owner:GetName(), (function() return gf; end), owner:GetName(), 1);
			app.noDepth = nil;
			self:Show();
		end
	end

	local ttType, ttId = ttdata and ttdata.type;
	if ttType then
		ttId = ttdata.id;
		-- app.PrintDebug("TT Type",ttType,ttId)
	end

	local link, target, spellID, id, _;
	-- check what this tooltip is currently displaying, and keep that reference
	-- name, link, id
	_, link, id = TooltipUtil.GetDisplayedItem(self);
	if link and not link:find("%[]") then
		if self.AllTheThingsProcessing and self.AllTheThingsProcessing == link then
			return true;
		else
			self.AllTheThingsProcessing = link;
		end
	else
		-- name, type, UID
		target, _, id = TooltipUtil.GetDisplayedUnit(self);
		if target then
			if self.AllTheThingsProcessing and self.AllTheThingsProcessing == target then
				return true;
			else
				self.AllTheThingsProcessing = target;
			end
		else
			-- name, spellID
			_, spellID = TooltipUtil.GetDisplayedSpell(self);
			if spellID then
				if self.AllTheThingsProcessing and self.AllTheThingsProcessing == spellID then
					return true;
				else
					self.AllTheThingsProcessing = spellID;
				end
			end
		end
	end

	-- app.PrintDebug(self:GetName(),link,target,spellID,id,ttType,ttId)

	--[[--]
	-- Debug all of the available fields on the tooltip.
	app.PrintDebug("Tooltip Data")
	for i,j in pairs(self) do
		app.PrintDebug(i,type(j),j);
	end
	-- self:Show();
	--]]--

	-- Does this tooltip have an OnClear attached for ATT since it can handle content which ATT will attach to?
	if self.AllTheThingsProcessing and not self.AllTheThingsOnTooltipClearedHook then
		local tooltipName = self:GetName();
		if tooltipName and HookableTooltips[tooltipName] then
			-- app.PrintDebug("Hooking ClearTooltip",tooltipName)
			pcall(self.HookScript, self, "OnTooltipCleared", ClearTooltip)
			-- if pcall(self.HookScript, self, "OnTooltipCleared", ClearTooltip) then
			-- 	app.PrintDebug("Hooked")
			-- end
			self.AllTheThingsOnTooltipClearedHook = true;
		else
			app.PrintDebug("Ignoring Tooltip",tooltipName)
			-- otherwise mark them as ignored so ATT doesn't process them
			self.AllTheThingsIgnored = true;
		end
	end

	-- Does the tooltip have a target?
	if self.AllTheThingsProcessing and target and id then
		-- Yes.
		local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",id);
		-- print(target, type, npc_id);
		if type == "Player" then
			if id == "Player-76-0895E23B" then
				local leftSide = _G[self:GetName() .. "TextLeft1"];
				if leftSide then
					leftSide:SetText("|cffff8000" .. leftSide:GetText() .. "|r");
				end
				local rightSide = _G[self:GetName() .. "TextRight2"];
				leftSide = _G[self:GetName() .. "TextLeft2"];
				if leftSide and rightSide then
					leftSide:SetText(L["TITLE"]);
					leftSide:Show();
					rightSide:SetText("Author");
					rightSide:Show();
				else
					self:AddDoubleLine(L["TITLE"], "Author");
				end
			end
		elseif type == "Creature" or type == "Vehicle" then
			if app.Settings:GetTooltipSetting("creatureID") then self:AddDoubleLine(L["CREATURE_ID"], tostring(npc_id)); end
			AttachTooltipSearchResults(self, 1, "creatureID:" .. npc_id, SearchForField, "creatureID", tonumber(npc_id));
		end
		return true;
	end

	-- Does the tooltip have a spell? [Mount Journal, Action Bars, etc]
	if self.AllTheThingsProcessing and spellID then
		AttachTooltipSearchResults(self, 1, "spellID:" .. spellID, SearchForField, "spellID", spellID);
		return true;
	end

	-- Does the tooltip have an itemlink?
	if self.AllTheThingsProcessing and link then
		-- local _, _, Color, Ltype, Id, Enchant, Gem1, Gem2, Gem3, Gem4, Suffix, Unique, LinkLvl, reforging, Name = string.find(link, "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?");
		-- local _, _, _, Ltype, Id = string.find(link, "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?");
		-- local _, _, _, Ltype, Id = string.find(link, "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*)");
		-- print(Ltype,Id);
		--[[
		local itemString = string.match(link, "item[%-?%d:]+");
		-- mythic keystones have no itemID ... ?? so itemString is nil here
		if not AllTheThingsAuctionData then return end;
		if AllTheThingsAuctionData[itemID] then
			self:AddLine("ATT -> " .. BUTTON_LAG_AUCTIONHOUSE .. " -> " .. GetCoinTextureString(AllTheThingsAuctionData[itemID]["price"]));
		end--]]
		-- app.PrintDebug("Search Item",link,id,ttId);
		if id == 137642 then -- skip Mark of Honor for now
			AttachTooltipSearchResults(self, 1, link, app.EmptyFunction, "itemID", 137642);
			return true;
		else
			local itemID = GetItemInfoInstant(link);
			-- TODO: review if Blizzard ever fixes their tooltips returning the wrong Item link when using TooltipUtil.GetDisplayedItem
			-- on Auction House tooltips (i.e. Recipes) where one Item is nested inside another Item
			if itemID ~= ttId then
				-- app.PrintDebug("Mismatch TT data!",link,itemID,ttId)
				-- fallout to the generalized Item search below
			else
				AttachTooltipSearchResults(self, 1, link, SearchForLink, link);
				return true;
			end
		end
	end

	-- Check the extra data to see if there's an alternate search for the data
	if ttType then
		local knownSearchField = TooltipTypes[ttType];
		if not knownSearchField then
			-- other ways to search
			if ttType == Enum_TooltipDataType.Mount then
				knownSearchField = "spellID";
				ttId = select(2, C_MountJournal.GetMountInfoByID(ttId));
			end
			if ttType == Enum_TooltipDataType.Object then
				local objName = ttdata and ttdata.lines[1];
				objName = objName and objName.leftText;
				local objectID = GetBestObjectIDForName(objName);
				if objectID then
					knownSearchField = "objectID";
					ttId = objectID;
				end
			end
			if ttType == 21 then	-- Minimap mouseover
				local content = ttdata.lines;
				if content and #content > 0 then
					local text = content[1].leftText;
					local arr = { strsplit("|", text) };
					if #arr == 3 then text = strsub(arr[3], 2); end
					local objectID = GetBestObjectIDForName(text);
					if objectID then
						knownSearchField = "objectID";
						ttId = objectID;
					end
				end
			end
		end
		if knownSearchField and ttId then
			-- app.PrintDebug("TT Search",knownSearchField,id)
			AttachTooltipSearchResults(self, 1, knownSearchField..":"..ttId, SearchForField, knownSearchField, tonumber(ttId));
			return true;
		end
	end
	-- print("AttachTooltip-Return");
end
local function AttachBattlePetTooltip(self, data, quantity, detail)
	if not data or data.att or not data.speciesID then return end
	data.att = 1;

	-- GameTooltip_ShowCompareItem
	local searchResults = SearchForField("speciesID", data.speciesID);
	local owned = C_PetJournal.GetOwnedBattlePetString(data.speciesID);
	self.Owned:SetText(owned);
	if owned == nil then
		if self.Delimiter then
			-- if .Delimiter is present it requires special handling (FloatingBattlePetTooltip)
			self:SetSize(260,150 + h)
			self.Delimiter:ClearAllPoints()
			self.Delimiter:SetPoint("TOPLEFT",self.SpeedTexture,"BOTTOMLEFT",-6,-5)
		else
			self:SetSize(260,122)
		end
	else
		local h = self.Owned:GetHeight() or 0;
		if self.Delimiter then
			self:SetSize(260,150 + h)
			self.Delimiter:ClearAllPoints()
			self.Delimiter:SetPoint("TOPLEFT",self.SpeedTexture,"BOTTOMLEFT",-6,-(5 + h))
		else
			self:SetSize(260,122 + h)
		end
	end
	self:Show()
	return true;
end

-- Raw Tooltip Hooks
--[[
for name,func in pairs(getmetatable(GameTooltip).__index) do
	print(name);
	if type(func) == "function" and name ~= "IsOwned" and name ~= "GetOwner" then
		(function(n,f) GameTooltip[n] = function(...)
				print("GameTooltip", n, ...);
				return f(...);
			end
		end)(name, func);
	end
end
]]--

local function OnReadyHooks()
	local GameTooltip_SetLFGDungeonShortageReward = GameTooltip.SetLFGDungeonShortageReward;
	GameTooltip.SetLFGDungeonShortageReward = function(self, dungeonID, shortageSeverity, lootIndex)
		app.PrintDebug("GameTooltip.SetLFGDungeonShortageReward",dungeonID, shortageSeverity, lootIndex );
		-- Only call to the base functionality if it is unknown.
		GameTooltip_SetLFGDungeonShortageReward(self, dungeonID, shortageSeverity, lootIndex);
		if CanAttachTooltips() then
			local name, texturePath, quantity, isBonusReward, spec, itemID = GetLFGDungeonShortageRewardInfo(dungeonID, shortageSeverity, lootIndex);
			if itemID then
				if spec == "item" then
					AttachTooltipSearchResults(self, 1, "itemID:" .. itemID, SearchForField, "itemID", itemID);
					self:Show();
				elseif spec == "currency" then
					AttachTooltipSearchResults(self, 1, "currencyID:" .. itemID, SearchForField, "currencyID", itemID);
					self:Show();
				end
			end
		end
	end

	-- Paragon Hook
	-- local paragonCacheID = {
		-- Paragon Cache Rewards
		-- [QuestID] = [ItemCacheID"]	-- Faction // Quest Title
		-- [54454] = 166300,	-- 7th Legion // Supplies from the 7th Legion
		-- [48976] = 152922,	-- Argussian Reach // Paragon of the Argussian Reach
		-- [46777] = 152108,	-- Armies of Legionfall // The Bounties of Legionfall
		-- [48977] = 152923,	-- Army of the Light // Paragon of the Army of the Light
		-- [54453] = 166298,	-- Champions of Azeroth // Supplies from Magni
		-- [46745] = 152102,	-- Court of Farondis // Supplies from the Court
		-- [46747] = 152103,	-- Dreamweavers // Supplies from the Dreamweavers
		-- [46743] = 152104,	-- Highmountain Tribes // Supplies from Highmountain
		-- [54455] = 166299,	-- Honorbound // Supplies from the Honorbound
		-- [54456] = 166297,	-- Order of Embers // Supplies from the Order of Embers
		-- [54458] = 166295,	-- Proudmoore Admiralty // Supplies from the Proudmoore Admiralty
		-- [54457] = 166294,	-- Storm's Wake // Supplies from Storm's Wake
		-- [54460] = 166282,	-- Talanji's Expedition // Supplies from Talanji's Expedition
		-- [46748] = 152105,	-- The Nightfallen // Supplies from the Nightfallen
		-- [46749] = 152107,	-- The Wardens // Supplies from the Wardens
		-- [54451] = 166245,	-- Tortollan Seekers // Baubles from the Seekers
		-- [46746] = 152106,	-- Valarjar // Supplies from the Valarjar
		-- [54461] = 166290,	-- Voldunai // Supplies from the Voldunai
		-- [54462] = 166292,	-- Zandalari Empire // Supplies from the Zandalari Empire
		-- [55976] = 169939,	-- Waveblade Ankoan // Supplies From the Waveblade Ankoan
		-- [53982] = 169940,	-- Unshackled // Supplies From The Unshackled
		-- [55348] = 170061,	-- Rustbolt // Supplies from the Rustbolt Resistance
		-- [58096] = 174483,	-- Rajani // Supplies from the Rajani
		-- [58097] = 174484,	-- Uldum Accord // Supplies from the Uldum Accord
		-- [61095] = 180646,	-- Undying Army // Supplies from The Undying Army
		-- [61098] = 180649,	-- Wild Hunt // Supplies from The Wild Hunt
		-- [61100] = 180648,	-- Court of Harvesters // Supplies from the Court of Harvesters
		-- [61097] = 180647,	-- The Ascended // Supplies from The Ascended
	-- };
	-- hooksecurefunc("ReputationParagonFrame_SetupParagonTooltip",function(frame)
		-- print("ReputationParagonFrame_SetupParagonTooltip")
		-- Let's make sure the user isn't in combat and if they are do they have In Combat turned on.  Finally check to see if Tootltips are turned on.
		-- if CanAttachTooltips() then
			-- Source: //Interface//FrameXML//ReputationFrame.lua Line 360
			-- Using hooksecurefunc because of how Blizzard coded the frame.  Couldn't get GameTooltip to work like the above ones.
			-- //Interface//FrameXML//ReputationFrame.lua Segment code
			--[[
				function ReputationParagonFrame_SetupParagonTooltip(frame)
					EmbeddedItemTooltip.owner = frame;
					EmbeddedItemTooltip.factionID = frame.factionID;

					local factionName, _, standingID = GetFactionInfoByID(frame.factionID);
					local gender = UnitSex("player");
					local factionStandingtext = GetText("FACTION_STANDING_LABEL"..standingID, gender);
					local currentValue, threshold, rewardQuestID, hasRewardPending, tooLowLevelForParagon = C_Reputation.GetFactionParagonInfo(frame.factionID);

					if ( tooLowLevelForParagon ) then
						EmbeddedItemTooltip:SetText(PARAGON_REPUTATION_TOOLTIP_TEXT_LOW_LEVEL);
					else
						EmbeddedItemTooltip:SetText(factionStandingtext);
						local description = PARAGON_REPUTATION_TOOLTIP_TEXT:format(factionName);
						if ( hasRewardPending ) then
							local questIndex = GetQuestLogIndexByID(rewardQuestID);
							local text = GetQuestLogCompletionText(questIndex);
							if ( text and text ~= "" ) then
								description = text;
							end
						end
						EmbeddedItemTooltip:AddLine(description, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1);
						if ( not hasRewardPending ) then
							local value = mod(currentValue, threshold);
							-- show overflow if reward is pending
							if ( hasRewardPending ) then
								value = value + threshold;
							end
							GameTooltip_ShowProgressBar(EmbeddedItemTooltip, 0, threshold, value, REPUTATION_PROGRESS_FORMAT:format(value, threshold));
						end
						GameTooltip_AddQuestRewardsToTooltip(EmbeddedItemTooltip, rewardQuestID);
					end
					EmbeddedItemTooltip:Show();
				end
			--]]
			-- local paragonQuestID = select(3, C_Reputation.GetFactionParagonInfo(frame.factionID));
			-- print("info",frame.factionID,paragonQuestID,C_Reputation.GetFactionParagonInfo(frame.factionID))
			-- if paragonQuestID then
			-- 	local itemID = paragonCacheID[paragonQuestID];
			-- 	print("itemID",itemID)
			-- 	if itemID then
			-- 		local link = select(2, GetItemInfo(itemID));
			-- 		print("link",link)
			-- 		if link then
			-- 			-- Attach tooltip to the Paragon Frame
			-- 			-- GameTooltip:SetOwner(EmbeddedItemTooltip, "ANCHOR_NONE")
			-- 			-- GameTooltip:SetPoint("TOPLEFT", EmbeddedItemTooltip, "TOPRIGHT");
			-- 			GameTooltip:SetHyperlink(link);
			-- 		end
			-- 	end
			-- end
	-- 	end
	-- end);

	-- Hide Paragon Tooltip when cleared
	-- hooksecurefunc("ReputationParagonFrame_OnLeave",function(self)
	-- 	GameTooltip:Hide();
	-- end);

	-- 10.0.2
	-- https://wowpedia.fandom.com/wiki/Patch_10.0.2/API_changes#Tooltip_Changes
	if TooltipDataProcessor then
		-- TODO: maybe in future refine this to specific tooltip datas that we actually can utilize...

		-- app.PrintDebug("Tooltip Attach Process")
		TooltipDataProcessor.AddTooltipPostCall(TooltipDataProcessor.AllTypes, AttachTooltip)
		-- TooltipDataProcessor.AddTooltipPostCall(Enum_TooltipDataType.Item, OnTooltipSetItem)
	else
		GameTooltip:HookScript("OnTooltipSetQuest", AttachTooltip);
		GameTooltip:HookScript("OnTooltipSetItem", AttachTooltip);
		GameTooltip:HookScript("OnTooltipSetUnit", AttachTooltip);
		ItemRefTooltip:HookScript("OnTooltipSetQuest", AttachTooltip);
		ItemRefTooltip:HookScript("OnTooltipSetItem", AttachTooltip);
		ItemRefShoppingTooltip1:HookScript("OnTooltipSetQuest", AttachTooltip);
		ItemRefShoppingTooltip1:HookScript("OnTooltipSetItem", AttachTooltip);
		ItemRefShoppingTooltip2:HookScript("OnTooltipSetQuest", AttachTooltip);
		ItemRefShoppingTooltip2:HookScript("OnTooltipSetItem", AttachTooltip);

		GameTooltip:HookScript("OnShow", AttachTooltip);
		ItemRefTooltip:HookScript("OnShow", AttachTooltip);
		ItemRefShoppingTooltip1:HookScript("OnShow", AttachTooltip);
		ItemRefShoppingTooltip2:HookScript("OnShow", AttachTooltip);
	end
end

--hooksecurefunc("BattlePetTooltipTemplate_SetBattlePet", AttachBattlePetTooltip); -- Not ready yet.

-- Tooltip API Implementation
-- Access via AllTheThings.Modules.Tooltip
local api = {};
app.Modules.Tooltip = api;
api.AttachTooltipSearchResults = AttachTooltipSearchResults;
api.GetBestObjectIDForName = GetBestObjectIDForName;
api.OnLoad = function()
	GetCachedSearchResults = app.GetCachedSearchResults;
	SearchForLink = app.SearchForLink;
	L = app.L;
	GetCurrentMapID = app.GetCurrentMapID;
	OnLoad_CacheObjectNames();
end
api.OnReady = function()
	OnReadyHooks();
end