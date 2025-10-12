-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

-- DO NOT USE THIS FILE AS A REFERENCE FOR OTHER DUNGEON CONSOLIDATION USING INSTANCEHELPER
-- IT IS A DISASTER DUE TO TWWS2 CONTENT BEING MANGLED BY BLIZZ INSTEAD OF ACTING IN THE SAME
-- MANNER AS MOTHERLODE. USE THAT AS A REFERENCE INSTEAD UNDER THE ASSUMPTION THAT BLIZZ
-- DOES THINGS CORRECTLY

------ Encounter Constants ------
local GOBBAMAK = 2357
local GUNKER = 2358
local TRIXIENAENO = 2360
local HK8 = 2355
local TUSSLETONKS = 2336
local KUJO = 2339
local MACHINIST = 2348
local KING = 2331
------ EncounterToCRS ------
local EncounterToCRS = {
	[GOBBAMAK] = { 150159 },	-- King Gobbamak
	[GUNKER] = { 150222 },	-- Gunker
	[TRIXIENAENO] = {
		150712,	-- Trixie Tazer
		153755,	-- Naeno Megacrash
		153756,	-- Mechacycle
	 },
	[HK8] = { 150190 },	-- HK-8 Aerial Oppression Unit
	[TUSSLETONKS] = {
		144244,	-- The Platinum Pummeler
		145185,	-- Gnomercy 4.U.
	},
	[KUJO] = { 144246 },	-- K.U.-J.0.
	[MACHINIST] = { 144248 },	-- Machinist's Garden
	[KING] = {
		150396,	-- Aerial Unit R-21/X
		150397,	-- King Mechagon
		144249,	-- Omega Buster
	},
}
------ EncounterToLoot ------
local EncounterToLoot = {
	[GOBBAMAK] = {
		i(169035),	-- Reclaimed Shock Coil
		i(169052),	-- Cranial Recalibrator
		i(169054),	-- Galvanized Leather Grips
		i(169051),	-- Anodized Plate Legguards
		i(169053),	-- Roughshod Chain Boots
		i(169049),	-- Supplicant's Soiled Slippers
	},
	[GUNKER] = {
		i(169058),	-- Salvaged Incendiary Tool
		i(169062),	-- Sharpened Trogg Femur
		i(169061),	-- Insulating Threaded Gloves
		i(169059),	-- Slick Tactical Grips
		i(169060),	-- Mekgineer's Utility Belt
		i(169057),	-- Well-Oiled Plate Girdle
		i(169055),	-- Greaves of Acid Resistance
		i(169056),	-- Ooey-Gooey Galoshes
	},
	[TRIXIENAENO] = {
		i(169066),	-- Trixie's Backup Backbiter
		i(169068),	-- Salvaged Mekacycle Shielding
		i(169064),	-- Mountebank's Colorful Cloak
		i(169069),	-- Wraps of Electrostatic Potential
		i(169063),	-- High Speed Gauntlets
		i(169067),	-- Silken Safety Harness
		i(169065),	-- Reinforced Riding Chausses
		i(169070),	-- Unseen Predator's Breeches
		i(169769),	-- Remote Guidance Device
	},
	[HK8] = {
		i(168963),	-- Fusion Hacker
		i(169077),	-- Light Auto-Stabilizing Energy Rifle
		i(169071),	-- Overcharged Pantaloons
		i(169157),	-- Logic Loop of Division
		i(169076),	-- Logic Loop of Maintenance
		i(169158),	-- Logic Loop of Recursion
		i(169156),	-- Logic Loop of Synergy
	},
	[TUSSLETONKS] = {
		i(168962),	-- Apex Perforator
		i(168955),	-- Electrifying Cognitive Amplifier
		i(168967),	-- Gold-Coated Superconductors
		i(168957),	-- Mekgineer's Championship Belt
		i(168958),	-- Ringmaster's Cummerbund
		i(168966),	-- Heavy Alloy Legplates
		i(168964),	-- Hyperthread Boots
		i(168965),	-- Modular Platinum Plating
	},
	[KUJO] = {
		i(168969),	-- Operator's Mitts
		i(168971),	-- Swift Pneumatic Grips
		i(168968),	-- Flame-Seared Leggings
		i(168972),	-- Pyroclastic Greatboots
		i(232546, {timeline={ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART}}),	-- K.U.-J.0.'s Flame Vents
	},
	[MACHINIST] = {
		i(168973),	-- Neural Synapse Enhancer
		i(169608),	-- Tearing Sawtooth Blade
		i(168976),	-- Automatic Waist Tightener
		i(168974),	-- Self-Repairing Cuisses
		i(168975),	-- Machinist's Treasured Treads
		i(169159),	-- Overclocking Bit Band
		i(169161),	-- Protecting Bit Band
		i(168977),	-- Rebooting Bit Band
		i(169160),	-- Shorting Bit Band
		i(169344),	-- Ingenious Mana Battery
	},
	[KING] = {
		i(168978),	-- Anodized Deflectors
		i(168989),	-- Hyperthread Wristwraps
		i(168980),	-- Gauntlets of Absolute Authority
		i(168985),	-- Self-Sanitizing Handwraps
		i(168986),	-- Mad King's Sporran
		i(168983),	-- Maniacal Monarch's Girdle
		i(168982),	-- Regal Mekanospurs
		i(168988),	-- Royal Attendant's Trouser
	},
}
--- Azerite Pieces ---
local AzeriteLoot = {
	[HK8] = {
		i(169074),	-- Epaulets of Arcing Power
		i(169075),	-- Tank Buster Pauldrons
		i(169073),	-- Type II Bomber Jacket
		i(169072),	-- Volatile Arming Doublet
	},
	[KING] = {
		i(168981),	-- Circuit-Linked Chainmail
		i(168984),	-- Extravagant Epaulets
		i(168979),	-- Mechanized Plate Chasse
		i(168987),	-- Shoulderguards of Fraying Sanity
	},
}
--- Azewrong Pieces ---
local AzewrongLoot = {
	-- [HK8] = {
		-- Doesn't exist yet
	-- },
	[KING] = {
		i(235810),	-- Circuit-Linked Chainmail
		i(235811),	-- Extravagant Epaulets
		i(235809),	-- Mechanized Plate Chasse
		i(235812),	-- Shoulderguards of Fraying Sanity
	},
}
------ Zone Drops ----------
local ZoneDropLoot = {
	i(170212),	-- Recipe: Mecha-Bytes (RECIPE!)
	i(170211),	-- Recipe: Famine Evaluator and Snack Table [Rank 3] (RECIPE!)
	i(170210),	-- Recipe: Abyssal Healing Potion [Rank 3] (RECIPE!)
	i(170208),	-- Recipe: Potion of Unbridled Fury [Rank 3] (RECIPE!)
	i(170209),	-- Recipe: Potion of Wild Mending [Rank 3] (RECIPE!)
	i(168632),	-- Slipstream Generator
	i(168756),	-- Hijack Synaptic Circuits
	i(168798),	-- Trajectory Analysis
};

