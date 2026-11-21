-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local COMPREHENSION_HEADER = createHeader({
	readable = "Comprehension",
	icon = 135933,
	text = {
		en = "Comprehension",
		de = "Verständnis",
		es = "Comprensión",
		mx = "Comprensión",
		fr = "Compréhension",
		it = "Comprensione",
		ko = "이해력",
		pt = "Compreensão",
		ru = "Понимание",
		cn = "理解",
		tw = "理解",
	},
});
root(ROOTS.ExpansionFeatures, {
	n(COMPREHENSION_HEADER, {
		classes = { MAGE },
		timeline = { TIMELINE.ADDED_1_60_1 },
		groups = {
			n(REWARDS, {
				n(createHeader({	-- Tier 1
					readable = "Comprehension - Tier 1",
					icon = 134937,
					text = {
						en = "Tier 1",
						de = "Stufe 1",
						es = "Nivel 1",
						mx = "Nivel 1",
						fr = "Étage 1",
						it = "Livello 1",
						ko = "층 1",
						pt = "Nível 1",
						ru = "Уровень 1",
						cn = "等级1",
						tw = "等級 1",
					},
				}), {
					cost = {
						{ "i", 211779, 1 },	-- Comprehension Charm
						{ "i", 211785, 1 },	-- Scroll: CWAL
						{ "i", 211786, 1 },	-- Scroll: CHAP BALK WELLES
						{ "i", 211787, 1 },	-- Scroll: LOWER PING WHOMEVER
						{ "i", 211780, 1 },	-- Scroll: KWYJIBO
					},
					groups = {
						i(3012),	-- Scroll of Agility
						i( 955),	-- Scroll of Intellect
						i(3013),	-- Scroll of Protection
						i(1181),	-- Scroll of Spirit
						i(1180),	-- Scroll of Stamina
						i( 954),	-- Scroll of Strength
						i(211800, {	-- Scroll of Reintegration
							description = "Consumed on use.",
							classes = { MAGE },
						}),
					},
				}),
				n(createHeader({	-- Tier 2
					readable = "Comprehension - Tier 2",
					icon = 237449,
					text = {
						en = "Tier 2",
						de = "Stufe 2",
						es = "Nivel 2",
						mx = "Nivel 2",
						fr = "Étage 2",
						it = "Livello 2",
						ko = "층 2",
						pt = "Nível 2",
						ru = "Уровень 2",
						cn = "等级2",
						tw = "等級 2",
					},
				}), {
					cost = {
						{ "i", 211779, 1 },	-- Comprehension Charm
						{ "i", 211854, 1 },	-- Scroll: OMIT KESA
						{ "i", 211853, 1 },	-- Scroll: VOCE WELL
						{ "i", 211784, 1 },	-- Scroll: WUBBA WUBBA
						{ "i", 211855, 1 },	-- Scroll: STHENIC LUNATE
					},
					groups = {
						i(211800, {	-- Scroll of Reintegration
							description = "Consumed on use.",
							classes = { MAGE },
						}),
						i(1712),	-- Scroll of Spirit II
						i(1478),	-- Scroll of Protection II
						i(211954, {	-- Scroll of Arcane Accuracy I
							classes = { MAGE },
						}),
						i(211953, {	-- Scroll of Arcane Recovery I
							classes = { MAGE },
						}),
						i(211957, {	-- Scroll of Arcane Power I
							classes = { MAGE },
						}),
						i(211955, {	-- Scroll of Arcane Protection - Fire I
							classes = { MAGE },
						}),
						i(211956, {	-- Scroll of Arcane Protection - Frost I
							classes = { MAGE },
						}),
					},
				}),
				n(createHeader({	-- Tier 3
					readable = "Comprehension - Tier 3",
					icon = 237446,
					text = {
						en = "Tier 3",
						de = "Stufe 3",
						es = "Nivel 3",
						mx = "Nivel 3",
						fr = "Étage 3",
						it = "Livello 3",
						ko = "층 3",
						pt = "Nível 3",
						ru = "Уровень 3",
						cn = "等级3",
						tw = "等級 3",
					},
				}), {
					cost = {
						{ "i", 211779, 1 },	-- Comprehension Charm
						{ "i", 213545, 1 },	-- Scroll: PEATCHY ATTAX
						{ "i", 213546, 1 },	-- Scroll: SHOOBEEDOOP
						{ "i", 213547, 1 },	-- Scroll: THAW WORDS
						{ "i", 213544, 1 },	-- Scroll: TOPAZ YORAK
						{ "i", 213543, 1 },	-- Scroll: UPDOG
					},
					groups = {
						i(217496, {	-- Scroll of the Blade
							cost = { { "i", 7714, 1 } },	-- Hypnotic Blade
							classes = { MAGE },
							groups = {
								i(217497),	-- Narpas Sword
							},
						}),
						i(213548, {	-- Scroll of Liminal Passage
							classes = { MAGE },
						}),
						i(215257, {	-- Scroll of Comprehension
							classes = { MAGE },
						}),
						i(217495, {	-- Scroll of Cryoblast
							classes = { MAGE },
						}),
						i(213550, {	-- Scroll of Polymorph: Odd Melon
							classes = { MAGE },
						}),
						i(220792),	-- Scroll of Spatial Mending
					},
				}),
			}),
		},
	}),
});