local app = select(2, ...);
app.GameBuildVersion = select(4, GetBuildInfo());
app.IsForever = app.GameBuildVersion >= 16001 and app.GameBuildVersion < 20000;
app.IsRetail = app.GameBuildVersion >= 110000 or app.IsForever;
app.IsClassic = not app.IsRetail;

app.EmptyFunction = function() end;
app.EmptyTable = setmetatable({}, { __newindex = app.EmptyFunction });

-- This file was created because Blizzard likes to give Crieve heart attacks with all their API changes.
-- In the future, ATT will reference all its global APIs provided by Blizzard through our WOWAPI lib.

-- ATT supports Retail, Classic clients and Forever through the same API abstraction.
-- Blizzard often restructures APIs in the Retail flavor of World of Warcraft first, and then introduces these changes to other flavors.
-- These restructuring alters function names, parameters, and adds prefixes, resulting in significant maintenance work for addons across different flavors.
-- This file was created to alleviate the burden of API conversion and to provide a stable abstraction layer.
-- Unless there are significant performance impacts, this API will strive to maintain backward compatibility and incorporate the latest Blizzard APIs.
-- In the event of API changes, it is expected that a transition period of three to six months will be provided to allow developers to transition to the new API.
-- Unless Blizzard disables a specific API during an update, making it impossible to implement in any way, API changes will not take effect immediately.

local lib = setmetatable({}, {
	__index = function(t, key)
		-- Blizzard tries accessing ToDebugString on every table randomly because no one knows why
		if key == "ToDebugString" then
			return
		end
		error("API " .. key .. " not available! Please yell at Runaway or Crieve to add it to the WoW API Wrappers function");
	end
});

-- Local cache
local select,type,rawget
	= select,type,rawget
app.WOWAPI = lib;

-- Priority API assigner.
-- Can be used to one-line assign the most relevant API to the specified WOWAPI wrapper.
---@param name string # Name under which the selected function is stored in `app.WOWAPI`.
---@param ... function|nil # Candidate API functions in priority order; the first available function is selected.
local function AssignAPIWrapper(name, ...)
	for i = 1, select("#", ...) do
		local api = select(i, ...)  -- Get API Function
		if api then
			if rawget(lib, name) then
				app.print("Warning: existing ATT.WOWAPI replaced!", name)
			end
			lib[name] = api
			return  -- Return immediately after successful assignment.
		end
	end
	app.print("No valid function for", name)  -- If no valid function is found, print an error message.
end

-- System Level APIs
AssignAPIWrapper("issecretvalue", issecretvalue, function() return false; end);

-- Battle.net APIs
local C_BattleNet = C_BattleNet;
lib.SendGameData = false; -- Optional when the client has no game-data transport.
AssignAPIWrapper("SendGameData", C_BattleNet and C_BattleNet.SendGameData, BNSendGameData);

-- ChatInfo APIs
local C_ChatInfo = C_ChatInfo
AssignAPIWrapper("SendChatMessage", C_ChatInfo and C_ChatInfo.SendChatMessage, SendChatMessage);
AssignAPIWrapper("SendAddonMessage", C_ChatInfo and C_ChatInfo.SendAddonMessage, SendAddonMessage);

-- Currency APIs
local C_CurrencyInfo = C_CurrencyInfo;
---@diagnostic disable-next-line: deprecated
AssignAPIWrapper("GetCoinTextureString", C_CurrencyInfo and C_CurrencyInfo.GetCoinTextureString, GetCoinTextureString);
AssignAPIWrapper("GetCurrencyInfo", C_CurrencyInfo and C_CurrencyInfo.GetCurrencyInfo, GetCurrencyInfo);
AssignAPIWrapper("GetCurrencyLink", C_CurrencyInfo and C_CurrencyInfo.GetCurrencyLink, GetCurrencyLink);

-- Faction APIs
local C_Reputation = C_Reputation;
local C_GossipInfo = C_GossipInfo;

-- Here’s a small technique being used: (object1 and object2 and function).
-- If object1 exists and object2 exists, then the function is passed.
-- The object can be table, function, or anything as long as they are not nil or false, it will continue to the next evaluation.
---@diagnostic disable: deprecated
AssignAPIWrapper("GetFactionName",
	C_Reputation and C_Reputation.GetFactionDataByID and
	function(factionID)	local factionData = C_Reputation.GetFactionDataByID(factionID)
	return factionData and factionData.name end,
	GetFactionInfoByID);
AssignAPIWrapper("GetFactionLore",
	C_Reputation and C_Reputation.GetFactionDataByID and
	function(factionID)	local factionData = C_Reputation.GetFactionDataByID(factionID)
	return factionData and factionData.description end,
	GetFactionInfoByID and
	function(factionID) return select(2, GetFactionInfoByID(factionID)) end);
