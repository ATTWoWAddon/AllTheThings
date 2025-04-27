---------------
-- FIRST AID --
---------------
APPRENTICE_JOURNEYMAN_EXPERT_FIRST_AID = bubbleDown({ ["timeline"] = { REMOVED_8_0_1 } }, {
	r(3273, {	-- First Aid (Apprentice)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 5,
		-- #endif
		["rank"] = 1,
	}),
	r(3274, {	-- First Aid (Journeyman)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 10,
		-- #endif
		["rank"] = 2,
	}),
	r(7924, {	-- First Aid (Expert)
		["timeline"] = { ADDED_3_1_0, REMOVED_8_0_1 },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		-- #if SEASON_OF_DISCOVERY
		["OnUpdate"] = [[function(t)
			if _.Settings:GetUnobtainableFilter(]] .. SOD_PHASE_ONE .. [[) then
				t.lvl = 26;
			else
				t.lvl = 20;
			end
		end]],
		-- #endif
		["lvl"] = 20,
		-- #endif
		["rank"] = 3,
	}),
	r(7934),	-- Anti-Venom
	r(3276),	-- Heavy Linen Bandage
	r(3278),	-- Heavy Wool Bandage
	r(3275),	-- Linen Bandage
	r(7928),	-- Silk Bandage
	r(3277),	-- Wool Bandage
});
ARTISAN_FIRST_AID = bubbleDown({ ["timeline"] = { REMOVED_8_0_1 } }, {
	r(10846, {	-- First Aid (Artisan)
		["timeline"] = { ADDED_3_1_0, REMOVED_8_0_1 },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		-- #if SEASON_OF_DISCOVERY
		["OnUpdate"] = [[function(t)
			if _.Settings:GetUnobtainableFilter(]] .. SOD_PHASE_ONE .. [[) then
				t.lvl = 41;
			else
				t.lvl = 35;
			end
		end]],
		-- #endif
		["lvl"] = 35,
		-- #endif
		["rank"] = 4,
	}),
	r(10841),	-- Heavy Mageweave Bandage
	r(18630),	-- Heavy Runecloth Bandage
	r(7929, {["timeline"] = {ADDED_3_1_0, REMOVED_8_0_1}}),	-- Heavy Silk Bandage
	r(10840, {["timeline"] = {ADDED_3_1_0, REMOVED_8_0_1}}),	-- Mageweave Bandage
	r(18629),	-- Runecloth Bandage
});
CLASSIC_FIRST_AID = appendGroups(APPRENTICE_JOURNEYMAN_EXPERT_FIRST_AID,
-- #if AFTER 3.1.0
ARTISAN_FIRST_AID
-- #else
	{}
-- #endif
);
TBC_FIRST_AID = applyclassicphase(TBC_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_3_1_0, REMOVED_8_0_1 } }, {
	r(27028, {	-- First Aid (Master)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 50,
		-- #endif
		["rank"] = 5,
	}),
	r(27033, {["timeline"] = {ADDED_3_1_0, REMOVED_8_0_1}}),	-- Heavy Netherweave Bandage
	r(27032, {["timeline"] = {ADDED_3_1_0, REMOVED_8_0_1}}),	-- Netherweave Bandage
}));
WRATH_FIRST_AID = applyclassicphase(WRATH_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1 } }, {
	r(45542, {	-- First Aid (Grand Master)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 65,
		-- #endif
		["rank"] = 6,
	}),
	r(45545),	-- Frostweave Bandage
}));
CATA_FIRST_AID = applyclassicphase(CATA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_8_0_1 } }, {
	r(74559, {	-- First Aid (Illustrious)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 7,
	}),
	r(88893),	-- Dense Embersilk Bandage
	r(74556),	-- Embersilk Bandage
	r(74558),	-- Field Bandage: Dense Embersilk
	r(74557),	-- Heavy Embersilk Bandage
}));
MOP_FIRST_AID = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 } }, {
	r(110406, {	-- First Aid (Zen Master)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 8,
	}),
	r(102698),	-- Heavy Windwool Bandage
	r(102697),	-- Windwool Bandage
	n(DISCOVERY, {
		r(102699),	-- Heavy Windwool Bandage [Efficent]
	}),
}));
DRAENOR_FIRST_AID = applyclassicphase(WOD_PHASE_ONE, i(111364, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_8_0_1 } }, {
	["g"] = {
		r(158741, {	-- First Aid (Draenor Master)
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #endif
			["rank"] = 9,
		}),
		r(172539),	-- Antiseptic Bandage
		r(172541),	-- Blackwater Anti-Venom
		r(172542),	-- Fire Ammonite Oil
		r(172540),	-- Healing Tonic
	},
})));
LEGION_FIRST_AID = applyclassicphase(LEGION_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 } }, {
	r(195113, {	-- First Aid (Legion Master)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 10,
	}),
	r(211926),	-- Set Bone
	r(202853),	-- Silkweave Bandage
	r(202854),	-- Silkweave Splint
	r(221690),	-- Silvery Salve
	r(211696),	-- Stabilize
	r(212067),	-- Treat Burns
	r(211353),	-- Treat Fever
}));