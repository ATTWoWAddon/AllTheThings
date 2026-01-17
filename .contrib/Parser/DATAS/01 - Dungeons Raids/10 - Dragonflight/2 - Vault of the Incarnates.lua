-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local SymRaidVault = function(ClassID, DiffID)
	return {{"sub","instance_tier",1200,DiffID,ClassID}};
end
------ Encounter Constants ------
local ERANOG = 2480;
local TERROS = 2500;
local THE_PRIMAL_COUNCIL = 2486;
local SENNARTH = 2482;
local DATHEA = 2502;
local KUROG = 2491;
local DIURNA = 2493;
local RASZAGETH = 2499;

------ EncounterToCRS ------
local EncounterToCRS = {
	[ERANOG] = { 184972 },	-- Eranog
	[TERROS] = { 190496 },	-- Terros
	[THE_PRIMAL_COUNCIL] = {
		187771,	-- Kadros Icewrath
		187768,	-- Dathea Stormlash
		187767,	-- Embar Firepath
		187772,	-- Opalfang
	},
	[SENNARTH] = { 187967 },	-- Sennarth, the Cold Breath
	[DATHEA] = { 189813 },	-- Dathea, Ascended
	[KUROG] = { 181378 },	-- Kurog Grimtotem
	[DIURNA] = { 190245 },	-- Broodkeeper Diurna
	[RASZAGETH] = {
		193909,	-- Raszageth the Storm-Eater
		189492,	-- Raszageth the Storm-Eater
	},
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[ERANOG] = {
		i(195482),	-- Decorated Commander's Cindercloak
		i(194299),	-- Decoration of Flame
		i(195476),	-- Eranog's Adorned Sallet
		i(195475),	-- Flame Marshal's Bulwark
		i(195479),	-- Flametender's Legwraps
		i(195477),	-- Scaldrons of Molten Might
		i(195480),	-- Seal of Diurna's Chosen
		i(195490),	-- Searing Blazecaster
		i(195478),	-- Valdrakken Protector's Turncoat
	},
	[TERROS] = {
		i(195504),	-- Awakened Planar Pillar
		i(195500),	-- Compressed Cultist's Frock
		i(195503),	-- Enduring Shard of Terros
		i(195499),	-- Faultline Mantle
		i(195501),	-- Fused Shale Waistband
		i(195498),	-- Gaze of the Living Quarry
		i(195497),	-- Quake-Detecting Seismostaff
		i(194303),	-- Rumbling Ruby
		i(195502),	-- Terros' Captive Core
	},
	[THE_PRIMAL_COUNCIL] = {
		i(194300),	-- Conjured Chillglobe
		i(195485),	-- Councilor's Terrormask
		i(195487),	-- Embar's Ashen Hauberk
		i(195484),	-- Icewrath's Channeling Conduit
		i(195518),	-- Imbued Qalashi Crusher
		i(195489),	-- Maul of the Earthshaper
		i(195488),	-- Opalfang's Earthbound Legguards
		i(195486),	-- Twisted Loam Spaulders
		i(194301),	-- Whispering Incarnate Icon
	},
	[SENNARTH] = {
		i(195511),	-- Acid-Proof Webbing
		i(195505),	-- Caustic Coldsteel Slicer
		i(195508),	-- Chilled Silken Restraints
		i(195506),	-- Diamond-Etched Gauntlets
		i(195510),	-- Frostbreath Thumper
		i(195509),	-- Ice-Climber's Cleats
		i(194304),	-- Iceblood Deathsnare
		i(195507),	-- Unnatural Dripstone Cinch
	},
	[DATHEA] = {
		i(195493),	-- Ascended Squallspires
		i(195495),	-- Daring Chasm-Leapers
		i(195494),	-- Dathea's Cyclonic Cage
		i(195496),	-- Eye of the Vengeful Hurricane
		i(195491),	-- Infused Stormglaives
		i(195481),	-- Scepter of Drastic Measures
		i(194302),	-- Storm-Eater's Boon
		i(195492),	-- Windborne Hatsuburi
	},
	[KUROG] = {
		i(194306),	-- All-Totem of the Master
		i(195483),	-- Awak'mani, Grimtotem's Legacy
		i(194305),	-- Controlled Current Technique
		i(195512),	-- Fist of the Grand Summoner
		i(195517),	-- Kurog's Thunderhooves
		i(195515),	-- Magatha's Spiritual Sash
		i(195513),	-- Scripture of Primal Devotion
		i(195516),	-- Surging-Song Conductors
		i(195514),	-- Treacherous Totem Wraps
	},
	[DIURNA] = {
		i(194307),	-- Broodkeeper's Promise
		i(195520),	-- Broodsworn Legionnaire's Pavise
		i(195523),	-- Eggtender's Safety Mitts
		i(195519),	-- Kharnalex, The First Light
		i(195525),	-- Loyal Flametender's Bracers
		i(194308),	-- Manic Grieftorch
		i(195524),	-- Matriarch's Opulent Girdle
		i(195521),	-- Ornamental Drakonid Claw
		i(195526),	-- Seal of Filial Duty
		i(195522),	-- Tassets of the Tarasek Legion
	},
	[RASZAGETH] = {
		i(195531),	-- Calamitous Shockguards
		i(194310),	-- Desperate Invoker's Codex
		i(195528),	-- Incarnate Sky-Splitter
		i(195530),	-- Loathsome Thunderhosen
		i(195527),	-- Neltharax, Enemy of the Sky
		i(195532),	-- Sandals of the Wild Sovereign
		i(195533),	-- Shackles of Titanic Failure
		i(194309),	-- Spiteful Storm
		i(195529),	-- Stormlash's Last Resort
	},
};