MECHAGON_JUNKYARD = createHeader({
	readable = "Junkyard",
	icon = 321487,
	text = {
		en = "Junkyard",
		de = "Schrottplatz",
		es = "Desguace",
		fr = "La casse",
		it = "Discarica",
		pt = "Ferro-velho",
		ru = "Свалка",
		ko = "고철장",
		cn = "垃圾场",
	},
});
MECHAGON_WORKSHOP = createHeader({
	readable = "Workshop",
	icon = 134240,
	text = {
		en = WOWAPI_GetSpellName(251998),
	},
});
-- Unavailable during:
-- TWW S2 Mythic Plus (11.1 until 11.2)
local TIMELINE_UNAVAILABLE_MYTHICPLUS = {
	ADDED_8_2_0,
	REMOVED_11_1_0_SEASONSTART,
	ADDED_11_2_0
}

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.ZoneDrops

InstanceHelper.UpgradeMapping = setmetatable({
	-- Heroic acts as the HERO track upgrade appearances
	[DIFFICULTY.DUNGEON.SEASONAL.TWWS2_HEROTRACK] = DifficultyDB[DIFFICULTY.DUNGEON.SEASONAL.TWWS2_MYTHTRACK].modID,
}, { __index = function(t, diffID) print("WARN: Missing UpgradeMapping for ",diffID) return 0 end})

local CombineSeasonalLoot

