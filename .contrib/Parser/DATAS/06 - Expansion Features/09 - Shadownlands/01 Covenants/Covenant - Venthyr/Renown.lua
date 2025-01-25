-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local WISPS_OF_MEMORY = i(186472, {	-- Wisps of Memory
	["description"] = "Rewarded at 52, 67 and 76 Renown.",
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_VEN" }, {
	n(VENTHYR, {
		n(RENOWN, {
			["description"] = "These are rewards automatically granted by reaching a specific level of Renown.",
			["sym"] = {
				{"select","itemID",186580}	-- A Tiny Sinstone (PEPE!)
			},
			["g"] = {
				i(182332, {	-- Gravestone Battle Gargon (MOUNT!)
					["description"] = "Requires Renown 39.",
				}),
				i(186476, {	-- Sinfall Gravewing (MOUNT!)
					["description"] = "Requires Renown 45.",
				}),
				--[[
				title_gendered(429, 430, {	-- Count / Countess (TITLE!)
					["description"] = "Requires Renown 40.",
				}),
				]]--
				title_male(429, {	-- Count <Name>
					["description"] = "Requires Renown 40.",
				}),
				title_female(430, {	-- Countess <Name>
					["description"] = "Requires Renown 40.",
				}),
				title(444, {	-- Sin Eater (TITLE!)
					["description"] = "Requires Renown 80.",
				}),
				iensemble(186507, {	-- Harvester's Court Attire
					["description"] = "Requires Renown 60.",
				}),
				i(188003, {	-- Crate of Revendreth Reserve
					["description"] = "Rewarded at 15 and 24 Renown.",
				}),
				WISPS_OF_MEMORY,
				n(LEGENDARIES, {
					["description"] = "Requires Renown 48.",
					["g"] = {
						i(186567),	-- Memory of Insatiable Hunger
						i(187105),	-- Memory of the Agonizing Gaze
						i(186609),	-- Memory of Sinful Hysteria
						i(187232),	-- Memory of the Pouch of Razor Fragments
						i(186635),	-- Memory of Sinful Delight
						i(187277),	-- Memory of Sinister Teachings
						i(187127),	-- Memory of Radiant Embers
						i(187162),	-- Memory of Shadow Word: Manipulation
						i(186710),	-- Memory of the Obedient
						i(187224),	-- Memory of the Elemental Conduit
						i(187228),	-- Memory of the Contained Perpetual Explosion
						i(186572),	-- Memory of the Sinful Surge
					},
				}),
			},
		}),
	}),
})));

WISPS_OF_MEMORY.customCollect = nil;

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, {
	n(VENTHYR, {
		n(RENOWN, {
			q(62750),	-- hitting Renown 19
			q(62751),	-- hitting Renown 35
			q(62925),	-- hitting Renown 39
			q(64131),	-- hitting Renown 45
			q(64076),	-- hitting Renown 46
			q(64381),	-- hitting Renown 48 [Death Knight] (received Memory of Insatiable Hunger)
			q(64394),	-- hitting Renown 48 [Demon Hunter] (received Memory of the Agonizing Gaze)
			q(64389),	-- hitting Renown 48 [Druid] (received Memory of Sinful Hysteria)
			q(64419),	-- hitting Renown 48 [Hunter] (received Memory of the Pouch of Razor Fragments)
			q(64390),	-- hitting Renown 48 [Mage] (received Memory of Sinful Delight)
			q(64387),	-- hitting Renown 48 [Monk] (received Memory of Sinister Teachings)
			q(64400),	-- hitting Renown 48 [Paladin] (received Memory of Radiant Embers)
			q(64410),	-- hitting Renown 48 [Priest] (received Memory of Shadow Word: Manipulation)
			q(64411),	-- hitting Renown 48 [Rogue] (received Memory of the Obedient)
			q(64415),	-- hitting Renown 48 [Shaman] (received Memory of the Elemental Conduit)
			q(64422),	-- hitting Renown 48 [Warlock] (received Memory of the Contained Perpetual Explosion)
			q(64407),	-- hitting Renown 48 [Warrior] (received Memory of the Sinful Surge)
			q(64134),	-- hitting Renown 50
			q(64452),	-- hitting Renown 52
			q(64133),	-- hitting Renown 56
			q(64135),	-- hitting Renown 59
			q(64375),	-- hitting Renown 60
			q(64453),	-- hitting Renown 67
			q(64578),	-- triggered after watching Kael'thas/The Accuser RP (spellID 358161)
			q(64454),	-- Renown 76
			-- 9.1.5 New HQTS
			q(65113),	-- hitting Renown 15 (Anima instead of Soulkeeper Upgrade)
			q(65114),	-- hitting Renown 24 (Anima instead of Soulkeeper Upgrade)
		}),
	}),
}));