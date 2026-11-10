---@diagnostic disable: deprecated
local appName, _ = ...
_.AddEventHandler("OnBuildDataCache", function(categories)
local ach,h,i,prof,q,r=_.CreateAchievement,_.CreateCustomHeader,_.CreateItem,_.CreateProfession,_.CreateQuest,_.CreateRecipe;
categories.Professions=
h(-44,{SortPriority=25,g={
prof(171,{
h(-12,{requireSkill=171,g={
ach(62014,{awp=16001,requireSkill=171}),
ach(62013,{awp=16001,requireSkill=171}),
ach(62012,{awp=16001,requireSkill=171})}})}),
prof(164,{
h(-12,{requireSkill=164,g={
ach(62017,{awp=16001,requireSkill=164}),
ach(62016,{awp=16001,requireSkill=164}),
ach(62015,{awp=16001,requireSkill=164})}}),
h(-45,{requireSkill=164,g={
q(5283,{altQuests={5284,5301,5302},coords={
[1455]={{50.2,42.6}}},cost={{"i",7935,1},{"i",7936,2},{"i",7937,4}},description="Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",learnedAt=225,lvl=40,qgs={5164},r=2,requireSkill=164}),
q(5301,{altQuests={5283,5284,5302},coords={
[1454]={{79.8,23.8}}},cost={{"i",7935,1},{"i",7936,2},{"i",7937,4}},description="Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",learnedAt=225,lvl=40,qgs={11177},r=1,requireSkill=164}),
q(5284,{altQuests={5283,5301,5302},coords={
[1455]={{49.8,45}}},cost={{"i",7945,2},{"i",7941,2},{"i",3855,4},{"i",3853,4}},description="Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",learnedAt=225,lvl=40,qgs={11146},r=2,requireSkill=164}),
q(5302,{altQuests={5283,5284,5301},coords={
[1454]={{79.6,23.6}}},cost={{"i",7945,2},{"i",7941,2},{"i",3855,4},{"i",3853,4}},description="Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",learnedAt=225,lvl=40,qgs={11178},r=1,requireSkill=164})}})}),
prof(185),
prof(333,{
h(-12,{requireSkill=333,g={
ach(62020,{awp=16001,requireSkill=333}),
ach(62019,{awp=16001,requireSkill=333}),
ach(62018,{awp=16001,requireSkill=333})}})}),
prof(202,{
h(-12,{requireSkill=202,g={
ach(62023,{awp=16001,requireSkill=202}),
ach(62022,{awp=16001,requireSkill=202}),
ach(62021,{awp=16001,requireSkill=202})}}),
h(-47,{requireSkill=202,g={
i(11423,{description="If you destroy your Gnome Engineer Membership Card, you can renew your membership for 2 Gold and will receive this gift in the mail in about a day.",providers={{"i",10790}},requireSkill=202,g={
r(12607,{itemID=10603,learnedAt=220,requireSkill=202,skillID=2941}),
r(15633,{b=1,itemID=11827,learnedAt=205,requireSkill=20219,skillID=2941}),
r(12616,{itemID=10606,learnedAt=225,requireSkill=202,skillID=2941})}}),
i(11422,{description="If you destroy your Goblin Engineer Membership Card, you can renew your membership for 2 Gold and will receive this gift in the mail in about a day.",providers={{"i",10791}},requireSkill=202,g={
r(3968,{itemID=4416,learnedAt=195,requireSkill=202,skillID=2941}),
r(3972,{itemID=4417,learnedAt=200,requireSkill=202,skillID=2941}),
r(15628,{b=1,itemID=11828,learnedAt=205,requireSkill=20222,skillID=2941})}})}})}),
prof(129),
prof(356),
prof(182),
prof(165,{
h(-12,{requireSkill=165,g={
ach(62026,{awp=16001,requireSkill=165}),
ach(62025,{awp=16001,requireSkill=165}),
ach(62024,{awp=16001,requireSkill=165})}}),
h(-45,{requireSkill=165,g={
q(5141,{altQuests={5143,5144},coords={
[1447]={{37.4,65.4}}},cost={{"i",8165,10},{"i",8204,2},{"i",8203,2}},learnedAt=225,lvl=40,qgs={7866},r=2,requireSkill=165}),
q(5145,{altQuests={5146,5148},coords={
[1418]={{62.6,57.4}}},cost={{"i",8165,10},{"i",8204,2},{"i",8203,2}},learnedAt=225,lvl=40,qgs={7867},r=1,requireSkill=165}),
q(5144,{altQuests={5141,5143},coords={
[1427]={{63.6,76}}},cost={{"i",7077,2},{"i",7079,2},{"i",7075,2},{"i",7081,2}},learnedAt=225,lvl=40,qgs={7868},r=2,requireSkill=165}),
q(5146,{altQuests={5145,5148},coords={
[1417]={{28.2,45}}},cost={{"i",7077,2},{"i",7079,2},{"i",7075,2},{"i",7081,2}},learnedAt=225,lvl=40,qgs={7869},r=1,requireSkill=165}),
q(5143,{altQuests={5141,5144},coords={
[1444]={{89.4,46.5}}},cost={{"i",8211,1},{"i",8214,1}},learnedAt=225,lvl=40,qgs={7870},r=2,requireSkill=165,sourceQuests={2853}}),
q(5148,{altQuests={5145,5146},coords={
[1434]={{36.6,34.2}}},cost={{"i",8211,1},{"i",8214,1}},learnedAt=225,lvl=40,qgs={7871},r=1,requireSkill=165,sourceQuests={2860}})}})}),
prof(186),
prof(393),
prof(197,{
h(-12,{requireSkill=197,g={
ach(62030,{awp=16001,requireSkill=197}),
ach(62029,{awp=16001,requireSkill=197}),
ach(62028,{awp=16001,requireSkill=197})}})})}})
end)
