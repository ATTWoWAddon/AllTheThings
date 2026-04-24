-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, {
	applyclassicphase(WRATH_PHASE_THREE, m(169, bubbleDown({ ["timeline"] = { ADDED_3_0_2 }, }, {	-- Isle of Conquest
		["icon"] = 236396,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(3857, {	-- Master of Isle of Conquest (A)
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {{"meta_achievement",
						3777,	-- Isle of Conquest Veteran
						3848,	-- A-bomb-inable
						3849,	-- A-bomb-ination
						3853,	-- All Over the Isle
						3854,	-- Back Door Job
						3852,	-- Cut the Blue Wire... No the Red Wire!
						3856,	-- Demolition Derby
						3847,	-- Four Car Garage
						3855,	-- Glaive Grave
						3851,	-- Mine
						3850,	-- Mowed Down
					}},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(49052, {	-- Tabard of Conquest
							["races"] = ALLIANCE_ONLY,
						}),
					},
				}),
				ach(3957, {	-- Master of Isle of Conquest (H)
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {{"meta_achievement",
						3777,	-- Isle of Conquest Veteran
						3848,	-- A-bomb-inable
						3849,	-- A-bomb-ination
						3853,	-- All Over the Isle
						3854,	-- Back Door Job
						3852,	-- Cut the Blue Wire... No the Red Wire!
						4256,	-- Demolition Derby
						3847,	-- Four Car Garage
						3855,	-- Glaive Grave
						4177,	-- Mine
						3850,	-- Mowed Down
					}},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(49054, {	-- Tabard of Conquest
							["races"] = HORDE_ONLY,
						}),
					},
				}),
				ach(3845, {	-- Isle of Conquest All-Star
					crit(12059),	-- Destroy a vehicle
					crit(11487),	-- Assault a base
					crit(11488),	-- Defend a base
					crit(11491),	-- Kill a player
				}),
				ach(3776, {	-- Isle of Conquest Victory
					["rank"] = 1,
				}),
				ach(3777, {	-- Isle of Conquest Veteran
					["rank"] = 100,
				}),
				ach(3848),	-- A-bomb-inable
				ach(3849),	-- A-bomb-ination
				ach(3853, {	-- All Over the Isle
					crit(12158),	-- Workshop
					crit(12159),	-- Hangar
					crit(12160),	-- Docks
					crit(12161),	-- Horde Keep
					crit(12162),	-- Alliance Keep
				}),
				ach(3854),	-- Back Door Job
				ach(3852),	-- Cut the Blue Wire... No the Red Wire!
				ach(3856, {	-- Demolition Derby
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						crit(11497),	-- Glaive Thrower
						crit(12179),	-- Demolisher
						crit(12181),	-- Catapult
						crit(11501),	-- Siege Engine
					},
				}),
				ach(4256, {	-- Demolition Derby
					["races"] = HORDE_ONLY,
					["groups"] = {
						crit(12178),	-- Glaive Thrower
						crit(12179),	-- Demolisher
						crit(12181),	-- Catapult
						crit(12182),	-- Siege Engine
					},
				}),
				ach(3847, {	-- Four Car Garage
					crit(11492),	-- Glaive Thrower
					crit(11493),	-- Siege Engine
					crit(11494),	-- Demolisher
					crit(11495),	-- Catapult
				}),
				ach(3855),	-- Glaive Grave
				ach(3851, {	-- Mine
					["races"] = ALLIANCE_ONLY,
				}),
				ach(4177, {	-- Mine
					["races"] = HORDE_ONLY,
				}),
				ach(3850, {	-- Mowed Down
					crit(12114),	-- Vehicles killed
					crit(12068),	-- Players killed
				}),
				ach(3846, {	-- Resource Glut
					["races"] = ALLIANCE_ONLY,
				}),
				ach(4176, {	-- Resource Glut
					["races"] = HORDE_ONLY,
				}),
			}),
		},
	}))),
})));
