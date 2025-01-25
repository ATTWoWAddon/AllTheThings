-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local ATTICUS_GROUP = {
	i(175757),	-- Construct Supply Key
	i(180276),	-- Locked Toolbox Key
	i(181317, {	-- Dauntless Duskrunner	(MOUNT!)
		["cost"] = { { "c", ANIMA, 5000 } },
	}),
	i(181300, {	-- Gruesome Flayedwing (MOUNT!)
		["cost"] = { { "c", ANIMA, 5000 } },
	}),
	i(180726, {	-- Pale Acidmaw (MOUNT!)
		["cost"] = { { "c", ANIMA, 5000 } },
	}),
	i(181316, {	-- Silvertip Dredwing (MOUNT!)
		["cost"] = { { "c", ANIMA, 5000 } },
	}),
	i(181315, {	-- Bloodfeaster Spiderling (PET!)
		["cost"] = { { "c", ANIMA, 1000 } },
	}),
	i(180815, {	-- Brightscale Hatchling (PET!)
		["cost"] = { { "c", ANIMA, 1000 } },
	}),
	i(181168, {	-- Corpulent Bonetusk (PET!)
		["cost"] = { { "c", ANIMA, 1000 } },
	}),
	i(180639, {	-- Dusty Sporeflutterer (PET!)
		["cost"] = { { "c", ANIMA, 1000 } },
	}),
	i(180628, {	-- Pearlwing Heron (PET!)
		["cost"] = { { "c", ANIMA, 1000 } },
	}),
	i(181264, {	-- Plaguelouse Larva (PET!)
		["cost"] = { { "c", ANIMA, 1000 } },
	}),
	i(180814, {	-- Sable (PET!)
		["cost"] = { { "c", ANIMA, 1000 } },
	}),
	i(180603, {	-- Violet Dredwing Pup (PET!)
		["cost"] = { { "c", ANIMA, 1000 } },
	}),
};
local ASCENDED_CHEST_OF_ARMS = {
	i(181225),		-- Crossbow of Contemplative Calm
	i(181226),		-- Bronze Dual-Bladed Glaive
	i(181232),		-- Cupbearer's Claymore
	i(181234),		-- Dutybound Spellblade
	i(181228),		-- Temple Guard's Partisan
	i(181229),		-- Tranquil's Censer
	i(181230),		-- Pugilist's Chakram
	i(181233),		-- Bellringer's Hammer
	i(181227),		-- Bronze Ceremonial Targe
	i(181231),		-- Broadbladed Severer
	i(181235),		-- Final Arbiter's Gavel
};
local MARTIAL_TITHE_OF_THE_COURT_OF_HARVESTERS = {
	i(180955),		-- Stonewing Halberd
	i(180956),		-- Axeblade Blunderbuss
	i(180957),		-- Batwing Glaive
	i(180963),		-- Crypt Keeper's Vessel
	i(180954),		-- Crypt Watcher's Spire
	i(180959),		-- Dredger Anklebiter
	i(180960),		-- Shiny-Metal Topped Basher
	i(180954),		-- Ember Court Barrier
	i(180958),		-- Redelev House Foil
	i(180961),		-- Silver-Bladed Ritual Dagger
	i(180962),		-- Sterling-Silver Cudgel
};
local UNDYING_ARMOY_WEAPON_CACHE = {
	i(181329),		-- Marrowfused Claymore
	i(181321),		-- Gem-Crowned Wand
	i(181327),		-- Spineforged Tenderizer
	i(181330),		-- Marrowfused Warglaive
	i(181325),		-- Marrowfused Dagger
	i(181328),		-- Marrowfused Sword
	i(181331),		-- Marrowfused Shield
	i(181326),		-- Bloodstained Hacksaw
	i(181323),		-- Blightclutched Greatstaff
	i(181320),		-- Bonejowl Ballista
	i(181322),		-- Bonebound Tome
};
local WEAPON_SATCHEL_OF_THE_WILD_HUNT = {
	i(179548),		-- Elderwood Gavel
	i(179563),		-- Heartwood Stem
	i(179499),		-- Nightwillow Barb
	i(179538),		-- Grove Warden's Maul
	i(179605),		-- Elderwood Barrier
	i(179514),		-- Ripvine Saber
	i(179585),		-- Nightwillow Shortbow
	i(179509),		-- Grove Warden's Edge
	i(179516),		-- Songwood Staff
	i(179533),		-- Grove Warden's Harvester
};

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_NEC" }, {
	n(NECROLORD, {
		n(SANCTUM_UPGRADES, {
			["icon"] = 3641396,
			["g"] = {
				n(ABOMINATION_FACTORY, {
					["maps"] = {
						MALDRAXXUS,
					},
					["g"] = {
						prof(ABOMINABLE_STITCHING, {
							n(CRAFTABLES, {
								i(180264),	-- Abominable Backup
								i(178594),	-- Anima-bound Wraps
								i(181268),	-- Backbone (PET!)
								i(178568),	-- Bag of Creepy Crawlies
								i(182160),	-- Bag of Twigin Treats
								i(183717),	-- Bindings of Wellbeing
								i(182078),	-- Bonesewn Fleshroc (MOUNT!)
								i(180275),	-- Construct Disguise
								i(183811),	-- Construct's Best Friend
								i(180267),	-- Lil' Eddie
								i(181282),	-- Mu'dud (PET!)
								i(178658),	-- Restore Construct
								i(184606),	-- Tighter Stitching
								i(183599),	-- Tossable Head
							}),
							filter(RECIPES, {
								r(327091), -- Abominable Backup
								r(326903), -- Anima-bound Wraps
								r(342849), -- Armor Plating
								r(344796), -- Back Mushrooms
								r(338057), -- Backbone
								r(326762), -- Bag of Creepy Crawlies
								r(338059), -- Bag of Twigin Treats
								r(344110), -- Barrel O' Fish
								r(338046, {["u"]=TRAINING}), -- Bindings of Wellbeing
								r(338052, {["u"]=TRAINING}), -- Bonesewn Fleshroc
								r(342846), -- Butterflies
								r(344100), -- Chef Hat
								r(342841), -- Collector Kash's Pack
								r(325454, {["u"]=TRAINING}), -- Construct Body: "Atticus"
								r(325284, {["u"]=TRAINING}), -- Construct Body: "Chordy"
								r(325453, {["u"]=TRAINING}), -- Construct Body: "Flytrap"
								r(326380, {["u"]=TRAINING}), -- Construct Body: "Gas Bag"
								r(338039, {["u"]=TRAINING}), -- Construct Body: "Guillotine"
								r(338037, {["u"]=TRAINING}), -- Construct Body: "Iron Phillip"
								r(326408, {["u"]=TRAINING}), -- Construct Body: "Mama Tomalin"
								r(325452, {["u"]=TRAINING}), -- Construct Body: "Marz"
								r(325458, {["u"]=TRAINING}), -- Construct Body: "Miru"
								r(338043, {["u"]=TRAINING}), -- Construct Body: "Naxx"
								r(326379, {["u"]=TRAINING}), -- Construct Body: "Neena"
								r(326406, {["u"]=TRAINING}), -- Construct Body: "Professor"
								r(325451, {["u"]=TRAINING}), -- Construct Body: "Roseboil"
								r(338040, {["u"]=TRAINING}), -- Construct Body: "Sabrina"
								r(326407, {["u"]=TRAINING}), -- Construct Body: "Toothpick"
								r(331404), -- Construct Disguise
								r(342803), -- Construct's Best Friend
								r(337535), -- Dapper Top Hat
								r(344095), -- Dundae's Hat
								r(344101), -- Egg Hat
								r(342418), -- Engineering Pack
								r(342843, {["u"]=TRAINING}), -- Faction Flag
								r(342447), -- Flower Crown
								r(342448), -- Halo of Purity
								r(342468), -- Happiness Bird
								r(342902), -- Hitchhiker
								r(338383), -- Holiday Hat
								r(331403), -- Lil' Eddie
								r(344096), -- Lovely Candle Display
								r(342851), -- Magician's Hat
								r(338058), -- Mu'dud
								r(342421), -- Operational Instructions
								r(337540), -- Outlaw Flag
								r(344769), -- Pirate Hat
								r(342850), -- Plague Pack
								r(342455), -- Red Eye Lens
								r(327090), -- Restore Construct
								r(342842), -- Safe Fall Pack
								r(344798), -- Shoulder Sprouts
								r(342483), -- Six-League Pack
								r(344766), -- Skull Fungus
								r(342454), -- Skull Protector
								r(342899), -- Spare Weapon
								r(342845), -- Sticky Cat
								r(347024), -- Tighter Stitching
								r(342782), -- Tossable Head
								r(344097), -- Trained Corpselice
								r(337554), -- Trustworthy Doll
								r(344797), -- Underpowered Gravity Pack
								r(344770), -- Unworthy Crown
								r(342417), -- Vestigial Wings
							}),
						}),
						n(ACHIEVEMENTS, {
							ach(14684, {	-- Abominable Lives
								["sym"] = {{ "achievement_criteria" }},
							}),
							ach(14833, {	-- Fashion Abomination
								crit(50541, {	-- Chef Hat
									["cost"] = {
										{ "i", 184039,  1 },	-- 1 Clean White Hat
										{ "i", 173202, 10 },	-- 10 Shrouded Cloth
									},
								}),
								crit(49864, {	-- Dapper Top Hat
									["cost"] = {
										{ "i", 181799,  1 },	-- 1 Extra Large Hat
										{ "i", 173202, 10 },	-- 10 Shrouded Cloth
									},
								}),
								crit(50546, {	-- Dundae's Hat
									["cost"] = {
										{ "i", 184036,  1 },	-- 1 Dundae's Hat
										{ "i", 173202, 10 },	-- 10 Shrouded Cloth
									},
								}),
								crit(50550, {	-- Egg Hat
									["cost"] = {
										{ "i", 184040, 1 },	-- 1 Broken Egg Shells
										{ "i", 178061, 3 },	-- 3 Malleable Flesh
									},
								}),
								crit(49865, {	-- Flower Crown
									["cost"] = {
										{ "i", 183755, 1 },	-- 1 Ardenweald Wreath
										{ "i", 170554, 5 },	-- 5 Vigil's Torch
									},
								}),
								crit(49866, {	-- Halo of Purity
									["cost"] = {
										{ "i", 183756, 1 },	-- 1 Floating Circlet
										{ "i", 173110, 3 },	-- 3 Umbryl
									},
								}),
								crit(49867, {	-- Holiday Hat
									["cost"] = {
										{ "i", 178061, 3 },	-- 3 Malleable Flesh
										{ "i", 2604, 1 },	-- 1 Red Dye
										{ "i", 8343, 3 },	-- 3 Heavy Silken Thread
									},
								}),
								crit(49916, {	-- Magician's Hat
									["cost"] = {
										{ "i", 183826,  1 },	-- 1 Big Floppy Hat
										{ "i", 173202, 10 },	-- 10 Shrouded Cloth
									},
								}),
								crit(50549, {	-- Pirate Hat
									["cost"] = {
										{ "i", 184204,  1 },	-- 1 Otherworld Hat
										{ "i", 173202, 20 },	-- 20 Shrouded Cloth
									},
								}),
								crit(49868, {	-- Red Eye Lens
									["cost"] = {
										{ "i", 183760, 1 },	-- 1 Venthyr Spectacles
										{ "i", 180733, 5 },	-- 5 Luminous Flux
										{ "i", 172934, 5 },	-- 5 Handful of Laestrite Bolts
									},
								}),
								crit(50551, {	-- Skull Fungus
									["cost"] = {
										{ "i", 184203, 1 },	-- 1 Fungal Hair Tonic
										{ "i", 178061, 3 },	-- 3 Malleable Flesh
									},
								}),
								crit(49869, {	-- Skull Protector
									["cost"] = {
										{ "i", 183759, 1 },	-- 1 Unusually Large Cranium
										{ "i", 178061, 3 },	-- 3 Malleable Flesh
									},
								}),
								crit(50553, {	-- Unworthy Crown
									["cost"] = {
										{ "i", 184205, 1 },	-- 1 Long-Lost Crown
										{ "i", 171840, 5 },	-- 5 Porous Stone
									},
								}),
								crit(49871, {	-- Happiness Bird
									["cost"] = {
										{ "i", 183786, 1 },	-- 1 Happiness Bird
										{ "i", 178061, 3 },	-- 3 Malleable Flesh
									},
								}),
								crit(49926, {	-- Hitchhiker
									["cost"] = {
										{ "i", 184225, 1 },	-- 1 Small Posable Skeleton
										{ "i", 178061, 5 },	-- 5 Malleable Flesh
									},
								}),
								crit(50554, {	-- Lovely Candle Display
									["cost"] = {
										{ "i", 184037, 1 },	-- 1 Maldraxxus Candles
									},
								}),
								crit(50556, {	-- Shoulder Sprouts
									["cost"] = {
										{ "i", 184203, 1 },	-- 1 Fungal Hair Tonic
										{ "i", 178061, 3 },	-- 3 Malleable Flesh
									},
								}),
								crit(49918, {	-- Sticky Cat
									["cost"] = {
										{ "i", 183829, 1 },	-- 1 Slime Cat
										{ "i", 178061, 3 },	-- 3 Malleable Flesh
									},
								}),
								crit(50560, {	-- Trained Corpselice
									["cost"] = {
										{ "i", 184038, 1 },	-- 1 Trained Corpselice
										{ "i", 178061, 3 },	-- 3 Malleable Flesh
									},
								}),
								crit(49870, {	-- Trustworthy Doll
									["cost"] = {
										{ "i", 181798, 1 },	-- 1 Stuffed Construct
										{ "i", 178061, 3 },	-- 3 Malleable Flesh
									},
								}),
								crit(49922, {	-- Armor Plating
									["cost"] = {
										{ "i", 183827, 1 },	-- 1 Blacksteel Backplate
										{ "i", 171840, 5 },	-- 5 Porous Stone
									},
								}),
								crit(50558, {	-- Back Mushrooms
									["cost"] = {
										{ "i", 184224, 1 },	-- 1 Dapperling Seeds
										{ "i", 184203, 1 },	-- 1 Fungal Hair Tonic
										{ "i", 178061, 5 },	-- 5 Malleable Flesh
									},
								}),
								crit(49919, {	-- Collector Kash's Pack
									["cost"] = {
										{ "i", 183833, 1 },	-- 1 Kash's Bag of Junk
										{ "i", 178061, 3 },	-- 3 Malleable Flesh
									},
								}),
								crit(49872, {	-- Engineering Pack
									["cost"] = {
										{ "i", 183752,  1 },	-- 1 Empty Nightcap Cask
										{ "i", 180733, 10 },	-- 10 Luminous Flux
										{ "i", 172934, 10 },	-- 10 Handful of Laestrite Bolts
									},
								}),
								crit(49921, {	-- Plague Pack
									["description"] = "You need to obtain either Grungy Containment Pack or Pristine Containment Pack to be able to see this at the crafting table.",
									["cost"] = {
										{ "i", 183744, 5 },	-- 5 Superior Parts
										{ "i", 184156, 1 },	-- 1xPristine Containment Pack
										{ "i", 184154, 1 },	-- 1xGrungy Containment Pack
									},
								}),
								crit(49920, {	-- Safe Fall Pack
									["cost"] = {
										{ "i", 183831,  1 },	-- 1 Safe Fall Kit
										{ "i", 173202, 10 },	-- 10 Shrouded Cloth
									},
								}),
								crit(49874, {	-- Six-League Pack
									["cost"] = {
										{ "i", 183789, 1 },	-- 1 Six-League Pack
										{ "i", 178061, 3 },	-- 3 Malleable Flesh
									},
								}),
								crit(49875, {	-- Vestigial Wings
									["cost"] = {
										{ "i", 183744,  3 },	-- 3 Superior Parts
										{ "i", 178061, 10 },	-- 10 Malleable Flesh
										{ "i", 172054, 30 },	-- 30 Raw Seraphic Wing
									},
								}),
								crit(49925, {	-- Barrel O' Fish
									["description"] = "Becomes available at max Shadowlands Fishing skill.",
									["requireSkill"] = FISHING,
									["cost"] = {
										{ "i", 173032, 5 },	-- 5 Lost Sole
										{ "i", 173033, 5 },	-- 5 Iridescent Amberjack
										{ "i", 173034, 5 },	-- 5 Silvergill Pike
										{ "i", 173035, 5 },	-- 5 Pocked Bonefish
										{ "i", 173036, 5 },	-- 5 Spinefin Piranha
									},
								}),
								crit(50559, {	-- Underpowered Gravity Pack
									["description"] = "Your character must have unlocked Mechagon and learned the blueprint for Anti-Gravity Pack, and constructed rank 4 of the Abomination table, for this recipe to become available.",
									["cost"] = {
										{ "i", 169610,  3 },	-- 3 S.P.A.R.E. Crate
										{ "i", 166970, 10 },	-- 10 Energy Cell
									},
								}),
								crit(49923, {	-- Butterflies
									["cost"] = {
										{ "i", 183828, 1 },	-- 1 Friendly Bugs
										{ "i", 178061, 3 },	-- 3 Malleable Flesh
									},
								}),
								crit(49917, {	-- Spare Weapon
									["cost"] = {
										{ "i", 183824, 1 },	-- 1 Cache of Spare Weapons
									},
								}),
								crit(49924, {	-- Faction Flag
									["cost"] = {
										{ "i", 183830,  1 },	-- 1 Do It Yourself Flag Kit
										{ "i", 173202, 10 },	-- 10 Shrouded Cloth
									},
								}),
								crit(49876, {	-- Operational Instructions
									["cost"] = {
										{ "i", 183754, 1 },	-- 1 Stitchflesh's Design Notes
										{ "i", 175886, 5 },	-- 5 Dark Parchment
									},
								}),
								crit(49873, {	-- Outlaw Flag
									["cost"] = {
										{ "i", 181797,  1 },	-- 1 Strange Cloth
										{ "i", 173202, 20 },	-- 20 Shrouded Cloth
									},
								}),
							}),
							ach(14753, {	-- It's a Wrap
								["cost"] = { { "i", 178594, 100 } },	-- 100 Anima-bound Wraps
							}),
							ach(14751, {	-- The Gang's All Here
								["sym"] = {{ "achievement_criteria" }},
								["g"] = {
									i(182074),		-- Chosen Tauralus (MOUNT!)
								},
							}),
							ach(14764, {	-- The Great Luckydo
								["description"] = "Possible to find the Great Luckydo when Chordy finds treasure.",
								["provider"] = { "i", 178554 },	-- Call Chordy
								["crs"] = {
									--158259,	-- Chordy (as pet) - All summonable pets from Abomination Factory use same ID, don't use this.
									161270,	-- Chordy (in world)
									167828,	-- Salvageable Items (lootable treasure in world)
								},
								["g"] = {
									i(183804),	-- The Great Luckydo
								},
							}),
							ach(14752, {	-- Things To Do When You're Dead
								i(181820),	-- Armored Chosen Tauralus (MOUNT!)
								title(437),	-- Abominable
							}),
							ach(14748, {	-- Wardrobe Makeover
								["sym"] = {{"partial_achievement",14833}},	-- Fashion Abomination
							}),
						}),
						n(FACTIONS, {
							faction(FACTION_THE_STITCHMASTERS),	-- Stitchmasters
						}),
						n(REWARDS, {
							i(184304, {	-- Anima-Touched Weapon Fragments
								["description"] = "Rewarded by the Weekly Quests from your Constructs and Chordy's Treasure Finding.",
							}),
							i(178061, {	-- Malleable Flesh
								["description"] = "Rewarded by any Shadowlands Activity.",
							}),
							i(184843, {	-- Salvaged Supplies
								["description"] = "Rewarded by the Weekly Quests from your Constructs.",
							}),
							i(183744, {	-- Superior Parts
								["description"] = "Rewarded by the Weekly Quests from your Constructs and Command Table.",
							}),
						}),
						n(TIER_ONE, {
							["icon"] = 3622121,
							["g"] = {
								n(167042, {	-- Abominable Stitching Table
									["coord"] = { 55.0, 68.8, MALDRAXXUS },
									["g"] = {
										q(58410, {
											["name"] = "Construct Body: Atticus",
											["cost"] = {
												{ "i", 178061, 10 },	-- 10xMalleable Flesh
											},
										}),
										q(57597, {
											["name"] = "Construct Body: Flytrap",
											["cost"] = {
												{ "i", 178061, 10 },	-- 10xMalleable Flesh
												{ "i", 183744, 2 },		-- 2xSuperior Parts
											},
										}),
										q(57611, {
											["name"] = "Construct Body: Marz",
											["cost"] = {
												{ "i", 178061, 10 },	-- 10xMalleable Flesh
												{ "i", 183744, 1 },		-- 1xSuperior Parts
											},
										}),
										q(58415, {
											["sourceQuests"] = { 60264 },	-- Soul Survivor
											["name"] = "Construct Body: Miru",
											["cost"] = {
												{ "i", 178061, 20 },	-- 20xMalleable Flesh
											},
										}),
										q(57605, {
											["name"] = "Construct Body: Roseboil",
											["cost"] = {
												{ "i", 178061, 10 },	-- 10xMalleable Flesh
												{ "i", 183744, 1 },		-- 1xSuperior Parts
											},
										}),
									},
								}),
								n(161270, {	-- Chordy
									["sourceQuests"] = { 60041 },	-- Build-A-Bomination
									["coord"] = { 55.1, 68.6, MALDRAXXUS },
									["g"] = {
										i(182489, {	-- Stitched Harbinger's Greatcloak
											["description"] = "This cloak is only awarded to plate characters.",
										}),
										i(182498, {	-- Stitched Wraith's Cloak
											["description"] = "This cloak is only awarded to leather characters.",
										}),
										i(182507, {	-- Stitched Conjurer's Cape
											["description"] = "This cloak is only awarded to cloth characters.",
										}),
										i(182516, {	-- Stitched Tactician's Drape
											["description"] = "This cloak is only awarded to mail characters.",
										}),
									},
								}),
								n(158300, {	-- Flytrap
									["sourceQuests"] = { 57597 },	-- Construct Body: Flytrap
									["coord"] = { 54.3, 68.1, MALDRAXXUS },
									["crs"] = { 167157 },	-- Flytrap (Ghost)
									["g"] = {
										i(182501),	-- Stitched Conjurer's Slippers
										i(182483),	-- Stitched Harbinger's Stompers
										i(182510),	-- Stitched Tactician's Sabatons
										i(182492),	-- Stitched Wraith's Boots
									},
								}),
								n(158301, {	-- Marz
									["sourceQuests"] = { 57611 },	-- Construct Body: Marz
									["coord"] = { 54.2, 68.6, MALDRAXXUS },
									["crs"] = { 167162 },	-- Marz (Ghost)
									["g"] = {
										i(182482),	-- Stitched Harbinger's Chestguard
										i(182500),	-- Stitched Conjurer's Tunic
										i(182491),	-- Stitched Wraith's Jerkin
										i(182509),	-- Stitched Tactician's Hauberk
									},
								}),
								n(159241, {	-- Roseboil
									["sourceQuests"] = { 57605 },	-- Construct Body: Roseboil
									["coord"] = { 55.1, 68.1, MALDRAXXUS },
									["crs"] = { 167159 },	-- Roseboil (Ghost)
									["g"] = {
										i(182496),	-- Stitched Wraith's Belt
										i(182487),	-- Stitched Harbinger's Warbelt
										i(182505),	-- Stitched Conjurer's Cinch
										i(182514),	-- Stitched Tactician's Girdle
									},
								}),
								n(QUESTS, {
									q(61510, {	-- A Bountiful Haul
										["sourceQuests"] = { 60041 },	-- Build-A-Bomination
										["provider"] = { "n", 161270 },    -- Chordy
										["coord"] = { 55.1, 68.6, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(178554),	-- Call Chordy (QI!)
											i(174101),	-- Valuable Salvage (QI!)
										},
									}),
									q(62213, {    -- A Brokered Deal
										["sourceQuests"] = { 58410 },	-- Construct Body: Atticus
										["provider"] = { "n", 159238 },    -- Atticus
										["coord"] = { 55.3, 68.3, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["maps"] = {
											1717,	-- Chill's Reach
										},
										["g"] = {
											i(183119),	-- Broker Bauble (QI!)
											i(178678),	-- Call Atticus (QI!)
											i(178681),	-- Slim Shinbone (QI!)
										},
									}),
									q(59042, {	-- A Good Heart
										["sourceQuests"] = { 58686 },	-- Weapon of Mass Construction
										["provider"] = { "n", 162222 },	-- Rathan
										["coord"] = { 24.2, 38.6, MALDRAXXUS },
									}),
									q(59747, {    -- A Lost Soul
										["description"] = "Pull the chain on the right side of the vault as you enter.",
										["providers"] = {
											{ "n", 166096 },	-- Miru Soulblossom
											{ "o", 350972 },	-- Cell Portcullis Chain
										},
										["coords"] = {
											{ 32.9, 33.3, 1649 },	-- Etheric Vault
											{ 58.3, 36.2, 1649 },	-- Chain to pull [60166]
											{ 24.5, 31.5, MALDRAXXUS },	-- Vault entrance
										},
									}),
									q(58727, {	-- A Place To Call Home
										["sourceQuests"] = { 58671 },	-- Bottled Up Inside
										["provider"] = { "n", 162174 },	-- Emeni
										["coord"] = { 24.9, 31.7, MALDRAXXUS },
									}),
									q(63058, {	-- Abominable Stitching and Me
										-- TODO: is this a breadcrumb to 60041?
										["provider"] = { "n", 161909 },	-- Arkadia Moa
										["coord"] = { 52.4, 38.4, SEAT_OF_THE_PRIMUS },
									}),
									q(62232, {	-- Arboreal Tactics
										["sourceQuests"] = { 57611 },	-- Construct Body: Marz
										["provider"] = { "n", 158301 },    -- Marz
										["coord"] = { 54.2, 68.6, MALDRAXXUS },
										["crs"] = {
											167162,	-- Marz (Ghost)
										},
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(178679),	-- Call Marz (QI!)
										},
									}),
									q(62256, {    -- Asset Extraction
										["sourceQuests"] = { 58410 },	-- Construct Body: Atticus
										["provider"] = { "n", 159238 },    -- Atticus
										["coord"] = { 55.3, 68.3, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(178678),	-- Call Atticus (QI!)
											i(183166),	-- Nidore Ocularis (QI!)
											i(183130),	-- Otherworldly Egg (QI!)
											i(178681),	-- Slim Shinbone (QI!)
										},
									}),
									q(60049, {	-- At Your Service
										["sourceQuests"] = { 58727 },	-- A Place To Call Home
										["provider"] = { "n", 167044 },	-- Emeni
										["coord"] = { 55.1, 68.7, MALDRAXXUS },
									}),
									q(58671, {	-- Bottled Up Inside
										["sourceQuests"] = { 59042 },	-- A Good Heart
										["provider"] = { "n", 162174 },	-- Emeni
										["coord"] = { 23.8, 39.1, MALDRAXXUS },
									}),
									q(60041, {	-- Build-A-Bomination
										["sourceQuests"] = {
											60048,	-- Stitching Time
											63058,	-- Abominable Stitching and Me
										},
										["provider"] = { "n", 167150 },	-- Rathan
										["coord"] = { 55.1, 68.8, MALDRAXXUS },
										["cost"] = {
											{ "i", 178061, 1 },	-- 1xMalleable Flesh
										},
										["_drop"] = { "g" },
										["g"] = {
											i(183743), -- Malleable Flesh (QI!)
										},
									}),
									q(60195, {	-- Build One More
										["sourceQuests"] = { 60042 },	-- May I Take Your Order?
										["provider"] = { "n", 167150 },	-- Rathan
										["coord"] = { 55.1, 68.8, MALDRAXXUS },
										["g"] = {
											i(183830),	-- Do It Yourself Flag Kit
										},
									}),
									header(HEADERS.Quest, 60291, {	-- Triggered when completing 'Corspe Run' for the first time
										["questID"] = 62535,
										["sourceQuests"] = {
											60291,	-- Corpse Run
											61522,	-- Corpse Run
											61523,	-- Corpse Run
										},
										-- achievement_criteria
									}),
									q(60291, {    -- Corpse Run
										["sourceQuests"] = { 57597 },	-- Construct Body: Flytrap
										["provider"] = { "n", 158300 },    -- Flytrap
										["coord"] = { 54.3, 68.1, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(178599),	-- Call Flytrap (QI!)
										},
									}),
									q(61522, {	-- Corpse Run
										["sourceQuests"] = { 57597 },	-- Construct Body: Flytrap
										["provider"] = { "n", 158300 },    -- Flytrap
										["coord"] = { 54.3, 68.1, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(178599),	-- Call Flytrap (QI!)
										},
									}),
									q(61523, {	-- Corpse Run
										["sourceQuests"] = { 57597 },	-- Construct Body: Flytrap
										["provider"] = { "n", 158300 },    -- Flytrap
										["coord"] = { 54.3, 68.1, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(178599),	-- Call Flytrap (QI!)
										},
									}),
									q(60765, {    -- Cure For All Ills
										["sourceQuests"] = { 57605 },	-- Construct Body: Roseboil
										["provider"] = { "n", 159241 },    -- Roseboil
										["crs"] = {
											167159,	-- Roseboil (Ghost)
										},
										["coord"] = { 55.1, 68.1, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(178680),	-- Call Roseboil (QI!)
										},
									}),
									q(62217, {	-- Field Training
										["sourceQuests"] = { 57611 },	-- Construct Body: Marz
										["provider"] = { "n", 158301 },    -- Marz
										["crs"] = {
											167162,	-- Marz (Ghost)
										},
										["coord"] = { 54.2, 68.6, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(178679),	-- Call Marz (QI!)
										},
									}),
									q(58668, {	-- Find The Way
										["sourceQuests"] = { 58665 },	-- Rebellious Souls
										["provider"] = { "n", 162153 },	-- Rathan
										["coord"] = { 26.0, 42.6, MALDRAXXUS },
									}),
									q(62041, {	-- In A Bad Light
										["sourceQuests"] = { 57605 },	-- Construct Body: Roseboil
										["provider"] = { "n", 159241 },    -- Roseboil
										["crs"] = {
											167159,	-- Roseboil (Ghost)
										},
										["coord"] = { 55.1, 68.1, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(178680),	-- Call Roseboil (QI!)
										},
									}),
									q(58680, {	-- Loose Threads
										["sourceQuests"] = { 58668 },	-- Find The Way
										["provider"] = { "n", 162227 },	-- Rathan
										["coord"] = { 24.2, 38.8, MALDRAXXUS },
										["g"] = {
											i(174526),	-- Clotting Patches (QI!)
											i(174534),	-- Razorthread Spool (QI!)
											i(174524),	-- Skewering Needle (QI!)
										},
									}),
									q(60042, {	-- May I Take Your Order?
										["sourceQuests"] = { 60041 },	-- Build-A-Bomination
										["provider"] = { "n", 167150 },	-- Rathan
										["coord"] = { 55.1, 68.8, MALDRAXXUS },
									}),
									q(58665, {	-- Rebellious Souls
										["sourceQuests"] = { 59609 },	-- No Rest For the Dead
										["provider"] = { "n", 162222 },	-- Rathan
										["coord"] = { 48.0, 50.2, SEAT_OF_THE_PRIMUS },
									}),
									q(61509, {	-- Shinies of Bastion
										["sourceQuests"] = { 60041 },	-- Build-A-Bomination
										["provider"] = { "n", 161270 },	-- Chordy
										["coord"] = { 55.1, 68.6, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(178554),	-- Call Chordy (QI!)
											i(174101),	-- Valuable Salvage (QI!)
										},
									}),
									q(58677, {	-- Skin in the Game
										["sourceQuests"] = { 58668 },	-- Find The Way
										["provider"] = { "n", 161285 },	-- Emeni
										["coord"] = { 24.1, 38.7, MALDRAXXUS },
										["g"] = {
											i(174520),	-- Emeni's Magnificent Skin (QI!)
											i(181456),	-- Faldo's Key (QI!)
										},
									}),
									q(58432, {	-- Something Old, Something Used
										["sourceQuests"] = { 60041 },	-- Build-A-Bomination
										["provider"] = { "n", 161270 },	-- Chordy
										["coord"] = { 55.1, 68.6, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(178554),	-- Call Chordy (QI!)
											i(174101),	-- Valuable Salvage (QI!)
										},
									}),
									q(60264, {    -- Soul Survivor
										["sourceQuests"] = { 59747 },    -- A Lost Soul
										["provider"] = { "n", 167877 },    -- Miru Soulblossom
										["coord"] = { 55.0, 68.2, MALDRAXXUS },
									}),
									q(60048, {	-- Stitching Time
										["sourceQuests"] = { 58727 },	-- A Place To Call Home
										["provider"] = { "n", 167150 },	-- Rathan
										["coord"] = { 55.1, 68.8, MALDRAXXUS },
									}),
									q(59126, {	-- Supply Chain
										["sourceQuests"] = { 58410 },	-- Construct Body: Atticus
										["provider"] = { "n", 159238 },    -- Atticus
										["coord"] = { 55.3, 68.3, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(178682),	-- Atticus's Ledger (QI!)
											i(178678),	-- Call Atticus (QI!)
											i(175133),	-- Ossein Battlemail (QI!)
											i(178681),	-- Slim Shinbone (QI!)
										},
									}),
									q(58670, {	-- The Slaughter Daughter
										["sourceQuests"] = { 59042 },	-- A Good Heart
										["provider"] = { "n", 162174 },	-- Emeni
										["coord"] = { 23.8, 39.1, MALDRAXXUS },
									}),
									q(61511, {	-- Things They Leave Behind
										["sourceQuests"] = { 60041 },	-- Build-A-Bomination
										["provider"] = { "n", 161270 },	-- Chordy
										["coord"] = { 55.1, 68.6, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(178554),	-- Call Chordy (QI!)
											i(174101),	-- Valuable Salvage (QI!)
										},
									}),
									q(62216, {	-- Training Program
										["sourceQuests"] = { 57611 },	-- Construct Body: Marz
										["provider"] = { "n", 158301 },    -- Marz
										["crs"] = {
											167162,	-- Marz (Ghost)
										},
										["coord"] = { 54.2, 68.6, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(178679),	-- Call Marz (QI!)
										},
									}),
									q(58686, {	-- Weapon of Mass Construction
										["sourceQuests"] = {
											58680,	-- Loose Threads
											58677,	-- Skin in the Game
										},
										["provider"] = { "n", 162227 },	-- Rathan
										["coord"] = { 24.2, 38.8, MALDRAXXUS },
									}),
								}),
								n(161270, {	-- Chordy
									["description"] = "These abomination crafting reagents can randomly be found using Chordy's ability in any Shadowlands zone",
									["crs"] = {
										--158259,	-- Chordy (as pet) - All summonable pets from Abomination Factory use same ID, don't use this.
										161270,	-- Chordy (in world)
										167828,	-- Salvageable Items (lootable treasure in world)
									},
									["g"] = {
										i(184205),	-- Long-Lost Crown
										i(184204),	-- Otherworld Hat
									},
								}),
							},
						}),
						n(TIER_TWO, {
							["icon"] = 3528451,
							["g"] = {
								n(167042, {	-- Abominable Stitching Table
									["coord"] = { 55.0, 68.8, MALDRAXXUS },
									["g"] = {
										i(181268, {	-- Backbone (PET!)
											["cost"] = {
												{ "i", 178061, 5 },		-- 5xMalleable Flesh
												{ "i", 172092, 1 },		-- 1xPallid Bone
												{ "c", ANIMA, 750 },
											},
										}),
										q(57604, {
											["sourceQuests"] = { 59615 },	-- Every Dog Has Its Day
											["name"] = "Construct Body: Neena",
											["cost"] = {
												{ "i", 178061, 20 },	-- 20xMalleable Flesh
											},
										}),
										q(57601, {
											["sourceQuests"] = { 60230 },	-- More the Merrier
											["name"] = "Construct Body: Professor",
											["cost"] = {
												{ "i", 178061, 15 },	-- 15xMalleable Flesh
												{ "i", 183744, 3 },		-- 3xSuperior Parts
											},
										}),
										q(57600, {
											["sourceQuests"] = { 60230 },	-- More the Merrier
											["name"] = "Construct Body: Sabrina",
											["cost"] = {
												{ "i", 178061, 15 },	-- 15xMalleable Flesh
												{ "i", 183744, 4 },		-- 4xSuperior Parts
											},
										}),
										q(58414, {
											["sourceQuests"] = { 60230 },	-- More the Merrier
											["name"] = "Construct Body: Toothpick",
											["cost"] = {
												{ "i", 178061, 15 },	-- 15xMalleable Flesh
												{ "i", 183744, 4 },		-- 4xSuperior Parts
											},
										}),
									},
								}),
								n(159226, {	-- Sabrina
									["sourceQuests"] = { 57600 },	-- Construct Body: Sabrina
									["coord"] = { 54.8, 68.8, MALDRAXXUS },
									["crs"] = { 173028 },	-- Sabrina (Ghost)
									["g"] = {
										i(182485),	-- Stitched Harbinger's Greaves
										i(182494),	-- Stitched Wraith's Breeches
										i(182512),	-- Stitched Tactician's Chausses
										i(182503),	-- Stitched Conjurer's Leggings
									},
								}),
								n(159198, {	-- The Professor
									["sourceQuests"] = { 57601 },	-- Construct Body: The Professor
									["coord"] = { 55.4, 68.2, MALDRAXXUS },
									["crs"] = { 167762 },	-- The Professor (Ghost)
									["g"] = {
										i(182513),	-- Stitched Tactician's Spaulders
										i(182504),	-- Stitched Conjurer's Mantle
										i(182495),	-- Stitched Wraith's Shoulders
										i(182486),	-- Stitched Harbinger's Pauldrons
									},
								}),
								n(159212, {	-- Toothpick
									["sourceQuests"] = { 58414 },	-- Construct Body: Toothpick
									["coord"] = { 54.9, 67.8, MALDRAXXUS },
									["crs"] = { 167764 },	-- Toothpick (Ghost)
									["g"] = {
										i(182488),	-- Stitched Harbinger's Vambraces
										i(182497),	-- Stitched Wraith's Armguards
										i(182506),	-- Stitched Conjurer's Wristwraps
										i(182515),	-- Stitched Tactician's Bracers
										o(357771, {	-- Burried Cache (Ardenweald version)
											["g"] = {
												i(183755),	-- Ardenweald Wreath
												i(183826),	-- Big Floppy Hat
												i(183789),	-- Six-League Pack
												i(181797),	-- Strange Cloth
												i(183759),	-- Unusually Large Cranium
												i(183760),	-- Venthyr Spectacles
											},
										}),
										o(357937, {	-- Burried Cache (Revendreth version)
											["g"] = {
												i(183826),	-- Big Floppy Hat
												i(183789),	-- Six-League Pack
												i(181797),	-- Strange Cloth
												i(183759),	-- Unusually Large Cranium
												i(183760),	-- Venthyr Spectacles
											},
										}),
									},
								}),
								n(QUESTS, {
									q(62244, {	-- Digging Around
										["sourceQuests"] = { 58414 },	-- Construct Body: Toothpick
										["provider"] = { "n", 159212 },    -- Toothpick
										["crs"] = {
											167764,	-- Toothpick (Ghost)
										},
										["coord"] = { 54.9, 67.8, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(183043),	-- Call Toothpick (QI!)
										},
									}),
									q(59615, {	-- Every Dog Has Its Day
										["description"] = "Kill Soul Harvester Anka at 70.1, 40.8 to obtain the Soul Harvester Key, which opens the cage and makes the quest available.  The key will only drop if you have tier 2 or higher Abomination Table.",
										["provider"] = { "n", 162151 },    -- Neena
										["cost"] = { { "i", 184354, 1 } },	-- 1 Soul Harvester Key (for opening Neena's Cage)
										["coord"] = { 69.3, 40.6, MALDRAXXUS },
									}),
									q(62194, {	-- Fighting Words
										["sourceQuests"] = { 57600 },	-- Construct Body: Sabrina
										["provider"] = { "n", 159226 },    -- Sabrina
										["crs"] = {
											173028,	-- Sabrina (Ghost)
										},
										["coord"] = { 54.8, 68.8, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(182474),	-- Call Sabrina (QI!)
										},
									}),
									q(60230, {	-- More the Merrier
										["sourceQuests"] = { 60041 },	-- Build-A-Bomination
										["provider"] = { "n", 167150 },	-- Rathan
										["coord"] = { 55.1, 68.8, MALDRAXXUS },
									}),
									q(60237, {	-- Old Stomping Grounds
										["sourceQuests"] = { 58414 },	-- Construct Body: Toothpick
										["provider"] = { "n", 159212 },    -- Toothpick
										["crs"] = {
											167764,	-- Toothpick (Ghost)
										},
										["coord"] = { 54.9, 67.8, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(183043),	-- Call Toothpick (QI!)
											o_repeated(sharedData({	-- Burried Cache
												["isDaily"] = true,
											},{
												o(357771, {
													["questID"] = 62240,
													["coords"] = {
														{ 49.5, 76.2, ARDENWEALD },
													},
												}),
											}))
										},
									}),
									q(62294, {	-- One Lich's Trash...
										["sourceQuests"] = { 57601 },	-- Construct Body: The Professor
										["provider"] = { "n", 159198 },    -- The Professor
										["crs"] = {
											167762,	-- The Professor (Ghost)
										},
										["coord"] = { 55.4, 68.2, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(183142),	-- Call Professor (QI!)
											i(183398),	-- Intriguing Ancient Relic (QI!)
										},
									}),
									q(61996, {	-- Say The Magic Words
										["sourceQuests"] = { 57600 },	-- Construct Body: Sabrina
										["provider"] = { "n", 159226 },    -- Sabrina
										["crs"] = {
											173028,	-- Sabrina (Ghost)
										},
										["coord"] = { 54.8, 68.8, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(182474),	-- Call Sabrina (QI!)
										},
									}),
									q(58515, {	-- Scrounging for Scrolls
										["sourceQuests"] = { 57601 },	-- Construct Body: The Professor
										["provider"] = { "n", 159198 },    -- The Professor
										["crs"] = {
											167762,	-- The Professor (Ghost)
										},
										["coord"] = { 55.4, 68.2, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(183142),	-- Call Professor (QI!)
											i(175275),	-- Scroll of the Path (QI!)
										},
									}),
									q(60283, {	-- Specter Of War: Visectus
										["provider"] = { "n", 161668 },	-- Summoner Gerard
										["coord"] = { 53.5, 69.3, MALDRAXXUS },
										["repeatable"] = true,
									}),
									q(62195, {	-- The Last Word
										["sourceQuests"] = { 57600 },	-- Construct Body: Sabrina
										["provider"] = { "n", 159226 },    -- Sabrina
										["crs"] = {
											173028,	-- Sabrina (Ghost)
										},
										["coord"] = { 54.8, 68.8, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(182474),	-- Call Sabrina (QI!)
											i(182957),	-- Inquisitor's Crypt Key (QI!)
										},
									}),
									q(58525, {	-- The Two Sides of History
										["sourceQuests"] = { 57601 },	-- Construct Body: The Professor
										["provider"] = { "n", 159198 },    -- The Professor
										["crs"] = {
											167762,	-- The Professor (Ghost)
										},
										["coord"] = { 55.4, 68.2, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(183142),	-- Call Professor (QI!)
										},
									}),
								}),
								i(184354, {	-- Soul Harvester Key
									["crs"] = { 175510 },	-- Soul Harvester Anka
								}),
							},
						}),
						n(TIER_THREE, {
							["icon"] = 3622122,
							["g"] = {
								n(167042, {	-- Abominable Stitching Table
									["coord"] = { 55.0, 68.8, MALDRAXXUS },
									["g"] = {
										q(57608, {
											["sourceQuests"] = { 61635 },	-- Troubled Souls
											["name"] = "Construct Body: Gas Bag",
											["cost"] = {
												{ "i", 178061, 20 },	-- 20xMalleable Flesh
												{ "i", 183744, 5 },		-- 5xSuperior Parts
											},
										}),
										q(58416, {
											["sourceQuests"] = { 61635 },	-- Troubled Souls
											["name"] = "Construct Body: Guillotine",
											["cost"] = {
												{ "i", 178061, 20 },	-- 20xMalleable Flesh
												{ "i", 183744, 7 },		-- 7xSuperior Parts
											},
										}),
										q(60216, {
											["sourceQuests"] = { 61635 },	-- Troubled Souls
											["name"] = "Construct Body: Mama Tomalin",
											["cost"] = {
												{ "i", 178061, 10 },	-- 10xMalleable Flesh
												{ "i", 183744, 1 },		-- 1xSuperior Parts
												{ "i", 172052, 5 },		-- 5xAethereal Meat
												{ "i", 172053, 5 },		-- 5xTenebrous Ribs
												{ "i", 172055, 5 },		-- 5xPhantasmal Haunch
												{ "i", 179315, 5 },		-- 5xShadowy Shank
											},
										}),
									},
								}),
								n(159240, {	-- Gas Bag
									["sourceQuests"] = { 57608 },	-- Construct Body: Gas Bag
									["coord"] = { 54.2, 68.0, MALDRAXXUS },
									["crs"] = { 167763 },	-- Gas Bag (Ghost)
									["g"] = {
										i(182499),	-- Stitched Conjurer's Cowl
										i(182490),	-- Stitched Wraith's Visage
										i(182481),	-- Stitched Harbinger's Greathelm
										i(182508),	-- Stitched Tactician's Faceguard
									},
								}),
								n(159214, {	-- Guillotine
									["sourceQuests"] = { 58416 },	-- Construct Body: Guillotine
									["coord"] = { 54.4, 67.9, MALDRAXXUS },
									["crs"] = { 173030 },	-- Guillotine (Ghost)
									["g"] = {
										i(182493),	-- Stitched Wraith's Stranglers
										i(182484),	-- Stitched Harbinger's Crushers
										i(182502),	-- Stitched Conjurer's Gloves
										i(182511),	-- Stitched Tactician's Gauntlets
									},
								}),
								n(QUESTS, {
									q(59043, {	-- Baker's Dozen
										["sourceQuests"] = { 60216 },	-- Construct Body: Mama Tomalin
										["provider"] = { "n", 161678 },	-- Mama Tomalin
										["coord"] = { 55.3, 68.6, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
									}),
									q(60342, {	-- Cut 'Em Down to Size
										["sourceQuests"] = { 58416 },	-- Construct Body: Guillotine
										["provider"] = { "n", 159214 },	-- Guillotine
										["crs"] = {
											173030,	-- Guillotine (Ghost)
										},
										["coord"] = { 54.4, 67.9, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(183127),	-- Call Guillotine (QI!)
										},
									}),
									q(56470, {	-- Give A Dog A Bone
										["sourceQuests"] = { 60216 },	-- Construct Body: Mama Tomalin
										["provider"] = { "n", 161678 },	-- Mama Tomalin
										["coord"] = { 55.3, 68.6, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(183796),	-- Marrowgrub Flesh (QI!)
											i(174270),	-- Tasty Bone (QI!)
										},
									}),
									q(62261, {	-- Grinder
										["sourceQuests"] = { 58416 },	-- Construct Body: Guillotine
										["provider"] = { "n", 159214 },	-- Guillotine
										["crs"] = {
											173030,	-- Guillotine (Ghost)
										},
										["coord"] = { 54.4, 67.9, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(183138),	-- Chosen Razorstone (QI!)
											i(183127),	-- Call Guillotine (QI!)
										},
									}),
									q(60340, {	-- Hands on Approach
										["sourceQuests"] = { 58416 },	-- Construct Body: Guillotine
										["provider"] = { "n", 159214 },	-- Guillotine
										["crs"] = {
											173030,	-- Guillotine (Ghost)
										},
										["coord"] = { 54.4, 67.9, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(178788),	-- Anima Traces (QI!)
											i(183127),	-- Call Guillotine (QI!)
										},
									}),
									q(62407, {	-- Herbicidal Tendencies
										["sourceQuests"] = { 57608 },	-- Construct Body: Gas Bag
										["provider"] = { "n", 159240 },	-- Gas Bag
										["crs"] = {
											167763,	-- Gas Bag (Ghost)
										},
										["coord"] = { 54.2, 68.0, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(183719),	-- Rotbloom Petal (QI!)
											i(183133),	-- Call Gas Bag (QI!)
										},
									}),
									q(58992, {	-- Pie Not?
										["sourceQuests"] = { 60216 },	-- Construct Body: Mama Tomalin
										["provider"] = { "n", 161678 },	-- Mama Tomalin
										["coord"] = { 55.3, 68.6, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(177879),	-- Maldraxxi Bone Marrow (QI!)
										},
									}),
									q(59293, {	-- Special Formula
										["sourceQuests"] = { 57608 },	-- Construct Body: Gas Bag
										["provider"] = { "n", 159240 },	-- Gas Bag
										["crs"] = {
											167763,	-- Gas Bag (Ghost)
										},
										["coord"] = { 54.2, 68.0, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(175843),	-- Pox Nodules (QI!)
											i(183133),	-- Call Gas Bag (QI!)
										},
									}),
									q(61635, {	-- Troubled Souls
										["sourceQuests"] = { 60230 },	-- More the Merrier
										["provider"] = { "n", 167150 },	-- Rathan
										["coord"] = { 55.1, 68.8, MALDRAXXUS },
									}),
								}),
								n(VENDORS, {
									n(161678, {	-- Mana Tomalin
										["sourceQuests"] = { 60216 },	-- Construct Body: Mama Tomalin
										["g"] = {
											i(184040, {	-- Broken Egg Shells
												["sourceQuests"] = { 59043 },	-- Baker's Dozen (assume first completion since daily)
											}),
											i(184039),	-- Clean White Hat
											i(183790),	-- Platter Master Stue
										},
									})
								}),
								o(360054, {	-- Sticky Cat
									["coord"] = { 67.9, 79.3, MALDRAXXUS },
									["g"] = {
										i(183829),	-- Slime Cat
									},
								}),
							},
						}),
						n(TIER_FOUR, {
							["icon"] = 3601552,
							["g"] = {
								n(167042, {	-- Abominable Stitching Table
									["coord"] = { 55.0, 68.8, MALDRAXXUS },
									["g"] = {
										i(181282, {	-- Mu'dud (PET!)
											["cost"] = {
												{ "i", 178061, 10 },	-- Malleable Flesh
												{ "i", 183744, 5 },		-- Superior Parts
												{ "c", ANIMA, 1250 },	-- 1250 Reservoir Anima
											},
										}),
										q(58411, {
											["name"] = "Construct Body: Iron Phillip",
											["sourceQuests"] = { 61638 },	-- Iron Solution
											["cost"] = {
												{ "i", 178061, 20 },	-- 20x Malleable Flesh
												{ "i", 171828, 20 },	-- 20x Laestrite Ore
												{ "i", 183744, 10 },	-- 10x Superior Parts
												{ "i", 183475, 1 },		-- 1x Indomitable Hide
											},
										}),
										q(58413, {
											["name"] = "Construct Body: Naxx",
											["sourceQuests"] = { 61638 },	-- Iron Solution
											["cost"] = {
												{ "i", 178061, 20 },	-- 20x Malleable Flesh
												{ "i", 173202, 12 },	-- 12x Shrouded Cloth
												{ "i", 183744, 10 },	-- 10x Superior Parts
												{ "i", 183519, 1 },		-- 1x Necromantic Oil
											},
										}),
									},
								}),
								n(QUESTS, {
									q(57634, {	-- Bring Your Own
										["sourceQuests"] = { 58411 },	-- Construct Body: Iron Phillip
										["provider"] = { "n", 159199 },    -- Iron Phillip
										["coord"] = { 55.5, 68.4, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(182959),	-- Call Iron Phillip (QI!)
										},
									}),
									q(58379, {	-- Construct Part: Indomitable Hide
										["sourceQuests"] = { 60048 },	-- Stitching Time
										["provider"] = { "i", 174070 },	-- Indomitable Hide
										["repeatable"] = true,
										["g"] = {
											i(183475),	-- Indomitable Hide
										},
									}),
									q(58376, {	-- Construct Part: Necromantic Oil
										["sourceQuests"] = { 60048 },	-- Stitching Time
										["provider"] = { "i", 174076 },	-- Necromantic Oil
										["repeatable"] = true,
										["g"] = {
											i(183519),	-- Necromantic Oil
										},
									}),
									q(62276, {	-- Drink to the Dead
										["sourceQuests"] = { 58413 },	-- Construct Body: Naxx
										["provider"] = { "n", 158298 },    -- Naxx
										["coord"] = { 54.8, 68.7, MALDRAXXUS },
										["isWeekly"] = true,
										["_drop"] = { "g", "isDaily" },	-- Superior Parts is included from API
										["g"] = {
											i(183186),	-- Purified Nectar (QI!)
											i(183128),	-- Call Naxx (QI!)
										},
									}),
									q(61638, {	-- Iron Solution
										["sourceQuests"] = { 61635 },	-- Troubled Souls
										["provider"] = { "n", 167150 },	-- Rathan
										["coord"] = { 55.1, 68.8, MALDRAXXUS },
									}),
								}),
							},
						}),
						n(TIER_FIVE, {
							["icon"] = 3528291,
							["g"] = {
								n(167042, {	-- Abominable Stitching Table
									["coord"] = { 55.0, 68.8, MALDRAXXUS },
									["g"] = {
										i(182078, {	-- Bonesewn Fleshroc (MOUNT!)
											["cost"] = {
												{ "i", 178061, 50 },	-- 50x Malleable Flesh
												{ "i", 183744, 5 },		-- 5x Superior Parts
												{ "c", ANIMA, 3500 },
											},
										}),
										i(183717, {	-- Bindings of Wellbeing (QI!)
											["cost"] = {
												{ "i", 178061, 30 },	-- 30x Malleable Flesh
												{ "i", 183744, 5 },		-- 5x Superior Parts
												{ "c", ANIMA, 1750 },
											},
										}),
									},
								}),
								n(159199, {	-- Iron Phillip
									["sourceQuests"] = { 58411 },	-- Construct Body: Iron Phillip
									["coord"] = { 55.5, 68.4, MALDRAXXUS },
									["crs"] = { 173048 },	-- Iron Phillip (Ghost)
									["g"] = {
										i(181806),	-- Regrown Osteowings
									},
								}),
								n(161678, {	-- Mama Tomalin
									["sourceQuests"] = { 60216 },	-- Construct Body: Mama Tomalin
									["coord"] = { 55.3, 68.6, MALDRAXXUS },
									["crs"] = { 167756 },	-- Mama Tomalin (Ghost)
									["g"] = {
										i(183597),	-- Fleshstitched Cookie
										i(181809),	-- Tomalins Seasoning Crystal
									},
								}),
								n(158298, {	-- Naxx
									["sourceQuests"] = { 58413 },	-- Construct Body: Naxx
									["coord"] = { 54.8, 68.7, MALDRAXXUS },
									["crs"] = { 173049 },	-- Naxx (Ghost)
									["g"] = {
										i(181802),	-- Standard of Death's Chosen
									},
								}),
								n(QUESTS, {
									q(61637, {	-- Unity
										["sourceQuests"] = { 61638 },	-- Iron Solution
										["provider"] = { "n", 167150 },	-- Rathan
										["coord"] = { 55.1, 68.8, MALDRAXXUS },
										["cost"] = { { "i", 183717, 1 }, },	-- 1x Bindings of Wellbeing
										["g"] = {
											header(HEADERS.Quest, 61637, {	-- Triggered after recruiting Unity
												["questID"] = 58412,
												-- achievement_criteria
											}),
										},
									}),
								}),
								n(REWARDS, {
									["description"] = "The cosmetic items under this header are occasionally random rewards from doing Maldraxxus world quests with Unity as your active abomination.",
									["g"] = {
										filter(CLOTH, {
											i(182543, {	-- Duty-Bound Conjurer's Cape
												["description"] = "This cloak is only awarded to cloth characters.",
											}),
											i(182541),	-- Duty-Bound Conjurer's Cinch
											i(182535),	-- Duty-Bound Conjurer's Cowl
											i(182538),	-- Duty-Bound Conjurer's Gloves
											i(182539),	-- Duty-Bound Conjurer's Leggings
											i(182540),	-- Duty-Bound Conjurer's Mantle
											i(182537),	-- Duty-Bound Conjurer's Slippers
											i(182536),	-- Duty-Bound Conjurer's Tunic
											i(182542),	-- Duty-Bound Conjurer's Wristwraps
										}),
										filter(LEATHER, {
											i(182533),	-- Duty-Bound Wraith's Armguards
											i(182532),	-- Duty-Bound Wraith's Belt
											i(182528),	-- Duty-Bound Wraith's Boots
											i(182530),	-- Duty-Bound Wraith's Breeches
											i(182534, {	-- Duty-Bound Wraith's Cloak
												["description"] = "This cloak is only awarded to leather characters.",
											}),
											i(182527),	-- Duty-Bound Wraith's Jerkin
											i(182531),	-- Duty-Bound Wraith's Shoulders
											i(182529),	-- Duty-Bound Wraith's Stranglers
											i(182526),	-- Duty-Bound Wraith's Visage
										}),
										filter(MAIL, {
											i(182551),	-- Duty-Bound Tactician's Bracers
											i(182548),	-- Duty-Bound Tactician's Chausses
											i(182552, {	-- Duty-Bound Tactician's Drape
												["description"] = "This cloak is only awarded to mail characters.",
											}),
											i(182544),	-- Duty-Bound Tactician's Faceguard
											i(182547),	-- Duty-Bound Tactician's Gauntlets
											i(182550),	-- Duty-Bound Tactician's Girdle
											i(182545),	-- Duty-Bound Tactician's Hauberk
											i(182546),	-- Duty-Bound Tactician's Sabatons
											i(182549),	-- Duty-Bound Tactician's Spaulders
										}),
										filter(PLATE, {
											i(182518),	-- Duty-Bound Harbinger's Chestguard
											i(182520),	-- Duty-Bound Harbinger's Crushers
											i(182525, {	-- Duty-Bound Harbinger's Greatcloak
												["description"] = "This cloak is only awarded to plate characters.",
											}),
											i(182517),	-- Duty-Bound Harbinger's Greathelm
											i(182521),	-- Duty-Bound Harbinger's Greaves
											i(182522),	-- Duty-Bound Harbinger's Pauldrons
											i(182519),	-- Duty-Bound Harbinger's Stompers
											i(182524),	-- Duty-Bound Harbinger's Vambraces
											i(182523),	-- Duty-Bound Harbinger's Warbelt
										}),
									},
								}),
							},
						}),
						n(VENDORS, {
							n(159238, {	-- Atticus <Supplies & Acquisitions>
								["coord"] = { 55.2, 68.2, MALDRAXXUS },
								["crs"] = { 167161 },	-- Atticus (Ghost)
								["g"] = appendGroups(ATTICUS_GROUP, {
									i(184589, {	-- Bag of Potions
										["description"] = "This becomes available within Chill's Reach during 'A Brokered Deal'.",
									}),
									i(180442),	-- Bag of Sin Stones
									i(180277),	-- Battlefront Ration Key
									i(184037, {	-- Maldraxxus Candles
										["description"] = "These become available after you build rank 5 Abomination table.",
									}),
									i(183166),	-- Nidore Ocularis
									i(178547),	-- Questionable Fried Poultry
									i(178546),	-- Questionable Meat Product
									i(178681),	-- Slim Shinbone
									i(178535),	-- Suspicious Slime Shot
								}),
							}),
							n(164795, {	-- Clyde <Curios & Oddities>
								["coord"] = { 55.2, 68.4, MALDRAXXUS },
								["g"] = {
									iensemble(184303, {	-- Arsenal: Stitchmasters' Weapons
										["cost"] = {
											{ "i", 184304, 750 },
											{ "c", ANIMA, 30000 },
										},
									}),
									i(184047, {	-- Ascended Chest of Arms
										["description"] = "Contains one random weapon.",
										["cost"] = { { "c", ANIMA, 1000 } },
										["g"] = ASCENDED_CHEST_OF_ARMS,
									}),
									i(184045, {	-- Martial Tithe of the Court of Harvesters
										["description"] = "Contains one random weapon.",
										["cost"] = { { "c", ANIMA, 1000 } },
										["g"] = MARTIAL_TITHE_OF_THE_COURT_OF_HARVESTERS,
									}),
									i(184046, {	-- Undying Army Weapon Cache
										["description"] = "Contains one random weapon.",
										["cost"] = { { "c", ANIMA, 1000 } },
										["g"] = UNDYING_ARMOY_WEAPON_CACHE,
									}),
									i(184048, {	-- Weapon Satchel of the Wild Hunt
										["description"] = "Contains one random weapon.",
										["cost"] = { { "c", ANIMA, 1000 } },
										["g"] = WEAPON_SATCHEL_OF_THE_WILD_HUNT,
									}),
									i(184050),	-- Malleable Mesh
									i(184049),	-- Counterfeit Luckydo
									i(184051),	-- Stitched Lich Effigy
								},
							}),
						}),
					},
				}),
			},
		}),
	}),
})));

