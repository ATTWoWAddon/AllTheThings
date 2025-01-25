-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
SIEGE_ON_DRAGONBANE_KEEP = createHeader({
	readable = "Siege on Dragonbane Keep",
	icon = 1394891,
	text = {
		en = WOWAPI_GetSpellName(388945),
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(VALDRAKKEN_ACCORD, {
		n(SIEGE_ON_DRAGONBANE_KEEP, bubbleDownSelf({ ["minReputation"] = { FACTION_VALDRAKKEN_ACCORD, 5 } }, {
			["questID"] = 70866,
			["isWeekly"] = true,
			["maps"] = { THE_WAKING_SHORES },
			["g"] = {
				n(ACHIEVEMENTS, {
					ach(16412),	-- Siege on Dragonbane Keep: Chiseled Record
					ach(16411),	-- Siege on Dragonbane Keep: Home Sweet Home
					ach(16410),	-- Siege on Dragonbane Keep: Snack Attack
				}),
				n(EVENT_COMPLETION, {
					i(200116),	-- Everlasting Horn of Lavaswimming (TOY!)
					i(202142),	-- Dragonbane Keep Strongbox [RARE]
					i(200072, {	-- Dragonbane Keep Strongbox [EPIC]
						["sym"] = {
							{"select", "mapID",
								DRAGON_ISLES,
								THE_WAKING_SHORES,
								OHNAHRAN_PLAINS,
								THE_AZURE_SPAN,
								THALDRASZUS,
							},
							{"pop"},
							{"where", "headerID", ZONE_REWARDS},
							{"pop"},
							{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
						},
					}),
				}),
				n(TREASURES, {
					o(376580, {	-- Djaradin Cache
						["coords"] = {
							{ 24.3, 69.5, THE_WAKING_SHORES },
							{ 69.9, 45.3, THE_WAKING_SHORES },
							{ 71.3, 46.8, THE_WAKING_SHORES },
							{ 65.8, 35.1, THE_WAKING_SHORES },
							{ 63.2, 34.6, THE_WAKING_SHORES },
						},
						["g"] = {
							i(199230),	-- Schematic: Projectile Propulsion Pinion (RECIPE!)
						},
					}),
					o(381357, {	-- Stone Tablet
						["coord"] = { 27.8, 68.4, THE_WAKING_SHORES },
						["g"] = {
							crit(55264, {	-- Complaint to Scalepiercer
								["achievementID"] = 16412,	-- Siege on Dragonbane Keep: Chiseled Record
							}),
						},
					}),
					o(381358, {	-- Stone Tablet
						["coord"] = { 28.8, 72.5, THE_WAKING_SHORES },
						["g"] = {
							crit(55266, {	-- Wyrmeater's Recipe
								["achievementID"] = 16412,	-- Siege on Dragonbane Keep: Chiseled Record
							}),
						},
					}),
					o(381359, {	-- Stone Tablet
						["coord"] = { 24.1, 69.2, THE_WAKING_SHORES },
						["g"] = {
							crit(55265, {	-- The Grand Flame's Journal
								["achievementID"] = 16412,	-- Siege on Dragonbane Keep: Chiseled Record
							}),
						},
					}),
				}),
			},
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(VALDRAKKEN_ACCORD, {
		n(SIEGE_ON_DRAGONBANE_KEEP, {
			q(70867),	-- Scalebane Keep (seems to indicate if the community event timer is shown perhaps? unflagged when the siege was completed)
			q(74295),	-- triggered when completing Siege on Dragonbane Keep 2nd week
		}),
	}),
})));