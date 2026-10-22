-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, n(NEW_CHARACTER, {
	header(HEADERS.Race, BLOODELF, {
		cl(HUNTER, {
			i(20900, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Warder's Boots
			i(20899, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Warder's Pants
			i(58235, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Warder's Vest
		}),
		cl(MAGE, {
			i(20895, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Apprentice's Boots
			i(20894, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Apprentice's Pants
			i(20893, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Apprentice's Robe
		}),
		cl(PALADIN, {
			filter(MOUNTS, {
				mount(34767, {	-- Thalassian Charger (MOUNT!)
					-- #if AFTER 9.0.1
					["description"] = "Received on reaching Level 17 as a Blood Elf Paladin.",
					["lvl"] = 17,
					-- #elseif AFTER 3.2.0
					["lvl"] = 40,
					-- #else
					["lvl"] = 60,
					-- #endif
					["races"] = { BLOODELF },
					["classes"] = { PALADIN },
					["timeline"] = { ADDED_2_0_3 }
				}),
				mount(34769, {	-- Thalassian Warhorse (MOUNT!)
					-- #if AFTER 9.0.1
					["description"] = "Received on reaching Level 10 as a Blood Elf Paladin.",
					["lvl"] = 10,
					-- #elseif AFTER 3.2.0
					["lvl"] = 20,
					-- #else
					["lvl"] = 40,
					-- #endif
					["races"] = { BLOODELF },
					["classes"] = { PALADIN },
					["timeline"] = { ADDED_2_0_3 }
				}),
			}),
			i(24146, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Initiate's Boots
			i(24145, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Initiate's Pants
			i(58237, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Initiate's Vest
		}),
		cl(PRIEST, {
			i(20891, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Neophyte's Robe
		}),
		cl(ROGUE, {
			i(20896, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Lookout's Pants
			i(20898, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Lookout's Shoes
			i(58238, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Lookout's Vest
		}),
		cl(WARLOCK, {
			i(20892, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Acolyte's Robe
		}),
		cl(WARRIOR, {
			i(20903, { ["timeline"] = { ADDED_4_0_1, REMOVED_9_1_5 } }),	-- Recruit's Boots
			i(20902, { ["timeline"] = { ADDED_4_0_1, REMOVED_9_1_5 } }),	-- Recruit's Pants
			i(20904, { ["timeline"] = { ADDED_4_0_1, REMOVED_9_1_5 } }),	-- Recruit's Tunic
		}),
	}),
	header(HEADERS.Race, DARKIRON, {
		cl(PALADIN, {
			filter(MOUNTS, {
				mount(270562, {	-- Darkforge Ram (MOUNT!)
					["description"] = "Received on reaching Level 10 as a Dark Iron Dwarf Paladin.",
					["timeline"] = { ADDED_8_0_1 },
					["races"] = { DARKIRON },
				}),
			}),
		}),
	}),
	header(HEADERS.Race, DRACTHYR_HORDE, {["timeline"] = { ADDED_11_0_5 }}),
	header(HEADERS.Race, DRACTHYR_HORDE, {
		-- #if AFTER 4.0.3
		filter(BACK_F, {
			i(232351, { ["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE } }),	-- Creche-Waker's Cloak
		}),
		-- #endif
		-- #if AFTER 11.0.5
		filter(FINGER_F, {
			i(232348, { ["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE } }),	-- Creche-Waker's Loop
			i(232349, { ["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE } }),	-- Creche-Waker's Ring
		}),
		-- #endif
		-- #if AFTER 11.0.5
		filter(NECK_F, {
			i(232350, { ["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE } }),	-- Creche-Waker's Amulet
		}),
		-- #endif
		-- #if AFTER 11.0.5
		filter(TRINKET_F, {
			i(232346, { ["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE } }),	-- Creche-Waker's Figurine
			i(232347, { ["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE } }),	-- Creche-Waker's Insignia
		}),
		-- #endif
		cl(HUNTER, {
			i(232279),	-- Creche-Scout's Bracers
			i(232284),	-- Creche-Scout's Chausses
			i(232285),	-- Creche-Scout's Gauntlets
			i(232286),	-- Creche-Scout's Greaves
			i(232277),	-- Creche-Scout's Rifle
			i(232287),	-- Creche-Scout's Vest
		}),
		cl(MAGE, {
			i(232337),	-- Creche-Magus's Bindings
			i(232341),	-- Creche-Magus's Gloves
			i(232340),	-- Creche-Magus's Pants
			i(232339),	-- Creche-Magus's Regalia
			i(232342),	-- Creche-Magus's Shoes
			i(232336),	-- Creche-Magus's Staff
		}),
		cl(PRIEST, {
			i(232330),	-- Creche-Weaver's Bangle
			i(232333),	-- Creche-Weaver's Leggings
			i(232334),	-- Creche-Weaver's Mitts
			i(232332),	-- Creche-Weaver's Robe
			i(232335),	-- Creche-Weaver's Slippers
			i(232329),	-- Creche-Weaver's Spire
		}),
		cl(ROGUE, {
			i(232289),	-- Creche-Talon's Baselard
			i(232292),	-- Creche-Talon's Bindings
			i(232325),	-- Creche-Talon's Breeches
			i(232326),	-- Creche-Talon's Gloves
			i(232328),	-- Creche-Talon's Jerkin
			i(232327),	-- Creche-Talon's Kickers
			i(232288),	-- Creche-Talon's Poniard
		}),
		cl(WARLOCK, {
			i(232032),	-- Creche-Binder's Gloves
			i(232034),	-- Creche-Binder's Leggings
			i(232036),	-- Creche-Binder's Robe
			i(232038),	-- Creche-Binder's Rod
			i(232035),	-- Creche-Binder's Soles
			i(232037),	-- Creche-Binder's Wrappings
		}),
		cl(WARRIOR, {
			i(232276),	-- Creche-Guard's Brestplate
			i(232274),	-- Creche-Guard's Gauntlets
			i(232264),	-- Creche-Guard's Greataxe
			i(232272),	-- Creche-Guard's Legplates
			i(232275),	-- Creche-Guard's Sabatons
			i(232268),	-- Creche-Guard's Vambraces
		}),
	}),
	header(HEADERS.Race, DRAENEI, {
		cl(HUNTER, {
			i(23348, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Scout's Boots
			i(23344, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Scout's Pants
			i(58240, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Scout's Vest
		}),
		cl(MAGE, {
			i(23478, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Recruit's Pants
			i(23479, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Recruit's Robe
		}),
		cl(PALADIN, {
			filter(MOUNTS, {
				mount(73629, {	-- Exarch's Elekk (MOUNT!)
					["description"] = "Received on reaching Level 10 as a Draenei Paladin.",
					["races"] = { DRAENEI },
					["classes"] = { PALADIN },
					["timeline"] = { ADDED_4_0_3 }
				}),
				mount(73630, {	-- Great Exarch's Elekk (MOUNT!)
					["description"] = "Received on reaching Level 17 as a Draenei Paladin.",
					["races"] = { DRAENEI },
					["classes"] = { PALADIN },
					["timeline"] = { ADDED_4_0_3 }
				}),
			}),
			i(52533, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Squire's Boots
			i(23477, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Squire's Pants
			i(58242, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Squire's Vest
		}),
		cl(PRIEST, {
			i(1396, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Acolyte's Pants
			i(23322, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Acolyte's Robe
		}),
		cl(SHAMAN, {
			i(52535, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Primal Pants
			i(52534, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Primal Robe
		}),
		cl(WARRIOR, {
			i(23475, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Recruit's Boots
			i(23474, { ["timeline"] = { ADDED_2_0_3, REMOVED_9_1_5 } }),	-- Recruit's Pants
			i(58243, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Recruit's Vest
		}),
	}),
	header(HEADERS.Race, DWARF, {
		cl(PALADIN, {
			filter(MOUNTS, {
				mount(270564, {	-- Dawnforge Ram (MOUNT!)
					["description"] = "Received on reaching Level 10 as a Dwarf Paladin.",
					["races"] = { DWARF },
					["classes"] = { PALADIN },
					["timeline"] = { ADDED_8_0_1 }
				}),
			}),
		}),
		cl(SHAMAN, {
			i(52540, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Primal Boots
			i(52539, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Primal Pants
			i(52538, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Primal Robe
		}),
	}),
	header(HEADERS.Race, EARTHEN_HORDE, {
		cl(PALADIN, {
			filter(MOUNTS, {
				mount(453785, {	-- Earthen Ordinant's Ramolith (MOUNT!)
					["description"] = "Received on reaching Level 10 as an Earthen Paladin.",
					["races"] = { EARTHEN_ALLIANCE, EARTHEN_HORDE },
					["classes"] = { PALADIN },
					["timeline"] = { ADDED_11_0_2 }
				}),
			}),
		}),
	}),
	header(HEADERS.Race, GOBLIN, {["timeline"] = { ADDED_4_0_3 }}),
	header(HEADERS.Race, GOBLIN, {
		-- #if AFTER 4.0.3
		filter(BACK_F, {
			i(52940, {	-- Candy's Cloak
				["races"] = { GOBLIN },
				["description"] = "Former Starter Cloak for Male Goblins",
				["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
			}),
			i(52937, {	-- Chip's Cloak
				["races"] = { GOBLIN },
				["description"] = "Former Starter Cloak for Female Goblins",
				["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
			}),
		}),
		-- #endif
		cl(HUNTER, {
			i(49504),	-- Goblin Trapper's Boots
			i(49503),	-- Goblin Trapper's Pants
			i(49502),	-- Goblin Trapper's Shirt
		}),
		cl(MONK, {
			-- #if AFTER 11.0.0
			i(204259, { ["timeline"] = { ADDED_10_0_7 } }),	-- Goblin Trainee's Cord
			i(204260, { ["timeline"] = { ADDED_10_0_7 } }),	-- Goblin Trainee's Leggings
			i(204261, { ["timeline"] = { ADDED_10_0_7 } }),	-- Goblin Trainee's Vest
			i(204258, { ["timeline"] = { ADDED_10_0_7 } }),	-- Goblin Trainee's Wristwraps
			-- #endif
		}),
		cl(MAGE, {
			i(49508),	-- Goblin Apprentice's Boots
			i(49506),	-- Goblin Apprentice's Pants
			i(49505),	-- Goblin Apprentice's Robe
		}),
		cl(PRIEST, {
			i(49512),	-- Goblin Neophyte's Pants
			i(49510),	-- Goblin Neophyte's Robe
			i(49531),	-- Goblin Neophyte's Shoes
		}),
		cl(ROGUE, {
			i(49516),	-- Goblin Thug's Boots
			i(49515),	-- Goblin Thug's Pants
			i(49514),	-- Goblin Thug's Tunic
		}),
		cl(SHAMAN, {
			i(52552),	-- Primal Boots
			i(52551),	-- Primal Pants
			i(52550),	-- Primal Shirt
		}),
		cl(WARLOCK, {
			i(49521),	-- Goblin Acolyte's Pants
			i(49520),	-- Goblin Acolyte's Robe
			i(49522),	-- Goblin Acolyte's Shoes
		}),
		cl(WARRIOR, {
			i(49527),	-- Goblin Brawler's Boots
			i(49529),	-- Goblin Brawler's Gauntlets
			i(49528),	-- Goblin Brawler's Greaves
			i(49524),	-- Goblin Brawler's Harness
		}),
	}),
	header(HEADERS.Race, HARANIR_HORDE, {["timeline"] = { ADDED_12_0_1_LAUNCH }}),
	header(HEADERS.Race, HARANIR_HORDE, {
		cl(DRUID, {
			i(266262),	-- Dawnroot Haranir Channeler
			i(257589),	-- Entwined Haranir Loincloth
			i(257554),	-- Entwined Haranir Skirt
			i(257550),	-- Entwined Haranir Soles
			i(257532),	-- Entwined Haranir Thorns
			i(257593),	-- Entwined Haranir Vines
			i(257524),	-- Entwined Haranir Wrappings
			i(270431, {	-- Haranir Footlocker
				i(270433),	-- Dawnroot Haranir Quarterstaff
			}),
		}),
		cl(HUNTER, {
			i(257590),	-- Coarse Haranir Loincloth
			i(257555),	-- Coarse Haranir Skirt
			i(257551),	-- Coarse Haranir Soles
			i(257533),	-- Coarse Haranir Thorns
			i(257594),	-- Coarse Haranir Vines
			i(257525),	-- Coarse Haranir Wrappings
			i(270431, {	-- Haranir Footlocker
				i(270439),	-- Wildgrove Haranir Spear
			}),
			i(266263),	-- Wildgrove Haranir Longbow
		}),
		cl(MONK, {
			i(257589),	-- Entwined Haranir Loincloth
			i(257554),	-- Entwined Haranir Skirt
			i(257550),	-- Entwined Haranir Soles
			i(257532),	-- Entwined Haranir Thorns
			i(257593),	-- Entwined Haranir Vines
			i(257524),	-- Entwined Haranir Wrappings
			i(270431, {	-- Haranir Footlocker
				i(270430),	-- Windpetal Haranir Crook
			}),
			i(266265),	-- Windpetal Haranir Baton
		}),
		cl(MAGE, {
			i(266264),	-- Sunpetal Haranir Spire
			i(257562),	-- Woven Haranir Loincloth
			i(257553),	-- Woven Haranir Skirt
			i(257549),	-- Woven Haranir Soles
			i(257531),	-- Woven Haranir Thorns
			i(257592),	-- Woven Haranir Vines
			i(257523),	-- Woven Haranir Wrappings
		}),
		cl(PRIEST, {
			i(266266),	-- Moonpetal Haranir Staff
			i(257562),	-- Woven Haranir Loincloth
			i(257553),	-- Woven Haranir Skirt
			i(257549),	-- Woven Haranir Soles
			i(257531),	-- Woven Haranir Thorns
			i(257592),	-- Woven Haranir Vines
			i(257523),	-- Woven Haranir Wrappings
		}),
		cl(ROGUE, {
			i(257589),	-- Entwined Haranir Loincloth
			i(257554),	-- Entwined Haranir Skirt
			i(257550),	-- Entwined Haranir Soles
			i(257532),	-- Entwined Haranir Thorns
			i(257593),	-- Entwined Haranir Vines
			i(257524),	-- Entwined Haranir Wrappings
			i(270431, {	-- Haranir Footlocker
				i(270441),	-- Thornpierce Haranir Chopper
			}),
			i(266267),	-- Thornpierce Haranir Fang
		}),
		cl(SHAMAN, {
			i(257590),	-- Coarse Haranir Loincloth
			i(257555),	-- Coarse Haranir Skirt
			i(257551),	-- Coarse Haranir Soles
			i(257533),	-- Coarse Haranir Thorns
			i(257594),	-- Coarse Haranir Vines
			i(257525),	-- Coarse Haranir Wrappings
			i(270431, {	-- Haranir Footlocker
				i(270442),	-- Rootbound Haranir Chopper
			}),
			i(266269),	-- Rootbound Haranir Aegis
			i(270440),	-- Rootbound Haranir Handaxe
		}),
		cl(WARLOCK, {
			i(266270),	-- Witherbloom Haranir Staff
			i(257562),	-- Woven Haranir Loincloth
			i(257553),	-- Woven Haranir Skirt
			i(257549),	-- Woven Haranir Soles
			i(257531),	-- Woven Haranir Thorns
			i(257592),	-- Woven Haranir Vines
			i(257523),	-- Woven Haranir Wrappings
		}),
		cl(WARRIOR, {
			i(270431, {	-- Haranir Footlocker
				i(270443),	-- Wildbloom Haranir Bastion
				i(270444),	-- Wildbloom Haranir Carver
			}),
			i(257591),	-- Hardened Haranir Loincloth
			i(257556),	-- Hardened Haranir Skirt
			i(257552),	-- Hardened Haranir Soles
			i(257546),	-- Hardened Haranir Thorns
			i(257595),	-- Hardened Haranir Vines
			i(257526),	-- Hardened Haranir Wrappings
			i(266271),	-- Wildbloom Haranir Warblade
		}),
	}),
	header(HEADERS.Race, LIGHTFORGED, {
		cl(PALADIN, {
			filter(MOUNTS, {
				mount(363613, {	-- Lightforged Ruinstrider (MOUNT!)
					["description"] = "Received on reaching Level 10 as a Lightforged Draenei Paladin.",
					["timeline"] = { ADDED_9_1_5 },
					["races"] = { LIGHTFORGED },
				}),
			}),
		}),
	}),
	header(HEADERS.Race, NIGHTELF, {
		cl(DRUID, {
			i(6123, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Novice's Robe
		}),
		cl(MAGE, {
			i(52554, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Apprentice's Boots
			i(52553, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Apprentice's Robe
		}),
		cl(PRIEST, {
			i(6119, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Neophyte's Robe
		}),
		cl(WARRIOR, {
			i(6122, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Recruit's Boots
			i(6121, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Recruit's Pants
			i(58244, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Recruit's Vest
		}),
	}),
	header(HEADERS.Race, PANDAREN_HORDE, {["timeline"] = { ADDED_5_0_4 }}),
	header(HEADERS.Race, PANDAREN_HORDE, {
		filter(CLOTH, {
			i(77509),	-- Trainee's Cord
			i(72020),	-- Trainee's Leggings
			i(72019),	-- Trainee's Vest
			i(77526),	-- Trainee's Wristwraps
		}),
	}),
	header(HEADERS.Race, TAUREN, {
		cl(PALADIN, {
			filter(MOUNTS, {
				mount(69826, {	-- Great Sunwalker Kodo (MOUNT!)
					["description"] = "Received on reaching Level 17 as a Tauren Paladin.",
					["races"] = { TAUREN },
					["classes"] = { PALADIN },
					["timeline"] = { ADDED_4_0_3 }
				}),
				mount(69820, {	-- Sunwalker Kodo (MOUNT!)
					["description"] = "Received on reaching Level 10 as a Tauren Paladin.",
					["races"] = { TAUREN },
					["classes"] = { PALADIN },
					["timeline"] = { ADDED_4_0_3 }
				}),
			}),
			i(52549, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Initiate's Pants
			i(58248, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Initiate's Vest
		}),
	}),
	header(HEADERS.Race, UNDEAD, {
		cl(MAGE, {
			i(6140, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Apprentice's Robe
		}),
		cl(PRIEST, {
			i(6144, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Neophyte's Robe
		}),
		cl(WARLOCK, {
			i(6129, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Acolyte's Robe
		}),
	}),
	header(HEADERS.Race, WORGEN, {["timeline"] = { ADDED_4_0_3 }}),
	header(HEADERS.Race, WORGEN, {
		cl(DRUID, {
			i(49565),	-- Gilnean Novice's Gloves
			i(49564),	-- Gilnean Novice's Boots
			i(49563),	-- Gilnean Novice's Tunic
			i(49566),	-- Gilnean Novice's Pants
		}),
		cl(HUNTER, {
			i(49569),	-- Gilnean Trapper's Boots
			i(49571),	-- Gilnean Trapper's Gloves
			i(49568),	-- Gilnean Trapper's Pants
			i(49570),	-- Gilnean Trapper's Tunic
		}),
		cl(MONK, {
			-- #if AFTER 11.0.0
			i(204268, { ["timeline"] = { ADDED_10_0_7 } }),	-- Gilnean Trainee's Cord
			i(204267, { ["timeline"] = { ADDED_10_0_7 } }),	-- Gilnean Trainee's Leggings
			i(204266, { ["timeline"] = { ADDED_10_0_7 } }),	-- Gilnean Trainee's Vest
			i(204269, { ["timeline"] = { ADDED_10_0_7 } }),	-- Gilnean Trainee's Wristwraps
			-- #endif
		}),
		cl(MAGE, {
			i(49401),	-- Gilnean Apprentice's Boots
			i(49400),	-- Gilnean Apprentice's Pants
			i(49399),	-- Gilnean Apprentice's Robe
		}),
		cl(PRIEST, {
			i(49406),	-- Gilnean Neophyte's Boots
			i(49404),	-- Gilnean Neophyte's Pants
			i(49403),	-- Gilnean Neophyte's Robe
		}),
		cl(ROGUE, {
			i(49575),	-- Gilnean Footpad's Boots
			i(49573),	-- Gilnean Footpad's Gloves
			i(49572),	-- Gilnean Footpad's Pants
			i(49574),	-- Gilnean Footpad's Tunic
		}),
		cl(WARLOCK, {
			i(49407),	-- Gilnean Acolyte's Boots
			i(49409),	-- Gilnean Acolyte's Pants
			i(49408),	-- Gilnean Acolyte's Robe
		}),
		cl(WARRIOR, {
			i(49577),	-- Gilnean Recruit's Belt
			i(49579),	-- Gilnean Recruit's Boots
			i(49576),	-- Gilnean Recruit's Pants
			i(49578),	-- Gilnean Recruit's Tunic
		}),
	}),
	header(HEADERS.Race, ZANDALARI, {
		cl(PALADIN, {
			filter(MOUNTS, {
				mount(290608, {	-- Crusader's Direhorn (MOUNT!)
					["description"] = "Received on reaching Level 10 as a Zandalari Paladin.",
					["timeline"] = { ADDED_8_1_5 },
					["races"] = { ZANDALARI },
				}),
			}),
		}),
	}),
	cl(DEATHKNIGHT, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 }, }, {
		i(34649),	-- Archerus Knight's Gauntlets
		i(34651),	-- Archerus Knight's Girdle
		i(34648),	-- Archerus Knight's Greaves
		i(34652),	-- Archerus Knight's Hood
		i(34656),	-- Archerus Knight's Legplates
		i(34655),	-- Archerus Knight's Pauldrons
		i(34659),	-- Archerus Knight's Shroud
		i(34650),	-- Archerus Knight's Tunic
		i(34653),	-- Archerus Knight's Wristguard
		i(34657),	-- Choker of Damnation
		i(38147),	-- Corrupted Band
		i(38145),	-- Deathweave Bag
		i(34658),	-- Plague Band
	})),
	cl(DEMONHUNTER, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 }, }, {
		i(123960),	-- Charm of Demonic
		i(123958),	-- Demon Hide Satchel
		i(123959),	-- Demon Trophy
		i(112460),	-- Illidari Band
		i(112453),	-- Illidari Belt
		i(112450),	-- Illidari Blindfold
		i(112457),	-- Illidari Boots
		i(112452),	-- Illidari Bracers
		i(112461),	-- Illidari Chain
		i(112462),	-- Illidari Drape
		i(112455),	-- Illidari Gloves
		i(112451),	-- Illidari Leggings
		i(112459),	-- Illidari Ring
		i(112454),	-- Illidari Robe
		i(112456),	-- Illidari Shoulders
		i(112458),	-- Illidari Warglaive
		i(129181),	-- Illidari Warglaive
		title(344)	-- Illidari <Name>
	})),
	cl(DRUID, {
		n(ARMOR, {
			i(187778, { ["timeline"] = { ADDED_9_1_5 } }),	-- Druid's Footwear
			i(187777, { ["timeline"] = { ADDED_9_1_5 } }),	-- Druid's Handwraps
			i(187776, { ["timeline"] = { ADDED_9_1_5 } }),	-- Druid's Leggings
			i(187775, { ["timeline"] = { ADDED_9_1_5 } }),	-- Druid's Tunic
			i(187774, { ["timeline"] = { ADDED_9_1_5 } }),	-- Druid's Waistband
			i(6124, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Novice's Pants
			i(6139, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Novice's Robe
		}),
		n(WEAPONS, {
			i(35, { ["timeline"] = { ADDED_1_1_0 } }),	-- Bent Staff
			i(3661, { ["timeline"] = { ADDED_1_1_0 } }),	-- Handcrafted Staff
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157619),	-- Spire of Astral Force
			i(157672),	-- Wildshifter Belt
			i(157673),	-- Wildshifter Bracers
			i(157668),	-- Wildshifter Grips
			i(157670),	-- Wildshifter Leggings
			i(157667),	-- Wildshifter Treads
			i(157666),	-- Wildshifter Tunic
		})),
	}),
	cl(EVOKER, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2 }, }, {
		i(188817),	-- Claw-Carved Figurine
		i(188814),	-- Emerald Winglord's Amulet
		i(188824),	-- Emerald Winglord's Boots
		i(188823),	-- Emerald Winglord's Bracers
		i(188815),	-- Emerald Winglord's Cloak
		i(188820),	-- Emerald Winglord's Coif
		i(188819),	-- Emerald Winglord's Greaves
		i(188821),	-- Emerald Winglord's Grips
		i(188822),	-- Emerald Winglord's Hauberk
		i(188816),	-- Emerald Winglord's Insignia
		i(188813),	-- Emerald Winglord's Loop
		i(188812),	-- Emerald Winglord's Ring
		i(188213),	-- Large Green Bag
	})),
	cl(HUNTER, {
		n(ARMOR, {
			i(187693, { ["timeline"] = { ADDED_9_1_5 } }),	-- Hunter's Belt
			i(187691, { ["timeline"] = { ADDED_9_1_5 } }),	-- Hunter's Boots
			i(187694, { ["timeline"] = { ADDED_9_1_5 } }),	-- Hunter's Bracers
			i(187695, { ["timeline"] = { ADDED_9_1_5 } }),	-- Hunter's Gloves
			i(187690, { ["timeline"] = { ADDED_9_1_5 } }),	-- Hunter's Pants
			i(187692, { ["timeline"] = { ADDED_9_1_5 } }),	-- Hunter's Vest
			i(129, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Rugged Trapper's Boots
			i(147, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Rugged Trapper's Pants
			i(58232, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Rugged Trapper's Vest
			i(6137, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Thug Pants
			i(6138, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Trapper's Boots [CATA+] / Thug Boots [Classic]
			i(6127, { ["timeline"] = { REMOVED_4_0_3 } }),	-- Trapper's Boots [Orc]
			i(6126, { ["timeline"] = { REMOVED_4_0_3 } }),	-- Trapper's Pants [Orc]
			i(58247, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Trapper's Vest
		}),
		n(WEAPONS, {
			i(2508, { ["timeline"] = { ADDED_1_1_0 } }),	-- Old Blunderbuss
			i(20982, {	-- Sharp Dagger
				["timeline"] = { ADDED_2_0_3, REMOVED_9_0_1 }	-- TODO: I am not sure when this got removed.
			}),
			i(20980, {	-- Warder's Shortbow
				["description"] = "New Blood Elf Hunters start with this weapon.",
				["timeline"] = { ADDED_2_0_3 }
			}),
			i(57244, { ["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 } }),	-- Warder's Spear
			i(23347, {	-- Weathered Crossbow
				["description"] = "New Human, Draenei, and Undead Hunters start with this weapon.",
				["timeline"] = { ADDED_2_0_3 }
			}),
			i(2504, {	-- Worn Shortbow
				["timeline"] = { REMOVED_9_0_1 }	-- TODO: I am not sure when this got removed.
			}),
			i(57243, {	-- Worn Spear
				["timeline"] = { ADDED_4_0_1, REMOVED_9_0_1 }	-- TODO: I am not sure when this got removed.
			}),
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157649, {	-- Goldstring Recurve
				["description"] = "New Highmountain Tauren Hunters start with this weapon.",
			}),
			i(157680),	-- Heartbonded Belt
			i(157681),	-- Heartbonded Bracers
			i(157676),	-- Heartbonded Gauntlets
			i(157675),	-- Heartbonded Greaves
			i(157678),	-- Heartbonded Legguards
			i(157674),	-- Heartbonded Vest
			i(157622, {	-- Silverscope Longrifle
				["description"] = "New Mechagnome Hunters start with this weapon. The 4 remaining Mechagnome players gatekept this from us for far too long.",
			}),
			i(232631, {	-- Wrapped Spear
				i(157650, {	-- Tracker's Spear
					["description"] = "New Highmountain Tauren Hunters start with this weapon in your inventory via the Wrapped Spear.",
				}),
			}),
		})),
	}),
	cl(MONK, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
		n(ARMOR, {
			i(157696),	-- Ascetic's Cord
			i(157697),	-- Ascetic's Cuffs
			i(157691),	-- Ascetic's Footpads
			i(157692),	-- Ascetic's Handguards
			i(157694),	-- Ascetic's Legguards
			i(157690),	-- Ascetic's Vest
		}),
		n(WEAPONS, {
			i(3661, { ["timeline"] = { ADDED_10_0_7 } }),	-- Handcrafted Staff
			i(157625),	-- Mash Tun Mixer
			i(157627, {	-- Sword of Searing Winds
				["timeline"] = { REMOVED_9_0_1 },	-- this appears to have been replaced with the staff in SL prepatch
			}),
		}),
	})),
	cl(MAGE, {
		n(ARMOR, {
			i(55, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Apprentice's Boots
			i(1395, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Apprentice's Pants
			i(52681, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Apprentice's Pants
			i(56, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Apprentice's Robe
			i(52546, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Apprentice's Robe
			i(187762, { ["timeline"] = { ADDED_9_1_5 } }),	-- Mage's Mitts
			i(187761, { ["timeline"] = { ADDED_9_1_5 } }),	-- Mage's Robes
			i(187760, { ["timeline"] = { ADDED_9_1_5 } }),	-- Mage's Sash
			i(187759, { ["timeline"] = { ADDED_9_1_5 } }),	-- Mage's Slippers
			i(187758, { ["timeline"] = { ADDED_9_1_5 } }),	-- Mage's Trousers
			i(187757, { ["timeline"] = { ADDED_9_1_5 } }),	-- Mage's Wristwraps
		}),
		n(WEAPONS, {
			i(20978, { ["timeline"] = { ADDED_3_0_2 } }),	-- Apprentice's Staff
			i(35, { ["timeline"] = { ADDED_1_1_0 } }),	-- Bent Staff
			i(3661, { ["timeline"] = { ADDED_1_1_0 } }),	-- Handcrafted Staff
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157688),	-- Spellsculptor's Cord
			i(157683),	-- Spellsculptor's Handwraps
			i(157685),	-- Spellsculptor's Leggings
			i(157686),	-- Spellsculptor's Robe
			i(157682),	-- Spellsculptor's Sandals
			i(157689),	-- Spellsculptor's Wristwraps
			i(157651),	-- Staff of Elemental Shaping
		})),
	}),
	cl(PALADIN, {
		filter(MOUNTS, {
			mount(13819, {	-- Warhorse (MOUNT!)
				["timeline"] = { ADDED_1_1_0 },
				-- #if AFTER 9.0.1
				["description"] = "Received on reaching Level 10 as a Human or Dwarf Paladin.",
				["lvl"] = 10,
				-- #elseif AFTER 3.2.0
				["lvl"] = 20,
				-- #else
				["lvl"] = 40,
				-- #endif
				["races"] = { HUMAN, DWARF },
				["classes"] = { PALADIN },
			}),
		}),
		n(ARMOR, {
			i(187722, { ["timeline"] = { ADDED_9_1_5 } }),	-- Paladin's Chestplate
			i(187725, { ["timeline"] = { ADDED_9_1_5 } }),	-- Paladin's Cuffs
			i(187724, { ["timeline"] = { ADDED_9_1_5 } }),	-- Paladin's Gauntlets
			i(187726, { ["timeline"] = { ADDED_9_1_5 } }),	-- Paladin's Girdle
			i(187723, { ["timeline"] = { ADDED_9_1_5 } }),	-- Paladin's Greaves
			i(187727, { ["timeline"] = { ADDED_9_1_5 } }),	-- Paladin's Sabatons
			i(43, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Squire's Boots
			i(44, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Squire's Pants
			i(6118, { ["timeline"] = { REMOVED_4_0_3 } }),	-- Squire's Pants [Dwarf]
			i(58233, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Squire's Vest
		}),
		n(WEAPONS, {
			i(52557, {	-- Battleworn Hammer
				["timeline"] = { ADDED_4_0_1, REMOVED_9_0_1 }	-- TODO: I am not sure when this got removed.
			}),
			i(36, { ["timeline"] = { ADDED_1_1_0 } }),	-- Worn Mace
			i(2362, { ["timeline"] = { ADDED_1_1_0 } }),	-- Worn Wooden Shield
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157698),	-- Lightsoul Battleplate
			i(157700),	-- Lightsoul Gauntlets
			i(157704),	-- Lightsoul Girdle
			i(157702),	-- Lightsoul Legplates
			i(157699),	-- Lightsoul Sabatons
			i(157705),	-- Lightsoul Vambraces
			i(157631, {	-- Maul of Smiting
				["description"] = "New Lightforged Draenei Paladins start with this weapon."
			}),
		})),
	}),
	cl(PRIEST, {
		n(ARMOR, {
			i(51, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Neophyte's Boots
			i(52, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Neophyte's Pants
			i(52680, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Neophyte's Pants
			i(6098, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Neophyte's Robe
			i(52547, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Neophyte's Robe
			i(187768, { ["timeline"] = { ADDED_9_1_5 } }),	-- Priest's Mitts
			i(187767, { ["timeline"] = { ADDED_9_1_5 } }),	-- Priest's Robes
			i(187766, { ["timeline"] = { ADDED_9_1_5 } }),	-- Priest's Sash
			i(187765, { ["timeline"] = { ADDED_9_1_5 } }),	-- Priest's Slippers
			i(187764, { ["timeline"] = { ADDED_9_1_5 } }),	-- Priest's Trousers
			i(187763, { ["timeline"] = { ADDED_9_1_5 } }),	-- Priest's Wristwraps
		}),
		n(WEAPONS, {
			i(20978, { ["timeline"] = { ADDED_3_0_2 } }),	-- Apprentice's Staff
			i(35, { ["timeline"] = { ADDED_1_1_0 } }),	-- Bent Staff
			i(3661, { ["timeline"] = { ADDED_1_1_0 } }),	-- Handcrafted Staff
			i(20981, { ["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 } }),	-- Neophyte's Mace
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157713),	-- Curate's Bindings
			i(157706),	-- Curate's Boots
			i(157707),	-- Curate's Gloves
			i(157709),	-- Curate's Pants
			i(157710),	-- Curate's Robe
			i(157712),	-- Curate's Sash
			i(157632, {	-- Staff of Interwoven Power
				["description"] = "New Nightborne or Void Elf Priests start with this weapon."
			}),
		})),
	}),
	cl(ROGUE, {
		n(ARMOR, {
			i(48, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Footpad's Pants
			i(47, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Footpad's Shoes
			i(58234, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Footpad's Vest
			i(187770, { ["timeline"] = { ADDED_9_1_5 } }),	-- Rogue's Footwear
			i(187773, { ["timeline"] = { ADDED_9_1_5 } }),	-- Rogue's Handwraps
			i(187769, { ["timeline"] = { ADDED_9_1_5 } }),	-- Rogue's Leggings
			i(187772, { ["timeline"] = { ADDED_9_1_5 } }),	-- Rogue's Tunic
			i(187771, { ["timeline"] = { ADDED_9_1_5 } }),	-- Rogue's Waistband
			i(121, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Thug Boots
			i(120, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Thug Pants
			i(58246, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Thug Vest
		}),
		n(WEAPONS, {
			i(20977, {	-- Recruit's Shortsword
				["timeline"] = { ADDED_4_0_1, REMOVED_9_0_1 }	-- TODO: I am not sure when this got removed.
			}),
			i(20982, {	-- Sharp Dagger
				["timeline"] = { ADDED_2_0_3, REMOVED_9_0_1 }	-- TODO: I am not sure when this got removed.
			}),
			i(50057, {	-- Sharp Dirk
				["description"] = "New Blood Elves start with this weapon.",
				["timeline"] = { ADDED_3_3_0 }
			}),
			i(2092, { ["timeline"] = { ADDED_1_1_0 } }),	-- Worn Dagger
			i(50055, { ["timeline"] = { ADDED_3_3_0 } }),	-- Worn Dirk
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157721),	-- Nimblefinger Bindings
			i(157715),	-- Nimblefinger Boots
			i(157718),	-- Nimblefinger Britches
			i(157716),	-- Nimblefinger Gloves
			i(157714),	-- Nimblefinger Jerkin
			i(157720),	-- Nimblefinger Waistband
			i(157636),	-- Serrated Poinard
		})),
	}),
	cl(SHAMAN, {
		n(ARMOR, {
			i(52545, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Primal Pants
			i(52544, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Primal Robe
			i(153, { ["timeline"] = { REMOVED_4_0_3 } }),	-- Primitive Kilt
			i(6135, { ["timeline"] = { REMOVED_4_0_3 } }),	-- Primitive Kilt
			i(187721, { ["timeline"] = { ADDED_9_1_5 } }),	-- Shaman's Belt
			i(187720, { ["timeline"] = { ADDED_9_1_5 } }),	-- Shaman's Boots
			i(187719, { ["timeline"] = { ADDED_9_1_5 } }),	-- Shaman's Bracers
			i(187718, { ["timeline"] = { ADDED_9_1_5 } }),	-- Shaman's Gloves
			i(187717, { ["timeline"] = { ADDED_9_1_5 } }),	-- Shaman's Pants
			i(187716, { ["timeline"] = { ADDED_9_1_5 } }),	-- Shaman's Vest
		}),
		n(WEAPONS, {
			i(36, { ["timeline"] = { ADDED_1_1_0 } }),	-- Worn Mace
			i(2362, { ["timeline"] = { ADDED_1_1_0 } }),	-- Worn Wooden Shield
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157655, {	-- Lightning-Binder's Bulwark
				["description"] = "New Allied Race Shamans start with this weapon."
			}),
			i(157638, {	-- Lightning-Binder's Claws
				["description"] = "New Allied Race Shamans start with this weapon."
			}),
			i(157729),	-- Totem-Caller Armbands
			i(157728),	-- Totem-Caller Belt
			i(157723),	-- Totem-Caller Boots
			i(157724),	-- Totem-Caller Gloves
			i(157726),	-- Totem-Caller Legwraps
			i(157722),	-- Totem-Caller Tunic
		})),
	}),
	cl(WARLOCK, {
		filter(MOUNTS, {
			mount(5784, {	-- Felsteed (MOUNT!)
				["timeline"] = { ADDED_1_1_0 },
				-- #if AFTER 9.0.1
				["description"] = "Received on reaching Level 10 as a Warlock.",
				["lvl"] = 10,
				-- #elseif AFTER 3.2.0
				["lvl"] = 20,
				-- #else
				["lvl"] = 40,
				-- #endif
				["classes"] = { WARLOCK },
			}),
		}),
		n(MAILBOX, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
			i(206681),	-- Letter from Oman (QS!)
			a(i(208226)),	-- Mysterious Letter (QS!)
			h(i(208227)),	-- Mysterious Letter (QS!)
		})),
		n(QUESTS, {
			["timeline"] = { ADDED_9_2_0 },
			["groups"] = {
				q(65425, {	-- Whatever You Sayaad (A)
					["description"] = "Start this quest via your own Sayaad(Succubus/Incubus Pet).",
					["provider"] = { "n", 184600 },	-- Warlock Minion
					["coord"] = { 79.5, 69.8, STORMWIND_CITY },
					["timeline"] = { ADDED_9_2_0, REMOVED_10_1_5 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
				}),
				q(65424, {	-- Whatever You Sayaad (H)
					["description"] = "Start this quest via your own Sayaad(Succubus/Incubus Pet).",
					["provider"] = { "n", 184600 },	-- Warlock Minion
					["coord"] = { 74.6, 47.4, ORGRIMMAR },
					["timeline"] = { ADDED_9_2_0, REMOVED_10_1_5 },
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
				}),
				q(76427, {	-- A Dark Summons (H)
					["provider"] = { "i", 208227 },	-- Mysterious Letter (QI!)
					["timeline"] = { ADDED_10_1_5 },
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,	-- need to confirm
				}),
				q(76430, {	-- Beginning Impositions (H)
					["provider"] = { "n", 207051 },	-- Assistant Phineas
					["coord"] = { 42.5, 51.8, 86 },	-- The Cleft of Shadows
					["timeline"] = { ADDED_10_1_5 },
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
				}),
				q(76410, {	-- A Dark Summons (A)
					["provider"] = { "i", 208226 },	-- Mysterious Letter (QI!)
					["timeline"] = { ADDED_10_1_5 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,	-- need to confirm
				}),
				q(75538, {	-- Beginning Impositions (A)
					["sourceQuests"] = { 76410 },	-- A Dark Summons (?)
					["provider"] = { "n", 204198 },	-- Assistant Phineas
					["coord"] = { 43.6, 79.3, STORMWIND_CITY },
					["timeline"] = { ADDED_10_1_5 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
				}),
				q(75539, {	-- Some Wicked Things This Way Come
					["sourceQuests"] = {
						75538,	-- Beginning Impositions (A)
						76430,	-- Beginning Impositions (H)
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 203968 },	-- Madam Shadow
					["coord"] = { 47.4, 78.9, DARKMOON_ISLAND },
					["timeline"] = { ADDED_10_1_5 },
					["classes"] = { WARLOCK },
				}),
				q(75540, {	-- Hermetic Insurance
					["sourceQuests"] = { 75539 },	-- Some Wicked Things This Way Come
					["provider"] = { "n", 203968 },	-- Madam Shadow
					["coord"] = { 47.4, 78.9, DARKMOON_ISLAND },
					["timeline"] = { ADDED_10_1_5 },
					["classes"] = { WARLOCK },
				}),
				q(75541, {	-- Those Who Hesitate
					["sourceQuests"] = { 75540 },	-- Hermetic Insurance
					["provider"] = { "n", 203968 },	-- Madam Shadow
					["coord"] = { 47.4, 78.9, DARKMOON_ISLAND },
					["timeline"] = { ADDED_10_1_5 },
					["classes"] = { WARLOCK },
				}),
				q(76155, {	-- A Wolf Among Sheep
					["sourceQuests"] = { 75541 },	-- Those Who Hesitate
					["provider"] = { "n", 205276 },	-- Initiate Oman
					["coord"] = { 47.4, 78.9, DARKMOON_ISLAND },
					["timeline"] = { ADDED_10_1_5 },
					["classes"] = { WARLOCK },
					["qi"] = 206160,	-- Madam Shadow's Grimoire (QI!)
					["groups"] = { spell(412234) },	-- Madam Shadow's Soulstone
				}),
				q(75542, {	-- Curses & Cultists
					["sourceQuests"] = { 76155 },	-- A Wolf Among Sheep
					["provider"] = { "n", 203968 },	-- Madam Shadow
					["coord"] = { 47.4, 78.9, DARKMOON_ISLAND },
					["timeline"] = { ADDED_10_1_5 },
					["classes"] = { WARLOCK },
				}),
				q(75639, {	-- Fel Suspicions
					["sourceQuests"] = { 75542 },	-- Curses & Cultists
					["provider"] = { "n", 205433 },	-- Initiate Oman
					["coord"] = { 58.9, 63.1, DARKMOON_ISLAND },
					["timeline"] = { ADDED_10_1_5 },
					["classes"] = { WARLOCK },
				}),
				q(75543, {	-- Last Rites By Accident
					["sourceQuests"] = { 75639 },	-- Fel Suspicions
					["provider"] = { "o", 402609 },	-- Demonic Gateway
					["coord"] = { 59.7, 62.2, DARKMOON_ISLAND },
					["timeline"] = { ADDED_10_1_5 },
					["classes"] = { WARLOCK },
				}),
				q(75544, {	-- When Revenge Burns Green
					["sourceQuests"] = { 75543 },	-- Last Rites By Accident
					["provider"] = { "n", 205575 },	-- Initiate Oman
					["coord"] = { 8.4, 36.0, BURNING_STEPPES },
					["timeline"] = { ADDED_10_1_5 },
					["classes"] = { WARLOCK },
					["groups"] = {
						spell(417884),	-- Fiendish Imps
						i(208108),	-- Madam Shadow's Old Grimoire
					},
				}),
				q(76163, {	-- A Lighter Shade of Fel
					["description"] = "You get this quest in your mailbox next weekly reset after finishing 'When Revenge Burns Green'",
					["sourceQuests"] = { 75544 },	-- When Revenge Burns Green
					["providers"] = {
						{ "i", 206681 },	-- Letter from Oman (QI!)
						{ "o", 405945 },	-- Mysterious Letter
					},
					["coord"] = { 39.7, 53.9, 86 },	-- The Cleft of Shadows
					["timeline"] = { ADDED_10_1_5 },
					["classes"] = { WARLOCK },
					["groups"] = { i(207101) },	-- Glyph of Banehollow's Soulstone
				}),
			},
		}),
		n(ARMOR, {
			i(1396, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Acolyte's Pants
			i(52679, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Acolyte's Pants
			i(57, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Acolyte's Robe
			i(52543, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Acolyte's Robe
			i(59, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Acolyte's Shoes
			i(187753, { ["timeline"] = { ADDED_9_1_5 } }),	-- Warlock's Mitts
			i(187751, { ["timeline"] = { ADDED_9_1_5 } }),	-- Warlock's Robes
			i(187756, { ["timeline"] = { ADDED_9_1_5 } }),	-- Warlock's Sash
			i(187755, { ["timeline"] = { ADDED_9_1_5 } }),	-- Warlock's Slippers
			i(187752, { ["timeline"] = { ADDED_9_1_5 } }),	-- Warlock's Trousers
			i(187754, { ["timeline"] = { ADDED_9_1_5 } }),	-- Warlock's Wristwraps
		}),
		n(WEAPONS, {
			i(20978, { ["timeline"] = { ADDED_3_0_2 } }),	-- Apprentice's Staff
			i(35, { ["timeline"] = { ADDED_1_1_0 } }),	-- Bent Staff
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157736),	-- Felburner's Cord
			i(157731),	-- Felburner's Handwraps
			i(157733),	-- Felburner's Leggings
			i(157734),	-- Felburner's Robe
			i(157730),	-- Felburner's Sandals
			i(157737),	-- Felburner's Wristwraps
			i(157652, {	-- Shadow-Binder's Spire
				["description"] = "New Allied Race Warlocks start with this weapon."
			}),
		})),
	}),
	cl(WARRIOR, {
		n(ARMOR, {
			i(140, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Brawler's Boots
			i(139, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Brawler's Pants
			i(58245, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Brawler's Vest
			i(40, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Recruit's Boots
			i(39, { ["timeline"] = { REMOVED_9_1_5 } }),	-- Recruit's Pants
			i(58231, { ["timeline"] = { ADDED_4_0_3, REMOVED_9_1_5 } }),	-- Recruit's Vest
			i(187748, { ["timeline"] = { ADDED_9_1_5 } }),	-- Warrior's Chestplate
			i(187747, { ["timeline"] = { ADDED_9_1_5 } }),	-- Warrior's Cuffs
			i(187746, { ["timeline"] = { ADDED_9_1_5 } }),	-- Warrior's Gauntlets
			i(187745, { ["timeline"] = { ADDED_9_1_5 } }),	-- Warrior's Girdle
			i(187744, { ["timeline"] = { ADDED_9_1_5 } }),	-- Warrior's Greaves
			i(187743, { ["timeline"] = { ADDED_9_1_5 } }),	-- Warrior's Sabatons
		}),
		n(WEAPONS, {
			i(12282, {	-- Worn Battleaxe
				["timeline"] = { REMOVED_9_0_1 },	-- TODO: I am not sure when this got removed.
			}),
			i(49778, {	-- Worn Greatsword
				["timeline"] = { ADDED_2_0_3, REMOVED_9_0_1 },	-- TODO: I am not sure when this got removed.
			}),
			i(25, { ["timeline"] = { ADDED_1_1_0 } }),	-- Worn Shortsword
			i(2362, { ["timeline"] = { ADDED_1_1_0 } }),	-- Worn Wooden Shield
		}),
		n(ALLIED_RACES, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }, }, {
			i(157643),	-- Helm-Hewer Greataxe
			i(157738),	-- Warsinger's Breastplate
			i(157740),	-- Warsinger's Gauntlets
			i(157744),	-- Warsinger's Girdle
			i(157742),	-- Warsinger's Legplates
			i(157739),	-- Warsinger's Sabatons
			i(157745),	-- Warsinger's Vambraces
		})),
	}),
	-- #if AFTER 7.0.3
	filter(COSMETIC, {
		i(143539, {["timeline"] = {ADDED_7_1_0}}),	-- Hidden Belt
		i(168664, {["timeline"] = {ADDED_8_2_0}}),	-- Hidden Boots
		i(168665, {["timeline"] = {ADDED_8_2_0}}),	-- Hidden Bracers
		i(168659, {["timeline"] = {ADDED_8_2_0}}),	-- Hidden Chestpiece
		i(134111, {["timeline"] = {ADDED_7_0_3}}),	-- Hidden Cloak
		i(158329, {["timeline"] = {ADDED_8_0_1}}),	-- Hidden Gloves
		i(134110, {["timeline"] = {ADDED_7_0_3}}),	-- Hidden Helm
		i(216696, {["timeline"] = {ADDED_11_0_0}}),	-- Hidden Pants
		i(142503, {["timeline"] = {ADDED_7_1_0}}),	-- Hidden Shirt
		i(134112, {["timeline"] = {ADDED_7_0_3}}),	-- Hidden Shoulder
		i(142504, {["timeline"] = {ADDED_7_1_0}}),	-- Hidden Tabard
	}),
	-- #endif
	filter(ILLUSIONS, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 }, }, {
		ill(5387),	-- Agility (ILLUSION!)
		ill(5861),	-- Beastslayer (ILLUSION!)
		ill(5393),	-- Crusader (ILLUSION!)
		ill(1898),	-- Lifestealing (ILLUSION!)
		ill(5360),	-- Hide Weapon Enchant (ILLUSION!)
		ill(5389),	-- Striking (ILLUSION!)
		ill(5862),	-- Titanguard (ILLUSION!)
	})),
	filter(SHIRTS, {
		-- #if BEFORE 2.0.1
		i(6097, {	-- Acolyte's Shirt
			["races_disp"] = { HUMAN, GNOME },
		}),
		-- #endif
		i(6125, {	-- Brawler's Harness
			["description"] = "Former Starter Shirt for Orc, Troll, Tauren & Undead Warriors",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(49, {	-- Footpad's Shirt
			["description"] = "Former Starter Shirt for Human, Night Elf, Dwarf & Gnome Rogues",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(49567, {	-- Gilnean Adventurer's Shirt
			["description"] = "New Worgen Hunters, Rogues, and Warriors start out with this shirt.",
			["timeline"] = { ADDED_4_0_3 },
		}),
		i(24143, {	-- Initiate's Shirt
			["description"] = "Former Starter Shirt for Blood Elf Paladins",
			["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
		}),
		i(20897, {	-- Lookout's Tunic
			["description"] = "Former Starter Shirt for Blood Elf Rogues.",
			["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
		}),
		i(53, {	-- Neophyte's Shirt
			-- #if BEFORE 4.0.3
			-- #if AFTER 2.0.1
			["description"] = "Former Starter Shirt for Priests. (Also available from Old Hillsbrad)",
			-- #else
			["description"] = "Former Starter Shirt for Priests.",
			-- #endif
			["timeline"] = { ADDED_1_1_0, REMOVED_4_0_3 },
			-- #else
			["timeline"] = { ADDED_1_1_0 },
			-- #endif
		}),
		i(154, {	-- Primitive Mantle
			["description"] = "Former Starter Shirt for Orc & Tauren Shamans",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(6134, {	-- Primitive Mantle
			["description"] = "Former Starter Shirt for Troll Shamans",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(23473, {	-- Recruit's Shirt
			["description"] = "Former Starter Shirt for Draenei Warriors and Mages",
			["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
		}),
		i(6120, {	-- Recruit's Shirt
			["description"] = "Former Starter Shirt for Night Elf Warriors",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		-- #if BEFORE 2.0.1
		i(38, {	-- Recruit's Shirt
			["description"] = "Former Starter Shirt for Human Warriors",
		}),
		-- #endif
		i(148, {	-- Rugged Trapper's Shirt
			["description"] = "Former Starter Shirt for Dwarf & Night Elf Hunters",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(23345, {	-- Scout's Shirt
			["description"] = "Former Starter Shirt for Draenei Hunters and Shamans",
			["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
		}),
		i(6117, {	-- Squire's Shirt
			["description"] = "Former Starter Shirt for Dwarf Paladins",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(23476, {	-- Squire's Shirt
			["description"] = "Former Starter Shirt for Draenei Paladins",
			["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
		}),
		i(2105, {	-- Thug Shirt
			["description"] = "Former Starter Shirt for Undead & Orc Rogues",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(127, {	-- Trapper's Shirt
			["description"] = "Former Starter Shirt for Orc, Tauren & Troll Hunters",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(6136, {	-- Trapper's Shirt [CATA+] / Thug Shirt [Classic]
			["description"] = "Former Starter Shirt for Troll Rogues",
			["timeline"] = { REMOVED_4_0_3 },
		}),
		i(20901, {	-- Warder's Shirt
			["description"] = "Former Starter Shirt for Blood Elf Hunters",
			["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
		}),
	}),
	n(WEAPONS, {	-- These were used and changed so many times on different classes, that I leave them here.
		i(23346, {	-- Battleworn Claymore
			["timeline"] = { ADDED_2_0_3, REMOVED_9_0_1 },	-- TODO: I am not sure when this got removed.
		}),
		i(2361, {	-- Battleworn Hammer
			["timeline"] = { REMOVED_9_0_1 },	-- TODO: I am not sure when this got removed.
		}),
		i(37, {	-- Worn Axe
			-- #if BEFORE 10.1.7
			-- #if AFTER 7.3.5
			["description"] = "Former Starter Weapon for Orc, Troll & Worgen Rogues as well as Dwarf, Orc, Tauren & Troll Hunters.",
			-- #endif
			-- #endif
			["timeline"] = { ADDED_1_11_0, REMOVED_3_0_2, ADDED_4_0_1, REMOVED_7_3_5 },
		}),
		i(52532, {	-- Worn Wood Chopper
		--	["classes"] = { HUNTER },
		--	["races"] = { GOBLIN, HUMAN, UNDEAD, WORGEN },
			-- #if BEFORE 10.1.7
			-- #if AFTER 5.0.4
			["description"] = "Former Starter Weapon for Goblin, Human, Undead & Worgen Hunters.",
			-- #endif
			-- #endif
			["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
		}),
	}),
	-- #if AFTER 10.0.7
	-- #if BEFORE 11.0.0
	-- Fixed with TWW - you can collect any armor with any class
	filter(CLOTH, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {
		["groups"] = sharedData({
			["sharedDescription"] = "This item is obtained by a newly created worgen monk, but because it's soulbound cloth item, you can't learn it.",
			["collectible"] = false,
		},{
			i(204268),	-- Gilnean Trainee's Cord
			i(204267),	-- Gilnean Trainee's Leggings
			i(204266),	-- Gilnean Trainee's Vest
			i(204269),	-- Gilnean Trainee's Wristwraps
		}),
	})),
	filter(CLOTH, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {
		["groups"] = sharedData({
			["sharedDescription"] = "This item is obtained by a newly created goblin monk, but because it's soulbound cloth item, you can't learn it.",
			["collectible"] = false,
		},{
			i(204259),	-- Goblin Trainee's Cord
			i(204260),	-- Goblin Trainee's Leggings
			i(204261),	-- Goblin Trainee's Vest
			i(204258),	-- Goblin Trainee's Wristwraps
		}),
	})),
	-- #endif
	-- #endif
	n(QUESTS, bubbleDownSelf({
		["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
		["timeline"] = { ADDED_11_0_5 },
	}, {
		q(84423, {	-- Shaking the Dust Off
			["provider"] = { "n", 229075 },	-- Scalecommander Emberthal
			["coord"] = { 43.0, 89.4, THE_WAR_CRECHE },
		}),
		q(84424, {	-- Forward, to Adventure!
			["sourceQuests"] = { 84423 },	-- Shaking the Dust Off
			["provider"] = { "n", 229075 },	-- Scalecommander Emberthal
			["coord"] = { 43.0, 89.4, THE_WAR_CRECHE },
			["groups"] = {
				o(467064, {	-- Quest Journal
					["coord"] = { 44.2, 82.5, THE_WAR_CRECHE },
					["groups"] = { i(229165) },	-- Quest Journal (QI!)
				}),
			},
		}),
		q(85026, {	-- Where Legends are Made
			["sourceQuests"] = { 84424 },	-- Forward, to Adventure!
			["provider"] = { "n", 167032 },	-- Chromie
			["coords"] = {
				{ 40.8, 80.1, ORGRIMMAR },
				{ 56.2, 17.2, STORMWIND_CITY },
			},
		}),
	})),
	i(6948),	-- Hearthstone
}));
root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.DF, {
		n(NEW_CHARACTER, {
			["timeline"] = { ADDED_10_0_7 },
			["groups"] = {
				cl(EVOKER, {
					q(74891),	-- Triggers on the first use of 'Soar' spell after 10.0.7 to get the 'Aerial Halt' (spellID 403092)
				}),
				cl(WARLOCK, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
					n(QUESTS, {
						q(76444),	-- After completion of 'When Revenge Burns Green' (questID 75544)
						q(77285),	-- After completion of 'When Revenge Burns Green' (questID 75544)
					}),
				})),
			},
		}),
	}),
	expansion(EXPANSION.TWW, {
		n(NEW_CHARACTER, {
			["timeline"] = { ADDED_11_0_5 },
			["groups"] = {
				n(QUESTS, {
					q(85023),	-- When accepting 'Forward, to Adventure!' (questID 84424)
				}),
			},
		}),
	}),
});
