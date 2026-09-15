if not (not C_Seasons or C_Seasons.GetActiveSeason() ~= 2) then return end
---@diagnostic disable: deprecated
local appName, _ = ...
_.AddEventHandler("OnBuildHiddenDataCache", function(categories)
local ach,x=_.CreateAchievement,_.CreateExpansion;
categories.HiddenAchievementTriggers={
x(1,{awp=10100,g={
ach(15329),
ach(15578)}})}
end)
