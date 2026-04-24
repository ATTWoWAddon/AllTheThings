-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(expansion(EXPANSION.LEGION, {
	n(SEASON_DOMINANT, bubbleDownSelf({
		-- Not the Best Timelining.. /Braghe
		["timeline"] = { ADDED_7_3_2, REMOVED_7_3_5, ADDED_8_0_1_LAUNCH },
	}, {
		n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_7_3_2, REMOVED_7_3_5 } }, {
			ach(12137, {	-- Dominant Combatant [A]
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(103533),	-- Vicious Saddle
				},
			}),
			ach(12136, {	-- Dominant Combatant [H]
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(103533),	-- Vicious Saddle
				},
			}),
			ach(12169),		-- Challenger: Legion Season 6
			ach(12170),		-- Rival: Legion Season 6
			ach(12171),		-- Duelist: Legion Season 6
			ach(12135),		-- Dominant Elite
			ach(12167, {	-- Gladiator: Legion Season 6
				i(141848),	-- Dominant Gladiator's Storm Dragon (MOUNT!)
			}),
			ach(12139, {	-- Dominant Gladiator's Storm Dragon
				["provider"] = { "i", 141848 },	-- Dominant Gladiator's Storm Dragon (MOUNT!)
				["filterID"] = MOUNTS,
			}),
			ach(12134, {	-- Dominant Gladiator: Legion Season 6
				title(368),	-- Dominant Gladiator <Name>
			}),
			-- RBG
			ach(12179, {	-- Soldier of the Alliance: Legion Season 6
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12178, {	-- Soldier of the Horde: Legion Season 6
				["races"] = HORDE_ONLY,
			}),
			ach(12175, {	-- Defender of the Alliance: Legion Season 6
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12174, {	-- Defender of the Horde: Legion Season 6
				["races"] = HORDE_ONLY,
			}),
			ach(12177, {	-- Guardian of the Alliance: Legion Season 6
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12176, {	-- Guardian of the Horde: Legion Season 6
				["races"] = HORDE_ONLY,
			}),
			ach(12173, {	-- Hero of the Alliance: Dominant
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12172, {	-- Hero of the Horde: Dominant
				["races"] = HORDE_ONLY,
			}),
			-- Fashion
			ach(12021, {	-- Claws Out
				["timeline"] = { ADDED_7_3_2, REMOVED_7_3_5, ADDED_8_0_1_LAUNCH },
			}),
		})),
		n(PVP_COMBATANT, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_2, REMOVED_7_3_5 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(149756),	-- Dominant Combatant's Dreadcloak [A]
						i(149780),	-- Dominant Combatant's Dreadplate Chestpiece [A]
						i(149784),	-- Dominant Combatant's Dreadplate Gauntlets [A]
						i(149792),	-- Dominant Combatant's Dreadplate Girdle [A]
						i(149786),	-- Dominant Combatant's Dreadplate Helm [A]
						i(149788),	-- Dominant Combatant's Dreadplate Legguards [A]
						i(149782),	-- Dominant Combatant's Dreadplate Sabatons [A]
						i(149790),	-- Dominant Combatant's Dreadplate Shoulders [A]
						i(149794),	-- Dominant Combatant's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(149758),	-- Dominant Combatant's Demonthread Cloak [A]
						i(149808),	-- Dominant Combatant's Felskin Belt [A]
						i(149798),	-- Dominant Combatant's Felskin Boots [A]
						i(149800),	-- Dominant Combatant's Felskin Gloves [A]
						i(149802),	-- Dominant Combatant's Felskin Helm [A]
						i(149804),	-- Dominant Combatant's Felskin Legguards [A]
						i(149806),	-- Dominant Combatant's Felskin Spaulders [A]
						i(149796),	-- Dominant Combatant's Felskin Tunic [A]
						i(149810),	-- Dominant Combatant's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(149824),	-- Dominant Combatant's Dragonhide Belt [A]
						i(149760),	-- Dominant Combatant's Dragonhide Cloak [A]
						i(149816),	-- Dominant Combatant's Dragonhide Gloves [A]
						i(149818),	-- Dominant Combatant's Dragonhide Helm [A]
						i(149820),	-- Dominant Combatant's Dragonhide Legguards [A]
						i(149814),	-- Dominant Combatant's Dragonhide Moccasins [A]
						i(149822),	-- Dominant Combatant's Dragonhide Spaulders [A]
						i(149812),	-- Dominant Combatant's Dragonhide Tunic [A]
						i(149826),	-- Dominant Combatant's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(149762),	-- Dominant Combatant's Drape of the Tracker [A]
						i(149842),	-- Dominant Combatant's Chain Armband [A]
						i(149828),	-- Dominant Combatant's Chain Armor [A]
						i(149840),	-- Dominant Combatant's Chain Clasp [A]
						i(149832),	-- Dominant Combatant's Chain Gauntlets [A]
						i(149834),	-- Dominant Combatant's Chain Helm [A]
						i(149836),	-- Dominant Combatant's Chain Leggings [A]
						i(149838),	-- Dominant Combatant's Chain Spaulders [A]
						i(149830),	-- Dominant Combatant's Chain Treads [A]
					}),
					cl(MAGE, {
						i(149854),	-- Dominant Combatant's Silk Amice [A]
						i(149858),	-- Dominant Combatant's Silk Bracers [A]
						i(149856),	-- Dominant Combatant's Silk Cord [A]
						i(149848),	-- Dominant Combatant's Silk Cowl [A]
						i(149846),	-- Dominant Combatant's Silk Handguards [A]
						i(149852),	-- Dominant Combatant's Silk Robe [A]
						i(149844),	-- Dominant Combatant's Silk Treads [A]
						i(149850),	-- Dominant Combatant's Silk Trousers [A]
						i(149764),	-- Dominant Combatant's Silken Shawl [A]
					}),
					cl(MONK, {
						i(149872),	-- Dominant Combatant's Ironskin Belt [A]
						i(149766),	-- Dominant Combatant's Ironskin Cloak [A]
						i(149862),	-- Dominant Combatant's Ironskin Gloves [A]
						i(149864),	-- Dominant Combatant's Ironskin Helm [A]
						i(149866),	-- Dominant Combatant's Ironskin Legguards [A]
						i(149860),	-- Dominant Combatant's Ironskin Slippers [A]
						i(149868),	-- Dominant Combatant's Ironskin Spaulders [A]
						i(149870),	-- Dominant Combatant's Ironskin Tunic [A]
						i(149874),	-- Dominant Combatant's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(149768),	-- Dominant Combatant's Greatcloak of Faith [A]
						i(149882),	-- Dominant Combatant's Scaled Chestpiece [A]
						i(149886),	-- Dominant Combatant's Scaled Gauntlets [A]
						i(149894),	-- Dominant Combatant's Scaled Girdle [A]
						i(149888),	-- Dominant Combatant's Scaled Helm [A]
						i(149890),	-- Dominant Combatant's Scaled Legguards [A]
						i(149884),	-- Dominant Combatant's Scaled Sabatons [A]
						i(149892),	-- Dominant Combatant's Scaled Shoulders [A]
						i(149896),	-- Dominant Combatant's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(149770),	-- Dominant Combatant's Drape of Piety [A]
						i(149912),	-- Dominant Combatant's Satin Bracers [A]
						i(149910),	-- Dominant Combatant's Satin Cord [A]
						i(149900),	-- Dominant Combatant's Satin Gloves [A]
						i(149902),	-- Dominant Combatant's Satin Hood [A]
						i(149904),	-- Dominant Combatant's Satin Leggings [A]
						i(149908),	-- Dominant Combatant's Satin Mantle [A]
						i(149906),	-- Dominant Combatant's Satin Robe [A]
						i(149898),	-- Dominant Combatant's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(149932),	-- Dominant Combatant's Leather Belt [A]
						i(149924),	-- Dominant Combatant's Leather Gloves [A]
						i(149926),	-- Dominant Combatant's Leather Helm [A]
						i(149928),	-- Dominant Combatant's Leather Legguards [A]
						i(149922),	-- Dominant Combatant's Leather Slippers [A]
						i(149930),	-- Dominant Combatant's Leather Spaulders [A]
						i(149920),	-- Dominant Combatant's Leather Tunic [A]
						i(149934),	-- Dominant Combatant's Leather Wristguards [A]
						i(149772),	-- Dominant Combatant's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(149950),	-- Dominant Combatant's Ringmail Armband [A]
						i(149936),	-- Dominant Combatant's Ringmail Armor [A]
						i(149938),	-- Dominant Combatant's Ringmail Boots [A]
						i(149948),	-- Dominant Combatant's Ringmail Clasp [A]
						i(149940),	-- Dominant Combatant's Ringmail Gauntlets [A]
						i(149942),	-- Dominant Combatant's Ringmail Helm [A]
						i(149944),	-- Dominant Combatant's Ringmail Leggings [A]
						i(149946),	-- Dominant Combatant's Ringmail Spaulders [A]
						i(149774),	-- Dominant Combatant's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(149980),	-- Dominant Combatant's Felweave Amice [A]
						i(149984),	-- Dominant Combatant's Felweave Bracers [A]
						i(149776),	-- Dominant Combatant's Felweave Cloak [A]
						i(149982),	-- Dominant Combatant's Felweave Cord [A]
						i(149974),	-- Dominant Combatant's Felweave Cowl [A]
						i(149972),	-- Dominant Combatant's Felweave Handguards [A]
						i(149978),	-- Dominant Combatant's Felweave Raiment [A]
						i(149970),	-- Dominant Combatant's Felweave Treads [A]
						i(149976),	-- Dominant Combatant's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(149990),	-- Dominant Combatant's Plate Gauntlets [A]
						i(149986),	-- Dominant Combatant's Plate Chestpiece [A]
						i(149988),	-- Dominant Combatant's Plate Warboots [A]
						i(149992),	-- Dominant Combatant's Plate Helm [A]
						i(149994),	-- Dominant Combatant's Plate Legguards [A]
						i(149996),	-- Dominant Combatant's Plate Shoulders [A]
						i(149998),	-- Dominant Combatant's Plate Girdle [A]
						i(150000),	-- Dominant Combatant's Plate Wristplates [A]
						i(149778),	-- Dominant Combatant's Cloak of Battle [A]
					}),
				}),
				filter(FINGER_F, {
					i(149916),	-- Dominant Combatant's Band [A]
					i(149914),	-- Dominant Combatant's Ring [A]
					i(149918),	-- Dominant Combatant's Signet [A]
				}),
				filter(NECK_F, {
					i(149880),	-- Dominant Combatant's Choker [A]
					i(149876),	-- Dominant Combatant's Necklace [A]
					i(149878),	-- Dominant Combatant's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(149954),	-- Dominant Combatant's Accolade of Conquest [A]
					i(149960),	-- Dominant Combatant's Accolade of Dominance [A]
					i(149966),	-- Dominant Combatant's Accolade of Victory [A]
					i(149952),	-- Dominant Combatant's Badge of Conquest [A]
					i(149958),	-- Dominant Combatant's Badge of Dominance [A]
					i(149964),	-- Dominant Combatant's Badge of Victory [A]
					i(149956),	-- Dominant Combatant's Insignia of Conquest [A]
					i(149962),	-- Dominant Combatant's Insignia of Dominance [A]
					i(149968),	-- Dominant Combatant's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_2, REMOVED_7_3_5 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(149757),	-- Dominant Combatant's Dreadcloak [H]
						i(149781),	-- Dominant Combatant's Dreadplate Chestpiece [H]
						i(149785),	-- Dominant Combatant's Dreadplate Gauntlets [H]
						i(149793),	-- Dominant Combatant's Dreadplate Girdle [H]
						i(149787),	-- Dominant Combatant's Dreadplate Helm [H]
						i(149789),	-- Dominant Combatant's Dreadplate Legguards [H]
						i(149783),	-- Dominant Combatant's Dreadplate Sabatons [H]
						i(149791),	-- Dominant Combatant's Dreadplate Shoulders [H]
						i(149795),	-- Dominant Combatant's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(149759),	-- Dominant Combatant's Demonthread Cloak [H]
						i(149809),	-- Dominant Combatant's Felskin Belt [H]
						i(149799),	-- Dominant Combatant's Felskin Boots [H]
						i(149801),	-- Dominant Combatant's Felskin Gloves [H]
						i(149803),	-- Dominant Combatant's Felskin Helm [H]
						i(149805),	-- Dominant Combatant's Felskin Legguards [H]
						i(149807),	-- Dominant Combatant's Felskin Spaulders [H]
						i(149797),	-- Dominant Combatant's Felskin Tunic [H]
						i(149811),	-- Dominant Combatant's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(149825),	-- Dominant Combatant's Dragonhide Belt [H]
						i(149761),	-- Dominant Combatant's Dragonhide Cloak [H]
						i(149817),	-- Dominant Combatant's Dragonhide Gloves [H]
						i(149819),	-- Dominant Combatant's Dragonhide Helm [H]
						i(149821),	-- Dominant Combatant's Dragonhide Legguards [H]
						i(149815),	-- Dominant Combatant's Dragonhide Moccasins [H]
						i(149823),	-- Dominant Combatant's Dragonhide Spaulders [H]
						i(149813),	-- Dominant Combatant's Dragonhide Tunic [H]
						i(149827),	-- Dominant Combatant's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(149763),	-- Dominant Combatant's Drape of the Tracker [H]
						i(149843),	-- Dominant Combatant's Chain Armband [H]
						i(149829),	-- Dominant Combatant's Chain Armor [H]
						i(149841),	-- Dominant Combatant's Chain Clasp [H]
						i(149833),	-- Dominant Combatant's Chain Gauntlets [H]
						i(149835),	-- Dominant Combatant's Chain Helm [H]
						i(149837),	-- Dominant Combatant's Chain Leggings [H]
						i(149839),	-- Dominant Combatant's Chain Spaulders [H]
						i(149831),	-- Dominant Combatant's Chain Treads [H]
					}),
					cl(MAGE, {
						i(149855),	-- Dominant Combatant's Silk Amice [H]
						i(149859),	-- Dominant Combatant's Silk Bracers [H]
						i(149857),	-- Dominant Combatant's Silk Cord [H]
						i(149849),	-- Dominant Combatant's Silk Cowl [H]
						i(149847),	-- Dominant Combatant's Silk Handguards [H]
						i(149853),	-- Dominant Combatant's Silk Robe [H]
						i(149845),	-- Dominant Combatant's Silk Treads [H]
						i(149851),	-- Dominant Combatant's Silk Trousers [H]
						i(149765),	-- Dominant Combatant's Silken Shawl [H]
					}),
					cl(MONK, {
						i(149873),	-- Dominant Combatant's Ironskin Belt [H]
						i(149767),	-- Dominant Combatant's Ironskin Cloak [H]
						i(149863),	-- Dominant Combatant's Ironskin Gloves [H]
						i(149865),	-- Dominant Combatant's Ironskin Helm [H]
						i(149867),	-- Dominant Combatant's Ironskin Legguards [H]
						i(149861),	-- Dominant Combatant's Ironskin Slippers [H]
						i(149869),	-- Dominant Combatant's Ironskin Spaulders [H]
						i(149871),	-- Dominant Combatant's Ironskin Tunic [H]
						i(149875),	-- Dominant Combatant's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(149769),	-- Dominant Combatant's Greatcloak of Faith [H]
						i(149883),	-- Dominant Combatant's Scaled Chestpiece [H]
						i(149887),	-- Dominant Combatant's Scaled Gauntlets [H]
						i(149895),	-- Dominant Combatant's Scaled Girdle [H]
						i(149889),	-- Dominant Combatant's Scaled Helm [H]
						i(149891),	-- Dominant Combatant's Scaled Legguards [H]
						i(149885),	-- Dominant Combatant's Scaled Sabatons [H]
						i(149893),	-- Dominant Combatant's Scaled Shoulders [H]
						i(149897),	-- Dominant Combatant's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(149771),	-- Dominant Combatant's Drape of Piety [H]
						i(149913),	-- Dominant Combatant's Satin Bracers [H]
						i(149911),	-- Dominant Combatant's Satin Cord [H]
						i(149901),	-- Dominant Combatant's Satin Gloves [H]
						i(149903),	-- Dominant Combatant's Satin Hood [H]
						i(149905),	-- Dominant Combatant's Satin Leggings [H]
						i(149909),	-- Dominant Combatant's Satin Mantle [H]
						i(149907),	-- Dominant Combatant's Satin Robe [H]
						i(149899),	-- Dominant Combatant's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(149933),	-- Dominant Combatant's Leather Belt [H]
						i(149925),	-- Dominant Combatant's Leather Gloves [H]
						i(149927),	-- Dominant Combatant's Leather Helm [H]
						i(149929),	-- Dominant Combatant's Leather Legguards [H]
						i(149923),	-- Dominant Combatant's Leather Slippers [H]
						i(149931),	-- Dominant Combatant's Leather Spaulders [H]
						i(149921),	-- Dominant Combatant's Leather Tunic [H]
						i(149935),	-- Dominant Combatant's Leather Wristguards [H]
						i(149773),	-- Dominant Combatant's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(149951),	-- Dominant Combatant's Ringmail Armband [H]
						i(149937),	-- Dominant Combatant's Ringmail Armor [H]
						i(149939),	-- Dominant Combatant's Ringmail Boots [H]
						i(149949),	-- Dominant Combatant's Ringmail Clasp [H]
						i(149941),	-- Dominant Combatant's Ringmail Gauntlets [H]
						i(149943),	-- Dominant Combatant's Ringmail Helm [H]
						i(149945),	-- Dominant Combatant's Ringmail Leggings [H]
						i(149947),	-- Dominant Combatant's Ringmail Spaulders [H]
						i(149775),	-- Dominant Combatant's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(149981),	-- Dominant Combatant's Felweave Amice [H]
						i(149985),	-- Dominant Combatant's Felweave Bracers [H]
						i(149777),	-- Dominant Combatant's Felweave Cloak [H]
						i(149983),	-- Dominant Combatant's Felweave Cord [H]
						i(149975),	-- Dominant Combatant's Felweave Cowl [H]
						i(149973),	-- Dominant Combatant's Felweave Handguards [H]
						i(149979),	-- Dominant Combatant's Felweave Raiment [H]
						i(149971),	-- Dominant Combatant's Felweave Treads [H]
						i(149977),	-- Dominant Combatant's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(149779),	-- Dominant Combatant's Cloak of Battle [H]
						i(149987),	-- Dominant Combatant's Plate Chestpiece [H]
						i(149991),	-- Dominant Combatant's Plate Gauntlets [H]
						i(149999),	-- Dominant Combatant's Plate Girdle [H]
						i(149993),	-- Dominant Combatant's Plate Helm [H]
						i(149995),	-- Dominant Combatant's Plate Legguards [H]
						i(149997),	-- Dominant Combatant's Plate Shoulders [H]
						i(149989),	-- Dominant Combatant's Plate Warboots [H]
						i(150001),	-- Dominant Combatant's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(149917),	-- Dominant Combatant's Band [H]
					i(149915),	-- Dominant Combatant's Ring [H]
					i(149919),	-- Dominant Combatant's Signet [H]
				}),
				filter(NECK_F, {
					i(149881),	-- Dominant Combatant's Choker [H]
					i(149877),	-- Dominant Combatant's Necklace [H]
					i(149879),	-- Dominant Combatant's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(149955),	-- Dominant Combatant's Accolade of Conquest [H]
					i(149961),	-- Dominant Combatant's Accolade of Dominance [H]
					i(149967),	-- Dominant Combatant's Accolade of Victory [H]
					i(149953),	-- Dominant Combatant's Badge of Conquest [H]
					i(149959),	-- Dominant Combatant's Badge of Dominance [H]
					i(149965),	-- Dominant Combatant's Badge of Victory [H]
					i(149957),	-- Dominant Combatant's Insignia of Conquest [H]
					i(149963),	-- Dominant Combatant's Insignia of Dominance [H]
					i(149969),	-- Dominant Combatant's Insignia of Victory [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_2, REMOVED_7_3_5 } }, {
				filter(RELICS_F, {
					i(150306),	-- Alliance of Convenience
					i(150357),	-- Battering Tempest
					i(150316),	-- Battle-Tempered Hilt
					i(150307),	-- Blaze of Glory
					i(150354),	-- Blindside Approach
					i(150314),	-- Brilliant Sunstone
					i(150319),	-- "Borrowed Soul" Essence
					i(150313),	-- Clarity of Conviction
					i(150312),	-- Cold Sweat
					i(150310),	-- Conscience of the Victorious
					i(150356),	-- Dead Man's Tale
					i(150299),	-- Exhaustive Research
					i(150304),	-- Fel-Loaded Dice
					i(150308),	-- Flame of the Fallen
					i(150301),	-- Grisly Souvenir
					i(150305),	-- Performance Enhancing Curio
					i(150321),	-- Petrified Ancient's Thumb
					i(150355),	-- Polished Shadowstone
					i(150315),	-- Radiance of Dawn
					i(150298),	-- Reactive Intuition
					i(150359),	-- Roar of the Crowd
					i(150318),	-- Steadfast Conviction
					i(150311),	-- Superiority's Contempt
					i(150300),	-- Taboo Knowledge
					i(150302),	-- Thirsty Bloodstone
					i(150303),	-- Thrill of Battle
					i(150358),	-- Thundering Impact
					i(150320),	-- Tombweed Bloom
					i(150309),	-- Torch of Competition
					i(150317),	-- Unflinching Grit
				}),
			})),
		}),
		n(PVP_GLADIATOR, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_2, REMOVED_7_3_5 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(148402),	-- Dominant Gladiator's Dreadcloak [A]
						i(148426),	-- Dominant Gladiator's Dreadplate Chestpiece [A]
						i(148430),	-- Dominant Gladiator's Dreadplate Gauntlets [A]
						i(148438),	-- Dominant Gladiator's Dreadplate Girdle [A]
						i(148432),	-- Dominant Gladiator's Dreadplate Helm [A]
						i(148434),	-- Dominant Gladiator's Dreadplate Legguards [A]
						i(148428),	-- Dominant Gladiator's Dreadplate Sabatons [A]
						i(148436),	-- Dominant Gladiator's Dreadplate Shoulders [A]
						i(148440),	-- Dominant Gladiator's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(148404),	-- Dominant Gladiator's Demonthread Cloak [A]
						i(148454),	-- Dominant Gladiator's Felskin Belt [A]
						i(148444),	-- Dominant Gladiator's Felskin Boots [A]
						i(148446),	-- Dominant Gladiator's Felskin Gloves [A]
						i(148448),	-- Dominant Gladiator's Felskin Helm [A]
						i(148450),	-- Dominant Gladiator's Felskin Legguards [A]
						i(148452),	-- Dominant Gladiator's Felskin Spaulders [A]
						i(148442),	-- Dominant Gladiator's Felskin Tunic [A]
						i(148456),	-- Dominant Gladiator's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(148470),	-- Dominant Gladiator's Dragonhide Belt [A]
						i(148406),	-- Dominant Gladiator's Dragonhide Cloak [A]
						i(148462),	-- Dominant Gladiator's Dragonhide Gloves [A]
						i(148464),	-- Dominant Gladiator's Dragonhide Helm [A]
						i(148466),	-- Dominant Gladiator's Dragonhide Legguards [A]
						i(148460),	-- Dominant Gladiator's Dragonhide Moccasins [A]
						i(148468),	-- Dominant Gladiator's Dragonhide Spaulders [A]
						i(148458),	-- Dominant Gladiator's Dragonhide Vest [A]
						i(148472),	-- Dominant Gladiator's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(148408),	-- Dominant Gladiator's Drape of the Tracker [A]
						i(148488),	-- Dominant Gladiator's Chain Armband [A]
						i(148474),	-- Dominant Gladiator's Chain Armor [A]
						i(148486),	-- Dominant Gladiator's Chain Clasp [A]
						i(148478),	-- Dominant Gladiator's Chain Gauntlets [A]
						i(148480),	-- Dominant Gladiator's Chain Helm [A]
						i(148482),	-- Dominant Gladiator's Chain Leggings [A]
						i(148484),	-- Dominant Gladiator's Chain Spaulders [A]
						i(148476),	-- Dominant Gladiator's Chain Treads [A]
					}),
					cl(MAGE, {
						i(148500),	-- Dominant Gladiator's Silk Amice [A]
						i(148504),	-- Dominant Gladiator's Silk Bracers [A]
						i(148502),	-- Dominant Gladiator's Silk Cord [A]
						i(148494),	-- Dominant Gladiator's Silk Cowl [A]
						i(148492),	-- Dominant Gladiator's Silk Handguards [A]
						i(148490),	-- Dominant Gladiator's Silk Treads [A]
						i(148496),	-- Dominant Gladiator's Silk Trousers [A]
						i(148498),	-- Dominant Gladiator's Silk Tunic [A]
						i(148410),	-- Dominant Gladiator's Silken Shawl [A]
					}),
					cl(MONK, {
						i(148518),	-- Dominant Gladiator's Ironskin Belt [A]
						i(148412),	-- Dominant Gladiator's Ironskin Cloak [A]
						i(148508),	-- Dominant Gladiator's Ironskin Gloves [A]
						i(148510),	-- Dominant Gladiator's Ironskin Helm [A]
						i(148512),	-- Dominant Gladiator's Ironskin Legguards [A]
						i(148506),	-- Dominant Gladiator's Ironskin Slippers [A]
						i(148514),	-- Dominant Gladiator's Ironskin Spaulders [A]
						i(148516),	-- Dominant Gladiator's Ironskin Tunic [A]
						i(148520),	-- Dominant Gladiator's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(148414),	-- Dominant Gladiator's Greatcloak of Faith [A]
						i(148537),	-- Dominant Gladiator's Scaled Breastplate [A]
						i(148531),	-- Dominant Gladiator's Scaled Gauntlets [A]
						i(148540),	-- Dominant Gladiator's Scaled Girdle [A]
						i(148533),	-- Dominant Gladiator's Scaled Helm [A]
						i(148535),	-- Dominant Gladiator's Scaled Legguards [A]
						i(148529),	-- Dominant Gladiator's Scaled Sabatons [A]
						i(148538),	-- Dominant Gladiator's Scaled Shoulders [A]
						i(148542),	-- Dominant Gladiator's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(148416),	-- Dominant Gladiator's Drape of Piety [A]
						i(148558),	-- Dominant Gladiator's Satin Bracers [A]
						i(148556),	-- Dominant Gladiator's Satin Cord [A]
						i(148546),	-- Dominant Gladiator's Satin Gloves [A]
						i(148548),	-- Dominant Gladiator's Satin Hood [A]
						i(148550),	-- Dominant Gladiator's Satin Leggings [A]
						i(148554),	-- Dominant Gladiator's Satin Mantle [A]
						i(148552),	-- Dominant Gladiator's Satin Robe [A]
						i(148544),	-- Dominant Gladiator's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(148578),	-- Dominant Gladiator's Leather Belt [A]
						i(148570),	-- Dominant Gladiator's Leather Gloves [A]
						i(148572),	-- Dominant Gladiator's Leather Helm [A]
						i(148574),	-- Dominant Gladiator's Leather Legguards [A]
						i(148568),	-- Dominant Gladiator's Leather Slippers [A]
						i(148576),	-- Dominant Gladiator's Leather Spaulders [A]
						i(148566),	-- Dominant Gladiator's Leather Tunic [A]
						i(148580),	-- Dominant Gladiator's Leather Wristguards [A]
						i(148418),	-- Dominant Gladiator's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(148596),	-- Dominant Gladiator's Ringmail Armband [A]
						i(148582),	-- Dominant Gladiator's Ringmail Armor [A]
						i(148584),	-- Dominant Gladiator's Ringmail Boots [A]
						i(148594),	-- Dominant Gladiator's Ringmail Clasp [A]
						i(148586),	-- Dominant Gladiator's Ringmail Gauntlets [A]
						i(148588),	-- Dominant Gladiator's Ringmail Helm [A]
						i(148590),	-- Dominant Gladiator's Ringmail Leggings [A]
						i(148592),	-- Dominant Gladiator's Ringmail Spaulders [A]
						i(148420),	-- Dominant Gladiator's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(148626),	-- Dominant Gladiator's Felweave Amice [A]
						i(148630),	-- Dominant Gladiator's Felweave Bracers [A]
						i(148422),	-- Dominant Gladiator's Felweave Cloak [A]
						i(148628),	-- Dominant Gladiator's Felweave Cord [A]
						i(148620),	-- Dominant Gladiator's Felweave Cowl [A]
						i(148618),	-- Dominant Gladiator's Felweave Handguards [A]
						i(148624),	-- Dominant Gladiator's Felweave Raiment [A]
						i(148616),	-- Dominant Gladiator's Felweave Treads [A]
						i(148622),	-- Dominant Gladiator's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(148424),	-- Dominant Gladiator's Cloak of Battle [A]
						i(148632),	-- Dominant Gladiator's Plate Chestpiece [A]
						i(148636),	-- Dominant Gladiator's Plate Gauntlets [A]
						i(148644),	-- Dominant Gladiator's Plate Girdle [A]
						i(148638),	-- Dominant Gladiator's Plate Helm [A]
						i(148640),	-- Dominant Gladiator's Plate Legguards [A]
						i(148642),	-- Dominant Gladiator's Plate Shoulders [A]
						i(148634),	-- Dominant Gladiator's Plate Warboots [A]
						i(148646),	-- Dominant Gladiator's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(148562),	-- Dominant Gladiator's Band [A]
					i(148560),	-- Dominant Gladiator's Ring [A]
					i(148564),	-- Dominant Gladiator's Signet [A]
				}),
				filter(NECK_F, {
					i(148526),	-- Dominant Gladiator's Choker [A]
					i(148522),	-- Dominant Gladiator's Necklace [A]
					i(148524),	-- Dominant Gladiator's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(148600),	-- Dominant Gladiator's Accolade of Conquest [A]
					i(148606),	-- Dominant Gladiator's Accolade of Dominance [A]
					i(148612),	-- Dominant Gladiator's Accolade of Victory [A]
					i(148598),	-- Dominant Gladiator's Badge of Conquest [A]
					i(148604),	-- Dominant Gladiator's Badge of Dominance [A]
					i(148610),	-- Dominant Gladiator's Badge of Victory [A]
					i(148602),	-- Dominant Gladiator's Insignia of Conquest [A]
					i(148608),	-- Dominant Gladiator's Insignia of Dominance [A]
					i(148614),	-- Dominant Gladiator's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_2, REMOVED_7_3_5 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(148403),	-- Dominant Gladiator's Dreadcloak [H]
						i(148427),	-- Dominant Gladiator's Dreadplate Chestpiece [H]
						i(148431),	-- Dominant Gladiator's Dreadplate Gauntlets [H]
						i(148439),	-- Dominant Gladiator's Dreadplate Girdle [H]
						i(148433),	-- Dominant Gladiator's Dreadplate Helm [H]
						i(148435),	-- Dominant Gladiator's Dreadplate Legguards [H]
						i(148429),	-- Dominant Gladiator's Dreadplate Sabatons [H]
						i(148437),	-- Dominant Gladiator's Dreadplate Shoulders [H]
						i(148441),	-- Dominant Gladiator's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(148405),	-- Dominant Gladiator's Demonthread Cloak [H]
						i(148455),	-- Dominant Gladiator's Felskin Belt [H]
						i(148445),	-- Dominant Gladiator's Felskin Boots [H]
						i(148447),	-- Dominant Gladiator's Felskin Gloves [H]
						i(148449),	-- Dominant Gladiator's Felskin Helm [H]
						i(148451),	-- Dominant Gladiator's Felskin Legguards [H]
						i(148453),	-- Dominant Gladiator's Felskin Spaulders [H]
						i(148443),	-- Dominant Gladiator's Felskin Tunic [H]
						i(148457),	-- Dominant Gladiator's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(148471),	-- Dominant Gladiator's Dragonhide Belt [H]
						i(148407),	-- Dominant Gladiator's Dragonhide Cloak [H]
						i(148463),	-- Dominant Gladiator's Dragonhide Gloves [H]
						i(148465),	-- Dominant Gladiator's Dragonhide Helm [H]
						i(148467),	-- Dominant Gladiator's Dragonhide Legguards [H]
						i(148461),	-- Dominant Gladiator's Dragonhide Moccasins [H]
						i(148469),	-- Dominant Gladiator's Dragonhide Spaulders [H]
						i(148459),	-- Dominant Gladiator's Dragonhide Vest [H]
						i(148473),	-- Dominant Gladiator's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(148489),	-- Dominant Gladiator's Chain Armband [H]
						i(148475),	-- Dominant Gladiator's Chain Armor [H]
						i(148487),	-- Dominant Gladiator's Chain Clasp [H]
						i(148479),	-- Dominant Gladiator's Chain Gauntlets [H]
						i(148481),	-- Dominant Gladiator's Chain Helm [H]
						i(148483),	-- Dominant Gladiator's Chain Leggings [H]
						i(148485),	-- Dominant Gladiator's Chain Spaulders [H]
						i(148477),	-- Dominant Gladiator's Chain Treads [H]
						i(148409),	-- Dominant Gladiator's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(148501),	-- Dominant Gladiator's Silk Amice [H]
						i(148505),	-- Dominant Gladiator's Silk Bracers [H]
						i(148503),	-- Dominant Gladiator's Silk Cord [H]
						i(148495),	-- Dominant Gladiator's Silk Cowl [H]
						i(148493),	-- Dominant Gladiator's Silk Handguards [H]
						i(148491),	-- Dominant Gladiator's Silk Treads [H]
						i(148497),	-- Dominant Gladiator's Silk Trousers [H]
						i(148499),	-- Dominant Gladiator's Silk Tunic [H]
						i(148411),	-- Dominant Gladiator's Silken Shawl [H]
					}),
					cl(MONK, {
						i(148519),	-- Dominant Gladiator's Ironskin Belt [H]
						i(148413),	-- Dominant Gladiator's Ironskin Cloak [H]
						i(148509),	-- Dominant Gladiator's Ironskin Gloves [H]
						i(148511),	-- Dominant Gladiator's Ironskin Helm [H]
						i(148513),	-- Dominant Gladiator's Ironskin Legguards [H]
						i(148507),	-- Dominant Gladiator's Ironskin Slippers [H]
						i(148515),	-- Dominant Gladiator's Ironskin Spaulders [H]
						i(148517),	-- Dominant Gladiator's Ironskin Tunic [H]
						i(148521),	-- Dominant Gladiator's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(148415),	-- Dominant Gladiator's Greatcloak of Faith [H]
						i(148528),	-- Dominant Gladiator's Scaled Breastplate [H]
						i(148532),	-- Dominant Gladiator's Scaled Gauntlets [H]
						i(148541),	-- Dominant Gladiator's Scaled Girdle [H]
						i(148534),	-- Dominant Gladiator's Scaled Helm [H]
						i(148536),	-- Dominant Gladiator's Scaled Legguards [H]
						i(148530),	-- Dominant Gladiator's Scaled Sabatons [H]
						i(148539),	-- Dominant Gladiator's Scaled Shoulders [H]
						i(148543),	-- Dominant Gladiator's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(148417),	-- Dominant Gladiator's Drape of Piety [H]
						i(148559),	-- Dominant Gladiator's Satin Bracers [H]
						i(148557),	-- Dominant Gladiator's Satin Cord [H]
						i(148547),	-- Dominant Gladiator's Satin Gloves [H]
						i(148549),	-- Dominant Gladiator's Satin Hood [H]
						i(148551),	-- Dominant Gladiator's Satin Leggings [H]
						i(148555),	-- Dominant Gladiator's Satin Mantle [H]
						i(148553),	-- Dominant Gladiator's Satin Robe [H]
						i(148545),	-- Dominant Gladiator's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(148579),	-- Dominant Gladiator's Leather Belt [H]
						i(148571),	-- Dominant Gladiator's Leather Gloves [H]
						i(148573),	-- Dominant Gladiator's Leather Helm [H]
						i(148575),	-- Dominant Gladiator's Leather Legguards [H]
						i(148569),	-- Dominant Gladiator's Leather Slippers [H]
						i(148577),	-- Dominant Gladiator's Leather Spaulders [H]
						i(148567),	-- Dominant Gladiator's Leather Tunic [H]
						i(148581),	-- Dominant Gladiator's Leather Wristguards [H]
						i(148419),	-- Dominant Gladiator's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(148597),	-- Dominant Gladiator's Ringmail Armband [H]
						i(148583),	-- Dominant Gladiator's Ringmail Armor [H]
						i(148585),	-- Dominant Gladiator's Ringmail Boots [H]
						i(148595),	-- Dominant Gladiator's Ringmail Clasp [H]
						i(148587),	-- Dominant Gladiator's Ringmail Gauntlets [H]
						i(148589),	-- Dominant Gladiator's Ringmail Helm [H]
						i(148591),	-- Dominant Gladiator's Ringmail Leggings [H]
						i(148593),	-- Dominant Gladiator's Ringmail Spaulders [H]
						i(148421),	-- Dominant Gladiator's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(148627),	-- Dominant Gladiator's Felweave Amice [H]
						i(148631),	-- Dominant Gladiator's Felweave Bracers [H]
						i(148423),	-- Dominant Gladiator's Felweave Cloak [H]
						i(148629),	-- Dominant Gladiator's Felweave Cord [H]
						i(148621),	-- Dominant Gladiator's Felweave Cowl [H]
						i(148619),	-- Dominant Gladiator's Felweave Handguards [H]
						i(148625),	-- Dominant Gladiator's Felweave Raiment [H]
						i(148617),	-- Dominant Gladiator's Felweave Treads [H]
						i(148623),	-- Dominant Gladiator's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(148425),	-- Dominant Gladiator's Cloak of Battle [H]
						i(148633),	-- Dominant Gladiator's Plate Chestpiece [H]
						i(148637),	-- Dominant Gladiator's Plate Gauntlets [H]
						i(148645),	-- Dominant Gladiator's Plate Girdle [H]
						i(148639),	-- Dominant Gladiator's Plate Helm [H]
						i(148641),	-- Dominant Gladiator's Plate Legguards [H]
						i(148643),	-- Dominant Gladiator's Plate Shoulders [H]
						i(148635),	-- Dominant Gladiator's Plate Warboots [H]
						i(148647),	-- Dominant Gladiator's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(148563),	-- Dominant Gladiator's Band [H]
					i(148561),	-- Dominant Gladiator's Ring [H]
					i(148565),	-- Dominant Gladiator's Signet [H]
				}),
				filter(NECK_F, {
					i(148527),	-- Dominant Gladiator's Choker [H]
					i(148523),	-- Dominant Gladiator's Necklace [H]
					i(148525),	-- Dominant Gladiator's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(148601),	-- Dominant Gladiator's Accolade of Conquest [H]
					i(148607),	-- Dominant Gladiator's Accolade of Dominance [H]
					i(148613),	-- Dominant Gladiator's Accolade of Victory [H]
					i(148599),	-- Dominant Gladiator's Badge of Conquest [H]
					i(148605),	-- Dominant Gladiator's Badge of Dominance [H]
					i(148611),	-- Dominant Gladiator's Badge of Victory [H]
					i(148603),	-- Dominant Gladiator's Insignia of Conquest [H]
					i(148609),	-- Dominant Gladiator's Insignia of Dominance [H]
					i(148615),	-- Dominant Gladiator's Insignia of Victory [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_2, REMOVED_7_3_5 } }, {
				filter(RELICS_F, {
					i(154060),	-- Alliance of Convenience
					i(154079),	-- Battering Tempest
					i(154070),	-- Battle-Tempered Hilt
					i(154061),	-- Blaze of Glory
					i(154076),	-- Blindside Approach
					i(154068),	-- Brilliant Sunstone
					i(154073),	-- "Borrowed Soul" Essence
					i(154067),	-- Clarity of Conviction
					i(154066),	-- Cold Sweat
					i(154064),	-- Conscience of the Victorious
					i(154078),	-- Dead Man's Tale
					i(154053),	-- Exhaustive Research
					i(154058),	-- Fel-Loaded Dice
					i(154062),	-- Flame of the Fallen
					i(154055),	-- Grisly Souvenir
					i(154059),	-- Performance Enhancing Curio
					i(154075),	-- Petrified Ancient's Thumb
					i(154077),	-- Polished Shadowstone
					i(154069),	-- Radiance of Dawn
					i(154052),	-- Reactive Intuition
					i(154081),	-- Roar of the Crowd
					i(154072),	-- Steadfast Conviction
					i(154065),	-- Superiority's Contempt
					i(154054),	-- Taboo Knowledge
					i(154056),	-- Thirsty Bloodstone
					i(154057),	-- Thrill of Battle
					i(154080),	-- Thundering Impact
					i(154074),	-- Tombweed Bloom
					i(154063),	-- Torch of Competition
					i(154071),	-- Unflinching Grit
				}),
			})),
		}),
		n(PVP_ELITE, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_2 }, ["races"] = ALLIANCE_ONLY }, {
				n(119484, {	-- Captain Roberts <Legion Elite Gladiator>
					["coord"] = { 29.6, 74.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["sourceAchievements"] = { 12135 },	-- Dominant Elite
						["cost"] = { { "i", MOH, 50 } },
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						i(147778, {	-- Enchanter's Illusion - Demonic Tyranny (ILLUSION!)
							["sourceAchievements"] = { 12167 },	-- Gladiator: Legion Season 6
							["cost"] = { { "i", MOH, 12 } },
						}),
						i(149449),	-- Dominant Gladiator's Cloak [A]
						i(149447),	-- Dominant Gladiator's Tabard [A]
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_2, REMOVED_7_3_5 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(148648),	-- Dominant Gladiator's Dreadcloak [A]
						i(148672),	-- Dominant Gladiator's Dreadplate Chestpiece [A]
						i(148676),	-- Dominant Gladiator's Dreadplate Gauntlets [A]
						i(148684),	-- Dominant Gladiator's Dreadplate Girdle [A]
						i(148678),	-- Dominant Gladiator's Dreadplate Helm [A]
						i(148680),	-- Dominant Gladiator's Dreadplate Legguards [A]
						i(148674),	-- Dominant Gladiator's Dreadplate Sabatons [A]
						i(148682),	-- Dominant Gladiator's Dreadplate Shoulders [A]
						i(148686),	-- Dominant Gladiator's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(148650),	-- Dominant Gladiator's Demonthread Cloak [A]
						i(148700),	-- Dominant Gladiator's Felskin Belt [A]
						i(148690),	-- Dominant Gladiator's Felskin Boots [A]
						i(148692),	-- Dominant Gladiator's Felskin Gloves [A]
						i(148694),	-- Dominant Gladiator's Felskin Helm [A]
						i(148696),	-- Dominant Gladiator's Felskin Legguards [A]
						i(148698),	-- Dominant Gladiator's Felskin Spaulders [A]
						i(148688),	-- Dominant Gladiator's Felskin Tunic [A]
						i(148702),	-- Dominant Gladiator's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(148716),	-- Dominant Gladiator's Dragonhide Belt [A]
						i(148652),	-- Dominant Gladiator's Dragonhide Cloak [A]
						i(148708),	-- Dominant Gladiator's Dragonhide Gloves [A]
						i(148710),	-- Dominant Gladiator's Dragonhide Helm [A]
						i(148712),	-- Dominant Gladiator's Dragonhide Legguards [A]
						i(148706),	-- Dominant Gladiator's Dragonhide Moccasins [A]
						i(148714),	-- Dominant Gladiator's Dragonhide Spaulders [A]
						i(148704),	-- Dominant Gladiator's Dragonhide Vest [A]
						i(148718),	-- Dominant Gladiator's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(148654),	-- Dominant Gladiator's Drape of the Tracker [A]
						i(148734),	-- Dominant Gladiator's Chain Armband [A]
						i(148720),	-- Dominant Gladiator's Chain Armor [A]
						i(148732),	-- Dominant Gladiator's Chain Clasp [A]
						i(148724),	-- Dominant Gladiator's Chain Gauntlets [A]
						i(148726),	-- Dominant Gladiator's Chain Helm [A]
						i(148728),	-- Dominant Gladiator's Chain Leggings [A]
						i(148730),	-- Dominant Gladiator's Chain Spaulders [A]
						i(148722),	-- Dominant Gladiator's Chain Treads [A]
					}),
					cl(MAGE, {
						i(148746),	-- Dominant Gladiator's Silk Amice [A]
						i(148750),	-- Dominant Gladiator's Silk Bracers [A]
						i(148748),	-- Dominant Gladiator's Silk Cord [A]
						i(148740),	-- Dominant Gladiator's Silk Cowl [A]
						i(148738),	-- Dominant Gladiator's Silk Handguards [A]
						i(148736),	-- Dominant Gladiator's Silk Treads [A]
						i(148742),	-- Dominant Gladiator's Silk Trousers [A]
						i(148744),	-- Dominant Gladiator's Silk Tunic [A]
						i(148656),	-- Dominant Gladiator's Silken Shawl [A]
					}),
					cl(MONK, {
						i(148764),	-- Dominant Gladiator's Ironskin Belt [A]
						i(148658),	-- Dominant Gladiator's Ironskin Cloak [A]
						i(148754),	-- Dominant Gladiator's Ironskin Gloves [A]
						i(148756),	-- Dominant Gladiator's Ironskin Helm [A]
						i(148758),	-- Dominant Gladiator's Ironskin Legguards [A]
						i(148752),	-- Dominant Gladiator's Ironskin Slippers [A]
						i(148760),	-- Dominant Gladiator's Ironskin Spaulders [A]
						i(148762),	-- Dominant Gladiator's Ironskin Tunic [A]
						i(148766),	-- Dominant Gladiator's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(148660),	-- Dominant Gladiator's Greatcloak of Faith [A]
						i(148774),	-- Dominant Gladiator's Scaled Breastplate [A]
						i(148778),	-- Dominant Gladiator's Scaled Gauntlets [A]
						i(148786),	-- Dominant Gladiator's Scaled Girdle [A]
						i(148780),	-- Dominant Gladiator's Scaled Helm [A]
						i(148782),	-- Dominant Gladiator's Scaled Legguards [A]
						i(148776),	-- Dominant Gladiator's Scaled Sabatons [A]
						i(148784),	-- Dominant Gladiator's Scaled Shoulders [A]
						i(148788),	-- Dominant Gladiator's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(148662),	-- Dominant Gladiator's Drape of Piety [A]
						i(148804),	-- Dominant Gladiator's Satin Bracers [A]
						i(148802),	-- Dominant Gladiator's Satin Cord [A]
						i(148792),	-- Dominant Gladiator's Satin Gloves [A]
						i(148794),	-- Dominant Gladiator's Satin Hood [A]
						i(148796),	-- Dominant Gladiator's Satin Leggings [A]
						i(148800),	-- Dominant Gladiator's Satin Mantle [A]
						i(148798),	-- Dominant Gladiator's Satin Robe [A]
						i(148790),	-- Dominant Gladiator's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(148824),	-- Dominant Gladiator's Leather Belt [A]
						i(148816),	-- Dominant Gladiator's Leather Gloves [A]
						i(148818),	-- Dominant Gladiator's Leather Helm [A]
						i(148820),	-- Dominant Gladiator's Leather Legguards [A]
						i(148814),	-- Dominant Gladiator's Leather Slippers [A]
						i(148822),	-- Dominant Gladiator's Leather Spaulders [A]
						i(148812),	-- Dominant Gladiator's Leather Tunic [A]
						i(148826),	-- Dominant Gladiator's Leather Wristguards [A]
						i(148664),	-- Dominant Gladiator's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(148842),	-- Dominant Gladiator's Ringmail Armband [A]
						i(148828),	-- Dominant Gladiator's Ringmail Armor [A]
						i(148830),	-- Dominant Gladiator's Ringmail Boots [A]
						i(148840),	-- Dominant Gladiator's Ringmail Clasp [A]
						i(148832),	-- Dominant Gladiator's Ringmail Gauntlets [A]
						i(148834),	-- Dominant Gladiator's Ringmail Helm [A]
						i(148836),	-- Dominant Gladiator's Ringmail Leggings [A]
						i(148838),	-- Dominant Gladiator's Ringmail Spaulders [A]
						i(148666),	-- Dominant Gladiator's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(148872),	-- Dominant Gladiator's Felweave Amice [A]
						i(148876),	-- Dominant Gladiator's Felweave Bracers [A]
						i(148668),	-- Dominant Gladiator's Felweave Cloak [A]
						i(148874),	-- Dominant Gladiator's Felweave Cord [A]
						i(148866),	-- Dominant Gladiator's Felweave Cowl [A]
						i(148864),	-- Dominant Gladiator's Felweave Handguards [A]
						i(148870),	-- Dominant Gladiator's Felweave Raiment [A]
						i(148862),	-- Dominant Gladiator's Felweave Treads [A]
						i(148868),	-- Dominant Gladiator's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(148670),	-- Dominant Gladiator's Cloak of Battle [A]
						i(148878),	-- Dominant Gladiator's Plate Chestpiece [A]
						i(148882),	-- Dominant Gladiator's Plate Gauntlets [A]
						i(148890),	-- Dominant Gladiator's Plate Girdle [A]
						i(148884),	-- Dominant Gladiator's Plate Helm [A]
						i(148886),	-- Dominant Gladiator's Plate Legguards [A]
						i(148888),	-- Dominant Gladiator's Plate Shoulders [A]
						i(148880),	-- Dominant Gladiator's Plate Warboots [A]
						i(148892),	-- Dominant Gladiator's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(148808),	-- Dominant Gladiator's Band [A]
					i(148806),	-- Dominant Gladiator's Ring [A]
					i(148810),	-- Dominant Gladiator's Signet [A]
				}),
				filter(NECK_F, {
					i(148772),	-- Dominant Gladiator's Choker [A]
					i(148768),	-- Dominant Gladiator's Necklace [A]
					i(148770),	-- Dominant Gladiator's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(148846),	-- Dominant Gladiator's Accolade of Conquest [A]
					i(148852),	-- Dominant Gladiator's Accolade of Dominance [A]
					i(148858),	-- Dominant Gladiator's Accolade of Victory [A]
					i(148844),	-- Dominant Gladiator's Badge of Conquest [A]
					i(148850),	-- Dominant Gladiator's Badge of Dominance [A]
					i(148856),	-- Dominant Gladiator's Badge of Victory [A]
					i(148848),	-- Dominant Gladiator's Insignia of Conquest [A]
					i(148854),	-- Dominant Gladiator's Insignia of Dominance [A]
					i(148860),	-- Dominant Gladiator's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_2 }, ["races"] = HORDE_ONLY }, {
				n(119272, {	-- Sarah the Savage <Legion Elite Gladiator>
					["coord"] = { 57.0, 27.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["sourceAchievements"] = { 12135 },	-- Dominant Elite
						["cost"] = { { "i", MOH, 50 } },
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						i(147778, {	-- Enchanter's Illusion - Demonic Tyranny (ILLUSION!)
							["sourceAchievements"] = { 12167 },	-- Gladiator: Legion Season 6
							["cost"] = { { "i", MOH, 12 } },
						}),
						i(149448),	-- Dominant Gladiator's Cloak [H]
						i(149446),	-- Dominant Gladiator's Tabard [H]
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_2, REMOVED_7_3_5 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(148649),	-- Dominant Gladiator's Dreadcloak [H]
						i(148673),	-- Dominant Gladiator's Dreadplate Chestpiece [H]
						i(148677),	-- Dominant Gladiator's Dreadplate Gauntlets [H]
						i(148685),	-- Dominant Gladiator's Dreadplate Girdle [H]
						i(148679),	-- Dominant Gladiator's Dreadplate Helm [H]
						i(148681),	-- Dominant Gladiator's Dreadplate Legguards [H]
						i(148675),	-- Dominant Gladiator's Dreadplate Sabatons [H]
						i(148683),	-- Dominant Gladiator's Dreadplate Shoulders [H]
						i(148687),	-- Dominant Gladiator's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(148651),	-- Dominant Gladiator's Demonthread Cloak [H]
						i(148701),	-- Dominant Gladiator's Felskin Belt [H]
						i(148691),	-- Dominant Gladiator's Felskin Boots [H]
						i(148693),	-- Dominant Gladiator's Felskin Gloves [H]
						i(148695),	-- Dominant Gladiator's Felskin Helm [H]
						i(148697),	-- Dominant Gladiator's Felskin Legguards [H]
						i(148699),	-- Dominant Gladiator's Felskin Spaulders [H]
						i(148689),	-- Dominant Gladiator's Felskin Tunic [H]
						i(148703),	-- Dominant Gladiator's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(148717),	-- Dominant Gladiator's Dragonhide Belt [H]
						i(148653),	-- Dominant Gladiator's Dragonhide Cloak [H]
						i(148709),	-- Dominant Gladiator's Dragonhide Gloves [H]
						i(148711),	-- Dominant Gladiator's Dragonhide Helm [H]
						i(148713),	-- Dominant Gladiator's Dragonhide Legguards [H]
						i(148707),	-- Dominant Gladiator's Dragonhide Moccasins [H]
						i(148715),	-- Dominant Gladiator's Dragonhide Spaulders [H]
						i(148705),	-- Dominant Gladiator's Dragonhide Vest [H]
						i(148719),	-- Dominant Gladiator's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(148735),	-- Dominant Gladiator's Chain Armband [H]
						i(148721),	-- Dominant Gladiator's Chain Armor [H]
						i(148733),	-- Dominant Gladiator's Chain Clasp [H]
						i(148725),	-- Dominant Gladiator's Chain Gauntlets [H]
						i(148727),	-- Dominant Gladiator's Chain Helm [H]
						i(148729),	-- Dominant Gladiator's Chain Leggings [H]
						i(148731),	-- Dominant Gladiator's Chain Spaulders [H]
						i(148723),	-- Dominant Gladiator's Chain Treads [H]
						i(148655),	-- Dominant Gladiator's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(148747),	-- Dominant Gladiator's Silk Amice [H]
						i(148751),	-- Dominant Gladiator's Silk Bracers [H]
						i(148749),	-- Dominant Gladiator's Silk Cord [H]
						i(148741),	-- Dominant Gladiator's Silk Cowl [H]
						i(148739),	-- Dominant Gladiator's Silk Handguards [H]
						i(148737),	-- Dominant Gladiator's Silk Treads [H]
						i(148743),	-- Dominant Gladiator's Silk Trousers [H]
						i(148745),	-- Dominant Gladiator's Silk Tunic [H]
						i(148657),	-- Dominant Gladiator's Silken Shawl [H]
					}),
					cl(MONK, {
						i(148765),	-- Dominant Gladiator's Ironskin Belt [H]
						i(148659),	-- Dominant Gladiator's Ironskin Cloak [H]
						i(148755),	-- Dominant Gladiator's Ironskin Gloves [H]
						i(148757),	-- Dominant Gladiator's Ironskin Helm [H]
						i(148759),	-- Dominant Gladiator's Ironskin Legguards [H]
						i(148753),	-- Dominant Gladiator's Ironskin Slippers [H]
						i(148761),	-- Dominant Gladiator's Ironskin Spaulders [H]
						i(148763),	-- Dominant Gladiator's Ironskin Tunic [H]
						i(148767),	-- Dominant Gladiator's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(148661),	-- Dominant Gladiator's Greatcloak of Faith [H]
						i(148775),	-- Dominant Gladiator's Scaled Breastplate [H]
						i(148779),	-- Dominant Gladiator's Scaled Gauntlets [H]
						i(148787),	-- Dominant Gladiator's Scaled Girdle [H]
						i(148781),	-- Dominant Gladiator's Scaled Helm [H]
						i(148783),	-- Dominant Gladiator's Scaled Legguards [H]
						i(148777),	-- Dominant Gladiator's Scaled Sabatons [H]
						i(148785),	-- Dominant Gladiator's Scaled Shoulders [H]
						i(148789),	-- Dominant Gladiator's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(148663),	-- Dominant Gladiator's Drape of Piety [H]
						i(148805),	-- Dominant Gladiator's Satin Bracers [H]
						i(148803),	-- Dominant Gladiator's Satin Cord [H]
						i(148793),	-- Dominant Gladiator's Satin Gloves [H]
						i(148795),	-- Dominant Gladiator's Satin Hood [H]
						i(148797),	-- Dominant Gladiator's Satin Leggings [H]
						i(148801),	-- Dominant Gladiator's Satin Mantle [H]
						i(148799),	-- Dominant Gladiator's Satin Robe [H]
						i(148791),	-- Dominant Gladiator's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(148825),	-- Dominant Gladiator's Leather Belt [H]
						i(148817),	-- Dominant Gladiator's Leather Gloves [H]
						i(148819),	-- Dominant Gladiator's Leather Helm [H]
						i(148821),	-- Dominant Gladiator's Leather Legguards [H]
						i(148815),	-- Dominant Gladiator's Leather Slippers [H]
						i(148823),	-- Dominant Gladiator's Leather Spaulders [H]
						i(148813),	-- Dominant Gladiator's Leather Tunic [H]
						i(148827),	-- Dominant Gladiator's Leather Wristguards [H]
						i(148665),	-- Dominant Gladiator's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(148843),	-- Dominant Gladiator's Ringmail Armband [H]
						i(148829),	-- Dominant Gladiator's Ringmail Armor [H]
						i(148831),	-- Dominant Gladiator's Ringmail Boots [H]
						i(148841),	-- Dominant Gladiator's Ringmail Clasp [H]
						i(148833),	-- Dominant Gladiator's Ringmail Gauntlets [H]
						i(148835),	-- Dominant Gladiator's Ringmail Helm [H]
						i(148837),	-- Dominant Gladiator's Ringmail Leggings [H]
						i(148839),	-- Dominant Gladiator's Ringmail Spaulders [H]
						i(148667),	-- Dominant Gladiator's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(148873),	-- Dominant Gladiator's Felweave Amice [H]
						i(148877),	-- Dominant Gladiator's Felweave Bracers [H]
						i(148669),	-- Dominant Gladiator's Felweave Cloak [H]
						i(148875),	-- Dominant Gladiator's Felweave Cord [H]
						i(148867),	-- Dominant Gladiator's Felweave Cowl [H]
						i(148865),	-- Dominant Gladiator's Felweave Handguards [H]
						i(148871),	-- Dominant Gladiator's Felweave Raiment [H]
						i(148863),	-- Dominant Gladiator's Felweave Treads [H]
						i(148869),	-- Dominant Gladiator's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(148671),	-- Dominant Gladiator's Cloak of Battle [H]
						i(148879),	-- Dominant Gladiator's Plate Chestpiece [H]
						i(148883),	-- Dominant Gladiator's Plate Gauntlets [H]
						i(148891),	-- Dominant Gladiator's Plate Girdle [H]
						i(148885),	-- Dominant Gladiator's Plate Helm [H]
						i(148887),	-- Dominant Gladiator's Plate Legguards [H]
						i(148889),	-- Dominant Gladiator's Plate Shoulders [H]
						i(148881),	-- Dominant Gladiator's Plate Warboots [H]
						i(148893),	-- Dominant Gladiator's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(148809),	-- Dominant Gladiator's Band [H]
					i(148807),	-- Dominant Gladiator's Ring [H]
					i(148811),	-- Dominant Gladiator's Signet [H]
				}),
				filter(NECK_F, {
					i(148773),	-- Dominant Gladiator's Choker [H]
					i(148769),	-- Dominant Gladiator's Necklace [H]
					i(148771),	-- Dominant Gladiator's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(148847),	-- Dominant Gladiator's Accolade of Conquest [H]
					i(148853),	-- Dominant Gladiator's Accolade of Dominance [H]
					i(148859),	-- Dominant Gladiator's Accolade of Victory [H]
					i(148845),	-- Dominant Gladiator's Badge of Conquest [H]
					i(148851),	-- Dominant Gladiator's Badge of Dominance [H]
					i(148857),	-- Dominant Gladiator's Badge of Victory [H]
					i(148849),	-- Dominant Gladiator's Insignia of Conquest [H]
					i(148855),	-- Dominant Gladiator's Insignia of Dominance [H]
					i(148861),	-- Dominant Gladiator's Insignia of Victory [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_2, REMOVED_7_3_5 } }, {
				filter(RELICS_F, {
					i(155716),	-- "Borrowed Soul" Essence
					i(155703),	-- Alliance of Convenience
					i(155722),	-- Battering Tempest
					i(155713),	-- Battle-Tempered Hilt
					i(155704),	-- Blaze of Glory
					i(155719),	-- Blindside Approach
					i(155711),	-- Brilliant Sunstone
					i(155710),	-- Clarity of Conviction
					i(155709),	-- Cold Sweat
					i(155707),	-- Conscience of the Victorious
					i(155721),	-- Dead Man's Tale
					i(155696),	-- Exhaustive Research
					i(155701),	-- Fel-Loaded Dice
					i(155705),	-- Flame of the Fallen
					i(155698),	-- Grisly Souvenir
					i(155702),	-- Performance Enhancing Curio
					i(155718),	-- Petrified Ancient's Thumb
					i(155720),	-- Polished Shadowstone
					i(155712),	-- Radiance of Dawn
					i(155695),	-- Reactive Intuition
					i(155724),	-- Roar of the Crowd
					i(155715),	-- Steadfast Conviction
					i(155708),	-- Superiority's Contempt
					i(155697),	-- Taboo Knowledge
					i(155699),	-- Thirsty Bloodstone
					i(155700),	-- Thrill of Battle
					i(155723),	-- Thundering Impact
					i(155717),	-- Tombweed Bloom
					i(155706),	-- Torch of Competition
					i(155714),	-- Unflinching Grit
				}),
			})),
		}),
	})),
})));
