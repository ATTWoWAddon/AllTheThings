local app = select(2, ...);
app.GameBuildVersion = select(4, GetBuildInfo());
app.IsRetail = app.GameBuildVersion >= 110000;
app.AfterCata = app.GameBuildVersion >= 40000;
app.IsClassic = not app.IsRetail;

app.EmptyFunction = function() end;
app.EmptyTable = setmetatable({}, { __newindex = app.EmptyFunction });

-- This file was created because Blizzard likes to give Crieve heart attacks with all their API changes.
-- In the future, ATT will reference all its global APIs provided by Blizzard through our WOWAPI lib.

-- Currently, there are three flavors of World of Warcraft in operation: the Retail flavor, the Cataclysm Classic flavor, and the Classic flavor.
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
local allowLegacyAPIs = not app.IsRetail
app.WOWAPI = lib;

-- Priority API assigner.
-- Can be used to one-line assign the most relevant API to the specified WOWAPI wrapper.
---@param name string
---@param ... function|nil
local function AssignAPIWrapper(name, ...)
	for i = 1, select("#", ...) do
		local api = select(i, ...)  -- Get API Function
		if api then
			if rawget(lib, name) then
				print("Warning: existing ATT.WOWAPI replaced!", name)
			end
			lib[name] = api
			return  -- Return immediately after successful assignment.
		end
	end
	print("No valid function for", name)  -- If no valid function is found, print an error message.
end

-- System Level APIs
AssignAPIWrapper("issecretvalue", issecretvalue, function() return false; end);

-- AddOn APIs
local C_AddOns = C_AddOns
---@diagnostic disable-next-line: deprecated
AssignAPIWrapper("GetAddOnMetadata", C_AddOns and C_AddOns.GetAddOnMetadata, allowLegacyAPIs and GetAddOnMetadata);

-- ChatInfo APIs
local C_ChatInfo = C_ChatInfo
AssignAPIWrapper("SendChatMessage", C_ChatInfo and C_ChatInfo.SendChatMessage, allowLegacyAPIs and SendChatMessage);
AssignAPIWrapper("SendAddonMessage", C_ChatInfo and C_ChatInfo.SendAddonMessage, allowLegacyAPIs and SendAddonMessage);

-- Currency APIs
local C_CurrencyInfo = C_CurrencyInfo;
AssignAPIWrapper("GetCurrencyInfo", C_CurrencyInfo and C_CurrencyInfo.GetCurrencyInfo, allowLegacyAPIs and GetCurrencyInfo);
AssignAPIWrapper("GetCurrencyLink", C_CurrencyInfo and C_CurrencyInfo.GetCurrencyLink, allowLegacyAPIs and GetCurrencyLink);

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
	allowLegacyAPIs and GetFactionInfoByID);
AssignAPIWrapper("GetFactionLore",
	C_Reputation and C_Reputation.GetFactionDataByID and
	function(factionID)	local factionData = C_Reputation.GetFactionDataByID(factionID)
	return factionData and factionData.description end,
	allowLegacyAPIs and GetFactionInfoByID and
	function(factionID) return select(2, GetFactionInfoByID(factionID)) end);
AssignAPIWrapper("GetFactionBonusReputation",
	C_Reputation and C_Reputation.GetFactionDataByID and
	function(factionID)	local factionData = C_Reputation.GetFactionDataByID(factionID)
	return factionData and factionData.hasBonusRepGain end,
	allowLegacyAPIs and GetFactionInfoByID and
	function(factionID) return select(15, GetFactionInfoByID(factionID)) end);
AssignAPIWrapper("GetFactionCurrentReputation",
	C_Reputation and C_Reputation.GetFactionDataByID and
	function(factionID)	local factionData = C_Reputation.GetFactionDataByID(factionID)
	return factionData and factionData.currentStanding or 0 end,
	allowLegacyAPIs and GetFactionInfoByID and
	function(factionID) return select(6, GetFactionInfoByID(factionID)) or 0 end);
AssignAPIWrapper("GetFactionReputationCeiling",
	C_Reputation and C_Reputation.GetFactionDataByID and
	function(factionID)	local factionData = C_Reputation.GetFactionDataByID(factionID)
	return factionData and (factionData.nextReactionThreshold - factionData.currentReactionThreshold) end,
	allowLegacyAPIs and GetFactionInfoByID and
	function(factionID) local _, _, _, m, ma = GetFactionInfoByID(factionID) return ma and m and (ma - m) end);
