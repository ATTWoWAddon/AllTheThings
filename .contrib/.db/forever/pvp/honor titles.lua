-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

-- Forever PvP ranks are a renown track: lower rank titles are removed when you rank up,
-- so each title counts as collected once its parent PvP rank has been reached.
ExportDB.OnUpdateDB.ForeverRankTitle = [[~function(t)
	local parent = t.parent;
	local rank = parent and parent.pvprankID;
	if rank and _.IsCached("PVPRanks", rank) then
		t.collected = 1;
	end
end]];

root(ROOTS.PVP, {
	n(HONOR_TITLES, {
		maps = {
			MAP.ALTERAC_VALLEY,
			MAP.ARATHI_BASIN,
			MAP.WARSONG_GULCH,
			MAP.DARKSPEAR_ISLANDS,
		},
		groups = {
			pvprank(1, {	-- Private / Scout
				title(8, {	-- Private <Name>
					races = ALLIANCE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
				title(21, {	-- Scout <Name>
					races = HORDE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
			}),
			pvprank(2, {	-- Corporal / Grunt
				title(9, {	-- Corporal <Name>
					races = ALLIANCE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
				title(22, {	-- Grunt <Name>
					races = HORDE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
			}),
			pvprank(3, {	-- Sergeant / Sergeant
				title(10, {	-- Sergeant <Name>
					races = ALLIANCE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
				title(23, {	-- Sergeant <Name>
					races = HORDE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
			}),
			pvprank(4, {	-- Master Sergeant / Senior Sergeant
				title(11, {	-- Master Sergeant <Name>
					races = ALLIANCE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
				title(24, {	-- Senior Sergeant <Name>
					races = HORDE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
			}),
			pvprank(5, {	-- Sergeant Major / First Sergeant
				title(12, {	-- Sergeant Major <Name>
					races = ALLIANCE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
				title(25, {	-- First Sergeant <Name>
					races = HORDE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
			}),
			pvprank(6, {	-- Knight / Stone Guard
				title(13, {	-- Knight <Name>
					races = ALLIANCE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
				title(26, {	-- Stone Guard <Name>
					races = HORDE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
			}),
			pvprank(7, {	-- Knight-Lieutenant / Blood Guard
				title(14, {	-- Knight-Lieutenant <Name>
					races = ALLIANCE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
				title(27, {	-- Blood Guard <Name>
					races = HORDE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
			}),
			pvprank(8, {	-- Knight-Captain / Legionnaire
				title(35, {	-- Knight-Captain <Name>
					races = ALLIANCE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
				title(28, {	-- Legionnaire <Name>
					races = HORDE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
			}),
			pvprank(9, {	-- Knight-Champion / Centurion
				title(15, {	-- Knight-Champion <Name>
					races = ALLIANCE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
				title(29, {	-- Centurion <Name>
					races = HORDE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
			}),
			pvprank(10, {	-- Lieutenant Commander / Champion
				title(16, {	-- Lieutenant Commander <Name>
					races = ALLIANCE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
				title(30, {	-- Champion <Name>
					races = HORDE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
			}),
			pvprank(11, {	-- Commander / Lieutenant General
				title(17, {	-- Commander <Name>
					races = ALLIANCE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
				title(31, {	-- Lieutenant General <Name>
					races = HORDE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
			}),
			pvprank(12, {	-- Marshal / General
				title(18, {	-- Marshal <Name>
					races = ALLIANCE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
				title(32, {	-- General <Name>
					races = HORDE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
			}),
			pvprank(13, {	-- Field Marshal / Warlord
				title(19, {	-- Field Marshal <Name>
					races = ALLIANCE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
				title(33, {	-- Warlord <Name>
					races = HORDE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
			}),
			pvprank(14, {	-- Grand Marshal / High Warlord
				title(20, {	-- Grand Marshal <Name>
					races = ALLIANCE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
				title(34, {	-- High Warlord <Name>
					races = HORDE_ONLY,
					OnUpdate = [[_.OnUpdateDB.ForeverRankTitle]],
				}),
			}),
		},
	}),
});
