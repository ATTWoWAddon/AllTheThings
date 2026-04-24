-- Allows mapping poiID values into the object which use other key values
-- For now only need questID mappings, but could use others in the future
-- Ref: https://wago.tools/db2/AreaPOI

local Quests = QuestDB;
local q = function(questID, ...)
	local existing = Quests[questID]
	local poiIDs = existing.poiIDs
	if not poiIDs then
		poiIDs = {}
		existing.poiIDs = poiIDs
	end
	local poiID
	local count = select("#", ...)
	for i=1,count do
		poiID = select(i, ...)
		poiIDs[#poiIDs + 1] = poiID
	end
end

-- BFA Assaults
q(54136, 5969)	-- Nazmir Assault [A]
q(54135, 5969)	-- Nazmir Assault [H]
q(54134, 5970)	-- Voldun Assault [A]
q(53885, 5970)	-- Voldun Assault [H]
q(54138, 5973)	-- Zuldazar Assault [A]
q(53883, 5973)	-- Zuldazar Assault [H]
q(53701, 5964)	-- Drustvar Assault [A]
q(54137, 5964)	-- Drustvar Assault [H]
q(51982, 5966)	-- Stormsong Valley Assault [A]
q(54132, 5966)	-- Stormsong Valley Assault [H]
q(53711, 5896)	-- Tiragarde Sound Assault [A]
q(53939, 5896)	-- Tiragarde Sound Assault [H]

-- BFA Black Empire Assaults
q(56064, 6489)	-- Assault: The Black Empire
q(57728, 6491)	-- Assault: The Endless Swarm
q(57008, 6490)	-- Assault: The Warring Clans
q(57157, 6486)	-- Assault: The Black Empire
q(56308, 6488)	-- Assault: Aqir Unearthed
q(55350, 6487)	-- Assault: Amathet Advance

-- Legion Invasions/Assaults
q(47063, 5175, 5177, 5178, 5210, 5270, 5271, 5272, 5273)	-- Legion Assault

-- Lesser Argus Invasion Points
q(49098, 5359, 5370)	-- Invasion Point: Cen'gar
q(49099, 5366, 5371)	-- Invasion Point: Bonich
q(49091, 5360, 5372)	-- Invasion Point: Val
q(48982, 5367, 5373)	-- Invasion Point: Aurinor
q(49096, 5368, 5374)	-- Invasion Point: Naigtal
q(49097, 5350, 5369)	-- Invasion Point: Sangua

-- Greater Argus Invasion Points
q(49167, 5375)	-- Greater Invasion Point: Mistress Alluradel
q(49170, 5376)	-- Greater Invasion Point: Occularus
q(49168, 5377)	-- Greater Invasion Point: Pit Lord Vilemus
q(49166, 5379)	-- Greater Invasion Point: Inquisitor Meto
q(49171, 5380)	-- Greater Invasion Point: Sotanathor
q(49169, 5381)	-- Greater Invasion Point: Matron Folnuna

-- Worldsoul Memories
q(82207, 7833)	-- Worldsoul Memory: Descendants of Distant Waters
q(82164, 7834)	-- Worldsoul Memory: Reign of the Old Gods
q(82263, 7835)	-- Worldsoul Memory: Elemental Fury
q(82260, 7836)	-- Worldsoul Memory: Primal Predators
q(82321, 7837)	-- Worldsoul Memory: Ancient Explorers
q(81985, 7838)	-- Worldsoul Memory: The Worldcarvers
q(82286, 7839)	-- Worldsoul Memory: Old Gods Forsaken
q(82285, 7840)	-- Worldsoul Memory: A Wounded Soul
q(86476, 8200)	-- Worldsoul Memory: Early Cartel Wars
q(86477, 8201)	-- Worldsoul Memory: Kaja'mite Contact

-- Undermine
q(86775, 8263)	-- Surge Pricing
