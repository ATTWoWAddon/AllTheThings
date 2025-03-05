---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		n(INVASION_VRYKUL, {
			["description"] = "Every week a faction invades the island.\n\nThe rotation is Vrykul>Naga>Pirates repeat.\n\nZone Drops listed here are only available when the invasion is active.",
			["groups"] = {
				petbattle(filter(BATTLE_PETS, {
					pet(4724, {	-- Battleboar Piglet
						["description"] = "Only spawns during Vrykul invasion week.",
					}),
				})),
				n(QUESTS, {
					q(84248, {	-- A Ritual of Runes
						["sourceQuests"] = { 84725 },	-- The Circlet Calls
						["provider"] = { "n", 233139 },	-- Machinist Kromleg
						["coord"] = { 51.4, 48.2, SIREN_ISLE },
						["isWeekly"] = true,
					}),
					q(83932, {	-- Historical Documents
						["sourceQuests"] = { 84725 },	-- The Circlet Calls
						["provider"] = { "n", 229716 },	-- Stellin Verasa
						["coord"] = { 71.0, 39.6, SIREN_ISLE },
						["isWeekly"] = true,
						["g"] = {
							i(227405),	-- Research Journal (QI!)
							o(457181,{	-- Interesting Notes
								i(227406),	-- Interesting Notes (QI!)
							}),
						},
					}),
					q(84432, {	-- Longship Landing
						["sourceQuests"] = { 84725 },	-- The Circlet Calls
						["provider"] = { "n", 228096 },	-- Dawn
						["coords"] = {
							{ 69.1, 43.0, SIREN_ISLE },
							{ 71.4, 44.1, SIREN_ISLE },
						},
						["isWeekly"] = true,
					}),
					q(84222, {	-- Secure the Perimeter
						["sourceQuests"] = { 84725 },	-- The Circlet Calls
						["provider"] = { "n", 227796 },	-- Sky-Captain Elaena Lancekat
						["coord"] = { 69.4, 42.8, SIREN_ISLE },
						["isWeekly"] = true,
					}),
					q(84680, {	-- Rock 'n' Stone Revival
						["sourceQuests"] = { 84725 },	-- The Circlet Calls
						["provider"] = { "n", 228096 },	-- Dawn
						["coords"] = {
							{ 69.1, 43.0, SIREN_ISLE },
							{ 71.4, 44.1, SIREN_ISLE },
						},
						["isWeekly"] = true,
						["g"] = {
							i(228988),	-- Rock Reviver (QI!)
						},
					}),
				}),
				n(RARES, sharedData({
					["isDaily"] = true,
				},{
					n(227545, {	-- Ikir the Flotsurge
						["coord"] = { 32.8, 73.7, SIREN_ISLE },
						["questID"] = 84792,
					}),
					n(230137, {	-- Asbjorn the Bloodsoaked
						["coord"] = { 63.9, 87.3, SIREN_ISLE },
						["questID"] = 84805,
						["g"] = {
							i(234972),	-- Bloodwake Missive [book]
						},
					}),
				})),
				n(TREASURES, {
				}),
				n(WORLD_QUESTS, {
					["sourceQuests"] = {
						TWW_ACCOUNT_CAMPAIGN_QUEST,
						84725,	-- The Circlet Calls
					},
					["g"] = bubbleDownFiltered({ ["isWorldQuest"] = true, },FILTERFUNC_questID,{
						q(84852, {	-- Legacy of the Vrykul
							["groups"] = {
								i(228648),	-- Roaring War-Queen's Citrine
							},
						}),
					}),
				}),
				n(ZONE_DROPS, {
					i(233494, {	-- Muddy Snapdragon Treat
						["description"] = "You must have the Prismatic Snapdragon Mount before this can drop.\n\nCan be looted from Vrykul.",
						-- n: 232324 / n: 232323
					}),
				}),
			},
		}),
	}),
})));