---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnGetDataCache", function(categories)
local ach,h,p=_.CreateAchievement,_.CreateCustomHeader,_.CreateSpecies;
categories.PetBattles={
h(-12,{pb=1,g={
ach(2516,{pb=1,u=30,g={
p(203,{b=1,itemID=44841,pb=1,petTypeID=5,q=3,spellID=61991,u=30})}}),
ach(1250,{pb=1,u=17,g={
p(160,{b=1,itemID=40653,pb=1,petTypeID=5,q=3,spellID=40990,u=17})}}),
ach(1248,{pb=1}),
ach(15,{pb=1}),
ach(1017,{pb=1})}})};
end);
