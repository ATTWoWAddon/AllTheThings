--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------

THE_OPENING_OF_THE_DARK_PORTAL = createHeader({
	readable = "The Opening of the Dark Portal",
	icon = 255348,
	text = {
		en = "The Opening of the Dark Portal",
		de = "Die Öffnung des Dunklen Portals",
		es = "La apertura del Portal Oscuro",
		mx = "La apertura del Portal Oscuro",
		fr = "L'ouverture de la Porte des ténèbres",
		it = "L'apertura del Portale Oscuro",
		ko = "어둠의 문 열기",
		pt = "A abertura do Portal Negro",
		ru = "Открытие Темного портала",
		cn = "开启黑暗之门",
		-- TODO: tw = "",
	},
	description = {
		en = "The Opening of the Dark Portal was a one-time event that happened between Prepatch and the launch of TBC and subsequentially removed after. The tabard is the only tabard in the game with the Flex emote built into it and is highly covetted by collectors. Highlord Kruul would spawn randomly outside of the major cities and max level zones of the time.",
		es = "La Apertura del Portal Oscuro fue un evento único que tuvo lugar entre el pre-parche y el lanzamiento de TBC, y posteriormente fue eliminado. El tabardo es el único del juego con el gesto cachas incorporado y es muy codiciado por los coleccionistas. El Alto Señor Kruul aparecía aleatoriamente fuera de las principales ciudades y zonas de nivel máximo de la época.",
		mx = "La Apertura del Portal Oscuro fue un evento único que tuvo lugar entre el pre-parche y el lanzamiento de TBC, y posteriormente fue eliminado. El tabardo es el único del juego con el gesto cachas incorporado y es muy codiciado por los coleccionistas. El Alto Señor Kruul aparecía aleatoriamente fuera de las principales ciudades y zonas de nivel máximo de la época.",
		cn = "黑暗之门开启是一次仅发生在《魔兽世界》燃烧的远征（TBC）前夕补丁与正式上线之间的一次性事件，之后便移除了。游戏中，这件公会徽章是唯一内置 “伸展（Flex）” 动作的徽章，深受收藏者觊觎。当时，大领主克鲁尔会随机出现在主要城市外以及满级区域",
	},
});

root(ROOTS.WorldEvents, n(EXPANSION_PRELAUNCH, { expansion(EXPANSION.TBC, { n(THE_OPENING_OF_THE_DARK_PORTAL,
	applyclassicphase(TBC_PHASE_ONE_DARKPORTAL, bubbleDown({
		-- #if ANYCLASSIC
		-- This is so that it remains available until the end of phase one.
		["timeline"] = { REMOVED_TBC_PHASE_TWO },
		-- #else
		["timeline"] = { REMOVED_2_0_1 },
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
)})}));