AssignAPIWrapper("GetFactionReaction",
	C_Reputation and C_Reputation.GetFactionDataByID and
	function(factionID)	local factionData = C_Reputation.GetFactionDataByID(factionID)
	return factionData and factionData.reaction end,
	allowLegacyAPIs and GetFactionInfoByID and
	function(factionID) return select(3, GetFactionInfoByID(factionID)) end);
AssignAPIWrapper("GetFriendshipReputation", C_GossipInfo and C_GossipInfo.GetFriendshipReputation, app.EmptyFunction);
---@diagnostic enable: deprecated

-- Item APIs
local C_Item = C_Item;
local C_ItemSocketInfo = C_ItemSocketInfo;
---@diagnostic disable: deprecated
AssignAPIWrapper("GetItemCount", C_Item and C_Item.GetItemCount, allowLegacyAPIs and GetItemCount)
AssignAPIWrapper("GetItemClassInfo", C_Item and C_Item.GetItemClassInfo, allowLegacyAPIs and GetItemClassInfo)
AssignAPIWrapper("GetItemIcon", C_Item and C_Item.GetItemIconByID, allowLegacyAPIs and GetItemIcon)
AssignAPIWrapper("GetItemInfoInstant", C_Item and C_Item.GetItemInfoInstant, allowLegacyAPIs and GetItemInfoInstant)
AssignAPIWrapper("GetItemID", C_Item and C_Item.GetItemIDForItemInfo, allowLegacyAPIs and GetItemInfoInstant)
AssignAPIWrapper("GetItemInfo", C_Item and C_Item.GetItemInfo, allowLegacyAPIs and GetItemInfo)
AssignAPIWrapper("GetDetailedItemLevelInfo", C_Item and C_Item.GetDetailedItemLevelInfo, allowLegacyAPIs and GetDetailedItemLevelInfo)
AssignAPIWrapper("GetItemSpell", C_Item and C_Item.GetItemSpell, allowLegacyAPIs and GetItemSpell)
AssignAPIWrapper("GetItemSpecInfo", C_Item and C_Item.GetItemSpecInfo, allowLegacyAPIs and GetItemSpecInfo)
if app.GameBuildVersion >= 70000 then
	AssignAPIWrapper("IsArtifactRelicItem", C_ItemSocketInfo and C_ItemSocketInfo.IsArtifactRelicItem, allowLegacyAPIs and IsArtifactRelicItem)
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
-- Midnight 12.0.7 exposes merchant item details through C_MerchantFrame.GetItemInfo,
-- but item count and item links remain global APIs. C_MerchantFrame.GetNumItems and
-- C_MerchantFrame.GetItemLink do not exist, so do not gate these valid Retail APIs
-- behind the non-Retail legacy switch.
AssignAPIWrapper("GetMerchantNumItems", GetMerchantNumItems)
AssignAPIWrapper("GetMerchantItemLink", GetMerchantItemLink)

-- Party APIs
local C_PartyInfo = C_PartyInfo;
---@diagnostic disable: deprecated
AssignAPIWrapper("GetLootMethod", C_PartyInfo and C_PartyInfo.GetLootMethod, allowLegacyAPIs and GetLootMethod)
AssignAPIWrapper("SetLootMethod", C_PartyInfo and C_PartyInfo.SetLootMethod, allowLegacyAPIs and SetLootMethod)
AssignAPIWrapper("ConvertToRaid", C_PartyInfo and C_PartyInfo.ConvertToRaid, allowLegacyAPIs and ConvertToRaid)
AssignAPIWrapper("InviteUnit", C_PartyInfo and C_PartyInfo.InviteUnit, allowLegacyAPIs and InviteUnit)
AssignAPIWrapper("LeaveParty", C_PartyInfo and C_PartyInfo.LeaveParty, allowLegacyAPIs and LeaveParty)
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
AssignAPIWrapper("GetTradeSkillTexture", C_TradeSkillUI and C_TradeSkillUI.GetTradeSkillTexture, allowLegacyAPIs and GetTradeSkillTexture);
AssignAPIWrapper("GetTradeSkillDisplayName", C_TradeSkillUI and C_TradeSkillUI.GetTradeSkillDisplayName, app.EmptyFunction);

