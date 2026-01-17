-- App locals
local _,app = ...;

local pairs, PlayerHasToy = pairs, PlayerHasToy;

-- WoW API Cache
local GetItemCount = app.WOWAPI.GetItemCount;

-- Toy Lib
local KEY, CACHE = "toyID", "Toys"
local AccountWideToyData = {};
local toyFields = {
	CACHE = function() return CACHE end,
	collectible = function(t)
		return app.Settings.Collectibles[CACHE];
	end,
	collected = app.IsClassic and function(t)
		-- really don't want the evaluation of whether something is collected to be forcibly executed on EVERY check
		-- should be a cached check with a re-evaluation if not cached state
		return app.SetCollected(t, CACHE, t[KEY], GetItemCount(t[KEY], true) > 0);
	end or function(t)
		return app.TypicalAccountCollected(CACHE, t[KEY])
	end,
	itemID = function(t)
		return t[KEY];
	end,
};

if not C_ToyBox or app.GameBuildVersion < 30000 then
	app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
		if not currentCharacter.Toys then currentCharacter.Toys = {}; end

		local accountWide = accountWideData.Toys;
		if accountWide then
			AccountWideToyData = accountWide;
		else
			accountWideData.Toys = AccountWideToyData;
		end
	end);
	app.CreateToy = app.ExtendClass("Item", "Toy", "toyID", toyFields);
	return
end

-- Toy API is in!
local C_ToyBox_GetToyInfo = C_ToyBox.GetToyInfo;
local IsToyBNETCollectible = setmetatable({}, {
	__index = function(t, toyID)
		if C_ToyBox_GetToyInfo(toyID) then
			t[toyID] = true;
			return true;
		end
	end
});
toyFields.collected = app.IsClassic and function(t)
	local toyID = t[KEY];
	if IsToyBNETCollectible[t[KEY]] then
		if AccountWideToyData[toyID] then return 1; end	-- Once acquired, you can't unaquire them.
		return app.SetAccountCollected(t, CACHE, toyID, PlayerHasToy(toyID));
	else
		return app.SetCollected(t, CACHE, toyID, GetItemCount(toyID, true) > 0);
	end
end or function(t)
	return app.TypicalAccountCollected(CACHE, t[KEY])
end;
toyFields.description = function(t)
	if not IsToyBNETCollectible[t[KEY]] then
		return "This is not a Toy as classified by Blizzard, but it is something that SHOULD be a Toy! Keep this in your inventory somewhere on an alt until Blizzard fixes it.";
	end
end;

app.AddEventRegistration("TOYS_UPDATED", app.IsRetail and function(itemID, new)
	if itemID and PlayerHasToy(itemID) then
		app.SetThingCollected(KEY, itemID, true, true)
	end
end or function(toyID, new)
	if toyID then
		app.SetAccountCollected(app.SearchForField(KEY, toyID)[1] or app.CreateToy(toyID), CACHE, toyID, PlayerHasToy(toyID));
		app:RefreshDataQuietly("TOYS_UPDATED", true);
	end
end)
if app.IsClassic then
	app.AddEventHandler("OnRefreshCollections", function()
		-- Refresh Toys
		local collected;
		for id,t in pairs(app.GetRawFieldContainer("toyID")) do
			if #t > 0 then
				collected = t[1].collected;	-- Run the collected field's code.
			end
		end
	end);
else
	app.AddEventHandler("OnRefreshCollections", function()
		local saved, none = {}, {}
		for id,_ in pairs(app.GetRawFieldContainer("toyID")) do
			if PlayerHasToy(id) then
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
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
	if not accountWideData[CACHE] then accountWideData[CACHE] = {} end

	local accountWide = accountWideData.Toys;
	if accountWide then
		AccountWideToyData = accountWide;
	else
		accountWideData.Toys = AccountWideToyData;
	end

	if app.IsClassic then
		-- With Wrath Classic, toys became *mostly* account wide.
		local characterData = currentCharacter.Toys;
		if characterData then
			app:StartATTCoroutine("ValidateCharacterToys", function()
				-- Wait until the Piccolo is detected as a toy.
				while not IsToyBNETCollectible[13379] do	-- Piccolo
					coroutine.yield();
				end
				for toyID,collected in pairs(characterData) do
					if collected and IsToyBNETCollectible[toyID] then
						AccountWideToyData[toyID] = 1;
						characterData[toyID] = nil;
					end
				end
			end);
		else
			currentCharacter.Toys = {};
		end
	end
end);
local CLASSNAME = "Toy"
app.CreateToy = app.ExtendClass("Item", CLASSNAME, "toyID", toyFields);

app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)
