
-- App locals
local _, app = ...;

if app.GameBuildVersion < 90000 then

	app.CreateConduit = app.CreateUnimplementedClass("Conduit", "conduitID");
	app.CreateRuneforgeLegendary = app.CreateUnimplementedClass("RuneforgeLegendary", "runeforgepowerID");

	return
end

local pairs = pairs

-- Subroutines
local function korthian_armaments(ResolveFunctions)
	local select, pop, invtype = ResolveFunctions.select, ResolveFunctions.pop, ResolveFunctions.invtype;
	return function(finalized, searchResults, o, cmd, inv)
		select(finalized, searchResults, o, "select", "itemID", 187187);	-- Korthian Armaments
		pop(finalized, searchResults);	-- Discard the Item Header and acquire all of their children.
		pop(finalized, searchResults);	-- Discard the Headers and acquire all of their children.
		invtype(finalized, searchResults, o, "invtype", inv);	-- Only slot-specific
	end
end

-- Event Handling
app.AddEventHandler("OnLoad", function()
	app.RegisterSymlinkSubroutine("korthian_armaments", korthian_armaments);
end);

-- Conduit Lib
do
	local KEY, CACHE = "conduitID", "Conduits"
	local CLASSNAME = "Conduit"
	if C_Soulbinds then
		local C_Soulbinds_GetConduitCollectionData = C_Soulbinds.GetConduitCollectionData;
		app.CreateConduit = app.ExtendClass("Item", CLASSNAME, KEY, {
			RefreshCollectionOnly = true,
			collectible = function(t) return app.Settings.Collectibles[CACHE]; end,
			collectibleAsCost = app.ReturnFalse,
			collected = function(t)
				local id = t[KEY];
				-- character collected
				if app.IsCached(CACHE, id) then return 1; end
				-- account-wide collected
				if app.IsAccountTracked(CACHE, id) then return 2; end
			end,
			lvl = function(t) return 60; end,
		});
		
		app.AddGenericFieldConverter(KEY);
		app.AddEventHandler("OnRefreshCollections", function()
			local state
			local saved, none = {}, {}
			for id,_ in pairs(app.GetRawFieldContainer(KEY)) do
				state = C_Soulbinds_GetConduitCollectionData(id)
				if state ~= nil then
					saved[id] = true
				else
					none[id] = true
				end
			end
			-- Character Cache
			app.SetBatchCached(CACHE, saved, 1)
			app.SetBatchCached(CACHE, none)
			-- Account Cache (removals handled by Sync)
			app.SetBatchAccountCached(CACHE, saved, 1)
		end);
		app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
			if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
			if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
		end);
		-- No known 'on learned' Event
		app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)
		app.AddEventHandler("OnLoad", function()
			app.AddDynamicCategoryHeader({ id = "conduitID", name = app.WOWAPI.GetSpellName(348869) .. " (" .. EXPANSION_NAME8 .. ")", icon = 3601566 });
		end);
	else
		app.CreateConduit = app.CreateUnimplementedClass("Conduit", KEY);
	end
end

-- Runeforge Legendary Lib
do
	local KEY, CACHE = "runeforgepowerID", "RuneforgeLegendaries"
	local CLASSNAME = "RuneforgeLegendary"
	if C_LegendaryCrafting then
		local C_LegendaryCrafting_GetRuneforgePowerInfo = C_LegendaryCrafting.GetRuneforgePowerInfo;
		app.CreateRuneforgeLegendary = app.ExtendClass("Item", CLASSNAME, KEY, {
			CACHE = function() return CACHE end,
			collectible = function(t) return app.Settings.Collectibles[CACHE]; end,
			collectibleAsCost = app.ReturnFalse,
			collected = function(t) return app.IsAccountCached(CACHE, t[KEY]) and 1 end,
			lvl = function(t) return 60; end,
		});
		
		app.AddGenericFieldConverter(KEY);
		app.AddEventHandler("OnRefreshCollections", function()
			local check
			local saved, none = {}, {}
			for id,_ in pairs(app.GetRawFieldContainer(KEY)) do
				check = C_LegendaryCrafting_GetRuneforgePowerInfo(id)
				if check and check.state == 0 then
					saved[id] = true
				else
					none[id] = true
				end
			end
			app.SetBatchAccountCached(CACHE, saved, 1)
			app.SetBatchAccountCached(CACHE, none)
		end);
		app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
			-- Runeforge Legendaries are no longer per-character.
			currentCharacter[CACHE] = nil;
			if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
		end);
		app.AddEventRegistration("NEW_RUNEFORGE_POWER_ADDED", function(id)
			app.SetThingCollected(KEY, id, true, true)
		end);
		app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)
		app.AddEventHandler("OnLoad", function()
			app.AddDynamicCategoryHeader({ id = "runeforgepowerID", name = LOOT_JOURNAL_LEGENDARIES .. " (" .. EXPANSION_NAME8 .. ")", icon = app.asset("Weapon_Type_Legendary") });
		end);
	else
		app.CreateRuneforgeLegendary = app.CreateUnimplementedClass("RuneforgeLegendary", KEY);
	end
end