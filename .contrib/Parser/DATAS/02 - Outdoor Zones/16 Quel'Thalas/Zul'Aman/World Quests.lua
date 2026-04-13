---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ZULAMAN, {
		n(WORLD_QUESTS, {
		--	["sourceQuests"] = {
		--	},
			["groups"] = bubbleDownFiltered({
				["isWorldQuest"] = true,
			},FILTERFUNC_questID,{
				q(91811, {	-- A Scorched Mirror
					["coord"] = { 52.0, 19.8, MAP.MIDNIGHT.ZULAMAN },
				}),
				q(91806, {	-- Big Game Hunting
					["coord"] = { 29.3, 37.7, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = {
						o(612282, {	-- Stolen Meat
							["coords"] = {
								{ 26.0, 37.6, MAP.MIDNIGHT.ZULAMAN },
								{ 27.4, 36.0, MAP.MIDNIGHT.ZULAMAN },
								{ 27.4, 37.4, MAP.MIDNIGHT.ZULAMAN },
								{ 27.4, 39.4, MAP.MIDNIGHT.ZULAMAN },
								{ 27.5, 35.9, MAP.MIDNIGHT.ZULAMAN },
								{ 27.6, 34.8, MAP.MIDNIGHT.ZULAMAN },
								{ 28.1, 37.0, MAP.MIDNIGHT.ZULAMAN },
								{ 28.1, 39.0, MAP.MIDNIGHT.ZULAMAN },
								{ 28.4, 34.2, MAP.MIDNIGHT.ZULAMAN },
								{ 28.5, 38.5, MAP.MIDNIGHT.ZULAMAN },
							},
							["groups"] = { i(258324) },	-- Stolen Game Meat (QI!)
						}),
					},
				}),
				q(91810, {	-- Blistereel Boar Buffet
					["coord"] = { 45.3, 28.5, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = { i(260890) },	-- Bag of Skewers (QI!)
				}),
				q(91805, {	-- Boughs in the Burrows
					["coord"] = { 42.2, 47.8, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = {
						o(574830, {	-- Heartwisp Shrub
							["coords"] = {
								{ 37.8, 49.6, MAP.MIDNIGHT.ZULAMAN },
								{ 38.3, 48.9, MAP.MIDNIGHT.ZULAMAN },
								{ 38.6, 49.3, MAP.MIDNIGHT.ZULAMAN },
								{ 38.9, 44.6, MAP.MIDNIGHT.ZULAMAN },
								{ 39.1, 50.1, MAP.MIDNIGHT.ZULAMAN },
								{ 39.4, 45.6, MAP.MIDNIGHT.ZULAMAN },
								{ 39.8, 44.4, MAP.MIDNIGHT.ZULAMAN },
								{ 40.2, 48.4, MAP.MIDNIGHT.ZULAMAN },
								{ 40.3, 45.2, MAP.MIDNIGHT.ZULAMAN },
								{ 40.4, 49.0, MAP.MIDNIGHT.ZULAMAN },
								{ 40.7, 47.0, MAP.MIDNIGHT.ZULAMAN },
								{ 41.1, 48.9, MAP.MIDNIGHT.ZULAMAN },
								{ 41.3, 49.5, MAP.MIDNIGHT.ZULAMAN },
								{ 41.6, 47.5, MAP.MIDNIGHT.ZULAMAN },
							},
							["groups"] = { i(252370) },	-- Heartwisp Frond (QI!)
						}),
					},
				}),
				q(91804, {	-- Fish for the Fire
					["coord"] = { 49.4, 51.4, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = {
						i(257241),	-- Lumpy Fish Guts (QI!)
					},
				}),
				q(91798, {	-- Fish Of The Day
					["coord"] = { 40.2, 77.1, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = {
						i(252003),	-- Slippery Snapper (QI!)
					},
				}),
				q(91800, {	-- Heirlooming Danger
					["coord"] = { 25.8, 65.2, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = {
						o_repeated({	-- Ransacked Heirloom
							["coords"] = {
								{ 23.3, 60.4, MAP.MIDNIGHT.ZULAMAN },
								{ 23.5, 61.3, MAP.MIDNIGHT.ZULAMAN },
								{ 23.9, 62.4, MAP.MIDNIGHT.ZULAMAN },
								{ 24.2, 64.0, MAP.MIDNIGHT.ZULAMAN },
								{ 24.7, 61.7, MAP.MIDNIGHT.ZULAMAN },
								{ 25.2, 61.5, MAP.MIDNIGHT.ZULAMAN },
								{ 24.7, 62.5, MAP.MIDNIGHT.ZULAMAN },
								{ 25.0, 63.2, MAP.MIDNIGHT.ZULAMAN },
								{ 25.0, 64.5, MAP.MIDNIGHT.ZULAMAN },
								{ 25.8, 63.7, MAP.MIDNIGHT.ZULAMAN },
								{ 25.1, 64.6, MAP.MIDNIGHT.ZULAMAN },
								{ 26.3, 62.8, MAP.MIDNIGHT.ZULAMAN },
							},
							["groups"] = {
								i(258321),	-- Ransacked Heirloom (QI!)
								o(612932),	-- Ransacked Heirloom
								o(612930),	-- Ransacked Heirloom
							},
						}),
					},
				}),
				q(91803, {	-- Marsh Menace
					["coord"] = { 48.3, 63.5, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = {
						o(574750, {	-- Stolen Supplies
							["coords"] = {
								{ 48.6, 64.9, MAP.MIDNIGHT.ZULAMAN },
								{ 48.7, 66.1, MAP.MIDNIGHT.ZULAMAN },
								{ 49.5, 66.2, MAP.MIDNIGHT.ZULAMAN },
								{ 49.8, 63.4, MAP.MIDNIGHT.ZULAMAN },
								{ 50.5, 64.5, MAP.MIDNIGHT.ZULAMAN },
								{ 51.4, 63.9, MAP.MIDNIGHT.ZULAMAN },
								{ 51.4, 65.7, MAP.MIDNIGHT.ZULAMAN },
								{ 51.9, 64.7, MAP.MIDNIGHT.ZULAMAN },
								{ 52.0, 65.5, MAP.MIDNIGHT.ZULAMAN },
								{ 52.7, 63.4, MAP.MIDNIGHT.ZULAMAN },
								{ 53.1, 64.8, MAP.MIDNIGHT.ZULAMAN },
								{ 53.9, 66.3, MAP.MIDNIGHT.ZULAMAN },
							},
							["groups"] = { i(249498) },	-- Stolen Supplies (QI!)
						}),
					},
				}),
				q(91808, {	-- Resource Recovery
					["coord"] = { 30.0, 30.0, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = {
						i(238962),	-- Lightwood Splinters (QI!)
						o(525374, {	-- Stolen Equipment
							["coords"] = {
								{ 29.9, 27.9, MAP.MIDNIGHT.ZULAMAN },
								{ 29.6, 29.0, MAP.MIDNIGHT.ZULAMAN },
								{ 30.3, 27.7, MAP.MIDNIGHT.ZULAMAN },
								{ 30.3, 28.4, MAP.MIDNIGHT.ZULAMAN },
								{ 30.4, 27.3, MAP.MIDNIGHT.ZULAMAN },
								{ 30.7, 27.6, MAP.MIDNIGHT.ZULAMAN },
								{ 30.8, 27.6, MAP.MIDNIGHT.ZULAMAN },
							},
							["groups"] = { i(238964) },	-- Stolen Equipment (QI!)
						}),
					},
				}),
				q(91796, {	-- Special Assignment: Ours Once More!
					["coord"] = { 73.6, 35.6, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
				}),
				q(91390, {	-- Special Assignment: What Remains of a Temple Broken
					-- Complete three dailies
					-- ["coord"] = { X, Y, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
				}),
				q(91399, {	-- Ashes of the Void
					["sourceQuest"] = 91390,	-- Special Assignment: What Remains of a Temple Broken
					["qg"] = 246878,	-- Nan'kejo
					["coord"] = { 22.6, 73.2, MAP.MIDNIGHT.ZULAMAN },
					["isDaily"] = true,
					["groups"] = { i(246439) },	-- Void Ashes (QI!)
				}),
				q(91400, {	-- Blades of the Fallen
					["sourceQuest"] = 91390,	-- Special Assignment: What Remains of a Temple Broken
					["qg"] = 246879,	-- Akovu
					["coord"] = { 22.5, 79.7, MAP.MIDNIGHT.ZULAMAN },
					["isDaily"] = true,
				}),
				q(91401, {	-- Dead by Dusk
					["sourceQuest"] = 91390,	-- Special Assignment: What Remains of a Temple Broken
					["qg"] = 246880,	-- Kul'kul
					["coord"] = { 28.4, 76.8, MAP.MIDNIGHT.ZULAMAN },
					["isDaily"] = true,
					["groups"] = { i(246440) },	-- Cultist Femur (QI!)
				}),
				q(91398, {	-- Tomes of Terror
					["sourceQuest"] = 91390,	-- Special Assignment: What Remains of a Temple Broken
					["qg"] = 246877,	-- Tenak
					["coord"] = { 27.3, 72.6, MAP.MIDNIGHT.ZULAMAN },
					["isDaily"] = true,
					["groups"] = {
						i(246436),	-- Ogre Tome of Dark Magic (QI!)
						i(246437),	-- Ogre Tome of Fighting Techniques (QI!)
					},
				}),
				q(91402, {	-- Ultra Deadly Ultradon
					["sourceQuest"] = 91390,	-- Special Assignment: What Remains of a Temple Broken
					["qg"] = 246881,	-- Jan'teko
					["coord"] = { 25.5, 74.6, MAP.MIDNIGHT.ZULAMAN },
					["isDaily"] = true,
				}),
				q(91801, {	-- Twilight's Bane
					["coord"] = { 38.7, 73.1, MAP.MIDNIGHT.ZULAMAN },
				}),
			}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.ZULAMAN, {
			n(QUESTS, {
				hqt(94866),	-- Special Assignment: Ours Once More! was unlocked
				hqt(94865),	-- Special Assignment: What Remains of a Temple Broken was unlocked
			}),
		}),
	}),
}));
