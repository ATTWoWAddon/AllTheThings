-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
-- Blizzard added the original drops for ONLY the first phase of Cataclysm Classic.
-- #if ANYCLASSIC
local CATA_CLASSIC_WORLD_BOSS_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. CATA_PHASE_ADJUSTED_WORLD_BOSS_LOOT .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. CATA_PHASE_ONE .. [[;
		t.rwp = 40100;
	end
end]];
-- #endif
root(ROOTS.Instances, expansion(EXPANSION.CATA, {
	applyclassicphase(CATA_PHASE_ONE, n(WORLD_BOSSES, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3 }, }, {
		["isRaid"] = true,
		["lvl"] = 85,
		["groups"] = {
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					50063,	-- Akma'hat
					50056,	-- Garr
					50089,	-- Julak-Doom
					50009,	-- Mobus
					50005,	-- Poseidus
					50061,	-- Xariona
				},
				["groups"] = {
					i(67132),	-- Grips of the Failed Immortal
					i(67148),	-- Kilt of Trollish Dreams
					i(67144),	-- Pauldrons of Edward the Odd
					i(67142),	-- Zom's Electrostatic Cloak
					i(67141),	-- Corefire Legplates
					i(67134),	-- Dory's Finery
					i(67147),	-- Je'Tze's Sparkling Tiara
					i(67135),	-- Morrie's Waywalker Wrap
					i(67146),	-- Woundsplicer Handwraps
					i(67133),	-- Dizze's Whirling Robe
					i(67149),	-- Heartbound Tome
					i(67131),	-- Ritssyn's Ruminous Drape
					i(67140),	-- Drape of Inimitable Fate
					i(67150),	-- Arrowsinger Legguards
					i(67145),	-- Blockade's Lost Shield
					i(67143),	-- Icebone Hauberk
					i(67129),	-- Signet of High Arcanist Savor
					i(67130),	-- Dorian's Lost Necklace
				},
			}),
			n(50063, {	-- Akma'hat
				["coord"] = { 38.0, 60.6, ULDUM },
				["isRaid"] = true,
				["groups"] = {
					applyclassicphase(CATA_PHASE_ADJUSTED_WORLD_BOSS_LOOT, i(69877, {	-- Belt of a Thousand Gaping Mouths
						["timeline"] = { ADDED_4_1_0 },
					})),
					i(67240, {	-- Belt of A Thousand Mouths
						["timeline"] = { ADDED_4_0_3, REMOVED_4_1_0 },
						-- #if ANYCLASSIC
						["OnUpdate"] = CATA_CLASSIC_WORLD_BOSS_ONUPDATE,
						-- #endif
					}),
				},
			}),
			n(50056, {	-- Garr
				["coords"] = {
					{ 37.6, 73.4, MOUNT_HYJAL },
					{ 40.4, 81.8, MOUNT_HYJAL },
				},
				["isRaid"] = true,
				["groups"] = {
					applyclassicphase(CATA_PHASE_ADJUSTED_WORLD_BOSS_LOOT, i(69842, {	-- Garr's Reinforced Girdle of Memories
						["timeline"] = { ADDED_4_1_0 },
					})),
					i(67235, {	-- Garr's Girdle of Memories
						["timeline"] = { ADDED_4_0_3, REMOVED_4_1_0 },
						-- #if ANYCLASSIC
						["OnUpdate"] = CATA_CLASSIC_WORLD_BOSS_ONUPDATE,
						-- #endif
					}),
				},
			}),
			n(50089, {	-- Julak-Doom
				["coords"] = {
					{ 51.0, 7.6, TWILIGHT_HIGHLANDS },
					{ 52.2, 10.6, TWILIGHT_HIGHLANDS },
					{ 56.6, 11.0, TWILIGHT_HIGHLANDS },
					{ 57.2, 7.8, TWILIGHT_HIGHLANDS },
					{ 59.8, 6.8, TWILIGHT_HIGHLANDS },
				},
				["isRaid"] = true,
				["groups"] = {
					applyclassicphase(CATA_PHASE_ADJUSTED_WORLD_BOSS_LOOT, i(69844, {	-- Vitreous Beak of Julak-Doom
						["timeline"] = { ADDED_4_1_0 },
					})),
					i(67246, {	-- Beak of Julak-Doom
						["timeline"] = { ADDED_4_0_3, REMOVED_4_1_0 },
						-- #if ANYCLASSIC
						["OnUpdate"] = CATA_CLASSIC_WORLD_BOSS_ONUPDATE,
						-- #endif
					}),
				},
			}),
			n(50009, {	-- Mobus
				["coords"] = {	-- Vashj'ir (Abyssal Depths)
					{ 63.4, 32.6, VASHJIR_ABYSSAL_DEPTHS },
					{ 65.8, 20.4, VASHJIR_ABYSSAL_DEPTHS },
					{ 71.8, 18.4, VASHJIR_ABYSSAL_DEPTHS },
					{ 75.6, 36.6, VASHJIR_ABYSSAL_DEPTHS },
					{ 77.0, 25.4, VASHJIR_ABYSSAL_DEPTHS },
				},
				["isRaid"] = true,
				["groups"] = {
					applyclassicphase(CATA_PHASE_ADJUSTED_WORLD_BOSS_LOOT, i(69843, {	-- Mobus's Dripping Halberd
						["timeline"] = { ADDED_4_1_0 },
					})),
					i(67153, {	-- Mobus's Vile Halberd
						["timeline"] = { ADDED_4_0_3, REMOVED_4_1_0 },
						-- #if ANYCLASSIC
						["OnUpdate"] = CATA_CLASSIC_WORLD_BOSS_ONUPDATE,
						-- #endif
					}),
				},
			}),
			n(50005, {	-- Poseidus
				["coords"] = {
					{ 39.4, 71.9, VASHJIR_ABYSSAL_DEPTHS },
					{ 40.4, 73.8, VASHJIR_ABYSSAL_DEPTHS },
					{ 41.0, 76.6, VASHJIR_ABYSSAL_DEPTHS },
					{ 42.2, 76.0, VASHJIR_ABYSSAL_DEPTHS },
					{ 41.8, 73.4, VASHJIR_ABYSSAL_DEPTHS },
					{ 66.4, 44.2, VASHJIR_SHIMMERING_EXPANSE },
					{ 46.2, 48.6, VASHJIR_SHIMMERING_EXPANSE },
					{ 57.2, 80.8, VASHJIR_SHIMMERING_EXPANSE },
					{ 38.5, 67.0, VASHJIR_SHIMMERING_EXPANSE },
				},
				["maps"] = { VASHJIR },
				["isRaid"] = true,
				["groups"] = {
					i(67151),	-- Subdued Seahorse (MOUNT!)
				},
			}),
			n(50061, {	-- Xariona
				["coords"] = {
					{ 40.6, 52.4, DEEPHOLM },
					{ 45.4, 39.0, DEEPHOLM },
					{ 45.4, 63.8, DEEPHOLM },
					{ 56.6, 42.6, DEEPHOLM },
					{ 57.2, 59.0, DEEPHOLM },
				},
				["isRaid"] = true,
				["groups"] = {
					applyclassicphase(CATA_PHASE_ADJUSTED_WORLD_BOSS_LOOT, i(69876, {	-- Xariona's Spectral Gauntlets
						["timeline"] = { ADDED_4_1_0 },
					})),
					i(67239, {	-- Xariona's Spectral Claws
						["timeline"] = { ADDED_4_0_3, REMOVED_4_1_0 },
						-- #if ANYCLASSIC
						["OnUpdate"] = CATA_CLASSIC_WORLD_BOSS_ONUPDATE,
						-- #endif
					}),
				},
			}),
		},
	}))),
}));
