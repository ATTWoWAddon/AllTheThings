---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local CATALOGED_RESEARCH = 1931;
local STYGIA = 1767;
local SOUL_ASH = 1828;
local SOUL_CINDERS = 1906;
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_1_0 } }, {
	m(KORTHIA, {
		n(VENDORS, {
			n(178257, {	-- Archivist Roh-Suir
				["coord"] = { 61.6, 21.7, KORTHIA },
				["g"] = bubbleDownRep(FACTION_THE_ARCHIVISTS_CODEX, {
					{		-- Tier 1
						i(187508, {	-- Trained Gromit Carrier
							["cost"] = { { "c", CATALOGED_RESEARCH, 35 } },
						}),
					}, {	-- Tier 2
						i(187612, {	-- Key of Flowing Waters
							["cost"] = { { "c", CATALOGED_RESEARCH, 25 } },
						}),
						i(187614, {	-- Key of Many Thoughts
							["cost"] = { { "c", CATALOGED_RESEARCH, 25 } },
						}),
						i(187613, {	-- Key of the Inner Chambers
							["cost"] = { { "c", CATALOGED_RESEARCH, 25 } },
						}),
						i(186984, {	-- Korthite Crystal Key
							["cost"] = { { "c", CATALOGED_RESEARCH, 25 } },
						}),
						i(186714, {	-- Research Report: All-Seeing Crystal (CI!)
							["cost"] = { { "c", CATALOGED_RESEARCH, 100 } },
						}),
						i(187145, {	-- Treatise: Recognizing Stygia and its Uses (CI!)
							["cost"] = { { "c", CATALOGED_RESEARCH, 800 } },
						}),
					}, {	-- Tier 3
						ChronicleOfLostMemories({	-- Chronicle of Lost Memories
							["cost"] = { { "c", CATALOGED_RESEARCH, 1500 } },
							["description"] = "|cFFfe040fYou will not receive a Covenant specific Legendary if you are not part of said Covenant.|r",
							["_drop"] = { "customCollect" },	-- this is Covenant tagged in various other locations
						}),
						i(186718, {	-- Teleporter Repair Kit
							["cost"] = { { "c", CATALOGED_RESEARCH, 50 } },
						}),
					}, {	-- Tier 4
						i(186470, {	-- Recipe: Crafter's Mark of the Chained Isle (RECIPE!)
							["cost"] = { { "c", CATALOGED_RESEARCH, 2500 } },
							["g"] = {
								r(343676, {	-- Crafter's Mark of the Chained Isle (RECIPE!)
									["requireSkill"] = ALCHEMY,
								}),
								r(343188, {	-- Crafter's Mark of the Chained Isle (RECIPE!)
									["requireSkill"] = BLACKSMITHING,
								}),
								r(343103, {	-- Crafter's Mark of the Chained Isle (RECIPE!)
									["requireSkill"] = ENGINEERING,
								}),
								r(343694, {	-- Crafter's Mark of the Chained Isle (RECIPE!)
									["requireSkill"] = JEWELCRAFTING,
								}),
								r(343189, {	-- Crafter's Mark of the Chained Isle (RECIPE!)
									["requireSkill"] = LEATHERWORKING,
								}),
								r(343200, {	-- Crafter's Mark of the Chained Isle (RECIPE!)
									["requireSkill"] = TAILORING,
								}),
							},
						}),
						i(186991, {	-- Recipe: Transmute: Stones to Ore (RECIPE!)
							["cost"] = { { "c", CATALOGED_RESEARCH, 2000 } },
						}),
						i(186731, {	-- Repaired Riftkey
							["cost"] = { { "c", CATALOGED_RESEARCH, 100 } },
						}),
						i(187706, {	-- Treatise: Bonds of Stygia in Mortals (CI!)
							["cost"] = { { "c", CATALOGED_RESEARCH, 1000 } },
						}),
					}, {	-- Tier 5
						i(187409, {	-- Cloak of the Korthian Scholar
							["cost"] = { { "c", CATALOGED_RESEARCH, 500 } },
						}),
						i(186716, {	-- Research Report: Ancient Shrines (CI!)
							["cost"] = { { "c", CATALOGED_RESEARCH, 1000 } },
						}),
						i(186722, {	-- Treatise: The Study of Anima and Harnessing Every Drop (CI!)
							["cost"] = { { "c", CATALOGED_RESEARCH, 1500 } },
						}),
					}, {	-- Tier 6
						i(187134, {	-- Alloy-Warping Facetor
							["cost"] = { { "c", CATALOGED_RESEARCH, 5000 } },
							["timeline"] = { REMOVED_9_2_0 },
						}),
						i(187535, {	-- Attendant Scholar's Waistcord
							["cost"] = { { "c", CATALOGED_RESEARCH, 4000 } },
						}),
						i(187148, {	-- Death-Bound Shard
							["cost"] = { { "c", CATALOGED_RESEARCH, 3000 } },
						}),
						i(187534, {	-- Korthite Crystal Waistguard
							["cost"] = { { "c", CATALOGED_RESEARCH, 4000 } },
						}),
						i(187536, {	-- Prototype Guardian Grips
							["cost"] = { { "c", CATALOGED_RESEARCH, 4000 } },
						}),
						i(186717, {	-- Research Report: Adaptive Alloys (CI!)
							["cost"] = { { "c", CATALOGED_RESEARCH, 4000 } },
						}),
						i(187138, {	-- Research Report: First Alloys (CI!)
							["cost"] = { { "c", CATALOGED_RESEARCH, 8000 } },
						}),
						i(187136, {	-- Research Report: Relic Examination Techniques (CI!)
							["cost"] = { { "c", CATALOGED_RESEARCH, 2500 } },
						}),
						i(186648, {	-- Soaring Razorwing (MOUNT!)
							["cost"] = { { "c", CATALOGED_RESEARCH, 5000 } },
						}),
						i(187537, {	-- Subtle Mortality Manipulators
							["cost"] = { { "c", CATALOGED_RESEARCH, 4000 } },
						}),
						i(186721, {	-- Treatise: Relics Abound in the Shadowlands (CI!)
							["cost"] = { { "c", CATALOGED_RESEARCH, 2000 } },
						}),
					},
				}),
			}),
			n(179214, {	-- Bonesmith Heirmir
				["coord"] = { 63.5, 25.3, KORTHIA },
				["crs"] = { 180700 },	-- Vision of Bonesmith Heirmir
				["g"] = {
					i(187077, {	-- Packaged Soul Ash
						["cost"] = { { "c", SOUL_ASH, 300 } },
					}),
					i(191031, {	-- Packaged Soul Cinders
						["cost"] = { { "c", SOUL_CINDERS, 300 } },
						["timeline"] = { ADDED_9_2_0 },
					}),
					i(187532, {	-- Soulfire Chisel
						["cost"] = { { "c", STYGIA, 2500 } },
					}),
					i(187134, {	-- Alloy-Warping Facetor
						["cost"] = { { "c", SOUL_CINDERS, 1000 } },
					}),
					ChronicleOfLostMemories({["cost"] = { { "c", SOUL_CINDERS, 400 } }})	-- Chronicle of Lost Memories
				},
			}),
			n(179321, {	-- Duchess Mynx <Death's Advance Quartermaster>
				["coord"] = { 63.5, 23.3, KORTHIA },
				["g"] = bubbleDownClassicRep(FACTION_DEATHS_ADVANCE, {
					{		-- Neutral
					}, {	-- Friendly
						i(188156, {	-- Korthian Accessory
							["cost"] = { { "c", STYGIA, 750 } },
							["timeline"] = { ADDED_9_1_5 },
							["sym"] = {
								{"sub", "korthian_armaments", "INVTYPE_FINGER" },
								{"sub", "korthian_armaments", "INVTYPE_TRINKET" },
							},
						}),
						i(187187, {	-- Korthian Armaments
							["description"] = "These items can also drop from War Chests awarded by Covenant Assaults, the Death's Advance War Chest, and occasionally from Korthian dailies.\n\nKorthian Armaments also have a chance to drop from Korthia rares and treasures.",
							["cost"] = { { "c", STYGIA, 1000 } },
							["g"] = {
								n(WEAPONS, {
									i(185889),	-- Gromit Tendon Longbow
									i(186762),	-- Korthian Anima Slicer
									i(186759),	-- Korthian Anima Vessel
									i(185899),	-- Korthian Archivist's Gavel
									i(186761),	-- Korthian Attendant's Blade
									i(186768),	-- Korthian Attendant's Cane
									i(186767),	-- Korthian Attendant's Scepter
									i(185890),	-- Korthian Caretaker's Kris
									i(185888),	-- Korthian Caretaker's Orb
									i(185900),	-- Korthian Caretaker's Rod
									i(185900),	-- Korthian Caretaker's Stave
									i(186760),	-- Korthian Energy Bow
									i(186758),	-- Korthian Keeper's Buckler
									i(185898),	-- Korthian Pathfinder's Spire
									i(185893),	-- Korthian Protector's Greataxe
									i(186764),	-- Korthian Protector's Warhammer
									i(185897),	-- Korthian Sentinel's Hammer
									i(185901),	-- Korthian Twinblade
									i(185891),	-- Razorwing's Claw
									i(185944),	-- Vault Guardian's Cleaver
									i(185896),	-- Vault Guardian's Cudgel
									i(186763),	-- Vault Guardian's Decapitator
									i(185887),	-- Vault Guardian's Targe
									i(186769),	-- Vault Guardian's Warglaive
									i(186765),	-- Vault Patroller's Mace
									i(186771),	-- Vault Patroller's Slicer
									i(186766),	-- Vault Patroller's Staff
								}),
								n(BACK, {
									i(186770),	-- Vault Attendant's Cape
									i(185905),	-- Vault Guardian's Drape
								}),
								filter(CLOTH, {
									i(185861),	-- Korthian Caretaker's Bindings
									i(185860),	-- Korthian Caretaker's Cinch
									i(185858),	-- Korthian Caretaker's Crest
									i(186666),	-- Korthian Caretaker's Crown
									i(185857),	-- Korthian Caretaker's Handwraps
									i(185859),	-- Korthian Caretaker's Leggings
									i(186670),	-- Korthian Caretaker's Mantle
									i(186665),	-- Korthian Caretaker's Mitts
									i(186667),	-- Korthian Caretaker's Pantaloons
									i(185855),	-- Korthian Caretaker's Robes
									i(186664),	-- Korthian Caretaker's Sandals
									i(186668),	-- Korthian Caretaker's Sash
									i(185886),	-- Korthian Caretaker's Shoulderpads
									i(185856),	-- Korthian Caretaker's Slippers
									i(186663),	-- Korthian Caretaker's Vestments
									i(186669),	-- Korthian Caretaker's Wraps
								}),
								filter(LEATHER, {
									i(185866),	-- Shardhide Leather Belt
									i(185862),	-- Shardhide Leather Boots
									i(185867),	-- Shardhide Leather Bracers
									i(185865),	-- Shardhide Leather Breeches
									i(186736),	-- Shardhide Leather Cowl
									i(186739),	-- Shardhide Leather Cuffs
									i(186757),	-- Shardhide Leather Epaulets
									i(185863),	-- Shardhide Leather Gloves
									i(186735),	-- Shardhide Leather Handlers
									i(185864),	-- Shardhide Leather Hood
									i(186756),	-- Shardhide Leather Jerkin
									i(185885),	-- Shardhide Leather Shoulderguards
									i(186738),	-- Shardhide Leather Strap
									i(186734),	-- Shardhide Leather Treads
									i(186737),	-- Shardhide Leather Trousers
									i(185884),	-- Shardhide Leather Vest
								}),
								filter(MAIL, {
									i(185875),	-- Razorwing Scale Bracers
									i(186746),	-- Razorwing Scale Chain
									i(185868),	-- Razorwing Scale Chainmail
									i(185874),	-- Razorwing Scale Cincture
									i(185871),	-- Razorwing Scale Coif
									i(186742),	-- Razorwing Scale Fists
									i(186741),	-- Razorwing Scale Footguards
									i(185872),	-- Razorwing Scale Greaves
									i(185870),	-- Razorwing Scale Grips
									i(186740),	-- Razorwing Scale Harness
									i(186743),	-- Razorwing Scale Hood
									i(186744),	-- Razorwing Scale Pants
									i(185873),	-- Razorwing Scale Shoulderguards
									i(186745),	-- Razorwing Scale Spaulders
									i(185869),	-- Razorwing Scale Striders
									i(186747),	-- Razorwing Scale Wristguards
								}),
								filter(PLATE, {
									i(186755),	-- Vault Guardian's Binders
									i(185877),	-- Vault Guardian's Breastplate
									i(186754),	-- Vault Guardian's Buckle
									i(186749),	-- Vault Guardian's Chestpiece
									i(185879),	-- Vault Guardian's Gauntlets
									i(185882),	-- Vault Guardian's Girdle
									i(186751),	-- Vault Guardian's Handguards
									i(185876),	-- Vault Guardian's Helm
									i(185880),	-- Vault Guardian's Legguards
									i(186752),	-- Vault Guardian's Legplates
									i(185881),	-- Vault Guardian's Pauldrons
									i(185878),	-- Vault Guardian's Sabatons
									i(186753),	-- Vault Guardian's Shoulderplates
									i(186750),	-- Vault Guardian's Stompers
									i(185883),	-- Vault Guardian's Vambraces
									i(186748),	-- Vault Guardian's Visor
								}),
								filter(FINGER_F, {
									i(185894),	-- Attendant's Loop
									i(185941),	-- Korthian Scholar's Signet
									i(185895),	-- Lost Wayfarer's Band
									i(185903),	-- Soul-Seeker's Ring
								}),
								filter(TRINKET_F, {
									i(186976),	-- Fine Razorwing Quill
									i(186155),	-- Harmonic Crowd Breaker
									i(186156),	-- Tome of Insight
								}),
							},
						}),
						i(188161, {	-- Korthian Belt
							["cost"] = { { "c", STYGIA, 750 } },
							["timeline"] = { ADDED_9_1_5 },
							["sym"] = {
								{"sub", "korthian_armaments", "INVTYPE_WAIST" },
							},
						}),
						i(188155, {	-- Korthian Boots
							["cost"] = { { "c", STYGIA, 1000 } },
							["timeline"] = { ADDED_9_1_5 },
							["sym"] = {
								{"sub", "korthian_armaments", "INVTYPE_FEET" },
							},
						}),
						i(188163, {	-- Korthian Bracers
							["cost"] = { { "c", STYGIA, 750 } },
							["timeline"] = { ADDED_9_1_5 },
							["sym"] = {
								{"sub", "korthian_armaments", "INVTYPE_WRIST" },
							},
						}),
						i(188154, {	-- Korthian Chestpiece
							["cost"] = { { "c", STYGIA, 1250 } },
							["timeline"] = { ADDED_9_1_5 },
							["sym"] = {
								{"sub", "korthian_armaments", "INVTYPE_CHEST" },
								{"sub", "korthian_armaments", "INVTYPE_ROBE" },
							},
						}),
						i(188153, {	-- Korthian Cloak
							["cost"] = { { "c", STYGIA, 750 } },
							["timeline"] = { ADDED_9_1_5 },
							["sym"] = {
								{"sub", "korthian_armaments", "INVTYPE_CLOAK" },
							},
						}),
						i(188157, {	-- Korthian Gloves
							["cost"] = { { "c", STYGIA, 1000 } },
							["timeline"] = { ADDED_9_1_5 },
							["sym"] = {
								{"sub", "korthian_armaments", "INVTYPE_HAND" },
							},
						}),
						i(188158, {	-- Korthian Helm
							["cost"] = { { "c", STYGIA, 1250 } },
							["timeline"] = { ADDED_9_1_5 },
							["sym"] = {
								{"sub", "korthian_armaments", "INVTYPE_HEAD" },
							},
						}),
						i(188159, {	-- Korthian Legguards
							["cost"] = { { "c", STYGIA, 1250 } },
							["timeline"] = { ADDED_9_1_5 },
							["sym"] = {
								{"sub", "korthian_armaments", "INVTYPE_LEGS" },
							},
						}),
						i(188160, {	-- Korthian Shoulders
							["cost"] = { { "c", STYGIA, 1000 } },
							["timeline"] = { ADDED_9_1_5 },
							["sym"] = {
								{"sub", "korthian_armaments", "INVTYPE_SHOULDER" },
							},
						}),
						i(188162, {	-- Korthian Weaponry
							["cost"] = { { "c", STYGIA, 1500 } },
							["timeline"] = { ADDED_9_1_5 },
							["sym"] = {
								{"select", "itemID", 187187 },		-- Korthian Armaments
								{"pop"},							-- Discard Header (includes symlink of the item)
								{"where", "headerID", WEAPONS },	-- Weapons only
								{"pop"},							-- Discard Header
							},
						}),
						i(186453, {	-- Vault Anima Tracker (CI!)
							["cost"] = { { "c", STYGIA, 1000 } },
						}),
					}, {	-- Honored
						i(187541, {	-- Chain of Encircling Death
							["cost"] = { { "c", STYGIA, 2000 } },
						}),
						i(187540, {	-- Cincture of Enveloping Death
							["cost"] = { { "c", STYGIA, 2000 } },
						}),
						i(186543, {	-- Domestic Aunian (PET!)
							["cost"] = {
								{ "i", POLISHED_PET_CHARM, 50 },
								{ "c", STYGIA, 1500 },
							},
						}),
						i(187539, {	-- Gauntlets of Death's Guardian
							["cost"] = { { "c", STYGIA, 2000 } },
						}),
						i(187538, {	-- Gloves of Advancing Death
							["cost"] = { { "c", STYGIA, 2000 } },
						}),
						i(187411, {	-- Mantle of Death's Advance
							["cost"] = { { "c", STYGIA, 500 } },
						}),
						i(186598, {	-- Recipe: Crafter's Mark III (RECIPE!)
							["cost"] = { { "c", STYGIA, 2000 } },
							["g"] = {
								r(343677, {	-- Crafter's Mark III (RECIPE!)
									["requireSkill"] = ALCHEMY,
								}),
								r(343186, {	-- Crafter's Mark III (RECIPE!)
									["requireSkill"] = BLACKSMITHING,
								}),
								r(343102, {	-- Crafter's Mark III (RECIPE!)
									["requireSkill"] = ENGINEERING,
								}),
								r(343695, {	-- Crafter's Mark III (RECIPE!)
									["requireSkill"] = JEWELCRAFTING,
								}),
								r(343192, {	-- Crafter's Mark III (RECIPE!)
									["requireSkill"] = LEATHERWORKING,
								}),
								r(343201, {	-- Crafter's Mark III (RECIPE!)
									["requireSkill"] = TAILORING,
								}),
							},
						}),
						i(187218, {	-- Tome of Origins (RECIPE!)
							["cost"] = { { "c", STYGIA, 2000 } },
							["g"] = {
								r(352439, {	-- Vestige of Origins (RECIPE!)
									["requireSkill"] = BLACKSMITHING,
								}),
								r(352443, {	-- Vestige of Origins (RECIPE!)
									["requireSkill"] = JEWELCRAFTING,
								}),
								r(352444, {	-- Vestige of Origins (RECIPE!)
									["requireSkill"] = LEATHERWORKING,
								}),
								r(352445, {	-- Vestige of Origins (RECIPE!)
									["requireSkill"] = TAILORING,
								}),
							},
						}),
					}, {	-- Revered
						i(186647, {	-- Amber Shardhide (MOUNT!)
							["cost"] = { { "c", STYGIA, 5000 } },
						}),
						i(186724, {	-- Technique: Contract: Death's Advance (RECIPE!)
							["cost"] = { { "c", STYGIA, 2500 } },
						}),
					}, {	-- Exalted
						n(KYRIAN, sharedData({["customCollect"] = { "SL_COV_KYR" }},{
							i(186480, {	-- Battle-Hardened Aquilon (MOUNT!)
								["cost"] = { { "c", STYGIA, 1000 } },
							}),
							iensemble(186517, {	-- Ensemble: Battlefield Messenger's Regalia
								["cost"] = { { "c", STYGIA, 6000 } },
							}),
						})),
						n(NECROLORD, sharedData({["customCollect"] = { "SL_COV_NEC" }},{
							i(186490, {	-- Battlefield Swarmer Harness (MOUNT!)
								["cost"] = { { "c", STYGIA, 1000 } },
							}),
							iensemble(186504, {	-- Ensemble: Frontline Necromancer's Vestments
								["cost"] = { { "c", STYGIA, 6000 } },
							}),
						})),
						n(NIGHT_FAE, sharedData({["customCollect"] = { "SL_COV_NFA" }},{
							iensemble(186499, {	-- Ensemble: Garb of Fall's Promise
								["cost"] = { { "c", STYGIA, 6000 } },
							}),
							i(186495, {	-- Winter Wilderling (MOUNT!)
								["cost"] = { { "c", STYGIA, 1000 } },
							}),
						})),
						n(VENTHYR, sharedData({["customCollect"] = { "SL_COV_VEN" }},{
							iensemble(186511, {	-- Ensemble: Renathal's Battlefield Attire
								["cost"] = { { "c", STYGIA, 6000 } },
							}),
							iensemble(186512, {	-- Ensemble: Renathal's Field Inquisitor's Vestments
								["cost"] = { { "c", STYGIA, 6000 } },
							}),
							i(186477, {	-- Pale Gravewing (MOUNT!)
								["cost"] = { { "c", STYGIA, 1000 } },
							}),
						})),
						i(186997, {	-- Death's Advance Tabard
							["cost"] = { { "c", STYGIA, 3000 } },
						}),
					},
				}),
			}),
		}),
	}),
})));