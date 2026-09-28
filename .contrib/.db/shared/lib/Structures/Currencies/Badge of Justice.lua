-- TODO: Make use of the count variable eventually.
-- #if AFTER WRATH
BADGE_OF_JUSTICE = function(count)
	return currency(42);	-- Badge of Justice
end
-- #else
BADGE_OF_JUSTICE = function(count)
	return i(29434);	-- Badge of Justice
end
-- #endif