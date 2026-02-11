-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CATA, bubbleDown({ ["timeline"] = ADDED_4_0_3 }, {
	applyclassicphase(CATA_PHASE_ONE, inst(66, {	-- Blackrock Caverns
		["mapID"] = 283,
		["coord"] = { 71.77, 52.98, BLACKROCK_MOUNTAIN_LEVEL2 },
		["maps"] = { 284 },
		["groups"] = {
			n(QUESTS, {
				q(28741, {	-- Ascendant Lord Obsidius
					["sourceQuest"] = 28738,	-- The Twilight Forge
					["qg"] = 49476,	-- Pip Quickwit
					["groups"] = {
						i(66886),	-- Acid-Eaten Vest
						i(66885),	-- Diamond-Studden Helm
						i(66884),	-- Raz's Breastplate
					},
				}),
				q(28740, {	-- Do My Eyes Deceive Me?
					["sourceQuest"] = 28738,	-- The Twilight Forge
					["qg"] = 49476,	-- Pip Quickwit
					["groups"] = {
						i(66889),	-- Beauty's Cootie-Ridden Blankie
						i(66887),	-- Beauty Jr.'s Collar
						i(66890),	-- Auto-Decoding Band
					},
				}),
				q(28738, {	-- The Twilight Forge
					["sourceQuest"] = 28737,	-- What Is This Place?
					["qg"] = 49476,	-- Pip Quickwit
				}),
				q(28732, {	-- This Can Only Mean One Thing...
					["qg"] = 49444,	-- Pip Quickwit
					["coord"] = { 42.6, 28.1, MOUNT_HYJAL },
					["isBreadcrumb"] = true,
					["groups"] = {
						objective(1, {	-- Arrive at Blackrock Caverns.
							["provider"] = { "o", 207327 },	-- Pip's Mole Machine
						}),
					},
				}),
				q(28735, {	-- To the Chamber of Incineration!
					["sourceQuest"] = 28732,	-- This Can Only Mean One Thing...
					["qg"] = 49476,	-- Pip Quickwit
				}),
				q(28737, {	-- What Is This Place?
					["sourceQuest"] = 28735,	-- To the Chamber of Incineration!
					["qg"] = 49476,	-- Pip Quickwit
				}),
				q(28804, {	-- Dark Iron Contingency Plan
					["provider"] = { "o", 207412 },	-- Stone Tablet
					["requireSkill"] = ARCHAEOLOGY,
					["isRepeatable"] = true,
				}),
			}),
			n(ZONE_DROPS, {
				i(55791, {	-- Acanthia's Lost Pendant
					["crs"] = {
						40084,	-- Bellows Slave
						40013,	-- Buster
						39994,	-- Conflagration
						39982,	-- Crazed Mage
						40023,	-- Defiled Earth Rager
						39987,	-- Evolved Twilight Zealot
						40021,	-- Incendiary Spark
						40008,	-- Lucky
						39985,	-- Mad Prisoner
						40004,	-- Quicksilver
						40015,	-- Runty
						40017,	-- Twilight Element Warden
						39708,	-- Twilight Flame Caller
						40019,	-- Twilight Obsidian Borer
						39980,	-- Twilight Sadist
						39978,	-- Twilight Torturer
						39990,	-- Twilight Zealot
						50284,	-- Twilight Zealot
					},
				}),
				i(55789, {	-- Berto's Staff
					["crs"] = {
						40084,	-- Bellows Slave
						40013,	-- Buster
						39994,	-- Conflagration
						39982,	-- Crazed Mage
						40023,	-- Defiled Earth Rager
						39987,	-- Evolved Twilight Zealot
						40021,	-- Incendiary Spark
						40008,	-- Lucky
						39985,	-- Mad Prisoner
						40004,	-- Quicksilver
						40015,	-- Runty
						40017,	-- Twilight Element Warden
						39708,	-- Twilight Flame Caller
						40019,	-- Twilight Obsidian Borer
						39980,	-- Twilight Sadist
						39978,	-- Twilight Torturer
						39990,	-- Twilight Zealot
						50284,	-- Twilight Zealot
					},
				}),
				i(55790, {	-- Toxidunk Dagger
					["crs"] = {
						40084,	-- Bellows Slave
						40013,	-- Buster
						39994,	-- Conflagration
						39982,	-- Crazed Mage
						40023,	-- Defiled Earth Rager
						39987,	-- Evolved Twilight Zealot
						40021,	-- Incendiary Spark
						40008,	-- Lucky
						39985,	-- Mad Prisoner
						40004,	-- Quicksilver
						40015,	-- Runty
						40017,	-- Twilight Element Warden
						39708,	-- Twilight Flame Caller
						40019,	-- Twilight Obsidian Borer
						39980,	-- Twilight Sadist
						39978,	-- Twilight Torturer
						39990,	-- Twilight Zealot
						50284,	-- Twilight Zealot
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, bubbleDownSelf({ ["timeline"] = REMOVED_7_3_5 }, {
				e(105, {	-- Rom'ogg Bonecrusher
					["crs"] = { 39665 },	-- Rom'ogg Bonecrusher
					["groups"] = {
						i(55278),	-- Inquisition Robes
						i(55279),	-- Manacles of Pain
						i(55778),	-- Shield of the Iron Maiden
						i(55776),	-- Skullcracker Ring
						i(55777),	-- Torturer's Mercy
					},
				}),
				e(106, {	-- Corla, Herald of Twilight
					["crs"] = { 39679 },	-- Corla, Herald of Twilight
					["groups"] = {
						i(55264),	-- Armbands of Change
						i(55267),	-- Corla's Baton
						i(55266),	-- Grace of the Herald
						i(55263),	-- Renouncer's Cowl
						i(55265),	-- Signet of Transformation
					},
				}),
				e(107, {	-- Karsh Steelbender
					["crs"] = { 39698 },	-- Karsh Steelbender
					["groups"] = {
						i(55268),	-- Bracers of Cooled Anger
						i(55270),	-- Burned Gatherings
						i(55269),	-- Heat Wave Leggings
						i(55271),	-- Quicksilver Amulet
						i(55272),	-- Steelbender's Masterpiece
					},
				}),
				e(108, {	-- Beauty
					["crs"] = { 39700 },	-- Beauty
					["groups"] = {
						i(55273),	-- Beauty's Chew Toy
						i(55274),	-- Beauty's Plate
						i(55275),	-- Beauty's Silken Ribbon
						i(55277),	-- Beauty's Favorite Bone
						i(55276),	-- Kibble
					},
				}),
				e(109, {	-- Ascendent Lord Obsidius
					["crs"] = { 39705 },	-- Ascendent Lord Obsidius
					["groups"] = {
						-- #if BEFORE 7.3.5
						ach(4833),	-- Blackrock Caverns
						-- #endif
						i(55782),	-- Amber Messenger
						i(55781),	-- Carrier Wave Pendant
						i(55784),	-- Clutches of Dying Light
						i(55788),	-- Crepuscular Shield
						i(55786),	-- Kyrstel Mantle
						i(55779),	-- Raz's Pauldrons
						i(55780),	-- Twitching Shadows
						i(55785),	-- Willowy Crown
						i(55787),	-- Witching Hourglass
						-- #if BEFORE MOP
						i(55783, {	-- Sandshift Relic
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
			})),
			-- #if BEFORE 7.3.5
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(105, {	-- Rom'ogg Bonecrusher
					["crs"] = { 39665 },	-- Rom'ogg Bonecrusher
					["groups"] = {
						ach(5281),	-- Crushing Bones and Cracking Skulls
						i(56311),	-- Inquisition Robes
						i(56313),	-- Manacles of Pain
						i(56314),	-- Shield of the Iron Maiden
						i(56310),	-- Skullcracker Ring
						i(56312),	-- Torturer's Mercy
					},
				}),
				e(106, {	-- Corla, Herald of Twilight
					["crs"] = { 39679 },	-- Corla, Herald of Twilight
					["groups"] = {
						ach(5282),	-- Arrested Development
						i(56297),	-- Armbands of Change
						i(56296),	-- Corla's Baton
						i(56295),	-- Grace of the Herald
						i(56298),	-- Renouncer's Cowl
						i(56299),	-- Signet of Transformation
					},
				}),
				e(107, {	-- Karsh Steelbender
					["crs"] = { 39698 },	-- Karsh Steelbender
					["groups"] = {
						ach(5283),	-- Too Hot to Handle
						i(56301),	-- Bracers of Cooled Anger
						i(56304),	-- Burned Gatherings
						i(56303),	-- Heat Wave Leggings
						i(56300),	-- Quicksilver Amulet
						i(56302),	-- Steelbender's Masterpiece
					},
				}),
				e(108, {	-- Beauty
					["crs"] = { 39700 },	-- Beauty
					["groups"] = {
						i(56305),	-- Beauty's Silken Ribbon
						i(56306),	-- Beauty's Favorite Bone
						i(56308),	-- Beauty's Plate
						i(56309),	-- Beauty's Chew Toy
						i(56307),	-- Kibble
					},
				}),
				e(109, {	-- Ascendent Lord Obsidius
					["crs"] = { 39705 },	-- Ascendent Lord Obsidius
					["groups"] = {
						ach(5284),	-- Ascendant Descending
						ach(5060),	-- Heroic: Blackrock Caverns
						ach(5134),	-- Heroic: Blackrock Caverns Guild Run
						i(56317),	-- Amber Messenger
						i(56319),	-- Carrier Wave Pendant
						i(56323),	-- Clutches of Dying Light
						i(56322),	-- Crepuscular Shield
						i(56324),	-- Kyrstel Mantle
						i(56318),	-- Raz's Pauldrons
						i(56315),	-- Twitching Shadows
						i(56321),	-- Willowy Crown
						i(56320),	-- Witching Hourglass
						-- #if BEFORE MOP
						i(56316, {	-- Sandshift Relic
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
			}),
			-- #else
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC, {
				e(105, {	-- Rom'ogg Bonecrusher
					["crs"] = { 39665 },	-- Rom'ogg Bonecrusher
					["groups"] = {
						i(157608, {	-- Groundrumble Boots
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(56311),	-- Inquisition Robes
						i(56313),	-- Manacles of Pain
						i(56314),	-- Shield of the Iron Maiden
						i(56310),	-- Skullcracker Ring
						i(56312),	-- Torturer's Mercy
					},
				}),
				e(106, {	-- Corla, Herald of Twilight
					["crs"] = { 39679 },	-- Corla, Herald of Twilight
					["groups"] = {
						i(56297),	-- Armbands of Change
						i(56296),	-- Corla's Baton
						i(56295),	-- Grace of the Herald
						i(56298),	-- Renouncer's Cowl
						i(56299),	-- Signet of Transformation
					},
				}),
				e(107, {	-- Karsh Steelbender
					["crs"] = { 39698 },	-- Karsh Steelbender
					["groups"] = {
						i(56301),	-- Bracers of Cooled Anger
						i(56304),	-- Burned Gatherings
						i(56303),	-- Heat Wave Leggings
						i(157610, {	-- Heat-Shielded Tunic
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(56300),	-- Quicksilver Amulet
						i(56302),	-- Steelbender's Masterpiece
					},
				}),
				e(108, {	-- Beauty
					["crs"] = { 39700 },	-- Beauty
					["groups"] = {
						i(56305),	-- Beauty's Silken Ribbon
						i(56306),	-- Beauty's Favorite Bone
						i(56308),	-- Beauty's Plate
						i(56309),	-- Beauty's Chew Toy
						i(157607, {	-- Gently Gnawed Hauberk
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(56307),	-- Kibble
					},
				}),
				e(109, {	-- Ascendent Lord Obsidius
					["crs"] = { 39705 },	-- Ascendent Lord Obsidius
					["groups"] = {
						ach(4833),	-- Blackrock Caverns
						i(56317),	-- Amber Messenger
						i(56319),	-- Carrier Wave Pendant
						i(56323),	-- Clutches of Dying Light
						i(56322),	-- Crepuscular Shield
						i(56324),	-- Kyrstel Mantle
						i(56318),	-- Raz's Pauldrons
						i(56315),	-- Twitching Shadows
						i(56321),	-- Willowy Crown
						i(56320),	-- Witching Hourglass
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(105, {	-- Rom'ogg Bonecrusher
					["crs"] = { 39665 },	-- Rom'ogg Bonecrusher
					["groups"] = {
						ach(5281),	-- Crushing Bones and Cracking Skulls
					},
				}),
				e(106, {	-- Corla, Herald of Twilight
					["crs"] = { 39679 },	-- Corla, Herald of Twilight
					["groups"] = {
						ach(5282),	-- Arrested Development
					},
				}),
				e(107, {	-- Karsh Steelbender
					["crs"] = { 39698 },	-- Karsh Steelbender
					["groups"] = {
						ach(5283),	-- Too Hot to Handle
					},
				}),
				e(109, {	-- Ascendent Lord Obsidius
					["crs"] = { 39705 },	-- Ascendent Lord Obsidius
					["groups"] = {
						ach(5284),	-- Ascendant Descending
						ach(5060),	-- Heroic: Blackrock Caverns
						ach(5134),	-- Heroic: Blackrock Caverns Guild Run
					},
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(PROTOCOL_INFERNO, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(470595),
				["groups"] = {
					e(109, {	-- Ascendent Lord Obsidius
						["crs"] = { 39705 },	-- Ascendent Lord Obsidius
						["groups"] = {
							ach(41139),	-- Protocol Inferno: Blackrock Caverns
						},
					}),
				},
			})),
			-- #endif
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(66, {
		q(35348),	-- Blackrock Caverns Reward Quest
		q(35351),	-- Blackrock Caverns Reward Quest
		q(35349),	-- Blackrock Caverns Bonus Reward
		q(35352),	-- Blackrock Caverns Bonus Reward - killing Beauty
	}),
})));