-- Specialization APIs
local C_SpecializationInfo = C_SpecializationInfo
AssignAPIWrapper("GetSpecialization", C_SpecializationInfo and C_SpecializationInfo.GetSpecialization, allowLegacyAPIs and (GetSpecialization or GetActiveTalentGroup));
AssignAPIWrapper("GetSpecializationInfo", C_SpecializationInfo and C_SpecializationInfo.GetSpecializationInfo, allowLegacyAPIs and GetSpecializationInfo);

-- Spell APIs
local C_Spell = C_Spell;

-- Warning: The API Wrapper for GetSpellLink is not completely equivalent.
-- GetSpellLink accepts two types of parameters: one is a single parameter "SpellIdentifier", and the other is two parameters "index" and "bookType".
-- Currently, only the first type is implemented.
-- The traditional GetSpellLink returns two values: SpellLink and SpellID, but all of usages only utilize SpellLink.
-- The C_Spell.GetSpellLink only returns SpellLink.
-- For performance reasons, lib.GetSpellLink only returns SpellLink.
---@diagnostic disable: deprecated
AssignAPIWrapper("GetSpellLink", C_Spell and C_Spell.GetSpellLink, allowLegacyAPIs and GetSpellLink);

-- Warning: The API Wrapper for GetSpellIcon is not completely equivalent.
-- GetSpellTexture accepts two types of parameters: one is a single parameter "SpellIdentifier", and the other is two parameters "index" and "bookType".
-- Currently, only the first type is implemented.
-- The C_Spell.GetSpellTexture returns two values: iconID and originalIconID, but all of usages only utilize iconID.
-- The traditional GetSpellTexture only returns iconID.
-- For performance reasons, lib.GetSpellIcon only returns iconID.
AssignAPIWrapper("GetSpellIcon",
	C_Spell and C_Spell.GetSpellTexture,
	allowLegacyAPIs and GetSpellTexture);

AssignAPIWrapper("GetSpellCooldown",
C_Spell and C_Spell.GetSpellCooldown and
	function(spellIdentifier) local t = C_Spell.GetSpellCooldown(spellIdentifier)
	return t and t.startTime or 0 end,
	allowLegacyAPIs and GetSpellCooldown);

-- Warning: The API Wrapper for GetSpellName is not completely equivalent.
-- GetSpellInfo accepts two types of parameters: one is a single parameter "SpellIdentifier", and the other is two parameters "index" and "bookType".
-- Currently, only the first type is implemented in C_Spell.
-- GetSpellInfo accpet both of parameters for compatibility reasons.
if app.AfterCata then
	AssignAPIWrapper("GetSpellName", C_Spell and C_Spell.GetSpellName, allowLegacyAPIs and GetSpellInfo);
else
	AssignAPIWrapper("GetSpellName", allowLegacyAPIs and GetSpellInfo);
end

-- SpellBook APIs
local C_SpellBook = C_SpellBook
AssignAPIWrapper("IsSpellKnown", C_SpellBook and C_SpellBook.IsSpellKnown, allowLegacyAPIs and IsSpellKnown);
AssignAPIWrapper("IsSpellKnownOrOverridesKnown", C_SpellBook and C_SpellBook.IsSpellInSpellBook, allowLegacyAPIs and IsSpellKnownOrOverridesKnown);
AssignAPIWrapper("IsSpellInSpellBook", C_SpellBook and C_SpellBook.IsSpellInSpellBook, allowLegacyAPIs and IsSpellKnownOrOverridesKnown);
AssignAPIWrapper("GetNumSpellTabs", C_SpellBook and C_SpellBook.GetNumSpellBookSkillLines, allowLegacyAPIs and GetNumSpellTabs);

-- Aura APIs
local C_UnitAuras = C_UnitAuras;
AssignAPIWrapper("GetPlayerAuraBySpellID",
    C_UnitAuras and C_UnitAuras.GetPlayerAuraBySpellID,
    allowLegacyAPIs and GetPlayerAuraBySpellID,
	app.EmptyFunction);

---@diagnostic enable: deprecated