AssignAPIWrapper("GetFactionBonusReputation",
	C_Reputation and C_Reputation.GetFactionDataByID and
	function(factionID)	local factionData = C_Reputation.GetFactionDataByID(factionID)
	return factionData and factionData.hasBonusRepGain end,
	GetFactionInfoByID and
	function(factionID) return select(15, GetFactionInfoByID(factionID)) end);
AssignAPIWrapper("GetFactionCurrentReputation",
	C_Reputation and C_Reputation.GetFactionDataByID and
	function(factionID)	local factionData = C_Reputation.GetFactionDataByID(factionID)
	return factionData and factionData.currentStanding or 0 end,
	GetFactionInfoByID and
	function(factionID) return select(6, GetFactionInfoByID(factionID)) or 0 end);
AssignAPIWrapper("GetFactionReputationCeiling",
	C_Reputation and C_Reputation.GetFactionDataByID and
	function(factionID)	local factionData = C_Reputation.GetFactionDataByID(factionID)
	return factionData and (factionData.nextReactionThreshold - factionData.currentReactionThreshold) end,
	GetFactionInfoByID and
	function(factionID) local _, _, _, m, ma = GetFactionInfoByID(factionID) return ma and m and (ma - m) end);
AssignAPIWrapper("GetFactionReaction",
	C_Reputation and C_Reputation.GetFactionDataByID and
	function(factionID)	local factionData = C_Reputation.GetFactionDataByID(factionID)
	return factionData and factionData.reaction end,
	GetFactionInfoByID and
	function(factionID) return select(3, GetFactionInfoByID(factionID)) end);
AssignAPIWrapper("GetFriendshipReputation", C_GossipInfo and C_GossipInfo.GetFriendshipReputation, app.EmptyFunction);
---@diagnostic enable: deprecated

-- Item APIs
local C_Item = C_Item;
local C_ItemSocketInfo = C_ItemSocketInfo;
---@diagnostic disable: deprecated
AssignAPIWrapper("GetItemCount", C_Item and C_Item.GetItemCount, GetItemCount)
AssignAPIWrapper("GetItemClassInfo", C_Item and C_Item.GetItemClassInfo, GetItemClassInfo)
AssignAPIWrapper("GetItemSubClassInfo", C_Item and C_Item.GetItemSubClassInfo, GetItemSubClassInfo)
AssignAPIWrapper("GetItemIcon", C_Item and C_Item.GetItemIconByID, GetItemIcon)
AssignAPIWrapper("GetItemInfoInstant", C_Item and C_Item.GetItemInfoInstant, GetItemInfoInstant)
AssignAPIWrapper("GetItemID", C_Item and C_Item.GetItemIDForItemInfo, GetItemInfoInstant)
AssignAPIWrapper("GetItemInfo", C_Item and C_Item.GetItemInfo, GetItemInfo)
AssignAPIWrapper("GetItemSpell", C_Item and C_Item.GetItemSpell, GetItemSpell)
AssignAPIWrapper("GetDetailedItemLevelInfo", C_Item and C_Item.GetDetailedItemLevelInfo, GetDetailedItemLevelInfo)
AssignAPIWrapper("GetItemSpecInfo", C_Item and C_Item.GetItemSpecInfo, GetItemSpecInfo)
if app.GameBuildVersion >= 70000 then
	AssignAPIWrapper("IsArtifactRelicItem", C_ItemSocketInfo and C_ItemSocketInfo.IsArtifactRelicItem, IsArtifactRelicItem)
end
if C_Item and C_Item.GetItemLinkByGUID then
	lib.GetItemLinkByGUID = C_Item.GetItemLinkByGUID;
else
	lib.GetItemLinkByGUID = function(item)
		return item;
	end
end
---@diagnostic enable: deprecated

-- Merchant APIs
local C_MerchantFrame = C_MerchantFrame;
---@diagnostic disable: deprecated
AssignAPIWrapper("GetMerchantNumItems", C_MerchantFrame and C_MerchantFrame.GetNumItems, GetMerchantNumItems)
AssignAPIWrapper("GetMerchantItemLink", C_MerchantFrame and C_MerchantFrame.GetItemLink, GetMerchantItemLink)
---@diagnostic enable: deprecated

