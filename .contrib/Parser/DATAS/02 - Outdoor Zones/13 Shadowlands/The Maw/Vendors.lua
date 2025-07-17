---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local STYGIA = 1767;
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(THE_MAW, {
		n(VENDORS, {
			n(162804, {	-- Ve'nari
				["g"] = bubbleDownRep(FACTION_VENARI, {
					{		-- Dubious
						i(180817, {	-- Cypher of Relocation
							["cost"] = { { "c", STYGIA, 60 } },
						}),
					}, {	-- Apprehensive
						i(184901, {	-- Broker Traversal Enhancer
							["cost"] = { { "c", STYGIA, 875 } },
						}),
						i(184613, {	-- Encased Riftwalker Essence
							["cost"] = { { "c", STYGIA, 1130 } },
						}),
						i(184615, {	-- Extradimensional Pockets
							["cost"] = { { "c", STYGIA, 800 } },
						}),
						i(181245, {	-- Oil of Ethereal Force
							["cost"] = { { "c", STYGIA, 165 } },
						}),
						i(180953, {	-- Soultwinning Scepter
							["cost"] = { { "c", STYGIA, 205 } },
						}),
						i(184620, {	-- Vessel of Unfortunate Spirits
							["cost"] = { { "c", STYGIA, 527 } },
						}),
					}, {	-- Tentative
						i(180949, {	-- Animaflow Stabilizer
							["cost"] = { { "c", STYGIA, 1650 } },
						}),
						i(184653, {	-- Animated Levitating Chain
							["cost"] = { { "c", STYGIA, 1050 } },
						}),
						i(184617, {	-- Bangle of Seniority
							["cost"] = { { "c", STYGIA, 1135 } },
						}),
						i(184651, {	-- Maw-Touched Miasma
							["cost"] = { { "c", STYGIA, 230 } },
						}),
						i(184605, {	-- Sigil of the Unseen
							["cost"] = { { "c", STYGIA, 666 } },
						}),
						i(184664, {	-- Sticky-Fingered Skeletal Hand
							["cost"] = { { "c", STYGIA, 210 } },
						}),
					}, {	-- Ambivalent
						i(183248, {	-- Memory of Jailer's Eye
							["cost"] = { { "c", STYGIA, 4986 } },
						}),
						i(184652, {	-- Phantasmic Infuser
							["cost"] = { { "c", STYGIA, 3760 } },
						}),
						i(184621, {	-- Ritual Prism of Fortune
							["cost"] = { { "c", STYGIA, 1025 } },
						}),
						i(184588, {	-- Soul-Stabilizing Talisman
							["cost"] = { { "c", STYGIA, 775 } },
						}),
					}, {	-- Cordial
						i(184619, {	-- Loupe of Unusual Charm
							["cost"] = { { "c", STYGIA, 1330 } },
						}),
						i(184618, {	-- Rank Insignia: Acquisitionist
							["cost"] = { { "c", STYGIA, 1575 } },
						}),
						i(183870, {	-- Recipe: Crafter's Mark II (RECIPE!)
							["cost"] = { { "c", STYGIA, 300 } },
							["g"] = {
								r(343678, {	-- Crafter's Mark II (RECIPE!)
									["requireSkill"] = ALCHEMY,
								}),
								r(343185, {	-- Crafter's Mark II (RECIPE!)
									["requireSkill"] = BLACKSMITHING,
								}),
								r(343683, {	-- Crafter's Mark II (RECIPE!)
									["requireSkill"] = ENCHANTING,
								}),
								r(343100, {	-- Crafter's Mark II (RECIPE!)
									["requireSkill"] = ENGINEERING,
								}),
								r(343689, {	-- Crafter's Mark II (RECIPE!)
									["requireSkill"] = INSCRIPTION,
								}),
								r(343696, {	-- Crafter's Mark II (RECIPE!)
									["requireSkill"] = JEWELCRAFTING,
								}),
								r(343193, {	-- Crafter's Mark II (RECIPE!)
									["requireSkill"] = LEATHERWORKING,
								}),
								r(343202, {	-- Crafter's Mark II (RECIPE!)
									["requireSkill"] = TAILORING,
								}),
							},
						}),
					}, {	-- Appreciative
						i(185350, {	-- Partial Rune Codex
							["description"] = "Used for the |cFFb19cd9Bound Shadehound|r secret mount. Only available to characters with maxed Ven'ari reputation.",
							["cost"] = { { "c", STYGIA, 2000 } },	-- 2,000x Stygia
							["timeline"] = { ADDED_9_0_5 },
						}),
						i(180952, {	-- Possibility Matrix
							["cost"] = { { "c", STYGIA, 1525 } },
						}),
						i(184870, {	-- Stygia Dowser
							["description"] = "Used for the |cFFb19cd9Bound Shadehound|r secret mount. Only available to characters with maxed Ven'ari reputation.",
							["cost"] = { { "c", STYGIA, 1500 } },
							["timeline"] = { ADDED_9_0_5 },
						}),
						i(184361, {	-- Spatial Realignment Apparatus
							["cost"] = { { "c", STYGIA, 7200 } },
							["timeline"] = { REMOVED_9_1_0 },
						}),
						i(184359, {	-- Unbound Reality Fragment
							["cost"] = { { "c", STYGIA, 1900 } },
							["timeline"] = { REMOVED_9_1_0 },
						}),
					},
				}),
			}),
		}),
	}),
})));