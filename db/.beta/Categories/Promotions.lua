---@diagnostic disable: deprecated
local appName, _ = ...;
local ach,cl,cq,crit,cu,de,en,flt,h,i,ill,mnt,n,o,p,q,s,settings,title,toy,x=_.CreateAchievement,_.CreateCharacterClass,_.CreateCharacterUnlockQuest,_.CreateAchievementCriteria,_.CreateCurrencyClass,_.CreateDecor,_.CreateEnsemble,_.CreateFilter,_.CreateCustomHeader,_.CreateItem,_.CreateIllusion,_.CreateMount,_.CreateNPC,_.CreateObject,_.CreateSpecies,_.CreateQuest,_.CreateItemSource,_.Settings,_.CreateTitle,_.CreateToy,_.CreateExpansion;
local a={{"i",116788},{"o",384744},{1},{10},{11},{12},{13},{19.1,82,2023},{2},{201230},{222277},{225347},{3},{35.3,38.2,2339},{38.3,94.9,2112},{4},{49.2,58.3,2025},{5},{56.4,19.3,2022},{6},{68795,72366},{7.4,47.5,2024},{7},{79184},{8},{9}};
_.Categories.Promotions={
h(-514,{awp=90005,g={
mnt(348162,{description="Granted to players by logging in on character of at least level 20.",itemID=258430,u=2}),
toy(187834,{b=1,description="The Great Push: SL Season 2\n\nInstead of teams fighting to beat their opponent's time, The Great Push is focused on teams pushing keys as high as they can, striving to out survive their competitors and be crowned the champion!\n\nAll registered teams that complete under time the two dungeons within the Proving Grounds will receive the exclusive Tormented Banner of the Opportune to use in-game!\nSign-ups close 29 Nov 2021 and The Proving Grounds are on 3-5 Dec (US).",u=2}),
toy(187957,{awp=90200,b=1,description="Mythic Dungeon International: SL Season 3\n\nThe Mythic Dungeon International (MDI) returns with its global competitions for its 6th year, pitting the best Mythic Dungeon teams in a head-to-head race to the finish line.\n\nAll registered teams that complete under time the two dungeons within the Proving Grounds will receive the exclusive Encrypted Banner of the Opportune to use in-game!\nSign-ups close 28 March 2022 and The Proving Grounds are on 30 March - 5 April (US).",rwp=90200,u=2}),
s(50108,95474,{awp=90205,description="Obtained through Prime Gaming from June 29th 2022 till July 26th 2022.",f=2,rwp=90207,u=2}),
ach(15594,{awp=90205,description="Granted to players who watch MDI Global Finals, AWC Grand Finals or AWC Cross-Region Tournament for 2 total hours in July 2022. You have to link your Battle.net account to your YouTube account and watch eligible streams.",rwp=90207,u=2,g={
title(459,{u=2})}}),
s(51433,97213,{awp=90205,f=2,u=2}),
toy(187958,{awp=90207,b=1,description="Break the Meta: SL Season 4\n\nInstead of teams fighting to beat their opponent's time, Break the Meta is focused on teams pushing keys as high as they can with Season's 4 off-meta specs and classes.\n\nRegister for the event on |cFFFFFFFFRaider.io/break-the-meta-2022|r and complete 2 or more eligible timed keystones at level 15 or higher during BTM S4, and the Shrouded Banner of the Opportune will be automatically added to your collection in-game within 30 days of the conclusion of the event.\n\nThe Event starts on October 4th for US, October 5th for EU & October 6th for KR/TW & lasts for the entire reset of your region.\n\nThis was previously available through The Great Push: SL Season 4.",rwp=100000,u=2}),
s(50109,95475,{awp=90207,description="Obtained through Prime Gaming from August 24th 2022 till September 20th 2022.",f=2,rwp=90207,u=2}),
mnt(386452,{awp=90207,description="In order to unlock the Frostbrood Proto-Wyrm you have finish the Death Knight starting zone in |cFFfe040fWotLK Classic|r. The very first Death Knight you make is completely free of restrictions, so even if you've never played Classic before, you can create a Death Knight starting at level 55.",itemID=258476,rwp=100002,u=2})}}),
h(-515,{awp=100000,g={
mnt(315132,{description="Obtained if you set up a 12-Month WoW Subscription. Promotion valid through January 15, 2023.",itemID=258423,u=2}),
mnt(381529,{description="Obtained if you set up a 12-Month WoW Subscription. Promotion valid through January 15, 2023.",itemID=258477,u=2}),
p(169,{awp=100002,b=1,itemID=34493,npcID=25110,rwp=100002,spellID=45127,u=2}),
mnt(113120,{awp=100002,itemID=79771,lvl=10,rwp=100002,u=2}),
p(3248,{awp=100002,b=1,description="Obtained by gifting an eligible creator's channel two Twitch subscriptions between November 28th, 03:00 p.m. & December 12th, 11:59 p.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",itemID=190583,npcID=183638,rwp=100002,spellID=367696,u=2}),
p(316,{awp=100002,b=1,itemID=70099,npcID=53623,rwp=100002,spellID=99578,u=2}),
mnt(134573,{awp=100002,b=1,itemID=92724,lvl=10,rwp=100002,u=2}),
toy(49703,{awp=100002,b=1,rwp=100002,u=2}),
toy(203716,{awp=100007,b=1,description="Break the Meta: DF Season 1\n\nInstead of teams fighting to beat their opponent's time, Break the Meta is focused on teams pushing keys as high as they can with Season's 1 off-meta specs and classes.\n\nRegister for the event on |cFFFFFFFFRaider.io/break-the-meta-2023/signups|r and complete 2 or more eligible timed keystones at level 15 or higher during BTM S1, and the Thundering Banner of the Aspects will be automatically added to your collection in-game within 30 days of the conclusion of the event.\n\nThe Event starts on April 18th for US, April 19th for EU & April 20th for KR/TW & lasts for 2 entire resets of your region.",rwp=100100,u=2}),
toy(35227,{awp=100005,b=1,rwp=100005,u=2}),
toy(38301,{awp=100007,b=1,u=2}),
toy(54452,{awp=100100,b=1,rwp=100100,u=2}),
mnt(74856,{awp=100100,itemID=54069,lvl=10,rwp=100100,u=2}),
toy(208057,{awp=100107,b=1,description="Break the Meta: DF Season 2\n\nInstead of teams fighting to beat their opponent's time, Break the Meta is focused on teams pushing keys as high as they can with Season's 2 off-meta specs and classes.\n\nRegister for the event on |cFFFFFFFFraider.io/break-the-meta-df-season-2/signups|r and complete at least 2 BTM-Eligible timed keystones at level +15 or higher during the Competition Period, and the Smoldering Banner of the Aspects will be automatically added to your collection in-game after the conclusion of the event.\n\nThe Event starts on October 3rd for US, October 4th for EU & October 5th for KR/TW & lasts for 1 reset of your region.",rwp=100107,u=2}),
mnt(397406,{awp=100100,b=1,description="Obtained if you set up a 6-Month WoW Subscription. Promotion valid through January 9, 2024.",itemID=206167,lvl=10,rwp=100200,u=2}),
toy(32566,{awp=100105,b=1,u=2}),
en(190923,{awp=100105,description="Obtained through watching select Twitch Streamers with Drops enabled for at least 4 hours between September 5th, 10:00 a.m. & September 12th, 01:00 a.m. PDT.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",questID=65738,rwp=100105,spellID=368307,tmogSetID=2346,u=2,g={
s(169111,190904,{f=2}),
s(169112,190905,{f=2}),
s(169113,190906,{f=2}),
s(169114,190907,{f=2})}}),
mnt(419567,{awp=100107,description="Obtained if you set up a 12-Month WoW Subscription.",itemID=258425,rwp=110002,u=2}),
mnt(400976,{awp=100107,b=1,description="Obtained if you set up a 12-Month WoW Subscription.",itemID=203727,lvl=10,rwp=110002,u=2}),
p(2623,{awp=100200,description="Obtained through watching select Twitch Streamers with Drops enabled for at least 4 hours between November 7th, 10:00 a.m. & November 14th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",itemID=258414,npcID=151788,rwp=100200,spellID=294231,u=2}),
mnt(102488,{awp=100200,itemID=72575,lvl=10,rwp=100200,u=2}),
toy(211424,{awp=100206,b=1,description="Break the Meta: DF Season 3\n\nInstead of teams fighting to beat their opponent's time, Break the Meta is focused on teams pushing keys as high as they can with Season 3's off-meta specs and classes.\n\nRegister for the event on |cFFFFFFFFraider.io/break-the-meta-df-season-3/register|r and complete at least 2 BTM-Eligible timed keystones at |cFFFFFFFFlevel +17|r or higher during the Competition Period, and the Dreaming Banner of the Aspects will be automatically added to your collection in-game after the conclusion of the event.\n\nThe Event starts on April 3rd for US, April 4th for EU & April 5th for KR/TW & lasts for 2 resets of your region.",rwp=100206,u=2}),
mnt(418286,{awp=100200,description="Obtained if you set up a 6-Month WoW Subscription.",rwp=110200,u=2}),
toy(67097,{awp=100205,b=1,rwp=100205,u=2}),
p(4437,{awp=100206,description="Obtained through watching select Twitch Streamers with Drops enabled for at least 4 hours between March 22, 10:00 a.m. & April 5, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",itemID=258483,npcID=218060,rwp=100206,spellID=439994,u=2}),
p(348,{awp=100207,b=1,itemID=79744,npcID=59020,rwp=100207,spellID=112994,u=2}),
toy(218128,{awp=100206,b=1,description="The Great Push returns in Dragonflight Season 4\n\nInstead of teams fighting to beat their opponent's time, The Great Push is focused on teams pushing keys as high as they can, striving to out survive their competitors and be crowned the champion!\n\nAll registered teams that complete under time the two dungeons within the Proving Grounds will receive the exclusive Smoldering Banner of the Aspects to use in-game!\nSign-ups close 15 Jun 2024 and The Proving Grounds are on 19-24 June (US).",rwp=100207,u=2}),
mnt(443660,{awp=100206,b=1,description="Obtained if you set up a 6-Month WoW Subscription.",itemID=219450,lvl=45,rwp=110200,u=2})}}),
h(-516,{awp=110000,g={
h(-518,{awp=110007,rwp=110105,u=2,g={
mnt(367620,{description="Acquired alongside the purchase of a 150$ Razer Naga V2 Pro mouse, 200$ Razer BlackWidow V4 Pro keyboard or $100 RAZER FIREFLY V2 PRO mousepad as part of the Razer Gaming Peripherals World of Warcraft Collection before 30th April 2025.",itemID=190539,lvl=10,u=2}),
mnt(153489,{b=1,description="Acquired alongside the purchase of a 150$ Razer Naga V2 Pro mouse, 200$ Razer BlackWidow V4 Pro keyboard or $100 RAZER FIREFLY V2 PRO mousepad as part of the Razer Gaming Peripherals World of Warcraft Collection before 30th April 2025.",itemID=107951,lvl=10,u=2}),
p(4690,{description="Acquired alongside the purchase of a 150$ Razer Naga V2 Pro mouse, 200$ Razer BlackWidow V4 Pro keyboard or $100 RAZER FIREFLY V2 PRO mousepad as part of the Razer Gaming Peripherals World of Warcraft Collection before 30th April 2025.",itemID=232519,npcID=233481,spellID=470914,u=2})}}),
h(-517,{awp=110002,u=3,g={
mnt(163025,{b=1,description="Acquired alongside the purchase of a 200$ Arctis Nova 7 Headset as part of the World of Warcraft SteelSeries Limited Edition Collection.",itemID=112327,lvl=10,u=3}),
p(4595,{b=1,description="Acquired alongside the purchase of a 160$ Aerox 9 Mouse as part of the World of Warcraft SteelSeries Limited Edition Collection.",itemID=224576,npcID=225354,spellID=453266,u=3}),
mnt(453255,{description="Acquired alongside the purchase of a 80$ Artistan Keycap, 40$QcK XXL Mousepad, or a 40$ Alliance/Horde Booster Pack as part of the World of Warcraft SteelSeries Limited Edition Collection.",itemID=224574,lvl=10,u=3})}}),
h(-691,{awp=110205,u=3,g={(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(1255159,{itemID=252679,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(1255179,{itemID=252681,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(449142,{itemID=223471,lvl=45,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(449132,{itemID=223459,lvl=45,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
p(329,{b=1,itemID=71726,npcID=54438,spellID=101606,u=3,g={
crit(34643,{achID=6185,awp=40300,id=3,u=2})}})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
p(333,{b=1,itemID=72134,npcID=54730,spellID=102317,u=3}))}}),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
ach(40910,{description="Rewarded for the Aid in the stress testing of the realms in China",rwp=110005,u=2})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(366962,{description="Rewarded for returning to World of Warcraft in 2024. China Only.",itemID=190231,lvl=10,u=2})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
p(4286,{b=1,description="Rewarded for returning to World of Warcraft in 2024. China Only.",itemID=210409,npcID=211942,spellID=425472,u=2})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(464443,{b=1,description="Rewarded for returning to World of Warcraft in 2024. China Only.",itemID=229128,lvl=10,u=2})),
mnt(136505,{awp=110002,itemID=93671,lvl=10,u=2}),
p(3254,{awp=110002,description="Obtained by gifting an eligible creator's channel two Twitch subscriptions between August 26th, 03:00 p.m. & September 26th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.\n\nSpecial Note: If you buy a sub for yourself and gift one more, that will also reward the pet!",itemID=190609,npcID=185621,spellID=367800,u=2}),
toy(232305,{awp=110005,b=1,description="Arena World Championship: TWW Season 1\n\nSign up on Raider.io for any of the 4 Cups, available until October 13th 2024, and play in at least two game series (best of 5)\n\nWinning not required, for more details & requirements check out: Raider.io/tournaments/AWC",rwp=110005,u=2}),
toy(232301,{awp=110005,b=1,description="Break the Meta: TWW Season 1\n\nInstead of teams fighting to beat their opponent's time, Break the Meta is focused on teams pushing keys as high as they can with Season 1's off-meta specs and classes.\n\nRegister for the event on |cFFFFFFFFraider.io/events/break-the-meta-the-war-within-season-1/register|r and complete at least 2 BTM-Eligible timed keystones at |cFFFFFFFFlevel +5|r or higher during the Competition Period, and the Tempered Banner of the Algari will be automatically added to your collection in-game after the conclusion of the event.\n\nThe Event starts on December 10th for US, December 11th for EU & December 12th for KR/TW & lasts for 1 week.",rwp=110005,u=2}),
p(4616,{awp=110002,b=1,description="Trolli + Xbox promotional item. Available between 9/1/24 - 2/28/25 by purchasing Trolli Candy products in any retail store, photoing your receipt and uploading it as confirmation to trolli.com/xbox. Once processed, you should receive a code to your email to redeem on battle.net or in the launcher.\n\nYou must have a U.S. address and phone number to participate.\n\nThe code is usable in any region.",itemID=228765,npcID=229860,rwp=110100,spellID=463148,u=2}),
s(224731,228761,{awp=110002,description="Trolli + Xbox promotional item. Available between 9/1/24 - 2/28/25 by purchasing Trolli Candy products in |CFFFF0000Walgreens|r, photoing your receipt and uploading it as confirmation to trolli.com/xbox. Once processed, you should receive a code to your email to redeem on battle.net or in the launcher.\n\nYou must have a U.S. address and phone number to participate.\n\nThe code is usable in any region.",f=9,rwp=110100,u=2}),
s(224733,228763,{awp=110002,description="Trolli + Xbox promotional item. Available between 9/1/24 - 2/28/25 by purchasing Trolli Candy products in |CFFFF0000Circle K|r, photoing your receipt and uploading it as confirmation to trolli.com/xbox. Once processed, you should receive a code to your email to redeem on battle.net or in the launcher.\n\nYou must have a U.S. address and phone number to participate.\n\nThe code is usable in any region.",f=9,rwp=110100,u=2}),
s(224732,228762,{awp=110002,description="Trolli + Xbox promotional item. Available between 9/1/24 - 2/28/25 by purchasing Trolli Candy products in |CFFFF0000Dollar General|r, photoing your receipt and uploading it as confirmation to trolli.com/xbox. Once processed, you should receive a code to your email to redeem on battle.net or in the launcher.\n\nYou must have a U.S. address and phone number to participate.\n\nThe code is usable in any region.",f=9,rwp=110100,u=2}),
s(224734,228764,{awp=110002,description="Krogers promotional item. You have to earn points before Jan 8, 2025 and redeem before Feb 7, 2025. Can be redeemed for 1500 rewards points from pointsrewardsplus.com. With a referral link, just signing up will earn you enough points to redeem the tabard for free. Access the code from the account page and then redeem on battle.net or in the launcher.",f=9,rwp=110007,u=2}),
mnt(454682,{awp=110002,b=1,description="Obtained if you set up a 12-Month WoW Subscription.",itemID=225250,lvl=10,u=3}),
mnt(463025,{awp=110002,b=1,description="Obtained if you set up a 12-Month WoW Subscription.",itemID=228751,lvl=10,u=3}),
p(665,{awp=110005,b=1,itemID=72153,npcID=54745,spellID=102353,u=2}),
s(224993,228907,{awp=110005,description="Available to redeem for 300 points at DoritosDewRockstar.com before Jan 31, 2025. Points can be earned from entering codes found in specially marked Mountain Dew, Doritos and Rockstar Energy Drink products.",f=2,rwp=110007,u=2}),
s(224995,228909,{awp=110005,description="Available to redeem for 300 points at DoritosDewRockstar.com before Jan 31, 2025. Points can be earned from entering codes found in specially marked Mountain Dew, Doritos and Rockstar Energy Drink products.",f=9,rwp=110007,u=2}),
s(224994,228908,{awp=110005,description="Available to redeem for 300 points at DoritosDewRockstar.com before Jan 31, 2025. Points can be earned from entering codes found in specially marked Mountain Dew, Doritos and Rockstar Energy Drink products.",f=9,rwp=110007,u=2}),
p(4618,{awp=110005,b=1,description="Available to redeem for 400 points at DoritosDewRockstar.com before Jan 31, 2025. Points can be earned from entering codes found in specially marked Mountain Dew, Doritos and Rockstar Energy Drink products.",itemID=228793,npcID=229901,rwp=110007,spellID=463251,u=2}),
p(4617,{awp=110005,b=1,description="Available to redeem for 400 points at DoritosDewRockstar.com before Jan 31, 2025. Points can be earned from entering codes found in specially marked Mountain Dew, Doritos and Rockstar Energy Drink products.",itemID=228790,npcID=229890,rwp=110007,spellID=463242,u=2}),
mnt(428067,{awp=110005,b=1,description="Available to redeem for 600 points at DoritosDewRockstar.com before Jan 31, 2025. Points can be earned from entering codes found in specially marked Mountain Dew, Doritos and Rockstar Energy Drink products.",itemID=211087,lvl=45,rwp=110007,u=2}),
p(297,{awp=110005,b=1,itemID=68385,npcID=51600,rwp=110007,spellID=95787,u=2}),
p(4629,{awp=110005,description="Available with the purchase of an Ice Murloc Funko Pop from the Blizzard Gear Store to a US/UK mailing address. The code will be emailed and can be redeemed on Battle.net or the launcher.",itemID=229366,npcID=198987,spellID=464798,u=3}),
mnt(449132,{awp=110005,description="Obtained through watching the official Warcraft 30th Anniversary Direct on Tiktok for 3 Minutes or Twitch/YouTube for 20 minutes between November 13th, 10:00 a.m. & December 11th, 10:00 a.m. PST.\n\nTikTok has a bar along the bottom of the screen that indicates that Game Rewards are live and that you’re earning progress. Once you watched enough on Tiktok, you will receive a code that can be claimed on Battle.Net or on the Battle.Net App.\n\nOn Twitch you have to claim your Reward under Drops & Rewards after watching for 20 minutes.\n\nOn YouTube your account has to say 'connected' and will automatically sent out the rewards after 20 minutes.\n\nYour Twitch/YouTube Account has to be connected with your Battle.net Account.",itemID=223459,lvl=45,u=2}),
mnt(449142,{awp=110005,description="Obtained through watching the official Warcraft 30th Anniversary Direct on Tiktok for 3 Minutes or Twitch/YouTube for 20 minutes between November 13th, 10:00 a.m. & December 11th, 10:00 a.m. PST.\n\nTikTok has a bar along the bottom of the screen that indicates that Game Rewards are live and that you’re earning progress. Once you watched enough on Tiktok, you will receive a code that can be claimed on Battle.Net or on the Battle.Net App.\n\nOn Twitch you have to claim your Reward under Drops & Rewards after watching for 20 minutes.\n\nOn YouTube your account has to say 'connected' and will automatically sent out the rewards after 20 minutes.\n\nYour Twitch/YouTube Account has to be connected with your Battle.net Account.",itemID=223471,lvl=45,u=2}),
p(4630,{awp=110005,description="Available with the purchase of a Murloc Thrall plushie from the Blizzard Gear Store. The code will be emailed and can be redeemed on Battle.net or the launcher.",itemID=229368,npcID=230834,spellID=464808,u=3}),
mnt(139595,{awp=110007,b=1,itemID=95341,lvl=10,rwp=110105,u=2}),
s(230822,233207,{awp=110007,description="Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between January 14th, 10:00 a.m. & February 4th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",f=3,rwp=110007,u=2}),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(1216542,{awp=110007,b=1,description="Rewarded from the Treasure Workshop.",itemID=235344,lvl=10,rwp=110100,u=2})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(235378,{awp=110007,b=1,rwp=110100,spellID=1216746,u=2,g={(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(459784,{itemID=227362,lvl=27,u=2})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(42777,{itemID=49284,lvl=17,u=2})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(42776,{itemID=49283,lvl=10,u=2})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(46199,{itemID=49286,lvl=10,u=2})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(46197,{itemID=49285,lvl=10,u=2})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(45047,{b=1,f=55,spellID=62857,u=2})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(35223,{b=1,f=55,spellID=46168,u=2})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(46779,{b=1,f=55,spellID=65745,u=2}))}})),
p(4762,{awp=110100,description="Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between February 25th, 10:00 a.m. & March 25th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",itemID=238261,npcID=240137,rwp=110100,spellID=1224569,u=2}),
en(229822,{awp=110007,description="Included as a code in the physical goodie bag given to attendees of 30th Anniversary Live events.",questID=84999,rwp=110105,spellID=465518,tmogSetID=3901,u=2,g={
s(227684,229818,{f=3}),
s(227685,229819,{f=3}),
s(227686,229820,{f=3}),
s(227687,229821,{f=3})}}),
toy(232306,{awp=110105,b=1,description="Arena World Championship: TWW Season 2\n\nSign up on Raider.io for any of the 3 Cups, available until April 11th 2025, and play in at least two game series (best of 5)\n\nWinning not required, for more details & requirements check out: Raider.io/tournaments",rwp=110105,u=2}),
toy(232302,{awp=110107,b=1,description="Break the Meta: TWW Season 2\n\nInstead of teams fighting to beat their opponent's time, Break the Meta is focused on teams pushing keys as high as they can with Season 2's off-meta specs and classes.\n\nRegister for the event on |cFFFFFFFFraider.io/events/break-the-meta-the-war-within-season-2/register|r and complete at least 2 BTM-Eligible timed keystones at |cFFFFFFFFlevel +10|r or higher during the Competition Period, and the Tempered Banner of the Algari will be automatically added to your collection in-game after the conclusion of the event.\n\nThe Event starts on June 24th for US, June 25th for EU & June 26th for CN/KR/TW & lasts for 1 week.",rwp=110107,u=2}),
p(4791,{awp=110100,description="Included for free with any purchase from the World of Warcraft Bronze Murloc Collection on the Blizzard Gear Store. Available until March 31, 2025 while supplies last. The code will be emailed and can be redeemed on Battle.net or the launcher.",itemID=238796,npcID=198989,rwp=110100,spellID=1226305,u=2}),
p(4410,{awp=110105,b=1,description="Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between April 22nd, 10:00 a.m. & May 20th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",itemID=212791,npcID=216455,rwp=110105,spellID=433098,u=2}),
mnt(1236262,{awp=110107,description="Finish the Pandaren Wandering Isle starting zone in |cFFfe040fMoP Classic|r until you arrive in Orgrimmar/Stormwind to receive this mount in Retail.\n\nPromotion starts on July 1st until July 30th.",rwp=110107,u=2}),
s(284494,235987,{awp=110107,description="Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between July 14th, 10:00 a.m. & August 11th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",f=3,rwp=110200,u=2}),
p(4858,{awp=110200,description="Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between August 5th, 10:00 a.m. & September 16th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",itemID=246451,npcID=246983,rwp=110200,spellID=1242265,u=2}),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(1243589,{awp=110200,description="Rewarded from the Season 3 Shop Bundle.",itemID=246732,rwp=110205,u=2})),
toy(232307,{awp=110200,description="Arena World Championship: TWW Season 3\n\nSign up on Raider.io for any of the 3 Cups, available until October 22nd 2025, and play in at least two game series (best of 5)\n\nWinning not required, for more details & requirements check out: Raider.io/tournaments",rwp=110205,u=2}),
toy(232303,{awp=110205,description="Break the Meta: TWW Season 3\n\nBreak the Meta is focused on teams pushing keys as high as they can with off-meta specs and classes.\n\nComplete at least 2 BTM-Eligible timed keystones at |cFFFFFFFFlevel +8|r or higher will receive an exclusive Toy to use in-game!.\n\nThe Event starts on Nov 18th for US, Nov 19th for EU & Nov 20th for CN/KR/TW & lasts for 1 week.\nFor more details & requirements check out: Raider.io/events/break-the-meta-the-war-within-season-3/",u=2}),
p(4856,{awp=110200,description="Included for free with any purchase over $75 from the World of Warcraft Collection on the Blizzard Gear Store. Available from September 8-30, 2025. The code will be emailed and can be redeemed on Battle.net or the launcher.",itemID=246343,npcID=246663,rwp=110200,spellID=1241763,u=2}),
p(4907,{awp=110200,description="Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between October 1st, 10:00 a.m. & October 29th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",itemID=257515,npcID=254356,rwp=110205,spellID=1261676,u=2}),
mnt(1245604,{awp=110205,description="Obtained if you set up a 12-Month WoW Subscription.",itemID=247848,u=3}),
mnt(1234971,{awp=110205,description="Obtained if you set up a 12-Month WoW Subscription.",itemID=243194,u=3}),
en(242480,{awp=110205,description="Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between November 11th, 10:00 a.m. & December 2nd, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",questID=90654,rwp=110207,spellID=1232446,tmogSetID=4538,u=2,g={
s(290242,242421,{f=2}),
s(290265,242450,{f=2})}}),
p(4908,{awp=110205,description="Included for free with any purchase from the World of Warcraft Lil' Ashlee Collection on the Blizzard Gear Store. Available from November 21st through December 8th, 2025. The code will be emailed and can be redeemed on Battle.net or the launcher.",itemID=257518,npcID=254359,rwp=110207,spellID=1261687,u=2}),
s(266784,235343,{awp=110207,description="Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between December 2nd, 10:00 a.m. & December 30th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",f=2,rwp=110207,u=2}),
mnt(1247422,{awp=110207,description="Obtained if you set up a 12-Month WoW Subscription.",itemID=248681,u=3})}}),
h(-669,{awp=120000,g={
de(15151,{description="Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between January 20th, 10:00 a.m. & February 17th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",itemID=263301,rwp=120001,spellID=1270369,u=2}),
i(264241,{description="Available to players in the UK and EU from a QR code scan of applicable Pringles cans or from the UK/EU Pringles website. \nThe battle.net code can be redeemed in any region but the website is region locked.\n\nVisit pringles.eu/0pzaiz ON A MOBILE DEVICE to sign up; players outside of EU can use a VPN to do this.\nThe promotion runs between January 20th through May 5th, 2026.",rwp=120001,u=2}),
h(-708,{rwp=120000,u=2,g={
mnt(367620,{itemID=190539,lvl=10,u=2}),
mnt(153489,{b=1,itemID=107951,lvl=10,u=2}),
p(4690,{itemID=232519,npcID=233481,spellID=470914,u=2})}}),
ach(62387,{description="Obtained by logging in to an account with an active subscription before the release of Midnight on March 2nd, 2026.",rwp=120001,u=2,g={
de(14467,{itemID=260785,sourceAchievements={62387},spellID=1266894,u=2})}}),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(235378,{b=1,description="The first lottery draw costs ¥1, and the price increases progressively with each subsequent draw. A total of 13 draws costing ¥1,271 will allow you to obtain all prizes. ",rwp=120100,spellID=1216746,g={(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
p(4902,{itemID=253404})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(251542)),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
toy(256141)),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(253244)),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(253257)),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(253296)),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(269743)),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
toy(258840)),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(253402)),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
en(257547)),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
toy(258136))}})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(269743,{description="Drops from either the '3rd Price' after buying a lottery ticket from the Spring Festival promotional event or bought with Points after receiving the '2nd Prize'.",rwp=120100,g={(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(251542)),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
toy(258135)),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(269009)),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(1258574,{itemID=254736})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(255973)),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
i(46779,{b=1,f=55,spellID=65745})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(42776,{itemID=49283,lvl=10})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(46199,{itemID=49286,lvl=10})),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
mnt(46197,{itemID=49285,lvl=10}))}}))}}),
h(-519,{awp=100007,rwp=100206,u=2,g={
mnt(51412,{itemID=49282,lvl=17,rwp=100007,u=2}),
p(256,{b=1,itemID=54847,npcID=40703,rwp=100100,spellID=75906,u=2}),
s(21629,45037,{awp=100100,b=1,f=10,rwp=100100,spellID=63604,u=2}),
mnt(101573,{awp=100100,itemID=71718,lvl=10,rwp=100105,u=2}),
p(171,{awp=100105,b=1,itemID=34519,npcID=25147,rwp=100105,spellID=45175,u=2}),
s(18370,38312,{awp=100105,b=1,f=9,rwp=100107,u=2}),
p(247,{awp=100107,b=1,itemID=49664,npcID=36910,rwp=100107,spellID=69539,u=2}),
mnt(139595,{awp=100107,b=1,itemID=95341,lvl=10,rwp=100200,u=2}),
s(18371,38313,{awp=100200,b=1,f=9,rwp=100200,u=2}),
mnt(134573,{awp=100200,b=1,itemID=92724,lvl=10,rwp=100205,u=2}),
p(2185,{awp=100205,b=1,itemID=160588,npcID=138741,rwp=100205,spellID=272772,u=2}),
s(9376,23709,{awp=100205,b=1,f=9,u=2})}}),
h(-520,{
ach(411,{awp=30002,providers={{"i",20371}},u=2}),
p(107,{awp=11101,itemID=20371,npcID=15186,spellID=24696,u=2,g={
crit(34645,{achID=411,awp=30002,id=3,u=2})}}),
ach(412,{awp=30002,providers={{"i",33079}},u=2}),
toy(33079,{awp=20103,b=1,u=2}),
ach(415,{awp=30002,providers={{"i",43599}},u=2}),
mnt(58983,{awp=30002,itemID=43599,lvl=10,u=2}),
ach(3536,{awp=30200,providers={{"i",46802}},u=2}),
p(228,{awp=30200,b=1,itemID=46802,npcID=34694,spellID=66030,u=2,g={
crit(34646,{achID=3536,id=3,u=2})}}),
ach(5378,{awp=40001,providers={{"i",67418}},u=2}),
p(294,{awp=40001,b=1,itemID=67418,npcID=51122,spellID=94070,u=2,g={
crit(34644,{achID=5378,id=3,u=2})}}),
ach(6185,{awp=40300,providers={{"i",71726}},u=2}),
p(329,{awp=40200,b=1,itemID=71726,npcID=54438,spellID=101606,u=2,g={
crit(34643,{achID=6185,awp=40300,id=3,u=2})}}),
ach(8793,{awp=50402,providers={{"i",106244}},u=2}),
p(1364,{awp=50402,b=1,itemID=106244,npcID=74405,spellID=149792,u=2,g={
crit(34642,{achID=8793,id=3,u=2})}}),
ach(9763,{awp=60100,providers={{"i",118517}},u=2}),
p(1602,{awp=60003,b=1,itemID=118517,npcID=88805,spellID=177234,u=2,g={
crit(27993,{achID=9763,awp=60100,id=3,u=2})}}),
ach(10322,{awp=60202,providers={{"i",128427}},u=2}),
p(1454,{awp=60202,b=1,itemID=128427,npcID=85009,spellID=190036,u=2,g={
crit(28791,{achID=10322,id=3,u=2})}}),
ach(11294,{awp=70200,providers={{"i",141894},{"i",141895}},u=2}),
p(1940,{awp=70100,b=1,itemID=141894,npcID=113983,r=2,spellID=227052,u=2,g={
crit(33160,{achID=11294,awp=70200,id=3,u=2})}}),
p(1939,{awp=70100,b=1,itemID=141895,npcID=113984,r=1,spellID=227051,u=2,g={
crit(33161,{achID=11294,awp=70200,id=6,u=2})}}),
ach(11931,{awp=70302,providers={{"i",151617},{"i",151618}},u=2}),
mnt(245725,{awp=70300,b=1,itemID=151617,lvl=10,r=1,u=2}),
mnt(245723,{awp=70300,b=1,itemID=151618,lvl=10,r=2,u=2}),
ach(13138,{awp=80100,providers={{"i",163986},{"i",163987}},u=2}),
toy(163986,{awp=80001,b=1,r=1,u=2}),
toy(163987,{awp=80001,b=1,r=2,u=2}),
s(100004,163985,{awp=80001,b=1,f=3,r=2,u=2}),
s(100003,163984,{awp=80001,b=1,f=3,r=1,u=2}),
ach(14027,{awp=80205,u=2}),
en(258422,{awp=110205,spellID=1263286,tmogSetID=1903,u=2,g={
s(105954,171337,{f=2}),
s(105955,171338,{f=2}),
s(105956,171339,{f=2}),
s(105957,171340,{f=2}),
s(105958,171341,{f=2})}}),
p(2777,{awp=80205,itemID=258418,npcID=157715,r=1,spellID=307654,u=2,g={
crit(46934,{achID=14027,id=4,u=2})}}),
p(2778,{awp=80205,itemID=258419,npcID=157716,r=2,spellID=307655,u=2,g={
crit(46933,{achID=14027,id=3,u=2})}}),
mnt(341821,{awp=90002,itemID=258428,rwp=90200,u=2}),
p(3053,{awp=90002,itemID=258429,npcID=175203,rwp=90200,spellID=344755,u=2,g={
crit(51529,{achID=14904,id=2,u=2})}}),
ach(14904,{awp=90002,rwp=90200,u=2}),
mnt(358072,{awp=100107,description="Received after buying the Blizzcon 2023 Collection: Legendary Pack.",itemID=258427,rwp=100205,u=2}),
toy(210042,{awp=100107,b=1,description="Received after buying the Blizzcon 2023 Collection: Epic Pack.",rwp=100205,u=2}),
p(3579,{awp=100107,description="Received after buying the Blizzcon 2023 Collection: Epic Pack.",itemID=258482,npcID=205467,rwp=100205,spellID=411448,u=2}),
ach(18250,{awp=100107,providers={{"n",205467}},rwp=100205,u=2})}),
h(-521,{u=3,g={
x(1,{description="These rewards were made available to anyone who purchased an original Collector's Edition of World of Warcraft.\n\nThere may still be copies online, but expect to lose a sizable chunk of real world currency for it.",u=3,g={
h(-45,{rwp=20001,u=2,g={
q(8547,{awp=20001,maps={94},providers={{"i",20938}},races=a[4],u=3}),
q(12781,{awp=30002,c=a[20],lvl=8,maps={23},providers={{"i",39713}},u=3}),
q(9278,{awp=20001,c=a[5],maps={97},providers={{"i",22888}},r=2,u=3}),
q(5841,{maps={27},providers={{"i",14647}},races={3,7},u=2}),
q(5805,{maps={37},providers={{"i",14646}},races=a[3],u=2}),
q(5842,{maps={57},providers={{"i",14648}},races=a[16],u=2}),
q(5843,{maps=a[3],providers={{"i",14649}},races={2,8},u=2}),
q(5844,{maps=a[23],providers={{"i",14650}},races=a[20],u=2}),
q(5847,{maps={18},providers={{"i",14651}},races=a[18],u=2})}}),
h(-47,{description="Every character you created was able to select between one of the three pets by completing the 'Welcome!' quest for your race.",rwp=20001,sourceQuests={5805,5841,5842,5843,5844,5847,8547,9278,12781},u=2,g={
ach(662,{awp=30002,providers={{"i",13584}},u=3}),
ach(663,{awp=30002,providers={{"i",13583}},u=3}),
ach(664,{awp=30002,providers={{"i",13582}},u=3}),
p(93,{awp=11101,itemID=13584,npcID=11326,spellID=17708,u=3,g={
crit(34630,{achID=662,awp=30002,id=3,u=3})}}),
p(92,{awp=11101,itemID=13583,npcID=11325,spellID=17707,u=3,g={
crit(34631,{achID=663,awp=30002,id=3,u=3})}}),
p(94,{awp=11101,itemID=13582,npcID=11327,spellID=17709,u=3,g={
crit(34632,{achID=664,awp=30002,id=3,u=3})}})}})}}),
x(2,{description="These rewards were made available to anyone who purchased a Collector's Edition of The Burning Crusade.\n\nThere may still be copies online, but expect to a sizable chunk of real world currency for it.\n\nNOTE: Non-EU accounts will not receive Lurky's Egg if redeemed.",u=3,g={
ach(665,{awp=30002,providers={{"i",25535}},rwp=30002,u=2}),
p(131,{awp=20001,itemID=25535,npcID=18381,rwp=30002,spellID=32298,u=2,g={
crit(34633,{achID=665,awp=30002,id=3,u=2})}}),(function(t)if GetCVar("portal")~="EU" then	t.u=1;end	return t;end)(
p(111,{awp=20001,description="This was only available in the EU.",itemID=30360,npcID=15358,rwp=30002,spellID=24988,u=2}))}}),
h(-524,{awp=110207,description="These rewards were made available to anyone who purchased a Deluxe Edition of The Burning Crusade Classic.",u=3,g={
mnt(346136,{itemID=248090,u=3})}}),
h(-694,{awp=110205,description="These rewards were made available to anyone who purchased the Outland Heroic Pack of The Burning Crusade Classic Anniversary.",u=3,g={
mnt(1256677,{itemID=253573,u=3}),
toy(254666,{u=3}),
toy(263489,{u=3}),
p(4903,{itemID=253699,npcID=252859,spellID=1257069,u=3}),
mnt(1255246,{itemID=252950,u=3})}}),
x(3,{awp=20403,description="These rewards were made available to anyone who purchased a Collector's Edition of Wrath of the Lich King.\n\nThere may still be copies online, but expect to a sizable chunk of real world currency for it.",u=3,g={
ach(683,{providers={{"i",39286}},rwp=30305,u=2}),
p(188,{itemID=39286,npcID=28883,rwp=30305,spellID=52615,u=2,g={
crit(34634,{achID=683,id=3,u=2})}})}}),
h(-525,{awp=90205,rwp=100107,u=2,g={
h(-523,{description="These rewards were made available to anyone who purchased a Epic Upgrade Edition of Wrath of the Lich King Classic.",u=2,g={
mnt(370770,{itemID=258475,u=2})}})}}),
x(4,{awp=40001,description="These rewards were made available to anyone who purchased a Collector's Edition of Cataclysm.\n\nThere may still be copies online, but expect to a sizable chunk of real world currency for it.",u=3,g={
ach(5377,{providers={{"i",62540}},rwp=40302,u=2}),
p(268,{itemID=62540,npcID=46896,rwp=40302,spellID=87344,u=2,g={
crit(34636,{achID=5377,id=3,u=2})}})}}),
h(-526,{awp=100200,rwp=110200,u=2,g={
h(-522,{description="These rewards were made available to anyone who purchased Blazing Heroic Edition.",u=2,g={
mnt(424009,{b=1,itemID=210008,lvl=10,u=2}),
p(4316,{b=1,itemID=210964,npcID=213407,spellID=427682,u=2})}})}}),
x(5,{awp=50004,description="These rewards were made available to anyone who purchased a Collector's Edition of Mists of Pandaria.\n\nThe rewards can be purchased from the in-game shop.",u=3,g={
ach(6849,{providers={{"i",85870}},rwp=50407,u=2}),
ach(6848,{providers={{"i",85871}},rwp=50407,u=2}),
mnt(124659,{b=1,itemID=85870,lvl=10,rwp=50407,u=2}),
p(671,{itemID=85871,npcID=63832,rwp=50407,spellID=124660,u=2,g={
crit(34637,{achID=6848,awp=80300,id=3,u=3})}})}}),
h(-527,{awp=110007,u=3,g={
h(-522,{description="These rewards were made available to anyone who purchased Sha-Infused Heroic Pack.",u=3,g={
mnt(1216422,{b=1,itemID=235286,lvl=10,u=3}),
mnt(1216430,{b=1,itemID=235287,lvl=10,u=3}),
p(4733,{itemID=235358,npcID=236783,spellID=1216564,u=3}),
toy(235288,{b=1,lvl=10,u=3}),
en(238050,{awp=110107,questID=88806,spellID=1224080,tmogSetID=4372,u=3,g={
s(287294,238025,{f=2}),
s(287295,238026,{f=2}),
s(287328,238035,{f=2}),
s(287329,238038,{f=2}),
s(287330,238043,{f=2}),
s(287331,238047,{f=2}),
s(287332,238048,{f=2})}})}})}}),
x(6,{awp=50407,description="These rewards were made available to anyone who purchased a Collector's Edition of Warlords of Draenor.",u=3,g={
p(1386,{itemID=109014,npcID=77137,rwp=60202,spellID=155748,u=2,g={
crit(24600,{achID=8917,awp=100100,id=3,u=3})}}),
mnt(155741,{b=1,itemID=109013,lvl=10,rwp=60202,u=2})}}),
x(7,{awp=60202,description="These rewards were made available to anyone who purchased a Collector's Edition of Legion.\n\nThe rewards can be purchased from the in-game shop.",u=3,g={
ach(10321,{rwp=70305,u=2}),
ach(10320,{providers={{"i",128425}},rwp=70305,u=2}),
p(1691,{itemID=128426,npcID=95841,rwp=70305,spellID=190020,u=2,g={
crit(28787,{achID=10321,id=1,u=2})}}),
mnt(189998,{b=1,itemID=128425,lvl=10,rwp=70305,u=2})}}),
x(8,{awp=70305,description="These rewards were made available to anyone who purchased a Collector's Edition of BFA.\n\nThe rewards can be purchased from the in-game shop.",u=3,g={
ach(12230,{providers={{"i",153540}},r=1,rwp=80307,u=2}),
ach(12229,{providers={{"i",153539}},r=2,rwp=80307,u=2}),
ach(12232,{rwp=80307,u=2}),
mnt(255696,{b=1,itemID=153540,lvl=10,r=1,rwp=80307,u=2}),
mnt(255695,{b=1,itemID=153539,lvl=10,r=2,rwp=80307,u=2}),
p(2143,{itemID=153541,npcID=129049,rwp=80307,spellID=255702,u=2,g={
crit(38154,{achID=12232,id=1,u=2})}})}}),
x(9,{awp=80307,u=3,g={
h(-522,{description="These rewards were made available to anyone who purchased Shadowlands Heroic Edition.",rwp=90205,u=2,g={
ach(14283,{providers={{"s",307932}},u=2}),
mnt(307932,{u=2}),
h(-45,{u=2,g={
q(57686,{description="You need to purchase Shadowlands Heroic Edition to spawn the questgiver from the guiding orb on the back of Ensorcelled Everwyrm.",lvl=50,qgs={158635},u=3,g={
i(172954,{rwp=90205,u=2}),
s(106487,172075,{f=2,rwp=90205,u=2}),
s(106488,172076,{f=2,rwp=90205,u=2}),
s(106490,172078,{f=3,rwp=90205,u=2}),
s(106489,172077,{f=2,rwp=90205,u=2}),
s(106491,172079,{f=2,rwp=90205,u=2}),
s(106492,172080,{f=2,rwp=90205,u=2}),
s(106493,172081,{f=2,rwp=90205,u=2}),
s(106494,172082,{f=2,rwp=90205,u=2}),
s(106495,172083,{f=2,rwp=90205,u=2})}})}})}}),
h(-523,{description="These rewards were made available to anyone who purchased Shadowlands Epic Edition.",rwp=90205,u=2,g={
i(248091,{f=101,spellID=308067,u=2}),
toy(172179,{b=1,u=2}),
ill(6162,{b=1,itemID=172177,questID=57596,u=2})}})}}),
x(10,{awp=90205,u=3,g={
h(-522,{description="These rewards were made available to anyone who purchased Dragonflight Heroic Edition.",rwp=100107,u=2,g={
p(3177,{description="This is a pre-order bonus only available before the launch of Dragonflight.",itemID=258432,npcID=181575,rwp=100002,spellID=359855,u=2}),
p(3175,{npcID=181535,u=2}),
mnt(359843,{itemID=248089,u=2}),
ach(17314,{providers={{"s",359843}},u=2}),
ach(17305,{awp=100005,rwp=100200,u=2})}}),
h(-523,{description="These rewards were made available to anyone who purchased Dragonflight Epic Edition.",rwp=100107,u=2,g={
toy(193588,{b=1,u=2}),
en(255827,{spellID=1259474,tmogSetID=2293,u=2,g={
s(165610,188256,{f=3}),
s(165611,188257,{f=3}),
s(165612,188258,{f=3}),
s(165613,188259,{f=3}),
s(165614,188260,{f=3})}}),
s(180744,193610,{f=2,u=2})}})}}),
x(11,{awp=100107,u=3,g={
h(-522,{description="These rewards were made available to anyone who purchased The War Within Heroic Edition.",rwp=110200,u=2,g={
mnt(417888,{itemID=258479,u=2}),
ach(19027,{providers={{"s",417888}},u=2}),
en(209336,{questID=78048,spellID=422666,tmogSetID=3128,u=2,g={
s(190676,209320,{f=2}),
s(190677,209321,{f=2}),
s(190678,209325,{f=2}),
s(190679,209327,{f=2}),
s(190680,209328,{f=2}),
s(190681,209329,{f=2}),
s(190682,209330,{f=2}),
s(190683,209331,{f=3}),
s(190684,209332,{f=2})}}),
h(-52,{sr=1,u=2,g={
h(-12,{sr=1,u=2,g={
ach(18928,{sr=1,u=2}),
ach(18929,{sr=1,u=2}),
ach(18931,{sr=1,u=2,g={
title(520,{sr=1,u=2})}})}}),
h(-45,{sr=1,u=2,g={
q(77813,{coords={{45.4,55.2,2112}},DisablePartySync=1,isBreadcrumb=1,lvl=10,nextQuests={77815},qgs={197478},sr=1,u=2}),
q(77815,{coords={{75.2,55,2022}},lvl=10,qgs={193359},sourceQuests={77813},sr=1,u=2,g={
en(209417,{questID=78049,spellID=422722,sr=1,tmogSetID=3129,u=2,g={
s(190677,209321,{f=2}),
s(190680,209328,{f=2}),
s(190683,209331,{f=3}),
s(190684,209332,{f=2}),
s(190685,209333,{f=2}),
s(190686,209334,{f=2}),
s(190687,209335,{f=2}),
s(191197,210020,{f=2}),
s(191198,210021,{f=2})}})}}),
q(81993,{awp=110000,coords={a[15]},lvl=10,qgs=a[11],sr=1,u=3,g={
i(220737,{sr=1,u=3}),
s(218742,220710,{f=2,sr=1,u=3}),
s(218741,220709,{f=2,sr=1,u=3}),
s(218748,220716,{f=2,sr=1,u=3}),
s(218743,220711,{f=3,sr=1,u=3}),
s(218747,220715,{f=2,sr=1,u=3}),
s(218744,220712,{f=2,sr=1,u=3}),
s(218745,220713,{f=2,sr=1,u=3}),
s(218746,220714,{f=2,sr=1,u=3}),
s(218749,220717,{f=2,sr=1,u=3}),
s(218728,220696,{f=2,sr=1,u=3}),
s(218727,220695,{f=2,sr=1,u=3}),
s(218734,220702,{f=2,sr=1,u=3}),
s(218729,220697,{f=3,sr=1,u=3}),
s(218733,220701,{f=2,sr=1,u=3}),
s(218730,220698,{f=2,sr=1,u=3}),
s(218731,220699,{f=2,sr=1,u=3}),
s(218732,220700,{f=2,sr=1,u=3}),
s(218735,220703,{f=2,sr=1,u=3}),
s(218751,220719,{f=2,sr=1,u=3}),
s(218750,220718,{f=2,sr=1,u=3}),
s(218757,220725,{f=2,sr=1,u=3}),
s(218752,220720,{f=3,sr=1,u=3}),
s(218756,220724,{f=2,sr=1,u=3}),
s(218753,220721,{f=2,sr=1,u=3}),
s(218754,220722,{f=2,sr=1,u=3}),
s(218755,220723,{f=2,sr=1,u=3}),
s(218758,220726,{f=2,sr=1,u=3})}}),
q(84908,{awp=110000,DisablePartySync=1,lc={1,"questID",83024},lvl=70,sr=1,u=3}),
q(83024,{awp=110000,coords={a[14]},lvl=70,qgs=a[12],sr=1,sym={{"select","questID",81993},{"pop"}},u=3}),
q(81994,{awp=110000,coords={a[15]},lvl=10,qgs=a[11],sourceQuests={81993,83024},sr=1,u=3,g={
s(218740,220708,{f=2,sr=1,u=3}),
s(218738,220706,{f=2,sr=1,u=3}),
s(218737,220705,{f=2,sr=1,u=3}),
s(218739,220707,{f=2,sr=1,u=3}),
s(218736,220704,{f=2,sr=1,u=3}),
s(218768,220736,{f=2,sr=1,u=3}),
s(218766,220734,{f=2,sr=1,u=3}),
s(218765,220733,{f=2,sr=1,u=3}),
s(218767,220735,{f=2,sr=1,u=3}),
s(218764,220732,{f=2,sr=1,u=3}),
s(218763,220731,{f=2,sr=1,u=3}),
s(218761,220729,{f=2,sr=1,u=3}),
s(218760,220728,{f=2,sr=1,u=3}),
s(218762,220730,{f=2,sr=1,u=3}),
s(218759,220727,{f=2,sr=1,u=3})}}),
q(83025,{awp=110000,coords={a[14]},lvl=70,qgs=a[12],sr=1,sym={{"select","questID",81994},{"pop"}},u=3}),
q(77793,{collectible=false,coords={{38.6,60.6,2133}},isDaily=1,lvl=10,qgs={202524},repeatable=1,sourceQuests=a[21],sqreq=1,sr=1,u=2,g={
ach(18925,{sr=1,u=2,g={
crit(61861,{achID=18928,id=6,u=2})}}),
ach(18926,{sr=1,u=2,g={
crit(61867,{achID=18929,id=6,u=2})}}),
ach(18927,{sr=1,u=2,g={
crit(61873,{achID=18931,id=6,u=2})}})}}),
q(77785,{collectible=false,coords={{86.3,35.8,2023}},isDaily=1,lvl=10,qgs={191121},repeatable=1,sourceQuests=a[21],sqreq=1,sr=1,u=2,g={
ach(18913,{sr=1,u=2,g={
crit(61857,{achID=18928,id=2,u=2})}}),
ach(18914,{sr=1,u=2,g={
crit(61863,{achID=18929,id=2,u=2})}}),
ach(18915,{sr=1,u=2,g={
crit(61869,{achID=18931,id=2,u=2})}})}}),
q(77777,{collectible=false,coords={{63.3,70.9,2022}},isDaily=1,lvl=10,qgs={190123},repeatable=1,sourceQuests=a[21],sqreq=1,sr=1,u=2,g={
ach(18910,{sr=1,u=2,g={
crit(61856,{achID=18928,id=1,u=2})}}),
ach(18911,{sr=1,u=2,g={
crit(61862,{achID=18929,id=1,u=2})}}),
ach(18912,{sr=1,u=2,g={
crit(61868,{achID=18931,id=1,u=2})}})}}),
q(77787,{collectible=false,coords={{76.3,65.7,2151}},isDaily=1,lvl=10,qgs={200183},repeatable=1,sourceQuests=a[21],sqreq=1,sr=1,u=2,g={
ach(18922,{sr=1,u=2,g={
crit(61860,{achID=18928,id=5,u=2})}}),
ach(18923,{sr=1,u=2,g={
crit(61866,{achID=18929,id=5,u=2})}}),
ach(18924,{sr=1,u=2,g={
crit(61872,{achID=18931,id=5,u=2})}})}}),
q(77784,{collectible=false,coords={{57.2,66.9,2025}},isDaily=1,lvl=10,qgs={193651},repeatable=1,sourceQuests=a[21],sqreq=1,sr=1,u=2,g={
ach(18919,{sr=1,u=2,g={
crit(61859,{achID=18928,id=4,u=2})}}),
ach(18920,{sr=1,u=2,g={
crit(61865,{achID=18929,id=4,u=2})}}),
ach(18921,{sr=1,u=2,g={
crit(61871,{achID=18931,id=4,u=2})}})}}),
q(77786,{collectible=false,coords={{71.3,24.7,2024}},isDaily=1,lvl=10,qgs={192115},repeatable=1,sourceQuests=a[21],sqreq=1,sr=1,u=2,g={
ach(18916,{sr=1,u=2,g={
crit(61858,{achID=18928,id=3,u=2})}}),
ach(18917,{sr=1,u=2,g={
crit(61864,{achID=18929,id=3,u=2})}}),
ach(18918,{sr=1,u=2,g={
crit(61870,{achID=18931,id=3,u=2})}})}})}})}})}}),
h(-523,{description="These rewards were made available to anyone who purchased The War Within Epic Edition.",rwp=110200,u=2,g={
ach(19030,{providers={{"n",209681}},u=2}),
toy(208704,{b=1,u=2}),
toy(208883,{b=1,u=2}),
p(4266,{b=1,itemID=208751,npcID=209681,spellID=420759,u=2}),
q(82809,{awp=110000,qgs={209681},u=3,g={
p(4590,{b=1,itemID=224259,npcID=224716,spellID=452222,u=3}),
p(4589,{b=1,itemID=224261,npcID=224717,spellID=452221,u=3}),
p(4591,{b=1,itemID=224260,npcID=224718,spellID=452223,u=3})}})}})}}),
x(12,{awp=110200,u=3,g={
h(-522,{description="These rewards were made available to anyone who purchased Midnight Heroic Edition.",u=3,g={
ach(61401,{providers={{"s",1234305}},u=3}),
en(248249,{questID=91814,spellID=1246785,tmogSetID=5165,u=3,g={
s(295500,248378,{f=3}),
s(295501,248379,{f=2}),
s(295502,248380,{f=2}),
s(295503,248381,{f=2}),
s(295504,248382,{f=2}),
s(295505,248383,{f=2}),
s(295506,248384,{f=2}),
s(295507,248385,{f=2}),
s(295508,248386,{f=2}),
s(295509,248387,{f=2})}}),
mnt(1234305,{itemID=243020,lvl=30,u=3})}}),
h(-523,{description="These rewards were made available to anyone who purchased Midnight Epic Edition.",u=3,g={
ach(61402,{providers={{"s",1239138}},u=3}),
p(4812,{itemID=243063,npcID=244146,spellID=1234591,u=3}),
p(4811,{itemID=243062,npcID=244145,spellID=1234588,u=3}),
de(9151,{awp=110207,itemID=252668,spellID=1254915,u=3}),
de(9149,{awp=110207,itemID=252666,spellID=1254913,u=3}),
de(9150,{awp=110207,itemID=252667,spellID=1254914,u=3}),
de(9152,{awp=110207,itemID=252669,spellID=1254916,u=3}),
de(1458,{awp=110207,itemID=244668,spellID=1237798,u=3}),
de(2231,{awp=110207,itemID=246414,spellID=1242068,u=3}),
de(1894,{awp=110207,itemID=245939,spellID=1240036,u=3}),
de(4843,{awp=110207,itemID=248809,spellID=1247795,u=3}),
mnt(1239138,{itemID=245610,lvl=30,u=3}),
mnt(1234303,{itemID=243019,lvl=30,u=3}),
en(248974,{questID=91953,spellID=1248235,tmogSetID=5164,u=3,g={
s(295490,248368,{f=3}),
s(295491,248369,{f=2}),
s(295492,248370,{f=2}),
s(295493,248371,{f=2}),
s(295494,248372,{f=2}),
s(295495,248373,{f=2}),
s(295496,248374,{f=2}),
s(295497,248375,{f=2}),
s(295498,248376,{f=2}),
s(295499,248377,{f=2})}})}})}}),
h(-529,{awp=80205,description="These rewards are available to anyone who purchases World of Warcraft 15th Anniversary Collection.",rwp=100100,u=2,g={
mnt(302361,{itemID=207964,lvl=10,r=2,u=2}),
mnt(302362,{itemID=207963,lvl=10,r=1,u=2})}}),
h(-530,{awp=50004,description="These rewards are available to anyone who purchases Diablo 3 Collection.",rwp=50407,u=2,g={
ach(7412,{providers={{"i",76062}},u=2}),
p(346,{itemID=76062,npcID=56266,spellID=105633,u=2,g={
crit(34638,{achID=7412,id=3,u=2})}})}}),
h(-531,{awp=50402,description="These rewards are available to anyone who purchases Diablo 3: Reaper of Souls Collection.",u=3,g={
ach(8795,{providers={{"i",106256}},u=3}),
p(1365,{itemID=106256,npcID=74413,spellID=149810,u=3,g={
crit(34640,{achID=8795,id=3,u=3})}})}}),
h(-532,{awp=100002,description="These rewards are available to anyone who purchases Diablo 4 Standard Edition.",rwp=110007,u=2,g={
mnt(369476,{b=1,itemID=191114,u=2}),
ach(15640,{providers={{"i",191114}},u=2})}}),
h(-703,{awp=110207,description="These rewards are available to anyone who purchases Diablo 4: Lord of Hatred Standard Edition.",u=3,g={
i(265804,{spellID=1277191,u=3,g={
de(12247,{itemID=259055,spellID=1264380,u=3}),
de(12248,{itemID=259056,spellID=1264381,u=3}),
de(12251,{itemID=259059,spellID=1264384,u=3}),
de(12256,{itemID=259064,spellID=1264389,u=3}),
de(12255,{itemID=259063,spellID=1264388,u=3}),
de(12254,{itemID=259062,spellID=1264387,u=3}),
de(12253,{itemID=259061,spellID=1264386,u=3}),
de(12252,{itemID=259060,spellID=1264385,u=3}),
de(12257,{itemID=259065,spellID=1264390,u=3}),
de(12262,{itemID=259070,spellID=1264395,u=3}),
de(12261,{itemID=259069,spellID=1264394,u=3}),
de(12260,{itemID=259068,spellID=1264393,u=3}),
de(12259,{itemID=259067,spellID=1264392,u=3}),
de(12258,{itemID=259066,spellID=1264391,u=3}),
de(12250,{itemID=259058,spellID=1264383,u=3}),
de(12249,{itemID=259057,spellID=1264382,u=3})}})}}),
h(-533,{awp=60203,description="These rewards are available to anyone who purchases Overwatch Origins Collection.",rwp=100002,u=2,g={
p(1828,{b=1,itemID=134047,npcID=103159,spellID=204148,u=2}),
ach(11064,{providers={{"n",103159}},u=2})}}),
h(-534,{awp=30305,description="These rewards are available to anyone who purchases Starcraft 2: Wings of Liberty Collection.",u=3,g={
ach(4824,{providers={{"i",56806}},u=3}),
p(258,{itemID=56806,npcID=42078,spellID=78381,u=3,g={
crit(34635,{achID=4824,id=3,u=3})}})}}),
h(-535,{awp=50004,description="These rewards are available to anyone who purchases Starcraft 2: Heart of the Swarm Collection.",u=3,g={
p(903,{itemID=90177,npcID=66984,spellID=131650,u=3,g={
crit(34639,{achID=7842,id=2,u=3})}}),
ach(7842,{providers={{"i",90177}},u=3})}}),
h(-536,{awp=60202,description="These rewards are available to anyone who purchases Starcraft 2: Legacy of the Void Collection.",u=3,g={
ach(10309,{providers={{"i",128423}},u=3}),
p(1255,{b=1,itemID=128423,npcID=71655,spellID=143637,u=3,g={
crit(34641,{achID=10309,id=2,u=3})}})}}),
h(-537,{awp=80100,description="These rewards are available to anyone who purchases Warcraft 3: Refogred, Spoils of War Edition.",u=3,g={
ach(13196,{u=3}),
mnt(281554,{b=1,itemID=164571,lvl=10,u=3})}})}}),
h(-538,{
h(-539,{awp=70100,maps={47},u=2,g={
h(-63,{u=2,g={
i(143628,{b=1,spellID=232323,u=2}),
i(142548,{b=1,spellID=231424,u=2}),
i(142547,{b=1,spellID=231423,u=2}),
i(142543,{b=1,f=55,spellID=231505,u=2}),
i(142549,{b=1,spellID=231502,u=2}),
i(142546,{b=1,spellID=231422,u=2}),
i(142545,{b=1,spellID=231415,u=2}),
i(142551,{b=1,spellID=231503,u=2})}}),
h(-47,{u=2,g={
toy(142542,{b=1,cost={{"i",143628,1},{"i",142543,10}},u=2})}}),
n(116041,{description="Can be found randomly in Legion zones, especially often in the Dalaran Underbelly.",u=2,g={
i(142544,{b=1,f=113,u=2})}}),
n(116652,{description="Can be found after killing the last boss in a dungeon. Kill it and enter the portal to fight The Cow King.",u=2,g={
i(142544,{b=1,f=113,u=2})}}),
n(116034,{description="Access is granted by taking a portal that spawns after a Treasure Goblin is killed. Can only be looted once per character. Right click the 'The Secret Cow Level' buff to leave the zone.",u=2,g={
ach(11395,{u=2}),
s(83944,143327,{b=1,f=29,u=2}),
toy(143543,{b=1,u=2})}})}}),
h(-540,{awp=110107,e=422,rwp=110200,u=2,g={
h(-12,{e=422,u=2,g={
ach(18258,{e=422,providers={{"i",206018},{"n",205637}},u=2})}}),
n(205722,{coords={{44.1,19.3,1},{33.8,35.3,84},{54.6,54.8,2248}},description="Every 60 Minutes a Portal spawns in Dornogal, Stormwind and Orgrimmar, causing a Treasure Goblin to appear after 5 minutes.\n\nCan also spawn in Undermine after defeating a rare.",e=422,maps={2346},u=2,g={
n(205490,{e=422,u=2,g={
p(3580,{b=1,e=422,itemID=206018,npcID=205637,spellID=411791,u=2}),
i(206039,{b=1,e=422,u=2,g={
s(187749,206004,{e=422,f=3,u=2}),
s(187752,206020,{e=422,f=2,u=2})}}),
i(206003,{b=1,e=422,f=113,lvl=10,u=2}),
i(142548,{awp=100100,b=1,e=422,rwp=100100,spellID=231424,u=2}),
i(206274,{awp=100100,b=1,e=422,rwp=100100,spellID=412909,u=2}),
i(142547,{awp=100100,b=1,e=422,rwp=100100,spellID=231423,u=2}),
s(83944,143327,{b=1,e=422,f=29,u=2}),
toy(206008,{b=1,e=422,u=2}),
i(142549,{awp=100100,b=1,e=422,rwp=100100,spellID=231502,u=2}),
i(142546,{awp=100100,b=1,e=422,rwp=100100,spellID=231422,u=2}),
i(142545,{awp=100100,b=1,e=422,rwp=100100,spellID=231415,u=2}),
i(142551,{awp=100100,b=1,e=422,rwp=100100,spellID=231503,u=2}),
s(187751,206007,{e=422,f=3,u=2}),
toy(142542,{b=1,e=422,u=2}),
toy(143543,{b=1,e=422,u=2}),
mnt(107203,{awp=100100,b=1,e=422,itemID=76755,lvl=10,rwp=100100,u=2}),
s(187932,206275,{e=422,f=1,u=2}),
s(187933,206276,{e=422,f=24,u=2}),
s(187750,206005,{e=422,f=23,u=2}),
mnt(1241429,{b=1,e=422,itemID=246264,lvl=10,u=2}),
s(293018,246242,{e=422,f=3,u=2}),
i(245589,{b=1,e=422,f=55,lvl=10,u=2,g={
cu(3309,{e=422,u=2}),
i(245639,{e=422,f=55,spellID=1239306,u=2}),
i(245642,{e=422,f=55,spellID=1239306,u=2}),
i(245652,{e=422,f=55,spellID=1239306,u=2}),
i(245654,{e=422,f=55,spellID=1239306,u=2}),
i(245634,{e=422,f=55,spellID=1239306,u=2}),
i(245636,{e=422,f=55,spellID=1239306,u=2}),
i(245638,{e=422,f=55,spellID=1239306,u=2}),
i(245630,{e=422,f=55,spellID=1239306,u=2}),
i(246127,{e=422,f=55,spellID=1239306,u=2}),
i(245590,{e=422,f=55,spellID=1239306,u=2}),
i(245641,{e=422,f=55,spellID=1239306,u=2}),
i(245632,{e=422,f=55,spellID=1239306,u=2}),
i(245635,{e=422,f=55,spellID=1239306,u=2}),
i(245633,{e=422,f=55,spellID=1239306,u=2}),
i(245643,{e=422,f=55,spellID=1239306,u=2}),
i(245640,{e=422,f=55,spellID=1239306,u=2}),
i(245614,{e=422,f=55,spellID=1239306,u=2}),
i(245637,{e=422,f=55,spellID=1239306,u=2}),
s(187751,206007,{e=422,f=3,u=2}),
i(245899,{b=1,e=422,spellID=1239938,u=2}),
i(245749,{b=1,e=422,spellID=1239890,u=2}),
i(245889,{b=1,e=422,spellID=1239914,u=2}),
i(245890,{b=1,e=422,spellID=1239916,u=2}),
i(245924,{b=1,e=422,spellID=1239941,u=2}),
i(245888,{b=1,e=422,spellID=1239911,u=2}),
i(245891,{b=1,e=422,spellID=1239918,u=2}),
i(245892,{b=1,e=422,spellID=1239923,u=2}),
i(245893,{b=1,e=422,spellID=1239929,u=2}),
i(245894,{b=1,e=422,spellID=1239931,u=2}),
i(245895,{b=1,e=422,spellID=1239933,u=2}),
i(245896,{b=1,e=422,spellID=1239936,u=2}),
i(245887,{b=1,e=422,spellID=1239905,u=2}),
i(245606,{e=422,u=2}),
i(245592,{e=422,u=2}),
i(245608,{e=422,u=2}),
i(245596,{e=422,u=2}),
i(245607,{e=422,u=2}),
i(245597,{e=422,u=2}),
i(245591,{e=422,u=2}),
i(245609,{e=422,u=2}),
i(245593,{e=422,u=2}),
i(245599,{e=422,u=2}),
i(245595,{e=422,u=2}),
i(245598,{e=422,u=2}),
i(245594,{e=422,u=2})}})}})}}),
h(-45,{e=422,u=2,g={
q(91038,{coords={{49.1,27.1,2339},{50,63.1,2339},{60.5,74.9,2339}},e=422,providers={{"o",547529}},u=2})}}),
h(-58,{e=422,u=2,g={
n(245378,{coords={{52.9,68,2339}},e=422,u=2,g={
en(244794,{cost={{"c",3309,40}},e=422,spellID=1237961,tmogSetID=4566,u=2,g={
s(291675,242901,{c=a[6],e=422,f=3}),
s(291676,242902,{c=a[6],e=422,f=5}),
s(291677,242903,{c=a[6],e=422,f=5}),
s(291678,242904,{c=a[6],e=422,f=5}),
s(291679,242905,{c=a[6],e=422,f=5}),
s(291680,242906,{c=a[6],e=422,f=5}),
s(291681,242907,{c=a[6],e=422,f=5}),
s(291682,242908,{c=a[6],e=422,f=5}),
s(291683,242909,{c=a[6],e=422,f=5})}}),
en(244800,{cost={{"c",3309,40}},e=422,spellID=1237972,tmogSetID=4574,u=2,g={
s(291720,242953,{c=a[9],e=422,f=3}),
s(291721,242954,{c=a[9],e=422,f=7}),
s(291722,242955,{c=a[9],e=422,f=7}),
s(291723,242956,{c=a[9],e=422,f=7}),
s(291724,242957,{c=a[9],e=422,f=7}),
s(291725,242958,{c=a[9],e=422,f=7}),
s(291726,242959,{c=a[9],e=422,f=7}),
s(291727,242960,{c=a[9],e=422,f=7}),
s(291728,242961,{c=a[9],e=422,f=7}),
s(292213,244447,{c=a[9],e=422,f=7})}}),
en(244799,{cost={{"c",3309,40}},e=422,spellID=1237973,tmogSetID=4565,u=2,g={
s(292183,244412,{c=a[4],e=422,f=3}),
s(292184,244413,{c=a[4],e=422,f=5}),
s(292185,244414,{c=a[4],e=422,f=5}),
s(292186,244415,{c=a[4],e=422,f=5}),
s(292187,244416,{c=a[4],e=422,f=5}),
s(292188,244417,{c=a[4],e=422,f=5}),
s(292189,244418,{c=a[4],e=422,f=5}),
s(292190,244419,{c=a[4],e=422,f=5}),
s(292191,244420,{c=a[4],e=422,f=5})}}),
en(244798,{cost={{"c",3309,40}},e=422,spellID=1237957,tmogSetID=4570,u=2,g={
s(291711,242938,{c=a[25],e=422,f=4}),
s(291712,242939,{c=a[25],e=422,f=4}),
s(291713,242940,{c=a[25],e=422,f=4}),
s(291714,242941,{c=a[25],e=422,f=4}),
s(291715,242942,{c=a[25],e=422,f=4}),
s(291716,242943,{c=a[25],e=422,f=4}),
s(291717,242944,{c=a[25],e=422,f=4}),
s(291718,242945,{c=a[25],e=422,f=4}),
s(291719,242946,{c=a[25],e=422,f=3}),
s(292209,244443,{c=a[25],e=422,f=4})}}),
en(244805,{cost={{"c",3309,40}},e=422,spellID=1237966,tmogSetID=4564,u=2,g={
s(291666,242892,{c=a[3],e=422,f=7}),
s(291667,242893,{c=a[3],e=422,f=7}),
s(291668,242894,{c=a[3],e=422,f=7}),
s(291669,242895,{c=a[3],e=422,f=7}),
s(291670,242896,{c=a[3],e=422,f=7}),
s(291671,242897,{c=a[3],e=422,f=7}),
s(291672,242898,{c=a[3],e=422,f=7}),
s(291673,242899,{c=a[3],e=422,f=7}),
s(291674,242900,{c=a[3],e=422,f=3})}}),
en(244803,{cost={{"c",3309,40}},e=422,spellID=1237968,tmogSetID=4569,u=2,g={
s(292164,244392,{c=a[23],e=422,f=3}),
s(292165,244393,{c=a[23],e=422,f=6}),
s(292166,244394,{c=a[23],e=422,f=6}),
s(292167,244395,{c=a[23],e=422,f=6}),
s(292168,244396,{c=a[23],e=422,f=6}),
s(292169,244397,{c=a[23],e=422,f=6}),
s(292170,244398,{c=a[23],e=422,f=6}),
s(292171,244399,{c=a[23],e=422,f=6}),
s(292172,244400,{c=a[23],e=422,f=6}),
s(292173,244401,{c=a[23],e=422,f=6})}}),
en(244793,{cost={{"c",3309,40}},e=422,spellID=1237962,tmogSetID=4567,u=2,g={
s(291756,242990,{c=a[20],e=422,f=7}),
s(291757,242991,{b=1,c=a[20],e=422,f=7}),
s(291758,242992,{c=a[20],e=422,f=3}),
s(291759,242993,{c=a[20],e=422,f=7}),
s(291760,242994,{c=a[20],e=422,f=7}),
s(291761,242995,{c=a[20],e=422,f=7}),
s(291762,242996,{c=a[20],e=422,f=7}),
s(291763,242997,{c=a[20],e=422,f=7}),
s(291764,242998,{c=a[20],e=422,f=7})}}),
en(244804,{cost={{"c",3309,40}},e=422,spellID=1237967,tmogSetID=4573,u=2,g={
s(291738,242971,{c=a[26],e=422,f=4}),
s(291739,242972,{c=a[26],e=422,f=4}),
s(291740,242973,{c=a[26],e=422,f=4}),
s(291741,242974,{c=a[26],e=422,f=4}),
s(291742,242975,{c=a[26],e=422,f=4}),
s(291743,242976,{c=a[26],e=422,f=4}),
s(291744,242977,{c=a[26],e=422,f=4}),
s(291745,242978,{c=a[26],e=422,f=4}),
s(291746,242979,{c=a[26],e=422,f=3}),
s(292214,244448,{c=a[26],e=422,f=4})}}),
en(244796,{cost={{"c",3309,40}},e=422,spellID=1237959,tmogSetID=4562,u=2,g={
s(291693,242920,{c=a[7],e=422,f=3}),
s(291694,242921,{c=a[7],e=422,f=6}),
s(291695,242922,{c=a[7],e=422,f=6}),
s(291696,242923,{c=a[7],e=422,f=6}),
s(291697,242924,{c=a[7],e=422,f=6}),
s(291698,242925,{c=a[7],e=422,f=6}),
s(291699,242926,{c=a[7],e=422,f=6}),
s(291700,242927,{c=a[7],e=422,f=6}),
s(291701,242928,{c=a[7],e=422,f=6})}}),
en(244802,{cost={{"c",3309,40}},e=422,spellID=1237969,tmogSetID=4568,u=2,g={
s(291729,242962,{c=a[16],e=422,f=3}),
s(291730,242963,{c=a[16],e=422,f=5}),
s(291731,242964,{c=a[16],e=422,f=5}),
s(291732,242965,{c=a[16],e=422,f=5}),
s(291733,242966,{c=a[16],e=422,f=5}),
s(291734,242967,{c=a[16],e=422,f=5}),
s(291735,242968,{c=a[16],e=422,f=5}),
s(291736,242969,{c=a[16],e=422,f=5}),
s(291737,242970,{c=a[16],e=422,f=5})}}),
en(244795,{cost={{"c",3309,40}},e=422,spellID=1237960,tmogSetID=4571,u=2,g={
s(291684,242910,{c=a[5],e=422,f=3}),
s(291685,242911,{c=a[5],e=422,f=5}),
s(291686,242912,{c=a[5],e=422,f=5}),
s(291687,242913,{c=a[5],e=422,f=5}),
s(291688,242914,{c=a[5],e=422,f=5}),
s(291689,242915,{c=a[5],e=422,f=5}),
s(291690,242916,{c=a[5],e=422,f=5}),
s(291691,242917,{c=a[5],e=422,f=5}),
s(291692,242918,{c=a[5],e=422,f=5}),
s(292210,244444,{c=a[5],e=422,f=5})}}),
en(244797,{cost={{"c",3309,40}},e=422,spellID=1237958,tmogSetID=4563,u=2,g={
s(291702,242929,{c=a[13],e=422,f=3}),
s(291703,242930,{c=a[13],e=422,f=6}),
s(291704,242931,{c=a[13],e=422,f=6}),
s(291705,242932,{c=a[13],e=422,f=6}),
s(291706,242933,{c=a[13],e=422,f=6}),
s(291707,242934,{c=a[13],e=422,f=6}),
s(291708,242935,{c=a[13],e=422,f=6}),
s(291709,242936,{c=a[13],e=422,f=6}),
s(291710,242937,{c=a[13],e=422,f=6})}}),
en(244801,{cost={{"c",3309,40}},e=422,spellID=1237970,tmogSetID=4572,u=2,g={
s(292144,244371,{c=a[18],e=422,f=4}),
s(292145,244372,{c=a[18],e=422,f=4}),
s(292146,244373,{c=a[18],e=422,f=4}),
s(292147,244374,{c=a[18],e=422,f=4}),
s(292148,244375,{c=a[18],e=422,f=4}),
s(292149,244376,{c=a[18],e=422,f=4}),
s(292150,244377,{c=a[18],e=422,f=4}),
s(292151,244378,{c=a[18],e=422,f=4}),
s(292152,244379,{c=a[18],e=422,f=3}),
s(292212,244446,{c=a[18],e=422,f=4})}})}})}})}}),
s(187751,206007,{awp=110005,f=3,rwp=110005,u=2}),
h(-532,{awp=110007,description="Granted to players who owned WoW: The War Within and Diablo IV: Vessel of Hatred before January 7th, 2025.",rwp=110007,u=2,g={
mnt(369476,{b=1,itemID=191114,u=2}),
p(3580,{b=1,itemID=206018,npcID=205637,spellID=411791,u=2}),
i(206039,{b=1,u=2,g={
s(187749,206004,{f=3,u=2}),
s(187752,206020,{f=2,u=2})}}),
s(83944,143327,{b=1,f=29,u=2}),
toy(206008,{b=1,u=2}),
toy(142542,{b=1,u=2}),
toy(143543,{b=1,u=2}),
s(187932,206275,{f=1,u=2}),
s(187933,206276,{f=24,u=2}),
s(187750,206005,{f=23,u=2})}})}),
h(-541,{awp=110002,g={
s(230544,233053,{awp=110005,description="Quest is only available with an US IP. Codes are useable worldwide.\n\nIn the bottom left of your Discord Server list, click Discover & there click on the Quests tab to start the Quest for the Reward.\n\nStream World of Warcraft in Discord to a friend for 15 minutes.\n\nOnce you're in a Direct Message, Groupchat, or Server, simply choose 'Go Live' to stream World of Warcraft for 15 minutes - you'll have a progress bar that indicates how close you are to earning your transmog.\nUpon completion of the quest, you'll be given a code to redeem - head to the Battle.net launcher, click your profile in the top right, and choose 'Redeem Code.' From there, it's a quick copy and paste until the Crown of the Violet Rose is yours!\n\nPromotion is available from December 2nd, 2024 until December 9th, 2024 (11:59PM UTC).",f=2,rwp=110005,u=2}),
p(4615,{description="In the bottom left of your Discord Server list, click Discover & there click on the Quests tab to start the Quest for the Reward.\n\nStream World of Warcraft in Discord to a friend for 15 minutes.\n\nOnce you're in a Direct Message, Groupchat, or Server, simply choose 'Go Live' to stream World of Warcraft for 15 minutes - you'll have a progress bar that indicates how close you are to earning your pet.\nUpon completion of the quest, you'll be given a code to redeem - head to the Battle.net launcher, click your profile in the top right, and choose 'Redeem Code.' From there, it's a quick copy and paste until Parrlok Parrlok is yours!\n\nPromotion is available from August 23rd, 2024 until September 8th, 2024 (11:59PM UTC).",itemID=228758,npcID=229846,spellID=463079,u=2}),
s(297814,250292,{awp=120000,description="At the top of your Direct messages tab on Discord, click the Quests tab to start the Quest for the Reward.\n\nPlay the game for 15 minutes with Discord running.\n\nUpon completion of the quest, you'll be given a code to redeem - head to the Battle.net launcher, click your profile in the top right, and choose 'Redeem Code.'\n\nPromotion is available from January 27th, 2026 until February 2nd, 2026 (11:59PM UTC).",f=3,rwp=120000,u=2})}}),
h(-542,{awp=50300,u=3,g={
ach(8345,{providers={{"s",142073}},u=3}),
mnt(142073,{b=1,itemID=98618,lvl=10,u=3})}}),
h(-543,{awp=90100,u=3,g={
mnt(356488,{itemID=258431,u=3}),
ach(15323,{u=3})}}),
h(-544,{awp=100205,maps={1,84,2112},g={
h(-12,{
ach(19866,{providers={{"i",163186}},u=2}),
ach(20033,{sym={{"partial_achievement",19724}},g={
toy(211946,{
i(212924,{f=55})})}}),
ach(19724)}),
h(-39,{
i(212154,{rwp=100206,u=2})}),
h(-45,{
q(79184,{providers={{"i",212154}},rwp=100206,u=2,g={
i(212157,{b=1,u=2})}}),
q(79178,{coords={{61.6,31.1,2112}},qgs={215409},rwp=100206,sourceQuests=a[24],u=2,g={
i(211965,{b=1,spellID=431019,u=2}),
i(212979,{f=55,u=2})}}),
q(79693,{coords={{61.6,31.1,84}},r=2,rwp=100206,sourceQuests=a[24],u=2,g={
i(211965,{b=1,spellID=431019,u=2}),
i(212979,{f=55,u=2})}}),
q(79694,{coords={{61.6,31.1,85}},r=1,rwp=100206,sourceQuests=a[24],u=2,g={
i(211965,{b=1,spellID=431019,u=2}),
i(212979,{f=55,u=2})}})}),
n(215146,{coords={{53.1,16.17,1},{33.99,20.52,84},{62.24,66.97,2112}},providers={{"n",214985}},rwp=100206,u=2,g={
i(212335,{b=1,f=113,lvl=10,u=2}),
toy(212337,{b=1,u=2}),
mnt(431992,{b=1,itemID=212522,lvl=10,u=2}),
p(4406,{b=1,itemID=212606,npcID=216179,questID=79441,spellID=432486,u=2}),
s(194927,212607,{f=2,u=2}),
s(194958,212644,{f=2,u=2}),
s(194707,212336,{f=9,u=2}),
i(211965,{b=1,spellID=431019,u=2}),
i(212924,{awp=100205,f=55,u=2,g={
cq(79392,{itemID=212925,spellID=433302,u=2,g={
crit(65343,{achID=19724,id=1})}}),
cq(79390,{itemID=212922,spellID=433299,u=2,g={
crit(66032,{achID=19724,id=2})}}),
cq(79394,{itemID=212927,spellID=433304,u=2,g={
crit(65340,{achID=19724,id=3})}}),
cq(79399,{itemID=212932,spellID=433310,u=2,g={
crit(65335,{achID=19724,id=4})}}),
cq(79393,{itemID=212926,spellID=433303,u=2,g={
crit(65341,{achID=19724,id=5})}}),
cq(79401,{itemID=212933,spellID=433311,u=2,g={
crit(65334,{achID=19724,id=6})}}),
cq(79396,{itemID=212929,spellID=433306,u=2,g={
crit(65338,{achID=19724,id=7})}}),
cq(79397,{itemID=212930,spellID=433307,u=2,g={
crit(65337,{achID=19724,id=8})}}),
cq(79460,{itemID=213019,spellID=433543,u=2,g={
crit(65329,{achID=19724,id=9})}}),
cq(79406,{itemID=212938,spellID=433316,u=2,g={
crit(65330,{achID=19724,id=10})}}),
cq(79389,{itemID=212921,spellID=433298,u=2,g={
crit(65345,{achID=19724,id=11})}}),
cq(79398,{itemID=212931,spellID=433309,u=2,g={
crit(65336,{achID=19724,id=12})}}),
cq(79391,{itemID=212923,spellID=433300,u=2,g={
crit(65344,{achID=19724,id=13})}}),
cq(79582,{itemID=213224,spellID=434088,u=2,g={
crit(65370,{achID=19724,id=14})}}),
cq(79395,{itemID=212928,spellID=433305,u=2,g={
crit(65339,{achID=19724,id=15})}}),
cq(79403,{itemID=212939,spellID=433317,u=2,g={
crit(65332,{achID=19724,id=16})}}),
cq(79402,{itemID=212937,spellID=433315,u=2,g={
crit(65333,{achID=19724,id=17})}}),
cq(79400,{itemID=212934,spellID=433312,u=2,g={
crit(65328,{achID=19724,id=18})}}),
cq(79405,{itemID=212936,spellID=433314,u=2,g={
crit(65342,{achID=19724,id=19})}}),
cq(79384,{itemID=212871,spellID=433197,u=2,g={
crit(65347,{achID=19724,id=20})}}),
cq(79385,{itemID=212872,spellID=433202,u=2,g={
crit(65346,{achID=19724,id=21})}})}})}}),
mnt(278966,{b=1,description="Granted to Players who logged in to Hearthstone between March 11th 2024 and May 14th 2024.",itemID=163186,lvl=10,u=2}),
h(-58,{
n(215385,{coords={{60.6,59.3,2112}},rwp=100206,u=2,g={
i(211965,{b=1,spellID=431019,u=2})}})})}}),
h(-545,{awp=60002,g={
ach(10657,{awp=70003,description="Cross-Game Reward: Lady Liadrin Paladin Hero in Hearthstone."}),
h(-47,{
ach(9926,{awp=60102,sharedDescription="Obtained by playing Heroes of the Storm and reaching level 20.",u=3}),
p(1639,{awp=60102,b=1,itemID=118518,npcID=91226,sharedDescription="Obtained by playing Heroes of the Storm and reaching level 20.",spellID=181086,u=3}),
ach(11425,{awp=70200,sharedDescription="Obtained by winning 15 games of Heroes of the Storm.\n\nSadly, this is no longer available.",u=2}),
mnt(232405,{awp=70200,b=1,itemID=143631,lvl=10,sharedDescription="Obtained by winning 15 games of Heroes of the Storm.\n\nSadly, this is no longer available.",u=2})})}}),
h(-546,{awp=11201,u=2,g={
p(757,{b=1,itemID=19055,npcID=14755,spellID=23531,u=2}),
p(124,{b=1,itemID=22781,npcID=16456,spellID=28505,u=2}),
p(758,{b=1,itemID=19054,npcID=14756,spellID=23530,u=2}),
p(1073,{itemID=22780,npcID=16445,spellID=28487,u=2})}}),
h(-547,{
s(7628,19160,{awp=11101,b=1,description="This tabard was given to the people on each servers with the most honorable kills before the introduction of the original honor system.",f=9,u=2}),
p(244,{awp=30300,b=1,description="Granted to players that attach an authenticator to their account.",itemID=49646,npcID=36871,spellID=69452,u=3}),
p(240,{awp=40003,b=1,description="Reward from a Korean-exclusive World Event that mailed you this pet.",itemID=48527,npcID=35468,spellID=67527,u=2,g={
ach(3896,{u=2})}}),
p(155,{awp=20100,description="Reward from the 2007 Korean Worldwide Invitational (Korea Only)",itemID=32498,npcID=23198,spellID=40405,u=2}),
i(103632,{awp=50400,b=1,description="Reward from the Azeroth Academy Mentor Recruitment Promotion (China Only)",u=2,g={
mnt(30174,{itemID=103630,u=2}),
i(103629,{f=113,u=2}),
i(103631,{b=1,f=55,spellID=65745,u=2})}}),
ach(3618,{awp=30102,providers={{"i",45180},{"i",46892},{"i",100870}},u=2}),
p(217,{awp=30102,b=1,description="This was obtained by participating in at least 200 arena matches in the 2009 Arena Tournament, or at least 50 matches on the same team in the years after that.",itemID=45180,npcID=33578,spellID=63318,u=2}),
p(217,{awp=40200,b=1,description="This was a reward for the 2011 arena tournament, requirements were to participate in 50 games in your current 3v3 team when the tournament closed",itemID=46892,npcID=33578,spellID=63318,u=2}),
p(217,{awp=50200,b=1,description="This was a reward for the 2013 arena tournament, requirements were to participate in 50 games in your current 3v3 team when the tournament closed",itemID=100870,npcID=33578,spellID=63318,u=2}),
p(1168,{awp=20100,description="Reward from a Korean Promotional Event (Korea Only)",itemID=20651,npcID=15361,spellID=25018,u=2}),
p(121,{awp=20003,description="Offered as a fan website gift around Christmas 2006, in Europe. (EU Only)",itemID=22114,npcID=16069,spellID=27241,u=2}),
ach(12454,{awp=70305,providers={{"n",11327}},u=2}),
p(1127,{awp=50004,b=1,description="Reward from the Battle.net World Championship in Shanghai 2012 (China Only)",itemID=90953,npcID=68502,pb=1,spellID=132759,u=2,g={
crit(23599,{achID=8397,awp=50400,id=22,pb=1,u=2})}}),
mnt(107203,{awp=40300,b=1,itemID=76755,lvl=10,rwp=40302,u=2}),
ach(414,{awp=30002,providers={{"i",39656}},u=2}),
p(189,{awp=20402,description="Reward from the 2008 Worldwide Invitational in Paris.",itemID=39656,npcID=29089,spellID=53082,u=2}),
p(192,{awp=30202,b=1,description="This was awarded to players when they linked their original WoW account to a Battle.Net Tag. No longer available as all accounts now require Battle.Net Tag initially, unless you have access to an unattached account.",itemID=41133,npcID=29726,spellID=55068,u=2}),
ach(9496,{awp=60002,u=2,g={
crit(25887,{achID=9496,providers={a[1]},u=2}),
crit(27433,{achID=9496,id=2,providers={a[1]},u=2})}}),
mnt(171845,{awp=60002,b=1,description="Azeroth Choppers promotional mount. You had to have logged in on a Horde character between the 24th of July and the 30th of September 2014 in order for your account to receive this mount.",itemID=116788,lvl=17,u=2})}),
h(-548,{
ach(1436,{awp=30002,providers={{"i",37719}},u=2}),
mnt(49322,{awp=20403,b=1,itemID=37719,lvl=17,u=2}),
ach(4832,{awp=40001,providers={{"i",54860}},u=2}),
mnt(75973,{awp=30303,b=1,itemID=54860,lvl=10,u=2}),
ach(8213,{awp=50004,providers={{"i",83086}},u=2}),
mnt(121820,{awp=50004,b=1,itemID=83086,lvl=10,u=2}),
ach(8794,{awp=50402,providers={{"i",106246}},u=2}),
mnt(149801,{awp=50402,b=1,itemID=106246,lvl=10,u=2}),
ach(9925,{awp=60002,providers={{"i",118515}},u=2}),
mnt(171847,{awp=60002,b=1,itemID=118515,lvl=17,u=2}),
ach(3636,{awp=40003,description="Chinese & Taiwan Only",u=2}),
p(231,{awp=40003,description="Originally only available to the Chinese & Taiwan only, they have been added to the Recruit-A-Friend Program in 5.4.1.",itemID=46894,npcID=34930,spellID=66520,u=2}),
p(247,{awp=40003,b=1,description="Originally only available to the Chinese & Taiwan only, they have been added to the Recruit-A-Friend Program in 5.4.1.",itemID=49664,npcID=36910,spellID=69539,u=2}),
p(170,{awp=20300,b=1,description="Originally only available to the Chinese & Taiwan only, they have been added to the Recruit-A-Friend Program in 5.4.1.",itemID=34518,npcID=25146,spellID=45174,u=2}),
p(171,{awp=20300,b=1,description="Originally only available to the Chinese & Taiwan only, they have been added to the Recruit-A-Friend Program in 5.4.1.",itemID=34519,npcID=25147,spellID=45175,u=2}),
en(173300,{awp=80205,b=1,description="Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",rwp=100007,spellID=311272,tmogSetID=1902,u=2,g={
s(105944,171324,{f=2}),
s(105945,171325,{f=2}),
s(105946,171326,{f=2}),
s(105947,171327,{f=2}),
s(105948,171328,{f=2}),
s(105949,171329,{f=2}),
s(105950,171330,{f=2}),
s(105951,171331,{f=2}),
s(105952,171332,{f=3}),
s(105953,171333,{b=1,f=3}),
s(105959,171361,{b=1,f=9})}}),
ill(6158,{awp=80205,description="Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",itemID=171363,questID=57569,rwp=100007,u=2}),
mnt(307256,{awp=80205,description="Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",itemID=173299,rwp=100007,u=2}),
mnt(307263,{awp=80205,description="Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",itemID=173297,lvl=10,rwp=100007,u=2}),
i(173298,{awp=80205,b=1,description="Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",f=55,rwp=100007,spellID=311270,u=2,g={
title(410,{u=2})}}),
s(105953,171333,{awp=80205,b=1,description="Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",f=3,rwp=100007,u=2}),
s(105959,171361,{awp=80205,b=1,description="Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",f=9,rwp=100007,u=2}),
p(2776,{awp=80205,description="Available to any player who has unlocked the Recruit a Friend rewards before the refresh during patch 10.0.7",itemID=173296,npcID=157524,rwp=100007,spellID=307264,u=2}),
i(173301,{awp=80205,u=3}),
p(3475,{awp=100007,b=1,itemID=204183,npcID=202548,spellID=403243,u=3}),
ach(17426,{awp=100007,u=3}),
s(185420,204081,{awp=100007,b=1,f=34,u=3}),
s(185421,204082,{awp=100007,b=1,f=3,u=3}),
s(185424,204086,{awp=100007,b=1,f=2,u=3}),
mnt(400733,{awp=100007,itemID=204091,lvl=10,u=3})}),
h(-549,{awp=40300,rwp=50300,u=2,g={
cl(6,{u=2,g={
s(37452,72994,{b=1,c=a[20],f=25,lvl=30,u=2}),
s(37448,72990,{b=1,c=a[20],f=24,lvl=30,u=2}),
s(37449,72991,{b=1,c=a[20],f=24,lvl=30,u=2}),
s(37397,72932,{b=1,c=a[20],f=7,lvl=30,u=2}),
s(37389,72921,{b=1,c=a[20],f=7,lvl=30,u=2}),
s(37391,72923,{b=1,c=a[20],f=7,lvl=30,u=2}),
s(37399,72934,{b=1,c=a[20],f=7,lvl=30,u=2}),
i(73156,{b=1,c=a[20],f=51,lvl=30,u=2}),
i(73151,{b=1,c=a[20],f=51,lvl=30,u=2}),
s(37548,73315,{b=1,c=a[20],f=3,lvl=30,u=2}),
s(37549,73316,{b=1,c=a[20],f=3,lvl=30,u=2}),
s(37386,72918,{b=1,c=a[20],f=7,lvl=30,u=2}),
s(37394,72929,{b=1,c=a[20],f=7,lvl=30,u=2}),
s(37401,72936,{b=1,c=a[20],f=7,lvl=30,u=2}),
s(37393,72925,{b=1,c=a[20],f=7,lvl=30,u=2}),
s(37388,72920,{b=1,c=a[20],f=7,lvl=30,u=2}),
s(37396,72931,{b=1,c=a[20],f=7,lvl=30,u=2}),
s(37392,72924,{b=1,c=a[20],f=7,lvl=30,u=2}),
s(37400,72935,{b=1,c=a[20],f=7,lvl=30,u=2}),
s(37398,72933,{b=1,c=a[20],f=7,lvl=30,u=2}),
s(37390,72922,{b=1,c=a[20],f=7,lvl=30,u=2}),
s(37395,72930,{b=1,c=a[20],f=7,lvl=30,u=2}),
s(37387,72919,{b=1,c=a[20],f=7,lvl=30,u=2}),
i(73152,{b=1,c=a[20],f=52,lvl=30,u=2}),
i(73159,{b=1,c=a[20],f=52,lvl=30,u=2}),
i(73153,{b=1,c=a[20],f=52,lvl=30,u=2}),
i(73158,{b=1,c=a[20],f=52,lvl=30,u=2}),
i(73157,{b=1,c=a[20],f=53,lvl=30,spellID=102778,u=2}),
i(73160,{b=1,c=a[20],f=53,lvl=30,spellID=102776,u=2}),
i(73155,{b=1,c=a[20],f=53,lvl=30,spellID=102775,u=2}),
i(73154,{b=1,c=a[20],f=53,lvl=30,spellID=102776,u=2})}}),
cl(11,{u=2,g={
s(37470,73012,{b=1,c=a[5],f=29,lvl=30,u=2}),
s(37469,73011,{b=1,c=a[5],f=28,lvl=30,u=2}),
s(37468,73010,{b=1,c=a[5],f=28,lvl=30,u=2}),
s(37264,72692,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37248,72675,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37256,72684,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37250,72677,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37258,72686,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37266,72694,{b=1,c=a[5],f=5,lvl=30,u=2}),
i(73016,{b=1,c=a[5],f=51,lvl=30,u=2}),
i(73017,{b=1,c=a[5],f=51,lvl=30,u=2}),
i(73130,{b=1,c=a[5],f=51,lvl=30,u=2}),
s(37541,73308,{b=1,c=a[5],f=3,lvl=30,u=2}),
s(37539,73306,{b=1,c=a[5],f=3,lvl=30,u=2}),
s(37540,73307,{b=1,c=a[5],f=3,lvl=30,u=2}),
s(37253,72681,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37261,72689,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37245,72672,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37260,72688,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37268,72696,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37252,72679,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37255,72683,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37263,72691,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37247,72674,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37267,72695,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37251,72678,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37259,72687,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37257,72685,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37265,72693,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37249,72676,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37254,72682,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37246,72673,{b=1,c=a[5],f=5,lvl=30,u=2}),
s(37262,72690,{b=1,c=a[5],f=5,lvl=30,u=2}),
i(73026,{b=1,c=a[5],f=52,lvl=30,u=2}),
i(73024,{b=1,c=a[5],f=52,lvl=30,u=2}),
i(73128,{b=1,c=a[5],f=52,lvl=30,u=2}),
i(73027,{b=1,c=a[5],f=52,lvl=30,u=2}),
i(73025,{b=1,c=a[5],f=52,lvl=30,u=2}),
i(73127,{b=1,c=a[5],f=52,lvl=30,u=2}),
i(73066,{b=1,c=a[5],f=53,lvl=30,spellID=102779,u=2}),
i(73068,{b=1,c=a[5],f=53,lvl=30,spellID=102743,u=2}),
i(73129,{b=1,c=a[5],f=53,lvl=30,spellID=102780,u=2}),
i(73065,{b=1,c=a[5],f=53,lvl=30,spellID=102745,u=2}),
i(73067,{b=1,c=a[5],f=53,lvl=30,spellID=102776,u=2}),
i(73126,{b=1,c=a[5],f=53,lvl=30,spellID=102777,u=2})}}),
cl(3,{u=2,g={
s(37458,73000,{b=1,c=a[13],f=31,lvl=30,u=2}),
s(37459,73001,{b=1,c=a[13],f=29,lvl=30,u=2}),
s(37381,72913,{b=1,c=a[13],f=6,lvl=30,u=2}),
s(37383,72915,{b=1,c=a[13],f=6,lvl=30,u=2}),
i(73146,{b=1,c=a[13],f=51,lvl=30,u=2}),
s(37547,73314,{b=1,c=a[13],f=3,lvl=30,u=2}),
s(37378,72910,{b=1,c=a[13],f=6,lvl=30,u=2}),
s(37385,72917,{b=1,c=a[13],f=6,lvl=30,u=2}),
s(37380,72912,{b=1,c=a[13],f=6,lvl=30,u=2}),
s(37384,72916,{b=1,c=a[13],f=6,lvl=30,u=2}),
s(37382,72914,{b=1,c=a[13],f=6,lvl=30,u=2}),
s(37379,72911,{b=1,c=a[13],f=6,lvl=30,u=2}),
i(73148,{b=1,c=a[13],f=52,lvl=30,u=2}),
i(73149,{b=1,c=a[13],f=52,lvl=30,u=2}),
i(73147,{b=1,c=a[13],f=53,lvl=30,spellID=102743,u=2}),
i(73150,{b=1,c=a[13],f=53,lvl=30,spellID=102776,u=2})}}),
cl(8,{u=2,g={
s(37464,73006,{b=1,c=a[25],f=28,lvl=30,u=2}),
s(37558,73325,{b=1,c=a[25],f=27,lvl=30,u=2}),
s(37199,72624,{b=1,c=a[25],f=4,lvl=30,u=2}),
s(37201,72626,{b=1,c=a[25],f=4,lvl=30,u=2}),
i(73105,{b=1,c=a[25],f=51,lvl=30,u=2}),
s(37556,73323,{b=1,c=a[25],f=3,lvl=30,u=2}),
s(37196,72621,{b=1,c=a[25],f=4,lvl=30,u=2}),
s(37203,72628,{b=1,c=a[25],f=4,lvl=30,u=2}),
s(37198,72623,{b=1,c=a[25],f=4,lvl=30,u=2}),
s(37202,72627,{b=1,c=a[25],f=4,lvl=30,u=2}),
s(37200,72625,{b=1,c=a[25],f=4,lvl=30,u=2}),
s(37197,72622,{b=1,c=a[25],f=4,lvl=30,u=2}),
i(73103,{b=1,c=a[25],f=52,lvl=30,u=2}),
i(73102,{b=1,c=a[25],f=52,lvl=30,u=2}),
i(73104,{b=1,c=a[25],f=53,lvl=30,spellID=102779,u=2}),
i(73101,{b=1,c=a[25],f=53,lvl=30,spellID=102745,u=2})}}),
cl(10,{awp=50004,g={
s(45912,88648,{b=1,c=a[4],f=28,lvl=30}),
s(45901,88622,{b=1,c=a[4],f=28,lvl=30}),
s(45913,88649,{b=1,c=a[4],f=25,lvl=30}),
s(45905,88626,{b=1,c=a[4],f=5,lvl=30}),
s(45896,88617,{b=1,c=a[4],f=5,lvl=30}),
s(45907,88628,{b=1,c=a[4],f=5,lvl=30}),
s(45898,88619,{b=1,c=a[4],f=5,lvl=30}),
i(88635,{b=1,c=a[4],f=51,lvl=30}),
i(88643,{b=1,c=a[4],f=51,lvl=30}),
i(88667,{b=1,c=a[4],f=51,lvl=30}),
s(45911,88633,{b=1,c=a[4],f=3,lvl=30}),
s(45910,88632,{b=1,c=a[4],f=3,lvl=30}),
s(45893,88614,{b=1,c=a[4],f=5,lvl=30}),
s(45902,88623,{b=1,c=a[4],f=5,lvl=30}),
s(45900,88621,{b=1,c=a[4],f=5,lvl=30}),
s(45909,88630,{b=1,c=a[4],f=5,lvl=30}),
s(45895,88616,{b=1,c=a[4],f=5,lvl=30}),
s(45904,88625,{b=1,c=a[4],f=5,lvl=30}),
s(45908,88629,{b=1,c=a[4],f=5,lvl=30}),
s(45899,88620,{b=1,c=a[4],f=5,lvl=30}),
s(45897,88618,{b=1,c=a[4],f=5,lvl=30}),
s(45906,88627,{b=1,c=a[4],f=5,lvl=30}),
s(45894,88615,{b=1,c=a[4],f=5,lvl=30}),
s(45903,88624,{b=1,c=a[4],f=5,lvl=30}),
i(88640,{b=1,c=a[4],f=52,lvl=30}),
i(88637,{b=1,c=a[4],f=52,lvl=30}),
i(88646,{b=1,c=a[4],f=52,lvl=30}),
i(88641,{b=1,c=a[4],f=52,lvl=30}),
i(88638,{b=1,c=a[4],f=52,lvl=30}),
i(88645,{b=1,c=a[4],f=52,lvl=30}),
i(88636,{b=1,c=a[4],f=53,lvl=30,spellID=102778}),
i(88634,{b=1,c=a[4],f=53,lvl=30,spellID=102776}),
i(88642,{b=1,c=a[4],f=53,lvl=30,spellID=102743}),
i(88647,{b=1,c=a[4],f=53,lvl=30,spellID=102780}),
i(88639,{b=1,c=a[4],f=53,lvl=30,spellID=102776}),
i(88644,{b=1,c=a[4],f=53,lvl=30,spellID=102777})}}),
cl(2,{u=2,g={
s(37445,72983,{b=1,c=a[9],f=8,lvl=30,u=2}),
s(37451,72993,{b=1,c=a[9],f=26,lvl=30,u=2}),
s(37447,72989,{b=1,c=a[9],f=23,lvl=30,u=2}),
s(37446,72984,{b=1,c=a[9],f=8,lvl=30,u=2}),
s(37443,72981,{b=1,c=a[9],f=25,lvl=30,u=2}),
s(37429,72966,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37437,72974,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37421,72958,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37423,72960,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37431,72968,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37439,72976,{b=1,c=a[9],f=7,lvl=30,u=2}),
i(73013,{b=1,c=a[9],f=51,lvl=30,u=2}),
i(73014,{b=1,c=a[9],f=51,lvl=30,u=2}),
i(73015,{b=1,c=a[9],f=51,lvl=30,u=2}),
s(37550,73317,{b=1,c=a[9],f=3,lvl=30,u=2}),
s(37551,73318,{b=1,c=a[9],f=3,lvl=30,u=2}),
s(37552,73319,{b=1,c=a[9],f=3,lvl=30,u=2}),
s(37418,72955,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37434,72971,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37426,72963,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37433,72970,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37441,72978,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37425,72962,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37420,72957,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37436,72973,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37428,72965,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37440,72977,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37424,72961,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37432,72969,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37438,72975,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37430,72967,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37422,72959,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37435,72972,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37427,72964,{b=1,c=a[9],f=7,lvl=30,u=2}),
s(37419,72956,{b=1,c=a[9],f=7,lvl=30,u=2}),
i(73018,{b=1,c=a[9],f=52,lvl=30,u=2}),
i(73020,{b=1,c=a[9],f=52,lvl=30,u=2}),
i(73022,{b=1,c=a[9],f=52,lvl=30,u=2}),
i(73019,{b=1,c=a[9],f=52,lvl=30,u=2}),
i(73021,{b=1,c=a[9],f=52,lvl=30,u=2}),
i(73023,{b=1,c=a[9],f=52,lvl=30,u=2}),
i(73060,{b=1,c=a[9],f=53,lvl=30,spellID=102778,u=2}),
i(73042,{b=1,c=a[9],f=53,lvl=30,spellID=102776,u=2}),
i(73062,{b=1,c=a[9],f=53,lvl=30,spellID=102775,u=2}),
i(73063,{b=1,c=a[9],f=53,lvl=30,spellID=102780,u=2}),
i(73061,{b=1,c=a[9],f=53,lvl=30,spellID=102776,u=2}),
i(73064,{b=1,c=a[9],f=53,lvl=30,spellID=102777,u=2})}}),
cl(5,{u=2,g={
s(37466,73008,{b=1,c=a[18],f=28,lvl=30,u=2}),
s(37467,73009,{b=1,c=a[18],f=28,lvl=30,u=2}),
s(37569,73336,{b=1,c=a[18],f=27,lvl=30,u=2}),
s(37223,72648,{b=1,c=a[18],f=4,lvl=30,u=2}),
s(37231,72657,{b=1,c=a[18],f=4,lvl=30,u=2}),
s(37226,72651,{b=1,c=a[18],f=4,lvl=30,u=2}),
s(37234,72660,{b=1,c=a[18],f=4,lvl=30,u=2}),
i(73120,{b=1,c=a[18],f=51,lvl=30,u=2}),
i(73115,{b=1,c=a[18],f=51,lvl=30,u=2}),
s(37555,73322,{b=1,c=a[18],f=3,lvl=30,u=2}),
s(37554,73321,{b=1,c=a[18],f=3,lvl=30,u=2}),
s(37225,72650,{b=1,c=a[18],f=4,lvl=30,u=2}),
s(37233,72659,{b=1,c=a[18],f=4,lvl=30,u=2}),
s(37228,72653,{b=1,c=a[18],f=4,lvl=30,u=2}),
s(37236,72662,{b=1,c=a[18],f=4,lvl=30,u=2}),
s(37222,72647,{b=1,c=a[18],f=4,lvl=30,u=2}),
s(37230,72656,{b=1,c=a[18],f=4,lvl=30,u=2}),
s(37235,72661,{b=1,c=a[18],f=4,lvl=30,u=2}),
s(37227,72652,{b=1,c=a[18],f=4,lvl=30,u=2}),
s(37232,72658,{b=1,c=a[18],f=4,lvl=30,u=2}),
s(37224,72649,{b=1,c=a[18],f=4,lvl=30,u=2}),
s(37221,72646,{b=1,c=a[18],f=4,lvl=30,u=2}),
s(37229,72655,{b=1,c=a[18],f=4,lvl=30,u=2}),
i(73118,{b=1,c=a[18],f=52,lvl=30,u=2}),
i(73112,{b=1,c=a[18],f=52,lvl=30,u=2}),
i(73117,{b=1,c=a[18],f=52,lvl=30,u=2}),
i(73113,{b=1,c=a[18],f=52,lvl=30,u=2}),
i(73119,{b=1,c=a[18],f=53,lvl=30,spellID=102779,u=2}),
i(73114,{b=1,c=a[18],f=53,lvl=30,spellID=102780,u=2}),
i(73116,{b=1,c=a[18],f=53,lvl=30,spellID=102745,u=2}),
i(73111,{b=1,c=a[18],f=53,lvl=30,spellID=102777,u=2})}}),
cl(4,{u=2,g={
s(37453,72995,{b=1,c=a[16],f=20,lvl=30,u=2}),
s(37454,72996,{b=1,c=a[16],f=20,lvl=30,u=2}),
s(37455,72997,{b=1,c=a[16],f=25,lvl=30,u=2}),
s(37240,72667,{b=1,c=a[16],f=5,lvl=30,u=2}),
s(37242,72669,{b=1,c=a[16],f=5,lvl=30,u=2}),
i(73125,{b=1,c=a[16],f=51,lvl=30,u=2}),
s(37553,73320,{b=1,c=a[16],f=3,lvl=30,u=2}),
s(37237,72664,{b=1,c=a[16],f=5,lvl=30,u=2}),
s(37244,72671,{b=1,c=a[16],f=5,lvl=30,u=2}),
s(37239,72666,{b=1,c=a[16],f=5,lvl=30,u=2}),
s(37243,72670,{b=1,c=a[16],f=5,lvl=30,u=2}),
s(37241,72668,{b=1,c=a[16],f=5,lvl=30,u=2}),
s(37238,72665,{b=1,c=a[16],f=5,lvl=30,u=2}),
i(73122,{b=1,c=a[16],f=52,lvl=30,u=2}),
i(73123,{b=1,c=a[16],f=52,lvl=30,u=2}),
i(73124,{b=1,c=a[16],f=53,lvl=30,spellID=102743,u=2}),
i(73121,{b=1,c=a[16],f=53,lvl=30,spellID=102776,u=2})}}),
cl(7,{u=2,g={
s(37463,73005,{b=1,c=a[23],f=8,lvl=30,u=2}),
s(37461,73003,{b=1,c=a[23],f=23,lvl=30,u=2}),
s(37456,72998,{b=1,c=a[23],f=23,lvl=30,u=2}),
s(37460,73002,{b=1,c=a[23],f=23,lvl=30,u=2}),
s(37462,73004,{b=1,c=a[23],f=8,lvl=30,u=2}),
s(37365,72892,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37373,72905,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37273,72701,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37367,72894,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37275,72703,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37375,72907,{b=1,c=a[23],f=6,lvl=30,u=2}),
i(73131,{b=1,c=a[23],f=51,lvl=30,u=2}),
i(73136,{b=1,c=a[23],f=51,lvl=30,u=2}),
i(73141,{b=1,c=a[23],f=51,lvl=30,u=2}),
s(37546,73313,{b=1,c=a[23],f=3,lvl=30,u=2}),
s(37544,73311,{b=1,c=a[23],f=3,lvl=30,u=2}),
s(37545,73312,{b=1,c=a[23],f=3,lvl=30,u=2}),
s(37270,72698,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37362,72889,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37370,72902,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37369,72896,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37277,72705,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37377,72909,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37272,72700,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37364,72891,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37372,72904,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37368,72895,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37376,72908,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37276,72704,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37374,72906,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37274,72702,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37366,72893,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37363,72890,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37271,72699,{b=1,c=a[23],f=6,lvl=30,u=2}),
s(37371,72903,{b=1,c=a[23],f=6,lvl=30,u=2}),
i(73139,{b=1,c=a[23],f=52,lvl=30,u=2}),
i(73133,{b=1,c=a[23],f=52,lvl=30,u=2}),
i(73144,{b=1,c=a[23],f=52,lvl=30,u=2}),
i(73138,{b=1,c=a[23],f=52,lvl=30,u=2}),
i(73134,{b=1,c=a[23],f=52,lvl=30,u=2}),
i(73143,{b=1,c=a[23],f=52,lvl=30,u=2}),
i(73137,{b=1,c=a[23],f=53,lvl=30,spellID=102779,u=2}),
i(73132,{b=1,c=a[23],f=53,lvl=30,spellID=102743,u=2}),
i(73142,{b=1,c=a[23],f=53,lvl=30,spellID=102780,u=2}),
i(73140,{b=1,c=a[23],f=53,lvl=30,spellID=102745,u=2}),
i(73135,{b=1,c=a[23],f=53,lvl=30,spellID=102776,u=2}),
i(73145,{b=1,c=a[23],f=53,lvl=30,spellID=102777,u=2})}}),
cl(9,{u=2,g={
s(37465,73007,{b=1,c=a[26],f=28,lvl=30,u=2}),
s(37559,73326,{b=1,c=a[26],f=27,lvl=30,u=2}),
s(37215,72640,{b=1,c=a[26],f=4,lvl=30,u=2}),
s(37218,72643,{b=1,c=a[26],f=4,lvl=30,u=2}),
i(73110,{b=1,c=a[26],f=51,lvl=30,u=2}),
s(37557,73324,{b=1,c=a[26],f=3,lvl=30,u=2}),
s(37217,72642,{b=1,c=a[26],f=4,lvl=30,u=2}),
s(37220,72645,{b=1,c=a[26],f=4,lvl=30,u=2}),
s(37214,72639,{b=1,c=a[26],f=4,lvl=30,u=2}),
s(37219,72644,{b=1,c=a[26],f=4,lvl=30,u=2}),
s(37216,72641,{b=1,c=a[26],f=4,lvl=30,u=2}),
s(37213,72638,{b=1,c=a[26],f=4,lvl=30,u=2}),
i(73108,{b=1,c=a[26],f=52,lvl=30,u=2}),
i(73107,{b=1,c=a[26],f=52,lvl=30,u=2}),
i(73109,{b=1,c=a[26],f=53,lvl=30,spellID=102779,u=2}),
i(73106,{b=1,c=a[26],f=53,lvl=30,spellID=102745,u=2})}}),
cl(1,{u=2,g={
s(37444,72982,{b=1,c=a[3],f=8,lvl=30,u=2}),
s(37450,72992,{b=1,c=a[3],f=26,lvl=30,u=2}),
s(37457,72999,{b=1,c=a[3],f=24,lvl=30,u=2}),
s(37442,72980,{b=1,c=a[3],f=25,lvl=30,u=2}),
s(37405,72940,{b=1,c=a[3],f=7,lvl=30,u=2}),
s(37413,72948,{b=1,c=a[3],f=7,lvl=30,u=2}),
s(37415,72950,{b=1,c=a[3],f=7,lvl=30,u=2}),
s(37407,72942,{b=1,c=a[3],f=7,lvl=30,u=2}),
i(73166,{b=1,c=a[3],f=51,lvl=30,u=2}),
i(73161,{b=1,c=a[3],f=51,lvl=30,u=2}),
s(37543,73310,{b=1,c=a[3],f=3,lvl=30,u=2}),
s(37542,73309,{b=1,c=a[3],f=3,lvl=30,u=2}),
s(37410,72945,{b=1,c=a[3],f=7,lvl=30,u=2}),
s(37402,72937,{b=1,c=a[3],f=7,lvl=30,u=2}),
s(37409,72944,{b=1,c=a[3],f=7,lvl=30,u=2}),
s(37417,72952,{b=1,c=a[3],f=7,lvl=30,u=2}),
s(37412,72947,{b=1,c=a[3],f=7,lvl=30,u=2}),
s(37404,72939,{b=1,c=a[3],f=7,lvl=30,u=2}),
s(37416,72951,{b=1,c=a[3],f=7,lvl=30,u=2}),
s(37408,72943,{b=1,c=a[3],f=7,lvl=30,u=2}),
s(37406,72941,{b=1,c=a[3],f=7,lvl=30,u=2}),
s(37414,72949,{b=1,c=a[3],f=7,lvl=30,u=2}),
s(37403,72938,{b=1,c=a[3],f=7,lvl=30,u=2}),
s(37411,72946,{b=1,c=a[3],f=7,lvl=30,u=2}),
i(73162,{b=1,c=a[3],f=52,lvl=30,u=2}),
i(73163,{b=1,c=a[3],f=52,lvl=30,u=2}),
i(73168,{b=1,c=a[3],f=52,lvl=30,u=2}),
i(73169,{b=1,c=a[3],f=52,lvl=30,u=2}),
i(73167,{b=1,c=a[3],f=53,lvl=30,spellID=102778,u=2}),
i(73170,{b=1,c=a[3],f=53,lvl=30,spellID=102776,u=2}),
i(73165,{b=1,c=a[3],f=53,lvl=30,spellID=102775,u=2}),
i(73164,{b=1,c=a[3],f=53,lvl=30,spellID=102776,u=2})}}),
i(77956,{b=1,description="This crate was given to players whose friends returned to the game by means of the Scroll of Resurrection.",f=100,rwp=50407,u=2,g={
mnt(107516,{b=1,itemID=76889,lvl=10,r=2,u=2}),
mnt(107517,{b=1,itemID=76902,lvl=10,r=1,u=2})}})}}),
h(-550,{awp=20403,rwp=30002,u=2,g={
ach(1637,{providers={{"i",37297}},u=2}),
p(179,{b=1,description="Win a battleground during the Spirit of Competition event to get this.",itemID=37297,npcID=27217,spellID=48406,u=2}),
ach(1636,{providers={{"i",36941}},u=2}),
s(17489,36941,{b=1,description="Participate in a battleground during the Spirit of Competition event to get this.",f=9,OnUpdate=function(t)if _.IsQuestFlaggedCompleted(12187)then	if not settings.AccountWide.Quests then	t.u=2;else	t.u=nil;end	end	end,u=2}),(function(t)if GetCVar("portal")~="CN" then	t.u=1;end	return t;end)(
p(180,{b=1,description="Only available on Chinese realms.\n\nThroughout each day of the event in China, the code is mailed to 500 random players. Only players who have achieved various in-game milestones during the event are eligible for a chance to receive the code. Some milestones include having an Arena rating of 1650+, increasing reputation for certain Outland factions from less than revered to exalted, or raising a crafting profession from 350 or less to 375.",itemID=37298,npcID=27346,spellID=48408,u=2}))}}),
h(-551,{awp=20001,u=10,g={
flt(101,{u=10,g={
i(50301,{awp=30300,b=1,f=101,u=10,g={
i(46779,{awp=30200,b=1,f=55,spellID=65745,u=10}),
i(35223,{awp=20400,b=1,f=55,spellID=46168,u=10}),
i(45047,{awp=30100,b=1,f=55,spellID=62857,u=10}),
p(156,{awp=20001,b=1,itemID=32588,npcID=23234,spellID=40549,u=10}),
p(169,{awp=20300,b=1,itemID=34493,npcID=25110,spellID=45127,u=10}),
p(183,{awp=20402,b=1,itemID=38050,npcID=27914,spellID=49964,u=10})}}),
p(156,{b=1,itemID=32588,npcID=23234,spellID=40549,u=10}),
p(169,{awp=20300,b=1,itemID=34493,npcID=25110,spellID=45127,u=10}),
p(348,{awp=40302,b=1,itemID=79744,npcID=59020,spellID=112994,u=10}),
p(333,{awp=40300,b=1,itemID=72134,npcID=54730,spellID=102317,u=10}),
p(1174,{awp=50200,b=1,itemID=93669,npcID=69208,spellID=136484,u=10}),
p(130,{b=1,itemID=23713,npcID=17255,spellID=30156,u=10}),
p(302,{awp=40100,b=1,itemID=68840,npcID=52343,spellID=96817,u=10}),
p(285,{awp=40003,b=1,itemID=67128,npcID=50468,spellID=93624,u=10}),
p(303,{awp=40100,b=1,itemID=68841,npcID=52344,pb=1,spellID=96819,u=10,g={
crit(23597,{achID=8397,awp=50400,id=14,pb=1})}}),
p(328,{awp=40300,b=1,itemID=71624,npcID=54383,spellID=101493,u=10}),
p(168,{awp=20300,b=1,itemID=34492,npcID=25109,spellID=45125,u=10}),
p(665,{awp=40300,b=1,itemID=72153,npcID=54745,spellID=102353,u=10}),
p(183,{awp=20402,b=1,itemID=38050,npcID=27914,spellID=49964,u=10,g={
i(38186,{b=1,description="To obtain this, summon your Soul-Trader pet and kill players or NPCs which are no less than 8 levels below you.",f=55,u=10}),
i(38291,{b=1,cost={{"i",38186,100}},f=55,spellID=52009,u=10}),
i(38300,{b=1,cost={{"i",38186,50}},f=55,spellID=50425,u=10}),
s(18280,38160,{cost={{"i",38186,1000}},f=2,u=10}),
s(18282,38162,{cost={{"i",38186,250}},f=2,u=10}),
s(18281,38161,{cost={{"i",38186,250}},f=2,u=10}),
s(18283,38163,{cost={{"i",38186,100}},f=2,u=10}),
s(18361,38286,{cost={{"i",38186,500}},f=2,u=10}),
s(18360,38285,{cost={{"i",38186,100}},f=2,u=10})}}),
p(242,{awp=30202,b=1,itemID=49343,npcID=36511,pb=1,spellID=68810,u=10,g={
crit(23598,{achID=8397,awp=50400,id=23,pb=1})}}),
p(241,{awp=30202,b=1,itemID=49287,npcID=36482,spellID=68767,u=10})}}),
flt(50,{u=10,g={
i(49288,{awp=30200,b=1,f=55,r=1,spellID=68769,u=10}),
i(49289,{awp=30200,b=1,f=55,r=2,spellID=68768,u=10})}}),
flt(100,{u=10,g={
mnt(96503,{awp=40100,itemID=68825,lvl=25,u=10}),
mnt(51412,{awp=20402,b=1,itemID=38576,lvl=17,rwp=30200,u=2}),
mnt(51412,{awp=30200,itemID=49282,lvl=17,u=10}),
mnt(74856,{awp=30303,itemID=54069,lvl=10,rwp=40300,u=2}),
mnt(74856,{awp=40300,b=1,itemID=74269,lvl=10,u=10}),
mnt(102514,{awp=40300,itemID=72582,lvl=10,u=10}),
mnt(113120,{awp=40302,itemID=79771,lvl=10,u=10}),
mnt(136505,{awp=50200,itemID=93671,lvl=10,u=10}),
mnt(65917,{awp=30200,b=1,itemID=46778,lvl=17,rwp=30200,u=2}),
mnt(65917,{awp=30200,itemID=49290,lvl=17,u=10}),
mnt(93623,{awp=40003,itemID=68008,lvl=25,u=10}),
mnt(42776,{awp=20103,b=1,itemID=33224,lvl=10,rwp=30200,u=2}),
mnt(42776,{awp=30200,itemID=49283,lvl=10,u=10}),
mnt(42777,{awp=20103,b=1,itemID=33225,lvl=17,rwp=30200,u=2}),
mnt(42777,{awp=30200,itemID=49284,lvl=17,u=10}),
mnt(30174,{b=1,itemID=23720,u=10}),
mnt(97581,{awp=40100,itemID=69228,lvl=10,u=10}),
mnt(101573,{awp=40300,itemID=71718,lvl=10,u=10}),
mnt(102488,{awp=40300,itemID=72575,lvl=10,u=10}),
mnt(74918,{awp=30305,itemID=54068,lvl=17,u=10}),
mnt(46197,{awp=20400,b=1,itemID=35225,lvl=10,rwp=30200,u=2}),
mnt(46197,{awp=30200,itemID=49285,lvl=10,u=10}),
mnt(46199,{awp=20400,b=1,itemID=35226,lvl=10,rwp=30200,u=2}),
mnt(46199,{awp=30200,itemID=49286,lvl=10,u=10})}}),
flt(10,{awp=30100,u=10,g={
s(21629,45037,{b=1,f=10,spellID=63604,u=10})}}),
flt(9,{u=10,g={
s(18370,38312,{awp=20403,b=1,f=9,u=10}),
s(9374,23705,{b=1,f=9,u=10}),
s(9376,23709,{b=1,f=9,u=10}),
s(18371,38313,{awp=20403,b=1,f=9,u=10}),
s(18367,38309,{awp=20403,b=1,f=9,u=10}),
s(18368,38310,{awp=20403,b=1,f=9,u=10}),
s(18372,38314,{awp=20403,b=1,f=9,u=10}),
s(18369,38311,{awp=20403,b=1,f=9,u=10})}}),
flt(102,{u=10,g={
i(23716,{awp=20203,b=1,f=53,spellID=69777,u=10}),
toy(49704,{awp=30202,b=1,u=10}),
toy(93672,{awp=50200,b=1,model=803615,modelScale=5,u=10}),
toy(79769,{awp=40302,b=1,u=10}),
toy(38301,{awp=20402,b=1,model=201182,modelScale=3,u=10}),
toy(54452,{awp=30305,b=1,u=10}),
toy(33223,{awp=20200,b=1,u=10}),
toy(45063,{awp=30100,b=1,model=253206,u=10,g={
s(21636,45061,{b=1,collectible=false,f=2,spellID=62972,u=10}),
s(21694,45176,{b=1,collectible=false,f=2,spellID=62972,u=10}),
s(21695,45177,{b=1,collectible=false,f=2,spellID=62972,u=10}),
s(21696,45178,{b=1,collectible=false,f=2,spellID=62972,u=10}),
s(21697,45179,{b=1,collectible=false,f=2,spellID=62972,u=10})}}),
toy(69227,{awp=40100,b=1,u=10}),
toy(33219,{awp=20103,b=1,u=10}),
toy(35227,{awp=20400,b=1,model=166247,u=10}),
toy(67097,{awp=40001,b=1,u=10}),
toy(32542,{awp=20100,b=1,u=10}),
toy(54212,{awp=30303,b=1,u=10}),
toy(72159,{awp=40300,b=1,u=10}),
toy(46780,{awp=30200,b=1,model=306851,modelScale=9,u=10}),
toy(34499,{awp=20300,b=1,u=10}),
i(23714,{awp=20203,b=1,f=53,spellID=69773,u=10}),
toy(49703,{awp=30202,b=1,u=10}),
toy(32566,{awp=20100,b=1,u=10}),
toy(71628,{awp=40300,u=10}),
toy(72161,{awp=40300,b=1,u=10}),
toy(38578,{awp=20501,b=1,model=200314,modelScale=2,u=10}),
toy(69215,{awp=40100,b=1,u=10})}})}}),
h(-552,{awp=70003,u=2,g={
ach(11210,{r=2,u=2}),
ach(11211,{r=1,u=2}),
i(140997,{r=2,u=2,g={
s(82063,140999,{f=25,r=2,u=2}),
s(82064,141000,{f=8,r=2,u=2})}}),
i(140998,{r=1,u=2,g={
s(82065,141001,{f=21,r=1,u=2}),
s(82066,141002,{f=28,r=1,u=2})}})}}),
h(-553,{awp=100107,g={
h(-12,{
ach(15344,{description="Play Warcraft Rumble on your phone until you defeat Hogger. Restart the App & you receive the pet.",g={
p(3236,{itemID=258481,npcID=184285,spellID=364451})}}),
ach(17344,{providers={{"i",201931},{"i",202261},{"i",202851},{"i",202856},{"i",202859},{"i",202862},{"i",202865}},g={
crit(57995,{achID=17344,id=1,questID=73101}),
crit(57976,{achID=17344,id=2,questID=73104}),
crit(57977,{achID=17344,id=3,questID=73368}),
crit(57978,{achID=17344,id=4,questID=73373}),
crit(57979,{achID=17344,id=5,questID=73376}),
crit(57980,{achID=17344,id=6,questID=73379}),
crit(57981,{achID=17344,id=7,questID=73382})}}),
ach(17360),
ach(17361),
ach(17346,{sourceQuests={73171}}),
ach(17347,{sourceQuests={73174}}),
ach(17348,{sourceQuests={73371}}),
ach(17349,{sourceQuests={73386}}),
ach(17350,{sourceQuests={73388}}),
ach(17351,{sourceQuests={73389}}),
ach(17352,{sourceQuests={73390}}),
ach(17353,{sourceQuests={73173}}),
ach(17354,{sourceQuests={73175}}),
ach(17355,{sourceQuests={73372}}),
ach(17356,{sourceQuests={73387}}),
ach(17357,{sourceQuests={73391}}),
ach(17358,{sourceQuests={73392}}),
ach(17359,{sourceQuests={73393}})}),
h(-39,{
i(202183,{rwp=100200,u=2,g={
i(204731,{b=2}),
i(205189,{b=2,r=2}),
i(205190,{b=2,r=1})}})}),
h(-45,{
q(73183,{providers={{"i",204731}},rwp=100200,u=2}),
q(75625,{providers={{"i",205189}},r=2,rwp=100200,u=2}),
q(75626,{providers={{"i",205190}},r=1,rwp=100200,u=2}),
q(75221,{coords={{48,46.4,2112}},cost={{"i",202162,1}},qgs=a[10],repeatable=1,g={
i(202163,{spellID=398642,g={
toy(201931,{b=1}),
toy(202261,{b=1}),
toy(202851,{b=1}),
toy(202856,{b=1}),
toy(202859,{b=1}),
toy(202862,{b=1}),
toy(202865,{b=1})}})}}),
q(75709,{coords={{28.6,41.6,84}},cost={{"i",202162,1}},qgs=a[10],r=2,repeatable=1,g={
i(202163,{spellID=398642,g={
toy(201931,{b=1}),
toy(202261,{b=1}),
toy(202851,{b=1}),
toy(202856,{b=1}),
toy(202859,{b=1}),
toy(202862,{b=1}),
toy(202865,{b=1})}})}}),
q(75711,{coords={{50.8,82.2,85}},cost={{"i",202162,1}},qgs=a[10],r=1,repeatable=1,g={
i(202163,{spellID=398642,g={
toy(201931,{b=1}),
toy(202261,{b=1}),
toy(202851,{b=1}),
toy(202856,{b=1}),
toy(202859,{b=1}),
toy(202862,{b=1}),
toy(202865,{b=1})}})}}),
q(72809,{cost={{"i",202162,1}},repeatable=1,g={
i(202163,{spellID=398642})}}),
q(75223,{repeatable=1,g={
i(202395,{spellID=405852,type="AsSubGenericObject"})}}),
q(73171,{cost={{"i",202395,1}},providers={a[2]},g={
crit(57983,{achID=17360,id=1})}}),
q(73389,{cost={{"i",202395,1}},providers={a[2]},g={
crit(57987,{achID=17360,id=6})}}),
q(73371,{cost={{"i",202395,1}},providers={a[2]},g={
crit(57985,{achID=17360,id=3})}}),
q(73174,{cost={{"i",202395,1}},lc={1,"achID",17347},providers={a[2]},g={
crit(57984,{achID=17360,id=2})}}),
q(73386,{cost={{"i",202395,1}},providers={a[2]},g={
crit(57986,{achID=17360,id=4})}}),
q(73388,{cost={{"i",202395,1}},providers={a[2]},g={
crit(57975,{achID=17360,id=5})}}),
q(73390,{cost={{"i",202395,1}},providers={a[2]},g={
crit(57982,{achID=17360,id=7})}}),
q(73173,{cost={{"i",202395,1}},providers={a[2]},g={
crit(57988,{achID=17361,id=1})}}),
q(73392,{cost={{"i",202395,1}},providers={a[2]},g={
crit(57993,{achID=17361,id=6})}}),
q(73372,{cost={{"i",202395,1}},providers={a[2]},g={
crit(57990,{achID=17361,id=3})}}),
q(73175,{cost={{"i",202395,1}},providers={a[2]},g={
crit(57989,{achID=17361,id=2})}}),
q(73387,{cost={{"i",202395,1}},providers={a[2]},g={
crit(57991,{achID=17361,id=4})}}),
q(73391,{cost={{"i",202395,1}},providers={a[2]},g={
crit(57992,{achID=17361,id=5})}}),
q(73393,{cost={{"i",202395,1}},providers={a[2]},g={
crit(57994,{achID=17361,id=7})}})}),
h(-56,{
o(385958,{type="AsGenericObjectContainer",g={
i(202162,{b=1,type="AsSubGenericObject"}),
o(385958,{coords={{45.7,47.2,2112}},questID=73180,type="AsSubGenericObject"}),
o(387696,{coords={{31.1,37.4,84}},questID=74844,type="AsSubGenericObject"}),
o(387697,{coords={{54.4,77.5,85}},questID=74845,type="AsSubGenericObject"}),
o(385961,{coords={a[19]},questID=73182,type="AsSubGenericObject"}),
o(386138,{coords={a[8]},questID=73928,type="AsSubGenericObject"}),
o(386139,{coords={a[22]},questID=73936,type="AsSubGenericObject"}),
o(387695,{coords={a[17]},questID=74843,type="AsSubGenericObject"})}}),
o(386140,{type="AsGenericObjectContainer",g={
i(202395,{spellID=405852,type="AsSubGenericObject"}),
o(386140,{coords={{75.3,86.1,84}},questID=73952,type="AsSubGenericObject"}),
o(386157,{coords={{38.7,45.9,84}},questID=74286,type="AsSubGenericObject"}),
o(387718,{coords={{54,75.3,85}},questID=74848,type="AsSubGenericObject"}),
o(386158,{coords={{56,12,1}},questID=74287,type="AsSubGenericObject"}),
o(387719,{coords={{46.1,46.7,2112}},questID=74849,type="AsSubGenericObject"}),
o(405585,{coords={a[19]},questID=75039,type="AsSubGenericObject"}),
o(387720,{coords={{63,78.5,2022}},questID=74850,type="AsSubGenericObject"}),
o(387721,{coords={{34.6,63.7,2022}},questID=74851,type="AsSubGenericObject"}),
o(392031,{coords={{81.8,77.9,2023}},questID=75036,type="AsSubGenericObject"}),
o(405586,{coords={a[8]},questID=75040,type="AsSubGenericObject"}),
o(405587,{coords={a[22]},questID=75041,type="AsSubGenericObject"}),
o(392032,{coords={{57.4,37.7,2024}},questID=75037,type="AsSubGenericObject"}),
o(405584,{coords={a[17]},questID=75038,type="AsSubGenericObject"}),
o(387722,{coords={{57,66.7,2025}},questID=74852,type="AsSubGenericObject"})}})})}})};
