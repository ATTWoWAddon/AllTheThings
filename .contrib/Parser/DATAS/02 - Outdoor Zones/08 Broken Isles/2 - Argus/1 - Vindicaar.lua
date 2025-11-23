---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local VEILED_ARGUNITE = 1508;
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(THE_VINDICAAR_ANTORAN_WASTES_UPPER, {
				["icon"] = 1586383,
				["lore"] = "For untold millennia, the Army of the Light waged war against the Burning Legion throughout the Twisting Nether. The draenei most committed to their long crusade would undergo a ritual to become Lightforged, infusing their bodies with the very essence of the Holy Light. After finally achieving victory on Argus, the Lightforged draenei have undertaken a new mission: protecting Azeroth from rising threats and helping the Alliance push back against Horde aggression.",
				["maps"] = {
					THE_VINDICAAR_KROKUUN_UPPER,
					THE_VINDICAAR_KROKUUN_LOWER,
					THE_VINDICAAR_EREDATH_UPPER,
					THE_VINDICAAR_EREDATH_LOWER,
					-- THE_VINDICAAR_ANTORAN_WASTES_UPPER,
					THE_VINDICAAR_ANTORAN_WASTES_LOWER,
					-- Added LFD back 5th July 2022
					940,	-- Upper Deck [The Vindicaar: LFD]
					941,	-- Lower Deck [The Vindicaar: LFD]
				},
				["isRaid"] = true,
				["groups"] = {
					n(EMISSARY_QUESTS, {
						q(48642, {	-- Argussian Reach
							["provider"] = { "n", 127151 },	-- Toraan the Revered
							["isWorldQuest"] = true,
							["groups"] = {
								i(157831, {	-- Scuffed Krokul Cache
									["sym"] = {{"select","itemID",
										152740,	-- Unsullied Cloak
										152738,	-- Unsullied Cloth Cap
										152734,	-- Unsullied Cloth Mantle
										153135,	-- Unsullied Cloth Robes
										152742,	-- Unsullied Cloth Cuffs
										153141,	-- Unsullied Cloth Mitts
										153156,	-- Unsullied Cloth Sash
										153154,	-- Unsullied Cloth Leggings
										153144,	-- Unsullied Cloth Slippers
										153139,	-- Unsullied Leather Headgear
										153145,	-- Unsullied Leather Spaulders
										153151,	-- Unsullied Leather Tunic
										153142,	-- Unsullied Leather Armbands
										152739,	-- Unsullied Leather Grips
										153148,	-- Unsullied Leather Belt
										152737,	-- Unsullied Leather Trousers
										153136,	-- Unsullied Leather Treads
										153147,	-- Unsullied Mail Coif
										153137,	-- Unsullied Mail Spaulders
										152741,	-- Unsullied Mail Chestguard
										153158,	-- Unsullied Mail Bracers
										153149,	-- Unsullied Mail Gloves
										152744,	-- Unsullied Mail Girdle
										153138,	-- Unsullied Mail Legguards
										153152,	-- Unsullied Mail Boots
										153155,	-- Unsullied Plate Helmet
										153153,	-- Unsullied Plate Pauldrons
										153143,	-- Unsullied Plate Breasplate
										153150,	-- Unsullied Plate Vambraces
										153157,	-- Unsullied Plate Gauntlets
										153140,	-- Unsullied Plate Waistplate
										153146,	-- Unsullied Plate Greaves
										152743,	-- Unsullied Plate Sabatons
										152736,	-- Unsullied Necklace
										152735,	-- Unsullied Ring
										152733,	-- Unsullied Trinket
										152799,	-- Unsullied Relic
									}},
								}),
								i(152650, {	-- Scuffed Krokul Cache
									["u"] = REMOVED_FROM_GAME,
									["sym"] = {{"select","itemID",
										157831,	-- Scuffed Krokul Cache
									}},
								}),
								i(154911, {	-- Scuffed Krokul Cache
									["u"] = REMOVED_FROM_GAME,
									["sym"] = {{"select","itemID",
										157831,	-- Scuffed Krokul Cache
									}},
								}),
							},
						}),
						q(48639, {	-- Army of the Light
							["provider"] = { "n", 127120 },	-- Vindicator Jaelaana
							["isWorldQuest"] = true,
							["groups"] = {
								i(157829, {	-- Gilded Trunk
									["sym"] = {{"select","itemID",
										152740,	-- Unsullied Cloak
										152738,	-- Unsullied Cloth Cap
										152734,	-- Unsullied Cloth Mantle
										153135,	-- Unsullied Cloth Robes
										152742,	-- Unsullied Cloth Cuffs
										153141,	-- Unsullied Cloth Mitts
										153156,	-- Unsullied Cloth Sash
										153154,	-- Unsullied Cloth Leggings
										153144,	-- Unsullied Cloth Slippers
										153139,	-- Unsullied Leather Headgear
										153145,	-- Unsullied Leather Spaulders
										153151,	-- Unsullied Leather Tunic
										153142,	-- Unsullied Leather Armbands
										152739,	-- Unsullied Leather Grips
										153148,	-- Unsullied Leather Belt
										152737,	-- Unsullied Leather Trousers
										153136,	-- Unsullied Leather Treads
										153147,	-- Unsullied Mail Coif
										153137,	-- Unsullied Mail Spaulders
										152741,	-- Unsullied Mail Chestguard
										153158,	-- Unsullied Mail Bracers
										153149,	-- Unsullied Mail Gloves
										152744,	-- Unsullied Mail Girdle
										153138,	-- Unsullied Mail Legguards
										153152,	-- Unsullied Mail Boots
										153155,	-- Unsullied Plate Helmet
										153153,	-- Unsullied Plate Pauldrons
										153143,	-- Unsullied Plate Breasplate
										153150,	-- Unsullied Plate Vambraces
										153157,	-- Unsullied Plate Gauntlets
										153140,	-- Unsullied Plate Waistplate
										153146,	-- Unsullied Plate Greaves
										152743,	-- Unsullied Plate Sabatons
										152736,	-- Unsullied Necklace
										152735,	-- Unsullied Ring
										152733,	-- Unsullied Trinket
										152799,	-- Unsullied Relic
									}},
								}),
								i(154912, {	-- Gilded Trunk
									["u"] = REMOVED_FROM_GAME,
									["sym"] = {{"select","itemID",
										157829,	-- Gilded Trunk
									}},
								}),
								i(152652, {	-- Gilded Trunk
									["u"] = REMOVED_FROM_GAME,
									["sym"] = {{"select","itemID",
										157829,	-- Gilded Trunk
									}},
								}),
							},
						}),
						q(48976, bubbleDownSelf({ ["minReputation"] = { FACTION_ARGUSSIAN_REACH, EXALTED }}, {	-- Supplies From the Argussian Reach
							["provider"] = { "n", 127151 },	-- Toraan the Revered
							["repeatable"] = true,
							["groups"] = {
								i(152922, {	-- Brittle Krokul Chest
									i(153127),	-- Cube of Discovery
								}),
							},
						})),
						q(48977, bubbleDownSelf({ ["minReputation"] = { FACTION_ARMY_OF_THE_LIGHT, EXALTED }}, {	-- Supplies From the Army of the Light
							["provider"] = { "n", 127120 },	-- Vindicator Jaelaana
							["repeatable"] = true,
							["groups"] = {
								i(152923, {	-- Gleaming Footlocker
									i(153044),	-- Avenging Felcrusher (MOUNT!)
									i(153043),	-- Blessed Felcrusher (MOUNT!)
									i(153042),	-- Glorious Felcrusher (MOUNT!)
									i(153182),	-- Holy Lightsphere (TOY!)
								}),
							},
						})),
					}),
					n(FLIGHT_PATHS, {
						fp(1994, {	-- Vindicaar, Antoran Wastes
							["creatureID"] = 125514,	-- Navigation Console
							["coord"] = { 32.3, 56.4, THE_VINDICAAR_ANTORAN_WASTES_LOWER },
						}),
						fp(1944, {	-- Vindicaar, Krokuun
							["creatureID"] = 123139,	-- Navigation Console
							["coord"] = { 42.5, 22.8, THE_VINDICAAR_KROKUUN_UPPER },
						}),
						fp(1977, {	-- Vindicaar, Eredath
							["creatureID"] = 125461,	-- Navigation Console
							["coord"] = { 62.7, 49.1, THE_VINDICAAR_EREDATH_UPPER },
						}),
					}),
					n(QUESTS, {
						q(48075, {	-- A Colorful Key
							["sourceQuests"] = { 46941 },	-- The Path Forward
							["provider"] = { "n", 125343 },		-- Vorel
							["requireSkill"] = JEWELCRAFTING,
							["groups"] = {
								i(151736),	-- Design: Deadly Deep Chemirine (RECIPE!)
								i(151738),	-- Design: Masterful Argulite (RECIPE!)
								i(151737),	-- Design: Quick Lightsphene (RECIPE!)
								i(151739),	-- Design: Versatile Labradorite (RECIPE!)
								i(151876),	-- Vorel's Design Book (QI!)
							},
						}),
						q(48076, {	-- A Crowning Achievment
							["sourceQuests"] = { 48075 },	-- A Colorful Key
							["provider"] = { "n", 125343 },		-- Vorel
							["coord"] = { 44.45, 73.35, THE_VINDICAAR_KROKUUN_UPPER },
							["requireSkill"] = JEWELCRAFTING,
							["groups"] = {
								i(151724),	-- Design: Empyrial Cosmic Crown [Rank 1] (RECIPE!)
								i(151727),	-- Design: Empyrial Deep Crown [Rank 1] (RECIPE!)
								i(151730),	-- Design: Empyrial Elemental Crown [Rank 1] (RECIPE!)
								i(151733),	-- Design: Empyrial Titan Crown [Rank 1] (RECIPE!)
							},
						}),
						q(48081, {	-- A Floating Ruin
							["sourceQuests"] = { 47994 },	-- Forming a Bond
							["provider"] = { "n", 126307 },	-- Prophet Velen
							["coord"] = { 41.3, 24.9, THE_VINDICAAR_KROKUUN_UPPER },
						}),
						q(46938, {	-- Alone in the Abyss
							["sourceQuests"] = { 48440 },	-- Into the Night
							["provider"] = { "n", 126307 },	-- Prophet Velen
							["coord"] = { 41.1, 24.3, THE_VINDICAAR_KROKUUN_UPPER },
							["lvl"] = 110,
						}),
						q(48500, {	-- A Moment of Respite
							["sourceQuests"] = { 46843 },	-- Return to the Vindicaar
							["provider"] = { "n", 126307 },	-- Prophet Velen
							["coord"] = { 40.9, 24.7, THE_VINDICAAR_KROKUUN_UPPER },
						}),
						q(48559, {	-- An Offering of Light
							["sourceQuests"] = { 49143 },	-- Essence of the Light Mother
							["provider"] = { "n", 126307 },	-- Prophet Velen
							["coord"] = { 46.0, 36.7, THE_VINDICAAR_KROKUUN_UPPER },
							["groups"] = {
								i(152593),	-- Essence of Light (QI!)
							},
						}),
						q(48560, {	-- An Offering of Shadow
							["sourceQuests"] = { 47220 },	-- A Beacon in the Dark
							["qgs"] = {
								120533,	-- Prophet Velen
								128722,	-- Prophet Velen
							},
							["coords"] = {
								{ 40.7, 24.2, THE_VINDICAAR_KROKUUN_UPPER },
								{ 46.6, 23.1, THE_VINDICAAR_EREDATH_UPPER },
								{ 53.1, 48.8, THE_VINDICAAR_EREDATH_UPPER },
							},
							["groups"] = { i(152594) },	-- Essence of Shadow (QI!)
						}),
						q(49143, {	-- Essence of the Light Mother
							["sourceQuests"] = { 47743 },	-- The Child of Light and Shadow
							["provider"] = { "n", 126307 },	-- Prophet Velen
							["coord"] = { 45.9, 34.0, THE_VINDICAAR_KROKUUN_UPPER },
							["groups"] = {
								o(277348, {	-- Vestige of Light
									["coord"] = { 50.2, 46.2, THE_VINDICAAR_KROKUUN_UPPER },
									["groups"] = { i(153125) },	-- Vestige of Light (QI!)
								}),
							},
						}),
						q(47134, {	-- Foiling the Legion's Jailbreak
							["sourceQuests"] = { 47104 },	-- Imprisoned Inquisitor
							["provider"] = { "n", 121263 },	-- Grand Artificer Romuul
							["coord"] = { 43.2, 25.5, THE_VINDICAAR_KROKUUN_UPPER },
							["maps"] = {
								889,	-- Arcatraz
								890,	-- Arcatraz
							},
						}),
						q(47994, {	-- Forming a Bond
							["sourceQuests"] = { 47993 },	-- Lord of the Spire
							["provider"] = { "n", 121263 },	-- Grand Artificer Romuul
							["coord"] = { 43.2, 25.5, THE_VINDICAAR_KROKUUN_UPPER },
						}),
						q(48799, {	-- Fuel of a Doomed World
							["sourceQuests"] = {
								47473,	-- Sizing Up the Opposition (Light's Purchase)
								48929,	-- Sizing Up the Opposition (The Veiled Den)
							},
							["qgs"] = {
								124312,	-- High Exarch Turalyon @ Krokuun
								126954,	-- High Exarch Turalyon @ Antoran Wastes
							},
							["coords"] = {
								{ 59.1, 20.2, EREDATH },
								{ 33.5, 58.3, THE_VINDICAAR_ANTORAN_WASTES_UPPER },
								{ 33.5, 58.3, THE_VINDICAAR_ANTORAN_WASTES_LOWER },
								{ 45.8, 23.9, THE_VINDICAAR_EREDATH_UPPER },
								{ 39.4, 25.1, THE_VINDICAAR_KROKUUN_UPPER },
							},
							["isWeekly"] = true,
							["groups"] = { i(153014) },	-- Pristine Argunite (QI!)
						}),
						q(48636, {	-- Fueling the Antoran Campaign
							["sourceQuests"] = { 48912 },	-- Supplying the Antoran Campaign
							["qgs"] = {
								124312,	-- High Exarch Turalyon
								126954,	-- High Exarch Turalyon
							},
							["coords"] = {
								{ 39.8, 25.7, THE_VINDICAAR_KROKUUN_UPPER },
								{ 45.8, 24.9, THE_VINDICAAR_EREDATH_UPPER },
							},
							["cost"] = {{ "c", ORDER_RESOURCES, 900 }},	-- 900x Order Resources
							["repeatable"] = true,
							["groups"] = {
								i(152097, {	-- Lightforged Bulwark
									follower(1059, {	-- Lightforged Bulwark (Temporary Troop)
										["collectible"] = false,
										["u"] = UNLEARNABLE,
									}),
									follower(1060, {	-- Lightforged Bulwark (Temporary Troop)
										["collectible"] = false,
										["u"] = UNLEARNABLE,
									}),
								}),
							},
						}),
						q(47431, {	-- Gathering Light
							["sourceQuests"] = { 48500 },	-- A Moment of Respite
							["provider"] = { "n", 122378 },	-- High Exarch Turalyon
							["coord"] = { 42.9, 26.4, THE_VINDICAAR_KROKUUN_UPPER },
						}),
						q(49293, {	-- Invasion Onslaught
							["sourceQuests"] = { 48605 },	-- Commander's Downfall
							["qgs"] = {
								120978,	-- Illidan Stormrage
								126408,	-- Illidan Stormrage
								127051,	-- Illidan Stormrage
								127057,	-- Illidan Stormrage
							},
							["coords"] = {
								{ 40.1, 21.3, THE_VINDICAAR_KROKUUN_UPPER },
								{ 30.3, 60.1, THE_VINDICAAR_ANTORAN_WASTES_UPPER },
								{ 32.8, 59.4, THE_VINDICAAR_ANTORAN_WASTES_LOWER },
								{ 68.8, 26.1, ANTORAN_WASTES },
							},
							["isWeekly"] = true,
						}),
						q(48513, {	-- Invasion Point Offensive
							["sourceQuests"] = { 48440 },	-- Into the Night
							["qgs"] = {
								120978,	-- Illidan Stormrage
								126408,	-- Illidan Stormrage
								127057,	-- Illidan Stormrage
							},
							["coords"] = {
								{ 31.4, 59.1, THE_VINDICAAR_ANTORAN_WASTES_UPPER },
								{ 46.8, 20.5, THE_VINDICAAR_EREDATH_UPPER },
								{ 40.2, 21.4, THE_VINDICAAR_KROKUUN_UPPER },
							},
							-- might unlock differently/have different SQ(s) on main character vs alts.
						}),
						q(47182, {	-- Long Overdue
							["sourceQuests"] = { 47134 },	-- Foiling the Legion's Jailbreak
							["provider"] = { "n", 121263 },	-- Grand Artificer Romuul
							["coord"] = { 43.3, 23.2, THE_VINDICAAR_KROKUUN_UPPER },
							["lvl"] = 45,
							["groups"] = {
								i(147906),	-- Fel Heart of Argus (QI!)
							},
						}),
						q(46815, {	-- Eredath, Jewel of Argus
							["sourceQuests"] = { 48081 },	-- A Floating Ruin
							["provider"] = { "n", 128725 },	-- Prophet Velen
							["coords"] = { 47.4, 24.5, THE_VINDICAAR_EREDATH_UPPER },
						}),
						q(48201, {	-- Reinforce Light's Purchase
							["sourceQuests"] = { 48200 },	-- Securing a Foothold
							["altQuests"] = { 48202 },	-- Reinforce the Veiled Den — you get one of two quests depending on which camp is up at the time
							["provider"] = { "n", 126954 },	-- High Exarch Turalyon
							["coords"] = {
								{ 33.5, 57.8, THE_VINDICAAR_ANTORAN_WASTES_LOWER },
								{ 33.6, 58.3, THE_VINDICAAR_ANTORAN_WASTES_UPPER },
								{ 34.4, 57.2, THE_VINDICAAR_KROKUUN_UPPER },
								{ 72.9, 50.2, ANTORAN_WASTES },
							},
						}),
						q(48202, {	-- Reinforce the Veiled Den
							["sourceQuests"] = { 48200 },	-- Securing a Foothold
							["altQuests"] = { 48201 },	-- Reinforce Light's Purchase — you get one of two quests depending on which camp is up at the time
							["provider"] = { "n", 126954 },	-- High Exarch Turalyon
							["coords"] = {
								{ 33.7, 58.2, THE_VINDICAAR_ANTORAN_WASTES_UPPER },
								{ 34.4, 57.2, THE_VINDICAAR_KROKUUN_UPPER },
							},
						}),
						q(47654, {	-- Seat of the Triumvirate: The Crest of Knowledge
							["sourceQuests"] = { 47220 },	-- A Beacon in the Dark
							["provider"] = { "n", 128722 },	-- Prophet Velen
							["coord"] = { 53.1, 48.8, THE_VINDICAAR_EREDATH_UPPER },
							["groups"] = { i(151090) },	-- The Crest of Knowledge (QI!)
						}),
						q(48200, {	-- Securing a Foothold
							["sourceQuests"] = { 48199 },	-- The Burning Heart
							["provider"] = { "n", 126954 },	-- High Exarch Turalyon
							["coords"] = {
								{ 33.5, 57.9, THE_VINDICAAR_ANTORAN_WASTES_UPPER },
								{ 34.4, 57.2, THE_VINDICAAR_KROKUUN_UPPER },
							},
						}),
						q(47892, {	-- Storming the Citadel
							["sourceQuests"] = { 47891 },	-- Dire News
							["provider"] = { "n", 124312 },	-- High Exarch Turalyon
							["coord"] = { 40.1, 25.6, THE_VINDICAAR_KROKUUN_UPPER },
						}),
						q(48912, {	-- Supplying the Antoran Campaign
							["sourceQuests"] = { 48448 },	-- Hindering the Legion War Machine
							["qgs"] = {
								124312,	-- High Exarch Turalyon @ Eredath & Krokuun
								126954,	-- High Exarch Turalyon @ Antoran Wastes
							},
							["coords"] = {
								{ 33.5, 58.2, THE_VINDICAAR_ANTORAN_WASTES_LOWER },
								{ 45.9, 23.9, THE_VINDICAAR_EREDATH_UPPER },
								{ 39.2, 24.8, THE_VINDICAAR_KROKUUN_UPPER },
							},
							["cost"] = {{ "c", ORDER_RESOURCES, 150 }},	-- 150x Order Resources
							["isWeekly"] = true,
							["groups"] = {
								i(152097, {	-- Lightforged Bulwark
									follower(1059, {	-- Lightforged Bulwark (Temporary Troop)
										["collectible"] = false,
										["u"] = UNLEARNABLE,
									}),
									follower(1060, {	-- Lightforged Bulwark (Temporary Troop)
										["collectible"] = false,
										["u"] = UNLEARNABLE,
									}),
								}),
							},
						}),
						q(48199, {	-- The Burning Heart
							["sourceQuests"] = { 48559 },	-- An Offering of Light
							["provider"] = { "n", 126307 },	-- Prophet Velen
							["coord"] = { 40.1, 25.2, THE_VINDICAAR_KROKUUN_UPPER },
						}),
						q(49014, {	-- The Burning Throne
							["sourceQuests"] = { 48559 },	-- An Oferring of Light
							["provider"] = { "n", 124312 },	-- High Exarch Turalyon
							["coords"] = {
								{ 59.1, 20.2, EREDATH },
								{ 46.2, 23.5, THE_VINDICAAR_EREDATH_UPPER },
								{ 51.0, 23.4, THE_VINDICAAR_EREDATH_UPPER },
								{ 56.4, 61.4, THE_VINDICAAR_EREDATH_UPPER },
								{ 40.1, 25.2, THE_VINDICAAR_KROKUUN_UPPER },
							},
						}),
						q(48203, {	-- The Burning Throne
							["sourceQuests"] = { 47654 },	-- An Oferring of Light
							["provider"] = { "n", 124312 },	-- High Exarch Turalyon
							["coord"] = { 40.1, 25.2, THE_VINDICAAR_KROKUUN_UPPER },
						}),
						q(47743, {	-- The Child of Light and Shadow
							["sourceQuests"] = { 47653 },	-- Light's Return
							["provider"] = { "n", 122378 },	-- High Exarch Turalyon
							["coord"] = { 42.9, 26.5, THE_VINDICAAR_KROKUUN_UPPER },
						}),
						q(49224, {	-- The Netherlight Crucible
							["sourceQuests"] = { 48560 },	-- An Offering of Shadow
							["provider"] = { "n", 126389 },	-- Artificer Shela'na
							["coord"] = { 58.8, 69.4, THE_VINDICAAR_KROKUUN_LOWER },
							["u"] = REMOVED_FROM_GAME,	-- removed in BFA 8.0.1
						}),
						q(49445, {	-- The Prime Exchange
							["sourceQuests"] = { 48440 },	-- Into the Night
							["provider"] = { "n", 129674 },	-- Maras
							["coord"] = { 40.4, 64.7, THE_VINDICAAR_KROKUUN_LOWER },
						}),
						q(47238, {	-- The Seat of the Triumvirate
							["sourceQuests"] = { 47416 },	-- Shadow of the Triumvirate
							["provider"] = { "n", 128735 },	-- Prophet Velen
							["coord"] = { 57.8, 61.5, THE_VINDICAAR_EREDATH_UPPER },
						}),
						q(47889, {	-- The Speaker Calls
							["sourceQuests"] = {
								47473,	-- Sizing Up the Opposition (Light's Purchase)
								48929,	-- Sizing Up the Opposition (The Veiled Den)
							},
							["qgs"] = {
								124312,	-- High Exarch Turalyon
								126954,	-- High Exarch Turalyon
							},
							["coords"] = {
								{ 33.6, 58.0, THE_VINDICAAR_ANTORAN_WASTES_UPPER },
								{ 34.1, 57.1, THE_VINDICAAR_KROKUUN_UPPER },
							},
						}),
						q(48273, {	-- The Speaker Listens
							["sourceQuests"] = { 48560 },	-- An Offering of Shadow
							["provider"] = { "n", 124312 },	-- High Exarch Turalyon
							["coord"] = { 46.7, 25.0, THE_VINDICAAR_EREDATH_UPPER },
						}),
						q(48277, {	-- The Speaker Seeks
							["sourceQuests"] = { 48272 },	-- Visions of Fear
							["provider"] = { "n", 124312 },	-- High Exarch Turalyon
							["coords"] = {
								{ 33.5, 58.3, THE_VINDICAAR_ANTORAN_WASTES_UPPER },
								{ 45.9, 24.1, THE_VINDICAAR_EREDATH_UPPER },
								{ 39.1, 24.9, THE_VINDICAAR_KROKUUN_UPPER },
							},
						}),
						q(47287, {	-- The Vindicaar Matrix Core
							["sourceQuests"] = { 47743 },	-- Child of Light and Shadow
							["provider"] = { "n", 121263 },	-- Grand Artificer Romuul
							["coords"] = {
								{ 43.7, 29.2, THE_VINDICAAR_KROKUUN_UPPER },
								{ 49.4, 23.6, THE_VINDICAAR_EREDATH_UPPER },
							},
						}),
						q(48344, {	-- We Have a Problem
							["sourceQuests"] = { 48461 },	-- Where They Least Expect It
							["qgs"] = {
								124312,	-- High Exarch Turalyon
								126954,	-- High Exarch Turalyon
							},
							["coords"] = {
								{ 33.4, 57.6, THE_VINDICAAR_ANTORAN_WASTES_UPPER },
								{ 50.9, 23.1, THE_VINDICAAR_EREDATH_UPPER },
								{ 44.9, 24.0, THE_VINDICAAR_KROKUUN_UPPER },
							},
						}),
						q(48461, {	-- Where They Least Expect It
							["sourceQuests"] = { 48107 },	-- The Sigil of Awakening
							["provider"] = { "n", 126408 },	-- Illidan Stormrage
							["coords"] = {
								{ 46.7, 21.0, THE_VINDICAAR_EREDATH_UPPER },
								{ 47.0, 21.7, THE_VINDICAAR_KROKUUN_UPPER },
							},
						}),
						q(40761, {	-- Whispers from Oronaar
							["sourceQuests"] = { 47238 },	-- The Seat of the Triumvirate
							["provider"] = { "n", 121230 },	-- Alleria Windrunner
							["coord"] = { 58.2, 61.1, THE_VINDICAAR_EREDATH_UPPER },
						}),
					}),
					n(VENDORS, {
						n(129674, {	-- Maras <Primal Sargerite Trader>
							["coords"] = {
								{ 57.0, 66.0, THE_VINDICAAR_ANTORAN_WASTES_LOWER },
								{ 42.0, 58.6, THE_VINDICAAR_EREDATH_LOWER },
								{ 40.6, 65.6, THE_VINDICAAR_KROKUUN_LOWER },
							},
							["groups"] = appendAllGroups(
								sharedData({
									["cost"] = {{"i",151568,1}},	-- Primal Sargerite
								},{
									i(151565),	-- Astral Glory
									i(151564),	-- Empyrium
									i(151566),	-- Fiendish Leather
									i(151567),	-- Lightweave Cloth
								}),
								sharedData({
									["cost"] = {{"i",151568,10}},	-- Primal Sargerite
								},{
									i(151718),	-- Argulite
									i(151720),	-- Chemirine
									i(151722),	-- Florid Malachite
									i(151721),	-- Hesselian
									i(151579),	-- Labradorite
									i(151719),	-- Lightsphene
								})),
						}),
						n(127120, {	-- Vindicator Jaelaana <Army of the Light Emissary>
							["coords"] = {
								{ 44.8, 75.0, THE_VINDICAAR_KROKUUN_UPPER },
								{ 44.6, 67.0, THE_VINDICAAR_EREDATH_UPPER },
								{ 63.0, 63.6, THE_VINDICAAR_ANTORAN_WASTES_UPPER },
							},
							["groups"] = bubbleDownClassicRep(FACTION_ARMY_OF_THE_LIGHT, {
								{		-- Neutral
								}, {	-- Friendly
									i(152726),	-- Design: Mass Prospect Empyrium (RECIPE!)
									i(153032),	-- Technique: Glyph of the Lightspawn (RECIPE!)
								}, {	-- Honored
									i(152400),	-- Embroidered Lightforged Drape
								}, {	-- Revered
									i(153247),	-- Boon of the Lightbearer
									i(151725),	-- Design: Empyrial Cosmic Crown [Rank 2] (RECIPE!)
									i(151728),	-- Design: Empyrial Deep Crown [Rank 2] (RECIPE!)
									i(151731),	-- Design: Empyrial Elemental Crown [Rank 2] (RECIPE!)
									i(151734),	-- Design: Empyrial Titan Crown [Rank 2] (RECIPE!)
									i(151712),	-- Plans: Empyrial Breastplate [Rank 2] (RECIPE!)
									i(151741),	-- Pattern: Fiendish Shoulderguards [Rank 2] (RECIPE!)
									i(151744),	-- Pattern: Fiendish Spaulders [Rank 2] (RECIPE!)
									i(151747),	-- Pattern: Lightweave Breeches [Rank 2] (RECIPE!)
								}, {	-- Exalted
									i(152399),	-- Army of the Light Tabard
									i(153023),	-- Lightforged Augment Rune
									i(152788),	-- Lightforged Warframe (MOUNT!)
								},
							}),
						}),
						n(127151, {	-- Toraan the Revered <Argussian Reach Emissary>
							["coords"] = {
								{ 67.6, 55.8, THE_VINDICAAR_KROKUUN_UPPER },
								{ 66.2, 57.8, THE_VINDICAAR_EREDATH_UPPER },
								{ 56.6, 30.2, THE_VINDICAAR_ANTORAN_WASTES_UPPER },
							},
							["groups"] = bubbleDownClassicRep(FACTION_ARGUSSIAN_REACH, {
								{		-- Neutral
								}, {	-- Friendly
									i(152658),	-- Formula: Chaos Shatter (RECIPE!)
									i(152725),	-- Technique: Mass Mill Astral Glory (RECIPE!)
								}, {	-- Honored
									i(153039),	-- Crystalline Campfire (TOY!)
									i(153290),	-- Krokul Mining Pick
									i(153027),	-- Orphaned Marsuul (PET!)
								}, {	-- Revered
									i(153197),	-- Boon of the Steadfast
									i(152964),	-- Krokul Flute (CI!)
									i(151707),	-- Recipe: Astral Alchemist Stone [Rank 2] (RECIPE!)
								}, {	-- Exalted
									i(152669),	-- Argussian Reach Tabard
									i(151708),	-- Recipe: Astral Alchemist Stone [Rank 3] (RECIPE!)
									i(152618),	-- Recipe: Astral Healing Potion [Rank 3] (RECIPE!)
									i(152794),	-- Amethyst Ruinstrider (MOUNT!)
									i(152795),	-- Beryl Ruinstrider (MOUNT!)
									i(152797),	-- Cerulean Ruinstrider (MOUNT!)
									i(152793),	-- Russet Ruinstrider (MOUNT!)
									i(152791),	-- Sable Ruinstrider (MOUNT!)
									i(152796),	-- Umber Ruinstrider (MOUNT!)
								},
							}),
						}),
						n(121589, {	-- Thaumaturge Vashreen <Purveyor of Exquisite Furnishings>
							["coords"] = {
								{ 46.4, 71.8, THE_VINDICAAR_KROKUUN_UPPER },
								{ 46.1, 65.9, THE_VINDICAAR_EREDATH_UPPER },
								{ 61.6, 59.1, THE_VINDICAAR_ANTORAN_WASTES_UPPER },
							},
							["groups"] = sharedData({ ["cost"] = { { "c", VEILED_ARGUNITE, 650 } } }, {
								i(153211, {	-- Relinquished Hood
									["sym"] = {
										{"sub", "legion_relinquished", {"INVTYPE_HEAD"}, 2, 4, 5, 6, 7 },	-- Cosmetic, Cloth, Leather, Mail, Plate Armor Only!
									},
								}),
								i(153213, {	-- Relinquished Necklace
									["sym"] = {
										{"sub", "legion_relinquished", {"INVTYPE_NECK"} },	-- Necks Only!
									},
								}),
								i(153215, {	-- Relinquished Spaulders
									["sym"] = {
										{"sub", "legion_relinquished", {"INVTYPE_SHOULDER"}, 2, 4, 5, 6, 7 },	-- Cosmetic, Cloth, Leather, Mail, Plate Armor Only!
									},
								}),
								i(153209, {	-- Relinquished Cloak
									["sym"] = {
										{"sub", "legion_relinquished", {"INVTYPE_CLOAK"}, 3 },	-- Cloak Only!
									},
									["groups"] = sharedData({["modID"] = 43},{	-- Relinquished modID
										i(152778),	-- Conservatory Ward's Drape (Confirmed in Errors 18 Jan 2022)
										i(146793),	-- Man'ari Magus Drape (reported in #errors on 20201113)
										i(146794),	-- Sargerei Herald's Cloak (reported in #errors on November 21, 2020)
										i(146795),	-- Terrorfiend Greatcloak (reported in #errors on March 3, 2021)
									}),
								}),
								i(153208, {	-- Relinquished Chestguard
									["sym"] = {
										{"sub", "legion_relinquished", {"INVTYPE_CHEST","INVTYPE_ROBE"}, 2, 4, 5, 6, 7 },	-- Cosmetic, Cloth, Leather, Mail, Plate Armor Only!
									},
								}),
								i(153206, {	-- Relinquished Bracers
									["sym"] = {
										{"sub", "legion_relinquished", {"INVTYPE_WRIST"}, 2, 4, 5, 6, 7 },	-- Cosmetic, Cloth, Leather, Mail, Plate Armor Only!
									},
								}),
								i(153210, {	-- Relinquished Gauntlets
									["sym"] = {
										{"sub", "legion_relinquished", {"INVTYPE_HAND"}, 2, 4, 5, 6, 7 },	-- Cosmetic, Cloth, Leather, Mail, Plate Armor Only!
									},
								}),
								i(153205, {	-- Relinquished Girdle
									["sym"] = {
										{"sub", "legion_relinquished", {"INVTYPE_WAIST"}, 2, 4, 5, 6, 7 },	-- Cosmetic, Cloth, Leather, Mail, Plate Armor Only!
									},
								}),
								i(153212, {	-- Relinquished Leggings
									["sym"] = {
										{"sub", "legion_relinquished", {"INVTYPE_LEGS"}, 2, 4, 5, 6, 7 },	-- Cosmetic, Cloth, Leather, Mail, Plate Armor Only!
									},
								}),
								i(153207, {	-- Relinquished Treads
									["sym"] = {
										{"sub", "legion_relinquished", {"INVTYPE_FEET"}, 2, 4, 5, 6, 7 },	-- Cosmetic, Cloth, Leather, Mail, Plate Armor Only!
									},
								}),
								i(153214, {	-- Relinquished Ring
									["sym"] = {
										{"sub", "legion_relinquished", {"INVTYPE_FINGER"} },	-- Rings Only!
										{"select", "mapID", BROKEN_ISLES},
										{"find", "headerID", FINGER},	-- Select only the Finger Headers
										{"pop"},	-- Discard the item set Headers and acquire all of their children.
									},
								}),
								i(153216, {	-- Relinquished Trinket
									["sym"] = {
										{"sub", "legion_relinquished", {"INVTYPE_TRINKET"} },	-- Trinkets Only!
									},
									["groups"] = {
										-- This is the only source of these items
										i(136736),	-- Badge of the Wardens
										i(134322),	-- Drained Mana Crystal
										i(136749),	-- Mark of the Sentinel
									},
								}),
								i(153059, {	-- Relinquished Arcane Relic
									["sym"] = {
										{"sub", "legion_relinquished_relic", "ARCANE" },	-- Arcane Relics Only!
									},
								}),
								i(153060, {	-- Relinquished Blood Relic
									["sym"] = {
										{"sub", "legion_relinquished_relic", "BLOOD" },	-- Blood Relics Only!
									},
								}),
								i(153061, {	-- Relinquished Fel Relic
									["sym"] = {
										{"sub", "legion_relinquished_relic", "FEL" },	-- Fel Relics Only!
									},
									["groups"] = {
										-- This is the only source of this item
										i(153454),	-- Alliance of Convenience
									},
								}),
								i(153062, {	-- Relinquished Fire Relic
									["sym"] = {
										{"sub", "legion_relinquished_relic", "FIRE" },	-- Fire Relics Only!
									},
								}),
								i(153063, {	-- Relinquished Frost Relic
									["sym"] = {
										{"sub", "legion_relinquished_relic", "FROST" },	-- Frost Relics Only!
									},
								}),
								i(153064, {	-- Relinquished Holy Relic
									["sym"] = {
										{"sub", "legion_relinquished_relic", "HOLY" },	-- Holy Relics Only!
									},
								}),
								i(153065, {	-- Relinquished Iron Relic
									["sym"] = {
										{"sub", "legion_relinquished_relic", "IRON" },	-- Iron Relics Only!
									},
								}),
								i(153066, {	-- Relinquished Life Relic
									["sym"] = {
										{"sub", "legion_relinquished_relic", "LIFE" },	-- Life Relics Only!
									},
								}),
								i(153067, {	-- Relinquished Shadow Relic
									["sym"] = {
										{"sub", "legion_relinquished_relic", "SHADOW" },	-- Shadow Relics Only!
									},
								}),
								i(153068, {	-- Relinquished Storm Relic
									["sym"] = {
										{"sub", "legion_relinquished_relic", "WIND" },	-- Storm Relics Only!
									},
								}),
							}),
						}),
					}),
				},
			}),
		})),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {
	m(BROKEN_ISLES, {
		m(ARGUS, {
			m(THE_VINDICAAR_ANTORAN_WASTES_UPPER, {
				n(FACTIONS, {
					n(EMISSARY_QUESTS, {
						q(48973),	-- Paragon of Argussian Reach
						q(48974),	-- Paragon of the Army of the Light
					}),
				}),
				n(QUESTS, {
					q(47888),	-- Triggers when turning in "Alone in the Abyss" (questID 46938)
					q(47869),	-- Triggers when turning in "Light's Exodus" (questID 47223)
					q(49161),	-- Triggers when turning in "Where They Least Expect It" (questID 48461)
					------ Stay awhile and listen ------
					hqt(49164),	-- Silgryn and Liadrin
				}),
				q(49383),	-- Changing specialization: Arms/Balance/Elemental/...
				q(49384),	-- Changing specialization: Fury/Feral/Enhance/...
				q(49385),	-- Changing specialization: Prot(War)/Guardian/Resto(Sham)/...
				q(49386),	-- Changing specialization: Restoration(Druid)
				-- Vindicaar Matrix Abilities
				q(48449),	-- Shroud of Arcane Echoes/Warframe
				q(48450),	-- Shroud of Arcane Echoes/Fel Heart
				q(48451),	-- Shroud of Arcane Echoes/Light's Judgement/Fel Heart
			}),
		}),
	}),
})));
