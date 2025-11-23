---@diagnostic disable: deprecated
local appName, _ = ...;
local flt,i,prof,s,x=_.CreateFilter,_.CreateItem,_.CreateProfession,_.CreateItemSource,_.CreateExpansion;
_.Categories.Unsorted={
x(2,{
flt(4,{
s(133747,23349,{f=4,q=1}),
s(133868,23472,{f=4,q=1})})}),
x(4,{
flt(21,{
s(174164,42226,{b=1,f=21,lvl={80},q=4}),
s(174169,42231,{b=1,f=21,lvl={80},q=4})}),
flt(20,{
s(174184,42247,{b=1,f=20,lvl={80},q=4}),
s(174189,42254,{b=1,f=20,lvl={80},q=4})}),
flt(34,{
s(174199,42264,{b=1,f=34,lvl={80},q=4,races={1,2,3,4,5,6,7,8,10,11}}),
s(174204,42269,{b=1,f=34,lvl={80},q=4,races={1,2,3,4,5,6,7,8,10,11}})}),
flt(23,{
s(174214,42279,{b=1,f=23,lvl={80},q=4})}),
flt(25,{
s(174224,42289,{b=1,f=25,lvl={80},q=4})}),
flt(200,{
prof(356,{
i(46054,{f=200,q=1,requireSkill=356}),
i(46055,{f=200,q=1,requireSkill=356})})})})};
