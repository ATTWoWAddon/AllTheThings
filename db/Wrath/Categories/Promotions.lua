---@diagnostic disable: deprecated
local appName, _ = ...;
local ach,crit,flt,h,i,mnt,p,q,s,settings,toy,x=_.CreateAchievement,_.CreateAchievementCriteria,_.CreateFilter,_.CreateCustomHeader,_.CreateItem,_.CreateMount,_.CreateSpecies,_.CreateQuest,_.CreateItemSource,_.Settings,_.CreateToy,_.CreateExpansion;
_.Categories.Promotions={
h(-520,{
ach(411,{awp=30002,providers={{"i",20371}},u=2}),
p(107,{awp=11101,b=1,itemID=20371,petTypeID=1,q=3,spellID=24696,u=2}),
ach(412,{awp=30002,providers={{"i",33079}},u=2}),
toy(33079,{awp=20103,b=1,q=3,u=2}),
ach(415,{awp=30002,providers={{"i",43599}},u=2}),
mnt(58983,{awp=30002,b=1,itemID=43599,lvl=20,q=3,races={1,2,3,4,5,6,7,8,10,11},u=2}),
ach(3536,{awp=30200,providers={{"i",46802}},u=2}),
p(228,{awp=30200,b=1,itemID=46802,petTypeID=1,q=3,spellID=66030,u=2})}),
x(2,{u=3,g={
q(63768,{altQuests={63767},coords={{28.2,75.8,1434}},crs={5111,6735,6740,6741,6746,6929,16618,16739,17630,19046,19232},maps={1453,1454,1455,1456,1458,1947,1954,1955},qgs={17249},u=2,g={
toy(32542,{b=1,description="Obtained if you set up a 6 Month WoW Subscription between 5th May 2021 until 5th Nov 2022.",q=3,u=3})}}),
q(65285,{altQuests={65284},coords={{28.2,75.8,1434}},crs={5111,6740,6741,6746,6929,16618,16739,19046,19232},maps={1453,1454,1455,1456,1458,1947,1954,1955},qgs={17249},u=2,g={
toy(33219,{b=1,description="Obtained if you set up a 6 Month WoW Subscription between 13th February 2022 until 13th August 2022.",q=3,u=3})}}),
q(65562,{altQuests={65561},coords={{28.2,75.8,1434}},crs={5111,6740,6741,6746,6929,16618,16739,19046,19232},maps={1453,1454,1455,1456,1458,1947,1954,1955},qgs={17249},u=2,g={
s(134092,23705,{b=1,description="Obtained if you set up a 6 Month WoW Subscription between 13th February 2022 until 13th August 2022 or a 12 Month WoW Subscription between 11th November 2022 until 15th January 2023.",f=9,q=4,u=3})}}),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(42777,{b=1,description="Obtained if you paid 267$ to set up a 6 Month WoW Subscription between 25th January 2022 until 25th July 2022.",itemID=33225,lvl=40,q=4,u=2}))}}),
x(3,{u=3,g={
q(72523,{altQuests={72522},coords={{28.2,75.8,1434}},crs={5111,6740,6746,6929,19232,28687,29532,31557,32413},maps={1453,1454,1455,1456,1458,1947,1954,1955},qgs={17249},u=2,g={
mnt(394209,{description="Obtained if you set up a 12 Month WoW Subscription between 11th November 2022 until 15th January 2023.",itemID=201699,lvl=20,u=3})}}),
q(74941,{altQuests={74940},coords={{28.2,75.8,1434}},crs={5111,6740,6746,6929,19232,28687,29532,31557,32413},maps={1453,1454,1455,1456,1458,1947,1954,1955},qgs={17249},u=2,g={
p(4233,{itemID=187794,petTypeID=9,spellID=359755,u=3})}}),
q(75492,{altQuests={75491},coords={{28.2,75.8,1434}},crs={5111,6740,6746,6929,19232,28687,29532,31557,32413},maps={1453,1454,1455,1456,1458,1947,1954,1955},qgs={17249},u=2,g={
p(4236,{itemID=204982,petTypeID=9,spellID=407786,u=3})}}),
q(70863,{altQuests={70862},coords={{28.2,75.8,1434}},crs={5111,6740,6746,6929,19232,28687,29532,31557,32413},maps={1453,1454,1455,1456,1458,1947,1954,1955},qgs={17249},u=2,g={
p(4235,{itemID=200060,petTypeID=5,spellID=388541,u=3})}}),
mnt(416158,{description="Obtained if you set up a 12 Month WoW Subscription after 27th October 2023.",itemID=207097,lvl=20,u=2}),
p(4273,{description="Obtained if you set up a 6 Month WoW Subscription after 10th January 2024.",itemID=209877,petTypeID=7,spellID=423843,u=2}),
mnt(49290,{description="Obtained if you set up a 3 Month WoW Subscription between 10th October 2022 until 8th January 2024.",u=2}),
mnt(74856,{description="Obtained if you set up a 3 Month WoW Subscription between 8th January 2024 until 8th April 2024.",itemID=74269,u=2}),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(471440,{awp=30400,description="Can be bought for ¥1888 ($265 USD) or a discounted price of ¥588 ($82 USD) for owners of the original for a limited time in the Ingame Shop.",rwp=40400,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(1217476,{awp=30400,description="Rewarded from the Treasure Workshop.",rwp=40400,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(235378,{awp=30400,description="Can be bought for ¥200 RMB (~$27 USD) for a limited time in the Ingame Shop.",rwp=40400,u=3,g={(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(459784,{awp=30400,itemID=227362,rwp=40400,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(42777,{awp=30400,itemID=49284,lvl=40,q=4,races={1,2,3,4,5,6,7,8,10,11},rwp=40400,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(42776,{awp=30400,itemID=49283,lvl=20,q=3,rwp=40400,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(46199,{awp=30400,itemID=49286,lvl=70,q=4,rwp=40400,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(46197,{awp=30400,itemID=49285,lvl=60,q=3,rwp=40400,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(45047,{awp=30400,b=1,f=55,q=3,rwp=40400,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(35223,{awp=30400,b=1,f=55,q=3,rwp=40400,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(46779,{awp=30400,b=1,f=55,q=1,rwp=40400,u=3}))}}))}}),
h(-521,{u=3,g={
x(1,{description="These rewards were made available to anyone who purchased an original Collector's Edition of World of Warcraft.\n\nThere may still be copies online, but expect to lose a sizable chunk of real world currency for it.",u=3,g={
h(-45,{rwp=20001,u=2,g={
q(8547,{awp=20001,maps={1941},providers={{"i",20938}},races={10},u=3}),
q(12781,{awp=30002,c={6},maps={1423},providers={{"i",39713}},u=3}),
q(9278,{awp=20001,c={11},maps={1943},providers={{"i",22888}},u=3}),
q(5841,{maps={1426},providers={{"i",14647}},races={3,7},rwp=20001,u=2}),
q(5805,{maps={1429},providers={{"i",14646}},races={1},rwp=20001,u=2}),
q(5842,{maps={1438},providers={{"i",14648}},races={4},rwp=20001,u=2}),
q(5843,{maps={1411},providers={{"i",14649}},races={2,8},rwp=20001,u=2}),
q(5844,{maps={1412},providers={{"i",14650}},races={6},rwp=20001,u=2}),
q(5847,{maps={1420},providers={{"i",14651}},races={5},rwp=20001,u=2})}}),
h(-47,{description="Every character you created was able to select between one of the three pets by completing the 'Welcome!' quest for your race.",rwp=20001,sourceQuests={5805,5841,5842,5843,5844,5847,8547,9278,12781},u=2,g={
ach(662,{awp=30002,providers={{"i",13584}},u=3}),
ach(663,{awp=30002,providers={{"i",13583}},u=3}),
ach(664,{awp=30002,providers={{"i",13582}},u=3}),
p(93,{awp=11101,b=1,itemID=13584,petTypeID=6,q=3,spellID=17708,u=3}),
p(92,{awp=11101,b=1,itemID=13583,petTypeID=8,q=3,spellID=17707,u=3}),
p(94,{awp=11101,b=1,itemID=13582,petTypeID=5,q=3,spellID=17709,u=3})}})}}),
x(2,{description="These rewards were made available to anyone who purchased a Collector's Edition of The Burning Crusade.\n\nThere may still be copies online, but expect to a sizable chunk of real world currency for it.\n\nNOTE: Non-EU accounts will not receive Lurky's Egg if redeemed.",u=3,g={
ach(665,{awp=30002,providers={{"i",25535}},rwp=30002,u=2}),
p(131,{awp=20001,b=1,itemID=25535,petTypeID=2,q=3,rwp=30002,spellID=32298,u=2}),(function(t)if GetCVar("portal")~="EU" then	t.u=1;end	return t;end)(
p(111,{awp=20001,b=1,description="This was only available in the EU.",itemID=30360,petTypeID=1,q=3,rwp=30002,spellID=24988,u=2}))}}),
h(-524,{awp=20501,description="These rewards were made available to anyone who purchased a Deluxe Edition of The Burning Crusade Classic.",rwp=30400,u=2,g={
h(-45,{awp=20501,rwp=30400,u=2,g={
q(63450,{altQuests={63448},awp=20501,coords={{28,75.8,1434}},crs={5111,6740,6741,6746,6929,16618,16739,17630},maps={1453,1454,1455,1456,1458,1947,1954},qgs={17249},rwp=30400,u=2,g={
mnt(348459,{awp=20501,itemID=184865,lvl=20,rwp=30400,u=2}),
toy(184871,{awp=20501,rwp=30400,u=2}),
toy(38233,{awp=20501,b=1,q=3,rwp=30400,u=2})}})}})}}),
h(-694,{awp=50502,description="These rewards were made available to anyone who purchased the Outland Heroic Pack of The Burning Crusade Classic Anniversary.",rwp=30002,u=2,g={
mnt(1266345,{awp=50502,itemID=260438,rwp=30002,u=2}),
toy(260622,{awp=50502,rwp=30002,u=2}),
toy(260221,{awp=50502,rwp=30002,u=2}),
p(4962,{awp=50502,itemID=260433,rwp=30002,u=2}),
mnt(1266866,{awp=50502,itemID=260759,rwp=30002,u=2})}}),
x(3,{description="These rewards were made available to anyone who purchased a Collector's Edition of Wrath of the Lich King.\n\nThere may still be copies online, but expect to a sizable chunk of real world currency for it.",u=3,g={
ach(683,{awp=20403,providers={{"i",39286}},rwp=30305,u=2,g={
crit(69846,{achID=683,awp=20403,id=3,providers={{"n",28883}},rwp=30305,u=2})}}),
p(188,{awp=20403,b=1,itemID=39286,petTypeID=4,q=3,rwp=30305,spellID=52615,u=2})}}),
h(-525,{awp=30400,rwp=40001,u=3,g={
h(-522,{awp=30400,description="These rewards were made available to anyone who purchased a Heroic Upgrade Edition of Wrath of the Lich King Classic.",questID=70449,rwp=40001,u=3,g={
p(4234,{awp=30400,itemID=198665,petTypeID=9,rwp=40001,spellID=384796,u=3}),
toy(198647,{awp=30400,rwp=40001,u=3}),
ach(16332,{awp=30400,cost={{"i",41803,1},{"i",40199,1},{"i",41813,1},{"i",41806,1},{"i",41801,1},{"i",41802,1},{"i",41814,1},{"i",41809,1},{"i",43646,1},{"i",41810,1},{"i",41807,1},{"i",41800,1},{"i",41805,1},{"i",41808,1},{"i",41812,1}},providers={{"i",199914},{"n",194870}},rwp=40001,u=3})}}),
h(-523,{awp=30400,description="These rewards were made available to anyone who purchased a Epic Upgrade Edition of Wrath of the Lich King Classic.",questID=70448,rwp=40001,u=3,g={
mnt(372677,{awp=30400,itemID=192455,lvl=20,rwp=40001,u=3})}})}}),
h(-526,{awp=30400,rwp=40402,u=3,g={
h(-522,{awp=30400,description="These rewards were made available to anyone who purchased Blazing Heroic Edition.",rwp=40402,u=3,g={
mnt(423869,{awp=30400,rwp=40402,u=3}),
p(4274,{awp=30400,itemID=209945,petTypeID=2,rwp=40402,spellID=423868,u=3})}})}}),
h(-534,{description="These rewards are available to anyone who purchases Starcraft 2: Wings of Liberty Collection.",u=1,g={
ach(4824,{providers={{"i",56806}},u=1}),
p(258,{b=1,itemID=56806,petTypeID=10,q=3,spellID=78381,u=1})}})}}),
h(-546,{awp=11201,u=2,g={
p(757,{awp=11201,b=1,itemID=19055,petTypeID=2,q=1,spellID=23531,u=2}),
p(124,{awp=11201,b=1,itemID=22781,petTypeID=8,q=1,spellID=28505,u=2}),
p(758,{awp=11201,b=1,itemID=19054,petTypeID=2,q=1,spellID=23530,u=2}),
p(1073,{awp=11201,b=1,itemID=22780,petTypeID=1,q=3,spellID=28487,u=2})}}),
h(-547,{
s(129974,19160,{awp=11101,b=1,description="This tabard was given to the people on each servers with the most honorable kills before the introduction of the original honor system.",f=9,q=1,u=2}),
p(244,{b=1,description="Granted to players that attach an authenticator to their account.",itemID=49646,petTypeID=7,q=3,spellID=69452,u=1}),
p(240,{awp=40003,b=1,description="Reward from a Korean-exclusive World Event that mailed you this pet.",itemID=48527,petTypeID=6,q=3,spellID=67527,u=1}),
p(155,{awp=20100,b=1,description="Reward from the 2007 Korean Worldwide Invitational (Korea Only)",itemID=32498,petTypeID=5,q=3,spellID=40405,u=2}),
ach(3618,{awp=30102,providers={{"i",45180},{"i",46892}},u=2}),
p(217,{awp=30102,b=1,description="This was obtained by participating in at least 200 arena matches in the 2009 Arena Tournament, or at least 50 matches on the same team in the years after that.",itemID=45180,petTypeID=1,q=3,spellID=63318,u=2}),
p(1168,{awp=20100,b=1,description="Reward from a Korean Promotional Event (Korea Only)",itemID=20651,petTypeID=1,q=3,spellID=25018,u=2}),
p(121,{awp=20003,b=1,description="Offered as a fan website gift around Christmas 2006, in Europe. (EU Only)",itemID=22114,petTypeID=1,q=3,spellID=27241,u=2}),
ach(414,{awp=30002,providers={{"i",39656}},u=2}),
p(189,{awp=20402,b=1,description="Reward from the 2008 Worldwide Invitational in Paris.",itemID=39656,petTypeID=1,q=3,spellID=53082,u=2}),
p(192,{awp=30202,b=1,description="This was awarded to players when they linked their original WoW account to a Battle.Net Tag. No longer available as all accounts now require Battle.Net Tag initially, unless you have access to an unattached account.",itemID=41133,petTypeID=9,q=3,spellID=55068,u=2})}),
h(-548,{
ach(1436,{awp=30002,providers={{"i",37719}},u=2}),
mnt(49322,{awp=20403,b=1,itemID=37719,lvl=40,q=4,u=2}),
mnt(75973,{awp=30303,b=1,itemID=54860,lvl=60,q=4,u=2}),
p(231,{awp=40003,b=1,description="Originally only available to the Chinese & Taiwan only, they have been added to the Recruit-A-Friend Program in 5.4.1.",itemID=46894,petTypeID=6,q=3,spellID=66520,u=1}),
p(247,{awp=40003,b=1,description="Originally only available to the Chinese & Taiwan only, they have been added to the Recruit-A-Friend Program in 5.4.1.",itemID=49664,petTypeID=6,q=3,spellID=69539,u=1}),
p(170,{awp=20300,b=1,description="Originally only available to the Chinese & Taiwan only, they have been added to the Recruit-A-Friend Program in 5.4.1.",itemID=34518,petTypeID=5,q=3,spellID=45174,u=2}),
p(171,{awp=20300,b=1,description="Originally only available to the Chinese & Taiwan only, they have been added to the Recruit-A-Friend Program in 5.4.1.",itemID=34519,petTypeID=5,q=3,spellID=45175,u=2})}),
h(-550,{awp=20403,rwp=30002,u=2,g={
ach(1637,{awp=20403,providers={{"i",37297}},rwp=30002,u=2}),
p(179,{awp=20403,b=1,description="Win a battleground during the Spirit of Competition event to get this.",itemID=37297,petTypeID=2,q=3,rwp=30002,spellID=48406,u=2}),
ach(1636,{awp=20403,providers={{"i",36941}},rwp=30002,u=2}),
s(145354,36941,{awp=20403,b=1,description="Participate in a battleground during the Spirit of Competition event to get this.",f=9,OnUpdate=function(t)if _.IsQuestFlaggedCompleted(12187)then	if not settings.AccountWide.Quests then	t.u=2;else	t.u=nil;end	end	end,q=3,rwp=30002,u=2}),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
p(180,{awp=20403,b=1,description="Only available on Chinese realms.\n\nThroughout each day of the event in China, the code is mailed to 500 random players. Only players who have achieved various in-game milestones during the event are eligible for a chance to receive the code. Some milestones include having an Arena rating of 1650+, increasing reputation for certain Outland factions from less than revered to exalted, or raising a crafting profession from 350 or less to 375.",itemID=37298,petTypeID=2,q=3,rwp=30002,spellID=48408,u=2}))}}),
h(-551,{awp=20001,u=2,g={
flt(101,{awp=20001,u=2,g={
i(50301,{awp=30300,b=1,q=1,u=2,g={
i(46779,{awp=30200,b=1,f=55,q=1,u=2}),
i(35223,{awp=20400,b=1,f=55,q=3,u=2}),
i(45047,{awp=30100,b=1,f=55,q=3,u=2}),
p(156,{awp=20001,b=1,itemID=32588,petTypeID=8,q=3,spellID=40549,u=2}),
p(169,{awp=20300,b=1,itemID=34493,petTypeID=3,q=4,spellID=45127,u=2}),
p(183,{awp=20402,b=1,itemID=38050,petTypeID=6,q=3,spellID=49964,u=2})}}),
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
s(145457,38285,{awp=20402,b=1,cost={{"i",38186,100}},f=2,q=1,u=2})}}),
p(242,{awp=30202,b=1,itemID=49343,petTypeID=6,q=3,spellID=68810,u=2}),
p(241,{awp=30202,b=1,itemID=49287,petTypeID=3,q=4,spellID=68767,u=2})}}),
flt(50,{awp=20001,u=2,g={
i(49288,{awp=30200,b=1,f=55,q=2,r=1,u=2}),
i(49289,{awp=30200,b=1,f=55,q=2,r=2,u=2})}}),
flt(100,{awp=20001,u=2,g={
mnt(51412,{awp=20402,b=1,itemID=38576,lvl=40,q=4,rwp=30200,u=2}),
mnt(51412,{awp=30200,itemID=49282,lvl=40,q=4,u=2}),
mnt(74856,{awp=30303,itemID=54069,lvl=60,q=4,rwp=40300,u=2}),
mnt(65917,{awp=30200,b=1,itemID=46778,lvl=40,q=4,rwp=30200,u=2}),
mnt(65917,{awp=30200,itemID=49290,lvl=40,q=4,u=2}),
mnt(42776,{awp=20103,b=1,itemID=33224,lvl=20,q=3,rwp=30200,u=2}),
mnt(42776,{awp=30200,itemID=49283,lvl=20,q=3,u=2}),
mnt(42777,{awp=20103,b=1,itemID=33225,lvl=40,q=4,rwp=30200,u=2}),
mnt(42777,{awp=30200,itemID=49284,lvl=40,q=4,races={1,2,3,4,5,6,7,8,10,11},u=2}),
mnt(30174,{awp=20001,b=1,itemID=23720,q=4,u=2}),
mnt(74918,{awp=30305,itemID=54068,lvl=40,q=4,u=2}),
mnt(46197,{awp=20400,b=1,itemID=35225,lvl=60,q=3,rwp=30200,u=2}),
mnt(46197,{awp=30200,itemID=49285,lvl=60,q=3,u=2}),
mnt(46199,{awp=20400,b=1,itemID=35226,lvl=70,q=4,rwp=30200,u=2}),
mnt(46199,{awp=30200,itemID=49286,lvl=70,q=4,u=2})}}),
flt(10,{awp=30100,u=2,g={
s(175463,45037,{awp=30100,b=1,f=10,filterForRWP=2,q=4,u=2})}}),
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
toy(49704,{awp=30202,b=1,q=4,u=2}),
toy(38301,{awp=20402,b=1,model=201182,modelScale=3,q=3,u=2}),
toy(54452,{awp=30305,b=1,q=3,u=2}),
toy(33223,{awp=20200,b=1,q=3,u=2}),
toy(45063,{awp=30100,b=1,model=253206,q=3,u=2,g={
s(175470,45061,{awp=30100,b=1,collectible=false,f=2,filterForRWP=2,q=0,u=2}),
s(175528,45176,{awp=30100,b=1,collectible=false,f=2,filterForRWP=2,q=0,u=2}),
s(175529,45177,{awp=30100,b=1,collectible=false,f=2,filterForRWP=2,q=0,u=2}),
s(175530,45178,{awp=30100,b=1,collectible=false,f=2,filterForRWP=2,q=0,u=2}),
s(175531,45179,{awp=30100,b=1,collectible=false,f=2,filterForRWP=2,q=0,u=2})}}),
toy(33219,{awp=20103,b=1,q=3,u=2}),
toy(35227,{awp=20400,b=1,model=166247,q=4,u=2}),
toy(32542,{awp=20100,b=1,q=3,u=2}),
toy(54212,{awp=30303,b=1,q=3,u=2}),
toy(46780,{awp=30200,b=1,model=306851,modelScale=9,q=3,u=2}),
toy(34499,{awp=20300,b=1,q=3,u=2}),
i(23714,{awp=20203,b=1,f=53,q=4,u=2}),
toy(49703,{awp=30202,b=1,q=4,u=2}),
toy(32566,{awp=20100,b=1,q=3,u=2}),
toy(38578,{awp=20501,b=1,model=200314,modelScale=2,q=3,u=2})}})}})};
