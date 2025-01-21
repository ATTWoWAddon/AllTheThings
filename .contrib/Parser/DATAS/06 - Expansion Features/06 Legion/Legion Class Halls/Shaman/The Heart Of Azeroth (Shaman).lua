-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(SHAMAN, bubbleDownSelf({ ["classes"] = { SHAMAN } }, {
			["maps"] = { THE_HEART_Of_AZEROTH },
			["g"] = {
				n(ARTIFACTS, {
					cl(SHAMAN, ELEMENTAL, {
						i(139572, {	-- Lost Codex of the Amani
							artifact(900),	-- The Fist of Ra-den
							-- artifact(900),	-- The Highkeeper's Ward
						}),
					}),
					cl(SHAMAN, SHAMAN_RESTORATION, {
						i(139574, {	-- Coil of the Drowned Queen
							artifact(926),	-- Sharas'dal, Scepter of Tides
							-- artifact(926),	-- Shield of the Sea Queen
						}),
					}),
					cl(SHAMAN, ENHANCEMENT, {
						i(139573, {	-- The Warmace of Shirvallah
							artifact(880),	-- Doomhammer
							-- artifact(880),	-- Fury of the Stonemother
						}),
					}),
				}),
				n(FOLLOWERS, bubbleDownSelf({
					["collectible"] = false,
					["u"] = UNLEARNABLE,	-- Temporary troops
				}, {
					follower(752),	-- Air Ascendants
					follower(685),	-- Circle of Earthcallers
					follower(782),	-- Circle of Earthcallers
					follower(797),	-- Circle of Earthcallers
					follower(798),	-- Circle of Earthcallers
					follower(754),	-- Earthen Ring Geomancers
					follower(794),	-- Earthen Ring Geomancers
					follower(795),	-- Earthen Ring Geomancers
					follower(796),	-- Earthen Ring Geomancers
					follower(1031),	-- Earthen Ring Protectors
					follower(1032),	-- Earthen Ring Protectors
					follower(1033),	-- Earthen Ring Protectors
					follower(1034),	-- Earthen Ring Protectors
					follower(750),	-- Greater Elementals
					follower(789),	-- Greater Elementals
					follower(790),	-- Greater Elementals
					follower(791),	-- Greater Elementals
					follower(792),	-- Greater Elementals
					follower(793),	-- Greater Elementals
					follower(753),	-- Fire Ascendants
					follower(683),	-- Lesser Elementals
					follower(784),	-- Lesser Elementals
					follower(785),	-- Lesser Elementals
					follower(786),	-- Lesser Elementals
					follower(787),	-- Lesser Elementals
					follower(788),	-- Lesser Elementals
					follower(684),	-- Water Ascendants

					-- TODO itemID 143850
					follower(993),	-- Grimtotem Warrior
				})),
				n(QUESTS, {
					q(39746, {	-- A Ring Unbroken
						["provider"] = { "n", 91731 },	-- Thrall
						["maps"] = { LEGION_DALARAN, 725 },	-- The Maelstrom (Scenario Map)
					}),
					q(41335, {	-- The Elements Call...
						["sourceQuests"] = { 39746 },	-- A Ring Unbroken
						["provider"] = { "n", 96527 },	-- Thrall
						["coord"] = { 36.1, 74.9, 725 },	-- The Maelstrom (Scenario Map)
					}),
					q(44406, {	-- Aggra's Guidance
						["sourceQuests"] = { 41510 },	-- Azeroth Needs You
						["providers"] = {
							{ "n", 96528 },	-- Farseer Nobundo
							{ "n", 106519 },	-- Farseer Nobundo
						},
						["coords"] = {
							{ 30.3, 51.6, 725 }, -- The Maelstrom (Scenario Map)
							{ 31.6, 76.2, THE_HEART_Of_AZEROTH },
						},
					}),
					q(43945, {	-- Expanding Your Horizons
						["sourceQuests"] = { 41335 },	-- The Elements Call...
						["provider"] = { "n", 99531 },	-- Aggra
						["coord"] = { 36.1, 80.0, THE_HEART_Of_AZEROTH },
					}),
					q(44006, {	-- Your Fullest Potential
						["sourceQuests"] = { 43945 },	-- Expanding Your Horizons
						["provider"] = { "n", 99531 },	-- Aggra
						["coord"] = { 36.1, 80.0, THE_HEART_Of_AZEROTH },
					}),
					-- Artifact
					cl(SHAMAN, ELEMENTAL, {
						q(43334, {	-- The Coming Storm
							["sourceQuests"] = {
								41335,	-- The Elements Call...
								43945,	-- Expanding Your Horizons
								44006,	-- Your Fullest Potential
							},
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 96541 },	-- Rehgar Earthfury
							["coords"] = {
								{ 34.1, 74.3, 725 },	-- The Maelstrom (Scenario Map)
								{ 34.1, 74.3, THE_HEART_Of_AZEROTH },
							},
						}),
						q(43338, {	-- The Codex of Ra
							["sourceQuests"] = { 43334 },	-- The Coming Storm
							["provider"] = { "n", 60968 },	-- Xuen
							["coord"] = { 66.9, 56.2, KUN_LAI_SUMMIT },
						}),
						q(39771, {	-- The Voice of Thunder
							["sourceQuests"] = { 43338 },	-- The Codex of Ra
							["provider"] = { "n", 96541 },	-- Rehgar Earthfury
							["coord"] = { 47.0, 83.0, 395 },	-- Guo-Lai Halls, Vale of Eternal Blossom
							["g"] = {
								artifact(113),	-- The Fist of Ra-den
								artifact(113),	-- The Highkeeper's Ward
							},
						}),
					}),
					cl(SHAMAN, SHAMAN_RESTORATION, {
						q(43644, {	-- To the Deeps
							["sourceQuests"] = {
								41335,	-- The Elements Call...
								43945,	-- Expanding Your Horizons
								44006,	-- Your Fullest Potential
							},
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 96530 },	-- Erunak Stonespeaker
							["coords"] = {
								{ 33.7, 79.2, 725 },	-- The Maelstrom (Scenario Map)
								{ 33.7, 79.2, THE_HEART_Of_AZEROTH },
							},
						}),
						q(43645, {	-- Wavespeaker's Trail
							["sourceQuests"] = { 43644 },	-- To the Deeps
							["provider"] = { "n", 96530 },	-- Erunak Stonespeaker
							["coord"] = { 43.6, 63.2, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(40341, {	-- Throne of the Tides: Azshara's Power
							["sourceQuests"] = { 43645 },	-- Wavespeaker's Trail
							["provider"] = { "n", 96530 },	-- Erunak Stonespeaker
							["coord"] = { 43.6, 63.2, VASHJIR_SHIMMERING_EXPANSE },
							["maps"] = { 742, 743 },	-- Abyssal Maw (Scenario Map)
							["g"] = {
								artifact(116),	-- Sharas'dal, Scepter of Tides
								artifact(116),	-- Shield of the Sea Queen
							},
						}),
					}),
					cl(SHAMAN, ENHANCEMENT, {
						q(42931, {	-- Where the Hammer Falls
							["sourceQuests"] = {
								41335,	-- The Elements Call...
								43945,	-- Expanding Your Horizons
								44006,	-- Your Fullest Potential
							},
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 96539 },	-- Stormcaller Mylra
							["coords"] = {
								{ 34.5, 76.1, 725 },	-- The Maelstrom (Scenario Map)
								{ 34.5, 76.1, THE_HEART_Of_AZEROTH },
							},
						}),
						q(42932, {	-- What the Stonemother Knows
							["sourceQuests"] = { 42931 },	-- Where the Hammer Falls
							["provider"] = { "n", 96527 },	-- Thrall
							["coord"] = { 47.1, 52.0, DEEPHOLM },
						}),
						q(42933, {	-- The Troggs that Fel to Earth
							["sourceQuests"] = { 42932 },	-- What the Stonemother Knows
							["provider"] = { "n", 42465 },	-- Therazane
							["coord"] = { 56.3, 12.2, DEEPHOLM },
						}),
						q(42935, {	-- Stone Drake Rescue
							["sourceQuests"] = { 42932 },	-- What the Stonemother Knows
							["provider"] = { "n", 42465 },	-- Therazane
							["coord"] = { 56.3, 12.2, DEEPHOLM },
						}),
						q(42936, {	-- Clutch Play
							["sourceQuests"] = { 42932 },	-- What the Stonemother Knows
							["provider"] = { "n", 42465 },	-- Therazane
							["coord"] = { 56.3, 12.2, DEEPHOLM },
						}),
						q(42937, {	-- Needlerock Beatdown
							["sourceQuests"] = {
								42936,	-- Clutch Play
								42935,	-- Stone Drake Rescue
								42933,	-- The Troggs that Fel to Earth
							},
							["provider"] = { "n", 42465 },	-- Therazane
							["coord"] = { 56.3, 12.2, DEEPHOLM },
						}),
						q(40224, {	-- The Hammer in the Deep
							["sourceQuests"] = { 42937 },	-- Needlerock Beatdown
							["provider"] = { "n", 96527 },	-- Thrall
							["coord"] = { 56.5, 12.9, DEEPHOLM },
							["maps"] = { 729 },	-- Crumbling Depths (Scenario Map)
							["g"] = {
								artifact(117),	-- Doomhammer
								artifact(117),	-- Fury of the Stonemother
							},
						}),
					}),
					q(40225, {	-- A Ring Reforged
						["sourceQuests"] = {
							39771,	-- The Voice of Thunder
							40341,	-- Throne of the Tides: Azshara's Power
							40224,	-- The Hammer in the Deep
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 96539 },	-- Stormcaller Mylra
						["coord"] = { 34.0, 76.6, THE_HEART_Of_AZEROTH },
					}),
					q(44253, {	-- A Vision of Triumph
						["sourceQuests"] = { 40225 },	-- A Ring Reforged
						["provider"] = { "n", 112318 },	-- Flamesmith Lanying
						["coord"] = { 30.3, 60.6, THE_HEART_Of_AZEROTH },
						["g"] = {
							i(139701),	-- Farseer's Mask
						},
					}),
					q(40276, {	-- The Maelstrom Beckons
						["sourceQuests"] = { 40225 },	-- A Ring Reforged
						["provider"] = { "n", 96528 },	-- Farseer Nobundo
						["coord"] = { 31.6, 76.2, THE_HEART_Of_AZEROTH },
						["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
					}),
					-- Start Legion Zone
					q(41510, {	-- Azeroth Needs You
						["sourceQuests"] = {
							-- #IF BEFORE 8.0.1
							40276,	-- The Maelstrom Beckons
							-- #ELSE
							40225,	-- A Ring Reforged
							-- #ENDIF
						},
						["provider"] = { "n", 96528 },	-- Farseer Nobundo
						["coord"] = { 29.0, 69.1, THE_HEART_Of_AZEROTH },
					}),
					-- Learn Mission Table & Research
					q(44544, {	-- Call of the Earthen Ring
						["sourceQuests"] = { 41510 },	-- Azeroth Needs You
						["provider"] = { "n", 114274 },	-- Mackay Firebeard
						["maps"] = { LEGION_DALARAN },
						["description"] = "After completing |cffffff00Azeroth Needs You|r, return to Dalaran and this NPC will approach you within a few seconds.",
						["isBreadcrumb"] = true,
					}),
					q(42188, {	-- Nobundo Awaits
						["sourceQuests"] = { 44544 },	-- Call of the Earthen Ring
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.4, THE_HEART_Of_AZEROTH },
					}),
					q(42114, {	-- The Ritual of Tides
						["sourceQuests"] = { 42188 },	-- Nobundo Awaits
						["providers"] = {
							{ "n", 96528 },	-- Farseer Nobundo
							{ "n", 106316 }	-- Farseer Nobundo
						},
						["coord"] = { 34.1, 31.4, THE_HEART_Of_AZEROTH },
					}),
					q(42383, {	-- Rise, Champions
						["sourceQuests"] = { 42114 },	-- The Ritual of Tides
						["provider"] = { "n", 96528 },	-- Farseer Nobundo
						["coord"] = { 34.1, 31.3, THE_HEART_Of_AZEROTH },
					}),
					q(42198, {	-- Champion: Stormcaller Mylra
						["sourceQuests"] = { 42383 },	-- Rise, Champions
						["provider"] = { "n", 106312 },	-- Stormcaller Mylra
						["coord"] = { 34.4, 32.4, THE_HEART_Of_AZEROTH },
						["g"] = {
							follower(608),	-- Stormcaller Mylra
						},
					}),
					q(42197, {	-- Champion: Duke Hydraxis
						["sourceQuests"] = { 42383 },	-- Rise, Champions
						["provider"] = { "n", 106520 },	-- Duke Hydraxis <Emissary of the Waterlord>
						["coord"] = { 29.6, 34.0, THE_HEART_Of_AZEROTH },
						["g"] = {
							follower(609),	-- Duke Hydraxis
						},
					}),
					q(42141, {	-- Summoner Morn
						["sourceQuests"] = { 42383 },	-- Rise, Champions
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.3, THE_HEART_Of_AZEROTH },
					}),
					q(42142, {	-- Recruiting the Troops
						["sourceQuests"] = { 42141 },	-- Summoner Morn
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.3, THE_HEART_Of_AZEROTH },
					}),
					q(41741, {	-- Troops in the Field
						["sourceQuests"] = { 42142 },	-- Recruiting the Troops
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.3, THE_HEART_Of_AZEROTH },
					}),
					q(41740, {	-- Tech It Up A Notch
						["sourceQuests"] = { 41741 },	-- Troops in the Field
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.3, THE_HEART_Of_AZEROTH },
					}),
					-- Chap 1
					q(42184, {	-- Mission: Elemental Diplomacy
						["sourceQuests"] = { 41740 },	-- Tech It Up A Notch
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.3, THE_HEART_Of_AZEROTH },
					}),
					q(42977, {	-- Servant of the Windseeker
						["sourceQuests"] = { 42184 },	-- Mission: Elemental Diplomacy
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.3, THE_HEART_Of_AZEROTH },
					}),
					q(43002, {	-- Blessed Blade of the Windseeker
						["sourceQuests"] = { 42977 },	-- Servant of the Windseeker
						["provider"] = { "n", 14347 },	-- Highlord Demitrian
						["coord"] = { 29.6, 10.6, SILITHUS },
						["g"] = {
							i(139000),	-- Damaged Thunderfury (QI!)
						},
					}),
					q(41770, {	-- The Skies Above
						["sourceQuests"] = { 43002 },	-- Blessed Blade of the Windseeker
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.3, THE_HEART_Of_AZEROTH },
					}),
					q(41771, {	-- Recharging the Blade
						["sourceQuests"] = { 41770 },	-- The Skies Above
						["provider"] = { "n", 104797 },	-- Consular Celestos
						["coord"] = { 55.2, 18.4, 737 },	-- The Vortex Pinnacle (Scenario Map)
						["g"] = {
							i(139000),	-- Damaged Thunderfury (QI!)
							i(135589),	-- Heart of Skywall (QI!)
							i(139037),	-- Thunderfury, Blessed Blade of the Windseeker (QI!)
						},
					}),
					q(41776, {	-- Return of the Windlord
						["sourceQuests"] = { 41771 },	-- Recharging the Blade
						["provider"] = { "n", 113340 },	-- Consular Celestos
						["coord"] = { 52.1, 81.9, 737 },	-- The Vortex Pinnacle (Scenario Map)
					}),
					q(41901, {	-- Oath of the Windlord
						["sourceQuests"] = { 41776 },	-- Return of the Windlord
						["provider"] = { "n", 104788 },	-- Thunderaan
						["coord"] = { 52.4, 79.3, 737 },	-- The Vortex Pinnacle (Scenario Map)
						["g"] = {
							artifact(675),	-- The Fist of Ra-den
							-- artifact(675),	-- The Highkeeper's Ward
							artifact(774),	-- Sharas'dal, Scepter of Tides
							-- artifact(774),	-- Shield of the Sea Queen
							artifact(303),	-- Doomhammer
							-- artifact(303),	-- Fury of the Stonemother
						},
					}),
					q(41742, {	-- Champion: Celestos
						["sourceQuests"] = { 41901 },	-- Oath of the Windlord
						["provider"] = { "n", 106521 },	-- Consular Celestos <Emissary of the Windlord>
						["coord"] = { 28.2, 45.0, THE_HEART_Of_AZEROTH },
						["g"] = {
							follower(610),	-- Consular Celestos
						},
					}),
					q(41743, {	-- Champion: Nobundo
						["sourceQuests"] = { 41901 },	-- Oath of the Windlord
						["provider"] = { "n", 106519 },	-- Farseer Nobundo <The Earthen Ring>
						["coord"] = { 30.2, 51.6, THE_HEART_Of_AZEROTH },
						["g"] = {
							follower(611),	-- Farseer Nobundo
						},
					}),
					-- Chap 2
					q(44465, {	-- Recruiting Earthcallers
						["sourceQuests"] = { 41901 },	-- Oath of the Windlord
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.4, THE_HEART_Of_AZEROTH },
					}),
					q(42986, {	-- Enemies of Air
						["sourceQuests"] = { 41901 },	-- Oath of the Windlord
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.4, THE_HEART_Of_AZEROTH },
					}),
					q(42996, {	-- The Maelstrom Pillar: Air
						["sourceQuests"] = { 41901 },	-- Oath of the Windlord
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.4, THE_HEART_Of_AZEROTH },
					}),
					q(42983, {	-- Mistral Essence
						["sourceQuests"] = { 42996 },	-- The Maelstrom Pillar: Air
						["provider"] = { "n", 109464 },	-- Elementalist Janai
						["coord"] = { 29.4, 77.9, THE_HEART_Of_AZEROTH },
						["maps"] = { 737 },	-- The Vortex Pinnacle (Scenario Map)
					}),
					q(42984, {	-- Eye of Azshara: The Scepter of Storms
						["sourceQuests"] = { 42983 },	-- Mistral Essence
						["provider"] = { "n", 109464 },	-- Elementalist Janai
						["coord"] = { 29.4, 77.9, THE_HEART_Of_AZEROTH },
						["maps"] = { 713 },	-- Eye of Azshara
					}),
					q(42200, {	-- Mission: Investigating Deepholm
						["sourceQuests"] = {
							42986,	-- Enemies of Air
							42984,	-- Eye of Azshara: The Scepter of Storms
						},
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.3, THE_HEART_Of_AZEROTH },
					}),
					q(41775, {	-- The Great Stonemother
						["sourceQuests"] = { 42200 },	-- Mission: Investigating Deepholm
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.3, THE_HEART_Of_AZEROTH },
					}),
					q(42068, {	-- The Return of Twilight
						["sourceQuests"] = { 41775 },	-- The Great Stonemother
						["provider"] = { "n", 42465 },	-- Therazane
						["coord"] = { 56.3, 12.2, DEEPHOLM },
					}),
					q(41777, {	-- Destroying the Cult
						["sourceQuests"] = { 42068 },	-- The Return of Twilight
						["provider"] = { "n", 106001 },	-- Muln Earthfury
						["coord"] = { 64.0, 70.5, DEEPHOLM },
					}),
					q(41897, {	-- The Master's Plan
						["sourceQuests"] = { 42068 },	-- The Return of Twilight
						["provider"] = { "n", 106001 },	-- Muln Earthfury
						["coord"] = { 64.0, 70.5, DEEPHOLM },
					}),
					q(41898, {	-- Unleashing the Elements
						["sourceQuests"] = {
							41777,	-- Destroying the Cult
							41897,	-- The Master's Plan
						},
						["provider"] = { "n", 106001 },	-- Muln Earthfury
						["maps"] = { DEEPHOLM },
					}),
					q(41899, {	-- Held Captive!
						["sourceQuests"] = {
							41777,	-- Destroying the Cult
							41897,	-- The Master's Plan
						},
						["provider"] = { "n", 106001 },	-- Muln Earthfury
						["maps"] = { DEEPHOLM },
					}),
					q(42065, {	-- The Twilight Master
						["sourceQuests"] = {
							41899,	-- Held Captive!
							41898,	-- Unleashing the Elements
						},
						["provider"] = { "n", 106001 },	-- Muln Earthfury
						["maps"] = { DEEPHOLM },
					}),
					q(41900, {	-- A Promise of Earth
						["sourceQuests"] = { 42065 },	-- The Twilight Master
						["provider"] = { "n", 42465 },	-- Therazane
						["coord"] = { 56.3, 12.2, DEEPHOLM },
						["g"] = {
							i(139705),	-- Farseer's Wristwraps
						},
					}),
					q(41746, {	-- Champion: Muln Earthfury
						["sourceQuests"] = { 41900 },	-- A Promise of Earth
						["provider"] = { "n", 106518 },	-- Muln Earthfury <Earthen Ring>
						["coord"] = { 32.0, 43.8, THE_HEART_Of_AZEROTH },
						["g"] = {
							follower(614),	-- Muln Earthfury
						},
					}),
					q(41747, {	-- Champion: Avalanchion
						["sourceQuests"] = { 41900 },	-- A Promise of Earth
						["provider"] = { "n", 106524 },	-- Avalanchion the Unbroken <Fist of the Stonemother>
						["coord"] = { 34.6, 34.0, THE_HEART_Of_AZEROTH },
						["g"] = {
							follower(615),	-- Avalanchion the Unbroken
						},
					}),
					-- Chap 3
					q(42208, {	-- Return to the Firelands
						["sourceQuests"] = { 41900 },	-- A Promise of Earth
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.3, THE_HEART_Of_AZEROTH },
					}),
					q(42988, {	-- Worldmender
						["sourceQuests"] = { 41900 },	-- A Promise of Earth
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.3, THE_HEART_Of_AZEROTH },
					}),
					q(42997, {	-- The Maelstrom Pillar: Earth
						["sourceQuests"] = { 41900 },	-- A Promise of Earth
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.3, THE_HEART_Of_AZEROTH },
					}),
					q(42989, {	-- Ma'haat the Indomitable
						["sourceQuests"] = { 42997 },	-- The Maelstrom Pillar: Earth
						["provider"] = { "n", 109464 },	-- Elementalist Janai
						["coord"] = { 29.4, 77.8, DEEPHOLM },
					}),
					q(42995, {	-- A Taste For Blood
						["sourceQuests"] = { 42989 },	-- Ma'haat the Indomitable
						["provider"] = { "n", 42470 },	-- Ma'haat the Indomitable
						["coord"] = { 56.9, 14.2, DEEPHOLM },
					}),
					q(43003, {	-- Return to Janai
						["sourceQuests"] = { 42995 },	-- A Taste For Blood
						["provider"] = { "n", 42470 },	-- Ma'haat the Indomitable
						["coord"] = { 56.9, 14.2, DEEPHOLM },
					}),
					q(42990, {	-- Neltharion's Lair: The Earthen Amulet
						["sourceQuests"] = { 43003 },	-- Return to Janai
						["provider"] = { "n", 109464 },	-- Elementalist Janai
						["coord"] = {29.4, 77.8, DEEPHOLM },
						["maps"] = { 731 },	-- Neltharion's Lair
					}),
					q(41772, {	-- Ascendant of Flames
						["sourceQuests"] = {
							42208,	-- Return to the Firelands
							42990,	-- Neltharion's Lair: The Earthen Amulet
						},
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.0, THE_HEART_Of_AZEROTH },
					}),
					q(41773, {	-- The Firelord's Command
						["sourceQuests"] = { 41772 },	-- Ascendant of Flames
						["provider"] = { "n", 105055 },	-- Baron Scaldius
						["maps"] = { 738 },	-- Firelands (Scenario Map)
					}),
					q(41934, {	-- The Brand of Damnation
						["sourceQuests"] = { 41773 },	-- The Firelord's Command
						["provider"] = { "n", 105120 },	-- Lord Smolderon
						["maps"] = { 738 },	-- Firelands (Scenario Map)
					}),
					q(41888, {	-- Allegiance of Flame
						["sourceQuests"] = { 41934 },	-- The Brand of Damnation
						["provider"] = { "n", 105594 },	-- Lord Smolderon
						["maps"] = { 738 },	-- Firelands (Scenario Map)
						["g"] = {
							i(139698),	-- Farseer's Harness
							title(336),	-- Farseer <Name>
						},
					}),
					q(41744, {	-- Champion: Rehgar Earthfury
						["sourceQuests"] = { 41888 },	-- Allegiance of Flame
						["provider"] = { "n", 106517 },	-- Rehgar Earthfury <Hero of the Storm>
						["coord"] = { 31.4, 57.8, THE_HEART_Of_AZEROTH },
						["g"] = {
							follower(612),	-- Rehgar Earthfury
						},
					}),
					q(41745, {	-- Champion: Scaldius
						["sourceQuests"] = { 41888 },	-- Allegiance of Flame
						["provider"] = { "n", 106649 },	-- Baron Scaldius <Emissary of the Firelord>
						["coord"] = { 29.8, 57.6, THE_HEART_Of_AZEROTH },
						["g"] = {
							follower(613),	-- Baron Scaldius
						},
					}),
					q(43418, {	-- A Hero's Weapon
						["sourceQuests"] = { 41888 },	-- Allegiance of Flame
						["provider"] = { "n", 110495 },	-- Farseer Nobundo
						["coord"] = { 35.0, 46.0, THE_HEART_Of_AZEROTH },
						["g"] = {
							artifact(676),	-- The Fist of Ra-den
							-- artifact(676),	-- The Highkeeper's Ward
							artifact(775),	-- Sharas'dal, Scepter of Tides
							-- artifact(775),	-- Shield of the Sea Queen
							artifact(298),	-- Doomhammer
							-- artifact(298),	-- Fury of the Stonemother
						},
					}),
					-- Interlude
					q(45995, {	-- An Urgent Warning
						["sourceQuest"] = 43418,	-- A Hero's Weapon
						["provider"] = { "n", 118427 },	-- Injured Earthcaller
						["coord"] = { 31.0, 51.2, THE_HEART_Of_AZEROTH },
						["isBreadcrumb"] = true,
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
					}),
					q(45996, {	-- Investigate the Broken Shore
						["sourceQuest"] = 45995,	-- An Urgent Warning
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.0, THE_HEART_Of_AZEROTH },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
					}),
					--
					q(45652, {	-- A "Humble" Request
						["sourceQuests"] = {
							47137,	-- Champions of Legionfall
							-- #IF AFTER 7.2.0
							43418,	-- A Hero's Weapon
							-- #ELSE
							--,	-- Investigate the Broken Shore
							-- #ENDIF
						},
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.0, THE_HEART_Of_AZEROTH },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45706, {	-- The Power of Thousands
						["sourceQuests"] = { 45652 },	-- A "Humble" Request
						["provider"] = { "n", 117482 },	-- Magatha Grimtotem
						["coord"] = { 35.4, 76.0, THE_HEART_Of_AZEROTH },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45724, {	-- Snakes and Stones
						["sourceQuests"] = { 45706 },	-- The Power of Thousands
						["provider"] = { "n", 120244 },	-- Magatha Grimtotem
						["coord"] = { 42.2, 45.2, THOUSAND_NEEDLES },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45723, {	-- The Crone's Wrath
						["sourceQuests"] = { 45706 },	-- The Power of Thousands
						["provider"] = { "n", 120244 },	-- Magatha Grimtotem
						["coord"] = { 42.2, 45.2, THOUSAND_NEEDLES },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45725, {	-- Breaking Chains
						["sourceQuests"] = { 45706 },	-- The Power of Thousands
						["provider"] = { "n", 120244 },	-- Magatha Grimtotem
						["coord"] = { 42.2, 45.2, THOUSAND_NEEDLES },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(44800, {	-- Against Magatha's Will
						["sourceQuests"] = {
							45725,	-- Breaking Chains
							45724,	-- Snakes and Stones
							45723,	-- The Crone's Wrath
						},
						["provider"] = { "n", 120244 },	-- Magatha Grimtotem
						["maps"] = { THOUSAND_NEEDLES },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45763, {	-- Demonic Disruption
						["sourceQuests"] = { 44800 },	-- Against Magatha's Will
						["provider"] = { "n", 96528 },	-- Farseer Nobundo
						["coord"] = { 30.4, 51.8, THE_HEART_Of_AZEROTH },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45765, {	-- Brothers and Sisters
						["sourceQuests"] = { 45763 },	-- Demonic Disruption
						["provider"] = { "n", 117715 },	-- Therazane
						["coord"] = { 60.4, 51.6, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45971, {	-- Infernal Phenomena
						["sourceQuests"] = { 45763 },	-- Demonic Disruption
						["provider"] = { "n", 117715 },	-- Therazane
						["coord"] = { 60.4, 51.6, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45767, {	-- Elemental Cores
						["sourceQuests"] = { 45763 },	-- Demonic Disruption
						["provider"] = { "n", 117715 },	-- Therazane
						["coord"] = { 60.4, 51.6, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
						["g"] = {
							i(146888),	-- Fire Power Core (QI!)
							i(146889),	-- Water Power Core (QI!)
							i(146890),	-- Earth Power Core (QI!)
							i(146891),	-- Air Power Core (QI!)
						},
					}),
					q(45883, {	-- The Firelord's Offense
						["sourceQuests"] = {
							45765,	-- Brothers and Sisters
							45767,	-- Elemental Cores
							45971,	-- Infernal Phenomena
						},
						["provider"] = { "n", 117715 },	-- Therazane
						["coord"] = { 60.4, 51.6, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45769, {	-- Conflagration
						["sourceQuests"] = { 45883 },	-- The Firelord's Offense
						["provider"] = { "n", 115492 },	-- Firelord Smolderon
						["coord"] = { 54.6, 52.4, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46258, {	-- The Calm After the Storm
						["sourceQuests"] = { 45769 },	-- Conflagration
						["provider"] = { "n", 106519 },	-- Farseer Nobundo
						["coord"] = { 30.4, 51.8, THE_HEART_Of_AZEROTH },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46057, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Champion: Magatha Grimtotem
						["sourceQuests"] = { 46258 },	-- The Calm After the Storm
						["provider"] = { "n", 120245 },	-- Magatha Grimtotem <Elder Crone>
						["coord"] = { 34.2, 30.6, THE_HEART_Of_AZEROTH },
						["g"] = {
							follower(992),	-- Magatha Grimtotem
						},
					})),
					q(46791, {	-- Carried On the Wind
						["sourceQuests"] = {
							47137,	-- Champions of Legionfall
							46258,	-- The Calm After the Storm
						},
						["provider"] = { "n", 117888 },	-- Orono
						["coord"] = { 44.6, 61.6, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46792, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Gathering of the Storms
						["sourceQuests"] = { 46791 },	-- Carried On the Wind
						["provider"] = { "n", 106521 },	-- Consular Celestos
						["coord"] = { 28.4, 45.0, THE_HEART_Of_AZEROTH },
						["maps"] = { 857 },	-- Throne of the Four Winds (Scenario Map)
						["g"] = {
							mount(231442),	-- Farseer's Raging Tempest (MOUNT!)
						},
					})),
					-- Misc
					q(43886, {	-- Speaking to the Wind
						["provider"] = { "n", 111739 },	-- Gorma Windspeaker
						["coord"] = { 32.4, 49.4, THE_HEART_Of_AZEROTH },
						["timeline"] = { ADDED_7_0_3, REMOVED_7_3_0 },
					}),
					q(46147, {	-- Knowledge is Power
						["sourceQuest"] = 43886,	-- Speaking to the Wind
						["provider"] = { "n", 111739 },	-- Gorma Windspeaker
						["coord"] = { 32.4, 49.4, THE_HEART_Of_AZEROTH },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46158, {	-- Furthering Knowledge
						["sourceQuest"] = 46147,	-- Knowledge is Power
						["provider"] = { "n", 111739 },	-- Gorma Windspeaker
						["coord"] = { 32.4, 49.4, THE_HEART_Of_AZEROTH },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(44101, {	-- Supply Dropped
						["provider"] = { "o", 254010 },	-- Earthen Ring Supplies
						["coord"] = { 25.4, 41.7, THE_HEART_Of_AZEROTH },
						["repeatable"] = true,
						["g"] = {
							i(139879),	-- Crate of Champion Equipment
							i(147351),	-- Fel Armor Enhancement Token
						},
					}),
					q(46781, {	-- Further Advancement
						["sourceQuests"] = { 46057 },	-- Champion: Magatha Grimtotem
						["provider"] = { "n", 96746 },	-- Advisor Sevel
						["coord"] = { 33.0, 60.0, THE_HEART_Of_AZEROTH },
						["timeline"] = { ADDED_7_2_0 },
					}),
				}),
				n(SPECIAL, {
					n(103004, {	-- Puzzlemaster Lo <The Earthen Ring>
						["description"] = "Completing all five levels of the puzzle will grant you a chest that contains the toy.\n\nBoard Design (Stand in front of Puzzlemaster with your back to him):\n\n\n A B C D E\n F G H I J\n K L M N O\n P Q R S T\n U V W X Y\n\n\n Level 1: A, E, M, U, Y\n\n Level 2: C, K, M, O, W\n\n Level 3: B, K, L, O, V\n\n Level 4: A, E, F, G, H, I, J, K, O, Q, S, W\n\n Level 5: D, E, F, G, I, J, K, L, M, Q, R, S, U, W, X",
						["g"] = {
							q(41071, {	-- Puzzle 01 Solved
								["name"] = "Puzzle 1 Solved",
							}),
							q(41072, {	-- Puzzle 02 Solved
								["name"] = "Puzzle 2 Solved",
							}),
							q(41073, {	-- Puzzle 03 Solved
								["name"] = "Puzzle 3 Solved",
							}),
							q(41074, {	-- Puzzle 04 Solved
								["name"] = "Puzzle 4 Solved",
							}),
							q(41075, {	-- Puzzle 05 Solved
								["name"] = "Puzzle 5 Solved",
								["g"] = {
									i(140632),	-- Lava Fountain (TOY!)
								},
							}),
						},
					}),
					gt(46, {	-- Rise!
						q(44206, {	-- The Ascended
							["sourceQuests"] = { 41740 },	-- Tech It Up A Notch
							["provider"] = { "n", 109829 },	-- Alexor
							["coord"] = { 31.6, 51.6, THE_HEART_Of_AZEROTH },
						}),
					}),
					n(114064, {	-- Snowfang
						["description"] = "Defeating this NPC in a pet battle awards the pet.",
						["g"] = {
							i(141530),	-- Snowfang (PET!)
						},
					}),
					gt(49, {	-- Spirit Walk
						q(44205, {	-- Shape Your Fate
							["sourceQuests"] = { 41740 },	-- Tech It Up A Notch
							["provider"] = { "n", 112299 },	-- Bath'rah the Windwatcher
							["coord"] = { 31.1, 35.1, THE_HEART_Of_AZEROTH },
						}),
					})
				}),
				n(VENDORS, {
					n(112318, {	-- Flamesmith Lanying <Earthen Ring Quartermaster>
						["sym"] = {{"select","itemID",143727}},	-- Champion's Salute (TOY!)
						["g"] = {
							i(140536),	-- Earthen Ring Aegis
							i(140545),	-- Earthen Ring Mace
							i(140546),	-- Earthen Ring Scepter
							i(140944, {	-- Farseer's Armor Kit
								["cost"] = { { "c", 1220, 2000 }, },	-- 2,000x Order Resources
							}),
							i(139704, {	-- Farseer's Belt
								["cost"] = 5000000,	-- 500g
							}),
							i(139699, {	-- Farseer's Footwraps
								["cost"] = 5000000,	-- 500g
							}),
							i(139700, {	-- Farseer's Gauntlets
								["cost"] = 5000000,	-- 500g
							}),
							i(140981, {	-- Farseer's Greater Armor Kit
								["cost"] = { { "c", 1220, 4000 }, },	-- 4,000x Order Resources
							}),
							i(139698, {	-- Farseer's Harness
								["cost"] = 5000000,	-- 500g
							}),
							i(139702, {	-- Farseer's Leggings
								["cost"] = 5000000,	-- 500g
							}),
							i(140980, {	-- Farseer's Lesser Armor Kit
								["cost"] = { { "c", 1220, 500 }, },	-- 500x Order Resources
							}),
							i(139701, {	-- Farseer's Mask
								["cost"] = 5000000,	-- 500g
							}),
							i(139703, {	-- Farseer's Shoulderguards
								["cost"] = 5000000,	-- 500g
							}),
							i(139705, {	-- Farseer's Wristwraps
								["cost"] = 5000000,	-- 500g
							}),
							i(232622, { ["timeline"] = { ADDED_11_0_5 } }),	-- Glyph of Energetic Ascendance
							i(232527, { ["timeline"] = { ADDED_11_0_5 } }),	-- Glyph of Traditional Ascendance
							i(136934),	-- Raging Elemental Stone (TOY!)
							i(136935),	-- Tadpole Cloudseeder (TOY!)
							i(136938),	-- Tome of Hex: Compy (CI!)
							i(136937),	-- Vol'jin's Serpent Totem (TOY!)
							i(138490),	-- Waterspeaker's Totem (TOY!)
						},
					}),
				}),
			},
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.LEGION, {
		q(41116),	-- 7.0 Artifacts - Shaman - Puzzle Room - Treasure - DGK - looting the Maelstrom Chest containing the Lave Fountain toy from Puzzlemaster Lo
		q(44653),	-- Tracking Quest: 7.0 Class Hall - Shaman - Pacing Mission 1
		q(44654),	-- Tracking Quest: 7.0 Class Hall - Shaman - Pacing Mission 2A-5
		q(38275),	-- Tracking Quest: Return to Firelands 1 Mission Completed - completed the "Return to the Firelands" mission
		q(42998),	-- Tracking Quest: Return to Firelands 2 Mission Completed - completed the "Janai's Famous Flaming Omelettes" mission
		q(42999),	-- Tracking Quest: Return to Firelands 3 Mission Completed - completed the "Troubling Tremors" mission
		q(43000),	-- Tracking Quest: Return to Firelands 4 Mission Completed - completed the "Twilight's Return" mission
		q(43001),	-- Tracking Quest: Return to Firelands 5 Mission Completed - completed the "Trial of the Firelord" mission
		q(44396),	-- Tracking Quest: Thunderaan's Enemies 1 - commpleted the "Thunderaan's Enemies: Mistius" mission
		q(44397),	-- Tracking Quest: Thunderaan's Enemies 2 - commpleted the "Thunderaan's Enemies: Zeph" mission
		q(44398),	-- Tracking Quest: Thunderaan's Enemies 3 - commpleted the "Thunderaan's Enemies: Alacris" mission
		q(44399),	-- Tracking Quest: Thunderaan's Enemies 4 - commpleted the "Thunderaan's Enemies: Tulmos" mission
		q(44499),	-- Snowfang Tracking Quest - triggeres after defeating Snowfang battle pet
		q(44068),	-- Tell Morgl he can have the Doomhammer
	}),
});