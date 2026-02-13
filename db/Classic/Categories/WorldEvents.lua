if not (not C_Seasons or C_Seasons.GetActiveSeason() ~= 2) then return; end 
---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnGetDataCache", function(categories)
local ach,h,i,mnt,n,q,qo,r,s=_.CreateAchievement,_.CreateCustomHeader,_.CreateItem,_.CreateMount,_.CreateNPC,_.CreateQuest,_.CreateQuestObjective,_.CreateRecipe,_.CreateItemSource;
categories.WorldEvents={
h(-103),
h(-481,{maps={1454,1455},rwp=20001,u=1501,g={
h(-210,{r=2,u=1501,g={
q(8811,{coords={{55.2,64.7,1453},{59.3,64.1,1455}},cost={{"i",21436,1}},description="Grants 5 reputation with Stormwind",qgs={15735,15766},r=2,repeatable=1,u=1501}),
q(8830,{coords={{55.2,64.7,1453},{59.3,64.1,1455}},cost={{"i",21436,1}},description="Grants 5 reputation with Stormwind",qgs={15735,15766},r=2,repeatable=1,sourceQuests={8811},u=1501}),
q(8812,{coords={{43.2,46.5,1455},{61,77.1,1455}},cost={{"i",21436,1}},description="Grants 5 reputation with Ironforge",qgs={15734,15764},r=2,repeatable=1,u=1501}),
q(8834,{coords={{43.2,46.5,1455},{61,77.1,1455}},cost={{"i",21436,1}},description="Grants 5 reputation with Ironforge",qgs={15734,15764},r=2,repeatable=1,sourceQuests={8812},u=1501}),
q(8813,{coords={{59.1,65.5,1455},{38.2,38.7,1457}},cost={{"i",21436,1}},description="Grants 5 reputation with Darnassus",qgs={15731,15762},r=2,repeatable=1,u=1501}),
q(8836,{coords={{59.1,65.5,1455},{38.2,38.7,1457}},cost={{"i",21436,1}},description="Grants 5 reputation with Darnassus",qgs={15731,15762},r=2,repeatable=1,sourceQuests={8813},u=1501}),
q(8814,{coords={{63.3,73.7,1455},{69.7,46,1455}},cost={{"i",21436,1}},description="Grants 5 reputation with Gnomeregan",qgs={15733,15763},r=2,repeatable=1,u=1501}),
q(8838,{coords={{63.3,73.7,1455},{69.7,46,1455}},cost={{"i",21436,1}},description="Grants 5 reputation with Gnomeregan",qgs={15733,15763},r=2,repeatable=1,sourceQuests={8814},u=1501}),
q(8819,{coords={{55.2,64.7,1453},{59.3,64.1,1455}},cost={{"i",21436,10}},description="Grants 150 reputation with Stormwind",qgs={15735,15766},r=2,repeatable=1,u=1501}),
q(8831,{coords={{55.2,64.7,1453},{59.3,64.1,1455}},cost={{"i",21436,10}},description="Grants 150 reputation with Stormwind",qgs={15735,15766},r=2,repeatable=1,sourceQuests={8819},u=1501}),
q(8820,{coords={{43.2,46.5,1455},{61,77.1,1455}},cost={{"i",21436,10}},description="Grants 150 reputation with Ironforge",qgs={15734,15764},r=2,repeatable=1,u=1501}),
q(8835,{coords={{43.2,46.5,1455},{61,77.1,1455}},cost={{"i",21436,10}},description="Grants 150 reputation with Ironforge",qgs={15734,15764},r=2,repeatable=1,sourceQuests={8820},u=1501}),
q(8821,{coords={{59.1,65.5,1455},{38.2,38.7,1457}},cost={{"i",21436,10}},description="Grants 150 reputation with Darnassus",qgs={15731,15762},r=2,repeatable=1,u=1501}),
q(8837,{coords={{59.1,65.5,1455},{38.2,38.7,1457}},cost={{"i",21436,10}},description="Grants 150 reputation with Darnassus",qgs={15731,15762},r=2,repeatable=1,sourceQuests={8821},u=1501}),
q(8822,{coords={{63.3,73.7,1455},{69.7,46,1455}},cost={{"i",21436,10}},description="Grants 150 reputation with Gnomeregan",qgs={15733,15763},r=2,repeatable=1,u=1501}),
q(8839,{coords={{63.3,73.7,1455},{69.7,46,1455}},cost={{"i",21436,10}},description="Grants 150 reputation with Gnomeregan",qgs={15733,15763},r=2,repeatable=1,sourceQuests={8822},u=1501}),
q(8846,{coords={{61.3,74.2,1455}},cost={{"i",21436,5}},lvl=10,qgs={15701},r=2,repeatable=1,u=1501,g={
i(21509,{b=1,q=1,u=1501})}}),
q(8847,{coords={{61.3,74.2,1455}},cost={{"i",21436,10}},lvl=20,qgs={15701},r=2,repeatable=1,u=1501,g={
i(21510,{b=1,q=1,u=1501})}}),
q(8848,{coords={{61.3,74.2,1455}},cost={{"i",21436,15}},lvl=30,qgs={15701},r=2,repeatable=1,u=1501,g={
i(21511,{b=1,q=1,u=1501})}}),
q(8849,{coords={{61.3,74.2,1455}},cost={{"i",21436,20}},lvl=40,qgs={15701},r=2,repeatable=1,u=1501,g={
i(21512,{b=1,q=1,u=1501})}}),
q(8850,{coords={{61.3,74.2,1455}},cost={{"i",21436,30}},lvl=50,qgs={15701},r=2,repeatable=1,u=1501,g={
i(21513,{b=1,q=1,u=1501})}}),
q(8509,{coords={{71.3,71.4,1455}},cost={{"i",8836,20}},qgs={15445},r=2,u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21513,{b=1,q=1,u=1501})}}),
q(8510,{coords={{71.3,71.4,1455}},cost={{"i",8836,20}},qgs={15445},r=2,repeatable=1,sourceQuests={8509},u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21513,{b=1,q=1,u=1501})}}),
q(8492,{coords={{64.1,65.5,1455}},cost={{"i",2840,20}},qgs={15383},r=2,u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21509,{b=1,q=1,u=1501})}}),
q(8493,{coords={{64.1,65.5,1455}},cost={{"i",2840,20}},qgs={15383},r=2,repeatable=1,sourceQuests={8492},u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21509,{b=1,q=1,u=1501})}}),
q(8494,{coords={{65.5,63.9,1455}},cost={{"i",3575,20}},qgs={15431},r=2,u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21511,{b=1,q=1,u=1501})}}),
q(8495,{coords={{65.5,63.9,1455}},cost={{"i",3575,20}},qgs={15431},r=2,repeatable=1,sourceQuests={8494},u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21511,{b=1,q=1,u=1501})}}),
q(8511,{coords={{58,75.9,1455}},cost={{"i",2318,10}},qgs={15446},r=2,u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21509,{b=1,q=1,u=1501})}}),
q(8512,{coords={{58,75.9,1455}},cost={{"i",2318,10}},qgs={15446},r=2,repeatable=1,sourceQuests={8511},u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21509,{b=1,q=1,u=1501})}}),
q(8517,{coords={{55.4,76.2,1455}},cost={{"i",1251,20}},qgs={15451},r=2,u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21509,{b=1,q=1,u=1501})}}),
q(8518,{coords={{55.4,76.2,1455}},cost={{"i",1251,20}},qgs={15451},r=2,repeatable=1,sourceQuests={8517},u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21509,{b=1,q=1,u=1501})}}),
q(8513,{coords={{58.7,75,1455}},cost={{"i",2319,10}},qgs={15448},r=2,u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21510,{b=1,q=1,u=1501})}}),
q(8514,{coords={{58.7,75,1455}},cost={{"i",2319,10}},qgs={15448},r=2,repeatable=1,sourceQuests={8513},u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21510,{b=1,q=1,u=1501})}}),
q(8505,{coords={{71.9,70.4,1455}},cost={{"i",8831,20}},qgs={15437},r=2,u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8506,{coords={{71.9,70.4,1455}},cost={{"i",8831,20}},qgs={15437},r=2,repeatable=1,sourceQuests={8505},u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8524,{coords={{71.6,69.2,1455}},cost={{"i",5095,20}},qgs={15455},r=2,u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21509,{b=1,q=1,u=1501})}}),
q(8525,{coords={{71.6,69.2,1455}},cost={{"i",5095,20}},qgs={15455},r=2,repeatable=1,sourceQuests={8524},u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21509,{b=1,q=1,u=1501})}}),
q(8526,{coords={{72.1,69.6,1455}},cost={{"i",12210,20}},qgs={15456},r=2,u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21511,{b=1,q=1,u=1501})}}),
q(8527,{coords={{72.1,69.6,1455}},cost={{"i",12210,20}},qgs={15456},r=2,repeatable=1,sourceQuests={8526},u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21511,{b=1,q=1,u=1501})}}),
q(8522,{coords={{55.7,75.9,1455}},cost={{"i",14529,20}},qgs={15453},r=2,u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21513,{b=1,q=1,u=1501})}}),
q(8523,{coords={{55.7,75.9,1455}},cost={{"i",14529,20}},qgs={15453},r=2,repeatable=1,sourceQuests={8522},u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21513,{b=1,q=1,u=1501})}}),
q(8520,{coords={{57.6,75.8,1455}},cost={{"i",6450,20}},qgs={15452},r=2,u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21511,{b=1,q=1,u=1501})}}),
q(8521,{coords={{57.6,75.8,1455}},cost={{"i",6450,20}},qgs={15452},r=2,repeatable=1,sourceQuests={8520},u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21511,{b=1,q=1,u=1501})}}),
q(8528,{coords={{73,68.5,1455}},cost={{"i",6887,20}},qgs={15457},r=2,u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8529,{coords={{73,68.5,1455}},cost={{"i",6887,20}},qgs={15457},r=2,repeatable=1,sourceQuests={8528},u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8503,{coords={{70.3,74.3,1455}},cost={{"i",3820,20}},qgs={15434},r=2,u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21510,{b=1,q=1,u=1501})}}),
q(8504,{coords={{70.3,74.3,1455}},cost={{"i",3820,20}},qgs={15434},r=2,repeatable=1,sourceQuests={8503},u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21510,{b=1,q=1,u=1501})}}),
q(8515,{coords={{57.1,75,1455}},cost={{"i",4304,10}},qgs={15450},r=2,u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8516,{coords={{57.1,75,1455}},cost={{"i",4304,10}},qgs={15450},r=2,repeatable=1,sourceQuests={8515},u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8499,{coords={{63.9,68.2,1455}},cost={{"i",12359,20}},qgs={15432},r=2,u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21513,{b=1,q=1,u=1501})}}),
q(8500,{coords={{63.9,68.2,1455}},cost={{"i",12359,20}},qgs={15432},r=2,repeatable=1,sourceQuests={8499},u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21513,{b=1,q=1,u=1501})}}),
q(8797,{coords={{39.1,38.3,1457}},lvl=10,qgs={15709},r=2,u=1501}),
q(8795,{coords={{27.5,73.3,1455}},lvl=10,qgs={15707},r=2,u=1501}),
q(8796,{coords={{54.1,59.6,1453}},lvl=10,qgs={15708},r=2,u=1501})}}),
h(-211,{r=1,u=1501,g={
q(8815,{coords={{30,72.2,1454},{42.5,38.7,1454}},cost={{"i",21438,1}},description="Grants 5 reputation with Orgrimmar",qgs={15736,15765},r=1,repeatable=1,u=1501}),
q(8840,{coords={{30,72.2,1454},{42.5,38.7,1454}},cost={{"i",21438,1}},description="Grants 5 reputation with Orgrimmar",qgs={15736,15765},r=1,repeatable=1,sourceQuests={8815},u=1501}),
q(8816,{coords={{28.8,65.7,1454},{61.9,45.3,1458}},cost={{"i",21438,1}},description="Grants 5 reputation with Undercity",qgs={15734,15764},r=1,repeatable=1,u=1501}),
q(8832,{coords={{28.8,65.7,1454},{61.9,45.3,1458}},cost={{"i",21438,1}},description="Grants 5 reputation with Undercity",qgs={15734,15764},r=1,repeatable=1,sourceQuests={8816},u=1501}),
q(8817,{coords={{33.1,71.5,1454},{42.4,57,1456}},cost={{"i",21438,1}},description="Grants 5 reputation with Thunder Bluff",qgs={15739,15767},r=1,repeatable=1,u=1501}),
q(8842,{coords={{33.1,71.5,1454},{42.4,57,1456}},cost={{"i",21438,1}},description="Grants 5 reputation with Thunder Bluff",qgs={15739,15767},r=1,repeatable=1,sourceQuests={8817},u=1501}),
q(8818,{coords={{33.4,75.4,1454},{46.3,35.1,1454}},cost={{"i",21438,1}},description="Grants 5 reputation with Darkspear",qgs={15733,15761},r=1,repeatable=1,u=1501}),
q(8844,{coords={{33.4,75.4,1454},{46.3,35.1,1454}},cost={{"i",21438,1}},description="Grants 5 reputation with Darkspear",qgs={15733,15761},r=1,repeatable=1,sourceQuests={8818},u=1501}),
q(8823,{coords={{30,72.2,1454},{42.5,38.7,1454}},cost={{"i",21438,10}},description="Grants 150 reputation with Orgrimmar",qgs={15736,15765},r=1,repeatable=1,u=1501}),
q(8841,{coords={{30,72.2,1454},{42.5,38.7,1454}},cost={{"i",21438,10}},description="Grants 150 reputation with Orgrimmar",qgs={15736,15765},r=1,repeatable=1,sourceQuests={8823},u=1501}),
q(8824,{coords={{28.8,65.7,1454},{61.9,45.3,1458}},cost={{"i",21438,10}},description="Grants 150 reputation with Undercity",qgs={15734,15764},r=1,repeatable=1,u=1501}),
q(8833,{coords={{28.8,65.7,1454},{61.9,45.3,1458}},cost={{"i",21438,10}},description="Grants 150 reputation with Undercity",qgs={15734,15764},r=1,repeatable=1,sourceQuests={8824},u=1501}),
q(8825,{coords={{33.1,71.5,1454},{42.4,57,1456}},cost={{"i",21438,10}},description="Grants 150 reputation with Thunder Bluff",qgs={15739,15767},r=1,repeatable=1,u=1501}),
q(8843,{coords={{33.1,71.5,1454},{42.4,57,1456}},cost={{"i",21438,10}},description="Grants 150 reputation with Thunder Bluff",qgs={15739,15767},r=1,repeatable=1,sourceQuests={8825},u=1501}),
q(8826,{coords={{33.4,75.4,1454},{46.3,35.1,1454}},cost={{"i",21438,10}},description="Grants 150 reputation with Darkspear",qgs={15733,15761},r=1,repeatable=1,u=1501}),
q(8845,{coords={{33.4,75.4,1454},{46.3,35.1,1454}},cost={{"i",21438,10}},description="Grants 150 reputation with Darkspear",qgs={15733,15761},r=1,repeatable=1,sourceQuests={8826},u=1501}),
q(8851,{coords={{30.3,67.6,1454}},cost={{"i",21438,5}},lvl=10,qgs={15700},r=1,repeatable=1,u=1501,g={
i(21509,{b=1,q=1,u=1501})}}),
q(8852,{coords={{30.3,67.6,1454}},cost={{"i",21438,10}},lvl=20,qgs={15700},r=1,repeatable=1,u=1501,g={
i(21510,{b=1,q=1,u=1501})}}),
q(8853,{coords={{30.3,67.6,1454}},cost={{"i",21438,15}},lvl=30,qgs={15700},r=1,repeatable=1,u=1501,g={
i(21511,{b=1,q=1,u=1501})}}),
q(8854,{coords={{30.3,67.6,1454}},cost={{"i",21438,20}},lvl=40,qgs={15700},r=1,repeatable=1,u=1501,g={
i(21512,{b=1,q=1,u=1501})}}),
q(8855,{coords={{30.3,67.6,1454}},cost={{"i",21438,30}},lvl=50,qgs={15700},r=1,repeatable=1,u=1501,g={
i(21513,{b=1,q=1,u=1501})}}),
q(8615,{coords={{28.8,67.8,1454}},cost={{"i",13935,20}},qgs={15535},r=1,u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21513,{b=1,q=1,u=1501})}}),
q(8616,{coords={{28.8,67.8,1454}},cost={{"i",13935,20}},qgs={15535},r=1,repeatable=1,sourceQuests={8615},u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21513,{b=1,q=1,u=1501})}}),
q(8532,{coords={{31.1,66.1,1454}},cost={{"i",2840,20}},qgs={15459},r=1,u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21509,{b=1,q=1,u=1501})}}),
q(8533,{coords={{31.1,66.1,1454}},cost={{"i",2840,20}},qgs={15459},r=1,repeatable=1,sourceQuests={8532},u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21509,{b=1,q=1,u=1501})}}),
q(8580,{coords={{32.8,70.4,1454}},cost={{"i",4625,20}},qgs={15508},r=1,u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21511,{b=1,q=1,u=1501})}}),
q(8581,{coords={{32.8,70.4,1454}},cost={{"i",4625,20}},qgs={15508},r=1,repeatable=1,sourceQuests={8580},u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21511,{b=1,q=1,u=1501})}}),
q(8588,{coords={{36,73.4,1454}},cost={{"i",4234,10}},qgs={15515},r=1,u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21511,{b=1,q=1,u=1501})}}),
q(8589,{coords={{36,73.4,1454}},cost={{"i",4234,10}},qgs={15515},r=1,repeatable=1,sourceQuests={8588},u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21511,{b=1,q=1,u=1501})}}),
q(8611,{coords={{29.5,68.8,1454}},cost={{"i",12209,20}},qgs={15533},r=1,u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21510,{b=1,q=1,u=1501})}}),
q(8612,{coords={{29.5,68.8,1454}},cost={{"i",12209,20}},qgs={15533},r=1,repeatable=1,sourceQuests={8611},u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21510,{b=1,q=1,u=1501})}}),
q(8607,{coords={{31.3,75.1,1454}},cost={{"i",8544,20}},qgs={15529},r=1,u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8608,{coords={{31.3,75.1,1454}},cost={{"i",8544,20}},qgs={15529},r=1,repeatable=1,sourceQuests={8607},u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8545,{coords={{31.5,66.8,1454}},cost={{"i",3860,20}},qgs={15469},r=1,u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8546,{coords={{31.5,66.8,1454}},cost={{"i",3860,20}},qgs={15469},r=1,repeatable=1,sourceQuests={8545},u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8549,{coords={{33.3,69.6,1454}},cost={{"i",2447,20}},qgs={15477},r=1,u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21509,{b=1,q=1,u=1501})}}),
q(8550,{coords={{33.3,69.6,1454}},cost={{"i",2447,20}},qgs={15477},r=1,repeatable=1,sourceQuests={8549},u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21509,{b=1,q=1,u=1501})}}),
q(8582,{coords={{32.8,68.7,1454}},cost={{"i",8831,20}},qgs={15512},r=1,u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8583,{coords={{32.8,68.7,1454}},cost={{"i",8831,20}},qgs={15512},r=1,repeatable=1,sourceQuests={8582},u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8600,{coords={{35.1,72.6,1454}},cost={{"i",8170,10}},qgs={15525},r=1,u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21513,{b=1,q=1,u=1501})}}),
q(8601,{coords={{35.1,72.6,1454}},cost={{"i",8170,10}},qgs={15525},r=1,repeatable=1,sourceQuests={8600},u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21513,{b=1,q=1,u=1501})}}),
q(8609,{coords={{32.2,75.3,1454}},cost={{"i",14529,20}},qgs={15532},r=1,u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21513,{b=1,q=1,u=1501})}}),
q(8610,{coords={{32.2,75.3,1454}},cost={{"i",14529,20}},qgs={15532},r=1,repeatable=1,sourceQuests={8609},u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21513,{b=1,q=1,u=1501})}}),
q(8613,{coords={{29,68.5,1454}},cost={{"i",6887,20}},qgs={15534},r=1,u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8614,{coords={{29,68.5,1454}},cost={{"i",6887,20}},qgs={15534},r=1,repeatable=1,sourceQuests={8613},u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8590,{coords={{34,72.7,1454}},cost={{"i",4304,10}},qgs={15522},r=1,u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8591,{coords={{34,72.7,1454}},cost={{"i",4304,10}},qgs={15522},r=1,repeatable=1,sourceQuests={8590},u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21512,{b=1,q=1,u=1501})}}),
q(8542,{coords={{30.9,65.4,1454}},cost={{"i",3576,20}},qgs={15460},r=1,u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21510,{b=1,q=1,u=1501})}}),
q(8543,{coords={{30.9,65.4,1454}},cost={{"i",3576,20}},qgs={15460},r=1,repeatable=1,sourceQuests={8542},u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21510,{b=1,q=1,u=1501})}}),
q(8604,{coords={{31.2,74.1,1454}},cost={{"i",3530,20}},qgs={15528},r=1,u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21510,{b=1,q=1,u=1501})}}),
q(8605,{coords={{31.2,74.1,1454}},cost={{"i",3530,20}},qgs={15528},r=1,repeatable=1,sourceQuests={8604},u=1501,g={
i(21438,{b=1,q=1,r=1,u=1501}),
i(21510,{b=1,q=1,u=1501})}}),
q(8792,{coords={{38.8,52.9,1456}},lvl=10,qgs={15702},r=1,u=1501}),
q(8793,{coords={{62.8,49.2,1458}},lvl=10,qgs={15703},r=1,u=1501}),
q(8794,{coords={{30.3,67.6,1454}},lvl=10,qgs={15704},r=1,u=1501})}}),
h(-45,{u=1503,g={
q(8857,{crs={15742},lvl=51,providers={{"i",21534}},u=1503,g={
i(21528,{b=1,q=2,u=1503})}}),
q(8858,{crs={15741},lvl=51,providers={{"i",21535}},u=1503,g={
i(21528,{b=1,q=2,u=1503})}}),
q(8859,{crs={15740},lvl=51,providers={{"i",21533}},u=1503,g={
i(21528,{b=1,q=2,u=1503})}})}}),
h(-47,{u=1501,g={
i(21436,{b=1,q=1,r=2,u=1501}),
i(21438,{b=1,q=1,r=1,u=1501}),
i(21509,{b=1,description="Contains a random assortment of common and uncommon quality items between levels 10-12.",q=1,u=1501}),
i(21510,{b=1,description="Contains a random assortment of common, uncommon, and rare quality items between levels 20-22.",q=1,u=1501}),
i(21511,{b=1,description="Contains a random assortment of common, uncommon, and rare quality items between levels 30-32.",q=1,u=1501}),
i(21512,{b=1,description="Contains a random assortment of common, uncommon, and rare quality items between levels 40-42.",q=1,u=1501}),
i(21513,{b=1,description="Contains a random assortment of common, uncommon, and rare quality items between levels 50-52.",q=1,u=1501})}})}}),
h(-483,{lvl=60,maps={75,1446},rwp=40003,u=15,g={
h(-45,{u=15,g={
q(8519,{coords={{28.7,89.1,1451}},lvl=60,minReputation={910,0},providers={{"o",180633}},sourceQuests={8305},u=15}),
q(8303,{coords={{49.5,36.4,1451}},lvl=60,minReputation={910,0},providers={{"i",20415}},qgs={15180},sourceQuests={8301},u=15}),
q(8575,{coords={{57,85.6,1447}},lvl=60,providers={{"i",20949}},qgs={15481},sourceQuests={8555},u=15}),
q(8743,{coords={{25.7,90.9,1451}},lvl=60,providers={{"i",21175},{"o",180717}},sourceQuests={8742},u=1502,g={
ach(416,{sourceQuests={8743},u=1502}),
mnt(26656,{b=1,itemID=21176,lvl=60,q=5,u=1502})}}),
q(8606,{coords={{65.2,18.6,1446}},lvl=60,maps={1452},qgs={11811},sourceQuests={8598},u=15,g={
qo(1,{coords={{65,72,1452}},providers={{"i",21039},{"i",21040},{"i",21041},{"n",15554}},u=15}),
i(21042,{b=1,q=1,u=15,g={
i(21037,{b=1,q=1,u=15}),
i(21041,{b=1,q=1,u=15}),
i(21039,{b=1,q=1,u=15}),
s(164454,21040,{b=1,f=4,q=1,u=15})}})}}),
q(8597,{coords={{65.2,18.6,1446}},lvl=60,qgs={11811},sourceQuests={8576},u=15}),
q(8586,{coords={{52.6,28.1,1446}},cost={{"i",8150,20},{"i",9061,20}},lvl=60,qgs={8125},sourceQuests={8585},u=15,g={
r(25659,{itemID=21025,learnedAt=300,q=4,requireSkill=185,u=15})}}),
q(8733,{lvl=60,maps={220},qgs={15362},sourceQuests={8555},u=15}),
q(8305,{coords={{65,50,1446}},lvl=60,minReputation={910,0},qgs={15192},sourceQuests={8303},u=15}),
q(8599,{coords={{59.4,96,1446}},lvl=60,providers={{"i",21032}},qgs={15526},sourceQuests={8597},u=15}),
q(8730,{lvl=60,maps={287},qgs={13020},sourceQuests={8555},u=15,g={
qo(1,{crs={11583},providers={{"i",21138}},u=15}),
i(21142,{crs={11583},description="You get this if you don't manage to kill Nefarian in time after starting the quest from Vaelastrasz.",q=1,u=15}),
i(21529,{b=1,f=51,lvl=60,q=4,u=15}),
s(164650,21530,{b=1,f=6,lvl=60,q=4,u=15})}}),
q(8584,{coords={{65.2,18.6,1446}},lvl=60,qgs={11811},sourceQuests={8576},u=15}),
q(8288,{coords={{49.5,36.4,1451}},lvl=60,maps={287},qgs={15180},sourceQuests={8286},u=15,g={
qo(1,{crs={12017},providers={{"i",20383}},u=15})}}),
q(8598,{coords={{59.4,96,1446}},description="The dirt is on an island waaaaaay south of Tanaris. You'll need to speak to Meridith to get a buff to swim fast enough to reach the island without dying to Fatigue.",lvl=60,providers={{"i",21029},{"o",180652}},sourceQuests={8599},u=15}),
q(8587,{coords={{52.6,28.1,1446}},lvl=60,providers={{"i",21028}},qgs={8125},sourceQuests={8586},u=15}),
q(8578,{coords={{46.2,86.7,1421}},lvl=60,maps={232},minReputation={910,0},providers={{"o",180642}},sourceQuests={8577},u=15,g={
qo(1,{providers={{"i",20951}},u=15})}}),
q(8577,{coords={{65.2,18.6,1446}},lvl=60,maps={1421},qgs={11811},sourceQuests={8576},u=15}),
q(8741,{coords={{36.18,41.79,1450}},lvl=60,minReputation={910,0},providers={{"i",21139}},qgs={11832},sourceQuests={8736},u=15}),
q(8555,{coords={{65,50,1446}},lvl=60,minReputation={910,0},qgs={15192},sourceQuests={8519},u=15}),
q(8728,{coords={{65.2,18.6,1446}},cost={{"i",12361,10},{"i",12800,10},{"i",18562,10},{"i",12360,20}},lvl=60,qgs={11811},sourceQuests={8578,8587,8620},u=15}),
q(8302,{coords={{49.5,36.4,1451}},cost={{"i",20384,200}},lvl=60,maxReputation={910,0},qgs={15180},repeatable=1,sourceQuests={8301},u=15,g={
i(20403,{b=1,q=2,u=15})}}),
q(8585,{coords={{52.6,28.1,1446}},cost={{"i",21024,20}},lvl=60,maps={1444},qgs={8125},sourceQuests={8584},u=15,g={
qo(1,{coords={{29.8,72.6,1444}},crs={12803},providers={{"i",21027}},u=15})}}),
q(8742,{coords={{65,50,1446}},lvl=60,qgs={15192},sourceQuests={8729,8730,8741},u=15,g={
i(21175,{b=1,q=1,u=15})}}),
q(8736,{coords={{36.18,41.79,1450}},description="You do NOT want to kill Eranikus or allow Remulos to die.",lvl=60,minReputation={910,0},qgs={11832},sourceQuests={8735},u=15,g={
i(21531,{b=1,f=51,lvl=60,q=4,u=15}),
s(164651,21532,{b=1,f=5,lvl=60,q=4,u=15})}}),
q(8735,{coords={{36.18,41.79,1450}},lvl=60,maps={1425,1431,1440,1444},minReputation={910,0},qgs={11832},sourceQuests={8734},u=15,g={
qo(1,{coords={{91.6,39,1440}},crs={12474,12475,12476},providers={{"i",21147}},u=15}),
qo(2,{coords={{48,33,1431}},crs={15625},description="It is recommended that you bring at least 30 players and they should be experienced raiders.",providers={{"i",21149}},u=15}),
qo(3,{coords={{50.4,15.9,1444}},crs={5317,5319,5320},providers={{"i",21148}},u=15}),
qo(4,{coords={{61.6,27.7,1425}},crs={12477,12478,12479},providers={{"i",21146}},u=15})}}),
q(8620,{coords={{65.2,18.6,1446}},lvl=60,maps={232,248,287,1419,1445,1452,1453,1458},qgs={11811},sourceQuests={8606},u=15,g={
qo(1,{cost={{"i",21110,1},{"i",21109,1},{"i",21108,1},{"i",21107,1},{"i",21106,1},{"i",21105,1},{"i",21104,1},{"i",21103,1},{"i",21112,1}},providers={{"i",21111}},u=15}),
i(21103,{b=1,coords={{77.8,17,1445}},crs={15552},q=4,u=15}),
i(21104,{b=1,coords={{44.6,56,1419}},crs={8716,8717,12396},q=4,u=15}),
i(21105,{b=1,coords={{51.6,84.4,1452},{54.6,87.4,1452},{65,80.2,1452}},crs={7461,7463,10201},q=4,u=15}),
i(21106,{b=1,coords={{77,38,1458}},providers={{"o",180666}},q=4,u=15}),
i(21107,{b=1,coords={{72,6,1453}},providers={{"o",180665}},q=4,u=15}),
i(21108,{b=1,crs={10184},q=4,u=15}),
i(21109,{b=1,coords={{32,42.9,287}},description="Located in Blackwing Lair on one of the tables on the ramp after the first wyrmguard overseer pull.",providers={{"o",180667}},q=4,u=15}),
i(21110,{b=1,crs={11502},q=4,u=15}),
s(164642,21517,{b=1,f=4,lvl=60,q=4,u=15})}}),
q(8301,{coords={{49.5,36.4,1451}},cost={{"i",20384,200}},lvl=60,providers={{"i",20402}},qgs={15180},sourceQuests={8288},u=15,g={
i(20403,{b=1,q=2,u=15})}}),
q(8729,{coords={{65.2,18.6,1446}},lvl=60,maps={1447},qgs={11811},sourceQuests={8728},u=15,g={
qo(1,{coords={{65,55,1447}},cost={{"i",21136,1}},crs={15571},description="This summons a 40 man raid boss.",providers={{"i",21137},{"o",180669}},u=15}),
i(21526,{b=1,f=52,lvl=60,q=4,u=15}),
s(164649,21527,{b=1,f=4,lvl=60,q=4,u=15})}}),
q(8576,{coords={{65.2,18.6,1446}},lvl=60,qgs={11811},sourceQuests={8575},u=15}),
q(8745,{coords={{25.9,91,1451}},lvl=60,providers={{"i",21175}},qgs={15693},sourceQuests={8742},u=15,g={
s(164646,21523,{b=1,f=20,lvl=60,q=4,u=15}),
s(164645,21522,{b=1,f=20,lvl=60,q=4,u=15}),
s(164644,21521,{b=1,f=25,lvl=60,q=4,u=15}),
s(164643,21520,{b=1,f=25,lvl=60,q=4,u=15})}}),
q(8734,{coords={{37.5,47.9,1438}},lvl=60,minReputation={910,0},qgs={15624},sourceQuests={8733},u=15}),
q(8286,{coords={{49.5,36.4,1451}},description="This quest line is a prerequisite for the Ahn'Qiraj scepter line used to open the doors to Ahn'Qiraj.",lvl=60,qgs={15180},u=15})}})}}),
h(-484,{maps={1419,1423,1428,1446,1447,1452},rwp=30003,u=1601,g={
h(-12,{u=1601,g={
ach(2116,{providers={{"i",22999}},rwp=30002,u=1601})}}),
h(-45,{u=1601,g={
q(9094,{coords={{81,59.8,1423},{54.7,62.2,1453},{34,66.4,1455},{64.3,44.5,1457}},cost={{"i",22484,30}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=1601,g={
s(165181,23084,{b=1,f=4,q=3,u=1601}),
s(165179,23081,{b=1,f=5,q=3,u=1601}),
s(165180,23082,{b=1,f=6,q=3,u=1601}),
s(165178,23078,{b=1,f=7,q=3,u=1601})}}),
q(9333,{coords={{80.8,59.6,1423},{52.5,73.7,1454},{43.7,52.6,1456},{49.9,29.4,1458}},cost={{"i",22484,30}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=1601,g={
s(165181,23084,{b=1,f=4,q=3,u=1601}),
s(165179,23081,{b=1,f=5,q=3,u=1601}),
s(165180,23082,{b=1,f=6,q=3,u=1601}),
s(165178,23078,{b=1,f=7,q=3,u=1601})}}),
q(9318,{coords={{81,59.8,1423},{54.7,62.2,1453},{34,66.4,1455},{64.3,44.5,1457}},cost={{"i",22484,8}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=1601,g={
i(23123,{b=1,lvl=50,q=2,u=1601})}}),
q(9334,{coords={{80.8,59.6,1423},{52.5,73.7,1454},{43.7,52.6,1456},{49.9,29.4,1458}},cost={{"i",22484,8}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=1601,g={
i(23123,{b=1,lvl=50,q=2,u=1601})}}),
q(9317,{coords={{81,59.8,1423},{54.7,62.2,1453},{34,66.4,1455},{64.3,44.5,1457}},cost={{"i",22484,8}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=1601,g={
i(23122,{b=1,lvl=50,q=2,u=1601})}}),
q(9335,{coords={{80.8,59.6,1423},{52.5,73.7,1454},{43.7,52.6,1456},{49.9,29.4,1458}},cost={{"i",22484,8}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=1601,g={
i(23122,{b=1,lvl=50,q=2,u=1601})}}),
q(9292,{description="If you hear the yell across the city that they've invaded the Park, head for the canals between the Keep and the Park, that is where the elite abomination will be (heading from the Park to the Keep on the north side of the canal).\n\nWhen he dies, the crystal appears above his corpse and everyone (of the appropriate level) can click on it and get the quest regardless of who tagged him first.",isYearly=1,maps={1453},providers={{"i",22949}},qgs={16431},r=2,u=1601,g={
i(23123,{b=1,lvl=50,q=2,u=1601}),
i(23122,{b=1,lvl=50,q=2,u=1601})}}),
q(9304,{lvl=45,providers={{"i",22948},{"i",22975}},u=1601}),
q(9301,{lvl=45,providers={{"i",22930},{"i",22970}},u=1601}),
q(9310,{description="If you hear the yell across the city that they've invaded the Sewers, head for the canals between the Sewers and the Royal Quarter, that is where the elite abomination will be.\n\nWhen he dies, the crystal appears above his corpse and everyone (of the appropriate level) can click on it and get the quest regardless of who tagged him first.",isYearly=1,maps={1420,1458},providers={{"i",22950}},qgs={16531},r=1,u=1601,g={
i(23123,{b=1,lvl=50,q=2,u=1601}),
i(23122,{b=1,lvl=50,q=2,u=1601})}}),
q(9262,{coords={{77.7,42.7,1457}},isYearly=1,maps={1438},qgs={16495},r=2,u=1601,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=1601})}}),
q(9261,{coords={{53.2,35,1426}},isYearly=1,maps={1455},qgs={16484},r=2,u=1601,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=1601})}}),
q(9263,{coords={{51.7,83.3,1454}},isYearly=1,maps={1411},qgs={16493},r=1,u=1601,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=1601})}}),
q(9260,{coords={{63.8,75.5,1453}},isYearly=1,maps={1429},qgs={16478},r=2,u=1601,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=1601})}}),
q(9265,{coords={{66.2,21.4,1458}},isYearly=1,maps={1420},qgs={16494},r=1,u=1601,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=1601})}}),
q(9264,{coords={{33.1,59.9,1456}},isYearly=1,maps={1412},qgs={16490},r=1,u=1601,g={
qo(1,{crs={16422,16423,16437,16438},providers={{"i",22892}},u=1601})}}),
q(9295,{lvl=45,providers={{"i",22932},{"i",22977}},u=1601}),
q(9154,{coords={{53.1,35,1426},{55,62,1453},{64.1,75,1453},{51.7,83.6,1454},{53.1,73.6,1454},{35.3,68.7,1455},{32.9,60.1,1456},{43.5,53.2,1456},{64.5,44.2,1457},{77.3,42.8,1457},{49.5,32.1,1458},{65.9,21.4,1458}},isYearly=1,lvl=50,providers={{"i",22595}},qgs={16241,16255},u=1601}),
q(9321,{coords={{81,59.8,1423},{54.7,62.2,1453},{34,66.4,1455},{64.3,44.5,1457}},cost={{"i",22484,15}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=1601,g={
i(13446,{f=55,lvl=45,q=1})}}),
q(9336,{coords={{80.8,59.6,1423},{52.5,73.7,1454},{43.7,52.6,1456},{49.9,29.4,1458}},cost={{"i",22484,15}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=1601,g={
i(13446,{f=55,lvl=45,q=1})}}),
q(9337,{coords={{81,59.8,1423},{54.7,62.2,1453},{34,66.4,1455},{64.3,44.5,1457}},cost={{"i",22484,15}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=1601,g={
i(13444,{f=55,lvl=49,q=1})}}),
q(9320,{coords={{80.8,59.6,1423},{52.5,73.7,1454},{43.7,52.6,1456},{49.9,29.4,1458}},cost={{"i",22484,15}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=1601,g={
i(13444,{f=55,lvl=49,q=1})}}),
q(9302,{lvl=45,providers={{"i",22944},{"i",22973}},u=1601}),
q(9299,{lvl=45,providers={{"i",22945},{"i",22972}},u=1601}),
q(9300,{lvl=45,providers={{"i",22946},{"i",22974}},u=1601}),
q(9085,{coords={{81.1,60.6,1423}},isYearly=1,lvl=50,qgs={16361},u=1601,g={
qo(1,{providers={{"n",16143}},u=1601}),
i(23123,{b=1,lvl=50,q=2,u=1601}),
i(23122,{b=1,lvl=50,q=2,u=1601})}}),
q(9341,{coords={{81,59.8,1423},{54.7,62.2,1453},{34,66.4,1455},{64.3,44.5,1457}},cost={{"i",22484,10}},lvl=50,qgs={16786},r=2,repeatable=1,rwp=20001,sourceQuests={9153},u=1601,g={
s(165148,22999,{b=1,f=9,q=1,u=1601})}}),
q(9343,{coords={{80.8,59.6,1423},{52.5,73.7,1454},{43.7,52.6,1456},{49.9,29.4,1458}},cost={{"i",22484,10}},lvl=50,qgs={16787},r=1,repeatable=1,rwp=20001,sourceQuests={9153},u=1601,g={
s(165148,22999,{b=1,f=9,q=1,u=1601})}}),
q(9247,{coords={{81.1,60.5,1423}},description="You should receive this in the mail at level 60.",isYearly=1,lvl=60,providers={{"i",22723}},qgs={16281},u=1601,g={
i(23123,{b=1,lvl=50,q=2,u=1601}),
i(23122,{b=1,lvl=50,q=2,u=1601})}}),
q(9153,{coords={{81.1,60.6,1423}},cost={{"i",22484,10}},isYearly=1,lvl=50,qgs={16361},u=1601,g={
i(23123,{b=1,lvl=50,q=2,u=1601}),
i(23122,{b=1,lvl=50,q=2,u=1601})}})}}),
n(14684,{description="Located in Stratholme.\n\nCan be found wandering in a circle around the fountain in the courtyard.",maps={317},u=1601,g={
s(165190,23124,{b=1,f=28,lvl=55,q=3,u=1601}),
i(23125,{b=1,f=51,lvl=55,q=3,u=1601}),
s(165191,23126,{b=1,f=4,lvl=55,q=3,u=1601})}}),
n(14686,{description="Located in Razorfen Downs.\n\nCan be found inside one of the prison cells, before the skeleton pile. Looks like a human female until you talk to her upon she transforms into a Banshee.",maps={300},u=1601,g={
s(165202,23177,{b=1,f=27,lvl=36,q=3,races={1,2,3,4,5,6,7,8},u=1601}),
s(165203,23178,{b=1,f=3,lvl=36,q=3,u=1601})}}),
n(14695,{description="Located in Scholomance.\n\nCan be found in the room just before the plagued hatchlings.",maps={476},u=1601,g={
s(165197,23156,{b=1,f=1,lvl=57,q=3,u=1601}),
s(165195,23132,{b=1,f=25,lvl=57,q=3,u=1601}),
s(165196,23139,{b=1,f=8,lvl=57,q=3,u=1601})}}),
n(14690,{description="Located in Dire Maul West.\n\nCan be found in the corridor above and behind Tendris Warpwood, the same one Magister Kalendris is in.",maps={234},u=1601,g={
s(165192,23127,{b=1,f=3,lvl=58,q=3,u=1601}),
s(165194,23129,{b=1,f=4,lvl=57,q=3,u=1601}),
s(165193,23128,{b=1,f=4,lvl=57,q=3,u=1601})}}),
n(14693,{description="Located in Scarlet Monastery Graveyard.\n\nHe patrols the graveyard after killing the last boss.",maps={435},u=1601,g={
s(165198,23168,{b=1,f=20,lvl=30,q=3,u=1601}),
i(23169,{b=1,f=51,lvl=30,q=3,u=1601}),
s(165199,23170,{b=1,f=6,lvl=30,q=3,u=1601})}}),
n(14682,{description="Located in Shadowfang Keep.\n\nCan be found in the room up the ramp to the right of the entrance to the Butcher's room in the courtyard.",maps={310},u=1601,g={
s(165200,23171,{b=1,f=22,lvl=20,q=3,u=1601}),
s(165201,23173,{b=1,f=4,lvl=20,q=3,u=1601})}}),
n(16143,{cost={{"i",22484,8}},description="To summon this mob, speak to the cultist and give them 8 runes. This will automatically tag that mob for your group.",u=1601,g={
i(22484,{b=1,q=2,u=1601}),
s(165183,23087,{b=1,f=7,lvl=58,q=3,rwp=20001,u=1601}),
s(165184,23088,{b=1,f=6,lvl=58,q=3,rwp=20001,u=1601}),
s(165182,23085,{b=1,f=4,lvl=58,q=3,rwp=20001,u=1601}),
s(165185,23089,{b=1,f=5,lvl=58,q=3,rwp=20001,u=1601})}}),
h(-63,{crs={16141,16298,16299,16383},u=1601,g={
i(22484,{b=1,q=2,u=1601}),
i(22970,{b=1,lvl=45,q=1,u=1601}),
i(22972,{b=1,lvl=45,q=1,u=1601}),
i(22973,{b=1,lvl=45,q=1,u=1601}),
i(22974,{b=1,lvl=45,q=1,u=1601}),
i(22975,{b=1,lvl=45,q=1,u=1601}),
i(22977,{b=1,lvl=45,q=1,u=1601})}}),
h(-46,{crs={14697,16379,16380},u=1601,g={
s(165187,23091,{f=4,lvl=58,q=3,rwp=20001,u=1601}),
s(165189,23093,{f=5,lvl=58,q=3,rwp=20001,u=1601}),
s(165188,23092,{f=6,lvl=58,q=3,rwp=20001,u=1601}),
s(165186,23090,{f=7,lvl=58,q=3,rwp=20001,u=1601})}}),
h(-47,{description="The reports are mailed to you about 48 hours after you turn in the random drop letter quests and there is one unique flavor message per letter. I'm not sure if speaking to the npcs mentioned in the responses leads to more flavor text, but someone should probably look into that.",u=1601,g={
i(23196,{b=1,crs={16434,16436},description="1 Stamina for every 2 levels for 1 Hour.\n\nAvailable after 150 Battles won.",f=55,q=1,u=1601}),
i(23194,{b=1,crs={16384,16395},description="1 Stamina for every 6 levels for 1 Hour.\n\nAvailable after 50 Battles won.",f=55,q=1,u=1601}),
i(23195,{b=1,crs={16433,16435},description="1 Stamina for every 3 levels for 1 Hour.\n\nAvailable after 100 Battles won.",f=55,q=1,u=1601}),
i(23008,{b=1,q=1,u=1601}),
i(23010,{b=1,q=1,u=1601}),
i(23011,{b=1,q=1,u=1601}),
i(23012,{b=1,q=1,u=1601}),
i(23013,{b=1,q=1,u=1601}),
i(23016,{b=1,q=1,u=1601})}})}})};
end);
