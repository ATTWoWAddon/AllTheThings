---@diagnostic disable: deprecated
local appName, _ = ...
_.AddEventHandler("OnBuildHiddenDataCache", function(categories)
local hqt,m,x=_.CreateHQT,_.CreateMap,_.CreateExpansion;
categories.HiddenQuestTriggers={
hqt(98289,{awp=16001}),
x(1,{awp=16000,g={
m(1415,{maps={1463},g={
m(1434,{
hqt(7908,{awp=11201}),
hqt(618),
hqt(614),
hqt(615,{awp=11201}),
hqt(620,{awp=11201})})}})}}),
hqt(98294,{awp=16001,repeatable=1}),
hqt(934,{description="This quest gets marked as completed when you complete the quest ' Crown of the Earth (5/6)' (7383).",r=2}),
hqt(93463,{awp=16001})}
end)
