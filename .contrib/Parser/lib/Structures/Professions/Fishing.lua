-------------
-- FISHING --
-------------
CLASSIC_FISHING = {
	r(7620, {	-- Fishing (Apprentice)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 5,
		-- #endif
		["rank"] = 1,
	}),
	r(7731, {	-- Fishing (Journeyman)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 10,
		-- #endif
		["rank"] = 2,
	}),
	r(7732, {	-- Fishing (Expert)
		["timeline"] = { ADDED_3_1_0, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 20,
		-- #endif
		["rank"] = 3,
	}),
	r(18248, {	-- Fishing (Artisan)
		["timeline"] = { ADDED_3_1_0, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 35,
		-- #endif
		["rank"] = 4,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(271616, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Fishing
	applyclassicphase(BFA_PHASE_ONE, r(271990, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Fishing Journal
	r(7738),	-- Fishing Poles
};
TBC_FISHING = applyclassicphase(TBC_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_2_0_5 } }, {
	r(33095, {	-- Fishing (Master)
		["timeline"] = { ADDED_2_0_5, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 50,
		-- #endif
		["rank"] = 5,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(271656, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Outland Fishing
	applyclassicphase(BFA_PHASE_ONE, r(271990, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Fishing Journal
	r(7738),	-- Fishing Poles
}));
WRATH_FISHING = applyclassicphase(WRATH_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_3_0_3 } }, {
	r(51294, {	-- Fishing (Grand Master)
		["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 65,
		-- #endif
		["rank"] = 6,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(271658, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Northrend Fishing
	applyclassicphase(BFA_PHASE_ONE, r(271990, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Fishing Journal
	r(7738),	-- Fishing Poles
}));
CATA_FISHING = applyclassicphase(CATA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	r(88868, {	-- Fishing (Illustrious)
		["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 7,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(271660, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Cataclysm Fishing
	applyclassicphase(BFA_PHASE_ONE, r(271990, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Fishing Journal
	r(7738),	-- Fishing Poles
}));
MOP_FISHING = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	r(110410, {	-- Fishing (Zen Master)
		["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 8,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(271662, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Pandaria Fishing
	applyclassicphase(BFA_PHASE_ONE, r(271990, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Fishing Journal
	r(7738),	-- Fishing Poles
}));
DRAENOR_FISHING = applyclassicphase(WOD_PHASE_ONE, i(111356, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	["description"] = "Rewarded for fishing",
	["g"] = {
		r(158743, {	-- Fishing (Draenor Master)
			["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #endif
			["rank"] = 9,
		}),
		applyclassicphase(BFA_PHASE_ONE, r(271664, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Draenor Fishing
		applyclassicphase(BFA_PHASE_ONE, r(271990, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Fishing Journal
		r(7738),	-- Fishing Poles
	},
})));
LEGION_FISHING = applyclassicphase(LEGION_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	r(227511, {	-- Fishing (Legion Master)
		["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1 },
		["collectible"] = false,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(271672, {["timeline"] = {ADDED_8_0_1}})),	-- Legion Fishing
	applyclassicphase(BFA_PHASE_ONE, r(271990, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Fishing Journal
	r(7738),	-- Fishing Poles
}));
SL_FISHING = applyclassicphase(SHADOWLANDS_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	r(310675),	-- Shadowlands Fishing
	r(271990),	-- Fishing Journal
	r(7738),	-- Fishing Poles
}));
DF_FISHING = applyclassicphase(DF_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	r(366253),	-- Dragon Isles Fishing
	r(271990),	-- Fishing Journal
	r(7738),	-- Fishing Poles
	r(393061),	-- Aileron Seamoth School
	r(393060),	-- Cerulean Spinefish School
	r(393064),	-- Islefin Dorado Pool
	r(393067),	-- Magma Thresher Pool
	r(393068),	-- Prismatic Leaper School
	r(393066),	-- Rimefin Tuna Pool
	r(393063),	-- Scalebelly Mackerel
	r(393065),	-- Shimmering Treasure Pool
	r(393062),	-- Temporal Dragonhead School
	r(393059),	-- Thousandbite Pirahna Swarm
}));
TWW_FISHING = bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	r(423336),	-- Khaz Algar Fishing
	r(271990),	-- Fishing Journal
	r(7738),	-- Fishing Poles
	r(454441),	-- Becoming an Algari Angler
	r(456588),	-- Isle of Dorn
	r(456150),	-- What is an Algari Weaverline?
});