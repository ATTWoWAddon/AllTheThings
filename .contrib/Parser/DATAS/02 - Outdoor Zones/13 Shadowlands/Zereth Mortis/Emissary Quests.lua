---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_2_0 } }, {
	m(ZERETH_MORTIS, {
		n(EMISSARY_QUESTS, {
			q(64867, {	-- Supplies from The Enlightened
				["provider"] = { "n", 182257 },	-- Vilo
				["coord"] = { 34.8, 64.1, ZERETH_MORTIS },
				["minReputation"] = { FACTION_THE_ENLIGHTENED, EXALTED },	-- The Enlightened, Exalted
				["repeatable"] = true,
				["g"] = {
					i(187780, {	-- Enlightened Broker Supplies
						i(190931),	-- Cape of the Regal Wanderer
						i(190930),	-- Dark Shawl of the Enlightened
						i(190935),	-- Distinguished Blade of Cartel Al
						i(190929),	-- Ebony Protocloak
						i(190937),	-- Edge of the Enlightened
						i(190234, {	-- Enlightened Portal Research (CI!)
							["requireSkill"] = ENGINEERING,
						}),
						i(190933),	-- Majestic Oracle's Drape
						i(190932),	-- Protohide Drape
						i(189973),	-- Ray Soul (SOUL!)
						i(190928),	-- Sandtails Drape
						i(189471),	-- Schematic: Russet Bufonid
						i(190177),	-- Sphere of Enlightened Cogitation (TOY!)
						i(190934),	-- Standard of the Wandering Brokers
						i(190939),	-- Walking Staff of the Enlightened Journey
					}),
				},
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_0 } }, {
	m(SHADOWLANDS, {
		m(ZERETH_MORTIS, {
			n(EMISSARY_QUESTS, {
				q(64869),	-- "Paragon of Automa" ( Probably something left by blizzard when removed the Automa Rep and Cache /Braghe)
				q(64870),	-- Paragon of Enlightened Brokers
			}),
		}),
	}),
})));