
-- Upgrade Module
local _, app = ...;

-- Concepts:
-- Encapsulates the functionality for handling and checking Upgrade information

-- Global locals
local floor, 	  type, strsplit, tonumber
	= math.floor, type, strsplit, tonumber;

-- App locals

-- Upgrade API Implementation
-- Access via AllTheThings.Modules.Upgrade
local api = {};
app.Modules.Upgrade = api;

-- Module locals
local CreateItem

api.OnLoad = function()
	CreateItem = app.CreateItem;
end

-- Static mapping of BonusID -> Next Unlock BonusID for a corresponding Item. Unlock will most-likely always be an Appearance
-- Thanks @Addon:ItemUpgradeTip for this compiled list of BonusIDs! Wish Blizzard did this for us by default...
local BonusIDNextUnlock = {
    -- Explorer 1/8
    [9294] = 9298,
    -- Explorer 2/8
    [9295] = 9298,
    -- Explorer 3/8
    [9296] = 9298,
    -- Explorer 4/8
    [9297] = 9298,
    -- Explorer 5/8
    [9298] = 0,
    -- Explorer 6/8
    [9299] = 0,
    -- Explorer 7/8
    [9300] = 0,
    -- Explorer 8/8
    [9301] = 0,
    -- Adventurer 1/8
    [9302] = 9306,
    -- Adventurer 2/8
    [9303] = 9306,
    -- Adventurer 3/8
    [9304] = 9306,
    -- Adventurer 4/8
    [9305] = 9306,
    -- Adventurer 5/8
    [9306] = 0,
    -- Adventurer 6/8
    [9307] = 0,
    -- Adventurer 7/8
    [9308] = 0,
    -- Adventurer 8/8
    [9309] = 0,
    -- Veteran 1/8
    [9313] = 9317,
    -- Veteran 2/8
    [9314] = 9317,
    -- Veteran 3/8
    [9315] = 9317,
    -- Veteran 4/8
    [9316] = 9317,
    -- Veteran 5/8
    [9317] = 0,
    -- Veteran 6/8
    [9318] = 0,
    -- Veteran 7/8
    [9319] = 0,
    -- Veteran 8/8
    [9320] = 0,
    -- Champion 1/8
    [9321] = 9325,
    -- Champion 2/8
    [9322] = 9325,
    -- Champion 3/8
    [9323] = 9325,
    -- Champion 4/8
    [9324] = 9325,
    -- Champion 5/8
    [9325] = 0,
    -- Champion 6/8
    [9327] = 0,
    -- Champion 7/8
    [9328] = 0,
    -- Champion 8/8
    [9329] = 0,
    -- Hero 1/5
    [9330] = 9334,
    -- Hero 2/5
    [9331] = 9334,
    -- Hero 3/5
    [9332] = 9334,
    -- Hero 4/5
    [9333] = 9334,
    -- Hero 5/5
    [9334] = 0,
    -- Myth 1/3
    [9380] = 0,
    -- Myth 2/3
    [9381] = 0,
    -- Myth 3/3
    [9382] = 0,
	-- Primalist 1/3
	[9342] = 9344,
	-- Primalist 2/3
	[9343] = 9344,
	-- Primalist 3/3
	[9344] = 0,
}

local function GetFirstValueAndKey(t, keys)
	if not t or not keys then return end

	local k
	for i=1,#keys do
		k = keys[i]
		if t[k] then return t[k], k end
	end
end
local function GetNextItemUnlockBonusIDByString(item)
	local itemVals = {strsplit(":", item)}

	-- BonusID count
	local bonusCount = tonumber(itemVals[14])
	-- app.PrintDebug("Upgrade",item,"BonusCount",bonusCount)
	if not bonusCount or bonusCount < 1 then return end

	local bonusID, upgrades
	for i=15,14 + bonusCount,1 do
		bonusID = tonumber(itemVals[i])
		if bonusID then
			upgrades = BonusIDNextUnlock[bonusID]
			-- app.PrintDebug("Upgrade:BonusID",bonusID,upgrades)
			if upgrades then return upgrades, bonusID end
		end
	end
end
local function GetNextItemUnlockBonusIDByTable(item)
	local upgrades = BonusIDNextUnlock[item.bonusID or 0]
	if upgrades then return upgrades end

	-- we currently don't store all bonusIDs in item groups
	-- upgrades = GetFirstValueAndKey(BonusIDNextUnlock, item.bonuses)
	-- if upgrades then return upgrades end

	local link = item.link or item.rawlink or item.silentLink
	if link then
		return GetNextItemUnlockBonusIDByString(link)
	end
