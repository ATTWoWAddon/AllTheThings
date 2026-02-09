if not (C_Seasons and C_Seasons.GetActiveSeason() == 2) then return; end 
---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnGetDataCache", function(categories)
local flt,prof,r,x=_.CreateFilter,_.CreateProfession,_.CreateRecipe,_.CreateExpansion;
categories.Unsorted={
x(1,{
flt(200,{
prof(171,{
r(17632,{b=1,itemID=13517,q=1,requireSkill=171})})})}),
x(10,{
flt(200,{
prof(165,{
r(439105,{itemID=217260,q=2,requireSkill=165}),
r(439108,{itemID=217262,q=2,requireSkill=165}),
r(439110,{itemID=217264,q=2,requireSkill=165}),
r(439112,{itemID=217266,q=3,requireSkill=165}),
r(439118,{itemID=217271,q=1,requireSkill=165})})})}),
x(11,{
flt(200,{
prof(165,{
r(1226689,{itemID=238925,lvl={60},requireSkill=165}),
r(1226690,{itemID=238926,lvl={60},requireSkill=165})})})})};
end);
