-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
local DF_ENCHANTING_KNOWLEDGE = 2030;
local TWW_ENCHANTING_KNOWLEDGE = 2787;
root(ROOTS.Professions, prof(ENCHANTING, bubbleDownSelf({ ["requireSkill"] = ENCHANTING }, {
	n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
		ach(18769),	-- Disenchantment IV
		ach(18768),	-- Disenchantment III
		ach(18767),	-- Disenchantment II
		ach(18766),	-- Disenchantment I
		ach(18871),	-- Enchantment IV
		ach(18870),	-- Enchantment III
		ach(18869),	-- Enchantment II
		ach(18868),	-- Enchantment I
		ach(18785, {	-- Shattered Expectations
			crit(61106, {	-- Crystalline Shatter
				["providers"] = {
					{ "i", 200113 },	-- Resonant Crystal
					{ "i", 194124 },	-- Vibrant Shard
				},
			}),
			crit(61107, {	-- Elemental Shatter
				["providers"] = {
					{ "i", 190327 },	-- Awakened Air
					{ "i", 190316 },	-- Awakened Earth
					{ "i", 190321 },	-- Awakened Fire
					{ "i", 190329 },	-- Awakened Frost
					{ "i", 190324 },	-- Awakened Order
				},
			}),
			crit(61108, {	-- Eternal Crystal
				["provider"] = { "i", 172232 },	-- Eternal Crystal
			}),
			crit(61109, {	-- Sacred Shard
				["provider"] = { "i", 172231 },	-- Sacred Shard
			}),
			crit(61110, {	-- Veiled Shatter
				["provider"] = { "i", 152877 },	-- Veiled Crystal
			}),
			crit(61111, {	-- Umbra Shatter
				["provider"] = { "i", 152876 },	-- Umbra Shard
			}),
			crit(61112, {	-- Chaos Shatter
				["provider"] = { "i", 124442 },	-- Chaos Crystal
			}),
			crit(61113, {	-- Ley Shatter
				["provider"] = { "i", 124441 },	-- Leylight Shard
			}),
			crit(61114, {	-- Sha Shatter
				["provider"] = { "i", 74248 },	-- Sha Crystal
			}),
			crit(61115, {	-- Maelstrom Shatter
				["provider"] = { "i", 52722 },	-- Maelstrom Crystal
			}),
			crit(61116, {	-- Abyssal Shatter
				["provider"] = { "i", 34057 },	-- Abyss Crystal
			}),
			crit(61117, {	-- Void Shatter
				["provider"] = { "i", 22450 },	-- Void Crystal
			}),
		}),
		ach(18789, {	-- Simply Enchanting
			crit(61136, {	-- Enchanted Thorium Bar
				["cost"] = {{ "i", 12655, 20 }},	-- 20x Enchanted Thorium Bar
			}),
			crit(61137, {	-- Enchanted Leather
				["cost"] = {{ "i", 12810, 20 }},	-- 20x Enchanted Leather
			}),
			crit(61138, {	-- Enchanted Elethium Bar
				["cost"] = {{ "i", 172437, 20 }},	-- 20x Enchanted Elethium Bar
			}),
			crit(61139, {	-- Enchanted Heavy Callous Hide
				["cost"] = {{ "i", 172438, 20 }},	-- 20x Enchanted Heavy Callous Hide
			}),
			crit(61140, {	-- Enchanted Lightless Silk
				["cost"] = {{ "i", 172439, 20 }},	-- 20x Enchanted Lightless Silk
			}),
		}),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
		q(36308, {	-- Enchanted Highmaul Bracer (A)
			["description"] = "This item can drop from any Draenor mob.",
			["provider"] = { "i", 115281 },	-- Enchanted Highmaul Bracer
			["races"] = ALLIANCE_ONLY,
			["altQuests"] = { 36255 },	-- Enchanted Highmaul Bracer (H)
			["maps"] = {
				FROSTFIRE_RIDGE,
				GORGROND,
				DRAENOR_NAGRAND,
				DRAENOR_SHADOWMOON_VALLEY,
				SPIRES_OF_ARAK,
				TALADOR,
			},
		}),
		q(36255, {	-- Enchanted Highmaul Bracer (H)
			["description"] = "This item can drop from any Draenor mob.",
			["provider"] = { "i", 115008 },	-- Enchanted Highmaul Bracer
			["races"] = HORDE_ONLY,
			["altQuests"] = { 36308 },	-- Enchanted Highmaul Bracer (A)
			["maps"] = {
				FROSTFIRE_RIDGE,
				GORGROND,
				DRAENOR_NAGRAND,
				DRAENOR_SHADOWMOON_VALLEY,
				SPIRES_OF_ARAK,
				TALADOR,
			},
		}),
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		q(39874, {	-- Some Enchanted Evening
			["provider"] = { "n", 93531 },	-- Enchanter Nalthanis
			["coord"] = { 38.6, 40.8, LEGION_DALARAN },
			["g"] = {
				r(195096, {	-- Enchanting (Legion Master)
					["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1 },
					["collectible"] = false,
				}),
				applyclassicphase(BFA_PHASE_ONE, r(302694, {	-- Disenchant
					["collectible"] = false,
					["timeline"] = { ADDED_8_0_1 },
				})),
				r(264471, {["timeline"] = {ADDED_8_0_1}}),	-- Legion Enchanting
				r(190869),	-- Word of Versatility [Rank 1]
			},
		}),
		q(39875, {	-- The Last Few
			["sourceQuests"] = { 39874 },	-- Some Enchanted Evening
			["provider"] = { "n", 93530 },	-- Ildine Sorrowspear
			["coord"] = { 38.6, 41.6, LEGION_DALARAN },
			["cost"] = { { "i", 128540, 2 } },	-- 2x Enchant Ring - Word of Versatility
		}),
		q(39876, {	-- Helping the Hunters
			["sourceQuests"] = { 39875 },	-- The Last Few
			["provider"] = { "n", 93530 },	-- Ildine Sorrowspear
			["coord"] = { 38.6, 41.6, LEGION_DALARAN },
		}),
		q(39877, {	-- In the Loop
			["sourceQuests"] = { 39875 },	-- Helping the Hunters
			["provider"] = { "n", 90317 },	-- Jace Darkweaver <Illidari>
			["coord"] = { 43.2, 43.6, AZSUNA },
		}),
		q(40048, {	-- Strings of the Puppet Masters
			["sourceQuests"] = { 39876 },	-- Helping the Hunters
			["provider"] = { "n", 90317 },	-- Jace Darkweaver <Illidari>
			["coord"] = { 43.2, 43.6, AZSUNA },
		}),
		q(39905, {	-- Ringing True
			["sourceQuests"] = {
				39877,	-- In the Loop
				40048,	-- Strings of the Puppet Masters
			},
			["provider"] = { "n", 90317 },	-- Jace Darkweaver
			["coord"] = { 43.2, 43.6, AZSUNA },
			["g"] = {
				r(190866),	-- Word of Critical Strike [Rank 1]
				r(190867),	-- Word of Haste [Rank 1]
				r(190868),	-- Word of Mastery [Rank 1]
			},
		}),
		q(39878, {	-- Thunder Struck
			["sourceQuests"] = { 39905 },	-- Ringing True
			["provider"] = { "n", 93531 },	-- Enchanter Nalthanis
			["coord"] = { 38.6, 40.8, LEGION_DALARAN },
		}),
		q(39879, {	-- Strong Like the Earth
			["sourceQuests"] = { 39878 },	-- Thunder Struck
			["provider"] = { "n", 98017 },	-- Guron Twaintail
			["coord"] = { 46.6, 60.4, HIGHMOUNTAIN },
		}),
		q(39880, {	-- Waste Not
			["sourceQuests"] = { 39878 },	-- Thunder Struck
			["provider"] = { "n", 98017 },	-- Guron Twaintail
			["coord"] = { 46.6, 60.4, HIGHMOUNTAIN },
			["g"] = {
				i(137195),	-- Highmountain Armor
			},
		}),
		q(39883, {	-- Cloaked in Tradition
			["sourceQuests"] = {
				39879,	-- Strong Like the Earth
				39880,	-- Waste Not
			},
			["provider"] = { "n", 98017 },	-- Guron Twaintail
			["coord"] = { 46.6, 60.4, HIGHMOUNTAIN },
			["g"] = {
				r(190875),	-- Word of Agility [Rank 1]
				r(190876),	-- Word of Intellect [Rank 1]
				r(190874),	-- Word of Strength [Rank 1]
			},
		}),
		q(39881, {	-- Fey Enchantments
			["sourceQuests"] = { 39883 },	-- Cloaked in Tradition
			["provider"] = { "n", 93531 },	-- Enchanter Nalthanis
			["coord"] = { 38.6, 40.8, LEGION_DALARAN },
		}),
		q(39884, {	-- No Longer Worthy
			["sourceQuests"] = { 39881 },	-- Fey Enchantments
			["provider"] = { "n", 98156 },	-- Nalamya
			["coord"] = { 54.4, 57.6, VALSHARAH },
		}),
		q(39889, {	-- Led Astray
			["sourceQuests"] = { 39881 },	-- Fey Enchantments
			["provider"] = { "n", 98156 },	-- Nalamya
			["coord"] = { 54.4, 57.6, VALSHARAH },
		}),
		q(39882, {	-- Darkheart Thicket: The Glamour Has Faded
			["sourceQuests"] = {
				39884,	-- No Longer Worthy
				39889,	-- Led Astray
			},
			["provider"] = { "n", 98156 },	-- Nalamya
			["maps"] = { 733, },	-- Darkheart Thicket
			["coord"] = { 54.4, 57.6, VALSHARAH },
			["g"] = {
				r(190954),	-- Boon of the Scavenger
			},
		}),
		q(39903, {	-- An Enchanting Home
			["sourceQuests"] = { 39883 },	-- Cloaked in Tradition
			["provider"] = { "n", 93531 },	-- Enchanter Nalthanis
			["coord"] = { 38.6, 40.8, LEGION_DALARAN },
		}),
		q(40265, {	-- A Touch of Magic
			["sourceQuests"] = { 39903 },	-- An Enchanting Home
			["provider"] = { "n", 98367 },	-- Tigrid the Charmer
			["coord"] = { 39.4, 42.6, STORMHEIM },
		}),
		q(39904, {	-- Halls of Valor: Revenge of the Enchantress
			["sourceQuests"] = { 40265 },	-- A Touch of Magic
			["provider"] = { "n", 98367 },	-- Tigrid the Charmer
			["coord"] = { 39.4, 42.6, STORMHEIM },
			["maps"] = { 703, 704, 705 },	-- Halls of Valor
			["g"] = {
				r(191076),	-- Enchanted Pen
			},
		}),
		q(39891, {	-- Cursed, But Convenient
			["sourceQuests"] = { 39904 },	-- Halls of Valor: Revenge of the Enchantress
			["provider"] = { "n", 93531 },	-- Enchanter Nalthanis
			["coord"] = { 38.6, 40.8, LEGION_DALARAN },
		}),
		q(40169, {	-- Crossroads Rendezvous
			["sourceQuests"] = { 39891 },	-- Cursed, But Convenient
			["provider"] = { "n", 107139 },	-- Enchantress Ilanya
			["coord"] = { 46.8, 40.8, AZSUNA },
		}),
		q(39916, {	-- Turnabout Betrayal
			["sourceQuests"] = { 40169 },	-- Crossroads Rendezvous
			["provider"] = { "n", 98675 },	-- Fallen Priestess
			["coord"] = { 63.8, 30.2, AZSUNA },
			["g"] = {
				i(129751),	-- Dust of Foul Lies
				i(137286),	-- Fel-Crusted Rune
			},
		}),
		q(40130, {	-- Washed Clean
			["sourceQuests"] = { 39916 },	-- Turnabout Betrayal
			["provider"] = { "n", 98675 },	-- Fallen Priestess
			["coord"] = { 63.8, 30.2, AZSUNA },
		}),
		q(39918, {	-- The Absent Priestess
			["sourceQuests"] = { 40130 },	-- Washed Clean
			["provider"] = { "n", 98698 },	-- Priestess Driana
			["coord"] = { 36.4, 34.0, AZSUNA },
			["g"] = {
				r(228408),	-- Mark of the Ancient Priestess [Rank 1]
				r(190894),	-- Mark of the Hidden Satyr [Rank 1]
			},
		}),
		q(39910, {	-- The Druid's Debt
			["sourceQuests"] = { 39891 },	-- Cursed, But Convenient
			["provider"] = { "n", 98381 },	-- Merrus Dawnwind
			["coord"] = { 46.8, 40.8, AZSUNA },
			["g"] = {
				r(190892),	-- Mark of the Claw [Rank 1]
				r(228402),	-- Mark of the Heavy Hide [Rank 1]
			},
		}),
		q(39906, {	-- Prepping For Battle
			["sourceQuests"] = { 39891 },	-- Cursed, But Convenient
			["provider"] = { "n", 98159 },	-- Alynblaze <The Sentinel>
			["coord"] = { 46.8, 40.8, AZSUNA },
			["cost"] = {
				{ "i", 128545, 1 },	-- 1x Enchant Cloak - Word of Strength
				{ "i", 128537, 1 },	-- 1x Enchant Ring - Word of Critical Strike
				{ "i", 128539, 1 },	-- 1x Enchant Ring - Word of Mastery
			},
		}),
		q(39914, {	-- Sentinel's Final Duty
			["sourceQuests"] = { 39906 },	-- Prepping For Battle
			["provider"] = { "n", 98159 },	-- Alynblaze
			["coord"] = { 46.8, 40.8, AZSUNA },
			["g"] = {
				r(190893),	-- Mark of the Distant Army [Rank 1]
				r(228405),	-- Mark of the Trained Soldier [Rank 1]
			},
		}),
		q(39907, {	-- Elven Enchantments
			["sourceQuests"] = {
				39918,	-- The Absent Priestess
				39910,	-- The Druid's Debt
				39914,	-- Sentinel's Final Duty
			},
			["provider"] = { "n", 107139 },	-- Enchantress Ilanya
			["coord"] = { 46.8, 40.8, AZSUNA },
		}),
		q(39920, {	-- On Azure Wings
			["sourceQuests"] = { 39907 },	-- Elven Enchantments
			["provider"] = { "n", 93531 },	-- Enchanter Nalthanis
			["coord"] = { 38.6, 40.8, LEGION_DALARAN },
		}),
		q(39921, {	-- Neltharion's Lair: Rod of Azure
			["sourceQuests"] = { 39920 },	-- On Azure Wings
			["provider"] = { "n", 99420 },	-- Kharmeera <Enchantress>
			["maps"] = {
				731,	-- Neltharion's Lair
				324,	-- The Stonecore
				477, 478, 479,	-- Scholomance
			},
			["coord"] = { 47.2, 26.4, AZSUNA },
		}),
		q(39923, {	-- Down to the Core
			["sourceQuests"] = { 39921 },	-- Neltharion's Lair: Rod of Azure
			["provider"] = { "n", 99420 },	-- Kharmeera
			["coord"] = { 47.2, 26.4, AZSUNA },
			["g"] = {
				r(190870),	-- Binding of Critical Strike [Rank 1]
				r(190871),	-- Binding of Haste [Rank 1]
				r(190872),	-- Binding of Mastery [Rank 1]
				r(190873),	-- Binding of Versatility [Rank 1]
			},
		}),
		q(42971, {	-- Controlling the Elements
			["provider"] = { "n", 42465 },	-- Therazane <The Stonemother>
			["coord"] = { 56.4, 12.2, DEEPHOLM },
			["g"] = {
				r(217649),	-- Tome of Illusions: Elemental Lords
			},
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18775, {	-- Iwen's Enchanting Rod
				["provider"] = { "i", 164766 },	-- Iwen's Enchanting Rod
			}),
		})),
		n(QUESTS, {
			q(54473, {	-- Enchanted Formulae [A]
				["provider"] = { "n", 136041 },	-- Emily Fairweather <Enchanting Trainer>
				["coord"] = { 74.1, 11.4, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
			}),
			q(54474, {	-- Enchanted Formulae [H]
				["provider"] = { "n", 122702 },	-- Enchantress Quinni <Enchanting Trainer>
				["coord"] = { 47.0, 35.8, DAZARALOR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
			}),
			------ Tools of Trade Questline ------
			q(54005, {	-- What the Drust Knew [A]
				["description"] = "This quest chain requires 150 in Kul Tiran Enchanting.",
				["provider"] = { "n", 136041 },	-- Emily Fairweather
				["coord"] = { 74.2, 11.3, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(54161, {	-- What the Drust Knew [H]
				["description"] = "This quest chain requires 150 in Zandalari Enchanting.",
				["provider"] = { "n", 122702 },	-- Enchantress Quinni
				["coord"] = { 47.1, 35.7, DAZARALOR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(53993, {	-- A Voice on the Wind [A]
				["sourceQuests"] = { 54005 },	-- What the Drust Knew [A]
				["provider"] = { "n", 147014 },	-- Ancient Drust Relic Dust
				["coord"] = { 74.2, 11.4, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(55635, {	-- A Voice on the Wind [H]
				["sourceQuests"] = { 54161 },	-- What the Drust Knew [H]
				["provider"] = { "n", 147014 },	-- Ancient Drust Relic Dust
				["coord"] = { 47.1, 35.3, DAZARALOR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(53996, {	-- Pick Up Sticks
				["sourceQuests"] = {
					53993,	-- A Voice on the Wind [A]
					55635,	-- A Voice on the Wind [H]
				},
				["provider"] = { "n", 146053 },	-- Sef Iwen
				["coord"] = { 53.4, 40.1, DRUSTVAR },
				["sourceQuestNumRequired"] = 1,
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
					i(164979),	-- Bundle of Hard Wood (QI!)
				},
			}),
			q(53997, {	-- The Sixth Sense
				["sourceQuests"] = { 53996 },	-- Pick Up Sticks
				["provider"] = { "n", 146053 },	-- Sef Iwen
				["coord"] = { 53.4, 40.1, DRUSTVAR },
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(53998, {	-- Exhumed
				["sourceQuests"] = { 53997 },	-- The Sixth Sense
				["provider"] = { "n", 146091 },	-- Sef Iwen
				["coord"] = { 55.3, 46.1, DRUSTVAR },
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(53999, {	-- The Threads That Bind
				["sourceQuests"] = { 53998 },	-- Exhumed
				["provider"] = { "n", 146091 },	-- Sef Iwen
				["coord"] = { 55.3, 46.1, DRUSTVAR },
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
					i(164985),	-- Durable Spider Silk (QI!)
				},
			}),
			q(54000, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- The Beat Goes On
				["sourceQuests"] = { 53999 },	-- Exhumed
				["provider"] = { "n", 146093 },	-- Sef Iwen
				["coord"] = { 63.0, 59.4, DRUSTVAR },
				["g"] = {
					r(284415, {["u"]=TRAINING}),	-- Enchant Runic Power Core
					i(165023),	-- Runic Power Core (QI!)
					i(165022),	-- Smooth River Stone (QI!)
				},
			})),
			q(54001, {	-- We're Going In
				["sourceQuests"] = { 54000 },	-- The Beat Goes On
				["provider"] = { "n", 146094 },	-- Sef Iwen
				["coord"] = { 58.9, 62.9, DRUSTVAR },
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(54002, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- Putting it All Togethereeee
				["sourceQuests"] = { 54001 },	-- We're Going In
				["provider"] = { "n", 152255 },	-- Sef Iwen
				["coord"] = { 57.8, 80.8, DRUSTVAR },
				["g"] = {
					r(287494),	-- Iwen's Enchanting Rod
				},
			})),
		}),
	})),
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18764),	-- Break Upon Your Body
			ach(18763, {
				crit(61079, {	-- Scepter of Spectacle: Fire
					["providers"] = {
						{ "i", 163736 },	-- Spectral Visage
						{ "i", 200472 },	-- Scepter of Spectacle: Fire
					},
				}),
				crit(61080, {	-- Scepter of Spectacle: Frost
					["providers"] = {
						{ "i", 163736 },	-- Spectral Visage
						{ "i", 200535 },	-- Scepter of Spectacle: Frost
					},
				}),
				crit(61081, {	-- Scepter of Spectacle: Air
					["providers"] = {
						{ "i", 163736 },	-- Spectral Visage
						{ "i", 201161 },	-- Scepter of Spectacle: Air
					},
				}),
				crit(61082, {	-- Scepter of Spectacle: Earth
					["providers"] = {
						{ "i", 163736 },	-- Spectral Visage
						{ "i", 201160 },	-- Scepter of Spectacle: Earth
					},
				}),
				crit(61083, {	-- Scepter of Spectacle: Order
					["providers"] = {
						{ "i", 163736 },	-- Spectral Visage
						{ "i", 201158 },	-- Scepter of Spectacle: Order
					},
				}),
			}),
		})),
		n(QUESTS, {
			q(70360, {	-- Dragon Isles Enchanting
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Enchanting.",
				["provider"] = { "n", 192055 },	-- Veeno <Enchanting Trainer>
				["coord"] = { 75.8, 33.2, THE_WAKING_SHORES },
				["lockCriteria"] = { 1, "spellID", 366255 },	-- Dragon Isles Enchanting
			}),
			q(70029, {	-- Artisan's Supply: Runed Serevite Rods
				["providers"] = {
					{ "n", 192055 },	-- Veeno <Enchanting Trainer>
					{ "n", 198903 },	-- Asarin <Enchanting Trainer & Supplies>
					{ "n", 192116 },	-- Solonga <Enchanting Trainer & Supplies>
				},
				["coords"] = {
					{ 75.8, 33.2, THE_WAKING_SHORES },
					{ 41.4, 61.0, OHNAHRAN_PLAINS },
					{ 56.8, 75.6, OHNAHRAN_PLAINS },
				},
				["cost"] = {{ "i", 201601, 2 }},	-- 2x Runed Serevite Rod
				["_drop"] = { "g" },
			}),
			q(70251, {	-- Hidden Profession Master Enchanting
				["name"] = "Hidden Profession Master: Enchanting",
				["provider"] = { "n", 194837 },	-- Shalasar Glimmerdusk
				["coord"] = { 62.4, 18.6, OHNAHRAN_PLAINS },
			}),
			q(70186, {	-- Specialized Secrets: Enchanting
				["sourceQuests"] = { 69979 },	-- A Worthy Hunt
				["provider"] = { "n", 193110 },	-- Khadin
				["coord"] = { 51.8, 33.0, OHNAHRAN_PLAINS },
				["cost"] = {{ "i", 191784, 1 }},	-- 1x Dragon Shard of Knowledge
				["isRepeatable"] = true,
				["g"] = {
					i(190456),	-- Artisan's Mettle
				},
			}),
		}),
		n(QUESTS, sharedData({
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["isWeekly"] = true,
			["g"] = {
				i(198610),	-- Enchanter's Script
			},
		},{
			------ Requires 25 Skill ------
			q(66935, {	-- Crystal Quill Pens
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191001 },	-- Gnoklin Quirkcoil
				["coord"] = { 36.8, 62.8, VALDRAKKEN },
				["g"] = {
					i(194053),	-- Crystal Quill (QI!)
				},
			}),
			q(66900, {	-- Enchanted Relics
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191004 },	-- Temnaayu
				["coord"] = { 36.8, 62.4, VALDRAKKEN },
				["g"] = {
					i(193867),	-- Enchanted Relics (QI!)
				},
			}),
			q(66884, {	-- Fireproof Gear
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191004 },	-- Temnaayu
				["coord"] = { 36.8, 62.4, VALDRAKKEN },
				["g"] = {
					i(193624),	-- Fireproof Gear (QI!)
				},
			}),
			q(72423, {	-- Weathering the Storm
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191004 },	-- Temnaayu
				["coord"] = { 36.8, 62.4, VALDRAKKEN },
				["g"] = {
					i(201826),	-- Tempest Armaments (QI!)
				},
			}),

			------ Requires 45 Skill ------
			q(72175, {	-- A Scept-acular Time
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 193744 },	-- Soragosa
				["coord"] = { 30.8, 61.4, VALDRAKKEN },
			}),
			q(72173, {	-- Braced for Enchantment
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 193744 },	-- Soragosa
				["coord"] = { 30.8, 61.4, VALDRAKKEN },
			}),
			q(72172, {	-- Essence, Shards, and Chromatic Dust
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 193744 },	-- Soragosa
				["coord"] = { 30.8, 61.4, VALDRAKKEN },
			}),
			q(72155, {	-- Spread the Enchantment
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 193744 },	-- Soragosa
				["coord"] = { 30.8, 61.4, VALDRAKKEN },
			}),

			------ Requires ?? Skill - Patch 10.1.0. ------
			q(75150, {	-- Incandescence
				["provider"] = { "n", 203516 },	-- Kayann
				["coord"] = { 36.5, 62.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
				["g"] = {
					i(204433),	-- Everburning Fireshard (QI!)
				},
			}),
			q(75865, {	-- Relic Rustler
				["provider"] = { "n", 203516 },	-- Kayann
				["coord"] = { 36.5, 62.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
			}),
			-- Patch 10.2.0
			q(77910, {	-- Enchanted Shrubbery
				["qgs"] = {
					210162,	-- Magnolia Oaken
					203172,	-- Dustmonger Topuiz
				},
				["coords"] = {
					{ 36.8, 63.1, VALDRAKKEN },
					{ 56.0, 56.8, ZARALEK_CAVERN },
				},
				["timeline"] = { ADDED_10_2_0 },
				["g"] = {
					i(208947),	-- Enchanted Watering Can (QI!)
				},
			}),
			q(77937, {	-- Forbidden Sugar
				["provider"] = { "n", 210162 },	-- Magnolia Oaken
				["coord"] = { 36.8, 63.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_0 },
				["g"] = {
					i(209018),	-- Glowdrop Sugar (QI!)
				},
			}),
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["g"] = sharedData({ ["cost"] = {{ "c", DF_ENCHANTING_KNOWLEDGE, 1 }} }, {
				r(389547),	-- Burning Devotion
				r(391302),	-- Crystalline Shatter
				r(389301),	-- Devotion of Avoidance
				r(389303),	-- Devotion of Leech
				r(389304),	-- Devotion of Speed
				r(389519),	-- Draconic Inspiration
				r(389530),	-- Draconic Resourcefulness
				r(389549),	-- Earthen Devotion
				r(391304),	-- Elemental Shatter
				r(389551),	-- Frozen Devotion
				r(391812),	-- Illusory Adornment: Order
				r(391202),	-- Illustrious Insight
				r(390855),	-- Khadgar's Disenchanting Rod
				r(389417),	-- Reserve of Intellect
				r(390825),	-- Runed Khaz'gorite Rod
				r(391808),	-- Scepter of Spectacle: Order
				r(390831),	-- Sophic Amalgamation
				r(389550),	-- Sophic Devotion
				r(391179),	-- Torch of Primal Awakening
				r(389558),	-- Wafting Devotion
				r(389410),	-- Waking Stats
			}),
		}),
		n(TREASURES, {
			o(380558, {	-- Enchanted Debris
				["description"] = "Interact with the Disenchanted Broom, then follow it to the location of the treasure.",
				["questID"] = 70272,
				["coord"] = { 57.5, 58.5, THE_WAKING_SHORES },
				["g"] = {
					i(201012),	-- Enchanted Debris
				},
			}),
			o(380600, {	-- Enriched Earthen Shard
				["questID"] = 70298,
				["coord"] = { 21.6, 45.5, THE_AZURE_SPAN },
				["g"] = {
					i(198694),	-- Enriched Earthen Shard
				},
			}),
			o(410582,	-- Essence of Dreams
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["coord"] = { 66.3, 74.2, EMERALD_DREAM },
				["questID"] = 78310,
				["g"] = {
					i(210234),	-- Essence of Dreams
				},
			})),
			o(410575,	-- Everburning Core
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["coord"] = { 46.1, 20.5, EMERALD_DREAM },
				["questID"] = 78309,
				["g"] = {
					i(210231),	-- Everburning Core
				},
			})),
			o(380589, {	-- Faintly Enchanted Remains
				["questID"] = 70290,
				["coord"] = { 45.1, 61.2, THE_AZURE_SPAN },
				["crs"] = { 194882 },	-- Enchanted Crystaline Construct
				["g"] = {
					i(201013),	-- Faintly Enchanted Remains
				},
			}),
			o(380643, {	-- Flashfrozen Scroll
				["questID"] = 70320,
				["coord"] = { 57.5, 83.6, THE_WAKING_SHORES },
				["g"] = {
					i(198798),	-- Flashfrozen Scroll
				},
			}),
			o(380647, {	-- Forgotten Arcane Tome
				["questID"] = 70336,
				["coord"] = { 38.5, 59.2, THE_AZURE_SPAN },
				["g"] = {
					i(198799),	-- Forgotten Arcane Tome
				},
			}),
			o(380652, {	-- Fractured Titanic Sphere
				["questID"] = 70342,
				["coord"] = { 59.9, 70.4, THALDRASZUS },
				["g"] = {
					i(198800),	-- Fractured Titanic Sphere
				},
			}),
			o(398793,	-- Lava-Drenched Shadow Crystal
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 48.0, 17.0, ZARALEK_CAVERN },
				["questID"] = 75508,
				["g"] = {
					i(204990),	-- Lava-Drenched Shadow Crystal
				},
			})),
			o(380580, {	-- Lava-Infused Seed
				["questID"] = 70283,
				["coord"] = { 68.0, 26.8, THE_WAKING_SHORES },
				["g"] = {
					i(198675),	-- Lava-Infused Seed
				},
			}),
			o(410574,	-- Pure Dream Water
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["coord"] = { 38.3, 30.1, EMERALD_DREAM },
				["questID"] = 78308,
				["g"] = {
					i(210228),	-- Pure Dream Water
				},
			})),
			o(398796,	-- Resonating Arcane Crystal
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 36.7, 69.3, ZARALEK_CAVERN },
				["questID"] = 75510,
				["g"] = {
					i(205001),	-- Resonating Arcane Crystal
				},
			})),
			o(398794,	-- Shimmering Aqueous Orb
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 62.4, 53.8, ZARALEK_CAVERN },
				["questID"] = 75509,
				["g"] = {
					i(204999),	-- Shimmering Aqueous Orb
				},
			})),
			o(380592, {	-- Stormbound Horn
				["questID"] = 70291,
				["coord"] = { 61.4, 67.6, OHNAHRAN_PLAINS },
				["g"] = {
					i(198689),	-- Stormbound Horn
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["g"] = {
				currency(DF_ENCHANTING_KNOWLEDGE),
			},
		},{
			i(198610),	-- Enchanter's Script
			q(74110, {	-- DF Inscription Order: Enchanting
				["name"] = "DF Inscription Order: Enchanting",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 194702 },	-- Draconic Treatise on Enchanting
			}),
			q(66377, {	-- DF Weekly Enchanting Knowledgepoint #1
				["name"] = "DF Enchanting Treasure #1",
				["provider"] = { "i", 193900 },	-- Prismatic Focusing Shard
			}),
			q(66378, {	-- DF Weekly Enchanting Knowledgepoint #2
				["name"] = "DF Enchanting Treasure #2",
				["provider"] = { "i", 193901 },	-- Primal Dust
			}),
			q(70515, {	-- DF Weekly Enchanting Knowledgepoint #3
				["name"] = "DF Enchanting Drop #1: Primalist",
				["description"] = "Drops from any mob with Primalist in the name.\nCoordinates link to the spot(s) we found best.",
				["crs"] = { 194656 },	-- Primalist Surgecrusher
				["provider"] = { "i", 198968 },	-- Primalist Charm
				["coord"] = { 53.4, 56.2, THALDRASZUS },
			}),
			q(70514, {	-- DF Weekly Enchanting Knowledgepoint #4
				["name"] = "DF Enchanting Drop #2: Arcane Elemental",
				["description"] = "Drops from any Arcane Elemental.\nCoordinates link to the spot(s) we found best.",
				["crs"] = { 181536 },	-- Destabilized Elemental
				["provider"] = { "i", 198967 },	-- Primordial Aether
				["coord"] = { 40.6, 60.8, THE_AZURE_SPAN },
			}),
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(QUESTS, sharedData({
			["provider"] = { "n", 219085 },	-- Nagad <Enchanting Trainer>
			["coord"] = { 52.7, 71.1, DORNOGAL },
			["isWeekly"] = true,
			["g"] = {
				i(227667),	-- Algari Enchanter's Folio
			},
		},{
			q(84086),	-- A Rare Necessity
			q(84084),	-- Just a Pinch
			q(84085),	-- The Power of Potential
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["g"] = sharedData({ ["cost"] = {{ "c", TWW_ENCHANTING_KNOWLEDGE, 1 }} }, {
				r(445378),	-- Algari Ingenuity
				r(445403),	-- Authority of Fiery Resolve
				r(445336),	-- Authority of Storms
				r(445330),	-- Chant of Armored Speed
				r(445395),	-- Concentration Concentrate
				r(445333),	-- Crystalline Radiance
				r(445388),	-- Cursed Haste
				r(445396),	-- Defender's March
				r(445367),	-- Gleeful Glamour - Blood Elf
				r(445400),	-- Gleeful Glamour - Dark Iron Dwarf
				r(445391),	-- Gleeful Glamour - Draenei
				r(445402),	-- Gleeful Glamour - Dwarf
				r(445362),	-- Gleeful Glamour - Gnome
				r(445332),	-- Gleeful Glamour - Goblin
				r(445377),	-- Gleeful Glamour - Highmountain Tauren
				r(445352),	-- Gleeful Glamour - Human
				r(445342),	-- Gleeful Glamour - Kul Tiran
				r(445343),	-- Gleeful Glamour - Lightforged Draenei
				r(445370),	-- Gleeful Glamour - Mag'har Orc
				r(445357),	-- Gleeful Glamour - Mechagnome
				r(445363),	-- Gleeful Glamour - Night Elf
				r(445390),	-- Gleeful Glamour - Nightborne
				r(445319),	-- Gleeful Glamour - Orc
				r(445366),	-- Gleeful Glamour - Tauren
				r(445326),	-- Gleeful Glamour - Troll
				r(445350),	-- Gleeful Glamour - Undead
				r(445356),	-- Gleeful Glamour - Void Elf
				r(445329),	-- Gleeful Glamour - Vulpera
				r(445397),	-- Gleeful Glamour - Worgen
				r(445345),	-- Gleeful Glamour - Zandalari Troll
				r(445318),	-- Oil of Beledar's Grace
				r(445372),	-- Runed Ironclaw Rod
				r(445355),	-- Scepter of Radiant Magics
				r(445466),	-- Shatter Essence
			}),
		}),
		n(TREASURES, {
			o(456006, {	-- Animated Enchanting Dust
				["coord"] = { 67.2, 65.9, THE_RINGING_DEEPS },
				["questID"] = 83861,
				["g"] = {
					i(226287),	-- Animated Enchanting Dust
				},
			}),
			o(456003, {	-- Book of Dark Magic
				["coord"] = { 61.7, 22.0, NERUBAR },
				["questID"] = 83864,
				["g"] = {
					i(226290),	-- Book of Dark Magic
				},
			}),
			o(456004, {	-- Enchanted Arathi Scroll
				["coord"] = { 48.6, 64.5, HALLOWFALL },
				["questID"] = 83863,
				["g"] = {
					i(226289),	-- Enchanted Arathi Scroll
				},
			}),
			o(456005, {	-- Essence of Holy Fire
				["coord"] = { 40.1, 70.5, HALLOWFALL },
				["questID"] = 83862,
				["g"] = {
					i(226288),	-- Essence of Holy Fire
				},
			}),
			o(456009, {	-- Grinded Earthen Gem
				["coord"] = { 57.6, 61.5, ISLE_OF_DORN },
				["questID"] = 83856,
				["g"] = {
					i(226284),	-- Grinded Earthen Gem
				},
			}),
			o(456008, {	-- Silver Dornogal Rod
				["coord"] = { 58.0, 56.9, DORNOGAL },
				["questID"] = 83859,
				["g"] = {
					i(226285),	-- Silver Dornogal Rod
				},
			}),
			o(456007, {	-- Soot-Coated Orb
				["coord"] = { 44.6, 22.1, THE_RINGING_DEEPS },
				["questID"] = 83860,
				["g"] = {
					i(226286),	-- Soot-Coated Orb
				},
			}),
			o(456002, {	-- Void Shard
				["coord"] = { 57.3, 44.0, AZJ_KAHET },
				["questID"] = 83865,
				["g"] = {
					i(226291),	-- Void Shard
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["g"] = {
				currency(TWW_ENCHANTING_KNOWLEDGE),
			},
		},{i(225230),
			q(83258, {	-- TWW Weekly Enchanting Knowledgepoint #1
				["name"] = "TWW Weekly Enchanting Treasure #1",
				["provider"] =  { "i", 225231 },	-- Powdered Fulgurance
			}),
			q(83259, {	-- TWW Weekly Enchanting Knowledgepoint #2
				["name"] = "TWW Weekly Enchanting Treasure #2",
				["provider"] =  { "i", 225230 },	-- Crystalline Repository
			}),
			q(84290, {	-- TWW Weekly Enchanting Knowledgepoint #3
				["name"] = "TWW Weekly Enchanting Disenchant #1",
				["description"] = "Rewarded when disenchanting items.",
				["provider"] =  { "i", 227659 },	-- Fleeting Arcane Manifestation
			}),
			q(84291, {	-- TWW Weekly Enchanting Knowledgepoint #4
				["name"] = "TWW Weekly Enchanting Disenchant #2",
				["description"] = "Rewarded when disenchanting items.",
				["provider"] =  { "i", 227659 },	-- Fleeting Arcane Manifestation
			}),
			q(84292, {	-- TWW Weekly Enchanting Knowledgepoint #5
				["name"] = "TWW Weekly Enchanting Disenchant #3",
				["description"] = "Rewarded when disenchanting items.",
				["provider"] =  { "i", 227659 },	-- Fleeting Arcane Manifestation
			}),
			q(84293, {	-- TWW Weekly Enchanting Knowledgepoint #6
				["name"] = "TWW Weekly Enchanting Disenchant #4",
				["description"] = "Rewarded when disenchanting items.",
				["provider"] =  { "i", 227659 },	-- Fleeting Arcane Manifestation
			}),
			q(84294, {	-- TWW Weekly Enchanting Knowledgepoint #7
				["name"] = "TWW Weekly Enchanting Disenchant #5",
				["description"] = "Rewarded when disenchanting items.",
				["provider"] =  { "i", 227659 },	-- Fleeting Arcane Manifestation
			}),
			q(84295, {	-- TWW Weekly Enchanting Knowledgepoint #8
				["name"] = "TWW Weekly Enchanting Disenchant #6",
				["description"] = "Rewarded when disenchanting items.",
				["provider"] =  { "i", 227661 },	-- Gleaming Telluric Crystal
			}),
		})),
	})),
})));


