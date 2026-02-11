-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

--- Need Zone Drop, AOTC Mount //Braghe
------ Encounter Constants ------
local PLEXUS = 2684;
local LOOMITHAR = 2686;
local NAAZINDHRI = 2685;
local ARAZ = 2687;
local HUNTERS = 2688;
local FRACTILLUS = 2747;
local SALHADAAR = 2690;
local DIMENSIUS = 2691;

------ EncounterToCRS ------
local EncounterToCRS = {
	[PLEXUS] = {
		233814,	-- Plexus Sentinel
		243241,	-- Overloading Attendant
	},
	[LOOMITHAR] = { 233815 },	-- Loom'ithar
	[NAAZINDHRI] = { 233816 },	-- Soulbinder Naazindhri
	[ARAZ] = { 233817, 247989 },	-- Forgeweaver Araz
	[HUNTERS] = {
		237661,	-- Adarus Duskblaze
		237662,	-- Ilyssa Darksorrow
		237660,	-- Velaryn Bloodwrath
		248404,	-- Velaryn Bloodwrath
	},
	[FRACTILLUS] = { 237861 },	-- Fractillus <The Shatterer>
	[SALHADAAR] = { 237763 },	-- Nexus-King Salhadaar
	[DIMENSIUS] = { 233824, 241517 },	-- Dimensius <The All-Devouring>
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[PLEXUS] = {
		i(237523),	-- Arcanotech Wrist-Matrix
		i(237533),	-- Atomic Phasebelt
		i(237543),	-- Chambersieve Waistcoat
		i(242394),	-- Eradicating Arcanocore
		i(237813),	-- Factory-Issue Plexhammer
		i(237525),	-- Irradiated Impurity Filter
		i(237567),	-- Logic Gate: Alpha
		i(237528),	-- Manaforged Displacement Chassis
		i(237547),	-- Mounted Manacannons
		i(237739),	-- Obliteration Beamglaive
		i(237736),	-- Overclocked Plexhammer
		i(237534),	-- Singed Sievecuffs
		i(237551),	-- Sterilized Expulsion Boots
	};
	[LOOMITHAR] = {
		i(237593, {	-- Dreadful Silken Offering
			i(237627),	-- Hollow Sentinel's Stonekilt
			i(237690),	-- Charhound's Vicious Hidecoat
			i(237699),	-- Inquisitor's Leggings of Madness
		}),
		i(237594, {	-- Mystic Silken Offering
			i(237681),	-- Breeches of the Mother Eagle
			i(237645),	-- Midnight Herald's Petticoat
			i(237717),	-- Augur's Ephemeral Trousers
		}),
		i(237595, {	-- Venerated Silken Offering
			i(237618),	-- Cuisses of the Lucent Battalion
			i(237708),	-- Dying Star's Leggings
			i(237636),	-- Tassets of Channeled Fury
		}),
		i(237596, {	-- Zenith Silken Offering
			i(237654),	-- Spellweaver's Immaculate Runeslacks
			i(237672),	-- Legwraps of Fallen Storms
			i(237663),	-- Pants of the Sudden Eclipse
			i(237609),	-- Living Weapon's Legguards
		}),
		i(242395),	-- Astral Antenna
		i(237522),	-- Colossal Lifetether
		i(237552),	-- Deathbound Shoulderpads
		i(237545),	-- Discarded Nutrient Shackles
		i(237524),	-- Laced Lair-Steppers
		i(242393),	-- Loom'ithar's Living Silk
		i(237732),	-- Piercing Strandbow
		i(237729),	-- Prodigious Gene Splicer
		i(237723),	-- Ward of the Weaving-Beast
	};
	[NAAZINDHRI] = {
		i(237585, {	-- Dreadful Binding Agent
			i(237629),	-- Hollow Sentinel's Gauntlets
			i(237692),	-- Charhound's Vicious Felclaws
			i(237701),	-- Inquisitor's Clutches of Madness
		}),
		i(237586, {	-- Mystic Binding Agent
			i(237683),	-- Wings of the Mother Eagle
			i(237647),	-- Midnight Herald's Gloves
			i(237719),	-- Augur's Ephemeral Mitts
		}),
		i(237587, {	-- Venerated Binding Agent
			i(237620),	-- Protectors of the Lucent Battalion
			i(237710),	-- Dying Star's Caress
			i(237638),	-- Claws of Channeled Fury
		}),
		i(237588, {	-- Zenith Binding Agent
			i(237656),	-- Spellweaver's Immaculate Scaleguards
			i(237674),	-- Grasp of Fallen Storms
			i(237665),	-- Deathgrips of the Sudden Eclipse
			i(237611),	-- Living Weapon's Crushers
		}),
		i(237546),	-- Bindings of Lost Essence
		i(237568),	-- Chrysalis of Sundered Souls
		i(237539),	-- Deathspindle Talons
		i(237550),	-- Fresh Ethereal Fetters
		i(237527),	-- Frock of Spirit's Reunion
		i(242398),	-- Naazindhri's Mystic Lash
		i(242391),	-- Soulbinder's Embrace
		i(237738),	-- Unbound Training Claws
		i(237730),	-- Voidglass Spire
	};
	[ARAZ] = {
		i(237589, {	-- Dreadful Foreboding Beaker
			i(237628),	-- Hollow Sentinel's Stonemask
			i(237691),	-- Charhound's Vicious Scalp
			i(237700),	-- Inquisitor's Portal to Madness
		}),
		i(237590, {	-- Mystic Foreboding Beaker
			i(237682),	-- Skymane of the Mother Eagle
			i(237646),	-- Midnight Herald's Cowl
			i(237718),	-- Augur's Ephemeral Wide-Brim
		}),
		i(237591, {	-- Venerated Foreboding Beaker
			i(237619),	-- Lightmane of the Lucent Battalion
			i(237709),	-- Dying Star's Veil
			i(237637),	-- Aspect of Channeled Fury
		}),
		i(237592, {	-- Zenith Foreboding Beaker
			i(237655),	-- Spellweaver's Immaculate Focus
			i(237673),	-- Half-Mask of Fallen Storms
			i(237664),	-- Hood of the Sudden Eclipse
			i(237610),	-- Living Weapon's Faceshield
		}),
		i(242402),	-- Araz's Ritual Forge
		i(237526),	-- Breached Containment Guards
		i(237538),	-- Forgeweaver's Journal Holster
		i(237529),	-- Harvested Attendant's Uniform
		i(237724),	-- Iris of the Dark Beyond
		i(237553),	-- Laboratory Test Slippers
		i(237570),	-- Logic Gate: Omega
		i(237726),	-- Marvel of Technomancy
		i(237737),	-- Photon Sabre Prime
	};
	[HUNTERS] = {
		i(237597, {	-- Dreadful Yearning Cursemark
			i(237626),	-- Hollow Senintel's Perches
			i(237689),	-- Charhound's Vicious Hornguards
			i(237698),	-- Inquisitor's Gaze of Madness
		}),
		i(237598, {	-- Mystic Yearning Cursemark
			i(237680),	-- Ritual Pauldrons of the Mother Eagle
			i(237644),	-- Midnight Herald's Shadowguards
			i(237716),	-- Augur's Ephemeral Orbs of Power
		}),
		i(237599, {	-- Venerated Yearning Cursemark
			i(237617),	-- Chargers of the Lucent Battalion
			i(237707),	-- Dying Star's Pyrelights
			i(237635),	-- Fangs of Channeled Fury
		}),
		i(237600, {	-- Zenith Yearning Cursemark
			i(237653),	-- Spellweaver's Immaculate Pauldrons
			i(237671),	-- Glyphs of Fallen Storms
			i(237662),	-- Smokemantle of the Sudden Eclipse
			i(237608),	-- Living Weapon's Ramparts
		}),
		i(237549),	-- Bloodwrath's Gnarled Claws
		i(242401),	-- Brand of Ceaseless Ire
		i(237554),	-- Clasp of Furious Freedom
		i(237727),	-- Collapsing Phaseblades
		i(237541),	-- Darksorrow's Corrupted Carapace
		i(237569),	-- Duskblaze's Desperation
		i(237741),	-- Event Horizon
		i(243308),	-- Interloper's Chain Boots
		i(243307),	-- Interloper's Plated Sabatons
		i(243306),	-- Interloper's Reinforced Sandals
		i(243305),	-- Interloper's Silken Striders
		i(242397),	-- Sigil of the Cosmic Hunt
		i(237561),	-- Yoke of Enveloping Hatred
	};
	[FRACTILLUS] = {
		i(237581, {	-- Dreadful Voidglass Contaminant
			i(237631),	-- Hollow Sentinel's Breastplate
			i(237694),	-- Charhound's Vicious Bindings
			i(237703),	-- Inquisitor's Robes of Madness
		}),
		i(237582, {	-- Mystic Voidglass Contaminant
			i(237685),	-- Vest of the Mother Eagle
			i(237649),	-- Midnight Herald's Hauberk
			i(237721),	-- Augur's Ephemeral Habiliments
		}),
		i(237583, {	-- Venerated Voidglass Contaminant
			i(237622),	-- Cuirass of the Lucent Battalion
			i(237712),	-- Dying Star's Cassock
			i(237640),	-- Furs of Channeled Fury
		}),
		i(237584, {	-- Zenith Voidglass Contaminant
			i(237658),	-- Spellweaver's Immaculate Crestward
			i(237676),	-- Gi of Fallen Storms
			i(237667),	-- Tactical Vest of the Sudden Eclipse
			i(237613),	-- Living Weapon's Bulwark
		}),
		i(237536),	-- Bite of the Astral Wastes
		i(237558),	-- Conjoined Glass Bracers
		i(242392),	-- Diamantine Voidcore
		i(237742),	-- Fractillus' Last Breath
		i(237565),	-- Kinetic Dunerunners
		i(237733),	-- Lacerated Current Caster
		i(237530),	-- Shrapnel-Fused Legguards
		i(242396),	-- Unyielding Netherprism
		i(237728),	-- Voidglass Kris
	};
	[SALHADAAR] = {
		i(237532),	-- Beacons of False Righteousness
		i(237564),	-- Darkrider Sabatons
		i(237531),	-- Elite Shadowguard Legwraps
		i(242400),	-- Nexus-King's Command
		i(237734),	-- Oath-Breaker's Recompense
		i(237555),	-- Pactbound Vambraces
		i(242403),	-- Perfidious Projector
		i(237557),	-- Reaper's Dreadbelt
		i(237544),	-- Royal Voidscale Gauntlets
		i(242406),	-- Salhadaar's Folly
		i(237556),	-- Sandals of Scarred Servitude
		i(237548),	-- Twilight Tyrant's Veil
		i(237740),	-- Vengeful Netherspike
		i(237735),	-- Voidglass Sovereign's Blade
	};
	[DIMENSIUS] = {
		i(242404),	-- All-Devouring Nucleus
		i(237535),	-- Artoshion's Abyssal Stare
		i(242405),	-- Band of the Shattered Soul
		i(237537),	-- Claws of Failed Resistance
		i(237731),	-- Ergospheric Cudgel
		i(237560),	-- Greaves of Shattered Space
		i(242399),	-- Screams of a Forgotten Sky
		i(237559),	-- Singularity Cincture
		i(237542),	-- Stellar Navigation Slacks
		i(237725),	-- Supermassive Starcrusher
		i(237562),	-- Time-Compressed Wristguards
		i(237563),	-- Ultradense Fission Girdle
		i(237540),	-- Winged Gamma Handlers
	};
};

