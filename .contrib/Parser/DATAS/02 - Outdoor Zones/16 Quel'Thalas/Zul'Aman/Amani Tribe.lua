---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ZULAMAN, {
		header(HEADERS.Faction, FACTION_AMANI_TRIBE, {
			["icon"] = 7505698,
			["groups"] = {
				faction(FACTION_AMANI_TRIBE),
				n(ACHIEVEMENTS, {
					ach(62263, {	-- Amani Tribe Champion
						["minReputation"] = { FACTION_AMANI_TRIBE, 20 },	-- Amani Tribe, Renown 20
					}),
				}),
				title(740, {	-- Loa-Speaker <Name>
					["minReputation"] = { FACTION_AMANI_TRIBE, 20 },	-- Amani Tribe, Renown 20
				}),
				--[[n(QUESTS, sharedData({
					["provider"] = { "n", 240279 },	-- Magovu <Renown Quartermaster>
					["coord"] = { 45.9, 65.9, MAP.MIDNIGHT.ZULAMAN },
				}, bubbleDownRep(FACTION_AMANI_TRIBE, {
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
					n(240279, {	-- Magovu <Renown Quartermaster>
						["coord"] = { 45.9, 65.9, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = bubbleDownRep(FACTION_AMANI_TRIBE, {
							{		-- RENOWN 1 --
							}, {	-- RENOWN 2 --
								i(250799, {	-- Loa-Blessed Cloak (COSMETIC!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
								i(267642, {	-- Worn Amani Heartstring Pendant
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(267643, {	-- Worn Amani Totemstring
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
							}, {	-- RENOWN 3 --
								i(263320, {	-- Rope-Bound Amani Basket (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(263318, {	-- Simple Amani Basket (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
							}, {	-- RENOWN 4 --
							}, {	-- RENOWN 5 --
								i(256717, {	-- Design: Loa Worshiper's Band (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.JEWELCRAFTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(256744, {	-- Formula: Enchant Tool - Amani Perception (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(256741, {	-- Formula: Enchant Weapon - Strength of Halazzi (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(268043, {	-- Formula: Endless Codex of Nature's Grace (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(256647, {	-- Pattern: Forest Hunter's Armor Kit (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.LEATHERWORKING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(258305, {	-- Recipe: Amani Extract (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ALCHEMY, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(251630, {	-- Recipe: Braised Blood Hunter (RECIPE!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 1500 } },
								}),
								i(251629, {	-- Technique: Contract: The Amani Tribe (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.INSCRIPTION, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
							}, {	-- RENOWN 6 --
								i(250922, {	-- Whisper of the Loa: Leatherworking (CI!)
									["requireSkill"] = LEATHERWORKING,
									["cost"] = {
										{ "c", ARTISAN_MOXIE.LEATHERWORKING, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(250924, {	-- Whisper of the Loa: Mining (CI!)
									["requireSkill"] = MINING,
									["cost"] = {
										{ "c", ARTISAN_MOXIE.MINING, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(250923, {	-- Whisper of the Loa: Skinning (CI!)
									["requireSkill"] = SKINNING,
									["cost"] = {
										{ "c", ARTISAN_MOXIE.SKINNING, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
							}, {	-- RENOWN 7 --
								i(264350, {	-- Carved Idol of Akil'zon, Loa of Victory (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(258290, {	-- Carved Idol of Halazzi, Loa of the Hunt (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(256933, {	-- Carved Idol of Jan'alai, Loa of Fire (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(256927, {	-- Carved Idol of Nalorakk, Loa of War (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
							}, {	-- RENOWN 8 --
							}, {	-- RENOWN 9 --
							}, {	-- RENOWN 10 --
								i(250800, {	-- Loa-Blessed Tabard
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
							}, {	-- RENOWN 11 --
								i(264333, {	-- Amani Incense Burner (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(258549, {	-- Burning Amani Pinecone (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
							}, {	-- RENOWN 12 --
								i(250863, {	-- Naloki (PET!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
								}),
							}, {	-- RENOWN 13 --
								i(250974, {	-- Akil'zon's Updraft (TOY!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 4000 } },
								}),
							}, {	-- RENOWN 14 --
							}, {	-- RENOWN 15 --
								i(256934, {	-- Boiling Amani Cauldron (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(256926, {	-- Empty Amani Cauldron (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(256924, {	-- Hash'ey Heartbroth Cauldron (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
							}, {	-- RENOWN 16 --
								i(250801, {	-- Loa-Blessed Shoulderguards (COSMETIC!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
							}, {	-- RENOWN 17 --
								i(257219, {	-- Amani Blessed Bear (MOUNT!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 6000 } },
								}),
							}, {	-- RENOWN 18 --
								i(260202, {	-- Visage of Akil'zon, Loa of Victory (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
								}),
								i(260515, {	-- Visage of Halazzi, Loa of the Hunt (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
								}),
								i(260516, {	-- Visage of Jan'alai, Loa of Fire (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
								}),
								i(260514, {	-- Visage of Nalorakk, Loa of War (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
								}),
							}, {	-- RENOWN 19 --
								i(250889, {	-- Amani Windcaller (MOUNT!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 8000 } },
								}),
							}, {	-- RENOWN 20 --
								i(250855, {	-- Crown of the Loa-Speaker (COSMETIC!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 5000 } },
								}),
							},
						}),
					}),
				}),
			},
		}),
	}),
}));

--[[root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	header(HEADERS.Faction, FACTION_AMANI_TRIBE, {
		q(),	--
	}),
}));--]]

