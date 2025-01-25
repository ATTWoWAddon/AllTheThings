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
	[RIK] = { 228652 },	-- Rik Reverb <Official Gallywix Hype Man>
	[STIX] = { 230322 },	-- Stix Bunkjunker
	[LOCKENSTOCK] = { 230583 },	-- Sprocketmonger Lockenstock
	[BANDIT] = { 228458 },	-- One-Armed Bandit
	[MUGZEE] = { 229953 },	-- Mug'Zee <Heads of Security>
	[GALLYWIX] = { 237194 },	-- Chrome King Gallywix
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
		i(228898),	-- Alphacoil Ba-Boom Stick
		i(228894),	-- GIGADEATH Chainblade
		i(228867),	-- Gravi-Gunk Handlers
		i(230193),	-- Mister Lock-N-Stalk
		i(230186),	-- Mister Pick-Me-Up
		i(228882),	-- Refiner's Conveyor Belt
		i(228888),	-- Rushed Beta Launchers
		i(228844),	-- Test Pilot's Go-Pack
		i(228884),	-- Test Subject's Clasps
	};
	[BANDIT] = {
		i(232526),	-- Best-in-Slots
		i(232805),	-- Best-in-Slots
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
		i(228851),	-- 'Bullet-Proof' Vestplate
		i(228893),	-- "Tiny Pal"
		i(228901),	-- Big Earner's Bludgeon
		i(232804),	-- Capo's Molten Knuckles
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
root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
	inst(1296, {	-- Liberation of Undermine
		["isRaid"] = true,
		--["coord"] = { X, Y, UNDERMINE },
		["maps"] = {
			2406,	-- Undermine
			2407,	-- The Gallagio
			2408,	-- The Lucky Heart
			2409,	-- The House of Chrome
			2411,	-- The Tower of Spades
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
						--x,	--
						41119,	-- One Rank Higher
						41211,	-- A Good Day to Dye Hard [Both or One?]
						41337,	-- Sleep with the Fishes [Both or One?]
						41347,	-- Scheming on a Thing
					}},
					["g"] = {
						--i(x)
					},
				}),
				ach(41525),	-- Can You Please Spell "Gobanna?"
				ach(41289),	-- Liberation of Undermine Guild Run
				ach(41290),	-- Heroic: Liberation of Undermine Guild Run
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				BossOnly(VEXIE),
				BossOnly(CARNAGE),
				BossOnly(RIK),
				BossOnly(STIX, {
					i(236687),	-- Explosive Hearthstone (TOY!)
				}),
				BossOnly(LOCKENSTOCK),
				BossOnly(BANDIT),
				BossOnly(MUGZEE),
				BossOnly(GALLYWIX, {
					i(236960),	-- Prototype A.S.M.R. (MOUNT!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroupsWithUpgrades({
				ZoneDrops({
				}),
				CommonBossDrops({
					currency(WEATHERED_UNDERMINE_CREST, {
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
				}),
				header(HEADERS.Achievement, 41225, {	-- Shock and Awesome
					Boss(VEXIE),
					Boss(CARNAGE),
					Boss(RIK),
				}),
				header(HEADERS.Achievement, 41226, {	-- Maniacle Machinist
					Boss(STIX),
					Boss(LOCKENSTOCK),
				}),
				header(HEADERS.Achievement, 41227, {	-- Beating the Odds
					Boss(BANDIT),
					Boss(MUGZEE),
				}),
				header(HEADERS.Achievement, 41228, {	-- Fall of the Chrome King
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
						title(613),	 -- Junkmaestro <Name>
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
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
				}),
				n(QUESTS, {
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
					ach(41298, {["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 }}),	-- Ahead of the Curve: Chrome King Gallywix
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(RUNED_UNDERMINE_CREST, {
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
				}),
				n(QUESTS, {
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
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
				}),
				n(QUESTS, {
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
					ach(41297, {["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 }}),	-- Cutting Edge: Chrome King Gallywix
					ach(41296, bubbleDownSelf({["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 } }, {	-- Hall of Fame: Chrome King Gallywix
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