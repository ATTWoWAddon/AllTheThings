local appName, app = ...
local L = app.L;

-- Global locals
local ipairs, pairs, rawset, select, setmetatable, tonumber, tostring, type, tinsert
	= ipairs, pairs, rawset, select, setmetatable, tonumber, tostring, type, tinsert;
local C_QuestLog_IsOnQuest = C_QuestLog.IsOnQuest;

-- WoW API Cache
local GetItemID = app.WOWAPI.GetItemID;
local GetItemInfo = app.WOWAPI.GetItemInfo;
local GetItemIcon = app.WOWAPI.GetItemIcon;
local GetItemCount = app.WOWAPI.GetItemCount;
local GetFactionBonusReputation = app.WOWAPI.GetFactionBonusReputation;

-- App locals
local AssignChildren, GetRelativeValue, IsQuestFlaggedCompletedForObject, NestObject, SearchForField, SearchForFieldContainer
	= app.AssignChildren, app.GetRelativeValue, app.IsQuestFlaggedCompletedForObject, app.NestObject, app.SearchForField, app.SearchForFieldContainer;

local BestItemLinkPerItemID = setmetatable({}, { __index = function(t, id)
	if not id then return end
	local link = select(2, GetItemInfo(id));
	if link then
		rawset(t, id, link);
		return link;
	end
end });
local baseGetItemCount = function(t)
	return GetItemCount(t.itemID, true);
end;
app.ParseItemID = function(itemName)
	if type(itemName) == "number" then
		return itemName;
	else
		local itemID = tonumber(itemName);
		if tostring(itemID):match(itemName) then
			-- This was actually an item ID.
			return itemID;
		else
			-- The itemID given was actually the name or a link.
			itemID = GetItemID(itemName);
			if itemID then
				-- Oh good, it was cached by WoW.
				return itemID;
			else
				-- Oh no, gonna need to work for it.
				for id,_ in pairs(SearchForFieldContainer("itemID")) do
					local text = BestItemLinkPerItemID[id];
					if text and text:match(itemName) then
						return id;
					end
				end
			end
		end
	end
end
local collectibleAsCostForItem = function(t)
	local id = t.itemID;
	local results = SearchForField("itemIDAsCost", id);
	if results and #results > 0 then
		local costTotal = 0;
		if not t.parent or not t.parent.saved then
			for _,ref in pairs(results) do
				if ref.itemID ~= id and app.RecursiveGroupRequirementsFilter(ref) then
					if ref.key == "instanceID" or ((ref.key == "difficultyID" or ref.key == "mapID" or ref.key == "headerID") and (ref.parent and GetRelativeValue(ref.parent, "instanceID"))) then
						if costTotal < 1 then	-- This is for Keys
							costTotal = costTotal + 1;
						end
					elseif (ref.collectible and not ref.collected) or (ref.total and ref.total > ref.progress) then
						if ref.cost and type(ref.cost) == "table" then
							for k,v in ipairs(ref.cost) do
								if v[2] == id and v[1] == "i" then
									costTotal = costTotal + (v[3] or 1);
								end
							end
						end
						if ref.providers then
							for k,v in ipairs(ref.providers) do
								if v[2] == id and v[1] == "i" then
									if ref.objectiveID then
										costTotal = costTotal + (ref.objectiveCost or 0);
									else
										costTotal = costTotal + 1;
									end
								end
							end
						end
					end
				end
			end
		end
		t.costTotal = costTotal;
		return costTotal > 0;
	elseif t.simplemeta then
		-- If no references to the item were used as a cost evaluation, then simplify the meta.
		setmetatable(t, t.simplemeta);
		return false;
	end
end;
local collectedAsCostForItem = function(t)
	if t.costTotal and t.costTotal > 0 then
		return t.GetItemCount(t) >= t.costTotal;
	end
end;
local collectibleAsQuest = function(t)
	if app.Settings.Collectibles.Quests then
		if (not t.repeatable and not t.isBreadcrumb) or C_QuestLog_IsOnQuest(t.questID) then
			return true;
		end
	end
end
local isCollectibleTransmog = function(t)
	if t.f and app.Settings:GetFilterForTransmogBase(t.f) then
		if t.sourceID then
			return true;
		end
		local itemID = t.itemID;
		if itemID and t.collectible ~= false then
			t.missingSourceID = true;
		end
	end
