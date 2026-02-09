if not (C_Seasons and C_Seasons.GetActiveSeason() == 2) then return; end 
---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnGetDataCache", function(categories)
local flt,h,i,mnt,p,q,s,x=_.CreateFilter,_.CreateCustomHeader,_.CreateItem,_.CreateMount,_.CreateSpecies,_.CreateQuest,_.CreateItemSource,_.CreateExpansion;
categories.Promotions={
h(-520,{awp=11101,g={
p(107,{b=1,itemID=20371,petTypeID=1,q=1,spellID=24696,u=2})}}),
h(-521,{u=3,g={
x(1,{description="These rewards were made available to anyone who purchased an original Collector's Edition of World of Warcraft.\n\nThere may still be copies online, but expect to lose a sizable chunk of real world currency for it.",u=3,g={
h(-45,{rwp=20001,u=3,g={
q(5841,{maps={1426},providers={{"i",14647}},races={3,7},u=3}),
q(5805,{maps={1429},providers={{"i",14646}},races={1},u=3}),
q(5842,{maps={1438},providers={{"i",14648}},races={4},u=3}),
q(5843,{maps={1411},providers={{"i",14649}},races={2,8},u=3}),
q(5844,{maps={1412},providers={{"i",14650}},races={6},u=3}),
q(5847,{maps={1420},providers={{"i",14651}},races={5},u=3})}}),
h(-47,{awp=11101,description="Every character you created was able to select between one of the three pets by completing the 'Welcome!' quest for your race.",rwp=20001,sourceQuests={5805,5841,5842,5843,5844,5847},u=3,g={
p(93,{b=1,itemID=13584,petTypeID=6,q=1,spellID=17708,u=3}),
p(92,{b=1,itemID=13583,petTypeID=8,q=1,spellID=17707,u=3}),
p(94,{b=1,itemID=13582,petTypeID=5,q=1,spellID=17709,u=3})}})}})}}),
h(-546,{awp=11201,u=2,g={
p(757,{b=1,itemID=19055,petTypeID=2,q=1,spellID=23531,u=2}),
p(124,{b=1,itemID=22781,petTypeID=8,q=1,spellID=28505,u=2}),
p(758,{b=1,itemID=19054,petTypeID=2,q=1,spellID=23530,u=2}),
p(1073,{b=1,itemID=22780,petTypeID=1,q=1,spellID=28487,u=2})}}),
h(-547,{
s(163830,19160,{awp=11101,b=1,description="This tabard was given to the people on each servers with the most honorable kills before the introduction of the original honor system.",f=9,q=1,u=2}),
p(1168,{awp=20100,b=1,description="Reward from a Korean Promotional Event (Korea Only)",itemID=20651,petTypeID=1,q=1,spellID=25018,u=1}),
p(121,{awp=20003,b=1,description="Offered as a fan website gift around Christmas 2006, in Europe. (EU Only)",itemID=22114,petTypeID=1,q=1,spellID=27241,u=1})}),
h(-551,{awp=20001,u=1,g={
flt(101,{u=1,g={
p(130,{b=1,itemID=23713,petTypeID=3,q=1,spellID=30156,u=1})}}),
flt(50,{u=1}),
flt(100,{u=1,g={
mnt(30174,{b=1,itemID=23720,lvl=20,q=1,races={1,2,3,4,5,6,7,8},u=1})}}),
flt(9,{u=1,g={
s(165302,23705,{b=1,f=9,q=4,u=1}),
s(165303,23709,{b=1,f=9,q=1,u=1})}}),
flt(102,{u=1,g={
i(23716,{awp=20203,b=1,f=53,q=1,u=1}),
i(23714,{awp=20203,b=1,f=53,q=1,u=1})}})}})};
end);
