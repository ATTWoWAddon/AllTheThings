-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, {
	n(FACTION_HEADER_ALLIANCE, {
		symselector=SymSelector.CLASSIC_PVP_ALLIANCE,
		races = ALLIANCE_ONLY,
		groups = {
			n(WEAPONS, {
				i(18825),	-- Grand Marshal's Aegis
				i(18867),	-- Grand Marshal's Battle Hammer
				i(18833),	-- Grand Marshal's Bullseye
				i(18876),	-- Grand Marshal's Claymore
				i(23455),	-- Grand Marshal's Demolisher
				i(18838),	-- Grand Marshal's Dirk
				i(18869),	-- Grand Marshal's Glaive
				i(18855),	-- Grand Marshal's Hand Cannon
				i(18827),	-- Grand Marshal's Handaxe
				i(12584),	-- Grand Marshal's Longsword
				i(23451),	-- Grand Marshal's Mageblade
				i(18865),	-- Grand Marshal's Punisher
				i(18847),	-- Grand Marshal's Razor Hand Blade
				i(18836),	-- Grand Marshal's Repeater
				i(18843),	-- Grand Marshal's Right Hand Blade
				i(18873),	-- Grand Marshal's Stave
				i(18830),	-- Grand Marshal's Sunderer
				i(23456),	-- Grand Marshal's Swiftblade
				i(23452),	-- Grand Marshal's Tome of Power
				i(23453),	-- Grand Marshal's Tome of Restoration
				i(23454),	-- Grand Marshal's Warhammer
			}),
			cl(DRUID, bubbleDownSelf({ ["classes"] = { DRUID } }, {
				-- Epic set
				i(16451),	-- Field Marshal's Dragonhide Helmet
				i(16449),	-- Field Marshal's Dragonhide Spaulders
				i(16452),	-- Field Marshal's Dragonhide Breastplate
				i(16448),	-- Marshal's Dragonhide Gauntlets
				i(16450),	-- Marshal's Dragonhide Legguards
				i(16459),	-- Marshal's Dragonhide Boots
				-- Rare set
				i(23308),	-- Lieutenant Commander's Dragonhide Headguard
				i(23309),	-- Lieutenant Commander's Dragonhide Shoulders
				i(23294),	-- Knight-Captain's Dragonhide Chestpiece
				i(23280),	-- Knight-Lieutenant's Dragonhide Grips
				i(23295),	-- Knight-Captain's Dragonhide Leggings
				i(23281),	-- Knight-Lieutenant's Dragonhide Treads
			}));
			cl(HUNTER, bubbleDownSelf({ ["classes"] = { HUNTER } }, {
				-- Epic set
				i(16465),	-- Field Marshal's Chain Helm
				i(16468),	-- Field Marshal's Chain Spaulders
				i(16466),	-- Field Marshal's Chain Breastplate
				i(16463),	-- Marshal's Chain Grips
				i(16467),	-- Marshal's Chain Legguards
				i(16462),	-- Marshal's Chain Boots
				-- Rare set
				i(23306),	-- Lieutenant Commander's Chain Helm
				i(23307),	-- Lieutenant Commander's Chain Shoulders
				i(23292),	-- Knight-Captain's Chain Hauberk
				i(23279),	-- Knight-Lieutenant's Chain Vices
				i(23293),	-- Knight-Captain's Chain Legguards
				i(23278),	-- Knight-Lieutenant's Chain Greaves
			})),
			cl(MAGE, bubbleDownSelf({ ["classes"] = { MAGE } }, {
				-- Epic set
				i(16441),	-- Field Marshal's Coronet
				i(16444),	-- Field Marshal's Silk Spaulders
				i(16443),	-- Field Marshal's Silk Vestments
				i(16440),	-- Marshal's Silk Gloves
				i(16442),	-- Marshal's Silk Leggings
				i(16437),	-- Marshal's Silk Footwraps
				-- Rare set
				i(23318),	-- Lieutenant Commander's Silk Cowl
				i(23319),	-- Lieutenant Commander's Silk Mantle
				i(23305),	-- Knight-Captain's Silk Tunic
				i(23290),	-- Knight-Lieutenant's Silk Handwraps
				i(23304),	-- Knight-Captain's Silk Legguards
				i(23291),	-- Knight-Lieutenant's Silk Walkers
			}));
			cl(PALADIN, bubbleDownSelf({ ["classes"] = { PALADIN } }, {
				-- Epic set
				i(16474),	-- Field Marshal's Lamellar Faceguard
				i(16476),	-- Field Marshal's Lamellar Pauldrons
				i(16473),	-- Field Marshal's Lamellar Chestplate
				i(16471),	-- Marshal's Lamellar Gloves
				i(16475),	-- Marshal's Lamellar Legplates
				i(16472),	-- Marshal's Lamellar Boots
				-- Rare set
				i(23276),	-- Lieutenant Commander's Lamellar Headguard
				i(23277),	-- Lieutenant Commander's Lamellar Shoulders
				i(23272),	-- Knight-Captain's Lamellar Breastplate
				i(23274),	-- Knight-Lieutenant's Lamellar Gauntlets
				i(23273),	-- Knight-Captain's Lamellar Leggings
				i(23275),	-- Knight-Lieutenant's Lamellar Sabatons
			}));
			cl(PRIEST, bubbleDownSelf({ ["classes"] = { PRIEST } }, {
				-- Epic set
				i(17602),	-- Field Marshal's Headdress
				i(17604),	-- Field Marshal's Satin Mantle
				i(17605),	-- Field Marshal's Satin Vestments
				i(17608),	-- Marshal's Satin Gloves
				i(17603),	-- Marshal's Satin Pants
				i(17607),	-- Marshal's Satin Sandals
				-- Rare set
				i(23316),	-- Lieutenant Commander's Satin Hood
				i(23317),	-- Lieutenant Commander's Satin Mantle
				i(23303),	-- Knight-Captain's Satin Tunic
				i(23288),	-- Knight-Lieutenant's Satin Handwraps
				i(23302),	-- Knight-Captain's Satin Legguards
				i(23289),	-- Knight-Lieutenant's Satin Walkers
			}));
			cl(ROGUE, bubbleDownSelf({ ["classes"] = { ROGUE } }, {
				-- Epic set
				i(16455),	-- Field Marshal's Leather Mask
				i(16457),	-- Field Marshal's Leather Epaulets
				i(16453),	-- Field Marshal's Leather Chestpiece
				i(16454),	-- Marshal's Leather Handgrips
				i(16456),	-- Marshal's Leather Leggings
				i(16446),	-- Marshal's Leather Footguards
				-- Rare set
				i(23312),	-- Lieutenant Commander's Leather Helm
				i(23313),	-- Lieutenant Commander's Leather Shoulders
				i(23298),	-- Knight-Captain's Leather Chestpiece
				i(23284),	-- Knight-Lieutenant's Leather Grips
				i(23299),	-- Knight-Captain's Leather Legguards
				i(23285),	-- Knight-Lieutenant's Leather Walkers
			})),
			cl(SHAMAN, bubbleDownSelf({ ["classes"] = { SHAMAN } }, {
				-- Epic set
				i(29610),	-- Field Marshal's Mail Helm
				i(29611),	-- Field Marshal's Mail Spaulders
				i(29609),	-- Field Marshal's Mail Armor
				i(29607),	-- Marshal's Mail Gauntlets
				i(29608),	-- Marshal's Mail Leggings
				i(29606),	-- Marshal's Mail Boots
				-- Rare set
				i(29598),	-- Lieutenant Commander's Mail Headguard
				i(29599),	-- Lieutenant Commander's Mail Pauldrons
				i(29596),	-- Knight-Captain's Mail Hauberk
				i(29595),	-- Knight-Lieutenant's Mail Vices
				i(29597),	-- Knight-Captain's Mail Legguards
				i(29594),	-- Knight-Lieutenant's Mail Greaves
			}));
			cl(WARLOCK, bubbleDownSelf({ ["classes"] = { WARLOCK } }, {
				-- Epic set
				i(17578),	-- Field Marshal's Coronal
				i(17580),	-- Field Marshal's Dreadweave Shoulders
				i(17581),	-- Field Marshal's Dreadweave Robe
				i(17584),	-- Marshal's Dreadweave Gloves
				i(17579),	-- Marshal's Dreadweave Leggings
				i(17583),	-- Marshal's Dreadweave Boots
				-- Rare set
				i(23310),	-- Lieutenant Commander's Dreadweave Cowl
				i(23311),	-- Lieutenant Commander's Dreadweave Spaulders
				i(23297),	-- Knight-Captain's Dreadweave Tunic
				i(23282),	-- Knight-Lieutenant's Dreadweave Handwraps
				i(23296),	-- Knight-Captain's Dreadweave Legguards
				i(23283),	-- Knight-Lieutenant's Dreadweave Walkers
			}));
			cl(WARRIOR, bubbleDownSelf({ ["classes"] = { WARRIOR } }, {
				-- Epic set
				i(16478),	-- Field Marshal's Plate Helm
				i(16480),	-- Field Marshal's Plate Shoulderguards
				i(16477),	-- Field Marshal's Plate Armor
				i(16484),	-- Marshal's Plate Gauntlets
				i(16479),	-- Marshal's Plate Legguards
				i(16483),	-- Marshal's Plate Boots
				-- Rare set
				i(23314),	-- Lieutenant Commander's Plate Helmet
				i(23315),	-- Lieutenant Commander's Plate Shoulders
				i(23300),	-- Knight-Captain's Plate Hauberk
				i(23286),	-- Knight-Lieutenant's Plate Gauntlets
				i(23301),	-- Knight-Captain's Plate Leggings
				i(23287),	-- Knight-Lieutenant's Plate Greaves
			}));

			-- Back
			i(16342),	-- Sergeant's Cape (58)
			i(18441),	-- Sergeant's Cape (45)
			i(18440),	-- Sergeant's Cape (30)

			-- Wrist
			i(18448, {	-- Sergeant Major's Chain Armguards (58)
				["classes"] = { HUNTER, SHAMAN },
			}),
			i(18449, {	-- Sergeant Major's Chain Armguards (45)
				["classes"] = { HUNTER, SHAMAN },
			}),
			i(18454, {	-- Sergeant Major's Dragonhide Armsplints (58)
				["classes"] = { DRUID },
			}),
			i(18455, {	-- Sergeant Major's Dragonhide Armsplints (45)
				["classes"] = { DRUID },
			}),
			i(18452, {	-- Sergeant Major's Leather  (58)
				["classes"] = { ROGUE },
			}),
			i(18453, {	-- Sergeant Major's Leather Armsplints (45)
				["classes"] = { ROGUE },
			}),
			i(18445, {	-- Sergeant Major's Plate Wristguards (58)
				["classes"] = { PALADIN, WARRIOR },
			}),
			i(18447, {	-- Sergeant Major's Plate Wristguards (45)
				["classes"] = { PALADIN, WARRIOR },
			}),
			i(18456, {	-- Sergeant Major's Silk Cuffs (58)
				["classes"] = { MAGE, PRIEST, WARLOCK },
			}),
			i(18457, {	-- Sergeant Major's Silk Cuffs (45)
				["classes"] = { MAGE, PRIEST, WARLOCK },
			}),

			-- Necks
			i(18443),	-- Master Sergeant's Insignia (58)
			i(18444),	-- Master Sergeant's Insignia (45)
			i(18442),	-- Master Sergeant's Insignia (30)

			-- Trinkets
			i(18863, { ["classes"] = { DRUID }   }),	-- Insignia of the Alliance
			i(18856, { ["classes"] = { HUNTER }  }),	-- Insignia of the Alliance
			i(18859, { ["classes"] = { MAGE }    }),	-- Insignia of the Alliance
			i(18864, { ["classes"] = { PALADIN } }),	-- Insignia of the Alliance
			i(18862, { ["classes"] = { PRIEST }  }),	-- Insignia of the Alliance
			i(18857, { ["classes"] = { ROGUE }   }),	-- Insignia of the Alliance
			i(18858, { ["classes"] = { WARLOCK } }),	-- Insignia of the Alliance
			i(18854, { ["classes"] = { WARRIOR } }),	-- Insignia of the Alliance
		},
	}),
	n(FACTION_HEADER_HORDE, {
		symselector=SymSelector.CLASSIC_PVP_HORDE,
		races = HORDE_ONLY,
		groups = {
			n(WEAPONS, {
				i(18831),	-- High Warlord's Battle Axe
				i(23464),	-- High Warlord's Battle Mace
				i(16345),	-- High Warlord's Blade
				i(18866),	-- High Warlord's Bludgeon
				i(18828),	-- High Warlord's Cleaver
				i(18837),	-- High Warlord's Crossbow
				i(23465),	-- High Warlord's Destroyer
				i(18877),	-- High Warlord's Greatsword
				i(18871),	-- High Warlord's Pig Sticker
				i(18868),	-- High Warlord's Pulverizer
				i(23467),	-- High Warlord's Quickblade
				i(18835),	-- High Warlord's Recurve
				i(18840),	-- High Warlord's Razor
				i(18848),	-- High Warlord's Razor Claw
				i(18844),	-- High Warlord's Right Claw
				i(18826),	-- High Warlord's Shield Wall
				i(23466),	-- High Warlord's Spellblade
				i(18860),	-- High Warlord's Street Sweeper
				i(23468),	-- High Warlord's Tome of Destruction
				i(23469),	-- High Warlord's Tome of Mending
				i(18874),	-- High Warlord's War Staff
			}),
			cl(DRUID, bubbleDownSelf({ ["classes"] = { DRUID } }, {
				-- Epic set
				i(16550),	-- Warlord's Dragonhide Helmet
				i(16551),	-- Warlord's Dragonhide Epaulets
				i(16549),	-- Warlord's Dragonhide Hauberk
				i(16555),	-- General's Dragonhide Gloves
				i(16552),	-- General's Dragonhide Leggings
				i(16554),	-- General's Dragonhide Boots
				-- Rare set
				i(23253),	-- Champion's Dragonhide Headguard
				i(23254),	-- Champion's Dragonhide Shoulders
				i(22877),	-- Legionnaire's Dragonhide Chestpiece
				i(22863),	-- Blood Guard's Dragonhide Grips
				i(22878),	-- Legionnaire's Dragonhide Leggings
				i(22852),	-- Blood Guard's Dragonhide Treads
			}));
			cl(HUNTER, bubbleDownSelf({ ["classes"] = { HUNTER } }, {
				-- Epic set
				i(16566),	-- Warlord's Chain Helmet
				i(16568),	-- Warlord's Chain Shoulders
				i(16565),	-- Warlord's Chain Chestpiece
				i(16571),	-- General's Chain Gloves
				i(16567),	-- General's Chain Legguards
				i(16569),	-- General's Chain Boots
				-- Rare set
				i(23251),	-- Champion's Chain Helm
				i(23252),	-- Champion's Chain Shoulders
				i(22874),	-- Legionnaire's Chain Hauberk
				i(22862),	-- Blood Guard's Chain Vices
				i(22875),	-- Legionnaire's Chain Legguards
				i(22843),	-- Blood Guard's Chain Greaves
			})),
			cl(MAGE, bubbleDownSelf({ ["classes"] = { MAGE } }, {
				-- Epic set
				i(16533),	-- Warlord's Silk Cowl
				i(16536),	-- Warlord's Silk Amice
				i(16535),	-- Warlord's Silk Raiment
				i(16540),	-- General's Silk Handguards
				i(16534),	-- General's Silk Trousers
				i(16539),	-- General's Silk Boots
				-- Rare set
				i(23263),	-- Champion's Silk Cowl
				i(23264),	-- Champion's Silk Mantle
				i(22886),	-- Legionnaire's Silk Tunic
				i(22870),	-- Blood Guard's Silk Handwraps
				i(22883),	-- Legionnaire's Silk Legguards
				i(22860),	-- Blood Guard's Silk Walkers
			}));
			cl(PALADIN, bubbleDownSelf({ ["classes"] = { PALADIN } }, {
				-- Epic set
				i(29616),	-- Warlord's Lamellar Faceguard
				i(29617),	-- Warlord's Lamellar Pauldrons
				i(29615),	-- Warlord's Lamellar Chestplate
				i(29613),	-- General's Lamellar Gloves
				i(29614),	-- General's Lamellar Legplates
				i(29612),	-- General's Lamellar Boots
				-- Rare set
				i(29604),	-- Champion's Lamellar Headguard
				i(29605),	-- Champion's Lamellar Shoulders
				i(29602),	-- Legionnaire's Lamellar Breastplate
				i(29600),	-- Blood Guard's Lamellar Gauntlets
				i(29603),	-- Legionnaire's Lamellar Leggings
				i(29601),	-- Blood Guard's Lamellar Sabatons
			})),
			cl(PRIEST, bubbleDownSelf({ ["classes"] = { PRIEST } }, {
				-- Epic set
				i(17623),	-- Warlord's Satin Cowl
				i(17622),	-- Warlord's Satin Mantle
				i(17624),	-- Warlord's Satin Robes
				i(17620),	-- General's Satin Gloves
				i(17625),	-- General's Satin Leggings
				i(17618),	-- General's Satin Boots
				-- Rare set
				i(23261),	-- Champion's Satin Hood
				i(23262),	-- Champion's Satin Mantle
				i(22885),	-- Legionnaire's Satin Tunic
				i(22869),	-- Blood Guard's Satin Handwraps
				i(22882),	-- Legionnaire's Satin Legguards
				i(22859),	-- Blood Guard's Satin Walkers
			}));
			cl(ROGUE, bubbleDownSelf({ ["classes"] = { ROGUE } }, {
				-- Epic set
				i(16561),	-- Warlord's Leather Helm
				i(16562),	-- Warlord's Leather Spaulders
				i(16563),	-- Warlord's Leather Breastplate
				i(16560),	-- General's Leather Mitts
				i(16564),	-- General's Leather Legguards
				i(16558),	-- General's Leather Treads
				-- Rare set
				i(23257),	-- Champion's Leather Helm
				i(23258),	-- Champion's Leather Shoulders
				i(22879),	-- Legionnaire's Leather Chestpiece
				i(22864),	-- Blood Guard's Leather Grips
				i(22880),	-- Legionnaire's Leather Legguards
				i(22856),	-- Blood Guard's Leather Walkers
			})),
			cl(SHAMAN, bubbleDownSelf({ ["classes"] = { SHAMAN } }, {
				-- Epic set
				i(16578),	-- Warlord's Mail Helm
				i(16580),	-- Warlord's Mail Spaulders
				i(16577),	-- Warlord's Mail Armor
				i(16574),	-- General's Mail Gauntlets
				i(16579),	-- General's Mail Leggings
				i(16573),	-- General's Mail Boots
				-- Rare set
				i(23259),	-- Champion's Mail Headguard
				i(23260),	-- Champion's Mail Pauldrons
				i(22876),	-- Legionnaire's Mail Hauberk
				i(22867),	-- Blood Guard's Mail Vices
				i(22887),	-- Legionnaire's Mail Legguards
				i(22857),	-- Blood Guard's Mail Greaves
			}));
			cl(WARLOCK, bubbleDownSelf({ ["classes"] = { WARLOCK } }, {
				-- Epic set
				i(17591),	-- Warlord's Dreadweave Hood
				i(17590),	-- Warlord's Dreadweave Mantle
				i(17592),	-- Warlord's Dreadweave Robe
				i(17588),	-- General's Dreadweave Gloves
				i(17593),	-- General's Dreadweave Pants
				i(17586),	-- General's Dreadweave Boots
				-- Rare set
				i(23255),	-- Champion's Dreadweave Cowl
				i(23256),	-- Champion's Dreadweave Spaulders
				i(22884),	-- Legionnaire's Dreadweave Tunic
				i(22865),	-- Blood Guard's Dreadweave Handwraps
				i(22881),	-- Legionnaire's Dreadweave Legguards
				i(22855),	-- Blood Guard's Dreadweave Walkers
			}));
			cl(WARRIOR, bubbleDownSelf({ ["classes"] = { WARRIOR } }, {
				-- Epic set
				i(16542),	-- Warlord's Plate Headpiece
				i(16544),	-- Warlord's Plate Shoulders
				i(16541),	-- Warlord's Plate Armor
				i(16548),	-- General's Plate Gauntlets
				i(16543),	-- General's Plate Leggings
				i(16545),	-- General's Plate Boots
				-- Rare set
				i(23244),	-- Champion's Plate Helm
				i(23243),	-- Champion's Plate Shoulders
				i(22872),	-- Legionnaire's Plate Hauberk
				i(22868),	-- Blood Guard's Plate Gauntlets
				i(22873),	-- Legionnaire's Plate Leggings
				i(22858),	-- Blood Guard's Plate Greaves
			})),

			-- Back
			i(18461),	-- Sergeant's Cloak (58)
			i(16341),	-- Sergeant's Cloak (45)
			i(18427),	-- Sergeant's Cloak (30)

			-- Wrist
			i(18434, { ["classes"] = { DRUID }					}),	-- First Sergeant's Dragonhide Armguards (58)
			i(18436, { ["classes"] = { DRUID }					}),	-- First Sergeant's Dragonhide Armguards (45)
			i(16497, { ["classes"] = { ROGUE }					}),	-- First Sergeant's Leather Armguards (58)
			i(18435, { ["classes"] = { ROGUE }					}),	-- First Sergeant's Leather Armguards (45)
			i(16532, { ["classes"] = { HUNTER, SHAMAN }			}),	-- First Sergeant's Mail Wristguards (58)
			i(18432, { ["classes"] = { HUNTER, SHAMAN }			}),	-- First Sergeant's Mail Wristguards (45)
			i(18429, { ["classes"] = { PALADIN, WARRIOR }		}),	-- First Sergeant's Plate Bracers (58)
			i(18430, { ["classes"] = { PALADIN, WARRIOR }		}),	-- First Sergeant's Plate Bracers (45)
			i(16486, { ["classes"] = { MAGE, PRIEST, WARLOCK }	}),	-- First Sergeant's Silk Cuffs (58)
			i(18437, { ["classes"] = { MAGE, PRIEST, WARLOCK }	}),	-- First Sergeant's Silk Cuffs (45)

			-- Necks
			i(16335),	-- Senior Sergeant's Insignia (58)
			i(18428),	-- Senior Sergeant's Insignia (45)
			i(15200),	-- Senior Sergeant's Insignia (30)

			-- Trinkets
			i(18853, { ["classes"] = { DRUID }	}),	-- Insignia of the Horde
			i(18846, { ["classes"] = { HUNTER }	}),	-- Insignia of the Horde
			i(18850, { ["classes"] = { MAGE }	}),	-- Insignia of the Horde
			i(18851, { ["classes"] = { PRIEST }	}),	-- Insignia of the Horde
			i(18849, { ["classes"] = { ROGUE }	}),	-- Insignia of the Horde
			i(18845, { ["classes"] = { SHAMAN }	}),	-- Insignia of the Horde
			i(18852, { ["classes"] = { WARLOCK }	}),	-- Insignia of the Horde
			i(18834, { ["classes"] = { WARRIOR }	}),	-- Insignia of the Horde
		},
	}),
});
