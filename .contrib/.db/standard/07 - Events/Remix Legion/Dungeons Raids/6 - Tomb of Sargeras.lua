-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

------ Encounter Constants ------
local GOROTH = 1862;
local INQUISITION = 1867;
local HARJATAN = 1856;
local SASSZINE = 1861;
local SISTERS = 1903;
local DESOLATE_HOST = 1896;
local MAIDEN = 1897;
local AVATAR = 1873;
local KILJAEDEN = 1898;

------ EncounterToCRS ------
local EncounterToCRS = {
	[GOROTH] = { 115844 },	-- Goroth
	[INQUISITION] = {	-- Demonic Inquisition
		116689,	-- Atrigan
		116691,	-- Belac
	},
	[HARJATAN] = { 116407 },	-- Harjatan
	[SISTERS] = {	-- Sisters of the Moon
		118374,	-- Captain Yathae Moonstrike
		118523,	-- Huntress Kasparian
		118518,	-- Priestess Lunaspyre
	},
	[SASSZINE] = { 115767 },	-- Mistress Sassz'ine
	[DESOLATE_HOST] = {
		119072,	-- The Desolate Host
		118460,	-- Engine of Souls
		118462,	-- Soul Queen Dejahna
	},
	[MAIDEN] = { 118289 },	-- Maiden of Vigilance
	[AVATAR] = {	-- Fallen Avatar
		116939,	-- Fallen Avatar
		117264,	-- Maiden of Valor
	},
	[KILJAEDEN] = { 117269 },	-- Kil'jaeden
};

