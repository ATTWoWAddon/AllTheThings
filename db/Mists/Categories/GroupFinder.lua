---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnGetDataCache", function(categories)
local ach,h,i,p,s,title,x=_.CreateAchievement,_.CreateCustomHeader,_.CreateItem,_.CreateSpecies,_.CreateItemSource,_.CreateTitle,_.CreateExpansion;
categories.GroupFinder={
h(-12,{u=33,g={
ach(4476,{rank=10,u=33}),
ach(4477,{rank=50,u=33,g={
title(137,{u=33})}}),
ach(4478,{rank=100,u=33,g={
p(250,{b=1,itemID=49912,npcID=37865,q=3,spellID=70613,u=33})}})}}),
x(1,{u=33,g={
i(51999,{awp=30300,b=1,description="Rewarded for completing a random dungeon in the level 15-25 range.",q=3,rwp=70305,u=33,g={
s(179837,51994,{b=1,f=3,q=3,u=33}),
s(202631,51978,{b=1,f=6,q=3,u=33}),
s(179813,51968,{b=1,f=4,q=3,u=33}),
s(202629,51964,{b=1,f=5,q=3,u=33})}}),
i(52000,{awp=30300,b=1,description="Rewarded for completing a random dungeon in the level 26-35 range.",q=3,rwp=70305,u=33,g={
i(51996,{b=1,f=51,q=3,u=33}),
s(179825,51980,{b=1,f=6,q=3,rwp=70100,u=33}),
s(179818,51973,{b=1,f=4,q=3,u=33}),
s(179810,51965,{b=1,f=5,q=3,u=33})}}),
i(67248,{awp=40001,b=1,description="This is only rewarded for completing Maraudon - Earth Song Falls (level 36-39 range).",q=3,rwp=70305,u=33,g={
s(179821,51976,{b=1,f=6,q=3,u=33}),
s(179819,51974,{b=1,f=4,q=3,u=33}),
s(179829,51984,{b=1,description="These may only be available at level 40+.",f=7,q=3,u=33}),
s(179838,51997,{b=1,description="These may only be available below level 40.",f=6,q=3,u=33}),
s(179811,51966,{b=1,description="These may only be available at level 40+.",f=5,q=3,u=33}),
s(179839,51998,{b=1,description="These may only be available below level 40.",f=5,q=3,u=33}),
i(51992,{b=1,f=52,q=3,u=33})}}),
i(52001,{awp=30300,b=1,description="Rewarded for completing a random dungeon in the level 40-45 range.",q=3,rwp=70305,u=33,g={
s(179821,51976,{b=1,f=6,q=3,u=33}),
s(179819,51974,{b=1,f=4,q=3,u=33}),
s(179829,51984,{b=1,f=7,q=3,u=33}),
s(179811,51966,{b=1,f=5,q=3,u=33}),
i(51992,{b=1,f=52,q=3,u=33})}}),
i(52002,{awp=30300,b=1,description="Rewarded for completing a random dungeon in the level 46-55 range.",q=3,rwp=70305,u=33,g={
s(179827,51982,{b=1,f=6,q=3,u=33}),
s(179826,51981,{b=1,f=6,q=3,u=33}),
s(179817,51972,{b=1,f=4,q=3,u=33}),
s(179812,51967,{b=1,f=4,q=3,u=33}),
s(179834,51989,{b=1,f=7,q=3,u=33}),
s(179835,51990,{b=1,f=7,q=3,u=33}),
s(179807,51962,{b=1,f=5,q=3,u=33}),
s(179808,51963,{b=1,f=5,q=3,u=33})}}),
i(52003,{awp=30300,b=1,description="Rewarded for completing a random dungeon in the level 56-60 range.",q=3,rwp=70305,u=33,g={
s(179836,51993,{b=1,f=3,q=3,u=33}),
s(202630,51977,{b=1,f=6,q=3,u=33}),
s(179816,51971,{b=1,f=4,q=3,u=33}),
s(179830,51985,{b=1,f=7,q=3,u=33}),
s(202628,51959,{b=1,f=5,q=3,u=33})}})}}),
x(2,{awp=30300,u=33,g={
i(52004,{b=1,description="Rewarded for completing a random dungeon in the level 60-64 range.",q=3,rwp=70305,u=33,g={
i(51995,{b=1,f=51,q=3,u=33}),
s(179824,51979,{b=1,f=6,q=3,u=33}),
s(179815,51970,{b=1,f=4,q=3,u=33}),
s(179832,51987,{b=1,f=7,q=3,u=33}),
s(179805,51960,{b=1,f=5,q=3,u=33})}}),
i(52005,{b=1,description="Rewarded for completing a random dungeon in the level 65-70 range.",q=3,rwp=70305,u=33,g={
i(51991,{b=1,f=52,q=3,u=33}),
s(179820,51975,{b=1,f=6,q=3,u=33}),
s(179814,51969,{b=1,f=4,q=3,u=33}),
s(179828,51983,{b=1,f=7,q=3,u=33}),
s(179806,51961,{b=1,f=5,q=3,u=33})}})}}),
x(5,{u=33,g={
i(69903,{awp=40100,b=2,q=7,rwp=60100,sym={{"select","itemID",44984,34535,10360,8491,54436,8485,10394,46398,8496,8486,10392,10822,48114,44970,44973,67282,44974,44982,29960,64403,43698,29953,8492,48116,48118,45002,44980,48120,8487,35504,44721,48124,48126,8495,45606,69992,8490,8488,44965,8499,69991,44971,8489,13335,43953,44151,44707,32768,43962,35513}},u=33}),
i(90818,{awp=50004,b=2,q=7,rwp=60100,sym={{"select","itemID",69903},{"pop"}},u=33})}})};
end);
