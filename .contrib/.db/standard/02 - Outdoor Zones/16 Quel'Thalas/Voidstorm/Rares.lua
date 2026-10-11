---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
		n(RARES, sharedData({ ["isDaily"] = true }, {
			n(COMMON_BOSS_DROPS, {
				["isDaily"] = IGNORED_VALUE,
				["crs"] = {
					256924,	-- Aeonelle Blackstar
					256923,	-- Bane of the Vilebloods
					256770,	-- Bilemaw the Gluttonous
					245182,	-- Eruundi
					256821,	-- Far'thana the Mad
					257231,	-- Gar'chak Skullcleave
					257199,	-- Hardin Steellock
					256925,	-- Lotus Darkblossom
					245044,	-- Nightbrood
					256926,	-- Queen o' War
					257027,	-- Rakshur the Bonegrinder
					256808,	-- Ravengerus
					256922,	-- Screammaxa the Matriarch
					244272,	-- Sundereth the Caller
					238498,	-- Territorial Voidscythe
					241443,	-- Tremora
				},
				["groups"] = {
					i(257085),	-- Augmented Stormray (MOUNT!)
					i(260635),	-- Sanguine Harrower (MOUNT!)
				},
			}),
			n(256924, {	-- Aeonelle Blackstar
				["coord"] = { 39.2, 64.0, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93944,
				["groups"] = {
					i(264637),	-- Cosmic Hunter's Glaive
					i(264549),	-- Ever-Devouring Shoulderguards
					hqt_bonusRenown(94751, FACTION_THE_SINGULARITY),	-- Bonus Rep: Aeonelle Blackstar
				},
			}),
			n(256923, {	-- Bane of the Vilebloods
				["coord"] = { 47.0, 80.6, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93946,
				["groups"] = {
					i(264572),	-- Netherplate Clasp
					i(264558),	-- Vileblood Resistant Sabatons
					hqt_bonusRenown(94732, FACTION_THE_SINGULARITY),	-- Bonus Rep: Bane of the Vilebloods
				},
			}),
			n(256770, {	-- Bilemaw the Gluttonous
				["coord"] = { 35.5, 50.2, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93884,
				["groups"] = {
					i(264579),	-- Hungering Wristplates
					i(264623),	-- Shredding Fang
					hqt_bonusRenown(94752, FACTION_THE_SINGULARITY),	-- Bonus Rep: Bilemaw the Gluttonous
				},
			}),
			n(245182, {	-- Eruundi
				["coord"] = { 41.6, 90.6, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				["questID"] = 91047,
				["groups"] = {
					i(264600),	-- Ancient Argussian Band
					i(264563),	-- Eruundi's Wristguards
					hqt_bonusRenown(94754, FACTION_THE_SINGULARITY),	-- Bonus Rep: Eruundi
				},
			}),
			n(256821, {	-- Far'thana the Mad
				["coord"] = { 53.8, 62.7, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93896,
				["groups"] = {
					i(264913),	-- Focused Netherslicer
					i(264912),	-- Void-Channeler's Spire
					hqt_bonusRenown(94755, FACTION_THE_SINGULARITY),	-- Bonus Rep: Far'thana the Mad
				},
			}),
			n(257231, {	-- Gar'chak Skullcleave
				["crs"] = {
					257249,	-- Neevus
					257245,	-- Veserra
				},
				["coord"] = { 70.6, 77.0, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				["questID"] = 94461,
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(264609),	-- Gar'chak's Mark of Honor
					i(264641),	-- Sharpened Skullcleaver
					hqt_bonusRenown(94756, FACTION_THE_SINGULARITY),	-- Bonus Rep: Gar'chak Skullcleave
				},
			}),
			n(257199, {	-- Hardin Steellock
				["crs"] = {
					257228,	-- Bolvin
					257213,	-- Solaria Fusebot
				},
				["coord"] = { 28.7, 57.0, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				["questID"] = 94461,
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(264615),	-- Hardin's Backup Blade
					i(264599),	-- Kul'Tiran Signet Ring
					hqt_bonusRenown(94757, FACTION_THE_SINGULARITY),	-- Bonus Rep: Hardin Steellock
				},
			}),
			n(256925, {	-- Lotus Darkblossom
				["coord"] = { 37.9, 71.8, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93947,
				["groups"] = {
					i(264632),	-- Darkblossom's Crook
					i(264548),	-- Sash of Cosmic Tranquility
					hqt_bonusRenown(94758, FACTION_THE_SINGULARITY),	-- Bonus Rep: Lotus Darkblossom
				},
			}),
			n(245044, {	-- Nightbrood
				["coord"] = { 40.2, 41.5, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 91051,
				["groups"] = {
					i(264574),	-- Netherterror's Legplates
					i(264551),	-- Nightbrood's Jaw
					hqt_bonusRenown(94759, FACTION_THE_SINGULARITY),	-- Bonus Rep: Nightbrood
				},
			}),
			n(256926, {	-- Queen o' War
				["provider"] = { "o", 617692 },	-- Queen o' War
				["coord"] = { 55.7, 79.4, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93934,
				["groups"] = {
					i(264601),	-- Queen's Eye Band
					i(264533),	-- Queen's Tentacle Sash
					hqt_bonusRenown(94761, FACTION_THE_SINGULARITY),	-- Bonus Rep: Queen o' War
				},
			}),
			n(257027, {	-- Rakshur the Bonegrinder
				["coord"] = { 46.5, 40.8, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				["questID"] = 93953,
				["groups"] = {
					i(264630),	-- Colossal Voidsunderer
					i(264561),	-- Primal Bonestompers
					hqt_bonusRenown(94762, FACTION_THE_SINGULARITY),	-- Bonus Rep: Rakshur the Bonegrinder
				},
			}),
			n(256808, {	-- Ravengerus
				["coord"] = { 48.8, 53.2, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93895,
				["groups"] = {
					i(264535),	-- Leggings of the Cosmic Harrower
					i(264589),	-- Voidfused Wing Cloak
					hqt_bonusRenown(94763, FACTION_THE_SINGULARITY),	-- Bonus Rep: Ravengerus
				},
			}),
			n(256922, {	-- Screammaxa the Matriarch
				["coord"] = { 43.7, 51.5, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93966,
				["groups"] = {
					i(264583),	-- Barbute of the Winged Hunter
					i(264545),	-- Harrower-Claw Grips
					hqt_bonusRenown(94731, FACTION_THE_SINGULARITY),	-- Bonus Rep: Screammaxa the Matriarch
				},
			}),
			n(244272, {	-- Sundereth the Caller
				["coord"] = { 29.5, 50.1, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 90805,
				["groups"] = {
					i(264619),	-- Nethersteel Spellblade
					i(264539),	-- Robes of the Voidcaller
					hqt_bonusRenown(94728, FACTION_THE_SINGULARITY),	-- Bonus Rep: Sundereth the Caller
				},
			}),
			n(238498, {	-- Territorial Voidscythe
				["coord"] = { 34.1, 82.1, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 91050,
				["groups"] = {
					i(264642),	-- Carving Voidscythe
					i(264565),	-- Voidscale Shoulderpads
					hqt_bonusRenown(94729, FACTION_THE_SINGULARITY),	-- Bonus Rep: Territorial Voidscythe
				},
			}),
			n(241443, {	-- Tremora
				["coord"] = { 36.0, 83.3, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 91048,
				["groups"] = {
					i(264610),	-- Escaped Specimen's ID Tag
					i(264646),	-- Specimen Sinew Longbow
					i(264565),	-- Voidscale Shoulderpads
					hqt_bonusRenown(94730, FACTION_THE_SINGULARITY),	-- Bonus Rep: Tremora
				},
			}),
			--Stormarion Assault rares
			n(248700, {	-- Abysslick
				["coord"] = { 28.2, 66.0, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 94462,
				["groups"] = {
					i(264634),	-- Spire of Flowing Void
					i(264596),	-- Voidthread Veil
					hqt_bonusRenown(94750, FACTION_THE_SINGULARITY),	-- Bonus Rep: Abysslick
				},
			}),
			n(248823, {	-- Blackcore
				["providers"] = {
					{ "n", 248907 },	-- Blackcore (vignette, pop if ready to be summoned?)
					{ "n", 248825 },	-- Mid phase before actually spawned
				},
				["coord"] = { 24.8, 68.0, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 94463,
				["cost"] = { { "i", 248680, 3 } },	-- 3x Unstable Focusing Crystal
				["groups"] = {
					i(264606),	-- Netherlocus Amulet
					i(264519),	-- Repurposed Voidwalker's Chestplate
					hqt_bonusRenown(94753, FACTION_THE_SINGULARITY),	-- Bonus Rep: Blackcore
				},
			}),
			n(248068, {	-- Nullspiral
				["coord"] = { 29.8, 67.9, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 94460,
				["groups"] = {
					i(264531),	-- Shadowthread Slippers
					i(264588),	-- Shawl of Cosmic Whispers
					hqt_bonusRenown(94760, FACTION_THE_SINGULARITY),	-- Bonus Rep: Nullspiral
				},
			}),
			n(248459, {	-- The Many-Broken
				["coord"] = { 28.8, 70.2, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 94458,
				["groups"] = {
					i(264577),	-- Crystalforged Boots
					i(264651),	-- Resonating Traumatizer
					hqt_bonusRenown(94764, FACTION_THE_SINGULARITY),	-- Bonus Rep: The Many-Broken
				},
			}),
			n(248791, {	-- Voidseer Orivane
				["coords"] = {
					{ 30.1, 69.3, MAP.MIDNIGHT.VOIDSTORM },
					{ 30.3, 66.5, MAP.MIDNIGHT.VOIDSTORM },
				},
				["questID"] = 94459,
				["groups"] = {
					i(264628),	-- Spear of Nothingness
					i(264556),	-- Voidforged Cinch
					hqt_bonusRenown(94765, FACTION_THE_SINGULARITY),	-- Bonus Rep: Voidseer Orivane
				},
			}),
		})),
	}),
}))
