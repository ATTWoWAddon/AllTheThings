
-- Upgrade Module
local _, app = ...;

-- Concepts:
-- Encapsulates the functionality for handling and checking Upgrade information

-- Global locals
local floor, 	  type, tonumber, ipairs, pairs
	= math.floor, type, tonumber, ipairs, pairs

-- App locals
local SearchForFieldContainer, IsRetrieving
= app.SearchForFieldContainer, app.Modules.RetrievingData.IsRetrieving

-- Upgrade API Implementation
-- Access via AllTheThings.Modules.Upgrade
local api = {};
app.Modules.Upgrade = api;

-- Module locals
local CreateItem, DGU, TransmogLastRefresh, GetGroupItemIDWithModID, GetSourceID, CreateItemSource, CleanLink
local Runner = app.CreateRunner("upgrade");
Runner.SetPerFrameDefault(1)

app.AddEventHandler("OnLoad", function()
	CreateItem = app.CreateItem;
	DGU = app.DirectGroupUpdate
	GetGroupItemIDWithModID = app.GetGroupItemIDWithModID
	GetSourceID = app.GetSourceID
	CreateItemSource = app.CreateItemSource
	CleanLink = app.Modules.Item.CleanLink
	if not CleanLink then
		error("Upgrade Module requires Modules.Item.CleanLink definition!")
	end
end)

