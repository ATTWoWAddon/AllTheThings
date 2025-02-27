---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		n(INVASION_PIRATE, {
			["description"] = "Every week a faction invades the island.\n\nThe rotation is Vrykul>Naga>Pirates repeat.\n\nZone Drops listed here are only available when the invasion is active.",
			["groups"] = {
				petbattle(filter(BATTLE_PETS, {
					pet(4710, {	-- Pillaged Parrot
						["description"] = "Only spawns during Pirate invasion week.",
					}),
				})),
				n(QUESTS, {
					q(83753, {	-- Cannon Karma
						["sourceQuests"] = { 84725 },	-- The Circlet Calls
						["provider"] = { "n", 227818 },	-- Skaggit
						["coord"] = { 69.3, 43.4, SIREN_ISLE },
						["isWeekly"] = true,
						["g"] = {
							o(499551,{	-- Blacksteel Cannonballs
								["coord"] = { 47.8, 64.8, SIREN_ISLE },
								["g"] = {
									i(226133),	-- Blacksteel Cannonball (QI!)
								},
							}),
						},
					}),
					q(84001, {	-- Cart Blanche
						["sourceQuests"] = { 84725 },	-- The Circlet Calls
						["provider"] = { "n", 232730 },	-- Machinist Kromleg
						["coord"] = { 48.5, 53.0, SIREN_ISLE },
						["isWeekly"] = true,
						["g"] = {
							o(456665, {	-- Ore Sample
								i(226853),	-- Ore Sample (QI!)
							}),
						},
					}),
					q(84619, {	-- Ooker Dooker Literature Club
						["sourceQuests"] = { 84725 },	-- The Circlet Calls
						["provider"] = { "n", 229716 },	-- Stellin Verasa
						["coord"] = { 71.0, 39.6, SIREN_ISLE },
						["isWeekly"] = true,
						["g"] = {
							i(231812),	-- Hozen Poetry (QI!)
							n(232825, {	-- First Mate Dat-Dat
								i(231809),	-- First Mate Dat-Dat's Key (QI!)
							}),
							o(477098, {	-- Bilge Rat Trunk
								["coord"] = { 53.7, 88.8, SIREN_ISLE },
								["g"] = { i(231786), },	-- Ookler's Diary (QI!)
							}),
							o(477366, {	-- Dat-Dat's Book Stash
								["coord"] = { 60.6, 97.6, SIREN_ISLE },
								["g"] = { i(231802), },	-- Ashvane Co. Survey Report (QI!)
							}),
							o(477612, {	-- Siren Isle Manifest
								["coords"] = {
									{ 55.2, 93.1, SIREN_ISLE },
									{ 68.3, 94.3, SIREN_ISLE },
								},
								["g"] = { i(231813), },	-- Siren Isle Manifest (QI!)
							}),
							o(477248, {	-- Songs of the Siren
								["coord"] = { 62.8, 97.2, SIREN_ISLE },
								["g"] = { i(231788), },	-- Songs of the Siren (QI!)
							}),
						},
					}),
					q(84299, {	-- Pirate Plunder
						["sourceQuests"] = { 84725 },	-- The Circlet Calls
						["provider"] = { "n", 227818 },	-- Skaggit
						["coord"] = { 69.3, 43.4, SIREN_ISLE },
						["isWeekly"] = true,
						["g"] = {
							o(456869, {	-- Kaja'Cola Stash
								i(227453),	-- Kaja'Cola Stash (QI!)
							}),
							o(457143, {	-- Kaja'Cola Can
								i(227670),	-- Kaja'Cola Can (QI!)
							}),
						},
					}),
					q(83827, {	-- Silence the Song
						["sourceQuests"] = { 84725 },	-- The Circlet Calls
						["provider"] = { "n", 232753 },	-- Regald Hornfyre
						["coord"] = { 45.2, 67.7, SIREN_ISLE },
						["isWeekly"] = true,
						["g"] = {
							i(226261),	-- Sonic Scrambler (QI!)
						},
					}),
				}),
				n(RARES, sharedData({
					["isDaily"] = true,
				},{
					n(228583, {	-- Chef Chum Platter
						-- pirates
						["coord"] = { 66.4, 85.5, SIREN_ISLE },
						["questID"] = 84800,
					}),
					n(228580, {	-- Plank-Master Bluebelly
						-- pirates
						["coord"] = { 59.7, 87.8, SIREN_ISLE },
						["questID"] = 84799,
					}),
				})),
				n(TREASURES, {
					o(464233, {	-- Bilge Rat Supply Chest
						-- Pirates
						["description"] = "Key drops from First Mate Shellshock\n/att n:228582",
						["coord"] = { 62.4, 90.8, SIREN_ISLE },
						["questID"] = 84529,
						["cost"] = {{ "i", 228621, 1 }},	-- Bilge Rat Supply Key
						["isWeekly"] = true,
					}),
				}),
				n(WORLD_QUESTS, {
					["sourceQuests"] = {
						TWW_ACCOUNT_CAMPAIGN_QUEST,
						84725,	-- The Circlet Calls
					},
					["g"] = bubbleDownFiltered({ ["isWorldQuest"] = true, },FILTERFUNC_questID,{
						q(84851, {	-- Tides of Greed
							["g"] = {
								i(228646, {	-- Legendary Skipper's Citrine
									["description"] = "Only counts for the achievement when looted from the respective World Quest.",
								}),
							},
						}),
					}),
				}),
				n(ZONE_DROPS, {
					i(233500, {	-- Crimson Snapdragon Treat
						["description"] = "You must have the Prismatic Snapdragon Mount before this can drop.\n\nCan be looted from Pirates.",
					}),
					i(166358, {	-- Proper Parrot (PET!)
						["description"] = "Can be looted from Pirates.",
					}),
					i(234232, {	-- Technique: Glyph of the Ashvane Pistol Shot (RECIPE!)
						["description"] = "Can be looted from Pirates.",
					}),
					n(228582, {	-- First Mate Shellshock
						["coords"] = {
							{ 60.2, 69.6, SIREN_ISLE, },
							{ 61.2, 71.8, SIREN_ISLE, },
						},
						["groups"] = {
							i(228621),	-- Bilge Rat Supply Key
						},
					}),
				}),
			},
		}),
	}),
})));