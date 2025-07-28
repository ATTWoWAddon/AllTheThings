---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		n(INVASION_NAGA, {
			["description"] = "Every week a faction invades the island.\n\nThe rotation is Vrykul>Naga>Pirates repeat.\n\nZone Drops listed here are only available when the invasion is active.",
			["groups"] = {
				petbattle(filter(BATTLE_PETS, {
					pet(4711, {	-- Snapdragon Pup
						["description"] = "Only spawns during Naga invasion week.",
					}),
				})),
				n(QUESTS, {
					q(85051, {	-- Beach Comber
						["provider"] = { "n", 231783 },	-- Machinist Kromleg
						["sourceQuests"] = { 84725 },	-- The Circlet Calls
						["coord"] = { 41.9, 68.0, SIREN_ISLE },
						["isWeekly"] = true,
						["groups"] = {
							o_repeated({
								i(229967),	-- Salvageable Scrap (QI!)
								o(473943),	-- Salvageable Scrap
								o(474030),	-- Salvageable Scrap
								o(474033),	-- Salvageable Scrap
								o(474084),	-- Salvageable Scrap
								o(474086),	-- Salvageable Scrap
							}),
						},
					}),
					q(84430, {	-- Crystal Crusade
						["provider"] = { "n", 227796 },	-- Sky-Captain Elaena Lancekat
						["sourceQuests"] = { 84725 },	-- The Circlet Calls
						["coord"] = { 69.4, 42.8, SIREN_ISLE },
						["isWeekly"] = true,
						["groups"] = {
							o(465208, {	-- Crystal Chunk
								i(228780),	-- Crystal Chunk (QI!)
							}),
							i(228787),	-- Crystal Fragment (QI!)
						},
					}),
					q(85589, {	-- Ruffled Pages
						["provider"] = { "n", 229716 },	-- Stellin Verasa
						["sourceQuests"] = { 84725 },	-- The Circlet Calls
						["coord"] = { 71.0, 39.6, SIREN_ISLE },
						["isWeekly"] = true,
						["groups"] = {
							o(487825, {	-- Ruffled Pages
								i(232361),	-- Ruffled Pages (QI!)
							}),
						},
					}),
					q(84627, {	-- Three Heads of the Deep
						["provider"] = { "n", 227796 },	-- Sky-Captain Elaena Lancekat
						["sourceQuests"] = { 84725 },	-- The Circlet Calls
						["coord"] = { 69.4, 42.8, SIREN_ISLE },
						["isWeekly"] = true,
					}),
				}),
				n(RARES, sharedData({
					["isDaily"] = true,
				},{
					n(229852, {	-- Coralweaver Calliso
						-- naga
						["coord"] = { 61.5, 89.4, SIREN_ISLE },
						["questID"] = 84802,
						["groups"] = {
							i(234973),	-- Pearlshell Scroll Case [book]
						},
					}),
					n(229853, {	-- Siris the Sea Scorpion
						-- naga
						["coord"] = { 56.0, 83.6, SIREN_ISLE },
						["questID"] = 84803,
						["groups"] = {
							i(234973),	-- Pearlshell Scroll Case [book]
						},
					}),
				})),
				n(TREASURES, {
					o(463539, {	-- Pilfered Earthen Chest
						["coord"] = { 68.4, 94.4, SIREN_ISLE },
						["questID"] = 84527,
						["isWeekly"] = true,
						["groups"] = { i(229181) },	-- Ordained Forge Maul
					}),
				}),
				n(WORLD_QUESTS, {
					["sourceQuests"] = {
						TWW_ACCOUNT_CAMPAIGN_QUEST,
						84725,	-- The Circlet Calls
					},
					["groups"] = bubbleDownFiltered({ ["isWorldQuest"] = true, },FILTERFUNC_questID,{
						q(84850, {	-- Serpent's Wrath
							["groups"] = {
								i(228647, {	-- Seabed Leviathan's Citrine
									["description"] = "Only counts for the achievement when looted from the respective World Quest.",
								}),
							},
						}),
					}),
				}),
				n(ZONE_DROPS, {
					i(233499, {	-- Royal Snapdragon Treat (CI!)
						["description"] = "You must have the Prismatic Snapdragon Mount before this can drop.\n\nCan be looted from Naga.",
						-- n: 229851 (debugger)
					}),
				}),
			},
		}),
	}),
})));