end
local collectedAsTransmog = function(t)
	local sourceID = t.sourceID;
	if sourceID and app.Settings.Collectibles.Transmog then
		-- If it's a BOE we can collect it on this character.
		local id, b = t.itemID, t.b;
		if not b or b == 2 or b == 3 then
			-- This item is BOE. You CAN collect this on this character! (but not from a quest)
			return app.SetCollected(t, "Transmog", sourceID, GetItemCount(id, true) > 0);
		elseif app.Settings:GetFilterForTransmog(t.f) or (t.filterForRWP and app.Settings:GetFilterForTransmog(t.filterForRWP)) then
			-- This character matches requirements
			if GetItemCount(id, true) > 0 then
				-- You kept this item. Nice!
				return app.SetCollected(t, "Transmog", sourceID, true);
			else
				-- Check to see if this item was a quest reward.
				local searchResults = SearchForField("itemID", id);
				if searchResults and #searchResults > 0 then
					for i,o in ipairs(searchResults) do
						if o.itemID == id then
							if ((o.key == "questID" and o.saved) or (o.parent and o.parent.key == "questID" and o.parent.saved)) and app.RecursiveDefaultCharacterRequirementsFilter(o) then
								return app.SetCollected(t, "Transmog", sourceID, true);
							end
						end
					end
					return app.SetCollected(t, "Transmog", sourceID, false);
				end
			end
		else
			-- This character does NOT match requirements and the item is BOP. You can't collect these on this character. :(
			return app.SetCollected(t, "Transmog", sourceID, false);
		end
	end
end;
local itemFields = {
	["text"] = function(t)
		return t.link;
	end,
	["icon"] = function(t)
		return GetItemIcon(t.itemID) or 134400;
	end,
	["link"] = function(t)
		return BestItemLinkPerItemID[t.itemID];
	end,
	["name"] = function(t)
		local link = t.link;
		return link and GetItemInfo(link);
	end,
	["iLvl"] = function(t)
		local link = t.link;
		return link and select(4, GetItemInfo(link));
	end,
	["f"] = function(t)
		if t.questID then return app.FilterConstants.QUEST_ITEMS; end
		local results = SearchForField("itemIDAsCost", t.itemID);
		if results and #results > 0 then
			return app.FilterConstants.QUEST_ITEMS;
		end
	end,
	["tsm"] = function(t)
		return ("i:%d"):format(t.itemID);
	end,
	["GetItemCount"] = function(t)
		return baseGetItemCount;
	end,
	RefreshCollectionOnly = true,
	["collectible"] = function(t)
		return t.collectibleAsCost;
	end,
	["collected"] = function(t)
		return t.collectedAsCost;
	end,
	["collectibleAsCost"] = collectibleAsCostForItem,	-- These two references can get replaced/removed
	["collectedAsCost"] = collectedAsCostForItem,
};
app.CreateItem = app.CreateClass("Item", "itemID", itemFields,
"AsTransmog", {
	collectible = app.GameBuildVersion >= 40000 and function(t)
		if t.collectibleAsCost then return true; end
		if app.Settings.OnlyNotTrash and (not t.q or t.q < 2) then return false; end
		return app.Settings.Collectibles.Transmog;
	end or function(t)
		if t.collectibleAsCost then return true; end
		if app.Settings.Collectibles.Transmog then
			if app.Settings.OnlyRWP and not t.rwp then return false; end
			if app.Settings.OnlyNotTrash and (not t.q or t.q < 2) then return false; end
			return true;
		end
	end,
	collected = function(t)
		if t.collectedAsCost == false then
			return;
		end
		return collectedAsTransmog(t);
	end,
	["description"] = app.GameBuildVersion > 40000 and function(t)
		return t.collectible and "Blizzard isn't detecting white/grey quality transmogs as collectible, so for the meantime, send this item to an alt to hold on to until they fix it. If its soulbound and from a quest, you're probably okay to vendor it.";
	end or nil,
}, isCollectibleTransmog,
"WithQuest", {
	collectible = function(t)
		return t.collectibleAsCost or collectibleAsQuest(t);
	end,
	collected = function(t)
		return IsQuestFlaggedCompletedForObject(t) or t.collectedAsCost;
	end,
	trackable = app.ReturnTrue,
	saved = function(t)
		return IsQuestFlaggedCompletedForObject(t) == 1;
	end
}, (function(t) return t.questID; end),
"WithFaction", {
	collectible = function(t)
		return t.collectibleAsCost or app.Settings.Collectibles.Reputations;
	end,
	collected = function(t)
		if t.collectedAsCost == false then
			return 0;
		end
		-- This is used by reputation tokens. (turn in items)
		if app.CurrentCharacter.Factions[t.factionID] then return 1; end
		if app.Settings.AccountWide.Reputations and ATTAccountWideData.Factions[t.factionID] then return 2; end
	end,
}, (function(t) return t.factionID; end));

