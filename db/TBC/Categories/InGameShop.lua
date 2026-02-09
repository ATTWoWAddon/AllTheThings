---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnGetDataCache", function(categories)
local flt,mnt=_.CreateFilter,_.CreateMount;
categories.InGameShop={
flt(101,{u=3}),
flt(100,{awp=20501,u=3,g={
mnt(348459,{itemID=184865,lvl=30,u=3})}})};
end);
