---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
	--	n(RARES, sharedData({ ["isDaily"] = true }, {
	--	})),
		n(RARES, {
			n(256924, {	-- Aeonelle Blackstar
				["coord"] = { 39.2, 64.0, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93944,
				["groups"] = {
					i(264549),	-- Ever-Devouring Shoulderguards
				},
			}),
			n(256923, {	-- Bane of the Vilebloods
				["coord"] = { 47.0, 80.6, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93946,
				["groups"] = {
					i(264558),	-- Vileblood Resistant Sabatons
				},
			}),
			n(256770, {	-- Bilemaw the Gluttonous
				["coord"] = { 35.5, 50.2, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93884,
				["groups"] = {
					i(264579),	-- Hungering Wristplates
				},
			}),
			n(245182, {	-- Eruundi
				["coord"] = { 41.6, 90.6, SLAYERS_RISE_OUTDOOR },
				["questID"] = 91047,
				["groups"] = {
					i(264600),	-- Ancient Argussian Band
				},
			}),
			n(256821, {	-- Far'thana the Mad
				["coord"] = { 53.8, 62.7, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93896,
				["groups"] = {
					i(264912),	-- Void-Channeler's Spire
				},
			}),
			n(257231, {	-- Gar'chak Skullcleave
				["crs"] = {
					257249,	-- Neevus
					257245,	-- Veserra
				},
				["coord"] = { 75.8, 79.5, SLAYERS_RISE_OUTDOOR },	-- a bit off, didn't kill it
				--["questID"] = XXXX,	-- missing questID
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					--no loot table
				},
			}),
			n(257199, {	-- Hardin Steellock
				["crs"] = {
					257228,	-- Bolvin
					257213,	-- Solaria Fusebot
				},
				["coord"] = { 28.7, 57.0, SLAYERS_RISE_OUTDOOR },
				["questID"] = 94461,	--TODO: could be weekly (rep) questID?
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(264701),	-- Cosmic Bell (TODO: could be Midnight zone reward)
				},
			}),
			n(256925, {	-- Lotus Darkblossom
				["coord"] = { 37.9, 71.8, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93947,
				["groups"] = {
					i(264632),	-- Darkblossom's Crook
				},
			}),
			n(245044, {	-- Nightbrood
				["coord"] = { 40.2, 41.5, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 91051,
				["groups"] = {
					i(264574),	-- Netherterror's Legplates
				},
			}),
			n(256926, {	-- Queen o' War
				["coord"] = { 55.7, 79.4, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93934,
				["groups"] = {
					i(264601),	-- Queen's Eye Band
				},
			}),
			n(257027, {	-- Rakshur the Bonegrinder
				["coord"] = { 46.5, 40.8, SLAYERS_RISE_OUTDOOR },
				["questID"] = 93953,
				["groups"] = {
					i(264694),	-- Ultradon Cuirass
				},
			}),
			n(256808, {	-- Ravengerus
				["coord"] = { 48.8, 53.2, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93895,
				["groups"] = {
					i(264589),	-- Voidfused Wing Cloak
				},
			}),
			n(244272, {	-- Screammaxa the Matriarch
				["coord"] = { 43.7, 51.5, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93966,
				["groups"] = {
					i(264583),	-- Barbute of the Winged Hunter
				},
			}),
			n(244272, {	-- Sundereth the Caller
				["coord"] = { 29.5, 50.1, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 90805,
				["groups"] = {
					i(264539),	-- Robes of the Voidcaller
				},
			}),
			n(238498, {	-- Territorial Voidscythe
				["coord"] = { 34.1, 82.1, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 91050,
				["groups"] = {
					i(264565),	-- Voidscale Shoulderpads
				},
			}),
			n(241443, {	-- Tremora
				["coord"] = { 36.0, 83.3, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 91048,
				["groups"] = {
					i(264565),	-- Voidscale Shoulderpads
				},
			}),
			--Stormarion Assault rares
			n(248700, {	-- Abysslick
				["coord"] = { 28.2, 66.0, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 94462,
				["isWeekly"] = true,
				["groups"] = {
					i(264596),	-- Voidthread Veil
				},
			}),
			n(248823, {	-- Blackcore
				["coord"] = { 24.8, 68.0, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 94463,
				["cost"] = { { "i", 248680, 3 } },	-- 3x Unstable Focusing Crystal
				["isWeekly"] = true,
				["groups"] = {
					i(264606),	-- Netherlocus Amulet
				},
			}),
			n(248068, {	-- Nullspiral
				["coord"] = { 29.8, 67.9, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 94460,
				["isWeekly"] = true,
				["groups"] = {
					i(264531),	-- Shadowthread Slippers
				},
			}),
			n(248459, {	-- The Many-Broken
				["coord"] = { 28.8, 70.2, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 94458,
				["isWeekly"] = true,
				["groups"] = {
					i(264651),	-- Resonating Traumatizer
				},
			}),
			n(248791, {	-- Voidseer Orivane
				["coord"] = { 30.1, 69.3, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 94459,
				["isWeekly"] = true,
				["groups"] = {
					i(251786),	-- Ever-Collapsing Void Fissure
				},
			}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.VOIDSTORM, {
			n(RARES, {
				q(94751, {	-- Weekly reputation: Aeonelle Blackstar
					["name"] = "Aeonelle Blackstar weekly reputation obtained.",
				}),
				q(94732, {	-- Weekly reputation: Bane of the Vilebloods
					["name"] = "Bane of the Vilebloods weekly reputation obtained.",
				}),
				q(94752, {	-- Weekly reputation: Bilemaw the Gluttonous
					["name"] = "Bilemaw the Gluttonous weekly reputation obtained.",
				}),
				q(94754, {	-- Weekly reputation: Eruundi
					["name"] = "Eruundi weekly reputation obtained.",
				}),
				q(94755, {	-- Weekly reputation: Far'thana the Mad
					["name"] = "Far'thana the Mad weekly reputation obtained.",
				}),
				q(94758, {	-- Weekly reputation: Lotus Darkblossom
					["name"] = "Lotus Darkblossom weekly reputation obtained.",
				}),
				q(94759, {	-- Weekly reputation: Nightbrood
					["name"] = "Nightbrood weekly reputation obtained.",
				}),
				q(94761, {	-- Weekly reputation: Queen o' War
					["name"] = "Queen o' War weekly reputation obtained.",
				}),
				q(94762, {	-- Weekly reputation: Rakshur the Bonegrinder
					["name"] = "Rakshur the Bonegrinder weekly reputation obtained.",
				}),
				q(94763, {	-- Weekly reputation: Ravengerus
					["name"] = "Ravengerus weekly reputation obtained.",
				}),
				q(94731, {	-- Weekly reputation: Screammaxa the Matriarch
					["name"] = "Screammaxa the Matriarch weekly reputation obtained.",
				}),
				q(94728, {	-- Weekly reputation: Sundereth the Caller
					["name"] = "Sundereth the Caller weekly reputation obtained.",
				}),
				q(94729, {	-- Weekly reputation: Territorial Voidscythe
					["name"] = "Territorial Voidscythe weekly reputation obtained.",
				}),
				q(94730, {	-- Weekly reputation: Tremora
					["name"] = "Tremora weekly reputation obtained.",
				}),
				--Stormarion Assault rares seems like weekly?
				--q(YYYYY, {	-- Weekly reputation: Abysslick
				--	["name"] = "Abysslick weekly reputation obtained.",
				--}),
				--q(YYYYY, {	-- Weekly reputation: Blackcore
				--	["name"] = "Blackcore weekly reputation obtained.",
				--}),
				--q(YYYYY, {	-- Weekly reputation: Nullspiral
				--	["name"] = "Nullspiral weekly reputation obtained.",
				--}),
				--q(YYYYY, {	-- Weekly reputation: The Many-Broken
				--	["name"] = "The Many-Broken weekly reputation obtained.",
				--}),
				--q(YYYYY, {	-- Weekly reputation: Voidseer Orivane
				--	["name"] = "Voidseer Orivane weekly reputation obtained.",
				--}),
			}),
		}),
	}),
}));