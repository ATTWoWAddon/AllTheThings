---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.EVERSONG_WOODS, {
		i(257156),	-- Cerulean Hawkstrider
		i(257147),	-- Cobalt Dragonhawk
	--	n(RARES, sharedData({ ["isDaily"] = true }, {
	--	})),
		n(RARES, {
			n(250841, {	-- Bad Zed
				["coord"] = { 49.0, 87.9, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 92404,
				["groups"] = {
					i(264621),	-- Bad Zed's Worst Channeler
					i(264536),	-- Zedling Summoning Collar
				},
			}),
			n(250826, {	-- Banuran
				["coord"] = { 56.4, 77.6, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 92403,
				["groups"] = {
					i(264552),	-- Frogskin Grips
					i(264526),	-- Supremely Slimy Sash
				},
			}),
			n(250582, {	-- Bloated Snapdragon
				["coord"] = { 36.6, 64.0, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 92366,
				["groups"] = {
					i(264560),	-- Sharpclaw Gauntlets
					i(264543),	-- Snapdragon Pantaloons
				},
			}),
			n(250683, {	-- Coralfang
				["coord"] = { 36.4, 36.4, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 92389,
				["groups"] = {
					i(264602),	-- Abyss Coral Band
					i(264629),	-- Coralfang's Hefty Fin
				},
			}),
			n(250719, {	-- Cre'van
				["coord"] = { 63.2, 50.0, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 92391,
				["groups"] = {
					i(264647),	-- Cre'van's Punisher
					i(265027),	-- Lucky Lynx Locket
					i(264573),	-- Taskmaster's Sadistic Shoulderguards
				},
			}),
			n(255348, {	-- Dame Bloodshed
				["coord"] = { 44.8, 38.5, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93561,
				["groups"] = {
					i(264624),	-- Fang of the Dame
					i(265027),	-- Lucky Lynx Locket
					i(264595),	-- Lynxhide Shawl
				},
			}),
			n(255302, {	-- Duskburn
				["coord"] = { 42.3, 69.0, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93550,
				["groups"] = {
					--i(251791),	-- Holy Retributor's Order
					i(264594),	-- Netherscale Cloak
					i(264569),	-- Void-Gorged Kickers
				},
			}),
			n(246633, {	-- Harried Hawkstrider
				["coord"] = { 45.0, 78.9, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 91315,
				["groups"] = {
					i(264522),	-- Striderplume Armbands
					i(264521),	-- Striderplume Focus
				},
			}),
			n(250754, {	-- Lady Liminus
				["coord"] = { 36.6, 77.2, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 92393,
				["groups"] = {
					i(264645),	-- Aged Farstrider Bow
					i(264612),	-- Tarnished Gold Locket
				},
			}),
			n(250806, {	-- Lost Guardian
				--could be locked/phased behind quests in area?
				["coord"] = { 59.1, 79.2, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 92399,
				["groups"] = {
					i(251788),	-- Gift of Light
					i(264575),	-- Hexwood Helm
					i(264555),	-- Splintered Hexwood Clasps
				},
			}),
			n(255329, {	-- Malfunctioning Construct
				["coord"] = { 51.7, 46.0, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93555,
				["groups"] = {
					i(264603),	-- Guardian's Gemstone Loop
					i(264584),	-- Stonecarved Smashers
				},
			}),
			n(240129, {	-- Overfester Hydra (vignette - Dormant Lightbloom Hydra)
				["coord"] = { 54.7, 60.4, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 92392,
				["groups"] = {
					i(264523),	-- Hydrafang Blade
					i(264524),	-- Lightblighted Verdant Vest
				},
			}),
			n(250876, {	-- Terrinor
				["coord"] = { 40.3, 85.3, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 92409,
				["groups"] = {
					i(264546),	-- Bat Fur Boots
					i(264537),	-- Winged Terror Gloves
				},
			}),
			n(246332, {	-- Warden of Weeds
				["coord"] = { 52.7, 75.0, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 91280,
				["groups"] = {
					i(264613),	-- Steelbark Bulwark
					i(264520),	-- Warden's Leycrook
				},
			}),
			n(250780, {	-- Waverly
				["cr"] = 250788,	-- Lovely Sunflower
				["coord"] = { 34.8, 21.0, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 89580,	-- TODO: Blizzard bug - share questID with Tiny Vermin rare
				["groups"] = {
					i(264910),	-- Shell-Cleaving Poleaxe
					i(264608),	-- String of Lovely Blossoms
				},
			}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.EVERSONG_WOODS, {
			n(RARES, {
				q(94690, {	-- Weekly reputation: Bad Zed
					["name"] = "Bad Zed weekly reputation obtained.",
				}),
				q(94692, {	-- Weekly reputation: Banuran
					["name"] = "Banuran weekly reputation obtained.",
				}),
				q(94685, {	-- Weekly reputation: Bloated Snapdragon
					["name"] = "Bloated Snapdragon weekly reputation obtained.",
				}),
				q(94687, {	-- Weekly reputation: Coralfang
					["name"] = "Coralfang weekly reputation obtained.",
				}),
				q(94686, {	-- Weekly reputation: Cre'van
					["name"] = "Cre'van weekly reputation obtained.",
				}),
				q(94696, {	-- Weekly reputation: Dame Bloodshed
					["name"] = "Dame Bloodshed weekly reputation obtained.",
				}),
				q(94694, {	-- Weekly reputation: Duskburn
					["name"] = "Duskburn weekly reputation obtained.",
				}),
				q(94682, {	-- Weekly reputation: Harried Hawkstrider
					["name"] = "Harried Hawkstrider weekly reputation obtained.",
				}),
				q(94688, {	-- Weekly reputation: Lady Liminus
					["name"] = "Lady Liminus weekly reputation obtained.",
				}),
				q(94693, {	-- Weekly reputation: Lost Guardian
					["name"] = "Lost Guardian weekly reputation obtained.",
				}),
				q(94695, {	-- Weekly reputation: Malfunctioning Construct
					["name"] = "Malfunctioning Construct weekly reputation obtained.",
				}),
				q(94684, {	-- Weekly reputation: Overfester Hydra
					["name"] = "Overfester Hydra weekly reputation obtained.",
				}),
				q(94689, {	-- Weekly reputation: Terrinor
					["name"] = "Terrinor weekly reputation obtained.",
				}),
				q(94681, {	-- Weekly reputation: Warden of Weeds
					["name"] = "Warden of Weeds weekly reputation obtained.",
				}),
			}),
		}),
	}),
}));
