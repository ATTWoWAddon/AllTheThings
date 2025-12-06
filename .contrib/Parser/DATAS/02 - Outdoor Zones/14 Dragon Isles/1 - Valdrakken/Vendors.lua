---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local ASPECTS_TOKEN_OF_MERIT_S1 = 201836;
local ASPECTS_TOKEN_OF_MERIT_S2 = 205225;
local ASPECTS_TOKEN_OF_MERIT_S3 = 208821;
local ASPECTS_TOKEN_OF_MERIT_S4 = 217409;
local ANTIQUE_BRONZE = 213089;
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(VALDRAKKEN, {
		n(VENDORS, {
			n(198587, {	-- Andoris <Enchanting Supplies>
				["coord"] = { 30.8, 60.8, VALDRAKKEN },
				["groups"] = {
					i(211522, {	-- Nascent Aspect's Awakened Crest
						["cost"] = {{"c", ASPECTS_AWAKENED_CREST, 45}},
						["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
					}),
					i(208393, {	-- Nascent Aspect's Dreaming Crest
						["cost"] = {{"c", ASPECTS_DREAMING_CREST, 45}},
						["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
					}),
					i(211523, {	-- Nascent Whelpling's Awakened Crest
						["cost"] = {{"c", WHELPLINGS_AWAKENED_CREST, 45}},
						["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
					}),
					i(208395, {	-- Nascent Whelpling's Dreaming Crest
						["cost"] = {{"c", WHELPLINGS_DREAMING_CREST, 45}},
						["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
					}),
					i(211521, {	-- Nascent Wyrm's Awakened Crest
						["cost"] = {{"c", WYRMS_AWAKENED_CREST, 45}},
						["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
					}),
					i(208394, {	-- Nascent Wyrm's Dreaming Crest
						["cost"] = {{"c", WYRMS_DREAMING_CREST, 45}},
						["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
					}),
					i(201584),	-- Serevite Rod
				},
			}),
			n(195783, {	-- Clerk Nemora <General Goods>
				["coord"] = { 31.2, 69.2, VALDRAKKEN },
				["groups"] = {
					i(197752),	-- Conveniently Packaged Ingredients
					i(200860),	-- Draconic Stopper
					i(191474),	-- Draconic Vial+
					i(194784),	-- Glittering Parchment
					i(198487),	-- Iridescent Water
					i(192833),	-- Misshapen Filigree
					i(197749),	-- Ohn'ahran Potato
					i(197751),	-- Pastry Packets
					i(190452),	-- Primal Flux
					i(197753),	-- Thaldraszian Cocoa Powder
					i(197750),	-- Three-Cheese Blend
					i(188152),	-- Gateway Control Shard
				},
			}),
			n(197080, {	-- Cadrestrasz <Fallingwater Host>
				["coord"] = { 39.87, 86.48, VALDRAKKEN },
				["groups"] = {
					i(200476),	-- Fallingwater Overlook VIP Entry Pass
					i(200477),	-- Stack of VIP Passes
				},
			}),
			n(219760, {	-- Da'kash Grimledger <Quartermaster>
				["coord"] = { 46.5, 45.1, VALDRAKKEN },
				["timeline"] = { REMOVED_PLUNDERSTORM_END },	-- Was added at the end of Plunderstorm. Previously was only avaiable if you had Renown 5 or higher of the Keg Leg Faction.
				["description"] = "Beware: Talking to this NPC will also unlock the Keg's Leg Faction, but there is no method to get reputation for it.",
				["groups"] = {
					i(216775, {	-- Deadly Dagger
						["description"] = "Unlocked by talking to Da'kash.",
					}),
				},
			}),
			n(199605, {	-- Evantkis <Token Exchange>
				["coord"] = { 58.6, 57.6, VALDRAKKEN },
				["groups"] = {
					i(199197, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 } }, {	-- Bottled Essence
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S1, 12 }},
						["groups"] = {
							i(190453),	-- Spark of Ingenuity
						},
					})),
					i(206028, {	-- Chest of Gold
						["cost"] = {
							-- #if AFTER 10.2.6.54358
							{ "i", ASPECTS_TOKEN_OF_MERIT_S4, 2 },
							-- #elseif AFTER 10.2.0
							{ "i", ASPECTS_TOKEN_OF_MERIT_S3, 2 },
							-- #else
							{ "i", ASPECTS_TOKEN_OF_MERIT_S2, 2 },
							-- #endif
						},
						["timeline"] = { ADDED_10_1_0, REMOVED_TWW_LAUNCH },
					}),
					i(204195, {	-- Drake's Shadowflame Crest
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S2, 1 }},
						["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
					}),
					i(218114, {	-- Eye of Awakening
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S4, 3 }},
						["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH }
					}),
					i(210756, {	-- Gleaming Satchel of Drake's Dreaming Crests
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S3, 1 }},
						["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR }
					}),
					i(211950, {	-- Lively Clutch of Wyrm's Awakened Crests
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S4, 2 }},
						["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH }
					}),
					i(210436, {	-- Nature's Cradle
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S3, 6 }},
						["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR }
					}),
					i(202122, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 } }, {	-- Primal Chaos Cluster
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S1, 3 }},
						["groups"] = {
							i(190454),	-- Depleted Primal Chaos
						},
					})),
					i(212384, {	-- Restless Satchel of Drake's Awakened Crests
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S4, 1 }},
						["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH }
					}),
					i(206037, {	-- Ruby Flightstone
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S2, 1 }},
						["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 }
					}),
					i(210726, {	-- Ruby Flightstone
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S3, 1 }},
						["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR }
					}),
					i(217382, {	-- Ruby Flightstone
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S4, 1 }},
						["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH }
					}),
					i(210762, {	-- Shimmering Clutch of Wyrm's Dreaming Crests
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S3, 2 }},
						["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR }
					}),
					i(211515, {	-- Splintered Spark of Awakening
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S4, 6 }},
						["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH }
					}),
					i(208396, {	-- Splintered Spark of Dreams
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S3, 6 }},
						["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR }
					}),
					i(202152, {	-- Storm-Charged Manipulator
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S1, 6 }},
						["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 }
					}),
					i(248124, {	-- The Great Hoard (DECOR!)
						["sourceAchievement"] = 19458,	-- A World Awoken
						["cost"] = {{ "c", DRAGON_SUPPLIES, 7500 }},
						["timeline"] = { ADDED_11_2_7 },
					}),
					i(205999, {	-- Volcanic Sculptor
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S2, 6 }},
						["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 }
					}),
					i(204196, {	-- Wyrm's Shadowflame Crest
						["cost"] = {{ "i", ASPECTS_TOKEN_OF_MERIT_S2, 2 }},
						["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 }
					}),
				},
			}),
			n(198441, {	-- Gardener Cereus <Garden Supplies>
				["coord"] = { 57.8, 24.0, VALDRAKKEN },
				["groups"] = {
					i(114980, {	-- Farmer's Broom
						["cost"] = 67,	-- 67c
					}),
					i(114979, {	-- Farmer's Hoe
						["cost"] = 67,	-- 67c
					}),
					i(114978, {	-- Farmer's Shovel
						["cost"] = 67,	-- 67c
					}),
				},
			}),
			n(196729, {	-- Gorgonzormu <Cheesemonger>
				["coord"] = { 30.8, 60.8, VALDRAKKEN },
				["groups"] = {
					i(201419),	-- Apexis Asiago
					i(201416),	-- Black Empire Brunost
					i(201417),	-- Curding of Stratholme
					i(201413),	-- Eternity-Infused Burrata
					i(201045),	-- Icecrown Bleu
					i(201398),	-- Mogu Mozzarella
					i(201820),	-- Silithus Swiss
					i(203433, {	-- Wheel of Whelpwhisper Brie (QI!)
						["timeline"] = { ADDED_10_1_5 },
					}),
				},
			}),
			n(216231, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Iszinormi <Dream Distribtuion>
				["coord"] = { 73.7, 47.4, VALDRAKKEN },
				["groups"] = sharedData({
					["cost"] = {{ "i", ANTIQUE_BRONZE, 2 }},
				}, {
					i(217700, {	-- Scale of Awakening
						["classes"] = { DEATHKNIGHT, PALADIN, WARRIOR },
					}),
					i(207780),	-- Ashen Ranger's Longbow
					i(207167),	-- Ashes of the Embersoul
					i(208614),	-- Augury of the Primal Flame
					i(207165),	-- Bandolier of Twisted Blades
					i(207172),	-- Belor'relos, the Suncaller
					i(207781),	-- Betrayer's Cinderblade
					i(207171),	-- Blossom of Amirdrassil
					i(207169),	-- Branch of the Tormented Ancient
					i(207166),	-- Cataclysmic Signet Brand
					i(207175),	-- Coiled Serpent Idol
					i(207783),	-- Cruel Dreamcarver
					i(207797),	-- Defender of the Ancient
					i(208616),	-- Dreambinder, Loom of the Great Cycle
					i(207795),	-- Eternal Kindler's Greatstaff
					i(207174),	-- Fyrakk's Tainted Rageheart
					i(207786),	-- Gholak, the Final Conflagration
					i(207173),	-- Gift of Ursine Vengeance
					i(207800),	-- Gnarlroot's Bonecrusher
					i(207787),	-- Igira's Flaying Hatchet
					i(207799),	-- Incandescent Soulcleaver
					i(207790),	-- Larodar's Moonblade
					i(207785),	-- Magmatic Volcannon
					i(208615),	-- Nymue's Unraveling Spindle
					i(210214),	-- Ouroboreal Necklet
					i(207168),	-- Pip's Emerald Friendship Badge
					i(207793),	-- Rashon, the Immortal Blaze
					i(207791),	-- Remnant Charglaive
					i(207792),	-- Scythe of the Fallen Keeper
					i(207782),	-- Sickle of the White Stag
					i(207170),	-- Smoldering Seedling
					i(207794),	-- Staff of Incandescent Torment
					i(207784),	-- Thorncaller Claw
					i(207796),	-- Trickster's Captivating Chime
					i(207788),	-- Vakash, the Shadowed Inferno
					i(207798),	-- Verdant Matrix Beacon
					i(207789),	-- Volcoross's Barbed Fang
				}),
			})),
			n(216226, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Iszinormi <Scale Associate>
				["coord"] = { 73.7, 47.1, VALDRAKKEN },
				["groups"] = sharedData({
					["cost"] = {{ "i", ANTIQUE_BRONZE, 2 }},
				}, {
					i(217698, {	-- Scale of Awakening
						["classes"] = { EVOKER },
					}),
					i(202606),	-- Ashkandur, Fall of the Brotherhood
					i(203963),	-- Beacon to the Beyond
					i(204319),	-- Bloodfire Extraction Conduit
					i(202607),	-- Brutal Dragonslayer's Trophy
					i(202558),	-- Calamity's Herald
					i(202560),	-- Claws of the Blazing Behemoth
					i(202569),	-- Djaruun, Pillar of the Elder Flame
					i(202610),	-- Dragonfire Bomb Dispenser
					i(204324),	-- Echo's Maddening Volume
					i(202617),	-- Elementium Pocket Anvil
					i(202616),	-- Enduring Dreadplate
					i(202565),	-- Erethos, the Empty Promise
					i(202571),	-- Experiment 1, Kitewing
					i(204322),	-- Failure Disposal Cannon
					i(202564),	-- Fang of the Sundered Flame
					i(202557),	-- Hellsteel Mutilator
					i(203996),	-- Igneous Flowstone
					i(202559),	-- Infernal Shadelance
					i(202570),	-- Lavaflow Control Rod
					i(204201),	-- Neltharion's Call to Chaos
					i(204202),	-- Neltharion's Call to Dominance
					i(204211),	-- Neltharion's Call to Suffering
					i(202563),	-- Obsidian Stirring Staff
					i(203729),	-- Ominous Chromatic Essence
					i(204320),	-- Proctor's Tactical Cleaver
					i(202614),	-- Rashok's Molten Heart
					i(202566),	-- Rionthus's Bladed Visage
					i(202568),	-- Scholar's Thinking Cudgel
					i(202612),	-- Screaming Black Dragonscale
					i(204318),	-- Thadrion's Erratic Arcanotrode
					i(202615),	-- Vessel of Searing Shadow
					i(204465),	-- Voice of the Silent Star
					i(204279),	-- Wallclimber's Incursion Hatchet
					i(203714),	-- Ward of Faceless Ire
					i(202613),	-- Zaqali Chaos Grapnel
					i(202555),	-- Zskarn's Autopsy Scalpel
				}),
			})),
			n(216224, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Iszy <Vault Vendor>
				["coord"] = { 73.8, 46.7, VALDRAKKEN },
				["groups"] = sharedData({
					["cost"] = {{ "i", ANTIQUE_BRONZE, 2 }},
				}, {
					i(194306),	-- All-Totem of the Master
					i(195483),	-- Awak'mani, Grimtotem's Legacy
					i(195504),	-- Awakened Planar Pillar
					i(194307),	-- Broodkeeper's Promise
					i(195520),	-- Broodsworn Legionnaire's Pavise
					i(195505),	-- Caustic Coldsteel Slicer
					i(194300),	-- Conjured Chillglobe
					i(194305),	-- Controlled Current Technique
					i(194299),	-- Decoration of Flame
					i(194310),	-- Desperate Invoker's Codex
					i(195503),	-- Enduring Shard of Terros
					i(195512),	-- Fist of the Grand Summoner
					i(195475),	-- Flame Marshal's Bulwark
					i(195510),	-- Frostbreath Thumper
					i(194304),	-- Iceblood Deathsnare
					i(195484),	-- Icewrath's Channeling Conduit
					i(195518),	-- Imbued Qalashi Crusher
					i(195528),	-- Incarnate Sky-Splitter
					i(195491),	-- Infused Stormglaives
					i(195519),	-- Kharnalex, The First Light
					i(194308),	-- Manic Grieftorch
					i(195489),	-- Maul of the Earthshaper
					i(195527),	-- Neltharax, Enemy of the Sky
					i(195521),	-- Ornamental Drakonid Claw
					i(195497),	-- Quake-Detecting Seismostaff
					i(194303),	-- Rumbling Ruby
					i(195481),	-- Scepter of Drastic Measures
					i(195513),	-- Scripture of Primal Devotion
					i(195480),	-- Seal of Diurna's Chosen
					i(195526),	-- Seal of Filial Duty
					i(195490),	-- Searing Blazecaster
					i(194309),	-- Spiteful Storm
					i(194302),	-- Storm-Eater's Boon
					i(195529),	-- Stormlash's Last Resort
					i(194301),	-- Whispering Incarnate Icon
				}),
			})),
			n(192814, {	-- Kritha <Barkeep>
				["coord"] = { 47.2, 41.6, VALDRAKKEN },
				["groups"] = {
					i(201327),	-- Emerald Dreamtime
				},
			}),
			n(187647, {	-- Libergo <Head Librarian>
				["coord"] = { 33.8, 27.7, VALDRAKKEN },
				["groups"] = {
					i(232521, {	-- Glyph of Arcane Familiar
						["cost"] = 5000000,	-- 500g
						["timeline"] = { ADDED_11_0_5 },
					}),
				},
			}),
			n(197711, {	-- Lindormi
				["coord"] = { 53.2, 56.0, VALDRAKKEN },
				["groups"] = {
					i(210595, {	-- Dreaming Equipment Chest
						["timeline"] = { ADDED_10_2_5, REMOVED_10_2_6_SEASON_FOUR },
					}),
					i(217241, {	-- Awakened Equipment Chest
						["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
					}),
				},
			}),
			n(193029, {	-- Lysindra
				["coord"] = { 48.2, 82.7, VALDRAKKEN },
				["groups"] = {
					i(203445, {	-- Stuffed Doll (QI!)
						["timeline"] = { ADDED_10_1_5 },
					}),
				},
			}),
			-------------
			---- LFR ----
			-------------
			n(216236, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Mirioszin <Infinite Importer>
				["coord"] = { 73.8, 45.6, VALDRAKKEN },
				["groups"] = sharedData({
					["cost"] = {{ "i", ANTIQUE_BRONZE, 1 }},
					["sharedDescription"] = "Shared Transmog with |cFFAEF359Looking for Raid|r.",
				}, {
					i(217601),	-- Crucible Raider's Bronzed Beacon
					i(217555),	-- Crucible Raider's Bronzed Cannon
					i(217559),	-- Crucible Raider's Bronzed Claws
					i(217551),	-- Crucible Raider's Bronzed Cleaver
					i(217563),	-- Crucible Raider's Bronzed Control Rod
					i(217515),	-- Crucible Raider's Bronzed Cudgel
					i(217547),	-- Crucible Raider's Bronzed Elderstaff
					i(217523),	-- Crucible Raider's Bronzed Focus
					i(217575),	-- Crucible Raider's Bronzed Greatshield
					i(217535),	-- Crucible Raider's Bronzed Hatchet
					i(217527),	-- Crucible Raider's Bronzed Kiteshield
					i(217511),	-- Crucible Raider's Bronzed Lance
					i(217539),	-- Crucible Raider's Bronzed Longbow
					i(217543),	-- Crucible Raider's Bronzed Mace
					i(217507),	-- Crucible Raider's Bronzed Mutilator
					i(217519),	-- Crucible Raider's Bronzed Rod
					i(217579),	-- Crucible Raider's Bronzed Shiv
					i(217567),	-- Crucible Raider's Bronzed Tome
					i(217571),	-- Crucible Raider's Bronzed Ultra Greatsword
					i(217531),	-- Crucible Raider's Bronzed Wingblades
					i(217661),	-- Dream Raider's Azure Barrier
					i(217673),	-- Dream Raider's Azure Blade
					i(217669),	-- Dream Raider's Azure Charglaive
					i(217648),	-- Dream Raider's Azure Chime
					i(217665),	-- Dream Raider's Azure Cleaver
					i(217627),	-- Dream Raider's Azure Defender
					i(217631),	-- Dream Raider's Azure Dreamcarver
					i(217689),	-- Dream Raider's Azure Flare
					i(217623),	-- Dream Raider's Azure Flayer
					i(217615),	-- Dream Raider's Azure Greathammer
					i(217644),	-- Dream Raider's Azure Paws
					i(217685),	-- Dream Raider's Azure Poleax
					-- i(217635),	-- Dream Raider's Azure Razor (Not on Vendor)
					i(217681),	-- Dream Raider's Azure Recurve
					i(217640),	-- Dream Raider's Azure Rifle
					i(217636),	-- Dream Raider's Azure Saber
					i(217652),	-- Dream Raider's Azure Scythe
					i(217656),	-- Dream Raider's Azure Sickle
					i(217619),	-- Dream Raider's Azure Torch
					i(217677),	-- Dream Raider's Azure Trident
					i(217436),	-- Vault Raider's Crystal Bulwark
					i(217444),	-- Vault Raider's Crystal Conduit
					i(217432),	-- Vault Raider's Crystal Crossbow
					i(217452),	-- Vault Raider's Crystal Crusher
					i(217484),	-- Vault Raider's Crystal Fists
					i(217480),	-- Vault Raider's Crystal Glaives
					i(217488),	-- Vault Raider's Crystal Greatbow
					i(217460),	-- Vault Raider's Crystal Halberd
					i(217476),	-- Vault Raider's Crystal Knife
					i(217440),	-- Vault Raider's Crystal Pavise
					i(217464),	-- Vault Raider's Crystal Pillar
					i(217492),	-- Vault Raider's Crystal Scepter
					i(217448),	-- Vault Raider's Crystal Scriptures
					i(217472),	-- Vault Raider's Crystal Shard
					i(217424),	-- Vault Raider's Crystal Slicer
					i(217456),	-- Vault Raider's Crystal Splitter
					i(217468),	-- Vault Raider's Crystal Staff
					i(217428),	-- Vault Raider's Crystal Thumper
				}),
			})),
			-------------
			---- NORMAL ----
			-------------
			n(216236, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Mirioszin <Infinite Importer>
				["coord"] = { 73.8, 45.6, VALDRAKKEN },
				["groups"] = sharedData({
					["cost"] = {{ "i", ANTIQUE_BRONZE, 1 }},
					["sharedDescription"] = "Shared Transmog with |cFFFFFFFFNormal|r.",
				}, {
					i(217602),	-- Crucible Raider's Shadowed Beacon
					i(217556),	-- Crucible Raider's Shadowed Cannon
					i(217560),	-- Crucible Raider's Shadowed Claws
					i(217552),	-- Crucible Raider's Shadowed Cleaver
					i(217564),	-- Crucible Raider's Shadowed Control Rod
					i(217516),	-- Crucible Raider's Shadowed Cudgel
					i(217548),	-- Crucible Raider's Shadowed Elderstaff
					i(217524),	-- Crucible Raider's Shadowed Focus
					i(217576),	-- Crucible Raider's Shadowed Greatshield
					i(217536),	-- Crucible Raider's Shadowed Hatchet
					i(217528),	-- Crucible Raider's Shadowed Kiteshield
					i(217512),	-- Crucible Raider's Shadowed Lance
					i(217540),	-- Crucible Raider's Shadowed Longbow
					i(217544),	-- Crucible Raider's Shadowed Mace
					i(217508),	-- Crucible Raider's Shadowed Mutilator
					i(217520),	-- Crucible Raider's Shadowed Rod
					i(217580),	-- Crucible Raider's Shadowed Shiv
					i(217568),	-- Crucible Raider's Shadowed Tome
					i(217572),	-- Crucible Raider's Shadowed Ultra Greatsword
					i(217532),	-- Crucible Raider's Shadowed Wingblades
					i(217662),	-- Dream Raider's Blazing Barrier
					i(217674),	-- Dream Raider's Blazing Blade
					i(217670),	-- Dream Raider's Blazing Charglaive
					i(217649),	-- Dream Raider's Blazing Chime
					i(217666),	-- Dream Raider's Blazing Cleaver
					i(217628),	-- Dream Raider's Blazing Defender
					i(217632),	-- Dream Raider's Blazing Dreamcarver
					i(217690),	-- Dream Raider's Blazing Flare
					i(217624),	-- Dream Raider's Blazing Flayer
					i(217616),	-- Dream Raider's Blazing Greathammer
					i(217645),	-- Dream Raider's Blazing Paws
					i(217686),	-- Dream Raider's Blazing Poleax
					i(217682),	-- Dream Raider's Blazing Recurve
					i(217641),	-- Dream Raider's Blazing Rifle
					i(217637),	-- Dream Raider's Blazing Saber
					i(217653),	-- Dream Raider's Blazing Scythe
					i(217657),	-- Dream Raider's Blazing Sickle
					i(217620),	-- Dream Raider's Blazing Torch
					i(217678),	-- Dream Raider's Blazing Trident
					i(217433),	-- Vault Raider's Earthen Bulwark
					i(217441),	-- Vault Raider's Earthen Conduit
					i(217429),	-- Vault Raider's Earthen Crossbow
					i(217449),	-- Vault Raider's Earthen Crusher
					i(217481),	-- Vault Raider's Earthen Fists
					i(217477),	-- Vault Raider's Earthen Glaives
					i(217485),	-- Vault Raider's Earthen Greatbow
					i(217457),	-- Vault Raider's Earthen Halberd
					i(217473),	-- Vault Raider's Earthen Knife
					i(217437),	-- Vault Raider's Earthen Pavise
					i(217461),	-- Vault Raider's Earthen Pillar
					i(217489),	-- Vault Raider's Earthen Scepter
					i(217445),	-- Vault Raider's Earthen Scriptures
					i(217469),	-- Vault Raider's Earthen Shard
					i(217421),	-- Vault Raider's Earthen Slicer
					i(217453),	-- Vault Raider's Earthen Splitter
					i(217465),	-- Vault Raider's Earthen Staff
					i(217425),	-- Vault Raider's Earthen Thumper
				}),
			})),
			-------------
			---- HEROIC ----
			-------------
			n(216236, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Mirioszin <Infinite Importer>
				["coord"] = { 73.8, 45.6, VALDRAKKEN },
				["groups"] = sharedData({
					["cost"] = {{ "i", ANTIQUE_BRONZE, 1 }},
					["sharedDescription"] = "Shared Transmog with |cFFA330C9Heroic|r.",
				}, {
					i(217603),	-- Crucible Raider's Molten Beacon
					i(217557),	-- Crucible Raider's Molten Cannon
					i(217561),	-- Crucible Raider's Molten Claws
					i(217553),	-- Crucible Raider's Molten Cleaver
					i(217565),	-- Crucible Raider's Molten Control Rod
					i(217517),	-- Crucible Raider's Molten Cudgel
					i(217549),	-- Crucible Raider's Molten Elderstaff
					i(217525),	-- Crucible Raider's Molten Focus
					i(217577),	-- Crucible Raider's Molten Greatshield
					i(217537),	-- Crucible Raider's Molten Hatchet
					i(217529),	-- Crucible Raider's Molten Kiteshield
					i(217513),	-- Crucible Raider's Molten Lance
					i(217541),	-- Crucible Raider's Molten Longbow
					i(217545),	-- Crucible Raider's Molten Mace
					i(217509),	-- Crucible Raider's Molten Mutilator
					i(217521),	-- Crucible Raider's Molten Rod
					i(217581),	-- Crucible Raider's Molten Shiv
					i(217569),	-- Crucible Raider's Molten Tome
					i(217573),	-- Crucible Raider's Molten Ultra Greatsword
					i(217533),	-- Crucible Raider's Molten Wingblades
					i(217663),	-- Dream Raider's Emerald Barrier
					i(217675),	-- Dream Raider's Emerald Blade
					i(217671),	-- Dream Raider's Emerald Charglaive
					i(217650),	-- Dream Raider's Emerald Chime
					i(217667),	-- Dream Raider's Emerald Cleaver
					i(217629),	-- Dream Raider's Emerald Defender
					i(217633),	-- Dream Raider's Emerald Dreamcarver
					i(217691),	-- Dream Raider's Emerald Flare
					i(217625),	-- Dream Raider's Emerald Flayer
					i(217617),	-- Dream Raider's Emerald Greathammer
					i(217646),	-- Dream Raider's Emerald Paws
					i(217687),	-- Dream Raider's Emerald Poleax
					i(217683),	-- Dream Raider's Emerald Recurve
					i(217642),	-- Dream Raider's Emerald Rifle
					i(217638),	-- Dream Raider's Emerald Saber
					i(217654),	-- Dream Raider's Emerald Scythe
					i(217658),	-- Dream Raider's Emerald Sickle
					i(217621),	-- Dream Raider's Emerald Torch
					i(217679),	-- Dream Raider's Emerald Trident
					i(217434),	-- Vault Raider's Frozen Bulwark
					i(217442),	-- Vault Raider's Frozen Conduit
					i(217430),	-- Vault Raider's Frozen Crossbow
					i(217450),	-- Vault Raider's Frozen Crusher
					i(217482),	-- Vault Raider's Frozen Fists
					i(217478),	-- Vault Raider's Frozen Glaives
					i(217486),	-- Vault Raider's Frozen Greatbow
					i(217458),	-- Vault Raider's Frozen Halberd
					i(217474),	-- Vault Raider's Frozen Knife
					i(217438),	-- Vault Raider's Frozen Pavise
					i(217462),	-- Vault Raider's Frozen Pillar
					i(217490),	-- Vault Raider's Frozen Scepter
					i(217446),	-- Vault Raider's Frozen Scriptures
					i(217470),	-- Vault Raider's Frozen Shard
					i(217422),	-- Vault Raider's Frozen Slicer
					i(217454),	-- Vault Raider's Frozen Splitter
					i(217466),	-- Vault Raider's Frozen Staff
					i(217426),	-- Vault Raider's Frozen Thumper
				}),
			})),
			-------------
			---- MYTHIC ----
			-------------
			n(216236, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Mirioszin <Infinite Importer>
				["coord"] = { 73.8, 45.6, VALDRAKKEN },
				["groups"] = sharedData({
					["cost"] = {{ "i", ANTIQUE_BRONZE, 1 }},
					["sharedDescription"] = "Shared Transmog with |cFFED7014Mythic|r.",
				}, {
					i(217604),	-- Crucible Raider's Corrupted Beacon
					i(217558),	-- Crucible Raider's Corrupted Cannon
					i(217562),	-- Crucible Raider's Corrupted Claws
					i(217554),	-- Crucible Raider's Corrupted Cleaver
					i(217566),	-- Crucible Raider's Shadowed Control Rod (Blizzard screwed up the name of this item)
					i(217518),	-- Crucible Raider's Corrupted Cudgel
					i(217550),	-- Crucible Raider's Corrupted Elderstaff
					i(217526),	-- Crucible Raider's Corrupted Focus
					i(217578),	-- Crucible Raider's Corrupted Greatshield
					i(217538),	-- Crucible Raider's Corrupted Hatchet
					i(217530),	-- Crucible Raider's Corrupted Kiteshield
					i(217514),	-- Crucible Raider's Corrupted Lance
					i(217542),	-- Crucible Raider's Corrupted Longbow
					i(217546),	-- Crucible Raider's Corrupted Mace
					i(217510),	-- Crucible Raider's Corrupted Mutilator
					i(217522),	-- Crucible Raider's Corrupted Rod
					i(217582),	-- Crucible Raider's Corrupted Shiv
					i(217570),	-- Crucible Raider's Corrupted Tome
					i(217574),	-- Crucible Raider's Corrupted Ultra Greatsword
					i(217534),	-- Crucible Raider's Corrupted Wingblades
					i(217664),	-- Dream Raider's Shadowflame Barrier
					i(217676),	-- Dream Raider's Shadowflame Blade
					i(217672),	-- Dream Raider's Shadowflame Charglaive
					i(217651),	-- Dream Raider's Shadowflame Chime
					i(217668),	-- Dream Raider's Shadowflame Cleaver
					i(217630),	-- Dream Raider's Shadowflame Defender
					i(217634),	-- Dream Raider's Shadowflame Dreamcarver
					i(217692),	-- Dream Raider's Shadowflame Flare
					i(217626),	-- Dream Raider's Shadowflame Flayer
					i(217618),	-- Dream Raider's Shadowflame Greathammer
					i(217647),	-- Dream Raider's Shadowflame Paws
					i(217688),	-- Dream Raider's Shadowflame Poleax
					i(217684),	-- Dream Raider's Shadowflame Recurve
					i(217643),	-- Dream Raider's Shadowflame Rifle
					i(217639),	-- Dream Raider's Shadowflame Saber
					i(217655),	-- Dream Raider's Shadowflame Scythe
					i(217659),	-- Dream Raider's Shadowflame Sickle
					i(217622),	-- Dream Raider's Shadowflame Torch
					i(217680),	-- Dream Raider's Shadowflame Trident
					i(217435),	-- Vault Raider's Storming Bulwark
					i(217443),	-- Vault Raider's Storming Conduit
					i(217431),	-- Vault Raider's Storming Crossbow
					i(217451),	-- Vault Raider's Storming Crusher
					i(217483),	-- Vault Raider's Storming Fists
					i(217479),	-- Vault Raider's Storming Glaives
					i(217487),	-- Vault Raider's Storming Greatbow
					i(217459),	-- Vault Raider's Storming Halberd
					i(217475),	-- Vault Raider's Storming Knife
					i(217439),	-- Vault Raider's Storming Pavise
					i(217463),	-- Vault Raider's Storming Pillar
					i(217491),	-- Vault Raider's Storming Scepter
					i(217447),	-- Vault Raider's Storming Scriptures
					i(217471),	-- Vault Raider's Storming Shard
					i(217423),	-- Vault Raider's Storming Slicer
					i(217455),	-- Vault Raider's Storming Splitter
					i(217467),	-- Vault Raider's Storming Staff
					i(217427),	-- Vault Raider's Storming Thumper
				}),
			})),
			n(216236, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Mirioszin <Infinite Importer>
				["coord"] = { 73.8, 45.6, VALDRAKKEN },
				["groups"] = sharedData({
					["cost"] = {{ "i", ANTIQUE_BRONZE, 1 }},
				}, {
					i(190170, {	-- Jigglesworth, Sr. (MOUNT!)
						["cost"] = {{ "i", ANTIQUE_BRONZE, 3 }},
					}),
					i(217493),	-- Vault Raider's Primal Greatstaff
					i(217660),	-- Dream Raider's Replica Dreambinder
				}),
			})),
			n(189644, {	-- Ms. Xiulan <Madam Goya's Assistant>
				["coord"] = { 19.0, 50.2, VALDRAKKEN },
				["groups"] = bubbleDown({ ["timeline"] = { ADDED_10_2_0, REMOVED_11_0_2 } }, {	-- Think it was technically 1 week after 11.0.2 released but who cares
					iensemble(211300, {	-- Arsenal: Whispering Temple Blades
						["cost"] = 2000000000,	-- 200,000g
					}),
					i(211097, {	-- Gilded Crown Splitter
						["cost"] = 900000000,	-- 90,000g
					}),
					i(211099, {	-- Gilded Scarab Bulwark
						["cost"] = 1000000000,	-- 100,000g
					}),
					i(211084, {	-- Golden Regal Scarab (MOUNT!)
						["cost"] = 12000000000,	-- 1,200,000g
					}),
					i(211096, {	-- Gold-Plated Witchhunter's Carbine
						["cost"] = 1000000000,	-- 100,000g
					}),
					i(211294, {	-- Marauder King's Body Carver
						["cost"] = 1000000000,	-- 100,000g
					}),
					i(211145, {	-- Royal Witch Doctor's Trophies
						["cost"] = 800000000,	-- 80,000g
					}),
					i(211159, {	-- Royal Witch Doctor's Guard
						["cost"] = 800000000,	-- 80,000g
					}),
					i(211259, {	-- Regal Gryphon Rider's Headgear
						["cost"] = 750000000,	-- 75,000g
					}),
					i(211295, {	-- Wrathful Crusader's Helm
						["cost"] = 750000000,	-- 75,000g
					}),
				}),
			}),
			n(187783, {	-- Pakak
				["coord"] = { 43.8, 75.0, VALDRAKKEN },
				["groups"] = {
					i(193571, {	-- Mallard Duckling (PET!)
						["cost"] = {
							{ "i", 197788, 1 },	-- 1xBraised Bruffalon Brisked
							{ "i", 197792, 3 },	-- 3xFated Fortune Cookie
							{ "i", 197789, 1 },	-- 1xRiverside Picnic
						},
					}),
				},
			}),
			n(253067, {	-- Silvrath <Decor Specialist>
				["coord"] = { 72.0, 49.4, VALDRAKKEN },
				["timeline"] = { ADDED_11_2_7 },
				["groups"] = {
					i(248651, {	-- Draconic Memorial Stone (DECOR!)
						["sourceQuest"] = 72935,	-- Archives Return
						["cost"] = {{ "c", DRAGON_SUPPLIES, 600 }},
					}),
					i(248103, {	-- Draconic Stone Table (DECOR!)
						["minReputation"] = { FACTION_VALDRAKKEN_ACCORD, 14 },
						["cost"] = {{ "c", DRAGON_SUPPLIES, 300 }},
					}),
					i(248652, {	-- Dragon's Grand Mirror (DECOR!)
						["minReputation"] = { FACTION_VALDRAKKEN_ACCORD, 20 },
						["cost"] = {{ "c", DRAGON_SUPPLIES, 250 }},
					}),
					i(246706, {	-- Elegant Dracthyr's Tea Cup (DECOR!)
						["sourceQuest"] = 67047,	-- Warm Away These Shivers
						["cost"] = {{ "c", DRAGON_SUPPLIES, 100 }},
					}),
					i(248655, {	-- Elegant Dracthyr's Tea Set (DECOR!)
						["sourceQuest"] = 70880,	-- To Cook With Finery
						["cost"] = {{ "c", DRAGON_SUPPLIES, 200 }},
					}),
					i(248104, {	-- Pentagonal Stone Table (DECOR!)
						["sourceAchievement"] = 17773,	-- A Blue Dawn
						["cost"] = {{ "c", DRAGON_SUPPLIES, 150 }},
					}),
					i(247223, {	-- Roast Riverbeast Platter (DECOR!)
						["sourceQuest"] = 67063,	-- 10,000 Years of Roasting
						["cost"] = {{ "c", DRAGON_SUPPLIES, 175 }},
					}),
					i(248112, {	-- Valdrakken Garden Fountain (DECOR!)
						["minReputation"] = { FACTION_VALDRAKKEN_ACCORD, 6 },
						["cost"] = {{ "c", DRAGON_SUPPLIES, 400 }},
					}),
					i(256429, {	-- Valdrakken Lamppost (DECOR!)
						["sourceQuest"] = 70745,	-- Enforced Relaxation
						["cost"] = {{ "c", DRAGON_SUPPLIES, 200 }},
					}),
					i(256169, {	-- Valdrakken Oven (DECOR!)
						["minReputation"] = { FACTION_VALDRAKKEN_ACCORD, 3 },
						["cost"] = {{ "c", DRAGON_SUPPLIES, 500 }},
					}),
					i(248653, {	-- Valdrakken Stone Stool (DECOR!)
						["sourceQuest"] = 71097,	-- A Helping Claw
						["cost"] = {{ "c", DRAGON_SUPPLIES, 50 }},
					}),
				},
			}),
			n(196637, {	-- Tethalash
				["coord"] = { 25.6, 35.6, VALDRAKKEN },
				["sym"] = {{"select","itemID",
					198809,	-- Armored Vorquin Leystrider (MOUNT!)
					201720,	-- Bronze Vorquin (MOUNT!)
					201702,	-- Crimson Vorquin (MOUNT!)
					198808,	-- Guardian Vorquin (MOUNT!)
					198811,	-- Majestic Armored Vorquin (MOUNT!)
					201719,	-- Obsidian Vorquin (MOUNT!)
					201704,	-- Sapphire Vorquin (MOUNT!)
					198810,	-- Swift Armored Vorquin (MOUNT!)
				}},
				["groups"] = {
					i(249548, { ["timeline"] = { ADDED_11_2_7 } }),	-- Augmenter's Opal Banner (DECOR!)
					i(249824, { ["timeline"] = { ADDED_11_2_7 } }),	-- Devastator's Brazier (DECOR!)
					i(249549, {	-- Draconic Crafter's Table (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
						["cost"] = {{ "c", DRAGON_SUPPLIES, 200 }},
					}),
					i(249547, { ["timeline"] = { ADDED_11_2_7 } }),	-- Evoker's Elegant Rug (DECOR!)
					i(249545, { ["timeline"] = { ADDED_11_2_7 } }),	-- Preserver's Censer (DECOR!)
				},
			}),
			n(185562, {	-- Tithris
				["coord"] = { 47.3, 46.7, VALDRAKKEN },
				["groups"] = {
					i(203443, {	-- Box of Leapmaize Crackers (QI!)
						["timeline"] = { ADDED_10_1_5 },
					}),
				},
			}),
			n(196640, {	-- Yzinia <Innkeeper>
				["coord"] = { 22.6, 30.8, VALDRAKKEN },
				["groups"] = { i(200099) },	-- M.R.E.
			}),
			n(216449, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Vaskarn
				["coord"] = { 45.5, 55.9, VALDRAKKEN },
				["groups"] = {
					-- Trade Up
					i(211950, {	-- Lively Clutch of Wyrm's Awakened Crests
						["cost"] = {{ "c", 2807, 90 }},	-- Drake's Awakened Crests x90
						["groups"] = {
							currency(2809),	-- Wyrm's Awakened Crest
						},
					}),
					i(212384, {	-- Restless Satchel of Drake's Awakened Crests
						["cost"] = {{ "c", 2806, 90 }},	-- Whelpling's Awakened Crest x90
						["groups"] = {
							currency(2807),	-- Drake's Awakened Crest
						},
					}),
					i(212383, {	-- Yawning Basket of Aspect's Awakened Crests
						["cost"] = {{ "c", 2809, 90 }},	-- Wyrm's Awakened Crests x90
						["groups"] = {
							currency(2812),	-- Aspect's Awakened Crest
						},
					}),
					-- Trade Down
					i(212367, {	-- Clutch of Wyrm's Awakened Crests
						["cost"] = {{ "c", 2812, 15 }},	-- Aspect's Awakened Crests x15
						["groups"] = {
							currency(2809),	-- Wyrm's Awakened Crest
						},
					}),
					i(211951, {	-- Pouch of Whelpling's Awakened Crests
						["cost"] = {{ "c", 2807, 15 }},	-- Drake's Awakened Crests x15
						["groups"] = {
							currency(2806),	-- Whelpling's Awakened Crest
						},
					}),
					i(211952, {	-- Satchel of Drake's Awakened Crests
						["cost"] = {{ "c", 2809, 15 }},	-- Wyrm's Awakened Crests x15
						["groups"] = {
							currency(2807),	-- Drake's Awakened Crest
						},
					}),
				},
			})),
			n(196975, {	-- Zinfandormu <Sommelier>
				["coord"] = { 30.8, 60.8, VALDRAKKEN },
				["groups"] = {
					i(197849),	-- Ancient Firewine
					i(194684),	-- Azure Leywine
					i(180409),	-- Crimson Altar Wine
					i(178219),	-- Mulled Faewine
					i(178221),	-- Torchberry Wine
					i(200855),	-- Tuskarr Port Wine
				},
			}),
		}),
	}),
})));
