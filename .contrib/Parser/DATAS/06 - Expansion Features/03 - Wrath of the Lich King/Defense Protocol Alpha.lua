---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if ANYCLASSIC
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_TWO, {
	n(DEFENSE_PROTOCOL_ALPHA, bubbleDownSelf({ ["timeline"] = { ADDED_3_4_1 } }, {
		["lvl"] = 80,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(17304, {	-- Defense Protocol Alpha: Terminated
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						17291,	-- Defense Protocol Alpha: Ahn'kahet: The Old Kingdom
						17285,	-- Defense Protocol Alpha: Azjol-Nerub
						17292,	-- Defense Protocol Alpha: Drak'Tharon Keep
						17295,	-- Defense Protocol Alpha: Gundrak
						17299,	-- Defense Protocol Alpha: Halls of Lightning
						17297,	-- Defense Protocol Alpha: Halls of Stone
						17302,	-- Defense Protocol Alpha: The Culling of Stratholme
						17283,	-- Defense Protocol Alpha: The Nexus
						17300,	-- Defense Protocol Alpha: The Oculus
						17293,	-- Defense Protocol Alpha: The Violet Hold
						17213,	-- Defense Protocol Alpha: Utgarde Keep
						17301,	-- Defense Protocol Alpha: Utgarde Pinnacle
					}},
				}),
			}),
			n(COMMON_BOSS_DROPS, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(
					394435, 412991, 424196,	-- Arcane Rune Buffs
					394438, 413169, 424203,	-- Blood Rune Buffs
					392430, 412770, 424194,	-- Frost Rune Buffs
					394444, 412867, 424210,	-- Plague Rune Buffs
					394437, 412470, 424201,	-- Shadow Rune Buffs
					394441, 413078, 424205	-- Titan Rune Buffs
				),
				["description"] = "Defeating the final boss encounter on Defense Protocol Alpha will reward 1 Emblem of Conquest and can also drop T7 tokens for helm, spaulders, and leggings.",
				["maps"] = {
					AHNKAHET_THE_OLD_KINGDOM,
					AZJOL_NERUB, AZJOL_NERUB_FLOOR2, AZJOL_NERUB_FLOOR3,
					DRAKTHARON_KEEP, DRAKTHARON_KEEP_FLOOR2,
					GUNDRAK, GUNDRAK_FLOOR2,
					HALLS_OF_LIGHTNING, HALLS_OF_LIGHTNING_FLOOR2,
					HALLS_OF_STONE,
					THE_CULLING_OF_STRATHOLME, THE_CULLING_OF_STRATHOLME_FLOOR2,
					THE_NEXUS,
					THE_OCULUS, THE_OCULUS_FLOOR2, THE_OCULUS_FLOOR3, THE_OCULUS_FLOOR4, THE_OCULUS_FLOOR5,
					THE_VIOLET_HOLD_WRATH,
					UTGARDE_KEEP, UTGARDE_KEEP_FLOOR2, UTGARDE_KEEP_FLOOR3,
					UTGARDE_PINNACLE, UTGARDE_PINNACLE_FLOOR2,
				},
				["crs"] = {
					29311,	-- Herald Volazj [Ahn'kahet: The Old Kingdom]
					29120,	-- Anub'arak [Azjol-Nerub]
					26632,	-- The Prophet Tharon'ja [Drak'Tharon Keep]
					29306,	-- Gal'darah [Gundrak]
					28923,	-- Loken [Halls of Lightning]
					27978,	-- Sjonnir The Ironshaper [Halls of Stone]
					26533,	-- Mal'Ganis [The Culling of Stratholme]
					26723,	-- Keristrasza [The Nexus]
					27656,	-- Ley-Guardian Eregos [The Oculus]
					31134,	-- Cyanigosa [The Violet Hold (Wrath)]
					23954,	-- Ingvar the Plunderer [Utgarde Keep]
					26861,	-- King Ymiron [Utgarde Pinnacle]
				},
				["groups"] = {
					currency(221),	-- Emblem of Conquest
					i(40616),	-- Helm of the Lost Conqueror
					i(40617),	-- Helm of the Lost Protector
					i(40618),	-- Helm of the Lost Vanquisher
					i(40622),	-- Spaulders of the Lost Conqueror
					i(40623),	-- Spaulders of the Lost Protector
					i(40624),	-- Spaulders of the Lost Vanquisher
					i(40619),	-- Leggings of the Lost Conqueror
					i(40620),	-- Leggings of the Lost Protector
					i(40621),	-- Leggings of the Lost Vanquisher
				},
			}),
		},
	})),
})));
-- #endif