-- #if ANYCLASSIC
profession(ENCHANTING, sharedData({["sourceIgnored"]=true},{
	expansion(EXPANSION.CLASSIC, {
		r(7411, {	-- Enchanting (Apprentice)
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #else
			["lvl"] = 5,
			-- #endif
			["rank"] = 1,
		}),
		r(7412, {	-- Enchanting (Journeyman)
			["timeline"]={ REMOVED_8_0_1 },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #else
			["lvl"] = 10,
			-- #endif
			["rank"] = 2,
		}),
		r(7413, {	-- Enchanting (Expert)
			["timeline"]={ REMOVED_8_0_1 },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #else
			-- #if SEASON_OF_DISCOVERY
			["OnUpdate"] = [[function(t)
				t.lvl = _.Settings:GetUnobtainableFilter(]] .. SOD_PHASE_ONE .. [[) and 26 or 20;
			end]],
			-- #else
			["lvl"] = 20,
			-- #endif
			-- #endif
			["rank"] = 3,
		}),
		r(13920, {	-- Enchanting (Artisan)
			["timeline"]={ REMOVED_8_0_1 },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #else
			-- #if SEASON_OF_DISCOVERY
			["OnUpdate"] = [[function(t)
				t.lvl = _.Settings:GetUnobtainableFilter(]] .. SOD_PHASE_ONE .. [[) and 41 or 35;
			end]],
			-- #else
			["lvl"] = 35,
			-- #endif
			-- #endif
			["rank"] = 4,
		}),
		r(264455, {["timeline"]={ADDED_8_0_1}}),	-- Enchanting
		r(13262, {	-- Disenchant
			["collectible"] = false,
		}),
		cat(690, {	-- Boot Enchantments
			r(13935),	-- Agility
			r(20023),	-- Greater Agility
			r(20020),	-- Greater Stamina
			r(63746, {["timeline"]={ADDED_3_1_0}}),	-- Lesser Accuracy
			r(13637),	-- Lesser Agility
			r(13644),	-- Lesser Stamina
			r(13687),	-- Lesser Versatility / CLASSIC: Lesser Spirit
			r(7867),	-- Minor Agility
			r(13890),	-- Minor Speed
			r(7863),	-- Minor Stamina
			-- #if BEFORE LEGION
			r(20024),	-- Versatility / CLASSIC: Spirit
			-- #endif
			r(13836),	-- Stamina
			-- #if AFTER LEGION
			r(20024),	-- Versatility / CLASSIC: Spirit
			-- #endif
		}),
		cat(691, {	-- Bracer Enchantments
			-- #if AFTER LEGION
			applyclassicphase(PHASE_THREE_ENCHANTS, r(23801)),	-- Argent Versatility / CLASSIC: Mana Regeneration
			-- #endif
			r(13931),	-- Dodge
			r(20008),	-- Greater Intellect
			r(13945),	-- Greater Stamina
			r(13939),	-- Greater Strength
			r(13846),	-- Greater Versatility / CLASSIC: Greater Spirit
			applyclassicphase(PHASE_THREE_ENCHANTS, r(23802)),	-- Healing Power
			r(13822),	-- Intellect
			r(13646),	-- Lesser Dodge / CLASSIC: Lesser Deflection
			r(13622),	-- Lesser Intellect
			r(13501),	-- Lesser Stamina
			r(13536),	-- Lesser Strength
			r(7859),	-- Lesser Versatility / CLASSIC: Lesser Spirit
			-- #if BEFORE LEGION
			applyclassicphase(PHASE_THREE_ENCHANTS, r(23801)),	-- CLASSIC: Mana Regeneration / Argent Versatility
			-- #endif
			r(7779),	-- Minor Agility
			r(7428),	-- Minor Dodge / CLASSIC: Minor Deflection
			r(7418),	-- Minor Health
			r(7457),	-- Minor Stamina
			r(7782),	-- Minor Strength
			r(7766),	-- Minor Versatility / CLASSIC: Minor Spirit
			r(13648),	-- Stamina
			r(13661),	-- Strength
			r(20011),	-- Superior Stamina
			r(20010),	-- Superior Strength
			-- #if AFTER LEGION
			r(20009),	-- Superior Versatility / CLASSIC: Superior Spirit
			r(13642),	-- Versatility / CLASSIC: Spirit
			-- #endif
			-- #if BEFORE LEGION
			r(13642),	-- Versatility / CLASSIC: Spirit
			r(20009),	-- CLASSIC: Superior Spirit / Superior Versatility
			-- #endif
		}),
		cat(692, {	-- Chest Enchantments
			r(13640),	-- Greater Health
			r(13663),	-- Greater Mana
			r(20025),	-- Greater Stats
			r(7857),	-- Health
			r(13538),	-- Lesser Absorption
			r(7748),	-- Lesser Health
			r(7776),	-- Lesser Mana
			r(13700),	-- Lesser Stats
			r(20026),	-- Major Health
			r(20028),	-- Major Mana
			r(13607),	-- Mana
			r(7426),	-- Minor Absorption
			r(7420),	-- Minor Health
			r(7443),	-- Minor Mana
			r(13626),	-- Minor Stats
			r(13941),	-- Stats
			r(13858),	-- Superior Health
			r(13917),	-- Superior Mana
		}),
		cat(693, {	-- Cloak Enchantments
			r(13635),	-- Defense
			applyclassicphase(PHASE_FIVE, r(25086)),	-- Dodge
			r(13657, {["timeline"]={REMOVED_5_0_4}}),	-- Fire Resistance
			r(13746),	-- Greater Defense
			applyclassicphase(PHASE_FIVE_RECIPES, r(25081, {["timeline"]={REMOVED_5_0_4}})),	-- Greater Fire Resistance
			applyclassicphase(PHASE_FIVE_RECIPES, r(25082, {["timeline"]={REMOVED_5_0_4}})),	-- Greater Nature Resistance
			r(20014, {["timeline"]={REMOVED_5_0_4}}),	-- Greater Resistance
			r(13882),	-- Lesser Agility
			r(7861, {["timeline"]={REMOVED_5_0_4}}),	-- Lesser Fire Resistance
			r(13421),	-- Lesser Protection
			r(13522, {["timeline"]={REMOVED_5_0_4}}),	-- Lesser Shadow Resistance
			r(13419),	-- Minor Agility
			r(7771),	-- Minor Protection
			r(7454, {["timeline"]={REMOVED_5_0_4}}),	-- Minor Resistance
			r(13794, {["timeline"]={REMOVED_5_0_4}}),	-- Resistance
			applyclassicphase(PHASE_FIVE, r(25083)),	-- Stealth
			applyclassicphase(PHASE_FIVE, r(25084)),	-- Subtlety
			r(20015),	-- Superior Defense
		}),
		cat(694, {	-- Glove Enchantments
			r(13868, {["timeline"]={REMOVED_4_0_3}}),	-- Advanced Herbalism
			r(13841),	-- Advanced Mining
			r(13815),	-- Agility
			applyclassicphase(PHASE_FIVE, r(25078)),	-- Fire Power
			r(13620),	-- Fishing
			applyclassicphase(PHASE_FIVE, r(25074)),	-- Frost Power
			r(20012),	-- Greater Agility
			r(20013),	-- Greater Strength
			applyclassicphase(PHASE_FIVE, r(25079)),	-- Healing Power
			r(13617),	-- Herbalism
			r(13612),	-- Mining
			r(13948),	-- Minor Haste
			r(13947),	-- Riding Skill
			applyclassicphase(PHASE_FIVE, r(25073)),	-- Shadow Power
			r(13698),	-- Skinning
			r(13887),	-- Strength
			applyclassicphase(PHASE_FIVE, r(25080)),	-- Superior Agility
			applyclassicphase(PHASE_FIVE, r(25072)),	-- Threat
		}),
		applyclassicphase(LEGION_PHASE_ONE, cat(706, sharedDataSelf({ ["timeline"] = { ADDED_7_0_3 } }, {	-- Illusions
			r(217637),	-- Tome of Illusions: Azeroth
		}))),
		cat(699, {	-- Oils
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_ONE, r(430409)),	-- Blackfathom Mana Oil
			-- #endif
			applyclassicphase(PHASE_FIVE, r(25130, {["timeline"]={REMOVED_4_0_3}})),	-- Brilliant Mana Oil
			applyclassicphase(PHASE_FIVE, r(25129, {["timeline"]={REMOVED_4_0_3}})),	-- Brilliant Wizard Oil
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, r(463869, {	-- Conductive Shield Coating
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			applyclassicphase(PHASE_FIVE_RECIPES, r(25127)),	-- Lesser Mana Oil
			applyclassicphase(PHASE_FIVE_RECIPES, r(25126)),	-- Lesser Wizard Oil
			applyclassicphase(PHASE_FIVE, r(25125)),	-- Minor Mana Oil
			applyclassicphase(PHASE_FIVE, r(25124)),	-- Minor Wizard Oil
			applyclassicphase(PHASE_FIVE, r(25128)),	-- Wizard Oil
		}),
		cat(701, {	-- Reagents
			r(17181),	-- Enchanted Leather
			r(17180),	-- Enchanted Thorium Bar
		}),
		cat(697, {	-- Rods
			r(20051, {["timeline"]={REMOVED_5_0_4}}),	-- Runed Arcanite Rod
			r(7421),	-- Runed Copper Rod
			r(13628, {["timeline"]={REMOVED_5_0_4}}),	-- Runed Gold Rod
			r(7795, {["timeline"]={REMOVED_5_0_4}}),	-- Runed Silver Rod
			r(13702, {["timeline"]={REMOVED_5_0_4}}),	-- Runed Truesilver Rod
		}),
		cat(696, {	-- Shield Enchantments
			r(13933, {["timeline"]={REMOVED_5_0_4}}),	-- Frost Resistance
			r(20017),	-- Greater Stamina
			r(13905),	-- Greater Versatility / CLASSIC: Greater Spirit
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, r(463871, {	-- Law of Nature
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			r(13689),	-- Lesser Parry / CLASSIC: Lesser Block
			r(13464),	-- Lesser Protection
			r(13631),	-- Lesser Stamina
			r(13485),	-- Lesser Versatility / CLASSIC: Lesser Spirit
			r(13378),	-- Minor Stamina
			r(13817),	-- Stamina
			r(13659),	-- Versatility / CLASSIC: Spirit
			r(20016),	-- Vitality / CLASSIC: Superior Spirit
		}),
		cat(700, {	-- Trinket
			r(15596),	-- Smoking Heart of the Mountain
		}),
		cat(698, {	-- Wands
			r(14807),	-- Greater Magic Wand
			r(14810),	-- Greater Mystic Wand
			r(14293),	-- Lesser Magic Wand
			r(14809),	-- Lesser Mystic Wand
		}),
		cat(695, {	-- Weapon Enchantments
			applyclassicphase(PHASE_THREE_ENCHANTS, r(23800)),	-- Agility (1H)
			applyclassicphase(PHASE_FIVE, r(27837)),	-- Agility (2H)
			r(20034),	-- Crusader
			r(13915),	-- Demonslaying
			r(13898),	-- Fiery Weapon
			r(13937),	-- Greater Impact
			r(13943),	-- Greater Striking
			r(22750),	-- Healing Power
			r(20029),	-- Icy Chill
			r(13695),	-- Impact
			r(13653),	-- Lesser Beastslayer
			r(13655),	-- Lesser Elemental Slayer
			r(13529),	-- Lesser Impact
			r(7793),	-- Lesser Intellect
			r(13503),	-- Lesser Striking
			r(13380),	-- Lesser Versatility / CLASSIC: Lesser Spirit
			r(20032, {["timeline"]={REMOVED_4_0_3, ADDED_10_1_5 }}),	-- Lifestealing
			r(20036),	-- Major Intellect
			r(20035),	-- Major Versatility / CLASSIC: Major Spirit
			applyclassicphase(PHASE_THREE_ENCHANTS, r(23804)),	-- Mighty Intellect
			applyclassicphase(PHASE_THREE_ENCHANTS, r(23803)),	-- Mighty Versatility / CLASSIC: Mighty Spirit
			r(7786),	-- Minor Beastslayer
			r(7745),	-- Minor Impact
			r(7788),	-- Minor Striking
			r(22749),	-- Spellpower
			applyclassicphase(PHASE_THREE_ENCHANTS, r(23799)),	-- Strength
			r(13693),	-- Striking
			r(20030, {["timeline"]={REMOVED_6_0_2}}),	-- Superior Impact
			r(20031),	-- Superior Striking
			r(20033),	-- Unholy Weapon
			applyevent(EVENTS.FEAST_OF_WINTER_VEIL, r(21931)),	-- Winter's Might
		}),
	}),
	applyclassicphase(TBC_PHASE_ONE, expansion(EXPANSION.TBC, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
		r(28029, {	-- Enchanting (Master)
			["timeline"]={ ADDED_2_0_1, REMOVED_8_0_1 },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #else
			["lvl"] = 50,
			-- #endif
			["rank"] = 5,
		}),
		r(264460, {["timeline"]={ADDED_8_0_1}}),	-- Outland Enchanting
		cat(681, {	-- Boot Enchantments
			r(34008),	-- Boar's Speed
			r(34007),	-- Cat's Swiftness
			r(27951),	-- Dexterity
			r(27950),	-- Fortitude
			r(27954),	-- Surefooted
			r(27948),	-- Vitality
		}),
		cat(682, {	-- Bracer Enchantments
			r(27899),	-- Brawn
			r(27914),	-- Fortitude
			-- #if AFTER WRATH
			r(27906),	-- Wrath: Greater Dodge / TBC: Major Defense
			-- #endif
			r(34002),	-- Lesser Assault
			-- #if BEFORE WRATH
			r(27906),	-- TBC: Major Defense / Wrath: Greater Dodge
			-- #endif
			r(34001),	-- Major Intellect
			-- #if BEFORE LEGION
			r(27913),	-- TBC: Restore Mana Prime / Legion: Versatility Prime
			-- #endif
			r(27917),	-- Spellpower
			r(27905),	-- Stats
			r(27911),	-- Superior Healing
			-- #if AFTER LEGION
			r(27913),	-- Legion: Versatility Prime / TBC: Restore Mana Prime
			-- #endif
		}),
		cat(683, {	-- Chest Enchantments
			applyclassicphase(TBC_PHASE_FIVE, r(46594, {["timeline"]={ADDED_2_4_0}})),	-- Dodge / TBC: Defense
			r(27957),	-- Exceptional Health
			r(27960),	-- Exceptional Stats
			r(33992),	-- Major Armor / TBC:Major Resilience
			r(33990),	-- Major Versatility / TBC: Major Spirit
			r(33991),	-- Versatility Prime / TBC: Restore Mana Prime
		}),
		cat(684, {	-- Cloak Enchantments
			r(34004),	-- Greater Agility
			r(34005, {["timeline"]={ADDED_2_0_1,REMOVED_5_0_4}}),	-- Greater Arcane Resistance
			-- #if AFTER WRATH
			applyclassicphase(TBC_PHASE_FIVE, r(47051, {["timeline"]={ADDED_2_4_0}})),	-- Greater Dodge / TBC: Steelweave
			-- #endif
			r(34006, {["timeline"]={ADDED_2_0_1,REMOVED_5_0_4}}),	-- Greater Shadow Resistance
			r(27961),	-- Major Armor
			r(27962, {["timeline"]={ADDED_2_0_1,REMOVED_5_0_4}}),	-- Major Resistance
			r(34003),	-- MOP: PvP Power / TBC: Spell Penetration
			-- #if BEFORE WRATH
			applyclassicphase(TBC_PHASE_FIVE, r(47051, {["timeline"]={ADDED_2_4_0}})),	-- TBC: Steelweave / Greater Dodge
			-- #endif
		}),
		cat(685, {	-- Glove Enchantments
			r(33996),	-- Assault
			r(33993),	-- Blasting
			r(33999),	-- Major Healing
			r(33997),	-- Major Spellpower
			r(33995),	-- Major Strength
			r(33994),	-- Precise Strikes / TBC: Spell Strike
		}),
		applyclassicphase(LEGION_PHASE_ONE, cat(705, sharedDataSelf({ ["timeline"] = { ADDED_7_0_3 } }, {	-- Illusions
			r(217641),	-- Tome of Illusions: Outland
		}))),
		cat(688, {	-- Oils
			r(28016),	-- Superior Mana Oil
			r(28019),	-- Superior Wizard Oil
		}),
		cat(689, {	-- Other
			r(28027),	-- Prismatic Sphere
			r(28028),	-- Void Sphere
		}),
		cat(680, {	-- Reagents
			r(28022),	-- Large Prismatic Shard
			r(42613, {["timeline"]={ADDED_2_2_0,REMOVED_7_3_5}}),	-- Nexus Transformation
			r(42615, {["timeline"]={ADDED_2_2_0}}),	-- Small Prismatic Shard
			applyclassicphase(TBC_PHASE_FIVE, r(45765, {["timeline"]={ADDED_2_4_0}})),	-- Void Shatter
		}),
		cat(445, sharedDataSelf({ ["timeline"] = { ADDED_2_0_1, REMOVED_6_0_2 } }, {	-- Ring Enchantments
			r(27926),	-- Healing Power
			r(27924),	-- Spellpower
			applyclassicphase(TBC_PHASE_THREE, r(27927)),	-- Stats
			r(27920),	-- Striking
		})),
		cat(697, sharedDataSelf({ ["timeline"] = { ADDED_2_0_1, REMOVED_5_0_4 } }, {	-- Rods
			r(32665),	-- Runed Adamantite Rod
			r(32664),	-- Runed Fel Iron Rod
			r(32667),	-- Runed Eternium Rod
		})),
		cat(687, {	-- Shield Enchantments
			-- #if AFTER WOD
			r(44383, {["timeline"]={ADDED_2_3_0}}),	-- Armor / TBC: Resilience
			-- #endif
			r(27945),	-- Intellect
			-- #if AFTER CATA
			r(27944),	-- Lesser Dodge / TBC: Tough Shield
			-- #endif
			r(34009),	-- Major Stamina
			-- #if AFTER CATA
			r(27946),	-- Parry / TBC: Shield Block
			-- #endif
			-- #if BEFORE WOD
			r(44383, {["timeline"]={ADDED_2_3_0}}),	-- Armor / TBC: Resilience
			-- #endif
			r(27947, {["timeline"]={ADDED_2_0_1,REMOVED_5_0_4}}),	-- Resistance
			-- #if BEFORE CATA
			r(27946),	-- TBC: Shield Block / Parry
			r(27944),	-- TBC: Tough Shield / Lesser Dodge
			-- #endif
		}),
		cat(686, {	-- Weapon Enchantments
			r(28004),	-- Battlemaster
			applyclassicphase(TBC_PHASE_THREE, applyevent(EVENTS.MIDSUMMER_FIRE_FESTIVAL, {
				["name"] = "Deathfrost",
				["recipeID"] = 46578,
			})),
			applyclassicphase(TBC_PHASE_FOUR, r(42974, {["timeline"]={ADDED_2_3_0}})),	-- Executioner
			applyclassicphase(TBC_PHASE_THREE, r(42620, {["timeline"]={ADDED_2_2_0}})),	-- Greater Agility
			r(27977),	-- Major Agility
			r(34010),	-- Major Healing
			r(27968),	-- Major Intellect
			r(27975),	-- Major Spellpower
			applyclassicphase(TBC_PHASE_THREE, r(27967, {["timeline"]={ADDED_2_1_0}})),	-- Major Striking
			r(27984),	-- Mongoose
			r(27972),	-- Potency
			r(27971),	-- Savagery
			r(27982),	-- Soulfrost
			r(28003),	-- Spellsurge
			r(27981),	-- Sunfire
		}),
	}))),
	applyclassicphase(WRATH_PHASE_ONE, expansion(EXPANSION.WRATH, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
		r(51313, {	-- Enchanting (Grand Master)
			["timeline"]={ ADDED_3_0_2, REMOVED_8_0_1 },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #else
			["lvl"] = 65,
			-- #endif
			["rank"] = 6,
		}),
		r(264462, {["timeline"]={ADDED_8_0_1}}),	-- Northrend Enchanting
		cat(673, {	-- Boot Enchantments
			r(60606, {["timeline"]={ADDED_3_1_0}}),	-- Assault
			r(60763, {["timeline"]={ADDED_3_1_0}}),	-- Greater Assault
			r(44528),	-- Greater Fortitude
			r(44508),	-- Greater Versatility / WOTLK: Greater Spirit
			r(44584),	-- Greater Vitality
			r(60623, {["timeline"]={ADDED_3_1_0}}),	-- Icewalker
			r(44589),	-- Superior Agility
			r(47901),	-- Tuskarr's Vitality
		}),
		cat(677, {	-- Bracer Enchantments
			r(60616, {["timeline"]={ADDED_3_1_0}}),	-- Assault / WOTLK: Striking
			r(44555),	-- Exceptional Intellect
			r(44575),	-- Greater Assault
			r(44635),	-- Greater Spellpower
			r(44616),	-- Greater Stats
			r(44598),	-- Haste / WOTLK: Expertise
			r(62256, {["timeline"]={ADDED_3_1_0}}),	-- Major Stamina
			r(44593),	-- Major Versatility / WOTLK: Major Spirit
			r(60767, {["timeline"]={ADDED_3_1_0}}),	-- Superior Spellpower
		}),
		cat(675, {	-- Chest Enchantments
			r(44588),	-- Exceptional Armor / WOTLK: Exceptional Resilience
			r(27958),	-- Exceptional Mana
			r(47766),	-- Greater Dodge / WOTLK: Greater Defense
			r(44509),	-- Greater Versatility / WOTLK: Greater Mana Restoration
			r(44492),	-- Mighty Health
			r(60692, {["timeline"]={ADDED_3_1_0}}),	-- Powerful Stats
			r(47900, {["timeline"]={ADDED_3_1_0}}),	-- Super Health
			r(44623),	-- Super Stats
		}),
		cat(676, {	-- Cloak Enchantments
			r(47898),	-- Greater Speed
			r(60663, {["timeline"]={ADDED_3_1_0}}),	-- Major Agility
			r(47672),	-- Mighty Stamina
			r(44582),	-- Minor Power
			r(44631),	-- Shadow Armor
			r(60609, {["timeline"]={ADDED_3_1_0}}),	-- Speed
			r(44500),	-- Superior Agility
			r(44596, {["timeline"]={ADDED_3_1_0,REMOVED_5_0_4}}),	-- Superior Arcane Resistance
			r(44591),	-- Superior Dodge / WOTLK: Titanweave
			r(44556, {["timeline"]={ADDED_3_1_0,REMOVED_5_0_4}}),	-- Superior Fire Resistance
			r(44483, {["timeline"]={ADDED_3_1_0,REMOVED_5_0_4}}),	-- Superior Frost Resistance
			r(44494, {["timeline"]={ADDED_3_1_0,REMOVED_5_0_4}}),	-- Superior Nature Resistance
			r(44590, {["timeline"]={ADDED_3_1_0,REMOVED_5_0_4}}),	-- Superior Shadow Resistance
			r(47899),	-- Wisdom
		}),
		cat(674, {	-- Glove Enchantments
			r(71692, {["timeline"]={ADDED_3_3_0}}),	-- Angler
			r(44625),	-- Armsman
			r(60668, {["timeline"]={ADDED_3_1_0}}),	-- Crusher
			r(44592),	-- Exceptional Spellpower
			r(44506),	-- Gatherer
			r(44513),	-- Greater Assault
			r(44484),	-- Haste / WOTLK: Expertise
			r(44529),	-- Major Agility
			r(44488),	-- Precision
		}),
		cat(672, sharedDataSelf({ ["timeline"] = { ADDED_3_2_2} }, {	-- Reagents
			applyclassicphase(WRATH_PHASE_THREE, r(69412)),	-- Abyssal Shatter
		})),
		cat(445, sharedDataSelf({ ["timeline"] = { ADDED_3_0_2, REMOVED_6_0_2 } }, {	-- Ring Enchantments
			r(44645),	-- Assault
			r(44636),	-- Greater Spellpower
			r(59636),	-- Stamina
		})),
		cat(697, sharedDataSelf({ ["timeline"] = { ADDED_2_0_1, REMOVED_5_0_4 } }, {	-- Rods
			r(60619),	-- Runed Titanium Rod
		})),
		applyclassicphase(LEGION_PHASE_ONE, cat(704, sharedDataSelf({ ["timeline"] = { ADDED_7_0_3} }, {	-- Illusions
			r(217644),	-- Tome of Illusions: Northrend
		}))),
		cat(679, {	-- Shield Enchantments
			r(44489),	-- Dodge / WOTLK: Defense
			r(60653, {["timeline"]={ADDED_3_1_0}}),	-- Greater Intellect
		}),
		cat(678, {	-- Weapon Enchantments
			r(59619, {["timeline"]={ADDED_3_1_0}}),	-- Accuracy
			r(59621, {["timeline"]={ADDED_3_1_0}}),	-- Berserking
			r(59625, {["timeline"]={ADDED_3_1_0}}),	-- Black Magic
			applyclassicphase(WRATH_PHASE_TWO, r(64441, {["timeline"]={ADDED_3_1_0}})),	-- Blade Ward
			applyclassicphase(WRATH_PHASE_TWO, r(64579, {["timeline"]={ADDED_3_1_0}})),	-- Blood Draining
			r(44633),	-- Exceptional Agility
			r(44629),	-- Exceptional Spellpower
			r(44510),	-- Exceptional Versatility / WOTLK: Exceptional Spirit
			r(44621),	-- Giant Slayer
			r(60621, {["timeline"]={ADDED_3_1_0}}),	-- Greater Potency
			r(44630),	-- Greater Savagery
			r(62948, {["timeline"]={ADDED_3_1_0}}),	-- Greater Spellpower
			r(44524),	-- Icebreaker
			r(44576),	-- Lifeward
			r(60691, {["timeline"]={ADDED_3_1_0}}),	-- Massacre
			r(60714, {["timeline"]={ADDED_3_1_0}}),	-- Mighty Spellpower
			r(44595),	-- Scourgebane
			r(62959, {["timeline"]={ADDED_3_1_0}}),	-- Spellpower
			r(60707, {["timeline"]={ADDED_3_1_0}}),	-- Superior Potency
		}),
	}))),
	applyclassicphase(CATA_PHASE_ONE, expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3 } }, {
		r(74258, {	-- Enchanting (Illustrious)
			["timeline"]={ ADDED_4_0_3, REMOVED_8_0_1 },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #endif
			["rank"] = 7,
		}),
		r(264464, {["timeline"]={ADDED_8_0_1}}),	-- Cataclysm Enchanting
		cat(668, {	-- Armor Enchantments
			r(96264),	-- Agility
			r(74252),	-- Assassin's Step
			r(74230),	-- Critical Strike
			r(74201),	-- Critical Strike
			r(74189),	-- Earthen Vitality
			r(74212),	-- Exceptional Strength
			r(74237),	-- Exceptional Versatility
			r(74231),	-- Exceptional Versatility
			r(74248),	-- Greater Critical Strike
			r(74247),	-- Greater Critical Strike
			r(74239),	-- Greater Haste
			r(74220),	-- Greater Haste
			r(74240),	-- Greater Intellect
			r(74255),	-- Greater Mastery
			r(74256),	-- Greater Speed
			r(74251),	-- Greater Stamina
			r(74199),	-- Haste
			r(74198),	-- Haste
			r(74202),	-- Intellect
			r(74253),	-- Lavawalker
			r(74192),	-- Lesser Power
			r(74213),	-- Major Agility
			r(96261),	-- Major Strength
			r(74238),	-- Mastery
			r(74132),	-- Mastery
			r(96262),	-- Mighty Intellect
			r(74214),	-- Mighty Armor / CATA: Mighty Resilience
			r(74191),	-- Mighty Stats
			r(74254),	-- Mighty Strength
			r(74250),	-- Peerless Stats
			r(74232),	-- Precision
			r(74236),	-- Precision
			r(74234),	-- Protection
			r(74193),	-- Speed
			r(74200),	-- Stamina
			r(74229),	-- Superior Dodge
		}),
		cat(703, sharedDataSelf({ ["timeline"] = { ADDED_7_0_3} }, {	-- Illusions
			r(217645),	-- Tome of Illusions: Cataclysm
			r(217649),	-- Tome of Illusions: Elemental Lords
		})),
		cat(671, {	-- Pets
			r(93841, {	-- Enchanted Lantern
				["races"] = HORDE_ONLY,
			}),
			r(93843, {	-- Magic Lamp
				["races"] = ALLIANCE_ONLY,
			}),
		}),
		cat(707, sharedDataSelf({ ["timeline"] = { ADDED_4_3_0 } }, {	-- Reagents
			r(104698),	-- Maelstrom Shatter
		})),
		cat(445, sharedDataSelf({ ["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 } }, {	-- Ring Enchantments
			r(74216),	-- Agility
			r(74218),	-- Greater Stamina
			r(74217),	-- Intellect
			r(74215),	-- Strength
		})),
		cat(697, sharedDataSelf({ ["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 } }, {	-- Rods
			r(92370),	-- Runed Elementium Rod
		})),
		cat(670, {	-- Shield and Off-Hand Enchantments
			r(74226),	-- Mastery
			r(74207),	-- Protection
			r(74235),	-- Superior Intellect
		}),
		cat(669, {	-- Weapon Enchantments
			r(74197),	-- Avalanche
			r(74211),	-- Elemental Slayer
			r(74225),	-- Heartsong
			r(74223),	-- Hurricane
			r(74246),	-- Landslide
			r(74195),	-- Mending
			r(95471),	-- Mighty Agility
			r(74242),	-- Power Torrent
			r(74244),	-- Windwalk
		}),
	}))),
	applyclassicphase(MOP_PHASE_LANDFALL, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
		r(110400, {	-- Enchanting (Zen Master)
			["timeline"]={ ADDED_5_0_4, REMOVED_8_0_1 },
			["collectible"] = false,
			["rank"] = 8,
		}),
		r(264467, {["timeline"]={ADDED_8_0_1}}),	-- Pandaria Enchanting
		cat(657, {	-- Armor Enchantments
			r(104398),	-- Accuracy
			r(104409),	-- Blurred Speed
			r(104390),	-- Exceptional Strength
			r(104395),	-- Glorious Stats
			r(104391),	-- Greater Agility
			r(103461, {["timeline"]={ADDED_5_0_4,REMOVED_6_0_2}}),	-- Greater Agility
			r(104407),	-- Greater Haste
			r(104416),	-- Greater Haste
			r(103462, {["timeline"]={ADDED_5_0_4,REMOVED_6_0_2}}),	-- Greater Intellect
			r(104408),	-- Greater Precision
			r(104401),	-- Greater Protection
			r(103463, {["timeline"]={ADDED_5_0_4,REMOVED_6_0_2}}),	-- Greater Stamina
			r(103465, {["timeline"]={ADDED_5_0_4,REMOVED_6_0_2}}),	-- Greater Strength
			r(104385),	-- Major Dodge
			r(104338),	-- Mastery
			r(104393),	-- Mighty Versatility
			r(104414),	-- Pandaren's Step
			r(104389),	-- Super Intellect
			r(104392),	-- Super Armor / MOP: Super Resilience
			r(104419),	-- Super Strength
			r(104404),	-- Superior Critical Strike
			r(104417),	-- Superior Haste
			r(104403),	-- Superior Intellect
			r(104420),	-- Superior Mastery
			r(104397),	-- Superior Stamina
		}),
		cat(702, sharedDataSelf({ ["timeline"] = { ADDED_7_0_3} }, {	-- Illusions
			r(217650),	-- Tome of Illusions: Pandaria
			r(217651),	-- Tome of Illusions: Secrets of the Shado-Pan
		})),
		cat(654, {	-- Reagents
			r(116498),	-- Ethereal Shard
			r(118238),	-- Ethereal Shatter
			r(118237),	-- Mysterious Diffusion
			r(116497),	-- Mysterious Essence
			r(116499),	-- Sha Crystal
			r(118239),	-- Sha Shatter
		}),
		cat(659, {	-- Shield and Off-Hand Enchantments
			r(130758),	-- Greater Parry
			r(104445),	-- Major Intellect
		}),
		cat(658, {	-- Weapon Enchantments
			r(104440),	-- Colossus
			r(104434),	-- Dancing Steel
			r(104430),	-- Elemental Force
			r(104427),	-- Jade Spirit
			r(104442),	-- River's Song
			r(104425),	-- Windsong
		}),
	}))),
	applyclassicphase(WOD_PHASE_ONE, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
		r(158716, {	-- Enchanting (Draenor Master)
			["timeline"]={ ADDED_6_0_2, REMOVED_8_0_1 },
			["collectible"] = false,
		}),
		r(264469, {["timeline"]={ADDED_8_0_1}}),	-- Draenor Enchanting
		cat(349, {	-- Cloak
			r(158877),	-- Breath of Critical Strike
			r(158878),	-- Breath of Haste
			r(158879),	-- Breath of Mastery
			r(158880, {["timeline"]={ADDED_6_0_2,REMOVED_7_0_3}}),	-- Breath of Multistrike
			r(158881),	-- Breath of Versatility
			r(158884),	-- Gift of Critical Strike
			r(158885),	-- Gift of Haste
			r(158886),	-- Gift of Mastery
			r(158887, {["timeline"]={ADDED_6_0_2,REMOVED_7_0_3}}),	-- Gift of Multistrike
			r(158889),	-- Gift of Versatility
		}),
		cat(653, {	-- Illusions
			["description"] = "Talk to your Garrison Follower to learn these. If they do not immediately cache, try relogging and then talking to them again.\n\n - Crieve",
			["groups"] = {
				r(217655),	-- Tome of Illusions: Draenor
			},
		}),
		cat(399, sharedDataSelf({["u"] = UNLEARNABLE},{	-- Illusions
			r(173716),	-- Illusion: Agility
			r(173717),	-- Illusion: Battlemaster
			r(173718),	-- Illusion: Berserking
			r(174979),	-- Illusion: Blood Draining
			r(173720),	-- Illusion: Crusader
			r(175076, {	-- Illusion: Earthliving
				["classes"] = { SHAMAN },
			}),
			r(173721),	-- Illusion: Elemental Force
			r(173722),	-- Illusion: Executioner
			r(173723),	-- Illusion: Fiery Weapon
			r(175072, {	-- Illusion: Flametongue
				["classes"] = { SHAMAN },
			}),
			r(175071, {	-- Illusion: Frostbrand
				["classes"] = { SHAMAN },
			}),
			r(173719),	-- Illusion: Greater Spellpower
			r(173724),	-- Illusion: Hidden
			r(175070),	-- Illusion: Jade Spirit
			r(173725),	-- Illusion: Landslide
			r(173726),	-- Illusion: Lifestealing
			r(175085),	-- Illusion: Mending
			r(173727),	-- Illusion: Mongoose
			r(173728, {	-- Illusion: Poisoned
				["classes"] = { ROGUE },
			}),
			r(173729),	-- Illusion: Power Torrent
			r(175086),	-- Illusion: River's Song
			r(175078, {	-- Illusion: Rockbiter
				["classes"] = { SHAMAN },
			}),
			r(173730),	-- Illusion: Spellsurge
			r(173731),	-- Illusion: Striking
			r(173732),	-- Illusion: Unholy
			r(175074, {	-- Illusion: Windfury
				["classes"] = { SHAMAN },
			}),
		})),
		cat(350, {	-- Neck
			r(158892),	-- Breath of Critical Strike
			r(158893),	-- Breath of Haste
			r(158894),	-- Breath of Mastery
			r(158895, {["timeline"]={ADDED_6_0_2,REMOVED_7_0_3}}),	-- Breath of Multistrike
			r(158896),	-- Breath of Versatility
			r(158899),	-- Gift of Critical Strike
			r(158900),	-- Gift of Haste
			r(158901),	-- Gift of Mastery
			r(158902, {["timeline"]={ADDED_6_0_2,REMOVED_7_0_3}}),	-- Gift of Multistrike
			r(158903),	-- Gift of Versatility
		}),
		cat(354, {	-- Other
			r(162948),	-- Enchanted Dust
		}),
		cat(409, {	-- Reagents and Research
			r(169091),	-- Luminous Shard
			r(177043),	-- Secrets of Draenor Enchanting
			r(182129, {["timeline"]={ADDED_6_1_0}}),	-- Temporal Binding
			r(169092),	-- Temporal Crystal
		}),
		cat(404, sharedData({["u"] = UNLEARNABLE},{	-- Removal
			recipe(177355),	-- Remove Illusion
		})),
		cat(351, {	-- Ring
			r(158907),	-- Breath of Critical Strike
			r(158908),	-- Breath of Haste
			r(158909),	-- Breath of Mastery
			r(158910, {["timeline"]={ADDED_6_0_2,REMOVED_7_0_3}}),	-- Breath of Multistrike
			r(158911),	-- Breath of Versatility
			r(158914),	-- Gift of Critical Strike
			r(158915),	-- Gift of Haste
			r(158916),	-- Gift of Mastery
			r(158917, {["timeline"]={ADDED_6_0_2,REMOVED_7_0_3}}),	-- Gift of Multistrike
			r(158918),	-- Gift of Versatility
		}),
		cat(352, {	-- Weapon
			r(159674),	-- Mark of Blackrock
			r(173323),	-- Mark of Bleeding Hollow
			r(159673),	-- Mark of Shadowmoon
			r(159672),	-- Mark of the Frostwolf
			r(159236),	-- Mark of the Shattered Hand
			r(159235),	-- Mark of the Thunderlord
			r(159671),	-- Mark of Warsong
		}),
	}))),
	applyclassicphase(LEGION_PHASE_ONE, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
		r(195096, {	-- Enchanting (Legion Master)
			["timeline"]={ ADDED_7_0_3, REMOVED_8_0_1 },
			["collectible"] = false,
		}),
		r(264471, {["timeline"]={ADDED_8_0_1}}),	-- Legion Enchanting
		cat(446, {	-- Cloak Enchantments
			r(190878),	-- Binding of Agility [Rank 1]
			r(191004),	-- Binding of Agility [Rank 2]
			r(191021),	-- Binding of Agility [Rank 3]
			r(190879),	-- Binding of Intellect [Rank 1]
			r(191005),	-- Binding of Intellect [Rank 2]
			r(191022),	-- Binding of Intellect [Rank 3]
			r(190877),	-- Binding of Strength [Rank 1]
			r(191003),	-- Binding of Strength [Rank 2]
			r(191020),	-- Binding of Strength [Rank 3]
			r(190875),	-- Word of Agility [Rank 1]
			r(191001),	-- Word of Agility [Rank 2]
			r(191018),	-- Word of Agility [Rank 3]
			r(190876),	-- Word of Intellect [Rank 1]
			r(191002),	-- Word of Intellect [Rank 2]
			r(191019),	-- Word of Intellect [Rank 3]
			r(190874),	-- Word of Strength [Rank 1]
			r(191000),	-- Word of Strength [Rank 2]
			r(191017),	-- Word of Strength [Rank 3]
		}),
		cat(506, {	-- Disenchant
			r(252106, {["timeline"]={ADDED_7_3_0}}),	-- Chaos Shatter
			r(224199),	-- Ley Shatter
		}),
		cat(448, {	-- Glove Enchantments
			r(190988),	-- Legion Herbalism
			r(190989),	-- Legion Mining
			r(190990),	-- Legion Skinning
			r(190991),	-- Legion Surveying
		}),
		cat(444, {	-- Neck Enchantments
			r(228408),	-- Mark of the Ancient Priestess [Rank 1]
			r(228409),	-- Mark of the Ancient Priestess [Rank 2]
			r(228410),	-- Mark of the Ancient Priestess [Rank 3]
			r(190892),	-- Mark of the Claw [Rank 1]
			r(191006),	-- Mark of the Claw [Rank 2]
			r(191023),	-- Mark of the Claw [Rank 3]
			r(235698, {["timeline"]={ADDED_7_1_5}}),	-- Mark of the Deadly [Rank 1]
			r(235702, {["timeline"]={ADDED_7_1_5}}),	-- Mark of the Deadly [Rank 2]
			r(235706, {["timeline"]={ADDED_7_1_5}}),	-- Mark of the Deadly [Rank 3]
			r(190893),	-- Mark of the Distant Army [Rank 1]
			r(191007),	-- Mark of the Distant Army [Rank 2]
			r(191024),	-- Mark of the Distant Army [Rank 3]
			r(228402),	-- Mark of the Heavy Hide [Rank 1]
			r(228403),	-- Mark of the Heavy Hide [Rank 2]
			r(228404),	-- Mark of the Heavy Hide [Rank 3]
			r(190894),	-- Mark of the Hidden Satyr [Rank 1]
			r(191008),	-- Mark of the Hidden Satyr [Rank 2]
			r(191025),	-- Mark of the Hidden Satyr [Rank 3]
			r(235695, {["timeline"]={ADDED_7_1_5}}),	-- Mark of the Master [Rank 1]
			r(235699, {["timeline"]={ADDED_7_1_5}}),	-- Mark of the Master [Rank 2]
			r(235703, {["timeline"]={ADDED_7_1_5}}),	-- Mark of the Master [Rank 3]
			r(235697, {["timeline"]={ADDED_7_1_5}}),	-- Mark of the Quick [Rank 1]
			r(235701, {["timeline"]={ADDED_7_1_5}}),	-- Mark of the Quick [Rank 2]
			r(235705, {["timeline"]={ADDED_7_1_5}}),	-- Mark of the Quick [Rank 3]
			r(228405),	-- Mark of the Trained Soldier [Rank 1]
			r(228406),	-- Mark of the Trained Soldier [Rank 2]
			r(228407),	-- Mark of the Trained Soldier [Rank 3]
			r(235696, {["timeline"]={ADDED_7_1_5}}),	-- Mark of the Versatile [Rank 1]
			r(235700, {["timeline"]={ADDED_7_1_5}}),	-- Mark of the Versatile [Rank 2]
			r(235704, {["timeline"]={ADDED_7_1_5}}),	-- Mark of the Versatile [Rank 3]
		}),
		cat(490, {	-- Relics
			r(209509),	-- Immaculate Fibril
			r(209507),	-- Soul Fibril
		}),
		cat(445, {	-- Ring Enchantments
			r(190870),	-- Binding of Critical Strike [Rank 1]
			r(190996),	-- Binding of Critical Strike [Rank 2]
			r(191013),	-- Binding of Critical Strike [Rank 3]
			r(190871),	-- Binding of Haste [Rank 1]
			r(190997),	-- Binding of Haste [Rank 2]
			r(191014),	-- Binding of Haste [Rank 3]
			r(190872),	-- Binding of Mastery [Rank 1]
			r(190998),	-- Binding of Mastery [Rank 2]
			r(191015),	-- Binding of Mastery [Rank 3]
			r(190873),	-- Binding of Versatility [Rank 1]
			r(190999),	-- Binding of Versatility [Rank 2]
			r(191016),	-- Binding of Versatility [Rank 3]
			r(190866),	-- Word of Critical Strike [Rank 1]
			r(190992),	-- Word of Critical Strike [Rank 2]
			r(191009),	-- Word of Critical Strike [Rank 3]
			r(190867),	-- Word of Haste [Rank 1]
			r(190993),	-- Word of Haste [Rank 2]
			r(191010),	-- Word of Haste [Rank 3]
			r(190868),	-- Word of Mastery [Rank 1]
			r(190994),	-- Word of Mastery [Rank 2]
			r(191011),	-- Word of Mastery [Rank 3]
			r(190869),	-- Word of Versatility [Rank 1]
			r(190995),	-- Word of Versatility [Rank 2]
			r(191012),	-- Word of Versatility [Rank 3]
		}),
		cat(447, {	-- Shoulder Enchantments
			r(190954),	-- Boon of the Scavenger
		}),
		cat(449, {	-- Toys, Pets, and Mounts
			r(191074),	-- Enchanted Cauldron
			r(191076),	-- Enchanted Pen
			r(191075),	-- Enchanted Torch
			r(191078),	-- Leylight Brazier
		}),
	}))),
}));

