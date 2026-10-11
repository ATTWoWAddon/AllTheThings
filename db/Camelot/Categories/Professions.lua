---@diagnostic disable: deprecated
local appName, _ = ...
_.AddEventHandler("OnBuildDataCache", function(categories)
local cat,h,i,prof,q,r=_.CreateCategory,_.CreateCustomHeader,_.CreateItem,_.CreateProfession,_.CreateQuest,_.CreateRecipe;
categories.Professions=
h(-44,{SortPriority=25,g={
prof(171),
prof(164,{
prof(9788,{description="These items can only be crafted by Blacksmiths who have completed the Art of the Armorsmith quest chain.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Blacksmiths and complete the opposing specialization(s).",rwp=40001,sourceQuests={5283,5301},g={
cat(218,{requireSkill=164,g={
r(23636,{learnedAt=320,requireSkill=9788,skillID=2938,u=13}),
r(16742,{learnedAt=320,requireSkill=9788,skillID=2938,u=13}),
r(16728,{learnedAt=290,requireSkill=9788,skillID=2945}),
r(16729,{learnedAt=320,requireSkill=9788,skillID=2938}),
r(16724,{learnedAt=310,requireSkill=9788,skillID=2938})}}),
cat(219,{requireSkill=164,g={
r(16660,{awp=20003,learnedAt=285,requireSkill=9788,skillID=2938,u=1}),
r(20873,{learnedAt=320,requireSkill=9788,skillID=2938})}}),
cat(222,{requireSkill=164,g={
r(20874,{learnedAt=290,requireSkill=9788,skillID=2938})}}),
cat(221,{requireSkill=164,g={
r(23637,{learnedAt=320,requireSkill=9788,skillID=2938,u=13}),
r(16655,{learnedAt=285,requireSkill=9788,skillID=2938}),
r(16661,{learnedAt=290,requireSkill=9788,skillID=2945}),
r(16741,{learnedAt=320,requireSkill=9788,skillID=2938}),
r(9954,{learnedAt=220,requireSkill=9788,skillID=2938})}}),
cat(220,{requireSkill=164,g={
r(15296,{learnedAt=280,requireSkill=9788,skillID=2938}),
r(16667,{learnedAt=280,requireSkill=9788,skillID=2938}),
r(16745,{learnedAt=320,requireSkill=9788,skillID=2938,u=13}),
r(16746,{learnedAt=295,requireSkill=9788,skillID=2945}),
r(9974,{learnedAt=240,requireSkill=9788,skillID=2938}),
r(16650,{learnedAt=265,requireSkill=9788,skillID=2945})}}),
cat(223,{requireSkill=164,g={
r(20872,{learnedAt=290,requireSkill=9788,skillID=2938})}}),
cat(224,{requireSkill=164,g={
r(20876,{learnedAt=320,requireSkill=9788,skillID=2938}),
r(16744,{learnedAt=320,requireSkill=9788,skillID=2938,u=13}),
r(27829,{learnedAt=320,requireSkill=9788,skillID=2938,u=15})}}),
cat(225,{requireSkill=164,g={
r(24399,{learnedAt=320,requireSkill=9788,skillID=2938,u=14})}})}}),
prof(9787,{description="These items can only be crafted by Blacksmiths who have completed the Way of the Weaponsmith quest chain.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Blacksmiths and complete the opposing specialization(s).",rwp=40001,sourceQuests={5284,5302},g={
prof(17041,{description="These items can only be crafted by Master Axesmith specialized Weaponsmiths.",sourceQuests={5306},g={
r(16991,{learnedAt=295,requireSkill=17041,skillID=2938}),
r(16994,{learnedAt=320,requireSkill=17041,skillID=2938}),
r(20897,{learnedAt=320,requireSkill=17041,skillID=2938}),
r(16970,{awp=70105,learnedAt=275,requireSkill=17041,rwp=40003,skillID=2938}),
r(23653,{learnedAt=295,requireSkill=17041,skillID=2938,u=13})}}),
prof(17040,{description="These items can only be crafted by Master Hammersmith specialized Weaponsmiths.",sourceQuests={5305},g={
r(23650,{learnedAt=295,requireSkill=17040,skillID=2938,u=13}),
r(16973,{learnedAt=280,requireSkill=17040,skillID=2938}),
r(16988,{learnedAt=320,requireSkill=17040,skillID=2938}),
r(16993,{learnedAt=320,requireSkill=17040,skillID=2938}),
r(27830,{learnedAt=320,requireSkill=17040,skillID=2938,u=15}),
r(16983,{awp=30002,learnedAt=285,requireSkill=17040,rwp=20001,skillID=2938})}}),
prof(17039,{description="These items can only be crafted by Master Swordsmith specialized Weaponsmiths.",sourceQuests={5307},g={
r(16990,{learnedAt=320,requireSkill=17039,skillID=2938}),
r(23652,{learnedAt=295,requireSkill=17039,skillID=2938,u=13}),
r(16978,{awp=70105,learnedAt=280,requireSkill=17039,skillID=2938}),
r(16985,{awp=30002,learnedAt=290,requireSkill=17039,rwp=20001,skillID=2938}),
r(20890,{learnedAt=320,requireSkill=17039,skillID=2938}),
r(16992,{learnedAt=320,requireSkill=17039,skillID=2938}),
r(27832,{learnedAt=320,requireSkill=17039,skillID=2938,u=15})}}),
cat(227,{description="These can be crafted by any Weaponsmith.",requireSkill=164,g={
r(23638,{learnedAt=320,requireSkill=9787,skillID=2938,u=13}),
r(23639,{learnedAt=320,requireSkill=9787,skillID=2938,u=13}),
r(16965,{awp=70105,learnedAt=270,requireSkill=9787,skillID=2938,u=1}),
r(10011,{learnedAt=250,requireSkill=9787,skillID=2938}),
r(16986,{learnedAt=325,requireSkill=9787,skillID=2938,u=1}),
r(15292,{learnedAt=260,requireSkill=9787,skillID=2938}),
r(15294,{learnedAt=270,requireSkill=9787,skillID=2938}),
r(16987,{awp=70105,learnedAt=325,requireSkill=9787,skillID=2938,u=1}),
r(16995,{learnedAt=320,requireSkill=9787,skillID=2938}),
r(55183,{requireSkill=164,u=30}),
r(55184,{requireSkill=164,u=30}),
r(36128,{requireSkill=9787,u=17}),
r(36126,{requireSkill=9787,u=17}),
r(10007,{learnedAt=245,requireSkill=9787,skillID=2938}),
r(10003,{learnedAt=235,requireSkill=9787,skillID=2938}),
r(10015,{learnedAt=260,requireSkill=9787,skillID=2938})}})}}),
h(-45,{requireSkill=164,g={
q(5283,{altQuests={5284,5301,5302},coords={
[1455]={{50.2,42.6}}},cost={{"i",7935,1},{"i",7936,2},{"i",7937,4}},description="Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",lvl=40,qgs={5164},r=2,requireSkill=164}),
q(5301,{altQuests={5283,5284,5302},coords={
[1454]={{79.8,23.8}}},cost={{"i",7935,1},{"i",7936,2},{"i",7937,4}},description="Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",lvl=40,qgs={11177},r=1,requireSkill=164}),
q(5284,{altQuests={5283,5301,5302},coords={
[1455]={{49.8,45}}},cost={{"i",7945,2},{"i",7941,2},{"i",3855,4},{"i",3853,4}},description="Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",lvl=40,qgs={11146},r=2,requireSkill=164}),
q(5302,{altQuests={5283,5284,5301},coords={
[1454]={{79.6,23.6}}},cost={{"i",7945,2},{"i",7941,2},{"i",3855,4},{"i",3853,4}},description="Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",lvl=40,qgs={11178},r=1,requireSkill=164})}})}),
prof(185),
prof(333),
prof(202,{
h(-47,{requireSkill=202,g={
i(11423,{description="If you destroy your Gnome Engineer Membership Card, you can renew your membership for 2 Gold and will receive this gift in the mail in about a day.",providers={{"i",10790}},requireSkill=202,g={
r(12607,{itemID=10603,learnedAt=240,requireSkill=202,skillID=2941}),
r(15633,{b=1,itemID=11827,learnedAt=205,requireSkill=20219,skillID=2941}),
r(12616,{itemID=10606,learnedAt=245,requireSkill=202,skillID=2941})}}),
i(11422,{description="If you destroy your Goblin Engineer Membership Card, you can renew your membership for 2 Gold and will receive this gift in the mail in about a day.",providers={{"i",10791}},requireSkill=202,g={
r(3968,{itemID=4416,learnedAt=215,requireSkill=202,skillID=2941}),
r(3972,{itemID=4417,learnedAt=200,requireSkill=202,skillID=2941}),
r(15628,{b=1,itemID=11828,learnedAt=205,requireSkill=20222,skillID=2941})}})}})}),
prof(129),
prof(356),
prof(182),
prof(165,{
prof(10656,{description="These items can only be crafted by Leatherworkers who have completed the associated quest.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Leatherworkers and complete the opposing specialization(s).",rwp=40001,sourceQuests={5141,5145},g={
cat(252,{requireSkill=165,g={
r(19094,{learnedAt=310,requireSkill=10656,skillID=2945}),
r(19089,{awp=100107,learnedAt=290,requireSkill=10656,rwp=40003,skillID=2945})}}),
cat(253,{requireSkill=165,g={
r(19085,{learnedAt=285,requireSkill=10656,skillID=2945}),
r(19077,{learnedAt=280,requireSkill=10656,skillID=2945}),
r(10650,{learnedAt=250,requireSkill=10656,skillID=2945}),
r(24703,{learnedAt=320,requireSkill=10656,skillID=2945,u=14}),
r(19050,{learnedAt=255,requireSkill=10656,skillID=2945}),
r(19054,{learnedAt=310,requireSkill=10656,skillID=2945})}}),
cat(255,{requireSkill=165,g={
r(23708,{learnedAt=320,requireSkill=10656,skillID=2945,u=13}),
r(10619,{learnedAt=220,requireSkill=10656,skillID=2945}),
r(24655,{learnedAt=275,requireSkill=10656,skillID=2945})}}),
cat(257,{requireSkill=165,g={
r(19107,{learnedAt=310,requireSkill=10656,skillID=2945}),
r(24654,{learnedAt=310,requireSkill=10656,skillID=2945}),
r(19060,{learnedAt=265,requireSkill=10656,skillID=2945})}}),
cat(258,{requireSkill=165,g={
r(20855,{learnedAt=320,requireSkill=10656,skillID=2945})}}),
cat(259,{awp=100105,requireSkill=165,g={
r(22926,{learnedAt=320,requireSkill=10656,rwp=40003,skillID=2945,u=1101})}})}}),
prof(10658,{description="These items can only be crafted by Leatherworkers who have completed the associated quest.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Leatherworkers and complete the opposing specialization(s).",rwp=40001,sourceQuests={5144,5146},g={
cat(251,{requireSkill=165,g={
r(10632,{learnedAt=245,requireSkill=10658,skillID=2945}),
r(20854,{learnedAt=320,requireSkill=10658,skillID=2945})}}),
cat(252,{requireSkill=165,g={
r(19061,{learnedAt=265,requireSkill=10658,skillID=2945}),
r(19090,{awp=11101,learnedAt=290,requireSkill=10658,skillID=2945}),
r(19101,{learnedAt=300,requireSkill=10658,skillID=2945})}}),
cat(253,{requireSkill=165,g={
r(19095,{awp=100107,learnedAt=310,requireSkill=10658,rwp=40003,skillID=2945}),
r(19079,{awp=11101,learnedAt=280,requireSkill=10658,skillID=2945}),
r(19076,{learnedAt=280,requireSkill=10658,skillID=2945})}}),
cat(255,{requireSkill=165,g={
r(10630,{learnedAt=225,requireSkill=10658,skillID=2945}),
r(26279,{awp=11101,learnedAt=310,requireSkill=10658,skillID=2945})}}),
cat(256,{requireSkill=165,g={
r(23710,{learnedAt=320,requireSkill=10658,skillID=2945,u=13})}}),
cat(257,{requireSkill=165,g={
r(19078,{awp=100107,learnedAt=280,requireSkill=10658,rwp=40003,skillID=2945}),
r(19067,{learnedAt=270,requireSkill=10658,skillID=2945}),
r(19059,{awp=100107,learnedAt=265,requireSkill=10658,rwp=40003,skillID=2945})}}),
cat(259,{awp=100105,requireSkill=165,g={
r(22928,{learnedAt=320,requireSkill=10658,rwp=40003,skillID=2945,u=1101})}})}}),
prof(10660,{description="These items can only be crafted by Leatherworkers who have completed the associated quest.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Leatherworkers and complete the opposing specialization(s).",rwp=40001,sourceQuests={5143,5148},g={
cat(251,{requireSkill=165,g={
r(10621,{learnedAt=220,requireSkill=10660,skillID=2945})}}),
cat(252,{requireSkill=165,g={
r(19062,{learnedAt=265,requireSkill=10660,skillID=2945})}}),
cat(253,{requireSkill=165,g={
r(19081,{learnedAt=285,requireSkill=10660,skillID=2945}),
r(10647,{learnedAt=245,requireSkill=10660,skillID=2945}),
r(19104,{awp=100107,learnedAt=310,requireSkill=10660,rwp=40003,skillID=2945}),
r(19086,{awp=100107,learnedAt=285,requireSkill=10660,rwp=40003,skillID=2945}),
r(19068,{learnedAt=270,requireSkill=10660,skillID=2945})}}),
cat(255,{requireSkill=165,g={
r(19053,{learnedAt=260,requireSkill=10660,skillID=2945}),
r(19084,{learnedAt=285,requireSkill=10660,skillID=2945}),
r(19087,{awp=100107,learnedAt=290,requireSkill=10660,rwp=40003,skillID=2945})}}),
cat(256,{requireSkill=165,g={
r(23709,{learnedAt=320,requireSkill=10660,skillID=2945,u=13})}}),
cat(257,{requireSkill=165,g={
r(19073,{learnedAt=275,requireSkill=10660,skillID=2945}),
r(19097,{learnedAt=310,requireSkill=10660,skillID=2945}),
r(19074,{awp=100107,learnedAt=280,requireSkill=10660,rwp=40003,skillID=2945}),
r(19080,{learnedAt=280,requireSkill=10660,skillID=2945})}}),
cat(258,{requireSkill=165,g={
r(19063,{learnedAt=270,requireSkill=10660,skillID=2945}),
r(20853,{learnedAt=315,requireSkill=10660,skillID=2945}),
r(19066,{learnedAt=270,requireSkill=10660,skillID=2945})}}),
cat(259,{requireSkill=165,g={
r(22927,{learnedAt=320,requireSkill=10660,rwp=40003,skillID=2945,u=1101})}})}}),
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
prof(197)}})
end)
