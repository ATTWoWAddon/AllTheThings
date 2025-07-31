---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(672, {	-- Mardum, the Shattered Abyss
			["lore"] = "Mardum, the Shattered Abyss, colloquially known simply as Mardum and originally called the Plane of Banishment, is a prison world that was created by Sargeras prior to his becoming the Fallen Titan to hold all the demons he killed in the Great Dark Beyond. After his decision to destroy all world-souls in the universe, Sargeras shattered Mardum to free the demons that would become his Burning Legion. This is the starting scenario for Demon Hunters.",
			["classes"] = { DEMONHUNTER },
			["icon"] = 236415,	-- Illidan
			["maps"] = {
				673,	-- Cryptic Hollow
				674,	-- Soul Engine
				675,	-- Soul Engine
			},
			["groups"] = {
				n(QUESTS, {
					q(40077, {	-- The Invasion Begins
						["provider"] = { "n", 93011 },	-- Kayn Sunfury
						["coord"] = { 22.0, 55.8, 672 },
						["groups"] = {
							i(128953),	-- Treads of Illidari Supremacy
							i(133317),	-- Treads of Illidari Supremacy
						},
					}),
					q(40378, {	-- Enter the Illidar: Ashtongue
						["sourceQuests"] = { 40077 },	-- Treads of Illidari Supremacy
						["provider"] = { "n", 98229 },	-- Kayn Sunfury
						["coord"] = { 28.5, 63.0, 672 },
						["groups"] = {
							mount(200175, {	-- Felsaber (MOUNT!)
								["classes"] = { DEMONHUNTER },
							}),
						},
					}),
					q(39279, {	-- Assault on Mardum
						["description"] = "This is a bonus objective.",
						["sourceQuests"] = { 40077 },	-- Treads of Illidari Supremacy
						["collectible"] = false, -- TODO: check this
					}),
					q(40379, {	-- Enter the Illidari: Coilskar
						["sourceQuests"] = { 40378 },	-- Enter the Illidar: Ashtongue
						["provider"] = { "n", 100982 },	-- Sevis Brightflame
						["coord"] = { 33.9, 69.9, 672 },
					}),
					q(39049, {	-- Eye On the Prize
						["sourceQuests"] = { 40378 },	-- Enter the Illidar: Ashtongue
						["provider"] = { "n", 94410 },	-- Allari the Souleater
						["coord"] = { 33.9, 70.0, 672 },
						["groups"] = {
							i(201989, {	-- Twisted Heart
								["timeline"] = { ADDED_10_0_2_LAUNCH },
							}),
						},
					}),
					q(38759, {	-- Set Them Free
						["sourceQuests"] = { 40378 },	-- Enter the Illidar: Ashtongue
						["provider"] = { "n", 94410 },	-- Allari the Souleater
						["coord"] = { 33.9, 70.0, 672 },
						["groups"] = {
							i(128952),	-- Torment Ender's Chestguard
							i(133312),	-- Torment Ender's Chestguard
						},
					}),
					q(39050, {	-- Meeting With the Queen
						["sourceQuests"] = {
							40379,	-- Enter the Illidari: Coilskar
							39049,	-- Eye on the Prize
							38759,	-- Set Them Free
						},
						["provider"] = { "n", 93759 },	-- Jace Darkweaver
						["coord"] = { 38.8, 60.6, 672 },
					}),
					q(38766, {	-- Before We're Overrun
						["sourceQuests"] = { 39050 },	-- Meeting With the Queen
						["provider"] = { "n", 93759 },	-- Jace Darkweaver
						["coord"] = { 38.8, 60.6, 672 },
						["groups"] = {
							i(201989, {	-- Twisted Heart
								["timeline"] = { ADDED_10_0_2_LAUNCH },
							}),
						},
					}),
					q(38765, {	-- Enter the Illidari: Shivarra
						["sourceQuests"] = { 39050 },	-- Meeting With the Queen
						["provider"] = { "n", 93759 },	-- Jace Darkweaver
						["coord"] = { 38.8, 60.6, 672 },
						["groups"] = {
							i(128951),	-- Leggings of Sacrifice
							i(133316),	-- Leggings of Sacrifice
						},
					}),
					q(38813, {	-- Orders for Your Captains
						["sourceQuests"] = {
							38766,	-- Before We're Overrun
							38765,	-- Enter the Illidari: Shivarra
						},
						["provider"] = { "n", 93127 },	-- Kayn Sunfury
						["coord"] = { 60.5, 44.7, 672 },
					}),
					q(39262, {	-- Give Me Sight Beyond Sight
						["sourceQuests"] = { 38813 },	-- Orders For Your Captains
						["provider"] = { "n", 93127 },	-- Kayn Sunfury
						["coord"] = { 60.5, 44.7, 672 },
					}),
					q(39495, {	-- Hidden No More
						["sourceQuests"] = { 39262 },	-- Give Me Sight Beyond Sight
						["provider"] = { "n", 96436 },	-- Jace Darkweaver
						["coord"] = { 64.0, 52.2, 672 },
						["groups"] = {
							i(201989, {	-- Twisted Heart
								["timeline"] = { ADDED_10_0_2_LAUNCH },
							}),
						},
					}),
					q(38819, {	-- Their Numbers Are Legion
						["sourceQuests"] = { 39495 },	-- Hidden No More
						["provider"] = { "n", 96420 },	-- Cyana Nightglaive
						["coord"] = { 60.5, 44.8, 672 },
						["groups"] = {
							i(128950),	-- Demon-Rend Shoulderblades
							i(133311),	-- Demon-Rend Shoulderblades
						},
					}),
					q(38727, {	-- Stop the Bombardment
						["sourceQuests"] = { 39495 },	-- Hidden No More
						["provider"] = { "n", 93127 },	-- Kayn Sunfury
						["coord"] = { 60.5, 44.7, 672 },
					}),
					q(38725, {	-- Into the Foul Creche
						["sourceQuests"] = { 39495 },	-- Hidden No More
						["provider"] = { "n", 96655 },	-- Allari the Souleater
						["coord"] = { 60.5, 44.6, 672 },
						["isBreadcrumb"] = true,
					}),
					q(40222, {	-- The Imp Mother's Tome
						["sourceQuests"] = {
							39495,	-- Hidden No More
							38725,	-- Into the Foul Creche
						},
						["provider"] = { "n", 98711 },	-- Kor'vas Bloodthorn
						["coord"] = { 73.1, 33.8, 672 },
						["groups"] = {
							i(128954),	-- Power Handler's Gloves
							i(133314),	-- Power Handler's Gloves
						},
					}),
					q(40051, {	-- Fel Secrets
						["sourceQuests"] = { 40222 },	-- The Imp Mother's Tome
						["provider"] = { "n", 99045 },	-- Kor'vas Bloodthorn
						["coord"] = { 60.5, 44.8, 672 },
					}),
					q(39515, {	-- Vengeance Will Be Mine! [Only if you choose Vengeance Spec]
						["sourceQuests"] = { 40051 },	-- Fel Secrets
						["provider"] = { "n", 93127 },	-- Kayn Sunfury
						["coord"] = { 60.5, 44.7, 672 },
					}),
					q(39516, {	-- Cry Havoc and Let Slip the Illidari! [Only if you choose Havoc Spec]
						["sourceQuests"] = { 40051 },	-- Fel Secrets
						["provider"] = { "n", 93127 },	-- Kayn Sunfury
						["coord"] = { 60.5, 44.7, 672 },
					}),
					q(39663, {	-- On Felbat Wings
						["sourceQuests"] = {
							39516,	-- Cry Havoc and Let Slip the Illidari!
							39515,	-- Vengeance Will Be Mine!
						},
						["provider"] = { "n", 93127 },	-- Kayn Sunfury
						["coord"] = { 60.5, 44.7, 672 },
					}),
					q(38728, {	-- The Keystone
						["sourceQuests"] = { 39663 },	-- On Felbat Wings
						["provider"] = { "n", 97297 },	-- Cyana Nightglaive
						["coord"] = { 69.9, 44.2, 672 },
						["groups"] = {
							i(128955),	-- The Brood Queen's Veil
							i(133310),	-- The Brood Queen's Veil
						},
					}),
					q(38729, {	-- Return to the Black Temple
						["sourceQuests"] = { 38728 },	-- The Keystone
						["provider"] = { "n", 97303 },	-- Kayn Sunfury
						["coord"] = { 69.8, 37.9, 672 },
						["groups"] = {
							i(132243),	-- Fel-Etched Glaive
						},
					}),
				}),
				n(RARES, {
					n(97058, { -- Count Nefarious
						["questID"] = 40231,	-- Nefarious Ring
						["coord"] = { 63.7, 23.2, 672 },
						["groups"] = {
							i(128948),	-- Nefarious Ring
						},
					}),
					n(97370, {	-- General Volroth
						["questID"] = 40234,
						["coord"] = { 68.6, 27.6, 672 },
						["groups"] = {
							i(128947),	-- Pit Lord's Cuffs
							i(133313),	-- Pit Lord's Cuffs
						},
					}),
					n(97059, {	-- King Voras
						["questID"] = 40232,
						["coord"] = { 74.6, 57.5, 672 },
						["groups"] = {
							i(128944),	-- Voras' Silk Drape
						},
					}),
					n(97057, { -- Overseer Brutarg
						["questID"] = 40233,	-- Brutarg's Sword Tip
						["coord"] = { 81.1, 41.4, 672 },
						["groups"] = {
							i(133580),	-- Brutarg's Sword Tip
						},
					}),
				}),
				n(TREASURES, {
					o(246309, {	-- Small Treasure Chest
						["questID"] = 40797,
						["coord"] = { 23.1, 53.9, 672 },
						["icon"] = 308482,	-- Grey Treasure Chest
					}),
					o(244689, {	-- Small Treasure Chest
						["questID"] = 39970,
						["coord"] = { 34.9, 70.2, 672 },
						["icon"] = 308482,	-- Grey Treasure Chest
					}),
					o(244691, {	-- Small Treasure Chest
						["questID"] = 39971,	-- Inquisitor's Menacing Eye
						["coord"] = { 45.0, 77.9, 672 },
						["icon"] = 308482,	-- Grey Treasure Chest
						["groups"] = {
							i(129192),	-- Inquisitor's Menacing Eye
						},
					}),
					o(245316, {	-- Small Treasure Chest
						["questID"] = 40223,
						["coord"] = { 42.2, 49.2, 672 },
						["icon"] = 308482,	-- Grey Treasure Chest
					}),
					o(246249, {	-- Small Treasure Chest
						["questID"] = 40759,
						["coord"] = { 41.8, 37.6, 672 },
						["icon"] = 308482,	-- Grey Treasure Chest
					}),
					o(246147, {	-- Small Treasure Chest
						["questID"] = 40743,
						["coord"] = { 51.2, 50.8, 672 },
						["icon"] = 308482,	-- Grey Treasure Chest
					}),
					o(244694, {	-- Small Treasure Chest
						["questID"] = 39973,	-- Mardum Lord Signet
						["coords"] = {
							{ 64.1, 58.4, 672 },
							{ 54.9, 58.7, 673 },
						},
						["icon"] = 308482,	-- Grey Treasure Chest
						["groups"] = {
							i(128946),	-- Mardum Lord Signet
						},
					}),
					o(244692, {	-- Small Treasure Chest
						["questID"] = 39972,	-- Legion Healthstone
						["coords"] = {
							{ 48.8, 15.6, 673 },
							{ 63.7, 54.3, 672 },
						},
						["icon"] = 308482,	-- Grey Treasure Chest
					}),
					o(244698, {	-- Small Treasure Chest
						["questID"] = 39974,
						["coord"] = { 66.9, 24.0, 672 },
						["icon"] = 308482,	-- Grey Treasure Chest
					}),
					o(245345, {	-- Small Treasure Chest
						["questID"] = 40338,
						["coord"] = { 76.3, 39.1, 672 },
						["icon"] = 308482,	-- Grey Treasure Chest
					}),
					o(246269, {	-- Small Treasure Chest
						["questID"] = 40772,
						["coords"] = {
							{ 63.0, 21.0, 672 },
							{ 50.2, 49.8, 675 },
						},
						["icon"] = 308482,	-- Grey Treasure Chest
					}),
					o(244701, {	-- Small Treasure Chest
						["questID"] = 39977,
						["description"] = "Cave entrance is located at 71.0 54.2.",
						["coord"] = { 74.3, 54.5, 672 },
						["icon"] = 308482,
					}),
					o(244699, {	-- Small Treasure Chest
						["questID"] = 39975,	-- Vile Stalkerskin Pouch [28 Slot Bag]
						["coord"] = { 73.5, 48.9, 672 },
						["icon"] = 308482,	-- Grey Treasure Chest
						["groups"] = {
							i(129195),	-- Vile Stalkerskin Pouch
						},
					}),
					o(245996, {	-- Small Treasure Chest
						["questID"] = 40274,
						["coord"] = { 78.7, 50.5, 672 },
						["icon"] = 308482,	-- Grey Treasure Chest
					}),
					o(246353, {	-- Small Treasure Chest
						["questID"] = 40820,	-- Legion Healthstone
						["coord"] = { 82.1, 50.4, 672 },
						["icon"] = 308482,	-- Grey Treasure Chest
					}),
					o(244700, {	-- Small Treasure Chest
						["questID"] = 39976,
						["coord"] = { 69.6, 42.3, 672 },
						["icon"] = 308482,	-- Grey Treasure Chest
					}),
				}),
				m(677, {	-- Vault of the Wardens: Vault of Silence
					["icon"] = 1387709,	-- Wardens Owl
					["maps"] = {
						678,	-- Second Floor
						679,	-- Third Floor
					},
					["groups"] = {
						n(QUESTS, {
							q(38672, {	-- Breaking Out
								["description"] = "Maiev upgrades your uncommon Illidari Glaives to these two glaives.",
								["sourceQuests"] = { 38729 },	-- Return to the Black Temple
								["provider"] = { "n", 92718 },	-- Maiev Shadowsong
								["coord"] = { 80.1, 36.6, 677 },
								["groups"] = {
									i(132243),	-- Fel-Etched Glaive
									i(128956),	-- Fel-Etched Glaive
								},
							}),
							q(39742, {	-- Vault of the Wardens
								["description"] = "This is a bonus objective.",
								["sourceQuests"] = { 38672 },	-- Breaking Out
							}),
							q(38689, {	-- Fel Infusion
								["sourceQuests"] = { 38672 },	-- Breaking Out
								["provider"] = { "n", 92986 },	-- Altruis the Sufferer
								["coord"] = { 74.4, 37.1, 677 },
							}),
							q(38690, {	-- Rise of the Illidari
								["sourceQuests"] = { 38672 },	-- Breaking Out
								["provider"] = { "n", 92980 },	-- Kayn Sunfury
								["coord"] = { 74.4, 35.9, 677 },
							}),
							q(38723, {	-- Stop Gul'dan! [Havoc Version]
								["sourceQuests"] = {
									38689,	-- Fel Infusion
									38690,	-- Rise of the Illidari
								},
								["provider"] = { "n", 92718 },	-- Maiev Shadowsong
								["coord"] = { 49.4, 49.7, 677 },
							}),
							q(40253, {	-- Stop Gul'dan! [Vengeance Version]
								["sourceQuests"] = {
									38689,	-- Fel Infusion
									38690,	-- Rise of the Illidari
								},
								["provider"] = { "n", 92718 },	-- Maiev Shadowsong
								["coord"] = { 49.4, 49.7, 677 },
							}),
							q(39682, {	-- Grand Theft Felbat
								["sourceQuests"] = { 38723, 40253 },	-- Stop Gul'dan!
								["provider"] = { "n", 96665 },	-- Kayn Sunfury
								["coord"] = { 50.8, 72.8, 677 },
							}),
							q(39683, {	-- Forged in Fire [Havoc Only]
								["sourceQuests"] = { 39682 },	-- Grand Theft Felbat
								["provider"] = { "n", 96675 },	-- Allari the Souleater
								["coord"] = { 41.0, 47.1, 678 },
								["groups"] = {
									i(201989, {	-- Twisted Heart
										["timeline"] = { ADDED_10_0_2_LAUNCH },
									}),
								},
							}),
							q(40254, {	-- Forged in Fire [Vengeance Only]
								["sourceQuests"] = { 39682 },	-- Grand Theft Felbat
								["provider"] = { "n", 96675 },	-- Allari the Souleater
								["coord"] = { 41.0, 47.1, 678 },
								["groups"] = {
									i(201989, {	-- Twisted Heart
										["timeline"] = { ADDED_10_0_2_LAUNCH },
									}),
								},
							}),
							q(39684, {	-- Beam Me Up
								["sourceQuests"] = { 39682 },	-- Grand Theft Felbat
								["provider"] = { "n", 97643 },	-- Kor'vas Bloodthorn
								["coord"] = { 41.3, 47.3, 678 },
							}),
							q(39685, {	-- Frozen in Time
								["sourceQuests"] = { 39682 },	-- Grand Theft Felbat
								["provider"] = { "n", 97643 },	-- Kor'vas Bloodthorn
								["coord"] = { 41.3, 47.3, 678 },
								["groups"] = {
									i(128949),	-- Infernal Firecord Sash
									i(133315),	-- Infernal Firecord Sash
								},
							}),
							q(39686, {	-- All The Way Up
								["sourceQuests"] = {
									39683,	-- Forged in Fire (Havoc)
									40254,	-- Forged in Fire (Vengeance)
									39684,	-- Beam Me Up
									39685,	-- Frozen in Time
								},
								["provider"] = { "n", 96675 },	-- Allari the Souleater
								["coord"] = { 41.1, 47.1, 678 },
							}),
							q(40373, {	-- A New Direction
								["sourceQuests"] = { 39686 },	-- All The Way Up
								["provider"] = { "n", 97644 },	-- Kor'vas Bloodthorn
								["coord"] = { 24.4, 55.7, 679 },
								["groups"] = {
									i(138970),	-- Helm of Reaffirmed Purpose
									i(141650),	-- Helm of Reaffirmed Purpose
								},
							}),
							q(39688, {	-- Between Us and Freedom / Nightelf [Havoc]
								["sourceQuests"] = { 40373 },	-- A New Direction
								["provider"] = { "n", 97644 },	-- Kor'vas Bloodthorn
								--["coord"] = { 24.4, 55.7, 679 },	-- Vault of the Wardens
								["races"] = { NIGHTELF },
								["groups"] = {
									i(201989, {	-- Twisted Heart
										["timeline"] = { ADDED_10_0_2_LAUNCH },
									}),
								},
							}),
							q(40255, {	-- Between Us and Freedom / Night Elf [Vengeance]
								["sourceQuests"] = { 40373 },	-- A New Direction
								["provider"] = { "n", 97644 },	-- Kor'vas Bloodthorn
								--["coord"] = { 24.4, 55.7, 679 },	-- Vault of the Wardens
								["races"] = { NIGHTELF },
								["groups"] = {
									i(201989, {	-- Twisted Heart
										["timeline"] = { ADDED_10_0_2_LAUNCH },
									}),
								},
							}),
							q(39694, {	-- Between Us and Freedom / Blood Elf [Havoc]
								["sourceQuests"] = { 40373 },	-- A New Direction
								["provider"] = { "n", 97644 },	-- Kor'vas Bloodthorn
								["coord"] = { 24.5, 56.2, 679 },	-- Vault of the Wardens
								["races"] = { BLOODELF },
								["groups"] = {
									i(201989, {	-- Twisted Heart
										["timeline"] = { ADDED_10_0_2_LAUNCH },
									}),
								},
							}),
							q(40256, {	-- Between Us and Freedom / Blood Elf [Vengeance]
								["sourceQuests"] = { 40373 },	-- A New Direction
								["provider"] = { "n", 97644 },	-- Kor'vas Bloodthorn
								["coord"] = { 24.5, 56.2, 679 },	-- Vault of the Wardens
								["races"] = { BLOODELF },
								["groups"] = {
									i(201989, {	-- Twisted Heart
										["timeline"] = { ADDED_10_0_2_LAUNCH },
									}),
								},
							}),
							q(39690, {	-- Illidari, We Are Leaving / Horde
								["sourceQuests"] = { 39694, 40256 },	-- Between Us and Freedom
								["provider"] = { "n", 97978 },	-- Archmage Khadgar
								["races"] = { BLOODELF },
							}),
							q(39689, {	-- Illidari, We Are Leaving / Alliance
								["sourceQuests"] = { 39688, 40255 },	-- Between Us and Freedom
								["provider"] = { "n", 97978 },	-- Archmage Khadgar
								["races"] = { NIGHTELF },
							}),
						}),
						n(RARES, {
							n(96997, {	-- Kethrazor
								["questID"] = 40251,	-- Inquisitor's Glowering Eye
								["coord"] = { 49.5, 32.8, 677 },
								["groups"] = {
									i(128945),	-- Inquisitor's Glowering Eye
								},
							}),
							n(97069, {	-- Wrath-Lord Lekos
								["questID"] = 40301,	-- Lekos' Leash
								["coord"] = { 69.1, 27.6, 677 },
								["groups"] = {
									i(128958),	-- Lekos' Leash
								},
							}),
						}),
						n(TREASURES, {
							o(246555, {	-- Small Treasure Chest
								["questID"] = 40909,
								["coord"] = { 58.7, 34.7, 677 },
								["icon"] = 308482,	-- Grey Treasure Chest
							}),
							o(246556, {	-- Small Treasure Chest
								["questID"] = 40910,
								["coord"] = { 47.3, 54.6, 677 },
								["icon"] = 308482,	-- Grey Treasure Chest
							}),
							o(246557, {	-- Small Treasure Chest
								["questID"] = 40911,
								["coord"] = { 32.1, 48.2, 678 },
								["icon"] = 308482,	-- Grey Treasure Chest
							}),
							o(246558, {	-- Small Treasure Chest
								["questID"] = 40912,
								["coord"] = { 41.4, 32.9, 678 },
								["icon"] = 308482,	-- Grey Treasure Chest
							}),
							o(246560, {	-- Small Treasure Chest
								["questID"] = 40914,
								["coord"] = { 41.5, 63.6, 678 },
								["icon"] = 308482,	-- Grey Treasure Chest
							}),
							o(246559, {	-- Small Treasure Chest
								["questID"] = 40913,
								["coord"] = { 57.0, 40.2, 678 },
								["icon"] = 308482,	-- Grey Treasure Chest
							}),
							o(246561, {	-- Small Treasure Chest
								["questID"] = 40915,
								["coord"] = { 24.4, 9.9, 679 },
								["icon"] = 308482,	-- Grey Treasure Chest
							}),
							o(246562, {	-- Small Treasure Chest
								["questID"] = 40916,
								["coord"] = { 23.2, 81.6, 679 },
								["icon"] = 308482,	-- Grey Treasure Chest
							}),
						}),
					},
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	m(BROKEN_ISLES, {
		m(672, {	-- Mardum, the Shattered Abyss
			n(QUESTS, {
				q(40375),	-- A New Direction: Obtained Altruis - chose Altruis during "A New Direction" (questID 40373) in the Vault of the Wardens scenario
				q(40374),	-- A New Direction: Obtained Kayn - chose Kayn during "A New Direction" (questID 40373) in the Vault of the Wardens scenario
				q(40087),	-- Enter the Illidari: Shivarra - Sevis Brightflame Sacrificed Tracking Event
				q(39517),	-- Fel Secrets - Havoc Spec Tracking Event - picked Havoc during "Fel Secrets" (questID 40051)
				q(39518),	-- Fel Secrets - Vengeance Spec Tracking Event - picked Vengeance during "Fel Secrets" (questID 40051)
				q(40076),	-- Start Demon Hunter Tracking - triggers right after creating a demon hunter
				q(40921),	-- Tracking Quest: Bastillax 1 - triggers when Bastillax dialog starts in the Vault of the Wardens scenario
				q(40922),	-- Tracking Quest: Mephistos 2
				q(40923),	-- Tracking Quest: Mephistos 3 - triggers when Bastillax dialog starts when flying to the second floor in the Vault of the Wardens scenario
				q(40924),	-- Tracking Quest: Bastillax 4 - triggers when Bastillax dialog starts at the top of the Vault of the Wardens scenario
				q(40386),	-- Tracking Quest: Khadgar Arrival - escaped the Vault of the Wardens entry scenario
				q(40422),	-- Tracking Quest: VotW Started - triggers when you take the portal to the Black Temple to start the Vault of the Wardens scenario
				q(42181),	-- Triggered after turning in "The Lone Mountain" (questID 39733)
			}),
		})
	}),
})));
