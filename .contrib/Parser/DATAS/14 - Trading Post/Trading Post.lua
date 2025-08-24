-------------------------------------
--     T R A D I N G   P O S T     --
-------------------------------------
FILLED_TRAVELERS_LOG = createHeader({
	readable = "Filled Travelers Log",
	icon = 4696085,
	text = {
		en = "Filled Travelers Log",
		es = "Llenar el registro del viajero",
		mx = "Llenar el registro del viajero",
		cn = "旅行者日志进度",
		tw = "完成旅行者日誌",
		ru = "Заполненный Журнал Путешественника",
	},
	description = {
		en = "This reward is given for filling the Travel Points Progress Bar during the month.",
		ru = "Эта награда выдаётся за заполнение прогресса Очков путешествия в течение месяца.",
	},
});

root(ROOTS.TradingPost, bubbleDown({ ["timeline"] = { ADDED_10_0_5 }, ["u"] = TRADING_POST }, {
	n(ACHIEVEMENTS, {
		ach(17334, {	-- Trading Post Enthusiast
			iensemble(203431),	-- Ensemble: Burden of Unrelenting Justice
			iensemble(214240, { ["timeline"] = { ADDED_10_2_5 } }),	-- Ensemble: Gleaming Burden of Unrelenting Justice
			iensemble(214241, { ["timeline"] = { ADDED_10_2_5 } }),	-- Ensemble: Moonlit Burden of Unrelenting Justice
		}),
	}),
	n(QUESTS, {
		q(66858, {	-- Tour the Trading Post [A]
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
		}),
		q(66959, {	-- Tour the Trading Post [H]
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
		}),
		q(72681, {	-- Report to the Trading Post -- March 2023
			["timeline"] = { ADDED_10_0_5 },
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
			["isYearly"] = true,
		}),
		q(75833, {	-- Report to the Trading Post -- April 2023
			["timeline"] = { ADDED_10_0_7 },
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
			["isYearly"] = true,
		}),
		q(76159, {	-- Report to the Trading Post -- May 2023
			["timeline"] = { ADDED_10_0_7 },
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
			["isYearly"] = true,
		}),
		q(76103, {	-- Report to the Trading Post -- June 2023
			["timeline"] = { ADDED_10_1_0 },
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
			["isYearly"] = true,
		}),
		q(76104, {	-- Report to the Trading Post -- July 2023
			["timeline"] = { ADDED_10_1_0 },
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
			["isYearly"] = true,
		}),
		q(76105, {	-- Report to the Trading Post -- August 2023
			["timeline"] = { ADDED_10_1_5 },
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
			["isYearly"] = true,
		}),
		q(76106, {	-- Report to the Trading Post -- September 2023
			["timeline"] = { ADDED_10_1_5 },
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
			["isYearly"] = true,
		}),
		q(76107, {	-- Report to the Trading Post -- October 2023
			["timeline"] = { ADDED_10_1_7 },
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
			["isYearly"] = true,
		}),
		q(76108, {	-- Report to the Trading Post -- November 2023
			["timeline"] = { ADDED_10_1_7 },
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
			["isYearly"] = true,
		}),
		q(76112, {	-- Report to the Trading Post -- December 2023
			["timeline"] = { ADDED_10_2_0 },
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
			["isYearly"] = true,
		}),
		q(76113, {	-- Report to the Trading Post -- January 2024
			["timeline"] = { ADDED_10_2_0 },
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
			["isYearly"] = true,
		}),
		q(76114, {	-- Report to the Trading Post -- February 2024
			["timeline"] = { ADDED_10_2_5 },
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
			["isYearly"] = true,
		}),
		q(81722, {	-- Report to the Trading Post -- August 2024
			["timeline"] = { ADDED_11_0_2 },
			["maps"] = { DORNOGAL },
			["isYearly"] = true,
		}),
		q(81723, {	-- Report to the Trading Post -- September 2024
			["timeline"] = { ADDED_11_0_2 },
			["maps"] = { DORNOGAL },
			["isYearly"] = true,
		}),
		q(81724, {	-- Report to the Trading Post -- October 2024
			["timeline"] = { ADDED_11_0_2 },
			["maps"] = { DORNOGAL },
			["isYearly"] = true,
		}),
		q(81725, {	-- Report to the Trading Post -- November 2024
			["timeline"] = { ADDED_11_0_5 },
			["maps"] = { DORNOGAL },
			["isYearly"] = true,
		}),
		q(81726, {	-- Report to the Trading Post -- December 2024
			["timeline"] = { ADDED_11_0_5 },
			["maps"] = { DORNOGAL },
			["isYearly"] = true,
		}),
		q(81715, {	-- Report to the Trading Post -- January 2025
			["timeline"] = { ADDED_11_0_7 },
			["maps"] = { DORNOGAL },
			["isYearly"] = true,
		}),
		q(81714, {	-- Report to the Trading Post -- February 2025
			["timeline"] = { ADDED_11_0_7 },
			["maps"] = { DORNOGAL },
			["isYearly"] = true,
		}),
		q(81717, {	-- Report to the Trading Post -- March 2025
			["timeline"] = { ADDED_11_1_0 },
			["maps"] = { DORNOGAL },
			["isYearly"] = true,
		}),
		q(81718, {	-- Report to the Trading Post -- April 2025
			["timeline"] = { ADDED_11_1_0 },
			["maps"] = { DORNOGAL },
			["isYearly"] = true,
		}),
		q(81719, {	-- Report to the Trading Post -- May 2025
			["timeline"] = { ADDED_11_1_5 },
			["maps"] = { DORNOGAL },
			["isYearly"] = true,
		}),
		q(81720, {	-- Report to the Trading Post -- June 2025
			["timeline"] = { ADDED_11_1_5 },
			["maps"] = { DORNOGAL },
			["isYearly"] = true,
		}),
		q(81721, {	-- Report to the Trading Post -- July 2025
			["timeline"] = { ADDED_11_1_7 },
			["maps"] = { DORNOGAL },
			["isYearly"] = true,
		}),
	}),
	n(YEAR2023, {
		n(FEBRUARY, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5, REMOVED_10_0_5 } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(190231),	-- Ash'adar, Harbinger of Dawn (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(750, i(190607)),	-- Garrlok (PET!)
			}),
			filter(MOUNTS, {
				traderstender(900, i(54811)),	-- Celestial Steed (MOUNT!)
			}),
			filter(COSMETIC, {
				traderstender(200, i(190071)),	-- Azure Scalesworn Longbow
				traderstender(650, iensemble(190799)),	-- Ensemble: Swashbuckling Buccaneer's Slops
				traderstender(100, iensemble(202170)),	-- Ensemble: Vagabond's Rosy Threads
				traderstender(100, iensemble(202167)),	-- Ensemble: Wanderer's Rosy Trappings
				traderstender(100, i(190856)),	-- Fetid Bouquet
				traderstender(750, i(189898)),	-- Fury of the Firelord
				traderstender(250, i(189897)),	-- Infiltrator's Bandolier
				traderstender(75, i(190434)),	-- Iridescent Warcloak
				traderstender(250, i(190599)),	-- Operative's Bandolier
				traderstender(100, i(190855)),	-- Rosy Corsage
				traderstender(200, i(190143)),	-- Shard of Frozen Secrets
				traderstender(500, i(190846)),	-- Shattered Voidspire
				traderstender(100, i(189871)),	-- Squire's Warhammer
			}),
		})),
		n(MARCH, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5, REMOVED_10_0_5 } }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(190504),	-- Ensemble: Darkmoon Harlequin's Bells
			}),
			filter(BATTLE_PETS, {
				traderstender(650, i(49665)),	-- Pandaren Monk (PET!)
			}),
			filter(COSMETIC, {
				traderstender(175, i(189882)),	-- Dread Admiral's Bicorne
				traderstender(850, iensemble(189938)),	-- Ensemble: Fel-Automaton Exoplate
				traderstender(750, iensemble(200884)),	-- Ensemble: Glorious Dragonrider's Mail
				traderstender(100, iensemble(190166)),	-- Ensemble: Vagabond's Midnight Threads
				traderstender(100, iensemble(190377)),	-- Ensemble: Wanderer's Midnight Trappings
				traderstender(50, i(190097)),	-- Fabulously Flashy Finery
				traderstender(250, i(190876)),	-- Filigreed Lion's Maw
				traderstender(400, i(202248)),	-- Frozen Shadow
				traderstender(75, i(190065)),	-- Gnomish Liquid Transfer Apparatus
				traderstender(50, i(190063)),	-- Greatcloak of the Virtuous Protector
				traderstender(225, i(190600)),	-- Shadowy Blademaster's Greatsword
				traderstender(225, i(190092)),	-- Triumphant Blademaster's Greatsword
				traderstender(750, i(190155)),	-- Trusty Treasure Trove
			}),
		})),
		n(APRIL, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5, REMOVED_10_1_0 } }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(190164),	-- Arsenal: Blades of Elune
			}),
			filter(BATTLE_PETS, {
				traderstender(600, i(190603)),	-- Egbob (PET!)
			}),
			filter(MOUNTS, {
				traderstender(900, i(189978)),	-- Magenta Cloud Serpent (MOUNT!)
			}),
			filter(COSMETIC, {
				traderstender(225, i(190438)),	-- Crimson Nexus Crescent
				traderstender(100, i(190130)),	-- Drape of Foreboding Mists
				traderstender(750, iensemble(200909)),	-- Ensemble: Corrupted Runelord's Regalia
				traderstender(500, iensemble(190540)),	-- Ensemble: Trapper's Munitions
				traderstender(100, i(190886)),	-- Fine White Evening Gloves
				traderstender(175, i(190842)),	-- Fists of Polar Fury
				traderstender(100, i(189896)),	-- Forsaken Cresset
				traderstender(450, i(190145)),	-- Gilded Drakkonid Morningstar
				traderstender(100, i(190133)),	-- Honed Bastard Sword
				traderstender(225, i(190153)),	-- Libram of Righteous Light
				traderstender(175, i(190898)),	-- Red Pith Helmet
				traderstender(225, i(190154)),	-- Tome of Sin'dorei Secrets
				traderstender(100, i(189895)),	-- Watchman's Flare
			}),
		})),
		n(MAY, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_1_0 } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(190613),	-- Savage Green Battle Turtle (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(600, i(190175)),	-- Pippin (PET!)
			}),
			filter(COSMETIC, {
				traderstender(200, i(190441)),	-- Black Iron Blunderbuss
				traderstender(175, i(190899)),	-- Crimson Bicorne
				traderstender(750, iensemble(201229)),	-- Ensemble: Kvaldir Scout Leathers
				traderstender(100, iensemble(190922)),	-- Ensemble: Vagabond's Snowy Threads
				traderstender(900, iensemble(190095)),	-- Ensemble: Vestment of the Honored Valarjar
				traderstender(100, iensemble(190921)),	-- Ensemble: Wanderer's Snowy Trappings
				traderstender(400, i(190217)),	-- Fang of the Mountain
				traderstender(50, i(190808)),	-- High Priestess's Ceremonial Drape
				traderstender(50, i(190204)),	-- Huntsman's Recurve Bow
				traderstender(200, i(190215)),	-- Lost Crown of the Arcane
				traderstender(150, i(190439)),	-- Merciless Trapper's Staff
				traderstender(50, i(190205)),	-- Sharpened Shank
				traderstender(100, i(202311)),	-- Sunbleached Grimskull Cinch
				traderstender(200, i(190214)),	-- Tiercel's Wing
				traderstender(100, i(190199)),	-- Well-Worn Grimskull Cinch
			}),
		})),
		n(JUNE, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_1_5 } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(190169),	-- Quawks (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(600, i(190604)),	-- Buzzworth (PET!)
			}),
			filter(MOUNTS, {
				traderstender(900, i(118515)),	-- Cindermane Charger (MOUNT!)
				traderstender(800, i(206976)),	-- Royal Swarmer (MOUNT!)
			}),
			filter(COSMETIC, {
				traderstender(150, i(190869)),	-- Emberstone Dress
				traderstender(750, iensemble(201230)),	-- Ensemble: Helarjar Berserker Warplate
				traderstender(100, iensemble(202178)),	-- Ensemble: Vagabond's Carrot Threads
				traderstender(100, iensemble(202179)),	-- Ensemble: Wanderer's Carrot Trappings
				traderstender(450, i(190690)),	-- Flame-Forged Fel Fang
				traderstender(400, i(95474)),	-- Jewel of the Firelord
				traderstender(50, i(190696)),	-- Magister's Jeweled Drape
				traderstender(150, i(190443)),	-- Pustulent Demonheart Fetish
				traderstender(150, i(190817)),	-- Sentinel's Tower Shield
				traderstender(50, i(190433)),	-- Shifty Merchant's Tunic
				traderstender(550, i(190447)),	-- Soulburner Bardiche
				traderstender(500, i(190821)),	-- Sunspire Battle Staff
				traderstender(50, i(190431)),	-- Veteran Grunt's Chopper
			}),
		})),
		n(JULY, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5, REMOVED_10_1_5 } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(206156),	-- Grotto Netherwing Drake (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(750, i(49343)),	-- Spectral Tiger Cub (PET!)
			}),
			filter(MOUNTS, {
				traderstender(650, i(206027)),	-- Felcrystal Scorpion (MOUNT!)
				traderstender(900, i(76755)),	-- Tyrael's Charger (MOUNT!)
			}),
			filter(COSMETIC, {
				traderstender(500, i(190562)),	-- Aldori War Mace
				traderstender(600, i(190146)),	-- Antoran Felspire
				traderstender(600, i(190560)),	-- Conquest
				traderstender(750, iensemble(200915)),	-- Ensemble: Sylvan Stalker’s Leathers
				traderstender(100, iensemble(190528)),	-- Ensemble: Vagabond's Violet Threads
				traderstender(100, iensemble(190529)),	-- Ensemble: Wanderer's Violet Trappings
				traderstender(50, i(190097)),	-- Fabulously Flashy Finery
				traderstender(250, i(190876)),	-- Filigreed Lion's Maw
				traderstender(175, i(190842)),	-- Fists of Polar Fury
				traderstender(225, i(190558)),	-- Helm of the Fierce
				traderstender(200, i(190814)),	-- Mephistroth's Razor
				traderstender(75, i(190546)),	-- Polished Shortsword
				traderstender(50, i(190545)),	-- Primeval Basher
				traderstender(75, i(190543)),	-- Silvered Warcloak
				traderstender(175, i(190557)),	-- Sinister Fel Staff
			}),
		})),
		n(AUGUST, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5, REMOVED_10_1_7 } }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(190797),	-- Ensemble: Bones of the Bloodhunter
			}),
			filter(BATTLE_PETS, {
				traderstender(650, i(207962)),	-- Spirit of Competition (PET!)
			}),
			filter(MOUNTS, {
				traderstender(650, a(i(207964))),	-- Alabaster Stormtalon (MOUNT!)
				traderstender(650, h(i(207963))),	-- Alabaster Thunderwing (MOUNT!)
				traderstender(650, i(207821)),	-- Ancestral Clefthoof (MOUNT!)
			}),
			filter(TOYS, {
				traderstender(500, i(206268)),	-- Ethereal Transmogrifier (TOY!)
			}),
			filter(COSMETIC, {
				traderstender(400, i(207957)),	-- Aquamarine Felfire Bulwark
				traderstender(400, i(207959)),	-- Aquamarine Felfire Splitblade
				traderstender(200, i(190071)),	-- Azure Scalesworn Longbow
				traderstender(225, i(190812)),	-- Azure Nexus Crescent
				traderstender(400, i(190078)),	-- Blade of Brutal Sacrifice
				traderstender(50, i(190870)),	-- City Guard Heater Shield
				traderstender(225, i(190438)),	-- Crimson Nexus Crescent
				traderstender(400, i(95475)),	-- Crown of Eternal Winter
				traderstender(100, i(208039)),	-- Ember Court Soiree Gloves
				traderstender(100, iensemble(190576)),	-- Ensemble: Vagabond's Azure Threads
				traderstender(100, iensemble(190851)),	-- Ensemble: Vagabond's Crimson Threads
				traderstender(100, iensemble(190577)),	-- Ensemble: Wanderer's Azure Trappings
				traderstender(100, iensemble(190850)),	-- Ensemble: Wanderer's Crimson Trappings
				traderstender(750, i(189898)),	-- Fury of the Firelord
				traderstender(50, i(190871)),	-- Grunts Buckler
				traderstender(400, i(97213)),	-- Hood of Hungering Darkness
				traderstender(100, i(208040)),	-- Queens Conservatory Ball Gloves
				traderstender(400, i(190910)),	-- Ruby Felfire Bulwark
				traderstender(400, i(190909)),	-- Ruby Felfire Splitblade
				traderstender(200, i(190143)),	-- Shard of Frozen Secrets
			}),
		})),
		n(SEPTEMBER, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7, REMOVED_10_1_7 } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(190168),	-- Crusty Crawler (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(650, i(208045)),	-- Slyvy (PET!)
			}),
			filter(COSMETIC, {
				traderstender(250, i(190712)),	-- Ancestral Skychaser Totem
				traderstender(250, i(190693)),	-- Ancestral Stonehoof Totem
				traderstender(500, iensemble(208177)),	-- Armaments of the Light Avenger
				traderstender(500, iensemble(208179)),	-- Blood Onyx Blades
				traderstender(450, iensemble(208405)),	-- Blood Onyx Uniform
				traderstender(150, i(208148)),	-- Burgundy Cap
				traderstender(175, i(189882)),	-- Dread Admiral's Bicorne
				traderstender(650, iensemble(190799)),	-- Ensemble: Swashbuckling Buccaneer's Slops
				traderstender(100, iensemble(206321)),	-- Ensemble: Vagabond's Sunny Threads
				traderstender(100, iensemble(206332)),	-- Ensemble: Wanderer's Sunny Trappings
				traderstender(50, i(190699)),	-- Gorian Mining Pick
				traderstender(50, i(190698)),	-- Gently Used Cleaver
				traderstender(500, i(210265)),	-- High Scholar's Grand Staff
				traderstender(500, i(208423)),	-- Homebrewer's Sampling Crest
				traderstender(175, i(190144)),	-- Irontide Raiders Bicorne
				traderstender(100, i(189895)),	-- Watchman's Flare
				traderstender(450, iensemble(208176)),	-- Plate of the Light Avenger
				traderstender(500, iensemble(208178)),	-- Secrets of the Unnamed Cult
				traderstender(450, iensemble(208400)),	-- Silk of the Unnamed Cult
				traderstender(750, i(190155)),	-- Trusty Treasure Trove
				traderstender(150, i(208147)),	-- Yellow Tweed Cap
			}),
		})),
		n(OCTOBER, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7, REMOVED_10_2_0 } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(208598),	-- Eve's Ghastly Rider (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(650, i(49693)),	-- Lil' KT (PET!)
			}),
			filter(MOUNTS, {
				traderstender(700, i(137576)),	-- Dim Coldflame Core (MOUNT!)
			}),
			filter(TOYS, {
				traderstender(350, i(32542)),	-- Imp in a Ball (TOY!)
			}),
			filter(COSMETIC, {
				traderstender(450, iensemble(208663)),	-- Ashamane's Vestment of Rebirth
				traderstender(500, iensemble(208664)),	-- Ashamane's Blessings of Rebirth
				traderstender(225, i(190710)),	-- Caged Eye of the Watcher
				traderstender(525, i(190689)),	-- Corrupted Bladefist
				traderstender(50, i(190802)),	-- Drape of Endless Twilight
				traderstender(100, iensemble(206341)),	-- Ensemble: Wanderer's Lively Trappings
				traderstender(100, iensemble(206330)),	-- Ensemble: Vagabond's Lively Threads
				traderstender(250, i(190216)),	-- Feathered Cowl of the Guardian
				traderstender(100, i(190200)),	-- Feathered Drape of the Guardian
				traderstender(125, i(190800)),	-- Gleaming Mail Tabard
				traderstender(450, i(190145)),	-- Gilded Drakkonid Morningstar
				traderstender(175, i(190076)),	-- Granny's Old Hat
				traderstender(500, i(190578)),	-- Headmaster's Command
				traderstender(500, i(208763)),	-- Headmaster's Skullcap
				traderstender(250, i(190558)),	-- Helm of the Fierce
				traderstender(500, i(210265)),	-- High Scholar's Grand Staff
				traderstender(450, iensemble(208667)),	-- Nathreza Blasphemer's Flames
				traderstender(500, iensemble(208668)),	-- Nathreza Blasphemer's Glaives
				traderstender(125, i(190801)),	-- Shadowy Mail Tabard
				traderstender(50, i(190433)),	-- Shifty Merchant's Tunic
				traderstender(450, iensemble(208665)),	-- Webbed Saronite Exoskeleton
				traderstender(500, iensemble(208666)),	-- Webbed Saronite Weaponry
				traderstender(100, i(190199)),	-- Well-Worn Grimskull Cinch
				traderstender(75, i(190804)),	-- Wine-Soaked Hammer
			}),
		})),
		n(NOVEMBER, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_0} }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(208943),	-- Arsenal: Cosmic Weapons Cache
			}),
			filter(BATTLE_PETS, {
				traderstender(650, i(190176)),	-- Drazka'zet the Wrathful (PET!)
			}),
			filter(MOUNTS, {
				traderstender(650, i(76889)),	-- Spectral Gryphon (MOUNT!)
				traderstender(650, i(76902)),	-- Spectral Wind Rider (MOUNT!)
				traderstender(550, i(37719)),	-- Swift Zhevra (MOUNT!)
			}),
			filter(TOYS, {
				traderstender(425, i(45063)),	-- Foam Toy Rack (TOY!)
			}),
			filter(COSMETIC, {
				traderstender(75, i(190832)),	-- Acolyte’s Etched Warhammer
				traderstender(100, iensemble(206331)),	-- Ensemble: Vagabond’s Sepia Threads
				traderstender(100, iensemble(206342)),	-- Ensemble: Wanderer’s Sepia Trappings
				traderstender(400, i(190217)),	-- Fang of the Mountain
				traderstender(75, i(190065)),	-- Gnomish Liquid Transfer Apparatus
				traderstender(500, iensemble(208673)),	-- Instruments of the Alluring Call
				traderstender(450, iensemble(208672)),	-- Jewels of the Alluring Call
				traderstender(50, i(190833)),	-- Krokul Guisame
				traderstender(500, i(190147)),	-- Longbow of the Twisted Grove
				traderstender(225, i(190824)),	-- Loyal Blademaster’s Greatsword
				traderstender(200, i(208786)),	-- Luxurious Niffen Hat
				traderstender(150, i(190843)),	-- Maw of Rage
				traderstender(150, i(190813)),	-- Mechanized Skullcrusher
				traderstender(500, iensemble(208671)),	-- Possessed Watcher Arsenal
				traderstender(450, iensemble(208669)),	-- Possessed Watcher Guise
				traderstender(50, i(190831)),	-- Razor-Edged Kukri
				traderstender(400, i(190910)),	-- Ruby Felfire Bulwark
				traderstender(500, iensemble(208675)),	-- Savage Champion’s Aggression
				traderstender(450, iensemble(208674)),	-- Savage Champion’s Trophies
				traderstender(50, i(190829)),	-- Shawl of Flowing Magic
				traderstender(175, i(190557)),	-- Sinister Fel Staff
				traderstender(650, i(190220)),	-- Standard of the Guardian
				traderstender(50, i(190806)),	-- Tidecaller’s Cinch
			}),
		})),
		n(DECEMBER, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_0} }, {
			n(FILLED_TRAVELERS_LOG, {
				i(190925),	-- Buttercup (PET!)
			}),
			filter(BATTLE_PETS, {
				traderstender(750, i(190607)),	-- Garrlok (PET!)
				traderstender(600, i(210870)),	-- Mitzy (PET!)
			}),
			filter(MOUNTS, {
				traderstender(600, i(210919)),	-- Crimson Glimmerfur (MOUNT!)
			}),
			filter(COSMETIC, {
				traderstender(400, iensemble(211257)),	-- Arsenal: Stormriders Stormhammers
				traderstender(450, iensemble(208699)),	-- Battle Magisters Regalia
				traderstender(500, iensemble(208700)),	-- Battle Magisters Enchantments
				traderstender(200, i(210869)),	-- Blademasters Azure Stones
				traderstender(225, i(211268)),	-- Blademasters Thundering Greatsword
				traderstender(600, i(210843)),	-- Candied Blade
				traderstender(50, i(190430)),	-- Chipped Gladius
				traderstender(100, i(211267)),	-- Classic Snowy Tabard
				traderstender(50, i(190203)),	-- Craftsman Timber Mallet
				traderstender(50, i(211070)),	-- Crimson Treads of the Kaluak
				traderstender(100, i(208039)),	-- Ember Court Soiree Gloves
				traderstender(550, iensemble(210883)),	-- Ensemble: Scarlet Zealots Trappings
				traderstender(100, iensemble(190851)),	-- Ensemble: Vagabond's Crimson Threads
				traderstender(100, iensemble(190922)),	-- Ensemble: Vagabond's Snowy Threads
				traderstender(100, iensemble(190850)),	-- Ensemble: Wanderer's Crimson Trappings
				traderstender(100, iensemble(190921)),	-- Ensemble: Wanderer's Snowy Trappings
				traderstender(225, i(211130)),	-- Errant Crusaders Helm
				traderstender(100, i(190886)),	-- Fine White Evening Gloves
				traderstender(200, i(190874)),	-- Glittering Fel Gavel
				traderstender(450, iensemble(208727)),	-- Hornstrider Hunters Camouflage
				traderstender(500, iensemble(208728)),	-- Hornstrider Hunters Preference
				traderstender(450, iensemble(208729)),	-- Imminence of Krag'wa's Executor
				traderstender(200, i(190685)),	-- Lost Crusaders Azure Battleaxe
				traderstender(450, iensemble(208725)),	-- Scales of the Silver Hoarder
				traderstender(750, iensemble(208730)),	-- Tools of Krag'wa's Executor
				traderstender(100, i(210844)),	-- Traders Crimson Sarong
				traderstender(100, i(210846)),	-- Traders Lively Sarong
				traderstender(500, iensemble(208726)),	-- Treasure of the Silver Hoarder
				traderstender(200, i(211258)),	-- Wildhammer Scouts Headgear
			}),
		})),
	}),
	n(YEAR2024, {
		n(JANUARY, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_5} }, {
			n(FILLED_TRAVELERS_LOG, {
				i(211002),	-- Golden Mobile Timepiece
			}),
			filter(BATTLE_PETS, {
				traderstender(600, i(193429)),	-- Time-Lost Salamanther
			}),
			filter(MOUNTS, {
				traderstender(800, i(190767)),	-- Armored Golden Pterrordax
				traderstender(800, i(211074)),	-- Copper Resonating Crystal
			}),
			filter(COSMETIC, {
				traderstender(550, i(190447)),	-- Soulburner Bardiche
				traderstender(100, i(190671)),	-- Tabard of Wild Might
				traderstender(250, i(190693)),	-- Ancestral Stonehoof Totem
				traderstender(250, i(190712)),	-- Ancestral Skychaser Totem
				traderstender(400, i(190854)),	-- Heavily Stitched Wallet
				traderstender(50, i(190887)),	-- Highlord's Ceremonial Drape
				traderstender(50, i(190892)),	-- Orange-Sleeved Shirt
				traderstender(650, iensemble(200925)),	-- Ensemble: Solemn Watchman's Garb
				traderstender(100, iensemble(206321)),	-- Ensemble: Vagabond's Sunny Threads
				traderstender(100, iensemble(206332)),	-- Ensemble: Wanderer's Sunny Trappings
				traderstender(150, i(208147)),	-- Yellow Tweed Cap
				traderstender(100, i(210857)),	-- Trader's Carrot Sarong
				traderstender(200, i(210866)),	-- Blademaster's Suntouched Stones
				traderstender(450, i(211064)),	-- Dwarven Crown Splitter
				traderstender(100, i(211066)),	-- Gossamer Desert Gown
				traderstender(50, i(211068)),	-- Sepia Treads of the Kalu'ak
				traderstender(500, i(211072)),	-- Time Marshal's Carbine
				traderstender(400, i(211098)),	-- Copper Scarab Bulwark
				traderstender(850, iensemble(211122)),	-- Ensemble: Wastewander Tracker's Kit
				traderstender(100, i(211129)),	-- Sand-Swept Soiree Gloves
				traderstender(500, i(211137)),	-- Witch Doctor's Fetish Frame
				traderstender(400, i(211158)),	-- Witch Doctor's Fetish Guard
			}),
		})),
		n(FEBRUARY, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5, REMOVED_10_2_5} }, {
			-- removed 10.2.5.53495
			n(FILLED_TRAVELERS_LOG, {
				iensemble(212220),	-- Ensemble: Love Witch's Attire
			}),
			filter(BATTLE_PETS, {
				traderstender(250, i(212700)),	-- Nelle (PET!)
				traderstender(350, i(212722)),	-- Buggsy (PET!)
			}),
			filter(MOUNTS, {
				traderstender(750, i(212227)),	-- Fur-endship Fox (MOUNT!)
				traderstender(100, i(54860)),	-- X-53 Touring Rocket (MOUNT!)
			}),
			filter(TOYS, {
				traderstender(10, i(206347)),	-- Mannequin Charm (TOY!)
			}),
			filter(COSMETIC, {
				traderstender(250, i(212369)),	-- Battlefield Lover's Bow
				traderstender(600, iensemble(190725)),	-- Ensemble: Battlewraps of the Honored Valarjar
				traderstender(200, i(210865)),	-- Blademaster's Crimson Stones
				traderstender(100, i(212374)),	-- Classic Rosy Tabard
				traderstender(250, i(212545)),	-- Crown of the White Rose
				traderstender(75, i(212572)),	-- Dueler's Rosy Shoulder Cape
				traderstender(100, iensemble(202170)),	-- Ensemble: Vagabond's Rosy Threads
				traderstender(100, iensemble(202167)),	-- Ensemble: Wanderer's Rosy Trappings
				traderstender(100, i(190091)),	-- Fanciful Corsage
				traderstender(250, i(212382)),	-- Fluorescent Splitblade
				traderstender(100, i(190728)),	-- Gothic Corsage
				traderstender(150, i(212373)),	-- Gossamer Magenta Gown
				traderstender(200, i(190895)),	-- Lost Crusader's Amethyst Battleaxe
				traderstender(200, i(212381)),	-- Love's Bulwark
				traderstender(300, i(212375)),	-- Lovely Rosy Longbow
				traderstender(300, i(212376)),	-- Lovely Gothic Longbow
				traderstender(250, i(212379)),	-- Love Witch's Rosy Stave
				traderstender(200, i(212377)),	-- Love Witch's Rosy Wand
				traderstender(100, i(212372)),	-- Magenta Masquerade Gloves
				traderstender(400, i(190909)),	-- Ruby Felfire Splitblade
				traderstender(400, i(190910)),	-- Ruby Felfire Bulwark
				traderstender(100, i(190855)),	-- Rosy Corsage
				traderstender(100, i(190670)),	-- Sanguine Bouquet
				traderstender(100, i(210858)),	-- Trader's Rosy Sarong
				traderstender(200, i(212378)),	-- Twilight Witch's Gothic Scepter
				traderstender(250, i(212380)),	-- Twilight Witch's Gothic Stave
			}),
		})),
		n(MARCH, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5, REMOVED_10_2_6 } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(211432),	-- Teele (PET!)
			}),
			filter(BATTLE_PETS, {
			}),
			filter(MOUNTS, {
				traderstender(650, a(i(207964))),	-- Alabaster Stormtalon (MOUNT!)
				traderstender(650, h(i(207963))),	-- Alabaster Thunderwing (MOUNT!)
				traderstender(750, i(212630)),	-- Majestic Azure Peafowl (MOUNT!)
			}),
			filter(TOYS, {
				traderstender(200, i(212523)),	-- Delicate Jade Parasol (TOY!)
			}),
			filter(COSMETIC, {
				traderstender(500, iensemble(212577)),	-- Arsenal: Skyborn Blades
				traderstender(150, i(212576)),	-- Blackrock Executioner
				traderstender(100, i(212544)),	-- Classic Aquatic Tabard
				traderstender(50, i(190890)),	-- Chipped Warblade
				traderstender(200, i(212530)),	-- Corroded Augari Defender
				traderstender(250, i(190080)),	-- Catastrophe's Edge
				traderstender(75, i(212574)),	-- Dueler's Aquatic Shoulder Cape
				traderstender(75, i(212573)),	-- Dueler's Cloudy Shoulder Cape
				traderstender(100, iensemble(206322)),	-- Ensemble: Vagabond's Aquatic Threads
				traderstender(100, iensemble(206333)),	-- Ensemble: Wanderer's Aquatic Trappings
				traderstender(450, i(190690)),	-- Flame-Forged Fel Fang
				traderstender(50, i(190097)),	-- Fabulously Flashy Finery
				traderstender(100, i(212542)),	-- Flowing Aquatic Gloves
				traderstender(150, i(212543)),	-- Gossamer Teal Gown
				traderstender(200, i(212555)),	-- Guise of the Royal Masquerade
				traderstender(200, i(212556)),	-- Guise of the Shining Masquerade
				traderstender(200, i(190218)),	-- Jeweled Ripper
				traderstender(200, i(190215)),	-- Lost Crown of the Arcane
				traderstender(200, i(190814)),	-- Mephistroth's Razor
				traderstender(50, i(190428)),	-- Regal Warcloak
				traderstender(800, iensemble(210078)),	-- Sky-Captain's Formal Attire
				traderstender(100, i(210861)),	-- Trader's Aquatic Sarong
				traderstender(100, i(210852)),	-- Trader's Cloudy Sarong
				traderstender(200, i(190219)),	-- Virulent Gavel
			}),
		})),
		n(APRIL, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6, REMOVED_10_2_6_SEASON_FOUR } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(210409),	-- Aura (PET!)
			}),
			filter(MOUNTS, {
				traderstender(500, i(212920)),	-- Savage Blue Battle Turtle (MOUNT!)
				traderstender(750, i(160589)),	-- The Dreadwake (MOUNT!)
			}),
			filter(TOYS, {
				traderstender(200, i(212500)),	-- Delicate Silk Parasol (TOY!)
			}),
			filter(COSMETIC, {
				traderstender(75, i(190859)),	-- Apprentice's Twisted Crook
				traderstender(250, i(213078)),	-- Assassin's Bandolier
				traderstender(200, i(210868)),	-- Blademaster's Violet Stones
				traderstender(150, i(212789)),	-- Champion's Jade Cleaver
				traderstender(100, i(212990)),	-- Classic Violet Tabard
				traderstender(175, i(212790)),	-- Codex of Classic Conjurations
				traderstender(175, i(190899)),	-- Crimson Bicorne
				traderstender(75, i(190805)),	-- Deforester's Hatchet
				traderstender(175, i(189882)),	-- Dread Admiral's Bicorne
				traderstender(75, i(212616)),	-- Dueler's Violet Shoulder Cape
				traderstender(75, i(212621)),	-- Dueler's Lively Shoulder Cape
				traderstender(250, i(190819)),	-- Emerald Guardian's Longbow
				traderstender(650, iensemble(217381)),	-- Ensemble: Fearless Buccaneer's Slops
				traderstender(300, iensemble(213084)),	-- Ensemble: Spring Reveler's Lavender Apparel
				traderstender(500, iensemble(212940)),	-- Ensemble: Spring Reveler's Lavender Collection
				traderstender(650, iensemble(190799)),	-- Ensemble: Swashbuckling Buccaneer's Slops
				traderstender(100, iensemble(206326)),	-- Ensemble: Vagabond's Camo Threads
				traderstender(100, iensemble(206337)),	-- Ensemble: Wanderer's Camo Trappings
				traderstender(300, i(190445)),	-- Envenomed Gutripper
				traderstender(175, i(217372)),	-- Frenzied Hat of the Deep Blue
				traderstender(100, i(212787)),	-- Gloves of the Violet Gala
				traderstender(100, i(190857)),	-- Gilded Emerald Longcloak
				traderstender(150, i(212788)),	-- Gossamer Emerald Gown
				traderstender(225, i(212785)),	-- Helm of the Stout
				traderstender(175, i(190144)),	-- Irontide Raiders Bicorne
				traderstender(150, i(190075)),	-- Mantle of the Scholarly Raven
				traderstender(150, i(212708)),	-- Spring Reveler's Dandelion Attire
				traderstender(50, i(212709)),	-- Spring Reveler's Dandelion Belt
				traderstender(50, i(212710)),	-- Spring Reveler's Dandelion Boots
				traderstender(200, i(212714)),	-- Spring Reveler's Dandelion Dress
				traderstender(50, i(212988)),	-- Spring Reveler's Dandelion Pants
				traderstender(300, i(212718)),	-- Spring Reveler's Dandelion Sun Hat
				traderstender(100, i(210860)),	-- Trader's Violet Sarong
				traderstender(750, i(190155)),	-- Trusty Treasure Trove
				traderstender(300, i(190873)),	-- Warhammer of Hubris
			}),
		})),
		n(MAY, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_10_2_7 } }, { -- 10.2.7.54904
			n(FILLED_TRAVELERS_LOG, {
				i(212613),	-- Wings of the Amber Monarch
			}),
			filter(BATTLE_PETS, {
				traderstender(600, i(190604)),	-- Buzzworth (PET!)
				traderstender(400, i(217043)),	-- Pokee (PET!)
			}),
			filter(MOUNTS, {
				traderstender(600, i(192766)),	-- Amber Skitterfly (MOUNT!)
				traderstender(800, i(54069)),	-- Blazing Hippogryph (MOUNT!)
				traderstender(800, i(206976)),	-- Royal Swarmer (MOUNT!)
			}),
			filter(COSMETIC, {
				traderstender(100, iensemble(190164)),	-- Arsenal: Blades of Elune
				traderstender(100, i(213396)),	-- Classic Midnight Tabard
				traderstender(75, i(212623)),	-- Dueler's Brick Shoulder Cape
				traderstender(75, i(212628)),	-- Dueler's Midnight Shoulder Cape
				traderstender(250, i(213394)),	-- Ebony Crown of the Red Rose
				traderstender(100, iensemble(206325)),	-- Ensemble: Vagabond's Brick Threads
				traderstender(100, iensemble(190166)),	-- Ensemble: Vagabond's Midnight Threads
				traderstender(100, iensemble(206336)),	-- Ensemble: Wanderer's Brick Trappings
				traderstender(100, iensemble(190377)),	-- Ensemble: Wanderer's Midnight Trappings
				traderstender(100, i(189896)),	-- Forsaken Cresset
				traderstender(100, i(213395)),	-- Gloves of the Midnight Soiree
				traderstender(100, i(213393)),	-- Guise of the Golden Masquerade
				traderstender(50, i(190070)),	-- Highborne Scholar's Gloves
				traderstender(300, i(213065)),	-- Lavish Floral Edge
				traderstender(300, i(213068)),	-- Lavish Floral Stalk
				traderstender(75, i(190674)),	-- Leaky Bucket
				traderstender(50, i(211071)),	-- Lively Treads of the Kalu'ak
				traderstender(300, i(213062)),	-- Paradise's Golden Axe
				traderstender(75, i(190066)),	-- Primeval Maul
				traderstender(50, i(190201)),	-- Sin'dorei Assassin's Shroud
				traderstender(300, i(213071)),	-- Sunny Floral Staff
				traderstender(300, i(213075)),	-- Sunny Bow-quet
				traderstender(100, i(210855)),	-- Trader's Brick Sarong
				traderstender(200, i(190844)),	-- Valarjar Champion's Greatsword
			}),
		})),
		n(JUNE, bubbleDownSelf({ ["timeline"] = { ADDED_MOP_REMIX, "removed 10.2.7.55261" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(220692),	-- X-treme Water Blaster Display (TOY!)
			}),
			filter(BATTLE_PETS, {
				traderstender(500, i(223145)),	-- Marrlok (PET!)
			}),
			filter(MOUNTS, {
				traderstender(700, i(221814)),	-- Pearlescent Goblin Wave Shredder (MOUNT!)
				traderstender(700, i(23720)),	-- Riding Turtle (MOUNT!)
			}),
			filter(TOYS, {
				traderstender(200, i(218112)),	-- Colorful Beach Chair (TOY!)
				traderstender(200, i(212524)),	-- Delicate Crimson Parasol (TOY!)
			}),
			filter(COSMETIC, {
				traderstender(650, iensemble(223004)),	-- Arsenal: Blazing Felfire Armaments
				traderstender(200, i(210866)),	-- Blademaster's Suntouched Stones
				traderstender(60, i(221809)),	-- Churning Sands Treads
				traderstender(60, i(221810)),	-- Churning Sands Gloves
				traderstender(100, i(221794)),	-- Classic Carrot Tabard
				traderstender(525, i(190689)),	-- Corrupted Bladefist
				traderstender(75, i(212619)),	-- Dueler's Carrot Shoulder Cape
				traderstender(75, i(212614)),	-- Dueler's Sunny Shoulder Cape
				traderstender(650, iensemble(221542)),	-- Ensemble: Sunny Tropical Beachwear
				traderstender(650, iensemble(222961)),	-- Ensemble: Sunny Tropical Swimwear
				traderstender(100, iensemble(202178)),	-- Ensemble: Vagabond's Carrot Threads
				traderstender(100, iensemble(202179)),	-- Ensemble: Wanderer's Carrot Trappings
				traderstender(100, i(190849)),	-- Forgemaster's Gavel
				traderstender(60, i(190860)),	-- Initiate's Bo
				traderstender(50, i(190205)),	-- Sharpened Shank
				traderstender(100, i(210863)),	-- Trader's Sunny Sarong
				traderstender(40, i(221832)),	-- Tropical Sunrise Airy Sandals
				traderstender(40, i(221831)),	-- Tropical Sunrise Beads
				traderstender(200, i(221829)),	-- Tropical Sunrise Halter Top
				traderstender(220, i(221529)),	-- Tropical Sunrise Mrgl Floater
				traderstender(40, i(221528)),	-- Tropical Sunrise Sandals
				traderstender(60, i(221833)),	-- Tropical Sunrise Sash
				traderstender(200, i(221525)),	-- Tropical Sunrise Shirt
				traderstender(150, i(221830)),	-- Tropical Sunrise Skirt
				traderstender(220, i(221834)),	-- Tropical Sunrise Sunshade
				traderstender(150, i(221526)),	-- Tropical Sunrise Trunks
				traderstender(40, i(221527)),	-- Tropical Sunrise Wristwraps
				traderstender(330, i(220357)),	-- Water Blaster B.L.
			}),
		})),
		n(JULY, bubbleDownSelf({ ["timeline"] = { "added 10.2.7.55261", "removed 11.0.0.55846" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(223339),	-- Trishi (PET!)
			}),
			filter(BATTLE_PETS, {
				traderstender(500, i(206174)),	-- Blub (PET!)
			}),
			filter(MOUNTS, {
				traderstender(600, i(210919)),	-- Crimson Glimmerfur (MOUNT!)
				traderstender(800, i(223285)),	-- Underlight Corrupted Behemoth (MOUNT!)
			}),
			filter(COSMETIC, {
				traderstender(80, i(223185)),	-- Blade Of The Riptide
				traderstender(100, i(223170)),	-- Classic Deep Tabard
				traderstender(60, i(223233)),	-- Copper Divers Belt
				traderstender(220, i(223230)),	-- Copper Divers Bonnet
				traderstender(60, i(223235)),	-- Copper Divers Boots
				traderstender(80, i(223232)),	-- Copper Divers Corselet
				traderstender(60, i(223236)),	-- Copper Divers Gloves
				traderstender(80, i(223234)),	-- Copper Divers Greaves
				traderstender(80, i(223231)),	-- Copper Divers Pauldrons
				traderstender(160, i(223252)),	-- Copper Divers Tank
				traderstender(10, i(223257)),	-- Copper Divers Wrist Seal
				traderstender(300, i(223166)),	-- Deepsea Treasure Pack
				traderstender(75, i(212624)),	-- Duelers Deep Shoulder Cape
				traderstender(800, iensemble(223244)),	-- Ensemble: Deepest Depths Diver Suit
				traderstender(100, iensemble(206327)),	-- Ensemble: Vagabond's Deep Threads
				traderstender(100, iensemble(206338)),	-- Ensemble: Wanderer's Deep Trappings
				traderstender(225, i(211130)),	-- Errant Crusaders Helm
				traderstender(80, i(223188)),	-- Riptide Basher
				traderstender(80, i(223187)),	-- Riptide Bulwark
				traderstender(125, i(223179)),	-- Riptide Dagger
				traderstender(125, i(223176)),	-- Riptide Gut Puncher
				traderstender(125, i(223189)),	-- Riptide Slicer
				traderstender(200, i(223184)),	-- Riptide Staff
				traderstender(180, i(213161)),	-- Titan Thunderbow
				traderstender(100, i(210853)),	-- Traders Deep Sarong
				traderstender(100, i(223191)),	-- Trident Of The Riptide
				traderstender(225, i(223165)),	-- Vengeful Crusaders Helm
				traderstender(125, i(223190)),	-- Wand Of The Riptide
			}),
		})),
		n(AUGUST, bubbleDownSelf({ ["timeline"] = { "added 11.0.0.55846", "removed 11.0.2.56421" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(223409),	-- The Coward's Violet Target
			}),
			filter(BATTLE_PETS, {
				traderstender(300, i(223474)),	-- Worgli the Apprehensive (PET!)
			}),
			filter(MOUNTS, {
				traderstender(900, i(54811)),	-- Celestial Steed (MOUNT!)
				traderstender(900, i(118515)),	-- Cindermane Charger (MOUNT!)
				traderstender(600, i(223469)),	-- Sentinel War Wolf (MOUNT!)
				traderstender(600, i(223449)),	-- Kor'kron Warsaber (MOUNT!)
			}),
			filter(TOYS, {
				traderstender(500, i(206268)),	-- Ethereal Transmogrifier (TOY!)
			}),
			filter(COSMETIC, {
				traderstender(400, iensemble(211257)),	-- Arsenal: Stormrider's Stormhammers
				traderstender(400, iensemble(220759)),	-- Arsenal: Stormrider's Bronze Stormhammers
				traderstender(400, iensemble(220755)),	-- Arsenal: Stormrider's Dark Stormhammers
				traderstender(400, iensemble(220762)),	-- Arsenal: Stormrider's Silver Stormhammers
				traderstender(500, iensemble(223421)),	-- Arsenal: Fireborn Blades
				traderstender(500, iensemble(223418)),	-- Arsenal: Seaborn Blades
				traderstender(200, i(210869)),	-- Blademaster's Azure Stones
				traderstender(200, i(210865)),	-- Blademaster's Crimson Stones
				traderstender(50, i(190870)),	-- City Guard Heater Shield
				traderstender(60, i(223430)),	-- Conjurer's Sapphire Staff
				traderstender(60, i(223429)),	-- Conjurer's Scarlet Staff
				traderstender(75, i(212627)),	-- Dueler's Azure Shoulder Cape
				traderstender(75, i(212617)),	-- Dueler's Crimson Shoulder Cape
				traderstender(100, iensemble(190576)),	-- Ensemble: Vagabond's Azure Threads
				traderstender(100, iensemble(190577)),	-- Ensemble: Wanderer's Azure Trappings
				traderstender(100, iensemble(190851)),	-- Ensemble: Vagabond's Crimson Threads
				traderstender(100, iensemble(190850)),	-- Ensemble: Wanderer's Crimson Trappings
				traderstender(50, i(190871)),	-- Grunt's Buckler
				traderstender(100, i(210999)),	-- Ruby-Faced Mobile Timepiece
				traderstender(100, i(211001)),	-- Sapphire-Faced Mobile Timepiece
				traderstender(180, i(223415)),	-- Sapphire Axe of Asymmetry
				traderstender(130, i(223423)),	-- Sapphire Bladed Blunderbuss
				traderstender(150, i(223411)),	-- Sapphire Shanker
				traderstender(150, i(223413)),	-- Sapphire Warglaive
				traderstender(180, i(223414)),	-- Scarlet Axe of Asymmetry
				traderstender(130, i(223422)),	-- Scarlet Bladed Blunderbuss
				traderstender(150, i(223410)),	-- Scarlet Shanker
				traderstender(150, i(223412)),	-- Scarlet Warglaive
				traderstender(50, i(223426)),	-- Simple Sapphire Wand
				traderstender(50, i(223425)),	-- Simple Scarlet Wand
				traderstender(100, i(223433)),	-- Sunreaver's Scarlet Tome
				traderstender(100, i(223434)),	-- The Sapphire Thalassian Tome
				traderstender(100, i(210849)),	-- Trader's Azure Sarong
				traderstender(100, i(210844)),	-- Trader's Crimson Sarong
				traderstender(225, i(212612)),	-- Wings of the Amethyst Monarch
				traderstender(225, i(212611)),	-- Wings of the Tourmaline Monarch
			}),
		})),
		n(SEPTEMBER, bubbleDownSelf({ ["timeline"] = { "added 11.0.2.56421", "removed 11.0.2.56647" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(226040),	-- Plunderlord's Golden Crocolisk (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(330, i(226104)),	-- Claudius (PET!)
			}),
			filter(MOUNTS, {
				traderstender(600, i(226041)),	-- Keg Leg's Radiant Crocolisk (MOUNT!)
			}),
			filter(COSMETIC, {
				traderstender(260, i(225975)),	-- Alchemist's Bandolier
				traderstender(40, i(226106)),	-- Amber Scale Treads
				traderstender(200, i(210867)),	-- Blademaster's Lively Stones
				traderstender(100, i(225977)),	-- Classic Camo Tabard
				traderstender(150, i(225993)),	-- Cursed Copper Crossbow
				traderstender(75, i(212622)),	-- Dueler's Camo Shoulder Cape
				traderstender(50, i(190068)),	-- Emerald Drape
				traderstender(40, i(226105)),	-- Emerald Scale Treads
				traderstender(750, iensemble(226017)),	-- Ensemble: Plunderlord's Radiant Finery
				traderstender(500, iensemble(190540)),	-- Ensemble: Trapper's Munitions
				traderstender(100, iensemble(206330)),	-- Ensemble: Vagabond's Lively Threads
				traderstender(100, iensemble(206341)),	-- Ensemble: Wanderer's Lively Trappings
				traderstender(150, i(225978)),	-- Fel-Glade Warglaive
				traderstender(100, i(225976)),	-- Fine Gloves of the Forest
				traderstender(175, i(217376)),	-- Frenzied Hat of the Murky Waters
				traderstender(300, i(209053)),	-- Green Brewfest Bulwark
				traderstender(400, i(190854)),	-- Heavily Stitched Wallet
				traderstender(100, i(225980)),	-- High-Grade Blade of the Forbade
				traderstender(500, i(208423)),	-- Homebrewer's Sampling Crest
				traderstender(100, i(190133)),	-- Honed Bastard Sword
				traderstender(100, i(225979)),	-- Jade Blade of the Forbade
				traderstender(50, i(190833)),	-- Krokul Guisarme
				traderstender(200, i(208786)),	-- Luxurious Niffen Hat
				traderstender(50, i(190892)),	-- Orange-Sleeved Shirt
				traderstender(175, i(225990)),	-- Plunderlord's Radiant Cutlass
				traderstender(150, i(225983)),	-- Plunderlord's Radiant Hand Cannon
				traderstender(150, i(225992)),	-- Plunderlord's Radiant Neck-Severer
				traderstender(150, i(225991)),	-- Plunderlord's Radiant Rapier
				traderstender(160, i(225982)),	-- Plunderlord's Radiant Sigil
				traderstender(50, i(190205)),	-- Sharpened Shank
				traderstender(50, i(225994)),	-- Simple Copper Staff
				traderstender(800, iensemble(210078)),	-- Sky-Captain's Formal Attire
				traderstender(80, i(225974)),	-- Swabbie's Cap
				traderstender(100, i(210854)),	-- Trader's Camo Sarong
			}),
		})),
		n(OCTOBER, bubbleDownSelf({ ["timeline"] = { "added 11.0.2.56647", "removed 11.0.5.57388" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(187674),	-- Depthstalker (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(200, i(205148)),	-- Soot-Stained Shalewing (PET!)
			}),
			filter(MOUNTS, {
				traderstender(750, i(226506)),	-- Hand of Reshkigaal (MOUNT!)
				traderstender(550, i(37719)),	-- Swift Zhevra (MOUNT!)
			}),
			filter(TOYS, {
				traderstender(200, i(212525)),	-- Delicate Ebony Parasol (TOY!)
				traderstender(200, i(212500)),	-- Delicate Silk Parasol (TOY!)
			}),
			filter(COSMETIC, {
				traderstender(100, i(226390)),	-- Aerie Battle Mace
				traderstender(150, i(226370)),	-- Ashen Executioner
				traderstender(100, i(226388)),	-- Battle-Tested Obsidian Warhammer
				traderstender(100, i(226387)),	-- Battle-Tested Warhammer
				traderstender(225, i(190710)),	-- Caged Eye of the Watcher
				traderstender(100, i(226369)),	-- Classic Faded Tabard
				traderstender(100, i(226389)),	-- Dark Iron Battle Mace
				traderstender(75, i(212620)),	-- Dueler's Faded Shoulder Cape
				traderstender(75, i(212628)),	-- Dueler's Midnight Shoulder Cape
				traderstender(75, i(212615)),	-- Dueler's Snowy Shoulder Cape
				traderstender(800, iensemble(226429)),	-- Ensemble: Ragged Harvest Golem
				traderstender(100, iensemble(206324)),	-- Ensemble: Vagabond's Faded Threads
				traderstender(100, iensemble(206335)),	-- Ensemble: Wanderer's Faded Trappings
				traderstender(100, i(226382)),	-- Feathered Bow of the Fallen
				traderstender(100, i(226381)),	-- Feathered Bow of the Night
				traderstender(100, i(190886)),	-- Fine White Evening Gloves
				traderstender(75, i(226386)),	-- Gentle Glow of the Naaru
				traderstender(100, i(213395)),	-- Gloves of the Midnight Soiree
				traderstender(100, i(226366)),	-- Gloves of the Morning Mist
				traderstender(175, i(190076)),	-- Granny's Old Hat
				traderstender(250, i(226428)),	-- Harvester's Claw
				traderstender(85, i(190132)),	-- Krokul Battlescythe
				traderstender(50, i(226383)),	-- Simple Ebony Wand
				traderstender(100, i(210848)),	-- Trader's Midnight Sarong
				traderstender(100, i(210862)),	-- Trader's Snowy Sarong
				traderstender(40, i(226367)),	-- Ugly Black Boots
				traderstender(40, i(226368)),	-- Ugly White Boots
				traderstender(50, i(226384)),	-- Wand of the Bright Shadow
			}),
		})),
		n(NOVEMBER, bubbleDownSelf({ ["timeline"] = { "added 11.0.5.57388", "removed 11.0.5.57689" } }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(229059),	-- Arsenal: Crests of the Kingdom
			}),
			filter(COSMETIC, {
				traderstender(250, i(190693)),	-- Ancestral Stonehoof Totem
				traderstender(100, i(229426)),	-- Ancient Amani Longbow
				traderstender(500, iensemble(208177)),	-- Armaments of the Light Avenger
				traderstender(400, iensemble(211257)),	-- Arsenal: Stormriders Stormhammers
				traderstender(450, iensemble(208663)),	-- Ashamane's Vestment of Rebirth
				traderstender(500, iensemble(208664)),	-- Ashamane's Blessings of Rebirth
				traderstender(450, iensemble(208699)),	-- Battle Magisters Regalia
				traderstender(500, iensemble(208700)),	-- Battle Magisters Enchantments
				traderstender(100, i(226388)),	-- Battle-tested Obsidian Warhammer
				traderstender(500, iensemble(208179)),	-- Blood Onyx Blades
				traderstender(450, iensemble(208405)),	-- Blood Onyx Uniform
				traderstender(100, i(229425)),	-- Bronzebeard Battle Mace
				traderstender(850, iensemble(213158)),	-- Ensemble: Dark Ranger General's Kit
				traderstender(850, iensemble(217038)),	-- Ensemble: Gladiator's Battered Armor
				traderstender(100, iensemble(230165)),	-- Ensemble: Prowler's Azure Headgear
				traderstender(100, iensemble(230179)),	-- Ensemble: Prowler's Crimson Headgear
				traderstender(100, iensemble(230183)),	-- Ensemble: Prowler's Sunny Headgear
				traderstender(100, iensemble(230180)),	-- Ensemble: Prowler's Violet Headgear
				traderstender(225, i(190216)),	-- Feathered Cowl of the Guardian
				traderstender(100, i(190200)),	-- Feathered Drape of the Guardian
				traderstender(750, i(189898)),	-- Fury of the Firelord
				traderstender(275, i(213106)),	-- Gladiator's Battered Greatsword
				traderstender(850, iensemble(208412)),	-- High Scholar's Arcana
				traderstender(500, i(210265)),	-- High Scholar's Grand Staff
				traderstender(450, iensemble(208727)),	-- Hornstrider Hunters Camouflage
				traderstender(500, iensemble(208728)),	-- Hornstrider Hunters Preference
				traderstender(450, iensemble(208729)),	-- Imminence of Krag'wa's Executor
				traderstender(500, iensemble(208673)),	-- Instruments of the Alluring Call
				traderstender(450, iensemble(208672)),	-- Jewels of the Alluring Call
				traderstender(450, iensemble(208667)),	-- Nathreza Blasphemer's Flames
				traderstender(500, iensemble(208668)),	-- Nathreza Blasphemer's Glaives
				traderstender(450, iensemble(208176)),	-- Plate of the Light Avenger
				traderstender(500, iensemble(208671)),	-- Possessed Watcher Arsenal
				traderstender(450, iensemble(208669)),	-- Possessed Watcher Guise
				traderstender(75, i(230034)),	-- Prowler's Azure Shoulder Cape
				traderstender(75, i(230048)),	-- Prowler's Crimson Shoulder Cape
				traderstender(75, i(230052)),	-- Prowler's Sunny Shoulder Cape
				traderstender(75, i(230049)),	-- Prowler's Violet Shoulder Cape
				traderstender(500, iensemble(208675)),	-- Savage Champion’s Aggression
				traderstender(450, iensemble(208674)),	-- Savage Champion’s Trophies
				traderstender(450, iensemble(208725)),	-- Scales of the Silver Hoarder
				traderstender(500, iensemble(208178)),	-- Secrets of the Unnamed Cult
				traderstender(450, iensemble(208400)),	-- Silk of the Unnamed Cult
				traderstender(650, i(190220)),	-- Standard of the Guardian
				traderstender(750, iensemble(208730)),	-- Tools of Krag'wa's Executor
				traderstender(500, iensemble(208726)),	-- Treasure of the Silver Hoarder
				traderstender(450, iensemble(208665)),	-- Webbed Saronite Exoskeleton
				traderstender(500, iensemble(208666)),	-- Webbed Saronite Weaponry
				traderstender(500, i(211137)),	-- Witch Doctor's Fetish Frame
				traderstender(400, i(211158)),	-- Witch Doctor's Fetish Guard
			}),
		})),
		n(DECEMBER, bubbleDownSelf({ ["timeline"] = { "added 11.0.5.57689", "removed 11.0.7.58238" } }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(223486),	-- Ensemble: Purple Snugglefin Murloc Romper
			}),
			filter(BATTLE_PETS, {
				traderstender(400, i(229993)),	-- Bluedoo (PET!)
				traderstender(600, i(210870)),	-- Mitzy (PET!)
			}),
			filter(MOUNTS, {
				traderstender(700, i(137576)),	-- Dim Coldflame Core (MOUNT!)
				traderstender(750, i(212229)),	-- Reins of the Twilight Sky Prowler (MOUNT!)
			}),
			filter(COSMETIC, {
				traderstender(300, i(230853)),	-- Aegis of Yuletide
				traderstender(50, i(211069)),	-- Azure Treads of the Kalu'ak
				traderstender(600, i(210843)),	-- Candied Blade
				traderstender(400, i(229961)),	-- Candied Knife
				traderstender(450, i(229960)),	-- Cheerbringer XL
				traderstender(120, i(229812)),	-- Chilled Axe
				traderstender(100, i(229999)),	-- Classic Cloudy Tabard
				traderstender(400, i(95475)),	-- Crown of Eternal Winter
				traderstender(250, i(229807)),	-- Crown of the Icy Blue Rose
				traderstender(150, i(229813)),	-- Crystalline Longbow of the Heavens
				traderstender(100, iensemble(230174)),	-- Ensemble: Prowler's Icy Headgear
				traderstender(100, iensemble(230182)),	-- Ensemble: Prowler's Snowy Headgear
				traderstender(750, iensemble(212222)),	-- Ensemble: Twilight Witch's Attire
				traderstender(100, iensemble(206328)),	-- Ensemble: Vagabond's Cloudy Threads
				traderstender(850, iensemble(190095)),	-- Ensemble: Vestment of the Honored Valarjar
				traderstender(100, iensemble(206339)),	-- Ensemble: Wanderer's Cloudy Trappings
				traderstender(100, i(229814)),	-- Fan of Cooling
				traderstender(175, i(190842)),	-- Fists of Polar Fury
				traderstender(90, i(229811)),	-- Frost Etched Dagger
				traderstender(170, i(229720)),	-- Frostwolf Earmuffs
				traderstender(150, i(229808)),	-- Gossamer Cyan Gown
				traderstender(450, i(229963)),	-- Great Candied Blade
				traderstender(170, i(229714)),	-- Lion's Crest Earmuffs
				traderstender(300, i(229817)),	-- Lovely Airy Longbow
				traderstender(300, i(212376)),	-- Lovely Gothic Longbow
				traderstender(75, i(230043)),	-- Prowler's Icy Shoulder Cape
				traderstender(75, i(230051)),	-- Prowler's Snowy Shoulder Cape
				traderstender(200, i(190143)),	-- Shard of Frozen Secrets
				traderstender(250, i(229815)),	-- Sky Witch's Airy Stave
				traderstender(200, i(229816)),	-- Sky Witch's Airy Wand
				traderstender(400, i(229962)),	-- Tree Topper
				traderstender(200, i(212378)),	-- Twilight Witch's Gothic Scepter
				traderstender(250, i(212380)),	-- Twilight Witch's Gothic Stave
				traderstender(225, i(230940)),	-- Wings of the Sapphire Monarch
				traderstender(225, i(231017)),	-- Wings of the Onyx Monarch
			}),
		})),
	}),
	n(YEAR2025, {
		n(JANUARY, bubbleDownSelf({ ["timeline"] = { "added 11.0.7.58238", "removed 11.0.7.58867" } }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(233359),	-- Green Clockwork Contraptions Collection
			}),
			filter(BATTLE_PETS, {
				traderstender(600, i(193429)),	-- Time-Lost Salamanther (PET!)
				traderstender(300, i(233366)),	-- Wind-Up Woofer (PET!)
				traderstender(300, i(233361)),	-- Wind-Up Wuffi (PET!)
			}),
			filter(MOUNTS, {
				traderstender(800, i(211074)),	-- Copper Resonating Crystal (MOUNT!)
				traderstender(750, i(212631)),	-- Reins of the Brilliant Sunburst Peafowl (MOUNT!)
				traderstender(500, i(233354)),	-- Savage Alabaster Battle Turtle (MOUNT!)
				i(112326, {	-- Warforged Nightmare (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 700}},
					["groups"] = {
						n(MAILBOX, {
							i(112324),	-- Nightmarish Hitching Post (TOY!)
						}),
					},
				}),
			}),
			filter(COSMETIC, {
				traderstender(100, i(221794)),	-- Classic Carrot Tabard
				traderstender(20, i(233185)),	-- Banded Sunny War Slippers
				traderstender(20, i(233168)),	-- Banded Sunny War Wraps
				traderstender(140, i(233355)),	-- Bronze Helm of Righteousness
				traderstender(650, iensemble(233328)),	-- Ensemble: Golden Clockwork Attire
				traderstender(650, iensemble(233329)),	-- Ensemble: Green Clockwork Attire
				traderstender(100, iensemble(230176)),	-- Ensemble: Prowler's Carrot Headgear
				traderstender(850, iensemble(211122)),	-- Ensemble: Wastewander Tracker's Kit
				traderstender(40, i(233360)),	-- Gold-Reinforced Cushioned Boots
				traderstender(260, i(233277)),	-- Golden Clockwork Defender
				traderstender(300, i(233257)),	-- Golden Clockwork Doomfist
				traderstender(325, i(233249)),	-- Golden Clockwork Power Hammer
				traderstender(100, i(211066)),	-- Gossamer Desert Gown
				traderstender(40, i(233112)),	-- Long Sunny War Skirt
				traderstender(50, i(233151)),	-- Long Sunny War Skirt and Leg Wraps
				traderstender(300, i(233270)),	-- Long-Range Golden Clockstopper
				traderstender(75, i(230045)),	-- Prowler's Carrot Shoulder Cape
				traderstender(100, i(211129)),	-- Sand-Swept Soiree Gloves
				traderstender(40, i(233095)),	-- Short Sunny War Skirt
				traderstender(50, i(233134)),	-- Short Sunny War Skirt and Leg Wraps
				traderstender(300, i(233273)),	-- Steam-Powered Golden Cloak
				traderstender(60, i(190818)),	-- Steamwheedle Artifact Extractor
			}),
		})),
		n(FEBRUARY, bubbleDownSelf({ ["timeline"] = { "added 11.0.7.58867", "removed 11.1.0.59466" } }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(234058),	-- Ensemble: Ornate Pink Lunar Festival Attire
			}),
			filter(BATTLE_PETS, {
				traderstender(350, i(234397)),	-- Fullbelly Rollingpaw (PET!)
				traderstender(350, i(234396)),	-- Teatuft Tamer (PET!)
			}),
			filter(MOUNTS, {
				traderstender(750, i(212227)),	-- Fur-endship Fox (MOUNT!)
				traderstender(600, i(233023)),	-- Silvermoon Sweeper (MOUNT!)
			}),
			filter(COSMETIC, {
				traderstender(20, i(233078)),	-- Banded Crimson War Slippers
				traderstender(20, i(233076)),	-- Banded Crimson War Wraps
				traderstender(250, i(212369)),	-- Battlefield Lover's Bow
				traderstender(300, i(233232)),	-- Crimson Lunar Firewhacker
				traderstender(250, i(233218)),	-- Crimson Lunar Lantern
				traderstender(250, i(233236)),	-- Crimson Pack of Lunar Explosives
				traderstender(750, iensemble(212220)),	-- Ensemble: Love Witch's Attire
				traderstender(600, iensemble(234057)),	-- Ensemble: Ornate Crimson Lunar Festival Attire
				traderstender(100, iensemble(230175)),	-- Ensemble: Prowler's Pink Headgear
				traderstender(100, iensemble(232933)),	-- Ensemble: Sky Witch's Heartfelt Shoulders
				traderstender(100, iensemble(232934)),	-- Ensemble: Twilight Witch's Heartfelt Shoulders
				traderstender(40, i(234074)),	-- Gold-Plated Cushioned Boots
				traderstender(300, i(233223)),	-- Jade Lunar Blade
				traderstender(300, i(233228)),	-- Jade Lunar Polearm
				traderstender(40, i(233073)),	-- Long Crimson War Skirt
				traderstender(50, i(233075)),	-- Long Crimson War Skirt and Leg Wraps
				traderstender(250, i(212379)),	-- Love Witch's Rosy Stave
				traderstender(200, i(212377)),	-- Love Witch's Rosy Wand
				traderstender(300, i(212375)),	-- Lovely Rosy Longbow
				traderstender(75, i(230044)),	-- Prowler's Pink Shoulder Cape
				i(190855, {	-- Rosy Corsage
					-- #if BEFORE 11.1.0
					["description"] = "This is also sold at the discount vendor, no reason to buy it from the main trading post offering."
					-- #endif
					--["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				traderstender(40, i(233072)),	-- Short Crimson War Skirt
				traderstender(50, i(233074)),	-- Short Crimson War Skirt and Leg Wraps
			}),
			n(VENDORS, {
				n(234747, {	-- Supplier Felina <Trading Post Outlet Completionist>
					["coord"] = { 48.16, 51.99, DORNOGAL },
					["groups"] = {
						filter(BATTLE_PETS, {
							traderstender(350, i(190925)),	-- Buttercup (PET!)
						}),
						filter(MOUNTS, {
							traderstender(900, i(190231)),	-- Ash'adar, Harbinger of Dawn (MOUNT!)
							traderstender(750, i(190169)),	-- Quawks (MOUNT!)
						}),
						filter(COSMETIC, {
							traderstender(700, iensemble(208943)),	-- Arsenal: Cosmic Weapons Cache
							traderstender(800, iensemble(190797)),	-- Ensemble: Bones of the Bloodhunter
							traderstender(750, iensemble(190504)),	-- Ensemble: Darkmoon Harlequin's Bells
						}),
					},
				}),
				n(234746, {	-- Supplier Mizix <Trading Post Outlet Creatures and Toys>
					["coord"] = { 48.07, 52.16, DORNOGAL },
					["groups"] = {
						filter(BATTLE_PETS, {
							traderstender(200, i(190604)),	-- Buzzworth (PET!)
							traderstender(200, i(190176)),	-- Drazka'zet the Wrathful (PET!)
							traderstender(200, i(190603)),	-- Egbob (PET!)
							traderstender(200, i(208045)),	-- Slyvy (PET!)
							traderstender(200, i(49343)),	-- Spectral Tiger Cub (PET!)
						}),
						filter(MOUNTS, {
							traderstender(500, i(207821)),	-- Ancestral Clefthoof (MOUNT!)
							traderstender(500, i(210919)),	-- Crimson Glimmerfur (MOUNT!)
							traderstender(500, i(206027)),	-- Felcrystal Scorpion (MOUNT!)
							traderstender(500, i(189978)),	-- Reins of the Magenta Cloud Serpent (MOUNT!)
							traderstender(500, i(206976)),	-- Royal Swarmer's Reins (MOUNT!)
							traderstender(500, i(76889)),	-- Spectral Gryphon (MOUNT!)
							traderstender(500, i(76902)),	-- Spectral Wind Rider (MOUNT!)
						}),
						filter(TOYS, {
							traderstender(300, i(206268)),	-- Ethereal Transmogrifier (TOY!)
							traderstender(300, i(45063)),	-- Foam Toy Rack (TOY!)
							traderstender(300, i(32542)),	-- Imp in a Ball (TOY!)
						}),
					},
				}),
				n(234744, {	-- Supplier Offa <Trading Post Outlet Wearables>
					["coord"] = { 47.57, 52.76, DORNOGAL },
					["groups"] = {
						filter(COSMETIC, {
							traderstender(200, i(190712)),	-- Ancestral Skychaser Totem
							traderstender(100, i(208148)),	-- Burgundy Cap
							traderstender(100, i(190899)),	-- Crimson Bicorne
							traderstender(40, i(190130)),	-- Drape of Foreboding Mists
							traderstender(100, i(189882)),	-- Dread Admiral's Bicorne
							traderstender(75, i(190869)),	-- Emberstone Dress
							traderstender(350, iensemble(189938)),	-- Ensemble: Fel-Automaton Exoplate
							traderstender(350, iensemble(200884)),	-- Ensemble: Glorious Dragonrider's Mail
							traderstender(350, iensemble(210883)),	-- Ensemble: Scarlet Zealots Trappings
							traderstender(350, iensemble(190799)),	-- Ensemble: Swashbuckling Buccaneer's Slops
							traderstender(350, iensemble(200915)),	-- Ensemble: Sylvan Stalker’s Leathers
							traderstender(40, i(190097)),	-- Fabulously Flashy Finery
							traderstender(70, i(190800)),	-- Gleaming Mail Tabard
							traderstender(40, i(190063)),	-- Greatcloak of the Virtuous Protector
							traderstender(40, i(190808)),	-- High Priestess's Ceremonial Drape
							traderstender(100, i(97213)),	-- Hood of Hungering Darkness
							traderstender(200, i(189897)),	-- Infiltrator's Bandolier
							traderstender(40, i(190434)),	-- Iridescent Warcloak
							traderstender(100, i(190144)),	-- Irontide Raiders Bicorne
							traderstender(100, i(190215)),	-- Lost Crown of the Arcane
							traderstender(200, i(190599)),	-- Operative's Bandolier
							traderstender(100, i(190898)),	-- Red Pith Helmet
							traderstender(60, i(190855)),	-- Rosy Corsage
							traderstender(70, i(190801)),	-- Shadowy Mail Tabard
							traderstender(40, i(190829)),	-- Shawl of Flowing Magic
							traderstender(40, i(190433)),	-- Shifty Merchant's Tunic
							traderstender(40, i(190806)),	-- Tidecaller’s Cinch
							traderstender(100, i(208147)),	-- Yellow Tweed Cap
						}),
					},
				}),
				n(234742, {	-- Supplier Toffa <Trading Post Outlet Weapons>
					["coord"] = { 47.79, 52.55, DORNOGAL },
					["groups"] = {
						filter(COSMETIC, {
							traderstender(50, i(190832)),	-- Acolyte’s Etched Warhammer
							traderstender(225, i(190562)),	-- Aldori War Mace
							traderstender(200, i(190146)),	-- Antoran Felspire
							traderstender(100, i(207957)),	-- Aquamarine Felfire Bulwark
							traderstender(200, i(207959)),	-- Aquamarine Felfire Splitblade
							traderstender(150, i(190812)),	-- Azure Nexus Crescent
							traderstender(125, i(190071)),	-- Azure Scalesworn Longbow
							traderstender(125, i(190441)),	-- Black Iron Blunderbuss
							traderstender(100, i(190078)),	-- Blade of Brutal Sacrifice
							traderstender(200, i(190560)),	-- Conquest
							traderstender(200, i(190689)),	-- Corrupted Bladefist
							traderstender(150, i(190438)),	-- Crimson Nexus Crescent
							traderstender(200, i(190217)),	-- Fang of the Mountain
							traderstender(50, i(190856)),	-- Fetid Bouquet
							traderstender(100, i(190876)),	-- Filigreed Lion's Maw
							traderstender(200, i(190690)),	-- Flame-Forged Fel Fang
							traderstender(75, i(189896)),	-- Forsaken Cresset
							traderstender(200, i(202248)),	-- Frozen Shadow
							traderstender(40, i(190698)),	-- Gently Used Cleaver
							traderstender(200, i(190145)),	-- Gilded Drakkonid Morningstar
							traderstender(50, i(190065)),	-- Gnomish Liquid Transfer Apparatus
							traderstender(40, i(190204)),	-- Huntsman's Recurve Bow
							traderstender(75, i(190153)),	-- Libram of Righteous Light
							traderstender(125, i(190147)),	-- Longbow of the Twisted Grove
							traderstender(100, i(190685)),	-- Lost Crusaders Azure Battleaxe
							traderstender(100, i(190814)),	-- Mephistroth's Razor
							traderstender(40, i(190546)),	-- Polished Shortsword
							traderstender(100, i(190443)),	-- Pustulent Demonheart Fetish
							traderstender(40, i(190831)),	-- Razor-Edged Kukri
							traderstender(100, i(190910)),	-- Ruby Felfire Bulwark
							traderstender(200, i(190909)),	-- Ruby Felfire Splitblade
							traderstender(100, i(190817)),	-- Sentinel's Tower Shield
							traderstender(200, i(190846)),	-- Shattered Voidspire
							traderstender(100, i(190557)),	-- Sinister Fel Staff
							traderstender(200, i(190447)),	-- Soulburner Bardiche
							traderstender(50, i(189871)),	-- Squire's Warhammer
							traderstender(200, i(190821)),	-- Sunspire Battle Staff
							traderstender(100, i(190214)),	-- Tiercel's Wing
							traderstender(75, i(190154)),	-- Tome of Sin'dorei Secrets
							traderstender(75, i(189895)),	-- Watchman's Flare
						}),
					},
				}),
			})
		})),
		n(MARCH, bubbleDownSelf({ ["timeline"] = { "added 11.1.0.59466", "removed 11.1.0.60037" } }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(235217),	-- Ensemble: Ornaments of the Pearlescent Monarch
			}),
			filter(MOUNTS, {
				traderstender(700, i(235650)),	-- Pearlescent Butterfly (MOUNT!)
				traderstender(750, i(212229)),	-- Reins of the Twilight Sky Prowler (MOUNT!)
				traderstender(700, i(235657)),	-- Ruby Butterfly (MOUNT!)
				traderstender(325, i(235646)),	-- Shimmermist Free Runner (MOUNT!
			}),
			filter(TOYS, {
				traderstender(200, i(212523)),	-- Delicate Jade Parasol (TOY!)
			}),
			filter(COSMETIC, {
				traderstender(20, i(233174)),	-- Banded Deep War Slippers
				traderstender(20, i(233157)),	-- Banded Deep War Wraps
				traderstender(250, i(235655)),	-- Blood Monarch's Longbow
				traderstender(250, i(235272)),	-- Blood Monarch's Mace
				traderstender(300, i(235401)),	-- Blood Monarch's Polearm
				traderstender(250, i(235291)),	-- Blood Monarch's Sword
				traderstender(200, i(235295)),	-- Blood Monarch's Wand
				traderstender(370, iensemble(235228)),	-- Ensemble: Ornaments of the Blood Monarch
				traderstender(100, iensemble(230169)),	-- Ensemble: Prowler's Deep Headgear
				traderstender(750, iensemble(212222)),	-- Ensemble: Twilight Witch's Attire
				traderstender(40, i(233101)),	-- Long Deep War Skirt
				traderstender(50, i(233140)),	-- Long Deep War Skirt and Leg Wraps
				traderstender(300, i(212376)),	-- Lovely Gothic Longbow
				traderstender(250, i(235652)),	-- Pearlescent Monarch's Longbow
				traderstender(250, i(235270)),	-- Pearlescent Monarch's Mace
				traderstender(300, i(235402)),	-- Pearlescent Monarch's Polearm
				traderstender(250, i(235290)),	-- Pearlescent Monarch's Sword
				traderstender(200, i(235294)),	-- Pearlescent Monarch's Wand
				traderstender(75, i(230038)),	-- Prowler's Deep Shoulder Cape
				traderstender(40, i(235623)),	-- Ruby Scale Treads
				traderstender(40, i(235624)),	-- Sapphire Scale Treads
				traderstender(50, i(233123)),	-- Short Deep War Skirt and Leg Wraps
				traderstender(40, i(233084)),	-- Short Deep War Skirt
				traderstender(200, i(212378)),	-- Twilight Witch's Gothic Scepter
				traderstender(250, i(212380)),	-- Twilight Witch's Gothic Stave
				traderstender(50, i(235024)),	-- Vigilante's Deep Mask
				traderstender(250, i(238394)),	-- Warblades of the Monarch
				traderstender(225, i(234602)),	-- Wings of the Blood Monarch
				traderstender(225, i(234603)),	-- Wings of the Pearlescent Monarch
			}),
		})),
		n(APRIL, bubbleDownSelf({ ["timeline"] = { "added 11.1.0.60037", "removed 11.1.5.60568" } }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(235664),	-- Ensemble: Topsy Turvy Mask Set
			}),
			filter(MOUNTS, {
				traderstender(350, i(235662)),	-- Emerald Snail (Mount!)
				traderstender(575, i(235555)),	-- Lively Darkmoon Charger (MOUNT!)
				traderstender(575, i(235556)),	-- Violet Darkmoon Charger (MOUNT!)
			}),
			filter(TOYS, {
				traderstender(200, i(212500)),	-- Delicate Silk Parasol (TOY!)
			}),
			filter(COSMETIC, {
				traderstender(20, i(233175)),	-- Banded Camo War Slippers
				traderstender(20, i(233158)),	-- Banded Camo War Wraps
				traderstender(20, i(233181)),	-- Banded Plum War Slippers
				traderstender(20, i(233164)),	-- Banded Plum War Wraps
				traderstender(150, i(212789)),	-- Champion's Jade Cleaver
				traderstender(125, i(234612)),	-- Double-Bladed Blooming Garden Trowel
				traderstender(125, i(234613)),	-- Double-Bladed Rooted Garden Trowel
				traderstender(380, iensemble(235594)),	-- Ensemble: Forest Dweller's Blooming Attire
				traderstender(380, iensemble(235595)),	-- Ensemble: Forest Dweller's Rooted Attire
				traderstender(300, iensemble(213084)),	-- Ensemble: Spring Reveler's Lavender Apparel
				traderstender(500, iensemble(212940)),	-- Ensemble: Spring Reveler's Lavender Collection
				traderstender(100, iensemble(230170)),	-- Ensemble: Prowler's Camo Headgear
				traderstender(100, i(212787)),	-- Gloves of the Violet Gala
				traderstender(40, i(233102)),	-- Long Camo War Skirt
				traderstender(50, i(233141)),	-- Long Camo War Skirt and Leg Wraps
				traderstender(40, i(233108)),	-- Long Plum War Skirt
				traderstender(50, i(233147)),	-- Long Plum War Skirt and Leg Wraps
				traderstender(75, i(230040)),	-- Prowler's Camo Shoulder Cape
				traderstender(40, i(233085)),	-- Short Camo War Skirt
				traderstender(50, i(233124)),	-- Short Camo War Skirt and Leg Wraps
				traderstender(40, i(233091)),	-- Short Plum War Skirt
				traderstender(50, i(233130)),	-- Short Plum War Skirt and Leg Wraps
				traderstender(140, i(234573)),	-- Topsy Turvy Clown's Blade
				traderstender(140, i(234724)),	-- Topsy Turvy Clown's Cleaver
				traderstender(140, i(234725)),	-- Topsy Turvy Jester's Cleaver
				traderstender(200, i(235641)),	-- Topsy Turvy Clown's Die
				traderstender(140, i(234575)),	-- Topsy Turvy Jester's Blade
				traderstender(140, i(234725)),	-- Topsy Turvy Jester's Cleaver
				traderstender(200, i(235642)),	-- Topsy Turvy Jester's Die
				traderstender(50, i(235025)),	-- Vigilante's Camo Mask
				traderstender(50, i(235031)),	-- Vigilante's Plum Mask
			}),
		})),
		n(MAY, bubbleDownSelf({ ["timeline"] = { "added 11.1.5.60568", "removed 11.1.5.61122" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(238942)	-- Weechi (PET!)
			}),
			filter(MOUNTS, {
				traderstender(600, i(192766)),	-- Amber Skitterfly (MOUNT!)
				traderstender(325, i(210141)),	-- Brown-Furred Spiky Bakar (MOUNT!)
				traderstender(550, i(238897)),	-- Spring Harvesthog (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(350, i(236409)),	-- Frumpy Softpaw (PET!)
				traderstender(200, i(34492)),	-- Rocket Chicken (PET!)
			}),
			filter(COSMETIC, {
				traderstender(20, i(233170)),	-- Banded Azure War Slippers
				traderstender(20, i(233153)),	-- Banded Azure War Wraps
				traderstender(20, i(233182)),	-- Banded Violet War Slippers
				traderstender(20, i(233165)),	-- Banded Violet War Wraps
				traderstender(150, i(236630)),	-- Deathwarder's Blood Blade
				traderstender(90, i(237183)),	-- Deathwarder's Blood Fetish
				traderstender(150, i(237179)),	-- Deathwarder's Blood Fist
				traderstender(175, i(236405)),	-- Deathwarder's Blood Stave
				traderstender(180, i(238959)),	-- Deathwarder's Great Blood Blade
				traderstender(440, iensemble(237224)),	-- Ensemble: Attire of the Swift Fox
				traderstender(440, iensemble(237222)),	-- Ensemble: Attire of the Woodland Racoon
				traderstender(175, i(217374)),	-- Frenzied Hat of the Shallows
				traderstender(225, i(235985)),	-- Heroic Half Shell
				traderstender(60, i(190860)),	-- Initiate's Bo
				traderstender(130, i(238252)),	-- Large Renaissance Katana
				traderstender(300, i(213065)),	-- Lavish Floral Edge
				traderstender(300, i(213068)),	-- Lavish Floral Stalk
				traderstender(40, i(233097)),	-- Long Azure War Skirt
				traderstender(50, i(233136)),	-- Long Azure War Skirt and Leg Wraps
				traderstender(50, i(233148)),	-- Long Violet War Skirt and Leg Wraps
				traderstender(40, i(233109)),	-- Long Violet War Skirt
				traderstender(150, i(236627)),	-- Night Hag's Blade
				traderstender(150, i(237176)),	-- Night Hag's Claw
				traderstender(90, i(237180)),	-- Night Hag's Fetish
				traderstender(180, i(238956)),	-- Night Hag's Great Blade
				traderstender(175, i(236402)),	-- Night Hag's Stave
				traderstender(120, i(237343)),	-- Nunchuck of the Renaissance
				traderstender(120, i(238217)),	-- Offhand Renaissance Nunchuck
				traderstender(300, i(213062)),	-- Paradise's Golden Axe
				traderstender(110, i(237344)),	-- Renaissance Katana
				traderstender(120, i(237342)),	-- Renaissance Sai
				traderstender(40, i(233080)),	-- Short Azure War Skirt
				traderstender(50, i(233117)),	-- Short Azure War Skirt and Leg Wraps
				traderstender(40, i(233092)),	-- Short Violet War Skirt
				traderstender(50, i(233131)),	-- Short Violet War Skirt and Leg Wraps
				traderstender(300, i(213071)),	-- Sunny Floral Staff
				traderstender(300, i(213075)),	-- Sunny Bow-quet
				traderstender(50, i(235020)),	-- Vigilante's Azure Mask
				traderstender(50, i(235029)),	-- Vigilante's Carrot Mask
				traderstender(50, i(235032)),	-- Vigilante's Crimson Mask
				traderstender(50, i(235033)),	-- Vigilante's Violet Mask
			}),
		})),
		n(JUNE, bubbleDownSelf({ ["timeline"] = { "added 11.1.5.61122", "removed 11.1.7.61609" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(238967),	-- Molten Cormaera (MOUNT!)
			}),
			filter(MOUNTS, {
				traderstender(700, i(238941)),	-- Coldflame Cormaera (MOUNT!)
				traderstender(700, i(221814)),	-- Pearlescent Goblin Wave Shredder (MOUNT!)
				traderstender(325, i(236415)),	-- Reins of the Spotted Black Riding Goat (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(500, i(223145)),	-- Marrlok (PET!)
			}),
			filter(TOYS, {
				traderstender(200, i(218112)),	-- Colorful Beach Chair (TOY!)
			}),
			filter(COSMETIC, {
				traderstender(300, i(238947)),	-- Arcano-Stone Greathelm
				traderstender(20, i(233176)),	-- Banded Brick War Slippers
				traderstender(20, i(233159)),	-- Banded Brick War Wraps
				traderstender(200, i(238397)),	-- Coldflame Chopper
				traderstender(200, i(238892)),	-- Coldflame's Bite
				traderstender(150, i(238951)),	-- Coldflame Burner
				traderstender(550, iensemble(238418)),	-- Ensemble: Coldflame Battlegear
				traderstender(550, iensemble(238438)),	-- Ensemble: Lavaborn Battleplate
				traderstender(100, iensemble(230171)),	-- Ensemble: Prowler's Brick Headgear
				traderstender(650, iensemble(221542)),	-- Ensemble: Sunny Tropical Beachwear
				traderstender(650, iensemble(222961)),	-- Ensemble: Sunny Tropical Swimwear
				traderstender(200, i(238894)),	-- Lavaborn Barb
				traderstender(200, i(238399)),	-- Lavaborn Ruby's Edge
				traderstender(40, i(233103)),	-- Long Brick War Skirt
				traderstender(50, i(233142)),	-- Long Brick War Skirt and Leg Wraps
				traderstender(300, i(238950)),	-- Molten Inferno Helm
				traderstender(75, i(230039)),	-- Prowler's Brick Shoulder Cape
				traderstender(150, i(238953)),	-- Red Flame Burner
				traderstender(40, i(233086)),	-- Short Brick War Skirt
				traderstender(50, i(233125)),	-- Short Brick War Skirt and Leg Wraps
				traderstender(245, i(237856)),	-- Sunwell Bardiche
				traderstender(50, i(235026)),	-- Vigilante's Brick Mask
				traderstender(245, i(237854)),	-- Voidstorm Bardiche
			}),
		})),
		n(JULY, bubbleDownSelf({ ["timeline"] = { "added 11.1.7.61609", "removed 11.1.7.61967" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(242522, {	-- Forsaken's Grotesque Cauldron
					-- #if BEFORE 11.2.0
					["description"] = "Rewarded when reaching 600 points in the Travelers Log."
					-- #endif
				}),
				iensemble(244225, {	-- Ensemble: Forsaken's Grotesque Collection
					-- #if BEFORE 11.2.0
					["description"] = "Rewarded when reaching 1000 points in the Travelers Log."
					-- #endif
				}),
				i(243594, {	-- Forsaken's Grotesque Charger (MOUNT!)
					-- #if BEFORE 11.2.0
					["description"] = "Rewarded when reaching 1400 points in the Travelers Log."
					-- #endif
				}),
			}),
			filter(MOUNTS, {
				traderstender(325, i(245936)),	-- Unarmored Deathtusk Felboar (MOUNT!)
				traderstender(575, i(243596)),	-- Wailing Banshee's Charger (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(500, i(206174)),	-- Blub (PET!)
			}),
			filter(COSMETIC, {
				traderstender(100, i(245745)),	-- Classic Plum Tabard
				traderstender(175, i(213155)),	-- Dark Ranger General's Quiver
				traderstender(300, i(223166)),	-- Deepsea Treasure Pack
				traderstender(75, i(212618)),	-- Dueler's Plum Shoulder Cape
				traderstender(800, iensemble(223244)),	-- Ensemble: Deepest Depths Diver Suit
				traderstender(100, iensemble(242466)),	-- Ensemble: Lively Sweatsuit
				traderstender(100, iensemble(242474)),	-- Ensemble: Plum Sweatsuit
				traderstender(100, iensemble(206323)),	-- Ensemble: Vagabond's Plum Threads
				traderstender(700, iensemble(244226)),	-- Ensemble: Wailing Banshee's Collection
				traderstender(100, iensemble(206334)),	-- Ensemble: Wanderer's Plum Trappings
				traderstender(200, i(242628)),	-- Forsaken's Grotesque Blade
				traderstender(200, i(242632)),	-- Forsaken's Grotesque Great Blade
				traderstender(175, i(242377)),	-- Forsaken's Grotesque Longbow
				traderstender(200, i(242349)),	-- Forsaken's Grotesque Mace
				traderstender(175, i(242382)),	-- Forsaken's Grotesque Quiver
				traderstender(150, i(242387)),	-- Forsaken's Grotesque Wand
				traderstender(200, i(242353)),	-- Forsaken's Grotesque Warglaives
				traderstender(100, i(210859)),	-- Trader's Plum Sarong
				traderstender(225, i(223165)),	-- Vengeful Crusader's Helm
				traderstender(200, i(242629)),	-- Wailing Banshee's Blade
				traderstender(200, i(242523)),	-- Wailing Banshee's Cauldron
				traderstender(245, i(242633)),	-- Wailing Banshee's Great Blade
				traderstender(175, i(242378)),	-- Wailing Banshee's Longbow
				traderstender(200, i(242350)),	-- Wailing Banshee's Mace
				traderstender(175, i(242383)),	-- Wailing Banshee's Quiver
				traderstender(150, i(242388)),	-- Wailing Banshee's Wand
				traderstender(200, i(242354)),	-- Wailing Banshee's Warglaives
			}),
		})),
		n(AUGUST, bubbleDownSelf({ ["timeline"] = { "added 11.1.7.61967", "removed 11.2.0.99999" } }, {	-- TODO: Timeline out correctly
			n(FILLED_TRAVELERS_LOG, {
				i(243572),	-- Grandmaster's Prophetic Board (MOUNT!)
			}),
			filter(MOUNTS, {
				traderstender(700, i(243591)),	-- Grandmaster's Royal Board (MOUNT!)
				traderstender(600, i(223469)),	-- Sentinel War Wolf (MOUNT!)
				traderstender(600, i(223449)),	-- Kor'kron Warsaber (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(300, i(223474)),	-- Worgli the Apprehensive (PET!)
			}),
			filter(COSMETIC, {
				traderstender(20, i(233169)),	-- Banded Midnight War Slippers
				traderstender(20, i(233152)),	-- Banded Midnight War Wraps
				traderstender(20, i(233184)),	-- Banded Snowy War Slippers
				traderstender(20, i(233167)),	-- Banded Snowy War Wraps
				traderstender(50, i(246015)),	-- Classic Midnight Eye Patch
				traderstender(50, i(246016)),	-- Classic Snowy Eye Patch
				traderstender(75, i(212627)),	-- Dueler's Azure Shoulder Cape
				traderstender(75, i(212617)),	-- Dueler's Crimson Shoulder Cape
				traderstender(550, iensemble(243258)),	-- Ensemble: Grandmaster's Prophetic Attire
				traderstender(550, iensemble(243277)),	-- Ensemble: Grandmaster's Royal Attire
				traderstender(300, iensemble(242455)),	-- Ensemble: Midnight Sweatsuit
				traderstender(300, iensemble(242489)),	-- Ensemble: Snowy Sweatsuit
				traderstender(150, i(242525)),	-- Grandmaster's Prophetic Axe
				traderstender(100, i(242372)),	-- Grandmaster's Prophetic Bulwark
				traderstender(175, i(242539)),	-- Grandmaster's Prophetic Mace
				traderstender(175, i(242357)),	-- Grandmaster's Prophetic Stave
				traderstender(150, i(242527)),	-- Grandmaster's Royal Axe
				traderstender(100, i(242374)),	-- Grandmaster's Royal Bulwark
				traderstender(175, i(242541)),	-- Grandmaster's Royal Mace
				traderstender(175, i(242359)),	-- Grandmaster's Royal Stave
				traderstender(40, i(233096)),	-- Long Midnight War Skirt
				traderstender(50, i(233135)),	-- Long Midnight War Skirt and Leg Wraps
				traderstender(40, i(233111)),	-- Long Snowy War Skirt
				traderstender(50, i(233150)),	-- Long Snowy War Skirt and Leg Wraps
				traderstender(40, i(233079)),	-- Short Midnight War Skirt
				traderstender(50, i(233116)),	-- Short Midnight War Skirt and Leg Wraps
				traderstender(40, i(233094)),	-- Short Snowy War Skirt
				traderstender(50, i(233133)),	-- Short Snowy War Skirt and Leg Wraps
				traderstender(50, i(235019)),	-- Vigilante's Midnight Mask
				traderstender(50, i(235035)),	-- Vigilante's Snowy Mask
			}),
		})),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF,
