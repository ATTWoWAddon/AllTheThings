-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(MISSIONS, {
				n(85805, {	-- Frostwall Command Table [Garrison Level 3]
					["modelScale"] = 2.5,
					["crs"] = {
						80432,	-- Frostwall Level 1 Command Table
						86031,	-- Frostwall Level 2 Command Table
						81546,	-- Lunarfall Level 1 Command Table
						84224,	-- Lunarfall Level 2 Command Table
						84698,	-- Lunarfall Level 3 Command Table
					},
					["g"] = {
						ach(9900, {	-- Exploration Mission Master
							ach(9150),	-- Exploration Mission Specialist
							crit(27777),	-- Exploration: Oshu'gun Dig Site
							crit(27778),	-- Exploration: Razed Warsong Outpost Dig Site
							crit(27779),	-- Exploration: Stonecrag Excavation Dig Site
							crit(27780),	-- Exploration: Sethekk Hollow Dig Sites
							crit(27781),	-- Exploration: Apexis Excavation Dig Site
							crit(27782),	-- Exploration: Ango'rosh Dig Site
							crit(27783),	-- Exploration: Veil Shadar Dig Site
							crit(27784),	-- Exploration: Overlook Ruins Dig Site
							crit(27785),	-- Exploration: The Broken Spine Dig Site
							crit(27786),	-- Exploration: Daggermaw Flows Dig Site
							crit(27787),	-- Exploration: Colossal's Fall Dig Site
							crit(27788),	-- Exploration: Burial Fields
							crit(27789),	-- Exploration: Umbrafen Dig Site
						}),
						ach(9147, {	-- Mission Specialist
							ach(9523),	-- Patrolling Draenor [Yes this is a pre-req]
							ach(9145),	-- Treasure Mission Specialist
						}),
						ach(9140, {	-- On A Metric Ton of Missions
							ach(9133),	-- On a Mission
							ach(9134),	-- On a Few Missions
							ach(9138),	-- On a Lot of Missions
							ach(9139),	-- On a Massive Numbeer of Missions
						}),
						ach(9523, {	-- Patrolling Draenor
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["g"] = {
								i(111971),	-- Barracks, Level 3 [Blueprints]
								ach(9146),	-- Patrolling Mission Specialist
							},
						}),
						ach(9143, {	-- The Rarer the Better
							ach(9141),	-- A Rare Mission
							ach(9142),	-- Keeping It Rare
						}),
						ach(9524, {	-- Treasure Master
							ach(9145),	-- Treasure Mission Specialist
						}),
						mi(463, {	-- Bird Watching
							i(118731, {	-- Spires of Arak Treasure Map
								["questID"] = 36467,
							}),
						}),
						mi(460, {	-- Fickle Loyalty
							i(118727, {	-- Frostfire Treasure Map
								["questID"] = 34557,
							}),
						}),
						mi(462, {	-- Fields of Sorrow
							i(118730, {	-- Talador Treasure Map
								["questID"] = 36466,
							}),
						}),
						mi(2,   {	-- Gronnlings Abound
							i(112737, {	-- Contract: Ka'la of the Frostwolves
								follower(153, {	-- Ka'la
									["description"] = "Press Shift+Click to refresh or relog once you obtain this follower.",
								}),
							}),
						}),
						mi(464, {	-- Highplains Robbery
							i(118732, {	-- Nagrand Treasure Map
								["questID"] = 36468,
							}),
						}),
						mi(461, {	-- It's a Jungle Out There
							i(118729, {	-- Gorgrond Treasure Map
								["questID"] = 36465,
							}),
						}),
						mi(335, {	-- The Bloodmane Scrolls
							i(117492),	-- Relic of Rukhmar
						}),
						mi(465, {	-- Tomb Raider
							i(118728, {	-- Shadowmoon Valley Treasure Map
								["questID"] = 36464,
							}),
						}),
						mi(467),	-- Mushroom Mystery
						mi(468),	-- I See Dead Orcs
						mi(469),	-- The Bigger They Are
						mi(470),	-- Boiling Hot Magma
						mi(471),	-- Backbreaker
						mi(472),	-- Green Thumb
						mi(473),	-- We Will Fight In the Shadar
						mi(474),	-- I See Dead Ogres
						mi(475),	-- Pro-Labor
						mi(476),	-- Fall From Grace
						mi(477),	-- Forced Eviction
						mi(478),	-- Early Mover
						mi(479),	-- Mountain of Spirits
						i(114053, {	-- Shimmering Gauntlets
							["description"] = "This token is a reward from one of the first missions when you initially unlock your garrison.",
							["g"] = {
								i(112810),	-- Windowhanger Wraps
								i(112812),	-- Softfinger Grips
								i(112809),	-- Beastminder Chain Gloves
								i(112811),	-- Wallbuilder Gauntlets
							},
						}),
						i(118529, {	-- Cache of Highmaul Treasures [Normal]
							["description"] = "The items from this cache are only displayed via mouseover to help showcase the potential rewards.",
							["skipFill"] = true,
							["sym"] = {{"select", "instanceID", 477}, {"pop"}, {"where", "difficultyID", 14 }, {"pop"}, {"is","encounterID"}, {"pop"}, {"contains", "f", 2, 3, 4, 5, 6, 7, 8, 51, 52, 53 }},
						}),
						i(118530, {	-- Cache of Highmaul Treasures [Heroic]
							["skipFill"] = true,
							["description"] = "The items from this cache are only displayed via mouseover to help showcase the potential rewards.",
							["sym"] = {{"select", "instanceID", 477}, {"pop"}, {"where", "difficultyID", 15 }, {"pop"}, {"is","encounterID"}, {"pop"}, {"contains", "f", 2, 3, 4, 5, 6, 7, 8, 51, 52, 53 }},
						}),
						i(118531, {	-- Cache of Highmaul Treasures [Mythic]
							["skipFill"] = true,
							["description"] = "The items from this cache are only displayed via mouseover to help showcase the potential rewards.",
							["sym"] = {{"select", "instanceID", 477}, {"pop"}, {"where", "difficultyID", 16 }, {"pop"}, {"is","encounterID"}, {"pop"}, {"contains", "f", 2, 3, 4, 5, 6, 7, 8, 51, 52, 53 }},
						}),
						i(122484, {	-- Blackrock Foundry Spoils [Normal]
							["skipFill"] = true,
							["description"] = "The items from this cache are only displayed via mouseover to help showcase the potential rewards.",
							["sym"] = {{"select", "instanceID", 457}, {"pop"}, {"where", "difficultyID", 14 }, {"pop"}, {"is","encounterID"}, {"pop"}, {"contains", "f", 2, 3, 4, 5, 6, 7, 51, 52, 53 }, {"not", "b", 2 }},
						}),
						i(122485, {	-- Blackrock Foundry Spoils [Heroic]
							["skipFill"] = true,
							["description"] = "The items from this cache are only displayed via mouseover to help showcase the potential rewards.",
							["sym"] = {{"select", "instanceID", 457}, {"pop"}, {"where", "difficultyID", 15 }, {"pop"}, {"is","encounterID"}, {"pop"}, {"contains", "f", 2, 3, 4, 5, 6, 7, 51, 52, 53 }, {"not", "b", 2 }},
						}),
						i(122486, {	-- Blackrock Foundry Spoils [Mythic]
							["skipFill"] = true,
							["description"] = "The items from this cache are only displayed via mouseover to help showcase the potential rewards.",
							["sym"] = {{"select", "instanceID", 457}, {"pop"}, {"where", "difficultyID", 16 }, {"pop"}, {"is","encounterID"}, {"pop"}, {"contains", "f", 2, 3, 4, 5, 6, 7, 51, 52, 53 }, {"not", "b", 2 }},
						}),
						i(114108, {	-- Tormented Armament
							["description"] = "You must have level 34 active followers in order to get missions that reward this token.",
							["g"] = {
								i(115303),	-- Tormented Axe
								i(115306),	-- Tormented Dagger
								i(115304),	-- Tormented Greataxe
								i(115305),	-- Tormented Longbow
								i(115308),	-- Tormented Polearm
								i(115310),	-- Tormented Scepter
								i(115309),	-- Tormented Spire
								i(115307),	-- Tormented Warmace
							},
						}),
						i(114098, {	-- Tormented Hood
							i(114326),	-- Mantisweave Hood
							i(114327),	-- Shadow-Gorged Hood
							i(114328),	-- Helm of Meditative Focus
							i(114329),	-- Salt-Scorched Greathelm
						}),
						i(114100, {	-- Tormented Spaulders
							i(114334),	-- Mantisweave Mantle
							i(114335),	-- Shadow-Gorged Spaulders
							i(114336),	-- Spaulders of Meditative Focus
							i(114337),	-- Salt-Scorched Shoulderguard
						}),
						i(114094, {	-- Tormented Bracers
							i(114310),	-- Mantisweave Bracers
							i(114311),	-- Shadow-Gorged Bracers
							i(114312),	-- Bracers of Meditative Focus
							i(114313),	-- Salt-Scorched Bracers
						}),
						i(114097, {	-- Tormented Gauntlets
							i(114322),	-- Mantisweave Gloves
							i(114323),	-- Shadow-Gorged Gauntlets
							i(114324),	-- Gauntlets of Meditative Focus
							i(114325),	-- Salt-Scorched Gauntlets
						}),
						i(114101, {	-- Tormented Girdle
							i(114338),	-- Mantisweave Cord
							i(114339),	-- Shadow-Gorged Belt
							i(114340),	-- Belt of Meditative Focus
							i(114341),	-- Salt-Scorched Girdle
						}),
						i(114099, {	-- Tormented Leggings
							i(114330),	-- Mantisweave Trousers
							i(114331),	-- Shadow-Gorged Legguards
							i(114332),	-- Legguards of Meditative Focus
							i(114333),	-- Salt-Scorched Legplates
						}),
						i(114096, {	-- Tormented Treads
							i(114318),	-- Mantisweave Sandals
							i(114319),	-- Shadow-Gorged Boots
							i(114320),	-- Boots of Meditative Focus
							i(114321),	-- Salt-Scorched Greaves
						}),
						i(114105, {	-- Tormented Trinket
							i(114367),	-- Tormented Emblem of Flame
							i(114369),	-- Tormented Fang of Gore
							i(114368),	-- Tormented Insignia of Dreams
							i(114370),	-- Tormented Seal of Fortitude
							i(114366),	-- Tormented Tooth of Ferocity
						}),
					-- munificent, turbulent, and grandiose tokens below are each in their own bracket
					-- maybe group each category under one header instead of having the same description on each token?
						n(GARRISON_MISSION_LOOT, sharedData ({ ["sharedDescription"] = "To receive a mission for these tokens, your character's 'bag' item level (as displayed in game when mousing over the item level number on the character panel) has to be 44 or lower. You must also have at least one level 40 follower.\nTaking an alt with higher item level gear and reducing it to 44 or less will (by deleting items) enables the toon to get the token missions once the table updates (about twice a week). Raising your item level above 44 instantly causes any available token missions to disappear, and they won't return until your item level is reduced and the table updates." }, {
							i(114109, {	-- Munificent Armament
							--["description"] = "You must have level 100 active followers without upgraded gear in order to get missions that reward Munificent tokens.",
								["g"] = {
									i(115311),	-- Munificent Axe
									i(115314),	-- Munificent Dagger
									i(115312),	-- Munificent Greataxe
									i(115313),	-- Munificent Longbow
									i(115316),	-- Munificent Polearm
									i(115318),	-- Munificent Scepter
									i(115317),	-- Munificent Spire
									i(115315),	-- Munificent Warmace
								},
							}),
							i(114066, {	-- Munificent Choker
							--["description"] = "You must have level 100 active followers without upgraded gear in order to get missions that reward Munificent tokens.",
								["g"] = {
									i(114417),	-- Choker of Averted Doom
									i(114416),	-- Goldleaf Bloom
									i(114415),	-- Gorget of Whirling Blades
									i(114418),	-- Ripcurrent Chain
									i(114419),	-- Torq of Noble Primacy
								},
							}),
							i(114063, {	-- Munificent Spaulders
							--["description"] = "You must have level 100 active followers without upgraded gear in order to get missions that reward Munificent tokens.",
								["g"] = {
									i(114395),	-- Mantle of Hooded Nightmares
									i(114396),	-- Spaulders of Falling Leaves
									i(114397),	-- Element-Binder Spaulders
									i(114398),	-- Shoulderguard of Grievous Storms
								},
							}),
							i(114058, {	-- Munificent Robes
							--["description"] = "You must have level 100 active followers without upgraded gear in order to get missions that reward Munificent tokens.",
								["g"] = {
									i(114378),	-- Robes of Hooded Nightmares
									i(114375),	-- Chestguard of Falling Leaves
									i(114376),	-- Element-Binder Chestguard
									i(114377),	-- Brestplate of Grievous Storms
								},
							}),
							i(114057, {	-- Munificent Bracers
							--["description"] = "You must have level 100 active followers without upgraded gear in order to get missions that reward Munificent tokens.",
								["g"] = {
									i(114371),	-- Bracers of Hooded Nightmares
									i(114372),	-- Bracers of Falling Leaves
									i(114373),	-- Element-Binder Bracers
									i(114374),	-- Bracers of Grievous Storms
								},
							}),
							i(114059, {	-- Munificent Treads
							--["description"] = "You must have level 100 active followers without upgraded gear in order to get missions that reward Munificent tokens.",
								["g"] = {
									i(114379),	-- Sandals of Hooded Nightmares
									i(114380),	-- Boots of Falling Leaves
									i(114381),	-- Element-Binder Boots
									i(114382),	-- Greaves of Grievous Storms
								},
							}),
							i(114068, {	-- Munificent Trinket
							--["description"] = "You must have level 100 active followers without upgraded gear in order to get missions that reward Munificent tokens.",
								["g"] = {
									i(114430),	-- Munificent Bonds of Fury
									i(114429),	-- Munificent Censer of Tranquility
									i(114427),	-- Munificent Emblem of Terror
									i(114428),	-- Munificent Orb of Ice
									i(114431),	-- Munificent Soul of Compassion
								},
							}),
							i(114110, {	-- Turbulent Armament
							--["description"] = "You must have level 100 active followers that are upgraded to 615 iLvl in order to get missions that reward Turbulent tokens.",
								["g"] = {
									i(115319),	-- Turbulent Axe
									i(115322),	-- Turbulent Dagger
									i(115320),	-- Turbulent Greataxe
									i(115321),	-- Turbulent Longboww
									i(115324),	-- Turbulent Polearm
									i(115326),	-- Turbulent Scepter
									i(115325),	-- Turbulent Spire
									i(115323),	-- Turbulent Warmace
								},
							}),
							i(114078, {	-- Turbulent Choker
							--["description"] = "You must have level 100 active followers that are upgraded to 615 iLvl in order to get missions that reward Turbulent tokens.",
								["g"] = {
									i(114477),	-- Arcane Master's Chain
									i(114476),	-- Beastminder Cabochon
									i(114480),	-- Chainwrecker Gorget
									i(114479),	-- Rageflame Choker
									i(114478),	-- Torq of Soothing Waters
								},
							}),
							i(114075, {	-- Turbulent Spaulders
							--["description"] = "You must have level 100 active followers that are upgraded to 615 iLvl in order to get missions that reward Turbulent tokens.",
								["g"] = {
									i(114456),	-- Firelash Mantle
									i(114457),	-- Spireflame Spaulders
									i(114458),	-- Spaulders of Elemental Torment
									i(114459),	-- Shoulderguard of Vaulted Skies
								},
							}),
							i(114070, {	-- Turbulent Robes
							--["description"] = "You must have level 100 active followers that are upgraded to 615 iLvl in order to get missions that reward Turbulent tokens.",
								["g"] = {
									i(114439),	-- Firelash Robes
									i(114436),	-- Spireflame Chestguard
									i(114437),	-- Chestguard of Elemental Torment
									i(114438),	-- Breastplate of Vaulted Skies
								},
							}),
							i(114069, {	-- Turbulent Bracers
							--["description"] = "You must have level 100 active followers that are upgraded to 615 iLvl in order to get missions that reward Turbulent tokens.",
								["g"] = {
									i(114432),	-- Firelash Bracers
									i(114433),	-- Spireflame Bracers
									i(114434),	-- Bracers of Elemental Torment
									i(114435),	-- Bracers of Vaulted Skies
								},
							}),
							i(114071, {	-- Turbulent Treads
							--["description"] = "You must have level 100 active followers that are upgraded to 615 iLvl in order to get missions that reward Turbulent tokens.",
								["g"] = {
									i(114440),	-- Firelash Sandls
									i(114441),	-- Spireflame Boots
									i(114442),	-- Boots of Elemental Torment
									i(114443),	-- Greaves of Vaulted Skies
								},
							}),
							i(114080, {	-- Turbulent Trinket
							--["description"] = "You must have level 100 active followers that are upgraded to 615 iLvl in order to get missions that reward Turbulent tokens.",
								["g"] = {
									i(114491),	-- Turbulent Emblem
									i(114489),	-- Turbulent Focusing Crystal
									i(114490),	-- Turbulent Relic of Mendacity
									i(114492),	-- Turbulent Seal of Defiance
									i(114488),	-- Turbulent Vial of Toxin
								},
							}),
							i(114112, {	-- Grandiose Armament
							--["description"] = "You must have level 100 active followers that are upgraded to 630 iLvl in order to get missions that reward Grandiose tokens.",
								["g"] = {
									i(115327),	-- Grandiose Axe
									i(115330),	-- Grandiose Dagger
									i(115328),	-- Grandiose Greataxe
									i(115329),	-- Grandiose Longbow
									i(115332),	-- Grandiose Polearm
									i(115334),	-- Grandiose Scepter
									i(115333),	-- Grandiose Spire
									i(115331),	-- Grandiose Warmace
								},
							}),
							i(114086, {	-- Grandiose Choker
							--["description"] = "You must have level 100 active followers that are upgraded to 630 iLvl in order to get missions that reward Grandiose tokens.",
								["g"] = {
									i(114538),	-- Bleak Temple Choker
									i(114539),	-- Dreamsleep Locket
									i(114537),	-- Gorefeather Pendant
									i(114541),	-- Lightbender Locket
									i(114540),	-- Spirewalker's Chain
								},
							}),
							i(114085, {	-- Grandiose Spaulders
							--["description"] = "You must have level 100 active followers that are upgraded to 630 iLvl in order to get missions that reward Grandiose tokens.",
								["g"] = {
									i(114520),	-- Crazed Bomber's Shoulderguard
									i(114517),	-- Mantle of Volatile Ice
									i(114518),	-- Spaulders of Determined Resolve
									i(114519),	-- Undying Spaulders
								},
							}),
							i(114083, {	-- Grandiose Robes
							--["description"] = "You must have level 100 active followers that are upgraded to 630 iLvl in order to get missions that reward Grandiose tokens.",
								["g"] = {
									i(114497),	-- Chestguard of Determined Resolve
									i(114499),	-- Crazed Bomber's Breastplate
									i(114500),	-- Robes of Volatile Ice
									i(114498),	-- Undying Chestguard
								},
							}),
							i(114082, {	-- Grandiose Bracers
							--["description"] = "You must have level 100 active followers that are upgraded to 630 iLvl in order to get missions that reward Grandiose tokens.",
								["g"] = {
									i(114494),	-- Bracers of Determined Resolve
									i(114493),	-- Bracers of Volatile Ice
									i(114496),	-- Crazed Bomber's Bracers
									i(114495),	-- Undying Bracers
								},
							}),
							i(114084, {	-- Grandiose Treads
							--["description"] = "You must have level 100 active followers that are upgraded to 630 iLvl in order to get missions that reward Grandiose tokens.",
								["g"] = {
									i(114502),	-- Boots of Determined Resolve
									i(114504),	-- Crazed Bomber's Greaves
									i(114501),	-- Sandals of Volatile Ice
									i(114503),	-- Undying Boots
								},
							}),
							i(114087, {	-- Grandiose Trinket
							--["description"] = "You must have level 100 active followers that are upgraded to 630 iLvl in order to get missions that reward Grandiose tokens.",
								["g"] = {
									i(114552),	-- Grandiose Carnage
									i(114549),	-- Grandiose Plans
									i(114550),	-- Grandiose Power
									i(114551),	-- Grandiose Prescience
									i(114553),	-- Grandiose Resistance
								},
							}),
						})),
						i(114052, {	-- Gleaming Ring
							i(112800),	-- Bloodbone Ring
							i(112799),	-- Loop of Vile Lesions
							i(112798),	-- Mindsworn Band
							i(112802),	-- Seal of Sullied Mending
							i(112801),	-- Signet of Durable Dreams
						}),
						i(118191),	-- Archmage Vargoth's Spare (TOY!)
						i(128310),	-- Burning Blad (TOY!)
						i(128311),	-- Coalfist Gronnling (MOUNT!)
						i(127748, {	-- Cinder Pup (PET!)
							["timeline"] = { ADDED_6_2_0 }
						}),
						i(128319, {	-- Void-Shrouded Satchel
							i(128318),	-- Touch of the Void
						}),
						i(120301),	-- Armor Enhancement Token
						i(118427),	-- Autographed Hearthstone Card (TOY!)
						i(114128),	-- Balanced Weapon Enhancement
						i(114806),	-- Blackrock Armor Set
						i(114081),	-- Blackrock Weaponry
						i(114745),	-- Braced Armor Enhancement
						i(128316),	-- Bulging Barrel of Oil
						i(123858),	-- Follower Retraining Scroll Case
						i(118354),	-- Follower Retraining Certificate
						i(114808),	-- Fortified Armor Enhancement
						i(128314),	-- Frozen Arms of a Hero
						i(122583),	-- Grease Monkey Guide
						i(114746),	-- Goredrenched Armor Set
						i(114622),	-- Goredrenched Weaponry
						i(26045),	-- Halaa Battle Token
						i(26044),	-- Halaa Research Token
						i(118475),	-- Hearthstone Strategy Guide
						i(114822),	-- Heavily Reinforced Armor Enhancement
						i(128313),	-- Huge Ogre Cache
						i(128315),	-- Medallion of the Legion
						i(122514),	-- Mission Completion Orders
						i(122580),	-- Ogre Buddy Handbook
						i(114131),	-- Power Overrun Weapon Enhancement
						i(122576),	-- Rush Order: Alchemy Lab
						i(122594),	-- Rush Order: Tailoring Emporium
						i(122596),	-- Rush Order: The Tannery
						i(114129),	-- Striking Weapon Enhancement
						i(118474),	-- Supreme Manual of Dance
						i(114616),	-- War Ravaged Weaponry
						i(120302),	-- Weapon Enhancement Token
						i(122584),	-- Winning with Wildlings
					},
				}),
				n(94398, {	-- Frostwall Fleet Command Table
					["modelScale"] = 2.3,
					["crs"] = { 94399 },	-- Lunarfall Fleet Command Table
					["g"] = {
						a(ach(10174, {	-- Admiral [A]
							a(ach(10173)),	-- Fleet Commander [A]
							a(ach(10172, {	-- Petty Officer [A]
								a(i(128362)),	-- Captain's Hat [A]
							})),
						})),
						h(ach(10276, {	-- Admiral [H]
							h(ach(10275)),	-- Fleet Commander [H]
							h(ach(10255, {	-- Petty Officer [H]
								h(i(128363)),	-- Captain's Hat [H]
							})),
						})),
						a(ach(10167, {	-- Exploring the High Seas [A]
							a(ach(10256, {	-- Charting a Course [A]
								a(i(128365)),	-- Fleet Commander's Hat [A]
							})),
						})),
						h(ach(10307, {	-- Exploring the High Seas [H]
							h(ach(10258, {	-- Charting a Course [H]
								h(i(128364)),	-- Fleet Commander's Hat [H]
							})),
						})),
						ach(10164, {	-- Master of the Seas
							title(317),	-- Captain
							crit(28515),	-- Naval Combat Expert
							crit(28517),	-- Naval Treasure Expert
							crit(28516),	-- Naval Training Expert
							crit(28518),	-- Naval Bonus Expert
							crit(28519),	-- Naval Siege Expert
						}),
						ach(10036, {	-- Naval Bonus Expert
							ach(10017),	-- Naval Bonus Specialist
						}),
						ach(10154, {	-- Naval Combat Expert
							ach(10156),	-- Naval Combat Specialist
						}),
						ach(10155, {	-- Naval Siege Expert
							ach(10161),	-- Naval Siege Specialist
						}),
						ach(10163, {	-- Naval Training Expert
							ach(10162),	-- Naval Training Specialist
						}),
						ach(10160, {	-- Naval Treasure Expert
							ach(10159),	-- Naval Treasure Specialist
						}),
						ach(10170, {	-- Seaman
							i(128353),	-- Admiral's Compass
						}),
						mi(647, {	-- Black Market Journal
							-- TODO: not sure on spawn requirements
							-- ["description"] = "This rare mission has a chance to spawn after you build a level 3 Shipyard & completed the Quest Equipment Blueprint: Ghostly Spyglass, dropped from Captain Ironbeard in Tanaan Jungle.",
							["g"] = {
								i(127989),	-- Waterlogged Manifest
								a(crit(28543, {	-- Black Market Journal
									["achievementID"] = 10167,	-- Exploring the High Seas [A]
								})),
								h(crit(28543, {	-- Black Market Journal
									["achievementID"] = 10307,	-- Exploring the High Seas [H]
								})),
							},
						}),
						mi(649, {	-- For Hate's Sake
							["description"] = "This rare mission has a chance to spawn after you build a level 3 Shipyard & completed the Quest Equipment Blueprint: Ghostly Spyglass, dropped from Captain Ironbeard in Tanaan Jungle.",
							["g"] = {
								i(128172),	-- Captain Sander's Returned Band
								a(crit(29703, {	-- For Hate's Sake
									["achievementID"] = 10167,	-- Exploring the High Seas [A]
								})),
								h(crit(29703, {	-- For Hate's Sake
									["achievementID"] = 10307,	-- Exploring the High Seas [H]
								})),
							},
						}),
						mi(615, {	-- It's a Boat, It's a Plane, It's... Just a Riverbeast.
							-- TODO: not sure on spawn requirements. WH comments only mention level 2 shipyard
							-- ["description"] = "This rare mission has a chance to spawn after you build a level 2 Shipyard & completed the Quest Equipment Blueprint: Ghostly Spyglass, dropped from Captain Ironbeard in Tanaan Jungle.",
							["g"] = {
								i(116769),	-- Mudback Riverbeast (MOUNT!)
								a(crit(29704, {	-- It's a Boat, It's a Plane, It's... Just a Riverbeast.
									["achievementID"] = 10167,	-- Exploring the High Seas [A]
								})),
								h(crit(29704, {	-- It's a Boat, It's a Plane, It's... Just a Riverbeast.
									["achievementID"] = 10307,	-- Exploring the High Seas [H]
								})),
							},
						}),
						mi(619, {	-- Orphaned Aquatic Animal Rescue
							-- TODO: not sure on spawn requirements
							-- ["description"] = "This rare mission has a chance to spawn after you build a level 3 Shipyard & completed the Quest Equipment Blueprint: Ghostly Spyglass, dropped from Captain Ironbeard in Tanaan Jungle.",
							["g"] = {
								i(127856),	-- Left Shark (PET!)
								a(crit(28544, {	-- Orphaned Aquatic Animal Rescue
									["achievementID"] = 10167,	-- Exploring the High Seas [A]
								})),
								h(crit(28544, {	-- Orphaned Aquatic Animal Rescue
									["achievementID"] = 10307,	-- Exploring the High Seas [H]
								})),
							},
						}),
						mi(650, {	-- The House always wins
							["description"] = "This rare mission has a chance to spawn after you build a level 3 Shipyard & completed the Quest Equipment Blueprint: Ghostly Spyglass, dropped from Captain Ironbeard in Tanaan Jungle.",
							["g"] = {
								i(128173),	-- Admiral Taylor's Loyalty Ring
								a(crit(29701, {	-- The House Always Wins
									["achievementID"] = 10167,	-- Exploring the High Seas [A]
								})),
								h(crit(29701, {	-- The House Always Wins
									["achievementID"] = 10307,	-- Exploring the High Seas [H]
								})),
							},
						}),
						mi(616, {	-- The Wave Mistress
							["description"] = "This rare mission has a chance to spawn after you build a level 3 Shipyard & completed the Quest Equipment Blueprint: Ghostly Spyglass, dropped from Captain Ironbeard in Tanaan Jungle.",
							["g"] = {
								i(128169),	-- Signet of the Third Fleet
								a(crit(29702, {	-- The Wave Mistress
									["achievementID"] = 10167,	-- Exploring the High Seas [A]
								})),
								h(crit(29702, {	-- The Wave Mistress
									["achievementID"] = 10307,	-- Exploring the High Seas [H]
								})),
							},
						}),
						i(128391, {	-- Iron Fleet Treasure Chest [Raid Finder]
							["description"] = "The items from this cache are only displayed via mouseover to help showcase the potential rewards.",
							["skipFill"] = true,
							["sym"] = {
								{"select", "instanceID", 669}, {"pop"},
								{"where", "difficultyID", 17 },
								{"extract","encounterID"}, {"pop"},
								{"contains", "f", 2, 3, 4, 5, 6, 7, 51, 52, 53 },
								{"not", "itemID", 139630 }
							},
						}),
						i(127853, {	-- Iron Fleet Treasure Chest [Normal]
							["description"] = "The items from this cache are only displayed via mouseover to help showcase the potential rewards.",
							["skipFill"] = true,
							["sym"] = {
								{"select", "instanceID", 669}, {"pop"},
								{"where", "difficultyID", 14 },
								{"extract","encounterID"}, {"pop"},
								{"contains", "f", 2, 3, 4, 5, 6, 7, 51, 52, 53 },
								{"not", "itemID", 139630 }
							},
						}),
						i(127854, {	-- Iron Fleet Treasure Chest [Heroic]
							["description"] = "The items from this cache are only displayed via mouseover to help showcase the potential rewards.",
							["skipFill"] = true,
							["sym"] = {
								{"select", "instanceID", 669}, {"pop"},
								{"where", "difficultyID", 15 },
								{"extract","encounterID"}, {"pop"},
								{"contains", "f", 2, 3, 4, 5, 6, 7, 51, 52, 53 },
								{"not", "itemID", 139630 }
							},
						}),
						i(127855, {	-- Iron Fleet Treasure Chest [Mythic]
							["description"] = "The items from this cache are only displayed via mouseover to help showcase the potential rewards.",
							["skipFill"] = true,
							["sym"] = {
								{"select", "instanceID", 669}, {"pop"},
								{"where", "difficultyID", 16 },
								{"extract","encounterID"}, {"pop"},
								{"contains", "f", 2, 3, 4, 5, 6, 7, 51, 52, 53 },
								{"not", "itemID", 139630 }
							},
						}),
						i(127781, {	-- Baleful Cloth Hood
							i(124579),	-- Felcast Hood
						}),
						i(127783, {	-- Baleful Cloth Spaulders
							i(124587),	-- Felcast Mantle
						}),
						i(127778, {	-- Baleful Cloth Robe
							i(124570),	-- Felcast Robes
						}),
						i(127777, {	-- Baleful Cloth Bracers
							i(124563),	-- Felcast Bracers
						}),
						i(127780, {	-- Baleful Cloth Gauntlets
							i(124575),	-- Felcast Gloves
						}),
						i(127784, {	-- Baleful Cloth Girdle
							i(124591),	-- Felcast Cord
						}),
						i(127782, {	-- Baleful Cloth Leggings
							i(124583),	-- Felcast Trousers
						}),
						i(127779, {	-- Baleful Cloth Treads
							i(124571),	-- Felcast Sandles
						}),
						i(127794, {	-- Baleful Leather Hood
							i(124580),	-- Bladefang Hood
						}),
						i(127796, {	-- Baleful Leather Spaulders
							i(124588),	-- Bladefang Spaulders
						}),
						i(127791, {	-- Baleful Leather Tunic
							i(124567),	-- Bladefang Chestguard
						}),
						i(127790, {	-- Baleful Leather Bracers
							i(124564),	-- Bladefang Bracers
						}),
						i(127793, {	-- Baleful Leather Gauntlets
							i(124576),	-- Bladefang Gauntlets
						}),
						i(127797, {	-- Baleful Leather Girdle
							i(124592),	-- Bladefang Belt
						}),
						i(127795, {	-- Baleful Leather Leggings
							i(124584),	-- Bladefang Legguards
						}),
						i(127792, {	-- Baleful Leather Treads
							i(124572),	-- Bladefang Boots
						}),
						i(127807, {	-- Baleful Mail Hood
							i(124581),	-- Axeclaw Helm
						}),
						i(127809, {	-- Baleful Mail Spaulders
							i(124589),	-- Axeclaw Spaulders
						}),
						i(127804, {	-- Baleful Mail Robe
							i(124568),	-- Axeclaw Chestguard
						}),
						i(127803, {	-- Baleful Mail Bracers
							i(124565),	-- Axeclaw Bracers
						}),
						i(127806, {	-- Baleful Mail Gauntlets
							i(124577),	-- Axeclaw Gauntlets
						}),
						i(127810, {	-- Baleful Mail Girdle
							i(124593),	-- Axeclaw Belt
						}),
						i(127808, {	-- Baleful Mail Leggings
							i(124585),	-- Axeclaw Legguards
						}),
						i(127805, {	-- Baleful Mail Treads
							i(124573),	-- Axeclaw Boots
						}),
						i(127820, {	-- Baleful Plate Hood
							i(124582),	-- Felbane Greathelm
						}),
						i(127822, {	-- Baleful Plate Spaulders
							i(124590),	-- Felbane Shoulderguard
						}),
						i(127817, {	-- Baleful Plate Chest
							i(124569),	-- Felbane Breastplate
						}),
						i(127816, {	-- Baleful Plate Bracers
							i(124566),	-- Felbane Bracers
						}),
						i(127819, {	-- Baleful Plate Gauntlets
							i(124578),	-- Felbane Gauntlets
						}),
						i(127823, {	-- Baleful Plate Girdle
							i(124594),	-- Felbane Girdle
						}),
						i(127821, {	-- Baleful Plate Leggings
							i(124586),	-- Felbane Legplates
						}),
						i(127818, {	-- Baleful Plate Treads
							i(124574),	-- Felbane Greaves
						}),
						i(127799, {	-- Baleful Pendant
							i(124612),	-- Discordant Amulet
							i(124611),	-- Discordant Collar
							i(124609),	-- Embittered Locket
							i(124610),	-- Vexed Chain
							i(124607),	-- Vexed Necklace
							i(124608),	-- Vexed Pendant
						}),
					},
				}),
			}),
		})),
	})
);