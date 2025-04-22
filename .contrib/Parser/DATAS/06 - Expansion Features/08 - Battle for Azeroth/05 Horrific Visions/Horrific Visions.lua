-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
HORRIFIC_VISIONS = createHeader({
	readable = "Horrific Visions",
	icon = 609893,
	text = {
		en = [[~SPLASH_BATTLEFORAZEROTH_8_3_0_FEATURE1_TITLE]],
	},
});
LOST_AREA = createHeader({
	readable = "Lost Area",
	icon = 537021,
	text = {
		en = "Lost Area",
		fr = "Zone Perdue",
		ru = "Захваченная область",
		cn = "失落区域",
	},
});
CORRUPTED_AREA = createHeader({
	readable = "Corrupted Area",
	icon = 136202,
	text = {
		en = "Corrupted Area",
		fr = "Zone Corrompue",
		ru = "Заражённая область",
		cn = "腐化区域",
	},
});
local HORRIFIC_ORGRIMMAR = 1469;
local HORRIFIC_STORMWIND = 1470;
local SPARK_OF_UNWAVERING_STRENGTH = 174287;
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_3_0 } }, {
	n(HORRIFIC_VISIONS, {
		["maps"] = {
			REPAIRED_CHAMBER_OF_HEART,
		},
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(14173),	-- A Mountain of Mementos
				ach(14172),	-- A Monumental Amount of Mementos
				ach(14171),	-- Momento Mori
				ach(14170),	-- Thanks For The Mementos
				ach(14162),	-- Horrific Masquerade
				ach(14140, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 } }, {	-- Mad World
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						14141,	-- Solo Nightmares - Stormwind
						14142,	-- Solo Nightmares - Orgrimmar
					}},
					["g"] = { title(419) },	-- <Name>, the Faceless One
				})),
				ach(14143, {	-- Reeking of Visions
					["sym"] = {{"meta_achievement",
						14065,	-- The Even More Horrific Vision of Orgrimmar
						14064,	-- The Even More Horrific Vision of Stormwind
					}},
					["g"] = { i(174463) },	-- Reek (PET!)
				}),
				ach(14169),	-- Symphony of Masks
				ach(14165),	-- Masked Soliloquy
				ach(14166),	-- Masked Duet
				ach(14167),	-- Masked Trio
				ach(14168),	-- Masked Quartet
				ach(13994, {	-- Through the Depths of Visions
					["sym"] = {{"meta_achievement",
						14067,	-- The Most Horrific Vision of Orgrimmar
						14066,	-- The Most Horrific Vision of Stormwind
						14060,	-- Unwavering Resolve
						14061,	-- We Have the Technology
					}},
					["g"] = { i(174654) },	-- Black Serpent of N'Zoth (MOUNT!)
				}),
				ach(14060),	-- Unwavering Resolve
				ach(14061),	-- We Have the Technology
			}),
			n(AZERITE_ESSENCES, sharedData({
				["cost"] = {{ "i", SPARK_OF_UNWAVERING_STRENGTH, 45 }},
			}, {
				i(173310),	-- Manual of Unbalanced Tactics [Rank 3]
				i(173290),	-- Quickening Azerite Geode [Rank 3]
				i(168938),	-- Ward of Mutual Aid [Rank 3]
			})),
			n(QUESTS, {
				["description"] = "Mogs are looted at the end from a full clear with that specific mask on.",
				["maps"] = {
					HORRIFIC_ORGRIMMAR,
					HORRIFIC_STORMWIND,
				},
				["g"] = {
					q(58314, {	-- Mask of the Burned Bridge
						["description"] = "Obtained from completing the Valley of Wisdom objective with one mask active.",
						["provider"] = { "i", 174083 },	-- Faceless Mask of the Burned Bridge
						["g"] = {
							i(174342),	-- Mask of the Burned Bridge
						},
					}),
					q(58297, {	-- Mask of the Daredevil
						["description"] = "Obtained from completing the Valley of Honor objective with one mask active.",
						["provider"] = { "i", 174082 },	-- Faceless Mask of the Daredevil
						["g"] = {
							i(173955),	-- Mask of the Daredevil
						},
					}),
					q(58316, {	-- Mask of the Dark Imagination
						["description"] = "Obtained from completing the Mage Quarter objective with one mask active.",
						["provider"] = { "i", 174081 },	-- Faceless Mask of the Dark Imagination
						["g"] = {
							i(173953),	-- Mask of the Dark Imagination
						},
					}),
					q(58318, {	-- Mask of the Long Night
						["description"] = "Obtained from a full clear of either vision.",
						["provider"] = { "i", 174080 },	-- Faceless Mask of the Long Night
						["g"] = {
							i(172952),	-- Mask of the Long Night
						},
					}),
					q(58317, {	-- Mask of the Pained
						["description"] = "Obtained from completing the Old Town objective with one mask active.",
						["provider"] = { "i", 174079 },	-- Faceless Mask of the Pained
						["g"] = {
							i(173524),	-- Mask of the Pained
						},
					}),
					q(57841, {	-- Main Objective Only
						["name"] = "Main Objective Only",
						["isWeekly"] = true,
					}),
					q(57845, {	-- Main Objective + 2 bonus
						["name"] = "Main Objective + 2 bonus",
						["isWeekly"] = true,
					}),
					q(57842, {	-- Full Clear
						["name"] = "Full Clear",
						["isWeekly"] = true,
					}),
					q(57846, {	-- Full Clear + 1 Mask
						["name"] = "Full Clear + 1 Mask",
						["isWeekly"] = true,
					}),
					q(57843, {	-- Full Clear + 2 Masks
						["name"] = "Full Clear + 2 Masks",
						["isWeekly"] = true,
					}),
					q(57847, {	-- Full Clear + 3 Masks
						["name"] = "Full Clear + 3 Masks",
						["isWeekly"] = true,
					}),
					q(57844, {	-- Full Clear + 4 Masks
						["name"] = "Full Clear + 4 Masks",
						["isWeekly"] = true,
					}),
					q(57848, {	-- Full Clear + 5 Masks
						["name"] = "Full Clear + 5 Masks",
						["isWeekly"] = true,
					}),
					q(59834, {	-- Weekly Horrific Core
						["name"] = "Weekly Horrific Core completion",
						["isWeekly"] = true,
					}),
				},
			}),
			n(SCENARIO_COMPLETION, {
				["description"] = "You can only receive each tier of gear rewards once per week.  Ex. Completing multiple 5 mask runs rewards the next lower tier reward each time.  After all tier rewards are looted for the week no more gear is given.",
				["crs"] = {
					152718,	-- Alleria Windrunner
					152089,	-- Thrall
				},
				["g"] = {
					i(173308),	-- Mark of Boistrous Duty [Rank 1]
					i(173288),	-- Overflowing Azerite Geode [Rank 1]
					i(168936),	-- Ward of Unwavering Hope [Rank 1]
					i(174461),	-- Anomalus (PET!)
					i(174080),	-- Faceless Mask of the Long Night (QI!)
					i(174287),	-- Sparks of Unwavering Strength
					i(175054),	-- Melee Veterans Contract
					i(175052),	-- Mounted Veterans Contract
					i(175053),	-- Ranged Veterans Contract
					i(174891),	-- Veteran Rajani Spakcallers Contract
					i(174890),	-- Veteran Ramkahen Lancers Contract
					i(175056),	-- Waterborne Veterans Contract
					i(175062),	-- Malefic Core
					n(LOST_AREA, {
						i(173289),	-- Pulsing Azerite Geode [Rank 2]
						i(168937),	-- Ward of Reciprocation [Rank 2]
						i(173309),	-- Water Dancer's Technique [Rank 2]
					}),
				},
			}),
			n(RARES, {
				["maps"] = {
					HORRIFIC_ORGRIMMAR,
					HORRIFIC_STORMWIND,
				},
				["g"] = {
					n(160708, {	-- Mail Muncher
						["description"] = "Has a chance to spawn from Mailboxes in either vision.",
						["coords"] = {
							{ 40.0, 78.4, HORRIFIC_ORGRIMMAR },
							{ 52.8, 76.2, HORRIFIC_ORGRIMMAR },
							{ 60.2, 51.0, HORRIFIC_ORGRIMMAR },
							{ 67.6, 39.2, HORRIFIC_ORGRIMMAR },
							{ 39.2, 49.1, HORRIFIC_ORGRIMMAR },
							{ 61.8, 75.6, HORRIFIC_STORMWIND },
							{ 54.8, 57.8, HORRIFIC_STORMWIND },
							{ 62.0, 30.6, HORRIFIC_STORMWIND },
							{ 49.7, 87.0, HORRIFIC_STORMWIND },
							{ 75.7, 64.6, HORRIFIC_STORMWIND },
						},
						["g"] = { i(174653) },	-- Mail Muncher (MOUNT!)
					}),
				},
			}),
			header(HEADERS.Achievement, 14063, {	-- Horrific Vision of Orgrimmar
				["maps"] = { HORRIFIC_ORGRIMMAR },
				["g"] = {
					n(ACHIEVEMENTS, {
						ach(14063),	-- Horrific Vision of Orgrimmar
						ach(14065),	-- The Even More Horrific Vision of Orgrimmar
						ach(14067),	-- The Most Horrific Vision of Orgrimmar
						ach(14142, {	-- Solo Nightmares - Orgrimmar
							["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 },
						}),
					}),
					n(CORRUPTED_AREA, {
						n(153244, {	-- Oblivion Elemental
							["coord"] = { 39.8, 79.2, HORRIFIC_ORGRIMMAR },
							["g"] = {
								i(173726),	-- Void-Scarred Toad (PET!)
								i(174924),	-- Void-Touched Souvenir Totem (TOY!)
							},
						}),
						o(342098, {	-- Coifcurl's Close Shave Kit
							["description"] = "Requires entering the Valley of Spirits. The chest is inside the barber shop on the right.",
							["coord"] = { 40.5, 60.3, HORRIFIC_ORGRIMMAR },
							["g"] = { i(174920) },	-- Coifcurl's Close Shave Kit (TOY!)
						}),
					}),
					n(LOST_AREA, {
						n(155098, {	-- Rexxar
							["coord"] = { 64.6, 32.8, HORRIFIC_ORGRIMMAR },
							["g"] = {
								i(174457),	-- C'Thuffer (PET!)
								i(174082),	-- Faceless Mask of the Daredevil (QI!)
								i(174855, {	-- Bow of Calamity
									["description"] = "Has only been received on a Hunter character (so far).\nCan be traded to party members within the same Vision.",
								}),
							},
						}),
						n(152874, {	-- Vez'okk the Lightless
							["coord"] = { 45.6, 48.6, HORRIFIC_ORGRIMMAR },
							["g"] = {
								i(174083),	-- Faceless Mask of the Burned Bridge (QI!)
							},
						}),
					}),
					n(152089, {	-- Thrall
						["coord"] = { 48.8, 71.2, HORRIFIC_ORGRIMMAR },
						["g"] = {
							i(174646),	-- Void-Scarred Pup (PET!)
						},
					}),
				},
			}),
			header(HEADERS.Achievement, 14062, {	-- Horrific Vision of Stormwind
				["maps"] = { HORRIFIC_STORMWIND },
				["g"] = {
					n(ACHIEVEMENTS, {
						ach(14062),	-- Horrific Vision of Stormwind
						ach(14064),	-- The Even More Horrific Vision of Stormwind
						ach(14066),	-- The Most Horrific Vision of Stormwind
						ach(14141, {	-- Solo Nightmares - Stormwind
							["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 },
						}),
					}),
					n(158284, {	-- Craggle Wobbletop <Toys and Novelties>
						["description"] = "Craggle pats around outside of the Trade District, so selecting a Corrupted or Lost Area is not required.  You need to kill the shielding robot to damage him, which requires using player CC or dropping a Toy Train Set in Craggle's path and pulling the bot while he's distracted.",
						["coords"] = {
							{ 58.4, 77.2, HORRIFIC_STORMWIND },
							{ 56.6, 67.6, HORRIFIC_STORMWIND },
							{ 62.6, 61.2, HORRIFIC_STORMWIND },
							{ 69.6, 68.2, HORRIFIC_STORMWIND },
						},
						["g"] = { i(174926) },	-- Overly Sensitive Void Spectacles (TOY!)
					}),
					i(174928, {	-- Rotten Apple (TOY!)
						["description"] = "Repeatedly click the bouncing apples at the coordinates provided.  Supposedly, clicking them 100 times will guarantee that the toy is in your final chest, but any click should give you a chance if you're running short on time.",
						["coords"] = {
							{ 57.0, 55.0, HORRIFIC_STORMWIND },
							{ 60.0, 58.0, HORRIFIC_STORMWIND },
							{ 65.0, 62.0, HORRIFIC_STORMWIND },
							{ 72.0, 67.0, HORRIFIC_STORMWIND },
							{ 67.0, 51.0, HORRIFIC_STORMWIND },
						},
					}),
					o(343698, {	-- Void-Touched Skull
						["description"] = "Behind the orphanage in Cathedral Square.  It's on the ground next to some crates, is very small, and doesn't have the typical interactable sparkle.",
						["coord"] = { 58.9, 52.9, HORRIFIC_STORMWIND },
						["g"] = { i(174921) },	-- Void-Touched Skull (TOY!)
					}),
					n(CORRUPTED_AREA, {
						n(156577, {	-- Therum Deepforge
							["coord"] = { 67.6, 43.2, HORRIFIC_STORMWIND },
							["g"] = {
								i(174460),	-- Void-Scarred Rat (PET!)
							},
						}),
					}),
					n(LOST_AREA, {
						n(158157, {	-- Overlord Mathias Shaw
							["coord"] = { 78.8, 65.4, HORRIFIC_STORMWIND },
							["g"] = {
								i(174932),	-- Illusion: Void Edge (ILLUSION!)
								i(174079),	-- Faceless Mask of the Pained (QI!)
							},
						}),
						n(158035, {	-- Magister Umbric
							["coord"] = { 50.0, 86.4, HORRIFIC_STORMWIND },
							["g"] = {
								i(174458),	-- Void-Scarred Hare (PET!)
								i(174081),	-- Faceless Mask of the Dark Imagination (QI!)
							},
						}),
					}),
					n(152718, {	-- Alleria Windrunner
						["coord"] = { 50.4, 47.6, HORRIFIC_STORMWIND },
						["g"] = {
							i(174459),	-- Void-Scarred Cat (PET!)
						},
					}),
				},
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0 } }, {
	n(HORRIFIC_VISIONS, {
		m(HORRIFIC_ORGRIMMAR, {
			q(58581),	-- first horrific vision cleared as horde
			q(57039),	-- Valley of Spirits cleansed (Orgrimmar)
			q(58896),	-- Valley of Spirits cleansed (Orgrimmar) - probably controls activation of the quick-navigation back to the start?
			q(57029),	-- Valley of Spirits cleansed (Orgrimmar) - probably controls eligibility for looting bonus chest at the end
			q(57129),	-- Valley of Wisdom cleansed (Orgrimmar)
			q(57001),	-- Valley of Strength cleansed (Orgrimmar)
			q(57372),	-- The Drag cleansed (Orgrimmar)
			q(57028),	-- The Drag cleansed (Orgrimmar) - probably controls eligibility for looting bonus chest at the end
			q(58577),	-- The Drag cleansed (Orgrimmar) - probably controls activation of the quick-navigation back to the start?
			q(58895),	-- got this instead of 58577 after clearing The Drag
			q(58969),	-- horrific vision of orgimmar
			q(58891),	-- completed a wing
			q(58580),	-- completed a wing
			q(58972),	-- completed a wing
			q(58892),	-- completed a wing
			q(57031),	-- looted the chest from cleansing Valley of Wisdom at the end of the scenario
			q(57030),	-- looted the chest from cleansing the Valley of Strength at the end of the scenario
			q(57027),	-- triggers in the chest room at the end of the Orgrimmar scenario. Doesn't matter if you defeat Thrall or not
			q(59044),	-- completed all objectives
			q(58966),	-- triggered after completing all of zek'han's area but before killing the boss. Also triggers in Stormwind in valeria's wing
			q(58963),	-- triggered while fighting Thrall after two corrupted areas/triggered before boss in The Drag
			q(58973),	-- triggered after fighting Rexxar
		}),
		m(HORRIFIC_STORMWIND, {
			q(58968),	-- 3rd wing clear
			q(58965),	-- triggered when going to Dwarven District (during the fight with 3 gnomes)
			q(57153),	-- Dwarven District cleansed (Stormwind)
			q(58970),	-- triggered when detonating explosives in Dwarven District
			q(58894),	-- Dwarven District - kill the wing boss. Activates a portal to the cathedral district
			q(58964),	-- taking portal from Dwarven District back to Cathedral
			q(57216),	-- Old Town cleansed (Stormwind)
			q(58967),	-- probably defeating Slavemaster Ul'rok in Trade District
			q(57271),	-- Trade District cleansed (Stormwind)
			q(58897),	-- triggered together with 57271
			q(58890),	-- Dwarven district
			q(58893),	-- cleared mage quarter
			q(57282),	-- cleared mage quarter
			--q(57842),	-- end of vision clear - possibly only triggers when all other wings are cleared?(moved to metadata)
			-- TODO:: Need to determine the alliance zones for the 4 area chests. They appear to be shared with horde except for the main boss chest
			q(57360),	-- looted the chest in front of Alleria's image at the end of the scenario. Doesn't matter if you defeat her or not
			q(58578),	-- looted the chest from cleansing the Dwarven District at the end of the scenario (could possibly be from looting "Spark of Inspiration" Rank 2)
		}),
		q(58971),	-- killing Mail Muncher
		--[[
		q(57845)	-- probably triggers after clearing two corrupted areas + boss
		58840 - looted the chest in front of zekhan. Torn Page of Compednium, Vol.II and Sparks of Unwavering Strength dropped
		58581 -- triggered on the first run of the Vision of Orgrimmar after unlocking it, then killing Thrall immediately.
		Possibly related to Mark of Boistrous Duty (Rank 1) dropping? Torn Page of Compendium, Vol. 1 (item 171353) as well? Need to run a few times to see if this is guaranteed or not
		]]--
	}),
})));