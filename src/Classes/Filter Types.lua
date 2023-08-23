do
-- CRIEVE NOTE: This file is currently identical in both Retail and Classic.
-- DO NOT TOUCH IT.
local app = select(2, ...);
local FILTER_ID_TYPES = app.L.FILTER_ID_TYPES;
local FILTER_ID_ICONS = app.L.FILTER_ID_ICONS;

app.CreateFilter = app.CreateClass("Filter", "filterID", {
	["name"] = function(t)
		return FILTER_ID_TYPES[t.filterID];
	end,
	["icon"] = function(t)
		return FILTER_ID_ICONS[t.filterID];
	end,
});
end