-- Static mapping of BonusID -> Next Unlock BonusID for a corresponding Item. Unlock will most-likely always be an Appearance
-- Thanks @Addon:ItemUpgradeTip for this compiled list of BonusIDs! Wish Blizzard did this for us by default...
-- https://github.com/filliph/ItemUpgradeTip/blob/master/upgradeHandlers/Flightstones.lua
local BonusIDNextUnlock = {

	-- 10.0.7
	-- Primalist 1/3 (Vendor)
	[9340] = 9344,
	-- Primalist 1/3
	[9342] = 9344,
	-- Primalist 2/3
	[9343] = 9344,
	-- Primalist 3/3
	[9344] = 0,

	-- 10.1
	-- Prior to 10.2 these existed, then Blizzard decided to hate us for no reason
	--[[
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
	--]]

	-- 10.2

    -- Explorer
	-- These convert to S2 LFR tier which does not upgrade
    -- [9544] = 9548,
    -- [9545] = 9548,
    -- [9546] = 9548,
    -- [9547] = 9548,
    -- [9548] = 0,
    -- [9549] = 0,
    -- [9550] = 0,
    -- [9551] = 0,

    -- Adventurer
	-- These convert to S2 LFR tier which does not upgrade
    -- [9536] = 9540,
    -- [9537] = 9540,
    -- [9538] = 9540,
    -- [9539] = 9540,
    -- [9540] = 0,
    -- [9541] = 0,
    -- [9542] = 0,
    -- [9543] = 0,

    -- Veteran
    -- [9552] = 9556,
    -- [9553] = 9556,
    -- [9554] = 9556,
    -- [9555] = 9556,
    -- [9556] = 0,
    -- [9557] = 0,
    -- [9558] = 0,
    -- [9559] = 0,

    -- Champion
    -- [9560] = 9564,
    -- [9561] = 9564,
    -- [9562] = 9564,
    -- [9563] = 9564,
    -- [9564] = 0,
    -- [9565] = 0,
    -- [9566] = 0,
    -- [9567] = 0,

    -- Hero
    -- [9568] = 9572,
    -- [9569] = 9572,
    -- [9570] = 9572,
    -- [9571] = 9572,
    -- [9572] = 0,
    -- [9581] = 0,

    -- Myth
    -- [9573] = 0,
    -- [9574] = 0,
    -- [9575] = 0,
    -- [9576] = 0,

	-- 10.2.6 (ref - raidbots bonuses.json)

	-- Explorer
	-- in case this will be needed but probably not
	-- [10321] = 10325,
	-- [10322] = 10325,
	-- [10323] = 10325,
	-- [10324] = 10325,
	-- [10325] = 0,
	-- [10326] = 0,
	-- [10327] = 0,
	-- [10328] = 0,

	-- Adventurer
	-- in case this will be needed but probably not
	-- [10305] = 10309,
	-- [10306] = 10309,
	-- [10307] = 10309,
	-- [10308] = 10309,
	-- [10309] = 0,
	-- [10310] = 0,
	-- [10311] = 0,
	-- [10312] = 0,

	-- Veteran
	-- [10341] = 10345,
	-- [10342] = 10345,
	-- [10343] = 10345,
	-- [10344] = 10345,
	-- [10345] = 0,
	-- [10346] = 0,
	-- [10347] = 0,
	-- [10348] = 0,

	-- Champion
	-- [10313] = 10317,
	-- [10314] = 10317,
	-- [10315] = 10317,
	-- [10316] = 10317,
	-- [10317] = 0,
	-- [10318] = 0,
	-- [10319] = 0,
	-- [10320] = 0,

	-- Hero
	-- [10329] = 10333,
	-- [10330] = 10333,
	-- [10331] = 10333,
	-- [10332] = 10333,
	-- [10333] = 0,
	-- [10334] = 0,

	-- Myth
	-- [10335] = 0,
	-- [10336] = 0,
	-- [10337] = 0,
	-- [10338] = 0,

	-- Awakened 12
	-- [10407] = 10411,
	-- [10408] = 10411,
	-- [10409] = 10411,
	-- [10410] = 10411,
	-- [10411] = 10415,
	-- [10412] = 10415,
	-- [10413] = 10415,
	-- [10414] = 10415,

	-- Awakened 14
	-- [10490] = 10494,
	-- [10491] = 10494,
	-- [10492] = 10494,
	-- [10493] = 10494,
	-- [10494] = 10498,
	-- [10495] = 10498,
	-- [10496] = 10498,
	-- [10497] = 10498,

	-- 11.0
	-- Adventurer
	-- [10297] = 0,
	-- [10296] = 0,
	-- [10295] = 0,
	-- [10294] = 0,
	-- [10293] = 0,
	-- [10292] = 0,
	-- [10291] = 0,
	-- [10290] = 0,

	-- Veteran
	-- [10281] = 10277,
	-- [10280] = 10277,
	-- [10279] = 10277,
	-- [10278] = 10277,
	-- [10277] = 0,
	-- [10276] = 0,
	-- [10275] = 0,
	-- [10274] = 0,

	-- Champion
	-- [10273] = 10269,
	-- [10272] = 10269,
	-- [10271] = 10269,
	-- [10270] = 10269,
	-- [10269] = 0,
	-- [10268] = 0,
	-- [10267] = 0,
	-- [10266] = 0,

	-- Hero
	-- [10265] = 10261,
	-- [10264] = 10261,
	-- [10263] = 10261,
	-- [10262] = 10261,
	-- [10261] = 0,
	-- [10256] = 0,

	-- Myth
	-- [10260] = 0,
	-- [10259] = 0,
	-- [10258] = 0,
	-- [10257] = 0,
	-- [10298] = 0,
	-- [10299] = 0,

	-- 11.1
	-- Veteran [https://wago.tools/db2/ItemBonus?build=11.1.0.59538&filter%5BValue_0%5D=439&filter%5BType%5D=34&page=1&sort%5BParentItemBonusListID%5D=asc]
	[11969] = 11973,
	[11970] = 11973,
	[11971] = 11973,
	[11972] = 11973,
	-- [11973] = 0,
	-- [11974] = 0,
	-- [11975] = 0,
	-- [11976] = 0,

	-- Champion [https://wago.tools/db2/ItemBonus?build=11.1.0.59538&filter%5BValue_0%5D=440&filter%5BType%5D=34&page=1&sort%5BParentItemBonusListID%5D=asc]
	[11977] = 11982,
	[11978] = 11982,
	[11979] = 11982,
	[11980] = 11982,
	-- [11981] = 0,	-- should be this bonusID, but it's currently assigned to the wrong ItemBonusListGroupID
	-- [11982] = 0,
	-- [11983] = 0,
	-- [11984] = 0,

	-- Hero [https://wago.tools/db2/ItemBonus?build=11.1.0.59538&filter%5BType%5D=34&filter%5BValue_0%5D=441&page=1&sort%5BParentItemBonusListID%5D=asc]
	[11985] = 11989,
	[11986] = 11989,
	[11987] = 11989,
	[11988] = 11989,
	-- [11989] = 0,
	-- [11990] = 0,

	-- Myth [https://wago.tools/db2/ItemBonus?build=11.1.0.59538&filter%5BType%5D=34&filter%5BValue_0%5D=442&page=1&sort%5BParentItemBonusListID%5D=asc]
	-- [11991] = 0,
	-- [11992] = 0,
	-- [11993] = 0,
	-- [11994] = 0,
	-- [11995] = 0,
	-- [11996] = 0,
}
-- Which bonusID nested upgrades are allowed to be nested under an already-upgraded listing
local NestedUpgradesAllowedByBonusID = {
	-- [10415] = true,	-- Awakened 12 3/3
	-- [10498] = true,	-- Awakened 14 3/3
}

local function GetFirstValueAndKey(t, keys)
	if not t or not keys then return end

	local k, tk
	for i=1,#keys do
		k = keys[i]
		tk = t[k]
		if tk then return tk, k end
	end
end
local function GetNextItemUnlockBonusIDByString(item)
	local itemVals = {(":"):split(CleanLink(item))}

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

	upgrades = GetFirstValueAndKey(BonusIDNextUnlock, item.bonuses)
	if upgrades then return upgrades end

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

local ItemSourceCache = {}
local function AsItemSource(t)
	-- already an item source table
	if t.__type == "ItemWithAppearance" then return t; end
	local link = t.link or t.rawlink or t.silentLink;
	if not link then return end
	local sourceID = GetSourceID(link, true)
	if sourceID then return CreateItemSource(sourceID, t.itemID, t) end
end
local function GetUpgrade(t, up)
	local itemID = t.itemID
	local upmodID = floor(up);
	local upbonusID = floor((up - upmodID) * 100000 + 0.5);
	local modItemID = GetGroupItemIDWithModID(nil, itemID, upmodID, upbonusID)
	local itemSource = ItemSourceCache[modItemID]
	-- app.PrintDebug("UPGRADE<=CACHE",itemID,"+",upmodID,upbonusID,"=>",modItemID,"==",itemSource and itemSource.hash)
	if not itemSource then
		local tup = {
			itemID = itemID,
			modID = upmodID > 0 and upmodID or nil,
			bonusID = upbonusID > 0 and upbonusID or nil
		}
		itemSource = AsItemSource(CreateItem(itemID, tup))
		if not itemSource then
			-- app.PrintDebug("GU:no upgrade created",t.modItemID,"=>",up)
			-- this case always means we expected an upgrade, but got none, which means the upgrade item
			-- is not yet loaded in the Client and cannot return the proper SourceID because Blizzard.
			return
		end
		ItemSourceCache[modItemID] = itemSource
		-- app.PrintDebug("UPGRADE=>CACHE",modItemID,"==",itemSource.hash)
	end

	-- upgrade has to actually be different than the source item
	if itemSource.sourceID == t.sourceID then
		-- app.PrintDebug("GU:upgrade is same",t.hash,t.modItemID,"=+>",itemSource.__type,itemSource.modItemID)
		return;
	end

	-- cache the upgrade within the item itself
	t._up = itemSource;
	-- app.PrintDebug("GU:",itemSource.__type,t.isUpgrade,t.modItemID,itemSource.modItemID)
	return itemSource
end
api.GetUpgrade = GetUpgrade;

-- Returns the different and upgraded version of 't' (via 'up' field only)
local function HasUpgrade(t)

	-- app.PrintDebug("HU:",t.modItemID)
	-- '.up' is the modID.bonusID portion of the respective upgrade item defined in ATT
	local up = t.up;
	if not up then
		-- app.PrintDebug("no upgrade",t.modItemID)
		return;
	end

	-- find or create the upgrade for cached reference
	return GetUpgrade(t, up);
end

local UpgradeSources = {}

local function SetupUpgrade(t)
	local upgrade = t._up or HasUpgrade(t);
	if upgrade then
		t.isUpgrade = upgrade.collectible and not upgrade.collected
		-- app.PrintDebug("SetupUpgrade",t.isUpgrade,app:SearchLink(t),"=>",app:SearchLink(upgrade))
		-- store the upgrade source for ad-hoc updates
		local upgradehash = upgrade.hash
		local sources = UpgradeSources[upgradehash]
		if not sources then
			sources = {}
			UpgradeSources[upgradehash] = sources
		end
		sources[#sources + 1] = t
		Runner.Run(DGU, t)
		return
	end
	-- if it had no upgrade and no link, it isn't cached in game which means
	-- blizz returns wrong data in some appearance API calls. very nice.
	-- queue this group up to try again since we are only running this logic on groups which we *know*
	-- have upgrades
	if IsRetrieving(t.link) then
		-- app.PrintDebug("re-try upgrade",t.hash,t.link)
		-- in situations where the upgrade item cannot be loaded/found quickly, we unfortunately will just give up
		if not t.CanRetry then return end
		Runner.Run(SetupUpgrade, t)
	end
end
local function CheckIsUpgrade(t)
	local upgrade = t._up or HasUpgrade(t);
	if upgrade then
		t.isUpgrade = upgrade.collectible and not upgrade.collected
		-- app.PrintDebug("CheckIsUpgrade",t.isUpgrade,app:SearchLink(t),"=>",app:SearchLink(upgrade))
		Runner.Run(DGU, t)
		return
	end
	-- if it had no upgrade and no link, it isn't cached in game which means
	-- blizz returns wrong data in some appearance API calls. very nice.
	-- queue this group up to try again since we are only running this logic on groups which we *know*
	-- have upgrades
	if IsRetrieving(t.link) then
		-- app.PrintDebug("re-try upgrade",t.hash,t.link)
		-- in situations where the upgrade item cannot be loaded/found quickly, we unfortunately will just give up
		if not t.CanRetry then return end
		Runner.Run(CheckIsUpgrade, t)
	end
end

local function OnSearchResultUpdate(t)
	-- app.PrintDebug("UpdateUpgradeGroup",app:SearchLink(t))
	local sources = UpgradeSources[t.hash]
	if not sources then return end
	for _,upgradeSource in ipairs(sources) do
		-- app.PrintDebug("UpdateUpgradeGroup.source",app:SearchLink(upgradeSource))
		CheckIsUpgrade(upgradeSource)
	end
end
app.AddEventHandler("OnSearchResultUpdate", OnSearchResultUpdate)

local function UpdateUpgradeGroups(refs)
	-- app.PrintDebug("Upgrade Updates",#refs)
	for i=1,#refs do
		SetupUpgrade(refs[i])
	end
end
local function UpdateStart()
	app.print("Upgrade Updates Starting...")
end
local function UpdateEnd()
	app.print("Upgrade Updates Done")
end
local function UpdateUpgrades()

	-- all upgrades are based on Transmog, so skip checking if Transmog is not enabled and was not previously enabled
	if not TransmogLastRefresh and not app.Settings.Collectibles.Transmog then
		-- app.PrintDebug("Skip Upgrade Logic")
		return
	end
	TransmogLastRefresh = app.Settings.Collectibles.Transmog

	-- cancel all existing running upgrade updates
	Runner.Reset()

	if app.Debugging then
		Runner.OnEnd(UpdateEnd)
		Runner.Run(UpdateStart)
	end

	wipe(UpgradeSources)
	-- Get all up entries
	for up,refs in pairs(SearchForFieldContainer("up")) do
		Runner.Run(UpdateUpgradeGroups, refs)
	end

	-- Any re-try updates can try faster
	Runner.SetPerFrame(50)
end

-- Returns the different and upgraded version of 't' (via item link/bonuses or 'up' field)
api.NextUpgrade = function(t)

	-- app.PrintDebug("NU:",t.modItemID)
	-- try basic upgrade logic first (checking 'up' field)
	local upgrade = t._up or HasUpgrade(t);
	if upgrade then return upgrade end

	-- is this a non-default item table which has no upgrade unlock?
	local unlockBonusID = GetNextItemUnlockBonusIDByTable(t)
	if not unlockBonusID or unlockBonusID < 1 then
		-- app.PrintDebug("isUpgraded via item",t.modItemID)
		return;
	end

	-- parent is pre-upgrade of itself and not specifically allowed further upgrades, then no upgrade for this
	if not NestedUpgradesAllowedByBonusID[unlockBonusID] then
		local p = t.parent
		local pup = p and p._up;
		-- app.PrintDebug("parent?",p,pup and pup.hash,t.hash)
		if pup and pup.hash == t.hash then
			-- app.PrintDebug("parent is upgrade source",p.modItemID,t.modItemID)
			return;
		end
	end

	-- '.up' is the modID.bonusID portion of the respective upgrade item
	-- find or create the upgrade for cached reference
	return GetUpgrade(t, unlockBonusID / 100000);
end

-- Returns whether 't' has an upgrade AND it is uncollected
api.CollectibleAsUpgrade = function(t)
	local upgrade = t._up or HasUpgrade(t);
	return upgrade and not upgrade.collected;
end

app.AddEventHandler("OnRecalculate_NewSettings", UpdateUpgrades)