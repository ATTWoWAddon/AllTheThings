-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH } }, {
	n(COMMON_BOSS_DROPS, {
		d(DIFFICULTY.RAID.HEROIC, {
			i(191910, {	-- Confounding Antique Cypher
				["description"] = "Drops from Fated Heroic Shadowlands Raid bosses.",
			}),
			i(191911, {	-- Cosmic Creation Impetus
				["cost"] = { { "i", 191910, 20 } },	-- 20x Confounding Antique Cypher
			}),
		}),
		d(DIFFICULTY.RAID.MYTHIC, {
			i(191926, {	-- Confounding Ancient Cypher
				["description"] = "Drops from Fated Mythic Shadowlands Raid bosses.",
			}),
			i(191927, {	-- Sacred Creation Impetus
				["cost"] = { { "i", 191926, 20 } },	-- 20x Confounding Ancient Cypher
			}),
		}),
	}),
	n(QUESTS, {
		q(66648, {	-- Crossing Fate
			["description"] = "Auto-accepted by entering any 'Fated' Shadowlands Raid.",
			["maps"] = {
				-- Castle Nathria
				1735,	-- The Grand Walk
				1744,	-- The Purloined Stores
				1745,	-- Halls of the Faithful
				1746,	-- Pride's Prison
				1747,	-- Nightcloak Sanctum
				1748,	-- The Observatorium
				1750,	-- Feast of Arrogance
				-- Sanctum of Domination
				1998,	-- Tower of the Damned
				1999,	-- Shadowsteel Foundry
				2000,	-- The Torment Chambers
				2001,	-- Crown of Gorgoa
				2002,	-- Pinnacle of Domination
				2003,	-- ??
				2004,	-- The Crucible
				-- Sepulcher of the First Ones
				2047,	-- Immortal Hearth
				2048,	-- Genesis Cradle
				2049,	-- The Endless Foundry
				2050,	-- Domination's Grasp
				2051,	-- Heart of Eternity
				2052,	-- The Grand Design
				2061,	-- Ephemeral Plains
			},
			["groups"] = {
				i(192466, {	-- Puzzling Cartel Dinar
					["bonusID"] = 3407,	-- "Priceless"
				}),
			},
		}),
		q(66649, {	-- Turning the Wheel
			["sourceQuest"] = 66648,	-- Crossing Fate
			["maps"] = {
				-- Castle Nathria
				1735,	-- The Grand Walk
				1744,	-- The Purloined Stores
				1745,	-- Halls of the Faithful
				1746,	-- Pride's Prison
				1747,	-- Nightcloak Sanctum
				1748,	-- The Observatorium
				1750,	-- Feast of Arrogance
				-- Sanctum of Domination
				1998,	-- Tower of the Damned
				1999,	-- Shadowsteel Foundry
				2000,	-- The Torment Chambers
				2001,	-- Crown of Gorgoa
				2002,	-- Pinnacle of Domination
				2003,	-- ??
				2004,	-- The Crucible
				-- Sepulcher of the First Ones
				2047,	-- Immortal Hearth
				2048,	-- Genesis Cradle
				2049,	-- The Endless Foundry
				2050,	-- Domination's Grasp
				2051,	-- Heart of Eternity
				2052,	-- The Grand Design
				2061,	-- Ephemeral Plains
			},
			["groups"] = {
				i(192466, {	-- Puzzling Cartel Dinar
					["bonusID"] = 3407,	-- "Priceless"
				}),
			},
		}),
		q(66650, {	-- Fate's Finale
			["sourceQuest"] = 66649,	-- Turning the Wheel
			["maps"] = {
				-- Castle Nathria
				1735,	-- The Grand Walk
				1744,	-- The Purloined Stores
				1745,	-- Halls of the Faithful
				1746,	-- Pride's Prison
				1747,	-- Nightcloak Sanctum
				1748,	-- The Observatorium
				1750,	-- Feast of Arrogance
				-- Sanctum of Domination
				1998,	-- Tower of the Damned
				1999,	-- Shadowsteel Foundry
				2000,	-- The Torment Chambers
				2001,	-- Crown of Gorgoa
				2002,	-- Pinnacle of Domination
				2003,	-- ??
				2004,	-- The Crucible
				-- Sepulcher of the First Ones
				2047,	-- Immortal Hearth
				2048,	-- Genesis Cradle
				2049,	-- The Endless Foundry
				2050,	-- Domination's Grasp
				2051,	-- Heart of Eternity
				2052,	-- The Grand Design
				2061,	-- Ephemeral Plains
			},
			["groups"] = {
				i(192466, {	-- Puzzling Cartel Dinar
					["bonusID"] = 3407,	-- "Priceless"
				}),
			},
		}),
		q(66696, {	-- Tempting Fate: Fate of the Shadowlands
			["timeline"] = { CREATED_9_2_7, ADDED_10_0_0, REMOVED_10_0_2_LAUNCH },
			["maps"] = {
				-- Castle Nathria
				1735,	-- The Grand Walk
				1744,	-- The Purloined Stores
				1745,	-- Halls of the Faithful
				1746,	-- Pride's Prison
				1747,	-- Nightcloak Sanctum
				1748,	-- The Observatorium
				1750,	-- Feast of Arrogance
				-- Sanctum of Domination
				1998,	-- Tower of the Damned
				1999,	-- Shadowsteel Foundry
				2000,	-- The Torment Chambers
				2001,	-- Crown of Gorgoa
				2002,	-- Pinnacle of Domination
				2003,	-- ??
				2004,	-- The Crucible
				-- Sepulcher of the First Ones
				2047,	-- Immortal Hearth
				2048,	-- Genesis Cradle
				2049,	-- The Endless Foundry
				2050,	-- Domination's Grasp
				2051,	-- Heart of Eternity
				2052,	-- The Grand Design
				2061,	-- Ephemeral Plains
			},
			["isWorldQuest"] = true,
		}),
	}),
})));
