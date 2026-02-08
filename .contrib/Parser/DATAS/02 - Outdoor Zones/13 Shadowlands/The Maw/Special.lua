---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(THE_MAW, {
		n(SPECIAL, {
			header(HEADERS.Achievement, 14738, {	-- Hunting Party
				q(63199, {	-- Hunt: Alpha Devourers
					["name"] = "Hunt: Alpha Devourers",
					["sourceQuests"] = { 60285 },	-- Rule 6: Concealment is Everything
					["isWeekly"] = true,
					["crs"] = { 175851 },	-- Alpha Anima Devourer
					["groups"] = {
						i(184586),	-- Sky Chain
					},
				}),
				q(63198, {	-- Hunt: Death Elementals
					["name"] = "Hunt: Death Elementals",
					["sourceQuests"] = { 60285 },	-- Rule 6: Concealment is Everything
					["isWeekly"] = true,
					["crs"] = { 172962 },	-- Tempered Stygia
				}),
				q(63180, {	-- Hunt: Shadehounds
					["name"] = "Hunt: Shadehounds",
					["sourceQuests"] = { 60285 },	-- Rule 6: Concealment is Everything
					["isWeekly"] = true,
					["crs"] = { 174861 },	-- Gorged Shadehound
					["groups"] = {
						n(174861, {	-- Gorged Shadehound
							["isWeekly"] = true,
							["questID"] = 63433,
							["coord"] = { 53.4, 79.3, THE_MAW },
							["groups"] = {
								i(184167),	-- Mawsworn Soulhunter (MOUNT!)
								i(183057),	-- Shadehound Armor Plating
							},
						}),
					},
				}),
				q(63194, {	-- Hunt: Winged Soul Eaters
					["name"] = "Hunt: Winged Soul Eaters",
					["sourceQuests"] = { 60285 },	-- Rule 6: Concealment is Everything
					["isWeekly"] = true,
					["crs"] = { 173195 },	-- Undying Soulbinder
				}),
			}),
			header(HEADERS.Quest, 64305, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- The Tormentors of Torghast
				["description"] = "You can only get the cache once a week, but you can continue to participate in the events for achievement credit individual boss loot.",
				["icon"] = 3257863,
				["questID"] = 63854,
				["isWeekly"] = true,
				["groups"] = {
					ach(15054, {	-- Minions of the Cold Dark
						crit(51655, {	-- Versya the Damned
							["_npcs"] = { 177981 },
						}),
						crit(51654, {	-- Gralebboih
							["_npcs"] = { 177979 },
						}),
						crit(51644, {	-- Promathiz
							["_npcs"] = { 177330 },
						}),
						crit(51643, {	-- Sentinel Pyrophus
							["_npcs"] = { 177331 },
						}),
						crit(51653, {	-- Gruukuuek the Elder
							["_npcs"] = { 177980 },
						}),
						crit(52101, {	-- Zul'gath the Flayer
							["_npcs"] = { 178886 },
						}),
						crit(51660, {	-- Mugrem the Soul Devourer
							["_npcs"] = { 178002 },
						}),
						crit(51639, {	-- The Mass of Souls
							["_npcs"] = { 177427 },
						}),
						crit(52102, {	-- Algel the Hunter
							["_npcs"] = { 178897 },
						}),
						crit(52103, {	-- Sentinel Shakorzeth
							["_npcs"] = { 178883 },
						}),
						crit(52104, {	-- Kazj the Sentinel
							["_npcs"] = { 178882 },
						}),
						crit(51661, {	-- Intercessor Razzram
							["_npcs"] = { 178004 },
						}),
						crit(51648, {	-- Malleus Grakizz
							["_npcs"] = { 177972 },
						}),
						crit(52105, {	-- Manifestation of Pain
							["_npcs"] = { 178899 },
						}),
						crit(52106, {	-- Golmak the Monstrosity
							["_npcs"] = { 178898 },
						}),
					}),
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							178897,	-- Algel the Haunter <Tormentor of Torghast>
							178898,	-- Golmak The Monstrosity <Tormentor of Torghast>
							177979,	-- Gralebboih <Tormentor of Torghast>
							177980,	-- Gruukuuek the Elder <Tormentor of Torghast>
							178004,	-- Intercessor Razzra <Tormentor of Torghast>
							178882,	-- Kazj The Sentinel <Tormentor of Torghast>
							177972,	-- Malleus Grakizz <Tormentor of Torghast>
							178899,	-- Manifestation of Pain <Tormentor of Torghast>
							178002,	-- Mugrem the Soul Devourer <Tormentor of Torghast>
							177330,	-- Promathiz <Tormentor of Torghast>
							177331,	-- Sentinel Pyrophus <Tormentor of Torghast>
							178883,	-- Sentinel Shakorzeth <Tormentor of Torghast>
							177427,	-- The Mass of Souls <Tormentor of Torghast>
							177981,	-- Versya the Damned <Tormentor of Torghast>
							178886,	-- Zul'gath the Flayer <Tormentor of Torghast>
						},
						["groups"] = {
							i(185972, {	-- Tormentor's Cache
								i(185973),	-- Chain of Bahmethra (MOUNT!)
								i(186977),	-- Beastcaller's Skull Crescent
								i(186978),	-- Borrowed Eye Crescent
								i(186562),	-- Tormentor's Manacled Backplate
								i(185756),	-- Warped Phantasma (TODO: add rep item if this makes it to live)
							}),
						},
					}),
					-- TODO: are individual boss loots weekly/daily? shows as all un-flagged for me when i killed them before, so assuming daily
					-- Need more questID's from existing Tormentors/repeat Tormentors... they can't repeat in the same daily lockout so idk about that
					-- currently have 64692 - 64694 saved, no Tormentors killed today, but 3 for the week
					-- 177370, Grievous Soul Crusher
					n(178897, {	-- Algel the Haunter
						["questID"] = 64107,
						["repeatable"] = true,
						["groups"] = {
							i(186239),	-- Drape of the Phantasm
							i(186227),	-- Jangling Chain Manacles
						},
					}),
					n(178898, {	-- Golmak The Monstrosity
						["questID"] = 64114,
						["repeatable"] = true,
						["groups"] = {
							i(186229),	-- Lavafused Breastplate
							i(186221),	-- Seared-Link Sabatons
						},
					}),
					n(177979, {	-- Gralebboih
						["questID"] = 64113,
						["repeatable"] = true,
						["groups"] = {
							i(186237),	-- Gormhide Pauldrons
							i(186449),	-- Amaranthine Stinger (PET!)
						},
					}),
					n(177370, {	-- Grievous Soul Crusher
						["description"] = "This tormentor can sometimes spawn instead of another tormentor ( which are on the achievement ). Shares loot table with Malleus Grakizz",
						-- ["repeatable"] = true,
						["groups"] = {
							i(186218),	-- Fire-Tempered Armor Cinch
							i(186012),	-- Inferno Blast Shield
						},
					}),
					n(177980, {	-- Gruukuuek the Elder
						["questID"] = 64112,
						["repeatable"] = true,
						["groups"] = {
							i(186226),	-- Cinch of Petrified Vines
							i(186009),	-- Corrupted Elder Branch
						},
					}),
					n(178004, {	-- Intercessor Razzra
						["questID"] = 64111,
						["repeatable"] = true,
						["groups"] = {
							i(186231),	-- Gloves of Fervent Intercession
							i(186004),	-- Kris of Dark Temptation
						},
					}),
					n(178882, {	-- Kazj The Sentinel
						-- ["questID"] = 64110,
						-- ["repeatable"] = true,
						["groups"] = {
							i(186450),	-- Crude Stygian Fastener
							i(186006),	-- Kazj's Stygian Splitter
						},
					}),
					n(177972, {	-- Malleus Grakizz
						-- ["questID"] = 64119,
						-- ["repeatable"] = true,
						["groups"] = {
							i(186218),	-- Fire-Tempered Armor Cinch
							i(186012),	-- Inferno Blast Shield
						},
					}),
					n(178899, {	-- Manifestation of Pain
						-- ["questID"] = 64118,
						-- ["repeatable"] = true,
						["groups"] = {
							i(186213),	-- Bindings of Manifest Pain
							i(186005),	-- Stygian Pain Borer
						},
					}),
					n(178002, {	-- Mugrem the Soul Devourer
						-- ["questID"] = 64116,
						-- ["repeatable"] = true,
						["groups"] = {
							i(186010),	-- Lost Attendant's Scepter
							i(186560),	-- Semi-Permeable Gelatinous Storage Pouch
						},
					}),
					n(177330, {	-- Promathiz
						-- ["questID"] = 64115,
						-- ["repeatable"] = true,
						["groups"] = {
							i(186007),	-- Cudgel of the Tin Sentinel
							i(186208),	-- Padded Insouls
						},
					}),
					n(177331, {	-- Sentinel Pyrophus
						["questID"] = 64127,
						["repeatable"] = true,
						["groups"] = {
							i(186241),	-- Insulated Thermal Leggings
							i(186219),	-- Pyrophus' Wrist Ties
						},
					}),
					n(178883, {	-- Sentinel Shakorzeth
						["questID"] = 64121,
						["repeatable"] = true,
						["groups"] = {
							i(186244),	-- Shakorzeth's Gorget
							i(186225),	-- Shoulder Joint Spindles
						},
					}),
					n(177427, {	-- The Mass of Souls
						-- ["questID"] = 64117,
						-- ["repeatable"] = true,
						["groups"] = {
							i(186210),	-- Diabolic Soul Veil
							i(186215),	-- Soul Stranglers
						},
					}),
					n(177981, {	-- Versya the Damned
						-- ["questID"] = ,
						-- ["repeatable"] = true,
						["groups"] = {
							i(186233),	-- Spaulders of the Skyborn Damned
							i(186003),	-- Versya's Stygian Longbow
						},
					}),
					n(178886, {	-- Zul'gath the Flayer
						["questID"] = 64122,
						["repeatable"] = true,
						["groups"] = {
							i(186235),	-- Shadow-Wreathed Vambraces
							i(186242),	-- Zul'gath's Chain Coif
						},
					}),
				},
			})),
			header(HEADERS.Spell, 347208, {
				["icon"] = 3257863,
				["description"] = "The Weekly lockout pertains only to Epic Gear Loot, Rare Gear loot can be farmed regardless.",
				["questID"] = 63414,
				["isWeekly"] = true,
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							175846,	-- Dathlane the Herald <Torghast Executioner>
							175877,	-- Lumisende <Torghast Executioner>
							175881,	-- Naelcrotix <Torghast Executioner>
							176173,	-- Zograthos <Torghast Executioner>
						},
						["groups"] = {
							i(183228),	-- Memory of Arcane Pulsars
							i(184657),	-- Armguard of the Unseen Assailant
							i(184661),	-- Bracers of the Tenebrous Retinue
							i(184658),	-- Dread Harrier's Pauldrons
							i(184660),	-- Dreadguard's Greathelm
							i(184654),	-- Forgotten Shade's Shawl
							i(186042),	-- Forsaken Crusader's Blade
							i(184659),	-- Grips of the Dreadhound Tamer
							i(184656),	-- Mawsworn Assassin's Doublet
							i(184655),	-- Sash of the Ethereal Servant
						},
					}),
					n(175846, {	-- Dathlane the Herald <Torghast Executioner>
						["description"] = "A possible boss for the 'Wrath of the Jailer' event.",
						["questID"] = 64126,
						["isWeekly"] = true,
						["groups"] = {
							i(186008),	-- Forsworn's Judgment
							i(186207),	-- Mawsworn Herald's Vestments
						},
					}),
					n(175877, {	-- Lumisende <Torghast Executioner>
						["description"] = "A possible boss for the 'Wrath of the Jailer' event.",
						["questID"] = 64125,
						["isWeekly"] = true,
						["groups"] = {
							i(186011),	-- Lumisende's Twin-Blade
							i(186230),	-- Mawsworn Warboots
						},
					}),
					n(175881, {	-- Naelcrotix <Torghast Executioner>
						["description"] = "A possible boss for the 'Wrath of the Jailer' event.",
						["questID"] = 64124,
						["isWeekly"] = true,
						["groups"] = {
							i(186243),	-- Helm of Necrotic Sight
							i(186013),	-- Vessel of Primordial Death
						},
					}),
					n(176173, {	-- Zograthos <Torghast Executioner>
						["description"] = "A possible boss for the 'Wrath of the Jailer' event.",
						["questID"] = 64123,
						["isWeekly"] = true,
						["groups"] = {
							i(186232),	-- Phantom-Stalker's Legplates
							i(186216),	-- Zograthos' Visage
						},
					}),
				},
			}),
			i(186188, {	-- Lil' Abom (PET!)
				["description"] = "What controls the availability of parts is currently unknown. They appear to spawn in Perdition Hold and the surrounding area, next to dead Prime Guards. If you cannot find parts at any of the provided coordinates, try using |cFFFFFFFF/tar Prime Guard|r.",
				["timeline"] = { ADDED_9_1_0 },
				["cost"] = {
					{ "i", 186183, 1 },	-- Lil' Abom Head
					{ "i", 186185, 1 },	-- Lil' Abom Legs
					{ "i", 186186, 1 },	-- Lil' Abom Right Hand
					{ "i", 186187, 1 },	-- Lil' Abom Spare Arm
					{ "i", 186184, 1 },	-- Lil' Abom Torso
				},
			}),
		}),
	}),
})));
