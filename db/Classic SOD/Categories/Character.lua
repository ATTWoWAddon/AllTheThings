if not (C_Seasons and C_Seasons.GetActiveSeason() == 2) then return; end 
---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnGetDataCache", function(categories)
local ach,cl,crit,faction,flt,h,i,mnt,s=_.CreateAchievement,_.CreateCharacterClass,_.CreateAchievementCriteria,_.CreateFaction,_.CreateFilter,_.CreateCustomHeader,_.CreateItem,_.CreateMount,_.CreateItemSource;
categories.Character={
h(-12,{
ach(523),
ach(524),
ach(521),
ach(520),
ach(2358,{c={2},rwp=40003,sourceQuests={7647},g={
crit(8907,{achID=2358,id=1,questID=9737,u=1})}}),
ach(2336,{description="Insane in the Membrane is a Feat of Strength that rewards the title <The Insane>. This feat requires you to become honored with the Bloodsail Buccaneers and exalted with the Steamwheedle Cartel (Booty Bay, Everlook, Gadgetzan, Ratchet), Ravenholdt, Darkmoon Faire, and the Shen'dralar. After Cataclysm it does not require that all of these reputation levels be reached at the same time, however, prior to that you must have them all at the same time. Raising reputation with these factions is typically very difficult, time-consuming, and costly.",u=1609}),
ach(6),
ach(7),
ach(8),
ach(9),
ach(10,{rwp=90001}),
ach(11,{rwp=90001}),
ach(879,{providers={{"i",8586},{"i",12302},{"i",12303},{"i",12330},{"i",12351},{"i",12353},{"i",12354},{"i",13317},{"i",13326},{"i",13327},{"i",13328},{"i",13329},{"i",15292},{"i",15293}},rwp=10400,u=2}),
ach(522),
ach(16433,{awp=11403,OnUpdate=function(t)if t.collectible and _.Level>=60 then	local i,spellID=1,select(10,UnitBuff("player",1));while spellID do	if spellID==364001 then	t:SetAchievementCollected(t.achievementID,true);return false;end	i=i + 1;spellID=select(10,UnitBuff("player",i));end;t:SetAchievementCollected(t.achievementID,false);end	end,rwp=11500,u=2}),
flt(100,{
ach(2142),
ach(2141)})}),
h(-17),
h(-31,{sharedDescription="This is a hidden reputation. It might not count towards reputation achievements.",g={
faction(469,{collectible=false,r=2}),
faction(891,{collectible=false,r=2}),
faction(67,{collectible=false,r=1}),
faction(892,{collectible=false,r=1})}}),
h(-11,{
h(-12,{
ach(891),
ach(546)}),
cl(11,{
h(-88,{
s(158324,6124,{f=4,filterForRWP=5,q=0,rwp=90105}),
s(158323,6123,{f=4,filterForRWP=5,q=0,rwp=90105}),
s(158335,6139,{f=4,filterForRWP=5,q=0,rwp=90105})}),
h(-101,{
s(156040,35,{f=28,q=1}),
s(157420,3661,{f=28,q=1})})}),
cl(3,{
h(-88,{
s(156067,129,{f=2,filterForRWP=6,q=1,rwp=90105}),
s(156071,147,{f=4,filterForRWP=6,q=0,rwp=90105}),
s(158326,6126,{f=4,q=0,rwp=40003}),
s(158333,6137,{f=4,filterForRWP=6,q=0,rwp=90105}),
s(158327,6127,{f=4,q=1,rwp=40003}),
s(158334,6138,{f=2,filterForRWP=6,q=1,rwp=90105})}),
h(-101,{
s(156861,2508,{f=31,q=1}),
s(156857,2504,{f=32,q=1,rwp=90001})})}),
cl(8,{
h(-88,{
s(156055,55,{f=4,q=1,rwp=90105}),
s(156289,1395,{f=4,q=0,rwp=90105}),
s(156056,56,{f=4,q=0,rwp=90105}),
s(158336,6140,{f=4,q=0,rwp=90105})}),
h(-101,{
s(156040,35,{f=28,q=1}),
s(157420,3661,{f=28,q=1})})}),
cl(2,{
flt(100,{
mnt(13819,{c={2},lvl=40,races={1,3}})}),
h(-88,{
s(156046,43,{f=2,filterForRWP=7,q=1,rwp=90105}),
s(156047,44,{f=4,filterForRWP=7,q=0,rwp=90105}),
s(158318,6118,{f=4,q=0,rwp=40003})}),
h(-101,{
s(156041,36,{f=23,q=1}),
s(156774,2362,{f=8,q=0})})}),
cl(5,{
h(-88,{
s(156290,1396,{f=4,q=0,rwp=90105}),
s(156052,51,{f=4,q=1,rwp=90105}),
s(156053,52,{f=4,q=0,rwp=90105}),
s(158315,6098,{f=4,q=0,rwp=90105}),
s(158319,6119,{f=4,q=0,rwp=90105}),
s(158340,6144,{f=4,q=0,rwp=90105})}),
h(-101,{
s(156040,35,{f=28,q=1}),
s(157420,3661,{f=28,q=1})})}),
cl(4,{
h(-88,{
s(156050,48,{f=4,filterForRWP=5,q=0,rwp=90105}),
s(156049,47,{f=5,q=1,rwp=90105}),
s(156065,121,{f=5,q=1,rwp=90105}),
s(156064,120,{f=4,filterForRWP=5,q=0,rwp=90105})}),
h(-101,{
s(156616,2092,{f=20,q=1})})}),
cl(7,{
h(-88,{
s(156073,153,{f=5,q=0,rwp=40003})}),
h(-101,{
s(156041,36,{f=23,q=1}),
s(156774,2362,{f=8,q=0})})}),
cl(9,{
flt(100,{
mnt(5784,{c={9},lvl=40})}),
h(-88,{
s(156290,1396,{f=4,q=0,rwp=90105}),
s(156057,57,{f=4,q=0,rwp=90105}),
s(158329,6129,{f=4,q=0,rwp=90105}),
s(156058,59,{f=4,q=1,rwp=90105})}),
h(-101,{
s(156040,35,{f=28,q=1})})}),
cl(1,{
h(-88,{
s(156069,140,{f=2,filterForRWP=7,q=1,rwp=90105}),
s(156068,139,{f=4,filterForRWP=7,q=0,rwp=90105}),
s(156045,40,{f=2,filterForRWP=7,q=1,rwp=90105}),
s(158322,6122,{f=2,filterForRWP=7,q=1,rwp=90105}),
s(156044,39,{f=4,filterForRWP=7,q=0,rwp=90105}),
s(158321,6121,{f=4,filterForRWP=7,q=0,rwp=90105})}),
h(-101,{
s(160475,12282,{f=22,q=1,rwp=90001}),
s(156039,25,{f=25,q=1}),
s(156774,2362,{f=8,q=0})})}),
flt(10,{
s(158325,6125,{description="Former Starter Shirt for Orc, Troll, Tauren & Undead Warriors",f=10,filterForRWP=2,q=1,rwp=40003}),
s(156051,49,{description="Former Starter Shirt for Human, Night Elf, Dwarf & Gnome Rogues",f=10,filterForRWP=2,q=1,rwp=40003}),
s(156054,53,{description="Former Starter Shirt for Priests.",f=10,filterForRWP=2,q=1,rwp=40003}),
s(156074,154,{description="Former Starter Shirt for Orc & Tauren Shamans",f=10,filterForRWP=2,q=1,rwp=40003}),
s(158330,6134,{description="Former Starter Shirt for Troll Shamans",f=10,filterForRWP=2,q=1,rwp=40003}),
s(158320,6120,{description="Former Starter Shirt for Night Elf Warriors",f=10,filterForRWP=2,q=1,rwp=40003}),
s(156072,148,{description="Former Starter Shirt for Dwarf & Night Elf Hunters",f=10,filterForRWP=2,q=1,rwp=40003}),
s(158317,6117,{description="Former Starter Shirt for Dwarf Paladins",f=10,filterForRWP=2,q=1,rwp=40003}),
s(156620,2105,{description="Former Starter Shirt for Undead & Orc Rogues",f=10,filterForRWP=2,q=1,rwp=40003}),
s(156066,127,{description="Former Starter Shirt for Orc, Tauren & Troll Hunters",f=10,filterForRWP=2,q=1,rwp=40003}),
s(158332,6136,{description="Former Starter Shirt for Troll Rogues",f=10,filterForRWP=2,q=1,rwp=40003})}),
h(-101,{
s(156773,2361,{f=24,q=1,rwp=90001}),
s(156042,37,{awp=11100,f=21,q=1,rwp=30002})}),
i(6948,{b=1,q=1})})};
end);
