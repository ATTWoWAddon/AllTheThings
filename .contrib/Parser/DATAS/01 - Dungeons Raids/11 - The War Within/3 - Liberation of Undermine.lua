-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
------ Encounter Constants ------
local VEXIE = 2639;
local CARNAGE = 2640;
local RIK = 2641;
local STIX = 2642;
local LOCKENSTOCK = 2653;
local BANDIT = 2644;
local MUGZEE = 2645;
local GALLYWIX = 2646;

------ EncounterToCRS ------
local EncounterToCRS = {
	[VEXIE] = {
		225822,	-- Vexie Fullthrottle
		225821,	-- The Geargrinder <Vexie's War Tank>
	},
	[CARNAGE] = {
		229181,	-- Flarendo <The Furious>
		229177,	-- Torq <The Tempest>
	},
	[RIK] = { 228648, 228652 },	-- Rik Reverb <Official Gallywix Hype Man>
	[STIX] = { 230322 },	-- Stix Bunkjunker
	[LOCKENSTOCK] = { 230583 },	-- Sprocketmonger Lockenstock
	[BANDIT] = { 228458 },	-- One-Armed Bandit
	[MUGZEE] = { 229953 },	-- Mug'Zee <Heads of Security>
	[GALLYWIX] = { 237194, 231075 },	-- Chrome King Gallywix
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[VEXIE] = {
		i(231268),	-- Blastfurious Machete
		i(228852),	-- Blazer of Glory
		i(228876),	-- Dragster's Last Stride
		i(228858),	-- Fullthrottle Facerig
		i(230197),	-- Geargrinder's Spare Keys
		i(228892),	-- Greasemonkey's Shift-Stick
		i(228865),	-- Pit Doctor's Petticoat
		i(228868),	-- Revved-Up Vambraces
		i(228862),	-- Shrapnel-Ridden Sabatons
		i(228861),	-- Tune-Up Toolbelt
		i(228839),	-- Undercircuit Racing Flag
		i(228875),	-- Vandal's Skullplating
		i(230019),	-- Vexie's Pit Whistle
	};
	[CARNAGE] = {
		i(228803, {	-- Dreadful Bloody Gallybux
			i(229254),	-- Cauldron Champion's Fistguards
			i(229317),	-- Fel-Dealer's Underhandlers
			i(229326),	-- Spliced Fiendtrader's Demonic Grasp
		}),
		i(228804, {	-- Mystic Bloody Gallybux
			i(229344),	-- Aspectral Emissary's Hardened Grasp
			i(229308),	-- Grips of Reclaiming Blight
			i(229272),	-- Tireless Collector's Gauntlets
		}),
		i(228805, {	-- Venerated Bloody Gallybux
			i(229245),	-- Aureate Sentry's Gauntlets
			i(229335),	-- Confessor's Unshakable Mitts
			i(229263),	-- Gale Sovereign's Grasps
		}),
		i(228806, {	-- Zenith Bloody Gallybux
			i(229299),	-- Ageless Serpent's Handguards
			i(229236),	-- Enforcer's Backalley Crushers
			i(229281),	-- Opulent Treasurescale's Gold-Counters
			i(229290),	-- Spectral Gambler's Gloves
		}),
		i(228856),	-- Competitor's Battle Cord
		i(228904),	-- Crowd Favorite
		i(228840),	-- Faded Championship Ring
		i(230191),	-- Flarendo's Pilot Light
		i(228846),	-- Galvanic Graffiti Cuffs
		i(228873),	-- Heaviestweight Title Belt
		i(228847),	-- Hotstep Heel-Turners
		i(228890),	-- Superfan's Beater-Buzzer
		i(230190),	-- Torq's Big Red Button
		i(228900),	-- Tournament Arc
	};
	[RIK] = {
		i(228815, {	-- Dreadful Polished Gallybux
			i(229251),	-- Cauldron Champion's Screamplate
			i(229314),	-- Fel-Dealer's Recycled Reavers
			i(229323),	-- Spliced Fiendtrader's Loyal Servants
		}),
		i(228816, {	-- Mystic Polished Gallybux
			i(229341),	-- Aspectral Emissary's Arcane Vents
			i(229305),	-- Jaws of Reclaiming Blight
			i(229269),	-- Tireless Collector's Hunted Heads
		}),
		i(228817, {	-- Venerated Polished Gallybux
			i(229242),	-- Aureate Sentry's Roaring Will
			i(229332),	-- Confessor's Unshakable Radiance
			i(229260),	-- Gale Sovereign's Zephyrs
		}),
		i(228818, {	-- Zenith Polished Gallybux
			i(229296),	-- Ageless Serpent's Shoulderpads
			i(229233),	-- Enforcer's Backalley Shoulderplates
			i(229278),	-- Opulent Treasurescale's Gleaming Mantle
			i(229287),	-- Spectral Gambler's Bladed Mantle
		}),
		i(231311),	-- Frontman's Wondrous Wall
		i(228869),	-- Killer Queen's Wristflickers
		i(228897),	-- Pyrotechnic Needle-Dropper
		i(228895),	-- Remixed Ignition Saber
		i(230194),	-- Reverb Radio
		i(228874),	-- Rik's Walkin' Boots
		i(228845),	-- Sash of the Fierce Diva
		i(228841),	-- Semi-Charmed Amulet
		i(228857),	-- Underparty Admission Bracelet
	};
	[STIX] = {
		i(228811, {	-- Dreadful Rusty Gallybux
			i(229252),	-- Cauldron Champion's Tattered Cuisses
			i(229315),	-- Fel-Dealer's Fur Kilt
			i(229324),	-- Spliced Fiendtrader's Skin Tights
		}),
		i(228812, {	-- Mystic Rusty Gallybux
			i(229342),	-- Aspectral Emissary's Trousers
			i(229306),	-- Moccasins of Reclaiming Blight
			i(229270),	-- Tireless Collector's Armored Breeches
		}),
		i(228813, {	-- Venerated Rusty Gallybux
			i(229243),	-- Aureate Sentry's Legguards
			i(229333),	-- Confessor's Unshakable Leggings
			i(229261),	-- Gale Sovereign's Pantaloons
		}),
		i(228814, {	-- Zenith Rusty Gallybux
			i(229297),	-- Ageless Serpent's Leggings
			i(229234),	-- Enforcer's Backalley Chausses
			i(229279),	-- Opulent Treasurescale's Petticoat
			i(229288),	-- Spectral Gambler's Pantaloons
		}),
		i(228854),	-- Bilgerat's Discarded Slacks
		i(228871),	-- Cleanup Crew's Wastemask
		i(228849),	-- Dumpmech Compactors
		i(228903),	-- Dumpster Diver
		i(230189),	-- Junkmaestro's Mega Magnet
		i(228859),	-- Sanitized Scraphood
		i(230026),	-- Scrapfield 9001
		i(228896),	-- Stix's Metal Detector
	};
	[LOCKENSTOCK] = {
		i(228799, {	-- Dreadful Greased Gallybux
			i(229256),	-- Cauldron Champion's Ribcage
			i(229319),	-- Fel-Dealer's Soul Engine
			i(229328),	-- Spliced Fiendtrader's Surgical Gown
		}),
		i(228800, {	-- Mystic Greased Gallybux
			i(229346),	-- Aspectral Emissary's Primal Robes
			i(229310),	-- Robes of Reclaiming Blight
			i(229274),	-- Tireless Collector's Battlegear
		}),
		i(228801, {	-- Venerated Greased Gallybux
			i(229247),	-- Aureate Sentry's Encasement
			i(229337),	-- Confessor's Unshakable Vestment
			i(229265),	-- Gale Sovereign's Clouded Hauberk
		}),
		i(228802, {	-- Zenith Greased Gallybux
			i(229301),	-- Ageless Serpent's Inked Coils
			i(229238),	-- Enforcer's Backalley Vestplate
			i(229283),	-- Opulent Treasurescale's Tunic
			i(229292),	-- Spectral Gambler's Vest
		}),
		i(228898),	-- Alphacoil Ba-Boom Stick
		i(228894),	-- GIGADEATH Chainblade
		i(228867),	-- Gravi-Gunk Handlers
		i(230193),	-- Mister Lock-N-Stalk
		i(230186),	-- Mister Pick-Me-Up
		i(228882),	-- Refiner's Conveyor Belt
		i(228888),	-- Rushed Beta Launchers
		i(228844, {up=IGNORED_VALUE}),	-- Test Pilot's Go-Pack [drops pre-upgraded with lower appearance]
		i(228884),	-- Test Subject's Clasps
	};
	[BANDIT] = {
		i(228807, {	-- Dreadful Gilded Gallybux
			i(229253),	-- Cauldron Champion's Crown
			i(229316),	-- Fel-Dealer's Visor
			i(229325),	-- Spliced Fiendtrader's Transcendence
		}),
		i(228808, {	-- Mystic Gilded Gallybux
			i(229343),	-- Aspectral Emissary's Crystalline Cowl
			i(229307),	-- Branches of Reclaiming Blight
			i(229271),	-- Tireless Collector's Chained Cowl
		}),
		i(228809, {	-- Venerated Gilded Gallybux
			i(229244),	-- Aureate Sentry's Pledge
			i(229334),	-- Confessor's Unshakable Halo
			i(229262),	-- Gale Sovereign's Charged Hood
		}),
		i(228810, {	-- Zenith Gilded Gallybux
			i(229298),	-- Ageless Serpent's Mane
			i(229235),	-- Enforcer's Backalley Faceshield
			i(229280),	-- Opulent Treasurescale's Crowned Jewel
			i(229289),	-- Spectral Gambler's Damned Visage
		}),
		i(228850),	-- Bottom-Dollar Blouse
		i(228886),	-- Coin-Operated Girdle
		i(228883),	-- Dubious Table-Runners
		i(230188),	-- Gallagio Bottle Service
		i(228905),	-- Giga Bank-Breaker
		i(230027),	-- House of Cards
		i(228885),	-- Hustler's Ante-Uppers
		i(228843),	-- Miniature Roulette Wheel
		i(228906),	-- Operator's Fraud Detector
		i(231266),	-- Random Number Perforator
	};
	[MUGZEE] = {
		i(228851),	-- "Bullet-Proof" Vestplate
		i(228893),	-- "Tiny Pal"
		i(228901),	-- Big Earner's Bludgeon
		i(228879),	-- Cemented Murloc-Swimmers
		i(228863),	-- Enforcer's Sticky Fingers
		i(228860),	-- Epaulettes of Failed Enforcers
		i(228842),	-- Gobfather's Gifted Bling
		i(228853),	-- Hired Muscle's Legguards
		i(228880),	-- Hitman's Holster
		i(228878),	-- Made Manacles
		i(230192),	-- Mug's Moxie Jug
		i(228870),	-- Underboss's Tailored Mantle
		i(228902),	-- Wiseguy's Refused Offer
		i(230199),	-- Zee's Thug Hotline
	};
	[GALLYWIX] = {
		i(228864),	-- "Streamlined" Cartel Uniform
		i(228891),	-- Capital Punisher
		i(230029),	-- Chromebustible Bomb Suit
		i(228887),	-- Cutthroat Competition Stompers
		i(228848),	-- Darkfuse Racketeer's Tricorne
		i(228877),	-- Dealer's Covetous Chain
		i(228866),	-- Deep-Pocketed Pantaloons
		i(230198),	-- Eye of Kezan
		i(228899),	-- Gallywix's Iron Thumb
		i(228872),	-- Golden Handshakers
		i(228881),	-- Illicit Bankroll Bracers
		i(228855),	-- Paydirt Pauldrons
		i(231265),	-- The Jastor Diamond
		i(228889),	-- Titan of Industry
	};
};

