
-- Currency Class
local _, app = ...

-- Globals
local tostring
	= tostring

-- WoW API Cache
local GetCurrencyInfo = app.WOWAPI.GetCurrencyInfo;
local GetCurrencyLink = app.WOWAPI.GetCurrencyLink;

-- Module

-- App
local SearchForField
	= app.SearchForField

local cache = app.CreateCache("currencyID");
local function default_info(t)
	return GetCurrencyInfo(t.currencyID);
end
local function default_link(t)
	return GetCurrencyLink(t.currencyID, 1);
end
local function default_costCollectibles(t)
	local id = t.currencyID;
	if id then
		local results = SearchForField("currencyIDAsCost", id);
		if #results > 0 then
			-- app.PrintDebug("default_costCollectibles",t.hash,#results)
			return results;
		end
	end
	return app.EmptyTable;
end

-- Currency Lib
local CLASS = "Currency"
local KEY = "currencyID"
app.CreateCurrencyClass = app.CreateClass(CLASS, KEY, {
	_cache = function(t)
		return cache;
	end,
	info = function(t)
		return cache.GetCachedField(t, "info", default_info);
	end,
	link = function(t)
		return cache.GetCachedField(t, "link", default_link);
	end,
	icon = function(t)
		local info = t.info;
		return info and info.iconFileID;
	end,
	name = function(t)
		local info = t.info;
		return info and info.name or ("Currency #" .. t[KEY]);
	end,
	costCollectibles = function(t)
		return cache.GetCachedField(t, "costCollectibles", default_costCollectibles);
	end,
	collectibleAsCost = app.CollectibleAsCost,
	statistic = function(t)
		local info = GetCurrencyInfo(t.currencyID)
		if not info then return end
		local quantity, maxQuantity = info.quantity, info.maxQuantity
		if maxQuantity and maxQuantity > 0 then
			return tostring(quantity) .. " / " .. tostring(maxQuantity)
		elseif quantity and quantity > 0 then
			return tostring(quantity)
		end
	end,
})

local function OnClickCostItem(row, button)
	if button ~= "RightButton" then
		return true
	end

	local group = row.ref
	if not group then return true end

	-- perform a search-based popout of the cost item rather than cloning the group
	app.CreatePopoutForSearch(group.key..":"..group.currencyID)
	return true
end
local CreateCostCurrency = app.CreateClass("CostCurrency", KEY, {
	IsClassIsolated = true,
	-- total is the count of the cost currency required
	total = function(t)
		return t.count or 1;
	end,
	-- progress is how much you have
	progress = function(t)
		return GetCurrencyInfo(t.currencyID).quantity or 0;
	end,
	collectible = app.ReturnFalse,
	trackable = app.ReturnTrue,
	-- saved is whether you have enough
	saved = function(t)
		return t.progress >= t.total;
	end,
	-- hide any irrelevant wrapped fields of a cost item
	g = app.EmptyFunction,
	costCollectibles = app.EmptyFunction,
	collectibleAsCost = app.EmptyFunction,
	costsCount = app.EmptyFunction,
	OnClick = function() return OnClickCostItem end,
})
-- Wraps the given Type Object as a Cost Currency, allowing altered functionality representing this being a calculable 'cost'
app.CreateCostCurrency = function(t, total)
	local c = app.WrapObject(CreateCostCurrency(t[KEY]), t)
	c.count = total;
	-- cost currency should always be visible for clarity
	c.OnUpdate = app.AlwaysShowUpdate;
	return c;
end
