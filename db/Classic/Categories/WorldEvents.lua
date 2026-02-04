if not (not C_Seasons or C_Seasons.GetActiveSeason() ~= 2) then return; end 
---@diagnostic disable: deprecated
local appName, _ = ...;
local ach,h,i,mnt,q,qo,r,s=_.CreateAchievement,_.CreateCustomHeader,_.CreateItem,_.CreateMount,_.CreateQuest,_.CreateQuestObjective,_.CreateRecipe,_.CreateItemSource;
_.Categories.WorldEvents={
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
q(8286,{coords={{49.5,36.4,1451}},description="This quest line is a prerequisite for the Ahn'Qiraj scepter line used to open the doors to Ahn'Qiraj.",lvl=60,qgs={15180},u=15})}})}})};
