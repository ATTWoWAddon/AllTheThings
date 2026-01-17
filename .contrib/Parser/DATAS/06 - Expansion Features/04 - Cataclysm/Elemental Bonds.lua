---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
ELEMENTAL_BONDS = createHeader({
	readable = "Elemental Bonds",
	icon = 516313,
	text = {
		en = "Elemental Bonds",
		de = "Elementare Bande",
		es = "Vínculos Elementales",
		-- TODO: mx = "",
		fr = "Liens élémentaires",
		it = "Legami Elementali",
		ko = "정령의 속박",
		pt = "Prisão Elemental",
		ru = "Власть стихий",
		cn = "元素誓约",
		tw = "元素桎梏",
	},
	description = {
		en = "The Elemental Bonds questline is an epic series of quests to restore Thrall to his former self after Majordomo Staghelm splits him into 4 essences of elements.",
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.CATA, applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, {
	n(ELEMENTAL_BONDS, bubbleDownSelf({ ["timeline"] = { ADDED_4_2_0 } }, {
		["lvl"] = lvlsquish(85, 32, 32),
		["groups"] = {
			q(29328, {	-- Elemental Bonds: Desire
				["sourceQuest"] = 29336,	-- Into Coaxing Tides
				["qg"] = 53652,	-- Aggra
				["coord"] = { 69.8, 34.2, VASHJIR_ABYSSAL_DEPTHS },
			}),
			q(29327, {	-- Elemental Bonds: Doubt
				["sourceQuest"] = 29335,	-- Into Slashing Winds
				["qg"] = 53524,	-- Cyclonas
				["coord"] = { 47.7, 88.9, ULDUM },
			}),
			q(29330, {	-- Elemental Bonds: Fury
				["sourceQuest"] = 29338,	-- Into Unrelenting Flame
				["qg"] = 53925,	-- Aggra
				["coord"] = { 51.4, 25.7, THE_MOLTEN_FRONT },
			}),
			q(29329, {	-- Elemental Bonds: Patience
				["sourceQuest"] = 29337,	-- Into Constant Earth
				["qg"] = 53738,	-- Aggra
				["coord"] = { 56.5, 12.4, DEEPHOLM },
			}),
			q(29331, {	-- Elemental Bonds: The Vow
				["sourceQuest"] = 29330,	-- Elemental Bonds: Fury
				["qg"] = 54168,	-- Thrall
				["coord"] = { 51.4, 25.7, THE_MOLTEN_FRONT },
				["groups"] = {
					i(71268),	-- Mantle of Doubt
					i(71267),	-- Mantle of Desire
					i(71270),	-- Mantle of Patience
					i(71269),	-- Mantle of Fury
				},
			}),
			q(29336, {	-- Into Coaxing Tides
				["sourceQuest"] = 29327,	-- Elemental Bonds: Doubt
				["qg"] = 53519,	-- Aggra
				["coord"] = { 34.3, 77.6, ULDUM },
				["maps"] = { VASHJIR_ABYSSAL_DEPTHS },
			}),
			q(29337, {	-- Into Constant Earth
				["sourceQuest"] = 29328,	-- Elemental Bonds: Desire
				["qg"] = 53652,	-- Aggra
				["coord"] = { 69.8, 34.2, VASHJIR_ABYSSAL_DEPTHS },
				["maps"] = { DEEPHOLM },
			}),
			q(29335, {	-- Into Slashing Winds
				["sourceQuest"] = 29326,	-- The Nordrassil Summit
				["qg"] = 54312,	-- Aggra
				["coord"] = { 60.2, 30.1, MOUNT_HYJAL },
				["maps"] = { ULDUM },
			}),
			q(29338, {	-- Into Unrelenting Flame
				["sourceQuest"] = 29329,	-- Elemental Bonds: Patience
				["qg"] = 53738,	-- Aggra
				["coord"] = { 64.0, 46.0, DEEPHOLM },
			}),
			q(29439, {	-- The Call of the World-Shaman (A)
				["qg"] = 45226,	-- Naraat the Earthspeaker
				["coord"] = { 74.4, 18.8, STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(29440, {	-- The Call of the World-Shaman (H)
				["qg"] = 45244,	-- Farseer Krogar
				["coord"] = { 50.4, 38.2, ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(29437, {	-- The Fallen Guardian
				["sourceQuest"] = 29326,	-- The Nordrassil Summit
				["qg"] = 40289,	-- Ysera
				["coord"] = { 62.0, 24.9, MOUNT_HYJAL },
				["groups"] = {
					objective(1, {	-- 0/1 Alysra slain
						["provider"] = { "n", 54314 },	-- Alysra
						["coord"] = { 49.0, 19.4, MOUNT_HYJAL },
					}),
				},
			}),
			q(29326, {	-- The Nordrassil Summit
				["sourceQuests"] = {
					29439,	-- The Call of the World-Shaman (A)
					29440,	-- The Call of the World-Shaman (H)
				},
				["qg"] = 54313,	-- Thrall
				["coord"] = { 60.6, 31.4, MOUNT_HYJAL },
				["groups"] = {
					n(54313, {
						["description"] = "Ignore Thrall if you are doing the initial quests around Nordrassil, he will become relevant later in the story.",
					}),
				},
			}),
		},
	})),
})));