-- Enchanting Item Database
local itemDB = ItemDBConditional;

-- Recipe Cache (for Validation)
local recipeCache, recipeCacheU = {}, {};
local function cacheRecipes(g)
	if g and type(g) == "table" then
		if g.groups then cacheRecipes(g.groups); end
		if g.g then cacheRecipes(g.g); end
		local spellID = g.spellID or g.recipeID;
		if spellID then
			recipeCache[spellID] = true;
			if g.u then recipeCacheU[spellID] = g.u; end
		end
		for i,o in ipairs(g) do
			cacheRecipes(o);
		end
	end
end
cacheRecipes(_.Professions);

-- Item Recipe Database
local itemrecipe = function(name, itemID, spellID, phase, timeline)
	local o = { ["itemID"] = itemID, ["spellID"] = spellID };
	if type(phase) == "string" then
		timeline = phase;
		phase = nil;
	end
	if timeline then
		-- Ensure that the timeline is in a table format.
		if type(timeline) == "string" then timeline = { timeline }; end
		if type(timeline) == "table" then o.timeline = timeline; end
	end
	if name then
		-- Ensure that the name is in a string format.
		if type(name) == "table" then
			-- #if AFTER CATA
			name = name[2];
			-- #else
			name = name[1];
			-- #endif
		end
		o.name = name;
	end
	itemDB[itemID] = phase and applyclassicphase(phase, o) or o;

	-- Ensure that this recipe's spellID exists in the profession database.
	if recipeCache and type(timeline) ~= "boolean" then
		if recipeCache[o.spellID] then
			-- Grab the phase from the cache.
			local u = recipeCacheU[o.spellID];
			if u then
				if o.u ~= u and u ~= phase then
					print("ITEM RECIPE MISSING U: ", name, o.spellID, u, o.u);
					o.u = u;
				end
			elseif o.u ~= u then
				print("RECIPE MISSING U: ", name, o.spellID, o.u);
			end
		else
			print("MISSING RECIPE", name, o.spellID);
		end
	end
	return o;