-- Party APIs
local C_PartyInfo = C_PartyInfo;
---@diagnostic disable: deprecated
AssignAPIWrapper("GetLootMethod", C_PartyInfo and C_PartyInfo.GetLootMethod, GetLootMethod)
AssignAPIWrapper("SetLootMethod", C_PartyInfo and C_PartyInfo.SetLootMethod, SetLootMethod)
AssignAPIWrapper("ConvertToRaid", C_PartyInfo and C_PartyInfo.ConvertToRaid, ConvertToRaid)
AssignAPIWrapper("InviteUnit", C_PartyInfo and C_PartyInfo.InviteUnit, InviteUnit)
AssignAPIWrapper("LeaveParty", C_PartyInfo and C_PartyInfo.LeaveParty, LeaveParty)
---@diagnostic enable: deprecated

-- Quest APIs
local C_QuestLog = C_QuestLog;
AssignAPIWrapper("IsQuestFlaggedCompletedOnAccount",
	C_QuestLog and C_QuestLog.IsQuestFlaggedCompletedOnAccount,
	function(questID) return app.IsAccountCached("Quests",questID) end)
AssignAPIWrapper("GetQuestRewardCurrencies", C_QuestLog and C_QuestLog.GetQuestRewardCurrencies, app.EmptyFunction)

-- C_TradeSkillUI
local C_TradeSkillUI = C_TradeSkillUI;

-- Warning: Blizzard introduced C_TradeSkillUI.GetTradeSkillTexture in Patch 4.0.1, and I have not found any information on when GetTradeSkillTexture was deprecated or removed, as well as its parameters or return values.
-- Therefore, lib.GetTradeSkillTexture will always use the implementation of C_TradeSkillUI.GetTradeSkillTexture in all cases.
-- As a result, the fallback to GetTradeSkillTexture has not been tested and is not guaranteed to work.
---@diagnostic disable-next-line: deprecated, undefined-global
AssignAPIWrapper("GetTradeSkillTexture", C_TradeSkillUI and C_TradeSkillUI.GetTradeSkillTexture, GetTradeSkillTexture);
AssignAPIWrapper("GetTradeSkillDisplayName", C_TradeSkillUI and C_TradeSkillUI.GetTradeSkillDisplayName, app.EmptyFunction);
local GetTradeSkillLineForRecipe = C_TradeSkillUI and C_TradeSkillUI.GetTradeSkillLineForRecipe;
AssignAPIWrapper("GetProfessionInfoByRecipeID", C_TradeSkillUI and C_TradeSkillUI.GetProfessionInfoByRecipeID,
	GetTradeSkillLineForRecipe and
	--- Adapts the legacy recipe skill-line result to the modern profession-info table shape.
	---@param recipeID number # Recipe spell ID.
	---@return {professionID: number}|nil professionInfo # Nil when the recipe has no skill line.
	function(recipeID)
		local professionID = GetTradeSkillLineForRecipe(recipeID);
		if professionID then return { professionID = professionID }; end
	end or app.EmptyFunction);
AssignAPIWrapper("IsTradeSkillLinked", C_TradeSkillUI and C_TradeSkillUI.IsTradeSkillLinked, IsTradeSkillLinked);

-- Specialization APIs
local C_SpecializationInfo = C_SpecializationInfo
AssignAPIWrapper("GetSpecialization", C_SpecializationInfo and C_SpecializationInfo.GetSpecialization, GetSpecialization or GetActiveTalentGroup);
AssignAPIWrapper("GetSpecializationInfo", C_SpecializationInfo and C_SpecializationInfo.GetSpecializationInfo, GetSpecializationInfo);

-- Spell APIs
local C_Spell = C_Spell;

-- Warning: The API Wrapper for GetSpellLink is not completely equivalent.
-- GetSpellLink accepts two types of parameters: one is a single parameter "SpellIdentifier", and the other is two parameters "index" and "bookType".
-- Currently, only the first type is implemented.
-- The traditional GetSpellLink returns two values: SpellLink and SpellID, but all of usages only utilize SpellLink.
-- The C_Spell.GetSpellLink only returns SpellLink.
-- For performance reasons, lib.GetSpellLink only returns SpellLink.
---@diagnostic disable: deprecated
AssignAPIWrapper("GetSpellLink", C_Spell and C_Spell.GetSpellLink, GetSpellLink);

-- Warning: The API Wrapper for GetSpellIcon is not completely equivalent.
-- GetSpellTexture accepts two types of parameters: one is a single parameter "SpellIdentifier", and the other is two parameters "index" and "bookType".
-- Currently, only the first type is implemented.
-- The C_Spell.GetSpellTexture returns two values: iconID and originalIconID, but all of usages only utilize iconID.
-- The traditional GetSpellTexture only returns iconID.
-- For performance reasons, lib.GetSpellIcon only returns iconID.
AssignAPIWrapper("GetSpellIcon",
	C_Spell and C_Spell.GetSpellTexture,
	GetSpellTexture);