------ Zone Drops ----------
local ZoneDropLoot = {
	i(202004),	-- Brawler's Earthen Cuirass [BoE]
	i(201992),	-- Emissary's Flamewrought Seal [BoE]
	i(202005),	-- Frozen Claw Mantle [BoE]
	i(202008),	-- Galvanic Gaiters [BoE]
	i(202006),	-- Greathelm of Horned Fury [BoE]
	i(202009),	-- Lavamancer's Ceremonial Waistguard [BoE]
	i(202003),	-- Primal Seeker's Leggings [BoE]
	i(202010),	-- Primalist Warden's Bracers [BoE]
	i(202007),	-- Woven Stone Bracelets [BoE]
}

local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

------ Difficulty To BonusID for those Tiers... ------
-- Blizzard used some really wacky BonusIDs this time around to give proper Tier SourceIDs...
-- Blizzard seems to have actually fixed needing these...
-- local DifficultyToBonusID = {
-- 	[DIFFICULTY.RAID.LFR] = 7982,
-- 	[DIFFICULTY.RAID.NORMAL] = 7979,
-- 	[DIFFICULTY.RAID.HEROIC] = 7980,
-- 	[DIFFICULTY.RAID.MYTHIC] = 7981,
-- };

InstanceHelper.ExtraLoots = {
	------ Tier Items ------
	{
		Add = function(encounter, id, difficulty, data)
			if data[id] then
				local tokens = {}
				for _,token in ipairs(data[id]) do
					tokens[#tokens + 1] = clone(token)
				end
				-- seems to no longer be necessary... will keep it around for a while just in case
				-- local difficultyBonusID = DifficultyToBonusID[difficulty]
				-- for _,token in ipairs(tokens) do
				-- 	for _,item in ipairs(token.groups) do
				-- 		item.bonusID = difficultyBonusID;
				-- 	end
				-- end
				encounter.groups = appendAllGroups(encounter.groups, tokens);
				return encounter
			end
		end,
		Data = {
			[SENNARTH] = {
				i(196588, {	-- Dreadful Jade Forgestone
					i(200409),	-- Greaves of the Haunted Frostbrood
					i(200346),	-- Skybound Avenger's Legguards
					i(200337),	-- Scalesworn Cultist's Culottes
				}),
				i(196598, {	-- Mystic Jade Forgestone
					i(200355),	-- Lost Landcaller's Leggings
					i(200391),	-- Stormwing Harrier's Greaves
					i(200319),	-- Crystal Scholar's Britches
				}),
				i(196603, {	-- Venerated Jade Forgestone
					i(200418),	-- Virtuous Silver Cuisses
					i(200328),	-- Draconic Hierophant's Britches
					i(200400),	-- Leggings of Infused Earth
				}),
				i(196593, {	-- Zenith Jade Forgestone
					i(200382),	-- Legguards of the Awakened
					i(200364),	-- Legguards of the Waking Fist
					i(200373),	-- Vault Delver's Pantaloons
					i(200427),	-- Poleyns of the Walking Mountain
				}),
			},
			[DATHEA] = {
				i(196587, {	-- Dreadful Garnet Forgestone
					i(200407),	-- Grasps of the Haunted Frostbrood
					i(200344),	-- Skybound Avenger's Grips
					i(200335),	-- Scalesworn Cultist's Gloves
				}),
				i(196597, {	-- Mystic Garnet Forgestone
					i(200353),	-- Lost Landcaller's Claws
					i(200389),	-- Stormwing Harrier's Handguards
					i(200317),	-- Crystal Scholar's Pageturners
				}),
				i(196602, {	-- Venerated Garnet Forgestone
					i(200416),	-- Virtuous Silver Gauntlets
					i(200326),	-- Draconic Hierophant's Grips
					i(200398),	-- Gauntlets of Infused Earth
				}),
				i(196592, {	-- Zenith Garnet Forgestone
					i(200380),	-- Gauntlets of the Awakened
					i(200362),	-- Palms of the Waking Fist
					i(200371),	-- Vault Delver's Lockbreakers
					i(200425),	-- Gauntlets of the Walking Mountain
				}),
			},
			[KUROG] = {
				i(196586, {	-- Dreadful Amethyst Forgestone
					i(200405),	-- Breastplate of the Haunted Frostbrood
					i(200342),	-- Skybound Avenger's Harness
					i(200333),	-- Scalesworn Cultist's Frosk
				}),
				i(196596, {	-- Mystic Amethyst Forgestone
					i(200351),	-- Lost Landcaller's Robes
					i(200387),	-- Stormwing Harrier's Cuirass
					i(200315),	-- Crystal Scholar's Tunic
				}),
				i(196601, {	-- Venerated Amethyst Forgestone
					i(200414),	-- Virtuous Silver Breastplate
					i(200324),	-- Draconic Hierophant's Vestment
					i(200396),	-- Robe of Infused Earth
				}),
				i(196591, {	-- Zenith Amethyst Forgestone
					i(200378),	-- Hauberk of the Awakened
					i(200360),	-- Chestwrap of the Waking Fist
					i(200369),	-- Vault Delver's Brigandine
					i(200423),	-- Husk of the Walking Mountain
				}),
			},
			[DIURNA] = {
				i(196589, {	-- Dreadful Lapis Forgestone
					i(200410),	-- Jaws of the Haunted Frostbrood
					i(200347),	-- Skybound Avenger's Ailerons
					i(200338),	-- Scalesworn Cultist's Effigy
				}),
				i(196599, {	-- Mystic Lapis Forgestone
					i(200356),	-- Lost Landcaller's Mantle
					i(200392),	-- Stormwing Harrier's Pinions
					i(200320),	-- Crystal Scholar's Beacons
				}),
				i(196604, {	-- Venerated Lapis Forgestone
					i(200419),	-- Virtuous Silver Pauldrons
					i(200329),	-- Draconic Hierophant's Wisdom
					i(200401),	-- Calderas of Infused Earth
				}),
				i(196594, {	-- Zenith Lapis Forgestone
					i(200383),	-- Talons of the Awakened
					i(200365),	-- Mantle of the Waking Fist
					i(200374),	-- Vault Delver's Epaulets
					i(200428),	-- Peaks of the Walking Mountain
				}),
			},
			[RASZAGETH] = {
				i(196590, {	-- Dreadful Topaz Forgestone
					i(200408),	-- Maw of the Haunted Frostbrood
					i(200345),	-- Skybound Avenger's Visor
					i(200336),	-- Scalesworn Cultist's Scorn
				}),
				i(196600, {	-- Mystic Topaz Forgestone
					i(200354),	-- Lost Landcaller's Antlers
					i(200390),	-- Stormwing Harrier's Skullmask
					i(200318),	-- Crystal Scholar's Cowl
				}),
				i(196605, {	-- Venerated Topaz Forgestone
					i(200417),	-- Virtuous Silver Heaume
					i(200327),	-- Draconic Hierophant's Archcowl
					i(200399),	-- Faceguard of Infused Earth
				}),
				i(196595, {	-- Zenith Topaz Forgestone
					i(200381),	-- Crown of the Awakened
					i(200363),	-- Gaze of the Waking Fist
					i(200372),	-- Vault Delver's Vizard
					i(200426),	-- Casque of the Walking Mountain
				}),
				i(217408, {	-- Awakened Tempostone
					["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
					["sym"] = GET_SYM_DF_S4_TIER_TOKENS(),
					["up"] = IGNORED_VALUE,
				}),
			},
		}
	},
}

-- add the added patch here once blizzard stops clowning about old LFR content
local TIMELINE_LFR = { ADDED_10_0_2_LAUNCH, REMOVED_11_0_2 }

root(ROOTS.Instances, expansion(EXPANSION.DF, {
	inst(1200, {	-- Vault of the Incarnates
		["coord"] = { 73.0, 55.7, THALDRASZUS },
		["timeline"] = { ADDED_10_0_2_LAUNCH },
		["maps"] = {
			2119,	-- The Primal Bulwark
			2120,	-- The Elemental Conclave
			2121,	-- Galewind Crag
			2122,	-- The Vault Approach
			2123,	-- Iceskitter Hollow
			2124,	-- The Primal Convergence
			2125,	-- Vault of the Incarnates
			2126,	-- The Clutchwarren
			2135,	-- Valdrakken
		},
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(17110, {	-- The Primal Bulwark
					crit(55109, {	-- Eranog
						["_encounter"] = { ERANOG, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(55110, {	-- The Primal Council
						["_encounter"] = { THE_PRIMAL_COUNCIL, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(55111, {	-- Dathea, Ascended
						["_encounter"] = { DATHEA, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(17111, {	-- Caverns of Infusion
					crit(55113, {	-- Terros
						["_encounter"] = { TERROS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(55114, {	-- Sennarth, the Cold Breath
						["_encounter"] = { SENNARTH, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(55115, {	-- Kurog Grimtotem
						["_encounter"] = { KUROG, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(17112, {	-- Fury of the Storm
					crit(55116, {	-- Broodkeeper Diurna
						["_encounter"] = { DIURNA, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(55117, {	-- Raszageth the Storm-Eater
						["_encounter"] = { RASZAGETH, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(16343, {	-- Vault of the Incarnates
					crit(55109, {	-- Eranog
						["_encounter"] = { ERANOG, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(55110, {	-- The Primal Council
						["_encounter"] = { THE_PRIMAL_COUNCIL, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(55111, {	-- Dathea, Ascended
						["_encounter"] = { DATHEA, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(55113, {	-- Terros
						["_encounter"] = { TERROS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(55114, {	-- Sennarth, the Cold Breath
						["_encounter"] = { SENNARTH, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(55115, {	-- Kurog Grimtotem
						["_encounter"] = { KUROG, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(55116, {	-- Broodkeeper Diurna
						["_encounter"] = { DIURNA, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(55117, {	-- Raszageth the Storm-Eater
						["_encounter"] = { RASZAGETH, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(16345, {	-- Heroic: Vault of the Incarnates
					crit(55121, {	-- Eranog
						["_encounter"] = { ERANOG, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(55122, {	-- The Primal Council
						["_encounter"] = { THE_PRIMAL_COUNCIL, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(55123, {	-- Dathea, Ascended
						["_encounter"] = { DATHEA, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(55124, {	-- Terros
						["_encounter"] = { TERROS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(55125, {	-- Sennarth, the Cold Breath
						["_encounter"] = { SENNARTH, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(55127, {	-- Kurog Grimtotem
						["_encounter"] = { KUROG, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(55126, {	-- Broodkeeper Diurna
						["_encounter"] = { DIURNA, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(55128, {	-- Raszageth the Storm-Eater
						["_encounter"] = { RASZAGETH, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
				}),
				ach(16354, {	-- Mythic: Vault of the Incarnates
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						16346,	-- Mythic: Eranog
						16347,	-- Mythic: Terros
						16348,	-- Mythic: The Primal Council
						16349,	-- Mythic: Sennarth, The Cold Breath
						16350,	-- Mythic: Dathea, Ascended
						16351,	-- Mythic: Kurog Grimtotem
						16352,	-- Mythic: Broodkeeper Diurna
						16353,	-- Mythic: Raszageth the Storm-Eater
					}},
				}),
				ach(16355, {	-- Glory of the Vault Raider
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						16335,	-- What Frozen Things Do
						16365,	-- Little Friends
						16364,	-- The Lunker Below
						16419,	-- I Was Saving That For Later
						16458,	-- Nothing But Air
						16450,	-- The Power is MINE!
						16442,	-- Incubation Extermination
						16451,	-- The Ol Raszle Daszle
					}},
					["groups"] = {
						i(192806),	-- Raging Magmammoth (MOUNT!)
					},
				}),
				-- Awakened
				ach(19564, {	-- Awakened Storms
					["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
					["groups"] = {
						crit(64929, {	-- Eranog
							["_encounter"] = { ERANOG, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
						}),
						crit(64930, {	-- The Primal Council
							["_encounter"] = { THE_PRIMAL_COUNCIL, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
						}),
						crit(64931, {	-- Terros
							["_encounter"] = { TERROS, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
						}),
						crit(64932, {	-- Sennarth, the Cold Breath
							["_encounter"] = { SENNARTH, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
						}),
						crit(64933, {	-- Dathea, Ascended
							["_encounter"] = { DATHEA, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
						}),
						crit(64934, {	-- Kurog Grimtotem
							["_encounter"] = { KUROG, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
						}),
						crit(64935, {	-- Broodkeeper Diurna
							["_encounter"] = { DIURNA, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
						}),
						crit(64936, {	-- Raszageth the Storm-Eater
							["_encounter"] = { RASZAGETH, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
						}),
					},
				}),
				ach(19565, {	-- Heroic: Awakened Storms
					["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
					["groups"] = {
						crit(64937, {	-- Eranog
							["_encounter"] = { ERANOG, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(64938, {	-- The Primal Council
							["_encounter"] = { THE_PRIMAL_COUNCIL, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(64939, {	-- Terros
							["_encounter"] = { TERROS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(64940, {	-- Sennarth, the Cold Breath
							["_encounter"] = { SENNARTH, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(64941, {	-- Dathea, Ascended
							["_encounter"] = { DATHEA, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(64942, {	-- Kurog Grimtotem
							["_encounter"] = { KUROG, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(64943, {	-- Broodkeeper Diurna
							["_encounter"] = { DIURNA, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(64944, {	-- Raszageth the Storm-Eater
							["_encounter"] = { RASZAGETH, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
					},
				}),
				ach(19566, {	-- Mythic: Awakened Storms
					["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
					["groups"] = {
						crit(64945, {	-- Eranog
							["_encounter"] = { ERANOG, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(64946, {	-- The Primal Council
							["_encounter"] = { THE_PRIMAL_COUNCIL, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(64947, {	-- Terros
							["_encounter"] = { TERROS, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(64948, {	-- Sennarth, the Cold Breath
							["_encounter"] = { SENNARTH, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(64949, {	-- Dathea, Ascended
							["_encounter"] = { DATHEA, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(64950, {	-- Kurog Grimtotem
							["_encounter"] = { KUROG, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(64951, {	-- Broodkeeper Diurna
							["_encounter"] = { DIURNA, DIFFICULTY.RAID.MYTHIC },
						}),
						-- Criteria not found in past wagotools tables, typo maybe? Would explain there existing a mysterious extra.
						-- crit(64952, {	-- Raszageth the Storm-Eater
						-- 	["_encounter"] = { RASZAGETH, DIFFICULTY.RAID.MYTHIC },
						-- }),
						crit(64953, {	-- Raszageth the Storm-Eater (extra criteria??)
							["_encounter"] = { RASZAGETH, DIFFICULTY.RAID.MYTHIC },
						}),
					},
				}),
				ach(16395),		-- Vaulternative Fashion
				-- Guild Achievements
				ach(16356),		-- Vault of the Incarnates Guild Run
				ach(16357),		-- Heroic: Vault of the Incarnates Guild Run
			}),
			o(382621, {	-- Revival Catalyst Console
				["description"] = "The Revival Catalyst is a system that lets you convert non-set items from the Vault of the Incarnates Raid into your class' Tier Transmog Set.\n\nThe catalyst is in Tyrhold in Thaldraszus, Dragon Isles.\n\nMake sure to equip your item first before converting it.",
				["coord"] = { 60.6, 53.8, THALDRASZUS },
				["modelScale"] = 4,
				["catalystID"] = 3,	-- ItemBonus.Value_0 DF:S1
				["groups"] = {
					Difficulty(DIFFICULTY.RAID.LFR, {
						["upgradeTrackID"]=UPGRADETRACKS.VETERAN,
						["timeline"] = TIMELINE_LFR}).AddGroups(
						bubbleDownFiltered({bonusID=451},FILTERFUNC_itemID,
						ALL_CLASS_TIERS_HELPER(VAULT_OF_THE_INCARNATES_TIER, DIFFICULTY.RAID.LFR))
					),
					Difficulty(DIFFICULTY.RAID.NORMAL, {["upgradeTrackID"]=UPGRADETRACKS.CHAMPION}).AddGroups(
						ALL_CLASS_TIERS_HELPER(VAULT_OF_THE_INCARNATES_TIER, DIFFICULTY.RAID.NORMAL)
					),
					Difficulty(DIFFICULTY.RAID.HEROIC, {["upgradeTrackID"]=UPGRADETRACKS.HERO}).AddGroups(
						bubbleDownFiltered({bonusID=1},FILTERFUNC_itemID,
						ALL_CLASS_TIERS_HELPER(VAULT_OF_THE_INCARNATES_TIER, DIFFICULTY.RAID.HEROIC))
					),
					Difficulty(DIFFICULTY.RAID.MYTHIC, {["upgradeTrackID"]=UPGRADETRACKS.MYTH}).AddGroups(
						bubbleDownFiltered({bonusID=450},FILTERFUNC_itemID,
						ALL_CLASS_TIERS_HELPER(VAULT_OF_THE_INCARNATES_TIER, DIFFICULTY.RAID.MYTHIC))
					),
				},
			}),
			CommonBossDrops(sharedData({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 } }, {
				i(205962, {	-- Echoing Storm Flightstone
					["timeline"] = { ADDED_10_1_0 },
				}),
				i(194642),	-- Design: Choker of Shielding (RECIPE!)
				i(194259),	-- Pattern: Allied Cinch of Time Dilation (RECIPE!)
				i(194266),	-- Pattern: Bronzed Grip Wrappings (RECIPE!)
				i(194260),	-- Pattern: Blue Dragon Soles (RECIPE!)
				i(193873),	-- Pattern: Old Spirit's Wristwraps (RECIPE!)
				i(193881),	-- Pattern: Scale Rein Grips (RECIPE!)
				i(193872),	-- Pattern: String of Spiritual Knick-Knacks (RECIPE!)
				i(193880),	-- Pattern: Wind Spirit's Lasso (RECIPE!)
				i(194489),	-- Plans: Allied Chestplate of Generosity (RECIPE!)
				i(194490),	-- Plans: Allied Wristguard of Companionship (RECIPE!)
				i(191597),	-- Recipe: Potion Absorption Inhibitor (RECIPE!)
				i(199227),	-- Schematic: Sophisticated Problem Solver (RECIPE!)
			})),
			n(QUESTS, {
				q(72261, {	-- More Than a Prison?
					["provider"] = { "i", 201412 },	-- Ancient Vault Artifact
				}),
				q(72259, {	-- Vault Artifacts
					["provider"] = { "n", 197095 },	-- Lillian Brightmoon
					["coord"] = { 35.2, 24.6, VALDRAKKEN },
					["maxReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 25 },
					["cost"] = { { "i", 201411, 1 } },	-- 1x Ancient Vault Artifact
					["repeatable"] = true,
				}),
				q(72260, {	-- Vault Artifacts
					["provider"] = { "n", 197095 },	-- Lillian Brightmoon
					["coord"] = { 35.2, 24.6, VALDRAKKEN },
					["maxReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 25 },
					["cost"] = { { "i", 201411, 5 } },	-- 5x Ancient Vault Artifact
					["repeatable"] = true,
				}),
			}),
			n(ZONE_DROPS, {
				i(201412),	-- Ancient Vault Artifact (Quest)
				i(201411),	-- Ancient Vault Artifact (Repeatable)
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				BossOnly(ERANOG),
				BossOnly(TERROS),
				BossOnly(THE_PRIMAL_COUNCIL),
				BossOnly(SENNARTH),
				BossOnly(DATHEA),
				BossOnly(KUROG, {
					i(200916),	-- Formula: Illusion: Primal Mastery (RECIPE!)
				}),
				BossOnly(DIURNA),
				BossOnly(RASZAGETH, {
					i(201790),	-- Renewed Proto-Drake: Embodiment of the Storm-Eater (MM!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR, {["timeline"] = TIMELINE_LFR}).AddGroups({
				ZoneDrops(),
				header(HEADERS.Achievement, 17110, {	-- The Primal Bulwark
					Boss(ERANOG),
					Boss(THE_PRIMAL_COUNCIL),
					Boss(DATHEA),
				}),
				header(HEADERS.Achievement, 17111, {	-- Caverns of Infusion
					Boss(TERROS),
					Boss(SENNARTH),
					Boss(KUROG),
				}),
				header(HEADERS.Achievement, 17112, {	-- Fury of the Storm
					Boss(DIURNA),
					Boss(RASZAGETH),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(ERANOG, {
					ach(16335),	-- What Frozen Things Do
				}),
				BossOnly(TERROS, {
					ach(16365),	-- Little Friends
				}),
				BossOnly(THE_PRIMAL_COUNCIL, {
					ach(16364),	-- The Lunker Below
				}),
				BossOnly(SENNARTH, {
					ach(16419),	-- I Was Saving That For Later
				}),
				BossOnly(DATHEA, {
					ach(16458),	-- Nothing But Air
				}),
				BossOnly(KUROG, {
					ach(16450),	-- The Power is MINE!
				}),
				BossOnly(DIURNA, {
					ach(16442),	-- Incubation Extermination
				}),
				BossOnly(RASZAGETH, {
					ach(16451),	-- The Ol Raszle Daszle
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
				n(QUESTS, {
					q(71018, {	-- Vault of the Incarnates: Break a Few Eggs (N)
						["provider"] = { "n", 193460 },	-- Kalecgos
						["groups"] = {
							i(200225),	-- Shard of the Greatstaff
						},
					}),
				}),
				ZoneDrops(),
				Boss(ERANOG),
				Boss(TERROS),
				Boss(THE_PRIMAL_COUNCIL),
				Boss(SENNARTH),
				Boss(DATHEA),
				Boss(KUROG),
				Boss(DIURNA),
				Boss(RASZAGETH),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				CommonBossDrops({
					TempForceMisc(ig(201740, {	-- Elemental Codex of Ultimate Power
						r(370543),	-- Elemental Potion of Ultimate Power (RECIPE!)
						r(370672),	-- Potion Cauldron of Ultimate Power (RECIPE!)
					})),
				}),
				BossOnly(ERANOG),
				BossOnly(TERROS),
				BossOnly(THE_PRIMAL_COUNCIL),
				BossOnly(SENNARTH),
				BossOnly(DATHEA),
				BossOnly(KUROG),
				BossOnly(DIURNA),
				BossOnly(RASZAGETH, {
					ach(17107, {["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 }}),	-- Ahead of the Curve: Raszageth the Storm-Eater
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
				CommonBossDrops({
					ig(200686),	-- Primal Focus
				}),
				n(QUESTS, {
					q(71019, {	-- Vault of the Incarnates: Break a Few Eggs (H)
						["provider"] = { "n", 193460 },	-- Kalecgos
						["groups"] = {
							i(200226),	-- Shard of the Greatstaff
						},
					}),
				}),
				ZoneDrops(),
				Boss(ERANOG),
				Boss(TERROS),
				Boss(THE_PRIMAL_COUNCIL),
				Boss(SENNARTH),
				Boss(DATHEA),
				Boss(KUROG),
				Boss(DIURNA),
				Boss(RASZAGETH),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				CommonBossDrops({
					ig(190455),	-- Concentrated Primal Focus
				}),
				n(QUESTS, {
					q(71020, {	-- Vault of the Incarnates: Break a Few Eggs (M)
						["provider"] = { "n", 193460 },	-- Kalecgos
						["groups"] = {
							i(200227),	-- Shard of the Greatstaff
						},
					}),
				}),
				ZoneDrops(),
				-- Mythic Only Temp BoP Items
				n(ZONE_DROPS, {
					i(202146, {["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_0_5 }}),	-- Brawler's Earthen Cuirass [BoP]
					i(202148, {["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_0_5 }}),	-- Emissary's Flamewrought Seal [BoP]
					i(202145, {["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_0_5 }}),	-- Frozen Claw Mantle [BoP]
					i(202150, {["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_0_5 }}),	-- Galvanic Gaiters [BoP]
					i(202144, {["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_0_5 }}),	-- Greathelm of Horned Fury [BoP]
					i(202151, {["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_0_5 }}),	-- Lavamancer's Ceremonial Waistguard [BoP]
					i(202147, {["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_0_5 }}),	-- Primal Seeker's Leggings [BoP]
					i(202149, {["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_0_5 }}),	-- Primalist Warden's Bracers [BoP]
					i(202143, {["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_0_5}}),	-- Woven Stone Bracelets [BoP]
				}),
				Boss(ERANOG, {
					ach(16346),	-- Mythic: Eranog
				}),
				Boss(TERROS, {
					ach(16347),	-- Mythic: Terros
				}),
				Boss(THE_PRIMAL_COUNCIL, {
					ach(16348),	-- Mythic: The Primal Council
				}),
				Boss(SENNARTH, {
					ach(16349),	-- Mythic: Sennarth, The Cold Breath
				}),
				Boss(DATHEA, {
					ach(16350),	-- Mythic: Dathea, Ascended
				}),
				Boss(KUROG, {
					ach(16351),	-- Mythic: Kurog Grimtotem
				}),
				Boss(DIURNA, {
					ach(16352),	-- Mythic: Broodkeeper Diurna
				}),
				Boss(RASZAGETH, {
					ach(16353, {	-- Mythic: Raszageth the Storm-Eater
						title(488),	-- <Name> the Storm-Eater
					}),
					ach(16358),		-- Mythic: Raszageth the Storm-Eater Guild Run
					ach(17108, {["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 }}),	-- Cutting Edge: Raszageth the Storm-Eater
					ach(17116, {	-- Hall of Fame: Raszageth the Storm-Eater (A)
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 },
						["groups"] = {
							title(487),	-- <Name>, Famed Slayer of Raszageth
						},
					}),
					ach(17118, {	-- Hall of Fame: Raszageth the Storm-Eater (H)
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 },
						["groups"] = {
							title(487),	-- <Name>, Famed Slayer of Raszageth
						},
					}),
				}),
			}),
		},
	}),
}))

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, {
	inst(1200, {	-- Vault of the Incarnates
		["timeline"] = { ADDED_10_0_2_LAUNCH },
		["groups"] = {
			q(72264),	-- 'Anicent Vault Artifact' first drop per week
			q(72612),	-- Volcanius (trash)
			q(70076),	-- Eranog (N)
			q(70085),	-- Eranog (N)
			q(72265),	-- Eranog (N)
			q(70093),	-- Eranog (H)
			q(70102),	-- Eranog (M)
			q(72613),	-- Braekkas (trash)
			q(72614),	-- Council Gauntlet (trash)
			q(70080),	-- Terros (N)
			q(70088),	-- Terros (N)
			q(72273),	-- Terros (N)
			q(70096),	-- Terros (H)
			q(70105),	-- Terros (M)
			q(70077),	-- The Primal Council (N)
			q(70086),	-- The Primal Council (N)
			q(72271),	-- The Primal Council (N)
			q(70094),	-- The Primal Council (H)
			q(70103),	-- The Primal Council (M)
			q(72615),	-- Thondrozus (trash)
			q(70078),	-- Dathea (N)
			q(70087),	-- Dathea (N)
			q(72272),	-- Dathea (N)
			q(70095),	-- Dathea (H)
			q(70104),	-- Dathea (M)
			q(72616),	-- Iskakx (trash)
			q(72617),	-- Kaurdyth (trash)
			q(70081),	-- Sennarth (N)
			q(70089),	-- Sennarth (N)
			q(72274),	-- Sennarth (N)
			q(70097),	-- Sennarth (H)
			q(70106),	-- Sennarth (M)
			q(70082),	-- Kurog Grimtotem (N)
			q(70090),	-- Kurog Grimtotem (N)
			q(72275),	-- Kurog Grimtotem (N)
			q(70098),	-- Kurog Grimtotem (H)
			q(70107),	-- Kurog Grimtotem (M)
			q(72618),	-- Broodguardian Ziruss (trash)
			q(70083),	-- Broodkeeper Diurna (N)
			q(70091),	-- Broodkeeper Diurna (N)
			q(72276),	-- Broodkeeper Diurna (N)
			q(70099),	-- Broodkeeper Diurna (H)
			q(70108),	-- Broodkeeper Diurna (M)
			q(70084),	-- Raszageth the Storm-Eater (N)
			q(70092),	-- Raszageth the Storm-Eater (N)
			q(72277),	-- Raszageth the Storm-Eater (N)
			q(70101),	-- Raszageth the Storm-Eater (H)
			q(70109),	-- Raszageth the Storm-Eater (M)
		},
	}),
}))
