---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnBuildDataCache", function(categories)
local flt,h=_.CreateFilter,_.CreateCustomHeader;
categories.InGameShop=
h(-213,{SortPriority=85,g={
flt(101,{u=3}),
flt(100,{u=3})}});
end);
