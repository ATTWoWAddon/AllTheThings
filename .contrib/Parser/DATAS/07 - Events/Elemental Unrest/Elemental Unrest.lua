--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------
ELEMENTAL_UNREST = createHeader({
	readable = "Elemental Unrest",
	icon = [[~_.asset("Expansion_CATA")]],
	text = {
		en = "Elemental Unrest",
		ru = "Буйство элементалей",
		cn = "元素动荡",
		tw = "元素入侵",
	},
	description = {
		en = "The Elemental Unrest was a world event that heralded the Cataclysm. The event culminated in elementals attacking Stormwind, Orgrimmar, Ironforge, and Thunder Bluff. Players defeating these elementals and freeing trapped citizens within their entire city were granted access to two special boss encounters.",
	},
});
root(ROOTS.WorldEvents, applyclassicphase(WRATH_PHASE_FOUR_ELEMENTAL_INVASION, n(ELEMENTAL_UNREST,
	bubbleDown({
		["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
		-- #if ANYCLASSIC
		["OnUpdate"] = [[function(t)
			if _.Settings:GetUnobtainableFilter(]] .. CATA_PHASE_ONE .. [[) then
				t.u = ]] .. REMOVED_FROM_GAME .. [[;
				t.rwp = nil;
			else
				t.u = ]] .. WRATH_PHASE_FOUR_ELEMENTAL_INVASION .. [[;
				t.rwp = 40003;
			end
		end]],
		-- #endif
	}, {
		["maps"] = {
			IRONFORGE,
			ORGRIMMAR,
			STORMWIND_CITY,
			THUNDER_BLUFF,
		},
		["groups"] = {
			-- #if AFTER 4.0.1
			n(ACHIEVEMENTS, {
				ach(4887, {	-- Tripping the Rifts
					["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
				}),
			}),
			n(QUESTS, {
				-- Phase One Quests
				q(25351, {	-- Alert Our Leaders
					["sourceQuest"] = 25348,	-- Thwarting Twilight's Hammer (B)
					["qg"] = 39448,	-- Blood Guard Torek
					["coord"] = { 52.9, 72.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
				}),
				q(25290, {	-- Infiltrating the Cult (A)
					["sourceQuest"] = 25282,	-- Signs Of The Times (A)
					["qg"] = 39508,	-- Captain Anton
					["coord"] = { 75.9, 44.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Join the Doomsday Cult
							["provider"] = { "i", 52729 },	-- Recruit's Robe
						}),
						i(52729),	-- Recruit's Robe
					},
				}),
				q(25288, {	-- Infiltrating The Cult (H)
					["sourceQuest"] = 25254,	-- Signs Of The Times (H)
					["qg"] = 39448,	-- Blood Guard Torek
					["coord"] = { 52.9, 72.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Join the Doomsday Cult
							["provider"] = { "i", 52729 },	-- Recruit's Robe
						}),
						i(52729),	-- Recruit's Robe
					},
				}),
				q(25253, {	-- Prophecies of Doom (A)
					["qg"] = 39508,	-- Captain Anton
					["coord"] = { 75.9, 44.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Listen to Doomsayer's speech
							["provider"] = { "n", 40124 },	-- Doomsayer (A)
						}),
						objective(2, {	-- 0/1 Elemental Fire for the Soul
							["provider"] = { "i", 52562 },	-- Elemental Fire for the Soul
							["coord"] = { 73, 63, STORMWIND_CITY },
						}),
						objective(3, {	-- 0/1 What Does 'The End of All Things' Mean for Me?
							["provider"] = { "i", 52563 },	-- What Does 'The End of All Things' Mean for Me?
							["coord"] = { 76, 59, STORMWIND_CITY },
						}),
						objective(4, {	-- 0/1 Finding Security and Comfort in a Doomed World
							["provider"] = { "i", 52565 },	-- Finding Security and Comfort in a Doomed World
							["coord"] = { 73, 54, STORMWIND_CITY },
						}),
					},
				}),
				q(25228, {	-- Prophecies of Doom (H)
					["qg"] = 39448,	-- Blood Guard Torek
					["coord"] = { 52.9, 72.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Listen to Doomsayer's speech
							["provider"] = { "n", 39328 },	-- Doomsayer (H)
						}),
						objective(2, {	-- 0/1 Elemental Fire for the Soul
							["provider"] = { "i", 52562 },	-- Elemental Fire for the Soul
						}),
						objective(3, {	-- 0/1 What Does 'The End of All Things' Mean for Me?
							["provider"] = { "i", 52563 },	-- What Does 'The End of All Things' Mean for Me?
						}),
						objective(4, {	-- 0/1 Finding Security and Comfort in a Doomed World
							["provider"] = { "i", 52565 },	-- Finding Security and Comfort in a Doomed World
						}),
					},
				}),
				q(25282, {	-- Signs Of The Times (A)
					["sourceQuest"] = 25253,	-- Prophecies of Doom (A)
					["qg"] = 39508,	-- Captain Anton
					["coord"] = { 75.9, 44.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Posters placed
							["provider"] = { "i", 52707 },	-- Warning Poster
						}),
					},
				}),
				q(25254, {	-- Signs Of The Times (H)
					["sourceQuest"] = 25228,	-- Prophecies of Doom (H)
					["qg"] = 39448,	-- Blood Guard Torek
					["coord"] = { 52.9, 72.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Posters placed
							["provider"] = { "i", 52706 },	-- Warning Poster
						}),
					},
				}),
				q(25415, {	-- Spreading The Word (A)
					["sourceQuest"] = 25290,	-- Infiltrating the Cult (A)
					["qg"] = 40098,	-- Overseer Sylandra
					["coord"] = { 31.3, 65.0, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Spread Message at Westbrook Garrison
							["provider"] = { "i", 53048 },	-- Doomsday Message
							["coord"] = { 24, 74, ELWYNN_FOREST },
						}),
						objective(2, {	-- Spread Message in Valley of Heroes
							["provider"] = { "i", 53048 },	-- Doomsday Message
							["coord"] = { 69, 83, STORMWIND_CITY },
						}),
						objective(3, {	-- Spread Message in Goldshire
							["provider"] = { "i", 53048 },	-- Doomsday Message
							["coord"] = { 42, 66, ELWYNN_FOREST },
						}),
					},
				}),
				q(25380, {	-- Spreading The Word (H)
					["sourceQuest"] = 25288,	-- Infiltrating The Cult (H)
					["qg"] = 39827,	-- Overseer Jintak
					["coord"] = { 48.2, 16.9, DUROTAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Spread Message at East Zeppelin Tower
							["provider"] = { "i", 53048 },	-- Doomsday Message
							["coord"] = { 50.8, 13.2, DUROTAR },
						}),
						objective(2, {	-- Spread Message at West Zeppelin Tower
							["provider"] = { "i", 53048 },	-- Doomsday Message
							["coord"] = { 41.5, 18.3, DUROTAR },
						}),
						objective(3, {	-- Spread Message in Razor Hill
							["provider"] = { "i", 53048 },	-- Doomsday Message
							["coord"] = { 52.5, 42.3, DUROTAR },
						}),
					},
				}),
				q(25417, {	-- The Doomsday Plan (A)
					["sourceQuest"] = 25416,	-- The Master's Plan (A)
					["providers"] = {
						{ "n", 40098 },	-- Overseer Sylandra
						{ "i", 52835 },	-- Elemental Devices
					},
					["coord"] = { 31.3, 65.0, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25347, {	-- The Doomsday Plan (B)
					["sourceQuest"] = 25343,	-- The Master's Plan (B)
					["providers"] = {
						{ "n", 39827 },	-- Overseer Jintak
						{ "i", 52835 },	-- Elemental Devices
					},
					["coord"] = { 48.2, 16.9, DUROTAR },
					["races"] = HORDE_ONLY,
				}),
				q(27307, {	-- The Elements Cry Out (A)
					["qgs"] = {
						45341,	-- Earthen Ring Emissary
						45946,	-- Earthen Ring Emissary
					},
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(27308, {	-- The Elements Cry Out (H)
					["qgs"] = {
						45341,	-- Earthen Ring Emissary
						45946,	-- Earthen Ring Emissary
					},
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25416, {	-- The Master's Plan (A)
					["sourceQuest"] = 25415,	-- Spreading The Word (A)
					["qg"] = 40098,	-- Overseer Sylandra
					["coord"] = { 31.3, 65.0, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Cho'Gall's Revelation
							["provider"] = { "i", 52729 },	-- Recruit's Robe
							["coord"] = { 29.3, 65.7, ELWYNN_FOREST },
						}),
					},
				}),
				q(25343, {	-- The Master's Plan (B)
					["sourceQuest"] = 25380,	-- Spreading The Word (H)
					["qg"] = 39827,	-- Overseer Jintak
					["coord"] = { 48.2, 16.9, DUROTAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Cho'Gall's Revelation
							["provider"] = { "i", 52729 },	-- Recruit's Robe
							["coord"] = { 49.6, 16.4, DUROTAR },
						}),
					},
				}),
				q(25414, {	-- The Missing (A)
					["sourceQuest"] = 25282,	-- Signs Of The Times (A)
					["qg"] = 39508,	-- Captain Anton
					["coord"] = { 75.9, 44.2, STORMWIND_CITY },
					["maps"] = { ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Speak to Cultist Lethelyn
							["providers"] = {
								{ "n", 39967 },	-- Cultist Lethelyn
								{ "i", 52729 },	-- Recruit's Robe
							},
							["coord"] = { 30.7, 64.9, ELWYNN_FOREST },
						}),
						objective(2, {	-- Speak to Cultist Kaima
							["providers"] = {
								{ "n", 39968 },	-- Cultist Kaima
								{ "i", 52729 },	-- Recruit's Robe
							},
							["coord"] = { 31.1, 67.5, ELWYNN_FOREST },
						}),
						objective(3, {	-- Speak to Cultist Wyman
							["providers"] = {
								{ "n", 39969 },	-- Cultist Wyman
								{ "i", 52729 },	-- Recruit's Robe
							},
							["coord"] = { 31.8, 66.1, ELWYNN_FOREST },
						}),
						objective(4, {	-- Speak to Cultist Orlunn
							["providers"] = {
								{ "n", 39970 },	-- Cultist Orlunn
								{ "i", 52729 },	-- Recruit's Robe
							},
							["coord"] = { 30.3, 64.35, ELWYNN_FOREST },
						}),
					},
				}),
				q(25293, {	-- The Missing (H)
					["sourceQuest"] = 25254,	-- Signs Of The Times (H)
					["qg"] = 39448,	-- Blood Guard Torek
					["coord"] = { 52.9, 72.4, ORGRIMMAR },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Speak to Cultist Kagarn
							["providers"] = {
								{ "n", 39757 },	-- Cultist Kagarn
								{ "i", 52729 },	-- Recruit's Robe
							},
							["coord"] = { 48, 17, DUROTAR },
						}),
						objective(2, {	-- Speak to Cultist Agtar
							["providers"] = {
								{ "n", 39758 },	-- Cultist Agtar
								{ "i", 52729 },	-- Recruit's Robe
							},
							["coord"] = { 48, 17, DUROTAR },
						}),
						objective(3, {	-- Speak to Cultist Tokka
							["providers"] = {
								{ "n", 39760 },	-- Cultist Tokka
								{ "i", 52729 },	-- Recruit's Robe
							},
							["coord"] = { 48, 16, DUROTAR },
						}),
						objective(4, {	-- Speak to Cultist Rokaga
							["providers"] = {
								{ "n", 39763 },	-- Cultist Rokaga
								{ "i", 52729 },	-- Recruit's Robe
							},
							["coord"] = { 49, 17, DUROTAR },
						}),
					},
				}),
				q(27570, {	-- The Situation So Far
					["sourceQuest"] = 27308,	-- The Elements Cry Out (H)
					["qg"] = 39283,	-- Earthmender Norsala
					["coord"] = { 52.2, 73.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(27540, {	-- The Wildhammer
					["sourceQuest"] = 27307,	-- The Elements Cry Out (A)
					["qg"] = 45702,	-- Erunak Stonespeaker <The Earthen Ring>
					["coord"] = { 62.5, 75.5, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25418, {	-- Thwarting Twilight's Hammer (A)
					["sourceQuest"] = 25417,	-- The Doomsday Plan (A)
					["qg"] = 39508,	-- Captain Anton
					["coord"] = { 75.9, 44.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Raging Wind Elemental slain
							["provider"] = { "n", 40104 },	-- Raging Wind Elemental
						}),
					},
				}),
				q(25348, {	-- Thwarting Twilight's Hammer (B)
					["sourceQuest"] = 25347,	-- The Doomsday Plan (B)
					["qg"] = 39448,	-- Blood Guard Torek
					["coord"] = { 52.9, 72.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Raging Fire Elemental slain
							["provider"] = { "n", 39852 },	-- Raging Fire Elemental
						}),
					},
				}),
				q(25425, {	-- Warn King Wrynn
					["sourceQuest"] = 25418,	-- Thwarting Twilight's Hammer (A)
					["qg"] = 39508,	-- Captain Anton
					["coord"] = { 75.9, 44.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
				}),

				-- Phase Two Quests
				q(25055, {	-- Subduing the Elements (A)
					["sourceQuest"] = 27473,	-- What's Shaking in Ironforge
					["qg"] = 45712,	-- Stormcaller Mylra
					["coord"] = { 30.3, 60.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Agitated Earth Spirit
							["provider"] = { "n", 39021 },	-- Agitated Earth Spirit
							["cost"] = {
								{ "i", 52272, 1 },	-- Cleansing Totem
								{ "i", 52189, 1 },	-- Elemental Sapta
							},
						}),
						i(52274, {	-- Earthen Ring Supplies
							i(52272),	-- Cleansing Totem
							i(52189),	-- Elemental Sapta
						}),
					},
				}),
				q(25092, {	-- Subduing the Elements (B)
					["qg"] = 39283,	-- Earthmender Norsala
					["coord"] = { 52.2, 73.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Agitated Fire Spirit
							["provider"] = { "n", 39047 },	-- Agitated Fire Spirit
							["cost"] = {
								{ "i", 52345, 1 },	-- Cleansing Totem
								{ "i", 52202, 1 },	-- Elemental Sapta
							},
						}),
						i(52344, {	-- Earthen Ring Supplies
							i(52345),	-- Cleansing Totem
							i(52202),	-- Elemental Sapta
						}),
					},
				}),
				q(25181, {	-- Tablets of Fire
					-- #if BEFORE 5.0.1
					["description"] = "Activated with phase 2 of the Elemental Unrest.",
					-- #endif
					["qg"] = 39283,	-- Earthmender Norsala
					["coord"] = { 52.2, 73.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Tablets of Fire
							["providers"] = {
								{ "i", 52276 },	-- Tablets of Fire
								{ "n", 39090 },	-- Durak Flamespeaker
							},
							-- TODO: Find coordinate.
							-- ["coord"] = { , DUROTAR },
						}),
					},
				}),
				q(25180, {	-- Tablets of the Earth
					-- #if BEFORE 5.0.1
					["description"] = "Activated with phase 2 of the Elemental Unrest.",
					-- #endif
					["qg"] = 45702,	-- Erunak Stonespeaker <The Earthen Ring>
					["coord"] = { 62.5, 75.5, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Tablets of the Earth
							["providers"] = {
								{ "i", 52275 },	-- Tablets of the Earth
								{ "n", 39101 },	-- Courier Tormun <Explorer's League>
							},
							["coord"] = { 29.6, 48.3, STORMWIND_CITY },
						}),
					},
				}),
				q(27473, {	-- What's Shaking in Ironforge
					-- #if BEFORE 5.0.1
					["description"] = "Activated with phase 2 of the Elemental Unrest.",
					-- #endif
					["qgs"] = {
						45341,	-- Earthen Ring Emissary
						45946,	-- Earthen Ring Emissary
					},
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),

				-- Phase Three Quests
				q(27566, {	-- A Gathering in Outland (A)
					-- #if BEFORE 5.0.1
					["description"] = "Activated with phase 3 of the Elemental Unrest.",
					-- #endif
					["qg"] = 45341,	-- Earthen Ring Emissary
					["maps"] = { NAGRAND },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27572, {	-- A Gathering in Outland (H)
					-- #if BEFORE 5.0.1
					["description"] = "Activated with phase 3 of the Elemental Unrest.",
					-- #endif
					["qg"] = 39283,	-- Earthmender Norsala
					["coord"] = { 52.2, 73.2, ORGRIMMAR },
					["maps"] = { NAGRAND },
					["races"] = HORDE_ONLY,
				}),
				q(27749, {	-- Arrest the Infiltrators (A)
					["sourceQuest"] = 27741,	-- Show Me Your Papers (A)
					["qg"] = 12481,	-- Justine Demalier
					["coord"] = { 62.2, 71.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Cultist Infiltrator arrested
							["providers"] = {
								{ "n", 46584 },	-- Cultist Infiltrator
								{ "i", 62541 },	-- Heavy Manacles
							},
						}),
						objective(2, {	-- Question Detained Cultist
							["provider"] = { "n", 46670 },	-- Detained Cultist
						}),
					},
				}),
				q(27802, {	-- Arrest the Infiltrators (H)
					["sourceQuest"] = 27801,	-- Show Me Your Papers (H)
					["qg"] = 39448,	-- Blood Guard Torek
					["coord"] = { 52.9, 72.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Cultist Infiltrator arrested
							["providers"] = {
								{ "n", 46816 },	-- Cultist Infiltrator
								{ "i", 62541 },	-- Heavy Manacles
							},
						}),
						objective(2, {	-- Question Detained Cultist
							["provider"] = { "n", 46827 },	-- Detained Cultist
						}),
					},
				}),
				q(27767, {	-- Back Under Cover (A)
					["sourceQuest"] = 27749,	-- Arrest the Infiltrators (A)
					["qg"] = 12481,	-- Justine Demalier
					["coord"] = { 62.2, 71.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Practice Cultist Ritual
							["providers"] = {
								{ "i", 62379 },	-- Book of Incantations
								{ "n", 40098 },	-- Overseer Sylandra
							},
						}),
					},
				}),
				q(27800, {	-- Back Under Cover (H)
					["sourceQuest"] = 27802,	-- Arrest the Infiltrators (H)
					["qg"] = 39448,	-- Blood Guard Torek
					["coord"] = { 52.9, 72.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Practice Cultist Ritual
							["providers"] = {
								{ "i", 62496 },	-- Book of Incantations
								{ "n", 39827 },	-- Overseer Jintak
							},
						}),
					},
				}),
				q(27780, {	-- I Said the Words... (A)
					["sourceQuest"] = 27767,	-- Back Under Cover (A)
					["qg"] = 40098,	-- Overseer Sylandra
					["coord"] = { 31.3, 65.0, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Disrupt Dwarven District Ritual
							["provider"] = { "i", 62412 },	-- Book of Incantations
							["coord"] = { 64, 29.5, STORMWIND_CITY },
						}),
						objective(2, {	-- Disrupt Cathedral Square Ritual
							["provider"] = { "i", 62412 },	-- Book of Incantations
							["coord"] = { 58.3, 49, STORMWIND_CITY },
						}),
						objective(3, {	-- Disrupt Park Ritual
							["provider"] = { "i", 62412 },	-- Book of Incantations
							["coord"] = { 38.0, 61.9, STORMWIND_CITY },
						}),
					},
				}),
				q(27799, {	-- I Said the Words... (H)
					["sourceQuest"] = 27800,	-- Back Under Cover (H)
					["qg"] = 39827,	-- Overseer Jintak
					["coord"] = { 48.2, 16.9, DUROTAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Disrupt Ritual in The Drag
							["provider"] = { "i", 62495 },	-- Book of Incantations
							["coord"] = { 57.72, 47.65, ORGRIMMAR },
						}),
						objective(2, {	-- Disrupt Ritual in Valley of Honor
							["provider"] = { "i", 62495 },	-- Book of Incantations
							["coord"] = { 80.78, 35.32, ORGRIMMAR },
						}),
						objective(3, {	-- Disrupt Ritual near West Gate
							["provider"] = { "i", 62495 },	-- Book of Incantations
							["coord"] = { 27.63, 54.73, ORGRIMMAR },
						}),
					},
				}),
				q(27741, {	-- Show Me Your Papers (A)
					-- #if BEFORE 5.0.1
					["description"] = "Activated with phase 3 of the Elemental Unrest.",
					-- #endif
					["qg"] = 12481,	-- Justine Demalier
					["coord"] = { 62.2, 71.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Stormwind Citizens searched
							["providers"] = {
								{ "n", 46489 },	-- Stormwind Citizen
								{ "n", 37787 },	-- Stormwind Citizen
								{ "n", 39686 },	-- Stormwind Citizen
								{ "n", 40125 },	-- Stormwind Citizen
							},
						}),
						objective(2, {	-- Read King Wrynn's Proclamation
							["provider"] = { "i", 62315 },	-- King Wrynn's Proclamation
						}),
					},
				}),
				q(27801, {	-- Show Me Your Papers (H)
					-- #if BEFORE 5.0.1
					["description"] = "Activated with phase 3 of the Elemental Unrest.",
					-- #endif
					["qg"] = 39448,	-- Blood Guard Torek
					["coord"] = { 52.9, 72.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Orgrimmar Citizen searched
							["providers"] = {
								{ "n", 39632 },	-- Orgrimmar Citizen
								{ "n", 38067 },	-- Orgrimmar Citizen
								{ "n", 39343 },	-- Orgrimmar Citizen
								{ "n", 46491 },	-- Orgrimmar Citizen
							},
						}),
						objective(2, {	-- Read the Warchief's Proclamation
							["provider"] = { "i", 62493 },	-- Warchief's Proclamation
						}),
					},
				}),
			}),
			n(44822, {	-- Crown Princess Theradras
				i(53496),	-- Barrier of the Earth Princess
				i(53499),	-- Amulet of the Centauri
				i(53497),	-- Zaetar's Deathshroud
				i(53498),	-- Earth Bride's Gown
				i(53500),	-- Tectonic Plate
			}),
			n(41110, {	-- Grand Ambassador Flamelash
				i(53502),	-- Flamelash Amulet
				i(53503),	-- Pendant of Burning Spirits
				i(53505),	-- Salamander Skin
				i(53504),	-- Flamewaker's Treads
				i(53501),	-- Sulfuron's Favor
			}),
			n(40961, {	-- Kai'ju Gahz'rilla
				i(53491),	-- Twilight Offering Bands
				i(53494),	-- Girdle of Oblation
				i(53493),	-- Sacrificial Mail
				i(53495),	-- Old Gods' Blessing
				i(53492),	-- Ring of the Three-Headed Beast
			}),
			n(45214, {	-- Prince Sarsarun <Herald of Al'Akir>
				i(53509),	-- Amulet of Evil Winds
				i(53506),	-- Cloak of Mocking Winds
				i(53508),	-- Pulmonary Casing
				i(54592),	-- Sul'lithuz Scale Bracers
				i(53507),	-- Sandfury Sandals
			}),
			-- #else
			n(COMMON_BOSS_DROPS, {
				["description"] = "The following items drop from the elemental bosses during the Elemental Unrest World Event. Since they aren't in the game yet and the items are, we are using this header as a placeholder to show you what will be available when they are available.",
				["groups"] = {
					-- Crown Princess Theradras
					i(53496),	-- Barrier of the Earth Princess
					i(53499),	-- Amulet of the Centauri
					i(53497),	-- Zaetar's Deathshroud
					i(53498),	-- Earth Bride's Gown
					i(53500),	-- Tectonic Plate

					-- Grand Ambassador Flamelash
					i(53502),	-- Flamelash Amulet
					i(53503),	-- Pendant of Burning Spirits
					i(53505),	-- Salamander Skin
					i(53504),	-- Flamewaker's Treads
					i(53501),	-- Sulfuron's Favor

					-- Kai'ju Gahz'rilla
					i(53491),	-- Twilight Offering Bands
					i(53494),	-- Girdle of Oblation
					i(53493),	-- Sacrificial Mail
					i(53495),	-- Old Gods' Blessing
					i(53492),	-- Ring of the Three-Headed Beast

					-- Prince Sarsarun <Herald of Al'Akir>
					i(53509),	-- Amulet of Evil Winds
					i(53506),	-- Cloak of Mocking Winds
					i(53508),	-- Pulmonary Casing
					i(54592),	-- Sul'lithuz Scale Bracers
					i(53507),	-- Sandfury Sandals
				},
			}),
			-- #endif
		},
	}))
));
