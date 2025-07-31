---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(MALDRAXXUS, {
		n(EMISSARY_QUESTS, {
			q(62851, {	-- Paragon of the Undying Army
				["provider"] = { "n", 173003 },	-- Nalcorn Talsen
				["coord"] = { 50.6, 53.4, MALDRAXXUS },
				["minReputation"] = { FACTION_THE_UNDYING_ARMY, EXALTED },
			}),
			q(61095, bubbleDownSelf({ ["minReputation"] = { FACTION_THE_UNDYING_ARMY, EXALTED } }, {	-- Supplies from the Undying Army
				["provider"] = { "n", 173003 },	-- Nalcorn Talsen
				["coord"] = { 50.6, 53.4, MALDRAXXUS },
				["repeatable"] = true,
				["groups"] = {
					i(180646, {	-- Supplies of the Undying Army
						i(184495),	-- Infested Arachnid Casing (TOY!)
						i(181269),	-- Micromancer (PET!)
						i(182081),	-- Colossal Slaughterclaw (MOUNT!)
					}),
				},
			})),
		}),
	}),
})));
