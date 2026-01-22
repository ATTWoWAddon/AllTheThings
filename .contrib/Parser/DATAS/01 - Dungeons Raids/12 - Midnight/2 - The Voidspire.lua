-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
------ Encounter Constants ------
local AVERZIAN = 2733;
local VORASIUS = 2734;
local SALHADAAR = 2736;
local EZZORAK_VAELGOR = 2735;
local VANGUARD = 2737;
local COSMOS = 2738;

------ EncounterToCRS ------
local EncounterToCRS = {
	[AVERZIAN] = { 240435 },	-- Imperator Averzian
	[VORASIUS] = { 240434 },	-- Vorasius
	[SALHADAAR] = { 240432 },	-- Fallen-King Salhadaar
	[EZZORAK_VAELGOR] = {
		254109,	-- Ezzorak
		250892,	-- Vaelgor
	},
	[VANGUARD] = {
		250588,	-- Commander Venel Lightblood
		250587,	-- General Amias Bellamy
		250589,	-- War Chaplain Senn
	},
	[COSMOS] = { 244761 },	-- Cosmos
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[AVERZIAN] = {
		i(249275),	-- Bulwark of Noble Resolve
		i(249306),	-- Devouring Night's Visage
		i(249319),	-- Endless March Waistwrap
		i(249335),	-- Imperator's Banner
		i(249323),	-- Leggings of the Devouring Advance
		i(249344),	-- Light Company Guidon
		i(249313),	-- Light-Judged Spaulders
		i(249326),	-- Light's March Bracers
		i(249310),	-- Robes of the Voidbound
		i(249320),	-- Sabatons of Obscurement
		i(249279),	-- Sunstrike Rifle
		i(249334),	-- Void-Claimed Shinkickers
		i(249293),	-- Weight of Command
	};
	[VORASIUS] = {
		i(249353, {	-- Voidcast Hungering Nullcore
			i(249998),	-- Enforcer's Grips of the Black Talon
			i(249989),	-- Primal Sentry's Talonguards
			i(249980),	-- Earthgrips of the Primal Core
		}),
		i(249352, {	-- Voidcured Hungering Nullcore
			i(250034),	-- Devouring Reaver's Essence Grips
			i(250025),	-- Arbortenders of the Luminous Bloom
			i(250016),	-- Thunderfists of Ra-den's Chosen
			i(250007),	-- Sleight of Hand of the Grim Jest
		}),
		i(249354, {	-- Voidforged Hungering Nullcore
			i(249971),	-- Relentless Rider's Bonegrasps
			i(249962),	-- Luminant Verdict's Gauntlets
			i(249953),	-- Night Ender's Fists
		}),
		i(249351, {	-- Voidwoven Hungering Nullcore
			i(250061),	-- Voidbreaker's Gloves
			i(250052),	-- Blind Oath's Touch
			i(250043),	-- Abyssal Immolator's Grasps
		}),
		i(249317),	-- Frenzy's Rebuke
		i(249276),	-- Grimoire of the Eternal Light
		i(249342),	-- Heart of Ancient Hunger
		i(249925),	-- Hungering Victory
		i(249302),	-- Inescapable Reach
		i(249332),	-- Parasite Stompers
		i(249336),	-- Signet of the Starved Beast
		i(249327),	-- Void-Skinned Bracers
		i(249315),	-- Voracious Wristwraps
	};
	[SALHADAAR] = {
		i(249365, {	-- Voidcast Unraveled Nullcore
			i(249995),	-- Beacons of the Black Talon
			i(249986),	-- Primal Sentry's Trophies
			i(249977),	-- Tempests of the Primal Core
		}),
		i(249364, {	-- Voidcured Unraveled Nullcore
			i(250031),	-- Devouring Reaver's Exhaustplates
			i(250022),	-- Seedpods of the Luminous Bloom
			i(250013),	-- Aurastones of Ra-den's Chosen
			i(250004),	-- Venom Casks of the Grim Jest
		}),
		i(249366, {	-- Voidforged Unraveled Nullcore
			i(249968),	-- Relentless Rider's Dreadthorns
			i(249959),	-- Luminant Verdict's Providence Watch
			i(249950),	-- Night Ender's Pauldrons
		}),
		i(249363, {	-- Voidwoven Unraveled Nullcore
			i(250058),	-- Voidbreaker's Leyline Nexi
			i(250049),	-- Blind Oath's Seraphguards
			i(250040),	-- Abyssal Immolator's Fury
		}),
		i(249281),	-- Blade of the Final Twilight
		i(249316),	-- Crown of the Fractured Tyrant
		i(249308),	-- Despotic Raiment
		i(249304),	-- Fallen King's Cuffs
		i(249337),	-- Ribbon of Coiled Malice
		i(249298),	-- Tormentor's Bladed Fists
		i(249314),	-- Twisted Twilight Sash
		i(249341),	-- Volatile Void Suffuser
		i(249340),	-- Wraps of Cosmic Madness
	};
	[EZZORAK_VAELGOR] = {
		i(249361, {	-- Voidcast Corrupted Nullcore
			i(249996),	-- Greaves of the Black Talon
			i(249987),	-- Primal Sentry's Legguards
			i(249978),	-- Leggings of the Primal Core
		}),
		i(249360, {	-- Voidcured Corrupted Nullcore
			i(250032),	-- Devouring Reaver's Pistons
			i(250023),	-- Phloemwraps of the Luminous Bloom
			i(250014),	-- Swiftsweepers of Ra-den's Chosen
			i(250005),	-- Blade Holsters of the Grim Jest
		}),
		i(249362, {	-- Voidforged Corrupted Nullcore
			i(249969),	-- Relentless Rider's Legguards
			i(249960),	-- Luminant Verdict's Greaves
			i(249951),	-- Night Ender's Chausses
		}),
		i(249359, {	-- Voidwoven Corrupted Nullcore
			i(250059),	-- Voidbreaker's Britches
			i(250050),	-- Blind Oath's Leggings
			i(250041),	-- Abyssal Immolator's Pillars
		}),
		i(249287),	-- Clutchmates' Caress
		i(249370),	-- Draconic Nullcape
		i(249280),	-- Emblazoned Sunglaive
		i(249331),	-- Ezzorak's Gloombind
		i(249339),	-- Gloom-Spattered Dreadscale
		i(249318),	-- Nullwalker's Dread Epaulettes
		i(249305),	-- Slippers of the Midnight Flame
		i(249321),	-- Vaelgor's Fearsome Grasp
		i(249346),	-- Vaelgor's Final Stare
	};
	[VANGUARD] = {
		i(249357, {	-- Voidcast Fanatical Nullcore
			i(249997),	-- Hornhelm of the Black Talon
			i(249988),	-- Primal Sentry's Maw
			i(249979),	-- Locus of the Primal Core
		}),
		i(249356, {	-- Voidcured Fanatical Nullcore
			i(250033),	-- Devouring Reaver's Intake
			i(250024),	-- Branches of the Luminous Bloom
			i(250015),	-- Fearsome Visage of Ra-den's Chosen
			i(250006),	-- Masquerade of the Grim Jest
		}),
		i(249358, {	-- Voidforged Fanatical Nullcore
			i(249970),	-- Relentless Rider's Crown
			i(249961),	-- Luminant Verdict's Unwavering Gaze
			i(249952),	-- Night Ender's Tusks
		}),
		i(249355, {	-- Voidwoven Fanatical Nullcore
			i(250060),	-- Voidbreaker's Veil
			i(250051),	-- Blind Oath's Winged Crest
			i(250042),	-- Abyssal Immolator's Smoldering Flames
		}),
		i(249277),	-- Bellamy's Final Judgement
		i(249294),	-- Blade of the Blind Verdict
		i(249333),	-- Blooming Barklight Spaulders
		i(249369),	-- Bond of Light
		i(249311),	-- Lightblood Greaves
		i(249808),	-- Litany of Lightblind Wrath
		i(249303),	-- Waistcord of the Judged
		i(249330),	-- War Chaplain's Grips
	};
	[COSMOS] = {
		i(260423),	-- Arator's Swift Remembrance
		i(249382),	-- Canopy Walker's Footwraps
		i(249368),	-- Eternal Voidsong Chain
		i(249329),	-- Gaze of the Unrestrained
		i(249380),	-- Hate-Tied Waistchain
		i(249809),	-- Locus-Walker's Ribbon
		i(249312),	-- Nightblade's Pantaloons
		i(249345),	-- Ranger-Captain's Iridescent Insignia
		i(249288),	-- Ranger-Captain's Lethal Recurve
		i(249309),	-- Sunbound Breastplate
		i(249295),	-- Turalyon's False Echo
		i(249325),	-- Untethered Berserker's Grips
	};
};

