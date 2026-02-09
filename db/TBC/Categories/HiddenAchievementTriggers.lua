---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnGetDataCache", function(categories)
local x=_.CreateExpansion;
categories.HiddenAchievementTriggers={
x(1),
x(2)};
end);
