---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function TolBaradDailyQuest(questID, t)
	local quest = q(questID, t);
	quest.isDaily = true;

	-- Each daily quest awards a commendation
	local g = quest.g or quest.groups;
	if not g then
		g = {};
		quest.groups = g;
	end
	table.insert(g, currency(391));	-- Tol Barad Commendation

	-- Assign the Reputation Requirements
	t.maxReputation = { t.races == ALLIANCE_ONLY and FACTION_BARADINS_WARDENS or FACTION_HELLSCREAMS_REACH, EXALTED };
	return t;
end
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.CATA, bubbleDown({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	m(TOL_BARAD_PENINSULA, {
		-- #if BEFORE 8.0.3
		["description"] = "Tol Barad Peninsula is the northernmost region of the island of Tol Barad and is a major daily quest hub in World of Warcraft: Cataclysm.",
		-- #else
		["description"] = "Tol Barad Peninsula is the northernmost region of the island of Tol Barad and is a major daily quest hub in World of Warcraft: Cataclysm.\n\nDue to how sharding works, you will usually only get the same eight daily quests from the camp in Tol Barad Peninsula. The trick for having a chance at getting offered some of the other quests in rotation is to have zoned into Tol Barad Peninsula a few minutes before the daily reset occurs. Then you can wait for the daily reset, or leave the zone for up to 15 minutes before returning. Protip: Do the same with Warmode on, which zones you to a different shard. Quests picked up in Warmode can be completed and turned in outside Warmode.",
		-- #endif
		["icon"] = 409548,	-- achievement_zone_tolbarad
		["groups"] = {
			n(ACHIEVEMENTS, {
				achWithRep(5375, FACTION_BARADINS_WARDENS, {	-- Baradin's Wardens
					["races"] = ALLIANCE_ONLY,
				}),
				ach(4874),	-- Breaking Out of Tol Barad
				achWithRep(5376, FACTION_HELLSCREAMS_REACH, {	-- Hellscream's Reach
					["races"] = HORDE_ONLY,
				}),
				a(ach(5718, {	-- Just Another Day in Tol Barad (A)
					["sym"] = {{ "achievement_criteria" }},
				})),
				h(ach(5719, {	-- Just Another Day in Tol Barad (H)
					["sym"] = {{ "achievement_criteria" }},
				})),
			}),
			petbattle(filter(BATTLE_PETS, {
				["sym"] = {{"select","speciesID",
					410, -- Wharf Rat (PET!)
				}},
			})),
			n(FACTIONS, {
				faction(FACTION_BARADINS_WARDENS, {	-- Baradin's Wardens
					["races"] = ALLIANCE_ONLY,
				}),
				faction(FACTION_HELLSCREAMS_REACH, {	-- Hellscream's Reach
					["races"] = HORDE_ONLY,
				}),
			}),
			-- #if ANYCLASSIC
 			n(PROFESSIONS, {
				prof(FISHING, {
					i(22739, {	-- Tome of Polymorph: Turtle (CI!)
						["providers"] = {
							{ "o", 202780 },	-- Fathom Eel Swarm
							{ "o", 207724 },	-- Shipwreck Debris
						},
					}),
				}),
				prof(MINING, {
					i(67282),	-- Elementium Geode (PET!)
				}),
			}),
			-- #endif
			n(QUESTS, {
				TolBaradDailyQuest(27948, {	-- A Sticky Task [A]
					["qg"] = 48255, -- Camp Coordinator Brack
					["coord"] = { 73.75, 57.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Sticky Silk Gland
							["provider"] = { "i", 62803 },	-- Sticky Silk Gland
							["cr"] = 46507,	-- Darkwood Broodmother
						}),
					},
				}),
				TolBaradDailyQuest(28684, {	-- A Sticky Task [H]
					["qg"] = 48360, -- 3rd Officer Kronkar
					["coord"] = { 55.2, 81.3, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Sticky Silk Gland
							["provider"] = { "i", 62803 },	-- Sticky Silk Gland
							["cr"] = 46507,	-- Darkwood Broodmother
						}),
					},
				}),
				TolBaradDailyQuest(28275, {	-- Bombs Away! [A]
					["qg"] = 48254, -- Sergeant Gray
					["coord"] = { 72.95, 60.95, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				TolBaradDailyQuest(28696, {	-- Bombs Away! [H]
					["qg"] = 48361, -- Private Sarlosk
					["coord"] = { 55.8, 78.45, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				TolBaradDailyQuest(27972, {	-- Boosting Morale [A]
					["qg"] = 48255, -- Camp Coordinator Brack
					["coord"] = { 73.75, 57.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Barrel of Southsea Rum
							["providers"] = {
								{ "i", 62810 },	-- Barrel of Southsea Rum
								{ "o", 206580 },	-- Barrel of Southsea Rum
							},
						}),
					},
				}),
				TolBaradDailyQuest(28680, {	-- Boosting Morale [H]
					["qg"] = 48360, -- 3rd Officer Kronkar
					["coord"] = { 55.2, 81.3, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Barrel of Southsea Rum
							["providers"] = {
								{ "i", 62810 },	-- Barrel of Southsea Rum
								{ "o", 206580 },	-- Barrel of Southsea Rum
							},
						}),
					},
				}),
				TolBaradDailyQuest(27987, {	-- Cannonball! [A]
					["qg"] = 48254, -- Sergeant Gray
					["coord"] = { 72.95, 60.95, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Stack of Cannonballs
							["providers"] = {
								{ "i", 62818 },	-- Stack of Cannonballs
								{ "o", 206586 },	-- Stack of Cannonballs
							},
						}),
					},
				}),
				TolBaradDailyQuest(28698, {	-- Cannonball! [H]
					["qg"] = 48361, -- Private Sarlosk
					["coord"] = { 55.8, 78.45, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Stack of Cannonballs
							["providers"] = {
								{ "i", 62818 },	-- Stack of Cannonballs
								{ "o", 206586 },	-- Stack of Cannonballs
							},
						}),
					},
				}),
				TolBaradDailyQuest(27970, {	-- Captain P. Harris [A]
					["qg"] = 48255, -- Camp Coordinator Brack
					["coord"] = { 73.75, 57.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Captain P. Harris slain
							["provider"] = { "n", 47287 },	-- Captain P. Harris
						}),
					},
				}),
				TolBaradDailyQuest(28678, {	-- Captain P. Harris [H]
					["qg"] = 48360, -- 3rd Officer Kronkar
					["coord"] = { 55.2, 81.3, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Captain P. Harris slain
							["provider"] = { "n", 47287 },	-- Captain P. Harris
						}),
					},
				}),
				TolBaradDailyQuest(28059, {	-- Claiming The Keep [A]
					["qg"] = 47240, -- Commander Marcus Johnson
					["coord"] = { 73.4, 59.2, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Keep Lord Farson slain
							["provider"] = { "n", 47447 },	-- Keep Lord Farson
						}),
					},
				}),
				TolBaradDailyQuest(28682, {	-- Claiming The Keep [H]
					["qg"] = 48358, -- Commander Larmash
					["coord"] = { 53.55, 80.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Keep Lord Farson slain
							["provider"] = { "n", 47447 },	-- Keep Lord Farson
						}),
					},
				}),
				TolBaradDailyQuest(28046, {	-- Finish The Job [A]
					["qg"] = 48250, -- Lieutenant Farnsworth
					["coord"] = { 74.8, 59.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Restless Infantry slain
							["provider"] = { "n", 46823 },	-- Restless Infantry
						}),
					},
				}),
				TolBaradDailyQuest(28693, {	-- Finish The Job [H]
					["qg"] = 48363, -- Captain Prug
					["coord"] = { 54.9, 79.3, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Restless Soldier slain
							["provider"] = { "n", 46825 },	-- Restless Soldier
						}),
					},
				}),
				TolBaradDailyQuest(27967, {	-- First Lieutenant Connor [A]
					["qg"] = 48250, -- Lieutenant Farnsworth
					["coord"] = { 74.8, 59.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 First Lieutenant Connor slain
							["provider"] = { "n", 46571 },	-- First Lieutenant Connor
						}),
					},
				}),
				TolBaradDailyQuest(28691, {	-- First Lieutenant Connor [H]
					["qg"] = 48363, -- Captain Prug
					["coord"] = { 54.9, 79.3, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 First Lieutenant Connor slain
							["provider"] = { "n", 46571 },	-- First Lieutenant Connor
						}),
					},
				}),
				TolBaradDailyQuest(27978, {	-- Ghostbuster [A]
					["qg"] = 48254, -- Sergeant Gray
					["coord"] = { 72.95, 60.95, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/14 Largo's Overlook Ghosts Slain
							["providers"] = {
								{ "n", 47181},	-- Overlook Spirit
								{ "n", 47182},	-- Overlook Spectre
								{ "n", 47183},	-- Ghastly Worker
							},
						}),
					},
				}),
				TolBaradDailyQuest(28697, {	-- Ghostbuster [H]
					["qg"] = 48361, -- Private Sarlosk
					["coord"] = { 55.8, 78.45, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/14 Largo's Overlook Ghosts Slain
							["providers"] = {
								{ "n", 47181},	-- Overlook Spirit
								{ "n", 47182},	-- Overlook Spectre
								{ "n", 47183},	-- Ghastly Worker
							},
						}),
					},
				}),
				TolBaradDailyQuest(28063, {	-- Leave No Weapon Behind [A]
					["qg"] = 47240, -- Commander Marcus Johnson
					["coord"] = { 73.4, 59.2, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Rusty Rifle
							["providers"] = {
								{ "i",  62921 },	-- Rusty Rifle
								{ "o", 206664 },	-- Rack of Rifles
							},
							["cr"] = 47130,	-- Crazed Guard
						}),
					},
				}),
				TolBaradDailyQuest(28685, {	-- Leave No Weapon Behind [H]
					["qg"] = 48358, -- Commander Larmash
					["coord"] = { 53.55, 80.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Rusty Rifle
							["providers"] = {
								{ "i",  62921 },	-- Rusty Rifle
								{ "o", 206664 },	-- Rack of Rifles
							},
							["cr"] = 47130,	-- Crazed Guard
						}),
					},
				}),
				TolBaradDailyQuest(27992, {	-- Magnets, How Do They Work? [A]
					["qg"] = 48250, -- Lieutenant Farnsworth
					["coord"] = { 74.8, 59.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Siege Engine Scrap
							["providers"] = {
								{ "i",  62830 },	-- Siege Engine Scrap
								{ "o", 206644 },	-- Siege Scrap
								{ "o", 206651 },	-- Siege Scrap
								{ "o", 206652 },	-- Siege Scrap
								{ "i",  62829 },	-- Magnetized Scrap Collector
							},
						}),
					},
				}),
				TolBaradDailyQuest(28692, {	-- Magnets, How Do They Work? [H]
					["qg"] = 48363, -- Captain Prug
					["coord"] = { 54.9, 79.3, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Siege Engine Scrap
							["providers"] = {
								{ "i",  62830 },	-- Siege Engine Scrap
								{ "o", 206644 },	-- Siege Scrap
								{ "o", 206651 },	-- Siege Scrap
								{ "o", 206652 },	-- Siege Scrap
								{ "i",  62829 },	-- Magnetized Scrap Collector
							},
						}),
					},
				}),
				TolBaradDailyQuest(28130, {	-- Not The Friendliest Town [A]
					["qg"] = 47240, -- Commander Marcus Johnson
					["coord"] = { 73.4, 59.2, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/14 Rustberg Village Residents
							["providers"] = {
								{ "n", 47627},	-- Rustberg Bandit
								{ "n", 47642},	-- Rustberg Fisherman
								{ "n", 47657},	-- Suspicious Villager
								{ "n", 47659},	-- Apprehensive Worker
							},
						}),
					},
				}),
				TolBaradDailyQuest(28686, {	-- Not The Friendliest Town [H]
					["qg"] = 48358, -- Commander Larmash
					["coord"] = { 53.55, 80.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/14 Rustberg Village Residents
							["providers"] = {
								{ "n", 47627},	-- Rustberg Bandit
								{ "n", 47642},	-- Rustberg Fisherman
								{ "n", 47657},	-- Suspicious Villager
								{ "n", 47659},	-- Apprehensive Worker
							},
						}),
					},
				}),
				TolBaradDailyQuest(27971, {	-- Rattling Their Cages [A]
					["qg"] = 48255, -- Camp Coordinator Brack
					["coord"] = { 73.75, 57.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Shipwrecked Sailor slain
							["provider"] = { "n", 46605 },	-- Shipwrecked Sailor
						}),
					},
				}),
				TolBaradDailyQuest(28679, {	-- Rattling Their Cages [H]
					["qg"] = 48360, -- 3rd Officer Kronkar
					["coord"] = { 55.2, 81.3, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Shipwrecked Sailor slain
							["provider"] = { "n", 46605 },	-- Shipwrecked Sailor
						}),
					},
				}),
				TolBaradDailyQuest(27966, {	-- Salvaging the Remains [A]
					["qg"] = 48250, -- Lieutenant Farnsworth
					["coord"] = { 74.8, 59.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/9 Cursed Femur
							["provider"] = { "i", 62808 },	-- Cursed Femur
							["crs"] = {
								46569,	-- Forgotten Ghoul
								46582,	-- Hungry Ghoul
								46586,	-- Wandering Soul
								46597,	-- Skeletal Beastmaster
							},
						}),
					},
				}),
				TolBaradDailyQuest(28690, {	-- Salvaging the Remains [H]
					["qg"] = 48363, -- Captain Prug
					["coord"] = { 54.9, 79.3, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/9 Cursed Femur
							["provider"] = { "i", 62808 },	-- Cursed Femur
							["crs"] = {
								46569,	-- Forgotten Ghoul
								46582,	-- Hungry Ghoul
								46586,	-- Wandering Soul
								46597,	-- Skeletal Beastmaster
							},
						}),
					},
				}),
				TolBaradDailyQuest(28050, {	-- Shark Tank [A]
					["qg"] = 48255, -- Camp Coordinator Brack
					["coord"] = { 73.75, 57.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Tank slain
							["provider"] = { "n", 46608 },	-- Tank
						}),
					},
				}),
				TolBaradDailyQuest(28681, {	-- Shark Tank [H]
					["qg"] = 48360, -- 3rd Officer Kronkar
					["coord"] = { 55.2, 81.3, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Tank slain
							["provider"] = { "n", 46608 },	-- Tank
						}),
					},
				}),
				TolBaradDailyQuest(27991, {	-- Taking the Overlook Back [A]
					["qg"] = 48254, -- Sergeant Gray
					["coord"] = { 72.95, 60.95, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Commander Largo slain
							["provider"] = { "n", 47304 },	-- Commander Largo
						}),
					},
				}),
				TolBaradDailyQuest(28700, {	-- Taking the Overlook Back [H]
					["qg"] = 48361, -- Private Sarlosk
					["coord"] = { 55.8, 78.45, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Commander Largo slain
							["provider"] = { "n", 47304 },	-- Commander Largo
						}),
					},
				}),
				TolBaradDailyQuest(28137, {	-- Teach A Man To Fish.... Or Steal [A]
					["qg"] = 47240, -- Commander Marcus Johnson
					["coord"] = { 73.4, 59.2, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/22 Rustberg Seabass
							["providers"] = {
								{ "i",  63047 },	-- Rustberg Seabass
								{ "o", 206754 },	-- String of Fish
							},
							["cr"] = 47642,	-- Rustberg Fisherman
						}),
					},
				}),
				TolBaradDailyQuest(28687, {	-- Teach A Man To Fish.... Or Steal [H]
					["qg"] = 48358, -- Commander Larmash
					["coord"] = { 53.55, 80.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/22 Rustberg Seabass
							["providers"] = {
								{ "i",  63047 },	-- Rustberg Seabass
								{ "o", 206754 },	-- String of Fish
							},
							["cr"] = 47642,	-- Rustberg Fisherman
						}),
					},
				}),
				TolBaradDailyQuest(27949, {	-- The Forgotten [A]
					["qg"] = 48250, -- Lieutenant Farnsworth
					["coord"] = { 74.8, 59.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Forgotten Soldier's Tombstone
							["provider"] = { "o", 206570 },	-- Forgotten Soldier's Tombstone
						}),
					},
				}),
				TolBaradDailyQuest(28689, {	-- The Forgotten [H]
					["qg"] = 48363, -- Captain Prug
					["coord"] = { 54.9, 79.3, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Forgotten Soldier's Tombstone
							["provider"] = { "o", 206570 },	-- Forgotten Soldier's Tombstone
						}),
					},
				}),
				TolBaradDailyQuest(27944, {	-- Thinning the Brood [A]
					["qg"] = 48255, -- Camp Coordinator Brack
					["coord"] = { 73.75, 57.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Darkwood Lurker slain
							["provider"] = { "n", 46508 },	-- Darkwood Lurker
						}),
					},
				}),
				TolBaradDailyQuest(28683, {	-- Thinning the Brood [H]
					["qg"] = 48360, -- 3rd Officer Kronkar
					["coord"] = { 55.2, 81.3, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Darkwood Lurker slain
							["provider"] = { "n", 46508 },	-- Darkwood Lurker
						}),
					},
				}),
				TolBaradDailyQuest(27975, {	-- WANTED: Foreman Wellson [A]
					["qg"] = 48254, -- Sergeant Gray
					["coord"] = { 72.95, 60.95, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Foreman Wellson slain
							["provider"] = { "n", 46648 },	-- Foreman Wellson
						}),
					},
				}),
				TolBaradDailyQuest(28695, {	-- WANTED: Foreman Wellson [H]
					["qg"] = 48361, -- Private Sarlosk
					["coord"] = { 55.8, 78.45, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Foreman Wellson slain
							["provider"] = { "n", 46648 },	-- Foreman Wellson
						}),
					},
				}),
				TolBaradDailyQuest(28065, {	-- Walk A Mile In Their Shoes [A]
					["qg"] = 47240, -- Commander Marcus Johnson
					["coord"] = { 73.4, 59.2, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				TolBaradDailyQuest(28721, {	-- Walk A Mile In Their Shoes [H]
					["qg"] = 48358, -- Commander Larmash
					["coord"] = { 53.55, 80.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				TolBaradDailyQuest(27973, {	-- Watch Out For Splinters! [A]
					["qg"] = 48254, -- Sergeant Gray
					["coord"] = { 72.95, 60.95, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Shipyard Lumber
							["providers"] = {
								{ "i",  62811 },	-- Shipyard Lumber
								{ "o", 206583 },	-- Shipyard Lumber
							},
							["crs"] = {
								46630,	-- Accursed Longshoreman
								46641,	-- Ghastly Dockhand
								46643,	-- Accursed Shipbuilder
								48285,	-- Accursed Supplyman
							},
						}),
					},
				}),
				TolBaradDailyQuest(28694, {	-- Watch Out For Splinters! [H]
					["qg"] = 48361, -- Private Sarlosk
					["coord"] = { 55.8, 78.45, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Shipyard Lumber
							["providers"] = {
								{ "i",  62811 },	-- Shipyard Lumber
								{ "o", 206583 },	-- Shipyard Lumber
							},
							["crs"] = {
								46630,	-- Accursed Longshoreman
								46641,	-- Ghastly Dockhand
								46643,	-- Accursed Shipbuilder
								48285,	-- Accursed Supplyman
							},
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(48531, {	-- Pogg <Hellscream's Reach Quartermaster>
					["races"] = HORDE_ONLY,
					["groups"] = bubbleDownClassicRep(FACTION_HELLSCREAMS_REACH, {	-- Hellscream's Reach
						{	-- Neutral
							tolbaradcommendation(80, i(68774)),	-- Greater Inscription of Vicious Agility
							tolbaradcommendation(80, i(68772)),	-- Greater Inscription of Vicious Intellect
							tolbaradcommendation(80, i(68773)),	-- Greater Inscription of Vicious Strength
						},
						{	-- Friendly
							tolbaradcommendation(10, i(63518)),	-- Hellscream's Reach Commendation
							tolbaradcommendation(5, i(64995)),	-- Hellscream's Reach Bandage
							tolbaradcommendation(2, i(64994)),	-- Hellscream's Reach Healing Potion
							tolbaradcommendation(2, i(64993)),	-- Hellscream's Reach Mana Potion
						},
						{	-- Honored
							tolbaradcommendation(50, i(64996)),	-- Rustberg Gull (PET!)
							tolbaradcommendation(40, i(64997)),	-- Tol Barad Searchlight (TOY!)
							tolbaradcommendation(40, i(63378)),	-- Hellscream's Reach Tabard
							tolbaradcommendation(40, i(65176)),	-- Baradin Grunt's Talisman
						},
						{	-- Revered
							tolbaradcommendation(50, i(63376)),	-- Hellscream's Reach Battle Standard
							tolbaradcommendation(85, i(62454)),	-- Blade of the Fearless
							tolbaradcommendation(85, i(62456)),	-- Dagger of Restless Nights
							tolbaradcommendation(85, i(68740)),	-- Darkheart Hacker
							tolbaradcommendation(85, i(62458)),	-- Insidious Staff
							tolbaradcommendation(85, i(62457)),	-- Ravening Slicer
							tolbaradcommendation(85, i(62459)),	-- Shimmering Morningstar
							tolbaradcommendation(85, i(62460)),	-- Sky Piercer
							tolbaradcommendation(85, i(62455)),	-- Spear of Trailing Shadows
						},
						{	-- Exalted
							tolbaradcommendation(200, i(65356)),	-- Drake of the West Wind (H) (MOUNT!)
							tolbaradcommendation(165, i(64999)),	-- Spectral Wolf (MOUNT!)
							tolbaradcommendation(200, i(90898, {	-- Fox Kit (PET!)
								["timeline"] = { ADDED_5_0_4 },
							})),
							tolbaradcommendation(125, i(62464)),	-- Impatience of Youth
							tolbaradcommendation(125, i(62467)),	-- Mandala of Stirring Patterns
							tolbaradcommendation(125, i(62466)),	-- Mirror of Broken Images
							tolbaradcommendation(125, i(62465)),	-- Stump of Time
							tolbaradcommendation(125, i(62463)),	-- Unsolvable Riddle
						},
					}),
				}),
				n(47328, {	-- Quartermaster Brazie <Baradin's Wardens Quartermaster>
					["races"] = ALLIANCE_ONLY,
					["groups"] = bubbleDownClassicRep(FACTION_BARADINS_WARDENS, {	-- Baradin's Wardens
						{	-- Neutral
							tolbaradcommendation(80, i(68774)),	-- Greater Inscription of Vicious Agility
							tolbaradcommendation(80, i(68772)),	-- Greater Inscription of Vicious Intellect
							tolbaradcommendation(80, i(68773)),	-- Greater Inscription of Vicious Strength
						},
						{	-- Friendly
							tolbaradcommendation(10, i(63517)),	-- Baradin's Wardens Commendation
							tolbaradcommendation(5, i(63391)),	-- Baradin's Wardens Bandage
							tolbaradcommendation(2, i(63144)),	-- Baradin's Wardens Healing Potion
							tolbaradcommendation(2, i(63145)),	-- Baradin's Wardens Mana Potion
						},
						{	-- Honored
							tolbaradcommendation(50, i(63355)),	-- Rustberg Gull (PET!)
							tolbaradcommendation(40, i(63141)),	-- Tol Barad Searchlight (TOY!)
							tolbaradcommendation(40, i(63379)),	-- Baradin's Warden's Tabard
							tolbaradcommendation(40, i(65175)),	-- Baradin Footman's Tags
						},
						{	-- Revered
							tolbaradcommendation(50, i(63377)),	-- Baradin's Wardens Battle Standard
							tolbaradcommendation(85, i(62473)),	-- Blade of the Fearless
							tolbaradcommendation(85, i(62475)),	-- Dagger of Restless Nights
							tolbaradcommendation(85, i(68739)),	-- Darkheart Hacker
							tolbaradcommendation(85, i(62477)),	-- Insidious Staff
							tolbaradcommendation(85, i(62476)),	-- Ravening Slicer
							tolbaradcommendation(85, i(62478)),	-- Shimmering Morningstar
							tolbaradcommendation(85, i(62479)),	-- Sky Piercer
							tolbaradcommendation(85, i(62474)),	-- Spear of Trailing Shadows
						},
						{	-- Exalted
							tolbaradcommendation(200, i(63039)),	-- Drake of the West Wind (A) (MOUNT!)
							tolbaradcommendation(165, i(64998)),	-- Spectral Steed (MOUNT!)
							tolbaradcommendation(200, i(90897, {	-- Fox Kit (PET!)
								["timeline"] = { ADDED_5_0_4 },
							})),
							tolbaradcommendation(125, i(62469)),	-- Impatience of Youth
							tolbaradcommendation(125, i(62472)),	-- Mandala of Stirring Patterns
							tolbaradcommendation(125, i(62471)),	-- Mirror of Broken Images
							tolbaradcommendation(125, i(62470)),	-- Stump of Time
							tolbaradcommendation(125, i(62468)),	-- Unsolvable Riddle
						},
					}),
				}),
			}),
			n(ZONE_DROPS, {
				i(64403, {  -- Fox Kit (PET!)
					["crs"] = { 47676 },	-- Baradin Fox
				}),
			}),
		},
	}),
})));