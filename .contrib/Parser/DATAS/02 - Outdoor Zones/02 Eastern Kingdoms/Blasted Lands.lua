---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(BLASTED_LANDS, {
		["lore"] = "The Blasted Lands bear that name for a reason: they were twisted by the magic that brought the Dark Portal into being, spewing the rampaging Horde into Azeroth.\n\nThis wasted desert of red clay is home to the original Dark Portal. The portal still stands, and leads to Outland — the remains of the orcs' sundered homeworld, Draenor. Nethergarde Keep, a Stormwind fortress of dour mages and paladins, keeps watch over the portal and the demons and ogres that would abuse its power.\n\nNow, the wretched land hosts few inhabitants and no significant settlements. Magic that leaked through the Dark Portal warped the Blasted Lands, leaving an infertile desert landscape. Hardy desert species like Basilisks, Scorpions and Hyenas have since colonized the area. The red rocks of the region do not come by their color naturally. The original tan color was transmuted into the unearthly crimson by searing heat and chaotic energies when the Dark Portal was destroyed.",
		["icon"] = 236720,
		-- #if AFTER 6.0.1
		["crs"] = { 88206 },	-- Zidormi
		-- #endif
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(4909, {	-- Blasted Lands Quests
					["timeline"] = { ADDED_4_0_3 },
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						26171,	-- You Are Rakh'likh, Demon (alliance)
						25701,	-- You Are Rakh'likh, Demon (horde)
						26187,	-- The Downfall of Marl Wormthorn (alliance)
						25720,	-- The Downfall of Marl Wormthorn (horde)
						25705,	-- False Idols
						25706,	-- Neptool's Revenge
					},
					-- #endif
				}),
				explorationAch(766),	-- Explore Blasted Lands
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					635,	-- Adder (PET!)
					415,	-- Fire Beetle (PET!)
					414,	-- Scorpid (PET!)
					412,	-- Spider (PET!)
				}},
				["groups"] = {
					pet(416, {	-- Scorpling (PET!)
						["coord"] = { 59.6, 60.8, BLASTED_LANDS },
					}),
				},
			}),
			explorationHeader({
				exploration(1441),	-- Altar of Storms
				exploration(1437),	-- Dreadmaul Hold
				exploration(1439),	-- Dreadmaul Post
				-- #if BEFORE CATA
				exploration(1457),	-- Garrison Armory
				-- #endif
				exploration(1438),	-- Nethergarde Keep
				-- #if AFTER CATA
				exploration(5076),	-- Nethergarde Supply Camp
				-- #endif
				exploration(2517, {	-- Rise of the Defiler
					-- #if AFTER CATA
					-- CRIEVE NOTE: Couldn't get this to trigger on my rogue. Not sure why. (could collect it on Wrath Classic without issue though...)
					["collectible"] = false,
					-- #endif
				}),
				exploration(1440),	-- Serpent's Coil
				-- #if AFTER CATA
				exploration(5077),	-- Shatterstone
				exploration(5083),	-- Sunveil Excursion
				exploration(5084),	-- Surwich
				-- #endif
				exploration(72),	-- The Dark Portal
				-- #if AFTER CATA
				exploration(5078),	-- The Red Reaches
				exploration(5044),	-- The Tainted Forest
				-- #endif
				exploration(73),	-- The Tainted Scar
			}),
			n(FLIGHT_PATHS, {
				fp(604, {	-- Dreadmaul Hold, Blasted Lands
					["cr"] = 43121,	-- Preda <Wind Rider Master>
					["coord"] = { 43.6, 14.2, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(45, {	-- Nethergarde Keep, Blasted Lands
					["cr"] = 8609,	-- Alexandra Constantine <Gryphon Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 61.2, 21.6, BLASTED_LANDS },
						-- #else
						{ 65.6, 24.4, BLASTED_LANDS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				fp(603, {	-- Sunveil Excursion, Blasted Lands
					["cr"] = 43114,	-- Salena <Dragonhawk Master>
					["coord"] = { 50.8, 72.8, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(602, {	-- Surwich, Blasted Lands
					["cr"] = 43107,	-- Graham McAllister <Hippogryph Master>
					["coord"] = { 47.0, 89.2, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			-- #if AFTER CATA
			n(PROFESSIONS, {
				prof(FISHING, {
					o(180751),	-- Floating Wreckage
				}),
			}),
			-- #endif
			n(QUESTS, {
				q(26172, {	-- A Bloodmage's Gotta Eat Too (A)
					["qg"] = 42298,	-- Kasim Sharim
					["sourceQuest"] = 26158,	-- Attune the Bloodstone (A)
					["coord"] = { 62.4, 25.8, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Ashmane Steak
							["provider"] = { "i", 55828 },	-- Ashmane Steak
							["coord"] = { 51.6, 29.8, BLASTED_LANDS },
							["cr"] = 5992,	-- Ashmane Boar
						}),
						i(59384, {	-- Ashmane Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59386, {	-- Boots of the Blasted Lands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59385, {	-- Stained Shoulderguards
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25690, {	-- A Bloodmage's Gotta Eat Too (H)
					["qg"] = 7505,	-- Bloodmage Drazial
					["sourceQuest"] = 25684,	-- Attune the Bloodstone (H)
					["coord"] = { 39.2, 36.2, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Ashmane Steak
							["provider"] = { "i", 55828 },	-- Ashmane Steak
							["coord"] = { 51.6, 29.8, BLASTED_LANDS },
							["cr"] = 5992,	-- Ashmane Boar
						}),
						i(59422, {	-- Ashmane Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59424, {	-- Boots of the Blasted Lands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59423, {	-- Stained Shoulderguards
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(2583, {	-- A Boar's Vitality
					["qg"] = 7505,	-- Bloodmage Drazial
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 8392, 3 },	-- Blasted Boar Lung
						{ "i", 8393, 2 },	-- Scorpok Pincer
						{ "i", 8394, 1 },	-- Basilisk Brain
					},
					["lvl"] = 45,
					["groups"] = {
						i(8411, {	-- Lung Juice Cocktail
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25715, {	-- A Closer Look
					["qg"] = 9540,	-- Enohar Thunderbrew
					["sourceQuest"] = 27919,	-- Onward to the Blasted Lands
					["coord"] = { 61.4, 18.6, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26185, {	-- Advice from the Cenarion Circle
					["qg"] = 42349,	-- Mayor Charlton Connisport
					["sourceQuest"] = 26184,	-- Wormthorn's Dream
					["coord"] = { 46.4, 87.2, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25703, {	-- Atrocities
					["qg"] = 41354,	-- Neptool
					["sourceQuest"] = 25702,	-- Home... Gone... Naga...
					["coord"] = { 71.0, 60.1, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Bloodwash Barbarian slain
							["provider"] = { "n", 41386 },	-- Bloodwash Barbarian
						}),
						objective(2, {	-- 0/10 Bloodwash Enchantress slain
							["provider"] = { "n", 41387 },	-- Bloodwash Enchantress
						}),
					},
				}),
				q(26158, {	-- Attune the Bloodstone (A)
					["qg"] = 42298,	-- Kasim Sharim
					["sourceQuest"] = 26157,	-- Kasim Sharim
					["coord"] = { 62.4, 25.8, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Use internal Bloodstone Teleporter
							["provider"] = { "o", 203753 },	-- Bloodstone Teleporter
							["coord"] = { 63.23, 25.93, BLASTED_LANDS },
						}),
						objective(2, {	-- Use external Bloodstone Teleporter
							["provider"] = { "o", 203752 },	-- Bloodstone Teleporter
							["coord"] = { 61.5, 29.9, BLASTED_LANDS },
						}),
					},
				}),
				q(25684, {	-- Attune the Bloodstone (H)
					["qg"] = 7506,	-- Bloodmage Lynnore
					["sourceQuest"] = 25683,	-- The Dreadmaul Furnace
					["coord"] = { 39.2, 36.2, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Use internal Bloodstone Teleporter
							["provider"] = { "o", 203181 },	-- Bloodstone Teleporter
							["coord"] = { 39.3, 35.7, BLASTED_LANDS },
						}),
						objective(2, {	-- Use external Bloodstone Teleporter
							["provider"] = { "o", 203180 },	-- Bloodstone Teleporter
							["coord"] = { 41.6, 31.9, BLASTED_LANDS },
						}),
					},
				}),
				q(28857, {	-- Blasted Lands: The Other Side of the World (A)
					["qg"] = 11118,	-- Innkeeper Vizzie
					["altQuests"] = { 28673 },	-- Hero's Call: Blasted Lands!
					["coord"] = { 59.8, 51.1, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3_LAUNCH },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(28858, {	-- Blasted Lands: The Other Side of the World (H)
					["qg"] = 11118,	-- Innkeeper Vizzie
					["altQuests"] = { 28671 },	-- Warchief's Command: Blasted Lands!
					["coord"] = { 59.8, 51.1, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3_LAUNCH },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26160, {	-- Blood Ritual (A)
					["qg"] = 42298,	-- Kasim Sharim
					["sourceQuest"] = 26159,	-- The First Step (A)
					["coord"] = { 62.4, 25.8, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25686, {	-- Blood Ritual (H)
					["qg"] = 7506,	-- Bloodmage Lynnore
					["sourceQuest"] = 25685,	-- The First Step (H)
					["coord"] = { 39.2, 36.2, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(28865, {	-- Call of the Warmatron
					["qg"] = 50587,	-- Okril'on Mage
					["coord"] = { 53.2, 33.4, SILITHUS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25716, {	-- Cultists at our Doorstep
					["qg"] = 5385,	-- Watcher Mahar Ba
					["sourceQuest"] = 25714,	-- Watcher Mahar Ba
					["coord"] = { 63.1, 16.8, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Intact Shadowsworn Spell Focus
							["provider"] = { "i", 57134 },	-- Intact Shadowsworn Spell Focus
							["crs"] = {
								42297,	-- Shadowsworn Occultist
								42296,	-- Shadowsworn Spellblade
							},
						}),
						i(59378, {	-- Belt of Occult Horrors
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59376, {	-- Sandals of the Shadowsworn
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59379, {	-- Mahar's Gift
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59377, {	-- Spell Focus Shoulderguards
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25709, {	-- Curtail the Darktail
					["qg"] = 9540,	-- Enohar Thunderbrew
					["sourceQuest"] = 25715,	-- A Closer Look
					["coord"] = { 61.4, 18.6, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Darktail Bonepicker slain
							["providers"] = {
								{ "n", 42235 },	-- Darktail Bonepicker
								{ "i", 57119 },	-- Enohar's Explosive Arrows
							},
						}),
						i(59371, {	-- Bonepicker Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59369, {	-- Darktail Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59370, {	-- Enohar's Old Hunter Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59368, {	-- Gloves of Compassion
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26186, {	-- Demoniac Vessel (A)
					["qg"] = 42352,	-- Cenarion Observer Shayana
					["sourceQuest"] = 26185,	-- Advice from the Cenarion Circle
					["coord"] = { 46.3, 87.1, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Demoniac Vessel
							["provider"] = { "i", 57184 },	-- Demoniac Vessel
							["cost"] = {
								{ "i", 57180, 1 },	-- Tainted Hide Pouch
								{ "i", 57183, 1 },	-- Demoniac Commixture
							},
						}),
					},
				}),
				q(25719, {	-- Demoniac Vessel (H)
					["qg"] = 42348,	-- Elijah Dawnflight
					["sourceQuest"] = 25718,	-- How Best to Proceed
					["coord"] = { 47.1, 69.1, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Demoniac Vessel
							["provider"] = { "i", 57184 },	-- Demoniac Vessel
							["cost"] = {
								{ "i", 57180, 1 },	-- Tainted Hide Pouch
								{ "i", 57183, 1 },	-- Demoniac Commixture
							},
						}),
					},
				}),
				q(25711, {	-- Eliminate the Okril'lon
					["qg"] = 5393,	-- Quartermaster Lungertz
					["sourceQuest"] = 25710,	-- Minor Distractions
					["coord"] = { 60.0, 13.4, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/9 Okril'lon Infantry slain
							["provider"] = { "n", 42359 },	-- Okril'lon Infantry
							["coord"] = { 53, 14.2, BLASTED_LANDS },
						}),
						i(59373, {	-- Nethergarde Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59374, {	-- Nethergarde Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59372, {	-- Nethergarde Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59375, {	-- Nethergarde Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(3501, {	-- Everything Counts In Large Amounts
					["qg"] = 7363,	-- Kum'isha the Collector
					["coord"] = { 51.8, 35.6, BLASTED_LANDS },
					["cost"] = { { "i", 10593, 1 } },	-- Imperfect Draenethyst Fragment
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						i(12122),	-- Kum'isha's Junk
					},
				}),
				q(26166, {	-- Enhancing the Stone (A)
					["providers"] = {
						{ "n", 42299 },	-- Watcher Grimeo
						{ "i", 57140 },	-- Grimeo's Package
					},
					["sourceQuests"] = {
						26164,	-- The Charred Granite of the Dark Portal (A)
						26165,	-- The Vile Blood of Demons (A)
					},
					["coord"] = { 55.1, 49.5, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25693, {	-- Enhancing the Stone (H)
					["providers"] = {
						{ "n", 41159 },	-- Watcher Wazzik
						{ "i", 56025 },	-- Wazzik's Package
					},
					["sourceQuests"] = {
						25691,	-- The Charred Granite of the Dark Portal (H)
						25692,	-- The Vile Blood of Demons (H)
					},
					["coord"] = { 54.3, 50.0, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25705, {	-- False Idols
					["qg"] = 41354,	-- Neptool
					["sourceQuest"] = 25703,	-- Atrocities
					["coord"] = { 71.0, 60.1, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Azsh'ir Idol destroyed
							["provider"] = { "o", 203289 },	-- Azsh'ir Idol
							["coord"] = { 60.8, 74.7, BLASTED_LANDS },
						}),
					},
				}),
				q(25674, {	-- Futile Pride
					["qg"] = 41124,	-- Okrilla
					["sourceQuests"] = {
						28858,	-- Blasted Lands: The Other Side of the World
						28865,	-- Call of the Warmatron
						28671,	-- Warchief's Command: Blasted Lands!
						28553,	-- Okrilla and the Blasted Lands
					},
					["coord"] = { 40.4, 11.6, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Dreadmaul Ambusher
							["provider"] = { "n", 41136 },	-- Dreadmaul Ambusher
							["coord"] = { 44.0, 17.8, BLASTED_LANDS },
						}),
					},
				}),
				q(25676, {	-- Heartstrike
					["qg"] = 41124,	-- Okrilla
					["sourceQuest"] = 25674,	-- Futile Pride
					["coord"] = { 40.4, 11.6, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				heroscall(q(28673, {	-- Hero's Call: Blasted Lands!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { IRONFORGE, STORMWIND_CITY },	-- Only found in Ironforge & Stormwind City in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 54. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 57. (TODO: Test max level between 58 and 65)
					["lvl"] = { 54, 57 },
					-- #endif
				})),
				q(25702, {	-- Home... Gone... Naga...
					["qg"] = 41265,	-- Salt-Flop
					["coord"] = { 73.1, 47.4, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(25718, {	-- How Best to Proceed
					["qg"] = 42344,	-- Rohan Sunveil
					["sourceQuest"] = 25717,	-- The Demons and the Druid
					["coord"] = { 49.7, 71.4, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(2602, {	-- Infallible Mind
					["qg"] = 7506,	-- Bloodmage Lynnore
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8394, 10 },	-- Basilisk Brain
						{ "i", 8396, 2 },	-- Vulture Gizzard
					},
					["lvl"] = 45,
					["groups"] = {
						i(8423, {	-- Cerebral Cortex Compound
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25679, {	-- Into the Mountain
					["qg"] = 41333,	-- Rofilian Dane
					["sourceQuests"] = {
						25677,	-- It's All Mine
						25678,	-- Pick Your Fate
					},
					["coord"] = { 59.5, 3.5, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25677, {	-- It's All Mine
					["qg"] = 41133,	-- Rofilian Dane
					["sourceQuest"] = 25676,	-- Heartstrike
					["coord"] = { 59.5, 3.5, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Ore Heap dissolved
							["providers"] = {
								{ "o", 203183 },	-- Ore Heap
								{ "i",  55238 },	-- Concentrated Solvent
							},
							["coord"] = { 50.11, 10.61, BLASTED_LANDS },
						}),
					},
				}),
				q(26157, {	-- Kasim Sharim
					["providers"] = {
						{ "n", 5385 },	-- Watcher Mahar Ba
						{ "i", 57136 },	-- A Letter to Kasim Sharim
					},
					["sourceQuest"] = 25716,	-- Cultists at our Doorstep
					["coord"] = { 63.1, 16.8, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2522, {	-- Kum'isha's Endeavors
					["qg"] = 7363,	-- Kum'isha the Collector
					["sourceQuest"] = 2521,	-- To Serve Kum'isha
					["coord"] = { 51.8, 35.6, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 8244, 1 } },	-- Flawless Draenethyst Sphere
					["repeatable"] = true,
					["lvl"] = 45,
					["groups"] = {
						i(10752),	-- Emerald Encrusted Chest
					},
				}),
				q(25772, {	-- Kum'isha's Endeavors
					["providers"] = {
						{ "i", 8244 },	-- Flawless Draenethyst Sphere
						{ "n", 7363 },	-- Kum'isha the Collector
					},
					["coord"] = { 48.8, 31.8, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["repeatable"] = true,
					["groups"] = {
						i(10752),	-- Emerald Encrusted Chest
					},
				}),
				q(25700, {	-- Loramus Thalipedes Awaits
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuests"] = {
						25697,	-- The Amulet of Allistarj
						25699,	-- The Amulet of Grol
						25698,	-- The Amulet of Sevine
					},
					["coord"] = { 39.3, 35.7, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25710, {	-- Minor Distractions
					["qg"] = 5393,	-- Quartermaster Lungertz
					["sourceQuests"] = {
						28857,	-- Blasted Lands: The Other Side of the World
						28673,	-- Hero's Call: Blasted Lands!
						28867,	-- Nethergarde Needs You!
					},
					["coord"] = { 60.0, 13.4, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Okril'lon Scout slain
							["provider"] = { "n", 42228 },	-- Okril'lon Scout
							["coord"] = { 58.2, 17.2, BLASTED_LANDS },
						}),
					},
				}),
				q(25682, {	-- Mission Complete
					["providers"] = {
						{ "n", 41134 },	-- Tak'arili
						{ "i", 56017 },	-- Nethergarde Mine Report
					},
					["sourceQuest"] = 25681,	-- Some People Just Need Killing
					["coord"] = { 62.2, 1.4, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(59414, {	-- Boots of Attrition
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59416, {	-- Okrilla's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59415, {	-- Reporter's Shouldguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59417, {	-- Rockard Greaves
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25706, {	-- Neptool's Revenge
					["qg"] = 41354,	-- Neptool
					["sourceQuest"] = 25703,	-- Atrocities
					["coord"] = { 71.0, 60.1, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Bloodwash Zealot slain
							["provider"] = { "n", 41422 },	-- Bloodwash Zealot
						}),
						objective(2, {	-- 0/8 Bloodwash Acolyte slain
							["provider"] = { "n", 41423 },	-- Bloodwash Acolyte
						}),
						objective(3, {	-- 0/4 Bloodwash Gambler slain
							["provider"] = { "n", 41404 },	-- Bloodwash Gambler
						}),
						objective(4, {	-- 0/4 Bloodwash Idolater slain
							["provider"] = { "n", 41405 },	-- Bloodwash Idolater
						}),
						i(59405, {	-- Bloodwash Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59403, {	-- Gambler's Wrap
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59404, {	-- Rockpool Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28867, {	-- Nethergarde Needs You!
					["qg"] = 50588,	-- Nethergarde Mage
					["coord"] = { 53.4, 33.4, SILITHUS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25712, {	-- Nethergarde Reigns
					["qg"] = 42262,	-- Leyan Steelson
					["sourceQuest"] = 25710,	-- Minor Distractions
					["coord"] = { 60.1, 13.3, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Captain Metlek slain
							["provider"] = { "n", 42231 },	-- Captain Metlek <Okril'lon Captain>
							["coord"] = { 51.6, 14.8, BLASTED_LANDS },
						}),
					},
				}),
				{	-- Not Just Any Body
					["allianceQuestData"] = q(26161, {	-- Not Just Any Body [A]
						["qg"] = 42298,	-- Kasim Sharim
						["sourceQuest"] = 26166,	-- Enhancing the Stone
						["coord"] = { 62.5, 26.2, BLASTED_LANDS },
					}),
					["hordeQuestData"] = q(25687, {	-- Not Just Any Body [H]
						["qg"] = 7506,	-- Bloodmage Lynnore
						["sourceQuest"] = 25686,	-- Blood Ritual
						["coord"] = { 39.2, 36.2, BLASTED_LANDS },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Loramus' Head
							["providers"] = {
								{ "i",  55829 },	-- Loramus' Head
								{ "o", 203204 },	-- Dreadmaul Cache
							},
							["coord"] = { 46.7, 27.0, BLASTED_LANDS },
						}),
						objective(2, {	-- 0/1 Loramus' Torso
							["providers"] = {
								{ "i",  55836 },	-- Loramus' Torso
								{ "o", 203205 },	-- Dreadmaul Cache
							},
							["coord"] = { 39.9, 37.1, BLASTED_LANDS },
						}),
						objective(3, {	-- 0/1 Loramus' Legs
							["providers"] = {
								{ "i",  55837 },	-- Loramus' Legs
								{ "o", 203206 },	-- Dreadmaul Cache
							},
							["coord"] = { 46.9, 39.5, BLASTED_LANDS },
						}),
					},
				},
				q(25675, {	-- Ogre Combat
					["qg"] = 41125,	-- Master Aitokk
					["sourceQuest"] = 25674,	-- Futile Pride
					["coord"] = { 42.6, 13.9, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Dreadmaul Mauler slain
							["provider"] = { "n", 5977 },	-- Dreadmaul Mauler
						}),
						objective(2, {	-- 0/5 Dreadmaul Warlock slain
							["provider"] = { "n", 5978 },	-- Dreadmaul Warlock
						}),
						i(59407, {	-- Aitokk's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59408, {	-- Boots of Intimidation
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59409, {	-- Dreadmaul Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59406, {	-- Gloves of Purchased Time
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(3502, {	-- One Draenei's Junk...
					["qg"] = 7363,	-- Kum'isha the Collector
					["sourceQuest"] = 3501,	-- Everything Counts In Large Amounts
					["coord"] = { 51.8, 35.6, BLASTED_LANDS },
					["cost"] = { { "i", 10593, 1 } },	-- Imperfect Draenethyst Fragment
					["timeline"] = { REMOVED_4_0_3 },
					["repeatable"] = true,
					["lvl"] = 45,
					["groups"] = {
						i(12122),	-- Kum'isha's Junk
					},
				}),
				q(25771, {	-- One Draenei's Junk...
					["providers"] = {
						{ "i", 10593 },	-- Imperfect Draenethyst Sphere
						{ "n", 7363 },	-- Kum'isha the Collector
					},
					["coord"] = { 48.8, 31.8, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["repeatable"] = true,
					["groups"] = {
						i(12122),	-- Kum'isha's Junk
					},
				}),
				q(25708, {	-- Our Fallen Friends
					["qg"] = 9540,	-- Enohar Thunderbrew
					["sourceQuest"] = 25715,	-- A Closer Look
					["coord"] = { 61.4, 18.6, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/13 Drowned Gilnean Spirit Freed
							["providers"] = {
								{ "n", 42252 },	-- Drowned Gilnean Spirit
								{ "n", 42244 },	-- Drowned Gilnean Merchant
								{ "n", 42248 },	-- Drowned Gilnean Sailor
								{ "n", 42249 },	-- Drowned Gilnean Settler
							},
						}),
					},
				}),
				q(2783, {	-- Petty Squabbles
					["qg"] = 7826,	-- Ambassador Ardalan
					["coord"] = { 67.6, 19.2, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(25678, {	-- Pick Your Fate
					["qg"] = 41133,	-- Rofilian Dane
					["sourceQuest"] = 25676,	-- Heartstrike
					["coord"] = { 59.5, 3.5, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Nethergarde Miner slain
							["providers"] = {
								{ "n", 5996 },	-- Nethergarde Miner
								{ "n", 41162 },	-- Terrified Nethergarde Miner
							},
						}),
						objective(2, {	-- 0/3 Nethergarde Engineer slain
							["provider"] = { "n", 5997 },	-- Nethergarde Engineer
						}),
						objective(3, {	-- 0/3 Nethergarde Foreman slain
							["providers"] = {
								{ "n", 5998 },	-- Nethergarde Foreman
								{ "n", 41171 },	-- Reassuring Nethergarde Foreman
							},
						}),
						i(59411, {	-- Belt of Cheapened Lives
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59412, {	-- Boots of Financial Victory
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59413, {	-- Business Handlers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59410, {	-- Rofilian's Armbands
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				{	-- Protecting Our Rear
					["allianceQuestData"] = q(26173, {	-- Protecting Our Rear [A]
						["qg"] = 16841,	-- Watch Commander Relthorn Netherwane
						["coord"] = { 54.6, 50.4, BLASTED_LANDS },
					}),
					["hordeQuestData"] = q(25694, {	-- Protecting Our Rear [H]
						["qg"] = 19254,	-- Warlord Dar'toon
						["coord"] = { 54.4, 50.5, BLASTED_LANDS },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Jarroc Torn-Wing slain
							["provider"] = { "n", 41164 },	-- Jarroc Torn-Wing
							["coord"] = { 44.0, 48.0, BLASTED_LANDS },
						}),
						objective(2, {	-- 0/1 Shahandana slain
							["provider"] = { "n", 41165 },	-- Shahandana
							["coord"] = { 60.0, 43.6, BLASTED_LANDS },
						}),
						objective(3, {	-- 0/1 Gomegaz slain
							["provider"] = { "n", 41166 },	-- Gomegaz
							["coord"] = { 52.8, 41.4, BLASTED_LANDS },
						}),
					},
				},
				q(2582, {	-- Rage of Ages
					["qg"] = 7505,	-- Bloodmage Drazial
					["sourceQuest"] = 2581,	-- Snickerfang Jowls
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8391, 3 },	-- Snickerfang Jowl
						{ "i", 8392, 2 },	-- Blasted Boar Lung
						{ "i", 8393, 1 },	-- Scorpok Pincer
					},
					["lvl"] = 45,
					["groups"] = {
						i(8410, {	-- R.O.I.D.S.
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25713, {	-- Remove Their Arms
					["qg"] = 42264,	-- Buttonwillow McKittrick
					["sourceQuest"] = 25710,	-- Minor Distractions
					["coord"] = { 60.4, 13.8, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Okril'lon Weapons Crate destroyed
							["providers"] = {
								{ "o", 203707 },	-- Okril'lon Weapons Crate
								{ "i", 57117 },	-- Buttonwillow's Hand Grenade
							},
							["coord"] = { 53.66, 14.83, BLASTED_LANDS },
						}),
					},
				}),
				q(2993, {	-- Return to the Hinterlands
					["qg"] = 8022,	-- Thadius Grimshade
					["sourceQuest"] = 2992,	-- The Divination
					["coord"] = { 67.0, 19.4, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2586, {	-- Salt of the Scorpok
					["qg"] = 7505,	-- Bloodmage Drazial
					["sourceQuest"] = 2585,	-- The Decisive Striker
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8393, 3 },	-- Scorpok Pincer
						{ "i", 8396, 2 },	-- Vulture Gizzard
						{ "i", 8392, 1 },	-- Blasted Boar Lung
					},
					["lvl"] = 45,
					["groups"] = {
						i(8412, {	-- Ground Scorpok Assay
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2581, {	-- Snickerfang Jowls
					["qg"] = 7505,	-- Bloodmage Drazial
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 8391, 3 },	-- Snickerfang Jowl
						{ "i", 8392, 2 },	-- Blasted Boar Lung
						{ "i", 8393, 1 },	-- Scorpok Pincer
					},
					["lvl"] = 45,
					["groups"] = {
						i(8410, {	-- R.O.I.D.S.
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25681, {	-- Some People Just Need Killing
					["qg"] = 41134,	-- Tak'arili
					["sourceQuest"] = 25680,	-- That's Not Us
					["description"] = "|cffFF0000DO NOT GET IN THE BOX.|r\nThe box will change which phase your character is in, and waste a lot of time.",
					["coord"] = { 62.2, 1.4, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Chief Prospector Hondo slain
							["provider"] = { "n", 41173 },	-- Chief Prospector Hondo
							["coord"] = { 52.4, 2.6, BLASTED_LANDS },
						}),
					},
				}),
				q(2584, {	-- Spirit of the Boar
					["qg"] = 7505,	-- Bloodmage Drazial
					["sourceQuest"] = 2583,	-- A Boar's Vitality
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8392, 3 },	-- Blasted Boar Lung
						{ "i", 8393, 2 },	-- Scorpok Pincer
						{ "i", 8394, 1 },	-- Basilisk Brain
					},
					["lvl"] = 45,
					["groups"] = {
						i(8411, {	-- Lung Juice Cocktail
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2604, {	-- Spiritual Domination
					["qg"] = 7506,	-- Bloodmage Lynnore
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 8396, 10 },	-- Vulture Gizzard
						{ "i", 8391, 2 },	-- Snickerfang Jowl
					},
					["repeatable"] = true,
					["lvl"] = 45,
					["groups"] = {
						i(8424, {	-- Gizzard Gum
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7583, {	-- Suppression
					["qg"] = 14463,	-- Daio the Decrepit
					["sourceQuests"] = {
						7581,	-- The Prison's Bindings
						7582,	-- The Prison's Casing
					},
					["coord"] = { 34, 50.2, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Imprisoned Doomguard
							["providers"] = {
								{ "i",  18605 },	-- Imprisoned Doomguard
								{ "o", 179644 },	-- Imprisoned Doomguard
							},
							["cost"] = { { "i", 18601, 1 } },	-- Glowing Crystal Prison
							["cr"] = 12396,	-- Doomguard Commander
						}),
						-- #if BEFORE 4.0.3
						{
							["recipeID"] = 18540,	-- Ritual of Doom
							["classes"] = { WARLOCK },
						},
						-- #endif
						i(18602, {	-- Tome of Sacrifice
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26175, {	-- Surwich
					["qg"] = 16841,	-- Watch Commander Relthorn Netherwane
					["sourceQuest"] = 26174,	-- Watching Our Back
					["coord"] = { 54.6, 50.4, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25680, {	-- That's Not Us
					["qg"] = 41134,	-- Tak'arili
					["sourceQuest"] = 25679,	-- Into the Mountain
					["coord"] = { 62.2, 1.4, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Illycor slain
							["provider"] = { "n", 41163 },	-- Illycor
							["coord"] = { 65.6, 8.6, BLASTED_LANDS },
						}),
					},
				}),
				q(26162, {	-- The Altar of Storms (A)
					["qg"] = 42298,	-- Kasim Sharim
					["sourceQuest"] = 26161,	-- Not Just Any Body (A)
					["coord"] = { 62.5, 26.2, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Loramus resurrected
							["providers"] = {
								{ "n",  41193 },	-- Loramus' Body
								{ "i",  56032 },	-- Loramus' Body
								{ "o", 203196 },	-- Blood Altar
							},
							["coord"] = { 37.0, 28.6, BLASTED_LANDS },
						}),
						i(59390, {	-- Boots of Completed Rituals
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59387, {	-- Boots of Demonic Resurrection
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59389, {	-- Bracres of the Demonic Altar
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59391, {	-- Helm of Storms
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59388, {	-- Loramus' Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25688, {	-- The Altar of Storms (H)
					["qg"] = 7506,	-- Bloodmage Lynnore
					["sourceQuest"] = 25687,	-- Not Just Any Body (H)
					["coord"] = { 39.2, 36.2, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Loramus resurrected
							["providers"] = {
								{ "n", 41193 },	-- Loramus' Body
								{ "i", 56032 },	-- Loramus' Body
							},
							["coord"] = { 37.0, 28.6, BLASTED_LANDS },
						}),
						i(59428, {	-- Boots of Completed Rituals
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59425, {	-- Boots of Demonic Resurrection
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59427, {	-- Bracers of the Demonic Altar
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59429, {	-- Helm of Storms
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59426, {	-- Loramus' Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				{	-- The Amulet of Allistarj
					["allianceQuestData"] = q(26167, {	-- The Amulet of Allistarj [A]
						["qg"] = 42298,	-- Kasim Sharim
						["sourceQuest"] = 26160,	-- Blood Ritual
						["coord"] = { 62.4, 25.9, BLASTED_LANDS },
					}),
					["hordeQuestData"] = q(25697, {	-- The Amulet of Allistarj [H]
						["qg"] = 7783,	-- Loramus Thalipedes
						["sourceQuest"] = 25693,	-- Enhancing the Stone
						["coord"] = { 39.3, 35.7, BLASTED_LANDS },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Amulet of Allistarj
							["providers"] = {
								{ "i",  10755 },	-- Amulet of Allistarj
								{ "o", 203229 },	-- Allistarjian Vault
							},
							["coord"] = { 61.6, 26.9, BLASTED_LANDS },
						}),
					},
				},
				q(26169, {	-- The Amulet of Grol (A)
					["qg"] = 42298,	-- Kasim Sharim
					["sourceQuest"] = 26160,	-- Blood Ritual
					["coord"] = { 62.4, 25.9, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Amulet of Grol
							["providers"] = {
								{ "i",  10753 },	-- Amulet of Grol
								{ "o", 203230 },	-- Head of Grol
								{ "i",  56007 },	-- Broken Amulet
							},
							["coord"] = { 71.0, 35.4, BLASTED_LANDS },
							["cr"] = 41267,	-- Spirit of Grol
						}),
						i(59381, {	-- Ogre-Hunter Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59382, {	-- Serpent Coils
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59380, {	-- Shattershore Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59383, {	-- Strengthening Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25699, {	-- The Amulet of Grol (H)
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 25693,	-- Enhancing the Stone
					["coord"] = { 39.3, 35.7, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Amulet of Grol
							["providers"] = {
								{ "i",  10753 },	-- Amulet of Grol
								{ "o", 203230 },	-- Head of Grol
								{ "i",  56007 },	-- Broken Amulet
							},
							["coord"] = { 71.0, 35.4, BLASTED_LANDS },
							["cr"] = 41267,	-- Spirit of Grol
						}),
						i(59419, {	-- Ogre-Hunter Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59420, {	-- Serpent Coils
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59418, {	-- Shattershore Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59421, {	-- Strengthening Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				{	-- The Amulet of Sevine
					["allianceQuestData"] = q(26168, {	-- The Amulet of Sevine [A]
						["qg"] = 42298,	-- Kasim Sharim
						["sourceQuest"] = 26160,	-- Blood Ritual
						["coord"] = { 62.4, 25.9, BLASTED_LANDS },
					}),
					["hordeQuestData"] = q(25698, {	-- The Amulet of Sevine [H]
						["qg"] = 7783,	-- Loramus Thalipedes
						["sourceQuest"] = 25693,	-- Enhancing the Stone
						["coord"] = { 39.3, 35.7, BLASTED_LANDS },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Amulet of Sevine
							["provider"] = { "i", 10754 },	-- Amulet of Sevine
							["coord"] = { 73.0, 47.6, BLASTED_LANDS },
							["cr"] = 41265,	-- Salt-Flop <Rockpool Murloc>
						}),
					},
				},
				q(2601, {	-- The Basilisk's Bite
					["qg"] = 7506,	-- Bloodmage Lynnore
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 8394, 10 },	-- Basilisk Brain
						{ "i", 8396, 2 },	-- Vulture Gizzard
					},
					["lvl"] = 45,
					["groups"] = {
						i(8423, {	-- Cerebral Cortex Compound
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				{	-- The Charred Granite of the Dark Portal
					["allianceQuestData"] = q(26164, {	-- The Charred Granite of the Dark Portal [A]
						["qg"] = 42299,	-- Watcher Grimeo
						["sourceQuest"] = 26163,	-- Time Is Short
						["coord"] = { 55.1, 49.5, BLASTED_LANDS },
					}),
					["hordeQuestData"] = q(25691, {	-- The Charred Granite of the Dark Portal [H]
						["qg"] = 41159,	-- Watcher Wazzik
						["sourceQuest"] = 25689,	-- Time is Short
						["coord"] = { 54.3, 50.0, BLASTED_LANDS },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/24 Charred Granite Chips
							["providers"] = {
								{ "i",  55989 },	-- Charred Granite Chips
								{ "o", 203224 },	-- Charred Granite Outcropping
								{ "i",  56024 },	-- Portal-Sentry's Mining Pick
							},
							["coord"] = { 58.2, 46.4, BLASTED_LANDS },
						}),
					},
				},
				q(2743, {	-- The Cover of Darkness
					["qg"] = 7729,	-- Spirit of Kirith
					["sourceQuest"] = 2721,	-- Kirith
					["coord"] = { 68.4, 31.2, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
				}),
				q(2585, {	-- The Decisive Striker
					["qg"] = 7505,	-- Bloodmage Drazial
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 8393, 3 },	-- Scorpok Pincer
						{ "i", 8396, 2 },	-- Vulture Gizzard
						{ "i", 8392, 1 },	-- Blasted Boar Lung
					},
					["lvl"] = 45,
					["groups"] = {
						i(8412, {	-- Ground Scorpok Assay
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25717, {	-- The Demons and the Druid
					["qg"] = 42344,	-- Rohan Sunveil
					["sourceQuest"] = 25696,	-- The Sunveil Excursion
					["coord"] = { 49.7, 71.4, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Doomguard Destroyer slain
							["provider"] = { "n", 41470 },	-- Doomguard Destroyer
						}),
						objective(2, {	-- 0/5 Dreadlord Defiler slain
							["provider"] = { "n", 41471 },	-- Dreadlord Defiler
						}),
						objective(3, {	-- 0/5 Corrupted Darkwood Treant slain
							["provider"] = { "n", 45119 },	-- Corrupted Darkwood Treant
						}),
						objective(4, {	-- 0/3 Felspore Bog Lord slain
							["provider"] = { "n", 45125 },	-- Felspore Bog Lord
						}),
					},
				}),
				q(2992, {	-- The Divination
					["qg"] = 8022,	-- Thadius Grimshade
					["sourceQuest"] = 2991,	-- Nekrum's Medallion
					["coord"] = { 67.0, 19.4, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(26187, {	-- The Downfall of Marl Wormthorn (A)
					["qg"] = 42349,	-- Mayor Charlton Connisport
					["sourceQuest"] = 26186,	-- Demoniac Vessel (A)
					["coord"] = { 46.33, 87.1, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Marl Wormthorn slain
							["providers"] = {
								{ "n", 42334 },	-- Marl Wormthorn
								{ "i", 57185 },	-- Demoniac Vessel
							},
							["coord"] = { 34.9, 67.8, BLASTED_LANDS },
						}),
						i(59400, {	-- Shoulderguards of Tarnished Healing
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59402, {	-- Surwich Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59401, {	-- Surwich Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59399, {	-- Wormthorn Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25720, {	-- The Downfall of Marl Wormthorn (H)
					["qg"] = 42344,	-- Rohan Sunveil
					["sourceQuest"] = 25719,	-- Demoniac Vessel (H)
					["coord"] = { 49.7, 71.4, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Marl Wormthorn slain
							["providers"] = {
								{ "n", 42334 },	-- Marl Wormthorn
								{ "i", 57185 },	-- Demoniac Vessel
							},
							["coord"] = { 34.9, 67.8, BLASTED_LANDS },
						}),
						i(59439, {	-- Pauldrons of the Trove
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59438, {	-- Shoulderguards of Tarnished Healing
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59440, {	-- Sunveil Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59437, {	-- Wormthorn Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25683, {	-- The Dreadmaul Furnace
					["qg"] = 41124,	-- Okrilla
					["sourceQuest"] = 25682,	-- Mission Complete
					["coord"] = { 40.4, 11.6, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26170, {	-- The Final Ritual
					["qg"] = 42298,	-- Kasim Sharim
					["sourceQuest"] = 26162,	-- The Altar of Storms
					["coord"] = { 62.5, 26.2, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				{	-- The First Step
					["allianceQuestData"] = q(26159, {	-- The First Step [A]
						["qg"] = 42298,	-- Kasim Sharim
						["sourceQuest"] = 26158,	-- Attune the Bloodstone (A)
						["coord"] = { 62.4, 25.8, BLASTED_LANDS },
					}),
					["hordeQuestData"] = q(25685, {	-- The First Step [H]
						["qg"] = 7506,	-- Bloodmage Lynnore
						["sourceQuest"] = 25684,	-- Attune the Bloodstone (H)
						["coord"] = { 39.2, 36.2, BLASTED_LANDS },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/9 Snickerfang Hyena Blood
							["provider"] = { "i", 55826 },	-- Snickerfang Hyena Blood
							["cr"] = 5985,	-- Snickerfang Hyena
						}),
						objective(2, {	-- 0/9 Redstone Basilisk Blood
							["provider"] = { "i", 55827 },	-- Redstone Basilisk Blood
							["cr"] = 5990,	-- Redstone Basilisk
						}),
					},
				},
				q(25707, {	-- The Future of the Rockpool
					["qg"] = 41402,	-- Abandoned Bloodwash Crate
					["sourceQuest"] = 25703,	-- Atrocities
					["coord"] = { 61.4, 64.0, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(7581, {	-- The Prison's Bindings
					["qg"] = 14463,	-- Daio the Decrepit
					["coord"] = { 34, 50.2, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DIRE_MAUL },
					["classes"] = { WARLOCK },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/15 Satyr Blood
							["provider"] = { "i", 18603 },	-- Satyr Blood
						})
					},
				}),
				q(7582, {	-- The Prison's Casing
					["qg"] = 14463,	-- Daio the Decrepit
					["coord"] = { 34, 50.2, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WINTERSPRING },
					["classes"] = { WARLOCK },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/5 Tears of the Hederine
							["provider"] = { "i", 18604 },	-- Tears of the Hederine
							["crs"] = {
								7461,	-- Hederine Initiate
								7463,	-- Hederine Slayer
								7462,	-- Hederine Manastalker
							},
						})
					},
				}),
				q(25696, {	-- The Sunveil Excursion
					["providers"] = {
						{ "n", 19254 },	-- Warlord Dar'toon
						{ "i", 57196 },	-- Reliquary Papers
					},
					["sourceQuest"] = 25695,	-- Watching Our Back
					["coord"] = { 54.4, 50.5, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				{	-- The Vile Blood of Demons
					["allianceQuestData"] = q(26165, {	-- The Vile Blood of Demons [A]
						["qg"] = 42299,	-- Watcher Grimeo
						["sourceQuest"] = 26163,	-- Time Is Short (A)
						["coord"] = { 55.1, 49.5, BLASTED_LANDS },
					}),
					["hordeQuestData"] = q(25692, {	-- The Vile Blood of Demons [H]
						["qg"] = 41159,	-- Watcher Wazzik
						["sourceQuest"] = 25689,	-- Time is Short (H)
						["coord"] = { 54.3, 50.0, BLASTED_LANDS },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/7 Vile Demonic Blood
							["provider"] = { "i", 55991 },	-- Vile Demonic Blood
							["crs"] = {
								41253,	-- Oath-Chained Infernal
								6011,	-- Felguard Sentry
								6010,	-- Felhound
							},
						}),
					},
				},
				q(26163, {	-- Time is Short (A)
					["providers"] = {
						{ "n", 42298 },	-- Kasim Sharim
						{ "i", 56019 },	-- Discordant Rune
					},
					["sourceQuests"] = {
						26167,	-- The Amulet of Allistarj
						26169,	-- The Amulet of Grol
						26168,	-- The Amulet of Sevine
					},
					["coord"] = { 62.4, 25.9, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25689, {	-- Time is Short (H)
					["providers"] = {
						{ "n", 7783 },	-- Loramus Thalipedes
						{ "i", 56019 },	-- Discordant Rune
					},
					["sourceQuest"] = 25688,	-- The Altar of Storms
					["coord"] = { 39.3, 35.7, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(2521, {	-- To Serve Kum'isha
					["qg"] = 7363,	-- Kum'isha the Collector
					["coord"] = { 51.8, 35.6, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 8244, 1 } },	-- Flawless Draenethyst Sphere
					["lvl"] = 45,
					["groups"] = {
						i(10752),	-- Emerald Encrusted Chest
					},
				}),
				q(2603, {	-- Vulture's Vigor
					["qg"] = 7506,	-- Bloodmage Lynnore
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 8396, 10 },	-- Vulture Gizzard
						{ "i", 8391, 2 },	-- Snickerfang Jowl
					},
					["lvl"] = 45,
					["groups"] = {
						i(8424, {	-- Gizzard Gum
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				warchiefscommand(q(28671, {	-- Warchief's Command: Blasted Lands!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { UNDERCITY },	-- Only found in Undercity in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 54. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 57. (TODO: Test max level)
					["lvl"] = { 54, 57 },
					-- #endif
				})),
				q(25714, {	-- Watcher Mahar Ba
					["providers"] = {
						{ "n", 5393 },	-- Quartermaster Lungertz
						{ "n", 9540 },	-- Enohar Thunderbrew
					},
					["sourceQuests"] = {
						25709,	-- Curtail the Darktail
						25711,	-- Eliminate the Okril'lon
						25708,	-- Our Fallen Friends
					},
					["coords"] = {
						{ 60.0, 13.4, BLASTED_LANDS },
						{ 61.4, 18.6, BLASTED_LANDS },
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26174, {	-- Watching Our Back (A)
					["qg"] = 16841,	-- Watch Commander Relthorn Netherwane
					["sourceQuest"] = 26173,	-- Protecting Our Rear (A)
					["coord"] = { 54.6, 50.4, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Examined the Horde Plans
							["provider"] = { "o", 203225 },	-- Horde Plans
							["coord"] = { 53, 49, BLASTED_LANDS },
						}),
						i(59394, {	-- Gloves of Foolish Innocence
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59393, {	-- Harmless Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59395, {	-- Netherwane Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59392, {	-- Rogue Star
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
					},
				}),
				q(25695, {	-- Watching Our Back (H)
					["qg"] = 19254,	-- Warlord Dar'toon
					["sourceQuest"] = 25694,	-- Protecting Our Rear (H)
					["coord"] = { 54.4, 50.5, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Examined the Alliance Plans
							["provider"] = { "o", 203226 },	-- Alliance Plans
							["coord"] = { 54.02, 50.16, BLASTED_LANDS },
						}),
						i(59433, {	-- Dar'toon's Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59432, {	-- Gloves of Foolish Innocence
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59431, {	-- Harmless Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59430, {	-- Rogue Star
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
					},
				}),
				q(26184, {	-- Wormthorn's Dream
					["qg"] = 42349,	-- Mayor Charlton Connisport
					["sourceQuest"] = 26175,	-- Surwich
					["coord"] = { 46.3, 87.1, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Doomguard Destroyer slain
							["provider"] = { "n", 41470 },	-- Doomguard Destroyer
						}),
						objective(2, {	-- 0/5 Dreadlord Defiler slain
							["provider"] = { "n", 41471 },	-- Dreadlord Defiler
						}),
						objective(3, {	-- 0/5 Corrupted Darkwood Treant slain
							["provider"] = { "n", 45119 },	-- Corrupted Darkwood Treant
						}),
						objective(4, {	-- 0/3 Felspore Bog Lord slain
							["provider"] = { "n", 45125 },	-- Felspore Bog Lord
						}),
					},
				}),
				q(3628, {	-- You Are Rakh'likh, Demon
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 3627,	-- Uniting the Shattered Amulet
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- Severed Horn of the Defiler
							["providers"] = {
								{ "i",  10759 },	-- Severed Horn of the Defiler
								{ "i",  10757 },	-- Ward of the Defiler
								{ "o", 153205 },	-- Altar of the Defiler
							},
							["coord"] = { 47.6, 30.0, BLASTED_LANDS },
							["cr"] = 7664,	-- Razelikh the Defiler
						}),
						i(10778, {	-- Necklace of Sanctuary
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10779, {	-- Demon's Blood
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10959, {	-- Demon Hide Sack
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26171, {	-- You Are Rakh'likh, Demon (A)
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 26170,	-- The Final Ritual
					["coord"] = { 62.3, 26.0, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Razelikh's body destroyed
							["provider"] = { "n", 41280 },	-- Razelikh the Defiler
							["coord"] = { 44.8, 26.6, BLASTED_LANDS },
						}),
						objective(2, {	-- 0/1 Razelikh's soul imprisoned
							["providers"] = {
								{ "n", 41292 },	-- Loramus the Defiled
								{ "i", 56012 },	-- Stone Knife of Sealing
							},
							["coord"] = { 44.8, 26.6, BLASTED_LANDS },
						}),
						i(59398, {	-- Band of Noble Deeds
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59397, {	-- Band of Sacrifice
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59396, {	-- Band of Selfless Acts
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25701, {	-- You Are Rakh'likh, Demon (H)
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 25700,	-- Loramus Thalipedes Awaits
					["coord"] = { 39.3, 35.7, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Razelikh's body destroyed
							["provider"] = { "n", 41280 },	-- Razelikh the Defiler
							["coord"] = { 44.8, 26.6, BLASTED_LANDS },
						}),
						objective(2, {	-- 0/1 Razelikh's soul imprisoned
							["providers"] = {
								{ "n", 41292 },	-- Loramus the Defiled
								{ "i", 56012 },	-- Stone Knife of Sealing
							},
							["coord"] = { 44.8, 26.6, BLASTED_LANDS },
						}),
						i(59436, {	-- Band of Noble Deeds
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59435, {	-- Band of Sacrifice
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59434, {	-- Band of Selfless Acts
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
			}),
			n(RARES, {
				n(8298, {	-- Akubar the Seer
					-- #if AFTER CATA
					["coord"] = { 73.6, 55.6, BLASTED_LANDS },
					-- #else
					["coords"] = {
						{ 46.8, 49.8, BLASTED_LANDS },
						{ 52.0, 52.4, BLASTED_LANDS },
						{ 59.8, 46.4, BLASTED_LANDS },
					},
					["groups"] = {
						applyclassicphase(PHASE_THREE_DMF_CARDS, i(19260)),	-- Three of Warlords
					},
					-- #endif
				}),
				n(45260, {	-- Blackleaf
					["coord"] = { 31.0, 70.6, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(45258, {	-- Cassia the Slitherqueen
					["coord"] = { 60.6, 75.6, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(8301, {	-- Clack the Reaver
					-- #if AFTER CATA
					["coord"] = { 47.6, 14.6, BLASTED_LANDS },
					-- #else
					["coords"] = {
						{ 51.0, 24.8, BLASTED_LANDS },
						{ 47.0, 40.2, BLASTED_LANDS },
						{ 53.4, 39.4, BLASTED_LANDS },
						{ 61.6, 35.8, BLASTED_LANDS },
					},
					-- #endif
				}),
				n(8302, {	-- Deatheye
					-- #if AFTER CATA
					["coord"] = { 53.2, 26.8, BLASTED_LANDS },
					-- #else
					["coords"] = {
						{ 47.8, 19.6, BLASTED_LANDS },
						{ 45.4, 26.4, BLASTED_LANDS },
					},
					-- #endif
				}),
				n(8304, {	-- Dreadscorn
					-- #if AFTER CATA
					["coord"] = { 37.0, 29.6, BLASTED_LANDS },
					-- #else
					["coords"] = {
						{ 40.0, 34.4, BLASTED_LANDS },
						{ 44.8, 39.2, BLASTED_LANDS },
						{ 42.6, 43.0, BLASTED_LANDS },
					},
					-- #endif
				}),
				n(8303, {	-- Grunter
					-- #if AFTER CATA
					["coord"] = { 55.2, 38.4, BLASTED_LANDS },
					-- #else
					["coords"] = {
						{ 56.2, 31.4, BLASTED_LANDS },
						{ 61.6, 27.4, BLASTED_LANDS },
					},
					-- #endif
				}),
				n(8297, {	-- Magronos the Unyielding
					-- #if AFTER CATA
					["coord"] = { 46.6, 39.2, BLASTED_LANDS },
					-- #else
					["coords"] = {
						{ 44.6, 43.8, BLASTED_LANDS },
						{ 49.6, 39.6, BLASTED_LANDS },
					},
					-- #endif
				}),
				n(8296, {	-- Mojo the Twisted
					-- #if AFTER CATA
					["coord"] = { 46.4, 26.2, BLASTED_LANDS },
					-- #else
					["coords"] = {
						{ 41.8, 11.4, BLASTED_LANDS },
						{ 45.2, 17.2, BLASTED_LANDS },
					},
					-- #endif
				}),
				n(45257, {	-- Mordak Nightbender
					["coord"] = { 60.6, 29.8, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(45262, {	-- Narixxus the Doombringer
					["coord"] = { 32.4, 44.4, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(8300, {	-- Ravage
					-- #if AFTER CATA
					["coord"] = { 49.8, 35.0, BLASTED_LANDS },
					-- #else
					["coords"] = {
						{ 48.8, 35.8, BLASTED_LANDS },
						{ 59.8, 35.4, BLASTED_LANDS },
					},
					-- #endif
				}),
				n(8299, {	-- Spiteflayer
					["coords"] = {
						-- #if AFTER CATA
						{ 63.4, 33.0, BLASTED_LANDS },
						{ 60.0, 34.2, BLASTED_LANDS },
						{ 59.0, 38.2, BLASTED_LANDS },
						{ 61.4, 40.6, BLASTED_LANDS },
						{ 64.4, 38.0, BLASTED_LANDS },
						-- #else
						{ 60.8, 35.2, BLASTED_LANDS },
						{ 59.2, 40.6, BLASTED_LANDS },
						{ 60.0, 46.8, BLASTED_LANDS },
						-- #endif
					},
				}),
				n(7846, {	-- Teremus the Devourer
					-- #if AFTER CATA
					["coords"] = {
						{ 56.8, 46.0, BLASTED_LANDS },
						{ 52.2, 46.0, BLASTED_LANDS },
						{ 51.6, 52.0, BLASTED_LANDS },
						{ 56.6, 53.2, BLASTED_LANDS },
					},
					-- #else
					["description"] = "Patrols all over the zone. You may even find him in Stormwind thanks to clever kiting by a Hunter.",
					-- #endif
				}),
			}),
			n(REWARDS, {
				i(10752, {	-- Emerald Encrusted Chest
					["description"] = "Reward for turning in Flawless Draenethyst Sphere to Kum'isha the Collector.\n\nContains a random green, blue, or epic world drop item.",
					["groups"] = {
						-- #if AFTER 7.0.3
						i(17050, {	-- Chan's Imperial Robes
							["description"] = "Added to Emerald Encrusted Chest in 7.0. & Mith'rethis Rare in Hinterlands in 9.0.",
							["timeline"] = { REMOVED_4_0_3, ADDED_7_0_3 },
						}),
						-- #endif
					},
				}),
				i(12122, {	-- Kum'isha's Junk
					["description"] = "Reward for turning in an Imperfect Draenethyst Fragment to Kum'isha the Collector.\n\nContains a random green world drop item.",
				}),
			}),
			-- #if AFTER 10.2.5
			n(TREASURES, {
				o(421154, {	-- Carved Eye
					["coord"] = { 55.7, 53.6, BLASTED_LANDS },
					["timeline"] = { ADDED_10_2_5 },
					["g"] = {
						i(212983),	-- Grimoire of the Blasted Observer (CI!)
					},
				}),
			}),
			-- #endif
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_FOUR, i(226417, {	-- Rune of Shadow Specialization
					["provider"] = { "o", 457089 },	-- The Shadow Connection
					["timeline"] = { ADDED_1_15_3 },
					["coord"] = { 33.6, 48.7, BLASTED_LANDS },
					["classes"] = { PRIEST, WARLOCK },
					["groups"] = {
						recipe(453700, {	-- Engrave Ring - Shadow Specialization
							["classes"] = { PRIEST, WARLOCK },
						}),
					},
				})),
			}),
			-- #endif
			n(VENDORS, {
				-- #if AFTER TBC
				n(3546, {	-- Bernie Heisten <Food & Drink>
					["coords"] = {
						-- #if BEFORE CATA
						{ 63.5, 17.0, BLASTED_LANDS },
						-- #else
						{ 59.4, 14.9, BLASTED_LANDS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(23848, {	-- Nethergarde Bitter
							["description"] = "Buy at least one of these before you enter the Dark Portal!",
							["timeline"] = { ADDED_2_0_1 },
						}),
					},
				}),
				-- #endif
				n(8178, {	-- Nina Lightbrew <Alchemy Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 62.4, 16.0, BLASTED_LANDS },
						-- #else
						{ 66.8, 18.6, BLASTED_LANDS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(9300, {	-- Recipe: Elixir of Demonslaying (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(44321, {	-- Sarah Lightbrew <Enchanting Supplies>
					["coord"] = { 62.4, 16.2, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(20753),	-- Formula: Lesser Wizard Oil (RECIPE!)
						i(20752),	-- Formula: Minor Mana Oil (RECIPE!)
						i(20758),	-- Formula: Minor Wizard Oil (RECIPE!)
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(8394, {	-- Basilisk Brain
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						8302,	-- Deatheye
						5990,	-- Redstone Basilisk
						5991,	-- Redstone Crystalhide
					},
				}),
				i(8392, {	-- Blasted Boar Lung
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						5992,	-- Ashmane Boar
						8303,	-- Grunter
						5993,	-- Helboar
					},
				}),
				i(57181, {	-- Crushed Nightstalker Leg
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {
						{ "i", 57178, 1 },	-- Nightstalker Leg
					},
				}),
				i(57183, {	-- Demoniac Commixture
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {
						{ "i", 57181, 20 },	-- Crushed Nightstalker Leg
						{ "i", 57182, 2 },	-- Screecher Brain Paste
					},
				}),
				i(8244, {	-- Flawless Draenethyst Sphere
					["description"] = "A very rare zone drop. It has a higher chance to drop from Rare Creatures.",
					["crs"] = {
						7846,	-- Teremus the Devourer
						7664,	-- Razelikh the Defiler
						7668,	-- Servant of Razelikh
					},
				}),
				i(4213, {	-- Grimoire of Doom
					-- #if ANYCLASSIC
					["recipeID"] = 18540,	-- Ritual of Doom
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["crs"] = {
						12396,	-- Doomguard Commander
						8716,	-- Dreadlord
					},
				}),
				i(10593, {	-- Imperfect Draenethyst Fragment (drops from pretty much the whole zone)
					["description"] = "A rare zone drop from any creature in the zone.",
				}),
				i(57178, {	-- Nightstalker Leg
					["timeline"] = { ADDED_4_0_3 },
					["cr"] = 42337,	-- Tainted Nightstalker
				}),
				i(15727, {	-- Pattern: Heavy Scorpid Vest (RECIPE!)
					-- added to burning steps in 10.1.5
					["timeline"] = { REMOVED_4_0_3 },
					-- #if AFTER TBC
					["crs"] = {
						5981,	-- Portal Seeker
						6005,	-- Shadowsworn Thug
					},
					-- #else
					["cr"] = 5981,	-- Portal Seeker
					-- #endif
				}),
				i(8393, {	-- Scorpok Pincer
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						8301,	-- Clack the Reaver
						5988,	-- Scorpok Stinger
					},
				}),
				i(57182, {	-- Screecher Brain Paste
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {
						{ "i", 57179, 1 },	-- Screecher Brain
					},
				}),
				i(57179, {	-- Screecher Brain
					["timeline"] = { ADDED_4_0_3 },
					["cr"] = 42338,	-- Tainted Screecher
				}),
				i(8391, {	-- Snickerfang Jowl
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						8300,	-- Ravage
						5985,	-- Snickerfang Hyena
						5984,	-- Starving Snickerfang
					},
				}),
				i(57180, {	-- Tainted Hide Pouch
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {
						{ "i", 57177, 4 },	-- Tainted Hide
					},
				}),
				i(57177, {	-- Tainted Hide
					["timeline"] = { ADDED_4_0_3 },
					["cr"] = 42336,	-- Tainted Black Bear
				}),
				i(18665, {	-- The Eye of Shadow
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PRIEST },
					["crs"] = {
						12396,	-- Doomguard Commander
						8716,	-- Dreadlord
						8717,	-- Felguard Elite
						12397,	-- Lord Kazzak
						8718,	-- Manahound
					},
				}),
				i(8396, {	-- Vulture Gizzard
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						5982,	-- Black Slayer
						8299,	-- Spiteflayer
					},
				}),
			}),
		},
	}),
}));