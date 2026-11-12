if not (C_Seasons and C_Seasons.GetActiveSeason() == 2) then return end
---@diagnostic disable: deprecated
local appName, _ = ...
_.AddEventHandler("OnBuildDataCache", function(categories)
local h,mnt,p,q,s,x=_.CreateCustomHeader,_.CreateMount,_.CreateSpecies,_.CreateQuest,_.CreateItemSource,_.CreateExpansion;
categories.Promotions=
h(-736,{SortPriority=90,g={
h(-520,{awp=11101,g={
p(107,{b=1,itemID=20371,petTypeID=1,q=1,spellID=24696,u=2})}}),(_.OnInitDB.RegionExclusiveCN)(
h(-782,{(_.OnInitDB.RegionExclusiveCN)(
mnt(42777,{description="Obtained if you paid 267$ to set up a 6 Month WoW Subscription between 25th January 2022 until 25th July 2022.",itemID=33225,u=2}))})),
h(-521,{awp=10100,u=3,g={
x(1,{description="These rewards were made available to anyone who purchased an original Collector's Edition of World of Warcraft.\n\nThere may still be copies online, but expect to lose a sizable chunk of real world currency for it.",u=3,g={
h(-45,{awp=11505,u=3,g={
q(91888,{coords={
[1434]={{28.2,75.8}}},crs={5111,6740,6741,6746,6929},description="These rewards were made available to anyone who purchased a 2024 employee 30th anniversary collector's edition.\n\nThere may still be copies online, but expect to a sizable chunk of real world currency for it.",maps={1453,1454,1455,1456,1458},qgs={17249},u=3,g={
p(93,{awp=11101,b=1,itemID=13584,petTypeID=6,q=1,spellID=17708,u=3}),
p(92,{awp=11101,b=1,itemID=13583,petTypeID=8,q=1,spellID=17707,u=3}),
p(94,{awp=11101,b=1,itemID=13582,petTypeID=5,q=1,spellID=17709,u=3})}})}})}})}}),
h(-546,{awp=11201,u=2,g={
p(124,{b=1,itemID=22781,petTypeID=8,q=1,spellID=28505,u=2}),
p(1073,{b=1,itemID=22780,petTypeID=1,q=1,spellID=28487,u=2}),
p(757,{b=1,itemID=19055,petTypeID=2,q=1,spellID=23531,u=2}),
p(758,{b=1,itemID=19054,petTypeID=2,q=1,spellID=23530,u=2})}}),
h(-547,{awp=11101,g={
s(163830,19160,{b=1,description="This tabard was given to the people on each servers with the most honorable kills before the introduction of the original honor system.",f=9,q=1,u=2})}})}})
end)
