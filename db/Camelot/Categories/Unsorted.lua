---@diagnostic disable: deprecated
local appName, _ = ...
_.AddEventHandler("OnBuildHiddenDataCache", function(categories)
local i,r,s=_.CreateItem,_.CreateRecipe,_.CreateItemSource;
categories.Unsorted={
i(7190),
r(1249107,{b=1,itemID=249519,learnedAt=265,requireSkill=333,skillID=2940}),
i(275968,{b=1,f=52,lvl=60,minReputation={2819,3000}}),
i(275969,{b=1,f=52,lvl=60,minReputation={2819,3000}}),
i(275970,{b=1,f=52,lvl=60,minReputation={2819,3000}}),
i(275971,{b=1,f=52,lvl=60,minReputation={2819,3000}}),
i(275972,{b=1,f=52,lvl=60,minReputation={2819,9000}}),
i(275973,{b=1,f=52,lvl=60,minReputation={2819,9000}}),
i(275974,{b=1,f=52,lvl=60,minReputation={2819,9000}}),
i(275975,{b=1,f=52,lvl=60,minReputation={2819,9000}}),
i(275976,{b=1,f=52,lvl=60,minReputation={2819,21000}}),
i(275977,{b=1,f=52,lvl=60,minReputation={2819,21000}}),
i(275979,{b=1,f=52,lvl=60,minReputation={2819,21000}}),
i(275980,{b=1,f=52,lvl=60,minReputation={2819,21000}}),
i(275981,{b=1,f=52,lvl=60,minReputation={2819,42000}}),
i(275982,{b=1,f=52,lvl=60,minReputation={2819,42000}}),
i(275983,{b=1,f=52,lvl=60,minReputation={2819,42000}}),
i(275984,{b=1,f=52,lvl=60,minReputation={2819,42000}}),
i(289559),
s(313514,282700,{f=21,lvl=37}),
s(316103,284270,{b=1,f=7,loc=40,lvl=51}),
s(317385,286641,{b=1,f=22,lvl=45}),
s(317386,286645,{b=1,f=29,lvl=45})}
end)
