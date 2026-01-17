-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
HORRIFIC_VISIONS_REVISITED = createHeader({
	readable = "Horrific Visions Revisited",
	icon = [[~_.asset("Feature_Horrific Visions")]],
	text = {
		en = "Horrific Visions Revisited",
		de = "Verstörende Visionen erneut erlebt",
		es = "Regreso a las visiones horripilantes",
		mx = "Visiones horribles revividas",
		fr = "Visions horrifiques redécouvertes",
		it = "Visioni Orripilanti Rivisitate",
		ko = "다시 찾은 공포의 환영",
		pt = "Visões Horrendas Revividas",
		ru = "Возвращение в жуткие видения",
		cn = "重访惊魂幻象",
		tw = "重返恐怖幻象",
	},
});

local RE_HORRIFIC_ORGRIMMAR = 2403;	-- Vision of Orgrimmar
local RE_HORRIFIC_STORMWIND = 2404;	-- Vision of Stormwind
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDown({ ["timeline"] = { ADDED_11_1_5 } }, {
	n(HORRIFIC_VISIONS_REVISITED, {
		["maps"] = {
			-- RE_HORRIFIC_ORGRIMMAR,
			-- RE_HORRIFIC_STORMWIND,
			DORNOGAL,
		},
		["cr"] = 238254,	-- Portal to Horrific Visions
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(41897),	-- A Monumental Amount of Mementos
				ach(41898),	-- A Mountain of Mementos
				ach(41873),	-- Incremental Progress
				ach(41889),	-- Horrific Masquerade
				ach(41953, {	-- Mad World
					["timeline"] = { ADDED_11_1_5, REMOVED_12_0_0 },
					["groups"] =  {
						title(419),	-- <Name>, the Faceless One
					},
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
					["groups"] = { i(235709) },	-- Ny'alothan Shadow Worm
				}),
				ach(41983),	-- Memento Mania
				ach(41896),	-- Memento Mori
				ach(41928, {	-- Reeking of Visions
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						41876,	-- The Even More Horrific Vision of Orgrimmar
						41854,	-- The Even More Horrific Vision of Stormwind
					}},
					["groups"] = { i(174463) },	-- Reek (PET!)
				}),
				ach(41859),	-- Thanks For The Mementos
				ach(41929, {	-- Through the Depths of Visions
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						41879,	-- The Most Horrific Vision of Orgrimmar
						41855,	-- The Most Horrific Vision of Stormwind
						41725,	-- We Have the Memories
					}},
					["groups"] = { i(174654) },	-- Black Serpent of N'Zoth (MOUNT!)
				}),
				ach(41971, {	-- Through the Looking Glass
					["timeline"] = { ADDED_11_1_5, REMOVED_12_0_0 },
					["groups"] =  {
						title(631),	-- <Name> the Mad
					},
				}),
				ach(41725),	-- We Have the Memories
			}),
			n(QUESTS, {
				-- Intro --
				q(86706, {	-- Seeking Knowledge of the Past
					["description"] = "May need to be acquired from the Adventure Journal if not automatically given on login",
					["provider"] = { "n", 238129 },	-- Researcher Onermu
					["coord"] = { 42.4, 28.3, DORNOGAL },
					["isBreadcrumb"] = true,
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
						{ 53.2, 50.3, RE_HORRIFIC_STORMWIND },
					},
				}),
				-- Corruptions quest
				q(90719, {	-- Borrowing Corruption
					-- ["sourceQuests"] = { ??? },	-- TODO: it was just up with some of new builds
					["provider"] = { "n", 238136 },	-- Augermu
					["coord"] = { 35.2, 68.6, DORNOGAL },
					["groups"] = {
						i(238407),	-- Black Blood Residue
						i(238678),	-- Lesser Rune of Echoing Void
						i(239084),	-- Lesser Rune of Gushing Wound
						i(239078),	-- Lesser Rune of Infinite Stars
						i(239088),	-- Lesser Rune of the Twisted Appendage
						i(239093),	-- Lesser Rune of the Void Ritual
						i(238403),	-- Lesser Rune of Twilight Devastation
					},
				}),
				q(90731, {	-- Enhancing Corruption
					["sourceQuests"] = { 90719 },	-- Borrowing Corruption
					["provider"] = { "n", 238136 },	-- Augermu
					["coord"] = { 35.2, 68.6, DORNOGAL },
					["groups"] = {
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
					-- ["sourceQuests"] = { ?? },	-- ??
					["provider"] = { "i", 232919 },	-- Faceless Mask of the Dark Imagination (QI!/QS!)
				}),
				q(86801, {	-- Faceless Mask of Multitudes
					["provider"] = { "i", 235414 },	-- Faceless Mask of Multitudes (QS!/QI!)
				}),
				q(86152, {	-- Faceless Mask of the Daredevil
					-- ["sourceQuests"] = { 90529 },	-- hqt?
					["provider"] = { "i", 232918 },	-- Faceless Mask of the Daredevil (QS!/QI!)
				}),
				q(86151, {	-- Faceless Mask of the Burned Bridge
					-- ["sourceQuests"] = { 90530 },	-- hqt?
					["provider"] = { "i", 232917 },	-- Faceless Mask of the Burned Bridge (QI!/QS!)
				}),
				q(86155, {	-- Faceless Mask of the Long Night
					-- ["sourceQuests"] = { ?? },	-- ??
					["provider"] = { "i", 232921 },	-- Faceless Mask of the Long Night (QI!/QS!)
				}),
				q(86154, {	-- Faceless Mask of the Pained
					-- ["sourceQuests"] = { ?? },	-- ??
					["provider"] = { "i", 232920 },	-- Faceless Mask of the Pained (QI!/QS!)
				}),
				q(88652, {	-- Faceless Mask of the Nemesis
					-- ["sourceQuests"] = { ?? },	-- ??
					["provider"] = { "i", 237434 },	-- Faceless Mask of the Nemesis (QI!/QS!)
				}),
				q(88903, {	-- Faceless Mask of Vengeance
					-- ["sourceQuests"] = { ?? },	-- ??
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
					["groups"] = { i(223265) },	-- Nesting Swarmite (MOUNT!)
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
					["groups"] = { i(174653) },	-- Mail Muncher (MOUNT!)
				}),
			}),
			n(REWARDS, {
				["maps"] = { RE_HORRIFIC_ORGRIMMAR, RE_HORRIFIC_STORMWIND },
				["groups"] = {
					currency(3149),	-- Displaced Corrupted Mementos
					i(239106, {	-- Shadow Infused Onyx
						["description"] = "Chance to drop from any Horrific Vision reward chest with an active Mask.",
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
							i(236915),	-- Book of Dark Visions
							i(236917),	-- Dark Dreamer's Talisman
							i(236918),	-- Pulsating Void Disk
							i(236914),	-- Unbound Vision Journal
							i(236919),	-- Void Spike
							i(236916),	-- Void-Whittled Spike
						}),
					}),
				},
			}),
			n(TREASURES, {
				o(495367, {	-- Corrupted Chest (Participation)
					["description"] = "Default Chest if you don't clear the central district.",
					["coords"] = {
						{ 41.6, 34.3, RE_HORRIFIC_STORMWIND },
						{ 48.4, 58.6, RE_HORRIFIC_ORGRIMMAR },
					},
				}),
				o(527842, {	-- Black Blood Infused Bar
					["description"] = "Can be looted once per run",
					["coords"] = {
						{ 45.0, 52.7, RE_HORRIFIC_ORGRIMMAR },	-- Alex: can confirm this coord, questID & object for it
						{ 63.7, 37.1, RE_HORRIFIC_STORMWIND },
					},
					["questID"] = 89472,
					["repeatable"] = true,
					["groups"] = { i(239107) },	-- Black Blood Infused Bar
				}),
			}),
			n(SPECIAL, {
				i(237434, {	-- Faceless Mask of the Nemesis (QI!/QS!)
					["cost"] = {
						{ "i", 239158, 1 },	-- Nemesis Shard (GAMON)
						{ "i", 239157, 1 },	-- Nemesis Shard (HOGGER)
					},
				}),
				header(HEADERS.Item, 211089, {	-- Voidfire Deathcycle
					["description"] = "Collect each reagent and craft them together into cycle parts, return the parts to the bike in Dornogal to earn your own.\n\nEach special reagent is available from Visions with an active Mask.",
					["sourceQuest"] = 90129,	-- Voidfire Deathcycle Frame Tagged For Extraction
					["coord"] = { 34.0, 68.2, DORNOGAL },
					["groups"] = {
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
						---
						hqt(90131, {	-- Add the Boarhide Deathcycle Seat to the Voidfire Deathcycle Frame
							["name"] = "Add the Boarhide Deathcycle Seat to the Voidfire Deathcycle Frame",
							["provider"] = { "n", 242545 },	-- Voidfire Deathcycle Frame
							["cost"] = {{ "i", 240181, 1 }},	-- 1x Boarhide Deathcycle Seat
						}),
						hqt(90523, {	-- Add the Deathcycle Exhaust System to the Voidfire Deathcycle Frame
							["name"] = "Add the Deathcycle Exhaust System to the Voidfire Deathcycle Frame",
							["provider"] = { "n", 242545 },	-- Voidfire Deathcycle Frame
							["cost"] = {{ "i", 240190, 1 }},	-- 1x Deathcycle Exhaust System
						}),
						hqt(90135, {	-- Add the Pulsing Void Crystal to the Voidfire Deathcycle Frame
							["name"] = "Add the Pulsing Void Crystal to the Voidfire Deathcycle Frame",
							["provider"] = { "n", 242545 },	-- Voidfire Deathcycle Frame
							["cost"] = {{ "i", 240185, 1 }},	-- 1x Pulsing Void Crystal
						}),
						hqt(90132, {	-- Add the Skull-Scythe Handlebars to the Voidfire Deathcycle Frame
							["name"] = "Add the Skull-Scythe Handlebars to the Voidfire Deathcycle Frame",
							["provider"] = { "n", 242545 },	-- Voidfire Deathcycle Frame
							["cost"] = {{ "i", 240182, 1 }},	-- 1x Skull-Scythe Handlebars
						}),
						hqt(90133, {	-- Add the Void-Forged Inline Four Engine to the Voidfire Deathcycle Frame
							["name"] = "Add the Void-Forged Inline Four Engine to the Voidfire Deathcycle Frame",
							["provider"] = { "n", 242545 },	-- Voidfire Deathcycle Frame
							["cost"] = {{ "i", 240188, 1 }},	-- 1x Void-Forged Inline Four Engine
						}),
						hqt(90130, {	-- Add both Voidflame Wheels to the Voidfire Deathcycle Frame
							["name"] = "Add both Voidflame Wheels to the Voidfire Deathcycle Frame",
							["provider"] = { "n", 242545 },	-- Voidfire Deathcycle Frame
							["cost"] = {{ "i", 240179, 2 }},	-- 2x Voidflame Wheel
						}),
						i(211089, {	-- Voidfire Deathcycle
							["questID"] = 90136,
							["provider"] = { "n", 242545 },	-- Voidfire Deathcycle Frame
							["sourceQuests"] = {
								90131,	-- Boarhide Deathcycle Seat
								90523,	-- Deathcycle Exhaust System
								90135,	-- Pulsing Void Crystal
								90132,	-- Skull-Scythe Handlebars
								90133,	-- Void-Forged Inline Four Engine
								90130,	-- Voidflame Wheels
							},
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(COMMON_VENDOR_ITEMS, {
					["crs"] = {
						238544,	-- Chreni "HEROIC/Hero Quality Vendor"
						238546,	-- Rhythferr "NORMAL/Champion Quality Vendor"
						238545,	-- TickTak "LFR/Veteran Quality Vendor"
					},
					["groups"] = {
						i(236892, {	-- Void-Touched Battle Staff
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236896, {	-- Void-Touched Blade
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236884, {	-- Void-Touched Bludgeon
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236894, {	-- Void-Touched Bow
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236901, {	-- Void-Touched Broadsword
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236900, {	-- Void-Touched Claws
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236898, {	-- Void-Touched Cleaver
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236903, {	-- Void-Touched Glaive
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236885, {	-- Void-Touched Gladius
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236902, {	-- Void-Touched Greatsword
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236897, {	-- Void-Touched Hacker
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236904, {	-- Void-Touched Lantern
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236888, {	-- Void-Touched Occular
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236891, {	-- Void-Touched Polearm
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236883, {	-- Void-Touched Pummeler
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236882, {	-- Void-Touched Ritual Knife
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236887, {	-- Void-Touched Sharpshooter
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236905, {	-- Void-Touched Shield
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236881, {	-- Void-Touched Shank
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236895, {	-- Void-Touched Spellblade
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236890, {	-- Void-Touched Spear
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236886, {	-- Void-Touched Sword
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236893, {	-- Void-Touched Stave
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236899, {	-- Void-Touched Wand
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
						i(236889, {	-- Void-Touched Waraxe
							["cost"] = {{"c", 3149, 500}},	-- 500x Displaced Corrupted Mementos
						}),
					},
				}),
				n(238136, {	-- Augermu
					["sourceQuest"] = 90719,	-- Borrowing Corruption
					["coord"] = { 35.2, 68.6, DORNOGAL },
					["groups"] = sharedData({ ["cost"] = {{"c", 3149, 500}} }, {	-- 500x Displaced Corrupted Mementos
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
				n(238544, {	-- Chreni "HEROIC/Hero Quality Vendor"
					["sourceAchievement"] = 41874,	-- Symphony of Masks
					["coord"] = { 33.8, 68.6, DORNOGAL },
					["groups"] = {
						i(242623, {	-- Enchanted Warbound Purifying Kit
							["cost"] = {{"c", 3149, 2000 }},	-- 2000x Displaced Corrupted Mementos
						}),
					},
				}),
				n(238546, {	-- Rhythferr "NORMAL/Champion Quality Vendor"
					["sourceAchievement"] = 41857,	-- Masked Soliloquy
					["coord"] = { 34.1, 68.5, DORNOGAL },
					["groups"] = {
						i(242622, {	-- Warbound Purifying Kit
							["cost"] = {{"c", 3149, 1000 }},	-- 1000x Displaced Corrupted Mementos
						}),
					},
				}),
				n(238545, {	-- TickTak "LFR/Veteran Quality Vendor"
					["coord"] = { 33.9, 68.8, DORNOGAL },
					["sourceAchievement"] = 41873,	-- Incremental Progress
				}),
				n(238138, {	-- Torie
					["coord"] = { 34.4, 68.4, DORNOGAL },
					["groups"] = {
						i(238666, {	-- Ashjra'kamas, The Corrupted
							["cost"] = {{ "c", 3149, 1000 }},
						}),
						i(238667, {	-- Ashjra'kamas, The Purified
							["cost"] = {{ "c", 3149, 1500 }},
						}),
						i(238668, {	-- Ashjra'kamas, The Celestial
							["cost"] = {{ "c", 3149, 2000 }},
						}),
						i(174361, {	-- Black Dragonscale Backpack
							["cost"] = {{ "c", 3149, 2000 }},
						}),
						i(238255, {	-- Bronze Dragonscale Backpack
							["cost"] = {{ "c", 3149, 5000 }},
						}),
						i(235711, {	-- Corruption of the Aspects (MOUNT!)
							["cost"] = {{ "c", 3149, 40000 }},
						}),
						i(235980, {	-- Scourge of the Aspects (PET!)
							["cost"] = {{ "c", 3149, 5000 }},
						}),
						i(174770, {	-- Wicked Swarmer (MOUNT!)
							["cost"] = {{ "c", 3149, 20000 }},
						}),
						-- Cloth
						i(236976, {	-- Vision Manipulator's Cinch
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(237008, {	-- Vision Manipulator's Cloak
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236994, {	-- Vision Manipulator's Cowl
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236973, {	-- Vision Manipulator's Footwraps
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236974, {	-- Vision Manipulator's Handwraps
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236975, {	-- Vision Manipulator's Leggings
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236995, {	-- Vision Manipulator's Mantle
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236993, {	-- Vision Manipulator's Robe
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236977, {	-- Vision Manipulator's Wristwraps
							["cost"] = {{ "c", 3149, 200 }},
						}),
						-- Leather
						i(236996, {	-- Chestguard of the Insatiable Vision
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(237007, {	-- Cloak of the Insatiable Vision
							["cost"] = {{ "c", 3149, 400 }},
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
						-- Mail
						i(236986, {	-- Vision Tormentor's Belt
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236999, {	-- Vision Tormentor's Breastplate
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236983, {	-- Vision Tormentor's Footguards
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236984, {	-- Vision Tormentor's Handguards
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236985, {	-- Vision Tormentor's Legguards
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(237000, {	-- Vision Tormentor's Mask
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(237001, {	-- Vision Tormentor's Spaulders
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(237006, {	-- Vision Tormentor's Tentacles
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236987, {	-- Vision Tormentor's Vambraces
							["cost"] = {{ "c", 3149, 200 }},
						}),
						-- Plate
							i(236992, {	-- Malignant Vision's Armguards
							["cost"] = {{ "c", 3149, 200 }},
						}),
						i(237002, {	-- Malignant Vision's Chestplate
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236989, {	-- Malignant Vision's Crushers
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(237005, {	-- Malignant Vision's Drape
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236991, {	-- Malignant Vision's Greatbelt
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(237003, {	-- Malignant Vision's Headguard
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(237004, {	-- Malignant Vision's Spaulders
							["cost"] = {{ "c", 3149, 600 }},
						}),
						i(236988, {	-- Malignant Vision's Stompers
							["cost"] = {{ "c", 3149, 400 }},
						}),
						i(236990, {	-- Malignant Vision's Wargreaves
							["cost"] = {{ "c", 3149, 400 }},
						}),
					},
				}),
			}),
			header(HEADERS.Achievement, 41875, {	-- Horrific Vision of Orgrimmar
				["maps"] = { RE_HORRIFIC_ORGRIMMAR },
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(41875),	-- Horrific Vision of Orgrimmar
						ach(41876),	-- The Even More Horrific Vision of Orgrimmar
						ach(41879),	-- The Most Horrific Vision of Orgrimmar
						ach(41965),	-- Beyond the Most Horrific Vision of Orgrimmar
					}),
					n(SCENARIO_COMPLETION, {
						o(499956, {	-- Corrupted Chest (The Drag/Garona)
							["description"] = "Bonus Chest for completing The Drag Objective/Garona.",
							["coord"] = { 48.5, 58.3, RE_HORRIFIC_ORGRIMMAR },
							["groups"] = {
								i(235795),	-- Void-Scarred Scorpid (PET!)
								i(240193),	-- Tentacle Spokes
							},
						}),
						o(499957, {	-- Corrupted Chest (Valley of Wisdom/Geya'rah)
							["description"] = "Bonus Chest for completing the Valley of Wisdom/Geya'rah.",
							["coord"] = { 48.9, 58.1, RE_HORRIFIC_ORGRIMMAR },
							["groups"] = {
								i(242648),	-- Black Blood Coagulate
								i(232917),	-- Faceless Mask of the Burned Bridge (QS!/QI!)
								i(240193),	-- Tentacle Spokes
								i(235797),	-- Void-Scarred Tallstrider Chick (PET!)
								i(240178),	-- Voidflame-Resistant Hide
							},
						}),
						o(499958, {	-- Corrupted Chest (Valley of Honor/Rexxar)
							["description"] = "Bonus Chest for completing the Valley of Honor Objective/Rexxar.",
							["coord"] = { 48.1, 58.1, RE_HORRIFIC_ORGRIMMAR },
							["groups"] = {
								i(242648),	-- Black Blood Coagulate
								i(174457),	-- C'Thuffer (PET!)
								i(232918),	-- Faceless Mask of the Daredevil (QS!/QI!)
								i(240180),	-- Void-Scarred Boarhide (PET!)
							},
						}),
						o(499960, {	-- Corrupted Chest (Vale of Spirits/Zekhan)
							["description"] = "Bonus Chest for completing the Vale of Spirits Objective/Zekhan.",
							["coord"] = { 48.8, 58.3, RE_HORRIFIC_ORGRIMMAR },
							["groups"] = {
								i(173726),	-- Void-Scarred Toad (PET!)
								i(174924),	-- Void-Touched Souvenir Totem (TOY!)
								i(240178),	-- Voidflame-Resistant Hide
							},
						}),
						o(499954, {	-- Corrupted Chest (Valley of Strength/Thrall chest)
							["description"] = "Chest for completing Valley of Strength Objective/Thrall.",
							["coord"] = { 48.5, 58.7, RE_HORRIFIC_ORGRIMMAR },
							["groups"] = {
								i(174461),	-- Anomalus (PET!)
								i(174646),	-- Void-Scarred Pup (PET!)
							},
						}),
					}),
					n(RARES, {
						n(241024, {	-- Big Keech <Rare Antiquities>
							["coord"] = { 72.4, 35.7, RE_HORRIFIC_ORGRIMMAR },
							["groups"] = {
								i(238922),	-- Design: Voice-Crystal Panther (RECIPE!)
								i(238924),	-- Void-Bound Orb of Mystery
							},
						}),
						n(241702, {	-- Gamon <Hero of Orgrimmar>
							["description"] = "Interact with his axe on the table on the right portion of the first floor of the Broken Tusk inn at the Valley of Strength",
							["coord"] = { 54.7, 79.0, RE_HORRIFIC_ORGRIMMAR },
							["groups"] = { i(239158) },	-- Nemesis Shard (GAMON)
						}),
						n(238836, {	-- Void-Scarred Wolf
							["description"] = "Interact with Wolf Rider gear in the Valleys of Honor and Wisdom to gain a stacking buff, then interact with a wolf rug at the Drag's leatherworking shop to spawn the rare.\n\nWolf rider packs are only visible with an active Mask.",
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
							["groups"] = { i(235706) },	-- Void-Scarred Pack Mother's Harness (MOUNT!)
						}),
						n(238145, {	-- Void-Scarred Wyvern Matriarch
							["description"] = "Clear the Valley of Wisdom to access the elevator up to the Skyway. Defeat waves of Void-Scarred Wyverns until the matriarch spawns.\n\nThe path up to the Skyway will remain blocked without at least 3 masks active.",
							["coords"] = {
								{ 48.9, 51.6, RE_HORRIFIC_ORGRIMMAR },	-- Elevator
								{ 49.8, 57.8, RE_HORRIFIC_ORGRIMMAR },	-- Rare
							},
							["crs"] = {
								238054,	-- Void Scarred Cub
								238098,	-- Void-Scarred Wyvern
							},
							["groups"] = { i(235707) },	-- Reins of the Void-Scarred Windrider (MOUNT!)
						}),
					}),
					n(TREASURES, {
						o(342098, {	-- Coifcurl's Close Shave Kit
							["description"] = "Requires entering the Valley of Spirits. The chest is inside the barber shop on the right.",
							["coord"] = { 40.5, 60.3, RE_HORRIFIC_ORGRIMMAR },
							["groups"] = { i(174920) },	-- Coifcurl's Close Shave Kit (TOY!)
						}),
						o(529677, {	-- Void-Forged Engine Block
							["coord"] = { 56.9, 56.8, RE_HORRIFIC_ORGRIMMAR },
							["questID"] = 90526,
							["groups"] = { i(240189) },	-- Void-Forged Engine Block
						}),
					}),
				},
			}),
			header(HEADERS.Achievement, 41853, {	-- Horrific Vision of Stormwind
				["maps"] = { RE_HORRIFIC_STORMWIND },
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(41853),	-- Horrific Vision of Stormwind
						ach(41854),	-- The Even More Horrific Vision of Stormwind
						ach(41855),	-- The Most Horrific Vision of Stormwind
						ach(41964),	-- Beyond the Most Horrific Vision of Stormwind
					}),
					n(SCENARIO_COMPLETION, {
						o(499031, {	-- Corrupted Chest (Trade District/Wyrmbane)
							["description"] = "Bonus Chest for completing the Trade District Objective/Wyrmbane.",
							["coord"] = { 41.3, 34.1, RE_HORRIFIC_STORMWIND },
							["groups"] = {
								i(240193),	-- Tentacle Spokes
								i(235793),	-- Void-Scarred Parrot (PET!)
							},
						}),
						o(499026, {	-- Corrupted Chest (Dwarven District/Kelsey)
							["description"] = "Bonus Chest for completing the Dwarven District Objective/Kelsey.",
							["coord"] = { 41.9, 34.2, RE_HORRIFIC_STORMWIND },
							["groups"] = {
								i(240178),	-- Voidflame-Resistant Hide
								i(174460),	-- Void-Scarred Rat (PET!)
							},
						}),
						o(499028, {	-- Corrupted Chest (Mage Quarter/Umbric)
							["description"] = "Bonus Chest for completing the Mage Quarter Objective/Umbric.",
							["coord"] = { 41.0, 33.9, RE_HORRIFIC_STORMWIND },
							["groups"] = {
								i(242648),	-- Black Blood Coagulate
								i(240186),	-- Depleted Void Crystal
								i(232919, {	-- Faceless Mask of Dark Imagination (QI!/QS!)
									["description"] = "Granted by completing Mage Quarter, with an active Mask.",
								}),
								i(174458),	-- Void-Scarred Hare (PET!)
							},
						}),
						o(499029, {	-- Corrupted Chest (Old Town/Valeera)
							["description"] = "Bonus Chest for completing the Old Town Objective/Valeera.",
							["coord"] = { 42.1, 33.9, RE_HORRIFIC_STORMWIND },
							["groups"] = {
								i(242648),	-- Black Blood Coagulate
								i(235794),	-- Eye of Chaos (PET!)
								i(232920, {	-- Faceless Mask of the Pained (QI!/QS!)
									["description"] = "Granted by completing Old Town, with an active Mask.",
								}),
								i(174932),	-- Illusion: Void Edge (ILLUSION!)
								i(240183),	-- Twisted Skull-Scythe Handlebars
								i(239105, {	-- Unusual Gems
									["description"] = "Can only drop if you have an active Mask and Void-Bound Orb of Mystery in your inventory!",
									["provider"] = { "i", 238924 },	-- Void-Bound Orb of Mystery
								}),
							},
						}),
						o(499022, {	-- Corrupted Chest (Cathedral/Alleria)
							["description"] = "Chest for completing the Cathedral Objective/Alleria.",
							["coord"] = { 41.6, 34.4, RE_HORRIFIC_STORMWIND },
							["groups"] = {
								i(232921, {	-- Faceless Mask of the Long Night (QI!/QS!)
									["description"] = "Granted by completing all five districts within a single visit.",
								}),
								i(235414, {	-- Faceless Mask of Multitudes (QS!/QI!)
									["description"] = "Granted by completing all five districts and killing every last NPC, with an active Mask.",
								}),
								i(174459),	-- Void-Scarred Cat (PET!)
							},
						}),
					}),
					n(RARES, {
						n(158284, {	-- Craggle Wobbletop <Toys and Novelties>
							["description"] = "Craggle pats around outside of the Trade District, so selecting a Corrupted or Lost Area is not required. You need to kill the shielding robot to damage him, which requires using player CC or dropping a Toy Train Set in Craggle's path and pulling the bot while he's distracted.",
							["coords"] = {
								{ 58.4, 77.2, RE_HORRIFIC_STORMWIND },
								{ 56.6, 67.6, RE_HORRIFIC_STORMWIND },
								{ 62.6, 61.2, RE_HORRIFIC_STORMWIND },
								{ 69.6, 68.2, RE_HORRIFIC_STORMWIND },
							},
							["groups"] = { i(174926) },	-- Overly Sensitive Void Spectacles (TOY!)
						}),
						n(241698, {	-- Hogger
							["description"] = "Interact with his WANTED poster just to the right of the entrance to the Mage Quarter area\n\nRequires an active Mask",
							["coord"] = { 55.8, 75.2, RE_HORRIFIC_STORMWIND },
							["groups"] = { i(239157) },	-- Nemesis Shard (HOGGER)
						}),
						n(241718, {	-- Vengeful Voidspeaker
							["coord"] = { 71.0, 70.0, RE_HORRIFIC_STORMWIND },
							["groups"] = {
								i(238260, {	-- Faceless Mask of Vengeance (QI!/QS!)
									["description"] = "Requires an active Mask",
								}),
							},
						}),
						n(242639, {	-- Voidfire Deathcycle Frame
							["description"] = "Must be tagged to start progress towards unlocking the mount\n\nRequires an active Mask",
							["coord"] = { 62.5, 32.0, RE_HORRIFIC_STORMWIND },
							["cr"] = 242570,	-- Haymar the Devout
							["questID"] = 90129,
						}),
						n(238079, {	-- Void-Forged Stallion
							["description"] = "Interact with Cursed Horseshoes around Stormwind's districts to gain a stacking buff, visit the blacksmithing area in the Dwarven District to summon the rare when you have 4 stacks.\n\nRequires an active Mask",
							["providers"] = {
								{ "o", 517344 },	-- Cursed Horseshoe (Cathedral)
								{ "o", 517350 },	-- Cursed Horseshoe (Old Town)
								{ "o", 517348 },	-- Cursed Horseshoe (Trade)
								{ "o", 517349 },	-- Cursed Horseshoe (Mage)
								{ "n", 238549 },	-- Forge
							},
							["coords"] = {
								{ 56.0, 55.5, RE_HORRIFIC_STORMWIND },	-- Cathedral Horseshoe (517344)
								{ 75.5, 56.7, RE_HORRIFIC_STORMWIND },	-- Old Town Horseshoe (517350)
								{ 61.5, 75.5, RE_HORRIFIC_STORMWIND },	-- Trade Horseshoe (517348)
								{ 50.9, 84.0, RE_HORRIFIC_STORMWIND },	-- Mage Horseshoe (517349)
								{ 63.0, 37.3, RE_HORRIFIC_STORMWIND },	-- Anvil
							},
							["groups"] = { i(235705) },	-- Void-Forged Stallion's Reins (MOUNT!)
						}),
						header(HEADERS.Item, 235700, {	-- Reins of the Void-Scarred Gryphon
							n(237918, {	-- Claw Marked Bowl
								["description"] = "Interact with the nearby Ripped Notes (top of ramp, right of inquisitor) to read the clues then place the desired item into the bowl and rattle it to spawn the rare.\n...fish: Fresh Fillet (Raw) / Skewered Fillet (Cooked)\n...fungus: Chopped Mycobloom (Raw) / Roasted Mycobloom (Cooked)\n...meat that has been spiced: Spiced Meat Stock (Raw) / Simple Stew (Cooked)\n...steak: Portioned Steak (Raw) / Unseasoned Field Steak (Cooked)\n\nThe notes and bowl are only visible with at least two masks active.",
								["coord"] = { 66.0, 70.8, RE_HORRIFIC_STORMWIND },
								["cost"] = {
									{ "i",  222737, 1 },	-- 1x Chopped Mycobloom
									{ "i",  222741, 1 },	-- 1x Fresh Fillet
									{ "i",  222738, 1 },	-- 1x Portioned Steak
									{ "i",  222705, 1 },	-- 1x Roasted Mycobloom
									{ "i",  222703, 1 },	-- 1x Simple Stew
									{ "i",  222702, 1 },	-- 1x Skewered Fillet
									{ "i",  222739, 1 },	-- 1x Spiced Meat Stock
									{ "i",  222704, 1 },	-- 1x Unseasoned Field Steak
								},
							}),
							n(237991, {	-- Void-Scarred Gryphon
								["provider"] = { "n", 237918 },	-- Claw Marked Bowl
								["groups"] = { i(235700) },	-- Reins of the Void-Scarred Gryphon (MOUNT!)
							}),
						}),
					}),
					n(TREASURES, {
						o(529673, {	-- Unclaimed Auction House Crate
							["questID"] = 90525,
							["coord"] = { 61.5, 72.7, RE_HORRIFIC_STORMWIND },
							["groups"] = {
								i(240191),	-- Magic-Lined Manifold
							},
						}),
						i(174928, {	-- Rotten Apple (TOY!)
							["description"] = "Repeatedly click the bouncing apples at the coordinates provided. Supposedly, clicking them 100 times will guarantee that the toy is in your final chest, but any click should give you a chance if you're running short on time.",
							["coords"] = {
								{ 57.0, 55.0, RE_HORRIFIC_STORMWIND },
								{ 60.0, 58.0, RE_HORRIFIC_STORMWIND },
								{ 65.0, 62.0, RE_HORRIFIC_STORMWIND },
								{ 72.0, 67.0, RE_HORRIFIC_STORMWIND },
								{ 67.0, 51.0, RE_HORRIFIC_STORMWIND },
							},
						}),
						o(343698, {	-- Void-Touched Skull
							["description"] = "Behind the orphanage in Cathedral Square. It's on the ground next to some crates, is very small, and doesn't have the typical interactable sparkle.",
							["coord"] = { 58.9, 52.9, RE_HORRIFIC_STORMWIND },
							["groups"] = {
								i(174921, {	-- Void-Touched Skull (TOY!)
									i(174922),	-- Void-Touched Skull
								}),
							},
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
		q(85951, {["isWeekly"]=true}),	-- Valley of Spirits
		q(85953, {["isWeekly"]=true}),	-- The Drag
		q(85950, {["isWeekly"]=true}),	-- Valley of Honor
		q(85952, {["isWeekly"]=true}),	-- Valley of Wisdom
		-- Stormwind
		q(87428),	-- after Alleria kill (main chest unlock hqt?)
		q(85829, {["isWeekly"]=true}),	-- Dwarven District
		q(85830, {["isWeekly"]=true}),	-- Trade District
		q(85831, {["isWeekly"]=true}),	-- Mage Quarter
		q(85832, {["isWeekly"]=true}),	-- Old Town
		--
		q(90524, {name="Mage Quarter & Mask"}),	-- either hqt to pop thing for moto or mask drop hqt after clearing up mage quarter (with Long Night mask)
		q(90528, {name="Old Town & Mask"}),	-- either hqt to pop thing for moto or mask drop hqt after clearing up old town (with Long Night mask)
		q(90529, {name="Valley of Honor & Mask"}),	-- pop after clearing Valley of Honor with 1 mask (mask sourceQuest?)
		q(90530, {name="Valley of Wisdom & Mask"}),	-- pop after clearing Valley of Wisdom with 1 mask (new masks sourceQuest?)
		q(90531),	-- When looting Twisted Skull-Scypthe Handlebars
		-- ^ one of it could be tribute upgrade?
		q(87389),	-- pop after finishing scenario first time (during quest) // lowest reward hqt?
		q(88905),	-- pop after finishing scenario first time (during quest) // lowest reward hqt?
		-- 87389 & 88905 also pop on 2nd run (without quests in stormwind)
		q(87381, {["isWeekly"]=true}),	-- Pops weekly on first clear, both Stormwind and Orgrimmar
		q(88906, {["isWeekly"]=true}),	-- Pops weekly on first clear, both Stormwind and Orgrimmar
		q(87387, {name="Completion"}),	-- All district was cleared (without masks), pop after killing Alleria // or veteran vendor unlock? / champion piece lockout?
		q(88907, {name="Completion"}),	-- All district was cleared (without masks), pop after killing Alleria // one of it mask sourceQuest
		q(87382, {name="Completion & 1 Mask"}),	-- All district was cleared  (with Long Night mask), pop after killing Alleria // one of it could be champion vendor unlock? / champion piece lockout?
		q(88908, {name="Completion & 1 Mask"}),	-- All district was cleared  (with Long Night mask), pop after killing Alleria // one of it could be champion vendor unlock?
		q(87383, {name="Completion & 2 Mask"}),
		q(88909, {name="Completion & 2 Mask"}),
		q(87384, {name="Completion & 3 Mask"}),	-- All district was cleared  (3 masks), pop after killing Thrall // reward lockout questID?
		q(88910, {name="Completion & 3 Mask"}),	-- All district was cleared  (3 masks), pop after killing Thrall // reward lockout questID?
		q(87385, {name="Completion & 4 Mask"}),	-- All district was cleared  (4 masks), pop after killing Thrall // reward lockout questID?
		q(88911, {name="Completion & 4 Mask"}),	-- All district was cleared  (4 masks), pop after killing Thrall // reward lockout questID?
		q(87386, {name="Completion & 5 Mask"}),	-- All district was cleared  (5 masks), pop after killing Thrall // reward lockout questID?
		q(88912, {name="Completion & 5 Mask"}),	-- All district was cleared  (5 masks), pop after killing Thrall // reward lockout questID?
		q(88913),	-- Popped in Orgrimmar
		q(88914),	-- Popped in Stormwind
		q(88915),	-- First 8 Mask Vision of Stormwind?
	}),
})));
