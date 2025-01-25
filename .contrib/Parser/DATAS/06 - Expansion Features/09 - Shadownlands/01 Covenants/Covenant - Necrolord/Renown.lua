-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local WISPS_OF_MEMORY = i(186472, {	-- Wisps of Memory
	["description"] = "Rewarded at 52, 67 and 76 Renown.",
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_NEC" }, {
	n(NECROLORD, {
		n(RENOWN, {
			["description"] = "These are rewards automatically granted by reaching a specific level of Renown.",
			["sym"] = {
				{"select","itemID",186524}	-- A Tiny Vial of Slime (PEPE!)
			},
			["g"] = {
				i(181821, {	-- Armored Plaguerot Tauralus (MOUNT!)
					["description"] = "Requires Renown 39.",
				}),
				i(186487, {	-- Maldraxxian Corpsefly (MOUNT!)
					["description"] = "Requires Renown 45.",
				}),
				--[[
				title_gendered(426, 427, {	-- Baron / Baroness (TITLE!)
					["description"] = "Requires Renown 40.",
				}),
				]]--
				title_male(426, {	-- Baron <Name>
					["description"] = "Requires Renown 40.",
				}),
				title_female(427, {	-- Baroness <Name>
					["description"] = "Requires Renown 40.",
				}),
				title(443, {	-- Sword of the Primus (TITLE!)
					["description"] = "Requires Renown 80.",
				}),
				iensemble(186503, {	-- Ensemble: Initiate's Necromantle Vestments
					["description"] = "Requires Renown 60.",
				}),
				i(188004, {	-- Crate of Anima-Infused Parts
					["description"] = "Rewarded at 15 and 24 Renown.",
				}),
				WISPS_OF_MEMORY,
				n(LEGENDARIES, {
					["description"] = "Requires Renown 48.",
					["g"] = {
						i(186568),	-- Memory of an Abomination's Frenzy
						i(187118),	-- Memory of the Demonic Oath
						i(186577),	-- Memory of the Unbridled Swarm
						i(187230),	-- Memory of the Bag of Munitions
						i(186621),	-- Memory of Death's Fathom
						i(187217),	-- Memory of the Bountiful Brew
						i(187107),	-- Memory of the Duty-Bound Gavel
						i(187160),	-- Memory of Pallid Command
						i(186712),	-- Memory of the Deathspike
						i(186689),	-- Memory of the Splintered Elements
						i(187226),	-- Memory of the Shards of Annihilation
						i(186570),	-- Memory of Glory
					},
				}),
			},
		}),
	}),
})));

WISPS_OF_MEMORY.customCollect = nil;

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(NECROLORD, {
		n(RENOWN, {
			q(62753),	-- Reaching Renown 19 / unlocking Deepening Bond 4% stam increase
			q(62754),	-- Reaching Renown 35 / unlocking Deepening Bond 6% stam increase
			q(62926),	-- Reaching Renown 39 / unlocking covenant mount
			q(64097, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 45
			q(64404, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 48 [Death Knight] (received Memory of an Abomination's Frenzy)
			q(64424, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 48 [Demon Hunter] (received Memory of Demonic Oath)
			q(64425, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 48 [Druid] (received Memory of Unbridled Swarm)
			q(64393, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 48 [Hunter] (received Memory of the Pact of the Soulstalkers)
			q(64391, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 48 [Mage] (received Memory of Death's Fathom)
			q(64398, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 48 [Monk] (received Memory of Bountiful Brew)
			q(64399, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 48 [Paladin] (received Memory of Duty-Bound Gavel)
			q(64414, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 48 [Priest] (received Memory of Pallid Command)
			q(64383, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 48 [Rogue] (received Memory of the Deathspike)
			q(64384, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 48 [Shaman] (received Memory of the Splintered Elementals)
			q(64420, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 48 [Warlock] (received Memory of Shards of Annihilation)
			q(64421, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 48 [Warrior] (received Memory of Glory)
			q(64100, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 50
			q(64446, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 52
			q(64099, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 56
			q(64108, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 59
			q(64373, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 60
			q(64308, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 63
			q(64447, {["timeline"] = {ADDED_9_1_0}}),	-- hitting Renown 67
			q(64448, {["timeline"] = {ADDED_9_1_0}}),	-- Renown 76
			-- 9.1.5 New HQTS
			q(65109, {["timeline"] = {ADDED_9_1_5}}),	-- hitting Renown 15 (Anima instead of Soulkeeper Upgrade)
			q(65110, {["timeline"] = {ADDED_9_1_5}}),	-- hitting Renown 24 (Anima instead of Soulkeeper Upgrade)
		}),
	}),
})));