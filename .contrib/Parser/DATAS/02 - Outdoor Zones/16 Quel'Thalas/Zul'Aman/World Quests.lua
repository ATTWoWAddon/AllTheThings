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
				q(91810, {	-- Blistereel Boar Buffet
					["coord"] = { 45.3, 28.5, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = {
						i(260890),	-- Bag of Skewers (QI!)
					},
				}),
				q(91805, {	-- Boughs in the Burrows
					["coord"] = { 42.2, 47.8, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = {
						o(574830, {	-- Heartwisp Shrub
							i(252370),	-- Heartwisp Frond (QI!)
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
						o(612932, {	-- Ransacked Heirloom
							i(258321),	-- Ransacked Heirloom (QI!)
						}),
					},
				}),
				q(91803, {	-- Marsh Menace
					["coord"] = { 48.3, 63.5, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = {
						o(574750, {	-- Stolen Supplies
							i(249498),	-- Stolen Supplies (QI!)
						}),
					},
				}),
				q(91808, {	-- Resource Recovery
					["coord"] = { 30.0, 30.0, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = {
						i(238962),	-- Lightwood Splinters (QI!)
						o(525374, {	-- Stolen Equipment
							i(238964),	-- Stolen Equipment (QI!)
						}),
					},
				}),
				q(91796, {	-- Special Assignment: Ours Once More!
					["coord"] = { 73.6, 35.6, 2536 },	-- Atal'Aman
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
