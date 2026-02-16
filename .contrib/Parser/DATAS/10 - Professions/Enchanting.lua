-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
local DF_ENCHANTING_KNOWLEDGE = 2030;
local TWW_ENCHANTING_KNOWLEDGE = 2787;
local MID_ENCHANTING_KNOWLEDGE = 3152;
root(ROOTS.Professions, prof(ENCHANTING, bubbleDownSelf({ ["requireSkill"] = ENCHANTING }, {
	n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_10_1_7 } }, {
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
			["altQuests"] = { 36255 },	-- Enchanted Highmaul Bracer (H)
			["provider"] = { "i", 115281 },	-- Enchanted Highmaul Bracer
			["maps"] = {
				FROSTFIRE_RIDGE,
				GORGROND,
				DRAENOR_NAGRAND,
				DRAENOR_SHADOWMOON_VALLEY,
				SPIRES_OF_ARAK,
				TALADOR,
			},
			["races"] = ALLIANCE_ONLY,
		}),
		q(36255, {	-- Enchanted Highmaul Bracer (H)
			["description"] = "This item can drop from any Draenor mob.",
			["altQuests"] = { 36308 },	-- Enchanted Highmaul Bracer (A)
			["provider"] = { "i", 115008 },	-- Enchanted Highmaul Bracer
			["maps"] = {
				FROSTFIRE_RIDGE,
				GORGROND,
				DRAENOR_NAGRAND,
				DRAENOR_SHADOWMOON_VALLEY,
				SPIRES_OF_ARAK,
				TALADOR,
			},
			["races"] = HORDE_ONLY,
		}),
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		q(39874, {	-- Some Enchanted Evening
			["provider"] = { "n", 93531 },	-- Enchanter Nalthanis
			["coord"] = { 38.6, 40.8, LEGION_DALARAN },
			["groups"] = {
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
			["groups"] = {
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
			["groups"] = {
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
			["groups"] = {
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
			["coord"] = { 54.4, 57.6, VALSHARAH },
			["maps"] = { 733, },	-- Darkheart Thicket
			["groups"] = {
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
			["groups"] = {
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
			["groups"] = {
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
			["groups"] = {
				r(228408),	-- Mark of the Ancient Priestess [Rank 1]
				r(190894),	-- Mark of the Hidden Satyr [Rank 1]
			},
		}),
		q(39910, {	-- The Druid's Debt
			["sourceQuests"] = { 39891 },	-- Cursed, But Convenient
			["provider"] = { "n", 98381 },	-- Merrus Dawnwind
			["coord"] = { 46.8, 40.8, AZSUNA },
			["groups"] = {
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
			["groups"] = {
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
			["coord"] = { 47.2, 26.4, AZSUNA },
			["maps"] = {
				731,	-- Neltharion's Lair
				324,	-- The Stonecore
				477, 478, 479,	-- Scholomance
			},
			["groups"] = {
				i(136617),	-- Ancient Arkhana (QI!)
				i(136616),	-- Radiant Zephyrite (QI!)
				i(136615),	-- Skystone Rod (QI!)
			},
		}),
		q(39923, {	-- Down to the Core
			["sourceQuests"] = { 39921 },	-- Neltharion's Lair: Rod of Azure
			["provider"] = { "n", 99420 },	-- Kharmeera
			["coord"] = { 47.2, 26.4, AZSUNA },
			["groups"] = {
				r(190870),	-- Binding of Critical Strike [Rank 1]
				r(190871),	-- Binding of Haste [Rank 1]
				r(190872),	-- Binding of Mastery [Rank 1]
				r(190873),	-- Binding of Versatility [Rank 1]
			},
		}),
		q(42971, {	-- Controlling the Elements
			["provider"] = { "n", 42465 },	-- Therazane <The Stonemother>
			["coord"] = { 56.4, 12.2, DEEPHOLM },
			["groups"] = {
				r(217649),	-- Tome of Illusions: Elemental Lords
			},
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18775),	-- Iwen's Enchanting Rod
		})),
		n(QUESTS, {
			q(54473, {	-- Enchanted Formulae [A]
				["provider"] = { "n", 136041 },	-- Emily Fairweather <Enchanting Trainer>
				["coord"] = { 74.1, 11.4, BORALUS },
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
				["races"] = ALLIANCE_ONLY,
			}),
			q(54474, {	-- Enchanted Formulae [H]
				["provider"] = { "n", 122702 },	-- Enchantress Quinni <Enchanting Trainer>
				["coord"] = { 47.0, 35.8, DAZARALOR },
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
				["races"] = HORDE_ONLY,
			}),
			------ Tools of Trade Questline ------
			q(54005, {	-- What the Drust Knew [A]
				["description"] = "This quest chain requires 150 in Kul Tiran Enchanting.",
				["provider"] = { "n", 136041 },	-- Emily Fairweather
				["coord"] = { 74.2, 11.3, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(54161, {	-- What the Drust Knew [H]
				["description"] = "This quest chain requires 150 in Zandalari Enchanting.",
				["provider"] = { "n", 122702 },	-- Enchantress Quinni
				["coord"] = { 47.1, 35.7, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
			}),
			q(53993, {	-- A Voice on the Wind [A]
				["sourceQuests"] = { 54005 },	-- What the Drust Knew [A]
				["provider"] = { "n", 147014 },	-- Ancient Drust Relic Dust
				["coord"] = { 74.2, 11.4, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(55635, {	-- A Voice on the Wind [H]
				["sourceQuests"] = { 54161 },	-- What the Drust Knew [H]
				["provider"] = { "n", 147014 },	-- Ancient Drust Relic Dust
				["coord"] = { 47.1, 35.3, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
			}),
			q(53996, {	-- Pick Up Sticks
				["sourceQuests"] = {
					53993,	-- A Voice on the Wind [A]
					55635,	-- A Voice on the Wind [H]
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 146053 },	-- Sef Iwen
				["coord"] = { 53.4, 40.1, DRUSTVAR },
				["timeline"] = { ADDED_8_1_5 },
				["groups"] = {
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
				["groups"] = {
					i(164985),	-- Durable Spider Silk (QI!)
				},
			}),
			q(54000, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- The Beat Goes On
				["sourceQuests"] = { 53999 },	-- Exhumed
				["provider"] = { "n", 146093 },	-- Sef Iwen
				["coord"] = { 63.0, 59.4, DRUSTVAR },
				["groups"] = {
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
				["groups"] = {
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
				["qgs"] = {
					192055,	-- Veeno <Enchanting Trainer>
					198903,	-- Asarin <Enchanting Trainer & Supplies>
					192116,	-- Solonga <Enchanting Trainer & Supplies>
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
				["groups"] = {
					i(190456),	-- Artisan's Mettle
				},
			}),
		}),
		n(QUESTS, sharedData({
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["isWeekly"] = true,
			["groups"] = {
				i(198610),	-- Enchanter's Script
			},
		},{
			------ Requires 25 Skill ------
			q(66935, {	-- Crystal Quill Pens
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191001 },	-- Gnoklin Quirkcoil
				["coord"] = { 36.8, 62.8, VALDRAKKEN },
				["groups"] = {
					i(194053),	-- Crystal Quill (QI!)
				},
			}),
			q(66900, {	-- Enchanted Relics
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191004 },	-- Temnaayu
				["coord"] = { 36.8, 62.4, VALDRAKKEN },
				["groups"] = {
					i(193867),	-- Enchanted Relics (QI!)
				},
			}),
			q(66884, {	-- Fireproof Gear
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191004 },	-- Temnaayu
				["coord"] = { 36.8, 62.4, VALDRAKKEN },
				["groups"] = {
					i(193624),	-- Fireproof Gear (QI!)
				},
			}),
			q(72423, {	-- Weathering the Storm
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191004 },	-- Temnaayu
				["coord"] = { 36.8, 62.4, VALDRAKKEN },
				["groups"] = {
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
				["qgs"] = {
					193744,	-- Soragosa
					216267,	-- Enchanter Falrin Treeshaper <House of Shen'dralar>
				},
				["coords"] = {
					{ 30.8, 61.4, VALDRAKKEN },
					{ 48.6, 54.2, AMIRDRASSIL },
				},
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
				["groups"] = {
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
				["groups"] = {
					i(208947),	-- Enchanted Watering Can (QI!)
				},
			}),
			q(77937, {	-- Forbidden Sugar
				["provider"] = { "n", 210162 },	-- Magnolia Oaken
				["coord"] = { 36.8, 63.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_0 },
				["groups"] = {
					i(209018),	-- Glowdrop Sugar (QI!)
				},
			}),
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", DF_ENCHANTING_KNOWLEDGE, 1 }} }, {
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
				["groups"] = {
					i(201012),	-- Enchanted Debris
				},
			}),
			o(380600, {	-- Enriched Earthen Shard
				["questID"] = 70298,
				["coord"] = { 21.6, 45.5, THE_AZURE_SPAN },
				["groups"] = {
					i(198694),	-- Enriched Earthen Shard
				},
			}),
			o(410582,	-- Essence of Dreams
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["coord"] = { 66.3, 74.2, EMERALD_DREAM },
				["questID"] = 78310,
				["groups"] = {
					i(210234),	-- Essence of Dreams
				},
			})),
			o(410575,	-- Everburning Core
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["coord"] = { 46.1, 20.5, EMERALD_DREAM },
				["questID"] = 78309,
				["groups"] = {
					i(210231),	-- Everburning Core
				},
			})),
			o(380589, {	-- Faintly Enchanted Remains
				["questID"] = 70290,
				["coord"] = { 45.1, 61.2, THE_AZURE_SPAN },
				["crs"] = { 194882 },	-- Enchanted Crystaline Construct
				["groups"] = {
					i(201013),	-- Faintly Enchanted Remains
				},
			}),
			o(380643, {	-- Flashfrozen Scroll
				["questID"] = 70320,
				["coord"] = { 57.5, 83.6, THE_WAKING_SHORES },
				["groups"] = {
					i(198798),	-- Flashfrozen Scroll
				},
			}),
			o(380647, {	-- Forgotten Arcane Tome
				["questID"] = 70336,
				["coord"] = { 38.5, 59.2, THE_AZURE_SPAN },
				["groups"] = {
					i(198799),	-- Forgotten Arcane Tome
				},
			}),
			o(380652, {	-- Fractured Titanic Sphere
				["questID"] = 70342,
				["coord"] = { 59.9, 70.4, THALDRASZUS },
				["groups"] = {
					i(198800),	-- Fractured Titanic Sphere
				},
			}),
			o(398793,	-- Lava-Drenched Shadow Crystal
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 48.0, 17.0, ZARALEK_CAVERN },
				["questID"] = 75508,
				["groups"] = {
					i(204990),	-- Lava-Drenched Shadow Crystal
				},
			})),
			o(380580, {	-- Lava-Infused Seed
				["questID"] = 70283,
				["coord"] = { 68.0, 26.8, THE_WAKING_SHORES },
				["groups"] = {
					i(198675),	-- Lava-Infused Seed
				},
			}),
			o(410574,	-- Pure Dream Water
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["coord"] = { 38.3, 30.1, EMERALD_DREAM },
				["questID"] = 78308,
				["groups"] = {
					i(210228),	-- Pure Dream Water
				},
			})),
			o(398796,	-- Resonating Arcane Crystal
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 36.7, 69.3, ZARALEK_CAVERN },
				["questID"] = 75510,
				["groups"] = {
					i(205001),	-- Resonating Arcane Crystal
				},
			})),
			o(398794,	-- Shimmering Aqueous Orb
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 62.4, 53.8, ZARALEK_CAVERN },
				["questID"] = 75509,
				["groups"] = {
					i(204999),	-- Shimmering Aqueous Orb
				},
			})),
			o(380592, {	-- Stormbound Horn
				["questID"] = 70291,
				["coord"] = { 61.4, 67.6, OHNAHRAN_PLAINS },
				["groups"] = {
					i(198689),	-- Stormbound Horn
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
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
				["provider"] = { "i", 198968 },	-- Primalist Charm
				["coord"] = { 53.4, 56.2, THALDRASZUS },
				["crs"] = { 194656 },	-- Primalist Surgecrusher
			}),
			q(70514, {	-- DF Weekly Enchanting Knowledgepoint #4
				["name"] = "DF Enchanting Drop #2: Arcane Elemental",
				["description"] = "Drops from any Arcane Elemental.\nCoordinates link to the spot(s) we found best.",
				["provider"] = { "i", 198967 },	-- Primordial Aether
				["coord"] = { 40.6, 60.8, THE_AZURE_SPAN },
				["crs"] = { 181536 },	-- Destabilized Elemental
			}),
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(QUESTS, sharedData({
			["provider"] = { "n", 219085 },	-- Nagad <Enchanting Trainer>
			["coord"] = { 52.7, 71.1, DORNOGAL },
			["isWeekly"] = true,
			["groups"] = {
				i(227667),	-- Algari Enchanter's Folio
			},
		},{
			q(84086),	-- A Rare Necessity
			q(84084),	-- Just a Pinch
			q(84085),	-- The Power of Potential
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", TWW_ENCHANTING_KNOWLEDGE, 1 }} }, {
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
				["groups"] = {
					i(226287),	-- Animated Enchanting Dust
				},
			}),
			o(456003, {	-- Book of Dark Magic
				["coord"] = { 61.7, 22.0, NERUBAR },
				["questID"] = 83864,
				["groups"] = {
					i(226290),	-- Book of Dark Magic
				},
			}),
			o(456004, {	-- Enchanted Arathi Scroll
				["coord"] = { 48.6, 64.5, HALLOWFALL },
				["questID"] = 83863,
				["groups"] = {
					i(226289),	-- Enchanted Arathi Scroll
				},
			}),
			o(456005, {	-- Essence of Holy Fire
				["coord"] = { 40.1, 70.5, HALLOWFALL },
				["questID"] = 83862,
				["groups"] = {
					i(226288),	-- Essence of Holy Fire
				},
			}),
			o(456009, {	-- Grinded Earthen Gem
				["coord"] = { 57.6, 61.5, ISLE_OF_DORN },
				["questID"] = 83856,
				["groups"] = {
					i(226284),	-- Grinded Earthen Gem
				},
			}),
			o(456008, {	-- Silver Dornogal Rod
				["coord"] = { 58.0, 56.9, DORNOGAL },
				["questID"] = 83859,
				["groups"] = {
					i(226285),	-- Silver Dornogal Rod
				},
			}),
			o(456007, {	-- Soot-Coated Orb
				["coord"] = { 44.6, 22.1, THE_RINGING_DEEPS },
				["questID"] = 83860,
				["groups"] = {
					i(226286),	-- Soot-Coated Orb
				},
			}),
			o(456002, {	-- Void Shard
				["coord"] = { 57.3, 44.0, AZJ_KAHET },
				["questID"] = 83865,
				["groups"] = {
					i(226291),	-- Void Shard
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(TWW_ENCHANTING_KNOWLEDGE),
			},
		},{
			i(227667),	-- Algari Enchanter's Folio
			q(83727, {	-- TWW Inscription Order: Enchanting
				["name"] = "TWW Inscription Order: Enchanting",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 222550 },	-- Algari Treatise on Enchanting
			}),
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
	expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(42787, {	-- Enchanting at Midnight
				i(264000),	-- Midnight Enchanter's Shop Sign (DECOR!)
			}),
		}),
		n(QUESTS, sharedData({
			["provider"] = { "n", 243349 },	-- Dolothos <Enchanting Trainer>
			["coord"] = { 48.0, 53.9, MAP.MIDNIGHT.SILVERMOON_CITY },
			["isWeekly"] = true,
			["groups"] = {
				i(263464),	-- Thalassian Enchanter's Folio
			},
		},{
			q(93699),	-- A Ray of Sunlight
			q(93698),	-- Splintered Radiance
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", MID_ENCHANTING_KNOWLEDGE, 1 }} }, {
				r(1236057),	-- Enchant Boots - Lynx's Dexterity
				r(1236069),	-- Enchant Chest - Mark of the Worldsoul
				r(1236071),	-- Enchant Helm - Empowered Blessing of Speed
				r(1236088),	-- Enchant Ring - Silvermoon's Alacrity
				r(1236060),	-- Enchant Ring - Zul'jin's Mastery
				r(1236091),	-- Enchant Shoulders - Silvermoon's Mending
				r(1236064),	-- Enchant Tool - Amani Resourcefulness
				r(1236077),	-- Enchant Tool - Haranir Finesse
				r(1236092),	-- Enchant Tool - Sin'dorei Deftness
				r(1236490),	-- Magister's Grand Focus
				r(1236492),	-- Oil of Dawn
				r(1236487),	-- Runed Brilliant Silver Rod
				r(1235731),	-- Shatter Essence
			}),
		}),
		n(TREASURES, {
			o(525953, {	-- Enchanted Amani Mask
				["coord"] = { 48.4, 22.9, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
				["questID"] = 89100,
				["groups"] = {
					i(238548),	-- Enchanted Amani Mask
				},
			}),
			--o(456002, {	-- Enchanted Sunfire Silk
			--	["coord"] = { 57.3, 44.0, AZJ_KAHET },
			--	["questID"] = 83865,
			--	["groups"] = {
					i(238549),	-- Enchanted Sunfire Silk
			--	},
			--}),
			o(525949, {	-- Entropic Shard
				["coord"] = { 37.7, 65.3, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 89104,
				["groups"] = {
					i(238552),	-- Entropic Shard
				},
			}),
			o(525950, {	-- Everblazing Sunmote
				["coord"] = { 60.8, 53.0, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 89103,
				["groups"] = {
					i(238551),	--Everblazing Sunmote
				},
			}),
			o(525947, {	-- Loa-Blessed Dust
				["coord"] = { 40.4, 51.1, MAP.MIDNIGHT.ZUL_AMAN },
				["questID"] = 89106,
				["groups"] = {
					i(238554),	-- Loa-Blessed Dust
				},
			}),
			o(525948, {	-- Primal Essence Orb
				["coord"] = { 65.8, 50.2, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 89105,
				["groups"] = {
					i(238553),	-- Primal Essence Orb
				},
			}),
			o(525951, {	-- Pure Void Crystal
				["coord"] = { 35.5, 58.8, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 89102,
				["groups"] = {
					i(238550),	-- Pure Void Crystal
				},
			}),
			o(525946, {	-- Sin'dorei Enchanting Rod
				["coord"] = { 63.5, 32.6, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 83865,
				["groups"] = {
					i(238555),	-- Sin'dorei Enchanting Rod
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(MID_ENCHANTING_KNOWLEDGE),
			},
		},{
			i(263464),	-- Thalassian Enchanter's Folio
			q(95129, {	-- MID Inscription Order: Enchanting
				["name"] = "MID Inscription Order: Enchanting",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 245759 },	-- Thalassian Treatise on Enchanting
			}),
			--[[ Needs QuestID
			q(83258, {	-- MID Weekly Enchanting Knowledgepoint #1
				["name"] = "MID Weekly Enchanting Treasure #1",
				["provider"] =  { "i", 259193 },	-- Lost Thalassian Vellum
			}),
			q(83259, {	-- MID Weekly Enchanting Knowledgepoint #2
				["name"] = "MID Weekly Enchanting Treasure #2",
				["provider"] =  { "i", 259192 },	-- Voidstorm Ashes
			}),
			--]]
			q(95048, {	-- MID Weekly Enchanting Knowledgepoint #3
				["name"] = "MID Weekly Enchanting Disenchant #1",
				["description"] = "Rewarded when disenchanting items.",
				["provider"] =  { "i", 267654 },	-- Swirling Arcane Essence
			}),
			q(95049, {	-- MID Weekly Enchanting Knowledgepoint #4
				["name"] = "MID Weekly Enchanting Disenchant #2",
				["description"] = "Rewarded when disenchanting items.",
				["provider"] =  { "i", 267654 },	-- Swirling Arcane Essence
			}),
			q(95050, {	-- MID Weekly Enchanting Knowledgepoint #5
				["name"] = "MID Weekly Enchanting Disenchant #3",
				["description"] = "Rewarded when disenchanting items.",
				["provider"] =  { "i", 267654 },	-- Swirling Arcane Essence
			}),
			q(95051, {	-- MID Weekly Enchanting Knowledgepoint #6
				["name"] = "MID Weekly Enchanting Disenchant #4",
				["description"] = "Rewarded when disenchanting items.",
				["provider"] =  { "i", 267654 },	-- Swirling Arcane Essence
			}),
			q(95052, {	-- MID Weekly Enchanting Knowledgepoint #7
				["name"] = "MID Weekly Enchanting Disenchant #5",
				["description"] = "Rewarded when disenchanting items.",
				["provider"] =  { "i", 267654 },	-- Swirling Arcane Essence
			}),
			q(95053, {	-- MID Weekly Enchanting Knowledgepoint #8
				["name"] = "MID Weekly Enchanting Disenchant #6",
				["description"] = "Rewarded when disenchanting items.",
				["provider"] =  { "i", 267655 },	-- Brimming Mana Shard
			}),
		})),
	})),
})));

-- #if ANYCLASSIC
profession(ENCHANTING, {
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
});
-- #endif
