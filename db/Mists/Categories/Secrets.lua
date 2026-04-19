---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnBuildDataCache", function(categories)
local h,i,q=_.CreateCustomHeader,_.CreateItem,_.CreateQuest;
categories.Secrets=
h(-50,{SortPriority=65,g={
h(-503,{awp=50004,description="Multi-expansion secret to obtaining Dog as a companion pet.",g={
q(30526,{coords={
[376]={{42.4,50.2}}},minReputation={1272,21600},qgs={59533},g={
i(80144,{q=1})}})}})}});
end);
