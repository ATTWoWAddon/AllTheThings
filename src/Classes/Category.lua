do
local app = select(2, ...);

-- Category Lib
local defaultIcon = app.GameBuildVersion > 60001 and 1001489 or 134064;
app.CreateCategory = app.CreateClass("Category", "categoryID", {
	["name"] = function(t)
		return AllTheThingsAD.LocalizedCategoryNames[t.categoryID] or ("Unknown Category #" .. t.categoryID);
	end,
	["icon"] = function(t)
		return app.CategoryIcons[t.categoryID] or defaultIcon;
	end,
	["ignoreSourceLookup"] = app.ReturnTrue,
});
end
