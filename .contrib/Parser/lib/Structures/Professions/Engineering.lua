-----------------
-- ENGINEERING --
-----------------
APPRENTICE_JOURNEYMAN_ENGINEERING = {
	r(4036, {	-- Engineering (Apprentice)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 5,
		-- #endif
		["rank"] = 1,
	}),
	r(4037, {	-- Engineering (Journeyman)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 10,
		-- #endif
		["rank"] = 2,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264475, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Engineering
	r(9271),	-- Aquadynamic Fish Attractor
	r(7430),	-- Arclight Spanner
	r(3950),	-- Big Bronze Bomb
	r(3953),	-- Bronze Framework
	r(3938),	-- Bronze Tube
	r(8334),	-- Clockwork Box[Cata+] / Classic: Practice Lock
	r(3929),	-- Coarse Blasting Powder
	r(3931),	-- Coarse Dynamite
	r(3926, {["timeline"] = {REMOVED_4_3_0}}),	-- Copper Modulator
	r(3924, {["timeline"] = {REMOVED_4_3_0}}),	-- Copper Tube
	r(3930, {["timeline"] = {REMOVED_4_0_1}}),	-- Crafted Heavy Shot
	r(3920, {["timeline"] = {REMOVED_4_0_1}}),	-- Crafted Light Shot
	r(3947, {["timeline"] = {REMOVED_4_0_1}}),	-- Crafted Solid Shot
	r(3977),	-- Crude Scope
	r(3936),	-- Deadly Blunderbuss
	r(3955),	-- Explosive Sheep
	r(3934),	-- Flying Tiger Goggles
	r(12584),	-- Gold Power Core
	r(3956),	-- Green Tinted Goggles
	r(3922),	-- Handful of Copper Bolts
	r(3945),	-- Heavy Blasting Powder
	r(3946),	-- Heavy Dynamite
	r(3937),	-- Large Copper Bomb
	r(6458),	-- Ornate Spyglass
	r(3918),	-- Rough Blasting Powder
	r(3925),	-- Rough Boomstick
	r(3923),	-- Rough Copper Bomb
	r(3919),	-- Rough Dynamite
	r(3973),	-- Silver Contact
	r(3949),	-- Silver-plated Shotgun
	r(3941),	-- Small Bronze Bomb
	r(3978),	-- Standard Scope
	r(3932),	-- Target Dummy
	r(3942),	-- Whirring Bronze Gizmo

	r(39895, {["timeline"] = {ADDED_5_0_4}}),	-- Fused Wiring
};
EXPERT_ARTISAN_ENGINEERING = {
	r(4038, {	-- Engineering (Expert)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		-- #if SEASON_OF_DISCOVERY
		["OnUpdate"] = [[function(t)
			t.lvl = _.Settings:GetUnobtainableFilter(]] .. SOD_PHASE_ONE .. [[) and 26 or 20;
		end]],
		-- #else
		["lvl"] = 20,
		-- #endif
		-- #endif
		["rank"] = 3,
	}),
	r(12656, {	-- Engineering (Artisan)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		-- #if SEASON_OF_DISCOVERY
		["OnUpdate"] = [[function(t)
			t.lvl = _.Settings:GetUnobtainableFilter(]] .. SOD_PHASE_ONE .. [[) and 41 or 35;
		end]],
		-- #else
		["lvl"] = 35,
		-- #endif
		-- #endif
		["rank"] = 4,
	}),
	r(3979, {["timeline"] = {ADDED_5_0_4}}),	-- Accurate Scope
	r(3965),	-- Advanced Target Dummy
	r(3967),	-- Big Iron Bomb
	r(3963),	-- Compact Harvest Reaper Kit
	r(12617, {["timeline"] = {ADDED_4_1_0}}),	-- Deepdive Helmet
	r(19788),	-- Dense Blasting Powder
	r(23070),	-- Dense Dynamite
	r(12594),	-- Fire Goggles
	r(12622),	-- Green Lens
	r(3961),	-- Gyrochronatom
	r(12590),	-- Gyromatic Micro-Adjustor
	r(12619),	-- Hi-Explosive Bomb
	r(12596, {["timeline"] = {REMOVED_4_0_1}}),	-- Hi-Impact Mithril Slugs
	r(63750, {["timeline"] = {ADDED_3_1_0}}),	-- High-powered Flashlight
	r(3962),	-- Iron Grenade
	r(3958),	-- Iron Strut
	r(3939, {["timeline"] = {ADDED_4_1_0}}),	-- Lovingly Crafted Boomstick
	r(19825, {["timeline"] = {ADDED_2_0_1}}),	-- Master Engineer's Goggles
	r(15255),	-- Mechanical Repair Kit
	r(12595),	-- Mithril Blunderbuss
	r(12599),	-- Mithril Casing
	r(12603),	-- Mithril Frag Bomb
	r(12621, {["timeline"] = {REMOVED_4_0_1}}),	-- Mithril Gyro-Shot
	r(12589),	-- Mithril Tube
	r(12618),	-- Rose Colored Goggles
	r(19567, {["timeline"] = {REMOVED_6_0_2}}),	-- Salt Shaker
	r(12585),	-- Solid Blasting Powder
	r(12586),	-- Solid Dynamite
	r(12615, {["timeline"] = {ADDED_2_0_3}}),	-- Spellpower Goggles Xtreme
	r(19794, {["timeline"] = {ADDED_4_0_3}}),	-- Spellpower Goggles Xtreme Plus
	r(19790, {["timeline"] = {ADDED_3_0_2}}),	-- Thorium Grenade
	r(19792, {["timeline"] = {ADDED_2_0_3}}),	-- Thorium Rifle
	r(19800, {["timeline"] = {ADDED_2_0_3, REMOVED_4_0_1}}),	-- Thorium Shells
	r(19795, {["timeline"] = {ADDED_2_1_0}}),	-- Thorium Tube
	r(19791, {["timeline"] = {ADDED_3_0_2}}),	-- Thorium Widget
	r(23071, {["timeline"] = {ADDED_2_0_1}}),	-- Truesilver Transformer
	r(12591),	-- Unstable Trigger
};
CLASSIC_GNOMISH_ENGINEERING = {
	r(20219, {	-- Gnomish Engineer
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
	}),
	r(12906),	-- Gnomish Battle Chicken
	r(12759),	-- Gnomish Death Ray
	r(12897),	-- Gnomish Goggles
	r(12903),	-- Gnomish Harm Prevention Belt
	r(12907),	-- Gnomish Mind Control Cap
	r(12902),	-- Gnomish Net-o-Matic Projector
	r(12905),	-- Gnomish Rocket Boots
	r(12899),	-- Gnomish Shrink Ray
	r(12895),	-- Inlaid Mithril Cylinder Plans
};
CLASSIC_GOBLIN_ENGINEERING = {
	r(20222, {	-- Goblin Engineer
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
	}),
	r(12755),	-- Goblin Bomb Dispenser
	r(12718),	-- Goblin Construction Helmet
	r(12908),	-- Goblin Dragon Gun
	r(12717),	-- Goblin Mining Helmet
	r(12716),	-- Goblin Mortar
	r(8895),	-- Goblin Rocket Boots
	r(12715),	-- Goblin Rocket Fuel Recipe
	r(12758),	-- Goblin Rocket Helmet
	r(12760),	-- Goblin Sapper Charge
	r(12754),	-- The Big One
	r(13240, {["timeline"] = {REMOVED_4_0_1}}),	-- The Mortar: Reloaded
};
CLASSIC_ENGINEERING = appendGroups(APPRENTICE_JOURNEYMAN_ENGINEERING,
-- #if AFTER 2.1.0
EXPERT_ARTISAN_ENGINEERING
-- #else
	{}
-- #endif
);
TBC_ENGINEERING = applyclassicphase(TBC_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_2_0_5 } }, {
	r(30350, {	-- Engineering (Master)
		["timeline"] = { ADDED_2_0_5, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 50,
		-- #endif
		["rank"] = 5,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264479, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Outland Engineering
	n(ARMOR, {
		applyclassicphase(TBC_PHASE_TWO, r(41317, {	-- Deathblow X11 Goggles
			["timeline"] = { ADDED_2_1_0 },
			-- #if BEFORE 7.3.5
			["classes"] = { ROGUE, MONK, DRUID },
			-- #endif
		})),
		applyclassicphase(TBC_PHASE_TWO, r(41320, {	-- Destruction Holo-gogs
			["timeline"] = { ADDED_2_1_0 },
			-- #if BEFORE 7.3.5
			["classes"] = { PRIEST, MAGE, WARLOCK },
			-- #endif
		})),
		applyclassicphase(TBC_PHASE_TWO, r(40274, {	-- Furious Gizmatic Goggles
			["timeline"] = { ADDED_2_1_0 },
			-- #if BEFORE 7.3.5
			["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
			-- #endif
		})),
		applyclassicphase(TBC_PHASE_TWO, r(41315, {	-- Gadgetstorm Goggles
			["timeline"] = { ADDED_2_1_0 },
			-- #if BEFORE 7.3.5
			["classes"] = { SHAMAN },
			-- #endif
		})),
		applyclassicphase(TBC_PHASE_TWO, r(41311, {	-- Justicebringer 2000 Specs
			["timeline"] = { ADDED_2_1_0 },
			-- #if BEFORE 7.3.5
			["classes"] = { PALADIN },
			-- #endif
		})),
		applyclassicphase(TBC_PHASE_TWO, r(41316, {	-- Living Replicator Specs
			["timeline"] = { ADDED_2_1_0 },
			-- #if BEFORE 7.3.5
			["classes"] = { SHAMAN },
			-- #endif
		})),
		applyclassicphase(TBC_PHASE_TWO, r(41319, {	-- Magnified Moon Specs
			["timeline"] = { ADDED_2_1_0 },
			-- #if BEFORE 7.3.5
			["classes"] = { DRUID },
			-- #endif
		})),
		applyclassicphase(TBC_PHASE_TWO, r(41321, {	-- Powerheal 4000 Lens
			["timeline"] = { ADDED_2_1_0 },
			-- #if BEFORE 7.3.5
			["classes"] = { PRIEST },
			-- #endif
		})),
		applyclassicphase(TBC_PHASE_TWO, r(41314, {	-- Surestrike Goggles v2.0
			["timeline"] = { ADDED_2_1_0 },
			-- #if BEFORE 7.3.5
			["classes"] = { HUNTER, SHAMAN },
			-- #endif
		})),
		applyclassicphase(TBC_PHASE_TWO, r(41312, {	-- Tankatronic Goggles
			["timeline"] = { ADDED_2_1_0 },
			-- #if BEFORE 7.3.5
			["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
			-- #endif
		})),
		applyclassicphase(TBC_PHASE_TWO, r(41318, {	-- Wonderheal XT40 Shades
			["timeline"] = { ADDED_2_1_0 },
			-- #if BEFORE 7.3.5
			["classes"] = { DRUID },
			-- #endif
		})),
	}),
	filter(MISC, {
		r(30311),	-- Adamantite Grenade
		r(30310),	-- Fel Iron Bomb
		r(30346, {["timeline"] = {ADDED_2_0_5, REMOVED_4_0_1}}),	-- Fel Iron Shells
		r(39973, {["timeline"] = {ADDED_2_1_0}}),	-- Frost Grenade
	}),
	filter(REAGENTS, {
		r(30306),	-- Adamantite Frame
		r(30303),	-- Elemental Blasting Powder
		r(30304),	-- Fel Iron Casing
		r(30309),	-- Felsteel Stabilizer
		r(30305),	-- Handful of Fel Iron Bolts
		r(30307),	-- Hardened Adamantite Tube
		r(39971, {["timeline"] = {ADDED_2_1_0}}),	-- Icy Blasting Primers
		r(30308),	-- Khorium Power Core
	}),
	n(WEAPONS, {
		r(30312),	-- Fel Iron Musket
		applyclassicphase(TBC_PHASE_TWO, r(41307, {["timeline"] = {ADDED_2_1_0}})),	-- Gyro-balanced Khorium Destroyer
	}),
}));
TBC_GNOMISH_ENGINEERING = applyclassicphase(TBC_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_2_0_5 } }, {
	r(30575),	-- Gnomish Battle Goggles
	r(30568),	-- Gnomish Flame Turret
	r(30569),	-- Gnomish Poultryizer
	r(30574),	-- Gnomish Power Goggles
	r(30570),	-- Nigh-Invulnerability Belt
}));
TBC_GOBLIN_ENGINEERING = applyclassicphase(TBC_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_2_0_5 } }, {
	r(30565),	-- Foreman's Enchanted Helmet
	r(30566),	-- Foreman's Reinforced Helmet
	r(30563),	-- Goblin Rocket Launcher
	r(30560),	-- Super Sapper Charge
	r(30558),	-- The Bigger One
}));
CLASSIC_TBC_GNOMISH_ENGINEERING = appendGroups(CLASSIC_GNOMISH_ENGINEERING,
-- #if AFTER 2.0.5
TBC_GNOMISH_ENGINEERING
-- #else
	{}
-- #endif
);
CLASSIC_TBC_GOBLIN_ENGINEERING = appendGroups(CLASSIC_GOBLIN_ENGINEERING,
-- #if AFTER 2.0.5
TBC_GOBLIN_ENGINEERING
-- #else
	{}
-- #endif
);
WRATH_ENGINEERING = applyclassicphase(WRATH_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_3_0_3 } }, {
	r(51306, {	-- Engineering (Grand Master)
		["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 65,
		-- #endif
		["rank"] = 6,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264481, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Northrend Engineering
	n(ARMOR, {
		r(56480, {	-- Armored Titanium Goggles
			-- #if BEFORE 7.3.0
			["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
			-- #endif
		}),
		r(56483, {	-- Charged Titanium Specs
			-- #if BEFORE 7.3.0
			["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
			-- #endif
		}),
		r(56487, {	-- Electroflux Sight Enhancers
			-- #if BEFORE 7.3.0
			["classes"] = {
				-- #if AFTER CATA
				-- CRIEVE NOTE: Not sure what patch this becomes available to hunters.
				HUNTER,
				-- #endif
				SHAMAN,
			},
			-- #endif
		}),
		r(56486, {	-- Greensight Gogs
			-- #if BEFORE 7.3.0
			["classes"] = { DRUID },
			-- #endif
		}),
		r(56465, {	-- Mechanized Snow Goggles
			-- #if BEFORE 7.3.0
			["classes"] = { PRIEST, MAGE, WARLOCK },
			-- #endif
		}),
		r(61481, {	-- Mechanized Snow Goggles
			-- #if BEFORE 7.3.0
			["classes"] = { DRUID, ROGUE, MONK, DEMONHUNTER },
			-- #endif
		}),
		r(61482, {	-- Mechanized Snow Goggles
			-- #if BEFORE 7.3.0
			["classes"] = { HUNTER, SHAMAN },
			-- #endif
		}),
		r(61483, {	-- Mechanized Snow Goggles
			-- #if BEFORE 7.3.0
			["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
			-- #endif
		}),
		r(56574, {	-- Truesight Ice Blinders
			-- #if BEFORE 7.3.0
			["classes"] = { HUNTER, SHAMAN },
			-- #endif
		}),
		r(62271, {	-- Unbreakable Healing Amplifiers
			["timeline"] = {ADDED_3_0_8},
			-- #if BEFORE 7.3.0
			["classes"] = { PALADIN },
			-- #endif
		}),
		r(56484, {	-- Visage Liquification Goggles
			-- #if BEFORE 7.3.0
			["classes"] = { PRIEST, MAGE, WARLOCK },
			-- #endif
		}),
		r(56481, {	-- Weakness Spectralizers
			-- #if BEFORE 7.3.0
			["classes"] = { DRUID, ROGUE, MONK, DEMONHUNTER },
			-- #endif
		}),
	}),
	n(ARMOR_ENCHANTMENTS, {
		r(54736),	-- EMP Generator[MoP+] \\ Personal Electromagnetic Pulse Generator[Wrath-MoP]
		r(55002),	-- Flexweave Underlay
		r(54793),	-- Frag Belt
		r(54998, {["timeline"] = {ADDED_3_0_3, REMOVED_6_0_2}}),	-- Hand-Mounted Pyro Rocket
		r(54999, {["timeline"] = {ADDED_3_0_3, REMOVED_6_0_2}}),	-- Hyperspeed Accelerators
		r(67839, {["timeline"] = {ADDED_3_2_0}}),	-- Mind Amplification Dish
		r(55016),	-- Nitro Boosts
		r(63770, {["timeline"] = {ADDED_3_0_3, REMOVED_6_0_2}}),	-- Reticulated Armor Webbing
		r(63765, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_1}}),	-- Springy Arachnoweave
	}),
	filter(MISC, {
		r(56461),	-- Bladed Pickaxe
		r(56468),	-- Box of Bombs
		r(56460),	-- Cobalt Frag Bomb
		r(56463),	-- Explosive Decoy
		r(56462),	-- Gnomish Army Knife
		r(67326, {["timeline"] = {ADDED_3_2_0}}),	-- Goblin Beam Welder
		r(56459),	-- Hammer Pick
		r(56476),	-- Healing Injector Kit
		r(56474, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_1}}),	-- Mammoth Cutters
		r(56477),	-- Mana Injector Kit
		r(56475, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_1}}),	-- Saronite Razorheads
	}),
	filter(REAGENTS, {
		r(56471),	-- Froststeel Tube
		r(56349),	-- Handful of Cobalt Bolts
		r(56464),	-- Overcharged Capacitor
		r(53281),	-- Volatile Blasting Trigger
	}),
	filter(TOYS, {
		r(56472),	-- MOLL-E
		r(67920, {["timeline"] = {ADDED_3_2_0}}),	-- Wormhole Generator: Northrend
	}),
	filter(TRINKET_F, {
		r(56469),	-- Gnomish Lightning Generator
		r(56467),	-- Noise Machine
		r(56466),	-- Sonic Booster
	}),
	n(WEAPONS, {
		r(56479),	-- Armor Plated Combat Shotgun
		r(54353),	-- Mark "S" Boomstick
		r(60874),	-- Nesingwary 4000
	}),
	n(WEAPON_ENCHANTMENTS, {
		r(61471),	-- Diamond-Cut Refractor Scope
		r(56478),	-- Heartseeker Scope
		r(56470),	-- Sun Scope
	}),
}));
WRATH_GNOMISH_ENGINEERING = applyclassicphase(TBC_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_3_0_3 } }, {
	r(56473),	-- Gnomish X-Ray Specs
}));
WRATH_GOBLIN_ENGINEERING = applyclassicphase(TBC_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_3_0_3 } }, {
	r(56514),	-- Global Thermal Sapper Charge
}));
ALL_GNOMISH_ENGINEERING = appendGroups(CLASSIC_TBC_GNOMISH_ENGINEERING,
-- #if AFTER 3.0.3
WRATH_GNOMISH_ENGINEERING
-- #else
	{}
-- #endif
);
ALL_GOBLIN_ENGINEERING = appendGroups(CLASSIC_TBC_GOBLIN_ENGINEERING,
-- #if AFTER 3.0.3
WRATH_GOBLIN_ENGINEERING
-- #else
	{}
-- #endif
);
CATA_ENGINEERING = applyclassicphase(CATA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	r(82774, {	-- Engineering (Illustrious)
		["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 7,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264483, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Cataclysm Engineering
	n(ARMOR, {
		r(81722, {	-- Agile Bio-Optic Killshades
			-- #if BEFORE 7.3.0
			["classes"] = LEATHER_CLASSES,
			-- #endif
		}),
		r(84406),	-- Authentic Jr. Engineer Goggles
		r(81724, {	-- Camouflage Bio-Optic Killshades
			-- #if BEFORE 7.3.0
			["classes"] = { DRUID },
			-- #endif
		}),
		r(81716, {	-- Deadly Bio-Optic Killshades
			-- #if BEFORE 7.3.0
			["classes"] = MAIL_CLASSES,
			-- #endif
		}),
		r(81720, {	-- Energized Bio-Optic Killshades
			-- #if BEFORE 7.3.0
			["classes"] = { SHAMAN },
			-- #endif
		}),
		r(81725, {	-- Lightweight Bio-Optic Killshades
			-- #if BEFORE 7.3.0
			["classes"] = CLOTH_CLASSES,
			-- #endif
		}),
		r(81714, {	-- Reinforced Bio-Optic Killshades
			-- #if BEFORE 7.3.0
			["classes"] = PLATE_CLASSES,
			-- #endif
		}),
		r(81715, {	-- Specialized Bio-Optic Killshades
			-- #if BEFORE 7.3.0
			["classes"] = { PALADIN },
			-- #endif
		}),
	}),
	n(ARMOR_ENCHANTMENTS, {
		r(82177, {["timeline"] = {ADDED_4_0_3_LAUNCH, REMOVED_6_0_2}}),	-- Quickflip Deflection Plates
		r(82175, {["timeline"] = {ADDED_4_0_3_LAUNCH, REMOVED_6_0_2}}),	-- Synapse Springs
		r(82180, {["timeline"] = {ADDED_4_0_3_LAUNCH, REMOVED_6_0_2}}),	-- Tazik Shocker
		r(82201, {["timeline"] = {ADDED_4_0_3_LAUNCH, REMOVED_5_0_4}}),	-- Z50 Mana Gulper
	}),
	filter(BATTLE_PETS, {
		r(84413),	-- De-Weaponized Mechanical Companion
		r(84412),	-- Personal World Destroyer
	}),
	filter(MISC, {
		r(95707),	-- Big Daddy
		r(95703),	-- Electrostatic Condenser
		r(84416),	-- Elementium Toolbox
		r(84429),	-- Goblin Barbecue
		r(84430),	-- Heat-Treated Spinning Lure
		r(84411),	-- High-Powered Bolt Gun
		r(84415),	-- Lure Master Tackle Box
		r(84409),	-- Volatile Seaforium Blastpack
	}),
	filter(REAGENTS, {
		r(94748),	-- Electrified Ether
		r(84403),	-- Handful of Obsidium Bolts
	}),
	filter(TOYS, {
		r(95705),	-- Gnomish Gravity Well
		r(84421),	-- Loot-a-Rang
	}),
	filter(TRINKET_F, {
		r(84418),	-- Elementium Dragonling
	}),
	n(WEAPONS, {
		r(84420),	-- Finely-Tuned Throat Needler
		r(84432),	-- Kickback 5000
		r(84431),	-- Overpowered Chicken Splitter
		r(84417),	-- Volatile Thunderstick
	}),
	n(WEAPON_ENCHANTMENTS, {
		r(84428),	-- Gnomish X-Ray Scope
		r(84408),	-- R19 Threatfinder
		r(84410),	-- Safety Catch Removal Kit
	}),
}));
MOP_ENGINEERING = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	r(110403, {	-- Engineering (Zen Master)
		["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 8,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264485, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Pandaria Engineering
	n(ARMOR, {
		r(127118),	-- Agile Retinal Armor
		r(127119),	-- Camouflage Retinal Armor
		r(127120),	-- Deadly Retinal Armor
		r(127121),	-- Energized Retinal Armor
		r(127117),	-- Lightweight Retinal Armor
		r(127130),	-- Mist-Piercing Goggles
		r(127123),	-- Reinforced Retinal Armor
		r(127122),	-- Specialized Retinal Armor
	}),
	n(ARMOR_ENCHANTMENTS, {
		r(126392),	-- Goblin Glider
		r(109077, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Incendiary Fireworks Launcher
		r(108789, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Phase Fingers
		r(126731, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Synapse Springs [Rank 2]
		r(109099),	-- Watergliding Jets
	}),
	filter(BATTLE_PETS, {
		r(127135),	-- Mechanical Pandaren Dragonling
	}),
	filter(GEMS, {
		r(131211),	-- Flashing Tinker's Gear
		r(131212),	-- Fractured Tinker's Gear
		r(131213),	-- Precise Tinker's Gear
		r(131214),	-- Quick Tinker's Gear
		r(131215),	-- Rigid Tinker's Gear
		r(131216),	-- Smooth Tinker's Gear
		r(131217),	-- Sparkling Tinker's Gear
		r(131218),	-- Subtle Tinker's Gear
	}),
	filter(MISC, {
		r(127127),	-- G91 Landshark
		r(127128),	-- Goblin Dragon Gun, Mark II
		r(127124),	-- Locksmith's Powderkeg
		r(131353),	-- Pandaria Fireworks
		r(127131),	-- Thermal Anvil
	}),
	filter(MOUNTS, {
		r(127138),	-- Depleted-Kyparium Rocket
		r(127139),	-- Geosynchronous World Spinner
	}),
	filter(REAGENTS, {
		r(127113),	-- Ghost Iron Bolts
		r(127114),	-- High-Explosive Gunpowder
		r(131563),	-- Tinker's Kit
	}),
	filter(TOYS, {
		r(127129),	-- Blingtron 4000
		r(127132),	-- Wormhole Generator: Pandaria
	}),
	filter(TRINKET_F, {
		r(127134),	-- Ghost Iron Dragonling
	}),
	n(WEAPONS, {
		r(127136),	-- Big Game Hunter
		r(127137),	-- Long-Range Trillium Sniper
	}),
	n(WEAPON_ENCHANTMENTS, {
		r(127115),	-- Lord Blastington's Scope of Doom
		r(127116),	-- Mirror Scope
	}),
}));
local SECRET_OF_DRAENOR_ENGINEERING = 119299;
DRAENOR_ENGINEERING = applyclassicphase(WOD_PHASE_ONE, i(111921, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	["description"] = "This is a reward for completing the introductory Engineering questline that can drop from any Draenor mob. Also sold at The Forge for 100 gold.",
	["g"] = {
		r(158739, {	-- Engineering (Draenor Master)
			["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #endif
			["rank"] = 9,
		}),
		applyclassicphase(BFA_PHASE_ONE, r(264487, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Draenor Engineering
		r(169080),	-- Gearspring Parts
		r(178242, {	-- Gearspring Parts [Max Level] Might be Uncollectible /Braghe
			["collectible"] = false,
		}),
		r(162204),	-- Goblin Glider Kit
		r(173308),	-- Mecha-Blast Rocket
		r(177054),	-- Recipe: Secrets of Draenor Engineering
		r(173309),	-- Shieldtronic Shield
		r(162207),	-- Stealthman 54
		r(169140),	-- Ultimate Gnomish Army Knife
		r(162208, {	-- Ultimate Gnomish Army Knife [If you have BoP Already] Might be Uncollectible /Braghe
			["collectible"] = false,
		}),
	},
})));
COMMON_DRAENOR_ENGINEERING_RECIPES = applyclassicphase(WOD_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	i(120267, {	-- Schematic: Blackrock Rifling (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 5 }},
		["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_6_2_0 },
	}),
	i(118490, {	-- Schematic: Blingtron 5000 (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(118497, {	-- Schematic: Cybergenetic Mechshades (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(118493, {	-- Schematic: Didi's Delicate Assembly (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(118480, {	-- Schematic: Findle's Loot-a-Rang (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(118495, {	-- Schematic: Hemet's Heartseeker (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(202228, {	-- Schematic: Impressive Linkgrease Locksprocket (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 5 }},
		["timeline"] = { ADDED_10_0_5 },
	}),
	i(202230, {	-- Schematic: Impressive True Iron Trigger (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 5 }},
		["timeline"] = { ADDED_10_0_5 },
	}),
	i(118485, {	-- Schematic: Lifelike Mechanical Frostboar (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(118491, {	-- Schematic: Linkgrease Locksprocket (RECIPE!)
		["collectible"] = false,
		["description"] = "The item is still in game but you can't learn the recipe from it anymore (recipe removed in 9.0.1)",
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 5 }},
		["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_10_0_5 },
	}),
	i(118484, {	-- Schematic: Mechanical Axebeak (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(119177, {	-- Schematic: Mechanical Scorpid (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(118478, {	-- Schematic: Megawatt Filament (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(118492, {	-- Schematic: Morden's Magnificent Contraption (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 5 }},
		["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_6_2_0 },
	}),
	i(118498, {	-- Schematic: Night-Vision Mechshades (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(118477, {	-- Schematic: Oglethorpe's Missle Splitter (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(118487, {	-- Schematic: Personal Hologram (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(118499, {	-- Schematic: Plasma Mechshades (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(118500, {	-- Schematic: Razorguard Mechshades (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(202229, {	-- Schematic: Remarkable Linkgrease Locksprocket (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 5 }},
		["timeline"] = { ADDED_10_0_5 },
	}),
	i(202231, {	-- Schematic: Remarkable True Iron Trigger (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 5 }},
		["timeline"] = { ADDED_10_0_5 },
	}),
	i(118476, {	-- Schematic: Shrediron's Shredder (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(118489, {	-- Schematic: Swapblaster (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(120268, {	-- Schematic: True Iron Trigger (RECIPE!)
		["collectible"] = false,
		["description"] = "The item is still in game but you can't learn the recipe from it anymore (recipe removed in 9.0.1)",
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 5 }},
		["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_10_0_5 },
	}),
	i(118481, {	-- Schematic: World Shrinker (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
	i(118488, {	-- Schematic: Wormhole Centrifuge (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENGINEERING, 1 }},
	}),
}));
BFA_ENGINEERING = applyclassicphase(BFA_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	n(ARMOR, {
		r(272062),	-- AZ3-R1-T3 Bionic Bifocals [Rank 1]
		r(272059),	-- AZ3-R1-T3 Gearspun Goggles [Rank 1]
		r(272065),	-- AZ3-R1-T3 Orthogonal Optics [Rank 1]
		r(272056),	-- AZ3-R1-T3 Synthetic Specs [Rank 1]
		r(291093, {["timeline"] = {ADDED_8_1_0}}),	-- Imbued Bionic Bifocals
		r(291091, {["timeline"] = {ADDED_8_1_0}}),	-- Imbued Gearspun Goggles
		r(291095, {["timeline"] = {ADDED_8_1_0}}),	-- Imbued Orthogonal Optics
		r(291089, {["timeline"] = {ADDED_8_1_0}}),	-- Imbued Synthetic Specs
		r(286864, {["timeline"] = {ADDED_8_1_0}}),	-- Surging Bionic Bifocals
		r(286867, {["timeline"] = {ADDED_8_1_0}}),	-- Surging Gearspun Goggles
		r(286870, {["timeline"] = {ADDED_8_1_0}}),	-- Surging Orthogonal Optics
		r(286873, {["timeline"] = {ADDED_8_1_0}}),	-- Surging Synthetic Specs
	}),
	n(ARMOR_ENCHANTMENTS, {
		r(255936),	-- Belt Enchant: Holographic Horror Projector
		r(269123),	-- Belt Enchant: Miniaturized Plasma Shield
		r(255940),	-- Belt Enchant: Personal Space Amplifier
	}),
	filter(MISC, {
		r(287279, {["timeline"] = {ADDED_8_1_0}}),	-- Aqueous Thermo-Degradation
		r(256154),	-- Deployable Attire Rearranger [Rank 1]
		r(256155),	-- Deployable Attire Rearranger [Rank 2]
		r(256070),	-- Electroshock Mount Motivator [Rank 1]
		r(256071),	-- Electroshock Mount Motivator [Rank 2]
		r(255392),	-- F.R.I.E.D. [Rank 1]
		r(255393),	-- F.R.I.E.D. [Rank 2]
		r(256080),	-- Interdimensional Companion Repository [Rank 1]
		r(256082),	-- Interdimensional Companion Repository [Rank 2]
		r(280732),	-- Magical Intrusion Dampener [Rank 1]
		r(280733),	-- Magical Intrusion Dampener [Rank 2]
		r(280734),	-- Magical Intrusion Dampener [Rank 3]
		r(278413),	-- Monelite Fish Finder
		r(255407),	-- Organic Discombobulation Grenade [Rank 1]
		r(255408),	-- Organic Discombobulation Grenade [Rank 2]
		r(286647, {["timeline"] = {ADDED_8_1_0}}),	-- Sanguinated Thermo-Degradation
		r(255395),	-- Thermo-Accelerated Plague Spreader [Rank 1]
		r(255396),	-- Thermo-Accelerated Plague Spreader [Rank 2]
		r(283914, {["timeline"] = {ADDED_8_1_0}}),	-- Unstable Temporal Time Shifter [Rank 1]
		r(256073),	-- XA-1000 Surface Skimmer [Rank 1]
		r(256074),	-- XA-1000 Surface Skimmer [Rank 2]
	}),
	n(WEAPONS, {
		r(255457),	-- Finely-Tuned Stormsteel Destroyer [Rank 1]
		r(255458),	-- Finely-Tuned Stormsteel Destroyer [Rank 2]
		r(269724),	-- Honorable Combatant's Discombobulator [Rank 1]
		r(269727),	-- Honorable Combatant's Stormsteel Destroyer [Rank 1]
		r(253122),	-- Magnetic Discombobulator
		r(253150),	-- Precision Attitude Adjuster [Rank 1]
		r(253151),	-- Precision Attitude Adjuster [Rank 2]
		r(282806, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Discombobulator [Rank 1]
		r(282809, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Stormsteel Destroyer [Rank 1]
		r(305863, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Discombobulator [Rank 1]
		r(305860, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Stormsteel Destroyer [Rank 1]
	}),
	n(WEAPON_ENCHANTMENTS, {
		r(264960),	-- Crow's Nest Scope [Rank 1]
		r(264961),	-- Crow's Nest Scope [Rank 2]
		r(265100),	-- Frost-Laced Ammunition [Rank 1]
		r(265101),	-- Frost-Laced Ammunition [Rank 2]
		r(265097),	-- Incendiary Ammunition [Rank 1]
		r(265098),	-- Incendiary Ammunition [Rank 2]
		r(264964),	-- Monelite Scope of Alacrity [Rank 1]
		r(264966),	-- Monelite Scope of Alacrity [Rank 2]
	}),
}));
NAZJATAR_ENGINEERING = applyclassicphase(BFA_PHASE_THREE, sharedData({ ["timeline"] = { ADDED_8_2_0 } }, {
	n(ARMOR, {
		r(299010),	-- Abyssal Bionic Bifocals
		r(299007),	-- Abyssal Gearspun Goggles
		r(299013),	-- Abyssal Orthogonal Optics
		r(299004),	-- Abyssal Synthetic Specs
	}),
	filter(TOYS, {
		r(299105),	-- Wormhole Generator: Kul Tiras
		r(299106),	-- Wormhole Generator: Zandalar
	}),
	n(WEAPONS, {
		r(294784),	-- Notorious Combatant's Discombobulator [Rank 1]
		r(294787),	-- Notorious Combatant's Stormsteel Destroyer [Rank 1]
	}),
}));
SL_ENGINEERING = applyclassicphase(SHADOWLANDS_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	r(310542),	-- Shadowlands Engineering
	n(ARMOR, {
		r(310507),	-- Articulated Ectoplasmic Specs
		r(310501),	-- Flexible Ectoplasmic Specs
		r(310504),	-- Grounded Ectoplasmic Specs
		r(310509),	-- Reinforced Ectoplasmic Specs
	}),
	filter(MISC, {
		r(310493),	-- 50UL-TR4P
		r(310486),	-- Bomb Bola Launcher
		r(343099),	-- Crafter's Mark I
		r(310497),	-- Damage Retaliator
		r(310495),	-- Dimensional Shifter
		r(345179),	-- Disposable Spectrophasic Reanimator
		r(310496),	-- Electro-Jump
		r(310492),	-- Gravimetric Scrambler Cannon
		r(310522),	-- Handful of Laestrite Bolts
		r(310534),	-- Infra-green Reflex Sight
		r(310490),	-- Momentum Redistributor Boots
		r(310525),	-- Mortal Coiled Spring
		r(343661),	-- Novice Crafter's Mark
		r(310484),	-- Nutcracker Grenade
		r(310533),	-- Optical Target Embiggener
		r(310524),	-- Porous Polishing Abrasive
		r(310485),	-- Shadow Land Mine
		r(310526),	-- Wormfed Gear Assembly
	}),
	n(WEAPONS, {
		r(310536),	-- Precision Lifeforce Inverter
	}),
}));
DF_ENGINEERING = applyclassicphase(DF_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	r(366254),	-- Dragon Isles Engineering
	n(ARMOR, {
		r(382391),	-- Battle-Ready Binoculars
		r(382385),	-- Deadline Deadeyes
		r(382388),	-- Lightweight Ocular Lenses
		r(382384),	-- Milestone Magnifiers
		r(382390),	-- Oscillating Wilderness Opticals
		r(382389),	-- Peripheral Vision Projectors
		r(382383),	-- Quality-Assured Optics
		r(382386),	-- Sentry's Stabilized Specs
	}),
	filter(MISC, {
		r(382379),	-- Arclight Capacitor
		r(382393),	-- Bottomless Stonecrust Ore Satchel
		r(384314),	-- Bronze Fireflight
		r(382330),	-- Creature Combustion Canister
		r(382377),	-- Everburning Blasting Powder
		r(382378),	-- Greased-Up Gears
		r(382402),	-- Gyroscopic Kaleidoscope
		r(382375),	-- Handful of Tyrivite Bolts
		r(382346),	-- Haphazardly Tethered Wires
		r(382407),	-- Neural Silencer Mk3
		r(382348),	-- Overcharged Overclocker
		r(389192),	-- Recraft Equipment
		r(382380),	-- Reinforced Machine Chassis
		r(382376),	-- Shock-Spring Coil
		r(382401),	-- Tinker: Plane Displacer
		r(396777),	-- Tinker Removal Kit
	}),
	filter(PROFESSION_EQUIPMENT, {
		r(382398),	-- Draconium Brainwave Amplifier
		r(382392),	-- Draconium Delver's Helmet
		r(382397),	-- Draconium Encased Samophlange
		r(382394),	-- Draconium Fisherfriend
		r(382395),	-- Lapidary's Draconium Clamps
		r(382396),	-- Spring-Loaded Draconium Fabric Cutters
	}),
	n(WEAPONS, {
		r(382387),	-- P.E.W. x2
	}),
}));
TWW_ENGINEERING = bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	r(423335),	-- Khaz Algar Engineering
	r(425139),	-- Recraft Equipment
	r(447311),	-- Pilfer Through Parts
	r(447310),	-- Scour Through Scrap
	n(ARMOR, {
		r(447375),	-- Acolyte's Goggles
		r(447378),	-- Dredger's Goggles
		r(447376),	-- Spelunker's Goggles
		r(447377),	-- Tracker's Goggles
	}),
	filter(PROFESSION_EQUIPMENT, {
		r(447332),	-- Bismuth Fueled Samophlange
	}),
	n(WEAPONS, {
		r(447379),	-- 4UT0-41M3R
	}),
});