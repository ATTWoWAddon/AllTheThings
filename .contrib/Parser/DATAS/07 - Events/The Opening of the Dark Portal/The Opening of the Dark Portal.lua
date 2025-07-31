--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------
THE_OPENING_OF_THE_DARK_PORTAL = createHeader({
	readable = "The Opening of the Dark Portal",
	icon = 255348,
	text = {
		en = "The Opening of the Dark Portal",
		es = "La apertura del Portal Oscuro",
		de = "Die Öffnung des Dunklen Portals",
		fr = "L'ouverture de la Porte des ténèbres",
		it = "L'apertura del Portale Oscuro",
		pt = "A abertura do Portal Negro",
		ru = "Открытие Темного портала",
		ko = "어둠의 문 열기",
		cn = "开启黑暗之门",
	},
	description = {
		en = "The Opening of the Dark Portal was a one-time event that happened between Prepatch and the launch of TBC and subsequentially removed after. The tabard is the only tabard in the game with the Flex emote built into it and is highly covetted by collectors. Highlord Kruul would spawn randomly outside of the major cities and max level zones of the time.",
	},
});
root(ROOTS.WorldEvents, n(THE_OPENING_OF_THE_DARK_PORTAL,
	applyclassicphase(TBC_PHASE_ONE_DARKPORTAL, bubbleDown({
		-- #if AFTER 2.5.1
		["timeline"] = { REMOVED_2_0_1 },
		-- #else
		-- This is so that it remains available until the end of phase one.
		["timeline"] = { REMOVED_2_5_2 },
		-- #endif
	}, {
		["maps"] = { BLASTED_LANDS },
		["lvl"] = 55,
		["groups"] = {
			q(10259, {	-- Into the Breach
				["qg"] = 19942,	-- Agent Proudwell <The Argent Dawn>
				["coord"] = { 58.25, 55.05, BLASTED_LANDS },
				["lvl"] = 55,
				["groups"] = {
					ach(2079, {	-- Tabard of the Protector
						["provider"] = { "i", 28788 },	-- Tabard of the Protector
					}),
					i(28788),	-- Tabard of the Protector
				},
			}),
		},
	}))
));
