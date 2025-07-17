---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end
DF_RARE_ROTATION = createHeader({
	readable = "DF Rare Rotation",
	icon = 237274,
	text = {
		en = "DF Rare Rotation",
		fr = "Rotation Rare de DF",
		ru = "Редкие DF по расписанию",
		cn = "巨龙时代稀有轮换",
	},
});
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(RARES, {
		n(DF_RARE_ROTATION, {
			-- #if BEFORE 10.1.7
			["description"] = "Every 30 minutes 1 rare will spawn, based on a fixed 14h rotation, and they will be marked with a skull on the map if you are in the respective zone.\n\nRotation: |cFFFFFFFF1. |rPhleep |cFFFFFFFF2. |rMagmaton |cFFFFFFFF3. |rGruffy |cFFFFFFFF4. |rRonsak |cFFFFFFFF5. |rRiverwalker Tamopo |cFFFFFFFF6. |rAmethyzar |cFFFFFFFF7. |rEldoren the Reborn\n\n|cFFFFFFFF8. |rPenumbrus |cFFFFFFFF9. |rSkag the Thrower |cFFFFFFFF10. |rMikrin |cFFFFFFFF11. |rRokmur |cFFFFFFFF12. |rSmogswog |cFFFFFFFF13. |rMatriarch Remalla |cFFFFFFFF14. |rO'nank Shorescour\n\n|cFFFFFFFF15. |rResearcher Sneakwing |cFFFFFFFF16. |rTreasure-Mad Trambladd |cFFFFFFFF17. |rHarkyn Grymstone |cFFFFFFFF18. |rFulgurb |cFFFFFFFF19. |rSandana the Tempest |cFFFFFFFF20. |rGorjo the Crab Shackler |cFFFFFFFF21. |rSteamgill\n\n|cFFFFFFFF22. |rTempestrian |cFFFFFFFF23. |rMassive Magmashell |cFFFFFFFF24. |rGrumbletrunk |cFFFFFFFF25. |rOshigol |cFFFFFFFF26. |rBroodweaver Araznae |cFFFFFFFF27. |rAzra's Prized Peony |cFFFFFFFF28. |rMalsegan\n\nExample: Phleep spawned at 8am. Rokmur would spawn at 1pm. Phleep's next spawn would be at 10pm.",
			-- #else
			["description"] = "When a zone has the week long Dreamsurge Event active, the 'Mob Timing Rules' for that specific zone are no longer valid & any rare for that zone can spawn at any given time.\n\nEvery 30 minutes 1 rare will spawn, based on a fixed 14h rotation, and they will be marked with a skull on the map if you are in the respective zone.\n\nRotation: |cFFFFFFFF1. |rPhleep |cFFFFFFFF2. |rMagmaton |cFFFFFFFF3. |rGruffy |cFFFFFFFF4. |rRonsak |cFFFFFFFF5. |rRiverwalker Tamopo |cFFFFFFFF6. |rAmethyzar |cFFFFFFFF7. |rEldoren the Reborn\n\n|cFFFFFFFF8. |rPenumbrus |cFFFFFFFF9. |rSkag the Thrower |cFFFFFFFF10. |rMikrin |cFFFFFFFF11. |rRokmur |cFFFFFFFF12. |rSmogswog |cFFFFFFFF13. |rMatriarch Remalla |cFFFFFFFF14. |rO'nank Shorescour\n\n|cFFFFFFFF15. |rResearcher Sneakwing |cFFFFFFFF16. |rTreasure-Mad Trambladd |cFFFFFFFF17. |rHarkyn Grymstone |cFFFFFFFF18. |rFulgurb |cFFFFFFFF19. |rSandana the Tempest |cFFFFFFFF20. |rGorjo the Crab Shackler |cFFFFFFFF21. |rSteamgill\n\n|cFFFFFFFF22. |rTempestrian |cFFFFFFFF23. |rMassive Magmashell |cFFFFFFFF24. |rGrumbletrunk |cFFFFFFFF25. |rOshigol |cFFFFFFFF26. |rBroodweaver Araznae |cFFFFFFFF27. |rAzra's Prized Peony |cFFFFFFFF28. |rMalsegan\n\nExample: Phleep spawned at 8am. Rokmur would spawn at 1pm. Phleep's next spawn would be at 10pm.",
			-- #endif
			["g"] = sharedData({
				["isDaily"] = true,
			},{
				-- Ohn ahran Plains
				n(193170, {	-- Fulgurb
					["coord"] = { 74.4, 47.6, OHNAHRAN_PLAINS },
					["questID"] = 73994,
					["g"] = {
						bo(69856, true),
						i(200433),	-- Footwraps of Subjugation
					},
				}),
				n(193212, {	-- Malsegan
					["coord"] = { 72.2, 44.8, OHNAHRAN_PLAINS },
					["questID"] = 74011,
					["g"] = {
						bo(69871, true),
						i(200197),	-- Armoredon Herding Crook
					},
				}),
				n(193173, {	-- Mikrin of the Raging Winds
					["coord"] = { 62.8, 79.8, OHNAHRAN_PLAINS },
					["questID"] = 74015,
					["g"] = {
						bo(69857, true),
						i(200542),	-- Breezy Companion
					},
				}),
				n(193235, {	-- Oshigol
					["coord"] = { 60.8, 26.8, OHNAHRAN_PLAINS },
					["questID"] = 74018,
					["g"] = {
						bo(69877, true),
					},
				}),
				n(196010, {	-- Researcher Sneakwing <The Sundered Flame>
					["coord"] = { 37.3, 53.9, OHNAHRAN_PLAINS },
					["questID"] = 74023,
					["g"] = {
						bo(70698, true),
					},
				}),
				n(193227, {	-- Ronsak the Decimator
					["coord"] = { 43.3, 55.2, OHNAHRAN_PLAINS },
					["questID"] = 74026,
					["g"] = {
						bo(69878, true),
					},
				}),
				n(193123, {	-- Steamgill
					["coord"] = { 53.6, 72.8, OHNAHRAN_PLAINS },
					["questID"] = 74034,
					["g"] = {
						bo(69667, true),
						i(200216),	-- Water Heating Cord
					},
				}),
				-- Thaldraszus
				n(193220, {	-- Broodweaver Araznae <Mother of Spiders>
					["coord"] = { 59.6, 70.1, THALDRASZUS },
					["questID"] = 73987,
					["g"] = {
						bo(69868, true),
						i(200147),	-- Web-Woven Robe
					},
				}),
				n(193234, {	-- Eldoren the Reborn <Jewel of the Skies>
					["coord"] = { 49.0, 51.0, THALDRASZUS },
					["questID"] = 73990,
					["g"] = {
						bo(69875, true),
						i(200284),	-- Phoenix Feather Pendant
					},
				}),
				n(193246, {	-- Matriarch Remalla <Temple Menace>
					["coord"] = { 52.6, 59.2, THALDRASZUS },
					["questID"] = 74013,
					["g"] = {
						bo(69883, true),
						i(200257),	-- Decay-Infused Branch
					},
				}),
				n(193210, {	-- Phleep <Time-Lost, Mind-Lost>
					["coord"] = { 57.2, 84.2, THALDRASZUS },
					["questID"] = 74021,
					["g"] = {
						bo(69866, true),
					},
				}),
				n(193240, {	-- Riverwalker Tamopo <Terror of the Shallows>
					["coord"] = { 39.8, 70.0, THALDRASZUS },
					["questID"] = 74024,
					["g"] = {
						bo(69880, true),
					},
				}),
				n(193666, {	-- Rokmur
					["coord"] = { 50.0, 51.8, THALDRASZUS },
					["questID"] = 74025,
					["g"] = {
						bo(69966, true),
					},
				}),
				n(193176, {	-- Sandana the Tempest <Timesand Thief>
					["coord"] = { 37.4, 77.9, THALDRASZUS },
					["questID"] = 74029,
					["g"] = {
						bo(69859, true),
					},
				}),
				n(193258, {	-- Tempestrian <Stormbringer>
					["coord"] = { 48.8, 79.4, THALDRASZUS },
					["questID"] = 74035,
					["g"] = {
						bo(69886, true),
						i(200139),	-- Tempest Arc
					},
				}),
				n(193146, {	-- Treasure-Mad Trambladd
					["coord"] = { 35.0, 70.0, THALDRASZUS },
					["questID"] = 74036,
					["g"] = {
						bo(70947, true),
						i(196994),	-- Cliffside Wylderdrake: Short Horns (MM!)
						i(200300),	-- Sack of Looted Treasures
						i(200291),	-- Waterlogged Racing Grips
					},
				}),
				-- The Azure Spawn
				n(193251, {	-- Gruffy
					["coord"] = { 32.7, 29.2, THE_AZURE_SPAN },
					["questID"] = 69885,
					["g"] = {
						bo(74001, true),
						i(200755),	-- Gruffy's Dented Horn
					},
				}),
				n(193269, {	-- Grumbletrunk
					["coord"] = { 19.3, 43.1, THE_AZURE_SPAN },
					["questID"] = 74002,
					["g"] = {
						bo(69892, true),
						i(200206),	-- Behemoth Slayer Greatbow
					},
				}),
				n(193149, {	-- Skag the Thrower
					["coord"] = { 26.7, 49.0, THE_AZURE_SPAN },
					["questID"] = 74030,
					["g"] = {
						bo(72154, true),
						i(200279),	-- Competitive Throwing Gauntlets
					},
				}),
				-- The Waking Shores
				n(193132, {	-- Amethyzar the Glittering
					["coord"] = { 63.4, 54.8, THE_WAKING_SHORES },
					["questID"] = 73981,
					["g"] = {
						bo(69838, true),
						i(200156),	-- Amethyzarite Geode
					},
				}),
				n(193135, {	-- Azra's Prized Peony
					["coord"] = { 54.9, 71.1, THE_WAKING_SHORES },
					["questID"] = 73984,
					["g"] = {
						bo(69839, true),
						i(200229),	-- Slightly Digested Leggings
					},
				}),
				n(193226, {	-- Gorjo the Crab Shackler
					["crs"] = { 193228 },	-- Snappy
					["coord"] = { 78.6, 50.0, THE_WAKING_SHORES },
					["questID"] = 73997,
					["g"] = {
						bo(69874, true),
						i(200281),	-- Gorjo's Riding Crop
					},
				}),
				n(186200, {	-- Harkyn Grymstone
					["crs"] = {
						186201,	-- Groth
						186203,	-- Snee
						186202,	-- Voll
					},
					["coord"] = { 42.1, 39.5, THE_WAKING_SHORES },
					["questID"] = 74003,
					["g"] = {
						i(200171),	-- Grymheart Blade
						i(197131),	-- Highland Drake: Hairy Cheek (MM!)
						i(200175),	-- Repurposed Anvil
						i(200243),	-- Titanic Scholar's Finery
					},
				}),
				n(186827, {	-- Magmaton
					["coord"] = { 40.0, 64.5, THE_WAKING_SHORES },
					["questID"] = 74010,
					["g"] = {
						bo(70979, true),
					},
				}),
				n(193152, {	-- Massive Magmashell
					["coord"] = { 21.7, 76.2, THE_WAKING_SHORES },
					["questID"] = 74012,
					["g"] = {
						bo(69848, true),
						i(200192),	-- Handheld Geyser
					},
				}),
				n(193118, {	-- O'nank Shorescour
					["coord"] = { 82.2, 49.4, THE_WAKING_SHORES },
					["questID"] = 74017,
					["g"] = {
						bo(70983, true),
					},
				}),
				n(189289, {	-- Penumbrus
					["description"] = "Spawns underground.",
					["coord"] = { 24.4, 54.5, THE_WAKING_SHORES },
					["questID"] = 74019,
					["g"] = {
						bo(70212, true),
						i(200144),	-- Band of the Unscalable
					},
				}),
				n(193120, {	-- Smogswog the Firebreather
					["coord"] = { 69.0, 64.8, THE_WAKING_SHORES },
					["questID"] = 74031,
					["g"] = {
						bo(69668, true),
						i(200209),	-- Firebreather's Cowl
					},
				}),
			}),
		}),
	}),
})));
