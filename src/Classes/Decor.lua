
-- App locals
local _, app = ...

local CACHE = "Decor"
local CLASSNAME = "Decor"
local KEY = "decorID"
if not C_HousingCatalog or app.GameBuildVersion < 110000 then
	-- If Decor isn't distinguishable yet, simply create an extended Item
	app.CreateDecor = app.ExtendClass("Item", CLASSNAME, KEY, {});

	return
end

local C_HousingCatalog_GetCatalogEntryInfo,C_HouseEditor_IsHouseEditorActive
	= C_HousingCatalog.GetCatalogEntryInfo,C_HouseEditor.IsHouseEditorActive

-- TODO: test other APIs
-- this is non-parameterized, returns the max decor that can be owned
-- /dump C_HousingCatalog.GetDecorMaxOwnedCount(2112) -> 5000
-- this is non-parameterized, returns some quantity of decor owned and placed?
-- /dump C_HousingCatalog.GetDecorTotalOwnedCount() -> 110,39
-- /dump C_HousingCatalog.GetCatalogEntryDebugInfoForID(7620)	-- force taint error

local pairs
 	= pairs

local IsAccountCached = app.IsAccountCached
app.AddEventHandler("OnStartup", function()
	IsAccountCached = app.IsAccountCached
end)

local HousingSearcher
local DecorType = Enum.HousingCatalogEntryType.Decor

local function HowManyDecor(entryInfo)
	if not entryInfo then return 0 end

	local sum = (entryInfo.numPlaced or 0) + (entryInfo.quantity or 0) + (entryInfo.remainingRedeemable or 0)
	-- if sum == 0 then
	-- 	app.PrintDebug("NOT OWNED DECOR")
	-- 	app.PrintTable(entryInfo)
	-- end
	return sum
end

-- Decor Lib [STUB -- WIP]
do
	app.CreateDecor = app.ExtendClass("Item", CLASSNAME, KEY, {
		CACHE = function() return CACHE end,
		collectible = function(t) return app.Settings.Collectibles[CACHE]; end,
		collected = function(t) return IsAccountCached(CACHE, t.decorID) and 1 end,
	});
	local function HousingSearcherResultsCallback()
		local saved = {}
		-- local none = {}
		local added = {}
		local entry
		local entries = HousingSearcher:GetCatalogSearchResults()
		for i=1,#entries do
			entry = entries[i]
			-- only checking for new collected decor because Blizzard
			if not IsAccountCached(CACHE, entry.recordID) then
				local info = C_HousingCatalog_GetCatalogEntryInfo(entry)
				if info and info.entryType == DecorType then
					local qty = HowManyDecor(info)

					-- qty can sometimes be 4294967295
					if qty > 0 and qty < 1000000 then
						-- app.PrintDebug("Decor Collected",recordID,qty,info.numPlaced,info.numStored,info.quantity)
						saved[entry.recordID] = true
						added[#added + 1] = entry
					-- still ignoring removing destroyed decor from cache since it continues to be inconsistent from Blizzard
					-- else
						-- app.PrintDebug("Decor Missing",recordID,qty)
						-- none[entry.recordID] = true
					end
				end
			end
		end
		app.SetBatchAccountCached(CACHE, saved, 1)
		-- app.SetBatchAccountCached(CACHE, none)
	end
	local function RefreshDecorCollection()
		if not HousingSearcher then
			HousingSearcher = C_HousingCatalog.CreateCatalogSearcher()
		end
		HousingSearcher:SetAutoUpdateOnParamChanges(false)
		HousingSearcher:SetResultsUpdatedCallback(HousingSearcherResultsCallback)
		HousingSearcher:RunSearch()
	end
	app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)
	app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
		if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
	end)
	app.AddEventHandler("OnRefreshCollections", RefreshDecorCollection)
	app.AddEventRegistration("HOUSE_DECOR_ADDED_TO_CHEST", function(decorUid, decorID)
		app.SetThingCollected(KEY, decorID, true, true)
	end)
	app.AddEventRegistryCallback("HousingCatalogEntry.OnInteract", function(val1, entryFrame, button, val2)
		-- app.PrintDebug(val1, entryFrame, button, val2)
		-- Allowing Alt-LeftClick to Search for this Decor entry in ATT
		if not IsAltKeyDown() or button ~= "LeftButton" then return end

		if not entryFrame then return end

		local entryInfo = entryFrame.entryInfo
		if not entryInfo then return end

		local entryID = entryInfo.entryID
		if not entryID then return end

		local decorID = entryID.recordID
		if not decorID then return end

		app.SearchAndOpen("decor:"..decorID)
	end)
	app.AddEventRegistryCallback("HousingCatalogEntry.TooltipCreated", function(val1, entryFrame, tooltip)
		-- Debug
		-- app.PrintDebug(val1, entryFrame, tooltip)
		-- app.PrintTable(entryFrame)
		-- app.PrintTable(tooltip)

		-- Don't hook the ATT information when actually editing your House (unnecessary at that point)
		if C_HouseEditor_IsHouseEditorActive() then return end

		if not entryFrame then return end

		local entryInfo = entryFrame.entryInfo
		if not entryInfo then return end

		local entryID = entryInfo.entryID
		if not entryID then return end

		local decorID = entryID.recordID
		if not decorID then return end

		-- hopefully a temp workaround until Blizzard makes their APIs work correctly
		-- check here if the decor is collected via entryFrame and cache in ATT
		local sum = HowManyDecor(entryInfo)
		if sum > 0 and sum < 1000000 then	-- Sometimes API returns 4294967295
			-- ensure this Decor is marked collected
			app.SetThingCollected(KEY, decorID, true, true)
		end

		-- Attach ATT info to Housing Catalog tooltips
		app.ForceAttachTooltip(tooltip, {type="decor", id=decorID})
	end)
end

