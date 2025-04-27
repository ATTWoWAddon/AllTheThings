-------------------
-- BLACKSMITHING --
-------------------
local ELEMENTIUM_BAR = 52186;
local HARDENED_ELEMENTIUM_BAR = 53039;
local PYRIUM = 51950;
local SECRET_OF_DRAENOR_BLACKSMITHING = 118720;
APPRENTICE_JOURNEYMAN_EXPERT_BLACKSMITHING = {
	r(2018, {	-- Blacksmithing (Apprentice)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 5,
		-- #endif
		["rank"] = 1,
	}),
	r(3100, {	-- Blacksmithing (Journeyman)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 10,
		-- #endif
		["rank"] = 2,
	}),
	r(3538, {	-- Blacksmithing (Expert)
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
	applyclassicphase(BFA_PHASE_ONE, r(264434, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Blacksmithing
	r(330134, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [CLASSIC]
	r(330140, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [CLASSIC]
	r(330141, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [CLASSIC]
	r(330142, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [CLASSIC]
	r(330143, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [CLASSIC]
	n(ARMOR, {
		r(280671, {["timeline"] = {ADDED_8_0_1_LAUNCH}}),	-- Barbaric Iron Hauberk
		r(2661),	-- Copper Chain Belt
		r(3319),	-- Copper Chain Boots
		r(2663),	-- Copper Bracers
		r(2662),	-- Copper Chain Pants
		r(7223),	-- Golden Scale Bracers
		r(3501),	-- Green Iron Bracers
		r(3508),	-- Green Iron Hauberk
		r(3502),	-- Green Iron Helm
		r(3506),	-- Green Iron Leggings
		r(9928),	-- Heavy Mithril Gauntlet
		r(9926),	-- Heavy Mithril Shoulder
		r(2672),	-- Patterned Bronze Bracers
		r(7817),	-- Rough Bronze Boots
		r(2670),	-- Rough Bronze Cuirass
		r(2668),	-- Rough Bronze Leggings
		r(3328),	-- Rough Bronze Shoulders
		r(12260),	-- Rough Copper Vest
		r(2666),	-- Runed Copper Belt
		r(2664),	-- Runed Copper Bracers
		r(3323),	-- Runed Copper Gauntlets
		r(3324),	-- Runed Copper Pants
		r(9931),	-- Mithril Scale Pants
		r(2675),	-- Shining Silver Breastplate
		r(3331),	-- Silvered Bronze Boots
		r(3333),	-- Silvered Bronze Gauntlets
		r(9916),	-- Steel Breastplate
		r(9935),	-- Steel Plate Helm
	}),
	filter(MISC, {
		r(3326),	-- Coarse Grinding Stone
		r(2665),	-- Coarse Sharpening Stone
		r(3116),	-- Coarse Weightstone
		r(14379, {["timeline"] = {REMOVED_5_0_4}}),	-- Golden Rod
		r(19667),	-- Golden Skeleton Key
		r(3337),	-- Heavy Grinding Stone
		r(2674),	-- Heavy Sharpening Stone
		r(3117),	-- Heavy Weightstone
		r(8768),	-- Iron Buckle
		r(7818, {["timeline"] = {REMOVED_5_0_4}}),	-- Silver Rod
		r(19666),	-- Silver Skeleton Key
		r(3320),	-- Rough Grinding Stone
		r(2660),	-- Rough Sharpening Stone
		r(3115),	-- Rough Weightstone
		r(9920),	-- Solid Grinding Stone
		r(9918),	-- Solid Sharpening Stone
		r(9921),	-- Solid Weightstone
		r(14380, {["timeline"] = {REMOVED_5_0_4}}),	-- Truesilver Rod
		r(19668),	-- Truesilver Skeleton Key
	}),
	n(WEAPONS, {
		r(2738),	-- Copper Axe
		r(3491),	-- Big Bronze Knife
		r(2741),	-- Bronze Axe
		r(9987),	-- Bronze Battle Axe
		r(9986),	-- Bronze Greatsword
		r(2740),	-- Bronze Mace
		r(2742),	-- Bronze Shortsword
		r(9985),	-- Bronze Warhammer
		r(3293),	-- Copper Battle Axe
		r(9983),	-- Copper Claymore
		r(8880),	-- Copper Dagger
		r(2737),	-- Copper Mace
		r(2739),	-- Copper Shortsword
		r(15972),	-- Glinting Steel Dagger
		applyclassicphase(TBC_PHASE_ONE, r(34982, {["timeline"] = {ADDED_2_0_5,REMOVED_5_0_4}})),		-- Enchanted Thorium Blades
		r(3296),	-- Heavy Bronze Mace
		r(3292),	-- Heavy Copper Broadsword
		r(7408),	-- Heavy Copper Maul
		r(9993),	-- Heavy Mithril Axe
		r(6517),	-- Pearl-handled Dagger
		applyclassicphase(TBC_PHASE_ONE, r(34979, {["timeline"] = {ADDED_2_0_5,REMOVED_5_0_4}})),	-- Thick Bronze Darts
		r(3294),	-- Thick War Axe
		applyclassicphase(TBC_PHASE_ONE, r(34981, {["timeline"] = {ADDED_2_0_5,REMOVED_5_0_4}})),	-- Whirling Steel Axes
	}),
};
ARTISAN_BLACKSMITHING = {
	r(9785, {	-- Blacksmithing (Artisan)
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
	n(ARMOR, {
		r(9968),	-- Heavy Mithril Boots
		r(9959),	-- Heavy Mithril Breastplate
		-- #if AFTER CATA
		r(16647),	-- Imperial Plate Belt
		r(16657),	-- Imperial Plate Boots
		r(16649),	-- Imperial Plate Bracers
		r(16663),	-- Imperial Plate Chest
		r(16658),	-- Imperial Plate Helm
		r(16730),	-- Imperial Plate Leggings
		r(16646),	-- Imperial Plate Shoulders
		-- #endif
		r(9961),	-- Mithril Coif
	}),
	n(WEAPONS, {
		r(10001),	-- Big Black Mace
		applyclassicphase(TBC_PHASE_ONE, r(34981, {["timeline"] = {ADDED_2_0_5,REMOVED_5_0_4}})),	-- Whirling Steel Axes
	}),
	filter(MISC, {
		r(20201, {["timeline"] = {REMOVED_5_0_4}}),	-- Arcanite Rod
		r(19669),	-- Arcanite Skeleton Key
		r(16639),	-- Dense Grinding Stone
		r(16641),	-- Dense Sharpening Stone
		r(16640),	-- Dense Weightstone
	}),
};
CLASSIC_WEAPONSMITHING = sharedData({ ["timeline"] = { REMOVED_4_0_3_LAUNCH } }, {
	r(9787, {	-- Weaponsmith
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
	}),
	r(17041, {	-- Master Axesmith
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
	}),
	r(17039, {	-- Master Swordsmith
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
	}),
	r(17040, {	-- Master Hammersmith
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
	}),
	r(10003),	-- The Shatterer
	r(10007),	-- Phantom Blade
	r(10011),	-- Blight
	r(10015),	-- Truesilver Champion
});
CLASSIC_ARMORSMITHING = sharedData({ ["timeline"] = { REMOVED_4_0_3_LAUNCH } }, {
	r(9788, {	-- Armorsmith
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
	}),
	r(9974),	-- Truesilver Breastplate
	r(9954),	-- Truesilver Gauntlets
});
CLASSIC_BLACKSMITHING = appendGroups(APPRENTICE_JOURNEYMAN_EXPERT_BLACKSMITHING,
-- #if AFTER 2.1.0
ARTISAN_BLACKSMITHING
-- #else
	{}
-- #endif
);
TBC_BLACKSMITHING = applyclassicphase(TBC_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_2_0_5 } }, {
	r(29844, {	-- Blacksmithing (Master)
		["timeline"] = { ADDED_2_0_5, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 50,
		-- #endif
		["rank"] = 5,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264436, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Outland Blacksmithing
	r(330144, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [The Burning Cruse]
	r(330145, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [The Burning Cruse]
	r(330146, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [The Burning Cruse]
	r(330147, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [The Burning Cruse]
	r(330148, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [The Burning Cruse]
	n(ARMOR, {
		r(29553),	-- Fel Iron Chain Bracers
		r(29551),	-- Fel Iron Chain Coif
		r(29552),	-- Fel Iron Chain Gloves
		r(29556),	-- Fel Iron Chain Tunic
		r(29550),	-- Fel Iron Breastplate
		r(29547),	-- Fel Iron Plate Belt
		r(29548),	-- Fel Iron Plate Boots
		r(29545),	-- Fel Iron Plate Gloves
		r(29549),	-- Fel Iron Plate Pants
	}),
	filter(MISC, {
		r(32655, {["timeline"] = {ADDED_2_0_5,REMOVED_5_0_4}}),	-- Fel Iron Rod
		r(29654),	-- Fel Sharpening Stone
		r(34607),	-- Fel Weightstone
		r(32284),	-- Lesser Rune of Warding
	}),
	n(WEAPONS, {
		r(29565),	-- Fel Iron Greatsword
		r(29558),	-- Fel Iron Hammer
		r(29557),	-- Fel Iron Hatchet
		r(34983, {["timeline"] = {ADDED_2_0_5,REMOVED_5_0_4}}),	-- Felsteel Whisper Knives
	}),
}));
TBC_ARMORSMITHING = applyclassicphase(TBC_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_2_0_5, REMOVED_4_0_3_LAUNCH } }, {
	r(34533),	-- Breastplate of Kings
	r(34534),	-- Bulwark of Kings
	r(36257),	-- Bulwark of the Ancient Kings
	r(36122),	-- Earthforged Leggings
	r(36256),	-- Embrace of the Twisting Nether
	r(36129),	-- Heavy Earthforged Breastplate
	r(34529),	-- Nether Chain Shirt
	r(36130),	-- Stormforged Hauberk
	r(34530),	-- Twisting Nether Chain Shirt
	r(36124),	-- Windforged Leggings
}));
TBC_WEAPONSMITHING = applyclassicphase(TBC_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_2_0_5, REMOVED_4_0_3_LAUNCH } }, {
	r(34542),	-- Black Planar Edge
	r(36258),	-- Blazefury
	r(34537),	-- Blazeguard
	r(36261),	-- Bloodmoon
	r(34548),	-- Deep Thunder
	r(34546),	-- Dragonmaw
	r(36262),	-- Dragonstrike
	r(34545),	-- Drakefist Hammer
	r(34535),	-- Fireguard
	r(36128),	-- Light Emberforged Hammer
	r(36126),	-- Light Skyforged Axe
	r(34538),	-- Lionheart Blade
	r(34540),	-- Lionheart Champion
	r(36259),	-- Lionheart Executioner
	r(34543),	-- Lunar Crescent
	r(34544),	-- Mooncleaver
	r(36263),	-- Stormherald
	r(34541),	-- The Planar Edge
	r(34547),	-- Thunder
	r(36260),	-- Wicked Edge of the Planes
	-- #if BEFORE 7.1.5
	r(36137),	-- Great Earthforged Hammer
	r(36136),	-- Lavaforged Warhammer
	r(36125),	-- Light Earthforged Blade
	r(36135),	-- Skyforged Great Axe
	r(36133),	-- Stoneforged Claymore
	r(36134),	-- Stormforged Axe
	r(36131),	-- Windforged Rapier
	-- #endif
}));
WRATH_BLACKSMITHING = applyclassicphase(WRATH_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_3_0_3 } }, {
	r(51300, {	-- Blacksmithing (Grand Master)
		["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 65,
		-- #endif
		["rank"] = 6,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264438, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Northrend Blacksmithing
	r(330149, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Wrath of the Lich King]
	r(330150, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Wrath of the Lich King]
	r(330151, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Wrath of the Lich King]
	r(330152, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Wrath of the Lich King]
	r(330153, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Wrath of the Lich King]
	n(ARMOR, {
		r(59436),	-- Brilliant Saronite Belt
		r(55057),	-- Brilliant Saronite Boots
		r(59438),	-- Brilliant Saronite Bracers
		r(55058),	-- Brilliant Saronite Breastplate
		r(55056),	-- Brilliant Saronite Gauntlets
		r(59441),	-- Brilliant Saronite Helm
		r(55055),	-- Brilliant Saronite Legplates
		r(59440),	-- Brilliant Saronite Pauldrons
		r(55374),	-- Brilliant Titansteel Helm
		r(55377),	-- Brilliant Titansteel Treads
		r(52568),	-- Cobalt Belt
		r(52569),	-- Cobalt Boots
		r(55834),	-- Cobalt Bracers
		r(52570),	-- Cobalt Chestpiece
		r(55835),	-- Cobalt Gauntlets
		r(52571),	-- Cobalt Helm
		r(52567),	-- Cobalt Legplates
		r(52572),	-- Cobalt Shoulders
		r(55301),	-- Daunting Handguards
		r(55303),	-- Daunting Legplates
		r(55302),	-- Helm of Command
		r(54949),	-- Horned Cobalt Helm
		r(61008),	-- Icebane Chestguard
		r(61009),	-- Icebane Girdle
		r(61010),	-- Icebane Treads
		r(56549),	-- Ornate Saronite Bracers
		r(56553),	-- Ornate Saronite Gauntlets
		r(56555),	-- Ornate Saronite Hauberk
		r(56554),	-- Ornate Saronite Legplates
		r(56550),	-- Ornate Saronite Pauldrons
		r(56556),	-- Ornate Saronite Skullshield
		r(56551),	-- Ornate Saronite Waistguard
		r(56552),	-- Ornate Saronite Walkers
		r(55300),	-- Righteous Gauntlets
		r(55304),	-- Righteous Greaves
		r(55305),	-- Savage Saronite Bracers
		r(55309),	-- Savage Saronite Gauntlets
		r(55311),	-- Savage Saronite Hauberk
		r(55310),	-- Savage Saronite Legplates
		r(55306),	-- Savage Saronite Pauldrons
		r(55312),	-- Savage Saronite Skullshield
		r(55307),	-- Savage Saronite Waistguard
		r(55308),	-- Savage Saronite Walkers
		r(54946),	-- Spiked Cobalt Belt
		r(54918),	-- Spiked Cobalt Boots
		r(54948),	-- Spiked Cobalt Bracers
		r(54944),	-- Spiked Cobalt Chestpiece
		r(54945),	-- Spiked Cobalt Gauntlets
		r(54917),	-- Spiked Cobalt Helm
		r(54947),	-- Spiked Cobalt Legplates
		r(54941),	-- Spiked Cobalt Shoulders
		r(55372),	-- Spiked Titansteel Helm
		r(55375),	-- Spiked Titansteel Treads
		r(54551),	-- Tempered Saronite Belt
		r(54552),	-- Tempered Saronite Boots
		r(55017),	-- Tempered Saronite Bracers
		r(54553),	-- Tempered Saronite Breastplate
		r(55015),	-- Tempered Saronite Gauntlets
		r(54555),	-- Tempered Saronite Helm
		r(54554),	-- Tempered Saronite Legplates
		r(54556),	-- Tempered Saronite Shoulders
		r(55373),	-- Tempered Titansteel Helm
		r(55376),	-- Tempered Titansteel Treads
		r(55298),	-- Vengeance Bindings
	}),
	filter(MISC, {
		r(59405),	-- Cobalt Skeleton Key
		r(55656),	-- Eternal Belt Buckle
		r(55628, {["timeline"] = {ADDED_3_0_3,REMOVED_6_0_2}}),	-- Socket Bracer
		r(55641, {["timeline"] = {ADDED_3_0_3,REMOVED_6_0_2}}),	-- Socket Gloves
		r(55732, {["timeline"] = {ADDED_3_0_3,REMOVED_5_0_4}}),	-- Titanium Rod
		r(56357),	-- Titanium Shield Spike
		r(59406),	-- Titanium Skeleton Key
		r(55839),	-- Titanium Weapon Chain
	}),
	n(WEAPONS, {
		r(55201),	-- Cobalt Tenderizer
		r(54550),	-- Cobalt Triangle Shield
		r(56280),	-- Cudgel of Saronite Justice
		r(55206, {["timeline"] = {ADDED_3_0_3,REMOVED_5_0_4}}),	-- Deadly Saronite Dirk
		r(55203),	-- Forged Cobalt Claymore
		r(55182),	-- Furious Saronite Beatstick
		r(55174),	-- Honed Cobalt Cleaver
		r(55204),	-- Notched Cobalt War Axe
		r(55179),	-- Saronite Ambusher
		r(55014),	-- Saronite Bulwark
		r(54557),	-- Saronite Defender
		r(55013),	-- Saronite Protector
		r(55181),	-- Saronite Shiv
		r(59442),	-- Saronite Spellblade
		r(55177),	-- Savage Cobalt Slicer
		r(55200),	-- Sturdy Cobalt Quickblade
		r(55202, {["timeline"] = {ADDED_3_0_3,REMOVED_5_0_4}}),	-- Sure-fire Shuriken
		r(55370),	-- Titansteel Bonecrusher
		r(55369),	-- Titansteel Destroyer
		r(55371),	-- Titansteel Guardian
		r(56234),	-- Titansteel Shanker
		r(56400),	-- Titansteel Shield Wall
		r(63182, {["timeline"] = {ADDED_3_1_0}}),		-- Titansteel Spellblade
		-- #if AFTER CATA
		r(55185),	-- Saronite Mindcrusher
		-- #endif
	}),
}));
WRATH_ARMORSMITHING = applyclassicphase(WRATH_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3_LAUNCH } }, {
	r(55186),	-- Chestplate of Conquest
	r(55187),	-- Legplates of Conquest
}));
WRATH_WEAPONSMITHING = applyclassicphase(WRATH_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3_LAUNCH } }, {
	r(55183),	-- Corroded Saronite Edge
	r(55184),	-- Corroded Saronite Woundbringer
	-- #if BEFORE CATA
	r(55185),	-- Saronite Mindcrusher
	-- #endif
}));
CATA_BLACKSMITHING = applyclassicphase(CATA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	r(76666, {	-- Blacksmithing (Illustrious)
		["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 7,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264440, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Cataclysm Blacksmithing
	r(330154, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Cataclysm]
	r(330155, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Cataclysm]
	r(330156, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Cataclysm]
	r(330157, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Cataclysm]
	r(330158, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Cataclysm]
	n(ARMOR, {
		r(76181),	-- Hardened Obsidium Belt
		r(76182),	-- Hardened Obsidium Boots
		r(76179),	-- Hardened Obsidium Bracers
		r(76261),	-- Hardened Obsidium Breastplate
		r(76180),	-- Hardened Obsidium Gauntlets
		r(76260),	-- Hardened Obsidium Helm
		r(76259),	-- Hardened Obsidium Legguards
		r(76258),	-- Hardened Obsidium Shoulders
		r(76264),	-- Redsteel Belt
		r(76265),	-- Redsteel Boots
		r(76262),	-- Redsteel Bracers
		r(76270),	-- Redsteel Breastplate
		r(76263),	-- Redsteel Gauntlets
		r(76269),	-- Redsteel Helm
		r(76267),	-- Redsteel Legguards
		r(76266),	-- Redsteel Shoulders
		r(76283),	-- Stormforged Belt
		r(76285),	-- Stormforged Boots
		r(76280),	-- Stormforged Bracers
		r(76289),	-- Stormforged Breastplate
		r(76281),	-- Stormforged Gauntlets
		r(76288),	-- Stormforged Helm
		r(76287),	-- Stormforged Legguards
		r(76286),	-- Stormforged Shoulders
	}),
	filter(MISC, {
		r(92375, {["timeline"] = {ADDED_4_0_3_LAUNCH,REMOVED_5_0_4}}),	-- Elementium Rod
		r(76441),	-- Elementium Shield Spike
		r(76178),	-- Folded Obsidium
		r(76438),	-- Obsidium Skeleton Key
	}),
	n(WEAPONS, {
		r(76434),	-- Cold-Forged Shank
		r(76433),	-- Decapitator's Razor
		r(76435),	-- Fire-Etched Dagger
		r(76291),	-- Hardened Obsidium Shield
		r(76436),	-- Lifeforce Hammer
		r(76474),	-- Obsidium Bladespear
		r(76437),	-- Obsidium Executioner
		r(76293),	-- Stormforged Shield
	}),
}));
COMMON_CATACLYSM_BLACKSMITHING_RECIPES = applyclassicphase(CATA_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	i(66100, {	-- Plans: Ebonsteel Belt Buckle (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
	}),
	i(66113, {	-- Plans: Elementium Bonesplitter (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66106, {	-- Plans: Elementium Deathplate (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66115, {	-- Plans: Elementium Earthguard (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66107, {	-- Plans: Elementium Girdle of Pain (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	i(67603, {	-- Plans: Elementium Gutslicer (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66111, {	-- Plans: Elementium Hammer (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66112, {	-- Plans: Elementium Poleaxe (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66114, {	-- Plans: Elementium Shank (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66110, {	-- Plans: Elementium Spellblade (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66116, {	-- Plans: Elementium Stormshield (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(67606, {	-- Plans: Forged Elementium Mindcrusher (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
	}),
	i(66105, {	-- Plans: Hardened Elementium Girdle (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	i(66104, {	-- Plans: Hardened Elementium Hauberk (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66109, {	-- Plans: Light Elementium Belt (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	i(66108, {	-- Plans: Light Elementium Chestguard (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66101, {	-- Plans: Pyrium Shield Spike (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
	}),
	i(66103, {	-- Plans: Pyrium Weapon Chain (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	-- #if ANYCLASSIC
	-- CRIEVE NOTE: Cataclysm Classic Devs couldn't figure out how to reconcile the recipe getting replaced, so they completely removed the old ones and put in new ones. Idiots.
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238131, {	-- Plans: Bloodied Pyrium Belt (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238132, {	-- Plans: Bloodied Pyrium Boots (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238129, {	-- Plans: Bloodied Pyrium Bracers (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238136, {	-- Plans: Bloodied Pyrium Breastplate (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238130, {	-- Plans: Bloodied Pyrium Gauntlets (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238135, {	-- Plans: Bloodied Pyrium Helm (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238134, {	-- Plans: Bloodied Pyrium Legguards (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238133, {	-- Plans: Bloodied Pyrium Shoulders (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	-- CRIEVE NOTE: These were repurposed from the Vicious versions and renamed to Bloodthirsty for Cata Classic in Phase 4. For Cata Classic Classic, might need to update the phase ID.
	i(66127, {	-- Plans: Bloodthirsty Ornate Pyrium Belt (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	i(66128, {	-- Plans: Bloodthirsty Ornate Pyrium Boots (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66125, {	-- Plans: Bloodthirsty Ornate Pyrium Bracers (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	i(66132, {	-- Plans: Bloodthirsty Ornate Pyrium Breastplate (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
	}),
	i(66126, {	-- Plans: Bloodthirsty Ornate Pyrium Gauntlets (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	i(66131, {	-- Plans: Bloodthirsty Ornate Pyrium Helm (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
	}),
	i(66130, {	-- Plans: Bloodthirsty Ornate Pyrium Legguards (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
	}),
	i(66129, {	-- Plans: Bloodthirsty Ornate Pyrium Shoulders (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66119, {	-- Plans: Bloodthirsty Pyrium Belt (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	i(66120, {	-- Plans: Bloodthirsty Pyrium Boots (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66117, {	-- Plans: Bloodthirsty Pyrium Bracers (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	i(66124, {	-- Plans: Bloodthirsty Pyrium Breastplate (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
	}),
	i(66118, {	-- Plans: Bloodthirsty Pyrium Gauntlets (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	i(66123, {	-- Plans: Bloodthirsty Pyrium Helm (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
	}),
	i(66122, {	-- Plans: Bloodthirsty Pyrium Legguards (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
	}),
	i(66121, {	-- Plans: Bloodthirsty Pyrium Shoulders (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238139, {	-- Plans: Ornate Pyrium Belt (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238140, {	-- Plans: Ornate Pyrium Boots (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238137, {	-- Plans: Ornate Pyrium Bracers (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238144, {	-- Plans: Ornate Pyrium Breastplate (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238138, {	-- Plans: Ornate Pyrium Gauntlets (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238143, {	-- Plans: Ornate Pyrium Helm (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238142, {	-- Plans: Ornate Pyrium Legguards (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238141, {	-- Plans: Ornate Pyrium Shoulders (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238084, {	-- Plans: Vicious Ornate Pyrium Belt (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238085, {	-- Plans: Vicious Ornate Pyrium Boots (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238082, {	-- Plans: Vicious Ornate Pyrium Bracers (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238089, {	-- Plans: Vicious Ornate Pyrium Breastplate (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238083, {	-- Plans: Vicious Ornate Pyrium Gauntlets (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238088, {	-- Plans: Vicious Ornate Pyrium Helm (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238087, {	-- Plans: Vicious Ornate Pyrium Legguards (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238086, {	-- Plans: Vicious Ornate Pyrium Shoulders (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238076, {	-- Plans: Vicious Pyrium Belt (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238077, {	-- Plans: Vicious Pyrium Boots (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238074, {	-- Plans: Vicious Pyrium Bracers (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238081, {	-- Plans: Vicious Pyrium Breastplate (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238075, {	-- Plans: Vicious Pyrium Gauntlets (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238080, {	-- Plans: Vicious Pyrium Helm (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238079, {	-- Plans: Vicious Pyrium Legguards (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238078, {	-- Plans: Vicious Pyrium Shoulders (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
		["timeline"] = { ADDED_4_4_2 },
	})),
	-- #else
	i(66127, {	-- Plans: Vicious Ornate Pyrium Belt (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	i(66128, {	-- Plans: Vicious Ornate Pyrium Boots (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66125, {	-- Plans: Vicious Ornate Pyrium Bracers (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	i(66132, {	-- Plans: Vicious Ornate Pyrium Breastplate (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
	}),
	i(66126, {	-- Plans: Vicious Ornate Pyrium Gauntlets (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	i(66131, {	-- Plans: Vicious Ornate Pyrium Helm (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
	}),
	i(66130, {	-- Plans: Vicious Ornate Pyrium Legguards (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
	}),
	i(66129, {	-- Plans: Vicious Ornate Pyrium Shoulders (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66119, {	-- Plans: Vicious Pyrium Belt (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	i(66120, {	-- Plans: Vicious Pyrium Boots (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	i(66117, {	-- Plans: Vicious Pyrium Bracers (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	i(66124, {	-- Plans: Vicious Pyrium Breastplate (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
	}),
	i(66118, {	-- Plans: Vicious Pyrium Gauntlets (RECIPE!)
		["cost"] = {{ "i", ELEMENTIUM_BAR, 20 }},
	}),
	i(66123, {	-- Plans: Vicious Pyrium Helm (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
	}),
	i(66122, {	-- Plans: Vicious Pyrium Legguards (RECIPE!)
		["cost"] = {{ "i", PYRIUM, 5 }},
	}),
	i(66121, {	-- Plans: Vicious Pyrium Shoulders (RECIPE!)
		["cost"] = {{ "i", HARDENED_ELEMENTIUM_BAR, 2 }},
	}),
	-- #endif
}));
MOP_BLACKSMITHING = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	r(110396, {	-- Blacksmithing (Zen Master)
		["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 8,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264442, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Pandaria Blacksmithing
	r(330159, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Mist of Pandaria]
	r(330160, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Mist of Pandaria]
	r(330161, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Mist of Pandaria]
	r(330162, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Mist of Pandaria]
	r(330163, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Mist of Pandaria]
	n(ARMOR, {
		r(122583),	-- Ghost-Forged Belt
		r(122638),	-- Ghost-Forged Blade
		r(122582),	-- Ghost-Forged Boots
		r(122581),	-- Ghost-Forged Bracers
		r(122578),	-- Ghost-Forged Breastplate
		r(122579),	-- Ghost-Forged Gauntlets
		r(122576),	-- Ghost-Forged Helm
		r(122580),	-- Ghost-Forged Legplates
		r(122577),	-- Ghost-Forged Shoulders
		r(122589),	-- Lightsteel Bracers
		r(122573),	-- Spiritguard Bracers
	}),
	filter(MISC, {
		r(126869, {["timeline"] = {REMOVED_10_0_2}}),	-- Folded Ghost Iron
		r(122633),	-- Ghostly Skeleton Key
	}),
	filter(MISC, sharedData({
		["timeline"] = { ADDED_5_2_0, REMOVED_6_0_3_LAUNCH },
		["u"]=TRAINING
	}, {
		r(139753),	-- Training Project: Decorative Spoons
		r(139756),	-- Training Project: Ghost Iron Barrel
		r(139763),	-- Training Project: Ghost Iron Bells
		r(139762),	-- Training Project: Ghost Iron Bowls
		r(139764),	-- Training Project: Ghost Iron Crate
		r(139761),	-- Training Project: Ghost Iron Cups
		r(140166),	-- Training Project: Ghost Iron Frames
		r(139750),	-- Training Project: Ghost Iron Hook
		r(139748),	-- Training Project: Ghost Iron Ladle
		r(139755),	-- Training Project: Ghost Iron Needles
		r(140167),	-- Training Project: Ghost Iron Pans
		r(140165),	-- Training Project: Ghost Iron Picks
		r(139745),	-- Training Project: Ghost Iron Pins
		r(139749),	-- Training Project: Ghost Iron Poker
		r(139760),	-- Training Project: Ghost Iron Pot
		r(139757),	-- Training Project: Ghost Iron Saw
		r(139754),	-- Training Project: Ghost Iron Spade
		r(139751),	-- Training Project: Ghost Iron Spatulas
		r(140168),	-- Training Project: Ghost Iron Statue
		r(139759),	-- Training Project: Ghost Iron Wire
		r(139747),	-- Training Project: Ghost Iron Wok
		r(139746),	-- Training Project: Simple Eating Utensils
	})),
	n(WEAPONS, {
		r(122637),	-- Forgewire Axe
		r(122641),	-- Ghost Shard
		r(122635),	-- Lightsteel Shield
		r(122639),	-- Phantasmal Hammer
		r(122640),	-- Spiritblade Decimator
		r(122636),	-- Spiritguard Shield
	}),
}));
COMMON_MOP_BLACKSMITHING_RECIPES = applyclassicphase(MOP_PHASE_LANDFALL, sharedData({ ["cost"] = {{ "i", SPIRIT_OF_HARMONY, 1 }}, ["timeline"] = { ADDED_5_0_4 } }, {
	i(84158),	-- Plans: Contender's Revenant Belt (RECIPE!)
	i(84159),	-- Plans: Contender's Revenant Boots (RECIPE!)
	i(84160),	-- Plans: Contender's Revenant Bracers (RECIPE!)
	i(84161),	-- Plans: Contender's Revenant Breastplate (RECIPE!)
	i(84162),	-- Plans: Contender's Revenant Gauntlets (RECIPE!)
	i(84163),	-- Plans: Contender's Revenant Helm (RECIPE!)
	i(84164),	-- Plans: Contender's Revenant Legplates (RECIPE!)
	i(84165),	-- Plans: Contender's Revenant Shoulders (RECIPE!)
	i(84166),	-- Plans: Contender's Spirit Belt (RECIPE!)
	i(84167),	-- Plans: Contender's Spirit Boots (RECIPE!)
	i(84168),	-- Plans: Contender's Spirit Bracers (RECIPE!)
	i(84169),	-- Plans: Contender's Spirit Breastplate (RECIPE!)
	i(84170),	-- Plans: Contender's Spirit Gauntlets (RECIPE!)
	i(84171),	-- Plans: Contender's Spirit Helm (RECIPE!)
	i(84172),	-- Plans: Contender's Spirit Legplates (RECIPE!)
	i(84173),	-- Plans: Contender's Spirit Shoulders (RECIPE!)
	i(84208),	-- Plans: Masterwork Lightsteel Shield (RECIPE!)
	i(84219),	-- Plans: Masterwork Spiritguard Belt (RECIPE!)
	i(84220),	-- Plans: Masterwork Spiritguard Boots (RECIPE!)
	i(84221),	-- Plans: Masterwork Spiritguard Bracers (RECIPE!)
	i(84222),	-- Plans: Masterwork Spiritguard Breastplate (RECIPE!)
	i(84223),	-- Plans: Masterwork Spiritguard Gauntlets (RECIPE!)
	i(84224),	-- Plans: Masterwork Spiritguard Helm (RECIPE!)
	i(84225),	-- Plans: Masterwork Spiritguard Legplates (RECIPE!)
	i(84226),	-- Plans: Masterwork Spiritguard Shield (RECIPE!)
	i(84227),	-- Plans: Masterwork Spiritguard Shoulders (RECIPE!)
}));
DRAENOR_BLACKSMITHING = applyclassicphase(WOD_PHASE_ONE, i(115356, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	["description"] = "This is a reward for completing the introductory Blacksmithing questline that can drop from any Draenor mob. Also sold at The Forge for 100 gold.",
	["g"] = {
		r(158737, {	-- Blacksmithing (Draenor Master)
			["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #endif
			["rank"] = 9,
		}),
		applyclassicphase(BFA_PHASE_ONE, r(264444, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Draenor Blacksmithing
		r(330164, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Warlords of Draenor]
		r(330165, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Warlords of Draenor]
		r(330166, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Warlords of Draenor]
		r(330167, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Warlords of Draenor]
		r(330168, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Warlords of Draenor]
		r(171692),	-- Smoldering Breastplate
		r(171693),	-- Smoldering Greaves
		r(171691),	-- Smoldering Helm
		r(176090),	-- Secrets of Draenor Blacksmithing
		r(171690),	-- Truesteel Ingot
	},
})));
COMMON_DRAENOR_BLACKSMITHING_RECIPES = applyclassicphase(WOD_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	i(116746, {	-- Plans: Greater Steelforged Essence (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 5 }},
		["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_6_2_0 },
	}),
	i(116744, {	-- Plans: Greater Truesteel Essence (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 5 }},
		["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_6_2_0 },
	}),
	i(119329, {	-- Plans: Soul of the Forge (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(120262, {	-- Plans: Steelforged Aegis (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(120260, {	-- Plans: Steelforged Axe (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(116731, {	-- Plans: Steelforged Dagger (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(116729, {	-- Plans: Steelforged Greataxe (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(116732, {	-- Plans: Steelforged Hammer (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(116730, {	-- Plans: Steelforged Saber (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(116733, {	-- Plans: Steelforged Shield (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(116740, {	-- Plans: Truesteel Armguards (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(116741, {	-- Plans: Truesteel Boots (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(116739, {	-- Plans: Truesteel Breastplate (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(116738, {	-- Plans: Truesteel Gauntlets (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(116737, {	-- Plans: Truesteel Greaves (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(116734, {	-- Plans: Truesteel Grinder (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(116736, {	-- Plans: Truesteel Helm (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(116735, {	-- Plans: Truesteel Pauldrons (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(118044, {	-- Plans: Truesteel Reshaper (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(116742, {	-- Plans: Truesteel Waistguard (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 1 }},
	}),
	i(116743, {	-- Plans: Truesteel Essence (RECIPE!)
		["description"] = "The item is still in game but you can't learn the recipe from it anymore (recipe removed in 9.0.1)",
		["collectible"] = false,
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 5 }},
		["timeline"] = { REMOVED_10_0_5 },
	}),
	i(116745, {	-- Plans: Steelforged Essence (RECIPE!)
		["description"] = "The item is still in game but you can't learn the recipe from it anymore (recipe removed in 9.0.1)",
		["collectible"] = false,
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 5 }},
		["timeline"] = { REMOVED_10_0_5 },
	}),
	i(202223, {	-- Plans: Impressive Steelforged Essence (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 5 }},
		["timeline"] = { ADDED_10_0_5 },
	}),
	i(202224, {	-- Plans: Remarkable Steelforged Essence (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 5 }},
		["timeline"] = { ADDED_10_0_5 },
	}),
	i(202226, {	-- Plans: Impressive Truesteel Essence (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 5 }},
		["timeline"] = { ADDED_10_0_5 },
	}),
	i(202227, {	-- Plans: Remarkable Truesteel Essence (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_BLACKSMITHING, 5 }},
		["timeline"] = { ADDED_10_0_5 },
	}),
}));
BFA_BLACKSMITHING = applyclassicphase(BFA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	r(330174, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Battle for Azeroth]
	r(330175, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Battle for Azeroth]
	r(330176, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Battle for Azeroth]
	r(330177, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Battle for Azeroth]
	r(330178, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Battle for Azeroth]
	n(ARMOR, {
		r(285081, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Stormsteel Girdle
		r(285082, {["timeline"] = {ADDED_8_1_0}}),	-- Enhanced Stormsteel Legguards
		r(269451),	-- Honorable Combatant's Plate Armguards [Rank 1]
		r(269424),	-- Honorable Combatant's Plate Boots [Rank 1]
		r(269421),	-- Honorable Combatant's Plate Gauntlets [Rank 1]
		r(269444),	-- Honorable Combatant's Plate Greaves [Rank 1]
		r(269448),	-- Honorable Combatant's Plate Waistguard [Rank 1]
		r(253183),	-- Monel-Hardened Armguards
		r(253165),	-- Monel-Hardened Boots
		r(253162),	-- Monel-Hardened Breastplate
		r(253168),	-- Monel-Hardened Gauntlets
		r(253174),	-- Monel-Hardened Greaves
		r(253171),	-- Monel-Hardened Helm
		r(253177),	-- Monel-Hardened Pauldrons
		r(253180),	-- Monel-Hardened Waistguard
		r(282889, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Plate Armguards [Rank 1]
		r(283249, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Plate Boots [Rank 1]
		r(283245, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Plate Gauntlets [Rank 1]
		r(283242, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Plate Greaves [Rank 1]
		r(283239, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Plate Waistguard [Rank 1]
		r(253190),	-- Stormsteel Girdle
		r(253186),	-- Stormsteel Legguards
		r(304317, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Plate Armguards [Rank 1]
		r(304307, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Plate Boots [Rank 1]
		r(304308, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Plate Gauntlets [Rank 1]
		r(304312, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Plate Greaves [Rank 1]
		r(304315, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Plate Waistguard [Rank 1]
	}),
	filter(MISC, {
		r(287235, {["timeline"] = {ADDED_8_1_0}}),	-- Aqueous Reconstruction
		r(278416),	-- Magnetic Mining Pick
		r(253110),	-- Monel-Hardened Hoofplates
		r(286015, {["timeline"] = {ADDED_8_1_0}}),	-- Monel-Hardened Hoofplates [Rank 2]
		r(253112),	-- Monel-Hardened Stirrups
		r(269064),	-- Monelite Skeleton Key
		r(278415),	-- Storm Silver Spurs
		r(278417),	-- Platinum Whetstone
		r(286631, {["timeline"] = {ADDED_8_1_0}}),	-- Sanguinated Reconstruction
	}),
	n(WEAPONS, {
		r(269464),	-- Honorable Combatant's Cutlass [Rank 1]
		r(269470),	-- Honorable Combatant's Deckpounder [Rank 1]
		r(269479),	-- Honorable Combatant's Polearm [Rank 1]
		r(269476),	-- Honorable Combatant's Shanker [Rank 1]
		r(269458),	-- Honorable Combatant's Shield [Rank 1]
		r(256786),	-- Honorable Combatant's Spellblade [Rank 1]
		r(253135),	-- Monel-Hardened Claymore
		r(253125),	-- Monel-Hardened Cutlass
		r(253132),	-- Monel-Hardened Deckpounder
		r(253141),	-- Monel-Hardened Polearm
		r(253138),	-- Monel-Hardened Shanker
		r(253113),	-- Monel-Hardened Shield
		r(282871, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Cutlass [Rank 1]
		r(282868, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Deckpounder [Rank 1]
		r(282859, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Polearm [Rank 1]
		r(282862, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Shanker [Rank 1]
		r(282876, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Shield [Rank 1]
		r(282865, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Spellblade [Rank 1]
		r(253156),	-- Stormsteel Dagger [Rank 1]
		r(253157),	-- Stormsteel Dagger [Rank 2]
		r(278131),	-- Stormsteel Saber [Rank 1]
		r(278132),	-- Stormsteel Saber [Rank 2]
		r(253116),	-- Stormsteel Shield [Rank 1]
		r(253117),	-- Stormsteel Shield [Rank 2]
		r(253159),	-- Stormsteel Spear [Rank 1]
		r(253160),	-- Stormsteel Spear [Rank 2]
		r(304318, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Cutlass [Rank 1]
		r(304320, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Deckpounder [Rank 1]
		r(304324, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Polearm [Rank 1]
		r(304323, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Shanker [Rank 1]
		r(304314, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Shield [Rank 1]
		r(304322, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Spellblade [Rank 1]
	}),
}));
NAZJATAR_BLACKSMITHING = applyclassicphase(BFA_PHASE_THREE, bubbleDown({ ["timeline"] = { ADDED_8_2_0 } }, {
	n(ARMOR, {
		r(294763),	-- Notorious Combatant's Plate Armguards [Rank 1]
		r(294748),	-- Notorious Combatant's Plate Boots [Rank 1]
		r(294751),	-- Notorious Combatant's Plate Gauntlets [Rank 1]
		r(294754),	-- Notorious Combatant's Plate Greaves [Rank 1]
		r(294760),	-- Notorious Combatant's Plate Waistguard [Rank 1]
		r(299001),	-- Osmenite Girdle
		r(298998),	-- Osmenite Legguards
	}),
	filter(MISC, {
		r(301413),	-- Inflatable Mount Shoes
	}),
	n(WEAPONS, {
		r(294766),	-- Notorious Combatant's Cutlass [Rank 1]
		r(294769),	-- Notorious Combatant's Deckpounder [Rank 1]
		r(294778),	-- Notorious Combatant's Polearm [Rank 1]
		r(294775),	-- Notorious Combatant's Shanker [Rank 1]
		r(294757),	-- Notorious Combatant's Shield [Rank 1]
		r(294772),	-- Notorious Combatant's Spellblade [Rank 1]
	}),
}));
SL_BLACKSMITHING = applyclassicphase(SHADOWLANDS_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	r(309827),	-- Shadowlands Blacksmithing
	n(ARMOR, {
		r(307670),	-- Ceremonious Armguards
		r(307663),	-- Ceremonious Breastplate
		r(307665),	-- Ceremonious Gauntlets
		r(307667),	-- Ceremonious Greaves
		r(307666),	-- Ceremonious Helm
		r(307668),	-- Ceremonious Pauldrons
		r(307664),	-- Ceremonious Sabatons
		r(307669),	-- Ceremonious Waistguard
		r(307705, {	-- Shadowghast Armguards [Rank 1]
			["sourceQuests"] = { 62797 },	-- The Vessels of Metal
		}),
		r(307712, {	-- Shadowghast Breastplate [Rank 1]
			["sourceQuests"] = { 62797 },	-- The Vessels of Metal
		}),
		r(307710, {	-- Shadowghast Gauntlets [Rank 1]
			["sourceQuests"] = { 62797 },	-- The Vessels of Metal
		}),
		r(307708, {	-- Shadowghast Greaves [Rank 1]
			["sourceQuests"] = { 62797 },	-- The Vessels of Metal
		}),
		r(307709, {	-- Shadowghast Helm [Rank 1]
			["sourceQuests"] = { 62797 },	-- The Vessels of Metal
		}),
		r(307707, {	-- Shadowghast Pauldrons [Rank 1]
			["sourceQuests"] = { 62797 },	-- The Vessels of Metal
		}),
		r(307711, {	-- Shadowghast Sabatons [Rank 1]
			["sourceQuests"] = { 62797 },	-- The Vessels of Metal
		}),
		r(307706, {	-- Shadowghast Waistguard [Rank 1]
			["sourceQuests"] = { 62797 },	-- The Vessels of Metal
		}),
		r(322595),	-- Shadowsteel Armguards
		r(322587),	-- Shadowsteel Breastplate
		r(322589),	-- Shadowsteel Gauntlets
		r(322591),	-- Shadowsteel Greaves
		r(322588),	-- Shadowsteel Sabatons
		r(322594),	-- Shadowsteel Waistguard
	}),
	filter(MISC, {
		r(343184),	-- Crafter's Mark I
		r(307721),	-- Laestrite Skeleton Key
		r(343662),	-- Novice Crafter's Mark
		r(307717),	-- Porous Sharpening Stone
		r(307719),	-- Porous Weightstone
		r(307718),	-- Shaded Sharpening Stone
		r(307720),	-- Shaded Weightstone
		r(307611),	-- Shadowghast Ingot
	}),
	n(WEAPONS, {
		r(307672),	-- Ceremonious Axe
		r(307679),	-- Ceremonious Blade
		r(307678),	-- Ceremonious Claymore
		r(307674),	-- Ceremonious Mace
		r(307675),	-- Ceremonious Rapier
		r(307676),	-- Ceremonious Reaper
		r(307680),	-- Ceremonious Shanker
		r(307671),	-- Ceremonious Shield
		r(307677),	-- Ceremonious Smasher
		r(307681),	-- Ceremonious Spear
		r(307682),	-- Ceremonious Warglaive
	}),
}));
DF_BLACKSMITHING = applyclassicphase(DF_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	r(365677),	-- Dragon Isles Blacksmithing
	n(ARMOR, {
		r(367611),	-- Explorer's Expert Clasp
		r(395879),	-- Explorer's Expert Gauntlets
		r(395881),	-- Explorer's Expert Greaves
		r(395883),	-- Explorer's Expert Helm
		r(395880),	-- Explorer's Expert Spaulders
		r(367610),	-- Explorer's Plate Boots
		r(367609),	-- Explorer's Plate Bracers
		r(395886),	-- Explorer's Plate Chestguard
	}),
	filter(MISC, {
		r(367712),	-- Frostfire Alloy
		r(365735),	-- Primal Molten Alloy
		r(371674),	-- Primal Weightstone
		r(371650),	-- Primal Whetstone
		r(385304),	-- Recraft Equipment
		r(371395),	-- Serevite Repair Hammer
		r(371394),	-- Serevite Skeleton Key
	}),
	filter(PROFESSION_EQUIPMENT, {
		r(371344),	-- Draconium Blacksmith's Hammer
		r(371364),	-- Draconium Blacksmith's Toolbox
		r(371302),	-- Draconium Needle Set
		r(371338),	-- Draconium Leatherworker's Knife
		r(371360),	-- Draconium Leatherworker's Toolset
		r(371309),	-- Draconium Pickaxe
		r(371343),	-- Draconium Sickle
		r(371304),	-- Draconium Skinning Knife
	}),
	n(WEAPONS, {
		r(367600),	-- Draconium Axe
		r(393404),	-- Draconium Defender
		r(367596),	-- Draconium Dirk
		r(393416),	-- Draconium Great Axe
		r(367598),	-- Draconium Great Mace
		r(367595),	-- Draconium Knuckles
		r(367597),	-- Draconium Stiletto
		r(367599),	-- Draconium Sword
	}),
}));
TWW_BLACKSMITHING = bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	r(423332),	-- Khaz Algar Blacksmithing
	n(ARMOR, {
		r(450266),	-- Dredger's Developed Gauntlets
		r(450260),	-- Dredger's Developed Greatbelt
		r(450262),	-- Dredger's Developed Helm
		r(450263),	-- Dredger's Developed Legplates
		r(450265),	-- Dredger's Developed Pauldrons
		r(450259),	-- Dredger's Plate Breastplate
		r(450258),	-- Dredger's Plate Sabatons
		r(450264),	-- Dredger's Plate Vambraces
	}),
	filter(MISC, {
		r(450291),	-- Coreforged Repair Hammer
		r(450283),	-- Earthen Master's Hammer
		r(450287),	-- Ironclaw Weightstone
		r(425136),	-- Recraft Equipment
	}),
	filter(PROFESSION_EQUIPMENT, {
		r(450273),	-- Proficient Blacksmith's Hammer
		r(450274),	-- Proficient Blacksmith's Toolbox
		r(450271),	-- Proficient Leatherworker's Knife
		r(450272),	-- Proficient Leatherworker's Toolset
		r(450270),	-- Proficient Needle Set
		r(450268),	-- Proficient Pickaxe
		r(450267),	-- Proficient Sickle
		r(450269),	-- Proficient Skinning Knife
	}),
	filter(REAGENTS, {
		r(450288),	-- Adjustable Framework
		r(450217),	-- Charged Alloy
		r(450216),	-- Core Alloy
		r(450284),	-- Forged Framework
		r(450219),	-- Ironclaw Alloy
		r(450218),	-- Sanctified Alloy
	}),
	n(WEAPONS, {
		r(450261),	-- Dredger's Developed Defender
		r(450256),	-- Ironclaw Axe
		r(450252),	-- Ironclaw Dirk
		r(450257),	-- Ironclaw Great Axe
		r(450255),	-- Ironclaw Great Mace
		r(450254),	-- Ironclaw Knuckles
		r(450251),	-- Ironclaw Stiletto
		r(450253),	-- Ironclaw Sword
	}),
});