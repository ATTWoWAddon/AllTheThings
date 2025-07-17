-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
AZEROTHIAN_ARCHIVES = createHeader({
	readable = "Azerothian Archives",
	icon = 441139,
	text = {
		en = WOWAPI_GetSpellName(419242),
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_2_5 } }, {
	n(AZEROTHIAN_ARCHIVES, {
		["maps"] = {
			THE_AZURE_SPAN,
			THALDRASZUS,
			2262,	-- Traitor's Rest
		},
		["g"] = {
			faction(FACTION_AZEROTHIAN_ARCHIVES),
			n(ACHIEVEMENTS, {
				ach(19790, {	-- The Archives Called, You Answered
					["sym"] = {{"meta_achievement",
						19685,	-- Tenured Archivist
						19786,	-- When a Rock is Just a Rock
						19791,	-- Goggle Wobble
						19787,	-- Clued In
						19789,	-- Relic Rescuer
						19788,	-- Tome Comber
						19793,	-- Finally At Rest
						19792,	-- Just One More Thing
					}},
					["g"] = {
						title(536),	-- Isles Archivist
					},
				}),
				ach(19787, {	-- Clued In
					["description"] = "Look for glowing objects on the floor during Research World Quests, or find them at The Big Dig when someone has the relevant task.",
					["providers"] = {
						{ "n", 210079 },	-- Information-Stuffed Clue
						{ "n", 206816 },	-- Information-Stuffed Clue
						{ "n", 208938 },	-- Information-Stuffed Clue
						{ "n", 207983 },	-- Information-Stuffed Clue
						{ "n", 208082 },	-- Information-Stuffed Clue
						{ "n", 208105 },	-- Information-Stuffed Clue
						{ "n", 208132 },	-- Information-Stuffed Clue
						{ "n", 208766 },	-- Information-Stuffed Clue
					},
				}),
				ach(19793, {	-- Finally At Rest
					i(213134),	-- Hap'he (PET!)
				}),
				ach(19791, {	-- Goggle Wobble
					crit(65404, {	-- Zenata danced with at Igira's Watch
						["coord"] = { 38.1, 49.8, ZARALEK_CAVERN },
						["provider"] = {"n",207763},	-- Zenata
						["_quests"] = { 78820 },	-- Technoscrying: The Mysteries of Igira's Watch
						["_noautomation"] = true,	-- points to a fake NPC
					}),
					crit(65405, {	-- Zenata danced with at Dragonskull Island
						["coord"] = { 77.1, 38.4, THE_FORBIDDEN_REACH },
						["provider"] = {"n",207311},	-- Zenata
						["_quests"] = { 78931 },	-- Technoscrying: The Mysteries of Dragonskull Island
						["_noautomation"] = true,	-- points to a fake NPC
					}),
					crit(65406, {	-- Zenata danced with at Concord Observatory
						["coord"] = { 56.3, 43.9, THE_WAKING_SHORES },
						["provider"] = {"n",204835},	-- Zenata
						["_quests"] = { 78616 },	-- Technoscrying: The Mysteries of the Concord Observatory
						["_noautomation"] = true,	-- points to a fake NPC
					}),
				}),
				ach(19792, {	-- Just One More Thing
					["description"] = "Each related Research World Quest needs to be completed 3 times to get credit for one criteria.",
					["g"] = {
						i(213133),	-- Reese (PET!)
						crit(65408, {	-- Lost Atheneum
							--["coord"] = {},
						}),
						crit(65409, {	-- The Riverbed
							["coord"] = { 69, 34.3, OHNAHRAN_PLAINS },
						}),
						crit(65410, {	-- Igira's Watch
							["_quests"] = { 76734 },	-- Research: Djaradin of Zaralek Cavern
						}),
						crit(65411, {	-- Gaze of Neltharion
							["coord"] = { 47.6, 48.6, ZARALEK_CAVERN },
						}),
						crit(65412, {	-- Concord Observatory
							--["coord"] = {},
						}),
						crit(65413, {	-- Winglord's Perch
							--["coord"] = {},
						}),
					},
				}),
				ach(19789),	-- Relic Rescuer
				ach(19685, {	-- Tenured Archiviest
					["minReputation"] = { FACTION_AZEROTHIAN_ARCHIVES, 5 },
				}),
				ach(19788),	-- Tome Comber
				ach(19786, {	-- When a Rock is Just a Rock
					["description"] = "Can be found during Excavation World Quests, look for a rock near dirt piles or geysers."
				}),
			}),
			n(DROPS, {
				i(213185, {	-- Dusty Centaur Tome
					["sym"] = {{ "select", "npcID", 208029 },{"pop"}},
				}),
				i(213175, {	-- Dusty Djaradin Tome
					["sym"] = {{ "select", "npcID", 208029 },{"pop"}},
				}),
				i(213188, {	-- Dusty Dracthyr Tome
					["sym"] = {{ "select", "npcID", 208029 },{"pop"}},
				}),
				i(213187, {	-- Dusty Drakonid Tome
					["sym"] = {{ "select", "npcID", 208029 },{"pop"}},
				}),
				i(213186, {	-- Dusty Niffen Tome
					["sym"] = {{ "select", "npcID", 208029 },{"pop"}},
				}),
				i(213190, {	-- Preserved Djaradin Tome
					["sym"] = {{ "select", "npcID", 208029 },{"pop"}},
				}),
				i(213189, {	-- Preserved Dragonkin Tome
					["sym"] = {{ "select", "npcID", 208029 },{"pop"}},
				}),
				i(213176, {	-- Preserved Isles Tome
					["sym"] = {{ "select", "npcID", 208029 },{"pop"}},
				}),
				i(213177, {	-- Immaculate Tome
					["sym"] = {{ "select", "npcID", 208029 },{"pop"}},
				}),
				---
				i(213389),	-- Ancient Centaur Diary
				i(213025),	-- Ancient Djaradin Bolt
				i(213020),	-- Ancient Drakonid Shovel
				i(213024),	-- Bloody Djaradin Mug
				i(213200),	-- Book of Horoscopes
				i(213365),	-- Carved Cave Crystal
				i(213215),	-- Carved Votive Stone
				i(213021),	-- Corked Drakonid Vial
				i(213359),	-- Cracked Drakonid Staff
				i(212687),	-- Crude Toy Ducky
				i(213357),	-- Crystal Scrying Bowl
				i(212978),	-- Dragon Painter's Palette
				i(213022),	-- Drakonid Blacksmith Hammer
				i(212976),	-- Drakonid Duck Carving
				i(212977),	-- Drakonid Sign Placard
				i(213183),	-- Makeshift Beaded Bracelet
				i(213429),	-- Meticulous Archivist's Appendix
				i(213023),	-- Oil-Drenched Djaradin Torch
				i(205223),	-- Ornamented Centaur Axe
				i(213382),	-- Partial Centaur Hunting Map
				i(212782),	-- Poorly Preserved Relic
				i(213208),	-- Pot of Pickled Ancheevies
				i(212650),	-- Pot of Tattooing Ink
				i(213204),	-- Ruby-Studded Locket
				i(212773),	-- Rusted Locket
				i(213375),	-- Satchel of Buried Valuables
				i(213192),	-- Scratched-Out List of Names
				i(212762),	-- Tarnished Horn Signet
				i(212769),	-- Tattered Wanted Poster
			}),
			n(QUESTS, {
				q(77325, {	-- To the Archives!
					["provider"] = { "o", 405593 },	-- Azerothian Archives!
					["coord"] = { 46.6, 47.5, VALDRAKKEN },
				}),
				q(77231, {	-- Technoscrying 101
					["sourceQuests"] = { 77325 },	-- To the Archives!
					["provider"] = { "n", 208355 },	-- Zenata
					["coord"] = { 61.6, 31.1, THALDRASZUS },
					["g"] = {
						i(208084),	-- Technoscryers (QI!)
					},
				}),
				q(77166, {	-- A Practical Test
					["sourceQuests"] = { 77231 },	-- Technoscrying 101
					["provider"] = { "n", 208355 },	-- Zenata
					["coord"] = { 61.2, 30.7, THALDRASZUS },
					["g"] = {
						i(202247),	-- Technoscryers (QI!)
					},
				}),
				q(77176, {	-- I Can See Through Time!
					["sourceQuests"] = { 77166 },	-- A Practical Test
					["provider"] = { "n", 208355 },	-- Zenata
					["coord"] = { 61.7, 29.8, THALDRASZUS },
					["g"] = {
						i(202247),	-- Technoscryers (QI!)
					},
				}),
				q(77434, {	-- Technoscrying: Observatory
					["sourceQuests"] = { 77176 },	-- I Can See Through Time!
					["provider"] = { "n", 208355 },	-- Zenata
					["coord"] = { 61.7, 29.8, THALDRASZUS },
				}),
				q(75729, {	-- Attune to the Observer
					["sourceQuests"] = { 77434 },	-- Technoscrying: Observatory
					["provider"] = { "n", 204835 },	-- Zenata
					["coord"] = { 56.3, 43.9, THE_WAKING_SHORES },
					["g"] = {
						i(202247),	-- Technoscryers (QI!)
					},
				}),
				q(75867, {	-- A Link to the Past
					["sourceQuests"] = { 75729 },	-- Attune to the Observer
					["provider"] = { "n", 204835 },	-- Zenata
					["coord"] = { 56.3, 43.9, THE_WAKING_SHORES },
					["g"] = {
						--i(202247),	-- Technoscryers (QI!) (TODO: seems like qi didn't get removed from previous quest?)
					},
				}),
				q(75868, {	-- A Window into the Future
					["sourceQuests"] = { 75867 },	-- A Link to the Past
					["provider"] = { "n", 204835 },	-- Zenata
					["coord"] = { 56.3, 43.9, THE_WAKING_SHORES },
					["g"] = {
						o(404849, {	-- Dreadsquall Nest
							i(205455),	-- Telescope Lens (QI!)
						}),
					},
				}),
				q(77267, {	-- Excavation 101
					["sourceQuests"] = { 77325 },	-- To the Archives!
					["provider"] = { "n", 208614 },	-- Roska Rocktooth
					["coord"] = { 61.5, 31.1, THALDRASZUS },
					["g"] = {
						i(210956),	-- Archivist's Fire Totem (QI!)
						i(205224),	-- Just a Rock
					},
				}),
				q(78762, {	-- Your First Find
					["sourceQuests"] = { 77267 },	-- Excavation 101
					["provider"] = { "n", 208614 },	-- Roska Rocktooth
					["coord"] = { 61.3, 30.2, THALDRASZUS },
				}),
				q(77268, {	-- Hands-On Experience
					["sourceQuests"] = { 78762 },	-- Your First Find
					["provider"] = { "n", 208614 },	-- Roska Rocktooth
					["coord"] = { 61.3, 30.2, THALDRASZUS },
				}),
				q(77433, {	-- Excavation: Riverbed
					["sourceQuests"] = { 77268 },	-- Hands-On Experience
					["provider"] = { "n", 208614 },	-- Roska Rocktooth
					["coord"] = { 61.5, 30, THALDRASZUS },
				}),
				q(75493, {	-- Surveying the Riverbed
					["sourceQuests"] = { 77433 },	-- Excavation: Riverbed
					["provider"] = { "n", 204094 },	-- Roska Rocktooth
					["coord"] = { 67.3, 47.5, OHNAHRAN_PLAINS },
					["groups"] = {
						i(210435),	-- Archivist's Water Totem
					},
				}),
				q(75518, {	-- The Body on the Banks
					["sourceQuests"] = { 75493 },	-- Surveying the Riverbed
					["provider"] = { "n", 204245 },	-- Ancient Centaur Corpse
					["coord"] = { 67.3, 47.5, OHNAHRAN_PLAINS },
				}),
				q(75603, {	-- Do Rites by Her
					["sourceQuests"] = { 75518 },	-- The Body on the Banks
					["provider"] = { "n", 204643 },	-- Roska Rocktooth
					["coord"] = { 66.4, 46, OHNAHRAN_PLAINS },
				}),
				q(77327, {	-- Nirobin and the Office
					["sourceQuests"] = {
						75603,	-- Do Rites by Her
						75868,	-- A Window into the Future
					},
					["providers"] = {
						{ "n", 204643 },	-- Roska Rocktooth
						{ "n", 204835 },	-- Zenata
					},
					["coords"] = {
						{ 66.4, 46, OHNAHRAN_PLAINS },
						{ 56.3, 43.9, THE_WAKING_SHORES },
					},
				}),
				q(76217, {	-- Living History
					["sourceQuests"] = { 77327 },	-- Nirobin and the Office
					["provider"] = { "n", 205967 },	-- Nirobin
					["coord"] = { 58.4, 36.8, THALDRASZUS },
				}),
				q(76241, {	-- Lab Partners with a Squirrel
					["sourceQuests"] = { 76217 },	-- Living History
					["provider"] = { "n", 205967 },	-- Nirobin
					["coord"] = { 58.4, 36.8, THALDRASZUS },
				}),
				q(76242, {	-- A Research Thesis Worth Publishing
					["sourceQuests"] = { 76241 },	-- Lab Partners with a Squirrel
					["provider"] = { "n", 205975 },	-- Reese
					["coord"] = { 53.5, 47.5, THE_FORBIDDEN_REACH },
				}),
				q(77328, {	-- Back to Headquarters!
					["sourceQuests"] = { 76242 },	-- A Research Thesis Worth Publishing
					["provider"] = { "n", 205967 },	-- Nirobin
					["coord"] = { 58.4, 36.8, THALDRASZUS },
				}),
				q(79223, {	-- Finally, An Archivist!
					["sourceQuests"] = { 77328 },	-- Back to Headquarters!
					["provider"] = { "n", 206107 },	-- Eadweard Dalyngrigge
					["coord"] = { 61.5, 31.2, THALDRASZUS },
					["g"] = {
						--spell(431591),	-- Azerothian Archives: Riverbed, Concord Observatory, and Lost Anethenum Sites (WQ unlock)
						i(208451, {	-- Archivist's Buckled Cap
							["provider"] = { "i", 212371 },	-- Azerothian Archivist Initiation Token
						}),
						i(212371),	-- Azerothian Archivist Initiation Token (QI!)
					},
				}),
				q(77483, {	-- Technoscrying: Dragonskull Island
					["sourceQuests"] = { 79223 },	-- Finally, An Archivist!
					["provider"] = { "n", 208355 },	-- Zenata
					["coord"] = { 61.5, 31.1, THALDRASZUS },
				}),
				q(76448, {	-- The Fate of Scalecommander Abereth
					["sourceQuests"] = { 77483 },	-- Technoscrying: Dragonskull Island
					["provider"] = { "n", 207311 },	-- Zenata
					["coord"] = { 77.1, 38.4, THE_FORBIDDEN_REACH },
				}),
				q(76557, {	-- Without Honor
					["sourceQuests"] = { 76448 },	-- The Fate of Scalecommander Abereth
					["provider"] = { "n", 207311 },	-- Zenata
					["coord"] = { 77.1, 38.4, THE_FORBIDDEN_REACH },
				}),
				q(77415, {	-- The Hidden Hand
					["sourceQuests"] = { 76557 },	-- Without Honor
					["provider"] = { "n", 207311 },	-- Zenata
					["coord"] = { 77.1, 38.4, THE_FORBIDDEN_REACH },
					["g"] = {
						o(405943, {	-- Drakonid Scroll Case
							i(208202),	-- Neltharion Agent Instructions (QI!)
						}),
						--spell(431593),	-- Azerothian Archives: Dragonskull Island, Forbidden Reach Site (WQ unlock)
					},
				}),
				q(77484, {	-- Technoscrying: Igira's Watch
					["sourceQuests"] = { 79223 },	-- Finally, An Archivist!
					["provider"] = { "n", 208355 },	-- Zenata
					["coord"] = { 61.5, 31.1, THALDRASZUS },
				}),
				q(76564, {	-- The Tools of the Dragonkillers
					["sourceQuests"] = { 77484 },	-- Technoscrying: Igira's Watch
					["provider"] = { "n", 207763 },	-- Zenata
					["coord"] = { 38.1, 49.8, ZARALEK_CAVERN },
				}),
				q(76576, {	-- An Unlikely Proposal
					["sourceQuests"] = { 76564 },	-- The Tools of the Dragonkillers
					["provider"] = { "n", 207763 },	-- Zenata
					["coord"] = { 38.1, 49.8, ZARALEK_CAVERN },
				}),
				q(77425, {	-- The Scale of it All
					["sourceQuests"] = { 76576 },	-- An Unlikely Proposal
					["provider"] = { "n", 207763 },	-- Zenata
					["coord"] = { 38.1, 49.8, ZARALEK_CAVERN },
					["g"] = {
						--spell(431594),	-- Azerothian Archives: Igira's Watch, Zaralek Cavern Site (WQ unlock)
						o(405996, {	-- Ancient Zaqali Trade-bond Tablet
							["coord"] = { 42, 35, ZARALEK_CAVERN },
							["groups"] = {
								i(208228),	-- Ancient Trade-bonded Tablet (QI!)
							},
						})
					},
				}),
				q(77486, {	-- Excavation: Gaze of Neltharion
					["sourceQuests"] = { 79223 },	-- Finally, An Archivist!
					["provider"] = { "n", 208614 },	-- Roska Rocktooth
					["coord"] = { 61.5, 31.1, THALDRASZUS },
				}),
				q(76026, {	-- Surveying the Tower
					["sourceQuests"] = { 77486 },	-- Excavation: Gaze of Neltharion
					["provider"] = { "n", 205413 },	-- Roska Rocktooth
					["coord"] = { 48.6, 48.3, ZARALEK_CAVERN },
					["g"] = {
						i(210834),	-- Archivist's Earth Totem (QI!)
					},
				}),
				q(76032, {	-- Hidden in the Midden
					["sourceQuests"] = { 76026 },	-- Surveying the Tower
					["provider"] = { "n", 207931 },	-- Defaced Dragon Statue
					["coord"] = { 47.5, 48.5, ZARALEK_CAVERN },
				}),
				q(75604, {	-- Antiquated Antics
					["sourceQuests"] = { 76032 },	-- Hidden in the Midden
					["provider"] = { "n", 205413 },	-- Roska Rocktooth (TODO: unsure, need to recheck npcID)
					["coord"] = { 47.6, 48.6, ZARALEK_CAVERN },
					--["g"] = {
					--	spell(431595),	-- Azerothian Archives: Gaze of Neltharion, Zaralek Cavern Site (WQ unlock)
					--},
				}),
				q(77487, {	-- Excavation: Winglord's Perch
					["sourceQuests"] = { 79223 },	-- Finally, An Archivist!
					["provider"] = { "n", 208614 },	-- Roska Rocktooth
					["coord"] = { 61.5, 31.1, THALDRASZUS },
				}),
				q(77100, {	-- Surveying the Cliffside
					["sourceQuests"] = { 77487 },	-- Excavation: Winglord's Perch
					["provider"] = { "n", 208362 },	-- Roska Rocktooth
					["coord"] = { 17.2, 16.3, THE_FORBIDDEN_REACH },
					["g"] = {
						i(210778),	-- Archivist's Wind Totem (QI!)
					},
				}),
				q(77151, {	-- The Cache in the Crag
					["sourceQuests"] = { 77100 },	-- Surveying the Cliffside
					["provider"] = { "n", 208402 },	-- Intact Dragonkin Cache
					["coord"] = { 14.0, 14.7, THE_FORBIDDEN_REACH },
				}),
				q(77154, {	-- A Taste of the Past
					["sourceQuests"] = { 77151 },	-- The Cache in the Crag
					["provider"] = { "n", 208362 },	-- Roska Rocktooth
					["coord"] = { 14.0, 14.7, THE_FORBIDDEN_REACH },
					--["g"] = {
					--	spell(431592),	-- Azerothian Archives: Winglord's Perch, Forbidden Reach Site (WQ unlock)
					--},
				}),
				q(79231, {	-- Back to Headquarters! Again!
					["sourceQuests"] = { 75604 },	-- Antiquated Antics (TODO: may be it require all 4 quests chain completed, so he can spawn with different coords? Or different qID?)
					["provider"] = { "n", 208055 },	-- Roska Rocktooth
					["coord"] = { 48.6, 48.3, ZARALEK_CAVERN },
				}),
				q(77331, {	-- Graduation Day
					["sourceQuests"] = { 79231 },	-- Back to Headquarters! Again!
					["provider"] = { "n", 206107 },	-- Eadweard Dalyngrigge
					["coord"] = { 61.5, 31.2, THALDRASZUS },
				}),
				--
				q(79226, {	-- The Big Dig: Traitor's Rest
					["providers"] = {
						{ "n", 206107 },	-- Eadweard Dalyngrigge
						{ "n", 209134 },	-- Eadweard Dalyngrigge
					},
					["coords"] = {
						{ 61.6, 31.3, THALDRASZUS },
						{ 27, 46.5, THE_AZURE_SPAN },
						{ 55.3, 51.4, 2262 },	-- Traitor's Rest
					},
					["isWeekly"] = true,
					["g"] = {
						currency(2819),	-- Archivist Knowledge
					},
				}),
				q(77760, {	-- Curious Find: Dragonhorn Flute
					["provider"] = { "i", 208733 },	-- Dragonhorn Flute (QI!)
				}),
				q(77766, {	-- Curious Find: Hole-Punched Bakar Tooth
					["provider"] = { "i", 208737 },	-- Hole-Punched Bakar Tooth (QI!)
				}),
				q(77763, {	-- Curious Find: Waterlogged Ledger
					["provider"] = { "i", 208734 },	-- Waterlogged Ledger (QI!)
				}),
			}),
			n(RARES, {
				n(208029, {	-- Doomshadow
					["coord"] = { 27.75, 46.20, THE_AZURE_SPAN },
					["g"] = {
						i(212645),	-- Clayscale Hornstrider (MOUNT!)
						i(212642),	-- Excavator's Boots
						i(212692),	-- Excavator's Dusky Fedora
						i(212639),	-- Excavator's Glovelettes
						i(212793),	-- Excavator's Pack of Findings
						i(212641),	-- Excavator's Rugged Pants
						i(212640),	-- Excavator's Trusty Satchel
						i(212640),	-- Excavator's Utility Belt
						i(212638),	-- Excavator's Work Shirt
						i(208737),	-- Hole-Punched Bakar Tooth (QI!)
						i(208733),	-- Dragonhorn Flute (QI!)
						i(208734),	-- Waterlogged Ledger (QI!)
					},
				}),
			}),
			n(REWARDS, {
				currency(2657),	-- Mysterious Fragment
			}),
			n(VENDORS, {
				n(209192, {	-- Provisioner Aristta
					["coord"] = { 61.4, 31.4, THALDRASZUS },
					["g"] = {
						i(213536, {	-- Priceless Artifact
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 1000 } },
						}),
						i(212635, {	-- Historian's Utility Belt (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 5000 } },
						}),
						i(212634, {	-- Historian's Fingerless Gloves (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 5000 } },
						}),
						i(212637, {	-- Historian's Striders (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 5000 } },
						}),
						i(212636, {	-- Historian's Trousers (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 7000 } },
						}),
						i(212633, {	-- Historian's Fitted Vest (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 7000 } },
						}),
						i(213276, {	-- Archivist's Magnifying Mace (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(213275, {	-- Archivist's Rockpuller (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(213274, {	-- Archivist's Pathfinder (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(212870, {	-- Archivist's Stone Chisel (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208459, {	-- Archivist's Improvised Cudgetl (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208458, {	-- Archivist's Extravagant Lantern (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(212941, {	-- Archivist's "Light Touch" (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208457, {	-- Archivist's Spelunking Torch (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208455, {	-- Archivist's Sturdy Hook (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208454, {	-- Archivist's Mining Pick (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208453, {	-- Archivist's Super Scooper (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208450, {	-- Coiled Archivist's Rope (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 10000 } },
						}),
						i(208547, {	-- Archivist's Reading Spectacles (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 12000 } },
						}),
						i(208546, {	-- Archivist's Rose-Tinted Glasses (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 12000 } },
						}),
						i(208456, {	-- Archivist's Elegant Bag (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 15000 } },
						}),
						i(212794, {	-- Historian's Hefty Habersack (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 15000 } },
						}),
						i(208452, {	-- Historian's Dapper Cap (COSMETIC!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 15000 } },
						}),
						i(192796, {	-- Explorer's Stonehide Packbeast (MOUNT!)
							["cost"] = { { "c", MYSTERIOUS_FRAGMENT, 20000 } },
						}),
					},
				}),
			}),
			n(WORLD_QUESTS, {
				["sourceQuests"] = {
					71232,	-- Renown of the Dragon Isles
					DF_ACCOUNT_CAMPAIGN_QUEST,
					--79996,	-- Dragonskull Island, Forbidden Reach Site
					--79995,	-- Winglord's Perch, Forbidden Reach Site
					--79992,	-- Riverbed, Concord Observatory, and Lost Anethenum Sites
					--79997,	-- Igira's Watch, Zaralek Cavern Site
					--79994,	-- Gaze of Neltharion, Zaralek Cavern Site
				},
				["g"] = sharedData({ ["isWorldQuest"] = true, }, {
					q(78662, {	-- Excavation: A Cliffside Full of Caches
						["coord"] = { 14.9, 18.2, THE_FORBIDDEN_REACH },
						["g"] = {
							i(205224),	-- Just a Rock
						},
					}),
					q(78645, {	-- Excavation: Buried in the Riverbed
						["coord"] = { 65.9, 45.7, OHNAHRAN_PLAINS },
						["g"] = {
							i(205224),	-- Just a Rock
						},
					}),
					q(78663, {	-- Excavation: Scattered Around the Tower
						["coord"] = { 47.9, 48.7, ZARALEK_CAVERN },
						["g"] = {
							i(205224),	-- Just a Rock
						},
					}),
					q(78649, {	-- Excavation: Something Big Beneath the Riverbed
						["coord"] = { 66.4, 46.1, OHNAHRAN_PLAINS },
						["g"] = {
							i(205224),	-- Just a Rock
						},
					}),
					q(78739, {	-- Excavation: The Trove in the Tower
						["coord"] = { 46.9, 48.8, ZARALEK_CAVERN },
						["g"] = {
							i(205224),	-- Just a Rock
						},
					}),
					q(78661, {	-- Excavation: Treasures in the Cliffside
						["coord"] = { 17.1, 16.4, THE_FORBIDDEN_REACH },
						["g"] = {
							i(205224),	-- Just a Rock
						},
					}),
					q(76587, {	-- Research: Centaur of Ohn'ahran Plains
						["coord"] = { 69, 34.3, OHNAHRAN_PLAINS },
					}),
					q(76734, {	-- Research: Djaradin of Zaralek Cavern
						["coord"] = { 44.1, 54.1, ZARALEK_CAVERN },
					}),
					q(76911, {	-- Research: Drakonid of the Waking Shores
						["coord"] = { 56.8, 45.4, THE_WAKING_SHORES },
					}),
					q(76739, {	-- Research: Niffen of Zaralek Cavern
						["coord"] = { 47.6, 48.6, ZARALEK_CAVERN },
					}),
					q(77424, {	-- Research: Dracthyr of Forbidden Reach
						["coord"] = { 53.9, 36.7, THE_FORBIDDEN_REACH },
					}),
					q(77362, {	-- Research: Drakonid of Forbidden Reach
						["coord"] = { 18.2, 13.2, THE_FORBIDDEN_REACH },
					}),
					q(78931, {	-- Technoscrying: The Mysteries of Dragonskull Island
						["coord"] = { 76.8, 38.0, THE_FORBIDDEN_REACH },
					}),
					q(78616, {	-- Technoscrying: The Mysteries of the Concord Observatory
						["coord"] = { 55, 46.2, THE_WAKING_SHORES },
					}),
					q(78820, {	-- Technoscrying: The Mysteries of Igira's Watch
						["coord"] = { 38.1, 49.8, ZARALEK_CAVERN },
					}),
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {
	n(AZEROTHIAN_ARCHIVES, {
		n(ACHIEVEMENTS, {
			-- "Just One More Thing" trackers
			q(79601),	-- Lost Atheneum first completion
			q(79600),	-- Lost Atheneum second completion
			-- q(79599),	-- Lost Atheneum third completion
			q(79596),	-- The Riverbed first completion
			q(79597),	-- The Riverbed second completion
			-- q(79598),	-- The Riverbed third completion
			q(79604),	-- Igira's Watch first completion
			q(79603),	-- Igira's Watch second completion
			-- q(79602),	-- Igira's Watch third completion
			q(79607),	-- Gaze of Neltharion first completion
			q(79606),	-- Gaze of Neltharion second completion
			-- q(79605),	-- Gaze of Neltharion third completion
			q(79610),	-- Concord Observatory first completion
			q(79609),	-- Concord Observatory second completion
			-- q(79608),	-- Concord Observatory third completion
			q(79613),	-- Winglord's Perch first completion
			q(79612),	-- Winglord's Perch second completion
			-- q(79611),	-- Winglord's Perch third completion
		}),
		n(QUESTS, {
			q(79992),	-- After completing 'Finally, An Archivist' (questID 79223) (spellID 436735) (WQ unlock - Riverbed, Concord Observatory, and Lost Anethenum Sites)
			q(79996),	-- After completing 'The Hidden Hand' (questID 77415) (spellID 436777) (WQ unlock - Dragonskull Island, Forbidden Reach Site)
			q(79995),	-- After completing 'A Taste of the Past' (questID 77154) (spellID 436768) (WQ unlock - Winglord's Perch, Forbidden Reach Site)
			q(79997),	-- After completing 'The Scale of it All' (questID 77425) (spellID 436778) (WQ unlock - Igira's Watch, Zaralek Cavern Site)
			q(79994),	-- After completing 'Antiquated Antics' (questID 75604) (spellID 436766) (WQ unlock - Gaze of Neltharion, Zaralek Cavern Site)
			--didn't pop on 2nd week, probably removed or attached only for certain WQs?
			q(79661),	-- After completing ZC world quest for Azerothian Archive
			q(79662),	-- After completing Ohn'ahran Plains world quest for Azerothian Archive
			q(79663),	-- After completing 2nd ZC world quest for Azerothian Archive
			--weekly 'wrapper'
			--seems like constantly fire, but other two is different per week?
			q(79664),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434203)
			--a (spellID 434934 (434928 & 434198))
			q(79616),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434198)
			q(79670),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434928)
			--b (spellID 434936 (434929 & 434197))
			q(79617),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434197)
			q(79671),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434929) (fire same quest 2 times?)
			--c (spellID 434937 (434930 & 434199))
			q(79618),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434199)
			q(79672),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434930)
			--d (spellID 434938 (434931 & 434200))
			q(79619),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434200)
			q(79674),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434931)
			--e (spellID 434939 (434932 & 434201))
			q(79620),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434201)
			q(79675),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434932)
			--f (spellID 434940 (434750 (this spellID abandon qIDs 79616 - 79621) & 434933))
			--q(79621),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434750)
			q(79684),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434750)
			--q(79676),	-- Completes alongside the weekly Azerothian Archive quest (spellID 434933)
			-- TODO: figure out what 2nd qids are for and what this 2 spells is doing (rotation, may be?)
			-- 434945 (434203 & 434944 (this spellID didn't have any attached qid to it atm))
			-- odd 434203 (434196 (missing in wowhead db?) & 434198 & 434197 & 434199 & 434200 & 434201 & 434202 (this spellID didn't have any attached qid to it atm))
		}),
	}),
})));