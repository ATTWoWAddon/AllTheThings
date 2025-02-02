-------------------------------------
--     T R A D I N G   P O S T     --
-------------------------------------
local TRADERS_TENDER = 2032;
FILLED_TRAVELERS_LOG = createHeader({
	readable = "Filled Travelers Log",
	icon = 4696085,
	text = {
		en = "Filled Travelers Log",
		cn = "旅行者日志进度",
	},
	description = {
		en = "This reward is given for filling the Travel Points Progress Bar during the month.",
	},
});

root(ROOTS.TradingPost, bubbleDown({ ["timeline"] = { ADDED_10_0_5 } }, {
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
			["isYearly"] = true,
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
		}),
		q(75833, {	-- Report to the Trading Post -- April 2023
			["timeline"] = { ADDED_10_0_7 },
			["isYearly"] = true,
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
		}),
		q(76159, {	-- Report to the Trading Post -- May 2023
			["timeline"] = { ADDED_10_0_7 },
			["isYearly"] = true,
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
		}),
		q(76103, {	-- Report to the Trading Post -- June 2023
			["timeline"] = { ADDED_10_1_0 },
			["isYearly"] = true,
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
		}),
		q(76104, {	-- Report to the Trading Post -- July 2023
			["timeline"] = { ADDED_10_1_0 },
			["isYearly"] = true,
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
		}),
		q(76105, {	-- Report to the Trading Post -- August 2023
			["timeline"] = { ADDED_10_1_5 },
			["isYearly"] = true,
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
		}),
		q(76106, {	-- Report to the Trading Post -- September 2023
			["timeline"] = { ADDED_10_1_5 },
			["isYearly"] = true,
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
		}),
		q(76107, {	-- Report to the Trading Post -- October 2023
			["timeline"] = { ADDED_10_1_7 },
			["isYearly"] = true,
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
		}),
		q(76108, {	-- Report to the Trading Post -- November 2023
			["timeline"] = { ADDED_10_1_7 },
			["isYearly"] = true,
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
		}),
		q(76112, {	-- Report to the Trading Post -- December 2023
			["timeline"] = { ADDED_10_2_0 },
			["isYearly"] = true,
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
		}),
		q(76113, {	-- Report to the Trading Post -- January 2024
			["timeline"] = { ADDED_10_2_0 },
			["isYearly"] = true,
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
		}),
		q(76114, {	-- Report to the Trading Post -- February 2024
			["timeline"] = { ADDED_10_2_5 },
			["isYearly"] = true,
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
		}),
		q(81722, {	-- Report to the Trading Post -- August 2024
			["timeline"] = { ADDED_11_0_2 },
			["isYearly"] = true,
			["maps"] = { DORNOGAL },
		}),
		q(81723, {	-- Report to the Trading Post -- September 2024
			["timeline"] = { ADDED_11_0_2 },
			["isYearly"] = true,
			["maps"] = { DORNOGAL },
		}),
		q(81724, {	-- Report to the Trading Post -- October 2024
			["timeline"] = { ADDED_11_0_2 },
			["isYearly"] = true,
			["maps"] = { DORNOGAL },
		}),
		q(81725, {	-- Report to the Trading Post -- November 2024
			["timeline"] = { ADDED_11_0_5 },
			["isYearly"] = true,
			["maps"] = { DORNOGAL },
		}),
		q(81726, {	-- Report to the Trading Post -- December 2024
			["timeline"] = { ADDED_11_0_5 },
			["isYearly"] = true,
			["maps"] = { DORNOGAL },
		}),
		q(81715, {	-- Report to the Trading Post -- January 2025
			["timeline"] = { ADDED_11_0_7 },
			["isYearly"] = true,
			["maps"] = { DORNOGAL },
		}),
		q(81714, {	-- Report to the Trading Post -- February 2025
			["timeline"] = { ADDED_11_0_7 },
			["isYearly"] = true,
			["maps"] = { DORNOGAL },
		}),
		-- Future trading post quests - unknown timeline
		--[[
		q(81717, {	-- Report to the Trading Post -- March 2025
			["timeline"] = { TODO },
			["isYearly"] = true,
			["maps"] = { DORNOGAL },
		}),
		q(81718, {	-- Report to the Trading Post -- April 2025
			["timeline"] = { TODO },
			["isYearly"] = true,
			["maps"] = { DORNOGAL },
		}),
		q(81719, {	-- Report to the Trading Post -- May 2025
			["timeline"] = { TODO },
			["isYearly"] = true,
			["maps"] = { DORNOGAL },
		}),
		q(81720, {	-- Report to the Trading Post -- June 2025
			["timeline"] = { TODO },
			["isYearly"] = true,
			["maps"] = { DORNOGAL },
		}),
		q(81721, {	-- Report to the Trading Post -- July 2025
			["timeline"] = { TODO },
			["isYearly"] = true,
			["maps"] = { DORNOGAL },
		}),
		]]--
	}),
	n(YEAR2023, {
		n(FEBRUARY, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5, REMOVED_10_0_5 } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(190231),	-- Ash'adar, Harbinger of Dawn (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				i(190607, {	-- Garrlok (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
			}),
			filter(MOUNTS, {
				i(54811, {	-- Celestial Steed (MOUNT!) (FEB 2023)
					["cost"] = {{"c", TRADERS_TENDER, 900}},
				}),
			}),
			filter(COSMETIC, {
				i(190071, {	-- Azure Scalesworn Longbow
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				iensemble(190799, {	-- Ensemble: Swashbuckling Buccaneer's Slops
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
				iensemble(202170, {	-- Ensemble: Vagabond's Rosy Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(202167, {	-- Ensemble: Wanderer's Rosy Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190856, {	-- Fetid Bouquet
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(189898, {	-- Fury of the Firelord
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				i(189897, {	-- Infiltrator's Bandolier
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(190434, {	-- Iridescent Warcloak
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(190599, {	-- Operative's Bandolier
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(190855, {	-- Rosy Corsage
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190143, {	-- Shard of Frozen Secrets
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(190846, {	-- Shattered Voidspire
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(189871, {	-- Squire's Warhammer
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
			}),
		})),
		n(MARCH, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5, REMOVED_10_0_5 } }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(190504),	-- Ensemble: Darkmoon Harlequin's Bells
			}),
			filter(BATTLE_PETS, {
				i(49665, {	-- Pandaren Monk (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
			}),
			filter(COSMETIC, {
				i(189882, {	-- Dread Admiral's Bicorne
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				iensemble(189938, {	-- Ensemble: Fel-Automaton Exoplate
					["cost"] = {{"c", TRADERS_TENDER, 850}},
				}),
				iensemble(200884, {	-- Ensemble: Glorious Dragonrider's Mail
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				iensemble(190166, {	-- Ensemble: Vagabond's Midnight Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190377, {	-- Ensemble: Wanderer's Midnight Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190097, {	-- Fabulously Flashy Finery
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(190876, {	-- Filigreed Lion's Maw
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(202248, {	-- Frozen Shadow
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(190065, {	-- Gnomish Liquid Transfer Apparatus
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(190063, {	-- Greatcloak of the Virtuous Protector
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(190600, {	-- Shadowy Blademaster's Greatsword
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(190092, {	-- Triumphant Blademaster's Greatsword
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(190155, {	-- Trusty Treasure Trove
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
			}),
		})),
		n(APRIL, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5, REMOVED_10_1_0 } }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(190164),	-- Arsenal: Blades of Elune
			}),
			filter(BATTLE_PETS, {
				i(190603, {	-- Egbob (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
			}),
			filter(MOUNTS, {
				i(189978, {	-- Magenta Cloud Serpent (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 900}},
				}),
			}),
			filter(COSMETIC, {
				i(190438, {	-- Crimson Nexus Crescent
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(190130, {	-- Drape of Foreboding Mists
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(200909, {	-- Ensemble: Corrupted Runelord's Regalia
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				iensemble(190540, {	-- Ensemble: Trapper's Munitions
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(190886, {	-- Fine White Evening Gloves
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190842, {	-- Fists of Polar Fury
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				i(189896, {	-- Forsaken Cresset
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190145, {	-- Gilded Drakkonid Morningstar
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(190133, {	-- Honed Bastard Sword
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190153, {	-- Libram of Righteous Light
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(190898, {	-- Red Pith Helmet
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				i(190154, {	-- Tome of Sin'dorei Secrets
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(189895, {	-- Watchman's Flare
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
			}),
		})),
		n(MAY, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_1_0 } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(190613),	-- Savage Green Battle Turtle (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				i(190175, {	-- Pippin (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
			}),
			filter(COSMETIC, {
				i(190441, {	-- Black Iron Blunderbuss
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(190899, {	-- Crimson Bicorne
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				iensemble(201229, {	-- Ensemble: Kvaldir Scout Leathers
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				iensemble(190922, {	-- Ensemble: Vagabond's Snowy Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190095, {	-- Ensemble: Vestment of the Honored Valarjar
					["cost"] = {{"c", TRADERS_TENDER, 900}},
				}),
				iensemble(190921, {	-- Ensemble: Wanderer's Snowy Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190217, {	-- Fang of the Mountain
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(190808, {	-- High Priestess's Ceremonial Drape
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(190204, {	-- Huntsman's Recurve Bow
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(190215, {	-- Lost Crown of the Arcane
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(190439, {	-- Merciless Trapper's Staff
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(190205, {	-- Sharpened Shank
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(202311, {	-- Sunbleached Grimskull Cinch
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190214, {	-- Tiercel's Wing
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(190199, {	-- Well-Worn Grimskull Cinch
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
			}),
		})),
		n(JUNE, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_1_5 } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(190169),	-- Quawks (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				i(190604, {	-- Buzzworth (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
			}),
			filter(MOUNTS, {
				i(118515, {	-- Cindermane Charger (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 900}},
				}),
				i(206976, {	-- Royal Swarmer (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 800}},
				}),
			}),
			filter(COSMETIC, {
				i(190869, {	-- Emberstone Dress
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				iensemble(201230, {	-- Ensemble: Helarjar Berserker Warplate
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				iensemble(202178, {	-- Ensemble: Vagabond's Carrot Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(202179, {	-- Ensemble: Wanderer's Carrot Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190690, {	-- Flame-Forged Fel Fang
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(95474, {	-- Jewel of the Firelord
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(190696, {	-- Magister's Jeweled Drape
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(190443, {	-- Pustulent Demonheart Fetish
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(190817, {	-- Sentinel's Tower Shield
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(190433, {	-- Shifty Merchant's Tunic
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(190447, {	-- Soulburner Bardiche
					["cost"] = {{"c", TRADERS_TENDER, 550}},
				}),
				i(190821, {	-- Sunspire Battle Staff
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(190431, {	-- Veteran Grunt's Chopper
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
			}),
		})),
		n(JULY, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5, REMOVED_10_1_5 } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(206156),	-- Grotto Netherwing Drake (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				i(49343, {	-- Spectral Tiger Cub (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
			}),
			filter(MOUNTS, {
				i(206027, {	-- Felcrystal Scorpion (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
				i(76755, {	-- Tyrael's Charger (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 900}},
				}),
			}),
			filter(COSMETIC, {
				i(190562, {	-- Aldori War Mace
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(190146, {	-- Antoran Felspire
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
				i(190560, {	-- Conquest
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
				iensemble(200915, {	-- Ensemble: Sylvan Stalker’s Leathers
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				iensemble(190528, {	-- Ensemble: Vagabond's Violet Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190529, {	-- Ensemble: Wanderer's Violet Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190097, {	-- Fabulously Flashy Finery
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(190876, {	-- Filigreed Lion's Maw
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(190842, {	-- Fists of Polar Fury
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				i(190558, {	-- Helm of the Fierce
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(190814, {	-- Mephistroth's Razor
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(190546, {	-- Polished Shortsword
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(190545, {	-- Primeval Basher
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(190543, {	-- Silvered Warcloak
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(190557, {	-- Sinister Fel Staff
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
			}),
		})),
		n(AUGUST, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5, REMOVED_10_1_7 } }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(190797),	-- Ensemble: Bones of the Bloodhunter
			}),
			filter(BATTLE_PETS, {
				i(207962, {	-- Spirit of Competition (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
			}),
			filter(MOUNTS, {
				i(207964, {	-- Alabaster Stormtalon (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 650}},
					["races"] = ALLIANCE_ONLY,
				}),
				i(207963, {	-- Alabaster Thunderwing (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 650}},
					["races"] = HORDE_ONLY,
				}),
				i(207821, {	-- Ancestral Clefthoof (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
			}),
			filter(TOYS, {
				i(206268, {	-- Ethereal Transmogrifier (TOY!)
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
			}),
			filter(COSMETIC, {
				i(207957, {	-- Aquamarine Felfire Bulwark
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(207959, {	-- Aquamarine Felfire Splitblade
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(190071, {	-- Azure Scalesworn Longbow
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(190812, {	-- Azure Nexus Crescent
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(190078, {	-- Blade of Brutal Sacrifice
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(190870, {	-- City Guard Heater Shield
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(190438, {	-- Crimson Nexus Crescent
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(95475, {	-- Crown of Eternal Winter
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(208039, {	-- Ember Court Soiree Gloves
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190576, {	-- Ensemble: Vagabond's Azure Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190851, {	-- Ensemble: Vagabond's Crimson Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190577, {	-- Ensemble: Wanderer's Azure Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190850, {	-- Ensemble: Wanderer's Crimson Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(189898, {	-- Fury of the Firelord
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				i(190871, {	-- Grunts Buckler
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(97213, {	-- Hood of Hungering Darkness
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(208040, {	-- Queens Conservatory Ball Gloves
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190910, {	-- Ruby Felfire Bulwark
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(190909, {	-- Ruby Felfire Splitblade
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(190143, {	-- Shard of Frozen Secrets
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
			}),
		})),
		n(SEPTEMBER, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7, REMOVED_10_1_7 } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(190168),	-- Crusty Crawler (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				i(208045, {	-- Slyvy (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
			}),
			filter(COSMETIC, {
				i(190712, {	-- Ancestral Skychaser Totem
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(190693, {	-- Ancestral Stonehoof Totem
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				iensemble(208177, {	-- Armaments of the Light Avenger
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208179, {	-- Blood Onyx Blades
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208405, {	-- Blood Onyx Uniform
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(208148, {	-- Burgundy Cap
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(189882, {	-- Dread Admiral's Bicorne
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				iensemble(190799, {	-- Ensemble: Swashbuckling Buccaneer's Slops
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
				iensemble(206321, {	-- Ensemble: Vagabond's Sunny Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(206332, {	-- Ensemble: Wanderer's Sunny Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190699, {	-- Gorian Mining Pick
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(190698, {	-- Gently Used Cleaver
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(210265, {	-- High Scholar's Grand Staff
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(208423, {	-- Homebrewer's Sampling Crest
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(190144, {	-- Irontide Raiders Bicorne
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				i(189895, {	-- Watchman's Flare
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(208176, {	-- Plate of the Light Avenger
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208178, {	-- Secrets of the Unnamed Cult
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208400, {	-- Silk of the Unnamed Cult
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(190155, {	-- Trusty Treasure Trove
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				i(208147, {	-- Yellow Tweed Cap
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
			}),
		})),
		n(OCTOBER, bubbleDownSelf({ ["timeline"] = { REMOVED_10_1_7, REMOVED_10_2_0 } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(208598),	-- Eve's Ghastly Rider (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				i(49693, {	-- Lil' KT (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
			}),
			filter(MOUNTS, {
				i(137576, {	-- Dim Coldflame Core (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 700}},
				}),
			}),
			filter(TOYS, {
				i(32542, {	-- Imp in a Ball (TOY!)
					["cost"] = {{"c", TRADERS_TENDER, 350}},
				}),
			}),
			filter(COSMETIC, {
				iensemble(208663, {	-- Ashamane's Vestment of Rebirth
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208664, {	-- Ashamane's Blessings of Rebirth
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(190710, {	-- Caged Eye of the Watcher
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(190689, {	-- Corrupted Bladefist
					["cost"] = {{"c", TRADERS_TENDER, 525}},
				}),
				i(190802, {	-- Drape of Endless Twilight
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				iensemble(206341, {	-- Ensemble: Wanderer's Lively Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(206330, {	-- Ensemble: Vagabond's Lively Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190216, {	-- Feathered Cowl of the Guardian
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(190200, {	-- Feathered Drape of the Guardian
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190800, {	-- Gleaming Mail Tabard
					["cost"] = {{"c", TRADERS_TENDER, 125}},
				}),
				i(190145, {	-- Gilded Drakkonid Morningstar
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(190076, {	-- Granny's Old Hat
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				i(190578, {	-- Headmaster's Command
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(208763, {	-- Headmaster's Skullcap
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(190558, {	-- Helm of the Fierce
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(210265, {	-- High Scholar's Grand Staff
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208667, {	-- Nathreza Blasphemer's Flames
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208668, {	-- Nathreza Blasphemer's Glaives
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(190801, {	-- Shadowy Mail Tabard
					["cost"] = {{"c", TRADERS_TENDER, 125}},
				}),
				i(190433, {	-- Shifty Merchant's Tunic
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				iensemble(208665, {	-- Webbed Saronite Exoskeleton
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208666, {	-- Webbed Saronite Weaponry
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(190199, {	-- Well-Worn Grimskull Cinch
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190804, {	-- Wine-Soaked Hammer
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
			}),
		})),
		n(NOVEMBER, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_0} }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(208943),	-- Arsenal: Cosmic Weapons Cache
			}),
			filter(BATTLE_PETS, {
				i(190176, {	-- Drazka'zet the Wrathful (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
			}),
			filter(MOUNTS, {
				i(76889, {	-- Spectral Gryphon (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
				i(76902, {	-- Spectral Wind Rider (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
				i(37719, {	-- Swift Zhevra (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 550}},
				}),
			}),
			filter(TOYS, {
				i(45063, {	-- Foam Toy Rack (TOY!)
					["cost"] = {{"c", TRADERS_TENDER, 425}},
				}),
			}),
			filter(COSMETIC, {
				i(190832, {	-- Acolyte’s Etched Warhammer
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				iensemble(206331, {	-- Ensemble: Vagabond’s Sepia Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(206342, {	-- Ensemble: Wanderer’s Sepia Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190217, {	-- Fang of the Mountain
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(190065, {	-- Gnomish Liquid Transfer Apparatus
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				iensemble(208673, {	-- Instruments of the Alluring Call
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208672, {	-- Jewels of the Alluring Call
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(190833, {	-- Krokul Guisame
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(190147, {	-- Longbow of the Twisted Grove
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(190824, {	-- Loyal Blademaster’s Greatsword
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(208786, {	-- Luxurious Niffen Hat
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(190843, {	-- Maw of Rage
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(190813, {	-- Mechanized Skullcrusher
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				iensemble(208671, {	-- Possessed Watcher Arsenal
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208669, {	-- Possessed Watcher Guise
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(190831, {	-- Razor-Edged Kukri
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(190910, {	-- Ruby Felfire Bulwark
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				iensemble(208675, {	-- Savage Champion’s Aggression
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208674, {	-- Savage Champion’s Trophies
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(190829, {	-- Shawl of Flowing Magic
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(190557, {	-- Sinister Fel Staff
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				i(190220, {	-- Standard of the Guardian
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
				i(190806, {	-- Tidecaller’s Cinch
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
			}),
		})),
		n(DECEMBER, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_0} }, {
			n(FILLED_TRAVELERS_LOG, {
				i(190925),	-- Buttercup (PET!)
			}),
			filter(BATTLE_PETS, {
				i(190607, {	-- Garrlok (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				i(210870, {	-- Mitzy (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
			}),
			filter(MOUNTS, {
				i(210919, {	-- Crimson Glimmerfur (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
			}),
			filter(COSMETIC, {
				iensemble(211257, {	-- Arsenal: Stormriders Stormhammers
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				iensemble(208699, {	-- Battle Magisters Regalia
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208700, {	-- Battle Magisters Enchantments
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(210869, {	-- Blademasters Azure Stones
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(211268, {	-- Blademasters Thundering Greatsword
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(210843, {	-- Candied Blade
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
				i(190430, {	-- Chipped Gladius
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(211267, {	-- Classic Snowy Tabard
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190203, {	-- Craftsman Timber Mallet
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(211070, {	-- Crimson Treads of the Kaluak
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(208039, {	-- Ember Court Soiree Gloves
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(210883, {	-- Ensemble: Scarlet Zealots Trappings
					["cost"] = {{"c", TRADERS_TENDER, 550}},
				}),
				iensemble(190851, {	-- Ensemble: Vagabond's Crimson Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190922, {	-- Ensemble: Vagabond's Snowy Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190850, {	-- Ensemble: Wanderer's Crimson Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190921, {	-- Ensemble: Wanderer's Snowy Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(211130, {	-- Errant Crusaders Helm
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(190886, {	-- Fine White Evening Gloves
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190874, {	-- Glittering Fel Gavel
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				iensemble(208727, {	-- Hornstrider Hunters Camouflage
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208728, {	-- Hornstrider Hunters Preference
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208729, {	-- Imminence of Krag'wa's Executor
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(190685, {	-- Lost Crusaders Azure Battleaxe
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				iensemble(208725, {	-- Scales of the Silver Hoarder
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208730, {	-- Tools of Krag'wa's Executor
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				i(210844, {	-- Traders Crimson Sarong
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(210846, {	-- Traders Lively Sarong
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(208726, {	-- Treasure of the Silver Hoarder
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(211258, {	-- Wildhammer Scouts Headgear
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
			}),
		})),
	}),
	n(YEAR2024, {
		n(JANUARY, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_5} }, {
			n(FILLED_TRAVELERS_LOG, {
				i(211002),	-- Golden Mobile Timepiece
			}),
			filter(BATTLE_PETS, {
				i(193429, {	-- Time-Lost Salamanther
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
			}),
			filter(MOUNTS, {
				i(190767, {	-- Armored Golden Pterrordax
					["cost"] = {{"c", TRADERS_TENDER, 800}},
				}),
				i(211074, {	-- Copper Resonating Crystal
					["cost"] = {{"c", TRADERS_TENDER, 800}},
				}),
			}),
			filter(COSMETIC, {
				i(190447, {	-- Soulburner Bardiche
					["cost"] = {{"c", TRADERS_TENDER, 550}},
				}),
				i(190671, {	-- Tabard of Wild Might
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190693, {	-- Ancestral Stonehoof Totem
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(190712, {	-- Ancestral Skychaser Totem
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(190854, {	-- Heavily Stitched Wallet
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(190887, {	-- Highlord's Ceremonial Drape
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(190892, {	-- Orange-Sleeved Shirt
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				iensemble(200925, {	-- Ensemble: Solemn Watchman's Garb
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
				iensemble(206321, {	-- Ensemble: Vagabond's Sunny Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(206332, {	-- Ensemble: Wanderer's Sunny Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(208147, {	-- Yellow Tweed Cap
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(210857, {	-- Trader's Carrot Sarong
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(210866, {	-- Blademaster's Suntouched Stones
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(211064, {	-- Dwarven Crown Splitter
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(211066, {	-- Gossamer Desert Gown
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(211068, {	-- Sepia Treads of the Kalu'ak
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(211072, {	-- Time Marshal's Carbine
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(211098, {	-- Copper Scarab Bulwark
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				iensemble(211122, {	-- Ensemble: Wastewander Tracker's Kit
					["cost"] = {{"c", TRADERS_TENDER, 850}},
				}),
				i(211129, {	-- Sand-Swept Soiree Gloves
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(211137, {	-- Witch Doctor's Fetish Frame
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(211158, {	-- Witch Doctor's Fetish Guard
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
			}),
		})),
		n(FEBRUARY, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5, REMOVED_10_2_5} }, {
			-- removed 10.2.5.53495
			n(FILLED_TRAVELERS_LOG, {
				iensemble(212220),	-- Ensemble: Love Witch's Attire
			}),
			filter(BATTLE_PETS, {
				i(212700, {	-- Nelle (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(212722, {	-- Buggsy (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 350}},
				}),
			}),
			filter(MOUNTS, {
				i(212227, {	-- Fur-endship Fox (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				i(54860, {	-- X-53 Touring Rocket (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
			}),
			filter(TOYS, {
				i(206347, {	-- Mannequin Charm (TOY!)
					["cost"] = {{"c", TRADERS_TENDER, 10}},
				}),
			}),
			filter(COSMETIC, {
				i(212369, {	-- Battlefield Lover's Bow
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				iensemble(190725, {	-- Ensemble: Battlewraps of the Honored Valarjar
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
				i(210865, {	-- Blademaster's Crimson Stones
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(212374, {	-- Classic Rosy Tabard
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(212545, {	-- Crown of the White Rose
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(212572, {	-- Dueler's Rosy Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				iensemble(202170, {	-- Ensemble: Vagabond's Rosy Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(202167, {	-- Ensemble: Wanderer's Rosy Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190091, {	-- Fanciful Corsage
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(212382, {	-- Fluorescent Splitblade
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(190728, {	-- Gothic Corsage
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(212373, {	-- Gossamer Magenta Gown
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(190895, {	-- Lost Crusader's Amethyst Battleaxe
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(212381, {	-- Love's Bulwark
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(212375, {	-- Lovely Rosy Longbow
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(212376, {	-- Lovely Gothic Longbow
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(212379, {	-- Love Witch's Rosy Stave
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(212377, {	-- Love Witch's Rosy Wand
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(212372, {	-- Magenta Masquerade Gloves
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190909, {	-- Ruby Felfire Splitblade
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(190910, {	-- Ruby Felfire Bulwark
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(190855, {	-- Rosy Corsage
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190670, {	-- Sanguine Bouquet
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(210858, {	-- Trader's Rosy Sarong
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(212378, {	-- Twilight Witch's Gothic Scepter
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(212380, {	-- Twilight Witch's Gothic Stave
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
			}),
		})),
		n(MARCH, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5, REMOVED_10_2_6 } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(211432),	-- Teele (PET!)
			}),
			filter(BATTLE_PETS, {
			}),
			filter(MOUNTS, {
				i(207964, {	-- Alabaster Stormtalon (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 650}},
					["races"] = ALLIANCE_ONLY,
				}),
				i(207963, {	-- Alabaster Thunderwing (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 650}},
					["races"] = HORDE_ONLY,
				}),
				i(212630, {	-- Majestic Azure Peafowl (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
			}),
			filter(TOYS, {
				i(212523, {	-- Delicate Jade Parasol (TOY!)
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
			}),
			filter(COSMETIC, {
				iensemble(212577, {	-- Arsenal: Skyborn Blades
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(212576, {	-- Blackrock Executioner
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(212544, {	-- Classic Aquatic Tabard
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190890, {	-- Chipped Warblade
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(212530, {	-- Corroded Augari Defender
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(190080, {	-- Catastrophe's Edge
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(212574, {	-- Dueler's Aquatic Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(212573, {	-- Dueler's Cloudy Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				iensemble(206322, {	-- Ensemble: Vagabond's Aquatic Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(206333, {	-- Ensemble: Wanderer's Aquatic Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190690, {	-- Flame-Forged Fel Fang
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(190097, {	-- Fabulously Flashy Finery
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(212542, {	-- Flowing Aquatic Gloves
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(212543, {	-- Gossamer Teal Gown
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(212555, {	-- Guise of the Royal Masquerade
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(212556, {	-- Guise of the Shining Masquerade
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(190218, {	-- Jeweled Ripper
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(190215, {	-- Lost Crown of the Arcane
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(190814, {	-- Mephistroth's Razor
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(190428, {	-- Regal Warcloak
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				iensemble(210078, {	-- Sky-Captain's Formal Attire
					["cost"] = {{"c", TRADERS_TENDER, 800}},
				}),
				i(210861, {	-- Trader's Aquatic Sarong
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(210852, {	-- Trader's Cloudy Sarong
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190219, {	-- Virulent Gavel
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
			}),
		})),
		n(APRIL, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6, REMOVED_10_2_6_SEASON_FOUR } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(210409),	-- Aura (PET!)
			}),
			filter(MOUNTS, {
				i(212920, {	-- Savage Blue Battle Turtle (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(160589, {	-- The Dreadwake (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
			}),
			filter(TOYS, {
				i(212500, {	-- Delicate Silk Parasol (TOY!)
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
			}),
			filter(COSMETIC, {
				i(190859, {	-- Apprentice's Twisted Crook
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(213078, {	-- Assassin's Bandolier
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(210868, {	-- Blademaster's Violet Stones
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(212789, {	-- Champion's Jade Cleaver
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(212990, {	-- Classic Violet Tabard
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(212790, {	-- Codex of Classic Conjurations
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				i(190899, {	-- Crimson Bicorne
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				i(190805, {	-- Deforester's Hatchet
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(189882, {	-- Dread Admiral's Bicorne
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				i(212616, {	-- Dueler's Violet Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(212621, {	-- Dueler's Lively Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(190819, {	-- Emerald Guardian's Longbow
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				iensemble(217381, {	-- Ensemble: Fearless Buccaneer's Slops
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
				iensemble(213084, {	-- Ensemble: Spring Reveler's Lavender Apparel
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				iensemble(212940, {	-- Ensemble: Spring Reveler's Lavender Collection
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(190799, {	-- Ensemble: Swashbuckling Buccaneer's Slops
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
				iensemble(206326, {	-- Ensemble: Vagabond's Camo Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(206337, {	-- Ensemble: Wanderer's Camo Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190445, {	-- Envenomed Gutripper
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(217372, {	-- Frenzied Hat of the Deep Blue
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				i(212787, {	-- Gloves of the Violet Gala
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190857, {	-- Gilded Emerald Longcloak
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(212788, {	-- Gossamer Emerald Gown
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(212785, {	-- Helm of the Stout
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(190144, {	-- Irontide Raiders Bicorne
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				i(190075, {	-- Mantle of the Scholarly Raven
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(212708, {	-- Spring Reveler's Dandelion Attire
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(212709, {	-- Spring Reveler's Dandelion Belt
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(212710, {	-- Spring Reveler's Dandelion Boots
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(212714, {	-- Spring Reveler's Dandelion Dress
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(212988, {	-- Spring Reveler's Dandelion Pants
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(212718, {	-- Spring Reveler's Dandelion Sun Hat
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(210860, {	-- Trader's Violet Sarong
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190155, {	-- Trusty Treasure Trove
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				i(190873, {	-- Warhammer of Hubris
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
			}),
		})),
		n(MAY, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_10_2_7 } }, { -- 10.2.7.54904
			n(FILLED_TRAVELERS_LOG, {
				i(212613),	-- Wings of the Amber Monarch
			}),
			filter(BATTLE_PETS, {
				i(190604, {	-- Buzzworth (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
				i(217043, {	-- Pokee (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
			}),
			filter(MOUNTS, {
				i(192766, {	-- Amber Skitterfly (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
				i(54069, {	-- Blazing Hippogryph (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 800}},
				}),
				i(206976, {	-- Royal Swarmer (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 800}},
				}),
			}),
			filter(COSMETIC, {
				iensemble(190164, {	-- Arsenal: Blades of Elune
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(213396, {	-- Classic Midnight Tabard
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(212623, {	-- Dueler's Brick Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(212628, {	-- Dueler's Midnight Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(213394, {	-- Ebony Crown of the Red Rose
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				iensemble(206325, {	-- Ensemble: Vagabond's Brick Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190166, {	-- Ensemble: Vagabond's Midnight Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(206336, {	-- Ensemble: Wanderer's Brick Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190377, {	-- Ensemble: Wanderer's Midnight Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(189896, {	-- Forsaken Cresset
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(213395, {	-- Gloves of the Midnight Soiree
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(213393, {	-- Guise of the Golden Masquerade
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190070, {	-- Highborne Scholar's Gloves
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(213065, {	-- Lavish Floral Edge
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(213068, {	-- Lavish Floral Stalk
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(190674, {	-- Leaky Bucket
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(211071, {	-- Lively Treads of the Kalu'ak
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(213062, {	-- Paradise's Golden Axe
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(190066, {	-- Primeval Maul
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(190201, {	-- Sin'dorei Assassin's Shroud
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(213071, {	-- Sunny Floral Staff
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(213075, {	-- Sunny Bow-quet
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(210855, {	-- Trader's Brick Sarong
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190844, {	-- Valarjar Champion's Greatsword
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
			}),
		})),
		n(JUNE, bubbleDownSelf({ ["timeline"] = { ADDED_MOP_REMIX, "removed 10.2.7.55261" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(220692),	-- X-treme Water Blaster Display (TOY!)
			}),
			filter(BATTLE_PETS, {
				i(223145, {	-- Marrlok (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
			}),
			filter(MOUNTS, {
				i(221814, {	-- Pearlescent Goblin Wave Shredder (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 700}},
				}),
				i(23720, {	-- Riding Turtle (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 700}},
				}),
			}),
			filter(TOYS, {
				i(218112, {	-- Colorful Beach Chair (TOY!)
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(212524, {	-- Delicate Crimson Parasol (TOY!)
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
			}),
			filter(COSMETIC, {
				iensemble(223004, {	-- Arsenal: Blazing Felfire Armaments
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
				i(210866, {	-- Blademaster's Suntouched Stones
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(221809, { -- Churning Sands Treads
					["cost"] = {{"c", TRADERS_TENDER, 60}},
				}),
				i(221810, { -- Churning Sands Gloves
					["cost"] = {{"c", TRADERS_TENDER, 60}},
				}),
				i(221794, { -- Classic Carrot Tabard
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190689, {	-- Corrupted Bladefist
					["cost"] = {{"c", TRADERS_TENDER, 525}},
				}),
				i(212619, { -- Dueler's Carrot Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(212614, { -- Dueler's Sunny Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				iensemble(221542, {	-- Ensemble: Sunny Tropical Beachwear
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
				iensemble(222961, {	-- Ensemble: Sunny Tropical Swimwear
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
				iensemble(202178, {	-- Ensemble: Vagabond's Carrot Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(202179, {	-- Ensemble: Wanderer's Carrot Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190849, { -- Forgemaster's Gavel
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190860, { -- Initiate's Bo
					["cost"] = {{"c", TRADERS_TENDER, 60}},
				}),
				i(190205, {	-- Sharpened Shank
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(210863, { -- Trader's Sunny Sarong
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(221832, { -- Tropical Sunrise Airy Sandals
					["cost"] = {{"c", TRADERS_TENDER, 40}},
				}),
				i(221831, { -- Tropical Sunrise Beads
					["cost"] = {{"c", TRADERS_TENDER, 40}},
				}),
				i(221829, {	-- Tropical Sunrise Halter Top
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(221529, {	-- Tropical Sunrise Mrgl Floater
					["cost"] = {{"c", TRADERS_TENDER, 220}},
				}),
				i(221528, { -- Tropical Sunrise Sandals
					["cost"] = {{"c", TRADERS_TENDER, 40}},
				}),
				i(221833, { -- Tropical Sunrise Sash
					["cost"] = {{"c", TRADERS_TENDER, 60}},
				}),
				i(221525, {	-- Tropical Sunrise Shirt
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(221830, {	-- Tropical Sunrise Skirt
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(221834, {	-- Tropical Sunrise Sunshade
					["cost"] = {{"c", TRADERS_TENDER, 220}},
				}),
				i(221526, {	-- Tropical Sunrise Trunks
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(221527, { -- Tropical Sunrise Wristwraps
					["cost"] = {{"c", TRADERS_TENDER, 40}},
				}),
				i(220357, {	-- Water Blaster B.L.
					["cost"] = {{"c", TRADERS_TENDER, 330}},
				}),
			}),
		})),
		n(JULY, bubbleDownSelf({ ["timeline"] = { "added 10.2.7.55261", "removed 11.0.0.55846" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(223339),	-- Trishi (PET!)
			}),
			filter(BATTLE_PETS, {
				i(206174, {	-- Blub (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
			}),
			filter(MOUNTS, {
				i(210919, {	-- Crimson Glimmerfur (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
				i(223285, {	-- Underlight Corrupted Behemoth (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 800}},
				}),
			}),
			filter(COSMETIC, {
				i(223185, {	-- Blade Of The Riptide
					["cost"] = {{"c", TRADERS_TENDER, 80}},
				}),
				i(223170, {	-- Classic Deep Tabard
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(223233, {	-- Copper Divers Belt
					["cost"] = {{"c", TRADERS_TENDER, 60}},
				}),
				i(223230, {	-- Copper Divers Bonnet
					["cost"] = {{"c", TRADERS_TENDER, 220}},
				}),
				i(223235, {	-- Copper Divers Boots
					["cost"] = {{"c", TRADERS_TENDER, 60}},
				}),
				i(223232, {	-- Copper Divers Corselet
					["cost"] = {{"c", TRADERS_TENDER, 80}},
				}),
				i(223236, {	-- Copper Divers Gloves
					["cost"] = {{"c", TRADERS_TENDER, 60}},
				}),
				i(223234, {	-- Copper Divers Greaves
					["cost"] = {{"c", TRADERS_TENDER, 80}},
				}),
				i(223231, {	-- Copper Divers Pauldrons
					["cost"] = {{"c", TRADERS_TENDER, 80}},
				}),
				i(223252, {	-- Copper Divers Tank
					["cost"] = {{"c", TRADERS_TENDER, 160}},
				}),
				i(223257, {	-- Copper Divers Wrist Seal
					["cost"] = {{"c", TRADERS_TENDER, 10}},
				}),
				i(223166, {	-- Deepsea Treasure Pack
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(212624, {	-- Duelers Deep Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				iensemble(223244, {	-- Ensemble: Deepest Depths Diver Suit
					["cost"] = {{"c", TRADERS_TENDER, 800}},
				}),
				iensemble(206327, {	-- Ensemble: Vagabond's Deep Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(206338, {	-- Ensemble: Wanderer's Deep Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(211130, {	-- Errant Crusaders Helm
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(223188, {	-- Riptide Basher
					["cost"] = {{"c", TRADERS_TENDER, 80}},
				}),
				i(223187, {	-- Riptide Bulwark
					["cost"] = {{"c", TRADERS_TENDER, 80}},
				}),
				i(223179, {	-- Riptide Dagger
					["cost"] = {{"c", TRADERS_TENDER, 125}},
				}),
				i(223176, {	-- Riptide Gut Puncher
					["cost"] = {{"c", TRADERS_TENDER, 125}},
				}),
				i(223189, {	-- Riptide Slicer
					["cost"] = {{"c", TRADERS_TENDER, 125}},
				}),
				i(223184, {	-- Riptide Staff
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(213161, {	-- Titan Thunderbow
					["cost"] = {{"c", TRADERS_TENDER, 180}},
				}),
				i(210853, {	-- Traders Deep Sarong
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(223191, {	-- Trident Of The Riptide
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(223165, {	-- Vengeful Crusaders Helm
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(223190, {	-- Wand Of The Riptide
					["cost"] = {{"c", TRADERS_TENDER, 125}},
				}),
			}),
		})),
		n(AUGUST, bubbleDownSelf({ ["timeline"] = { "added 11.0.0.55846", "removed 11.0.2.56421" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(223409),	-- The Coward's Violet Target
			}),
			filter(BATTLE_PETS, {
				i(223474, {	-- Worgli the Apprehensive (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
			}),
			filter(MOUNTS, {
				i(54811, {	-- Celestial Steed (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 900}},
				}),
				i(118515, {	-- Cindermane Charger (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 900}},
				}),
				i(223469, {	-- Sentinel War Wolf (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
				i(223449, {	-- Kor'kron Warsaber (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
			}),
			filter(TOYS, {
				i(206268, {	-- Ethereal Transmogrifier (TOY!)
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
			}),
			filter(COSMETIC, {
				iensemble(211257, {	-- Arsenal: Stormrider's Stormhammers
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				iensemble(220759, {	-- Arsenal: Stormrider's Bronze Stormhammers
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				iensemble(220755, {	-- Arsenal: Stormrider's Dark Stormhammers
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				iensemble(220762, {	-- Arsenal: Stormrider's Silver Stormhammers
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				iensemble(223421, {	-- Arsenal: Fireborn Blades
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(223418, {	-- Arsenal: Seaborn Blades
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(210869, {	-- Blademaster's Azure Stones
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(210865, {	-- Blademaster's Crimson Stones
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(190870, {	-- City Guard Heater Shield
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(223430, {	-- Conjurer's Sapphire Staff
					["cost"] = {{"c", TRADERS_TENDER, 60}},
				}),
				i(223429, {	-- Conjurer's Scarlet Staff
					["cost"] = {{"c", TRADERS_TENDER, 60}},
				}),
				i(212627, {	-- Dueler's Azure Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(212617, {	-- Dueler's Crimson Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				iensemble(190576, {	-- Ensemble: Vagabond's Azure Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190577, {	-- Ensemble: Wanderer's Azure Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190851, {	-- Ensemble: Vagabond's Crimson Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190850, {	-- Ensemble: Wanderer's Crimson Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190871, {	-- Grunt's Buckler
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(210999, {	-- Ruby-Faced Mobile Timepiece
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(211001, {	-- Sapphire-Faced Mobile Timepiece
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(223415, {	-- Sapphire Axe of Asymmetry
					["cost"] = {{"c", TRADERS_TENDER, 180}},
				}),
				i(223423, {	-- Sapphire Bladed Blunderbuss
					["cost"] = {{"c", TRADERS_TENDER, 130}},
				}),
				i(223411, {	-- Sapphire Shanker
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(223413, {	-- Sapphire Warglaive
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(223414, {	-- Scarlet Axe of Asymmetry
					["cost"] = {{"c", TRADERS_TENDER, 180}},
				}),
				i(223422, {	-- Scarlet Bladed Blunderbuss
					["cost"] = {{"c", TRADERS_TENDER, 130}},
				}),
				i(223410, {	-- Scarlet Shanker
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(223412, {	-- Scarlet Warglaive
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(223426, {	-- Simple Sapphire Wand
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(223425, {	-- Simple Scarlet Wand
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(223433, {	-- Sunreaver's Scarlet Tome
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(223434, {	-- The Sapphire Thalassian Tome
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(210849, {	-- Trader's Azure Sarong
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(210844, {	-- Trader's Crimson Sarong
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(212612, {	-- Wings of the Amethyst Monarch
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(212611, {	-- Wings of the Tourmaline Monarch
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
			}),
		})),
		n(SEPTEMBER, bubbleDownSelf({ ["timeline"] = { "added 11.0.2.56421", "removed 11.0.2.56647" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(226040),	-- Plunderlord's Golden Crocolisk (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				i(226104, {	-- Claudius (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 330}},
				}),
			}),
			filter(MOUNTS, {
				i(226041, {	-- Keg Leg's Radiant Crocolisk (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
			}),
			filter(COSMETIC, {
				i(225975, {	-- Alchemist's Bandolier
					["cost"] = {{"c", TRADERS_TENDER, 260}},
				}),
				i(226106, {	-- Amber Scale Treads
					["cost"] = {{"c", TRADERS_TENDER, 40}},
				}),
				i(210867, {	-- Blademaster's Lively Stones
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(225977, {	-- Classic Camo Tabard
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(225993, {	-- Cursed Copper Crossbow
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(212622, {	-- Dueler's Camo Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(190068, {	-- Emerald Drape
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(226105, {	-- Emerald Scale Treads
					["cost"] = {{"c", TRADERS_TENDER, 40}},
				}),
				iensemble(226017, {	-- Ensemble: Plunderlord's Radiant Finery
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				iensemble(190540, {	-- Ensemble: Trapper's Munitions
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(206330, {	-- Ensemble: Vagabond's Lively Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(206341, {	-- Ensemble: Wanderer's Lively Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(225978, {	-- Fel-Glade Warglaive
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(225976, {	-- Fine Gloves of the Forest
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(217376, {	-- Frenzied Hat of the Murky Waters
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				i(209053, {	-- Green Brewfest Bulwark
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(190854, {	-- Heavily Stitched Wallet
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(225980, {	-- High-Grade Blade of the Forbade
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(208423, {	-- Homebrewer's Sampling Crest
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(190133, {	-- Honed Bastard Sword
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(225979, {	-- Jade Blade of the Forbade
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190833, {	-- Krokul Guisarme
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(208786, {	-- Luxurious Niffen Hat
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(190892, {	-- Orange-Sleeved Shirt
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(225990, {	-- Plunderlord's Radiant Cutlass
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				i(225983, {	-- Plunderlord's Radiant Hand Cannon
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(225992, {	-- Plunderlord's Radiant Neck-Severer
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(225991, {	-- Plunderlord's Radiant Rapier
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(225982, {	-- Plunderlord's Radiant Sigil
					["cost"] = {{"c", TRADERS_TENDER, 160}},
				}),
				i(190205, {	-- Sharpened Shank
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(225994, {	-- Simple Copper Staff
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				iensemble(210078, {	-- Sky-Captain's Formal Attire
					["cost"] = {{"c", TRADERS_TENDER, 800}},
				}),
				i(225974, {	-- Swabbie's Cap
					["cost"] = {{"c", TRADERS_TENDER, 80}},
				}),
				i(210854, {	-- Trader's Camo Sarong
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
			}),
		})),
		n(OCTOBER, bubbleDownSelf({ ["timeline"] = { "added 11.0.2.56647", "removed 11.0.5.57388" } }, {
			n(FILLED_TRAVELERS_LOG, {
				i(187674),	-- Depthstalker (MOUNT!)
			}),
			filter(BATTLE_PETS, {
				i(205148, {	-- Soot-Stained Shalewing (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
			}),
			filter(MOUNTS, {
				i(226506, {	-- Hand of Reshkigaal (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				i(37719, {	-- Swift Zhevra (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 550}},
				}),
			}),
			filter(TOYS, {
				i(212525, {	-- Delicate Ebony Parasol (TOY!)
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(212500, {	-- Delicate Silk Parasol (TOY!)
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
			}),
			filter(COSMETIC, {
				i(226390, {	-- Aerie Battle Mace
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(226370, {	-- Ashen Executioner
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(226388, {	-- Battle-Tested Obsidian Warhammer
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(226387, {	-- Battle-Tested Warhammer
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190710, {	-- Caged Eye of the Watcher
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(226369, {	-- Classic Faded Tabard
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(226389, {	-- Dark Iron Battle Mace
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(212620, {	-- Dueler's Faded Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(212628, {	-- Dueler's Midnight Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(212615, {	-- Dueler's Snowy Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				iensemble(226429, {	-- Ensemble: Ragged Harvest Golem
					["cost"] = {{"c", TRADERS_TENDER, 800}},
				}),
				iensemble(206324, {	-- Ensemble: Vagabond's Faded Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(206335, {	-- Ensemble: Wanderer's Faded Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(226382, {	-- Feathered Bow of the Fallen
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(226381, {	-- Feathered Bow of the Night
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190886, {	-- Fine White Evening Gloves
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(226386, {	-- Gentle Glow of the Naaru
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(213395, {	-- Gloves of the Midnight Soiree
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(226366, {	-- Gloves of the Morning Mist
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190076, {	-- Granny's Old Hat
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				i(226428, {	-- Harvester's Claw
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(190132, {	-- Krokul Battlescythe
					["cost"] = {{"c", TRADERS_TENDER, 85}},
				}),
				i(226383, {	-- Simple Ebony Wand
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(210848, {	-- Trader's Midnight Sarong
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(210862, {	-- Trader's Snowy Sarong
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(226367, {	-- Ugly Black Boots
					["cost"] = {{"c", TRADERS_TENDER, 40}},
				}),
				i(226368, {	-- Ugly White Boots
					["cost"] = {{"c", TRADERS_TENDER, 40}},
				}),
				i(226384, {	-- Wand of the Bright Shadow
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
			}),
		})),
		n(NOVEMBER, bubbleDownSelf({ ["timeline"] = { "added 11.0.5.57388", "removed 11.0.5.57689" } }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(229059),	-- Arsenal: Crests of the Kingdom
			}),
			filter(COSMETIC, {
				i(190693, {	-- Ancestral Stonehoof Totem
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(229426, {	-- Ancient Amani Longbow
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(208177, {	-- Armaments of the Light Avenger
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(211257, {	-- Arsenal: Stormriders Stormhammers
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				iensemble(208663, {	-- Ashamane's Vestment of Rebirth
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208664, {	-- Ashamane's Blessings of Rebirth
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208699, {	-- Battle Magisters Regalia
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208700, {	-- Battle Magisters Enchantments
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(226388, {	-- Battle-tested Obsidian Warhammer
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(208179, {	-- Blood Onyx Blades
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208405, {	-- Blood Onyx Uniform
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(229425, {	-- Bronzebeard Battle Mace
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(213158, {	-- Ensemble: Dark Ranger General's Kit
					["cost"] = {{"c", TRADERS_TENDER, 850}},
				}),
				iensemble(217038, {	-- Ensemble: Gladiator's Battered Armor
					["cost"] = {{"c", TRADERS_TENDER, 850}},
				}),
				iensemble(230165, {	-- Ensemble: Prowler's Azure Headgear
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(230179, {	-- Ensemble: Prowler's Crimson Headgear
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(230183, {	-- Ensemble: Prowler's Sunny Headgear
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(230180, {	-- Ensemble: Prowler's Violet Headgear
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190216, {	-- Feathered Cowl of the Guardian
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(190200, {	-- Feathered Drape of the Guardian
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(189898, {	-- Fury of the Firelord
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				i(213106, {	-- Gladiator's Battered Greatsword
					["cost"] = {{"c", TRADERS_TENDER, 275}},
				}),
				iensemble(208412, {	-- High Scholar's Arcana
					["cost"] = {{"c", TRADERS_TENDER, 850}},
				}),
				i(210265, {	-- High Scholar's Grand Staff
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208727, {	-- Hornstrider Hunters Camouflage
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208728, {	-- Hornstrider Hunters Preference
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208729, {	-- Imminence of Krag'wa's Executor
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208673, {	-- Instruments of the Alluring Call
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208672, {	-- Jewels of the Alluring Call
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208667, {	-- Nathreza Blasphemer's Flames
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208668, {	-- Nathreza Blasphemer's Glaives
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208176, {	-- Plate of the Light Avenger
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208671, {	-- Possessed Watcher Arsenal
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208669, {	-- Possessed Watcher Guise
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(230034, {	-- Prowler's Azure Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(230048, {	-- Prowler's Crimson Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(230052, {	-- Prowler's Sunny Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(230049, {	-- Prowler's Violet Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				iensemble(208675, {	-- Savage Champion’s Aggression
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208674, {	-- Savage Champion’s Trophies
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208725, {	-- Scales of the Silver Hoarder
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208178, {	-- Secrets of the Unnamed Cult
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208400, {	-- Silk of the Unnamed Cult
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(190220, {	-- Standard of the Guardian
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
				iensemble(208730, {	-- Tools of Krag'wa's Executor
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				iensemble(208726, {	-- Treasure of the Silver Hoarder
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				iensemble(208665, {	-- Webbed Saronite Exoskeleton
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				iensemble(208666, {	-- Webbed Saronite Weaponry
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(211137, {	-- Witch Doctor's Fetish Frame
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(211158, {	-- Witch Doctor's Fetish Guard
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
			}),
		})),
		n(DECEMBER, bubbleDownSelf({ ["timeline"] = { "added 11.0.5.57689", "removed 11.0.7.58238" } }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(223486),	-- Ensemble: Purple Snugglefin Murloc Romper
			}),
			filter(BATTLE_PETS, {
				i(229993, {	-- Bluedoo (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(210870, {	-- Mitzy (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
			}),
			filter(MOUNTS, {
				i(137576, {	-- Dim Coldflame Core (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 700}},
				}),
				i(212229, {	-- Reins of the Twilight Sky Prowler (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
			}),
			filter(COSMETIC, {
				i(230853, {	-- Aegis of Yuletide
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(211069, {	-- Azure Treads of the Kalu'ak
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(210843, {	-- Candied Blade
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
				i(229961, {	-- Candied Knife
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(229960, {	-- Cheerbringer XL
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(229812, {	-- Chilled Axe
					["cost"] = {{"c", TRADERS_TENDER, 120}},
				}),
				i(229999, {	-- Classic Cloudy Tabard
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(95475, {	-- Crown of Eternal Winter
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(229807, {	-- Crown of the Icy Blue Rose
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(229813, {	-- Crystalline Longbow of the Heavens
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				iensemble(230174, {	-- Ensemble: Prowler's Icy Headgear
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(230182, {	-- Ensemble: Prowler's Snowy Headgear
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(212222, {	-- Ensemble: Twilight Witch's Attire
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				iensemble(206328, {	-- Ensemble: Vagabond's Cloudy Threads
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(190095, {	-- Ensemble: Vestment of the Honored Valarjar
					["cost"] = {{"c", TRADERS_TENDER, 850}},
				}),
				iensemble(206339, {	-- Ensemble: Wanderer's Cloudy Trappings
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(229814, {	-- Fan of Cooling
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(190842, {	-- Fists of Polar Fury
					["cost"] = {{"c", TRADERS_TENDER, 175}},
				}),
				i(229811, {	-- Frost Etched Dagger
					["cost"] = {{"c", TRADERS_TENDER, 90}},
				}),
				i(229720, {	-- Frostwolf Earmuffs
					["cost"] = {{"c", TRADERS_TENDER, 170}},
				}),
				i(229808, {	-- Gossamer Cyan Gown
					["cost"] = {{"c", TRADERS_TENDER, 150}},
				}),
				i(229963, {	-- Great Candied Blade
					["cost"] = {{"c", TRADERS_TENDER, 450}},
				}),
				i(229714, {	-- Lion's Crest Earmuffs
					["cost"] = {{"c", TRADERS_TENDER, 170}},
				}),
				i(229817, {	-- Lovely Airy Longbow
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(212376, {	-- Lovely Gothic Longbow
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(230043, {	-- Prowler's Icy Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(230051, {	-- Prowler's Snowy Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(190143, {	-- Shard of Frozen Secrets
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(229815, {	-- Sky Witch's Airy Stave
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(229816, {	-- Sky Witch's Airy Wand
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(229962, {	-- Tree Topper
					["cost"] = {{"c", TRADERS_TENDER, 400}},
				}),
				i(212378, {	-- Twilight Witch's Gothic Scepter
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(212380, {	-- Twilight Witch's Gothic Stave
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(230940, {	-- Wings of the Sapphire Monarch
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
				i(231017, {	-- Wings of the Onyx Monarch
					["cost"] = {{"c", TRADERS_TENDER, 225}},
				}),
			}),
		})),
	}),
	n(YEAR2025, {
		n(JANUARY, bubbleDownSelf({ ["timeline"] = { "added 11.0.7.58238", "removed 11.0.7.58867" } }, {
			n(FILLED_TRAVELERS_LOG, {
				iensemble(233359),	-- Green Clockwork Contraptions Collection
			}),
			filter(BATTLE_PETS, {
				i(193429, {	-- Time-Lost Salamanther (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
				i(233366, {	-- Wind-Up Woofer (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(233361, {	-- Wind-Up Wuffi (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
			}),
			filter(MOUNTS, {
				i(211074, {	-- Copper Resonating Crystal (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 800}},
				}),
				i(212631, {	-- Reins of the Brilliant Sunburst Peafowl (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				i(233354, {	-- Savage Alabaster Battle Turtle (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 500}},
				}),
				i(112326, {	-- Warforged Nightmare (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 700}},
					["g"] = {
						n(MAILBOX, {
							i(112324),	-- Nightmarish Hitching Post (TOY!)
						}),
					},
				}),
			}),
			filter(COSMETIC, {
				i(221794, { -- Classic Carrot Tabard
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(233185, {	-- Banded Sunny War Slippers
					["cost"] = {{"c", TRADERS_TENDER, 20}},
				}),
				i(233168, {	-- Banded Sunny War Wraps
					["cost"] = {{"c", TRADERS_TENDER, 20}},
				}),
				i(233355, {	-- Bronze Helm of Righteousness
					["cost"] = {{"c", TRADERS_TENDER, 140}},
				}),
				iensemble(233328, {	-- Ensemble: Golden Clockwork Attire
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
				iensemble(233329, {	-- Ensemble: Green Clockwork Attire
					["cost"] = {{"c", TRADERS_TENDER, 650}},
				}),
				iensemble(230176, {	-- Ensemble: Prowler's Carrot Headgear
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(211122, {	-- Ensemble: Wastewander Tracker's Kit
					["cost"] = {{"c", TRADERS_TENDER, 850}},
				}),
				i(233360,{	-- Gold-Reinforced Cushioned Boots
					["cost"] = {{"c", TRADERS_TENDER, 40}},
				}),
				i(233277, {	-- Golden Clockwork Defender
					["cost"] = {{"c", TRADERS_TENDER, 260}},
				}),
				i(233257, {	-- Golden Clockwork Doomfist
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(233249, {	-- Golden Clockwork Power Hammer
					["cost"] = {{"c", TRADERS_TENDER, 325}},
				}),
				i(211066, {	-- Gossamer Desert Gown
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(233112, {	-- Long Sunny War Skirt
					["cost"] = {{"c", TRADERS_TENDER, 40}},
				}),
				i(233151, {	-- Long Sunny War Skirt and Leg Wraps
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(233270, {	-- Long-Range Golden Clockstopper
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(230045, {	-- Prowler's Carrot Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(211129, {	-- Sand-Swept Soiree Gloves
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(233095, {	-- Short Sunny War Skirt
					["cost"] = {{"c", TRADERS_TENDER, 40}},
				}),
				i(233134, {	-- Short Sunny War Skirt and Leg Wraps
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(233273, {	-- Steam-Powered Golden Cloak
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(190818, {	-- Steamwheedle Artifact Extractor
					["cost"] = {{"c", TRADERS_TENDER, 60}},
				}),
			}),
		})),
		n(FEBRUARY, bubbleDownSelf({ ["timeline"] = { "added 11.0.7.58867", "removed 11.0.7.99999" } }, {	-- TODO: Timeline out correctly
			n(FILLED_TRAVELERS_LOG, {
				iensemble(234058),	-- Ensemble: Ornate Pink Lunar Festival Attire
			}),
			filter(BATTLE_PETS, {
				i(234397, {	-- Fullbelly Rollingpaw (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 350}},
				}),
				i(234396, {	-- Teatuft Tamer (PET!)
					["cost"] = {{"c", TRADERS_TENDER, 350}},
				}),
			}),
			filter(MOUNTS, {
				i(212227, {	-- Fur-endship Fox (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				i(233023, {	-- Silvermoon Sweeper (MOUNT!)
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
			}),
			filter(COSMETIC, {
				i(233078, {	-- Banded Crimson War Slippers
					["cost"] = {{"c", TRADERS_TENDER, 20}},
				}),
				i(233076, {	-- Banded Crimson War Wraps
					["cost"] = {{"c", TRADERS_TENDER, 20}},
				}),
				i(212369, {	-- Battlefield Lover's Bow
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(233232, {	-- Crimson Lunar Firewhacker
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(233218, { -- Crimson Lunar Lantern
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(233236, {	-- Crimson Pack of Lunar Explosives
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				iensemble(212220, {	-- Ensemble: Love Witch's Attire
					["cost"] = {{"c", TRADERS_TENDER, 750}},
				}),
				iensemble(234057, {	-- Ensemble: Ornate Crimson Lunar Festival Attire
					["cost"] = {{"c", TRADERS_TENDER, 600}},
				}),
				iensemble(230175, {	-- Ensemble: Prowler's Pink Headgear
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(232933, {	-- Ensemble: Sky Witch's Heartfelt Shoulders
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				iensemble(232934, {	-- Ensemble: Twilight Witch's Heartfelt Shoulders
					["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(234074, {	-- Gold-Plated Cushioned Boots
					["cost"] = {{"c", TRADERS_TENDER, 40}},
				}),
				i(233223, {	-- Jade Lunar Blade
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(233228, {	-- Jade Lunar Polearm
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(233073, {	-- Long Crimson War Skirt
					["cost"] = {{"c", TRADERS_TENDER, 40}},
				}),
				i(233075, {	-- Long Crimson War Skirt and Leg Wraps
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
				i(212379, {	-- Love Witch's Rosy Stave
					["cost"] = {{"c", TRADERS_TENDER, 250}},
				}),
				i(212377, {	-- Love Witch's Rosy Wand
					["cost"] = {{"c", TRADERS_TENDER, 200}},
				}),
				i(212375, {	-- Lovely Rosy Longbow
					["cost"] = {{"c", TRADERS_TENDER, 300}},
				}),
				i(230044, {	-- Prowler's Pink Shoulder Cape
					["cost"] = {{"c", TRADERS_TENDER, 75}},
				}),
				i(190855, {	-- Rosy Corsage
					-- #if BEFORE 11.1.0
					["description"] = "This is also sold at the discount vendor, no reason to buy it from the main trading post offering."
					-- #endif
					--["cost"] = {{"c", TRADERS_TENDER, 100}},
				}),
				i(233072, {	-- Short Crimson War Skirt
					["cost"] = {{"c", TRADERS_TENDER, 40}},
				}),
				i(233074, {	-- Short Crimson War Skirt and Leg Wraps
					["cost"] = {{"c", TRADERS_TENDER, 50}},
				}),
			}),
			n(VENDORS, {
				n(234747, {	-- Supplier Felina <Trading Post Outlet Completionist>
					["coord"] = { 48.16, 51.99, DORNOGAL },
					["g"] = {
						filter(BATTLE_PETS, {
							i(190925, {	-- Buttercup (PET!)
								["cost"] = {{"c", TRADERS_TENDER, 350}},
							}),
						}),
						filter(MOUNTS, {
							i(190231, {	-- Ash'adar, Harbinger of Dawn (MOUNT!)
								["cost"] = {{"c", TRADERS_TENDER, 900}},
							}),
							i(190169, {	-- Quawks (MOUNT!)
								["cost"] = {{"c", TRADERS_TENDER, 750}},
							}),
						}),
						filter(COSMETIC, {
							iensemble(208943, {	-- Arsenal: Cosmic Weapons Cache
								["cost"] = {{"c", TRADERS_TENDER, 700}},
							}),
							iensemble(190797, {	-- Ensemble: Bones of the Bloodhunter
								["cost"] = {{"c", TRADERS_TENDER, 800}},
							}),
							iensemble(190504, {	-- Ensemble: Darkmoon Harlequin's Bells
								["cost"] = {{"c", TRADERS_TENDER, 750}},
							}),
						}),
					},
				}),
				n(234746, {	-- Supplier Mizix <Trading Post Outlet Creatures and Toys>
					["coord"] = { 48.07, 52.16, DORNOGAL },
					["g"] = {
						filter(BATTLE_PETS, {
							i(190604, {	-- Buzzworth (PET!)
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(190176, {	-- Drazka'zet the Wrathful (PET!)
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(190603, {	-- Egbob (PET!)
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(208045, {	-- Slyvy (PET!)
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(49343, {	-- Spectral Tiger Cub (PET!)
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
						}),
						filter(MOUNTS, {
							i(207821, {	-- Ancestral Clefthoof (MOUNT!)
								["cost"] = {{"c", TRADERS_TENDER, 500}},
							}),
							i(210919, {	-- Crimson Glimmerfur (MOUNT!)
								["cost"] = {{"c", TRADERS_TENDER, 500}},
							}),
							i(206027, {	-- Felcrystal Scorpion (MOUNT!)
								["cost"] = {{"c", TRADERS_TENDER, 500}},
							}),
							i(189978, {	-- Reins of the Magenta Cloud Serpent (MOUNT!)
								["cost"] = {{"c", TRADERS_TENDER, 500}},
							}),
							i(206976, {	-- Royal Swarmer's Reins (MOUNT!)
								["cost"] = {{"c", TRADERS_TENDER, 500}},
							}),
							i(76889, {	-- Spectral Gryphon (MOUNT!)
								["cost"] = {{"c", TRADERS_TENDER, 500}},
							}),
							i(76902, {	-- Spectral Wind Rider (MOUNT!)
								["cost"] = {{"c", TRADERS_TENDER, 500}},
							}),
						}),
						filter(TOYS, {
							i(206268, {	-- Ethereal Transmogrifier (TOY!)
								["cost"] = {{"c", TRADERS_TENDER, 300}},
							}),
							i(45063, {	-- Foam Toy Rack (TOY!)
								["cost"] = {{"c", TRADERS_TENDER, 300}},
							}),
							i(32542, {	-- Imp in a Ball (TOY!)
								["cost"] = {{"c", TRADERS_TENDER, 300}},
							}),
						}),
					},
				}),
				n(234744, {	-- Supplier Offa <Trading Post Outlet Wearables>
					["coord"] = { 47.57, 52.76, DORNOGAL },
					["g"] = {
						filter(COSMETIC, {
							i(190712, {	-- Ancestral Skychaser Totem
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(208148, {	-- Burgundy Cap
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(190899, {	-- Crimson Bicorne
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(190130, {	-- Drape of Foreboding Mists
								["cost"] = {{"c", TRADERS_TENDER, 40}},
							}),
							i(189882, {	-- Dread Admiral's Bicorne
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(190869, {	-- Emberstone Dress
								["cost"] = {{"c", TRADERS_TENDER, 75}},
							}),
							iensemble(189938, {	-- Ensemble: Fel-Automaton Exoplate
								["cost"] = {{"c", TRADERS_TENDER, 350}},
							}),
							iensemble(200884, {	-- Ensemble: Glorious Dragonrider's Mail
								["cost"] = {{"c", TRADERS_TENDER, 350}},
							}),
							iensemble(210883, {	-- Ensemble: Scarlet Zealots Trappings
								["cost"] = {{"c", TRADERS_TENDER, 350}},
							}),
							iensemble(190799, {	-- Ensemble: Swashbuckling Buccaneer's Slops
								["cost"] = {{"c", TRADERS_TENDER, 350}},
							}),
							iensemble(200915, {	-- Ensemble: Sylvan Stalker’s Leathers
								["cost"] = {{"c", TRADERS_TENDER, 350}},
							}),
							i(190097, {	-- Fabulously Flashy Finery
								["cost"] = {{"c", TRADERS_TENDER, 40}},
							}),
							i(190800, {	-- Gleaming Mail Tabard
								["cost"] = {{"c", TRADERS_TENDER, 70}},
							}),
							i(190063, {	-- Greatcloak of the Virtuous Protector
								["cost"] = {{"c", TRADERS_TENDER, 40}},
							}),
							i(190808, {	-- High Priestess's Ceremonial Drape
								["cost"] = {{"c", TRADERS_TENDER, 40}},
							}),
							i(97213, {	-- Hood of Hungering Darkness
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(189897, {	-- Infiltrator's Bandolier
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(190434, {	-- Iridescent Warcloak
								["cost"] = {{"c", TRADERS_TENDER, 40}},
							}),
							i(190144, {	-- Irontide Raiders Bicorne
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(190215, {	-- Lost Crown of the Arcane
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(190599, {	-- Operative's Bandolier
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(190898, {	-- Red Pith Helmet
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(190855, {	-- Rosy Corsage
								["cost"] = {{"c", TRADERS_TENDER, 60}},
							}),
							i(190801, {	-- Shadowy Mail Tabard
								["cost"] = {{"c", TRADERS_TENDER, 70}},
							}),
							i(190829, {	-- Shawl of Flowing Magic
								["cost"] = {{"c", TRADERS_TENDER, 40}},
							}),
							i(190433, {	-- Shifty Merchant's Tunic
								["cost"] = {{"c", TRADERS_TENDER, 40}},
							}),
							i(190806, {	-- Tidecaller’s Cinch
								["cost"] = {{"c", TRADERS_TENDER, 40}},
							}),
							i(208147, {	-- Yellow Tweed Cap
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
						}),
					},
				}),
				n(234742, {	-- Supplier Toffa <Trading Post Outlet Weapons>
					["coord"] = { 47.79, 52.55, DORNOGAL },
					["g"] = {
						filter(COSMETIC, {
							i(190832, {	-- Acolyte’s Etched Warhammer
								["cost"] = {{"c", TRADERS_TENDER, 50}},
							}),
							i(190562, {	-- Aldori War Mace
								["cost"] = {{"c", TRADERS_TENDER, 225}},
							}),
							i(190146, {	-- Antoran Felspire
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(207957, {	-- Aquamarine Felfire Bulwark
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(207959, {	-- Aquamarine Felfire Splitblade
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(190812, {	-- Azure Nexus Crescent
								["cost"] = {{"c", TRADERS_TENDER, 150}},
							}),
							i(190071, {	-- Azure Scalesworn Longbow
								["cost"] = {{"c", TRADERS_TENDER, 125}},
							}),
							i(190441, {	-- Black Iron Blunderbuss
								["cost"] = {{"c", TRADERS_TENDER, 125}},
							}),
							i(190078, {	-- Blade of Brutal Sacrifice
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(190560, {	-- Conquest
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(190689, {	-- Corrupted Bladefist
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(190438, {	-- Crimson Nexus Crescent
								["cost"] = {{"c", TRADERS_TENDER, 150}},
							}),
							i(190217, {	-- Fang of the Mountain
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(190856, {	-- Fetid Bouquet
								["cost"] = {{"c", TRADERS_TENDER, 50}},
							}),
							i(190876, {	-- Filigreed Lion's Maw
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(190690, {	-- Flame-Forged Fel Fang
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(189896, {	-- Forsaken Cresset
								["cost"] = {{"c", TRADERS_TENDER, 75}},
							}),
							i(202248, {	-- Frozen Shadow
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(190698, {	-- Gently Used Cleaver
								["cost"] = {{"c", TRADERS_TENDER, 40}},
							}),
							i(190145, {	-- Gilded Drakkonid Morningstar
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(190065, {	-- Gnomish Liquid Transfer Apparatus
								["cost"] = {{"c", TRADERS_TENDER, 50}},
							}),
							i(190204, {	-- Huntsman's Recurve Bow
								["cost"] = {{"c", TRADERS_TENDER, 40}},
							}),
							i(190153, {	-- Libram of Righteous Light
								["cost"] = {{"c", TRADERS_TENDER, 75}},
							}),
							i(190147, {	-- Longbow of the Twisted Grove
								["cost"] = {{"c", TRADERS_TENDER, 125}},
							}),
							i(190685, {	-- Lost Crusaders Azure Battleaxe
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(190814, {	-- Mephistroth's Razor
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(190546, {	-- Polished Shortsword
								["cost"] = {{"c", TRADERS_TENDER, 40}},
							}),
							i(190443, {	-- Pustulent Demonheart Fetish
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(190831, {	-- Razor-Edged Kukri
								["cost"] = {{"c", TRADERS_TENDER, 40}},
							}),
							i(190910, {	-- Ruby Felfire Bulwark
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(190909, {	-- Ruby Felfire Splitblade
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(190817, {	-- Sentinel's Tower Shield
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(190846, {	-- Shattered Voidspire
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(190557, {	-- Sinister Fel Staff
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(190447, {	-- Soulburner Bardiche
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(189871, {	-- Squire's Warhammer
								["cost"] = {{"c", TRADERS_TENDER, 50}},
							}),
							i(190821, {	-- Sunspire Battle Staff
								["cost"] = {{"c", TRADERS_TENDER, 200}},
							}),
							i(190214, {	-- Tiercel's Wing
								["cost"] = {{"c", TRADERS_TENDER, 100}},
							}),
							i(190154, {	-- Tome of Sin'dorei Secrets
								["cost"] = {{"c", TRADERS_TENDER, 75}},
							}),
							i(189895, {	-- Watchman's Flare
								["cost"] = {{"c", TRADERS_TENDER, 75}},
							}),
						}),
					},
				}),
			})
		})),
	}),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_5 }, ["u"] = NEVER_IMPLEMENTED, }, {	-- Is this tagged with NEVER_IMPLEMENTED incorrectly?
		-- These don't trigger when using ensembles, but they are listed on Wowhead
		q(65718),	-- Ensemble: Slumbering Caldera Regalia
		q(72081),	-- Ensemble: Val'sharah Protector's Battleplate
		q(72086),	-- Ensemble: Tidecaller's Chainmail
		q(72087),	-- Ensemble: Void-Bound Raiment
		q(72088),	-- Ensemble: Void-Bound Battlegear
		q(72123),	-- Ensemble: Void-Bound Chains
		q(72124),	-- Ensemble: Void-Bound Warplate
	})),
});

root(ROOTS.NeverImplemented, {
	n(TRADING_POST_NYI, bubbleDown({ ["timeline"] = { CREATED_10_0_5 }, }, {
		filter(BATTLE_PETS, {
			i(190173, {	-- Lil' Maka'jin (PET!)
				["cost"] = {{"c", TRADERS_TENDER, 750}},
			}),
		}),
		filter(COSMETIC, {
			-- 10.0.0
			expansion(EXPANSION.DF, patch(0,01), bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
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

					------ Vagabond's Plum Threads ------
					i(206323),	-- Ensemble: Vagabond's Plum Threads
					i(206279),	-- Vagabond's Plum Cape
					i(206290),	-- Vagabond's Plum Hood

					------ Wanderer's Deep Trappings ------
					i(206316),	-- Wanderer's Deep Cloak
					i(206305),	-- Wanderer's Deep Scarf

					------ Wanderer's Grassy Trappings ------
					i(206340),	-- Ensemble: Wanderer's Grassy Trappings
					i(206318),	-- Wanderer's Grassy Cloak
					i(206307),	-- Wanderer's Grassy Scarf

					------ Wanderer's Plum Trappings ------
					i(206334),	-- Ensemble: Wanderer's Plum Trappings
					i(206312),	-- Wanderer's Plum Cloak
					i(206301),	-- Wanderer's Plum Scarf
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
					i(210859),	-- Trader's Plum Sarong
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
					i(212618),	-- Dueler's Plum Shoulder Cape
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
					i(213073),	-- Faded Floral Staff
					i(190816),	-- Forgehand's "Stable" Fuel Cell
					i(213107),	-- Gladiator's Ragged Greatsword
					i(213077),	-- Lavender Bow-quet
					i(190822),	-- Mo'arg Enforcer's Halberd
					i(213076),	-- Orchid Bow-quet
					i(213063),	-- Paradise's Ruby Axe
					i(213064),	-- Paradise's Violet Axe
					i(213070),	-- Pristine Floral Stalk
					i(190900),	-- Prototype Farstrider Sniper Rifle
					i(190820),	-- Restless Void Handaxe
					i(213066),	-- Rosy Floral Edge
					i(213069),	-- Rosy Floral Stalk
					i(213072),	-- Ruby Floral Staff
					i(190891),	-- Shabby Battleaxe
					i(190903),	-- Soulburner Warscythe
					i(213067),	-- Violet Floral Edge
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
