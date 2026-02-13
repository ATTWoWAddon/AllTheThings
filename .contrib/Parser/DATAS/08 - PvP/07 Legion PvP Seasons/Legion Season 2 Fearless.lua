-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(expansion(EXPANSION.LEGION, {
	n(SEASON_FEARLESS, bubbleDownSelf({
		["timeline"] = { ADDED_7_1_0, REMOVED_7_2_0, ADDED_7_2_0 },
	}, {
		n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_7_1_0, REMOVED_7_2_0 } }, {
			ach(11004, {	-- Fearless Combatant [A]
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(103533),	-- Vicious Saddle
				},
			}),
			ach(11003, {	-- Fearless Combatant [H]
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(103533),	-- Vicious Saddle
				},
			}),
			ach(11028),		-- Challenger: Legion Season 2
			ach(11027),		-- Rival: Legion Season 2
			ach(11026),		-- Duelist: Legion Season 2
			ach(11579, {	-- Fearless Elite
				["timeline"] = { ADDED_7_2_0, REMOVED_7_2_0 },
			}),
			ach(11013, {	-- Gladiator: Legion Season 2
				i(141844),	-- Fearless Gladiator's Storm Dragon (MOUNT!)
			}),
			ach(11000, {	-- Fearless Gladiator's Storm Dragon
				["provider"] = { "i", 141844 },	-- Fearless Gladiator's Storm Dragon (MOUNT!)
				["filterID"] = MOUNTS,
			}),
			ach(11014, {	-- Fearless Gladiator: Legion Season 2
				title(355),	-- Fearless Gladiator <Name>
			}),
			-- RBG
			ach(11036, {	-- Soldier of the Alliance: Legion Season 2
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11035, {	-- Soldier of the Horde: Legion Season 2
				["races"] = HORDE_ONLY,
			}),
			ach(11034, {	-- Defender of the Alliance: Legion Season 2
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11033, {	-- Defender of the Horde: Legion Season 2
				["races"] = HORDE_ONLY,
			}),
			ach(11032, {	-- Guardian of the Alliance: Legion Season 2
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11031, {	-- Guardian of the Horde: Legion Season 2
				["races"] = HORDE_ONLY,
			}),
			ach(11030, {	-- Hero of the Alliance: Fearless
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11029, {	-- Hero of the Horde: Fearless
				["races"] = HORDE_ONLY,
			}),
			-- Fashion
			ach(11630, {	-- More Like Win-dictive
				["timeline"] = { ADDED_7_2_0 },
			}),
		})),
		n(PVP_COMBATANT, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_0, REMOVED_7_2_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(142874),	-- Fearless Combatant's Dreadcloak [A]
						i(142786),	-- Fearless Combatant's Dreadplate Chestpiece [A]
						i(142788),	-- Fearless Combatant's Dreadplate Gauntlets [A]
						i(142792),	-- Fearless Combatant's Dreadplate Girdle [A]
						i(142789),	-- Fearless Combatant's Dreadplate Helm [A]
						i(142790),	-- Fearless Combatant's Dreadplate Legguards [A]
						i(142787),	-- Fearless Combatant's Dreadplate Sabatons [A]
						i(142791),	-- Fearless Combatant's Dreadplate Shoulders [A]
						i(142793),	-- Fearless Combatant's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(143318),	-- Fearless Combatant's Demonthread Cloak [A]
						i(143260),	-- Fearless Combatant's Felskin Belt [A]
						i(143254),	-- Fearless Combatant's Felskin Boots [A]
						i(143255),	-- Fearless Combatant's Felskin Gloves [A]
						i(143256),	-- Fearless Combatant's Felskin Helm [A]
						i(143257),	-- Fearless Combatant's Felskin Legguards [A]
						i(143259),	-- Fearless Combatant's Felskin Spaulders [A]
						i(143258),	-- Fearless Combatant's Felskin Tunic [A]
						i(143261),	-- Fearless Combatant's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(142800),	-- Fearless Combatant's Dragonhide Belt [A]
						i(142878),	-- Fearless Combatant's Dragonhide Cloak [A]
						i(142795),	-- Fearless Combatant's Dragonhide Gloves [A]
						i(142796),	-- Fearless Combatant's Dragonhide Helm [A]
						i(142797),	-- Fearless Combatant's Dragonhide Legguards [A]
						i(142794),	-- Fearless Combatant's Dragonhide Moccasins [A]
						i(142799),	-- Fearless Combatant's Dragonhide Spaulders [A]
						i(142798),	-- Fearless Combatant's Dragonhide Tunic [A]
						i(142801),	-- Fearless Combatant's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(142809),	-- Fearless Combatant's Chain Armband [A]
						i(142802),	-- Fearless Combatant's Chain Armor [A]
						i(142808),	-- Fearless Combatant's Chain Clasp [A]
						i(142804),	-- Fearless Combatant's Chain Gauntlets [A]
						i(142805),	-- Fearless Combatant's Chain Helm [A]
						i(142806),	-- Fearless Combatant's Chain Leggings [A]
						i(142807),	-- Fearless Combatant's Chain Spaulders [A]
						i(142803),	-- Fearless Combatant's Chain Treads [A]
						i(142882),	-- Fearless Combatant's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(142815),	-- Fearless Combatant's Silk Amice [A]
						i(142817),	-- Fearless Combatant's Silk Bracers [A]
						i(142816),	-- Fearless Combatant's Silk Cord [A]
						i(142812),	-- Fearless Combatant's Silk Cowl [A]
						i(142811),	-- Fearless Combatant's Silk Handguards [A]
						i(142814),	-- Fearless Combatant's Silk Robe [A]
						i(142810),	-- Fearless Combatant's Silk Treads [A]
						i(142813),	-- Fearless Combatant's Silk Trousers [A]
						i(142875),	-- Fearless Combatant's Silken Shawl [A]
					}),
					cl(MONK, {
						i(142824),	-- Fearless Combatant's Ironskin Belt [A]
						i(142879),	-- Fearless Combatant's Ironskin Cloak [A]
						i(142819),	-- Fearless Combatant's Ironskin Gloves [A]
						i(142820),	-- Fearless Combatant's Ironskin Helm [A]
						i(142821),	-- Fearless Combatant's Ironskin Legguards [A]
						i(142818),	-- Fearless Combatant's Ironskin Slippers [A]
						i(142822),	-- Fearless Combatant's Ironskin Spaulders [A]
						i(142823),	-- Fearless Combatant's Ironskin Tunic [A]
						i(142825),	-- Fearless Combatant's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(142883),	-- Fearless Combatant's Greatcloak of Faith [A]
						i(142826),	-- Fearless Combatant's Scaled Chestpiece [A]
						i(142828),	-- Fearless Combatant's Scaled Gauntlets [A]
						i(142832),	-- Fearless Combatant's Scaled Girdle [A]
						i(142829),	-- Fearless Combatant's Scaled Helm [A]
						i(142830),	-- Fearless Combatant's Scaled Legguards [A]
						i(142827),	-- Fearless Combatant's Scaled Sabatons [A]
						i(142831),	-- Fearless Combatant's Scaled Shoulders [A]
						i(142833),	-- Fearless Combatant's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(143292),	-- Fearless Combatant's Drape of Piety [A]
						i(142841),	-- Fearless Combatant's Satin Bracers [A]
						i(142840),	-- Fearless Combatant's Satin Cord [A]
						i(142835),	-- Fearless Combatant's Satin Gloves [A]
						i(142836),	-- Fearless Combatant's Satin Hood [A]
						i(142837),	-- Fearless Combatant's Satin Leggings [A]
						i(142839),	-- Fearless Combatant's Satin Mantle [A]
						i(142838),	-- Fearless Combatant's Satin Robe [A]
						i(142834),	-- Fearless Combatant's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(142848),	-- Fearless Combatant's Leather Belt [A]
						i(142844),	-- Fearless Combatant's Leather Gloves [A]
						i(142845),	-- Fearless Combatant's Leather Helm [A]
						i(142846),	-- Fearless Combatant's Leather Legguards [A]
						i(142843),	-- Fearless Combatant's Leather Slippers [A]
						i(142847),	-- Fearless Combatant's Leather Spaulders [A]
						i(142842),	-- Fearless Combatant's Leather Tunic [A]
						i(142849),	-- Fearless Combatant's Leather Wristguards [A]
						i(143293),	-- Fearless Combatant's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(142857),	-- Fearless Combatant's Ringmail Armband [A]
						i(142850),	-- Fearless Combatant's Ringmail Armor [A]
						i(142851),	-- Fearless Combatant's Ringmail Boots [A]
						i(142856),	-- Fearless Combatant's Ringmail Clasp [A]
						i(142852),	-- Fearless Combatant's Ringmail Gauntlets [A]
						i(142853),	-- Fearless Combatant's Ringmail Helm [A]
						i(142854),	-- Fearless Combatant's Ringmail Kilt [A]
						i(142855),	-- Fearless Combatant's Ringmail Spaulders [A]
						i(143294),	-- Fearless Combatant's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(142863),	-- Fearless Combatant's Felweave Amice [A]
						i(142865),	-- Fearless Combatant's Felweave Bracers [A]
						i(143306),	-- Fearless Combatant's Felweave Cloak [A]
						i(142864),	-- Fearless Combatant's Felweave Cord [A]
						i(142860),	-- Fearless Combatant's Felweave Cowl [A]
						i(142859),	-- Fearless Combatant's Felweave Handguards [A]
						i(142862),	-- Fearless Combatant's Felweave Raiment [A]
						i(142858),	-- Fearless Combatant's Felweave Treads [A]
						i(142861),	-- Fearless Combatant's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(143312),	-- Fearless Combatant's Cloak of Battle [A]
						i(142866),	-- Fearless Combatant's Plate Chestpiece [A]
						i(142868),	-- Fearless Combatant's Plate Gauntlets [A]
						i(142872),	-- Fearless Combatant's Plate Girdle [A]
						i(142869),	-- Fearless Combatant's Plate Helm [A]
						i(142870),	-- Fearless Combatant's Plate Legguards [A]
						i(142871),	-- Fearless Combatant's Plate Shoulders [A]
						i(142867),	-- Fearless Combatant's Plate Warboots [A]
						i(142873),	-- Fearless Combatant's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(142881),	-- Fearless Combatant's Band [A]
					i(142877),	-- Fearless Combatant's Ring [A]
					i(142885),	-- Fearless Combatant's Signet [A]
				}),
				filter(NECK_F, {
					i(142884),	-- Fearless Combatant's Choker [A]
					i(142876),	-- Fearless Combatant's Necklace [A]
					i(142880),	-- Fearless Combatant's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(142887),	-- Fearless Combatant's Accolade of Conquest [A]
					i(142893),	-- Fearless Combatant's Accolade of Dominance [A]
					i(142896),	-- Fearless Combatant's Accolade of Victory [A]
					i(142898),	-- Fearless Combatant's Badge of Adaptation [A]
					i(142886),	-- Fearless Combatant's Badge of Conquest [A]
					i(142892),	-- Fearless Combatant's Badge of Dominance [A]
					i(142895),	-- Fearless Combatant's Badge of Victory [A]
					i(142889),	-- Fearless Combatant's Emblem of Cruelty [A]
					i(142891),	-- Fearless Combatant's Emblem of Meditation [A]
					i(142890),	-- Fearless Combatant's Emblem of Tenacity [A]
					i(142888),	-- Fearless Combatant's Insignia of Conquest [A]
					i(142894),	-- Fearless Combatant's Insignia of Dominance [A]
					i(142897),	-- Fearless Combatant's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_0, REMOVED_7_2_0 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(142987),	-- Fearless Combatant's Dreadcloak [H]
						i(142899),	-- Fearless Combatant's Dreadplate Chestpiece [H]
						i(142901),	-- Fearless Combatant's Dreadplate Gauntlets [H]
						i(142905),	-- Fearless Combatant's Dreadplate Girdle [H]
						i(142902),	-- Fearless Combatant's Dreadplate Helm [H]
						i(142903),	-- Fearless Combatant's Dreadplate Legguards [H]
						i(142900),	-- Fearless Combatant's Dreadplate Sabatons [H]
						i(142904),	-- Fearless Combatant's Dreadplate Shoulders [H]
						i(142906),	-- Fearless Combatant's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(143319),	-- Fearless Combatant's Demonthread Cloak [H]
						i(143268),	-- Fearless Combatant's Felskin Belt [H]
						i(143262),	-- Fearless Combatant's Felskin Boots [H]
						i(143263),	-- Fearless Combatant's Felskin Gloves [H]
						i(143264),	-- Fearless Combatant's Felskin Helm [H]
						i(143265),	-- Fearless Combatant's Felskin Legguards [H]
						i(143267),	-- Fearless Combatant's Felskin Spaulders [H]
						i(143266),	-- Fearless Combatant's Felskin Tunic [H]
						i(143269),	-- Fearless Combatant's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(142913),	-- Fearless Combatant's Dragonhide Belt [H]
						i(142991),	-- Fearless Combatant's Dragonhide Cloak [H]
						i(142908),	-- Fearless Combatant's Dragonhide Gloves [H]
						i(142909),	-- Fearless Combatant's Dragonhide Helm [H]
						i(142910),	-- Fearless Combatant's Dragonhide Legguards [H]
						i(142907),	-- Fearless Combatant's Dragonhide Moccasins [H]
						i(142912),	-- Fearless Combatant's Dragonhide Spaulders [H]
						i(142911),	-- Fearless Combatant's Dragonhide Tunic [H]
						i(142914),	-- Fearless Combatant's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(142922),	-- Fearless Combatant's Chain Armband [H]
						i(142915),	-- Fearless Combatant's Chain Armor [H]
						i(142921),	-- Fearless Combatant's Chain Clasp [H]
						i(142917),	-- Fearless Combatant's Chain Gauntlets [H]
						i(142918),	-- Fearless Combatant's Chain Helm [H]
						i(142919),	-- Fearless Combatant's Chain Leggings [H]
						i(142920),	-- Fearless Combatant's Chain Spaulders [H]
						i(142916),	-- Fearless Combatant's Chain Treads [H]
						i(142995),	-- Fearless Combatant's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(142928),	-- Fearless Combatant's Silk Amice [H]
						i(142930),	-- Fearless Combatant's Silk Bracers [H]
						i(142929),	-- Fearless Combatant's Silk Cord [H]
						i(142925),	-- Fearless Combatant's Silk Cowl [H]
						i(142924),	-- Fearless Combatant's Silk Handguards [H]
						i(142927),	-- Fearless Combatant's Silk Robe [H]
						i(142923),	-- Fearless Combatant's Silk Treads [H]
						i(142926),	-- Fearless Combatant's Silk Trousers [H]
						i(142988),	-- Fearless Combatant's Silken Shawl [H]
					}),
					cl(MONK, {
						i(142937),	-- Fearless Combatant's Ironskin Belt [H]
						i(142992),	-- Fearless Combatant's Ironskin Cloak [H]
						i(142932),	-- Fearless Combatant's Ironskin Gloves [H]
						i(142933),	-- Fearless Combatant's Ironskin Helm [H]
						i(142934),	-- Fearless Combatant's Ironskin Legguards [H]
						i(142931),	-- Fearless Combatant's Ironskin Slippers [H]
						i(142935),	-- Fearless Combatant's Ironskin Spaulders [H]
						i(142936),	-- Fearless Combatant's Ironskin Tunic [H]
						i(142938),	-- Fearless Combatant's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(142996),	-- Fearless Combatant's Greatcloak of Faith [H]
						i(142939),	-- Fearless Combatant's Scaled Chestpiece [H]
						i(142941),	-- Fearless Combatant's Scaled Gauntlets [H]
						i(142945),	-- Fearless Combatant's Scaled Girdle [H]
						i(142942),	-- Fearless Combatant's Scaled Helm [H]
						i(142943),	-- Fearless Combatant's Scaled Legguards [H]
						i(142940),	-- Fearless Combatant's Scaled Sabatons [H]
						i(142944),	-- Fearless Combatant's Scaled Shoulders [H]
						i(142946),	-- Fearless Combatant's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(143295),	-- Fearless Combatant's Drape of Piety [H]
						i(142954),	-- Fearless Combatant's Satin Bracers [H]
						i(142953),	-- Fearless Combatant's Satin Cord [H]
						i(142948),	-- Fearless Combatant's Satin Gloves [H]
						i(142949),	-- Fearless Combatant's Satin Hood [H]
						i(142950),	-- Fearless Combatant's Satin Leggings [H]
						i(142952),	-- Fearless Combatant's Satin Mantle [H]
						i(142951),	-- Fearless Combatant's Satin Robe [H]
						i(142947),	-- Fearless Combatant's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(142961),	-- Fearless Combatant's Leather Belt [H]
						i(142957),	-- Fearless Combatant's Leather Gloves [H]
						i(142958),	-- Fearless Combatant's Leather Helm [H]
						i(142959),	-- Fearless Combatant's Leather Legguards [H]
						i(142956),	-- Fearless Combatant's Leather Slippers [H]
						i(142960),	-- Fearless Combatant's Leather Spaulders [H]
						i(142955),	-- Fearless Combatant's Leather Tunic [H]
						i(142962),	-- Fearless Combatant's Leather Wristguards [H]
						i(143296),	-- Fearless Combatant's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(142970),	-- Fearless Combatant's Ringmail Armband [H]
						i(142963),	-- Fearless Combatant's Ringmail Armor [H]
						i(142964),	-- Fearless Combatant's Ringmail Boots [H]
						i(142969),	-- Fearless Combatant's Ringmail Clasp [H]
						i(142965),	-- Fearless Combatant's Ringmail Gauntlets [H]
						i(142966),	-- Fearless Combatant's Ringmail Helm [H]
						i(142967),	-- Fearless Combatant's Ringmail Leggings [H]
						i(142968),	-- Fearless Combatant's Ringmail Spaulders [H]
						i(143297),	-- Fearless Combatant's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(142976),	-- Fearless Combatant's Felweave Amice [H]
						i(142978),	-- Fearless Combatant's Felweave Bracers [H]
						i(143307),	-- Fearless Combatant's Felweave Cloak [H]
						i(142977),	-- Fearless Combatant's Felweave Cord [H]
						i(142973),	-- Fearless Combatant's Felweave Cowl [H]
						i(142972),	-- Fearless Combatant's Felweave Handguards [H]
						i(142975),	-- Fearless Combatant's Felweave Raiment [H]
						i(142971),	-- Fearless Combatant's Felweave Treads [H]
						i(142974),	-- Fearless Combatant's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(143313),	-- Fearless Combatant's Cloak of Battle [H]
						i(142979),	-- Fearless Combatant's Plate Chestpiece [H]
						i(142981),	-- Fearless Combatant's Plate Gauntlets [H]
						i(142985),	-- Fearless Combatant's Plate Girdle [H]
						i(142982),	-- Fearless Combatant's Plate Helm [H]
						i(142983),	-- Fearless Combatant's Plate Legguards [H]
						i(142984),	-- Fearless Combatant's Plate Shoulders [H]
						i(142980),	-- Fearless Combatant's Plate Warboots [H]
						i(142986),	-- Fearless Combatant's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(142994),	-- Fearless Combatant's Band [H]
					i(142990),	-- Fearless Combatant's Ring [H]
					i(142998),	-- Fearless Combatant's Signet [H]
				}),
				filter(NECK_F, {
					i(142997),	-- Fearless Combatant's Choker [H]
					i(142989),	-- Fearless Combatant's Necklace [H]
					i(142993),	-- Fearless Combatant's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(143000),	-- Fearless Combatant's Accolade of Conquest [H]
					i(143006),	-- Fearless Combatant's Accolade of Dominance [H]
					i(143009),	-- Fearless Combatant's Accolade of Victory [H]
					i(143011),	-- Fearless Combatant's Badge of Adaptation [H]
					i(142999),	-- Fearless Combatant's Badge of Conquest [H]
					i(143005),	-- Fearless Combatant's Badge of Dominance [H]
					i(143008),	-- Fearless Combatant's Badge of Victory [H]
					i(143002),	-- Fearless Combatant's Emblem of Cruelty [H]
					i(143004),	-- Fearless Combatant's Emblem of Meditation [H]
					i(143003),	-- Fearless Combatant's Emblem of Tenacity [H]
					i(143001),	-- Fearless Combatant's Insignia of Conquest [H]
					i(143007),	-- Fearless Combatant's Insignia of Dominance [H]
					i(143010),	-- Fearless Combatant's Insignia of Victory [H]
				}),
			})),
		}),
		n(PVP_GLADIATOR, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_0, REMOVED_7_2_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(142648),	-- Fearless Gladiator's Dreadcloak [A]
						i(142560),	-- Fearless Gladiator's Dreadplate Chestpiece [A]
						i(142562),	-- Fearless Gladiator's Dreadplate Gauntlets [A]
						i(142566),	-- Fearless Gladiator's Dreadplate Girdle [A]
						i(142563),	-- Fearless Gladiator's Dreadplate Helm [A]
						i(142564),	-- Fearless Gladiator's Dreadplate Legguards [A]
						i(142561),	-- Fearless Gladiator's Dreadplate Sabatons [A]
						i(142565),	-- Fearless Gladiator's Dreadplate Shoulders [A]
						i(142567),	-- Fearless Gladiator's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(143316),	-- Fearless Gladiator's Demonthread Cloak [A]
						i(143244),	-- Fearless Gladiator's Felskin Belt [A]
						i(143238),	-- Fearless Gladiator's Felskin Boots [A]
						i(143239),	-- Fearless Gladiator's Felskin Gloves [A]
						i(143240),	-- Fearless Gladiator's Felskin Helm [A]
						i(143241),	-- Fearless Gladiator's Felskin Legguards [A]
						i(143243),	-- Fearless Gladiator's Felskin Spaulders [A]
						i(143242),	-- Fearless Gladiator's Felskin Tunic [A]
						i(143245),	-- Fearless Gladiator's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(142574),	-- Fearless Gladiator's Dragonhide Belt [A]
						i(142649),	-- Fearless Gladiator's Dragonhide Cloak [A]
						i(142569),	-- Fearless Gladiator's Dragonhide Gloves [A]
						i(142570),	-- Fearless Gladiator's Dragonhide Helm [A]
						i(142571),	-- Fearless Gladiator's Dragonhide Legguards [A]
						i(142568),	-- Fearless Gladiator's Dragonhide Moccasins [A]
						i(142572),	-- Fearless Gladiator's Dragonhide Robe [A]
						i(142573),	-- Fearless Gladiator's Dragonhide Spaulders [A]
						i(142575),	-- Fearless Gladiator's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(142583),	-- Fearless Gladiator's Chain Armband [A]
						i(142576),	-- Fearless Gladiator's Chain Armor [A]
						i(142582),	-- Fearless Gladiator's Chain Clasp [A]
						i(142578),	-- Fearless Gladiator's Chain Gauntlets [A]
						i(142579),	-- Fearless Gladiator's Chain Helm [A]
						i(142580),	-- Fearless Gladiator's Chain Leggings [A]
						i(142581),	-- Fearless Gladiator's Chain Spaulders [A]
						i(142577),	-- Fearless Gladiator's Chain Treads [A]
						i(142652),	-- Fearless Gladiator's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(142589),	-- Fearless Gladiator's Silk Amice [A]
						i(142591),	-- Fearless Gladiator's Silk Bracers [A]
						i(142590),	-- Fearless Gladiator's Silk Cord [A]
						i(142586),	-- Fearless Gladiator's Silk Cowl [A]
						i(142585),	-- Fearless Gladiator's Silk Handguards [A]
						i(142588),	-- Fearless Gladiator's Silk Robe [A]
						i(142584),	-- Fearless Gladiator's Silk Treads [A]
						i(142587),	-- Fearless Gladiator's Silk Trousers [A]
						i(142653),	-- Fearless Gladiator's Silken Shawl [A]
					}),
					cl(MONK, {
						i(142598),	-- Fearless Gladiator's Ironskin Belt [A]
						i(142656),	-- Fearless Gladiator's Ironskin Cloak [A]
						i(142593),	-- Fearless Gladiator's Ironskin Gloves [A]
						i(142594),	-- Fearless Gladiator's Ironskin Helm [A]
						i(142595),	-- Fearless Gladiator's Ironskin Legguards [A]
						i(142592),	-- Fearless Gladiator's Ironskin Slippers [A]
						i(142596),	-- Fearless Gladiator's Ironskin Spaulders [A]
						i(142597),	-- Fearless Gladiator's Ironskin Tunic [A]
						i(142599),	-- Fearless Gladiator's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(142657),	-- Fearless Gladiator's Greatcloak of Faith [A]
						i(142600),	-- Fearless Gladiator's Scaled Battlerobe [A]
						i(142602),	-- Fearless Gladiator's Scaled Gauntlets [A]
						i(142606),	-- Fearless Gladiator's Scaled Girdle [A]
						i(142603),	-- Fearless Gladiator's Scaled Helm [A]
						i(142604),	-- Fearless Gladiator's Scaled Legguards [A]
						i(142601),	-- Fearless Gladiator's Scaled Sabatons [A]
						i(142605),	-- Fearless Gladiator's Scaled Shoulders [A]
						i(142607),	-- Fearless Gladiator's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(143286),	-- Fearless Gladiator's Drape of Piety [A]
						i(142615),	-- Fearless Gladiator's Satin Bracers [A]
						i(142614),	-- Fearless Gladiator's Satin Cord [A]
						i(142609),	-- Fearless Gladiator's Satin Gloves [A]
						i(142610),	-- Fearless Gladiator's Satin Hood [A]
						i(142611),	-- Fearless Gladiator's Satin Leggings [A]
						i(142613),	-- Fearless Gladiator's Satin Mantle [A]
						i(142612),	-- Fearless Gladiator's Satin Robe [A]
						i(142608),	-- Fearless Gladiator's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(142622),	-- Fearless Gladiator's Leather Belt [A]
						i(142618),	-- Fearless Gladiator's Leather Gloves [A]
						i(142619),	-- Fearless Gladiator's Leather Helm [A]
						i(142620),	-- Fearless Gladiator's Leather Legguards [A]
						i(142617),	-- Fearless Gladiator's Leather Slippers [A]
						i(142621),	-- Fearless Gladiator's Leather Spaulders [A]
						i(142616),	-- Fearless Gladiator's Leather Tunic [A]
						i(142623),	-- Fearless Gladiator's Leather Wristguards [A]
						i(143287),	-- Fearless Gladiator's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(142631),	-- Fearless Gladiator's Ringmail Armband [A]
						i(142624),	-- Fearless Gladiator's Ringmail Armor [A]
						i(142625),	-- Fearless Gladiator's Ringmail Boots [A]
						i(142630),	-- Fearless Gladiator's Ringmail Clasp [A]
						i(142626),	-- Fearless Gladiator's Ringmail Gauntlets [A]
						i(142627),	-- Fearless Gladiator's Ringmail Helm [A]
						i(142628),	-- Fearless Gladiator's Ringmail Kilt [A]
						i(142629),	-- Fearless Gladiator's Ringmail Spaulders [A]
						i(143288),	-- Fearless Gladiator's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(142637),	-- Fearless Gladiator's Felweave Amice [A]
						i(142639),	-- Fearless Gladiator's Felweave Bracers [A]
						i(143304),	-- Fearless Gladiator's Felweave Cloak [A]
						i(142638),	-- Fearless Gladiator's Felweave Cord [A]
						i(142634),	-- Fearless Gladiator's Felweave Cowl [A]
						i(142633),	-- Fearless Gladiator's Felweave Handguards [A]
						i(142636),	-- Fearless Gladiator's Felweave Raiment [A]
						i(142632),	-- Fearless Gladiator's Felweave Treads [A]
						i(142635),	-- Fearless Gladiator's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(143310),	-- Fearless Gladiator's Cloak of Battle [A]
						i(142640),	-- Fearless Gladiator's Plate Chestpiece [A]
						i(142642),	-- Fearless Gladiator's Plate Gauntlets [A]
						i(142646),	-- Fearless Gladiator's Plate Girdle [A]
						i(142643),	-- Fearless Gladiator's Plate Helm [A]
						i(142644),	-- Fearless Gladiator's Plate Legguards [A]
						i(142645),	-- Fearless Gladiator's Plate Shoulders [A]
						i(142641),	-- Fearless Gladiator's Plate Warboots [A]
						i(142647),	-- Fearless Gladiator's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(142655),	-- Fearless Gladiator's Band [A]
					i(142651),	-- Fearless Gladiator's Ring [A]
					i(142659),	-- Fearless Gladiator's Signet [A]
				}),
				filter(NECK_F, {
					i(142658),	-- Fearless Gladiator's Choker [A]
					i(142650),	-- Fearless Gladiator's Necklace [A]
					i(142654),	-- Fearless Gladiator's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(142661),	-- Fearless Gladiator's Accolade of Conquest [A]
					i(142667),	-- Fearless Gladiator's Accolade of Dominance [A]
					i(142670),	-- Fearless Gladiator's Accolade of Victory [A]
					i(142672),	-- Fearless Gladiator's Badge of Adaptation [A]
					i(142660),	-- Fearless Gladiator's Badge of Conquest [A]
					i(142666),	-- Fearless Gladiator's Badge of Dominance [A]
					i(142669),	-- Fearless Gladiator's Badge of Victory [A]
					i(142663),	-- Fearless Gladiator's Emblem of Cruelty [A]
					i(142665),	-- Fearless Gladiator's Emblem of Meditation [A]
					i(142664),	-- Fearless Gladiator's Emblem of Tenacity [A]
					i(142662),	-- Fearless Gladiator's Insignia of Conquest [A]
					i(142668),	-- Fearless Gladiator's Insignia of Dominance [A]
					i(142671),	-- Fearless Gladiator's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_0, REMOVED_7_2_0 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(142761),	-- Fearless Gladiator's Dreadcloak [H]
						i(142673),	-- Fearless Gladiator's Dreadplate Chestpiece [H]
						i(142675),	-- Fearless Gladiator's Dreadplate Gauntlets [H]
						i(142679),	-- Fearless Gladiator's Dreadplate Girdle [H]
						i(142676),	-- Fearless Gladiator's Dreadplate Helm [H]
						i(142677),	-- Fearless Gladiator's Dreadplate Legguards [H]
						i(142674),	-- Fearless Gladiator's Dreadplate Sabatons [H]
						i(142678),	-- Fearless Gladiator's Dreadplate Shoulders [H]
						i(142680),	-- Fearless Gladiator's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(143317),	-- Fearless Gladiator's Demonthread Cloak [H]
						i(143252),	-- Fearless Gladiator's Felskin Belt [H]
						i(143246),	-- Fearless Gladiator's Felskin Boots [H]
						i(143247),	-- Fearless Gladiator's Felskin Gloves [H]
						i(143248),	-- Fearless Gladiator's Felskin Helm [H]
						i(143249),	-- Fearless Gladiator's Felskin Legguards [H]
						i(143251),	-- Fearless Gladiator's Felskin Spaulders [H]
						i(143250),	-- Fearless Gladiator's Felskin Tunic [H]
						i(143253),	-- Fearless Gladiator's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(142687),	-- Fearless Gladiator's Dragonhide Belt [H]
						i(142765),	-- Fearless Gladiator's Dragonhide Cloak [H]
						i(142682),	-- Fearless Gladiator's Dragonhide Gloves [H]
						i(142683),	-- Fearless Gladiator's Dragonhide Helm [H]
						i(142684),	-- Fearless Gladiator's Dragonhide Legguards [H]
						i(142681),	-- Fearless Gladiator's Dragonhide Moccasins [H]
						i(142685),	-- Fearless Gladiator's Dragonhide Robe [H]
						i(142686),	-- Fearless Gladiator's Dragonhide Spaulders [H]
						i(142688),	-- Fearless Gladiator's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(142696),	-- Fearless Gladiator's Chain Armband [H]
						i(142689),	-- Fearless Gladiator's Chain Armor [H]
						i(142695),	-- Fearless Gladiator's Chain Clasp [H]
						i(142691),	-- Fearless Gladiator's Chain Gauntlets [H]
						i(142692),	-- Fearless Gladiator's Chain Helm [H]
						i(142693),	-- Fearless Gladiator's Chain Leggings [H]
						i(142694),	-- Fearless Gladiator's Chain Spaulders [H]
						i(142690),	-- Fearless Gladiator's Chain Treads [H]
						i(142769),	-- Fearless Gladiator's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(142702),	-- Fearless Gladiator's Silk Amice [H]
						i(142704),	-- Fearless Gladiator's Silk Bracers [H]
						i(142703),	-- Fearless Gladiator's Silk Cord [H]
						i(142699),	-- Fearless Gladiator's Silk Cowl [H]
						i(142698),	-- Fearless Gladiator's Silk Handguards [H]
						i(142701),	-- Fearless Gladiator's Silk Robe [H]
						i(142697),	-- Fearless Gladiator's Silk Treads [H]
						i(142700),	-- Fearless Gladiator's Silk Trousers [H]
						i(142762),	-- Fearless Gladiator's Silken Shawl [H]
					}),
					cl(MONK, {
						i(142711),	-- Fearless Gladiator's Ironskin Belt [H]
						i(142766),	-- Fearless Gladiator's Ironskin Cloak [H]
						i(142706),	-- Fearless Gladiator's Ironskin Gloves [H]
						i(142707),	-- Fearless Gladiator's Ironskin Helm [H]
						i(142708),	-- Fearless Gladiator's Ironskin Legguards [H]
						i(142705),	-- Fearless Gladiator's Ironskin Slippers [H]
						i(142709),	-- Fearless Gladiator's Ironskin Spaulders [H]
						i(142710),	-- Fearless Gladiator's Ironskin Tunic [H]
						i(142712),	-- Fearless Gladiator's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(142770),	-- Fearless Gladiator's Greatcloak of Faith [H]
						i(142713),	-- Fearless Gladiator's Scaled Battlerobe [H]
						i(142715),	-- Fearless Gladiator's Scaled Gauntlets [H]
						i(142719),	-- Fearless Gladiator's Scaled Girdle [H]
						i(142716),	-- Fearless Gladiator's Scaled Helm [H]
						i(142717),	-- Fearless Gladiator's Scaled Legguards [H]
						i(142714),	-- Fearless Gladiator's Scaled Sabatons [H]
						i(142718),	-- Fearless Gladiator's Scaled Shoulders [H]
						i(142720),	-- Fearless Gladiator's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(143289),	-- Fearless Gladiator's Drape of Piety [H]
						i(142728),	-- Fearless Gladiator's Satin Bracers [H]
						i(142727),	-- Fearless Gladiator's Satin Cord [H]
						i(142722),	-- Fearless Gladiator's Satin Gloves [H]
						i(142723),	-- Fearless Gladiator's Satin Hood [H]
						i(142724),	-- Fearless Gladiator's Satin Leggings [H]
						i(142726),	-- Fearless Gladiator's Satin Mantle [H]
						i(142725),	-- Fearless Gladiator's Satin Robe [H]
						i(142721),	-- Fearless Gladiator's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(142735),	-- Fearless Gladiator's Leather Belt [H]
						i(142731),	-- Fearless Gladiator's Leather Gloves [H]
						i(142732),	-- Fearless Gladiator's Leather Helm [H]
						i(142733),	-- Fearless Gladiator's Leather Legguards [H]
						i(142730),	-- Fearless Gladiator's Leather Slippers [H]
						i(142734),	-- Fearless Gladiator's Leather Spaulders [H]
						i(142729),	-- Fearless Gladiator's Leather Tunic [H]
						i(142736),	-- Fearless Gladiator's Leather Wristguards [H]
						i(143290),	-- Fearless Gladiator's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(142744),	-- Fearless Gladiator's Ringmail Armband [H]
						i(142737),	-- Fearless Gladiator's Ringmail Armor [H]
						i(142738),	-- Fearless Gladiator's Ringmail Boots [H]
						i(142743),	-- Fearless Gladiator's Ringmail Clasp [H]
						i(142739),	-- Fearless Gladiator's Ringmail Gauntlets [H]
						i(142740),	-- Fearless Gladiator's Ringmail Helm [H]
						i(142741),	-- Fearless Gladiator's Ringmail Kilt [H]
						i(142742),	-- Fearless Gladiator's Ringmail Spaulders [H]
						i(143291),	-- Fearless Gladiator's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(142750),	-- Fearless Gladiator's Felweave Amice [H]
						i(142752),	-- Fearless Gladiator's Felweave Bracers [H]
						i(143305),	-- Fearless Gladiator's Felweave Cloak [H]
						i(142751),	-- Fearless Gladiator's Felweave Cord [H]
						i(142747),	-- Fearless Gladiator's Felweave Cowl [H]
						i(142746),	-- Fearless Gladiator's Felweave Handguards [H]
						i(142749),	-- Fearless Gladiator's Felweave Raiment [H]
						i(142745),	-- Fearless Gladiator's Felweave Treads [H]
						i(142748),	-- Fearless Gladiator's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(143311),	-- Fearless Gladiator's Cloak of Battle [H]
						i(142753),	-- Fearless Gladiator's Plate Chestpiece [H]
						i(142755),	-- Fearless Gladiator's Plate Gauntlets [H]
						i(142759),	-- Fearless Gladiator's Plate Girdle [H]
						i(142756),	-- Fearless Gladiator's Plate Helm [H]
						i(142757),	-- Fearless Gladiator's Plate Legguards [H]
						i(142758),	-- Fearless Gladiator's Plate Shoulders [H]
						i(142754),	-- Fearless Gladiator's Plate Warboots [H]
						i(142760),	-- Fearless Gladiator's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(142768),	-- Fearless Gladiator's Band [H]
					i(142764),	-- Fearless Gladiator's Ring [H]
					i(142772),	-- Fearless Gladiator's Signet [H]
				}),
				filter(NECK_F, {
					i(142771),	-- Fearless Gladiator's Choker [H]
					i(142763),	-- Fearless Gladiator's Necklace [H]
					i(142767),	-- Fearless Gladiator's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(142774),	-- Fearless Gladiator's Accolade of Conquest [H]
					i(142780),	-- Fearless Gladiator's Accolade of Dominance [H]
					i(142783),	-- Fearless Gladiator's Accolade of Victory [H]
					i(142785),	-- Fearless Gladiator's Badge of Adaptation [H]
					i(142773),	-- Fearless Gladiator's Badge of Conquest [H]
					i(142779),	-- Fearless Gladiator's Badge of Dominance [H]
					i(142782),	-- Fearless Gladiator's Badge of Victory [H]
					i(142776),	-- Fearless Gladiator's Emblem of Cruelty [H]
					i(142778),	-- Fearless Gladiator's Emblem of Meditation [H]
					i(142777),	-- Fearless Gladiator's Emblem of Tenacity [H]
					i(142775),	-- Fearless Gladiator's Insignia of Conquest [H]
					i(142781),	-- Fearless Gladiator's Insignia of Dominance [H]
					i(142784),	-- Fearless Gladiator's Insignia of Victory [H]
				}),
			})),
		}),
		n(PVP_ELITE, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_0, REMOVED_7_2_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(143100),	-- Fearless Gladiator's Dreadcloak [A]
						i(143012),	-- Fearless Gladiator's Dreadplate Chestpiece [A]
						i(143014),	-- Fearless Gladiator's Dreadplate Gauntlets [A]
						i(143018),	-- Fearless Gladiator's Dreadplate Girdle [A]
						i(143015),	-- Fearless Gladiator's Dreadplate Helm [A]
						i(143016),	-- Fearless Gladiator's Dreadplate Legguards [A]
						i(143013),	-- Fearless Gladiator's Dreadplate Sabatons [A]
						i(143017),	-- Fearless Gladiator's Dreadplate Shoulders [A]
						i(143019),	-- Fearless Gladiator's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(143320),	-- Fearless Gladiator's Demonthread Cloak [A]
						i(143276),	-- Fearless Gladiator's Felskin Belt [A]
						i(143270),	-- Fearless Gladiator's Felskin Boots [A]
						i(143271),	-- Fearless Gladiator's Felskin Gloves [A]
						i(143272),	-- Fearless Gladiator's Felskin Helm [A]
						i(143273),	-- Fearless Gladiator's Felskin Legguards [A]
						i(143275),	-- Fearless Gladiator's Felskin Spaulders [A]
						i(143274),	-- Fearless Gladiator's Felskin Tunic [A]
						i(143277),	-- Fearless Gladiator's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(143026),	-- Fearless Gladiator's Dragonhide Belt [A]
						i(143104),	-- Fearless Gladiator's Dragonhide Cloak [A]
						i(143021),	-- Fearless Gladiator's Dragonhide Gloves [A]
						i(143022),	-- Fearless Gladiator's Dragonhide Helm [A]
						i(143023),	-- Fearless Gladiator's Dragonhide Legguards [A]
						i(143020),	-- Fearless Gladiator's Dragonhide Moccasins [A]
						i(143025),	-- Fearless Gladiator's Dragonhide Spaulders [A]
						i(143024),	-- Fearless Gladiator's Dragonhide Tunic [A]
						i(143027),	-- Fearless Gladiator's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(143035),	-- Fearless Gladiator's Chain Armband [A]
						i(143028),	-- Fearless Gladiator's Chain Armor [A]
						i(143034),	-- Fearless Gladiator's Chain Clasp [A]
						i(143030),	-- Fearless Gladiator's Chain Gauntlets [A]
						i(143031),	-- Fearless Gladiator's Chain Helm [A]
						i(143032),	-- Fearless Gladiator's Chain Leggings [A]
						i(143033),	-- Fearless Gladiator's Chain Spaulders [A]
						i(143029),	-- Fearless Gladiator's Chain Treads [A]
						i(143108),	-- Fearless Gladiator's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(143041),	-- Fearless Gladiator's Silk Amice [A]
						i(143043),	-- Fearless Gladiator's Silk Bracers [A]
						i(143042),	-- Fearless Gladiator's Silk Cord [A]
						i(143038),	-- Fearless Gladiator's Silk Cowl [A]
						i(143037),	-- Fearless Gladiator's Silk Handguards [A]
						i(143040),	-- Fearless Gladiator's Silk Robe [A]
						i(143036),	-- Fearless Gladiator's Silk Treads [A]
						i(143039),	-- Fearless Gladiator's Silk Trousers [A]
						i(143101),	-- Fearless Gladiator's Silken Shawl [A]
					}),
					cl(MONK, {
						i(143050),	-- Fearless Gladiator's Ironskin Belt [A]
						i(143105),	-- Fearless Gladiator's Ironskin Cloak [A]
						i(143045),	-- Fearless Gladiator's Ironskin Gloves [A]
						i(143046),	-- Fearless Gladiator's Ironskin Helm [A]
						i(143047),	-- Fearless Gladiator's Ironskin Legguards [A]
						i(143044),	-- Fearless Gladiator's Ironskin Slippers [A]
						i(143048),	-- Fearless Gladiator's Ironskin Spaulders [A]
						i(143049),	-- Fearless Gladiator's Ironskin Tunic [A]
						i(143051),	-- Fearless Gladiator's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(143109),	-- Fearless Gladiator's Greatcloak of Faith [A]
						i(143052),	-- Fearless Gladiator's Scaled Chestpiece [A]
						i(143054),	-- Fearless Gladiator's Scaled Gauntlets [A]
						i(143058),	-- Fearless Gladiator's Scaled Girdle [A]
						i(143055),	-- Fearless Gladiator's Scaled Helm [A]
						i(143056),	-- Fearless Gladiator's Scaled Legguards [A]
						i(143053),	-- Fearless Gladiator's Scaled Sabatons [A]
						i(143057),	-- Fearless Gladiator's Scaled Shoulders [A]
						i(143059),	-- Fearless Gladiator's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(143298),	-- Fearless Gladiator's Drape of Piety [A]
						i(143067),	-- Fearless Gladiator's Satin Bracers [A]
						i(143066),	-- Fearless Gladiator's Satin Cord [A]
						i(143061),	-- Fearless Gladiator's Satin Gloves [A]
						i(143062),	-- Fearless Gladiator's Satin Hood [A]
						i(143063),	-- Fearless Gladiator's Satin Leggings [A]
						i(143065),	-- Fearless Gladiator's Satin Mantle [A]
						i(143064),	-- Fearless Gladiator's Satin Robe [A]
						i(143060),	-- Fearless Gladiator's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(143074),	-- Fearless Gladiator's Leather Belt [A]
						i(143070),	-- Fearless Gladiator's Leather Gloves [A]
						i(143071),	-- Fearless Gladiator's Leather Helm [A]
						i(143072),	-- Fearless Gladiator's Leather Legguards [A]
						i(143069),	-- Fearless Gladiator's Leather Slippers [A]
						i(143073),	-- Fearless Gladiator's Leather Spaulders [A]
						i(143068),	-- Fearless Gladiator's Leather Tunic [A]
						i(143075),	-- Fearless Gladiator's Leather Wristguards [A]
						i(143299),	-- Fearless Gladiator's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(143083),	-- Fearless Gladiator's Ringmail Armband [A]
						i(143076),	-- Fearless Gladiator's Ringmail Armor [A]
						i(143077),	-- Fearless Gladiator's Ringmail Boots [A]
						i(143082),	-- Fearless Gladiator's Ringmail Clasp [A]
						i(143078),	-- Fearless Gladiator's Ringmail Gauntlets [A]
						i(143079),	-- Fearless Gladiator's Ringmail Helm [A]
						i(143080),	-- Fearless Gladiator's Ringmail Kilt [A]
						i(143081),	-- Fearless Gladiator's Ringmail Spaulders [A]
						i(143300),	-- Fearless Gladiator's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(143089),	-- Fearless Gladiator's Felweave Amice [A]
						i(143091),	-- Fearless Gladiator's Felweave Bracers [A]
						i(143308),	-- Fearless Gladiator's Felweave Cloak [A]
						i(143090),	-- Fearless Gladiator's Felweave Cord [A]
						i(143086),	-- Fearless Gladiator's Felweave Cowl [A]
						i(143085),	-- Fearless Gladiator's Felweave Handguards [A]
						i(143088),	-- Fearless Gladiator's Felweave Raiment [A]
						i(143084),	-- Fearless Gladiator's Felweave Treads [A]
						i(143087),	-- Fearless Gladiator's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(143314),	-- Fearless Gladiator's Cloak of Battle [A]
						i(143092),	-- Fearless Gladiator's Plate Chestpiece [A]
						i(143094),	-- Fearless Gladiator's Plate Gauntlets [A]
						i(143098),	-- Fearless Gladiator's Plate Girdle [A]
						i(143095),	-- Fearless Gladiator's Plate Helm [A]
						i(143096),	-- Fearless Gladiator's Plate Legguards [A]
						i(143097),	-- Fearless Gladiator's Plate Shoulders [A]
						i(143093),	-- Fearless Gladiator's Plate Warboots [A]
						i(143099),	-- Fearless Gladiator's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(143107),	-- Fearless Gladiator's Band [A]
					i(143103),	-- Fearless Gladiator's Ring [A]
					i(143111),	-- Fearless Gladiator's Signet [A]
				}),
				filter(NECK_F, {
					i(143110),	-- Fearless Gladiator's Choker [A]
					i(143102),	-- Fearless Gladiator's Necklace [A]
					i(143106),	-- Fearless Gladiator's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(143113),	-- Fearless Gladiator's Accolade of Conquest [A]
					i(143119),	-- Fearless Gladiator's Accolade of Dominance [A]
					i(143122),	-- Fearless Gladiator's Accolade of Victory [A]
					i(143124),	-- Fearless Gladiator's Badge of Adaptation [A]
					i(143112),	-- Fearless Gladiator's Badge of Conquest [A]
					i(143118),	-- Fearless Gladiator's Badge of Dominance [A]
					i(143121),	-- Fearless Gladiator's Badge of Victory [A]
					i(143115),	-- Fearless Gladiator's Emblem of Cruelty [A]
					i(143117),	-- Fearless Gladiator's Emblem of Meditation [A]
					i(143116),	-- Fearless Gladiator's Emblem of Tenacity [A]
					i(143114),	-- Fearless Gladiator's Insignia of Conquest [A]
					i(143120),	-- Fearless Gladiator's Insignia of Dominance [A]
					i(143123),	-- Fearless Gladiator's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_0, REMOVED_7_2_0 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(143213),	-- Fearless Gladiator's Dreadcloak [H]
						i(143125),	-- Fearless Gladiator's Dreadplate Chestpiece [H]
						i(143127),	-- Fearless Gladiator's Dreadplate Gauntlets [H]
						i(143131),	-- Fearless Gladiator's Dreadplate Girdle [H]
						i(143128),	-- Fearless Gladiator's Dreadplate Helm [H]
						i(143129),	-- Fearless Gladiator's Dreadplate Legguards [H]
						i(143126),	-- Fearless Gladiator's Dreadplate Sabatons [H]
						i(143130),	-- Fearless Gladiator's Dreadplate Shoulders [H]
						i(143132),	-- Fearless Gladiator's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(143321),	-- Fearless Gladiator's Demonthread Cloak [H]
						i(143284),	-- Fearless Gladiator's Felskin Belt [H]
						i(143278),	-- Fearless Gladiator's Felskin Boots [H]
						i(143279),	-- Fearless Gladiator's Felskin Gloves [H]
						i(143280),	-- Fearless Gladiator's Felskin Helm [H]
						i(143281),	-- Fearless Gladiator's Felskin Legguards [H]
						i(143283),	-- Fearless Gladiator's Felskin Spaulders [H]
						i(143282),	-- Fearless Gladiator's Felskin Tunic [H]
						i(143285),	-- Fearless Gladiator's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(143139),	-- Fearless Gladiator's Dragonhide Belt [H]
						i(143217),	-- Fearless Gladiator's Dragonhide Cloak [H]
						i(143134),	-- Fearless Gladiator's Dragonhide Gloves [H]
						i(143135),	-- Fearless Gladiator's Dragonhide Helm [H]
						i(143136),	-- Fearless Gladiator's Dragonhide Legguards [H]
						i(143133),	-- Fearless Gladiator's Dragonhide Moccasins [H]
						i(143138),	-- Fearless Gladiator's Dragonhide Spaulders [H]
						i(143137),	-- Fearless Gladiator's Dragonhide Tunic [H]
						i(143140),	-- Fearless Gladiator's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(143148),	-- Fearless Gladiator's Chain Armband [H]
						i(143141),	-- Fearless Gladiator's Chain Armor [H]
						i(143147),	-- Fearless Gladiator's Chain Clasp [H]
						i(143143),	-- Fearless Gladiator's Chain Gauntlets [H]
						i(143144),	-- Fearless Gladiator's Chain Helm [H]
						i(143145),	-- Fearless Gladiator's Chain Leggings [H]
						i(143146),	-- Fearless Gladiator's Chain Spaulders [H]
						i(143142),	-- Fearless Gladiator's Chain Treads [H]
						i(143221),	-- Fearless Gladiator's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(143154),	-- Fearless Gladiator's Silk Amice [H]
						i(143156),	-- Fearless Gladiator's Silk Bracers [H]
						i(143155),	-- Fearless Gladiator's Silk Cord [H]
						i(143151),	-- Fearless Gladiator's Silk Cowl [H]
						i(143150),	-- Fearless Gladiator's Silk Handguards [H]
						i(143153),	-- Fearless Gladiator's Silk Robe [H]
						i(143149),	-- Fearless Gladiator's Silk Treads [H]
						i(143152),	-- Fearless Gladiator's Silk Trousers [H]
						i(143214),	-- Fearless Gladiator's Silken Shawl [H]
					}),
					cl(MONK, {
						i(143163),	-- Fearless Gladiator's Ironskin Belt [H]
						i(143218),	-- Fearless Gladiator's Ironskin Cloak [H]
						i(143158),	-- Fearless Gladiator's Ironskin Gloves [H]
						i(143159),	-- Fearless Gladiator's Ironskin Helm [H]
						i(143160),	-- Fearless Gladiator's Ironskin Legguards [H]
						i(143157),	-- Fearless Gladiator's Ironskin Slippers [H]
						i(143161),	-- Fearless Gladiator's Ironskin Spaulders [H]
						i(143162),	-- Fearless Gladiator's Ironskin Tunic [H]
						i(143164),	-- Fearless Gladiator's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(143222),	-- Fearless Gladiator's Greatcloak of Faith [H]
						i(143165),	-- Fearless Gladiator's Scaled Chestpiece [H]
						i(143167),	-- Fearless Gladiator's Scaled Gauntlets [H]
						i(143171),	-- Fearless Gladiator's Scaled Girdle [H]
						i(143168),	-- Fearless Gladiator's Scaled Helm [H]
						i(143169),	-- Fearless Gladiator's Scaled Legguards [H]
						i(143166),	-- Fearless Gladiator's Scaled Sabatons [H]
						i(143170),	-- Fearless Gladiator's Scaled Shoulders [H]
						i(143172),	-- Fearless Gladiator's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(143301),	-- Fearless Gladiator's Drape of Piety [H]
						i(143180),	-- Fearless Gladiator's Satin Bracers [H]
						i(143179),	-- Fearless Gladiator's Satin Cord [H]
						i(143174),	-- Fearless Gladiator's Satin Gloves [H]
						i(143175),	-- Fearless Gladiator's Satin Hood [H]
						i(143176),	-- Fearless Gladiator's Satin Leggings [H]
						i(143178),	-- Fearless Gladiator's Satin Mantle [H]
						i(143177),	-- Fearless Gladiator's Satin Robe [H]
						i(143173),	-- Fearless Gladiator's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(143187),	-- Fearless Gladiator's Leather Belt [H]
						i(143183),	-- Fearless Gladiator's Leather Gloves [H]
						i(143184),	-- Fearless Gladiator's Leather Helm [H]
						i(143185),	-- Fearless Gladiator's Leather Legguards [H]
						i(143182),	-- Fearless Gladiator's Leather Slippers [H]
						i(143186),	-- Fearless Gladiator's Leather Spaulders [H]
						i(143181),	-- Fearless Gladiator's Leather Tunic [H]
						i(143188),	-- Fearless Gladiator's Leather Wristguards [H]
						i(143302),	-- Fearless Gladiator's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(143196),	-- Fearless Gladiator's Ringmail Armband [H]
						i(143189),	-- Fearless Gladiator's Ringmail Armor [H]
						i(143190),	-- Fearless Gladiator's Ringmail Boots [H]
						i(143195),	-- Fearless Gladiator's Ringmail Clasp [H]
						i(143191),	-- Fearless Gladiator's Ringmail Gauntlets [H]
						i(143192),	-- Fearless Gladiator's Ringmail Helm [H]
						i(143193),	-- Fearless Gladiator's Ringmail Kilt [H]
						i(143194),	-- Fearless Gladiator's Ringmail Spaulders [H]
						i(143303),	-- Fearless Gladiator's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(143202),	-- Fearless Gladiator's Felweave Amice [H]
						i(143204),	-- Fearless Gladiator's Felweave Bracers [H]
						i(143309),	-- Fearless Gladiator's Felweave Cloak [H]
						i(143203),	-- Fearless Gladiator's Felweave Cord [H]
						i(143199),	-- Fearless Gladiator's Felweave Cowl [H]
						i(143198),	-- Fearless Gladiator's Felweave Handguards [H]
						i(143201),	-- Fearless Gladiator's Felweave Raiment [H]
						i(143197),	-- Fearless Gladiator's Felweave Treads [H]
						i(143200),	-- Fearless Gladiator's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(143315),	-- Fearless Gladiator's Cloak of Battle [H]
						i(143205),	-- Fearless Gladiator's Plate Chestpiece [H]
						i(143207),	-- Fearless Gladiator's Plate Gauntlets [H]
						i(143211),	-- Fearless Gladiator's Plate Girdle [H]
						i(143208),	-- Fearless Gladiator's Plate Helm [H]
						i(143209),	-- Fearless Gladiator's Plate Legguards [H]
						i(143210),	-- Fearless Gladiator's Plate Shoulders [H]
						i(143206),	-- Fearless Gladiator's Plate Warboots [H]
						i(143212),	-- Fearless Gladiator's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(143220),	-- Fearless Gladiator's Band [H]
					i(143216),	-- Fearless Gladiator's Ring [H]
					i(143224),	-- Fearless Gladiator's Signet [H]
				}),
				filter(NECK_F, {
					i(143223),	-- Fearless Gladiator's Choker [H]
					i(143215),	-- Fearless Gladiator's Necklace [H]
					i(143219),	-- Fearless Gladiator's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(143226),	-- Fearless Gladiator's Accolade of Conquest [H]
					i(143232),	-- Fearless Gladiator's Accolade of Dominance [H]
					i(143235),	-- Fearless Gladiator's Accolade of Victory [H]
					i(143237),	-- Fearless Gladiator's Badge of Adaptation [H]
					i(143225),	-- Fearless Gladiator's Badge of Conquest [H]
					i(143231),	-- Fearless Gladiator's Badge of Dominance [H]
					i(143234),	-- Fearless Gladiator's Badge of Victory [H]
					i(143228),	-- Fearless Gladiator's Emblem of Cruelty [H]
					i(143230),	-- Fearless Gladiator's Emblem of Meditation [H]
					i(143229),	-- Fearless Gladiator's Emblem of Tenacity [H]
					i(143227),	-- Fearless Gladiator's Insignia of Conquest [H]
					i(143233),	-- Fearless Gladiator's Insignia of Dominance [H]
					i(143236),	-- Fearless Gladiator's Insignia of Victory [H]
				}),
			})),
		}),
	})),
})));
