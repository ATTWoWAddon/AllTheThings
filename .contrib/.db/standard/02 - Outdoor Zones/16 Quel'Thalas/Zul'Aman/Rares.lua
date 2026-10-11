---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ZULAMAN, {
		n(RARES, sharedData({ ["isDaily"] = true }, {
			n(COMMON_BOSS_DROPS, {
				["isDaily"] = IGNORED_VALUE,
				["crs"] = {
					245692,	-- Ash'an the Empowered
					242027,	-- Depthborn Eelamental
					242026,	-- Elder Oaktalon
					242028,	-- Lightwood Borer
					245975,	-- Mrrlokk
					242023,	-- Necrohexxer Raz'ka
					242032,	-- Oophaga
					247976,	-- Poacher Rav'ik
					242025,	-- Skullcrusher Harak
					242031,	-- Spinefrill
					245691,	-- The Decaying Diamondback
					242035,	-- The Devouring Invader
					242024,	-- The Snapping Scourge
					242033,	-- Tiny Vermin
					242034,	-- Voidtouched Crustacean
				},
				["groups"] = {
					i(257152),	-- Amani Sharptalon (MOUNT!)
					i(257200),	-- Escaped Witherbark Pango (MOUNT!)
					i(265554),	-- Reinforced Amani Haft
					i(265543),	-- Tempered Amani Spearhead
					i(265560),	-- Toughened Amani Leather Wrap
				},
			}),
			n(245692, {	-- Ash'an the Empowered
				["coord"] = { 45.2, 41.7, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 91073,
				["groups"] = {
					i(264643),	-- Ash'an's Spare Cleaver
					i(264593),	-- Warcloak of the Butcher
					hqt_bonusRenown(94710, FACTION_AMANI_TRIBE),	-- Bonus Rep: Ash'an the Empowered
				},
			}),
			n(242027, {	-- Depthborn Eelamental
				["coord"] = { 47.8, 20.5, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89573,
				["groups"] = {
					i(264598),	-- Eelectrum Signet
					i(264618),	-- Strangely Eelastic Blade
					hqt_bonusRenown(94708, FACTION_AMANI_TRIBE),	-- Bonus Rep: Depthborn Eelamental
				},
			}),
			n(242026, {	-- Elder Oaktalon
				["coord"] = { 33.7, 89.0, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89572,
				["groups"] = {
					i(264529),	-- Cover of the Furbolg Elder
					i(264547),	-- Worn Furbolg Bindings
					hqt_bonusRenown(94707, FACTION_AMANI_TRIBE),	-- Bonus Rep: Elder Oaktalon
				},
			}),
			n(242028, {	-- Lightwood Borer
				["coord"] = { 28.9, 24.4, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89575,
				["groups"] = {
					i(264557),	-- Borerplate Pauldrons
					i(264640),	-- Sharpened Borer Claw
					hqt_bonusRenown(94699, FACTION_AMANI_TRIBE),	-- Bonus Rep: Lightwood Borer
				},
			}),
			n(245975, {	-- Mrrlokk
				["coord"] = { 50.9, 65.2, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 91174,
				["groups"] = {
					i(264580),	-- Mrrlokk's Mrgl Grrdle
					i(264570),	-- Reinforced Chainmrrl
					hqt_bonusRenown(94700, FACTION_AMANI_TRIBE),	-- Bonus Rep: Mrrlokk
				},
			}),
			n(242023, {	-- Necrohexxer Raz'ka
				["coord"] = { 34.4, 33.0, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89569,
				["groups"] = {
					i(264611),	-- Pendant of Siphoned Vitality
					i(264527),	-- Vile Hexxer's Mantle
					hqt_bonusRenown(94683, FACTION_AMANI_TRIBE),	-- Bonus Rep: Necrohexxer Raz'ka
				},
			}),
			n(242032, {	-- Oophaga
				["coord"] = { 46.6, 51.3, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89579,
				["groups"] = {
					i(264541),	-- Egg-Swaddling Sash
					i(264528),	-- Goop-Coated Leggings
					hqt_bonusRenown(94703, FACTION_AMANI_TRIBE),	-- Bonus Rep: Oophaga
				},
			}),
			n(247976, {	-- Poacher Rav'ik
				["coord"] = { 39.0, 50.1, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 91634,
				["groups"] = {
					i(264911),	-- Forest Hunter's Arc
					i(264627),	-- Rav'ik's Spare Hunting Spear
					hqt_bonusRenown(94701, FACTION_AMANI_TRIBE),	-- Bonus Rep: Poacher Rav'ik
				},
			}),
			n(242025, {	-- Skullcrusher Harak
				["coord"] = { 51.8, 72.9, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89571,
				["groups"] = {
					i(264631),	-- Harak's Skullcutter
					i(264542),	-- Skullcrusher's Mantle
					hqt_bonusRenown(94698, FACTION_AMANI_TRIBE),	-- Bonus Rep: Skullcrusher Harak
				},
			}),
			n(242031, {	-- Spinefrill
				["coord"] = { 30.5, 44.7, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89578,
				["groups"] = {
					i(264554),	-- Frilly Leather Vest
					i(251783),	-- Lost Idol of the Hash'ey
					i(264620),	-- Pufferspine Spellpierce
					hqt_bonusRenown(94702, FACTION_AMANI_TRIBE),	-- Bonus Rep: Spinefrill
				},
			}),
			n(245691, {	-- The Decaying Diamondback
				["provider"] = { "n", 246122 },	-- Worm Wrangler
				["coord"] = { 46.4, 43.5, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 91072,
				["groups"] = {
					i(264582),	-- Diamondback-Scale Legguards
					i(264525),	-- Wrapped Antenna Cuffs
					hqt_bonusRenown(94709, FACTION_AMANI_TRIBE),	-- Bonus Rep: The Decaying Diamondback
				},
			}),
			n(242035, {	-- The Devouring Invader
				["coord"] = { 39.5, 20.8, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89583,
				["groups"] = {
					i(264559),	-- Devourer's Visage
					i(264638),	-- Fangs of the Invader
					hqt_bonusRenown(94706, FACTION_AMANI_TRIBE),	-- Bonus Rep: The Devouring Invader
				},
			}),
			n(242024, {	-- The Snapping Scourge
				["coord"] = { 51.8, 18.6, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89570,
				["groups"] = {
					i(264617),	-- Scourge's Spike
					i(264585),	-- Snapper Steppers
					hqt_bonusRenown(94697, FACTION_AMANI_TRIBE),	-- Bonus Rep: The Snapping Scourge
				},
			}),
			n(242033, {	-- Tiny Vermin
				["coord"] = { 47.7, 34.4, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89580,
				["groups"] = {
					i(264597),	-- Leechtooth Band
					i(264648),	-- Verminscale Gavel
					hqt_bonusRenown(94704, FACTION_AMANI_TRIBE),	-- Bonus Rep: Tiny Vermin
				},
			}),
			n(242034, {	-- Voidtouched Crustacean
				["crs"] = {
					246074,	-- Voidtouched Hatchling
					249712,	-- Zo'gosh
				},
				["coord"] = { 21.4, 70.6, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89581,
				["groups"] = {
					i(264564),	-- Crab Wrangling Harness
					i(264586),	-- Crustacean Carapace Chestguard
					hqt_bonusRenown(94705, FACTION_AMANI_TRIBE),	-- Bonus Rep: Voidtouched Crustacean
				},
			}),
		})),
	}),
}))