AssignAPIWrapper("GetSpellCooldown",
C_Spell and C_Spell.GetSpellCooldown and
	function(spellIdentifier) local t = C_Spell.GetSpellCooldown(spellIdentifier)
	return t and t.startTime or 0 end,
	GetSpellCooldown);

AssignAPIWrapper("GetSpellName",
	C_Spell and C_Spell.GetSpellName,
	GetSpellInfo);

-- GetSpellRank was removed in 11.0
AssignAPIWrapper("GetSpellRank", GetSpellRank, app.EmptyFunction)

-- These two functions behave drastically-differently. They are not a direct swap without proper handling
-- AssignAPIWrapper("GetSpellInfo", C_Spell and C_Spell.GetSpellInfo, GetSpellInfo)

-- SpellBook APIs
local C_SpellBook = C_SpellBook
AssignAPIWrapper("IsSpellKnown", C_SpellBook and C_SpellBook.IsSpellKnown , IsSpellKnown);
AssignAPIWrapper("IsSpellKnownOrOverridesKnown", C_SpellBook and C_SpellBook.IsSpellInSpellBook , IsSpellKnownOrOverridesKnown);
AssignAPIWrapper("GetNumSpellTabs", C_SpellBook and C_SpellBook.GetNumSpellBookSkillLines, GetNumSpellTabs);
AssignAPIWrapper("GetSpellTabInfo", C_SpellBook and C_SpellBook.GetSpellBookSkillLineInfo, GetSpellTabInfo)

-- Aura APIs
local C_UnitAuras = C_UnitAuras;
AssignAPIWrapper("GetPlayerAuraBySpellID",
	C_UnitAuras and C_UnitAuras.GetPlayerAuraBySpellID,
	GetPlayerAuraBySpellID,
	app.EmptyFunction);

---@diagnostic enable: deprecated

---@diagnostic disable: deprecated
-- AddOn metadata APIs
local C_AddOns = C_AddOns;
AssignAPIWrapper("GetAddOnMetadata", C_AddOns and C_AddOns.GetAddOnMetadata, GetAddOnMetadata);

-- Chat UI APIs
local ChatFrameUtil = ChatFrameUtil;
lib.InsertChatLink = false; -- Optional when the client has no chat insertion API.
AssignAPIWrapper("InsertChatLink", ChatFrameUtil and ChatFrameUtil.InsertLink, ChatEdit_InsertLink);
AssignAPIWrapper("DisplayTimePlayed", ChatFrameUtil and ChatFrameUtil.DisplayTimePlayed, ChatFrame_DisplayTimePlayed);

-- Replace the client entry point as well as the wrapper so Blizzard's own
-- TIME_PLAYED_MSG handler observes ATT's suppression of programmatic requests.
lib.WrapDisplayTimePlayed = function(handler)
	local owner, key;
	if ChatFrameUtil and ChatFrameUtil.DisplayTimePlayed then
		owner, key = ChatFrameUtil, "DisplayTimePlayed";
	elseif ChatFrame_DisplayTimePlayed then
		owner, key = _G, "ChatFrame_DisplayTimePlayed";
	else
		return false;
	end
	local original = owner[key];
	local wrapped = function(...) return handler(original, ...); end;
	owner[key] = wrapped;
	lib.DisplayTimePlayed = wrapped;
	return true;
end;

-- Merchant information uses the modern table contract on every client.
AssignAPIWrapper("GetMerchantItemInfo",
	C_MerchantFrame and C_MerchantFrame.GetItemInfo,
	GetMerchantItemInfo and function(index)
		local name, texture, price, stackCount, numAvailable, isPurchasable, isUsable, hasExtendedCost = GetMerchantItemInfo(index);
		return {
			name = name, texture = texture, price = price, stackCount = stackCount,
			numAvailable = numAvailable, isPurchasable = isPurchasable,
			isUsable = isUsable, hasExtendedCost = hasExtendedCost,
		};
	end);

-- ATT's remaining-time label uses abbreviated units, at most two terms,
-- and truncates fractional seconds, matching its former SecondsToTime use.
local RemainingTimeFormatter;
AssignAPIWrapper("SecondsToTime",
	SecondsFormatter and SecondsFormatterMixin and CreateFromMixins and function(seconds)
		seconds = math.floor(seconds);
		if seconds <= 0 then return ""; end
		if not RemainingTimeFormatter then
			RemainingTimeFormatter = CreateFromMixins(SecondsFormatterMixin);
			RemainingTimeFormatter:Init(0, SecondsFormatter.Abbreviation.Truncate, false, false, false);
		end
		return RemainingTimeFormatter:Format(seconds);
	end,
	SecondsToTime);

---@diagnostic enable: deprecated
