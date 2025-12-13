
-- App locals
local _, app = ...

local CACHE = "Decor"
local CLASSNAME = "Decor"
local KEY = "decorID"
if not C_HousingCatalog then
	-- If Decor isn't distinguishable yet, simply create an extended Item
	app.CreateDecor = app.ExtendClass("Item", CLASSNAME, KEY, {});

	return
end

local C_HousingCatalog_GetCatalogEntryInfoByRecordID,C_HouseEditor_IsHouseEditorActive
	= C_HousingCatalog.GetCatalogEntryInfoByRecordID,C_HouseEditor.IsHouseEditorActive

-- TODO: test other APIs
-- this is non-parameterized, returns the max decor that can be owned
-- /dump C_HousingCatalog.GetDecorMaxOwnedCount(2112) -> 5000
-- this is non-parameterized, returns some quantity of decor owned and placed?
-- /dump C_HousingCatalog.GetDecorTotalOwnedCount() -> 110,39
-- /dump C_HousingCatalog.GetCatalogEntryDebugInfoForID(7620)	-- force taint error

local pairs
 	= pairs

local IsAccountCached = app.IsAccountCached
app.AddEventHandler("OnStartupDone", function()
	IsAccountCached = app.IsAccountCached
end)

local HousingSearcher = C_HousingCatalog.CreateCatalogSearcher()

-- Decor Lib [STUB -- WIP]
do
	app.CreateDecor = app.ExtendClass("Item", CLASSNAME, KEY, {
		CACHE = function() return CACHE end,
		collectible = function(t) return app.Settings.Collectibles[CACHE]; end,
		collected = function(t) return IsAccountCached(CACHE, t.decorID) and 1 end,
	});
	local function RefreshDecorCollection()
		HousingSearcher = C_HousingCatalog.CreateCatalogSearcher()
		HousingSearcher:SetAutoUpdateOnParamChanges(false)
		HousingSearcher:SetIncludeMarketEntries(false)
	   	HousingSearcher:SetResultsUpdatedCallback(function()
			local saved, none = {}, {}
			local added = {}
			local entries = HousingSearcher:GetCatalogSearchResults()
			for _, entry in pairs(entries) do
		  		if not IsAccountCached(CACHE, entry.recordID) then
		      		local info = C_HousingCatalog.GetCatalogEntryInfo(entry)
		      		if info ~= nil then
		          		local qty = info.numPlaced + info.numStored
		          
						-- qty can sometimes be 4294967295
		          		if qty > 0 and qty < 1000000 then
                    		saved[entry.recordID] = true
                    		added[#added + 1] = entry
                  		else
                    		none[entry.recordID] = true		          
		          		end
		      		end
		   		end
			end
			app.SetBatchAccountCached(CACHE, saved, 1)
			app.SetBatchAccountCached(CACHE, none)
		end)
	   HousingSearcher:RunSearch()
	end
	local function RefreshWithUpdate()
		-- silently refresh any updated Decor
		app.UpdateRawIDs(KEY, RefreshDecorCollection())
	end
	local function TriggerDecorCatalog()
		-- this seems to properly cache some Decor stuff which seems to not be available in the API
		-- we run this after the initial refresh is done (then remove it) to force-trigger a decor catalog update for proper updating
		C_HousingCatalog.CreateCatalogSearcher()
		app.CallbackHandlers.Callback(app.RemoveEventHandler, TriggerDecorCatalog)
	end
	app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)
	app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
		if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
	end)
	app.AddEventHandler("OnRefreshCollections", RefreshDecorCollection)
	app.AddEventHandler("OnRefreshCollectionsDone", TriggerDecorCatalog)
	app.AddEventRegistration("HOUSING_STORAGE_UPDATED", function()
		-- this event seems to trigger twice (of course) so add a slight delay to ATT's following refresh scan
		app.CallbackHandlers.DelayedCallback(RefreshWithUpdate, 2)
	end)
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
		local sum = entryInfo.numStored + entryInfo.numPlaced
		if sum > 0 and sum < 1000000 then	-- Sometimes API returns 4294967295
			-- ensure this Decor is marked collected
			app.SetThingCollected(KEY, decorID, true, true)
		end

		-- Attach ATT info to Housing Catalog tooltips
		app.ForceAttachTooltip(tooltip, {type="decor", id=decorID})
	end)
end
