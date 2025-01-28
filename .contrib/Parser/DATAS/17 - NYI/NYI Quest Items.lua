---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, filter(QUEST_ITEMS, {
	expansion(EXPANSION.CLASSIC, {
		-- 1.x.x
		n(P1xx, {
			i(17409),	-- Encrusted Crystal Fragment
			i(20936),	-- Qiraji Blessed Jewel
			i(20937),	-- Qiraji Encased Jewel
			i(20887),	-- Qiraji Engraved Jewel
			i(20883),	-- Qiraji Glyphed Jewel
			i(17347),	-- Syndicate Man Tracker (MURP)
		}),
	}),
	expansion(EXPANSION.WRATH, {
		-- 3.1.0
		expansion(EXPANSION.WRATH, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_3_1_0 } }, {
			i(42147),	-- Force Reaction Frost Giants
			i(40796),	-- Force Reaction Frost Vrykul
		})),
	}),
	expansion(EXPANSION.CATA, {
		-- 4.0.3
		expansion(EXPANSION.CATA, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_3 } }, {
			i(45818),	-- Force Quest Phase 1
			i(46056),	-- Force Quest Phase 2
		})),
	}),
	expansion(EXPANSION.MOP, {
		-- 5.2.0
		expansion(EXPANSION.MOP, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_2_0 } }, {
			i(93660),	-- Thunder-Laced Egg
		})),
	}),
	expansion(EXPANSION.WOD, {
		-- 6.0.1
		expansion(EXPANSION.WOD, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
			i(109012),	-- Frostwolf Ancestral Totem
		})),
	}),
	expansion(EXPANSION.LEGION, {
		-- 7.2.0
		expansion(EXPANSION.LEGION, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_2_0 } }, {
			i(142362),	-- ZZZ OLD Fel-Etched Bone
			i(142376),	-- ZZZ OLD Glowing Bloodthistle Petal
			i(142371),	-- ZZZ OLD Inferno Stone
			i(142373),	-- ZZZ OLD Locket of Eldre'Thalas
			i(142378),	-- ZZZ OLD Vial of Ancient Mana
		})),
	}),
	expansion(EXPANSION.BFA, {
		-- 8.0.1
		expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
			i(157772),	-- A Royal Concern
			i(157775),	-- A Royal Concern
			i(157788),	-- Saurid Egg
			i(165357),	-- Wolf's Den (162530) is used
		})),

		-- 8.1.0
		expansion(EXPANSION.BFA, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_0 } }, {
			i(164764),	-- Trident Head
		})),

		-- 8.1.5
		expansion(EXPANSION.BFA, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_5 } }, {
			i(164776),	-- Schematic: The Ub3r-Spanner
		})),

		-- 8.2.0
		expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
			i(169326),	-- Abyssal Shard
			i(167652),	-- Blueprint: Hundred-Fathom Lure
			i(168023),	-- DNT- Smashed Transport Relay
			i(168030),	-- DNT - Hyperbolic Circuit
			i(168031),	-- DNT-Transference Disc
			i(169958),	-- Fragment of the Void
			i(169959),	-- Fragment of the Void
			i(169960),	-- Fragment of the Void
			i(167791),	-- Paint Vial: Battletorn Blue
			i(169696),	-- REUSE ME [MTMM]
			i(169702),	-- REUSE ME [MTMM]
			i(169703),	-- REUSE ME [MTMM]
			i(168917),	-- Squishy Clam Meat
			i(169832),	-- The Infinity Tube
			i(169575),	-- Worthless data
		})),
	}),
	expansion(EXPANSION.SL, {
		-- 9.0.1
		expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
			i(172176),	-- Abomination Service Stub
			i(183137),	-- Acolyte's Corpse
			i(181463),	-- Alchemist's Crate of the Anonymous Buyer
			i(175082),	-- Amulet of the Realms
			i(174062),	-- Ancient Anima Staff
			i(174940),	-- Ancient Heartwood
			i(183722),	-- Ancient Insignia
			i(172024),	-- Ancient Maldracite Weapon
			i(181365),	-- Anh'Qiraj Statue
			i(174058),	-- Anima Reserve
			i(175972),	-- Anima-Infused Venom
			i(178031),	-- Anointing Chime
			i(182473),	-- Archivam Tome
			i(173013),	-- Bag of Faerie Dust
			i(178493),	-- Baine Bloodhoof
			i(174385),	-- Battle Supplies
			i(175265),	-- Belt of Prime Command
			i(178463),	-- Bestial Epigraph
			i(182249),	-- Bindings of Fleshcrafting
			i(172889),	-- Blackthorn Antidote
			i(181139),	-- Blueprint: Charm of Alacrity
			i(181241),	-- Blueprint: Charm of Buff 7
			i(173700),	-- Bonebinder Zal's Key
			i(179317),	-- Bonemetal
			i(182654),	-- Bonescript Dispatches
			i(173380),	-- Book of the Unspeakable
			i(172900),	-- Bounty Notes
			i(174854),	-- Brimming Animus Core
			i(174023),	-- Calibrated Mawstone
			i(174024),	-- Calibrated Mawstone
			i(173965),	-- Calibrated Mawstone
			i(172456),	-- Chipped Fel Core
			i(171961),	-- Cleansing Chime
			i(172969),	-- Codex of Impossibilities
			i(181350),	-- Collaborator's Robes
			i(173364),	-- Collect Dummy
			i(175977),	-- Command Lattice Mir
			i(173004),	-- Command Lattice Omu
			i(175978),	-- Command Lattice Pio
			i(136851),	-- Commander Domitille's Helm
			i(180785),	-- Condensed Essence
			i(178142),	-- Condensed Stygia
			i(178875),	-- Corpsehound Whistle
			i(175839),	-- Corrupted Anima
			i(167209),	-- Crude Map
			i(173267),	-- Crystalized Gormgris
			i(180446),	-- Curiously Corrosive Concoction
			i(180626),	-- Cypher of Melody
			i(175012),	-- Dancing Cricket
			i(171967),	-- Dark Cowl
			i(174357),	-- Death Lotus Petal
			i(172970),	-- Debris Searched
			i(172967),	-- Deciphering Lens
			i(170585),	-- Depleted Anima Core
			i(175253),	-- Desiccating Formula
			i(171990),	-- Dormant Maldracite
			i(174492),	-- Dripping Fangs
			i(177894),	-- Earthen Jar
			i(175411),	-- Effused Powder
			i(180809),	-- Elysian Horn
			i(174075),	-- Emeni's Magnificent Skin
			i(168803),	-- Emergency Supplies
			i(173149),	-- Empty Anima Crystal
			i(182363),	-- Enchanted Trickster Dust
			i(181496),	-- Endmire Blossom
			i(175793),	-- Enlarged Gluegland
			i(180898),	-- Ephemeral Draught
			i(180471),	-- Essence Dust
			i(174991),	-- Everlife Root Fiber
			i(177950),	-- Falk's Note
			i(174275),	-- Fallen Purian
			i(172454),	-- Fel Merchandise
			i(172460),	-- Fel Poultice
			i(172513),	-- Fel Trigger
			i(174775),	-- Fix-It-Stick
			i(176814),	-- Fleshcrafter's Maldracite
			i(171106),	-- Gathered Necrotic Shards
			i(179321),	-- Gildenite
			i(174331),	-- Goliath Gauntlet
			i(183961),	-- Gorm "Juice"
			i(172951),	-- Gormherd Branch
			i(173385),	-- Greenflame Candle
			i(181861),	-- Ground Twilight Bark
			i(174877),	-- Grubby's Silk
			i(172901),	-- Hakone's Signet
			i(172455),	-- Hardened Fel Shards
			i(175132),	-- Havoc Chains
			i(174341),	-- Heart of the Fallen Tree
			i(179929),	-- Heart of the Fallen Tree
			i(172035),	-- Heart of Tirna Rowen
			i(174658),	-- Imprisoned Soul
			i(175974),	-- Intact Femur
			i(171373),	-- Introspection
			i(173693),	-- Jar of Maggots
			i(178567),	-- Kein's Runeblade
			i(175478),	-- Korrim's Journal
			i(173923),	-- Kyrian Boots
			i(173922),	-- Kyrian Chestplate
			i(173924),	-- Kyrian Helmet
			i(180127),	-- Kyrian Javelin
			i(173925),	-- Kyrian Pauldrons
			i(173708),	-- Kyrian Shield
			i(176321),	-- Lady Moonberry's Hairbrush
			i(172457),	-- Legion Orders
			i(170551),	-- Light of Bastion
			i(183074),	-- Lost Animacone
			i(172205),	-- Maldracite Crystal
			i(180480),	-- Maldraxxi Throwing Axe
			i(178214),	-- Mantle of the Primus
			i(174643),	-- Marileth's Journal - Cover
			i(174948),	-- Marileth's Mystery Potion
			i(173728),	-- Meaty Exopods
			i(180437),	-- Medallion of Dominion
			i(174750),	-- Memetic Anima
			i(172220),	-- Mirror Fragment
			i(180800),	-- Misshapen Cypher of Relocation
			i(180262),	-- Missing Eye
			i(173899),	-- Mysterious Hooks
			i(178729),	-- Necromancy Focus
			i(171146),	-- Necrotic Deathward
			i(170552),	-- Necrotic Fetish
			i(171105),	-- Necrotic Shard
			i(174778),	-- Neonate Bonetooth
			i(173694),	-- Night Market Template
			i(172464),	-- Nimleaf
			i(171969),	-- Nondescript Robe
			i(177834),	-- Obliterated Soul Shard
			i(175797),	-- Ossein Resin
			i(175276),	-- Phylactery of Kel'Thuzad
			i(171368),	-- Pitch-Perfect Alloy
			i(177961),	-- Plague Sample
			i(176056),	-- Plague Samples
			i(174801),	-- Plain Lockbox
			i(173952),	-- Pomagrave
			i(173896),	-- Portable Spy Kit
			i(172453),	-- Prisoner Transfer Orders
			i(178467),	-- Profane Shadestone
			i(180828),	-- Promissory Note
			i(173973),	-- Purian
			i(177963),	-- Purified Armor Fragments
			i(183733),	-- Purified Nectar
			i(175973),	-- Ravager Talon
			i(174073),	-- Regenerative Frame
			i(179313),	-- Registrar's Records
			i(174332),	-- Replenished Anima Container
			i(180443),	-- Researcher's Notes
			i(171963),	-- Resilient Spark Slot
			i(175134),	-- Resistance Boots
			i(175794),	-- Ring of Keys
			i(169937),	-- Ritual Components
			i(174939),	-- Ritual Supplies
			i(173266),	-- Ritual Vestments
			i(179984),	-- Rituals and Rites of the Eternal Army
			i(173392),	-- Runed Dagger
			i(172968),	-- Runed Latchpick
			i(178141),	-- Runic Codex
			i(173897),	-- Runic Fastener
			i(174343),	-- Scroll of Binding
			i(173898),	-- Sealed Scrolls
			i(176215),	-- Shard of the Countess
			i(180440),	-- Sigil of Discipline
			i(180441),	-- Sigil of Sacrifice
			i(180295),	-- Sigil of Shadow
			i(173047),	-- Silkstrider Larvae
			i(173045),	-- Silkstrider Silk
			i(171369),	-- Singing Wood
			i(173894),	-- Sludge-Camouflaged Pants
			i(173893),	-- Sludge-Covered Belt
			i(179318),	-- Sorrowvine
			i(175131),	-- Soulmending Patches
			i(174329),	-- Soulshatter Arrow
			i(173901),	-- Specialized Gutting Knife
			i(180297),	-- Spellbound Notes
			i(173148),	-- Steel Cleaver
			i(178515),	-- Stitched Surprise Cake
			i(172226),	-- Stolen Anima
			i(176808),	-- Stringy Growth
			i(180271),	-- Stringy Spore
			i(175976),	-- Supervisor's Plans
			i(176813),	-- Surgeon's Maldracite
			i(181351),	-- Tattered Cloth
			i(181352),	-- Tattered Leather
			i(171104),	-- The Accuser's Sinstone
			i(183874),	-- The Darkwing Flight Soars With Us!
			i(183875),	-- The Tithes are a Lie!
			i(177947),	-- Theotar's Lost Parasol
			i(173270),	-- Toc's Bag of Parts
			i(171367),	-- Tonal Mallet
			i(171440),	-- Torghast Door Key
			i(174489),	-- Treated Animacone
			i(177949),	-- Tubbins's Lost Teapot
			i(174844),	-- Tuft of Prowler Fur
			i(178685),	-- Twisted Mawsteel
			i(171991),	-- Unadorned Weapon
			i(175971),	-- Unexploded Blight Bomb
			i(180272),	-- Upper Reaches Key
			i(173900),	-- Vanishing Ink
			i(176085),	-- Venthyr Clothing
			i(173157),	-- Vial of Caustic Goo
			i(177845),	-- Vial of Plague
			i(174629),	-- Viridian Stone
			i(173313),	-- Vopath's Key
			i(173271),	-- Vopath's Stolen Items
			i(173357),	-- Voracious Maggot
			i(177948),	-- Vulca's Lost Toolkit
			i(168811),	-- Wand of Absorption
			i(177895),	-- Warm Earthen Jar
			i(179320),	-- Wealdwood
			i(178466),	-- Wicked Spirit Shard
			i(172458),	-- Worn Legion Chit
		})),

		-- 9.0.2
		expansion(EXPANSION.SL, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_2 } }, {
			i(175013),	-- Bug Dissolver
			i(181824),	-- Corrosive Bile
			i(177905),	-- Deathstone
			i(176396),	-- Dredhollow Tools
			i(184228),	-- Electrified Soul Remnant
			i(184196),	-- Flask of Unravelling
			i(180831),	-- Kivarr's Tonic
			i(180775),	-- Memory of Home
			i(184102),	-- Possessed Mask
			i(178016),	-- Potential Catalyst
			i(184229),	-- Shadowy Key
			i(184488),	-- Sinstone Fragment
			i(184355),	-- Soulkeeper
			i(184356),	-- Soulkeeper
			i(184357),	-- Soulkeeper
			i(184358),	-- Soulkeeper
			i(184169),	-- Vault Chain Pull
		})),

		-- 9.1.0
		expansion(EXPANSION.SL, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_0 } }, {
			i(185732),	-- Archive Tablet
			i(187004),	-- Bone Chew
			i(185736),	-- Brilliant Golden Feather
			i(187002),	-- Delicious Pet Cookie
			i(185727),	-- Draka's Battlehorn
			i(186733),	-- Lovely Pet Caller
			i(185766),	-- Necrolite Focusing Crystal
			i(187003),	-- Pet Plushy
			i(187001),	-- Stylish Pet Collar
			i(187505),	-- Super Cool Dragon Head
			i(185743),	-- Torn Page
			i(187005),	-- Wizard Pet Hat
		})),

		-- 9.2.0
		expansion(EXPANSION.SL, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_2_0 } }, {
			i(187688),	-- [DNT] Rinanji's Key
			i(187686),	-- [DNT] Suspicious Badge
			i(187274),	-- Ancient Alloy
			i(187844),	-- Automa Protector Intact Resonator
			i(187685),	-- Black Steel Fragment
			i(187708),	-- Broken Helm
			i(188002),	-- Broken Helm
			i(188765),	-- Broker Studies
			i(191038),	-- Bundle of Supplies
			i(190323),	-- Chain Reactor
			i(188214),	-- Core Vine Cluster [UNUSED]
			i(187341),	-- Creation Codex: Animate
			i(187340),	-- Creation Codex: Automa
			i(187158),	-- Deobfuscating Oculus
			i(187126),	-- Discarded Journal
			i(188275),	-- Energized Roots [UNUSED]
			i(188166),	-- Engraved Card
			i(188200),	-- Engraved Stone
			i(190970),	-- Felicitous Glade Report
			i(187808),	-- Ingress Phrase
			i(187337),	-- Mawsworn Cache Key
			i(187115),	-- Mawsworn Missive
			i(191634),	-- Memory of Unity
			i(191635),	-- Memory of Unity
			i(191636),	-- Memory of Unity
			i(191637),	-- Memory of Unity
			i(191638),	-- Memory of Unity
			i(191639),	-- Memory of Unity
			i(191640),	-- Memory of Unity
			i(191641),	-- Memory of Unity
			i(191642),	-- Memory of Unity
			i(191643),	-- Memory of Unity
			i(191644),	-- Memory of Unity
			i(191645),	-- Memory of Unity
			i(185484),	-- Nathrezim Documents
			i(187528),	-- Pristine Automa Core
			i(187142),	-- Pristine Cervid Core
			i(187141),	-- Pristine Lupine Core
			i(187143),	-- Pristine Raptora Core
			i(187618),	-- Site Oeth Circuit
			i(188274),	-- Stolen Artifact
			i(187321),	-- Thermic Demolitor
			i(188165),	-- Waterfall Water
			i(188192),	-- Worn Stone Fragment
		})),
	}),
	expansion(EXPANSION.DF, {
		-- 10.0.0
		expansion(EXPANSION.DF, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
			i(194445),	-- [DNT] Ceremonial Necklace
			i(191633),	-- A Shard of Crystallized Mana
			i(191023),	-- Mudcaked Necklace
			i(191028),	-- Yu's Bloodied Journal Entry
			i(191065),	-- Shiverweb Silk
			i(191191),	-- Enchanted Compass
			i(191108),	-- Tuskarr Offering
			i(191282),	-- Scouting Job: Azure Spawn Expedition Site
			i(191286),	-- Recovery Job: Hopaway Thieves
			i(191785),	-- Overly Loud Pocketwatch
			i(191786),	-- Elaborate Lace Cuff
			i(191889),	-- Ancient Sword Design
			i(192128),	-- Reinforced Scale Sample
			i(192129),	-- Azure Basilisk Belly
			i(191089),	-- Scrimshaw Key

			--- Might Appear In Game ---
			i(191916),	-- [DNT] Engraved Spyglass
			i(198813),	-- [DNT] Key to Knowledge
			i(191567),	-- [DNT] Placeholder Item
			i(198820),	-- [DNT] The Book of Knowledge
			i(191923),	-- [DNT] Worn Key
			i(192477),	-- [PH] Primalist Keystone
			i(191121),	-- Abalone-Inlaid Key
			i(193414),	-- Aged Shamanic Dagger
			i(191924),	-- Alvi's Spyglass
			i(187854),	-- Arcane Key
			i(192767),	-- Bag of Ore
			i(191106),	-- Bakra's Paw
			i(191847),	-- Basilisk Egg
			i(189586),	-- Beacon Purifier
			i(191670),	-- Beaded Feather Band
			i(192750),	-- Black Iron Javelin
			i(193401),	-- Bloodstained Musken-hide Greatbelt
			i(191124),	-- Bloody Key
			i(191243),	-- Blue Dragon Relic
			i(192507),	-- Boku's Empowerment Totems
			i(191090),	-- Broken Lock
			i(190965),	-- Bundle of Duck Feathers
			i(191668),	-- Carved Stone Whale
			i(194032),	-- Chaos Ysemerald
			i(192561),	-- Chrono-Stabilizer
			i(193411),	-- Cinderbound Pendant
			i(199301),	-- Clopper's Clambering Gear
			i(199302),	-- Clopper's Compass
			i(199303),	-- Clopper's Knapsack
			i(191938),	-- Congealing Essence
			i(200529),	-- Constructed Arcana
			i(193404),	-- Core of Aqueous Corruption
			i(193403),	-- Crystalline Focus
			i(193402),	-- Decatriarch's Fetish
			i(191853),	-- Draconic Crystal
			i(192194),	-- Draconic Tools
			i(191848),	-- Draconium Angle Iron (profession?)
			i(193417),	-- Dreamwisp of Entangled Memories
			i(190960),	-- Duck Tail Feathers
			i(191104),	-- Durgun's Paw
			i(193049),	-- Earth Key [DNT/UNUSED]
			i(194428),	-- Elemental Soul Cage NYI
			i(191117),	-- Enchanted Claws
			i(193858),	-- Enchanted Tools
			i(191551),	-- Encrusted Key [DNT]
			i(194426),	-- Enriched Soil
			i(191308),	-- Envenomed Spear
			i(192496),	-- Exhumed Hunter's Spear
			i(193839),	-- Explosive Ash
			i(194564),	-- Extra-Delicious Riverbeast Meat
			i(191120),	-- Extra-shiny Gorloc Scale
			i(191788),	-- Field Sampling Tool
			i(193856),	-- Flowery's Rake
			i(192079),	-- Fossil Fragments
			i(191115),	-- Giant Temporal Mote
			i(191088),	-- Gorloc Scrimshaw
			i(190174),	-- Haunch of Salamander Meat
			i(193405),	-- Headteacher's Ledger
			i(193416),	-- Holographic Distributor
			i(193395),	-- Hourglass of Shifting Sands
			i(192123),	-- Job Description
			i(191105),	-- Kerwal's Paw
			i(193397),	-- Kyrakka's Fangs
			i(200873),	-- Leftover Bread
			i(200548),	-- Maldra's Manacles Key
			i(191702),	-- Matilda's Favorite Fishing Rod
			i(200544),	-- Mistvale Map: Illegible
			i(190191),	-- Muck-Covered Map
			i(192783),	-- Nokhud Vanguard Orders
			i(198450),	-- Old Crabshell
			i(190964),	-- Ornate Chest Key
			i(191947),	-- Parachutes
			i(189362),	-- Pheromone Gland
			i(191246),	-- Pieces of Firewood
			i(194425),	-- Plains Boar Ribs
			i(193413),	-- Plume of the Sky Mother
			i(193046),	-- Portal Spike
			i(193047),	-- Portal Spike
			i(193048),	-- Portal Spike
			i(191247),	-- Potential Relics
			i(191281),	-- Pound of Blubbery Flesh
			i(199633),	-- Prepfoot Cell Key
			i(193412),	-- Primal-Infused Dragon Egg
			i(193267),	-- Pristine Hide
			i(193260),	-- Prized Jewel
			i(198812),	-- Rae'ana Alchemy Kit
			i(199907),	-- Rebel Plans
			i(191538),	-- Relic Fragment
			i(191463),	-- Reliquary Pillow
			i(191285),	-- Requisition Job: BLACKSMITH - Tent Stakes
			i(191284),	-- Requisition Job: TAILOR - Tent Canvas Repairs
			i(191283),	-- Requistion Job: Cold Weather Insulation
			i(189750),	-- Screechflight Totem Fragment
			i(193266),	-- Sharp Tooth
			i(191116),	-- Shiny Gorloc Scale
			i(190972),	-- Shiverweb Silk DEPRECATED
			i(190974),	-- Silk Slasher
			i(193415),	-- Sindragosa's Records
			i(191245),	-- Sockeye Salmon
			i(193396),	-- Spellbound Musken-Hide Satchel
			i(192752),	-- Staff Headpiece
			i(191719),	-- Sticky Key
			i(194565),	-- Stone Ponoliak Figure
			i(191093),	-- Sturdy Bones
			i(192124),	-- Sulfurus Residue
			i(191956),	-- Suspicious Vial
			i(191112),	-- Temporal Mote
			i(199200),	-- Tender Vorquin Meat
			i(199201),	-- Tender Vorquin Meat
			i(191665),	-- Testing Kit
			i(195392),	-- Thaldraszian Acorn Extract
			i(192482),	-- Timewalker Staff
			i(192551),	-- Timewalker Staff
			i(193409),	-- Time-Lost Curio
			i(197952),	-- Titan Disc
			i(199199),	-- Tough Moose Flank
			i(192188),	-- Tuskarr Fishing Gear
			i(193859),	-- Twice-Burnt Potato
			i(192421),	-- Vial Questgiver
			i(192453),	-- Waywatcher Spyglass
			i(191703),	-- Weirdly Huge Gorloc Eye
			i(194105),	-- Whelpling Formula
			i(192805),	-- Wildlife Sample
		})),

		-- 10.0.2
		expansion(EXPANSION.DF, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_2 } }, {
			i(194706),	-- [DEPRECATED]Illusionary Key
			i(191069),	-- Beacon of the Black Prince
			i(199798),	-- Makko's Journal - Page Seven
			i(194423),	-- Maruuk's Spear
			i(194421),	-- Teera's Bow
		})),

		-- 10.0.7
		expansion(EXPANSION.DF, patch(0,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_7 } }, {
			i(204089),	-- Atrenosh's Spellsworn Sigil
			i(203998),	-- Beetle Juice
			i(202396),	-- Plains Timber
			i(203997),	-- Raw Argali Flank
			i(202204),	-- Receiving Stone: Final Warning
			i(203464),	-- Sealed Spellsworn Scroll
			i(204249),	-- Translated Correspondence of Black Dragons
			i(202205),	-- Translated Journal of Adamanthia
		})),

		-- 10.1.0
		expansion(EXPANSION.DF, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_0 } }, {
			i(201956),	-- [DNT] Snakey Eyes
			i(204351),	-- Animated Crystal Shard
			i(204349),	-- Bigger Wrench
			i(204637),	-- Boulder Chunk
			i(204325),	-- Crude Key Fragment
			i(204711),	-- Crystal Focus
			i(204331),	-- Djaradin Pillar Shard
			i(204347),	-- Pool Contaminant
			i(205410),	-- Pungent Morsel
			i(202239),	-- Senegos's Old Spellbook
			i(204197),	-- Shard of an Earth Portal
			i(204198),	-- Shard of an Fire Portal
			i(202705),	-- Snail Slime
			i(202875),	-- Snail Lasso
			i(204327),	-- Titan Machine Part
			i(204175),	-- Unknown Core
		})),

		-- 10.1.5
		expansion(EXPANSION.DF, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_5 } }, {
			i(202270),	-- [DNT] Twice-Woven Rope
			i(202313),	-- Echolocator
			i(202312),	-- Juicy Mammoth Steak
			i(202340),	-- Laydia's Flower Petals
			i(202342),	-- Luggage Key
			i(204983),	-- Primalist Dropbox Key [DNT]
			i(204275),	-- Slimey Key
			i(204895),	-- Storm-touched Missive Stone [DNT]
			i(202363),	-- Survey Arc Device
		})),

		-- 10.2.0
		expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_0 } }, {
			i(206378),	-- [DNT] Test Loot
			i(206379),	-- [DNT] Test Loot
			i(208703),	-- Blacksmith Bammer
			i(208731),	-- Blacksmith Bammer Key
			i(207632),	-- Dream-Attuned Crystal
			i(208217),	-- Illusory Scroll of Youth - NOT USED
			i(209952),	-- Mark of Q'onzu
			i(208702),	-- Memory Essence
			i(208955),	-- Pilfered Dreamshard
			i(208049),	-- Valarjar Trophy
			i(208599),	-- Verdant Dream Seed
		})),

		-- 10.2.5
		expansion(EXPANSION.DF, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_5 } }, {
			i(211266),	-- Archivist's Fire Totem
			i(210720),	-- Delicate Flower
			i(210721),	-- Fanciful Flower
			i(210081),	-- Flaming Torch
			i(212155),	-- Hearthstone Invitation Letter
			i(212156),	-- Hearthstone Invitation Letter
		})),

		-- 10.2.7
		expansion(EXPANSION.DF, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_7 } }, {
			i(210585),	-- Aesom's Memory Stone
			i(217349),	-- DEPRECATED - Arcane Dust
			i(210583),	-- Kuros's Memory Stone
			i(210587),	-- Nemuraan's Memory Stone
			i(221266),	-- Precious Belonging [DNT]
			i(213173),	-- Thread of Power
			i(210591),	-- Tishamaat Memory Stones
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.0.0
		expansion(EXPANSION.TWW, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
			i(219939),	-- Alleria's Crystal
			i(213193),	-- Arathi Army Medallion
			i(223638),	-- Arathi Trade Goods
			i(219197),	-- Black Blood Residue
			i(211210),	-- Blacksmith Boss' Head
			i(211304),	-- Bone Key
			i(224252),	-- Calcified Journal
			i(211963),	-- Ceiling Sweeper
			i(212344),	-- Chest Key
			i(220116),	-- Completed Market Audit
			i(208957),	-- Conduit of the Southern Storm
			i(219214),	-- Cooling Wax
			i(213108),	-- Corrupted Oil
			i(218084),	-- Crumpled Note
			i(213163),	-- Cryptographic Glyph
			i(211930),	-- Damaged Framework
			i(211291),	-- Decorative Bones
			i(221751),	-- DO NOT USE Prismatic Codex
			i(216686),	-- Earthen Axe
			i(217142),	-- Earthen Limb
			i(216683),	-- Earthen Rifle
			i(216685),	-- Earthen Shield
			i(216684),	-- Earthen Sword
			i(212223),	-- Elemental Essence
			i(225927),	-- Emerald Necklace
			i(211797),	-- Expedition Map
			i(219400),	-- Faerin's Torch of Holy Flame
			i(212547),	-- Final Project Page
			i(206349),	-- Fragmented Reagent
			i(211960),	-- Game Piece
			i(212882),	-- Glittering Ore
			i(211929),	-- Ichor Coated Debris
			i(218458),	-- Important Info Scrolls
			i(213402),	-- Incriminating Crystal
			i(213405),	-- Incriminating Focus
			i(213404),	-- Incriminating Script
			i(213424),	-- Keg of Cinderbrew Mead
			i(217400),	-- Kobyss Lure
			i(213557),	-- Lost Journal Tablet
			i(212519),	-- Nebb's Key
			i(212521),	-- Nebb's "Treasure" [DNT]
			i(212604),	-- Restored Titan Key NOT USED
			i(211961),	-- Rocket-Powered Impact Wrench
			i(219388),	-- Sacred Flame Torch
			i(212520),	-- Shadow-Tainted Tinderbox
			i(213425),	-- Shredded Reins
			i(223079),	-- Slagshell Egg
			i(218457),	-- Special Silk
			i(211469),	-- Squash Hook
			i(212494),	-- Squishy Bits [DNT]
			i(224777),	-- Sureki Shadecaster
			i(218459),	-- TBD
			i(217506),	-- Test Item [DNT]
			i(211407),	-- The Book of Bob
			i(217310),	-- The Foremans' First Scroll
			i(217311),	-- The Foreman's Second Scroll
			i(217312),	-- The Foreman's Third Scroll
			i(216682),	-- The Vizier's Invitation
			i(212224),	-- Titan Relics
			i(209857),	-- Unusual Seeds
			i(219215),	-- Wax Puddle
			i(224182),	-- Webbed Ingots
			i(224810),	-- Woodworm Elixir
			i(224180),	-- Worn Journal
			i(219804),	-- [DNT] Antiparalytic Serum
			i(208948),	-- [DNT] Club Chest Key
			i(222899),	-- [UNUSED] Faerin's Shield
			i(216605),	-- [UNUSED] Vial of Aggression Pheromone
			i(218104),	-- [UNUSED] Vial of Aggression Pheromone
		})),

		-- 11.0.2
		expansion(EXPANSION.TWW, patch(0,02), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_2 } }, {
			i(210873),	-- Earthen Identification Plaque
			i(231019),	-- Hearthstone Invitation Letter
		})),
	}),
}));