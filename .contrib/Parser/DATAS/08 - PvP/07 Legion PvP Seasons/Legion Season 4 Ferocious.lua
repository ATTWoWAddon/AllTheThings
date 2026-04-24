-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(expansion(EXPANSION.LEGION, {
	n(SEASON_FEROCIOUS, bubbleDownSelf({
		["timeline"] = { ADDED_7_2_5, REMOVED_7_3_0, ADDED_7_3_0 },
	}, {
		n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_7_2_5, REMOVED_7_3_0 } }, {
			ach(11010, {	-- Ferocious Combatant [A]
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(103533),	-- Vicious Saddle
				},
			}),
			ach(11009, {	-- Ferocious Combatant [H]
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(103533),	-- Vicious Saddle
				},
			}),
			ach(11060),		-- Challenger: Legion Season 4
			ach(11059),		-- Rival: Legion Season 4
			ach(11058),		-- Duelist: Legion Season 4
			ach(11698),		-- Ferocious Elite
			ach(11061, {	-- Gladiator: Legion Season 4
				i(141846),	-- Ferocious Gladiator's Storm Dragon (MOUNT!)
			}),
			ach(11002, {	-- Ferocious Gladiator's Storm Dragon
				["provider"] = { "i", 141846 },	-- Ferocious Gladiator's Storm Dragon (MOUNT!)
				["filterID"] = MOUNTS,
			}),
			ach(11062, {	-- Ferocious Gladiator: Legion Season 4
				title(360),	-- Ferocious Gladiator <Name>
			}),
			-- RBG
			ach(11050, {	-- Soldier of the Alliance: Legion Season 4
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11051, {	-- Soldier of the Horde: Legion Season 4
				["races"] = HORDE_ONLY,
			}),
			ach(11054, {	-- Defender of the Alliance: Legion Season 4
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11055, {	-- Defender of the Horde: Legion Season 4
				["races"] = HORDE_ONLY,
			}),
			ach(11052, {	-- Guardian of the Alliance: Legion Season 4
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11053, {	-- Guardian of the Horde: Legion Season 4
				["races"] = HORDE_ONLY,
			}),
			ach(11056, {	-- Hero of the Alliance: Ferocious
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11057, {	-- Hero of the Horde: Ferocious
				["races"] = HORDE_ONLY,
			}),
			-- Fashion
			ach(11723, {	-- Cruel Intentions
				["timeline"] = { ADDED_7_2_5, REMOVED_7_3_0, ADDED_7_3_0 },
			}),
		})),
		n(PVP_COMBATANT, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5, REMOVED_7_3_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(145868),	-- Ferocious Combatant's Dreadcloak [A]
						i(145892),	-- Ferocious Combatant's Dreadplate Chestpiece [A]
						i(145896),	-- Ferocious Combatant's Dreadplate Gauntlets [A]
						i(145904),	-- Ferocious Combatant's Dreadplate Girdle [A]
						i(145898),	-- Ferocious Combatant's Dreadplate Helm [A]
						i(145900),	-- Ferocious Combatant's Dreadplate Legguards [A]
						i(145894),	-- Ferocious Combatant's Dreadplate Sabatons [A]
						i(145902),	-- Ferocious Combatant's Dreadplate Shoulders [A]
						i(145906),	-- Ferocious Combatant's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(145870),	-- Ferocious Combatant's Demonthread Cloak [A]
						i(145920),	-- Ferocious Combatant's Felskin Belt [A]
						i(145910),	-- Ferocious Combatant's Felskin Boots [A]
						i(145912),	-- Ferocious Combatant's Felskin Gloves [A]
						i(145914),	-- Ferocious Combatant's Felskin Helm [A]
						i(145916),	-- Ferocious Combatant's Felskin Legguards [A]
						i(145918),	-- Ferocious Combatant's Felskin Spaulders [A]
						i(145908),	-- Ferocious Combatant's Felskin Tunic [A]
						i(145922),	-- Ferocious Combatant's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(145936),	-- Ferocious Combatant's Dragonhide Belt [A]
						i(145872),	-- Ferocious Combatant's Dragonhide Cloak [A]
						i(145928),	-- Ferocious Combatant's Dragonhide Gloves [A]
						i(145930),	-- Ferocious Combatant's Dragonhide Helm [A]
						i(145932),	-- Ferocious Combatant's Dragonhide Legguards [A]
						i(145926),	-- Ferocious Combatant's Dragonhide Moccasins [A]
						i(145934),	-- Ferocious Combatant's Dragonhide Spaulders [A]
						i(145924),	-- Ferocious Combatant's Dragonhide Tunic [A]
						i(145938),	-- Ferocious Combatant's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(145954),	-- Ferocious Combatant's Chain Armband [A]
						i(145940),	-- Ferocious Combatant's Chain Armor [A]
						i(145952),	-- Ferocious Combatant's Chain Clasp [A]
						i(145944),	-- Ferocious Combatant's Chain Gauntlets [A]
						i(145946),	-- Ferocious Combatant's Chain Helm [A]
						i(145948),	-- Ferocious Combatant's Chain Leggings [A]
						i(145950),	-- Ferocious Combatant's Chain Spaulders [A]
						i(145942),	-- Ferocious Combatant's Chain Treads [A]
						i(145874),	-- Ferocious Combatant's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(145966),	-- Ferocious Combatant's Silk Amice [A]
						i(145970),	-- Ferocious Combatant's Silk Bracers [A]
						i(145968),	-- Ferocious Combatant's Silk Cord [A]
						i(145960),	-- Ferocious Combatant's Silk Cowl [A]
						i(145958),	-- Ferocious Combatant's Silk Handguards [A]
						i(145964),	-- Ferocious Combatant's Silk Robe [A]
						i(145956),	-- Ferocious Combatant's Silk Treads [A]
						i(145962),	-- Ferocious Combatant's Silk Trousers [A]
						i(145876),	-- Ferocious Combatant's Silken Shawl [A]
					}),
					cl(MONK, {
						i(145984),	-- Ferocious Combatant's Ironskin Belt [A]
						i(145878),	-- Ferocious Combatant's Ironskin Cloak [A]
						i(145974),	-- Ferocious Combatant's Ironskin Gloves [A]
						i(145976),	-- Ferocious Combatant's Ironskin Helm [A]
						i(145978),	-- Ferocious Combatant's Ironskin Legguards [A]
						i(145972),	-- Ferocious Combatant's Ironskin Slippers [A]
						i(145980),	-- Ferocious Combatant's Ironskin Spaulders [A]
						i(145982),	-- Ferocious Combatant's Ironskin Tunic [A]
						i(145986),	-- Ferocious Combatant's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(145880),	-- Ferocious Combatant's Greatcloak of Faith [A]
						i(145994),	-- Ferocious Combatant's Scaled Chestpiece [A]
						i(145998),	-- Ferocious Combatant's Scaled Gauntlets [A]
						i(146006),	-- Ferocious Combatant's Scaled Girdle [A]
						i(146000),	-- Ferocious Combatant's Scaled Helm [A]
						i(146002),	-- Ferocious Combatant's Scaled Legguards [A]
						i(145996),	-- Ferocious Combatant's Scaled Sabatons [A]
						i(146004),	-- Ferocious Combatant's Scaled Shoulders [A]
						i(146008),	-- Ferocious Combatant's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(145882),	-- Ferocious Combatant's Drape of Piety [A]
						i(146024),	-- Ferocious Combatant's Satin Bracers [A]
						i(146022),	-- Ferocious Combatant's Satin Cord [A]
						i(146012),	-- Ferocious Combatant's Satin Gloves [A]
						i(146014),	-- Ferocious Combatant's Satin Hood [A]
						i(146016),	-- Ferocious Combatant's Satin Leggings [A]
						i(146020),	-- Ferocious Combatant's Satin Mantle [A]
						i(146018),	-- Ferocious Combatant's Satin Robe [A]
						i(146010),	-- Ferocious Combatant's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(146044),	-- Ferocious Combatant's Leather Belt [A]
						i(146036),	-- Ferocious Combatant's Leather Gloves [A]
						i(146038),	-- Ferocious Combatant's Leather Helm [A]
						i(146040),	-- Ferocious Combatant's Leather Legguards [A]
						i(146034),	-- Ferocious Combatant's Leather Slippers [A]
						i(146042),	-- Ferocious Combatant's Leather Spaulders [A]
						i(146032),	-- Ferocious Combatant's Leather Tunic [A]
						i(146046),	-- Ferocious Combatant's Leather Wristguards [A]
						i(145884),	-- Ferocious Combatant's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(146062),	-- Ferocious Combatant's Ringmail Armband [A]
						i(146048),	-- Ferocious Combatant's Ringmail Armor [A]
						i(146050),	-- Ferocious Combatant's Ringmail Boots [A]
						i(146060),	-- Ferocious Combatant's Ringmail Clasp [A]
						i(146052),	-- Ferocious Combatant's Ringmail Gauntlets [A]
						i(146054),	-- Ferocious Combatant's Ringmail Helm [A]
						i(146056),	-- Ferocious Combatant's Ringmail Kilt [A]
						i(146058),	-- Ferocious Combatant's Ringmail Spaulders [A]
						i(145886),	-- Ferocious Combatant's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(146092),	-- Ferocious Combatant's Felweave Amice [A]
						i(146096),	-- Ferocious Combatant's Felweave Bracers [A]
						i(145888),	-- Ferocious Combatant's Felweave Cloak [A]
						i(146094),	-- Ferocious Combatant's Felweave Cord [A]
						i(146086),	-- Ferocious Combatant's Felweave Cowl [A]
						i(146084),	-- Ferocious Combatant's Felweave Handguards [A]
						i(146090),	-- Ferocious Combatant's Felweave Raiment [A]
						i(146082),	-- Ferocious Combatant's Felweave Treads [A]
						i(146088),	-- Ferocious Combatant's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(145890),	-- Ferocious Combatant's Cloak of Battle [A]
						i(146098),	-- Ferocious Combatant's Plate Chestpiece [A]
						i(146102),	-- Ferocious Combatant's Plate Gauntlets [A]
						i(146110),	-- Ferocious Combatant's Plate Girdle [A]
						i(146104),	-- Ferocious Combatant's Plate Helm [A]
						i(146106),	-- Ferocious Combatant's Plate Legguards [A]
						i(146108),	-- Ferocious Combatant's Plate Shoulders [A]
						i(146100),	-- Ferocious Combatant's Plate Warboots [A]
						i(146112),	-- Ferocious Combatant's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(146028),	-- Ferocious Combatant's Band [A]
					i(146026),	-- Ferocious Combatant's Ring [A]
					i(146030),	-- Ferocious Combatant's Signet [A]
				}),
				filter(NECK_F, {
					i(145992),	-- Ferocious Combatant's Choker [A]
					i(145988),	-- Ferocious Combatant's Necklace [A]
					i(145990),	-- Ferocious Combatant's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(146066),	-- Ferocious Combatant's Accolade of Conquest [A]
					i(146072),	-- Ferocious Combatant's Accolade of Dominance [A]
					i(146078),	-- Ferocious Combatant's Accolade of Victory [A]
					i(146064),	-- Ferocious Combatant's Badge of Conquest [A]
					i(146070),	-- Ferocious Combatant's Badge of Dominance [A]
					i(146076),	-- Ferocious Combatant's Badge of Victory [A]
					i(146068),	-- Ferocious Combatant's Insignia of Conquest [A]
					i(146074),	-- Ferocious Combatant's Insignia of Dominance [A]
					i(146080),	-- Ferocious Combatant's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5, REMOVED_7_3_0 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(145869),	-- Ferocious Combatant's Dreadcloak [H]
						i(145893),	-- Ferocious Combatant's Dreadplate Chestpiece [H]
						i(145897),	-- Ferocious Combatant's Dreadplate Gauntlets [H]
						i(145905),	-- Ferocious Combatant's Dreadplate Girdle [H]
						i(145899),	-- Ferocious Combatant's Dreadplate Helm [H]
						i(145901),	-- Ferocious Combatant's Dreadplate Legguards [H]
						i(145895),	-- Ferocious Combatant's Dreadplate Sabatons [H]
						i(145903),	-- Ferocious Combatant's Dreadplate Shoulders [H]
						i(145907),	-- Ferocious Combatant's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(145871),	-- Ferocious Combatant's Demonthread Cloak [H]
						i(145921),	-- Ferocious Combatant's Felskin Belt [H]
						i(145911),	-- Ferocious Combatant's Felskin Boots [H]
						i(145913),	-- Ferocious Combatant's Felskin Gloves [H]
						i(145915),	-- Ferocious Combatant's Felskin Helm [H]
						i(145917),	-- Ferocious Combatant's Felskin Legguards [H]
						i(145919),	-- Ferocious Combatant's Felskin Spaulders [H]
						i(145909),	-- Ferocious Combatant's Felskin Tunic [H]
						i(145923),	-- Ferocious Combatant's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(145937),	-- Ferocious Combatant's Dragonhide Belt [H]
						i(145873),	-- Ferocious Combatant's Dragonhide Cloak [H]
						i(145929),	-- Ferocious Combatant's Dragonhide Gloves [H]
						i(145931),	-- Ferocious Combatant's Dragonhide Helm [H]
						i(145933),	-- Ferocious Combatant's Dragonhide Legguards [H]
						i(145927),	-- Ferocious Combatant's Dragonhide Moccasins [H]
						i(145935),	-- Ferocious Combatant's Dragonhide Spaulders [H]
						i(145925),	-- Ferocious Combatant's Dragonhide Tunic [H]
						i(145939),	-- Ferocious Combatant's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(145955),	-- Ferocious Combatant's Chain Armband [H]
						i(145941),	-- Ferocious Combatant's Chain Armor [H]
						i(145953),	-- Ferocious Combatant's Chain Clasp [H]
						i(145945),	-- Ferocious Combatant's Chain Gauntlets [H]
						i(145947),	-- Ferocious Combatant's Chain Helm [H]
						i(145949),	-- Ferocious Combatant's Chain Leggings [H]
						i(145951),	-- Ferocious Combatant's Chain Spaulders [H]
						i(145943),	-- Ferocious Combatant's Chain Treads [H]
						i(145875),	-- Ferocious Combatant's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(145967),	-- Ferocious Combatant's Silk Amice [H]
						i(145971),	-- Ferocious Combatant's Silk Bracers [H]
						i(145969),	-- Ferocious Combatant's Silk Cord [H]
						i(145961),	-- Ferocious Combatant's Silk Cowl [H]
						i(145959),	-- Ferocious Combatant's Silk Handguards [H]
						i(145965),	-- Ferocious Combatant's Silk Robe [H]
						i(145957),	-- Ferocious Combatant's Silk Treads [H]
						i(145963),	-- Ferocious Combatant's Silk Trousers [H]
						i(145877),	-- Ferocious Combatant's Silken Shawl [H]
					}),
					cl(MONK, {
						i(145985),	-- Ferocious Combatant's Ironskin Belt [H]
						i(145879),	-- Ferocious Combatant's Ironskin Cloak [H]
						i(145975),	-- Ferocious Combatant's Ironskin Gloves [H]
						i(145977),	-- Ferocious Combatant's Ironskin Helm [H]
						i(145979),	-- Ferocious Combatant's Ironskin Legguards [H]
						i(145973),	-- Ferocious Combatant's Ironskin Slippers [H]
						i(145981),	-- Ferocious Combatant's Ironskin Spaulders [H]
						i(145983),	-- Ferocious Combatant's Ironskin Tunic [H]
						i(145987),	-- Ferocious Combatant's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(145881),	-- Ferocious Combatant's Greatcloak of Faith [H]
						i(145995),	-- Ferocious Combatant's Scaled Chestpiece [H]
						i(145999),	-- Ferocious Combatant's Scaled Gauntlets [H]
						i(146007),	-- Ferocious Combatant's Scaled Girdle [H]
						i(146001),	-- Ferocious Combatant's Scaled Helm [H]
						i(146003),	-- Ferocious Combatant's Scaled Legguards [H]
						i(145997),	-- Ferocious Combatant's Scaled Sabatons [H]
						i(146005),	-- Ferocious Combatant's Scaled Shoulders [H]
						i(146009),	-- Ferocious Combatant's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(145883),	-- Ferocious Combatant's Drape of Piety [H]
						i(146025),	-- Ferocious Combatant's Satin Bracers [H]
						i(146023),	-- Ferocious Combatant's Satin Cord [H]
						i(146013),	-- Ferocious Combatant's Satin Gloves [H]
						i(146015),	-- Ferocious Combatant's Satin Hood [H]
						i(146017),	-- Ferocious Combatant's Satin Leggings [H]
						i(146021),	-- Ferocious Combatant's Satin Mantle [H]
						i(146019),	-- Ferocious Combatant's Satin Robe [H]
						i(146011),	-- Ferocious Combatant's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(146045),	-- Ferocious Combatant's Leather Belt [H]
						i(146037),	-- Ferocious Combatant's Leather Gloves [H]
						i(146039),	-- Ferocious Combatant's Leather Helm [H]
						i(146041),	-- Ferocious Combatant's Leather Legguards [H]
						i(146035),	-- Ferocious Combatant's Leather Slippers [H]
						i(146043),	-- Ferocious Combatant's Leather Spaulders [H]
						i(146033),	-- Ferocious Combatant's Leather Tunic [H]
						i(146047),	-- Ferocious Combatant's Leather Wristguards [H]
						i(145885),	-- Ferocious Combatant's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(146063),	-- Ferocious Combatant's Ringmail Armband [H]
						i(146049),	-- Ferocious Combatant's Ringmail Armor [H]
						i(146051),	-- Ferocious Combatant's Ringmail Boots [H]
						i(146061),	-- Ferocious Combatant's Ringmail Clasp [H]
						i(146053),	-- Ferocious Combatant's Ringmail Gauntlets [H]
						i(146055),	-- Ferocious Combatant's Ringmail Helm [H]
						i(146057),	-- Ferocious Combatant's Ringmail Leggings [H]
						i(146059),	-- Ferocious Combatant's Ringmail Spaulders [H]
						i(145887),	-- Ferocious Combatant's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(146093),	-- Ferocious Combatant's Felweave Amice [H]
						i(146097),	-- Ferocious Combatant's Felweave Bracers [H]
						i(145889),	-- Ferocious Combatant's Felweave Cloak [H]
						i(146095),	-- Ferocious Combatant's Felweave Cord [H]
						i(146087),	-- Ferocious Combatant's Felweave Cowl [H]
						i(146085),	-- Ferocious Combatant's Felweave Handguards [H]
						i(146091),	-- Ferocious Combatant's Felweave Raiment [H]
						i(146083),	-- Ferocious Combatant's Felweave Treads [H]
						i(146089),	-- Ferocious Combatant's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(145891),	-- Ferocious Combatant's Cloak of Battle [H]
						i(146099),	-- Ferocious Combatant's Plate Chestpiece [H]
						i(146103),	-- Ferocious Combatant's Plate Gauntlets [H]
						i(146111),	-- Ferocious Combatant's Plate Girdle [H]
						i(146105),	-- Ferocious Combatant's Plate Helm [H]
						i(146107),	-- Ferocious Combatant's Plate Legguards [H]
						i(146109),	-- Ferocious Combatant's Plate Shoulders [H]
						i(146101),	-- Ferocious Combatant's Plate Warboots [H]
						i(146113),	-- Ferocious Combatant's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(146029),	-- Ferocious Combatant's Band [H]
					i(146027),	-- Ferocious Combatant's Ring [H]
					i(146031),	-- Ferocious Combatant's Signet [H]
				}),
				filter(NECK_F, {
					i(145993),	-- Ferocious Combatant's Choker [H]
					i(145989),	-- Ferocious Combatant's Necklace [H]
					i(145991),	-- Ferocious Combatant's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(146067),	-- Ferocious Combatant's Accolade of Conquest [H]
					i(146073),	-- Ferocious Combatant's Accolade of Dominance [H]
					i(146079),	-- Ferocious Combatant's Accolade of Victory [H]
					i(146065),	-- Ferocious Combatant's Badge of Conquest [H]
					i(146071),	-- Ferocious Combatant's Badge of Dominance [H]
					i(146077),	-- Ferocious Combatant's Badge of Victory [H]
					i(146069),	-- Ferocious Combatant's Insignia of Conquest [H]
					i(146075),	-- Ferocious Combatant's Insignia of Dominance [H]
					i(146081),	-- Ferocious Combatant's Insignia of Victory [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5, REMOVED_7_3_0 } }, {
				filter(RELICS_F, {
					i(145354),	-- Alliance of Convenience
					i(145373),	-- Battering Tempest
					i(145364),	-- Battle-Tempered Hilt
					i(145355),	-- Blaze of Glory
					i(145370),	-- Blindside Approach
					i(145362),	-- Brilliant Sunstone
					i(145367),	-- "Borrowed Soul" Essence
					i(145361),	-- Clarity of Conviction
					i(145360),	-- Cold Sweat
					i(145358),	-- Conscience of the Victorious
					i(145372),	-- Dead Man's Tale
					i(145347),	-- Exhaustive Research
					i(145352),	-- Fel-Loaded Dice
					i(145356),	-- Flame of the Fallen
					i(145349),	-- Grisly Souvenir
					i(145353),	-- Performance Enhancing Curio
					i(145369),	-- Petrified Ancient's Thumb
					i(145371),	-- Polished Shadowstone
					i(145363),	-- Radiance of Dawn
					i(145346),	-- Reactive Intuition
					i(145375),	-- Roar of the Crowd
					i(145366),	-- Steadfast Conviction
					i(145359),	-- Superiority's Contempt
					i(145348),	-- Taboo Knowledge
					i(145350),	-- Thirsty Bloodstone
					i(145351),	-- Thrill of Battle
					i(145374),	-- Thundering Impact
					i(145368),	-- Tombweed Bloom
					i(145357),	-- Torch of Competition
					i(145365),	-- Unflinching Grit
				}),
			})),
		}),
		n(PVP_GLADIATOR, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5, REMOVED_7_3_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(145376),	-- Ferocious Gladiator's Dreadcloak [A]
						i(145400),	-- Ferocious Gladiator's Dreadplate Chestpiece [A]
						i(145404),	-- Ferocious Gladiator's Dreadplate Gauntlets [A]
						i(145412),	-- Ferocious Gladiator's Dreadplate Girdle [A]
						i(145406),	-- Ferocious Gladiator's Dreadplate Helm [A]
						i(145408),	-- Ferocious Gladiator's Dreadplate Legguards [A]
						i(145402),	-- Ferocious Gladiator's Dreadplate Sabatons [A]
						i(145410),	-- Ferocious Gladiator's Dreadplate Shoulders [A]
						i(145414),	-- Ferocious Gladiator's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(145378),	-- Ferocious Gladiator's Demonthread Cloak [A]
						i(145428),	-- Ferocious Gladiator's Felskin Belt [A]
						i(145418),	-- Ferocious Gladiator's Felskin Boots [A]
						i(145420),	-- Ferocious Gladiator's Felskin Gloves [A]
						i(145422),	-- Ferocious Gladiator's Felskin Helm [A]
						i(145424),	-- Ferocious Gladiator's Felskin Legguards [A]
						i(145426),	-- Ferocious Gladiator's Felskin Spaulders [A]
						i(145416),	-- Ferocious Gladiator's Felskin Tunic [A]
						i(145430),	-- Ferocious Gladiator's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(145444),	-- Ferocious Gladiator's Dragonhide Belt [A]
						i(145380),	-- Ferocious Gladiator's Dragonhide Cloak [A]
						i(145436),	-- Ferocious Gladiator's Dragonhide Gloves [A]
						i(145438),	-- Ferocious Gladiator's Dragonhide Helm [A]
						i(145440),	-- Ferocious Gladiator's Dragonhide Legguards [A]
						i(145434),	-- Ferocious Gladiator's Dragonhide Moccasins [A]
						i(145432),	-- Ferocious Gladiator's Dragonhide Robe [A]
						i(145442),	-- Ferocious Gladiator's Dragonhide Spaulders [A]
						i(145446),	-- Ferocious Gladiator's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(145462),	-- Ferocious Gladiator's Chain Armband [A]
						i(145448),	-- Ferocious Gladiator's Chain Armor [A]
						i(145460),	-- Ferocious Gladiator's Chain Clasp [A]
						i(145452),	-- Ferocious Gladiator's Chain Gauntlets [A]
						i(145454),	-- Ferocious Gladiator's Chain Helm [A]
						i(145456),	-- Ferocious Gladiator's Chain Leggings [A]
						i(145458),	-- Ferocious Gladiator's Chain Spaulders [A]
						i(145450),	-- Ferocious Gladiator's Chain Treads [A]
						i(145382),	-- Ferocious Gladiator's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(145474),	-- Ferocious Gladiator's Silk Amice [A]
						i(145478),	-- Ferocious Gladiator's Silk Bracers [A]
						i(145476),	-- Ferocious Gladiator's Silk Cord [A]
						i(145468),	-- Ferocious Gladiator's Silk Cowl [A]
						i(145466),	-- Ferocious Gladiator's Silk Handguards [A]
						i(145472),	-- Ferocious Gladiator's Silk Robe [A]
						i(145464),	-- Ferocious Gladiator's Silk Treads [A]
						i(145470),	-- Ferocious Gladiator's Silk Trousers [A]
						i(145384),	-- Ferocious Gladiator's Silken Shawl [A]
					}),
					cl(MONK, {
						i(145386),	-- Ferocious Gladiator's Ironskin Cloak [A]
						i(145492),	-- Ferocious Gladiator's Ironskin Belt [A]
						i(145482),	-- Ferocious Gladiator's Ironskin Gloves [A]
						i(145484),	-- Ferocious Gladiator's Ironskin Helm [A]
						i(145486),	-- Ferocious Gladiator's Ironskin Legguards [A]
						i(145480),	-- Ferocious Gladiator's Ironskin Slippers [A]
						i(145488),	-- Ferocious Gladiator's Ironskin Spaulders [A]
						i(145490),	-- Ferocious Gladiator's Ironskin Tunic [A]
						i(145494),	-- Ferocious Gladiator's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(145388),	-- Ferocious Gladiator's Greatcloak of Faith [A]
						i(145511),	-- Ferocious Gladiator's Scaled Breastplate [A]
						i(145505),	-- Ferocious Gladiator's Scaled Gauntlets [A]
						i(145514),	-- Ferocious Gladiator's Scaled Girdle [A]
						i(145507),	-- Ferocious Gladiator's Scaled Helm [A]
						i(145509),	-- Ferocious Gladiator's Scaled Legguards [A]
						i(145503),	-- Ferocious Gladiator's Scaled Sabatons [A]
						i(145512),	-- Ferocious Gladiator's Scaled Shoulders [A]
						i(145516),	-- Ferocious Gladiator's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(145390),	-- Ferocious Gladiator's Drape of Piety [A]
						i(145532),	-- Ferocious Gladiator's Satin Bracers [A]
						i(145530),	-- Ferocious Gladiator's Satin Cord [A]
						i(145520),	-- Ferocious Gladiator's Satin Gloves [A]
						i(145522),	-- Ferocious Gladiator's Satin Hood [A]
						i(145524),	-- Ferocious Gladiator's Satin Leggings [A]
						i(145528),	-- Ferocious Gladiator's Satin Mantle [A]
						i(145526),	-- Ferocious Gladiator's Satin Robe [A]
						i(145518),	-- Ferocious Gladiator's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(145552),	-- Ferocious Gladiator's Leather Belt [A]
						i(145544),	-- Ferocious Gladiator's Leather Gloves [A]
						i(145546),	-- Ferocious Gladiator's Leather Helm [A]
						i(145548),	-- Ferocious Gladiator's Leather Legguards [A]
						i(145542),	-- Ferocious Gladiator's Leather Slippers [A]
						i(145550),	-- Ferocious Gladiator's Leather Spaulders [A]
						i(145540),	-- Ferocious Gladiator's Leather Tunic [A]
						i(145554),	-- Ferocious Gladiator's Leather Wristguards [A]
						i(145392),	-- Ferocious Gladiator's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(145570),	-- Ferocious Gladiator's Ringmail Armband [A]
						i(145556),	-- Ferocious Gladiator's Ringmail Armor [A]
						i(145558),	-- Ferocious Gladiator's Ringmail Boots [A]
						i(145568),	-- Ferocious Gladiator's Ringmail Clasp [A]
						i(145560),	-- Ferocious Gladiator's Ringmail Gauntlets [A]
						i(145562),	-- Ferocious Gladiator's Ringmail Helm [A]
						i(145564),	-- Ferocious Gladiator's Ringmail Kilt [A]
						i(145566),	-- Ferocious Gladiator's Ringmail Spaulders [A]
						i(145394),	-- Ferocious Gladiator's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(145600),	-- Ferocious Gladiator's Felweave Amice [A]
						i(145604),	-- Ferocious Gladiator's Felweave Bracers [A]
						i(145396),	-- Ferocious Gladiator's Felweave Cloak [A]
						i(145602),	-- Ferocious Gladiator's Felweave Cord [A]
						i(145594),	-- Ferocious Gladiator's Felweave Cowl [A]
						i(145592),	-- Ferocious Gladiator's Felweave Handguards [A]
						i(145598),	-- Ferocious Gladiator's Felweave Raiment [A]
						i(145590),	-- Ferocious Gladiator's Felweave Treads [A]
						i(145596),	-- Ferocious Gladiator's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(145398),	-- Ferocious Gladiator's Cloak of Battle [A]
						i(145606),	-- Ferocious Gladiator's Plate Chestpiece [A]
						i(145610),	-- Ferocious Gladiator's Plate Gauntlets [A]
						i(145618),	-- Ferocious Gladiator's Plate Girdle [A]
						i(145612),	-- Ferocious Gladiator's Plate Helm [A]
						i(145614),	-- Ferocious Gladiator's Plate Legguards [A]
						i(145616),	-- Ferocious Gladiator's Plate Shoulders [A]
						i(145608),	-- Ferocious Gladiator's Plate Warboots [A]
						i(145620),	-- Ferocious Gladiator's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(145536),	-- Ferocious Gladiator's Band [A]
					i(145534),	-- Ferocious Gladiator's Ring [A]
					i(145538),	-- Ferocious Gladiator's Signet [A]
				}),
				filter(NECK_F, {
					i(145500),	-- Ferocious Gladiator's Choker [A]
					i(145496),	-- Ferocious Gladiator's Necklace [A]
					i(145498),	-- Ferocious Gladiator's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(145574),	-- Ferocious Gladiator's Accolade of Conquest [A]
					i(145580),	-- Ferocious Gladiator's Accolade of Dominance [A]
					i(145586),	-- Ferocious Gladiator's Accolade of Victory [A]
					i(145572),	-- Ferocious Gladiator's Badge of Conquest [A]
					i(145578),	-- Ferocious Gladiator's Badge of Dominance [A]
					i(145584),	-- Ferocious Gladiator's Badge of Victory [A]
					i(145576),	-- Ferocious Gladiator's Insignia of Conquest [A]
					i(145582),	-- Ferocious Gladiator's Insignia of Dominance [A]
					i(145588),	-- Ferocious Gladiator's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5, REMOVED_7_3_0 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(145377),	-- Ferocious Gladiator's Dreadcloak [H]
						i(145401),	-- Ferocious Gladiator's Dreadplate Chestpiece [H]
						i(145405),	-- Ferocious Gladiator's Dreadplate Gauntlets [H]
						i(145413),	-- Ferocious Gladiator's Dreadplate Girdle [H]
						i(145407),	-- Ferocious Gladiator's Dreadplate Helm [H]
						i(145409),	-- Ferocious Gladiator's Dreadplate Legguards [H]
						i(145403),	-- Ferocious Gladiator's Dreadplate Sabatons [H]
						i(145411),	-- Ferocious Gladiator's Dreadplate Shoulders [H]
						i(145415),	-- Ferocious Gladiator's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(145379),	-- Ferocious Gladiator's Demonthread Cloak [H]
						i(145429),	-- Ferocious Gladiator's Felskin Belt [H]
						i(145419),	-- Ferocious Gladiator's Felskin Boots [H]
						i(145421),	-- Ferocious Gladiator's Felskin Gloves [H]
						i(145423),	-- Ferocious Gladiator's Felskin Helm [H]
						i(145425),	-- Ferocious Gladiator's Felskin Legguards [H]
						i(145427),	-- Ferocious Gladiator's Felskin Spaulders [H]
						i(145417),	-- Ferocious Gladiator's Felskin Tunic [H]
						i(145431),	-- Ferocious Gladiator's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(145445),	-- Ferocious Gladiator's Dragonhide Belt [H]
						i(145381),	-- Ferocious Gladiator's Dragonhide Cloak [H]
						i(145437),	-- Ferocious Gladiator's Dragonhide Gloves [H]
						i(145439),	-- Ferocious Gladiator's Dragonhide Helm [H]
						i(145441),	-- Ferocious Gladiator's Dragonhide Legguards [H]
						i(145435),	-- Ferocious Gladiator's Dragonhide Moccasins [H]
						i(145433),	-- Ferocious Gladiator's Dragonhide Robe [H]
						i(145443),	-- Ferocious Gladiator's Dragonhide Spaulders [H]
						i(145447),	-- Ferocious Gladiator's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(145463),	-- Ferocious Gladiator's Chain Armband [H]
						i(145449),	-- Ferocious Gladiator's Chain Armor [H]
						i(145461),	-- Ferocious Gladiator's Chain Clasp [H]
						i(145453),	-- Ferocious Gladiator's Chain Gauntlets [H]
						i(145455),	-- Ferocious Gladiator's Chain Helm [H]
						i(145457),	-- Ferocious Gladiator's Chain Leggings [H]
						i(145459),	-- Ferocious Gladiator's Chain Spaulders [H]
						i(145451),	-- Ferocious Gladiator's Chain Treads [H]
						i(145383),	-- Ferocious Gladiator's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(145475),	-- Ferocious Gladiator's Silk Amice [H]
						i(145479),	-- Ferocious Gladiator's Silk Bracers [H]
						i(145477),	-- Ferocious Gladiator's Silk Cord [H]
						i(145469),	-- Ferocious Gladiator's Silk Cowl [H]
						i(145467),	-- Ferocious Gladiator's Silk Handguards [H]
						i(145473),	-- Ferocious Gladiator's Silk Robe [H]
						i(145465),	-- Ferocious Gladiator's Silk Treads [H]
						i(145471),	-- Ferocious Gladiator's Silk Trousers [H]
						i(145385),	-- Ferocious Gladiator's Silken Shawl [H]
					}),
					cl(MONK, {
						i(145493),	-- Ferocious Gladiator's Ironskin Belt [H]
						i(145387),	-- Ferocious Gladiator's Ironskin Cloak [H]
						i(145483),	-- Ferocious Gladiator's Ironskin Gloves [H]
						i(145485),	-- Ferocious Gladiator's Ironskin Helm [H]
						i(145487),	-- Ferocious Gladiator's Ironskin Legguards [H]
						i(145481),	-- Ferocious Gladiator's Ironskin Slippers [H]
						i(145489),	-- Ferocious Gladiator's Ironskin Spaulders [H]
						i(145491),	-- Ferocious Gladiator's Ironskin Tunic [H]
						i(145495),	-- Ferocious Gladiator's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(145389),	-- Ferocious Gladiator's Greatcloak of Faith [H]
						i(145502),	-- Ferocious Gladiator's Scaled Breastplate [H]
						i(145506),	-- Ferocious Gladiator's Scaled Gauntlets [H]
						i(145515),	-- Ferocious Gladiator's Scaled Girdle [H]
						i(145508),	-- Ferocious Gladiator's Scaled Helm [H]
						i(145510),	-- Ferocious Gladiator's Scaled Legguards [H]
						i(145504),	-- Ferocious Gladiator's Scaled Sabatons [H]
						i(145513),	-- Ferocious Gladiator's Scaled Shoulders [H]
						i(145517),	-- Ferocious Gladiator's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(145391),	-- Ferocious Gladiator's Drape of Piety [H]
						i(145533),	-- Ferocious Gladiator's Satin Bracers [H]
						i(145531),	-- Ferocious Gladiator's Satin Cord [H]
						i(145521),	-- Ferocious Gladiator's Satin Gloves [H]
						i(145523),	-- Ferocious Gladiator's Satin Hood [H]
						i(145525),	-- Ferocious Gladiator's Satin Leggings [H]
						i(145529),	-- Ferocious Gladiator's Satin Mantle [H]
						i(145527),	-- Ferocious Gladiator's Satin Robe [H]
						i(145519),	-- Ferocious Gladiator's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(145553),	-- Ferocious Gladiator's Leather Belt [H]
						i(145545),	-- Ferocious Gladiator's Leather Gloves [H]
						i(145547),	-- Ferocious Gladiator's Leather Helm [H]
						i(145549),	-- Ferocious Gladiator's Leather Legguards [H]
						i(145543),	-- Ferocious Gladiator's Leather Slippers [H]
						i(145551),	-- Ferocious Gladiator's Leather Spaulders [H]
						i(145541),	-- Ferocious Gladiator's Leather Tunic [H]
						i(145555),	-- Ferocious Gladiator's Leather Wristguards [H]
						i(145393),	-- Ferocious Gladiator's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(145571),	-- Ferocious Gladiator's Ringmail Armband [H]
						i(145557),	-- Ferocious Gladiator's Ringmail Armor [H]
						i(145559),	-- Ferocious Gladiator's Ringmail Boots [H]
						i(145569),	-- Ferocious Gladiator's Ringmail Clasp [H]
						i(145561),	-- Ferocious Gladiator's Ringmail Gauntlets [H]
						i(145563),	-- Ferocious Gladiator's Ringmail Helm [H]
						i(145565),	-- Ferocious Gladiator's Ringmail Kilt [H]
						i(145567),	-- Ferocious Gladiator's Ringmail Spaulders [H]
						i(145395),	-- Ferocious Gladiator's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(145601),	-- Ferocious Gladiator's Felweave Amice [H]
						i(145605),	-- Ferocious Gladiator's Felweave Bracers [H]
						i(145397),	-- Ferocious Gladiator's Felweave Cloak [H]
						i(145603),	-- Ferocious Gladiator's Felweave Cord [H]
						i(145595),	-- Ferocious Gladiator's Felweave Cowl [H]
						i(145593),	-- Ferocious Gladiator's Felweave Handguards [H]
						i(145599),	-- Ferocious Gladiator's Felweave Raiment [H]
						i(145591),	-- Ferocious Gladiator's Felweave Treads [H]
						i(145597),	-- Ferocious Gladiator's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(145399),	-- Ferocious Gladiator's Cloak of Battle [H]
						i(145607),	-- Ferocious Gladiator's Plate Chestpiece [H]
						i(145611),	-- Ferocious Gladiator's Plate Gauntlets [H]
						i(145619),	-- Ferocious Gladiator's Plate Girdle [H]
						i(145613),	-- Ferocious Gladiator's Plate Helm [H]
						i(145615),	-- Ferocious Gladiator's Plate Legguards [H]
						i(145617),	-- Ferocious Gladiator's Plate Shoulders [H]
						i(145609),	-- Ferocious Gladiator's Plate Warboots [H]
						i(145621),	-- Ferocious Gladiator's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(145537),	-- Ferocious Gladiator's Band [H]
					i(145535),	-- Ferocious Gladiator's Ring [H]
					i(145539),	-- Ferocious Gladiator's Signet [H]
				}),
				filter(NECK_F, {
					i(145501),	-- Ferocious Gladiator's Choker [H]
					i(145497),	-- Ferocious Gladiator's Necklace [H]
					i(145499),	-- Ferocious Gladiator's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(145575),	-- Ferocious Gladiator's Accolade of Conquest [H]
					i(145581),	-- Ferocious Gladiator's Accolade of Dominance [H]
					i(145587),	-- Ferocious Gladiator's Accolade of Victory [H]
					i(145573),	-- Ferocious Gladiator's Badge of Conquest [H]
					i(145579),	-- Ferocious Gladiator's Badge of Dominance [H]
					i(145585),	-- Ferocious Gladiator's Badge of Victory [H]
					i(145577),	-- Ferocious Gladiator's Insignia of Conquest [H]
					i(145583),	-- Ferocious Gladiator's Insignia of Dominance [H]
					i(145589),	-- Ferocious Gladiator's Insignia of Victory [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5, REMOVED_7_3_0 } }, {
				filter(RELICS_F, {
					i(151502),	-- Alliance of Convenience
					i(151521),	-- Battering Tempest
					i(151512),	-- Battle-Tempered Hilt
					i(151503),	-- Blaze of Glory
					i(151518),	-- Blindside Approach
					i(151510),	-- Brilliant Sunstone
					i(151515),	-- "Borrowed Soul" Essence
					i(151509),	-- Clarity of Conviction
					i(151508),	-- Cold Sweat
					i(151506),	-- Conscience of the Victorious
					i(151520),	-- Dead Man's Tale
					i(151495),	-- Exhaustive Research
					i(151500),	-- Fel-Loaded Dice
					i(151504),	-- Flame of the Fallen
					i(151497),	-- Grisly Souvenir
					i(151501),	-- Performance Enhancing Curio
					i(151517),	-- Petrified Ancient's Thumb
					i(151519),	-- Polished Shadowstone
					i(151511),	-- Radiance of Dawn
					i(151494),	-- Reactive Intuition
					i(151523),	-- Roar of the Crowd
					i(151514),	-- Steadfast Conviction
					i(151507),	-- Superiority's Contempt
					i(151496),	-- Taboo Knowledge
					i(151498),	-- Thirsty Bloodstone
					i(151499),	-- Thrill of Battle
					i(151522),	-- Thundering Impact
					i(151516),	-- Tombweed Bloom
					i(151505),	-- Torch of Competition
					i(151513),	-- Unflinching Grit
				}),
			})),
		}),
		n(PVP_ELITE, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5 }, ["races"] = ALLIANCE_ONLY }, {
				n(119484, {	-- Captain Roberts <Legion Elite Gladiator>
					["coord"] = { 29.6, 74.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["sourceAchievements"] = { 11698 },	-- Ferocious Elite
						["cost"] = { { "i", MOH, 50 } },
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						i(147778, {	-- Enchanter's Illusion - Demonic Tyranny (ILLUSION!)
							["sourceAchievements"] = { 11061 },	-- Gladiator: Legion Season 4
							["cost"] = { { "i", MOH, 12 } },
						}),
						i(147364),	-- Ferocious Gladiator's Cloak [A]
						i(147339),	-- Ferocious Gladiator's Tabard [A]
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5, REMOVED_7_3_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(145622),	-- Ferocious Gladiator's Dreadcloak [A]
						i(145646),	-- Ferocious Gladiator's Dreadplate Chestpiece [A]
						i(145650),	-- Ferocious Gladiator's Dreadplate Gauntlets [A]
						i(145658),	-- Ferocious Gladiator's Dreadplate Girdle [A]
						i(145652),	-- Ferocious Gladiator's Dreadplate Helm [A]
						i(145654),	-- Ferocious Gladiator's Dreadplate Legguards [A]
						i(145648),	-- Ferocious Gladiator's Dreadplate Sabatons [A]
						i(145656),	-- Ferocious Gladiator's Dreadplate Shoulders [A]
						i(145660),	-- Ferocious Gladiator's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(145624),	-- Ferocious Gladiator's Demonthread Cloak [A]
						i(145674),	-- Ferocious Gladiator's Felskin Belt [A]
						i(145664),	-- Ferocious Gladiator's Felskin Boots [A]
						i(145666),	-- Ferocious Gladiator's Felskin Gloves [A]
						i(145668),	-- Ferocious Gladiator's Felskin Helm [A]
						i(145670),	-- Ferocious Gladiator's Felskin Legguards [A]
						i(145672),	-- Ferocious Gladiator's Felskin Spaulders [A]
						i(145662),	-- Ferocious Gladiator's Felskin Tunic [A]
						i(145676),	-- Ferocious Gladiator's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(145690),	-- Ferocious Gladiator's Dragonhide Belt [A]
						i(145626),	-- Ferocious Gladiator's Dragonhide Cloak [A]
						i(145682),	-- Ferocious Gladiator's Dragonhide Gloves [A]
						i(145684),	-- Ferocious Gladiator's Dragonhide Helm [A]
						i(145686),	-- Ferocious Gladiator's Dragonhide Legguards [A]
						i(145680),	-- Ferocious Gladiator's Dragonhide Moccasins [A]
						i(145678),	-- Ferocious Gladiator's Dragonhide Robe [A]
						i(145688),	-- Ferocious Gladiator's Dragonhide Spaulders [A]
						i(145692),	-- Ferocious Gladiator's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(145708),	-- Ferocious Gladiator's Chain Armband [A]
						i(145694),	-- Ferocious Gladiator's Chain Armor [A]
						i(145706),	-- Ferocious Gladiator's Chain Clasp [A]
						i(145698),	-- Ferocious Gladiator's Chain Gauntlets [A]
						i(145700),	-- Ferocious Gladiator's Chain Helm [A]
						i(145702),	-- Ferocious Gladiator's Chain Leggings [A]
						i(145704),	-- Ferocious Gladiator's Chain Spaulders [A]
						i(145696),	-- Ferocious Gladiator's Chain Treads [A]
						i(145628),	-- Ferocious Gladiator's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(145720),	-- Ferocious Gladiator's Silk Amice [A]
						i(145724),	-- Ferocious Gladiator's Silk Bracers [A]
						i(145722),	-- Ferocious Gladiator's Silk Cord [A]
						i(145714),	-- Ferocious Gladiator's Silk Cowl [A]
						i(145712),	-- Ferocious Gladiator's Silk Handguards [A]
						i(145718),	-- Ferocious Gladiator's Silk Robe [A]
						i(145710),	-- Ferocious Gladiator's Silk Treads [A]
						i(145716),	-- Ferocious Gladiator's Silk Trousers [A]
						i(145630),	-- Ferocious Gladiator's Silken Shawl [A]
					}),
					cl(MONK, {
						i(145738),	-- Ferocious Gladiator's Ironskin Belt [A]
						i(145632),	-- Ferocious Gladiator's Ironskin Cloak [A]
						i(145728),	-- Ferocious Gladiator's Ironskin Gloves [A]
						i(145730),	-- Ferocious Gladiator's Ironskin Helm [A]
						i(145732),	-- Ferocious Gladiator's Ironskin Legguards [A]
						i(145726),	-- Ferocious Gladiator's Ironskin Slippers [A]
						i(145734),	-- Ferocious Gladiator's Ironskin Spaulders [A]
						i(145736),	-- Ferocious Gladiator's Ironskin Tunic [A]
						i(145740),	-- Ferocious Gladiator's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(145634),	-- Ferocious Gladiator's Greatcloak of Faith [A]
						i(145748),	-- Ferocious Gladiator's Scaled Breastplate [A]
						i(145752),	-- Ferocious Gladiator's Scaled Gauntlets [A]
						i(145760),	-- Ferocious Gladiator's Scaled Girdle [A]
						i(145754),	-- Ferocious Gladiator's Scaled Helm [A]
						i(145756),	-- Ferocious Gladiator's Scaled Legguards [A]
						i(145750),	-- Ferocious Gladiator's Scaled Sabatons [A]
						i(145758),	-- Ferocious Gladiator's Scaled Shoulders [A]
						i(145762),	-- Ferocious Gladiator's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(145636),	-- Ferocious Gladiator's Drape of Piety [A]
						i(145778),	-- Ferocious Gladiator's Satin Bracers [A]
						i(145776),	-- Ferocious Gladiator's Satin Cord [A]
						i(145766),	-- Ferocious Gladiator's Satin Gloves [A]
						i(145768),	-- Ferocious Gladiator's Satin Hood [A]
						i(145770),	-- Ferocious Gladiator's Satin Leggings [A]
						i(145774),	-- Ferocious Gladiator's Satin Mantle [A]
						i(145772),	-- Ferocious Gladiator's Satin Robe [A]
						i(145764),	-- Ferocious Gladiator's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(145798),	-- Ferocious Gladiator's Leather Belt [A]
						i(145790),	-- Ferocious Gladiator's Leather Gloves [A]
						i(145792),	-- Ferocious Gladiator's Leather Helm [A]
						i(145794),	-- Ferocious Gladiator's Leather Legguards [A]
						i(145788),	-- Ferocious Gladiator's Leather Slippers [A]
						i(145796),	-- Ferocious Gladiator's Leather Spaulders [A]
						i(145786),	-- Ferocious Gladiator's Leather Tunic [A]
						i(145800),	-- Ferocious Gladiator's Leather Wristguards [A]
						i(145638),	-- Ferocious Gladiator's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(145816),	-- Ferocious Gladiator's Ringmail Armband [A]
						i(145802),	-- Ferocious Gladiator's Ringmail Armor [A]
						i(145804),	-- Ferocious Gladiator's Ringmail Boots [A]
						i(145814),	-- Ferocious Gladiator's Ringmail Clasp [A]
						i(145806),	-- Ferocious Gladiator's Ringmail Gauntlets [A]
						i(145808),	-- Ferocious Gladiator's Ringmail Helm [A]
						i(145810),	-- Ferocious Gladiator's Ringmail Kilt [A]
						i(145812),	-- Ferocious Gladiator's Ringmail Spaulders [A]
						i(145640),	-- Ferocious Gladiator's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(145846),	-- Ferocious Gladiator's Felweave Amice [A]
						i(145850),	-- Ferocious Gladiator's Felweave Bracers [A]
						i(145642),	-- Ferocious Gladiator's Felweave Cloak [A]
						i(145848),	-- Ferocious Gladiator's Felweave Cord [A]
						i(145840),	-- Ferocious Gladiator's Felweave Cowl [A]
						i(145838),	-- Ferocious Gladiator's Felweave Handguards [A]
						i(145844),	-- Ferocious Gladiator's Felweave Raiment [A]
						i(145836),	-- Ferocious Gladiator's Felweave Treads [A]
						i(145842),	-- Ferocious Gladiator's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(145644),	-- Ferocious Gladiator's Cloak of Battle [A]
						i(145852),	-- Ferocious Gladiator's Plate Chestpiece [A]
						i(145856),	-- Ferocious Gladiator's Plate Gauntlets [A]
						i(145864),	-- Ferocious Gladiator's Plate Girdle [A]
						i(145858),	-- Ferocious Gladiator's Plate Helm [A]
						i(145860),	-- Ferocious Gladiator's Plate Legguards [A]
						i(145862),	-- Ferocious Gladiator's Plate Shoulders [A]
						i(145854),	-- Ferocious Gladiator's Plate Warboots [A]
						i(145866),	-- Ferocious Gladiator's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(145782),	-- Ferocious Gladiator's Band [A]
					i(145780),	-- Ferocious Gladiator's Ring [A]
					i(145784),	-- Ferocious Gladiator's Signet [A]
				}),
				filter(NECK_F, {
					i(145746),	-- Ferocious Gladiator's Choker [A]
					i(145742),	-- Ferocious Gladiator's Necklace [A]
					i(145744),	-- Ferocious Gladiator's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(145820),	-- Ferocious Gladiator's Accolade of Conquest [A]
					i(145826),	-- Ferocious Gladiator's Accolade of Dominance [A]
					i(145832),	-- Ferocious Gladiator's Accolade of Victory [A]
					i(145818),	-- Ferocious Gladiator's Badge of Conquest [A]
					i(145824),	-- Ferocious Gladiator's Badge of Dominance [A]
					i(145830),	-- Ferocious Gladiator's Badge of Victory [A]
					i(145822),	-- Ferocious Gladiator's Insignia of Conquest [A]
					i(145828),	-- Ferocious Gladiator's Insignia of Dominance [A]
					i(145834),	-- Ferocious Gladiator's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5 }, ["races"] = HORDE_ONLY }, {
				n(119272, {	-- Sarah the Savage <Legion Elite Gladiator>
					["coord"] = { 57.0, 27.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["sourceAchievements"] = { 11698 },	-- Ferocious Elite
						["cost"] = { { "i", MOH, 50 } },
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						i(147778, {	-- Enchanter's Illusion - Demonic Tyranny (ILLUSION!)
							["sourceAchievements"] = { 11061 },	-- Gladiator: Legion Season 4
							["cost"] = { { "i", MOH, 12 } },
						}),
						i(147363),	-- Ferocious Gladiator's Cloak [H]
						i(147338),	-- Ferocious Gladiator's Tabard [H]
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5, REMOVED_7_3_0 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(145623),	-- Ferocious Gladiator's Dreadcloak [H]
						i(145647),	-- Ferocious Gladiator's Dreadplate Chestpiece [H]
						i(145651),	-- Ferocious Gladiator's Dreadplate Gauntlets [H]
						i(145659),	-- Ferocious Gladiator's Dreadplate Girdle [H]
						i(145653),	-- Ferocious Gladiator's Dreadplate Helm [H]
						i(145655),	-- Ferocious Gladiator's Dreadplate Legguards [H]
						i(145649),	-- Ferocious Gladiator's Dreadplate Sabatons [H]
						i(145657),	-- Ferocious Gladiator's Dreadplate Shoulders [H]
						i(145661),	-- Ferocious Gladiator's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(145625),	-- Ferocious Gladiator's Demonthread Cloak [H]
						i(145675),	-- Ferocious Gladiator's Felskin Belt [H]
						i(145665),	-- Ferocious Gladiator's Felskin Boots [H]
						i(145667),	-- Ferocious Gladiator's Felskin Gloves [H]
						i(145669),	-- Ferocious Gladiator's Felskin Helm [H]
						i(145671),	-- Ferocious Gladiator's Felskin Legguards [H]
						i(145673),	-- Ferocious Gladiator's Felskin Spaulders [H]
						i(145663),	-- Ferocious Gladiator's Felskin Tunic [H]
						i(145677),	-- Ferocious Gladiator's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(145691),	-- Ferocious Gladiator's Dragonhide Belt [H]
						i(145627),	-- Ferocious Gladiator's Dragonhide Cloak [H]
						i(145683),	-- Ferocious Gladiator's Dragonhide Gloves [H]
						i(145685),	-- Ferocious Gladiator's Dragonhide Helm [H]
						i(145687),	-- Ferocious Gladiator's Dragonhide Legguards [H]
						i(145681),	-- Ferocious Gladiator's Dragonhide Moccasins [H]
						i(145679),	-- Ferocious Gladiator's Dragonhide Robe [H]
						i(145689),	-- Ferocious Gladiator's Dragonhide Spaulders [H]
						i(145693),	-- Ferocious Gladiator's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(145709),	-- Ferocious Gladiator's Chain Armband [H]
						i(145695),	-- Ferocious Gladiator's Chain Armor [H]
						i(145707),	-- Ferocious Gladiator's Chain Clasp [H]
						i(145699),	-- Ferocious Gladiator's Chain Gauntlets [H]
						i(145701),	-- Ferocious Gladiator's Chain Helm [H]
						i(145703),	-- Ferocious Gladiator's Chain Leggings [H]
						i(145705),	-- Ferocious Gladiator's Chain Spaulders [H]
						i(145697),	-- Ferocious Gladiator's Chain Treads [H]
						i(145629),	-- Ferocious Gladiator's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(145721),	-- Ferocious Gladiator's Silk Amice [H]
						i(145725),	-- Ferocious Gladiator's Silk Bracers [H]
						i(145723),	-- Ferocious Gladiator's Silk Cord [H]
						i(145715),	-- Ferocious Gladiator's Silk Cowl [H]
						i(145713),	-- Ferocious Gladiator's Silk Handguards [H]
						i(145719),	-- Ferocious Gladiator's Silk Robe [H]
						i(145711),	-- Ferocious Gladiator's Silk Treads [H]
						i(145717),	-- Ferocious Gladiator's Silk Trousers [H]
						i(145631),	-- Ferocious Gladiator's Silken Shawl [H]
					}),
					cl(MONK, {
						i(145739),	-- Ferocious Gladiator's Ironskin Belt [H]
						i(145633),	-- Ferocious Gladiator's Ironskin Cloak [H]
						i(145729),	-- Ferocious Gladiator's Ironskin Gloves [H]
						i(145731),	-- Ferocious Gladiator's Ironskin Helm [H]
						i(145733),	-- Ferocious Gladiator's Ironskin Legguards [H]
						i(145727),	-- Ferocious Gladiator's Ironskin Slippers [H]
						i(145735),	-- Ferocious Gladiator's Ironskin Spaulders [H]
						i(145737),	-- Ferocious Gladiator's Ironskin Tunic [H]
						i(145741),	-- Ferocious Gladiator's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(145635),	-- Ferocious Gladiator's Greatcloak of Faith [H]
						i(145749),	-- Ferocious Gladiator's Scaled Breastplate [H]
						i(145753),	-- Ferocious Gladiator's Scaled Gauntlets [H]
						i(145761),	-- Ferocious Gladiator's Scaled Girdle [H]
						i(145755),	-- Ferocious Gladiator's Scaled Helm [H]
						i(145757),	-- Ferocious Gladiator's Scaled Legguards [H]
						i(145751),	-- Ferocious Gladiator's Scaled Sabatons [H]
						i(145759),	-- Ferocious Gladiator's Scaled Shoulders [H]
						i(145763),	-- Ferocious Gladiator's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(145637),	-- Ferocious Gladiator's Drape of Piety [H]
						i(145779),	-- Ferocious Gladiator's Satin Bracers [H]
						i(145777),	-- Ferocious Gladiator's Satin Cord [H]
						i(145767),	-- Ferocious Gladiator's Satin Gloves [H]
						i(145769),	-- Ferocious Gladiator's Satin Hood [H]
						i(145771),	-- Ferocious Gladiator's Satin Leggings [H]
						i(145775),	-- Ferocious Gladiator's Satin Mantle [H]
						i(145773),	-- Ferocious Gladiator's Satin Robe [H]
						i(145765),	-- Ferocious Gladiator's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(145799),	-- Ferocious Gladiator's Leather Belt [H]
						i(145791),	-- Ferocious Gladiator's Leather Gloves [H]
						i(145793),	-- Ferocious Gladiator's Leather Helm [H]
						i(145795),	-- Ferocious Gladiator's Leather Legguards [H]
						i(145789),	-- Ferocious Gladiator's Leather Slippers [H]
						i(145797),	-- Ferocious Gladiator's Leather Spaulders [H]
						i(145787),	-- Ferocious Gladiator's Leather Tunic [H]
						i(145801),	-- Ferocious Gladiator's Leather Wristguards [H]
						i(145639),	-- Ferocious Gladiator's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(145817),	-- Ferocious Gladiator's Ringmail Armband [H]
						i(145803),	-- Ferocious Gladiator's Ringmail Armor [H]
						i(145805),	-- Ferocious Gladiator's Ringmail Boots [H]
						i(145815),	-- Ferocious Gladiator's Ringmail Clasp [H]
						i(145807),	-- Ferocious Gladiator's Ringmail Gauntlets [H]
						i(145809),	-- Ferocious Gladiator's Ringmail Helm [H]
						i(145811),	-- Ferocious Gladiator's Ringmail Kilt [H]
						i(145813),	-- Ferocious Gladiator's Ringmail Spaulders [H]
						i(145641),	-- Ferocious Gladiator's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(145847),	-- Ferocious Gladiator's Felweave Amice [H]
						i(145851),	-- Ferocious Gladiator's Felweave Bracers [H]
						i(145643),	-- Ferocious Gladiator's Felweave Cloak [H]
						i(145849),	-- Ferocious Gladiator's Felweave Cord [H]
						i(145841),	-- Ferocious Gladiator's Felweave Cowl [H]
						i(145839),	-- Ferocious Gladiator's Felweave Handguards [H]
						i(145845),	-- Ferocious Gladiator's Felweave Raiment [H]
						i(145837),	-- Ferocious Gladiator's Felweave Treads [H]
						i(145843),	-- Ferocious Gladiator's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(145645),	-- Ferocious Gladiator's Cloak of Battle [H]
						i(145853),	-- Ferocious Gladiator's Plate Chestpiece [H]
						i(145857),	-- Ferocious Gladiator's Plate Gauntlets [H]
						i(145865),	-- Ferocious Gladiator's Plate Girdle [H]
						i(145859),	-- Ferocious Gladiator's Plate Helm [H]
						i(145861),	-- Ferocious Gladiator's Plate Legguards [H]
						i(145863),	-- Ferocious Gladiator's Plate Shoulders [H]
						i(145855),	-- Ferocious Gladiator's Plate Warboots [H]
						i(145867),	-- Ferocious Gladiator's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(145783),	-- Ferocious Gladiator's Band [H]
					i(145781),	-- Ferocious Gladiator's Ring [H]
					i(145785),	-- Ferocious Gladiator's Signet [H]
				}),
				filter(NECK_F, {
					i(145747),	-- Ferocious Gladiator's Choker [H]
					i(145743),	-- Ferocious Gladiator's Necklace [H]
					i(145745),	-- Ferocious Gladiator's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(145821),	-- Ferocious Gladiator's Accolade of Conquest [H]
					i(145827),	-- Ferocious Gladiator's Accolade of Dominance [H]
					i(145833),	-- Ferocious Gladiator's Accolade of Victory [H]
					i(145819),	-- Ferocious Gladiator's Badge of Conquest [H]
					i(145825),	-- Ferocious Gladiator's Badge of Dominance [H]
					i(145831),	-- Ferocious Gladiator's Badge of Victory [H]
					i(145823),	-- Ferocious Gladiator's Insignia of Conquest [H]
					i(145829),	-- Ferocious Gladiator's Insignia of Dominance [H]
					i(145835),	-- Ferocious Gladiator's Insignia of Victory [H]
				}),
			})),
		}),
	})),
})));
