---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(NAZJATAR, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
	n(ZONE_DROPS, {
	-- Benthic Items
		i(169478),	-- Benthic Bracers
		i(169480),	-- Benthic Chestguard
		i(169481),	-- Benthic Cloak
		i(169485),	-- Benthic Gauntlets
		i(169477),	-- Benthic Girdle
		i(169479),	-- Benthic Helm
		i(169482),	-- Benthic Leggings
		i(169484),	-- Benthic Spaulders
		i(169483),	-- Benthic Treads
	-- Other Items
		i(170186, {	-- Abyss Pearl
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				152122,	-- Abyssal Defiler
				153314,	-- Aldrantiss
				153309,	-- Alzana, Arrow of Thunder
				152744,	-- Elder Mindbreaker
				152116,	-- Eye of the Corruptor
				152968,	-- Gler'thogg
				153327,	-- Infestation of Madness
				152813,	-- Lesser Zoatroid
				152067,	-- Lesser Zoatroid
				155553,	-- Lesser Zoatroid
				152534,	-- Merciless Controller
				153310,	-- Qalina, Spear of Ice
				151719,	-- Voice in the Deeps
				153313,	-- Vyz'olgo the Mind-Taker
				152812,	-- Zoatroid
			},
		}),
		i(170184, {	-- Ancient Reefwalker Bark
			["description"] = "Turn in to |cFFFFD700Artisan Itanu|r (Alliance) or |cFFFFD700Finder Palta|r (Horde) for 350 reputation, plus 100 experience for each of your faction's bodyguards.",
		}),
		i(169475),	-- Barnacled Lockbox
		i(170188, {	-- Barnacled Bag of Goods
			["description"] = "Drops very rarely from Kil'karrok Mobs.",
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				145346,	-- Kil'karrok Commander
				152413,	-- Kil'karrok Hammerclaw
				148392,	-- Kil'karrok Makrura
				148391,	-- Kil'karrok Scavenger
				152411,	-- Kil'karrok Seer
				152412,	-- Kil'karrok Tidal Shaman
				153263,	-- Kritch
			},
		}),
		i(170172, {	-- Brightspine Shell
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				152793,	-- Sea Spireshell
			},
		}),
		i(167012, {	-- Brinestone Pickaxe
			["description"] = "Drops commonly from Chitterspine Encroachers in the north north west of Nazjatar, after completing the white item version of Brinestone Pickaxe (/att quest:55531)",
			["coord"] = { 36.8, 13.1, NAZJATAR },
			["crs"] = {	--
				153804,	-- Chitterspine Encroacher
			},
		}),
		i(168155, {	-- Chum
			["crs"] = {	-- drops from additional mobs. this is all > 1% on WH
				153310,	-- Qalina, Spear of Ice
				153309,	-- Alzana, Arrow of Thunder
				153314,	-- Aldrantiss
				153312,	-- Kyx'zhul the Deepspeaker
				153315,	-- Eldanar
				153313,	-- Vyz'olgo the Mind-Taker
				152756,	-- Daggertooth Terror
			},
		}),
		i(168099, {	-- Deepcoral Pod
			["cr"] = 152297,	-- Deepcoral Bud
		}),
		i(170167, {	-- Eel Filet
			["description"] = "Gives 250 reputation and 50 experience for your bodyguard.",
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				145338,	-- Abyssal Eel
				152554,	-- Abyssal Spawn
				149707,	-- Coral Slitherer
				152551,	-- Deepcoil Constrictor
				145343,	-- Deepcoil Serpent
				150463,	-- Skittering Eel
			},
		}),
		i(170472, {	-- Encrusted Coin (possibly part of a secret?)
			["description"] = "This item can drop from mobs, chests, or Mardivas's Universally Lauded Tote. Turn it in to |cFFFFD700Gloomseeker Yarga|r for a hefty sum of gold.",
			["questID"] = 57141,
			["repeatable"] = true,
			["coord"] = { 38.0, 59.2, NAZJATAR },
			["groups"] = {
				i(170473),	-- Jingling Sack
			},
		}),
		i(170177, {	-- Exposed Fish
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				153314,	-- Aldrantiss
				153309,	-- Alzana, Arrow of Thunder
				154182,	-- Broken Snapdragon
				152444,	-- Prowling Snapdragon
				153310,	-- Qalina, Spear of Ice
				154756,	-- Razortooth Snapdragon
				155834,	-- Savage Snapdragon
				152363,	-- Savage Snapdragon
				153959,	-- Savage Snapdragon
				154754,	-- Snapdragon Devourer
				152357,	-- Snapdragon Hunter
				154422,	-- Snapdragon Matriarch
				152362,	-- Snapdragon Ravager
				154753,	-- Snapdragon Stalker
				152358,	-- Snapdragon Terrormaw
				154752,	-- Snapdragon Vicemaw
				152356,	-- Venomous Snapdragon
				154755,	-- Venomspine Snapdragon
				153313,	-- Vyz'olgo the Mind-Taker
				155914,	-- Zanj'ir Snapdragon
			},
		}),
		i(170176, {	-- Fathom Ray Wing
			["description"] = "Gives 250 reputation and 50 experience for your bodyguard.",
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				150373,	-- Bloated Sky Ray
				150467,	-- Colossal Sky Ray
				150376,	-- Coral Skate
				145967,	-- Fathom Ray
				150696,	-- Fathom Ray Broodkeeper
			},
		}),
		i(170170, {	-- Fermented Deviate Fish
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				153314,	-- Aldrantiss
				153310,	-- Qalina, Spear of Ice
				153313,	-- Vyz'olgo the Mind-Taker
			},
		}),
		i(170171, {	-- Giant Crab Leg
			["description"] = "Gives 250 reputation and 50 experience for your bodyguard.",
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				153026,	-- Braxicus
				152462,	-- Chitterspine Ambusher
				153967,	-- Chitterspine Ambusher
				152461,	-- Chitterspine Crab
				153966,	-- Chitterspine Crab
				153804,	-- Chitterspine Encroacher
				153814,	-- Chitterspine Guillotine
				153812,	-- Chitterspine Lurker
				153818,	-- Crackleclaw Crab
				148454,	-- Glimmershell Crab
				152426,	-- Glimmershell Hulk
				152448,	-- Iridescent Glimmershell
				145337,	-- Sandclaw Crab
				152795,	-- Sandclaw Stoneshell
			},
		}),
		i(170185, {	-- Intact Naga Skeleton
			["repeatable"] = true,
			["questID"] = 57138,
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				145340,	-- Siltridge Hydra
				152541,	-- Siltridge Marauder
				152546,	-- Stonemaw Devourer
				152547,	-- Stonemaw Hydra
				152543,	-- Voidscale Hydra
				152544,	-- Voidscale Trenchstalker
			},
			["groups"] = {
				-- (putting a 'g' prevents this from complaining about being a character unlock due to questID)
				currency(1721),	-- Prismatic Manapearl
			},
		}),
		i(170512),	-- Lesser Benthic Arcanocrystal
		i(170190, {	-- Mardivas' Bag of Containing
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				148475,	-- Blackfin Seer
				152367,	-- Bloodfin Forager
				152274,	-- Bloodfin Murloc
				152273,	-- Bloodfin Tidecaller
				153250,	-- Hoarder Moarrgl
				152709,	-- Necrofin Murloc
				152711,	-- Necrofin Reaver
				151534,	-- Necrofin Scavenger
			},
			["groups"] = {
				i(169332),	-- Strange Mineralized Water
				i(169334),	-- Strange Oceanic Sediment
				i(169333),	-- Strange Volcanic Rock
			},
		}),
		i(168161),	-- Molted Shell
		i(170174, {	-- Muck Slime
			["crs"] = {	-- may drop from additional mobs, or chests. check back and add crs as appropriate.
				152792,	-- Prismatic Spireshell
			},
		}),
		i(170192, {	-- Mudwrap
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				153314,	-- Aldrantiss
				150834,	-- Disturbed Algan
				152549,	-- Lost Algan
				153310,	-- Qalina, Spear of Ice
				150583,	-- Rockweed Shambler
				151166,	-- Wayward Algan
			},
		}),
		i(170180, {	-- Razorshell
			["crs"] = {
				145970,	-- Razorshell Turtle
				152383,	-- Snapshell Tortoise
			},
		}),
		i(170183, {	-- Reefwalker Bark
			["description"] = "Turn in to |cFFFFD700Artisan Itanu|r (Alliance) or |cFFFFD700Finder Palta|r (Horde) for 75 reputation, plus 20 reputation with each of your faction's bodyguards.",
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
			--	there are lots of mobs that have "reefwalker" in their name -- maybe those?  there are also elite ones, so possibly more common from them?
				152558,	-- Barnacled Reefwalker
				150568,	-- Deep Reefwalker
				153025,	-- Emorneth
				152564,	-- Gloomchawm Reefwalker
				152559,	-- Murkbloom Reefwalker
				152565,	-- Seashelf Reefwalker
				152563,	-- Staghorn Reefwalker
				152562,	-- Sunbleached Reefwalker
				152560,	-- Whitewave Reefwalker
			},
		}),
		i(167077),	-- Scrying Stone
		i(170200, {	-- Seastorm Totem
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				153314,	-- Aldrantiss
				153309,	-- Alzana, Arrow of Thunder
				153310,	-- Qalina, Spear of Ice
			},
		}),
		i(170193, {	-- Sea Totem
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				152675,	-- Crashing Waveguard
				152164,	-- Frenzied Elemental
				152674,	-- Restoring Spring
				152672,	-- Tide Surger
				153998,	-- Tidespring Surger
				153999,	-- Unleashed Tidefury
				150371,	-- Volatile Tide Surger
				152673,	-- Wave Surger
			},
		}),
		i(170191, {	-- Skeletal Hand
			["description"] = "Turn it in to |cFFFFD700Gloomseeker Yarga|r for a hefty sum of gold.",
		--	didn't trigger quest completion!
			["coord"] = { 38.0, 59.2, NAZJATAR },
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				152710,	-- Necrofin Deep Oracle
				152709,	-- Necrofin Murloc
				152711,	-- Necrofin Reaver
				151534,	-- Necrofin Scavenger
			},
		}),
		i(170179, {	-- Snapdragon Scent Gland
			["crs"] = {	-- may drop from additional mobs, or chests. check back and add crs as appropriate.
				154182,	-- Broken Snapdragon
				154756,	-- Razortooth Snapdragon
				153959,	-- Savage Snapdragon
				152363,	-- Savage Snapdragon
				155834,	-- Savage Snapdragon
				154754,	-- Snapdragon Devourer
				152357,	-- Snapdragon Hunter
				152362,	-- Snapdragon Ravager
				154753,	-- Snapdragon Stalker
				152358,	-- Snapdragon Terrormaw
				154752,	-- Snapdragon Vicejaw
				152356,	-- Venomous Snapdragon
				154755,	-- Venomspine Snapdragon
				155914,	-- Zanj'ir Snapdragon
			},
		}),
		i(170194, {	-- Storm Totem
			["crs"] = {	-- may drop from additional mobs, or chests. check back and add crs as appropriate.
				152683	-- Raging Tempest
			},
		}),
		i(170181, {	-- Tidal Guard
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				153306,	-- Azsh'ari Leviathan
				154132,	-- Tidal Cracklemaw
				153655,	-- Tidal Guardian
				153654,	-- Voltscale Guardian
			},
		}),
		i(170195, {	-- Voidcaster's Supply Bag
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				145326,	-- Azsh'ari Invoker
				152918,	-- Azsh'ari Oracle
				150508,	-- Azsh'ari Siegemistress
				152917,	-- Azsh'ari Stormsurger
				154141,	-- Azsh'ari Stormsurger
				153302,	-- Glacier Mage Zhiela
				154950,	-- Herald of the Queen
				155838,	-- Incantatrix Vazina
				152879,	-- Lady Naz'jess
				155841,	-- Shadowbinder Athissa
				145333,	-- Shirakess Apprentice
				153737,	-- Shirakess Apprentice
				149004,	-- Shirakess Overseer
				153301,	-- Shirakess Starseeker
				153843,	-- Shirakess Voidtwister
				155836,	-- Theurgist Nitara
				151662,	-- Tidebinder Sarjezi
				153934,	-- Tidemistress Ethendriss
				153304,	-- Undana Frostbarb
			},
		}),
		i(170182, {	-- Voltscale Shield
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				153306,	-- Azsh'ari Leviathan
			},
		}),
	--	Toys
		i(170476, {	-- Underlight Sealamp (TOY!)
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				153334,	-- Abyss Elemental
				153078,	-- Hand of Azshara
				145324,	-- Imperial Defender
				153080,	-- Voice of the Queen
				151946,	-- Zanj'ir Bulwark
			},
		}),
		i(170199, {	-- Zanj'ir Weapon Rack (TOY!)
			["crs"] = {	-- may drop from additional mobs. check back and add crs as appropriate.
				153299,	-- Bonebreaker Szun
				152962,	-- Commander Sarj'eth
				152963,	-- Lord Ha'kass
				153738,	-- Shirakess Subjugator
				152724,	-- Shirakess Subjugator
				152827,	-- Shirakess Voidreaver
				153303,	-- Voidblade Kassar
				155840,	-- Warlord Zalzjar
				153352,	-- Zanj'ir Assassin
				154310,	-- Zanj'ir Brawler
				152906,	-- Zanj'ir Centurion
				153027,	-- Zanj'ir Defender
				152883,	-- Zanj'ir Myrmidon
				153960,	-- Zanj'ir Myrmidon
				153739,	-- Zanj'ir Myrmidon
				154311,	-- Zanj'ir Myrmidon
				152881,	-- Zanj'ir Scaleguard
				153740,	-- Zanj'ir Scaleguard
				154312,	-- Zanj'ir Scaleguard
				154194,	-- Zanj'ir Scalewarden
				153753,	-- Zanj'ir Slaver
				150541,	-- Zanj'ir Slaver
				154222,	-- Zanj'ir Stalker
				153962,	-- Zanj'ir Trapper
				153741,	-- Zanj'ir Trapper
				152884,	-- Zanj'ir Trapper
			},
		}),
	--	Recipes
		i(169495),	-- Recipe: Superior Battle Potion of Agility [Rank 3] (RECIPE!)
		i(169499),	-- Recipe: Superior Battle Potion of Strength [Rank 3] (RECIPE!)
		i(169497),	-- Recipe: Superior Battle Potion of Intellect [Rank 3] (RECIPE!)
		i(169498),	-- Recipe: Superior Battle Potion of Stamina [Rank 3] (RECIPE!)
		i(169496),	-- Recipe: Superior Steelskin Potion [Rank 3] (RECIPE!)
	}),
	--	Gear
	n(ZONE_DROPS, {
		["groups"] = {
			i(170116),	-- Darkened Slicer
			i(169402),	-- Deeptide Amice
			i(169403),	-- Deeptide Cinch
			i(169400),	-- Deeptide Cover
			i(169404),	-- Deeptide Cuffs
			i(169435),	-- Deeptide Drape
			i(169399),	-- Deeptide Gloves
			i(169401),	-- Deeptide Legwraps
			i(169425),	-- Deeptide Robe
			i(170201),	-- Deeptide Scroll
			i(169398),	-- Deeptide Slippers
			i(170114),	-- Flanged Mace
			i(170120),	-- Handmaiden's Longstaff
			i(170115),	-- Massive Viridian Claw
			i(169431),	-- Reefwalker Cape
			i(169419),	-- Reefwalker Chain
			i(169416),	-- Reefwalker Coif
			i(169420),	-- Reefwalker Coils
			i(169415),	-- Reefwalker Handlers
			i(169413),	-- Reefwalker Hauberk
			i(169418),	-- Reefwalker Monnion
			i(169414),	-- Reefwalker Striders
			i(169417),	-- Reefwalker Trousers
			i(169412),	-- Slithershell Armwraps
			i(169411),	-- Slithershell Belt
			i(169406),	-- Slithershell Boots
			i(169434),	-- Slithershell Cloak
			i(169409),	-- Slithershell Leggings
			i(169410),	-- Slithershell Mantle
			i(169407),	-- Slithershell Mitts
			i(169408),	-- Slithershell Tricorne
			i(169405),	-- Slithershell Vest
			i(170119),	-- Slithershell Warglaive
			i(170117),	-- Wavebinder's Rod
			i(169428),	-- Wavecrash Buckle
			i(169421),	-- Wavecrash Chestplate
			i(169423),	-- Wavecrash Crushers
			i(169433),	-- Wavecrash Greatcloak
			i(169426),	-- Wavecrash Greaves
			i(169424),	-- Wavecrash Headguard
			i(170112),	-- Wavecrash Polearm
			i(169427),	-- Wavecrash Shoulderplates
			i(169422),	-- Wavecrash Smashers
			i(169429),	-- Wavecrash Wristguards
			i(170118),	-- Centurion's Shortsword
		},
	}),
})));
