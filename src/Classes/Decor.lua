
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

local C_HousingCatalog_GetCatalogEntryInfoByItem
	= C_HousingCatalog.GetCatalogEntryInfoByItem

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

-- Decor Lib [STUB -- WIP]
do
	local DecorSearcherCached
	app.CreateDecor = app.ExtendClass("Item", CLASSNAME, KEY, {
		CACHE = function() return CACHE end,
		collectible = function(t) return app.Settings.Collectibles[CACHE]; end,
		collected = function(t) return IsAccountCached(CACHE, t.decorID) and 1 end,
	});
	app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)
	app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
		if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
	end)
	app.AddEventHandler("OnRefreshCollections", function()
		if not DecorSearcherCached then
			-- this seems to properly cache some Decor stuff which seems to not be available in the API, but it's a bit delayed such that the
			-- initial refresh on login won't quite capture it and a further force refresh will be required,
			-- but better than telling users to open Housing UI manually
			C_HousingCatalog.CreateCatalogSearcher()
			DecorSearcherCached = true
		end
		local state, source
		local saved, none = {}, {}
		for id,sources in pairs(app.GetRawFieldContainer(KEY)) do
			if not IsAccountCached(CACHE, id) then
				source = sources[1]
				state = C_HousingCatalog_GetCatalogEntryInfoByItem(source.itemID, true)
				-- quantity is how many owned
				-- hasPlaced is used when the item is owned, but placed in the house (or outside)
				if state then
					local sum = state.numStored + state.numPlaced
					if sum > 0 and sum < 1000000 then	-- Sometimes API returns 4294967295
						-- state is valid, keep it
						saved[id] = true
					else
						none[id] = true
					end
				end
			end
		end

		-- Account Cache
		app.SetBatchAccountCached(CACHE, saved, 1)
		-- Decor is not currently reliably refreshed, so don't clear missing
		-- app.SetBatchAccountCached(CACHE, none)
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
		-- local args = { ... }
		-- for i = 1, #args do
			-- app.PrintDebug(i, args[i])
			-- if type(args[i]) == "table" then
			-- 	app.PrintTable(args[i])
			-- end
		-- end

		if not entryFrame then return end

		local entryInfo = entryFrame.entryInfo
		if not entryInfo then return end

		local entryID = entryInfo.entryID
		if not entryID then return end

		local decorID = entryID.recordID
		if not decorID then return end

		-- Attach ATT info to Housing Catalog tooltips
		app.ForceAttachTooltip(tooltip, {type="decor", id=decorID})
	end)
end