local COMMONLOOT = {
	filter(CLOAKS, {
		-- Regular items
		-- No cloaks were made for Remix here

		-- Set items
		i(247116),	-- Shawl of Blind Absolution
		i(247098),	-- Drape of the Arcane Tempest
		i(247134),	-- Diabolic Shroud
		i(247123),	-- Fanged Slayer's Shroud
		i(247105),	-- Xuen's Cloak
		i(247087),	-- Stormheart Drape
		i(247081),	-- Demonbane Shroud
		i(247093),	-- Wildstalker Cape
		i(247129),	-- Drape of the Skybreaker
		i(247141),	-- Titanic Onslaught Cloak
		i(247111),	-- Radiant Lightbringer Cape
		i(247075),	-- Gravewarden Cloak
	}),
	filter(CLOTH, {
		-- Regular items
		i(247617),	-- Acolyte's Abandoned Footwraps
		i(247596),	-- Braided Torture Lash
		i(247594),	-- Emberscatter Treads
		i(247599),	-- Oathbreaker's Cuffs
		i(247598),	-- Ravenous Devotee's Bracelets
		i(247618),	-- Sash of the Unredeemed
		i(247595),	-- Slippers of Enduring Vigilance
		i(247597),	-- Strife-Riddled Cinch

		-- Set items
		i(247117),	-- Gloves of Blind Absolution
		i(247118),	-- Hood of Blind Absolution
		i(247119),	-- Leggings of Blind Absolution
		i(247120),	-- Robes of Blind Absolution
		i(247121),	-- Mantle of Blind Absolution
		i(247099),	-- Gloves of the Arcane Tempest
		i(247100),	-- Crown of the Arcane Tempest
		i(247101),	-- Leggings of the Arcane Tempest
		i(247102),	-- Robes of the Arcane Tempest
		i(247103),	-- Mantle of the Arcane Tempest
		i(247135),	-- Diabolic Gloves
		i(247136),	-- Diabolic Helm
		i(247137),	-- Diabolic Leggings
		i(247138),	-- Diabolic Robe
		i(247139),	-- Diabolic Mantle
	}),
	filter(LEATHER, {
		-- Regular items
		i(247605),	-- Bracers of Rippling Darkness
		i(247602),	-- Cinch of Sizzling Flesh
		i(247620),	-- Cord of Pilfered Rosaries
		i(247603),	-- Etched Bone Waistband
		i(247601),	-- Felscape Pathfinders
		i(247600),	-- Glacier Walkers
		i(247604),	-- Sinew-Stitched Wristguards
		i(247619),	-- Treads of Violent Intrusion
		i(247616),	-- Waistguard of Profane Duplicity

		-- Set items
		i(247122),	-- Fanged Slayer's Chestguard
		i(247124),	-- Fanged Slayer's Handguards
		i(247125),	-- Fanged Slayer's Helm
		i(247126),	-- Fanged Slayer's Legguards
		i(247127),	-- Fanged Slayer's Shoulderpads
		i(247104),	-- Xuen's Tunic
		i(247106),	-- Xuen's Gauntlets
		i(247107),	-- Xuen's Helm
		i(247108),	-- Xuen's Legguards
		i(247109),	-- Xuen's Shoulderguards
		i(247086),	-- Stormheart Tunic
		i(247088),	-- Stormheart Gloves
		i(247089),	-- Stormheart Headdress
		i(247090),	-- Stormheart Legguards
		i(247091),	-- Stormheart Mantle
		i(247080),	-- Demonbane Harness
		i(247082),	-- Demonbane Gauntlets
		i(247083),	-- Demonbane Faceguard
		i(247084),	-- Demonbane Leggings
		i(247085),	-- Demonbane Shoulderpads
	}),
	filter(MAIL, {
		-- Regular items
		i(247608),	-- Belt of Screaming Slag
		i(247606),	-- Insulated Finpads
		i(247610),	-- Pain-Singed Armguards
		i(247622),	-- Pristine Moon-Wrought Clasp
		i(247607),	-- Star-Stalker Treads
		i(247621),	-- Treads of Panicked Escape
		i(247609),	-- Waistguard of Interminable Unity

		-- Set items
		i(247092),	-- Wildstalker Chestguard
		i(247094),	-- Wildstalker Gauntlets
		i(247095),	-- Wildstalker Helmet
		i(247096),	-- Wildstalker Leggings
		i(247097),	-- Wildstalker Spaulders
		i(247128),	-- Harness of the Skybreaker
		i(247130),	-- Grips of the Skybreaker
		i(247131),	-- Helmet of the Skybreaker
		i(247132),	-- Legguards of the Skybreaker
		i(247133),	-- Pauldrons of the Skybreaker
	}),
	filter(PLATE, {
		-- Regular items
		i(247615),	-- Bonemeal-Crusted Armplates
		i(247624),	-- Girdle of the Crumbling Sanctum
		i(247611),	-- Iron Ballast Sabatons
		i(247613),	-- Shiversleet Waistguard
		i(247614),	-- Soul-Render's Greatbelt
		i(247623),	-- Spiked Terrorwake Greatboots
		i(247612),	-- Steadfast Purifier's Warboots

		-- Set items
		i(247140),	-- Titanic Onslaught Breastplate
		i(247142),	-- Titanic Onslaught Handguards
		i(247143),	-- Titanic Onslaught Greathelm
		i(247144),	-- Titanic Onslaught Greaves
		i(247145),	-- Titanic Onslaught Pauldrons
		i(247110),	-- Radiant Lightbringer Breastplate
		i(247112),	-- Radiant Lightbringer Gauntlets
		i(247113),	-- Radiant Lightbringer Crown
		i(247114),	-- Radiant Lightbringer Greaves
		i(247115),	-- Radiant Lightbringer Shoulderguards
		i(247074),	-- Gravewarden Chestplate
		i(247076),	-- Gravewarden Handguards
		i(247077),	-- Gravewarden Visage
		i(247078),	-- Gravewarden Legplates
		i(247079),	-- Gravewarden Pauldrons
	}),
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(RAIDS, {
		inst(875, {	-- Tomb of Sargeras
			["coord"] = { 64.3, 21.0, BROKEN_SHORE },
			["maps"] = { 645, 850, 851, 852, 853, 854, 855, 856 },
			["isRaid"] = true,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42649, {	-- Raid Finder: Tomb of Sargeras
						crit(108549, {	-- Goroth
							["_encounter"] = { GOROTH, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108550, {	-- Harjatan
							["_encounter"] = { HARJATAN, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108551, {	-- Mistress Sassz'ine
							["_encounter"] = { SASSZINE, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108546, {	-- Demonic Inquisition
							["_encounter"] = { INQUISITION, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108547, {	-- Sisters of the Moon
							["_encounter"] = { SISTERS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108548, {	-- The Desolate Host
							["_encounter"] = { DESOLATE_HOST, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108545, {	-- Maiden of Vigilance
							["_encounter"] = { MAIDEN, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108544, {	-- Fallen Avatar
							["_encounter"] = { AVATAR, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108568, {	-- Kil'jaeden
							["_encounter"] = { KILJAEDEN, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60870, {	-- Tomb of Sargeras
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60866,	-- The Gates of Hell
							60867,	-- Wailing Halls
							60868,	-- Chamber of the Avatar
							60869,	-- Deceiver's Fall
						}},
					}),
					ach(60866, {	-- The Gates of Hell
						crit(107172, {	-- Goroth
							["_encounter"] = { GOROTH, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107171, {	-- Harjatan
							["_encounter"] = { HARJATAN, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107170, {	-- Mistress Sassz'ine
							["_encounter"] = { SASSZINE, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60867, {	-- Wailing Halls
						crit(107175, {	-- Demonic Inquisition
							["_encounter"] = { INQUISITION, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107174, {	-- Sisters of the Moon
							["_encounter"] = { SISTERS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107173, {	-- The Desolate Host
							["_encounter"] = { DESOLATE_HOST, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60868, {	-- Chamber of the Avatar
						crit(107176, {	-- Maiden of Vigilance
							["_encounter"] = { MAIDEN, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107177, {	-- Fallen Avatar
							["_encounter"] = { AVATAR, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60869, {	-- Deceiver's Fall
						crit(106080, {	-- Kil'jaeden
							["_encounter"] = { KILJAEDEN, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(42661, {	-- Heroic: Tomb of Sargeras
						crit(108475, {	-- Goroth
							["_encounter"] = { GOROTH, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108476, {	-- Harjatan
							["_encounter"] = { HARJATAN, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108477, {	-- Mistress Sassz'ine
							["_encounter"] = { SASSZINE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108472, {	-- Demonic Inquisition
							["_encounter"] = { INQUISITION, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108473, {	-- Sisters of the Moon
							["_encounter"] = { SISTERS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108474, {	-- The Desolate Host
							["_encounter"] = { DESOLATE_HOST, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108471, {	-- Maiden of Vigilance
							["_encounter"] = { MAIDEN, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108470, {	-- Fallen Avatar
							["_encounter"] = { AVATAR, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108494, {	-- Kil'jaeden
							["_encounter"] = { KILJAEDEN, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
					}),
					ach(42576, {	-- Mythic: Tomb of Sargeras
						crit(108512, {	-- Goroth
							["_encounter"] = { GOROTH, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108513, {	-- Harjatan
							["_encounter"] = { HARJATAN, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108514, {	-- Mistress Sassz'ine
							["_encounter"] = { SASSZINE, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108509, {	-- Demonic Inquisition
							["_encounter"] = { INQUISITION, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108510, {	-- Sisters of the Moon
							["_encounter"] = { SISTERS, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108511, {	-- The Desolate Host
							["_encounter"] = { DESOLATE_HOST, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108508, {	-- Maiden of Vigilance
							["_encounter"] = { MAIDEN, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108507, {	-- Fallen Avatar
							["_encounter"] = { AVATAR, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108531, {	-- Kil'jaeden
							["_encounter"] = { KILJAEDEN, DIFFICULTY.RAID.MYTHIC },
						}),
					}),
				}),
				n(RAID_GEAR_CONVERSION, bubbleDown({ ["modID"] = 4 }, {
					filter(CLOAKS, {
						-- Regular items
						-- No cloaks were made for Remix here

						-- Set items
						i_RAID_GEAR_CONVERSION(247116),	-- Shawl of Blind Absolution
						i_RAID_GEAR_CONVERSION(247098),	-- Drape of the Arcane Tempest
						i_RAID_GEAR_CONVERSION(247134),	-- Diabolic Shroud
						i_RAID_GEAR_CONVERSION(247123),	-- Fanged Slayer's Shroud
						i_RAID_GEAR_CONVERSION(247105),	-- Xuen's Cloak
						i_RAID_GEAR_CONVERSION(247087),	-- Stormheart Drape
						i_RAID_GEAR_CONVERSION(247081),	-- Demonbane Shroud
						i_RAID_GEAR_CONVERSION(247093),	-- Wildstalker Cape
						i_RAID_GEAR_CONVERSION(247129),	-- Drape of the Skybreaker
						i_RAID_GEAR_CONVERSION(247141),	-- Titanic Onslaught Cloak
						i_RAID_GEAR_CONVERSION(247111),	-- Radiant Lightbringer Cape
						i_RAID_GEAR_CONVERSION(247075),	-- Gravewarden Cloak
					}),
					filter(CLOTH, {
						-- Regular items
						i_RAID_GEAR_CONVERSION(247617),	-- Acolyte's Abandoned Footwraps
						i_RAID_GEAR_CONVERSION(247596),	-- Braided Torture Lash
						i_RAID_GEAR_CONVERSION(247594),	-- Emberscatter Treads
						i_RAID_GEAR_CONVERSION(247599),	-- Oathbreaker's Cuffs
						i_RAID_GEAR_CONVERSION(247598),	-- Ravenous Devotee's Bracelets
						i_RAID_GEAR_CONVERSION(247618),	-- Sash of the Unredeemed
						i_RAID_GEAR_CONVERSION(247595),	-- Slippers of Enduring Vigilance
						i_RAID_GEAR_CONVERSION(247597),	-- Strife-Riddled Cinch

						-- Set items
						i_RAID_GEAR_CONVERSION(247117),	-- Gloves of Blind Absolution
						i_RAID_GEAR_CONVERSION(247118),	-- Hood of Blind Absolution
						i_RAID_GEAR_CONVERSION(247119),	-- Leggings of Blind Absolution
						i_RAID_GEAR_CONVERSION(247120),	-- Robes of Blind Absolution
						i_RAID_GEAR_CONVERSION(247121),	-- Mantle of Blind Absolution
						i_RAID_GEAR_CONVERSION(247099),	-- Gloves of the Arcane Tempest
						i_RAID_GEAR_CONVERSION(247100),	-- Crown of the Arcane Tempest
						i_RAID_GEAR_CONVERSION(247101),	-- Leggings of the Arcane Tempest
						i_RAID_GEAR_CONVERSION(247102),	-- Robes of the Arcane Tempest
						i_RAID_GEAR_CONVERSION(247103),	-- Mantle of the Arcane Tempest
						i_RAID_GEAR_CONVERSION(247135),	-- Diabolic Gloves
						i_RAID_GEAR_CONVERSION(247136),	-- Diabolic Helm
						i_RAID_GEAR_CONVERSION(247137),	-- Diabolic Leggings
						i_RAID_GEAR_CONVERSION(247138),	-- Diabolic Robe
						i_RAID_GEAR_CONVERSION(247139),	-- Diabolic Mantle
					}),
					filter(LEATHER, {
						-- Regular items
						i_RAID_GEAR_CONVERSION(247605),	-- Bracers of Rippling Darkness
						i_RAID_GEAR_CONVERSION(247602),	-- Cinch of Sizzling Flesh
						i_RAID_GEAR_CONVERSION(247620),	-- Cord of Pilfered Rosaries
						i_RAID_GEAR_CONVERSION(247603),	-- Etched Bone Waistband
						i_RAID_GEAR_CONVERSION(247601),	-- Felscape Pathfinders
						i_RAID_GEAR_CONVERSION(247600),	-- Glacier Walkers
						i_RAID_GEAR_CONVERSION(247604),	-- Sinew-Stitched Wristguards
						i_RAID_GEAR_CONVERSION(247619),	-- Treads of Violent Intrusion
						i_RAID_GEAR_CONVERSION(247616),	-- Waistguard of Profane Duplicity

						-- Set items
						i_RAID_GEAR_CONVERSION(247122),	-- Fanged Slayer's Chestguard
						i_RAID_GEAR_CONVERSION(247124),	-- Fanged Slayer's Handguards
						i_RAID_GEAR_CONVERSION(247125),	-- Fanged Slayer's Helm
						i_RAID_GEAR_CONVERSION(247126),	-- Fanged Slayer's Legguards
						i_RAID_GEAR_CONVERSION(247127),	-- Fanged Slayer's Shoulderpads
						i_RAID_GEAR_CONVERSION(247104),	-- Xuen's Tunic
						i_RAID_GEAR_CONVERSION(247106),	-- Xuen's Gauntlets
						i_RAID_GEAR_CONVERSION(247107),	-- Xuen's Helm
						i_RAID_GEAR_CONVERSION(247108),	-- Xuen's Legguards
						i_RAID_GEAR_CONVERSION(247109),	-- Xuen's Shoulderguards
						i_RAID_GEAR_CONVERSION(247086),	-- Stormheart Tunic
						i_RAID_GEAR_CONVERSION(247088),	-- Stormheart Gloves
						i_RAID_GEAR_CONVERSION(247089),	-- Stormheart Headdress
						i_RAID_GEAR_CONVERSION(247090),	-- Stormheart Legguards
						i_RAID_GEAR_CONVERSION(247091),	-- Stormheart Mantle
						i_RAID_GEAR_CONVERSION(247080),	-- Demonbane Harness
						i_RAID_GEAR_CONVERSION(247082),	-- Demonbane Gauntlets
						i_RAID_GEAR_CONVERSION(247083),	-- Demonbane Faceguard
						i_RAID_GEAR_CONVERSION(247084),	-- Demonbane Leggings
						i_RAID_GEAR_CONVERSION(247085),	-- Demonbane Shoulderpads
					}),
					filter(MAIL, {
						-- Regular items
						i_RAID_GEAR_CONVERSION(247608),	-- Belt of Screaming Slag
						i_RAID_GEAR_CONVERSION(247606),	-- Insulated Finpads
						i_RAID_GEAR_CONVERSION(247610),	-- Pain-Singed Armguards
						i_RAID_GEAR_CONVERSION(247622),	-- Pristine Moon-Wrought Clasp
						i_RAID_GEAR_CONVERSION(247607),	-- Star-Stalker Treads
						i_RAID_GEAR_CONVERSION(247621),	-- Treads of Panicked Escape
						i_RAID_GEAR_CONVERSION(247609),	-- Waistguard of Interminable Unity

						-- Set items
						i_RAID_GEAR_CONVERSION(247092),	-- Wildstalker Chestguard
						i_RAID_GEAR_CONVERSION(247094),	-- Wildstalker Gauntlets
						i_RAID_GEAR_CONVERSION(247095),	-- Wildstalker Helmet
						i_RAID_GEAR_CONVERSION(247096),	-- Wildstalker Leggings
						i_RAID_GEAR_CONVERSION(247097),	-- Wildstalker Spaulders
						i_RAID_GEAR_CONVERSION(247128),	-- Harness of the Skybreaker
						i_RAID_GEAR_CONVERSION(247130),	-- Grips of the Skybreaker
						i_RAID_GEAR_CONVERSION(247131),	-- Helmet of the Skybreaker
						i_RAID_GEAR_CONVERSION(247132),	-- Legguards of the Skybreaker
						i_RAID_GEAR_CONVERSION(247133),	-- Pauldrons of the Skybreaker
					}),
					filter(PLATE, {
						-- Regular items
						i_RAID_GEAR_CONVERSION(247615),	-- Bonemeal-Crusted Armplates
						i_RAID_GEAR_CONVERSION(247624),	-- Girdle of the Crumbling Sanctum
						i_RAID_GEAR_CONVERSION(247611),	-- Iron Ballast Sabatons
						i_RAID_GEAR_CONVERSION(247613),	-- Shiversleet Waistguard
						i_RAID_GEAR_CONVERSION(247614),	-- Soul-Render's Greatbelt
						i_RAID_GEAR_CONVERSION(247623),	-- Spiked Terrorwake Greatboots
						i_RAID_GEAR_CONVERSION(247612),	-- Steadfast Purifier's Warboots

						-- Set items
						i_RAID_GEAR_CONVERSION(247140),	-- Titanic Onslaught Breastplate
						i_RAID_GEAR_CONVERSION(247142),	-- Titanic Onslaught Handguards
						i_RAID_GEAR_CONVERSION(247143),	-- Titanic Onslaught Greathelm
						i_RAID_GEAR_CONVERSION(247144),	-- Titanic Onslaught Greaves
						i_RAID_GEAR_CONVERSION(247145),	-- Titanic Onslaught Pauldrons
						i_RAID_GEAR_CONVERSION(247110),	-- Radiant Lightbringer Breastplate
						i_RAID_GEAR_CONVERSION(247112),	-- Radiant Lightbringer Gauntlets
						i_RAID_GEAR_CONVERSION(247113),	-- Radiant Lightbringer Crown
						i_RAID_GEAR_CONVERSION(247114),	-- Radiant Lightbringer Greaves
						i_RAID_GEAR_CONVERSION(247115),	-- Radiant Lightbringer Shoulderguards
						i_RAID_GEAR_CONVERSION(247074),	-- Gravewarden Chestplate
						i_RAID_GEAR_CONVERSION(247076),	-- Gravewarden Handguards
						i_RAID_GEAR_CONVERSION(247077),	-- Gravewarden Visage
						i_RAID_GEAR_CONVERSION(247078),	-- Gravewarden Legplates
						i_RAID_GEAR_CONVERSION(247079),	-- Gravewarden Pauldrons
					}),
				})),
				Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
					header(HEADERS.Achievement, 60866, {	-- The Gates of Hell
						BossOnly(GOROTH),
						BossOnly(HARJATAN),
						BossOnly(SASSZINE),
					}),
					header(HEADERS.Achievement, 60867, {	-- Wailing Halls
						BossOnly(DESOLATE_HOST),
						BossOnly(SISTERS),
						BossOnly(INQUISITION),
					}),
					header(HEADERS.Achievement, 60868, {	-- Chamber of the Avatar
						BossOnly(MAIDEN),
						BossOnly(AVATAR),
					}),
					header(HEADERS.Achievement, 60869, {	-- Deceiver's Fall
						BossOnly(KILJAEDEN),
					}),
				}),
				Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
					BossOnly(GOROTH),
					BossOnly(HARJATAN),
					BossOnly(SASSZINE),
					BossOnly(DESOLATE_HOST),
					BossOnly(SISTERS),
					BossOnly(INQUISITION),
					BossOnly(MAIDEN, {
						i(253305),	-- Felwarped Slab
					}),
					BossOnly(AVATAR),
					BossOnly(KILJAEDEN),
				}),
				Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
				}),
				Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
					BossOnly(GOROTH),
					BossOnly(HARJATAN),
					BossOnly(SASSZINE),
					BossOnly(DESOLATE_HOST),
					BossOnly(SISTERS),
					BossOnly(INQUISITION),
					BossOnly(MAIDEN),
					BossOnly(AVATAR),
					BossOnly(KILJAEDEN),
				}),
				Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
				}),
				Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
					BossOnly(GOROTH),
					BossOnly(HARJATAN),
					BossOnly(SASSZINE),
					BossOnly(DESOLATE_HOST),
					BossOnly(SISTERS),
					BossOnly(INQUISITION),
					BossOnly(MAIDEN),
					BossOnly(AVATAR),
					BossOnly(KILJAEDEN),
				}),
			},
		}),
	}),
})));
