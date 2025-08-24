---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
root(ROOTS.Craftables, expansion(EXPANSION.BFA, applyclassicphase(BFA_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	i(180055, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I
	i(180057, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II
	i(180058, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III
	i(180059, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV
	i(180060, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V
	i(152668),	-- Expulsom
	i(162460, {["timeline"] = {ADDED_8_1_0}}),	-- Hydrocore
	i(162461, {["timeline"] = {ADDED_8_1_0}}),	-- Sanguicell
	i(171320, {["timeline"] = {ADDED_8_3_0}}),	-- Void Focus
	filter(MOUNTS, {
		i(153594, {	-- Xiwyllag ATV (MOUNT!)
			["cost"] = {
				{ "i", 158887, 1 },	-- Monelite Reinforced Chassis
				{ "i", 158886, 1 },	-- Super-Charged Engine
			},
			["timeline"] = { ADDED_8_2_0 },
		}),
	}),
	prof(ALCHEMY, {
		n(DISCOVERY, {
			spell(298995, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Abyssal Alchemist Stone
				i(168757),	-- Recipe: Crushing Alchemist Stone (RECIPE!)
			})),
			spell(305993, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Awakened Alchemist Stone
				i(171084),	-- Recipe: Peerless Alchemist Stone (RECIPE!)
			})),
			spell(298996, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Crushing Alchemist Stone
				i(168758),	-- Recipe: Ascended Alchemist Stone (RECIPE!)
			})),
			spell(291085, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Imbued Alchemist Stone
				i(166978),	-- Recipe: Emblazoned Alchemist Stone (RECIPE!)
			})),
			spell(291084, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Sanguinated Alchemist Stone
				i(166977),	-- Recipe: Imbued Alchemist Stone (RECIPE!)
			})),
			spell(286922, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Spirited Alchemist Stone
				i(165930),	-- Recipe: Eternal Alchemist Stone (RECIPE!)
			})),
			spell(286921, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Tidal Alchemist Stone
				i(165929),	-- Recipe: Spirited Alchemist Stone (RECIPE!)
			})),
			spell(305994, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Unbound Alchemist Stone
				i(171086),	-- Recipe: Awakened Alchemist Stone (RECIPE!)
			})),
		}),
		filter(BATTLE_PETS, {
			spell(251808, {	-- Transmute: Meat to Pet
				i(160324, {	-- Grumbling Sac
					i(163859),	-- Baby Crawg (PET!)
					i(163861),	-- Bloated Bloodfeaster (PET!)
					i(163860),	-- Gearspring Hopper (PET!)
					i(163858),	-- Slippy (PET!)
				}),
				i(160325, {	-- Quivering Sac
					i(163859),	-- Baby Crawg (PET!)
					i(163861),	-- Bloated Bloodfeaster (PET!)
					i(163860),	-- Gearspring Hopper (PET!)
					i(163858),	-- Slippy (PET!)
				}),
			}),
		}),
		spell(286547, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Transmute: Herbs to Anchors
			i(165851, {	-- Bag of Anchors
				i(159386, {	-- Anchor Chain Girdle
					["modID"] = 1,	-- Normal Dungeon version (Siege only has heroic/mythic, but a normal version of this item drops from the transmute bag)
				}),
				i(142420, {	-- Anchor Chain Waistguard
					["modID"] = 3,	-- Normal Raid version
				}),
				i(15865),	-- Anchorhold Buckler
				i(152692),	-- Devastator Anchor Crystal
				i(151013),	-- Ethereal Anchor
			}),
		})),
		filter(CONSUMABLES, {
			i(169451, {["timeline"] = {ADDED_8_2_0}}),	-- Abyssal Healing Potion
			i(163223),	-- Battle Potion of Agility
			i(163222),	-- Battle Potion of Intellect
			i(163225),	-- Battle Potion of Stamina
			i(163224),	-- Battle Potion of Strength
			i(152494),	-- Coastal Healing Potion
			i(152495),	-- Coastal Mana Potion
			i(163082),	-- Coastal Rejuvenation Potion
			i(152496),	-- Demitri's Draught of Deception
			i(152639),	-- Flask of Endless Fathoms
			i(152638),	-- Flask of the Currents
			i(152641),	-- Flask of the Undertow
			i(152640),	-- Flask of the Vast Horizon
			i(168652, {["timeline"] = {ADDED_8_2_0}}),	-- Greater Flask of Endless Fathoms
			i(168651, {["timeline"] = {ADDED_8_2_0}}),	-- Greater Flask of the Currents
			i(168653, {["timeline"] = {ADDED_8_2_0}}),	-- Greater Flask of the Vast Horizon
			i(168654, {["timeline"] = {ADDED_8_2_0}}),	-- Greater Flask of the Undertow
			i(168656, {["timeline"] = {ADDED_8_2_0}}),	-- Greater Mystical Cauldron
			i(152497),	-- Lightfoot Potion
			i(162519),	-- Mystical Cauldron
			i(152560),	-- Potion of Bursting Blood
			i(152503),	-- Potion of Concealment
			i(168529, {["timeline"] = {ADDED_8_2_0}}),	-- Potion of Empowered Proximity
			i(168506, {["timeline"] = {ADDED_8_2_0}}),	-- Potion of Focused Resolve
			i(152561),	-- Potion of Replenishment
			i(152559),	-- Potion of Rising Death
			i(166270, {["timeline"] = {ADDED_8_1_0}}),	-- Potion of the Unveiling Eye
			i(169299, {["timeline"] = {ADDED_8_2_0}}),	-- Potion of Unbridled Fury
			i(169300, {["timeline"] = {ADDED_8_2_0}}),	-- Potion of Wild Mending
			i(152550),	-- Sea Mist Potion
			i(152557),	-- Steelskin Potion
			i(168489, {["timeline"] = {ADDED_8_2_0}}),	-- Superior Battle Potion of Agility
			i(168498, {["timeline"] = {ADDED_8_2_0}}),	-- Superior Battle Potion of Intellect
			i(168499, {["timeline"] = {ADDED_8_2_0}}),	-- Superior Battle Potion of Stamina
			i(168500, {["timeline"] = {ADDED_8_2_0}}),	-- Superior Battle Potion of Strength
			i(168501, {["timeline"] = {ADDED_8_2_0}}),	-- Superior Steelskin Potion
		}),
		filter(MISC, {
			i(165744),	-- Potion of Herb Tracking
			i(156631, {["timeline"] = {ADDED_8_1_5}}),	-- Silas' Sphere of Transmutation
			i(165721, {["timeline"] = {ADDED_8_1_0}}),	-- Vial of Obfuscation
		}),
		filter(TRINKET_F, {
			i(168674, {["timeline"] = {ADDED_8_2_0}}),	-- Abyssal Alchemist Stone
			i(168676, {["timeline"] = {ADDED_8_2_0}}),	-- Ascended Alchemist Stone
			i(171087, {["timeline"] = {ADDED_8_3_0}}),	-- Awakened Alchemist Stone
			i(168675, {["timeline"] = {ADDED_8_2_0}}),	-- Crushing Alchemist Stone
			i(166976, {["timeline"] = {ADDED_8_1_0}}),	-- Emblazoned Alchemist Stone
			i(152636),	-- Endless Tincture of Fractional Power
			i(152634),	-- Endless Tincture of Renewed Combat
			i(165928, {["timeline"] = {ADDED_8_1_0}}),	-- Eternal Alchemist Stone
			i(166975, {["timeline"] = {ADDED_8_1_0}}),	-- Imbued Alchemist Stone
			i(171085, {["timeline"] = {ADDED_8_3_0}}),	-- Peerless Alchemist Stone
			i(166974, {["timeline"] = {ADDED_8_1_0}}),	-- Sanguinated Alchemist Stone
			i(152637),	-- Siren's Alchemist Stone
			i(165927, {["timeline"] = {ADDED_8_1_0}}),	-- Spirited Alchemist Stone
			i(152632),	-- Surging Alchemist Stone
			i(165926, {["timeline"] = {ADDED_8_1_0}}),	-- Tidal Alchemist Stone
			i(171088, {["timeline"] = {ADDED_8_3_0}}),	-- Unbound Alchemist Stone
		}),
	}),
	prof(ARCHAEOLOGY, {
		i(154990),	-- Etched Drust Bone
		i(87399),	-- Restored Artifact
		i(154989),	-- Zandalari Idol
		header(HEADERS.Currency, ARCH_CURRENCY_DRUST, sharedData({["cost"]={{"c",ARCH_CURRENCY_DRUST,50}}},{ -- TODO: someone can add different fragment costs within as needed
			["provider"] = { "o", 278477 },	-- Drust Archaeology Find
			["maps"] = {
				DRUSTVAR,
				STORMSONG_VALLEY,
				TIRAGARDE_SOUND,
			},
			["groups"] = {
				i(154922),	-- Ancient Runebound Tome
				i(154921),	-- Ceremonial Bonesaw
				i(160751),	-- Dance of the Dead (TOY!)
				i(154923),	-- Disembowling Sickle
				i(160833),	-- Fetish of the Tormented Mind
				i(154924),	-- Jagged Blade of the Drust
				i(154927),	-- Pristine Ancient Runebound Tome
				i(154926),	-- Pristine Ceremonial Bonesaw
				i(154928),	-- Pristine Disembowling Sickle
				i(154929),	-- Pristine Jagged Blade of the Drust
				i(154930),	-- Pristine Ritual Fetish
				i(160742),	-- Pristine Soul Coffer
				i(161089),	-- Restored Revenant (PET!)
				i(154925),	-- Ritual Fetish
				i(160741),	-- Soul Coffer
			},
		})),
		header(HEADERS.Currency, ARCH_CURRENCY_ZANDALARI, sharedData({["cost"]={{"c",ARCH_CURRENCY_ZANDALARI,50}}},{ -- TODO: someone can add different fragment costs within as needed
			["provider"] = { "o", 278476 },	-- Zandalari Archaeology Find
			["maps"] = {
				NAZMIR,
				VOLDUN,
				ZULDAZAR,
			},
			["groups"] = {
				i(154913),	-- Akun'Jar Vase
				i(160743),	-- Blowgun of the Sethra
				i(154917),	-- Bwonsamdi Voodoo Mask
				i(160740),	-- Croak Crock (TOY!)
				i(161080),	-- Direhorn Hatchling (PET!)
				i(154916),	-- High Apothecary's Hood
				i(154931),	-- Pristine Akun'Jar Vase
				i(160744),	-- Pristine Blowgun of the Sethrak
				i(154935),	-- Pristine Bwonsamdi Voodoo Mask
				i(154934),	-- Pristine High Apothecary's Hood
				i(154933),	-- Pristine Rezan Idol
				i(154932),	-- Pristine Urn of Passage
				i(154915),	-- Rezan Idol
				i(160753),	-- Sanguinating Totem
				i(154914),	-- Urn of Passage
			},
		})),
	}),
	prof(BLACKSMITHING, {
		n(DISCOVERY, {
			spell(285081, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Enhanced Stormsteel Girdle
				i(165642),	-- Plans: Fortified Stormsteel Girdle (RECIPE!)
			})),
			spell(285082, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Enhanced Stormsteel Legguards
				i(165640),	-- Plans: Fortified Stormsteel Legguards (RECIPE!)
			})),
			spell(285089, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Fortified Stormsteel Girdle
				i(165643),	-- Plans: Tempered Stormsteel Girdle (RECIPE!)
			})),
			spell(285090, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Fortified Stormsteel Legguards
				i(165641),	-- Plans: Tempered Stormsteel Legguards (RECIPE!)
			})),
			spell(253191, {	-- Imbued Stormsteel Girdle
				i(162498),	-- Plans: Emblazoned Stormsteel Girdle (RECIPE!)
			}),
			spell(253187, {	-- Imbued Stormsteel Legguards
				i(162496),	-- Plans: Emblazoned Stormsteel Legguards (RECIPE!)
			}),
			spell(305839, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Maddening Osmenite Girdle
				i(171107),	-- Plans: Eldritch Osmenite Girdle (RECIPE!)
			})),
			spell(305842, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Maddening Osmenite Legguards
				i(171109),	-- Plans: Eldritch Osmenite Legguards (RECIPE!)
			})),
			spell(299001, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Osmenite Girdle
				i(168761),	-- Plans: Reinforced Osmenite Girdle (RECIPE!)
			})),
			spell(298998, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Osmenite Legguards
				i(168759),	-- Plans: Reinforced Osmenite Legguards (RECIPE!)
			})),
			spell(299002, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Reinforced Osmenite Girdle
				i(168762),	-- Plans: Banded Osmenite Girdle (RECIPE!)
			})),
			spell(298999, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Reinforced Osmenite Legguards
				i(168760),	-- Plans: Banded Osmenite Legguards (RECIPE!)
			})),
			spell(253190, {	-- Stormsteel Girdle
				i(162497),	-- Plans: Imbued Stormsteel Girdle (RECIPE!)
			}),
			spell(253186, {	-- Stormsteel Legguards
				i(162495),	-- Plans: Imbued Stormsteel Legguards (RECIPE!)
			}),
			spell(305840, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Unsettling Osmenite Girdle
				i(171108),	-- Plans: Maddening Osmenite Girdle (RECIPE!)
			})),
			spell(305843, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Unsettling Osmenite Legguards
				i(171110),	-- Plans: Maddening Osmenite Legguards (RECIPE!)
			})),
		}),
		n(ARMOR, {
			i(168682, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Osmenite Girdle [A]
			i(168688, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Osmenite Girdle [H]
			i(168679, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Osmenite Legguards [A]
			i(168685, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Osmenite Legguards [H]
			i(170391, {["timeline"] = {ADDED_8_3_0}}),	-- Eldritch Osmenite Girdle
			i(170388, {["timeline"] = {ADDED_8_3_0}}),	-- Eldritch Osmenite Legguards
			i(162484),	-- Emblazoned Stormsteel Girdle [A]
			i(162466),	-- Emblazoned Stormsteel Girdle [H]
			i(162483),	-- Emblazoned Stormsteel Legguards [A]
			i(162464),	-- Emblazoned Stormsteel Legguards [H]
			i(165406, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Stormsteel Girdle [A]
			i(165407, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Stormsteel Girdle [H]
			i(165379, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Stormsteel Legguards [A]
			i(165380, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Stormsteel Legguards [H]
			i(165414, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Stormsteel Girdle [A]
			i(165415, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Stormsteel Girdle [H]
			i(165389, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Stormsteel Legguards [A]
			i(165390, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Stormsteel Legguards [H]
			i(161897),	-- Honorable Combatant's Plate Armguards [A]
			i(159866),	-- Honorable Combatant's Plate Armguards [H]
			i(161893),	-- Honorable Combatant's Plate Boots [A]
			i(159860),	-- Honorable Combatant's Plate Boots [H]
			i(161894),	-- Honorable Combatant's Plate Gauntlets [A]
			i(159861),	-- Honorable Combatant's Plate Gauntlets [H]
			i(161895),	-- Honorable Combatant's Plate Greaves [A]
			i(159863),	-- Honorable Combatant's Plate Greaves [H]
			i(161896),	-- Honorable Combatant's Plate Waistguard [A]
			i(159865),	-- Honorable Combatant's Plate Waistguard [H]
			i(162492),	-- Imbued Stormsteel Girdle [A]
			i(162465),	-- Imbued Stormsteel Girdle [H]
			i(162491),	-- Imbued Stormsteel Legguards [A]
			i(162463),	-- Imbued Stormsteel Legguards [H]
			i(170390, {["timeline"] = {ADDED_8_3_0}}),	-- Maddening Osmenite Girdle
			i(170387, {["timeline"] = {ADDED_8_3_0}}),	-- Maddening Osmenite Legguards
			i(161887),	-- Monel-Hardened Armguards [A]
			i(152809),	-- Monel-Hardened Armguards [H]
			i(161881),	-- Monel-Hardened Boots [A]
			i(152803),	-- Monel-Hardened Boots [H]
			i(161880),	-- Monel-Hardened Breastplate [A]
			i(152802),	-- Monel-Hardened Breastplate [H]
			i(161882),	-- Monel-Hardened Gauntlets [A]
			i(152804),	-- Monel-Hardened Gauntlets [H]
			i(161884),	-- Monel-Hardened Greaves [A]
			i(152806),	-- Monel-Hardened Greaves [H]
			i(161883),	-- Monel-Hardened Helm [A]
			i(152805),	-- Monel-Hardened Helm [H]
			i(161885),	-- Monel-Hardened Pauldrons [A]
			i(152807),	-- Monel-Hardened Pauldrons [H]
			i(161886),	-- Monel-Hardened Waistguard [A]
			i(152808),	-- Monel-Hardened Waistguard [H]
			i(167965, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Plate Armguards [A]
			i(167964, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Plate Armguards [H]
			i(167967, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Plate Boots [A]
			i(167966, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Plate Boots [H]
			i(167969, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Plate Gauntlets [A]
			i(167968, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Plate Gauntlets [H]
			i(167971, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Plate Greaves [A]
			i(167970, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Plate Greaves [H]
			i(167973, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Plate Waistguard [A]
			i(167972, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Plate Waistguard [H]
			i(168680, {["timeline"] = {ADDED_8_2_0}}),	-- Osmenite Girdle [A]
			i(168686, {["timeline"] = {ADDED_8_2_0}}),	-- Osmenite Girdle [H]
			i(168677, {["timeline"] = {ADDED_8_2_0}}),	-- Osmenite Legguards [A]
			i(168683, {["timeline"] = {ADDED_8_2_0}}),	-- Osmenite Legguards [H]
			i(168681, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Osmenite Girdle [A]
			i(168687, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Osmenite Girdle [H]
			i(168678, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Osmenite Legguards [A]
			i(168684, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Osmenite Legguards [H]
			i(164689, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Plate Armguards [A]
			i(164657, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Plate Armguards [H]
			i(164685, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Plate Boots [A]
			i(164653, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Plate Boots [H]
			i(164686, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Plate Gauntlets [A]
			i(164654, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Plate Gauntlets [H]
			i(164687, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Plate Greaves [A]
			i(164655, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Plate Greaves [H]
			i(164688, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Plate Waistguard [A]
			i(164656, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Plate Waistguard [H]
			i(161889),	-- Stormsteel Girdle [A]
			i(152811),	-- Stormsteel Girdle [H]
			i(161888),	-- Stormsteel Legguards [A]
			i(152810),	-- Stormsteel Legguards [H]
			i(165422, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Stormsteel Girdle [A]
			i(165423, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Stormsteel Girdle [H]
			i(165397, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Stormsteel Legguards [A]
			i(165398, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Stormsteel Legguards [H]
			i(170289, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Plate Armguards [A]
			i(170301, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Plate Armguards [H]
			i(170285, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Plate Boots [A]
			i(170295, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Plate Boots [H]
			i(170297, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Plate Gauntlets [A]
			i(170286, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Plate Gauntlets [H]
			i(170287, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Plate Greaves [A]
			i(170299, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Plate Greaves [H]
			i(170288, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Plate Waistguard [A]
			i(170300, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Plate Waistguard [H]
			i(170389, {["timeline"] = {ADDED_8_3_0}}),	-- Unsettling Osmenite Girdle
			i(170386, {["timeline"] = {ADDED_8_3_0}}),	-- Unsettling Osmenite Legguards
		}),
		filter(MISC, {
			i(168417, {["timeline"] = {ADDED_8_2_0}}),	-- Inflatable Mount Shoes
			i(152839, {["timeline"] = {ADDED_8_1_5}}),	-- Khaz'gorian Smithing Hammer
			i(165746),	-- Magnetic Mining Pick
			i(152812),	-- Monel-Hardened Hoofplates
			i(152813),	-- Monel-Hardened Stirrups
			i(159826),	-- Monelite Skeleton Key
			i(165740),	-- Storm Silver Spurs
			i(165748),	-- Platinum Whetstone
		}),
		filter(MOUNTS, {
			i(158887, {["timeline"] = {ADDED_8_2_0}}),	-- Monelite Reinforced Chassis
		}),
		n(WEAPONS, {
			i(161892),	-- Honorable Combatant's Aegis [A]
			i(159851),	-- Honorable Combatant's Shield [H]
			i(161920),	-- Honorable Combatant's Cutlass [A]
			i(159853),	-- Honorable Combatant's Cutlass [H]
			i(161921),	-- Honorable Combatant's Deckpounder [A]
			i(159855),	-- Honorable Combatant's Deckpounder [H]
			i(161923),	-- Honorable Combatant's Polearm [A]
			i(159858),	-- Honorable Combatant's Polearm [H]
			i(161922),	-- Honorable Combatant's Shanker [A]
			i(159857),	-- Honorable Combatant's Shanker [H]
			i(162652),	-- Honorable Combatant's Spellblade [A]
			i(162653),	-- Honorable Combatant's Spellblade [H]
			i(161914),	-- Monel-Hardened Claymore [A]
			i(152828),	-- Monel-Hardened Claymore [H]
			i(161913),	-- Monel-Hardened Cutlass [A]
			i(152827),	-- Monel-Hardened Cutlass [H]
			i(161915),	-- Monel-Hardened Deckpounder [A]
			i(152831),	-- Monel-Hardened Deckpounder [H]
			i(161917),	-- Monel-Hardened Polearm [A]
			i(152833),	-- Monel-Hardened Polearm [H]
			i(161916),	-- Monel-Hardened Shanker [A]
			i(152832),	-- Monel-Hardened Shanker [H]
			i(161890),	-- Monel-Hardened Shield [A]
			i(152818),	-- Monel-Hardened Shield [H]
			i(167937, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Cutlass [A]
			i(167936, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Cutlass [H]
			i(167939, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Deckpounder [A]
			i(167938, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Deckpounder [H]
			i(167975, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Polearm [A]
			i(167974, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Polearm [H]
			i(167989, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Shanker [A]
			i(167988, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Shanker [H]
			i(167991, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Shield [A]
			i(167990, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Shield [H]
			i(167995, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Spellblade [A]
			i(167994, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Spellblade [H]
			i(164690, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Cutlass [A]
			i(164649, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Cutlass [H]
			i(164691, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Deckpounder [A]
			i(164650, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Deckpounder [H]
			i(164693, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Polearm [A]
			i(164652, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Polearm [H]
			i(164692, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Shanker [A]
			i(164651, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Shanker [H]
			i(164684, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Shield [A]
			i(164648, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Shield [H]
			i(164718, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Spellblade [A]
			i(164719, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Spellblade [H]
			i(161919),	-- Stormsteel Dagger [A]
			i(152835),	-- Stormsteel Dagger [H]
			i(162655),	-- Stormsteel Saber [A]
			i(162665),	-- Stormsteel Saber [H]
			i(161891),	-- Stormsteel Shield [A]
			i(152819),	-- Stormsteel Shield [H]
			i(161918),	-- Stormsteel Spear [A]
			i(152834),	-- Stormsteel Spear [H]
			i(170294, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Cutlass [A]
			i(170302, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Cutlass [H]
			i(170293, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Deckpounder [A]
			i(170366, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Deckpounder [H]
			i(170290, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Polearm [A]
			i(170311, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Polearm [H]
			i(170291, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Shanker [A]
			i(170310, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Shanker [H]
			i(170364, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Shield [A]
			i(170365, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Shield [H]
			i(170292, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Spellblade [A]
			i(170309, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Spellblade [H]
		}),
	}),
	prof(COOKING, {
		i(168311, {["timeline"] = {ADDED_8_2_0}}),	-- Abyssal-Fried Rissole
		i(168313, {["timeline"] = {ADDED_8_2_0}}),	-- Baked Port Tato
		i(174352, {["timeline"] = {ADDED_8_3_0}}),	-- Baked Voidfin
		i(168314, {["timeline"] = {ADDED_8_2_0}}),	-- Bil'Tong
		i(166804, {["timeline"] = {ADDED_8_1_0}}),	-- Boralus Blood Sausage
		i(156526),	-- Bountiful Captain's Feast
		i(174350, {["timeline"] = {ADDED_8_3_0}}),	-- Dubious Delight
		i(168315, {["timeline"] = {ADDED_8_2_0}}),	-- Famine Evaluator And Snack Table
		i(168312, {["timeline"] = {ADDED_8_2_0}}),	-- Fragrant Kakavia
		i(156525),	-- Galley Banquet
		i(174349, {["timeline"] = {ADDED_8_3_0}}),	-- Ghastly Goulash
		i(154889),	-- Grilled Catfish
		i(174348, {["timeline"] = {ADDED_8_3_0}}),	-- Grilled Gnasher
		i(163781),	-- Heartsbane Hexenwurst
		i(165755, {["timeline"] = {ADDED_8_1_0}}),	-- Honey Potpie
		i(154882),	-- Honey-Glazed Haunches
		i(174351, {["timeline"] = {ADDED_8_3_0}}),	-- K'Bab
		i(154881),	-- Kul Tiramisu
		i(154887),	-- Loa Loaf
		i(169449, {["timeline"] = {ADDED_8_2_0}}),	-- Mecha-Bytes
		i(168310, {["timeline"] = {ADDED_8_2_0}}),	-- Mech-Dowel's "Big Mech"
		i(154885),	-- Mon'Dazi
		i(154883),	-- Ravenberry Tarts
		i(166240, {["timeline"] = {ADDED_8_1_0}}),	-- Sanguinated Feast
		i(154888),	-- Sailor's Pie
		i(154891),	-- Seasoned Loins
		i(166344, {["timeline"] = {ADDED_8_1_0}}),	-- Seasoned Steak and Potatoes
		i(154886),	-- Spiced Snapper
		i(154884),	-- Swamp Fish 'n Chips
		i(169280, {["timeline"] = {ADDED_8_2_0}}),	-- Unagi Skewer
		i(166343, {["timeline"] = {ADDED_8_1_0}}),	-- Wild Berry Bread
	}),
	prof(ENCHANTING, {
		spell(13262, {	-- Disenchant
			i(152875),	-- Gloom Dust
			i(152876),	-- Umbra Shard
			i(152877),	-- Veiled Crystal
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(153437),	-- Enchant Gloves - Kul Tiran Crafting
			i(153430),	-- Enchant Gloves - Kul Tiran Herbalism
			i(153431),	-- Enchant Gloves - Kul Tiran Mining
			i(153434),	-- Enchant Gloves - Kul Tiran Skinning
			i(153435),	-- Enchant Gloves - Kul Tiran Surveying
			i(159471),	-- Enchant Gloves - Zandalari Crafting
			i(159464),	-- Enchant Gloves - Zandalari Herbalism
			i(159466),	-- Enchant Gloves - Zandalari Mining
			i(159467),	-- Enchant Gloves - Zandalari Skinning
			i(159468),	-- Enchant Gloves - Zandalari Surveying
			i(168446, {["timeline"] = {ADDED_8_2_0}}),	-- Enchant Ring - Accord of Critical Strike
			i(168447, {["timeline"] = {ADDED_8_2_0}}),	-- Enchant Ring - Accord of Haste
			i(168448, {["timeline"] = {ADDED_8_2_0}}),	-- Enchant Ring - Accord of Mastery
			i(168449, {["timeline"] = {ADDED_8_2_0}}),	-- Enchant Ring - Accord of Versatility
			i(153442),	-- Enchant Ring - Pact of Critical Strike
			i(153443),	-- Enchant Ring - Pact of Haste
			i(153444),	-- Enchant Ring - Pact of Mastery
			i(153445),	-- Enchant Ring - Pact of Versatility
			i(153438),	-- Enchant Ring - Seal of Critical Strike
			i(153439),	-- Enchant Ring - Seal of Haste
			i(153440),	-- Enchant Ring - Seal of Mastery
			i(153441),	-- Enchant Ring - Seal of Versatility
			i(160330),	-- Enchant Bracers - Cooled Hearthing
			i(160328),	-- Enchant Bracers - Safe Hearthing
			i(159469),	-- Enchant Bracers - Swift Hearthing [A]
			i(153436),	-- Enchant Bracers - Swift Hearthing [H]
		}),
		filter(MISC, {
			i(165741),	-- Disenchanting Rod
			i(164766, {["timeline"] = {ADDED_8_1_5}}),	-- Iwen's Enchanting Rod
			i(168412, {["timeline"] = {ADDED_8_2_0}}),	-- Light-Step Hoofplates
		}),
		filter(BATTLE_PETS, sharedDataSelf({ ["timeline"] = { ADDED_8_1_0 } }, {
			i(152878),	-- Enchanted Tiki Mask (PET!)
		})),
		n(WEAPON_ENCHANTMENTS, {
			i(153476),	-- Enchant Weapon - Coastal Surge
			i(159785),	-- Enchant Weapon - Deadly Navigation
			i(168596, {["timeline"] = {ADDED_8_2_0}}),	-- Enchant Weapon - Force Multiplier
			i(153480),	-- Enchant Weapon - Gale-Force Striking
			i(168593, {["timeline"] = {ADDED_8_2_0}}),	-- Enchant Weapon - Machinist's Brilliance
			i(159787),	-- Enchant Weapon - Masterful Navigation
			i(168598, {["timeline"] = {ADDED_8_2_0}}),	-- Enchant Weapon - Naga Hide
			i(168592, {["timeline"] = {ADDED_8_2_0}}),	-- Enchant Weapon - Oceanic Restoration
			i(159786),	-- Enchant Weapon - Quick Navigation
			i(153478),	-- Enchant Weapon - Siphoning
			i(159789),	-- Enchant Weapon - Stalwart Navigation
			i(153479),	-- Enchant Weapon - Torrent of Elements
			i(159788),	-- Enchant Weapon - Versatile Navigation
		}),
		n(WEAPONS, {
			i(161927),	-- Enchanter's Sorcerous Scepter [A]
			i(152874),	-- Enchanter's Sorcerous Scepter [H]
			i(161925),	-- Enchanter's Umbral Wand [A]
			i(152872),	-- Enchanter's Umbral Wand [H]
			i(161928),	-- Honorable Combatant's Sorcerous Scepter [A]
			i(159922),	-- Honorable Combatant's Sorcerous Scepter [H]
			i(167993, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Sorcerous Scepter [A]
			i(167992, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Sorcerous Scepter [H]
			i(164694, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Sorcerous Scepter [A]
			i(164677, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Sorcerous Scepter [H]
			i(170312, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Sorcerous Scepter [A]
			i(170307, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Sorcerous Scepter [H]
		}),
	}),
	prof(ENGINEERING, {
		n(DISCOVERY, {
			spell(305951, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- A-N0M-A-L0U5 Bionic Bifocals
				i(170408),	-- Schematic: Superior Bionic Bifocals (RECIPE!)
			})),
			spell(305942, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- A-N0M-A-L0U5 Gearspun Goggles
				i(170406),	-- Schematic: Superior Gearspun Goggles (RECIPE!)
			})),
			spell(305948, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- A-N0M-A-L0U5 Orthogonal Optics
				i(170410),	-- Schematic: Superior Orthogonal Optics (RECIPE!)
			})),
			spell(305945, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- A-N0M-A-L0U5 Synthetic Specs
				i(170404),	-- Schematic: Superior Synthetic Specs (RECIPE!)
			})),
			spell(299010, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Abyssal Bionic Bifocals
				i(168767),	-- Schematic: A5C-3N-D3D Bionic Bifocals (RECIPE!)
			})),
			spell(299007, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Abyssal Gearspun Goggles
				i(168765),	-- Schematic: A5C-3N-D3D Gearspun Goggles (RECIPE!)
			})),
			spell(299013, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Abyssal Orthogonal Optics
				i(168769),	-- Schematic: A5C-3N-D3D Orthogonal Optics (RECIPE!)
			})),
			spell(299004, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Abyssal Synthetic Specs
				i(168763),	-- Schematic: A5C-3N-D3D Synthetic Specs (RECIPE!)
			})),
			spell(299011, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- A5C-3N-D3D Bionic Bifocals
				i(168768),	-- Schematic: Charged A5C-3N-D3D Bionic Bifocals (RECIPE!)
			})),
			spell(299008, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- A5C-3N-D3D Gearspun Goggles
				i(168766),	-- Schematic: Charged A5C-3N-D3D Gearspun Goggles (RECIPE!)
			})),
			spell(299014, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- A5C-3N-D3D Orthogonal Optics
				i(168770),	-- Schematic: Charged A5C-3N-D3D Orthogonal Optics (RECIPE!)
			})),
			spell(299005, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- A5C-3N-D3D Synthetic Specs
				i(168764),	-- Schematic: Charged A5C-3N-D3D Synthetic Specs (RECIPE!)
			})),
			spell(291093, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Imbued Bionic Bifocals
				i(166989),	-- Schematic: Emblazoned Bionic Bifocals (RECIPE!)
			})),
			spell(291091, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Imbued Gearspun Goggles
				i(166988),	-- Schematic: Emblazoned Gearspun Goggles (RECIPE!)
			})),
			spell(291095, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Imbued Orthogonal Optics
				i(166990),	-- Schematic: Emblazoned Orthogonal Optics (RECIPE!)
			})),
			spell(291089, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Imbued Synthetic Specs
				i(166987),	-- Schematic: Emblazoned Synthetic Specs (RECIPE!)
			})),
			spell(286865, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- SP1-R1-73D Bionic Bifocals
				i(165912),	-- Schematic: Charged SP1-R1-73D Bionic Bifocals (RECIPE!)
			})),
			spell(286868, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- SP1-R1-73D Gearspun Goggles
				i(165914),	-- Schematic: Charged SP1-R1-73D Gearspun Goggles (RECIPE!)
			})),
			spell(286871, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- SP1-R1-73D Orthogonal Optics
				i(165916),	-- Schematic: Charged SP1-R1-73D Orthogonal Optics (RECIPE!)
			})),
			spell(286874, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- SP1-R1-73D Synthetic Specs
				i(165918),	-- Schematic: Charged SP1-R1-73D Synthetic Specs (RECIPE!)
			})),
			spell(305950, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Superior Bionic Bifocals
				i(170409),	-- Schematic: Paramount Bionic Bifocals (RECIPE!)
			})),
			spell(305941, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Superior Gearspun Goggles
				i(170407),	-- Schematic: Paramount Gearspun Goggles (RECIPE!)
			})),
			spell(305947, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Superior Orthogonal Optics
				i(170411),	-- Schematic: Paramount Orthogonal Optics (RECIPE!)
			})),
			spell(305944, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Superior Synthetic Specs
				i(170405),	-- Schematic: Paramount Synthetic Specs (RECIPE!)
			})),
			spell(286864, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Surging Bionic Bifocals
				i(165911),	-- Schematic: SP1-R1-73D Bionic Bifocals (RECIPE!)
			})),
			spell(286867, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Surging Gearspun Goggles
				i(165913),	-- Schematic: SP1-R1-73D Gearspun Goggles (RECIPE!)
			})),
			spell(286870, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Surging Orthogonal Optics
				i(165915),	-- Schematic: SP1-R1-73D Orthogonal Optics (RECIPE!)
			})),
			spell(286873, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Surging Synthetic Specs
				i(165917),	-- Schematic: SP1-R1-73D Synthetic Specs (RECIPE!)
			})),
		}),
		n(ARMOR, {
			filter(CLOTH, {
				i(171008, {["timeline"] = {ADDED_8_3_0}}),	-- A-N0M-A-L0U5 Synthetic Specs
				i(168689, {["timeline"] = {ADDED_8_2_0}}),	-- Abyssal Synthetic Specs
				i(168690, {["timeline"] = {ADDED_8_2_0}}),	-- A5C-3N-D3D Synthetic Specs
				i(160488),	-- AZ3-R1-T3 Synthetic Specs
				i(168691, {["timeline"] = {ADDED_8_2_0}}),	-- Charged A5C-3N-D3D Synthetic Specs
				i(165895, {["timeline"] = {ADDED_8_1_0}}),	-- Charged SP1-R1-73D Synthetic Specs
				i(166980, {["timeline"] = {ADDED_8_1_0}}),	-- Emblazoned Synthetic Specs
				i(166979, {["timeline"] = {ADDED_8_1_0}}),	-- Imbued Synthetic Specs
				i(171006, {["timeline"] = {ADDED_8_3_0}}),	-- Paramount Synthetic Specs
				i(165890, {["timeline"] = {ADDED_8_1_0}}),	-- SP1-R1-73D Synthetic Specs
				i(171007, {["timeline"] = {ADDED_8_3_0}}),	-- Superior Synthetic Specs
				i(165885, {["timeline"] = {ADDED_8_1_0}}),	-- Surging Synthetic Specs
			}),
			filter(LEATHER, {
				i(171005, {["timeline"] = {ADDED_8_3_0}}),	-- A-N0M-A-L0U5 Gearspun Goggles
				i(168692, {["timeline"] = {ADDED_8_2_0}}),	-- Abyssal Gearspun Goggles
				i(168693, {["timeline"] = {ADDED_8_2_0}}),	-- A5C-3N-D3D Gearspun Goggles
				i(160489),	-- AZ3-R1-T3 Gearspun Goggles
				i(168694, {["timeline"] = {ADDED_8_2_0}}),	-- Charged A5C-3N-D3D Gearspun Goggles
				i(165896, {["timeline"] = {ADDED_8_1_0}}),	-- Charged SP1-R1-73D Gearspun Goggles
				i(166982, {["timeline"] = {ADDED_8_1_0}}),	-- Emblazoned Gearspun Goggles
				i(166981, {["timeline"] = {ADDED_8_1_0}}),	-- Imbued Gearspun Goggles
				i(171003, {["timeline"] = {ADDED_8_3_0}}),	-- Paramount Gearspun Goggles
				i(165891, {["timeline"] = {ADDED_8_1_0}}),	-- SP1-R1-73D Gearspun Goggles
				i(171004, {["timeline"] = {ADDED_8_3_0}}),	-- Superior Gearspun Goggles
				i(165886, {["timeline"] = {ADDED_8_1_0}}),	-- Surging Gearspun Goggles
			}),
			filter(MAIL, {
				i(171014, {["timeline"] = {ADDED_8_3_0}}),	-- A-N0M-A-L0U5 Bionic Bifocals
				i(168695, {["timeline"] = {ADDED_8_2_0}}),	-- Abyssal Bionic Bifocals
				i(168696, {["timeline"] = {ADDED_8_2_0}}),	-- A5C-3N-D3D Bionic Bifocals
				i(160490),	-- AZ3-R1-T3 Bionic Bifocals
				i(168697, {["timeline"] = {ADDED_8_2_0}}),	-- Charged A5C-3N-D3D Bionic Bifocals
				i(165897, {["timeline"] = {ADDED_8_1_0}}),	-- Charged SP1-R1-73D Bionic Bifocals
				i(166984, {["timeline"] = {ADDED_8_1_0}}),	-- Emblazoned Bionic Bifocals
				i(166983, {["timeline"] = {ADDED_8_1_0}}),	-- Imbued Bionic Bifocals
				i(171012, {["timeline"] = {ADDED_8_3_0}}),	-- Paramount Bionic Bifocals
				i(165892, {["timeline"] = {ADDED_8_1_0}}),	-- SP1-R1-73D Bionic Bifocals
				i(171013, {["timeline"] = {ADDED_8_3_0}}),	-- Superior Bionic Bifocals
				i(165887, {["timeline"] = {ADDED_8_1_0}}),	-- Surging Bionic Bifocals
			}),
			filter(PLATE, {
				i(171011, {["timeline"] = {ADDED_8_3_0}}),	-- A-N0M-A-L0U5 Orthogonal Optics
				i(168698, {["timeline"] = {ADDED_8_2_0}}),	-- Abyssal Orthogonal Optics
				i(168699, {["timeline"] = {ADDED_8_2_0}}),	-- A5C-3N-D3D Orthogonal Optics
				i(160491),	-- AZ3-R1-T3 Orthogonal Optics
				i(168700, {["timeline"] = {ADDED_8_2_0}}),	-- Charged A5C-3N-D3D Orthogonal Optics
				i(165898, {["timeline"] = {ADDED_8_1_0}}),	-- Charged SP1-R1-73D Orthogonal Optics
				i(166986, {["timeline"] = {ADDED_8_1_0}}),	-- Emblazoned Orthogonal Optics
				i(166985, {["timeline"] = {ADDED_8_1_0}}),	-- Imbued Orthogonal Optics
				i(171009, {["timeline"] = {ADDED_8_3_0}}),	-- Paramount Orthogonal Optics
				i(165893, {["timeline"] = {ADDED_8_1_0}}),	-- SP1-R1-73D Orthogonal Optics
				i(171010, {["timeline"] = {ADDED_8_3_0}}),	-- Superior Orthogonal Optics
				i(165888, {["timeline"] = {ADDED_8_1_0}}),	-- Surging Orthogonal Optics
			}),
		}),
		filter(BATTLE_PETS, {
			i(165849, {["timeline"] = {ADDED_8_1_0}}),	-- Mechantula (PET!)
		}),
		filter(MISC, {
			i(153597),	-- Deployable Attire Rearranger
			i(153573),	-- Electroshock Mount Motivator
			i(153490),	-- F.R.I.E.D.
			i(153510),	-- Interdimensional Companion Repository
			i(158380),	-- Magical Intrusion Dampener
			i(162107, {["timeline"] = {ADDED_8_0_1_LAUNCH, REMOVED_8_1_0}}),-- Makeshift Azerite Detector
			i(165738, {["timeline"] = {ADDED_8_1_0}}),	-- Makeshift Azerite Detector
			i(162111, {["timeline"] = {ADDED_8_0_1_LAUNCH, REMOVED_8_1_0}}),	-- Monelite Fish Finder
			i(165742, {["timeline"] = {ADDED_8_1_0}}),	-- Monelite Fish Finder
			i(153487),	-- Organic Discombobulation Grena
			i(153494),	-- Thermo-Accelerated Plague Spreader
			i(164913, {["timeline"] = {ADDED_8_1_5}}),	-- Ub3r Module: Short-Fused Boom Bots
			i(164914, {["timeline"] = {ADDED_8_1_5}}),	-- Ub3r Module: Ub3r-Improved Target Dummy
			i(164915, {["timeline"] = {ADDED_8_1_5}}),	-- Ub3r Module: Ub3r S3ntry Mk. X8.0
			i(168521, {["timeline"] = {ADDED_8_2_0}}),	-- Ub3r Module: P.O.G.O
			i(168523, {["timeline"] = {ADDED_8_2_0}}),	-- Ub3r Module: Scrap Cannon
			i(168522, {["timeline"] = {ADDED_8_2_0}}),	-- Ub3r Module: Ub3r-Coil
			i(164740, {["timeline"] = {ADDED_8_1_5}}),	-- Ub3r-Spanner
			i(158379, {["timeline"] = {ADDED_8_1_0}}),	-- Unstable Temporal Time Shifter
			i(153512),	-- XA-1000 Surface Skimmer
		}),
		filter(MOUNTS, {
			i(161134),	-- Mecha-Mogul Mk2 (MOUNT!)
			i(158886, {["timeline"] = {ADDED_8_2_0}}),	-- Super-Charged Engine
		}),
		filter(TOYS, {
			i(168667, {["timeline"] = {ADDED_8_2_0}}),	-- Blingtron 7000 (TOY!)
			i(168807, {["timeline"] = {ADDED_8_2_0}}),	-- Wormhole Generator: Kul Tiras (TOY!)
			i(168808, {["timeline"] = {ADDED_8_2_0}}),	-- Wormhole Generator: Zandalar (TOY!)
		}),
		n(WEAPONS, {
			i(161930),	-- Finely-Tuned Stormsteel Destroyer [A]
			i(153506),	-- Finely-Tuned Stormsteel Destroyer [H]
			i(159937),	-- Honorable Combatant's Discombobulator
			i(161931),	-- Honorable Combatant's Stormsteel Destroyer [A]
			i(159936),	-- Honorable Combatant's Stormsteel Destroyer [H]
			i(152830),	-- Magnetic Discombobulator
			i(167940, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Discombobulator
			i(167997, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Stormsteel Destroyer [A]
			i(167996, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Stormsteel Destroyer [H]
			i(152837),	-- Precision Attitude Adjuster
			i(164680, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Discombobulator
			i(164696, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Stormsteel Destroyer [A]
			i(164679, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Stormsteel Destroyer [H]
			i(170313, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Discombobulator
			i(170314, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Stormsteel Destroyer [A]
			i(170315, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Stormsteel Destroyer [H]
		}),
		n(WEAPON_ENCHANTMENTS, {
			i(158212),	-- Crow's Nest Scope
			i(158377),	-- Frost-Laced Ammunition
			i(158203),	-- Incendiary Ammunition
			i(158327),	-- Monelite Scope of Alacrity
		}),
	}),
	prof(FISHING, {
		i(174328, {["timeline"] = {ADDED_8_3_0}}),	-- Aberrant Voidfin
		i(152545),	-- Frenzied Fangtooth
		i(152547),	-- Great Sea Catfish
		i(163131, {	-- Great Sea Ray (MOUNT!)
			["description"] = "Caught in any waters in Kul Tiras or Zandalar, including Mechagon (but not Nazjatar).",
		}),
		i(167562, {["timeline"] = {ADDED_8_2_0}}),	-- Ionized Minnow
		i(152546),	-- Lane Snapper
		i(174327, {["timeline"] = {ADDED_8_3_0}}),	-- Malformed Gnasher
		i(168646, {["timeline"] = {ADDED_8_2_0}}),	-- Mauve Stinger
		i(162515),	-- Midnight Salmon
		i(152549),	-- Redtail Loach
		i(152543),	-- Sand Shifter
		i(152544),	-- Slimy Mackerel
		i(152548),	-- Tiragarde Perch
		i(168302, {["timeline"] = {ADDED_8_2_0}}),	-- Viper Fish
		spell(273293, {	-- Aromatic Fish Oil
			i(160711),	-- Aromatic Fish Oil
		}),
		filter(RECIPES, {
			i(34109, {	-- Weather-Beaten Journal (RECIPE!)
				["description"] = "Can be fished from schools.",
			}),
		}),
	}),
	prof(HERBALISM, {
		spell(2366, {	-- Herb Gathering
			i(152507),	-- Akunda's Bite
			i(152510),	-- Anchor Weed
			i(159877),	-- Dead Pollen-Covered Bee
			i(160250),	-- Dead Pollen-Covered Bee
			i(159956),	-- Disgustingly Damp Flower
			i(160301),	-- Disgustingly Damp Flower
			i(160035),	-- Enormous Anchor Pod
			i(160064),	-- The Frigid Boon
			i(160117),	-- Fully Charged Lightning Pod
			i(152505),	-- Riverbud
			i(152511),	-- Sea Stalk
			i(152509),	-- Siren's Pollen
			i(152506),	-- Star Moss
			i(152508),	-- Winter's Kiss
			i(168487, {["timeline"] = {ADDED_8_2_0}}),	-- Zin'anthid
			i(168919, {["timeline"] = {ADDED_8_2_0}}),	-- Zin'anthid Tentacle
			i(169596, {["timeline"] = {ADDED_8_2_0}}),	-- Zin'anthid Tentacle
		}),
	}),
	prof(INSCRIPTION, {
		header(HEADERS.Spell, 382984, {	-- Kul Tiras and Zandalar Milling
			i(153636),	-- Crimson Pigment
			i(153635),	-- Ultramarine Pigment
			i(153669),	-- Viridescent Pigment
		}),
		filter(GLYPHS, {
			i(170173, {["timeline"] = {ADDED_8_2_5}}),	-- Glyph of Dire Bees
			i(172449, {["timeline"] = {ADDED_8_2_5}}),	-- Glyph of Lavish Servings
			i(170165, {["timeline"] = {ADDED_8_2_0}}),	-- Glyph of Steaming Fury
			i(166664, {["timeline"] = {ADDED_8_1_0}}),	-- Glyph of Storm's Wake
			i(184100, {["timeline"] = {ADDED_9_0_1}}),	-- Glyph of the Aerial Chameleon
			i(184097, {["timeline"] = {ADDED_9_0_1}}),	-- Glyph of the Aquatic Chameleon
			i(170168, {["timeline"] = {ADDED_8_2_0}}),	-- Glyph of the Cold Waves
			i(170164, {["timeline"] = {ADDED_8_2_0}}),	-- Glyph of the Dark Depths
			i(184096, {["timeline"] = {ADDED_9_0_1}}),	-- Glyph of the Swift Chameleon
			i(166583, {["timeline"] = {ADDED_8_1_0}}),	-- Glyph of the Tides
			i(162022),	-- Mark of the Dolphin (CI!)
			i(162029),	-- Mark of the Humble Flyer (CI!)
			i(162027),	-- Mark of the Tideskipper (CI!)
		}),
		n(WEAPONS, {
			i(161936),	-- Honorable Combatant's Etched Vessel [A]
			i(159940),	-- Honorable Combatant's Etched Vessel [H]
			i(161934),	-- Inscribed Vessel of Mysticism [A]
			i(153643),	-- Inscribed Vessel of Mysticism [H]
			i(167942, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Etched Vessel [A]
			i(167941, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Etched Vessel [H]
			i(164697, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Etched Vessel [A]
			i(164682, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Etched Vessel [H]
			i(170316, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Etched Vessel [A]
			i(170317, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Etched Vessel [H]
		}),
		filter(MISC, {
			i(156637, {["timeline"] = {ADDED_8_1_5}}),	-- Blood Contract: Bloodguard
			i(156638, {["timeline"] = {ADDED_8_1_5}}),	-- Blood Contract: Bloodshed
			i(156636, {["timeline"] = {ADDED_8_1_5}}),	-- Blood Contract: Oblivion
			i(156563, {["timeline"] = {ADDED_8_1_5}}),	-- Blood Contract: Sacrifice
			i(153646),	-- Codex of the Quiet Mind
			i(165016, {["timeline"] = {ADDED_8_1_0}}),	-- Contract: 7th Legion
			i(168956, {["timeline"] = {ADDED_8_2_0}}),	-- Contract: Ankoan
			i(153668),	-- Contract: Champions of Azeroth
			i(153662),	-- Contract: Order of Embers
			i(153661),	-- Contract: Proudmoore Admiralty
			i(172008, {["timeline"] = {ADDED_8_3_0}}),	-- Contract: Rajani
			i(168960, {["timeline"] = {ADDED_8_2_0}}),	-- Contract: Rustbolt Resistance
			i(153663),	-- Contract: Storm's Wake
			i(153665),	-- Contract: Talanji's Expedition
			i(165017, {["timeline"] = {ADDED_8_1_0}}),	-- Contract: The Honorbound
			i(153667),	-- Contract: Tortollan Seekers
			i(172010, {["timeline"] = {ADDED_8_3_0}}),	-- Contract: Uldum Accord
			i(168959, {["timeline"] = {ADDED_8_2_0}}),	-- Contract: Unshackled
			i(153666),	-- Contract: Voldunai
			i(153664),	-- Contract: Zandalari Empire
			i(162114, {["timeline"] = {ADDED_8_0_1_LAUNCH, REMOVED_8_1_0}}),	-- Crimson Ink Well
			i(165745, {["timeline"] = {ADDED_8_1_0}}),	-- Crimson Ink Well
			i(153670, {["timeline"] = {ADDED_8_1_5}}),	-- Sanguine Feather Quill of Lana'thel
			i(159825),	-- Scroll of Unlocking
			i(153647),	-- Tome of the Quiet Mind
			i(165733, {["timeline"] = {ADDED_8_1_5}}),	-- Vantus Rune: Crucible of Storms
			i(165692, {["timeline"] = {ADDED_8_1_0}}),	-- Vantus Rune: Battle of Dazar'alor
			i(171203, {["timeline"] = {ADDED_8_3_0}}),	-- Vantus Rune: Ny'alotha, the Waking City
			i(168624, {["timeline"] = {ADDED_8_2_0}}),	-- Vantus Rune: The Eternal Palace
			i(153673),	-- Vantus Rune: Uldir
			i(158201),	-- War-Scroll of Intellect
			i(158204),	-- War-Scroll of Fortitude
			i(158202),	-- War-Scroll of Battle Shout
		}),
		filter(REAGENTS, {
			i(158188),	-- Crimson Ink
			i(168663, {["timeline"] = {ADDED_8_2_0}}),	-- Maroon Ink
			i(158187),	-- Ultramarine Ink
			i(158189),	-- Viridescent Ink
			i(153598),	-- Darkmoon Card of War
			i(153606),	-- Ace of Blockades
			i(153628),	-- Two of Blockades
			i(153629),	-- Three of Blockades
			i(153630),	-- Four of Blockades
			i(153631),	-- Five of Blockades
			i(153632),	-- Six of Blockades
			i(153633),	-- Seven of Blockades
			i(153634),	-- Eight of Blockades
			i(153605),	-- Ace of Fathoms
			i(153621),	-- Two of Fathoms
			i(153622),	-- Three of Fathoms
			i(153623),	-- Four of Fathoms
			i(153624),	-- Five of Fathoms
			i(153625),	-- Six of Fathoms
			i(153626),	-- Seven of Fathoms
			i(153627),	-- Eight of Fathoms
			i(153604),	-- Ace of Squalls
			i(153614),	-- Two of Squalls
			i(153615),	-- Three of Squalls
			i(153616),	-- Four of Squalls
			i(153617),	-- Five of Squalls
			i(153618),	-- Six of Squalls
			i(153619),	-- Seven of Squalls
			i(153620),	-- Eight of Squalls
			i(153603),	-- Ace of the Tides
			i(153607),	-- Two of the Tides
			i(153608),	-- Three of the Tides
			i(153609),	-- Four of the Tides
			i(153610),	-- Five of the Tides
			i(153611),	-- Six of the Tides
			i(153612),	-- Seven of the Tides
			i(153613),	-- Eight of the Tides
		}),
		filter(TRINKET_F, {
			i(159128),	-- Darkmoon Deck: Blockades
			i(159125),	-- Darkmoon Deck: Fathoms
			i(159126),	-- Darkmoon Deck: Squalls
			i(159127),	-- Darkmoon Deck: Tides
			i(169302, {["timeline"] = {ADDED_8_2_0}}),	-- Highborne Compendium of Mystical Bulwark
			i(169328, {["timeline"] = {ADDED_8_2_0}}),	-- Highborne Compendium of Storms
			i(169321, {["timeline"] = {ADDED_8_2_0}}),	-- Highborne Compendium of Sundering
			i(169301, {["timeline"] = {ADDED_8_2_0}}),	-- Highborne Compendium of Swirling Tides
		}),
	}),
	prof(JEWELCRAFTING, {
		n(DISCOVERY, {
			spell(305981, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Awakened Leviathan's Eye Loop
				i(171082),	-- Design: Peerless Leviathan's Eye Loop (RECIPE!)
			})),
			spell(299018, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Crushing Leviathan's Eye Loop
				i(168772),	-- Design: Ascended Leviathan's Eye Loop (RECIPE!)
			})),
			spell(289174, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Imbued Kraken's Eye Loop
				i(166541),	-- Design: Emblazoned Kraken's Eye Loop (RECIPE!)
			})),
			spell(289105, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Kraken's Eye Loop
				i(166540),	-- Design: Imbued Kraken's Eye Loop (RECIPE!)
			})),
			spell(299016, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Leviathan's Eye Loop
				i(168771),	-- Design: Crushing Leviathan's Eye Loop (RECIPE!)
			})),
			spell(289180, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Spirited Kraken's Eye Loop
				i(166543),	-- Design: Eternal Kraken's Eye Loop (RECIPE!)
			})),
			spell(289179, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Tidal Kraken's Eye Loop
				i(166542),	-- Design: Spirited Kraken's Eye Loop (RECIPE!)
			})),
			spell(305982, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Unbound Leviathan's Eye Loop
				i(171083),	-- Design: Awakened Leviathan's Eye Loop (RECIPE!)
			})),
		}),
		header(HEADERS.Spell, 382973, {	-- Kul Tiras and Zandalar Prospecting
			i(154123),	-- Amberblaze
			i(168193, { ["timeline"] = { ADDED_8_2_0 } }),	-- Azsharine
			i(168189, { ["timeline"] = { ADDED_8_2_0 } }),	-- Dark Opal
			i(153700),	-- Golden Beryl
			i(153706),	-- Kraken's Eye
			i(153702),	-- Kubiline
			i(153705),	-- Kyanite
			i(154124),	-- Laribole
			i(168190, { ["timeline"] = { ADDED_8_2_0 } }),	-- Lava Lazuli
			i(154120),	-- Owlseye
			i(154125),	-- Royal Quartz
			i(153701),	-- Rubellite
			i(168192, { ["timeline"] = { ADDED_8_2_0 } }),	-- Sand Spinel
			i(154121),	-- Scarlet Diamond
			i(168191, { ["timeline"] = { ADDED_8_2_0 } }),	-- Sea Currant
			i(153703),	-- Solstone
			i(154122),	-- Tidal Amethyst
			i(153704),	-- Viridium
		}),
		filter(FINGER_F, {
			i(153686),	-- Amberblaze Loop
			i(168703, {["timeline"] = {ADDED_8_2_0}}),	-- Ascended Leviathan's Eye Loop
			i(171076, {["timeline"] = {ADDED_8_3_0}}),	-- Awakened Leviathan's Eye Loop
			i(168702, {["timeline"] = {ADDED_8_2_0}}),	-- Crushing Leviathan's Eye Loop
			i(166521, {["timeline"] = {ADDED_8_1_0}}),	-- Emblazoned Kraken's Eye Loop
			i(166524, {["timeline"] = {ADDED_8_1_0}}),	-- Eternal Kraken's Eye Loop
			i(153689),	-- Golden Beryl Ring
			i(166520, {["timeline"] = {ADDED_8_1_0}}),	-- Imbued Kraken's Eye Loop
			i(166519, {["timeline"] = {ADDED_8_1_0}}),	-- Kraken's Eye Loop
			i(153688),	-- Kubiline Ring
			i(153687),	-- Kyanite Ring
			i(168701, {["timeline"] = {ADDED_8_2_0}}),	-- Leviathan's Eye Loop
			i(153685),	-- Owlseye Loop
			i(171075, {["timeline"] = {ADDED_8_3_0}}),	-- Peerless Leviathan's Eye Loop
			i(153683),	-- Royal Quartz Loop
			i(153690),	-- Solstone Ring
			i(166523, {["timeline"] = {ADDED_8_1_0}}),	-- Spirited Kraken's Eye Loop
			i(153684),	-- Tidal Amethyst Loop
			i(166522, {["timeline"] = {ADDED_8_1_0}}),	-- Tidal Kraken's Eye Loop
			i(171077, {["timeline"] = {ADDED_8_3_0}}),	-- Unbound Leviathan's Eye Loop
		}),
		filter(GEMS, {
			i(154126),	-- Deadly Amberblaze
			i(153710),	-- Deadly Solstone
			i(168639, {["timeline"] = {ADDED_8_2_0}}),	-- Deadly Lava Lazuli
			i(153708),	-- Kraken's Eye of Agility
			i(153709),	-- Kraken's Eye of Intellect
			i(153707),	-- Kraken's Eye of Strength
			i(168637, {["timeline"] = {ADDED_8_2_0}}),	-- Leviathan's Eye of Agility
			i(168638, {["timeline"] = {ADDED_8_2_0}}),	-- Leviathan's Eye of Intellect
			i(168636, {["timeline"] = {ADDED_8_2_0}}),	-- Leviathan's Eye of Strength
			i(153713),	-- Masterful Kubiline
			i(168640, {["timeline"] = {ADDED_8_2_0}}),	-- Masterful Sea Currant
			i(154129),	-- Masterful Tidal Amethyst
			i(153714),	-- Natant Rubellite
			i(153711),	-- Quick Golden Beryl
			i(154127),	-- Quick Owlseye
			i(168641, {["timeline"] = {ADDED_8_2_0}}),	-- Quick Sand Spinel
			i(169220, {["timeline"] = {ADDED_8_2_0}}),	-- Straddling Sage Agate
			i(153715),	-- Straddling Viridium
			i(168642, {["timeline"] = {ADDED_8_2_0}}),	-- Versatile Dark Opal
			i(153712),	-- Versatile Kyanite
			i(154128),	-- Versatile Royal Quartz
		}),
		filter(MISC, {
			i(153716, {["timeline"] = {ADDED_8_1_5}}),	-- Jewelhammer's Focus
			i(162112, {["timeline"] = {ADDED_8_0_1_LAUNCH, REMOVED_8_1_0}}),	-- Kaleidoscopic Lens
			i(165743, {["timeline"] = {ADDED_8_1_0}}),	-- Kaleidoscopic Lens
		}),
		n(WEAPONS, {
			i(159939),	-- Honorable Combatant's Staff of Intuition
			i(153639),	-- Laribole Staff of Alacrity
			i(167943, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Intuitive Staff
			i(153637),	-- Rubellite Staff of Intuition
			i(153640),	-- Scarlet Diamond Staff of Intuition
			i(164681, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Staff of Intuition
			i(170318, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Intuitive Staff
			i(153638),	-- Viridium Staff of Alacrity
		}),
	}),
	prof(LEATHERWORKING, {
		n(DISCOVERY, {
			spell(299025, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Cragscale Boots
				i(168777),	-- Pattern: Reinforced Cragscale Boots (RECIPE!)
			})),
			spell(299028, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Cragscale Greaves
				i(168779),	-- Pattern: Reinforced Cragscale Greaves (RECIPE!)
			})),
			spell(299019, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Dredged Leather Boots
				i(168773),	-- Pattern: Reinforced Dredged Boots (RECIPE!)
			})),
			spell(299022, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Dredged Leather Leggings
				i(168775),	-- Pattern: Reinforced Dredged Leggings (RECIPE!)
			})),
			spell(285079, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Enhanced Mistscale Boots
				i(165648),	-- Pattern: Fortified Mistscale Boots (RECIPE!)
			})),
			spell(285080, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Enhanced Mistscale Greaves
				i(165650),	-- Pattern: Fortified Mistscale Greaves (RECIPE!)
			})),
			spell(285083, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Enhanced Tempest Boots
				i(165644),	-- Pattern: Fortified Tempest Boots (RECIPE!)
			})),
			spell(285084, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Enhanced Tempest Leggings
				i(165646),	-- Pattern: Fortified Tempest Leggings (RECIPE!)
			})),
			spell(285087, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Fortified Mistscale Boots
				i(165649),	-- Pattern: Tempered Mistscale Boots (RECIPE!)
			})),
			spell(285088, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Fortified Mistscale Greaves
				i(165651),	-- Pattern: Tempered Mistscale Greaves (RECIPE!)
			})),
			spell(285091, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Fortified Tempest Boots
				i(165645),	-- Pattern: Tempered Tempest Boots (RECIPE!)
			})),
			spell(285092, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Fortified Tempest Leggings
				i(165647),	-- Pattern: Tempered Tempest Leggings (RECIPE!)
			})),
			spell(256765, {	-- Hardened Tempest Boots
				i(162499),	-- Pattern: Imbued Tempest Boots (RECIPE!)
			}),
			spell(256768, {	-- Hardened Tempest Leggings
				i(162501),	-- Pattern: Imbued Tempest Leggings (RECIPE!)
			}),
			spell(256772, {	-- Imbued Mistscale Boots
				i(162504),	-- Pattern: Emblazoned Mistscale Boots (RECIPE!)
			}),
			spell(256775, {	-- Imbued Mistscale Leggings
				i(162506),	-- Pattern: Emblazoned Mistscale Leggings (RECIPE!)
			}),
			spell(256766, {	-- Imbued Tempest Boots
				i(162500),	-- Pattern: Emblazoned Tempest Boots (RECIPE!)
			}),
			spell(256769, {	-- Imbued Tempest Leggings
				i(162502),	-- Pattern: Emblazoned Tempest Leggings (RECIPE!)
			}),
			spell(305802, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Maddening Cragscale Boots
				i(171122),	-- Pattern: Eldritch Cragscale Boots (RECIPE!)
			})),
			spell(305806, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Maddening Cragscale Greaves
				i(171118),	-- Pattern: Eldritch Cragscale Greaves (RECIPE!)
			})),
			spell(305795, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Maddening Dredged Leather Boots
				i(171126),	-- Pattern: Eldritch Dredged Leather Boots (RECIPE!)
			})),
			spell(305798, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Maddening Dredged Leather Leggings
				i(171124),	-- Pattern: Eldritch Dredged Leather Leggings (RECIPE!)
			})),
			spell(256771, {	-- Mistscale Boots
				i(162503),	-- Pattern: Imbued Mistscale Boots (RECIPE!)
			}),
			spell(256774, {	-- Mistscale Leggings
				i(162505),	-- Pattern: Imbued Mistscale Leggings (RECIPE!)
			}),
			spell(299026, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Reinforced Cragscale Boots
				i(168778),	-- Pattern: Banded Cragscale Boots (RECIPE!)
			})),
			spell(299029, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Reinforced Cragscale Greaves
				i(168780),	-- Pattern: Pattern: Banded Cragscale Greaves (RECIPE!)
			})),
			spell(299020, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Reinforced Dredged Boots
				i(168774),	-- Pattern: Banded Dredged Boots (RECIPE!)
			})),
			spell(299023, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Reinforced Dredged Leggings
				i(168776),	-- Pattern: Banded Dredged Leggings (RECIPE!)
			})),
			spell(305803, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Unsettling Cragscale Boots
				i(171123),	-- Pattern: Maddening Cragscale Boots (RECIPE!)
			})),
			spell(305800, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Unsettling Cragscale Greaves
				i(171128),	-- Pattern: Maddening Cragscale Greaves (RECIPE!)
			})),
			spell(305796, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Unsettling Dredged Leather Boots
				i(171127),	-- Pattern: Maddening Dredged Leather Boots (RECIPE!)
			})),
			spell(305804, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Unsettling Dredged Leather Leggings
				i(171125),	-- Pattern: Maddening Dredged Leather Leggings (RECIPE!)
			})),
		}),
		n(ARMOR, {
			filter(LEATHER, {
				i(168706, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Dredged Boots [A]
				i(168712, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Dredged Boots [H]
				i(168709, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Dredged Leggings [A]
				i(168715, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Dredged Leggings [H]
				i(161945),	-- Coarse Leather Armguards [A]
				i(154145),	-- Coarse Leather Armguards [H]
				i(161940),	-- Coarse Leather Gauntlets [A]
				i(154140),	-- Coarse Leather Gauntlets [H]
				i(161942),	-- Coarse Leather Greaves [A]
				i(161941),	-- Coarse Leather Helm [A]
				i(154141),	-- Coarse Leather Helm [H]
				i(154142),	-- Coarse Leather Leggings [H]
				i(161943),	-- Coarse Leather Pauldrons [A]
				i(154143),	-- Coarse Leather Pauldrons [H]
				i(161938),	-- Coarse Leather Vest [A]
				i(154138),	-- Coarse Leather Vest [H]
				i(161944),	-- Coarse Leather Waistguard [A]
				i(154144),	-- Coarse Leather Waistguard [H]
				i(161939),	-- Coarse Leather Treads [A]
				i(154139),	-- Coarse Leather Treads [H]
				i(168704, {["timeline"] = {ADDED_8_2_0}}),	-- Dredged Leather Boots [A]
				i(168710, {["timeline"] = {ADDED_8_2_0}}),	-- Dredged Leather Boots [H]
				i(168707, {["timeline"] = {ADDED_8_2_0}}),	-- Dredged Leather Leggings [A]
				i(168713, {["timeline"] = {ADDED_8_2_0}}),	-- Dredged Leather Leggings [H]
				i(170434, {["timeline"] = {ADDED_8_3_0}}),	-- Eldritch Dredged Leather Boots
				i(170437, {["timeline"] = {ADDED_8_3_0}}),	-- Eldritch Dredged Leather Leggings
				i(162485),	-- Emblazoned Tempest Boots [A]
				i(162468),	-- Emblazoned Tempest Boots [H]
				i(162486),	-- Emblazoned Tempest Leggings [A]
				i(162470),	-- Emblazoned Tempest Leggings [H]
				i(165408, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Tempest Boots [A]
				i(165409, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Tempest Boots [H]
				i(165383, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Tempest Leggings [A]
				i(165384, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Tempest Leggings [H]
				i(165416, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Tempest Boots [A]
				i(165417, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Tempest Boots [H]
				i(165391, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Tempest Leggings [A]
				i(165392, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Tempest Leggings [H]
				i(161946),	-- Hardened Tempest Boots [A]
				i(154154),	-- Hardened Tempest Boots [H]
				i(161947),	-- Hardened Tempest Leggings [A]
				i(154155),	-- Hardened Tempest Leggings [H]
				i(161952),	-- Honorable Combatant's Leather Armguards [A]
				i(159888),	-- Honorable Combatant's Leather Armguards [H]
				i(161949),	-- Honorable Combatant's Leather Gauntlets [A]
				i(159885),	-- Honorable Combatant's Leather Gauntlets [H]
				i(161950),	-- Honorable Combatant's Leather Greaves [A]
				i(159886),	-- Honorable Combatant's Leather Leggings [H]
				i(161948),	-- Honorable Combatant's Leather Treads [A]
				i(159884),	-- Honorable Combatant's Leather Treads [H]
				i(161951),	-- Honorable Combatant's Leather Waistguard [A]
				i(159887),	-- Honorable Combatant's Leather Waistguard [H]
				i(162493),	-- Imbued Tempest Boots [A]
				i(162467),	-- Imbued Tempest Boots [H]
				i(162494),	-- Imbued Tempest Leggings [A]
				i(162469),	-- Imbued Tempest Leggings [H]
				i(170433, {["timeline"] = {ADDED_8_3_0}}),	-- Maddening Dredged Leather Boots
				i(170436, {["timeline"] = {ADDED_8_3_0}}),	-- Maddening Dredged Leather Leggings
				i(167945, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Leather Armguards [A]
				i(167944, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Leather Armguards [H]
				i(167947, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Leather Gauntlets [A]
				i(167946, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Leather Gauntlets [H]
				i(167949, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Leather Leggings [A]
				i(167948, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Leather Leggings [H]
				i(167951, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Leather Treads [A]
				i(167950, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Leather Treads [H]
				i(167953, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Leather Waistguard [A]
				i(167952, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Leather Waistguard [H]
				i(168705, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Dredged Boots [A]
				i(168711, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Dredged Boots [H]
				i(168708, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Dredged Leggings [A]
				i(168714, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Dredged Leggings [H]
				i(164703, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Leather Armguards [A]
				i(164662, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Leather Armguards [H]
				i(164700, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Leather Gauntlets [A]
				i(164659, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Leather Gauntlets [H]
				i(164701, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Leather Leggings [A]
				i(164660, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Leather Leggings [H]
				i(164702, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Leather Waistguard [A]
				i(164661, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Leather Waistguard [H]
				i(164699, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Leather Treads [A]
				i(164658, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Leather Treads [H]
				i(165424, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Tempest Boots [A]
				i(165425, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Tempest Boots [H]
				i(165399, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Tempest Leggings [A]
				i(165400, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Tempest Leggings [H]
				i(170343, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Leather Armguards [A]
				i(170351, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Leather Armguards [H]
				i(170342, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Leather Gauntlets [A]
				i(170350, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Leather Gauntlets [H]
				i(170344, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Leather Leggings [A]
				i(170349, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Leather Leggings [H]
				i(170345, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Leather Treads [A]
				i(170348, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Leather Treads [H]
				i(170346, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Leather Waistguard [A]
				i(170347, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Leather Waistguard [H]
				i(170432, {["timeline"] = {ADDED_8_3_0}}),	-- Unsettling Dredged Leather Boots
				i(170435, {["timeline"] = {ADDED_8_3_0}}),	-- Unsettling Dredged Leather Leggings
			}),
			filter(MAIL, {
				i(168718, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Cragscale Boots [A]
				i(168724, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Cragscale Boots [H]
				i(168721, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Cragscale Greaves [A]
				i(168727, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Cragscale Greaves [H]
				i(168716, {["timeline"] = {ADDED_8_2_0}}),	-- Cragscale Boots [A]
				i(168722, {["timeline"] = {ADDED_8_2_0}}),	-- Cragscale Boots [H]
				i(168719, {["timeline"] = {ADDED_8_2_0}}),	-- Cragscale Greaves [A]
				i(168725, {["timeline"] = {ADDED_8_2_0}}),	-- Cragscale Greaves [H]
				i(170440, {["timeline"] = {ADDED_8_3_0}}),	-- Eldritch Cragscale Boots
				i(170443, {["timeline"] = {ADDED_8_3_0}}),	-- Eldritch Cragscale Greaves
				i(162481),	-- Emblazoned Mistscale Boots [A]
				i(162472),	-- Emblazoned Mistscale Boots [H]
				i(162482),	-- Emblazoned Mistscale Greaves [A]
				i(162474),	-- Emblazoned Mistscale Leggings [H]
				i(165404, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Mistscale Boots [A]
				i(165405, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Mistscale Boots [H]
				i(165382, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Mistscale Greaves [A]
				i(165381, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Mistscale Greaves [H]
				i(165412, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Mistscale Boots [A]
				i(165413, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Mistscale Boots [H]
				i(165388, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Mistscale Greaves [A]
				i(165387, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Mistscale Greaves [H]
				i(161967),	-- Honorable Combatant's Mail Armguards [A]
				i(159893),	-- Honorable Combatant's Mail Armguards [H]
				i(161964),	-- Honorable Combatant's Mail Gauntlets [A]
				i(159890),	-- Honorable Combatant's Mail Gauntlets [H]
				i(161965),	-- Honorable Combatant's Mail Greaves [A]
				i(159891),	-- Honorable Combatant's Mail Leggings [H]
				i(161963),	-- Honorable Combatant's Mail Treads [A]
				i(159889),	-- Honorable Combatant's Mail Treads [H]
				i(161966),	-- Honorable Combatant's Mail Waistguard [A]
				i(159892),	-- Honorable Combatant's Mail Waistguard [H]
				i(162489),	-- Imbued Mistscale Boots [A]
				i(162471),	-- Imbued Mistscale Boots [H]
				i(162490),	-- Imbued Mistscale Leggings [A]
				i(162473),	-- Imbued Mistscale Greaves [H]
				i(170439, {["timeline"] = {ADDED_8_3_0}}),	-- Maddening Cragscale Boots
				i(170442, {["timeline"] = {ADDED_8_3_0}}),	-- Maddening Cragscale Greaves
				i(161962),	-- Mistscale Leggings [A]
				i(154157),	-- Mistscale Greaves [H]
				i(161961),	-- Mistscale Boots [A]
				i(154156),	-- Mistscale Boots [H]
				i(167955, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Mail Armguards [A]
				i(167954, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Mail Armguards [H]
				i(167959, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Mail Leggings [A]
				i(167958, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Mail Leggings [H]
				i(167957, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Mail Gauntlets [A]
				i(167956, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Mail Gauntlets [H]
				i(167961, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Mail Treads [A]
				i(167960, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Mail Treads [H]
				i(167963, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Mail Waistguard [A]
				i(167962, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Mail Waistguard [H]
				i(168717, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Cragscale Boots [A]
				i(168723, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Cragscale Boots [H]
				i(168720, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Cragscale Greaves [A]
				i(168726, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Cragscale Greaves [H]
				i(161960),	-- Shimmerscale Armguards [A]
				i(154153),	-- Shimmerscale Armguards [H]
				i(161955),	-- Shimmerscale Gauntlets [A]
				i(154148),	-- Shimmerscale Gauntlets [H]
				i(161957),	-- Shimmerscale Greaves [A]
				i(161956),	-- Shimmerscale Helm [A]
				i(154149),	-- Shimmerscale Helm [H]
				i(154150),	-- Shimmerscale Leggings [H]
				i(161958),	-- Shimmerscale Pauldrons [A]
				i(154151),	-- Shimmerscale Pauldrons [H]
				i(161953),	-- Shimmerscale Vest [A]
				i(154146),	-- Shimmerscale Vest [H]
				i(161959),	-- Shimmerscale Waistguard [A]
				i(154152),	-- Shimmerscale Waistguard [H]
				i(161954),	-- Shimmerscale Treads [A]
				i(154147),	-- Shimmerscale Treads [H]
				i(164708, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Mail Armguards [A]
				i(164667, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Mail Armguards [H]
				i(164705, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Mail Gauntlets [A]
				i(164664, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Mail Gauntlets [H]
				i(164706, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Mail Leggings [A]
				i(164665, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Mail Leggings [H]
				i(164707, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Mail Waistguard [A]
				i(164666, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Mail Waistguard [H]
				i(164704, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Mail Treads [A]
				i(164663, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Mail Treads [H]
				i(165420, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Mistscale Boots [A]
				i(165421, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Mistscale Boots [H]
				i(165395, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Mistscale Greaves [A]
				i(165396, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Mistscale Greaves [H]
				i(170352, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Mail Armguards [A]
				i(170357, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Mail Armguards [H]
				i(170353, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Mail Gauntlets [A]
				i(170358, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Mail Gauntlets [H]
				i(170354, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Mail Leggings [A]
				i(170359, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Mail Leggings [H]
				i(170355, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Mail Treads [A]
				i(170360, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Mail Treads [H]
				i(170356, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Mail Waistguard [A]
				i(170361, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Mail Waistguard [H]
				i(170438, {["timeline"] = {ADDED_8_3_0}}),	-- Unsettling Cragscale Boots
				i(170441, {["timeline"] = {ADDED_8_3_0}}),	-- Unsettling Cragscale Greaves
			}),
		}),
		filter(MISC, {
			i(165749),	-- Amber Rallying Horn
			i(154166),	-- Coarse Leather Barding
			i(168419, {["timeline"] = {ADDED_8_2_0}}),	-- Comfortable Rider's Barding
			i(169445, {["timeline"] = {ADDED_8_2_0}}),	-- Dredged Leather Bladder
			i(154167),	-- Drums of the Maelstrom
			i(164978, {["timeline"] = {ADDED_8_1_5}}),	-- Mallet of Thunderous Skins
			i(165699, {["timeline"] = {ADDED_8_1_0}}),	-- Scarlet Herring Lure
			i(154169),	-- Shimmerscale Diving Helmet
			i(154168),	-- Shimmerscale Diving Suit
			i(165747),	-- Tempest Hide Pouch
		}),
		filter(REAGENTS, {
			i(152542),	-- Hardened Tempest Hide
		}),
		n(WEAPONS, {
			i(161970),	-- Coarse Leather Cestus [A]
			i(154161),	-- Coarse Leather Cestus [H]
			i(161972),	-- Hardened Tempest Knuckles [A]
			i(154163),	-- Hardened Tempest Knuckles [H]
			i(161975),	-- Honorable Combatant's Bow [A]
			i(159896),	-- Honorable Combatant's Bow [H]
			i(161971),	-- Mistscale Knuckles [A]
			i(154162),	-- Mistscale Knuckles [H]
			i(167935, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Bow [A]
			i(167934, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Bow [H]
			i(161968),	-- Recurve Bow of the Strands [A]
			i(154159),	-- Recurve Bow of the Strands [H]
			i(161969),	-- Shimmerscale Striker [A]
			i(154160),	-- Shimmerscale Striker [H]
			i(164711, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Bow [A]
			i(164670, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Bow [H]
			i(170362, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Bow [A]
			i(170363, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Bow [H]
		}),
	}),
	prof(MINING, {
		i(160944),	-- An Exquisite Brooch
		i(161078),	-- Exceptional Platinum Shard [A]
		i(161079),	-- Exceptional Platinum Shard [H]
		i(160905),	-- Lost Anchor Necklace
		i(152512),	-- Monelite Ore
		i(168954, {["timeline"] = {ADDED_8_2_0}}),	-- Osmenite Dust [A]
		i(169598, {["timeline"] = {ADDED_8_2_0}}),	-- Osmenite Dust [H]
		i(168185, {["timeline"] = {ADDED_8_2_0}}),	-- Osmenite Ore
		i(168939, {["timeline"] = {ADDED_8_2_0}}),	-- Osmenite Shards [A]
		i(169597, {["timeline"] = {ADDED_8_2_0}}),	-- Osmenite Shards [H]
		i(161088),	-- Platinum Map
		i(152513),	-- Platinum Ore
		i(152579),	-- Storm Silver Ore
		i(161085),	-- Tattered Map
	}),
	prof(SKINNING, {
		i(154164),	-- Blood-Stained Bone
		i(154165),	-- Calcified Bone
		i(152541),	-- Coarse Leather
		i(168650, {["timeline"] = {ADDED_8_2_0}}),	-- Cragscale
		i(168649, {["timeline"] = {ADDED_8_2_0}}),	-- Dredged Leather
		i(153051),	-- Mistscale
		i(153050),	-- Shimmerscale
		i(154722),	-- Tempest Hide
	}),
	prof(TAILORING, {
		n(DISCOVERY, {
			spell(257122, {	-- Embroidered Deep Sea Breeches
				i(162509),	-- Pattern: Imbued Deep Sea Breeches (RECIPE!)
			}),
			spell(257118, {	-- Embroidered Deep Sea Gloves
				i(162507),	-- Pattern: Imbued Deep Sea Gloves (RECIPE!)
			}),
			spell(285077, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Enhanced Deep Sea Breeches
				i(165655),	-- Pattern: Fortified Deep Sea Breeches (RECIPE!)
			})),
			spell(285078, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Enhanced Deep Sea Gloves
				i(165652),	-- Pattern: Fortified Deep Sea Gloves (RECIPE!)
			})),
			spell(285085, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Fortified Deep Sea Breeches
				i(165654),	-- Pattern: Tempered Deep Sea Breeches (RECIPE!)
			})),
			spell(285086, bubbleDownSelf({["timeline"] = { ADDED_8_1_0 } }, {	-- Fortified Deep Sea Gloves
				i(165653),	-- Pattern: Tempered Deep Sea Gloves (RECIPE!)
			})),
			spell(299034, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Gilded Seaweave Breeches
				i(168783),	-- Pattern: Reinforced Seaweave Breeches (RECIPE!)
			})),
			spell(299031, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Gilded Seaweave Gloves
				i(168781),	-- Pattern: Reinforced Seaweave Gloves (RECIPE!)
			})),
			spell(257123, {	-- Imbued Deep Sea Breeches
				i(162510),	-- Pattern: Emblazoned Deep Sea Breeches (RECIPE!)
			}),
			spell(257120, {	-- Imbued Deep Sea Gloves
				i(162508),	-- Pattern: Emblazoned Deep Sea Gloves (RECIPE!)
			}),
			spell(304563, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Maddening Seaweave Breeches
				i(171147),	-- Pattern: Eldritch Seaweave Breeches (RECIPE!)
			})),
			spell(304560, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Maddening Seaweave Gloves
				i(171149),	-- Pattern: Eldritch Seaweave Gloves (RECIPE!)
			})),
			spell(299035, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Reinforced Seaweave Breeches
			i(168784),	-- Pattern: Banded Seaweave Breeches (RECIPE!)
			})),
			spell(299032, bubbleDownSelf({["timeline"] = { ADDED_8_2_0 } }, {	-- Reinforced Seaweave Gloves
				i(168782),	-- Pattern: Banded Seaweave Gloves (RECIPE!)
			})),
			spell(304562, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Unsettling Seaweave Breeches
				i(171148),	-- Pattern: Maddening Seaweave Breeches (RECIPE!)
			})),
			spell(304559, bubbleDownSelf({["timeline"] = { ADDED_8_3_0 } }, {	-- Unsettling Seaweave Gloves
				i(171150),	-- Pattern: Maddening Seaweave Gloves (RECIPE!)
			})),
		}),
		n(ARMOR, {
			i(168733, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Seaweave Breeches [A]
			i(168739, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Seaweave Breeches [H]
			i(168730, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Seaweave Gloves [A]
			i(168736, {["timeline"] = {ADDED_8_2_0}}),	-- Banded Seaweave Gloves [H]
			i(170461, {["timeline"] = {ADDED_8_3_0}}),	-- Eldritch Seaweave Breeches
			i(170458, {["timeline"] = {ADDED_8_3_0}}),	-- Eldritch Seaweave Gloves
			i(165385, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Deep Sea Breeches [A]
			i(165386, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Deep Sea Breeches [H]
			i(165410, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Deep Sea Gloves [A]
			i(165411, {["timeline"] = {ADDED_8_1_0}}),	-- Fortified Deep Sea Gloves [H]
			i(165377),	-- Enhanced Deep Sea Breeches [A]
			i(165378),	-- Enhanced Deep Sea Breeches [H]
			i(165402),	-- Enhanced Deep Sea Gloves [A]
			i(165403),	-- Enhanced Deep Sea Gloves [H]
			i(161986),	-- Embroidered Deep Sea Breeches [A]
			i(154694),	-- Embroidered Deep Sea Breeches [H]
			i(161990),	-- Embroidered Deep Sea Cloak [A]
			i(154700),	-- Embroidered Deep Sea Cloak [H]
			i(161985),	-- Embroidered Deep Sea Gloves [A]
			i(154693),	-- Embroidered Deep Sea Gloves [H]
			i(162480),	-- Emblazoned Deep Sea Breeches [A]
			i(162478),	-- Emblazoned Deep Sea Breeches [H]
			i(162479),	-- Emblazoned Deep Sea Gloves [A]
			i(162476),	-- Emblazoned Deep Sea Gloves [H]
			i(168731, {["timeline"] = {ADDED_8_2_0}}),	-- Gilded Seaweave Breeches [A]
			i(168737, {["timeline"] = {ADDED_8_2_0}}),	-- Gilded Seaweave Breeches [H]
			i(168728, {["timeline"] = {ADDED_8_2_0}}),	-- Gilded Seaweave Gloves [A]
			i(168734, {["timeline"] = {ADDED_8_2_0}}),	-- Gilded Seaweave Gloves [H]
			i(161996),	-- Honorable Combatant's Satin Belt [A]
			i(159915),	-- Honorable Combatant's Satin Belt [H]
			i(161993),	-- Honorable Combatant's Satin Boots [A]
			i(159912),	-- Honorable Combatant's Satin Boots [H]
			i(161997),	-- Honorable Combatant's Satin Bracers [A]
			i(159916),	-- Honorable Combatant's Satin Bracers [H]
			i(161998),	-- Honorable Combatant's Satin Cloak [A]
			i(159917),	-- Honorable Combatant's Satin Cloak [H]
			i(161994),	-- Honorable Combatant's Satin Mittens [A]
			i(159913),	-- Honorable Combatant's Satin Mittens [H]
			i(161995),	-- Honorable Combatant's Satin Pants [A]
			i(159914),	-- Honorable Combatant's Satin Pants [H]
			i(162487),	-- Imbued Deep Sea Gloves [A]
			i(162475),	-- Imbued Deep Sea Gloves [H]
			i(162488),	-- Imbued Deep Sea Breeches [A]
			i(162477),	-- Imbued Deep Sea Breeches [H]
			i(170460, {["timeline"] = {ADDED_8_3_0}}),	-- Maddening Seaweave Breeches
			i(170457, {["timeline"] = {ADDED_8_3_0}}),	-- Maddening Seaweave Gloves
			i(167977, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Satin Belt [A]
			i(167976, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Satin Belt [H]
			i(167979, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Satin Boots [A]
			i(167978, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Satin Boots [H]
			i(167981, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Satin Bracers [A]
			i(167980, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Satin Bracers [H]
			i(167983, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Satin Cloak [A]
			i(167982, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Satin Cloak [H]
			i(167985, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Satin Mittens [A]
			i(167984, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Satin Mittens [H]
			i(167987, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Satin Pants [A]
			i(167986, {["timeline"] = {ADDED_8_2_0}}),	-- Notorious Combatant's Satin Pants [H]
			i(168732, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Seaweave Breeches [A]
			i(168738, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Seaweave Breeches [H]
			i(168729, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Seaweave Gloves [A]
			i(168735, {["timeline"] = {ADDED_8_2_0}}),	-- Reinforced Seaweave Gloves [H]
			i(164715, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Belt [A]
			i(164674, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Belt [H]
			i(164712, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Boots [A]
			i(164671, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Boots [H]
			i(164716, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Bracers [A]
			i(164675, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Bracers [H]
			i(164717, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Cloak [A]
			i(164676, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Cloak [H]
			i(164713, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Mittens [A]
			i(164672, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Mittens [H]
			i(164714, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Pants [A]
			i(164673, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Satin Pants [H]
			i(165393, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Deep Sea Breeches [A]
			i(165394, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Deep Sea Breeches [H]
			i(165418, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Deep Sea Gloves [A]
			i(165419, {["timeline"] = {ADDED_8_1_0}}),	-- Tempered Deep Sea Gloves [H]
			i(161983),	-- Tidespray Linen Belt [A]
			i(154691),	-- Tidespray Linen Belt [H]
			i(161984),	-- Tidespray Linen Bracers [A]
			i(154692),	-- Tidespray Linen Bracers [H]
			i(161987),	-- Tidespray Linen Cloak [A]
			i(154697),	-- Tidespray Linen Cloak [H]
			i(161980),	-- Tidespray Linen Hood [A]
			i(154688),	-- Tidespray Linen Hood [H]
			i(161979),	-- Tidespray Linen Mittens [A]
			i(154687),	-- Tidespray Linen Mittens [H]
			i(161981),	-- Tidespray Linen Pants [A]
			i(154689),	-- Tidespray Linen Pants [H]
			i(161977),	-- Tidespray Linen Robe [A]
			i(154685),	-- Tidespray Linen Robe [H]
			i(161978),	-- Tidespray Linen Sandals [A]
			i(154686),	-- Tidespray Linen Sandals [H]
			i(161982),	-- Tidespray Linen Spaulders [A]
			i(154690),	-- Tidespray Linen Spaulders [H]
			i(170324, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Belt [A]
			i(170332, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Belt [H]
			i(170327, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Boots [A]
			i(170337, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Boots [H]
			i(170323, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Bracers [A]
			i(170338, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Bracers [H]
			i(170320, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Cloak [A]
			i(170339, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Cloak [H]
			i(170340, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Mittens [A]
			i(170326, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Mittens [H]
			i(170325, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Pants [A]
			i(170341, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Satin Pants [H]
			i(170459, {["timeline"] = {ADDED_8_3_0}}),	-- Unsettling Seaweave Breeches
			i(170456, {["timeline"] = {ADDED_8_3_0}}),	-- Unsettling Seaweave Gloves
		}),
		filter(BAGS, {
			i(154695),	-- Deep Sea Bag
			i(154696),	-- Embroidered Deep Sea Bag
		}),
		filter(REAGENTS, {
			i(158378),	-- Embroidered Deep Sea Satin
		}),
		filter(MISC, {
			i(154706),	-- Battle Flag: Phalanx Defense
			i(154705),	-- Battle Flag: Rallying Swiftness
			i(154707),	-- Battle Flag: Spirit of Freedom
			i(158382),	-- Deep Sea Bandage
			i(159792),	-- Hooked Deep Sea Net
			i(165739),	-- Rough-hooked Tidespray Linen
			i(168427, {["timeline"] = {ADDED_8_2_0}}),	-- Saddlechute
			i(169456, {["timeline"] = {ADDED_8_2_0}}),	-- Seabreeze Saddle Blanket
			i(164733, {["timeline"] = {ADDED_8_1_5}}),	-- Synchronous Thread
			i(158381),	-- Tidespray Linen Bandage
			i(159791),	-- Tidespray Linen Net
		}),
	}),
}))));
