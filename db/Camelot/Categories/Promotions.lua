---@diagnostic disable: deprecated
local appName, _ = ...
_.AddEventHandler("OnBuildDataCache", function(categories)
local en,h,mnt,p,s,toy=_.CreateEnsemble,_.CreateCustomHeader,_.CreateMount,_.CreateSpecies,_.CreateItemSource,_.CreateToy;
categories.Promotions=
h(-736,{SortPriority=90,g={
h(-521,{u=3,g={
h(-797,{description="These rewards are available to anyone who purchased a World of Warcraft: Forever Skyborne Heroic Pack, Skyborne Epic Pack or Warcraft Forever Collection.",u=3,g={
h(-522,{u=3,g={
mnt(1309208,{b=1,itemID=280544,lvl=60,u=3}),
en(271755,{b=1,questID=95979,spellID=1289417,tmogSetID=5702,u=3,g={
s(307675,271746,{b=1,f=2,loc=45}),
s(307676,271747,{b=1,f=2,loc=47}),
s(307677,271748,{b=1,f=3}),
s(307679,271750,{b=1,f=2,loc=44}),
s(307680,271751,{b=1,f=2,loc=40}),
s(307681,271752,{b=1,f=2,loc=46}),
s(307683,271754,{b=1,f=2,loc=41}),
s(307678,271749,{b=1,f=2,loc=42}),
s(307682,271753,{b=1,f=2,loc=42})}}),
toy(280740,{b=1,u=3}),
s(311559,280623,{b=1,f=3,u=3})}}),
h(-523,{u=3,g={
p(5161,{b=1,itemID=281168,npcID=272328,spellID=1310329,u=3}),
en(279182,{b=1,questID=97984,spellID=1306128,tmogSetID=5914,u=3,g={
s(310898,279174,{b=1,f=2,loc=45}),
s(310900,279176,{b=1,f=2,loc=47}),
s(310901,279177,{b=1,f=2,loc=43}),
s(310897,279173,{b=1,f=2,loc=42}),
s(310903,279179,{b=1,f=3}),
s(310902,279178,{b=1,f=2,loc=44}),
s(310904,279180,{b=1,f=2,loc=40}),
s(310899,279175,{b=1,f=2,loc=46}),
s(310905,279181,{b=1,f=2,loc=41})}}),
s(311495,280404,{b=1,f=9,u=3}),
p(5138,{b=1,itemID=280614,npcID=271867,spellID=1309420,u=3}),
p(5159,{b=1,itemID=281166,npcID=272330,spellID=1310331,u=3}),
s(311584,280729,{b=1,f=9,u=3}),
mnt(1309405,{b=1,itemID=280611,lvl=40,u=3}),
p(5160,{b=1,itemID=281167,npcID=272329,spellID=1310330,u=3})}})}})}}),
h(-818,{
toy(289439,{awp=16001,description="Awarded as a Twitch Mystery Drop during the WoW: Forever launch celebration, only between 4:00 p.m. & 5:00 p.m. Pacific Time on launch day. Viewers watching World of Warcraft streams with Drops enabled had a random chance to receive it; watching the whole hour didn't guarantee one.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.\n\nIt is no longer obtainable. A one-hour, luck-based window announced only shortly beforehand is exactly the kind of FOMO that disheartens collectors: it couldn't be earned by playing the game at all, and anyone who was at work, asleep, or simply in-game instead of on Twitch missed it permanently.",rwp=16001})})}})
end)
