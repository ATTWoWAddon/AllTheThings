-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local MARAUDON_PORTAL = createHeader({
	readable = "Maraudon Portal",
	icon = 135743,
	text = {
		en = WOWAPI_GetSpellName(21127),
	},
});
local FOULSPORE_CAVERN = createHeader({
	readable = "Foulspore Cavern",
	icon = 134116,
	text = {
		en = [[~DUNGEON_FLOOR_DESOLACE22.." (Orange Path)"]],
	},
});
local WICKED_GROTTO = createHeader({
	readable = "The Wicked Grotto",
	icon = 134075,
	text = {
		en = [[~DUNGEON_FLOOR_DESOLACE21.." (Purple Path)"]],
	},
});

instanceroot(232, {	-- Maraudon
	lore = "Protected by the fierce Maraudine centaur, Maraudon is one of the most sacred sites within Desolace. The great temple/cavern is the burial place of Zaetar, one of two immortal sons born to the demigod, Cenarius. Legend holds that Zaetar and the earth elemental princess, Theradras, sired the misbegotten centaur race. It is said that upon their emergence, the barbaric centaur turned on their father and killed him. Some believe that Theradras, in her grief, trapped Zaetar's spirit within the winding cavern - used its energies for some malign purpose. The subterranean tunnels are populated by the vicious, long-dead ghosts of the Centaur Khans, as well as Theradras' own raging, elemental minions.",
	icon = 136345,
	zoneTextAreaID = 2100,	-- Maraudon
	mapID = MAP.MARAUDON,
	coord = { 35.7, 55.5, MAP.DESOLACE },
	lvl = 41,
	groups = {
		n(QUESTS, {
			{	-- Corruption of Earth and Seed
				allianceQuestData = q(7065, {	-- Corruption of Earth and Seed (A)
					qg = 13698,	-- Keeper Marandis
					coord = { 63.8, 10.6, MAP.DESOLACE },
				}),
				hordeQuestData = q(7064, {	-- Corruption of Earth and Seed (H)
					qg = 13699,	-- Selendra
					coord = { 26.9, 77.7, MAP.DESOLACE },
				}),
				lvl = 45,
				groups = {
					objective(1, {	-- 0/1 Princess Theradras slain
						provider = { "n", 12201 },	-- Princess Theradras
					}),
					i(17705),	-- Thrash Blade
					i(17743),	-- Resurgence Rod
					i(17753),	-- Verdant Keeper's Aim
				},
			},
			q(7044, {	-- Legends of Maraudon
				qg = 13697,	-- Cavindra
				coord = { 32.1, 64.0, MAP.DESOLACE },
				lvl = 41,
				groups = {
					objective(1, {	-- 0/1 Celebrian Diamond
						provider = { "i", 17703 },	-- Celebrian Diamond
					}),
					objective(2, {	-- 0/1 Celebrian Rod
						provider = { "i", 17702 },	-- Celebrian Rod
					}),
				},
			}),
			q(7066, {	-- Seed of Life
				description = "This quest becomes available after you defeat Princess Theradras.",
				providers = {
					{ "n", 12238 },	-- Zaetar's Spirit
					{ "i", 17760 },	-- Seed of Life
				},
				maps = { MAP.MOONGLADE },
				lvl = 39,
			}),
			{	-- Shadowshard Fragments
				allianceQuestData = q(7070, {	-- Shadowshard Fragments (A)
					qg = 4967,	-- Archmage Tervosh
					coord = { 66.4, 49.3, MAP.DUSTWALLOW_MARSH },
				}),
				hordeQuestData = q(7068, {	-- Shadowshard Fragments (H)
					qg = 7311,	-- Uthel'nay <Mage Trainer>
					coord = { 39.2, 86.3, MAP.ORGRIMMAR },
				}),
				lvl = 39,
				groups = {
					objective(1, {	-- 0/10 Shadowshard Fragment
						provider = { "i", 17756 },	-- Shadowshard Fragment
						crs = {
							11777,	-- Shadowshard Rumbler
							11778,	-- Shadowshard Smasher
						},
					}),
					i(17773),	-- Prodigious Shadowshard Pendant
					i(17772),	-- Zealous Shadowshard Pendant
				},
			},
			q(7067, {	-- The Pariah's Instructions
				providers = {
					{ "n", 13717 },	-- Centaur Pariah
					{ "i", 17781 },	-- The Pariah's Instructions
				},
				coord = { 50.5, 86.7, MAP.DESOLACE },
				lvl = 39,
				groups = {
					objective(1, {	-- 0/1 Amulet of Union
						provider = { "i", 17758 },	-- Amulet of Union
						cost = {
							{ "i", 17757, 1 },	-- Amulet of Spirits
							{ "i", 17761, 1 },	-- Gem of the First Khan
							{ "i", 17762, 1 },	-- Gem of the Second Kahn
							{ "i", 17763, 1 },	-- Gem of the Third Kahn
							{ "i", 17764, 1 },	-- Gem of the Fourth Kahn
							{ "i", 17765, 1 },	-- Gem of the Fifth Kahn
						},
					}),
					i(17757, {	-- Amulet of Spirits
						coord = { 28.1, 62.4, MAP.DESOLACE },
						cr = 13718,	-- The Nameless Prophet
					}),
					i(17761, {	-- Gem of the First Khan
						description = "Kolk is standing by the little room where you create the portal for Inner Maraudon, in the middle part.\n\nTo attack him, use the Amulet of Spirits that you got from The Nameless Prophet.",
						coord = { 29.7, 60.5, MAP.DESOLACE },
						crs = {
							12240,	-- Spirit of Kolk <The First Kahn>
							13742,	-- Kolk <The First Kahn>
						},
					}),
					i(17762, {	-- Gem of the Second Kahn
						description = "Gelk is located outside the portal of the purple path, hanging with snakes and rock elementals. He is almost just below the portal (use the stairs to get to him).\n\nTo attack him, use the Amulet of Spirits that you got from The Nameless Prophet.",
						coord = { 29.4, 56.9, MAP.DESOLACE },
						crs = {
							12239,	-- Spirit of Gelk <The Second Kahn>
							13741,	-- Gelk <The Second Kahn>
						},
					}),
					i(17763, {	-- Gem of the Third Kahn
						description = "Magra is located outside the portal of the orange path. He is in the stairs area.\n\nTo attack him, use the Amulet of Spirits that you got from The Nameless Prophet.",
						coord = { 35.8, 60.4, MAP.DESOLACE },
						crs = {
							12241,	-- Spirit of Magra <The Third Kahn>
							13740,	-- Magra <The Third Kahn>
						},
					}),
					i(17764, {	-- Gem of the Fourth Kahn
						description = "Maraudos is located inside the purple path of Maraudon, wandering not too far away from the entrance.\n\nTo attack him, use the Amulet of Spirits that you got from The Nameless Prophet.",
						crs = {
							12242,	-- Spirit of Maraudos <The Fourth Kahn>
							13739,	-- Maraudos <The Fourth Kahn>
						},
					}),
					i(17765, {	-- Gem of the Fifth Kahn
						description = "Veng is located inside the orange path of Maraudon, wandering by the end of the path.\n\nTo attack him, use the Amulet of Spirits that you got from The Nameless Prophet.",
						crs = {
							12243,	-- Spirit of Veng <The Fifth Kahn>
							13738,	-- Veng <The Fifth Kahn>
						},
					}),
					i(17774),	-- Mark of the Chosen
				},
			}),
			q(7046, {	-- The Scepter of Celebras
				sourceQuest = 7044,	-- Legends of Maraudon
				qg = 13716,	-- Celebras the Redeemed
				lvl = 41,
				groups = {
					i(17191, {	-- Scepter of Celebras
						description = "This item is used to open the portal to the Inner Falls just after Celebras the Cursed in Maraudon.",
					}),
				},
			}),
			q(7028, {	-- Twisted Evils
				qg = 13656,	-- Willow <Twilight's Hammer>
				coord = { 62.2, 39.6, MAP.DESOLACE },
				lvl = 41,
				groups = {
					objective(1, {	-- 0/15 Theradric Crystal Carving
						provider = { "i", 17684 },	-- Theradric Crystal Carving
					}),
					i(17776),	-- Sprightring Helm
					i(17779),	-- Hulkstone Pauldrons
					i(17775),	-- Acumen Robes
					i(17777),	-- Relentless Chain
				},
			}),
			{	-- Vyletongue Corruption
				allianceQuestData = q(7041, {	-- Vyletongue Corruption (A)
					qg = 11715,	-- Talendria
					coord = { 68.4, 8.8, MAP.DESOLACE },
				}),
				hordeQuestData = q(7029, {	-- Vyletongue Corruption (H)
					qg = 11823,	-- Vark Battlescar
					coord = { 23.2, 70.3, MAP.DESOLACE },
				}),
				lvl = 41,
				groups = {
					objective(1, {	-- 0/8 Vylestem Vines healed
						provider = { "n", 13696 },	-- Noxxious Scion
						cost = { { "i", 17696, 1 } },	-- Filled Cerulean Vial
						description = "Use the Filled Cerulean Vial on the vines and then kill the Scions that are spawned.",
					}),
					i(17696, {	-- Filled Cerulean Vial
						description = "Stand in the Orange Pool of water just outside the Orange Path of Maraudon and use this item to create the filled vial.",
						coord = { 38.0, 58.0, MAP.DESOLACE },
						cost = { { "i", 17693, 1 } },	-- Coated Cerulean Vial
					}),
					i(17770),	-- Branchclaw Gauntlets
					i(17778),	-- Sagebrush Girdle
					i(17768),	-- Woodseed Hoop
				},
			},
		}),
		n(ZONE_DROPS, {
			i(17684),	-- Theradric Crystal Carving
		}),
		n(FOULSPORE_CAVERN, {
			e(423, {	-- Noxxion
				creatureID = 13282,
				groups = {
					i(17702),	-- Celebrian Rod
					i(17745),	-- Noxious Shooter
					i(17746),	-- Noxxion's Shackles
					i(17744),	-- Heart of Noxxion
				},
			}),
			e(424, {	-- Razorlash
				creatureID = 12258,
				groups = {
					i(17749),	-- Phytoskin Spaulders
					i(17750),	-- Chloromesh Girdle
					i(17751),	-- Brusslehide Leggings
					i(17748),	-- Vinerot Sandals
				},
			}),
		}),
		n(WICKED_GROTTO, {
			e(427, {	-- Lord Vyletongue
				creatureID = 12236,
				groups = {
					i(17703),	-- Celebrian Diamond
					i(17752),	-- Satyr's Lash
					i(17755),	-- Satyrmane Sash
					i(17754),	-- Infernal Trickster Leggings
				},
			}),
			n(12237, {	-- Meshlok the Harvester
				description = "This is a Rare Creature and, as such, is not always present.",
				coord = { 24.0, 75.0, MAP.MARAUDON },
				groups = {
					i(17741),	-- Nature's Embrace
					i(17742),	-- Fungus Shroud Armor
					i(17767),	-- Bloomsprout Headpiece
				},
			}),
		}),
		n(MARAUDON_PORTAL, {
			sourceQuest = 7046,	-- The Scepter of Celebras
			cost = { { "i", 17191, 1 } },	-- Scepter of Celebras
			groups = {
				e(428, {	-- Celebras the Cursed
					creatureID = 12225,
					groups = {
						i(17738),	-- Claw of Celebras
						i(17740),	-- Soothsayer's Headdress
						i(17739),	-- Grovekeeper's Drape
					},
				}),
				e(429, {	-- Landslide
					creatureID = 12203,
					groups = {
						i(17943),	-- Fist of Stone
						i(17737),	-- Cloud Stone
						i(17734),	-- Helm of the Mountain
						i(17736),	-- Rockgrip Gauntlets
					},
				}),
				e(425, {	-- Tinkerer Gizlock
					creatureID = 13601,
					groups = {
						i(17719),	-- Inventor's Focal Sword
						i(17717),	-- Megashot Rifle
						i(17718),	-- Gizlock's Hypertech Buckler
					},
				}),
				e(430, {	-- Rotgrip
					creatureID = 13596,
					modelScale = 1.5,
					groups = {
						i(17730),	-- Gatorbite Axe
						i(17732),	-- Rotgrip Mantle
						i(17728),	-- Albino Crocscale Boots
					},
				}),
				e(431, {	-- Princess Theradras
					creatureID = 12201,
					modelScale = 2,
					groups = {
						i(17780),	-- Blade of Eternal Darkness
						i(17710),	-- Charstone Dirk
						i(17766),	-- Princess Theradras' Scepter
						i(17715),	-- Eye of Theradras
						i(17707),	-- Gemshard Heart
						i(17714),	-- Bracers of the Stone Princess
						i(17711),	-- Elemental Rockridge Leggings
						i(17713),	-- Blackstone Ring
					},
				}),
			},
		}),
	},
});