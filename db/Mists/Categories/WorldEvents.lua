---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnGetDataCache", function(categories)
local ach,crit,faction,flt,h,heir,i,mnt,n,p,q,qo,r,s,settings,title,toy,x=_.CreateAchievement,_.CreateAchievementCriteria,_.CreateFaction,_.CreateFilter,_.CreateCustomHeader,_.CreateHeirloom,_.CreateItem,_.CreateMount,_.CreateNPC,_.CreateSpecies,_.CreateQuest,_.CreateQuestObjective,_.CreateRecipe,_.CreateItemSource,_.Settings,_.CreateTitle,_.CreateToy,_.CreateExpansion;
categories.WorldEvents={
h(-103,{
x(2,{
h(-482,{lvl=55,maps={17},rwp=20506,u=2,g={
q(10259,{coords={{58.25,55.05,17}},lvl=55,qgs={19942},u=2,g={
ach(2079,{providers={{"i",28788}},u=2}),
s(139134,28788,{b=1,f=9,q=1,u=2})}})}})}),
x(3),
x(4,{awp=30300,g={
h(-474,{maps={84,85,87,88},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,rwp=40003,u=2,g={
h(-12,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,u=2,g={
ach(4887,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,u=2})}}),
h(-45,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,u=2,g={
q(25351,{coords={{52.9,72.4,85}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,sourceQuests={25348},u=2}),
q(25290,{coords={{75.9,44.2,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39508},r=2,sourceQuests={25282},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729}},u=2}),
s(179863,52729,{b=1,f=4,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2})}}),
q(25288,{coords={{52.9,72.4,85}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,sourceQuests={25254},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729}},u=2}),
s(179863,52729,{b=1,f=4,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2})}}),
q(25253,{coords={{75.9,44.2,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39508},r=2,u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",40124}},u=2}),
qo(2,{coords={{73,63,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52562}},u=2}),
qo(3,{coords={{76,59,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52563}},u=2}),
qo(4,{coords={{73,54,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52565}},u=2})}}),
q(25228,{coords={{52.9,72.4,85}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",39328}},u=2}),
qo(2,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52562}},u=2}),
qo(3,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52563}},u=2}),
qo(4,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52565}},u=2})}}),
q(25282,{coords={{75.9,44.2,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39508},r=2,sourceQuests={25253},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52707}},u=2})}}),
q(25254,{coords={{52.9,72.4,85}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,sourceQuests={25228},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52706}},u=2})}}),
q(25415,{coords={{31.3,65,37}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={40098},r=2,sourceQuests={25290},u=2,g={
qo(1,{coords={{24,74,37}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",53048}},u=2}),
qo(2,{coords={{69,83,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",53048}},u=2}),
qo(3,{coords={{42,66,37}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",53048}},u=2})}}),
q(25380,{coords={{48.2,16.9,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39827},r=1,sourceQuests={25288},u=2,g={
qo(1,{coords={{50.8,13.2,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",53048}},u=2}),
qo(2,{coords={{41.5,18.3,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",53048}},u=2}),
qo(3,{coords={{52.5,42.3,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",53048}},u=2})}}),
q(25417,{coords={{31.3,65,37}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52835}},qgs={40098},r=2,sourceQuests={25416},u=2}),
q(25347,{coords={{48.2,16.9,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52835}},qgs={39827},r=1,sourceQuests={25343},u=2}),
q(27307,{isBreadcrumb=1,nextQuests={27540},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={45341,45946},r=2,u=2}),
q(27308,{isBreadcrumb=1,nextQuests={27570},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={45341,45946},r=1,u=2}),
q(25416,{coords={{31.3,65,37}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={40098},r=2,sourceQuests={25415},u=2,g={
qo(1,{coords={{29.3,65.7,37}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729}},u=2})}}),
q(25343,{coords={{48.2,16.9,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39827},r=1,sourceQuests={25380},u=2,g={
qo(1,{coords={{49.6,16.4,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729}},u=2})}}),
q(25414,{coords={{75.9,44.2,84}},maps={37},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39508},r=2,sourceQuests={25282},u=2,g={
qo(1,{coords={{30.7,64.9,37}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39967}},u=2}),
qo(2,{coords={{31.1,67.5,37}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39968}},u=2}),
qo(3,{coords={{31.8,66.1,37}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39969}},u=2}),
qo(4,{coords={{30.3,64.35,37}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39970}},u=2})}}),
q(25293,{coords={{52.9,72.4,85}},maps={1},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,sourceQuests={25254},u=2,g={
qo(1,{coords={{48,17,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39757}},u=2}),
qo(2,{coords={{48,17,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39758}},u=2}),
qo(3,{coords={{48,16,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39760}},u=2}),
qo(4,{coords={{49,17,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52729},{"n",39763}},u=2})}}),
q(27570,{coords={{52.2,73.2,85}},isBreadcrumb=1,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39283},r=1,sourceQuests={27308},u=2}),
q(27540,{coords={{62.5,75.5,84}},isBreadcrumb=1,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={45702},r=2,sourceQuests={27307},u=2}),
q(25418,{coords={{75.9,44.2,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39508},r=2,sourceQuests={25417},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",40104}},u=2})}}),
q(25348,{coords={{52.9,72.4,85}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,sourceQuests={25347},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",39852}},u=2})}}),
q(25425,{coords={{75.9,44.2,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39508},r=2,sourceQuests={25418},u=2}),
q(25055,{coords={{30.3,60.6,87}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={45712},r=2,sourceQuests={27473},u=2,g={
qo(1,{cost={{"i",52189,1},{"i",52272,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",39021}},u=2}),
i(52274,{b=1,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2,g={
i(52272,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2}),
i(52189,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2})}})}}),
q(25092,{coords={{52.2,73.2,85}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39283},r=1,u=2,g={
qo(1,{cost={{"i",52202,1},{"i",52345,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",39047}},u=2}),
i(52344,{b=1,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2,g={
i(52345,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2}),
i(52202,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,q=1,u=2})}})}}),
q(25181,{coords={{52.2,73.2,85}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39283},r=1,u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52276},{"n",39090}},u=2})}}),
q(25180,{coords={{62.5,75.5,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={45702},r=2,u=2,g={
qo(1,{coords={{29.6,48.3,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",52275},{"n",39101}},u=2})}}),
q(27473,{isBreadcrumb=1,nextQuests={25055},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={45341,45946},r=2,u=2}),
q(27566,{maps={107},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={45341},r=2,u=2}),
q(27572,{coords={{52.2,73.2,85}},maps={107},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39283},r=1,u=2}),
q(27749,{coords={{62.2,71.6,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={12481},r=2,sourceQuests={27741},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62541},{"n",46584}},u=2}),
qo(2,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",46670}},u=2})}}),
q(27802,{coords={{52.9,72.4,85}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,sourceQuests={27801},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62541},{"n",46816}},u=2}),
qo(2,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",46827}},u=2})}}),
q(27767,{coords={{62.2,71.6,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={12481},r=2,sourceQuests={27749},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62379},{"n",40098}},u=2})}}),
q(27800,{coords={{52.9,72.4,85}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,sourceQuests={27802},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62496},{"n",39827}},u=2})}}),
q(27780,{coords={{31.3,65,37}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={40098},r=2,sourceQuests={27767},u=2,g={
qo(1,{coords={{64,29.5,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62412}},u=2}),
qo(2,{coords={{58.3,49,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62412}},u=2}),
qo(3,{coords={{38,61.9,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62412}},u=2})}}),
q(27799,{coords={{48.2,16.9,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39827},r=1,sourceQuests={27800},u=2,g={
qo(1,{coords={{57.72,47.65,85}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62495}},u=2}),
qo(2,{coords={{80.78,35.32,85}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62495}},u=2}),
qo(3,{coords={{27.63,54.73,85}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62495}},u=2})}}),
q(27741,{coords={{62.2,71.6,84}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={12481},r=2,u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"n",37787},{"n",39686},{"n",40125},{"n",46489}},u=2}),
qo(2,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,providers={{"i",62315}},u=2})}}),
q(27801,{coords={{52.9,72.4,85}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3304;t.rwp=40003;end	end,qgs={39448},r=1,u=2,g={
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
h(-475,{maps={27,87},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,r=2,rwp=40003,u=2,g={
q(25229,{coords={{69.2,49.2,87}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={7937},r=2,u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",52566},{"n",39253},{"n",39623}},r=2,u=2}),
qo(2,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39466},{"n",39624}},r=2,u=2})}}),
q(25199,{coords={{50.16,48.35,27}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={39675},r=2,sourceQuests={25229},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39368}},r=2,u=2}),
qo(12,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39368}},r=2,u=2}),
qo(3,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39368}},r=2,u=2}),
qo(4,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39368}},r=2,u=2})}}),
q(25285,{coords={{50.16,48.35,27}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={39675},r=2,sourceQuests={25199},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39715}},r=2,u=2})}}),
q(25289,{coords={{50.16,48.35,27}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={39675},r=2,sourceQuests={25285},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39716}},r=2,u=2}),
qo(2,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39716}},r=2,u=2}),
qo(3,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39716}},r=2,u=2})}}),
q(25393,{coords={{69.2,49.2,87}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={7937,39271},r=2,sourceQuests={25287},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39799},{"n",39837},{"n",39901}},r=2,u=2}),
ach(4786,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,r=2,u=2}),
s(179868,53097,{b=1,f=3,lvl=75,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,q=1,r=2,u=2})}}),
q(25283,{coords={{49.32,48.27,27}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={39678},r=2,sourceQuests={25212,25295},u=2,g={
qo(1,{coords={{45.89,49.38,27}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",52709},{"n",1268}},r=2,u=2}),
qo(2,{coords={{49.12,47.95,27}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",52709},{"n",7955}},r=2,u=2}),
qo(3,{coords={{47.34,53.78,27}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",52709},{"n",6119}},r=2,u=2})}}),
q(25295,{coords={{50.16,48.35,27}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={39675},r=2,sourceQuests={25289},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39711},{"n",39717}},r=2,u=2})}}),
q(25212,{coords={{50.1,47.74,27}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={39386},r=2,sourceQuests={25199},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",52541},{"n",39396}},r=2,u=2})}}),
q(25500,{altQuests={25286},coords={{49.32,48.27,27}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",52731}},qgs={39678},r=2,sourceQuests={25283},u=2,g={
toy(54651,{b=1,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,q=3,r=2,u=2})}}),
q(25287,{coords={{50.16,48.35,27}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",52731}},qgs={39396,39675},r=2,sourceQuests={25500},u=2})}}),
h(-485,{maps={1},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,r=1,rwp=40003,u=2,g={
q(25444,{coords={{57.5,72.5,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={40184},r=1,u=2,g={
qo(1,{coords={{57.6,72.5,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",53510},{"n",40176},{"n",40187},{"n",40188}},r=1,u=2})}}),
q(25480,{coords={{57.4,72.7,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={40391},r=1,sourceQuests={25470},u=2,g={
qo(1,{coords={{57,74.14,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",40352}},r=1,u=2}),
toy(54653,{b=1,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,q=3,r=1,u=2})}}),
q(25446,{coords={{57.5,72.5,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={40184},r=1,sourceQuests={25444},u=2,g={
qo(1,{coords={{57.1,75.13,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",53637},{"n",40204}},r=1,u=2})}}),
q(25470,{coords={{57.5,72.5,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={40184},r=1,sourceQuests={25461},u=2,g={
qo(1,{coords={{59,82,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",40312}},r=1,u=2})}}),
q(25495,{coords={{57.8,73,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={40204,40253},r=1,sourceQuests={25461},u=2}),
q(25461,{coords={{57.8,73,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={40253},r=1,sourceQuests={25446},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"i",54215},{"n",40256},{"n",40257}},r=1,u=2}),
qo(2,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",40260},{"n",40264}},r=1,u=2})}}),
q(25445,{coords={{57.4,72.7,1}},OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,qgs={40391},r=1,sourceQuests={25495},u=2,g={
qo(1,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,providers={{"n",39647},{"n",40182},{"n",40189}},r=1,u=2}),
ach(4790,{OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,r=1,u=2}),
s(179936,54617,{b=1,f=3,lvl=75,OnUpdate=function(t)if settings:GetUnobtainableFilter(40)then	t.u=2;t.rwp=nil;else	t.u=3303;t.rwp=40003;end	end,q=1,r=1,u=2})}})}})}}),
x(5,{awp=50004,g={
h(-315,{lvl=85,maps={483},OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,rwp=50100,u=2,g={
h(-12,{OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,u=2,g={
ach(7467,{OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,r=2,u=2}),
ach(7468,{OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,r=1,u=2})}}),
h(-49,{OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,u=2,g={
toy(89205,{b=1,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=3,r=1,u=2}),
i(90041,{b=1,description="This was a reward for completing the Theramore's Fall scenario during the Mists of Pandaria pre-patch.",OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=3,u=2,g={
toy(89999,{b=1,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=3,r=2,u=50}),
toy(90000,{b=1,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=3,r=1,u=50}),
s(273967,90017,{b=1,f=4,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273968,90018,{b=1,f=4,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273969,90019,{b=1,f=4,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273970,90020,{b=1,f=5,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273971,90021,{b=1,f=5,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273972,90022,{b=1,f=6,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273973,90023,{b=1,f=6,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273974,90024,{b=1,f=7,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273975,90025,{b=1,f=7,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273976,90026,{b=1,f=7,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273977,90027,{b=1,f=29,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273978,90028,{b=1,f=21,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273979,90029,{b=1,f=31,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273980,90030,{b=1,f=25,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273981,90031,{b=1,f=28,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273982,90032,{b=1,f=22,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273983,90033,{b=1,f=20,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273984,90034,{b=1,f=28,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273985,90035,{b=1,f=25,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2}),
s(273986,90036,{b=1,f=8,lvl=85,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=4,u=2})}}),
s(273452,89196,{b=1,f=9,OnUpdate=function(t)if	 not settings:GetUnobtainableFilter(54)or	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then	t.u=50;t.description="This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";else	t.u=2;end	end,q=3,r=2,u=2})}})}})}})}),
h(-656,{awp=50100,lvl=90,maps={499,500,503},rwp=60002,u=51,g={
h(-12,{u=51,g={
ach(7944,{providers={{"s",136314}},rwp=70003,u=51}),
ach(7941,{r=2,u=51,g={
title(209,{u=51})}}),
ach(7942,{r=1,u=51,g={
title(209,{u=51})}}),
ach(8339,{awp=50300,r=2,rwp=70003,u=53}),
ach(8342,{awp=50300,r=1,rwp=70003,u=53}),
ach(8340,{awp=50300,r=2,u=53,g={
s(279278,98543,{b=1,f=10,q=4,rwp=70003,u=53}),
crit(23541,{achID=8340,id=1,providers={{"s",143344}},r=2,u=53}),
crit(23552,{achID=8340,id=2,providers={{"s",143354}},r=2,u=53}),
crit(23545,{achID=8340,id=3,providers={{"s",143347}},r=2,u=53}),
crit(23546,{achID=8340,id=4,providers={{"s",143348}},r=2,u=53}),
crit(23547,{achID=8340,id=5,providers={{"s",143349}},r=2,u=53}),
crit(23548,{achID=8340,id=6,providers={{"s",143350}},r=2,u=53}),
crit(23542,{achID=8340,id=7,providers={{"s",142977}},r=2,u=53}),
crit(23549,{achID=8340,id=8,providers={{"s",143351}},r=2,u=53}),
crit(23544,{achID=8340,id=9,providers={{"s",143346}},r=2,u=53}),
crit(23551,{achID=8340,id=10,providers={{"s",143353}},r=2,u=53}),
crit(23543,{achID=8340,id=11,providers={{"s",143025}},r=2,u=53}),
crit(23550,{achID=8340,id=12,providers={{"s",143352}},r=2,u=53})}}),
ach(8343,{awp=50300,r=1,u=53,g={
s(279278,98543,{b=1,f=10,q=4,rwp=70003,u=53}),
crit(23541,{achID=8343,id=1,providers={{"s",143344}},r=1,u=53}),
crit(23552,{achID=8343,id=2,providers={{"s",143354}},r=1,u=53}),
crit(23545,{achID=8343,id=3,providers={{"s",143347}},r=1,u=53}),
crit(23546,{achID=8343,id=4,providers={{"s",143348}},r=1,u=53}),
crit(23547,{achID=8343,id=5,providers={{"s",143349}},r=1,u=53}),
crit(23548,{achID=8343,id=6,providers={{"s",143350}},r=1,u=53}),
crit(23542,{achID=8343,id=7,providers={{"s",142977}},r=1,u=53}),
crit(23549,{achID=8343,id=8,providers={{"s",143351}},r=1,u=53}),
crit(23544,{achID=8343,id=9,providers={{"s",143346}},r=1,u=53}),
crit(23551,{achID=8343,id=10,providers={{"s",143353}},r=1,u=53}),
crit(23543,{achID=8343,id=11,providers={{"s",143025}},r=1,u=53}),
crit(23550,{achID=8343,id=12,providers={{"s",143352}},r=1,u=53})}}),
ach(7945,{awp=50300,providers={{"s",135947}},rwp=70003,u=51}),
ach(8335,{awp=50300,r=2,u=53}),
ach(8337,{awp=50300,r=1,u=53}),
ach(7943,{rwp=70003,u=51}),
ach(8336,{awp=50300,r=2,u=53}),
ach(8338,{awp=50300,r=1,u=53}),
ach(7946,{r=2,u=53,g={
crit(22574,{achID=7946,id=1,providers={{"s",136155}},r=2,u=53}),
crit(22575,{achID=7946,id=2,providers={{"s",136156}},r=2,u=53}),
crit(22576,{achID=7946,id=3,providers={{"s",136157}},r=2,u=53}),
crit(22577,{achID=7946,id=4,providers={{"s",136158}},r=2,u=53})}}),
ach(8022,{r=1,u=53,g={
crit(22574,{achID=8022,id=1,providers={{"s",136155}},r=1,u=53}),
crit(22575,{achID=8022,id=2,providers={{"s",136156}},r=1,u=53}),
crit(22576,{achID=8022,id=3,providers={{"s",136157}},r=1,u=53}),
crit(22577,{achID=8022,id=4,providers={{"s",136158}},r=1,u=53})}}),
ach(7949,{awp=50300,providers={{"s",136305}},r=2,rwp=70003,u=51}),
ach(7950,{awp=50300,providers={{"s",136305}},r=1,rwp=70003,u=51}),
ach(7947,{providers={{"s",136144}},r=2,rwp=70003,u=51}),
ach(7948,{providers={{"s",136143}},r=1,rwp=70003,u=51}),
ach(7940,{r=2,u=51,g={
i(93195,{lvl=90,q=1,u=51})}}),
ach(7939,{r=1,u=51,g={
i(93195,{lvl=90,q=1,u=51})}}),
ach(7937,{providers={{"s",134548}},r=2,u=51}),
ach(8020,{providers={{"s",134548}},r=1,u=51})}}),
h(-16,{u=51,g={
n(67262,{u=51,g={
i(97983,{awp=50300,b=1,lvl=90,q=1,rwp=70003,u=53})}})}}),
h(-31,{u=51,g={
faction(1419,{r=2,u=51}),
faction(1374,{r=1,u=51})}}),
h(-45,{u=51,g={
q(32836,{awp=50300,providers={{"i",97978}},rwp=70003,u=53,g={
crit(23371,{achID=8339,id=1,r=2,u=53}),
crit(23371,{achID=8342,id=1,r=1,u=53})}}),
q(32837,_.ResolveQuestData({aqd=
{coords={{52.3,25.2,500}},qgs={70752}},awp=50300,hqd=
{coords={{60.4,77.5,503}},qgs={70751}},rwp=70003,sourceQuests={32836},u=53,g={
qo(1,{providers={{"n",70689}},u=53}),
s(279115,98079,{b=1,f=10,q=3,u=53}),
i(98099,{b=1,q=1,u=53}),
crit(23383,{achID=8340,id=1,r=2,rwp=60002,u=53}),
crit(23383,{achID=8343,id=1,r=1,rwp=60002,u=53})}})),
q(32838,{awp=50300,providers={{"i",97979}},rwp=70003,u=53,g={
crit(23380,{achID=8339,id=10,r=2,u=53}),
crit(23380,{achID=8342,id=10,r=1,u=53})}}),
q(32839,_.ResolveQuestData({aqd=
{coords={{52.3,25.2,500}},qgs={70752}},awp=50300,hqd=
{coords={{60.4,77.5,503}},qgs={70751}},rwp=70003,sourceQuests={32838},u=53,g={
qo(1,{providers={{"n",70748}},u=53}),
s(279116,98080,{b=1,f=10,q=3,u=53}),
i(98102,{b=1,q=1,u=53}),
crit(23384,{achID=8340,id=9,r=2,rwp=60002,u=53}),
crit(23384,{achID=8343,id=9,r=1,rwp=60002,u=53})}})),
q(32840,{awp=50300,providers={{"i",97980}},rwp=70003,u=53,g={
crit(23373,{achID=8339,id=3,r=2,u=53}),
crit(23373,{achID=8342,id=3,r=1,u=53})}}),
q(32841,_.ResolveQuestData({aqd=
{coords={{52.3,25.2,500}},qgs={70752}},awp=50300,hqd=
{coords={{60.4,77.5,503}},qgs={70751}},rwp=70003,sourceQuests={32840},u=53,g={
qo(1,{providers={{"n",70677}},u=53}),
s(279117,98081,{b=1,f=10,q=3,u=53}),
i(98099,{b=1,q=1,u=53}),
crit(23385,{achID=8340,id=3,r=2,rwp=60002,u=53}),
crit(23385,{achID=8343,id=3,r=1,rwp=60002,u=53})}})),
q(32842,{awp=50300,providers={{"i",97981}},rwp=70003,u=53,g={
crit(23374,{achID=8339,id=4,r=2,u=53}),
crit(23374,{achID=8342,id=4,r=1,u=53})}}),
q(32843,_.ResolveQuestData({aqd=
{coords={{52.3,25.2,500}},qgs={70752}},awp=50300,hqd=
{coords={{60.4,77.5,503}},qgs={70751}},rwp=70003,sourceQuests={32842},u=53,g={
qo(1,{providers={{"n",71085}},u=53}),
s(279119,98083,{b=1,f=10,q=3,u=53}),
i(98100,{b=1,q=1,u=53}),
crit(23386,{achID=8340,id=4,r=2,rwp=60002,u=53}),
crit(23386,{achID=8343,id=4,r=1,rwp=60002,u=53})}})),
q(32844,{awp=50300,providers={{"i",97982}},rwp=70003,u=53,g={
crit(23375,{achID=8339,id=5,r=2,u=53}),
crit(23375,{achID=8342,id=5,r=1,u=53})}}),
q(32845,_.ResolveQuestData({aqd=
{coords={{52.3,25.2,500}},qgs={70752}},awp=50300,hqd=
{coords={{60.4,77.5,503}},qgs={70751}},rwp=70003,sourceQuests={32844},u=53,g={
qo(1,{providers={{"n",70737}},u=53}),
s(279120,98084,{b=1,f=10,q=3,u=53}),
i(98100,{b=1,q=1,u=53}),
crit(23387,{achID=8340,id=5,r=2,rwp=60002,u=53}),
crit(23387,{achID=8343,id=5,r=1,rwp=60002,u=53})}})),
q(32846,{awp=50300,providers={{"i",97983}},rwp=70003,u=53,g={
crit(23376,{achID=8339,id=6,r=2,u=53}),
crit(23376,{achID=8342,id=6,r=1,u=53})}}),
q(32847,_.ResolveQuestData({aqd=
{coords={{52.3,25.2,500}},qgs={70752}},awp=50300,hqd=
{coords={{60.4,77.5,503}},qgs={70751}},rwp=70003,sourceQuests={32846},u=53,g={
qo(1,{providers={{"n",71081}},u=53}),
s(279121,98085,{b=1,f=10,q=3,u=53}),
i(98101,{b=1,q=1,u=53}),
crit(23388,{achID=8340,id=6,r=2,rwp=60002,u=53}),
crit(23388,{achID=8343,id=6,r=1,rwp=60002,u=53})}})),
q(32848,{awp=50300,providers={{"i",97984}},rwp=70003,u=53,g={
crit(23377,{achID=8339,id=7,r=2,u=53}),
crit(23377,{achID=8342,id=7,r=1,u=53})}}),
q(32849,_.ResolveQuestData({aqd=
{coords={{52.3,25.2,500}},qgs={70752}},awp=50300,hqd=
{coords={{60.4,77.5,503}},qgs={70751}},rwp=70003,sourceQuests={32848},u=53,g={
qo(1,{providers={{"n",70647},{"n",70648}},u=53}),
s(279122,98086,{b=1,f=10,q=3,u=53}),
i(98100,{b=1,q=1,u=53}),
crit(23389,{achID=8340,id=7,r=2,rwp=60002,u=53}),
crit(23389,{achID=8343,id=7,r=1,rwp=60002,u=53})}})),
q(32850,{awp=50300,providers={{"i",97985}},rwp=70003,u=53,g={
crit(23378,{achID=8339,id=8,r=2,u=53}),
crit(23378,{achID=8342,id=8,r=1,u=53})}}),
q(32851,_.ResolveQuestData({aqd=
{coords={{52.3,25.2,500}},qgs={70752}},awp=50300,hqd=
{coords={{60.4,77.5,503}},qgs={70751}},rwp=70003,sourceQuests={32850},u=53,g={
qo(1,{providers={{"n",70740}},u=53}),
s(279124,98091,{b=1,f=10,q=3,u=53}),
i(98101,{b=1,q=1,u=53}),
crit(23390,{achID=8340,id=8,r=2,rwp=60002,u=53}),
crit(23390,{achID=8343,id=8,r=1,rwp=60002,u=53})}})),
q(32852,{awp=50300,providers={{"i",97986}},rwp=70003,u=53,g={
crit(23382,{achID=8339,id=11,r=2,u=53}),
crit(23382,{achID=8342,id=11,r=1,u=53})}}),
q(32853,_.ResolveQuestData({aqd=
{coords={{52.3,25.2,500}},qgs={70752}},awp=50300,hqd=
{coords={{60.4,77.5,503}},qgs={70751}},rwp=70003,sourceQuests={32852},u=53,g={
qo(1,{providers={{"n",70616}},u=53}),
s(279125,98092,{b=1,f=10,q=3,u=53}),
i(98103,{b=1,q=1,u=53}),
crit(23391,{achID=8340,id=11,r=2,rwp=60002,u=53}),
crit(23391,{achID=8343,id=11,r=1,rwp=60002,u=53})}})),
q(32854,{awp=50300,providers={{"i",97987}},rwp=70003,u=53,g={
crit(23381,{achID=8339,id=12,r=2,u=53}),
crit(23381,{achID=8342,id=12,r=1,u=53})}}),
q(32855,_.ResolveQuestData({aqd=
{coords={{52.3,25.2,500}},qgs={70752}},awp=50300,hqd=
{coords={{60.4,77.5,503}},qgs={70751}},rwp=70003,sourceQuests={32854},u=53,g={
qo(1,{providers={{"n",70794}},u=53}),
s(279126,98093,{b=1,f=10,q=3,u=53}),
i(98103,{b=1,q=1,u=53}),
crit(23392,{achID=8340,id=12,r=2,rwp=60002,u=53}),
crit(23392,{achID=8343,id=12,r=1,rwp=60002,u=53})}})),
q(32856,{awp=50300,providers={{"i",97988}},rwp=70003,u=53,g={
crit(23379,{achID=8339,id=9,r=2,u=53}),
crit(23379,{achID=8342,id=9,r=1,u=53})}}),
q(32857,_.ResolveQuestData({aqd=
{coords={{52.3,25.2,500}},qgs={70752}},awp=50300,hqd=
{coords={{60.4,77.5,503}},qgs={70751}},rwp=70003,sourceQuests={32856},u=53,g={
qo(1,{providers={{"n",70749}},u=53}),
s(279123,98087,{b=1,f=10,q=3,u=53}),
i(98102,{b=1,q=1,u=53}),
crit(23393,{achID=8340,id=10,r=2,rwp=60002,u=53}),
crit(23393,{achID=8343,id=10,r=1,rwp=60002,u=53})}})),
q(32858,{awp=50300,providers={{"i",97990}},rwp=70003,u=53,g={
crit(23372,{achID=8339,id=2,r=2,u=53}),
crit(23372,{achID=8342,id=2,r=1,u=53})}}),
q(32859,_.ResolveQuestData({aqd=
{coords={{52.3,25.2,500}},qgs={70752}},awp=50300,hqd=
{coords={{60.4,77.5,503}},qgs={70751}},rwp=70003,sourceQuests={32858},u=53,g={
qo(1,{providers={{"n",70666}},u=53}),
s(279118,98082,{b=1,f=10,q=3,u=53}),
i(98099,{b=1,q=1,u=53}),
crit(23394,{achID=8340,id=2,r=2,rwp=60002,u=53}),
crit(23394,{achID=8343,id=2,r=1,rwp=60002,u=53})}}))}}),
h(-47,{u=51,g={
i(92718,{b=1,description="Awarded for winning a Brawl.",f=55,q=1,u=51}),
i(92719,{b=1,description="Awarded for winning a Random Brawl.",f=55,q=1,u=51})}}),
h(-58,{u=51,g={
n(70751,{coords={{60.4,77.5,503}},r=1,rwp=90002,u=51,g={
i(94184,{awp=50300,b=1,f=55,q=1,u=51}),
i(94166,{awp=50300,b=1,f=55,q=1,u=51}),
i(97321,{awp=50300,b=1,f=55,q=1,u=51}),
i(97445,{awp=50300,b=1,f=55,q=1,u=51}),
i(93823,{awp=50300,b=1,f=55,q=1,rwp=70003,u=51,g={
n(67262,{u=51,g={
i(97983,{b=1,lvl=90,q=1,u=53})}})}}),
i(94170,{awp=50300,b=1,f=55,q=1,u=51}),
i(94179,{awp=50300,b=1,f=55,q=1,u=51}),
i(94173,{awp=50300,b=1,f=55,q=1,u=51}),
i(94162,{awp=50300,b=1,f=55,q=1,u=51}),
i(97280,{awp=50300,b=1,f=55,q=1,u=51}),
i(94172,{awp=50300,b=1,f=55,q=1,u=51}),
i(94182,{awp=50300,b=1,f=55,q=1,u=51}),
i(94175,{awp=50300,b=1,f=55,q=1,u=51}),
i(94164,{awp=50200,b=1,f=55,q=1,u=51}),
i(94178,{awp=50300,b=1,f=55,q=1,u=53}),
i(94160,{awp=50300,b=1,f=55,q=1,u=51}),
i(94168,{awp=50300,b=1,f=55,q=1,u=51}),
i(94165,{awp=50300,b=1,f=55,q=1,u=51}),
i(94163,{awp=50300,b=1,f=55,q=1,u=51}),
i(94171,{awp=50300,b=1,f=55,q=1,u=51}),
i(94177,{awp=50300,b=1,f=55,q=1,u=51}),
i(94181,{awp=50300,b=1,f=55,q=1,u=51}),
i(97563,{awp=50300,b=1,f=55,q=1,u=51}),
i(94174,{awp=50300,b=1,f=55,q=1,u=51}),
i(97283,{awp=50300,b=1,f=55,q=1,u=51}),
i(94176,{awp=50300,b=1,f=55,q=1,u=51}),
i(97566,{awp=50300,b=1,f=55,q=1,u=51}),
i(94167,{awp=50300,b=1,f=55,q=1,u=51}),
i(97559,{awp=50300,b=1,f=55,q=1,u=51}),
i(94186,{awp=50300,b=1,f=55,q=1,u=51}),
i(93824,{awp=50300,b=1,f=55,q=1,u=51}),
i(94161,{awp=50300,b=1,f=55,q=1,u=51}),
i(94183,{awp=50300,b=1,f=55,q=1,u=51})}}),
n(70752,{coords={{52.3,25.2,500}},r=2,rwp=90002,u=51,g={
i(94184,{awp=50300,b=1,f=55,q=1,u=51}),
i(94166,{awp=50300,b=1,f=55,q=1,u=51}),
i(97321,{awp=50300,b=1,f=55,q=1,u=51}),
i(97445,{awp=50300,b=1,f=55,q=1,u=51}),
i(93823,{awp=50300,b=1,f=55,q=1,rwp=70003,u=51,g={
n(67262,{u=51,g={
i(97983,{b=1,lvl=90,q=1,u=53})}})}}),
i(94170,{awp=50300,b=1,f=55,q=1,u=51}),
i(94179,{awp=50300,b=1,f=55,q=1,u=51}),
i(94173,{awp=50300,b=1,f=55,q=1,u=51}),
i(94162,{awp=50300,b=1,f=55,q=1,u=51}),
i(97280,{awp=50300,b=1,f=55,q=1,u=51}),
i(94172,{awp=50300,b=1,f=55,q=1,u=51}),
i(94182,{awp=50300,b=1,f=55,q=1,u=51}),
i(94175,{awp=50300,b=1,f=55,q=1,u=51}),
i(94164,{awp=50200,b=1,f=55,q=1,u=51}),
i(94178,{awp=50300,b=1,f=55,q=1,u=53}),
i(94160,{awp=50300,b=1,f=55,q=1,u=51}),
i(94168,{awp=50300,b=1,f=55,q=1,u=51}),
i(94165,{awp=50300,b=1,f=55,q=1,u=51}),
i(94163,{awp=50300,b=1,f=55,q=1,u=51}),
i(94171,{awp=50300,b=1,f=55,q=1,u=51}),
i(94177,{awp=50300,b=1,f=55,q=1,u=51}),
i(94181,{awp=50300,b=1,f=55,q=1,u=51}),
i(97563,{awp=50300,b=1,f=55,q=1,u=51}),
i(94174,{awp=50300,b=1,f=55,q=1,u=51}),
i(97283,{awp=50300,b=1,f=55,q=1,u=51}),
i(94176,{awp=50300,b=1,f=55,q=1,u=51}),
i(97566,{awp=50300,b=1,f=55,q=1,u=51}),
i(94167,{awp=50300,b=1,f=55,q=1,u=51}),
i(97559,{awp=50300,b=1,f=55,q=1,u=51}),
i(94186,{awp=50300,b=1,f=55,q=1,u=51}),
i(93824,{awp=50300,b=1,f=55,q=1,u=51}),
i(94161,{awp=50300,b=1,f=55,q=1,u=51}),
i(94183,{awp=50300,b=1,f=55,q=1,u=51})}}),
n(70723,{awp=50300,coords={{22.1,72.4,500}},r=2,rwp=90002,u=51}),
n(70714,{awp=50300,coords={{41.5,76.8,503}},description="On a Zeppelin, flying above and around the Arena.",r=1,rwp=90002,u=51}),
n(70713,{awp=50300,coords={{41.5,76.8,503}},description="On a Zeppelin, flying above and around the Arena.",r=1,rwp=90002,u=51}),
n(70719,{awp=50300,coords={{24.7,65,500}},r=2,rwp=90002,u=51}),
n(68364,{coords={{50.8,29.4,503}},r=1,u=51,g={
flt(100,{u=51,g={
mnt(142641,{awp=50300,b=1,description="Available after reaching Rank 10.",itemID=98405,lvl=85,q=4,rwp=70105,u=53})}}),
flt(101,{u=51,g={
p(1142,{awp=50300,b=1,description="Available after reaching Rank 4.",itemID=93025,npcID=68601,q=1,rwp=90002,spellID=135156,u=51})}}),
h(-679,{u=51}),
heir(93858,{awp=50200,b=2,description="Available after reaching Rank 8.",f=34,q=7,rwp=60002,sourceID=276259,u=51}),
heir(92948,{awp=50200,b=2,description="Available after reaching Rank 8.",f=34,q=7,rwp=60002,sourceID=275683,u=51}),
s(279121,98085,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279125,98092,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279115,98079,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279116,98080,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279124,98091,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279120,98084,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279123,98087,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279119,98083,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279126,98093,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279117,98081,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
i(95050,{awp=50200,b=1,f=52,lvl=90,q=4,r=1,rwp=60002,u=51}),
s(279122,98086,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279118,98082,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279278,98543,{awp=50300,b=1,f=10,q=4,rwp=90002,u=53})}}),
n(68363,{coords={{54.3,25.2,500}},r=2,u=51,g={
flt(100,{u=51,g={
mnt(142641,{awp=50300,b=1,description="Available after reaching Rank 10.",itemID=98405,lvl=85,q=4,rwp=70105,u=53})}}),
flt(101,{u=51}),
h(-679,{u=51}),
heir(93858,{awp=50200,b=2,description="Available after reaching Rank 8.",f=34,q=7,rwp=60002,sourceID=276259,u=51}),
heir(92948,{awp=50200,b=2,description="Available after reaching Rank 8.",f=34,q=7,rwp=60002,sourceID=275683,u=51}),
s(279121,98085,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279125,98092,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279115,98079,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279116,98080,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279124,98091,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279120,98084,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279123,98087,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279119,98083,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279126,98093,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279117,98081,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
i(95051,{awp=50200,b=1,f=52,lvl=90,q=4,r=2,rwp=60002,u=51}),
s(279122,98086,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279118,98082,{awp=50300,b=1,f=10,q=3,rwp=90002,u=53}),
s(279278,98543,{awp=50300,b=1,f=10,q=4,rwp=90002,u=53})}})}})}}),
h(-476,{awp=30403,e=444,rwp=40001,u=2,g={
p(4532,{e=444,npcID=222858,petTypeID=9,spellID=446916,u=2}),
mnt(446902,{e=444,u=2})}}),
h(-481,{maps={85,87},rwp=20001,u=2,g={
h(-210,{r=2,u=2,g={
q(8811,{coords={{55.2,64.7,84},{59.3,64.1,87}},cost={{"i",21436,1}},qgs={15735,15766},r=2,repeatable=1,u=2}),
q(8830,{coords={{55.2,64.7,84},{59.3,64.1,87}},cost={{"i",21436,1}},qgs={15735,15766},r=2,repeatable=1,sourceQuests={8811},u=2}),
q(8812,{coords={{43.2,46.5,87},{61,77.1,87}},cost={{"i",21436,1}},qgs={15734,15764},r=2,repeatable=1,u=2}),
q(8834,{coords={{43.2,46.5,87},{61,77.1,87}},cost={{"i",21436,1}},qgs={15734,15764},r=2,repeatable=1,sourceQuests={8812},u=2}),
q(8813,{coords={{59.1,65.5,87},{38.2,38.7,89}},cost={{"i",21436,1}},qgs={15731,15762},r=2,repeatable=1,u=2}),
q(8836,{coords={{59.1,65.5,87},{38.2,38.7,89}},cost={{"i",21436,1}},qgs={15731,15762},r=2,repeatable=1,sourceQuests={8813},u=2}),
q(8814,{coords={{63.3,73.7,87},{69.7,46,87}},cost={{"i",21436,1}},qgs={15733,15763},r=2,repeatable=1,u=2}),
q(8838,{coords={{63.3,73.7,87},{69.7,46,87}},cost={{"i",21436,1}},qgs={15733,15763},r=2,repeatable=1,sourceQuests={8814},u=2}),
q(8819,{coords={{55.2,64.7,84},{59.3,64.1,87}},cost={{"i",21436,10}},qgs={15735,15766},r=2,repeatable=1,u=2}),
q(8831,{coords={{55.2,64.7,84},{59.3,64.1,87}},cost={{"i",21436,10}},qgs={15735,15766},r=2,repeatable=1,sourceQuests={8819},u=2}),
q(8820,{coords={{43.2,46.5,87},{61,77.1,87}},cost={{"i",21436,10}},qgs={15734,15764},r=2,repeatable=1,u=2}),
q(8835,{coords={{43.2,46.5,87},{61,77.1,87}},cost={{"i",21436,10}},qgs={15734,15764},r=2,repeatable=1,sourceQuests={8820},u=2}),
q(8821,{coords={{59.1,65.5,87},{38.2,38.7,89}},cost={{"i",21436,10}},qgs={15731,15762},r=2,repeatable=1,u=2}),
q(8837,{coords={{59.1,65.5,87},{38.2,38.7,89}},cost={{"i",21436,10}},qgs={15731,15762},r=2,repeatable=1,sourceQuests={8821},u=2}),
q(8822,{coords={{63.3,73.7,87},{69.7,46,87}},cost={{"i",21436,10}},qgs={15733,15763},r=2,repeatable=1,u=2}),
q(8839,{coords={{63.3,73.7,87},{69.7,46,87}},cost={{"i",21436,10}},qgs={15733,15763},r=2,repeatable=1,sourceQuests={8822},u=2}),
q(8846,{coords={{61.3,74.2,87}},cost={{"i",21436,5}},lvl=10,qgs={15701},r=2,repeatable=1,u=2,g={
i(21509,{b=1,q=1,u=2})}}),
q(8847,{coords={{61.3,74.2,87}},cost={{"i",21436,10}},lvl=20,qgs={15701},r=2,repeatable=1,u=2,g={
i(21510,{b=1,q=1,u=2})}}),
q(8848,{coords={{61.3,74.2,87}},cost={{"i",21436,15}},lvl=30,qgs={15701},r=2,repeatable=1,u=2,g={
i(21511,{b=1,q=1,u=2})}}),
q(8849,{coords={{61.3,74.2,87}},cost={{"i",21436,20}},lvl=40,qgs={15701},r=2,repeatable=1,u=2,g={
i(21512,{b=1,q=1,u=2})}}),
q(8850,{coords={{61.3,74.2,87}},cost={{"i",21436,30}},lvl=50,qgs={15701},r=2,repeatable=1,u=2,g={
i(21513,{b=1,q=1,u=2})}}),
q(8509,{coords={{71.3,71.4,87}},cost={{"i",8836,20}},qgs={15445},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8510,{coords={{71.3,71.4,87}},cost={{"i",8836,20}},qgs={15445},r=2,repeatable=1,sourceQuests={8509},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8492,{coords={{64.1,65.5,87}},cost={{"i",2840,20}},qgs={15383},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8493,{coords={{64.1,65.5,87}},cost={{"i",2840,20}},qgs={15383},r=2,repeatable=1,sourceQuests={8492},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8494,{coords={{65.5,63.9,87}},cost={{"i",3575,20}},qgs={15431},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8495,{coords={{65.5,63.9,87}},cost={{"i",3575,20}},qgs={15431},r=2,repeatable=1,sourceQuests={8494},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8511,{coords={{58,75.9,87}},cost={{"i",2318,10}},qgs={15446},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8512,{coords={{58,75.9,87}},cost={{"i",2318,10}},qgs={15446},r=2,repeatable=1,sourceQuests={8511},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8517,{coords={{55.4,76.2,87}},cost={{"i",1251,20}},qgs={15451},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8518,{coords={{55.4,76.2,87}},cost={{"i",1251,20}},qgs={15451},r=2,repeatable=1,sourceQuests={8517},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8513,{coords={{58.7,75,87}},cost={{"i",2319,10}},qgs={15448},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8514,{coords={{58.7,75,87}},cost={{"i",2319,10}},qgs={15448},r=2,repeatable=1,sourceQuests={8513},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8505,{coords={{71.9,70.4,87}},cost={{"i",8831,20}},qgs={15437},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8506,{coords={{71.9,70.4,87}},cost={{"i",8831,20}},qgs={15437},r=2,repeatable=1,sourceQuests={8505},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8524,{coords={{71.6,69.2,87}},cost={{"i",5095,20}},qgs={15455},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8525,{coords={{71.6,69.2,87}},cost={{"i",5095,20}},qgs={15455},r=2,repeatable=1,sourceQuests={8524},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8526,{coords={{72.1,69.6,87}},cost={{"i",12210,20}},qgs={15456},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8527,{coords={{72.1,69.6,87}},cost={{"i",12210,20}},qgs={15456},r=2,repeatable=1,sourceQuests={8526},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8522,{coords={{55.7,75.9,87}},cost={{"i",14529,20}},qgs={15453},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8523,{coords={{55.7,75.9,87}},cost={{"i",14529,20}},qgs={15453},r=2,repeatable=1,sourceQuests={8522},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8520,{coords={{57.6,75.8,87}},cost={{"i",6450,20}},qgs={15452},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8521,{coords={{57.6,75.8,87}},cost={{"i",6450,20}},qgs={15452},r=2,repeatable=1,sourceQuests={8520},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8528,{coords={{73,68.5,87}},cost={{"i",6887,20}},qgs={15457},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8529,{coords={{73,68.5,87}},cost={{"i",6887,20}},qgs={15457},r=2,repeatable=1,sourceQuests={8528},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8503,{coords={{70.3,74.3,87}},cost={{"i",3820,20}},qgs={15434},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8504,{coords={{70.3,74.3,87}},cost={{"i",3820,20}},qgs={15434},r=2,repeatable=1,sourceQuests={8503},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8515,{coords={{57.1,75,87}},cost={{"i",4304,10}},qgs={15450},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8516,{coords={{57.1,75,87}},cost={{"i",4304,10}},qgs={15450},r=2,repeatable=1,sourceQuests={8515},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8499,{coords={{63.9,68.2,87}},cost={{"i",12359,20}},qgs={15432},r=2,u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8500,{coords={{63.9,68.2,87}},cost={{"i",12359,20}},qgs={15432},r=2,repeatable=1,sourceQuests={8499},u=2,g={
i(21436,{b=1,q=1,r=2,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8797,{coords={{39.1,38.3,89}},lvl=10,qgs={15709},r=2,u=2}),
q(8795,{coords={{27.5,73.3,87}},lvl=10,qgs={15707},r=2,u=2}),
q(8796,{coords={{54.1,59.6,84}},lvl=10,qgs={15708},r=2,u=2}),
q(10501,{lvl=10,qgs={21156},r=2,u=2})}}),
h(-211,{r=1,u=2,g={
q(8815,{coords={{30,72.2,85},{42.5,38.7,85}},cost={{"i",21438,1}},qgs={15736,15765},r=1,repeatable=1,u=2}),
q(8840,{coords={{30,72.2,85},{42.5,38.7,85}},cost={{"i",21438,1}},qgs={15736,15765},r=1,repeatable=1,sourceQuests={8815},u=2}),
q(8816,{coords={{28.8,65.7,85},{61.9,45.3,998}},cost={{"i",21438,1}},qgs={15734,15764},r=1,repeatable=1,u=2}),
q(8832,{coords={{28.8,65.7,85},{61.9,45.3,998}},cost={{"i",21438,1}},qgs={15734,15764},r=1,repeatable=1,sourceQuests={8816},u=2}),
q(8817,{coords={{33.1,71.5,85},{42.4,57,88}},cost={{"i",21438,1}},qgs={15739,15767},r=1,repeatable=1,u=2}),
q(8842,{coords={{33.1,71.5,85},{42.4,57,88}},cost={{"i",21438,1}},qgs={15739,15767},r=1,repeatable=1,sourceQuests={8817},u=2}),
q(8818,{coords={{33.4,75.4,85},{46.3,35.1,85}},cost={{"i",21438,1}},qgs={15733,15761},r=1,repeatable=1,u=2}),
q(8844,{coords={{33.4,75.4,85},{46.3,35.1,85}},cost={{"i",21438,1}},qgs={15733,15761},r=1,repeatable=1,sourceQuests={8818},u=2}),
q(8823,{coords={{30,72.2,85},{42.5,38.7,85}},cost={{"i",21438,10}},qgs={15736,15765},r=1,repeatable=1,u=2}),
q(8841,{coords={{30,72.2,85},{42.5,38.7,85}},cost={{"i",21438,10}},qgs={15736,15765},r=1,repeatable=1,sourceQuests={8823},u=2}),
q(8824,{coords={{28.8,65.7,85},{61.9,45.3,998}},cost={{"i",21438,10}},qgs={15734,15764},r=1,repeatable=1,u=2}),
q(8833,{coords={{28.8,65.7,85},{61.9,45.3,998}},cost={{"i",21438,10}},qgs={15734,15764},r=1,repeatable=1,sourceQuests={8824},u=2}),
q(8825,{coords={{33.1,71.5,85},{42.4,57,88}},cost={{"i",21438,10}},qgs={15739,15767},r=1,repeatable=1,u=2}),
q(8843,{coords={{33.1,71.5,85},{42.4,57,88}},cost={{"i",21438,10}},qgs={15739,15767},r=1,repeatable=1,sourceQuests={8825},u=2}),
q(8826,{coords={{33.4,75.4,85},{46.3,35.1,85}},cost={{"i",21438,10}},qgs={15733,15761},r=1,repeatable=1,u=2}),
q(8845,{coords={{33.4,75.4,85},{46.3,35.1,85}},cost={{"i",21438,10}},qgs={15733,15761},r=1,repeatable=1,sourceQuests={8826},u=2}),
q(8851,{coords={{30.3,67.6,85}},cost={{"i",21438,5}},lvl=10,qgs={15700},r=1,repeatable=1,u=2,g={
i(21509,{b=1,q=1,u=2})}}),
q(8852,{coords={{30.3,67.6,85}},cost={{"i",21438,10}},lvl=20,qgs={15700},r=1,repeatable=1,u=2,g={
i(21510,{b=1,q=1,u=2})}}),
q(8853,{coords={{30.3,67.6,85}},cost={{"i",21438,15}},lvl=30,qgs={15700},r=1,repeatable=1,u=2,g={
i(21511,{b=1,q=1,u=2})}}),
q(8854,{coords={{30.3,67.6,85}},cost={{"i",21438,20}},lvl=40,qgs={15700},r=1,repeatable=1,u=2,g={
i(21512,{b=1,q=1,u=2})}}),
q(8855,{coords={{30.3,67.6,85}},cost={{"i",21438,30}},lvl=50,qgs={15700},r=1,repeatable=1,u=2,g={
i(21513,{b=1,q=1,u=2})}}),
q(8615,{coords={{28.8,67.8,85}},cost={{"i",13935,20}},qgs={15535},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8616,{coords={{28.8,67.8,85}},cost={{"i",13935,20}},qgs={15535},r=1,repeatable=1,sourceQuests={8615},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8532,{coords={{31.1,66.1,85}},cost={{"i",2840,20}},qgs={15459},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8533,{coords={{31.1,66.1,85}},cost={{"i",2840,20}},qgs={15459},r=1,repeatable=1,sourceQuests={8532},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8580,{coords={{32.8,70.4,85}},cost={{"i",4625,20}},qgs={15508},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8581,{coords={{32.8,70.4,85}},cost={{"i",4625,20}},qgs={15508},r=1,repeatable=1,sourceQuests={8580},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8588,{coords={{36,73.4,85}},cost={{"i",4234,10}},qgs={15515},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8589,{coords={{36,73.4,85}},cost={{"i",4234,10}},qgs={15515},r=1,repeatable=1,sourceQuests={8588},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21511,{b=1,q=1,u=2})}}),
q(8611,{coords={{29.5,68.8,85}},cost={{"i",12209,20}},qgs={15533},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8612,{coords={{29.5,68.8,85}},cost={{"i",12209,20}},qgs={15533},r=1,repeatable=1,sourceQuests={8611},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8607,{coords={{31.3,75.1,85}},cost={{"i",8544,20}},qgs={15529},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8608,{coords={{31.3,75.1,85}},cost={{"i",8544,20}},qgs={15529},r=1,repeatable=1,sourceQuests={8607},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8545,{coords={{31.5,66.8,85}},cost={{"i",3860,20}},qgs={15469},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8546,{coords={{31.5,66.8,85}},cost={{"i",3860,20}},qgs={15469},r=1,repeatable=1,sourceQuests={8545},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8549,{coords={{33.3,69.6,85}},cost={{"i",2447,20}},qgs={15477},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8550,{coords={{33.3,69.6,85}},cost={{"i",2447,20}},qgs={15477},r=1,repeatable=1,sourceQuests={8549},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21509,{b=1,q=1,u=2})}}),
q(8582,{coords={{32.8,68.7,85}},cost={{"i",8831,20}},qgs={15512},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8583,{coords={{32.8,68.7,85}},cost={{"i",8831,20}},qgs={15512},r=1,repeatable=1,sourceQuests={8582},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8600,{coords={{35.1,72.6,85}},cost={{"i",8170,10}},qgs={15525},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8601,{coords={{35.1,72.6,85}},cost={{"i",8170,10}},qgs={15525},r=1,repeatable=1,sourceQuests={8600},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8609,{coords={{32.2,75.3,85}},cost={{"i",14529,20}},qgs={15532},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8610,{coords={{32.2,75.3,85}},cost={{"i",14529,20}},qgs={15532},r=1,repeatable=1,sourceQuests={8609},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21513,{b=1,q=1,u=2})}}),
q(8613,{coords={{29,68.5,85}},cost={{"i",6887,20}},qgs={15534},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8614,{coords={{29,68.5,85}},cost={{"i",6887,20}},qgs={15534},r=1,repeatable=1,sourceQuests={8613},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8590,{coords={{34,72.7,85}},cost={{"i",4304,10}},qgs={15522},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8591,{coords={{34,72.7,85}},cost={{"i",4304,10}},qgs={15522},r=1,repeatable=1,sourceQuests={8590},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21512,{b=1,q=1,u=2})}}),
q(8542,{coords={{30.9,65.4,85}},cost={{"i",3576,20}},qgs={15460},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8543,{coords={{30.9,65.4,85}},cost={{"i",3576,20}},qgs={15460},r=1,repeatable=1,sourceQuests={8542},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8604,{coords={{31.2,74.1,85}},cost={{"i",3530,20}},qgs={15528},r=1,u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8605,{coords={{31.2,74.1,85}},cost={{"i",3530,20}},qgs={15528},r=1,repeatable=1,sourceQuests={8604},u=2,g={
i(21438,{b=1,q=1,r=1,u=2}),
i(21510,{b=1,q=1,u=2})}}),
q(8792,{coords={{38.8,52.9,88}},lvl=10,qgs={15702},r=1,u=2}),
q(8793,{coords={{62.8,49.2,998}},lvl=10,qgs={15703},r=1,u=2}),
q(8794,{coords={{30.3,67.6,85}},lvl=10,qgs={15704},r=1,u=2}),
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
h(-483,{lvl=60,maps={71,75},rwp=40003,u=2,g={
h(-45,{u=2,g={
q(8519,{coords={{28.7,89.1,81}},lvl=60,minReputation={910,0},providers={{"o",180633}},sourceQuests={8305},u=2}),
q(8303,{coords={{49.5,36.4,81}},lvl=60,minReputation={910,0},providers={{"i",20415}},qgs={15180},sourceQuests={8301},u=2}),
q(8575,{coords={{57,85.6,76}},lvl=60,providers={{"i",20949}},qgs={15481},sourceQuests={8555},u=2}),
q(8743,{coords={{25.7,90.9,81}},lvl=60,providers={{"i",21175},{"o",180717}},sourceQuests={8742},u=2,g={
ach(416,{sourceQuests={8743},u=2}),
title(33,{awp=20003,u=2}),
mnt(26656,{b=1,itemID=21176,lvl=40,q=5,u=2})}}),
q(8606,{coords={{65.2,18.6,71}},lvl=60,maps={83},qgs={11811},sourceQuests={8598},u=2,g={
qo(1,{coords={{65,72,83}},providers={{"i",21039},{"i",21040},{"i",21041},{"n",15554}},u=2}),
i(21042,{b=1,q=1,u=2,g={
i(21037,{b=1,q=1,u=2}),
i(21041,{b=1,q=1,u=2}),
i(21039,{b=1,q=1,u=2}),
s(131528,21040,{b=1,f=4,q=1,u=2})}})}}),
q(8597,{coords={{65.2,18.6,71}},lvl=60,qgs={11811},sourceQuests={8576},u=2}),
q(8586,{coords={{52.6,28.1,71}},cost={{"i",8150,20},{"i",9061,20}},lvl=60,qgs={8125},sourceQuests={8585},u=2,g={
r(25659,{itemID=21025,learnedAt=300,q=4,requireSkill=185,u=2})}}),
q(8733,{lvl=60,maps={220},qgs={15362},sourceQuests={8555},u=2}),
q(8305,{coords={{65,50,71}},lvl=60,minReputation={910,0},qgs={15192},sourceQuests={8303},u=2}),
q(8599,{coords={{59.4,96,71}},lvl=60,providers={{"i",21032}},qgs={15526},sourceQuests={8597},u=2}),
q(8730,{lvl=60,maps={287},qgs={13020},sourceQuests={8555},u=2,g={
qo(1,{crs={11583},providers={{"i",21138}},u=2}),
i(21142,{crs={11583},description="You get this if you don't manage to kill Nefarian in time after starting the quest from Vaelastrasz.",q=1,u=2}),
i(21529,{b=1,f=51,lvl=60,q=4,u=2}),
s(131967,21530,{b=1,f=6,lvl=60,q=4,u=2})}}),
q(8584,{coords={{65.2,18.6,71}},lvl=60,qgs={11811},sourceQuests={8576},u=2}),
q(8288,{coords={{49.5,36.4,81}},lvl=60,maps={287},qgs={15180},sourceQuests={8286},u=2,g={
qo(1,{crs={12017},providers={{"i",20383}},u=2})}}),
q(8598,{coords={{59.4,96,71}},description="The dirt is on an island waaaaaay south of Tanaris. You'll need to speak to Meridith to get a buff to swim fast enough to reach the island without dying to Fatigue.",lvl=60,providers={{"i",21029},{"o",180652}},sourceQuests={8599},u=2}),
q(8587,{coords={{52.6,28.1,71}},lvl=60,providers={{"i",21028}},qgs={8125},sourceQuests={8586},u=2}),
q(8578,{coords={{46.2,86.7,21}},lvl=60,maps={232},minReputation={910,0},providers={{"o",180642}},sourceQuests={8577},u=2,g={
qo(1,{providers={{"i",20951}},u=2})}}),
q(8577,{coords={{65.2,18.6,71}},lvl=60,maps={21},qgs={11811},sourceQuests={8576},u=2}),
q(8741,{coords={{36.18,41.79,80}},lvl=60,minReputation={910,0},providers={{"i",21139}},qgs={11832},sourceQuests={8736},u=2}),
q(8555,{coords={{65,50,71}},lvl=60,minReputation={910,0},qgs={15192},sourceQuests={8519},u=2}),
q(8728,{coords={{65.2,18.6,71}},cost={{"i",12361,10},{"i",12800,10},{"i",18562,10},{"i",12360,20}},lvl=60,qgs={11811},sourceQuests={8578,8587,8620},u=2}),
q(8302,{coords={{49.5,36.4,81}},cost={{"i",20384,200}},lvl=60,maxReputation={910,0},qgs={15180},repeatable=1,sourceQuests={8301},u=2,g={
i(20403,{b=1,q=2,u=2})}}),
q(8585,{coords={{52.6,28.1,71}},cost={{"i",21024,20}},lvl=60,maps={69},qgs={8125},sourceQuests={8584},u=2,g={
qo(1,{coords={{29.8,72.6,69}},crs={12803},providers={{"i",21027}},u=2})}}),
q(8742,{coords={{65,50,71}},lvl=60,qgs={15192},sourceQuests={8729,8730,8741},u=2,g={
i(21175,{b=1,q=1,u=2})}}),
q(8736,{coords={{36.18,41.79,80}},description="You do NOT want to kill Eranikus or allow Remulos to die.",lvl=60,minReputation={910,0},qgs={11832},sourceQuests={8735},u=2,g={
i(21531,{b=1,f=51,lvl=60,q=4,u=2}),
s(131969,21532,{b=1,f=5,lvl=60,q=4,u=2})}}),
q(8735,{coords={{36.18,41.79,80}},lvl=60,maps={26,47,63,69},minReputation={910,0},qgs={11832},sourceQuests={8734},u=2,g={
qo(1,{coords={{91.6,39,63}},crs={12474,12475,12476},providers={{"i",21147}},u=2}),
qo(2,{coords={{48,33,47}},crs={15625},description="It is recommended that you bring at least 30 players and they should be experienced raiders.",providers={{"i",21149}},u=2}),
qo(3,{coords={{50.4,15.9,69}},crs={5317,5319,5320},providers={{"i",21148}},u=2}),
qo(4,{coords={{61.6,27.7,26}},crs={12477,12478,12479},providers={{"i",21146}},u=2})}}),
q(8620,{coords={{65.2,18.6,71}},lvl=60,maps={17,70,83,84,232,248,287,998},qgs={11811},sourceQuests={8606},u=2,g={
qo(1,{cost={{"i",21110,1},{"i",21109,1},{"i",21108,1},{"i",21107,1},{"i",21106,1},{"i",21105,1},{"i",21104,1},{"i",21103,1},{"i",21112,1}},providers={{"i",21111}},u=2}),
i(21103,{b=1,coords={{77.8,17,70}},crs={15552},q=4,u=2}),
i(21104,{b=1,coords={{44.6,56,17}},crs={8716,8717,12396},q=4,u=2}),
i(21105,{b=1,coords={{51.6,84.4,83},{54.6,87.4,83},{65,80.2,83}},crs={7461,7463,10201},q=4,u=2}),
i(21106,{b=1,coords={{77,38,998}},providers={{"o",180666}},q=4,u=2}),
i(21107,{b=1,coords={{75.35,29.73,84}},providers={{"o",180665}},q=4,u=2}),
i(21108,{b=1,crs={10184},q=4,u=2}),
i(21109,{b=1,coords={{32,42.9,287}},description="Located in Blackwing Lair on one of the tables on the ramp after the first wyrmguard overseer pull.",providers={{"o",180667}},q=4,u=2}),
i(21110,{b=1,crs={11502},q=4,u=2}),
s(131955,21517,{b=1,f=4,lvl=60,q=4,u=2})}}),
q(8301,{coords={{49.5,36.4,81}},cost={{"i",20384,200}},lvl=60,providers={{"i",20402}},qgs={15180},sourceQuests={8288},u=2,g={
i(20403,{b=1,q=2,u=2})}}),
q(8729,{coords={{65.2,18.6,71}},lvl=60,maps={76},qgs={11811},sourceQuests={8728},u=2,g={
qo(1,{coords={{65,55,76}},cost={{"i",21136,1}},crs={15571},description="This summons a 40 man raid boss.",providers={{"i",21137},{"o",180669}},u=2}),
i(21526,{b=1,f=52,lvl=60,q=4,u=2}),
s(131964,21527,{b=1,f=4,lvl=60,q=4,u=2})}}),
q(8576,{coords={{65.2,18.6,71}},lvl=60,qgs={11811},sourceQuests={8575},u=2}),
q(8745,{coords={{25.9,91,81}},lvl=60,providers={{"i",21175}},qgs={15693},sourceQuests={8742},u=2,g={
ach(5533,{awp=40003,u=2}),
s(131960,21523,{b=1,f=20,lvl=60,q=4,u=2}),
s(131959,21522,{b=1,f=20,lvl=60,q=4,u=2}),
s(131958,21521,{b=1,f=25,lvl=60,q=4,u=2}),
s(131957,21520,{b=1,f=25,lvl=60,q=4,u=2})}}),
q(8734,{coords={{37.5,47.9,57}},lvl=60,minReputation={910,0},qgs={15624},sourceQuests={8733},u=2}),
q(8286,{coords={{49.5,36.4,81}},description="This quest line is a prerequisite for the Ahn'Qiraj scepter line used to open the doors to Ahn'Qiraj.",lvl=60,qgs={15180},u=2})}})}}),
h(-484,{maps={17,23,36,71,76,83,111},rwp=30003,u=2,g={
h(-12,{u=2,g={
ach(2116,{providers={{"i",22999}},u=2})}}),
h(-45,{u=2,g={
q(12753,{awp=30002,lvl=65,qgs={20102},races={3},u=2}),
q(12772,{awp=30002,lvl=65,maps={89},qgs={19173},races={4},u=2}),
q(12775,{awp=30002,lvl=65,maps={84},qgs={18927},races={1},u=2}),
q(12777,{awp=30002,lvl=65,maps={84},qgs={18927},races={11},u=2}),
q(12808,{awp=30002,lvl=65,races={7},u=2}),
q(9094,{coords={{81,59.8,23},{54.7,62.2,84},{34,66.4,87},{64.3,44.5,89}},cost={{"i",22484,30}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
s(133483,23084,{b=1,f=4,q=3,u=2}),
s(201226,23081,{b=1,f=5,q=3,u=2}),
s(133481,23082,{b=1,f=6,q=3,u=2}),
s(133477,23078,{b=1,f=7,q=3,u=2})}}),
q(9333,{coords={{80.8,59.6,23},{52.5,73.7,85},{43.7,52.6,88},{49.9,29.4,998}},cost={{"i",22484,30}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
s(133483,23084,{b=1,f=4,q=3,u=2}),
s(201226,23081,{b=1,f=5,q=3,u=2}),
s(133481,23082,{b=1,f=6,q=3,u=2}),
s(133477,23078,{b=1,f=7,q=3,u=2})}}),
q(9318,{coords={{81,59.8,23},{54.7,62.2,84},{34,66.4,87},{64.3,44.5,89}},cost={{"i",22484,8}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(23123,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(9334,{coords={{80.8,59.6,23},{52.5,73.7,85},{43.7,52.6,88},{49.9,29.4,998}},cost={{"i",22484,8}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(23123,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(12616,{awp=30002,lvl=70,maps={350},qgs={16285},u=2,g={
i(40354,{b=1,f=53,lvl=70,q=3,u=2})}}),
q(9317,{coords={{81,59.8,23},{54.7,62.2,84},{34,66.4,87},{64.3,44.5,89}},cost={{"i",22484,8}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(23122,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(9335,{coords={{80.8,59.6,23},{52.5,73.7,85},{43.7,52.6,88},{49.9,29.4,998}},cost={{"i",22484,8}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(23122,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(9292,{description="If you hear the yell across the city that they've invaded the Park, head for the canals between the Keep and the Park, that is where the elite abomination will be (heading from the Park to the Keep on the north side of the canal).\n\nWhen he dies, the crystal appears above his corpse and everyone (of the appropriate level) can click on it and get the quest regardless of who tagged him first.",isYearly=1,maps={84},providers={{"i",22949}},qgs={16431},r=2,u=2,g={
i(23123,{b=1,f=55,lvl=50,q=2,u=2}),
i(23122,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(12773,{awp=30002,lvl=65,maps={89},providers={{"i",39698}},qgs={29087},races={4},sourceQuests={12753},u=2}),
q(12783,{awp=30002,lvl=65,races={8},u=2}),
q(12752,{awp=30002,lvl=65,races={5},u=2}),
q(12782,{awp=30002,lvl=65,races={10},u=2}),
q(12784,{awp=30002,lvl=65,races={6},u=2}),
q(12811,{awp=30002,lvl=65,races={2},u=2}),
q(9304,{lvl=45,providers={{"i",22948},{"i",22975}},u=2}),
q(9301,{lvl=45,providers={{"i",22930},{"i",22970}},u=2}),
q(9310,{description="If you hear the yell across the city that they've invaded the Sewers, head for the canals between the Sewers and the Royal Quarter, that is where the elite abomination will be.\n\nWhen he dies, the crystal appears above his corpse and everyone (of the appropriate level) can click on it and get the quest regardless of who tagged him first.",isYearly=1,maps={18,998},providers={{"i",22950}},qgs={16531},r=1,u=2,g={
i(23123,{b=1,f=55,lvl=50,q=2,u=2}),
i(23122,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(9262,{coords={{77.7,42.7,89}},isYearly=1,maps={57},qgs={16495},r=2,u=2,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=2})}}),
q(9261,{coords={{53.2,35,27}},isYearly=1,maps={87},qgs={16484},r=2,u=2,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=2})}}),
q(9263,{coords={{51.7,83.3,85}},isYearly=1,maps={1},qgs={16493},r=1,u=2,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=2})}}),
q(9260,{coords={{63.8,75.5,84}},isYearly=1,maps={37},qgs={16478},r=2,u=2,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=2})}}),
q(9265,{coords={{66.2,21.4,998}},isYearly=1,maps={18},qgs={16494},r=1,u=2,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=2})}}),
q(9264,{coords={{33.1,59.9,88}},isYearly=1,maps={7},qgs={16490},r=1,u=2,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=2})}}),
q(12771,{awp=30002,lvl=65,maps={87},providers={{"i",39698}},qgs={29087},races={3},sourceQuests={12753},u=2}),
q(12809,{awp=30002,lvl=65,maps={87},providers={{"i",39698}},qgs={29087},races={7},sourceQuests={12808},u=2}),
q(9295,{lvl=45,providers={{"i",22932},{"i",22977}},u=2}),
q(9154,{coords={{53.1,35,27},{55,62,84},{64.1,75,84},{51.7,83.6,85},{53.1,73.6,85},{35.3,68.7,87},{32.9,60.1,88},{43.5,53.2,88},{64.5,44.2,89},{77.3,42.8,89},{49.5,32.1,998},{65.9,21.4,998}},isYearly=1,lvl=50,providers={{"i",22595}},qgs={16241,16255},u=2}),
q(9321,{coords={{81,59.8,23},{54.7,62.2,84},{34,66.4,87},{64.3,44.5,89}},cost={{"i",22484,15}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(13446,{f=55,lvl=45,q=1,u=2})}}),
q(9336,{coords={{80.8,59.6,23},{52.5,73.7,85},{43.7,52.6,88},{49.9,29.4,998}},cost={{"i",22484,15}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(13446,{f=55,lvl=45,q=1,u=2})}}),
q(9337,{coords={{81,59.8,23},{54.7,62.2,84},{34,66.4,87},{64.3,44.5,89}},cost={{"i",22484,15}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(13444,{f=55,lvl=49,q=1,u=2})}}),
q(9320,{coords={{80.8,59.6,23},{52.5,73.7,85},{43.7,52.6,88},{49.9,29.4,998}},cost={{"i",22484,15}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
i(13444,{f=55,lvl=49,q=1,u=2})}}),
q(9302,{lvl=45,providers={{"i",22944},{"i",22973}},u=2}),
q(9299,{lvl=45,providers={{"i",22945},{"i",22972}},u=2}),
q(12785,{awp=30002,lvl=65,maps={85},providers={{"i",40482}},qgs={28318},races={8},sourceQuests={12783},u=2}),
q(12812,{awp=30002,lvl=65,maps={85},providers={{"i",40482}},qgs={28318},races={2},sourceQuests={12811},u=2}),
q(9300,{lvl=45,providers={{"i",22946},{"i",22974}},u=2}),
q(9085,{coords={{81.1,60.6,23}},isYearly=1,lvl=50,qgs={16361},u=2,g={
qo(1,{providers={{"n",16143}},u=2}),
i(23123,{b=1,f=55,lvl=50,q=2,u=2}),
i(23122,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(12788,{awp=30002,lvl=65,maps={110},providers={{"i",40482}},qgs={28318},races={10},sourceQuests={12782},u=2}),
q(12774,{awp=30002,lvl=65,maps={84},providers={{"i",39698}},qgs={29087},races={1},sourceQuests={12775},u=2}),
q(9341,{coords={{81,59.8,23},{54.7,62.2,84},{34,66.4,87},{64.3,44.5,89}},cost={{"i",22484,10}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
s(133398,22999,{b=1,f=9,q=1,u=2})}}),
q(9343,{coords={{80.8,59.6,23},{52.5,73.7,85},{43.7,52.6,88},{49.9,29.4,998}},cost={{"i",22484,10}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=2,g={
s(133398,22999,{b=1,f=9,q=1,u=2})}}),
q(12776,{awp=30002,lvl=65,maps={103},providers={{"i",39698}},qgs={29087},races={11},sourceQuests={12777},u=2}),
q(9247,{coords={{81.1,60.5,23}},description="You should receive this in the mail at level 60.",isYearly=1,lvl=60,providers={{"i",22723}},qgs={16281},u=2,g={
i(23123,{b=1,f=55,lvl=50,q=2,u=2}),
i(23122,{b=1,f=55,lvl=50,q=2,u=2})}}),
q(12787,{awp=30002,lvl=65,maps={998},providers={{"i",40482}},qgs={28318},races={5},sourceQuests={12752},u=2}),
q(12786,{awp=30002,lvl=65,maps={88},providers={{"i",40482}},qgs={28318},races={6},sourceQuests={12784},u=2}),
q(9153,{coords={{81.1,60.6,23}},cost={{"i",22484,10}},isYearly=1,lvl=50,qgs={16361},u=2,g={
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
p(187,{b=1,description="Drops for everyone in the raid. Get one on all of your alts!",itemID=38658,npcID=28513,q=3,spellID=51851,u=2}),
s(172714,39769,{b=1,description="Only ONE of these drops per raid. Help your friends get one on their account by bringing your alts! Highly recommend 6-8 manning the boss for this item and hard reserving it for one person per raid group.",f=22,lvl=70,q=4,u=2})}}),
h(-58,{u=2,g={
n(16786,{coords={{80.9,59.6,23},{54.7,62.2,84},{52.5,73.7,85},{34,66.4,87},{43.7,52.6,88},{64.3,44.5,89},{49.9,29.4,998}},u=2,g={
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
i(23016,{b=1,q=1,u=2})}})}})};
end);
