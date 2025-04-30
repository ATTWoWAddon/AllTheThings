-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
HORRIFIC_VISIONS_REVISITED = createHeader({
	readable = "Horrific Visions Revisited",
	icon = [[~_.asset("Feature_Horrific Visions")]],
	text = {
		en = "Horrific Visions Revisited",
		cn = "重访惊魂幻象",
	},
});

local RE_HORRIFIC_ORGRIMMAR = 2403;	-- Vision of Orgrimmar
local RE_HORRIFIC_STORMWIND = 2404;	-- Vision of Stormwind
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDown({ ["timeline"] = { ADDED_11_1_5 } }, {
	n(HORRIFIC_VISIONS_REVISITED, {
		["maps"] = {
			RE_HORRIFIC_ORGRIMMAR,
			RE_HORRIFIC_STORMWIND,
		},
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(41897),	-- A Monumental Amount of Mementos
				ach(41898),	-- A Mountain of Mementos
				ach(41873),	-- Incremental Progress
				ach(41889),	-- Horrific Masquerade
				ach(41953, {	-- Mad World
					title(419),	-- <Name>, the Faceless One
				}),
				ach(41857),	-- Masked Soliloquy
				ach(41890),	-- Masked Duet
				ach(41891),	-- Masked Trio
				ach(41893),	-- Masked Quartet
				ach(41874),	-- Symphony of Masks
				ach(41858),	-- Masked Sextet
				ach(41894),	-- Masked Septet
				ach(41895),	-- Orchestra of Masks
				ach(41966, {	-- Mastering the Visions
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						41965,	-- Beyond the Most Horrific Vision of Orgrimmar
						41964,	-- Beyond the Most Horrific Vision of Stormwind
					}},
					["g"] = { i(235709) },	-- Ny'alothan Shadow Worm
				}),
				ach(41983),	-- Memento Mania
				ach(41896),	-- Memento Mori
				ach(41928, {	-- Reeking of Visions
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						41876,	-- The Even More Horrific Vision of Orgrimmar
						41854,	-- The Even More Horrific Vision of Stormwind
					}},
					["g"] = { i(174463) },	-- Reek (PET!)
				}),
				ach(41859),	-- Thanks For The Mementos
				ach(41929, {	-- Through the Depths of Visions
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						41879,	-- The Most Horrific Vision of Orgrimmar
						41855,	-- The Most Horrific Vision of Stormwind
						41725,	-- We Have the Memories
					}},
					["g"] = { i(174654) },	-- Black Serpent of N'Zoth (MOUNT!)
				}),
				ach(41971, {	-- Through the Looking Glass
					title(631),	-- <Name> the Mad
				}),
				ach(41725),	-- We Have the Memories
			}),
			n(QUESTS, {
				-- Intro --
				q(86706, {	-- Seeking Knowledge of the Past
					--["sourceQuests"] = { xx },	-- TODO: doesn't exist/time gated?
					--["provider"] = { "n", XXX },	-- TODO: Didn't find questgiver for this one, picked up from journal
					--["coord"] = { X, Y, DORNOGAL },
					["isBreadcrumb"] = true,	-- TODO: next quest was up without this one
				}),
				q(87328, {	-- Truly Horrific to Behold
					["sourceQuests"] = { 86706 },	-- Seeking Knowledge of the Past
					["provider"] = { "n", 236382 },	-- Soridormi
					["coord"] = { 34.6, 68.7, DORNOGAL },
				}),
				q(87329, {	-- Into the Darkest Memories
					["sourceQuests"] = { 87328 },	-- Truly Horrific to Behold
					["provider"] = { "n", 236382 },	-- Soridormi
					["coord"] = { 34.5, 68.7, DORNOGAL },
				}),
				q(87332, {	-- A Collection of Variables
					["sourceQuests"] = { 87329 },	-- Into the Darkest Memories
					["provider"] = { "n", 236382 },	-- Soridormi
					["coord"] = { 34.5, 68.7, DORNOGAL },
				}),
				q(87335, {	-- Echoing Lessons
					["sourceQuests"] = { 87332 },	-- A Collection of Variables
					["provider"] = { "n", 238136 },	-- Augermu
					["coord"] = { 35.2, 68.5, DORNOGAL },
				}),
				q(87336, {	-- Remembering Again and Again
					["sourceQuests"] = { 87335 },	-- Echoing Lessons
					["provider"] = { "n", 238136 },	-- Augermu
					["coord"] = { 35.2, 68.5, DORNOGAL },
				}),
				-- End of intro quests
				-- Follower quest
				q(88803, {	-- Timely Assistance
					["sourceQuests"] = { 87336 },	-- Remembering Again and Again
					["provider"] = { "n", 238337 },	-- Bronze Hourglass
					["coords"] = {
						{ 51.9, 82.7, RE_HORRIFIC_ORGRIMMAR },
					},
					--TODO: ^ missing Stormwind vision coords
				}),
				-- Corruptions quest
				q(90719, {	-- Borrowing Corruption (TODO: warbound)
					--["sourceQuests"] = { ??? },	-- TODO: it was just up with some of new builds
					["provider"] = { "n", 238136 },	-- Augermu
					["coord"] = { 35.2, 68.6, DORNOGAL },
					["g"] = {
						i(238678),	-- Lesser Rune of Echoing Void
						i(239084),	-- Lesser Rune of Gushing Wound
						i(239078),	-- Lesser Rune of Infinite Stars
						i(239088),	-- Lesser Rune of the Twisted Appendage
						i(239093),	-- Lesser Rune of the Void Ritual
						i(238403),	-- Lesser Rune of Twilight Devastation
					},
				}),
				q(90731, {	-- Enhancing Corruption (TODO: warbound)
					["sourceQuests"] = { 90719 },	-- Borrowing Corruption
					["provider"] = { "n", 238136 },	-- Augermu
					["coord"] = { 35.2, 68.6, DORNOGAL },
					["g"] = {
						i(238680),	-- Greater Rune of Echoing Void
						i(239086),	-- Greater Rune of Gushing Wound
						i(239080),	-- Greater Rune of Infinite Stars
						i(239090),	-- Greater Rune of the Twisted Appendage
						i(239095),	-- Greater Rune of the Void Ritual
						i(238405),	-- Greater Rune of Twilight Devastation
					},
				}),
				-- TODO: Some masks still have their old quests, and something is funky with criteria of mask of the long night, WIP on Blizzard's end maybe? v0v
				q(86153, {	-- Faceless Mask of the Dark Imagination
					--["sourceQuests"] = { ?? },	-- ??
					["provider"] = { "i", 232919 },	-- Faceless Mask of the Dark Imagination (QI!/QS!)
				}),
				q(86801, {	-- Faceless Mask of Multitudes
					["provider"] = { "i", 235414 },	-- Faceless Mask of Multitudes (QS!/QI!)
				}),
				q(86152, {	-- Faceless Mask of the Daredevil
					--["sourceQuests"] = { 90529 },	-- hqt?
					["provider"] = { "i", 232918 },	-- Faceless Mask of the Daredevil (QS!/QI!)
				}),
				q(86151, {	-- Faceless Mask of the Burned Bridge
					--["sourceQuests"] = { 90530 },	-- hqt?
					["provider"] = { "i", 232917 },	-- Faceless Mask of the Burned Bridge (QI!/QS!)
				}),
				q(86155, {	-- Faceless Mask of the Long Night
					--["sourceQuests"] = { ?? },	-- ??
					["provider"] = { "i", 232921 },	-- Faceless Mask of the Long Night (QI!/QS!)
				}),
				q(86154, {	-- Faceless Mask of the Pained
					--["sourceQuests"] = { ?? },	-- ??
					["provider"] = { "i", 232920 },	-- Faceless Mask of the Pained (QI!/QS!)
				}),
				q(88652, {	-- Faceless Mask of the Nemesis
					--["sourceQuests"] = { ?? },	-- ??
					["provider"] = { "i", 237434 },	-- Faceless Mask of the Nemesis (QI!/QS!)
				}),
				q(88903, {	-- Faceless Mask of Vengeance
					--["sourceQuests"] = { ?? },	-- ??
					["provider"] = { "i", 238260 },	-- Faceless Mask of Vengeance (QI!/QS!)
				}),
			}),
			n(RARES, {
				n(239581, {	-- Nesting Swarmite
					["description"] = "Has a chance to spawn from piles of Trash in either vision.",
					["coords"] = {
						{ 47.6, 74.5, RE_HORRIFIC_ORGRIMMAR },
						{ 57.4, 60.8, RE_HORRIFIC_ORGRIMMAR },
						{ 69.0, 49.7, RE_HORRIFIC_ORGRIMMAR },
						{ 50.8, 45.1, RE_HORRIFIC_ORGRIMMAR },
						{ 40.3, 79.4, RE_HORRIFIC_ORGRIMMAR },
						--
						{ 55.8, 49.3, RE_HORRIFIC_STORMWIND },
						{ 62.9, 30.7, RE_HORRIFIC_STORMWIND },
						{ 73.6, 62.7, RE_HORRIFIC_STORMWIND },
						{ 66.1, 76.3, RE_HORRIFIC_STORMWIND },
						{ 52.6, 77.3, RE_HORRIFIC_STORMWIND },
					},
					["g"] = { i(223265) },	-- Nesting Swarmite (MOUNT!)
				}),
				n(160708, {	-- Mail Muncher
					["description"] = "Has a chance to spawn from Mailboxes in either vision.",
					["coords"] = {
						{ 40.0, 78.4, RE_HORRIFIC_ORGRIMMAR },
						{ 52.8, 76.2, RE_HORRIFIC_ORGRIMMAR },
						{ 60.2, 51.0, RE_HORRIFIC_ORGRIMMAR },
						{ 67.6, 39.2, RE_HORRIFIC_ORGRIMMAR },
						{ 39.2, 49.1, RE_HORRIFIC_ORGRIMMAR },
						--
						{ 61.8, 75.6, RE_HORRIFIC_STORMWIND },
						{ 54.8, 57.8, RE_HORRIFIC_STORMWIND },
						{ 62.0, 30.6, RE_HORRIFIC_STORMWIND },
						{ 49.7, 87.0, RE_HORRIFIC_STORMWIND },
						{ 75.7, 64.6, RE_HORRIFIC_STORMWIND },
					},
					["g"] = { i(174653) },	-- Mail Muncher (MOUNT!)
				}),
			}),
			n(REWARDS, {
				currency(3149),	-- Displaced Corrupted Mementos
				filter(MISC, {
					i(232921),	-- Faceless Mask of the Long Night (QI!/QS!)
					i(235414),	-- Faceless Mask of Multitudes (QS!/QI!) (TODO: require to complete run with 4 masks?)
				}),
				n(ARMOR, {
					filter(BACK_F, {
						i(236970),	-- Cloak of Insatiable Vision (leathers class only?)
						i(236968),	-- Malignant Vision's Drape
						i(236971),	-- Vision Manipulator's Cloak
						i(236969),	-- Vision Tormentor's Tentacles
					}),
					filter(CLOTH, {
						i(236823),	-- Vision Manipulator's Belt
						i(236790),	-- Vision Manipulator's Cinch
						i(236828),	-- Vision Manipulator's Cowl
						i(236815),	-- Vision Manipulator's Cuffs
						i(236787),	-- Vision Manipulator's Footwraps
						i(236807),	-- Vision Manipulator's Gloves
						i(236788),	-- Vision Manipulator's Handwraps
						i(236789),	-- Vision Manipulator's Leggings
						i(236811),	-- Vision Manipulator's Legwraps
						i(236829),	-- Vision Manipulator's Mantle
						i(236840),	-- Vision Manipulator's Mask
						i(236827),	-- Vision Manipulator's Robe
						i(236841),	-- Vision Manipulator's Shoulders
						i(236822),	-- Vision Manipulator's Treads
						i(236839),	-- Vision Manipulator's Vestments
						i(236791),	-- Vision Manipulator's Wristwraps
					}),
					filter(FINGER_F, {
						i(236909),	-- Loop of Insatiable Vision
						i(236908),	-- Signet of Malignant Vision
						i(236906),	-- Vision Manipulator's Ring
						i(236907),	-- Vision Tormentor's Band
					}),
					filter(LEATHER, {
						i(236816),	-- Armguards of the Insatiable Vision
						i(236821),	-- Boots of the Insatiable Vision
						i(236830),	-- Chestguard of the Insatiable Vision
						i(236792),	-- Footpads of the Insatiable Vision
						i(236808),	-- Gloves of the Insatiable Vision
						i(236824),	-- Grasp of the Insatiable Vision
						i(236793),	-- Grips of the Insatiable Vision
						i(236831),	-- Guise of the Insatiable Vision
						i(236812),	-- Leggings of the Insatiable Vision
						i(236794),	-- Legwraps of the Insatiable Vision
						i(236843),	-- Mask of the Insatiable Vision
						i(236832),	-- Shoulderpads of the Insatiable Vision
						i(236844),	-- Shoulders of the Insatiable Vision
						i(236842),	-- Vest of the Insatiable Vision
						i(236795),	-- Waistguard of the Insatiable Vision
						i(236796),	-- Wristwraps of the Insatiable Vision
					}),
					filter(MAIL, {
						i(236800),	-- Vision Tormentor's Belt
						i(236820),	-- Vision Tormentor's Boots
						i(236817),	-- Vision Tormentor's Bracers
						i(236833),	-- Vision Tormentor's Breastplate
						i(236825),	-- Vision Tormentor's Chain
						i(236845),	-- Vision Tormentor's Chestplate
						i(236797),	-- Vision Tormentor's Footguards
						i(236809),	-- Vision Tormentor's Gloves
						i(236813),	-- Vision Tormentor's Greaves
						i(236798),	-- Vision Tormentor's Handguards
						i(236846),	-- Vision Tormentor's Helmet
						i(236799),	-- Vision Tormentor's Legguards
						i(236834),	-- Vision Tormentor's Mask
						i(236847),	-- Vision Tormentor's Shoulders
						i(236835),	-- Vision Tormentor's Spaulders
						i(236801),	-- Vision Tormentor's Vambraces
					}),
					filter(NECK_F, {
						i(236910),	-- Choker of the Malignant Vision
						i(236913),	-- Pendant of Insatiable Vision
						i(236912),	-- Vision Manipulator's Choker
						i(236911),	-- Vision Tormentor's Bone Necklace
					}),
					filter(PLATE, {
						i(236806),	-- Malignant Vision's Armguards
						i(236848),	-- Malignant Vision's Breastplate
						i(236836),	-- Malignant Vision's Chestplate
						i(236803),	-- Malignant Vision's Crushers
						i(236810),	-- Malignant Vision's Gauntlets
						i(236826),	-- Malignant Vision's Girdle
						i(236805),	-- Malignant Vision's Greatbelt
						i(236837),	-- Malignant Vision's Headguard
						i(236849),	-- Malignant Vision's Helm
						i(236814),	-- Malignant Vision's Legguards
						i(236850),	-- Malignant Vision's Pauldrons
						i(236838),	-- Malignant Vision's Spaulders
						i(236802),	-- Malignant Vision's Stompers
						i(236818),	-- Malignant Vision's Vambraces
						i(236819),	-- Malignant Vision's Warboots
						i(236804),	-- Malignant Vision's Wargreaves
					}),
					filter(TRINKET_F, {
					}),
				}),
			}),
			n(TREASURES, {
				o(527842, {	-- Black Blood Infused Bar
					["description"] = "Can be looted once per run",
					["coords"] = {
						{ 45.0, 52.7, RE_HORRIFIC_ORGRIMMAR },	-- Alex: can confirm this coord, questID & object for it
						{ 63.7, 37.1, RE_HORRIFIC_STORMWIND },
					},
					["questID"] = 89472,
					["repeatable"] = true,
					["g"] = { i(239107) },	-- Black Blood Infused Bar
				}),
			}),
			n(SPECIAL, {
				i(237434, {	-- Faceless Mask of the Nemesis (QI!/QS!)
					["providers"] = {
						{ "i", 239158 },	-- Nemesis Shard (GAMON)
						{ "i", 239157 },	-- Nemesis Shard (HOGGER)
					},
				}),
				header(HEADERS.Item, 211089, {	-- Voidfire Deathcycle
					["description"] = "Collect each reagent and craft them together into cycle parts, return the parts to the bike in Dornogal to earn your own.\n\nEach special reagent is available from Visions with at least one mask active.",
					["sourceQuest"] = 90129,	-- Voidfire Deathcycle Frame Tagged For Extraction
					["coord"] = { 34.0, 68.2, DORNOGAL },
					["g"] = {
						i(240181, {	-- Boarhide Deathcycle Seat
							["cost"] = {
								{ "i", 222890, 5 },	-- 5x Weavercloth Spellthread
								{ "i", 240180, 1 },	-- 1x Void-Scarred Boarhide
							},
						}),
						i(240190, {	-- Deathcycle Exhaust System
							["cost"] = {
								{ "i", 44500, 1 },	-- 1x Elementium-Plated Exhaust Pipe
								{ "i", 240191, 1 },	-- 1x Magic-Lined Manifold
							},
						}),
						i(240185, {	-- Pulsing Void Crystal
							["cost"] = {
								{ "i", 221955, 1 },	-- 1x Convincingly Realistic Jumper Cables
								{ "i", 240186, 1 },	-- 1x Depleted Void Crystal
								{ "i", 219955, 1 },	-- 1x Refulgent Crystal
							},
						}),
						i(240182, {	-- Skull-Scythe Handlebars
							["cost"] = {
								{ "i", 221945, 1 },	-- 1x Irresistible Red Button
								{ "i", 221925, 1 },	-- 1x Recalibrated Safety Switch
								{ "i", 219903, 1 },	-- 1x Storm-Touched Weapon Wrap
								{ "i", 240183, 1 },	-- 1x Twisted Skull-Scythe Handlebars
								{ "i", 221858, 3 },	-- 3x Whimsical Wiring
							},
						}),
						i(240188, {	-- Void-Forged Inline Four Engine
							["cost"] = {
								{ "i", 44501, 4 },	-- 4x Goblin-Machined Piston
								{ "i", 240189, 1 },	-- 1x Void-Forged Engine Block
							},
						}),
						i(240179, {	-- Voidflame Wheel
							["cost"] = {
								{ "i", 221870, 6 },	-- 6x Entropy Enhancer
								{ "i", 240193, 1 },	-- 1x Tentacle Spokes
								{ "i", 240178, 1 },	-- 1x Voidflame-Resistant Hide
							},
						}),
						i(211089, {	-- Voidfire Deathcycle
							["provider"] = { "n", 242544 }, -- or maybe 242545
							["cost"] = {
								{ "i", 240181, 1 },	-- 1x Boarhide Deathcycle Seat
								{ "i", 240190, 1 },	-- 1x Deathcycle Exhaust System
								{ "i", 240185, 1 },	-- 1x Pulsing Void Crystal
								{ "i", 240182, 1 },	-- 1x Skull-Scythe Handlebars
								{ "i", 240188, 1 },	-- 1x Void-Forged Inline Four Engine
								{ "i", 240179, 2 },	-- 2x Voidflame Wheel
							},
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(238136, {	-- Augermu
					["sourceQuest"] = 90719,	-- Borrowing Corruption
					["coord"] = { 35.2, 68.6, DORNOGAL },
					["g"] = sharedData({ ["cost"] = {{"c", 3149, 500}} }, {	-- 500x Displaced Corrupted Mementos
						i(238678),	-- Lesser Rune of Echoing Void
						i(239084),	-- Lesser Rune of Gushing Wound
						i(239078),	-- Lesser Rune of Infinite Stars
						i(239088),	-- Lesser Rune of the Twisted Appendage
						i(239093),	-- Lesser Rune of the Void Ritual
						i(238403),	-- Lesser Rune of Twilight Devastation
						i(238680, {["cost"] = {{"c", 3149, 1000}} }),	-- Greater Rune of Echoing Void
						i(239086, {["cost"] = {{"c", 3149, 1000}} }),	-- Greater Rune of Gushing Wound
						i(239080, {["cost"] = {{"c", 3149, 1000}} }),	-- Greater Rune of Infinite Stars
						i(239090, {["cost"] = {{"c", 3149, 1000}} }),	-- Greater Rune of the Twisted Appendage
						i(239095, {["cost"] = {{"c", 3149, 1000}} }),	-- Greater Rune of the Void Ritual
						i(238405, {["cost"] = {{"c", 3149, 1000}} }),	-- Greater Rune of Twilight Devastation
					}),
				}),
				n(238544, {	-- Chreni
					["sourceAchievement"] = 41874,	-- Symphony of Masks
					["coord"] = { 33.8, 68.6, DORNOGAL },
					["g"] = {
						i(242623, {	-- Enchanted Warbound Purifying Kit
							["cost"] = {{"c", 3149, 2000 }},	-- 2000x Displaced Corrupted Mementos
						}),
					},
				}),
				n(238546, {	-- Rhythferr
					["sourceAchievement"] = 41857,	-- Masked Soliloquy
					["coord"] = { 34.1, 68.5, DORNOGAL },
					["g"] = {
						i(242622, {	-- Warbound Purifying Kit
							["cost"] = {{"c", 3149, 1000 }},	-- 1000x Displaced Corrupted Mementos
						}),
					},
				}),
				n(238545, {	-- TickTak
					-- TODO: TickTak = veteran, Rhythferr (238546) = champion, Chreni (238544) = hero
					-- TODO: all itemIDs is same, just different modID per vendor: 83 (veteran), 82 (champion) 84 (hero)
					["coord"] = { 33.9, 68.8, DORNOGAL },
					["sourceAchievement"] = 41873,	-- Incremental Progress
					["g"] = sharedData({ ["cost"] = {{"c", 3149, 500}} }, {	-- 500x Displaced Corrupted Mementos
						-- TODO: sort it out near live release, sorted via listing in vendor for easy self-navigation
						-- 1
						i(236903),	-- Void-Touched Glaive
						i(236905),	-- Void-Touched Shield
						i(236904),	-- Void-Touched Lantern
						i(236901),	-- Void-Touched Broadsword
						i(236902),	-- Void-Touched Greatsword
						i(236893),	-- Void-Touched Stave
						i(236892),	-- Void-Touched Battle Staff
						i(236891),	-- Void-Touched Polearm
						i(236890),	-- Void-Touched Spear
						i(236887),	-- Void-Touched Sharpshooter
						-- 2
						i(236894),	-- Void-Touched Bow
						i(236889),	-- Void-Touched Waraxe
						i(236899),	-- Void-Touched Wand
						i(236886),	-- Void-Touched Sword
						i(236895),	-- Void-Touched Spellblade
						i(236885),	-- Void-Touched Gladius
						i(236884),	-- Void-Touched Blungeon
						i(236888),	-- Void-Touched Occular
						i(236883),	-- Void-Touched Pummeler
						i(236900),	-- Void-Touched Claws
						-- 3
						i(236882),	-- Void-Touched Ritual Knife
						i(236896),	-- Void-Touched Blade
						i(236881),	-- Void-Touched Shank
						i(236898),	-- Void-Touched Cleaver
						i(236897),	-- Void-Touched Hacker
					}),
				}),
				n(238138, {	-- Torie
					["coord"] = { 34.4, 68.4, DORNOGAL },
					["g"] = {
						-- TODO: sort it out near live release, sorted via listing in vendor for easy self-navigation
						-- 1
						i(235711, {	-- Corruption of the Aspects (MOUNT!)
							["cost"] = {{ "c", 3149, 40000 }},
						}),
						i(235980, {	-- Scourge of the Aspects (PET!)
							["sourceAchievement"] = 41725,	-- We Have the Memories
							["cost"] = {{ "c", 3149, 5000 }},
						}),
						i(238255, {	-- Bronze Dragonscale Backpack
							["cost"] = {{ "c", 3149, 5000 }},
						}),
						i(174770, {	-- Wicked Swarmer (MOUNT!)
							["cost"] = {{ "c", 3149, 20000 }},
						}),
						i(174361, {	-- Black Dragonscale Backpack
							["cost"] = {{ "c", 3149, 2000 }},
						}),
						i(238666, {	-- Ashjra'kamas, The Corrupted
							["cost"] = {{ "c", 3149, 1000 }},
						}),
						i(238667, {	-- Ashjra'kamas, The Purified
							["cost"] = {{ "c", 3149, 1500 }},
						}),
						i(238668, {	-- Ashjra'kamas, The Celestial
							["cost"] = {{ "c", 3149, 2000 }},
						}),
						i(237008, {	-- Vision Manipulator's Cloak
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(237007, {	-- Cloak of the Insatiable Vision
							["cost"] = {{ "c", 3149, 400 }},
						}),
						-- 2
						i(237006, {	-- Vision Tormentor's Tentacles
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(237005, {	-- Malignant Vision's Drape
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236993, {	-- Vision Manipulator's Robe
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236973, {	-- Vision Manipulator's Footwraps
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236974, {	-- Vision Manipulator's Handwraps
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236994, {	-- Vision Manipulator's Cowl
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236975, {	-- Vision Manipulator's Leggings
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236995, {	-- Vision Manipulator's Mantle
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236976, {	-- Vision Manipulator's Cinch
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236977, {	-- Vision Manipulator's Wristwraps
							["cost"] = {{ "c", 3149, 200 }},
						}),
						-- 3
						i(236996, {	-- Chestguard of the Insatiable Vision
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236978, {	-- Footpads of the Insatiable Vision
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236979, {	-- Grips of the Insatiable Vision
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236997, {	-- Guise of the Insatiable Vision
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236980, {	-- Legwraps of the Insatiable Vision
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236998, {	-- Shoulderpads of the Insatiable Vision
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236981, {	-- Waistguard of the Insatiable Vision
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236982, {	-- Wristwraps of the Insatiable Vision
							["cost"] = {{ "c", 3149, 200 }},
						}),
						i(236999, {	-- Vision Tormentor's Breastplate
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236983, {	-- Vision Tormentor's Footguards
							["cost"] = {{ "c", 3149, 400 }},
						}),
						-- 4
						i(236984, {	-- Vision Tormentor's Handguards
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(237000, {	-- Vision Tormentor's Mask
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236985, {	-- Vision Tormentor's Legguards
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(237001, {	-- Vision Tormentor's Spaulders
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236986, {	-- Vision Tormentor's Belt
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236987, {	-- Vision Tormentor's Vambraces
							["cost"] = {{ "c", 3149, 200 }},
						}),
						i(237002, {	-- Malignant Vision's Chestplate
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236988, {	-- Malignant Vision's Stompers
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236989, {	-- Malignant Vision's Crushers
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(237003, {	-- Malignant Vision's Headguard
							["cost"] = {{ "c", 3149, 600 }},
						}),
						-- 5
						i(236990, {	-- Malignant Vision's Wargreaves
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(237004, {	-- Malignant Vision's Spaulders
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236991, {	-- Malignant Vision's Greatbelt
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236992, {	-- Malignant Vision's Armguards
							["cost"] = {{ "c", 3149, 200 }},
						}),
					},
				}),
			}),
			header(HEADERS.Achievement, 41875, {	-- Horrific Vision of Orgrimmar
				["maps"] = { RE_HORRIFIC_ORGRIMMAR },
				["g"] = {
					n(ACHIEVEMENTS, {
						ach(41875),	-- Horrific Vision of Orgrimmar
						ach(41876),	-- The Even More Horrific Vision of Orgrimmar
						ach(41879),	-- The Most Horrific Vision of Orgrimmar
						ach(41965),	-- Beyond the Most Horrific Vision of Orgrimmar
					}),
					n(SCENARIO_COMPLETION, {
						o(499956, {	-- Corrupted Chest (The Drag/Garona)
							["coord"] = { 48.5, 58.3, RE_HORRIFIC_ORGRIMMAR },
							["g"] = {
								i(235795),	-- Void-Scarred Scorpid (PET!)
								i(240193),	-- Tentacle Spokes
							},
						}),
						o(499957, {	-- Corrupted Chest (Valley of Wisdom/Geya'rah)
							["coord"] = { 48.9, 58.1, RE_HORRIFIC_ORGRIMMAR },
							["g"] = {
								i(242648),	-- Black Blood Coagulate
								i(232917),	-- Faceless Mask of the Burned Bridge (QS!/QI!)
								i(240193),	-- Tentacle Spokes
								i(235797),	-- Void-Scarred Tallstrider Chick (PET!)
								i(240178),	-- Voidflame-Resistant Hide
							},
						}),
						o(499958, {	-- Corrupted Chest (Valley of Honor/Rexxar)
							["coord"] = { 48.1, 58.1, RE_HORRIFIC_ORGRIMMAR },
							["g"] = {
								i(242648),	-- Black Blood Coagulate
								i(174457),	-- C'Thuffer (PET!)
								i(232918),	-- Faceless Mask of the Daredevil (QS!/QI!)
								i(239106),	-- Shadow Infused Onyx
								i(240180),	-- Void-Scarred Boarhide (PET!)
							},
						}),
						o(499960, {	-- Corrupted Chest (Vale of Spirits/Zekhan)
							["coord"] = { 48.8, 58.3, RE_HORRIFIC_ORGRIMMAR },
							["g"] = {
								i(173726),	-- Void-Scarred Toad (PET!)
								i(174924),	-- Void-Touched Souvenir Totem (TOY!)
								i(240178),	-- Voidflame-Resistant Hide
							},
						}),
						o(499954, {	-- Corrupted Chest (Valley of Strength/Thrall chest)
							["coord"] = { 48.5, 58.7, RE_HORRIFIC_ORGRIMMAR },
							["g"] = {
								i(174461),	-- Anomalus (PET!)
								i(239106),	-- Shadow Infused Onyx
								i(174646),	-- Void-Scarred Pup (PET!)
							},
						}),
					}),
					n(RARES, {
						n(241024, {	-- Big Keech <Rare Antiquities>
							["coord"] = { 72.4, 35.7, RE_HORRIFIC_ORGRIMMAR },
							["g"] = {
								i(238922),	-- Design: Voice-Crystal Panther (RECIPE!)
								i(238924),	-- Void-Bound Orb of Mystery
							},
						}),
						n(241702, {	-- Gamon <Hero of Orgrimmar>
							["description"] = "Interact with his axe on the table on the right portion of the first floor of the Broken Tusk inn at the Valley of Strength",
							--["coord"] = { X, Y, RE_HORRIFIC_ORGRIMMAR },
							["g"] = {
								i(239158),	-- Nemesis Shard (GAMON)
							},
						}),
						n(238836, {	-- Void-Scarred Wolf
							["description"] = "Interact with Wolf Rider gear in the Valleys of Honor and Wisdom to gain a stacking buff, then interact with a wolf rug at the Drag's leatherworking shop to spawn the rare.\n\nWolf rider packs are only visible with at least one mask active.",
							["providers"] = {
								{ "o", 519487 },	-- Wolf Saddle (Honor)
								{ "o", 519559 },	-- Wolf Tack (Wisdom)
								{ "n", 238836 },	-- Void-Scarred Wolf
							},
							["coords"] = {
								{ 67.2, 36.2, RE_HORRIFIC_ORGRIMMAR },	-- Wolf Saddle (519487)
								{ 39.2, 49.5, RE_HORRIFIC_ORGRIMMAR },	-- Wolf Tack (519559)
								{ 60.8, 54.7, RE_HORRIFIC_ORGRIMMAR },	-- Wolf Rug
							},
							["g"] = { i(235706) },	-- Void-Scarred Pack Mother's Harness (MOUNT!)
						}),
						n(238145, {	-- Void-Scarred Wyvern Matriarch
							["description"] = "Clear the Valley of Wisdom to access the elevator up to the Skyway. Defeat waves of Void-Scarred Wyverns until the matriarch spawns.\n\nThe path up to the Skyway will remain blocked without at least 3 masks active.",
							["crs"] = {
								238054,	-- Void Scarred Cub
								238098,	-- Void-Scarred Wyvern
							},
							["g"] = { i(235707) },	-- Reins of the Void-Scarred Windrider (MOUNT!)
						}),
					}),
					n(TREASURES, {
						o(342098, {	-- Coifcurl's Close Shave Kit
							["description"] = "Requires entering the Valley of Spirits. The chest is inside the barber shop on the right.",
							["coord"] = { 40.5, 60.3, RE_HORRIFIC_ORGRIMMAR },
							["g"] = { i(174920) },	-- Coifcurl's Close Shave Kit (TOY!)
						}),
						o(529677, {	-- Void-Forged Engine Block
							["coord"] = { 56.9, 56.8, RE_HORRIFIC_ORGRIMMAR },
							["questID"] = 90526,
							["g"] = { i(240189) },	-- Void-Forged Engine Block
						}),
					}),
				},
			}),
			header(HEADERS.Achievement, 41853, {	-- Horrific Vision of Stormwind
				["maps"] = { RE_HORRIFIC_STORMWIND },
				["g"] = {
					n(ACHIEVEMENTS, {
						ach(41853),	-- Horrific Vision of Stormwind
						ach(41854),	-- The Even More Horrific Vision of Stormwind
						ach(41855),	-- The Most Horrific Vision of Stormwind
						ach(41964),	-- Beyond the Most Horrific Vision of Stormwind
					}),
					n(SCENARIO_COMPLETION, {
						o(499031, {	-- Corrupted Chest (Trade District/Wyrmbane)
							["coord"] = { 41.3, 34.1, RE_HORRIFIC_STORMWIND },
							["g"] = {
								i(240193),	-- Tentacle Spokes
								i(235793),	-- Void-Scarred Parrot (PET!)
							},
						}),
						o(499026, {	-- Corrupted Chest (Dwarven District/Kelsey)
							["coord"] = { 41.9, 34.2, RE_HORRIFIC_STORMWIND },
							["g"] = {
								i(240178),	-- Voidflame-Resistant Hide
								i(174460),	-- Void-Scarred Rat (PET!)
							},
						}),
						o(499028, {	-- Corrupted Chest (Mage Quarter/Umbric)
							["coord"] = { 41.0, 33.9, RE_HORRIFIC_STORMWIND },
							["g"] = {
								i(242648),	-- Black Blood Coagulate
								i(240186),	-- Depleted Void Crystal
								i(232919),	-- Faceless Mask of Dark Imagination (QI!/QS!)
								i(174458),	-- Void-Scarred Hare (PET!)
							},
						}),
						o(499029, {	-- Corrupted Chest (Old Town/Valeera)
							["coord"] = { 42.1, 33.9, RE_HORRIFIC_STORMWIND },
							["g"] = {
								i(242648),	-- Black Blood Coagulate
								i(235794),	-- Eye of Chaos (PET!)
								i(232920),	-- Faceless Mask of the Pained (QI!/QS!)
								i(240183),	-- Twisted Skull-Scythe Handlebars
								i(239105),	-- Unusual Gems
							},
						}),
						o(499022, {	-- Corrupted Chest (Cathedral/Alleria)
							["coord"] = { 41.6, 34.4, RE_HORRIFIC_STORMWIND },
							["g"] = {
								i(239106),	-- Shadow Infused Onyx
								i(174459),	-- Void-Scarred Cat (PET!)
							},
						}),
					}),
					n(RARES, {
						n(158284, {	-- Craggle Wobbletop <Toys and Novelties>
							["description"] = "Craggle pats around outside of the Trade District, so selecting a Corrupted or Lost Area is not required.  You need to kill the shielding robot to damage him, which requires using player CC or dropping a Toy Train Set in Craggle's path and pulling the bot while he's distracted.",
							["coords"] = {
								{ 58.4, 77.2, RE_HORRIFIC_STORMWIND },
								{ 56.6, 67.6, RE_HORRIFIC_STORMWIND },
								{ 62.6, 61.2, RE_HORRIFIC_STORMWIND },
								{ 69.6, 68.2, RE_HORRIFIC_STORMWIND },
							},
							["g"] = { i(174926) },	-- Overly Sensitive Void Spectacles (TOY!)
						}),
						n(241698, {	-- Hogger
							["description"] = "Interact with his WANTED poster just to the right of the entrance to the Mage Quarter area",
							--["coord"] = { X, Y, RE_HORRIFIC_STORMWIND },
							["g"] = {
								i(239157),	-- Nemesis Shard (HOGGER)
							},
						}),
						n(241718, {	-- Vengeful Voidspeaker
							--["coord"] = { X, Y, RE_HORRIFIC_STORMWIND },
							["g"] = {
								i(238260, {	-- Faceless Mask of Vengeance (QI!/QS!)
									["description"] = "Need at least one mask active",
								}),
							},
						}),
						n(242639, {	-- Voidfire Deathcycle Frame
							["description"] = "Must be tagged to start progress towards unlocking the mount, will only be visible with at least one mask active.",
							["coord"] = { 62.5, 32.0, RE_HORRIFIC_STORMWIND },
							["cr"] = 242570,	-- Haymar the Devout
							["questID"] = 90129,
						}),
						n(238079, {	-- Void-Forged Stallion
							["description"] = "Interact with Cursed Horseshoes around Stormwind's districts to gain a stacking buff, visit the blacksmithing area in the Dwarven District to summon the rare when you have 4 stacks.\n\nHorseshoes are only visible with at least one mask active.",
							["providers"] = {
								{ "o", 517344 },	-- Cursed Horseshoe (Cathedral)
								{ "o", 517350 },	-- Cursed Horseshoe (Old Town)
								{ "o", 517348 },	-- Cursed Horseshoe (Trade)
								{ "o", 517349 },	-- Cursed Horseshoe (Mage)
							},
							["coords"] = {
								{ 56.0, 55.5, RE_HORRIFIC_STORMWIND },	-- Cathedral Horseshoe (517344)
								{ 75.5, 56.7, RE_HORRIFIC_STORMWIND },	-- Old Town Horseshoe (517350)
								{ 61.5, 75.5, RE_HORRIFIC_STORMWIND },	-- Trade Horseshoe (517348)
								{ 50.9, 84.0, RE_HORRIFIC_STORMWIND },	-- Mage Horseshoe (517349)
								{ 63.0, 37.3, RE_HORRIFIC_STORMWIND },	-- Anvil
							},
							["g"] = { i(235705) },	-- Void-Forged Stallion's Reins (MOUNT!)
						}),
						header(HEADERS.Item, 235700, {	-- Reins of the Void-Scarred Gryphon
							n(237918, {	-- Claw Marked Bowl
								["description"] = "Interact with the nearby Ripped Note to read the clue then place the desired item into the bowl to spawn the rare.\n...fish: Fresh Fillet\n...fungus: Chopped Mycobloom\n...meat that has been spiced: Spiced Meat Stock\n...steak: Portioned Steak\n\nThe note and bowl are only visible with at least three masks active.",
								["coord"] = { 66.0, 70.8, RE_HORRIFIC_STORMWIND },
								["cost"] = {
									{ "i",  222737, 1 },	-- 1x Chopped Mycobloom
									{ "i",  222741, 1 },	-- 1x Fresh Fillet
									{ "i",  222738, 1 },	-- 1x Portioned Steak
									{ "i",  222739, 1 },	-- 1x Spiced Meat Stock
								},
							}),
							n(237991, {	-- Void-Scarred Gryphon
								["provider"] = { "n", 237918 },	-- Claw Marked Bowl
								["g"] = { i(235700) },	-- Reins of the Void-Scarred Gryphon (MOUNT!)
							}),
						}),
					}),
					n(TREASURES, {
						i(240191, {	-- Magic-Lined Manifold TODO - Almost certainly has an object container
							["coord"] = { 61.5, 72.7, RE_HORRIFIC_STORMWIND },
						}),
						i(174928, {	-- Rotten Apple (TOY!)
							["description"] = "Repeatedly click the bouncing apples at the coordinates provided.  Supposedly, clicking them 100 times will guarantee that the toy is in your final chest, but any click should give you a chance if you're running short on time.",
							["coords"] = {
								{ 57.0, 55.0, RE_HORRIFIC_STORMWIND },
								{ 60.0, 58.0, RE_HORRIFIC_STORMWIND },
								{ 65.0, 62.0, RE_HORRIFIC_STORMWIND },
								{ 72.0, 67.0, RE_HORRIFIC_STORMWIND },
								{ 67.0, 51.0, RE_HORRIFIC_STORMWIND },
							},
						}),
						o(343698, {	-- Void-Touched Skull
							["description"] = "Behind the orphanage in Cathedral Square.  It's on the ground next to some crates, is very small, and doesn't have the typical interactable sparkle.",
							["coord"] = { 58.9, 52.9, RE_HORRIFIC_STORMWIND },
							["g"] = { i(174921) },	-- Void-Touched Skull (TOY!)
						}),
					}),
				},
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_5 } }, {
	n(HORRIFIC_VISIONS_REVISITED, {
		-- Chest unlocks are shared between Orgrimmar and Stormwind, beside main one?
		q(87430),	-- The Drag / Dwarven District
		q(87431),	-- Valley of Spirits / Trade District
		q(87427),	-- ?? / Mage Quarter
		q(87429),	-- ?? / Old Town
		-- Orgrimmar
		q(87432),	-- after killing Thrall (main chest unlock hqt?), doesn't affected with additional wings clearing
		q(85951),	-- Valley of Spirits
		q(85953),	-- The Drag
		q(85950),	-- Valley of Honor
		q(85952),	-- Valley of Wisdom
		-- Stormwind
		q(87428),	-- after Alleria kill (main chest unlock hqt?)
		q(85829),	-- Dwarven District
		q(85830),	-- Trade District
		q(85831),	-- Mage Quarter
		q(85832),	-- Old Town
		--
		--q(90528),	-- either hqt to pop thing for moto or mask drop hqt after clearing up old town (with Long Night mask)
		--q(90524),	-- either hqt to pop thing for moto or mask drop hqt after clearing up mage quarter (with Long Night mask)
		--q(90531),	-- pop with delay after Alleria was killed (all district was cleared with Long Night mask), when was moved into chests room
		--^ one of it could be tribute upgrade?
		q(87389),	-- pop after finishing scenario first time (during quest) // lowest reward hqt?
		q(88905),	-- pop after finishing scenario first time (during quest) // lowest reward hqt?
		--87389 & 88905 also pop on 2nd run (without quests in stormwind)
		--q(88906),	-- ???
		--q(88907),	-- All district was cleared (without masks), pop after killing Alleria // one of it mask sourceQuest
		--q(87387),	-- All district was cleared (without masks), pop after killing Alleria // or veteran vendor unlock? / champion piece lockout?
		--q(88908),	-- All district was cleared  (with Long Night mask), pop after killing Alleria // one of it could be champion vendor unlock?
		--q(87382),	-- All district was cleared  (with Long Night mask), pop after killing Alleria // one of it could be champion vendor unlock? / champion piece lockout?
		--q(87384),	-- All district was cleared  (3 masks), pop after killing Thrall // reward lockout questID?
		--q(88910),	-- All district was cleared  (3 masks), pop after killing Thrall // reward lockout questID?
		--q(87385),	-- All district was cleared  (4 masks), pop after killing Thrall // reward lockout questID?
		--q(88911),	-- All district was cleared  (4 masks), pop after killing Thrall // reward lockout questID?
		--q(87386),	-- All district was cleared  (5 masks), pop after killing Thrall // reward lockout questID?
		--q(88912),	-- All district was cleared  (5 masks), pop after killing Thrall // reward lockout questID?
		--
		--q(90530),	-- pop after clearing Valley of Wisdom with 2 masks (new masks sourceQuest?)
		--q(90529),	-- pop after killing Rexxar with 3 masks (mask sourceQuest?)
		--
		-- q(90709),	-- after using itemID 242622 (Warbound Purifying Kit)
		-- q(90710),	-- after using itemID 242623 (Enchanted Warbound Purifying Kit)

		-- combine things for byke
		--q(),	--
		--q(),	--
		--q(),	--
		--q(),	--
		--q(),	--
	}),
})));