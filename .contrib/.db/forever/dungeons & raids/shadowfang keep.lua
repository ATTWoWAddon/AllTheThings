-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, {
	inst(64, {	-- Shadowfang Keep
		["lore"] = "During the Third War, the wizards of the Kirin Tor battled against the undead armies of the Scourge. When the wizards of Dalaran died in battle, they would rise soon after - adding their former might to the growing Scourge. Frustrated by their lack of progress (and against the advice of his peers) the Archmage, Arugal elected to summon extra-dimensional entities to bolster Dalaran's diminishing ranks. Arugal's summoning brought the ravenous worgen into the world of Azeroth. The feral wolf-men slaughtered not only the Scourge, but quickly turned on the wizards themselves. The worgen sieged the keep of the noble, Baron Silverlaine. Situated above the tiny hamlet of Pyrewood, the keep quickly fell into shadow and ruin. Driven mad with guilt, Arugal adopted the worgen as his children and retreated to the newly dubbed 'Shadowfang Keep'. It's said he still resides there, protected by his massive pet, Fenrus - and haunted by the vengeful ghost of Baron Silverlaine.",
		["icon"] = 136357,
		["zone-text-areaID"] = 209,	-- Shadowfang Keep
		["coord"] = { 36.6, 65.6, MAP.SILVERPINE_FOREST },
		["maps"] = { MAP.SHADOWFANG_KEEP },
		["lvl"] = 14,
		["groups"] = {
			n(QUESTS, {
				q(1014, {	-- Arugal Must Die
					["qg"] = 1938,	-- Dalar Dawnweaver
					["coord"] = { 44.2, 39.8, MAP.SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Arugal
							["provider"] = { "i", 5442 },	-- Head of Arugal
						}),
						i(6414),	-- Seal of Sylvanas
					},
				}),
				q(1098, {	-- Deathstalkers in Shadowfang
					["qg"] = 1952,	-- High Executor Hadrec
					["coord"] = { 43.4, 40.8, MAP.SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						i(3324),	-- Ghostly Mantle
					},
				}),
				q(1013, {	-- The Book of Ur
					["qg"] = 2934,	-- Keeper Bel'dugur
					["coord"] = { 54.0, 54.6, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 The Book of Ur
							["providers"] = {
								{ "i", 6283 },	-- The Book of Ur
								{ "o", 36738 },	-- The Book of Ur
							},
							["description"] = "Can be found on a bookshelf in the circular room with Fenrus.",
						}),
						i(4534),	-- Steel-Clasped Bracers
						i(6335),	-- Grizzled Boots
					},
				}),
				q(1740, {	-- The Orb of Soran'ruk
					["qg"] = 6247,	-- Doan Karhan
					["coord"] = { 49.2, 57.2, MAP.THE_BARRENS },
					["maps"] = { MAP.BLACKFATHOM_DEEPS },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/3 Soran'ruk Fragment
							["provider"] = { "i", 6914 },	-- Soran'ruk Fragment
							["cr"] = 4809,	-- Twilight Acolyte
						}),
						objective(2, {	-- 0/1 Large Soran'ruk Fragment
							["provider"] = { "i", 6915 },	-- Large Soran'ruk Fragment
							["cr"] = 3855,	-- Shadowfang Darksoul
						}),
						i(6898),	-- Orb of Soran'ruk
						i(15109),	-- Staff of Soran'ruk
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(1935),	-- Assassin's Blade
				i(3194),	-- Black Malice
				i(2205, {	-- Duskbringer
					["crs"] = {
						3863,	-- Lupine Horror
						3857,	-- Shadowfang Glutton
						3859,	-- Shadowfang Ragetooth
						2529,	-- Son of Arugal
						3873,	-- Tormented Officer
						3877,	-- Wailing Guardsman
					},
				}),
				i(1483),	-- Face Smasher
				i(1489, {	-- Gloomshroud Armor
					["crs"] = {
						3863,	-- Lupine Horror
						3859,	-- Shadowfang Ragetooth
						2529,	-- Son of Arugal
						3873,	-- Tormented Officer
						3866,	-- Vile Bat
						3877,	-- Wailing Guardsman
					},
				}),
				i(2807),	-- Guillotine Axe
				i(1974),	-- Mindthrust Bracers
				i(2292, {	-- Necrology Robes
					["crs"] = {
						3863,	-- Lupine Horror
						3859,	-- Shadowfang Ragetooth
						2529,	-- Son of Arugal
						3873,	-- Tormented Officer
						3877,	-- Wailing Guardsman
					},
				}),
				i(1318),	-- Night Reaver
				i(1482),	-- Shadowfang
				i(1484),	-- Witching Stave
			}),
			n(3914, {	-- Rethilgore <The Cell Keeper>
				i(273456, {	-- Cell Keeper's Claws
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
				i(5254),	-- Rugged Spaulders
				i(273457, {	-- Sorcerer Collar
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(3864, {	-- Fel Steed/Shadow Charger
				i(6341),	-- Eerie Stable Lantern
				i(932),	-- Fel Steed Saddlebags
			}),
			n(3886, {	-- Razorclaw the Butcher
				i(1292),	-- Butcher's Cleaver
				i(6633),	-- Butcher's Slicer
				i(6226),	-- Bloody Apron
			}),
			e(97, {	-- Baron Silverlaine
				["creatureID"] = 3887,
				["groups"] = {
					i(6323),	-- Baron's Scepter
					i(6321),	-- Silverlaine's Family Seal
					i(273637, {	-- Blade of Silverlaine
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			e(98, {	-- Commander Springvale
				["creatureID"] = 4278,
				["groups"] = {
					i(3191),	-- Arced War Axe
					i(6320),	-- Commander's Crest
					i(6341),	-- Eerie Stable Lantern
					i(273643, {	-- Worgenbane Talisman
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			n(3872, {	-- Deathsworn Captain
				["description"] = "This is a Rare Creature and, as such, is not always present.\nCan be found in place of a Tormented Officer patrolling the outdoor wall section just after the boss Commander Springvale.\nThe Rare can be seen at the entrance of the Dungeon via the /tar command..",
				["groups"] = {
					i(6641),	-- Haunting Blade
					i(6642),	-- Phantom Armor
				},
			}),
			n(4279, {	-- Odo the Blindwatcher
				i(6318),	-- Odo's Ley Staff
				i(6319),	-- Girdle of the Blindwatcher
				i(273645, {	-- Blindwatcher's Sight
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(4274, {	-- Fenrus the Devourer
				i(3230),	-- Black Wolf Bracers
				i(6340),	-- Fenrus' Hide
				i(273646, {	-- Half-Eaten Boots
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(4627, {	-- Arugal's Voidwalker
				i(5943),	-- Rift Bracers
			}),
			n(3927, {	-- Wolf Master Nandos
				i(3748),	-- Feline Mantle
				i(6314),	-- Wolfmaster Cape
				i(273647, {	-- Worgpelt Leggings
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(4275, {	-- Archmage Arugal
				i(5442),	-- Head of Arugal
				i(6220),	-- Meteor Shard
				i(6324),	-- Robes of Arugal
				i(6392),	-- Belt of Arugal
			}),
		},
	}),
});
