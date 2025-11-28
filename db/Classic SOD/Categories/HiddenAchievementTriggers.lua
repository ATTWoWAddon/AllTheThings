if not (C_Seasons and C_Seasons.GetActiveSeason() == 2) then return; end 
---@diagnostic disable: deprecated
local appName, _ = ...;
local ach,x=_.CreateAchievement,_.CreateExpansion;
_.Categories.HiddenAchievementTriggers={
x(1,{
ach(15329),
ach(15578),
ach(19563),
ach(20129),
ach(20130),
ach(20131),
ach(20132),
ach(20133),
ach(20134),
ach(20135),
ach(20136),
ach(20137),
ach(20138),
ach(20139),
ach(20193),
ach(40131),
ach(40132),
ach(40133),
ach(40135),
ach(40137),
ach(41008),
ach(41009),
ach(41010),
ach(41011),
ach(42133),
ach(42186)})};
