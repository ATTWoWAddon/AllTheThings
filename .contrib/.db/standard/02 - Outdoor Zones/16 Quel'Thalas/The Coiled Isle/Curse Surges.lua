---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

CURSE_SURGES = createHeader({
	readable = "Curse Surges",
	icon = 5764921,
	text = {
		en = "Curse Surges",
		de = "Fluchwellen",
		es = "Oleadas Malditas",
		mx = "Oleadas de Maldición",
		fr = "Vagues de Malédiction",
		it = "Scariche di Maledizione",
		ko = "저주받은 쇄도",
		pt = "Surtos Malditos",
		ru = "Проклятых Натисков",
		cn = "诅咒狂潮",
		tw = "詛咒狂湧"
	},
	description = {
		en = "Curse Surges are outdoor events that require players to complete an activity in order to summon a Rare Elite enemy.",
		cn = "诅咒狂潮是户外事件，玩家需要完成一项活动才能召唤出一名稀有精英敌人。",
	},
});

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		n(CURSE_SURGES, {
			n(ACHIEVEMENTS, {
				ach(63381, {	-- Cursebreaker
					title(777),	-- <Name> the Cursebreaker
				}),
				ach(63390),	-- Turn the Surge
			}),
			header(HEADERS.Achievement, 63381,	-- Cursebreaker
			bubbleDownFiltered({["isDaily"] = true },FILTERFUNC_questID,{
				n(255088, {	-- Looming Mutagenitor
					["coord"] = { 26.6, 64.9, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 93718,
					["groups"] = {
						i(276172),	-- Headdress of Mutagenesis
						i(276166),	-- Twin-Headed Twinblade
						hqt_bonusRenown(96966, FACTION_ZULJARRAS_FORCES),    -- Bonus Rep: Looming Mutagenitor
					},
				}),
				n(255087, {	-- Malformed Leviathan
					["coord"] = { 47.0, 62.2, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 93673,
					["groups"] = {
						i(276174),	-- Leviathan's Oozing Scalemail
						i(276169),	-- Malformed Barrier
						hqt_bonusRenown(96970, FACTION_ZULJARRAS_FORCES),    -- Bonus Rep: Malformed Leviathan
					},
				}),
				n(258254, {	-- Ss'akrithos <The Boundless Ophidian>
					["coord"] = { 71.3, 31.4, MAP.MIDNIGHT.THE_COILED_ISLE },
					["crs"] = { 258250 },	-- Vignette
					["questID"] = 93715,
					["groups"] = {
						i(276168),	-- Fang of Ss'akrithos
						i(276171),	-- Ophidian Circle
						hqt_bonusRenown(96968, FACTION_ZULJARRAS_FORCES),    -- Bonus Rep: Ss'akrithos
					},
				}),
				n(257863, {	-- Vassti, the Exalted Broodmother
					["coord"] = { 45.2, 28.6, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 93676,
					["groups"] = {
						i(276175),	-- Broodmother's Embrace
						i(276173),	-- Clutchguard Sandals
						hqt_bonusRenown(96967, FACTION_ZULJARRAS_FORCES),    -- Bonus Rep: Vassti, the Exalted Broodmother
					},
				}),
				n(255927, {	-- Venom Lancer Ori'kassi
					["coord"] = { 67.6, 77.8, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 93722,
					["groups"] = {
						i(276167),	-- Ori'kassi's Lance
						i(276178),	-- Venom Lancer's Gauntlets
						hqt_bonusRenown(96969, FACTION_ZULJARRAS_FORCES),    -- Bonus Rep: Venom Lancer Ori'kassi
					},
				}),
				n(EVENT_COMPLETION, {
					i(273000),	-- Corrosive Soul
					i(275899),	-- Venom-Soaked Satchel
					i(277137, {	-- Wriggling Venom-Soaked Satchel
						i(276234),	-- Vibrant Venomfang (PET!)
					}),
				}),
			})),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.THE_COILED_ISLE, {
			n(CURSE_SURGES, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
				n(RARES, {
					q(97333),	-- Can be triggered from any of the Cursed Surge bosses
				}),
			})),
		}),
	}),
}));