for e,loot in pairs(AzewrongLoot) do
	sharedData({timeline = {ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART}},loot)
end
-- TODO: so help me if Classic does M+ in BFA and it's all different....
-- TODO: revise in TWW S3 for what happens to this dungeon!
-- #IF AFTER 11.1
-- #IF BEFORE 11.2
-- Normal/Heroic/Mythic all shared
CombineSeasonalLoot = true
-- During the season, Azewrong gear is available regardless of HOA status for the character
for e,loot in pairs(AzewrongLoot) do
	for _,item in ipairs(loot) do
		item.customCollect = nil
	end
end
-- #ENDIF
-- #ENDIF

-- Combine all the Seasonal Difficulties into one difficulty group since they are all shared
local SeasonDifficultyGroups
if CombineSeasonalLoot then
	local function BackwardsHeroTrackItem(item)
		item.description = "Mythic Keystone drops the Mythic appearance of this Item (upgrades into Heroic)"
		return item
	end
	SeasonDifficultyGroups = {
		-- Assumptions:
			-- No Azerite is available in any difficulty during Season
			-- Hero Track 5/6 grants Myth Appearance
		-- Confirmed:
			-- H-M5 drop as Heroic Appearance
			-- Azewrong Helms only have a single Appearance
		-- H/M5+ have Heroic Appearance (non-Season Heroic) -> (Hero track Upgrades to Mythic appearance)
		-- Technically it requires dropping at M+6 to be on Hero track to Upgrade, but I don't want to duplicate in both places
		Difficulty(DIFFICULTY.DUNGEON.SEASONAL.TWWS2_HEROTRACK, {
			difficulties = { DIFFICULTY.DUNGEON.HEROIC, DIFFICULTY.DUNGEON.MYTHIC, DIFFICULTY.DUNGEON.KEYSTONE },
		}).AddGroupsWithUpgrades({
			n(MECHAGON_WORKSHOP, {
				BossOnly(TUSSLETONKS, appendAllGroups(
					-- Items that work properly (i.e. Heroic=Adventurer=Champion=Hero, Mythic=Myth)
					{
						i(168962),	-- Apex Perforator
						i(168955),	-- Electrifying Cognitive Amplifier
						i(168967),	-- Gold-Coated Superconductors
						i(168958),	-- Ringmaster's Cummerbund
						i(168965),	-- Modular Platinum Plating
					},
					-- Items that Blizzard switched from the default appearances for this difficulty
					sharedData({
						ItemAppearanceModifierID = 3,
						-- during the Season, Blizz changed the Item/Appearance association such that Heroic Mod is no longer accurate to the previous Heroic Appearance
						modID = 33,
						up = 35,	-- Upgrades to the modID 35 version
					},{
						i(168966),	-- Heavy Alloy Legplates
						i(168964),	-- Hyperthread Boots
						i(168957),	-- Mekgineer's Championship Belt
					}
				))),
				BossOnly(KUJO, appendAllGroups(
					-- Items that work properly
					{
						i(232546, {timeline={ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART}}),	-- K.U.-J.0.'s Flame Vents
						i(168972),	-- Pyroclastic Greatboots
						i(168971),	-- Swift Pneumatic Grips
						i(199921, {	-- Trashmaster's Mantle
							["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
						}),
					},
					-- Items that Blizzard switched from the default appearances for this difficulty
					sharedData({
						ItemAppearanceModifierID = 3,
						-- during the Season, Blizz changed the Item/Appearance association such that Heroic Mod is no longer accurate to the previous Heroic Appearance
						modID = 33,
						up = 35,	-- Upgrades to the modID 35 version
					},{
						i(168969),	-- Operator's Mitts
						i(168968),	-- Flame-Seared Leggings
					}
				))),
				Boss(MACHINIST, {
				}),
				BossOnly(KING, appendAllGroups(
					-- Items that work properly (i.e. Heroic=Adventurer=Champion=Hero, Mythic=Myth)
					{
						i(168978),	-- Anodized Deflectors
						i(235811, {timeline={ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART}}),	-- Extravagant Epaulets
						i(235809, {timeline={ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART}}),	-- Mechanized Plate Chasse
						i(235812, {timeline={ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART}}),	-- Shoulderguards of Fraying Sanity
					},
					-- Items that Blizzard switched from the default appearances for this difficulty
					sharedData({
						ItemAppearanceModifierID = 3,
						-- during the Season, Blizz changed the Item/Appearance association such that Heroic Mod is no longer accurate to the previous Heroic Appearance
						modID = 33,
						up = 35,	-- Upgrades to the modID 35 version
					},{
						BackwardsHeroTrackItem(i(235810, {	-- Circuit-Linked Chainmail
							["timeline"]={ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART},
						})),
						i(168989),	-- Hyperthread Wristwraps
						i(168980),	-- Gauntlets of Absolute Authority
						i(168985),	-- Self-Sanitizing Handwraps
						BackwardsHeroTrackItem(i(168986)),	-- Mad King's Sporran
						i(168983),	-- Maniacal Monarch's Girdle
						i(168982),	-- Regal Mekanospurs
						i(168988),	-- Royal Attendant's Trouser
					}
				))),
			}),
		}),
		-- Myth Track Appearances via Upgrade only
		n(UPGRADE, bubbleDownFiltered({
			modID = DifficultyDB[DIFFICULTY.DUNGEON.SEASONAL.TWWS2_MYTHTRACK].modID
		},FILTERFUNC_itemID,{
			n(MECHAGON_WORKSHOP, {
				BossOnly(TUSSLETONKS, appendAllGroups(
					-- Items that work properly
					{
						i(168962),	-- Apex Perforator
						i(168955),	-- Electrifying Cognitive Amplifier
						i(168967),	-- Gold-Coated Superconductors
						i(168958),	-- Ringmaster's Cummerbund
						i(168965),	-- Modular Platinum Plating
					},
					-- Items that Blizzard switched from the default appearances for this difficulty
					sharedData({
						ItemAppearanceModifierID = 1,
						-- during the Season, Blizz changed the Item/Appearance association such that Mythic Mod is no longer accurate to the previous Mythic Appearance
						modID = 35,
					},{
						i(168966),	-- Heavy Alloy Legplates
						i(168964),	-- Hyperthread Boots
						i(168957),	-- Mekgineer's Championship Belt
					}
				))),
				BossOnly(KUJO, appendAllGroups(
					-- Items that work properly
					{
						i(232546, {timeline={ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART}}),	-- K.U.-J.0.'s Flame Vents
						i(168972),	-- Pyroclastic Greatboots
						i(168971),	-- Swift Pneumatic Grips
						i(199921, {	-- Trashmaster's Mantle
							["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
						}),
					},
					-- Items that Blizzard switched from the default appearances for this difficulty
					sharedData({
						ItemAppearanceModifierID = 1,
						-- during the Season, Blizz changed the Item/Appearance association such that Heroic Mod is no longer accurate to the previous Heroic Appearance
						modID = 35,
					},{
						i(168969),	-- Operator's Mitts
						i(168968),	-- Flame-Seared Leggings
					}
				))),
				Boss(MACHINIST, {
				}),
				BossOnly(KING, appendAllGroups(
					-- Items that work properly
					{
						i(168978),	-- Anodized Deflectors
						i(235811, {timeline={ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART}}),	-- Extravagant Epaulets
						i(235809, {timeline={ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART}}),	-- Mechanized Plate Chasse
						i(235812, {timeline={ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART}}),	-- Shoulderguards of Fraying Sanity
					},
					-- Items that Blizzard switched from the default appearances for this difficulty
					sharedData({
						ItemAppearanceModifierID = 1,
						-- during the Season, Blizz changed the Item/Appearance association such that Heroic Mod is no longer accurate to the previous Heroic Appearance
						modID = 35,
					},{
						BackwardsHeroTrackItem(i(235810, {	-- Circuit-Linked Chainmail
							["timeline"]={ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART},
						})),
						i(168989),	-- Hyperthread Wristwraps
						i(168980),	-- Gauntlets of Absolute Authority
						i(168985),	-- Self-Sanitizing Handwraps
						BackwardsHeroTrackItem(i(168986)),	-- Mad King's Sporran
						i(168983),	-- Maniacal Monarch's Girdle
						i(168982),	-- Regal Mekanospurs
						i(168988),	-- Royal Attendant's Trouser
					})
				)),
			}),
		})),
		-- Item Appearance changes during the Season
		Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
			n(MECHAGON_JUNKYARD, {
				ItemAppearanceModifierID = 3,
				-- during the Season, Blizz changed the Item/Appearance association such that Mythic Mod is no longer accurate to the previous Mythic Appearance
				modID = 14,
			}),
			n(MECHAGON_WORKSHOP, {
				ItemAppearanceModifierID = 3,
				-- during the Season, Blizz changed the Item/Appearance association such that Mythic Mod is no longer accurate to the previous Mythic Appearance
				modID = 14,
			}),
		}),
		-- Apparently the old versions of these helms ARE available during the season... but only from the Great Vault (confirmed)
		header(HEADERS.Object, 446366, {	-- The Great Vault
			["sharedDescription"] = "Only available from the Great Vault during the Season. It is expected (though not confirmed) that the original Source will be available again after the start of the next Season.",
			["groups"] = {
				i(169003),	-- Apogee Inventor's Goggles
				i(169006),	-- Inventor's Ingenious Trifocals
				i(169005),	-- Mekgineer's Mindbending Headgear
				i(169004),	-- Psychogenic Prognosticator's Lenses
			},
		}),
	}
