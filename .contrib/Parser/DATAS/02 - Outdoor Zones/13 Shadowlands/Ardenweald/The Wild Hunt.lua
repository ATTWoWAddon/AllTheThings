---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(ARDENWEALD, {
		n(FACTIONS, {
			header(HEADERS.Faction, FACTION_THE_WILD_HUNT, {
				faction(FACTION_THE_WILD_HUNT),
				n(ACHIEVEMENTS, {
					achWithRep(14337, FACTION_THE_WILD_HUNT),	-- The Wild Hunt
				}),
				n(EMISSARY_QUESTS, {
					q(62852, {	-- Paragon of the Wild Hunt
						["provider"] = { "n", 158556 },	-- Aithlyn <Wild Hunt Quartermaster>
						["coord"] = { 48.4, 50.4, ARDENWEALD },
						["minReputation"] = { FACTION_THE_WILD_HUNT, EXALTED },
					}),
					q(61098, bubbleDownSelf({ ["minReputation"] = { FACTION_THE_WILD_HUNT, EXALTED } }, {	-- Supplies from The Wild Hunt
						["provider"] = { "n", 158556 },	-- Aithlyn <Wild Hunt Quartermaster>
						["coord"] = { 48.4, 50.4, ARDENWEALD },
						["repeatable"] = true,
						["groups"] = {
							i(180649, {	-- Wild Hunt Supplies
								i(180635),	-- Hungry Burrower (PET!)
								i(183800),	-- Amber Ardenmoth (MOUNT!)
								i(187870, {["timeline"] = { ADDED_9_1_5 }}),	-- Porcupine Soul (SS!)
								i(185054, {["timeline"] = { ADDED_9_1_5 }}),	-- Mammoth Soul (SS!)
							}),
						},
					})),
				}),
				n(VENDORS, {
					n(158556, {	-- Aithlyn <Wild Hunt Quartermaster>
						["coords"] = {
							{ 48.4, 50.4, ARDENWEALD },
							{ 59.6, 31.8, THE_TRUNK },	-- Heart of the Forest
						},
						["groups"] = bubbleDownClassicRep(FACTION_THE_WILD_HUNT, {
							{		-- Neutral
								i(190644, {	-- Vessel of Profound Possibilities (CI!)
									["sourceAchievement"] = 14834,	-- Bound with Purpose
									["timeline"] = { ADDED_9_2_0 },
									["cost"] = { { "c", 2009, 10000 } },	-- 10,000 Cosmic Flux
									["sym"] = {
										{"select","expansionID",EXPANSION.SL},	-- Select Shadowlands
										{"find","headerID",CONDUITS},{"pop"},	-- grab the main Conduits category (to keep the class grouping)
									},
								}),
							}, {	-- Friendly
								i(180641, {	-- Floofa (PET!)
									["cost"] = { { "i", POLISHED_PET_CHARM, 250 } },
								}),
							}, {	-- Honored
								i(183096),	-- Formula: Sacred Shard (RECIPE!)
								i(184754),	-- Glitterwing Scarf
								i(183100),	-- Pattern: Heavy Desolate Armor Kit (RECIPE!)
								n(NIGHT_FAE, sharedData({["customCollect"] = "SL_COV_NFA" }, {
									i(182168, {	-- Crane Soul (SS!)
										["cost"] = { { "c", ANIMA, 1500 } },
									}),
								})),
								i(217594, {	-- Glyph of Shifting Power
									["timeline"] = { ADDED_10_2_6 },
									["classes"] = { MAGE },
								}),
								i(217588, {	-- Glyph of Blessing of the Seasons
									["timeline"] = { ADDED_10_2_6 },
									["classes"] = { PALADIN },
								}),
								i(217585, {	-- Glyph of Convoke the Spirits
									["timeline"] = { ADDED_10_2_6 },
									["classes"] = { DRUID },
								}),
								i(217494, {	-- Glyph of Faeline Stomp
									["timeline"] = { ADDED_10_2_6 },
									["classes"] = { MONK },
								}),
								i(217583, {	-- Glyph of Sepsis
									["timeline"] = { ADDED_10_2_6 },
									["classes"] = { ROGUE },
								}),
								i(217600, {	-- Glyph of Soul Rot
									["timeline"] = { ADDED_10_2_6 },
									["classes"] = { WARLOCK },
								}),
								i(217590, {	-- Glyph of the Hunt
									["timeline"] = { ADDED_10_2_6 },
									["classes"] = { DEMONHUNTER },
								}),
							}, {	-- Revered
								i(184747),	-- Gamekeeper's Slippers
								i(184749),	-- Gametender's Bramblewards
								i(184746),	-- Gametender's Muckstompers
								i(184748),	-- Gametender's Wading Boots
								i(183242),	-- Memory of Eonar
								i(183106),	-- Recipe: Eternal Cauldron (RECIPE!)
								i(183093),	-- Technique: Contract: The Wild Hunt (RECIPE!)
								i(187883, {	-- Technique: Mark of the Twilight Runestag (RECIPE!)
									["timeline"] = { ADDED_9_1_5 },
								}),
								n(NIGHT_FAE, sharedData({["customCollect"] = "SL_COV_NFA" }, {
									i(181309, {	-- Faewoven Pack
										["cost"] = { { "c", ANIMA, 3500 } },	-- Reservoir Anima
									}),
								})),
							}, {	-- Exalted
								i(184750),	-- Amber-Plated Legguards
								i(184751),	-- Cycle-Tender's Pantaloons
								i(180729),	-- Duskflutter Ardenmoth (MOUNT!)
								i(184752),	-- Gormscale Leggings
								i(183134),	-- Illusion: Hunt's Favor (ILLUSION!)
								i(178336),	-- Tabard of the Wild Hunt
								i(184753),	-- Tree-Scaler's Britches
							},
						}),
					}),
				}),
			}),
		}),
	}),
})));
