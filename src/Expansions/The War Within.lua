
-- App locals
local _, app = ...

if app.GameBuildVersion < 110100 then
	app.CreateWarbandScene = app.CreateUnimplementedClass("Campsite", "campsiteID")
	return
end

local pairs
	= pairs

-- Campsite Lib
do

	local C_WarbandScene_HasWarbandScene, C_WarbandScene_GetWarbandSceneEntry
		= C_WarbandScene.HasWarbandScene, C_WarbandScene.GetWarbandSceneEntry

	local CACHE = "Campsites"
	local CLASSNAME = "Campsite"
	local KEY = "campsiteID"
	local WarbandSceneInfoMeta = setmetatable({}, {
		__index = function(t, id)
			local info = C_WarbandScene_GetWarbandSceneEntry(id) or app.EmptyTable
			t[id] = info
			return info
		end
	})
	app.CreateWarbandScene = app.CreateClassWithInfo(CLASSNAME, KEY, WarbandSceneInfoMeta, {
		CACHE = function() return CACHE end,
		icon = function(t)
			return app.asset("Category_Campsites")
		end,
		collectible = function(t)
			return app.Settings.Collectibles[CACHE]
		end,
		collected = function(t)
			return app.TypicalAccountCollected(CACHE, t[KEY])
		end,
	})
	app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)
	app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
		if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
	end)
	app.AddEventHandler("OnRefreshCollections", function()
		local saved, none = {}, {}
		for id,_ in pairs(app.GetRawFieldContainer(KEY)) do
			if C_WarbandScene_HasWarbandScene(id) then
				saved[id] = true
			else
				none[id] = true
			end
		end

		-- Account Cache
		app.SetBatchAccountCached(CACHE, saved, 1)
		app.SetBatchAccountCached(CACHE, none)
	end)
end