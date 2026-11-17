-- TODO: Make use of the count variable eventually.
-- #if AFTER WRATH
--- Builds the Badge of Justice currency or legacy item for this client.
---@param count? number # Reserved count; currently unused.
---@return ATTCurrencyObject # Badge object for this client.
BADGE_OF_JUSTICE = function(count)
	return currency(42);	-- Badge of Justice
end
-- #else
--- Builds the Badge of Justice currency or legacy item for this client.
---@param count? number # Reserved count; currently unused.
---@return ATTItemObject # Badge object for this client.
BADGE_OF_JUSTICE = function(count)
	return i(29434);	-- Badge of Justice
end
-- #endif
