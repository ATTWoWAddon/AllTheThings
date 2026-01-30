-------------------------------------
--     T R A D I N G   P O S T     --
-------------------------------------
FILLED_TRAVELERS_LOG = createHeader({
	readable = "Filled Travelers Log",
	icon = 4696085,
	text = {
		en = "Filled Travelers Log",
		-- TODO: de = "",
		es = "Llenar el registro del viajero",
		mx = "Llenar el registro del viajero",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Заполненный Журнал Путешественника",
		cn = "旅行者日志进度",
		tw = "完成旅行者日誌",
	},
	description = {
		en = "This reward is given for filling the Travel Points Progress Bar during the month.",
		-- TODO: de = "",
		-- TODO: es = "",
		-- TODO: mx = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Эта награда выдаётся за заполнение прогресса Очков путешествия в течение месяца.",
		cn = "此奖励在当月填满旅行点进度条后获得。",
		-- TODO: tw = "",
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
				traderstender(600, i(193429)),	-- Time-Lost Salamanther (PET!)
			}),
			filter(MOUNTS, {
				traderstender(800, i(190767)),	-- Armored Golden Pterrordax (MOUNT!)
				traderstender(800, i(211074)),	-- Copper Resonating Crystal (MOUNT!)
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
				traderstender(850, iensemble(211122)),	-- Ensemble: Wastewander Tracker's Kit
				traderstender(150, i(208147)),	-- Yellow Tweed Cap
				traderstender(100, i(210857)),	-- Trader's Carrot Sarong
				traderstender(200, i(210866)),	-- Blademaster's Suntouched Stones
				traderstender(450, i(211064)),	-- Dwarven Crown Splitter
				traderstender(100, i(211066)),	-- Gossamer Desert Gown
				traderstender(50, i(211068)),	-- Sepia Treads of the Kalu'ak
				traderstender(500, i(211072)),	-- Time Marshal's Carbine
				traderstender(400, i(211098)),	-- Copper Scarab Bulwark
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
				traderstender(300, i(212376)),	-- Lovely Gothic Longbow
				traderstender(300, i(212375)),	-- Lovely Rosy Longbow
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
				traderstender(250, i(190080)),	-- Catastrophe's Edge
				traderstender(100, i(212544)),	-- Classic Aquatic Tabard
				traderstender(50, i(190890)),	-- Chipped Warblade
				traderstender(200, i(212530)),	-- Corroded Augari Defender
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
		n(MAY, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_10_2_7 } }, {	-- 10.2.7.54904
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
				traderstender(200, i(213393)),	-- Guise of the Golden Masquerade
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
				traderstender(60, i(221810)),	-- Churning Sands Gloves
				traderstender(60, i(221809)),	-- Churning Sands Treads
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
					-- ["cost"] = {{"c", TRADERS_TENDER, 100}},
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
		n(AUGUST, bubbleDownSelf({ ["timeline"] = { "added 11.1.7.61967", "removed 11.2.0.62876" } }, {
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
		n(SEPTEMBER, bubbleDownSelf({ ["timeline"] = { "added 11.2.0.62876", "removed 11.2.0.63305" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(247792),	-- High Shaman's Aerie Gryphon (MOUNT!)
			}),
			filter(MOUNTS, {
				traderstender(650, i(247793)),	-- Cinder-Plumed Highland Gryphon (MOUNT!)
				traderstender(600, i(226041)),	-- Keg Leg's Radiant Crocolisk (MOUNT!)
				traderstender(325, i(247795)),	-- Ornery Breezestrider (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(330, i(226104)),	-- Claudius (PET!)
			}),
			filter(COSMETIC, {
				traderstender(20, i(233183)),	-- Banded Aquatic War Slippers
				traderstender(20, i(233166)),	-- Banded Aquatic War Wraps
				traderstender(230, i(246781)),	-- Bronzebeard's Ancient Crusher
				traderstender(210, i(245952)),	-- Bronzebeard's Ceremonial Gavel
				traderstender(80, i(245956)),	-- Bronzebeard's Crystal Ward
				traderstender(150, i(246798)),	-- Bronzebeard's Mighty Crossbow
				traderstender(200, i(245948)),	-- Bronzebeard's Portable Forge
				traderstender(100, iensemble(242485)),	-- Ensemble: Aquatic Sweatsuit\
				traderstender(575, iensemble(248299)),	-- Ensemble: Bronzebeard's Ceremonial Collection
				traderstender(750, iensemble(226017)),	-- Ensemble: Plunderlord's Radiant Finery
				traderstender(100, iensemble(230181)),	-- Ensemble: Prowler's Aquatic Headgear
				traderstender(375, iensemble(242346)),	-- Ensemble: Rainy Day Attire
				traderstender(575, iensemble(248309)),	-- Ensemble: The Speaker's Ceremonial Collection
				traderstender(300, i(209053)),	-- Green Brewfest Bulwark
				traderstender(40, i(233110)),	-- Long Aquatic War Skirt
				traderstender(50, i(233149)),	-- Long Aquatic War Skirt and Leg Wraps
				traderstender(40, i(233093)),	-- Short Aquatic War Skirt
				traderstender(50, i(233132)),	-- Short Aquatic War Skirt and Leg Wraps
				traderstender(230, i(246782)),	-- The Speaker's Ancient Crusher
				traderstender(210, i(245953)),	-- The Speaker's Ceremonial Mallet
				traderstender(80, i(245957)),	-- The Speaker's Crystal Ward
				traderstender(150, i(246799)),	-- The Speaker's Mighty Crossbow
				traderstender(200, i(245949)),	-- The Speaker's Portable Forge
				traderstender(200, i(211258)),	-- Wildhammer Scouts Headgear
			}),
		})),
		n(OCTOBER, bubbleDownSelf({ ["timeline"] = { "added 11.2.0.63305", "removed 11.2.5.64154" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(246921),	-- Legion Forged Elekk (MOUNT!)
			}),
			filter(MOUNTS, {
				traderstender(750, i(226506)),	-- Hand of Reshkigaal (MOUNT!)
				traderstender(750, i(247723)),	-- The Headless Horseman's Hallowed Charger (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(250, i(246337)),	-- Rustyroot Fel Snooter (PET!)
				traderstender(200, i(205148)),	-- Soot-Stained Shalewing (PET!)
			}),
			filter(TOYS, {
				traderstender(200, i(212525)),	-- Delicate Ebony Parasol (TOY!)
			}),
			filter(COSMETIC, {
				traderstender(20, i(233178)),	-- Banded Faded War Slippers
				traderstender(20, i(233161)),	-- Banded Faded War Wraps
				traderstender(100, iensemble(242467)),	-- Ensemble: Faded Sweatsuit
				traderstender(575, iensemble(246965)),	-- Ensemble: Felreaver's Azure Attire
				traderstender(375, iensemble(242345)),	-- Ensemble: Girded Mist Attire
				traderstender(800, iensemble(226429)),	-- Ensemble: Ragged Harvest Golem
				traderstender(600, iensemble(247991)),	-- Ensemble: The Horseman's Ghostly Collection
				traderstender(125, i(246992)),	-- Infernal's Profane Staff
				traderstender(100, i(246999)),	-- Infernal's Profane Touched
				traderstender(40, i(233105)),	-- Long Faded War Skirt
				traderstender(50, i(233144)),	-- Long Faded War Skirt and Leg Wraps
				traderstender(100, i(246788)),	-- Netherstorm Felblade
				traderstender(100, i(246792)),	-- Netherstorm Feldirk
				traderstender(230, i(247708)),	-- The Horseman's Hallowed Blade
				traderstender(100, i(247717)),	-- The Horseman's Hallowed Bulwark
				traderstender(260, i(247712)),	-- The Horseman's Hallowed Great Blade
				traderstender(40, i(233088)),	-- Short Faded War Skirt
				traderstender(50, i(233127)),	-- Short Faded War Skirt and Leg Wraps
				traderstender(50, i(235028)),	-- Vigilante's Faded Mask
			}),
		})),
		n(NOVEMBER, bubbleDownSelf({ ["timeline"] = { "added 11.2.5.64154", "removed 11.2.5.64502" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(250929),	-- Prized Turkey (MOUNT!)
			}),
			filter(MOUNTS, {
				traderstender(500, i(250926)),	-- Highlands Gobbler (MOUNT!)
			}),
			filter(COSMETIC, {
				traderstender(20, i(233179)),	-- Banded Carrot War Slippers
				traderstender(20, i(233162)),	-- Banded Carrot War Wraps
				traderstender(115, i(248837)),	-- Big Gold Fork
				traderstender(115, i(249720)),	-- Big Gold Spoon
				traderstender(95, i(251854)),	-- Bunch of Green Chiles
				traderstender(95, i(251656)),	-- Bunch of Orange Carrots
				traderstender(50, i(252745)),	-- Carrot Winter Toque
				traderstender(70, i(248721)),	-- Chef's Apron
				traderstender(60, i(250086)),	-- Copper Pot Lid
				traderstender(60, i(248731)),	-- Copper Pot of Stew
				traderstender(100, i(241644)),	-- Corrupted Runelord's Band
				traderstender(90, i(241645)),	-- Corrupted Silkweave Doublet
				traderstender(95, i(249716)),	-- Cutlery Fanatic Backpack
				traderstender(60, i(250778)),	-- Cutlery Fanatic Shield
				traderstender(150, i(241646)),	-- Deathwhisperer's Robe
				traderstender(115, i(241647)),	-- Dreadleather Vestments
				traderstender(95, i(251800)),	-- Ears of Yellow Corn--
				traderstender(100, iensemble(242469)),	-- Ensemble: Carrot Sweatsuit
				traderstender(850, iensemble(213158)),	-- Ensemble: Dark Ranger General's Kit
				traderstender(850, iensemble(217038)),	-- Ensemble: Gladiator's Battered Armor
				traderstender(440, iensemble(249939)),	-- Ensemble: Villager's Country Attire
				traderstender(440, iensemble(250904)),	-- Ensemble: Villager's Country Collection
				traderstender(375, iensemble(242347)),	-- Ensemble: Waterproof Attire
				traderstender(40, i(251996)),	-- Gold-Plated Sabatons
				traderstender(40, i(233106)),	-- Long Carrot War Skirt
				traderstender(50, i(233145)),	-- Long Carrot War Skirt and Leg Wraps
				traderstender(60, i(251869)),	-- Offhand Bunch of Green Chiles
				traderstender(60, i(251663)),	-- Offhand Bunch of Orange Carrots
				traderstender(60, i(251804)),	-- Offhand Ears of Yellow Corn
				traderstender(115, i(248740)),	-- Pristine Great Steak Knife
				traderstender(95, i(250290)),	-- Ready-Warm Portable Bakery
				traderstender(40, i(233089)),	-- Short Carrot War Skirt
				traderstender(50, i(233128)),	-- Short Carrot War Skirt and Leg Wraps
				traderstender(95, i(248726)),	-- Smoked Rib Rack
				traderstender(95, i(248926)),	-- Stale Thirteen Grain Loaf
				traderstender(95, i(251671)),	-- Wearable Copper Pot Lid
			}),
		})),
		n(DECEMBER, bubbleDownSelf({ ["timeline"] = { "added 11.2.5.64502", "removed 11.2.7.64978" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(211085),	-- Jeweled Sapphire Scarab (MOUNT!)
			}),
			filter(MOUNTS, {
				traderstender(500, i(248994)),	-- Kalu'ak Crest-Horn (MOUNT!)
				traderstender(750, i(212228)),	-- Reins of the Soaring Sky Fox (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(250, i(252200)),	-- Bundled-Up Bob (PET!)
			}),
			filter(COSMETIC, {
				traderstender(300, i(230853)),	-- Aegis of Yuletide
				traderstender(50, i(252711)),	-- Azure Winter Toque
				traderstender(600, i(210843)),	-- Candied Blade
				traderstender(400, i(229961)),	-- Candied Knife
				traderstender(450, i(229960)),	-- Cheerbringer XL
				traderstender(100, iensemble(242456)),	-- Ensemble: Azure Sweatsuit
				traderstender(750, iensemble(212221)),	-- Ensemble: Sky Witch's Attire
				traderstender(375, iensemble(242344)),	-- Ensemble: Squall Braced Attire
				traderstender(100, iensemble(230174)),	-- Ensemble: Prowler's Icy Headgear
				traderstender(600, iensemble(249736)),	-- Ensemble: The Noble's Winter Collection
				traderstender(200, i(251964)),	-- Frost Marshal's Carbine
				traderstender(170, i(229720)),	-- Frostwolf Earmuffs
				traderstender(100, i(251989)),	-- Frostwolf Hunting Quiver
				traderstender(170, i(248733)),	-- Frozen Dirk of the Ice Queen
				traderstender(260, i(248827)),	-- Frozen Great Axe of the Frostwolf
				traderstender(170, i(248812)),	-- Frozen Wand of the Ice Queen
				traderstender(175, i(248912)),	-- Frozen Warglaives of the North
				traderstender(450, i(229963)),	-- Great Candied Blade
				traderstender(75, i(251966)),	-- Libram of Azure Light
				traderstender(170, i(229714)),	-- Lion's Crest Earmuffs
				traderstender(300, i(229817)),	-- Lovely Airy Longbow
				traderstender(75, i(230043)),	-- Prowler's Icy Shoulder Cape
				traderstender(100, i(251972)),	-- Sapphire Scarab Bulwark
				traderstender(250, i(229815)),	-- Sky Witch's Airy Stave
				traderstender(200, i(229816)),	-- Sky Witch's Airy Wand
				traderstender(75, i(251971)),	-- Tome of Cerulean Ciphers
				traderstender(40, i(251995)),	-- Trapper's Blue Slippers
				traderstender(400, i(229962)),	-- Tree Topper
			}),
		})),
	}),
	n(YEAR2026, {
		n(JANUARY, bubbleDownSelf({ ["timeline"] = { "added 11.2.7.64978", "removed 12.0.1.99999" } }, {	-- TODO: Timeline out correctly
			n(FILLED_TRAVELERS_LOG, {
				iensemble(258266),	-- Ensemble: Vengeful Regalia of the Crusader
			}),
			filter(MOUNTS, {
				traderstender(750, i(212631)),	-- Reins of the Brilliant Sunburst Peafowl (MOUNT!)
				traderstender(500, i(260409)),	-- Savage Crimson Battle Turtle (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(300, i(233361)),	-- Wind-Up Wuffi (PET!)
			}),
			filter(COSMETIC, {
				traderstender(90, i(260422)),	-- Axe of the Crimson Crescent
				traderstender(40, i(260418)),	-- Basic Crimson Sabatons
				traderstender(150, i(256725)),	-- Crest of Unending Woe
				traderstender(50, i(252748)),	-- Crimson Winter Toque
				traderstender(200, i(253046)),	-- Crusader's Ruby Blade
				traderstender(230, i(253050)),	-- Crusader's Ruby Greatblade
				traderstender(230, i(253277)),	-- Crusader's Ruby Greatmace
				traderstender(200, i(253280)),	-- Crusader's Ruby Mace
				traderstender(100, iensemble(242478)),	-- Ensemble: Crimson Sweatsuit
				traderstender(650, iensemble(233328)),	-- Ensemble: Golden Clockwork Attire
				traderstender(100, iensemble(257979)),	-- Ensemble: Sorcerer's Brick Garb
				traderstender(440, iensemble(249946)),	-- Ensemble: Villager's City Attire
				traderstender(440, iensemble(250911)),	-- Ensemble: Villager's City Collection
				traderstender(260, i(233277)),	-- Golden Clockwork Defender
				traderstender(300, i(233257)),	-- Golden Clockwork Doomfist
				traderstender(325, i(233249)),	-- Golden Clockwork Power Hammer
				traderstender(150, i(260411)),	-- Iron Chainkini
				traderstender(300, i(233270)),	-- Long-Range Golden Clockstopper
				traderstender(100, i(251517)),	-- Shield of Unending Woe
				traderstender(300, i(233273)),	-- Steam-Powered Golden Cloak
				traderstender(100, i(260934)),	-- Thalassian Archer's Quiver
				traderstender(80, i(260394)),	-- Thalassian Recruit's Bow
			}),
		})),
		n(FEBRUARY, bubbleDownSelf({ ["timeline"] = { "added 11.2.7.64978", "removed 12.0.1.99999" } }, {	-- TODO: Timeline in/out correctly
			n(FILLED_TRAVELERS_LOG, {
				i(233237),	-- Lively Pack of Lunar Explosives
			}),
			filter(MOUNTS, {
				traderstender(600, i(260580)),	-- Cloudborn Razorwing (MOUNT!)
				traderstender(600, i(233023)),	-- Silvermoon Sweeper (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				traderstender(350, i(234397)),	-- Fullbelly Rollingpaw (PET!)
			}),
			filter(COSMETIC, {
				traderstender(170, i(257712)),	-- Anubisath's Golden Blade
				traderstender(200, i(257427)),	-- Anubisath's Golden Greatblade
				traderstender(20, i(233180)),	-- Banded Rosy War Slippers
				traderstender(20, i(233163)),	-- Banded Rosy War Wraps
				traderstender(100, i(260933)),	-- Basic Pink Quiver
				traderstender(160, i(262371)),	-- Bronze Magister's Courtstaff
				traderstender(300, i(233232)),	-- Crimson Lunar Firewhacker
				traderstender(250, i(233218)),	-- Crimson Lunar Lantern
				traderstender(250, i(233236)),	-- Crimson Pack of Lunar Explosives
				traderstender(600, iensemble(234057)),	-- Ensemble: Ornate Crimson Lunar Festival Attire
				traderstender(100, iensemble(230177)),	-- Ensemble: Prowler's Rosy Headgear
				traderstender(100, iensemble(242471)),	-- Ensemble: Rosy Sweatsuit
				traderstender(100, iensemble(257997)),	-- Ensemble: Sorcerer's Rosy Garb
				traderstender(660, iensemble(258793)),	-- Ensemble: South Guard's Golden Raiment
				traderstender(300, i(233223)),	-- Jade Lunar Blade
				traderstender(300, i(233228)),	-- Jade Lunar Polearm
				traderstender(40, i(233107)),	-- Long Rosy War Skirt
				traderstender(50, i(233146)),	-- Long Rosy War Skirt and Leg Wraps
				traderstender(130, i(262370)),	-- Longbow of the Shattered Sun
				traderstender(80, i(260392)),	-- Pink Wooden Shortbow
				traderstender(160, i(262372)),	-- Quel'dorei Bladestaff
				traderstender(160, i(262373)),	-- Quel'dorei Poleblade
				traderstender(50, i(252746)),	-- Rosy Winter Toque
				traderstender(40, i(233090)),	-- Short Rosy War Skirt
				traderstender(50, i(233129)),	-- Short Rosy War Skirt and Leg Wraps
				traderstender(130, i(262358)),	-- Sindorei Captain's Mantle
				traderstender(130, i(262369)),	-- Sindorei Handglaive
				traderstender(130, i(262374)),	-- Sunfury Apprentice's Wand
				traderstender(160, i(262377)),	-- Sunfury Battlemage's Stave
				traderstender(80, i(260396)),	-- Tranquillien Archer's Bow
				traderstender(100, i(260935)),	-- Tranquillien Archer's Quiver
				traderstender(50, i(235030)),	-- Vigilante's Rosy Mask
			}),
			n(VENDORS, {
				n(234747, {	-- Supplier Felina <Trading Post Outlet Completionist>
					["coord"] = { 48.16, 51.99, DORNOGAL },
					["groups"] = {
						filter(MOUNTS, {
							traderstender(600, i(187674)),	-- Depthstalker (MOUNT!)
							traderstender(600, i(226040)),	-- Plunderlord's Golden Crocolisk (MOUNT!)
						}),
						filter(BATTLE_PETS, {
							traderstender(350, i(210409)),	-- Aura (PET!)
							traderstender(350, i(211432)),	-- Teele (PET!)
							traderstender(350, i(223339)),	-- Trishi (PET!)
						}),
						filter(TOYS, {
							traderstender(350, i(220692)),	-- X-treme Water Blaster Display (TOY!)
						}),
						filter(COSMETIC, {
							traderstender(850, iensemble(229059)),	-- Arsenal: Crests of the Kingdom
							traderstender(750, iensemble(212220)),	-- Ensemble: Love Witch's Attire
							traderstender(850, iensemble(223486)),	-- Ensemble: Purple Snugglefin Murloc Romper
							traderstender(100, i(211002)),	-- Golden Mobile Timepiece
							traderstender(225, i(223409)),	-- The Coward's Violet Target
							traderstender(225, i(212613)),	-- Wings of the Amber Monarch
						}),
					},
				}),
				n(234746, {	-- Supplier Mizix <Trading Post Outlet Creatures and Toys>
					["coord"] = { 48.07, 52.16, DORNOGAL },
					["groups"] = {
						filter(MOUNTS, {
							traderstender(500, i(192766)),	-- Amber Skitterfly (MOUNT!)
							traderstender(500, i(190767)),	-- Armored Golden Pterrordax (MOUNT!)
							traderstender(650, i(54069)),	-- Blazing Hippogryph (MOUNT!)
							traderstender(500, i(211074)),	-- Copper Resonating Crystal (MOUNT!)
							traderstender(750, i(226506)),	-- Hand of Reshkigaal (MOUNT!)
							traderstender(600, i(226041)),	-- Keg Leg's Radiant Crocolisk (MOUNT!)
							traderstender(300, i(223449)),	-- Kor'kron Warsaber (MOUNT!)
							traderstender(500, i(221814)),	-- Pearlescent Goblin Wave Shredder (MOUNT!)
							traderstender(500, i(212227)),	-- Reins of the Fur-endship Fox (MOUNT!)
							traderstender(500, i(212630)),	-- Reins of the Majestic Azure Peafowl (MOUNT!)
							traderstender(500, i(212229)),	-- Reins of the Twilight Sky Prowler (MOUNT!)
							traderstender(600, i(23720)),	-- Riding Turtle (MOUNT!)
							traderstender(300, i(212920)),	-- Savage Blue Battle Turtle (MOUNT!)
							traderstender(300, i(223469)),	-- Sentinel War Wolf (MOUNT!)
							traderstender(500, i(160589)),	-- The Dreadwake (MOUNT!)
							traderstender(500, i(223285)),	-- Underlight Corrupted Behemoth (MOUNT!)
							traderstender(100, i(54860)),	-- X-53 Touring Rocket (MOUNT!)
						}),
						filter(BATTLE_PETS, {
							traderstender(200, i(206174)),	-- Blub (PET!)
							traderstender(200, i(229993)),	-- Bluedoo (PET!)
							traderstender(200, i(212722)),	-- Buggsy (PET!)
							traderstender(330, i(226104)),	-- Claudius (PET!)
							traderstender(200, i(223145)),	-- Marrlok (PET!)
							traderstender(200, i(212700)),	-- Nelle (PET!)
							traderstender(200, i(217043)),	-- Pokee (PET!)
							traderstender(200, i(205148)),	-- Soot-Stained Shalewing (PET!)
							traderstender(200, i(193429)),	-- Time-Lost Salamanther
							traderstender(200, i(223474)),	-- Worgli the Apprehensive (PET!)
						}),
						filter(TOYS, {
							traderstender(200, i(218112)),	-- Colorful Beach Chair (TOY!)
							traderstender(200, i(212524)),	-- Delicate Crimson Parasol (TOY!)
							traderstender(200, i(212525)),	-- Delicate Ebony Parasol (TOY!)
							traderstender(200, i(212523)),	-- Delicate Jade Parasol (TOY!)
							traderstender(200, i(212500)),	-- Delicate Silk Parasol (TOY!)
							traderstender(10, i(206347)),	-- Mannequin Charm (TOY!)
						}),
					},
				}),
				n(234744, {	-- Supplier Offa <Trading Post Outlet Wearables>
					["coord"] = { 47.57, 52.76, DORNOGAL },
					["groups"] = {
						filter(COSMETIC, {
							traderstender(200, i(225975)),	-- Alchemist's Bandolier
							traderstender(30, i(226106)),	-- Amber Scale Treads
							traderstender(200, i(213078)),	-- Assassin's Bandolier
							traderstender(40, i(211069)),	-- Azure Treads of the Kalu'ak
							traderstender(175, i(212369)),	-- Battlefield Lover's Bow
							traderstender(30, i(221810)),	-- Churning Sands Gloves
							traderstender(30, i(221809)),	-- Churning Sands Treads
							traderstender(30, i(223233)),	-- Copper Divers Belt
							traderstender(100, i(223230)),	-- Copper Divers Bonnet
							traderstender(30, i(223235)),	-- Copper Divers Boots
							traderstender(40, i(223232)),	-- Copper Divers Corselet
							traderstender(30, i(223236)),	-- Copper Divers Gloves
							traderstender(40, i(223234)),	-- Copper Divers Greaves
							traderstender(60, i(223231)),	-- Copper Divers Pauldrons
							traderstender(100, i(223252)),	-- Copper Divers Tank
							traderstender(10, i(223257)),	-- Copper Divers Wrist Seal
							traderstender(175, i(229807)),	-- Crown of the Icy Blue Rose
							traderstender(175, i(212545)),	-- Crown of the White Rose
							traderstender(300, i(223166)),	-- Deepsea Treasure Pack
							traderstender(150, i(213394)),	-- Ebony Crown of the Red Rose
							traderstender(40, i(190068)),	-- Emerald Drape
							traderstender(30, i(226105)),	-- Emerald Scale Treads
							traderstender(350, iensemble(190725)),	-- Ensemble: Battlewraps of the Honored Valarjar
							traderstender(850, iensemble(213158)),	-- Ensemble: Dark Ranger General's Kit
							traderstender(800, iensemble(223244)),	-- Ensemble: Deepest Depths Diver Suit
							traderstender(300, iensemble(217381)),	-- Ensemble: Fearless Buccaneer's Slops
							traderstender(850, iensemble(217038)),	-- Ensemble: Gladiator's Battered Armor
							traderstender(750, iensemble(226017)),	-- Ensemble: Plunderlord's Radiant Finery
							traderstender(800, iensemble(226429)),	-- Ensemble: Ragged Harvest Golem
							traderstender(350, iensemble(200925)),	-- Ensemble: Solemn Watchman's Garb
							traderstender(200, iensemble(213084)),	-- Ensemble: Spring Reveler's Lavender Apparel
							traderstender(300, iensemble(212940)),	-- Ensemble: Spring Reveler's Lavender Collection
							traderstender(325, iensemble(221542)),	-- Ensemble: Sunny Tropical Beachwear
							traderstender(325, iensemble(222961)),	-- Ensemble: Sunny Tropical Swimwear
							traderstender(750, iensemble(212222)),	-- Ensemble: Twilight Witch's Attire
							traderstender(400, iensemble(211122)),	-- Ensemble: Wastewander Tracker's Kit
							traderstender(100, i(217372)),	-- Frenzied Hat of the Deep Blue
							traderstender(100, i(217376)),	-- Frenzied Hat of the Murky Waters
							traderstender(175, i(229720)),	-- Frostwolf Earmuffs
							traderstender(100, i(212785)),	-- Helm of the Stout
							traderstender(40, i(190857)),	-- Gilded Emerald Longcloak
							traderstender(150, i(213393)),	-- Guise of the Golden Masquerade
							traderstender(150, i(212555)),	-- Guise of the Royal Masquerade
							traderstender(150, i(212556)),	-- Guise of the Shining Masquerade
							traderstender(400, iensemble(208412)),	-- High Scholar's Arcana
							traderstender(30, i(190070)),	-- Highborne Scholar's Gloves
							traderstender(35, i(190887)),	-- Highlord's Ceremonial Drape
							traderstender(175, i(229714)),	-- Lion's Crest Earmuffs
							traderstender(40, i(211071)),	-- Lively Treads of the Kalu'ak
							traderstender(100, i(190075)),	-- Mantle of the Scholarly Raven
							traderstender(50, i(190892)),	-- Orange-Sleeved Shirt
							traderstender(40, i(190428)),	-- Regal Warcloak
							traderstender(60, i(210999)),	-- Ruby-Faced Mobile Timepiece
							traderstender(60, i(211001)),	-- Sapphire-Faced Mobile Timepiece
							traderstender(40, i(211068)),	-- Sepia Treads of the Kalu'ak
							traderstender(40, i(190201)),	-- Sin'dorei Assassin's Shroud
							traderstender(400, iensemble(210078)),	-- Sky-Captain's Formal Attire
							traderstender(100, i(212708)),	-- Spring Reveler's Dandelion Attire
							traderstender(35, i(212709)),	-- Spring Reveler's Dandelion Belt
							traderstender(35, i(212710)),	-- Spring Reveler's Dandelion Boots
							traderstender(100, i(212714)),	-- Spring Reveler's Dandelion Dress
							traderstender(35, i(212988)),	-- Spring Reveler's Dandelion Pants
							traderstender(200, i(212718)),	-- Spring Reveler's Dandelion Sun Hat
							traderstender(60, i(225974)),	-- Swabbie's Cap
							traderstender(70, i(190671)),	-- Tabard of Wild Might
							traderstender(20, i(221832)),	-- Tropical Sunrise Airy Sandals
							traderstender(20, i(221831)),	-- Tropical Sunrise Beads
							traderstender(100, i(221829)),	-- Tropical Sunrise Halter Top
							traderstender(110, i(221529)),	-- Tropical Sunrise Mrgl Floater
							traderstender(20, i(221528)),	-- Tropical Sunrise Sandals
							traderstender(30, i(221833)),	-- Tropical Sunrise Sash
							traderstender(100, i(221525)),	-- Tropical Sunrise Shirt
							traderstender(75, i(221830)),	-- Tropical Sunrise Skirt
							traderstender(110, i(221834)),	-- Tropical Sunrise Sunshade
							traderstender(75, i(221526)),	-- Tropical Sunrise Trunks
							traderstender(20, i(221527)),	-- Tropical Sunrise Wristwraps
							traderstender(30, i(226367)),	-- Ugly Black Boots
							traderstender(30, i(226368)),	-- Ugly White Boots
							traderstender(100, i(223165)),	-- Vengeful Crusaders Helm
							traderstender(225, i(212612)),	-- Wings of the Amethyst Monarch
							traderstender(225, i(231017)),	-- Wings of the Onyx Monarch
							traderstender(225, i(230940)),	-- Wings of the Sapphire Monarch
							traderstender(225, i(212611)),	-- Wings of the Tourmaline Monarch
							traderstender(175, i(211137)),	-- Witch Doctor's Fetish Frame
						}),
					},
				}),
				n(234742, {	-- Supplier Toffa <Trading Post Outlet Weapons>
					["coord"] = { 47.79, 52.55, DORNOGAL },
					["groups"] = {
						filter(COSMETIC, {
							traderstender(60, i(226390)),	-- Aerie Battle Mace
							traderstender(60, i(229426)),	-- Ancient Amani Longbow
							traderstender(50, i(190859)),	-- Apprentice's Twisted Crook
							traderstender(300, iensemble(223004)),	-- Arsenal: Blazing Felfire Armaments
							traderstender(300, iensemble(223421)),	-- Arsenal: Fireborn Blades
							traderstender(300, iensemble(223418)),	-- Arsenal: Seaborn Blades
							traderstender(300, iensemble(212577)),	-- Arsenal: Skyborn Blades
							traderstender(200, iensemble(220759)),	-- Arsenal: Stormrider's Bronze Stormhammers
							traderstender(200, iensemble(220755)),	-- Arsenal: Stormrider's Dark Stormhammers
							traderstender(200, iensemble(220762)),	-- Arsenal: Stormrider's Silver Stormhammers
							traderstender(100, i(226370)),	-- Ashen Executioner
							traderstender(60, i(226388)),	-- Battle-Tested Obsidian Warhammer
							traderstender(60, i(226387)),	-- Battle-Tested Warhammer
							traderstender(100, i(212576)),	-- Blackrock Executioner
							traderstender(60, i(223185)),	-- Blade Of The Riptide
							traderstender(60, i(229425)),	-- Bronzebeard Battle Mace
							traderstender(175, i(190080)),	-- Catastrophe's Edge
							traderstender(100, i(212789)),	-- Champion's Jade Cleaver
							traderstender(100, i(229812)),	-- Chilled Axe
							traderstender(40, i(190890)),	-- Chipped Warblade
							traderstender(60, i(212790)),	-- Codex of Classic Conjurations
							traderstender(40, i(223429)),	-- Conjurer's Scarlet Staff
							traderstender(150, i(211098)),	-- Copper Scarab Bulwark
							traderstender(150, i(212530)),	-- Corroded Augari Defender
							traderstender(100, i(229813)),	-- Crystalline Longbow of the Heavens
							traderstender(100, i(225993)),	-- Cursed Copper Crossbow
							traderstender(60, i(226389)),	-- Dark Iron Battle Mace
							traderstender(50, i(190805)),	-- Deforester's Hatchet
							traderstender(150, i(211064)),	-- Dwarven Crown Splitter
							traderstender(125, i(190819)),	-- Emerald Guardian's Longbow
							traderstender(150, i(190445)),	-- Envenomed Gutripper
							traderstender(60, i(229814)),	-- Fan of Cooling
							traderstender(60, i(226382)),	-- Feathered Bow of the Fallen
							traderstender(60, i(226381)),	-- Feathered Bow of the Night
							traderstender(100, i(225978)),	-- Fel-Glade Warglaive
							traderstender(175, i(212382)),	-- Fluorescent Splitblade
							traderstender(50, i(190849)),	-- Forgemaster's Gavel
							traderstender(60, i(229811)),	-- Frost Etched Dagger
							traderstender(60, i(226386)),	-- Gentle Glow of the Naaru
							traderstender(275, i(213106)),	-- Gladiator's Battered Greatsword
							traderstender(275, i(213107, {	-- Gladiator's Ragged Greatsword // Previously NYI
								-- #if BEFORE 12.0.1
								["description"] = "This item is not a returning item, it has never actually been available before.",
								-- #endif
							})),
							traderstender(250, i(226428)),	-- Harvester's Claw
							traderstender(150, i(190854)),	-- Heavily Stitched Wallet
							traderstender(60, i(225980)),	-- High-Grade Blade of the Forbade
							traderstender(50, i(190860)),	-- Initiate's Bo
							traderstender(60, i(225979)),	-- Jade Blade of the Forbade
							traderstender(150, i(190218)),	-- Jeweled Ripper
							traderstender(60, i(190132)),	-- Krokul Battlescythe
							traderstender(150, i(213065)),	-- Lavish Floral Edge
							traderstender(150, i(213068)),	-- Lavish Floral Stalk
							traderstender(50, i(190674)),	-- Leaky Bucket
							traderstender(150, i(190895)),	-- Lost Crusader's Amethyst Battleaxe
							traderstender(150, i(212381)),	-- Love's Bulwark
							traderstender(250, i(212379)),	-- Love Witch's Rosy Stave
							traderstender(200, i(212377)),	-- Love Witch's Rosy Wand
							traderstender(300, i(229817)),	-- Lovely Airy Longbow
							traderstender(300, i(212376)),	-- Lovely Gothic Longbow
							traderstender(300, i(212375)),	-- Lovely Rosy Longbow
							traderstender(150, i(213062)),	-- Paradise's Golden Axe
							traderstender(100, i(225990)),	-- Plunderlord's Radiant Cutlass
							traderstender(100, i(225983)),	-- Plunderlord's Radiant Hand Cannon
							traderstender(100, i(225992)),	-- Plunderlord's Radiant Neck-Severer
							traderstender(100, i(225991)),	-- Plunderlord's Radiant Rapier
							traderstender(100, i(225982)),	-- Plunderlord's Radiant Sigil
							traderstender(50, i(190066)),	-- Primeval Maul
							traderstender(60, i(223188)),	-- Riptide Basher
							traderstender(75, i(223179)),	-- Riptide Dagger
							traderstender(75, i(223176)),	-- Riptide Gut Puncher
							traderstender(75, i(223189)),	-- Riptide Slicer
							traderstender(100, i(223184)),	-- Riptide Staff
							traderstender(60, i(223187)),	-- Riptide Bulwark
							traderstender(60, i(190670)),	-- Sanguine Bouquet
							traderstender(100, i(223415)),	-- Sapphire Axe of Asymmetry
							traderstender(100, i(223423)),	-- Sapphire Bladed Blunderbuss
							traderstender(100, i(223411)),	-- Sapphire Shanker
							traderstender(100, i(223413)),	-- Sapphire Warglaive
							traderstender(100, i(223414)),	-- Scarlet Axe of Asymmetry
							traderstender(100, i(223422)),	-- Scarlet Bladed Blunderbuss
							traderstender(100, i(223410)),	-- Scarlet Shanker
							traderstender(100, i(223412)),	-- Scarlet Warglaive
							traderstender(30, i(225994)),	-- Simple Copper Staff
							traderstender(40, i(226383)),	-- Simple Ebony Wand
							traderstender(40, i(223426)),	-- Simple Sapphire Wand
							traderstender(40, i(223425)),	-- Simple Scarlet Wand
							traderstender(250, i(229815)),	-- Sky Witch's Airy Stave
							traderstender(200, i(229816)),	-- Sky Witch's Airy Wand
							traderstender(150, i(213071)),	-- Sunny Floral Staff
							traderstender(150, i(213075)),	-- Sunny Bow-quet
							traderstender(60, i(223434)),	-- The Sapphire Thalassian Tome
							traderstender(150, i(211072)),	-- Time Marshal's Carbine
							traderstender(100, i(213161)),	-- Titan Thunderbow
							traderstender(75, i(223191)),	-- Trident Of The Riptide
							traderstender(200, i(212378)),	-- Twilight Witch's Gothic Scepter
							traderstender(250, i(212380)),	-- Twilight Witch's Gothic Stave
							traderstender(60, i(223433)),	-- Sunreaver's Scarlet Tome
							traderstender(150, i(190219)),	-- Virulent Gavel
							traderstender(40, i(226384)),	-- Wand of the Bright Shadow
							traderstender(75, i(223190)),	-- Wand Of The Riptide
							traderstender(150, i(190873)),	-- Warhammer of Hubris
							traderstender(150, i(220357)),	-- Water Blaster B.L.
							traderstender(150, i(211158)),	-- Witch Doctor's Fetish Guard
						}),
					},
				}),
			}),
		})),
	}),
}));