sharedData({ ["timeline"] = { ADDED_10_0_5 }, ["u"] = NEVER_IMPLEMENTED, }, {
	-- These don't trigger when using ensembles, but they are listed on Wowhead
	q(65718),	-- Ensemble: Slumbering Caldera Regalia
	q(72081),	-- Ensemble: Val'sharah Protector's Battleplate
	q(72086),	-- Ensemble: Tidecaller's Chainmail
	q(72087),	-- Ensemble: Void-Bound Raiment
	q(72088),	-- Ensemble: Void-Bound Battlegear
	q(72123),	-- Ensemble: Void-Bound Chains
	q(72124),	-- Ensemble: Void-Bound Warplate
})));

root(ROOTS.NeverImplemented, {
	n(TRADING_POST_NYI, bubbleDown({ ["timeline"] = { CREATED_10_0_5 }, }, {
		filter(BATTLE_PETS, {
			traderstender(750, i(190173)),	-- Lil' Maka'jin (PET!)
		}),
		filter(COSMETIC, {
			-- 10.0.0
			expansion(EXPANSION.DF, patch(0,0,1), bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
				n(SETS, {
					------ Honored Valarjar Set [Mail] ------
					i(190563),	-- Armbands of the Honored Valarjar
					i(190564),	-- Cape of the Honored Valarjar
					i(190568),	-- Coif of the Honored Valarjar
					i(190567),	-- Cuirass of the Honored Valarjar
					i(190566),	-- Gauntlets of the Honored Valarjar
					i(190565),	-- Girdle of the Honored Valarjar
					i(190570),	-- Legguards of the Honored Valarjar
					i(190571),	-- Pauldrons of the Honored Valarjar
					i(190569),	-- Sabatons of the Honored Valarjar

					------ Honored Valarjar Set [Plate] ------
					i(190919),	-- Breastplate of the Honored Valarjar
					i(190915),	-- Gardbrace of the Honored Valarjar
					i(190914),	-- Greatbelt of the Honored Valarjar
					i(190911),	-- Greatcloak of the Honored Valarjar
					i(190916),	-- Greaves of the Honored Valarjar
					i(190918),	-- Handguards of the Honored Valarjar
					i(190917),	-- Helm of the Honored Valarjar
					i(190913),	-- Vambraces of the Honored Valarjar
					i(190912),	-- Warboots of the Honored Valarjar

					------ Nightmare Forest Set ------
					i(190229),	-- Nightmare Forest Bindings
					i(190224),	-- Nightmare Forest Grips
					i(190223),	-- Nightmare Forest Jerkin
					i(190226),	-- Nightmare Forest Leggings
					i(190228),	-- Nightmare Forest Mantle
					i(190225),	-- Nightmare Forest Mask
					i(190227),	-- Nightmare Forest Raiment
					i(190222),	-- Nightmare Forest Sandals
					i(190221),	-- Nightmare Forest Waistwrap

					------ Slumbering Caldera Set ------
					i(190781),	-- Slumbering Caldera Bracers
					i(190780),	-- Slumbering Caldera Crown
					i(190775),	-- Slumbering Caldera Gauntlets
					i(190776),	-- Slumbering Caldera Girdle
					i(190782),	-- Slumbering Caldera Hauberk
					i(190778),	-- Slumbering Caldera Legguards
					i(190777),	-- Slumbering Caldera Pauldrons
					i(190774),	-- Slumbering Caldera Robe
					i(190779),	-- Slumbering Caldera Sabatons

					------ Twisted Arcanum Set ------
					i(190162),	-- Twisted Arcanum Bindings
					i(190159),	-- Twisted Arcanum Cowl
					i(190158),	-- Twisted Arcanum Grips
					i(190161),	-- Twisted Arcanum Mantle
					i(190163),	-- Twisted Arcanum Robe
					i(190156),	-- Twisted Arcanum Sash
					i(190157),	-- Twisted Arcanum Slippers
					i(190160),	-- Twisted Arcanum Trousers
					i(190193),	-- Twisted Arcanum Tunic
				}),
			})),

			-- 10.0.5
			expansion(EXPANSION.DF, patch(0,5), bubbleDown({ ["timeline"] = { CREATED_10_0_5 } }, {
				n(ARMOR, {
					i(190672),	-- Deathguard Acolyte's Cloak
					i(189869),	-- Distinguished Warcloak
				}),
				n(SETS, {
					i(190575),	-- Ensemble: Chains of the Honored Valarjar
					i(190165),	-- Ensemble: Twisted Arcanum Regalia
					i(190772),	-- Ensemble: Vestments of the Nightmare Forest

					------ Highborne Scholar Set ------
					i(190435),	-- Highborne Scholar's Belt
					i(190437),	-- Highborne Scholar's Collar
					i(190787),	-- Highborne Scholar's Cuffs
					i(190815),	-- Highborne Scholar's Leggings
					i(190555),	-- Highborne Scholar's Robe
					i(190868),	-- Highborne Scholar's Scrollmantle
					i(190809),	-- Highborne Scholar's Slippers

					------ Tidecaller's Set ------
					i(190700),	-- Tidecaller's Boots
					i(190432),	-- Tidecaller's Bracers
					i(190440),	-- Tidecaller's Crown
					i(190067),	-- Tidecaller's Grips
					i(190072),	-- Tidecaller's Hauberk
					i(190556),	-- Tidecaller's Legguards
					i(190709),	-- Tidecaller's Pauldrons

					------ Val'Sharah Protector Set ------
					i(190547),	-- Val'Sharah Protector's Bracers
					i(190897),	-- Val'Sharah Protector's Crown
					i(190213),	-- Val'sharah Protector's Cuirass
					i(190676),	-- Val'Sharah Protector's Gauntlets
					i(190861),	-- Val'Sharah Protector's Girdle
					i(189881),	-- Val'sharah Protector's Greaves
					i(190069),	-- Val'sharah Protector's Sabatons
					i(190074),	-- Val'sharah Protector's Spaulders

					------ Void-Bound Set [Cloth] ------
					i(190679),	-- Void-Bound Cord
					i(190839),	-- Void-Bound Crown
					i(190834),	-- Void-Bound Cuffs
					i(200923),	-- Void-Bound Drape
					i(190680),	-- Void-Bound Gloves
					i(190683),	-- Void-Bound Mantle
					i(190838),	-- Void-Bound Robe
					i(190835),	-- Void-Bound Slippers
					i(190684),	-- Void-Bound Trousers

					------ Void-Bound Set [Leather] ------
					i(190863),	-- Void-Bound Belt
					i(190862),	-- Void-Bound Bracers
					i(200920),	-- Void-Bound Cloak
					i(190704),	-- Void-Bound Handguards
					i(200919),	-- Void-Bound Leggings
					i(190879),	-- Void-Bound Mask
					i(190708),	-- Void-Bound Shoulderguards
					i(190703),	-- Void-Bound Striders
					i(190707),	-- Void-Bound Vest

					------ Void-Bound Set [Mail] ------
					i(190677),	-- Void-Bound Boots
					i(190678),	-- Void-Bound Chain
					i(190682),	-- Void-Bound Circlet
					i(190837),	-- Void-Bound Grips
					i(190840),	-- Void-Bound Hauberk
					i(200922),	-- Void-Bound Shroud
					i(190841),	-- Void-Bound Spaulders
					i(190681),	-- Void-Bound Tassets
					i(190836),	-- Void-Bound Wristguards

					------ Void-Bound Set [Plate] ------
					i(190866),	-- Void-Bound Breastplate
					i(190865),	-- Void-Bound Gauntlets
					i(190701),	-- Void-Bound Girdle
					i(200921),	-- Void-Bound Greatcloak
					i(190706),	-- Void-Bound Greathelm
					i(190705),	-- Void-Bound Greaves
					i(190867),	-- Void-Bound Pauldrons
					i(190864),	-- Void-Bound Sabatons
					i(190702),	-- Void-Bound Vambraces
				}),
				n(WEAPONS, {
					i(190715),	-- Anodized Sniper Rifle
					i(190675),	-- Arborcidal Peon's Chopper
					i(190711),	-- Arcanist's Barbed Baton
					i(190446),	-- Blazing Forgehammer
					i(190131),	-- Brick-on-a-Stick
					i(190714),	-- Gorian Pulverizer
					i(190442),	-- Illidari Bladeward
					i(190713),	-- Imperator's Command
					i(189883),	-- Lordaeron Sentry's Bulwark
					i(189886),	-- Might of the Titanforged
					i(190687),	-- Painted Warblade
					i(190148),	-- Ravencrest's Razor
					i(189872),	-- Shattered Krokul Edge
					i(190079),	-- Smoldering Forgeblade
					i(190691),	-- Twisted Guardian's Profane Barrier
					i(189884),	-- Vengeful Nemesis Warblades
				}),
			})),

			-- 10.1.0
			expansion(EXPANSION.DF, patch(1,7), bubbleDown({ ["timeline"] = { CREATED_10_1_0 } }, {
				n(SETS, {
					i(190796),	-- Ensemble: Slumbering Caldera Regalia
				}),
				n(WEAPONS, {
					i(190077),	-- Scarlet Zealot's Heater Shield
					i(189885),	-- The Battlespoon
				}),
			})),

			-- 10.1.5
			expansion(EXPANSION.DF, patch(1,5), bubbleDown({ ["timeline"] = { CREATED_10_1_5 } }, {
				n(ARMOR, {
					i(190559),	-- Helm of the Swift
				}),
				n(SETS, {
					i(200917),	-- Ensemble: Tidecaller's Chainmail

					------ Vagabond's Deep Threads ------
					i(206283),	-- Vagabond's Deep Cape
					i(206294),	-- Vagabond's Deep Hood

					------ Vagabond's Grassy Threads ------
					i(206329),	-- Ensemble: Vagabond's Grassy Threads
					i(206285),	-- Vagabond's Grassy Cape
					i(206296),	-- Vagabond's Grassy Hood

					------ Wanderer's Deep Trappings ------
					i(206316),	-- Wanderer's Deep Cloak
					i(206305),	-- Wanderer's Deep Scarf

					------ Wanderer's Grassy Trappings ------
					i(206340),	-- Ensemble: Wanderer's Grassy Trappings
					i(206318),	-- Wanderer's Grassy Cloak
					i(206307),	-- Wanderer's Grassy Scarf

				}),
				n(WEAPONS, {
					i(190561),	-- Crystalblade of Shifting Magic
				}),
			})),

			-- 10.2.0
			expansion(EXPANSION.DF, patch(2,0), bubbleDown({ ["timeline"] = { CREATED_10_2_0 } }, {
				n(ARMOR, {
					i(210856),	-- Trader's Faded Sarong
					i(210851),	-- Trader's Grassy Sarong
				}),
				n(WEAPONS, {
					i(190875),	-- Chilled Touch of the Condemned
				}),
			})),

			-- 10.2.5
			expansion(EXPANSION.DF, patch(2,5), bubbleDown({ ["timeline"] = { CREATED_10_2_5 } }, {
				n(ARMOR, {
					i(190807),	-- Artisan's Work Shirt
					i(190669),	-- Burnished Helm of Righteousness
					i(190692),	-- Champion's Battle Standard
					i(190847),	-- Deathmantle Assassin's Barb
					i(190090),	-- Dessicated Bouquet
					i(212625),	-- Dueler's Grassy Shoulder Cape
					i(190893),	-- Jeweled Valkyrion Cape
					i(190688),	-- Silvered Helm of Righteousness
					i(212705),	-- Spring Reveler's Cornsilk Attire
					i(212706),	-- Spring Reveler's Cornsilk Belt
					i(212707),	-- Spring Reveler's Cornsilk Boots
					i(212713),	-- Spring Reveler's Cornsilk Dress
					i(212987),	-- Spring Reveler's Cornsilk Pants
					i(212717),	-- Spring Reveler's Cornsilk Sun Hat
					i(212610),	-- Wings of the Emerald Monarch
				}),
				n(SETS, {
					i(190924),	-- Arsenal: Ruby Felfire Armaments
					i(190920),	-- Ensemble: Battleplate of the Honored Valarjar
					i(200910),	-- Ensemble: Val'sharah Protector's Battleplate
					i(200918),	-- Ensemble: Void-Bound Raiment
					i(200924),	-- Ensemble: Void-Bound Battlegear
					i(201000),	-- Ensemble: Void-Bound Chains
					i(201001),	-- Ensemble: Void-Bound Warplate
				}),
				n(WEAPONS, {
					i(190848),	-- [DNT] Do not use
					i(213162),	-- Blessed Bow of the Windseeker
					i(190908),	-- Devourer's Skullscythe
					i(190816),	-- Forgehand's "Stable" Fuel Cell
					i(213107),	-- Gladiator's Ragged Greatsword
					i(213077),	-- Lavender Bow-quet
					i(190822),	-- Mo'arg Enforcer's Halberd
					i(213063),	-- Paradise's Ruby Axe
					i(190900),	-- Prototype Farstrider Sniper Rifle
					i(190820),	-- Restless Void Handaxe
					i(213066),	-- Rosy Floral Edge
					i(213069),	-- Rosy Floral Stalk
					i(213072),	-- Ruby Floral Staff
					i(190891),	-- Shabby Battleaxe
					i(190903),	-- Soulburner Warscythe
					i(190902),	-- Will of the Titanforged
					i(190889),	-- Woodsman's Hatchet
				}),
			})),
		}),
		filter(MOUNTS, {
			mount(369480),	-- Cerulean Marsh Hopper (MOUNT!)
			i(137615),	-- Molten Flarecore (MOUNT!)
		}),
	})),
});
