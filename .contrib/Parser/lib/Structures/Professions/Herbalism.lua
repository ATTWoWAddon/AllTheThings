---------------
-- HERBALISM --
---------------
CLASSIC_HERBALISM = {
	r(2383, {	-- Find Herbs [Rank 1]
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 1,
	}),
	r(2366, {	-- Herb Gathering (Apprentice)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 5,
		-- #endif
		["rank"] = 1,
	}),
	r(2368, {	-- Herb Gathering (Journeyman)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 10,
		-- #endif
		["rank"] = 2,
	}),
	r(3570, {	-- Herb Gathering (Expert)
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
	r(11993, {	-- Herb Gathering (Artisan)
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
	r(193290, {["timeline"] = {ADDED_7_0_3}}),	-- Herbalism Journal
	applyclassicphase(BFA_PHASE_ONE, r(265819, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Herb Gathering
};
TBC_HERBALISM = applyclassicphase(TBC_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_2_0_5 } }, {
	r(28695, {	-- Herb Gathering (Master)
		["timeline"] = { ADDED_2_0_5, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 5,
	}),
	r(193290, {["timeline"] = {ADDED_7_0_3}}),	-- Herbalism Journal
	applyclassicphase(BFA_PHASE_ONE, r(265821, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Herb Gathering (Outland)
}));
WRATH_HERBALISM = applyclassicphase(WRATH_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_3_0_3 } }, {
	r(50300, {	-- Herb Gathering (Grand Master)
		["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 6,
	}),
	r(193290, {["timeline"] = {ADDED_7_0_3}}),	-- Herbalism Journal
	applyclassicphase(BFA_PHASE_ONE, r(265823, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Herb Gathering (Northrend)
}));
CATA_HERBALISM = applyclassicphase(CATA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	r(74519, {	-- Herb Gathering (Illustrious)
		["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 7,
	}),
	r(193290, {["timeline"] = {ADDED_7_0_3}}),	-- Herbalism Journal
	applyclassicphase(BFA_PHASE_ONE, r(265825, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Herb Gathering (Cataclysm)
}));
MOP_HERBALISM = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	r(110413, {	-- Herb Gathering (Zen Master)
		["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 8,
	}),
	r(193290, {["timeline"] = {ADDED_7_0_3}}),	-- Herbalism Journal
	applyclassicphase(BFA_PHASE_ONE, r(265827, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Herb Gathering (Pandaria)
}));
DRAENOR_HERBALISM = applyclassicphase(WOD_PHASE_ONE, i(111350, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	["description"] = "This can drop from any herb gathering node on Draenor.",
	["g"] = {
		r(158745, {	-- Herb Gathering (Draenor Master)
			["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #endif
			["rank"] = 9,
		}),
		r(193290, {["timeline"] = {ADDED_7_0_3}}),	-- Herbalism Journal
		applyclassicphase(BFA_PHASE_ONE, r(265829, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Herb Gathering (Draenor)
	},
})));
BFA_HERBALISM = applyclassicphase(BFA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	r(193290),	-- Herbalism Journal
	r(252424),	-- Anchor Weed [Rank 1]
	r(252411),	-- Akunda's Bite [Rank 1]
	r(252405),	-- Riverbud [Rank 1]
	r(252421),	-- Sea Stalk [Rank 1]
	r(252418),	-- Siren's Pollen [Rank 1]
	r(252408),	-- Star Moss [Rank 1]
	r(252415),	-- Winter's Kiss [Rank 1]
}));
NAZJATAR_HERBALISM = applyclassicphase(BFA_PHASE_THREE, bubbleDown({ ["timeline"] = { ADDED_8_2_0 } }, {
	r(298142),	-- Zin'anthid [Rank 1]
}));
SL_HERBALISM = applyclassicphase(SHADOWLANDS_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	r(309780),	-- Herb Gathering (Shadowlands)
	r(193290),	-- Herbalism Journal
}));
DF_HERBALISM = applyclassicphase(DF_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	r(366252),	-- Herb Gathering (Dragon Isles)
	r(193290),	-- Herbalism Journal
	r(395275),	-- Dreambloom
	r(391406),	-- Hochenblume
	r(396171),	-- Infused Pollen
}));
TWW_HERBALISM = bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	r(441327),	-- Herb Gathering (Khaz Algar)
	r(193290),	-- Herbalism Journal
	r(452269),	-- Deepgrove Rose
	r(435811),	-- Mycobloom
});