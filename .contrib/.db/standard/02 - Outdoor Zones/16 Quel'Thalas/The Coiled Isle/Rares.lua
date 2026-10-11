---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		n(RARES, sharedData({ ["isDaily"] = true }, {
			n(COMMON_BOSS_DROPS, {
				["isDaily"] = IGNORED_VALUE,
				["crs"] = {
					256631,	-- Big Mon
					257906,	-- Coin-Eye Skully
					261142,	-- Destra
					264854,	-- Farthik the Plunderer
					258916,	-- Garsecg
					265262,	-- Hisstara
					268090,	-- Kari'zah the Forgotten
					265237,	-- Lockjaw
					258920,	-- Nar'zira
					268049,	-- Siltmouth
					261109,	-- Sss'alik
					263456,	-- Szarith The Fanged
				},
				["groups"] = {
					i(276803),	-- Ruby Writhe (MOUNT!)
					i(276549),	-- Topaz Skyfang (MOUNT!)
				},
			}),
			n(256631, {	-- Big Mon <Ancient Amani Warband>
				["coord"] = { 69.8, 63.5, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 93829,
				["groups"] = {
					i(280540),	-- Lil' Mon (PET!)
					i(280689),	-- Big Mon's Big Spear
					i(280713),	-- Big Mon's Buckle
					hqt_bonusRenown(98353, FACTION_ZULJARRAS_FORCES),	-- Bonus Rep: Big Mon
				},
			}),
			n(257906, {	-- Coin-Eye Skully
				["coord"] = { 58.0, 66.5, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 94619,
				["groups"] = {
					i(280715),	-- Eye of Skully
					i(280695),	-- Skully's Skullcleaver
					hqt_bonusRenown(98352, FACTION_ZULJARRAS_FORCES),	-- Bonus Rep: Coin-Eye Skully
				},
			}),
			n(261142, {	-- Destra
				["coord"] = { 52.1, 32.3, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 95452,
				["groups"] = {
					i(280712),	-- Bracers of the Sleeping Hydra
					i(280709),	-- Triple Threat Pauldrons
					hqt_bonusRenown(98355, FACTION_ZULJARRAS_FORCES),	-- Bonus Rep: Destra
				},
			}),
			n(264854, {	-- Farthik the Plunderer
				["coord"] = { 53.8, 72.0, MAP.MIDNIGHT.THE_COILED_ISLE },
				["provider"] = { "o", 653176 },	-- Unguarded Chest
				["questID"] = 96491,
				["groups"] = {
					i(280717),	-- Farthik's Precious Pendant
					i(280692),	-- Plunderer's Pummeler
					hqt_bonusRenown(98344, FACTION_ZULJARRAS_FORCES),	-- Bonus Rep: Farthik the Plunderer
				},
			}),
			n(258916, {	-- Garsecg <The Hull Render>
				["coord"] = { 69.7, 44.9, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 94856,
				["groups"] = {
					i(280710),	-- Garsecg's Barnacled Girdle
					i(280714),	-- Hull Render Hauberk
					hqt_bonusRenown(98350, FACTION_ZULJARRAS_FORCES),	-- Bonus Rep: Garsecg
				},
			}),
			n(265262, {	-- Hisstara <The Raiser>
				["coord"] = { 43.9, 50.8, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 96464,
				["groups"] = {
					i(280691),	-- Dagger of the Slithering Ritual
					i(280702),	-- Mantle of the Riser
					hqt_bonusRenown(98348, FACTION_ZULJARRAS_FORCES),	-- Bonus Rep: Hisstara
				},
			}),
			n(268090, {	-- Kari'zah the Forgotten
				["coord"] = { 24.9, 73.5, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 97122,
				["groups"] = {
					i(280694),	-- Blade of the Forgotten
					i(280711),	-- Pitted Specter Shackles
					hqt_bonusRenown(98346, FACTION_ZULJARRAS_FORCES),	-- Bonus Rep: Kari'zah the Forgotten
				},
			}),
			n(265237, {	-- Lockjaw <The Snapper>
				["coord"] = { 31.7, 56.7, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 96456,
				["groups"] = {
					i(280690),	-- Bow of the Snapper
					i(280708),	-- Venom-Shelled Sash
					hqt_bonusRenown(98347, FACTION_ZULJARRAS_FORCES),	-- Bonus Rep: Lockjaw
				},
			}),
			n(258920, {	-- Nar'zira <The Omnilegent>
				["coord"] = { 63.2, 62.4, 2642 },	-- Tomb of the Lost Priest
				["questID"] = 94860,
				["groups"] = {
					i(280716),	-- Locket of the Omnilegent
					i(280693),	-- Staff of All-Knowing
					hqt_bonusRenown(98351, FACTION_ZULJARRAS_FORCES),	-- Bonus Rep: Nar'zira
				},
			}),
			n(268049, {	-- Siltmouth <The Unflappable>
				["coord"] = { 50.2, 69.0, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 97112,
				["groups"] = {
					i(280704),	-- Siltmouth's Venom Waders
					i(280718),	-- Unflappable Flapping Cape
					hqt_bonusRenown(98345, FACTION_ZULJARRAS_FORCES),	-- Bonus Rep: Siltmouth
				},
			}),
			n(261109, {	-- Sss'alik <The Rotten Claw>
				["coord"] = { 58.1, 40.1, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 95447,
				["groups"] = {
					i(280700),	-- Armbands of the Rotten Claw
					i(280706),	-- Sss'alik's Rotting Claws
					hqt_bonusRenown(98354, FACTION_ZULJARRAS_FORCES),	-- Bonus Rep: Sss'alik
				},
			}),
			n(263456, {	-- Szarith The Fanged
				["coord"] = { 38.0, 17.5, 2613 },	-- The Underbelly, Vaults of Atal'Utek
				["questID"] = 96030,
				["groups"] = {
					i(280698),	-- Szarith's Underbelly Slicer
					i(280701),	-- Waistwrap of the Fanged
					hqt_bonusRenown(98349, FACTION_ZULJARRAS_FORCES),	-- Bonus Rep: Szarith The Fanged
				},
			}),
		})),
	}),
}));
