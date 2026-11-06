-- TODO: Make use of the count variable eventually.
-- #if AFTER WRATH
--- Creates a Badge of Justice object for the active client flavor.
---@param count? number # Unused.
---@return ATTCurrencyObject|ATTItemObject # Badge currency or item object for the active flavor.
BADGE_OF_JUSTICE = function(count)
	return currency(42);	-- Badge of Justice
end
-- #else
--- Creates a Badge of Justice object for the active client flavor.
---@param count? number # Unused.
---@return ATTCurrencyObject|ATTItemObject # Badge currency or item object for the active flavor.
BADGE_OF_JUSTICE = function(count)
	return i(29434);	-- Badge of Justice
end
-- #endif