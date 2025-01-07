---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		header(HEADERS.Spell, 458069, {    -- Seafury Tempest (Storm)
			petbattle(filter(BATTLE_PETS, {
				pet(4732),	-- Scavenging Snapdragon (storm phase)
				pet(4731),	-- Storminfused Snapdragon (storm phase)
			})),
			n(QUESTS, {
				q(84225, {	-- Eggstinction
					-- TODO: STORM PHASE
					["sourceQuests"] = { 84725 },	-- The Circlet Calls
					["provider"] = { "n", 231937 },	-- Sally Boltwrench
					["coord"] = { 63.4, 66.4, SIREN_ISLE },
					["isWeekly"] = true,
				}),
				q(84241, {	-- Shoreline Stand
					-- TODO: STORM PHASE
					["sourceQuests"] = { 84725 },	-- The Circlet Calls
					["provider"] = { "n", 232297 },	-- Regald Hornfyre
					["coord"] = { 43.7, 23.9, SIREN_ISLE },
					["maps"] = { 2375 },	-- The Forgotten Vault
					["isWeekly"] = true,
				}),
				-- Birdy (move to special?)
				q(85811, {	-- Thrayir, Eyes of the Siren
					["sourceQuests"] = {
					--	TODO: hqts as sourceQuest since you cannot take this quest without unlocking them
					--	probably gonna need to add as cost runekeys, dunno
						85800,	-- Cyclonic (spellID 471163)
						85803,	-- Thunderous (spellID 471169)
						85801,	-- Torrential (spellID 471166)
						85799,	-- Turbulent (spellID 471162)
						85802,	-- Whirling (spellID 471167)
					},
					["provider"] = { "n", 233582 },	-- Thrayir, Eyes of the Siren
					["cost"] = {
						{ "i", 232569, 1 },	-- Cyclonic Runekey
						{ "i", 232573, 1 },	-- Thunderous Runekey
						{ "i", 232572, 1 },	-- Torrential Runekey
						{ "i", 232570, 1 },	-- Turbulent Runekey
						{ "i", 232571, 1 },	-- Whirling Runekey
					},
					["coord"] = { 72.5, 61.3, 2375 },
					["g"] = {
						i(232639),	-- Thrayir, Eyes of the Siren (MOUNT!)
					},
				}),
			}),
			n(RARES, sharedData({
				["isDaily"] = true,
			},{
				-- STORM PHASE RARES
				n(231356, {	-- Brinebough
					["coord"] = { 56.1, 84.5, SIREN_ISLE },
					["questID"] = 85404,
				}),
				n(231353, {	-- Tempest Talon
					["description"] = "Flying around in area, assigned coords easiest spot to pull it.",
					["coord"] = { 40.9, 62.0, SIREN_ISLE },
					["questID"] = 85403,
				}),
				n(228547, {	-- Slaughtershell
					["coord"] = { 73.5, 54.0, SIREN_ISLE },	-- TODO: it have more than one spawn point (?) and different pathways (at least 2)
					["questID"] = 84798,
				}),
				n(231357, {	-- Zek'ul the Shipbreaker
					["coord"] = { 32.7, 73.0, SIREN_ISLE },
					["questID"] = 85405,
					["g"] = {
						i(232569), -- Cyclonic Runekey
					},
				}),
				-- The Forgotten Vault (during storm)
				n(231368, {	-- Ksvir the Forgotten
					["coord"] = { 37.9, 76.1, 2375 },
					["questID"] = 85406,
					["g"] = {
						i(235017),	-- Glittering Vault Shard (TOY!)
						i(232571),	-- Whirling Runekey
					},
				}),
			})),
			n(TREASURES, {
				o(507120, {	-- Ducky Friend
					["description"] = "Can be found during the storm in a house on the 2nd floor, on a bed.",
					["coord"] = { 39.2, 54.2, SIREN_ISLE },
					["g"] = {
						i(233447),	-- Marmaduke's "Ducky Friend"
					},
				}),
				o(499127, {	-- Runemarked Coffer
					-- TODO: The Forgotten Vault + storm phase
					-- TODO: I don't make screenshot for this one, so I'm unsure if it something in loot or it is related to treasure chest)
					["description"] = "In the back of the left room of the Forgotten Vault during a storm.",
					["coord"] = { 26.6, 23.9, 2375 },
					["questID"] = 85859,
				}),
				-- seems like can be looted only in storm phase
				n(230827, {	-- Stormtouched Pridetalon
					i(234379),	-- Crackleroar (PET!)
				}),
				i(232605),	-- Thunderous Fragment (TODO: probably need a better way to code it)
				i(232573, {	-- Thunderous Runekey
					["cost"] = {{"i", 232605, 5 }},
				}),
			}),
			n(WORLD_QUESTS, {
				["sourceQuests"] = {
					TWW_ACCOUNT_CAMPAIGN_QUEST,
					84725,	-- The Circlet Calls
				},
				["g"] = bubbleDownFiltered({ ["isWorldQuest"] = true, },FILTERFUNC_questID,{
					n(SPECIAL, {
						q(86174),	-- Special Assignment: Storm's a Brewin (TODO: seems to be unlock tracker)
						q(85113, {	-- Special Assignment: Storm's a Brewin
							["provider"] = { "n", 227815 },	-- Suzie Boltwrench
							["coord"] = { 69.0, 49.2, SIREN_ISLE },
							["g"] = {
								i(232466),	-- Leave the Storm (QI!)
								i(235548),	-- Earthen Landlubber's Cache
								--^ contain isle drop/vendor stuff
							},
						}),
					}),
				}),
			}),
			n(ZONE_DROPS, {
				i(233498, {	-- Storminfused Snapdragon Treat
					["description"] = "You must have the Prismatic Snapdragon Mount before this can drop.\n\nCan be looted from crab mobs during tempest.",
					["crs"] = {
						231986,	-- Deepwater Matriarch
						232080,	-- Deepwater Eggtender
						227625,	-- Seafury Spiker
						227569,	-- Storm-touched Clawfiend
						228547,	-- Slaughtershell
					},
					["coords"] = { 
						{ 63.2, 83.4, SIREN_ISLE },
						{ 56.0, 65.2, SIREN_ISLE },
						{ 54.4, 74.6, SIREN_ISLE },
					},
					-- n: 227625 (from debugger)
				}),
				i(234328),	-- Torrential Fragment (TODO: probably need a better way to code it)
				i(232572, {	-- Torrential Runekey
					["cost"] = {{"i", 234328, 7 }},
				}),
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(KHAZ_ALGAR, {
		m(SIREN_ISLE, {
			n(QUESTS, {
				-- Some interaction with gems on terrain during storm phase, reward you with Turbulent Fragment (itemID 234327)
				q(86437),	-- after interact with Runic Fragment (npcID 234934) @ 67.1, 78.5 (spellID 1213217 - Take Fragment)
				q(86435),	-- after interact with Runic Fragment (npcID 234934) @ 52.6, 38.7 / was able to loot it again but didn't fire questID
				q(86436),	-- after interact with Dirt Pile (npcID 235134) @ 38.2, 51.8
				-- Runestone activation questIDs in The Forgotten Vault (stormed phase) for Thrayir, Eyes of the Siren (npcID 233540)
				-- despite Thrayir quest is once per account, hqts are not
				q(85800),	-- Cyclonic (spellID 471163)
				q(85803),	-- Thunderous (spellID 471169)
				q(85801),	-- Torrential (spellID 471166)
				q(85799),	-- Turbulent (spellID 471162)
				q(85802),	-- Whirling (spellID 471167)
			}),
			n(RARES, {
				-- Need more data / confirmation, current data is mess
				-- after kill Bloodbrine (228154) - 84795 (on re-kill), 84871 (one of it is i(229172), -- Earthen Deckhand's Halberd drop?)
				-- after kill Gravesludge (228201) - 84872 (i(229178), -- Earthen Scallywag's Gavel drop?, 85669 (speculated - gem looted and unlocked on vendor), 85937 (on re-kill)
				-- after kill Nerathor (229982) - 84841 (i(229023), -- Earthen Deckhand's Breeches drop?), 85672 (citrine?), 85938 (on re-kill)
			}),
		}),
	}),
})));