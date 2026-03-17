
-- App locals
local _, app = ...;

if app.GameBuildVersion < 100000 then
	app.CreateMountMod = app.CreateUnimplementedClass("MountMod", "mountmodID");
	app.CreateFirstCraft = app.CreateUnimplementedClass("FirstCraft", "firstcraftID");
	return
end

-- Global locals
local pairs
	= pairs

local C_TradeSkillUI_IsRecipeFirstCraft, C_TradeSkillUI_GetRecipeInfo
	= C_TradeSkillUI.IsRecipeFirstCraft, C_TradeSkillUI.GetRecipeInfo

-- Mount Mod Lib
do
	local CACHE = "MountMods"
	local CLASSNAME = "MountMod"
	app.CreateMountMod = app.ExtendClass("Item", CLASSNAME, "mountmodID", {
		RefreshCollectionOnly = true,
		collectible = function(t) return app.Settings.Collectibles[CACHE]; end,
		collected = function(t) return app.IsAccountCached("Quests", t.questID) and 1 end,
		itemID = function(t) return t.mountmodID; end,
	});
	app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)

	app.AddEventHandler("OnLoad", function()
		app.AddDynamicCategoryHeader({ id = "mountmodID", name = "Mount Mods", icon = 975744 });
	end);
end

-- First Craft Lib
do
	local CACHE = "FirstCrafts"
	local CLASSNAME = "FirstCraft"
	local KEY = "firstcraftID"

	local FirstCraftInfoMeta = setmetatable({}, {
		__index = function(t, id)
			if not id then return app.EmptyTable end
			local info = C_TradeSkillUI_GetRecipeInfo(id) or app.EmptyTable
			t[id] = info
			return info
		end
	})

	app.CreateFirstCraft = app.CreateClass(CLASSNAME, KEY, {
		CACHE = function() return CACHE end,
		name = function(t)
			local info = FirstCraftInfoMeta[t.firstcraftID]
			return info.name
		end,
		icon = function(t)
			local info = FirstCraftInfoMeta[t.firstcraftID]
			return info.icon
		end,
		collectible = function(t)
			return app.Settings.Collectibles[CACHE]
		end,
		collected = function(t)
			return app.TypicalCharacterCollected(CACHE, t[KEY])
		end,
		saved = function(t)
			return not C_TradeSkillUI_IsRecipeFirstCraft(t[KEY])
		end,
	},
	"WithQuest", {
		ImportFrom = "Quest",
		ImportFields = { "repeatable", "trackable", "saved" },
	},
	function(t) return t.questID end)
	app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)
	app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
		if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
		if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
	end)
	app.AddGenericFieldConverter(KEY);
	app.AddEventHandler("OnRefreshCollections", function()
		local saved, none = {}, {}
		local o
		for id,cache in pairs(app.GetRawFieldContainer(KEY)) do
			o = cache[1]
			-- If saved, then the FC is cached
			if o.saved then
				saved[id] = true
			else
				none[id] = true
			end
		end

		-- Character Cache
		app.SetBatchCached(CACHE, saved, 1)
		app.SetBatchCached(CACHE, none)
	end)
end
