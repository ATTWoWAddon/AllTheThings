-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, n(NEW_CHARACTER, {
	header(HEADERS.Race, DWARF, {
		cl(PALADIN, {
			filter(MOUNTS),
		}),
		cl(SHAMAN),
	}),
	header(HEADERS.Race, NIGHTELF, {
		cl(DRUID, {
			i(6123),	-- Novice's Robe
		}),
		cl(MAGE),
		cl(PRIEST, {
			i(6119),	-- Neophyte's Robe
		}),
		cl(WARRIOR, {
			i(6122),	-- Recruit's Boots
			i(6121),	-- Recruit's Pants
		}),
	}),
	header(HEADERS.Race, TAUREN, {
		cl(PALADIN, {
			filter(MOUNTS),
		}),
	}),
	header(HEADERS.Race, UNDEAD, {
		cl(MAGE, {
			i(6140),	-- Apprentice's Robe
		}),
		cl(PRIEST, {
			i(6144),	-- Neophyte's Robe
		}),
		cl(WARLOCK, {
			i(6129),	-- Acolyte's Robe
		}),
	}),
	cl(DRUID, {
		n(ARMOR, {
			i(6124),	-- Novice's Pants
			i(6139),	-- Novice's Robe
		}),
		n(WEAPONS, {
			i(35, { timeline = { ADDED_1_1_0 } }),	-- Bent Staff
			i(3661, { timeline = { ADDED_1_1_0 } }),	-- Handcrafted Staff
		}),
	}),
	cl(HUNTER, {
		n(ARMOR, {
			i(129),	-- Rugged Trapper's Boots
			i(147),	-- Rugged Trapper's Pants
			i(6137),	-- Thug Pants
			i(6138),	-- Trapper's Boots [CATA+] / Thug Boots [Classic]
			i(6127),	-- Trapper's Boots [Orc]
			i(6126),	-- Trapper's Pants [Orc]
		}),
		n(WEAPONS, {
			i(2508, { timeline = { ADDED_1_1_0 } }),	-- Old Blunderbuss
			i(2504),	-- Worn Shortbow
		}),
	}),
	cl(MAGE, {
		n(ARMOR, {
			i(55),	-- Apprentice's Boots
			i(1395),	-- Apprentice's Pants
			i(56),	-- Apprentice's Robe
		}),
		n(WEAPONS, {
			i(35, { timeline = { ADDED_1_1_0 } }),	-- Bent Staff
			i(3661, { timeline = { ADDED_1_1_0 } }),	-- Handcrafted Staff
		}),
	}),
	cl(PALADIN, {
		filter(MOUNTS, {
			mount(13819, {	-- Warhorse (MOUNT!)
				timeline = { ADDED_1_1_0 },
				lvl = 40,
				races = { HUMAN, DWARF },
				classes = { PALADIN },
			}),
		}),
		n(ARMOR, {
			i(43),	-- Squire's Boots
			i(44),	-- Squire's Pants
			i(6118),	-- Squire's Pants [Dwarf]
		}),
		n(WEAPONS, {
			i(36, { timeline = { ADDED_1_1_0 } }),	-- Worn Mace
			i(2362, { timeline = { ADDED_1_1_0 } }),	-- Worn Wooden Shield
		}),
	}),
	cl(PRIEST, {
		n(ARMOR, {
			i(51),	-- Neophyte's Boots
			i(52),	-- Neophyte's Pants
			i(6098),	-- Neophyte's Robe
		}),
		n(WEAPONS, {
			i(35, { timeline = { ADDED_1_1_0 } }),	-- Bent Staff
			i(3661, { timeline = { ADDED_1_1_0 } }),	-- Handcrafted Staff
		}),
	}),
	cl(ROGUE, {
		n(ARMOR, {
			i(48),	-- Footpad's Pants
			i(47),	-- Footpad's Shoes
			i(121),	-- Thug Boots
			i(120),	-- Thug Pants
		}),
		n(WEAPONS, {
			i(2092, { timeline = { ADDED_1_1_0 } }),	-- Worn Dagger
		}),
	}),
	cl(SHAMAN, {
		n(ARMOR, {
			i(153),	-- Primitive Kilt
			i(6135),	-- Primitive Kilt
		}),
		n(WEAPONS, {
			i(36, { timeline = { ADDED_1_1_0 } }),	-- Worn Mace
			i(2362, { timeline = { ADDED_1_1_0 } }),	-- Worn Wooden Shield
		}),
	}),
	cl(WARLOCK, {
		filter(MOUNTS, {
			mount(5784, {	-- Felsteed (MOUNT!)
				timeline = { ADDED_1_1_0 },
				lvl = 40,
				classes = { WARLOCK },
			}),
		}),
		n(ARMOR, {
			i(1396),	-- Acolyte's Pants
			i(57),	-- Acolyte's Robe
			i(59),	-- Acolyte's Shoes
		}),
		n(WEAPONS, {
			i(35, { timeline = { ADDED_1_1_0 } }),	-- Bent Staff
		}),
	}),
	cl(WARRIOR, {
		n(ARMOR, {
			i(140),	-- Brawler's Boots
			i(139),	-- Brawler's Pants
			i(40),	-- Recruit's Boots
			i(39),	-- Recruit's Pants
		}),
		n(WEAPONS, {
			i(12282),	-- Worn Battleaxe
			i(25, { timeline = { ADDED_1_1_0 } }),	-- Worn Shortsword
			i(2362, { timeline = { ADDED_1_1_0 } }),	-- Worn Wooden Shield
		}),
	}),
	filter(SHIRTS, {
		i(6097, {	-- Acolyte's Shirt
			races_disp = { HUMAN, GNOME },
		}),
		i(6096, {	-- Apprentice's Shirt
			description = "Starter Shirt for Gnome Mages.",
			-- TODO: which other races' mages start with it.
		}),
		i(6125, {	-- Brawler's Harness
			description = "Former Starter Shirt for Orc, Troll, Tauren & Undead Warriors",
		}),
		i(49, {	-- Footpad's Shirt
			description = "Former Starter Shirt for Human, Night Elf, Dwarf & Gnome Rogues",
		}),
		i(53, {	-- Neophyte's Shirt
			description = "Former Starter Shirt for Priests.",
			timeline = { ADDED_1_1_0 },
		}),
		i(154, {	-- Primitive Mantle
			description = "Former Starter Shirt for Orc & Tauren Shamans",
		}),
		i(6134, {	-- Primitive Mantle
			description = "Former Starter Shirt for Troll Shamans",
		}),
		i(6120, {	-- Recruit's Shirt
			description = "Former Starter Shirt for Night Elf Warriors",
		}),
		i(38, {	-- Recruit's Shirt
			description = "Former Starter Shirt for Human Warriors",
		}),
		i(148, {	-- Rugged Trapper's Shirt
			description = "Former Starter Shirt for Dwarf & Night Elf Hunters",
		}),
		i(6117, {	-- Squire's Shirt
			description = "Former Starter Shirt for Dwarf Paladins",
		}),
		i(2105, {	-- Thug Shirt
			description = "Former Starter Shirt for Undead & Orc Rogues",
		}),
		i(127, {	-- Trapper's Shirt
			description = "Former Starter Shirt for Orc, Tauren & Troll Hunters",
		}),
		i(6136, {	-- Trapper's Shirt [CATA+] / Thug Shirt [Classic]
			description = "Former Starter Shirt for Troll Rogues",
		}),
	}),
	n(WEAPONS, {	-- These were used and changed so many times on different classes, that I leave them here.
		i(2361),	-- Battleworn Hammer
		i(37, {	-- Worn Axe
			timeline = { ADDED_1_11_0 },
		}),
	}),
	i(6948),	-- Hearthstone
}));
