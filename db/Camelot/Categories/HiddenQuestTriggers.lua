---@diagnostic disable: deprecated
local appName, _ = ...
_.AddEventHandler("OnBuildHiddenDataCache", function(categories)
local hqt,inst,m,x=_.CreateHQT,_.CreateInstance,_.CreateMap,_.CreateExpansion;
categories.HiddenQuestTriggers={
hqt(98338,{awp=16001}),
hqt(99582,{awp=16001}),
hqt(98289,{awp=16001}),
hqt(909,{awp=16001}),
hqt(3911,{awp=16001,description="Unused duplicate of 'The Last Element' (7201) with no quest giver. Likely gets marked as completed alongside 7201."}),
inst(237,{
hqt(96185,{awp=16001,isDaily=1}),
hqt(96186,{awp=16001,isDaily=1}),
hqt(96187,{awp=16001,isDaily=1}),
hqt(96188,{awp=16001,isDaily=1}),
hqt(96189,{awp=16001,isDaily=1}),
hqt(96190,{awp=16001,isDaily=1})}),
hqt(3366),
hqt(94776,{awp=16001,c={5},description="Gets marked as completed alongside the Human Priest quest 'Divine Grace' from Priestess Josetta in Elwynn Forest (94774).",races={1}}),
hqt(94779,{awp=16001,c={5},description="Gets marked as completed alongside the Human Priest quest 'Divine Grace' from Priestess Josetta in Elwynn Forest (94774).",races={1}}),
hqt(5659,{awp=16001,c={5},description="Never implemented as a real quest. Likely gets marked as completed alongside any of the 'Touch of Weakness' Undead Priest quests (5658, 5660-5663).",races={5}}),
x(1,{awp=16000,g={
m(1415,{maps={1463},g={
m(1434,{
hqt(7908,{awp=11201}),
hqt(618),
hqt(614),
hqt(615,{awp=11201}),
hqt(620,{awp=11201}),
hqt(80056,{awp=16001})})}})}}),
hqt(98294,{awp=16001,repeatable=1}),
hqt(8458,{r=1}),
hqt(93654,{awp=16001}),
hqt(93655,{awp=16001}),
hqt(93657,{awp=16001}),
hqt(93658,{awp=16001}),
hqt(93659,{awp=16001}),
hqt(93656,{awp=16001}),
hqt(934,{description="This quest gets marked as completed when you complete the quest ' Crown of the Earth (5/6)' (7383).",r=2}),
hqt(55296,{awp=16001}),
hqt(93462,{awp=16001}),
hqt(93463,{awp=16001}),
hqt(92542,{awp=16001}),
hqt(93175,{awp=16001}),
hqt(93458,{awp=16001})}
end)
