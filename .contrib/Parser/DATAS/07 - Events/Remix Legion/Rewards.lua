-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(REWARDS, {
		------ Item Caches ------
		i(248247),	-- Cache of Infinite Power
		i(237812),	-- Cache of Infinite Treasure

		------ Bronze Caches, ordered by quality ------
		i(246812),	-- Minor Bronze Cache (Uncommon)
		i(246815),	-- Lesser Bronze Cache (Rare)
		i(246814),	-- Bronze Cache (Epic)
		i(246813),	-- Greater Bronze Cache (Legendary)

		------ Weapon Empowerement ------
		i(245925),	-- Artifactium Sand
		i(249891),	-- Mound of Artifactium Sand

		------ Common Memento ------
		i(242513),	-- Memento of Epoch Collections
		i(242512),	-- Memento of Epoch Creatures
		i(242509),	-- Memento of Epoch Curiosity
		i(242514),	-- Memento of Epoch Fun
		i(242510),	-- Memento of Epoch Kindness
		i(242511),	-- Memento of Epoch Nostalgia
		i(242515),	-- Memento of Epoch Strategies

		------ Uncommon Memento ------
		i(242505),	-- Memento of Epoch Hope
		i(242501),	-- Memento of Epoch Knowledge
		i(242504),	-- Memento of Epoch Truth

		------ Rare Memento ------
		i(242507),	-- Memento of Epoch Power
		i(242506),	-- Memento of Epoch Rituals
		i(242503),	-- Memento of Epoch Stories

		------ Epic Memento ------
		i(254267),	-- Fragmented Memento of Epoch Challenges
		i(242502),	-- Memento of Epoch History
		i(242508),	-- Memento of Epoch Potential
		i(246936),	-- Resonant Epoch Memento

		------ Legendary Memento ------
		i(242516),	-- Memento of Epoch Legends
		i(246937),	-- Perfected Epoch Memento

		------ Reputation Insignias ------
		i(253621, {	-- Champion's Insignia
			["description"] = "Turns into a Reputation Insignia for a Faction of the zone you are in.",
		}),
		i(249788),	-- Argussian Reach Champion's Insignia
		i(249780),	-- Army of the Light Champion's Insignia
		i(249787),	-- Court of Farondis Champion's Insignia
		i(249786),	-- Dreamweaver Champion's Insignia
		i(249785),	-- Highmountain Tribe Champion's Insignia
		i(253756),	-- Insignia of the Broken Isles
		i(249784),	-- Legionfall Champion's Insignia
		i(249783),	-- Nightfallen Champion's Insignia
		i(249782),	-- Valarjar Champion's Insignia
		i(249781),	-- Wardens Champion's Insignia

		------ Max Level Item Tokens ------
		i(253224, {	-- Mote of a Broken Time
			-- Mote of a Broken Time drops at max level during the first four phases of Legion Remix and will reward raid gear from any of the currently-accessible raids.
			filter(CLOAKS, {
				i(247481),	-- Astromancer's Greatcloak
				i(247482),	-- Cloak of Temporal Recalibration
				i(247436),	-- Dreadlord's Tattered Wingcover
				i(247560),	-- Evergreen Vinewrap Drape
				i(247512),	-- Gossamer-Spun Greatcloak
			}),
			filter(CLOTH, {
				i(247517),	-- Ancient Dreamwoven Mantle
				i(247430),	-- Antiquated Highborne Cinch
				i(247632),	-- Blood-Drenched Bindings
				i(247431),	-- Bracers of Harnessed Flame
				i(247596),	-- Braided Torture Lash
				i(247514),	-- Celestially Aligned Hood
				i(247434),	-- Chaos-Scarred Mantle
				i(247513),	-- Clasp of Cosmic Insignificance
				i(247630),	-- Cord of Blossoming Petals
				i(247627),	-- Cord of Surging Hysteria
				i(247520),	-- Cozy Dryad Hoof-Socks
				i(247521),	-- Crimson Wool-Lined Slippers
				i(247507),	-- Dreamscale Inlaid Vestments
				i(247594),	-- Emberscatter Treads
				i(247629),	-- Enhanced Worldscorcher Cinch
				i(247505),	-- Handwraps of Delusional Power
				i(247515),	-- Hood of Darkened Visions
				i(247628),	-- Lady Dacidion's Silk Slippers
				i(247519),	-- Maddening Robe of Secrets
				i(247631),	-- Man'ari Pyromancer Cuffs
				i(247467),	-- Man'ari Skullbuckled Cinch
				i(247518),	-- Mantle of Perpetual Bloom
				i(247483),	-- Mantle of Prestidigitation
				i(247433),	-- Master Warmage's Leggings
				i(247432),	-- Nighthold Custodian's Hood
				i(247599),	-- Oathbreaker's Cuffs
				i(247486),	-- Outcast Wanderer's Footrags
				i(247435),	-- Perpetually Muddy Sandals
				i(247509),	-- Pliable Spider Silk Cinch
				i(247522),	-- Ragged Fur Wristwraps
				i(247516),	-- Ragged Horrorweave Leggings
				i(247598),	-- Ravenous Devotee's Bracelets
				i(247429),	-- Robes of Fluctuating Energy
				i(247626),	-- Sandals of the Reborn Colossus
				i(247468),	-- Scorpid Handler's Gloves
				i(247595),	-- Slippers of Enduring Vigilance
				i(247597),	-- Strife-Riddled Cinch
				i(247465),	-- Treads of Galactic Odyssey
				i(247625),	-- Whisperstep Runners
				i(247466),	-- Woven Lasher Tendril Bracers
			}),
			filter(LEATHER, {
				i(247637),	-- Belt of Fractured Sanity
				i(247525),	-- Boots of Endless Betrayal
				i(247469),	-- Bracers of Impossible Choices
				i(247605),	-- Bracers of Rippling Darkness
				i(247654),	-- Bracers of Wanton Morality
				i(247438),	-- Cake Carrier's Girdle
				i(247602),	-- Cinch of Sizzling Flesh
				i(247531),	-- Cowl of Fright
				i(247635),	-- Death-Enveloping Cincture
				i(247653),	-- Depraved Machinist's Footpads
				i(247511),	-- Dragonspur Wristguards
				i(247528),	-- Dreamsculptor's Gloves
				i(247603),	-- Etched Bone Waistband
				i(247601),	-- Felscape Pathfinders
				i(247638),	-- Fiendish Logistician's Wristwraps
				i(247524),	-- Forest-Lord's Waistwrap
				i(247439),	-- Girdle of Nefarious Strategy
				i(247600),	-- Glacier Walkers
				i(247478),	-- Gloves of Synchronous Elements
				i(247442),	-- Gnawed Nightfallen Britches
				i(247562),	-- Grips of Silent Screams
				i(247441),	-- Grove-Tender's Moccasins
				i(247533),	-- Grove Keeper's Robe
				i(247488),	-- High Shadow Councilor's Wrap
				i(247633),	-- Life-Bearing Footpads
				i(247523),	-- Lifeless Buckled Girdle
				i(247444),	-- Mantle of the Torn Sky
				i(247530),	-- Mask of Multitudinous Eyes
				i(247446),	-- Nightborne Battle-Magus Hood
				i(247532),	-- Otherworldy Leather Mantle
				i(247636),	-- Portal Keeper's Cincture
				i(247529),	-- Repulsive Leathery Pants
				i(247534),	-- Scarred Ragefang Chestpiece
				i(247604),	-- Sinew-Stitched Wristguards
				i(247527),	-- Splotched Bloodfur Leggings
				i(247526),	-- Stained Maggot Squishers
				i(247440),	-- Stutterstep Treads
				i(247443),	-- Temporally Displaced Gloves
				i(247480),	-- Trousers of Cultivation
				i(247445),	-- Tunic of Unwavering Devotion
				i(247634),	-- Vicious Flamepaws
				i(247474),	-- Vintage Suramar Nobility Hat
				i(247616),	-- Waistguard of Profane Duplicity
				i(247437),	-- Well-Flattened Wristguards
				i(247535),	-- Wristwraps of Broken Trust
			}),
			filter(MAIL, {
				i(247455),	-- Arcanochitin Hauberk
				i(247450),	-- Architect's Coif of Despair
				i(247470),	-- Belt of Celestial Alignment
				i(247608),	-- Belt of Screaming Slag
				i(247544),	-- Black Venom Sabatons
				i(247537),	-- Creeping String of Larva
				i(247639),	-- Deft Soulhunter's Sabatons
				i(247641),	-- Depraved Tactician's Waistguard
				i(247541),	-- Disjointed Linkage Leggings
				i(247448),	-- Emblazoned Duskwatch Belt
				i(247538),	-- Gauntlets of Malevolent Intent
				i(247506),	-- Gauntlets of the Demented Mind
				i(247656),	-- Greatboots of the Searing Tempest
				i(247539),	-- Greyed Dragonscale Coif
				i(247476),	-- Hood of Fading Opportunity
				i(247606),	-- Insulated Finpads
				i(247536),	-- Laughing Sister's Pouch-Chain
				i(247504),	-- Malignant Sabatons
				i(247547),	-- Manacles of the Nightmare Colossus
				i(247542),	-- Matted Fur Pauldrons
				i(247640),	-- Nathrezim Shade-Walkers
				i(247487),	-- Netherbranded Shoulderpads
				i(247610),	-- Pain-Singed Armguards
				i(247546),	-- Patient Ambusher's Hauberk
				i(247452),	-- Pauldrons of Warped Memory
				i(247451),	-- Pertinacious Legplates
				i(247643),	-- Reality-Splitting Wristguards
				i(247447),	-- Sabatons of Burning Steps
				i(247642),	-- Sash of the Gilded Rose
				i(247651),	-- Scalding Shatterguards
				i(247545),	-- Scored Ironclaw Sabatons
				i(247453),	-- Shal'dorei Weedstompers
				i(247540),	-- Singular Chain Leggings
				i(247607),	-- Star-Stalker Treads
				i(247449),	-- Sterilizer's Insulated Gauntlets
				i(247456),	-- Stinger Resistant Bracers
				i(247454),	-- Thistle-Proof Thorngrabbers
				i(247543),	-- Thorny Bramblemail Pauldrons
				i(247609),	-- Waistguard of Interminable Unity
				i(247655),	-- World-Ravager Waistguard
			}),
			filter(PLATE, {
				i(247615),	-- Bonemeal-Crusted Armplates
				i(247485),	-- Breastplate of the Remembered King
				i(247479),	-- Bridgebreaker Gauntlets
				i(247645),	-- Burning Coven Sabatons
				i(247457),	-- Captain's Parade Breastplate
				i(247462),	-- Chrono-Tempered Legplates
				i(247555),	-- Crown of Steely Brambles
				i(247644),	-- Doomwalker Warboots
				i(247510),	-- Dragonbone Wristclamps
				i(247458),	-- Duskwatch Plate Bracers
				i(247552),	-- Eon-Tempered Waistplate
				i(247646),	-- Eredar Warcouncil Sabatons
				i(247473),	-- Eternally Recurring Bracers
				i(247461),	-- Eventide Casque
				i(247549),	-- Fitted Ironbark Gauntlets
				i(247648),	-- Flamelicked Girdle
				i(247459),	-- Gauntlets of Fractured Eons
				i(247460),	-- Gilded Nightborne Waistplate
				i(247472),	-- Goresmeared Abyssal Waistplate
				i(247649),	-- Grond-Father Girdle
				i(247508),	-- Horror Inscribed Chestguard
				i(247477),	-- Immaculately Polished Boots
				i(247548),	-- Insect-Etched Chestplate
				i(247611),	-- Iron Ballast Sabatons
				i(247475),	-- Jagged Carapace Wristclamps
				i(247464),	-- Leystone-Toe Kickers
				i(247556),	-- Midnight Herald's Pauldrons
				i(247647),	-- Nathrezim Battle Girdle
				i(247557),	-- Pauldrons of Shifting Runes
				i(247550),	-- Primal Gauntlets of Rage
				i(247471),	-- Sabatons of Unchanging Fate
				i(247613),	-- Shiversleet Waistguard
				i(247463),	-- Shoulderguard of the Eclipse
				i(247614),	-- Soul-Render's Greatbelt
				i(247612),	-- Steadfast Purifier's Warboots
				i(247554),	-- Storm-Battered Legplates
				i(247558),	-- Trampling Warboots
				i(247650),	-- Vambraces of Life's Assurance
				i(247652),	-- Varimathras' Shattered Manacles
				i(247553),	-- Venom-Fanged Barbute
				i(247484),	-- Waistplate of Fractured Realities
				i(247551),	-- Waistplate of Nameless Horror
				i(247559),	-- Wristclamps of Mad Dreams
			}),
		}),
		i(253227, {	-- Flawless Thread of Time (Phase 5)
			-- Flawless Thread of Time drops at max level during the final phase of Legion Remix and will reward max-level equipment.
			-- Use: Combine 10 of these to create an item of incredible potential.
			-- "In the now-collapsing alternate timeline where the infinite dragonflight experiments on the history of the Legion's third invasion, uncorrupted moments are increasingly rare and phenomenally potent."
			-- Exo Note: Maybe something new? Or Symlink to other?
		}),

		------ Misc ------
		i(251562),	-- Tome of Combat Training

		filter(CONSUMABLES, {
			i(238726),	-- Drake Treat
			i(238727),	-- Nostwin's Voucher

			------ Timeless Scrolls ------
			i(217901),	-- Timeless Drums
			i(217608),	-- Timeless Scroll of Battle Shout
			i(217730),	-- Timeless Scroll of Chaos
			i(217929),	-- Timeless Scroll of Cleansing
			i(217606),	-- Timeless Scroll of Fortitude
			i(217605),	-- Timeless Scroll of Intellect
			i(217731),	-- Timeless Scroll of Mystic Power
			i(217928),	-- Timeless Scroll of Resurrection
			i(217956),	-- Timeless Scroll of Summoning
			i(217607),	-- Timeless Scroll of the Wild
		}),
		filter(FINGER_F, {
			i(246199),	-- Band of Callous Dominance
			i(246200),	-- Band of Twister Bark
			i(246202),	-- Grasping Tentacle Loop
			i(246198),	-- Jeweled Signet of Melandrus
			i(245998),	-- Ring of Mind Shielding
			i(245997),	-- Seal of the Nazjatar Empire
			i(246201),	-- Signet of the Highborne Magi
			i(246197),	-- Woe-Bearer's Band
		}),
		filter(NECK_F, {
			i(246194),	-- Chain of Scorched Bones
			i(246191),	-- Chain of the Underking
			i(245996),	-- Chaos-Forged Necklace
			i(246196),	-- Erratically Ticking Talisman
			i(246190),	-- Pendant of the Watchful Eye
			i(246193),	-- Strand of the Stars
			i(246192),	-- Understone Gorget
			i(246195),	-- Wolfstride Pendant
		}),
		filter(TRINKET_F, {
			i(246206),	-- Aethas's Orbs of Warding
			i(246204),	-- Arcane Medal of Protection
			i(246203),	-- Chattering Soulmark
			i(246207),	-- Glimmering Soulbloom
			i(246000),	-- Lure of the Unknown Depths
			i(246208),	-- Mote of Obscure Magics
			i(246205),	-- Stormwalker's Icon
			i(245999),	-- Volatile Chaos Talisman
		}),
	}),
})))