-- Heirloom Lib
if C_Heirloom and app.GameBuildVersion >= 30000 then
	-- Heirloom API is available. Awesome!
	local C_Heirloom_GetHeirloomInfo = C_Heirloom.GetHeirloomInfo;
	local C_Heirloom_GetHeirloomLink = C_Heirloom.GetHeirloomLink;
	local C_Heirloom_PlayerHasHeirloom = C_Heirloom.PlayerHasHeirloom;
	local C_Heirloom_GetHeirloomMaxUpgradeLevel = C_Heirloom.GetHeirloomMaxUpgradeLevel;
	local heirloomIDs = {};
	local CreateHeirloomUnlock = app.CreateClass("HeirloomUnlock", "heirloomUnlockID", {
		name = function(t)
			return L["HEIRLOOM_TEXT"];
		end,
		icon = function(t)
			return app.asset("Weapon_Type_Heirloom");
		end,
		description = function(t)
			return L["HEIRLOOM_TEXT_DESC"];
		end,
		RefreshCollectionOnly = true,
		collectible = function(t)
			return app.Settings.Collectibles.Heirlooms;
		end,
		collected = function(t)
			return C_Heirloom_PlayerHasHeirloom(t.heirloomUnlockID);
		end,
	});

	-- Clone base item fields and extend the properties.
	local heirloomFields = {
		icon = function(t)
			return select(4, C_Heirloom_GetHeirloomInfo(t.heirloomID)) or GetItemIcon(t.heirloomID);
		end,
		link = function(t)
			return C_Heirloom_GetHeirloomLink(t.heirloomID) or select(2, GetItemInfo(t.heirloomID));
		end,
		itemID = function(t)
			return t.heirloomID;
		end
	};

	-- Are heirloom upgrades available? (6.1.0.19445)
	local gameBuildVersion = app.GameBuildVersion;
	if gameBuildVersion > 60100 then
		-- Extend the heirloom lib to account for upgrade levels.
		local armorTextures = {
			1097737,
			1097738,
			960150,
			929921,
			1805932,
			4673926,
		};
		local weaponTextures = {
			1097739,
			1097740,
			353645,
			353136,
			314894,
			135718,
		};

		local weaponFilterIDs = { 20, 29, 28, 21, 22, 23, 24, 25, 26, 50, 57, 34, 35, 27, 33, 32, 31 };
		local hierloomLevelFields = {
			["key"] = function(t)
				return "heirloomLevelID";
			end,
			["level"] = function(t)
				return 1;
			end,
			["name"] = function(t)
				t.name = HEIRLOOM_UPGRADE_TOOLTIP_FORMAT:format(t.level, t.levelMax);
				return t.name;
			end,
			["icon"] = function(t)
				return t.isWeapon and weaponTextures[t.level] or armorTextures[t.level];
			end,
			["description"] = function(t)
				return L["HEIRLOOMS_UPGRADES_DESC"];
			end,
			RefreshCollectionOnly = true,
			["collectible"] = function(t)
				return app.Settings.Collectibles.Heirlooms and app.Settings.Collectibles.HeirloomUpgrades;
			end,
			["collected"] = function(t)
				local itemID = t.heirloomLevelID;
				if itemID then
					if t.level <= (ATTAccountWideData.HeirloomRanks[itemID] or 0) then return true; end
					local level = select(5, C_Heirloom_GetHeirloomInfo(itemID));
					if level then
						ATTAccountWideData.HeirloomRanks[itemID] = level;
						if t.level <= level then return true; end
					end
				end
			end,
			["trackable"] = app.ReturnTrue,
			["isWeapon"] = function(t)
				local isWeapon = t.f and contains(weaponFilterIDs, t.f);
				t.isWeapon = isWeapon;
				return isWeapon;
			end,
		};
		local CreateHeirloomLevel = app.CreateClass("HeirloomLevel", "heirloomLevelID", hierloomLevelFields);
		heirloomFields.isWeapon = hierloomLevelFields.isWeapon;
		heirloomFields.saved = function(t)
			return t.collected == 1;
		end

		-- Will retrieve all the cached entries by itemID for existing heirlooms and generate their
		-- upgrade levels into the respective upgrade tokens
		app.CacheHeirlooms = function()
			-- app.PrintDebug("CacheHeirlooms",#heirloomIDs)
			if #heirloomIDs < 1 then return; end

			-- Setup upgrade tokens that contain levels for the heirlooms. Order matters.
			-- Ranks 1 & 2 were added with WOD (6.1.0.19445)
			local armorTokenItemIDs = {
				122338,	-- Rank 1: Ancient Heirloom Armor Casing
				122340,	-- Rank 2: Timeworn Heirloom Armor Casing
			};
			local weaponTokenItemIDs = {
				122339,	-- Rank 1: Ancient Heirloom Scabbard
				122341,	-- Rank 2: Timeworn Heirloom Scabbard
			};

			-- Rank 3 was added with Legion (7.2.5.24076)
			if gameBuildVersion > 70205 then
				tinsert(armorTokenItemIDs, 151614);		-- Weathered Heirloom Armor Casing
				tinsert(weaponTokenItemIDs, 151615);		-- Weathered Heirloom Scabbard

				-- Rank 4 was added with BFA (8.1.5.29701)
				if gameBuildVersion > 80105 then
					tinsert(armorTokenItemIDs, 167731);		-- Battle-Hardened Heirloom Armor Casing
					tinsert(weaponTokenItemIDs, 167732);		-- Battle-Hardened Heirloom Scabbard

					-- Rank 5 was added with Shadowlands (9.1.5.40871)
					if gameBuildVersion > 90105 then
						tinsert(armorTokenItemIDs, 187997);		-- Eternal Heirloom Armor Casing
						tinsert(weaponTokenItemIDs, 187998);		-- Eternal Heirloom Scabbard

						-- Rank 6 was added with Dragonflight (10.1.0.49407)
						if gameBuildVersion > 100100 then
							tinsert(armorTokenItemIDs, 204336);		-- Awakened Heirloom Armor Casing
							tinsert(weaponTokenItemIDs, 204337);		-- Awakened Heirloom Scabbard
						end
					end
				end
			end

			-- Build headers that will contain each type.
			local armorTokens, weaponTokens = {}, {};
			for i=#armorTokenItemIDs,1,-1 do
				tinsert(armorTokens, app.CreateItem(armorTokenItemIDs[i], {
					collectible = false,
					g = {},
				}));
				tinsert(weaponTokens, app.CreateItem(weaponTokenItemIDs[i], {
					collectible = false,
					g = {},
				}));
			end


			-- for each cached heirloom, push a copy of itself with respective upgrade level under the respective upgrade token
			local Search = app.SearchForObject;
			local uniques, heirloom, upgrades = {}, nil, nil;
			for _,itemID in ipairs(heirloomIDs) do
				if not uniques[itemID] then
					uniques[itemID] = true;
					heirloom = Search("itemID", itemID, "field");
					if heirloom then
						upgrades = C_Heirloom_GetHeirloomMaxUpgradeLevel(itemID);
						if upgrades and upgrades > 0 then
							local meta = { __index = heirloom };
							local tokenType = heirloom.isWeapon and weaponTokens or armorTokens;
							for i=1,upgrades,1 do
								-- Create a non-collectible version of the heirloom item itself to hold the upgrade within the token
								tinsert(tokenType[upgrades + 1 - i].g,
								setmetatable({ collectible = false, g = {
									CreateHeirloomLevel({
										heirloomLevelID = itemID,
										levelMax = upgrades,
										level = i,
										f = heirloom.f,
										e = heirloom.e,
										u = heirloom.u,
									})
								}}, meta));
							end
						end
					end
				end
			end

			-- build groups for each upgrade token
			-- and copy the set of upgrades into the cached versions of the upgrade tokens so they therefore exist in the main list
			-- where the sources of the upgrade tokens exist
			for _,item in ipairs(armorTokens) do
				for _,token in ipairs(SearchForField("itemID", item.itemID)) do
					-- ensure the tokens do not have a modID attached
					token.modID = nil;
					token.modItemID = nil;
					if not token.sym then
						for _,heirloom in ipairs(item.g) do
							NestObject(token, heirloom, true);
						end
						AssignChildren(token);
					end
				end
			end
			for _,item in ipairs(weaponTokens) do
				for _,token in ipairs(SearchForField("itemID", item.itemID)) do
					-- ensure the tokens do not have a modID attached
					token.modID = nil;
					token.modItemID = nil;
					if not token.sym then
						for _,heirloom in ipairs(item.g) do
							NestObject(token, heirloom, true);
						end
						AssignChildren(token);
					end
				end
			end

			wipe(heirloomIDs);
		end
	end

	-- Heirlooms are containers for unlocks & upgrade levels.
	local heirloomDefinition = { "Item", "Heirloom", "heirloomID", heirloomFields };
	if gameBuildVersion < 40000 then
		-- Prior to Cataclysm, we need to collect transmog the same way as we do for items.
		tinsert(heirloomDefinition, "AsTransmog");
		tinsert(heirloomDefinition, {
			collectible = function(t)
				return t.collectibleAsCost or app.Settings.Collectibles.Transmog;
			end,
			collected = function(t)
				if t.collectedAsCost == false then
					return;
				end
				return collectedAsTransmog(t);
			end,
			description = function()
				return "This item also has a sourceID with it, keep at least one somewhere on your account. I'm not sure if Blizzard is planning on deprecating this completely before transmog comes out or not!\n\n  - Crieve";
			end,
		});
		tinsert(heirloomDefinition, isCollectibleTransmog);
	else
		-- After the Cataclysm, we can use the transmog API.
		local AccountSources;
		tinsert(heirloomDefinition, "AsTransmog");
		tinsert(heirloomDefinition, {
			collectible = function(t)
				return t.collectibleAsCost or app.Settings.Collectibles.Transmog;
			end,
			collected = function(t)
				if t.collectedAsCost == false then
					return;
				end
				return AccountSources[t.sourceID];
			end,
		});
		tinsert(heirloomDefinition, isCollectibleTransmog);
		app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
			AccountSources = accountWideData.Sources;
			if not AccountSources then
				AccountSources = {};
				accountWideData.Sources = AccountSources;
			end
		end);
	end

	-- Faction Extension.
	tinsert(heirloomDefinition, "WithFaction");
	tinsert(heirloomDefinition, {
		collectible = function(t)
			return t.collectibleAsCost or app.Settings.Collectibles.Reputations;
		end,
		collected = function(t)
			if t.collectedAsCost == false then
				return 0;
			end
			if t.repeatable then
				return (app.CurrentCharacter.Factions[t.factionID] and 1)
					or (ATTAccountWideData.Factions[t.factionID] and 2);
			else
				-- This is used for the Grand Commendations unlocking Bonus Reputation
				if ATTAccountWideData.FactionBonus[t.factionID] then return 1; end
				if GetFactionBonusReputation(t.factionID) then
					ATTAccountWideData.FactionBonus[t.factionID] = 1;
					return 1;
				end
			end
			-- This is used by reputation tokens. (turn in items)
			if app.CurrentCharacter.Factions[t.factionID] then return 1; end
			if app.Settings.AccountWide.Reputations and ATTAccountWideData.Factions[t.factionID] then return 2; end
		end,
	});
	tinsert(heirloomDefinition, function(t) return t.factionID; end);

	local CreateHeirloom = app.ExtendClass(unpack(heirloomDefinition));
	app.CreateHeirloom = function(id, t)
		t = CreateHeirloom(id, t);
		--t.b = 2;	-- Heirlooms are always BoA

		-- unlocking the heirloom is the only thing contained in the heirloom
		local unlock = CreateHeirloomUnlock(id, { e = t.e, u = t.u });
		unlock.parent = t;
		t.g = { unlock }
		tinsert(heirloomIDs, id);
		return t;
	end
else
	-- No difference between an item and an heirloom in classic, yet.
	app.CreateHeirloom = function(id, t)
		return app.CreateItem(id, t);
	end
end