end
BonusIDNextUnlock.string = GetNextItemUnlockBonusIDByString
BonusIDNextUnlock.table = GetNextItemUnlockBonusIDByTable

local function GetNextItemUnlockBonusID(item)
	-- item can be string(raw), string(link), table
	local getUnlocks = BonusIDNextUnlock[type(item) or ""]
	if not getUnlocks then app.print("failed to get unlocks function",item) return; end

	return getUnlocks(item);
end
api.GetNextItemUnlockBonusID = GetNextItemUnlockBonusID;

local function GetUpgrade(t, upmodID, upbonusID)
	local up = {
		itemID = t.itemID,
		modID = upmodID > 0 and upmodID or t.modID,
		bonusID = upbonusID > 0 and upbonusID or t.bonusID
	}
	return CreateItem(t.itemID, up).AsItemSource;
end
api.GetUpgrade = GetUpgrade;

-- Returns the different and upgraded version of 't' (via item link/bonuses or 'up' field)
api.NextUpgrade = function(t)

	-- nested upgrades should not be considered for a following upgrade (Contains tooltip/DetermineUpgradeGroups)
	-- if a situation arises in which a single item can be upgraded across multiple 'collectible' variants, this will have to be revisted
	-- if t.isUpgraded then
	-- 	-- app.PrintDebug("isUpgraded",t.modItemID)
	-- 	return;
	-- end

	-- is this a non-default item table which has already been upgraded?
	local unlockBonusID = GetNextItemUnlockBonusIDByTable(t)
	if unlockBonusID and unlockBonusID < 1 then
		-- app.PrintDebug("isUpgraded via item",t.modItemID)
		-- t.isUpgraded = true;
		return;
	end

	-- '.up' is the modID.bonusID portion of the respective upgrade item
	-- if no upgrade
	local up = unlockBonusID and (unlockBonusID / 10000) or t.up;
	if not up or not t.collectible then
		-- app.PrintDebug("no upgrade",t.modItemID)
		-- t.isUpgraded = true;
		return;
	end

	-- parent is pre-upgrade of itself and less than 2 upgrades allowed from the parent, then no upgrade for this
	local p = t.parent
	local pup = p and p._up;
	-- app.PrintDebug("parent?",p,pup and pup.hash,t.hash)
	if pup and pup.hash == t.hash then
		-- app.PrintDebug("parent is upgrade source",p.modItemID,t.modItemID)
		-- t.isUpgraded = true;
		return;
	end

	-- cached tracking of upgrade group
	local cache = t._up;
	if cache then
		-- app.PrintDebug("NU:cache",t.modItemID,cache.hash,cache.modItemID)
		return cache;
	end

	-- find or create the upgrade for cached reference
	local upmodID = floor(up);
	local upbonusID = floor((up - upmodID) * 10000 + 0.5);
	up = GetUpgrade(t, upmodID, upbonusID);
	if not up then
		-- app.PrintDebug("NU:no upgrade created",t.modItemID,"=>",upmodID,upbonusID)
		-- t.isUpgraded = true;
		return;
	end

	-- upgrade has to actually be different than the source item
	local searchHash = up.hash;
	if searchHash and searchHash == t.hash then
		-- app.PrintDebug("NU:upgrade is same",searchHash,up.modItemID)
		-- t.isUpgraded = true;
		return;
	end

	t._up = up;
	-- app.PrintDebug("NU:",not up.collected,t.modItemID,up.modItemID)
	return up;
end

-- Returns the different and upgraded version of 't' (via 'up' field only)
api.HasUpgrade = function(t)

	-- '.up' is the modID.bonusID portion of the respective upgrade item defined in ATT
	local up = t.up;
	if not up or not t.collectible then
		-- app.PrintDebug("no upgrade",t.modItemID)
		-- t.isUpgraded = true;
		return;
	end

	-- cached tracking of upgrade group
	local cache = t._up;
	if cache then
		-- app.PrintDebug("HU:cache",t.modItemID,cache.hash,cache.modItemID)
		return cache;
	end

	-- find or create the upgrade for cached reference
	local upmodID = floor(up);
	local upbonusID = floor((up - upmodID) * 10000 + 0.5);
	up = GetUpgrade(t, upmodID, upbonusID);
	if not up then
		-- app.PrintDebug("HU:no upgrade created",t.modItemID,"=>",upmodID,upbonusID)
		-- t.isUpgraded = true;
		return;
	end

	t._up = up;
	-- app.PrintDebug("HU:",not up.collected,t.modItemID,up.modItemID)
	return up;
end

-- Returns whether 't' has an upgrade AND it is uncollected
api.CollectibleAsUpgrade = function(t)
	local upgrade = t.hasUpgrade;
	return upgrade and not upgrade.collected;
end