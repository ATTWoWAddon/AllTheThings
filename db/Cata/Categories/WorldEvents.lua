---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnBuildDataCache", function(categories)
local ach,h,i,mnt,n,p,q,qo,r,s,settings,title,toy,x=_.CreateAchievement,_.CreateCustomHeader,_.CreateItem,_.CreateMount,_.CreateNPC,_.CreateSpecies,_.CreateQuest,_.CreateQuestObjective,_.CreateRecipe,_.CreateItemSource,_.Settings,_.CreateTitle,_.CreateToy,_.CreateExpansion;
categories.WorldEvents=
h(-734,{SortPriority=75,g={
h(-103,{
x(2,{
h(-482,{lvl=55,maps={1419},rwp=20506,u=2,g={
q(10259,{coords={
[1419]={{58.25,55.05}}},lvl=55,qgs={19942},u=2,g={
ach(2079,{providers={{"i",28788}},u=2}),
s(139134,28788,{b=1,f=9,q=1,u=2})}})}})}),
x(3),
x(4,{awp=30300,g={
h(-474,{maps={1453,1454,1455,1456},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,rwp=40003,u=2,g={
h(-12,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,u=2,g={
ach(4887,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,u=2})}}),
h(-45,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,u=2,g={
q(25351,{coords={
[1454]={{52.9,72.4}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,sourceQuests={25348},u=2}),
q(25290,{coords={
[1453]={{75.9,44.2}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39508},r=2,sourceQuests={25282},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729}},u=2}),
s(179863,52729,{b=1,f=4,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2})}}),
q(25288,{coords={
[1454]={{52.9,72.4}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,sourceQuests={25254},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729}},u=2}),
s(179863,52729,{b=1,f=4,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2})}}),
q(25253,{coords={
[1453]={{75.9,44.2}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39508},r=2,u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",40124}},u=2}),
qo(2,{coords={
[1453]={{73,63}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52562}},u=2}),
qo(3,{coords={
[1453]={{76,59}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52563}},u=2}),
qo(4,{coords={
[1453]={{73,54}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52565}},u=2})}}),
q(25228,{coords={
[1454]={{52.9,72.4}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",39328}},u=2}),
qo(2,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52562}},u=2}),
qo(3,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52563}},u=2}),
qo(4,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52565}},u=2})}}),
q(25282,{coords={
[1453]={{75.9,44.2}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39508},r=2,sourceQuests={25253},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52707}},u=2})}}),
q(25254,{coords={
[1454]={{52.9,72.4}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,sourceQuests={25228},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52706}},u=2})}}),
q(25415,{coords={
[1429]={{31.3,65}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={40098},r=2,sourceQuests={25290},u=2,g={
qo(1,{coords={
[1429]={{24,74}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",53048}},u=2}),
qo(2,{coords={
[1453]={{69,83}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",53048}},u=2}),
qo(3,{coords={
[1429]={{42,66}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",53048}},u=2})}}),
q(25380,{coords={
[1411]={{48.2,16.9}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39827},r=1,sourceQuests={25288},u=2,g={
qo(1,{coords={
[1411]={{50.8,13.2}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",53048}},u=2}),
qo(2,{coords={
[1411]={{41.5,18.3}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",53048}},u=2}),
qo(3,{coords={
[1411]={{52.5,42.3}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",53048}},u=2})}}),
q(25417,{coords={
[1429]={{31.3,65}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52835}},qgs={40098},r=2,sourceQuests={25416},u=2}),
q(25347,{coords={
[1411]={{48.2,16.9}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52835}},qgs={39827},r=1,sourceQuests={25343},u=2}),
q(27307,{isBreadcrumb=1,nextQuests={27540},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={45341,45946},r=2,u=2}),
q(27308,{isBreadcrumb=1,nextQuests={27570},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={45341,45946},r=1,u=2}),
q(25416,{coords={
[1429]={{31.3,65}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={40098},r=2,sourceQuests={25415},u=2,g={
qo(1,{coords={
[1429]={{29.3,65.7}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729}},u=2})}}),
q(25343,{coords={
[1411]={{48.2,16.9}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39827},r=1,sourceQuests={25380},u=2,g={
qo(1,{coords={
[1411]={{49.6,16.4}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729}},u=2})}}),
q(25414,{coords={
[1453]={{75.9,44.2}}},maps={1429},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39508},r=2,sourceQuests={25282},u=2,g={
qo(1,{coords={
[1429]={{30.7,64.9}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39967}},u=2}),
qo(2,{coords={
[1429]={{31.1,67.5}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39968}},u=2}),
qo(3,{coords={
[1429]={{31.8,66.1}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39969}},u=2}),
qo(4,{coords={
[1429]={{30.3,64.35}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39970}},u=2})}}),
q(25293,{coords={
[1454]={{52.9,72.4}}},maps={1411},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,sourceQuests={25254},u=2,g={
qo(1,{coords={
[1411]={{48,17}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39757}},u=2}),
qo(2,{coords={
[1411]={{48,17}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39758}},u=2}),
qo(3,{coords={
[1411]={{48,16}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39760}},u=2}),
qo(4,{coords={
[1411]={{49,17}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39763}},u=2})}}),
q(27570,{coords={
[1454]={{52.2,73.2}}},isBreadcrumb=1,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39283},r=1,sourceQuests={27308},u=2}),
q(27540,{coords={
[1453]={{62.5,75.5}}},isBreadcrumb=1,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={45702},r=2,sourceQuests={27307},u=2}),
q(25418,{coords={
[1453]={{75.9,44.2}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39508},r=2,sourceQuests={25417},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",40104}},u=2})}}),
q(25348,{coords={
[1454]={{52.9,72.4}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,sourceQuests={25347},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",39852}},u=2})}}),
q(25425,{coords={
[1453]={{75.9,44.2}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39508},r=2,sourceQuests={25418},u=2}),
q(25055,{coords={
[1455]={{30.3,60.6}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={45712},r=2,sourceQuests={27473},u=2,g={
qo(1,{cost={{"i",52189,1},{"i",52272,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",39021}},u=2}),
i(52274,{b=1,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2,g={
i(52272,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2}),
i(52189,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2})}})}}),
q(25092,{coords={
[1454]={{52.2,73.2}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39283},r=1,u=2,g={
qo(1,{cost={{"i",52202,1},{"i",52345,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",39047}},u=2}),
i(52344,{b=1,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2,g={
i(52345,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2}),
i(52202,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2})}})}}),
q(25181,{coords={
[1454]={{52.2,73.2}}},description="Activated with phase 2 of the Elemental Unrest.",OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39283},r=1,u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52276},{"n",39090}},u=2})}}),
q(25180,{coords={
[1453]={{62.5,75.5}}},description="Activated with phase 2 of the Elemental Unrest.",OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={45702},r=2,u=2,g={
qo(1,{coords={
[1453]={{29.6,48.3}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52275},{"n",39101}},u=2})}}),
q(27473,{description="Activated with phase 2 of the Elemental Unrest.",isBreadcrumb=1,nextQuests={25055},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={45341,45946},r=2,u=2}),
q(27566,{description="Activated with phase 3 of the Elemental Unrest.",maps={1951},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={45341},r=2,u=2}),
q(27572,{coords={
[1454]={{52.2,73.2}}},description="Activated with phase 3 of the Elemental Unrest.",maps={1951},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39283},r=1,u=2}),
q(27749,{coords={
[1453]={{62.2,71.6}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={12481},r=2,sourceQuests={27741},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62541},{"n",46584}},u=2}),
qo(2,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",46670}},u=2})}}),
q(27802,{coords={
[1454]={{52.9,72.4}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,sourceQuests={27801},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62541},{"n",46816}},u=2}),
qo(2,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",46827}},u=2})}}),
q(27767,{coords={
[1453]={{62.2,71.6}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={12481},r=2,sourceQuests={27749},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62379},{"n",40098}},u=2})}}),
q(27800,{coords={
[1454]={{52.9,72.4}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,sourceQuests={27802},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62496},{"n",39827}},u=2})}}),
q(27780,{coords={
[1429]={{31.3,65}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={40098},r=2,sourceQuests={27767},u=2,g={
qo(1,{coords={
[1453]={{64,29.5}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62412}},u=2}),
qo(2,{coords={
[1453]={{58.3,49}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62412}},u=2}),
qo(3,{coords={
[1453]={{38,61.9}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62412}},u=2})}}),
q(27799,{coords={
[1411]={{48.2,16.9}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39827},r=1,sourceQuests={27800},u=2,g={
qo(1,{coords={
[1454]={{57.72,47.65}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62495}},u=2}),
qo(2,{coords={
[1454]={{80.78,35.32}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62495}},u=2}),
qo(3,{coords={
[1454]={{27.63,54.73}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62495}},u=2})}}),
q(27741,{coords={
[1453]={{62.2,71.6}}},description="Activated with phase 3 of the Elemental Unrest.",OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={12481},r=2,u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",37787},{"n",39686},{"n",40125},{"n",46489}},u=2}),
qo(2,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62315}},u=2})}}),
q(27801,{coords={
[1454]={{52.9,72.4}}},description="Activated with phase 3 of the Elemental Unrest.",OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",38067},{"n",39343},{"n",39632},{"n",46491}},u=2}),
qo(2,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62493}},u=2})}})}}),
n(44822,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,u=2,g={
s(179893,53496,{b=1,f=8,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
i(53499,{b=1,f=51,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
s(179894,53497,{b=1,f=3,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
s(203103,53498,{b=1,f=4,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
s(179896,53500,{b=1,f=7,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2})}}),
n(41110,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,u=2,g={
i(53502,{b=1,f=51,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
i(53503,{b=1,f=51,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
s(179898,53505,{b=1,f=7,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
s(179897,53504,{b=1,f=5,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
i(53501,{b=1,f=52,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2})}}),
n(40961,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,u=2,g={
s(179890,53491,{b=1,f=7,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
s(179892,53494,{b=1,f=7,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
s(179891,53493,{b=1,f=6,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
i(53495,{b=1,f=52,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
i(53492,{b=1,f=52,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2})}}),
n(45214,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,u=2,g={
i(53509,{b=1,f=51,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
s(179899,53506,{b=1,f=3,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
s(179901,53508,{b=1,f=5,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
s(179934,54592,{b=1,f=6,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2}),
s(179900,53507,{b=1,f=4,lvl=80,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=4,u=2})}})}}),
h(-475,{maps={1426,1455},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,r=2,rwp=40003,u=2,g={
q(25229,{coords={
[1455]={{69.2,49.2}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={7937},r=2,u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",52566},{"n",39253},{"n",39623}},r=2,u=2}),
qo(2,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39466},{"n",39624}},r=2,u=2})}}),
q(25199,{coords={
[1426]={{50.16,48.35}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={39675},r=2,sourceQuests={25229},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39368}},r=2,u=2}),
qo(12,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39368}},r=2,u=2}),
qo(3,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39368}},r=2,u=2}),
qo(4,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39368}},r=2,u=2})}}),
q(25285,{coords={
[1426]={{50.16,48.35}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={39675},r=2,sourceQuests={25199},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39715}},r=2,u=2})}}),
q(25289,{coords={
[1426]={{50.16,48.35}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={39675},r=2,sourceQuests={25285},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39716}},r=2,u=2}),
qo(2,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39716}},r=2,u=2}),
qo(3,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39716}},r=2,u=2})}}),
q(25393,{coords={
[1455]={{69.2,49.2}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={7937,39271},r=2,sourceQuests={25287},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39799},{"n",39837},{"n",39901}},r=2,u=2}),
ach(4786,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,r=2,u=2}),
s(179868,53097,{b=1,f=3,lvl=75,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,q=1,r=2,u=2})}}),
q(25283,{coords={
[1426]={{49.32,48.27}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={39678},r=2,sourceQuests={25212,25295},u=2,g={
qo(1,{coords={
[1426]={{45.89,49.38}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",52709},{"n",1268}},r=2,u=2}),
qo(2,{coords={
[1426]={{49.12,47.95}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",52709},{"n",7955}},r=2,u=2}),
qo(3,{coords={
[1426]={{47.34,53.78}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",52709},{"n",6119}},r=2,u=2})}}),
q(25295,{coords={
[1426]={{50.16,48.35}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={39675},r=2,sourceQuests={25289},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39711},{"n",39717}},r=2,u=2})}}),
q(25212,{coords={
[1426]={{50.1,47.74}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={39386},r=2,sourceQuests={25199},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",52541},{"n",39396}},r=2,u=2})}}),
q(25286,{altQuests={25500},coords={
[1426]={{49.32,48.27}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",52731}},qgs={39678},r=2,sourceQuests={25283},u=2}),
q(25500,{altQuests={25286},coords={
[1426]={{49.32,48.27}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",52731}},qgs={39678},r=2,sourceQuests={25283},u=2,g={
toy(54651,{b=1,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,q=3,r=2,u=2})}}),
q(25287,{coords={
[1426]={{50.16,48.35}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",52731}},qgs={39396,39675},r=2,sourceQuests={25500},u=2})}}),
h(-485,{maps={1411},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,r=1,rwp=40003,u=2,g={
q(25444,{coords={
[1411]={{57.5,72.5}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={40184},r=1,u=2,g={
qo(1,{coords={
[1411]={{57.6,72.5}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",53510},{"n",40176},{"n",40187},{"n",40188}},r=1,u=2})}}),
q(25480,{coords={
[1411]={{57.4,72.7}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={40391},r=1,sourceQuests={25470},u=2,g={
qo(1,{coords={
[1411]={{57,74.14}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",40352}},r=1,u=2}),
toy(54653,{b=1,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,q=3,r=1,u=2})}}),
q(25446,{coords={
[1411]={{57.5,72.5}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={40184},r=1,sourceQuests={25444},u=2,g={
qo(1,{coords={
[1411]={{57.1,75.13}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",53637},{"n",40204}},r=1,u=2})}}),
q(25470,{coords={
[1411]={{57.5,72.5}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={40184},r=1,sourceQuests={25461},u=2,g={
qo(1,{coords={
[1411]={{59,82}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",40312}},r=1,u=2})}}),
q(25495,{coords={
[1411]={{57.8,73}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={40204,40253},r=1,sourceQuests={25461},u=2}),
q(25461,{coords={
[1411]={{57.8,73}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={40253},r=1,sourceQuests={25446},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",54215},{"n",40256},{"n",40257}},r=1,u=2}),
qo(2,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",40260},{"n",40264}},r=1,u=2})}}),
q(25445,{coords={
[1411]={{57.4,72.7}}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={40391},r=1,sourceQuests={25495},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39647},{"n",40182},{"n",40189}},r=1,u=2}),
ach(4790,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,r=1,u=2}),
s(179936,54617,{b=1,f=3,lvl=75,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,q=1,r=1,u=2})}})}})}})}),
h(-476,{awp=30403,e=444,rwp=40001,u=2,g={
p(4532,{e=444,npcID=222858,petTypeID=9,spellID=446916,u=2}),
mnt(446902,{e=444,u=2})}}),
h(-481,{maps={1454,1455},rwp=20001,u=2,g={
h(-210,{r=2,u=2,g={
q(8811,{coords={
[1453]={{55.2,64.7}},
[1455]={{59.3,64.1}}},cost={{"i",21436,1}},qgs={15735,15766},r=2,repeatable=1,u=2}),
q(8830,{coords={
[1453]={{55.2,64.7}},
[1455]={{59.3,64.1}}},cost={{"i",21436,1}},qgs={15735,15766},r=2,repeatable=1,sourceQuests={8811},u=2}),
q(8812,{coords={
[1455]={{43.2,46.5},{61,77.1}}},cost={{"i",21436,1}},qgs={15734,15764},r=2,repeatable=1,u=2}),
q(8834,{coords={
[1455]={{43.2,46.5},{61,77.1}}},cost={{"i",21436,1}},qgs={15734,15764},r=2,repeatable=1,sourceQuests={8812},u=2}),
q(8813,{coords={
[1455]={{59.1,65.5}},
[1457]={{38.2,38.7}}},cost={{"i",21436,1}},qgs={15731,15762},r=2,repeatable=1,u=2}),
q(8836,{coords={
[1455]={{59.1,65.5}},
[1457]={{38.2,38.7}}},cost={{"i",21436,1}},qgs={15731,15762},r=2,repeatable=1,sourceQuests={8813},u=2}),
q(8814,{coords={
[1455]={{63.3,73.7},{69.7,46}}},cost={{"i",21436,1}},qgs={15733,15763},r=2,repeatable=1,u=2}),
q(8838,{coords={
[1455]={{63.3,73.7},{69.7,46}}},cost={{"i",21436,1}},qgs={15733,15763},r=2,repeatable=1,sourceQuests={8814},u=2}),
q(8819,{coords={
[1453]={{55.2,64.7}},
[1455]={{59.3,64.1}}},cost={{"i",21436,10}},qgs={15735,15766},r=2,repeatable=1,u=2}),
q(8831,{coords={
[1453]={{55.2,64.7}},
[1455]={{59.3,64.1}}},cost={{"i",21436,10}},qgs={15735,15766},r=2,repeatable=1,sourceQuests={8819},u=2}),
q(8820,{coords={
[1455]={{43.2,46.5},{61,77.1}}},cost={{"i",21436,10}},qgs={15734,15764},r=2,repeatable=1,u=2}),
q(8835,{coords={
[1455]={{43.2,46.5},{61,77.1}}},cost={{"i",21436,10}},qgs={15734,15764},r=2,repeatable=1,sourceQuests={8820},u=2}),
q(8821,{coords={
[1455]={{59.1,65.5}},
[1457]={{38.2,38.7}}},cost={{"i",21436,10}},qgs={15731,15762},r=2,repeatable=1,u=2}),
q(8837,{coords={
[1455]={{59.1,65.5}},
[1457]={{38.2,38.7}}},cost={{"i",21436,10}},qgs={15731,15762},r=2,repeatable=1,sourceQuests={8821},u=2}),
q(8822,{coords={
[1455]={{63.3,73.7},{69.7,46}}},cost={{"i",21436,10}},qgs={15733,15763},r=2,repeatable=1,u=2}),
q(8839,{coords={
[1455]={{63.3,73.7},{69.7,46}}},cost={{"i",21436,10}},qgs={15733,15763},r=2,repeatable=1,sourceQuests={8822},u=2}),
q(8846,{coords={
[1455]={{61.3,74.2}}},cost={{"i",21436,5}},lvl=10,qgs={15701},r=2,repeatable=1,u=2,g={
i(21509,{b=1,q=1,u=2})}}),
q(8847,{coords={
[1455]={{61.3,74.2}}},cost={{"i",21436,10}},lvl=20,qgs={15701},r=2,repeatable=1,u=2,g={
i(21510,{b=1,q=1,u=2})}}),
q(8848,{coords={
[1455]={{61.3,74.2}}},cost={{"i",21436,15}},lvl=30,qgs={15701},r=2,repeatable=1,u=2,g={
i(21511,{b=1,q=1,u=2})}}),
q(8849,{coords={
[1455]={{61.3,74.2}}},cost={{"i",21436,20}},lvl=40,qgs={15701},r=2,repeatable=1,u=2,g={
i(21512,{b=1,q=1,u=2})}}),
q(8850,{coords={
[1455]={{61.3,74.2}}},cost={{"i",21436,30}},lvl=50,qgs={15701},r=2,repeatable=1,u=2,g={
i(21513,{b=1,q=1,u=2})}}),
q(8509,{coords={
[1455]={{71.3,71.4}}},cost={{"i",8836,20}},qgs={15445},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8510,{coords={
[1455]={{71.3,71.4}}},cost={{"i",8836,20}},qgs={15445},r=2,repeatable=1,sourceQuests={8509},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8492,{coords={
[1455]={{64.1,65.5}}},cost={{"i",2840,20}},qgs={15383},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8493,{coords={
[1455]={{64.1,65.5}}},cost={{"i",2840,20}},qgs={15383},r=2,repeatable=1,sourceQuests={8492},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8494,{coords={
[1455]={{65.5,63.9}}},cost={{"i",3575,20}},qgs={15431},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8495,{coords={
[1455]={{65.5,63.9}}},cost={{"i",3575,20}},qgs={15431},r=2,repeatable=1,sourceQuests={8494},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8511,{coords={
[1455]={{58,75.9}}},cost={{"i",2318,10}},qgs={15446},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8512,{coords={
[1455]={{58,75.9}}},cost={{"i",2318,10}},qgs={15446},r=2,repeatable=1,sourceQuests={8511},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8517,{coords={
[1455]={{55.4,76.2}}},cost={{"i",1251,20}},qgs={15451},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8518,{coords={
[1455]={{55.4,76.2}}},cost={{"i",1251,20}},qgs={15451},r=2,repeatable=1,sourceQuests={8517},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8513,{coords={
[1455]={{58.7,75}}},cost={{"i",2319,10}},qgs={15448},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8514,{coords={
[1455]={{58.7,75}}},cost={{"i",2319,10}},qgs={15448},r=2,repeatable=1,sourceQuests={8513},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8505,{coords={
[1455]={{71.9,70.4}}},cost={{"i",8831,20}},qgs={15437},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8506,{coords={
[1455]={{71.9,70.4}}},cost={{"i",8831,20}},qgs={15437},r=2,repeatable=1,sourceQuests={8505},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8524,{coords={
[1455]={{71.6,69.2}}},cost={{"i",5095,20}},qgs={15455},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8525,{coords={
[1455]={{71.6,69.2}}},cost={{"i",5095,20}},qgs={15455},r=2,repeatable=1,sourceQuests={8524},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8526,{coords={
[1455]={{72.1,69.6}}},cost={{"i",12210,20}},qgs={15456},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8527,{coords={
[1455]={{72.1,69.6}}},cost={{"i",12210,20}},qgs={15456},r=2,repeatable=1,sourceQuests={8526},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8522,{coords={
[1455]={{55.7,75.9}}},cost={{"i",14529,20}},qgs={15453},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8523,{coords={
[1455]={{55.7,75.9}}},cost={{"i",14529,20}},qgs={15453},r=2,repeatable=1,sourceQuests={8522},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8520,{coords={
[1455]={{57.6,75.8}}},cost={{"i",6450,20}},qgs={15452},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8521,{coords={
[1455]={{57.6,75.8}}},cost={{"i",6450,20}},qgs={15452},r=2,repeatable=1,sourceQuests={8520},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8528,{coords={
[1455]={{73,68.5}}},cost={{"i",6887,20}},qgs={15457},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8529,{coords={
[1455]={{73,68.5}}},cost={{"i",6887,20}},qgs={15457},r=2,repeatable=1,sourceQuests={8528},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8503,{coords={
[1455]={{70.3,74.3}}},cost={{"i",3820,20}},qgs={15434},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8504,{coords={
[1455]={{70.3,74.3}}},cost={{"i",3820,20}},qgs={15434},r=2,repeatable=1,sourceQuests={8503},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8515,{coords={
[1455]={{57.1,75}}},cost={{"i",4304,10}},qgs={15450},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8516,{coords={
[1455]={{57.1,75}}},cost={{"i",4304,10}},qgs={15450},r=2,repeatable=1,sourceQuests={8515},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8499,{coords={
[1455]={{63.9,68.2}}},cost={{"i",12359,20}},qgs={15432},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8500,{coords={
[1455]={{63.9,68.2}}},cost={{"i",12359,20}},qgs={15432},r=2,repeatable=1,sourceQuests={8499},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8797,{coords={
[1457]={{39.1,38.3}}},lvl=10,qgs={15709},r=2,u=2}),
q(8795,{coords={
[1455]={{27.5,73.3}}},lvl=10,qgs={15707},r=2,u=2}),
q(8796,{coords={
[1453]={{54.1,59.6}}},lvl=10,qgs={15708},r=2,u=2}),
q(10501,{lvl=10,qgs={21156},r=2,u=2})}}),
h(-211,{r=1,u=2,g={
q(8815,{coords={
[1454]={{30,72.2},{42.5,38.7}}},cost={{"i",21438,1}},qgs={15736,15765},r=1,repeatable=1,u=2}),
q(8840,{coords={
[1454]={{30,72.2},{42.5,38.7}}},cost={{"i",21438,1}},qgs={15736,15765},r=1,repeatable=1,sourceQuests={8815},u=2}),
q(8816,{coords={
[1454]={{28.8,65.7}},
[1458]={{61.9,45.3}}},cost={{"i",21438,1}},qgs={15734,15764},r=1,repeatable=1,u=2}),
q(8832,{coords={
[1454]={{28.8,65.7}},
[1458]={{61.9,45.3}}},cost={{"i",21438,1}},qgs={15734,15764},r=1,repeatable=1,sourceQuests={8816},u=2}),
q(8817,{coords={
[1454]={{33.1,71.5}},
[1456]={{42.4,57}}},cost={{"i",21438,1}},qgs={15739,15767},r=1,repeatable=1,u=2}),
q(8842,{coords={
[1454]={{33.1,71.5}},
[1456]={{42.4,57}}},cost={{"i",21438,1}},qgs={15739,15767},r=1,repeatable=1,sourceQuests={8817},u=2}),
q(8818,{coords={
[1454]={{33.4,75.4},{46.3,35.1}}},cost={{"i",21438,1}},qgs={15733,15761},r=1,repeatable=1,u=2}),
q(8844,{coords={
[1454]={{33.4,75.4},{46.3,35.1}}},cost={{"i",21438,1}},qgs={15733,15761},r=1,repeatable=1,sourceQuests={8818},u=2}),
q(8823,{coords={
[1454]={{30,72.2},{42.5,38.7}}},cost={{"i",21438,10}},qgs={15736,15765},r=1,repeatable=1,u=2}),
q(8841,{coords={
[1454]={{30,72.2},{42.5,38.7}}},cost={{"i",21438,10}},qgs={15736,15765},r=1,repeatable=1,sourceQuests={8823},u=2}),
q(8824,{coords={
[1454]={{28.8,65.7}},
[1458]={{61.9,45.3}}},cost={{"i",21438,10}},qgs={15734,15764},r=1,repeatable=1,u=2}),
q(8833,{coords={
[1454]={{28.8,65.7}},
[1458]={{61.9,45.3}}},cost={{"i",21438,10}},qgs={15734,15764},r=1,repeatable=1,sourceQuests={8824},u=2}),
q(8825,{coords={
[1454]={{33.1,71.5}},
[1456]={{42.4,57}}},cost={{"i",21438,10}},qgs={15739,15767},r=1,repeatable=1,u=2}),
q(8843,{coords={
[1454]={{33.1,71.5}},
[1456]={{42.4,57}}},cost={{"i",21438,10}},qgs={15739,15767},r=1,repeatable=1,sourceQuests={8825},u=2}),
q(8826,{coords={
[1454]={{33.4,75.4},{46.3,35.1}}},cost={{"i",21438,10}},qgs={15733,15761},r=1,repeatable=1,u=2}),
q(8845,{coords={
[1454]={{33.4,75.4},{46.3,35.1}}},cost={{"i",21438,10}},qgs={15733,15761},r=1,repeatable=1,sourceQuests={8826},u=2}),
q(8851,{coords={
[1454]={{30.3,67.6}}},cost={{"i",21438,5}},lvl=10,qgs={15700},r=1,repeatable=1,u=2,g={
i(21509,{b=1,q=1,u=2})}}),
q(8852,{coords={
[1454]={{30.3,67.6}}},cost={{"i",21438,10}},lvl=20,qgs={15700},r=1,repeatable=1,u=2,g={
i(21510,{b=1,q=1,u=2})}}),
q(8853,{coords={
[1454]={{30.3,67.6}}},cost={{"i",21438,15}},lvl=30,qgs={15700},r=1,repeatable=1,u=2,g={
i(21511,{b=1,q=1,u=2})}}),
q(8854,{coords={
[1454]={{30.3,67.6}}},cost={{"i",21438,20}},lvl=40,qgs={15700},r=1,repeatable=1,u=2,g={
i(21512,{b=1,q=1,u=2})}}),
q(8855,{coords={
[1454]={{30.3,67.6}}},cost={{"i",21438,30}},lvl=50,qgs={15700},r=1,repeatable=1,u=2,g={
i(21513,{b=1,q=1,u=2})}}),
q(8615,{coords={
[1454]={{28.8,67.8}}},cost={{"i",13935,20}},qgs={15535},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8616,{coords={
[1454]={{28.8,67.8}}},cost={{"i",13935,20}},qgs={15535},r=1,repeatable=1,sourceQuests={8615},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8532,{coords={
[1454]={{31.1,66.1}}},cost={{"i",2840,20}},qgs={15459},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8533,{coords={
[1454]={{31.1,66.1}}},cost={{"i",2840,20}},qgs={15459},r=1,repeatable=1,sourceQuests={8532},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8580,{coords={
[1454]={{32.8,70.4}}},cost={{"i",4625,20}},qgs={15508},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8581,{coords={
[1454]={{32.8,70.4}}},cost={{"i",4625,20}},qgs={15508},r=1,repeatable=1,sourceQuests={8580},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8588,{coords={
[1454]={{36,73.4}}},cost={{"i",4234,10}},qgs={15515},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8589,{coords={
[1454]={{36,73.4}}},cost={{"i",4234,10}},qgs={15515},r=1,repeatable=1,sourceQuests={8588},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8611,{coords={
[1454]={{29.5,68.8}}},cost={{"i",12209,20}},qgs={15533},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8612,{coords={
[1454]={{29.5,68.8}}},cost={{"i",12209,20}},qgs={15533},r=1,repeatable=1,sourceQuests={8611},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8607,{coords={
[1454]={{31.3,75.1}}},cost={{"i",8544,20}},qgs={15529},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8608,{coords={
[1454]={{31.3,75.1}}},cost={{"i",8544,20}},qgs={15529},r=1,repeatable=1,sourceQuests={8607},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8545,{coords={
[1454]={{31.5,66.8}}},cost={{"i",3860,20}},qgs={15469},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8546,{coords={
[1454]={{31.5,66.8}}},cost={{"i",3860,20}},qgs={15469},r=1,repeatable=1,sourceQuests={8545},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8549,{coords={
[1454]={{33.3,69.6}}},cost={{"i",2447,20}},qgs={15477},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8550,{coords={
[1454]={{33.3,69.6}}},cost={{"i",2447,20}},qgs={15477},r=1,repeatable=1,sourceQuests={8549},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8582,{coords={
[1454]={{32.8,68.7}}},cost={{"i",8831,20}},qgs={15512},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8583,{coords={
[1454]={{32.8,68.7}}},cost={{"i",8831,20}},qgs={15512},r=1,repeatable=1,sourceQuests={8582},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8600,{coords={
[1454]={{35.1,72.6}}},cost={{"i",8170,10}},qgs={15525},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8601,{coords={
[1454]={{35.1,72.6}}},cost={{"i",8170,10}},qgs={15525},r=1,repeatable=1,sourceQuests={8600},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8609,{coords={
[1454]={{32.2,75.3}}},cost={{"i",14529,20}},qgs={15532},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8610,{coords={
[1454]={{32.2,75.3}}},cost={{"i",14529,20}},qgs={15532},r=1,repeatable=1,sourceQuests={8609},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8613,{coords={
[1454]={{29,68.5}}},cost={{"i",6887,20}},qgs={15534},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8614,{coords={
[1454]={{29,68.5}}},cost={{"i",6887,20}},qgs={15534},r=1,repeatable=1,sourceQuests={8613},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8590,{coords={
[1454]={{34,72.7}}},cost={{"i",4304,10}},qgs={15522},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8591,{coords={
[1454]={{34,72.7}}},cost={{"i",4304,10}},qgs={15522},r=1,repeatable=1,sourceQuests={8590},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8542,{coords={
[1454]={{30.9,65.4}}},cost={{"i",3576,20}},qgs={15460},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8543,{coords={
[1454]={{30.9,65.4}}},cost={{"i",3576,20}},qgs={15460},r=1,repeatable=1,sourceQuests={8542},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8604,{coords={
[1454]={{31.2,74.1}}},cost={{"i",3530,20}},qgs={15528},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8605,{coords={
[1454]={{31.2,74.1}}},cost={{"i",3530,20}},qgs={15528},r=1,repeatable=1,sourceQuests={8604},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8792,{coords={
[1456]={{38.8,52.9}}},lvl=10,qgs={15702},r=1,u=2}),
q(8793,{coords={
[1458]={{62.8,49.2}}},lvl=10,qgs={15703},r=1,u=2}),
q(8794,{coords={
[1454]={{30.3,67.6}}},lvl=10,qgs={15704},r=1,u=2}),
q(10500,{isBreadcrumb=1,lvl=10,qgs={21155},r=1,u=2})}}),
h(-45,{u=2,g={
q(8857,{crs={15742},lvl=51,providers={{"i",21534}},u=2,g={
i(21528,{b=1,q=2,u=2})}}),
q(8858,{crs={15741},lvl=51,providers={{"i",21535}},u=2,g={
i(21528,{b=1,q=2,u=2})}}),
q(8859,{crs={15740},lvl=51,providers={{"i",21533}},u=2,g={
i(21528,{b=1,q=2,u=2})}})}}),
h(-47,{u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21438,{b=1,q=1,r=1,u=2}),
i(21509,{b=1,description="Contains a random assortment of common and uncommon quality items between levels 10-12.",q=1,u=2}),
i(21510,{b=1,description="Contains a random assortment of common, uncommon, and rare quality items between levels 20-22.",q=1,u=2}),
i(21511,{b=1,description="Contains a random assortment of common, uncommon, and rare quality items between levels 30-32.",q=1,u=2}),
i(21512,{b=1,description="Contains a random assortment of common, uncommon, and rare quality items between levels 40-42.",q=1,u=2}),
i(21513,{b=1,description="Contains a random assortment of common, uncommon, and rare quality items between levels 50-52.",q=1,u=2})}})}}),
h(-483,{lvl=60,maps={75,1446},rwp=40003,u=2,g={
h(-45,{u=2,g={
q(8519,{coords={
[1451]={{28.7,89.1}}},lvl=60,minReputation={910,0},providers={{"o",180633}},sourceQuests={8305},u=2}),
q(8303,{coords={
[1451]={{49.5,36.4}}},lvl=60,minReputation={910,0},providers={{"i",20415}},qgs={15180},sourceQuests={8301},u=2}),
q(8575,{coords={
[1447]={{57,85.6}}},lvl=60,providers={{"i",20949}},qgs={15481},sourceQuests={8555},u=2}),
q(8743,{coords={
[1451]={{25.7,90.9}}},lvl=60,providers={{"i",21175},{"o",180717}},sourceQuests={8742},u=2,g={
ach(416,{sourceQuests={8743},u=2}),
title(33,{awp=20003,u=2}),
mnt(26656,{b=1,itemID=21176,lvl=40,q=5,u=2})}}),
q(8606,{coords={
[1446]={{65.2,18.6}}},lvl=60,maps={1452},qgs={11811},sourceQuests={8598},u=2,g={
qo(1,{coords={
[1452]={{65,72}}},providers={{"i",21039},{"i",21040},{"i",21041},{"n",15554}},u=2}),
i(21042,{b=1,q=1,u=2,g={
i(21037,{b=1,q=1,u=2}),
i(21041,{b=1,q=1,u=2}),
i(21039,{b=1,q=1,u=2}),
s(131528,21040,{b=1,f=4,q=1,u=2})}})}}),
q(8597,{coords={
[1446]={{65.2,18.6}}},lvl=60,qgs={11811},sourceQuests={8576},u=2}),
q(8586,{coords={
[1446]={{52.6,28.1}}},cost={{"i",8150,20},{"i",9061,20}},lvl=60,qgs={8125},sourceQuests={8585},u=2,g={
r(25659,{itemID=21025,learnedAt=300,q=4,requireSkill=185,u=2})}}),
q(8733,{lvl=60,maps={220},qgs={15362},sourceQuests={8555},u=2}),
q(8305,{coords={
[1446]={{65,50}}},lvl=60,minReputation={910,0},qgs={15192},sourceQuests={8303},u=2}),
q(8599,{coords={
[1446]={{59.4,96}}},lvl=60,providers={{"i",21032}},qgs={15526},sourceQuests={8597},u=2}),
q(8730,{lvl=60,maps={287},qgs={13020},sourceQuests={8555},u=2,g={
qo(1,{crs={11583},providers={{"i",21138}},u=2}),
i(21142,{crs={11583},description="You get this if you don't manage to kill Nefarian in time after starting the quest from Vaelastrasz.",q=1,u=2}),
i(21529,{b=1,f=51,lvl=60,q=4,u=2}),
s(131967,21530,{b=1,f=6,lvl=60,q=4,u=2})}}),
q(8584,{coords={
[1446]={{65.2,18.6}}},lvl=60,qgs={11811},sourceQuests={8576},u=2}),
q(8288,{coords={
[1451]={{49.5,36.4}}},lvl=60,maps={287},qgs={15180},sourceQuests={8286},u=2,g={
qo(1,{crs={12017},providers={{"i",20383}},u=2})}}),
q(8598,{coords={
[1446]={{59.4,96}}},description="The dirt is on an island waaaaaay south of Tanaris. You'll need to speak to Meridith to get a buff to swim fast enough to reach the island without dying to Fatigue.",lvl=60,providers={{"i",21029},{"o",180652}},sourceQuests={8599},u=2}),
q(8587,{coords={
[1446]={{52.6,28.1}}},lvl=60,providers={{"i",21028}},qgs={8125},sourceQuests={8586},u=2}),
q(8578,{coords={
[1421]={{46.2,86.7}}},lvl=60,maps={232},minReputation={910,0},providers={{"o",180642}},sourceQuests={8577},u=2,g={
qo(1,{providers={{"i",20951}},u=2})}}),
q(8577,{coords={
[1446]={{65.2,18.6}}},lvl=60,maps={1421},qgs={11811},sourceQuests={8576},u=2}),
q(8741,{coords={
[1450]={{36.18,41.79}}},lvl=60,minReputation={910,0},providers={{"i",21139}},qgs={11832},sourceQuests={8736},u=2}),
q(8555,{coords={
[1446]={{65,50}}},lvl=60,minReputation={910,0},qgs={15192},sourceQuests={8519},u=2}),
q(8728,{coords={
[1446]={{65.2,18.6}}},cost={{"i",12361,10},{"i",12800,10},{"i",18562,10},{"i",12360,20}},lvl=60,qgs={11811},sourceQuests={8578,8587,8620},u=2}),
q(8302,{coords={
[1451]={{49.5,36.4}}},cost={{"i",20384,200}},lvl=60,maxReputation={910,0},qgs={15180},repeatable=1,sourceQuests={8301},u=2,g={
i(20403,{b=1,q=2,u=2})}}),
q(8585,{coords={
[1446]={{52.6,28.1}}},cost={{"i",21024,20}},lvl=60,maps={1444},qgs={8125},sourceQuests={8584},u=2,g={
qo(1,{coords={
[1444]={{29.8,72.6}}},crs={12803},providers={{"i",21027}},u=2})}}),
q(8742,{coords={
[1446]={{65,50}}},lvl=60,qgs={15192},sourceQuests={8729,8730,8741},u=2,g={
i(21175,{b=1,q=1,u=2})}}),
q(8736,{coords={
[1450]={{36.18,41.79}}},description="You do NOT want to kill Eranikus or allow Remulos to die.",lvl=60,minReputation={910,0},qgs={11832},sourceQuests={8735},u=2,g={
i(21531,{b=1,f=51,lvl=60,q=4,u=2}),
s(131969,21532,{b=1,f=5,lvl=60,q=4,u=2})}}),
q(8735,{coords={
[1450]={{36.18,41.79}}},lvl=60,maps={1425,1431,1440,1444},minReputation={910,0},qgs={11832},sourceQuests={8734},u=2,g={
qo(1,{coords={
[1440]={{91.6,39}}},crs={12474,12475,12476},providers={{"i",21147}},u=2}),
qo(2,{coords={
[1431]={{48,33}}},crs={15625},description="It is recommended that you bring at least 30 players and they should be experienced raiders.",providers={{"i",21149}},u=2}),
qo(3,{coords={
[1444]={{50.4,15.9}}},crs={5317,5319,5320},providers={{"i",21148}},u=2}),
qo(4,{coords={
[1425]={{61.6,27.7}}},crs={12477,12478,12479},providers={{"i",21146}},u=2})}}),
q(8620,{coords={
[1446]={{65.2,18.6}}},lvl=60,maps={232,248,287,1419,1445,1452,1453,1458},qgs={11811},sourceQuests={8606},u=2,g={
qo(1,{cost={{"i",21110,1},{"i",21109,1},{"i",21108,1},{"i",21107,1},{"i",21106,1},{"i",21105,1},{"i",21104,1},{"i",21103,1},{"i",21112,1}},providers={{"i",21111}},u=2}),
i(21103,{b=1,coords={
[1445]={{77.8,17}}},crs={15552},q=4,u=2}),
i(21104,{b=1,coords={
[1419]={{44.6,56}}},crs={8716,8717,12396},q=4,u=2}),
i(21105,{b=1,coords={
[1452]={{51.6,84.4},{54.6,87.4},{65,80.2}}},crs={7461,7463,10201},q=4,u=2}),
i(21106,{b=1,coords={
[1458]={{77,38}}},providers={{"o",180666}},q=4,u=2}),
i(21107,{b=1,coords={
[1453]={{75.35,29.73}}},providers={{"o",180665}},q=4,u=2}),
i(21108,{b=1,crs={10184},q=4,u=2}),
i(21109,{b=1,coords={
[287]={{32,42.9}}},description="Located in Blackwing Lair on one of the tables on the ramp after the first wyrmguard overseer pull.",providers={{"o",180667}},q=4,u=2}),
i(21110,{b=1,crs={11502},q=4,u=2}),
s(131955,21517,{b=1,f=4,lvl=60,q=4,u=2})}}),
q(8301,{coords={
[1451]={{49.5,36.4}}},cost={{"i",20384,200}},lvl=60,qgs={15180},sourceQuests={8288},u=2,g={
i(20402,{b=1,q=2,u=2}),
i(20403,{b=1,q=2,u=2})}}),
q(8729,{coords={
[1446]={{65.2,18.6}}},lvl=60,maps={1447},qgs={11811},sourceQuests={8728},u=2,g={
qo(1,{coords={
[1447]={{65,55}}},cost={{"i",21136,1}},crs={15571},description="This summons a 40 man raid boss.",providers={{"i",21137},{"o",180669}},u=2}),
i(21526,{b=1,f=52,lvl=60,q=4,u=2}),
s(131964,21527,{b=1,f=4,lvl=60,q=4,u=2})}}),
q(8576,{coords={
[1446]={{65.2,18.6}}},lvl=60,qgs={11811},sourceQuests={8575},u=2}),
q(8745,{coords={
[1451]={{25.9,91}}},lvl=60,providers={{"i",21175}},qgs={15693},sourceQuests={8742},u=2,g={
ach(5533,{awp=40003,u=2}),
s(131960,21523,{b=1,f=20,lvl=60,q=4,u=2}),
s(131959,21522,{b=1,f=20,lvl=60,q=4,u=2}),
s(131958,21521,{b=1,f=25,lvl=60,q=4,u=2}),
s(131957,21520,{b=1,f=25,lvl=60,q=4,u=2})}}),
q(8734,{coords={
[1438]={{37.5,47.9}}},lvl=60,minReputation={910,0},qgs={15624},sourceQuests={8733},u=2}),
q(8286,{coords={
[1451]={{49.5,36.4}}},description="This quest line is a prerequisite for the Ahn'Qiraj scepter line used to open the doors to Ahn'Qiraj.",lvl=60,qgs={15180},u=2})}}),
h(-47,{u=2,g={
i(20402,{b=1,cost={{"i",20403,1}},description="A friendly player can use their Proxy of Nozdormu to grant an undeputized player Agency to collect fragments. Oh joy. Enjoy the suffering.",q=2,u=2})}})}}),
h(-484,{maps={1419,1423,1428,1446,1447,1452,1955},rwp=30003,u=2,g={
h(-12,{u=2,g={
ach(2116,{providers={{"i",22999}},u=2})}}),
h(-45,{u=2,g={
q(12753,{awp=30002,lvl=65,qgs={20102},races={3},u=2}),
q(12772,{awp=30002,lvl=65,maps={1457},qgs={19173},races={4},u=2}),
q(12775,{awp=30002,lvl=65,maps={1453},qgs={18927},races={1},u=2}),
q(12777,{awp=30002,lvl=65,maps={1453},qgs={18927},races={11},u=2}),
q(12808,{awp=30002,lvl=65,races={7},u=2}),
q(9094,{coords={
[1423]={{81,59.8}},
[1453]={{54.7,62.2}},
[1455]={{34,66.4}},
[1457]={{64.3,44.5}}},cost={{"i",22484,30}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
s(133483,23084,{b=1,f=4,q=3,u=2}),
s(201226,23081,{b=1,f=5,q=3,u=2}),
s(133481,23082,{b=1,f=6,q=3,u=2}),
s(133477,23078,{b=1,f=7,q=3,u=2})}}),
q(9333,{coords={
[1423]={{80.8,59.6}},
[1454]={{52.5,73.7}},
[1456]={{43.7,52.6}},
[1458]={{49.9,29.4}}},cost={{"i",22484,30}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
s(133483,23084,{b=1,f=4,q=3,u=2}),
s(201226,23081,{b=1,f=5,q=3,u=2}),
s(133481,23082,{b=1,f=6,q=3,u=2}),
s(133477,23078,{b=1,f=7,q=3,u=2})}}),
q(9318,{coords={
[1423]={{81,59.8}},
[1453]={{54.7,62.2}},
[1455]={{34,66.4}},
[1457]={{64.3,44.5}}},cost={{"i",22484,8}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(23123,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(9334,{coords={
[1423]={{80.8,59.6}},
[1454]={{52.5,73.7}},
[1456]={{43.7,52.6}},
[1458]={{49.9,29.4}}},cost={{"i",22484,8}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(23123,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(12616,{awp=30002,lvl=70,maps={350},qgs={16285},u=2,g={
i(40354,{b=1,f=53,lvl=70,q=3,u=2})}}),
q(9317,{coords={
[1423]={{81,59.8}},
[1453]={{54.7,62.2}},
[1455]={{34,66.4}},
[1457]={{64.3,44.5}}},cost={{"i",22484,8}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(23122,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(9335,{coords={
[1423]={{80.8,59.6}},
[1454]={{52.5,73.7}},
[1456]={{43.7,52.6}},
[1458]={{49.9,29.4}}},cost={{"i",22484,8}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(23122,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(9292,{description="If you hear the yell across the city that they've invaded the Park, head for the canals between the Keep and the Park, that is where the elite abomination will be (heading from the Park to the Keep on the north side of the canal).\n\nWhen he dies, the crystal appears above his corpse and everyone (of the appropriate level) can click on it and get the quest regardless of who tagged him first.",isYearly=1,maps={1453},providers={{"i",22949}},qgs={16431},r=2,u=2,g={
i(23123,{b=1,f=55,lvl=50,q=2,u=2}),
i(23122,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(12773,{awp=30002,lvl=65,maps={1457},providers={{"i",39698}},qgs={29087},races={4},sourceQuests={12753},u=2}),
q(12783,{awp=30002,lvl=65,races={8},u=2}),
q(12752,{awp=30002,lvl=65,races={5},u=2}),
q(12782,{awp=30002,lvl=65,races={10},u=2}),
q(12784,{awp=30002,lvl=65,races={6},u=2}),
q(12811,{awp=30002,lvl=65,races={2},u=2}),
q(9304,{lvl=45,providers={{"i",22948},{"i",22975}},u=2}),
q(9301,{lvl=45,providers={{"i",22930},{"i",22970}},u=2}),
q(9310,{description="If you hear the yell across the city that they've invaded the Sewers, head for the canals between the Sewers and the Royal Quarter, that is where the elite abomination will be.\n\nWhen he dies, the crystal appears above his corpse and everyone (of the appropriate level) can click on it and get the quest regardless of who tagged him first.",isYearly=1,maps={1420,1458},providers={{"i",22950}},qgs={16531},r=1,u=2,g={
i(23123,{b=1,f=55,lvl=50,q=2,u=2}),
i(23122,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(9262,{coords={
[1457]={{77.7,42.7}}},isYearly=1,maps={1438},qgs={16495},r=2,u=2,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=2})}}),
q(9261,{coords={
[1426]={{53.2,35}}},isYearly=1,maps={1455},qgs={16484},r=2,u=2,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=2})}}),
q(9263,{coords={
[1454]={{51.7,83.3}}},isYearly=1,maps={1411},qgs={16493},r=1,u=2,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=2})}}),
q(9260,{coords={
[1453]={{63.8,75.5}}},isYearly=1,maps={1429},qgs={16478},r=2,u=2,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=2})}}),
q(9265,{coords={
[1458]={{66.2,21.4}}},isYearly=1,maps={1420},qgs={16494},r=1,u=2,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=2})}}),
q(9264,{coords={
[1456]={{33.1,59.9}}},isYearly=1,maps={1412},qgs={16490},r=1,u=2,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=2})}}),
q(12771,{awp=30002,lvl=65,maps={1455},providers={{"i",39698}},qgs={29087},races={3},sourceQuests={12753},u=2}),
q(12809,{awp=30002,lvl=65,maps={1455},providers={{"i",39698}},qgs={29087},races={7},sourceQuests={12808},u=2}),
q(9295,{lvl=45,providers={{"i",22932},{"i",22977}},u=2}),
q(9154,{coords={
[1426]={{53.1,35}},
[1453]={{55,62},{64.1,75}},
[1454]={{51.7,83.6},{53.1,73.6}},
[1455]={{35.3,68.7}},
[1456]={{32.9,60.1},{43.5,53.2}},
[1457]={{64.5,44.2},{77.3,42.8}},
[1458]={{49.5,32.1},{65.9,21.4}}},isYearly=1,lvl=50,providers={{"i",22595}},qgs={16241,16255},u=2}),
q(9321,{coords={
[1423]={{81,59.8}},
[1453]={{54.7,62.2}},
[1455]={{34,66.4}},
[1457]={{64.3,44.5}}},cost={{"i",22484,15}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(13446,{f=55,lvl=45,q=1,u=2})}}),
q(9336,{coords={
[1423]={{80.8,59.6}},
[1454]={{52.5,73.7}},
[1456]={{43.7,52.6}},
[1458]={{49.9,29.4}}},cost={{"i",22484,15}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(13446,{f=55,lvl=45,q=1,u=2})}}),
q(9337,{coords={
[1423]={{81,59.8}},
[1453]={{54.7,62.2}},
[1455]={{34,66.4}},
[1457]={{64.3,44.5}}},cost={{"i",22484,15}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(13444,{f=55,lvl=49,q=1,u=2})}}),
q(9320,{coords={
[1423]={{80.8,59.6}},
[1454]={{52.5,73.7}},
[1456]={{43.7,52.6}},
[1458]={{49.9,29.4}}},cost={{"i",22484,15}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(13444,{f=55,lvl=49,q=1,u=2})}}),
q(9302,{lvl=45,providers={{"i",22944},{"i",22973}},u=2}),
q(9299,{lvl=45,providers={{"i",22945},{"i",22972}},u=2}),
q(12785,{awp=30002,lvl=65,maps={1454},providers={{"i",40482}},qgs={28318},races={8},sourceQuests={12783},u=2}),
q(12812,{awp=30002,lvl=65,maps={1454},providers={{"i",40482}},qgs={28318},races={2},sourceQuests={12811},u=2}),
q(9300,{lvl=45,providers={{"i",22946},{"i",22974}},u=2}),
q(9085,{coords={
[1423]={{81.1,60.6}}},isYearly=1,lvl=50,qgs={16361},u=2,g={
qo(1,{providers={{"n",16143}},u=2}),
i(23123,{b=1,f=55,lvl=50,q=2,u=2}),
i(23122,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(12788,{awp=30002,lvl=65,maps={1954},providers={{"i",40482}},qgs={28318},races={10},sourceQuests={12782},u=2}),
q(12774,{awp=30002,lvl=65,maps={1453},providers={{"i",39698}},qgs={29087},races={1},sourceQuests={12775},u=2}),
q(9341,{coords={
[1423]={{81,59.8}},
[1453]={{54.7,62.2}},
[1455]={{34,66.4}},
[1457]={{64.3,44.5}}},cost={{"i",22484,10}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
s(133398,22999,{b=1,f=9,q=1,u=2})}}),
q(9343,{coords={
[1423]={{80.8,59.6}},
[1454]={{52.5,73.7}},
[1456]={{43.7,52.6}},
[1458]={{49.9,29.4}}},cost={{"i",22484,10}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
s(133398,22999,{b=1,f=9,q=1,u=2})}}),
q(12776,{awp=30002,lvl=65,maps={1947},providers={{"i",39698}},qgs={29087},races={11},sourceQuests={12777},u=2}),
q(9247,{coords={
[1423]={{81.1,60.5}}},description="You should receive this in the mail at level 60.",isYearly=1,lvl=60,providers={{"i",22723}},qgs={16281},u=2,g={
i(23123,{b=1,f=55,lvl=50,q=2,u=2}),
i(23122,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(12787,{awp=30002,lvl=65,maps={1458},providers={{"i",40482}},qgs={28318},races={5},sourceQuests={12752},u=2}),
q(12786,{awp=30002,lvl=65,maps={1456},providers={{"i",40482}},qgs={28318},races={6},sourceQuests={12784},u=2}),
q(9153,{coords={
[1423]={{81.1,60.6}}},cost={{"i",22484,10}},isYearly=1,lvl=50,qgs={16361},u=2,g={
i(23123,{b=1,f=55,lvl=50,q=2,u=2}),
i(23122,{b=1,f=55,lvl=50,q=2,u=2})}})}}),
n(14684,{description="Located in Stratholme.\n\nCan be found wandering in a circle around the fountain in the courtyard.",maps={317},u=2,g={
s(133523,23124,{b=1,f=28,lvl=55,q=3,u=2}),
i(23125,{b=1,f=51,lvl=55,q=3,u=2}),
s(133525,23126,{b=1,f=4,lvl=55,q=3,u=2})}}),
n(14686,{description="Located in Razorfen Downs.\n\nCan be found inside one of the prison cells, before the skeleton pile. Looks like a human female until you talk to her upon she transforms into a Banshee.",maps={300},u=2,g={
s(133576,23177,{b=1,f=27,lvl=36,q=3,u=2}),
s(133577,23178,{b=1,f=3,lvl=36,q=3,u=2})}}),
n(14695,{description="Located in Scholomance.\n\nCan be found in the room just before the plagued hatchlings.",maps={476},u=2,g={
s(133555,23156,{b=1,f=1,lvl=57,q=3,u=2}),
s(133531,23132,{b=1,f=25,lvl=57,q=3,u=2}),
s(133538,23139,{b=1,f=8,lvl=57,q=3,u=2})}}),
n(14690,{description="Located in Dire Maul West.\n\nCan be found in the corridor above and behind Tendris Warpwood, the same one Magister Kalendris is in.",maps={234},u=2,g={
s(133526,23127,{b=1,f=3,lvl=58,q=3,u=2}),
s(133528,23129,{b=1,f=4,lvl=57,q=3,u=2}),
s(133527,23128,{b=1,f=4,lvl=57,q=3,u=2})}}),
n(14693,{description="Located in Scarlet Monastery Graveyard.\n\nHe patrols the graveyard after killing the last boss.",maps={435},u=2,g={
s(133567,23168,{b=1,f=20,lvl=30,q=3,u=2}),
i(23169,{b=1,f=51,lvl=30,q=3,u=2}),
s(133569,23170,{b=1,f=6,lvl=30,q=3,u=2})}}),
n(14682,{description="Located in Shadowfang Keep.\n\nCan be found in the room up the ramp to the right of the entrance to the Butcher's room in the courtyard.",maps={310},u=2,g={
s(133570,23171,{b=1,f=22,lvl=16,q=3,u=2}),
s(133572,23173,{b=1,f=4,lvl=16,q=3,u=2})}}),
n(16143,{cost={{"i",22484,8}},description="To summon this mob, speak to the cultist and give them 8 runes. This will automatically tag that mob for your group.",u=2,g={
i(22484,{b=1,q=2,u=2}),
s(201797,43069,{awp=30002,b=1,f=7,lvl=70,q=4,u=2}),
s(174669,43080,{awp=30002,b=1,f=6,lvl=70,q=4,u=2}),
s(174661,43072,{awp=30002,b=1,f=4,lvl=70,q=4,u=2}),
s(174665,43076,{awp=30002,b=1,f=5,lvl=70,q=4,u=2}),
s(133486,23087,{b=1,f=7,lvl=58,q=3,rwp=20001,u=2}),
s(133487,23088,{b=1,f=6,lvl=58,q=3,rwp=20001,u=2}),
s(133484,23085,{b=1,f=4,lvl=58,q=3,rwp=20001,u=2}),
s(201227,23089,{b=1,f=5,lvl=58,q=3,rwp=20001,u=2})}}),
n(28194,{awp=30002,description="Located in Karazhan.\n\nCan be found in the Guardhouse, behind a Bloodstained Door above the stables where Attumen resides, which can be accessed through the stairs after Attumen, or through the ballroom where Moroes resides.",maps={350},u=2,g={
ach(2456,{providers={{"i",38658}},u=2}),
p(187,{b=1,description="Drops for everyone in the raid. Get one on all of your alts!",itemID=38658,npcID=28513,petTypeID=4,q=3,spellID=51851,u=2}),
s(172714,39769,{b=1,description="Only ONE of these drops per raid. Help your friends get one on their account by bringing your alts! Highly recommend 6-8 manning the boss for this item and hard reserving it for one person per raid group.",f=22,lvl=70,q=4,u=2})}}),
h(-58,{u=2,g={
n(16786,{coords={
[1423]={{80.9,59.6}},
[1453]={{54.7,62.2}},
[1454]={{52.5,73.7}},
[1455]={{34,66.4}},
[1456]={{43.7,52.6}},
[1457]={{64.3,44.5}},
[1458]={{49.9,29.4}}},u=2,g={
s(133398,22999,{b=1,cost={{"i",22484,8}},f=9,q=1,u=2}),
s(174663,43074,{awp=30002,b=1,cost={{"i",22484,15}},f=4,lvl=70,q=4,u=2}),
s(174662,43073,{awp=30002,b=1,cost={{"i",22484,15}},f=4,lvl=70,q=4,u=2}),
s(174666,43077,{awp=30002,b=1,cost={{"i",22484,15}},f=5,lvl=70,q=4,u=2}),
s(174667,43078,{awp=30002,b=1,cost={{"i",22484,15}},f=5,lvl=70,q=4,u=2}),
s(174670,43081,{awp=30002,b=1,cost={{"i",22484,15}},f=6,lvl=70,q=4,u=2}),
s(174671,43082,{awp=30002,b=1,cost={{"i",22484,15}},f=6,lvl=70,q=4,u=2}),
s(174657,43068,{awp=30002,b=1,cost={{"i",22484,15}},f=7,lvl=70,q=4,u=2}),
s(174659,43070,{awp=30002,b=1,cost={{"i",22484,15}},f=7,lvl=70,q=4,u=2}),
i(40601,{awp=30002,b=1,cost={{"i",22484,8}},f=53,lvl=70,q=3,u=2}),
i(40593,{awp=30002,b=1,cost={{"i",22484,30}},f=53,lvl=70,q=3,u=2}),
i(40492,{awp=30002,b=1,cost={{"i",22484,40}},f=53,lvl=70,q=3,u=2}),
i(23123,{b=1,cost={{"i",22484,8}},f=55,lvl=50,q=2,u=2}),
i(23122,{b=1,cost={{"i",22484,8}},f=55,lvl=50,q=2,u=2}),
i(43531,{awp=30002,cost={{"i",22484,20}},f=55,lvl=55,q=1,u=2}),
i(43530,{awp=30002,cost={{"i",22484,20}},f=55,lvl=55,q=1,u=2})}})}}),
h(-63,{crs={16141,16298,16299,16383},u=2,g={
i(22484,{b=1,q=2,u=2}),
i(22970,{b=1,lvl=45,q=1,u=2}),
i(22972,{b=1,lvl=45,q=1,u=2}),
i(22973,{b=1,lvl=45,q=1,u=2}),
i(22974,{b=1,lvl=45,q=1,u=2}),
i(22975,{b=1,lvl=45,q=1,u=2}),
i(22977,{b=1,lvl=45,q=1,u=2}),
toy(40110,{awp=30002,description="This is probably one of the coolest items in the game. DO NOT GET RID OF IT.",q=1,u=2})}}),
h(-46,{crs={14697,16379,16380},u=2,g={
s(174672,43083,{awp=30002,b=1,f=6,lvl=70,q=4,u=2}),
s(174668,43079,{awp=30002,b=1,f=5,lvl=70,q=4,u=2}),
s(174660,43071,{awp=30002,b=1,f=7,lvl=70,q=4,u=2}),
s(174664,43075,{awp=30002,b=1,f=4,lvl=70,q=4,u=2}),
s(133490,23091,{f=4,lvl=58,q=3,rwp=20001,u=2}),
s(201228,23093,{f=5,lvl=58,q=3,rwp=20001,u=2}),
s(133491,23092,{f=6,lvl=58,q=3,rwp=20001,u=2}),
s(133489,23090,{f=7,lvl=58,q=3,rwp=20001,u=2})}}),
h(-47,{description="The reports are mailed to you about 48 hours after you turn in the random drop letter quests and there is one unique flavor message per letter. I'm not sure if speaking to the npcs mentioned in the responses leads to more flavor text, but someone should probably look into that.",u=2,g={
i(23196,{b=1,crs={16434,16436},description="1 Stamina for every 2 levels for 1 Hour.\n\nAvailable after 150 Battles won.",f=55,q=1,u=2}),
i(23194,{b=1,crs={16384,16395},description="1 Stamina for every 6 levels for 1 Hour.\n\nAvailable after 50 Battles won.",f=55,q=1,u=2}),
i(23195,{b=1,crs={16433,16435},description="1 Stamina for every 3 levels for 1 Hour.\n\nAvailable after 100 Battles won.",f=55,q=1,u=2}),
i(23008,{b=1,q=1,u=2}),
i(23010,{b=1,q=1,u=2}),
i(23011,{b=1,q=1,u=2}),
i(23012,{b=1,q=1,u=2}),
i(23013,{b=1,q=1,u=2}),
i(23016,{b=1,q=1,u=2})}})}})}});
end);