for _,g in ipairs({ATTICUS_GROUP,ASCENDED_CHEST_OF_ARMS,MARTIAL_TITHE_OF_THE_COURT_OF_HARVESTERS,UNDYING_ARMOY_WEAPON_CACHE,WEAPON_SATCHEL_OF_THE_WILD_HUNT}) do
	for	_,t in ipairs(g) do
		t.customCollect = nil;
	end
end

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(NECROLORD, {
		n(SANCTUM_UPGRADES, {
			n(ABOMINATION_FACTORY, {
				-- Recruiting Constructs
				q(57577),	-- Triggered after recruiting Flytrap
				q(57598),	-- Triggered after recruiting Gas Bag
				q(57859),	-- Triggered after recruiting Guillotine
				q(57610),	-- Triggered after recruiting Iron Phillip
				q(57578),	-- Triggered after recruiting Marz
				q(57858),	-- Triggered after recruiting Miru
				q(57575),	-- Triggered after recruiting Naxx
				q(57603),	-- Triggered after recruiting Neena
				q(57606),	-- Triggered after recruiting Roseboil
				q(57607),	-- Triggered after recruiting Unity
				q(57854),	-- Triggered after recruiting Sabrina
				q(57857),	-- Triggered after recruiting Toothpick
				q(57612),	-- Triggered after recruiting The Professor

				-- Stitching Table Abomination 'Upgrades'
				q(62575),	-- Crafted Armor Plating at Abominable Stitching Table
				q(62824),	-- Crafted Back Mushrooms at Abominable Stitching Table (spellID 344796)
				q(62580),	-- Crafted Barrel O'Fish at Abominable Stitching Table
				q(62574),	-- Crafted Butterflies at Abominable Stitching Table
				q(62762),	-- Crafted Chef Hat at Abominable Stitching Table
				q(62570),	-- Crafted Collector Kash's Pack at Abominable Stitching Table
				q(61560),	-- Crafted Dapper Top Hat at Abominable Stitching Table
				q(62758),	-- Crafted Dundae's Hat at Abominable Stitching Table
				q(62764),	-- Crafted Egg Hat at Abominable Stitching Table
				q(62469),	-- Crafted Engineering Pack at Abominable Stitching Table
				q(62572),	-- Crafted Faction Flag at Abominable Stitching Table
				q(62471),	-- Crafted Flower Crown at Abominable Stitching Table
				q(62472),	-- Crafted Halo of Purity at Abominable Stitching Table
				q(62479),	-- Crafted Happiness Bird at Abominable Stitching Table
				q(62583),	-- Crafted Hitchhiker at Abominable Stitching Table
				q(61712),	-- Crafted Holiday Hat at Abominable Stitching Table
				q(62759),	-- Crafted Lovely Candle Display at Abominable Stitching Table
				q(62577),	-- Crafted Magician's Hat at Abominable Stitching Table
				q(62470),	-- Crafted Operational Instructions at Abominable Stitching Table
				q(61561),	-- Crafted Outlaw Flag at Abominable Stitching Table
				q(62826),	-- Crafted Pirate Hat at Abominable Stitching Table (spellID 344769)
				q(62576),	-- Crafted Plague Pack at Abominable Stitching Table
				q(62476),	-- Crafted Red Eye Lens at Abominable Stitching Table
				q(62571),	-- Crafted Safe Fall Pack at Abominable Stitching Table
				q(62825),	-- Crafted Shoulder Sprouts at Abominable Stitching Table (spellID 344798)
				q(62481),	-- Crafted Six-League Pack at Abominable Stitching Table
				q(62817),	-- Crafted Skull Fungus at Abominable Stitching Table (spellID 344766)
				q(62474),	-- Crafted Skull Protector at Abominable Stitching Table
				q(62760),	-- Crafted Trained Corpselice at Abominable Stitching Table
				q(61562),	-- Crafted Trustworthy Doll at Abominable Stitching Table
				q(62823),	-- Crafted Underpowered Gravity Pack at Abominable Stitching Table (spellID 344797)
				q(62819),	-- Crafted Unworthy Crown at Abominable Stitching Table (spellID 344770)
				q(62468),	-- Crafted Vestigial Wings at Abominable Stitching Table
			}),
			n(ARMOR, {
				-- Stitched Set (armor-type agnostic it seems by slot rewarded)
				q(63393),	-- Helm
				q(63396),	-- Shoulders
				q(63398),	-- Chest
				q(63394),	-- Wrist
				q(63392),	-- Gloves
				-- q(63397),	-- Waist -- TODO confirm
				q(63395),	-- Legs
				q(63399),	-- Feet
				q(63400),	-- Cloak

				-- Duty-Bound Set
				-- q(),	-- Helm
				q(63401),	-- Shoulders
				-- q(),	-- Chest
				-- q(),	-- Wrist
				q(63404),	-- Gloves
				q(63409),	-- Waist
				q(63402),	-- Legs
				q(63408),	-- Feet

				--	Unity Transmog
				q(63407),	-- Leather Chest
				q(63403),	-- Plate Helm
				q(63406),	-- Plate Chest
				q(63405),	-- Cloak / 182525

				q(62037),	-- unlocking Mind of Maldraxxus set (TransmogSetID 2033, Duty-Bound Conjurer's items)
				q(62036),	-- unlocking Zeal of Maldraxxus set (TransmogSetID 2038, Duty-Bound Wraith's items)
				q(62028),	-- unlocking Heart of Maldraxxus set (TransmogSetID 2039, Duty-Bound Tactician's items)
				q(62015),	-- unlocking Mettle of Maldraxxus set (TransmogSetID 2046, Duty-Bound Harbinger's items)
			}),
			n(QUESTS, {
				q(63397),	-- Triggered when Completing weeklies with abominations/receiving Sitched set gear
				q(62573),	-- Abomination level 3 sitching Chef hat/Sticky Cat.
				q(61512),	-- Completing Something Old, Something Used first time. Confirmed first time 30.09.2021
				q(63099),	-- Opening "Bag of Potions" (itemID 184589) from Atticus (spellID 346867)
				q(60873),	-- Buying Bag of Sin Stones (180442) from Atticus
				q(62988),	-- digging with Chordy in Revendreth
				q(64666),	-- Completing Baker's Dozen (59043) (next week's quest rewarded Tomalin's Seasoning Crystal (181809))
			}),
		}),
	}),
})));