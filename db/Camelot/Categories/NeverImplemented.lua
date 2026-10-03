---@diagnostic disable: deprecated
local appName, _ = ...
_.AddEventHandler("OnBuildHiddenDataCache", function(categories)
local fp,h=_.CreateFlightPath,_.CreateCustomHeader;
categories.NeverImplemented={
h(-32,{
fp(3207)})}
end)