end

-- Classic Recipes
itemrecipe("Formula: Enchant Chest - Minor Mana", 6342, 7443);
itemrecipe("Formula: Enchant Bracer - Minor Spirit", 6344, 7766);
itemrecipe("Formula: Enchant Chest - Lesser Mana", 6346, 7776);
itemrecipe("Formula: Enchant Bracer - Minor Strength", 6347, 7782);
itemrecipe("Formula: Enchant Weapon - Minor Beastslayer", 6348, 7786);
itemrecipe("Formula: Enchant 2H Weapon - Lesser Intellect", 6349, 7793);
itemrecipe("Formula: Enchant Bracer - Lesser Spirit", 6375, 7859);
itemrecipe("Formula: Enchant Boots - Minor Agility", 6377, 7867);
itemrecipe("Formula: Enchant 2H Weapon - Lesser Spirit", 11038, 13380);
itemrecipe("Formula: Enchant Cloak - Minor Agility", 11039, 13419);
itemrecipe("Formula: Enchant Shield - Lesser Protection", 11081, 13464);
itemrecipe("Formula: Enchant Cloak - Lesser Shadow Resistance", 11098, 13522);
itemrecipe("Formula: Enchant Bracer - Lesser Strength", 11101, 13536);
itemrecipe("Formula: Enchant Gloves - Mining", 11150, 13612);
itemrecipe("Formula: Enchant Gloves - Herbalism", 11151, 13617);
itemrecipe("Formula: Enchant Gloves - Fishing", 11152, 13620);
itemrecipe("Formula: Enchant Bracer - Lesser Deflection", 11163, 13646);
itemrecipe("Formula: Enchant Weapon - Lesser Beastslayer", 11164, 13653);
itemrecipe("Formula: Enchant Weapon - Lesser Elemental Slayer", 11165, 13655);
itemrecipe("Formula: Enchant Gloves - Skinning", 11166, 13698);
itemrecipe("Formula: Enchant Boots - Lesser Spirit", 11167, 13687);
itemrecipe("Formula: Enchant Shield - Lesser Block", 11168, 13689);
itemrecipe("Formula: Enchant Shield - Stamina", 11202, 13817);
itemrecipe("Formula: Enchant Gloves - Advanced Mining", 11203, 13841);
itemrecipe("Formula: Enchant Bracer - Greater Spirit", 11204, 13846);
itemrecipe("Formula: Enchant Gloves - Advanced Herbalism", 11205, 13868);
itemrecipe("Formula: Enchant Cloak - Lesser Agility", 11206, 13882);
itemrecipe("Formula: Enchant Weapon - Fiery Weapon", 11207, 13898);
itemrecipe("Formula: Enchant Weapon - Demonslaying", 11208, 13915);
itemrecipe("Formula: Enchant Bracer - Deflection", 11223, 13931);
itemrecipe("Formula: Enchant Shield - Frost Resistance", 11224, 13933);
itemrecipe("Formula: Enchant Bracer - Greater Stamina", 11225, 13945);
itemrecipe("Formula: Enchant Gloves - Riding Skill", 11226, 13947);
itemrecipe("Formula: Smoking Heart of the Mountain", 11813, 15596);
itemrecipe("Formula: Enchant Bracer - Greater Intellect", 16214, 20008);
itemrecipe("Formula: Enchant Boots - Greater Stamina", 16215, 20020);
itemrecipe("Formula: Enchant Cloak - Greater Resistance", 16216, 20014);
itemrecipe("Formula: Enchant Shield - Greater Stamina", 16217, 20017);
itemrecipe("Formula: Enchant Bracer - Superior Spirit", 16218, 20009);
itemrecipe("Formula: Enchant Gloves - Greater Agility", 16219, 20012);
itemrecipe("Formula: Enchant Boots - Spirit", 16220, 20024);
itemrecipe("Formula: Enchant Chest - Major Health", 16221, 20026);
itemrecipe("Formula: Enchant Shield - Superior Spirit", 16222, 20016);
itemrecipe("Formula: Enchant Weapon - Icy Chill", 16223, 20029);
itemrecipe("Formula: Enchant Cloak - Superior Defense", 16224, 20015);
itemrecipe("Formula: Enchant Chest - Major Mana", 16242, 20028);
itemrecipe("Formula: Runed Arcanite Rod", 16243, 20051);
itemrecipe("Formula: Enchant Gloves - Greater Strength", 16244, 20013);
itemrecipe("Formula: Enchant Boots - Greater Agility", 16245, 20023);
itemrecipe("Formula: Enchant Bracer - Superior Strength", 16246, 20010);
itemrecipe("Formula: Enchant 2H Weapon - Superior Impact", 16247, 20030);
itemrecipe("Formula: Enchant Weapon - Unholy", 16248, 20033);
itemrecipe("Formula: Enchant 2H Weapon - Major Intellect", 16249, 20036);
itemrecipe("Formula: Enchant Weapon - Superior Striking", 16250, 20031);
itemrecipe("Formula: Enchant Bracer - Superior Stamina", 16251, 20011);
itemrecipe("Formula: Enchant Weapon - Crusader", 16252, 20034);
itemrecipe("Formula: Enchant Chest - Greater Stats", 16253, 20025);
itemrecipe("Formula: Enchant Weapon - Lifestealing", 16254, 20032);
itemrecipe("Formula: Enchant 2H Weapon - Major Spirit", 16255, 20035);
itemrecipe("Formula: Enchant Weapon - Spell Power", 18259, 22749);
itemrecipe("Formula: Enchant Weapon - Healing Power", 18260, 22750);

