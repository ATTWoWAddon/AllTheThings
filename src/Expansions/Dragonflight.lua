
-- App locals
local _, app = ...;

if app.GameBuildVersion < 100000 then
	app.CreateMountMod = app.CreateUnimplementedClass("MountMod", "mountmodID");

	return
end

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