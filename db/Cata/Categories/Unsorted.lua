---@diagnostic disable: deprecated
local appName, _ = ...;
local flt,prof,r,s,x=_.CreateFilter,_.CreateProfession,_.CreateRecipe,_.CreateItemSource,_.CreateExpansion;
_.Categories.Unsorted={
x(1,{
flt(200,{
prof(333,{
r(20014,{itemID=16216,q=2,requireSkill=333})})})}),
x(2,{
flt(4,{
s(133747,23349,{f=4,q=1}),
s(201246,23472,{f=4,q=1})})}),
x(4,{
flt(21,{
s(174164,42226,{b=1,f=21,lvl={80},q=4}),
s(174169,42231,{b=1,f=21,lvl={80},q=4})}),
flt(20,{
s(174184,42247,{b=1,f=20,lvl={80},q=4}),
s(174189,42254,{b=1,f=20,lvl={80},q=4})}),
flt(34,{
s(174199,42264,{b=1,f=34,lvl={80},q=4}),
s(174204,42269,{b=1,f=34,lvl={80},q=4})}),
flt(23,{
s(174214,42279,{b=1,f=23,lvl={80},q=4})}),
flt(25,{
s(174224,42289,{b=1,f=25,lvl={80},q=4})}),
flt(200,{
prof(185,{
r(6417,{b=1,itemID=44977,q=1,requireSkill=185})}),
prof(773,{
r(71015,{itemID=50167,requireSkill=773})})})})};
