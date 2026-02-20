---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	n(QUESTS, {
		q(94993, {	-- Adventuring in Midnight
			["description"] = "Pops up the first time you enter Sanctum of Light and leads you to the Scouting Map so you can chose where to start your Campaign.",
			["coord"] = { 45.7, 67.7, MAP.MIDNIGHT.SILVERMOON_CITY },
		}),
		header(HEADERS.Achievement, 41805, {	-- Arator's Journey
			header(HEADERS.AchCriteria, 41805.01, {	-- The Path of Light
				q(89193, {	-- Arator
					--["sourceQuests"] = { XX },	-- XX
					["provider"] = { "n", 240523 },	-- Scouting Map
					["coord"] = { 45.5, 70.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(86837, {	-- Meet at the Sunwell
					["sourceQuests"] = { 89193 },	-- Arator
					["provider"] = { "n", 237565 },	-- Alonsus Faol
					["coord"] = { 45.8, 65.8, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(86838, {	-- Renewal for the Weary
					["sourceQuests"] = { 89193 },	-- Arator
					["provider"] = { "n", 240240 },	-- Alonsus Faol
					["coord"] = { 52.9, 55.2, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
					["groups"] = {
						i(237811),	-- Faol's Benediction (QI!)
						i(251274),	-- Gloves of Renewal
						i(251277),	-- Hands of Renewal
						i(251276),	-- Touch of Renewal
						i(251275),	-- Wraps of Renewal
					},
				}),
				------ Stay awhile and listen ------
				--hqt(??, {	-- Stay awhile and listen: Alonsus Faol
				--	["name"] = "Stay awhile and listen: Alonsus Faol",
				--	["description"] = "Dialogue becomes available during 'Renewal for the Weary' (86838).",
				--	["sourceQuests"] = { 86837 },	-- Meet at the Sunwell
				--	["provider"] = { "n", 240240 },	-- Alonsus Faol
				--	["coord"] = { 52.9, 55.2, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
				--}),
				--
				q(86839, {	-- To Light's Hope
					["sourceQuests"] = { 86838 },	-- Renewal for the Weary
					["provider"] = { "n", 240240 },	-- Alonsus Faol
					["coord"] = { 52.9, 55.2, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
				}),
				q(86840, {	-- Flickering Hope
					["sourceQuests"] = { 86839 },	-- To Light's Hope
					["provider"] = { "n", 237594 },	-- Lord Maxwell Tyrosus
					["coord"] = { 73.9, 53.5, EASTERN_PLAGUELANDS },
					["groups"] = {
						i(251720),	-- Light's Hope Epaulets
						i(251719),	-- Light's Hope Mantle
						i(251722),	-- Light's Hope Shoulderpads
						i(251721),	-- Light's Hope Shoulders
					},
				}),
				q(86841, {	-- Relics of Paladins Past
					["sourceQuests"] = { 86840 },	-- Flickering Hope
					["provider"] = { "n", 237594 },	-- Lord Maxwell Tyrosus
					["coord"] = { 73.9, 53.5, EASTERN_PLAGUELANDS },
					["groups"] = {
						--o(??, {	-- Vindicator Maraad's Meditation Crystal
							i(237513),	-- Vindicator Maraad's Meditation Crystal (QI!)
						--}),
						o(523389, {	-- Krohm Dawnhammer's Smithing Hammer
							i(237547),	-- Krohm Dawnhammer's Smithing Hammer (QI!)
						}),
						o(508705, {	-- Lena Stormpike's Stein
							i(237518),	-- Lena Stormpike's Stein (QI!)
						}),
						o(523391, {	-- Uther's Healing Kit
							i(237519),	-- Uther's Healing Kit (QI!)
						}),
						o(523390, {	-- Mara Fordragon's Prayer Book
							i(237573),	-- Mara Fordragon's Prayer Book (QI!)
						}),
					},
				}),
				q(86842, {	-- Cleanse the Halls
					["sourceQuests"] = { 86841 },	-- Relics of Paladins Past
					["provider"] = { "n", 237601 },	-- Alonsus Faol
					["coord"] = { 73.8, 53.5, EASTERN_PLAGUELANDS },
					["maps"] = { 2438 },	-- Scarlet Halls
				}),
				------ Stay awhile and listen ------
				--hqt(??, {	-- Stay awhile and listen: Arator
				--	["name"] = "Stay awhile and listen: Arator",
				--	["description"] = "Dialogue becomes available during 'Cleanse the Halls' (86842).",
				--	["sourceQuests"] = { 86841 },	-- Relics of Paladins Past
				--	["provider"] = { "n", 241255 },	-- Arator
				--	["coord"] = { 73.9, 53.7, EASTERN_PLAGUELANDS },
				--}),
				--
				q(86843, {	-- Light Miswielded
					["sourceQuests"] = { 86842 },	-- Cleanse the Halls
					["provider"] = { "n", 237602 },	-- Alonsus Faol
					["coord"] = { 47.4, 90.7, 2438 },	-- Scarlet Halls
				}),
				q(86844, {	-- Light Repurposed
					["sourceQuests"] = { 86842 },	-- Cleanse the Halls
					["provider"] = { "n", 237602 },	-- Alonsus Faol
					["coord"] = { 47.4, 90.7, 2438 },	-- Scarlet Halls
					["groups"] = {
						i(237761),	-- Aelyse's Gleaming Falchion (QI!)
						i(237576),	-- Benthar's Scarlet Spire (QI!)
						i(237579),	-- Meyer's Rod of Castigation (QI!)
						--rewards after turn in
						i(251724),	--
						i(251725),	--
						i(251726),	--
						i(251727),	--
						i(251728),	--
						i(251729),	--
						i(251730),	--
						i(251731),	--
						i(251732),	--
						i(251733),	--
						i(251734),	--
					},
				}),
				q(92136, {	-- Relic Delivery
					["sourceQuests"] = {
						86843,	-- Light Miswielded
						86844,	-- Light Repurposed
					},
					["provider"] = { "n", 237602 },	-- Alonsus Faol
					["coord"] = { 41.4, 28.8, 2438 },	-- Scarlet Halls
				}),
				q(86902, {	-- Relinquishing Relics
					["sourceQuests"] = { 92136 },	-- Relic Delivery
					["provider"] = { "n", 251355 },	-- Alonsus Faol
					["coord"] = { 52.6, 55.9, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
					["groups"] = {
						i(251774, {	-- Crate of Holy Relics
							i(251775),	-- Empty Crate of Relics
						}),
					},
				}),
				q(86845, {	-- Follow the Light
					["sourceQuests"] = { 86902 },	-- Relinquishing Relics
					["provider"] = { "n", 251355 },	-- Alonsus Faol
					["coord"] = { 52.6, 55.9, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
				}),
				q(86846, {	-- Resupplying our Suppliers
					["sourceQuests"] = { 86845 },	-- Follow the Light
					["provider"] = { "n", 245186 },	-- Sunwalker Dezco
					["coord"] = { 68.9, 37.7, 2372 },	-- Arathi Highlands
				}),
				q(91000, {	-- A Humble Servant
					["sourceQuests"] = { 86845 },	-- Follow the Light
					["provider"] = { "n", 245186 },	-- Sunwalker Dezco
					["coord"] = { 68.9, 37.7, 2372 },	-- Arathi Highlands
					["groups"] = {
						i(251818),	-- Humble Servant's Briefs
						i(251819),	-- Humble Servant's Leggings
						i(251816),	-- Humble Servant's Pants
						i(251817),	-- Humble Servant's Tights
					},
				}),
				------ Stay awhile and listen ------
				--hqt(??, {	-- Stay awhile and listen: Sunwalker Dezco
				--	["name"] = "Stay awhile and listen: Sunwalker Dezco",
				--	["description"] = "Dialogue becomes available during 'A Humble Servant' (91000).",
				--	["sourceQuests"] = { 86845 },	-- Relics of Paladins Past
				--	["provider"] = { "n", 245186 },	-- Sunwalker Dezco
				--	["coord"] = { 68.9, 37.7, 2372 },
				--}),
				--
				q(89338, {	-- Gathering Plowshares
					["sourceQuests"] = {
						91000,	-- A Humble Servant
						86846,	-- Resupplying our Suppliers
					},
					["provider"] = { "n", 247299 },	-- Sunwalker Dezco
					["coord"] = { 69.3, 34.4, 2372 },	-- Arathi Highlands
					["groups"] = {
						o(525492, {
							i(238515),	-- Forgotten Skullcleaver (QI!)
						}),
						o(525493, {
							i(238516),	-- Fallen Longsword (QI!)
						}),
					},
				}),
			}),
			header(HEADERS.AchCriteria, 41805.02, {	-- Regrets of the Past
				q(86822, {	-- Separate Ways
					["sourceQuests"] = { 89338 },	-- Gathering Plowshares
					["provider"] = { "n", 240747 },	-- Alonsus Faol
					["coord"] = { 68.6, 32.0, 2372 },	-- Arathi Highlands
				}),
				q(86823, {	-- The Dark Horde
					["sourceQuests"] = { 86822 },	-- Separate Ways
					["provider"] = { "n", 237224 },	-- Eitrigg
					["coord"] = { 33.5, 48.6, BURNING_STEPPES },
				}),
				q(86824, {	-- None Left Standing
					["sourceQuests"] = { 86822 },	-- Separate Ways
					["provider"] = { "n", 237224 },	-- Eitrigg
					["coord"] = { 33.5, 48.6, BURNING_STEPPES },
					["groups"] = {
						i(239130),	-- Torch (QI!)
					},
				}),
				q(86825, {	-- Faithful Servant, Faithless Cause
					["sourceQuests"] = { 86822 },	-- Separate Ways
					["provider"] = { "n", 237224 },	-- Eitrigg
					["coord"] = { 33.5, 48.6, BURNING_STEPPES },
					["groups"] = {
						i(246704),	-- Mar'kag's Buckle (QI!)
						--
						i(251832),	-- Mar'kag's Anklet
						i(251831),	-- Mar'kag's Bracers
						i(251829),	-- Mar'kag's Handless Gloves
						i(251830),	-- Mar'kag's Oversized Ring
					},
				}),
				q(91391, {	-- Still Scouting
					["sourceQuests"] = {
						86825,	-- Faithful Servant, Faithless Cause
						86824,	-- None Left Standing
						86823,	-- The Dark Horde
					},
					["provider"] = { "n", 237224 },	-- Eitrigg
					["coord"] = { 33.5, 48.6, BURNING_STEPPES },
				}),
				q(86827, {	-- Due Recognition
					["sourceQuests"] = { 91391 },	-- Still Scouting
					["provider"] = { "n", 237268 },	-- Kurdran Wildhammer
					["coord"] = { 21.1, 39.8, BURNING_STEPPES },
					["groups"] = { i(247218) },	-- Stone Guard's Badge (QI!)
				}),
				q(86826, {	-- Nagosh the Scarred
					["sourceQuests"] = { 91391 },	-- Still Scouting
					["provider"] = { "n", 237268 },	-- Kurdran Wildhammer
					["coord"] = { 21.1, 39.8, BURNING_STEPPES },
					["groups"] = {
						i(246699),	-- Nagosh' Relic Fragment (QI!)
						--
						i(251826),	-- Medallion of the Dark Horde
						i(251828),	-- Scarred Blackrock Choker
					},
				}),
				q(91842, {	-- Disarm the Dark Horde
					["sourceQuests"] = { 91391 },	-- Still Scouting
					["provider"] = { "n", 237268 },	-- Kurdran Wildhammer
					["coord"] = { 21.1, 39.8, BURNING_STEPPES },
				}),
				q(86828, {	-- Not Just a Troll's Bane
					["sourceQuests"] = {
						91842,	-- Disarm the Dark Horde
						86827,	-- Due Recognition
						86826,	-- Nagosh the Scarred
					},
					["provider"] = { "n", 237268 },	-- Kurdran Wildhammer
					["coord"] = { 21.1, 39.8, BURNING_STEPPES },
				}),
				q(86830, {	-- A True Horde of Dark Horde
					["sourceQuests"] = { 86828 },	-- Not Just a Troll's Bane
					["provider"] = { "n", 242120 },	-- Danath Trollbane
					["coord"] = { 31.6, 37.6, BURNING_STEPPES },
				}),
				q(86831, {	-- Warriors without a Warlord
					["sourceQuests"] = { 86828 },	-- Not Just a Troll's Bane
					["provider"] = { "n", 242120 },	-- Danath Trollbane
					["coord"] = { 31.6, 37.6, BURNING_STEPPES },
					["groups"] = {
						i(235625),	-- Grazla's Relic Fragment (QI!)
						--
						i(251822),	-- Dark Horde Circle
						i(251824),	-- Dark Horde Cowl
						i(251823),	-- Dark Horde Helm
						i(251825),	-- Dark Horde Helmet
					},
				}),
				q(86829, {	-- A Landmark Moment
					["sourceQuests"] = {
						86830,	-- A True Horde of Dark Horde
						86831,	-- Warriors without a Warlord
					},
					["provider"] = { "n", 242120 },	-- Danath Trollbane
					["coord"] = { 31.6, 37.6, BURNING_STEPPES },
				}),
				q(91726, {	-- Unstoppable Force
					["sourceQuests"] = { 86829 },	-- A Landmark Moment
					["provider"] = { "n", 248250 },	-- Kurdran Wildhammer
					["coord"] = { 36.8, 51.0, BURNING_STEPPES },
				}),
				q(86832, {	-- To Silvermoon
					["sourceQuests"] = { 91726 },	-- Unstoppable Force
					["provider"] = { "n", 237508 },	-- Arator
					["coord"] = { 36.7, 51.1, BURNING_STEPPES },
				}),
				q(86833, {	-- A Bulwark Remade
					["sourceQuests"] = { 86832 },	-- To Silvermoon
					["provider"] = { "n", 237511 },	-- Alonsus Faol
					["coord"] = { 45.8, 65.5, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(86903, {	-- The Arcantina (TODO: should this be considered as sourceQuest for Arcantina?)
					["sourceQuests"] = { 86833 },	-- A Bulwark Remade
					["provider"] = { "n", 253125 },	-- Kurdran Wildhammer
					["coord"] = { 45.8, 65.5, MAP.MIDNIGHT.SILVERMOON_CITY },
					["maps"] = { ARCANTINA },
					["groups"] = {
						i(248131),	-- Key to the Arcantina (QI!) (but you keep it after quest as tp into zone?)
						i(254838),	-- A Round of Drinks (QI!)
					},
				}),
			}),
		}),
		--Alex TODO: atm, I'm not sure where to put this.
		q(91787, {	-- The Journey Ends
			["sourceQuests"] = { 86903 },	-- The Arcantina
			["provider"] = { "n", 253988 },	-- Arator
			["coord"] = { 51.9, 60.8, ARCANTINA },
		}),
		q(91854, {	-- Deepening Shadows
			["sourceQuests"] = { 91787 },	-- The Journey Ends
			["provider"] = { "n", 248631 },	-- Commander Koruth Mountainfist
			["coord"] = { 51.9, 60.8, MAP.MIDNIGHT.SILVERMOON_CITY },
			["groups"] = {
				--Alex TODO: bug out and npc fade out, probably it is part of other quest chain or 90s campgain, idk
			},
		}),
		header(HEADERS.Achievement, 60891, {	-- The Crimson Rogue
			header(HEADERS.AchCriteria, 60891.01, {	-- The Regent's Request
				q(91822, {	-- The Regent's Request
					--["sourceQuests"] = { XX },	-- XX
					["provider"] = { "n", 242381 },	-- Valeera Sanguinar
					["coord"] = { 52.5, 78.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(91823, {	-- Lines Cut, Tongues Silenced
					["sourceQuests"] = { 91822 },	-- The Regent's Request
					["provider"] = { "n", 248750 },	-- Valeera Sanguinar
					["coord"] = { 61.9, 68.3, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
				q(91824, {	-- The Thieves' Trail
					["sourceQuests"] = { 91822 },	-- The Regent's Request
					["provider"] = { "n", 248750 },	-- Valeera Sanguinar
					["coord"] = { 61.9, 68.3, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = { i(248614) },	-- Quel'dorel Artifact (QI!)
				}),
				q(91825, {	-- Dead Men Keep No Secrets
					["sourceQuests"] = { 91822 },	-- The Regent's Request
					["provider"] = { "n", 248750 },	-- Valeera Sanguinar
					["coord"] = { 61.9, 68.3, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = { i(248615) },	-- Infiltrator's Cache (QI!)
				}),
				q(91826, {	-- Tripwire Tango
					["sourceQuests"] = {
						91825,	-- Dead Men Keep No Secrets
						91823,	-- Lines Cut, Tongues Silenced
						91824,	-- The Thieves' Trail
					},
					["provider"] = { "n", 248874 },	-- Valeera Sanguinar
					["coord"] = { 61.9, 68.3, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = {
						o(566101, {	--
							i(248720),	-- Stolen Documents (QI!)
						}),
					},
				}),
				q(91827, {	-- No Loose Ends
					["sourceQuests"] = { 91826 },	-- Tripwire Tango
					["provider"] = { "n", 248874 },	-- Valeera Sanguinar
					["coord"] = { 61.9, 68.3, MAP.MIDNIGHT.EVERSONG_WOODS },
				}),
			}),
			header(HEADERS.AchCriteria, 60891.02, {	-- A Favor for the Lion
				q(91828, {	-- A Favor for the Lion
					["sourceQuests"] = { 91827 },	-- No Loose Ends (TODO: could be wrong)
					["provider"] = { "n", 242381 },	-- Valeera Sanguinar
					["coord"] = { 52.5, 78.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(91829, {	-- One by One
					["sourceQuests"] = { 91828 },	-- A Favor for the Lion
					["provider"] = { "n", 248982 },	-- Valeera Sanguinar
					["coord"] = { 40.4, 71.7, MAP.MIDNIGHT.ZULAMAN },
				}),
				q(91830, {	-- Intercepted
					["sourceQuests"] = { 91828 },	-- A Favor for the Lion
					["provider"] = { "n", 250295 },	-- Valeera Sanguinar
					--["coord"] = { 52.5, 78.3, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						o(2567202, {
							i(248928),	-- Cult Orders (QI!)
						}),
					},
				}),
				q(91831, {	-- Keys Are Optional
					["sourceQuests"] = { 91828 },	-- A Favor for the Lion
					["provider"] = { "n", 250295 },	-- Valeera Sanguinar
					--["coord"] = { 52.5, 78.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(91918, {	-- Delves: Measure Once, Cut Twice
					["sourceQuests"] = {
						91830,	-- Intercepted
						91831,	-- Keys Are Optional
						91829,	-- One by One
					},
					["provider"] = { "n", 250295 },	-- Valeera Sanguinar
					--["coord"] = { 52.5, 78.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		n(QUESTS, {
			q(95008),	-- Adventuring in Midnight - Triggered after accepting 'Voidstorm' (89388) from the Scouting Map
			-- During questing
			q(89196),	-- Zone Choice Made (spellID 1254861), after accepting questID 89193 (Arator)
			q(89247),	-- [DNT] (spellID 1227720), after accepting questID 86837 (Meet at the Sunwell)
			--q(89196),	-- unflagged (???), after turn in questID 86839 (To Light's Hope)
			--q(89247),	-- unflagged (???), after turn in questID 86903 (The Arcantina)
			--q(94623),	-- Building the Voidforge -- completed with q:92630
			q(95247, {["timeline"] = {ADDED_12_0_0}}),	-- when picking up q:92630 in Dornogal
		}),
	}),
}));
