--------------
-- SKINNING --
--------------
CLASSIC_SKINNING = {
	r(8613, {	-- Skinning (Apprentice)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 5,
		-- #endif
		["rank"] = 1,
	}),
	r(8617, {	-- Skinning (Journeyman)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 10,
		-- #endif
		["rank"] = 2,
	}),
	r(8618, {	-- Skinning (Expert)
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
	r(10768, {	-- Skinning (Artisan)
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
	r(194174, {["timeline"] = {ADDED_7_0_3}}),	-- Skinning Journal
	applyclassicphase(BFA_PHASE_ONE, r(265855, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Skinning
};
TBC_SKINNING = applyclassicphase(TBC_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_2_0_1 } }, {
	r(32678, {	-- Skinning (Master)
		["timeline"] = { ADDED_2_0_1, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 5,
	}),
	r(194174, {["timeline"] = {ADDED_7_0_3}}),	-- Skinning Journal
	applyclassicphase(BFA_PHASE_ONE, r(265857, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Skinning (Outland)
}));
WRATH_SKINNING = applyclassicphase(WRATH_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_3_0_3 } }, {
	r(50305, {	-- Skinning (Grand Master)
		["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 6,
	}),
	r(53125, {["timeline"] = { ADDED_3_0_3, REMOVED_6_0_2 }}),	-- Master of Anatomy (Apprentice)
	r(53662, {["timeline"] = { ADDED_3_0_3, REMOVED_6_0_2 }}),	-- Master of Anatomy (Journeyman)
	r(53663, {["timeline"] = { ADDED_3_0_3, REMOVED_6_0_2 }}),	-- Master of Anatomy (Expert)
	r(53664, {["timeline"] = { ADDED_3_0_3, REMOVED_6_0_2 }}),	-- Master of Anatomy (Artisan)
	r(53665, {["timeline"] = { ADDED_3_0_3, REMOVED_6_0_2 }}),	-- Master of Anatomy (Master)
	r(53666, {["timeline"] = { ADDED_3_0_3, REMOVED_6_0_2 }}),	-- Master of Anatomy (Grand Master)
	r(194174, {["timeline"] = {ADDED_7_0_3}}),	-- Skinning Journal
	applyclassicphase(BFA_PHASE_ONE, r(265859, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Skinning (Northrend)
}));
CATA_SKINNING = applyclassicphase(CATA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	r(74522, {	-- Skinning (Illustrious)
		["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 7,
	}),
	r(74495, {["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_6_0_2 }}),	-- Master of Anatomy (Cataclysm)
	r(194174, {["timeline"] = {ADDED_7_0_3}}),	-- Skinning Journal
	applyclassicphase(BFA_PHASE_ONE, r(265861, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Skinning (Cataclysm)
}));
CLASSIC_CATA_SKINNING = appendGroups(CLASSIC_SKINNING,
-- #if AFTER CATA
CATA_SKINNING
-- #else
{}
-- #endif
);
MOP_SKINNING = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	r(102216, {	-- Skinning (Zen Master)
		["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 8,
	}),
	r(102219, {["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 }}),	-- Master of Anatomy (Pandaria)
	r(194174, {["timeline"] = {ADDED_7_0_3}}),	-- Skinning Journal
	applyclassicphase(BFA_PHASE_ONE, r(265863, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Skinning (Pandaria)
}));
DRAENOR_SKINNING = applyclassicphase(WOD_PHASE_ONE, i(111351, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	["description"] = "This item can drop while skinning mobs in Draenor.",
	["groups"] = {
		r(158756, {	-- Skinning (Draenor Master)
			["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #endif
			["rank"] = 9,
		}),
		r(194174, {["timeline"] = {ADDED_7_0_3}}),	-- Skinning Journal
		applyclassicphase(BFA_PHASE_ONE, r(265865, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Skinning (Draenor)
	},
})));
BFA_SKINNING = applyclassicphase(BFA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	r(257152),	-- Bone Gathering [Rank 1]
	r(257146),	-- Leather Gathering [Rank 1]
	r(257149),	-- Scale Gathering [Rank 1]
	r(194174),	-- Skinning Journal
}));
NAZJATAR_SKINNING = applyclassicphase(BFA_PHASE_THREE, bubbleDown({ ["timeline"] = { ADDED_8_2_0 } }, {
	r(302014),	-- Cragscale [Rank 1]
	r(302007),	-- Dredged Leather [Rank 1]
}));
SL_SKINNING = applyclassicphase(SL_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	r(308569),	-- Skinning (Shadowlands)
	r(194174),	-- Skinning Journal
}));
DF_SKINNING = bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	r(366259),	-- Skinning (Dragon Isle)
	r(395282),	-- Curious Hide
	r(395706),	-- Dense Hide
	r(392440),	-- Leather Skinning
	r(395700),	-- Lustrous Scaled Hide
	r(396173),	-- Saturated Bone
	r(392445),	-- Scale Skinning
	r(194174),	-- Skinning Journal
});
TWW_SKINNING = bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	r(423342),	-- Khaz Algar Skinning
	r(442566),	-- Gloom Chitin
	r(442567),	-- Stormcharged Leather
	r(194174),	-- Skinning Journal
	r(442569),	-- Sunless Carapace
	r(442572),	-- Thunderous Hide
	r(469989, {["timeline"] = {ADDED_11_0_5}}),	-- Toughened Tempest Pelt
});
