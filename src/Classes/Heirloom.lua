
local _, app = ...
local L = app.L

-- App locals
local contains, SearchForObject, AssignChildren
	= app.contains, app.SearchForObject, app.AssignChildren

local NestObject
app.AddEventHandler("OnLoad", function()
	NestObject = app.NestObject
end)

-- Global locals
local ipairs, pairs, rawset, rawget, tinsert, math_floor, select, tonumber, tostring, setmetatable
	= ipairs, pairs, rawset, rawget, tinsert, math.floor, select, tonumber, tostring, setmetatable

-- WoW API Cache
local GetItemInfo = app.WOWAPI.GetItemInfo;
local GetFactionBonusReputation = app.WOWAPI.GetFactionBonusReputation;

-- Class locals

-- Module locals
local ATTAccountWideData

-- Heirloom Lib
do
	local C_Heirloom_GetHeirloomInfo = C_Heirloom.GetHeirloomInfo;
	local C_Heirloom_PlayerHasHeirloom = C_Heirloom.PlayerHasHeirloom;
	local C_Heirloom_GetHeirloomMaxUpgradeLevel = C_Heirloom.GetHeirloomMaxUpgradeLevel;

	--[[---------------------------------------------------
	C_Heirloom.GetHeirloomInfo
		Returns empty when higher version of Heirloom is unlocked
	C_Heirloom.PlayerHasHeirloom
		Returns true when lower version of Heirloom is unlocked as well as higher

	SO to check if needing upgrade, only ignore Upgrade population when PlayerHasHeirloom is true and GetHeirloomInfo is nil

	restructure:
	* Heirlooms do not nest Upgrade
	* Character > Heirlooms becomes list of Heirloom Upgrades instead
		* Auto-generate from all known Heirloom Items, inheriting the e/u values like currently
	* Heirloom Upgrade contains available Upgrade Levels
	* Upgrade Level has cost of the necessasry Upgrade Token ItemID
		* Auto-generate inherits e/u values

	--]]---------------------------------------------------
	-- Some heirlooms unlock within a 'group' for a given heirloom unlock
	-- local HigherTierUnlocks = {

	-- }
	local function HasHigherHeirloomUnlockIDSaved(itemID)
	end
	local CreateHeirloomUnlock = app.CreateClass("HeirloomUnlock", "heirloomUnlockID", {
		-- CACHE = function() return "HeirloomRanks" end,
		name = function(t)
			return L.HEIRLOOM_TEXT;
		end,
		icon = function(t)
			return 648901;
		end,
		description = function(t)
			return L.HEIRLOOM_TEXT_DESC;
		end,
		RefreshCollectionOnly = true,	-- remove when fixing event-collection & cache
		collectible = function(t)
			return app.Settings.Collectibles.Heirlooms;
		end,
		collected = function(t)
			return t.saved or HasHigherHeirloomUnlockIDSaved(t.heirloomUnlockID)
		end,
		saved = function(t)
			return C_Heirloom_PlayerHasHeirloom(t.heirloomUnlockID);
		end,
	});

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
		-- CACHE = function() return "HeirloomRanks" end,
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
			return L.HEIRLOOMS_UPGRADES_DESC;
		end,
		RefreshCollectionOnly = true,	-- remove when fixing event-collection & cache
		["collectible"] = function(t)
			return app.Settings.Collectibles.Heirlooms and app.Settings.Collectibles.HeirloomUpgrades;
		end,
		["saved"] = function(t)
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
		["isWeapon"] = function(t)
			local isWeapon = t.f and contains(weaponFilterIDs, t.f);
			t.isWeapon = isWeapon;
			return isWeapon;
		end,
	};
	hierloomLevelFields.collected = hierloomLevelFields.saved;
	local CreateHeirloomLevel = app.CreateClass("HeirloomLevel", "heirloomLevelID", hierloomLevelFields);

	-- Heirloom Item
	local createHeirloom = app.ExtendClass("Item", "Heirloom", "itemID", {
		IsClassIsolated = true,
		heirloomID = function(t) return t.itemID; end,
		b = function(t) return 2 end,
		collectibleAsCost = app.ReturnFalse,
		isWeapon = hierloomLevelFields.isWeapon,
		variants = {
			app.GlobalVariants.AndAppearance,
		},
		g = function(t)
			-- unlocking the heirloom is the only thing contained in the heirloom
			if C_Heirloom_GetHeirloomMaxUpgradeLevel(t.itemID) then
				local unlock = CreateHeirloomUnlock(t.itemID, {
					e = t.e,
					u = t.u,
					-- TODO: maybe can do this eventually
					-- provider = {{"i",t.itemID}},
				});
				unlock.parent = t;
				t.g = { unlock };
				return t.g;
			end
		end
	},
	"WithFaction", {
		collectible = function(t) return app.Settings.Collectibles.Reputations end,
		collected = function(t)
			-- TODO: yuck clean this up
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
		end,
		-- don't inherit variants from Heirloom
		variants = app.EmptyTable,
	}, function(t) return t.factionID end);

	local heirloomIDs = {};
	app.CreateHeirloom = function(id, t)
		heirloomIDs[id] = true;
		return createHeirloom(id, t);
	end

	-- Will retrieve all the cached entries by itemID for existing heirlooms and generate their
	-- upgrade levels into the respective upgrade tokens
	local function CacheHeirlooms()
		app.PrintDebug("CacheHeirlooms")

		-- Are heirloom upgrades available? (6.1.0.19445)
		local gameBuildVersion = app.GameBuildVersion;
		if gameBuildVersion < 60100 then return end

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
		-- Kinda would rather us have the Heirloom as a cost/provider for the actual Unlock and list the raw Unlocks
		-- under Character > Heirlooms... hmmmm
		local heirloom, upgrades = nil, nil
		for itemID,_ in pairs(heirloomIDs) do
			heirloom = SearchForObject("itemID", itemID, "field")
			if heirloom then
				upgrades = C_Heirloom_GetHeirloomMaxUpgradeLevel(itemID);
				if upgrades and upgrades > 0 then
					local tokenType = heirloom.isWeapon and weaponTokens or armorTokens;
					for i=1,upgrades,1 do
						-- Create a non-collectible version of the heirloom item itself to hold the upgrade within the token
						tinsert(tokenType[upgrades + 1 - i].g,
							app.CreateNonCollectibleWithGroups(heirloom, {
								CreateHeirloomLevel(itemID, {
									levelMax = upgrades,
									level = i,
									e = heirloom.e,
									u = heirloom.u,
								})
							})
						)
					end
				end
			end
		end

		-- build groups for each upgrade token
		-- and copy the set of upgrades into the cached versions of the upgrade tokens so they therefore exist in the main list
		-- where the sources of the upgrade tokens exist
		local token
		for i,item in ipairs(armorTokens) do
			token = SearchForObject("headerID", item.itemID, "field")
			if token then
				for _,heirloom in ipairs(item.g) do
					NestObject(token, heirloom, true)
				end
				AssignChildren(token)
			end

			-- ensure the tokens do not have a modID attached
			for _,token in ipairs(SearchForObject("itemID", item.itemID, "field", true)) do
				token.modID = nil
				token.modItemID = nil
			end
		end
		for i,item in ipairs(weaponTokens) do
			token = SearchForObject("headerID", item.itemID, "field")
			if token then
				for _,heirloom in ipairs(item.g) do
					NestObject(token, heirloom, true)
				end
				AssignChildren(token)
			end

			-- ensure the tokens do not have a modID attached
			for _,token in ipairs(SearchForObject("itemID", item.itemID, "field", true)) do
				token.modID = nil
				token.modItemID = nil
			end
		end

		heirloomIDs = nil
		app.CreateHeirloom = createHeirloom
	end

	if C_Heirloom_GetHeirloomMaxUpgradeLevel then
		app.AddEventHandler("OnInit", CacheHeirlooms)
	end

	-- app.AddCollectionReportFormatFunc("HeirloomLevel", function(t)
	-- 	local itemID, link = t.itemID, t.link or t.silentLink
	-- 	app.print(L.ITEM_ID_ADDED_RANK:format(link, itemID, (select(5, C_Heirloom_GetHeirloomInfo(itemID)) or 1)))
	-- end)
	app.AddEventRegistration("HEIRLOOMS_UPDATED", function(itemID, kind, ...)
		-- app.PrintDebug("HEIRLOOMS_UPDATED",itemID,kind,...)
		if itemID then
			-- local heirloom = app.SearchForObject("heirloomID", itemID, "field")
			-- TODO: Heirlooms aren't cached when collected so can't use typical logic
			-- app.SetThingCollected("itemID", itemID, true, true)
			app.UpdateRawID("itemID", itemID);
			app.HandleEvent("OnThingCollected", "Heirlooms")

			if app.Settings:GetTooltipSetting("Report:Collected") then
				local _, link = GetItemInfo(itemID);
				if link then app.print(L.ITEM_ID_ADDED_RANK:format(link, itemID, (select(5, C_Heirloom_GetHeirloomInfo(itemID)) or 1))); end
			end
		end
	end)
	app.AddEventHandler("OnLoad", function()
		app.AddDynamicCategoryHeader({ id = "heirloomID", name = HEIRLOOMS, icon = app.asset("Weapon_Type_Heirloom") });
		app.AddRandomSearchCategory("Heirlooms", "heirloomID", HEIRLOOMS, nil, app.asset("Weapon_Type_Heirloom"));
	end);
end

app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	ATTAccountWideData = accountWideData
end)