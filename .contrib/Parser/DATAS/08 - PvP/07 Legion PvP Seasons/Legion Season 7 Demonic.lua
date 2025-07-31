-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(expansion(EXPANSION.LEGION, {
	n(SEASON_DEMONIC, bubbleDownSelf({
		-- Not the Best Timelining.. /Braghe
		["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1, ADDED_8_0_1_LAUNCH },
	},{
		n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 } }, {
			ach(12200, {	-- Demonic Combatant [A]
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(103533),	-- Vicious Saddle
				},
			}),
			ach(12199, {	-- Demonic Combatant [H]
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(103533),	-- Vicious Saddle
				},
			}),
			ach(12187),		-- Challenger: Legion Season 7
			ach(12188),		-- Rival: Legion Season 7
			ach(12186),		-- Duelist: Legion Season 7
			ach(12198),		-- Demonic Elite
			ach(12168, {	-- Gladiator: Legion Season 7
				i(153493),	-- Demonic Gladiator's Storm Dragon (MOUNT!)
			}),
			ach(12140, {	-- Demonic Gladiator's Storm Dragon
				["provider"] = { "i", 153493 },	-- Demonic Gladiator's Storm Dragon (MOUNT!)
				["filterID"] = MOUNTS,
			}),
			ach(12185, {	-- Demonic Gladiator: Legion Season 7
				title(370),	-- Demonic Gladiator <Name>
			}),
			-- RBG
			ach(12189, {	-- Soldier of the Alliance: Legion Season 7
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12190, {	-- Soldier of the Horde: Legion Season 7
				["races"] = HORDE_ONLY,
			}),
			ach(12195, {	-- Defender of the Alliance: Legion Season 7
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12194, {	-- Defender of the Horde: Legion Season 7
				["races"] = HORDE_ONLY,
			}),
			ach(12191, {	-- Guardian of the Alliance: Legion Season 7
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12192, {	-- Guardian of the Horde: Legion Season 7
				["races"] = HORDE_ONLY,
			}),
			ach(12197, {	-- Hero of the Alliance: Demonic
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12196, {	-- Hero of the Horde: Demonic
				["races"] = HORDE_ONLY,
			}),
			-- Fashion
			ach(12021, {	-- Claws Out
				["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1, ADDED_8_0_1_LAUNCH },
			}),
		})),
		n(PVP_COMBATANT, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(150002),	-- Demonic Combatant's Dreadcloak [A]
						i(150026),	-- Demonic Combatant's Dreadplate Chestpiece [A]
						i(150030),	-- Demonic Combatant's Dreadplate Gauntlets [A]
						i(150038),	-- Demonic Combatant's Dreadplate Girdle [A]
						i(150032),	-- Demonic Combatant's Dreadplate Helm [A]
						i(150034),	-- Demonic Combatant's Dreadplate Legguards [A]
						i(150028),	-- Demonic Combatant's Dreadplate Sabatons [A]
						i(150036),	-- Demonic Combatant's Dreadplate Shoulders [A]
						i(150040),	-- Demonic Combatant's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(150004),	-- Demonic Combatant's Demonthread Cloak [A]
						i(150054),	-- Demonic Combatant's Felskin Belt [A]
						i(150044),	-- Demonic Combatant's Felskin Boots [A]
						i(150046),	-- Demonic Combatant's Felskin Gloves [A]
						i(150048),	-- Demonic Combatant's Felskin Helm [A]
						i(150050),	-- Demonic Combatant's Felskin Legguards [A]
						i(150052),	-- Demonic Combatant's Felskin Spaulders [A]
						i(150042),	-- Demonic Combatant's Felskin Tunic [A]
						i(150056),	-- Demonic Combatant's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(150070),	-- Demonic Combatant's Dragonhide Belt [A]
						i(150006),	-- Demonic Combatant's Dragonhide Cloak [A]
						i(150062),	-- Demonic Combatant's Dragonhide Gloves [A]
						i(150064),	-- Demonic Combatant's Dragonhide Helm [A]
						i(150066),	-- Demonic Combatant's Dragonhide Legguards [A]
						i(150060),	-- Demonic Combatant's Dragonhide Moccasins [A]
						i(150068),	-- Demonic Combatant's Dragonhide Spaulders [A]
						i(150058),	-- Demonic Combatant's Dragonhide Tunic [A]
						i(150072),	-- Demonic Combatant's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(150088),	-- Demonic Combatant's Chain Armband [A]
						i(150074),	-- Demonic Combatant's Chain Armor [A]
						i(150086),	-- Demonic Combatant's Chain Clasp [A]
						i(150078),	-- Demonic Combatant's Chain Gauntlets [A]
						i(150080),	-- Demonic Combatant's Chain Helm [A]
						i(150082),	-- Demonic Combatant's Chain Leggings [A]
						i(150084),	-- Demonic Combatant's Chain Spaulders [A]
						i(150076),	-- Demonic Combatant's Chain Treads [A]
						i(150008),	-- Demonic Combatant's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(150100),	-- Demonic Combatant's Silk Amice [A]
						i(150104),	-- Demonic Combatant's Silk Bracers [A]
						i(150102),	-- Demonic Combatant's Silk Cord [A]
						i(150094),	-- Demonic Combatant's Silk Cowl [A]
						i(150092),	-- Demonic Combatant's Silk Handguards [A]
						i(150098),	-- Demonic Combatant's Silk Robe [A]
						i(150090),	-- Demonic Combatant's Silk Treads [A]
						i(150096),	-- Demonic Combatant's Silk Trousers [A]
						i(150010),	-- Demonic Combatant's Silken Shawl [A]
					}),
					cl(MONK, {
						i(150118),	-- Demonic Combatant's Ironskin Belt [A]
						i(150012),	-- Demonic Combatant's Ironskin Cloak [A]
						i(150108),	-- Demonic Combatant's Ironskin Gloves [A]
						i(150110),	-- Demonic Combatant's Ironskin Helm [A]
						i(150112),	-- Demonic Combatant's Ironskin Legguards [A]
						i(150106),	-- Demonic Combatant's Ironskin Slippers [A]
						i(150114),	-- Demonic Combatant's Ironskin Spaulders [A]
						i(150116),	-- Demonic Combatant's Ironskin Tunic [A]
						i(150120),	-- Demonic Combatant's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(150014),	-- Demonic Combatant's Greatcloak of Faith [A]
						i(150128),	-- Demonic Combatant's Scaled Chestpiece [A]
						i(150132),	-- Demonic Combatant's Scaled Gauntlets [A]
						i(150140),	-- Demonic Combatant's Scaled Girdle [A]
						i(150134),	-- Demonic Combatant's Scaled Helm [A]
						i(150136),	-- Demonic Combatant's Scaled Legguards [A]
						i(150130),	-- Demonic Combatant's Scaled Sabatons [A]
						i(150138),	-- Demonic Combatant's Scaled Shoulders [A]
						i(150142),	-- Demonic Combatant's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(150016),	-- Demonic Combatant's Drape of Piety [A]
						i(150158),	-- Demonic Combatant's Satin Bracers [A]
						i(150156),	-- Demonic Combatant's Satin Cord [A]
						i(150146),	-- Demonic Combatant's Satin Gloves [A]
						i(150148),	-- Demonic Combatant's Satin Hood [A]
						i(150150),	-- Demonic Combatant's Satin Leggings [A]
						i(150154),	-- Demonic Combatant's Satin Mantle [A]
						i(150152),	-- Demonic Combatant's Satin Robe [A]
						i(150144),	-- Demonic Combatant's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(150178),	-- Demonic Combatant's Leather Belt [A]
						i(150170),	-- Demonic Combatant's Leather Gloves [A]
						i(150172),	-- Demonic Combatant's Leather Helm [A]
						i(150174),	-- Demonic Combatant's Leather Legguards [A]
						i(150168),	-- Demonic Combatant's Leather Slippers [A]
						i(150176),	-- Demonic Combatant's Leather Spaulders [A]
						i(150166),	-- Demonic Combatant's Leather Tunic [A]
						i(150180),	-- Demonic Combatant's Leather Wristguards [A]
						i(150018),	-- Demonic Combatant's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(150196),	-- Demonic Combatant's Ringmail Armband [A]
						i(150182),	-- Demonic Combatant's Ringmail Armor [A]
						i(150184),	-- Demonic Combatant's Ringmail Boots [A]
						i(150194),	-- Demonic Combatant's Ringmail Clasp [A]
						i(150186),	-- Demonic Combatant's Ringmail Gauntlets [A]
						i(150188),	-- Demonic Combatant's Ringmail Helm [A]
						i(150190),	-- Demonic Combatant's Ringmail Leggings [A]
						i(150192),	-- Demonic Combatant's Ringmail Spaulders [A]
						i(150020),	-- Demonic Combatant's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(150226),	-- Demonic Combatant's Felweave Amice [A]
						i(150230),	-- Demonic Combatant's Felweave Bracers [A]
						i(150022),	-- Demonic Combatant's Felweave Cloak [A]
						i(150228),	-- Demonic Combatant's Felweave Cord [A]
						i(150220),	-- Demonic Combatant's Felweave Cowl [A]
						i(150218),	-- Demonic Combatant's Felweave Handguards [A]
						i(150224),	-- Demonic Combatant's Felweave Raiment [A]
						i(150216),	-- Demonic Combatant's Felweave Treads [A]
						i(150222),	-- Demonic Combatant's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(150024),	-- Demonic Combatant's Cloak of Battle [A]
						i(150232),	-- Demonic Combatant's Plate Chestpiece [A]
						i(150236),	-- Demonic Combatant's Plate Gauntlets [A]
						i(150244),	-- Demonic Combatant's Plate Girdle [A]
						i(150238),	-- Demonic Combatant's Plate Helm [A]
						i(150240),	-- Demonic Combatant's Plate Legguards [A]
						i(150242),	-- Demonic Combatant's Plate Shoulders [A]
						i(150234),	-- Demonic Combatant's Plate Warboots [A]
						i(150246),	-- Demonic Combatant's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(150162),	-- Demonic Combatant's Band [A]
					i(150160),	-- Demonic Combatant's Ring [A]
					i(150164),	-- Demonic Combatant's Signet [A]
				}),
				filter(NECK_F, {
					i(150126),	-- Demonic Combatant's Choker [A]
					i(150122),	-- Demonic Combatant's Necklace [A]
					i(150124),	-- Demonic Combatant's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(150200),	-- Demonic Combatant's Accolade of Conquest [A]
					i(150206),	-- Demonic Combatant's Accolade of Dominance [A]
					i(150212),	-- Demonic Combatant's Accolade of Victory [A]
					i(150198),	-- Demonic Combatant's Badge of Conquest [A]
					i(150204),	-- Demonic Combatant's Badge of Dominance [A]
					i(150210),	-- Demonic Combatant's Badge of Victory [A]
					i(150202),	-- Demonic Combatant's Insignia of Conquest [A]
					i(150208),	-- Demonic Combatant's Insignia of Dominance [A]
					i(150214),	-- Demonic Combatant's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(150003),	-- Demonic Combatant's Dreadcloak [H]
						i(150027),	-- Demonic Combatant's Dreadplate Chestpiece [H]
						i(150031),	-- Demonic Combatant's Dreadplate Gauntlets [H]
						i(150039),	-- Demonic Combatant's Dreadplate Girdle [H]
						i(150033),	-- Demonic Combatant's Dreadplate Helm [H]
						i(150035),	-- Demonic Combatant's Dreadplate Legguards [H]
						i(150029),	-- Demonic Combatant's Dreadplate Sabatons [H]
						i(150037),	-- Demonic Combatant's Dreadplate Shoulders [H]
						i(150041),	-- Demonic Combatant's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(150005),	-- Demonic Combatant's Demonthread Cloak [H]
						i(150055),	-- Demonic Combatant's Felskin Belt [H]
						i(150045),	-- Demonic Combatant's Felskin Boots [H]
						i(150047),	-- Demonic Combatant's Felskin Gloves [H]
						i(150049),	-- Demonic Combatant's Felskin Helm [H]
						i(150051),	-- Demonic Combatant's Felskin Legguards [H]
						i(150053),	-- Demonic Combatant's Felskin Spaulders [H]
						i(150043),	-- Demonic Combatant's Felskin Tunic [H]
						i(150057),	-- Demonic Combatant's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(150071),	-- Demonic Combatant's Dragonhide Belt [H]
						i(150007),	-- Demonic Combatant's Dragonhide Cloak [H]
						i(150063),	-- Demonic Combatant's Dragonhide Gloves [H]
						i(150065),	-- Demonic Combatant's Dragonhide Helm [H]
						i(150067),	-- Demonic Combatant's Dragonhide Legguards [H]
						i(150061),	-- Demonic Combatant's Dragonhide Moccasins [H]
						i(150069),	-- Demonic Combatant's Dragonhide Spaulders [H]
						i(150059),	-- Demonic Combatant's Dragonhide Tunic [H]
						i(150073),	-- Demonic Combatant's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(150089),	-- Demonic Combatant's Chain Armband [H]
						i(150075),	-- Demonic Combatant's Chain Armor [H]
						i(150087),	-- Demonic Combatant's Chain Clasp [H]
						i(150079),	-- Demonic Combatant's Chain Gauntlets [H]
						i(150081),	-- Demonic Combatant's Chain Helm [H]
						i(150083),	-- Demonic Combatant's Chain Leggings [H]
						i(150085),	-- Demonic Combatant's Chain Spaulders [H]
						i(150077),	-- Demonic Combatant's Chain Treads [H]
						i(150009),	-- Demonic Combatant's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(150101),	-- Demonic Combatant's Silk Amice [H]
						i(150105),	-- Demonic Combatant's Silk Bracers [H]
						i(150103),	-- Demonic Combatant's Silk Cord [H]
						i(150095),	-- Demonic Combatant's Silk Cowl [H]
						i(150093),	-- Demonic Combatant's Silk Handguards [H]
						i(150099),	-- Demonic Combatant's Silk Robe [H]
						i(150091),	-- Demonic Combatant's Silk Treads [H]
						i(150097),	-- Demonic Combatant's Silk Trousers [H]
						i(150011),	-- Demonic Combatant's Silken Shawl [H]
					}),
					cl(MONK, {
						i(150119),	-- Demonic Combatant's Ironskin Belt [H]
						i(150013),	-- Demonic Combatant's Ironskin Cloak [H]
						i(150109),	-- Demonic Combatant's Ironskin Gloves [H]
						i(150111),	-- Demonic Combatant's Ironskin Helm [H]
						i(150113),	-- Demonic Combatant's Ironskin Legguards [H]
						i(150107),	-- Demonic Combatant's Ironskin Slippers [H]
						i(150115),	-- Demonic Combatant's Ironskin Spaulders [H]
						i(150117),	-- Demonic Combatant's Ironskin Tunic [H]
						i(150121),	-- Demonic Combatant's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(150015),	-- Demonic Combatant's Greatcloak of Faith [H]
						i(150129),	-- Demonic Combatant's Scaled Chestpiece [H]
						i(150133),	-- Demonic Combatant's Scaled Gauntlets [H]
						i(150141),	-- Demonic Combatant's Scaled Girdle [H]
						i(150135),	-- Demonic Combatant's Scaled Helm [H]
						i(150137),	-- Demonic Combatant's Scaled Legguards [H]
						i(150131),	-- Demonic Combatant's Scaled Sabatons [H]
						i(150139),	-- Demonic Combatant's Scaled Shoulders [H]
						i(150143),	-- Demonic Combatant's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(150017),	-- Demonic Combatant's Drape of Piety [H]
						i(150159),	-- Demonic Combatant's Satin Bracers [H]
						i(150157),	-- Demonic Combatant's Satin Cord [H]
						i(150147),	-- Demonic Combatant's Satin Gloves [H]
						i(150149),	-- Demonic Combatant's Satin Hood [H]
						i(150151),	-- Demonic Combatant's Satin Leggings [H]
						i(150155),	-- Demonic Combatant's Satin Mantle [H]
						i(150153),	-- Demonic Combatant's Satin Robe [H]
						i(150145),	-- Demonic Combatant's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(150179),	-- Demonic Combatant's Leather Belt [H]
						i(150171),	-- Demonic Combatant's Leather Gloves [H]
						i(150173),	-- Demonic Combatant's Leather Helm [H]
						i(150175),	-- Demonic Combatant's Leather Legguards [H]
						i(150169),	-- Demonic Combatant's Leather Slippers [H]
						i(150177),	-- Demonic Combatant's Leather Spaulders [H]
						i(150167),	-- Demonic Combatant's Leather Tunic [H]
						i(150181),	-- Demonic Combatant's Leather Wristguards [H]
						i(150019),	-- Demonic Combatant's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(150197),	-- Demonic Combatant's Ringmail Armband [H]
						i(150183),	-- Demonic Combatant's Ringmail Armor [H]
						i(150185),	-- Demonic Combatant's Ringmail Boots [H]
						i(150195),	-- Demonic Combatant's Ringmail Clasp [H]
						i(150187),	-- Demonic Combatant's Ringmail Gauntlets [H]
						i(150189),	-- Demonic Combatant's Ringmail Helm [H]
						i(150191),	-- Demonic Combatant's Ringmail Leggings [H]
						i(150193),	-- Demonic Combatant's Ringmail Spaulders [H]
						i(150021),	-- Demonic Combatant's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(150227),	-- Demonic Combatant's Felweave Amice [H]
						i(150231),	-- Demonic Combatant's Felweave Bracers [H]
						i(150023),	-- Demonic Combatant's Felweave Cloak [H]
						i(150229),	-- Demonic Combatant's Felweave Cord [H]
						i(150221),	-- Demonic Combatant's Felweave Cowl [H]
						i(150219),	-- Demonic Combatant's Felweave Handguards [H]
						i(150225),	-- Demonic Combatant's Felweave Raiment [H]
						i(150217),	-- Demonic Combatant's Felweave Treads [H]
						i(150223),	-- Demonic Combatant's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(150025),	-- Demonic Combatant's Cloak of Battle [H]
						i(150233),	-- Demonic Combatant's Plate Chestpiece [H]
						i(150237),	-- Demonic Combatant's Plate Gauntlets [H]
						i(150245),	-- Demonic Combatant's Plate Girdle [H]
						i(150239),	-- Demonic Combatant's Plate Helm [H]
						i(150241),	-- Demonic Combatant's Plate Legguards [H]
						i(150243),	-- Demonic Combatant's Plate Shoulders [H]
						i(150235),	-- Demonic Combatant's Plate Warboots [H]
						i(150247),	-- Demonic Combatant's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(150163),	-- Demonic Combatant's Band [H]
					i(150161),	-- Demonic Combatant's Ring [H]
					i(150165),	-- Demonic Combatant's Signet [H]
				}),
				filter(NECK_F, {
					i(150127),	-- Demonic Combatant's Choker [H]
					i(150123),	-- Demonic Combatant's Necklace [H]
					i(150125),	-- Demonic Combatant's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(150201),	-- Demonic Combatant's Accolade of Conquest [H]
					i(150207),	-- Demonic Combatant's Accolade of Dominance [H]
					i(150213),	-- Demonic Combatant's Accolade of Victory [H]
					i(150199),	-- Demonic Combatant's Badge of Conquest [H]
					i(150205),	-- Demonic Combatant's Badge of Dominance [H]
					i(150211),	-- Demonic Combatant's Badge of Victory [H]
					i(150203),	-- Demonic Combatant's Insignia of Conquest [H]
					i(150209),	-- Demonic Combatant's Insignia of Dominance [H]
					i(150215),	-- Demonic Combatant's Insignia of Victory [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 } }, {
				filter(RELICS_F, {
					i(150331),	-- Alliance of Convenience
					i(150363),	-- Battering Tempest
					i(150341),	-- Battle-Tempered Hilt
					i(150332),	-- Blaze of Glory
					i(150360),	-- Blindside Approach
					i(150339),	-- Brilliant Sunstone
					i(150344),	-- "Borrowed Soul" Essence
					i(150338),	-- Clarity of Conviction
					i(150337),	-- Cold Sweat
					i(150335),	-- Conscience of the Victorious
					i(150362),	-- Dead Man's Tale
					i(150324),	-- Exhaustive Research
					i(150329),	-- Fel-Loaded Dice
					i(150333),	-- Flame of the Fallen
					i(150326),	-- Grisly Souvenir
					i(150330),	-- Performance Enhancing Curio
					i(150346),	-- Petrified Ancient's Thumb
					i(150361),	-- Polished Shadowstone
					i(150340),	-- Radiance of Dawn
					i(150323),	-- Reactive Intuition
					i(150365),	-- Roar of the Crowd
					i(150343),	-- Steadfast Conviction
					i(150336),	-- Superiority's Contempt
					i(150325),	-- Taboo Knowledge
					i(150327),	-- Thirsty Bloodstone
					i(150328),	-- Thrill of Battle
					i(150364),	-- Thundering Impact
					i(150345),	-- Tombweed Bloom
					i(150334),	-- Torch of Competition
					i(150342),	-- Unflinching Grit
				}),
			})),
		}),
		n(PVP_GLADIATOR, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(148894),	-- Demonic Gladiator's Dreadcloak [A]
						i(148918),	-- Demonic Gladiator's Dreadplate Chestpiece [A]
						i(148922),	-- Demonic Gladiator's Dreadplate Gauntlets [A]
						i(148930),	-- Demonic Gladiator's Dreadplate Girdle [A]
						i(148924),	-- Demonic Gladiator's Dreadplate Helm [A]
						i(148926),	-- Demonic Gladiator's Dreadplate Legguards [A]
						i(148920),	-- Demonic Gladiator's Dreadplate Sabatons [A]
						i(148928),	-- Demonic Gladiator's Dreadplate Shoulders [A]
						i(148932),	-- Demonic Gladiator's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(148896),	-- Demonic Gladiator's Demonthread Cloak [A]
						i(148946),	-- Demonic Gladiator's Felskin Belt [A]
						i(148936),	-- Demonic Gladiator's Felskin Boots [A]
						i(148938),	-- Demonic Gladiator's Felskin Gloves [A]
						i(148940),	-- Demonic Gladiator's Felskin Helm [A]
						i(148942),	-- Demonic Gladiator's Felskin Legguards [A]
						i(148944),	-- Demonic Gladiator's Felskin Spaulders [A]
						i(148934),	-- Demonic Gladiator's Felskin Tunic [A]
						i(148948),	-- Demonic Gladiator's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(148962),	-- Demonic Gladiator's Dragonhide Belt [A]
						i(148898),	-- Demonic Gladiator's Dragonhide Cloak [A]
						i(148954),	-- Demonic Gladiator's Dragonhide Gloves [A]
						i(148956),	-- Demonic Gladiator's Dragonhide Helm [A]
						i(148958),	-- Demonic Gladiator's Dragonhide Legguards [A]
						i(148952),	-- Demonic Gladiator's Dragonhide Moccasins [A]
						i(148960),	-- Demonic Gladiator's Dragonhide Spaulders [A]
						i(148950),	-- Demonic Gladiator's Dragonhide Vest [A]
						i(148964),	-- Demonic Gladiator's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(148900),	-- Demonic Gladiator's Drape of the Tracker [A]
						i(148980),	-- Demonic Gladiator's Chain Armband [A]
						i(148966),	-- Demonic Gladiator's Chain Armor [A]
						i(148978),	-- Demonic Gladiator's Chain Clasp [A]
						i(148970),	-- Demonic Gladiator's Chain Gauntlets [A]
						i(148972),	-- Demonic Gladiator's Chain Helm [A]
						i(148974),	-- Demonic Gladiator's Chain Leggings [A]
						i(148976),	-- Demonic Gladiator's Chain Spaulders [A]
						i(148968),	-- Demonic Gladiator's Chain Treads [A]
					}),
					cl(MAGE, {
						i(148992),	-- Demonic Gladiator's Silk Amice [A]
						i(148996),	-- Demonic Gladiator's Silk Bracers [A]
						i(148994),	-- Demonic Gladiator's Silk Cord [A]
						i(148986),	-- Demonic Gladiator's Silk Cowl [A]
						i(148984),	-- Demonic Gladiator's Silk Handguards [A]
						i(148982),	-- Demonic Gladiator's Silk Treads [A]
						i(148988),	-- Demonic Gladiator's Silk Trousers [A]
						i(148990),	-- Demonic Gladiator's Silk Tunic [A]
						i(148902),	-- Demonic Gladiator's Silken Shawl [A]
					}),
					cl(MONK, {
						i(149010),	-- Demonic Gladiator's Ironskin Belt [A]
						i(148904),	-- Demonic Gladiator's Ironskin Cloak [A]
						i(149000),	-- Demonic Gladiator's Ironskin Gloves [A]
						i(149002),	-- Demonic Gladiator's Ironskin Helm [A]
						i(149004),	-- Demonic Gladiator's Ironskin Legguards [A]
						i(148998),	-- Demonic Gladiator's Ironskin Slippers [A]
						i(149006),	-- Demonic Gladiator's Ironskin Spaulders [A]
						i(149008),	-- Demonic Gladiator's Ironskin Tunic [A]
						i(149012),	-- Demonic Gladiator's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(148906),	-- Demonic Gladiator's Greatcloak of Faith [A]
						i(149029),	-- Demonic Gladiator's Scaled Breastplate [A]
						i(149023),	-- Demonic Gladiator's Scaled Gauntlets [A]
						i(149032),	-- Demonic Gladiator's Scaled Girdle [A]
						i(149025),	-- Demonic Gladiator's Scaled Helm [A]
						i(149027),	-- Demonic Gladiator's Scaled Legguards [A]
						i(149021),	-- Demonic Gladiator's Scaled Sabatons [A]
						i(149030),	-- Demonic Gladiator's Scaled Shoulders [A]
						i(149034),	-- Demonic Gladiator's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(148908),	-- Demonic Gladiator's Drape of Piety [A]
						i(149050),	-- Demonic Gladiator's Satin Bracers [A]
						i(149048),	-- Demonic Gladiator's Satin Cord [A]
						i(149038),	-- Demonic Gladiator's Satin Gloves [A]
						i(149040),	-- Demonic Gladiator's Satin Hood [A]
						i(149042),	-- Demonic Gladiator's Satin Leggings [A]
						i(149046),	-- Demonic Gladiator's Satin Mantle [A]
						i(149044),	-- Demonic Gladiator's Satin Robe [A]
						i(149036),	-- Demonic Gladiator's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(149070),	-- Demonic Gladiator's Leather Belt [A]
						i(149062),	-- Demonic Gladiator's Leather Gloves [A]
						i(149064),	-- Demonic Gladiator's Leather Helm [A]
						i(149066),	-- Demonic Gladiator's Leather Legguards [A]
						i(149060),	-- Demonic Gladiator's Leather Slippers [A]
						i(149068),	-- Demonic Gladiator's Leather Spaulders [A]
						i(149058),	-- Demonic Gladiator's Leather Tunic [A]
						i(149072),	-- Demonic Gladiator's Leather Wristguards [A]
						i(148910),	-- Demonic Gladiator's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(149088),	-- Demonic Gladiator's Ringmail Armband [A]
						i(149074),	-- Demonic Gladiator's Ringmail Armor [A]
						i(149076),	-- Demonic Gladiator's Ringmail Boots [A]
						i(149086),	-- Demonic Gladiator's Ringmail Clasp [A]
						i(149078),	-- Demonic Gladiator's Ringmail Gauntlets [A]
						i(149080),	-- Demonic Gladiator's Ringmail Helm [A]
						i(149082),	-- Demonic Gladiator's Ringmail Leggings [A]
						i(149084),	-- Demonic Gladiator's Ringmail Spaulders [A]
						i(148912),	-- Demonic Gladiator's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(149118),	-- Demonic Gladiator's Felweave Amice [A]
						i(149122),	-- Demonic Gladiator's Felweave Bracers [A]
						i(148914),	-- Demonic Gladiator's Felweave Cloak [A]
						i(149120),	-- Demonic Gladiator's Felweave Cord [A]
						i(149112),	-- Demonic Gladiator's Felweave Cowl [A]
						i(149110),	-- Demonic Gladiator's Felweave Handguards [A]
						i(149116),	-- Demonic Gladiator's Felweave Raiment [A]
						i(149108),	-- Demonic Gladiator's Felweave Treads [A]
						i(149114),	-- Demonic Gladiator's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(148916),	-- Demonic Gladiator's Cloak of Battle [A]
						i(149124),	-- Demonic Gladiator's Plate Chestpiece [A]
						i(149128),	-- Demonic Gladiator's Plate Gauntlets [A]
						i(149136),	-- Demonic Gladiator's Plate Girdle [A]
						i(149130),	-- Demonic Gladiator's Plate Helm [A]
						i(149132),	-- Demonic Gladiator's Plate Legguards [A]
						i(149134),	-- Demonic Gladiator's Plate Shoulders [A]
						i(149126),	-- Demonic Gladiator's Plate Warboots [A]
						i(149138),	-- Demonic Gladiator's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(149054),	-- Demonic Gladiator's Band [A]
					i(149052),	-- Demonic Gladiator's Ring [A]
					i(149056),	-- Demonic Gladiator's Signet [A]
				}),
				filter(NECK_F, {
					i(149018),	-- Demonic Gladiator's Choker [A]
					i(149014),	-- Demonic Gladiator's Necklace [A]
					i(149016),	-- Demonic Gladiator's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(149092),	-- Demonic Gladiator's Accolade of Conquest [A]
					i(149098),	-- Demonic Gladiator's Accolade of Dominance [A]
					i(149104),	-- Demonic Gladiator's Accolade of Victory [A]
					i(149090),	-- Demonic Gladiator's Badge of Conquest [A]
					i(149096),	-- Demonic Gladiator's Badge of Dominance [A]
					i(149102),	-- Demonic Gladiator's Badge of Victory [A]
					i(149094),	-- Demonic Gladiator's Insignia of Conquest [A]
					i(149100),	-- Demonic Gladiator's Insignia of Dominance [A]
					i(149106),	-- Demonic Gladiator's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(148895),	-- Demonic Gladiator's Dreadcloak [H]
						i(148919),	-- Demonic Gladiator's Dreadplate Chestpiece [H]
						i(148923),	-- Demonic Gladiator's Dreadplate Gauntlets [H]
						i(148931),	-- Demonic Gladiator's Dreadplate Girdle [H]
						i(148925),	-- Demonic Gladiator's Dreadplate Helm [H]
						i(148927),	-- Demonic Gladiator's Dreadplate Legguards [H]
						i(148921),	-- Demonic Gladiator's Dreadplate Sabatons [H]
						i(148929),	-- Demonic Gladiator's Dreadplate Shoulders [H]
						i(148933),	-- Demonic Gladiator's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(148897),	-- Demonic Gladiator's Demonthread Cloak [H]
						i(148947),	-- Demonic Gladiator's Felskin Belt [H]
						i(148937),	-- Demonic Gladiator's Felskin Boots [H]
						i(148939),	-- Demonic Gladiator's Felskin Gloves [H]
						i(148941),	-- Demonic Gladiator's Felskin Helm [H]
						i(148943),	-- Demonic Gladiator's Felskin Legguards [H]
						i(148945),	-- Demonic Gladiator's Felskin Spaulders [H]
						i(148935),	-- Demonic Gladiator's Felskin Tunic [H]
						i(148949),	-- Demonic Gladiator's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(148963),	-- Demonic Gladiator's Dragonhide Belt [H]
						i(148899),	-- Demonic Gladiator's Dragonhide Cloak [H]
						i(148955),	-- Demonic Gladiator's Dragonhide Gloves [H]
						i(148957),	-- Demonic Gladiator's Dragonhide Helm [H]
						i(148959),	-- Demonic Gladiator's Dragonhide Legguards [H]
						i(148953),	-- Demonic Gladiator's Dragonhide Moccasins [H]
						i(148961),	-- Demonic Gladiator's Dragonhide Spaulders [H]
						i(148951),	-- Demonic Gladiator's Dragonhide Vest [H]
						i(148965),	-- Demonic Gladiator's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(148981),	-- Demonic Gladiator's Chain Armband [H]
						i(148967),	-- Demonic Gladiator's Chain Armor [H]
						i(148979),	-- Demonic Gladiator's Chain Clasp [H]
						i(148971),	-- Demonic Gladiator's Chain Gauntlets [H]
						i(148973),	-- Demonic Gladiator's Chain Helm [H]
						i(148975),	-- Demonic Gladiator's Chain Leggings [H]
						i(148977),	-- Demonic Gladiator's Chain Spaulders [H]
						i(148969),	-- Demonic Gladiator's Chain Treads [H]
						i(148901),	-- Demonic Gladiator's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(148993),	-- Demonic Gladiator's Silk Amice [H]
						i(148997),	-- Demonic Gladiator's Silk Bracers [H]
						i(148995),	-- Demonic Gladiator's Silk Cord [H]
						i(148987),	-- Demonic Gladiator's Silk Cowl [H]
						i(148985),	-- Demonic Gladiator's Silk Handguards [H]
						i(148983),	-- Demonic Gladiator's Silk Treads [H]
						i(148989),	-- Demonic Gladiator's Silk Trousers [H]
						i(148991),	-- Demonic Gladiator's Silk Tunic [H]
						i(148903),	-- Demonic Gladiator's Silken Shawl [H]
					}),
					cl(MONK, {
						i(149011),	-- Demonic Gladiator's Ironskin Belt [H]
						i(148905),	-- Demonic Gladiator's Ironskin Cloak [H]
						i(149001),	-- Demonic Gladiator's Ironskin Gloves [H]
						i(149003),	-- Demonic Gladiator's Ironskin Helm [H]
						i(149005),	-- Demonic Gladiator's Ironskin Legguards [H]
						i(148999),	-- Demonic Gladiator's Ironskin Slippers [H]
						i(149007),	-- Demonic Gladiator's Ironskin Spaulders [H]
						i(149009),	-- Demonic Gladiator's Ironskin Tunic [H]
						i(149013),	-- Demonic Gladiator's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(148907),	-- Demonic Gladiator's Greatcloak of Faith [H]
						i(149020),	-- Demonic Gladiator's Scaled Breastplate [H]
						i(149024),	-- Demonic Gladiator's Scaled Gauntlets [H]
						i(149033),	-- Demonic Gladiator's Scaled Girdle [H]
						i(149026),	-- Demonic Gladiator's Scaled Helm [H]
						i(149028),	-- Demonic Gladiator's Scaled Legguards [H]
						i(149022),	-- Demonic Gladiator's Scaled Sabatons [H]
						i(149031),	-- Demonic Gladiator's Scaled Shoulders [H]
						i(149035),	-- Demonic Gladiator's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(148909),	-- Demonic Gladiator's Drape of Piety [H]
						i(149051),	-- Demonic Gladiator's Satin Bracers [H]
						i(149049),	-- Demonic Gladiator's Satin Cord [H]
						i(149039),	-- Demonic Gladiator's Satin Gloves [H]
						i(149041),	-- Demonic Gladiator's Satin Hood [H]
						i(149043),	-- Demonic Gladiator's Satin Leggings [H]
						i(149047),	-- Demonic Gladiator's Satin Mantle [H]
						i(149045),	-- Demonic Gladiator's Satin Robe [H]
						i(149037),	-- Demonic Gladiator's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(149071),	-- Demonic Gladiator's Leather Belt [H]
						i(149063),	-- Demonic Gladiator's Leather Gloves [H]
						i(149065),	-- Demonic Gladiator's Leather Helm [H]
						i(149067),	-- Demonic Gladiator's Leather Legguards [H]
						i(149061),	-- Demonic Gladiator's Leather Slippers [H]
						i(149069),	-- Demonic Gladiator's Leather Spaulders [H]
						i(149059),	-- Demonic Gladiator's Leather Tunic [H]
						i(149073),	-- Demonic Gladiator's Leather Wristguards [H]
						i(148911),	-- Demonic Gladiator's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(148913),	-- Demonic Gladiator's Totemic Cloak [H]
						i(149089),	-- Demonic Gladiator's Ringmail Armband [H]
						i(149087),	-- Demonic Gladiator's Ringmail Clasp [H]
						i(149085),	-- Demonic Gladiator's Ringmail Spaulders [H]
						i(149083),	-- Demonic Gladiator's Ringmail Leggings [H]
						i(149081),	-- Demonic Gladiator's Ringmail Helm [H]
						i(149079),	-- Demonic Gladiator's Ringmail Gauntlets [H]
						i(149077),	-- Demonic Gladiator's Ringmail Boots [H]
						i(149075),	-- Demonic Gladiator's Ringmail Armor [H]
					}),
					cl(WARLOCK, {
						i(149119),	-- Demonic Gladiator's Felweave Amice [H]
						i(149123),	-- Demonic Gladiator's Felweave Bracers [H]
						i(148915),	-- Demonic Gladiator's Felweave Cloak [H]
						i(149121),	-- Demonic Gladiator's Felweave Cord [H]
						i(149113),	-- Demonic Gladiator's Felweave Cowl [H]
						i(149111),	-- Demonic Gladiator's Felweave Handguards [H]
						i(149117),	-- Demonic Gladiator's Felweave Raiment [H]
						i(149109),	-- Demonic Gladiator's Felweave Treads [H]
						i(149115),	-- Demonic Gladiator's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(148917),	-- Demonic Gladiator's Cloak of Battle [H]
						i(149125),	-- Demonic Gladiator's Plate Chestpiece [H]
						i(149129),	-- Demonic Gladiator's Plate Gauntlets [H]
						i(149137),	-- Demonic Gladiator's Plate Girdle [H]
						i(149131),	-- Demonic Gladiator's Plate Helm [H]
						i(149133),	-- Demonic Gladiator's Plate Legguards [H]
						i(149135),	-- Demonic Gladiator's Plate Shoulders [H]
						i(149127),	-- Demonic Gladiator's Plate Warboots [H]
						i(149139),	-- Demonic Gladiator's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(149055),	-- Demonic Gladiator's Band [H]
					i(149053),	-- Demonic Gladiator's Ring [H]
					i(149057),	-- Demonic Gladiator's Signet [H]
				}),
				filter(NECK_F, {
					i(149019),	-- Demonic Gladiator's Choker [H]
					i(149015),	-- Demonic Gladiator's Necklace [H]
					i(149017),	-- Demonic Gladiator's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(149093),	-- Demonic Gladiator's Accolade of Conquest [H]
					i(149099),	-- Demonic Gladiator's Accolade of Dominance [H]
					i(149105),	-- Demonic Gladiator's Accolade of Victory [H]
					i(149091),	-- Demonic Gladiator's Badge of Conquest [H]
					i(149097),	-- Demonic Gladiator's Badge of Dominance [H]
					i(149103),	-- Demonic Gladiator's Badge of Victory [H]
					i(149095),	-- Demonic Gladiator's Insignia of Conquest [H]
					i(149101),	-- Demonic Gladiator's Insignia of Dominance [H]
					i(149107),	-- Demonic Gladiator's Insignia of Victory [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 } }, {
				filter(RELICS_F, {
					i(154090),	-- Alliance of Convenience
					i(154109),	-- Battering Tempest
					i(154100),	-- Battle-Tempered Hilt
					i(154091),	-- Blaze of Glory
					i(154106),	-- Blindside Approach
					i(154098),	-- Brilliant Sunstone
					i(154103),	-- "Borrowed Soul" Essence
					i(154097),	-- Clarity of Conviction
					i(154096),	-- Cold Sweat
					i(154094),	-- Conscience of the Victorious
					i(154108),	-- Dead Man's Tale
					i(154083),	-- Exhaustive Research
					i(154088),	-- Fel-Loaded Dice
					i(154092),	-- Flame of the Fallen
					i(154085),	-- Grisly Souvenir
					i(154089),	-- Performance Enhancing Curio
					i(154105),	-- Petrified Ancient's Thumb
					i(154107),	-- Polished Shadowstone
					i(154099),	-- Radiance of Dawn
					i(154082),	-- Reactive Intuition
					i(154111),	-- Roar of the Crowd
					i(154102),	-- Steadfast Conviction
					i(154095),	-- Superiority's Contempt
					i(154084),	-- Taboo Knowledge
					i(154086),	-- Thirsty Bloodstone
					i(154087),	-- Thrill of Battle
					i(154110),	-- Thundering Impact
					i(154104),	-- Tombweed Bloom
					i(154093),	-- Torch of Competition
					i(154101),	-- Unflinching Grit
				}),
			})),
		}),
		n(PVP_ELITE, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, ["races"] = ALLIANCE_ONLY }, {
				n(119484, {	-- Captain Roberts <Legion Elite Gladiator>
					["coord"] = { 29.6, 74.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["sourceAchievements"] = { 12198 },	-- Demonic Elite
						["cost"] = {{"i", MOH, 50}},
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						i(147778, {	-- Enchanter's Illusion - Demonic Tyranny (ILLUSION!)
							["sourceAchievements"] = { 12168 },	-- Gladiator: Legion Season 7
							["cost"] = {{"i", MOH, 12}},
						}),
						i(149453),	-- Demonic Gladiator's Cloak [A]
						i(149451),	-- Demonic Gladiator's Tabard [A]
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(149140),	-- Demonic Gladiator's Dreadcloak [A]
						i(149164),	-- Demonic Gladiator's Dreadplate Chestpiece [A]
						i(149168),	-- Demonic Gladiator's Dreadplate Gauntlets [A]
						i(149176),	-- Demonic Gladiator's Dreadplate Girdle [A]
						i(149170),	-- Demonic Gladiator's Dreadplate Helm [A]
						i(149172),	-- Demonic Gladiator's Dreadplate Legguards [A]
						i(149166),	-- Demonic Gladiator's Dreadplate Sabatons [A]
						i(149174),	-- Demonic Gladiator's Dreadplate Shoulders [A]
						i(149178),	-- Demonic Gladiator's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(149142),	-- Demonic Gladiator's Demonthread Cloak [A]
						i(149192),	-- Demonic Gladiator's Felskin Belt [A]
						i(149182),	-- Demonic Gladiator's Felskin Boots [A]
						i(149184),	-- Demonic Gladiator's Felskin Gloves [A]
						i(149186),	-- Demonic Gladiator's Felskin Helm [A]
						i(149188),	-- Demonic Gladiator's Felskin Legguards [A]
						i(149190),	-- Demonic Gladiator's Felskin Spaulders [A]
						i(149180),	-- Demonic Gladiator's Felskin Tunic [A]
						i(149194),	-- Demonic Gladiator's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(149208),	-- Demonic Gladiator's Dragonhide Belt [A]
						i(149144),	-- Demonic Gladiator's Dragonhide Cloak [A]
						i(149200),	-- Demonic Gladiator's Dragonhide Gloves [A]
						i(149202),	-- Demonic Gladiator's Dragonhide Helm [A]
						i(149204),	-- Demonic Gladiator's Dragonhide Legguards [A]
						i(149198),	-- Demonic Gladiator's Dragonhide Moccasins [A]
						i(149206),	-- Demonic Gladiator's Dragonhide Spaulders [A]
						i(149196),	-- Demonic Gladiator's Dragonhide Vest [A]
						i(149210),	-- Demonic Gladiator's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(149146),	-- Demonic Gladiator's Drape of the Tracker [A]
						i(149226),	-- Demonic Gladiator's Chain Armband [A]
						i(149212),	-- Demonic Gladiator's Chain Armor [A]
						i(149224),	-- Demonic Gladiator's Chain Clasp [A]
						i(149216),	-- Demonic Gladiator's Chain Gauntlets [A]
						i(149218),	-- Demonic Gladiator's Chain Helm [A]
						i(149220),	-- Demonic Gladiator's Chain Leggings [A]
						i(149222),	-- Demonic Gladiator's Chain Spaulders [A]
						i(149214),	-- Demonic Gladiator's Chain Treads [A]
					}),
					cl(MAGE, {
						i(149238),	-- Demonic Gladiator's Silk Amice [A]
						i(149242),	-- Demonic Gladiator's Silk Bracers [A]
						i(149240),	-- Demonic Gladiator's Silk Cord [A]
						i(149232),	-- Demonic Gladiator's Silk Cowl [A]
						i(149230),	-- Demonic Gladiator's Silk Handguards [A]
						i(149228),	-- Demonic Gladiator's Silk Treads [A]
						i(149234),	-- Demonic Gladiator's Silk Trousers [A]
						i(149236),	-- Demonic Gladiator's Silk Tunic [A]
						i(149148),	-- Demonic Gladiator's Silken Shawl [A]
					}),
					cl(MONK, {
						i(149256),	-- Demonic Gladiator's Ironskin Belt [A]
						i(149150),	-- Demonic Gladiator's Ironskin Cloak [A]
						i(149246),	-- Demonic Gladiator's Ironskin Gloves [A]
						i(149248),	-- Demonic Gladiator's Ironskin Helm [A]
						i(149250),	-- Demonic Gladiator's Ironskin Legguards [A]
						i(149244),	-- Demonic Gladiator's Ironskin Slippers [A]
						i(149252),	-- Demonic Gladiator's Ironskin Spaulders [A]
						i(149254),	-- Demonic Gladiator's Ironskin Tunic [A]
						i(149258),	-- Demonic Gladiator's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(149152),	-- Demonic Gladiator's Greatcloak of Faith [A]
						i(149266),	-- Demonic Gladiator's Scaled Breastplate [A]
						i(149270),	-- Demonic Gladiator's Scaled Gauntlets [A]
						i(149278),	-- Demonic Gladiator's Scaled Girdle [A]
						i(149272),	-- Demonic Gladiator's Scaled Helm [A]
						i(149274),	-- Demonic Gladiator's Scaled Legguards [A]
						i(149268),	-- Demonic Gladiator's Scaled Sabatons [A]
						i(149276),	-- Demonic Gladiator's Scaled Shoulders [A]
						i(149280),	-- Demonic Gladiator's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(149154),	-- Demonic Gladiator's Drape of Piety [A]
						i(149296),	-- Demonic Gladiator's Satin Bracers [A]
						i(149294),	-- Demonic Gladiator's Satin Cord [A]
						i(149284),	-- Demonic Gladiator's Satin Gloves [A]
						i(149286),	-- Demonic Gladiator's Satin Hood [A]
						i(149288),	-- Demonic Gladiator's Satin Leggings [A]
						i(149292),	-- Demonic Gladiator's Satin Mantle [A]
						i(149290),	-- Demonic Gladiator's Satin Robe [A]
						i(149282),	-- Demonic Gladiator's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(149316),	-- Demonic Gladiator's Leather Belt [A]
						i(149308),	-- Demonic Gladiator's Leather Gloves [A]
						i(149310),	-- Demonic Gladiator's Leather Helm [A]
						i(149312),	-- Demonic Gladiator's Leather Legguards [A]
						i(149306),	-- Demonic Gladiator's Leather Slippers [A]
						i(149314),	-- Demonic Gladiator's Leather Spaulders [A]
						i(149304),	-- Demonic Gladiator's Leather Tunic [A]
						i(149318),	-- Demonic Gladiator's Leather Wristguards [A]
						i(149156),	-- Demonic Gladiator's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(149334),	-- Demonic Gladiator's Ringmail Armband [A]
						i(149320),	-- Demonic Gladiator's Ringmail Armor [A]
						i(149322),	-- Demonic Gladiator's Ringmail Boots [A]
						i(149332),	-- Demonic Gladiator's Ringmail Clasp [A]
						i(149324),	-- Demonic Gladiator's Ringmail Gauntlets [A]
						i(149326),	-- Demonic Gladiator's Ringmail Helm [A]
						i(149328),	-- Demonic Gladiator's Ringmail Leggings [A]
						i(149330),	-- Demonic Gladiator's Ringmail Spaulders [A]
						i(149158),	-- Demonic Gladiator's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(149364),	-- Demonic Gladiator's Felweave Amice [A]
						i(149368),	-- Demonic Gladiator's Felweave Bracers [A]
						i(149160),	-- Demonic Gladiator's Felweave Cloak [A]
						i(149366),	-- Demonic Gladiator's Felweave Cord [A]
						i(149358),	-- Demonic Gladiator's Felweave Cowl [A]
						i(149356),	-- Demonic Gladiator's Felweave Handguards [A]
						i(149362),	-- Demonic Gladiator's Felweave Raiment [A]
						i(149354),	-- Demonic Gladiator's Felweave Treads [A]
						i(149360),	-- Demonic Gladiator's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(149162),	-- Demonic Gladiator's Cloak of Battle [A]
						i(149370),	-- Demonic Gladiator's Plate Chestpiece [A]
						i(149374),	-- Demonic Gladiator's Plate Gauntlets [A]
						i(149382),	-- Demonic Gladiator's Plate Girdle [A]
						i(149376),	-- Demonic Gladiator's Plate Helm [A]
						i(149378),	-- Demonic Gladiator's Plate Legguards [A]
						i(149380),	-- Demonic Gladiator's Plate Shoulders [A]
						i(149372),	-- Demonic Gladiator's Plate Warboots [A]
						i(149384),	-- Demonic Gladiator's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(149300),	-- Demonic Gladiator's Band [A]
					i(149298),	-- Demonic Gladiator's Ring [A]
					i(149302),	-- Demonic Gladiator's Signet [A]
				}),
				filter(NECK_F, {
					i(149264),	-- Demonic Gladiator's Choker [A]
					i(149260),	-- Demonic Gladiator's Necklace [A]
					i(149262),	-- Demonic Gladiator's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(149338),	-- Demonic Gladiator's Accolade of Conquest [A]
					i(149344),	-- Demonic Gladiator's Accolade of Dominance [A]
					i(149350),	-- Demonic Gladiator's Accolade of Victory [A]
					i(149336),	-- Demonic Gladiator's Badge of Conquest [A]
					i(149342),	-- Demonic Gladiator's Badge of Dominance [A]
					i(149348),	-- Demonic Gladiator's Badge of Victory [A]
					i(149340),	-- Demonic Gladiator's Insignia of Conquest [A]
					i(149346),	-- Demonic Gladiator's Insignia of Dominance [A]
					i(149352),	-- Demonic Gladiator's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, ["races"] = HORDE_ONLY }, {
				n(119272, {	-- Sarah the Savage <Legion Elite Gladiator>
					["coord"] = { 57.0, 27.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["sourceAchievements"] = { 12198 },	-- Demonic Elite
						["cost"] = {{"i", MOH, 50}},
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						i(147778, {	-- Enchanter's Illusion - Demonic Tyranny (ILLUSION!)
							["sourceAchievements"] = { 12168 },	-- Gladiator: Legion Season 7
							["cost"] = {{"i", MOH, 12}},
						}),
						i(149452),	-- Demonic Gladiator's Cloak [H]
						i(149450),	-- Demonic Gladiator's Tabard [H]
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(149141),	-- Demonic Gladiator's Dreadcloak [H]
						i(149165),	-- Demonic Gladiator's Dreadplate Chestpiece [H]
						i(149169),	-- Demonic Gladiator's Dreadplate Gauntlets [H]
						i(149177),	-- Demonic Gladiator's Dreadplate Girdle [H]
						i(149171),	-- Demonic Gladiator's Dreadplate Helm [H]
						i(149173),	-- Demonic Gladiator's Dreadplate Legguards [H]
						i(149167),	-- Demonic Gladiator's Dreadplate Sabatons [H]
						i(149175),	-- Demonic Gladiator's Dreadplate Shoulders [H]
						i(149179),	-- Demonic Gladiator's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(149143),	-- Demonic Gladiator's Demonthread Cloak [H]
						i(149193),	-- Demonic Gladiator's Felskin Belt [H]
						i(149183),	-- Demonic Gladiator's Felskin Boots [H]
						i(149185),	-- Demonic Gladiator's Felskin Gloves [H]
						i(149187),	-- Demonic Gladiator's Felskin Helm [H]
						i(149189),	-- Demonic Gladiator's Felskin Legguards [H]
						i(149191),	-- Demonic Gladiator's Felskin Spaulders [H]
						i(149181),	-- Demonic Gladiator's Felskin Tunic [H]
						i(149195),	-- Demonic Gladiator's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(149209),	-- Demonic Gladiator's Dragonhide Belt [H]
						i(149145),	-- Demonic Gladiator's Dragonhide Cloak [H]
						i(149201),	-- Demonic Gladiator's Dragonhide Gloves [H]
						i(149203),	-- Demonic Gladiator's Dragonhide Helm [H]
						i(149205),	-- Demonic Gladiator's Dragonhide Legguards [H]
						i(149199),	-- Demonic Gladiator's Dragonhide Moccasins [H]
						i(149207),	-- Demonic Gladiator's Dragonhide Spaulders [H]
						i(149197),	-- Demonic Gladiator's Dragonhide Vest [H]
						i(149211),	-- Demonic Gladiator's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(149147),	-- Demonic Gladiator's Drape of the Tracker [H]
						i(149227),	-- Demonic Gladiator's Chain Armband [H]
						i(149213),	-- Demonic Gladiator's Chain Armor [H]
						i(149225),	-- Demonic Gladiator's Chain Clasp [H]
						i(149217),	-- Demonic Gladiator's Chain Gauntlets [H]
						i(149219),	-- Demonic Gladiator's Chain Helm [H]
						i(149221),	-- Demonic Gladiator's Chain Leggings [H]
						i(149223),	-- Demonic Gladiator's Chain Spaulders [H]
						i(149215),	-- Demonic Gladiator's Chain Treads [H]
					}),
					cl(MAGE, {
						i(149239),	-- Demonic Gladiator's Silk Amice [H]
						i(149243),	-- Demonic Gladiator's Silk Bracers [H]
						i(149241),	-- Demonic Gladiator's Silk Cord [H]
						i(149233),	-- Demonic Gladiator's Silk Cowl [H]
						i(149231),	-- Demonic Gladiator's Silk Handguards [H]
						i(149229),	-- Demonic Gladiator's Silk Treads [H]
						i(149235),	-- Demonic Gladiator's Silk Trousers [H]
						i(149237),	-- Demonic Gladiator's Silk Tunic [H]
						i(149149),	-- Demonic Gladiator's Silken Shawl [H]
					}),
					cl(MONK, {
						i(149257),	-- Demonic Gladiator's Ironskin Belt [H]
						i(149151),	-- Demonic Gladiator's Ironskin Cloak [H]
						i(149247),	-- Demonic Gladiator's Ironskin Gloves [H]
						i(149249),	-- Demonic Gladiator's Ironskin Helm [H]
						i(149251),	-- Demonic Gladiator's Ironskin Legguards [H]
						i(149245),	-- Demonic Gladiator's Ironskin Slippers [H]
						i(149253),	-- Demonic Gladiator's Ironskin Spaulders [H]
						i(149255),	-- Demonic Gladiator's Ironskin Tunic [H]
						i(149259),	-- Demonic Gladiator's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(149153),	-- Demonic Gladiator's Greatcloak of Faith [H]
						i(149267),	-- Demonic Gladiator's Scaled Breastplate [H]
						i(149271),	-- Demonic Gladiator's Scaled Gauntlets [H]
						i(149279),	-- Demonic Gladiator's Scaled Girdle [H]
						i(149273),	-- Demonic Gladiator's Scaled Helm [H]
						i(149275),	-- Demonic Gladiator's Scaled Legguards [H]
						i(149269),	-- Demonic Gladiator's Scaled Sabatons [H]
						i(149277),	-- Demonic Gladiator's Scaled Shoulders [H]
						i(149281),	-- Demonic Gladiator's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(149155),	-- Demonic Gladiator's Drape of Piety [H]
						i(149297),	-- Demonic Gladiator's Satin Bracers [H]
						i(149295),	-- Demonic Gladiator's Satin Cord [H]
						i(149285),	-- Demonic Gladiator's Satin Gloves [H]
						i(149287),	-- Demonic Gladiator's Satin Hood [H]
						i(149289),	-- Demonic Gladiator's Satin Leggings [H]
						i(149293),	-- Demonic Gladiator's Satin Mantle [H]
						i(149291),	-- Demonic Gladiator's Satin Robe [H]
						i(149283),	-- Demonic Gladiator's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(149317),	-- Demonic Gladiator's Leather Belt [H]
						i(149309),	-- Demonic Gladiator's Leather Gloves [H]
						i(149311),	-- Demonic Gladiator's Leather Helm [H]
						i(149313),	-- Demonic Gladiator's Leather Legguards [H]
						i(149307),	-- Demonic Gladiator's Leather Slippers [H]
						i(149315),	-- Demonic Gladiator's Leather Spaulders [H]
						i(149305),	-- Demonic Gladiator's Leather Tunic [H]
						i(149319),	-- Demonic Gladiator's Leather Wristguards [H]
						i(149157),	-- Demonic Gladiator's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(149335),	-- Demonic Gladiator's Ringmail Armband [H]
						i(149321),	-- Demonic Gladiator's Ringmail Armor [H]
						i(149323),	-- Demonic Gladiator's Ringmail Boots [H]
						i(149333),	-- Demonic Gladiator's Ringmail Clasp [H]
						i(149325),	-- Demonic Gladiator's Ringmail Gauntlets [H]
						i(149327),	-- Demonic Gladiator's Ringmail Helm [H]
						i(149329),	-- Demonic Gladiator's Ringmail Leggings [H]
						i(149331),	-- Demonic Gladiator's Ringmail Spaulders [H]
						i(149159),	-- Demonic Gladiator's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(149365),	-- Demonic Gladiator's Felweave Amice [H]
						i(149369),	-- Demonic Gladiator's Felweave Bracers [H]
						i(149161),	-- Demonic Gladiator's Felweave Cloak [H]
						i(149367),	-- Demonic Gladiator's Felweave Cord [H]
						i(149359),	-- Demonic Gladiator's Felweave Cowl [H]
						i(149357),	-- Demonic Gladiator's Felweave Handguards [H]
						i(149363),	-- Demonic Gladiator's Felweave Raiment [H]
						i(149355),	-- Demonic Gladiator's Felweave Treads [H]
						i(149361),	-- Demonic Gladiator's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(149163),	-- Demonic Gladiator's Cloak of Battle [H]
						i(149371),	-- Demonic Gladiator's Plate Chestpiece [H]
						i(149375),	-- Demonic Gladiator's Plate Gauntlets [H]
						i(149383),	-- Demonic Gladiator's Plate Girdle [H]
						i(149377),	-- Demonic Gladiator's Plate Helm [H]
						i(149379),	-- Demonic Gladiator's Plate Legguards [H]
						i(149381),	-- Demonic Gladiator's Plate Shoulders [H]
						i(149373),	-- Demonic Gladiator's Plate Warboots [H]
						i(149385),	-- Demonic Gladiator's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(149301),	-- Demonic Gladiator's Band [H]
					i(149299),	-- Demonic Gladiator's Ring [H]
					i(149303),	-- Demonic Gladiator's Signet [H]
				}),
				filter(NECK_F, {
					i(149265),	-- Demonic Gladiator's Choker [H]
					i(149261),	-- Demonic Gladiator's Necklace [H]
					i(149263),	-- Demonic Gladiator's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(149339),	-- Demonic Gladiator's Accolade of Conquest [H]
					i(149345),	-- Demonic Gladiator's Accolade of Dominance [H]
					i(149351),	-- Demonic Gladiator's Accolade of Victory [H]
					i(149337),	-- Demonic Gladiator's Badge of Conquest [H]
					i(149343),	-- Demonic Gladiator's Badge of Dominance [H]
					i(149349),	-- Demonic Gladiator's Badge of Victory [H]
					i(149341),	-- Demonic Gladiator's Insignia of Conquest [H]
					i(149347),	-- Demonic Gladiator's Insignia of Dominance [H]
					i(149353),	-- Demonic Gladiator's Insignia of Victory [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 } }, {
				filter(RELICS_F, {
					i(155733),	-- Alliance of Convenience
					i(155752),	-- Battering Tempest
					i(155743),	-- Battle-Tempered Hilt
					i(155734),	-- Blaze of Glory
					i(155749),	-- Blindside Approach
					i(155741),	-- Brilliant Sunstone
					i(155746),	-- "Borrowed Soul" Essence
					i(155740),	-- Clarity of Conviction
					i(155739),	-- Cold Sweat
					i(155737),	-- Conscience of the Victorious
					i(155751),	-- Dead Man's Tale
					i(155726),	-- Exhaustive Research
					i(155731),	-- Fel-Loaded Dice
					i(155735),	-- Flame of the Fallen
					i(155728),	-- Grisly Souvenir
					i(155732),	-- Performance Enhancing Curio
					i(155748),	-- Petrified Ancient's Thumb
					i(155750),	-- Polished Shadowstone
					i(155742),	-- Radiance of Dawn
					i(155725),	-- Reactive Intuition
					i(155754),	-- Roar of the Crowd
					i(155745),	-- Steadfast Conviction
					i(155738),	-- Superiority's Contempt
					i(155727),	-- Taboo Knowledge
					i(155729),	-- Thirsty Bloodstone
					i(155730),	-- Thrill of Battle
					i(155753),	-- Thundering Impact
					i(155747),	-- Tombweed Bloom
					i(155736),	-- Torch of Competition
					i(155744),	-- Unflinching Grit
				}),
			})),
		}),
	})),
})));
