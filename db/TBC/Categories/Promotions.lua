---@diagnostic disable: deprecated
local appName, _ = ...;
local ach,flt,h,i,mnt,p,q,s,settings,toy,x=_.CreateAchievement,_.CreateFilter,_.CreateCustomHeader,_.CreateItem,_.CreateMount,_.CreateSpecies,_.CreateQuest,_.CreateItemSource,_.Settings,_.CreateToy,_.CreateExpansion;
_.Categories.Promotions={
h(-520,{
p(107,{awp=11101,b=1,itemID=20371,petTypeID=1,q=3,spellID=24696,u=2}),
toy(33079,{awp=20103,b=1,q=3,u=2})}),
x(2,{u=3,g={
q(63768,{altQuests={63767},coords={{28.2,75.8,1434}},crs={5111,6735,6740,6741,6746,6929,16618,16739,17630,19046,19232},maps={1453,1454,1455,1456,1458,1947,1954,1955},qgs={17249},u=2,g={
toy(32542,{b=1,description="Obtained if you set up a 6 Month WoW Subscription between 5th May 2021 until 5th Nov 2022.",q=3,u=3})}}),
q(65285,{altQuests={65284},coords={{28.2,75.8,1434}},crs={5111,6740,6741,6746,6929,16618,16739,19046,19232},maps={1453,1454,1455,1456,1458,1947,1954,1955},qgs={17249},u=2,g={
toy(33219,{b=1,description="Obtained if you set up a 6 Month WoW Subscription between 13th February 2022 until 13th August 2022.",q=3,u=3})}}),
q(65562,{altQuests={65561},coords={{28.2,75.8,1434}},crs={5111,6740,6741,6746,6929,16618,16739,19046,19232},maps={1453,1454,1455,1456,1458,1947,1954,1955},qgs={17249},u=2,g={
s(134092,23705,{b=1,description="Obtained if you set up a 6 Month WoW Subscription between 13th February 2022 until 13th August 2022 or a 12 Month WoW Subscription between 11th November 2022 until 15th January 2023.",f=9,q=4,u=3})}}),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(42777,{b=1,description="Obtained if you paid 267$ to set up a 6 Month WoW Subscription between 25th January 2022 until 25th July 2022.",itemID=33225,lvl=60,q=4,u=2}))}}),
h(-521,{u=3,g={
x(1,{description="These rewards were made available to anyone who purchased an original Collector's Edition of World of Warcraft.\n\nThere may still be copies online, but expect to lose a sizable chunk of real world currency for it.",u=3,g={
h(-45,{rwp=20001,u=2,g={
q(8547,{awp=20001,maps={1941},providers={{"i",20938}},races={10},u=3}),
q(9278,{awp=20001,c={11},maps={1943},providers={{"i",22888}},u=3}),
q(5841,{maps={1426},providers={{"i",14647}},races={3,7},rwp=20001,u=2}),
q(5805,{maps={1429},providers={{"i",14646}},races={1},rwp=20001,u=2}),
q(5842,{maps={1438},providers={{"i",14648}},races={4},rwp=20001,u=2}),
q(5843,{maps={1411},providers={{"i",14649}},races={2,8},rwp=20001,u=2}),
q(5844,{maps={1412},providers={{"i",14650}},races={6},rwp=20001,u=2}),
q(5847,{maps={1420},providers={{"i",14651}},races={5},rwp=20001,u=2})}}),
h(-47,{description="Every character you created was able to select between one of the three pets by completing the 'Welcome!' quest for your race.",rwp=20001,sourceQuests={5805,5841,5842,5843,5844,5847,8547,9278},u=2,g={
p(93,{awp=11101,b=1,itemID=13584,petTypeID=6,q=3,spellID=17708,u=3}),
p(92,{awp=11101,b=1,itemID=13583,petTypeID=8,q=3,spellID=17707,u=3}),
p(94,{awp=11101,b=1,itemID=13582,petTypeID=5,q=3,spellID=17709,u=3})}})}}),
x(2,{description="These rewards were made available to anyone who purchased a Collector's Edition of The Burning Crusade.\n\nThere may still be copies online, but expect to a sizable chunk of real world currency for it.\n\nNOTE: Non-EU accounts will not receive Lurky's Egg if redeemed.",u=3,g={
p(131,{awp=20001,b=1,itemID=25535,petTypeID=2,q=3,rwp=30002,spellID=32298,u=3}),
p(111,{awp=20001,b=1,description="This was only available in the EU.",itemID=30360,petTypeID=1,q=3,rwp=30002,spellID=24988,u=3})}}),
h(-524,{awp=20501,description="These rewards were made available to anyone who purchased a Deluxe Edition of The Burning Crusade Classic.",rwp=30400,u=3,g={
h(-45,{awp=20501,rwp=30400,u=3,g={
q(63450,{altQuests={63448},awp=20501,coords={{28,75.8,1434}},crs={5111,6740,6741,6746,6929,16618,16739,17630},maps={1453,1454,1455,1456,1458,1947,1954},qgs={17249},rwp=30400,u=3,g={
mnt(348459,{awp=20501,itemID=184865,lvl=30,rwp=30400,u=3}),
toy(184871,{awp=20501,rwp=30400,u=3}),
toy(38233,{awp=20501,b=1,q=3,rwp=30400,u=3})}})}})}}),
h(-694,{awp=20505,description="These rewards were made available to anyone who purchased the Outland Heroic Pack of The Burning Crusade Classic Anniversary.",rwp=30002,u=3,g={
mnt(1266345,{awp=20505,itemID=260438,rwp=30002,u=3}),
toy(260622,{awp=20505,rwp=30002,u=3}),
toy(260221,{awp=20505,rwp=30002,u=3}),
p(4962,{awp=20505,itemID=260433,rwp=30002,u=3}),
mnt(1266866,{awp=20505,itemID=260759,rwp=30002,u=3})}})}}),
h(-546,{awp=11201,u=2,g={
p(757,{awp=11201,b=1,itemID=19055,petTypeID=2,q=1,spellID=23531,u=2}),
p(124,{awp=11201,b=1,itemID=22781,petTypeID=8,q=1,spellID=28505,u=2}),
p(758,{awp=11201,b=1,itemID=19054,petTypeID=2,q=1,spellID=23530,u=2}),
p(1073,{awp=11201,b=1,itemID=22780,petTypeID=1,q=3,spellID=28487,u=2})}}),
h(-547,{
s(129974,19160,{awp=11101,b=1,description="This tabard was given to the people on each servers with the most honorable kills before the introduction of the original honor system.",f=9,q=1,u=2}),
p(155,{awp=20100,b=1,description="Reward from the 2007 Korean Worldwide Invitational (Korea Only)",itemID=32498,petTypeID=5,q=3,spellID=40405,u=2}),
p(1168,{awp=20100,b=1,description="Reward from a Korean Promotional Event (Korea Only)",itemID=20651,petTypeID=1,q=3,spellID=25018,u=2}),
p(121,{awp=20003,b=1,description="Offered as a fan website gift around Christmas 2006, in Europe. (EU Only)",itemID=22114,petTypeID=1,q=3,spellID=27241,u=2}),
p(189,{awp=20402,b=1,description="Reward from the 2008 Worldwide Invitational in Paris.",itemID=39656,petTypeID=1,q=3,spellID=53082,u=2})}),
h(-548,{
mnt(49322,{awp=20403,b=1,itemID=37719,lvl=60,q=4,u=2}),
p(170,{awp=20300,b=1,description="Originally only available to the Chinese & Taiwan only, they have been added to the Recruit-A-Friend Program in 5.4.1.",itemID=34518,petTypeID=5,q=3,spellID=45174,u=2}),
p(171,{awp=20300,b=1,description="Originally only available to the Chinese & Taiwan only, they have been added to the Recruit-A-Friend Program in 5.4.1.",itemID=34519,petTypeID=5,q=3,spellID=45175,u=2})}),
h(-550,{awp=20403,rwp=30002,g={
ach(1637,{awp=20403,providers={{"i",37297}},rwp=30002}),
p(179,{awp=20403,b=1,description="Win a battleground during the Spirit of Competition event to get this.",itemID=37297,petTypeID=2,q=3,rwp=30002,spellID=48406}),
ach(1636,{awp=20403,providers={{"i",36941}},rwp=30002}),
s(145354,36941,{awp=20403,b=1,description="Participate in a battleground during the Spirit of Competition event to get this.",f=9,OnUpdate=function(t)if _.IsQuestFlaggedCompleted(12187)then	if not settings.AccountWide.Quests then	t.u=2;else	t.u=nil;end	end	end,q=3,rwp=30002}),
p(180,{awp=20403,b=1,description="Only available on Chinese realms.\n\nThroughout each day of the event in China, the code is mailed to 500 random players. Only players who have achieved various in-game milestones during the event are eligible for a chance to receive the code. Some milestones include having an Arena rating of 1650+, increasing reputation for certain Outland factions from less than revered to exalted, or raising a crafting profession from 350 or less to 375.",itemID=37298,petTypeID=2,q=3,rwp=30002,spellID=48408})}}),
h(-551,{awp=20001,u=2,g={
flt(101,{awp=20001,u=2,g={
p(156,{awp=20001,b=1,itemID=32588,petTypeID=8,q=3,spellID=40549,u=2}),
p(169,{awp=20300,b=1,itemID=34493,petTypeID=3,q=4,spellID=45127,u=2}),
p(130,{awp=20001,b=1,itemID=23713,petTypeID=3,q=4,spellID=30156,u=2}),
p(168,{awp=20300,b=1,itemID=34492,petTypeID=10,q=3,spellID=45125,u=2}),
p(183,{awp=20402,b=1,itemID=38050,petTypeID=6,q=3,spellID=49964,u=2,g={
i(38186,{awp=20402,b=1,description="To obtain this, summon your Soul-Trader pet and kill players or NPCs which are no less than 8 levels below you.",f=55,q=1,u=2}),
i(38291,{awp=20402,b=1,cost={{"i",38186,100}},f=55,q=3,u=2}),
i(38300,{awp=20402,b=1,cost={{"i",38186,50}},f=55,q=3,u=2}),
s(145439,38160,{awp=20402,b=1,cost={{"i",38186,1000}},f=2,q=1,u=2}),
s(145441,38162,{awp=20402,b=1,cost={{"i",38186,250}},f=2,q=1,u=2}),
s(145440,38161,{awp=20402,b=1,cost={{"i",38186,250}},f=2,q=1,u=2}),
s(145442,38163,{awp=20402,b=1,cost={{"i",38186,100}},f=2,q=1,u=2}),
s(145458,38286,{awp=20402,b=1,cost={{"i",38186,500}},f=2,q=1,u=2}),
s(145457,38285,{awp=20402,b=1,cost={{"i",38186,100}},f=2,q=1,u=2})}})}}),
flt(50,{awp=20001,u=2}),
flt(100,{awp=20001,u=2,g={
mnt(51412,{awp=20402,b=1,itemID=38576,lvl=60,q=4,rwp=30200,u=2}),
mnt(42776,{awp=20103,b=1,itemID=33224,lvl=30,q=3,rwp=30200,u=2}),
mnt(42777,{awp=20103,b=1,itemID=33225,lvl=60,q=4,rwp=30200,u=2}),
mnt(30174,{awp=20001,b=1,itemID=23720,q=4,u=2}),
mnt(46197,{awp=20400,b=1,itemID=35225,lvl=70,q=3,rwp=30200,u=2}),
mnt(46199,{awp=20400,b=1,itemID=35226,lvl=70,q=4,rwp=30200,u=2})}}),
flt(9,{awp=20001,u=2,g={
s(145472,38312,{awp=20403,b=1,f=9,q=4,u=2}),
s(134092,23705,{awp=20001,b=1,f=9,q=4,u=2}),
s(134096,23709,{awp=20001,b=1,f=9,q=4,u=2}),
s(145473,38313,{awp=20403,b=1,f=9,q=4,u=2}),
s(145469,38309,{awp=20403,b=1,f=9,q=4,u=2}),
s(145470,38310,{awp=20403,b=1,f=9,q=4,u=2}),
s(145474,38314,{awp=20403,b=1,f=9,q=4,u=2}),
s(145471,38311,{awp=20403,b=1,f=9,q=4,u=2})}}),
flt(102,{awp=20001,u=2,g={
i(23716,{awp=20203,b=1,f=53,q=4,u=2}),
toy(38301,{awp=20402,b=1,model=201182,modelScale=3,q=3,u=2}),
toy(33223,{awp=20200,b=1,q=3,u=2}),
toy(33219,{awp=20103,b=1,q=3,u=2}),
toy(35227,{awp=20400,b=1,model=166247,q=4,u=2}),
toy(32542,{awp=20100,b=1,q=3,u=2}),
toy(34499,{awp=20300,b=1,q=3,u=2}),
i(23714,{awp=20203,b=1,f=53,q=4,u=2}),
toy(32566,{awp=20100,b=1,q=3,u=2}),
toy(38578,{awp=20501,b=1,model=200314,modelScale=2,q=3,u=2})}})}})};
