if not (not C_Seasons or C_Seasons.GetActiveSeason() ~= 2) then return; end 
---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnGetDataCache", function(categories)
local ach,h=_.CreateAchievement,_.CreateCustomHeader;
categories.PetBattles={
h(-12,{pb=1,g={
ach(1248,{pb=1}),
ach(15,{pb=1}),
ach(1017,{pb=1})}})};
end);
