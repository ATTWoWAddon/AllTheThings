local app = select(2, ...);
app.GameBuildVersion = select(4, GetBuildInfo());
app.IsRetail = app.GameBuildVersion >= 100000;
app.AfterCata = app.GameBuildVersion >= 40000;
app.IsClassic = not app.IsRetail;

-- This file was created because Blizzard likes to give Crieve heart attacks with all their API changes.
-- In the future, ATT will reference all its global APIs provided by Blizzard through out WOWAPI lib.

-- Currently, there are three flavors of World of Warcraft in operation: the Retail flavor, the Cataclysm Classic flavor, and the Classic flavor.
-- Blizzard often restructures APIs in the Retail flavor of World of Warcraft first, and then introduces these changes to other flavors.
-- These restructuring alters function names, parameters, and adds prefixes, resulting in significant maintenance work for addons across different flavors.
-- This file was created to alleviate the burden of API conversion and to provide a stable abstraction layer.
-- Unless there are significant performance impacts, this API will strive to maintain backward compatibility and incorporate the latest Blizzard APIs.
-- In the event of API changes, it is expected that a transition period of three to six months will be provided to allow developers to transition to the new API.
-- Unless Blizzard disables a specific API during an update, making it impossible to implement in any way, API changes will not take effect immediately.

local lib = setmetatable({}, {
	__index = function(t, key)
		error("API " .. key .. " not available! Please yell at Runaway or Crieve to add it to the WoW API Wrappers function");
	end
});

-- Local cache
local select,type,rawget
	= select,type,rawget
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

-- Faction APIs
local C_Reputation = C_Reputation;

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
---@diagnostic enable: deprecated

-- Item APIs
local C_Item = C_Item;
---@diagnostic disable: deprecated
AssignAPIWrapper("GetItemCount", C_Item and C_Item.GetItemCount, GetItemCount)
AssignAPIWrapper("GetItemClassInfo", C_Item and C_Item.GetItemClassInfo, GetItemClassInfo)
AssignAPIWrapper("GetItemIcon", C_Item and C_Item.GetItemIconByID, GetItemIcon)
AssignAPIWrapper("GetItemInfoInstant", C_Item and C_Item.GetItemInfoInstant, GetItemInfoInstant)
AssignAPIWrapper("GetItemID", C_Item and C_Item.GetItemIDForItemInfo, GetItemInfoInstant)
AssignAPIWrapper("GetItemInfo", C_Item and C_Item.GetItemInfo, GetItemInfo)
AssignAPIWrapper("GetItemSpecInfo", C_Item and C_Item.GetItemSpecInfo, GetItemSpecInfo)
---@diagnostic enable: deprecated

-- Quest APIs
local C_QuestLog = C_QuestLog;
AssignAPIWrapper("IsQuestFlaggedCompletedOnAccount",
	C_QuestLog and C_QuestLog.IsQuestFlaggedCompletedOnAccount,
	function(questID) return app.IsAccountCached("Quests",questID) end)

-- C_TradeSkillUI
local C_TradeSkillUI = C_TradeSkillUI;

-- Warning: Blizzard introduced C_TradeSkillUI.GetTradeSkillTexture in Patch 4.0.1, and I have not found any information on when GetTradeSkillTexture was deprecated or removed, as well as its parameters or return values.
-- Therefore, lib.GetTradeSkillTexture will always use the implementation of C_TradeSkillUI.GetTradeSkillTexture in all cases.
-- As a result, the fallback to GetTradeSkillTexture has not been tested and is not guaranteed to work.
---@diagnostic disable-next-line: deprecated, undefined-global
AssignAPIWrapper("GetTradeSkillTexture", C_TradeSkillUI and C_TradeSkillUI.GetTradeSkillTexture, GetTradeSkillTexture);

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

-- Warning: The API Wrapper for GetSpellName is not completely equivalent.
-- GetSpellInfo accepts two types of parameters: one is a single parameter "SpellIdentifier", and the other is two parameters "index" and "bookType".
-- Currently, only the first type is implemented in C_Spell.
-- GetSpellInfo accpet both of parameters for compatibility reasons.
if app.AfterCata then
	AssignAPIWrapper("GetSpellName", C_Spell and C_Spell.GetSpellName , GetSpellInfo);
else
	AssignAPIWrapper("GetSpellName", GetSpellInfo);
end
---@diagnostic enable: deprecated
