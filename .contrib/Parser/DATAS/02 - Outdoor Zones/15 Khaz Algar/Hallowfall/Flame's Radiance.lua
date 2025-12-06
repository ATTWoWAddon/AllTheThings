---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(HALLOWFALL, {
		header(HEADERS.Faction, FACTION_FLAMES_RADIANCE, {
			["icon"] = 6694198,
			["timeline"] = { ADDED_11_1_5 },
			["groups"] = {
				faction(FACTION_FLAMES_RADIANCE),
				n(ACHIEVEMENTS, {
					ach(41997),	-- Owner of a Radiant Heart
				}),
				filter(TITLES, {
					title(622, {	-- Sentry <Name>
						["minReputation"] = { FACTION_FLAMES_RADIANCE, 5 },
					}),
					title(628, {	-- Sacred Templar <Name>
						["minReputation"] = { FACTION_FLAMES_RADIANCE, 5 },
					}),
				}),
				n(QUESTS, sharedData({
					["provider"] = { "n", 240852 },	-- Lars Bronsmaelt
					["coord"] = { 28.3, 56.1, HALLOWFALL },
				}, bubbleDownRep(FACTION_FLAMES_RADIANCE, {
					{		-- RENOWN 1 --
						q(89493, {	-- Welcome to the Field
							["groups"] = {
								i(233297),	-- Radiant Recruit's Buckle
								i(233288),	-- Radiant Recruit's Tabard
							},
						}),
					}, {	-- RENOWN 2 --
						q(89349),	-- Flame's Radiance Stipend
					}, {	-- RENOWN 3 --
						q(89390),	-- Flame's Radiance Stipend
					}, {	-- RENOWN 4 --
						q(89398),	-- Carved Crests
						q(89391),	-- Flame's Radiance Stipend
					}, {	-- RENOWN 5 --
						q(89494, {	-- A Frocking Good Job
							["sourceQuest"] = 89493,	-- Welcome to the Field
							["groups"] = {
								i(233298),	-- Radiant Stalwart's Buckle
								i(233289),	-- Radiant Stalwart's Tabard
							},
						}),
						q(89392),	-- Flame's Radiance Stipend
					}, {	-- RENOWN 6 --
						q(89393),	-- Flame's Radiance Stipend
					}, {	-- RENOWN 7 --
						q(89399),	-- Carved Crests
						q(89394),	-- Flame's Radiance Stipend
					}, {	-- RENOWN 8 --
						q(89395),	-- Flame's Radiance Stipend
					}, {	-- RENOWN 9 --
						q(89396),	-- Flame's Radiance Stipend
					}, {	-- RENOWN 10 --
						q(89400),	-- Carved Crests
						q(89496, {	-- Defender of the Sacred Flame
							["sourceQuest"] = 89494,	-- A Frocking Good Job
							["groups"] = {
								i(233299),	-- Sacred Templar's Buckle
								i(233290),	-- Sacred Templar's Tabard
							},
						}),
						q(89397),	-- Flame's Radiance Stipend
						------ Paragon ------
						q(89515, {	-- Renowned with Flame's Radiance
							["isRepeatable"] = true,
							["groups"] = { i(239489) },	-- Radiant Officer's Cache
						}),
					},
				}))),
				n(VENDORS, {
					n(240852, {	-- Lars Bronsmaelt
						["coord"] = { 28.3, 56.2, HALLOWFALL },
						["groups"] = bubbleDownRep(FACTION_FLAMES_RADIANCE, {
							{		-- RENOWN 1 --
								i(245293, {	-- Collection of Arathi Scripture (DECOR!)
									["cost"] = {{ "c", RESONANCE_CRYSTALS, 5200 }},
									["timeline"] = { ADDED_11_2_7 },
								}),
							}, {	-- RENOWN 2 --
								i(238850, {	-- Arathi Entertainer's Flame (TOY!)
									["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
								}),
							}, {	-- RENOWN 3 --
								i(238986, {	-- Mister Mans (PET!)
									["cost"] = {{ "c", RESONANCE_CRYSTALS, 6500 }},
								}),
							}, {	-- RENOWN 4 --
								i(238852, {	-- Flame's Radiance Banner (TOY!)
									["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
								}),
							}, {	-- RENOWN 5 --
							}, {	-- RENOWN 6 --
								i(241188, {	-- Swiftpaw (PET!)
									["cost"] = {{ "c", RESONANCE_CRYSTALS, 6500 }},
								}),
								i(239693, {	-- Radiant Lynx Whistle (TOY!)
									["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
								}),
							}, {	-- RENOWN 7 --
								i(238824, {	-- Radiant Traveler's Backpack (COSMETIC!)
									["cost"] = {{ "c", RESONANCE_CRYSTALS, 3250 }},
								}),
							}, {	-- RENOWN 8 --
								i(238837, {	-- Delver's Dirigible Schematic: Pale Paint (MM!)
									["cost"] = {{ "c", RESONANCE_CRYSTALS, 3250 }},
								}),
								i(238839, {	-- Delver's Dirigible Schematic: Arathi Decal (MM!)
									["cost"] = {{ "c", RESONANCE_CRYSTALS, 2600 }},
								}),
							}, {	-- RENOWN 9 --
								i(238829, {	-- Radiant Imperial Lynx (MOUNT!)
									["cost"] = {{ "c", RESONANCE_CRYSTALS, 8125 }},
								}),
							}, {	-- RENOWN 10 --
								i(237433, {	-- Necklace of the Devout
									["cost"] = {{ "c", RESONANCE_CRYSTALS, 3900 }},
								}),
							},
						}),
					}),
				}),
			},
		}),
	}),
}));
