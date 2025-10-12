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
			-- TODO: Simplify this symlink with selection of headers in the raids
			["sym"] = {{"select","modItemID",
				-- Emerald Nightmare
				modItemId(247517,3),	-- Ancient Dreamwoven Mantle
				modItemId(247430,3),	-- Antiquated Highborne Cinch
				modItemId(247455,3),	-- Arcanochitin Hauberk
				modItemId(247450,3),	-- Architect's Coif of Despair
				modItemId(247481,3),	-- Astromancer's Greatcloak
				modItemId(247470,3),	-- Belt of Celestial Alignment
				modItemId(247637,3),	-- Belt of Fractured Sanity
				modItemId(247608,3),	-- Belt of Screaming Slag
				modItemId(247544,3),	-- Black Venom Sabatons
				modItemId(247632,3),	-- Blood-Drenched Bindings
				modItemId(247615,3),	-- Bonemeal-Crusted Armplates
				modItemId(247525,3),	-- Boots of Endless Betrayal
				modItemId(247431,3),	-- Bracers of Harnessed Flame
				modItemId(247469,3),	-- Bracers of Impossible Choices
				modItemId(247605,3),	-- Bracers of Rippling Darkness
				modItemId(247654,3),	-- Bracers of Wanton Morality
				modItemId(247596,3),	-- Braided Torture Lash
				modItemId(247485,3),	-- Breastplate of the Remembered King
				modItemId(247479,3),	-- Bridgebreaker Gauntlets
				modItemId(247645,3),	-- Burning Coven Sabatons
				modItemId(247438,3),	-- Cake Carrier's Girdle
				modItemId(247457,3),	-- Captain's Parade Breastplate
				modItemId(247514,3),	-- Celestially Aligned Hood
				modItemId(247434,3),	-- Chaos-Scarred Mantle
				modItemId(247462,3),	-- Chrono-Tempered Legplates
				modItemId(247602,3),	-- Cinch of Sizzling Flesh
				modItemId(247513,3),	-- Clasp of Cosmic Insignificance
				modItemId(247482,3),	-- Cloak of Temporal Recalibration
				modItemId(247630,3),	-- Cord of Blossoming Petals
				modItemId(247627,3),	-- Cord of Surging Hysteria
				modItemId(247531,3),	-- Cowl of Fright
				modItemId(247520,3),	-- Cozy Dryad Hoof-Socks
				modItemId(247537,3),	-- Creeping String of Larva
				modItemId(247521,3),	-- Crimson Wool-Lined Slippers
				modItemId(247555,3),	-- Crown of Steely Brambles
				modItemId(247635,3),	-- Death-Enveloping Cincture
				modItemId(247639,3),	-- Deft Soulhunter's Sabatons
				modItemId(247653,3),	-- Depraved Machinist's Footpads
				modItemId(247641,3),	-- Depraved Tactician's Waistguard
				modItemId(247541,3),	-- Disjointed Linkage Leggings
				modItemId(247644,3),	-- Doomwalker Warboots
				modItemId(247510,3),	-- Dragonbone Wristclamps
				modItemId(247511,3),	-- Dragonspur Wristguards
				modItemId(247436,3),	-- Dreadlord's Tattered Wingcover
				modItemId(247507,3),	-- Dreamscale Inlaid Vestments
				modItemId(247528,3),	-- Dreamsculptor's Gloves
				modItemId(247458,3),	-- Duskwatch Plate Bracers
				modItemId(247035,3),	-- Eagletalon Cowl
				modItemId(247594,3),	-- Emberscatter Treads
				modItemId(247448,3),	-- Emblazoned Duskwatch Belt
				modItemId(247629,3),	-- Enhanced Worldscorcher Cinch
				modItemId(247552,3),	-- Eon-Tempered Waistplate
				modItemId(247646,3),	-- Eredar Warcouncil Sabatons
				modItemId(247603,3),	-- Etched Bone Waistband
				modItemId(247473,3),	-- Eternally Recurring Bracers
				modItemId(247461,3),	-- Eventide Casque
				modItemId(247560,3),	-- Evergreen Vinewrap Drape
				modItemId(247601,3),	-- Felscape Pathfinders
				modItemId(247638,3),	-- Fiendish Logistician's Wristwraps
				modItemId(247549,3),	-- Fitted Ironbark Gauntlets
				modItemId(247648,3),	-- Flamelicked Girdle
				modItemId(247524,3),	-- Forest-Lord's Waistwrap
				modItemId(247564,3),	-- Gauntlets of Fractured Dreams
				modItemId(247459,3),	-- Gauntlets of Fractured Eons
				modItemId(247538,3),	-- Gauntlets of Malevolent Intent
				modItemId(247506,3),	-- Gauntlets of the Demented Mind
				modItemId(247460,3),	-- Gilded Nightborne Waistplate
				modItemId(247439,3),	-- Girdle of Nefarious Strategy
				modItemId(247600,3),	-- Glacier Walkers
				modItemId(247561,3),	-- Gloves of Murmured Promises
				modItemId(247478,3),	-- Gloves of Synchronous Elements
				modItemId(247442,3),	-- Gnawed Nightfallen Britches
				modItemId(247472,3),	-- Goresmeared Abyssal Waistplate
				modItemId(247512,3),	-- Gossamer-Spun Greatcloak
				modItemId(247656,3),	-- Greatboots of the Searing Tempest
				modItemId(247539,3),	-- Greyed Dragonscale Coif
				modItemId(247562,3),	-- Grips of Silent Screams
				modItemId(247649,3),	-- Grond-Father Girdle
				modItemId(247533,3),	-- Grove Keeper's Robe
				modItemId(247441,3),	-- Grove-Tender's Moccasins
				modItemId(247505,3),	-- Handwraps of Delusional Power
				modItemId(247036,3),	-- Helm of Shackled Elements
				modItemId(247488,3),	-- High Shadow Councilor's Wrap
				modItemId(247515,3),	-- Hood of Darkened Visions
				modItemId(247476,3),	-- Hood of Fading Opportunity
				modItemId(247508,3),	-- Horror Inscribed Chestguard
				modItemId(247477,3),	-- Immaculately Polished Boots
				modItemId(247548,3),	-- Insect-Etched Chestplate
				modItemId(247606,3),	-- Insulated Finpads
				modItemId(247611,3),	-- Iron Ballast Sabatons
				modItemId(247475,3),	-- Jagged Carapace Wristclamps
				modItemId(247628,3),	-- Lady Dacidion's Silk Slippers
				modItemId(247536,3),	-- Laughing Sister's Pouch-Chain
				modItemId(247464,3),	-- Leystone-Toe Kickers
				modItemId(247523,3),	-- Lifeless Buckled Girdle
				modItemId(247633,3),	-- Life-Bearing Footpads
				modItemId(247519,3),	-- Maddening Robe of Secrets
				modItemId(247504,3),	-- Malignant Sabatons
				modItemId(247547,3),	-- Manacles of the Nightmare Colossus
				modItemId(247518,3),	-- Mantle of Perpetual Bloom
				modItemId(247483,3),	-- Mantle of Prestidigitation
				modItemId(247444,3),	-- Mantle of the Torn Sky
				modItemId(247631,3),	-- Man'ari Pyromancer Cuffs
				modItemId(247467,3),	-- Man'ari Skullbuckled Cinch
				modItemId(247530,3),	-- Mask of Multitudinous Eyes
				modItemId(247433,3),	-- Master Warmage's Leggings
				modItemId(247542,3),	-- Matted Fur Pauldrons
				modItemId(247556,3),	-- Midnight Herald's Pauldrons
				modItemId(247647,3),	-- Nathrezim Battle Girdle
				modItemId(247640,3),	-- Nathrezim Shade-Walkers
				modItemId(247487,3),	-- Netherbranded Shoulderpads
				modItemId(247446,3),	-- Nightborne Battle-Magus Hood
				modItemId(247432,3),	-- Nighthold Custodian's Hood
				modItemId(247599,3),	-- Oathbreaker's Cuffs
				modItemId(247532,3),	-- Otherworldy Leather Mantle
				modItemId(247486,3),	-- Outcast Wanderer's Footrags
				modItemId(247610,3),	-- Pain-Singed Armguards
				modItemId(247546,3),	-- Patient Ambusher's Hauberk
				modItemId(247557,3),	-- Pauldrons of Shifting Runes
				modItemId(247452,3),	-- Pauldrons of Warped Memory
				modItemId(247435,3),	-- Perpetually Muddy Sandals
				modItemId(247451,3),	-- Pertinacious Legplates
				modItemId(247509,3),	-- Pliable Spider Silk Cinch
				modItemId(247636,3),	-- Portal Keeper's Cincture
				modItemId(247550,3),	-- Primal Gauntlets of Rage
				modItemId(247516,3),	-- Ragged Horrorweave Leggings
				modItemId(247522,3),	-- Ragged Fur Wristwraps
				modItemId(247598,3),	-- Ravenous Devotee's Bracelets
				modItemId(247643,3),	-- Reality-Splitting Wristguards
				modItemId(247529,3),	-- Repulsive Leathery Pants
				modItemId(247429,3),	-- Robes of Fluctuating Energy
				modItemId(247447,3),	-- Sabatons of Burning Steps
				modItemId(247471,3),	-- Sabatons of Unchanging Fate
				modItemId(247626,3),	-- Sandals of the Reborn Colossus
				modItemId(247642,3),	-- Sash of the Gilded Rose
				modItemId(247651,3),	-- Scalding Shatterguards
				modItemId(247534,3),	-- Scarred Ragefang Chestpiece
				modItemId(247545,3),	-- Scored Ironclaw Sabatons
				modItemId(247468,3),	-- Scorpid Handler's Gloves
				modItemId(247453,3),	-- Shal'dorei Weedstompers
				modItemId(247613,3),	-- Shiversleet Waistguard
				modItemId(247463,3),	-- Shoulderguard of the Eclipse
				modItemId(249683,3),	-- Shoulderguards of Divine Arts
				modItemId(247604,3),	-- Sinew-Stitched Wristguards
				modItemId(247540,3),	-- Singular Chain Leggings
				modItemId(247595,3),	-- Slippers of Enduring Vigilance
				modItemId(247614,3),	-- Soul-Render's Greatbelt
				modItemId(247527,3),	-- Splotched Bloodfur Leggings
				modItemId(247526,3),	-- Stained Maggot Squishers
				modItemId(247607,3),	-- Star-Stalker Treads
				modItemId(247612,3),	-- Steadfast Purifier's Warboots
				modItemId(247449,3),	-- Sterilizer's Insulated Gauntlets
				modItemId(247456,3),	-- Stinger Resistant Bracers
				modItemId(247554,3),	-- Storm-Battered Legplates
				modItemId(247597,3),	-- Strife-Riddled Cinch
				modItemId(247440,3),	-- Stutterstep Treads
				modItemId(247565,3),	-- Tarnished Dreamkeeper's Gauntlets
				modItemId(247443,3),	-- Temporally Displaced Gloves
				modItemId(247454,3),	-- Thistle-Proof Thorngrabbers
				modItemId(247543,3),	-- Thorny Bramblemail Pauldrons
				modItemId(247558,3),	-- Trampling Warboots
				modItemId(247465,3),	-- Treads of Galactic Odyssey
				modItemId(247480,3),	-- Trousers of Cultivation
				modItemId(247445,3),	-- Tunic of Unwavering Devotion
				modItemId(247650,3),	-- Vambraces of Life's Assurance
				modItemId(247652,3),	-- Varimathras' Shattered Manacles
				modItemId(247553,3),	-- Venom-Fanged Barbute
				modItemId(247634,3),	-- Vicious Flamepaws
				modItemId(247474,3),	-- Vintage Suramar Nobility Hat
				modItemId(247609,3),	-- Waistguard of Interminable Unity
				modItemId(247616,3),	-- Waistguard of Profane Duplicity
				modItemId(247484,3),	-- Waistplate of Fractured Realities
				modItemId(247551,3),	-- Waistplate of Nameless Horror
				modItemId(247437,3),	-- Well-Flattened Wristguards
				modItemId(247625,3),	-- Whisperstep Runners
				modItemId(247655,3),	-- World-Ravager Waistguard
				modItemId(247466,3),	-- Woven Lasher Tendril Bracers
				modItemId(247559,3),	-- Wristclamps of Mad Dreams
				modItemId(247535,3),	-- Wristwraps of Broken Trust

				-- Trial of Valor
				modItemId(247591,3),	-- Drape of the Unworthy
				modItemId(247592,3),	-- Mantle of the Victorious Dead
				modItemId(247568,3),	-- Windwhipped Sailcloth
				modItemId(247567,3),	-- Cinch of Light
				modItemId(247571,3),	-- Helhound Hair Bracers
				modItemId(247569,3),	-- Leggings of the Lower Planes
				modItemId(247584,3),	-- Oiled Rigger's Handwraps
				modItemId(247566,3),	-- Robes of Celestial Adornment
				modItemId(247570,3),	-- Treads of the Drowned
				modItemId(247585,3),	-- Gloves of Issued Challenge
				modItemId(247587,3),	-- Helbeast Skin Tunic
				modItemId(249678,3),	-- Helheim Hound's Visor
				modItemId(247573,3),	-- Moccasins of Silent Passage
				modItemId(247575,3),	-- Sky-Valiant's Wristguards
				modItemId(249679,3),	-- Sovereign Valarjar Mantle
				modItemId(249682,3),	-- Supreme Runecaster's Crown
				modItemId(247572,3),	-- Strand of Whelk Shells
				modItemId(247574,3),	-- Sucker-Scarred Leggings
				modItemId(247576,3),	-- Anchor Chain Waistguard
				modItemId(247579,3),	-- Bite-Resistant Wristclamps
				modItemId(247588,3),	-- Corroded Val'kyr Chainmail
				modItemId(247589,3),	-- Kvaldir Exult's Grips
				modItemId(247577,3),	-- Leggings of the Undaunted
				modItemId(247578,3),	-- Radiant Soul Sabatons
				modItemId(247583,3),	-- Calcareous Wristclamps
				modItemId(247586,3),	-- Gleaming Val'kyr Cuirass
				modItemId(247581,3),	-- Goldrune Legplates
				modItemId(247580,3),	-- Krakenbone Waistplate
				modItemId(247582,3),	-- Lead-Soled Seabed Striders
				modItemId(247590,3),	-- Reinforced Hound-Handler's Gauntlets
			}},
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
