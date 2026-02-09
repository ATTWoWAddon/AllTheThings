if not (not C_Seasons or C_Seasons.GetActiveSeason() ~= 2) then return; end 
---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnGetDataCache", function(categories)
local flt,prof,r,x=_.CreateFilter,_.CreateProfession,_.CreateRecipe,_.CreateExpansion;
categories.Unsorted={
x(1,{
flt(200,{
prof(171,{
r(17632,{b=1,itemID=13517,q=1,requireSkill=171})})})}),
x(11,{
flt(200,{
prof(10656,{
r(461655,{itemID=227902,q=1,requireSkill=10656}),
r(461657,{itemID=227903,q=3,requireSkill=10656}),
r(461659,{itemID=227904,q=3,requireSkill=10656}),
r(461653,{itemID=227910,q=4,requireSkill=10656})}),
prof(10658,{
r(461661,{itemID=227906,q=2,requireSkill=10658}),
r(461663,{itemID=227907,q=2,requireSkill=10658}),
r(461665,{itemID=227908,q=2,requireSkill=10658}),
r(461690,{itemID=228276,q=4,requireSkill=10658})}),
prof(165,{
r(461706,{b=1,itemID=228301,q=3,requireSkill=165}),
r(461754,{b=1,itemID=228319,q=3,requireSkill=165})})})})};
end);