------ Zone Drops ----------
local ZoneDropLoot = {
	i(238032),	-- Acolyte's Infused Leggings
	i(238028),	-- Bone-Melted Faceplate
	i(238036),	-- Entropy
	i(238027),	-- Harvested Creephide Cord
	i(238034),	-- Jak'tull's Intruder Stompers
	i(243048),	-- Technomancer's Service Sandals
	i(238031),	-- Veiled Manta Vest
	i(238030),	-- Voidhound Trainer's Boots
	i(238033),	-- Zadus's Liturgical Hat
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

InstanceHelper.UpgradeMapping = {
	-- #IF AFTER 11.3
	[DIFFICULTY.RAID.LFR] = 0,
	[DIFFICULTY.RAID.NORMAL] = 0,
	[DIFFICULTY.RAID.HEROIC] = 0,
	-- #ELSE
	[DIFFICULTY.RAID.LFR] = 3,
	[DIFFICULTY.RAID.NORMAL] = 5,
	[DIFFICULTY.RAID.HEROIC] = 6,
	-- #ENDIF
};

InstanceHelper.BossObjects = {
	[SALHADAAR] = { 562348 },	-- Spoils of the Nexus-King
}

local TokenModID = {
	[DIFFICULTY.RAID.LFR] = 149,
	[DIFFICULTY.RAID.NORMAL] = 149,
	[DIFFICULTY.RAID.HEROIC] = 151,
	[DIFFICULTY.RAID.MYTHIC] = 152,
}
local TokenSymModID = {
	[DIFFICULTY.RAID.LFR] = 4,
	[DIFFICULTY.RAID.NORMAL] = 4,
	[DIFFICULTY.RAID.HEROIC] = 3,
	[DIFFICULTY.RAID.MYTHIC] = 5,
}

InstanceHelper.ExtraLoots = {
	-- Warbound Tier Tokens (has different modIDs because of course)
	{
		Add = function(encounter, id, difficulty, data)
			local g = data[id]
			if g then
				g = clone(g)
				-- use alternate versions of the Tokens with different ModID, but non-filling symlink to the base tokens
				-- to prevent dupes in Main & Mini
				local dropModID = TokenModID[difficulty]
				local symModID = TokenSymModID[difficulty]
				-- copied from old Castle Nathria implementation
				for _,item in ipairs(g) do
					item.modID = dropModID
					item.skipFill = true
					item.up = IGNORED_VALUE
					item.sym = {{"select","itemID",modItemId(item.itemID,symModID)},{"groupfill",true},{"pop"}}	-- Base Version & Fill
					item.nomerge = true
				end
				encounter.groups = appendAllGroups(encounter.groups, g)
				return encounter
			end
		end,
		Data = {
			[FRACTILLUS] = {	-- Chest
				i(237581),	-- Dreadful Voidglass Contaminant
				i(237582),	-- Mystic Voidglass Contaminant
				i(237583),	-- Venerated Voidglass Contaminant
				i(237584),	-- Zenith Voidglass Contaminant
			},
			[HUNTERS] = {	-- Shoulder
				i(237597),	-- Dreadful Yearning Cursemark
				i(237598),	-- Mystic Yearning Cursemark
				i(237599),	-- Venerated Yearning Cursemark
				i(237600),	-- Zenith Yearning Cursemark
			},
			[ARAZ] = {	-- Head
				i(237589),	-- Dreadful Foreboding Beaker
				i(237590),	-- Mystic Foreboding Beaker
				i(237591),	-- Venerated Foreboding Beaker
				i(237592),	-- Zenith Foreboding Beaker
			},
			[NAAZINDHRI] = {	-- Hands
				i(237585),	-- Dreadful Binding Agent
				i(237586),	-- Mystic Binding Agent
				i(237587),	-- Venerated Binding Agent
				i(237588),	-- Zenith Binding Agent
			},
			[LOOMITHAR] = {	-- Legs
				i(237593),	-- Dreadful Silken Offering
				i(237594),	-- Mystic Silken Offering
				i(237595),	-- Venerated Silken Offering
				i(237596),	-- Zenith Silken Offering
			},
		}
	},
}

root(ROOTS.Instances, expansion(EXPANSION.TWW, {
	inst(1302, {	-- Manaforge Omega
		["coord"] = { 41.9, 21.5, KARESH },
		["timeline"] = { ADDED_11_2_0_SEASONSTART },
		["maps"] = {
			2460,	-- The Forge Core
			2461,	-- The Unbound Vault
			2462,	-- Cultivation Chambers
			2463,	-- Technomancers' Terrace
			2464,	-- Central Operations
			2465,	-- Wastes of Karesh
			2466,	-- The Shadow Docks
			2467,	-- Seat of the Devourer
			2468,	-- Remnants of Conquest
			2469,	-- Remnants of Entropy
			2470,	-- Devourer's Heart
			2471,	-- The Dark Heart
		},
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(41601, {	-- Might of the Shadowguard
					crit(103298, {	-- Plexus Sentinel
						["_encounter"] = { PLEXUS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(103299, {	-- Loom'ithar
						["_encounter"] = { LOOMITHAR, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(103300, {	-- Soulbinder Naazindhri
						["_encounter"] = { NAAZINDHRI, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(41602, {	-- Monsters of the Sands
					crit(103301, {	-- Forgeweaver Araz
						["_encounter"] = { ARAZ, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(103302, {	-- The Soul Hunters
						["_encounter"] = { HUNTERS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(103303, {	-- Fractillus
						["_encounter"] = { FRACTILLUS, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(41603, {	-- Heart of Darkness
					crit(103304, {	-- Nexus-King Salhadaar
						["_encounter"] = { SALHADAAR, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(103305, {	-- Dimensius, the All-Devouring
						["_encounter"] = { DIMENSIUS, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(41598, {	-- Manaforge Omega
					crit(103298, {	-- Plexus Sentinel
						["_encounter"] = { PLEXUS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(103299, {	-- Loom'ithar
						["_encounter"] = { LOOMITHAR, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(103300, {	-- Soulbinder Naazindhri
						["_encounter"] = { NAAZINDHRI, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(103301, {	-- Forgeweaver Araz
						["_encounter"] = { ARAZ, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(103302, {	-- The Soul Hunters
						["_encounter"] = { HUNTERS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(103303, {	-- Fractillus
						["_encounter"] = { FRACTILLUS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(103304, {	-- Nexus-King Salhadaar
						["_encounter"] = { SALHADAAR, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(103305, {	-- Dimensius, the All-Devouring
						["_encounter"] = { DIMENSIUS, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(41599, {	-- Heroic: Manaforge Omega
					crit(103289, {	-- Plexus Sentinel
						["_encounter"] = { PLEXUS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(103290, {	-- Loom'ithar
						["_encounter"] = { LOOMITHAR, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(103291, {	-- Soulbinder Naazindhri
						["_encounter"] = { NAAZINDHRI, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(103292, {	-- Forgeweaver Araz
						["_encounter"] = { ARAZ, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(103293, {	-- The Soul Hunters
						["_encounter"] = { HUNTERS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(103294, {	-- Fractillus
						["_encounter"] = { FRACTILLUS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(103295, {	-- Nexus-King Salhadaar
						["_encounter"] = { SALHADAAR, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(103296, {	-- Dimensius, the All-Devouring
						["_encounter"] = { DIMENSIUS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
				}),
				ach(41600),	-- Mythic: Manaforge Omega (automated)
				ach(41597, {	-- Glory of the Omega Raider (automated)
					i(242714),	-- Umbral K'arroc (MOUNT!)
				}),
				ach(42316),	-- Fractals? For Spring? Groundbreaking.
				ach(41620),	-- Manaforge Omega Guild Run
				ach(41621),	-- Heroic: Manaforge Omega Guild Run
			}),
			header(HEADERS.Faction, FACTION_MANAFORGE_VANDALS, {
				n(ACHIEVEMENTS, {
					ach(60940),	-- Vandals! In! Space!
				}),
				faction(FACTION_MANAFORGE_VANDALS),
				n(QUESTS, sharedData({
					["provider"] = { "n", 245344 },	-- Zo'turu <Renown Quartermaster>
					["coord"] = { 42.0, 22.1, KARESH },
				},bubbleDownRep(FACTION_MANAFORGE_VANDALS, {
					{		-- RENOWN 1 --
						q(92031, { ["timeline"] = { ADDED_11_2_0 } }),	-- Meet the Vandals
					}, {	-- RENOWN 2 --
						q(91525, { ["timeline"] = { ADDED_11_2_0 } }),	-- Head Hunting: Loom'ithar
					}, {	-- RENOWN 3 --
						q(91483, { ["timeline"] = { ADDED_11_2_0 } }),	-- Hacking the Mainframe
						q(91481, { ["timeline"] = { ADDED_11_2_0 } }),	-- Speed Siphoner
					}, {	-- RENOWN 4 --
						q(91476, {	-- Behind Enemy Lines
							["timeline"] = { ADDED_11_2_0 },
							["groups"] = { i(249699) },	-- Shadowguard Translocator
						}),
					}, {	-- RENOWN 5 --
						q(91459, { ["timeline"] = { ADDED_11_2_0 } }),	-- Manaforge Omega: A Walking Shadow [N]
						q(91460, { ["timeline"] = { ADDED_11_2_0 } }),	-- Manaforge Omega: A Walking Shadow [H]
						q(91461, { ["timeline"] = { ADDED_11_2_0 } }),	-- Manaforge Omega: A Walking Shadow [M]
					}, {	-- RENOWN 6 --
						q(91486, {	-- Attuned to the Aether
							["provider"] = { "n", 245348 },	-- Ba'choso
							["coord"] = { 42.0, 22.4, KARESH },
							["timeline"] = { ADDED_11_2_0 },
						}),
					}, {	-- RENOWN 7 --
						q(91477, { ["timeline"] = { ADDED_11_2_0 } }),	-- Behind Enemy Lines II
						q(91484, { ["timeline"] = { ADDED_11_2_0 } }),	-- Hacking the Forgeweaver
					}, {	-- RENOWN 8 --
						q(91489, {	-- A Curious Companion
							["provider"] = { "n", 245357 },	-- Zo'ya
							["coord"] = { 42.0, 22.4, KARESH },
							["timeline"] = { ADDED_11_2_0 },
							["groups"] = { i(246694) },	-- Zo'ya (PET!)
						}),
						q(92078, {	-- A New Recipe!
							["provider"] = { "n", 245348 },	-- Ba'choso
							["coord"] = { 42.0, 22.4, KARESH },
							["timeline"] = { ADDED_11_2_0 },
							["groups"] = {
								i(249709),	-- Formula: Gleeful Glamour - Ethereal (RECIPE!)
								i(249703),	-- Technique: Deal: Cartel Ba (RECIPE!)
								i(249705),	-- Technique: Deal: Cartel Om (RECIPE!)
								i(249701),	-- Technique: Deal: Cartel Zo (RECIPE!)
							},
						}),
						q(91526, { ["timeline"] = { ADDED_11_2_0 } }),	-- Head Hunting: Forgeweaver Araz
						q(91487, {	-- Welcome to the Team
							["timeline"] = { ADDED_11_2_0 },
							["groups"] = { i(186640) },	-- Vandal's Gearglider (MOUNT!)
						}),
					}, {	-- RENOWN 9 --
						q(91527, {	-- Head Hunting: The Soul Hunters
							["timeline"] = { ADDED_11_2_0 },
							["groups"] = { i(246492) },	-- Soulgorged Augment Rune
						}),
					}, {	-- RENOWN 10 --
						q(91482, { ["timeline"] = { ADDED_11_2_0 } }),	-- Speed Siphoner II
						q(91478, { ["timeline"] = { ADDED_11_2_0 } }),	-- Behind Enemy Lines III
					}, {	-- RENOWN 11 --
						q(91485, { ["timeline"] = { ADDED_11_2_0 } }),	-- Hacking the Planet
						q(91528, { ["timeline"] = { ADDED_11_2_0 } }),	-- Head Hunting: Horrors of the Forge
					}, {	-- RENOWN 12 --
						q(91529, { ["timeline"] = { ADDED_11_2_0 } }),	-- Head Hunting: Nexus-King Salhadaar
					}, {	-- RENOWN 13 --
						q(91479, { ["timeline"] = { ADDED_11_2_0 } }),	-- Behind Enemy Lines IV
						q(91530, {	-- Seeing Eye to Eye
							["timeline"] = { ADDED_11_2_0 },
							["groups"] = { i(244913) },	-- Looker Gaz'kreth Jr. (PET!)
						}),
					}, {	-- RENOWN 14 --
						q(91954, {	-- Freezing Over
							["timeline"] = { ADDED_11_2_0 },
							["groups"] = { i(242728) },	-- The Bone Freezer (MOUNT!)
						}),
						title(640),	-- Star Savior <Name>
					}, {	-- RENOWN 15 --
						q(91480, { ["timeline"] = { ADDED_11_2_0 } }),	-- Behind Enemy Lines V
						spell(1239155),	-- Path of the All-Devouring
					},
				}))),
				n(VENDORS, {
				-- NOTE: There are 3 vendors outside the Raid Entrance. Items they sell are not renown locked.
				n(245349, {	-- Zo'ropo <Eccentric Engineer>
					["coord"] = { 42.0, 22.0, KARESH },
					["groups"] = sharedData({
						["cost"] = { { "i", 246727, 1 } },	-- Ethereal Essence Sliver
					}, {
						i(249206),	-- Manaforge Raider's Cosmic Baton (COSMETIC!)
						i(249170),	-- Manaforge Raider's Cosmic Beamglaive (COSMETIC!)
						i(249212),	-- Manaforge Raider's Cosmic Blade (COSMETIC!)
						i(249203),	-- Manaforge Raider's Cosmic Caster (COSMETIC!)
						i(249191),	-- Manaforge Raider's Cosmic Greatsword (COSMETIC!)
						i(249209),	-- Manaforge Raider's Cosmic Hatchet (COSMETIC!)
						i(249173),	-- Manaforge Raider's Cosmic Lightshiv (COSMETIC!)
						i(249197),	-- Manaforge Raider's Cosmic Phaseblade (COSMETIC!)
						i(249167),	-- Manaforge Raider's Cosmic Plexhammer (COSMETIC!)
						i(249194),	-- Manaforge Raider's Cosmic Reactor (COSMETIC!)
						i(249176),	-- Manaforge Raider's Cosmic Recurve (COSMETIC!)
						i(249200),	-- Manaforge Raider's Cosmic Shard (COSMETIC!)
						i(249164),	-- Manaforge Raider's Cosmic Shockmace (COSMETIC!)
						i(249182),	-- Manaforge Raider's Cosmic Spire (COSMETIC!)
						i(249188),	-- Manaforge Raider's Cosmic Staff (COSMETIC!)
						i(249215),	-- Manaforge Raider's Cosmic Starcrusher (COSMETIC!)
						i(249185),	-- Manaforge Raider's Cosmic Ward (COSMETIC!)
						i(249179),	-- Manaforge Raider's Cosmic Warpblade (COSMETIC!)
						i(249208),	-- Manaforge Raider's Devouring Baton (COSMETIC!)
						i(249172),	-- Manaforge Raider's Devouring Beamglaive (COSMETIC!)
						i(249214),	-- Manaforge Raider's Devouring Blade (COSMETIC!)
						i(249205),	-- Manaforge Raider's Devouring Caster (COSMETIC!)
						i(249193),	-- Manaforge Raider's Devouring Greatsword (COSMETIC!)
						i(249211),	-- Manaforge Raider's Devouring Hatchet (COSMETIC!)
						i(249175),	-- Manaforge Raider's Devouring Lightshiv (COSMETIC!)
						i(249199),	-- Manaforge Raider's Devouring Phaseblade (COSMETIC!)
						i(249169),	-- Manaforge Raider's Devouring Plexhammer (COSMETIC!)
						i(249196),	-- Manaforge Raider's Devouring Reactor (COSMETIC!)
						i(249178),	-- Manaforge Raider's Devouring Recurve (COSMETIC!)
						i(249202),	-- Manaforge Raider's Devouring Shard (COSMETIC!)
						i(249166),	-- Manaforge Raider's Devouring Shockmace (COSMETIC!)
						i(249184),	-- Manaforge Raider's Devouring Spire (COSMETIC!)
						i(249190),	-- Manaforge Raider's Devouring Staff (COSMETIC!)
						i(249217),	-- Manaforge Raider's Devouring Starcrusher (COSMETIC!)
						i(249187),	-- Manaforge Raider's Devouring Ward (COSMETIC!)
						i(249181),	-- Manaforge Raider's Devouring Warpblade (COSMETIC!)
						i(249159),	-- Manaforge Raider's Gamma Baton (COSMETIC!)
						i(249147),	-- Manaforge Raider's Gamma Beamglaive (COSMETIC!)
						i(249161),	-- Manaforge Raider's Gamma Blade (COSMETIC!)
						i(249158),	-- Manaforge Raider's Gamma Caster (COSMETIC!)
						i(249154),	-- Manaforge Raider's Gamma Greatsword (COSMETIC!)
						i(249160),	-- Manaforge Raider's Gamma Hatchet (COSMETIC!)
						i(249148),	-- Manaforge Raider's Gamma Lightshiv (COSMETIC!)
						i(249156),	-- Manaforge Raider's Gamma Phaseblade (COSMETIC!)
						i(249146),	-- Manaforge Raider's Gamma Plexhammer (COSMETIC!)
						i(249155),	-- Manaforge Raider's Gamma Reactor (COSMETIC!)
						i(249149),	-- Manaforge Raider's Gamma Recurve (COSMETIC!)
						i(249157),	-- Manaforge Raider's Gamma Shard (COSMETIC!)
						i(249145),	-- Manaforge Raider's Gamma Shockmace (COSMETIC!)
						i(249151),	-- Manaforge Raider's Gamma Spire (COSMETIC!)
						i(249153),	-- Manaforge Raider's Gamma Staff (COSMETIC!)
						i(249163),	-- Manaforge Raider's Gamma Starcrusher (COSMETIC!)
						i(249152),	-- Manaforge Raider's Gamma Ward (COSMETIC!)
						i(249150),	-- Manaforge Raider's Gamma Warpblade (COSMETIC!)
						i(249162),	-- Manaforge Raider's Tyrant Maul (COSMETIC!)
						i(249207),	-- Manaforge Raider's Umbral Baton (COSMETIC!)
						i(249171),	-- Manaforge Raider's Umbral Beamglaive (COSMETIC!)
						i(249213),	-- Manaforge Raider's Umbral Blade (COSMETIC!)
						i(249204),	-- Manaforge Raider's Umbral Caster (COSMETIC!)
						i(249192),	-- Manaforge Raider's Umbral Greatsword (COSMETIC!)
						i(249210),	-- Manaforge Raider's Umbral Hatchet (COSMETIC!)
						i(249174),	-- Manaforge Raider's Umbral Lightshiv (COSMETIC!)
						i(249198),	-- Manaforge Raider's Umbral Phaseblade (COSMETIC!)
						i(249168),	-- Manaforge Raider's Umbral Plexhammer (COSMETIC!)
						i(249195),	-- Manaforge Raider's Umbral Reactor (COSMETIC!)
						i(249177),	-- Manaforge Raider's Umbral Recurve (COSMETIC!)
						i(249201),	-- Manaforge Raider's Umbral Shard (COSMETIC!)
						i(249165),	-- Manaforge Raider's Umbral Shockmace (COSMETIC!)
						i(249183),	-- Manaforge Raider's Umbral Spire (COSMETIC!)
						i(249189),	-- Manaforge Raider's Umbral Staff (COSMETIC!)
						i(249216),	-- Manaforge Raider's Umbral Starcrusher (COSMETIC!)
						i(249186),	-- Manaforge Raider's Umbral Ward (COSMETIC!)
						i(249180),	-- Manaforge Raider's Umbral Warpblade (COSMETIC!)
					}),
				}),
				n(245348, {	-- Ba'choso <Curious Curator>
					["coord"] = { 42.0, 22.4, KARESH },
					["groups"] = sharedData({
						["cost"] = { { "i", 245510, 1 } },	-- Loombeast Silk
					}, {
						iensemble(248977),	-- Ensemble: Augur's Ephemeral Brilliance
						iensemble(248978),	-- Ensemble: Breeze of Fallen Storms
						iensemble(248981),	-- Ensemble: Capes of the Sudden Eclipse
						iensemble(248979),	-- Ensemble: Gilded Cloaks of the Lucent Battalion
						iensemble(248969),	-- Ensemble: Hollow Sentinel's Wingdrapes
						iensemble(248983),	-- Ensemble: Inquisitor's All-Seeing Madness
						iensemble(248984, {_IgnoreSharedEnsembleByQuestID=true}),	-- Ensemble: Living Weapon's Capes
						iensemble(248980),	-- Ensemble: Memories of a Dying Star
						iensemble(248976),	-- Ensemble: Midnight Herald's Shrouds
						iensemble(248972),	-- Ensemble: Plumes of the Mother Eagle
						iensemble(248982, {_IgnoreSharedEnsembleByQuestID=true}),	-- Ensemble: Shawls of Channeled Fury
						iensemble(248973),	-- Ensemble: Spellweaver's Immaculate Runecloaks
						iensemble(248971),	-- Ensemble: Vicious Charhound's Felcovers
					}),
				}),
				n(248304, {	-- Acquirer Ba'theom <Exotic Armor>
					["coord"] = { 42.1, 23.4, KARESH },
					-- Sells Tier set tokens in exchange for Hungering Void Curios
				}),
			}),
			}),
			o(456208, {	-- The Catalyst
				["description"] = "This allows converting certain pieces of gear into Tier items for your Class.\n\nMake sure to equip your item first before converting it.",
				["coord"] = { 50.0, 54.2, DORNOGAL },
				["modelScale"] = 4,
				["catalystID"] = 11,	-- ItemBonus.Value_0 TWW:S3
				["groups"] = {
					Difficulty(DIFFICULTY.RAID.LFR, {["upgradeTrackID"]=UPGRADETRACKS.VETERAN}).AddGroups(
						ALL_CLASS_TIERS_HELPER(MANAFORGE_OMEGA_TIER, DIFFICULTY.RAID.LFR)
					),
					Difficulty(DIFFICULTY.RAID.NORMAL, {["upgradeTrackID"]=UPGRADETRACKS.CHAMPION}).AddGroups(
						ALL_CLASS_TIERS_HELPER(MANAFORGE_OMEGA_TIER, DIFFICULTY.RAID.NORMAL)
					),
					Difficulty(DIFFICULTY.RAID.HEROIC, {["upgradeTrackID"]=UPGRADETRACKS.HERO}).AddGroups(
						ALL_CLASS_TIERS_HELPER(MANAFORGE_OMEGA_TIER, DIFFICULTY.RAID.HEROIC)
					),
					Difficulty(DIFFICULTY.RAID.MYTHIC, {["upgradeTrackID"]=UPGRADETRACKS.MYTH}).AddGroups(
						ALL_CLASS_TIERS_HELPER(MANAFORGE_OMEGA_TIER, DIFFICULTY.RAID.MYTHIC)
					),
				},
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				n(QUESTS, {
					q(91140, {	-- A Piece of the Past
						["provider"] = { "i", 245743 },	-- A Curious Crystalline Fragment (QS!)
						["classes"] = { PRIEST },
					}),
					q(91138, {	-- I am the Creator and Destroyer
						["sourceQuest"] = 91140,	-- A Piece of the Past
						["qg"] = 245915,	-- Om'en
						["coord"] = { 40.4, 27.4, KARESH_TAZAVESH },
						["classes"] = { PRIEST },
						["groups"] = { i(250082) },	-- T'uure, Remnant of the Naaru (COSMETIC!)
					}),
					hqt(91064, {	-- Stay awhile and listen: Alleria Windrunnner
						["name"] = "Stay awhile and listen: Alleria Windrunnner",
						["description"] = "Dialogue becomes available after defeating Dimensius.",
						["qg"] = 242456,	-- Alleria Windrunnner
					}),
				}),
				BossOnly(PLEXUS),
				BossOnly(LOOMITHAR, {
					i(224435),	-- Pattern: Duskthread Lining (RECIPE!)
					i(245510),	-- Loombeast Silk
				}),
				BossOnly(NAAZINDHRI, {
					i(250104),	-- Soulbinder's Nethermantle (COSMETIC!)
				}),
				BossOnly(ARAZ, {
					i(223048),	-- Plans: Siphoning Stiletto (RECIPE!)
					i(249218),	-- Manaforged Instrument
				}),
				BossOnly(HUNTERS, {
					i(223097),	-- Pattern: Adrenal Surge Clasp (RECIPE!)
				}),
				BossOnly(FRACTILLUS, {
					i(223094),	-- Design: Magnificent Jeweler's Setting (RECIPE!)
				}),
				BossOnly(SALHADAAR, {
					i(243365),	-- Maw of the Void
					i(246727, {	-- Ethereal Essence Sliver
						["description"] = "Has a small chance dropping as Personal Loot from Nexus-King Salhadaar once you have reached Renown 12 with the Manaforge Vandals.",
						["minReputation"] = { FACTION_MANAFORGE_VANDALS, 12 },
					}),
				}),
				BossOnly(DIMENSIUS, {
					i(234273),	-- A Dimmed Crystal (QS!)
					i(245743),	-- A Curious Crystalline Fragment (QS!)
					i(246565),	-- Cosmic Hearthstone (TOY!)
					i(223144),	-- Formula: Enchant Weapon - Authority of the Depths (RECIPE!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroupsWithUpgrades({
				ZoneDrops({}),
				CommonBossDrops({
					currency(WEATHERED_ETHEREAL_CREST, {
						["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH },
					}),
				}),
				header(HEADERS.LFGDungeon, 2799, {	-- Might of the Shadowguard
					Boss(PLEXUS),
					Boss(LOOMITHAR),
					Boss(NAAZINDHRI),
				}),
				header(HEADERS.LFGDungeon, 2800, {	-- Monsters of the Sands
					Boss(ARAZ),
					Boss(HUNTERS),
					Boss(FRACTILLUS),
				}),
				header(HEADERS.LFGDungeon, 2801, {	-- Heart of Darkness
					Boss(SALHADAAR),
					Boss(DIMENSIUS, {
						i(237602, {	-- Hungering Void Curio
							["sym"] = {{"sub","instance_tier",1302,DIFFICULTY.RAID.LFR}},
							["up"] = IGNORED_VALUE,
						}),
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(PLEXUS, {
					ach(42118),	-- Of Mice and Manaforges
				}),
				BossOnly(LOOMITHAR, {
					ach(41613),	-- Time to Vote! Cute or Scary?
				}),
				BossOnly(NAAZINDHRI, {
					ach(41614),	-- Mother of All Tantrums
				}),
				BossOnly(ARAZ, {
					ach(41615),	-- Cheat Meal
				}),
				BossOnly(HUNTERS, {
					ach(41616),	-- I See... Absolutely Nothing
				}),
				BossOnly(FRACTILLUS, {
					ach(41617),	-- Breaking the Fourth Wall
				}),
				BossOnly(SALHADAAR, {
					ach(41618),	-- Swing and a Miss
				}),
				BossOnly(DIMENSIUS, {
					ach(41619),	-- Defying Gravity
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(CARVED_ETHEREAL_CREST, {
						["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH },
					}),
				}),
				ZoneDrops({}),
				Boss(PLEXUS),
				Boss(LOOMITHAR),
				Boss(NAAZINDHRI),
				Boss(ARAZ),
				Boss(HUNTERS),
				Boss(FRACTILLUS),
				Boss(SALHADAAR),
				Boss(DIMENSIUS, {
					i(237602, {	-- Hungering Void Curio
						["sym"] = {{"sub","instance_tier",1302,DIFFICULTY.RAID.NORMAL}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				n(QUESTS, {
					q(91413, {	-- A Twilight Oath's End
						["provider"] = { "i", 246446 },	-- Mark of the Twilight Oath
						["groups"] = { i(246445) },	-- Royal Voidwing (MOUNT!)
					}),
				}),
				BossOnly(PLEXUS),
				BossOnly(LOOMITHAR),
				BossOnly(NAAZINDHRI),
				BossOnly(ARAZ),
				BossOnly(HUNTERS),
				BossOnly(FRACTILLUS),
				BossOnly(SALHADAAR),
				BossOnly(DIMENSIUS, {
					i(246446, { ["timeline"] = { REMOVED_12_0_X_SEASONSTART } }),	-- Mark of the Twilight Oath (QS!)
					ach(41624, { ["timeline"] = { REMOVED_12_0_0 } }),	-- Ahead of the Curve: Dimensius, the All-Devouring
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(RUNED_ETHEREAL_CREST, {
						["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH },
					}),
				}),
				ZoneDrops({}),
				Boss(PLEXUS),
				Boss(LOOMITHAR),
				Boss(NAAZINDHRI),
				Boss(ARAZ),
				Boss(HUNTERS),
				Boss(FRACTILLUS),
				Boss(SALHADAAR),
				Boss(DIMENSIUS, {
					i(237602, {	-- Hungering Void Curio
						["sym"] = {{"sub","instance_tier",1302,DIFFICULTY.RAID.HEROIC}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				CommonBossDrops({
					currency(GILDED_ETHEREAL_CREST, {
						["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH },
					}),
				}),
				n(QUESTS, {
				}),
				ZoneDrops({
				}),
				Boss(PLEXUS, {
					ach(41604),	-- Mythic: Plexus Sentinel
				}),
				Boss(LOOMITHAR, {
					ach(41605),	-- Mythic: Loom'ithar
				}),
				Boss(NAAZINDHRI, {
					ach(41606),	-- Mythic: Soulbinder Naazindhri
				}),
				Boss(ARAZ, {
					ach(41607),	-- Mythic: Forgeweaver Araz
				}),
				Boss(HUNTERS, {
					ach(41608),	-- Mythic: The Soul Hunters
				}),
				Boss(FRACTILLUS, {
					ach(41609),	-- Mythic: Fractillus
				}),
				Boss(SALHADAAR, {
					ach(41610),	-- Mythic: Nexus-King Salhadaar
				}),
				Boss(DIMENSIUS, {
					ach(41611, {	-- Mythic: Dimensius, the All-Devouring
						title(615),	-- Void Vanquisher <Name>
					}),
					ach(41625, {["timeline"] = { ADDED_11_2_0, REMOVED_12_0_0 }}),	-- Cutting Edge: Dimensius, the All-Devouring
					ach(41623, applyDataSelf({["timeline"] = { ADDED_11_2_0, REMOVED_12_0_0 } }, {	-- Hall of Fame: Dimensius, the All-Devouring
						title(614),	-- <Name>, Famed Slayer of Dimensius
					})),
					ach(41622),	-- Mythic: Dimensius, the All-Devouring Guild Run
					i(243061),	-- Unbound Star-Eater (MOUNT!)
					i(237602, {	-- Hungering Void Curio
						["sym"] = {{"sub","instance_tier",1302,DIFFICULTY.RAID.MYTHIC}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	inst(1302, {	-- Manaforge Omega
		["timeline"] = { ADDED_11_2_0_SEASONSTART },
		["groups"] = {
			n(FACTIONS, {
				header(HEADERS.Faction, FACTION_MANAFORGE_VANDALS, {
					n(QUESTS, {
						q(92032, {	-- Triggered with Meet the Vandals (92031)
							["timeline"] = { ADDED_11_2_0 },
						}),
						q(92033, {	-- Triggered with Meet the Vandals (92031)
							["timeline"] = { ADDED_11_2_0 },
						}),
					}),
				}),
			}),
		},
	}),
	inst(1302, bubbleDown({	-- Manaforge Omega
		["isWeekly"] = true,
	},{
		-- All
		q(91046, name(HEADERS.Item, 245510)),	-- Loombeast Silk chance per week (assumed -- also triggered on alt with no loot)
		q(91010, name(HEADERS.Encounter, PLEXUS)),	-- Sentinel Plexus
		q(91012, name(HEADERS.Encounter, LOOMITHAR)),	-- Loomithar
		q(91011, name(HEADERS.Encounter, NAAZINDHRI)),	-- Soulbinder Naazindhr
		q(91013, name(HEADERS.Encounter, ARAZ)),	-- Forgeweaver Araz
		q(91014, name(HEADERS.Encounter, HUNTERS)),	-- The Soul Hunters
		q(91015, name(HEADERS.Encounter, FRACTILLUS)),	-- Fractillus
		q(91016, name(HEADERS.Encounter, SALHADAAR)),	-- Loomithar
		q(91017, name(HEADERS.Encounter, DIMENSIUS)),	-- Dimensius
		-- Trash
		q(91021, name(HEADERS.NPC, 239454)),	-- Darkmage Zadus
		q(91019, name(HEADERS.NPC, 239702)),	-- Watcher Gaz'Kreth
		q(91020, name(HEADERS.NPC, 245617)),	-- The Bone Melter
		q(91018, name(HEADERS.NPC, 245601)),	-- Enforcer Jak'tull

		-- LFR
		q(90977, name(HEADERS.NPC, 239454)),	-- Darkmage Zadus
		q(90981, name(HEADERS.NPC, 239702)),	-- Watcher Gaz'Kreth
		q(90989, name(HEADERS.NPC, 245617)),	-- The Bone Melter
		q(90985, name(HEADERS.NPC, 245601)),	-- Enforcer Jak'tull

		-- Normal
		q(90978, name(HEADERS.NPC, 239454)),	-- Darkmage Zadus
		q(90982, name(HEADERS.NPC, 239702)),	-- Watcher Gaz'Kreth
		q(90990, name(HEADERS.NPC, 245617)),	-- The Bone Melter
		q(90986, name(HEADERS.NPC, 245601)),	-- Enforcer Jak'tull

		-- Heroic
		q(90979, name(HEADERS.NPC, 239454)),	-- Darkmage Zadus
		q(90983, name(HEADERS.NPC, 239702)),	-- Watcher Gaz'Kreth
		q(90991, name(HEADERS.NPC, 245617)),	-- The Bone Melter
		q(90987, name(HEADERS.NPC, 245601)),	-- Enforcer Jak'tull

		-- Mythic
		q(90980, name(HEADERS.NPC, 239454)),	-- Darkmage Zadus
		q(90984, name(HEADERS.NPC, 239702)),	-- Watcher Gaz'Kreth
		q(90992, name(HEADERS.NPC, 245617)),	-- The Bone Melter
		q(90988, name(HEADERS.NPC, 245601)),	-- Enforcer Jak'tull

	})),
}));
