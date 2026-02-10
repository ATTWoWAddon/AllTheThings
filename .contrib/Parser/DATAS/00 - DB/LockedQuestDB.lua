-- DB file containing various batch-associations of LockCriteria for various annoying Quest situations

local QuestDB = QuestDB

-- When the 'per-character' Achievement is completed, it prevents certain per-character quests from being obtained across the whole Account
-- format: { achID, { questID, questID, ... }}
local LockedQuestsByAchievement = {
	-- Allied Races: Nightborne
	{ 12453, { 49973, 49613, 49354, 49614 } },
	-- Allied Races: Mag'har
	{ 12517, { 53466, 53467, 53354, 53353, 53355, 52942, 52943, 52945, 52955, 51479 } },
	-- Allied Races: Zandalari Troll
	{ 13156, { 53831, 53823, 53824, 54419, 53826, 54301, 54925, 54300, 53825, 53827, 53828, 54031, 54033, 54032, 54034, 53830, 53719 } },
	-- Allied Races: Highmountain Tauren
	{ 12452, { 48066, 48067, 49756, 48079, 41884, 41764, 48185, 41799, 48190, 41800, 48434, 41815, 41840, 41882, 41841, 48403, 48433 } },
	-- Allied Races: Void Elf
	{ 12450, { 49787, 48962 } },
	-- Allied Races: Dark Iron Dwarf
	{ 12516, { 51813, 53351, 53342, 53352, 51474, 53566 } },
	-- Allied Races: Lightforged Draenei
	{ 12451, { 49698, 49266, 50071 } },
	-- Allied Races: Kul Tiran
	{ 13157, { 54706, 55039, 55043, 54708, 54721, 54723, 54725, 54726, 54727, 54728, 54730, 54731, 54729, 54732, 55136, 54733, 54734, 54735, 54851, 53720 } },
	-- Allied Races: Mechagnome
	{ 14012, { 58214, 57486, 57487, 57488, 57490, 57491, 57492, 57493, 57494, 57496, 57495, 57497 } },
	-- Allied Races: Vulpera
	{ 13207, { 53870, 53889, 53890, 53891, 53892, 53893, 53894, 53895, 53897, 53898, 54026, 53899, 58087, 53901, 53900, 53902, 54027, 53903, 53904, 53905, 54036, 53906, 53907, 53908, 57448 } },
	-- Garrison Shipyard Equipment Blueprints
	{ 10372, { 38932 } },	-- Equipment Blueprint: Bilge Pump
	{ 10373, { 39366 } },	-- Equipment Blueprint: Felsmoke Launchers
	{ 10374, { 39356 } },	-- Equipment Blueprint: High Intensity Fog Lights
	{ 10375, { 39365 } },	-- Equipment Blueprint: Ghostly Spyglass
	{ 10376, { 39364 } },	-- Equipment Blueprint: Gyroscopic Internal Stabilizer
	{ 10377, { 39363 } },	-- Equipment Blueprint: Ice Cutter
	{ 10378, { 39355 } },	-- Equipment Blueprint: Trained Shark Tank
	{ 10379, { 39360 } },	-- Equipment Blueprint: True Iron Rudder
}

-- Add Achievement-based LockCriteria
for _,achLockData in ipairs(LockedQuestsByAchievement) do
	local achID = achLockData[1]
	local questIDs = achLockData[2]
	for _,questID in ipairs(questIDs) do
		local quest = QuestDB[questID]
		quest.lockCriteria = {1,"achID",achID}
	end
end
