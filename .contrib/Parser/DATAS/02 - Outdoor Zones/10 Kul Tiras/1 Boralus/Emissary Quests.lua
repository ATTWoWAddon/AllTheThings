---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(BORALUS, {
		n(EMISSARY_QUESTS, {
			q(50605, {	-- Alliance War Effort [7th Legion]
				["provider"] = { "n", 135446 },	-- Vindicator Jaelaana
				["coord"] = { 69.32, 24.94, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["isWorldQuest"] = true,
				["lvl"] = 120,
				["sym"] = { { "select", "itemID", 165872, 163857 } },		-- 7th Legion Equipment Cache & Azerite Armor Cache
			}),
			q(54454, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 }, ["minReputation"] = { FACTION_7TH_LEGION, EXALTED } }, {	-- Supplies from the 7th Legion
				["provider"] = { "n", 135446 },	-- Vindicator Jaelaana
				["coord"] = { 69.32, 24.94, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["groups"] = {
					i(166300, {	-- 7th Legion Supplies
						i(166879),	-- Rallying War Banner (TOY!)
						i(166279),	-- Technique: Contract: 7th Legion [Rank 3] (RECIPE!)
					}),
				},
			})),
			q(50599, {	-- Proudmoore Admiralty
					["provider"] = { "n", 135808 },	-- Provisioner Fray
					["coord"] = { 67.52, 21.56, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["isWorldQuest"] = true,
					["lvl"] = 120,
					["groups"] = {
						i(165869, {	-- Proudmoore Admiralty Equipment Cache
							["sym"] = {
								{"select", "itemID", 157996},	-- Harbormaster Pauldrons
								{"finalize"},	-- Push the items to the finalized list.
								{"select", "mapID", TIRAGARDE_SOUND},
								{"find", "headerID", ZONE_REWARDS },
								{"extract", "itemID" },	-- Select the Items.
								{"invtype", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_CLOAK", },	-- Only include a couple of inventory types.
							},
						}),
						i(165867, {	-- Kul Tiran Weapons Cache
							["sym"] = {
								{"select", "mapID", KUL_TIRAS},
								{"find", "headerID", ZONE_REWARDS },
								{"extract", "itemID" },	-- Select the Items.
								{"invtype", "INVTYPE_2HWEAPON", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_HOLDABLE", "INVTYPE_RANGED", "INVTYPE_RANGEDRIGHT", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND" },	-- Only include a couple of inventory types.
							},
						}),
						i(163857, {	-- Azerite Armor Cache
							["sym"] = {
								{"sub", "bfa_azerite_armor_chest" },
							},
						}),
					},
			}),
			q(54458, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 }, ["minReputation"] = { FACTION_PROUDMOORE_ADMIRALTY, EXALTED } }, {	-- Supplies from Proudmoore Admiralty
				["provider"] = { "n", 135808 },	-- Provisioner Fray
				["coord"] = { 67.52, 21.56, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["groups"] = {
					i(166295, {	-- Proudmoore Admiralty Supplies
						i(166714),	-- Albatross Hatchling (PET!)
						i(166702),	-- Proudmoore Music Box (TOY!)
					}),
				},
			})),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	m(KUL_TIRAS, {
		m(BORALUS, {
			n(FACTIONS, {
				n(EMISSARY_QUESTS, {
					q(54618),	-- Paragon of the 7th Legion
					q(54629),	-- Paragon of the Proudmoore Admiralty
				}),
			}),
		}),
	}),
})));