else
	SeasonDifficultyGroups = {
		Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
			n(MECHAGON_WORKSHOP, {
				timeline = {ADDED_8_2_0},
				g = {
					Boss(TUSSLETONKS, {
					}),
					Boss(KUJO, {
						i(199921, {	-- Trashmaster's Mantle
							["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
						}),
					}),
					Boss(MACHINIST, {
					}),
					Boss(KING, appendAllGroups(clone(AzeriteLoot[KING]), clone(AzewrongLoot[KING]))),
				},
			}),
		}),
		Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
			n(MECHAGON_WORKSHOP, {
				Boss(TUSSLETONKS, {
				}),
				Boss(KUJO, {
					i(199921, {	-- Trashmaster's Mantle
						["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
						ItemAppearanceModifierID = 3,
					}),
				}),
				Boss(MACHINIST, {
				}),
				Boss(KING, appendAllGroups(clone(AzeriteLoot[KING]), clone(AzewrongLoot[KING]))),
			}),
		}),
	}
end

appendAllGroups(SeasonDifficultyGroups, {
	Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
		-- Junkyard was removed entirely during 11.1
		n(MECHAGON_JUNKYARD, {
			timeline = TIMELINE_UNAVAILABLE_MYTHICPLUS,
			g = {
				BossOnly(GOBBAMAK, {
					i(169050),	-- Logg
				}),
			},
		}),
	}),
	Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
		-- Junkyard was removed entirely during 11.1
		n(MECHAGON_JUNKYARD, {
			timeline = TIMELINE_UNAVAILABLE_MYTHICPLUS,
			g = {
				Boss(GOBBAMAK, {
				}),
				Boss(GUNKER, {
				}),
				Boss(TRIXIENAENO, {
				}),
				Boss(HK8, clone(AzeriteLoot[HK8])),
			},
		}),
		n(MECHAGON_WORKSHOP, {
			BossOnly(KUJO, {
				-- Not entirely sure how this version is obtainable if at all during Seasons... so we will assume it isn't and see if any report
				i(168970, {	-- Trashmaster's Mantle
					["description"] = "Equipping this cloak gives you a temporary Trashmaster title. To get a permanent character-specific Trashmaster title, take this cloak to Jani's trashpile in Dazar'alor (Horde) or Vol'dun (Alliance).",
					["timeline"] = TIMELINE_UNAVAILABLE_MYTHICPLUS,
				}),
			}),
			-- Azerite from Heroic doesn't exist during the Season
			BossOnly(KING, sharedData({timeline = TIMELINE_UNAVAILABLE_MYTHICPLUS},
				clone(AzeriteLoot[KING]))),
		}),
	}),
	Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
		-- Junkyard was removed entirely during 11.1
		n(MECHAGON_JUNKYARD, {
			timeline = TIMELINE_UNAVAILABLE_MYTHICPLUS,
			g = {
				Boss(GOBBAMAK, {
				}),
				Boss(GUNKER, {
				}),
				Boss(TRIXIENAENO, {
				}),
				Boss(HK8, clone(AzeriteLoot[HK8])),
			},
		}),
		n(MECHAGON_WORKSHOP, {
			g = {
				BossOnly(KUJO, {
					-- Not entirely sure how this version is obtainable if at all during Seasons... so we will assume it isn't and see if any report
					i(168970, {	-- Trashmaster's Mantle
						["description"] = "Equipping this cloak gives you a temporary Trashmaster title. To get a permanent character-specific Trashmaster title, take this cloak to Jani's trashpile in Dazar'alor (Horde) or Vol'dun (Alliance).",
						["timeline"] = TIMELINE_UNAVAILABLE_MYTHICPLUS,
					}),
				}),
				-- Azerite from Mythic doesn't exist during the Season
				BossOnly(KING, sharedData({timeline = TIMELINE_UNAVAILABLE_MYTHICPLUS},
					clone(AzeriteLoot[KING]))),
			},
		}),
	}),
})

