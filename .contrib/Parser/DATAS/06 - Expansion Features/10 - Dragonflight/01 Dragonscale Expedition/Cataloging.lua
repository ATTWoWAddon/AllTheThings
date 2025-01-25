-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
CATALOGING = createHeader({
	readable = "Cataloging",
	icon = 1109168,
	text = {
		en = WOWAPI_GetSpellName(381284),
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(DRAGONSCALE_EXPEDITION, {
		n(CATALOGING, bubbleDownSelf({ ["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 8 } }, {
			n(ACHIEVEMENTS, {
				ach(16572, {	-- Legendary Photograph
					["sym"] = {{"partial_achievement",16570}},	-- A Legendary Album
				}),
				ach(16573, {	-- Legendary Photographs
					["sym"] = {{"partial_achievement",16570}},	-- A Legendary Album
				}),
				ach(16570, {	-- A Legendary Album
					crit(55758, {	-- Abu'Gar
						["cr"] = 195792,
						["_quests"] = { 70075 },	-- Cataloging the Waking Shores
					}),
					crit(55759, {	-- Chen Stormstout
						-- ["cr"] = NPCID,
						["_quests"] = { 70632 },	-- Cataloging the Waking Shores
					}),
					crit(55771, {	-- Chief Telemancer Oculeth
						["cr"] = 195393,
						["_quests"] = { 70100 },	-- Cataloging the Azure Span
					}),
					crit(55772, {	-- Elder Clearwater
						["cr"] = 197699,
						["_quests"] = { 70659 },	-- Cataloging the Ohn'ahran Plains
					}),
					crit(55773, {	-- Time-Warped Mysterious Fisher
						-- ["cr"] = NPCID,
						["_quests"] = { 70110 },	-- Cataloging Thaldraszus
					}),
					crit(55774, {	-- Nat Pagle
						-- ["cr"] = NPCID,
						["_quests"] = { 70079 },	-- Cataloging the Ohn'ahran Plains
					}),
					crit(55775, {	-- Wrathion
						["cr"] = 185089,
						["_quests"] = { 70699 },	-- Cataloging Thaldraszus
					}),
				}),
				ach(16567),	-- A Lot of Great Shots!
				ach(16566),	-- Great Shot!
				ach(16568),	-- Great Shots Galore!
				ach(16560),	-- Wildlife Photographer
			}),
			n(QUESTS, {
				------ RENOWN 8 ------
				q(69869, {	-- A Cataloger's Paradise
					["description"] = "Spawns Anywhere on Dragon Isles.",
					["provider"] = { "n", 196643 },	-- Doc Nanners
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
				}),
				q(72525, {	-- Basic Cataloging Gear
					["sourceQuests"] = { 69869 },	-- A Cataloger's Paradise
					["provider"] = { "n", 187707 },	-- Cataloger Coralie
					["coord"] = { 48.5, 82.7, THE_WAKING_SHORES },
				}),
				q(69870, {	-- Pictures with Purpose
					["sourceQuests"] = { 72525 },	-- Basic Cataloging Gear
					["provider"] = { "n", 187707 },	-- Cataloger Coralie
					["coord"] = { 48.5, 82.7, THE_WAKING_SHORES },
				}),
				q(65486, {	-- Picture Perfect
					["sourceQuests"] = { 69870 },	-- Pictures with Purpose
					["provider"] = { "n", 185651 },	-- Akunda the Cataloger
					["coord"] = { 49.9, 68.4, THE_WAKING_SHORES },
					["g"] = {
						ach(16758),	-- Ready, Aim, Catalog!
					},
				}),
			}),
			n(WORLD_QUESTS, sharedData({ ["isWorldQuest"] = true }, {

					-- The Waking Shores --
				q(70075, {	-- Cataloging the Waking Shores
					["coord"] = { 64.1, 58.3, THE_WAKING_SHORES },
				}),
				q(70632, {	-- Cataloging the Waking Shores
					["coord"] = { 55.9, 55.8, THE_WAKING_SHORES },
				}),

					-- Ohn'ahran Plains --
				q(70079, {	-- Cataloging the Ohn'ahran Plains
					["coord"] = { 52.0, 56.8, OHNAHRAN_PLAINS },
				}),
				q(70659, {	-- Cataloging the Ohn'ahran Plains
					["coord"] = { 72.9, 72.8, OHNAHRAN_PLAINS },
				}),

					-- The Azure Span --
				q(70100, {	-- Cataloging the Azure Span
					["coord"] = { 44.1, 60.0, THE_AZURE_SPAN },
				}),

					-- Thaldraszus --
				q(70110, {	-- Cataloging Thaldraszus
					["coord"] = { 36.3, 68.8, THALDRASZUS },
				}),
				q(70699, {	-- Cataloging Thaldraszus
					["coord"] = { 51.0, 42.0, THALDRASZUS },
				}),

					-- Zaralek Cavern --
				q(75126, {	-- Cataloging Zaralek Cavern
					["coord"] = { 42.4, 73.8, ZARALEK_CAVERN },
					["timeline"] = { ADDED_10_1_0 },
				}),
			})),
		})),
	}),
})));
