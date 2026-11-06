---@diagnostic disable: deprecated
local appName, _ = ...
_.AddEventHandler("OnBuildHiddenDataCache", function(categories)
local hqt,m,x=_.CreateHQT,_.CreateMap,_.CreateExpansion;
categories.HiddenQuestTriggers={
hqt(98289,{awp=16001}),
hqt(3911,{awp=16001,description="Unused duplicate of 'The Last Element' (7201) with no quest giver. Likely gets marked as completed alongside 7201."}),
hqt(5659,{awp=16001,c={5},description="Never implemented as a real quest. Likely gets marked as completed alongside any of the 'Touch of Weakness' Undead Priest quests (5658, 5660-5663).",races={5}}),
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
hqt(93462,{awp=16001}),
hqt(93463,{awp=16001}),
hqt(92542,{awp=16001})}
end)
