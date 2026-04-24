-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_THREE, bubbleDown({ ["timeline"] = { ADDED_2_1_0 } }, {
	inst(751, {	-- The Black Temple
		["lore"] = "When Illidan the Betrayer fled to Outland after the Third War, he ousted the Temple's ruler - the pit lord Magtheridon - and claimed his throne as the lord of the blasted world. Following his defeat at the hands of Arthas Menethil, Illidan returned to the Black Temple where he resides to this day. Neither his activities nor mental state are known at this time. While Malfurion has stated that Illidan has become mad and delusional, believing that he killed Arthas and accomplished the mission Kil'jaeden had sent him on.\n\nDespite the bitter retribution of his enemies, Illidan has begun to tighten his grip on Outland from within the profaned sanctum, where he awaits any and all who would challenge his rule.",
		-- #if BEFORE WRATH
		["sourceQuest"] = 10985,	-- A Distraction for Akama
		-- #endif
		["coord"] = { 71.0, 46.5, SHADOWMOON_VALLEY },	-- Black Temple, Shadowmoon Valley
		["maps"] = {
			THE_BLACK_TEMPLE,
			339,	-- Karabor Sewers
			341,	-- Sanctuary of Shadows
			342,	-- Halls of Anguish
			343,	-- Gorefiend's Vigil
			344,	-- Den of Mortal Delights
			345,	-- Chamber of Command
			346,	-- Temple Summit
			759,	-- Black Temple (used in DH scenario for "Confrontation at the Black Temple" quest)
		},
		["isRaid"] = true,
		["lvl"] = lvlsquish(70, 68, 30),	-- The attunement quests were originally level 70 required, but once removed, level 68s could zone in.
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(11748, {["timeline"] = {ADDED_7_2_0}}),	-- Black is the New Black (Black Temple)
				achWithRep(958, FACTION_ASHTONGUE_DEATHSWORN),	-- Sworn to the Deathsworn
			}),
			n(FACTIONS, {
				faction(FACTION_ASHTONGUE_DEATHSWORN),	-- Ashtongue Deathsworn
			}),
			n(QUESTS, {
				q(10985, {	-- A Distraction for Akama (legacy version)
					["sourceQuest"] = 10949,	-- Entry Into the Black Temple
					["qg"] = 18528,	-- Xi'ri
					["coord"] = { 65.2, 44.0, SHADOWMOON_VALLEY },
					["timeline"] = { REMOVED_3_0_2 },
					["lvl"] = lvlsquish(70, 70, 30),
					["groups"] = {
						ach(431, {	-- Hand of A'dal (Achievement)
							["sourceQuest"] = 10985,	-- A Distraction for Akama
							["timeline"] = { REMOVED_3_0_2 },
						}),
						title(39, {	-- Hand of A'dal
							["timeline"] = { REMOVED_3_0_2 },
						}),
						i(32649),	-- Medallion of Karabor
					},
				}),
				-- #if AFTER 3.0.1
				q(13429, {	-- A Distraction for Akama
					["sourceQuest"] = 10949,	-- Entry Into the Black Temple
					["altQuests"] = { 10985 },	-- A Distraction for Akama (legacy version)
					["qg"] = 18528,	-- Xi'ri
					["coord"] = { 65.2, 43.9, SHADOWMOON_VALLEY },
					["timeline"] = { ADDED_3_0_2 },
					["lvl"] = lvlsquish(70, 70, 30),
					["groups"] = {
						i(32649),	-- Medallion of Karabor
					},
				}),
				-- #endif
				q(10949, {	-- Entry Into the Black Temple
					["sourceQuest"] = 10948,	-- The Hostage Soul
					["qg"] = 18481,	-- A'dal
					["coord"] = { 54.3, 44.3, SHATTRATH_CITY },
					["lvl"] = lvlsquish(70, 70, 30),
				}),
				q(10957, {	-- Redemption of the Ashtongue
					["sourceQuest"] = 10958,	-- Seek Out the Ashtongue
					["qg"] = 23158,	-- Seer Kanai
					["coord"] = { 62.0, 50.2, THE_BLACK_TEMPLE },
					["lvl"] = lvlsquish(70, 70, 30),
					["groups"] = {
						objective(1, {	-- Shade of Akama slain
							["provider"] = { "n", 22841 },	-- Shade of Akama
						}),
					},
				}),
				q(10958, {	-- Seek Out the Ashtongue
					["sourceQuests"] = {
						10985,	-- A Distraction for Akama
						-- #if AFTER 3.0.1
						13429,	-- A Distraction for Akama
						-- #endif
					},
					-- #if AFTER 3.0.1
					["sourceQuestNumRequired"] = 1,
					-- #endif
					["qg"] = 18528,	-- Xi'ri
					["coord"] = { 65.2, 44.0, SHADOWMOON_VALLEY },
					["lvl"] = lvlsquish(70, 70, 30),
				}),
				q(10959, {	-- The Fall of the Betrayer
					["sourceQuest"] = 10957,	-- Redemption of the Ashtongue
					["qg"] = 23158,	-- Seer Kanai
					["coord"] = { 62.0, 50.2, THE_BLACK_TEMPLE },
					["lvl"] = lvlsquish(70, 70, 30),
					["groups"] = {
						objective(1, {	-- Illidan Stormrage slain
							["provider"] = { "n", 22917 },	-- Illidan Stormrage <The Betrayer>
						}),
						i(32757),	-- Blessed Medallion of Karabor
					},
				}),
				q(10948, {	-- The Hostage Soul
					["sourceQuest"] = 10947,	-- An Artifact From the Past
					["qg"] = 21700,	-- Akama
					["coord"] = { 58.1, 48.2, SHADOWMOON_VALLEY },
					["lvl"] = lvlsquish(70, 70, 30),
				}),
			}),
			n(VENDORS, {
				n(23159, {	-- Okuno <Ashtongue Deathsworn Quartermaster>
					["groups"] = bubbleDownClassicRep(FACTION_ASHTONGUE_DEATHSWORN, {
						{		-- Neutral
						}, {	-- Friendly
							i(32429),	-- Pattern: Boots of Shackled Souls (RECIPE!)
							i(32430, {	-- Pattern: Bracers of Shackled Souls (RECIPE!)
								r(40000, {["timeline"] = {ADDED_2_1_0, REMOVED_3_0_3}}),
							}),
							i(32436),	-- Pattern: Redeemed Soul Cinch (RECIPE!)
							i(32435),	-- Pattern: Redeemed Soul Legguards (RECIPE!)
							i(32438),	-- Pattern: Soulguard Bracers (RECIPE!)
							i(32440),	-- Pattern: Soulguard Girdle (RECIPE!)
							i(32442),	-- Plans: Shadesteel Bracers (RECIPE!)
							i(32444),	-- Plans: Shadesteel Girdle (RECIPE!)
						}, {	-- Honored
							i(32431),	-- Pattern: Greaves of Shackled Souls (RECIPE!)
							i(32447),	-- Pattern: Night's End (RECIPE!)
							i(32433),	-- Pattern: Redeemed Soul Moccasins (RECIPE!)
							i(32434),	-- Pattern: Redeemed Soul Wristguards (RECIPE!)
							i(32439),	-- Pattern: Soulguard Leggings (RECIPE!)
							i(32437),	-- Pattern: Soulguard Slippers (RECIPE!)
							i(32432),	-- Pattern: Waistguard of Shackled Souls (RECIPE!)
							i(32443),	-- Plans: Shadesteel Greaves (RECIPE!)
							i(32441),	-- Plans: Shadesteel Sabots (RECIPE!)
						}, {	-- Revered
						}, {	-- Exalted
							i(32490, {	-- Ashtongue Talisman of Acumen
								["classes"] = { PRIEST },
							}),
							i(32486, {	-- Ashtongue Talisman of Equilibrium
								["classes"] = { DRUID },
							}),
							i(32488, {	-- Ashtongue Talisman of Insight
								["classes"] = { MAGE },
							}),
							i(32492, {	-- Ashtongue Talisman of Lethality
								["classes"] = { ROGUE },
							}),
							i(32493, {	-- Ashtongue Talisman of Shadows
								["classes"] = { WARLOCK },
							}),
							i(32487, {	-- Ashtongue Talisman of Swiftness
								["classes"] = { HUNTER },
							}),
							i(32485, {	-- Ashtongue Talisman of Valor
								["classes"] = { WARRIOR },
							}),
							i(32491, {	-- Ashtongue Talisman of Vision
								["classes"] = { SHAMAN },
							}),
							i(32489, {	-- Ashtongue Talisman of Zeal
								["classes"] = { PALADIN },
							}),
						},
					}),
				}),
			}),
			n(ZONE_DROPS, {
				i(32754),	-- Pattern: Bracers of Nimble Thought (RECIPE!)
				i(32744),	-- Pattern: Bracers of Renewed Life (RECIPE!)
				i(32750),	-- Pattern: Living Earth Bindings (RECIPE!)
				i(32749),	-- Pattern: Shoulders of Lightning Reflexes (RECIPE!)
				i(32747),	-- Pattern: Swiftstrike Shoulders (RECIPE!)
				i(32753),	-- Pattern: Swiftheal Mantle (RECIPE!)
				i(32738),	-- Plans: Dawnsteel Bracers (RECIPE!)
				i(32737),	-- Plans: Swiftsteel Shoulders (RECIPE!)
				-- #if BEFORE WRATH
				-- This is going to sound crazy, but apparently during TBC, some of the trash drops from Hyjal dropped from Black Temple.
				-- This was changed after the Wrath Prepatch.
				i(34009),	-- Hammer of Judgement
				i(32589),	-- Hellfire-Encased Pendant
				i(32591),	-- Choker of Serrated Blades
				i(32590),	-- Nethervoid Cloak
				i(32592),	-- Chestguard of Relentless Storms
				i(32609),	-- Boots of the Divine Light
				-- #endif
				i(32606),	-- Girdle of the Lightbearer
				i(34011),	-- Illidari Runeshield
				i(32608),	-- Pillager's Gauntlets
				i(34012),	-- Shroud of the Final Stand
				i(32943),	-- Swiftsteel Bludgeon
				i(32593),	-- Treads of the Den Mother
				i(32526),	-- Band of Devastation
				i(32528),	-- Blessed Band of Karabor
				i(32527),	-- Ring of Ancient Knowledge
				i(32227),	-- Crimson Spinel
				i(32228),	-- Empyrean Sapphire
				i(32229),	-- Lionseye
				i(32231),	-- Pyrestone
				i(32230),	-- Shadowsong Amethyst
				i(32249),	-- Seaspray Emerald
				i(32428),	-- Heart of Darkness
				i(32897),	-- Mark of the Illidari
			}),
			-- #if AFTER 7.2.5.23910
			d(DIFFICULTY.RAID.NORMAL, {
				["lvl"] = 68,
				["ignoreBonus"] = true,
				["groups"] = {
			-- #endif
					e(1582, {	-- High Warlord Naj'entus
						["creatureID"] = 22887,
						["groups"] = {
							i(122104, {	-- Leviathan Hatchling (PET!)
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(32248),	-- Halberd of Desolation
							i(32236),	-- Rising Tide
							i(32237),	-- The Maelstrom's Fury
							i(32240),	-- Guise of the Tidal Lurker
							i(32241),	-- Helm of Soothing Currents
							i(32377),	-- Mantle of Darkness
							i(32232),	-- Eternium Shell Bracers
							i(32234),	-- Fists of Mukoa
							i(32242),	-- Boots of Oceanic Fury
							i(32243),	-- Pearl Inlaid Boots
							i(32239),	-- Slippers of the Seacaller
							i(32245),	-- Tide-Stomper's Greaves
							i(32238),	-- Ring of Calming Waves
							i(32247),	-- Ring of Captured Storms
						},
					}),
					e(1583, {	-- Supremus
						["creatureID"] = 22898,
						["groups"] = {
							i(122106, {	-- Abyssius (PET!)
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(32262),	-- Syphon of the Nathrezim
							i(32254),	-- The Brutalizer
							i(32253),	-- Legionkiller
							i(32255),	-- Felstone Bulwark
							i(32260),	-- Choker of Endless Nightmares
							i(32250),	-- Pauldrons of Abyssal Fury
							i(32252),	-- Nether Shadow Tunic
							i(32259),	-- Bands of the Coming Storm
							i(32251),	-- Wraps of Precise Flight
							i(32258),	-- Naturalist's Preserving Cinch
							i(32256),	-- Waistwrap of Infinity
							i(32261),	-- Band of the Abyssal Lord
							-- #if BEFORE MOP
							i(32257, {	-- Idol of the White Stag
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
						},
					}),
					e(1584, {	-- Shade of Akama
						["creatureID"] = 22841,
						["groups"] = {
							i(32361),	-- Blind-Seers Icon
							i(32273),	-- Amice of Brilliant Light
							i(32264),	-- Shoulders of the Hidden Predator
							i(32270),	-- Focused Mana Bindings
							i(32279),	-- The Seeker's Wristguards
							i(32513),	-- Wristbands of Divine Influence
							i(32278),	-- Grips of Silent Justice
							i(32275),	-- Spiritwalker Gauntlets
							i(32276),	-- Flashfire Girdle
							i(32265),	-- Shadow-Walker's Cord
							i(32271),	-- Kilt of Immortal Nature
							i(32263),	-- Praetorian's Legguards
							i(32268),	-- Myrmidon's Treads
							i(32266),	-- Ring of Deceitful Intent
						},
					}),
					e(1585, {	-- Teron Gorefiend
						["creatureID"] = 22871,
						["groups"] = {
							i(32348),	-- Soul Cleaver
							i(32325),	-- Rifle of the Stoic Guardian
							-- #if BEFORE MOP
							i(32326, {	-- Twisted Blades of Zarak
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
							i(32329),	-- Cowl of Benevolence
							i(32323),	-- Shadowmoon Destroyer's Drape
							i(32327),	-- Robe of the Shadow Council
							i(32324),	-- Insidious Bands
							i(32328),	-- Botanist's Gloves of Growth
							i(32280),	-- Gauntlets of Enforcement
							i(32512),	-- Girdle of Lordaeron's Fallen
							i(32510),	-- Softstep Boots of Tracking
							-- #if BEFORE MOP
							i(32330, {	-- Totem of Ancestral Guidance
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
						},
					}),
					e(1586, {	-- Gurtogg Bloodboil
						["creatureID"] = 22948,
						["groups"] = {
							i(32344),	-- Staff of Immaculate Recovery
							i(32269),	-- Messenger of Fate
							i(32343),	-- Wand of Prismatic Focus
							i(32338),	-- Blood-Cursed Shoulderpads
							i(32337),	-- Shroud of Forgiveness
							i(32340),	-- Garments of Temperance
							i(32334),	-- Vest of Mounting Assault
							i(32339),	-- Belt of Primal Majesty
							i(32342),	-- Girdle of Mighty Resolve
							i(32333),	-- Girdle of Stability
							i(32341),	-- Leggings of Divine Retribution
							i(32335),	-- Unstoppable Aggressor's Ring
							i(32501),	-- Shadowmoon Insignia
						},
					}),
					e(1587, {	-- Reliquary of Souls
						["creatureID"] = 23418,
						["groups"] = {
							i(122107, {	-- Fragment of Anger (PET!)
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(122109, {	-- Fragment of Desire (PET!)
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(122108, {	-- Fragment of Suffering (PET!)
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(32332),	-- Torch of the Damned
							i(32363),	-- Naaru-Blessed Life Rod
							i(32350),	-- Touch of Inspiration
							i(32354),	-- Crown of Empowered Fate
							i(32362),	-- Pendant of Titans
							i(32349),	-- Translucent Spellthread Necklace
							i(32517),	-- The Wavemender's Mantle
							i(32351),	-- Elunite Empowered Bracers
							i(32353),	-- Gloves of Unfailing Faith
							i(32347),	-- Grips of Damnation
							i(32346),	-- Boneweave Girdle
							i(32345),	-- Dreadboots of the Legion
							i(32352),	-- Naturewarden's Treads
						},
					}),
					e(1588, {	-- Mother Shahraz
						["creatureID"] = 22947,
						["groups"] = {
							i(122110, {	-- Sister of Temptation (PET!)
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(31101, {	-- Pauldrons of the Forgotten Conqueror
								["classes"] = { PALADIN, PRIEST, WARLOCK },
							}),
							i(31103, {	-- Pauldrons of the Forgotten Protector
								["classes"] = { WARRIOR, HUNTER, SHAMAN },
							}),
							i(31102, {	-- Pauldrons of the Forgotten Vanquisher
								["classes"] = { ROGUE, MAGE, DRUID },
							}),
							i(32369),	-- Blade of Savagery
							i(32370),	-- Nadina's Pendant of Purity
							i(32365),	-- Heartshatter Breastplate
							i(32367),	-- Leggings of Devastation
							i(32366),	-- Shadowmaster's Boots
							-- #if BEFORE MOP
							i(32368, {	-- Tome of the Lightbringer
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
						},
					}),
					e(1589, {	-- The Illidari Council
						["creatureID"] = 23426,
						["qgs"] = {
							22949,	-- Gathios the Shatterer
							22950,	-- High Nethermancer Zerevor
							22951,	-- Lady Malande
							22952,	-- Veras Darkshadow
						},
						["groups"] = {
							i(31098, {	-- Leggings of the Forgotten Conqueror
								["classes"] = { PALADIN, PRIEST, WARLOCK },
							}),
							i(31100, {	-- Leggings of the Forgotten Protector
								["classes"] = { WARRIOR, HUNTER, SHAMAN },
							}),
							i(31099, {	-- Leggings of the Forgotten Vanquisher
								["classes"] = { ROGUE, MAGE, DRUID },
							}),
							i(32376),	-- Forest Prowler's Helm
							i(32373),	-- Helm of the Illidari Shatterer
							i(32518),	-- Veil of Turning Leaves
							i(32331),	-- Cloak of the Illidari Council
							i(32519),	-- Belt of Divine Guidance
							i(32505),	-- Madness of the Betrayer
						},
					}),
					e(1590, {	-- Illidan Stormrage
						["creatureID"] = 22917,
						["groups"] = {
							ach(697, {	-- The Black Temple
								-- #if NOT ANYCLASSIC
								-- CRIEVE NOTE: This achievement can be earned ahead of time by completing 'The Fall of the Betrayer'.
								["timeline"] = { ADDED_3_0_2 },
								-- #endif
							}),
							ach(5091, {	-- The Black Temple Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							applyclassicphase(TBC_PHASE_THREE_GLAIVEPRIO, ach(426, {	-- Warglaives of Azzinoth
								["providers"] = {
									{ "i", 32837 },	-- Warglaive of Azzinoth (LEGENDARY! MH)
									{ "i", 32838 },	-- Warglaive of Azzinoth (LEGENDARY! OH)
								},
								["description"] = "Once you have both, simply equip them for this achievement.",
								["classes"] = { DEATHKNIGHT, DEMONHUNTER, MONK, ROGUE, WARRIOR },
							})),
							i(122196, {	-- Music Roll: The Burning Legion
								["timeline"] = { ADDED_6_1_0 },
							}),
							applyclassicphase(TBC_PHASE_THREE_GLAIVEPRIO, i(32837, {	-- Warglaive of Azzinoth (LEGENDARY! MH)
								-- #if AFTER 11.1.7
								["description"] = "Following patch 11.1.7, Blizzard seems to have changed something such that this can no longer be collected, though it continues to function properly for the related Achievement",
								["collectible"]=false,
								-- #endif
							})),
							applyclassicphase(TBC_PHASE_THREE_GLAIVEPRIO, i(32838, {	-- Warglaive of Azzinoth (LEGENDARY! OH)
								-- #if AFTER 11.1.7
								["description"] = "Following patch 11.1.7, Blizzard seems to have changed something such that this can no longer be collected, though it continues to function properly for the related Achievement",
								["collectible"]=false,
								-- #endif
							})),
							i(31089, {	-- Chestguard of the Forgotten Conqueror
								["classes"] = { PALADIN, PRIEST, WARLOCK },
							}),
							i(31091, {	-- Chestguard of the Forgotten Protector
								["classes"] = { WARRIOR, HUNTER, SHAMAN },
							}),
							i(31090, {	-- Chestguard of the Forgotten Vanquisher
								["classes"] = { ROGUE, MAGE, DRUID },
							}),
							i(32374),	-- Zhar'doom, Greatstaff of the Devourer
							i(32500),	-- Crystal Spire of Karabor
							i(32471),	-- Shard of Azzinoth
							i(32336),	-- Black Bow of the Betrayer
							i(32375),	-- Bulwark of Azzinoth
							i(32525),	-- Cowl of the Illidari High Lord
							i(32235),	-- Cursed Vision of Sargeras
							i(32521),	-- Faceplate of the Impenetrable
							i(32524),	-- Shroud of the Highborne
							i(32497),	-- Stormrage Signet Ring
							i(32496),	-- Memento of Tyrande
							i(32483),	-- The Skull of Gul'dan
						},
					}),
			-- #if AFTER 7.2.5.23910
				},
			}),
			-- #endif
		},
	}),
}))));