itemrecipe("Formula: Enchant Weapon - Strength", 19444, 23799, PHASE_THREE_ENCHANTS);
itemrecipe("Formula: Enchant Weapon - Agility", 19445, 23800, PHASE_THREE_ENCHANTS);
itemrecipe("Formula: Enchant Bracer - Mana Regeneration", 19446, 23801, PHASE_THREE_ENCHANTS);
itemrecipe("Formula: Enchant Bracer - Healing", 19447, 23802, PHASE_THREE_ENCHANTS);
itemrecipe("Formula: Enchant Weapon - Mighty Spirit", 19448, 23803, PHASE_THREE_ENCHANTS);
itemrecipe("Formula: Enchant Weapon - Mighty Intellect", 19449, 23804, PHASE_THREE_ENCHANTS);

itemrecipe("Formula: Enchant Gloves - Threat", 20726, 25072, PHASE_FIVE);
itemrecipe("Formula: Enchant Gloves - Shadow Power", 20727, 25073, PHASE_FIVE);
itemrecipe("Formula: Enchant Gloves - Frost Power", 20728, 25074, PHASE_FIVE);
itemrecipe("Formula: Enchant Gloves - Fire Power", 20729, 25078, PHASE_FIVE);
itemrecipe("Formula: Enchant Gloves - Healing Power", 20730, 25079, PHASE_FIVE);
itemrecipe("Formula: Enchant Gloves - Superior Agility", 20731, 25080, PHASE_FIVE);
itemrecipe("Formula: Enchant Cloak - Greater Fire Resistance", 20732, 25081, PHASE_FIVE);
itemrecipe("Formula: Enchant Cloak - Greater Nature Resistance", 20733, 25082, PHASE_FIVE);
itemrecipe("Formula: Enchant Cloak - Stealth", 20734, 25083, PHASE_FIVE);
itemrecipe("Formula: Enchant Cloak - Subtlety", 20735, 25084, PHASE_FIVE);
itemrecipe("Formula: Enchant Cloak - Dodge", 20736, 25086, PHASE_FIVE);
itemrecipe("Formula: Minor Mana Oil", 20752, 25125, PHASE_FIVE);
itemrecipe("Formula: Lesser Wizard Oil", 20753, 25126, PHASE_FIVE_RECIPES);
itemrecipe("Formula: Lesser Mana Oil", 20754, 25127, PHASE_FIVE_RECIPES);
itemrecipe("Formula: Wizard Oil", 20755, 25128, PHASE_FIVE);
itemrecipe("Formula: Brilliant Wizard Oil", 20756, 25129, PHASE_FIVE);
itemrecipe("Formula: Brilliant Mana Oil", 20757, 25130, PHASE_FIVE);
itemrecipe("Formula: Minor Wizard Oil", 20758, 25124, PHASE_FIVE);
itemrecipe("Formula: Enchant 2H Weapon - Agility", 22392, 27837, PHASE_FIVE);

