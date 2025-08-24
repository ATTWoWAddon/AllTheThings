---@diagnostic disable: deprecated
local appName, _ = ...;
local ach,h,p=_.CreateAchievement,_.CreateCustomHeader,_.CreateSpecies;
_.Categories.PetBattles={
h(-12,{pb=1,g={ach(1250,{pb=1,u=17,g={p(160,{itemID=40653,pb=1,petTypeID=5,spellID=40990,u=17})}}),ach(1248,{pb=1}),ach(15,{pb=1}),ach(1017,{pb=1})}})};
