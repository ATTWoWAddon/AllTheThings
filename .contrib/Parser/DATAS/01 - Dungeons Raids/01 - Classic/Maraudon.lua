-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
MARAUDON_PORTAL = createHeader({
	readable = "Maraudon Portal",
	icon = 135743,
	text = {
		en = WOWAPI_GetSpellName(21127),
	},
});
FOULSPORE_CAVERN = createHeader({
	readable = "Foulspore Cavern",
	icon = 134116,
	text = {
		-- #if AFTER 7.3.0
		en = [[~DUNGEON_FLOOR_DESOLACE22.." ("..]] .. WOWAPI_GetSpellName(251097) .. [[..")"]],
		-- #else
		en = [[~DUNGEON_FLOOR_DESOLACE22.." (Orange Path)"]],
		-- #endif
	},
});
WICKED_GROTTO = createHeader({
	readable = "The Wicked Grotto",
	icon = 134075,
	text = {
		-- #if AFTER 7.3.0
		en = [[~DUNGEON_FLOOR_DESOLACE21.." ("..]] .. WOWAPI_GetSpellName(251095) .. [[..")"]],
		-- #else
		en = [[~DUNGEON_FLOOR_DESOLACE21.." (Purple Path)"]],
		-- #endif
	},
});
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(232, {	-- Maraudon
		-- #if BEFORE MOP
		["lore"] = "Protected by the fierce Maraudine centaur, Maraudon is one of the most sacred sites within Desolace. The great temple/cavern is the burial place of Zaetar, one of two immortal sons born to the demigod, Cenarius. Legend holds that Zaetar and the earth elemental princess, Theradras, sired the misbegotten centaur race. It is said that upon their emergence, the barbaric centaur turned on their father and killed him. Some believe that Theradras, in her grief, trapped Zaetar's spirit within the winding cavern - used its energies for some malign purpose. The subterranean tunnels are populated by the vicious, long-dead ghosts of the Centaur Khans, as well as Theradras' own raging, elemental minions.",
		-- #endif
		["zone-text-areaID"] = 2100,	-- Maraudon
		["coord"] = { 35.7, 55.5, DESOLACE },
		["mapID"] = MARAUDON,
		["maps"] = { MARAUDON_LEVEL2, MARAUDON_OUTDOOR_LEVEL1, MARAUDON_OUTDOOR_LEVEL2 },
		["lvl"] = lvlsquish(41, 30, 10),
		["groups"] = {
			n(QUESTS, {
				q(27697, {	-- Corruption in Maraudon
					["qg"] = 12238,	-- Zaetar's Spirit
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(32, 32, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Lord Vyletongue slain
							["provider"] = { "n", 12236 },	-- Lord Vyletongue
						}),
					},
				}),
				{	-- Corruption of Earth and Seed
					["allianceQuestData"] = q(7065, {	-- Corruption of Earth and Seed (A)
						["qg"] = 13698,	-- Keeper Marandis
						["coord"] = { 63.8, 10.6, DESOLACE },
					}),
					["hordeQuestData"] = q(7064, {	-- Corruption of Earth and Seed (H)
						["qg"] = 13699,	-- Selendra
						["coord"] = { 26.9, 77.7, DESOLACE },
					}),
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Princess Theradras slain
							["provider"] = { "n", 12201 },	-- Princess Theradras
						}),
						i(17705, {	-- Thrash Blade
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17743, {	-- Resurgence Rod
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17753, {	-- Verdant Keeper's Aim
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				},
				q(7044, {	-- Legends of Maraudon
					["qg"] = 13697,	-- Cavindra
					["coord"] = { 32.1, 64.0, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 41,
					["groups"] = {
						objective(1, {	-- 0/1 Celebrian Diamond
							["provider"] = { "i", 17703 },	-- Celebrian Diamond
						}),
						objective(2, {	-- 0/1 Celebrian Rod
							["provider"] = { "i", 17702 },	-- Celebrian Rod
						}),
					},
				}),
				q(27692, {	-- Princess Theradras
					["qg"] = 12238,	-- Zaetar's Spirit
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(32, 32, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Princess Theradras slain
							["provider"] = { "n", 12201 },	-- Princess Theradras
						}),
						i(66008),	-- Shield of Maraudon
						i(65992),	-- Pauldrons of the Promise
						i(65919),	-- Zaetar's Gloves
						i(131681, {	-- Leggings of Flourishing Vigor
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(65969),	-- Leggings of the Verdant Oasis
						i(131682, {	-- Boots of Endless Vitality
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(65945),	-- Sandals of Glorious Life
					},
				}),
				q(7066, {	-- Seed of Life
					["providers"] = {
						{ "n", 12238 },	-- Zaetar's Spirit
						{ "i", 17760 },	-- Seed of Life
					},
					-- #if BEFORE 4.0.3
					["description"] = "This quest becomes available after you defeat Princess Theradras.",
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { MOONGLADE },
					["lvl"] = 39,
				}),
				q(27698, {	-- Servants of Theradras
					["qg"] = 12238,	-- Zaetar's Spirit
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(32, 32, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Noxxion slain
							["provider"] = { "n", 13282 },	-- Noxxion
						}),
						objective(2, {	-- 0/1 Razorlash slain
							["provider"] = { "n", 12258 },	-- Razorlash
						}),
					},
				}),
				{	-- Shadowshard Fragments
					["allianceQuestData"] = q(7070, {	-- Shadowshard Fragments (A)
						["qg"] = 4967,	-- Archmage Tervosh
						["coord"] = { 66.4, 49.3, DUSTWALLOW_MARSH },
					}),
					["hordeQuestData"] = q(7068, {	-- Shadowshard Fragments (H)
						["qg"] = 7311,	-- Uthel'nay <Mage Trainer>
						["coord"] = { 39.2, 86.3, ORGRIMMAR },
					}),
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/10 Shadowshard Fragment
							["provider"] = { "i", 17756 },	-- Shadowshard Fragment
							["crs"] = {
								11777,	-- Shadowshard Rumbler
								11778,	-- Shadowshard Smasher
							},
						}),
						i(17773, {	-- Prodigious Shadowshard Pendant
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17772, {	-- Zealous Shadowshard Pendant
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				},
				q(7067, {	-- The Pariah's Instructions
					["providers"] = {
						{ "n", 13717 },	-- Centaur Pariah
						{ "i", 17781 },	-- The Pariah's Instructions
					},
					["coord"] = { 50.5, 86.7, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 39,
					["groups"] = {
						-- #if BEFORE 4.0.3
						objective(1, {	-- 0/1 Amulet of Union
							["provider"] = { "i", 17758 },	-- Amulet of Union
							["cost"] = {
								{ "i", 17757, 1 },	-- Amulet of Spirits
								{ "i", 17761, 1 },	-- Gem of the First Khan
								{ "i", 17762, 1 },	-- Gem of the Second Kahn
								{ "i", 17763, 1 },	-- Gem of the Third Kahn
								{ "i", 17764, 1 },	-- Gem of the Fourth Kahn
								{ "i", 17765, 1 },	-- Gem of the Fifth Kahn
							},
						}),
						i(17757, {	-- Amulet of Spirits
							["coord"] = { 28.1, 62.4, DESOLACE },
							["cr"] = 13718,	-- The Nameless Prophet
						}),
						i(17761, {	-- Gem of the First Khan
							["description"] = "Kolk is standing by the little room where you create the portal for Inner Maraudon, in the middle part.\n\nTo attack him, use the Amulet of Spirits that you got from The Nameless Prophet.",
							["crs"] = {
								12240,	-- Spirit of Kolk <The First Kahn>
								13742,	-- Kolk <The First Kahn>
							},
							["coord"] = { 29.7, 60.5, DESOLACE },
						}),
						i(17762, {	-- Gem of the Second Kahn
							["description"] = "Gelk is located outside the portal of the purple path, hanging with snakes and rock elementals. He is almost just below the portal (use the stairs to get to him).\n\nTo attack him, use the Amulet of Spirits that you got from The Nameless Prophet.",
							["crs"] = {
								12239,	-- Spirit of Gelk <The Second Kahn>
								13741,	-- Gelk <The Second Kahn>
							},
							["coord"] = { 29.4, 56.9, DESOLACE },
						}),
						i(17763, {	-- Gem of the Third Kahn
							["description"] = "Magra is located outside the portal of the orange path. He is in the stairs area.\n\nTo attack him, use the Amulet of Spirits that you got from The Nameless Prophet.",
							["crs"] = {
								12241,	-- Spirit of Magra <The Third Kahn>
								13740,	-- Magra <The Third Kahn>
							},
							["coord"] = { 35.8, 60.4, DESOLACE },
						}),
						i(17764, {	-- Gem of the Fourth Kahn
							["description"] = "Maraudos is located inside the purple path of Maraudon, wandering not too far away from the entrance.\n\nTo attack him, use the Amulet of Spirits that you got from The Nameless Prophet.",
							["crs"] = {
								12242,	-- Spirit of Maraudos <The Fourth Kahn>
								13739,	-- Maraudos <The Fourth Kahn>
							},
						}),
						i(17765, {	-- Gem of the Fifth Kahn
							["description"] = "Veng is located inside the orange path of Maraudon, wandering by the end of the path.\n\nTo attack him, use the Amulet of Spirits that you got from The Nameless Prophet.",
							["crs"] = {
								12243,	-- Spirit of Veng <The Fifth Kahn>
								13738,	-- Veng <The Fifth Kahn>
							},
						}),
						-- #endif
						i(17774, {	-- Mark of the Chosen
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7046, {	-- The Scepter of Celebras
					["qg"] = 13716,	-- Celebras the Redeemed
					["sourceQuest"] = 7044,	-- Legends of Maraudon
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 41,
					["groups"] = {
						i(17191, {	-- Scepter of Celebras
							["description"] = "This item is used to open the portal to the Inner Falls just after Celebras the Cursed in Maraudon.",
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7028, {	-- Twisted Evils
					["qg"] = 13656,	-- Willow <Twilight's Hammer>
					["coord"] = { 62.2, 39.6, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 41,
					["groups"] = {
						objective(1, {	-- 0/15 Theradric Crystal Carving
							["provider"] = { "i", 17684 },	-- Theradric Crystal Carving
						}),
						i(17776, {	-- Sprightring Helm
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17779, {	-- Hulkstone Pauldrons
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17775, {	-- Acumen Robes
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17777, {	-- Relentless Chain
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				{	-- Vyletongue Corruption
					["allianceQuestData"] = q(7041, {	-- Vyletongue Corruption (A)
						["qg"] = 11715,	-- Talendria
						["coord"] = { 68.4, 8.8, DESOLACE },
					}),
					["hordeQuestData"] = q(7029, {	-- Vyletongue Corruption (H)
						["qg"] = 11823,	-- Vark Battlescar
						["coord"] = { 23.2, 70.3, DESOLACE },
					}),
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 41,
					["groups"] = {
						-- #if BEFORE 4.0.3
						objective(1, {	-- 0/8 Vylestem Vines healed
							["provider"] = { "n", 13696 },	-- Noxxious Scion
							["cost"] = { { "i", 17696, 1 } },	-- Filled Cerulean Vial
							["description"] = "Use the Filled Cerulean Vial on the vines and then kill the Scions that are spawned.",
						}),
						i(17696, {	-- Filled Cerulean Vial
							["description"] = "Stand in the Orange Pool of water just outside the Orange Path of Maraudon and use this item to create the filled vial.",
							["coord"] = { 38, 58, DESOLACE },
							["cost"] = { { "i", 17693, 1 } },	-- Coated Cerulean Vial
						}),
						-- #endif
						i(17770, {	-- Branchclaw Gauntlets
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17778, {	-- Sagebrush Girdle
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17768, {	-- Woodseed Hoop
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				},
			}),
			n(ZONE_DROPS, {
				i(17684),	-- Theradric Crystal Carving
			}),
			n(FOULSPORE_CAVERN, {
				["coord"] = { 78.0, 55.7, MARAUDON_OUTDOOR_LEVEL1 },	-- Maraudon [Orange], The Wicked Grotto [Desolace]
				["groups"] = {
					e(423, {	-- Noxxion
						["creatureID"] = 13282,
						["groups"] = {
							i(17702),	-- Celebrian Rod
							i(17745),	-- Noxious Shooter
							i(151450, {	-- Chainmail of the Noxious Hollow
								["timeline"] = { ADDED_7_3_0 },
							}),
							i(17746),	-- Noxxion's Shackles
							i(151449, {	-- Fungal-Spore Cinch
								["timeline"] = { ADDED_7_3_0 },
							}),
							i(17744),	-- Heart of Noxxion
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(221281)),	-- Ace of Plagues
							-- #endif
						},
					}),
					e(424, {	-- Razorlash
						["creatureID"] = 12258,
						["groups"] = {
							i(132562, {	-- Leaf-Scale Pauldrons
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(17749),	-- Phytoskin Spaulders
							i(151451, {	-- Strip-Thorn Gauntlets
								["timeline"] = { ADDED_7_3_0 },
							}),
							i(17750),	-- Chloromesh Girdle
							i(17751),	-- Brusslehide Leggings
							i(132563, {	-- Chloro-Stained Britches
								["timeline"] = { ADDED_7_0_3 },
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223543)),	-- Vinerot Sandals
							i(17748, {	-- Vinerot Sandals
								["timeline"] = { REMOVED_1_15_2 },
							}),
							-- #else
							i(17748),	-- Vinerot Sandals
							-- #endif
						},
					}),
				},
			}),
			n(WICKED_GROTTO, {
				["coord"] = { 51.7, 24.7, MARAUDON_OUTDOOR_LEVEL2 },	-- Maraudon [Purple], Foulspore Cavern [Desolace]
				["groups"] = {
					-- #if AFTER 4.0.3
					e(425, {	-- Tinkerer Gizlock
						["creatureID"] = 13601,
						["groups"] = {
							i(17719),	-- Inventor's Focal Sword
							i(17717),	-- Megashot Rifle
							i(17718),	-- Gizlock's Hypertech Buckler
							i(151446, {	-- Tinkerer's Pinkie Cylinder
								["timeline"] = { ADDED_7_3_0 },
							}),
						},
					}),
					-- #endif
					e(427, {	-- Lord Vyletongue
						["creatureID"] = 12236,
						["groups"] = {
							i(17703),	-- Celebrian Diamond
							i(17752),	-- Satyr's Lash
							i(151448, {	-- Lord Vyletongue's Satyrplate
								["timeline"] = { ADDED_7_3_0 },
							}),
							i(151447, {	-- Zaetar-kin Wristwraps
								["timeline"] = { ADDED_7_3_0 },
							}),
							i(17755),	-- Satyrmane Sash
							i(17754),	-- Infernal Trickster Leggings
						},
					}),
					n(12237, {	-- Meshlok the Harvester
						["description"] = "This is a Rare Creature and, as such, is not always present.",
						["coord"] = { 24.0, 75.0, MARAUDON },
						["groups"] = {
							i(17741),	-- Nature's Embrace
							i(17742),	-- Fungus Shroud Armor
							i(17767),	-- Bloomsprout Headpiece
						},
					}),
				},
			}),
			n(MARAUDON_PORTAL, {
				["coord"] = { 44.5, 77.1, MARAUDON_OUTDOOR_LEVEL2 },	-- Maraudon [Falls], Foulspore Cavern [Desolace]
				-- #if BEFORE 3.0.8
				["sourceQuest"] = 7046,	-- The Scepter of Celebras
				["cost"] = { { "i", 17191, 1 } },	-- Scepter of Celebras
				-- #endif
				["groups"] = {
					e(428, {	-- Celebras the Cursed
						["creatureID"] = 12225,
						["groups"] = {
							i(17738),	-- Claw of Celebras
							i(132561, {	-- Corrupted Keeper's Band
								["timeline"] = { ADDED_7_0_3 },
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223525)),	-- Soothsayer's Headdress
							i(17740, {	-- Soothsayer's Headdress
								["timeline"] = { REMOVED_1_15_2 },
							}),
							-- #else
							i(17740),	-- Soothsayer's Headdress
							-- #endif
							i(17739),	-- Grovekeeper's Drape
						},
					}),
					e(429, {	-- Landslide
						["creatureID"] = 12203,
						["groups"] = {
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223524)),	-- Fist of Stone
							applyclassicphase(SOD_PHASE_THREE, i(223523)),	-- Cloud Stone
							applyclassicphase(SOD_PHASE_THREE, i(223522)),	-- Helm of the Mountain
							i(17943, {	-- Fist of Stone
								["timeline"] = { REMOVED_1_15_2 },
							}),
							i(17737, {	-- Cloud Stone
								["timeline"] = { REMOVED_1_15_2 },
							}),
							i(17734, {	-- Helm of the Mountain
								["timeline"] = { REMOVED_1_15_2 },
							}),
							-- #else
							i(17943),	-- Fist of Stone
							i(17737),	-- Cloud Stone
							i(17734),	-- Helm of the Mountain
							-- #endif
							i(17736),	-- Rockgrip Gauntlets
							-- #if AFTER MOP
							-- I'm actually unsure of when this item moved to Landslide.
							i(17713),	-- Blackstone Ring
							-- #endif
						},
					}),
					-- #if BEFORE 4.0.3
					e(425, {	-- Tinkerer Gizlock
						["creatureID"] = 13601,
						["groups"] = {
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223520)),	-- Inventor's Focal Sword
							applyclassicphase(SOD_PHASE_THREE, i(223542)),	-- Megashot Rifle
							applyclassicphase(SOD_PHASE_THREE, i(223545)),	-- Gizlock's Hypertech Buckler
							i(17719, {	-- Inventor's Focal Sword
								["timeline"] = { REMOVED_1_15_2 },
							}),
							i(17717, {	-- Megashot Rifle
								["timeline"] = { REMOVED_1_15_2 },
							}),
							i(17718, {	-- Gizlock's Hypertech Buckler
								["timeline"] = { REMOVED_1_15_2 },
							}),
							-- #else
							i(17719),	-- Inventor's Focal Sword
							i(17717),	-- Megashot Rifle
							i(17718),	-- Gizlock's Hypertech Buckler
							-- #endif
							i(151446, {	-- Tinkerer's Pinkie Cylinder
								["timeline"] = { ADDED_7_3_0 },
							}),
						},
					}),
					-- #endif
					e(430, {	-- Rotgrip
						["creatureID"] = 13596,
						["modelScale"] = 1.5,
						["groups"] = {
							i(17730),	-- Gatorbite Axe
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223521)),	-- Rotgrip Mantle
							i(17732, {	-- Rotgrip Mantle
								["timeline"] = { REMOVED_1_15_2 },
							}),
							-- #else
							i(17732),	-- Rotgrip Mantle
							-- #endif
							i(151452, {	-- Crocolisk Wrestler's Waistguard
								["timeline"] = { ADDED_7_3_0 },
							}),
							i(17728),	-- Albino Crocscale Boots
							i(132564, {	-- Albino Crocscale Waders
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					e(431, {	-- Princess Theradras
						["creatureID"] = 12201,
						["modelScale"] = 2,
						["groups"] = {
							ach(640, {	-- Maraudon
								-- #if BEFORE WRATH
								["sourceQuests"] = {
									7065,	-- Corruption of Earth and Seed
									7064,	-- Corruption of Earth and Seed
								},
								-- #endif
							}),
							ach(5049, {	-- Maraudon Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223964)),	-- Blade of Eternal Darkness
							applyclassicphase(SOD_PHASE_THREE, i(223518)),	-- Charstone Dirk
							applyclassicphase(SOD_PHASE_THREE, i(221780)),	-- Princess Theradras' Scepter
							applyclassicphase(SOD_PHASE_THREE, i(223519)),	-- Eye of Theradras
							applyclassicphase(SOD_PHASE_THREE, i(223541)),	-- Gemshard Heart
							i(17780, {	-- Blade of Eternal Darkness
								["timeline"] = { REMOVED_1_15_2 },
							}),
							i(17710, {	-- Charstone Dirk
								["timeline"] = { REMOVED_1_15_2 },
							}),
							i(17766, {	-- Princess Theradras' Scepter
								["timeline"] = { REMOVED_1_15_2 },
							}),
							i(17715, {	-- Eye of Theradras
								["timeline"] = { REMOVED_1_15_2 },
							}),
							i(17707, {	-- Gemshard Heart
								["timeline"] = { REMOVED_1_15_2 },
							}),
							-- #else
							i(17780),	-- Blade of Eternal Darkness
							i(17710),	-- Charstone Dirk
							i(17766),	-- Princess Theradras' Scepter
							i(17715),	-- Eye of Theradras
							i(17707),	-- Gemshard Heart
							-- #endif
							i(17714),	-- Bracers of the Stone Princess
							i(17711),	-- Elemental Rockridge Leggings
							i(17713),	-- Blackstone Ring
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(221271)),	-- Ace of Wilds
							-- #endif
						},
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_THREE, n(223264, {	-- Delirious Ancient
						["description"] = "Spawns after killing Princess and the surrounding trash.",
						["cost"] = {{ "i", 221418, 1 }},	-- Agamaggan's Roar
						["groups"] = {
							i(221271),	-- Ace of Wilds
							i(221262),	-- Wild Offering
						},
					})),
					-- #endif
				},
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(232, {
		q(35885),	-- Maraudon (Wicked Grotto) Reward Quest - Normal completion
		q(35886),	-- Maraudon (Foulspore Cavern) Reward Quest - Normal completion
		q(35887),	-- Maraudon (Earth Song Falls) Reward Quest - Normal completion
		q(35888),	-- Maraudon (Everything) Reward Quest
		q(35889),	-- Maraudon (Bonus) Reward Quest
	}),
})));