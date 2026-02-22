---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.EVERSONG_WOODS, {
		n(WORLD_QUESTS, {
		--	["sourceQuests"] = {
		--	},
			["groups"] = bubbleDownFiltered({
				["isWorldQuest"] = true,
			},FILTERFUNC_questID,{
				q(92150, {	-- A Breeze through Fairbreeze
					["coord"] = { 46.5, 45.1, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				q(92143, {	-- Arcane Reallocation
					["coord"] = { 37.5, 64.6, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = {
						i(269606),	-- Borrowed Wand (QI!)
						i(258034),	-- Unstable Arcana (QI!)
					},
				}),
				q(92152, {	-- Battling the Bloom
					["coord"] = { 39.9, 56.8, MAP.MIDNIGHT.EVERSONG_WOODS },
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
				q(92195, {	-- Come On Down
					["coord"] = { 64.3, 32.2, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				q(92149, {	-- Complex 04 (TODO: unsure if it is not a ph name?)
					["coord"] = { 42.2, 87.7, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				q(92146, {	-- Containment Zone
					["coord"] = { 54.5, 59.2, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				q(92160, {	-- Hatchling Havoc
					["coord"] = { 56.8, 35.6, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				q(92138, {	-- Mobilize! Enlist! Recruit!
					["coord"] = { 41.7, 20.5, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = {
						i(250440),	-- Recruitment Fliers
					},
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
				q(92121, {	-- The Great Outdoors
					["coord"] = { 58.7, 68.9, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				q(92153, {	-- The Moon at Twilight
					["coord"] = { 43.3, 69.6, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				q(92120, {	-- To Understand Magic
					["coord"] = { 35.0, 59.9, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(255842),	-- Training Rod of Polymorph (QI!)
						o(613517, {	-- Tome of Polymorph
							i(258965),	-- Tome of Polymorph (QI!)
						}),
					},
				}),
				q(92140, {	-- Uprooting Efforts
					["coord"] = { 61.6, 55.9, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				--
				q(92145, {	-- Special Assignment: The Grand Magister's Drink
					["coord"] = { 40.7, 61.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = {
						i(254373),	-- Areyn's Elrendar Red
						i(254387),	-- Duskwither's Dancing Merlot
						i(253521),	-- Heron's Vision of Cloudwalking
						i(254673),	-- Kreynna's Khadgar's Imitation
						i(254384),	-- Lady Marilin's Arcwine Reserve
						i(254385),	-- Landraelanis' Muskmelon Draught
						i(254386),	-- Limien's Arcane Infusion
						i(254388),	-- Nara's Essence of Butterfly
						i(254389),	-- Quarelestra's Sanguine Affair
						i(254390),	-- Sheri's Laughing Rose
						i(254391),	-- Vehn's Shimmerveil Blanc
						i(254394),	-- Zalene's Twilight Claret
					},
				}),
			}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.EVERSONG_WOODS, {
			n(QUESTS, {
				q(94815),	-- HIDDEN QUEST - Special Assignment: The Grand Magister's Drink [DNT], pop in area for SA (@38.7, 64.1). // Probably RP part for NPCs in area about wine, wrapper for achievement to test out different wines during SA?
				hqt(95435),	-- Special Assignment: Shade and Claw was unlocked
				hqt(92848),	-- Special Assignment: The Grand Magister's Drink was unlocked
			}),
		}),
	}),
}));