local INSTANCE_GROUPS = {
	n(AZERITE_ESSENCES, {
		i(168844, {	-- Perfection-Enhancing Gearbox (Rank 3)
			["cost"] = { { "i", 169774, 4 } },	-- 4x Progression Sprocket
		}),
	}),
	petbattle(filter(BATTLE_PETS, {
		pet(2672),	-- Alloyed Alleyrat (PET!)
		pet(2675),	-- Clanking Scrapsorter (PET!)
		pet(2668),	-- Copper Hopper (PET!)
		pet(2674),	-- H4ND-EE (PET!)
	})),
	ZoneDrops(),
	Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
		n(MECHAGON_JUNKYARD, {
			timeline = TIMELINE_UNAVAILABLE_MYTHICPLUS,
			g = {
				BossOnly(GOBBAMAK, {
					i(168751),	-- Omnipurpose Effective Logic Board
					i(168752),	-- Omnipurpose Efficient Logic Board
					i(168750),	-- Omnipurpose Refined Logic Board
				}),
				BossOnly(GUNKER, {
					i(168746),	-- Optimized Adaptable Logic Board
					i(168745),	-- Optimized Effective Logic Board
					i(168744),	-- Optimized Efficient Logic Board
				}),
				BossOnly(TRIXIENAENO, {
					i(168747),	-- Performant Adaptable Logic Board
					i(168749),	-- Performant Effective Logic Board
					i(168748),	-- Performant Refined Logic Board
				}),
				BossOnly(HK8, {
					i(168742),	-- Forceful Adaptable Logic Board
					i(168743),	-- Forceful Efficient Logic Board
					i(168741),	-- Forceful Refined Logic Board
					i(168657),	-- Friend of Foe Identifier
					i(167677),	-- Harmonic Dematerializer
					i(168909),	-- Subroutine: Emergency Repairs
				}),
			},
		}),
		n(MECHAGON_WORKSHOP, {
			BossOnly(TUSSLETONKS, {
				i(168742),	-- Forceful Adaptable Logic Board
				i(168743),	-- Forceful Efficient Logic Board
				i(168741),	-- Forceful Refined Logic Board
			}),
			BossOnly(KUJO, {
				i(168746),	-- Optimized Adaptable Logic Board
				i(168745),	-- Optimized Effective Logic Board
				i(168744),	-- Optimized Efficient Logic Board
				i(169529),	-- Plans: Monelite Reinforced Chassis (RECIPE!)
				i(169609),	-- Schematic: Super-Charged Engine (RECIPE!)
			}),
			BossOnly(MACHINIST, {
				i(168751),	-- Omnipurpose Effective Logic Board
				i(168752),	-- Omnipurpose Efficient Logic Board
				i(168750),	-- Omnipurpose Refined Logic Board
			}),
			BossOnly(KING, {
				i(168842),	-- Engine of Mecha-Perfection (Rank 1)
				i(169172),	-- Blueprint: Perfectly Timed Differential
				i(168671),	-- Electromagnetic Resistors
				i(168747),	-- Performant Adaptable Logic Board
				i(168749),	-- Performant Effective Logic Board
				i(168748),	-- Performant Refined Logic Board
				i(169774),	-- Progression Sprocket
				i(167556),	-- Subroutine: Overclock
			}),
		}),
	}),
	-- Non-upgraded Items
	Difficulty(DIFFICULTY.DUNGEON.SEASONAL.TWWS2_HEROTRACK, {
		difficulties = { DIFFICULTY.DUNGEON.HEROIC, DIFFICULTY.DUNGEON.MYTHIC, DIFFICULTY.DUNGEON.KEYSTONE },
	}).AddGroups({
		n(MECHAGON_WORKSHOP, {
			BossOnly(KING, sharedData({
				timeline = {ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART},
			},{
				i(235222),	-- Apogee Inventor's Goggles
				i(235226),	-- Inventor's Ingenious Trifocals
				i(235224),	-- Mekgineer's Mindbending Headgear
				i(235223),	-- Psychogenic Prognosticator's Lenses
			})),
		}),
	}),
	Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
		n(MECHAGON_JUNKYARD, {
			timeline = TIMELINE_UNAVAILABLE_MYTHICPLUS,
			g = {
				BossOnly(GOBBAMAK, {
				}),
				BossOnly(GUNKER, {
				}),
				BossOnly(TRIXIENAENO, {
				}),
				BossOnly(HK8, {
				}),
			},
		}),
		n(MECHAGON_WORKSHOP, {
			BossOnly(TUSSLETONKS, {
			}),
			BossOnly(KUJO, {
			}),
			BossOnly(MACHINIST, {
			}),
			BossOnly(KING, {
			}),
		}),
	}),
	Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
		ach(13789, {	-- Hertz Locker
			["description"] = "After completing the achievement, speak to Prince Erazmin on Mechagon Island to get the essence. You must already have the Rank 3 version.",
			["u"] = REMOVED_FROM_GAME,
			["groups"] = {
				i(168845, {	-- Mecha-Perfection Turbo (Rank 4)
					["u"] = REMOVED_FROM_GAME,
				}),
			},
		}),
		n(MECHAGON_JUNKYARD, {
			timeline = TIMELINE_UNAVAILABLE_MYTHICPLUS,
			g = {
				BossOnly(GOBBAMAK, {
					ach(13706),	-- Stay Positive
				}),
				BossOnly(GUNKER, {
					ach(13698),	-- Clean Up On Aisle Mechagon
				}),
				BossOnly(TRIXIENAENO, {
				}),
				BossOnly(HK8, {
					i(168826),	-- Mechagon Peacekeeper (MOUNT!)
					i(169385),	-- Microbot 8D (PET!)
				}),
			},
		}),
		n(MECHAGON_WORKSHOP, {
			BossOnly(TUSSLETONKS, {
				ach(13723, {	-- M.C., Hammered
					i(246479, {["timeline"] = { ADDED_12_0_0 }}),	-- Gnomish T.O.O.L.B.O.X. (DECOR!)
				}),
			}),
			BossOnly(KUJO, {
			}),
			BossOnly(MACHINIST, {
				ach(13545),	-- Go Ahead, Make My Daisy
			}),
			BossOnly(KING, {
				ach(13624, {	-- Keep DPS-ing and Nobody Explodes
					timeline = TIMELINE_UNAVAILABLE_MYTHICPLUS,
					g = {
						i(168830),	-- Aerial Unit R-21/X (MOUNT!)
						i(169003),	-- Apogee Inventor's Goggles
						i(169006),	-- Inventor's Ingenious Trifocals
						i(169005),	-- Mekgineer's Mindbending Headgear
						i(169004),	-- Psychogenic Prognosticator's Lenses
					},
				}),
				ach(13893),	-- Operation: Mechagon Guild Run
				i(169378),	-- Golden Snorf (PET!)
			}),
		}),
	}),
}

appendAllGroups(INSTANCE_GROUPS, SeasonDifficultyGroups)

root(ROOTS.Instances, expansion(EXPANSION.BFA, {
	inst(1178, {	-- Operation: Mechagon
		["coord"] = { 73.1, 36.3, MECHAGON },
		["timeline"] = {ADDED_8_2_0},
		["maps"] = {
			1490,	-- Mechagon Island
			1491,	-- The Robodrome
			1493,	-- Waste Pipes
			1494,	-- The Under Junk
			1497,	-- Mechagon City
		},
		["groups"] = INSTANCE_GROUPS
	}),
}))
