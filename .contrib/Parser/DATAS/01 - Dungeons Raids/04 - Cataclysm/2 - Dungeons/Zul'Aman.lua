-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CATA, bubbleDown({ ["timeline"] = ADDED_4_1_0 }, {
	applyclassicphase(CATA_PHASE_RISE_OF_THE_ZANDALARI, inst(77, {	-- Zul'Aman
		["mapID"] = ZULAMAN,
		["coord"] = { 81.8, 64.3, GHOSTLANDS },	-- Zul'Aman, Ghostlands
		["isRaid"] = false,	-- prevent merging isRaid from BC version
		["groups"] = {
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["groups"] = {
					n(QUESTS, {
						q(29188, {	-- A Troll Among Trolls
							["qg"] = 23761,	-- Prigmon
							["u"] = REMOVED_FROM_GAME,
						}),
						q(29217, {	-- The Captive Scouts
							["qg"] = 52933,	-- Blood Guard Hakkuz
						}),
						q(29186, {	-- The Hex Lord's Fetish
							["qg"] = 52925,	-- Witch Doctor T'wansi
							["groups"] = {
								i(69595),	-- Fetish Greaves
								i(69594),	-- T'wansi's Handwraps
								i(69596),	-- Voodoo Hunting Bow
								i(69748),	-- Tattered Hexcloth Bag
							},
						}),
						q(11196, {	-- Warlord of the Amani
							["qg"] = 52924,	-- Vol'jin
							["groups"] = {
								i(69599),	-- Pauldrons of Ambition
								i(69598),	-- Robes of Dissention
								-- #if BEFORE MOP
								i(69597, {	-- Zulian Throwing Axe
									["timeline"] = { ADDED_4_1_0, REMOVED_5_0_4 },
								}),
								-- #endif
							},
						}),
						q(29261, {	-- Zul'Aman Voodoo
							["provider"] = { "o", 208549 },	-- Voodoo Pile
							["requireSkill"] = ARCHAEOLOGY,
							["isRepeatable"] = true,
						}),
					}),
					n(TREASURES, {
						o(181665, {	-- Burial Chest
							-- ["coords"] = {
							-- 	{ 64.5, 30.4, GHOSTLANDS },
							-- 	{ 62.7, 32.5, GHOSTLANDS },
							-- 	{ 58.8, 28.6, GHOSTLANDS },
							-- 	{ 62.9, 28.0, GHOSTLANDS },
							-- },
							["groups"] = {
								i(23923),	-- Amani Sacrificial Dagger
								i(29518),	-- Amani Scimitar
							},
						}),
					}),
					n(VENDORS, {
						-- #if BEFORE 4.1.0
						n(52915, {	-- Harald
							["cost"] = { { "i", 33865, 1 } },	-- Amani Hex Stick
							["groups"] = {
								i(33926, {	-- Sealed Scroll Case
									["description"] = "Can contain profession recipes.",	-- Only applies for the TBC version of Zul'Aman.
								})
							},
						}),
						-- #endif
						n(52924, {	-- Vol'jin (Not a Vendor, but a placeholder for information.)
							["description"] = "To open the gates you have to tell Vol'jin you are ready to open the gates, and then click ONCE on the gong when it becomes interactable. Your character will keep auto-hitting it, and Vol'jin will open the gates.",
						}),
					}),
					n(ZONE_DROPS, {
						i(69801, {	-- Amani Armguards
							["crs"] = {
								23584,	-- Amani Bear
								23834,	-- Amani Dragonhawk
								24530,	-- Amani Elder Lynx
								24043,	-- Amani Lynx
								24064,	-- Amani Lynx Cub
								23542,	-- Amani'shi Axe Thrower
								24059,	-- Amani'shi Beast Tamer
								24374,	-- Amani'shi Berserker
								23596,	-- Amani'shi Flame Caster
								23597,	-- Amani'shi Guardian
								24065,	-- Amani'shi Handler
								24175,	-- Amani'shi Lookout
								23581,	-- Amani'shi Medicine Man
								23586,	-- Amani'shi Scout
								24549,	-- Amani'shi Tempest
								23774,	-- Amani'shi Trainer
								23582,	-- Amani'shi Tribesman
								23580,	-- Amani'shi Warbringer
								24138,	-- Tamed Amani Crocolisk
							},
						}),
						i(33865),	-- Amani Hex Stick
						i(69797, {	-- Charmbinder Grips
							["crs"] = {
								23584,	-- Amani Bear
								23834,	-- Amani Dragonhawk
								24530,	-- Amani Elder Lynx
								24043,	-- Amani Lynx
								24064,	-- Amani Lynx Cub
								23542,	-- Amani'shi Axe Thrower
								24059,	-- Amani'shi Beast Tamer
								24374,	-- Amani'shi Berserker
								23596,	-- Amani'shi Flame Caster
								23597,	-- Amani'shi Guardian
								24065,	-- Amani'shi Handler
								23581,	-- Amani'shi Medicine Man
								23586,	-- Amani'shi Scout
								24549,	-- Amani'shi Tempest
								23774,	-- Amani'shi Trainer
								23582,	-- Amani'shi Tribesman
								23580,	-- Amani'shi Warbringer
								24138,	-- Tamed Amani Crocolisk
							},
						}),
						i(69802),	-- Band of the Gurubashi Berserker
						i(69803, {	-- Gurubashi Punisher
							["crs"] = {
								130241,	-- Zandalari Archon
								130243,	-- Zandalari Hierophant
								130245,	-- Zandalari Juggernaut
							},
						}),
						i(69798, {	-- Knotted Handwraps
							["crs"] = {
								23584,	-- Amani Bear
								23834,	-- Amani Dragonhawk
								24530,	-- Amani Elder Lynx
								24043,	-- Amani Lynx
								24064,	-- Amani Lynx Cub
								23542,	-- Amani'shi Axe Thrower
								24059,	-- Amani'shi Beast Tamer
								24374,	-- Amani'shi Berserker
								23596,	-- Amani'shi Flame Caster
								23597,	-- Amani'shi Guardian
								24065,	-- Amani'shi Handler
								23581,	-- Amani'shi Medicine Man
								23586,	-- Amani'shi Scout
								24549,	-- Amani'shi Tempest
								23774,	-- Amani'shi Trainer
								23582,	-- Amani'shi Tribesman
								23580,	-- Amani'shi Warbringer
								24138,	-- Tamed Amani Crocolisk
							},
						}),
						i(69799),	-- Quickfinger Ring
					}),
					n(24396, {	-- Forest Frog
						["description"] = "Use an Amani Hex Stick on a Forest Frog for a chance to get vendors and bags of gold, as well as have Mojo spawn and hop into your bags.",
						["cost"] = { { "i", 33865, 1 } },	-- Amani Hex Stick
						["groups"] = {
							i(33993, {	-- Mojo (PET!)
								["timeline"] = { ADDED_2_3_0 },
							}),
							i(33931),	-- Amani Charm of Mighty Mojo
							i(33930),	-- Amani Charm of the Bloodletter
							i(33933),	-- Amani Charm of the Raging Defender
							i(33932),	-- Amani Charm of the Witch Doctor
							ach(5761, {	-- Hex Mix
								crit(16836, {	-- Rosa saved.
									["provider"] = { "n", 52905 },	-- Rosa
								}),
								crit(16837, {	-- Eulinda saved.
									["provider"] = { "n", 52914 },	-- Eulinda
								}),
								crit(16838, {	-- Lenzo saved.
									["provider"] = { "n", 52917 },	-- Lenzo
								}),
								crit(16839, {	-- Melasong saved.
									["provider"] = { "n", 52916 },	-- Melasong
								}),
								crit(16840, {	-- Harald saved.
									["provider"] = { "n", 52915 },	-- Harald
								}),
								crit(16841, {	-- Relissa saved.
									["provider"] = { "n", 52912 },	-- Relissa
								}),
								crit(16842, {	-- Kaldrick saved.
									["provider"] = { "n", 52918 },	-- Kaldrick
								}),
								crit(16843, {	-- Arinoth saved.
									["provider"] = { "n", 52919 },	-- Arinoth
								}),
								crit(16844, {	-- Micah saved.
									["provider"] = { "n", 52910 },	-- Micah
								}),
								crit(16845, {	-- Tyllan saved.
									["provider"] = { "n", 52909 },	-- Tyllan
								}),
								crit(16846, {	-- Mawago saved.
									["provider"] = { "n", 52920 },	-- Mawago
								}),
								crit(16847, {	-- Melissa saved.
									["provider"] = { "n", 52947 },	-- Melissa
								}),
							}),
						},
					}),
					n(ZULAMAN_TIMED_EVENT, {
						["description"] = "Enter the instance and talk to Vol'Jin to start the event and open the doors. You will now have 15 minutes to defeat the first animal-boss of your choice. Any of the loa spirit bosses will do and there is no required order, but two of them will add extra time to the timer.\n\nKilling Nalorakk (bear) will add 5 minutes to your timer.\nKilling Akil'zon (eagle) will add 5 minutes to your timer.\nOther bosses will not grant additional time.\n\nThe loot from the event is dependent on the number of hostages you rescue, and spawns in containers near the hostage's cage upon release.",
						["nomerge"] = true,
						["groups"] = {
							n(ZULAMAN_CHEST_1, {
								i(69886),	-- Bag of Coins
							}),
							n(ZULAMAN_CHEST_2, {
								i(69584),	-- Recovered Cloak of Frostheim
								i(69587),	-- Chestplate of Hubris
								i(69585),	-- Wristwraps of Madness
								i(69586),	-- Two-Toed Boots
								i(69588),	-- Skullcrusher Warboots
							}),
							n(ZULAMAN_CHEST_3, {
								i(69592),	-- Reforged Trollbane
								i(69591),	-- Voodoo Hexblade
								i(69593),	-- Battleplate of the Amani Empire
								i(69590),	-- Mojo-Mender's Gloves
								i(69589),	-- Leggings of Dancing Blades
							}),
							n(ZULAMAN_CHEST_4, {
								["description"] = "This item is found in the prisoner's loot chest associated with the fourth animal boss you defeat within the time limit of the event.\n\nOnly one player can receive this within a given instance lockout.",
								["groups"] = {
									ach(5858),	-- Bear-ly Made It
									i(69747),	-- Amani Battle Bear (MOUNT!)
								},
							}),
						},
					}),
					n(ZULAMAN_TIMED_EVENT, {
						["sharedDescription"] = "Stay with the captives after their release to get additional loot.",
						["groups"] = {
							n(52941),	-- Bakkal'zu
							n(52939),	-- Hazlek
							n(52945),	-- Kasha
							n(52943),	-- Norkani
						},
					}),
					e(186, {	-- Akil'zon
						["crs"] = { 23574 },	-- Akil'zon
						["groups"] = {
							i(69552),	-- Bracers of Hidden Purpose
							i(69551),	-- Feathers of Akil'zon
							i(69550),	-- Leggings of Ancient Magics
							i(69553),	-- Talonguard Band
							i(69549),	-- Wristguards of the Predator
						},
					}),
					e(187, {	-- Nalorakk
						["crs"] = { 23576 },	-- Nalorakk
						["groups"] = {
							i(69556),	-- Armbands of the Bear Spirit
							i(69555),	-- Boots of the Ursine
							i(69557),	-- Jungle Striders
							i(69554),	-- Pauldrons of Nalorakk
							i(69558),	-- Spiritshield Mask
						},
					}),
					e(188, {	-- Jan'alai
						["crs"] = { 23578 },	-- Jan'alai
						["groups"] = {
							i(69559),	-- Amani'shi Bracers
							i(69562),	-- Boots of Bad Mojo
							i(69561),	-- Hawkscale Waistguard
							i(69560),	-- Jan'alai's Spaulders
							i(69563),	-- Ring of the Numberless Brood
						},
					}),
					e(189, {	-- Halazzi
						["crs"] = { 23577 },	-- Halazzi
						["groups"] = {
							ach(5750),	-- Tunnel Vision
							i(69565),	-- Breastplate of Primal Fury
							i(69568),	-- Shadowmender Wristguards
							i(69566),	-- Shimmerclaw Band
							i(69564),	-- The Savager's Mask
							i(69567),	-- Wristwraps of Departed Spirits
						},
					}),
					e(190, {	-- Hex Lord Malacrass
						["crs"] = { 24239 },	-- Hex Lord Malacrass
						["groups"] = {
							i(69572),	-- Hex Lord's Bloody Cloak
							i(69762),	-- Miniature Voodoo Mask
							i(69573),	-- Pauldrons of Sacrifice
							i(70080),	-- Reforged Heartless
							i(69569),	-- Shadowtooth Trollskin Breastplate
							i(69571),	-- Soul Drain Signet
							i(69570),	-- Waistband of Hexes
						},
					}),
					e(191, {	-- Daakara
						["crs"] = { 23863 },	-- Daakara
						["groups"] = {
							ach(5769),	-- Heroic: Zul'Aman
							ach(5771),	-- Heroic: Zul'Aman Guild Run
							ach(5760),	-- Ring Out!
							i(69579),	-- Amani Headdress
							i(69581),	-- Amani Scepter of Rites
							i(69577),	-- Collar of Bones
							i(69576),	-- Headdress of Sharpened Vision
							i(69578),	-- Hexing Robes
							i(69583),	-- Legguards of the Unforgiving
							i(69575),	-- Mace of the Sacrificed
							i(69580),	-- Mask of Restless Spirits
							i(69582),	-- Skullpiercer Pauldrons
							i(69574),	-- Tusked Shoulderpads
						},
					}),
				},
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(77, {
		q(35443),	-- Zul'Aman Reward Quest - Heroic completion
	}),
})));