applyevent(EVENTS.FEAST_OF_WINTER_VEIL, itemrecipe("Formula: Enchant Weapon - Winter's Might", 17725, 21931));

-- #if AFTER TBC
-- TBC Recipes
itemrecipe("Formula: Enchant Bracer - Major Defense", 22530, 27906, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Bracer - Superior Healing", 22531, 27911, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Bracer - Restore Mana Prime", 22532, 27913, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Bracer - Fortitude", 22533, 27914, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Bracer - Spellpower", 22534, 27917, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Ring - Striking", 22535, 27920, TBC_PHASE_ONE, REMOVED_6_0_2);
itemrecipe("Formula: Enchant Ring - Spellpower", 22536, 27924, TBC_PHASE_ONE, REMOVED_6_0_2);
itemrecipe("Formula: Enchant Ring - Healing Power", 22537, 27926, TBC_PHASE_ONE, REMOVED_6_0_2);
itemrecipe("Formula: Enchant Ring - Stats", 22538, 27927, TBC_PHASE_THREE, REMOVED_6_0_2);
itemrecipe("Formula: Enchant Ring - Stats", 186683, 27927, TBC_PHASE_THREE, REMOVED_6_0_2);
itemrecipe("Formula: Enchant Shield - Intellect", 22539, 27945, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Shield - Shield Block", 22540, 27946, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Shield - Resistance", 22541, 27947, TBC_PHASE_ONE, REMOVED_5_0_4);
itemrecipe("Formula: Enchant Boots - Vitality", 22542, 27948, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Boots - Fortitude", 22543, 27950, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Boots - Dexterity", 22544, 27951, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Boots - Surefooted", 22545, 27954, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Chest - Exceptional Stats", 22547, 27960, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Cloak - Major Resistance", 22548, 27962, TBC_PHASE_ONE, REMOVED_5_0_4);
itemrecipe("Formula: Enchant Weapon - Major Intellect", 22551, 27968, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Major Striking", 22552, 27967, TBC_PHASE_THREE);
itemrecipe("Formula: Enchant Weapon - Potency", 22553, 27972, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant 2H Weapon - Savagery", 22554, 27971, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Major Spellpower", 22555, 27975, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant 2H Weapon - Major Agility", 22556, 27977, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Battlemaster", 22557, 28004, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Spellsurge", 22558, 28003, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Mongoose", 22559, 27984, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Sunfire", 22560, 27981, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Soulfrost", 22561, 27982, TBC_PHASE_ONE);
itemrecipe("Formula: Superior Mana Oil", 22562, 28016, TBC_PHASE_ONE, ADDED_2_0_1);
itemrecipe("Formula: Superior Wizard Oil", 22563, 28019, TBC_PHASE_ONE, ADDED_2_0_1);
itemrecipe("Formula: Large Prismatic Shard", 22565, 28022, TBC_PHASE_ONE, ADDED_2_0_1);
itemrecipe("Formula: Enchant Bracer - Superior Healing", 24000, 27911, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Chest - Exceptional Stats", 24003, 27960, TBC_PHASE_ONE);
itemrecipe("Formula: Runed Adamantite Rod", 25848, 32665, TBC_PHASE_ONE, REMOVED_5_0_4);
itemrecipe("Formula: Runed Eternium Rod", 25849, 32667, TBC_PHASE_ONE, REMOVED_5_0_4);

itemrecipe("Formula: Enchant Chest - Major Resilience", 28270, 33992, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Gloves - Spell Strike", 28271, 33994, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Gloves - Major Spellpower", 28272, 33997, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Gloves - Major Healing", 28273, 33999, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Cloak - Spell Penetration", 28274, 34003, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Cloak - Greater Arcane Resistance", 28276, 34005, TBC_PHASE_ONE, REMOVED_5_0_4);
itemrecipe("Formula: Enchant Cloak - Greater Shadow Resistance", 28277, 34006, TBC_PHASE_ONE, REMOVED_5_0_4);
itemrecipe("Formula: Enchant Boots - Cat's Swiftness", 28279, 34007, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Boots - Boar's Speed", 28280, 34008, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Major Healing", 28281, 34010, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Shield - Major Stamina", 28282, 34009, TBC_PHASE_ONE);
itemrecipe("Formula: Enchant Cloak - Dodge", 33148, 25086, TBC_PHASE_ONE, true);
itemrecipe("Formula: Enchant Cloak - Stealth", 33149, 25083, TBC_PHASE_ONE, true);
itemrecipe("Formula: Enchant Cloak - Subtlety", 33150, 25084, TBC_PHASE_ONE, true);
itemrecipe("Formula: Enchant Cloak - Subtlety", 33151, 25084, TBC_PHASE_ONE, true);
itemrecipe("Formula: Enchant Gloves - Superior Agility", 33152, 25080, TBC_PHASE_ONE, true);
itemrecipe("Formula: Enchant Gloves - Threat", 33153, 25072, TBC_PHASE_ONE, true);
itemrecipe("Formula: Enchant Weapon - Greater Agility", 33165, 42620, TBC_PHASE_THREE);

applyevent(EVENTS.MIDSUMMER_FIRE_FESTIVAL, itemrecipe("Formula: Enchant Weapon - Deathfrost", 35498, 46578, TBC_PHASE_THREE));
itemrecipe("Formula: Enchant Weapon - Executioner", 33307, 42974, TBC_PHASE_FOUR);

itemrecipe("Formula: Void Shatter", 34872, 45765, TBC_PHASE_FIVE);
itemrecipe("Formula: Enchant Boots - Boar's Speed", 35297, 34008, TBC_PHASE_FIVE, true);
itemrecipe("Formula: Enchant Boots - Vitality", 35298, 27948, TBC_PHASE_FIVE, true);
itemrecipe("Formula: Enchant Boots - Cat's Swiftness", 35299, 34007, TBC_PHASE_FIVE, true);
itemrecipe("Formula: Enchant Chest - Defense", 35500, 46594, TBC_PHASE_FIVE);
itemrecipe("Formula: Enchant Cloak - Steelweave", 35756, 47051, TBC_PHASE_FIVE);
-- #endif

-- #if AFTER WRATH
-- Wrath Recipes
itemrecipe("Formula: Enchant 2H Weapon - Massacre", 44483, 60691, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Boots - Greater Assault", 44490, 60763, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Boots - Superior Agility", 37341, 44589, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Boots - Tuskarr's Vitality", 44491, 47901, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Bracer - Expertise", 37346, 44598, WRATH_PHASE_ONE);	-- NYI, taught by trainer
itemrecipe("Formula: Enchant Bracer - Greater Stats", 37337, 44616, WRATH_PHASE_ONE);	-- NYI, taught by trainer
itemrecipe("Formula: Enchant Bracer - Major Stamina", 44944, 62256, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Bracer - Superior Spellpower", 44498, 60767, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Bracers - Greater Assault", 44484, 44575, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Bracers - Major Spirit / Formula: Enchant Bracer - Major Versatility [CATA+]", 37326, 44593, WRATH_PHASE_ONE);	-- NYI, taught by trainer
itemrecipe("Formula: Enchant Chest - Exceptional Resilience", 37340, 44588, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Chest - Greater Defense / Formula: Enchant Chest - Greater Dodge [CATA+]", 37336, 47766, WRATH_PHASE_ONE);	-- NYI, taught by trainer
itemrecipe("Formula: Enchant Chest - Powerful Stats", 44489, 60692, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Cloak - Greater Speed", 44472, 47898, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Cloak - Haste", 37348, 47898, WRATH_PHASE_ONE);	-- NYI, taught by trainer
itemrecipe("Formula: Enchant Cloak - Mighty Armor / Formula: Enchant Cloak - Mighty Stamina [CATA+]", 44471, 47672, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Cloak - Shadow Armor", 37349, 44631, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Cloak - Superior Agility", 37335, 44500, WRATH_PHASE_ONE);	-- NYI, taught by trainer
itemrecipe("Formula: Enchant Cloak - Superior Arcane Resistance", 37330, 44596, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Cloak - Superior Fire Resistance", 37331, 44556, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Cloak - Superior Frost Resistance", 37332, 44483, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Cloak - Superior Nature Resistance", 37333, 44494, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Cloak - Superior Shadow Resistance", 37334, 44590, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Cloak - Titanweave / Formula: Enchant Cloak - Superior Dodge [CATA+]", 37347, 44591, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Cloak - Wisdom", 44488, 47899, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Gloves - Angler", 50406, 71692, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Gloves - Armsman", 44485, 44625, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Gloves - Greater Assault", 37345, 44513, WRATH_PHASE_ONE);	-- NYI, taught by trainer
--itemrecipe("Formula: Enchant Gloves - Greater Blasting", 37342, 44612, WRATH_PHASE_ONE);	-- NYI (completely)
itemrecipe("Formula: Enchant Staff - Greater Spellpower", 45059, 62948, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Accuracy", 44496, 59619, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Berserking", 44492, 59621, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Black Magic", 44495, 59625, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Blade Ward", 46027, 64441, WRATH_PHASE_TWO);
itemrecipe("Formula: Enchant Weapon - Blood Draining", 46348, 64579, WRATH_PHASE_TWO);
itemrecipe("Formula: Enchant Weapon - Exceptional Agility", 37343, 44633, WRATH_PHASE_ONE);	-- NYI, taught by trainer
-- itemrecipe("Formula: Enchant Weapon - Exceptional Intellect", 37328, 44497, WRATH_PHASE_ONE);	-- NYI (at all)
itemrecipe("Formula: Enchant Weapon - Exceptional Spirit / Formula: Enchant Weapon - Exceptional Versatility [CATA+]", 37329, 44510, WRATH_PHASE_ONE);	-- NYI, taught by trainer
itemrecipe("Formula: Enchant Weapon - Giant Slayer", 37339, 44621, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Greater Savagery", 37338, 44630, WRATH_PHASE_ONE);	-- NYI, taught by trainer
itemrecipe("Formula: Enchant Weapon - Icebreaker", 37344, 44524, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Lifeward", 44494, 44576, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Mighty Spellpower", 44487, 60714, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Scourgebane", 44473, 44595, WRATH_PHASE_ONE);
itemrecipe("Formula: Enchant Weapon - Superior Potency", 44486, 60707, WRATH_PHASE_ONE);
--itemrecipe("Formula: Enchant Weapon - Titanguard", 44945, 62257, WRATH_PHASE_ONE);	-- NYI (removed)
itemrecipe("Formula: Smoking Heart of the Mountain", 45050, 15596);
-- #endif

-- These items never made it in.
recipeCache = nil;	-- Invalidate the cache.
root(ROOTS.NeverImplemented, {
	filter(RECIPES, {
		itemrecipe("Formula: Imbue Chest - Minor Spirit", 6222);
		itemrecipe("Formula: Imbue Chest - Spirit", 6343);
		itemrecipe("Formula: Imbue Cloak - Protection", 6345);
		itemrecipe("Formula: Enchant Boots - Minor Stamina", 6376);
		-- #if AFTER TBC
		itemrecipe("Formula: Enchant Chest - Exceptional Mana", 22546);
		itemrecipe("Formula: Arcane Dust", 22564);
		recipe(28021),	-- Arcane Dust
		-- #endif
	}),
});
-- #endif
