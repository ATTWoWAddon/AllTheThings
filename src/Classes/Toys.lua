-- App locals
local _,app = ...;

local pairs, PlayerHasToy = pairs, PlayerHasToy;
local GetItemCount = app.WOWAPI.GetItemCount;

-- Helper Functions
local C_ToyBox_GetToyInfo = C_ToyBox.GetToyInfo or app.ReturnFalse;
local IsToyBNETCollectible = setmetatable({}, {
	__index = function(t, id)
		if C_ToyBox_GetToyInfo(id) then
			t[id] = true;
			return true;
		end
	end
});

-- Toy Lib
local KEY, CACHE, CLASSNAME = "toyID", "Toys", "Toy"
local function OnTooltipForToyEventually(toy, tooltipInfo)
	app.SetThingCollected(KEY, toy.toyID, false, GetItemCount(toy.toyID, true) > 0)
end
app.CreateToy = app.ExtendClass("Item", CLASSNAME, "toyID", {
	CACHE = function() return CACHE end,
	collectible = function(t)
		return app.Settings.Collectibles[CACHE];
	end,
	collected = function(t)
		return app.TypicalAccountCollected(CACHE, t[KEY])
	end,
	itemID = function(t)
		return t[KEY];
	end,
},
"Eventually", {
	description = function(t)
		return app.L.TOY_EVENTUALLY_DESC;
	end,
	collected = function(t)
		return app.TypicalCharacterCollected(CACHE, t[KEY])
	end,
	OnTooltip = function()
		return OnTooltipForToyEventually;
	end,
},
function(t) return not IsToyBNETCollectible[t.toyID] end);
app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)

app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
	if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
end)
app.AddEventRegistration("TOYS_UPDATED", function(itemID, new)
	if itemID and PlayerHasToy(itemID) then
		app.SetThingCollected(KEY, itemID, true, true)
	end
end)
app.AddEventHandler("OnRefreshCollections", function()
	local account, char, none = {}, {}, {}
	for id,_ in pairs(app.GetRawFieldContainer("toyID")) do
		if IsToyBNETCollectible[id] then
			if PlayerHasToy(id) then
				account[id] = true
			else
				none[id] = true
			end
		elseif GetItemCount(id, true) > 0 then
			char[id] = true
		end
	end

	-- Account Cache
	app.SetBatchAccountCached(CACHE, account, 1)
	app.SetBatchAccountCached(CACHE, none)
	app.SetBatchCached(CACHE, char, 1)
	app.SetBatchCached(CACHE, none)
end)


