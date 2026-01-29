---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.EVERSONG_WOODS, {
		n(WORLD_QUESTS, {
		--	["sourceQuests"] = {
		--	},
		--	["groups"] = bubbleDownFiltered({ ["isWorldQuest"] = true, },FILTERFUNC_questID,{
				q(92143, {	-- Arcane Reallocation
					["coord"] = { 37.5, 64.6, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = {
						i(269606),	-- Borrowed Wand (QI!)
						i(258034),	-- Unstable Arcana (QI!)
					},
				}),
				q(92122, {	-- Beneath the Sunsails
					["coord"] = { 37.9, 44.6, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				q(92141, {	-- Classic Threats
					["coord"] = { 38.2, 22.9, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = {
						i(258966),	-- Lynx Collar (QI!)
					},
				}),
				q(92149, {	-- Complex 04 (TODO: unsure if it is not a ph name?)
					["coord"] = { 42.2, 87.7, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				q(92146, {	-- Containment Zone
					["coord"] = { 54.5, 59.2, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				q(92138, {	-- Mobilize! Enlist! Recruit!
					["coord"] = { 41.7, 20.5, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				q(92144, {	-- No Squatters
					["coord"] = { 61.2, 48.7, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				q(92105, {	-- Papers, Please!
					--["coord"] = { 35.7, 69.0, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(92364, {	-- Sun Support
					["coord"] = { 50.5, 75.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = {
						i(250854),	-- Sun's Focus (QI!)
					},
				}),
				q(92120, {	-- To Understand Magic
					["coord"] = { 35.0, 59.9, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(92140, {	-- Uprooting Efforts
					["coord"] = { 61.6, 55.9, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				--
				q(92145, {	-- Special Assignment: The Grand Magister's Drink
					["coord"] = { 40.7, 61.2, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
		--	}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.EVERSONG_WOODS, {
			n(QUESTS, {
				--q(86645),	-- Hidden Quest [DNT], when you fly into Special Assignment: The Grand Magister's Drink wq zone.
				--q(94815),	-- HIDDEN QUEST - Special Assignment: The Grand Magister's Drink [DNT], pop in area for SA but when it wasn't up on map (@38.7, 64.1).
			}),
		}),
	}),
}));
