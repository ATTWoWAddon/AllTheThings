------------
-- MINING --
------------
CLASSIC_MINING = {
	r(2580, {	-- Find Minerals [Rank 1]
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 1,
	}),
	r(2575, {	-- Mining (Apprentice)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 5,
		-- #endif
		["rank"] = 1,
	}),
	r(2576, {	-- Mining (Journeyman)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 10,
		-- #endif
		["rank"] = 2,
	}),
	r(3564, {	-- Mining (Expert)
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
	r(10248, {	-- Mining (Artisan)
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
	r(2656),	-- Mining Journal \ Smelting
	applyclassicphase(BFA_PHASE_ONE, r(265837, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Mining
	r(2659),	-- Smelt Bronze
	r(2657),	-- Smelt Copper
	r(3308),	-- Smelt Gold
	r(3307),	-- Smelt Iron
	r(10097),	-- Smelt Mithril
	r(2658),	-- Smelt Silver
	r(3569),	-- Smelt Steel
	r(16153),	-- Smelt Thorium
	r(3304),	-- Smelt Tin
	r(10098),	-- Smelt Truesilver
};
TBC_MINING = applyclassicphase(TBC_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_2_0_5 } }, {
	r(29354, {	-- Mining (Master)
		["timeline"] = { ADDED_2_0_5, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 50,
		-- #endif
		["rank"] = 5,
	}),
	r(2656),	-- Mining Journal \ Smelting
	applyclassicphase(BFA_PHASE_ONE, r(265839, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Mining (Outland)
	r(35750),	-- Earth Shatter
	r(35751),	-- Fire Sunder
	r(29358),	-- Smelt Adamantite
	r(29359),	-- Smelt Eternium
	r(29356),	-- Smelt Fel Iron
	r(29360),	-- Smelt Felsteel
	r(29686),	-- Smelt Hardened Adamantite
	r(29361),	-- Smelt Khorium
}));
WRATH_MINING = applyclassicphase(WRATH_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_3_0_3 } }, {
	r(50310, {	-- Mining (Grand Master)
		["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 65,
		-- #endif
		["rank"] = 6,
	}),
	r(2656),	-- Mining Journal \ Smelting
	applyclassicphase(BFA_PHASE_ONE, r(265841, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Mining (Northrend)
	r(49252),	-- Smelt Cobalt
	r(70524, {["timeline"] = {ADDED_3_3_3}}),	-- Enchanted Thorium Bar
	r(49258),	-- Smelt Saronite
	r(55211),	-- Smelt Titanium
	r(55208),	-- Smelt Titansteel
}));
CATA_MINING = applyclassicphase(CATA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	r(74517, {	-- Mining (Illustrious)
		["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 7,
	}),
	r(2656),	-- Mining Journal \ Smelting
	applyclassicphase(BFA_PHASE_ONE, r(265843, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Mining (Cataclysm)
	r(74530),	-- Smelt Elementium
	r(74537),	-- Smelt Hardened Elementium
	r(84038),	-- Smelt Obsidium
	r(74529),	-- Smelt Pyrite
}));
CLASSIC_CATA_MINING = appendGroups(CLASSIC_MINING,
-- #if AFTER CATA
CATA_MINING
-- #else
{}
-- #endif
);
MOP_MINING = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	r(102161, {	-- Mining (Zen Master)
		["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 8,
	}),
	r(2656),	-- Mining Journal \ Smelting
	applyclassicphase(BFA_PHASE_ONE, r(265845, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Mining (Pandaria)
	r(102165),	-- Smelt Ghost Iron
	r(102167),	-- Smelt Trillium
}));
DRAENOR_MINING = applyclassicphase(WOD_PHASE_ONE, i(111349, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	["description"] = "This can drop from any ore gathering node on Draenor.",
	["g"] = {
		r(158754, {	-- Mining (Draenor Master)
			["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #endif
			["rank"] = 9,
		}),
		r(2656),	-- Mining Journal \ Smelting
		applyclassicphase(BFA_PHASE_ONE, r(265847, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Mining (Draenor)
	},
})));
BFA_MINING = applyclassicphase(BFA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	r(2656),	-- Mining Journal \ Smelting
	r(253333),	-- Monelite Deposit [Rank 1]
	r(253342),	-- Monelite Seam [Rank 1]
	r(253339),	-- Platinum Deposit [Rank 1]
	r(253336),	-- Storm Silver Deposit [Rank 1]
	r(253345),	-- Storm Silver Seam [Rank 1]
}));
NAZJATAR_MINING = applyclassicphase(BFA_PHASE_THREE, bubbleDown({ ["timeline"] = { ADDED_8_2_0 } }, {
	r(296149),	-- Osmenite Deposit [Rank 1]
	r(296145),	-- Osmenite Seam [Rank 1]
}));
SL_MINING = applyclassicphase(SHADOWLANDS_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	r(309835),	-- Mining (Shadowlands)
	r(2656),	-- Mining Journal \ Smelting
}));
DF_MINING = applyclassicphase(DF_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	r(366260),	-- Mining (Dragon Isles)
	r(2656),	-- Mining Journal \ Smelting
	r(396169),	-- Elementally-Charged Stone
	r(395269),	-- Iridescent Ore
	r(396162),	-- Khaz'gorite
	r(384692),	-- Serevite Deposit
}));
TWW_MINING = bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	r(423341),	-- Khaz Algar Mining
	r(2656),	-- Mining Journal \ Smelting
	r(439705),	-- Bismuth
	r(453381),	-- Erosion Polished Slate
});