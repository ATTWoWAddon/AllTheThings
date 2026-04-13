---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_1_LAUNCH } }, {
	n(QUESTS, {
		q(94993, {	-- Adventuring in Midnight
			["description"] = "Pops up the first time you enter Sanctum of Light and leads you to the Scouting Map so you can chose where to start your Campaign.",
			["coord"] = { 45.7, 67.7, MAP.MIDNIGHT.SILVERMOON_CITY },
		}),
		header(HEADERS.Achievement, 41805, {	-- Arator's Journey
			header(HEADERS.AchCriteria, 41805.01, {	-- The Path of Light
				q(89193, {	-- Arator
					["sourceQuests"] = { 86650 },	-- Fractured
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
						--
						i(251274),	-- Gloves of Renewal
						i(251277),	-- Hands of Renewal
						i(251276),	-- Touch of Renewal
						i(251275),	-- Wraps of Renewal
					},
				}),
				q(86839, {	-- Relics of Light's Hope
					["sourceQuests"] = { 86838 },	-- Renewal for the Weary
					["provider"] = { "n", 240240 },	-- Alonsus Faol
					["coord"] = { 52.9, 55.2, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
				}),
				------ Stay awhile and listen ------
				--hqt(??, {	-- Stay awhile and listen: Alonsus Faol
				--	["name"] = "Stay awhile and listen: Alonsus Faol",
				--	["description"] = "Dialogue becomes available after accepting 'Relics of Light's Hope' (86839).",
				--	["sourceQuests"] = { 86838 },	-- Renewal for the Weary
				--	["provider"] = { "n", 240240 },	-- Alonsus Faol
				--	["coord"] = { 52.9, 55.2, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
				--}),
				--
				q(86840, {	-- Flickering Hope
					["sourceQuests"] = { 86839 },	-- To Light's Hope
					["provider"] = { "n", 237594 },	-- Lord Maxwell Tyrosus
					["coord"] = { 73.9, 53.6, EASTERN_PLAGUELANDS },
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
					["coord"] = { 73.9, 53.6, EASTERN_PLAGUELANDS },
					["groups"] = {
						o(523388, {	-- Maraad's Meditation Crystal
							["coord"] = { 70.4, 42.5, LIGHTS_HOPE_CHAPEL },
							["groups"] = { i(237513) },	-- Krohm Dawnhammer's Smithing Hammer (QI!)
						}),
						o(523389, {	-- Krohm Dawnhammer's Smithing Hammer
							["coord"] = { 76.5, 32.6, LIGHTS_HOPE_CHAPEL },
							["groups"] = { i(237574) },	-- Krohm Dawnhammer's Smithing Hammer (QI!)
						}),
						o(508705, {	-- Lena Stormpike's Stein
							["coord"] = { 60.1, 27.6, LIGHTS_HOPE_CHAPEL },
							["groups"] = { i(237518) },	-- Lena Stormpike's Stein (QI!)
						}),
						o(523391, {	-- Uther's Healing Kit
							["coord"] = { 72.8, 14.7, LIGHTS_HOPE_CHAPEL },
							["groups"] = { i(237519) },	-- Uther's Healing Kit (QI!)
						}),
						o(523390, {	-- Mara Fordragon's Prayer Book
							["coord"] = { 79.2, 23.7, LIGHTS_HOPE_CHAPEL },
							["groups"] = { i(237573) },	-- Mara Fordragon's Prayer Book (QI!)
						}),
					},
				}),
				q(86842, {	-- Scarlet Power
					["sourceQuests"] = { 86841 },	-- Relics of Paladins Past
					["provider"] = { "n", 237601 },	-- Alonsus Faol
					["coord"] = { 73.8, 53.5, EASTERN_PLAGUELANDS },
					["maps"] = { 2438 },	-- Scarlet Halls
				}),
				------ Stay awhile and listen ------
				--hqt(??, {	-- Stay awhile and listen: Arator
				--	["name"] = "Stay awhile and listen: Arator",
				--	["description"] = "Dialogue becomes available during 'Scarlet Power' (86842).",
				--	["sourceQuests"] = { 86841 },	-- Relics of Paladins Past
				--	["provider"] = { "n", 241255 },	-- Arator
				--	["coord"] = { 73.9, 53.7, EASTERN_PLAGUELANDS },
				--}),
				--
				q(86843, {	-- Light Miswielded
					["sourceQuests"] = { 86842 },	-- Scarlet Power
					["provider"] = { "n", 237602 },	-- Alonsus Faol
					["coord"] = { 47.3, 90.8, 2438 },	-- Scarlet Halls
				}),
				q(86844, {	-- Light Repurposed
					["sourceQuests"] = { 86842 },	-- Scarlet Power
					["provider"] = { "n", 237602 },	-- Alonsus Faol
					["coord"] = { 47.3, 90.8, 2438 },	-- Scarlet Halls
					["groups"] = {
						i(237761),	-- Aelyse's Gleaming Falchion (QI!)
						i(237576),	-- Benthar's Scarlet Spire (QI!)
						i(237579),	-- Meyer's Rod of Castigation (QI!)
						--
						i(251725),	-- Repurposed Scarlet Axe
						i(251732),	-- Repurposed Scarlet Battlestaff
						i(251728),	-- Repurposed Scarlet Blade
						i(251733),	-- Repurposed Scarlet Bow
						i(251729),	-- Repurposed Scarlet Broadsword
						i(251731),	-- Repurposed Scarlet Cane
						i(251730),	-- Repurposed Scarlet Claymore
						i(251726),	-- Repurposed Scarlet Cleaver
						i(251734),	-- Repurposed Scarlet Shiv
						i(251724),	-- Repurposed Scarlet Skullsplitter
						i(251727),	-- Repurposed Scarlet Sword
					},
				}),
				q(92136, {	-- Infusion of Hope
					["sourceQuests"] = {
						86843,	-- Light Miswielded
						86844,	-- Light Repurposed
					},
					["provider"] = { "n", 237602 },	-- Alonsus Faol
					["coords"] = {
						{ 41.3, 28.8, 2438 },	-- Scarlet Halls
						{ 47.3, 90.8, 2438 },	-- Scarlet Halls
					},
				}),
				q(86902, {	-- Relinquishing Relics
					["sourceQuests"] = { 92136 },	-- Relic Delivery
					["provider"] = { "n", 251355 },	-- Alonsus Faol
					["coord"] = { 52.6, 55.9, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
					["groups"] = { i(257240) };	-- Relinquished Scarlet Charger (MOUNT!)
				}),
				q(86845, {	-- The Sunwalker Path
					["sourceQuests"] = { 86902 },	-- Relinquishing Relics
					["provider"] = { "n", 251355 },	-- Alonsus Faol
					["coord"] = { 52.6, 55.9, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
				}),
				q(91000, {	-- A Humble Servant
					["sourceQuests"] = { 86845 },	-- The Sunwalker Path
					["provider"] = { "n", 245186 },	-- Sunwalker Dezco
					["coord"] = { 68.9, 37.7, ARATHI_HIGHLANDS },
					["groups"] = {
						i(251818),	-- Humble Servant's Briefs
						i(251819),	-- Humble Servant's Leggings
						i(251816),	-- Humble Servant's Pants
						i(251817),	-- Humble Servant's Tights
					},
				}),
				q(86846, {	-- Resupplying our Suppliers
					["sourceQuests"] = { 86845 },	-- The Sunwalker Path
					["provider"] = { "n", 245186 },	-- Sunwalker Dezco
					["coord"] = { 68.9, 37.7, ARATHI_HIGHLANDS },
				}),
				q(89338, {	-- Gathering Plowshares
					["sourceQuests"] = {
						91000,	-- A Humble Servant
						86846,	-- Resupplying our Suppliers
					},
					["provider"] = { "n", 247299 },	-- Sunwalker Dezco
					["coord"] = { 68.5, 32.2, ARATHI_HIGHLANDS },	-- Arathi Highlands
					["groups"] = {
						o(525492, {	-- Forgotten Skullcleaver
							["coords"] = {
								{ 64.0, 37.0, ARATHI_HIGHLANDS },
								{ 64.1, 39.2, ARATHI_HIGHLANDS },
								{ 64.4, 42.7, ARATHI_HIGHLANDS },
								{ 64.7, 34.8, ARATHI_HIGHLANDS },
								{ 65.9, 33.9, ARATHI_HIGHLANDS },
								{ 65.9, 36.8, ARATHI_HIGHLANDS },
								{ 66.0, 40.4, ARATHI_HIGHLANDS },
								{ 66.2, 45.2, ARATHI_HIGHLANDS },
								{ 66.6, 47.7, ARATHI_HIGHLANDS },
								{ 66.7, 39.3, ARATHI_HIGHLANDS },
								{ 68.0, 40.2, ARATHI_HIGHLANDS },
								{ 68.9, 42.0, ARATHI_HIGHLANDS },
								{ 70.0, 44.4, ARATHI_HIGHLANDS },
								{ 70.8, 41.2, ARATHI_HIGHLANDS },
							},
							["groups"] = { i(238515) },	-- Forgotten Skullcleaver (QI!)
						}),
						o(525493, {	-- Fallen Longsword
							["coord"] = {
								{ 64.4, 36.0, ARATHI_HIGHLANDS },
								{ 64.4, 40.7, ARATHI_HIGHLANDS },
								{ 65.3, 39.5, ARATHI_HIGHLANDS },
								{ 65.6, 34.0, ARATHI_HIGHLANDS },
								{ 65.6, 41.6, ARATHI_HIGHLANDS },
								{ 65.7, 37.9, ARATHI_HIGHLANDS },
								{ 65.8, 40.9, ARATHI_HIGHLANDS },
								{ 66.1, 35.4, ARATHI_HIGHLANDS },
								{ 66.8, 42.6, ARATHI_HIGHLANDS },
								{ 68.0, 46.2, ARATHI_HIGHLANDS },
								{ 68.7, 40.3, ARATHI_HIGHLANDS },
								{ 69.3, 45.4, ARATHI_HIGHLANDS },
								{ 70.0, 40.9, ARATHI_HIGHLANDS },
								{ 70.9, 43.0, ARATHI_HIGHLANDS },
							},
							["groups"] = { i(238516) },	-- Forgotten Longsword (QI!)
						}),
					},
				}),
				------ Stay awhile and listen ------
				--hqt(??, {	-- Stay awhile and listen: Sunwalker Dezco
				--	["name"] = "Stay awhile and listen: Sunwalker Dezco",
				--	["description"] = "Dialogue becomes available after accepting 'Gathering Plowshares' (89338).",
				--	["sourceQuests"] = { 86846 },	-- Resupplying our Suppliers
				--	["provider"] = { "n", 247299 },	-- Sunwalker Dezco
				--	["coord"] = { 68.9, 37.7, ARATHI_HIGHLANDS },
				--}),
				--
			}),
			header(HEADERS.AchCriteria, 41805.02, {	-- Regrets of the Past
				q(86822, {	-- One Final Relic
					["sourceQuests"] = { 89338 },	-- Gathering Plowshares
					["provider"] = { "n", 240747 },	-- Alonsus Faol
					["coord"] = { 68.6, 32.0, ARATHI_HIGHLANDS },	-- Arathi Highlands
				}),
				q(86823, {	-- The Dark Horde
					["sourceQuests"] = { 86822 },	-- One Final Relic
					["provider"] = { "n", 237224 },	-- Eitrigg
					["coord"] = { 33.5, 48.6, BURNING_STEPPES },
				}),
				q(86824, {	-- None Left Standing
					["sourceQuests"] = { 86822 },	-- One Final Relic
					["provider"] = { "n", 237224 },	-- Eitrigg
					["coord"] = { 33.5, 48.6, BURNING_STEPPES },
					["groups"] = { i(239130) },	-- Torch (PQI!)
				}),
				q(86825, {	-- Faithful Servant, Faithless Cause
					["sourceQuests"] = { 86822 },	-- One Final Relic
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
				q(86831, {	-- Warriors Without a Warlord
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
				q(86830, {	-- A True Horde of Dark Horde
					["sourceQuests"] = { 86828 },	-- Not Just a Troll's Bane
					["provider"] = { "n", 242120 },	-- Danath Trollbane
					["coord"] = { 31.6, 37.6, BURNING_STEPPES },
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
				q(86832, {	-- A Worthy Forge
					["sourceQuests"] = { 91726 },	-- Unstoppable Force
					["provider"] = { "n", 237508 },	-- Arator
					["coord"] = { 36.7, 51.1, BURNING_STEPPES },
				}),
				q(86833, {	-- A Bulwark Remade
					["sourceQuests"] = { 86832 },	-- To Silvermoon
					["provider"] = { "n", 237511 },	-- Alonsus Faol
					["coord"] = { 45.8, 65.5, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(86903, {	-- The Arcantina
					["sourceQuests"] = { 86833 },	-- A Bulwark Remade
					["provider"] = { "n", 253125 },	-- Kurdran Wildhammer
					["coord"] = { 40.6, 66.1, MAP.MIDNIGHT.SILVERMOON_CITY },
					["maps"] = { ARCANTINA },
					["groups"] = {
						i(254838),	-- A Round of Drinks (QI!)
						i(248131),	-- Key to the Arcantina (PQI!)
						--
						i(253629),	-- Personal Key to the Arcantina (TOY!)
					},
				}),
			}),
		}),
		q(91787, {	-- The Journey Ends
			["sourceQuests"] = { 86903 },	-- The Arcantina
			["provider"] = { "n", 237502 },	-- Arator
			["coord"] = { 52.2, 60.6, ARCANTINA },
		}),
		q(91854, {	-- Deepening Shadows
			["description"] = "Available after completing one of the optional zones after Eversong's campaign.",
			["provider"] = { "n", 248631 },	-- Commander Koruth Mountainfist
			["coord"] = { 45.4, 70.2, MAP.MIDNIGHT.SILVERMOON_CITY },
		}),
		header(HEADERS.Achievement, 60891, {	-- The Crimson Rogue
			header(HEADERS.AchCriteria, 60891.01, {	-- The Regent's Request
				q(91822, {	-- The Regent's Request
					["sourceQuests"] = { 86636 },	-- Void Walk With Me
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
					["qgs"] = {
						248750,	-- Valeera Sanguinar
						248874,	-- Valeera Sanguinar
					},
					["coord"] = { 61.9, 68.3, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = {
						o(566101, {	-- Unlocked Strongbox
							["coord"] = { 61.9, 68.4, MAP.MIDNIGHT.EVERSONG_WOODS },
							["groups"] = { i(248720) },	-- Stolen Documents (QI!)
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
					["sourceQuests"] = {
						91827,	-- No Loose Ends
						86522,	-- Daylight is Breaking
					},
					["provider"] = { "n", 242381 },	-- Valeera Sanguinar
					["coord"] = { 52.5, 78.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(91829, {	-- One by One
					["sourceQuests"] = { 91828 },	-- A Favor for the Lion
					["qg"] = {
						248982,	-- Valeera Sanguinar
						250295,	-- Valeera Sanguinar (mobileNPC)
					},
					["coord"] = { 40.4, 71.7, MAP.MIDNIGHT.ZULAMAN },
				}),
				q(91830, {	-- Intercepted
					["sourceQuests"] = { 91828 },	-- A Favor for the Lion
					["qg"] = {
						248982,	-- Valeera Sanguinar
						250295,	-- Valeera Sanguinar (mobileNPC)
					},
					["coord"] = { 40.4, 71.7, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = {
						o(567202, {	-- Cult Orders
							["coords"] = {
								{ 35.6, 71.9, MAP.MIDNIGHT.ZULAMAN },
								{ 35.7, 73.5, MAP.MIDNIGHT.ZULAMAN },
								{ 37.2, 73.8, MAP.MIDNIGHT.ZULAMAN },
								{ 37.3, 72.4, MAP.MIDNIGHT.ZULAMAN },
								{ 37.4, 71.1, MAP.MIDNIGHT.ZULAMAN },
								{ 38.1, 72.9, MAP.MIDNIGHT.ZULAMAN },
								{ 38.2, 70.8, MAP.MIDNIGHT.ZULAMAN },
								{ 38.8, 70.1, MAP.MIDNIGHT.ZULAMAN },
								{ 38.8, 72.8, MAP.MIDNIGHT.ZULAMAN },
								{ 39.0, 72.2, MAP.MIDNIGHT.ZULAMAN },
								{ 39.8, 71.4, MAP.MIDNIGHT.ZULAMAN },
							},
							["groups"] = {
								i(248928),	-- Cult Orders (QI!)
							},
						}),
					},
				}),
				q(91831, {	-- Keys Are Optional
					["sourceQuests"] = { 91828 },	-- A Favor for the Lion
					["qg"] = {
						248982,	-- Valeera Sanguinar
						250295,	-- Valeera Sanguinar (mobileNPC)
					},
					["coord"] = { 40.4, 71.7, MAP.MIDNIGHT.ZULAMAN },
				}),
				q(91918, {	-- Delves: Measure Once, Cut Twice
					["sourceQuests"] = {
						91830,	-- Intercepted
						91831,	-- Keys Are Optional
						91829,	-- One by One
					},
					["provider"] = { "n", 250295 },	-- Valeera Sanguinar (mobileNPC)
					["coord"] = { 40.4, 71.7, MAP.MIDNIGHT.ZULAMAN },	-- Vignette location on the map
				}),
			}),
		}),
		header(HEADERS.Achievement, 42117, {	-- The War of Light and Shadow
			header(HEADERS.AchCriteria, 42117.01, {	-- Foothold
				q(90777, {	-- Feeding the Flame
					["sourceQuests"] = { 86522 },	-- Daylight is Breaking
					["provider"] = { "n", 235787 },	-- Lor'themar Theron
					["coord"] = { 45.4, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(88696, {	-- The Devouring Citadel
					["sourceQuests"] = { 90777 },	-- Feeding the Flame
					["provider"] = { "n", 247414 },	-- Lady Liadrin
					["coord"] = { 53.1, 58.7, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
				}),
				q(88697, {	-- Clarity of Purpose
					["sourceQuests"] = { 88696 },	-- The Devouring Citadel
					["provider"] = { "n", 239810 },	-- High Exarch Turalyon
					["coord"] = { 45.4, 63.1, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(88698, {	-- Master of Mayhem
					["sourceQuests"] = { 88697 },	-- Clarity of Purpose
					["provider"] = { "n", 239828 },	-- Magister Umbric
					["coord"] = { 45.4, 63.1, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = {
						i(257165),	-- Voidbreaker's Casque
						i(257164),	-- Voidbreaker's Diadem
						i(257167),	-- Voidbreaker's Greathelm
						i(257166),	-- Voidbreaker's Shroud
					},
				}),
				q(88699, {	-- Powerless
					["sourceQuests"] = { 88697 },	-- Clarity of Purpose
					["provider"] = { "n", 239828 },	-- Magister Umbric
					["coord"] = { 45.4, 63.1, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = {
						i(257178),	-- Voidbreaker's Flames
						i(257179),	-- Voidbreaker's Mantle
						i(257182),	-- Voidbreaker's Shoulderplates
						i(257181),	-- Voidbreaker's Spaulders
					},
				}),
				q(88700, {	-- Two Tons of Metal and Holy Fire
					["sourceQuests"] = {
						88698,	-- Master of Mayhem
						88699,	-- Powerless
					},
					["provider"] = { "n", 239810 },	-- High Exarch Turalyon
					["coord"] = { 45.4, 63.1, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = {
						i(262610),	-- Swirling Ritual Pedestal (DECOR!)
						i(257190),	-- Voidbreaker's Armguards
						i(257187),	-- Voidbreaker's Bracers
						i(257189),	-- Voidbreaker's Clasps
						i(257188),	-- Voidbreaker's Wristwraps
					},
				}),
				q(91417, {	-- Seek out Arator
					["sourceQuests"] = { 88700 },	-- Two Tons of Metal and Holy Fire
					["provider"] = { "n", 239810 },	-- High Exarch Turalyon
					["coord"] = { 45.4, 63.1, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(88701, {	-- The Memory Remains
					["sourceQuests"] = { 91417 },	-- Seek out Arator
					["qg"] = {
						239827,	-- Arator
						244093,	-- Sunwell Defender / Arator (mobileNPC)
					},
					["coord"] = { 46.0, 64.9, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = {
						o(531891, {	-- Vanguard Scout
							i(237827),	-- Fallen Vanguard's Memento (QI!)
						}),
						i(257208),	-- Voidbreaker's Clasp
						i(257207),	-- Voidbreaker's Cord
						i(257206),	-- Voidbreaker's Sash
						i(257205),	-- Voidbreaker's Waistguard
					},
				}),
				q(88702, {	-- Aegis of the Redeemer
					["sourceQuests"] = { 91417 },	-- Seek out Arator
					["qg"] = {
						239827,	-- Arator
						244093,	-- Sunwell Defender / Arator (mobileNPC)
					},
					["coord"] = { 46.0, 64.9, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = {
						i(257213),	-- Voidbreaker's Faulds
						i(257209),	-- Voidbreaker's Leggings
						i(257212),	-- Voidbreaker's Legguards
						i(257210),	-- Voidbreaker's Pants
					},
				}),
				q(91426, {	-- The People's Champion
					["sourceQuests"] = {
						88701,	-- The Memory Remains
						88702,	-- Aegis of the Redeemer
					},
					["provider"] = { "n", 244093 },	-- Sunwell Defender / Arator (mobileNPC)
					["coord"] = { 46.3, 63.2, MAP.MIDNIGHT.VOIDSTORM },	-- Vignette location on the map
				}),
				q(88703, {	-- The Night Before
					["sourceQuests"] = { 91426 },	-- The People's Champion
					["provider"] = { "n", 254884 },	-- Arator
					["coord"] = { 46.3, 63.2, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(88704, {	-- The Patient Hunter
					["sourceQuests"] = { 88703 },	-- The Night Before
					["provider"] = { "n", 239826 },	-- Alleria Windrunner
					["coord"] = { 51.7, 65.0, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = {
						i(257218),	-- Voidbreaker's Sabatons
						i(257214),	-- Voidbreaker's Soles
						i(257216),	-- Voidbreaker's Striders
						i(257217),	-- Voidbreaker's Waders
					},
				}),
				q(88705, {	-- Killing Blow
					["sourceQuests"] = { 88704 },	-- The Patient Hunter
					["provider"] = { "n", 243886 },	-- Nadia Brighton
					["coord"] = { 56.3, 65.1, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = {
						i(257203),	-- Voidbreaker's Gauntlets
						i(257201),	-- Voidbreaker's Glovettes
						i(257202),	-- Voidbreaker's Grasps
						i(257204),	-- Voidbreaker's Handguards
					},
				}),
				q(88706, {	-- Nothing Stands Forever
					["sourceQuests"] = { 88705 },	-- Killing Blow
					["provider"] = { "n", 239826 },	-- Alleria Windrunner
					["coord"] = { 55.9, 64.8, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = {
						i(264660),	-- Ren'dorei Spired Tent (DECOR!)
						i(257186),	-- Voidbreaker's Breastplate
						i(257185),	-- Voidbreaker's Cuirass
						i(257184),	-- Voidbreaker's Jacket
						i(257183),	-- Voidbreaker's Robe
					},
				}),
				------ Stay awhile and listen ------
				--hqt(XXXXX, {	-- Stay awhile and listen: High Exarch Turalyon
				--	["name"] = "Stay awhile and listen: High Exarch Turalyon",
				--	["description"] = "Dialogue becomes available before turning in 'Nothing Stands Forever' (88706).",
				--	["sourceQuests"] = { 88705 },	-- Killing Blow
				--	["provider"] = { "n", 239810 },	-- High Exarch Turalyon
				--	["coord"] = { 45.2, 62.9, MAP.MIDNIGHT.VOIDSTORM },
				--}),
				--
			}),
			header(HEADERS.AchCriteria, 42117.02, {	-- The Voidspire
				q(90690, {	-- Charge of the Vanguard
					["sourceQuests"] = { 88706 },	-- Nothing Stands Forever
					["qg"] = 235787,	-- Lor'themar Theron
					["coord"] = { 45.4, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
					["isBreadcrumb"] = true,
				}),
				q(88709, {	-- The Voidspire
					["sourceQuests"] = { 90690 },	-- Charge of the Vanguard
					["qg"] = 239810,	-- High Exarch Turalyon
					["coord"] = { 45.4, 63.0, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = {
						i(257172),	-- Voidbreaker's Cape
						i(257173),	-- Voidbreaker's Drape
						i(257174),	-- Voidbreaker's Mantle
						i(257175),	-- Voidbreaker's Wrap
					},
				}),
				q(90724, {	-- The Broken Sky
					["sourceQuests"] = { 88709 },	-- The Voidspire
					["qgs"] = {
						244297,	-- Arator
						253603,	-- Arator
					},
					["coords"] = {
						{ 44.5, 66.1, MAP.MIDNIGHT.VOIDSTORM },
						{ 45.7, 49.3, MAP.MIDNIGHT.SILVERMOON_CITY },
					},
					["maps"] = {
						2529,	-- Voidspire
						2530,	-- Crown of the Cosmos
					},
				}),
				q(92520, {	-- Wake of the Darkwell
					["sourceQuests"] = { 90724 },	-- The Broken Sky
					["qg"] = 235787,	-- Lor'themar Theron
					["coord"] = { 45.4, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
			}),
			header(HEADERS.AchCriteria, 42117.03, {	-- Gathering of the Elves
				q(88920, {	-- The Kaldorei
					["sourceQuest"] = 92520,	-- Wake of the Darkwell
					["qg"] = 240267,	-- Arator
					["coords"] = {
						{ 45.9, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
						{ 45.3, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
					},
				}),
				q(88923, {	-- Children of the Stars
					["sourceQuest"] = 88920,	-- The Kaldorei
					["qg"] = 240334,	-- Shandris Feathermoon
					["coord"] = { 48.3, 70.7, AMIRDRASSIL },
				}),
				q(88925, {	-- Awaken the Ancient of War
					["sourceQuest"] = 88923,	-- Children of the Stars
					["qg"] = 240334,	-- Shandris Feathermoon
					["coord"] = { 48.3, 70.7, AMIRDRASSIL },
					-- Rewards various trinkets. From Midnignt Zone Rewards to Quest Rewards
				}),
				q(88927, {	-- Awaken the Ancient Protector
					["sourceQuest"] = 88923,	-- Children of the Stars
					["qg"] = 240334,	-- Shandris Feathermoon
					["coord"] = { 48.3, 70.7, AMIRDRASSIL },
					["groups"] = {
						i(257252),	-- Voidbreaker's Bardiche
						i(257238),	-- Voidbreaker's Dagger
						i(257289),	-- Voidbreaker's Glaive
						i(257237),	-- Voidbreaker's Longbow
						i(257271),	-- Voidbreaker's Longsword
						i(257250),	-- Voidbreaker's Mace
						i(257251),	-- Voidbreaker's Poleaxe
						i(257269),	-- Voidbreaker's Ritual Sword
						i(257256),	-- Voidbreaker's Staff
						i(257234),	-- Voidbreaker's Waraxe
						i(257249),	-- Voidbreaker's War Mace
					},
				}),
				q(88937, {	-- Awaken the Ancient of Lore
					["sourceQuest"] = 88923,	-- Children of the Stars
					["qg"] = 240334,	-- Shandris Feathermoon
					["coord"] = { 48.3, 70.7, AMIRDRASSIL },
					["groups"] = {
						i(257687),	-- Voidbreaker's Basher
						i(257270),	-- Voidbreaker's Blade
						i(257284),	-- Voidbreaker's Greatsword
						i(257248),	-- Voidbreaker's Hammer
						i(257686),	-- Voidbreaker's Kukri
						i(257242),	-- Voidbreaker's Sight
						i(257254),	-- Voidbreaker's Spike
						i(257537),	-- Voidbreaker's Wall
						i(257688),	-- Voidbreaker's Warbow
					},
				}),
				q(88922, {	-- The Quel'dorei
					["sourceQuests"] = {
						88925,	-- Awaken the Ancient of War
						88927,	-- Awaken the Ancient Protector
						88937,	-- Awaken the Ancient of Lore
					},
					["qg"] = 251335,	-- Arator
					["coord"] = { 48.3, 70.5, AMIRDRASSIL },
				}),
				------ Stay awhile and listen ------
				--hqt(XXXXX, {	-- Stay awhile and listen: Shandris Feathermoon
				--	["name"] = "Stay awhile and listen: Shandris Feathermoon",
				--	["description"] = "Dialogue becomes available after accepting 'The Quel'dorei' (88922).",
				--	["sourceQuests"] = {
				--		88925,	-- Awaken the Ancient of War
				--		88927,	-- Awaken the Ancient Protector
				--		88937,	-- Awaken the Ancient of Lore
				--	},
				--	["qg"] = 240334,	-- Shandris Feathermoon
				--	["coord"] = { 48.3, 70.7, AMIRDRASSIL },
				--}),
				--
				q(88939, {	-- Rest for the Restless
					["sourceQuest"] = 88922,	-- The Quel'dorei
					["qg"] = 240295,	-- Vereesa Windrunner
					["coord"] = { 31.2, 91.4, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = { i(258041) },	-- Remains of the Fallen (QI!)
				}),
				q(88938, {	-- Symbols of the Past
					["sourceQuest"] = 88922,	-- The Quel'dorei
					["qg"] = 240295,	-- Vereesa Windrunner
					["coord"] = { 31.2, 91.4, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = {
						i(251899),	-- Anasterian's Book of Law (QI!)
						o(573743, {	-- Crown of the High King
							["coord"] = { 30.2, 90.8, MAP.MIDNIGHT.EVERSONG_WOODS },
							["groups"] = { i(251904) },	-- Crown of the High King (QI!)
						}),
						--
						i(264286),	-- Voidbreaker's Choker
						i(257171),	-- Voidbreaker's Pendant
					},
				}),
				------ Stay awhile and listen ------
				--hqt(XXXXX, {	-- Stay awhile and listen: Arator
				--	["name"] = "Stay awhile and listen: Arator",
				--	["description"] = "Dialogue becomes available after accepting 'Symbols of the Past' (88938).",
				--	["sourceQuest"] = 88922,	-- The Quel'dorei
				--	["qg"] = 240296,	-- Arator
				--	["coord"] = { 31.2, 91.4, MAP.MIDNIGHT.EVERSONG_WOODS },
				--}),
				--
				q(88941, {	-- For Quel'Thalas
					["sourceQuests"] = {
						88939,	-- Rest for the Restless
						88938,	-- Symbols of the Past
					},
					["qg"] = 240295,	-- Vereesa Windrunner
					["coord"] = { 31.2, 91.4, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = {
						i(251914),	-- Sumptuous Berry Pie (DECOR!)
						i(257220),	-- Voidbreaker's Band
						i(257169),	-- Voidbreaker's Signet
					},
				}),
				q(88928, {	-- The Shal'dorei
					["sourceQuest"] = 88941,	-- For Quel'Thalas
					["qg"] = 240255,	-- First Arcanist Thalyssra
					["coord"] = { 45.7, 70.0, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(88930, {	-- Drained Mana
					["sourceQuest"] = 88928,	-- The Shal'dorei
					["qg"] = 250958,	-- Seneschal Ulen
					["coord"] = { 70.5, 74.2, SURAMAR },
					["groups"] = {
						i(264287),	-- Voidbreaker's Circle
						i(264288),	-- Voidbreaker's Ring
					},
				}),
				q(88929, {	-- An Illusion!
					["sourceQuest"] = 88928,	-- The Shal'dorei
					["qg"] = 240302,	-- First Arcanist Thalyssra
					["coord"] = { 70.6, 74.3, SURAMAR },
					["groups"] = { i(248920) },	-- Nightwatch Mask (PQI!)
				}),
				q(88919, {	-- Into the Darkway
					["sourceQuests"] = {
						88930,	-- Drained Mana
						88929,	-- An Illusion!
					},
					["qg"] = 256046,	-- First Arcanist Thalyssra
					["coord"] = { 70.6, 74.3, SURAMAR },
				}),
				q(88942, {	-- The Elves are Going to War
					["sourceQuest"] = 88919,	-- Into the Darkway
					["qg"] = 254654,	-- First Arcanist Thalyssra
					["coord"] = { 40.4, 32.9, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						-- Rewards various trinkets. From Midnignt Zone Rewards to Quest Rewards
						i(246458),	-- Grand Aethercharged Crystal (DECOR!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 42117.04, {	-- The Battle of the Bridge
				q(88769, {	-- The Battle of the Bridge
					["sourceQuest"] = 88942,	-- The Elves are Going to War
					["qg"] = 240267,	-- Arator
					["coord"] = { 45.9, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(258122),	-- Emerald Hatchling (PET!)
						i(260233),	-- Emerald Hawkstrider (MOUNT!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 42117.05, {	-- The Darkwell
				q(90748, {	-- Quel'Danas
					["sourceQuest"] = 88769,	-- The Battle of the Bridge
					["qg"] = 235787,	-- Lor'themar Theron
					["coord"] = { 45.4, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
					["isBreadcrumb"] = true,
				}),
				q(88710, {	-- March on Quel'Danas
					["sourceQuest"] = 90748,	-- Quel'Danas
					["qg"] = 245061,	-- Arator
					["coord"] = { 52.6, 90.2, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
					["groups"] = { i(257736) },	-- Lightcalled Hearthstone (TOY!)
				}),
			}),
			header(HEADERS.AchCriteria, 42117.06, {	-- Dawn of a New Well
				q(92689, {	-- A Path Forward
					["sourceQuest"] = 88710,	-- March on Quel'Danas
					["qg"] = 235787,	-- Lor'themar Theron
					["coord"] = { 45.4, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(90876, {	-- Reluctant Hand
					["description"] = "Becomes available after accepting 'A Path Forward' (92689).",
					["sourceQuest"] = 92689,	-- A Path Forward
					["qg"] = 244701,	-- Grand Magister Rommath
					["coord"] = { 53.4, 60.1, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(90871, {	-- The Silversun Compact
					["description"] = "Becomes available after accepting 'A Path Forward' (92689).",
					["sourceQuest"] = 92689,	-- A Path Forward
					["qg"] = 244699,	-- Vereesa Windrunner
					["coord"] = { 40.1, 89.5, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						-- spell(1280609),	-- Silversun Compact Regalia, rewards following item appearances (not items themselves)
						i(267466),	-- Silversun Compact Cape (COSMETIC!)
						i(267467),	-- Silversun Compact Tabard (COSMETIC!)
						i(267468),	-- Silversun Compact Shoulderpads (COSMETIC!)
					},
				}),
				q(90861, {	-- Those Left Behind
					["sourceQuests"] = {
						90876,	-- Reluctant Hand
						90871,	-- The Silversun Compact
					},
					["qg"] = 235787,	-- Lor'themar Theron
					["coord"] = { 45.4, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(90862, {	-- In Times of Need
					["sourceQuest"] = 90861,	-- Those Left Behind
					["qg"] = 244557,	-- Arator
					["coord"] = { 52.7, 58.4, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
				}),
				q(90867, {	-- From Darkness, Light
					["sourceQuest"] = 90862,	-- In Times of Need
					["qg"] = 244576,	-- Lady Liadrin
					["coord"] = { 52.6, 46.1, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
					["groups"] = {
						i(265631),	-- Farstriders' Glory Statue (DECOR!)
						i(265106),	-- Farstriders' Pride Statue (DECOR!)
						i(257143),	-- Peridot Dragonhawk (MOUNT!)
					},
				}),
				------ Stay awhile and listen ------
				hqt(92802, {	-- Stay awhile and listen: Arator
					["name"] = "Stay awhile and listen: Arator",
					["description"] = "Dialogue becomes available after the cutscene during 'From Darkness, Light' (90867).",
					["sourceQuest"] = 90862,	-- In Times of Need
					["qg"] = 246789,	-- Arator
					["coord"] = { 52.6, 45.9, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
				}),
				hqt(92810, {	-- Stay awhile and listen: Faerin Lothar
					["name"] = "Stay awhile and listen: Faerin Lothar",
					["description"] = "Dialogue becomes available after the cutscene during 'From Darkness, Light' (90867).",
					["sourceQuest"] = 90862,	-- In Times of Need
					["qg"] = 253144,	-- Faerin Lothar
					["coord"] = { 53.2, 47.4, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
				}),
				hqt(92757, {	-- Stay awhile and listen: Grand Magister Rommath
					["name"] = "Stay awhile and listen: Grand Magister Rommath",
					["description"] = "Dialogue becomes available after the cutscene during 'From Darkness, Light' (90867).",
					["sourceQuest"] = 90862,	-- In Times of Need
					["qg"] = 244578,	-- Grand Magister Rommath
					["coord"] = { 51.2, 44.5, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
				}),
				--
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		n(QUESTS, {
			q(95008),	-- Adventuring in Midnight - Triggered after accepting 'Voidstorm' (89388) from the Scouting Map
			-- During questing
			q(89196, {repeatable=true}),	-- Zone Choice Active (spellID 1254861), after accepting questID 89193 (Arator)
			q(89247),	-- [DNT] (spellID 1227720), after accepting questID 86837 (Meet at the Sunwell)
			--q(89196),	-- unflagged (???), after turn in questID 86839 (To Light's Hope)
			--q(89247),	-- unflagged (???), after turn in questID 86903 (The Arcantina)
			--q(94623),	-- Building the Voidforge	-- completed with q:92630
			q(95247, { ["timeline"] = { ADDED_12_0_0 } }),	-- when picking up q:92630 in Dornogal
			q(95044, { ["timeline"] = { ADDED_12_0_1 } }),	-- Triggered after turning in 'The Silversun Compact' (90871), probably related to the 'Silversun Compact Regalia' spell
		}),
	}),
}));
