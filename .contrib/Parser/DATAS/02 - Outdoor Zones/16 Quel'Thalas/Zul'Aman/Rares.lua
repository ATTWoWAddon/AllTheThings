---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ZULAMAN, {
	--	n(RARES, sharedData({ ["isDaily"] = true }, {
	--	})),
		n(RARES, {
			n(245692, {	-- Ash'an the Empowered
				["coord"] = { 45.2, 41.7, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 91073,
				["groups"] = {
					i(264593),	-- Warcloak of the Butcher
				},
			}),
			n(242027, {	-- Depthborn Eelamental
				["coord"] = { 47.8, 20.5, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89573,
				["groups"] = {
					i(264598),	-- Eelectrum Signet
					i(264618),	-- Strangely Eelastic Blade
				},
			}),
			n(242026, {	-- Elder Oaktalon
				["coord"] = { 33.7, 89.0, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89572,
				["groups"] = {
					i(264529),	-- Cover of the Furbolg Elder
					i(264547),	-- Worn Furbolg Bindings
				},
			}),
			n(242028, {	-- Lightwood Borer
				["coord"] = { 28.9, 24.4, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89575,
				["groups"] = {
					i(264640),	-- Sharpened Borer Claw
				},
			}),
			n(245975, {	-- Mrrlokk
				["coord"] = { 50.9, 65.2, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 91174,
				["groups"] = {
					i(264580),	-- Mrrlokk's Mrgl Grrdle
					i(264570),	-- Reinforced Chainmrrl
				},
			}),
			n(242023, {	-- Necrohexxer Raz'ka
				["coord"] = { 34.4, 33.0, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89569,
				["groups"] = {
					i(264611),	-- Pendant of Siphoned Vitality
					i(264527),	-- Vile Hexxer's Mantle
				},
			}),
			n(242032, {	-- Oophaga
				["coord"] = { 46.6, 51.3, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89579,
				["groups"] = {
					i(264541),	-- Egg-Swaddling Sash
					i(264528),	-- Goop-Coated Leggings
					i(265560),	-- Toughened Amani Leather Wrap
				},
			}),
			n(247976, {	-- Poacher Rav'ik
				["coord"] = { 39.0, 50.1, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 91634,
				["groups"] = {
					i(248583),	-- Drum of Renewed Bonds
					i(264911),	-- Forest Hunter's Arc
					i(264627),	-- Rav'ik's Spare Hunting Spear
				},
			}),
			n(242025, {	-- Skullcrusher Harak
				["coord"] = { 51.8, 72.9, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89571,
				["groups"] = {
					--i(248583),	-- Drum of Renewed Bonds
					i(264631),	-- Harak's Skullcutter
					i(264542),	-- Skullcrusher's Mantle
				},
			}),
			n(242031, {	-- Spinefrill
				["coord"] = { 30.5, 44.7, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89578,
				["groups"] = {
					i(264554),	-- Frilly Leather Vest
					i(251783),	-- Lost Idol of the Hash'ey
					i(264620),	-- Pufferspine Spellpierce
				},
			}),
			n(245691, {	-- The Decaying Diamondback
				["coord"] = { 46.4, 43.5, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 91072,
				["groups"] = {
					i(264525),	-- Wrapped Antenna Cuffs
				},
			}),
			n(242035, {	-- The Devouring Invader
				["coord"] = { 39.5, 20.8, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89583,
				["groups"] = {
					i(264559),	-- Devourer's Visage
					i(264638),	-- Fangs of the Invader
					i(265543),	-- Tempered Amani Spearhead
				},
			}),
			n(242024, {	-- The Snapping Scourge
				["coord"] = { 51.8, 18.6, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89570,
				["groups"] = {
					i(264617),	-- Scourge's Spike
					i(264585),	-- Snapper Steppers
					i(251784),	-- Sylvan Wakrapuku
				},
			}),
			n(242033, {	-- Tiny Vermin
				["coord"] = { 47.7, 34.4, MAP.MIDNIGHT.ZULAMAN },
				--["questID"] = 89580,	-- TODO: Blizzard bug - share questID with Waverly rare
				["groups"] = {
					i(264597),	-- Leechtooth Band
					i(264648),	-- Verminscale Gavel
				},
			}),
			n(242034, {	-- Voidtouched Crustacean
				["coord"] = { 21.5, 70.7, MAP.MIDNIGHT.ZULAMAN },
				--["questID"] = 89580,	-- TODO: Blizzard bug - share questID with Waverly rare
				["groups"] = {
					i(264564),	-- Crab Wrangling Harness
				},
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.ZULAMAN, {
			n(RARES, {
				q(94710, {	-- Weekly reputation: Ash'an the Empowered
					["name"] = "Ash'an the Empowered weekly reputation obtained.",
				}),
				q(94708, {	-- Weekly reputation: Depthborn Eelamental
					["name"] = "Depthborn Eelamental weekly reputation obtained.",
				}),
				q(94707, {	-- Weekly reputation: Elder Oaktalon
					["name"] = "Elder Oaktalon weekly reputation obtained.",
				}),
				q(94699, {	-- Weekly reputation: Lightwood Borer
					["name"] = "Lightwood Borer weekly reputation obtained.",
				}),
				q(94700, {	-- Weekly reputation: Mrrlokk
					["name"] = "Mrrlokk weekly reputation obtained.",
				}),
				q(94683, {	-- Weekly reputation: Necrohexxer Raz'ka
					["name"] = "Necrohexxer Raz'ka weekly reputation obtained.",
				}),
				q(94703, {	-- Weekly reputation: Oophaga
					["name"] = "Oophaga weekly reputation obtained.",
				}),
				q(94701, {	-- Weekly reputation: Poacher Rav'ik
					["name"] = "Poacher Rav'ik weekly reputation obtained.",
				}),
				q(94698, {	-- Weekly reputation: Skullcrusher Harak
					["name"] = "Skullcrusher Harak weekly reputation obtained.",
				}),
				q(94702, {	-- Weekly reputation: Spinefrill
					["name"] = "Spinefrill weekly reputation obtained.",
				}),
				q(94709, {	-- Weekly reputation: The Decaying Diamondback
					["name"] = "The Decaying Diamondback weekly reputation obtained.",
				}),
				q(94706, {	-- Weekly reputation: The Devouring Invader
					["name"] = "The Devouring Invader weekly reputation obtained.",
				}),
				q(94697, {	-- Weekly reputation: The Snapping Scourge
					["name"] = "The Snapping Scourge weekly reputation obtained.",
				}),
				q(94704, {	-- Weekly reputation: Tiny Vermin	-- TODO: Blizzard bug -- could also share questID with Waverly too
					["name"] = "Tiny Vermin weekly reputation obtained.",
				}),
			}),
		}),
	}),
}));
