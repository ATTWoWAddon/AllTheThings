---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnGetDataCache", function(categories)
local flt,i,prof,r,s,x=_.CreateFilter,_.CreateItem,_.CreateProfession,_.CreateRecipe,_.CreateItemSource,_.CreateExpansion;
categories.Unsorted={
x(2,{
flt(4,{
s(133747,23349,{f=4,q=1}),
s(201246,23472,{f=4,q=1})})}),
x(4,{
flt(200,{
prof(185,{
r(6417,{b=1,itemID=44977,q=1,requireSkill=185})}),
prof(773,{
r(71015,{itemID=50167,requireSkill=773})})})}),
x(5,{
flt(200,{
prof(165,{
i(86286,{b=1,f=200,q=3,requireSkill=165})})})})};
end);
