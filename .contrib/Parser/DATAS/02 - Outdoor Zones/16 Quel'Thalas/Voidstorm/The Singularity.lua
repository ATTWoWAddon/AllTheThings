---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
		header(HEADERS.Faction, FACTION_THE_SINGULARITY, {
			["icon"] = 7505702,
			["groups"] = {
				faction(FACTION_THE_SINGULARITY),
				n(ACHIEVEMENTS, {
					ach(62265, {	-- The Singularity Champion
						["minReputation"] = { FACTION_THE_SINGULARITY, 20 },
					}),
				}),
				title(753, {	-- <Name>, the Singular
					["minReputation"] = { FACTION_THE_SINGULARITY, 20 },
				}),
				--[[n(QUESTS, sharedData({
					["provider"] = { "n", 248328 },	-- Void Researcher Anomander <Renown Quartermaster>
					["coord"] = { 52.6, 72.9, MAP.MIDNIGHT.VOIDSTORM },
				}, bubbleDownRep(FACTION_THE_SINGULARITY, {
					{		-- RENOWN 1 --
					}, {	-- RENOWN 2 --
					}, {	-- RENOWN 3 --
					}, {	-- RENOWN 4 --
					}, {	-- RENOWN 5 --
					}, {	-- RENOWN 6 --
					}, {	-- RENOWN 7 --
					}, {	-- RENOWN 8 --
					}, {	-- RENOWN 9 --
					}, {	-- RENOWN 10 --
					}, {	-- RENOWN 11 --
					}, {	-- RENOWN 12 --
					}, {	-- RENOWN 13 --
					}, {	-- RENOWN 14 --
					}, {	-- RENOWN 15 --
					}, {	-- RENOWN 16 --
					}, {	-- RENOWN 17 --
					}, {	-- RENOWN 18 --
					}, {	-- RENOWN 19 --
					}, {	-- RENOWN 20 --
						------ Paragon ------
					},
				}))),--]]
				n(VENDORS, {
					n(248328, {	-- Void Researcher Anomander <Renown Quartermaster>
						["coord"] = { 52.6, 72.9, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = bubbleDownRep(FACTION_THE_SINGULARITY, {
							{		-- RENOWN 1 --
							}, {	-- RENOWN 2 --
								i(267604, {	-- Clutches of the Colossal Behemoths
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(267606, {	-- Gloves of Infinite Gravity
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(267607, {	-- Hazy Penumbral Handwraps
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(267605, {	-- Neverending Vortex Grasps
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
							}, {	-- RENOWN 3 --
								i(248964, {	-- Cosmic Void Table (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(264509, {	-- Void Elf Barrel (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(262607, {	-- Void Elf Throne (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
							}, {	-- RENOWN 4 --
								i(266979, {	-- Shawl of the Darkened Collapsed Star
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
								i(263723, {	-- Shawl of the Gilded Collapsed Star
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
								i(266984, {	-- Shawl of the Nebulous Collapsed Star
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
							}, {	-- RENOWN 5 --
								i(262473, {	-- Cosmic Chalice (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(263499, {	-- Sturdy Void Elf Trunk (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(268044, {	-- Formula: Endless Codex of the Voidtouched (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(256758, {	-- Formula: Enchant Tool - Ren'dorei Ingenuity (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(256757, {	-- Formula: Enchant Weapon - Acuity of the Ren'dorei (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(258128, {	-- Pattern: Lush Telogrus Carpet (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.TAILORING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(265534, {	-- Plans: Ren'dorei Anvil (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.BLACKSMITHING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(259459, {	-- Recipe: Potion of Recklessness (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ALCHEMY, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(25800, {	-- Technique: Floating Void-Touched Tome (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.INSCRIPTION, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(263445, {	-- Technique: Contract: The Singularity (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.INSCRIPTION, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
							}, {	-- RENOWN 6 --
								i(258410, {	-- Traditions of the Haranir: Herbalism (CI!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.HERBALISM, 150 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(258411, {	-- Traditions of the Haranir: Inscription (CI!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.INSCRIPTION, 150 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
							}, {	-- RENOWN 7 --
							}, {	-- RENOWN 8 --
								i(264344, {	-- Cosmic Void Orb (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(262462, {	-- Dark Void Inkwell (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(262466, {	-- Void Elf Table (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
							}, {	-- RENOWN 9 --
								i(262645, {	-- Beyond the Event Horizon: Alchemy (CI!)
									["requireSkill"] = ALCHEMY,
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ALCHEMY, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(262644, {	-- Beyond the Event Horizon: Blacksmithing (CI!)
									["requireSkill"] = BLACKSMITHING,
									["cost"] = {
										{ "c", ARTISAN_MOXIE.BLACKSMITHING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(262646, {	-- Beyond the Event Horizon: Engineering (CI!)
									["requireSkill"] = ENGINEERING,
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENGINEERING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
							}, {	-- RENOWN 10 --
								i(266981, {	-- Tabard of the Darkened Collapsed Star
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
								i(263572, {	-- Tabard of the Gilded Collapsed Star
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
								i(266982, {	-- Tabard of the Nebulous Collapsed Star
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
							}, {	-- RENOWN 11 --
							}, {	-- RENOWN 12 --
								i(262463, {	-- Cosmic Void Ashwell (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(264351, {	-- Ornate Void Elf Banner (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(262609, {	-- Void Elf Floating Lantern (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
							}, {	-- RENOWN 13 --
							}, {	-- RENOWN 14 --
								i(263492, {	-- Blitzcreek (PET!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
							}, {	-- RENOWN 15 --
								i(266980, {	-- Pauldrons of the Darkened Collapsed Star
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
								i(263573, {	-- Pauldrons of the Gilded Collapsed Star
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
								i(266983, {	-- Pauldrons of the Nebulous Collapsed Star
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
							}, {	-- RENOWN 16 --
								i(263244, {	-- Enigmatic Fountain (TOY!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 4000 } },
								}),
							}, {	-- RENOWN 17 --
								i(257445, {	-- Ravenous Shredclaw (MOUNT!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 6000 } },
								}),
							}, {	-- RENOWN 18 --
								i(264341, {	-- Cosmic Void Crate (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(264339, {	-- Cosmic Void Summoning Crystal (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(264337, {	-- Cosmic Void Training Dummy (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
								}),
							}, {	-- RENOWN 19 --
								i(260696, {	-- Voidbound Stormray (MOUNT!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 8000 } },
								}),
							}, {	-- RENOWN 20 --
							},
						}),
					}),
				}),
			},
		}),
	}),
}));
