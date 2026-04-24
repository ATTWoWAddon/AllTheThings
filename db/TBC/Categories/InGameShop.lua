---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnBuildDataCache", function(categories)
local flt,h,mnt=_.CreateFilter,_.CreateCustomHeader,_.CreateMount;
categories.InGameShop=
h(-213,{SortPriority=85,g={
flt(101,{u=3}),
flt(100,{awp=20501,u=3,g={
mnt(348459,{itemID=184865,lvl=30,u=3})}})}});
end);
