if not (not C_Seasons or C_Seasons.GetActiveSeason() ~= 2) then return; end 
---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnBuildDataCache", function(categories)
local h=_.CreateCustomHeader;
categories.Housing=
h(-682,{SortPriority=45,g={
h(-745)}});
end);