------ Zone Drops ----------
local ZoneDropLoot = {
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

InstanceHelper.UpgradeMapping = {
	[DIFFICULTY.RAID.LFR] = 3,
	[DIFFICULTY.RAID.NORMAL] = 5,
	[DIFFICULTY.RAID.HEROIC] = 6,
};

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART } }, {
	inst(1307, {	-- The Voidspire
		--["coord"] = { X, Y, MAP.MIDNIGHT.VOIDSTORM },
		--["maps"] = {

		--},
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				-- Myrhial Check Automation
				ach(61635, {	-- Voidspire: Weapons of the Void
					crit(109375, {	-- Imperator Averzian
						["_encounter"] = { AVERZIAN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(109376, {	-- Vorasius
						["_encounter"] = { VORASIUS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(109377, {	-- Fallen-King Salhadaar
						["_encounter"] = { SALHADAAR, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(61636, {	-- Voidspire: Fanatics of the Light
					crit(109378, {	-- Vaelgor & Ezzorak
						["_encounter"] = { EZZORAK_VAELGOR, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(109379, {	-- Lightblinded Vanguard
						["_encounter"] = { VANGUARD, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(61637, {	-- Voidspire: Crown of the Cosmos
					crit(109380, {	-- Crown of the Cosmos
						["_encounter"] = { COSMOS, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(61366, {	-- The Voidspire
					crit(109375, {	-- Imperator Averzian
						["_encounter"] = { AVERZIAN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(109376, {	-- Vorasius
						["_encounter"] = { VORASIUS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(109377, {	-- Fallen-King Salhadaar
						["_encounter"] = { SALHADAAR, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(109378, {	-- Vaelgor & Ezzorak
						["_encounter"] = { EZZORAK_VAELGOR, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(109379, {	-- Lightblinded Vanguard
						["_encounter"] = { VANGUARD, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(109380, {	-- Crown of the Cosmos
						["_encounter"] = { COSMOS, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(61368, {	-- Heroic: The Voidspire
					crit(109071, {	-- Imperator Averzian
						["_encounter"] = { AVERZIAN, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(109075, {	-- Vorasius
						["_encounter"] = { VORASIUS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(109078, {	-- Fallen-King Salhadaar
						["_encounter"] = { SALHADAAR, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(109082, {	-- Vaelgor & Ezzorak
						["_encounter"] = { EZZORAK_VAELGOR, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(109085, {	-- Lightblinded Vanguard
						["_encounter"] = { VANGUARD, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(109090, {	-- Crown of the Cosmos
						["_encounter"] = { COSMOS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
				}),
				ach(61370),	-- Mythic: The Voidspire (automated)
				-- Multiple Raids this tier... Duplicate Glory and Tier Set Achievements?
				ach(61380, {	-- Glory of the Midnight Raider (automated)
					i(260887),	-- Tenebrous Harrower (MOUNT!)
				}),
				ach(61843),	-- Quel'Dressed
				ach(61606),	-- The Voidspire Guild Run
				ach(61607),	-- Heroic: The Voidspire Guild Run
			}),
			o(532226, {	-- The Catalyst
				["description"] = "This allows converting certain pieces of gear into Tier items for your Class.\n\nMake sure to equip your item first before converting it.",
				["coord"] = { 40.3, 65.0, MAP.MIDNIGHT.SILVERMOON_CITY },
				["modelScale"] = 4,
				["catalystID"] = 12,	-- ItemBonus.Value_0 MID:S1
				["groups"] = {
					Difficulty(DIFFICULTY.RAID.LFR, {["upgradeTrackID"]=UPGRADETRACKS.VETERAN}).AddGroups(
						ALL_CLASS_TIERS_HELPER(THE_VOIDSPIRE_TIER, DIFFICULTY.RAID.LFR)
					),
					Difficulty(DIFFICULTY.RAID.NORMAL, {["upgradeTrackID"]=UPGRADETRACKS.CHAMPION}).AddGroups(
						ALL_CLASS_TIERS_HELPER(THE_VOIDSPIRE_TIER, DIFFICULTY.RAID.NORMAL)
					),
					Difficulty(DIFFICULTY.RAID.HEROIC, {["upgradeTrackID"]=UPGRADETRACKS.HERO}).AddGroups(
						ALL_CLASS_TIERS_HELPER(THE_VOIDSPIRE_TIER, DIFFICULTY.RAID.HEROIC)
					),
					Difficulty(DIFFICULTY.RAID.MYTHIC, {["upgradeTrackID"]=UPGRADETRACKS.MYTH}).AddGroups(
						ALL_CLASS_TIERS_HELPER(THE_VOIDSPIRE_TIER, DIFFICULTY.RAID.MYTHIC)
					),
				},
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				BossOnly(AVERZIAN, {
					i(256648),	-- Pattern: Devouring Banding (RECIPE!)
					i(264497),	-- Imperator's Torment Crystal (DECOR!)
				}),
				BossOnly(VORASIUS, {
					i(258522),	-- Plans: Bloomforged Greataxe (RECIPE!)
					i(264498),	-- Voltaic Trigore Egg (DECOR!)
				}),
				BossOnly(SALHADAAR, {
					i(258123),	-- Pattern: Sunfire Silk Spellthread (RECIPE!)
					i(264494),	-- Banded Domanaar Storage Crate (DECOR!)
				}),
				BossOnly(EZZORAK_VAELGOR, {
					i(258521),	-- Plans: Blood Knight's Impetus (RECIPE!)
					i(264491),	-- Voidbound Holding Cell (DECOR!)
				}),
				BossOnly(VANGUARD, {
					i(258517),	-- Plans: Knight-Commander's Palisade (RECIPE!)
					i(262957),	-- Tattered Vanguard Banner (DECOR!)
				}),
				BossOnly(COSMOS, {
					i(264500),	-- Devouring Host Ritual Engine (DECOR!)
					i(265951),	-- Voidspire Vanquisher's Aureate Trophy (DECOR!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroupsWithUpgrades({
				--ZoneDrops({}),
				CommonBossDrops({
					currency(VETERAN_DAWNCREST, {
						["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
					}),
				}),
				header(HEADERS.LFGDungeon, 3156, {	-- Weapons of the Void
					Boss(AVERZIAN),
					Boss(VORASIUS),
					Boss(SALHADAAR),
				}),
				header(HEADERS.LFGDungeon, 3159, {	-- Fanatics of the Light
					Boss(EZZORAK_VAELGOR),
					Boss(VANGUARD),
				}),
				header(HEADERS.LFGDungeon, 3160, {	-- Crown of the Cosmos
					Boss(COSMOS),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(AVERZIAN, {
					ach(62106),	-- The Only Winning Move Is Not To Play
				}),
				BossOnly(VORASIUS, {
					ach(62058),	-- Hungry Hungry Hatchlings
				}),
				BossOnly(SALHADAAR, {
					ach(61514),	-- It's Treason Then
				}),
				BossOnly(EZZORAK_VAELGOR, {
					ach(61911),	-- Ready, Set, Snap!
				}),
				BossOnly(VANGUARD, {
					ach(61936),	-- Aura Farming
				}),
				BossOnly(COSMOS, {
					ach(61346),	-- We Will, In Fact, See It Again
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(CHAMPION_DAWNCREST, {
						["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
					}),
				}),
				--ZoneDrops({}),
				Boss(AVERZIAN),
				Boss(VORASIUS),
				Boss(SALHADAAR),
				Boss(EZZORAK_VAELGOR),
				Boss(VANGUARD),
				Boss(COSMOS),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(AVERZIAN),
				BossOnly(VORASIUS),
				BossOnly(SALHADAAR),
				BossOnly(EZZORAK_VAELGOR),
				BossOnly(VANGUARD),
				BossOnly(COSMOS, {
					ach(61624, { ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }),	-- Ahead of the Curve: Crown of the Cosmos
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(HERO_DAWNCREST, {
						["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
					}),
				}),
				--ZoneDrops({}),
				Boss(AVERZIAN),
				Boss(VORASIUS),
				Boss(SALHADAAR),
				Boss(EZZORAK_VAELGOR),
				Boss(VANGUARD),
				Boss(COSMOS),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				CommonBossDrops({
					currency(MYTH_DAWNCREST, {
						["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
					}),
				}),
				--ZoneDrops({}),
				Boss(AVERZIAN, {
					ach(61372),	-- Mythic: Imperator Averzian
				}),
				Boss(VORASIUS, {
					ach(61373),	-- Mythic: Vorasius
				}),
				Boss(SALHADAAR, {
					ach(61374),	-- Mythic: Fallen-King Salhadaar
				}),
				Boss(EZZORAK_VAELGOR, {
					ach(61375),	-- Mythic: Vaelgor & Ezzorak
				}),
				Boss(VANGUARD, {
					ach(61376),	-- Mythic: Lightblinded Vanguard
				}),
				Boss(COSMOS, {
					ach(61377, {	-- Mythic: Crown of the Cosmos
						--title(556),	-- Spirebane <Name> ... Using same ID as Nerubar Palace? Probably 690..
					}),
					ach(61625, {["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 }}),	-- Cutting Edge: Crown of the Cosmos
					ach(61622, applyDataSelf({["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {	-- Hall of Fame: Crown of the Cosmos
						title(676),	-- <Name>, Famed Slayer of the Voidspire
					})),
					ach(61608),	-- Mythic: Crown of the Cosmos Guild Run
				}),
			}),
		},
	}),
})));