------ Zone Drops ----------
local ZoneDropLoot = {
	i(232661),	-- Bootleg Wrynn Shoulderplates
	i(232658),	-- Firebug's Anklegear
	i(232662),	-- Globlin-Fused Greatbelt
	i(232659),	-- Loyalist's Holdout Hood
	i(232657),	-- Mechgineer's Blowtorch Cover
	i(232660),	-- Midnight Lounge Cummerbund
	i(232656),	-- Psychopath's Ravemantle
	i(232663),	-- Undermine Merc's Dog Tags
	i(232655),	-- Vatwork Janitor's Wasteband
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

InstanceHelper.UpgradeMapping = {
	[DIFFICULTY.RAID.LFR] = 3,
	[DIFFICULTY.RAID.NORMAL] = 5,
	[DIFFICULTY.RAID.HEROIC] = 6,
};

root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART } }, {
	inst(1296, {	-- Liberation of Undermine
		["isRaid"] = true,
		["coord"] = { 42.0, 50.2, UNDERMINE },
		["maps"] = {
			2406,	-- Undermine
			2407,	-- The Gallagio
			2408,	-- The Lucky Heart
			2409,	-- The House of Chrome
			2411,	-- The Tower of Spades
			2428,	-- Research and Destruction
		},
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(41225, {	-- Shock and Awesome
					crit(71696, {	-- Vexie and the Geargrinders
						["_encounter"] = { VEXIE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71697, {	-- Cauldron of Carnage
						["_encounter"] = { CARNAGE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71698, {	-- Rik Reverb <Official Gallywix Hype Man>
						["_encounter"] = { RIK, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(41226, {	-- Maniacle Machinist
					crit(71699, {	-- Stix Bunkjunker
						["_encounter"] = { STIX, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71700, {	-- Sprocketmonger Lockenstock
						["_encounter"] = { LOCKENSTOCK, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(41227, {	-- Beating the Odds
					crit(71701, {	-- One-Armed Bandit
						["_encounter"] = { BANDIT, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71702, {	-- Mug'Zee, Heads of Security
						["_encounter"] = { MUGZEE, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(41228, {	-- Fall of the Chrome King
					crit(71703, {	-- Chrome King Gallywix
						["_encounter"] = { GALLYWIX, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(41222, {	-- Liberation of Undermine
					crit(71696, {	-- Vexie and the Geargrinders
						["_encounter"] = { VEXIE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71697, {	-- Cauldron of Carnage
						["_encounter"] = { CARNAGE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71698, {	-- Rik Reverb <Official Gallywix Hype Man>
						["_encounter"] = { RIK, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71699, {	-- Stix Bunkjunker
						["_encounter"] = { STIX, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71700, {	-- Sprocketmonger Lockenstock
						["_encounter"] = { LOCKENSTOCK, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71701, {	-- One-Armed Bandit
						["_encounter"] = { BANDIT, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71702, {	-- Mug'Zee, Heads of Security
						["_encounter"] = { MUGZEE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71703, {	-- Chrome King Gallywix
						["_encounter"] = { GALLYWIX, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(41223, {	-- Heroic: Liberation of Undermine
					crit(71704, {	-- Vexie and the Geargrinders
						["_encounter"] = { VEXIE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(71705, {	-- Cauldron of Carnage
						["_encounter"] = { CARNAGE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(71706, {	-- Rik Reverb <Official Gallywix Hype Man>
						["_encounter"] = { RIK, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(71707, {	-- Stix Bunkjunker
						["_encounter"] = { STIX, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(71708, {	-- Sprocketmonger Lockenstock
						["_encounter"] = { LOCKENSTOCK, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(71709, {	-- One-Armed Bandit
						["_encounter"] = { BANDIT, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(71710, {	-- Mug'Zee, Heads of Security
						["_encounter"] = { MUGZEE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(71711, {	-- Chrome King Gallywix
						["_encounter"] = { GALLYWIX, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
				}),
				ach(41224, {	-- Mythic: Liberation of Undermine
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						41229,	-- Mythic: Vexie and the Geargrinders
						41230,	-- Mythic: Cauldron of Carnage
						41231,	-- Mythic: Rik Reverb
						41232,	-- Mythic: Stix Bunkjunker
						41233,	-- Mythic: Sprocketmonger Lockenstock
						41234,	-- Mythic: The One-Armed Bandit
						41235,	-- Mythic: Mug'Zee, Heads of Security
						41236,	-- Mythic: Chrome King Gallywix
					}},
				}),
				ach(41286, {	-- Glory of the Liberation of Undermine Raider
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						41208,	-- Hold My Gear!
						41554,	-- The Splash Zone
						41338,	-- Just /Dance
						41596,	-- Garbage In, Garbage Out
						41711,	-- Conveyor Slayer
						41119,	-- One Rank Higher
						41337,	-- Sleep with the Fishes
						41347,	-- Scheming on a Thing
					}},
					["g"] = {
						i(231173),		-- Junkmaestro's Magnetomech (MOUNT!)
					},
				}),
				ach(41525),	-- Can You Please Spell "Gobanna?"
				ach(41289),	-- Liberation of Undermine Guild Run
				ach(41290),	-- Heroic: Liberation of Undermine Guild Run
			}),
			n(FACTIONS, {
				faction(FACTION_GLRC, {	-- Gallagio Loyalty Rewards Club
					n(235621, {	-- Ando the Gat <Black Market Broker>
						["g"] = bubbleDownRep(FACTION_GLRC, {	-- Gallagio Loyalty Rewards Club
							{		-- RENOWN 1 --
							}, {	-- RENOWN 2 --
							}, {	-- RENOWN 3 --
							}, {	-- RENOWN 4 --
							}, {	-- RENOWN 5 --
							}, {	-- RENOWN 6 --
							}, {	-- RENOWN 7 --
							}, {	-- RENOWN 8 --
								i(229945),			-- Thunderdrum Misfire (MOUNT!)
							}, {	-- RENOWN 9 --
							}, {	-- RENOWN 10 --
							}, {	-- RENOWN 11 --
							}, {	-- RENOWN 12 --
							}, {	-- RENOWN 13 --
							}, {	-- RENOWN 14 --
							}, {	-- RENOWN 15 --
							}, {	-- RENOWN 16 --
							}, {	-- RENOWN 17 --
								i(229924),		-- Darkfuse Chompactor (MOUNT!)
							}, {	-- RENOWN 18 --
							}, {	-- RENOWN 19 --
							}, {	-- RENOWN 20 --
								i(229940),			-- Flarendo the Furious (MOUNT!)
								title(602),			-- High Roller <Name>
							},
						}),
					}),
				}),
				n(QUESTS, bubbleDownRep(FACTION_GLRC, {	-- Gallagio Loyalty Rewards Club
					{		-- RENOWN 1 --
						q(89016, {	-- Members Only
							["provider"] = { "n", 235617 },	-- Paula Piranha <Renown Quartermaster>
						}),
					}, {	-- RENOWN 2 --
						q(89027, {	-- Fast Food
							["provider"] = { "n", 235617 },	-- Paula Piranha <Renown Quartermaster>
						}),
					}, {	-- RENOWN 3 --
					}, {	-- RENOWN 4 --
						q(89018, {	-- Loyal Customer: Silver
							["provider"] = { "n", 235617 },	-- Paula Piranha <Renown Quartermaster>
							["g"] = { i(234389) },	-- Gallagio Loyalty Rewards Card: Silver
						}),
					}, {	-- RENOWN 5 --
					}, {	-- RENOWN 6 --
						q(89252, {	-- Need a Jump?
							["provider"] = { "n", 235617 },	-- Paula Piranha <Renown Quartermaster>
						}),
						q(89024, {	-- Time is Money!
							["provider"] = { "n", 235617 },	-- Paula Piranha <Renown Quartermaster>
						}),
					}, {	-- RENOWN 7 --
						q(89019, {	-- Loyal Customer: Gold
							["provider"] = { "n", 235617 },	-- Paula Piranha <Renown Quartermaster>
						}),
					}, {	-- RENOWN 8 --
					}, {	-- RENOWN 9 --
					}, {	-- RENOWN 10 --
						q(89020, {	-- Loyal Customer: Platinum
							["provider"] = { "n", 235617 },	-- Paula Piranha <Renown Quartermaster>
						}),
					}, {	-- RENOWN 11 --
						q(89028, {	-- Chip Service
							["provider"] = { "n", 235617 },	-- Paula Piranha <Renown Quartermaster>
							["g"] = { i(237578) },	-- Counterfeit Dealer's Chip
						}),
						q(89025, {	-- Time is Money!!
							["provider"] = { "n", 235617 },	-- Paula Piranha <Renown Quartermaster>
						}),
					}, {	-- RENOWN 12 --
					}, {	-- RENOWN 13 --
						q(89021, {	-- Loyal Customer: Black
							["provider"] = { "n", 235617 },	-- Paula Piranha <Renown Quartermaster>
						}),
					}, {	-- RENOWN 14 --
					}, {	-- RENOWN 15 --
						q(89029, {	-- Chip Service
							["provider"] = { "n", 235617 },	-- Paula Piranha <Renown Quartermaster>
							["g"] = { i(237578) },	-- Counterfeit Dealer's Chip
						}),
						q(89022, {	-- Loyal Customer: Diamond
							["provider"] = { "n", 235617 },	-- Paula Piranha <Renown Quartermaster>
						}),
					}, {	-- RENOWN 16 --
					}, {	-- RENOWN 17 --
					}, {	-- RENOWN 18 --
						q(89026, {	-- Time is Money!!!
							["provider"] = { "n", 235617 },	-- Paula Piranha <Renown Quartermaster>
						}),
					}, {	-- RENOWN 19 --
					}, {	-- RENOWN 20 --
					},
				})),
				n(TREASURES, {
					o(505248, {	-- Rune Dispenser
						["description"] = "Interact with for a 1 in 10 chance for a free Crystalized Augment Rune.\n\nAt renown 14, you are guaranteed at least one.",
						["questID"]	= 89350,
						["minReputation"] = { FACTION_GLRC, 2 },
						["isWeekly"] = true,
						["g"] = { i(224572) },	-- Crystallized Augment Rune
					}),
				}),
				n(VENDORS, {
					n(235624, {	-- Skitto Screwjack
						i(236413),	-- "Shockproof" Soda
						i(236749, {	-- Take-Home Torq (TOY!)
							["minReputation"] = { FACTION_GLRC, 9 },
						}),
						i(232806, {	-- Tiny Torq (PET!)
							["minReputation"] = { FACTION_GLRC, 9 },
						}),
					}),
					n(235620, {	-- Sando the Rat <Counterfeit Dealer>
						["minReputation"] = { FACTION_GLRC, 15 },
						["g"] = sharedData({ ["cost"] = { {"i", 237578, 1} } }, {	-- 1x Counterfeit Dealer's Chip
							i(238776),	-- Gallagio Raider's Bilgewater Blasthammer
							i(238697),	-- Gallagio Raider's Bilgewater Boomfist
							i(238717),	-- Gallagio Raider's Bilgewater Chainsaw
							i(238693),	-- Gallagio Raider's Bilgewater Coilstaff
							i(238746),	-- Gallagio Raider's Bilgewater Eelspire
							i(238750),	-- Gallagio Raider's Bilgewater Exhaustglaive
							i(238705),	-- Gallagio Raider's Bilgewater Generator
							i(238754),	-- Gallagio Raider's Bilgewater Gold Digger
							i(238763),	-- Gallagio Raider's Bilgewater Gyroclub
							i(238713),	-- Gallagio Raider's Bilgewater Motorshield
							i(238767),	-- Gallagio Raider's Bilgewater Naval Mine
							i(238771),	-- Gallagio Raider's Bilgewater Repeater
							i(238709),	-- Gallagio Raider's Bilgewater Shivlighter
							i(238701),	-- Gallagio Raider's Bilgewater Shockbow
							i(238758),	-- Gallagio Raider's Bilgewater Thing-a-ma-tool
							i(238689),	-- Gallagio Raider's Bilgewater Torchblade
							i(238742),	-- Gallagio Raider's Bilgewater Zapdagger
							i(238777),	-- Gallagio Raider's Blackwater Blasthammer
							i(238698),	-- Gallagio Raider's Blackwater Boomfist
							i(238718),	-- Gallagio Raider's Blackwater Chainsaw
							i(238694),	-- Gallagio Raider's Blackwater Coilstaff
							i(238747),	-- Gallagio Raider's Blackwater Eelspire
							i(238751),	-- Gallagio Raider's Blackwater Exhaustglaive
							i(238706),	-- Gallagio Raider's Blackwater Generator
							i(238755),	-- Gallagio Raider's Blackwater Gold Digger
							i(238764),	-- Gallagio Raider's Blackwater Gyroclub
							i(238714),	-- Gallagio Raider's Blackwater Motorshield
							i(238768),	-- Gallagio Raider's Blackwater Naval Mine
							i(238772),	-- Gallagio Raider's Blackwater Repeater
							i(238710),	-- Gallagio Raider's Blackwater Shivlighter
							i(238702),	-- Gallagio Raider's Blackwater Shockbow
							i(238759),	-- Gallagio Raider's Blackwater Thing-a-ma-tool
							i(238690),	-- Gallagio Raider's Blackwater Torchblade
							i(238743),	-- Gallagio Raider's Blackwater Zapdagger
							i(238761),	-- Gallagio Raider's Bootleg Lever
							i(238778),	-- Gallagio Raider's Darkfuse Blasthammer
							i(238699),	-- Gallagio Raider's Darkfuse Boomfist
							i(238719),	-- Gallagio Raider's Darkfuse Chainsaw
							i(238695),	-- Gallagio Raider's Darkfuse Coilstaff
							i(238748),	-- Gallagio Raider's Darkfuse Eelspire
							i(238752),	-- Gallagio Raider's Darkfuse Exhaustglaive
							i(238707),	-- Gallagio Raider's Darkfuse Generator
							i(238756),	-- Gallagio Raider's Darkfuse Gold Digger
							i(238765),	-- Gallagio Raider's Darkfuse Gyroclub
							i(238715),	-- Gallagio Raider's Darkfuse Motorshield
							i(238769),	-- Gallagio Raider's Darkfuse Naval Mine
							i(238773),	-- Gallagio Raider's Darkfuse Repeater
							i(238711),	-- Gallagio Raider's Darkfuse Shivlighter
							i(238703),	-- Gallagio Raider's Darkfuse Shockbow
							i(238760),	-- Gallagio Raider's Darkfuse Thing-a-ma-tool
							i(238691),	-- Gallagio Raider's Darkfuse Torchblade
							i(238744),	-- Gallagio Raider's Darkfuse Zapdagger
							i(238774),	-- Gallagio Raider's Knuckle Dusters
							i(238775),	-- Gallagio Raider's Venture Co. Blasthammer
							i(238696),	-- Gallagio Raider's Venture Co. Boomfist
							i(238716),	-- Gallagio Raider's Venture Co. Chainsaw
							i(238692),	-- Gallagio Raider's Venture Co. Coilstaff
							i(238745),	-- Gallagio Raider's Venture Co. Eelspire
							i(238749),	-- Gallagio Raider's Venture Co. Exhaustglaive
							i(238704),	-- Gallagio Raider's Venture Co. Generator
							i(238753),	-- Gallagio Raider's Venture Co. Gold Digger
							i(238762),	-- Gallagio Raider's Venture Co. Gyroclub
							i(238712),	-- Gallagio Raider's Venture Co. Motorshield
							i(238766),	-- Gallagio Raider's Venture Co. Naval Mine
							i(238770),	-- Gallagio Raider's Venture Co. Repeater
							i(238708),	-- Gallagio Raider's Venture Co. Shivlighter
							i(238700),	-- Gallagio Raider's Venture Co. Shockbow
							i(238757),	-- Gallagio Raider's Venture Co. Thing-a-ma-tool
							i(238688),	-- Gallagio Raider's Venture Co. Torchblade
							i(238741),	-- Gallagio Raider's Venture Co. Zapdagger
						}),
					}),
					n(235623, {	-- Snix Longpocket
						i(236412),	-- "Fireproof" Punch
						i(232844, {	-- Fuz-Size Flarendo (PET!)
							["minReputation"] = { FACTION_GLRC, 9 },
						}),
						i(236751, {	-- Take-Home Flarendo (TOY!)
							["minReputation"] = { FACTION_GLRC, 9 },
						}),
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				BossOnly(VEXIE, {
					i(223048),	-- Plans: Siphoning Stiletto (RECIPE!)
				}),
				BossOnly(CARNAGE),
				BossOnly(RIK, {
					i(224435),	-- Pattern: Duskthread Lining (RECIPE!)
				}),
				BossOnly(STIX, {
					i(236687),	-- Explosive Hearthstone (TOY!)
				}),
				BossOnly(LOCKENSTOCK, {
					i(223097),	-- Pattern: Adrenal Surge Clasp (RECIPE!)
				}),
				BossOnly(BANDIT, {
					i(232526,{provider={"i",232805}}),	-- Best-in-Slots
					i(232805,{provider={"i",232526}}),	-- Best-in-Slots
					i(237578, {	-- Counterfeit Dealer's Chip
						["description"] = "Has a small chance dropping as Personal Loot once you have reached Renown 15 with the Gallagio Loyalty Rewards Club.",
						["minReputation"] = { FACTION_GLRC, 15 },
					}),
				}),
				BossOnly(MUGZEE, {
					i(223094),	-- Design: Magnificent Jeweler's Setting (RECIPE!)
					i(232804),	-- Capo's Molten Knuckles
				}),
				BossOnly(GALLYWIX, {
					i(223144),	-- Formula: Enchant Weapon - Authority of the Depths (RECIPE!)
					i(236960),	-- Prototype A.S.M.R. (MOUNT!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroupsWithUpgrades({
				ZoneDrops({
				}),
				CommonBossDrops({
					currency(WEATHERED_UNDERMINE_CREST, {
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0_SEASONSTART },
					}),
				}),
				header(HEADERS.LFGDungeon, 2780, {	-- Shock and Awesome
					Boss(CARNAGE),
					Boss(RIK),
				}),
				header(HEADERS.LFGDungeon, 2781, {	-- Maniacle Machinist
					Boss(STIX),
					Boss(LOCKENSTOCK),
				}),
				header(HEADERS.LFGDungeon, 2782, {	-- Two Heads Are Better
					Boss(VEXIE),
					Boss(BANDIT),
					Boss(MUGZEE),
				}),
				header(HEADERS.LFGDungeon, 2783, {	-- The Chrome King
					Boss(GALLYWIX, {
						i(228819, {	-- Excessively Bejeweled Curio
							--["crs"] = 227003,	-- Kir'xal (Vendor)
							["sym"] = {{"sub","instance_tier",1296,DIFFICULTY.RAID.LFR}},
							["up"] = IGNORED_VALUE,
						}),
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(VEXIE, {
					ach(41208),	-- Hold My Gear!
				}),
				BossOnly(CARNAGE, {
					ach(41694),	-- Flarendo's Biggest Fan
					ach(41554),	-- The Splash Zone
					ach(41695),	-- Torq's Biggest Fan
				}),
				BossOnly(RIK, {
					ach(41338),	-- Just /Dance
				}),
				BossOnly(STIX, {
					ach(41596, {	-- Garbage In, Garbage Out
						title(613),	-- Junkmaestro <Name>
					}),
				}),
				BossOnly(LOCKENSTOCK, {
					ach(41711),	-- Conveyor Slayer
				}),
				BossOnly(BANDIT, {
					ach(41119),	-- One Rank Higher
					ach(41120),	-- Two Ranks Higher
					ach(41121),	-- Three Ranks Higher
					ach(41122, {	-- Best In Class
						title(618),	-- <Name>, the Reel Deal
					}),
				}),
				BossOnly(MUGZEE, {
					ach(41211, {	-- A Good Day to Dye Hard
						i(236769),	-- Gallagio Pipeline Rerouter (TOY!)
					}),
					ach(41337),	-- Sleep with the Fishes
				}),
				BossOnly(GALLYWIX, {
					ach(41347),	-- Scheming on a Thing
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(CARVED_UNDERMINE_CREST, {
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0_SEASONSTART },
					}),
				}),
				n(QUESTS, {
					q(89351, {	-- Liberation of Undermine: Splitting Pairs [N]
						["qg"] = 235619,	-- Lentil Sprocket <Gallagio "Chauffeur">
						["minReputation"] = { FACTION_GLRC, 5 },
					}),
				}),
				ZoneDrops({
				}),
				Boss(VEXIE),
				Boss(CARNAGE),
				Boss(RIK),
				Boss(STIX),
				Boss(LOCKENSTOCK),
				Boss(BANDIT),
				Boss(MUGZEE),
				Boss(GALLYWIX, {
					i(228819, {	-- Excessively Bejeweled Curio
						--["crs"] = 227003,	-- Kir'xal (Vendor)
						["sym"] = {{"sub","instance_tier",1296,DIFFICULTY.RAID.NORMAL}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(VEXIE),
				BossOnly(CARNAGE),
				BossOnly(RIK),
				BossOnly(STIX),
				BossOnly(LOCKENSTOCK),
				BossOnly(BANDIT),
				BossOnly(MUGZEE),
				BossOnly(GALLYWIX, {
					ach(41298, {["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0_SEASONSTART }}),	-- Ahead of the Curve: Chrome King Gallywix
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(RUNED_UNDERMINE_CREST, {
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0_SEASONSTART },
					}),
				}),
				n(QUESTS, {
					q(89352, {	-- Liberation of Undermine: Splitting Pairs [H]
						["qg"] = 235619,	-- Lentil Sprocket <Gallagio "Chauffeur">
						["minReputation"] = { FACTION_GLRC, 5 },
					}),
				}),
				ZoneDrops({
				}),
				Boss(VEXIE),
				Boss(CARNAGE),
				Boss(RIK),
				Boss(STIX),
				Boss(LOCKENSTOCK),
				Boss(BANDIT),
				Boss(MUGZEE),
				Boss(GALLYWIX, {
					i(228819, {	-- Excessively Bejeweled Curio
						--["crs"] = 227003,	-- Kir'xal (Vendor)
						["sym"] = {{"sub","instance_tier",1296,DIFFICULTY.RAID.HEROIC}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				CommonBossDrops({
					currency(GILDED_UNDERMINE_CREST, {
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0_SEASONSTART },
					}),
				}),
				n(QUESTS, {
					q(89353, {	-- Liberation of Undermine: Splitting Pairs [M]
						["qg"] = 235619,	-- Lentil Sprocket <Gallagio "Chauffeur">
						["minReputation"] = { FACTION_GLRC, 5 },
					}),
				}),
				ZoneDrops({
				}),
				Boss(VEXIE, {
					ach(41229),	-- Mythic: Vexie and the Geargrinders
				}),
				Boss(CARNAGE, {
					ach(41230),	-- Mythic: Cauldron of Carnage
				}),
				Boss(RIK, {
					ach(41231),	-- Mythic: Rik Reverb
				}),
				Boss(STIX, {
					ach(41232),	-- Mythic: Stix Bunkjunker
				}),
				Boss(LOCKENSTOCK, {
					ach(41233),	-- Mythic: Sprocketmonger Lockenstock
				}),
				Boss(BANDIT, {
					ach(41234),	-- Mythic: The One-Armed Bandit
				}),
				Boss(MUGZEE, {
					ach(41235),	-- Mythic: Mug'Zee, Heads of Security
				}),
				Boss(GALLYWIX, {
					ach(41236, {	-- Mythic: Chrome King Gallywix
						title(605),	-- <Name>, Liberator of Undermine
					}),
					ach(41297, {["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0_SEASONSTART }}),	-- Cutting Edge: Chrome King Gallywix
					ach(41296, bubbleDownSelf({["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0_SEASONSTART } }, {	-- Hall of Fame: Chrome King Gallywix
						title(604),	-- <Name>, Famed Slayer of The Chrome King
					})),
					ach(41292),	-- Mythic: Chrome King Gallywix Guild Run
					i(235626),	-- The Big G (MOUNT!)
					i(228819, {	-- Excessively Bejeweled Curio
						--["crs"] = 227003,	-- Kir'xal (Vendor)
						["sym"] = {{"sub","instance_tier",1296,DIFFICULTY.RAID.MYTHIC}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			n(VENDORS, {
				--[[ add new vendor also to all the curios
				--Raid vendor gear for curio
				n(227003, {	-- Kir'xal
					["coord"] = { 56.7, 46.1, NERUBAR_LOWER },
					["sym"] = {{"select","itemID",
						modItemId(228819,4),	--	Excessively Bejeweled Curio [L]
						modItemId(228819,3),	--	Excessively Bejeweled Curio [N]
						modItemId(228819,5),	--	Excessively Bejeweled Curio [H]
						modItemId(228819,6),	--	Excessively Bejeweled Curio [M]
					},{"pop"}},	-- Pop all Curios (this fills their symlinks)
				}),
				--]]
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART } }, {
	inst(1296, {	-- Liberation of Undermine
		n(FACTIONS, {
			header(HEADERS.Faction, FACTION_GLRC, {
				n(QUESTS, {
					q(86468),	-- Triggered with Members Only (89016)
					q(89017),	-- Triggered with Members Only (89016)
				}),
			}),
		}),

		inst(1296, bubbleDown({	-- Liberation of Undermine
			["isWeekly"] = true,
		},{
			-- LFR
			q(88835),	-- Guk Boomdog Trash
			q(88838),	-- Professor Boomspark Trash
			q(88842),	-- King Flamespite Trash
			q(88846),	-- Skiggy Muckheimer Trash
			q(88867),	-- Trashmaster Blazedump Trash
			q(88829),	-- Scraps Trash
			q(88859),	-- Globikus Trash
			q(88850, name(HEADERS.NPC, 229434)),	-- Melbo The Magnificent Trash
			q(88854),	-- The Junkmaker Trash
			-- Normal
			q(88833),	-- Guk Boomdog Trash
			q(88840),	-- King Flamespite/Professor Boomspark Trash
			q(88844),	-- King Flamespite/Professor Boomspark Trash
			q(88848),	-- Skiggy Muckheimer Trash
			q(88869),	-- Trashmaster Blazedump Trash
			q(88830),	-- Scraps Trash
			q(88861),	-- Globikus Trash
			q(88852, name(HEADERS.NPC, 229434)),	-- Melbo The Magnificent Trash
			q(88856),	-- The Junkmaker Trash
			-- Heroic
			q(88836),	-- Guk Boomdog Trash
			q(88837),	-- Professor Boomspark Trash
			q(88841),	-- King Flamespite Trash
			q(88845),	-- Skiggy Muckheimer Trash
			q(88866),	-- Trashmaster Blazedump Trash
			q(88831),	-- Scraps Trash
			q(88858),	-- Globikus Trash
			q(88849, name(HEADERS.NPC, 229434)),	-- Melbo The Magnificent Trash
			q(88853),	-- The Junkmaker Trash
			-- Mythic
			q(88834),	-- Guk Boomdog Trash
			q(88839),	-- King Flamespite/Professor Boomspark Trash
			q(88843),	-- King Flamespite/Professor Boomspark Trash
			q(88847),	-- Skiggy Muckheimer Trash
			q(88868),	-- Trashmaster Blazedump Trash
			q(88832),	-- Scraps Trash
			q(88860),	-- Globikus Trash
			--q(),	-- Melbo The Magnificent Trash
			--q(),	-- The Junkmaker Trash
			-- All
			q(89478),	-- Guk Boomdog Trash first per week any difficulty
			q(89479),	-- Skiggy Muckheimer Trash first per week any difficulty
			q(89484),	-- Trashmaster Blazedump Trash first per week any difficulty
			q(89477),	-- Scraps Trash first per week any difficulty
			q(89482),	-- Globikus Trash first per week any difficulty
			q(89480, name(HEADERS.NPC, 229434)),	-- Melbo The Magnificent Trash first per week any difficulty
			q(89481),	-- The Junkmaker Trash first per week any difficulty

			q(89452),	-- Vexie Fullthrottle
			q(89453),	-- Cauldron of Carnage
			q(89454),	-- Rik Reverb
			q(89455),	-- Stix Bunkjunker
			q(89456),	-- Sprocketmonger Lockenstock
			q(89457),	-- One-Armed Bandit
			q(89458),	-- Mug'Zee
			q(89459),	-- Chrome King Gallywix
		})),
	}),
})));
