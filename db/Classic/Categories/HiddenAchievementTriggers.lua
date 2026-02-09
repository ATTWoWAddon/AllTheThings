if not (not C_Seasons or C_Seasons.GetActiveSeason() ~= 2) then return; end 
---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnGetDataCache", function(categories)
local ach,x=_.CreateAchievement,_.CreateExpansion;
categories.HiddenAchievementTriggers={
x(1,{
ach(15329),
ach(15578)})};
end);
